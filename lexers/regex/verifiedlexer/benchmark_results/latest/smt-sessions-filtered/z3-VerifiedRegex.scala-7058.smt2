; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374356 () Bool)

(assert start!374356)

(declare-fun b!3977463 () Bool)

(declare-fun b_free!110353 () Bool)

(declare-fun b_next!111057 () Bool)

(assert (=> b!3977463 (= b_free!110353 (not b_next!111057))))

(declare-fun tp!1212727 () Bool)

(declare-fun b_and!305743 () Bool)

(assert (=> b!3977463 (= tp!1212727 b_and!305743)))

(declare-fun b_free!110355 () Bool)

(declare-fun b_next!111059 () Bool)

(assert (=> b!3977463 (= b_free!110355 (not b_next!111059))))

(declare-fun tp!1212725 () Bool)

(declare-fun b_and!305745 () Bool)

(assert (=> b!3977463 (= tp!1212725 b_and!305745)))

(declare-fun b!3977449 () Bool)

(declare-fun b_free!110357 () Bool)

(declare-fun b_next!111061 () Bool)

(assert (=> b!3977449 (= b_free!110357 (not b_next!111061))))

(declare-fun tp!1212736 () Bool)

(declare-fun b_and!305747 () Bool)

(assert (=> b!3977449 (= tp!1212736 b_and!305747)))

(declare-fun b_free!110359 () Bool)

(declare-fun b_next!111063 () Bool)

(assert (=> b!3977449 (= b_free!110359 (not b_next!111063))))

(declare-fun tp!1212734 () Bool)

(declare-fun b_and!305749 () Bool)

(assert (=> b!3977449 (= tp!1212734 b_and!305749)))

(declare-fun e!2464575 () Bool)

(assert (=> b!3977449 (= e!2464575 (and tp!1212736 tp!1212734))))

(declare-fun res!1611179 () Bool)

(declare-fun e!2464570 () Bool)

(assert (=> start!374356 (=> (not res!1611179) (not e!2464570))))

(declare-datatypes ((LexerInterface!6293 0))(
  ( (LexerInterfaceExt!6290 (__x!26085 Int)) (Lexer!6291) )
))
(declare-fun thiss!21717 () LexerInterface!6293)

(get-info :version)

(assert (=> start!374356 (= res!1611179 ((_ is Lexer!6291) thiss!21717))))

(assert (=> start!374356 e!2464570))

(declare-fun e!2464558 () Bool)

(assert (=> start!374356 e!2464558))

(declare-datatypes ((C!23404 0))(
  ( (C!23405 (val!13796 Int)) )
))
(declare-datatypes ((List!42632 0))(
  ( (Nil!42508) (Cons!42508 (h!47928 C!23404) (t!331143 List!42632)) )
))
(declare-datatypes ((IArray!25835 0))(
  ( (IArray!25836 (innerList!12975 List!42632)) )
))
(declare-datatypes ((Conc!12915 0))(
  ( (Node!12915 (left!32165 Conc!12915) (right!32495 Conc!12915) (csize!26060 Int) (cheight!13126 Int)) (Leaf!19974 (xs!16221 IArray!25835) (csize!26061 Int)) (Empty!12915) )
))
(declare-datatypes ((BalanceConc!25424 0))(
  ( (BalanceConc!25425 (c!689354 Conc!12915)) )
))
(declare-datatypes ((List!42633 0))(
  ( (Nil!42509) (Cons!42509 (h!47929 (_ BitVec 16)) (t!331144 List!42633)) )
))
(declare-datatypes ((TokenValue!6934 0))(
  ( (FloatLiteralValue!13868 (text!48983 List!42633)) (TokenValueExt!6933 (__x!26086 Int)) (Broken!34670 (value!211672 List!42633)) (Object!7057) (End!6934) (Def!6934) (Underscore!6934) (Match!6934) (Else!6934) (Error!6934) (Case!6934) (If!6934) (Extends!6934) (Abstract!6934) (Class!6934) (Val!6934) (DelimiterValue!13868 (del!6994 List!42633)) (KeywordValue!6940 (value!211673 List!42633)) (CommentValue!13868 (value!211674 List!42633)) (WhitespaceValue!13868 (value!211675 List!42633)) (IndentationValue!6934 (value!211676 List!42633)) (String!48387) (Int32!6934) (Broken!34671 (value!211677 List!42633)) (Boolean!6935) (Unit!61158) (OperatorValue!6937 (op!6994 List!42633)) (IdentifierValue!13868 (value!211678 List!42633)) (IdentifierValue!13869 (value!211679 List!42633)) (WhitespaceValue!13869 (value!211680 List!42633)) (True!13868) (False!13868) (Broken!34672 (value!211681 List!42633)) (Broken!34673 (value!211682 List!42633)) (True!13869) (RightBrace!6934) (RightBracket!6934) (Colon!6934) (Null!6934) (Comma!6934) (LeftBracket!6934) (False!13869) (LeftBrace!6934) (ImaginaryLiteralValue!6934 (text!48984 List!42633)) (StringLiteralValue!20802 (value!211683 List!42633)) (EOFValue!6934 (value!211684 List!42633)) (IdentValue!6934 (value!211685 List!42633)) (DelimiterValue!13869 (value!211686 List!42633)) (DedentValue!6934 (value!211687 List!42633)) (NewLineValue!6934 (value!211688 List!42633)) (IntegerValue!20802 (value!211689 (_ BitVec 32)) (text!48985 List!42633)) (IntegerValue!20803 (value!211690 Int) (text!48986 List!42633)) (Times!6934) (Or!6934) (Equal!6934) (Minus!6934) (Broken!34674 (value!211691 List!42633)) (And!6934) (Div!6934) (LessEqual!6934) (Mod!6934) (Concat!18543) (Not!6934) (Plus!6934) (SpaceValue!6934 (value!211692 List!42633)) (IntegerValue!20804 (value!211693 Int) (text!48987 List!42633)) (StringLiteralValue!20803 (text!48988 List!42633)) (FloatLiteralValue!13869 (text!48989 List!42633)) (BytesLiteralValue!6934 (value!211694 List!42633)) (CommentValue!13869 (value!211695 List!42633)) (StringLiteralValue!20804 (value!211696 List!42633)) (ErrorTokenValue!6934 (msg!6995 List!42633)) )
))
(declare-datatypes ((Regex!11609 0))(
  ( (ElementMatch!11609 (c!689355 C!23404)) (Concat!18544 (regOne!23730 Regex!11609) (regTwo!23730 Regex!11609)) (EmptyExpr!11609) (Star!11609 (reg!11938 Regex!11609)) (EmptyLang!11609) (Union!11609 (regOne!23731 Regex!11609) (regTwo!23731 Regex!11609)) )
))
(declare-datatypes ((String!48388 0))(
  ( (String!48389 (value!211697 String)) )
))
(declare-datatypes ((TokenValueInjection!13296 0))(
  ( (TokenValueInjection!13297 (toValue!9192 Int) (toChars!9051 Int)) )
))
(declare-datatypes ((Rule!13208 0))(
  ( (Rule!13209 (regex!6704 Regex!11609) (tag!7564 String!48388) (isSeparator!6704 Bool) (transformation!6704 TokenValueInjection!13296)) )
))
(declare-datatypes ((Token!12546 0))(
  ( (Token!12547 (value!211698 TokenValue!6934) (rule!9704 Rule!13208) (size!31800 Int) (originalCharacters!7304 List!42632)) )
))
(declare-fun token!484 () Token!12546)

(declare-fun e!2464552 () Bool)

(declare-fun inv!56791 (Token!12546) Bool)

(assert (=> start!374356 (and (inv!56791 token!484) e!2464552)))

(declare-fun e!2464576 () Bool)

(assert (=> start!374356 e!2464576))

(declare-fun e!2464561 () Bool)

(assert (=> start!374356 e!2464561))

(declare-fun e!2464574 () Bool)

(assert (=> start!374356 e!2464574))

(assert (=> start!374356 true))

(declare-fun e!2464560 () Bool)

(assert (=> start!374356 e!2464560))

(declare-fun e!2464557 () Bool)

(assert (=> start!374356 e!2464557))

(declare-fun b!3977450 () Bool)

(declare-fun res!1611175 () Bool)

(assert (=> b!3977450 (=> (not res!1611175) (not e!2464570))))

(declare-datatypes ((List!42634 0))(
  ( (Nil!42510) (Cons!42510 (h!47930 Rule!13208) (t!331145 List!42634)) )
))
(declare-fun rules!2999 () List!42634)

(declare-fun isEmpty!25420 (List!42634) Bool)

(assert (=> b!3977450 (= res!1611175 (not (isEmpty!25420 rules!2999)))))

(declare-fun b!3977451 () Bool)

(declare-fun res!1611172 () Bool)

(assert (=> b!3977451 (=> (not res!1611172) (not e!2464570))))

(declare-fun newSuffix!27 () List!42632)

(declare-fun suffix!1299 () List!42632)

(declare-fun isPrefix!3791 (List!42632 List!42632) Bool)

(assert (=> b!3977451 (= res!1611172 (isPrefix!3791 newSuffix!27 suffix!1299))))

(declare-fun b!3977452 () Bool)

(declare-fun e!2464563 () Bool)

(declare-fun e!2464577 () Bool)

(assert (=> b!3977452 (= e!2464563 e!2464577)))

(declare-fun res!1611180 () Bool)

(assert (=> b!3977452 (=> res!1611180 e!2464577)))

(declare-fun lt!1395333 () List!42632)

(declare-fun prefix!494 () List!42632)

(assert (=> b!3977452 (= res!1611180 (not (= lt!1395333 prefix!494)))))

(declare-fun lt!1395340 () List!42632)

(declare-fun lt!1395331 () List!42632)

(declare-fun ++!11106 (List!42632 List!42632) List!42632)

(assert (=> b!3977452 (= lt!1395333 (++!11106 lt!1395340 lt!1395331))))

(declare-fun getSuffix!2222 (List!42632 List!42632) List!42632)

(assert (=> b!3977452 (= lt!1395331 (getSuffix!2222 prefix!494 lt!1395340))))

(assert (=> b!3977452 (isPrefix!3791 lt!1395340 prefix!494)))

(declare-fun lt!1395334 () List!42632)

(declare-datatypes ((Unit!61159 0))(
  ( (Unit!61160) )
))
(declare-fun lt!1395330 () Unit!61159)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!369 (List!42632 List!42632 List!42632) Unit!61159)

(assert (=> b!3977452 (= lt!1395330 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!369 prefix!494 lt!1395340 lt!1395334))))

(declare-fun b!3977453 () Bool)

(declare-fun e!2464571 () Bool)

(declare-fun e!2464568 () Bool)

(assert (=> b!3977453 (= e!2464571 e!2464568)))

(declare-fun res!1611170 () Bool)

(assert (=> b!3977453 (=> (not res!1611170) (not e!2464568))))

(declare-fun lt!1395342 () List!42632)

(declare-fun lt!1395356 () List!42632)

(assert (=> b!3977453 (= res!1611170 (= lt!1395342 lt!1395356))))

(assert (=> b!3977453 (= lt!1395356 (++!11106 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42632)

(assert (=> b!3977453 (= lt!1395342 (++!11106 lt!1395340 newSuffixResult!27))))

(declare-fun b!3977454 () Bool)

(declare-fun e!2464572 () Bool)

(assert (=> b!3977454 (= e!2464572 true)))

(declare-fun lt!1395341 () List!42632)

(assert (=> b!3977454 (isPrefix!3791 lt!1395341 (++!11106 lt!1395341 newSuffixResult!27))))

(declare-fun lt!1395349 () Unit!61159)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2634 (List!42632 List!42632) Unit!61159)

(assert (=> b!3977454 (= lt!1395349 (lemmaConcatTwoListThenFirstIsPrefix!2634 lt!1395341 newSuffixResult!27))))

(declare-datatypes ((tuple2!41744 0))(
  ( (tuple2!41745 (_1!24006 Token!12546) (_2!24006 List!42632)) )
))
(declare-datatypes ((Option!9118 0))(
  ( (None!9117) (Some!9117 (v!39465 tuple2!41744)) )
))
(declare-fun lt!1395351 () Option!9118)

(assert (=> b!3977454 (isPrefix!3791 lt!1395341 (++!11106 lt!1395341 (_2!24006 (v!39465 lt!1395351))))))

(declare-fun lt!1395347 () Unit!61159)

(assert (=> b!3977454 (= lt!1395347 (lemmaConcatTwoListThenFirstIsPrefix!2634 lt!1395341 (_2!24006 (v!39465 lt!1395351))))))

(declare-fun maxPrefixOneRule!2625 (LexerInterface!6293 Rule!13208 List!42632) Option!9118)

(declare-fun apply!9915 (TokenValueInjection!13296 BalanceConc!25424) TokenValue!6934)

(declare-fun seqFromList!4943 (List!42632) BalanceConc!25424)

(declare-fun size!31801 (List!42632) Int)

(assert (=> b!3977454 (= (maxPrefixOneRule!2625 thiss!21717 (rule!9704 (_1!24006 (v!39465 lt!1395351))) lt!1395356) (Some!9117 (tuple2!41745 (Token!12547 (apply!9915 (transformation!6704 (rule!9704 (_1!24006 (v!39465 lt!1395351)))) (seqFromList!4943 lt!1395341)) (rule!9704 (_1!24006 (v!39465 lt!1395351))) (size!31801 lt!1395341) lt!1395341) (_2!24006 (v!39465 lt!1395351)))))))

(declare-fun lt!1395363 () Unit!61159)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1447 (LexerInterface!6293 List!42634 List!42632 List!42632 List!42632 Rule!13208) Unit!61159)

(assert (=> b!3977454 (= lt!1395363 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1447 thiss!21717 rules!2999 lt!1395341 lt!1395356 (_2!24006 (v!39465 lt!1395351)) (rule!9704 (_1!24006 (v!39465 lt!1395351)))))))

(declare-fun list!15776 (BalanceConc!25424) List!42632)

(declare-fun charsOf!4520 (Token!12546) BalanceConc!25424)

(assert (=> b!3977454 (= lt!1395341 (list!15776 (charsOf!4520 (_1!24006 (v!39465 lt!1395351)))))))

(declare-fun lt!1395353 () Unit!61159)

(declare-fun lemmaInv!919 (TokenValueInjection!13296) Unit!61159)

(assert (=> b!3977454 (= lt!1395353 (lemmaInv!919 (transformation!6704 (rule!9704 (_1!24006 (v!39465 lt!1395351))))))))

(declare-fun ruleValid!2636 (LexerInterface!6293 Rule!13208) Bool)

(assert (=> b!3977454 (ruleValid!2636 thiss!21717 (rule!9704 (_1!24006 (v!39465 lt!1395351))))))

(declare-fun lt!1395329 () Unit!61159)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1710 (LexerInterface!6293 Rule!13208 List!42634) Unit!61159)

(assert (=> b!3977454 (= lt!1395329 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1710 thiss!21717 (rule!9704 (_1!24006 (v!39465 lt!1395351))) rules!2999))))

(declare-fun lt!1395359 () Unit!61159)

(declare-fun lemmaCharactersSize!1299 (Token!12546) Unit!61159)

(assert (=> b!3977454 (= lt!1395359 (lemmaCharactersSize!1299 token!484))))

(declare-fun lt!1395346 () Unit!61159)

(assert (=> b!3977454 (= lt!1395346 (lemmaCharactersSize!1299 (_1!24006 (v!39465 lt!1395351))))))

(declare-fun b!3977455 () Bool)

(declare-fun tp_is_empty!20189 () Bool)

(declare-fun tp!1212728 () Bool)

(assert (=> b!3977455 (= e!2464561 (and tp_is_empty!20189 tp!1212728))))

(declare-fun b!3977456 () Bool)

(assert (=> b!3977456 (= e!2464570 e!2464571)))

(declare-fun res!1611181 () Bool)

(assert (=> b!3977456 (=> (not res!1611181) (not e!2464571))))

(declare-fun lt!1395362 () Int)

(declare-fun lt!1395358 () Int)

(assert (=> b!3977456 (= res!1611181 (>= lt!1395362 lt!1395358))))

(assert (=> b!3977456 (= lt!1395358 (size!31801 lt!1395340))))

(assert (=> b!3977456 (= lt!1395362 (size!31801 prefix!494))))

(assert (=> b!3977456 (= lt!1395340 (list!15776 (charsOf!4520 token!484)))))

(declare-fun b!3977457 () Bool)

(declare-fun e!2464566 () Bool)

(declare-fun e!2464553 () Bool)

(assert (=> b!3977457 (= e!2464566 e!2464553)))

(declare-fun res!1611169 () Bool)

(assert (=> b!3977457 (=> res!1611169 e!2464553)))

(declare-fun lt!1395345 () List!42632)

(assert (=> b!3977457 (= res!1611169 (not (= lt!1395345 lt!1395334)))))

(declare-fun lt!1395355 () List!42632)

(assert (=> b!3977457 (= lt!1395345 (++!11106 lt!1395340 lt!1395355))))

(assert (=> b!3977457 (= lt!1395355 (getSuffix!2222 lt!1395334 lt!1395340))))

(declare-fun e!2464559 () Bool)

(assert (=> b!3977457 e!2464559))

(declare-fun res!1611171 () Bool)

(assert (=> b!3977457 (=> (not res!1611171) (not e!2464559))))

(assert (=> b!3977457 (= res!1611171 (isPrefix!3791 lt!1395334 lt!1395334))))

(declare-fun lt!1395343 () Unit!61159)

(declare-fun lemmaIsPrefixRefl!2383 (List!42632 List!42632) Unit!61159)

(assert (=> b!3977457 (= lt!1395343 (lemmaIsPrefixRefl!2383 lt!1395334 lt!1395334))))

(declare-fun b!3977458 () Bool)

(declare-fun tp!1212733 () Bool)

(assert (=> b!3977458 (= e!2464558 (and tp_is_empty!20189 tp!1212733))))

(declare-fun b!3977459 () Bool)

(assert (=> b!3977459 (= e!2464559 (and (= (size!31800 token!484) lt!1395358) (= (originalCharacters!7304 token!484) lt!1395340)))))

(declare-fun b!3977460 () Bool)

(declare-fun e!2464564 () Bool)

(declare-fun e!2464562 () Bool)

(assert (=> b!3977460 (= e!2464564 (not e!2464562))))

(declare-fun res!1611173 () Bool)

(assert (=> b!3977460 (=> res!1611173 e!2464562)))

(declare-fun lt!1395354 () List!42632)

(assert (=> b!3977460 (= res!1611173 (not (= lt!1395354 lt!1395334)))))

(declare-fun suffixResult!105 () List!42632)

(assert (=> b!3977460 (= lt!1395354 (++!11106 lt!1395340 suffixResult!105))))

(declare-fun lt!1395352 () Unit!61159)

(assert (=> b!3977460 (= lt!1395352 (lemmaInv!919 (transformation!6704 (rule!9704 token!484))))))

(assert (=> b!3977460 (ruleValid!2636 thiss!21717 (rule!9704 token!484))))

(declare-fun lt!1395348 () Unit!61159)

(assert (=> b!3977460 (= lt!1395348 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1710 thiss!21717 (rule!9704 token!484) rules!2999))))

(declare-fun b!3977461 () Bool)

(declare-fun e!2464555 () Bool)

(assert (=> b!3977461 (= e!2464555 e!2464566)))

(declare-fun res!1611166 () Bool)

(assert (=> b!3977461 (=> res!1611166 e!2464566)))

(declare-fun matchR!5586 (Regex!11609 List!42632) Bool)

(assert (=> b!3977461 (= res!1611166 (not (matchR!5586 (regex!6704 (rule!9704 token!484)) lt!1395340)))))

(assert (=> b!3977461 (isPrefix!3791 lt!1395340 lt!1395356)))

(declare-fun lt!1395369 () Unit!61159)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!624 (List!42632 List!42632 List!42632) Unit!61159)

(assert (=> b!3977461 (= lt!1395369 (lemmaPrefixStaysPrefixWhenAddingToSuffix!624 lt!1395340 prefix!494 newSuffix!27))))

(declare-fun lt!1395365 () Unit!61159)

(assert (=> b!3977461 (= lt!1395365 (lemmaPrefixStaysPrefixWhenAddingToSuffix!624 lt!1395340 prefix!494 suffix!1299))))

(declare-fun b!3977462 () Bool)

(declare-fun tp!1212730 () Bool)

(declare-fun e!2464578 () Bool)

(declare-fun inv!56788 (String!48388) Bool)

(declare-fun inv!56792 (TokenValueInjection!13296) Bool)

(assert (=> b!3977462 (= e!2464578 (and tp!1212730 (inv!56788 (tag!7564 (h!47930 rules!2999))) (inv!56792 (transformation!6704 (h!47930 rules!2999))) e!2464575))))

(declare-fun e!2464556 () Bool)

(assert (=> b!3977463 (= e!2464556 (and tp!1212727 tp!1212725))))

(declare-fun b!3977464 () Bool)

(declare-fun res!1611178 () Bool)

(assert (=> b!3977464 (=> (not res!1611178) (not e!2464559))))

(assert (=> b!3977464 (= res!1611178 (= (size!31800 token!484) (size!31801 (originalCharacters!7304 token!484))))))

(declare-fun b!3977465 () Bool)

(declare-fun res!1611164 () Bool)

(assert (=> b!3977465 (=> (not res!1611164) (not e!2464559))))

(declare-fun lt!1395350 () TokenValue!6934)

(assert (=> b!3977465 (= res!1611164 (= (value!211698 token!484) lt!1395350))))

(declare-fun b!3977466 () Bool)

(declare-fun e!2464569 () Bool)

(declare-fun tp!1212731 () Bool)

(assert (=> b!3977466 (= e!2464569 (and tp!1212731 (inv!56788 (tag!7564 (rule!9704 token!484))) (inv!56792 (transformation!6704 (rule!9704 token!484))) e!2464556))))

(declare-fun b!3977467 () Bool)

(declare-fun e!2464573 () Bool)

(assert (=> b!3977467 (= e!2464573 e!2464555)))

(declare-fun res!1611182 () Bool)

(assert (=> b!3977467 (=> res!1611182 e!2464555)))

(declare-fun lt!1395332 () Option!9118)

(declare-fun lt!1395339 () Option!9118)

(assert (=> b!3977467 (= res!1611182 (not (= lt!1395332 lt!1395339)))))

(declare-fun lt!1395361 () Token!12546)

(assert (=> b!3977467 (= lt!1395332 (Some!9117 (tuple2!41745 lt!1395361 suffixResult!105)))))

(assert (=> b!3977467 (= lt!1395332 (maxPrefixOneRule!2625 thiss!21717 (rule!9704 token!484) lt!1395334))))

(assert (=> b!3977467 (= lt!1395361 (Token!12547 lt!1395350 (rule!9704 token!484) lt!1395358 lt!1395340))))

(assert (=> b!3977467 (= lt!1395350 (apply!9915 (transformation!6704 (rule!9704 token!484)) (seqFromList!4943 lt!1395340)))))

(declare-fun lt!1395366 () Unit!61159)

(assert (=> b!3977467 (= lt!1395366 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1447 thiss!21717 rules!2999 lt!1395340 lt!1395334 suffixResult!105 (rule!9704 token!484)))))

(declare-fun lt!1395337 () List!42632)

(assert (=> b!3977467 (= lt!1395337 suffixResult!105)))

(declare-fun lt!1395360 () Unit!61159)

(declare-fun lemmaSamePrefixThenSameSuffix!1978 (List!42632 List!42632 List!42632 List!42632 List!42632) Unit!61159)

(assert (=> b!3977467 (= lt!1395360 (lemmaSamePrefixThenSameSuffix!1978 lt!1395340 lt!1395337 lt!1395340 suffixResult!105 lt!1395334))))

(declare-fun lt!1395336 () List!42632)

(assert (=> b!3977467 (isPrefix!3791 lt!1395340 lt!1395336)))

(declare-fun lt!1395357 () Unit!61159)

(assert (=> b!3977467 (= lt!1395357 (lemmaConcatTwoListThenFirstIsPrefix!2634 lt!1395340 lt!1395337))))

(declare-fun b!3977468 () Bool)

(declare-fun tp!1212726 () Bool)

(assert (=> b!3977468 (= e!2464574 (and tp_is_empty!20189 tp!1212726))))

(declare-fun b!3977469 () Bool)

(assert (=> b!3977469 (= e!2464568 e!2464564)))

(declare-fun res!1611168 () Bool)

(assert (=> b!3977469 (=> (not res!1611168) (not e!2464564))))

(declare-fun maxPrefix!3591 (LexerInterface!6293 List!42634 List!42632) Option!9118)

(assert (=> b!3977469 (= res!1611168 (= (maxPrefix!3591 thiss!21717 rules!2999 lt!1395334) lt!1395339))))

(declare-fun lt!1395364 () tuple2!41744)

(assert (=> b!3977469 (= lt!1395339 (Some!9117 lt!1395364))))

(assert (=> b!3977469 (= lt!1395364 (tuple2!41745 token!484 suffixResult!105))))

(assert (=> b!3977469 (= lt!1395334 (++!11106 prefix!494 suffix!1299))))

(declare-fun b!3977470 () Bool)

(declare-fun tp!1212735 () Bool)

(assert (=> b!3977470 (= e!2464560 (and e!2464578 tp!1212735))))

(declare-fun b!3977471 () Bool)

(declare-fun tp!1212732 () Bool)

(assert (=> b!3977471 (= e!2464557 (and tp_is_empty!20189 tp!1212732))))

(declare-fun b!3977472 () Bool)

(declare-fun res!1611177 () Bool)

(assert (=> b!3977472 (=> (not res!1611177) (not e!2464570))))

(declare-fun rulesInvariant!5636 (LexerInterface!6293 List!42634) Bool)

(assert (=> b!3977472 (= res!1611177 (rulesInvariant!5636 thiss!21717 rules!2999))))

(declare-fun b!3977473 () Bool)

(declare-fun res!1611167 () Bool)

(assert (=> b!3977473 (=> (not res!1611167) (not e!2464570))))

(assert (=> b!3977473 (= res!1611167 (>= (size!31801 suffix!1299) (size!31801 newSuffix!27)))))

(declare-fun b!3977474 () Bool)

(assert (=> b!3977474 (= e!2464553 e!2464572)))

(declare-fun res!1611176 () Bool)

(assert (=> b!3977474 (=> res!1611176 e!2464572)))

(assert (=> b!3977474 (= res!1611176 (not ((_ is Some!9117) lt!1395351)))))

(assert (=> b!3977474 (= lt!1395351 (maxPrefix!3591 thiss!21717 rules!2999 lt!1395356))))

(assert (=> b!3977474 (and (= suffixResult!105 lt!1395355) (= lt!1395364 (tuple2!41745 lt!1395361 lt!1395355)))))

(declare-fun lt!1395344 () Unit!61159)

(assert (=> b!3977474 (= lt!1395344 (lemmaSamePrefixThenSameSuffix!1978 lt!1395340 suffixResult!105 lt!1395340 lt!1395355 lt!1395334))))

(assert (=> b!3977474 (isPrefix!3791 lt!1395340 lt!1395345)))

(declare-fun lt!1395328 () Unit!61159)

(assert (=> b!3977474 (= lt!1395328 (lemmaConcatTwoListThenFirstIsPrefix!2634 lt!1395340 lt!1395355))))

(declare-fun b!3977475 () Bool)

(declare-fun tp!1212729 () Bool)

(declare-fun inv!21 (TokenValue!6934) Bool)

(assert (=> b!3977475 (= e!2464552 (and (inv!21 (value!211698 token!484)) e!2464569 tp!1212729))))

(declare-fun b!3977476 () Bool)

(assert (=> b!3977476 (= e!2464562 e!2464563)))

(declare-fun res!1611165 () Bool)

(assert (=> b!3977476 (=> res!1611165 e!2464563)))

(assert (=> b!3977476 (= res!1611165 (not (isPrefix!3791 lt!1395340 lt!1395334)))))

(assert (=> b!3977476 (isPrefix!3791 prefix!494 lt!1395334)))

(declare-fun lt!1395338 () Unit!61159)

(assert (=> b!3977476 (= lt!1395338 (lemmaConcatTwoListThenFirstIsPrefix!2634 prefix!494 suffix!1299))))

(assert (=> b!3977476 (isPrefix!3791 lt!1395340 lt!1395354)))

(declare-fun lt!1395335 () Unit!61159)

(assert (=> b!3977476 (= lt!1395335 (lemmaConcatTwoListThenFirstIsPrefix!2634 lt!1395340 suffixResult!105))))

(declare-fun b!3977477 () Bool)

(assert (=> b!3977477 (= e!2464577 e!2464573)))

(declare-fun res!1611174 () Bool)

(assert (=> b!3977477 (=> res!1611174 e!2464573)))

(declare-fun lt!1395367 () List!42632)

(assert (=> b!3977477 (= res!1611174 (or (not (= lt!1395334 lt!1395367)) (not (= lt!1395334 lt!1395336))))))

(assert (=> b!3977477 (= lt!1395367 lt!1395336)))

(assert (=> b!3977477 (= lt!1395336 (++!11106 lt!1395340 lt!1395337))))

(assert (=> b!3977477 (= lt!1395367 (++!11106 lt!1395333 suffix!1299))))

(assert (=> b!3977477 (= lt!1395337 (++!11106 lt!1395331 suffix!1299))))

(declare-fun lt!1395368 () Unit!61159)

(declare-fun lemmaConcatAssociativity!2426 (List!42632 List!42632 List!42632) Unit!61159)

(assert (=> b!3977477 (= lt!1395368 (lemmaConcatAssociativity!2426 lt!1395340 lt!1395331 suffix!1299))))

(declare-fun b!3977478 () Bool)

(declare-fun tp!1212724 () Bool)

(assert (=> b!3977478 (= e!2464576 (and tp_is_empty!20189 tp!1212724))))

(assert (= (and start!374356 res!1611179) b!3977450))

(assert (= (and b!3977450 res!1611175) b!3977472))

(assert (= (and b!3977472 res!1611177) b!3977473))

(assert (= (and b!3977473 res!1611167) b!3977451))

(assert (= (and b!3977451 res!1611172) b!3977456))

(assert (= (and b!3977456 res!1611181) b!3977453))

(assert (= (and b!3977453 res!1611170) b!3977469))

(assert (= (and b!3977469 res!1611168) b!3977460))

(assert (= (and b!3977460 (not res!1611173)) b!3977476))

(assert (= (and b!3977476 (not res!1611165)) b!3977452))

(assert (= (and b!3977452 (not res!1611180)) b!3977477))

(assert (= (and b!3977477 (not res!1611174)) b!3977467))

(assert (= (and b!3977467 (not res!1611182)) b!3977461))

(assert (= (and b!3977461 (not res!1611166)) b!3977457))

(assert (= (and b!3977457 res!1611171) b!3977465))

(assert (= (and b!3977465 res!1611164) b!3977464))

(assert (= (and b!3977464 res!1611178) b!3977459))

(assert (= (and b!3977457 (not res!1611169)) b!3977474))

(assert (= (and b!3977474 (not res!1611176)) b!3977454))

(assert (= (and start!374356 ((_ is Cons!42508) prefix!494)) b!3977458))

(assert (= b!3977466 b!3977463))

(assert (= b!3977475 b!3977466))

(assert (= start!374356 b!3977475))

(assert (= (and start!374356 ((_ is Cons!42508) suffixResult!105)) b!3977478))

(assert (= (and start!374356 ((_ is Cons!42508) suffix!1299)) b!3977455))

(assert (= (and start!374356 ((_ is Cons!42508) newSuffix!27)) b!3977468))

(assert (= b!3977462 b!3977449))

(assert (= b!3977470 b!3977462))

(assert (= (and start!374356 ((_ is Cons!42510) rules!2999)) b!3977470))

(assert (= (and start!374356 ((_ is Cons!42508) newSuffixResult!27)) b!3977471))

(declare-fun m!4548945 () Bool)

(assert (=> b!3977474 m!4548945))

(declare-fun m!4548947 () Bool)

(assert (=> b!3977474 m!4548947))

(declare-fun m!4548949 () Bool)

(assert (=> b!3977474 m!4548949))

(declare-fun m!4548951 () Bool)

(assert (=> b!3977474 m!4548951))

(declare-fun m!4548953 () Bool)

(assert (=> b!3977453 m!4548953))

(declare-fun m!4548955 () Bool)

(assert (=> b!3977453 m!4548955))

(declare-fun m!4548957 () Bool)

(assert (=> b!3977469 m!4548957))

(declare-fun m!4548959 () Bool)

(assert (=> b!3977469 m!4548959))

(declare-fun m!4548961 () Bool)

(assert (=> b!3977467 m!4548961))

(declare-fun m!4548963 () Bool)

(assert (=> b!3977467 m!4548963))

(declare-fun m!4548965 () Bool)

(assert (=> b!3977467 m!4548965))

(declare-fun m!4548967 () Bool)

(assert (=> b!3977467 m!4548967))

(declare-fun m!4548969 () Bool)

(assert (=> b!3977467 m!4548969))

(declare-fun m!4548971 () Bool)

(assert (=> b!3977467 m!4548971))

(declare-fun m!4548973 () Bool)

(assert (=> b!3977467 m!4548973))

(assert (=> b!3977467 m!4548965))

(declare-fun m!4548975 () Bool)

(assert (=> start!374356 m!4548975))

(declare-fun m!4548977 () Bool)

(assert (=> b!3977462 m!4548977))

(declare-fun m!4548979 () Bool)

(assert (=> b!3977462 m!4548979))

(declare-fun m!4548981 () Bool)

(assert (=> b!3977454 m!4548981))

(declare-fun m!4548983 () Bool)

(assert (=> b!3977454 m!4548983))

(declare-fun m!4548985 () Bool)

(assert (=> b!3977454 m!4548985))

(declare-fun m!4548987 () Bool)

(assert (=> b!3977454 m!4548987))

(declare-fun m!4548989 () Bool)

(assert (=> b!3977454 m!4548989))

(declare-fun m!4548991 () Bool)

(assert (=> b!3977454 m!4548991))

(declare-fun m!4548993 () Bool)

(assert (=> b!3977454 m!4548993))

(declare-fun m!4548995 () Bool)

(assert (=> b!3977454 m!4548995))

(declare-fun m!4548997 () Bool)

(assert (=> b!3977454 m!4548997))

(declare-fun m!4548999 () Bool)

(assert (=> b!3977454 m!4548999))

(assert (=> b!3977454 m!4548991))

(declare-fun m!4549001 () Bool)

(assert (=> b!3977454 m!4549001))

(assert (=> b!3977454 m!4548995))

(declare-fun m!4549003 () Bool)

(assert (=> b!3977454 m!4549003))

(declare-fun m!4549005 () Bool)

(assert (=> b!3977454 m!4549005))

(declare-fun m!4549007 () Bool)

(assert (=> b!3977454 m!4549007))

(declare-fun m!4549009 () Bool)

(assert (=> b!3977454 m!4549009))

(declare-fun m!4549011 () Bool)

(assert (=> b!3977454 m!4549011))

(assert (=> b!3977454 m!4548993))

(declare-fun m!4549013 () Bool)

(assert (=> b!3977454 m!4549013))

(assert (=> b!3977454 m!4549005))

(declare-fun m!4549015 () Bool)

(assert (=> b!3977454 m!4549015))

(declare-fun m!4549017 () Bool)

(assert (=> b!3977457 m!4549017))

(declare-fun m!4549019 () Bool)

(assert (=> b!3977457 m!4549019))

(declare-fun m!4549021 () Bool)

(assert (=> b!3977457 m!4549021))

(declare-fun m!4549023 () Bool)

(assert (=> b!3977457 m!4549023))

(declare-fun m!4549025 () Bool)

(assert (=> b!3977473 m!4549025))

(declare-fun m!4549027 () Bool)

(assert (=> b!3977473 m!4549027))

(declare-fun m!4549029 () Bool)

(assert (=> b!3977477 m!4549029))

(declare-fun m!4549031 () Bool)

(assert (=> b!3977477 m!4549031))

(declare-fun m!4549033 () Bool)

(assert (=> b!3977477 m!4549033))

(declare-fun m!4549035 () Bool)

(assert (=> b!3977477 m!4549035))

(declare-fun m!4549037 () Bool)

(assert (=> b!3977475 m!4549037))

(declare-fun m!4549039 () Bool)

(assert (=> b!3977466 m!4549039))

(declare-fun m!4549041 () Bool)

(assert (=> b!3977466 m!4549041))

(declare-fun m!4549043 () Bool)

(assert (=> b!3977464 m!4549043))

(declare-fun m!4549045 () Bool)

(assert (=> b!3977456 m!4549045))

(declare-fun m!4549047 () Bool)

(assert (=> b!3977456 m!4549047))

(declare-fun m!4549049 () Bool)

(assert (=> b!3977456 m!4549049))

(assert (=> b!3977456 m!4549049))

(declare-fun m!4549051 () Bool)

(assert (=> b!3977456 m!4549051))

(declare-fun m!4549053 () Bool)

(assert (=> b!3977472 m!4549053))

(declare-fun m!4549055 () Bool)

(assert (=> b!3977451 m!4549055))

(declare-fun m!4549057 () Bool)

(assert (=> b!3977460 m!4549057))

(declare-fun m!4549059 () Bool)

(assert (=> b!3977460 m!4549059))

(declare-fun m!4549061 () Bool)

(assert (=> b!3977460 m!4549061))

(declare-fun m!4549063 () Bool)

(assert (=> b!3977460 m!4549063))

(declare-fun m!4549065 () Bool)

(assert (=> b!3977476 m!4549065))

(declare-fun m!4549067 () Bool)

(assert (=> b!3977476 m!4549067))

(declare-fun m!4549069 () Bool)

(assert (=> b!3977476 m!4549069))

(declare-fun m!4549071 () Bool)

(assert (=> b!3977476 m!4549071))

(declare-fun m!4549073 () Bool)

(assert (=> b!3977476 m!4549073))

(declare-fun m!4549075 () Bool)

(assert (=> b!3977461 m!4549075))

(declare-fun m!4549077 () Bool)

(assert (=> b!3977461 m!4549077))

(declare-fun m!4549079 () Bool)

(assert (=> b!3977461 m!4549079))

(declare-fun m!4549081 () Bool)

(assert (=> b!3977461 m!4549081))

(declare-fun m!4549083 () Bool)

(assert (=> b!3977450 m!4549083))

(declare-fun m!4549085 () Bool)

(assert (=> b!3977452 m!4549085))

(declare-fun m!4549087 () Bool)

(assert (=> b!3977452 m!4549087))

(declare-fun m!4549089 () Bool)

(assert (=> b!3977452 m!4549089))

(declare-fun m!4549091 () Bool)

(assert (=> b!3977452 m!4549091))

(check-sat (not b_next!111059) (not b!3977477) b_and!305743 (not b!3977478) (not b!3977456) (not b_next!111057) tp_is_empty!20189 (not b!3977451) (not b!3977467) (not b_next!111061) (not b!3977455) (not b!3977453) (not b!3977457) (not b!3977476) (not b!3977475) (not b!3977470) (not b!3977461) (not b!3977473) (not b!3977462) (not b!3977474) b_and!305745 (not b!3977469) (not b!3977471) (not b!3977468) b_and!305749 (not b!3977458) (not b!3977472) b_and!305747 (not b!3977464) (not b!3977450) (not b!3977460) (not b!3977466) (not start!374356) (not b!3977452) (not b_next!111063) (not b!3977454))
(check-sat (not b_next!111059) b_and!305743 b_and!305745 (not b_next!111057) b_and!305749 b_and!305747 (not b_next!111061) (not b_next!111063))
