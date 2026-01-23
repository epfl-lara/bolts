; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362768 () Bool)

(assert start!362768)

(declare-fun b!3867596 () Bool)

(declare-fun b_free!104317 () Bool)

(declare-fun b_next!105021 () Bool)

(assert (=> b!3867596 (= b_free!104317 (not b_next!105021))))

(declare-fun tp!1172735 () Bool)

(declare-fun b_and!289779 () Bool)

(assert (=> b!3867596 (= tp!1172735 b_and!289779)))

(declare-fun b_free!104319 () Bool)

(declare-fun b_next!105023 () Bool)

(assert (=> b!3867596 (= b_free!104319 (not b_next!105023))))

(declare-fun tp!1172722 () Bool)

(declare-fun b_and!289781 () Bool)

(assert (=> b!3867596 (= tp!1172722 b_and!289781)))

(declare-fun b!3867611 () Bool)

(declare-fun b_free!104321 () Bool)

(declare-fun b_next!105025 () Bool)

(assert (=> b!3867611 (= b_free!104321 (not b_next!105025))))

(declare-fun tp!1172734 () Bool)

(declare-fun b_and!289783 () Bool)

(assert (=> b!3867611 (= tp!1172734 b_and!289783)))

(declare-fun b_free!104323 () Bool)

(declare-fun b_next!105027 () Bool)

(assert (=> b!3867611 (= b_free!104323 (not b_next!105027))))

(declare-fun tp!1172720 () Bool)

(declare-fun b_and!289785 () Bool)

(assert (=> b!3867611 (= tp!1172720 b_and!289785)))

(declare-fun b!3867593 () Bool)

(declare-fun b_free!104325 () Bool)

(declare-fun b_next!105029 () Bool)

(assert (=> b!3867593 (= b_free!104325 (not b_next!105029))))

(declare-fun tp!1172726 () Bool)

(declare-fun b_and!289787 () Bool)

(assert (=> b!3867593 (= tp!1172726 b_and!289787)))

(declare-fun b_free!104327 () Bool)

(declare-fun b_next!105031 () Bool)

(assert (=> b!3867593 (= b_free!104327 (not b_next!105031))))

(declare-fun tp!1172727 () Bool)

(declare-fun b_and!289789 () Bool)

(assert (=> b!3867593 (= tp!1172727 b_and!289789)))

(declare-fun b!3867586 () Bool)

(declare-datatypes ((Unit!58840 0))(
  ( (Unit!58841) )
))
(declare-fun e!2391909 () Unit!58840)

(declare-fun Unit!58842 () Unit!58840)

(assert (=> b!3867586 (= e!2391909 Unit!58842)))

(declare-fun b!3867587 () Bool)

(declare-fun res!1566371 () Bool)

(declare-fun e!2391923 () Bool)

(assert (=> b!3867587 (=> (not res!1566371) (not e!2391923))))

(declare-datatypes ((List!41198 0))(
  ( (Nil!41074) (Cons!41074 (h!46494 (_ BitVec 16)) (t!314073 List!41198)) )
))
(declare-datatypes ((TokenValue!6598 0))(
  ( (FloatLiteralValue!13196 (text!46631 List!41198)) (TokenValueExt!6597 (__x!25413 Int)) (Broken!32990 (value!202096 List!41198)) (Object!6721) (End!6598) (Def!6598) (Underscore!6598) (Match!6598) (Else!6598) (Error!6598) (Case!6598) (If!6598) (Extends!6598) (Abstract!6598) (Class!6598) (Val!6598) (DelimiterValue!13196 (del!6658 List!41198)) (KeywordValue!6604 (value!202097 List!41198)) (CommentValue!13196 (value!202098 List!41198)) (WhitespaceValue!13196 (value!202099 List!41198)) (IndentationValue!6598 (value!202100 List!41198)) (String!46707) (Int32!6598) (Broken!32991 (value!202101 List!41198)) (Boolean!6599) (Unit!58843) (OperatorValue!6601 (op!6658 List!41198)) (IdentifierValue!13196 (value!202102 List!41198)) (IdentifierValue!13197 (value!202103 List!41198)) (WhitespaceValue!13197 (value!202104 List!41198)) (True!13196) (False!13196) (Broken!32992 (value!202105 List!41198)) (Broken!32993 (value!202106 List!41198)) (True!13197) (RightBrace!6598) (RightBracket!6598) (Colon!6598) (Null!6598) (Comma!6598) (LeftBracket!6598) (False!13197) (LeftBrace!6598) (ImaginaryLiteralValue!6598 (text!46632 List!41198)) (StringLiteralValue!19794 (value!202107 List!41198)) (EOFValue!6598 (value!202108 List!41198)) (IdentValue!6598 (value!202109 List!41198)) (DelimiterValue!13197 (value!202110 List!41198)) (DedentValue!6598 (value!202111 List!41198)) (NewLineValue!6598 (value!202112 List!41198)) (IntegerValue!19794 (value!202113 (_ BitVec 32)) (text!46633 List!41198)) (IntegerValue!19795 (value!202114 Int) (text!46634 List!41198)) (Times!6598) (Or!6598) (Equal!6598) (Minus!6598) (Broken!32994 (value!202115 List!41198)) (And!6598) (Div!6598) (LessEqual!6598) (Mod!6598) (Concat!17871) (Not!6598) (Plus!6598) (SpaceValue!6598 (value!202116 List!41198)) (IntegerValue!19796 (value!202117 Int) (text!46635 List!41198)) (StringLiteralValue!19795 (text!46636 List!41198)) (FloatLiteralValue!13197 (text!46637 List!41198)) (BytesLiteralValue!6598 (value!202118 List!41198)) (CommentValue!13197 (value!202119 List!41198)) (StringLiteralValue!19796 (value!202120 List!41198)) (ErrorTokenValue!6598 (msg!6659 List!41198)) )
))
(declare-datatypes ((C!22732 0))(
  ( (C!22733 (val!13460 Int)) )
))
(declare-datatypes ((Regex!11273 0))(
  ( (ElementMatch!11273 (c!673094 C!22732)) (Concat!17872 (regOne!23058 Regex!11273) (regTwo!23058 Regex!11273)) (EmptyExpr!11273) (Star!11273 (reg!11602 Regex!11273)) (EmptyLang!11273) (Union!11273 (regOne!23059 Regex!11273) (regTwo!23059 Regex!11273)) )
))
(declare-datatypes ((String!46708 0))(
  ( (String!46709 (value!202121 String)) )
))
(declare-datatypes ((List!41199 0))(
  ( (Nil!41075) (Cons!41075 (h!46495 C!22732) (t!314074 List!41199)) )
))
(declare-datatypes ((IArray!25163 0))(
  ( (IArray!25164 (innerList!12639 List!41199)) )
))
(declare-datatypes ((Conc!12579 0))(
  ( (Node!12579 (left!31581 Conc!12579) (right!31911 Conc!12579) (csize!25388 Int) (cheight!12790 Int)) (Leaf!19470 (xs!15885 IArray!25163) (csize!25389 Int)) (Empty!12579) )
))
(declare-datatypes ((BalanceConc!24752 0))(
  ( (BalanceConc!24753 (c!673095 Conc!12579)) )
))
(declare-datatypes ((TokenValueInjection!12624 0))(
  ( (TokenValueInjection!12625 (toValue!8796 Int) (toChars!8655 Int)) )
))
(declare-datatypes ((Rule!12536 0))(
  ( (Rule!12537 (regex!6368 Regex!11273) (tag!7228 String!46708) (isSeparator!6368 Bool) (transformation!6368 TokenValueInjection!12624)) )
))
(declare-datatypes ((Token!11874 0))(
  ( (Token!11875 (value!202122 TokenValue!6598) (rule!9248 Rule!12536) (size!30873 Int) (originalCharacters!6968 List!41199)) )
))
(declare-datatypes ((List!41200 0))(
  ( (Nil!41076) (Cons!41076 (h!46496 Token!11874) (t!314075 List!41200)) )
))
(declare-fun prefixTokens!80 () List!41200)

(declare-fun isEmpty!24358 (List!41200) Bool)

(assert (=> b!3867587 (= res!1566371 (not (isEmpty!24358 prefixTokens!80)))))

(declare-fun b!3867588 () Bool)

(declare-fun e!2391913 () Bool)

(assert (=> b!3867588 (= e!2391913 false)))

(declare-fun b!3867589 () Bool)

(declare-fun e!2391907 () Unit!58840)

(declare-fun Unit!58844 () Unit!58840)

(assert (=> b!3867589 (= e!2391907 Unit!58844)))

(declare-datatypes ((tuple2!40290 0))(
  ( (tuple2!40291 (_1!23279 Token!11874) (_2!23279 List!41199)) )
))
(declare-fun lt!1345431 () tuple2!40290)

(declare-datatypes ((LexerInterface!5957 0))(
  ( (LexerInterfaceExt!5954 (__x!25414 Int)) (Lexer!5955) )
))
(declare-fun thiss!20629 () LexerInterface!5957)

(declare-fun lt!1345428 () List!41200)

(declare-fun suffix!1176 () List!41199)

(declare-datatypes ((List!41201 0))(
  ( (Nil!41077) (Cons!41077 (h!46497 Rule!12536) (t!314076 List!41201)) )
))
(declare-fun rules!2768 () List!41201)

(declare-fun suffixTokens!72 () List!41200)

(declare-fun lt!1345464 () Unit!58840)

(declare-fun suffixResult!91 () List!41199)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!28 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41200 List!41199 List!41200) Unit!58840)

(assert (=> b!3867589 (= lt!1345464 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!28 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91 lt!1345428))))

(declare-fun res!1566367 () Bool)

(declare-datatypes ((tuple2!40292 0))(
  ( (tuple2!40293 (_1!23280 List!41200) (_2!23280 List!41199)) )
))
(declare-fun call!282678 () tuple2!40292)

(declare-fun ++!10493 (List!41200 List!41200) List!41200)

(assert (=> b!3867589 (= res!1566367 (not (= call!282678 (tuple2!40293 (++!10493 lt!1345428 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3867589 (=> (not res!1566367) (not e!2391913))))

(assert (=> b!3867589 e!2391913))

(declare-fun b!3867590 () Bool)

(declare-fun e!2391924 () Bool)

(declare-fun e!2391927 () Bool)

(declare-fun tp!1172730 () Bool)

(declare-fun inv!55232 (Token!11874) Bool)

(assert (=> b!3867590 (= e!2391927 (and (inv!55232 (h!46496 prefixTokens!80)) e!2391924 tp!1172730))))

(declare-fun b!3867591 () Bool)

(declare-fun res!1566376 () Bool)

(declare-fun e!2391900 () Bool)

(assert (=> b!3867591 (=> res!1566376 e!2391900)))

(declare-datatypes ((Option!8786 0))(
  ( (None!8785) (Some!8785 (v!39083 tuple2!40290)) )
))
(declare-fun lt!1345427 () Option!8786)

(declare-fun lt!1345437 () tuple2!40292)

(assert (=> b!3867591 (= res!1566376 (or (not (= lt!1345437 (tuple2!40293 (_1!23280 lt!1345437) (_2!23280 lt!1345437)))) (= (_2!23279 (v!39083 lt!1345427)) suffix!1176)))))

(declare-fun b!3867592 () Bool)

(declare-fun e!2391899 () Bool)

(declare-fun e!2391901 () Bool)

(declare-fun tp!1172732 () Bool)

(assert (=> b!3867592 (= e!2391899 (and e!2391901 tp!1172732))))

(declare-fun e!2391902 () Bool)

(assert (=> b!3867593 (= e!2391902 (and tp!1172726 tp!1172727))))

(declare-fun b!3867595 () Bool)

(declare-fun res!1566373 () Bool)

(assert (=> b!3867595 (=> (not res!1566373) (not e!2391923))))

(declare-fun rulesInvariant!5300 (LexerInterface!5957 List!41201) Bool)

(assert (=> b!3867595 (= res!1566373 (rulesInvariant!5300 thiss!20629 rules!2768))))

(declare-fun e!2391929 () Bool)

(assert (=> b!3867596 (= e!2391929 (and tp!1172735 tp!1172722))))

(declare-fun b!3867597 () Bool)

(declare-fun e!2391916 () Bool)

(declare-fun e!2391895 () Bool)

(assert (=> b!3867597 (= e!2391916 e!2391895)))

(declare-fun res!1566374 () Bool)

(assert (=> b!3867597 (=> res!1566374 e!2391895)))

(declare-fun lt!1345440 () List!41199)

(assert (=> b!3867597 (= res!1566374 (not (= lt!1345440 (_2!23279 (v!39083 lt!1345427)))))))

(assert (=> b!3867597 (= (_2!23279 (v!39083 lt!1345427)) lt!1345440)))

(declare-fun lt!1345445 () List!41199)

(declare-fun lt!1345461 () List!41199)

(declare-fun lt!1345446 () Unit!58840)

(declare-fun lemmaSamePrefixThenSameSuffix!1688 (List!41199 List!41199 List!41199 List!41199 List!41199) Unit!58840)

(assert (=> b!3867597 (= lt!1345446 (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345440 lt!1345445))))

(declare-fun lt!1345425 () List!41199)

(declare-fun isPrefix!3467 (List!41199 List!41199) Bool)

(assert (=> b!3867597 (isPrefix!3467 lt!1345461 lt!1345425)))

(declare-fun lt!1345465 () Unit!58840)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2330 (List!41199 List!41199) Unit!58840)

(assert (=> b!3867597 (= lt!1345465 (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345461 lt!1345440))))

(declare-fun b!3867598 () Bool)

(declare-fun e!2391915 () Bool)

(declare-fun e!2391920 () Bool)

(assert (=> b!3867598 (= e!2391915 e!2391920)))

(declare-fun res!1566370 () Bool)

(assert (=> b!3867598 (=> (not res!1566370) (not e!2391920))))

(declare-fun lt!1345462 () tuple2!40292)

(declare-fun lexList!1725 (LexerInterface!5957 List!41201 List!41199) tuple2!40292)

(assert (=> b!3867598 (= res!1566370 (= (lexList!1725 thiss!20629 rules!2768 suffix!1176) lt!1345462))))

(assert (=> b!3867598 (= lt!1345462 (tuple2!40293 suffixTokens!72 suffixResult!91))))

(declare-fun b!3867599 () Bool)

(declare-fun res!1566378 () Bool)

(assert (=> b!3867599 (=> res!1566378 e!2391900)))

(declare-fun lt!1345435 () tuple2!40292)

(assert (=> b!3867599 (= res!1566378 (not (= lt!1345435 (tuple2!40293 (++!10493 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076) (_1!23280 lt!1345437)) (_2!23280 lt!1345437)))))))

(declare-fun b!3867600 () Bool)

(declare-fun e!2391930 () Unit!58840)

(declare-fun Unit!58845 () Unit!58840)

(assert (=> b!3867600 (= e!2391930 Unit!58845)))

(declare-fun lt!1345452 () Int)

(declare-fun size!30874 (List!41199) Int)

(assert (=> b!3867600 (= lt!1345452 (size!30874 lt!1345445))))

(declare-fun lt!1345444 () Unit!58840)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1241 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41199 Rule!12536) Unit!58840)

(assert (=> b!3867600 (= lt!1345444 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1241 thiss!20629 rules!2768 lt!1345461 lt!1345445 (_2!23279 (v!39083 lt!1345427)) (rule!9248 (_1!23279 (v!39083 lt!1345427)))))))

(declare-fun lt!1345429 () TokenValue!6598)

(declare-fun lt!1345443 () Int)

(declare-fun maxPrefixOneRule!2343 (LexerInterface!5957 Rule!12536 List!41199) Option!8786)

(assert (=> b!3867600 (= (maxPrefixOneRule!2343 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) lt!1345445) (Some!8785 (tuple2!40291 (Token!11875 lt!1345429 (rule!9248 (_1!23279 (v!39083 lt!1345427))) lt!1345443 lt!1345461) (_2!23279 (v!39083 lt!1345427)))))))

(declare-fun get!13592 (Option!8786) tuple2!40290)

(assert (=> b!3867600 (= lt!1345431 (get!13592 lt!1345427))))

(declare-fun c!673093 () Bool)

(declare-fun lt!1345457 () Int)

(assert (=> b!3867600 (= c!673093 (< (size!30874 (_2!23279 lt!1345431)) lt!1345457))))

(declare-fun lt!1345432 () Unit!58840)

(assert (=> b!3867600 (= lt!1345432 e!2391909)))

(assert (=> b!3867600 false))

(declare-fun b!3867601 () Bool)

(declare-fun e!2391922 () Bool)

(assert (=> b!3867601 (= e!2391922 (= (size!30873 (_1!23279 (v!39083 lt!1345427))) (size!30874 (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427))))))))

(declare-fun b!3867602 () Bool)

(declare-fun e!2391914 () Bool)

(declare-fun e!2391896 () Bool)

(assert (=> b!3867602 (= e!2391914 e!2391896)))

(declare-fun res!1566368 () Bool)

(assert (=> b!3867602 (=> res!1566368 e!2391896)))

(declare-fun prefix!426 () List!41199)

(assert (=> b!3867602 (= res!1566368 (>= lt!1345443 (size!30874 prefix!426)))))

(assert (=> b!3867602 (isPrefix!3467 lt!1345461 prefix!426)))

(declare-fun lt!1345441 () Unit!58840)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!217 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> b!3867602 (= lt!1345441 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!217 prefix!426 lt!1345461 lt!1345445))))

(assert (=> b!3867602 (isPrefix!3467 prefix!426 lt!1345445)))

(declare-fun lt!1345463 () Unit!58840)

(assert (=> b!3867602 (= lt!1345463 (lemmaConcatTwoListThenFirstIsPrefix!2330 prefix!426 suffix!1176))))

(declare-fun b!3867603 () Bool)

(declare-fun e!2391921 () Bool)

(declare-fun tp_is_empty!19517 () Bool)

(declare-fun tp!1172728 () Bool)

(assert (=> b!3867603 (= e!2391921 (and tp_is_empty!19517 tp!1172728))))

(declare-fun bm!282673 () Bool)

(assert (=> bm!282673 (= call!282678 (lexList!1725 thiss!20629 rules!2768 (_2!23279 lt!1345431)))))

(declare-fun b!3867604 () Bool)

(declare-fun res!1566375 () Bool)

(assert (=> b!3867604 (=> (not res!1566375) (not e!2391923))))

(declare-fun isEmpty!24359 (List!41199) Bool)

(assert (=> b!3867604 (= res!1566375 (not (isEmpty!24359 prefix!426)))))

(declare-fun b!3867605 () Bool)

(assert (=> b!3867605 (= e!2391895 (not (= prefixTokens!80 Nil!41076)))))

(declare-fun lt!1345451 () List!41199)

(assert (=> b!3867605 (isPrefix!3467 lt!1345451 lt!1345440)))

(declare-fun lt!1345450 () Unit!58840)

(assert (=> b!3867605 (= lt!1345450 (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345451 suffix!1176))))

(declare-fun b!3867606 () Bool)

(declare-fun e!2391906 () Unit!58840)

(declare-fun Unit!58846 () Unit!58840)

(assert (=> b!3867606 (= e!2391906 Unit!58846)))

(declare-fun lt!1345438 () Unit!58840)

(assert (=> b!3867606 (= lt!1345438 (lemmaConcatTwoListThenFirstIsPrefix!2330 prefix!426 suffix!1176))))

(assert (=> b!3867606 (isPrefix!3467 prefix!426 lt!1345445)))

(declare-fun lt!1345430 () Unit!58840)

(declare-fun lemmaIsPrefixSameLengthThenSameList!719 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> b!3867606 (= lt!1345430 (lemmaIsPrefixSameLengthThenSameList!719 lt!1345461 prefix!426 lt!1345445))))

(assert (=> b!3867606 (= lt!1345461 prefix!426)))

(declare-fun lt!1345442 () Unit!58840)

(assert (=> b!3867606 (= lt!1345442 (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) prefix!426 suffix!1176 lt!1345445))))

(assert (=> b!3867606 false))

(declare-fun b!3867607 () Bool)

(declare-fun e!2391904 () Bool)

(assert (=> b!3867607 (= e!2391904 false)))

(declare-fun e!2391905 () Bool)

(declare-fun b!3867608 () Bool)

(declare-fun tp!1172731 () Bool)

(declare-fun inv!55229 (String!46708) Bool)

(declare-fun inv!55233 (TokenValueInjection!12624) Bool)

(assert (=> b!3867608 (= e!2391905 (and tp!1172731 (inv!55229 (tag!7228 (rule!9248 (h!46496 prefixTokens!80)))) (inv!55233 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) e!2391902))))

(declare-fun b!3867609 () Bool)

(declare-fun e!2391911 () Bool)

(declare-fun tp!1172725 () Bool)

(declare-fun e!2391918 () Bool)

(assert (=> b!3867609 (= e!2391918 (and tp!1172725 (inv!55229 (tag!7228 (rule!9248 (h!46496 suffixTokens!72)))) (inv!55233 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) e!2391911))))

(declare-fun b!3867610 () Bool)

(assert (=> b!3867610 (= e!2391900 e!2391914)))

(declare-fun res!1566379 () Bool)

(assert (=> b!3867610 (=> res!1566379 e!2391914)))

(declare-fun lt!1345434 () Int)

(assert (=> b!3867610 (= res!1566379 (<= lt!1345434 lt!1345457))))

(declare-fun lt!1345439 () Unit!58840)

(assert (=> b!3867610 (= lt!1345439 e!2391906)))

(declare-fun c!673090 () Bool)

(assert (=> b!3867610 (= c!673090 (= lt!1345434 lt!1345457))))

(declare-fun lt!1345449 () Unit!58840)

(assert (=> b!3867610 (= lt!1345449 e!2391930)))

(declare-fun c!673091 () Bool)

(assert (=> b!3867610 (= c!673091 (< lt!1345434 lt!1345457))))

(assert (=> b!3867610 (= lt!1345457 (size!30874 suffix!1176))))

(assert (=> b!3867610 (= lt!1345434 (size!30874 (_2!23279 (v!39083 lt!1345427))))))

(assert (=> b!3867611 (= e!2391911 (and tp!1172734 tp!1172720))))

(declare-fun b!3867612 () Bool)

(declare-fun Unit!58847 () Unit!58840)

(assert (=> b!3867612 (= e!2391907 Unit!58847)))

(declare-fun lt!1345453 () Unit!58840)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!452 (List!41199 List!41199 List!41199 List!41199) Unit!58840)

(assert (=> b!3867612 (= lt!1345453 (lemmaConcatSameAndSameSizesThenSameLists!452 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 (_2!23279 lt!1345431)))))

(assert (=> b!3867612 (= (_2!23279 (v!39083 lt!1345427)) (_2!23279 lt!1345431))))

(declare-fun lt!1345436 () Unit!58840)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!28 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41200 List!41199) Unit!58840)

(assert (=> b!3867612 (= lt!1345436 (lemmaLexWithSmallerInputCannotProduceSameResults!28 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91))))

(declare-fun res!1566372 () Bool)

(assert (=> b!3867612 (= res!1566372 (not (= call!282678 lt!1345462)))))

(assert (=> b!3867612 (=> (not res!1566372) (not e!2391904))))

(assert (=> b!3867612 e!2391904))

(declare-fun b!3867594 () Bool)

(declare-fun e!2391903 () Bool)

(declare-fun tp!1172733 () Bool)

(assert (=> b!3867594 (= e!2391903 (and tp_is_empty!19517 tp!1172733))))

(declare-fun res!1566382 () Bool)

(assert (=> start!362768 (=> (not res!1566382) (not e!2391923))))

(get-info :version)

(assert (=> start!362768 (= res!1566382 ((_ is Lexer!5955) thiss!20629))))

(assert (=> start!362768 e!2391923))

(assert (=> start!362768 e!2391903))

(assert (=> start!362768 true))

(declare-fun e!2391925 () Bool)

(assert (=> start!362768 e!2391925))

(assert (=> start!362768 e!2391899))

(assert (=> start!362768 e!2391927))

(declare-fun e!2391926 () Bool)

(assert (=> start!362768 e!2391926))

(assert (=> start!362768 e!2391921))

(declare-fun b!3867613 () Bool)

(declare-fun e!2391894 () Bool)

(assert (=> b!3867613 (= e!2391894 e!2391916)))

(declare-fun res!1566387 () Bool)

(assert (=> b!3867613 (=> res!1566387 e!2391916)))

(declare-fun lt!1345454 () List!41199)

(declare-fun lt!1345426 () List!41199)

(assert (=> b!3867613 (= res!1566387 (or (not (= lt!1345445 lt!1345426)) (not (= lt!1345445 lt!1345425)) (not (= lt!1345454 lt!1345425))))))

(assert (=> b!3867613 (= lt!1345426 lt!1345425)))

(declare-fun ++!10494 (List!41199 List!41199) List!41199)

(assert (=> b!3867613 (= lt!1345425 (++!10494 lt!1345461 lt!1345440))))

(assert (=> b!3867613 (= lt!1345440 (++!10494 lt!1345451 suffix!1176))))

(declare-fun lt!1345433 () Unit!58840)

(declare-fun lemmaConcatAssociativity!2214 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> b!3867613 (= lt!1345433 (lemmaConcatAssociativity!2214 lt!1345461 lt!1345451 suffix!1176))))

(declare-fun tp!1172729 () Bool)

(declare-fun b!3867614 () Bool)

(assert (=> b!3867614 (= e!2391901 (and tp!1172729 (inv!55229 (tag!7228 (h!46497 rules!2768))) (inv!55233 (transformation!6368 (h!46497 rules!2768))) e!2391929))))

(declare-fun b!3867615 () Bool)

(assert (=> b!3867615 (= e!2391923 e!2391915)))

(declare-fun res!1566383 () Bool)

(assert (=> b!3867615 (=> (not res!1566383) (not e!2391915))))

(declare-fun lt!1345456 () List!41200)

(assert (=> b!3867615 (= res!1566383 (= lt!1345435 (tuple2!40293 lt!1345456 suffixResult!91)))))

(assert (=> b!3867615 (= lt!1345435 (lexList!1725 thiss!20629 rules!2768 lt!1345445))))

(assert (=> b!3867615 (= lt!1345456 (++!10493 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3867615 (= lt!1345445 (++!10494 prefix!426 suffix!1176))))

(declare-fun tp!1172723 () Bool)

(declare-fun b!3867616 () Bool)

(declare-fun e!2391928 () Bool)

(assert (=> b!3867616 (= e!2391926 (and (inv!55232 (h!46496 suffixTokens!72)) e!2391928 tp!1172723))))

(declare-fun b!3867617 () Bool)

(declare-fun e!2391908 () Bool)

(assert (=> b!3867617 (= e!2391920 e!2391908)))

(declare-fun res!1566369 () Bool)

(assert (=> b!3867617 (=> (not res!1566369) (not e!2391908))))

(assert (=> b!3867617 (= res!1566369 ((_ is Some!8785) lt!1345427))))

(declare-fun maxPrefix!3261 (LexerInterface!5957 List!41201 List!41199) Option!8786)

(assert (=> b!3867617 (= lt!1345427 (maxPrefix!3261 thiss!20629 rules!2768 lt!1345445))))

(declare-fun b!3867618 () Bool)

(declare-fun res!1566386 () Bool)

(assert (=> b!3867618 (=> res!1566386 e!2391914)))

(declare-fun head!8178 (List!41200) Token!11874)

(assert (=> b!3867618 (= res!1566386 (not (= (head!8178 prefixTokens!80) (_1!23279 (v!39083 lt!1345427)))))))

(declare-fun b!3867619 () Bool)

(declare-fun e!2391917 () Bool)

(assert (=> b!3867619 (= e!2391917 e!2391894)))

(declare-fun res!1566377 () Bool)

(assert (=> b!3867619 (=> res!1566377 e!2391894)))

(assert (=> b!3867619 (= res!1566377 (or (not (= lt!1345426 lt!1345445)) (not (= lt!1345426 lt!1345454))))))

(declare-fun lt!1345458 () List!41199)

(assert (=> b!3867619 (= lt!1345426 (++!10494 lt!1345458 suffix!1176))))

(declare-fun b!3867620 () Bool)

(declare-fun res!1566381 () Bool)

(assert (=> b!3867620 (=> (not res!1566381) (not e!2391923))))

(declare-fun isEmpty!24360 (List!41201) Bool)

(assert (=> b!3867620 (= res!1566381 (not (isEmpty!24360 rules!2768)))))

(declare-fun b!3867621 () Bool)

(declare-fun c!673092 () Bool)

(assert (=> b!3867621 (= c!673092 (isEmpty!24358 lt!1345428))))

(declare-fun tail!5895 (List!41200) List!41200)

(assert (=> b!3867621 (= lt!1345428 (tail!5895 prefixTokens!80))))

(assert (=> b!3867621 (= e!2391909 e!2391907)))

(declare-fun b!3867622 () Bool)

(declare-fun tp!1172724 () Bool)

(declare-fun inv!21 (TokenValue!6598) Bool)

(assert (=> b!3867622 (= e!2391928 (and (inv!21 (value!202122 (h!46496 suffixTokens!72))) e!2391918 tp!1172724))))

(declare-fun b!3867623 () Bool)

(declare-fun Unit!58848 () Unit!58840)

(assert (=> b!3867623 (= e!2391930 Unit!58848)))

(declare-fun b!3867624 () Bool)

(declare-fun tp!1172736 () Bool)

(assert (=> b!3867624 (= e!2391925 (and tp_is_empty!19517 tp!1172736))))

(declare-fun b!3867625 () Bool)

(assert (=> b!3867625 (= e!2391896 e!2391917)))

(declare-fun res!1566380 () Bool)

(assert (=> b!3867625 (=> res!1566380 e!2391917)))

(assert (=> b!3867625 (= res!1566380 (not (= lt!1345458 prefix!426)))))

(assert (=> b!3867625 (= lt!1345458 (++!10494 lt!1345461 lt!1345451))))

(declare-fun getSuffix!1922 (List!41199 List!41199) List!41199)

(assert (=> b!3867625 (= lt!1345451 (getSuffix!1922 prefix!426 lt!1345461))))

(declare-fun b!3867626 () Bool)

(declare-fun Unit!58849 () Unit!58840)

(assert (=> b!3867626 (= e!2391906 Unit!58849)))

(declare-fun b!3867627 () Bool)

(declare-fun tp!1172721 () Bool)

(assert (=> b!3867627 (= e!2391924 (and (inv!21 (value!202122 (h!46496 prefixTokens!80))) e!2391905 tp!1172721))))

(declare-fun b!3867628 () Bool)

(assert (=> b!3867628 (= e!2391908 (not e!2391900))))

(declare-fun res!1566384 () Bool)

(assert (=> b!3867628 (=> res!1566384 e!2391900)))

(assert (=> b!3867628 (= res!1566384 (not (= lt!1345454 lt!1345445)))))

(assert (=> b!3867628 (= lt!1345437 (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345427))))))

(declare-fun lt!1345455 () List!41199)

(assert (=> b!3867628 (and (= (size!30873 (_1!23279 (v!39083 lt!1345427))) lt!1345443) (= (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427))) lt!1345461) (= (v!39083 lt!1345427) (tuple2!40291 (Token!11875 lt!1345429 (rule!9248 (_1!23279 (v!39083 lt!1345427))) lt!1345443 lt!1345461) lt!1345455)))))

(assert (=> b!3867628 (= lt!1345443 (size!30874 lt!1345461))))

(assert (=> b!3867628 e!2391922))

(declare-fun res!1566385 () Bool)

(assert (=> b!3867628 (=> (not res!1566385) (not e!2391922))))

(assert (=> b!3867628 (= res!1566385 (= (value!202122 (_1!23279 (v!39083 lt!1345427))) lt!1345429))))

(declare-fun apply!9611 (TokenValueInjection!12624 BalanceConc!24752) TokenValue!6598)

(declare-fun seqFromList!4639 (List!41199) BalanceConc!24752)

(assert (=> b!3867628 (= lt!1345429 (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (seqFromList!4639 lt!1345461)))))

(assert (=> b!3867628 (= (_2!23279 (v!39083 lt!1345427)) lt!1345455)))

(declare-fun lt!1345447 () Unit!58840)

(assert (=> b!3867628 (= lt!1345447 (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345455 lt!1345445))))

(assert (=> b!3867628 (= lt!1345455 (getSuffix!1922 lt!1345445 lt!1345461))))

(assert (=> b!3867628 (isPrefix!3467 lt!1345461 lt!1345454)))

(assert (=> b!3867628 (= lt!1345454 (++!10494 lt!1345461 (_2!23279 (v!39083 lt!1345427))))))

(declare-fun lt!1345459 () Unit!58840)

(assert (=> b!3867628 (= lt!1345459 (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345461 (_2!23279 (v!39083 lt!1345427))))))

(declare-fun list!15280 (BalanceConc!24752) List!41199)

(declare-fun charsOf!4196 (Token!11874) BalanceConc!24752)

(assert (=> b!3867628 (= lt!1345461 (list!15280 (charsOf!4196 (_1!23279 (v!39083 lt!1345427)))))))

(declare-fun ruleValid!2320 (LexerInterface!5957 Rule!12536) Bool)

(assert (=> b!3867628 (ruleValid!2320 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))))))

(declare-fun lt!1345448 () Unit!58840)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1400 (LexerInterface!5957 Rule!12536 List!41201) Unit!58840)

(assert (=> b!3867628 (= lt!1345448 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1400 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) rules!2768))))

(declare-fun lt!1345460 () Unit!58840)

(declare-fun lemmaCharactersSize!1029 (Token!11874) Unit!58840)

(assert (=> b!3867628 (= lt!1345460 (lemmaCharactersSize!1029 (_1!23279 (v!39083 lt!1345427))))))

(assert (= (and start!362768 res!1566382) b!3867620))

(assert (= (and b!3867620 res!1566381) b!3867595))

(assert (= (and b!3867595 res!1566373) b!3867587))

(assert (= (and b!3867587 res!1566371) b!3867604))

(assert (= (and b!3867604 res!1566375) b!3867615))

(assert (= (and b!3867615 res!1566383) b!3867598))

(assert (= (and b!3867598 res!1566370) b!3867617))

(assert (= (and b!3867617 res!1566369) b!3867628))

(assert (= (and b!3867628 res!1566385) b!3867601))

(assert (= (and b!3867628 (not res!1566384)) b!3867599))

(assert (= (and b!3867599 (not res!1566378)) b!3867591))

(assert (= (and b!3867591 (not res!1566376)) b!3867610))

(assert (= (and b!3867610 c!673091) b!3867600))

(assert (= (and b!3867610 (not c!673091)) b!3867623))

(assert (= (and b!3867600 c!673093) b!3867621))

(assert (= (and b!3867600 (not c!673093)) b!3867586))

(assert (= (and b!3867621 c!673092) b!3867612))

(assert (= (and b!3867621 (not c!673092)) b!3867589))

(assert (= (and b!3867612 res!1566372) b!3867607))

(assert (= (and b!3867589 res!1566367) b!3867588))

(assert (= (or b!3867612 b!3867589) bm!282673))

(assert (= (and b!3867610 c!673090) b!3867606))

(assert (= (and b!3867610 (not c!673090)) b!3867626))

(assert (= (and b!3867610 (not res!1566379)) b!3867618))

(assert (= (and b!3867618 (not res!1566386)) b!3867602))

(assert (= (and b!3867602 (not res!1566368)) b!3867625))

(assert (= (and b!3867625 (not res!1566380)) b!3867619))

(assert (= (and b!3867619 (not res!1566377)) b!3867613))

(assert (= (and b!3867613 (not res!1566387)) b!3867597))

(assert (= (and b!3867597 (not res!1566374)) b!3867605))

(assert (= (and start!362768 ((_ is Cons!41075) suffixResult!91)) b!3867594))

(assert (= (and start!362768 ((_ is Cons!41075) suffix!1176)) b!3867624))

(assert (= b!3867614 b!3867596))

(assert (= b!3867592 b!3867614))

(assert (= (and start!362768 ((_ is Cons!41077) rules!2768)) b!3867592))

(assert (= b!3867608 b!3867593))

(assert (= b!3867627 b!3867608))

(assert (= b!3867590 b!3867627))

(assert (= (and start!362768 ((_ is Cons!41076) prefixTokens!80)) b!3867590))

(assert (= b!3867609 b!3867611))

(assert (= b!3867622 b!3867609))

(assert (= b!3867616 b!3867622))

(assert (= (and start!362768 ((_ is Cons!41076) suffixTokens!72)) b!3867616))

(assert (= (and start!362768 ((_ is Cons!41075) prefix!426)) b!3867603))

(declare-fun m!4423181 () Bool)

(assert (=> b!3867610 m!4423181))

(declare-fun m!4423183 () Bool)

(assert (=> b!3867610 m!4423183))

(declare-fun m!4423185 () Bool)

(assert (=> b!3867605 m!4423185))

(declare-fun m!4423187 () Bool)

(assert (=> b!3867605 m!4423187))

(declare-fun m!4423189 () Bool)

(assert (=> b!3867625 m!4423189))

(declare-fun m!4423191 () Bool)

(assert (=> b!3867625 m!4423191))

(declare-fun m!4423193 () Bool)

(assert (=> b!3867617 m!4423193))

(declare-fun m!4423195 () Bool)

(assert (=> b!3867620 m!4423195))

(declare-fun m!4423197 () Bool)

(assert (=> b!3867589 m!4423197))

(declare-fun m!4423199 () Bool)

(assert (=> b!3867589 m!4423199))

(declare-fun m!4423201 () Bool)

(assert (=> b!3867614 m!4423201))

(declare-fun m!4423203 () Bool)

(assert (=> b!3867614 m!4423203))

(declare-fun m!4423205 () Bool)

(assert (=> b!3867613 m!4423205))

(declare-fun m!4423207 () Bool)

(assert (=> b!3867613 m!4423207))

(declare-fun m!4423209 () Bool)

(assert (=> b!3867613 m!4423209))

(declare-fun m!4423211 () Bool)

(assert (=> b!3867616 m!4423211))

(declare-fun m!4423213 () Bool)

(assert (=> b!3867619 m!4423213))

(declare-fun m!4423215 () Bool)

(assert (=> b!3867628 m!4423215))

(declare-fun m!4423217 () Bool)

(assert (=> b!3867628 m!4423217))

(declare-fun m!4423219 () Bool)

(assert (=> b!3867628 m!4423219))

(declare-fun m!4423221 () Bool)

(assert (=> b!3867628 m!4423221))

(declare-fun m!4423223 () Bool)

(assert (=> b!3867628 m!4423223))

(declare-fun m!4423225 () Bool)

(assert (=> b!3867628 m!4423225))

(declare-fun m!4423227 () Bool)

(assert (=> b!3867628 m!4423227))

(assert (=> b!3867628 m!4423215))

(declare-fun m!4423229 () Bool)

(assert (=> b!3867628 m!4423229))

(declare-fun m!4423231 () Bool)

(assert (=> b!3867628 m!4423231))

(declare-fun m!4423233 () Bool)

(assert (=> b!3867628 m!4423233))

(declare-fun m!4423235 () Bool)

(assert (=> b!3867628 m!4423235))

(declare-fun m!4423237 () Bool)

(assert (=> b!3867628 m!4423237))

(declare-fun m!4423239 () Bool)

(assert (=> b!3867628 m!4423239))

(assert (=> b!3867628 m!4423221))

(declare-fun m!4423241 () Bool)

(assert (=> b!3867628 m!4423241))

(declare-fun m!4423243 () Bool)

(assert (=> b!3867598 m!4423243))

(declare-fun m!4423245 () Bool)

(assert (=> b!3867597 m!4423245))

(declare-fun m!4423247 () Bool)

(assert (=> b!3867597 m!4423247))

(declare-fun m!4423249 () Bool)

(assert (=> b!3867597 m!4423249))

(declare-fun m!4423251 () Bool)

(assert (=> b!3867601 m!4423251))

(declare-fun m!4423253 () Bool)

(assert (=> b!3867600 m!4423253))

(declare-fun m!4423255 () Bool)

(assert (=> b!3867600 m!4423255))

(declare-fun m!4423257 () Bool)

(assert (=> b!3867600 m!4423257))

(declare-fun m!4423259 () Bool)

(assert (=> b!3867600 m!4423259))

(declare-fun m!4423261 () Bool)

(assert (=> b!3867600 m!4423261))

(declare-fun m!4423263 () Bool)

(assert (=> b!3867618 m!4423263))

(declare-fun m!4423265 () Bool)

(assert (=> b!3867606 m!4423265))

(declare-fun m!4423267 () Bool)

(assert (=> b!3867606 m!4423267))

(declare-fun m!4423269 () Bool)

(assert (=> b!3867606 m!4423269))

(declare-fun m!4423271 () Bool)

(assert (=> b!3867606 m!4423271))

(declare-fun m!4423273 () Bool)

(assert (=> b!3867595 m!4423273))

(declare-fun m!4423275 () Bool)

(assert (=> b!3867622 m!4423275))

(declare-fun m!4423277 () Bool)

(assert (=> b!3867608 m!4423277))

(declare-fun m!4423279 () Bool)

(assert (=> b!3867608 m!4423279))

(declare-fun m!4423281 () Bool)

(assert (=> b!3867615 m!4423281))

(declare-fun m!4423283 () Bool)

(assert (=> b!3867615 m!4423283))

(declare-fun m!4423285 () Bool)

(assert (=> b!3867615 m!4423285))

(declare-fun m!4423287 () Bool)

(assert (=> b!3867609 m!4423287))

(declare-fun m!4423289 () Bool)

(assert (=> b!3867609 m!4423289))

(declare-fun m!4423291 () Bool)

(assert (=> b!3867587 m!4423291))

(declare-fun m!4423293 () Bool)

(assert (=> b!3867604 m!4423293))

(declare-fun m!4423295 () Bool)

(assert (=> b!3867612 m!4423295))

(declare-fun m!4423297 () Bool)

(assert (=> b!3867612 m!4423297))

(declare-fun m!4423299 () Bool)

(assert (=> b!3867590 m!4423299))

(declare-fun m!4423301 () Bool)

(assert (=> b!3867602 m!4423301))

(declare-fun m!4423303 () Bool)

(assert (=> b!3867602 m!4423303))

(assert (=> b!3867602 m!4423265))

(declare-fun m!4423305 () Bool)

(assert (=> b!3867602 m!4423305))

(assert (=> b!3867602 m!4423267))

(declare-fun m!4423307 () Bool)

(assert (=> b!3867599 m!4423307))

(declare-fun m!4423309 () Bool)

(assert (=> bm!282673 m!4423309))

(declare-fun m!4423311 () Bool)

(assert (=> b!3867621 m!4423311))

(declare-fun m!4423313 () Bool)

(assert (=> b!3867621 m!4423313))

(declare-fun m!4423315 () Bool)

(assert (=> b!3867627 m!4423315))

(check-sat b_and!289785 (not b!3867598) (not b_next!105027) (not b!3867597) (not b!3867616) b_and!289783 (not b!3867608) (not b!3867590) tp_is_empty!19517 (not b!3867622) (not b_next!105023) (not b!3867619) (not b!3867618) (not b!3867587) (not b!3867594) (not b!3867612) (not b!3867614) (not b_next!105031) (not b!3867604) (not b!3867595) (not b!3867601) (not b!3867620) (not b!3867602) (not b!3867624) (not b!3867605) b_and!289779 (not b_next!105025) (not b!3867617) (not b!3867592) (not b!3867600) (not b!3867627) (not b!3867606) b_and!289789 (not b!3867615) (not b!3867621) (not b!3867613) (not b_next!105029) (not b_next!105021) (not b!3867625) (not bm!282673) (not b!3867589) (not b!3867628) (not b!3867609) (not b!3867599) (not b!3867610) b_and!289781 b_and!289787 (not b!3867603))
(check-sat b_and!289785 (not b_next!105023) (not b_next!105031) (not b_next!105027) b_and!289779 (not b_next!105025) b_and!289789 (not b_next!105029) (not b_next!105021) b_and!289783 b_and!289781 b_and!289787)
(get-model)

(declare-fun d!1145475 () Bool)

(assert (=> d!1145475 (= (inv!55229 (tag!7228 (h!46497 rules!2768))) (= (mod (str.len (value!202121 (tag!7228 (h!46497 rules!2768)))) 2) 0))))

(assert (=> b!3867614 d!1145475))

(declare-fun d!1145477 () Bool)

(declare-fun res!1566394 () Bool)

(declare-fun e!2391933 () Bool)

(assert (=> d!1145477 (=> (not res!1566394) (not e!2391933))))

(declare-fun semiInverseModEq!2728 (Int Int) Bool)

(assert (=> d!1145477 (= res!1566394 (semiInverseModEq!2728 (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toValue!8796 (transformation!6368 (h!46497 rules!2768)))))))

(assert (=> d!1145477 (= (inv!55233 (transformation!6368 (h!46497 rules!2768))) e!2391933)))

(declare-fun b!3867631 () Bool)

(declare-fun equivClasses!2627 (Int Int) Bool)

(assert (=> b!3867631 (= e!2391933 (equivClasses!2627 (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toValue!8796 (transformation!6368 (h!46497 rules!2768)))))))

(assert (= (and d!1145477 res!1566394) b!3867631))

(declare-fun m!4423317 () Bool)

(assert (=> d!1145477 m!4423317))

(declare-fun m!4423319 () Bool)

(assert (=> b!3867631 m!4423319))

(assert (=> b!3867614 d!1145477))

(declare-fun b!3867642 () Bool)

(declare-fun e!2391941 () Bool)

(declare-fun lt!1345474 () tuple2!40292)

(assert (=> b!3867642 (= e!2391941 (= (_2!23280 lt!1345474) lt!1345445))))

(declare-fun d!1145479 () Bool)

(assert (=> d!1145479 e!2391941))

(declare-fun c!673101 () Bool)

(declare-fun size!30875 (List!41200) Int)

(assert (=> d!1145479 (= c!673101 (> (size!30875 (_1!23280 lt!1345474)) 0))))

(declare-fun e!2391942 () tuple2!40292)

(assert (=> d!1145479 (= lt!1345474 e!2391942)))

(declare-fun c!673100 () Bool)

(declare-fun lt!1345472 () Option!8786)

(assert (=> d!1145479 (= c!673100 ((_ is Some!8785) lt!1345472))))

(assert (=> d!1145479 (= lt!1345472 (maxPrefix!3261 thiss!20629 rules!2768 lt!1345445))))

(assert (=> d!1145479 (= (lexList!1725 thiss!20629 rules!2768 lt!1345445) lt!1345474)))

(declare-fun b!3867643 () Bool)

(declare-fun e!2391940 () Bool)

(assert (=> b!3867643 (= e!2391941 e!2391940)))

(declare-fun res!1566397 () Bool)

(assert (=> b!3867643 (= res!1566397 (< (size!30874 (_2!23280 lt!1345474)) (size!30874 lt!1345445)))))

(assert (=> b!3867643 (=> (not res!1566397) (not e!2391940))))

(declare-fun b!3867644 () Bool)

(assert (=> b!3867644 (= e!2391940 (not (isEmpty!24358 (_1!23280 lt!1345474))))))

(declare-fun b!3867645 () Bool)

(assert (=> b!3867645 (= e!2391942 (tuple2!40293 Nil!41076 lt!1345445))))

(declare-fun b!3867646 () Bool)

(declare-fun lt!1345473 () tuple2!40292)

(assert (=> b!3867646 (= e!2391942 (tuple2!40293 (Cons!41076 (_1!23279 (v!39083 lt!1345472)) (_1!23280 lt!1345473)) (_2!23280 lt!1345473)))))

(assert (=> b!3867646 (= lt!1345473 (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345472))))))

(assert (= (and d!1145479 c!673100) b!3867646))

(assert (= (and d!1145479 (not c!673100)) b!3867645))

(assert (= (and d!1145479 c!673101) b!3867643))

(assert (= (and d!1145479 (not c!673101)) b!3867642))

(assert (= (and b!3867643 res!1566397) b!3867644))

(declare-fun m!4423321 () Bool)

(assert (=> d!1145479 m!4423321))

(assert (=> d!1145479 m!4423193))

(declare-fun m!4423323 () Bool)

(assert (=> b!3867643 m!4423323))

(assert (=> b!3867643 m!4423253))

(declare-fun m!4423325 () Bool)

(assert (=> b!3867644 m!4423325))

(declare-fun m!4423327 () Bool)

(assert (=> b!3867646 m!4423327))

(assert (=> b!3867615 d!1145479))

(declare-fun b!3867656 () Bool)

(declare-fun e!2391947 () List!41200)

(assert (=> b!3867656 (= e!2391947 (Cons!41076 (h!46496 prefixTokens!80) (++!10493 (t!314075 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3867658 () Bool)

(declare-fun e!2391948 () Bool)

(declare-fun lt!1345477 () List!41200)

(assert (=> b!3867658 (= e!2391948 (or (not (= suffixTokens!72 Nil!41076)) (= lt!1345477 prefixTokens!80)))))

(declare-fun d!1145481 () Bool)

(assert (=> d!1145481 e!2391948))

(declare-fun res!1566403 () Bool)

(assert (=> d!1145481 (=> (not res!1566403) (not e!2391948))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6126 (List!41200) (InoxSet Token!11874))

(assert (=> d!1145481 (= res!1566403 (= (content!6126 lt!1345477) ((_ map or) (content!6126 prefixTokens!80) (content!6126 suffixTokens!72))))))

(assert (=> d!1145481 (= lt!1345477 e!2391947)))

(declare-fun c!673104 () Bool)

(assert (=> d!1145481 (= c!673104 ((_ is Nil!41076) prefixTokens!80))))

(assert (=> d!1145481 (= (++!10493 prefixTokens!80 suffixTokens!72) lt!1345477)))

(declare-fun b!3867655 () Bool)

(assert (=> b!3867655 (= e!2391947 suffixTokens!72)))

(declare-fun b!3867657 () Bool)

(declare-fun res!1566402 () Bool)

(assert (=> b!3867657 (=> (not res!1566402) (not e!2391948))))

(assert (=> b!3867657 (= res!1566402 (= (size!30875 lt!1345477) (+ (size!30875 prefixTokens!80) (size!30875 suffixTokens!72))))))

(assert (= (and d!1145481 c!673104) b!3867655))

(assert (= (and d!1145481 (not c!673104)) b!3867656))

(assert (= (and d!1145481 res!1566403) b!3867657))

(assert (= (and b!3867657 res!1566402) b!3867658))

(declare-fun m!4423329 () Bool)

(assert (=> b!3867656 m!4423329))

(declare-fun m!4423331 () Bool)

(assert (=> d!1145481 m!4423331))

(declare-fun m!4423333 () Bool)

(assert (=> d!1145481 m!4423333))

(declare-fun m!4423335 () Bool)

(assert (=> d!1145481 m!4423335))

(declare-fun m!4423337 () Bool)

(assert (=> b!3867657 m!4423337))

(declare-fun m!4423339 () Bool)

(assert (=> b!3867657 m!4423339))

(declare-fun m!4423341 () Bool)

(assert (=> b!3867657 m!4423341))

(assert (=> b!3867615 d!1145481))

(declare-fun b!3867667 () Bool)

(declare-fun e!2391953 () List!41199)

(assert (=> b!3867667 (= e!2391953 suffix!1176)))

(declare-fun e!2391954 () Bool)

(declare-fun b!3867670 () Bool)

(declare-fun lt!1345480 () List!41199)

(assert (=> b!3867670 (= e!2391954 (or (not (= suffix!1176 Nil!41075)) (= lt!1345480 prefix!426)))))

(declare-fun b!3867668 () Bool)

(assert (=> b!3867668 (= e!2391953 (Cons!41075 (h!46495 prefix!426) (++!10494 (t!314074 prefix!426) suffix!1176)))))

(declare-fun d!1145483 () Bool)

(assert (=> d!1145483 e!2391954))

(declare-fun res!1566409 () Bool)

(assert (=> d!1145483 (=> (not res!1566409) (not e!2391954))))

(declare-fun content!6127 (List!41199) (InoxSet C!22732))

(assert (=> d!1145483 (= res!1566409 (= (content!6127 lt!1345480) ((_ map or) (content!6127 prefix!426) (content!6127 suffix!1176))))))

(assert (=> d!1145483 (= lt!1345480 e!2391953)))

(declare-fun c!673107 () Bool)

(assert (=> d!1145483 (= c!673107 ((_ is Nil!41075) prefix!426))))

(assert (=> d!1145483 (= (++!10494 prefix!426 suffix!1176) lt!1345480)))

(declare-fun b!3867669 () Bool)

(declare-fun res!1566408 () Bool)

(assert (=> b!3867669 (=> (not res!1566408) (not e!2391954))))

(assert (=> b!3867669 (= res!1566408 (= (size!30874 lt!1345480) (+ (size!30874 prefix!426) (size!30874 suffix!1176))))))

(assert (= (and d!1145483 c!673107) b!3867667))

(assert (= (and d!1145483 (not c!673107)) b!3867668))

(assert (= (and d!1145483 res!1566409) b!3867669))

(assert (= (and b!3867669 res!1566408) b!3867670))

(declare-fun m!4423343 () Bool)

(assert (=> b!3867668 m!4423343))

(declare-fun m!4423345 () Bool)

(assert (=> d!1145483 m!4423345))

(declare-fun m!4423347 () Bool)

(assert (=> d!1145483 m!4423347))

(declare-fun m!4423349 () Bool)

(assert (=> d!1145483 m!4423349))

(declare-fun m!4423351 () Bool)

(assert (=> b!3867669 m!4423351))

(assert (=> b!3867669 m!4423301))

(assert (=> b!3867669 m!4423181))

(assert (=> b!3867615 d!1145483))

(declare-fun d!1145485 () Bool)

(declare-fun res!1566412 () Bool)

(declare-fun e!2391957 () Bool)

(assert (=> d!1145485 (=> (not res!1566412) (not e!2391957))))

(declare-fun rulesValid!2463 (LexerInterface!5957 List!41201) Bool)

(assert (=> d!1145485 (= res!1566412 (rulesValid!2463 thiss!20629 rules!2768))))

(assert (=> d!1145485 (= (rulesInvariant!5300 thiss!20629 rules!2768) e!2391957)))

(declare-fun b!3867673 () Bool)

(declare-datatypes ((List!41202 0))(
  ( (Nil!41078) (Cons!41078 (h!46498 String!46708) (t!314137 List!41202)) )
))
(declare-fun noDuplicateTag!2464 (LexerInterface!5957 List!41201 List!41202) Bool)

(assert (=> b!3867673 (= e!2391957 (noDuplicateTag!2464 thiss!20629 rules!2768 Nil!41078))))

(assert (= (and d!1145485 res!1566412) b!3867673))

(declare-fun m!4423353 () Bool)

(assert (=> d!1145485 m!4423353))

(declare-fun m!4423355 () Bool)

(assert (=> b!3867673 m!4423355))

(assert (=> b!3867595 d!1145485))

(declare-fun d!1145487 () Bool)

(declare-fun res!1566417 () Bool)

(declare-fun e!2391960 () Bool)

(assert (=> d!1145487 (=> (not res!1566417) (not e!2391960))))

(assert (=> d!1145487 (= res!1566417 (not (isEmpty!24359 (originalCharacters!6968 (h!46496 suffixTokens!72)))))))

(assert (=> d!1145487 (= (inv!55232 (h!46496 suffixTokens!72)) e!2391960)))

(declare-fun b!3867678 () Bool)

(declare-fun res!1566418 () Bool)

(assert (=> b!3867678 (=> (not res!1566418) (not e!2391960))))

(declare-fun dynLambda!17679 (Int TokenValue!6598) BalanceConc!24752)

(assert (=> b!3867678 (= res!1566418 (= (originalCharacters!6968 (h!46496 suffixTokens!72)) (list!15280 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (value!202122 (h!46496 suffixTokens!72))))))))

(declare-fun b!3867679 () Bool)

(assert (=> b!3867679 (= e!2391960 (= (size!30873 (h!46496 suffixTokens!72)) (size!30874 (originalCharacters!6968 (h!46496 suffixTokens!72)))))))

(assert (= (and d!1145487 res!1566417) b!3867678))

(assert (= (and b!3867678 res!1566418) b!3867679))

(declare-fun b_lambda!112983 () Bool)

(assert (=> (not b_lambda!112983) (not b!3867678)))

(declare-fun tb!224177 () Bool)

(declare-fun t!314078 () Bool)

(assert (=> (and b!3867596 (= (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314078) tb!224177))

(declare-fun b!3867684 () Bool)

(declare-fun e!2391963 () Bool)

(declare-fun tp!1172739 () Bool)

(declare-fun inv!55234 (Conc!12579) Bool)

(assert (=> b!3867684 (= e!2391963 (and (inv!55234 (c!673095 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (value!202122 (h!46496 suffixTokens!72))))) tp!1172739))))

(declare-fun result!273034 () Bool)

(declare-fun inv!55235 (BalanceConc!24752) Bool)

(assert (=> tb!224177 (= result!273034 (and (inv!55235 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (value!202122 (h!46496 suffixTokens!72)))) e!2391963))))

(assert (= tb!224177 b!3867684))

(declare-fun m!4423357 () Bool)

(assert (=> b!3867684 m!4423357))

(declare-fun m!4423359 () Bool)

(assert (=> tb!224177 m!4423359))

(assert (=> b!3867678 t!314078))

(declare-fun b_and!289791 () Bool)

(assert (= b_and!289781 (and (=> t!314078 result!273034) b_and!289791)))

(declare-fun t!314080 () Bool)

(declare-fun tb!224179 () Bool)

(assert (=> (and b!3867611 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314080) tb!224179))

(declare-fun result!273038 () Bool)

(assert (= result!273038 result!273034))

(assert (=> b!3867678 t!314080))

(declare-fun b_and!289793 () Bool)

(assert (= b_and!289785 (and (=> t!314080 result!273038) b_and!289793)))

(declare-fun tb!224181 () Bool)

(declare-fun t!314082 () Bool)

(assert (=> (and b!3867593 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314082) tb!224181))

(declare-fun result!273040 () Bool)

(assert (= result!273040 result!273034))

(assert (=> b!3867678 t!314082))

(declare-fun b_and!289795 () Bool)

(assert (= b_and!289789 (and (=> t!314082 result!273040) b_and!289795)))

(declare-fun m!4423361 () Bool)

(assert (=> d!1145487 m!4423361))

(declare-fun m!4423363 () Bool)

(assert (=> b!3867678 m!4423363))

(assert (=> b!3867678 m!4423363))

(declare-fun m!4423365 () Bool)

(assert (=> b!3867678 m!4423365))

(declare-fun m!4423367 () Bool)

(assert (=> b!3867679 m!4423367))

(assert (=> b!3867616 d!1145487))

(declare-fun b!3867703 () Bool)

(declare-fun res!1566442 () Bool)

(declare-fun e!2391970 () Bool)

(assert (=> b!3867703 (=> (not res!1566442) (not e!2391970))))

(declare-fun lt!1345494 () Option!8786)

(assert (=> b!3867703 (= res!1566442 (= (value!202122 (_1!23279 (get!13592 lt!1345494))) (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (get!13592 lt!1345494)))) (seqFromList!4639 (originalCharacters!6968 (_1!23279 (get!13592 lt!1345494)))))))))

(declare-fun b!3867704 () Bool)

(declare-fun contains!8280 (List!41201 Rule!12536) Bool)

(assert (=> b!3867704 (= e!2391970 (contains!8280 rules!2768 (rule!9248 (_1!23279 (get!13592 lt!1345494)))))))

(declare-fun b!3867705 () Bool)

(declare-fun res!1566439 () Bool)

(assert (=> b!3867705 (=> (not res!1566439) (not e!2391970))))

(assert (=> b!3867705 (= res!1566439 (< (size!30874 (_2!23279 (get!13592 lt!1345494))) (size!30874 lt!1345445)))))

(declare-fun d!1145489 () Bool)

(declare-fun e!2391971 () Bool)

(assert (=> d!1145489 e!2391971))

(declare-fun res!1566441 () Bool)

(assert (=> d!1145489 (=> res!1566441 e!2391971)))

(declare-fun isEmpty!24361 (Option!8786) Bool)

(assert (=> d!1145489 (= res!1566441 (isEmpty!24361 lt!1345494))))

(declare-fun e!2391972 () Option!8786)

(assert (=> d!1145489 (= lt!1345494 e!2391972)))

(declare-fun c!673110 () Bool)

(assert (=> d!1145489 (= c!673110 (and ((_ is Cons!41077) rules!2768) ((_ is Nil!41077) (t!314076 rules!2768))))))

(declare-fun lt!1345493 () Unit!58840)

(declare-fun lt!1345492 () Unit!58840)

(assert (=> d!1145489 (= lt!1345493 lt!1345492)))

(assert (=> d!1145489 (isPrefix!3467 lt!1345445 lt!1345445)))

(declare-fun lemmaIsPrefixRefl!2199 (List!41199 List!41199) Unit!58840)

(assert (=> d!1145489 (= lt!1345492 (lemmaIsPrefixRefl!2199 lt!1345445 lt!1345445))))

(declare-fun rulesValidInductive!2273 (LexerInterface!5957 List!41201) Bool)

(assert (=> d!1145489 (rulesValidInductive!2273 thiss!20629 rules!2768)))

(assert (=> d!1145489 (= (maxPrefix!3261 thiss!20629 rules!2768 lt!1345445) lt!1345494)))

(declare-fun b!3867706 () Bool)

(declare-fun res!1566437 () Bool)

(assert (=> b!3867706 (=> (not res!1566437) (not e!2391970))))

(assert (=> b!3867706 (= res!1566437 (= (list!15280 (charsOf!4196 (_1!23279 (get!13592 lt!1345494)))) (originalCharacters!6968 (_1!23279 (get!13592 lt!1345494)))))))

(declare-fun b!3867707 () Bool)

(declare-fun lt!1345491 () Option!8786)

(declare-fun lt!1345495 () Option!8786)

(assert (=> b!3867707 (= e!2391972 (ite (and ((_ is None!8785) lt!1345491) ((_ is None!8785) lt!1345495)) None!8785 (ite ((_ is None!8785) lt!1345495) lt!1345491 (ite ((_ is None!8785) lt!1345491) lt!1345495 (ite (>= (size!30873 (_1!23279 (v!39083 lt!1345491))) (size!30873 (_1!23279 (v!39083 lt!1345495)))) lt!1345491 lt!1345495)))))))

(declare-fun call!282681 () Option!8786)

(assert (=> b!3867707 (= lt!1345491 call!282681)))

(assert (=> b!3867707 (= lt!1345495 (maxPrefix!3261 thiss!20629 (t!314076 rules!2768) lt!1345445))))

(declare-fun bm!282676 () Bool)

(assert (=> bm!282676 (= call!282681 (maxPrefixOneRule!2343 thiss!20629 (h!46497 rules!2768) lt!1345445))))

(declare-fun b!3867708 () Bool)

(declare-fun res!1566440 () Bool)

(assert (=> b!3867708 (=> (not res!1566440) (not e!2391970))))

(declare-fun matchR!5405 (Regex!11273 List!41199) Bool)

(assert (=> b!3867708 (= res!1566440 (matchR!5405 (regex!6368 (rule!9248 (_1!23279 (get!13592 lt!1345494)))) (list!15280 (charsOf!4196 (_1!23279 (get!13592 lt!1345494))))))))

(declare-fun b!3867709 () Bool)

(assert (=> b!3867709 (= e!2391972 call!282681)))

(declare-fun b!3867710 () Bool)

(declare-fun res!1566436 () Bool)

(assert (=> b!3867710 (=> (not res!1566436) (not e!2391970))))

(assert (=> b!3867710 (= res!1566436 (= (++!10494 (list!15280 (charsOf!4196 (_1!23279 (get!13592 lt!1345494)))) (_2!23279 (get!13592 lt!1345494))) lt!1345445))))

(declare-fun b!3867711 () Bool)

(assert (=> b!3867711 (= e!2391971 e!2391970)))

(declare-fun res!1566438 () Bool)

(assert (=> b!3867711 (=> (not res!1566438) (not e!2391970))))

(declare-fun isDefined!6876 (Option!8786) Bool)

(assert (=> b!3867711 (= res!1566438 (isDefined!6876 lt!1345494))))

(assert (= (and d!1145489 c!673110) b!3867709))

(assert (= (and d!1145489 (not c!673110)) b!3867707))

(assert (= (or b!3867709 b!3867707) bm!282676))

(assert (= (and d!1145489 (not res!1566441)) b!3867711))

(assert (= (and b!3867711 res!1566438) b!3867706))

(assert (= (and b!3867706 res!1566437) b!3867705))

(assert (= (and b!3867705 res!1566439) b!3867710))

(assert (= (and b!3867710 res!1566436) b!3867703))

(assert (= (and b!3867703 res!1566442) b!3867708))

(assert (= (and b!3867708 res!1566440) b!3867704))

(declare-fun m!4423369 () Bool)

(assert (=> b!3867710 m!4423369))

(declare-fun m!4423371 () Bool)

(assert (=> b!3867710 m!4423371))

(assert (=> b!3867710 m!4423371))

(declare-fun m!4423373 () Bool)

(assert (=> b!3867710 m!4423373))

(assert (=> b!3867710 m!4423373))

(declare-fun m!4423375 () Bool)

(assert (=> b!3867710 m!4423375))

(assert (=> b!3867705 m!4423369))

(declare-fun m!4423377 () Bool)

(assert (=> b!3867705 m!4423377))

(assert (=> b!3867705 m!4423253))

(declare-fun m!4423379 () Bool)

(assert (=> bm!282676 m!4423379))

(assert (=> b!3867708 m!4423369))

(assert (=> b!3867708 m!4423371))

(assert (=> b!3867708 m!4423371))

(assert (=> b!3867708 m!4423373))

(assert (=> b!3867708 m!4423373))

(declare-fun m!4423381 () Bool)

(assert (=> b!3867708 m!4423381))

(declare-fun m!4423383 () Bool)

(assert (=> b!3867707 m!4423383))

(declare-fun m!4423385 () Bool)

(assert (=> b!3867711 m!4423385))

(assert (=> b!3867703 m!4423369))

(declare-fun m!4423387 () Bool)

(assert (=> b!3867703 m!4423387))

(assert (=> b!3867703 m!4423387))

(declare-fun m!4423389 () Bool)

(assert (=> b!3867703 m!4423389))

(assert (=> b!3867704 m!4423369))

(declare-fun m!4423391 () Bool)

(assert (=> b!3867704 m!4423391))

(assert (=> b!3867706 m!4423369))

(assert (=> b!3867706 m!4423371))

(assert (=> b!3867706 m!4423371))

(assert (=> b!3867706 m!4423373))

(declare-fun m!4423393 () Bool)

(assert (=> d!1145489 m!4423393))

(declare-fun m!4423395 () Bool)

(assert (=> d!1145489 m!4423395))

(declare-fun m!4423397 () Bool)

(assert (=> d!1145489 m!4423397))

(declare-fun m!4423399 () Bool)

(assert (=> d!1145489 m!4423399))

(assert (=> b!3867617 d!1145489))

(declare-fun d!1145493 () Bool)

(assert (=> d!1145493 (= (_2!23279 (v!39083 lt!1345427)) lt!1345440)))

(declare-fun lt!1345500 () Unit!58840)

(declare-fun choose!22803 (List!41199 List!41199 List!41199 List!41199 List!41199) Unit!58840)

(assert (=> d!1145493 (= lt!1345500 (choose!22803 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345440 lt!1345445))))

(assert (=> d!1145493 (isPrefix!3467 lt!1345461 lt!1345445)))

(assert (=> d!1145493 (= (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345440 lt!1345445) lt!1345500)))

(declare-fun bs!583319 () Bool)

(assert (= bs!583319 d!1145493))

(declare-fun m!4423401 () Bool)

(assert (=> bs!583319 m!4423401))

(declare-fun m!4423403 () Bool)

(assert (=> bs!583319 m!4423403))

(assert (=> b!3867597 d!1145493))

(declare-fun d!1145495 () Bool)

(declare-fun e!2391987 () Bool)

(assert (=> d!1145495 e!2391987))

(declare-fun res!1566458 () Bool)

(assert (=> d!1145495 (=> res!1566458 e!2391987)))

(declare-fun lt!1345504 () Bool)

(assert (=> d!1145495 (= res!1566458 (not lt!1345504))))

(declare-fun e!2391985 () Bool)

(assert (=> d!1145495 (= lt!1345504 e!2391985)))

(declare-fun res!1566459 () Bool)

(assert (=> d!1145495 (=> res!1566459 e!2391985)))

(assert (=> d!1145495 (= res!1566459 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145495 (= (isPrefix!3467 lt!1345461 lt!1345425) lt!1345504)))

(declare-fun b!3867732 () Bool)

(declare-fun e!2391986 () Bool)

(assert (=> b!3867732 (= e!2391985 e!2391986)))

(declare-fun res!1566457 () Bool)

(assert (=> b!3867732 (=> (not res!1566457) (not e!2391986))))

(assert (=> b!3867732 (= res!1566457 (not ((_ is Nil!41075) lt!1345425)))))

(declare-fun b!3867735 () Bool)

(assert (=> b!3867735 (= e!2391987 (>= (size!30874 lt!1345425) (size!30874 lt!1345461)))))

(declare-fun b!3867734 () Bool)

(declare-fun tail!5896 (List!41199) List!41199)

(assert (=> b!3867734 (= e!2391986 (isPrefix!3467 (tail!5896 lt!1345461) (tail!5896 lt!1345425)))))

(declare-fun b!3867733 () Bool)

(declare-fun res!1566460 () Bool)

(assert (=> b!3867733 (=> (not res!1566460) (not e!2391986))))

(declare-fun head!8179 (List!41199) C!22732)

(assert (=> b!3867733 (= res!1566460 (= (head!8179 lt!1345461) (head!8179 lt!1345425)))))

(assert (= (and d!1145495 (not res!1566459)) b!3867732))

(assert (= (and b!3867732 res!1566457) b!3867733))

(assert (= (and b!3867733 res!1566460) b!3867734))

(assert (= (and d!1145495 (not res!1566458)) b!3867735))

(declare-fun m!4423419 () Bool)

(assert (=> b!3867735 m!4423419))

(assert (=> b!3867735 m!4423237))

(declare-fun m!4423421 () Bool)

(assert (=> b!3867734 m!4423421))

(declare-fun m!4423423 () Bool)

(assert (=> b!3867734 m!4423423))

(assert (=> b!3867734 m!4423421))

(assert (=> b!3867734 m!4423423))

(declare-fun m!4423425 () Bool)

(assert (=> b!3867734 m!4423425))

(declare-fun m!4423427 () Bool)

(assert (=> b!3867733 m!4423427))

(declare-fun m!4423429 () Bool)

(assert (=> b!3867733 m!4423429))

(assert (=> b!3867597 d!1145495))

(declare-fun d!1145499 () Bool)

(assert (=> d!1145499 (isPrefix!3467 lt!1345461 (++!10494 lt!1345461 lt!1345440))))

(declare-fun lt!1345507 () Unit!58840)

(declare-fun choose!22804 (List!41199 List!41199) Unit!58840)

(assert (=> d!1145499 (= lt!1345507 (choose!22804 lt!1345461 lt!1345440))))

(assert (=> d!1145499 (= (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345461 lt!1345440) lt!1345507)))

(declare-fun bs!583320 () Bool)

(assert (= bs!583320 d!1145499))

(assert (=> bs!583320 m!4423205))

(assert (=> bs!583320 m!4423205))

(declare-fun m!4423431 () Bool)

(assert (=> bs!583320 m!4423431))

(declare-fun m!4423433 () Bool)

(assert (=> bs!583320 m!4423433))

(assert (=> b!3867597 d!1145499))

(declare-fun d!1145501 () Bool)

(assert (=> d!1145501 (= (head!8178 prefixTokens!80) (h!46496 prefixTokens!80))))

(assert (=> b!3867618 d!1145501))

(declare-fun b!3867736 () Bool)

(declare-fun e!2391989 () Bool)

(declare-fun lt!1345510 () tuple2!40292)

(assert (=> b!3867736 (= e!2391989 (= (_2!23280 lt!1345510) suffix!1176))))

(declare-fun d!1145503 () Bool)

(assert (=> d!1145503 e!2391989))

(declare-fun c!673115 () Bool)

(assert (=> d!1145503 (= c!673115 (> (size!30875 (_1!23280 lt!1345510)) 0))))

(declare-fun e!2391990 () tuple2!40292)

(assert (=> d!1145503 (= lt!1345510 e!2391990)))

(declare-fun c!673114 () Bool)

(declare-fun lt!1345508 () Option!8786)

(assert (=> d!1145503 (= c!673114 ((_ is Some!8785) lt!1345508))))

(assert (=> d!1145503 (= lt!1345508 (maxPrefix!3261 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1145503 (= (lexList!1725 thiss!20629 rules!2768 suffix!1176) lt!1345510)))

(declare-fun b!3867737 () Bool)

(declare-fun e!2391988 () Bool)

(assert (=> b!3867737 (= e!2391989 e!2391988)))

(declare-fun res!1566461 () Bool)

(assert (=> b!3867737 (= res!1566461 (< (size!30874 (_2!23280 lt!1345510)) (size!30874 suffix!1176)))))

(assert (=> b!3867737 (=> (not res!1566461) (not e!2391988))))

(declare-fun b!3867738 () Bool)

(assert (=> b!3867738 (= e!2391988 (not (isEmpty!24358 (_1!23280 lt!1345510))))))

(declare-fun b!3867739 () Bool)

(assert (=> b!3867739 (= e!2391990 (tuple2!40293 Nil!41076 suffix!1176))))

(declare-fun b!3867740 () Bool)

(declare-fun lt!1345509 () tuple2!40292)

(assert (=> b!3867740 (= e!2391990 (tuple2!40293 (Cons!41076 (_1!23279 (v!39083 lt!1345508)) (_1!23280 lt!1345509)) (_2!23280 lt!1345509)))))

(assert (=> b!3867740 (= lt!1345509 (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345508))))))

(assert (= (and d!1145503 c!673114) b!3867740))

(assert (= (and d!1145503 (not c!673114)) b!3867739))

(assert (= (and d!1145503 c!673115) b!3867737))

(assert (= (and d!1145503 (not c!673115)) b!3867736))

(assert (= (and b!3867737 res!1566461) b!3867738))

(declare-fun m!4423435 () Bool)

(assert (=> d!1145503 m!4423435))

(declare-fun m!4423437 () Bool)

(assert (=> d!1145503 m!4423437))

(declare-fun m!4423439 () Bool)

(assert (=> b!3867737 m!4423439))

(assert (=> b!3867737 m!4423181))

(declare-fun m!4423441 () Bool)

(assert (=> b!3867738 m!4423441))

(declare-fun m!4423443 () Bool)

(assert (=> b!3867740 m!4423443))

(assert (=> b!3867598 d!1145503))

(declare-fun d!1145505 () Bool)

(assert (=> d!1145505 (= (inv!55229 (tag!7228 (rule!9248 (h!46496 prefixTokens!80)))) (= (mod (str.len (value!202121 (tag!7228 (rule!9248 (h!46496 prefixTokens!80))))) 2) 0))))

(assert (=> b!3867608 d!1145505))

(declare-fun d!1145507 () Bool)

(declare-fun res!1566462 () Bool)

(declare-fun e!2391991 () Bool)

(assert (=> d!1145507 (=> (not res!1566462) (not e!2391991))))

(assert (=> d!1145507 (= res!1566462 (semiInverseModEq!2728 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toValue!8796 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))))))

(assert (=> d!1145507 (= (inv!55233 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) e!2391991)))

(declare-fun b!3867741 () Bool)

(assert (=> b!3867741 (= e!2391991 (equivClasses!2627 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toValue!8796 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))))))

(assert (= (and d!1145507 res!1566462) b!3867741))

(declare-fun m!4423445 () Bool)

(assert (=> d!1145507 m!4423445))

(declare-fun m!4423447 () Bool)

(assert (=> b!3867741 m!4423447))

(assert (=> b!3867608 d!1145507))

(declare-fun d!1145509 () Bool)

(assert (=> d!1145509 (= (inv!55229 (tag!7228 (rule!9248 (h!46496 suffixTokens!72)))) (= (mod (str.len (value!202121 (tag!7228 (rule!9248 (h!46496 suffixTokens!72))))) 2) 0))))

(assert (=> b!3867609 d!1145509))

(declare-fun d!1145511 () Bool)

(declare-fun res!1566463 () Bool)

(declare-fun e!2391992 () Bool)

(assert (=> d!1145511 (=> (not res!1566463) (not e!2391992))))

(assert (=> d!1145511 (= res!1566463 (semiInverseModEq!2728 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toValue!8796 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))))))

(assert (=> d!1145511 (= (inv!55233 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) e!2391992)))

(declare-fun b!3867742 () Bool)

(assert (=> b!3867742 (= e!2391992 (equivClasses!2627 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toValue!8796 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))))))

(assert (= (and d!1145511 res!1566463) b!3867742))

(declare-fun m!4423449 () Bool)

(assert (=> d!1145511 m!4423449))

(declare-fun m!4423451 () Bool)

(assert (=> b!3867742 m!4423451))

(assert (=> b!3867609 d!1145511))

(declare-fun d!1145513 () Bool)

(assert (=> d!1145513 (not (= (lexList!1725 thiss!20629 rules!2768 (_2!23279 lt!1345431)) (tuple2!40293 (++!10493 lt!1345428 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1345513 () Unit!58840)

(declare-fun choose!22805 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41200 List!41199 List!41200) Unit!58840)

(assert (=> d!1145513 (= lt!1345513 (choose!22805 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91 lt!1345428))))

(assert (=> d!1145513 (not (isEmpty!24360 rules!2768))))

(assert (=> d!1145513 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!28 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91 lt!1345428) lt!1345513)))

(declare-fun bs!583321 () Bool)

(assert (= bs!583321 d!1145513))

(assert (=> bs!583321 m!4423309))

(assert (=> bs!583321 m!4423199))

(declare-fun m!4423453 () Bool)

(assert (=> bs!583321 m!4423453))

(assert (=> bs!583321 m!4423195))

(assert (=> b!3867589 d!1145513))

(declare-fun b!3867744 () Bool)

(declare-fun e!2391993 () List!41200)

(assert (=> b!3867744 (= e!2391993 (Cons!41076 (h!46496 lt!1345428) (++!10493 (t!314075 lt!1345428) suffixTokens!72)))))

(declare-fun b!3867746 () Bool)

(declare-fun lt!1345514 () List!41200)

(declare-fun e!2391994 () Bool)

(assert (=> b!3867746 (= e!2391994 (or (not (= suffixTokens!72 Nil!41076)) (= lt!1345514 lt!1345428)))))

(declare-fun d!1145515 () Bool)

(assert (=> d!1145515 e!2391994))

(declare-fun res!1566465 () Bool)

(assert (=> d!1145515 (=> (not res!1566465) (not e!2391994))))

(assert (=> d!1145515 (= res!1566465 (= (content!6126 lt!1345514) ((_ map or) (content!6126 lt!1345428) (content!6126 suffixTokens!72))))))

(assert (=> d!1145515 (= lt!1345514 e!2391993)))

(declare-fun c!673116 () Bool)

(assert (=> d!1145515 (= c!673116 ((_ is Nil!41076) lt!1345428))))

(assert (=> d!1145515 (= (++!10493 lt!1345428 suffixTokens!72) lt!1345514)))

(declare-fun b!3867743 () Bool)

(assert (=> b!3867743 (= e!2391993 suffixTokens!72)))

(declare-fun b!3867745 () Bool)

(declare-fun res!1566464 () Bool)

(assert (=> b!3867745 (=> (not res!1566464) (not e!2391994))))

(assert (=> b!3867745 (= res!1566464 (= (size!30875 lt!1345514) (+ (size!30875 lt!1345428) (size!30875 suffixTokens!72))))))

(assert (= (and d!1145515 c!673116) b!3867743))

(assert (= (and d!1145515 (not c!673116)) b!3867744))

(assert (= (and d!1145515 res!1566465) b!3867745))

(assert (= (and b!3867745 res!1566464) b!3867746))

(declare-fun m!4423455 () Bool)

(assert (=> b!3867744 m!4423455))

(declare-fun m!4423457 () Bool)

(assert (=> d!1145515 m!4423457))

(declare-fun m!4423459 () Bool)

(assert (=> d!1145515 m!4423459))

(assert (=> d!1145515 m!4423335))

(declare-fun m!4423461 () Bool)

(assert (=> b!3867745 m!4423461))

(declare-fun m!4423463 () Bool)

(assert (=> b!3867745 m!4423463))

(assert (=> b!3867745 m!4423341))

(assert (=> b!3867589 d!1145515))

(declare-fun d!1145517 () Bool)

(declare-fun lt!1345527 () Int)

(assert (=> d!1145517 (>= lt!1345527 0)))

(declare-fun e!2392001 () Int)

(assert (=> d!1145517 (= lt!1345527 e!2392001)))

(declare-fun c!673121 () Bool)

(assert (=> d!1145517 (= c!673121 ((_ is Nil!41075) suffix!1176))))

(assert (=> d!1145517 (= (size!30874 suffix!1176) lt!1345527)))

(declare-fun b!3867757 () Bool)

(assert (=> b!3867757 (= e!2392001 0)))

(declare-fun b!3867758 () Bool)

(assert (=> b!3867758 (= e!2392001 (+ 1 (size!30874 (t!314074 suffix!1176))))))

(assert (= (and d!1145517 c!673121) b!3867757))

(assert (= (and d!1145517 (not c!673121)) b!3867758))

(declare-fun m!4423465 () Bool)

(assert (=> b!3867758 m!4423465))

(assert (=> b!3867610 d!1145517))

(declare-fun d!1145519 () Bool)

(declare-fun lt!1345528 () Int)

(assert (=> d!1145519 (>= lt!1345528 0)))

(declare-fun e!2392004 () Int)

(assert (=> d!1145519 (= lt!1345528 e!2392004)))

(declare-fun c!673122 () Bool)

(assert (=> d!1145519 (= c!673122 ((_ is Nil!41075) (_2!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145519 (= (size!30874 (_2!23279 (v!39083 lt!1345427))) lt!1345528)))

(declare-fun b!3867767 () Bool)

(assert (=> b!3867767 (= e!2392004 0)))

(declare-fun b!3867768 () Bool)

(assert (=> b!3867768 (= e!2392004 (+ 1 (size!30874 (t!314074 (_2!23279 (v!39083 lt!1345427))))))))

(assert (= (and d!1145519 c!673122) b!3867767))

(assert (= (and d!1145519 (not c!673122)) b!3867768))

(declare-fun m!4423467 () Bool)

(assert (=> b!3867768 m!4423467))

(assert (=> b!3867610 d!1145519))

(declare-fun d!1145521 () Bool)

(declare-fun res!1566480 () Bool)

(declare-fun e!2392005 () Bool)

(assert (=> d!1145521 (=> (not res!1566480) (not e!2392005))))

(assert (=> d!1145521 (= res!1566480 (not (isEmpty!24359 (originalCharacters!6968 (h!46496 prefixTokens!80)))))))

(assert (=> d!1145521 (= (inv!55232 (h!46496 prefixTokens!80)) e!2392005)))

(declare-fun b!3867773 () Bool)

(declare-fun res!1566481 () Bool)

(assert (=> b!3867773 (=> (not res!1566481) (not e!2392005))))

(assert (=> b!3867773 (= res!1566481 (= (originalCharacters!6968 (h!46496 prefixTokens!80)) (list!15280 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (value!202122 (h!46496 prefixTokens!80))))))))

(declare-fun b!3867774 () Bool)

(assert (=> b!3867774 (= e!2392005 (= (size!30873 (h!46496 prefixTokens!80)) (size!30874 (originalCharacters!6968 (h!46496 prefixTokens!80)))))))

(assert (= (and d!1145521 res!1566480) b!3867773))

(assert (= (and b!3867773 res!1566481) b!3867774))

(declare-fun b_lambda!112985 () Bool)

(assert (=> (not b_lambda!112985) (not b!3867773)))

(declare-fun tb!224183 () Bool)

(declare-fun t!314084 () Bool)

(assert (=> (and b!3867596 (= (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314084) tb!224183))

(declare-fun b!3867775 () Bool)

(declare-fun e!2392006 () Bool)

(declare-fun tp!1172740 () Bool)

(assert (=> b!3867775 (= e!2392006 (and (inv!55234 (c!673095 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (value!202122 (h!46496 prefixTokens!80))))) tp!1172740))))

(declare-fun result!273042 () Bool)

(assert (=> tb!224183 (= result!273042 (and (inv!55235 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (value!202122 (h!46496 prefixTokens!80)))) e!2392006))))

(assert (= tb!224183 b!3867775))

(declare-fun m!4423469 () Bool)

(assert (=> b!3867775 m!4423469))

(declare-fun m!4423471 () Bool)

(assert (=> tb!224183 m!4423471))

(assert (=> b!3867773 t!314084))

(declare-fun b_and!289797 () Bool)

(assert (= b_and!289791 (and (=> t!314084 result!273042) b_and!289797)))

(declare-fun tb!224185 () Bool)

(declare-fun t!314086 () Bool)

(assert (=> (and b!3867611 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314086) tb!224185))

(declare-fun result!273044 () Bool)

(assert (= result!273044 result!273042))

(assert (=> b!3867773 t!314086))

(declare-fun b_and!289799 () Bool)

(assert (= b_and!289793 (and (=> t!314086 result!273044) b_and!289799)))

(declare-fun t!314088 () Bool)

(declare-fun tb!224187 () Bool)

(assert (=> (and b!3867593 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314088) tb!224187))

(declare-fun result!273046 () Bool)

(assert (= result!273046 result!273042))

(assert (=> b!3867773 t!314088))

(declare-fun b_and!289801 () Bool)

(assert (= b_and!289795 (and (=> t!314088 result!273046) b_and!289801)))

(declare-fun m!4423473 () Bool)

(assert (=> d!1145521 m!4423473))

(declare-fun m!4423475 () Bool)

(assert (=> b!3867773 m!4423475))

(assert (=> b!3867773 m!4423475))

(declare-fun m!4423477 () Bool)

(assert (=> b!3867773 m!4423477))

(declare-fun m!4423479 () Bool)

(assert (=> b!3867774 m!4423479))

(assert (=> b!3867590 d!1145521))

(declare-fun d!1145523 () Bool)

(assert (=> d!1145523 (and (= lt!1345461 lt!1345461) (= (_2!23279 (v!39083 lt!1345427)) (_2!23279 lt!1345431)))))

(declare-fun lt!1345531 () Unit!58840)

(declare-fun choose!22806 (List!41199 List!41199 List!41199 List!41199) Unit!58840)

(assert (=> d!1145523 (= lt!1345531 (choose!22806 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 (_2!23279 lt!1345431)))))

(assert (=> d!1145523 (= (++!10494 lt!1345461 (_2!23279 (v!39083 lt!1345427))) (++!10494 lt!1345461 (_2!23279 lt!1345431)))))

(assert (=> d!1145523 (= (lemmaConcatSameAndSameSizesThenSameLists!452 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 (_2!23279 lt!1345431)) lt!1345531)))

(declare-fun bs!583322 () Bool)

(assert (= bs!583322 d!1145523))

(declare-fun m!4423481 () Bool)

(assert (=> bs!583322 m!4423481))

(assert (=> bs!583322 m!4423239))

(declare-fun m!4423483 () Bool)

(assert (=> bs!583322 m!4423483))

(assert (=> b!3867612 d!1145523))

(declare-fun d!1145525 () Bool)

(assert (=> d!1145525 (not (= (lexList!1725 thiss!20629 rules!2768 (_2!23279 lt!1345431)) (tuple2!40293 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1345547 () Unit!58840)

(declare-fun choose!22807 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41200 List!41199) Unit!58840)

(assert (=> d!1145525 (= lt!1345547 (choose!22807 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91))))

(assert (=> d!1145525 (not (isEmpty!24360 rules!2768))))

(assert (=> d!1145525 (= (lemmaLexWithSmallerInputCannotProduceSameResults!28 thiss!20629 rules!2768 suffix!1176 (_2!23279 lt!1345431) suffixTokens!72 suffixResult!91) lt!1345547)))

(declare-fun bs!583323 () Bool)

(assert (= bs!583323 d!1145525))

(assert (=> bs!583323 m!4423309))

(declare-fun m!4423529 () Bool)

(assert (=> bs!583323 m!4423529))

(assert (=> bs!583323 m!4423195))

(assert (=> b!3867612 d!1145525))

(declare-fun b!3867807 () Bool)

(declare-fun e!2392021 () List!41199)

(assert (=> b!3867807 (= e!2392021 lt!1345440)))

(declare-fun lt!1345548 () List!41199)

(declare-fun e!2392022 () Bool)

(declare-fun b!3867810 () Bool)

(assert (=> b!3867810 (= e!2392022 (or (not (= lt!1345440 Nil!41075)) (= lt!1345548 lt!1345461)))))

(declare-fun b!3867808 () Bool)

(assert (=> b!3867808 (= e!2392021 (Cons!41075 (h!46495 lt!1345461) (++!10494 (t!314074 lt!1345461) lt!1345440)))))

(declare-fun d!1145535 () Bool)

(assert (=> d!1145535 e!2392022))

(declare-fun res!1566496 () Bool)

(assert (=> d!1145535 (=> (not res!1566496) (not e!2392022))))

(assert (=> d!1145535 (= res!1566496 (= (content!6127 lt!1345548) ((_ map or) (content!6127 lt!1345461) (content!6127 lt!1345440))))))

(assert (=> d!1145535 (= lt!1345548 e!2392021)))

(declare-fun c!673132 () Bool)

(assert (=> d!1145535 (= c!673132 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145535 (= (++!10494 lt!1345461 lt!1345440) lt!1345548)))

(declare-fun b!3867809 () Bool)

(declare-fun res!1566495 () Bool)

(assert (=> b!3867809 (=> (not res!1566495) (not e!2392022))))

(assert (=> b!3867809 (= res!1566495 (= (size!30874 lt!1345548) (+ (size!30874 lt!1345461) (size!30874 lt!1345440))))))

(assert (= (and d!1145535 c!673132) b!3867807))

(assert (= (and d!1145535 (not c!673132)) b!3867808))

(assert (= (and d!1145535 res!1566496) b!3867809))

(assert (= (and b!3867809 res!1566495) b!3867810))

(declare-fun m!4423531 () Bool)

(assert (=> b!3867808 m!4423531))

(declare-fun m!4423533 () Bool)

(assert (=> d!1145535 m!4423533))

(declare-fun m!4423535 () Bool)

(assert (=> d!1145535 m!4423535))

(declare-fun m!4423537 () Bool)

(assert (=> d!1145535 m!4423537))

(declare-fun m!4423539 () Bool)

(assert (=> b!3867809 m!4423539))

(assert (=> b!3867809 m!4423237))

(declare-fun m!4423541 () Bool)

(assert (=> b!3867809 m!4423541))

(assert (=> b!3867613 d!1145535))

(declare-fun b!3867813 () Bool)

(declare-fun e!2392024 () List!41199)

(assert (=> b!3867813 (= e!2392024 suffix!1176)))

(declare-fun lt!1345550 () List!41199)

(declare-fun b!3867816 () Bool)

(declare-fun e!2392025 () Bool)

(assert (=> b!3867816 (= e!2392025 (or (not (= suffix!1176 Nil!41075)) (= lt!1345550 lt!1345451)))))

(declare-fun b!3867814 () Bool)

(assert (=> b!3867814 (= e!2392024 (Cons!41075 (h!46495 lt!1345451) (++!10494 (t!314074 lt!1345451) suffix!1176)))))

(declare-fun d!1145537 () Bool)

(assert (=> d!1145537 e!2392025))

(declare-fun res!1566498 () Bool)

(assert (=> d!1145537 (=> (not res!1566498) (not e!2392025))))

(assert (=> d!1145537 (= res!1566498 (= (content!6127 lt!1345550) ((_ map or) (content!6127 lt!1345451) (content!6127 suffix!1176))))))

(assert (=> d!1145537 (= lt!1345550 e!2392024)))

(declare-fun c!673134 () Bool)

(assert (=> d!1145537 (= c!673134 ((_ is Nil!41075) lt!1345451))))

(assert (=> d!1145537 (= (++!10494 lt!1345451 suffix!1176) lt!1345550)))

(declare-fun b!3867815 () Bool)

(declare-fun res!1566497 () Bool)

(assert (=> b!3867815 (=> (not res!1566497) (not e!2392025))))

(assert (=> b!3867815 (= res!1566497 (= (size!30874 lt!1345550) (+ (size!30874 lt!1345451) (size!30874 suffix!1176))))))

(assert (= (and d!1145537 c!673134) b!3867813))

(assert (= (and d!1145537 (not c!673134)) b!3867814))

(assert (= (and d!1145537 res!1566498) b!3867815))

(assert (= (and b!3867815 res!1566497) b!3867816))

(declare-fun m!4423549 () Bool)

(assert (=> b!3867814 m!4423549))

(declare-fun m!4423551 () Bool)

(assert (=> d!1145537 m!4423551))

(declare-fun m!4423553 () Bool)

(assert (=> d!1145537 m!4423553))

(assert (=> d!1145537 m!4423349))

(declare-fun m!4423555 () Bool)

(assert (=> b!3867815 m!4423555))

(declare-fun m!4423557 () Bool)

(assert (=> b!3867815 m!4423557))

(assert (=> b!3867815 m!4423181))

(assert (=> b!3867613 d!1145537))

(declare-fun d!1145541 () Bool)

(assert (=> d!1145541 (= (++!10494 (++!10494 lt!1345461 lt!1345451) suffix!1176) (++!10494 lt!1345461 (++!10494 lt!1345451 suffix!1176)))))

(declare-fun lt!1345556 () Unit!58840)

(declare-fun choose!22808 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> d!1145541 (= lt!1345556 (choose!22808 lt!1345461 lt!1345451 suffix!1176))))

(assert (=> d!1145541 (= (lemmaConcatAssociativity!2214 lt!1345461 lt!1345451 suffix!1176) lt!1345556)))

(declare-fun bs!583324 () Bool)

(assert (= bs!583324 d!1145541))

(assert (=> bs!583324 m!4423189))

(assert (=> bs!583324 m!4423207))

(declare-fun m!4423559 () Bool)

(assert (=> bs!583324 m!4423559))

(assert (=> bs!583324 m!4423189))

(declare-fun m!4423561 () Bool)

(assert (=> bs!583324 m!4423561))

(assert (=> bs!583324 m!4423207))

(declare-fun m!4423563 () Bool)

(assert (=> bs!583324 m!4423563))

(assert (=> b!3867613 d!1145541))

(declare-fun b!3867821 () Bool)

(declare-fun e!2392029 () Bool)

(declare-fun lt!1345559 () tuple2!40292)

(assert (=> b!3867821 (= e!2392029 (= (_2!23280 lt!1345559) (_2!23279 lt!1345431)))))

(declare-fun d!1145543 () Bool)

(assert (=> d!1145543 e!2392029))

(declare-fun c!673136 () Bool)

(assert (=> d!1145543 (= c!673136 (> (size!30875 (_1!23280 lt!1345559)) 0))))

(declare-fun e!2392030 () tuple2!40292)

(assert (=> d!1145543 (= lt!1345559 e!2392030)))

(declare-fun c!673135 () Bool)

(declare-fun lt!1345557 () Option!8786)

(assert (=> d!1145543 (= c!673135 ((_ is Some!8785) lt!1345557))))

(assert (=> d!1145543 (= lt!1345557 (maxPrefix!3261 thiss!20629 rules!2768 (_2!23279 lt!1345431)))))

(assert (=> d!1145543 (= (lexList!1725 thiss!20629 rules!2768 (_2!23279 lt!1345431)) lt!1345559)))

(declare-fun b!3867822 () Bool)

(declare-fun e!2392028 () Bool)

(assert (=> b!3867822 (= e!2392029 e!2392028)))

(declare-fun res!1566499 () Bool)

(assert (=> b!3867822 (= res!1566499 (< (size!30874 (_2!23280 lt!1345559)) (size!30874 (_2!23279 lt!1345431))))))

(assert (=> b!3867822 (=> (not res!1566499) (not e!2392028))))

(declare-fun b!3867823 () Bool)

(assert (=> b!3867823 (= e!2392028 (not (isEmpty!24358 (_1!23280 lt!1345559))))))

(declare-fun b!3867824 () Bool)

(assert (=> b!3867824 (= e!2392030 (tuple2!40293 Nil!41076 (_2!23279 lt!1345431)))))

(declare-fun b!3867825 () Bool)

(declare-fun lt!1345558 () tuple2!40292)

(assert (=> b!3867825 (= e!2392030 (tuple2!40293 (Cons!41076 (_1!23279 (v!39083 lt!1345557)) (_1!23280 lt!1345558)) (_2!23280 lt!1345558)))))

(assert (=> b!3867825 (= lt!1345558 (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345557))))))

(assert (= (and d!1145543 c!673135) b!3867825))

(assert (= (and d!1145543 (not c!673135)) b!3867824))

(assert (= (and d!1145543 c!673136) b!3867822))

(assert (= (and d!1145543 (not c!673136)) b!3867821))

(assert (= (and b!3867822 res!1566499) b!3867823))

(declare-fun m!4423569 () Bool)

(assert (=> d!1145543 m!4423569))

(declare-fun m!4423571 () Bool)

(assert (=> d!1145543 m!4423571))

(declare-fun m!4423573 () Bool)

(assert (=> b!3867822 m!4423573))

(assert (=> b!3867822 m!4423259))

(declare-fun m!4423575 () Bool)

(assert (=> b!3867823 m!4423575))

(declare-fun m!4423579 () Bool)

(assert (=> b!3867825 m!4423579))

(assert (=> bm!282673 d!1145543))

(declare-fun b!3867827 () Bool)

(declare-fun e!2392032 () List!41199)

(assert (=> b!3867827 (= e!2392032 lt!1345451)))

(declare-fun lt!1345560 () List!41199)

(declare-fun e!2392033 () Bool)

(declare-fun b!3867830 () Bool)

(assert (=> b!3867830 (= e!2392033 (or (not (= lt!1345451 Nil!41075)) (= lt!1345560 lt!1345461)))))

(declare-fun b!3867828 () Bool)

(assert (=> b!3867828 (= e!2392032 (Cons!41075 (h!46495 lt!1345461) (++!10494 (t!314074 lt!1345461) lt!1345451)))))

(declare-fun d!1145545 () Bool)

(assert (=> d!1145545 e!2392033))

(declare-fun res!1566501 () Bool)

(assert (=> d!1145545 (=> (not res!1566501) (not e!2392033))))

(assert (=> d!1145545 (= res!1566501 (= (content!6127 lt!1345560) ((_ map or) (content!6127 lt!1345461) (content!6127 lt!1345451))))))

(assert (=> d!1145545 (= lt!1345560 e!2392032)))

(declare-fun c!673137 () Bool)

(assert (=> d!1145545 (= c!673137 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145545 (= (++!10494 lt!1345461 lt!1345451) lt!1345560)))

(declare-fun b!3867829 () Bool)

(declare-fun res!1566500 () Bool)

(assert (=> b!3867829 (=> (not res!1566500) (not e!2392033))))

(assert (=> b!3867829 (= res!1566500 (= (size!30874 lt!1345560) (+ (size!30874 lt!1345461) (size!30874 lt!1345451))))))

(assert (= (and d!1145545 c!673137) b!3867827))

(assert (= (and d!1145545 (not c!673137)) b!3867828))

(assert (= (and d!1145545 res!1566501) b!3867829))

(assert (= (and b!3867829 res!1566500) b!3867830))

(declare-fun m!4423583 () Bool)

(assert (=> b!3867828 m!4423583))

(declare-fun m!4423585 () Bool)

(assert (=> d!1145545 m!4423585))

(assert (=> d!1145545 m!4423535))

(assert (=> d!1145545 m!4423553))

(declare-fun m!4423587 () Bool)

(assert (=> b!3867829 m!4423587))

(assert (=> b!3867829 m!4423237))

(assert (=> b!3867829 m!4423557))

(assert (=> b!3867625 d!1145545))

(declare-fun d!1145549 () Bool)

(declare-fun lt!1345563 () List!41199)

(assert (=> d!1145549 (= (++!10494 lt!1345461 lt!1345563) prefix!426)))

(declare-fun e!2392039 () List!41199)

(assert (=> d!1145549 (= lt!1345563 e!2392039)))

(declare-fun c!673140 () Bool)

(assert (=> d!1145549 (= c!673140 ((_ is Cons!41075) lt!1345461))))

(assert (=> d!1145549 (>= (size!30874 prefix!426) (size!30874 lt!1345461))))

(assert (=> d!1145549 (= (getSuffix!1922 prefix!426 lt!1345461) lt!1345563)))

(declare-fun b!3867841 () Bool)

(assert (=> b!3867841 (= e!2392039 (getSuffix!1922 (tail!5896 prefix!426) (t!314074 lt!1345461)))))

(declare-fun b!3867842 () Bool)

(assert (=> b!3867842 (= e!2392039 prefix!426)))

(assert (= (and d!1145549 c!673140) b!3867841))

(assert (= (and d!1145549 (not c!673140)) b!3867842))

(declare-fun m!4423595 () Bool)

(assert (=> d!1145549 m!4423595))

(assert (=> d!1145549 m!4423301))

(assert (=> d!1145549 m!4423237))

(declare-fun m!4423597 () Bool)

(assert (=> b!3867841 m!4423597))

(assert (=> b!3867841 m!4423597))

(declare-fun m!4423599 () Bool)

(assert (=> b!3867841 m!4423599))

(assert (=> b!3867625 d!1145549))

(declare-fun d!1145555 () Bool)

(assert (=> d!1145555 (= (isEmpty!24359 prefix!426) ((_ is Nil!41075) prefix!426))))

(assert (=> b!3867604 d!1145555))

(declare-fun d!1145557 () Bool)

(declare-fun e!2392042 () Bool)

(assert (=> d!1145557 e!2392042))

(declare-fun res!1566509 () Bool)

(assert (=> d!1145557 (=> res!1566509 e!2392042)))

(declare-fun lt!1345564 () Bool)

(assert (=> d!1145557 (= res!1566509 (not lt!1345564))))

(declare-fun e!2392040 () Bool)

(assert (=> d!1145557 (= lt!1345564 e!2392040)))

(declare-fun res!1566510 () Bool)

(assert (=> d!1145557 (=> res!1566510 e!2392040)))

(assert (=> d!1145557 (= res!1566510 ((_ is Nil!41075) lt!1345451))))

(assert (=> d!1145557 (= (isPrefix!3467 lt!1345451 lt!1345440) lt!1345564)))

(declare-fun b!3867843 () Bool)

(declare-fun e!2392041 () Bool)

(assert (=> b!3867843 (= e!2392040 e!2392041)))

(declare-fun res!1566508 () Bool)

(assert (=> b!3867843 (=> (not res!1566508) (not e!2392041))))

(assert (=> b!3867843 (= res!1566508 (not ((_ is Nil!41075) lt!1345440)))))

(declare-fun b!3867846 () Bool)

(assert (=> b!3867846 (= e!2392042 (>= (size!30874 lt!1345440) (size!30874 lt!1345451)))))

(declare-fun b!3867845 () Bool)

(assert (=> b!3867845 (= e!2392041 (isPrefix!3467 (tail!5896 lt!1345451) (tail!5896 lt!1345440)))))

(declare-fun b!3867844 () Bool)

(declare-fun res!1566511 () Bool)

(assert (=> b!3867844 (=> (not res!1566511) (not e!2392041))))

(assert (=> b!3867844 (= res!1566511 (= (head!8179 lt!1345451) (head!8179 lt!1345440)))))

(assert (= (and d!1145557 (not res!1566510)) b!3867843))

(assert (= (and b!3867843 res!1566508) b!3867844))

(assert (= (and b!3867844 res!1566511) b!3867845))

(assert (= (and d!1145557 (not res!1566509)) b!3867846))

(assert (=> b!3867846 m!4423541))

(assert (=> b!3867846 m!4423557))

(declare-fun m!4423601 () Bool)

(assert (=> b!3867845 m!4423601))

(declare-fun m!4423603 () Bool)

(assert (=> b!3867845 m!4423603))

(assert (=> b!3867845 m!4423601))

(assert (=> b!3867845 m!4423603))

(declare-fun m!4423605 () Bool)

(assert (=> b!3867845 m!4423605))

(declare-fun m!4423607 () Bool)

(assert (=> b!3867844 m!4423607))

(declare-fun m!4423609 () Bool)

(assert (=> b!3867844 m!4423609))

(assert (=> b!3867605 d!1145557))

(declare-fun d!1145559 () Bool)

(assert (=> d!1145559 (isPrefix!3467 lt!1345451 (++!10494 lt!1345451 suffix!1176))))

(declare-fun lt!1345565 () Unit!58840)

(assert (=> d!1145559 (= lt!1345565 (choose!22804 lt!1345451 suffix!1176))))

(assert (=> d!1145559 (= (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345451 suffix!1176) lt!1345565)))

(declare-fun bs!583326 () Bool)

(assert (= bs!583326 d!1145559))

(assert (=> bs!583326 m!4423207))

(assert (=> bs!583326 m!4423207))

(declare-fun m!4423611 () Bool)

(assert (=> bs!583326 m!4423611))

(declare-fun m!4423613 () Bool)

(assert (=> bs!583326 m!4423613))

(assert (=> b!3867605 d!1145559))

(declare-fun b!3867858 () Bool)

(declare-fun e!2392049 () Bool)

(declare-fun inv!17 (TokenValue!6598) Bool)

(assert (=> b!3867858 (= e!2392049 (inv!17 (value!202122 (h!46496 prefixTokens!80))))))

(declare-fun b!3867859 () Bool)

(declare-fun e!2392051 () Bool)

(assert (=> b!3867859 (= e!2392051 e!2392049)))

(declare-fun c!673146 () Bool)

(assert (=> b!3867859 (= c!673146 ((_ is IntegerValue!19795) (value!202122 (h!46496 prefixTokens!80))))))

(declare-fun b!3867860 () Bool)

(declare-fun inv!16 (TokenValue!6598) Bool)

(assert (=> b!3867860 (= e!2392051 (inv!16 (value!202122 (h!46496 prefixTokens!80))))))

(declare-fun b!3867861 () Bool)

(declare-fun e!2392050 () Bool)

(declare-fun inv!15 (TokenValue!6598) Bool)

(assert (=> b!3867861 (= e!2392050 (inv!15 (value!202122 (h!46496 prefixTokens!80))))))

(declare-fun b!3867857 () Bool)

(declare-fun res!1566514 () Bool)

(assert (=> b!3867857 (=> res!1566514 e!2392050)))

(assert (=> b!3867857 (= res!1566514 (not ((_ is IntegerValue!19796) (value!202122 (h!46496 prefixTokens!80)))))))

(assert (=> b!3867857 (= e!2392049 e!2392050)))

(declare-fun d!1145561 () Bool)

(declare-fun c!673145 () Bool)

(assert (=> d!1145561 (= c!673145 ((_ is IntegerValue!19794) (value!202122 (h!46496 prefixTokens!80))))))

(assert (=> d!1145561 (= (inv!21 (value!202122 (h!46496 prefixTokens!80))) e!2392051)))

(assert (= (and d!1145561 c!673145) b!3867860))

(assert (= (and d!1145561 (not c!673145)) b!3867859))

(assert (= (and b!3867859 c!673146) b!3867858))

(assert (= (and b!3867859 (not c!673146)) b!3867857))

(assert (= (and b!3867857 (not res!1566514)) b!3867861))

(declare-fun m!4423623 () Bool)

(assert (=> b!3867858 m!4423623))

(declare-fun m!4423625 () Bool)

(assert (=> b!3867860 m!4423625))

(declare-fun m!4423627 () Bool)

(assert (=> b!3867861 m!4423627))

(assert (=> b!3867627 d!1145561))

(declare-fun d!1145567 () Bool)

(assert (=> d!1145567 (isPrefix!3467 prefix!426 (++!10494 prefix!426 suffix!1176))))

(declare-fun lt!1345572 () Unit!58840)

(assert (=> d!1145567 (= lt!1345572 (choose!22804 prefix!426 suffix!1176))))

(assert (=> d!1145567 (= (lemmaConcatTwoListThenFirstIsPrefix!2330 prefix!426 suffix!1176) lt!1345572)))

(declare-fun bs!583329 () Bool)

(assert (= bs!583329 d!1145567))

(assert (=> bs!583329 m!4423285))

(assert (=> bs!583329 m!4423285))

(declare-fun m!4423629 () Bool)

(assert (=> bs!583329 m!4423629))

(declare-fun m!4423631 () Bool)

(assert (=> bs!583329 m!4423631))

(assert (=> b!3867606 d!1145567))

(declare-fun d!1145569 () Bool)

(declare-fun e!2392054 () Bool)

(assert (=> d!1145569 e!2392054))

(declare-fun res!1566516 () Bool)

(assert (=> d!1145569 (=> res!1566516 e!2392054)))

(declare-fun lt!1345575 () Bool)

(assert (=> d!1145569 (= res!1566516 (not lt!1345575))))

(declare-fun e!2392052 () Bool)

(assert (=> d!1145569 (= lt!1345575 e!2392052)))

(declare-fun res!1566517 () Bool)

(assert (=> d!1145569 (=> res!1566517 e!2392052)))

(assert (=> d!1145569 (= res!1566517 ((_ is Nil!41075) prefix!426))))

(assert (=> d!1145569 (= (isPrefix!3467 prefix!426 lt!1345445) lt!1345575)))

(declare-fun b!3867862 () Bool)

(declare-fun e!2392053 () Bool)

(assert (=> b!3867862 (= e!2392052 e!2392053)))

(declare-fun res!1566515 () Bool)

(assert (=> b!3867862 (=> (not res!1566515) (not e!2392053))))

(assert (=> b!3867862 (= res!1566515 (not ((_ is Nil!41075) lt!1345445)))))

(declare-fun b!3867865 () Bool)

(assert (=> b!3867865 (= e!2392054 (>= (size!30874 lt!1345445) (size!30874 prefix!426)))))

(declare-fun b!3867864 () Bool)

(assert (=> b!3867864 (= e!2392053 (isPrefix!3467 (tail!5896 prefix!426) (tail!5896 lt!1345445)))))

(declare-fun b!3867863 () Bool)

(declare-fun res!1566518 () Bool)

(assert (=> b!3867863 (=> (not res!1566518) (not e!2392053))))

(assert (=> b!3867863 (= res!1566518 (= (head!8179 prefix!426) (head!8179 lt!1345445)))))

(assert (= (and d!1145569 (not res!1566517)) b!3867862))

(assert (= (and b!3867862 res!1566515) b!3867863))

(assert (= (and b!3867863 res!1566518) b!3867864))

(assert (= (and d!1145569 (not res!1566516)) b!3867865))

(assert (=> b!3867865 m!4423253))

(assert (=> b!3867865 m!4423301))

(assert (=> b!3867864 m!4423597))

(declare-fun m!4423633 () Bool)

(assert (=> b!3867864 m!4423633))

(assert (=> b!3867864 m!4423597))

(assert (=> b!3867864 m!4423633))

(declare-fun m!4423635 () Bool)

(assert (=> b!3867864 m!4423635))

(declare-fun m!4423637 () Bool)

(assert (=> b!3867863 m!4423637))

(declare-fun m!4423639 () Bool)

(assert (=> b!3867863 m!4423639))

(assert (=> b!3867606 d!1145569))

(declare-fun d!1145571 () Bool)

(assert (=> d!1145571 (= lt!1345461 prefix!426)))

(declare-fun lt!1345579 () Unit!58840)

(declare-fun choose!22812 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> d!1145571 (= lt!1345579 (choose!22812 lt!1345461 prefix!426 lt!1345445))))

(assert (=> d!1145571 (isPrefix!3467 lt!1345461 lt!1345445)))

(assert (=> d!1145571 (= (lemmaIsPrefixSameLengthThenSameList!719 lt!1345461 prefix!426 lt!1345445) lt!1345579)))

(declare-fun bs!583331 () Bool)

(assert (= bs!583331 d!1145571))

(declare-fun m!4423647 () Bool)

(assert (=> bs!583331 m!4423647))

(assert (=> bs!583331 m!4423403))

(assert (=> b!3867606 d!1145571))

(declare-fun d!1145575 () Bool)

(assert (=> d!1145575 (= (_2!23279 (v!39083 lt!1345427)) suffix!1176)))

(declare-fun lt!1345580 () Unit!58840)

(assert (=> d!1145575 (= lt!1345580 (choose!22803 lt!1345461 (_2!23279 (v!39083 lt!1345427)) prefix!426 suffix!1176 lt!1345445))))

(assert (=> d!1145575 (isPrefix!3467 lt!1345461 lt!1345445)))

(assert (=> d!1145575 (= (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) prefix!426 suffix!1176 lt!1345445) lt!1345580)))

(declare-fun bs!583332 () Bool)

(assert (= bs!583332 d!1145575))

(declare-fun m!4423651 () Bool)

(assert (=> bs!583332 m!4423651))

(assert (=> bs!583332 m!4423403))

(assert (=> b!3867606 d!1145575))

(declare-fun d!1145579 () Bool)

(assert (=> d!1145579 (= (size!30873 (_1!23279 (v!39083 lt!1345427))) (size!30874 (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427)))))))

(declare-fun Unit!58851 () Unit!58840)

(assert (=> d!1145579 (= (lemmaCharactersSize!1029 (_1!23279 (v!39083 lt!1345427))) Unit!58851)))

(declare-fun bs!583334 () Bool)

(assert (= bs!583334 d!1145579))

(assert (=> bs!583334 m!4423251))

(assert (=> b!3867628 d!1145579))

(declare-fun d!1145583 () Bool)

(declare-fun lt!1345581 () Int)

(assert (=> d!1145583 (>= lt!1345581 0)))

(declare-fun e!2392058 () Int)

(assert (=> d!1145583 (= lt!1345581 e!2392058)))

(declare-fun c!673147 () Bool)

(assert (=> d!1145583 (= c!673147 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145583 (= (size!30874 lt!1345461) lt!1345581)))

(declare-fun b!3867868 () Bool)

(assert (=> b!3867868 (= e!2392058 0)))

(declare-fun b!3867869 () Bool)

(assert (=> b!3867869 (= e!2392058 (+ 1 (size!30874 (t!314074 lt!1345461))))))

(assert (= (and d!1145583 c!673147) b!3867868))

(assert (= (and d!1145583 (not c!673147)) b!3867869))

(declare-fun m!4423653 () Bool)

(assert (=> b!3867869 m!4423653))

(assert (=> b!3867628 d!1145583))

(declare-fun d!1145585 () Bool)

(declare-fun dynLambda!17682 (Int BalanceConc!24752) TokenValue!6598)

(assert (=> d!1145585 (= (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (seqFromList!4639 lt!1345461)) (dynLambda!17682 (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))) (seqFromList!4639 lt!1345461)))))

(declare-fun b_lambda!112991 () Bool)

(assert (=> (not b_lambda!112991) (not d!1145585)))

(declare-fun tb!224201 () Bool)

(declare-fun t!314102 () Bool)

(assert (=> (and b!3867596 (= (toValue!8796 (transformation!6368 (h!46497 rules!2768))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314102) tb!224201))

(declare-fun result!273064 () Bool)

(assert (=> tb!224201 (= result!273064 (inv!21 (dynLambda!17682 (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))) (seqFromList!4639 lt!1345461))))))

(declare-fun m!4423657 () Bool)

(assert (=> tb!224201 m!4423657))

(assert (=> d!1145585 t!314102))

(declare-fun b_and!289815 () Bool)

(assert (= b_and!289779 (and (=> t!314102 result!273064) b_and!289815)))

(declare-fun t!314104 () Bool)

(declare-fun tb!224203 () Bool)

(assert (=> (and b!3867611 (= (toValue!8796 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314104) tb!224203))

(declare-fun result!273068 () Bool)

(assert (= result!273068 result!273064))

(assert (=> d!1145585 t!314104))

(declare-fun b_and!289817 () Bool)

(assert (= b_and!289783 (and (=> t!314104 result!273068) b_and!289817)))

(declare-fun t!314106 () Bool)

(declare-fun tb!224205 () Bool)

(assert (=> (and b!3867593 (= (toValue!8796 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314106) tb!224205))

(declare-fun result!273070 () Bool)

(assert (= result!273070 result!273064))

(assert (=> d!1145585 t!314106))

(declare-fun b_and!289819 () Bool)

(assert (= b_and!289787 (and (=> t!314106 result!273070) b_and!289819)))

(assert (=> d!1145585 m!4423215))

(declare-fun m!4423659 () Bool)

(assert (=> d!1145585 m!4423659))

(assert (=> b!3867628 d!1145585))

(declare-fun d!1145589 () Bool)

(declare-fun lt!1345582 () List!41199)

(assert (=> d!1145589 (= (++!10494 lt!1345461 lt!1345582) lt!1345445)))

(declare-fun e!2392062 () List!41199)

(assert (=> d!1145589 (= lt!1345582 e!2392062)))

(declare-fun c!673148 () Bool)

(assert (=> d!1145589 (= c!673148 ((_ is Cons!41075) lt!1345461))))

(assert (=> d!1145589 (>= (size!30874 lt!1345445) (size!30874 lt!1345461))))

(assert (=> d!1145589 (= (getSuffix!1922 lt!1345445 lt!1345461) lt!1345582)))

(declare-fun b!3867872 () Bool)

(assert (=> b!3867872 (= e!2392062 (getSuffix!1922 (tail!5896 lt!1345445) (t!314074 lt!1345461)))))

(declare-fun b!3867873 () Bool)

(assert (=> b!3867873 (= e!2392062 lt!1345445)))

(assert (= (and d!1145589 c!673148) b!3867872))

(assert (= (and d!1145589 (not c!673148)) b!3867873))

(declare-fun m!4423661 () Bool)

(assert (=> d!1145589 m!4423661))

(assert (=> d!1145589 m!4423253))

(assert (=> d!1145589 m!4423237))

(assert (=> b!3867872 m!4423633))

(assert (=> b!3867872 m!4423633))

(declare-fun m!4423663 () Bool)

(assert (=> b!3867872 m!4423663))

(assert (=> b!3867628 d!1145589))

(declare-fun d!1145591 () Bool)

(assert (=> d!1145591 (= (_2!23279 (v!39083 lt!1345427)) lt!1345455)))

(declare-fun lt!1345583 () Unit!58840)

(assert (=> d!1145591 (= lt!1345583 (choose!22803 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345455 lt!1345445))))

(assert (=> d!1145591 (isPrefix!3467 lt!1345461 lt!1345445)))

(assert (=> d!1145591 (= (lemmaSamePrefixThenSameSuffix!1688 lt!1345461 (_2!23279 (v!39083 lt!1345427)) lt!1345461 lt!1345455 lt!1345445) lt!1345583)))

(declare-fun bs!583336 () Bool)

(assert (= bs!583336 d!1145591))

(declare-fun m!4423665 () Bool)

(assert (=> bs!583336 m!4423665))

(assert (=> bs!583336 m!4423403))

(assert (=> b!3867628 d!1145591))

(declare-fun d!1145593 () Bool)

(declare-fun list!15282 (Conc!12579) List!41199)

(assert (=> d!1145593 (= (list!15280 (charsOf!4196 (_1!23279 (v!39083 lt!1345427)))) (list!15282 (c!673095 (charsOf!4196 (_1!23279 (v!39083 lt!1345427))))))))

(declare-fun bs!583337 () Bool)

(assert (= bs!583337 d!1145593))

(declare-fun m!4423667 () Bool)

(assert (=> bs!583337 m!4423667))

(assert (=> b!3867628 d!1145593))

(declare-fun d!1145595 () Bool)

(declare-fun lt!1345589 () BalanceConc!24752)

(assert (=> d!1145595 (= (list!15280 lt!1345589) (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145595 (= lt!1345589 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))) (value!202122 (_1!23279 (v!39083 lt!1345427)))))))

(assert (=> d!1145595 (= (charsOf!4196 (_1!23279 (v!39083 lt!1345427))) lt!1345589)))

(declare-fun b_lambda!112993 () Bool)

(assert (=> (not b_lambda!112993) (not d!1145595)))

(declare-fun tb!224207 () Bool)

(declare-fun t!314108 () Bool)

(assert (=> (and b!3867596 (= (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314108) tb!224207))

(declare-fun b!3867886 () Bool)

(declare-fun e!2392072 () Bool)

(declare-fun tp!1172744 () Bool)

(assert (=> b!3867886 (= e!2392072 (and (inv!55234 (c!673095 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))) (value!202122 (_1!23279 (v!39083 lt!1345427)))))) tp!1172744))))

(declare-fun result!273072 () Bool)

(assert (=> tb!224207 (= result!273072 (and (inv!55235 (dynLambda!17679 (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))) (value!202122 (_1!23279 (v!39083 lt!1345427))))) e!2392072))))

(assert (= tb!224207 b!3867886))

(declare-fun m!4423681 () Bool)

(assert (=> b!3867886 m!4423681))

(declare-fun m!4423683 () Bool)

(assert (=> tb!224207 m!4423683))

(assert (=> d!1145595 t!314108))

(declare-fun b_and!289821 () Bool)

(assert (= b_and!289797 (and (=> t!314108 result!273072) b_and!289821)))

(declare-fun t!314110 () Bool)

(declare-fun tb!224209 () Bool)

(assert (=> (and b!3867611 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314110) tb!224209))

(declare-fun result!273074 () Bool)

(assert (= result!273074 result!273072))

(assert (=> d!1145595 t!314110))

(declare-fun b_and!289823 () Bool)

(assert (= b_and!289799 (and (=> t!314110 result!273074) b_and!289823)))

(declare-fun tb!224211 () Bool)

(declare-fun t!314112 () Bool)

(assert (=> (and b!3867593 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314112) tb!224211))

(declare-fun result!273076 () Bool)

(assert (= result!273076 result!273072))

(assert (=> d!1145595 t!314112))

(declare-fun b_and!289825 () Bool)

(assert (= b_and!289801 (and (=> t!314112 result!273076) b_and!289825)))

(declare-fun m!4423685 () Bool)

(assert (=> d!1145595 m!4423685))

(declare-fun m!4423687 () Bool)

(assert (=> d!1145595 m!4423687))

(assert (=> b!3867628 d!1145595))

(declare-fun b!3867887 () Bool)

(declare-fun e!2392074 () Bool)

(declare-fun lt!1345592 () tuple2!40292)

(assert (=> b!3867887 (= e!2392074 (= (_2!23280 lt!1345592) (_2!23279 (v!39083 lt!1345427))))))

(declare-fun d!1145599 () Bool)

(assert (=> d!1145599 e!2392074))

(declare-fun c!673150 () Bool)

(assert (=> d!1145599 (= c!673150 (> (size!30875 (_1!23280 lt!1345592)) 0))))

(declare-fun e!2392075 () tuple2!40292)

(assert (=> d!1145599 (= lt!1345592 e!2392075)))

(declare-fun c!673149 () Bool)

(declare-fun lt!1345590 () Option!8786)

(assert (=> d!1145599 (= c!673149 ((_ is Some!8785) lt!1345590))))

(assert (=> d!1145599 (= lt!1345590 (maxPrefix!3261 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145599 (= (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345427))) lt!1345592)))

(declare-fun b!3867888 () Bool)

(declare-fun e!2392073 () Bool)

(assert (=> b!3867888 (= e!2392074 e!2392073)))

(declare-fun res!1566531 () Bool)

(assert (=> b!3867888 (= res!1566531 (< (size!30874 (_2!23280 lt!1345592)) (size!30874 (_2!23279 (v!39083 lt!1345427)))))))

(assert (=> b!3867888 (=> (not res!1566531) (not e!2392073))))

(declare-fun b!3867889 () Bool)

(assert (=> b!3867889 (= e!2392073 (not (isEmpty!24358 (_1!23280 lt!1345592))))))

(declare-fun b!3867890 () Bool)

(assert (=> b!3867890 (= e!2392075 (tuple2!40293 Nil!41076 (_2!23279 (v!39083 lt!1345427))))))

(declare-fun b!3867891 () Bool)

(declare-fun lt!1345591 () tuple2!40292)

(assert (=> b!3867891 (= e!2392075 (tuple2!40293 (Cons!41076 (_1!23279 (v!39083 lt!1345590)) (_1!23280 lt!1345591)) (_2!23280 lt!1345591)))))

(assert (=> b!3867891 (= lt!1345591 (lexList!1725 thiss!20629 rules!2768 (_2!23279 (v!39083 lt!1345590))))))

(assert (= (and d!1145599 c!673149) b!3867891))

(assert (= (and d!1145599 (not c!673149)) b!3867890))

(assert (= (and d!1145599 c!673150) b!3867888))

(assert (= (and d!1145599 (not c!673150)) b!3867887))

(assert (= (and b!3867888 res!1566531) b!3867889))

(declare-fun m!4423689 () Bool)

(assert (=> d!1145599 m!4423689))

(declare-fun m!4423691 () Bool)

(assert (=> d!1145599 m!4423691))

(declare-fun m!4423693 () Bool)

(assert (=> b!3867888 m!4423693))

(assert (=> b!3867888 m!4423183))

(declare-fun m!4423695 () Bool)

(assert (=> b!3867889 m!4423695))

(declare-fun m!4423697 () Bool)

(assert (=> b!3867891 m!4423697))

(assert (=> b!3867628 d!1145599))

(declare-fun d!1145601 () Bool)

(assert (=> d!1145601 (isPrefix!3467 lt!1345461 (++!10494 lt!1345461 (_2!23279 (v!39083 lt!1345427))))))

(declare-fun lt!1345593 () Unit!58840)

(assert (=> d!1145601 (= lt!1345593 (choose!22804 lt!1345461 (_2!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145601 (= (lemmaConcatTwoListThenFirstIsPrefix!2330 lt!1345461 (_2!23279 (v!39083 lt!1345427))) lt!1345593)))

(declare-fun bs!583338 () Bool)

(assert (= bs!583338 d!1145601))

(assert (=> bs!583338 m!4423239))

(assert (=> bs!583338 m!4423239))

(declare-fun m!4423699 () Bool)

(assert (=> bs!583338 m!4423699))

(declare-fun m!4423701 () Bool)

(assert (=> bs!583338 m!4423701))

(assert (=> b!3867628 d!1145601))

(declare-fun d!1145603 () Bool)

(declare-fun res!1566536 () Bool)

(declare-fun e!2392078 () Bool)

(assert (=> d!1145603 (=> (not res!1566536) (not e!2392078))))

(declare-fun validRegex!5128 (Regex!11273) Bool)

(assert (=> d!1145603 (= res!1566536 (validRegex!5128 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427))))))))

(assert (=> d!1145603 (= (ruleValid!2320 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) e!2392078)))

(declare-fun b!3867896 () Bool)

(declare-fun res!1566537 () Bool)

(assert (=> b!3867896 (=> (not res!1566537) (not e!2392078))))

(declare-fun nullable!3929 (Regex!11273) Bool)

(assert (=> b!3867896 (= res!1566537 (not (nullable!3929 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))))))

(declare-fun b!3867897 () Bool)

(assert (=> b!3867897 (= e!2392078 (not (= (tag!7228 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (String!46709 ""))))))

(assert (= (and d!1145603 res!1566536) b!3867896))

(assert (= (and b!3867896 res!1566537) b!3867897))

(declare-fun m!4423703 () Bool)

(assert (=> d!1145603 m!4423703))

(declare-fun m!4423705 () Bool)

(assert (=> b!3867896 m!4423705))

(assert (=> b!3867628 d!1145603))

(declare-fun b!3867898 () Bool)

(declare-fun e!2392079 () List!41199)

(assert (=> b!3867898 (= e!2392079 (_2!23279 (v!39083 lt!1345427)))))

(declare-fun e!2392080 () Bool)

(declare-fun lt!1345594 () List!41199)

(declare-fun b!3867901 () Bool)

(assert (=> b!3867901 (= e!2392080 (or (not (= (_2!23279 (v!39083 lt!1345427)) Nil!41075)) (= lt!1345594 lt!1345461)))))

(declare-fun b!3867899 () Bool)

(assert (=> b!3867899 (= e!2392079 (Cons!41075 (h!46495 lt!1345461) (++!10494 (t!314074 lt!1345461) (_2!23279 (v!39083 lt!1345427)))))))

(declare-fun d!1145605 () Bool)

(assert (=> d!1145605 e!2392080))

(declare-fun res!1566539 () Bool)

(assert (=> d!1145605 (=> (not res!1566539) (not e!2392080))))

(assert (=> d!1145605 (= res!1566539 (= (content!6127 lt!1345594) ((_ map or) (content!6127 lt!1345461) (content!6127 (_2!23279 (v!39083 lt!1345427))))))))

(assert (=> d!1145605 (= lt!1345594 e!2392079)))

(declare-fun c!673151 () Bool)

(assert (=> d!1145605 (= c!673151 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145605 (= (++!10494 lt!1345461 (_2!23279 (v!39083 lt!1345427))) lt!1345594)))

(declare-fun b!3867900 () Bool)

(declare-fun res!1566538 () Bool)

(assert (=> b!3867900 (=> (not res!1566538) (not e!2392080))))

(assert (=> b!3867900 (= res!1566538 (= (size!30874 lt!1345594) (+ (size!30874 lt!1345461) (size!30874 (_2!23279 (v!39083 lt!1345427))))))))

(assert (= (and d!1145605 c!673151) b!3867898))

(assert (= (and d!1145605 (not c!673151)) b!3867899))

(assert (= (and d!1145605 res!1566539) b!3867900))

(assert (= (and b!3867900 res!1566538) b!3867901))

(declare-fun m!4423707 () Bool)

(assert (=> b!3867899 m!4423707))

(declare-fun m!4423709 () Bool)

(assert (=> d!1145605 m!4423709))

(assert (=> d!1145605 m!4423535))

(declare-fun m!4423711 () Bool)

(assert (=> d!1145605 m!4423711))

(declare-fun m!4423713 () Bool)

(assert (=> b!3867900 m!4423713))

(assert (=> b!3867900 m!4423237))

(assert (=> b!3867900 m!4423183))

(assert (=> b!3867628 d!1145605))

(declare-fun d!1145607 () Bool)

(declare-fun fromListB!2139 (List!41199) BalanceConc!24752)

(assert (=> d!1145607 (= (seqFromList!4639 lt!1345461) (fromListB!2139 lt!1345461))))

(declare-fun bs!583339 () Bool)

(assert (= bs!583339 d!1145607))

(declare-fun m!4423715 () Bool)

(assert (=> bs!583339 m!4423715))

(assert (=> b!3867628 d!1145607))

(declare-fun d!1145609 () Bool)

(assert (=> d!1145609 (ruleValid!2320 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))))))

(declare-fun lt!1345597 () Unit!58840)

(declare-fun choose!22814 (LexerInterface!5957 Rule!12536 List!41201) Unit!58840)

(assert (=> d!1145609 (= lt!1345597 (choose!22814 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) rules!2768))))

(assert (=> d!1145609 (contains!8280 rules!2768 (rule!9248 (_1!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145609 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1400 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) rules!2768) lt!1345597)))

(declare-fun bs!583340 () Bool)

(assert (= bs!583340 d!1145609))

(assert (=> bs!583340 m!4423225))

(declare-fun m!4423717 () Bool)

(assert (=> bs!583340 m!4423717))

(declare-fun m!4423719 () Bool)

(assert (=> bs!583340 m!4423719))

(assert (=> b!3867628 d!1145609))

(declare-fun d!1145611 () Bool)

(declare-fun e!2392083 () Bool)

(assert (=> d!1145611 e!2392083))

(declare-fun res!1566541 () Bool)

(assert (=> d!1145611 (=> res!1566541 e!2392083)))

(declare-fun lt!1345598 () Bool)

(assert (=> d!1145611 (= res!1566541 (not lt!1345598))))

(declare-fun e!2392081 () Bool)

(assert (=> d!1145611 (= lt!1345598 e!2392081)))

(declare-fun res!1566542 () Bool)

(assert (=> d!1145611 (=> res!1566542 e!2392081)))

(assert (=> d!1145611 (= res!1566542 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145611 (= (isPrefix!3467 lt!1345461 lt!1345454) lt!1345598)))

(declare-fun b!3867902 () Bool)

(declare-fun e!2392082 () Bool)

(assert (=> b!3867902 (= e!2392081 e!2392082)))

(declare-fun res!1566540 () Bool)

(assert (=> b!3867902 (=> (not res!1566540) (not e!2392082))))

(assert (=> b!3867902 (= res!1566540 (not ((_ is Nil!41075) lt!1345454)))))

(declare-fun b!3867905 () Bool)

(assert (=> b!3867905 (= e!2392083 (>= (size!30874 lt!1345454) (size!30874 lt!1345461)))))

(declare-fun b!3867904 () Bool)

(assert (=> b!3867904 (= e!2392082 (isPrefix!3467 (tail!5896 lt!1345461) (tail!5896 lt!1345454)))))

(declare-fun b!3867903 () Bool)

(declare-fun res!1566543 () Bool)

(assert (=> b!3867903 (=> (not res!1566543) (not e!2392082))))

(assert (=> b!3867903 (= res!1566543 (= (head!8179 lt!1345461) (head!8179 lt!1345454)))))

(assert (= (and d!1145611 (not res!1566542)) b!3867902))

(assert (= (and b!3867902 res!1566540) b!3867903))

(assert (= (and b!3867903 res!1566543) b!3867904))

(assert (= (and d!1145611 (not res!1566541)) b!3867905))

(declare-fun m!4423721 () Bool)

(assert (=> b!3867905 m!4423721))

(assert (=> b!3867905 m!4423237))

(assert (=> b!3867904 m!4423421))

(declare-fun m!4423723 () Bool)

(assert (=> b!3867904 m!4423723))

(assert (=> b!3867904 m!4423421))

(assert (=> b!3867904 m!4423723))

(declare-fun m!4423725 () Bool)

(assert (=> b!3867904 m!4423725))

(assert (=> b!3867903 m!4423427))

(declare-fun m!4423727 () Bool)

(assert (=> b!3867903 m!4423727))

(assert (=> b!3867628 d!1145611))

(declare-fun d!1145613 () Bool)

(assert (=> d!1145613 (= (isEmpty!24358 prefixTokens!80) ((_ is Nil!41076) prefixTokens!80))))

(assert (=> b!3867587 d!1145613))

(declare-fun b!3867906 () Bool)

(declare-fun e!2392084 () List!41199)

(assert (=> b!3867906 (= e!2392084 suffix!1176)))

(declare-fun b!3867909 () Bool)

(declare-fun lt!1345599 () List!41199)

(declare-fun e!2392085 () Bool)

(assert (=> b!3867909 (= e!2392085 (or (not (= suffix!1176 Nil!41075)) (= lt!1345599 lt!1345458)))))

(declare-fun b!3867907 () Bool)

(assert (=> b!3867907 (= e!2392084 (Cons!41075 (h!46495 lt!1345458) (++!10494 (t!314074 lt!1345458) suffix!1176)))))

(declare-fun d!1145615 () Bool)

(assert (=> d!1145615 e!2392085))

(declare-fun res!1566545 () Bool)

(assert (=> d!1145615 (=> (not res!1566545) (not e!2392085))))

(assert (=> d!1145615 (= res!1566545 (= (content!6127 lt!1345599) ((_ map or) (content!6127 lt!1345458) (content!6127 suffix!1176))))))

(assert (=> d!1145615 (= lt!1345599 e!2392084)))

(declare-fun c!673152 () Bool)

(assert (=> d!1145615 (= c!673152 ((_ is Nil!41075) lt!1345458))))

(assert (=> d!1145615 (= (++!10494 lt!1345458 suffix!1176) lt!1345599)))

(declare-fun b!3867908 () Bool)

(declare-fun res!1566544 () Bool)

(assert (=> b!3867908 (=> (not res!1566544) (not e!2392085))))

(assert (=> b!3867908 (= res!1566544 (= (size!30874 lt!1345599) (+ (size!30874 lt!1345458) (size!30874 suffix!1176))))))

(assert (= (and d!1145615 c!673152) b!3867906))

(assert (= (and d!1145615 (not c!673152)) b!3867907))

(assert (= (and d!1145615 res!1566545) b!3867908))

(assert (= (and b!3867908 res!1566544) b!3867909))

(declare-fun m!4423729 () Bool)

(assert (=> b!3867907 m!4423729))

(declare-fun m!4423731 () Bool)

(assert (=> d!1145615 m!4423731))

(declare-fun m!4423733 () Bool)

(assert (=> d!1145615 m!4423733))

(assert (=> d!1145615 m!4423349))

(declare-fun m!4423735 () Bool)

(assert (=> b!3867908 m!4423735))

(declare-fun m!4423737 () Bool)

(assert (=> b!3867908 m!4423737))

(assert (=> b!3867908 m!4423181))

(assert (=> b!3867619 d!1145615))

(declare-fun b!3867911 () Bool)

(declare-fun e!2392086 () List!41200)

(assert (=> b!3867911 (= e!2392086 (Cons!41076 (h!46496 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076)) (++!10493 (t!314075 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076)) (_1!23280 lt!1345437))))))

(declare-fun lt!1345600 () List!41200)

(declare-fun b!3867913 () Bool)

(declare-fun e!2392087 () Bool)

(assert (=> b!3867913 (= e!2392087 (or (not (= (_1!23280 lt!1345437) Nil!41076)) (= lt!1345600 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076))))))

(declare-fun d!1145617 () Bool)

(assert (=> d!1145617 e!2392087))

(declare-fun res!1566547 () Bool)

(assert (=> d!1145617 (=> (not res!1566547) (not e!2392087))))

(assert (=> d!1145617 (= res!1566547 (= (content!6126 lt!1345600) ((_ map or) (content!6126 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076)) (content!6126 (_1!23280 lt!1345437)))))))

(assert (=> d!1145617 (= lt!1345600 e!2392086)))

(declare-fun c!673153 () Bool)

(assert (=> d!1145617 (= c!673153 ((_ is Nil!41076) (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076)))))

(assert (=> d!1145617 (= (++!10493 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076) (_1!23280 lt!1345437)) lt!1345600)))

(declare-fun b!3867910 () Bool)

(assert (=> b!3867910 (= e!2392086 (_1!23280 lt!1345437))))

(declare-fun b!3867912 () Bool)

(declare-fun res!1566546 () Bool)

(assert (=> b!3867912 (=> (not res!1566546) (not e!2392087))))

(assert (=> b!3867912 (= res!1566546 (= (size!30875 lt!1345600) (+ (size!30875 (Cons!41076 (_1!23279 (v!39083 lt!1345427)) Nil!41076)) (size!30875 (_1!23280 lt!1345437)))))))

(assert (= (and d!1145617 c!673153) b!3867910))

(assert (= (and d!1145617 (not c!673153)) b!3867911))

(assert (= (and d!1145617 res!1566547) b!3867912))

(assert (= (and b!3867912 res!1566546) b!3867913))

(declare-fun m!4423739 () Bool)

(assert (=> b!3867911 m!4423739))

(declare-fun m!4423741 () Bool)

(assert (=> d!1145617 m!4423741))

(declare-fun m!4423743 () Bool)

(assert (=> d!1145617 m!4423743))

(declare-fun m!4423745 () Bool)

(assert (=> d!1145617 m!4423745))

(declare-fun m!4423747 () Bool)

(assert (=> b!3867912 m!4423747))

(declare-fun m!4423749 () Bool)

(assert (=> b!3867912 m!4423749))

(declare-fun m!4423751 () Bool)

(assert (=> b!3867912 m!4423751))

(assert (=> b!3867599 d!1145617))

(declare-fun d!1145619 () Bool)

(assert (=> d!1145619 (= (isEmpty!24360 rules!2768) ((_ is Nil!41077) rules!2768))))

(assert (=> b!3867620 d!1145619))

(declare-fun d!1145621 () Bool)

(declare-fun lt!1345601 () Int)

(assert (=> d!1145621 (>= lt!1345601 0)))

(declare-fun e!2392088 () Int)

(assert (=> d!1145621 (= lt!1345601 e!2392088)))

(declare-fun c!673154 () Bool)

(assert (=> d!1145621 (= c!673154 ((_ is Nil!41075) (_2!23279 lt!1345431)))))

(assert (=> d!1145621 (= (size!30874 (_2!23279 lt!1345431)) lt!1345601)))

(declare-fun b!3867914 () Bool)

(assert (=> b!3867914 (= e!2392088 0)))

(declare-fun b!3867915 () Bool)

(assert (=> b!3867915 (= e!2392088 (+ 1 (size!30874 (t!314074 (_2!23279 lt!1345431)))))))

(assert (= (and d!1145621 c!673154) b!3867914))

(assert (= (and d!1145621 (not c!673154)) b!3867915))

(declare-fun m!4423753 () Bool)

(assert (=> b!3867915 m!4423753))

(assert (=> b!3867600 d!1145621))

(declare-fun b!3867971 () Bool)

(declare-fun e!2392122 () Bool)

(declare-datatypes ((tuple2!40296 0))(
  ( (tuple2!40297 (_1!23282 List!41199) (_2!23282 List!41199)) )
))
(declare-fun findLongestMatchInner!1196 (Regex!11273 List!41199 Int List!41199 List!41199 Int) tuple2!40296)

(assert (=> b!3867971 (= e!2392122 (matchR!5405 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (_1!23282 (findLongestMatchInner!1196 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) Nil!41075 (size!30874 Nil!41075) lt!1345445 lt!1345445 (size!30874 lt!1345445)))))))

(declare-fun b!3867972 () Bool)

(declare-fun res!1566578 () Bool)

(declare-fun e!2392119 () Bool)

(assert (=> b!3867972 (=> (not res!1566578) (not e!2392119))))

(declare-fun lt!1345636 () Option!8786)

(assert (=> b!3867972 (= res!1566578 (< (size!30874 (_2!23279 (get!13592 lt!1345636))) (size!30874 lt!1345445)))))

(declare-fun b!3867973 () Bool)

(assert (=> b!3867973 (= e!2392119 (= (size!30873 (_1!23279 (get!13592 lt!1345636))) (size!30874 (originalCharacters!6968 (_1!23279 (get!13592 lt!1345636))))))))

(declare-fun b!3867974 () Bool)

(declare-fun res!1566575 () Bool)

(assert (=> b!3867974 (=> (not res!1566575) (not e!2392119))))

(assert (=> b!3867974 (= res!1566575 (= (++!10494 (list!15280 (charsOf!4196 (_1!23279 (get!13592 lt!1345636)))) (_2!23279 (get!13592 lt!1345636))) lt!1345445))))

(declare-fun b!3867975 () Bool)

(declare-fun res!1566576 () Bool)

(assert (=> b!3867975 (=> (not res!1566576) (not e!2392119))))

(assert (=> b!3867975 (= res!1566576 (= (value!202122 (_1!23279 (get!13592 lt!1345636))) (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (get!13592 lt!1345636)))) (seqFromList!4639 (originalCharacters!6968 (_1!23279 (get!13592 lt!1345636)))))))))

(declare-fun d!1145623 () Bool)

(declare-fun e!2392121 () Bool)

(assert (=> d!1145623 e!2392121))

(declare-fun res!1566574 () Bool)

(assert (=> d!1145623 (=> res!1566574 e!2392121)))

(assert (=> d!1145623 (= res!1566574 (isEmpty!24361 lt!1345636))))

(declare-fun e!2392120 () Option!8786)

(assert (=> d!1145623 (= lt!1345636 e!2392120)))

(declare-fun c!673170 () Bool)

(declare-fun lt!1345634 () tuple2!40296)

(assert (=> d!1145623 (= c!673170 (isEmpty!24359 (_1!23282 lt!1345634)))))

(declare-fun findLongestMatch!1109 (Regex!11273 List!41199) tuple2!40296)

(assert (=> d!1145623 (= lt!1345634 (findLongestMatch!1109 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) lt!1345445))))

(assert (=> d!1145623 (ruleValid!2320 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))))))

(assert (=> d!1145623 (= (maxPrefixOneRule!2343 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) lt!1345445) lt!1345636)))

(declare-fun b!3867976 () Bool)

(assert (=> b!3867976 (= e!2392121 e!2392119)))

(declare-fun res!1566579 () Bool)

(assert (=> b!3867976 (=> (not res!1566579) (not e!2392119))))

(assert (=> b!3867976 (= res!1566579 (matchR!5405 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (list!15280 (charsOf!4196 (_1!23279 (get!13592 lt!1345636))))))))

(declare-fun b!3867977 () Bool)

(assert (=> b!3867977 (= e!2392120 None!8785)))

(declare-fun b!3867978 () Bool)

(declare-fun res!1566573 () Bool)

(assert (=> b!3867978 (=> (not res!1566573) (not e!2392119))))

(assert (=> b!3867978 (= res!1566573 (= (rule!9248 (_1!23279 (get!13592 lt!1345636))) (rule!9248 (_1!23279 (v!39083 lt!1345427)))))))

(declare-fun b!3867979 () Bool)

(declare-fun size!30878 (BalanceConc!24752) Int)

(assert (=> b!3867979 (= e!2392120 (Some!8785 (tuple2!40291 (Token!11875 (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (seqFromList!4639 (_1!23282 lt!1345634))) (rule!9248 (_1!23279 (v!39083 lt!1345427))) (size!30878 (seqFromList!4639 (_1!23282 lt!1345634))) (_1!23282 lt!1345634)) (_2!23282 lt!1345634))))))

(declare-fun lt!1345635 () Unit!58840)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1169 (Regex!11273 List!41199) Unit!58840)

(assert (=> b!3867979 (= lt!1345635 (longestMatchIsAcceptedByMatchOrIsEmpty!1169 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) lt!1345445))))

(declare-fun res!1566577 () Bool)

(assert (=> b!3867979 (= res!1566577 (isEmpty!24359 (_1!23282 (findLongestMatchInner!1196 (regex!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) Nil!41075 (size!30874 Nil!41075) lt!1345445 lt!1345445 (size!30874 lt!1345445)))))))

(assert (=> b!3867979 (=> res!1566577 e!2392122)))

(assert (=> b!3867979 e!2392122))

(declare-fun lt!1345633 () Unit!58840)

(assert (=> b!3867979 (= lt!1345633 lt!1345635)))

(declare-fun lt!1345632 () Unit!58840)

(declare-fun lemmaSemiInverse!1702 (TokenValueInjection!12624 BalanceConc!24752) Unit!58840)

(assert (=> b!3867979 (= lt!1345632 (lemmaSemiInverse!1702 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (seqFromList!4639 (_1!23282 lt!1345634))))))

(assert (= (and d!1145623 c!673170) b!3867977))

(assert (= (and d!1145623 (not c!673170)) b!3867979))

(assert (= (and b!3867979 (not res!1566577)) b!3867971))

(assert (= (and d!1145623 (not res!1566574)) b!3867976))

(assert (= (and b!3867976 res!1566579) b!3867974))

(assert (= (and b!3867974 res!1566575) b!3867972))

(assert (= (and b!3867972 res!1566578) b!3867978))

(assert (= (and b!3867978 res!1566573) b!3867975))

(assert (= (and b!3867975 res!1566576) b!3867973))

(declare-fun m!4423809 () Bool)

(assert (=> b!3867974 m!4423809))

(declare-fun m!4423811 () Bool)

(assert (=> b!3867974 m!4423811))

(assert (=> b!3867974 m!4423811))

(declare-fun m!4423813 () Bool)

(assert (=> b!3867974 m!4423813))

(assert (=> b!3867974 m!4423813))

(declare-fun m!4423815 () Bool)

(assert (=> b!3867974 m!4423815))

(declare-fun m!4423817 () Bool)

(assert (=> b!3867979 m!4423817))

(declare-fun m!4423819 () Bool)

(assert (=> b!3867979 m!4423819))

(declare-fun m!4423821 () Bool)

(assert (=> b!3867979 m!4423821))

(declare-fun m!4423823 () Bool)

(assert (=> b!3867979 m!4423823))

(assert (=> b!3867979 m!4423819))

(declare-fun m!4423825 () Bool)

(assert (=> b!3867979 m!4423825))

(assert (=> b!3867979 m!4423819))

(declare-fun m!4423827 () Bool)

(assert (=> b!3867979 m!4423827))

(assert (=> b!3867979 m!4423819))

(declare-fun m!4423829 () Bool)

(assert (=> b!3867979 m!4423829))

(assert (=> b!3867979 m!4423253))

(assert (=> b!3867979 m!4423823))

(assert (=> b!3867979 m!4423253))

(declare-fun m!4423831 () Bool)

(assert (=> b!3867979 m!4423831))

(assert (=> b!3867978 m!4423809))

(assert (=> b!3867973 m!4423809))

(declare-fun m!4423833 () Bool)

(assert (=> b!3867973 m!4423833))

(assert (=> b!3867976 m!4423809))

(assert (=> b!3867976 m!4423811))

(assert (=> b!3867976 m!4423811))

(assert (=> b!3867976 m!4423813))

(assert (=> b!3867976 m!4423813))

(declare-fun m!4423835 () Bool)

(assert (=> b!3867976 m!4423835))

(assert (=> b!3867972 m!4423809))

(declare-fun m!4423837 () Bool)

(assert (=> b!3867972 m!4423837))

(assert (=> b!3867972 m!4423253))

(assert (=> b!3867975 m!4423809))

(declare-fun m!4423839 () Bool)

(assert (=> b!3867975 m!4423839))

(assert (=> b!3867975 m!4423839))

(declare-fun m!4423841 () Bool)

(assert (=> b!3867975 m!4423841))

(assert (=> b!3867971 m!4423823))

(assert (=> b!3867971 m!4423253))

(assert (=> b!3867971 m!4423823))

(assert (=> b!3867971 m!4423253))

(assert (=> b!3867971 m!4423831))

(declare-fun m!4423843 () Bool)

(assert (=> b!3867971 m!4423843))

(declare-fun m!4423845 () Bool)

(assert (=> d!1145623 m!4423845))

(declare-fun m!4423847 () Bool)

(assert (=> d!1145623 m!4423847))

(declare-fun m!4423849 () Bool)

(assert (=> d!1145623 m!4423849))

(assert (=> d!1145623 m!4423225))

(assert (=> b!3867600 d!1145623))

(declare-fun d!1145651 () Bool)

(assert (=> d!1145651 (= (maxPrefixOneRule!2343 thiss!20629 (rule!9248 (_1!23279 (v!39083 lt!1345427))) lt!1345445) (Some!8785 (tuple2!40291 (Token!11875 (apply!9611 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))) (seqFromList!4639 lt!1345461)) (rule!9248 (_1!23279 (v!39083 lt!1345427))) (size!30874 lt!1345461) lt!1345461) (_2!23279 (v!39083 lt!1345427)))))))

(declare-fun lt!1345639 () Unit!58840)

(declare-fun choose!22818 (LexerInterface!5957 List!41201 List!41199 List!41199 List!41199 Rule!12536) Unit!58840)

(assert (=> d!1145651 (= lt!1345639 (choose!22818 thiss!20629 rules!2768 lt!1345461 lt!1345445 (_2!23279 (v!39083 lt!1345427)) (rule!9248 (_1!23279 (v!39083 lt!1345427)))))))

(assert (=> d!1145651 (not (isEmpty!24360 rules!2768))))

(assert (=> d!1145651 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1241 thiss!20629 rules!2768 lt!1345461 lt!1345445 (_2!23279 (v!39083 lt!1345427)) (rule!9248 (_1!23279 (v!39083 lt!1345427)))) lt!1345639)))

(declare-fun bs!583342 () Bool)

(assert (= bs!583342 d!1145651))

(declare-fun m!4423851 () Bool)

(assert (=> bs!583342 m!4423851))

(assert (=> bs!583342 m!4423195))

(assert (=> bs!583342 m!4423215))

(assert (=> bs!583342 m!4423217))

(assert (=> bs!583342 m!4423257))

(assert (=> bs!583342 m!4423237))

(assert (=> bs!583342 m!4423215))

(assert (=> b!3867600 d!1145651))

(declare-fun d!1145653 () Bool)

(declare-fun lt!1345640 () Int)

(assert (=> d!1145653 (>= lt!1345640 0)))

(declare-fun e!2392123 () Int)

(assert (=> d!1145653 (= lt!1345640 e!2392123)))

(declare-fun c!673171 () Bool)

(assert (=> d!1145653 (= c!673171 ((_ is Nil!41075) lt!1345445))))

(assert (=> d!1145653 (= (size!30874 lt!1345445) lt!1345640)))

(declare-fun b!3867980 () Bool)

(assert (=> b!3867980 (= e!2392123 0)))

(declare-fun b!3867981 () Bool)

(assert (=> b!3867981 (= e!2392123 (+ 1 (size!30874 (t!314074 lt!1345445))))))

(assert (= (and d!1145653 c!673171) b!3867980))

(assert (= (and d!1145653 (not c!673171)) b!3867981))

(declare-fun m!4423853 () Bool)

(assert (=> b!3867981 m!4423853))

(assert (=> b!3867600 d!1145653))

(declare-fun d!1145655 () Bool)

(assert (=> d!1145655 (= (get!13592 lt!1345427) (v!39083 lt!1345427))))

(assert (=> b!3867600 d!1145655))

(declare-fun d!1145657 () Bool)

(assert (=> d!1145657 (= (isEmpty!24358 lt!1345428) ((_ is Nil!41076) lt!1345428))))

(assert (=> b!3867621 d!1145657))

(declare-fun d!1145659 () Bool)

(assert (=> d!1145659 (= (tail!5895 prefixTokens!80) (t!314075 prefixTokens!80))))

(assert (=> b!3867621 d!1145659))

(declare-fun d!1145661 () Bool)

(declare-fun lt!1345641 () Int)

(assert (=> d!1145661 (>= lt!1345641 0)))

(declare-fun e!2392124 () Int)

(assert (=> d!1145661 (= lt!1345641 e!2392124)))

(declare-fun c!673172 () Bool)

(assert (=> d!1145661 (= c!673172 ((_ is Nil!41075) (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427)))))))

(assert (=> d!1145661 (= (size!30874 (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427)))) lt!1345641)))

(declare-fun b!3867982 () Bool)

(assert (=> b!3867982 (= e!2392124 0)))

(declare-fun b!3867983 () Bool)

(assert (=> b!3867983 (= e!2392124 (+ 1 (size!30874 (t!314074 (originalCharacters!6968 (_1!23279 (v!39083 lt!1345427)))))))))

(assert (= (and d!1145661 c!673172) b!3867982))

(assert (= (and d!1145661 (not c!673172)) b!3867983))

(declare-fun m!4423855 () Bool)

(assert (=> b!3867983 m!4423855))

(assert (=> b!3867601 d!1145661))

(declare-fun b!3867985 () Bool)

(declare-fun e!2392125 () Bool)

(assert (=> b!3867985 (= e!2392125 (inv!17 (value!202122 (h!46496 suffixTokens!72))))))

(declare-fun b!3867986 () Bool)

(declare-fun e!2392127 () Bool)

(assert (=> b!3867986 (= e!2392127 e!2392125)))

(declare-fun c!673174 () Bool)

(assert (=> b!3867986 (= c!673174 ((_ is IntegerValue!19795) (value!202122 (h!46496 suffixTokens!72))))))

(declare-fun b!3867987 () Bool)

(assert (=> b!3867987 (= e!2392127 (inv!16 (value!202122 (h!46496 suffixTokens!72))))))

(declare-fun b!3867988 () Bool)

(declare-fun e!2392126 () Bool)

(assert (=> b!3867988 (= e!2392126 (inv!15 (value!202122 (h!46496 suffixTokens!72))))))

(declare-fun b!3867984 () Bool)

(declare-fun res!1566580 () Bool)

(assert (=> b!3867984 (=> res!1566580 e!2392126)))

(assert (=> b!3867984 (= res!1566580 (not ((_ is IntegerValue!19796) (value!202122 (h!46496 suffixTokens!72)))))))

(assert (=> b!3867984 (= e!2392125 e!2392126)))

(declare-fun d!1145663 () Bool)

(declare-fun c!673173 () Bool)

(assert (=> d!1145663 (= c!673173 ((_ is IntegerValue!19794) (value!202122 (h!46496 suffixTokens!72))))))

(assert (=> d!1145663 (= (inv!21 (value!202122 (h!46496 suffixTokens!72))) e!2392127)))

(assert (= (and d!1145663 c!673173) b!3867987))

(assert (= (and d!1145663 (not c!673173)) b!3867986))

(assert (= (and b!3867986 c!673174) b!3867985))

(assert (= (and b!3867986 (not c!673174)) b!3867984))

(assert (= (and b!3867984 (not res!1566580)) b!3867988))

(declare-fun m!4423857 () Bool)

(assert (=> b!3867985 m!4423857))

(declare-fun m!4423859 () Bool)

(assert (=> b!3867987 m!4423859))

(declare-fun m!4423861 () Bool)

(assert (=> b!3867988 m!4423861))

(assert (=> b!3867622 d!1145663))

(declare-fun d!1145665 () Bool)

(declare-fun e!2392130 () Bool)

(assert (=> d!1145665 e!2392130))

(declare-fun res!1566582 () Bool)

(assert (=> d!1145665 (=> res!1566582 e!2392130)))

(declare-fun lt!1345642 () Bool)

(assert (=> d!1145665 (= res!1566582 (not lt!1345642))))

(declare-fun e!2392128 () Bool)

(assert (=> d!1145665 (= lt!1345642 e!2392128)))

(declare-fun res!1566583 () Bool)

(assert (=> d!1145665 (=> res!1566583 e!2392128)))

(assert (=> d!1145665 (= res!1566583 ((_ is Nil!41075) lt!1345461))))

(assert (=> d!1145665 (= (isPrefix!3467 lt!1345461 prefix!426) lt!1345642)))

(declare-fun b!3867989 () Bool)

(declare-fun e!2392129 () Bool)

(assert (=> b!3867989 (= e!2392128 e!2392129)))

(declare-fun res!1566581 () Bool)

(assert (=> b!3867989 (=> (not res!1566581) (not e!2392129))))

(assert (=> b!3867989 (= res!1566581 (not ((_ is Nil!41075) prefix!426)))))

(declare-fun b!3867992 () Bool)

(assert (=> b!3867992 (= e!2392130 (>= (size!30874 prefix!426) (size!30874 lt!1345461)))))

(declare-fun b!3867991 () Bool)

(assert (=> b!3867991 (= e!2392129 (isPrefix!3467 (tail!5896 lt!1345461) (tail!5896 prefix!426)))))

(declare-fun b!3867990 () Bool)

(declare-fun res!1566584 () Bool)

(assert (=> b!3867990 (=> (not res!1566584) (not e!2392129))))

(assert (=> b!3867990 (= res!1566584 (= (head!8179 lt!1345461) (head!8179 prefix!426)))))

(assert (= (and d!1145665 (not res!1566583)) b!3867989))

(assert (= (and b!3867989 res!1566581) b!3867990))

(assert (= (and b!3867990 res!1566584) b!3867991))

(assert (= (and d!1145665 (not res!1566582)) b!3867992))

(assert (=> b!3867992 m!4423301))

(assert (=> b!3867992 m!4423237))

(assert (=> b!3867991 m!4423421))

(assert (=> b!3867991 m!4423597))

(assert (=> b!3867991 m!4423421))

(assert (=> b!3867991 m!4423597))

(declare-fun m!4423863 () Bool)

(assert (=> b!3867991 m!4423863))

(assert (=> b!3867990 m!4423427))

(assert (=> b!3867990 m!4423637))

(assert (=> b!3867602 d!1145665))

(assert (=> b!3867602 d!1145567))

(declare-fun d!1145667 () Bool)

(assert (=> d!1145667 (isPrefix!3467 lt!1345461 prefix!426)))

(declare-fun lt!1345655 () Unit!58840)

(declare-fun choose!22819 (List!41199 List!41199 List!41199) Unit!58840)

(assert (=> d!1145667 (= lt!1345655 (choose!22819 prefix!426 lt!1345461 lt!1345445))))

(assert (=> d!1145667 (isPrefix!3467 prefix!426 lt!1345445)))

(assert (=> d!1145667 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!217 prefix!426 lt!1345461 lt!1345445) lt!1345655)))

(declare-fun bs!583343 () Bool)

(assert (= bs!583343 d!1145667))

(assert (=> bs!583343 m!4423305))

(declare-fun m!4423865 () Bool)

(assert (=> bs!583343 m!4423865))

(assert (=> bs!583343 m!4423267))

(assert (=> b!3867602 d!1145667))

(declare-fun d!1145669 () Bool)

(declare-fun lt!1345656 () Int)

(assert (=> d!1145669 (>= lt!1345656 0)))

(declare-fun e!2392139 () Int)

(assert (=> d!1145669 (= lt!1345656 e!2392139)))

(declare-fun c!673177 () Bool)

(assert (=> d!1145669 (= c!673177 ((_ is Nil!41075) prefix!426))))

(assert (=> d!1145669 (= (size!30874 prefix!426) lt!1345656)))

(declare-fun b!3868011 () Bool)

(assert (=> b!3868011 (= e!2392139 0)))

(declare-fun b!3868012 () Bool)

(assert (=> b!3868012 (= e!2392139 (+ 1 (size!30874 (t!314074 prefix!426))))))

(assert (= (and d!1145669 c!673177) b!3868011))

(assert (= (and d!1145669 (not c!673177)) b!3868012))

(declare-fun m!4423867 () Bool)

(assert (=> b!3868012 m!4423867))

(assert (=> b!3867602 d!1145669))

(assert (=> b!3867602 d!1145569))

(declare-fun b!3868017 () Bool)

(declare-fun e!2392142 () Bool)

(declare-fun tp!1172747 () Bool)

(assert (=> b!3868017 (= e!2392142 (and tp_is_empty!19517 tp!1172747))))

(assert (=> b!3867624 (= tp!1172736 e!2392142)))

(assert (= (and b!3867624 ((_ is Cons!41075) (t!314074 suffix!1176))) b!3868017))

(declare-fun b!3868030 () Bool)

(declare-fun e!2392145 () Bool)

(declare-fun tp!1172759 () Bool)

(assert (=> b!3868030 (= e!2392145 tp!1172759)))

(declare-fun b!3868028 () Bool)

(assert (=> b!3868028 (= e!2392145 tp_is_empty!19517)))

(declare-fun b!3868031 () Bool)

(declare-fun tp!1172760 () Bool)

(declare-fun tp!1172762 () Bool)

(assert (=> b!3868031 (= e!2392145 (and tp!1172760 tp!1172762))))

(declare-fun b!3868029 () Bool)

(declare-fun tp!1172761 () Bool)

(declare-fun tp!1172758 () Bool)

(assert (=> b!3868029 (= e!2392145 (and tp!1172761 tp!1172758))))

(assert (=> b!3867614 (= tp!1172729 e!2392145)))

(assert (= (and b!3867614 ((_ is ElementMatch!11273) (regex!6368 (h!46497 rules!2768)))) b!3868028))

(assert (= (and b!3867614 ((_ is Concat!17872) (regex!6368 (h!46497 rules!2768)))) b!3868029))

(assert (= (and b!3867614 ((_ is Star!11273) (regex!6368 (h!46497 rules!2768)))) b!3868030))

(assert (= (and b!3867614 ((_ is Union!11273) (regex!6368 (h!46497 rules!2768)))) b!3868031))

(declare-fun b!3868032 () Bool)

(declare-fun e!2392146 () Bool)

(declare-fun tp!1172763 () Bool)

(assert (=> b!3868032 (= e!2392146 (and tp_is_empty!19517 tp!1172763))))

(assert (=> b!3867594 (= tp!1172733 e!2392146)))

(assert (= (and b!3867594 ((_ is Cons!41075) (t!314074 suffixResult!91))) b!3868032))

(declare-fun b!3868046 () Bool)

(declare-fun b_free!104329 () Bool)

(declare-fun b_next!105033 () Bool)

(assert (=> b!3868046 (= b_free!104329 (not b_next!105033))))

(declare-fun tb!224213 () Bool)

(declare-fun t!314114 () Bool)

(assert (=> (and b!3868046 (= (toValue!8796 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314114) tb!224213))

(declare-fun result!273084 () Bool)

(assert (= result!273084 result!273064))

(assert (=> d!1145585 t!314114))

(declare-fun b_and!289827 () Bool)

(declare-fun tp!1172775 () Bool)

(assert (=> b!3868046 (= tp!1172775 (and (=> t!314114 result!273084) b_and!289827))))

(declare-fun b_free!104331 () Bool)

(declare-fun b_next!105035 () Bool)

(assert (=> b!3868046 (= b_free!104331 (not b_next!105035))))

(declare-fun t!314116 () Bool)

(declare-fun tb!224215 () Bool)

(assert (=> (and b!3868046 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314116) tb!224215))

(declare-fun result!273086 () Bool)

(assert (= result!273086 result!273034))

(assert (=> b!3867678 t!314116))

(declare-fun t!314118 () Bool)

(declare-fun tb!224217 () Bool)

(assert (=> (and b!3868046 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314118) tb!224217))

(declare-fun result!273088 () Bool)

(assert (= result!273088 result!273042))

(assert (=> b!3867773 t!314118))

(declare-fun tb!224219 () Bool)

(declare-fun t!314120 () Bool)

(assert (=> (and b!3868046 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314120) tb!224219))

(declare-fun result!273090 () Bool)

(assert (= result!273090 result!273072))

(assert (=> d!1145595 t!314120))

(declare-fun b_and!289829 () Bool)

(declare-fun tp!1172776 () Bool)

(assert (=> b!3868046 (= tp!1172776 (and (=> t!314116 result!273086) (=> t!314118 result!273088) (=> t!314120 result!273090) b_and!289829))))

(declare-fun b!3868044 () Bool)

(declare-fun tp!1172777 () Bool)

(declare-fun e!2392161 () Bool)

(declare-fun e!2392162 () Bool)

(assert (=> b!3868044 (= e!2392161 (and (inv!21 (value!202122 (h!46496 (t!314075 suffixTokens!72)))) e!2392162 tp!1172777))))

(declare-fun e!2392164 () Bool)

(assert (=> b!3867616 (= tp!1172723 e!2392164)))

(declare-fun b!3868043 () Bool)

(declare-fun tp!1172774 () Bool)

(assert (=> b!3868043 (= e!2392164 (and (inv!55232 (h!46496 (t!314075 suffixTokens!72))) e!2392161 tp!1172774))))

(declare-fun b!3868045 () Bool)

(declare-fun e!2392160 () Bool)

(declare-fun tp!1172778 () Bool)

(assert (=> b!3868045 (= e!2392162 (and tp!1172778 (inv!55229 (tag!7228 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (inv!55233 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) e!2392160))))

(assert (=> b!3868046 (= e!2392160 (and tp!1172775 tp!1172776))))

(assert (= b!3868045 b!3868046))

(assert (= b!3868044 b!3868045))

(assert (= b!3868043 b!3868044))

(assert (= (and b!3867616 ((_ is Cons!41076) (t!314075 suffixTokens!72))) b!3868043))

(declare-fun m!4423869 () Bool)

(assert (=> b!3868044 m!4423869))

(declare-fun m!4423871 () Bool)

(assert (=> b!3868043 m!4423871))

(declare-fun m!4423873 () Bool)

(assert (=> b!3868045 m!4423873))

(declare-fun m!4423875 () Bool)

(assert (=> b!3868045 m!4423875))

(declare-fun b!3868056 () Bool)

(declare-fun e!2392169 () Bool)

(declare-fun tp!1172779 () Bool)

(assert (=> b!3868056 (= e!2392169 (and tp_is_empty!19517 tp!1172779))))

(assert (=> b!3867627 (= tp!1172721 e!2392169)))

(assert (= (and b!3867627 ((_ is Cons!41075) (originalCharacters!6968 (h!46496 prefixTokens!80)))) b!3868056))

(declare-fun b!3868059 () Bool)

(declare-fun e!2392170 () Bool)

(declare-fun tp!1172781 () Bool)

(assert (=> b!3868059 (= e!2392170 tp!1172781)))

(declare-fun b!3868057 () Bool)

(assert (=> b!3868057 (= e!2392170 tp_is_empty!19517)))

(declare-fun b!3868060 () Bool)

(declare-fun tp!1172782 () Bool)

(declare-fun tp!1172784 () Bool)

(assert (=> b!3868060 (= e!2392170 (and tp!1172782 tp!1172784))))

(declare-fun b!3868058 () Bool)

(declare-fun tp!1172783 () Bool)

(declare-fun tp!1172780 () Bool)

(assert (=> b!3868058 (= e!2392170 (and tp!1172783 tp!1172780))))

(assert (=> b!3867608 (= tp!1172731 e!2392170)))

(assert (= (and b!3867608 ((_ is ElementMatch!11273) (regex!6368 (rule!9248 (h!46496 prefixTokens!80))))) b!3868057))

(assert (= (and b!3867608 ((_ is Concat!17872) (regex!6368 (rule!9248 (h!46496 prefixTokens!80))))) b!3868058))

(assert (= (and b!3867608 ((_ is Star!11273) (regex!6368 (rule!9248 (h!46496 prefixTokens!80))))) b!3868059))

(assert (= (and b!3867608 ((_ is Union!11273) (regex!6368 (rule!9248 (h!46496 prefixTokens!80))))) b!3868060))

(declare-fun b!3868063 () Bool)

(declare-fun e!2392171 () Bool)

(declare-fun tp!1172786 () Bool)

(assert (=> b!3868063 (= e!2392171 tp!1172786)))

(declare-fun b!3868061 () Bool)

(assert (=> b!3868061 (= e!2392171 tp_is_empty!19517)))

(declare-fun b!3868064 () Bool)

(declare-fun tp!1172787 () Bool)

(declare-fun tp!1172789 () Bool)

(assert (=> b!3868064 (= e!2392171 (and tp!1172787 tp!1172789))))

(declare-fun b!3868062 () Bool)

(declare-fun tp!1172788 () Bool)

(declare-fun tp!1172785 () Bool)

(assert (=> b!3868062 (= e!2392171 (and tp!1172788 tp!1172785))))

(assert (=> b!3867609 (= tp!1172725 e!2392171)))

(assert (= (and b!3867609 ((_ is ElementMatch!11273) (regex!6368 (rule!9248 (h!46496 suffixTokens!72))))) b!3868061))

(assert (= (and b!3867609 ((_ is Concat!17872) (regex!6368 (rule!9248 (h!46496 suffixTokens!72))))) b!3868062))

(assert (= (and b!3867609 ((_ is Star!11273) (regex!6368 (rule!9248 (h!46496 suffixTokens!72))))) b!3868063))

(assert (= (and b!3867609 ((_ is Union!11273) (regex!6368 (rule!9248 (h!46496 suffixTokens!72))))) b!3868064))

(declare-fun b!3868068 () Bool)

(declare-fun b_free!104333 () Bool)

(declare-fun b_next!105037 () Bool)

(assert (=> b!3868068 (= b_free!104333 (not b_next!105037))))

(declare-fun t!314122 () Bool)

(declare-fun tb!224221 () Bool)

(assert (=> (and b!3868068 (= (toValue!8796 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314122) tb!224221))

(declare-fun result!273092 () Bool)

(assert (= result!273092 result!273064))

(assert (=> d!1145585 t!314122))

(declare-fun b_and!289831 () Bool)

(declare-fun tp!1172791 () Bool)

(assert (=> b!3868068 (= tp!1172791 (and (=> t!314122 result!273092) b_and!289831))))

(declare-fun b_free!104335 () Bool)

(declare-fun b_next!105039 () Bool)

(assert (=> b!3868068 (= b_free!104335 (not b_next!105039))))

(declare-fun tb!224223 () Bool)

(declare-fun t!314124 () Bool)

(assert (=> (and b!3868068 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314124) tb!224223))

(declare-fun result!273094 () Bool)

(assert (= result!273094 result!273034))

(assert (=> b!3867678 t!314124))

(declare-fun t!314126 () Bool)

(declare-fun tb!224225 () Bool)

(assert (=> (and b!3868068 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314126) tb!224225))

(declare-fun result!273096 () Bool)

(assert (= result!273096 result!273042))

(assert (=> b!3867773 t!314126))

(declare-fun t!314128 () Bool)

(declare-fun tb!224227 () Bool)

(assert (=> (and b!3868068 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314128) tb!224227))

(declare-fun result!273098 () Bool)

(assert (= result!273098 result!273072))

(assert (=> d!1145595 t!314128))

(declare-fun b_and!289833 () Bool)

(declare-fun tp!1172792 () Bool)

(assert (=> b!3868068 (= tp!1172792 (and (=> t!314124 result!273094) (=> t!314126 result!273096) (=> t!314128 result!273098) b_and!289833))))

(declare-fun b!3868066 () Bool)

(declare-fun e!2392174 () Bool)

(declare-fun e!2392175 () Bool)

(declare-fun tp!1172793 () Bool)

(assert (=> b!3868066 (= e!2392174 (and (inv!21 (value!202122 (h!46496 (t!314075 prefixTokens!80)))) e!2392175 tp!1172793))))

(declare-fun e!2392177 () Bool)

(assert (=> b!3867590 (= tp!1172730 e!2392177)))

(declare-fun b!3868065 () Bool)

(declare-fun tp!1172790 () Bool)

(assert (=> b!3868065 (= e!2392177 (and (inv!55232 (h!46496 (t!314075 prefixTokens!80))) e!2392174 tp!1172790))))

(declare-fun b!3868067 () Bool)

(declare-fun e!2392173 () Bool)

(declare-fun tp!1172794 () Bool)

(assert (=> b!3868067 (= e!2392175 (and tp!1172794 (inv!55229 (tag!7228 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (inv!55233 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) e!2392173))))

(assert (=> b!3868068 (= e!2392173 (and tp!1172791 tp!1172792))))

(assert (= b!3868067 b!3868068))

(assert (= b!3868066 b!3868067))

(assert (= b!3868065 b!3868066))

(assert (= (and b!3867590 ((_ is Cons!41076) (t!314075 prefixTokens!80))) b!3868065))

(declare-fun m!4423877 () Bool)

(assert (=> b!3868066 m!4423877))

(declare-fun m!4423879 () Bool)

(assert (=> b!3868065 m!4423879))

(declare-fun m!4423881 () Bool)

(assert (=> b!3868067 m!4423881))

(declare-fun m!4423883 () Bool)

(assert (=> b!3868067 m!4423883))

(declare-fun b!3868069 () Bool)

(declare-fun e!2392178 () Bool)

(declare-fun tp!1172795 () Bool)

(assert (=> b!3868069 (= e!2392178 (and tp_is_empty!19517 tp!1172795))))

(assert (=> b!3867622 (= tp!1172724 e!2392178)))

(assert (= (and b!3867622 ((_ is Cons!41075) (originalCharacters!6968 (h!46496 suffixTokens!72)))) b!3868069))

(declare-fun b!3868080 () Bool)

(declare-fun b_free!104337 () Bool)

(declare-fun b_next!105041 () Bool)

(assert (=> b!3868080 (= b_free!104337 (not b_next!105041))))

(declare-fun tb!224229 () Bool)

(declare-fun t!314130 () Bool)

(assert (=> (and b!3868080 (= (toValue!8796 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toValue!8796 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314130) tb!224229))

(declare-fun result!273102 () Bool)

(assert (= result!273102 result!273064))

(assert (=> d!1145585 t!314130))

(declare-fun tp!1172804 () Bool)

(declare-fun b_and!289835 () Bool)

(assert (=> b!3868080 (= tp!1172804 (and (=> t!314130 result!273102) b_and!289835))))

(declare-fun b_free!104339 () Bool)

(declare-fun b_next!105043 () Bool)

(assert (=> b!3868080 (= b_free!104339 (not b_next!105043))))

(declare-fun t!314132 () Bool)

(declare-fun tb!224231 () Bool)

(assert (=> (and b!3868080 (= (toChars!8655 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72))))) t!314132) tb!224231))

(declare-fun result!273104 () Bool)

(assert (= result!273104 result!273034))

(assert (=> b!3867678 t!314132))

(declare-fun tb!224233 () Bool)

(declare-fun t!314134 () Bool)

(assert (=> (and b!3868080 (= (toChars!8655 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80))))) t!314134) tb!224233))

(declare-fun result!273106 () Bool)

(assert (= result!273106 result!273042))

(assert (=> b!3867773 t!314134))

(declare-fun tb!224235 () Bool)

(declare-fun t!314136 () Bool)

(assert (=> (and b!3868080 (= (toChars!8655 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toChars!8655 (transformation!6368 (rule!9248 (_1!23279 (v!39083 lt!1345427)))))) t!314136) tb!224235))

(declare-fun result!273108 () Bool)

(assert (= result!273108 result!273072))

(assert (=> d!1145595 t!314136))

(declare-fun tp!1172806 () Bool)

(declare-fun b_and!289837 () Bool)

(assert (=> b!3868080 (= tp!1172806 (and (=> t!314132 result!273104) (=> t!314134 result!273106) (=> t!314136 result!273108) b_and!289837))))

(declare-fun e!2392187 () Bool)

(assert (=> b!3868080 (= e!2392187 (and tp!1172804 tp!1172806))))

(declare-fun b!3868079 () Bool)

(declare-fun tp!1172805 () Bool)

(declare-fun e!2392189 () Bool)

(assert (=> b!3868079 (= e!2392189 (and tp!1172805 (inv!55229 (tag!7228 (h!46497 (t!314076 rules!2768)))) (inv!55233 (transformation!6368 (h!46497 (t!314076 rules!2768)))) e!2392187))))

(declare-fun b!3868078 () Bool)

(declare-fun e!2392190 () Bool)

(declare-fun tp!1172807 () Bool)

(assert (=> b!3868078 (= e!2392190 (and e!2392189 tp!1172807))))

(assert (=> b!3867592 (= tp!1172732 e!2392190)))

(assert (= b!3868079 b!3868080))

(assert (= b!3868078 b!3868079))

(assert (= (and b!3867592 ((_ is Cons!41077) (t!314076 rules!2768))) b!3868078))

(declare-fun m!4423929 () Bool)

(assert (=> b!3868079 m!4423929))

(declare-fun m!4423933 () Bool)

(assert (=> b!3868079 m!4423933))

(declare-fun b!3868086 () Bool)

(declare-fun e!2392194 () Bool)

(declare-fun tp!1172808 () Bool)

(assert (=> b!3868086 (= e!2392194 (and tp_is_empty!19517 tp!1172808))))

(assert (=> b!3867603 (= tp!1172728 e!2392194)))

(assert (= (and b!3867603 ((_ is Cons!41075) (t!314074 prefix!426))) b!3868086))

(declare-fun b_lambda!112995 () Bool)

(assert (= b_lambda!112983 (or (and b!3868080 b_free!104339 (= (toChars!8655 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))))) (and b!3867596 b_free!104319 (= (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))))) (and b!3868046 b_free!104331 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))))) (and b!3867593 b_free!104327 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))))) (and b!3867611 b_free!104323) (and b!3868068 b_free!104335 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))))) b_lambda!112995)))

(declare-fun b_lambda!112997 () Bool)

(assert (= b_lambda!112985 (or (and b!3867611 b_free!104323 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 suffixTokens!72)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))))) (and b!3867596 b_free!104319 (= (toChars!8655 (transformation!6368 (h!46497 rules!2768))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))))) (and b!3868046 b_free!104331 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 suffixTokens!72))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))))) (and b!3868068 b_free!104335 (= (toChars!8655 (transformation!6368 (rule!9248 (h!46496 (t!314075 prefixTokens!80))))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))))) (and b!3867593 b_free!104327) (and b!3868080 b_free!104339 (= (toChars!8655 (transformation!6368 (h!46497 (t!314076 rules!2768)))) (toChars!8655 (transformation!6368 (rule!9248 (h!46496 prefixTokens!80)))))) b_lambda!112997)))

(check-sat (not b!3867679) (not b!3867860) (not b!3867899) (not b!3867828) (not b!3867904) (not b!3867705) (not b!3867657) (not d!1145543) (not b!3868031) (not d!1145615) (not b!3868032) (not d!1145483) (not d!1145559) (not b!3867741) (not d!1145601) (not b_lambda!112995) (not b!3867656) (not d!1145535) (not d!1145595) (not tb!224207) (not d!1145513) (not d!1145571) (not b!3867864) (not d!1145541) (not d!1145575) (not d!1145651) (not d!1145603) tp_is_empty!19517 (not b!3867908) (not tb!224201) (not b!3867773) (not b!3867900) (not b!3867669) (not d!1145477) (not b!3867841) (not b_next!105035) b_and!289829 (not b!3867822) (not b!3867865) (not b!3867979) (not b_next!105023) (not b!3867975) (not b!3868060) b_and!289823 (not d!1145537) (not b!3867858) (not d!1145525) (not b_next!105033) (not b!3867907) (not b!3867903) (not b!3868079) (not b!3867740) (not b!3867991) (not b!3867869) (not d!1145605) (not b!3867710) (not b!3867972) (not d!1145493) (not b_next!105037) (not b!3867886) (not b_next!105039) (not b!3868043) (not b!3867809) (not tb!224183) (not b!3868045) (not b!3867844) (not b!3867863) (not b!3867814) (not d!1145607) (not b!3867815) (not d!1145511) (not d!1145503) (not b!3867978) b_and!289827 (not b!3867733) (not b!3868029) b_and!289833 (not b!3867988) (not b!3867915) (not b_next!105031) (not b!3867912) (not b!3867742) (not b!3867872) (not d!1145623) (not b!3867745) (not b!3867987) (not b!3868064) b_and!289837 (not d!1145521) (not b!3867825) (not d!1145523) (not b!3867846) b_and!289817 (not b!3867644) (not b_next!105041) (not d!1145593) (not d!1145485) (not b!3867981) (not b!3867678) (not d!1145591) (not d!1145617) (not b_next!105027) (not b!3867735) (not b!3867990) (not b!3867845) (not d!1145579) (not d!1145507) (not b!3868067) (not b_next!105025) (not b!3867768) (not d!1145499) (not b!3867706) (not b!3867911) (not b!3867985) (not d!1145609) (not b!3867976) (not d!1145567) (not bm!282676) (not b!3868065) b_and!289815 b_and!289821 (not b!3868017) (not b!3868069) (not b!3867896) (not tb!224177) (not b_lambda!112997) (not b!3868044) (not b!3867775) (not b!3867707) (not b!3867737) (not b!3868058) (not b!3868063) b_and!289835 (not b!3867708) (not b!3867774) (not b_next!105029) (not b!3868012) (not b!3867631) (not b!3867888) (not b!3868078) (not d!1145515) (not b!3868062) (not b!3867668) (not b_lambda!112991) (not b_next!105021) (not d!1145489) (not b!3867704) (not b!3867829) (not d!1145481) (not d!1145667) (not d!1145487) (not b!3867684) (not b_next!105043) b_and!289831 (not b!3867861) (not b!3868086) (not d!1145599) (not b!3867974) (not b!3868066) (not b_lambda!112993) b_and!289819 (not b!3867808) (not b!3867646) (not b!3867823) (not b!3867711) (not b!3867643) (not d!1145589) (not b!3867734) (not b!3867744) (not b!3867971) (not b!3867983) b_and!289825 (not b!3867973) (not b!3868030) (not b!3868056) (not b!3867889) (not b!3868059) (not b!3867891) (not b!3867703) (not b!3867905) (not b!3867738) (not b!3867992) (not b!3867673) (not d!1145479) (not d!1145545) (not b!3867758) (not d!1145549))
(check-sat (not b_next!105033) (not b_next!105037) (not b_next!105039) b_and!289827 (not b_next!105027) (not b_next!105025) b_and!289835 (not b_next!105029) (not b_next!105021) b_and!289819 b_and!289825 (not b_next!105035) b_and!289829 (not b_next!105023) b_and!289823 b_and!289833 (not b_next!105031) b_and!289837 b_and!289817 (not b_next!105041) b_and!289815 b_and!289821 (not b_next!105043) b_and!289831)
