; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371820 () Bool)

(assert start!371820)

(declare-fun b!3954707 () Bool)

(declare-fun b_free!108933 () Bool)

(declare-fun b_next!109637 () Bool)

(assert (=> b!3954707 (= b_free!108933 (not b_next!109637))))

(declare-fun tp!1205218 () Bool)

(declare-fun b_and!303271 () Bool)

(assert (=> b!3954707 (= tp!1205218 b_and!303271)))

(declare-fun b_free!108935 () Bool)

(declare-fun b_next!109639 () Bool)

(assert (=> b!3954707 (= b_free!108935 (not b_next!109639))))

(declare-fun tp!1205210 () Bool)

(declare-fun b_and!303273 () Bool)

(assert (=> b!3954707 (= tp!1205210 b_and!303273)))

(declare-fun b!3954710 () Bool)

(declare-fun b_free!108937 () Bool)

(declare-fun b_next!109641 () Bool)

(assert (=> b!3954710 (= b_free!108937 (not b_next!109641))))

(declare-fun tp!1205226 () Bool)

(declare-fun b_and!303275 () Bool)

(assert (=> b!3954710 (= tp!1205226 b_and!303275)))

(declare-fun b_free!108939 () Bool)

(declare-fun b_next!109643 () Bool)

(assert (=> b!3954710 (= b_free!108939 (not b_next!109643))))

(declare-fun tp!1205222 () Bool)

(declare-fun b_and!303277 () Bool)

(assert (=> b!3954710 (= tp!1205222 b_and!303277)))

(declare-fun b!3954701 () Bool)

(declare-fun b_free!108941 () Bool)

(declare-fun b_next!109645 () Bool)

(assert (=> b!3954701 (= b_free!108941 (not b_next!109645))))

(declare-fun tp!1205217 () Bool)

(declare-fun b_and!303279 () Bool)

(assert (=> b!3954701 (= tp!1205217 b_and!303279)))

(declare-fun b_free!108943 () Bool)

(declare-fun b_next!109647 () Bool)

(assert (=> b!3954701 (= b_free!108943 (not b_next!109647))))

(declare-fun tp!1205213 () Bool)

(declare-fun b_and!303281 () Bool)

(assert (=> b!3954701 (= tp!1205213 b_and!303281)))

(declare-fun b!3954700 () Bool)

(declare-fun res!1600306 () Bool)

(declare-fun e!2448400 () Bool)

(assert (=> b!3954700 (=> res!1600306 e!2448400)))

(declare-datatypes ((List!42223 0))(
  ( (Nil!42099) (Cons!42099 (h!47519 (_ BitVec 16)) (t!329056 List!42223)) )
))
(declare-datatypes ((TokenValue!6826 0))(
  ( (FloatLiteralValue!13652 (text!48227 List!42223)) (TokenValueExt!6825 (__x!25869 Int)) (Broken!34130 (value!208594 List!42223)) (Object!6949) (End!6826) (Def!6826) (Underscore!6826) (Match!6826) (Else!6826) (Error!6826) (Case!6826) (If!6826) (Extends!6826) (Abstract!6826) (Class!6826) (Val!6826) (DelimiterValue!13652 (del!6886 List!42223)) (KeywordValue!6832 (value!208595 List!42223)) (CommentValue!13652 (value!208596 List!42223)) (WhitespaceValue!13652 (value!208597 List!42223)) (IndentationValue!6826 (value!208598 List!42223)) (String!47847) (Int32!6826) (Broken!34131 (value!208599 List!42223)) (Boolean!6827) (Unit!60593) (OperatorValue!6829 (op!6886 List!42223)) (IdentifierValue!13652 (value!208600 List!42223)) (IdentifierValue!13653 (value!208601 List!42223)) (WhitespaceValue!13653 (value!208602 List!42223)) (True!13652) (False!13652) (Broken!34132 (value!208603 List!42223)) (Broken!34133 (value!208604 List!42223)) (True!13653) (RightBrace!6826) (RightBracket!6826) (Colon!6826) (Null!6826) (Comma!6826) (LeftBracket!6826) (False!13653) (LeftBrace!6826) (ImaginaryLiteralValue!6826 (text!48228 List!42223)) (StringLiteralValue!20478 (value!208605 List!42223)) (EOFValue!6826 (value!208606 List!42223)) (IdentValue!6826 (value!208607 List!42223)) (DelimiterValue!13653 (value!208608 List!42223)) (DedentValue!6826 (value!208609 List!42223)) (NewLineValue!6826 (value!208610 List!42223)) (IntegerValue!20478 (value!208611 (_ BitVec 32)) (text!48229 List!42223)) (IntegerValue!20479 (value!208612 Int) (text!48230 List!42223)) (Times!6826) (Or!6826) (Equal!6826) (Minus!6826) (Broken!34134 (value!208613 List!42223)) (And!6826) (Div!6826) (LessEqual!6826) (Mod!6826) (Concat!18327) (Not!6826) (Plus!6826) (SpaceValue!6826 (value!208614 List!42223)) (IntegerValue!20480 (value!208615 Int) (text!48231 List!42223)) (StringLiteralValue!20479 (text!48232 List!42223)) (FloatLiteralValue!13653 (text!48233 List!42223)) (BytesLiteralValue!6826 (value!208616 List!42223)) (CommentValue!13653 (value!208617 List!42223)) (StringLiteralValue!20480 (value!208618 List!42223)) (ErrorTokenValue!6826 (msg!6887 List!42223)) )
))
(declare-datatypes ((C!23188 0))(
  ( (C!23189 (val!13688 Int)) )
))
(declare-datatypes ((Regex!11501 0))(
  ( (ElementMatch!11501 (c!686412 C!23188)) (Concat!18328 (regOne!23514 Regex!11501) (regTwo!23514 Regex!11501)) (EmptyExpr!11501) (Star!11501 (reg!11830 Regex!11501)) (EmptyLang!11501) (Union!11501 (regOne!23515 Regex!11501) (regTwo!23515 Regex!11501)) )
))
(declare-datatypes ((String!47848 0))(
  ( (String!47849 (value!208619 String)) )
))
(declare-datatypes ((List!42224 0))(
  ( (Nil!42100) (Cons!42100 (h!47520 C!23188) (t!329057 List!42224)) )
))
(declare-datatypes ((IArray!25619 0))(
  ( (IArray!25620 (innerList!12867 List!42224)) )
))
(declare-datatypes ((Conc!12807 0))(
  ( (Node!12807 (left!31983 Conc!12807) (right!32313 Conc!12807) (csize!25844 Int) (cheight!13018 Int)) (Leaf!19812 (xs!16113 IArray!25619) (csize!25845 Int)) (Empty!12807) )
))
(declare-datatypes ((BalanceConc!25208 0))(
  ( (BalanceConc!25209 (c!686413 Conc!12807)) )
))
(declare-datatypes ((TokenValueInjection!13080 0))(
  ( (TokenValueInjection!13081 (toValue!9072 Int) (toChars!8931 Int)) )
))
(declare-datatypes ((Rule!12992 0))(
  ( (Rule!12993 (regex!6596 Regex!11501) (tag!7456 String!47848) (isSeparator!6596 Bool) (transformation!6596 TokenValueInjection!13080)) )
))
(declare-datatypes ((Token!12330 0))(
  ( (Token!12331 (value!208620 TokenValue!6826) (rule!9566 Rule!12992) (size!31534 Int) (originalCharacters!7196 List!42224)) )
))
(declare-datatypes ((tuple2!41382 0))(
  ( (tuple2!41383 (_1!23825 Token!12330) (_2!23825 List!42224)) )
))
(declare-datatypes ((Option!9016 0))(
  ( (None!9015) (Some!9015 (v!39359 tuple2!41382)) )
))
(declare-fun lt!1382831 () Option!9016)

(declare-fun suffix!1176 () List!42224)

(declare-datatypes ((List!42225 0))(
  ( (Nil!42101) (Cons!42101 (h!47521 Token!12330) (t!329058 List!42225)) )
))
(declare-datatypes ((tuple2!41384 0))(
  ( (tuple2!41385 (_1!23826 List!42225) (_2!23826 List!42224)) )
))
(declare-fun lt!1382833 () tuple2!41384)

(assert (=> b!3954700 (= res!1600306 (or (not (= lt!1382833 (tuple2!41385 (_1!23826 lt!1382833) (_2!23826 lt!1382833)))) (= (_2!23825 (v!39359 lt!1382831)) suffix!1176)))))

(declare-fun e!2448397 () Bool)

(assert (=> b!3954701 (= e!2448397 (and tp!1205217 tp!1205213))))

(declare-fun b!3954702 () Bool)

(declare-fun e!2448382 () Bool)

(assert (=> b!3954702 (= e!2448382 (not e!2448400))))

(declare-fun res!1600309 () Bool)

(assert (=> b!3954702 (=> res!1600309 e!2448400)))

(declare-fun lt!1382830 () List!42224)

(declare-fun lt!1382832 () List!42224)

(assert (=> b!3954702 (= res!1600309 (not (= lt!1382830 lt!1382832)))))

(declare-datatypes ((LexerInterface!6185 0))(
  ( (LexerInterfaceExt!6182 (__x!25870 Int)) (Lexer!6183) )
))
(declare-fun thiss!20629 () LexerInterface!6185)

(declare-datatypes ((List!42226 0))(
  ( (Nil!42102) (Cons!42102 (h!47522 Rule!12992) (t!329059 List!42226)) )
))
(declare-fun rules!2768 () List!42226)

(declare-fun lexList!1953 (LexerInterface!6185 List!42226 List!42224) tuple2!41384)

(assert (=> b!3954702 (= lt!1382833 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun lt!1382839 () List!42224)

(declare-fun lt!1382827 () TokenValue!6826)

(declare-fun lt!1382828 () List!42224)

(declare-fun lt!1382826 () Int)

(assert (=> b!3954702 (and (= (size!31534 (_1!23825 (v!39359 lt!1382831))) lt!1382826) (= (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))) lt!1382839) (= (v!39359 lt!1382831) (tuple2!41383 (Token!12331 lt!1382827 (rule!9566 (_1!23825 (v!39359 lt!1382831))) lt!1382826 lt!1382839) lt!1382828)))))

(declare-fun size!31535 (List!42224) Int)

(assert (=> b!3954702 (= lt!1382826 (size!31535 lt!1382839))))

(declare-fun e!2448394 () Bool)

(assert (=> b!3954702 e!2448394))

(declare-fun res!1600298 () Bool)

(assert (=> b!3954702 (=> (not res!1600298) (not e!2448394))))

(assert (=> b!3954702 (= res!1600298 (= (value!208620 (_1!23825 (v!39359 lt!1382831))) lt!1382827))))

(declare-fun lt!1382843 () BalanceConc!25208)

(declare-fun apply!9827 (TokenValueInjection!13080 BalanceConc!25208) TokenValue!6826)

(assert (=> b!3954702 (= lt!1382827 (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382843))))

(declare-fun seqFromList!4855 (List!42224) BalanceConc!25208)

(assert (=> b!3954702 (= lt!1382843 (seqFromList!4855 lt!1382839))))

(assert (=> b!3954702 (= (_2!23825 (v!39359 lt!1382831)) lt!1382828)))

(declare-datatypes ((Unit!60594 0))(
  ( (Unit!60595) )
))
(declare-fun lt!1382840 () Unit!60594)

(declare-fun lemmaSamePrefixThenSameSuffix!1894 (List!42224 List!42224 List!42224 List!42224 List!42224) Unit!60594)

(assert (=> b!3954702 (= lt!1382840 (lemmaSamePrefixThenSameSuffix!1894 lt!1382839 (_2!23825 (v!39359 lt!1382831)) lt!1382839 lt!1382828 lt!1382832))))

(declare-fun getSuffix!2136 (List!42224 List!42224) List!42224)

(assert (=> b!3954702 (= lt!1382828 (getSuffix!2136 lt!1382832 lt!1382839))))

(declare-fun isPrefix!3685 (List!42224 List!42224) Bool)

(assert (=> b!3954702 (isPrefix!3685 lt!1382839 lt!1382830)))

(declare-fun ++!10949 (List!42224 List!42224) List!42224)

(assert (=> b!3954702 (= lt!1382830 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun lt!1382835 () Unit!60594)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2544 (List!42224 List!42224) Unit!60594)

(assert (=> b!3954702 (= lt!1382835 (lemmaConcatTwoListThenFirstIsPrefix!2544 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun list!15630 (BalanceConc!25208) List!42224)

(declare-fun charsOf!4414 (Token!12330) BalanceConc!25208)

(assert (=> b!3954702 (= lt!1382839 (list!15630 (charsOf!4414 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun ruleValid!2538 (LexerInterface!6185 Rule!12992) Bool)

(assert (=> b!3954702 (ruleValid!2538 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))

(declare-fun lt!1382842 () Unit!60594)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1614 (LexerInterface!6185 Rule!12992 List!42226) Unit!60594)

(assert (=> b!3954702 (= lt!1382842 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1614 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))) rules!2768))))

(declare-fun lt!1382836 () Unit!60594)

(declare-fun lemmaCharactersSize!1249 (Token!12330) Unit!60594)

(assert (=> b!3954702 (= lt!1382836 (lemmaCharactersSize!1249 (_1!23825 (v!39359 lt!1382831))))))

(declare-fun b!3954703 () Bool)

(declare-fun e!2448386 () Bool)

(declare-fun tp!1205220 () Bool)

(declare-fun e!2448373 () Bool)

(declare-fun inv!56321 (String!47848) Bool)

(declare-fun inv!56324 (TokenValueInjection!13080) Bool)

(assert (=> b!3954703 (= e!2448386 (and tp!1205220 (inv!56321 (tag!7456 (h!47522 rules!2768))) (inv!56324 (transformation!6596 (h!47522 rules!2768))) e!2448373))))

(declare-fun b!3954705 () Bool)

(declare-fun res!1600292 () Bool)

(declare-fun e!2448378 () Bool)

(assert (=> b!3954705 (=> (not res!1600292) (not e!2448378))))

(declare-fun prefixTokens!80 () List!42225)

(declare-fun isEmpty!25160 (List!42225) Bool)

(assert (=> b!3954705 (= res!1600292 (not (isEmpty!25160 prefixTokens!80)))))

(declare-fun b!3954706 () Bool)

(declare-fun e!2448379 () Bool)

(declare-fun tp!1205224 () Bool)

(declare-fun e!2448376 () Bool)

(assert (=> b!3954706 (= e!2448376 (and tp!1205224 (inv!56321 (tag!7456 (rule!9566 (h!47521 prefixTokens!80)))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) e!2448379))))

(assert (=> b!3954707 (= e!2448379 (and tp!1205218 tp!1205210))))

(declare-fun tp!1205212 () Bool)

(declare-fun b!3954708 () Bool)

(declare-fun suffixTokens!72 () List!42225)

(declare-fun e!2448380 () Bool)

(declare-fun e!2448383 () Bool)

(declare-fun inv!21 (TokenValue!6826) Bool)

(assert (=> b!3954708 (= e!2448383 (and (inv!21 (value!208620 (h!47521 suffixTokens!72))) e!2448380 tp!1205212))))

(declare-fun b!3954709 () Bool)

(declare-fun e!2448387 () Bool)

(declare-fun tp_is_empty!19973 () Bool)

(declare-fun tp!1205214 () Bool)

(assert (=> b!3954709 (= e!2448387 (and tp_is_empty!19973 tp!1205214))))

(assert (=> b!3954710 (= e!2448373 (and tp!1205226 tp!1205222))))

(declare-fun b!3954711 () Bool)

(declare-fun res!1600308 () Bool)

(assert (=> b!3954711 (=> res!1600308 e!2448400)))

(declare-fun lt!1382829 () tuple2!41384)

(declare-fun ++!10950 (List!42225 List!42225) List!42225)

(assert (=> b!3954711 (= res!1600308 (not (= lt!1382829 (tuple2!41385 (++!10950 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101) (_1!23826 lt!1382833)) (_2!23826 lt!1382833)))))))

(declare-fun b!3954712 () Bool)

(declare-fun e!2448375 () Bool)

(declare-fun tp!1205223 () Bool)

(assert (=> b!3954712 (= e!2448375 (and tp_is_empty!19973 tp!1205223))))

(declare-fun b!3954713 () Bool)

(declare-fun e!2448389 () Bool)

(declare-fun e!2448388 () Bool)

(assert (=> b!3954713 (= e!2448389 e!2448388)))

(declare-fun res!1600294 () Bool)

(assert (=> b!3954713 (=> res!1600294 e!2448388)))

(declare-fun lt!1382845 () Int)

(declare-fun lt!1382838 () Int)

(declare-fun lt!1382841 () Int)

(assert (=> b!3954713 (= res!1600294 (or (not (= (+ lt!1382838 lt!1382845) lt!1382841)) (<= lt!1382826 lt!1382838)))))

(declare-fun prefix!426 () List!42224)

(assert (=> b!3954713 (= lt!1382838 (size!31535 prefix!426))))

(declare-fun b!3954714 () Bool)

(declare-fun res!1600293 () Bool)

(assert (=> b!3954714 (=> (not res!1600293) (not e!2448378))))

(declare-fun rulesInvariant!5528 (LexerInterface!6185 List!42226) Bool)

(assert (=> b!3954714 (= res!1600293 (rulesInvariant!5528 thiss!20629 rules!2768))))

(declare-fun b!3954715 () Bool)

(declare-fun res!1600297 () Bool)

(assert (=> b!3954715 (=> res!1600297 e!2448388)))

(declare-fun isEmpty!25161 (List!42224) Bool)

(assert (=> b!3954715 (= res!1600297 (isEmpty!25161 lt!1382839))))

(declare-fun b!3954716 () Bool)

(declare-fun e!2448393 () Bool)

(assert (=> b!3954716 (= e!2448393 e!2448389)))

(declare-fun res!1600295 () Bool)

(assert (=> b!3954716 (=> res!1600295 e!2448389)))

(declare-fun lt!1382844 () Int)

(assert (=> b!3954716 (= res!1600295 (not (= (+ lt!1382826 lt!1382844) lt!1382841)))))

(assert (=> b!3954716 (= lt!1382841 (size!31535 lt!1382832))))

(declare-fun tp!1205219 () Bool)

(declare-fun b!3954704 () Bool)

(assert (=> b!3954704 (= e!2448380 (and tp!1205219 (inv!56321 (tag!7456 (rule!9566 (h!47521 suffixTokens!72)))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) e!2448397))))

(declare-fun res!1600301 () Bool)

(assert (=> start!371820 (=> (not res!1600301) (not e!2448378))))

(get-info :version)

(assert (=> start!371820 (= res!1600301 ((_ is Lexer!6183) thiss!20629))))

(assert (=> start!371820 e!2448378))

(assert (=> start!371820 e!2448375))

(assert (=> start!371820 true))

(assert (=> start!371820 e!2448387))

(declare-fun e!2448395 () Bool)

(assert (=> start!371820 e!2448395))

(declare-fun e!2448374 () Bool)

(assert (=> start!371820 e!2448374))

(declare-fun e!2448392 () Bool)

(assert (=> start!371820 e!2448392))

(declare-fun e!2448385 () Bool)

(assert (=> start!371820 e!2448385))

(declare-fun tp!1205225 () Bool)

(declare-fun b!3954717 () Bool)

(declare-fun inv!56325 (Token!12330) Bool)

(assert (=> b!3954717 (= e!2448392 (and (inv!56325 (h!47521 suffixTokens!72)) e!2448383 tp!1205225))))

(declare-fun b!3954718 () Bool)

(declare-fun e!2448391 () Bool)

(assert (=> b!3954718 (= e!2448388 e!2448391)))

(declare-fun res!1600310 () Bool)

(assert (=> b!3954718 (=> res!1600310 e!2448391)))

(assert (=> b!3954718 (= res!1600310 (not (= lt!1382831 (Some!9015 (tuple2!41383 (Token!12331 lt!1382827 (rule!9566 (_1!23825 (v!39359 lt!1382831))) lt!1382826 lt!1382839) (_2!23825 (v!39359 lt!1382831)))))))))

(declare-fun lt!1382834 () Unit!60594)

(declare-fun lemmaSemiInverse!1794 (TokenValueInjection!13080 BalanceConc!25208) Unit!60594)

(assert (=> b!3954718 (= lt!1382834 (lemmaSemiInverse!1794 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382843))))

(declare-fun b!3954719 () Bool)

(declare-fun e!2448390 () Bool)

(declare-fun tp!1205215 () Bool)

(assert (=> b!3954719 (= e!2448390 (and (inv!21 (value!208620 (h!47521 prefixTokens!80))) e!2448376 tp!1205215))))

(declare-fun b!3954720 () Bool)

(declare-fun e!2448377 () Bool)

(assert (=> b!3954720 (= e!2448378 e!2448377)))

(declare-fun res!1600303 () Bool)

(assert (=> b!3954720 (=> (not res!1600303) (not e!2448377))))

(declare-fun suffixResult!91 () List!42224)

(declare-fun lt!1382837 () List!42225)

(assert (=> b!3954720 (= res!1600303 (= lt!1382829 (tuple2!41385 lt!1382837 suffixResult!91)))))

(assert (=> b!3954720 (= lt!1382829 (lexList!1953 thiss!20629 rules!2768 lt!1382832))))

(assert (=> b!3954720 (= lt!1382837 (++!10950 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3954720 (= lt!1382832 (++!10949 prefix!426 suffix!1176))))

(declare-fun b!3954721 () Bool)

(assert (=> b!3954721 (= e!2448377 e!2448382)))

(declare-fun res!1600300 () Bool)

(assert (=> b!3954721 (=> (not res!1600300) (not e!2448382))))

(assert (=> b!3954721 (= res!1600300 ((_ is Some!9015) lt!1382831))))

(declare-fun maxPrefix!3489 (LexerInterface!6185 List!42226 List!42224) Option!9016)

(assert (=> b!3954721 (= lt!1382831 (maxPrefix!3489 thiss!20629 rules!2768 lt!1382832))))

(declare-fun tp!1205211 () Bool)

(declare-fun b!3954722 () Bool)

(assert (=> b!3954722 (= e!2448374 (and (inv!56325 (h!47521 prefixTokens!80)) e!2448390 tp!1205211))))

(declare-fun b!3954723 () Bool)

(assert (=> b!3954723 (= e!2448400 e!2448393)))

(declare-fun res!1600307 () Bool)

(assert (=> b!3954723 (=> res!1600307 e!2448393)))

(assert (=> b!3954723 (= res!1600307 (>= lt!1382844 lt!1382845))))

(assert (=> b!3954723 (= lt!1382845 (size!31535 suffix!1176))))

(assert (=> b!3954723 (= lt!1382844 (size!31535 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun b!3954724 () Bool)

(declare-fun tp!1205216 () Bool)

(assert (=> b!3954724 (= e!2448385 (and tp_is_empty!19973 tp!1205216))))

(declare-fun b!3954725 () Bool)

(declare-fun matchR!5522 (Regex!11501 List!42224) Bool)

(assert (=> b!3954725 (= e!2448391 (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382839))))

(declare-fun b!3954726 () Bool)

(declare-fun res!1600304 () Bool)

(assert (=> b!3954726 (=> res!1600304 e!2448388)))

(assert (=> b!3954726 (= res!1600304 (not (= lt!1382832 lt!1382830)))))

(declare-fun b!3954727 () Bool)

(declare-fun res!1600296 () Bool)

(assert (=> b!3954727 (=> (not res!1600296) (not e!2448378))))

(assert (=> b!3954727 (= res!1600296 (not (isEmpty!25161 prefix!426)))))

(declare-fun b!3954728 () Bool)

(declare-fun res!1600299 () Bool)

(assert (=> b!3954728 (=> res!1600299 e!2448388)))

(declare-fun contains!8418 (List!42226 Rule!12992) Bool)

(assert (=> b!3954728 (= res!1600299 (not (contains!8418 rules!2768 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3954729 () Bool)

(declare-fun res!1600302 () Bool)

(assert (=> b!3954729 (=> (not res!1600302) (not e!2448378))))

(declare-fun isEmpty!25162 (List!42226) Bool)

(assert (=> b!3954729 (= res!1600302 (not (isEmpty!25162 rules!2768)))))

(declare-fun b!3954730 () Bool)

(declare-fun res!1600305 () Bool)

(assert (=> b!3954730 (=> (not res!1600305) (not e!2448377))))

(assert (=> b!3954730 (= res!1600305 (= (lexList!1953 thiss!20629 rules!2768 suffix!1176) (tuple2!41385 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3954731 () Bool)

(declare-fun tp!1205221 () Bool)

(assert (=> b!3954731 (= e!2448395 (and e!2448386 tp!1205221))))

(declare-fun b!3954732 () Bool)

(assert (=> b!3954732 (= e!2448394 (= (size!31534 (_1!23825 (v!39359 lt!1382831))) (size!31535 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))))))))

(assert (= (and start!371820 res!1600301) b!3954729))

(assert (= (and b!3954729 res!1600302) b!3954714))

(assert (= (and b!3954714 res!1600293) b!3954705))

(assert (= (and b!3954705 res!1600292) b!3954727))

(assert (= (and b!3954727 res!1600296) b!3954720))

(assert (= (and b!3954720 res!1600303) b!3954730))

(assert (= (and b!3954730 res!1600305) b!3954721))

(assert (= (and b!3954721 res!1600300) b!3954702))

(assert (= (and b!3954702 res!1600298) b!3954732))

(assert (= (and b!3954702 (not res!1600309)) b!3954711))

(assert (= (and b!3954711 (not res!1600308)) b!3954700))

(assert (= (and b!3954700 (not res!1600306)) b!3954723))

(assert (= (and b!3954723 (not res!1600307)) b!3954716))

(assert (= (and b!3954716 (not res!1600295)) b!3954713))

(assert (= (and b!3954713 (not res!1600294)) b!3954728))

(assert (= (and b!3954728 (not res!1600299)) b!3954726))

(assert (= (and b!3954726 (not res!1600304)) b!3954715))

(assert (= (and b!3954715 (not res!1600297)) b!3954718))

(assert (= (and b!3954718 (not res!1600310)) b!3954725))

(assert (= (and start!371820 ((_ is Cons!42100) suffixResult!91)) b!3954712))

(assert (= (and start!371820 ((_ is Cons!42100) suffix!1176)) b!3954709))

(assert (= b!3954703 b!3954710))

(assert (= b!3954731 b!3954703))

(assert (= (and start!371820 ((_ is Cons!42102) rules!2768)) b!3954731))

(assert (= b!3954706 b!3954707))

(assert (= b!3954719 b!3954706))

(assert (= b!3954722 b!3954719))

(assert (= (and start!371820 ((_ is Cons!42101) prefixTokens!80)) b!3954722))

(assert (= b!3954704 b!3954701))

(assert (= b!3954708 b!3954704))

(assert (= b!3954717 b!3954708))

(assert (= (and start!371820 ((_ is Cons!42101) suffixTokens!72)) b!3954717))

(assert (= (and start!371820 ((_ is Cons!42100) prefix!426)) b!3954724))

(declare-fun m!4523411 () Bool)

(assert (=> b!3954713 m!4523411))

(declare-fun m!4523413 () Bool)

(assert (=> b!3954714 m!4523413))

(declare-fun m!4523415 () Bool)

(assert (=> b!3954716 m!4523415))

(declare-fun m!4523417 () Bool)

(assert (=> b!3954711 m!4523417))

(declare-fun m!4523419 () Bool)

(assert (=> b!3954730 m!4523419))

(declare-fun m!4523421 () Bool)

(assert (=> b!3954706 m!4523421))

(declare-fun m!4523423 () Bool)

(assert (=> b!3954706 m!4523423))

(declare-fun m!4523425 () Bool)

(assert (=> b!3954721 m!4523425))

(declare-fun m!4523427 () Bool)

(assert (=> b!3954727 m!4523427))

(declare-fun m!4523429 () Bool)

(assert (=> b!3954717 m!4523429))

(declare-fun m!4523431 () Bool)

(assert (=> b!3954718 m!4523431))

(declare-fun m!4523433 () Bool)

(assert (=> b!3954720 m!4523433))

(declare-fun m!4523435 () Bool)

(assert (=> b!3954720 m!4523435))

(declare-fun m!4523437 () Bool)

(assert (=> b!3954720 m!4523437))

(declare-fun m!4523439 () Bool)

(assert (=> b!3954729 m!4523439))

(declare-fun m!4523441 () Bool)

(assert (=> b!3954705 m!4523441))

(declare-fun m!4523443 () Bool)

(assert (=> b!3954728 m!4523443))

(declare-fun m!4523445 () Bool)

(assert (=> b!3954704 m!4523445))

(declare-fun m!4523447 () Bool)

(assert (=> b!3954704 m!4523447))

(declare-fun m!4523449 () Bool)

(assert (=> b!3954703 m!4523449))

(declare-fun m!4523451 () Bool)

(assert (=> b!3954703 m!4523451))

(declare-fun m!4523453 () Bool)

(assert (=> b!3954723 m!4523453))

(declare-fun m!4523455 () Bool)

(assert (=> b!3954723 m!4523455))

(declare-fun m!4523457 () Bool)

(assert (=> b!3954702 m!4523457))

(declare-fun m!4523459 () Bool)

(assert (=> b!3954702 m!4523459))

(assert (=> b!3954702 m!4523459))

(declare-fun m!4523461 () Bool)

(assert (=> b!3954702 m!4523461))

(declare-fun m!4523463 () Bool)

(assert (=> b!3954702 m!4523463))

(declare-fun m!4523465 () Bool)

(assert (=> b!3954702 m!4523465))

(declare-fun m!4523467 () Bool)

(assert (=> b!3954702 m!4523467))

(declare-fun m!4523469 () Bool)

(assert (=> b!3954702 m!4523469))

(declare-fun m!4523471 () Bool)

(assert (=> b!3954702 m!4523471))

(declare-fun m!4523473 () Bool)

(assert (=> b!3954702 m!4523473))

(declare-fun m!4523475 () Bool)

(assert (=> b!3954702 m!4523475))

(declare-fun m!4523477 () Bool)

(assert (=> b!3954702 m!4523477))

(declare-fun m!4523479 () Bool)

(assert (=> b!3954702 m!4523479))

(declare-fun m!4523481 () Bool)

(assert (=> b!3954702 m!4523481))

(declare-fun m!4523483 () Bool)

(assert (=> b!3954702 m!4523483))

(declare-fun m!4523485 () Bool)

(assert (=> b!3954722 m!4523485))

(declare-fun m!4523487 () Bool)

(assert (=> b!3954719 m!4523487))

(declare-fun m!4523489 () Bool)

(assert (=> b!3954708 m!4523489))

(declare-fun m!4523491 () Bool)

(assert (=> b!3954732 m!4523491))

(declare-fun m!4523493 () Bool)

(assert (=> b!3954725 m!4523493))

(declare-fun m!4523495 () Bool)

(assert (=> b!3954715 m!4523495))

(check-sat (not b_next!109647) (not b_next!109637) (not b!3954724) (not b!3954712) b_and!303273 (not b_next!109641) (not b!3954713) (not b!3954725) (not b!3954730) b_and!303279 (not b_next!109639) b_and!303271 (not b!3954705) b_and!303277 (not b!3954703) (not b!3954714) (not b!3954708) (not b!3954716) (not b!3954709) b_and!303281 (not b!3954729) (not b!3954720) (not b!3954719) tp_is_empty!19973 b_and!303275 (not b!3954717) (not b!3954721) (not b!3954731) (not b_next!109645) (not b_next!109643) (not b!3954702) (not b!3954711) (not b!3954732) (not b!3954728) (not b!3954706) (not b!3954722) (not b!3954718) (not b!3954727) (not b!3954715) (not b!3954723) (not b!3954704))
(check-sat b_and!303281 (not b_next!109647) (not b_next!109637) b_and!303273 (not b_next!109641) b_and!303275 b_and!303279 (not b_next!109639) (not b_next!109645) (not b_next!109643) b_and!303271 b_and!303277)
(get-model)

(declare-fun b!3954842 () Bool)

(declare-fun e!2448460 () Bool)

(assert (=> b!3954842 (= e!2448460 true)))

(declare-fun d!1172205 () Bool)

(assert (=> d!1172205 e!2448460))

(assert (= d!1172205 b!3954842))

(declare-fun order!22389 () Int)

(declare-fun order!22391 () Int)

(declare-fun lambda!126769 () Int)

(declare-fun dynLambda!18000 (Int Int) Int)

(declare-fun dynLambda!18001 (Int Int) Int)

(assert (=> b!3954842 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (dynLambda!18001 order!22391 lambda!126769))))

(declare-fun order!22393 () Int)

(declare-fun dynLambda!18002 (Int Int) Int)

(assert (=> b!3954842 (< (dynLambda!18002 order!22393 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (dynLambda!18001 order!22391 lambda!126769))))

(declare-fun dynLambda!18003 (Int TokenValue!6826) BalanceConc!25208)

(declare-fun dynLambda!18004 (Int BalanceConc!25208) TokenValue!6826)

(assert (=> d!1172205 (= (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))) (list!15630 lt!1382843))))

(declare-fun lt!1382874 () Unit!60594)

(declare-fun ForallOf!798 (Int BalanceConc!25208) Unit!60594)

(assert (=> d!1172205 (= lt!1382874 (ForallOf!798 lambda!126769 lt!1382843))))

(assert (=> d!1172205 (= (lemmaSemiInverse!1794 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382843) lt!1382874)))

(declare-fun b_lambda!115675 () Bool)

(assert (=> (not b_lambda!115675) (not d!1172205)))

(declare-fun tb!238113 () Bool)

(declare-fun t!329073 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329073) tb!238113))

(declare-fun tp!1205232 () Bool)

(declare-fun e!2448463 () Bool)

(declare-fun b!3954847 () Bool)

(declare-fun inv!56326 (Conc!12807) Bool)

(assert (=> b!3954847 (= e!2448463 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))) tp!1205232))))

(declare-fun result!288378 () Bool)

(declare-fun inv!56327 (BalanceConc!25208) Bool)

(assert (=> tb!238113 (= result!288378 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))) e!2448463))))

(assert (= tb!238113 b!3954847))

(declare-fun m!4523577 () Bool)

(assert (=> b!3954847 m!4523577))

(declare-fun m!4523579 () Bool)

(assert (=> tb!238113 m!4523579))

(assert (=> d!1172205 t!329073))

(declare-fun b_and!303295 () Bool)

(assert (= b_and!303273 (and (=> t!329073 result!288378) b_and!303295)))

(declare-fun t!329075 () Bool)

(declare-fun tb!238115 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329075) tb!238115))

(declare-fun result!288382 () Bool)

(assert (= result!288382 result!288378))

(assert (=> d!1172205 t!329075))

(declare-fun b_and!303297 () Bool)

(assert (= b_and!303277 (and (=> t!329075 result!288382) b_and!303297)))

(declare-fun t!329077 () Bool)

(declare-fun tb!238117 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329077) tb!238117))

(declare-fun result!288384 () Bool)

(assert (= result!288384 result!288378))

(assert (=> d!1172205 t!329077))

(declare-fun b_and!303299 () Bool)

(assert (= b_and!303281 (and (=> t!329077 result!288384) b_and!303299)))

(declare-fun b_lambda!115677 () Bool)

(assert (=> (not b_lambda!115677) (not d!1172205)))

(declare-fun tb!238119 () Bool)

(declare-fun t!329079 () Bool)

(assert (=> (and b!3954707 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329079) tb!238119))

(declare-fun result!288386 () Bool)

(assert (=> tb!238119 (= result!288386 (inv!21 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(declare-fun m!4523581 () Bool)

(assert (=> tb!238119 m!4523581))

(assert (=> d!1172205 t!329079))

(declare-fun b_and!303301 () Bool)

(assert (= b_and!303271 (and (=> t!329079 result!288386) b_and!303301)))

(declare-fun t!329081 () Bool)

(declare-fun tb!238121 () Bool)

(assert (=> (and b!3954710 (= (toValue!9072 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329081) tb!238121))

(declare-fun result!288390 () Bool)

(assert (= result!288390 result!288386))

(assert (=> d!1172205 t!329081))

(declare-fun b_and!303303 () Bool)

(assert (= b_and!303275 (and (=> t!329081 result!288390) b_and!303303)))

(declare-fun t!329083 () Bool)

(declare-fun tb!238123 () Bool)

(assert (=> (and b!3954701 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329083) tb!238123))

(declare-fun result!288392 () Bool)

(assert (= result!288392 result!288386))

(assert (=> d!1172205 t!329083))

(declare-fun b_and!303305 () Bool)

(assert (= b_and!303279 (and (=> t!329083 result!288392) b_and!303305)))

(declare-fun m!4523583 () Bool)

(assert (=> d!1172205 m!4523583))

(declare-fun m!4523585 () Bool)

(assert (=> d!1172205 m!4523585))

(declare-fun m!4523587 () Bool)

(assert (=> d!1172205 m!4523587))

(assert (=> d!1172205 m!4523587))

(declare-fun m!4523589 () Bool)

(assert (=> d!1172205 m!4523589))

(declare-fun m!4523591 () Bool)

(assert (=> d!1172205 m!4523591))

(assert (=> d!1172205 m!4523585))

(assert (=> b!3954718 d!1172205))

(declare-fun d!1172229 () Bool)

(declare-fun res!1600364 () Bool)

(declare-fun e!2448474 () Bool)

(assert (=> d!1172229 (=> (not res!1600364) (not e!2448474))))

(assert (=> d!1172229 (= res!1600364 (not (isEmpty!25161 (originalCharacters!7196 (h!47521 suffixTokens!72)))))))

(assert (=> d!1172229 (= (inv!56325 (h!47521 suffixTokens!72)) e!2448474)))

(declare-fun b!3954861 () Bool)

(declare-fun res!1600365 () Bool)

(assert (=> b!3954861 (=> (not res!1600365) (not e!2448474))))

(assert (=> b!3954861 (= res!1600365 (= (originalCharacters!7196 (h!47521 suffixTokens!72)) (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(declare-fun b!3954862 () Bool)

(assert (=> b!3954862 (= e!2448474 (= (size!31534 (h!47521 suffixTokens!72)) (size!31535 (originalCharacters!7196 (h!47521 suffixTokens!72)))))))

(assert (= (and d!1172229 res!1600364) b!3954861))

(assert (= (and b!3954861 res!1600365) b!3954862))

(declare-fun b_lambda!115679 () Bool)

(assert (=> (not b_lambda!115679) (not b!3954861)))

(declare-fun tb!238125 () Bool)

(declare-fun t!329085 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329085) tb!238125))

(declare-fun b!3954863 () Bool)

(declare-fun e!2448475 () Bool)

(declare-fun tp!1205233 () Bool)

(assert (=> b!3954863 (= e!2448475 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))) tp!1205233))))

(declare-fun result!288394 () Bool)

(assert (=> tb!238125 (= result!288394 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))) e!2448475))))

(assert (= tb!238125 b!3954863))

(declare-fun m!4523601 () Bool)

(assert (=> b!3954863 m!4523601))

(declare-fun m!4523603 () Bool)

(assert (=> tb!238125 m!4523603))

(assert (=> b!3954861 t!329085))

(declare-fun b_and!303307 () Bool)

(assert (= b_and!303295 (and (=> t!329085 result!288394) b_and!303307)))

(declare-fun tb!238127 () Bool)

(declare-fun t!329087 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329087) tb!238127))

(declare-fun result!288396 () Bool)

(assert (= result!288396 result!288394))

(assert (=> b!3954861 t!329087))

(declare-fun b_and!303309 () Bool)

(assert (= b_and!303297 (and (=> t!329087 result!288396) b_and!303309)))

(declare-fun t!329089 () Bool)

(declare-fun tb!238129 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329089) tb!238129))

(declare-fun result!288398 () Bool)

(assert (= result!288398 result!288394))

(assert (=> b!3954861 t!329089))

(declare-fun b_and!303311 () Bool)

(assert (= b_and!303299 (and (=> t!329089 result!288398) b_and!303311)))

(declare-fun m!4523605 () Bool)

(assert (=> d!1172229 m!4523605))

(declare-fun m!4523607 () Bool)

(assert (=> b!3954861 m!4523607))

(assert (=> b!3954861 m!4523607))

(declare-fun m!4523609 () Bool)

(assert (=> b!3954861 m!4523609))

(declare-fun m!4523611 () Bool)

(assert (=> b!3954862 m!4523611))

(assert (=> b!3954717 d!1172229))

(declare-fun b!3954909 () Bool)

(declare-fun res!1600405 () Bool)

(declare-fun e!2448493 () Bool)

(assert (=> b!3954909 (=> (not res!1600405) (not e!2448493))))

(declare-fun lt!1382902 () Option!9016)

(declare-fun get!13883 (Option!9016) tuple2!41382)

(assert (=> b!3954909 (= res!1600405 (= (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))) (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902)))))))

(declare-fun b!3954910 () Bool)

(declare-fun res!1600407 () Bool)

(assert (=> b!3954910 (=> (not res!1600407) (not e!2448493))))

(assert (=> b!3954910 (= res!1600407 (= (value!208620 (_1!23825 (get!13883 lt!1382902))) (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun b!3954911 () Bool)

(declare-fun res!1600406 () Bool)

(assert (=> b!3954911 (=> (not res!1600406) (not e!2448493))))

(assert (=> b!3954911 (= res!1600406 (< (size!31535 (_2!23825 (get!13883 lt!1382902))) (size!31535 lt!1382832)))))

(declare-fun d!1172237 () Bool)

(declare-fun e!2448491 () Bool)

(assert (=> d!1172237 e!2448491))

(declare-fun res!1600404 () Bool)

(assert (=> d!1172237 (=> res!1600404 e!2448491)))

(declare-fun isEmpty!25163 (Option!9016) Bool)

(assert (=> d!1172237 (= res!1600404 (isEmpty!25163 lt!1382902))))

(declare-fun e!2448492 () Option!9016)

(assert (=> d!1172237 (= lt!1382902 e!2448492)))

(declare-fun c!686449 () Bool)

(assert (=> d!1172237 (= c!686449 (and ((_ is Cons!42102) rules!2768) ((_ is Nil!42102) (t!329059 rules!2768))))))

(declare-fun lt!1382903 () Unit!60594)

(declare-fun lt!1382904 () Unit!60594)

(assert (=> d!1172237 (= lt!1382903 lt!1382904)))

(assert (=> d!1172237 (isPrefix!3685 lt!1382832 lt!1382832)))

(declare-fun lemmaIsPrefixRefl!2331 (List!42224 List!42224) Unit!60594)

(assert (=> d!1172237 (= lt!1382904 (lemmaIsPrefixRefl!2331 lt!1382832 lt!1382832))))

(declare-fun rulesValidInductive!2389 (LexerInterface!6185 List!42226) Bool)

(assert (=> d!1172237 (rulesValidInductive!2389 thiss!20629 rules!2768)))

(assert (=> d!1172237 (= (maxPrefix!3489 thiss!20629 rules!2768 lt!1382832) lt!1382902)))

(declare-fun b!3954912 () Bool)

(declare-fun res!1600403 () Bool)

(assert (=> b!3954912 (=> (not res!1600403) (not e!2448493))))

(assert (=> b!3954912 (= res!1600403 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))) (_2!23825 (get!13883 lt!1382902))) lt!1382832))))

(declare-fun call!285285 () Option!9016)

(declare-fun bm!285280 () Bool)

(declare-fun maxPrefixOneRule!2539 (LexerInterface!6185 Rule!12992 List!42224) Option!9016)

(assert (=> bm!285280 (= call!285285 (maxPrefixOneRule!2539 thiss!20629 (h!47522 rules!2768) lt!1382832))))

(declare-fun b!3954913 () Bool)

(declare-fun res!1600401 () Bool)

(assert (=> b!3954913 (=> (not res!1600401) (not e!2448493))))

(assert (=> b!3954913 (= res!1600401 (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun b!3954914 () Bool)

(assert (=> b!3954914 (= e!2448491 e!2448493)))

(declare-fun res!1600402 () Bool)

(assert (=> b!3954914 (=> (not res!1600402) (not e!2448493))))

(declare-fun isDefined!6990 (Option!9016) Bool)

(assert (=> b!3954914 (= res!1600402 (isDefined!6990 lt!1382902))))

(declare-fun b!3954915 () Bool)

(assert (=> b!3954915 (= e!2448492 call!285285)))

(declare-fun b!3954916 () Bool)

(assert (=> b!3954916 (= e!2448493 (contains!8418 rules!2768 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))

(declare-fun b!3954917 () Bool)

(declare-fun lt!1382906 () Option!9016)

(declare-fun lt!1382905 () Option!9016)

(assert (=> b!3954917 (= e!2448492 (ite (and ((_ is None!9015) lt!1382906) ((_ is None!9015) lt!1382905)) None!9015 (ite ((_ is None!9015) lt!1382905) lt!1382906 (ite ((_ is None!9015) lt!1382906) lt!1382905 (ite (>= (size!31534 (_1!23825 (v!39359 lt!1382906))) (size!31534 (_1!23825 (v!39359 lt!1382905)))) lt!1382906 lt!1382905)))))))

(assert (=> b!3954917 (= lt!1382906 call!285285)))

(assert (=> b!3954917 (= lt!1382905 (maxPrefix!3489 thiss!20629 (t!329059 rules!2768) lt!1382832))))

(assert (= (and d!1172237 c!686449) b!3954915))

(assert (= (and d!1172237 (not c!686449)) b!3954917))

(assert (= (or b!3954915 b!3954917) bm!285280))

(assert (= (and d!1172237 (not res!1600404)) b!3954914))

(assert (= (and b!3954914 res!1600402) b!3954909))

(assert (= (and b!3954909 res!1600405) b!3954911))

(assert (= (and b!3954911 res!1600406) b!3954912))

(assert (= (and b!3954912 res!1600403) b!3954910))

(assert (= (and b!3954910 res!1600407) b!3954913))

(assert (= (and b!3954913 res!1600401) b!3954916))

(declare-fun m!4523645 () Bool)

(assert (=> b!3954914 m!4523645))

(declare-fun m!4523647 () Bool)

(assert (=> b!3954913 m!4523647))

(declare-fun m!4523649 () Bool)

(assert (=> b!3954913 m!4523649))

(assert (=> b!3954913 m!4523649))

(declare-fun m!4523651 () Bool)

(assert (=> b!3954913 m!4523651))

(assert (=> b!3954913 m!4523651))

(declare-fun m!4523653 () Bool)

(assert (=> b!3954913 m!4523653))

(assert (=> b!3954911 m!4523647))

(declare-fun m!4523655 () Bool)

(assert (=> b!3954911 m!4523655))

(assert (=> b!3954911 m!4523415))

(assert (=> b!3954912 m!4523647))

(assert (=> b!3954912 m!4523649))

(assert (=> b!3954912 m!4523649))

(assert (=> b!3954912 m!4523651))

(assert (=> b!3954912 m!4523651))

(declare-fun m!4523657 () Bool)

(assert (=> b!3954912 m!4523657))

(declare-fun m!4523659 () Bool)

(assert (=> b!3954917 m!4523659))

(assert (=> b!3954909 m!4523647))

(assert (=> b!3954909 m!4523649))

(assert (=> b!3954909 m!4523649))

(assert (=> b!3954909 m!4523651))

(assert (=> b!3954916 m!4523647))

(declare-fun m!4523661 () Bool)

(assert (=> b!3954916 m!4523661))

(declare-fun m!4523663 () Bool)

(assert (=> bm!285280 m!4523663))

(declare-fun m!4523665 () Bool)

(assert (=> d!1172237 m!4523665))

(declare-fun m!4523667 () Bool)

(assert (=> d!1172237 m!4523667))

(declare-fun m!4523669 () Bool)

(assert (=> d!1172237 m!4523669))

(declare-fun m!4523671 () Bool)

(assert (=> d!1172237 m!4523671))

(assert (=> b!3954910 m!4523647))

(declare-fun m!4523673 () Bool)

(assert (=> b!3954910 m!4523673))

(assert (=> b!3954910 m!4523673))

(declare-fun m!4523675 () Bool)

(assert (=> b!3954910 m!4523675))

(assert (=> b!3954721 d!1172237))

(declare-fun b!3954990 () Bool)

(declare-fun e!2448542 () tuple2!41384)

(assert (=> b!3954990 (= e!2448542 (tuple2!41385 Nil!42101 lt!1382832))))

(declare-fun b!3954991 () Bool)

(declare-fun e!2448543 () Bool)

(declare-fun lt!1382927 () tuple2!41384)

(assert (=> b!3954991 (= e!2448543 (not (isEmpty!25160 (_1!23826 lt!1382927))))))

(declare-fun d!1172241 () Bool)

(declare-fun e!2448544 () Bool)

(assert (=> d!1172241 e!2448544))

(declare-fun c!686467 () Bool)

(declare-fun size!31537 (List!42225) Int)

(assert (=> d!1172241 (= c!686467 (> (size!31537 (_1!23826 lt!1382927)) 0))))

(assert (=> d!1172241 (= lt!1382927 e!2448542)))

(declare-fun c!686468 () Bool)

(declare-fun lt!1382925 () Option!9016)

(assert (=> d!1172241 (= c!686468 ((_ is Some!9015) lt!1382925))))

(assert (=> d!1172241 (= lt!1382925 (maxPrefix!3489 thiss!20629 rules!2768 lt!1382832))))

(assert (=> d!1172241 (= (lexList!1953 thiss!20629 rules!2768 lt!1382832) lt!1382927)))

(declare-fun b!3954992 () Bool)

(assert (=> b!3954992 (= e!2448544 e!2448543)))

(declare-fun res!1600445 () Bool)

(assert (=> b!3954992 (= res!1600445 (< (size!31535 (_2!23826 lt!1382927)) (size!31535 lt!1382832)))))

(assert (=> b!3954992 (=> (not res!1600445) (not e!2448543))))

(declare-fun b!3954993 () Bool)

(declare-fun lt!1382926 () tuple2!41384)

(assert (=> b!3954993 (= e!2448542 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1382925)) (_1!23826 lt!1382926)) (_2!23826 lt!1382926)))))

(assert (=> b!3954993 (= lt!1382926 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382925))))))

(declare-fun b!3954994 () Bool)

(assert (=> b!3954994 (= e!2448544 (= (_2!23826 lt!1382927) lt!1382832))))

(assert (= (and d!1172241 c!686468) b!3954993))

(assert (= (and d!1172241 (not c!686468)) b!3954990))

(assert (= (and d!1172241 c!686467) b!3954992))

(assert (= (and d!1172241 (not c!686467)) b!3954994))

(assert (= (and b!3954992 res!1600445) b!3954991))

(declare-fun m!4523747 () Bool)

(assert (=> b!3954991 m!4523747))

(declare-fun m!4523749 () Bool)

(assert (=> d!1172241 m!4523749))

(assert (=> d!1172241 m!4523425))

(declare-fun m!4523751 () Bool)

(assert (=> b!3954992 m!4523751))

(assert (=> b!3954992 m!4523415))

(declare-fun m!4523753 () Bool)

(assert (=> b!3954993 m!4523753))

(assert (=> b!3954720 d!1172241))

(declare-fun b!3955010 () Bool)

(declare-fun e!2448552 () List!42225)

(assert (=> b!3955010 (= e!2448552 (Cons!42101 (h!47521 prefixTokens!80) (++!10950 (t!329058 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3955009 () Bool)

(assert (=> b!3955009 (= e!2448552 suffixTokens!72)))

(declare-fun b!3955011 () Bool)

(declare-fun res!1600457 () Bool)

(declare-fun e!2448553 () Bool)

(assert (=> b!3955011 (=> (not res!1600457) (not e!2448553))))

(declare-fun lt!1382933 () List!42225)

(assert (=> b!3955011 (= res!1600457 (= (size!31537 lt!1382933) (+ (size!31537 prefixTokens!80) (size!31537 suffixTokens!72))))))

(declare-fun b!3955012 () Bool)

(assert (=> b!3955012 (= e!2448553 (or (not (= suffixTokens!72 Nil!42101)) (= lt!1382933 prefixTokens!80)))))

(declare-fun d!1172273 () Bool)

(assert (=> d!1172273 e!2448553))

(declare-fun res!1600456 () Bool)

(assert (=> d!1172273 (=> (not res!1600456) (not e!2448553))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6388 (List!42225) (InoxSet Token!12330))

(assert (=> d!1172273 (= res!1600456 (= (content!6388 lt!1382933) ((_ map or) (content!6388 prefixTokens!80) (content!6388 suffixTokens!72))))))

(assert (=> d!1172273 (= lt!1382933 e!2448552)))

(declare-fun c!686471 () Bool)

(assert (=> d!1172273 (= c!686471 ((_ is Nil!42101) prefixTokens!80))))

(assert (=> d!1172273 (= (++!10950 prefixTokens!80 suffixTokens!72) lt!1382933)))

(assert (= (and d!1172273 c!686471) b!3955009))

(assert (= (and d!1172273 (not c!686471)) b!3955010))

(assert (= (and d!1172273 res!1600456) b!3955011))

(assert (= (and b!3955011 res!1600457) b!3955012))

(declare-fun m!4523757 () Bool)

(assert (=> b!3955010 m!4523757))

(declare-fun m!4523759 () Bool)

(assert (=> b!3955011 m!4523759))

(declare-fun m!4523761 () Bool)

(assert (=> b!3955011 m!4523761))

(declare-fun m!4523763 () Bool)

(assert (=> b!3955011 m!4523763))

(declare-fun m!4523765 () Bool)

(assert (=> d!1172273 m!4523765))

(declare-fun m!4523767 () Bool)

(assert (=> d!1172273 m!4523767))

(declare-fun m!4523769 () Bool)

(assert (=> d!1172273 m!4523769))

(assert (=> b!3954720 d!1172273))

(declare-fun lt!1382939 () List!42224)

(declare-fun e!2448560 () Bool)

(declare-fun b!3955025 () Bool)

(assert (=> b!3955025 (= e!2448560 (or (not (= suffix!1176 Nil!42100)) (= lt!1382939 prefix!426)))))

(declare-fun b!3955022 () Bool)

(declare-fun e!2448559 () List!42224)

(assert (=> b!3955022 (= e!2448559 suffix!1176)))

(declare-fun b!3955024 () Bool)

(declare-fun res!1600462 () Bool)

(assert (=> b!3955024 (=> (not res!1600462) (not e!2448560))))

(assert (=> b!3955024 (= res!1600462 (= (size!31535 lt!1382939) (+ (size!31535 prefix!426) (size!31535 suffix!1176))))))

(declare-fun d!1172279 () Bool)

(assert (=> d!1172279 e!2448560))

(declare-fun res!1600463 () Bool)

(assert (=> d!1172279 (=> (not res!1600463) (not e!2448560))))

(declare-fun content!6390 (List!42224) (InoxSet C!23188))

(assert (=> d!1172279 (= res!1600463 (= (content!6390 lt!1382939) ((_ map or) (content!6390 prefix!426) (content!6390 suffix!1176))))))

(assert (=> d!1172279 (= lt!1382939 e!2448559)))

(declare-fun c!686474 () Bool)

(assert (=> d!1172279 (= c!686474 ((_ is Nil!42100) prefix!426))))

(assert (=> d!1172279 (= (++!10949 prefix!426 suffix!1176) lt!1382939)))

(declare-fun b!3955023 () Bool)

(assert (=> b!3955023 (= e!2448559 (Cons!42100 (h!47520 prefix!426) (++!10949 (t!329057 prefix!426) suffix!1176)))))

(assert (= (and d!1172279 c!686474) b!3955022))

(assert (= (and d!1172279 (not c!686474)) b!3955023))

(assert (= (and d!1172279 res!1600463) b!3955024))

(assert (= (and b!3955024 res!1600462) b!3955025))

(declare-fun m!4523781 () Bool)

(assert (=> b!3955024 m!4523781))

(assert (=> b!3955024 m!4523411))

(assert (=> b!3955024 m!4523453))

(declare-fun m!4523783 () Bool)

(assert (=> d!1172279 m!4523783))

(declare-fun m!4523785 () Bool)

(assert (=> d!1172279 m!4523785))

(declare-fun m!4523787 () Bool)

(assert (=> d!1172279 m!4523787))

(declare-fun m!4523789 () Bool)

(assert (=> b!3955023 m!4523789))

(assert (=> b!3954720 d!1172279))

(declare-fun b!3955042 () Bool)

(declare-fun e!2448571 () Bool)

(declare-fun inv!17 (TokenValue!6826) Bool)

(assert (=> b!3955042 (= e!2448571 (inv!17 (value!208620 (h!47521 prefixTokens!80))))))

(declare-fun b!3955043 () Bool)

(declare-fun e!2448570 () Bool)

(assert (=> b!3955043 (= e!2448570 e!2448571)))

(declare-fun c!686482 () Bool)

(assert (=> b!3955043 (= c!686482 ((_ is IntegerValue!20479) (value!208620 (h!47521 prefixTokens!80))))))

(declare-fun d!1172287 () Bool)

(declare-fun c!686483 () Bool)

(assert (=> d!1172287 (= c!686483 ((_ is IntegerValue!20478) (value!208620 (h!47521 prefixTokens!80))))))

(assert (=> d!1172287 (= (inv!21 (value!208620 (h!47521 prefixTokens!80))) e!2448570)))

(declare-fun b!3955044 () Bool)

(declare-fun inv!16 (TokenValue!6826) Bool)

(assert (=> b!3955044 (= e!2448570 (inv!16 (value!208620 (h!47521 prefixTokens!80))))))

(declare-fun b!3955045 () Bool)

(declare-fun res!1600466 () Bool)

(declare-fun e!2448572 () Bool)

(assert (=> b!3955045 (=> res!1600466 e!2448572)))

(assert (=> b!3955045 (= res!1600466 (not ((_ is IntegerValue!20480) (value!208620 (h!47521 prefixTokens!80)))))))

(assert (=> b!3955045 (= e!2448571 e!2448572)))

(declare-fun b!3955046 () Bool)

(declare-fun inv!15 (TokenValue!6826) Bool)

(assert (=> b!3955046 (= e!2448572 (inv!15 (value!208620 (h!47521 prefixTokens!80))))))

(assert (= (and d!1172287 c!686483) b!3955044))

(assert (= (and d!1172287 (not c!686483)) b!3955043))

(assert (= (and b!3955043 c!686482) b!3955042))

(assert (= (and b!3955043 (not c!686482)) b!3955045))

(assert (= (and b!3955045 (not res!1600466)) b!3955046))

(declare-fun m!4523797 () Bool)

(assert (=> b!3955042 m!4523797))

(declare-fun m!4523799 () Bool)

(assert (=> b!3955044 m!4523799))

(declare-fun m!4523801 () Bool)

(assert (=> b!3955046 m!4523801))

(assert (=> b!3954719 d!1172287))

(declare-fun d!1172291 () Bool)

(declare-fun lt!1382948 () Int)

(assert (=> d!1172291 (>= lt!1382948 0)))

(declare-fun e!2448575 () Int)

(assert (=> d!1172291 (= lt!1382948 e!2448575)))

(declare-fun c!686486 () Bool)

(assert (=> d!1172291 (= c!686486 ((_ is Nil!42100) prefix!426))))

(assert (=> d!1172291 (= (size!31535 prefix!426) lt!1382948)))

(declare-fun b!3955051 () Bool)

(assert (=> b!3955051 (= e!2448575 0)))

(declare-fun b!3955052 () Bool)

(assert (=> b!3955052 (= e!2448575 (+ 1 (size!31535 (t!329057 prefix!426))))))

(assert (= (and d!1172291 c!686486) b!3955051))

(assert (= (and d!1172291 (not c!686486)) b!3955052))

(declare-fun m!4523809 () Bool)

(assert (=> b!3955052 m!4523809))

(assert (=> b!3954713 d!1172291))

(declare-fun b!3955054 () Bool)

(declare-fun e!2448576 () List!42225)

(assert (=> b!3955054 (= e!2448576 (Cons!42101 (h!47521 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) (++!10950 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) (_1!23826 lt!1382833))))))

(declare-fun b!3955053 () Bool)

(assert (=> b!3955053 (= e!2448576 (_1!23826 lt!1382833))))

(declare-fun b!3955055 () Bool)

(declare-fun res!1600468 () Bool)

(declare-fun e!2448577 () Bool)

(assert (=> b!3955055 (=> (not res!1600468) (not e!2448577))))

(declare-fun lt!1382949 () List!42225)

(assert (=> b!3955055 (= res!1600468 (= (size!31537 lt!1382949) (+ (size!31537 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) (size!31537 (_1!23826 lt!1382833)))))))

(declare-fun b!3955056 () Bool)

(assert (=> b!3955056 (= e!2448577 (or (not (= (_1!23826 lt!1382833) Nil!42101)) (= lt!1382949 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))))))

(declare-fun d!1172297 () Bool)

(assert (=> d!1172297 e!2448577))

(declare-fun res!1600467 () Bool)

(assert (=> d!1172297 (=> (not res!1600467) (not e!2448577))))

(assert (=> d!1172297 (= res!1600467 (= (content!6388 lt!1382949) ((_ map or) (content!6388 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) (content!6388 (_1!23826 lt!1382833)))))))

(assert (=> d!1172297 (= lt!1382949 e!2448576)))

(declare-fun c!686487 () Bool)

(assert (=> d!1172297 (= c!686487 ((_ is Nil!42101) (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))

(assert (=> d!1172297 (= (++!10950 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101) (_1!23826 lt!1382833)) lt!1382949)))

(assert (= (and d!1172297 c!686487) b!3955053))

(assert (= (and d!1172297 (not c!686487)) b!3955054))

(assert (= (and d!1172297 res!1600467) b!3955055))

(assert (= (and b!3955055 res!1600468) b!3955056))

(declare-fun m!4523811 () Bool)

(assert (=> b!3955054 m!4523811))

(declare-fun m!4523813 () Bool)

(assert (=> b!3955055 m!4523813))

(declare-fun m!4523815 () Bool)

(assert (=> b!3955055 m!4523815))

(declare-fun m!4523817 () Bool)

(assert (=> b!3955055 m!4523817))

(declare-fun m!4523819 () Bool)

(assert (=> d!1172297 m!4523819))

(declare-fun m!4523821 () Bool)

(assert (=> d!1172297 m!4523821))

(declare-fun m!4523823 () Bool)

(assert (=> d!1172297 m!4523823))

(assert (=> b!3954711 d!1172297))

(declare-fun d!1172299 () Bool)

(declare-fun lt!1382950 () Int)

(assert (=> d!1172299 (>= lt!1382950 0)))

(declare-fun e!2448578 () Int)

(assert (=> d!1172299 (= lt!1382950 e!2448578)))

(declare-fun c!686488 () Bool)

(assert (=> d!1172299 (= c!686488 ((_ is Nil!42100) lt!1382832))))

(assert (=> d!1172299 (= (size!31535 lt!1382832) lt!1382950)))

(declare-fun b!3955057 () Bool)

(assert (=> b!3955057 (= e!2448578 0)))

(declare-fun b!3955058 () Bool)

(assert (=> b!3955058 (= e!2448578 (+ 1 (size!31535 (t!329057 lt!1382832))))))

(assert (= (and d!1172299 c!686488) b!3955057))

(assert (= (and d!1172299 (not c!686488)) b!3955058))

(declare-fun m!4523825 () Bool)

(assert (=> b!3955058 m!4523825))

(assert (=> b!3954716 d!1172299))

(declare-fun d!1172301 () Bool)

(assert (=> d!1172301 (= (isEmpty!25161 lt!1382839) ((_ is Nil!42100) lt!1382839))))

(assert (=> b!3954715 d!1172301))

(declare-fun d!1172303 () Bool)

(declare-fun res!1600473 () Bool)

(declare-fun e!2448583 () Bool)

(assert (=> d!1172303 (=> (not res!1600473) (not e!2448583))))

(declare-fun rulesValid!2577 (LexerInterface!6185 List!42226) Bool)

(assert (=> d!1172303 (= res!1600473 (rulesValid!2577 thiss!20629 rules!2768))))

(assert (=> d!1172303 (= (rulesInvariant!5528 thiss!20629 rules!2768) e!2448583)))

(declare-fun b!3955064 () Bool)

(declare-datatypes ((List!42228 0))(
  ( (Nil!42104) (Cons!42104 (h!47524 String!47848) (t!329181 List!42228)) )
))
(declare-fun noDuplicateTag!2578 (LexerInterface!6185 List!42226 List!42228) Bool)

(assert (=> b!3955064 (= e!2448583 (noDuplicateTag!2578 thiss!20629 rules!2768 Nil!42104))))

(assert (= (and d!1172303 res!1600473) b!3955064))

(declare-fun m!4523843 () Bool)

(assert (=> d!1172303 m!4523843))

(declare-fun m!4523845 () Bool)

(assert (=> b!3955064 m!4523845))

(assert (=> b!3954714 d!1172303))

(declare-fun b!3955070 () Bool)

(declare-fun e!2448588 () Bool)

(assert (=> b!3955070 (= e!2448588 (inv!17 (value!208620 (h!47521 suffixTokens!72))))))

(declare-fun b!3955071 () Bool)

(declare-fun e!2448587 () Bool)

(assert (=> b!3955071 (= e!2448587 e!2448588)))

(declare-fun c!686491 () Bool)

(assert (=> b!3955071 (= c!686491 ((_ is IntegerValue!20479) (value!208620 (h!47521 suffixTokens!72))))))

(declare-fun d!1172311 () Bool)

(declare-fun c!686492 () Bool)

(assert (=> d!1172311 (= c!686492 ((_ is IntegerValue!20478) (value!208620 (h!47521 suffixTokens!72))))))

(assert (=> d!1172311 (= (inv!21 (value!208620 (h!47521 suffixTokens!72))) e!2448587)))

(declare-fun b!3955072 () Bool)

(assert (=> b!3955072 (= e!2448587 (inv!16 (value!208620 (h!47521 suffixTokens!72))))))

(declare-fun b!3955073 () Bool)

(declare-fun res!1600475 () Bool)

(declare-fun e!2448589 () Bool)

(assert (=> b!3955073 (=> res!1600475 e!2448589)))

(assert (=> b!3955073 (= res!1600475 (not ((_ is IntegerValue!20480) (value!208620 (h!47521 suffixTokens!72)))))))

(assert (=> b!3955073 (= e!2448588 e!2448589)))

(declare-fun b!3955074 () Bool)

(assert (=> b!3955074 (= e!2448589 (inv!15 (value!208620 (h!47521 suffixTokens!72))))))

(assert (= (and d!1172311 c!686492) b!3955072))

(assert (= (and d!1172311 (not c!686492)) b!3955071))

(assert (= (and b!3955071 c!686491) b!3955070))

(assert (= (and b!3955071 (not c!686491)) b!3955073))

(assert (= (and b!3955073 (not res!1600475)) b!3955074))

(declare-fun m!4523847 () Bool)

(assert (=> b!3955070 m!4523847))

(declare-fun m!4523849 () Bool)

(assert (=> b!3955072 m!4523849))

(declare-fun m!4523851 () Bool)

(assert (=> b!3955074 m!4523851))

(assert (=> b!3954708 d!1172311))

(declare-fun d!1172313 () Bool)

(assert (=> d!1172313 (= (isEmpty!25162 rules!2768) ((_ is Nil!42102) rules!2768))))

(assert (=> b!3954729 d!1172313))

(declare-fun d!1172319 () Bool)

(declare-fun lt!1382959 () Bool)

(declare-fun content!6391 (List!42226) (InoxSet Rule!12992))

(assert (=> d!1172319 (= lt!1382959 (select (content!6391 rules!2768) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun e!2448608 () Bool)

(assert (=> d!1172319 (= lt!1382959 e!2448608)))

(declare-fun res!1600481 () Bool)

(assert (=> d!1172319 (=> (not res!1600481) (not e!2448608))))

(assert (=> d!1172319 (= res!1600481 ((_ is Cons!42102) rules!2768))))

(assert (=> d!1172319 (= (contains!8418 rules!2768 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382959)))

(declare-fun b!3955107 () Bool)

(declare-fun e!2448607 () Bool)

(assert (=> b!3955107 (= e!2448608 e!2448607)))

(declare-fun res!1600482 () Bool)

(assert (=> b!3955107 (=> res!1600482 e!2448607)))

(assert (=> b!3955107 (= res!1600482 (= (h!47522 rules!2768) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun b!3955108 () Bool)

(assert (=> b!3955108 (= e!2448607 (contains!8418 (t!329059 rules!2768) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(assert (= (and d!1172319 res!1600481) b!3955107))

(assert (= (and b!3955107 (not res!1600482)) b!3955108))

(declare-fun m!4523867 () Bool)

(assert (=> d!1172319 m!4523867))

(declare-fun m!4523869 () Bool)

(assert (=> d!1172319 m!4523869))

(declare-fun m!4523871 () Bool)

(assert (=> b!3955108 m!4523871))

(assert (=> b!3954728 d!1172319))

(declare-fun d!1172321 () Bool)

(assert (=> d!1172321 (= (inv!56321 (tag!7456 (rule!9566 (h!47521 prefixTokens!80)))) (= (mod (str.len (value!208619 (tag!7456 (rule!9566 (h!47521 prefixTokens!80))))) 2) 0))))

(assert (=> b!3954706 d!1172321))

(declare-fun d!1172323 () Bool)

(declare-fun res!1600485 () Bool)

(declare-fun e!2448627 () Bool)

(assert (=> d!1172323 (=> (not res!1600485) (not e!2448627))))

(declare-fun semiInverseModEq!2843 (Int Int) Bool)

(assert (=> d!1172323 (= res!1600485 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))))))

(assert (=> d!1172323 (= (inv!56324 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) e!2448627)))

(declare-fun b!3955121 () Bool)

(declare-fun equivClasses!2742 (Int Int) Bool)

(assert (=> b!3955121 (= e!2448627 (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))))))

(assert (= (and d!1172323 res!1600485) b!3955121))

(declare-fun m!4523877 () Bool)

(assert (=> d!1172323 m!4523877))

(declare-fun m!4523881 () Bool)

(assert (=> b!3955121 m!4523881))

(assert (=> b!3954706 d!1172323))

(declare-fun d!1172325 () Bool)

(assert (=> d!1172325 (= (isEmpty!25161 prefix!426) ((_ is Nil!42100) prefix!426))))

(assert (=> b!3954727 d!1172325))

(declare-fun d!1172327 () Bool)

(declare-fun lt!1382960 () Int)

(assert (=> d!1172327 (>= lt!1382960 0)))

(declare-fun e!2448629 () Int)

(assert (=> d!1172327 (= lt!1382960 e!2448629)))

(declare-fun c!686493 () Bool)

(assert (=> d!1172327 (= c!686493 ((_ is Nil!42100) (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831)))))))

(assert (=> d!1172327 (= (size!31535 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831)))) lt!1382960)))

(declare-fun b!3955126 () Bool)

(assert (=> b!3955126 (= e!2448629 0)))

(declare-fun b!3955127 () Bool)

(assert (=> b!3955127 (= e!2448629 (+ 1 (size!31535 (t!329057 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831)))))))))

(assert (= (and d!1172327 c!686493) b!3955126))

(assert (= (and d!1172327 (not c!686493)) b!3955127))

(declare-fun m!4523885 () Bool)

(assert (=> b!3955127 m!4523885))

(assert (=> b!3954732 d!1172327))

(declare-fun b!3955132 () Bool)

(declare-fun e!2448636 () tuple2!41384)

(assert (=> b!3955132 (= e!2448636 (tuple2!41385 Nil!42101 suffix!1176))))

(declare-fun b!3955133 () Bool)

(declare-fun e!2448637 () Bool)

(declare-fun lt!1382963 () tuple2!41384)

(assert (=> b!3955133 (= e!2448637 (not (isEmpty!25160 (_1!23826 lt!1382963))))))

(declare-fun d!1172329 () Bool)

(declare-fun e!2448638 () Bool)

(assert (=> d!1172329 e!2448638))

(declare-fun c!686494 () Bool)

(assert (=> d!1172329 (= c!686494 (> (size!31537 (_1!23826 lt!1382963)) 0))))

(assert (=> d!1172329 (= lt!1382963 e!2448636)))

(declare-fun c!686495 () Bool)

(declare-fun lt!1382961 () Option!9016)

(assert (=> d!1172329 (= c!686495 ((_ is Some!9015) lt!1382961))))

(assert (=> d!1172329 (= lt!1382961 (maxPrefix!3489 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1172329 (= (lexList!1953 thiss!20629 rules!2768 suffix!1176) lt!1382963)))

(declare-fun b!3955134 () Bool)

(assert (=> b!3955134 (= e!2448638 e!2448637)))

(declare-fun res!1600486 () Bool)

(assert (=> b!3955134 (= res!1600486 (< (size!31535 (_2!23826 lt!1382963)) (size!31535 suffix!1176)))))

(assert (=> b!3955134 (=> (not res!1600486) (not e!2448637))))

(declare-fun b!3955135 () Bool)

(declare-fun lt!1382962 () tuple2!41384)

(assert (=> b!3955135 (= e!2448636 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1382961)) (_1!23826 lt!1382962)) (_2!23826 lt!1382962)))))

(assert (=> b!3955135 (= lt!1382962 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382961))))))

(declare-fun b!3955136 () Bool)

(assert (=> b!3955136 (= e!2448638 (= (_2!23826 lt!1382963) suffix!1176))))

(assert (= (and d!1172329 c!686495) b!3955135))

(assert (= (and d!1172329 (not c!686495)) b!3955132))

(assert (= (and d!1172329 c!686494) b!3955134))

(assert (= (and d!1172329 (not c!686494)) b!3955136))

(assert (= (and b!3955134 res!1600486) b!3955133))

(declare-fun m!4523887 () Bool)

(assert (=> b!3955133 m!4523887))

(declare-fun m!4523889 () Bool)

(assert (=> d!1172329 m!4523889))

(declare-fun m!4523891 () Bool)

(assert (=> d!1172329 m!4523891))

(declare-fun m!4523893 () Bool)

(assert (=> b!3955134 m!4523893))

(assert (=> b!3955134 m!4523453))

(declare-fun m!4523895 () Bool)

(assert (=> b!3955135 m!4523895))

(assert (=> b!3954730 d!1172329))

(declare-fun d!1172331 () Bool)

(assert (=> d!1172331 (= (_2!23825 (v!39359 lt!1382831)) lt!1382828)))

(declare-fun lt!1382966 () Unit!60594)

(declare-fun choose!23604 (List!42224 List!42224 List!42224 List!42224 List!42224) Unit!60594)

(assert (=> d!1172331 (= lt!1382966 (choose!23604 lt!1382839 (_2!23825 (v!39359 lt!1382831)) lt!1382839 lt!1382828 lt!1382832))))

(assert (=> d!1172331 (isPrefix!3685 lt!1382839 lt!1382832)))

(assert (=> d!1172331 (= (lemmaSamePrefixThenSameSuffix!1894 lt!1382839 (_2!23825 (v!39359 lt!1382831)) lt!1382839 lt!1382828 lt!1382832) lt!1382966)))

(declare-fun bs!587085 () Bool)

(assert (= bs!587085 d!1172331))

(declare-fun m!4523905 () Bool)

(assert (=> bs!587085 m!4523905))

(declare-fun m!4523907 () Bool)

(assert (=> bs!587085 m!4523907))

(assert (=> b!3954702 d!1172331))

(declare-fun d!1172333 () Bool)

(assert (=> d!1172333 (= (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382843) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))

(declare-fun b_lambda!115689 () Bool)

(assert (=> (not b_lambda!115689) (not d!1172333)))

(assert (=> d!1172333 t!329079))

(declare-fun b_and!303349 () Bool)

(assert (= b_and!303301 (and (=> t!329079 result!288386) b_and!303349)))

(assert (=> d!1172333 t!329081))

(declare-fun b_and!303351 () Bool)

(assert (= b_and!303303 (and (=> t!329081 result!288390) b_and!303351)))

(assert (=> d!1172333 t!329083))

(declare-fun b_and!303353 () Bool)

(assert (= b_and!303305 (and (=> t!329083 result!288392) b_and!303353)))

(assert (=> d!1172333 m!4523585))

(assert (=> b!3954702 d!1172333))

(declare-fun d!1172335 () Bool)

(declare-fun lt!1382967 () Int)

(assert (=> d!1172335 (>= lt!1382967 0)))

(declare-fun e!2448652 () Int)

(assert (=> d!1172335 (= lt!1382967 e!2448652)))

(declare-fun c!686496 () Bool)

(assert (=> d!1172335 (= c!686496 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172335 (= (size!31535 lt!1382839) lt!1382967)))

(declare-fun b!3955152 () Bool)

(assert (=> b!3955152 (= e!2448652 0)))

(declare-fun b!3955153 () Bool)

(assert (=> b!3955153 (= e!2448652 (+ 1 (size!31535 (t!329057 lt!1382839))))))

(assert (= (and d!1172335 c!686496) b!3955152))

(assert (= (and d!1172335 (not c!686496)) b!3955153))

(declare-fun m!4523913 () Bool)

(assert (=> b!3955153 m!4523913))

(assert (=> b!3954702 d!1172335))

(declare-fun b!3955157 () Bool)

(declare-fun lt!1382968 () List!42224)

(declare-fun e!2448654 () Bool)

(assert (=> b!3955157 (= e!2448654 (or (not (= (_2!23825 (v!39359 lt!1382831)) Nil!42100)) (= lt!1382968 lt!1382839)))))

(declare-fun b!3955154 () Bool)

(declare-fun e!2448653 () List!42224)

(assert (=> b!3955154 (= e!2448653 (_2!23825 (v!39359 lt!1382831)))))

(declare-fun b!3955156 () Bool)

(declare-fun res!1600487 () Bool)

(assert (=> b!3955156 (=> (not res!1600487) (not e!2448654))))

(assert (=> b!3955156 (= res!1600487 (= (size!31535 lt!1382968) (+ (size!31535 lt!1382839) (size!31535 (_2!23825 (v!39359 lt!1382831))))))))

(declare-fun d!1172337 () Bool)

(assert (=> d!1172337 e!2448654))

(declare-fun res!1600488 () Bool)

(assert (=> d!1172337 (=> (not res!1600488) (not e!2448654))))

(assert (=> d!1172337 (= res!1600488 (= (content!6390 lt!1382968) ((_ map or) (content!6390 lt!1382839) (content!6390 (_2!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172337 (= lt!1382968 e!2448653)))

(declare-fun c!686497 () Bool)

(assert (=> d!1172337 (= c!686497 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172337 (= (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))) lt!1382968)))

(declare-fun b!3955155 () Bool)

(assert (=> b!3955155 (= e!2448653 (Cons!42100 (h!47520 lt!1382839) (++!10949 (t!329057 lt!1382839) (_2!23825 (v!39359 lt!1382831)))))))

(assert (= (and d!1172337 c!686497) b!3955154))

(assert (= (and d!1172337 (not c!686497)) b!3955155))

(assert (= (and d!1172337 res!1600488) b!3955156))

(assert (= (and b!3955156 res!1600487) b!3955157))

(declare-fun m!4523915 () Bool)

(assert (=> b!3955156 m!4523915))

(assert (=> b!3955156 m!4523471))

(assert (=> b!3955156 m!4523455))

(declare-fun m!4523917 () Bool)

(assert (=> d!1172337 m!4523917))

(declare-fun m!4523919 () Bool)

(assert (=> d!1172337 m!4523919))

(declare-fun m!4523921 () Bool)

(assert (=> d!1172337 m!4523921))

(declare-fun m!4523923 () Bool)

(assert (=> b!3955155 m!4523923))

(assert (=> b!3954702 d!1172337))

(declare-fun b!3955169 () Bool)

(declare-fun e!2448661 () Bool)

(assert (=> b!3955169 (= e!2448661 (>= (size!31535 lt!1382830) (size!31535 lt!1382839)))))

(declare-fun b!3955166 () Bool)

(declare-fun e!2448663 () Bool)

(declare-fun e!2448662 () Bool)

(assert (=> b!3955166 (= e!2448663 e!2448662)))

(declare-fun res!1600498 () Bool)

(assert (=> b!3955166 (=> (not res!1600498) (not e!2448662))))

(assert (=> b!3955166 (= res!1600498 (not ((_ is Nil!42100) lt!1382830)))))

(declare-fun b!3955168 () Bool)

(declare-fun tail!6127 (List!42224) List!42224)

(assert (=> b!3955168 (= e!2448662 (isPrefix!3685 (tail!6127 lt!1382839) (tail!6127 lt!1382830)))))

(declare-fun d!1172339 () Bool)

(assert (=> d!1172339 e!2448661))

(declare-fun res!1600500 () Bool)

(assert (=> d!1172339 (=> res!1600500 e!2448661)))

(declare-fun lt!1382971 () Bool)

(assert (=> d!1172339 (= res!1600500 (not lt!1382971))))

(assert (=> d!1172339 (= lt!1382971 e!2448663)))

(declare-fun res!1600497 () Bool)

(assert (=> d!1172339 (=> res!1600497 e!2448663)))

(assert (=> d!1172339 (= res!1600497 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172339 (= (isPrefix!3685 lt!1382839 lt!1382830) lt!1382971)))

(declare-fun b!3955167 () Bool)

(declare-fun res!1600499 () Bool)

(assert (=> b!3955167 (=> (not res!1600499) (not e!2448662))))

(declare-fun head!8401 (List!42224) C!23188)

(assert (=> b!3955167 (= res!1600499 (= (head!8401 lt!1382839) (head!8401 lt!1382830)))))

(assert (= (and d!1172339 (not res!1600497)) b!3955166))

(assert (= (and b!3955166 res!1600498) b!3955167))

(assert (= (and b!3955167 res!1600499) b!3955168))

(assert (= (and d!1172339 (not res!1600500)) b!3955169))

(declare-fun m!4523925 () Bool)

(assert (=> b!3955169 m!4523925))

(assert (=> b!3955169 m!4523471))

(declare-fun m!4523927 () Bool)

(assert (=> b!3955168 m!4523927))

(declare-fun m!4523929 () Bool)

(assert (=> b!3955168 m!4523929))

(assert (=> b!3955168 m!4523927))

(assert (=> b!3955168 m!4523929))

(declare-fun m!4523931 () Bool)

(assert (=> b!3955168 m!4523931))

(declare-fun m!4523933 () Bool)

(assert (=> b!3955167 m!4523933))

(declare-fun m!4523935 () Bool)

(assert (=> b!3955167 m!4523935))

(assert (=> b!3954702 d!1172339))

(declare-fun d!1172341 () Bool)

(assert (=> d!1172341 (ruleValid!2538 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))

(declare-fun lt!1382974 () Unit!60594)

(declare-fun choose!23606 (LexerInterface!6185 Rule!12992 List!42226) Unit!60594)

(assert (=> d!1172341 (= lt!1382974 (choose!23606 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))) rules!2768))))

(assert (=> d!1172341 (contains!8418 rules!2768 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172341 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1614 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))) rules!2768) lt!1382974)))

(declare-fun bs!587086 () Bool)

(assert (= bs!587086 d!1172341))

(assert (=> bs!587086 m!4523483))

(declare-fun m!4523937 () Bool)

(assert (=> bs!587086 m!4523937))

(assert (=> bs!587086 m!4523443))

(assert (=> b!3954702 d!1172341))

(declare-fun d!1172343 () Bool)

(declare-fun list!15631 (Conc!12807) List!42224)

(assert (=> d!1172343 (= (list!15630 (charsOf!4414 (_1!23825 (v!39359 lt!1382831)))) (list!15631 (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun bs!587087 () Bool)

(assert (= bs!587087 d!1172343))

(declare-fun m!4523939 () Bool)

(assert (=> bs!587087 m!4523939))

(assert (=> b!3954702 d!1172343))

(declare-fun d!1172345 () Bool)

(declare-fun res!1600505 () Bool)

(declare-fun e!2448666 () Bool)

(assert (=> d!1172345 (=> (not res!1600505) (not e!2448666))))

(declare-fun validRegex!5238 (Regex!11501) Bool)

(assert (=> d!1172345 (= res!1600505 (validRegex!5238 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172345 (= (ruleValid!2538 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) e!2448666)))

(declare-fun b!3955174 () Bool)

(declare-fun res!1600506 () Bool)

(assert (=> b!3955174 (=> (not res!1600506) (not e!2448666))))

(declare-fun nullable!4039 (Regex!11501) Bool)

(assert (=> b!3955174 (= res!1600506 (not (nullable!4039 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun b!3955175 () Bool)

(assert (=> b!3955175 (= e!2448666 (not (= (tag!7456 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (String!47849 ""))))))

(assert (= (and d!1172345 res!1600505) b!3955174))

(assert (= (and b!3955174 res!1600506) b!3955175))

(declare-fun m!4523941 () Bool)

(assert (=> d!1172345 m!4523941))

(declare-fun m!4523943 () Bool)

(assert (=> b!3955174 m!4523943))

(assert (=> b!3954702 d!1172345))

(declare-fun d!1172347 () Bool)

(assert (=> d!1172347 (isPrefix!3685 lt!1382839 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun lt!1382977 () Unit!60594)

(declare-fun choose!23608 (List!42224 List!42224) Unit!60594)

(assert (=> d!1172347 (= lt!1382977 (choose!23608 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172347 (= (lemmaConcatTwoListThenFirstIsPrefix!2544 lt!1382839 (_2!23825 (v!39359 lt!1382831))) lt!1382977)))

(declare-fun bs!587088 () Bool)

(assert (= bs!587088 d!1172347))

(assert (=> bs!587088 m!4523469))

(assert (=> bs!587088 m!4523469))

(declare-fun m!4523945 () Bool)

(assert (=> bs!587088 m!4523945))

(declare-fun m!4523947 () Bool)

(assert (=> bs!587088 m!4523947))

(assert (=> b!3954702 d!1172347))

(declare-fun d!1172349 () Bool)

(declare-fun lt!1382980 () List!42224)

(assert (=> d!1172349 (= (++!10949 lt!1382839 lt!1382980) lt!1382832)))

(declare-fun e!2448669 () List!42224)

(assert (=> d!1172349 (= lt!1382980 e!2448669)))

(declare-fun c!686500 () Bool)

(assert (=> d!1172349 (= c!686500 ((_ is Cons!42100) lt!1382839))))

(assert (=> d!1172349 (>= (size!31535 lt!1382832) (size!31535 lt!1382839))))

(assert (=> d!1172349 (= (getSuffix!2136 lt!1382832 lt!1382839) lt!1382980)))

(declare-fun b!3955180 () Bool)

(assert (=> b!3955180 (= e!2448669 (getSuffix!2136 (tail!6127 lt!1382832) (t!329057 lt!1382839)))))

(declare-fun b!3955181 () Bool)

(assert (=> b!3955181 (= e!2448669 lt!1382832)))

(assert (= (and d!1172349 c!686500) b!3955180))

(assert (= (and d!1172349 (not c!686500)) b!3955181))

(declare-fun m!4523949 () Bool)

(assert (=> d!1172349 m!4523949))

(assert (=> d!1172349 m!4523415))

(assert (=> d!1172349 m!4523471))

(declare-fun m!4523951 () Bool)

(assert (=> b!3955180 m!4523951))

(assert (=> b!3955180 m!4523951))

(declare-fun m!4523953 () Bool)

(assert (=> b!3955180 m!4523953))

(assert (=> b!3954702 d!1172349))

(declare-fun d!1172351 () Bool)

(declare-fun fromListB!2244 (List!42224) BalanceConc!25208)

(assert (=> d!1172351 (= (seqFromList!4855 lt!1382839) (fromListB!2244 lt!1382839))))

(declare-fun bs!587089 () Bool)

(assert (= bs!587089 d!1172351))

(declare-fun m!4523955 () Bool)

(assert (=> bs!587089 m!4523955))

(assert (=> b!3954702 d!1172351))

(declare-fun b!3955182 () Bool)

(declare-fun e!2448670 () tuple2!41384)

(assert (=> b!3955182 (= e!2448670 (tuple2!41385 Nil!42101 (_2!23825 (v!39359 lt!1382831))))))

(declare-fun b!3955183 () Bool)

(declare-fun e!2448671 () Bool)

(declare-fun lt!1382983 () tuple2!41384)

(assert (=> b!3955183 (= e!2448671 (not (isEmpty!25160 (_1!23826 lt!1382983))))))

(declare-fun d!1172353 () Bool)

(declare-fun e!2448672 () Bool)

(assert (=> d!1172353 e!2448672))

(declare-fun c!686501 () Bool)

(assert (=> d!1172353 (= c!686501 (> (size!31537 (_1!23826 lt!1382983)) 0))))

(assert (=> d!1172353 (= lt!1382983 e!2448670)))

(declare-fun c!686502 () Bool)

(declare-fun lt!1382981 () Option!9016)

(assert (=> d!1172353 (= c!686502 ((_ is Some!9015) lt!1382981))))

(assert (=> d!1172353 (= lt!1382981 (maxPrefix!3489 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172353 (= (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382831))) lt!1382983)))

(declare-fun b!3955184 () Bool)

(assert (=> b!3955184 (= e!2448672 e!2448671)))

(declare-fun res!1600507 () Bool)

(assert (=> b!3955184 (= res!1600507 (< (size!31535 (_2!23826 lt!1382983)) (size!31535 (_2!23825 (v!39359 lt!1382831)))))))

(assert (=> b!3955184 (=> (not res!1600507) (not e!2448671))))

(declare-fun b!3955185 () Bool)

(declare-fun lt!1382982 () tuple2!41384)

(assert (=> b!3955185 (= e!2448670 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1382981)) (_1!23826 lt!1382982)) (_2!23826 lt!1382982)))))

(assert (=> b!3955185 (= lt!1382982 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382981))))))

(declare-fun b!3955186 () Bool)

(assert (=> b!3955186 (= e!2448672 (= (_2!23826 lt!1382983) (_2!23825 (v!39359 lt!1382831))))))

(assert (= (and d!1172353 c!686502) b!3955185))

(assert (= (and d!1172353 (not c!686502)) b!3955182))

(assert (= (and d!1172353 c!686501) b!3955184))

(assert (= (and d!1172353 (not c!686501)) b!3955186))

(assert (= (and b!3955184 res!1600507) b!3955183))

(declare-fun m!4523957 () Bool)

(assert (=> b!3955183 m!4523957))

(declare-fun m!4523959 () Bool)

(assert (=> d!1172353 m!4523959))

(declare-fun m!4523961 () Bool)

(assert (=> d!1172353 m!4523961))

(declare-fun m!4523963 () Bool)

(assert (=> b!3955184 m!4523963))

(assert (=> b!3955184 m!4523455))

(declare-fun m!4523965 () Bool)

(assert (=> b!3955185 m!4523965))

(assert (=> b!3954702 d!1172353))

(declare-fun d!1172355 () Bool)

(assert (=> d!1172355 (= (size!31534 (_1!23825 (v!39359 lt!1382831))) (size!31535 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun Unit!60597 () Unit!60594)

(assert (=> d!1172355 (= (lemmaCharactersSize!1249 (_1!23825 (v!39359 lt!1382831))) Unit!60597)))

(declare-fun bs!587090 () Bool)

(assert (= bs!587090 d!1172355))

(assert (=> bs!587090 m!4523491))

(assert (=> b!3954702 d!1172355))

(declare-fun d!1172357 () Bool)

(declare-fun lt!1382986 () BalanceConc!25208)

(assert (=> d!1172357 (= (list!15630 lt!1382986) (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172357 (= lt!1382986 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))))

(assert (=> d!1172357 (= (charsOf!4414 (_1!23825 (v!39359 lt!1382831))) lt!1382986)))

(declare-fun b_lambda!115695 () Bool)

(assert (=> (not b_lambda!115695) (not d!1172357)))

(declare-fun t!329139 () Bool)

(declare-fun tb!238179 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329139) tb!238179))

(declare-fun b!3955187 () Bool)

(declare-fun e!2448673 () Bool)

(declare-fun tp!1205301 () Bool)

(assert (=> b!3955187 (= e!2448673 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))) tp!1205301))))

(declare-fun result!288456 () Bool)

(assert (=> tb!238179 (= result!288456 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))) e!2448673))))

(assert (= tb!238179 b!3955187))

(declare-fun m!4523967 () Bool)

(assert (=> b!3955187 m!4523967))

(declare-fun m!4523969 () Bool)

(assert (=> tb!238179 m!4523969))

(assert (=> d!1172357 t!329139))

(declare-fun b_and!303355 () Bool)

(assert (= b_and!303307 (and (=> t!329139 result!288456) b_and!303355)))

(declare-fun t!329141 () Bool)

(declare-fun tb!238181 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329141) tb!238181))

(declare-fun result!288458 () Bool)

(assert (= result!288458 result!288456))

(assert (=> d!1172357 t!329141))

(declare-fun b_and!303357 () Bool)

(assert (= b_and!303309 (and (=> t!329141 result!288458) b_and!303357)))

(declare-fun t!329143 () Bool)

(declare-fun tb!238183 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329143) tb!238183))

(declare-fun result!288460 () Bool)

(assert (= result!288460 result!288456))

(assert (=> d!1172357 t!329143))

(declare-fun b_and!303359 () Bool)

(assert (= b_and!303311 (and (=> t!329143 result!288460) b_and!303359)))

(declare-fun m!4523971 () Bool)

(assert (=> d!1172357 m!4523971))

(declare-fun m!4523973 () Bool)

(assert (=> d!1172357 m!4523973))

(assert (=> b!3954702 d!1172357))

(declare-fun d!1172359 () Bool)

(declare-fun lt!1382987 () Int)

(assert (=> d!1172359 (>= lt!1382987 0)))

(declare-fun e!2448674 () Int)

(assert (=> d!1172359 (= lt!1382987 e!2448674)))

(declare-fun c!686503 () Bool)

(assert (=> d!1172359 (= c!686503 ((_ is Nil!42100) suffix!1176))))

(assert (=> d!1172359 (= (size!31535 suffix!1176) lt!1382987)))

(declare-fun b!3955188 () Bool)

(assert (=> b!3955188 (= e!2448674 0)))

(declare-fun b!3955189 () Bool)

(assert (=> b!3955189 (= e!2448674 (+ 1 (size!31535 (t!329057 suffix!1176))))))

(assert (= (and d!1172359 c!686503) b!3955188))

(assert (= (and d!1172359 (not c!686503)) b!3955189))

(declare-fun m!4523975 () Bool)

(assert (=> b!3955189 m!4523975))

(assert (=> b!3954723 d!1172359))

(declare-fun d!1172361 () Bool)

(declare-fun lt!1382988 () Int)

(assert (=> d!1172361 (>= lt!1382988 0)))

(declare-fun e!2448675 () Int)

(assert (=> d!1172361 (= lt!1382988 e!2448675)))

(declare-fun c!686504 () Bool)

(assert (=> d!1172361 (= c!686504 ((_ is Nil!42100) (_2!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172361 (= (size!31535 (_2!23825 (v!39359 lt!1382831))) lt!1382988)))

(declare-fun b!3955190 () Bool)

(assert (=> b!3955190 (= e!2448675 0)))

(declare-fun b!3955191 () Bool)

(assert (=> b!3955191 (= e!2448675 (+ 1 (size!31535 (t!329057 (_2!23825 (v!39359 lt!1382831))))))))

(assert (= (and d!1172361 c!686504) b!3955190))

(assert (= (and d!1172361 (not c!686504)) b!3955191))

(declare-fun m!4523977 () Bool)

(assert (=> b!3955191 m!4523977))

(assert (=> b!3954723 d!1172361))

(declare-fun d!1172363 () Bool)

(declare-fun res!1600508 () Bool)

(declare-fun e!2448676 () Bool)

(assert (=> d!1172363 (=> (not res!1600508) (not e!2448676))))

(assert (=> d!1172363 (= res!1600508 (not (isEmpty!25161 (originalCharacters!7196 (h!47521 prefixTokens!80)))))))

(assert (=> d!1172363 (= (inv!56325 (h!47521 prefixTokens!80)) e!2448676)))

(declare-fun b!3955192 () Bool)

(declare-fun res!1600509 () Bool)

(assert (=> b!3955192 (=> (not res!1600509) (not e!2448676))))

(assert (=> b!3955192 (= res!1600509 (= (originalCharacters!7196 (h!47521 prefixTokens!80)) (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(declare-fun b!3955193 () Bool)

(assert (=> b!3955193 (= e!2448676 (= (size!31534 (h!47521 prefixTokens!80)) (size!31535 (originalCharacters!7196 (h!47521 prefixTokens!80)))))))

(assert (= (and d!1172363 res!1600508) b!3955192))

(assert (= (and b!3955192 res!1600509) b!3955193))

(declare-fun b_lambda!115697 () Bool)

(assert (=> (not b_lambda!115697) (not b!3955192)))

(declare-fun t!329145 () Bool)

(declare-fun tb!238185 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329145) tb!238185))

(declare-fun b!3955194 () Bool)

(declare-fun e!2448677 () Bool)

(declare-fun tp!1205302 () Bool)

(assert (=> b!3955194 (= e!2448677 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))) tp!1205302))))

(declare-fun result!288462 () Bool)

(assert (=> tb!238185 (= result!288462 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))) e!2448677))))

(assert (= tb!238185 b!3955194))

(declare-fun m!4523979 () Bool)

(assert (=> b!3955194 m!4523979))

(declare-fun m!4523981 () Bool)

(assert (=> tb!238185 m!4523981))

(assert (=> b!3955192 t!329145))

(declare-fun b_and!303361 () Bool)

(assert (= b_and!303355 (and (=> t!329145 result!288462) b_and!303361)))

(declare-fun tb!238187 () Bool)

(declare-fun t!329147 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329147) tb!238187))

(declare-fun result!288464 () Bool)

(assert (= result!288464 result!288462))

(assert (=> b!3955192 t!329147))

(declare-fun b_and!303363 () Bool)

(assert (= b_and!303357 (and (=> t!329147 result!288464) b_and!303363)))

(declare-fun tb!238189 () Bool)

(declare-fun t!329149 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329149) tb!238189))

(declare-fun result!288466 () Bool)

(assert (= result!288466 result!288462))

(assert (=> b!3955192 t!329149))

(declare-fun b_and!303365 () Bool)

(assert (= b_and!303359 (and (=> t!329149 result!288466) b_and!303365)))

(declare-fun m!4523983 () Bool)

(assert (=> d!1172363 m!4523983))

(declare-fun m!4523985 () Bool)

(assert (=> b!3955192 m!4523985))

(assert (=> b!3955192 m!4523985))

(declare-fun m!4523987 () Bool)

(assert (=> b!3955192 m!4523987))

(declare-fun m!4523989 () Bool)

(assert (=> b!3955193 m!4523989))

(assert (=> b!3954722 d!1172363))

(declare-fun d!1172365 () Bool)

(assert (=> d!1172365 (= (isEmpty!25160 prefixTokens!80) ((_ is Nil!42101) prefixTokens!80))))

(assert (=> b!3954705 d!1172365))

(declare-fun d!1172367 () Bool)

(assert (=> d!1172367 (= (inv!56321 (tag!7456 (rule!9566 (h!47521 suffixTokens!72)))) (= (mod (str.len (value!208619 (tag!7456 (rule!9566 (h!47521 suffixTokens!72))))) 2) 0))))

(assert (=> b!3954704 d!1172367))

(declare-fun d!1172369 () Bool)

(declare-fun res!1600510 () Bool)

(declare-fun e!2448678 () Bool)

(assert (=> d!1172369 (=> (not res!1600510) (not e!2448678))))

(assert (=> d!1172369 (= res!1600510 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))))))

(assert (=> d!1172369 (= (inv!56324 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) e!2448678)))

(declare-fun b!3955195 () Bool)

(assert (=> b!3955195 (= e!2448678 (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))))))

(assert (= (and d!1172369 res!1600510) b!3955195))

(declare-fun m!4523991 () Bool)

(assert (=> d!1172369 m!4523991))

(declare-fun m!4523993 () Bool)

(assert (=> b!3955195 m!4523993))

(assert (=> b!3954704 d!1172369))

(declare-fun b!3955224 () Bool)

(declare-fun res!1600533 () Bool)

(declare-fun e!2448693 () Bool)

(assert (=> b!3955224 (=> (not res!1600533) (not e!2448693))))

(assert (=> b!3955224 (= res!1600533 (isEmpty!25161 (tail!6127 lt!1382839)))))

(declare-fun b!3955225 () Bool)

(declare-fun res!1600528 () Bool)

(declare-fun e!2448696 () Bool)

(assert (=> b!3955225 (=> res!1600528 e!2448696)))

(assert (=> b!3955225 (= res!1600528 (not (isEmpty!25161 (tail!6127 lt!1382839))))))

(declare-fun b!3955226 () Bool)

(declare-fun e!2448694 () Bool)

(declare-fun derivativeStep!3463 (Regex!11501 C!23188) Regex!11501)

(assert (=> b!3955226 (= e!2448694 (matchR!5522 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)) (tail!6127 lt!1382839)))))

(declare-fun b!3955227 () Bool)

(declare-fun e!2448697 () Bool)

(declare-fun lt!1382991 () Bool)

(declare-fun call!285288 () Bool)

(assert (=> b!3955227 (= e!2448697 (= lt!1382991 call!285288))))

(declare-fun b!3955229 () Bool)

(assert (=> b!3955229 (= e!2448693 (= (head!8401 lt!1382839) (c!686412 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun bm!285283 () Bool)

(assert (=> bm!285283 (= call!285288 (isEmpty!25161 lt!1382839))))

(declare-fun b!3955230 () Bool)

(declare-fun e!2448699 () Bool)

(assert (=> b!3955230 (= e!2448699 (not lt!1382991))))

(declare-fun b!3955231 () Bool)

(declare-fun res!1600532 () Bool)

(declare-fun e!2448698 () Bool)

(assert (=> b!3955231 (=> res!1600532 e!2448698)))

(assert (=> b!3955231 (= res!1600532 (not ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(assert (=> b!3955231 (= e!2448699 e!2448698)))

(declare-fun b!3955232 () Bool)

(assert (=> b!3955232 (= e!2448697 e!2448699)))

(declare-fun c!686511 () Bool)

(assert (=> b!3955232 (= c!686511 ((_ is EmptyLang!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3955233 () Bool)

(declare-fun res!1600534 () Bool)

(assert (=> b!3955233 (=> (not res!1600534) (not e!2448693))))

(assert (=> b!3955233 (= res!1600534 (not call!285288))))

(declare-fun d!1172371 () Bool)

(assert (=> d!1172371 e!2448697))

(declare-fun c!686512 () Bool)

(assert (=> d!1172371 (= c!686512 ((_ is EmptyExpr!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172371 (= lt!1382991 e!2448694)))

(declare-fun c!686513 () Bool)

(assert (=> d!1172371 (= c!686513 (isEmpty!25161 lt!1382839))))

(assert (=> d!1172371 (validRegex!5238 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(assert (=> d!1172371 (= (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1382839) lt!1382991)))

(declare-fun b!3955228 () Bool)

(declare-fun e!2448695 () Bool)

(assert (=> b!3955228 (= e!2448698 e!2448695)))

(declare-fun res!1600529 () Bool)

(assert (=> b!3955228 (=> (not res!1600529) (not e!2448695))))

(assert (=> b!3955228 (= res!1600529 (not lt!1382991))))

(declare-fun b!3955234 () Bool)

(assert (=> b!3955234 (= e!2448694 (nullable!4039 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3955235 () Bool)

(assert (=> b!3955235 (= e!2448695 e!2448696)))

(declare-fun res!1600527 () Bool)

(assert (=> b!3955235 (=> res!1600527 e!2448696)))

(assert (=> b!3955235 (= res!1600527 call!285288)))

(declare-fun b!3955236 () Bool)

(declare-fun res!1600530 () Bool)

(assert (=> b!3955236 (=> res!1600530 e!2448698)))

(assert (=> b!3955236 (= res!1600530 e!2448693)))

(declare-fun res!1600531 () Bool)

(assert (=> b!3955236 (=> (not res!1600531) (not e!2448693))))

(assert (=> b!3955236 (= res!1600531 lt!1382991)))

(declare-fun b!3955237 () Bool)

(assert (=> b!3955237 (= e!2448696 (not (= (head!8401 lt!1382839) (c!686412 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))))

(assert (= (and d!1172371 c!686513) b!3955234))

(assert (= (and d!1172371 (not c!686513)) b!3955226))

(assert (= (and d!1172371 c!686512) b!3955227))

(assert (= (and d!1172371 (not c!686512)) b!3955232))

(assert (= (and b!3955232 c!686511) b!3955230))

(assert (= (and b!3955232 (not c!686511)) b!3955231))

(assert (= (and b!3955231 (not res!1600532)) b!3955236))

(assert (= (and b!3955236 res!1600531) b!3955233))

(assert (= (and b!3955233 res!1600534) b!3955224))

(assert (= (and b!3955224 res!1600533) b!3955229))

(assert (= (and b!3955236 (not res!1600530)) b!3955228))

(assert (= (and b!3955228 res!1600529) b!3955235))

(assert (= (and b!3955235 (not res!1600527)) b!3955225))

(assert (= (and b!3955225 (not res!1600528)) b!3955237))

(assert (= (or b!3955227 b!3955235 b!3955233) bm!285283))

(assert (=> b!3955237 m!4523933))

(assert (=> b!3955224 m!4523927))

(assert (=> b!3955224 m!4523927))

(declare-fun m!4523995 () Bool)

(assert (=> b!3955224 m!4523995))

(assert (=> b!3955234 m!4523943))

(assert (=> d!1172371 m!4523495))

(assert (=> d!1172371 m!4523941))

(assert (=> b!3955226 m!4523933))

(assert (=> b!3955226 m!4523933))

(declare-fun m!4523997 () Bool)

(assert (=> b!3955226 m!4523997))

(assert (=> b!3955226 m!4523927))

(assert (=> b!3955226 m!4523997))

(assert (=> b!3955226 m!4523927))

(declare-fun m!4523999 () Bool)

(assert (=> b!3955226 m!4523999))

(assert (=> b!3955225 m!4523927))

(assert (=> b!3955225 m!4523927))

(assert (=> b!3955225 m!4523995))

(assert (=> b!3955229 m!4523933))

(assert (=> bm!285283 m!4523495))

(assert (=> b!3954725 d!1172371))

(declare-fun d!1172373 () Bool)

(assert (=> d!1172373 (= (inv!56321 (tag!7456 (h!47522 rules!2768))) (= (mod (str.len (value!208619 (tag!7456 (h!47522 rules!2768)))) 2) 0))))

(assert (=> b!3954703 d!1172373))

(declare-fun d!1172375 () Bool)

(declare-fun res!1600535 () Bool)

(declare-fun e!2448700 () Bool)

(assert (=> d!1172375 (=> (not res!1600535) (not e!2448700))))

(assert (=> d!1172375 (= res!1600535 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))))))

(assert (=> d!1172375 (= (inv!56324 (transformation!6596 (h!47522 rules!2768))) e!2448700)))

(declare-fun b!3955238 () Bool)

(assert (=> b!3955238 (= e!2448700 (equivClasses!2742 (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))))))

(assert (= (and d!1172375 res!1600535) b!3955238))

(declare-fun m!4524001 () Bool)

(assert (=> d!1172375 m!4524001))

(declare-fun m!4524003 () Bool)

(assert (=> b!3955238 m!4524003))

(assert (=> b!3954703 d!1172375))

(declare-fun b!3955243 () Bool)

(declare-fun e!2448703 () Bool)

(declare-fun tp!1205305 () Bool)

(assert (=> b!3955243 (= e!2448703 (and tp_is_empty!19973 tp!1205305))))

(assert (=> b!3954708 (= tp!1205212 e!2448703)))

(assert (= (and b!3954708 ((_ is Cons!42100) (originalCharacters!7196 (h!47521 suffixTokens!72)))) b!3955243))

(declare-fun b!3955257 () Bool)

(declare-fun b_free!108957 () Bool)

(declare-fun b_next!109661 () Bool)

(assert (=> b!3955257 (= b_free!108957 (not b_next!109661))))

(declare-fun t!329151 () Bool)

(declare-fun tb!238191 () Bool)

(assert (=> (and b!3955257 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329151) tb!238191))

(declare-fun result!288472 () Bool)

(assert (= result!288472 result!288386))

(assert (=> d!1172205 t!329151))

(assert (=> d!1172333 t!329151))

(declare-fun b_and!303367 () Bool)

(declare-fun tp!1205320 () Bool)

(assert (=> b!3955257 (= tp!1205320 (and (=> t!329151 result!288472) b_and!303367))))

(declare-fun b_free!108959 () Bool)

(declare-fun b_next!109663 () Bool)

(assert (=> b!3955257 (= b_free!108959 (not b_next!109663))))

(declare-fun tb!238193 () Bool)

(declare-fun t!329153 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329153) tb!238193))

(declare-fun result!288474 () Bool)

(assert (= result!288474 result!288378))

(assert (=> d!1172205 t!329153))

(declare-fun t!329155 () Bool)

(declare-fun tb!238195 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329155) tb!238195))

(declare-fun result!288476 () Bool)

(assert (= result!288476 result!288394))

(assert (=> b!3954861 t!329155))

(declare-fun tb!238197 () Bool)

(declare-fun t!329157 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329157) tb!238197))

(declare-fun result!288478 () Bool)

(assert (= result!288478 result!288456))

(assert (=> d!1172357 t!329157))

(declare-fun tb!238199 () Bool)

(declare-fun t!329159 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329159) tb!238199))

(declare-fun result!288480 () Bool)

(assert (= result!288480 result!288462))

(assert (=> b!3955192 t!329159))

(declare-fun tp!1205316 () Bool)

(declare-fun b_and!303369 () Bool)

(assert (=> b!3955257 (= tp!1205316 (and (=> t!329153 result!288474) (=> t!329155 result!288476) (=> t!329157 result!288478) (=> t!329159 result!288480) b_and!303369))))

(declare-fun e!2448716 () Bool)

(assert (=> b!3955257 (= e!2448716 (and tp!1205320 tp!1205316))))

(declare-fun e!2448720 () Bool)

(assert (=> b!3954717 (= tp!1205225 e!2448720)))

(declare-fun b!3955254 () Bool)

(declare-fun tp!1205319 () Bool)

(declare-fun e!2448718 () Bool)

(assert (=> b!3955254 (= e!2448720 (and (inv!56325 (h!47521 (t!329058 suffixTokens!72))) e!2448718 tp!1205319))))

(declare-fun b!3955255 () Bool)

(declare-fun e!2448721 () Bool)

(declare-fun tp!1205317 () Bool)

(assert (=> b!3955255 (= e!2448718 (and (inv!21 (value!208620 (h!47521 (t!329058 suffixTokens!72)))) e!2448721 tp!1205317))))

(declare-fun tp!1205318 () Bool)

(declare-fun b!3955256 () Bool)

(assert (=> b!3955256 (= e!2448721 (and tp!1205318 (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) e!2448716))))

(assert (= b!3955256 b!3955257))

(assert (= b!3955255 b!3955256))

(assert (= b!3955254 b!3955255))

(assert (= (and b!3954717 ((_ is Cons!42101) (t!329058 suffixTokens!72))) b!3955254))

(declare-fun m!4524005 () Bool)

(assert (=> b!3955254 m!4524005))

(declare-fun m!4524007 () Bool)

(assert (=> b!3955255 m!4524007))

(declare-fun m!4524009 () Bool)

(assert (=> b!3955256 m!4524009))

(declare-fun m!4524011 () Bool)

(assert (=> b!3955256 m!4524011))

(declare-fun b!3955270 () Bool)

(declare-fun e!2448724 () Bool)

(declare-fun tp!1205333 () Bool)

(assert (=> b!3955270 (= e!2448724 tp!1205333)))

(declare-fun b!3955271 () Bool)

(declare-fun tp!1205331 () Bool)

(declare-fun tp!1205332 () Bool)

(assert (=> b!3955271 (= e!2448724 (and tp!1205331 tp!1205332))))

(assert (=> b!3954706 (= tp!1205224 e!2448724)))

(declare-fun b!3955268 () Bool)

(assert (=> b!3955268 (= e!2448724 tp_is_empty!19973)))

(declare-fun b!3955269 () Bool)

(declare-fun tp!1205335 () Bool)

(declare-fun tp!1205334 () Bool)

(assert (=> b!3955269 (= e!2448724 (and tp!1205335 tp!1205334))))

(assert (= (and b!3954706 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (h!47521 prefixTokens!80))))) b!3955268))

(assert (= (and b!3954706 ((_ is Concat!18328) (regex!6596 (rule!9566 (h!47521 prefixTokens!80))))) b!3955269))

(assert (= (and b!3954706 ((_ is Star!11501) (regex!6596 (rule!9566 (h!47521 prefixTokens!80))))) b!3955270))

(assert (= (and b!3954706 ((_ is Union!11501) (regex!6596 (rule!9566 (h!47521 prefixTokens!80))))) b!3955271))

(declare-fun b!3955282 () Bool)

(declare-fun b_free!108961 () Bool)

(declare-fun b_next!109665 () Bool)

(assert (=> b!3955282 (= b_free!108961 (not b_next!109665))))

(declare-fun t!329161 () Bool)

(declare-fun tb!238201 () Bool)

(assert (=> (and b!3955282 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329161) tb!238201))

(declare-fun result!288486 () Bool)

(assert (= result!288486 result!288386))

(assert (=> d!1172205 t!329161))

(assert (=> d!1172333 t!329161))

(declare-fun tp!1205345 () Bool)

(declare-fun b_and!303371 () Bool)

(assert (=> b!3955282 (= tp!1205345 (and (=> t!329161 result!288486) b_and!303371))))

(declare-fun b_free!108963 () Bool)

(declare-fun b_next!109667 () Bool)

(assert (=> b!3955282 (= b_free!108963 (not b_next!109667))))

(declare-fun t!329163 () Bool)

(declare-fun tb!238203 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329163) tb!238203))

(declare-fun result!288488 () Bool)

(assert (= result!288488 result!288378))

(assert (=> d!1172205 t!329163))

(declare-fun t!329165 () Bool)

(declare-fun tb!238205 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329165) tb!238205))

(declare-fun result!288490 () Bool)

(assert (= result!288490 result!288394))

(assert (=> b!3954861 t!329165))

(declare-fun t!329167 () Bool)

(declare-fun tb!238207 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329167) tb!238207))

(declare-fun result!288492 () Bool)

(assert (= result!288492 result!288456))

(assert (=> d!1172357 t!329167))

(declare-fun tb!238209 () Bool)

(declare-fun t!329169 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329169) tb!238209))

(declare-fun result!288494 () Bool)

(assert (= result!288494 result!288462))

(assert (=> b!3955192 t!329169))

(declare-fun tp!1205347 () Bool)

(declare-fun b_and!303373 () Bool)

(assert (=> b!3955282 (= tp!1205347 (and (=> t!329163 result!288488) (=> t!329165 result!288490) (=> t!329167 result!288492) (=> t!329169 result!288494) b_and!303373))))

(declare-fun e!2448736 () Bool)

(assert (=> b!3955282 (= e!2448736 (and tp!1205345 tp!1205347))))

(declare-fun tp!1205346 () Bool)

(declare-fun b!3955281 () Bool)

(declare-fun e!2448735 () Bool)

(assert (=> b!3955281 (= e!2448735 (and tp!1205346 (inv!56321 (tag!7456 (h!47522 (t!329059 rules!2768)))) (inv!56324 (transformation!6596 (h!47522 (t!329059 rules!2768)))) e!2448736))))

(declare-fun b!3955280 () Bool)

(declare-fun e!2448733 () Bool)

(declare-fun tp!1205344 () Bool)

(assert (=> b!3955280 (= e!2448733 (and e!2448735 tp!1205344))))

(assert (=> b!3954731 (= tp!1205221 e!2448733)))

(assert (= b!3955281 b!3955282))

(assert (= b!3955280 b!3955281))

(assert (= (and b!3954731 ((_ is Cons!42102) (t!329059 rules!2768))) b!3955280))

(declare-fun m!4524013 () Bool)

(assert (=> b!3955281 m!4524013))

(declare-fun m!4524015 () Bool)

(assert (=> b!3955281 m!4524015))

(declare-fun b!3955283 () Bool)

(declare-fun e!2448737 () Bool)

(declare-fun tp!1205348 () Bool)

(assert (=> b!3955283 (= e!2448737 (and tp_is_empty!19973 tp!1205348))))

(assert (=> b!3954709 (= tp!1205214 e!2448737)))

(assert (= (and b!3954709 ((_ is Cons!42100) (t!329057 suffix!1176))) b!3955283))

(declare-fun b!3955284 () Bool)

(declare-fun e!2448738 () Bool)

(declare-fun tp!1205349 () Bool)

(assert (=> b!3955284 (= e!2448738 (and tp_is_empty!19973 tp!1205349))))

(assert (=> b!3954719 (= tp!1205215 e!2448738)))

(assert (= (and b!3954719 ((_ is Cons!42100) (originalCharacters!7196 (h!47521 prefixTokens!80)))) b!3955284))

(declare-fun b!3955285 () Bool)

(declare-fun e!2448739 () Bool)

(declare-fun tp!1205350 () Bool)

(assert (=> b!3955285 (= e!2448739 (and tp_is_empty!19973 tp!1205350))))

(assert (=> b!3954724 (= tp!1205216 e!2448739)))

(assert (= (and b!3954724 ((_ is Cons!42100) (t!329057 prefix!426))) b!3955285))

(declare-fun b!3955286 () Bool)

(declare-fun e!2448740 () Bool)

(declare-fun tp!1205351 () Bool)

(assert (=> b!3955286 (= e!2448740 (and tp_is_empty!19973 tp!1205351))))

(assert (=> b!3954712 (= tp!1205223 e!2448740)))

(assert (= (and b!3954712 ((_ is Cons!42100) (t!329057 suffixResult!91))) b!3955286))

(declare-fun b!3955290 () Bool)

(declare-fun b_free!108965 () Bool)

(declare-fun b_next!109669 () Bool)

(assert (=> b!3955290 (= b_free!108965 (not b_next!109669))))

(declare-fun t!329171 () Bool)

(declare-fun tb!238211 () Bool)

(assert (=> (and b!3955290 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329171) tb!238211))

(declare-fun result!288496 () Bool)

(assert (= result!288496 result!288386))

(assert (=> d!1172205 t!329171))

(assert (=> d!1172333 t!329171))

(declare-fun tp!1205356 () Bool)

(declare-fun b_and!303375 () Bool)

(assert (=> b!3955290 (= tp!1205356 (and (=> t!329171 result!288496) b_and!303375))))

(declare-fun b_free!108967 () Bool)

(declare-fun b_next!109671 () Bool)

(assert (=> b!3955290 (= b_free!108967 (not b_next!109671))))

(declare-fun t!329173 () Bool)

(declare-fun tb!238213 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329173) tb!238213))

(declare-fun result!288498 () Bool)

(assert (= result!288498 result!288378))

(assert (=> d!1172205 t!329173))

(declare-fun tb!238215 () Bool)

(declare-fun t!329175 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329175) tb!238215))

(declare-fun result!288500 () Bool)

(assert (= result!288500 result!288394))

(assert (=> b!3954861 t!329175))

(declare-fun t!329177 () Bool)

(declare-fun tb!238217 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329177) tb!238217))

(declare-fun result!288502 () Bool)

(assert (= result!288502 result!288456))

(assert (=> d!1172357 t!329177))

(declare-fun t!329179 () Bool)

(declare-fun tb!238219 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329179) tb!238219))

(declare-fun result!288504 () Bool)

(assert (= result!288504 result!288462))

(assert (=> b!3955192 t!329179))

(declare-fun tp!1205352 () Bool)

(declare-fun b_and!303377 () Bool)

(assert (=> b!3955290 (= tp!1205352 (and (=> t!329173 result!288498) (=> t!329175 result!288500) (=> t!329177 result!288502) (=> t!329179 result!288504) b_and!303377))))

(declare-fun e!2448741 () Bool)

(assert (=> b!3955290 (= e!2448741 (and tp!1205356 tp!1205352))))

(declare-fun e!2448745 () Bool)

(assert (=> b!3954722 (= tp!1205211 e!2448745)))

(declare-fun e!2448743 () Bool)

(declare-fun tp!1205355 () Bool)

(declare-fun b!3955287 () Bool)

(assert (=> b!3955287 (= e!2448745 (and (inv!56325 (h!47521 (t!329058 prefixTokens!80))) e!2448743 tp!1205355))))

(declare-fun b!3955288 () Bool)

(declare-fun tp!1205353 () Bool)

(declare-fun e!2448746 () Bool)

(assert (=> b!3955288 (= e!2448743 (and (inv!21 (value!208620 (h!47521 (t!329058 prefixTokens!80)))) e!2448746 tp!1205353))))

(declare-fun tp!1205354 () Bool)

(declare-fun b!3955289 () Bool)

(assert (=> b!3955289 (= e!2448746 (and tp!1205354 (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) e!2448741))))

(assert (= b!3955289 b!3955290))

(assert (= b!3955288 b!3955289))

(assert (= b!3955287 b!3955288))

(assert (= (and b!3954722 ((_ is Cons!42101) (t!329058 prefixTokens!80))) b!3955287))

(declare-fun m!4524017 () Bool)

(assert (=> b!3955287 m!4524017))

(declare-fun m!4524019 () Bool)

(assert (=> b!3955288 m!4524019))

(declare-fun m!4524021 () Bool)

(assert (=> b!3955289 m!4524021))

(declare-fun m!4524023 () Bool)

(assert (=> b!3955289 m!4524023))

(declare-fun b!3955293 () Bool)

(declare-fun e!2448747 () Bool)

(declare-fun tp!1205359 () Bool)

(assert (=> b!3955293 (= e!2448747 tp!1205359)))

(declare-fun b!3955294 () Bool)

(declare-fun tp!1205357 () Bool)

(declare-fun tp!1205358 () Bool)

(assert (=> b!3955294 (= e!2448747 (and tp!1205357 tp!1205358))))

(assert (=> b!3954704 (= tp!1205219 e!2448747)))

(declare-fun b!3955291 () Bool)

(assert (=> b!3955291 (= e!2448747 tp_is_empty!19973)))

(declare-fun b!3955292 () Bool)

(declare-fun tp!1205361 () Bool)

(declare-fun tp!1205360 () Bool)

(assert (=> b!3955292 (= e!2448747 (and tp!1205361 tp!1205360))))

(assert (= (and b!3954704 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (h!47521 suffixTokens!72))))) b!3955291))

(assert (= (and b!3954704 ((_ is Concat!18328) (regex!6596 (rule!9566 (h!47521 suffixTokens!72))))) b!3955292))

(assert (= (and b!3954704 ((_ is Star!11501) (regex!6596 (rule!9566 (h!47521 suffixTokens!72))))) b!3955293))

(assert (= (and b!3954704 ((_ is Union!11501) (regex!6596 (rule!9566 (h!47521 suffixTokens!72))))) b!3955294))

(declare-fun b!3955297 () Bool)

(declare-fun e!2448748 () Bool)

(declare-fun tp!1205364 () Bool)

(assert (=> b!3955297 (= e!2448748 tp!1205364)))

(declare-fun b!3955298 () Bool)

(declare-fun tp!1205362 () Bool)

(declare-fun tp!1205363 () Bool)

(assert (=> b!3955298 (= e!2448748 (and tp!1205362 tp!1205363))))

(assert (=> b!3954703 (= tp!1205220 e!2448748)))

(declare-fun b!3955295 () Bool)

(assert (=> b!3955295 (= e!2448748 tp_is_empty!19973)))

(declare-fun b!3955296 () Bool)

(declare-fun tp!1205366 () Bool)

(declare-fun tp!1205365 () Bool)

(assert (=> b!3955296 (= e!2448748 (and tp!1205366 tp!1205365))))

(assert (= (and b!3954703 ((_ is ElementMatch!11501) (regex!6596 (h!47522 rules!2768)))) b!3955295))

(assert (= (and b!3954703 ((_ is Concat!18328) (regex!6596 (h!47522 rules!2768)))) b!3955296))

(assert (= (and b!3954703 ((_ is Star!11501) (regex!6596 (h!47522 rules!2768)))) b!3955297))

(assert (= (and b!3954703 ((_ is Union!11501) (regex!6596 (h!47522 rules!2768)))) b!3955298))

(declare-fun b_lambda!115699 () Bool)

(assert (= b_lambda!115697 (or (and b!3955290 b_free!108967 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))))) (and b!3955257 b_free!108959 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))))) (and b!3954701 b_free!108943 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))))) (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))))) (and b!3954707 b_free!108935) b_lambda!115699)))

(declare-fun b_lambda!115701 () Bool)

(assert (= b_lambda!115679 (or (and b!3955290 b_free!108967 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) (and b!3954707 b_free!108935 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) (and b!3954701 b_free!108943) (and b!3955257 b_free!108959 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b_lambda!115701)))

(check-sat (not b_next!109671) (not bm!285280) (not b!3955070) (not b!3955024) (not b!3955193) (not b!3954911) (not b!3955074) (not d!1172319) (not b!3955285) (not b!3955174) (not b_next!109647) (not b!3955195) (not b!3955055) (not b!3955191) (not d!1172329) (not b_next!109637) (not b!3955254) (not d!1172273) (not b!3955288) (not b!3954863) (not d!1172237) b_and!303353 b_and!303371 (not tb!238119) (not d!1172303) (not b!3955234) (not b!3955153) (not b!3955284) (not b!3955280) (not b!3955226) (not b!3955169) b_and!303369 (not d!1172371) b_and!303365 (not b!3955064) (not b!3954910) (not d!1172337) (not b!3955042) (not b!3955298) (not b!3955155) (not b!3955296) (not bm!285283) (not b_lambda!115701) (not b!3954991) (not tb!238179) (not b_next!109641) (not d!1172355) b_and!303367 (not b!3955168) b_and!303375 (not b!3955046) (not b!3955287) b_and!303361 (not b_next!109669) (not b_lambda!115677) (not d!1172375) (not b!3955072) (not b!3954847) tp_is_empty!19973 (not b!3955054) (not b!3954916) (not b!3955189) (not b!3955294) (not d!1172357) (not b!3955255) (not b!3955292) (not b!3955281) b_and!303363 (not b!3955187) (not d!1172229) (not d!1172349) (not b!3955185) (not b!3955135) (not b!3955256) (not b!3955058) (not b_lambda!115695) (not b!3955010) (not b!3955243) (not b!3954993) (not d!1172331) (not tb!238125) (not b_next!109661) (not b!3955237) (not b!3955224) (not b_next!109639) (not b!3955121) (not b!3955225) b_and!303373 (not b!3955283) b_and!303377 (not d!1172341) (not b!3954909) (not d!1172347) (not b_next!109645) (not b!3955134) (not b!3955271) (not b!3955180) (not d!1172343) (not b!3955023) (not b_next!109643) (not b!3954861) (not b!3955052) (not d!1172297) (not b!3954913) (not b_lambda!115699) (not b!3954914) (not d!1172205) (not d!1172241) (not b!3955269) (not d!1172351) (not b_next!109663) (not d!1172323) (not d!1172369) (not tb!238185) (not d!1172279) (not tb!238113) (not d!1172363) (not b!3955194) (not b!3955108) (not d!1172345) (not b!3955011) (not b!3954992) (not b_next!109665) (not b!3955293) (not b!3955297) (not b!3955229) (not b!3954862) (not b_next!109667) (not b!3955183) (not b!3955127) (not b!3954917) (not b!3955184) b_and!303351 (not b!3955289) (not b!3955133) (not b!3955270) b_and!303349 (not b_lambda!115689) (not b!3954912) (not b!3955156) (not b_lambda!115675) (not b!3955238) (not b!3955044) (not b!3955286) (not b!3955192) (not b!3955167) (not d!1172353))
(check-sat (not b_next!109671) (not b_next!109647) (not b_next!109637) (not b_next!109641) b_and!303367 (not b_next!109669) b_and!303363 (not b_next!109661) (not b_next!109643) (not b_next!109663) (not b_next!109665) (not b_next!109667) b_and!303351 b_and!303349 b_and!303353 b_and!303371 b_and!303369 b_and!303365 b_and!303375 b_and!303361 (not b_next!109639) b_and!303373 b_and!303377 (not b_next!109645))
(get-model)

(declare-fun d!1172539 () Bool)

(declare-fun lt!1383040 () Int)

(assert (=> d!1172539 (>= lt!1383040 0)))

(declare-fun e!2448881 () Int)

(assert (=> d!1172539 (= lt!1383040 e!2448881)))

(declare-fun c!686592 () Bool)

(assert (=> d!1172539 (= c!686592 ((_ is Nil!42100) (t!329057 suffix!1176)))))

(assert (=> d!1172539 (= (size!31535 (t!329057 suffix!1176)) lt!1383040)))

(declare-fun b!3955538 () Bool)

(assert (=> b!3955538 (= e!2448881 0)))

(declare-fun b!3955539 () Bool)

(assert (=> b!3955539 (= e!2448881 (+ 1 (size!31535 (t!329057 (t!329057 suffix!1176)))))))

(assert (= (and d!1172539 c!686592) b!3955538))

(assert (= (and d!1172539 (not c!686592)) b!3955539))

(declare-fun m!4524339 () Bool)

(assert (=> b!3955539 m!4524339))

(assert (=> b!3955189 d!1172539))

(declare-fun b!3955549 () Bool)

(declare-fun e!2448886 () List!42224)

(declare-fun e!2448887 () List!42224)

(assert (=> b!3955549 (= e!2448886 e!2448887)))

(declare-fun c!686598 () Bool)

(assert (=> b!3955549 (= c!686598 ((_ is Leaf!19812) (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3955550 () Bool)

(declare-fun list!15633 (IArray!25619) List!42224)

(assert (=> b!3955550 (= e!2448887 (list!15633 (xs!16113 (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun b!3955551 () Bool)

(assert (=> b!3955551 (= e!2448887 (++!10949 (list!15631 (left!31983 (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831)))))) (list!15631 (right!32313 (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831))))))))))

(declare-fun d!1172541 () Bool)

(declare-fun c!686597 () Bool)

(assert (=> d!1172541 (= c!686597 ((_ is Empty!12807) (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172541 (= (list!15631 (c!686413 (charsOf!4414 (_1!23825 (v!39359 lt!1382831))))) e!2448886)))

(declare-fun b!3955548 () Bool)

(assert (=> b!3955548 (= e!2448886 Nil!42100)))

(assert (= (and d!1172541 c!686597) b!3955548))

(assert (= (and d!1172541 (not c!686597)) b!3955549))

(assert (= (and b!3955549 c!686598) b!3955550))

(assert (= (and b!3955549 (not c!686598)) b!3955551))

(declare-fun m!4524341 () Bool)

(assert (=> b!3955550 m!4524341))

(declare-fun m!4524343 () Bool)

(assert (=> b!3955551 m!4524343))

(declare-fun m!4524345 () Bool)

(assert (=> b!3955551 m!4524345))

(assert (=> b!3955551 m!4524343))

(assert (=> b!3955551 m!4524345))

(declare-fun m!4524347 () Bool)

(assert (=> b!3955551 m!4524347))

(assert (=> d!1172343 d!1172541))

(declare-fun d!1172543 () Bool)

(declare-fun e!2448942 () Bool)

(assert (=> d!1172543 e!2448942))

(declare-fun res!1600671 () Bool)

(assert (=> d!1172543 (=> res!1600671 e!2448942)))

(declare-fun lt!1383092 () Option!9016)

(assert (=> d!1172543 (= res!1600671 (isEmpty!25163 lt!1383092))))

(declare-fun e!2448943 () Option!9016)

(assert (=> d!1172543 (= lt!1383092 e!2448943)))

(declare-fun c!686619 () Bool)

(declare-datatypes ((tuple2!41386 0))(
  ( (tuple2!41387 (_1!23827 List!42224) (_2!23827 List!42224)) )
))
(declare-fun lt!1383088 () tuple2!41386)

(assert (=> d!1172543 (= c!686619 (isEmpty!25161 (_1!23827 lt!1383088)))))

(declare-fun findLongestMatch!1198 (Regex!11501 List!42224) tuple2!41386)

(assert (=> d!1172543 (= lt!1383088 (findLongestMatch!1198 (regex!6596 (h!47522 rules!2768)) lt!1382832))))

(assert (=> d!1172543 (ruleValid!2538 thiss!20629 (h!47522 rules!2768))))

(assert (=> d!1172543 (= (maxPrefixOneRule!2539 thiss!20629 (h!47522 rules!2768) lt!1382832) lt!1383092)))

(declare-fun b!3955647 () Bool)

(declare-fun res!1600669 () Bool)

(declare-fun e!2448940 () Bool)

(assert (=> b!3955647 (=> (not res!1600669) (not e!2448940))))

(assert (=> b!3955647 (= res!1600669 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383092)))) (_2!23825 (get!13883 lt!1383092))) lt!1382832))))

(declare-fun b!3955648 () Bool)

(declare-fun e!2448941 () Bool)

(declare-fun findLongestMatchInner!1285 (Regex!11501 List!42224 Int List!42224 List!42224 Int) tuple2!41386)

(assert (=> b!3955648 (= e!2448941 (matchR!5522 (regex!6596 (h!47522 rules!2768)) (_1!23827 (findLongestMatchInner!1285 (regex!6596 (h!47522 rules!2768)) Nil!42100 (size!31535 Nil!42100) lt!1382832 lt!1382832 (size!31535 lt!1382832)))))))

(declare-fun b!3955649 () Bool)

(declare-fun size!31538 (BalanceConc!25208) Int)

(assert (=> b!3955649 (= e!2448943 (Some!9015 (tuple2!41383 (Token!12331 (apply!9827 (transformation!6596 (h!47522 rules!2768)) (seqFromList!4855 (_1!23827 lt!1383088))) (h!47522 rules!2768) (size!31538 (seqFromList!4855 (_1!23827 lt!1383088))) (_1!23827 lt!1383088)) (_2!23827 lt!1383088))))))

(declare-fun lt!1383090 () Unit!60594)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1258 (Regex!11501 List!42224) Unit!60594)

(assert (=> b!3955649 (= lt!1383090 (longestMatchIsAcceptedByMatchOrIsEmpty!1258 (regex!6596 (h!47522 rules!2768)) lt!1382832))))

(declare-fun res!1600673 () Bool)

(assert (=> b!3955649 (= res!1600673 (isEmpty!25161 (_1!23827 (findLongestMatchInner!1285 (regex!6596 (h!47522 rules!2768)) Nil!42100 (size!31535 Nil!42100) lt!1382832 lt!1382832 (size!31535 lt!1382832)))))))

(assert (=> b!3955649 (=> res!1600673 e!2448941)))

(assert (=> b!3955649 e!2448941))

(declare-fun lt!1383091 () Unit!60594)

(assert (=> b!3955649 (= lt!1383091 lt!1383090)))

(declare-fun lt!1383089 () Unit!60594)

(assert (=> b!3955649 (= lt!1383089 (lemmaSemiInverse!1794 (transformation!6596 (h!47522 rules!2768)) (seqFromList!4855 (_1!23827 lt!1383088))))))

(declare-fun b!3955650 () Bool)

(declare-fun res!1600668 () Bool)

(assert (=> b!3955650 (=> (not res!1600668) (not e!2448940))))

(assert (=> b!3955650 (= res!1600668 (= (value!208620 (_1!23825 (get!13883 lt!1383092))) (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1383092)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1383092)))))))))

(declare-fun b!3955651 () Bool)

(declare-fun res!1600667 () Bool)

(assert (=> b!3955651 (=> (not res!1600667) (not e!2448940))))

(assert (=> b!3955651 (= res!1600667 (= (rule!9566 (_1!23825 (get!13883 lt!1383092))) (h!47522 rules!2768)))))

(declare-fun b!3955652 () Bool)

(assert (=> b!3955652 (= e!2448943 None!9015)))

(declare-fun b!3955653 () Bool)

(declare-fun res!1600670 () Bool)

(assert (=> b!3955653 (=> (not res!1600670) (not e!2448940))))

(assert (=> b!3955653 (= res!1600670 (< (size!31535 (_2!23825 (get!13883 lt!1383092))) (size!31535 lt!1382832)))))

(declare-fun b!3955654 () Bool)

(assert (=> b!3955654 (= e!2448942 e!2448940)))

(declare-fun res!1600672 () Bool)

(assert (=> b!3955654 (=> (not res!1600672) (not e!2448940))))

(assert (=> b!3955654 (= res!1600672 (matchR!5522 (regex!6596 (h!47522 rules!2768)) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383092))))))))

(declare-fun b!3955655 () Bool)

(assert (=> b!3955655 (= e!2448940 (= (size!31534 (_1!23825 (get!13883 lt!1383092))) (size!31535 (originalCharacters!7196 (_1!23825 (get!13883 lt!1383092))))))))

(assert (= (and d!1172543 c!686619) b!3955652))

(assert (= (and d!1172543 (not c!686619)) b!3955649))

(assert (= (and b!3955649 (not res!1600673)) b!3955648))

(assert (= (and d!1172543 (not res!1600671)) b!3955654))

(assert (= (and b!3955654 res!1600672) b!3955647))

(assert (= (and b!3955647 res!1600669) b!3955653))

(assert (= (and b!3955653 res!1600670) b!3955651))

(assert (= (and b!3955651 res!1600667) b!3955650))

(assert (= (and b!3955650 res!1600668) b!3955655))

(declare-fun m!4524499 () Bool)

(assert (=> b!3955649 m!4524499))

(declare-fun m!4524503 () Bool)

(assert (=> b!3955649 m!4524503))

(assert (=> b!3955649 m!4523415))

(declare-fun m!4524505 () Bool)

(assert (=> b!3955649 m!4524505))

(declare-fun m!4524507 () Bool)

(assert (=> b!3955649 m!4524507))

(assert (=> b!3955649 m!4524499))

(declare-fun m!4524509 () Bool)

(assert (=> b!3955649 m!4524509))

(declare-fun m!4524513 () Bool)

(assert (=> b!3955649 m!4524513))

(assert (=> b!3955649 m!4524503))

(assert (=> b!3955649 m!4524499))

(declare-fun m!4524515 () Bool)

(assert (=> b!3955649 m!4524515))

(assert (=> b!3955649 m!4523415))

(assert (=> b!3955649 m!4524499))

(declare-fun m!4524517 () Bool)

(assert (=> b!3955649 m!4524517))

(assert (=> b!3955648 m!4524503))

(assert (=> b!3955648 m!4523415))

(assert (=> b!3955648 m!4524503))

(assert (=> b!3955648 m!4523415))

(assert (=> b!3955648 m!4524505))

(declare-fun m!4524523 () Bool)

(assert (=> b!3955648 m!4524523))

(declare-fun m!4524525 () Bool)

(assert (=> b!3955655 m!4524525))

(declare-fun m!4524527 () Bool)

(assert (=> b!3955655 m!4524527))

(assert (=> b!3955651 m!4524525))

(assert (=> b!3955653 m!4524525))

(declare-fun m!4524529 () Bool)

(assert (=> b!3955653 m!4524529))

(assert (=> b!3955653 m!4523415))

(declare-fun m!4524533 () Bool)

(assert (=> d!1172543 m!4524533))

(declare-fun m!4524535 () Bool)

(assert (=> d!1172543 m!4524535))

(declare-fun m!4524537 () Bool)

(assert (=> d!1172543 m!4524537))

(declare-fun m!4524539 () Bool)

(assert (=> d!1172543 m!4524539))

(assert (=> b!3955647 m!4524525))

(declare-fun m!4524541 () Bool)

(assert (=> b!3955647 m!4524541))

(assert (=> b!3955647 m!4524541))

(declare-fun m!4524547 () Bool)

(assert (=> b!3955647 m!4524547))

(assert (=> b!3955647 m!4524547))

(declare-fun m!4524549 () Bool)

(assert (=> b!3955647 m!4524549))

(assert (=> b!3955654 m!4524525))

(assert (=> b!3955654 m!4524541))

(assert (=> b!3955654 m!4524541))

(assert (=> b!3955654 m!4524547))

(assert (=> b!3955654 m!4524547))

(declare-fun m!4524551 () Bool)

(assert (=> b!3955654 m!4524551))

(assert (=> b!3955650 m!4524525))

(declare-fun m!4524553 () Bool)

(assert (=> b!3955650 m!4524553))

(assert (=> b!3955650 m!4524553))

(declare-fun m!4524555 () Bool)

(assert (=> b!3955650 m!4524555))

(assert (=> bm!285280 d!1172543))

(declare-fun d!1172615 () Bool)

(declare-fun c!686629 () Bool)

(assert (=> d!1172615 (= c!686629 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))))

(declare-fun e!2448965 () Bool)

(assert (=> d!1172615 (= (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))) e!2448965)))

(declare-fun b!3955690 () Bool)

(declare-fun inv!56332 (Conc!12807) Bool)

(assert (=> b!3955690 (= e!2448965 (inv!56332 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))))

(declare-fun b!3955691 () Bool)

(declare-fun e!2448966 () Bool)

(assert (=> b!3955691 (= e!2448965 e!2448966)))

(declare-fun res!1600688 () Bool)

(assert (=> b!3955691 (= res!1600688 (not ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))))))

(assert (=> b!3955691 (=> res!1600688 e!2448966)))

(declare-fun b!3955692 () Bool)

(declare-fun inv!56333 (Conc!12807) Bool)

(assert (=> b!3955692 (= e!2448966 (inv!56333 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))))

(assert (= (and d!1172615 c!686629) b!3955690))

(assert (= (and d!1172615 (not c!686629)) b!3955691))

(assert (= (and b!3955691 (not res!1600688)) b!3955692))

(declare-fun m!4524603 () Bool)

(assert (=> b!3955690 m!4524603))

(declare-fun m!4524605 () Bool)

(assert (=> b!3955692 m!4524605))

(assert (=> b!3954847 d!1172615))

(declare-fun b!3955702 () Bool)

(declare-fun e!2448969 () Bool)

(assert (=> b!3955702 (= e!2448969 (>= (size!31535 (tail!6127 lt!1382830)) (size!31535 (tail!6127 lt!1382839))))))

(declare-fun b!3955698 () Bool)

(declare-fun e!2448972 () Bool)

(declare-fun e!2448971 () Bool)

(assert (=> b!3955698 (= e!2448972 e!2448971)))

(declare-fun res!1600691 () Bool)

(assert (=> b!3955698 (=> (not res!1600691) (not e!2448971))))

(assert (=> b!3955698 (= res!1600691 (not ((_ is Nil!42100) (tail!6127 lt!1382830))))))

(declare-fun b!3955701 () Bool)

(assert (=> b!3955701 (= e!2448971 (isPrefix!3685 (tail!6127 (tail!6127 lt!1382839)) (tail!6127 (tail!6127 lt!1382830))))))

(declare-fun d!1172625 () Bool)

(assert (=> d!1172625 e!2448969))

(declare-fun res!1600694 () Bool)

(assert (=> d!1172625 (=> res!1600694 e!2448969)))

(declare-fun lt!1383103 () Bool)

(assert (=> d!1172625 (= res!1600694 (not lt!1383103))))

(assert (=> d!1172625 (= lt!1383103 e!2448972)))

(declare-fun res!1600690 () Bool)

(assert (=> d!1172625 (=> res!1600690 e!2448972)))

(assert (=> d!1172625 (= res!1600690 ((_ is Nil!42100) (tail!6127 lt!1382839)))))

(assert (=> d!1172625 (= (isPrefix!3685 (tail!6127 lt!1382839) (tail!6127 lt!1382830)) lt!1383103)))

(declare-fun b!3955700 () Bool)

(declare-fun res!1600692 () Bool)

(assert (=> b!3955700 (=> (not res!1600692) (not e!2448971))))

(assert (=> b!3955700 (= res!1600692 (= (head!8401 (tail!6127 lt!1382839)) (head!8401 (tail!6127 lt!1382830))))))

(assert (= (and d!1172625 (not res!1600690)) b!3955698))

(assert (= (and b!3955698 res!1600691) b!3955700))

(assert (= (and b!3955700 res!1600692) b!3955701))

(assert (= (and d!1172625 (not res!1600694)) b!3955702))

(assert (=> b!3955702 m!4523929))

(declare-fun m!4524615 () Bool)

(assert (=> b!3955702 m!4524615))

(assert (=> b!3955702 m!4523927))

(declare-fun m!4524617 () Bool)

(assert (=> b!3955702 m!4524617))

(assert (=> b!3955701 m!4523927))

(declare-fun m!4524619 () Bool)

(assert (=> b!3955701 m!4524619))

(assert (=> b!3955701 m!4523929))

(declare-fun m!4524621 () Bool)

(assert (=> b!3955701 m!4524621))

(assert (=> b!3955701 m!4524619))

(assert (=> b!3955701 m!4524621))

(declare-fun m!4524623 () Bool)

(assert (=> b!3955701 m!4524623))

(assert (=> b!3955700 m!4523927))

(declare-fun m!4524625 () Bool)

(assert (=> b!3955700 m!4524625))

(assert (=> b!3955700 m!4523929))

(declare-fun m!4524627 () Bool)

(assert (=> b!3955700 m!4524627))

(assert (=> b!3955168 d!1172625))

(declare-fun d!1172631 () Bool)

(assert (=> d!1172631 (= (tail!6127 lt!1382839) (t!329057 lt!1382839))))

(assert (=> b!3955168 d!1172631))

(declare-fun d!1172635 () Bool)

(assert (=> d!1172635 (= (tail!6127 lt!1382830) (t!329057 lt!1382830))))

(assert (=> b!3955168 d!1172635))

(declare-fun d!1172639 () Bool)

(declare-fun lt!1383107 () Int)

(assert (=> d!1172639 (>= lt!1383107 0)))

(declare-fun e!2448977 () Int)

(assert (=> d!1172639 (= lt!1383107 e!2448977)))

(declare-fun c!686634 () Bool)

(assert (=> d!1172639 (= c!686634 ((_ is Nil!42100) (_2!23826 lt!1382927)))))

(assert (=> d!1172639 (= (size!31535 (_2!23826 lt!1382927)) lt!1383107)))

(declare-fun b!3955709 () Bool)

(assert (=> b!3955709 (= e!2448977 0)))

(declare-fun b!3955710 () Bool)

(assert (=> b!3955710 (= e!2448977 (+ 1 (size!31535 (t!329057 (_2!23826 lt!1382927)))))))

(assert (= (and d!1172639 c!686634) b!3955709))

(assert (= (and d!1172639 (not c!686634)) b!3955710))

(declare-fun m!4524637 () Bool)

(assert (=> b!3955710 m!4524637))

(assert (=> b!3954992 d!1172639))

(assert (=> b!3954992 d!1172299))

(declare-fun d!1172643 () Bool)

(assert (=> d!1172643 (= (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))) (list!15631 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(declare-fun bs!587130 () Bool)

(assert (= bs!587130 d!1172643))

(declare-fun m!4524639 () Bool)

(assert (=> bs!587130 m!4524639))

(assert (=> b!3955192 d!1172643))

(declare-fun b!3955728 () Bool)

(declare-fun e!2448985 () Bool)

(assert (=> b!3955728 (= e!2448985 (>= (size!31535 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831)))) (size!31535 lt!1382839)))))

(declare-fun b!3955725 () Bool)

(declare-fun e!2448987 () Bool)

(declare-fun e!2448986 () Bool)

(assert (=> b!3955725 (= e!2448987 e!2448986)))

(declare-fun res!1600706 () Bool)

(assert (=> b!3955725 (=> (not res!1600706) (not e!2448986))))

(assert (=> b!3955725 (= res!1600706 (not ((_ is Nil!42100) (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3955727 () Bool)

(assert (=> b!3955727 (= e!2448986 (isPrefix!3685 (tail!6127 lt!1382839) (tail!6127 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))))

(declare-fun d!1172645 () Bool)

(assert (=> d!1172645 e!2448985))

(declare-fun res!1600708 () Bool)

(assert (=> d!1172645 (=> res!1600708 e!2448985)))

(declare-fun lt!1383109 () Bool)

(assert (=> d!1172645 (= res!1600708 (not lt!1383109))))

(assert (=> d!1172645 (= lt!1383109 e!2448987)))

(declare-fun res!1600705 () Bool)

(assert (=> d!1172645 (=> res!1600705 e!2448987)))

(assert (=> d!1172645 (= res!1600705 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172645 (= (isPrefix!3685 lt!1382839 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831)))) lt!1383109)))

(declare-fun b!3955726 () Bool)

(declare-fun res!1600707 () Bool)

(assert (=> b!3955726 (=> (not res!1600707) (not e!2448986))))

(assert (=> b!3955726 (= res!1600707 (= (head!8401 lt!1382839) (head!8401 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))))

(assert (= (and d!1172645 (not res!1600705)) b!3955725))

(assert (= (and b!3955725 res!1600706) b!3955726))

(assert (= (and b!3955726 res!1600707) b!3955727))

(assert (= (and d!1172645 (not res!1600708)) b!3955728))

(assert (=> b!3955728 m!4523469))

(declare-fun m!4524641 () Bool)

(assert (=> b!3955728 m!4524641))

(assert (=> b!3955728 m!4523471))

(assert (=> b!3955727 m!4523927))

(assert (=> b!3955727 m!4523469))

(declare-fun m!4524643 () Bool)

(assert (=> b!3955727 m!4524643))

(assert (=> b!3955727 m!4523927))

(assert (=> b!3955727 m!4524643))

(declare-fun m!4524645 () Bool)

(assert (=> b!3955727 m!4524645))

(assert (=> b!3955726 m!4523933))

(assert (=> b!3955726 m!4523469))

(declare-fun m!4524647 () Bool)

(assert (=> b!3955726 m!4524647))

(assert (=> d!1172347 d!1172645))

(assert (=> d!1172347 d!1172337))

(declare-fun d!1172647 () Bool)

(assert (=> d!1172647 (isPrefix!3685 lt!1382839 (++!10949 lt!1382839 (_2!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172647 true))

(declare-fun _$46!1609 () Unit!60594)

(assert (=> d!1172647 (= (choose!23608 lt!1382839 (_2!23825 (v!39359 lt!1382831))) _$46!1609)))

(declare-fun bs!587132 () Bool)

(assert (= bs!587132 d!1172647))

(assert (=> bs!587132 m!4523469))

(assert (=> bs!587132 m!4523469))

(assert (=> bs!587132 m!4523945))

(assert (=> d!1172347 d!1172647))

(declare-fun d!1172651 () Bool)

(assert (=> d!1172651 (= (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))) (list!15631 (c!686413 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun bs!587133 () Bool)

(assert (= bs!587133 d!1172651))

(declare-fun m!4524667 () Bool)

(assert (=> bs!587133 m!4524667))

(assert (=> b!3954909 d!1172651))

(declare-fun d!1172653 () Bool)

(declare-fun lt!1383110 () BalanceConc!25208)

(assert (=> d!1172653 (= (list!15630 lt!1383110) (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902))))))

(assert (=> d!1172653 (= lt!1383110 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))) (value!208620 (_1!23825 (get!13883 lt!1382902)))))))

(assert (=> d!1172653 (= (charsOf!4414 (_1!23825 (get!13883 lt!1382902))) lt!1383110)))

(declare-fun b_lambda!115713 () Bool)

(assert (=> (not b_lambda!115713) (not d!1172653)))

(declare-fun tb!238269 () Bool)

(declare-fun t!329233 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329233) tb!238269))

(declare-fun b!3955737 () Bool)

(declare-fun e!2448992 () Bool)

(declare-fun tp!1205376 () Bool)

(assert (=> b!3955737 (= e!2448992 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))) (value!208620 (_1!23825 (get!13883 lt!1382902)))))) tp!1205376))))

(declare-fun result!288556 () Bool)

(assert (=> tb!238269 (= result!288556 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))) (value!208620 (_1!23825 (get!13883 lt!1382902))))) e!2448992))))

(assert (= tb!238269 b!3955737))

(declare-fun m!4524669 () Bool)

(assert (=> b!3955737 m!4524669))

(declare-fun m!4524671 () Bool)

(assert (=> tb!238269 m!4524671))

(assert (=> d!1172653 t!329233))

(declare-fun b_and!303427 () Bool)

(assert (= b_and!303377 (and (=> t!329233 result!288556) b_and!303427)))

(declare-fun tb!238271 () Bool)

(declare-fun t!329235 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329235) tb!238271))

(declare-fun result!288558 () Bool)

(assert (= result!288558 result!288556))

(assert (=> d!1172653 t!329235))

(declare-fun b_and!303429 () Bool)

(assert (= b_and!303369 (and (=> t!329235 result!288558) b_and!303429)))

(declare-fun t!329237 () Bool)

(declare-fun tb!238273 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329237) tb!238273))

(declare-fun result!288560 () Bool)

(assert (= result!288560 result!288556))

(assert (=> d!1172653 t!329237))

(declare-fun b_and!303431 () Bool)

(assert (= b_and!303373 (and (=> t!329237 result!288560) b_and!303431)))

(declare-fun t!329239 () Bool)

(declare-fun tb!238275 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329239) tb!238275))

(declare-fun result!288562 () Bool)

(assert (= result!288562 result!288556))

(assert (=> d!1172653 t!329239))

(declare-fun b_and!303433 () Bool)

(assert (= b_and!303365 (and (=> t!329239 result!288562) b_and!303433)))

(declare-fun tb!238277 () Bool)

(declare-fun t!329241 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329241) tb!238277))

(declare-fun result!288564 () Bool)

(assert (= result!288564 result!288556))

(assert (=> d!1172653 t!329241))

(declare-fun b_and!303435 () Bool)

(assert (= b_and!303361 (and (=> t!329241 result!288564) b_and!303435)))

(declare-fun t!329243 () Bool)

(declare-fun tb!238279 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329243) tb!238279))

(declare-fun result!288566 () Bool)

(assert (= result!288566 result!288556))

(assert (=> d!1172653 t!329243))

(declare-fun b_and!303437 () Bool)

(assert (= b_and!303363 (and (=> t!329243 result!288566) b_and!303437)))

(declare-fun m!4524673 () Bool)

(assert (=> d!1172653 m!4524673))

(declare-fun m!4524675 () Bool)

(assert (=> d!1172653 m!4524675))

(assert (=> b!3954909 d!1172653))

(declare-fun d!1172655 () Bool)

(assert (=> d!1172655 (= (get!13883 lt!1382902) (v!39359 lt!1382902))))

(assert (=> b!3954909 d!1172655))

(declare-fun d!1172657 () Bool)

(declare-fun res!1600709 () Bool)

(declare-fun e!2448997 () Bool)

(assert (=> d!1172657 (=> (not res!1600709) (not e!2448997))))

(assert (=> d!1172657 (= res!1600709 (not (isEmpty!25161 (originalCharacters!7196 (h!47521 (t!329058 prefixTokens!80))))))))

(assert (=> d!1172657 (= (inv!56325 (h!47521 (t!329058 prefixTokens!80))) e!2448997)))

(declare-fun b!3955744 () Bool)

(declare-fun res!1600710 () Bool)

(assert (=> b!3955744 (=> (not res!1600710) (not e!2448997))))

(assert (=> b!3955744 (= res!1600710 (= (originalCharacters!7196 (h!47521 (t!329058 prefixTokens!80))) (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))))

(declare-fun b!3955745 () Bool)

(assert (=> b!3955745 (= e!2448997 (= (size!31534 (h!47521 (t!329058 prefixTokens!80))) (size!31535 (originalCharacters!7196 (h!47521 (t!329058 prefixTokens!80))))))))

(assert (= (and d!1172657 res!1600709) b!3955744))

(assert (= (and b!3955744 res!1600710) b!3955745))

(declare-fun b_lambda!115715 () Bool)

(assert (=> (not b_lambda!115715) (not b!3955744)))

(declare-fun tb!238281 () Bool)

(declare-fun t!329245 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329245) tb!238281))

(declare-fun b!3955749 () Bool)

(declare-fun e!2449001 () Bool)

(declare-fun tp!1205390 () Bool)

(assert (=> b!3955749 (= e!2449001 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (value!208620 (h!47521 (t!329058 prefixTokens!80)))))) tp!1205390))))

(declare-fun result!288568 () Bool)

(assert (=> tb!238281 (= result!288568 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (value!208620 (h!47521 (t!329058 prefixTokens!80))))) e!2449001))))

(assert (= tb!238281 b!3955749))

(declare-fun m!4524695 () Bool)

(assert (=> b!3955749 m!4524695))

(declare-fun m!4524697 () Bool)

(assert (=> tb!238281 m!4524697))

(assert (=> b!3955744 t!329245))

(declare-fun b_and!303439 () Bool)

(assert (= b_and!303429 (and (=> t!329245 result!288568) b_and!303439)))

(declare-fun t!329247 () Bool)

(declare-fun tb!238283 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329247) tb!238283))

(declare-fun result!288570 () Bool)

(assert (= result!288570 result!288568))

(assert (=> b!3955744 t!329247))

(declare-fun b_and!303441 () Bool)

(assert (= b_and!303437 (and (=> t!329247 result!288570) b_and!303441)))

(declare-fun t!329249 () Bool)

(declare-fun tb!238285 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329249) tb!238285))

(declare-fun result!288572 () Bool)

(assert (= result!288572 result!288568))

(assert (=> b!3955744 t!329249))

(declare-fun b_and!303443 () Bool)

(assert (= b_and!303431 (and (=> t!329249 result!288572) b_and!303443)))

(declare-fun t!329251 () Bool)

(declare-fun tb!238287 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329251) tb!238287))

(declare-fun result!288574 () Bool)

(assert (= result!288574 result!288568))

(assert (=> b!3955744 t!329251))

(declare-fun b_and!303445 () Bool)

(assert (= b_and!303427 (and (=> t!329251 result!288574) b_and!303445)))

(declare-fun tb!238289 () Bool)

(declare-fun t!329253 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329253) tb!238289))

(declare-fun result!288576 () Bool)

(assert (= result!288576 result!288568))

(assert (=> b!3955744 t!329253))

(declare-fun b_and!303447 () Bool)

(assert (= b_and!303433 (and (=> t!329253 result!288576) b_and!303447)))

(declare-fun t!329255 () Bool)

(declare-fun tb!238291 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329255) tb!238291))

(declare-fun result!288578 () Bool)

(assert (= result!288578 result!288568))

(assert (=> b!3955744 t!329255))

(declare-fun b_and!303449 () Bool)

(assert (= b_and!303435 (and (=> t!329255 result!288578) b_and!303449)))

(declare-fun m!4524699 () Bool)

(assert (=> d!1172657 m!4524699))

(declare-fun m!4524701 () Bool)

(assert (=> b!3955744 m!4524701))

(assert (=> b!3955744 m!4524701))

(declare-fun m!4524703 () Bool)

(assert (=> b!3955744 m!4524703))

(declare-fun m!4524705 () Bool)

(assert (=> b!3955745 m!4524705))

(assert (=> b!3955287 d!1172657))

(declare-fun b!3955841 () Bool)

(declare-fun e!2449054 () Bool)

(declare-fun e!2449055 () Bool)

(assert (=> b!3955841 (= e!2449054 e!2449055)))

(declare-fun c!686643 () Bool)

(assert (=> b!3955841 (= c!686643 ((_ is Star!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun bm!285316 () Bool)

(declare-fun call!285322 () Bool)

(declare-fun call!285321 () Bool)

(assert (=> bm!285316 (= call!285322 call!285321)))

(declare-fun d!1172659 () Bool)

(declare-fun res!1600725 () Bool)

(assert (=> d!1172659 (=> res!1600725 e!2449054)))

(assert (=> d!1172659 (= res!1600725 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172659 (= (validRegex!5238 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) e!2449054)))

(declare-fun b!3955842 () Bool)

(declare-fun e!2449053 () Bool)

(assert (=> b!3955842 (= e!2449055 e!2449053)))

(declare-fun res!1600722 () Bool)

(assert (=> b!3955842 (= res!1600722 (not (nullable!4039 (reg!11830 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))))

(assert (=> b!3955842 (=> (not res!1600722) (not e!2449053))))

(declare-fun b!3955843 () Bool)

(declare-fun e!2449059 () Bool)

(assert (=> b!3955843 (= e!2449059 call!285322)))

(declare-fun b!3955844 () Bool)

(declare-fun e!2449058 () Bool)

(declare-fun call!285323 () Bool)

(assert (=> b!3955844 (= e!2449058 call!285323)))

(declare-fun b!3955845 () Bool)

(declare-fun e!2449057 () Bool)

(assert (=> b!3955845 (= e!2449057 e!2449058)))

(declare-fun res!1600721 () Bool)

(assert (=> b!3955845 (=> (not res!1600721) (not e!2449058))))

(assert (=> b!3955845 (= res!1600721 call!285322)))

(declare-fun bm!285317 () Bool)

(declare-fun c!686642 () Bool)

(assert (=> bm!285317 (= call!285323 (validRegex!5238 (ite c!686642 (regOne!23515 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (regTwo!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))))

(declare-fun b!3955846 () Bool)

(assert (=> b!3955846 (= e!2449053 call!285321)))

(declare-fun b!3955847 () Bool)

(declare-fun res!1600724 () Bool)

(assert (=> b!3955847 (=> res!1600724 e!2449057)))

(assert (=> b!3955847 (= res!1600724 (not ((_ is Concat!18328) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun e!2449056 () Bool)

(assert (=> b!3955847 (= e!2449056 e!2449057)))

(declare-fun bm!285318 () Bool)

(assert (=> bm!285318 (= call!285321 (validRegex!5238 (ite c!686643 (reg!11830 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (ite c!686642 (regTwo!23515 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (regOne!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))))

(declare-fun b!3955848 () Bool)

(declare-fun res!1600723 () Bool)

(assert (=> b!3955848 (=> (not res!1600723) (not e!2449059))))

(assert (=> b!3955848 (= res!1600723 call!285323)))

(assert (=> b!3955848 (= e!2449056 e!2449059)))

(declare-fun b!3955849 () Bool)

(assert (=> b!3955849 (= e!2449055 e!2449056)))

(assert (=> b!3955849 (= c!686642 ((_ is Union!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (= (and d!1172659 (not res!1600725)) b!3955841))

(assert (= (and b!3955841 c!686643) b!3955842))

(assert (= (and b!3955841 (not c!686643)) b!3955849))

(assert (= (and b!3955842 res!1600722) b!3955846))

(assert (= (and b!3955849 c!686642) b!3955848))

(assert (= (and b!3955849 (not c!686642)) b!3955847))

(assert (= (and b!3955848 res!1600723) b!3955843))

(assert (= (and b!3955847 (not res!1600724)) b!3955845))

(assert (= (and b!3955845 res!1600721) b!3955844))

(assert (= (or b!3955843 b!3955845) bm!285316))

(assert (= (or b!3955848 b!3955844) bm!285317))

(assert (= (or b!3955846 bm!285316) bm!285318))

(declare-fun m!4524729 () Bool)

(assert (=> b!3955842 m!4524729))

(declare-fun m!4524731 () Bool)

(assert (=> bm!285317 m!4524731))

(declare-fun m!4524733 () Bool)

(assert (=> bm!285318 m!4524733))

(assert (=> d!1172345 d!1172659))

(declare-fun d!1172661 () Bool)

(declare-fun charsToBigInt!0 (List!42223 Int) Int)

(assert (=> d!1172661 (= (inv!15 (value!208620 (h!47521 prefixTokens!80))) (= (charsToBigInt!0 (text!48231 (value!208620 (h!47521 prefixTokens!80))) 0) (value!208615 (value!208620 (h!47521 prefixTokens!80)))))))

(declare-fun bs!587135 () Bool)

(assert (= bs!587135 d!1172661))

(declare-fun m!4524739 () Bool)

(assert (=> bs!587135 m!4524739))

(assert (=> b!3955046 d!1172661))

(declare-fun d!1172665 () Bool)

(declare-fun c!686646 () Bool)

(assert (=> d!1172665 (= c!686646 ((_ is Nil!42101) lt!1382933))))

(declare-fun e!2449067 () (InoxSet Token!12330))

(assert (=> d!1172665 (= (content!6388 lt!1382933) e!2449067)))

(declare-fun b!3955874 () Bool)

(assert (=> b!3955874 (= e!2449067 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955875 () Bool)

(assert (=> b!3955875 (= e!2449067 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 lt!1382933) true) (content!6388 (t!329058 lt!1382933))))))

(assert (= (and d!1172665 c!686646) b!3955874))

(assert (= (and d!1172665 (not c!686646)) b!3955875))

(declare-fun m!4524741 () Bool)

(assert (=> b!3955875 m!4524741))

(declare-fun m!4524743 () Bool)

(assert (=> b!3955875 m!4524743))

(assert (=> d!1172273 d!1172665))

(declare-fun d!1172667 () Bool)

(declare-fun c!686647 () Bool)

(assert (=> d!1172667 (= c!686647 ((_ is Nil!42101) prefixTokens!80))))

(declare-fun e!2449068 () (InoxSet Token!12330))

(assert (=> d!1172667 (= (content!6388 prefixTokens!80) e!2449068)))

(declare-fun b!3955876 () Bool)

(assert (=> b!3955876 (= e!2449068 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955877 () Bool)

(assert (=> b!3955877 (= e!2449068 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 prefixTokens!80) true) (content!6388 (t!329058 prefixTokens!80))))))

(assert (= (and d!1172667 c!686647) b!3955876))

(assert (= (and d!1172667 (not c!686647)) b!3955877))

(declare-fun m!4524745 () Bool)

(assert (=> b!3955877 m!4524745))

(declare-fun m!4524747 () Bool)

(assert (=> b!3955877 m!4524747))

(assert (=> d!1172273 d!1172667))

(declare-fun d!1172669 () Bool)

(declare-fun c!686648 () Bool)

(assert (=> d!1172669 (= c!686648 ((_ is Nil!42101) suffixTokens!72))))

(declare-fun e!2449069 () (InoxSet Token!12330))

(assert (=> d!1172669 (= (content!6388 suffixTokens!72) e!2449069)))

(declare-fun b!3955878 () Bool)

(assert (=> b!3955878 (= e!2449069 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955879 () Bool)

(assert (=> b!3955879 (= e!2449069 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 suffixTokens!72) true) (content!6388 (t!329058 suffixTokens!72))))))

(assert (= (and d!1172669 c!686648) b!3955878))

(assert (= (and d!1172669 (not c!686648)) b!3955879))

(declare-fun m!4524749 () Bool)

(assert (=> b!3955879 m!4524749))

(declare-fun m!4524751 () Bool)

(assert (=> b!3955879 m!4524751))

(assert (=> d!1172273 d!1172669))

(assert (=> bm!285283 d!1172301))

(declare-fun d!1172671 () Bool)

(declare-fun lt!1383113 () Int)

(assert (=> d!1172671 (>= lt!1383113 0)))

(declare-fun e!2449072 () Int)

(assert (=> d!1172671 (= lt!1383113 e!2449072)))

(declare-fun c!686651 () Bool)

(assert (=> d!1172671 (= c!686651 ((_ is Nil!42101) lt!1382933))))

(assert (=> d!1172671 (= (size!31537 lt!1382933) lt!1383113)))

(declare-fun b!3955884 () Bool)

(assert (=> b!3955884 (= e!2449072 0)))

(declare-fun b!3955885 () Bool)

(assert (=> b!3955885 (= e!2449072 (+ 1 (size!31537 (t!329058 lt!1382933))))))

(assert (= (and d!1172671 c!686651) b!3955884))

(assert (= (and d!1172671 (not c!686651)) b!3955885))

(declare-fun m!4524753 () Bool)

(assert (=> b!3955885 m!4524753))

(assert (=> b!3955011 d!1172671))

(declare-fun d!1172673 () Bool)

(declare-fun lt!1383114 () Int)

(assert (=> d!1172673 (>= lt!1383114 0)))

(declare-fun e!2449073 () Int)

(assert (=> d!1172673 (= lt!1383114 e!2449073)))

(declare-fun c!686652 () Bool)

(assert (=> d!1172673 (= c!686652 ((_ is Nil!42101) prefixTokens!80))))

(assert (=> d!1172673 (= (size!31537 prefixTokens!80) lt!1383114)))

(declare-fun b!3955886 () Bool)

(assert (=> b!3955886 (= e!2449073 0)))

(declare-fun b!3955887 () Bool)

(assert (=> b!3955887 (= e!2449073 (+ 1 (size!31537 (t!329058 prefixTokens!80))))))

(assert (= (and d!1172673 c!686652) b!3955886))

(assert (= (and d!1172673 (not c!686652)) b!3955887))

(declare-fun m!4524755 () Bool)

(assert (=> b!3955887 m!4524755))

(assert (=> b!3955011 d!1172673))

(declare-fun d!1172675 () Bool)

(declare-fun lt!1383115 () Int)

(assert (=> d!1172675 (>= lt!1383115 0)))

(declare-fun e!2449074 () Int)

(assert (=> d!1172675 (= lt!1383115 e!2449074)))

(declare-fun c!686653 () Bool)

(assert (=> d!1172675 (= c!686653 ((_ is Nil!42101) suffixTokens!72))))

(assert (=> d!1172675 (= (size!31537 suffixTokens!72) lt!1383115)))

(declare-fun b!3955888 () Bool)

(assert (=> b!3955888 (= e!2449074 0)))

(declare-fun b!3955889 () Bool)

(assert (=> b!3955889 (= e!2449074 (+ 1 (size!31537 (t!329058 suffixTokens!72))))))

(assert (= (and d!1172675 c!686653) b!3955888))

(assert (= (and d!1172675 (not c!686653)) b!3955889))

(declare-fun m!4524757 () Bool)

(assert (=> b!3955889 m!4524757))

(assert (=> b!3955011 d!1172675))

(declare-fun d!1172677 () Bool)

(declare-fun lt!1383116 () Int)

(assert (=> d!1172677 (>= lt!1383116 0)))

(declare-fun e!2449075 () Int)

(assert (=> d!1172677 (= lt!1383116 e!2449075)))

(declare-fun c!686654 () Bool)

(assert (=> d!1172677 (= c!686654 ((_ is Nil!42100) (originalCharacters!7196 (h!47521 suffixTokens!72))))))

(assert (=> d!1172677 (= (size!31535 (originalCharacters!7196 (h!47521 suffixTokens!72))) lt!1383116)))

(declare-fun b!3955890 () Bool)

(assert (=> b!3955890 (= e!2449075 0)))

(declare-fun b!3955891 () Bool)

(assert (=> b!3955891 (= e!2449075 (+ 1 (size!31535 (t!329057 (originalCharacters!7196 (h!47521 suffixTokens!72))))))))

(assert (= (and d!1172677 c!686654) b!3955890))

(assert (= (and d!1172677 (not c!686654)) b!3955891))

(declare-fun m!4524759 () Bool)

(assert (=> b!3955891 m!4524759))

(assert (=> b!3954862 d!1172677))

(declare-fun d!1172679 () Bool)

(declare-fun res!1600726 () Bool)

(declare-fun e!2449076 () Bool)

(assert (=> d!1172679 (=> (not res!1600726) (not e!2449076))))

(assert (=> d!1172679 (= res!1600726 (not (isEmpty!25161 (originalCharacters!7196 (h!47521 (t!329058 suffixTokens!72))))))))

(assert (=> d!1172679 (= (inv!56325 (h!47521 (t!329058 suffixTokens!72))) e!2449076)))

(declare-fun b!3955892 () Bool)

(declare-fun res!1600727 () Bool)

(assert (=> b!3955892 (=> (not res!1600727) (not e!2449076))))

(assert (=> b!3955892 (= res!1600727 (= (originalCharacters!7196 (h!47521 (t!329058 suffixTokens!72))) (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))))

(declare-fun b!3955893 () Bool)

(assert (=> b!3955893 (= e!2449076 (= (size!31534 (h!47521 (t!329058 suffixTokens!72))) (size!31535 (originalCharacters!7196 (h!47521 (t!329058 suffixTokens!72))))))))

(assert (= (and d!1172679 res!1600726) b!3955892))

(assert (= (and b!3955892 res!1600727) b!3955893))

(declare-fun b_lambda!115735 () Bool)

(assert (=> (not b_lambda!115735) (not b!3955892)))

(declare-fun tb!238347 () Bool)

(declare-fun t!329311 () Bool)

(assert (=> (and b!3954710 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329311) tb!238347))

(declare-fun b!3955894 () Bool)

(declare-fun e!2449077 () Bool)

(declare-fun tp!1205501 () Bool)

(assert (=> b!3955894 (= e!2449077 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (value!208620 (h!47521 (t!329058 suffixTokens!72)))))) tp!1205501))))

(declare-fun result!288634 () Bool)

(assert (=> tb!238347 (= result!288634 (and (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (value!208620 (h!47521 (t!329058 suffixTokens!72))))) e!2449077))))

(assert (= tb!238347 b!3955894))

(declare-fun m!4524761 () Bool)

(assert (=> b!3955894 m!4524761))

(declare-fun m!4524763 () Bool)

(assert (=> tb!238347 m!4524763))

(assert (=> b!3955892 t!329311))

(declare-fun b_and!303499 () Bool)

(assert (= b_and!303441 (and (=> t!329311 result!288634) b_and!303499)))

(declare-fun t!329313 () Bool)

(declare-fun tb!238349 () Bool)

(assert (=> (and b!3955257 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329313) tb!238349))

(declare-fun result!288636 () Bool)

(assert (= result!288636 result!288634))

(assert (=> b!3955892 t!329313))

(declare-fun b_and!303501 () Bool)

(assert (= b_and!303439 (and (=> t!329313 result!288636) b_and!303501)))

(declare-fun t!329315 () Bool)

(declare-fun tb!238351 () Bool)

(assert (=> (and b!3955290 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329315) tb!238351))

(declare-fun result!288638 () Bool)

(assert (= result!288638 result!288634))

(assert (=> b!3955892 t!329315))

(declare-fun b_and!303503 () Bool)

(assert (= b_and!303445 (and (=> t!329315 result!288638) b_and!303503)))

(declare-fun tb!238353 () Bool)

(declare-fun t!329317 () Bool)

(assert (=> (and b!3954707 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329317) tb!238353))

(declare-fun result!288640 () Bool)

(assert (= result!288640 result!288634))

(assert (=> b!3955892 t!329317))

(declare-fun b_and!303505 () Bool)

(assert (= b_and!303449 (and (=> t!329317 result!288640) b_and!303505)))

(declare-fun tb!238355 () Bool)

(declare-fun t!329319 () Bool)

(assert (=> (and b!3955282 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329319) tb!238355))

(declare-fun result!288642 () Bool)

(assert (= result!288642 result!288634))

(assert (=> b!3955892 t!329319))

(declare-fun b_and!303507 () Bool)

(assert (= b_and!303443 (and (=> t!329319 result!288642) b_and!303507)))

(declare-fun t!329321 () Bool)

(declare-fun tb!238357 () Bool)

(assert (=> (and b!3954701 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329321) tb!238357))

(declare-fun result!288644 () Bool)

(assert (= result!288644 result!288634))

(assert (=> b!3955892 t!329321))

(declare-fun b_and!303509 () Bool)

(assert (= b_and!303447 (and (=> t!329321 result!288644) b_and!303509)))

(declare-fun m!4524765 () Bool)

(assert (=> d!1172679 m!4524765))

(declare-fun m!4524767 () Bool)

(assert (=> b!3955892 m!4524767))

(assert (=> b!3955892 m!4524767))

(declare-fun m!4524769 () Bool)

(assert (=> b!3955892 m!4524769))

(declare-fun m!4524771 () Bool)

(assert (=> b!3955893 m!4524771))

(assert (=> b!3955254 d!1172679))

(declare-fun b!3955895 () Bool)

(declare-fun res!1600734 () Bool)

(declare-fun e!2449078 () Bool)

(assert (=> b!3955895 (=> (not res!1600734) (not e!2449078))))

(assert (=> b!3955895 (= res!1600734 (isEmpty!25161 (tail!6127 (tail!6127 lt!1382839))))))

(declare-fun b!3955896 () Bool)

(declare-fun res!1600729 () Bool)

(declare-fun e!2449081 () Bool)

(assert (=> b!3955896 (=> res!1600729 e!2449081)))

(assert (=> b!3955896 (= res!1600729 (not (isEmpty!25161 (tail!6127 (tail!6127 lt!1382839)))))))

(declare-fun b!3955897 () Bool)

(declare-fun e!2449079 () Bool)

(assert (=> b!3955897 (= e!2449079 (matchR!5522 (derivativeStep!3463 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)) (head!8401 (tail!6127 lt!1382839))) (tail!6127 (tail!6127 lt!1382839))))))

(declare-fun b!3955898 () Bool)

(declare-fun e!2449082 () Bool)

(declare-fun lt!1383117 () Bool)

(declare-fun call!285324 () Bool)

(assert (=> b!3955898 (= e!2449082 (= lt!1383117 call!285324))))

(declare-fun b!3955900 () Bool)

(assert (=> b!3955900 (= e!2449078 (= (head!8401 (tail!6127 lt!1382839)) (c!686412 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)))))))

(declare-fun bm!285319 () Bool)

(assert (=> bm!285319 (= call!285324 (isEmpty!25161 (tail!6127 lt!1382839)))))

(declare-fun b!3955901 () Bool)

(declare-fun e!2449084 () Bool)

(assert (=> b!3955901 (= e!2449084 (not lt!1383117))))

(declare-fun b!3955902 () Bool)

(declare-fun res!1600733 () Bool)

(declare-fun e!2449083 () Bool)

(assert (=> b!3955902 (=> res!1600733 e!2449083)))

(assert (=> b!3955902 (= res!1600733 (not ((_ is ElementMatch!11501) (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)))))))

(assert (=> b!3955902 (= e!2449084 e!2449083)))

(declare-fun b!3955903 () Bool)

(assert (=> b!3955903 (= e!2449082 e!2449084)))

(declare-fun c!686655 () Bool)

(assert (=> b!3955903 (= c!686655 ((_ is EmptyLang!11501) (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839))))))

(declare-fun b!3955904 () Bool)

(declare-fun res!1600735 () Bool)

(assert (=> b!3955904 (=> (not res!1600735) (not e!2449078))))

(assert (=> b!3955904 (= res!1600735 (not call!285324))))

(declare-fun d!1172681 () Bool)

(assert (=> d!1172681 e!2449082))

(declare-fun c!686656 () Bool)

(assert (=> d!1172681 (= c!686656 ((_ is EmptyExpr!11501) (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839))))))

(assert (=> d!1172681 (= lt!1383117 e!2449079)))

(declare-fun c!686657 () Bool)

(assert (=> d!1172681 (= c!686657 (isEmpty!25161 (tail!6127 lt!1382839)))))

(assert (=> d!1172681 (validRegex!5238 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)))))

(assert (=> d!1172681 (= (matchR!5522 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)) (tail!6127 lt!1382839)) lt!1383117)))

(declare-fun b!3955899 () Bool)

(declare-fun e!2449080 () Bool)

(assert (=> b!3955899 (= e!2449083 e!2449080)))

(declare-fun res!1600730 () Bool)

(assert (=> b!3955899 (=> (not res!1600730) (not e!2449080))))

(assert (=> b!3955899 (= res!1600730 (not lt!1383117))))

(declare-fun b!3955905 () Bool)

(assert (=> b!3955905 (= e!2449079 (nullable!4039 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839))))))

(declare-fun b!3955906 () Bool)

(assert (=> b!3955906 (= e!2449080 e!2449081)))

(declare-fun res!1600728 () Bool)

(assert (=> b!3955906 (=> res!1600728 e!2449081)))

(assert (=> b!3955906 (= res!1600728 call!285324)))

(declare-fun b!3955907 () Bool)

(declare-fun res!1600731 () Bool)

(assert (=> b!3955907 (=> res!1600731 e!2449083)))

(assert (=> b!3955907 (= res!1600731 e!2449078)))

(declare-fun res!1600732 () Bool)

(assert (=> b!3955907 (=> (not res!1600732) (not e!2449078))))

(assert (=> b!3955907 (= res!1600732 lt!1383117)))

(declare-fun b!3955908 () Bool)

(assert (=> b!3955908 (= e!2449081 (not (= (head!8401 (tail!6127 lt!1382839)) (c!686412 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839))))))))

(assert (= (and d!1172681 c!686657) b!3955905))

(assert (= (and d!1172681 (not c!686657)) b!3955897))

(assert (= (and d!1172681 c!686656) b!3955898))

(assert (= (and d!1172681 (not c!686656)) b!3955903))

(assert (= (and b!3955903 c!686655) b!3955901))

(assert (= (and b!3955903 (not c!686655)) b!3955902))

(assert (= (and b!3955902 (not res!1600733)) b!3955907))

(assert (= (and b!3955907 res!1600732) b!3955904))

(assert (= (and b!3955904 res!1600735) b!3955895))

(assert (= (and b!3955895 res!1600734) b!3955900))

(assert (= (and b!3955907 (not res!1600731)) b!3955899))

(assert (= (and b!3955899 res!1600730) b!3955906))

(assert (= (and b!3955906 (not res!1600728)) b!3955896))

(assert (= (and b!3955896 (not res!1600729)) b!3955908))

(assert (= (or b!3955898 b!3955906 b!3955904) bm!285319))

(assert (=> b!3955908 m!4523927))

(assert (=> b!3955908 m!4524625))

(assert (=> b!3955895 m!4523927))

(assert (=> b!3955895 m!4524619))

(assert (=> b!3955895 m!4524619))

(declare-fun m!4524773 () Bool)

(assert (=> b!3955895 m!4524773))

(assert (=> b!3955905 m!4523997))

(declare-fun m!4524775 () Bool)

(assert (=> b!3955905 m!4524775))

(assert (=> d!1172681 m!4523927))

(assert (=> d!1172681 m!4523995))

(assert (=> d!1172681 m!4523997))

(declare-fun m!4524777 () Bool)

(assert (=> d!1172681 m!4524777))

(assert (=> b!3955897 m!4523927))

(assert (=> b!3955897 m!4524625))

(assert (=> b!3955897 m!4523997))

(assert (=> b!3955897 m!4524625))

(declare-fun m!4524779 () Bool)

(assert (=> b!3955897 m!4524779))

(assert (=> b!3955897 m!4523927))

(assert (=> b!3955897 m!4524619))

(assert (=> b!3955897 m!4524779))

(assert (=> b!3955897 m!4524619))

(declare-fun m!4524781 () Bool)

(assert (=> b!3955897 m!4524781))

(assert (=> b!3955896 m!4523927))

(assert (=> b!3955896 m!4524619))

(assert (=> b!3955896 m!4524619))

(assert (=> b!3955896 m!4524773))

(assert (=> b!3955900 m!4523927))

(assert (=> b!3955900 m!4524625))

(assert (=> bm!285319 m!4523927))

(assert (=> bm!285319 m!4523995))

(assert (=> b!3955226 d!1172681))

(declare-fun b!3955929 () Bool)

(declare-fun e!2449095 () Regex!11501)

(declare-fun e!2449098 () Regex!11501)

(assert (=> b!3955929 (= e!2449095 e!2449098)))

(declare-fun c!686670 () Bool)

(assert (=> b!3955929 (= c!686670 ((_ is Star!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun b!3955930 () Bool)

(declare-fun c!686671 () Bool)

(assert (=> b!3955930 (= c!686671 (nullable!4039 (regOne!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun e!2449097 () Regex!11501)

(assert (=> b!3955930 (= e!2449098 e!2449097)))

(declare-fun b!3955931 () Bool)

(declare-fun call!285333 () Regex!11501)

(assert (=> b!3955931 (= e!2449097 (Union!11501 (Concat!18328 call!285333 (regTwo!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) EmptyLang!11501))))

(declare-fun b!3955932 () Bool)

(declare-fun call!285336 () Regex!11501)

(assert (=> b!3955932 (= e!2449097 (Union!11501 (Concat!18328 call!285333 (regTwo!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) call!285336))))

(declare-fun bm!285328 () Bool)

(declare-fun c!686668 () Bool)

(declare-fun call!285334 () Regex!11501)

(assert (=> bm!285328 (= call!285334 (derivativeStep!3463 (ite c!686668 (regTwo!23515 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (ite c!686670 (reg!11830 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (regOne!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (head!8401 lt!1382839)))))

(declare-fun d!1172683 () Bool)

(declare-fun lt!1383120 () Regex!11501)

(assert (=> d!1172683 (validRegex!5238 lt!1383120)))

(declare-fun e!2449099 () Regex!11501)

(assert (=> d!1172683 (= lt!1383120 e!2449099)))

(declare-fun c!686672 () Bool)

(assert (=> d!1172683 (= c!686672 (or ((_ is EmptyExpr!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) ((_ is EmptyLang!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))))

(assert (=> d!1172683 (validRegex!5238 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(assert (=> d!1172683 (= (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))) (head!8401 lt!1382839)) lt!1383120)))

(declare-fun b!3955933 () Bool)

(assert (=> b!3955933 (= e!2449095 (Union!11501 call!285336 call!285334))))

(declare-fun b!3955934 () Bool)

(declare-fun e!2449096 () Regex!11501)

(assert (=> b!3955934 (= e!2449096 (ite (= (head!8401 lt!1382839) (c!686412 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) EmptyExpr!11501 EmptyLang!11501))))

(declare-fun bm!285329 () Bool)

(declare-fun call!285335 () Regex!11501)

(assert (=> bm!285329 (= call!285333 call!285335)))

(declare-fun b!3955935 () Bool)

(assert (=> b!3955935 (= c!686668 ((_ is Union!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> b!3955935 (= e!2449096 e!2449095)))

(declare-fun bm!285330 () Bool)

(assert (=> bm!285330 (= call!285336 (derivativeStep!3463 (ite c!686668 (regOne!23515 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (regTwo!23514 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (head!8401 lt!1382839)))))

(declare-fun b!3955936 () Bool)

(assert (=> b!3955936 (= e!2449099 EmptyLang!11501)))

(declare-fun b!3955937 () Bool)

(assert (=> b!3955937 (= e!2449099 e!2449096)))

(declare-fun c!686669 () Bool)

(assert (=> b!3955937 (= c!686669 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun bm!285331 () Bool)

(assert (=> bm!285331 (= call!285335 call!285334)))

(declare-fun b!3955938 () Bool)

(assert (=> b!3955938 (= e!2449098 (Concat!18328 call!285335 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(assert (= (and d!1172683 c!686672) b!3955936))

(assert (= (and d!1172683 (not c!686672)) b!3955937))

(assert (= (and b!3955937 c!686669) b!3955934))

(assert (= (and b!3955937 (not c!686669)) b!3955935))

(assert (= (and b!3955935 c!686668) b!3955933))

(assert (= (and b!3955935 (not c!686668)) b!3955929))

(assert (= (and b!3955929 c!686670) b!3955938))

(assert (= (and b!3955929 (not c!686670)) b!3955930))

(assert (= (and b!3955930 c!686671) b!3955932))

(assert (= (and b!3955930 (not c!686671)) b!3955931))

(assert (= (or b!3955932 b!3955931) bm!285329))

(assert (= (or b!3955938 bm!285329) bm!285331))

(assert (= (or b!3955933 bm!285331) bm!285328))

(assert (= (or b!3955933 b!3955932) bm!285330))

(declare-fun m!4524783 () Bool)

(assert (=> b!3955930 m!4524783))

(assert (=> bm!285328 m!4523933))

(declare-fun m!4524785 () Bool)

(assert (=> bm!285328 m!4524785))

(declare-fun m!4524787 () Bool)

(assert (=> d!1172683 m!4524787))

(assert (=> d!1172683 m!4523941))

(assert (=> bm!285330 m!4523933))

(declare-fun m!4524789 () Bool)

(assert (=> bm!285330 m!4524789))

(assert (=> b!3955226 d!1172683))

(declare-fun d!1172685 () Bool)

(assert (=> d!1172685 (= (head!8401 lt!1382839) (h!47520 lt!1382839))))

(assert (=> b!3955226 d!1172685))

(assert (=> b!3955226 d!1172631))

(declare-fun d!1172687 () Bool)

(declare-fun lt!1383121 () Bool)

(assert (=> d!1172687 (= lt!1383121 (select (content!6391 rules!2768) (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))

(declare-fun e!2449101 () Bool)

(assert (=> d!1172687 (= lt!1383121 e!2449101)))

(declare-fun res!1600736 () Bool)

(assert (=> d!1172687 (=> (not res!1600736) (not e!2449101))))

(assert (=> d!1172687 (= res!1600736 ((_ is Cons!42102) rules!2768))))

(assert (=> d!1172687 (= (contains!8418 rules!2768 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) lt!1383121)))

(declare-fun b!3955939 () Bool)

(declare-fun e!2449100 () Bool)

(assert (=> b!3955939 (= e!2449101 e!2449100)))

(declare-fun res!1600737 () Bool)

(assert (=> b!3955939 (=> res!1600737 e!2449100)))

(assert (=> b!3955939 (= res!1600737 (= (h!47522 rules!2768) (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))

(declare-fun b!3955940 () Bool)

(assert (=> b!3955940 (= e!2449100 (contains!8418 (t!329059 rules!2768) (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))

(assert (= (and d!1172687 res!1600736) b!3955939))

(assert (= (and b!3955939 (not res!1600737)) b!3955940))

(assert (=> d!1172687 m!4523867))

(declare-fun m!4524791 () Bool)

(assert (=> d!1172687 m!4524791))

(declare-fun m!4524793 () Bool)

(assert (=> b!3955940 m!4524793))

(assert (=> b!3954916 d!1172687))

(assert (=> b!3954916 d!1172655))

(declare-fun d!1172689 () Bool)

(declare-fun isBalanced!3651 (Conc!12807) Bool)

(assert (=> d!1172689 (= (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))) (isBalanced!3651 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun bs!587136 () Bool)

(assert (= bs!587136 d!1172689))

(declare-fun m!4524795 () Bool)

(assert (=> bs!587136 m!4524795))

(assert (=> tb!238179 d!1172689))

(declare-fun d!1172691 () Bool)

(declare-fun res!1600742 () Bool)

(declare-fun e!2449106 () Bool)

(assert (=> d!1172691 (=> res!1600742 e!2449106)))

(assert (=> d!1172691 (= res!1600742 ((_ is Nil!42102) rules!2768))))

(assert (=> d!1172691 (= (noDuplicateTag!2578 thiss!20629 rules!2768 Nil!42104) e!2449106)))

(declare-fun b!3955945 () Bool)

(declare-fun e!2449107 () Bool)

(assert (=> b!3955945 (= e!2449106 e!2449107)))

(declare-fun res!1600743 () Bool)

(assert (=> b!3955945 (=> (not res!1600743) (not e!2449107))))

(declare-fun contains!8420 (List!42228 String!47848) Bool)

(assert (=> b!3955945 (= res!1600743 (not (contains!8420 Nil!42104 (tag!7456 (h!47522 rules!2768)))))))

(declare-fun b!3955946 () Bool)

(assert (=> b!3955946 (= e!2449107 (noDuplicateTag!2578 thiss!20629 (t!329059 rules!2768) (Cons!42104 (tag!7456 (h!47522 rules!2768)) Nil!42104)))))

(assert (= (and d!1172691 (not res!1600742)) b!3955945))

(assert (= (and b!3955945 res!1600743) b!3955946))

(declare-fun m!4524797 () Bool)

(assert (=> b!3955945 m!4524797))

(declare-fun m!4524799 () Bool)

(assert (=> b!3955946 m!4524799))

(assert (=> b!3955064 d!1172691))

(declare-fun d!1172693 () Bool)

(assert (=> d!1172693 true))

(declare-fun order!22397 () Int)

(declare-fun lambda!126788 () Int)

(declare-fun dynLambda!18012 (Int Int) Int)

(assert (=> d!1172693 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (dynLambda!18012 order!22397 lambda!126788))))

(declare-fun Forall2!1059 (Int) Bool)

(assert (=> d!1172693 (= (equivClasses!2742 (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (Forall2!1059 lambda!126788))))

(declare-fun bs!587137 () Bool)

(assert (= bs!587137 d!1172693))

(declare-fun m!4524801 () Bool)

(assert (=> bs!587137 m!4524801))

(assert (=> b!3955238 d!1172693))

(declare-fun bs!587138 () Bool)

(declare-fun d!1172695 () Bool)

(assert (= bs!587138 (and d!1172695 d!1172693)))

(declare-fun lambda!126789 () Int)

(assert (=> bs!587138 (= (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (= lambda!126789 lambda!126788))))

(assert (=> d!1172695 true))

(assert (=> d!1172695 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (dynLambda!18012 order!22397 lambda!126789))))

(assert (=> d!1172695 (= (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (Forall2!1059 lambda!126789))))

(declare-fun bs!587139 () Bool)

(assert (= bs!587139 d!1172695))

(declare-fun m!4524803 () Bool)

(assert (=> bs!587139 m!4524803))

(assert (=> b!3955195 d!1172695))

(declare-fun d!1172697 () Bool)

(declare-fun charsToBigInt!1 (List!42223) Int)

(assert (=> d!1172697 (= (inv!17 (value!208620 (h!47521 prefixTokens!80))) (= (charsToBigInt!1 (text!48230 (value!208620 (h!47521 prefixTokens!80)))) (value!208612 (value!208620 (h!47521 prefixTokens!80)))))))

(declare-fun bs!587140 () Bool)

(assert (= bs!587140 d!1172697))

(declare-fun m!4524805 () Bool)

(assert (=> bs!587140 m!4524805))

(assert (=> b!3955042 d!1172697))

(declare-fun d!1172699 () Bool)

(assert (=> d!1172699 (= (isEmpty!25160 (_1!23826 lt!1382963)) ((_ is Nil!42101) (_1!23826 lt!1382963)))))

(assert (=> b!3955133 d!1172699))

(declare-fun d!1172701 () Bool)

(declare-fun c!686673 () Bool)

(assert (=> d!1172701 (= c!686673 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(declare-fun e!2449110 () Bool)

(assert (=> d!1172701 (= (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))) e!2449110)))

(declare-fun b!3955951 () Bool)

(assert (=> b!3955951 (= e!2449110 (inv!56332 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(declare-fun b!3955952 () Bool)

(declare-fun e!2449111 () Bool)

(assert (=> b!3955952 (= e!2449110 e!2449111)))

(declare-fun res!1600746 () Bool)

(assert (=> b!3955952 (= res!1600746 (not ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))))))

(assert (=> b!3955952 (=> res!1600746 e!2449111)))

(declare-fun b!3955953 () Bool)

(assert (=> b!3955953 (= e!2449111 (inv!56333 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(assert (= (and d!1172701 c!686673) b!3955951))

(assert (= (and d!1172701 (not c!686673)) b!3955952))

(assert (= (and b!3955952 (not res!1600746)) b!3955953))

(declare-fun m!4524807 () Bool)

(assert (=> b!3955951 m!4524807))

(declare-fun m!4524809 () Bool)

(assert (=> b!3955953 m!4524809))

(assert (=> b!3955194 d!1172701))

(declare-fun d!1172703 () Bool)

(assert (=> d!1172703 (= (inv!17 (value!208620 (h!47521 suffixTokens!72))) (= (charsToBigInt!1 (text!48230 (value!208620 (h!47521 suffixTokens!72)))) (value!208612 (value!208620 (h!47521 suffixTokens!72)))))))

(declare-fun bs!587141 () Bool)

(assert (= bs!587141 d!1172703))

(declare-fun m!4524811 () Bool)

(assert (=> bs!587141 m!4524811))

(assert (=> b!3955070 d!1172703))

(assert (=> b!3954910 d!1172655))

(declare-fun d!1172705 () Bool)

(assert (=> d!1172705 (= (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun b_lambda!115737 () Bool)

(assert (=> (not b_lambda!115737) (not d!1172705)))

(declare-fun tb!238359 () Bool)

(declare-fun t!329323 () Bool)

(assert (=> (and b!3954707 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329323) tb!238359))

(declare-fun result!288646 () Bool)

(assert (=> tb!238359 (= result!288646 (inv!21 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun m!4524813 () Bool)

(assert (=> tb!238359 m!4524813))

(assert (=> d!1172705 t!329323))

(declare-fun b_and!303511 () Bool)

(assert (= b_and!303349 (and (=> t!329323 result!288646) b_and!303511)))

(declare-fun t!329325 () Bool)

(declare-fun tb!238361 () Bool)

(assert (=> (and b!3954710 (= (toValue!9072 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329325) tb!238361))

(declare-fun result!288648 () Bool)

(assert (= result!288648 result!288646))

(assert (=> d!1172705 t!329325))

(declare-fun b_and!303513 () Bool)

(assert (= b_and!303351 (and (=> t!329325 result!288648) b_and!303513)))

(declare-fun t!329327 () Bool)

(declare-fun tb!238363 () Bool)

(assert (=> (and b!3955257 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329327) tb!238363))

(declare-fun result!288650 () Bool)

(assert (= result!288650 result!288646))

(assert (=> d!1172705 t!329327))

(declare-fun b_and!303515 () Bool)

(assert (= b_and!303367 (and (=> t!329327 result!288650) b_and!303515)))

(declare-fun tb!238365 () Bool)

(declare-fun t!329329 () Bool)

(assert (=> (and b!3955282 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329329) tb!238365))

(declare-fun result!288652 () Bool)

(assert (= result!288652 result!288646))

(assert (=> d!1172705 t!329329))

(declare-fun b_and!303517 () Bool)

(assert (= b_and!303371 (and (=> t!329329 result!288652) b_and!303517)))

(declare-fun tb!238367 () Bool)

(declare-fun t!329331 () Bool)

(assert (=> (and b!3955290 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329331) tb!238367))

(declare-fun result!288654 () Bool)

(assert (= result!288654 result!288646))

(assert (=> d!1172705 t!329331))

(declare-fun b_and!303519 () Bool)

(assert (= b_and!303375 (and (=> t!329331 result!288654) b_and!303519)))

(declare-fun tb!238369 () Bool)

(declare-fun t!329333 () Bool)

(assert (=> (and b!3954701 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329333) tb!238369))

(declare-fun result!288656 () Bool)

(assert (= result!288656 result!288646))

(assert (=> d!1172705 t!329333))

(declare-fun b_and!303521 () Bool)

(assert (= b_and!303353 (and (=> t!329333 result!288656) b_and!303521)))

(assert (=> d!1172705 m!4523673))

(declare-fun m!4524815 () Bool)

(assert (=> d!1172705 m!4524815))

(assert (=> b!3954910 d!1172705))

(declare-fun d!1172707 () Bool)

(assert (=> d!1172707 (= (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902)))) (fromListB!2244 (originalCharacters!7196 (_1!23825 (get!13883 lt!1382902)))))))

(declare-fun bs!587142 () Bool)

(assert (= bs!587142 d!1172707))

(declare-fun m!4524817 () Bool)

(assert (=> bs!587142 m!4524817))

(assert (=> b!3954910 d!1172707))

(declare-fun d!1172709 () Bool)

(declare-fun c!686674 () Bool)

(assert (=> d!1172709 (= c!686674 ((_ is Nil!42101) lt!1382949))))

(declare-fun e!2449113 () (InoxSet Token!12330))

(assert (=> d!1172709 (= (content!6388 lt!1382949) e!2449113)))

(declare-fun b!3955954 () Bool)

(assert (=> b!3955954 (= e!2449113 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955955 () Bool)

(assert (=> b!3955955 (= e!2449113 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 lt!1382949) true) (content!6388 (t!329058 lt!1382949))))))

(assert (= (and d!1172709 c!686674) b!3955954))

(assert (= (and d!1172709 (not c!686674)) b!3955955))

(declare-fun m!4524819 () Bool)

(assert (=> b!3955955 m!4524819))

(declare-fun m!4524821 () Bool)

(assert (=> b!3955955 m!4524821))

(assert (=> d!1172297 d!1172709))

(declare-fun d!1172711 () Bool)

(declare-fun c!686675 () Bool)

(assert (=> d!1172711 (= c!686675 ((_ is Nil!42101) (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))

(declare-fun e!2449114 () (InoxSet Token!12330))

(assert (=> d!1172711 (= (content!6388 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) e!2449114)))

(declare-fun b!3955956 () Bool)

(assert (=> b!3955956 (= e!2449114 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955957 () Bool)

(assert (=> b!3955957 (= e!2449114 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) true) (content!6388 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))))

(assert (= (and d!1172711 c!686675) b!3955956))

(assert (= (and d!1172711 (not c!686675)) b!3955957))

(declare-fun m!4524823 () Bool)

(assert (=> b!3955957 m!4524823))

(declare-fun m!4524825 () Bool)

(assert (=> b!3955957 m!4524825))

(assert (=> d!1172297 d!1172711))

(declare-fun d!1172713 () Bool)

(declare-fun c!686676 () Bool)

(assert (=> d!1172713 (= c!686676 ((_ is Nil!42101) (_1!23826 lt!1382833)))))

(declare-fun e!2449115 () (InoxSet Token!12330))

(assert (=> d!1172713 (= (content!6388 (_1!23826 lt!1382833)) e!2449115)))

(declare-fun b!3955958 () Bool)

(assert (=> b!3955958 (= e!2449115 ((as const (Array Token!12330 Bool)) false))))

(declare-fun b!3955959 () Bool)

(assert (=> b!3955959 (= e!2449115 ((_ map or) (store ((as const (Array Token!12330 Bool)) false) (h!47521 (_1!23826 lt!1382833)) true) (content!6388 (t!329058 (_1!23826 lt!1382833)))))))

(assert (= (and d!1172713 c!686676) b!3955958))

(assert (= (and d!1172713 (not c!686676)) b!3955959))

(declare-fun m!4524827 () Bool)

(assert (=> b!3955959 m!4524827))

(declare-fun m!4524829 () Bool)

(assert (=> b!3955959 m!4524829))

(assert (=> d!1172297 d!1172713))

(declare-fun b!3955960 () Bool)

(declare-fun res!1600753 () Bool)

(declare-fun e!2449116 () Bool)

(assert (=> b!3955960 (=> (not res!1600753) (not e!2449116))))

(assert (=> b!3955960 (= res!1600753 (isEmpty!25161 (tail!6127 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun b!3955961 () Bool)

(declare-fun res!1600748 () Bool)

(declare-fun e!2449119 () Bool)

(assert (=> b!3955961 (=> res!1600748 e!2449119)))

(assert (=> b!3955961 (= res!1600748 (not (isEmpty!25161 (tail!6127 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))))

(declare-fun b!3955962 () Bool)

(declare-fun e!2449117 () Bool)

(assert (=> b!3955962 (= e!2449117 (matchR!5522 (derivativeStep!3463 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) (head!8401 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))))) (tail!6127 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun b!3955963 () Bool)

(declare-fun e!2449120 () Bool)

(declare-fun lt!1383122 () Bool)

(declare-fun call!285337 () Bool)

(assert (=> b!3955963 (= e!2449120 (= lt!1383122 call!285337))))

(declare-fun b!3955965 () Bool)

(assert (=> b!3955965 (= e!2449116 (= (head!8401 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (c!686412 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun bm!285332 () Bool)

(assert (=> bm!285332 (= call!285337 (isEmpty!25161 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun b!3955966 () Bool)

(declare-fun e!2449122 () Bool)

(assert (=> b!3955966 (= e!2449122 (not lt!1383122))))

(declare-fun b!3955967 () Bool)

(declare-fun res!1600752 () Bool)

(declare-fun e!2449121 () Bool)

(assert (=> b!3955967 (=> res!1600752 e!2449121)))

(assert (=> b!3955967 (= res!1600752 (not ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))))

(assert (=> b!3955967 (= e!2449122 e!2449121)))

(declare-fun b!3955968 () Bool)

(assert (=> b!3955968 (= e!2449120 e!2449122)))

(declare-fun c!686677 () Bool)

(assert (=> b!3955968 (= c!686677 ((_ is EmptyLang!11501) (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun b!3955969 () Bool)

(declare-fun res!1600754 () Bool)

(assert (=> b!3955969 (=> (not res!1600754) (not e!2449116))))

(assert (=> b!3955969 (= res!1600754 (not call!285337))))

(declare-fun d!1172715 () Bool)

(assert (=> d!1172715 e!2449120))

(declare-fun c!686678 () Bool)

(assert (=> d!1172715 (= c!686678 ((_ is EmptyExpr!11501) (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))))))

(assert (=> d!1172715 (= lt!1383122 e!2449117)))

(declare-fun c!686679 () Bool)

(assert (=> d!1172715 (= c!686679 (isEmpty!25161 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))

(assert (=> d!1172715 (validRegex!5238 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))))

(assert (=> d!1172715 (= (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) lt!1383122)))

(declare-fun b!3955964 () Bool)

(declare-fun e!2449118 () Bool)

(assert (=> b!3955964 (= e!2449121 e!2449118)))

(declare-fun res!1600749 () Bool)

(assert (=> b!3955964 (=> (not res!1600749) (not e!2449118))))

(assert (=> b!3955964 (= res!1600749 (not lt!1383122))))

(declare-fun b!3955970 () Bool)

(assert (=> b!3955970 (= e!2449117 (nullable!4039 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))))))

(declare-fun b!3955971 () Bool)

(assert (=> b!3955971 (= e!2449118 e!2449119)))

(declare-fun res!1600747 () Bool)

(assert (=> b!3955971 (=> res!1600747 e!2449119)))

(assert (=> b!3955971 (= res!1600747 call!285337)))

(declare-fun b!3955972 () Bool)

(declare-fun res!1600750 () Bool)

(assert (=> b!3955972 (=> res!1600750 e!2449121)))

(assert (=> b!3955972 (= res!1600750 e!2449116)))

(declare-fun res!1600751 () Bool)

(assert (=> b!3955972 (=> (not res!1600751) (not e!2449116))))

(assert (=> b!3955972 (= res!1600751 lt!1383122)))

(declare-fun b!3955973 () Bool)

(assert (=> b!3955973 (= e!2449119 (not (= (head!8401 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (c!686412 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902))))))))))

(assert (= (and d!1172715 c!686679) b!3955970))

(assert (= (and d!1172715 (not c!686679)) b!3955962))

(assert (= (and d!1172715 c!686678) b!3955963))

(assert (= (and d!1172715 (not c!686678)) b!3955968))

(assert (= (and b!3955968 c!686677) b!3955966))

(assert (= (and b!3955968 (not c!686677)) b!3955967))

(assert (= (and b!3955967 (not res!1600752)) b!3955972))

(assert (= (and b!3955972 res!1600751) b!3955969))

(assert (= (and b!3955969 res!1600754) b!3955960))

(assert (= (and b!3955960 res!1600753) b!3955965))

(assert (= (and b!3955972 (not res!1600750)) b!3955964))

(assert (= (and b!3955964 res!1600749) b!3955971))

(assert (= (and b!3955971 (not res!1600747)) b!3955961))

(assert (= (and b!3955961 (not res!1600748)) b!3955973))

(assert (= (or b!3955963 b!3955971 b!3955969) bm!285332))

(assert (=> b!3955973 m!4523651))

(declare-fun m!4524831 () Bool)

(assert (=> b!3955973 m!4524831))

(assert (=> b!3955960 m!4523651))

(declare-fun m!4524833 () Bool)

(assert (=> b!3955960 m!4524833))

(assert (=> b!3955960 m!4524833))

(declare-fun m!4524835 () Bool)

(assert (=> b!3955960 m!4524835))

(declare-fun m!4524837 () Bool)

(assert (=> b!3955970 m!4524837))

(assert (=> d!1172715 m!4523651))

(declare-fun m!4524839 () Bool)

(assert (=> d!1172715 m!4524839))

(declare-fun m!4524841 () Bool)

(assert (=> d!1172715 m!4524841))

(assert (=> b!3955962 m!4523651))

(assert (=> b!3955962 m!4524831))

(assert (=> b!3955962 m!4524831))

(declare-fun m!4524843 () Bool)

(assert (=> b!3955962 m!4524843))

(assert (=> b!3955962 m!4523651))

(assert (=> b!3955962 m!4524833))

(assert (=> b!3955962 m!4524843))

(assert (=> b!3955962 m!4524833))

(declare-fun m!4524845 () Bool)

(assert (=> b!3955962 m!4524845))

(assert (=> b!3955961 m!4523651))

(assert (=> b!3955961 m!4524833))

(assert (=> b!3955961 m!4524833))

(assert (=> b!3955961 m!4524835))

(assert (=> b!3955965 m!4523651))

(assert (=> b!3955965 m!4524831))

(assert (=> bm!285332 m!4523651))

(assert (=> bm!285332 m!4524839))

(assert (=> b!3954913 d!1172715))

(assert (=> b!3954913 d!1172655))

(assert (=> b!3954913 d!1172651))

(assert (=> b!3954913 d!1172653))

(declare-fun d!1172717 () Bool)

(declare-fun lt!1383123 () Int)

(assert (=> d!1172717 (>= lt!1383123 0)))

(declare-fun e!2449123 () Int)

(assert (=> d!1172717 (= lt!1383123 e!2449123)))

(declare-fun c!686680 () Bool)

(assert (=> d!1172717 (= c!686680 ((_ is Nil!42100) (t!329057 prefix!426)))))

(assert (=> d!1172717 (= (size!31535 (t!329057 prefix!426)) lt!1383123)))

(declare-fun b!3955974 () Bool)

(assert (=> b!3955974 (= e!2449123 0)))

(declare-fun b!3955975 () Bool)

(assert (=> b!3955975 (= e!2449123 (+ 1 (size!31535 (t!329057 (t!329057 prefix!426)))))))

(assert (= (and d!1172717 c!686680) b!3955974))

(assert (= (and d!1172717 (not c!686680)) b!3955975))

(declare-fun m!4524847 () Bool)

(assert (=> b!3955975 m!4524847))

(assert (=> b!3955052 d!1172717))

(declare-fun d!1172719 () Bool)

(declare-fun lt!1383124 () Int)

(assert (=> d!1172719 (>= lt!1383124 0)))

(declare-fun e!2449124 () Int)

(assert (=> d!1172719 (= lt!1383124 e!2449124)))

(declare-fun c!686681 () Bool)

(assert (=> d!1172719 (= c!686681 ((_ is Nil!42101) (_1!23826 lt!1382927)))))

(assert (=> d!1172719 (= (size!31537 (_1!23826 lt!1382927)) lt!1383124)))

(declare-fun b!3955976 () Bool)

(assert (=> b!3955976 (= e!2449124 0)))

(declare-fun b!3955977 () Bool)

(assert (=> b!3955977 (= e!2449124 (+ 1 (size!31537 (t!329058 (_1!23826 lt!1382927)))))))

(assert (= (and d!1172719 c!686681) b!3955976))

(assert (= (and d!1172719 (not c!686681)) b!3955977))

(declare-fun m!4524849 () Bool)

(assert (=> b!3955977 m!4524849))

(assert (=> d!1172241 d!1172719))

(assert (=> d!1172241 d!1172237))

(declare-fun d!1172721 () Bool)

(declare-fun lt!1383125 () Int)

(assert (=> d!1172721 (>= lt!1383125 0)))

(declare-fun e!2449125 () Int)

(assert (=> d!1172721 (= lt!1383125 e!2449125)))

(declare-fun c!686682 () Bool)

(assert (=> d!1172721 (= c!686682 ((_ is Nil!42100) (_2!23826 lt!1382983)))))

(assert (=> d!1172721 (= (size!31535 (_2!23826 lt!1382983)) lt!1383125)))

(declare-fun b!3955978 () Bool)

(assert (=> b!3955978 (= e!2449125 0)))

(declare-fun b!3955979 () Bool)

(assert (=> b!3955979 (= e!2449125 (+ 1 (size!31535 (t!329057 (_2!23826 lt!1382983)))))))

(assert (= (and d!1172721 c!686682) b!3955978))

(assert (= (and d!1172721 (not c!686682)) b!3955979))

(declare-fun m!4524851 () Bool)

(assert (=> b!3955979 m!4524851))

(assert (=> b!3955184 d!1172721))

(assert (=> b!3955184 d!1172361))

(declare-fun d!1172723 () Bool)

(declare-fun e!2449128 () Bool)

(assert (=> d!1172723 e!2449128))

(declare-fun res!1600757 () Bool)

(assert (=> d!1172723 (=> (not res!1600757) (not e!2449128))))

(declare-fun lt!1383128 () BalanceConc!25208)

(assert (=> d!1172723 (= res!1600757 (= (list!15630 lt!1383128) lt!1382839))))

(declare-fun fromList!835 (List!42224) Conc!12807)

(assert (=> d!1172723 (= lt!1383128 (BalanceConc!25209 (fromList!835 lt!1382839)))))

(assert (=> d!1172723 (= (fromListB!2244 lt!1382839) lt!1383128)))

(declare-fun b!3955982 () Bool)

(assert (=> b!3955982 (= e!2449128 (isBalanced!3651 (fromList!835 lt!1382839)))))

(assert (= (and d!1172723 res!1600757) b!3955982))

(declare-fun m!4524853 () Bool)

(assert (=> d!1172723 m!4524853))

(declare-fun m!4524855 () Bool)

(assert (=> d!1172723 m!4524855))

(assert (=> b!3955982 m!4524855))

(assert (=> b!3955982 m!4524855))

(declare-fun m!4524857 () Bool)

(assert (=> b!3955982 m!4524857))

(assert (=> d!1172351 d!1172723))

(declare-fun d!1172725 () Bool)

(assert (=> d!1172725 (= (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))) (isBalanced!3651 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(declare-fun bs!587143 () Bool)

(assert (= bs!587143 d!1172725))

(declare-fun m!4524859 () Bool)

(assert (=> bs!587143 m!4524859))

(assert (=> tb!238125 d!1172725))

(declare-fun b!3955983 () Bool)

(declare-fun e!2449130 () Bool)

(assert (=> b!3955983 (= e!2449130 (inv!17 (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))

(declare-fun b!3955984 () Bool)

(declare-fun e!2449129 () Bool)

(assert (=> b!3955984 (= e!2449129 e!2449130)))

(declare-fun c!686684 () Bool)

(assert (=> b!3955984 (= c!686684 ((_ is IntegerValue!20479) (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))

(declare-fun d!1172727 () Bool)

(declare-fun c!686685 () Bool)

(assert (=> d!1172727 (= c!686685 ((_ is IntegerValue!20478) (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))

(assert (=> d!1172727 (= (inv!21 (value!208620 (h!47521 (t!329058 prefixTokens!80)))) e!2449129)))

(declare-fun b!3955985 () Bool)

(assert (=> b!3955985 (= e!2449129 (inv!16 (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))

(declare-fun b!3955986 () Bool)

(declare-fun res!1600758 () Bool)

(declare-fun e!2449131 () Bool)

(assert (=> b!3955986 (=> res!1600758 e!2449131)))

(assert (=> b!3955986 (= res!1600758 (not ((_ is IntegerValue!20480) (value!208620 (h!47521 (t!329058 prefixTokens!80))))))))

(assert (=> b!3955986 (= e!2449130 e!2449131)))

(declare-fun b!3955987 () Bool)

(assert (=> b!3955987 (= e!2449131 (inv!15 (value!208620 (h!47521 (t!329058 prefixTokens!80)))))))

(assert (= (and d!1172727 c!686685) b!3955985))

(assert (= (and d!1172727 (not c!686685)) b!3955984))

(assert (= (and b!3955984 c!686684) b!3955983))

(assert (= (and b!3955984 (not c!686684)) b!3955986))

(assert (= (and b!3955986 (not res!1600758)) b!3955987))

(declare-fun m!4524861 () Bool)

(assert (=> b!3955983 m!4524861))

(declare-fun m!4524863 () Bool)

(assert (=> b!3955985 m!4524863))

(declare-fun m!4524865 () Bool)

(assert (=> b!3955987 m!4524865))

(assert (=> b!3955288 d!1172727))

(declare-fun d!1172729 () Bool)

(assert (=> d!1172729 (= (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))) (list!15631 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))))

(declare-fun bs!587144 () Bool)

(assert (= bs!587144 d!1172729))

(declare-fun m!4524867 () Bool)

(assert (=> bs!587144 m!4524867))

(assert (=> d!1172205 d!1172729))

(declare-fun d!1172731 () Bool)

(assert (=> d!1172731 (= (list!15630 lt!1382843) (list!15631 (c!686413 lt!1382843)))))

(declare-fun bs!587145 () Bool)

(assert (= bs!587145 d!1172731))

(declare-fun m!4524869 () Bool)

(assert (=> bs!587145 m!4524869))

(assert (=> d!1172205 d!1172731))

(declare-fun d!1172733 () Bool)

(declare-fun dynLambda!18013 (Int BalanceConc!25208) Bool)

(assert (=> d!1172733 (dynLambda!18013 lambda!126769 lt!1382843)))

(declare-fun lt!1383131 () Unit!60594)

(declare-fun choose!23612 (Int BalanceConc!25208) Unit!60594)

(assert (=> d!1172733 (= lt!1383131 (choose!23612 lambda!126769 lt!1382843))))

(declare-fun Forall!1460 (Int) Bool)

(assert (=> d!1172733 (Forall!1460 lambda!126769)))

(assert (=> d!1172733 (= (ForallOf!798 lambda!126769 lt!1382843) lt!1383131)))

(declare-fun b_lambda!115739 () Bool)

(assert (=> (not b_lambda!115739) (not d!1172733)))

(declare-fun bs!587146 () Bool)

(assert (= bs!587146 d!1172733))

(declare-fun m!4524871 () Bool)

(assert (=> bs!587146 m!4524871))

(declare-fun m!4524873 () Bool)

(assert (=> bs!587146 m!4524873))

(declare-fun m!4524875 () Bool)

(assert (=> bs!587146 m!4524875))

(assert (=> d!1172205 d!1172733))

(declare-fun b!3955988 () Bool)

(declare-fun e!2449132 () tuple2!41384)

(assert (=> b!3955988 (= e!2449132 (tuple2!41385 Nil!42101 (_2!23825 (v!39359 lt!1382925))))))

(declare-fun b!3955989 () Bool)

(declare-fun e!2449133 () Bool)

(declare-fun lt!1383134 () tuple2!41384)

(assert (=> b!3955989 (= e!2449133 (not (isEmpty!25160 (_1!23826 lt!1383134))))))

(declare-fun d!1172735 () Bool)

(declare-fun e!2449134 () Bool)

(assert (=> d!1172735 e!2449134))

(declare-fun c!686686 () Bool)

(assert (=> d!1172735 (= c!686686 (> (size!31537 (_1!23826 lt!1383134)) 0))))

(assert (=> d!1172735 (= lt!1383134 e!2449132)))

(declare-fun c!686687 () Bool)

(declare-fun lt!1383132 () Option!9016)

(assert (=> d!1172735 (= c!686687 ((_ is Some!9015) lt!1383132))))

(assert (=> d!1172735 (= lt!1383132 (maxPrefix!3489 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382925))))))

(assert (=> d!1172735 (= (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382925))) lt!1383134)))

(declare-fun b!3955990 () Bool)

(assert (=> b!3955990 (= e!2449134 e!2449133)))

(declare-fun res!1600759 () Bool)

(assert (=> b!3955990 (= res!1600759 (< (size!31535 (_2!23826 lt!1383134)) (size!31535 (_2!23825 (v!39359 lt!1382925)))))))

(assert (=> b!3955990 (=> (not res!1600759) (not e!2449133))))

(declare-fun b!3955991 () Bool)

(declare-fun lt!1383133 () tuple2!41384)

(assert (=> b!3955991 (= e!2449132 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1383132)) (_1!23826 lt!1383133)) (_2!23826 lt!1383133)))))

(assert (=> b!3955991 (= lt!1383133 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1383132))))))

(declare-fun b!3955992 () Bool)

(assert (=> b!3955992 (= e!2449134 (= (_2!23826 lt!1383134) (_2!23825 (v!39359 lt!1382925))))))

(assert (= (and d!1172735 c!686687) b!3955991))

(assert (= (and d!1172735 (not c!686687)) b!3955988))

(assert (= (and d!1172735 c!686686) b!3955990))

(assert (= (and d!1172735 (not c!686686)) b!3955992))

(assert (= (and b!3955990 res!1600759) b!3955989))

(declare-fun m!4524877 () Bool)

(assert (=> b!3955989 m!4524877))

(declare-fun m!4524879 () Bool)

(assert (=> d!1172735 m!4524879))

(declare-fun m!4524881 () Bool)

(assert (=> d!1172735 m!4524881))

(declare-fun m!4524883 () Bool)

(assert (=> b!3955990 m!4524883))

(declare-fun m!4524885 () Bool)

(assert (=> b!3955990 m!4524885))

(declare-fun m!4524887 () Bool)

(assert (=> b!3955991 m!4524887))

(assert (=> b!3954993 d!1172735))

(declare-fun d!1172737 () Bool)

(declare-fun lt!1383135 () Int)

(assert (=> d!1172737 (>= lt!1383135 0)))

(declare-fun e!2449135 () Int)

(assert (=> d!1172737 (= lt!1383135 e!2449135)))

(declare-fun c!686688 () Bool)

(assert (=> d!1172737 (= c!686688 ((_ is Nil!42101) (_1!23826 lt!1382963)))))

(assert (=> d!1172737 (= (size!31537 (_1!23826 lt!1382963)) lt!1383135)))

(declare-fun b!3955993 () Bool)

(assert (=> b!3955993 (= e!2449135 0)))

(declare-fun b!3955994 () Bool)

(assert (=> b!3955994 (= e!2449135 (+ 1 (size!31537 (t!329058 (_1!23826 lt!1382963)))))))

(assert (= (and d!1172737 c!686688) b!3955993))

(assert (= (and d!1172737 (not c!686688)) b!3955994))

(declare-fun m!4524889 () Bool)

(assert (=> b!3955994 m!4524889))

(assert (=> d!1172329 d!1172737))

(declare-fun b!3955995 () Bool)

(declare-fun res!1600764 () Bool)

(declare-fun e!2449138 () Bool)

(assert (=> b!3955995 (=> (not res!1600764) (not e!2449138))))

(declare-fun lt!1383136 () Option!9016)

(assert (=> b!3955995 (= res!1600764 (= (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383136)))) (originalCharacters!7196 (_1!23825 (get!13883 lt!1383136)))))))

(declare-fun b!3955996 () Bool)

(declare-fun res!1600766 () Bool)

(assert (=> b!3955996 (=> (not res!1600766) (not e!2449138))))

(assert (=> b!3955996 (= res!1600766 (= (value!208620 (_1!23825 (get!13883 lt!1383136))) (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1383136)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1383136)))))))))

(declare-fun b!3955997 () Bool)

(declare-fun res!1600765 () Bool)

(assert (=> b!3955997 (=> (not res!1600765) (not e!2449138))))

(assert (=> b!3955997 (= res!1600765 (< (size!31535 (_2!23825 (get!13883 lt!1383136))) (size!31535 suffix!1176)))))

(declare-fun d!1172739 () Bool)

(declare-fun e!2449136 () Bool)

(assert (=> d!1172739 e!2449136))

(declare-fun res!1600763 () Bool)

(assert (=> d!1172739 (=> res!1600763 e!2449136)))

(assert (=> d!1172739 (= res!1600763 (isEmpty!25163 lt!1383136))))

(declare-fun e!2449137 () Option!9016)

(assert (=> d!1172739 (= lt!1383136 e!2449137)))

(declare-fun c!686689 () Bool)

(assert (=> d!1172739 (= c!686689 (and ((_ is Cons!42102) rules!2768) ((_ is Nil!42102) (t!329059 rules!2768))))))

(declare-fun lt!1383137 () Unit!60594)

(declare-fun lt!1383138 () Unit!60594)

(assert (=> d!1172739 (= lt!1383137 lt!1383138)))

(assert (=> d!1172739 (isPrefix!3685 suffix!1176 suffix!1176)))

(assert (=> d!1172739 (= lt!1383138 (lemmaIsPrefixRefl!2331 suffix!1176 suffix!1176))))

(assert (=> d!1172739 (rulesValidInductive!2389 thiss!20629 rules!2768)))

(assert (=> d!1172739 (= (maxPrefix!3489 thiss!20629 rules!2768 suffix!1176) lt!1383136)))

(declare-fun b!3955998 () Bool)

(declare-fun res!1600762 () Bool)

(assert (=> b!3955998 (=> (not res!1600762) (not e!2449138))))

(assert (=> b!3955998 (= res!1600762 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383136)))) (_2!23825 (get!13883 lt!1383136))) suffix!1176))))

(declare-fun call!285338 () Option!9016)

(declare-fun bm!285333 () Bool)

(assert (=> bm!285333 (= call!285338 (maxPrefixOneRule!2539 thiss!20629 (h!47522 rules!2768) suffix!1176))))

(declare-fun b!3955999 () Bool)

(declare-fun res!1600760 () Bool)

(assert (=> b!3955999 (=> (not res!1600760) (not e!2449138))))

(assert (=> b!3955999 (= res!1600760 (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1383136)))) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383136))))))))

(declare-fun b!3956000 () Bool)

(assert (=> b!3956000 (= e!2449136 e!2449138)))

(declare-fun res!1600761 () Bool)

(assert (=> b!3956000 (=> (not res!1600761) (not e!2449138))))

(assert (=> b!3956000 (= res!1600761 (isDefined!6990 lt!1383136))))

(declare-fun b!3956001 () Bool)

(assert (=> b!3956001 (= e!2449137 call!285338)))

(declare-fun b!3956002 () Bool)

(assert (=> b!3956002 (= e!2449138 (contains!8418 rules!2768 (rule!9566 (_1!23825 (get!13883 lt!1383136)))))))

(declare-fun b!3956003 () Bool)

(declare-fun lt!1383140 () Option!9016)

(declare-fun lt!1383139 () Option!9016)

(assert (=> b!3956003 (= e!2449137 (ite (and ((_ is None!9015) lt!1383140) ((_ is None!9015) lt!1383139)) None!9015 (ite ((_ is None!9015) lt!1383139) lt!1383140 (ite ((_ is None!9015) lt!1383140) lt!1383139 (ite (>= (size!31534 (_1!23825 (v!39359 lt!1383140))) (size!31534 (_1!23825 (v!39359 lt!1383139)))) lt!1383140 lt!1383139)))))))

(assert (=> b!3956003 (= lt!1383140 call!285338)))

(assert (=> b!3956003 (= lt!1383139 (maxPrefix!3489 thiss!20629 (t!329059 rules!2768) suffix!1176))))

(assert (= (and d!1172739 c!686689) b!3956001))

(assert (= (and d!1172739 (not c!686689)) b!3956003))

(assert (= (or b!3956001 b!3956003) bm!285333))

(assert (= (and d!1172739 (not res!1600763)) b!3956000))

(assert (= (and b!3956000 res!1600761) b!3955995))

(assert (= (and b!3955995 res!1600764) b!3955997))

(assert (= (and b!3955997 res!1600765) b!3955998))

(assert (= (and b!3955998 res!1600762) b!3955996))

(assert (= (and b!3955996 res!1600766) b!3955999))

(assert (= (and b!3955999 res!1600760) b!3956002))

(declare-fun m!4524891 () Bool)

(assert (=> b!3956000 m!4524891))

(declare-fun m!4524893 () Bool)

(assert (=> b!3955999 m!4524893))

(declare-fun m!4524895 () Bool)

(assert (=> b!3955999 m!4524895))

(assert (=> b!3955999 m!4524895))

(declare-fun m!4524897 () Bool)

(assert (=> b!3955999 m!4524897))

(assert (=> b!3955999 m!4524897))

(declare-fun m!4524899 () Bool)

(assert (=> b!3955999 m!4524899))

(assert (=> b!3955997 m!4524893))

(declare-fun m!4524901 () Bool)

(assert (=> b!3955997 m!4524901))

(assert (=> b!3955997 m!4523453))

(assert (=> b!3955998 m!4524893))

(assert (=> b!3955998 m!4524895))

(assert (=> b!3955998 m!4524895))

(assert (=> b!3955998 m!4524897))

(assert (=> b!3955998 m!4524897))

(declare-fun m!4524903 () Bool)

(assert (=> b!3955998 m!4524903))

(declare-fun m!4524905 () Bool)

(assert (=> b!3956003 m!4524905))

(assert (=> b!3955995 m!4524893))

(assert (=> b!3955995 m!4524895))

(assert (=> b!3955995 m!4524895))

(assert (=> b!3955995 m!4524897))

(assert (=> b!3956002 m!4524893))

(declare-fun m!4524907 () Bool)

(assert (=> b!3956002 m!4524907))

(declare-fun m!4524909 () Bool)

(assert (=> bm!285333 m!4524909))

(declare-fun m!4524911 () Bool)

(assert (=> d!1172739 m!4524911))

(declare-fun m!4524913 () Bool)

(assert (=> d!1172739 m!4524913))

(declare-fun m!4524915 () Bool)

(assert (=> d!1172739 m!4524915))

(assert (=> d!1172739 m!4523671))

(assert (=> b!3955996 m!4524893))

(declare-fun m!4524917 () Bool)

(assert (=> b!3955996 m!4524917))

(assert (=> b!3955996 m!4524917))

(declare-fun m!4524919 () Bool)

(assert (=> b!3955996 m!4524919))

(assert (=> d!1172329 d!1172739))

(declare-fun d!1172741 () Bool)

(declare-fun lt!1383141 () Int)

(assert (=> d!1172741 (>= lt!1383141 0)))

(declare-fun e!2449139 () Int)

(assert (=> d!1172741 (= lt!1383141 e!2449139)))

(declare-fun c!686690 () Bool)

(assert (=> d!1172741 (= c!686690 ((_ is Nil!42100) lt!1382830))))

(assert (=> d!1172741 (= (size!31535 lt!1382830) lt!1383141)))

(declare-fun b!3956004 () Bool)

(assert (=> b!3956004 (= e!2449139 0)))

(declare-fun b!3956005 () Bool)

(assert (=> b!3956005 (= e!2449139 (+ 1 (size!31535 (t!329057 lt!1382830))))))

(assert (= (and d!1172741 c!686690) b!3956004))

(assert (= (and d!1172741 (not c!686690)) b!3956005))

(declare-fun m!4524921 () Bool)

(assert (=> b!3956005 m!4524921))

(assert (=> b!3955169 d!1172741))

(assert (=> b!3955169 d!1172335))

(declare-fun d!1172743 () Bool)

(declare-fun lt!1383142 () Int)

(assert (=> d!1172743 (>= lt!1383142 0)))

(declare-fun e!2449140 () Int)

(assert (=> d!1172743 (= lt!1383142 e!2449140)))

(declare-fun c!686691 () Bool)

(assert (=> d!1172743 (= c!686691 ((_ is Nil!42100) (originalCharacters!7196 (h!47521 prefixTokens!80))))))

(assert (=> d!1172743 (= (size!31535 (originalCharacters!7196 (h!47521 prefixTokens!80))) lt!1383142)))

(declare-fun b!3956006 () Bool)

(assert (=> b!3956006 (= e!2449140 0)))

(declare-fun b!3956007 () Bool)

(assert (=> b!3956007 (= e!2449140 (+ 1 (size!31535 (t!329057 (originalCharacters!7196 (h!47521 prefixTokens!80))))))))

(assert (= (and d!1172743 c!686691) b!3956006))

(assert (= (and d!1172743 (not c!686691)) b!3956007))

(declare-fun m!4524923 () Bool)

(assert (=> b!3956007 m!4524923))

(assert (=> b!3955193 d!1172743))

(declare-fun d!1172745 () Bool)

(assert (=> d!1172745 (= (isEmpty!25161 (originalCharacters!7196 (h!47521 suffixTokens!72))) ((_ is Nil!42100) (originalCharacters!7196 (h!47521 suffixTokens!72))))))

(assert (=> d!1172229 d!1172745))

(declare-fun d!1172747 () Bool)

(assert (=> d!1172747 (= (inv!56321 (tag!7456 (h!47522 (t!329059 rules!2768)))) (= (mod (str.len (value!208619 (tag!7456 (h!47522 (t!329059 rules!2768))))) 2) 0))))

(assert (=> b!3955281 d!1172747))

(declare-fun d!1172749 () Bool)

(declare-fun res!1600767 () Bool)

(declare-fun e!2449141 () Bool)

(assert (=> d!1172749 (=> (not res!1600767) (not e!2449141))))

(assert (=> d!1172749 (= res!1600767 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768))))))))

(assert (=> d!1172749 (= (inv!56324 (transformation!6596 (h!47522 (t!329059 rules!2768)))) e!2449141)))

(declare-fun b!3956008 () Bool)

(assert (=> b!3956008 (= e!2449141 (equivClasses!2742 (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768))))))))

(assert (= (and d!1172749 res!1600767) b!3956008))

(declare-fun m!4524925 () Bool)

(assert (=> d!1172749 m!4524925))

(declare-fun m!4524927 () Bool)

(assert (=> b!3956008 m!4524927))

(assert (=> b!3955281 d!1172749))

(declare-fun d!1172751 () Bool)

(declare-fun c!686692 () Bool)

(assert (=> d!1172751 (= c!686692 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun e!2449142 () Bool)

(assert (=> d!1172751 (= (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))) e!2449142)))

(declare-fun b!3956009 () Bool)

(assert (=> b!3956009 (= e!2449142 (inv!56332 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))))))

(declare-fun b!3956010 () Bool)

(declare-fun e!2449143 () Bool)

(assert (=> b!3956010 (= e!2449142 e!2449143)))

(declare-fun res!1600768 () Bool)

(assert (=> b!3956010 (= res!1600768 (not ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))))))

(assert (=> b!3956010 (=> res!1600768 e!2449143)))

(declare-fun b!3956011 () Bool)

(assert (=> b!3956011 (= e!2449143 (inv!56333 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))))))

(assert (= (and d!1172751 c!686692) b!3956009))

(assert (= (and d!1172751 (not c!686692)) b!3956010))

(assert (= (and b!3956010 (not res!1600768)) b!3956011))

(declare-fun m!4524929 () Bool)

(assert (=> b!3956009 m!4524929))

(declare-fun m!4524931 () Bool)

(assert (=> b!3956011 m!4524931))

(assert (=> b!3955187 d!1172751))

(declare-fun d!1172753 () Bool)

(assert (=> d!1172753 (= (isEmpty!25163 lt!1382902) (not ((_ is Some!9015) lt!1382902)))))

(assert (=> d!1172237 d!1172753))

(declare-fun b!3956015 () Bool)

(declare-fun e!2449144 () Bool)

(assert (=> b!3956015 (= e!2449144 (>= (size!31535 lt!1382832) (size!31535 lt!1382832)))))

(declare-fun b!3956012 () Bool)

(declare-fun e!2449146 () Bool)

(declare-fun e!2449145 () Bool)

(assert (=> b!3956012 (= e!2449146 e!2449145)))

(declare-fun res!1600770 () Bool)

(assert (=> b!3956012 (=> (not res!1600770) (not e!2449145))))

(assert (=> b!3956012 (= res!1600770 (not ((_ is Nil!42100) lt!1382832)))))

(declare-fun b!3956014 () Bool)

(assert (=> b!3956014 (= e!2449145 (isPrefix!3685 (tail!6127 lt!1382832) (tail!6127 lt!1382832)))))

(declare-fun d!1172755 () Bool)

(assert (=> d!1172755 e!2449144))

(declare-fun res!1600772 () Bool)

(assert (=> d!1172755 (=> res!1600772 e!2449144)))

(declare-fun lt!1383143 () Bool)

(assert (=> d!1172755 (= res!1600772 (not lt!1383143))))

(assert (=> d!1172755 (= lt!1383143 e!2449146)))

(declare-fun res!1600769 () Bool)

(assert (=> d!1172755 (=> res!1600769 e!2449146)))

(assert (=> d!1172755 (= res!1600769 ((_ is Nil!42100) lt!1382832))))

(assert (=> d!1172755 (= (isPrefix!3685 lt!1382832 lt!1382832) lt!1383143)))

(declare-fun b!3956013 () Bool)

(declare-fun res!1600771 () Bool)

(assert (=> b!3956013 (=> (not res!1600771) (not e!2449145))))

(assert (=> b!3956013 (= res!1600771 (= (head!8401 lt!1382832) (head!8401 lt!1382832)))))

(assert (= (and d!1172755 (not res!1600769)) b!3956012))

(assert (= (and b!3956012 res!1600770) b!3956013))

(assert (= (and b!3956013 res!1600771) b!3956014))

(assert (= (and d!1172755 (not res!1600772)) b!3956015))

(assert (=> b!3956015 m!4523415))

(assert (=> b!3956015 m!4523415))

(assert (=> b!3956014 m!4523951))

(assert (=> b!3956014 m!4523951))

(assert (=> b!3956014 m!4523951))

(assert (=> b!3956014 m!4523951))

(declare-fun m!4524933 () Bool)

(assert (=> b!3956014 m!4524933))

(declare-fun m!4524935 () Bool)

(assert (=> b!3956013 m!4524935))

(assert (=> b!3956013 m!4524935))

(assert (=> d!1172237 d!1172755))

(declare-fun d!1172757 () Bool)

(assert (=> d!1172757 (isPrefix!3685 lt!1382832 lt!1382832)))

(declare-fun lt!1383146 () Unit!60594)

(declare-fun choose!23613 (List!42224 List!42224) Unit!60594)

(assert (=> d!1172757 (= lt!1383146 (choose!23613 lt!1382832 lt!1382832))))

(assert (=> d!1172757 (= (lemmaIsPrefixRefl!2331 lt!1382832 lt!1382832) lt!1383146)))

(declare-fun bs!587147 () Bool)

(assert (= bs!587147 d!1172757))

(assert (=> bs!587147 m!4523667))

(declare-fun m!4524937 () Bool)

(assert (=> bs!587147 m!4524937))

(assert (=> d!1172237 d!1172757))

(declare-fun d!1172759 () Bool)

(assert (=> d!1172759 true))

(declare-fun lt!1383149 () Bool)

(declare-fun lambda!126792 () Int)

(declare-fun forall!8327 (List!42226 Int) Bool)

(assert (=> d!1172759 (= lt!1383149 (forall!8327 rules!2768 lambda!126792))))

(declare-fun e!2449151 () Bool)

(assert (=> d!1172759 (= lt!1383149 e!2449151)))

(declare-fun res!1600777 () Bool)

(assert (=> d!1172759 (=> res!1600777 e!2449151)))

(assert (=> d!1172759 (= res!1600777 (not ((_ is Cons!42102) rules!2768)))))

(assert (=> d!1172759 (= (rulesValidInductive!2389 thiss!20629 rules!2768) lt!1383149)))

(declare-fun b!3956020 () Bool)

(declare-fun e!2449152 () Bool)

(assert (=> b!3956020 (= e!2449151 e!2449152)))

(declare-fun res!1600778 () Bool)

(assert (=> b!3956020 (=> (not res!1600778) (not e!2449152))))

(assert (=> b!3956020 (= res!1600778 (ruleValid!2538 thiss!20629 (h!47522 rules!2768)))))

(declare-fun b!3956021 () Bool)

(assert (=> b!3956021 (= e!2449152 (rulesValidInductive!2389 thiss!20629 (t!329059 rules!2768)))))

(assert (= (and d!1172759 (not res!1600777)) b!3956020))

(assert (= (and b!3956020 res!1600778) b!3956021))

(declare-fun m!4524939 () Bool)

(assert (=> d!1172759 m!4524939))

(assert (=> b!3956020 m!4524539))

(declare-fun m!4524941 () Bool)

(assert (=> b!3956021 m!4524941))

(assert (=> d!1172237 d!1172759))

(declare-fun d!1172761 () Bool)

(assert (=> d!1172761 (= (list!15630 lt!1382986) (list!15631 (c!686413 lt!1382986)))))

(declare-fun bs!587148 () Bool)

(assert (= bs!587148 d!1172761))

(declare-fun m!4524943 () Bool)

(assert (=> bs!587148 m!4524943))

(assert (=> d!1172357 d!1172761))

(declare-fun d!1172763 () Bool)

(declare-fun nullableFct!1139 (Regex!11501) Bool)

(assert (=> d!1172763 (= (nullable!4039 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (nullableFct!1139 (regex!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))))

(declare-fun bs!587149 () Bool)

(assert (= bs!587149 d!1172763))

(declare-fun m!4524945 () Bool)

(assert (=> bs!587149 m!4524945))

(assert (=> b!3955234 d!1172763))

(declare-fun d!1172765 () Bool)

(assert (=> d!1172765 (= (isEmpty!25160 (_1!23826 lt!1382983)) ((_ is Nil!42101) (_1!23826 lt!1382983)))))

(assert (=> b!3955183 d!1172765))

(declare-fun d!1172767 () Bool)

(declare-fun lt!1383150 () Int)

(assert (=> d!1172767 (>= lt!1383150 0)))

(declare-fun e!2449153 () Int)

(assert (=> d!1172767 (= lt!1383150 e!2449153)))

(declare-fun c!686693 () Bool)

(assert (=> d!1172767 (= c!686693 ((_ is Nil!42100) (_2!23826 lt!1382963)))))

(assert (=> d!1172767 (= (size!31535 (_2!23826 lt!1382963)) lt!1383150)))

(declare-fun b!3956024 () Bool)

(assert (=> b!3956024 (= e!2449153 0)))

(declare-fun b!3956025 () Bool)

(assert (=> b!3956025 (= e!2449153 (+ 1 (size!31535 (t!329057 (_2!23826 lt!1382963)))))))

(assert (= (and d!1172767 c!686693) b!3956024))

(assert (= (and d!1172767 (not c!686693)) b!3956025))

(declare-fun m!4524947 () Bool)

(assert (=> b!3956025 m!4524947))

(assert (=> b!3955134 d!1172767))

(assert (=> b!3955134 d!1172359))

(declare-fun d!1172769 () Bool)

(assert (=> d!1172769 (= (isEmpty!25161 (originalCharacters!7196 (h!47521 prefixTokens!80))) ((_ is Nil!42100) (originalCharacters!7196 (h!47521 prefixTokens!80))))))

(assert (=> d!1172363 d!1172769))

(declare-fun b!3956026 () Bool)

(declare-fun e!2449155 () Bool)

(assert (=> b!3956026 (= e!2449155 (inv!17 (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))

(declare-fun b!3956027 () Bool)

(declare-fun e!2449154 () Bool)

(assert (=> b!3956027 (= e!2449154 e!2449155)))

(declare-fun c!686694 () Bool)

(assert (=> b!3956027 (= c!686694 ((_ is IntegerValue!20479) (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))

(declare-fun d!1172771 () Bool)

(declare-fun c!686695 () Bool)

(assert (=> d!1172771 (= c!686695 ((_ is IntegerValue!20478) (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))

(assert (=> d!1172771 (= (inv!21 (value!208620 (h!47521 (t!329058 suffixTokens!72)))) e!2449154)))

(declare-fun b!3956028 () Bool)

(assert (=> b!3956028 (= e!2449154 (inv!16 (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))

(declare-fun b!3956029 () Bool)

(declare-fun res!1600779 () Bool)

(declare-fun e!2449156 () Bool)

(assert (=> b!3956029 (=> res!1600779 e!2449156)))

(assert (=> b!3956029 (= res!1600779 (not ((_ is IntegerValue!20480) (value!208620 (h!47521 (t!329058 suffixTokens!72))))))))

(assert (=> b!3956029 (= e!2449155 e!2449156)))

(declare-fun b!3956030 () Bool)

(assert (=> b!3956030 (= e!2449156 (inv!15 (value!208620 (h!47521 (t!329058 suffixTokens!72)))))))

(assert (= (and d!1172771 c!686695) b!3956028))

(assert (= (and d!1172771 (not c!686695)) b!3956027))

(assert (= (and b!3956027 c!686694) b!3956026))

(assert (= (and b!3956027 (not c!686694)) b!3956029))

(assert (= (and b!3956029 (not res!1600779)) b!3956030))

(declare-fun m!4524949 () Bool)

(assert (=> b!3956026 m!4524949))

(declare-fun m!4524951 () Bool)

(assert (=> b!3956028 m!4524951))

(declare-fun m!4524953 () Bool)

(assert (=> b!3956030 m!4524953))

(assert (=> b!3955255 d!1172771))

(declare-fun bs!587150 () Bool)

(declare-fun d!1172773 () Bool)

(assert (= bs!587150 (and d!1172773 d!1172205)))

(declare-fun lambda!126795 () Int)

(assert (=> bs!587150 (= (and (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (= (toValue!9072 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (= lambda!126795 lambda!126769))))

(assert (=> d!1172773 true))

(assert (=> d!1172773 (< (dynLambda!18002 order!22393 (toChars!8931 (transformation!6596 (h!47522 rules!2768)))) (dynLambda!18001 order!22391 lambda!126795))))

(assert (=> d!1172773 true))

(assert (=> d!1172773 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (dynLambda!18001 order!22391 lambda!126795))))

(assert (=> d!1172773 (= (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (Forall!1460 lambda!126795))))

(declare-fun bs!587151 () Bool)

(assert (= bs!587151 d!1172773))

(declare-fun m!4524955 () Bool)

(assert (=> bs!587151 m!4524955))

(assert (=> d!1172375 d!1172773))

(declare-fun bs!587152 () Bool)

(declare-fun d!1172775 () Bool)

(assert (= bs!587152 (and d!1172775 d!1172205)))

(declare-fun lambda!126796 () Int)

(assert (=> bs!587152 (= (and (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (= lambda!126796 lambda!126769))))

(declare-fun bs!587153 () Bool)

(assert (= bs!587153 (and d!1172775 d!1172773)))

(assert (=> bs!587153 (= (and (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (h!47522 rules!2768)))) (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (h!47522 rules!2768))))) (= lambda!126796 lambda!126795))))

(assert (=> d!1172775 true))

(assert (=> d!1172775 (< (dynLambda!18002 order!22393 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (dynLambda!18001 order!22391 lambda!126796))))

(assert (=> d!1172775 true))

(assert (=> d!1172775 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (dynLambda!18001 order!22391 lambda!126796))))

(assert (=> d!1172775 (= (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (Forall!1460 lambda!126796))))

(declare-fun bs!587154 () Bool)

(assert (= bs!587154 d!1172775))

(declare-fun m!4524957 () Bool)

(assert (=> bs!587154 m!4524957))

(assert (=> d!1172369 d!1172775))

(declare-fun d!1172777 () Bool)

(assert (=> d!1172777 (= (inv!15 (value!208620 (h!47521 suffixTokens!72))) (= (charsToBigInt!0 (text!48231 (value!208620 (h!47521 suffixTokens!72))) 0) (value!208615 (value!208620 (h!47521 suffixTokens!72)))))))

(declare-fun bs!587155 () Bool)

(assert (= bs!587155 d!1172777))

(declare-fun m!4524959 () Bool)

(assert (=> bs!587155 m!4524959))

(assert (=> b!3955074 d!1172777))

(declare-fun d!1172779 () Bool)

(declare-fun lt!1383151 () Int)

(assert (=> d!1172779 (>= lt!1383151 0)))

(declare-fun e!2449157 () Int)

(assert (=> d!1172779 (= lt!1383151 e!2449157)))

(declare-fun c!686696 () Bool)

(assert (=> d!1172779 (= c!686696 ((_ is Nil!42100) (t!329057 (_2!23825 (v!39359 lt!1382831)))))))

(assert (=> d!1172779 (= (size!31535 (t!329057 (_2!23825 (v!39359 lt!1382831)))) lt!1383151)))

(declare-fun b!3956035 () Bool)

(assert (=> b!3956035 (= e!2449157 0)))

(declare-fun b!3956036 () Bool)

(assert (=> b!3956036 (= e!2449157 (+ 1 (size!31535 (t!329057 (t!329057 (_2!23825 (v!39359 lt!1382831)))))))))

(assert (= (and d!1172779 c!686696) b!3956035))

(assert (= (and d!1172779 (not c!686696)) b!3956036))

(declare-fun m!4524961 () Bool)

(assert (=> b!3956036 m!4524961))

(assert (=> b!3955191 d!1172779))

(declare-fun d!1172781 () Bool)

(declare-fun lt!1383152 () List!42224)

(assert (=> d!1172781 (= (++!10949 (t!329057 lt!1382839) lt!1383152) (tail!6127 lt!1382832))))

(declare-fun e!2449158 () List!42224)

(assert (=> d!1172781 (= lt!1383152 e!2449158)))

(declare-fun c!686697 () Bool)

(assert (=> d!1172781 (= c!686697 ((_ is Cons!42100) (t!329057 lt!1382839)))))

(assert (=> d!1172781 (>= (size!31535 (tail!6127 lt!1382832)) (size!31535 (t!329057 lt!1382839)))))

(assert (=> d!1172781 (= (getSuffix!2136 (tail!6127 lt!1382832) (t!329057 lt!1382839)) lt!1383152)))

(declare-fun b!3956037 () Bool)

(assert (=> b!3956037 (= e!2449158 (getSuffix!2136 (tail!6127 (tail!6127 lt!1382832)) (t!329057 (t!329057 lt!1382839))))))

(declare-fun b!3956038 () Bool)

(assert (=> b!3956038 (= e!2449158 (tail!6127 lt!1382832))))

(assert (= (and d!1172781 c!686697) b!3956037))

(assert (= (and d!1172781 (not c!686697)) b!3956038))

(declare-fun m!4524963 () Bool)

(assert (=> d!1172781 m!4524963))

(assert (=> d!1172781 m!4523951))

(declare-fun m!4524965 () Bool)

(assert (=> d!1172781 m!4524965))

(assert (=> d!1172781 m!4523913))

(assert (=> b!3956037 m!4523951))

(declare-fun m!4524967 () Bool)

(assert (=> b!3956037 m!4524967))

(assert (=> b!3956037 m!4524967))

(declare-fun m!4524969 () Bool)

(assert (=> b!3956037 m!4524969))

(assert (=> b!3955180 d!1172781))

(declare-fun d!1172783 () Bool)

(assert (=> d!1172783 (= (tail!6127 lt!1382832) (t!329057 lt!1382832))))

(assert (=> b!3955180 d!1172783))

(declare-fun bs!587156 () Bool)

(declare-fun d!1172785 () Bool)

(assert (= bs!587156 (and d!1172785 d!1172759)))

(declare-fun lambda!126799 () Int)

(assert (=> bs!587156 (= lambda!126799 lambda!126792)))

(assert (=> d!1172785 true))

(declare-fun lt!1383155 () Bool)

(assert (=> d!1172785 (= lt!1383155 (rulesValidInductive!2389 thiss!20629 rules!2768))))

(assert (=> d!1172785 (= lt!1383155 (forall!8327 rules!2768 lambda!126799))))

(assert (=> d!1172785 (= (rulesValid!2577 thiss!20629 rules!2768) lt!1383155)))

(declare-fun bs!587157 () Bool)

(assert (= bs!587157 d!1172785))

(assert (=> bs!587157 m!4523671))

(declare-fun m!4524971 () Bool)

(assert (=> bs!587157 m!4524971))

(assert (=> d!1172303 d!1172785))

(declare-fun bs!587158 () Bool)

(declare-fun d!1172787 () Bool)

(assert (= bs!587158 (and d!1172787 d!1172205)))

(declare-fun lambda!126800 () Int)

(assert (=> bs!587158 (= (and (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (= lambda!126800 lambda!126769))))

(declare-fun bs!587159 () Bool)

(assert (= bs!587159 (and d!1172787 d!1172773)))

(assert (=> bs!587159 (= (and (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (h!47522 rules!2768)))) (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (h!47522 rules!2768))))) (= lambda!126800 lambda!126795))))

(declare-fun bs!587160 () Bool)

(assert (= bs!587160 (and d!1172787 d!1172775)))

(assert (=> bs!587160 (= (and (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))))) (= lambda!126800 lambda!126796))))

(assert (=> d!1172787 true))

(assert (=> d!1172787 (< (dynLambda!18002 order!22393 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) (dynLambda!18001 order!22391 lambda!126800))))

(assert (=> d!1172787 true))

(assert (=> d!1172787 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) (dynLambda!18001 order!22391 lambda!126800))))

(assert (=> d!1172787 (= (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) (Forall!1460 lambda!126800))))

(declare-fun bs!587161 () Bool)

(assert (= bs!587161 d!1172787))

(declare-fun m!4524973 () Bool)

(assert (=> bs!587161 m!4524973))

(assert (=> d!1172323 d!1172787))

(declare-fun b!3956039 () Bool)

(declare-fun res!1600784 () Bool)

(declare-fun e!2449161 () Bool)

(assert (=> b!3956039 (=> (not res!1600784) (not e!2449161))))

(declare-fun lt!1383156 () Option!9016)

(assert (=> b!3956039 (= res!1600784 (= (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383156)))) (originalCharacters!7196 (_1!23825 (get!13883 lt!1383156)))))))

(declare-fun b!3956040 () Bool)

(declare-fun res!1600786 () Bool)

(assert (=> b!3956040 (=> (not res!1600786) (not e!2449161))))

(assert (=> b!3956040 (= res!1600786 (= (value!208620 (_1!23825 (get!13883 lt!1383156))) (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1383156)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1383156)))))))))

(declare-fun b!3956041 () Bool)

(declare-fun res!1600785 () Bool)

(assert (=> b!3956041 (=> (not res!1600785) (not e!2449161))))

(assert (=> b!3956041 (= res!1600785 (< (size!31535 (_2!23825 (get!13883 lt!1383156))) (size!31535 lt!1382832)))))

(declare-fun d!1172789 () Bool)

(declare-fun e!2449159 () Bool)

(assert (=> d!1172789 e!2449159))

(declare-fun res!1600783 () Bool)

(assert (=> d!1172789 (=> res!1600783 e!2449159)))

(assert (=> d!1172789 (= res!1600783 (isEmpty!25163 lt!1383156))))

(declare-fun e!2449160 () Option!9016)

(assert (=> d!1172789 (= lt!1383156 e!2449160)))

(declare-fun c!686698 () Bool)

(assert (=> d!1172789 (= c!686698 (and ((_ is Cons!42102) (t!329059 rules!2768)) ((_ is Nil!42102) (t!329059 (t!329059 rules!2768)))))))

(declare-fun lt!1383157 () Unit!60594)

(declare-fun lt!1383158 () Unit!60594)

(assert (=> d!1172789 (= lt!1383157 lt!1383158)))

(assert (=> d!1172789 (isPrefix!3685 lt!1382832 lt!1382832)))

(assert (=> d!1172789 (= lt!1383158 (lemmaIsPrefixRefl!2331 lt!1382832 lt!1382832))))

(assert (=> d!1172789 (rulesValidInductive!2389 thiss!20629 (t!329059 rules!2768))))

(assert (=> d!1172789 (= (maxPrefix!3489 thiss!20629 (t!329059 rules!2768) lt!1382832) lt!1383156)))

(declare-fun b!3956042 () Bool)

(declare-fun res!1600782 () Bool)

(assert (=> b!3956042 (=> (not res!1600782) (not e!2449161))))

(assert (=> b!3956042 (= res!1600782 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383156)))) (_2!23825 (get!13883 lt!1383156))) lt!1382832))))

(declare-fun bm!285334 () Bool)

(declare-fun call!285339 () Option!9016)

(assert (=> bm!285334 (= call!285339 (maxPrefixOneRule!2539 thiss!20629 (h!47522 (t!329059 rules!2768)) lt!1382832))))

(declare-fun b!3956043 () Bool)

(declare-fun res!1600780 () Bool)

(assert (=> b!3956043 (=> (not res!1600780) (not e!2449161))))

(assert (=> b!3956043 (= res!1600780 (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1383156)))) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383156))))))))

(declare-fun b!3956044 () Bool)

(assert (=> b!3956044 (= e!2449159 e!2449161)))

(declare-fun res!1600781 () Bool)

(assert (=> b!3956044 (=> (not res!1600781) (not e!2449161))))

(assert (=> b!3956044 (= res!1600781 (isDefined!6990 lt!1383156))))

(declare-fun b!3956045 () Bool)

(assert (=> b!3956045 (= e!2449160 call!285339)))

(declare-fun b!3956046 () Bool)

(assert (=> b!3956046 (= e!2449161 (contains!8418 (t!329059 rules!2768) (rule!9566 (_1!23825 (get!13883 lt!1383156)))))))

(declare-fun b!3956047 () Bool)

(declare-fun lt!1383160 () Option!9016)

(declare-fun lt!1383159 () Option!9016)

(assert (=> b!3956047 (= e!2449160 (ite (and ((_ is None!9015) lt!1383160) ((_ is None!9015) lt!1383159)) None!9015 (ite ((_ is None!9015) lt!1383159) lt!1383160 (ite ((_ is None!9015) lt!1383160) lt!1383159 (ite (>= (size!31534 (_1!23825 (v!39359 lt!1383160))) (size!31534 (_1!23825 (v!39359 lt!1383159)))) lt!1383160 lt!1383159)))))))

(assert (=> b!3956047 (= lt!1383160 call!285339)))

(assert (=> b!3956047 (= lt!1383159 (maxPrefix!3489 thiss!20629 (t!329059 (t!329059 rules!2768)) lt!1382832))))

(assert (= (and d!1172789 c!686698) b!3956045))

(assert (= (and d!1172789 (not c!686698)) b!3956047))

(assert (= (or b!3956045 b!3956047) bm!285334))

(assert (= (and d!1172789 (not res!1600783)) b!3956044))

(assert (= (and b!3956044 res!1600781) b!3956039))

(assert (= (and b!3956039 res!1600784) b!3956041))

(assert (= (and b!3956041 res!1600785) b!3956042))

(assert (= (and b!3956042 res!1600782) b!3956040))

(assert (= (and b!3956040 res!1600786) b!3956043))

(assert (= (and b!3956043 res!1600780) b!3956046))

(declare-fun m!4524975 () Bool)

(assert (=> b!3956044 m!4524975))

(declare-fun m!4524977 () Bool)

(assert (=> b!3956043 m!4524977))

(declare-fun m!4524979 () Bool)

(assert (=> b!3956043 m!4524979))

(assert (=> b!3956043 m!4524979))

(declare-fun m!4524981 () Bool)

(assert (=> b!3956043 m!4524981))

(assert (=> b!3956043 m!4524981))

(declare-fun m!4524983 () Bool)

(assert (=> b!3956043 m!4524983))

(assert (=> b!3956041 m!4524977))

(declare-fun m!4524985 () Bool)

(assert (=> b!3956041 m!4524985))

(assert (=> b!3956041 m!4523415))

(assert (=> b!3956042 m!4524977))

(assert (=> b!3956042 m!4524979))

(assert (=> b!3956042 m!4524979))

(assert (=> b!3956042 m!4524981))

(assert (=> b!3956042 m!4524981))

(declare-fun m!4524987 () Bool)

(assert (=> b!3956042 m!4524987))

(declare-fun m!4524989 () Bool)

(assert (=> b!3956047 m!4524989))

(assert (=> b!3956039 m!4524977))

(assert (=> b!3956039 m!4524979))

(assert (=> b!3956039 m!4524979))

(assert (=> b!3956039 m!4524981))

(assert (=> b!3956046 m!4524977))

(declare-fun m!4524991 () Bool)

(assert (=> b!3956046 m!4524991))

(declare-fun m!4524993 () Bool)

(assert (=> bm!285334 m!4524993))

(declare-fun m!4524995 () Bool)

(assert (=> d!1172789 m!4524995))

(assert (=> d!1172789 m!4523667))

(assert (=> d!1172789 m!4523669))

(assert (=> d!1172789 m!4524941))

(assert (=> b!3956040 m!4524977))

(declare-fun m!4524997 () Bool)

(assert (=> b!3956040 m!4524997))

(assert (=> b!3956040 m!4524997))

(declare-fun m!4524999 () Bool)

(assert (=> b!3956040 m!4524999))

(assert (=> b!3954917 d!1172789))

(declare-fun b!3956049 () Bool)

(declare-fun e!2449162 () List!42225)

(assert (=> b!3956049 (= e!2449162 (Cons!42101 (h!47521 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))) (++!10950 (t!329058 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))) (_1!23826 lt!1382833))))))

(declare-fun b!3956048 () Bool)

(assert (=> b!3956048 (= e!2449162 (_1!23826 lt!1382833))))

(declare-fun b!3956050 () Bool)

(declare-fun res!1600788 () Bool)

(declare-fun e!2449163 () Bool)

(assert (=> b!3956050 (=> (not res!1600788) (not e!2449163))))

(declare-fun lt!1383161 () List!42225)

(assert (=> b!3956050 (= res!1600788 (= (size!31537 lt!1383161) (+ (size!31537 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))) (size!31537 (_1!23826 lt!1382833)))))))

(declare-fun b!3956051 () Bool)

(assert (=> b!3956051 (= e!2449163 (or (not (= (_1!23826 lt!1382833) Nil!42101)) (= lt!1383161 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))))

(declare-fun d!1172791 () Bool)

(assert (=> d!1172791 e!2449163))

(declare-fun res!1600787 () Bool)

(assert (=> d!1172791 (=> (not res!1600787) (not e!2449163))))

(assert (=> d!1172791 (= res!1600787 (= (content!6388 lt!1383161) ((_ map or) (content!6388 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))) (content!6388 (_1!23826 lt!1382833)))))))

(assert (=> d!1172791 (= lt!1383161 e!2449162)))

(declare-fun c!686699 () Bool)

(assert (=> d!1172791 (= c!686699 ((_ is Nil!42101) (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101))))))

(assert (=> d!1172791 (= (++!10950 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) (_1!23826 lt!1382833)) lt!1383161)))

(assert (= (and d!1172791 c!686699) b!3956048))

(assert (= (and d!1172791 (not c!686699)) b!3956049))

(assert (= (and d!1172791 res!1600787) b!3956050))

(assert (= (and b!3956050 res!1600788) b!3956051))

(declare-fun m!4525001 () Bool)

(assert (=> b!3956049 m!4525001))

(declare-fun m!4525003 () Bool)

(assert (=> b!3956050 m!4525003))

(declare-fun m!4525005 () Bool)

(assert (=> b!3956050 m!4525005))

(assert (=> b!3956050 m!4523817))

(declare-fun m!4525007 () Bool)

(assert (=> d!1172791 m!4525007))

(assert (=> d!1172791 m!4524825))

(assert (=> d!1172791 m!4523823))

(assert (=> b!3955054 d!1172791))

(declare-fun d!1172793 () Bool)

(assert (=> d!1172793 (= (_2!23825 (v!39359 lt!1382831)) lt!1382828)))

(assert (=> d!1172793 true))

(declare-fun _$63!1015 () Unit!60594)

(assert (=> d!1172793 (= (choose!23604 lt!1382839 (_2!23825 (v!39359 lt!1382831)) lt!1382839 lt!1382828 lt!1382832) _$63!1015)))

(assert (=> d!1172331 d!1172793))

(declare-fun b!3956055 () Bool)

(declare-fun e!2449164 () Bool)

(assert (=> b!3956055 (= e!2449164 (>= (size!31535 lt!1382832) (size!31535 lt!1382839)))))

(declare-fun b!3956052 () Bool)

(declare-fun e!2449166 () Bool)

(declare-fun e!2449165 () Bool)

(assert (=> b!3956052 (= e!2449166 e!2449165)))

(declare-fun res!1600790 () Bool)

(assert (=> b!3956052 (=> (not res!1600790) (not e!2449165))))

(assert (=> b!3956052 (= res!1600790 (not ((_ is Nil!42100) lt!1382832)))))

(declare-fun b!3956054 () Bool)

(assert (=> b!3956054 (= e!2449165 (isPrefix!3685 (tail!6127 lt!1382839) (tail!6127 lt!1382832)))))

(declare-fun d!1172795 () Bool)

(assert (=> d!1172795 e!2449164))

(declare-fun res!1600792 () Bool)

(assert (=> d!1172795 (=> res!1600792 e!2449164)))

(declare-fun lt!1383162 () Bool)

(assert (=> d!1172795 (= res!1600792 (not lt!1383162))))

(assert (=> d!1172795 (= lt!1383162 e!2449166)))

(declare-fun res!1600789 () Bool)

(assert (=> d!1172795 (=> res!1600789 e!2449166)))

(assert (=> d!1172795 (= res!1600789 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172795 (= (isPrefix!3685 lt!1382839 lt!1382832) lt!1383162)))

(declare-fun b!3956053 () Bool)

(declare-fun res!1600791 () Bool)

(assert (=> b!3956053 (=> (not res!1600791) (not e!2449165))))

(assert (=> b!3956053 (= res!1600791 (= (head!8401 lt!1382839) (head!8401 lt!1382832)))))

(assert (= (and d!1172795 (not res!1600789)) b!3956052))

(assert (= (and b!3956052 res!1600790) b!3956053))

(assert (= (and b!3956053 res!1600791) b!3956054))

(assert (= (and d!1172795 (not res!1600792)) b!3956055))

(assert (=> b!3956055 m!4523415))

(assert (=> b!3956055 m!4523471))

(assert (=> b!3956054 m!4523927))

(assert (=> b!3956054 m!4523951))

(assert (=> b!3956054 m!4523927))

(assert (=> b!3956054 m!4523951))

(declare-fun m!4525009 () Bool)

(assert (=> b!3956054 m!4525009))

(assert (=> b!3956053 m!4523933))

(assert (=> b!3956053 m!4524935))

(assert (=> d!1172331 d!1172795))

(declare-fun d!1172797 () Bool)

(assert (=> d!1172797 (= (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (= (mod (str.len (value!208619 (tag!7456 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3955289 d!1172797))

(declare-fun d!1172799 () Bool)

(declare-fun res!1600793 () Bool)

(declare-fun e!2449167 () Bool)

(assert (=> d!1172799 (=> (not res!1600793) (not e!2449167))))

(assert (=> d!1172799 (= res!1600793 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))))))

(assert (=> d!1172799 (= (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) e!2449167)))

(declare-fun b!3956056 () Bool)

(assert (=> b!3956056 (= e!2449167 (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))))))

(assert (= (and d!1172799 res!1600793) b!3956056))

(declare-fun m!4525011 () Bool)

(assert (=> d!1172799 m!4525011))

(declare-fun m!4525013 () Bool)

(assert (=> b!3956056 m!4525013))

(assert (=> b!3955289 d!1172799))

(declare-fun d!1172801 () Bool)

(declare-fun lt!1383163 () Int)

(assert (=> d!1172801 (>= lt!1383163 0)))

(declare-fun e!2449168 () Int)

(assert (=> d!1172801 (= lt!1383163 e!2449168)))

(declare-fun c!686700 () Bool)

(assert (=> d!1172801 (= c!686700 ((_ is Nil!42100) (_2!23825 (get!13883 lt!1382902))))))

(assert (=> d!1172801 (= (size!31535 (_2!23825 (get!13883 lt!1382902))) lt!1383163)))

(declare-fun b!3956057 () Bool)

(assert (=> b!3956057 (= e!2449168 0)))

(declare-fun b!3956058 () Bool)

(assert (=> b!3956058 (= e!2449168 (+ 1 (size!31535 (t!329057 (_2!23825 (get!13883 lt!1382902))))))))

(assert (= (and d!1172801 c!686700) b!3956057))

(assert (= (and d!1172801 (not c!686700)) b!3956058))

(declare-fun m!4525015 () Bool)

(assert (=> b!3956058 m!4525015))

(assert (=> b!3954911 d!1172801))

(assert (=> b!3954911 d!1172655))

(assert (=> b!3954911 d!1172299))

(declare-fun d!1172803 () Bool)

(declare-fun c!686701 () Bool)

(assert (=> d!1172803 (= c!686701 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(declare-fun e!2449169 () Bool)

(assert (=> d!1172803 (= (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))) e!2449169)))

(declare-fun b!3956059 () Bool)

(assert (=> b!3956059 (= e!2449169 (inv!56332 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(declare-fun b!3956060 () Bool)

(declare-fun e!2449170 () Bool)

(assert (=> b!3956060 (= e!2449169 e!2449170)))

(declare-fun res!1600794 () Bool)

(assert (=> b!3956060 (= res!1600794 (not ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))))))

(assert (=> b!3956060 (=> res!1600794 e!2449170)))

(declare-fun b!3956061 () Bool)

(assert (=> b!3956061 (= e!2449170 (inv!56333 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(assert (= (and d!1172803 c!686701) b!3956059))

(assert (= (and d!1172803 (not c!686701)) b!3956060))

(assert (= (and b!3956060 (not res!1600794)) b!3956061))

(declare-fun m!4525017 () Bool)

(assert (=> b!3956059 m!4525017))

(declare-fun m!4525019 () Bool)

(assert (=> b!3956061 m!4525019))

(assert (=> b!3954863 d!1172803))

(declare-fun d!1172805 () Bool)

(assert (=> d!1172805 (= (isDefined!6990 lt!1382902) (not (isEmpty!25163 lt!1382902)))))

(declare-fun bs!587162 () Bool)

(assert (= bs!587162 d!1172805))

(assert (=> bs!587162 m!4523665))

(assert (=> b!3954914 d!1172805))

(declare-fun d!1172807 () Bool)

(assert (=> d!1172807 (= (isEmpty!25161 (tail!6127 lt!1382839)) ((_ is Nil!42100) (tail!6127 lt!1382839)))))

(assert (=> b!3955224 d!1172807))

(assert (=> b!3955224 d!1172631))

(declare-fun d!1172809 () Bool)

(declare-fun lt!1383164 () Int)

(assert (=> d!1172809 (>= lt!1383164 0)))

(declare-fun e!2449171 () Int)

(assert (=> d!1172809 (= lt!1383164 e!2449171)))

(declare-fun c!686702 () Bool)

(assert (=> d!1172809 (= c!686702 ((_ is Nil!42101) (_1!23826 lt!1382983)))))

(assert (=> d!1172809 (= (size!31537 (_1!23826 lt!1382983)) lt!1383164)))

(declare-fun b!3956062 () Bool)

(assert (=> b!3956062 (= e!2449171 0)))

(declare-fun b!3956063 () Bool)

(assert (=> b!3956063 (= e!2449171 (+ 1 (size!31537 (t!329058 (_1!23826 lt!1382983)))))))

(assert (= (and d!1172809 c!686702) b!3956062))

(assert (= (and d!1172809 (not c!686702)) b!3956063))

(declare-fun m!4525021 () Bool)

(assert (=> b!3956063 m!4525021))

(assert (=> d!1172353 d!1172809))

(declare-fun b!3956064 () Bool)

(declare-fun res!1600799 () Bool)

(declare-fun e!2449174 () Bool)

(assert (=> b!3956064 (=> (not res!1600799) (not e!2449174))))

(declare-fun lt!1383165 () Option!9016)

(assert (=> b!3956064 (= res!1600799 (= (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383165)))) (originalCharacters!7196 (_1!23825 (get!13883 lt!1383165)))))))

(declare-fun b!3956065 () Bool)

(declare-fun res!1600801 () Bool)

(assert (=> b!3956065 (=> (not res!1600801) (not e!2449174))))

(assert (=> b!3956065 (= res!1600801 (= (value!208620 (_1!23825 (get!13883 lt!1383165))) (apply!9827 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1383165)))) (seqFromList!4855 (originalCharacters!7196 (_1!23825 (get!13883 lt!1383165)))))))))

(declare-fun b!3956066 () Bool)

(declare-fun res!1600800 () Bool)

(assert (=> b!3956066 (=> (not res!1600800) (not e!2449174))))

(assert (=> b!3956066 (= res!1600800 (< (size!31535 (_2!23825 (get!13883 lt!1383165))) (size!31535 (_2!23825 (v!39359 lt!1382831)))))))

(declare-fun d!1172811 () Bool)

(declare-fun e!2449172 () Bool)

(assert (=> d!1172811 e!2449172))

(declare-fun res!1600798 () Bool)

(assert (=> d!1172811 (=> res!1600798 e!2449172)))

(assert (=> d!1172811 (= res!1600798 (isEmpty!25163 lt!1383165))))

(declare-fun e!2449173 () Option!9016)

(assert (=> d!1172811 (= lt!1383165 e!2449173)))

(declare-fun c!686703 () Bool)

(assert (=> d!1172811 (= c!686703 (and ((_ is Cons!42102) rules!2768) ((_ is Nil!42102) (t!329059 rules!2768))))))

(declare-fun lt!1383166 () Unit!60594)

(declare-fun lt!1383167 () Unit!60594)

(assert (=> d!1172811 (= lt!1383166 lt!1383167)))

(assert (=> d!1172811 (isPrefix!3685 (_2!23825 (v!39359 lt!1382831)) (_2!23825 (v!39359 lt!1382831)))))

(assert (=> d!1172811 (= lt!1383167 (lemmaIsPrefixRefl!2331 (_2!23825 (v!39359 lt!1382831)) (_2!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172811 (rulesValidInductive!2389 thiss!20629 rules!2768)))

(assert (=> d!1172811 (= (maxPrefix!3489 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382831))) lt!1383165)))

(declare-fun b!3956067 () Bool)

(declare-fun res!1600797 () Bool)

(assert (=> b!3956067 (=> (not res!1600797) (not e!2449174))))

(assert (=> b!3956067 (= res!1600797 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383165)))) (_2!23825 (get!13883 lt!1383165))) (_2!23825 (v!39359 lt!1382831))))))

(declare-fun call!285340 () Option!9016)

(declare-fun bm!285335 () Bool)

(assert (=> bm!285335 (= call!285340 (maxPrefixOneRule!2539 thiss!20629 (h!47522 rules!2768) (_2!23825 (v!39359 lt!1382831))))))

(declare-fun b!3956068 () Bool)

(declare-fun res!1600795 () Bool)

(assert (=> b!3956068 (=> (not res!1600795) (not e!2449174))))

(assert (=> b!3956068 (= res!1600795 (matchR!5522 (regex!6596 (rule!9566 (_1!23825 (get!13883 lt!1383165)))) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1383165))))))))

(declare-fun b!3956069 () Bool)

(assert (=> b!3956069 (= e!2449172 e!2449174)))

(declare-fun res!1600796 () Bool)

(assert (=> b!3956069 (=> (not res!1600796) (not e!2449174))))

(assert (=> b!3956069 (= res!1600796 (isDefined!6990 lt!1383165))))

(declare-fun b!3956070 () Bool)

(assert (=> b!3956070 (= e!2449173 call!285340)))

(declare-fun b!3956071 () Bool)

(assert (=> b!3956071 (= e!2449174 (contains!8418 rules!2768 (rule!9566 (_1!23825 (get!13883 lt!1383165)))))))

(declare-fun b!3956072 () Bool)

(declare-fun lt!1383169 () Option!9016)

(declare-fun lt!1383168 () Option!9016)

(assert (=> b!3956072 (= e!2449173 (ite (and ((_ is None!9015) lt!1383169) ((_ is None!9015) lt!1383168)) None!9015 (ite ((_ is None!9015) lt!1383168) lt!1383169 (ite ((_ is None!9015) lt!1383169) lt!1383168 (ite (>= (size!31534 (_1!23825 (v!39359 lt!1383169))) (size!31534 (_1!23825 (v!39359 lt!1383168)))) lt!1383169 lt!1383168)))))))

(assert (=> b!3956072 (= lt!1383169 call!285340)))

(assert (=> b!3956072 (= lt!1383168 (maxPrefix!3489 thiss!20629 (t!329059 rules!2768) (_2!23825 (v!39359 lt!1382831))))))

(assert (= (and d!1172811 c!686703) b!3956070))

(assert (= (and d!1172811 (not c!686703)) b!3956072))

(assert (= (or b!3956070 b!3956072) bm!285335))

(assert (= (and d!1172811 (not res!1600798)) b!3956069))

(assert (= (and b!3956069 res!1600796) b!3956064))

(assert (= (and b!3956064 res!1600799) b!3956066))

(assert (= (and b!3956066 res!1600800) b!3956067))

(assert (= (and b!3956067 res!1600797) b!3956065))

(assert (= (and b!3956065 res!1600801) b!3956068))

(assert (= (and b!3956068 res!1600795) b!3956071))

(declare-fun m!4525023 () Bool)

(assert (=> b!3956069 m!4525023))

(declare-fun m!4525025 () Bool)

(assert (=> b!3956068 m!4525025))

(declare-fun m!4525027 () Bool)

(assert (=> b!3956068 m!4525027))

(assert (=> b!3956068 m!4525027))

(declare-fun m!4525029 () Bool)

(assert (=> b!3956068 m!4525029))

(assert (=> b!3956068 m!4525029))

(declare-fun m!4525031 () Bool)

(assert (=> b!3956068 m!4525031))

(assert (=> b!3956066 m!4525025))

(declare-fun m!4525033 () Bool)

(assert (=> b!3956066 m!4525033))

(assert (=> b!3956066 m!4523455))

(assert (=> b!3956067 m!4525025))

(assert (=> b!3956067 m!4525027))

(assert (=> b!3956067 m!4525027))

(assert (=> b!3956067 m!4525029))

(assert (=> b!3956067 m!4525029))

(declare-fun m!4525035 () Bool)

(assert (=> b!3956067 m!4525035))

(declare-fun m!4525037 () Bool)

(assert (=> b!3956072 m!4525037))

(assert (=> b!3956064 m!4525025))

(assert (=> b!3956064 m!4525027))

(assert (=> b!3956064 m!4525027))

(assert (=> b!3956064 m!4525029))

(assert (=> b!3956071 m!4525025))

(declare-fun m!4525039 () Bool)

(assert (=> b!3956071 m!4525039))

(declare-fun m!4525041 () Bool)

(assert (=> bm!285335 m!4525041))

(declare-fun m!4525043 () Bool)

(assert (=> d!1172811 m!4525043))

(declare-fun m!4525045 () Bool)

(assert (=> d!1172811 m!4525045))

(declare-fun m!4525047 () Bool)

(assert (=> d!1172811 m!4525047))

(assert (=> d!1172811 m!4523671))

(assert (=> b!3956065 m!4525025))

(declare-fun m!4525049 () Bool)

(assert (=> b!3956065 m!4525049))

(assert (=> b!3956065 m!4525049))

(declare-fun m!4525051 () Bool)

(assert (=> b!3956065 m!4525051))

(assert (=> d!1172353 d!1172811))

(declare-fun b!3956073 () Bool)

(declare-fun e!2449175 () tuple2!41384)

(assert (=> b!3956073 (= e!2449175 (tuple2!41385 Nil!42101 (_2!23825 (v!39359 lt!1382981))))))

(declare-fun b!3956074 () Bool)

(declare-fun e!2449176 () Bool)

(declare-fun lt!1383172 () tuple2!41384)

(assert (=> b!3956074 (= e!2449176 (not (isEmpty!25160 (_1!23826 lt!1383172))))))

(declare-fun d!1172813 () Bool)

(declare-fun e!2449177 () Bool)

(assert (=> d!1172813 e!2449177))

(declare-fun c!686704 () Bool)

(assert (=> d!1172813 (= c!686704 (> (size!31537 (_1!23826 lt!1383172)) 0))))

(assert (=> d!1172813 (= lt!1383172 e!2449175)))

(declare-fun c!686705 () Bool)

(declare-fun lt!1383170 () Option!9016)

(assert (=> d!1172813 (= c!686705 ((_ is Some!9015) lt!1383170))))

(assert (=> d!1172813 (= lt!1383170 (maxPrefix!3489 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382981))))))

(assert (=> d!1172813 (= (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382981))) lt!1383172)))

(declare-fun b!3956075 () Bool)

(assert (=> b!3956075 (= e!2449177 e!2449176)))

(declare-fun res!1600802 () Bool)

(assert (=> b!3956075 (= res!1600802 (< (size!31535 (_2!23826 lt!1383172)) (size!31535 (_2!23825 (v!39359 lt!1382981)))))))

(assert (=> b!3956075 (=> (not res!1600802) (not e!2449176))))

(declare-fun b!3956076 () Bool)

(declare-fun lt!1383171 () tuple2!41384)

(assert (=> b!3956076 (= e!2449175 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1383170)) (_1!23826 lt!1383171)) (_2!23826 lt!1383171)))))

(assert (=> b!3956076 (= lt!1383171 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1383170))))))

(declare-fun b!3956077 () Bool)

(assert (=> b!3956077 (= e!2449177 (= (_2!23826 lt!1383172) (_2!23825 (v!39359 lt!1382981))))))

(assert (= (and d!1172813 c!686705) b!3956076))

(assert (= (and d!1172813 (not c!686705)) b!3956073))

(assert (= (and d!1172813 c!686704) b!3956075))

(assert (= (and d!1172813 (not c!686704)) b!3956077))

(assert (= (and b!3956075 res!1600802) b!3956074))

(declare-fun m!4525053 () Bool)

(assert (=> b!3956074 m!4525053))

(declare-fun m!4525055 () Bool)

(assert (=> d!1172813 m!4525055))

(declare-fun m!4525057 () Bool)

(assert (=> d!1172813 m!4525057))

(declare-fun m!4525059 () Bool)

(assert (=> b!3956075 m!4525059))

(declare-fun m!4525061 () Bool)

(assert (=> b!3956075 m!4525061))

(declare-fun m!4525063 () Bool)

(assert (=> b!3956076 m!4525063))

(assert (=> b!3955185 d!1172813))

(declare-fun b!3956081 () Bool)

(declare-fun lt!1383173 () List!42224)

(declare-fun e!2449179 () Bool)

(assert (=> b!3956081 (= e!2449179 (or (not (= suffix!1176 Nil!42100)) (= lt!1383173 (t!329057 prefix!426))))))

(declare-fun b!3956078 () Bool)

(declare-fun e!2449178 () List!42224)

(assert (=> b!3956078 (= e!2449178 suffix!1176)))

(declare-fun b!3956080 () Bool)

(declare-fun res!1600803 () Bool)

(assert (=> b!3956080 (=> (not res!1600803) (not e!2449179))))

(assert (=> b!3956080 (= res!1600803 (= (size!31535 lt!1383173) (+ (size!31535 (t!329057 prefix!426)) (size!31535 suffix!1176))))))

(declare-fun d!1172815 () Bool)

(assert (=> d!1172815 e!2449179))

(declare-fun res!1600804 () Bool)

(assert (=> d!1172815 (=> (not res!1600804) (not e!2449179))))

(assert (=> d!1172815 (= res!1600804 (= (content!6390 lt!1383173) ((_ map or) (content!6390 (t!329057 prefix!426)) (content!6390 suffix!1176))))))

(assert (=> d!1172815 (= lt!1383173 e!2449178)))

(declare-fun c!686706 () Bool)

(assert (=> d!1172815 (= c!686706 ((_ is Nil!42100) (t!329057 prefix!426)))))

(assert (=> d!1172815 (= (++!10949 (t!329057 prefix!426) suffix!1176) lt!1383173)))

(declare-fun b!3956079 () Bool)

(assert (=> b!3956079 (= e!2449178 (Cons!42100 (h!47520 (t!329057 prefix!426)) (++!10949 (t!329057 (t!329057 prefix!426)) suffix!1176)))))

(assert (= (and d!1172815 c!686706) b!3956078))

(assert (= (and d!1172815 (not c!686706)) b!3956079))

(assert (= (and d!1172815 res!1600804) b!3956080))

(assert (= (and b!3956080 res!1600803) b!3956081))

(declare-fun m!4525065 () Bool)

(assert (=> b!3956080 m!4525065))

(assert (=> b!3956080 m!4523809))

(assert (=> b!3956080 m!4523453))

(declare-fun m!4525067 () Bool)

(assert (=> d!1172815 m!4525067))

(declare-fun m!4525069 () Bool)

(assert (=> d!1172815 m!4525069))

(assert (=> d!1172815 m!4523787))

(declare-fun m!4525071 () Bool)

(assert (=> b!3956079 m!4525071))

(assert (=> b!3955023 d!1172815))

(declare-fun d!1172817 () Bool)

(declare-fun c!686709 () Bool)

(assert (=> d!1172817 (= c!686709 ((_ is Nil!42100) lt!1382968))))

(declare-fun e!2449182 () (InoxSet C!23188))

(assert (=> d!1172817 (= (content!6390 lt!1382968) e!2449182)))

(declare-fun b!3956086 () Bool)

(assert (=> b!3956086 (= e!2449182 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956087 () Bool)

(assert (=> b!3956087 (= e!2449182 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 lt!1382968) true) (content!6390 (t!329057 lt!1382968))))))

(assert (= (and d!1172817 c!686709) b!3956086))

(assert (= (and d!1172817 (not c!686709)) b!3956087))

(declare-fun m!4525073 () Bool)

(assert (=> b!3956087 m!4525073))

(declare-fun m!4525075 () Bool)

(assert (=> b!3956087 m!4525075))

(assert (=> d!1172337 d!1172817))

(declare-fun d!1172819 () Bool)

(declare-fun c!686710 () Bool)

(assert (=> d!1172819 (= c!686710 ((_ is Nil!42100) lt!1382839))))

(declare-fun e!2449183 () (InoxSet C!23188))

(assert (=> d!1172819 (= (content!6390 lt!1382839) e!2449183)))

(declare-fun b!3956088 () Bool)

(assert (=> b!3956088 (= e!2449183 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956089 () Bool)

(assert (=> b!3956089 (= e!2449183 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 lt!1382839) true) (content!6390 (t!329057 lt!1382839))))))

(assert (= (and d!1172819 c!686710) b!3956088))

(assert (= (and d!1172819 (not c!686710)) b!3956089))

(declare-fun m!4525077 () Bool)

(assert (=> b!3956089 m!4525077))

(declare-fun m!4525079 () Bool)

(assert (=> b!3956089 m!4525079))

(assert (=> d!1172337 d!1172819))

(declare-fun d!1172821 () Bool)

(declare-fun c!686711 () Bool)

(assert (=> d!1172821 (= c!686711 ((_ is Nil!42100) (_2!23825 (v!39359 lt!1382831))))))

(declare-fun e!2449184 () (InoxSet C!23188))

(assert (=> d!1172821 (= (content!6390 (_2!23825 (v!39359 lt!1382831))) e!2449184)))

(declare-fun b!3956090 () Bool)

(assert (=> b!3956090 (= e!2449184 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956091 () Bool)

(assert (=> b!3956091 (= e!2449184 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 (_2!23825 (v!39359 lt!1382831))) true) (content!6390 (t!329057 (_2!23825 (v!39359 lt!1382831))))))))

(assert (= (and d!1172821 c!686711) b!3956090))

(assert (= (and d!1172821 (not c!686711)) b!3956091))

(declare-fun m!4525081 () Bool)

(assert (=> b!3956091 m!4525081))

(declare-fun m!4525083 () Bool)

(assert (=> b!3956091 m!4525083))

(assert (=> d!1172337 d!1172821))

(declare-fun d!1172823 () Bool)

(declare-fun charsToInt!0 (List!42223) (_ BitVec 32))

(assert (=> d!1172823 (= (inv!16 (value!208620 (h!47521 prefixTokens!80))) (= (charsToInt!0 (text!48229 (value!208620 (h!47521 prefixTokens!80)))) (value!208611 (value!208620 (h!47521 prefixTokens!80)))))))

(declare-fun bs!587163 () Bool)

(assert (= bs!587163 d!1172823))

(declare-fun m!4525085 () Bool)

(assert (=> bs!587163 m!4525085))

(assert (=> b!3955044 d!1172823))

(declare-fun bs!587164 () Bool)

(declare-fun d!1172825 () Bool)

(assert (= bs!587164 (and d!1172825 d!1172693)))

(declare-fun lambda!126801 () Int)

(assert (=> bs!587164 (= (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (h!47522 rules!2768)))) (= lambda!126801 lambda!126788))))

(declare-fun bs!587165 () Bool)

(assert (= bs!587165 (and d!1172825 d!1172695)))

(assert (=> bs!587165 (= (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) (= lambda!126801 lambda!126789))))

(assert (=> d!1172825 true))

(assert (=> d!1172825 (< (dynLambda!18000 order!22389 (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) (dynLambda!18012 order!22397 lambda!126801))))

(assert (=> d!1172825 (= (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) (Forall2!1059 lambda!126801))))

(declare-fun bs!587166 () Bool)

(assert (= bs!587166 d!1172825))

(declare-fun m!4525087 () Bool)

(assert (=> bs!587166 m!4525087))

(assert (=> b!3955121 d!1172825))

(declare-fun d!1172827 () Bool)

(declare-fun c!686714 () Bool)

(assert (=> d!1172827 (= c!686714 ((_ is Nil!42102) rules!2768))))

(declare-fun e!2449187 () (InoxSet Rule!12992))

(assert (=> d!1172827 (= (content!6391 rules!2768) e!2449187)))

(declare-fun b!3956096 () Bool)

(assert (=> b!3956096 (= e!2449187 ((as const (Array Rule!12992 Bool)) false))))

(declare-fun b!3956097 () Bool)

(assert (=> b!3956097 (= e!2449187 ((_ map or) (store ((as const (Array Rule!12992 Bool)) false) (h!47522 rules!2768) true) (content!6391 (t!329059 rules!2768))))))

(assert (= (and d!1172827 c!686714) b!3956096))

(assert (= (and d!1172827 (not c!686714)) b!3956097))

(declare-fun m!4525089 () Bool)

(assert (=> b!3956097 m!4525089))

(declare-fun m!4525091 () Bool)

(assert (=> b!3956097 m!4525091))

(assert (=> d!1172319 d!1172827))

(declare-fun b!3956098 () Bool)

(declare-fun e!2449188 () tuple2!41384)

(assert (=> b!3956098 (= e!2449188 (tuple2!41385 Nil!42101 (_2!23825 (v!39359 lt!1382961))))))

(declare-fun b!3956099 () Bool)

(declare-fun e!2449189 () Bool)

(declare-fun lt!1383176 () tuple2!41384)

(assert (=> b!3956099 (= e!2449189 (not (isEmpty!25160 (_1!23826 lt!1383176))))))

(declare-fun d!1172829 () Bool)

(declare-fun e!2449190 () Bool)

(assert (=> d!1172829 e!2449190))

(declare-fun c!686715 () Bool)

(assert (=> d!1172829 (= c!686715 (> (size!31537 (_1!23826 lt!1383176)) 0))))

(assert (=> d!1172829 (= lt!1383176 e!2449188)))

(declare-fun c!686716 () Bool)

(declare-fun lt!1383174 () Option!9016)

(assert (=> d!1172829 (= c!686716 ((_ is Some!9015) lt!1383174))))

(assert (=> d!1172829 (= lt!1383174 (maxPrefix!3489 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382961))))))

(assert (=> d!1172829 (= (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1382961))) lt!1383176)))

(declare-fun b!3956100 () Bool)

(assert (=> b!3956100 (= e!2449190 e!2449189)))

(declare-fun res!1600805 () Bool)

(assert (=> b!3956100 (= res!1600805 (< (size!31535 (_2!23826 lt!1383176)) (size!31535 (_2!23825 (v!39359 lt!1382961)))))))

(assert (=> b!3956100 (=> (not res!1600805) (not e!2449189))))

(declare-fun b!3956101 () Bool)

(declare-fun lt!1383175 () tuple2!41384)

(assert (=> b!3956101 (= e!2449188 (tuple2!41385 (Cons!42101 (_1!23825 (v!39359 lt!1383174)) (_1!23826 lt!1383175)) (_2!23826 lt!1383175)))))

(assert (=> b!3956101 (= lt!1383175 (lexList!1953 thiss!20629 rules!2768 (_2!23825 (v!39359 lt!1383174))))))

(declare-fun b!3956102 () Bool)

(assert (=> b!3956102 (= e!2449190 (= (_2!23826 lt!1383176) (_2!23825 (v!39359 lt!1382961))))))

(assert (= (and d!1172829 c!686716) b!3956101))

(assert (= (and d!1172829 (not c!686716)) b!3956098))

(assert (= (and d!1172829 c!686715) b!3956100))

(assert (= (and d!1172829 (not c!686715)) b!3956102))

(assert (= (and b!3956100 res!1600805) b!3956099))

(declare-fun m!4525093 () Bool)

(assert (=> b!3956099 m!4525093))

(declare-fun m!4525095 () Bool)

(assert (=> d!1172829 m!4525095))

(declare-fun m!4525097 () Bool)

(assert (=> d!1172829 m!4525097))

(declare-fun m!4525099 () Bool)

(assert (=> b!3956100 m!4525099))

(declare-fun m!4525101 () Bool)

(assert (=> b!3956100 m!4525101))

(declare-fun m!4525103 () Bool)

(assert (=> b!3956101 m!4525103))

(assert (=> b!3955135 d!1172829))

(declare-fun d!1172831 () Bool)

(assert (=> d!1172831 (= (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (= (mod (str.len (value!208619 (tag!7456 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3955256 d!1172831))

(declare-fun d!1172833 () Bool)

(declare-fun res!1600806 () Bool)

(declare-fun e!2449191 () Bool)

(assert (=> d!1172833 (=> (not res!1600806) (not e!2449191))))

(assert (=> d!1172833 (= res!1600806 (semiInverseModEq!2843 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))))))

(assert (=> d!1172833 (= (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) e!2449191)))

(declare-fun b!3956103 () Bool)

(assert (=> b!3956103 (= e!2449191 (equivClasses!2742 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))))))

(assert (= (and d!1172833 res!1600806) b!3956103))

(declare-fun m!4525105 () Bool)

(assert (=> d!1172833 m!4525105))

(declare-fun m!4525107 () Bool)

(assert (=> b!3956103 m!4525107))

(assert (=> b!3955256 d!1172833))

(assert (=> d!1172371 d!1172301))

(assert (=> d!1172371 d!1172659))

(declare-fun e!2449193 () Bool)

(declare-fun lt!1383177 () List!42224)

(declare-fun b!3956107 () Bool)

(assert (=> b!3956107 (= e!2449193 (or (not (= (_2!23825 (v!39359 lt!1382831)) Nil!42100)) (= lt!1383177 (t!329057 lt!1382839))))))

(declare-fun b!3956104 () Bool)

(declare-fun e!2449192 () List!42224)

(assert (=> b!3956104 (= e!2449192 (_2!23825 (v!39359 lt!1382831)))))

(declare-fun b!3956106 () Bool)

(declare-fun res!1600807 () Bool)

(assert (=> b!3956106 (=> (not res!1600807) (not e!2449193))))

(assert (=> b!3956106 (= res!1600807 (= (size!31535 lt!1383177) (+ (size!31535 (t!329057 lt!1382839)) (size!31535 (_2!23825 (v!39359 lt!1382831))))))))

(declare-fun d!1172835 () Bool)

(assert (=> d!1172835 e!2449193))

(declare-fun res!1600808 () Bool)

(assert (=> d!1172835 (=> (not res!1600808) (not e!2449193))))

(assert (=> d!1172835 (= res!1600808 (= (content!6390 lt!1383177) ((_ map or) (content!6390 (t!329057 lt!1382839)) (content!6390 (_2!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172835 (= lt!1383177 e!2449192)))

(declare-fun c!686717 () Bool)

(assert (=> d!1172835 (= c!686717 ((_ is Nil!42100) (t!329057 lt!1382839)))))

(assert (=> d!1172835 (= (++!10949 (t!329057 lt!1382839) (_2!23825 (v!39359 lt!1382831))) lt!1383177)))

(declare-fun b!3956105 () Bool)

(assert (=> b!3956105 (= e!2449192 (Cons!42100 (h!47520 (t!329057 lt!1382839)) (++!10949 (t!329057 (t!329057 lt!1382839)) (_2!23825 (v!39359 lt!1382831)))))))

(assert (= (and d!1172835 c!686717) b!3956104))

(assert (= (and d!1172835 (not c!686717)) b!3956105))

(assert (= (and d!1172835 res!1600808) b!3956106))

(assert (= (and b!3956106 res!1600807) b!3956107))

(declare-fun m!4525109 () Bool)

(assert (=> b!3956106 m!4525109))

(assert (=> b!3956106 m!4523913))

(assert (=> b!3956106 m!4523455))

(declare-fun m!4525111 () Bool)

(assert (=> d!1172835 m!4525111))

(assert (=> d!1172835 m!4525079))

(assert (=> d!1172835 m!4523921))

(declare-fun m!4525113 () Bool)

(assert (=> b!3956105 m!4525113))

(assert (=> b!3955155 d!1172835))

(declare-fun d!1172837 () Bool)

(declare-fun lt!1383178 () Int)

(assert (=> d!1172837 (>= lt!1383178 0)))

(declare-fun e!2449194 () Int)

(assert (=> d!1172837 (= lt!1383178 e!2449194)))

(declare-fun c!686718 () Bool)

(assert (=> d!1172837 (= c!686718 ((_ is Nil!42101) lt!1382949))))

(assert (=> d!1172837 (= (size!31537 lt!1382949) lt!1383178)))

(declare-fun b!3956108 () Bool)

(assert (=> b!3956108 (= e!2449194 0)))

(declare-fun b!3956109 () Bool)

(assert (=> b!3956109 (= e!2449194 (+ 1 (size!31537 (t!329058 lt!1382949))))))

(assert (= (and d!1172837 c!686718) b!3956108))

(assert (= (and d!1172837 (not c!686718)) b!3956109))

(declare-fun m!4525115 () Bool)

(assert (=> b!3956109 m!4525115))

(assert (=> b!3955055 d!1172837))

(declare-fun d!1172839 () Bool)

(declare-fun lt!1383179 () Int)

(assert (=> d!1172839 (>= lt!1383179 0)))

(declare-fun e!2449195 () Int)

(assert (=> d!1172839 (= lt!1383179 e!2449195)))

(declare-fun c!686719 () Bool)

(assert (=> d!1172839 (= c!686719 ((_ is Nil!42101) (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))

(assert (=> d!1172839 (= (size!31537 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)) lt!1383179)))

(declare-fun b!3956110 () Bool)

(assert (=> b!3956110 (= e!2449195 0)))

(declare-fun b!3956111 () Bool)

(assert (=> b!3956111 (= e!2449195 (+ 1 (size!31537 (t!329058 (Cons!42101 (_1!23825 (v!39359 lt!1382831)) Nil!42101)))))))

(assert (= (and d!1172839 c!686719) b!3956110))

(assert (= (and d!1172839 (not c!686719)) b!3956111))

(assert (=> b!3956111 m!4525005))

(assert (=> b!3955055 d!1172839))

(declare-fun d!1172841 () Bool)

(declare-fun lt!1383180 () Int)

(assert (=> d!1172841 (>= lt!1383180 0)))

(declare-fun e!2449196 () Int)

(assert (=> d!1172841 (= lt!1383180 e!2449196)))

(declare-fun c!686720 () Bool)

(assert (=> d!1172841 (= c!686720 ((_ is Nil!42101) (_1!23826 lt!1382833)))))

(assert (=> d!1172841 (= (size!31537 (_1!23826 lt!1382833)) lt!1383180)))

(declare-fun b!3956112 () Bool)

(assert (=> b!3956112 (= e!2449196 0)))

(declare-fun b!3956113 () Bool)

(assert (=> b!3956113 (= e!2449196 (+ 1 (size!31537 (t!329058 (_1!23826 lt!1382833)))))))

(assert (= (and d!1172841 c!686720) b!3956112))

(assert (= (and d!1172841 (not c!686720)) b!3956113))

(declare-fun m!4525117 () Bool)

(assert (=> b!3956113 m!4525117))

(assert (=> b!3955055 d!1172841))

(declare-fun b!3956117 () Bool)

(declare-fun e!2449198 () Bool)

(declare-fun lt!1383181 () List!42224)

(assert (=> b!3956117 (= e!2449198 (or (not (= lt!1382980 Nil!42100)) (= lt!1383181 lt!1382839)))))

(declare-fun b!3956114 () Bool)

(declare-fun e!2449197 () List!42224)

(assert (=> b!3956114 (= e!2449197 lt!1382980)))

(declare-fun b!3956116 () Bool)

(declare-fun res!1600809 () Bool)

(assert (=> b!3956116 (=> (not res!1600809) (not e!2449198))))

(assert (=> b!3956116 (= res!1600809 (= (size!31535 lt!1383181) (+ (size!31535 lt!1382839) (size!31535 lt!1382980))))))

(declare-fun d!1172843 () Bool)

(assert (=> d!1172843 e!2449198))

(declare-fun res!1600810 () Bool)

(assert (=> d!1172843 (=> (not res!1600810) (not e!2449198))))

(assert (=> d!1172843 (= res!1600810 (= (content!6390 lt!1383181) ((_ map or) (content!6390 lt!1382839) (content!6390 lt!1382980))))))

(assert (=> d!1172843 (= lt!1383181 e!2449197)))

(declare-fun c!686721 () Bool)

(assert (=> d!1172843 (= c!686721 ((_ is Nil!42100) lt!1382839))))

(assert (=> d!1172843 (= (++!10949 lt!1382839 lt!1382980) lt!1383181)))

(declare-fun b!3956115 () Bool)

(assert (=> b!3956115 (= e!2449197 (Cons!42100 (h!47520 lt!1382839) (++!10949 (t!329057 lt!1382839) lt!1382980)))))

(assert (= (and d!1172843 c!686721) b!3956114))

(assert (= (and d!1172843 (not c!686721)) b!3956115))

(assert (= (and d!1172843 res!1600810) b!3956116))

(assert (= (and b!3956116 res!1600809) b!3956117))

(declare-fun m!4525119 () Bool)

(assert (=> b!3956116 m!4525119))

(assert (=> b!3956116 m!4523471))

(declare-fun m!4525121 () Bool)

(assert (=> b!3956116 m!4525121))

(declare-fun m!4525123 () Bool)

(assert (=> d!1172843 m!4525123))

(assert (=> d!1172843 m!4523919))

(declare-fun m!4525125 () Bool)

(assert (=> d!1172843 m!4525125))

(declare-fun m!4525127 () Bool)

(assert (=> b!3956115 m!4525127))

(assert (=> d!1172349 d!1172843))

(assert (=> d!1172349 d!1172299))

(assert (=> d!1172349 d!1172335))

(assert (=> b!3955174 d!1172763))

(declare-fun b!3956121 () Bool)

(declare-fun e!2449200 () Bool)

(declare-fun lt!1383182 () List!42224)

(assert (=> b!3956121 (= e!2449200 (or (not (= (_2!23825 (get!13883 lt!1382902)) Nil!42100)) (= lt!1383182 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))))))))

(declare-fun b!3956118 () Bool)

(declare-fun e!2449199 () List!42224)

(assert (=> b!3956118 (= e!2449199 (_2!23825 (get!13883 lt!1382902)))))

(declare-fun b!3956120 () Bool)

(declare-fun res!1600811 () Bool)

(assert (=> b!3956120 (=> (not res!1600811) (not e!2449200))))

(assert (=> b!3956120 (= res!1600811 (= (size!31535 lt!1383182) (+ (size!31535 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (size!31535 (_2!23825 (get!13883 lt!1382902))))))))

(declare-fun d!1172845 () Bool)

(assert (=> d!1172845 e!2449200))

(declare-fun res!1600812 () Bool)

(assert (=> d!1172845 (=> (not res!1600812) (not e!2449200))))

(assert (=> d!1172845 (= res!1600812 (= (content!6390 lt!1383182) ((_ map or) (content!6390 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (content!6390 (_2!23825 (get!13883 lt!1382902))))))))

(assert (=> d!1172845 (= lt!1383182 e!2449199)))

(declare-fun c!686722 () Bool)

(assert (=> d!1172845 (= c!686722 ((_ is Nil!42100) (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))))))

(assert (=> d!1172845 (= (++!10949 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902)))) (_2!23825 (get!13883 lt!1382902))) lt!1383182)))

(declare-fun b!3956119 () Bool)

(assert (=> b!3956119 (= e!2449199 (Cons!42100 (h!47520 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (++!10949 (t!329057 (list!15630 (charsOf!4414 (_1!23825 (get!13883 lt!1382902))))) (_2!23825 (get!13883 lt!1382902)))))))

(assert (= (and d!1172845 c!686722) b!3956118))

(assert (= (and d!1172845 (not c!686722)) b!3956119))

(assert (= (and d!1172845 res!1600812) b!3956120))

(assert (= (and b!3956120 res!1600811) b!3956121))

(declare-fun m!4525129 () Bool)

(assert (=> b!3956120 m!4525129))

(assert (=> b!3956120 m!4523651))

(declare-fun m!4525131 () Bool)

(assert (=> b!3956120 m!4525131))

(assert (=> b!3956120 m!4523655))

(declare-fun m!4525133 () Bool)

(assert (=> d!1172845 m!4525133))

(assert (=> d!1172845 m!4523651))

(declare-fun m!4525135 () Bool)

(assert (=> d!1172845 m!4525135))

(declare-fun m!4525137 () Bool)

(assert (=> d!1172845 m!4525137))

(declare-fun m!4525139 () Bool)

(assert (=> b!3956119 m!4525139))

(assert (=> b!3954912 d!1172845))

(assert (=> b!3954912 d!1172651))

(assert (=> b!3954912 d!1172653))

(assert (=> b!3954912 d!1172655))

(declare-fun d!1172847 () Bool)

(declare-fun lt!1383183 () Int)

(assert (=> d!1172847 (>= lt!1383183 0)))

(declare-fun e!2449201 () Int)

(assert (=> d!1172847 (= lt!1383183 e!2449201)))

(declare-fun c!686723 () Bool)

(assert (=> d!1172847 (= c!686723 ((_ is Nil!42100) (t!329057 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))))))))

(assert (=> d!1172847 (= (size!31535 (t!329057 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))))) lt!1383183)))

(declare-fun b!3956122 () Bool)

(assert (=> b!3956122 (= e!2449201 0)))

(declare-fun b!3956123 () Bool)

(assert (=> b!3956123 (= e!2449201 (+ 1 (size!31535 (t!329057 (t!329057 (originalCharacters!7196 (_1!23825 (v!39359 lt!1382831))))))))))

(assert (= (and d!1172847 c!686723) b!3956122))

(assert (= (and d!1172847 (not c!686723)) b!3956123))

(declare-fun m!4525141 () Bool)

(assert (=> b!3956123 m!4525141))

(assert (=> b!3955127 d!1172847))

(declare-fun d!1172849 () Bool)

(declare-fun lt!1383184 () Int)

(assert (=> d!1172849 (>= lt!1383184 0)))

(declare-fun e!2449202 () Int)

(assert (=> d!1172849 (= lt!1383184 e!2449202)))

(declare-fun c!686724 () Bool)

(assert (=> d!1172849 (= c!686724 ((_ is Nil!42100) lt!1382939))))

(assert (=> d!1172849 (= (size!31535 lt!1382939) lt!1383184)))

(declare-fun b!3956124 () Bool)

(assert (=> b!3956124 (= e!2449202 0)))

(declare-fun b!3956125 () Bool)

(assert (=> b!3956125 (= e!2449202 (+ 1 (size!31535 (t!329057 lt!1382939))))))

(assert (= (and d!1172849 c!686724) b!3956124))

(assert (= (and d!1172849 (not c!686724)) b!3956125))

(declare-fun m!4525143 () Bool)

(assert (=> b!3956125 m!4525143))

(assert (=> b!3955024 d!1172849))

(assert (=> b!3955024 d!1172291))

(assert (=> b!3955024 d!1172359))

(declare-fun d!1172851 () Bool)

(assert (=> d!1172851 (= (inv!16 (value!208620 (h!47521 suffixTokens!72))) (= (charsToInt!0 (text!48229 (value!208620 (h!47521 suffixTokens!72)))) (value!208611 (value!208620 (h!47521 suffixTokens!72)))))))

(declare-fun bs!587167 () Bool)

(assert (= bs!587167 d!1172851))

(declare-fun m!4525145 () Bool)

(assert (=> bs!587167 m!4525145))

(assert (=> b!3955072 d!1172851))

(declare-fun d!1172853 () Bool)

(assert (=> d!1172853 (= (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))) (isBalanced!3651 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))))))

(declare-fun bs!587168 () Bool)

(assert (= bs!587168 d!1172853))

(declare-fun m!4525147 () Bool)

(assert (=> bs!587168 m!4525147))

(assert (=> tb!238185 d!1172853))

(declare-fun b!3956126 () Bool)

(declare-fun e!2449204 () Bool)

(assert (=> b!3956126 (= e!2449204 (inv!17 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(declare-fun b!3956127 () Bool)

(declare-fun e!2449203 () Bool)

(assert (=> b!3956127 (= e!2449203 e!2449204)))

(declare-fun c!686725 () Bool)

(assert (=> b!3956127 (= c!686725 ((_ is IntegerValue!20479) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(declare-fun d!1172855 () Bool)

(declare-fun c!686726 () Bool)

(assert (=> d!1172855 (= c!686726 ((_ is IntegerValue!20478) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(assert (=> d!1172855 (= (inv!21 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)) e!2449203)))

(declare-fun b!3956128 () Bool)

(assert (=> b!3956128 (= e!2449203 (inv!16 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(declare-fun b!3956129 () Bool)

(declare-fun res!1600813 () Bool)

(declare-fun e!2449205 () Bool)

(assert (=> b!3956129 (=> res!1600813 e!2449205)))

(assert (=> b!3956129 (= res!1600813 (not ((_ is IntegerValue!20480) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))))

(assert (=> b!3956129 (= e!2449204 e!2449205)))

(declare-fun b!3956130 () Bool)

(assert (=> b!3956130 (= e!2449205 (inv!15 (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))

(assert (= (and d!1172855 c!686726) b!3956128))

(assert (= (and d!1172855 (not c!686726)) b!3956127))

(assert (= (and b!3956127 c!686725) b!3956126))

(assert (= (and b!3956127 (not c!686725)) b!3956129))

(assert (= (and b!3956129 (not res!1600813)) b!3956130))

(declare-fun m!4525149 () Bool)

(assert (=> b!3956126 m!4525149))

(declare-fun m!4525151 () Bool)

(assert (=> b!3956128 m!4525151))

(declare-fun m!4525153 () Bool)

(assert (=> b!3956130 m!4525153))

(assert (=> tb!238119 d!1172855))

(declare-fun d!1172857 () Bool)

(assert (=> d!1172857 (= (inv!56327 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))) (isBalanced!3651 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))))))

(declare-fun bs!587169 () Bool)

(assert (= bs!587169 d!1172857))

(declare-fun m!4525155 () Bool)

(assert (=> bs!587169 m!4525155))

(assert (=> tb!238113 d!1172857))

(declare-fun d!1172859 () Bool)

(assert (=> d!1172859 (= (isEmpty!25160 (_1!23826 lt!1382927)) ((_ is Nil!42101) (_1!23826 lt!1382927)))))

(assert (=> b!3954991 d!1172859))

(assert (=> b!3955167 d!1172685))

(declare-fun d!1172861 () Bool)

(assert (=> d!1172861 (= (head!8401 lt!1382830) (h!47520 lt!1382830))))

(assert (=> b!3955167 d!1172861))

(assert (=> b!3955237 d!1172685))

(declare-fun d!1172863 () Bool)

(declare-fun lt!1383185 () Int)

(assert (=> d!1172863 (>= lt!1383185 0)))

(declare-fun e!2449206 () Int)

(assert (=> d!1172863 (= lt!1383185 e!2449206)))

(declare-fun c!686727 () Bool)

(assert (=> d!1172863 (= c!686727 ((_ is Nil!42100) (t!329057 lt!1382839)))))

(assert (=> d!1172863 (= (size!31535 (t!329057 lt!1382839)) lt!1383185)))

(declare-fun b!3956131 () Bool)

(assert (=> b!3956131 (= e!2449206 0)))

(declare-fun b!3956132 () Bool)

(assert (=> b!3956132 (= e!2449206 (+ 1 (size!31535 (t!329057 (t!329057 lt!1382839)))))))

(assert (= (and d!1172863 c!686727) b!3956131))

(assert (= (and d!1172863 (not c!686727)) b!3956132))

(declare-fun m!4525157 () Bool)

(assert (=> b!3956132 m!4525157))

(assert (=> b!3955153 d!1172863))

(declare-fun b!3956134 () Bool)

(declare-fun e!2449207 () List!42225)

(assert (=> b!3956134 (= e!2449207 (Cons!42101 (h!47521 (t!329058 prefixTokens!80)) (++!10950 (t!329058 (t!329058 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3956133 () Bool)

(assert (=> b!3956133 (= e!2449207 suffixTokens!72)))

(declare-fun b!3956135 () Bool)

(declare-fun res!1600815 () Bool)

(declare-fun e!2449208 () Bool)

(assert (=> b!3956135 (=> (not res!1600815) (not e!2449208))))

(declare-fun lt!1383186 () List!42225)

(assert (=> b!3956135 (= res!1600815 (= (size!31537 lt!1383186) (+ (size!31537 (t!329058 prefixTokens!80)) (size!31537 suffixTokens!72))))))

(declare-fun b!3956136 () Bool)

(assert (=> b!3956136 (= e!2449208 (or (not (= suffixTokens!72 Nil!42101)) (= lt!1383186 (t!329058 prefixTokens!80))))))

(declare-fun d!1172865 () Bool)

(assert (=> d!1172865 e!2449208))

(declare-fun res!1600814 () Bool)

(assert (=> d!1172865 (=> (not res!1600814) (not e!2449208))))

(assert (=> d!1172865 (= res!1600814 (= (content!6388 lt!1383186) ((_ map or) (content!6388 (t!329058 prefixTokens!80)) (content!6388 suffixTokens!72))))))

(assert (=> d!1172865 (= lt!1383186 e!2449207)))

(declare-fun c!686728 () Bool)

(assert (=> d!1172865 (= c!686728 ((_ is Nil!42101) (t!329058 prefixTokens!80)))))

(assert (=> d!1172865 (= (++!10950 (t!329058 prefixTokens!80) suffixTokens!72) lt!1383186)))

(assert (= (and d!1172865 c!686728) b!3956133))

(assert (= (and d!1172865 (not c!686728)) b!3956134))

(assert (= (and d!1172865 res!1600814) b!3956135))

(assert (= (and b!3956135 res!1600815) b!3956136))

(declare-fun m!4525159 () Bool)

(assert (=> b!3956134 m!4525159))

(declare-fun m!4525161 () Bool)

(assert (=> b!3956135 m!4525161))

(assert (=> b!3956135 m!4524755))

(assert (=> b!3956135 m!4523763))

(declare-fun m!4525163 () Bool)

(assert (=> d!1172865 m!4525163))

(assert (=> d!1172865 m!4524747))

(assert (=> d!1172865 m!4523769))

(assert (=> b!3955010 d!1172865))

(assert (=> d!1172341 d!1172345))

(declare-fun d!1172867 () Bool)

(assert (=> d!1172867 (ruleValid!2538 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))

(assert (=> d!1172867 true))

(declare-fun _$65!1410 () Unit!60594)

(assert (=> d!1172867 (= (choose!23606 thiss!20629 (rule!9566 (_1!23825 (v!39359 lt!1382831))) rules!2768) _$65!1410)))

(declare-fun bs!587170 () Bool)

(assert (= bs!587170 d!1172867))

(assert (=> bs!587170 m!4523483))

(assert (=> d!1172341 d!1172867))

(assert (=> d!1172341 d!1172319))

(declare-fun d!1172869 () Bool)

(assert (=> d!1172869 (= (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))) (list!15631 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))))))

(declare-fun bs!587171 () Bool)

(assert (= bs!587171 d!1172869))

(declare-fun m!4525165 () Bool)

(assert (=> bs!587171 m!4525165))

(assert (=> b!3954861 d!1172869))

(assert (=> b!3955225 d!1172807))

(assert (=> b!3955225 d!1172631))

(assert (=> d!1172355 d!1172327))

(assert (=> b!3955229 d!1172685))

(declare-fun d!1172871 () Bool)

(declare-fun lt!1383187 () Int)

(assert (=> d!1172871 (>= lt!1383187 0)))

(declare-fun e!2449209 () Int)

(assert (=> d!1172871 (= lt!1383187 e!2449209)))

(declare-fun c!686729 () Bool)

(assert (=> d!1172871 (= c!686729 ((_ is Nil!42100) (t!329057 lt!1382832)))))

(assert (=> d!1172871 (= (size!31535 (t!329057 lt!1382832)) lt!1383187)))

(declare-fun b!3956137 () Bool)

(assert (=> b!3956137 (= e!2449209 0)))

(declare-fun b!3956138 () Bool)

(assert (=> b!3956138 (= e!2449209 (+ 1 (size!31535 (t!329057 (t!329057 lt!1382832)))))))

(assert (= (and d!1172871 c!686729) b!3956137))

(assert (= (and d!1172871 (not c!686729)) b!3956138))

(declare-fun m!4525167 () Bool)

(assert (=> b!3956138 m!4525167))

(assert (=> b!3955058 d!1172871))

(declare-fun d!1172873 () Bool)

(declare-fun c!686730 () Bool)

(assert (=> d!1172873 (= c!686730 ((_ is Nil!42100) lt!1382939))))

(declare-fun e!2449210 () (InoxSet C!23188))

(assert (=> d!1172873 (= (content!6390 lt!1382939) e!2449210)))

(declare-fun b!3956139 () Bool)

(assert (=> b!3956139 (= e!2449210 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956140 () Bool)

(assert (=> b!3956140 (= e!2449210 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 lt!1382939) true) (content!6390 (t!329057 lt!1382939))))))

(assert (= (and d!1172873 c!686730) b!3956139))

(assert (= (and d!1172873 (not c!686730)) b!3956140))

(declare-fun m!4525169 () Bool)

(assert (=> b!3956140 m!4525169))

(declare-fun m!4525171 () Bool)

(assert (=> b!3956140 m!4525171))

(assert (=> d!1172279 d!1172873))

(declare-fun d!1172875 () Bool)

(declare-fun c!686731 () Bool)

(assert (=> d!1172875 (= c!686731 ((_ is Nil!42100) prefix!426))))

(declare-fun e!2449211 () (InoxSet C!23188))

(assert (=> d!1172875 (= (content!6390 prefix!426) e!2449211)))

(declare-fun b!3956141 () Bool)

(assert (=> b!3956141 (= e!2449211 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956142 () Bool)

(assert (=> b!3956142 (= e!2449211 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 prefix!426) true) (content!6390 (t!329057 prefix!426))))))

(assert (= (and d!1172875 c!686731) b!3956141))

(assert (= (and d!1172875 (not c!686731)) b!3956142))

(declare-fun m!4525173 () Bool)

(assert (=> b!3956142 m!4525173))

(assert (=> b!3956142 m!4525069))

(assert (=> d!1172279 d!1172875))

(declare-fun d!1172877 () Bool)

(declare-fun c!686732 () Bool)

(assert (=> d!1172877 (= c!686732 ((_ is Nil!42100) suffix!1176))))

(declare-fun e!2449212 () (InoxSet C!23188))

(assert (=> d!1172877 (= (content!6390 suffix!1176) e!2449212)))

(declare-fun b!3956143 () Bool)

(assert (=> b!3956143 (= e!2449212 ((as const (Array C!23188 Bool)) false))))

(declare-fun b!3956144 () Bool)

(assert (=> b!3956144 (= e!2449212 ((_ map or) (store ((as const (Array C!23188 Bool)) false) (h!47520 suffix!1176) true) (content!6390 (t!329057 suffix!1176))))))

(assert (= (and d!1172877 c!686732) b!3956143))

(assert (= (and d!1172877 (not c!686732)) b!3956144))

(declare-fun m!4525175 () Bool)

(assert (=> b!3956144 m!4525175))

(declare-fun m!4525177 () Bool)

(assert (=> b!3956144 m!4525177))

(assert (=> d!1172279 d!1172877))

(declare-fun d!1172879 () Bool)

(declare-fun lt!1383188 () Bool)

(assert (=> d!1172879 (= lt!1383188 (select (content!6391 (t!329059 rules!2768)) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun e!2449214 () Bool)

(assert (=> d!1172879 (= lt!1383188 e!2449214)))

(declare-fun res!1600816 () Bool)

(assert (=> d!1172879 (=> (not res!1600816) (not e!2449214))))

(assert (=> d!1172879 (= res!1600816 ((_ is Cons!42102) (t!329059 rules!2768)))))

(assert (=> d!1172879 (= (contains!8418 (t!329059 rules!2768) (rule!9566 (_1!23825 (v!39359 lt!1382831)))) lt!1383188)))

(declare-fun b!3956145 () Bool)

(declare-fun e!2449213 () Bool)

(assert (=> b!3956145 (= e!2449214 e!2449213)))

(declare-fun res!1600817 () Bool)

(assert (=> b!3956145 (=> res!1600817 e!2449213)))

(assert (=> b!3956145 (= res!1600817 (= (h!47522 (t!329059 rules!2768)) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(declare-fun b!3956146 () Bool)

(assert (=> b!3956146 (= e!2449213 (contains!8418 (t!329059 (t!329059 rules!2768)) (rule!9566 (_1!23825 (v!39359 lt!1382831)))))))

(assert (= (and d!1172879 res!1600816) b!3956145))

(assert (= (and b!3956145 (not res!1600817)) b!3956146))

(assert (=> d!1172879 m!4525091))

(declare-fun m!4525179 () Bool)

(assert (=> d!1172879 m!4525179))

(declare-fun m!4525181 () Bool)

(assert (=> b!3956146 m!4525181))

(assert (=> b!3955108 d!1172879))

(declare-fun d!1172881 () Bool)

(declare-fun lt!1383189 () Int)

(assert (=> d!1172881 (>= lt!1383189 0)))

(declare-fun e!2449215 () Int)

(assert (=> d!1172881 (= lt!1383189 e!2449215)))

(declare-fun c!686733 () Bool)

(assert (=> d!1172881 (= c!686733 ((_ is Nil!42100) lt!1382968))))

(assert (=> d!1172881 (= (size!31535 lt!1382968) lt!1383189)))

(declare-fun b!3956147 () Bool)

(assert (=> b!3956147 (= e!2449215 0)))

(declare-fun b!3956148 () Bool)

(assert (=> b!3956148 (= e!2449215 (+ 1 (size!31535 (t!329057 lt!1382968))))))

(assert (= (and d!1172881 c!686733) b!3956147))

(assert (= (and d!1172881 (not c!686733)) b!3956148))

(declare-fun m!4525183 () Bool)

(assert (=> b!3956148 m!4525183))

(assert (=> b!3955156 d!1172881))

(assert (=> b!3955156 d!1172335))

(assert (=> b!3955156 d!1172361))

(declare-fun b!3956149 () Bool)

(declare-fun e!2449216 () Bool)

(declare-fun tp!1205502 () Bool)

(assert (=> b!3956149 (= e!2449216 (and tp_is_empty!19973 tp!1205502))))

(assert (=> b!3955284 (= tp!1205349 e!2449216)))

(assert (= (and b!3955284 ((_ is Cons!42100) (t!329057 (originalCharacters!7196 (h!47521 prefixTokens!80))))) b!3956149))

(declare-fun b!3956152 () Bool)

(declare-fun e!2449217 () Bool)

(declare-fun tp!1205505 () Bool)

(assert (=> b!3956152 (= e!2449217 tp!1205505)))

(declare-fun b!3956153 () Bool)

(declare-fun tp!1205503 () Bool)

(declare-fun tp!1205504 () Bool)

(assert (=> b!3956153 (= e!2449217 (and tp!1205503 tp!1205504))))

(assert (=> b!3955289 (= tp!1205354 e!2449217)))

(declare-fun b!3956150 () Bool)

(assert (=> b!3956150 (= e!2449217 tp_is_empty!19973)))

(declare-fun b!3956151 () Bool)

(declare-fun tp!1205507 () Bool)

(declare-fun tp!1205506 () Bool)

(assert (=> b!3956151 (= e!2449217 (and tp!1205507 tp!1205506))))

(assert (= (and b!3955289 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) b!3956150))

(assert (= (and b!3955289 ((_ is Concat!18328) (regex!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) b!3956151))

(assert (= (and b!3955289 ((_ is Star!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) b!3956152))

(assert (= (and b!3955289 ((_ is Union!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) b!3956153))

(declare-fun e!2449222 () Bool)

(declare-fun b!3956162 () Bool)

(declare-fun tp!1205515 () Bool)

(declare-fun tp!1205516 () Bool)

(assert (=> b!3956162 (= e!2449222 (and (inv!56326 (left!31983 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))) tp!1205515 (inv!56326 (right!32313 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))) tp!1205516))))

(declare-fun b!3956164 () Bool)

(declare-fun e!2449223 () Bool)

(declare-fun tp!1205514 () Bool)

(assert (=> b!3956164 (= e!2449223 tp!1205514)))

(declare-fun b!3956163 () Bool)

(declare-fun inv!56335 (IArray!25619) Bool)

(assert (=> b!3956163 (= e!2449222 (and (inv!56335 (xs!16113 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))) e!2449223))))

(assert (=> b!3954863 (= tp!1205233 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72))))) e!2449222))))

(assert (= (and b!3954863 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))) b!3956162))

(assert (= b!3956163 b!3956164))

(assert (= (and b!3954863 ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (value!208620 (h!47521 suffixTokens!72)))))) b!3956163))

(declare-fun m!4525185 () Bool)

(assert (=> b!3956162 m!4525185))

(declare-fun m!4525187 () Bool)

(assert (=> b!3956162 m!4525187))

(declare-fun m!4525189 () Bool)

(assert (=> b!3956163 m!4525189))

(assert (=> b!3954863 m!4523601))

(declare-fun b!3956165 () Bool)

(declare-fun e!2449224 () Bool)

(declare-fun tp!1205517 () Bool)

(assert (=> b!3956165 (= e!2449224 (and tp_is_empty!19973 tp!1205517))))

(assert (=> b!3955285 (= tp!1205350 e!2449224)))

(assert (= (and b!3955285 ((_ is Cons!42100) (t!329057 (t!329057 prefix!426)))) b!3956165))

(declare-fun b!3956168 () Bool)

(declare-fun e!2449225 () Bool)

(declare-fun tp!1205520 () Bool)

(assert (=> b!3956168 (= e!2449225 tp!1205520)))

(declare-fun b!3956169 () Bool)

(declare-fun tp!1205518 () Bool)

(declare-fun tp!1205519 () Bool)

(assert (=> b!3956169 (= e!2449225 (and tp!1205518 tp!1205519))))

(assert (=> b!3955296 (= tp!1205366 e!2449225)))

(declare-fun b!3956166 () Bool)

(assert (=> b!3956166 (= e!2449225 tp_is_empty!19973)))

(declare-fun b!3956167 () Bool)

(declare-fun tp!1205522 () Bool)

(declare-fun tp!1205521 () Bool)

(assert (=> b!3956167 (= e!2449225 (and tp!1205522 tp!1205521))))

(assert (= (and b!3955296 ((_ is ElementMatch!11501) (regOne!23514 (regex!6596 (h!47522 rules!2768))))) b!3956166))

(assert (= (and b!3955296 ((_ is Concat!18328) (regOne!23514 (regex!6596 (h!47522 rules!2768))))) b!3956167))

(assert (= (and b!3955296 ((_ is Star!11501) (regOne!23514 (regex!6596 (h!47522 rules!2768))))) b!3956168))

(assert (= (and b!3955296 ((_ is Union!11501) (regOne!23514 (regex!6596 (h!47522 rules!2768))))) b!3956169))

(declare-fun b!3956172 () Bool)

(declare-fun e!2449226 () Bool)

(declare-fun tp!1205525 () Bool)

(assert (=> b!3956172 (= e!2449226 tp!1205525)))

(declare-fun b!3956173 () Bool)

(declare-fun tp!1205523 () Bool)

(declare-fun tp!1205524 () Bool)

(assert (=> b!3956173 (= e!2449226 (and tp!1205523 tp!1205524))))

(assert (=> b!3955296 (= tp!1205365 e!2449226)))

(declare-fun b!3956170 () Bool)

(assert (=> b!3956170 (= e!2449226 tp_is_empty!19973)))

(declare-fun b!3956171 () Bool)

(declare-fun tp!1205527 () Bool)

(declare-fun tp!1205526 () Bool)

(assert (=> b!3956171 (= e!2449226 (and tp!1205527 tp!1205526))))

(assert (= (and b!3955296 ((_ is ElementMatch!11501) (regTwo!23514 (regex!6596 (h!47522 rules!2768))))) b!3956170))

(assert (= (and b!3955296 ((_ is Concat!18328) (regTwo!23514 (regex!6596 (h!47522 rules!2768))))) b!3956171))

(assert (= (and b!3955296 ((_ is Star!11501) (regTwo!23514 (regex!6596 (h!47522 rules!2768))))) b!3956172))

(assert (= (and b!3955296 ((_ is Union!11501) (regTwo!23514 (regex!6596 (h!47522 rules!2768))))) b!3956173))

(declare-fun tp!1205529 () Bool)

(declare-fun b!3956174 () Bool)

(declare-fun e!2449227 () Bool)

(declare-fun tp!1205530 () Bool)

(assert (=> b!3956174 (= e!2449227 (and (inv!56326 (left!31983 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))) tp!1205529 (inv!56326 (right!32313 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))) tp!1205530))))

(declare-fun b!3956176 () Bool)

(declare-fun e!2449228 () Bool)

(declare-fun tp!1205528 () Bool)

(assert (=> b!3956176 (= e!2449228 tp!1205528)))

(declare-fun b!3956175 () Bool)

(assert (=> b!3956175 (= e!2449227 (and (inv!56335 (xs!16113 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))) e!2449228))))

(assert (=> b!3954847 (= tp!1205232 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843)))) e!2449227))))

(assert (= (and b!3954847 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))) b!3956174))

(assert (= b!3956175 b!3956176))

(assert (= (and b!3954847 ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))))) b!3956175))

(declare-fun m!4525191 () Bool)

(assert (=> b!3956174 m!4525191))

(declare-fun m!4525193 () Bool)

(assert (=> b!3956174 m!4525193))

(declare-fun m!4525195 () Bool)

(assert (=> b!3956175 m!4525195))

(assert (=> b!3954847 m!4523577))

(declare-fun b!3956179 () Bool)

(declare-fun e!2449229 () Bool)

(declare-fun tp!1205533 () Bool)

(assert (=> b!3956179 (= e!2449229 tp!1205533)))

(declare-fun b!3956180 () Bool)

(declare-fun tp!1205531 () Bool)

(declare-fun tp!1205532 () Bool)

(assert (=> b!3956180 (= e!2449229 (and tp!1205531 tp!1205532))))

(assert (=> b!3955293 (= tp!1205359 e!2449229)))

(declare-fun b!3956177 () Bool)

(assert (=> b!3956177 (= e!2449229 tp_is_empty!19973)))

(declare-fun b!3956178 () Bool)

(declare-fun tp!1205535 () Bool)

(declare-fun tp!1205534 () Bool)

(assert (=> b!3956178 (= e!2449229 (and tp!1205535 tp!1205534))))

(assert (= (and b!3955293 ((_ is ElementMatch!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956177))

(assert (= (and b!3955293 ((_ is Concat!18328) (reg!11830 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956178))

(assert (= (and b!3955293 ((_ is Star!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956179))

(assert (= (and b!3955293 ((_ is Union!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956180))

(declare-fun b!3956183 () Bool)

(declare-fun e!2449230 () Bool)

(declare-fun tp!1205538 () Bool)

(assert (=> b!3956183 (= e!2449230 tp!1205538)))

(declare-fun b!3956184 () Bool)

(declare-fun tp!1205536 () Bool)

(declare-fun tp!1205537 () Bool)

(assert (=> b!3956184 (= e!2449230 (and tp!1205536 tp!1205537))))

(assert (=> b!3955294 (= tp!1205357 e!2449230)))

(declare-fun b!3956181 () Bool)

(assert (=> b!3956181 (= e!2449230 tp_is_empty!19973)))

(declare-fun b!3956182 () Bool)

(declare-fun tp!1205540 () Bool)

(declare-fun tp!1205539 () Bool)

(assert (=> b!3956182 (= e!2449230 (and tp!1205540 tp!1205539))))

(assert (= (and b!3955294 ((_ is ElementMatch!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956181))

(assert (= (and b!3955294 ((_ is Concat!18328) (regOne!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956182))

(assert (= (and b!3955294 ((_ is Star!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956183))

(assert (= (and b!3955294 ((_ is Union!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956184))

(declare-fun b!3956187 () Bool)

(declare-fun e!2449231 () Bool)

(declare-fun tp!1205543 () Bool)

(assert (=> b!3956187 (= e!2449231 tp!1205543)))

(declare-fun b!3956188 () Bool)

(declare-fun tp!1205541 () Bool)

(declare-fun tp!1205542 () Bool)

(assert (=> b!3956188 (= e!2449231 (and tp!1205541 tp!1205542))))

(assert (=> b!3955294 (= tp!1205358 e!2449231)))

(declare-fun b!3956185 () Bool)

(assert (=> b!3956185 (= e!2449231 tp_is_empty!19973)))

(declare-fun b!3956186 () Bool)

(declare-fun tp!1205545 () Bool)

(declare-fun tp!1205544 () Bool)

(assert (=> b!3956186 (= e!2449231 (and tp!1205545 tp!1205544))))

(assert (= (and b!3955294 ((_ is ElementMatch!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956185))

(assert (= (and b!3955294 ((_ is Concat!18328) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956186))

(assert (= (and b!3955294 ((_ is Star!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956187))

(assert (= (and b!3955294 ((_ is Union!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956188))

(declare-fun b!3956191 () Bool)

(declare-fun e!2449232 () Bool)

(declare-fun tp!1205548 () Bool)

(assert (=> b!3956191 (= e!2449232 tp!1205548)))

(declare-fun b!3956192 () Bool)

(declare-fun tp!1205546 () Bool)

(declare-fun tp!1205547 () Bool)

(assert (=> b!3956192 (= e!2449232 (and tp!1205546 tp!1205547))))

(assert (=> b!3955270 (= tp!1205333 e!2449232)))

(declare-fun b!3956189 () Bool)

(assert (=> b!3956189 (= e!2449232 tp_is_empty!19973)))

(declare-fun b!3956190 () Bool)

(declare-fun tp!1205550 () Bool)

(declare-fun tp!1205549 () Bool)

(assert (=> b!3956190 (= e!2449232 (and tp!1205550 tp!1205549))))

(assert (= (and b!3955270 ((_ is ElementMatch!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956189))

(assert (= (and b!3955270 ((_ is Concat!18328) (reg!11830 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956190))

(assert (= (and b!3955270 ((_ is Star!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956191))

(assert (= (and b!3955270 ((_ is Union!11501) (reg!11830 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956192))

(declare-fun b!3956195 () Bool)

(declare-fun e!2449233 () Bool)

(declare-fun tp!1205553 () Bool)

(assert (=> b!3956195 (= e!2449233 tp!1205553)))

(declare-fun b!3956196 () Bool)

(declare-fun tp!1205551 () Bool)

(declare-fun tp!1205552 () Bool)

(assert (=> b!3956196 (= e!2449233 (and tp!1205551 tp!1205552))))

(assert (=> b!3955292 (= tp!1205361 e!2449233)))

(declare-fun b!3956193 () Bool)

(assert (=> b!3956193 (= e!2449233 tp_is_empty!19973)))

(declare-fun b!3956194 () Bool)

(declare-fun tp!1205555 () Bool)

(declare-fun tp!1205554 () Bool)

(assert (=> b!3956194 (= e!2449233 (and tp!1205555 tp!1205554))))

(assert (= (and b!3955292 ((_ is ElementMatch!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956193))

(assert (= (and b!3955292 ((_ is Concat!18328) (regOne!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956194))

(assert (= (and b!3955292 ((_ is Star!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956195))

(assert (= (and b!3955292 ((_ is Union!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956196))

(declare-fun b!3956199 () Bool)

(declare-fun e!2449234 () Bool)

(declare-fun tp!1205558 () Bool)

(assert (=> b!3956199 (= e!2449234 tp!1205558)))

(declare-fun b!3956200 () Bool)

(declare-fun tp!1205556 () Bool)

(declare-fun tp!1205557 () Bool)

(assert (=> b!3956200 (= e!2449234 (and tp!1205556 tp!1205557))))

(assert (=> b!3955292 (= tp!1205360 e!2449234)))

(declare-fun b!3956197 () Bool)

(assert (=> b!3956197 (= e!2449234 tp_is_empty!19973)))

(declare-fun b!3956198 () Bool)

(declare-fun tp!1205560 () Bool)

(declare-fun tp!1205559 () Bool)

(assert (=> b!3956198 (= e!2449234 (and tp!1205560 tp!1205559))))

(assert (= (and b!3955292 ((_ is ElementMatch!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956197))

(assert (= (and b!3955292 ((_ is Concat!18328) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956198))

(assert (= (and b!3955292 ((_ is Star!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956199))

(assert (= (and b!3955292 ((_ is Union!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 suffixTokens!72)))))) b!3956200))

(declare-fun b!3956203 () Bool)

(declare-fun e!2449235 () Bool)

(declare-fun tp!1205563 () Bool)

(assert (=> b!3956203 (= e!2449235 tp!1205563)))

(declare-fun b!3956204 () Bool)

(declare-fun tp!1205561 () Bool)

(declare-fun tp!1205562 () Bool)

(assert (=> b!3956204 (= e!2449235 (and tp!1205561 tp!1205562))))

(assert (=> b!3955271 (= tp!1205331 e!2449235)))

(declare-fun b!3956201 () Bool)

(assert (=> b!3956201 (= e!2449235 tp_is_empty!19973)))

(declare-fun b!3956202 () Bool)

(declare-fun tp!1205565 () Bool)

(declare-fun tp!1205564 () Bool)

(assert (=> b!3956202 (= e!2449235 (and tp!1205565 tp!1205564))))

(assert (= (and b!3955271 ((_ is ElementMatch!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956201))

(assert (= (and b!3955271 ((_ is Concat!18328) (regOne!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956202))

(assert (= (and b!3955271 ((_ is Star!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956203))

(assert (= (and b!3955271 ((_ is Union!11501) (regOne!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956204))

(declare-fun b!3956207 () Bool)

(declare-fun e!2449236 () Bool)

(declare-fun tp!1205568 () Bool)

(assert (=> b!3956207 (= e!2449236 tp!1205568)))

(declare-fun b!3956208 () Bool)

(declare-fun tp!1205566 () Bool)

(declare-fun tp!1205567 () Bool)

(assert (=> b!3956208 (= e!2449236 (and tp!1205566 tp!1205567))))

(assert (=> b!3955271 (= tp!1205332 e!2449236)))

(declare-fun b!3956205 () Bool)

(assert (=> b!3956205 (= e!2449236 tp_is_empty!19973)))

(declare-fun b!3956206 () Bool)

(declare-fun tp!1205570 () Bool)

(declare-fun tp!1205569 () Bool)

(assert (=> b!3956206 (= e!2449236 (and tp!1205570 tp!1205569))))

(assert (= (and b!3955271 ((_ is ElementMatch!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956205))

(assert (= (and b!3955271 ((_ is Concat!18328) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956206))

(assert (= (and b!3955271 ((_ is Star!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956207))

(assert (= (and b!3955271 ((_ is Union!11501) (regTwo!23515 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956208))

(declare-fun b!3956209 () Bool)

(declare-fun e!2449237 () Bool)

(declare-fun tp!1205571 () Bool)

(assert (=> b!3956209 (= e!2449237 (and tp_is_empty!19973 tp!1205571))))

(assert (=> b!3955288 (= tp!1205353 e!2449237)))

(assert (= (and b!3955288 ((_ is Cons!42100) (originalCharacters!7196 (h!47521 (t!329058 prefixTokens!80))))) b!3956209))

(declare-fun b!3956213 () Bool)

(declare-fun b_free!108981 () Bool)

(declare-fun b_next!109685 () Bool)

(assert (=> b!3956213 (= b_free!108981 (not b_next!109685))))

(declare-fun t!329335 () Bool)

(declare-fun tb!238371 () Bool)

(assert (=> (and b!3956213 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329335) tb!238371))

(declare-fun result!288660 () Bool)

(assert (= result!288660 result!288386))

(assert (=> d!1172205 t!329335))

(assert (=> d!1172333 t!329335))

(declare-fun t!329337 () Bool)

(declare-fun tb!238373 () Bool)

(assert (=> (and b!3956213 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329337) tb!238373))

(declare-fun result!288662 () Bool)

(assert (= result!288662 result!288646))

(assert (=> d!1172705 t!329337))

(declare-fun b_and!303523 () Bool)

(declare-fun tp!1205576 () Bool)

(assert (=> b!3956213 (= tp!1205576 (and (=> t!329335 result!288660) (=> t!329337 result!288662) b_and!303523))))

(declare-fun b_free!108983 () Bool)

(declare-fun b_next!109687 () Bool)

(assert (=> b!3956213 (= b_free!108983 (not b_next!109687))))

(declare-fun tb!238375 () Bool)

(declare-fun t!329339 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329339) tb!238375))

(declare-fun result!288664 () Bool)

(assert (= result!288664 result!288378))

(assert (=> d!1172205 t!329339))

(declare-fun tb!238377 () Bool)

(declare-fun t!329341 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329341) tb!238377))

(declare-fun result!288666 () Bool)

(assert (= result!288666 result!288456))

(assert (=> d!1172357 t!329341))

(declare-fun t!329343 () Bool)

(declare-fun tb!238379 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329343) tb!238379))

(declare-fun result!288668 () Bool)

(assert (= result!288668 result!288634))

(assert (=> b!3955892 t!329343))

(declare-fun tb!238381 () Bool)

(declare-fun t!329345 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329345) tb!238381))

(declare-fun result!288670 () Bool)

(assert (= result!288670 result!288394))

(assert (=> b!3954861 t!329345))

(declare-fun tb!238383 () Bool)

(declare-fun t!329347 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329347) tb!238383))

(declare-fun result!288672 () Bool)

(assert (= result!288672 result!288556))

(assert (=> d!1172653 t!329347))

(declare-fun t!329349 () Bool)

(declare-fun tb!238385 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329349) tb!238385))

(declare-fun result!288674 () Bool)

(assert (= result!288674 result!288462))

(assert (=> b!3955192 t!329349))

(declare-fun t!329351 () Bool)

(declare-fun tb!238387 () Bool)

(assert (=> (and b!3956213 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329351) tb!238387))

(declare-fun result!288676 () Bool)

(assert (= result!288676 result!288568))

(assert (=> b!3955744 t!329351))

(declare-fun b_and!303525 () Bool)

(declare-fun tp!1205572 () Bool)

(assert (=> b!3956213 (= tp!1205572 (and (=> t!329351 result!288676) (=> t!329347 result!288672) (=> t!329341 result!288666) (=> t!329345 result!288670) (=> t!329349 result!288674) (=> t!329339 result!288664) (=> t!329343 result!288668) b_and!303525))))

(declare-fun e!2449238 () Bool)

(assert (=> b!3956213 (= e!2449238 (and tp!1205576 tp!1205572))))

(declare-fun e!2449242 () Bool)

(assert (=> b!3955287 (= tp!1205355 e!2449242)))

(declare-fun tp!1205575 () Bool)

(declare-fun e!2449240 () Bool)

(declare-fun b!3956210 () Bool)

(assert (=> b!3956210 (= e!2449242 (and (inv!56325 (h!47521 (t!329058 (t!329058 prefixTokens!80)))) e!2449240 tp!1205575))))

(declare-fun tp!1205573 () Bool)

(declare-fun b!3956211 () Bool)

(declare-fun e!2449243 () Bool)

(assert (=> b!3956211 (= e!2449240 (and (inv!21 (value!208620 (h!47521 (t!329058 (t!329058 prefixTokens!80))))) e!2449243 tp!1205573))))

(declare-fun b!3956212 () Bool)

(declare-fun tp!1205574 () Bool)

(assert (=> b!3956212 (= e!2449243 (and tp!1205574 (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) e!2449238))))

(assert (= b!3956212 b!3956213))

(assert (= b!3956211 b!3956212))

(assert (= b!3956210 b!3956211))

(assert (= (and b!3955287 ((_ is Cons!42101) (t!329058 (t!329058 prefixTokens!80)))) b!3956210))

(declare-fun m!4525197 () Bool)

(assert (=> b!3956210 m!4525197))

(declare-fun m!4525199 () Bool)

(assert (=> b!3956211 m!4525199))

(declare-fun m!4525201 () Bool)

(assert (=> b!3956212 m!4525201))

(declare-fun m!4525203 () Bool)

(assert (=> b!3956212 m!4525203))

(declare-fun b!3956214 () Bool)

(declare-fun e!2449244 () Bool)

(declare-fun tp!1205577 () Bool)

(assert (=> b!3956214 (= e!2449244 (and tp_is_empty!19973 tp!1205577))))

(assert (=> b!3955283 (= tp!1205348 e!2449244)))

(assert (= (and b!3955283 ((_ is Cons!42100) (t!329057 (t!329057 suffix!1176)))) b!3956214))

(declare-fun b!3956217 () Bool)

(declare-fun e!2449245 () Bool)

(declare-fun tp!1205580 () Bool)

(assert (=> b!3956217 (= e!2449245 tp!1205580)))

(declare-fun b!3956218 () Bool)

(declare-fun tp!1205578 () Bool)

(declare-fun tp!1205579 () Bool)

(assert (=> b!3956218 (= e!2449245 (and tp!1205578 tp!1205579))))

(assert (=> b!3955281 (= tp!1205346 e!2449245)))

(declare-fun b!3956215 () Bool)

(assert (=> b!3956215 (= e!2449245 tp_is_empty!19973)))

(declare-fun b!3956216 () Bool)

(declare-fun tp!1205582 () Bool)

(declare-fun tp!1205581 () Bool)

(assert (=> b!3956216 (= e!2449245 (and tp!1205582 tp!1205581))))

(assert (= (and b!3955281 ((_ is ElementMatch!11501) (regex!6596 (h!47522 (t!329059 rules!2768))))) b!3956215))

(assert (= (and b!3955281 ((_ is Concat!18328) (regex!6596 (h!47522 (t!329059 rules!2768))))) b!3956216))

(assert (= (and b!3955281 ((_ is Star!11501) (regex!6596 (h!47522 (t!329059 rules!2768))))) b!3956217))

(assert (= (and b!3955281 ((_ is Union!11501) (regex!6596 (h!47522 (t!329059 rules!2768))))) b!3956218))

(declare-fun tp!1205584 () Bool)

(declare-fun b!3956219 () Bool)

(declare-fun tp!1205585 () Bool)

(declare-fun e!2449246 () Bool)

(assert (=> b!3956219 (= e!2449246 (and (inv!56326 (left!31983 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))) tp!1205584 (inv!56326 (right!32313 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))) tp!1205585))))

(declare-fun b!3956221 () Bool)

(declare-fun e!2449247 () Bool)

(declare-fun tp!1205583 () Bool)

(assert (=> b!3956221 (= e!2449247 tp!1205583)))

(declare-fun b!3956220 () Bool)

(assert (=> b!3956220 (= e!2449246 (and (inv!56335 (xs!16113 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))) e!2449247))))

(assert (=> b!3955187 (= tp!1205301 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831)))))) e!2449246))))

(assert (= (and b!3955187 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))) b!3956219))

(assert (= b!3956220 b!3956221))

(assert (= (and b!3955187 ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (value!208620 (_1!23825 (v!39359 lt!1382831))))))) b!3956220))

(declare-fun m!4525205 () Bool)

(assert (=> b!3956219 m!4525205))

(declare-fun m!4525207 () Bool)

(assert (=> b!3956219 m!4525207))

(declare-fun m!4525209 () Bool)

(assert (=> b!3956220 m!4525209))

(assert (=> b!3955187 m!4523967))

(declare-fun b!3956224 () Bool)

(declare-fun b_free!108985 () Bool)

(declare-fun b_next!109689 () Bool)

(assert (=> b!3956224 (= b_free!108985 (not b_next!109689))))

(declare-fun tb!238389 () Bool)

(declare-fun t!329353 () Bool)

(assert (=> (and b!3956224 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329353) tb!238389))

(declare-fun result!288678 () Bool)

(assert (= result!288678 result!288386))

(assert (=> d!1172205 t!329353))

(assert (=> d!1172333 t!329353))

(declare-fun t!329355 () Bool)

(declare-fun tb!238391 () Bool)

(assert (=> (and b!3956224 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329355) tb!238391))

(declare-fun result!288680 () Bool)

(assert (= result!288680 result!288646))

(assert (=> d!1172705 t!329355))

(declare-fun b_and!303527 () Bool)

(declare-fun tp!1205587 () Bool)

(assert (=> b!3956224 (= tp!1205587 (and (=> t!329353 result!288678) (=> t!329355 result!288680) b_and!303527))))

(declare-fun b_free!108987 () Bool)

(declare-fun b_next!109691 () Bool)

(assert (=> b!3956224 (= b_free!108987 (not b_next!109691))))

(declare-fun tb!238393 () Bool)

(declare-fun t!329357 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329357) tb!238393))

(declare-fun result!288682 () Bool)

(assert (= result!288682 result!288378))

(assert (=> d!1172205 t!329357))

(declare-fun tb!238395 () Bool)

(declare-fun t!329359 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329359) tb!238395))

(declare-fun result!288684 () Bool)

(assert (= result!288684 result!288456))

(assert (=> d!1172357 t!329359))

(declare-fun t!329361 () Bool)

(declare-fun tb!238397 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329361) tb!238397))

(declare-fun result!288686 () Bool)

(assert (= result!288686 result!288634))

(assert (=> b!3955892 t!329361))

(declare-fun tb!238399 () Bool)

(declare-fun t!329363 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329363) tb!238399))

(declare-fun result!288688 () Bool)

(assert (= result!288688 result!288394))

(assert (=> b!3954861 t!329363))

(declare-fun tb!238401 () Bool)

(declare-fun t!329365 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329365) tb!238401))

(declare-fun result!288690 () Bool)

(assert (= result!288690 result!288556))

(assert (=> d!1172653 t!329365))

(declare-fun tb!238403 () Bool)

(declare-fun t!329367 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329367) tb!238403))

(declare-fun result!288692 () Bool)

(assert (= result!288692 result!288462))

(assert (=> b!3955192 t!329367))

(declare-fun t!329369 () Bool)

(declare-fun tb!238405 () Bool)

(assert (=> (and b!3956224 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329369) tb!238405))

(declare-fun result!288694 () Bool)

(assert (= result!288694 result!288568))

(assert (=> b!3955744 t!329369))

(declare-fun tp!1205589 () Bool)

(declare-fun b_and!303529 () Bool)

(assert (=> b!3956224 (= tp!1205589 (and (=> t!329363 result!288688) (=> t!329359 result!288684) (=> t!329367 result!288692) (=> t!329357 result!288682) (=> t!329369 result!288694) (=> t!329365 result!288690) (=> t!329361 result!288686) b_and!303529))))

(declare-fun e!2449251 () Bool)

(assert (=> b!3956224 (= e!2449251 (and tp!1205587 tp!1205589))))

(declare-fun tp!1205588 () Bool)

(declare-fun e!2449250 () Bool)

(declare-fun b!3956223 () Bool)

(assert (=> b!3956223 (= e!2449250 (and tp!1205588 (inv!56321 (tag!7456 (h!47522 (t!329059 (t!329059 rules!2768))))) (inv!56324 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) e!2449251))))

(declare-fun b!3956222 () Bool)

(declare-fun e!2449248 () Bool)

(declare-fun tp!1205586 () Bool)

(assert (=> b!3956222 (= e!2449248 (and e!2449250 tp!1205586))))

(assert (=> b!3955280 (= tp!1205344 e!2449248)))

(assert (= b!3956223 b!3956224))

(assert (= b!3956222 b!3956223))

(assert (= (and b!3955280 ((_ is Cons!42102) (t!329059 (t!329059 rules!2768)))) b!3956222))

(declare-fun m!4525211 () Bool)

(assert (=> b!3956223 m!4525211))

(declare-fun m!4525213 () Bool)

(assert (=> b!3956223 m!4525213))

(declare-fun b!3956227 () Bool)

(declare-fun e!2449252 () Bool)

(declare-fun tp!1205592 () Bool)

(assert (=> b!3956227 (= e!2449252 tp!1205592)))

(declare-fun b!3956228 () Bool)

(declare-fun tp!1205590 () Bool)

(declare-fun tp!1205591 () Bool)

(assert (=> b!3956228 (= e!2449252 (and tp!1205590 tp!1205591))))

(assert (=> b!3955269 (= tp!1205335 e!2449252)))

(declare-fun b!3956225 () Bool)

(assert (=> b!3956225 (= e!2449252 tp_is_empty!19973)))

(declare-fun b!3956226 () Bool)

(declare-fun tp!1205594 () Bool)

(declare-fun tp!1205593 () Bool)

(assert (=> b!3956226 (= e!2449252 (and tp!1205594 tp!1205593))))

(assert (= (and b!3955269 ((_ is ElementMatch!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956225))

(assert (= (and b!3955269 ((_ is Concat!18328) (regOne!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956226))

(assert (= (and b!3955269 ((_ is Star!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956227))

(assert (= (and b!3955269 ((_ is Union!11501) (regOne!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956228))

(declare-fun b!3956231 () Bool)

(declare-fun e!2449253 () Bool)

(declare-fun tp!1205597 () Bool)

(assert (=> b!3956231 (= e!2449253 tp!1205597)))

(declare-fun b!3956232 () Bool)

(declare-fun tp!1205595 () Bool)

(declare-fun tp!1205596 () Bool)

(assert (=> b!3956232 (= e!2449253 (and tp!1205595 tp!1205596))))

(assert (=> b!3955269 (= tp!1205334 e!2449253)))

(declare-fun b!3956229 () Bool)

(assert (=> b!3956229 (= e!2449253 tp_is_empty!19973)))

(declare-fun b!3956230 () Bool)

(declare-fun tp!1205599 () Bool)

(declare-fun tp!1205598 () Bool)

(assert (=> b!3956230 (= e!2449253 (and tp!1205599 tp!1205598))))

(assert (= (and b!3955269 ((_ is ElementMatch!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956229))

(assert (= (and b!3955269 ((_ is Concat!18328) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956230))

(assert (= (and b!3955269 ((_ is Star!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956231))

(assert (= (and b!3955269 ((_ is Union!11501) (regTwo!23514 (regex!6596 (rule!9566 (h!47521 prefixTokens!80)))))) b!3956232))

(declare-fun b!3956235 () Bool)

(declare-fun e!2449254 () Bool)

(declare-fun tp!1205602 () Bool)

(assert (=> b!3956235 (= e!2449254 tp!1205602)))

(declare-fun b!3956236 () Bool)

(declare-fun tp!1205600 () Bool)

(declare-fun tp!1205601 () Bool)

(assert (=> b!3956236 (= e!2449254 (and tp!1205600 tp!1205601))))

(assert (=> b!3955256 (= tp!1205318 e!2449254)))

(declare-fun b!3956233 () Bool)

(assert (=> b!3956233 (= e!2449254 tp_is_empty!19973)))

(declare-fun b!3956234 () Bool)

(declare-fun tp!1205604 () Bool)

(declare-fun tp!1205603 () Bool)

(assert (=> b!3956234 (= e!2449254 (and tp!1205604 tp!1205603))))

(assert (= (and b!3955256 ((_ is ElementMatch!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) b!3956233))

(assert (= (and b!3955256 ((_ is Concat!18328) (regex!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) b!3956234))

(assert (= (and b!3955256 ((_ is Star!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) b!3956235))

(assert (= (and b!3955256 ((_ is Union!11501) (regex!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) b!3956236))

(declare-fun b!3956240 () Bool)

(declare-fun b_free!108989 () Bool)

(declare-fun b_next!109693 () Bool)

(assert (=> b!3956240 (= b_free!108989 (not b_next!109693))))

(declare-fun tb!238407 () Bool)

(declare-fun t!329371 () Bool)

(assert (=> (and b!3956240 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329371) tb!238407))

(declare-fun result!288696 () Bool)

(assert (= result!288696 result!288386))

(assert (=> d!1172205 t!329371))

(assert (=> d!1172333 t!329371))

(declare-fun tb!238409 () Bool)

(declare-fun t!329373 () Bool)

(assert (=> (and b!3956240 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329373) tb!238409))

(declare-fun result!288698 () Bool)

(assert (= result!288698 result!288646))

(assert (=> d!1172705 t!329373))

(declare-fun tp!1205609 () Bool)

(declare-fun b_and!303531 () Bool)

(assert (=> b!3956240 (= tp!1205609 (and (=> t!329371 result!288696) (=> t!329373 result!288698) b_and!303531))))

(declare-fun b_free!108991 () Bool)

(declare-fun b_next!109695 () Bool)

(assert (=> b!3956240 (= b_free!108991 (not b_next!109695))))

(declare-fun t!329375 () Bool)

(declare-fun tb!238411 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329375) tb!238411))

(declare-fun result!288700 () Bool)

(assert (= result!288700 result!288378))

(assert (=> d!1172205 t!329375))

(declare-fun t!329377 () Bool)

(declare-fun tb!238413 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831)))))) t!329377) tb!238413))

(declare-fun result!288702 () Bool)

(assert (= result!288702 result!288456))

(assert (=> d!1172357 t!329377))

(declare-fun t!329379 () Bool)

(declare-fun tb!238415 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72)))))) t!329379) tb!238415))

(declare-fun result!288704 () Bool)

(assert (= result!288704 result!288634))

(assert (=> b!3955892 t!329379))

(declare-fun t!329381 () Bool)

(declare-fun tb!238417 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72))))) t!329381) tb!238417))

(declare-fun result!288706 () Bool)

(assert (= result!288706 result!288394))

(assert (=> b!3954861 t!329381))

(declare-fun tb!238419 () Bool)

(declare-fun t!329383 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (get!13883 lt!1382902)))))) t!329383) tb!238419))

(declare-fun result!288708 () Bool)

(assert (= result!288708 result!288556))

(assert (=> d!1172653 t!329383))

(declare-fun t!329385 () Bool)

(declare-fun tb!238421 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80))))) t!329385) tb!238421))

(declare-fun result!288710 () Bool)

(assert (= result!288710 result!288462))

(assert (=> b!3955192 t!329385))

(declare-fun t!329387 () Bool)

(declare-fun tb!238423 () Bool)

(assert (=> (and b!3956240 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80)))))) t!329387) tb!238423))

(declare-fun result!288712 () Bool)

(assert (= result!288712 result!288568))

(assert (=> b!3955744 t!329387))

(declare-fun b_and!303533 () Bool)

(declare-fun tp!1205605 () Bool)

(assert (=> b!3956240 (= tp!1205605 (and (=> t!329383 result!288708) (=> t!329377 result!288702) (=> t!329381 result!288706) (=> t!329375 result!288700) (=> t!329379 result!288704) (=> t!329385 result!288710) (=> t!329387 result!288712) b_and!303533))))

(declare-fun e!2449255 () Bool)

(assert (=> b!3956240 (= e!2449255 (and tp!1205609 tp!1205605))))

(declare-fun e!2449259 () Bool)

(assert (=> b!3955254 (= tp!1205319 e!2449259)))

(declare-fun e!2449257 () Bool)

(declare-fun tp!1205608 () Bool)

(declare-fun b!3956237 () Bool)

(assert (=> b!3956237 (= e!2449259 (and (inv!56325 (h!47521 (t!329058 (t!329058 suffixTokens!72)))) e!2449257 tp!1205608))))

(declare-fun b!3956238 () Bool)

(declare-fun e!2449260 () Bool)

(declare-fun tp!1205606 () Bool)

(assert (=> b!3956238 (= e!2449257 (and (inv!21 (value!208620 (h!47521 (t!329058 (t!329058 suffixTokens!72))))) e!2449260 tp!1205606))))

(declare-fun tp!1205607 () Bool)

(declare-fun b!3956239 () Bool)

(assert (=> b!3956239 (= e!2449260 (and tp!1205607 (inv!56321 (tag!7456 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (inv!56324 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) e!2449255))))

(assert (= b!3956239 b!3956240))

(assert (= b!3956238 b!3956239))

(assert (= b!3956237 b!3956238))

(assert (= (and b!3955254 ((_ is Cons!42101) (t!329058 (t!329058 suffixTokens!72)))) b!3956237))

(declare-fun m!4525215 () Bool)

(assert (=> b!3956237 m!4525215))

(declare-fun m!4525217 () Bool)

(assert (=> b!3956238 m!4525217))

(declare-fun m!4525219 () Bool)

(assert (=> b!3956239 m!4525219))

(declare-fun m!4525221 () Bool)

(assert (=> b!3956239 m!4525221))

(declare-fun b!3956241 () Bool)

(declare-fun e!2449261 () Bool)

(declare-fun tp!1205610 () Bool)

(assert (=> b!3956241 (= e!2449261 (and tp_is_empty!19973 tp!1205610))))

(assert (=> b!3955255 (= tp!1205317 e!2449261)))

(assert (= (and b!3955255 ((_ is Cons!42100) (originalCharacters!7196 (h!47521 (t!329058 suffixTokens!72))))) b!3956241))

(declare-fun b!3956244 () Bool)

(declare-fun e!2449262 () Bool)

(declare-fun tp!1205613 () Bool)

(assert (=> b!3956244 (= e!2449262 tp!1205613)))

(declare-fun b!3956245 () Bool)

(declare-fun tp!1205611 () Bool)

(declare-fun tp!1205612 () Bool)

(assert (=> b!3956245 (= e!2449262 (and tp!1205611 tp!1205612))))

(assert (=> b!3955298 (= tp!1205362 e!2449262)))

(declare-fun b!3956242 () Bool)

(assert (=> b!3956242 (= e!2449262 tp_is_empty!19973)))

(declare-fun b!3956243 () Bool)

(declare-fun tp!1205615 () Bool)

(declare-fun tp!1205614 () Bool)

(assert (=> b!3956243 (= e!2449262 (and tp!1205615 tp!1205614))))

(assert (= (and b!3955298 ((_ is ElementMatch!11501) (regOne!23515 (regex!6596 (h!47522 rules!2768))))) b!3956242))

(assert (= (and b!3955298 ((_ is Concat!18328) (regOne!23515 (regex!6596 (h!47522 rules!2768))))) b!3956243))

(assert (= (and b!3955298 ((_ is Star!11501) (regOne!23515 (regex!6596 (h!47522 rules!2768))))) b!3956244))

(assert (= (and b!3955298 ((_ is Union!11501) (regOne!23515 (regex!6596 (h!47522 rules!2768))))) b!3956245))

(declare-fun b!3956248 () Bool)

(declare-fun e!2449263 () Bool)

(declare-fun tp!1205618 () Bool)

(assert (=> b!3956248 (= e!2449263 tp!1205618)))

(declare-fun b!3956249 () Bool)

(declare-fun tp!1205616 () Bool)

(declare-fun tp!1205617 () Bool)

(assert (=> b!3956249 (= e!2449263 (and tp!1205616 tp!1205617))))

(assert (=> b!3955298 (= tp!1205363 e!2449263)))

(declare-fun b!3956246 () Bool)

(assert (=> b!3956246 (= e!2449263 tp_is_empty!19973)))

(declare-fun b!3956247 () Bool)

(declare-fun tp!1205620 () Bool)

(declare-fun tp!1205619 () Bool)

(assert (=> b!3956247 (= e!2449263 (and tp!1205620 tp!1205619))))

(assert (= (and b!3955298 ((_ is ElementMatch!11501) (regTwo!23515 (regex!6596 (h!47522 rules!2768))))) b!3956246))

(assert (= (and b!3955298 ((_ is Concat!18328) (regTwo!23515 (regex!6596 (h!47522 rules!2768))))) b!3956247))

(assert (= (and b!3955298 ((_ is Star!11501) (regTwo!23515 (regex!6596 (h!47522 rules!2768))))) b!3956248))

(assert (= (and b!3955298 ((_ is Union!11501) (regTwo!23515 (regex!6596 (h!47522 rules!2768))))) b!3956249))

(declare-fun b!3956250 () Bool)

(declare-fun e!2449264 () Bool)

(declare-fun tp!1205621 () Bool)

(assert (=> b!3956250 (= e!2449264 (and tp_is_empty!19973 tp!1205621))))

(assert (=> b!3955286 (= tp!1205351 e!2449264)))

(assert (= (and b!3955286 ((_ is Cons!42100) (t!329057 (t!329057 suffixResult!91)))) b!3956250))

(declare-fun b!3956253 () Bool)

(declare-fun e!2449265 () Bool)

(declare-fun tp!1205624 () Bool)

(assert (=> b!3956253 (= e!2449265 tp!1205624)))

(declare-fun b!3956254 () Bool)

(declare-fun tp!1205622 () Bool)

(declare-fun tp!1205623 () Bool)

(assert (=> b!3956254 (= e!2449265 (and tp!1205622 tp!1205623))))

(assert (=> b!3955297 (= tp!1205364 e!2449265)))

(declare-fun b!3956251 () Bool)

(assert (=> b!3956251 (= e!2449265 tp_is_empty!19973)))

(declare-fun b!3956252 () Bool)

(declare-fun tp!1205626 () Bool)

(declare-fun tp!1205625 () Bool)

(assert (=> b!3956252 (= e!2449265 (and tp!1205626 tp!1205625))))

(assert (= (and b!3955297 ((_ is ElementMatch!11501) (reg!11830 (regex!6596 (h!47522 rules!2768))))) b!3956251))

(assert (= (and b!3955297 ((_ is Concat!18328) (reg!11830 (regex!6596 (h!47522 rules!2768))))) b!3956252))

(assert (= (and b!3955297 ((_ is Star!11501) (reg!11830 (regex!6596 (h!47522 rules!2768))))) b!3956253))

(assert (= (and b!3955297 ((_ is Union!11501) (reg!11830 (regex!6596 (h!47522 rules!2768))))) b!3956254))

(declare-fun b!3956255 () Bool)

(declare-fun e!2449266 () Bool)

(declare-fun tp!1205627 () Bool)

(assert (=> b!3956255 (= e!2449266 (and tp_is_empty!19973 tp!1205627))))

(assert (=> b!3955243 (= tp!1205305 e!2449266)))

(assert (= (and b!3955243 ((_ is Cons!42100) (t!329057 (originalCharacters!7196 (h!47521 suffixTokens!72))))) b!3956255))

(declare-fun b!3956256 () Bool)

(declare-fun e!2449267 () Bool)

(declare-fun tp!1205630 () Bool)

(declare-fun tp!1205629 () Bool)

(assert (=> b!3956256 (= e!2449267 (and (inv!56326 (left!31983 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))) tp!1205629 (inv!56326 (right!32313 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))) tp!1205630))))

(declare-fun b!3956258 () Bool)

(declare-fun e!2449268 () Bool)

(declare-fun tp!1205628 () Bool)

(assert (=> b!3956258 (= e!2449268 tp!1205628)))

(declare-fun b!3956257 () Bool)

(assert (=> b!3956257 (= e!2449267 (and (inv!56335 (xs!16113 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))) e!2449268))))

(assert (=> b!3955194 (= tp!1205302 (and (inv!56326 (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80))))) e!2449267))))

(assert (= (and b!3955194 ((_ is Node!12807) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))) b!3956256))

(assert (= b!3956257 b!3956258))

(assert (= (and b!3955194 ((_ is Leaf!19812) (c!686413 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (value!208620 (h!47521 prefixTokens!80)))))) b!3956257))

(declare-fun m!4525223 () Bool)

(assert (=> b!3956256 m!4525223))

(declare-fun m!4525225 () Bool)

(assert (=> b!3956256 m!4525225))

(declare-fun m!4525227 () Bool)

(assert (=> b!3956257 m!4525227))

(assert (=> b!3955194 m!4523979))

(declare-fun b_lambda!115741 () Bool)

(assert (= b_lambda!115735 (or (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3956224 b_free!108987 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3954707 b_free!108935 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3956240 b_free!108991 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3955257 b_free!108959) (and b!3955290 b_free!108967 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3956213 b_free!108983 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3954701 b_free!108943 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))))) b_lambda!115741)))

(declare-fun b_lambda!115743 () Bool)

(assert (= b_lambda!115739 (or d!1172205 b_lambda!115743)))

(declare-fun bs!587172 () Bool)

(declare-fun d!1172883 () Bool)

(assert (= bs!587172 (and d!1172883 d!1172205)))

(assert (=> bs!587172 (= (dynLambda!18013 lambda!126769 lt!1382843) (= (list!15630 (dynLambda!18003 (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) (dynLambda!18004 (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))) lt!1382843))) (list!15630 lt!1382843)))))

(declare-fun b_lambda!115755 () Bool)

(assert (=> (not b_lambda!115755) (not bs!587172)))

(assert (=> bs!587172 t!329073))

(declare-fun b_and!303535 () Bool)

(assert (= b_and!303505 (and (=> t!329073 result!288378) b_and!303535)))

(assert (=> bs!587172 t!329339))

(declare-fun b_and!303537 () Bool)

(assert (= b_and!303525 (and (=> t!329339 result!288664) b_and!303537)))

(assert (=> bs!587172 t!329163))

(declare-fun b_and!303539 () Bool)

(assert (= b_and!303507 (and (=> t!329163 result!288488) b_and!303539)))

(assert (=> bs!587172 t!329375))

(declare-fun b_and!303541 () Bool)

(assert (= b_and!303533 (and (=> t!329375 result!288700) b_and!303541)))

(assert (=> bs!587172 t!329173))

(declare-fun b_and!303543 () Bool)

(assert (= b_and!303503 (and (=> t!329173 result!288498) b_and!303543)))

(assert (=> bs!587172 t!329153))

(declare-fun b_and!303545 () Bool)

(assert (= b_and!303501 (and (=> t!329153 result!288474) b_and!303545)))

(assert (=> bs!587172 t!329075))

(declare-fun b_and!303547 () Bool)

(assert (= b_and!303499 (and (=> t!329075 result!288382) b_and!303547)))

(assert (=> bs!587172 t!329357))

(declare-fun b_and!303549 () Bool)

(assert (= b_and!303529 (and (=> t!329357 result!288682) b_and!303549)))

(assert (=> bs!587172 t!329077))

(declare-fun b_and!303551 () Bool)

(assert (= b_and!303509 (and (=> t!329077 result!288384) b_and!303551)))

(declare-fun b_lambda!115757 () Bool)

(assert (=> (not b_lambda!115757) (not bs!587172)))

(assert (=> bs!587172 t!329353))

(declare-fun b_and!303553 () Bool)

(assert (= b_and!303527 (and (=> t!329353 result!288678) b_and!303553)))

(assert (=> bs!587172 t!329161))

(declare-fun b_and!303555 () Bool)

(assert (= b_and!303517 (and (=> t!329161 result!288486) b_and!303555)))

(assert (=> bs!587172 t!329335))

(declare-fun b_and!303557 () Bool)

(assert (= b_and!303523 (and (=> t!329335 result!288660) b_and!303557)))

(assert (=> bs!587172 t!329371))

(declare-fun b_and!303559 () Bool)

(assert (= b_and!303531 (and (=> t!329371 result!288696) b_and!303559)))

(assert (=> bs!587172 t!329151))

(declare-fun b_and!303561 () Bool)

(assert (= b_and!303515 (and (=> t!329151 result!288472) b_and!303561)))

(assert (=> bs!587172 t!329079))

(declare-fun b_and!303563 () Bool)

(assert (= b_and!303511 (and (=> t!329079 result!288386) b_and!303563)))

(assert (=> bs!587172 t!329083))

(declare-fun b_and!303565 () Bool)

(assert (= b_and!303521 (and (=> t!329083 result!288392) b_and!303565)))

(assert (=> bs!587172 t!329081))

(declare-fun b_and!303567 () Bool)

(assert (= b_and!303513 (and (=> t!329081 result!288390) b_and!303567)))

(assert (=> bs!587172 t!329171))

(declare-fun b_and!303569 () Bool)

(assert (= b_and!303519 (and (=> t!329171 result!288496) b_and!303569)))

(assert (=> bs!587172 m!4523591))

(assert (=> bs!587172 m!4523585))

(assert (=> bs!587172 m!4523587))

(assert (=> bs!587172 m!4523589))

(assert (=> bs!587172 m!4523585))

(assert (=> bs!587172 m!4523587))

(assert (=> d!1172733 d!1172883))

(declare-fun b_lambda!115745 () Bool)

(assert (= b_lambda!115715 (or (and b!3956224 b_free!108987 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3954707 b_free!108935 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3954701 b_free!108943 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3955290 b_free!108967) (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3956240 b_free!108991 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3955257 b_free!108959 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) (and b!3956213 b_free!108983 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))))) b_lambda!115745)))

(declare-fun b_lambda!115747 () Bool)

(assert (= b_lambda!115695 (or (and b!3956213 b_free!108983 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954707 b_free!108935 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954701 b_free!108943 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955257 b_free!108959 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956240 b_free!108991 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955290 b_free!108967 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956224 b_free!108987 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) b_lambda!115747)))

(declare-fun b_lambda!115749 () Bool)

(assert (= b_lambda!115675 (or (and b!3956213 b_free!108983 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954707 b_free!108935 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954701 b_free!108943 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955257 b_free!108959 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956240 b_free!108991 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955290 b_free!108967 (= (toChars!8931 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955282 b_free!108963 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956224 b_free!108987 (= (toChars!8931 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954710 b_free!108939 (= (toChars!8931 (transformation!6596 (h!47522 rules!2768))) (toChars!8931 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) b_lambda!115749)))

(declare-fun b_lambda!115751 () Bool)

(assert (= b_lambda!115689 (or (and b!3956240 b_free!108989 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956213 b_free!108981 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956224 b_free!108985 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954701 b_free!108941 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955290 b_free!108965 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955257 b_free!108957 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954710 b_free!108937 (= (toValue!9072 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954707 b_free!108933 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955282 b_free!108961 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) b_lambda!115751)))

(declare-fun b_lambda!115753 () Bool)

(assert (= b_lambda!115677 (or (and b!3956240 b_free!108989 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 suffixTokens!72)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956213 b_free!108981 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 (t!329058 prefixTokens!80)))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3956224 b_free!108985 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 (t!329059 rules!2768))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954701 b_free!108941 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 suffixTokens!72)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955290 b_free!108965 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 prefixTokens!80))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955257 b_free!108957 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 (t!329058 suffixTokens!72))))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954710 b_free!108937 (= (toValue!9072 (transformation!6596 (h!47522 rules!2768))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3954707 b_free!108933 (= (toValue!9072 (transformation!6596 (rule!9566 (h!47521 prefixTokens!80)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) (and b!3955282 b_free!108961 (= (toValue!9072 (transformation!6596 (h!47522 (t!329059 rules!2768)))) (toValue!9072 (transformation!6596 (rule!9566 (_1!23825 (v!39359 lt!1382831))))))) b_lambda!115753)))

(check-sat (not b!3955892) (not b!3956223) (not b!3956228) (not b!3956053) (not b!3955946) (not b_next!109685) (not b!3956206) (not b!3956226) b_and!303543 (not b_next!109689) (not b_next!109671) (not b!3956192) (not b!3956130) (not d!1172661) (not b!3956015) (not d!1172799) (not b!3956258) (not b!3956146) (not d!1172735) (not b!3955894) (not b!3956109) (not d!1172857) (not b!3955940) (not b!3956211) (not d!1172653) (not b_next!109647) (not b!3956056) (not d!1172681) b_and!303537 (not b!3956254) (not b!3956123) (not d!1172693) (not b!3956173) (not b_lambda!115737) (not b!3955996) (not b!3956064) (not b!3954863) (not b!3956235) (not b!3955692) (not b!3956100) (not b!3956209) (not d!1172759) (not d!1172805) (not b_next!109637) (not b!3955957) (not b!3956200) (not b!3956000) (not b!3956237) (not b!3956079) (not b!3956101) (not b!3955702) (not b_next!109691) (not d!1172679) (not b!3956221) (not b!3956075) (not b!3955970) (not b!3956191) (not b!3956059) (not d!1172703) (not d!1172761) (not bm!285333) (not b_lambda!115749) (not b!3955875) (not d!1172749) (not b!3956249) (not b!3955728) (not b!3956076) (not b!3956011) (not b!3955905) (not b!3956207) (not b!3956002) (not b!3955995) (not d!1172813) (not d!1172853) (not b!3956186) (not b!3956194) (not d!1172729) b_and!303557 (not b_lambda!115747) (not d!1172697) (not b!3956182) (not b!3956165) (not b!3955900) (not d!1172829) (not d!1172815) (not b!3955726) (not b!3956061) (not b!3955885) (not b!3955710) (not b!3956250) (not b!3956066) (not b!3956074) (not b!3955896) (not b!3956049) (not b!3955842) (not b!3956128) (not b!3956245) (not b_lambda!115701) (not b!3956054) b_and!303567 (not b_next!109641) (not b!3956195) (not b!3955982) (not b!3956055) (not b!3956025) (not b!3956087) (not b!3955962) (not b!3956134) (not d!1172773) (not d!1172689) (not b_lambda!115745) (not b!3956247) (not b!3955690) (not b!3956126) (not b!3956068) (not b!3956040) (not b!3955965) (not b!3955749) (not b!3955991) (not b!3956236) (not b!3955983) (not b!3955955) (not b!3956030) (not b!3955550) b_and!303551 (not b!3956013) b_and!303547 (not bm!285332) (not b!3956204) b_and!303553 (not b_lambda!115751) (not b!3956140) (not b!3956046) (not b_next!109669) b_and!303555 (not d!1172657) (not d!1172789) (not d!1172865) (not b!3956175) (not b!3956003) (not b!3956050) (not b!3955891) (not b!3956227) (not b!3956120) (not b!3955879) (not b!3955654) (not b!3954847) (not b!3956243) (not b!3956203) tp_is_empty!19973 (not b!3956063) (not d!1172647) (not b!3956168) (not d!1172757) (not d!1172811) (not b!3955985) b_and!303535 (not b!3956179) (not tb!238281) (not tb!238269) (not b!3955930) (not b!3955897) b_and!303563 (not b!3956257) (not d!1172707) (not b!3956014) (not b!3956190) (not b!3955975) (not b!3956256) (not b!3956149) (not b!3956167) (not bm!285317) (not d!1172851) (not b!3955959) (not b!3956148) (not bm!285334) (not b!3955908) (not b_lambda!115753) (not b!3955961) (not b!3956214) (not b!3955953) (not tb!238359) (not d!1172777) (not b!3955187) (not d!1172825) (not b!3956239) (not b!3955727) (not d!1172739) (not b!3956009) (not b!3955998) (not d!1172845) (not d!1172791) (not b!3955651) (not d!1172687) (not b!3956080) (not b!3955648) (not d!1172725) (not b!3956039) (not b!3955745) (not b!3956113) (not b!3955973) (not b!3955655) (not b!3956174) (not d!1172867) (not b!3956163) (not b!3955551) (not b_next!109693) (not b!3956106) (not b!3955539) (not b!3956037) (not b!3956222) (not b_next!109661) (not d!1172763) (not d!1172775) b_and!303539 b_and!303545 (not b!3956212) (not b!3956208) (not b!3956043) (not b!3956216) (not b!3955649) (not b!3956111) (not bm!285328) (not d!1172683) (not b!3955744) (not bm!285318) (not b!3956238) (not b!3956180) (not b!3956164) (not b_next!109639) (not b!3956171) (not b!3955987) b_and!303541 (not b!3956097) (not b!3956042) (not b!3955650) (not b_next!109645) (not b!3956005) (not d!1172695) (not b!3955994) (not b!3956241) (not b!3956047) (not d!1172651) (not b!3955647) (not b!3956041) (not b!3956234) (not b!3956199) (not d!1172835) (not b!3956116) (not d!1172731) (not b!3956089) (not b!3955701) b_and!303565 (not b_next!109643) (not b!3955889) (not b!3956071) (not b!3956153) (not b!3956183) (not b_lambda!115699) (not b_next!109695) (not b!3956255) (not b!3956248) (not b!3956178) (not b!3955893) (not b!3956103) (not b!3956219) (not b_next!109663) (not b!3956244) (not b_lambda!115743) (not b!3956135) (not d!1172781) (not b!3956105) (not d!1172715) (not b!3956151) (not b!3956196) (not b!3955877) (not b!3956231) (not bm!285330) (not b!3956065) (not b_lambda!115713) (not bm!285335) (not b!3955194) (not b_lambda!115741) (not b!3956142) (not b!3956144) (not b!3955653) (not b!3956218) (not b!3956058) (not tb!238347) b_and!303549 (not b!3955895) (not d!1172843) (not b!3956252) (not b!3956172) (not b_next!109687) (not b!3956044) (not b!3956162) (not d!1172723) (not d!1172869) (not b!3956176) (not b_next!109665) (not b!3956253) (not b!3956125) (not b!3956007) (not b!3956198) (not d!1172733) (not b!3956220) (not b!3956210) b_and!303569 (not b!3955989) (not b_next!109667) (not b!3956069) (not b!3956021) (not b!3956187) (not bm!285319) (not b!3955979) (not b!3956099) (not b!3955990) b_and!303559 (not b!3956132) (not b!3956188) (not d!1172879) (not b!3956184) (not b!3955960) (not b!3955945) (not b!3956115) (not b!3956138) (not b!3955951) (not b!3955700) (not b!3956008) (not b!3955997) (not b!3956169) (not b!3956020) (not d!1172543) (not b!3956091) (not b!3956217) (not b!3955887) b_and!303561 (not b!3956072) (not b!3956067) (not d!1172787) (not b!3956152) (not d!1172823) (not b!3955977) (not b!3956119) (not b_lambda!115757) (not b!3956202) (not b!3956230) (not d!1172785) (not d!1172643) (not b!3956232) (not bs!587172) (not b!3955737) (not b!3956036) (not d!1172833) (not b!3955999) (not b!3956026) (not b_lambda!115755) (not b!3956028))
(check-sat (not b_next!109637) (not b_next!109691) b_and!303557 (not b_next!109639) (not b_next!109695) (not b_next!109663) b_and!303569 b_and!303561 (not b_next!109685) b_and!303543 (not b_next!109689) (not b_next!109671) (not b_next!109647) b_and!303537 b_and!303567 (not b_next!109641) b_and!303551 b_and!303547 b_and!303553 (not b_next!109669) b_and!303555 b_and!303535 b_and!303563 (not b_next!109693) b_and!303545 (not b_next!109661) b_and!303539 b_and!303541 (not b_next!109645) b_and!303565 (not b_next!109643) b_and!303549 (not b_next!109665) (not b_next!109687) (not b_next!109667) b_and!303559)
