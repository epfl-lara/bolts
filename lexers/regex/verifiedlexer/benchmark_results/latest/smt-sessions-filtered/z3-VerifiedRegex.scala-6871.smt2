; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361800 () Bool)

(assert start!361800)

(declare-fun b!3859143 () Bool)

(declare-fun b_free!103693 () Bool)

(declare-fun b_next!104397 () Bool)

(assert (=> b!3859143 (= b_free!103693 (not b_next!104397))))

(declare-fun tp!1169817 () Bool)

(declare-fun b_and!288819 () Bool)

(assert (=> b!3859143 (= tp!1169817 b_and!288819)))

(declare-fun b_free!103695 () Bool)

(declare-fun b_next!104399 () Bool)

(assert (=> b!3859143 (= b_free!103695 (not b_next!104399))))

(declare-fun tp!1169823 () Bool)

(declare-fun b_and!288821 () Bool)

(assert (=> b!3859143 (= tp!1169823 b_and!288821)))

(declare-fun b!3859145 () Bool)

(declare-fun b_free!103697 () Bool)

(declare-fun b_next!104401 () Bool)

(assert (=> b!3859145 (= b_free!103697 (not b_next!104401))))

(declare-fun tp!1169827 () Bool)

(declare-fun b_and!288823 () Bool)

(assert (=> b!3859145 (= tp!1169827 b_and!288823)))

(declare-fun b_free!103699 () Bool)

(declare-fun b_next!104403 () Bool)

(assert (=> b!3859145 (= b_free!103699 (not b_next!104403))))

(declare-fun tp!1169825 () Bool)

(declare-fun b_and!288825 () Bool)

(assert (=> b!3859145 (= tp!1169825 b_and!288825)))

(declare-fun b!3859160 () Bool)

(declare-fun b_free!103701 () Bool)

(declare-fun b_next!104405 () Bool)

(assert (=> b!3859160 (= b_free!103701 (not b_next!104405))))

(declare-fun tp!1169830 () Bool)

(declare-fun b_and!288827 () Bool)

(assert (=> b!3859160 (= tp!1169830 b_and!288827)))

(declare-fun b_free!103703 () Bool)

(declare-fun b_next!104407 () Bool)

(assert (=> b!3859160 (= b_free!103703 (not b_next!104407))))

(declare-fun tp!1169826 () Bool)

(declare-fun b_and!288829 () Bool)

(assert (=> b!3859160 (= tp!1169826 b_and!288829)))

(declare-fun b!3859126 () Bool)

(declare-fun e!2385693 () Bool)

(declare-fun e!2385681 () Bool)

(assert (=> b!3859126 (= e!2385693 e!2385681)))

(declare-fun res!1562454 () Bool)

(assert (=> b!3859126 (=> res!1562454 e!2385681)))

(declare-datatypes ((List!41032 0))(
  ( (Nil!40908) (Cons!40908 (h!46328 (_ BitVec 16)) (t!313235 List!41032)) )
))
(declare-datatypes ((TokenValue!6560 0))(
  ( (FloatLiteralValue!13120 (text!46365 List!41032)) (TokenValueExt!6559 (__x!25337 Int)) (Broken!32800 (value!201013 List!41032)) (Object!6683) (End!6560) (Def!6560) (Underscore!6560) (Match!6560) (Else!6560) (Error!6560) (Case!6560) (If!6560) (Extends!6560) (Abstract!6560) (Class!6560) (Val!6560) (DelimiterValue!13120 (del!6620 List!41032)) (KeywordValue!6566 (value!201014 List!41032)) (CommentValue!13120 (value!201015 List!41032)) (WhitespaceValue!13120 (value!201016 List!41032)) (IndentationValue!6560 (value!201017 List!41032)) (String!46517) (Int32!6560) (Broken!32801 (value!201018 List!41032)) (Boolean!6561) (Unit!58571) (OperatorValue!6563 (op!6620 List!41032)) (IdentifierValue!13120 (value!201019 List!41032)) (IdentifierValue!13121 (value!201020 List!41032)) (WhitespaceValue!13121 (value!201021 List!41032)) (True!13120) (False!13120) (Broken!32802 (value!201022 List!41032)) (Broken!32803 (value!201023 List!41032)) (True!13121) (RightBrace!6560) (RightBracket!6560) (Colon!6560) (Null!6560) (Comma!6560) (LeftBracket!6560) (False!13121) (LeftBrace!6560) (ImaginaryLiteralValue!6560 (text!46366 List!41032)) (StringLiteralValue!19680 (value!201024 List!41032)) (EOFValue!6560 (value!201025 List!41032)) (IdentValue!6560 (value!201026 List!41032)) (DelimiterValue!13121 (value!201027 List!41032)) (DedentValue!6560 (value!201028 List!41032)) (NewLineValue!6560 (value!201029 List!41032)) (IntegerValue!19680 (value!201030 (_ BitVec 32)) (text!46367 List!41032)) (IntegerValue!19681 (value!201031 Int) (text!46368 List!41032)) (Times!6560) (Or!6560) (Equal!6560) (Minus!6560) (Broken!32804 (value!201032 List!41032)) (And!6560) (Div!6560) (LessEqual!6560) (Mod!6560) (Concat!17795) (Not!6560) (Plus!6560) (SpaceValue!6560 (value!201033 List!41032)) (IntegerValue!19682 (value!201034 Int) (text!46369 List!41032)) (StringLiteralValue!19681 (text!46370 List!41032)) (FloatLiteralValue!13121 (text!46371 List!41032)) (BytesLiteralValue!6560 (value!201035 List!41032)) (CommentValue!13121 (value!201036 List!41032)) (StringLiteralValue!19682 (value!201037 List!41032)) (ErrorTokenValue!6560 (msg!6621 List!41032)) )
))
(declare-datatypes ((C!22656 0))(
  ( (C!22657 (val!13422 Int)) )
))
(declare-datatypes ((Regex!11235 0))(
  ( (ElementMatch!11235 (c!671964 C!22656)) (Concat!17796 (regOne!22982 Regex!11235) (regTwo!22982 Regex!11235)) (EmptyExpr!11235) (Star!11235 (reg!11564 Regex!11235)) (EmptyLang!11235) (Union!11235 (regOne!22983 Regex!11235) (regTwo!22983 Regex!11235)) )
))
(declare-datatypes ((String!46518 0))(
  ( (String!46519 (value!201038 String)) )
))
(declare-datatypes ((List!41033 0))(
  ( (Nil!40909) (Cons!40909 (h!46329 C!22656) (t!313236 List!41033)) )
))
(declare-datatypes ((IArray!25087 0))(
  ( (IArray!25088 (innerList!12601 List!41033)) )
))
(declare-datatypes ((Conc!12541 0))(
  ( (Node!12541 (left!31520 Conc!12541) (right!31850 Conc!12541) (csize!25312 Int) (cheight!12752 Int)) (Leaf!19413 (xs!15847 IArray!25087) (csize!25313 Int)) (Empty!12541) )
))
(declare-datatypes ((BalanceConc!24676 0))(
  ( (BalanceConc!24677 (c!671965 Conc!12541)) )
))
(declare-datatypes ((TokenValueInjection!12548 0))(
  ( (TokenValueInjection!12549 (toValue!8758 Int) (toChars!8617 Int)) )
))
(declare-datatypes ((Rule!12460 0))(
  ( (Rule!12461 (regex!6330 Regex!11235) (tag!7190 String!46518) (isSeparator!6330 Bool) (transformation!6330 TokenValueInjection!12548)) )
))
(declare-datatypes ((Token!11798 0))(
  ( (Token!11799 (value!201039 TokenValue!6560) (rule!9196 Rule!12460) (size!30769 Int) (originalCharacters!6930 List!41033)) )
))
(declare-datatypes ((tuple2!40110 0))(
  ( (tuple2!40111 (_1!23189 Token!11798) (_2!23189 List!41033)) )
))
(declare-datatypes ((Option!8748 0))(
  ( (None!8747) (Some!8747 (v!39045 tuple2!40110)) )
))
(declare-fun lt!1340838 () Option!8748)

(declare-fun lt!1340825 () List!41033)

(declare-fun matchR!5382 (Regex!11235 List!41033) Bool)

(assert (=> b!3859126 (= res!1562454 (not (matchR!5382 (regex!6330 (rule!9196 (_1!23189 (v!39045 lt!1340838)))) lt!1340825)))))

(declare-fun lt!1340832 () Int)

(declare-fun lt!1340839 () List!41033)

(declare-datatypes ((LexerInterface!5919 0))(
  ( (LexerInterfaceExt!5916 (__x!25338 Int)) (Lexer!5917) )
))
(declare-fun thiss!20629 () LexerInterface!5919)

(declare-fun lt!1340837 () TokenValue!6560)

(declare-fun maxPrefixOneRule!2305 (LexerInterface!5919 Rule!12460 List!41033) Option!8748)

(assert (=> b!3859126 (= (maxPrefixOneRule!2305 thiss!20629 (rule!9196 (_1!23189 (v!39045 lt!1340838))) lt!1340839) (Some!8747 (tuple2!40111 (Token!11799 lt!1340837 (rule!9196 (_1!23189 (v!39045 lt!1340838))) lt!1340832 lt!1340825) (_2!23189 (v!39045 lt!1340838)))))))

(declare-datatypes ((List!41034 0))(
  ( (Nil!40910) (Cons!40910 (h!46330 Rule!12460) (t!313237 List!41034)) )
))
(declare-fun rules!2768 () List!41034)

(declare-datatypes ((Unit!58572 0))(
  ( (Unit!58573) )
))
(declare-fun lt!1340842 () Unit!58572)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1203 (LexerInterface!5919 List!41034 List!41033 List!41033 List!41033 Rule!12460) Unit!58572)

(assert (=> b!3859126 (= lt!1340842 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1203 thiss!20629 rules!2768 lt!1340825 lt!1340839 (_2!23189 (v!39045 lt!1340838)) (rule!9196 (_1!23189 (v!39045 lt!1340838)))))))

(declare-fun b!3859127 () Bool)

(declare-fun e!2385695 () Bool)

(declare-fun e!2385692 () Bool)

(assert (=> b!3859127 (= e!2385695 (not e!2385692))))

(declare-fun res!1562462 () Bool)

(assert (=> b!3859127 (=> res!1562462 e!2385692)))

(declare-fun lt!1340830 () List!41033)

(assert (=> b!3859127 (= res!1562462 (not (= lt!1340830 lt!1340839)))))

(declare-datatypes ((List!41035 0))(
  ( (Nil!40911) (Cons!40911 (h!46331 Token!11798) (t!313238 List!41035)) )
))
(declare-datatypes ((tuple2!40112 0))(
  ( (tuple2!40113 (_1!23190 List!41035) (_2!23190 List!41033)) )
))
(declare-fun lt!1340824 () tuple2!40112)

(declare-fun lexList!1687 (LexerInterface!5919 List!41034 List!41033) tuple2!40112)

(assert (=> b!3859127 (= lt!1340824 (lexList!1687 thiss!20629 rules!2768 (_2!23189 (v!39045 lt!1340838))))))

(declare-fun lt!1340834 () List!41033)

(assert (=> b!3859127 (and (= (size!30769 (_1!23189 (v!39045 lt!1340838))) lt!1340832) (= (originalCharacters!6930 (_1!23189 (v!39045 lt!1340838))) lt!1340825) (= (v!39045 lt!1340838) (tuple2!40111 (Token!11799 lt!1340837 (rule!9196 (_1!23189 (v!39045 lt!1340838))) lt!1340832 lt!1340825) lt!1340834)))))

(declare-fun size!30770 (List!41033) Int)

(assert (=> b!3859127 (= lt!1340832 (size!30770 lt!1340825))))

(declare-fun e!2385675 () Bool)

(assert (=> b!3859127 e!2385675))

(declare-fun res!1562467 () Bool)

(assert (=> b!3859127 (=> (not res!1562467) (not e!2385675))))

(assert (=> b!3859127 (= res!1562467 (= (value!201039 (_1!23189 (v!39045 lt!1340838))) lt!1340837))))

(declare-fun apply!9573 (TokenValueInjection!12548 BalanceConc!24676) TokenValue!6560)

(declare-fun seqFromList!4601 (List!41033) BalanceConc!24676)

(assert (=> b!3859127 (= lt!1340837 (apply!9573 (transformation!6330 (rule!9196 (_1!23189 (v!39045 lt!1340838)))) (seqFromList!4601 lt!1340825)))))

(assert (=> b!3859127 (= (_2!23189 (v!39045 lt!1340838)) lt!1340834)))

(declare-fun lt!1340828 () Unit!58572)

(declare-fun lemmaSamePrefixThenSameSuffix!1650 (List!41033 List!41033 List!41033 List!41033 List!41033) Unit!58572)

(assert (=> b!3859127 (= lt!1340828 (lemmaSamePrefixThenSameSuffix!1650 lt!1340825 (_2!23189 (v!39045 lt!1340838)) lt!1340825 lt!1340834 lt!1340839))))

(declare-fun getSuffix!1884 (List!41033 List!41033) List!41033)

(assert (=> b!3859127 (= lt!1340834 (getSuffix!1884 lt!1340839 lt!1340825))))

(declare-fun isPrefix!3429 (List!41033 List!41033) Bool)

(assert (=> b!3859127 (isPrefix!3429 lt!1340825 lt!1340830)))

(declare-fun ++!10417 (List!41033 List!41033) List!41033)

(assert (=> b!3859127 (= lt!1340830 (++!10417 lt!1340825 (_2!23189 (v!39045 lt!1340838))))))

(declare-fun lt!1340843 () Unit!58572)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2292 (List!41033 List!41033) Unit!58572)

(assert (=> b!3859127 (= lt!1340843 (lemmaConcatTwoListThenFirstIsPrefix!2292 lt!1340825 (_2!23189 (v!39045 lt!1340838))))))

(declare-fun list!15228 (BalanceConc!24676) List!41033)

(declare-fun charsOf!4158 (Token!11798) BalanceConc!24676)

(assert (=> b!3859127 (= lt!1340825 (list!15228 (charsOf!4158 (_1!23189 (v!39045 lt!1340838)))))))

(declare-fun ruleValid!2282 (LexerInterface!5919 Rule!12460) Bool)

(assert (=> b!3859127 (ruleValid!2282 thiss!20629 (rule!9196 (_1!23189 (v!39045 lt!1340838))))))

(declare-fun lt!1340829 () Unit!58572)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1362 (LexerInterface!5919 Rule!12460 List!41034) Unit!58572)

(assert (=> b!3859127 (= lt!1340829 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1362 thiss!20629 (rule!9196 (_1!23189 (v!39045 lt!1340838))) rules!2768))))

(declare-fun lt!1340845 () Unit!58572)

(declare-fun lemmaCharactersSize!991 (Token!11798) Unit!58572)

(assert (=> b!3859127 (= lt!1340845 (lemmaCharactersSize!991 (_1!23189 (v!39045 lt!1340838))))))

(declare-fun b!3859128 () Bool)

(declare-fun res!1562455 () Bool)

(declare-fun e!2385683 () Bool)

(assert (=> b!3859128 (=> (not res!1562455) (not e!2385683))))

(declare-fun prefixTokens!80 () List!41035)

(declare-fun isEmpty!24230 (List!41035) Bool)

(assert (=> b!3859128 (= res!1562455 (not (isEmpty!24230 prefixTokens!80)))))

(declare-fun b!3859129 () Bool)

(declare-fun e!2385680 () Bool)

(declare-fun e!2385700 () Bool)

(assert (=> b!3859129 (= e!2385680 e!2385700)))

(declare-fun res!1562456 () Bool)

(assert (=> b!3859129 (=> res!1562456 e!2385700)))

(declare-fun lt!1340827 () Int)

(declare-fun lt!1340835 () Int)

(assert (=> b!3859129 (= res!1562456 (not (= (+ lt!1340832 lt!1340827) lt!1340835)))))

(assert (=> b!3859129 (= lt!1340835 (size!30770 lt!1340839))))

(declare-fun b!3859130 () Bool)

(declare-fun e!2385690 () Bool)

(declare-fun tp_is_empty!19441 () Bool)

(declare-fun tp!1169829 () Bool)

(assert (=> b!3859130 (= e!2385690 (and tp_is_empty!19441 tp!1169829))))

(declare-fun b!3859131 () Bool)

(declare-fun e!2385674 () Bool)

(assert (=> b!3859131 (= e!2385674 true)))

(declare-fun lt!1340841 () tuple2!40110)

(assert (=> b!3859131 (= (_2!23189 (v!39045 lt!1340838)) (_2!23189 lt!1340841))))

(declare-fun lt!1340836 () Unit!58572)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!422 (List!41033 List!41033 List!41033 List!41033) Unit!58572)

(assert (=> b!3859131 (= lt!1340836 (lemmaConcatSameAndSameSizesThenSameLists!422 lt!1340825 (_2!23189 (v!39045 lt!1340838)) lt!1340825 (_2!23189 lt!1340841)))))

(declare-fun b!3859133 () Bool)

(declare-fun tp!1169832 () Bool)

(declare-fun e!2385696 () Bool)

(declare-fun e!2385676 () Bool)

(declare-fun inv!55068 (String!46518) Bool)

(declare-fun inv!55071 (TokenValueInjection!12548) Bool)

(assert (=> b!3859133 (= e!2385676 (and tp!1169832 (inv!55068 (tag!7190 (rule!9196 (h!46331 prefixTokens!80)))) (inv!55071 (transformation!6330 (rule!9196 (h!46331 prefixTokens!80)))) e!2385696))))

(declare-fun b!3859134 () Bool)

(declare-fun e!2385691 () Bool)

(assert (=> b!3859134 (= e!2385691 e!2385695)))

(declare-fun res!1562463 () Bool)

(assert (=> b!3859134 (=> (not res!1562463) (not e!2385695))))

(get-info :version)

(assert (=> b!3859134 (= res!1562463 ((_ is Some!8747) lt!1340838))))

(declare-fun maxPrefix!3223 (LexerInterface!5919 List!41034 List!41033) Option!8748)

(assert (=> b!3859134 (= lt!1340838 (maxPrefix!3223 thiss!20629 rules!2768 lt!1340839))))

(declare-fun b!3859135 () Bool)

(declare-fun res!1562465 () Bool)

(assert (=> b!3859135 (=> (not res!1562465) (not e!2385691))))

(declare-fun suffixResult!91 () List!41033)

(declare-fun suffix!1176 () List!41033)

(declare-fun suffixTokens!72 () List!41035)

(assert (=> b!3859135 (= res!1562465 (= (lexList!1687 thiss!20629 rules!2768 suffix!1176) (tuple2!40113 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3859136 () Bool)

(declare-fun tp!1169831 () Bool)

(declare-fun e!2385697 () Bool)

(declare-fun e!2385702 () Bool)

(assert (=> b!3859136 (= e!2385702 (and tp!1169831 (inv!55068 (tag!7190 (h!46330 rules!2768))) (inv!55071 (transformation!6330 (h!46330 rules!2768))) e!2385697))))

(declare-fun e!2385686 () Bool)

(declare-fun e!2385685 () Bool)

(declare-fun b!3859137 () Bool)

(declare-fun tp!1169816 () Bool)

(assert (=> b!3859137 (= e!2385685 (and tp!1169816 (inv!55068 (tag!7190 (rule!9196 (h!46331 suffixTokens!72)))) (inv!55071 (transformation!6330 (rule!9196 (h!46331 suffixTokens!72)))) e!2385686))))

(declare-fun b!3859138 () Bool)

(declare-fun res!1562453 () Bool)

(assert (=> b!3859138 (=> res!1562453 e!2385692)))

(declare-fun lt!1340833 () tuple2!40112)

(declare-fun ++!10418 (List!41035 List!41035) List!41035)

(assert (=> b!3859138 (= res!1562453 (not (= lt!1340833 (tuple2!40113 (++!10418 (Cons!40911 (_1!23189 (v!39045 lt!1340838)) Nil!40911) (_1!23190 lt!1340824)) (_2!23190 lt!1340824)))))))

(declare-fun b!3859139 () Bool)

(declare-fun e!2385698 () Bool)

(declare-fun tp!1169824 () Bool)

(assert (=> b!3859139 (= e!2385698 (and e!2385702 tp!1169824))))

(declare-fun b!3859140 () Bool)

(assert (=> b!3859140 (= e!2385692 e!2385680)))

(declare-fun res!1562464 () Bool)

(assert (=> b!3859140 (=> res!1562464 e!2385680)))

(declare-fun lt!1340844 () Int)

(assert (=> b!3859140 (= res!1562464 (>= lt!1340827 lt!1340844))))

(assert (=> b!3859140 (= lt!1340844 (size!30770 suffix!1176))))

(assert (=> b!3859140 (= lt!1340827 (size!30770 (_2!23189 (v!39045 lt!1340838))))))

(declare-fun b!3859141 () Bool)

(declare-fun e!2385677 () Bool)

(declare-fun tp!1169820 () Bool)

(declare-fun inv!21 (TokenValue!6560) Bool)

(assert (=> b!3859141 (= e!2385677 (and (inv!21 (value!201039 (h!46331 suffixTokens!72))) e!2385685 tp!1169820))))

(declare-fun b!3859142 () Bool)

(assert (=> b!3859142 (= e!2385683 e!2385691)))

(declare-fun res!1562459 () Bool)

(assert (=> b!3859142 (=> (not res!1562459) (not e!2385691))))

(declare-fun lt!1340831 () List!41035)

(assert (=> b!3859142 (= res!1562459 (= lt!1340833 (tuple2!40113 lt!1340831 suffixResult!91)))))

(assert (=> b!3859142 (= lt!1340833 (lexList!1687 thiss!20629 rules!2768 lt!1340839))))

(assert (=> b!3859142 (= lt!1340831 (++!10418 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41033)

(assert (=> b!3859142 (= lt!1340839 (++!10417 prefix!426 suffix!1176))))

(assert (=> b!3859143 (= e!2385697 (and tp!1169817 tp!1169823))))

(declare-fun b!3859144 () Bool)

(declare-fun res!1562452 () Bool)

(assert (=> b!3859144 (=> res!1562452 e!2385674)))

(declare-fun lt!1340840 () Token!11798)

(assert (=> b!3859144 (= res!1562452 (or (not (= prefixTokens!80 (Cons!40911 lt!1340840 Nil!40911))) (not (= (_1!23189 (v!39045 lt!1340838)) lt!1340840))))))

(declare-fun res!1562457 () Bool)

(assert (=> start!361800 (=> (not res!1562457) (not e!2385683))))

(assert (=> start!361800 (= res!1562457 ((_ is Lexer!5917) thiss!20629))))

(assert (=> start!361800 e!2385683))

(assert (=> start!361800 e!2385690))

(assert (=> start!361800 true))

(declare-fun e!2385689 () Bool)

(assert (=> start!361800 e!2385689))

(assert (=> start!361800 e!2385698))

(declare-fun e!2385684 () Bool)

(assert (=> start!361800 e!2385684))

(declare-fun e!2385694 () Bool)

(assert (=> start!361800 e!2385694))

(declare-fun e!2385701 () Bool)

(assert (=> start!361800 e!2385701))

(declare-fun b!3859132 () Bool)

(declare-fun res!1562469 () Bool)

(assert (=> b!3859132 (=> res!1562469 e!2385674)))

(assert (=> b!3859132 (= res!1562469 (not (= lt!1340830 (++!10417 lt!1340825 (_2!23189 lt!1340841)))))))

(assert (=> b!3859145 (= e!2385696 (and tp!1169827 tp!1169825))))

(declare-fun b!3859146 () Bool)

(declare-fun res!1562466 () Bool)

(assert (=> b!3859146 (=> (not res!1562466) (not e!2385683))))

(declare-fun isEmpty!24231 (List!41034) Bool)

(assert (=> b!3859146 (= res!1562466 (not (isEmpty!24231 rules!2768)))))

(declare-fun b!3859147 () Bool)

(declare-fun res!1562460 () Bool)

(assert (=> b!3859147 (=> res!1562460 e!2385674)))

(assert (=> b!3859147 (= res!1562460 (>= (size!30770 (_2!23189 lt!1340841)) lt!1340844))))

(declare-fun b!3859148 () Bool)

(declare-fun res!1562472 () Bool)

(assert (=> b!3859148 (=> res!1562472 e!2385674)))

(declare-fun tail!5843 (List!41035) List!41035)

(assert (=> b!3859148 (= res!1562472 (not (isEmpty!24230 (tail!5843 prefixTokens!80))))))

(declare-fun b!3859149 () Bool)

(declare-fun tp!1169819 () Bool)

(declare-fun inv!55072 (Token!11798) Bool)

(assert (=> b!3859149 (= e!2385694 (and (inv!55072 (h!46331 suffixTokens!72)) e!2385677 tp!1169819))))

(declare-fun tp!1169828 () Bool)

(declare-fun b!3859150 () Bool)

(declare-fun e!2385678 () Bool)

(assert (=> b!3859150 (= e!2385684 (and (inv!55072 (h!46331 prefixTokens!80)) e!2385678 tp!1169828))))

(declare-fun b!3859151 () Bool)

(declare-fun res!1562468 () Bool)

(assert (=> b!3859151 (=> (not res!1562468) (not e!2385683))))

(declare-fun isEmpty!24232 (List!41033) Bool)

(assert (=> b!3859151 (= res!1562468 (not (isEmpty!24232 prefix!426)))))

(declare-fun tp!1169821 () Bool)

(declare-fun b!3859152 () Bool)

(assert (=> b!3859152 (= e!2385678 (and (inv!21 (value!201039 (h!46331 prefixTokens!80))) e!2385676 tp!1169821))))

(declare-fun b!3859153 () Bool)

(assert (=> b!3859153 (= e!2385700 e!2385693)))

(declare-fun res!1562470 () Bool)

(assert (=> b!3859153 (=> res!1562470 e!2385693)))

(declare-fun lt!1340826 () Int)

(assert (=> b!3859153 (= res!1562470 (or (not (= (+ lt!1340826 lt!1340844) lt!1340835)) (<= lt!1340832 lt!1340826)))))

(assert (=> b!3859153 (= lt!1340826 (size!30770 prefix!426))))

(declare-fun b!3859154 () Bool)

(declare-fun tp!1169818 () Bool)

(assert (=> b!3859154 (= e!2385689 (and tp_is_empty!19441 tp!1169818))))

(declare-fun b!3859155 () Bool)

(assert (=> b!3859155 (= e!2385681 e!2385674)))

(declare-fun res!1562458 () Bool)

(assert (=> b!3859155 (=> res!1562458 e!2385674)))

(assert (=> b!3859155 (= res!1562458 (not (= (_1!23189 lt!1340841) lt!1340840)))))

(declare-fun head!8132 (List!41035) Token!11798)

(assert (=> b!3859155 (= lt!1340840 (head!8132 prefixTokens!80))))

(declare-fun get!13535 (Option!8748) tuple2!40110)

(assert (=> b!3859155 (= lt!1340841 (get!13535 lt!1340838))))

(declare-fun b!3859156 () Bool)

(declare-fun tp!1169822 () Bool)

(assert (=> b!3859156 (= e!2385701 (and tp_is_empty!19441 tp!1169822))))

(declare-fun b!3859157 () Bool)

(declare-fun res!1562461 () Bool)

(assert (=> b!3859157 (=> res!1562461 e!2385692)))

(assert (=> b!3859157 (= res!1562461 (or (not (= lt!1340824 (tuple2!40113 (_1!23190 lt!1340824) (_2!23190 lt!1340824)))) (= (_2!23189 (v!39045 lt!1340838)) suffix!1176)))))

(declare-fun b!3859158 () Bool)

(assert (=> b!3859158 (= e!2385675 (= (size!30769 (_1!23189 (v!39045 lt!1340838))) (size!30770 (originalCharacters!6930 (_1!23189 (v!39045 lt!1340838))))))))

(declare-fun b!3859159 () Bool)

(declare-fun res!1562471 () Bool)

(assert (=> b!3859159 (=> (not res!1562471) (not e!2385683))))

(declare-fun rulesInvariant!5262 (LexerInterface!5919 List!41034) Bool)

(assert (=> b!3859159 (= res!1562471 (rulesInvariant!5262 thiss!20629 rules!2768))))

(assert (=> b!3859160 (= e!2385686 (and tp!1169830 tp!1169826))))

(assert (= (and start!361800 res!1562457) b!3859146))

(assert (= (and b!3859146 res!1562466) b!3859159))

(assert (= (and b!3859159 res!1562471) b!3859128))

(assert (= (and b!3859128 res!1562455) b!3859151))

(assert (= (and b!3859151 res!1562468) b!3859142))

(assert (= (and b!3859142 res!1562459) b!3859135))

(assert (= (and b!3859135 res!1562465) b!3859134))

(assert (= (and b!3859134 res!1562463) b!3859127))

(assert (= (and b!3859127 res!1562467) b!3859158))

(assert (= (and b!3859127 (not res!1562462)) b!3859138))

(assert (= (and b!3859138 (not res!1562453)) b!3859157))

(assert (= (and b!3859157 (not res!1562461)) b!3859140))

(assert (= (and b!3859140 (not res!1562464)) b!3859129))

(assert (= (and b!3859129 (not res!1562456)) b!3859153))

(assert (= (and b!3859153 (not res!1562470)) b!3859126))

(assert (= (and b!3859126 (not res!1562454)) b!3859155))

(assert (= (and b!3859155 (not res!1562458)) b!3859147))

(assert (= (and b!3859147 (not res!1562460)) b!3859148))

(assert (= (and b!3859148 (not res!1562472)) b!3859144))

(assert (= (and b!3859144 (not res!1562452)) b!3859132))

(assert (= (and b!3859132 (not res!1562469)) b!3859131))

(assert (= (and start!361800 ((_ is Cons!40909) suffixResult!91)) b!3859130))

(assert (= (and start!361800 ((_ is Cons!40909) suffix!1176)) b!3859154))

(assert (= b!3859136 b!3859143))

(assert (= b!3859139 b!3859136))

(assert (= (and start!361800 ((_ is Cons!40910) rules!2768)) b!3859139))

(assert (= b!3859133 b!3859145))

(assert (= b!3859152 b!3859133))

(assert (= b!3859150 b!3859152))

(assert (= (and start!361800 ((_ is Cons!40911) prefixTokens!80)) b!3859150))

(assert (= b!3859137 b!3859160))

(assert (= b!3859141 b!3859137))

(assert (= b!3859149 b!3859141))

(assert (= (and start!361800 ((_ is Cons!40911) suffixTokens!72)) b!3859149))

(assert (= (and start!361800 ((_ is Cons!40909) prefix!426)) b!3859156))

(declare-fun m!4414639 () Bool)

(assert (=> b!3859131 m!4414639))

(declare-fun m!4414641 () Bool)

(assert (=> b!3859159 m!4414641))

(declare-fun m!4414643 () Bool)

(assert (=> b!3859140 m!4414643))

(declare-fun m!4414645 () Bool)

(assert (=> b!3859140 m!4414645))

(declare-fun m!4414647 () Bool)

(assert (=> b!3859155 m!4414647))

(declare-fun m!4414649 () Bool)

(assert (=> b!3859155 m!4414649))

(declare-fun m!4414651 () Bool)

(assert (=> b!3859129 m!4414651))

(declare-fun m!4414653 () Bool)

(assert (=> b!3859138 m!4414653))

(declare-fun m!4414655 () Bool)

(assert (=> b!3859133 m!4414655))

(declare-fun m!4414657 () Bool)

(assert (=> b!3859133 m!4414657))

(declare-fun m!4414659 () Bool)

(assert (=> b!3859136 m!4414659))

(declare-fun m!4414661 () Bool)

(assert (=> b!3859136 m!4414661))

(declare-fun m!4414663 () Bool)

(assert (=> b!3859153 m!4414663))

(declare-fun m!4414665 () Bool)

(assert (=> b!3859132 m!4414665))

(declare-fun m!4414667 () Bool)

(assert (=> b!3859135 m!4414667))

(declare-fun m!4414669 () Bool)

(assert (=> b!3859128 m!4414669))

(declare-fun m!4414671 () Bool)

(assert (=> b!3859150 m!4414671))

(declare-fun m!4414673 () Bool)

(assert (=> b!3859149 m!4414673))

(declare-fun m!4414675 () Bool)

(assert (=> b!3859141 m!4414675))

(declare-fun m!4414677 () Bool)

(assert (=> b!3859134 m!4414677))

(declare-fun m!4414679 () Bool)

(assert (=> b!3859126 m!4414679))

(declare-fun m!4414681 () Bool)

(assert (=> b!3859126 m!4414681))

(declare-fun m!4414683 () Bool)

(assert (=> b!3859126 m!4414683))

(declare-fun m!4414685 () Bool)

(assert (=> b!3859158 m!4414685))

(declare-fun m!4414687 () Bool)

(assert (=> b!3859152 m!4414687))

(declare-fun m!4414689 () Bool)

(assert (=> b!3859137 m!4414689))

(declare-fun m!4414691 () Bool)

(assert (=> b!3859137 m!4414691))

(declare-fun m!4414693 () Bool)

(assert (=> b!3859142 m!4414693))

(declare-fun m!4414695 () Bool)

(assert (=> b!3859142 m!4414695))

(declare-fun m!4414697 () Bool)

(assert (=> b!3859142 m!4414697))

(declare-fun m!4414699 () Bool)

(assert (=> b!3859148 m!4414699))

(assert (=> b!3859148 m!4414699))

(declare-fun m!4414701 () Bool)

(assert (=> b!3859148 m!4414701))

(declare-fun m!4414703 () Bool)

(assert (=> b!3859147 m!4414703))

(declare-fun m!4414705 () Bool)

(assert (=> b!3859146 m!4414705))

(declare-fun m!4414707 () Bool)

(assert (=> b!3859127 m!4414707))

(declare-fun m!4414709 () Bool)

(assert (=> b!3859127 m!4414709))

(declare-fun m!4414711 () Bool)

(assert (=> b!3859127 m!4414711))

(declare-fun m!4414713 () Bool)

(assert (=> b!3859127 m!4414713))

(declare-fun m!4414715 () Bool)

(assert (=> b!3859127 m!4414715))

(declare-fun m!4414717 () Bool)

(assert (=> b!3859127 m!4414717))

(declare-fun m!4414719 () Bool)

(assert (=> b!3859127 m!4414719))

(declare-fun m!4414721 () Bool)

(assert (=> b!3859127 m!4414721))

(declare-fun m!4414723 () Bool)

(assert (=> b!3859127 m!4414723))

(assert (=> b!3859127 m!4414713))

(declare-fun m!4414725 () Bool)

(assert (=> b!3859127 m!4414725))

(declare-fun m!4414727 () Bool)

(assert (=> b!3859127 m!4414727))

(declare-fun m!4414729 () Bool)

(assert (=> b!3859127 m!4414729))

(declare-fun m!4414731 () Bool)

(assert (=> b!3859127 m!4414731))

(assert (=> b!3859127 m!4414729))

(declare-fun m!4414733 () Bool)

(assert (=> b!3859127 m!4414733))

(declare-fun m!4414735 () Bool)

(assert (=> b!3859151 m!4414735))

(check-sat (not b_next!104407) b_and!288821 (not b!3859150) (not b!3859126) (not b!3859147) (not b!3859141) (not b!3859138) (not b!3859159) (not b_next!104397) (not b!3859133) (not b!3859146) (not b!3859137) (not b!3859131) (not b!3859142) b_and!288827 (not b!3859127) (not b_next!104399) (not b!3859148) (not b!3859151) b_and!288823 (not b_next!104403) (not b!3859132) (not b!3859129) (not b!3859135) (not b!3859153) (not b!3859156) tp_is_empty!19441 (not b!3859152) (not b!3859128) (not b!3859149) b_and!288825 (not b!3859139) (not b!3859130) (not b!3859136) (not b!3859155) b_and!288819 (not b_next!104405) (not b!3859140) (not b!3859134) (not b!3859158) (not b_next!104401) b_and!288829 (not b!3859154))
(check-sat (not b_next!104407) b_and!288821 b_and!288827 (not b_next!104399) b_and!288825 (not b_next!104397) b_and!288823 (not b_next!104403) b_and!288819 (not b_next!104405) (not b_next!104401) b_and!288829)
