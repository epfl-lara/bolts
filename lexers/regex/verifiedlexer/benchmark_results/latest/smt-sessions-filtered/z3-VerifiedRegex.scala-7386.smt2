; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392634 () Bool)

(assert start!392634)

(declare-fun b!4134725 () Bool)

(declare-fun b_free!117475 () Bool)

(declare-fun b_next!118179 () Bool)

(assert (=> b!4134725 (= b_free!117475 (not b_next!118179))))

(declare-fun tp!1260370 () Bool)

(declare-fun b_and!320709 () Bool)

(assert (=> b!4134725 (= tp!1260370 b_and!320709)))

(declare-fun b_free!117477 () Bool)

(declare-fun b_next!118181 () Bool)

(assert (=> b!4134725 (= b_free!117477 (not b_next!118181))))

(declare-fun tp!1260361 () Bool)

(declare-fun b_and!320711 () Bool)

(assert (=> b!4134725 (= tp!1260361 b_and!320711)))

(declare-fun b!4134722 () Bool)

(declare-fun b_free!117479 () Bool)

(declare-fun b_next!118183 () Bool)

(assert (=> b!4134722 (= b_free!117479 (not b_next!118183))))

(declare-fun tp!1260368 () Bool)

(declare-fun b_and!320713 () Bool)

(assert (=> b!4134722 (= tp!1260368 b_and!320713)))

(declare-fun b_free!117481 () Bool)

(declare-fun b_next!118185 () Bool)

(assert (=> b!4134722 (= b_free!117481 (not b_next!118185))))

(declare-fun tp!1260364 () Bool)

(declare-fun b_and!320715 () Bool)

(assert (=> b!4134722 (= tp!1260364 b_and!320715)))

(declare-fun b!4134741 () Bool)

(declare-fun b_free!117483 () Bool)

(declare-fun b_next!118187 () Bool)

(assert (=> b!4134741 (= b_free!117483 (not b_next!118187))))

(declare-fun tp!1260367 () Bool)

(declare-fun b_and!320717 () Bool)

(assert (=> b!4134741 (= tp!1260367 b_and!320717)))

(declare-fun b_free!117485 () Bool)

(declare-fun b_next!118189 () Bool)

(assert (=> b!4134741 (= b_free!117485 (not b_next!118189))))

(declare-fun tp!1260371 () Bool)

(declare-fun b_and!320719 () Bool)

(assert (=> b!4134741 (= tp!1260371 b_and!320719)))

(declare-fun e!2565448 () Bool)

(assert (=> b!4134722 (= e!2565448 (and tp!1260368 tp!1260364))))

(declare-datatypes ((List!44922 0))(
  ( (Nil!44798) (Cons!44798 (h!50218 (_ BitVec 16)) (t!341847 List!44922)) )
))
(declare-datatypes ((TokenValue!7574 0))(
  ( (FloatLiteralValue!15148 (text!53463 List!44922)) (TokenValueExt!7573 (__x!27365 Int)) (Broken!37870 (value!229832 List!44922)) (Object!7697) (End!7574) (Def!7574) (Underscore!7574) (Match!7574) (Else!7574) (Error!7574) (Case!7574) (If!7574) (Extends!7574) (Abstract!7574) (Class!7574) (Val!7574) (DelimiterValue!15148 (del!7634 List!44922)) (KeywordValue!7580 (value!229833 List!44922)) (CommentValue!15148 (value!229834 List!44922)) (WhitespaceValue!15148 (value!229835 List!44922)) (IndentationValue!7574 (value!229836 List!44922)) (String!51619) (Int32!7574) (Broken!37871 (value!229837 List!44922)) (Boolean!7575) (Unit!64114) (OperatorValue!7577 (op!7634 List!44922)) (IdentifierValue!15148 (value!229838 List!44922)) (IdentifierValue!15149 (value!229839 List!44922)) (WhitespaceValue!15149 (value!229840 List!44922)) (True!15148) (False!15148) (Broken!37872 (value!229841 List!44922)) (Broken!37873 (value!229842 List!44922)) (True!15149) (RightBrace!7574) (RightBracket!7574) (Colon!7574) (Null!7574) (Comma!7574) (LeftBracket!7574) (False!15149) (LeftBrace!7574) (ImaginaryLiteralValue!7574 (text!53464 List!44922)) (StringLiteralValue!22722 (value!229843 List!44922)) (EOFValue!7574 (value!229844 List!44922)) (IdentValue!7574 (value!229845 List!44922)) (DelimiterValue!15149 (value!229846 List!44922)) (DedentValue!7574 (value!229847 List!44922)) (NewLineValue!7574 (value!229848 List!44922)) (IntegerValue!22722 (value!229849 (_ BitVec 32)) (text!53465 List!44922)) (IntegerValue!22723 (value!229850 Int) (text!53466 List!44922)) (Times!7574) (Or!7574) (Equal!7574) (Minus!7574) (Broken!37874 (value!229851 List!44922)) (And!7574) (Div!7574) (LessEqual!7574) (Mod!7574) (Concat!19823) (Not!7574) (Plus!7574) (SpaceValue!7574 (value!229852 List!44922)) (IntegerValue!22724 (value!229853 Int) (text!53467 List!44922)) (StringLiteralValue!22723 (text!53468 List!44922)) (FloatLiteralValue!15149 (text!53469 List!44922)) (BytesLiteralValue!7574 (value!229854 List!44922)) (CommentValue!15149 (value!229855 List!44922)) (StringLiteralValue!22724 (value!229856 List!44922)) (ErrorTokenValue!7574 (msg!7635 List!44922)) )
))
(declare-datatypes ((C!24684 0))(
  ( (C!24685 (val!14452 Int)) )
))
(declare-datatypes ((List!44923 0))(
  ( (Nil!44799) (Cons!44799 (h!50219 C!24684) (t!341848 List!44923)) )
))
(declare-datatypes ((IArray!27115 0))(
  ( (IArray!27116 (innerList!13615 List!44923)) )
))
(declare-datatypes ((Conc!13555 0))(
  ( (Node!13555 (left!33549 Conc!13555) (right!33879 Conc!13555) (csize!27340 Int) (cheight!13766 Int)) (Leaf!20942 (xs!16861 IArray!27115) (csize!27341 Int)) (Empty!13555) )
))
(declare-datatypes ((BalanceConc!26704 0))(
  ( (BalanceConc!26705 (c!709204 Conc!13555)) )
))
(declare-datatypes ((Regex!12249 0))(
  ( (ElementMatch!12249 (c!709205 C!24684)) (Concat!19824 (regOne!25010 Regex!12249) (regTwo!25010 Regex!12249)) (EmptyExpr!12249) (Star!12249 (reg!12578 Regex!12249)) (EmptyLang!12249) (Union!12249 (regOne!25011 Regex!12249) (regTwo!25011 Regex!12249)) )
))
(declare-datatypes ((String!51620 0))(
  ( (String!51621 (value!229857 String)) )
))
(declare-datatypes ((TokenValueInjection!14576 0))(
  ( (TokenValueInjection!14577 (toValue!10008 Int) (toChars!9867 Int)) )
))
(declare-datatypes ((Rule!14488 0))(
  ( (Rule!14489 (regex!7344 Regex!12249) (tag!8204 String!51620) (isSeparator!7344 Bool) (transformation!7344 TokenValueInjection!14576)) )
))
(declare-fun rBis!149 () Rule!14488)

(declare-fun e!2565449 () Bool)

(declare-fun e!2565442 () Bool)

(declare-fun tp!1260365 () Bool)

(declare-fun b!4134723 () Bool)

(declare-fun inv!59401 (String!51620) Bool)

(declare-fun inv!59404 (TokenValueInjection!14576) Bool)

(assert (=> b!4134723 (= e!2565449 (and tp!1260365 (inv!59401 (tag!8204 rBis!149)) (inv!59404 (transformation!7344 rBis!149)) e!2565442))))

(declare-fun b!4134724 () Bool)

(declare-fun res!1690637 () Bool)

(declare-fun e!2565454 () Bool)

(assert (=> b!4134724 (=> (not res!1690637) (not e!2565454))))

(declare-fun p!2912 () List!44923)

(declare-fun isEmpty!26685 (List!44923) Bool)

(assert (=> b!4134724 (= res!1690637 (not (isEmpty!26685 p!2912)))))

(assert (=> b!4134725 (= e!2565442 (and tp!1260370 tp!1260361))))

(declare-fun b!4134726 () Bool)

(declare-fun res!1690646 () Bool)

(assert (=> b!4134726 (=> (not res!1690646) (not e!2565454))))

(declare-datatypes ((LexerInterface!6933 0))(
  ( (LexerInterfaceExt!6930 (__x!27366 Int)) (Lexer!6931) )
))
(declare-fun thiss!25645 () LexerInterface!6933)

(declare-datatypes ((List!44924 0))(
  ( (Nil!44800) (Cons!44800 (h!50220 Rule!14488) (t!341849 List!44924)) )
))
(declare-fun rules!3756 () List!44924)

(declare-fun rulesInvariant!6230 (LexerInterface!6933 List!44924) Bool)

(assert (=> b!4134726 (= res!1690646 (rulesInvariant!6230 thiss!25645 rules!3756))))

(declare-fun tp!1260369 () Bool)

(declare-fun e!2565443 () Bool)

(declare-fun b!4134727 () Bool)

(declare-fun e!2565441 () Bool)

(assert (=> b!4134727 (= e!2565443 (and tp!1260369 (inv!59401 (tag!8204 (h!50220 rules!3756))) (inv!59404 (transformation!7344 (h!50220 rules!3756))) e!2565441))))

(declare-fun e!2565446 () Bool)

(declare-fun b!4134728 () Bool)

(declare-fun r!4008 () Rule!14488)

(declare-fun tp!1260363 () Bool)

(assert (=> b!4134728 (= e!2565446 (and tp!1260363 (inv!59401 (tag!8204 r!4008)) (inv!59404 (transformation!7344 r!4008)) e!2565448))))

(declare-fun b!4134729 () Bool)

(declare-fun res!1690636 () Bool)

(declare-fun e!2565455 () Bool)

(assert (=> b!4134729 (=> (not res!1690636) (not e!2565455))))

(declare-fun matchR!6078 (Regex!12249 List!44923) Bool)

(assert (=> b!4134729 (= res!1690636 (matchR!6078 (regex!7344 r!4008) p!2912))))

(declare-fun b!4134730 () Bool)

(declare-fun res!1690644 () Bool)

(assert (=> b!4134730 (=> (not res!1690644) (not e!2565454))))

(declare-fun input!3238 () List!44923)

(declare-fun isPrefix!4279 (List!44923 List!44923) Bool)

(assert (=> b!4134730 (= res!1690644 (isPrefix!4279 p!2912 input!3238))))

(declare-fun b!4134731 () Bool)

(declare-fun res!1690647 () Bool)

(assert (=> b!4134731 (=> (not res!1690647) (not e!2565455))))

(declare-fun getIndex!690 (List!44924 Rule!14488) Int)

(assert (=> b!4134731 (= res!1690647 (< (getIndex!690 rules!3756 rBis!149) (getIndex!690 rules!3756 r!4008)))))

(declare-fun b!4134732 () Bool)

(declare-fun res!1690634 () Bool)

(assert (=> b!4134732 (=> (not res!1690634) (not e!2565454))))

(declare-fun contains!9024 (List!44924 Rule!14488) Bool)

(assert (=> b!4134732 (= res!1690634 (contains!9024 rules!3756 r!4008))))

(declare-fun b!4134733 () Bool)

(declare-fun res!1690641 () Bool)

(declare-fun e!2565456 () Bool)

(assert (=> b!4134733 (=> res!1690641 e!2565456)))

(declare-datatypes ((Token!13618 0))(
  ( (Token!13619 (value!229858 TokenValue!7574) (rule!10438 Rule!14488) (size!33156 Int) (originalCharacters!7840 List!44923)) )
))
(declare-datatypes ((tuple2!43198 0))(
  ( (tuple2!43199 (_1!24733 Token!13618) (_2!24733 List!44923)) )
))
(declare-datatypes ((Option!9650 0))(
  ( (None!9649) (Some!9649 (v!40271 tuple2!43198)) )
))
(declare-fun lt!1474149 () Option!9650)

(declare-fun lt!1474148 () Int)

(declare-fun size!33157 (BalanceConc!26704) Int)

(declare-fun charsOf!4943 (Token!13618) BalanceConc!26704)

(declare-fun get!14611 (Option!9650) tuple2!43198)

(assert (=> b!4134733 (= res!1690641 (<= (size!33157 (charsOf!4943 (_1!24733 (get!14611 lt!1474149)))) lt!1474148))))

(declare-fun b!4134734 () Bool)

(declare-fun res!1690642 () Bool)

(assert (=> b!4134734 (=> (not res!1690642) (not e!2565455))))

(declare-fun ruleValid!3150 (LexerInterface!6933 Rule!14488) Bool)

(assert (=> b!4134734 (= res!1690642 (ruleValid!3150 thiss!25645 r!4008))))

(declare-fun res!1690645 () Bool)

(assert (=> start!392634 (=> (not res!1690645) (not e!2565454))))

(get-info :version)

(assert (=> start!392634 (= res!1690645 ((_ is Lexer!6931) thiss!25645))))

(assert (=> start!392634 e!2565454))

(declare-fun e!2565447 () Bool)

(assert (=> start!392634 e!2565447))

(declare-fun e!2565445 () Bool)

(assert (=> start!392634 e!2565445))

(assert (=> start!392634 true))

(assert (=> start!392634 e!2565446))

(declare-fun e!2565453 () Bool)

(assert (=> start!392634 e!2565453))

(assert (=> start!392634 e!2565449))

(declare-fun b!4134735 () Bool)

(declare-fun res!1690635 () Bool)

(assert (=> b!4134735 (=> (not res!1690635) (not e!2565454))))

(declare-fun isEmpty!26686 (List!44924) Bool)

(assert (=> b!4134735 (= res!1690635 (not (isEmpty!26686 rules!3756)))))

(declare-fun b!4134736 () Bool)

(declare-fun tp!1260372 () Bool)

(assert (=> b!4134736 (= e!2565447 (and e!2565443 tp!1260372))))

(declare-fun b!4134737 () Bool)

(declare-fun res!1690640 () Bool)

(assert (=> b!4134737 (=> (not res!1690640) (not e!2565454))))

(assert (=> b!4134737 (= res!1690640 (contains!9024 rules!3756 rBis!149))))

(declare-fun b!4134738 () Bool)

(declare-fun tp_is_empty!21421 () Bool)

(declare-fun tp!1260362 () Bool)

(assert (=> b!4134738 (= e!2565453 (and tp_is_empty!21421 tp!1260362))))

(declare-fun b!4134739 () Bool)

(assert (=> b!4134739 (= e!2565454 e!2565455)))

(declare-fun res!1690643 () Bool)

(assert (=> b!4134739 (=> (not res!1690643) (not e!2565455))))

(declare-fun lt!1474147 () Token!13618)

(declare-fun maxPrefix!4123 (LexerInterface!6933 List!44924 List!44923) Option!9650)

(declare-fun getSuffix!2606 (List!44923 List!44923) List!44923)

(assert (=> b!4134739 (= res!1690643 (= (maxPrefix!4123 thiss!25645 rules!3756 input!3238) (Some!9649 (tuple2!43199 lt!1474147 (getSuffix!2606 input!3238 p!2912)))))))

(declare-fun lt!1474152 () TokenValue!7574)

(assert (=> b!4134739 (= lt!1474147 (Token!13619 lt!1474152 r!4008 lt!1474148 p!2912))))

(declare-fun size!33158 (List!44923) Int)

(assert (=> b!4134739 (= lt!1474148 (size!33158 p!2912))))

(declare-fun lt!1474143 () BalanceConc!26704)

(declare-fun apply!10417 (TokenValueInjection!14576 BalanceConc!26704) TokenValue!7574)

(assert (=> b!4134739 (= lt!1474152 (apply!10417 (transformation!7344 r!4008) lt!1474143))))

(declare-datatypes ((Unit!64115 0))(
  ( (Unit!64116) )
))
(declare-fun lt!1474146 () Unit!64115)

(declare-fun lemmaSemiInverse!2202 (TokenValueInjection!14576 BalanceConc!26704) Unit!64115)

(assert (=> b!4134739 (= lt!1474146 (lemmaSemiInverse!2202 (transformation!7344 r!4008) lt!1474143))))

(declare-fun seqFromList!5461 (List!44923) BalanceConc!26704)

(assert (=> b!4134739 (= lt!1474143 (seqFromList!5461 p!2912))))

(declare-fun b!4134740 () Bool)

(declare-fun e!2565452 () Bool)

(assert (=> b!4134740 (= e!2565455 (not e!2565452))))

(declare-fun res!1690639 () Bool)

(assert (=> b!4134740 (=> res!1690639 e!2565452)))

(assert (=> b!4134740 (= res!1690639 (or (not ((_ is Cons!44800) rules!3756)) (not (= (h!50220 rules!3756) rBis!149))))))

(declare-fun lt!1474144 () Unit!64115)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2190 (LexerInterface!6933 Rule!14488 List!44924) Unit!64115)

(assert (=> b!4134740 (= lt!1474144 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2190 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4134740 (ruleValid!3150 thiss!25645 rBis!149)))

(declare-fun lt!1474150 () Unit!64115)

(assert (=> b!4134740 (= lt!1474150 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2190 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4134741 (= e!2565441 (and tp!1260367 tp!1260371))))

(declare-fun b!4134742 () Bool)

(declare-fun tp!1260366 () Bool)

(assert (=> b!4134742 (= e!2565445 (and tp_is_empty!21421 tp!1260366))))

(declare-fun b!4134743 () Bool)

(declare-fun inv!59405 (Token!13618) Bool)

(assert (=> b!4134743 (= e!2565456 (inv!59405 lt!1474147))))

(declare-fun b!4134744 () Bool)

(assert (=> b!4134744 (= e!2565452 e!2565456)))

(declare-fun res!1690638 () Bool)

(assert (=> b!4134744 (=> res!1690638 e!2565456)))

(declare-fun isEmpty!26687 (Option!9650) Bool)

(assert (=> b!4134744 (= res!1690638 (isEmpty!26687 lt!1474149))))

(declare-fun maxPrefixOneRule!3062 (LexerInterface!6933 Rule!14488 List!44923) Option!9650)

(assert (=> b!4134744 (= lt!1474149 (maxPrefixOneRule!3062 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4134744 (not (= rBis!149 r!4008))))

(declare-fun lt!1474151 () Unit!64115)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!42 (LexerInterface!6933 List!44924 Rule!14488 Rule!14488) Unit!64115)

(assert (=> b!4134744 (= lt!1474151 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!42 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6499 (List!44924) List!44924)

(assert (=> b!4134744 (contains!9024 (tail!6499 rules!3756) r!4008)))

(declare-fun lt!1474145 () Unit!64115)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!48 (List!44924 Rule!14488 Rule!14488) Unit!64115)

(assert (=> b!4134744 (= lt!1474145 (lemmaGetIndexBiggerAndHeadEqThenTailContains!48 rules!3756 rBis!149 r!4008))))

(assert (= (and start!392634 res!1690645) b!4134730))

(assert (= (and b!4134730 res!1690644) b!4134735))

(assert (= (and b!4134735 res!1690635) b!4134726))

(assert (= (and b!4134726 res!1690646) b!4134732))

(assert (= (and b!4134732 res!1690634) b!4134737))

(assert (= (and b!4134737 res!1690640) b!4134724))

(assert (= (and b!4134724 res!1690637) b!4134739))

(assert (= (and b!4134739 res!1690643) b!4134729))

(assert (= (and b!4134729 res!1690636) b!4134731))

(assert (= (and b!4134731 res!1690647) b!4134734))

(assert (= (and b!4134734 res!1690642) b!4134740))

(assert (= (and b!4134740 (not res!1690639)) b!4134744))

(assert (= (and b!4134744 (not res!1690638)) b!4134733))

(assert (= (and b!4134733 (not res!1690641)) b!4134743))

(assert (= b!4134727 b!4134741))

(assert (= b!4134736 b!4134727))

(assert (= (and start!392634 ((_ is Cons!44800) rules!3756)) b!4134736))

(assert (= (and start!392634 ((_ is Cons!44799) p!2912)) b!4134742))

(assert (= b!4134728 b!4134722))

(assert (= start!392634 b!4134728))

(assert (= (and start!392634 ((_ is Cons!44799) input!3238)) b!4134738))

(assert (= b!4134723 b!4134725))

(assert (= start!392634 b!4134723))

(declare-fun m!4731411 () Bool)

(assert (=> b!4134737 m!4731411))

(declare-fun m!4731413 () Bool)

(assert (=> b!4134733 m!4731413))

(declare-fun m!4731415 () Bool)

(assert (=> b!4134733 m!4731415))

(assert (=> b!4134733 m!4731415))

(declare-fun m!4731417 () Bool)

(assert (=> b!4134733 m!4731417))

(declare-fun m!4731419 () Bool)

(assert (=> b!4134724 m!4731419))

(declare-fun m!4731421 () Bool)

(assert (=> b!4134730 m!4731421))

(declare-fun m!4731423 () Bool)

(assert (=> b!4134734 m!4731423))

(declare-fun m!4731425 () Bool)

(assert (=> b!4134723 m!4731425))

(declare-fun m!4731427 () Bool)

(assert (=> b!4134723 m!4731427))

(declare-fun m!4731429 () Bool)

(assert (=> b!4134735 m!4731429))

(declare-fun m!4731431 () Bool)

(assert (=> b!4134729 m!4731431))

(declare-fun m!4731433 () Bool)

(assert (=> b!4134732 m!4731433))

(declare-fun m!4731435 () Bool)

(assert (=> b!4134743 m!4731435))

(declare-fun m!4731437 () Bool)

(assert (=> b!4134744 m!4731437))

(declare-fun m!4731439 () Bool)

(assert (=> b!4134744 m!4731439))

(declare-fun m!4731441 () Bool)

(assert (=> b!4134744 m!4731441))

(assert (=> b!4134744 m!4731437))

(declare-fun m!4731443 () Bool)

(assert (=> b!4134744 m!4731443))

(declare-fun m!4731445 () Bool)

(assert (=> b!4134744 m!4731445))

(declare-fun m!4731447 () Bool)

(assert (=> b!4134744 m!4731447))

(declare-fun m!4731449 () Bool)

(assert (=> b!4134728 m!4731449))

(declare-fun m!4731451 () Bool)

(assert (=> b!4134728 m!4731451))

(declare-fun m!4731453 () Bool)

(assert (=> b!4134727 m!4731453))

(declare-fun m!4731455 () Bool)

(assert (=> b!4134727 m!4731455))

(declare-fun m!4731457 () Bool)

(assert (=> b!4134740 m!4731457))

(declare-fun m!4731459 () Bool)

(assert (=> b!4134740 m!4731459))

(declare-fun m!4731461 () Bool)

(assert (=> b!4134740 m!4731461))

(declare-fun m!4731463 () Bool)

(assert (=> b!4134739 m!4731463))

(declare-fun m!4731465 () Bool)

(assert (=> b!4134739 m!4731465))

(declare-fun m!4731467 () Bool)

(assert (=> b!4134739 m!4731467))

(declare-fun m!4731469 () Bool)

(assert (=> b!4134739 m!4731469))

(declare-fun m!4731471 () Bool)

(assert (=> b!4134739 m!4731471))

(declare-fun m!4731473 () Bool)

(assert (=> b!4134739 m!4731473))

(declare-fun m!4731475 () Bool)

(assert (=> b!4134731 m!4731475))

(declare-fun m!4731477 () Bool)

(assert (=> b!4134731 m!4731477))

(declare-fun m!4731479 () Bool)

(assert (=> b!4134726 m!4731479))

(check-sat (not b_next!118185) (not b!4134731) (not b!4134724) b_and!320709 (not b!4134736) (not b!4134737) (not b!4134734) (not b!4134727) b_and!320713 (not b!4134738) (not b!4134723) (not b!4134729) (not b_next!118183) (not b!4134728) (not b!4134742) (not b!4134743) (not b!4134739) tp_is_empty!21421 (not b_next!118189) (not b!4134735) (not b!4134732) b_and!320717 (not b!4134726) (not b!4134733) (not b_next!118187) (not b!4134744) (not b_next!118181) b_and!320711 (not b_next!118179) (not b!4134730) b_and!320719 b_and!320715 (not b!4134740))
(check-sat (not b_next!118185) (not b_next!118183) (not b_next!118189) b_and!320709 b_and!320717 (not b_next!118187) (not b_next!118181) b_and!320719 b_and!320715 b_and!320713 b_and!320711 (not b_next!118179))
(get-model)

(declare-fun d!1224607 () Bool)

(declare-fun res!1690657 () Bool)

(declare-fun e!2565459 () Bool)

(assert (=> d!1224607 (=> (not res!1690657) (not e!2565459))))

(declare-fun rulesValid!2885 (LexerInterface!6933 List!44924) Bool)

(assert (=> d!1224607 (= res!1690657 (rulesValid!2885 thiss!25645 rules!3756))))

(assert (=> d!1224607 (= (rulesInvariant!6230 thiss!25645 rules!3756) e!2565459)))

(declare-fun b!4134747 () Bool)

(declare-datatypes ((List!44926 0))(
  ( (Nil!44802) (Cons!44802 (h!50222 String!51620) (t!341915 List!44926)) )
))
(declare-fun noDuplicateTag!2968 (LexerInterface!6933 List!44924 List!44926) Bool)

(assert (=> b!4134747 (= e!2565459 (noDuplicateTag!2968 thiss!25645 rules!3756 Nil!44802))))

(assert (= (and d!1224607 res!1690657) b!4134747))

(declare-fun m!4731481 () Bool)

(assert (=> d!1224607 m!4731481))

(declare-fun m!4731483 () Bool)

(assert (=> b!4134747 m!4731483))

(assert (=> b!4134726 d!1224607))

(declare-fun d!1224611 () Bool)

(declare-fun lt!1474157 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6911 (List!44924) (InoxSet Rule!14488))

(assert (=> d!1224611 (= lt!1474157 (select (content!6911 rules!3756) rBis!149))))

(declare-fun e!2565464 () Bool)

(assert (=> d!1224611 (= lt!1474157 e!2565464)))

(declare-fun res!1690663 () Bool)

(assert (=> d!1224611 (=> (not res!1690663) (not e!2565464))))

(assert (=> d!1224611 (= res!1690663 ((_ is Cons!44800) rules!3756))))

(assert (=> d!1224611 (= (contains!9024 rules!3756 rBis!149) lt!1474157)))

(declare-fun b!4134752 () Bool)

(declare-fun e!2565465 () Bool)

(assert (=> b!4134752 (= e!2565464 e!2565465)))

(declare-fun res!1690662 () Bool)

(assert (=> b!4134752 (=> res!1690662 e!2565465)))

(assert (=> b!4134752 (= res!1690662 (= (h!50220 rules!3756) rBis!149))))

(declare-fun b!4134753 () Bool)

(assert (=> b!4134753 (= e!2565465 (contains!9024 (t!341849 rules!3756) rBis!149))))

(assert (= (and d!1224611 res!1690663) b!4134752))

(assert (= (and b!4134752 (not res!1690662)) b!4134753))

(declare-fun m!4731485 () Bool)

(assert (=> d!1224611 m!4731485))

(declare-fun m!4731487 () Bool)

(assert (=> d!1224611 m!4731487))

(declare-fun m!4731489 () Bool)

(assert (=> b!4134753 m!4731489))

(assert (=> b!4134737 d!1224611))

(declare-fun d!1224613 () Bool)

(assert (=> d!1224613 (= (isEmpty!26686 rules!3756) ((_ is Nil!44800) rules!3756))))

(assert (=> b!4134735 d!1224613))

(declare-fun b!4134828 () Bool)

(declare-fun e!2565508 () Bool)

(assert (=> b!4134828 (= e!2565508 true)))

(declare-fun d!1224615 () Bool)

(assert (=> d!1224615 e!2565508))

(assert (= d!1224615 b!4134828))

(declare-fun lambda!128901 () Int)

(declare-fun order!23669 () Int)

(declare-fun order!23671 () Int)

(declare-fun dynLambda!19233 (Int Int) Int)

(declare-fun dynLambda!19234 (Int Int) Int)

(assert (=> b!4134828 (< (dynLambda!19233 order!23669 (toValue!10008 (transformation!7344 r!4008))) (dynLambda!19234 order!23671 lambda!128901))))

(declare-fun order!23673 () Int)

(declare-fun dynLambda!19235 (Int Int) Int)

(assert (=> b!4134828 (< (dynLambda!19235 order!23673 (toChars!9867 (transformation!7344 r!4008))) (dynLambda!19234 order!23671 lambda!128901))))

(declare-fun list!16403 (BalanceConc!26704) List!44923)

(declare-fun dynLambda!19236 (Int TokenValue!7574) BalanceConc!26704)

(declare-fun dynLambda!19237 (Int BalanceConc!26704) TokenValue!7574)

(assert (=> d!1224615 (= (list!16403 (dynLambda!19236 (toChars!9867 (transformation!7344 r!4008)) (dynLambda!19237 (toValue!10008 (transformation!7344 r!4008)) lt!1474143))) (list!16403 lt!1474143))))

(declare-fun lt!1474188 () Unit!64115)

(declare-fun ForallOf!954 (Int BalanceConc!26704) Unit!64115)

(assert (=> d!1224615 (= lt!1474188 (ForallOf!954 lambda!128901 lt!1474143))))

(assert (=> d!1224615 (= (lemmaSemiInverse!2202 (transformation!7344 r!4008) lt!1474143) lt!1474188)))

(declare-fun b_lambda!121491 () Bool)

(assert (=> (not b_lambda!121491) (not d!1224615)))

(declare-fun tb!248165 () Bool)

(declare-fun t!341869 () Bool)

(assert (=> (and b!4134725 (= (toChars!9867 (transformation!7344 rBis!149)) (toChars!9867 (transformation!7344 r!4008))) t!341869) tb!248165))

(declare-fun tp!1260379 () Bool)

(declare-fun b!4134833 () Bool)

(declare-fun e!2565511 () Bool)

(declare-fun inv!59408 (Conc!13555) Bool)

(assert (=> b!4134833 (= e!2565511 (and (inv!59408 (c!709204 (dynLambda!19236 (toChars!9867 (transformation!7344 r!4008)) (dynLambda!19237 (toValue!10008 (transformation!7344 r!4008)) lt!1474143)))) tp!1260379))))

(declare-fun result!301686 () Bool)

(declare-fun inv!59409 (BalanceConc!26704) Bool)

(assert (=> tb!248165 (= result!301686 (and (inv!59409 (dynLambda!19236 (toChars!9867 (transformation!7344 r!4008)) (dynLambda!19237 (toValue!10008 (transformation!7344 r!4008)) lt!1474143))) e!2565511))))

(assert (= tb!248165 b!4134833))

(declare-fun m!4731575 () Bool)

(assert (=> b!4134833 m!4731575))

(declare-fun m!4731577 () Bool)

(assert (=> tb!248165 m!4731577))

(assert (=> d!1224615 t!341869))

(declare-fun b_and!320745 () Bool)

(assert (= b_and!320711 (and (=> t!341869 result!301686) b_and!320745)))

(declare-fun t!341871 () Bool)

(declare-fun tb!248167 () Bool)

(assert (=> (and b!4134722 (= (toChars!9867 (transformation!7344 r!4008)) (toChars!9867 (transformation!7344 r!4008))) t!341871) tb!248167))

(declare-fun result!301690 () Bool)

(assert (= result!301690 result!301686))

(assert (=> d!1224615 t!341871))

(declare-fun b_and!320747 () Bool)

(assert (= b_and!320715 (and (=> t!341871 result!301690) b_and!320747)))

(declare-fun tb!248169 () Bool)

(declare-fun t!341873 () Bool)

(assert (=> (and b!4134741 (= (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toChars!9867 (transformation!7344 r!4008))) t!341873) tb!248169))

(declare-fun result!301692 () Bool)

(assert (= result!301692 result!301686))

(assert (=> d!1224615 t!341873))

(declare-fun b_and!320749 () Bool)

(assert (= b_and!320719 (and (=> t!341873 result!301692) b_and!320749)))

(declare-fun b_lambda!121493 () Bool)

(assert (=> (not b_lambda!121493) (not d!1224615)))

(declare-fun t!341875 () Bool)

(declare-fun tb!248171 () Bool)

(assert (=> (and b!4134725 (= (toValue!10008 (transformation!7344 rBis!149)) (toValue!10008 (transformation!7344 r!4008))) t!341875) tb!248171))

(declare-fun result!301694 () Bool)

(declare-fun inv!21 (TokenValue!7574) Bool)

(assert (=> tb!248171 (= result!301694 (inv!21 (dynLambda!19237 (toValue!10008 (transformation!7344 r!4008)) lt!1474143)))))

(declare-fun m!4731579 () Bool)

(assert (=> tb!248171 m!4731579))

(assert (=> d!1224615 t!341875))

(declare-fun b_and!320751 () Bool)

(assert (= b_and!320709 (and (=> t!341875 result!301694) b_and!320751)))

(declare-fun t!341877 () Bool)

(declare-fun tb!248173 () Bool)

(assert (=> (and b!4134722 (= (toValue!10008 (transformation!7344 r!4008)) (toValue!10008 (transformation!7344 r!4008))) t!341877) tb!248173))

(declare-fun result!301698 () Bool)

(assert (= result!301698 result!301694))

(assert (=> d!1224615 t!341877))

(declare-fun b_and!320753 () Bool)

(assert (= b_and!320713 (and (=> t!341877 result!301698) b_and!320753)))

(declare-fun tb!248175 () Bool)

(declare-fun t!341879 () Bool)

(assert (=> (and b!4134741 (= (toValue!10008 (transformation!7344 (h!50220 rules!3756))) (toValue!10008 (transformation!7344 r!4008))) t!341879) tb!248175))

(declare-fun result!301700 () Bool)

(assert (= result!301700 result!301694))

(assert (=> d!1224615 t!341879))

(declare-fun b_and!320755 () Bool)

(assert (= b_and!320717 (and (=> t!341879 result!301700) b_and!320755)))

(declare-fun m!4731581 () Bool)

(assert (=> d!1224615 m!4731581))

(declare-fun m!4731583 () Bool)

(assert (=> d!1224615 m!4731583))

(declare-fun m!4731585 () Bool)

(assert (=> d!1224615 m!4731585))

(assert (=> d!1224615 m!4731585))

(declare-fun m!4731587 () Bool)

(assert (=> d!1224615 m!4731587))

(assert (=> d!1224615 m!4731583))

(declare-fun m!4731589 () Bool)

(assert (=> d!1224615 m!4731589))

(assert (=> b!4134739 d!1224615))

(declare-fun d!1224639 () Bool)

(assert (=> d!1224639 (= (apply!10417 (transformation!7344 r!4008) lt!1474143) (dynLambda!19237 (toValue!10008 (transformation!7344 r!4008)) lt!1474143))))

(declare-fun b_lambda!121495 () Bool)

(assert (=> (not b_lambda!121495) (not d!1224639)))

(assert (=> d!1224639 t!341875))

(declare-fun b_and!320757 () Bool)

(assert (= b_and!320751 (and (=> t!341875 result!301694) b_and!320757)))

(assert (=> d!1224639 t!341877))

(declare-fun b_and!320759 () Bool)

(assert (= b_and!320753 (and (=> t!341877 result!301698) b_and!320759)))

(assert (=> d!1224639 t!341879))

(declare-fun b_and!320761 () Bool)

(assert (= b_and!320755 (and (=> t!341879 result!301700) b_and!320761)))

(assert (=> d!1224639 m!4731583))

(assert (=> b!4134739 d!1224639))

(declare-fun d!1224641 () Bool)

(declare-fun lt!1474191 () List!44923)

(declare-fun ++!11590 (List!44923 List!44923) List!44923)

(assert (=> d!1224641 (= (++!11590 p!2912 lt!1474191) input!3238)))

(declare-fun e!2565517 () List!44923)

(assert (=> d!1224641 (= lt!1474191 e!2565517)))

(declare-fun c!709219 () Bool)

(assert (=> d!1224641 (= c!709219 ((_ is Cons!44799) p!2912))))

(assert (=> d!1224641 (>= (size!33158 input!3238) (size!33158 p!2912))))

(assert (=> d!1224641 (= (getSuffix!2606 input!3238 p!2912) lt!1474191)))

(declare-fun b!4134840 () Bool)

(declare-fun tail!6501 (List!44923) List!44923)

(assert (=> b!4134840 (= e!2565517 (getSuffix!2606 (tail!6501 input!3238) (t!341848 p!2912)))))

(declare-fun b!4134841 () Bool)

(assert (=> b!4134841 (= e!2565517 input!3238)))

(assert (= (and d!1224641 c!709219) b!4134840))

(assert (= (and d!1224641 (not c!709219)) b!4134841))

(declare-fun m!4731591 () Bool)

(assert (=> d!1224641 m!4731591))

(declare-fun m!4731593 () Bool)

(assert (=> d!1224641 m!4731593))

(assert (=> d!1224641 m!4731463))

(declare-fun m!4731595 () Bool)

(assert (=> b!4134840 m!4731595))

(assert (=> b!4134840 m!4731595))

(declare-fun m!4731597 () Bool)

(assert (=> b!4134840 m!4731597))

(assert (=> b!4134739 d!1224641))

(declare-fun b!4134887 () Bool)

(declare-fun res!1690742 () Bool)

(declare-fun e!2565538 () Bool)

(assert (=> b!4134887 (=> (not res!1690742) (not e!2565538))))

(declare-fun lt!1474220 () Option!9650)

(assert (=> b!4134887 (= res!1690742 (matchR!6078 (regex!7344 (rule!10438 (_1!24733 (get!14611 lt!1474220)))) (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474220))))))))

(declare-fun bm!290405 () Bool)

(declare-fun call!290410 () Option!9650)

(assert (=> bm!290405 (= call!290410 (maxPrefixOneRule!3062 thiss!25645 (h!50220 rules!3756) input!3238))))

(declare-fun b!4134888 () Bool)

(declare-fun e!2565537 () Option!9650)

(declare-fun lt!1474218 () Option!9650)

(declare-fun lt!1474217 () Option!9650)

(assert (=> b!4134888 (= e!2565537 (ite (and ((_ is None!9649) lt!1474218) ((_ is None!9649) lt!1474217)) None!9649 (ite ((_ is None!9649) lt!1474217) lt!1474218 (ite ((_ is None!9649) lt!1474218) lt!1474217 (ite (>= (size!33156 (_1!24733 (v!40271 lt!1474218))) (size!33156 (_1!24733 (v!40271 lt!1474217)))) lt!1474218 lt!1474217)))))))

(assert (=> b!4134888 (= lt!1474218 call!290410)))

(assert (=> b!4134888 (= lt!1474217 (maxPrefix!4123 thiss!25645 (t!341849 rules!3756) input!3238))))

(declare-fun b!4134889 () Bool)

(assert (=> b!4134889 (= e!2565537 call!290410)))

(declare-fun b!4134890 () Bool)

(assert (=> b!4134890 (= e!2565538 (contains!9024 rules!3756 (rule!10438 (_1!24733 (get!14611 lt!1474220)))))))

(declare-fun b!4134891 () Bool)

(declare-fun res!1690744 () Bool)

(assert (=> b!4134891 (=> (not res!1690744) (not e!2565538))))

(assert (=> b!4134891 (= res!1690744 (= (value!229858 (_1!24733 (get!14611 lt!1474220))) (apply!10417 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474220)))) (seqFromList!5461 (originalCharacters!7840 (_1!24733 (get!14611 lt!1474220)))))))))

(declare-fun b!4134892 () Bool)

(declare-fun res!1690743 () Bool)

(assert (=> b!4134892 (=> (not res!1690743) (not e!2565538))))

(assert (=> b!4134892 (= res!1690743 (= (++!11590 (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474220)))) (_2!24733 (get!14611 lt!1474220))) input!3238))))

(declare-fun b!4134894 () Bool)

(declare-fun e!2565536 () Bool)

(assert (=> b!4134894 (= e!2565536 e!2565538)))

(declare-fun res!1690738 () Bool)

(assert (=> b!4134894 (=> (not res!1690738) (not e!2565538))))

(declare-fun isDefined!7262 (Option!9650) Bool)

(assert (=> b!4134894 (= res!1690738 (isDefined!7262 lt!1474220))))

(declare-fun b!4134895 () Bool)

(declare-fun res!1690740 () Bool)

(assert (=> b!4134895 (=> (not res!1690740) (not e!2565538))))

(assert (=> b!4134895 (= res!1690740 (= (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474220)))) (originalCharacters!7840 (_1!24733 (get!14611 lt!1474220)))))))

(declare-fun b!4134893 () Bool)

(declare-fun res!1690739 () Bool)

(assert (=> b!4134893 (=> (not res!1690739) (not e!2565538))))

(assert (=> b!4134893 (= res!1690739 (< (size!33158 (_2!24733 (get!14611 lt!1474220))) (size!33158 input!3238)))))

(declare-fun d!1224643 () Bool)

(assert (=> d!1224643 e!2565536))

(declare-fun res!1690741 () Bool)

(assert (=> d!1224643 (=> res!1690741 e!2565536)))

(assert (=> d!1224643 (= res!1690741 (isEmpty!26687 lt!1474220))))

(assert (=> d!1224643 (= lt!1474220 e!2565537)))

(declare-fun c!709225 () Bool)

(assert (=> d!1224643 (= c!709225 (and ((_ is Cons!44800) rules!3756) ((_ is Nil!44800) (t!341849 rules!3756))))))

(declare-fun lt!1474221 () Unit!64115)

(declare-fun lt!1474219 () Unit!64115)

(assert (=> d!1224643 (= lt!1474221 lt!1474219)))

(assert (=> d!1224643 (isPrefix!4279 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2768 (List!44923 List!44923) Unit!64115)

(assert (=> d!1224643 (= lt!1474219 (lemmaIsPrefixRefl!2768 input!3238 input!3238))))

(declare-fun rulesValidInductive!2722 (LexerInterface!6933 List!44924) Bool)

(assert (=> d!1224643 (rulesValidInductive!2722 thiss!25645 rules!3756)))

(assert (=> d!1224643 (= (maxPrefix!4123 thiss!25645 rules!3756 input!3238) lt!1474220)))

(assert (= (and d!1224643 c!709225) b!4134889))

(assert (= (and d!1224643 (not c!709225)) b!4134888))

(assert (= (or b!4134889 b!4134888) bm!290405))

(assert (= (and d!1224643 (not res!1690741)) b!4134894))

(assert (= (and b!4134894 res!1690738) b!4134895))

(assert (= (and b!4134895 res!1690740) b!4134893))

(assert (= (and b!4134893 res!1690739) b!4134892))

(assert (= (and b!4134892 res!1690743) b!4134891))

(assert (= (and b!4134891 res!1690744) b!4134887))

(assert (= (and b!4134887 res!1690742) b!4134890))

(declare-fun m!4731641 () Bool)

(assert (=> b!4134894 m!4731641))

(declare-fun m!4731643 () Bool)

(assert (=> b!4134892 m!4731643))

(declare-fun m!4731645 () Bool)

(assert (=> b!4134892 m!4731645))

(assert (=> b!4134892 m!4731645))

(declare-fun m!4731647 () Bool)

(assert (=> b!4134892 m!4731647))

(assert (=> b!4134892 m!4731647))

(declare-fun m!4731649 () Bool)

(assert (=> b!4134892 m!4731649))

(assert (=> b!4134893 m!4731643))

(declare-fun m!4731651 () Bool)

(assert (=> b!4134893 m!4731651))

(assert (=> b!4134893 m!4731593))

(declare-fun m!4731653 () Bool)

(assert (=> b!4134888 m!4731653))

(assert (=> b!4134895 m!4731643))

(assert (=> b!4134895 m!4731645))

(assert (=> b!4134895 m!4731645))

(assert (=> b!4134895 m!4731647))

(declare-fun m!4731655 () Bool)

(assert (=> d!1224643 m!4731655))

(declare-fun m!4731657 () Bool)

(assert (=> d!1224643 m!4731657))

(declare-fun m!4731659 () Bool)

(assert (=> d!1224643 m!4731659))

(declare-fun m!4731661 () Bool)

(assert (=> d!1224643 m!4731661))

(declare-fun m!4731663 () Bool)

(assert (=> bm!290405 m!4731663))

(assert (=> b!4134887 m!4731643))

(assert (=> b!4134887 m!4731645))

(assert (=> b!4134887 m!4731645))

(assert (=> b!4134887 m!4731647))

(assert (=> b!4134887 m!4731647))

(declare-fun m!4731665 () Bool)

(assert (=> b!4134887 m!4731665))

(assert (=> b!4134890 m!4731643))

(declare-fun m!4731667 () Bool)

(assert (=> b!4134890 m!4731667))

(assert (=> b!4134891 m!4731643))

(declare-fun m!4731669 () Bool)

(assert (=> b!4134891 m!4731669))

(assert (=> b!4134891 m!4731669))

(declare-fun m!4731671 () Bool)

(assert (=> b!4134891 m!4731671))

(assert (=> b!4134739 d!1224643))

(declare-fun d!1224649 () Bool)

(declare-fun fromListB!2503 (List!44923) BalanceConc!26704)

(assert (=> d!1224649 (= (seqFromList!5461 p!2912) (fromListB!2503 p!2912))))

(declare-fun bs!595098 () Bool)

(assert (= bs!595098 d!1224649))

(declare-fun m!4731675 () Bool)

(assert (=> bs!595098 m!4731675))

(assert (=> b!4134739 d!1224649))

(declare-fun d!1224653 () Bool)

(declare-fun lt!1474227 () Int)

(assert (=> d!1224653 (>= lt!1474227 0)))

(declare-fun e!2565544 () Int)

(assert (=> d!1224653 (= lt!1474227 e!2565544)))

(declare-fun c!709228 () Bool)

(assert (=> d!1224653 (= c!709228 ((_ is Nil!44799) p!2912))))

(assert (=> d!1224653 (= (size!33158 p!2912) lt!1474227)))

(declare-fun b!4134906 () Bool)

(assert (=> b!4134906 (= e!2565544 0)))

(declare-fun b!4134907 () Bool)

(assert (=> b!4134907 (= e!2565544 (+ 1 (size!33158 (t!341848 p!2912))))))

(assert (= (and d!1224653 c!709228) b!4134906))

(assert (= (and d!1224653 (not c!709228)) b!4134907))

(declare-fun m!4731681 () Bool)

(assert (=> b!4134907 m!4731681))

(assert (=> b!4134739 d!1224653))

(declare-fun d!1224657 () Bool)

(assert (=> d!1224657 (ruleValid!3150 thiss!25645 r!4008)))

(declare-fun lt!1474230 () Unit!64115)

(declare-fun choose!25270 (LexerInterface!6933 Rule!14488 List!44924) Unit!64115)

(assert (=> d!1224657 (= lt!1474230 (choose!25270 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224657 (contains!9024 rules!3756 r!4008)))

(assert (=> d!1224657 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2190 thiss!25645 r!4008 rules!3756) lt!1474230)))

(declare-fun bs!595099 () Bool)

(assert (= bs!595099 d!1224657))

(assert (=> bs!595099 m!4731423))

(declare-fun m!4731683 () Bool)

(assert (=> bs!595099 m!4731683))

(assert (=> bs!595099 m!4731433))

(assert (=> b!4134740 d!1224657))

(declare-fun d!1224661 () Bool)

(declare-fun res!1690758 () Bool)

(declare-fun e!2565550 () Bool)

(assert (=> d!1224661 (=> (not res!1690758) (not e!2565550))))

(declare-fun validRegex!5515 (Regex!12249) Bool)

(assert (=> d!1224661 (= res!1690758 (validRegex!5515 (regex!7344 rBis!149)))))

(assert (=> d!1224661 (= (ruleValid!3150 thiss!25645 rBis!149) e!2565550)))

(declare-fun b!4134915 () Bool)

(declare-fun res!1690759 () Bool)

(assert (=> b!4134915 (=> (not res!1690759) (not e!2565550))))

(declare-fun nullable!4307 (Regex!12249) Bool)

(assert (=> b!4134915 (= res!1690759 (not (nullable!4307 (regex!7344 rBis!149))))))

(declare-fun b!4134916 () Bool)

(assert (=> b!4134916 (= e!2565550 (not (= (tag!8204 rBis!149) (String!51621 ""))))))

(assert (= (and d!1224661 res!1690758) b!4134915))

(assert (= (and b!4134915 res!1690759) b!4134916))

(declare-fun m!4731689 () Bool)

(assert (=> d!1224661 m!4731689))

(declare-fun m!4731691 () Bool)

(assert (=> b!4134915 m!4731691))

(assert (=> b!4134740 d!1224661))

(declare-fun d!1224665 () Bool)

(assert (=> d!1224665 (ruleValid!3150 thiss!25645 rBis!149)))

(declare-fun lt!1474231 () Unit!64115)

(assert (=> d!1224665 (= lt!1474231 (choose!25270 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224665 (contains!9024 rules!3756 rBis!149)))

(assert (=> d!1224665 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2190 thiss!25645 rBis!149 rules!3756) lt!1474231)))

(declare-fun bs!595100 () Bool)

(assert (= bs!595100 d!1224665))

(assert (=> bs!595100 m!4731459))

(declare-fun m!4731693 () Bool)

(assert (=> bs!595100 m!4731693))

(assert (=> bs!595100 m!4731411))

(assert (=> b!4134740 d!1224665))

(declare-fun b!4134968 () Bool)

(declare-fun e!2565581 () Bool)

(declare-fun e!2565584 () Bool)

(assert (=> b!4134968 (= e!2565581 e!2565584)))

(declare-fun res!1690784 () Bool)

(assert (=> b!4134968 (=> res!1690784 e!2565584)))

(declare-fun call!290413 () Bool)

(assert (=> b!4134968 (= res!1690784 call!290413)))

(declare-fun b!4134969 () Bool)

(declare-fun res!1690786 () Bool)

(declare-fun e!2565580 () Bool)

(assert (=> b!4134969 (=> (not res!1690786) (not e!2565580))))

(assert (=> b!4134969 (= res!1690786 (not call!290413))))

(declare-fun b!4134970 () Bool)

(declare-fun e!2565583 () Bool)

(assert (=> b!4134970 (= e!2565583 e!2565581)))

(declare-fun res!1690790 () Bool)

(assert (=> b!4134970 (=> (not res!1690790) (not e!2565581))))

(declare-fun lt!1474247 () Bool)

(assert (=> b!4134970 (= res!1690790 (not lt!1474247))))

(declare-fun b!4134971 () Bool)

(declare-fun e!2565585 () Bool)

(declare-fun derivativeStep!3701 (Regex!12249 C!24684) Regex!12249)

(declare-fun head!8719 (List!44923) C!24684)

(assert (=> b!4134971 (= e!2565585 (matchR!6078 (derivativeStep!3701 (regex!7344 r!4008) (head!8719 p!2912)) (tail!6501 p!2912)))))

(declare-fun b!4134972 () Bool)

(declare-fun res!1690788 () Bool)

(assert (=> b!4134972 (=> res!1690788 e!2565584)))

(assert (=> b!4134972 (= res!1690788 (not (isEmpty!26685 (tail!6501 p!2912))))))

(declare-fun b!4134973 () Bool)

(declare-fun e!2565582 () Bool)

(declare-fun e!2565586 () Bool)

(assert (=> b!4134973 (= e!2565582 e!2565586)))

(declare-fun c!709243 () Bool)

(assert (=> b!4134973 (= c!709243 ((_ is EmptyLang!12249) (regex!7344 r!4008)))))

(declare-fun b!4134974 () Bool)

(declare-fun res!1690789 () Bool)

(assert (=> b!4134974 (=> (not res!1690789) (not e!2565580))))

(assert (=> b!4134974 (= res!1690789 (isEmpty!26685 (tail!6501 p!2912)))))

(declare-fun b!4134975 () Bool)

(assert (=> b!4134975 (= e!2565584 (not (= (head!8719 p!2912) (c!709205 (regex!7344 r!4008)))))))

(declare-fun b!4134976 () Bool)

(assert (=> b!4134976 (= e!2565585 (nullable!4307 (regex!7344 r!4008)))))

(declare-fun b!4134977 () Bool)

(declare-fun res!1690785 () Bool)

(assert (=> b!4134977 (=> res!1690785 e!2565583)))

(assert (=> b!4134977 (= res!1690785 (not ((_ is ElementMatch!12249) (regex!7344 r!4008))))))

(assert (=> b!4134977 (= e!2565586 e!2565583)))

(declare-fun b!4134978 () Bool)

(assert (=> b!4134978 (= e!2565582 (= lt!1474247 call!290413))))

(declare-fun b!4134979 () Bool)

(assert (=> b!4134979 (= e!2565586 (not lt!1474247))))

(declare-fun d!1224667 () Bool)

(assert (=> d!1224667 e!2565582))

(declare-fun c!709245 () Bool)

(assert (=> d!1224667 (= c!709245 ((_ is EmptyExpr!12249) (regex!7344 r!4008)))))

(assert (=> d!1224667 (= lt!1474247 e!2565585)))

(declare-fun c!709244 () Bool)

(assert (=> d!1224667 (= c!709244 (isEmpty!26685 p!2912))))

(assert (=> d!1224667 (validRegex!5515 (regex!7344 r!4008))))

(assert (=> d!1224667 (= (matchR!6078 (regex!7344 r!4008) p!2912) lt!1474247)))

(declare-fun b!4134980 () Bool)

(declare-fun res!1690783 () Bool)

(assert (=> b!4134980 (=> res!1690783 e!2565583)))

(assert (=> b!4134980 (= res!1690783 e!2565580)))

(declare-fun res!1690787 () Bool)

(assert (=> b!4134980 (=> (not res!1690787) (not e!2565580))))

(assert (=> b!4134980 (= res!1690787 lt!1474247)))

(declare-fun bm!290408 () Bool)

(assert (=> bm!290408 (= call!290413 (isEmpty!26685 p!2912))))

(declare-fun b!4134981 () Bool)

(assert (=> b!4134981 (= e!2565580 (= (head!8719 p!2912) (c!709205 (regex!7344 r!4008))))))

(assert (= (and d!1224667 c!709244) b!4134976))

(assert (= (and d!1224667 (not c!709244)) b!4134971))

(assert (= (and d!1224667 c!709245) b!4134978))

(assert (= (and d!1224667 (not c!709245)) b!4134973))

(assert (= (and b!4134973 c!709243) b!4134979))

(assert (= (and b!4134973 (not c!709243)) b!4134977))

(assert (= (and b!4134977 (not res!1690785)) b!4134980))

(assert (= (and b!4134980 res!1690787) b!4134969))

(assert (= (and b!4134969 res!1690786) b!4134974))

(assert (= (and b!4134974 res!1690789) b!4134981))

(assert (= (and b!4134980 (not res!1690783)) b!4134970))

(assert (= (and b!4134970 res!1690790) b!4134968))

(assert (= (and b!4134968 (not res!1690784)) b!4134972))

(assert (= (and b!4134972 (not res!1690788)) b!4134975))

(assert (= (or b!4134978 b!4134968 b!4134969) bm!290408))

(assert (=> bm!290408 m!4731419))

(declare-fun m!4731727 () Bool)

(assert (=> b!4134974 m!4731727))

(assert (=> b!4134974 m!4731727))

(declare-fun m!4731729 () Bool)

(assert (=> b!4134974 m!4731729))

(assert (=> b!4134972 m!4731727))

(assert (=> b!4134972 m!4731727))

(assert (=> b!4134972 m!4731729))

(assert (=> d!1224667 m!4731419))

(declare-fun m!4731731 () Bool)

(assert (=> d!1224667 m!4731731))

(declare-fun m!4731733 () Bool)

(assert (=> b!4134971 m!4731733))

(assert (=> b!4134971 m!4731733))

(declare-fun m!4731735 () Bool)

(assert (=> b!4134971 m!4731735))

(assert (=> b!4134971 m!4731727))

(assert (=> b!4134971 m!4731735))

(assert (=> b!4134971 m!4731727))

(declare-fun m!4731737 () Bool)

(assert (=> b!4134971 m!4731737))

(assert (=> b!4134981 m!4731733))

(assert (=> b!4134975 m!4731733))

(declare-fun m!4731739 () Bool)

(assert (=> b!4134976 m!4731739))

(assert (=> b!4134729 d!1224667))

(declare-fun d!1224693 () Bool)

(assert (=> d!1224693 (= (inv!59401 (tag!8204 (h!50220 rules!3756))) (= (mod (str.len (value!229857 (tag!8204 (h!50220 rules!3756)))) 2) 0))))

(assert (=> b!4134727 d!1224693))

(declare-fun d!1224697 () Bool)

(declare-fun res!1690793 () Bool)

(declare-fun e!2565590 () Bool)

(assert (=> d!1224697 (=> (not res!1690793) (not e!2565590))))

(declare-fun semiInverseModEq!3171 (Int Int) Bool)

(assert (=> d!1224697 (= res!1690793 (semiInverseModEq!3171 (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toValue!10008 (transformation!7344 (h!50220 rules!3756)))))))

(assert (=> d!1224697 (= (inv!59404 (transformation!7344 (h!50220 rules!3756))) e!2565590)))

(declare-fun b!4134985 () Bool)

(declare-fun equivClasses!3070 (Int Int) Bool)

(assert (=> b!4134985 (= e!2565590 (equivClasses!3070 (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toValue!10008 (transformation!7344 (h!50220 rules!3756)))))))

(assert (= (and d!1224697 res!1690793) b!4134985))

(declare-fun m!4731749 () Bool)

(assert (=> d!1224697 m!4731749))

(declare-fun m!4731751 () Bool)

(assert (=> b!4134985 m!4731751))

(assert (=> b!4134727 d!1224697))

(declare-fun d!1224701 () Bool)

(assert (=> d!1224701 (= (inv!59401 (tag!8204 r!4008)) (= (mod (str.len (value!229857 (tag!8204 r!4008))) 2) 0))))

(assert (=> b!4134728 d!1224701))

(declare-fun d!1224703 () Bool)

(declare-fun res!1690794 () Bool)

(declare-fun e!2565591 () Bool)

(assert (=> d!1224703 (=> (not res!1690794) (not e!2565591))))

(assert (=> d!1224703 (= res!1690794 (semiInverseModEq!3171 (toChars!9867 (transformation!7344 r!4008)) (toValue!10008 (transformation!7344 r!4008))))))

(assert (=> d!1224703 (= (inv!59404 (transformation!7344 r!4008)) e!2565591)))

(declare-fun b!4134986 () Bool)

(assert (=> b!4134986 (= e!2565591 (equivClasses!3070 (toChars!9867 (transformation!7344 r!4008)) (toValue!10008 (transformation!7344 r!4008))))))

(assert (= (and d!1224703 res!1690794) b!4134986))

(declare-fun m!4731753 () Bool)

(assert (=> d!1224703 m!4731753))

(declare-fun m!4731755 () Bool)

(assert (=> b!4134986 m!4731755))

(assert (=> b!4134728 d!1224703))

(declare-fun b!4135026 () Bool)

(declare-fun e!2565612 () Int)

(assert (=> b!4135026 (= e!2565612 (- 1))))

(declare-fun b!4135025 () Bool)

(assert (=> b!4135025 (= e!2565612 (+ 1 (getIndex!690 (t!341849 rules!3756) rBis!149)))))

(declare-fun b!4135024 () Bool)

(declare-fun e!2565611 () Int)

(assert (=> b!4135024 (= e!2565611 e!2565612)))

(declare-fun c!709257 () Bool)

(assert (=> b!4135024 (= c!709257 (and ((_ is Cons!44800) rules!3756) (not (= (h!50220 rules!3756) rBis!149))))))

(declare-fun d!1224705 () Bool)

(declare-fun lt!1474255 () Int)

(assert (=> d!1224705 (>= lt!1474255 0)))

(assert (=> d!1224705 (= lt!1474255 e!2565611)))

(declare-fun c!709256 () Bool)

(assert (=> d!1224705 (= c!709256 (and ((_ is Cons!44800) rules!3756) (= (h!50220 rules!3756) rBis!149)))))

(assert (=> d!1224705 (contains!9024 rules!3756 rBis!149)))

(assert (=> d!1224705 (= (getIndex!690 rules!3756 rBis!149) lt!1474255)))

(declare-fun b!4135023 () Bool)

(assert (=> b!4135023 (= e!2565611 0)))

(assert (= (and d!1224705 c!709256) b!4135023))

(assert (= (and d!1224705 (not c!709256)) b!4135024))

(assert (= (and b!4135024 c!709257) b!4135025))

(assert (= (and b!4135024 (not c!709257)) b!4135026))

(declare-fun m!4731757 () Bool)

(assert (=> b!4135025 m!4731757))

(assert (=> d!1224705 m!4731411))

(assert (=> b!4134731 d!1224705))

(declare-fun b!4135030 () Bool)

(declare-fun e!2565614 () Int)

(assert (=> b!4135030 (= e!2565614 (- 1))))

(declare-fun b!4135029 () Bool)

(assert (=> b!4135029 (= e!2565614 (+ 1 (getIndex!690 (t!341849 rules!3756) r!4008)))))

(declare-fun b!4135028 () Bool)

(declare-fun e!2565613 () Int)

(assert (=> b!4135028 (= e!2565613 e!2565614)))

(declare-fun c!709259 () Bool)

(assert (=> b!4135028 (= c!709259 (and ((_ is Cons!44800) rules!3756) (not (= (h!50220 rules!3756) r!4008))))))

(declare-fun d!1224707 () Bool)

(declare-fun lt!1474256 () Int)

(assert (=> d!1224707 (>= lt!1474256 0)))

(assert (=> d!1224707 (= lt!1474256 e!2565613)))

(declare-fun c!709258 () Bool)

(assert (=> d!1224707 (= c!709258 (and ((_ is Cons!44800) rules!3756) (= (h!50220 rules!3756) r!4008)))))

(assert (=> d!1224707 (contains!9024 rules!3756 r!4008)))

(assert (=> d!1224707 (= (getIndex!690 rules!3756 r!4008) lt!1474256)))

(declare-fun b!4135027 () Bool)

(assert (=> b!4135027 (= e!2565613 0)))

(assert (= (and d!1224707 c!709258) b!4135027))

(assert (= (and d!1224707 (not c!709258)) b!4135028))

(assert (= (and b!4135028 c!709259) b!4135029))

(assert (= (and b!4135028 (not c!709259)) b!4135030))

(declare-fun m!4731759 () Bool)

(assert (=> b!4135029 m!4731759))

(assert (=> d!1224707 m!4731433))

(assert (=> b!4134731 d!1224707))

(declare-fun d!1224709 () Bool)

(declare-fun lt!1474257 () Bool)

(assert (=> d!1224709 (= lt!1474257 (select (content!6911 rules!3756) r!4008))))

(declare-fun e!2565615 () Bool)

(assert (=> d!1224709 (= lt!1474257 e!2565615)))

(declare-fun res!1690812 () Bool)

(assert (=> d!1224709 (=> (not res!1690812) (not e!2565615))))

(assert (=> d!1224709 (= res!1690812 ((_ is Cons!44800) rules!3756))))

(assert (=> d!1224709 (= (contains!9024 rules!3756 r!4008) lt!1474257)))

(declare-fun b!4135031 () Bool)

(declare-fun e!2565616 () Bool)

(assert (=> b!4135031 (= e!2565615 e!2565616)))

(declare-fun res!1690811 () Bool)

(assert (=> b!4135031 (=> res!1690811 e!2565616)))

(assert (=> b!4135031 (= res!1690811 (= (h!50220 rules!3756) r!4008))))

(declare-fun b!4135032 () Bool)

(assert (=> b!4135032 (= e!2565616 (contains!9024 (t!341849 rules!3756) r!4008))))

(assert (= (and d!1224709 res!1690812) b!4135031))

(assert (= (and b!4135031 (not res!1690811)) b!4135032))

(assert (=> d!1224709 m!4731485))

(declare-fun m!4731761 () Bool)

(assert (=> d!1224709 m!4731761))

(declare-fun m!4731763 () Bool)

(assert (=> b!4135032 m!4731763))

(assert (=> b!4134732 d!1224709))

(declare-fun b!4135057 () Bool)

(declare-fun res!1690832 () Bool)

(declare-fun e!2565633 () Bool)

(assert (=> b!4135057 (=> (not res!1690832) (not e!2565633))))

(assert (=> b!4135057 (= res!1690832 (= (head!8719 p!2912) (head!8719 input!3238)))))

(declare-fun d!1224711 () Bool)

(declare-fun e!2565632 () Bool)

(assert (=> d!1224711 e!2565632))

(declare-fun res!1690830 () Bool)

(assert (=> d!1224711 (=> res!1690830 e!2565632)))

(declare-fun lt!1474261 () Bool)

(assert (=> d!1224711 (= res!1690830 (not lt!1474261))))

(declare-fun e!2565631 () Bool)

(assert (=> d!1224711 (= lt!1474261 e!2565631)))

(declare-fun res!1690833 () Bool)

(assert (=> d!1224711 (=> res!1690833 e!2565631)))

(assert (=> d!1224711 (= res!1690833 ((_ is Nil!44799) p!2912))))

(assert (=> d!1224711 (= (isPrefix!4279 p!2912 input!3238) lt!1474261)))

(declare-fun b!4135058 () Bool)

(assert (=> b!4135058 (= e!2565633 (isPrefix!4279 (tail!6501 p!2912) (tail!6501 input!3238)))))

(declare-fun b!4135056 () Bool)

(assert (=> b!4135056 (= e!2565631 e!2565633)))

(declare-fun res!1690831 () Bool)

(assert (=> b!4135056 (=> (not res!1690831) (not e!2565633))))

(assert (=> b!4135056 (= res!1690831 (not ((_ is Nil!44799) input!3238)))))

(declare-fun b!4135059 () Bool)

(assert (=> b!4135059 (= e!2565632 (>= (size!33158 input!3238) (size!33158 p!2912)))))

(assert (= (and d!1224711 (not res!1690833)) b!4135056))

(assert (= (and b!4135056 res!1690831) b!4135057))

(assert (= (and b!4135057 res!1690832) b!4135058))

(assert (= (and d!1224711 (not res!1690830)) b!4135059))

(assert (=> b!4135057 m!4731733))

(declare-fun m!4731779 () Bool)

(assert (=> b!4135057 m!4731779))

(assert (=> b!4135058 m!4731727))

(assert (=> b!4135058 m!4731595))

(assert (=> b!4135058 m!4731727))

(assert (=> b!4135058 m!4731595))

(declare-fun m!4731781 () Bool)

(assert (=> b!4135058 m!4731781))

(assert (=> b!4135059 m!4731593))

(assert (=> b!4135059 m!4731463))

(assert (=> b!4134730 d!1224711))

(declare-fun d!1224719 () Bool)

(declare-fun res!1690834 () Bool)

(declare-fun e!2565634 () Bool)

(assert (=> d!1224719 (=> (not res!1690834) (not e!2565634))))

(assert (=> d!1224719 (= res!1690834 (validRegex!5515 (regex!7344 r!4008)))))

(assert (=> d!1224719 (= (ruleValid!3150 thiss!25645 r!4008) e!2565634)))

(declare-fun b!4135060 () Bool)

(declare-fun res!1690835 () Bool)

(assert (=> b!4135060 (=> (not res!1690835) (not e!2565634))))

(assert (=> b!4135060 (= res!1690835 (not (nullable!4307 (regex!7344 r!4008))))))

(declare-fun b!4135061 () Bool)

(assert (=> b!4135061 (= e!2565634 (not (= (tag!8204 r!4008) (String!51621 ""))))))

(assert (= (and d!1224719 res!1690834) b!4135060))

(assert (= (and b!4135060 res!1690835) b!4135061))

(assert (=> d!1224719 m!4731731))

(assert (=> b!4135060 m!4731739))

(assert (=> b!4134734 d!1224719))

(declare-fun d!1224721 () Bool)

(assert (=> d!1224721 (= (inv!59401 (tag!8204 rBis!149)) (= (mod (str.len (value!229857 (tag!8204 rBis!149))) 2) 0))))

(assert (=> b!4134723 d!1224721))

(declare-fun d!1224723 () Bool)

(declare-fun res!1690836 () Bool)

(declare-fun e!2565635 () Bool)

(assert (=> d!1224723 (=> (not res!1690836) (not e!2565635))))

(assert (=> d!1224723 (= res!1690836 (semiInverseModEq!3171 (toChars!9867 (transformation!7344 rBis!149)) (toValue!10008 (transformation!7344 rBis!149))))))

(assert (=> d!1224723 (= (inv!59404 (transformation!7344 rBis!149)) e!2565635)))

(declare-fun b!4135062 () Bool)

(assert (=> b!4135062 (= e!2565635 (equivClasses!3070 (toChars!9867 (transformation!7344 rBis!149)) (toValue!10008 (transformation!7344 rBis!149))))))

(assert (= (and d!1224723 res!1690836) b!4135062))

(declare-fun m!4731783 () Bool)

(assert (=> d!1224723 m!4731783))

(declare-fun m!4731785 () Bool)

(assert (=> b!4135062 m!4731785))

(assert (=> b!4134723 d!1224723))

(declare-fun d!1224725 () Bool)

(assert (=> d!1224725 (= (isEmpty!26685 p!2912) ((_ is Nil!44799) p!2912))))

(assert (=> b!4134724 d!1224725))

(declare-fun d!1224727 () Bool)

(declare-fun res!1690853 () Bool)

(declare-fun e!2565647 () Bool)

(assert (=> d!1224727 (=> (not res!1690853) (not e!2565647))))

(assert (=> d!1224727 (= res!1690853 (not (isEmpty!26685 (originalCharacters!7840 lt!1474147))))))

(assert (=> d!1224727 (= (inv!59405 lt!1474147) e!2565647)))

(declare-fun b!4135079 () Bool)

(declare-fun res!1690854 () Bool)

(assert (=> b!4135079 (=> (not res!1690854) (not e!2565647))))

(assert (=> b!4135079 (= res!1690854 (= (originalCharacters!7840 lt!1474147) (list!16403 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 lt!1474147))) (value!229858 lt!1474147)))))))

(declare-fun b!4135080 () Bool)

(assert (=> b!4135080 (= e!2565647 (= (size!33156 lt!1474147) (size!33158 (originalCharacters!7840 lt!1474147))))))

(assert (= (and d!1224727 res!1690853) b!4135079))

(assert (= (and b!4135079 res!1690854) b!4135080))

(declare-fun b_lambda!121499 () Bool)

(assert (=> (not b_lambda!121499) (not b!4135079)))

(declare-fun t!341887 () Bool)

(declare-fun tb!248183 () Bool)

(assert (=> (and b!4134725 (= (toChars!9867 (transformation!7344 rBis!149)) (toChars!9867 (transformation!7344 (rule!10438 lt!1474147)))) t!341887) tb!248183))

(declare-fun b!4135085 () Bool)

(declare-fun e!2565650 () Bool)

(declare-fun tp!1260383 () Bool)

(assert (=> b!4135085 (= e!2565650 (and (inv!59408 (c!709204 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 lt!1474147))) (value!229858 lt!1474147)))) tp!1260383))))

(declare-fun result!301710 () Bool)

(assert (=> tb!248183 (= result!301710 (and (inv!59409 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 lt!1474147))) (value!229858 lt!1474147))) e!2565650))))

(assert (= tb!248183 b!4135085))

(declare-fun m!4731791 () Bool)

(assert (=> b!4135085 m!4731791))

(declare-fun m!4731793 () Bool)

(assert (=> tb!248183 m!4731793))

(assert (=> b!4135079 t!341887))

(declare-fun b_and!320769 () Bool)

(assert (= b_and!320745 (and (=> t!341887 result!301710) b_and!320769)))

(declare-fun t!341889 () Bool)

(declare-fun tb!248185 () Bool)

(assert (=> (and b!4134722 (= (toChars!9867 (transformation!7344 r!4008)) (toChars!9867 (transformation!7344 (rule!10438 lt!1474147)))) t!341889) tb!248185))

(declare-fun result!301712 () Bool)

(assert (= result!301712 result!301710))

(assert (=> b!4135079 t!341889))

(declare-fun b_and!320771 () Bool)

(assert (= b_and!320747 (and (=> t!341889 result!301712) b_and!320771)))

(declare-fun tb!248187 () Bool)

(declare-fun t!341891 () Bool)

(assert (=> (and b!4134741 (= (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toChars!9867 (transformation!7344 (rule!10438 lt!1474147)))) t!341891) tb!248187))

(declare-fun result!301714 () Bool)

(assert (= result!301714 result!301710))

(assert (=> b!4135079 t!341891))

(declare-fun b_and!320773 () Bool)

(assert (= b_and!320749 (and (=> t!341891 result!301714) b_and!320773)))

(declare-fun m!4731795 () Bool)

(assert (=> d!1224727 m!4731795))

(declare-fun m!4731797 () Bool)

(assert (=> b!4135079 m!4731797))

(assert (=> b!4135079 m!4731797))

(declare-fun m!4731799 () Bool)

(assert (=> b!4135079 m!4731799))

(declare-fun m!4731801 () Bool)

(assert (=> b!4135080 m!4731801))

(assert (=> b!4134743 d!1224727))

(declare-fun d!1224729 () Bool)

(declare-fun lt!1474265 () Bool)

(assert (=> d!1224729 (= lt!1474265 (select (content!6911 (tail!6499 rules!3756)) r!4008))))

(declare-fun e!2565655 () Bool)

(assert (=> d!1224729 (= lt!1474265 e!2565655)))

(declare-fun res!1690856 () Bool)

(assert (=> d!1224729 (=> (not res!1690856) (not e!2565655))))

(assert (=> d!1224729 (= res!1690856 ((_ is Cons!44800) (tail!6499 rules!3756)))))

(assert (=> d!1224729 (= (contains!9024 (tail!6499 rules!3756) r!4008) lt!1474265)))

(declare-fun b!4135094 () Bool)

(declare-fun e!2565656 () Bool)

(assert (=> b!4135094 (= e!2565655 e!2565656)))

(declare-fun res!1690855 () Bool)

(assert (=> b!4135094 (=> res!1690855 e!2565656)))

(assert (=> b!4135094 (= res!1690855 (= (h!50220 (tail!6499 rules!3756)) r!4008))))

(declare-fun b!4135095 () Bool)

(assert (=> b!4135095 (= e!2565656 (contains!9024 (t!341849 (tail!6499 rules!3756)) r!4008))))

(assert (= (and d!1224729 res!1690856) b!4135094))

(assert (= (and b!4135094 (not res!1690855)) b!4135095))

(assert (=> d!1224729 m!4731437))

(declare-fun m!4731803 () Bool)

(assert (=> d!1224729 m!4731803))

(declare-fun m!4731805 () Bool)

(assert (=> d!1224729 m!4731805))

(declare-fun m!4731807 () Bool)

(assert (=> b!4135095 m!4731807))

(assert (=> b!4134744 d!1224729))

(declare-fun d!1224731 () Bool)

(assert (=> d!1224731 (= (tail!6499 rules!3756) (t!341849 rules!3756))))

(assert (=> b!4134744 d!1224731))

(declare-fun d!1224733 () Bool)

(assert (=> d!1224733 (contains!9024 (tail!6499 rules!3756) r!4008)))

(declare-fun lt!1474268 () Unit!64115)

(declare-fun choose!25271 (List!44924 Rule!14488 Rule!14488) Unit!64115)

(assert (=> d!1224733 (= lt!1474268 (choose!25271 rules!3756 rBis!149 r!4008))))

(declare-fun e!2565674 () Bool)

(assert (=> d!1224733 e!2565674))

(declare-fun res!1690859 () Bool)

(assert (=> d!1224733 (=> (not res!1690859) (not e!2565674))))

(assert (=> d!1224733 (= res!1690859 (contains!9024 rules!3756 rBis!149))))

(assert (=> d!1224733 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!48 rules!3756 rBis!149 r!4008) lt!1474268)))

(declare-fun b!4135125 () Bool)

(assert (=> b!4135125 (= e!2565674 (contains!9024 rules!3756 r!4008))))

(assert (= (and d!1224733 res!1690859) b!4135125))

(assert (=> d!1224733 m!4731437))

(assert (=> d!1224733 m!4731437))

(assert (=> d!1224733 m!4731439))

(declare-fun m!4731809 () Bool)

(assert (=> d!1224733 m!4731809))

(assert (=> d!1224733 m!4731411))

(assert (=> b!4135125 m!4731433))

(assert (=> b!4134744 d!1224733))

(declare-fun d!1224735 () Bool)

(assert (=> d!1224735 (= (isEmpty!26687 lt!1474149) (not ((_ is Some!9649) lt!1474149)))))

(assert (=> b!4134744 d!1224735))

(declare-fun d!1224737 () Bool)

(declare-fun e!2565684 () Bool)

(assert (=> d!1224737 e!2565684))

(declare-fun res!1690875 () Bool)

(assert (=> d!1224737 (=> res!1690875 e!2565684)))

(declare-fun lt!1474283 () Option!9650)

(assert (=> d!1224737 (= res!1690875 (isEmpty!26687 lt!1474283))))

(declare-fun e!2565686 () Option!9650)

(assert (=> d!1224737 (= lt!1474283 e!2565686)))

(declare-fun c!709265 () Bool)

(declare-datatypes ((tuple2!43202 0))(
  ( (tuple2!43203 (_1!24735 List!44923) (_2!24735 List!44923)) )
))
(declare-fun lt!1474281 () tuple2!43202)

(assert (=> d!1224737 (= c!709265 (isEmpty!26685 (_1!24735 lt!1474281)))))

(declare-fun findLongestMatch!1424 (Regex!12249 List!44923) tuple2!43202)

(assert (=> d!1224737 (= lt!1474281 (findLongestMatch!1424 (regex!7344 rBis!149) input!3238))))

(assert (=> d!1224737 (ruleValid!3150 thiss!25645 rBis!149)))

(assert (=> d!1224737 (= (maxPrefixOneRule!3062 thiss!25645 rBis!149 input!3238) lt!1474283)))

(declare-fun b!4135144 () Bool)

(declare-fun e!2565683 () Bool)

(assert (=> b!4135144 (= e!2565683 (= (size!33156 (_1!24733 (get!14611 lt!1474283))) (size!33158 (originalCharacters!7840 (_1!24733 (get!14611 lt!1474283))))))))

(declare-fun b!4135145 () Bool)

(declare-fun res!1690876 () Bool)

(assert (=> b!4135145 (=> (not res!1690876) (not e!2565683))))

(assert (=> b!4135145 (= res!1690876 (= (rule!10438 (_1!24733 (get!14611 lt!1474283))) rBis!149))))

(declare-fun b!4135146 () Bool)

(declare-fun res!1690878 () Bool)

(assert (=> b!4135146 (=> (not res!1690878) (not e!2565683))))

(assert (=> b!4135146 (= res!1690878 (< (size!33158 (_2!24733 (get!14611 lt!1474283))) (size!33158 input!3238)))))

(declare-fun b!4135147 () Bool)

(assert (=> b!4135147 (= e!2565686 None!9649)))

(declare-fun b!4135148 () Bool)

(assert (=> b!4135148 (= e!2565684 e!2565683)))

(declare-fun res!1690879 () Bool)

(assert (=> b!4135148 (=> (not res!1690879) (not e!2565683))))

(assert (=> b!4135148 (= res!1690879 (matchR!6078 (regex!7344 rBis!149) (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474283))))))))

(declare-fun b!4135149 () Bool)

(declare-fun res!1690877 () Bool)

(assert (=> b!4135149 (=> (not res!1690877) (not e!2565683))))

(assert (=> b!4135149 (= res!1690877 (= (++!11590 (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474283)))) (_2!24733 (get!14611 lt!1474283))) input!3238))))

(declare-fun b!4135150 () Bool)

(assert (=> b!4135150 (= e!2565686 (Some!9649 (tuple2!43199 (Token!13619 (apply!10417 (transformation!7344 rBis!149) (seqFromList!5461 (_1!24735 lt!1474281))) rBis!149 (size!33157 (seqFromList!5461 (_1!24735 lt!1474281))) (_1!24735 lt!1474281)) (_2!24735 lt!1474281))))))

(declare-fun lt!1474282 () Unit!64115)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1484 (Regex!12249 List!44923) Unit!64115)

(assert (=> b!4135150 (= lt!1474282 (longestMatchIsAcceptedByMatchOrIsEmpty!1484 (regex!7344 rBis!149) input!3238))))

(declare-fun res!1690880 () Bool)

(declare-fun findLongestMatchInner!1511 (Regex!12249 List!44923 Int List!44923 List!44923 Int) tuple2!43202)

(assert (=> b!4135150 (= res!1690880 (isEmpty!26685 (_1!24735 (findLongestMatchInner!1511 (regex!7344 rBis!149) Nil!44799 (size!33158 Nil!44799) input!3238 input!3238 (size!33158 input!3238)))))))

(declare-fun e!2565685 () Bool)

(assert (=> b!4135150 (=> res!1690880 e!2565685)))

(assert (=> b!4135150 e!2565685))

(declare-fun lt!1474280 () Unit!64115)

(assert (=> b!4135150 (= lt!1474280 lt!1474282)))

(declare-fun lt!1474279 () Unit!64115)

(assert (=> b!4135150 (= lt!1474279 (lemmaSemiInverse!2202 (transformation!7344 rBis!149) (seqFromList!5461 (_1!24735 lt!1474281))))))

(declare-fun b!4135151 () Bool)

(assert (=> b!4135151 (= e!2565685 (matchR!6078 (regex!7344 rBis!149) (_1!24735 (findLongestMatchInner!1511 (regex!7344 rBis!149) Nil!44799 (size!33158 Nil!44799) input!3238 input!3238 (size!33158 input!3238)))))))

(declare-fun b!4135152 () Bool)

(declare-fun res!1690874 () Bool)

(assert (=> b!4135152 (=> (not res!1690874) (not e!2565683))))

(assert (=> b!4135152 (= res!1690874 (= (value!229858 (_1!24733 (get!14611 lt!1474283))) (apply!10417 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474283)))) (seqFromList!5461 (originalCharacters!7840 (_1!24733 (get!14611 lt!1474283)))))))))

(assert (= (and d!1224737 c!709265) b!4135147))

(assert (= (and d!1224737 (not c!709265)) b!4135150))

(assert (= (and b!4135150 (not res!1690880)) b!4135151))

(assert (= (and d!1224737 (not res!1690875)) b!4135148))

(assert (= (and b!4135148 res!1690879) b!4135149))

(assert (= (and b!4135149 res!1690877) b!4135146))

(assert (= (and b!4135146 res!1690878) b!4135145))

(assert (= (and b!4135145 res!1690876) b!4135152))

(assert (= (and b!4135152 res!1690874) b!4135144))

(declare-fun m!4731815 () Bool)

(assert (=> b!4135149 m!4731815))

(declare-fun m!4731817 () Bool)

(assert (=> b!4135149 m!4731817))

(assert (=> b!4135149 m!4731817))

(declare-fun m!4731819 () Bool)

(assert (=> b!4135149 m!4731819))

(assert (=> b!4135149 m!4731819))

(declare-fun m!4731821 () Bool)

(assert (=> b!4135149 m!4731821))

(assert (=> b!4135148 m!4731815))

(assert (=> b!4135148 m!4731817))

(assert (=> b!4135148 m!4731817))

(assert (=> b!4135148 m!4731819))

(assert (=> b!4135148 m!4731819))

(declare-fun m!4731823 () Bool)

(assert (=> b!4135148 m!4731823))

(assert (=> b!4135145 m!4731815))

(declare-fun m!4731825 () Bool)

(assert (=> b!4135150 m!4731825))

(declare-fun m!4731827 () Bool)

(assert (=> b!4135150 m!4731827))

(declare-fun m!4731829 () Bool)

(assert (=> b!4135150 m!4731829))

(declare-fun m!4731831 () Bool)

(assert (=> b!4135150 m!4731831))

(assert (=> b!4135150 m!4731829))

(declare-fun m!4731833 () Bool)

(assert (=> b!4135150 m!4731833))

(declare-fun m!4731835 () Bool)

(assert (=> b!4135150 m!4731835))

(assert (=> b!4135150 m!4731827))

(assert (=> b!4135150 m!4731593))

(declare-fun m!4731837 () Bool)

(assert (=> b!4135150 m!4731837))

(assert (=> b!4135150 m!4731593))

(assert (=> b!4135150 m!4731829))

(declare-fun m!4731839 () Bool)

(assert (=> b!4135150 m!4731839))

(assert (=> b!4135150 m!4731829))

(declare-fun m!4731841 () Bool)

(assert (=> d!1224737 m!4731841))

(declare-fun m!4731843 () Bool)

(assert (=> d!1224737 m!4731843))

(declare-fun m!4731845 () Bool)

(assert (=> d!1224737 m!4731845))

(assert (=> d!1224737 m!4731459))

(assert (=> b!4135152 m!4731815))

(declare-fun m!4731847 () Bool)

(assert (=> b!4135152 m!4731847))

(assert (=> b!4135152 m!4731847))

(declare-fun m!4731849 () Bool)

(assert (=> b!4135152 m!4731849))

(assert (=> b!4135151 m!4731827))

(assert (=> b!4135151 m!4731593))

(assert (=> b!4135151 m!4731827))

(assert (=> b!4135151 m!4731593))

(assert (=> b!4135151 m!4731837))

(declare-fun m!4731851 () Bool)

(assert (=> b!4135151 m!4731851))

(assert (=> b!4135146 m!4731815))

(declare-fun m!4731853 () Bool)

(assert (=> b!4135146 m!4731853))

(assert (=> b!4135146 m!4731593))

(assert (=> b!4135144 m!4731815))

(declare-fun m!4731855 () Bool)

(assert (=> b!4135144 m!4731855))

(assert (=> b!4134744 d!1224737))

(declare-fun d!1224739 () Bool)

(assert (=> d!1224739 (not (= rBis!149 r!4008))))

(declare-fun lt!1474286 () Unit!64115)

(declare-fun choose!25272 (LexerInterface!6933 List!44924 Rule!14488 Rule!14488) Unit!64115)

(assert (=> d!1224739 (= lt!1474286 (choose!25272 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1224739 (contains!9024 rules!3756 rBis!149)))

(assert (=> d!1224739 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!42 thiss!25645 rules!3756 rBis!149 r!4008) lt!1474286)))

(declare-fun bs!595104 () Bool)

(assert (= bs!595104 d!1224739))

(declare-fun m!4731857 () Bool)

(assert (=> bs!595104 m!4731857))

(assert (=> bs!595104 m!4731411))

(assert (=> b!4134744 d!1224739))

(declare-fun d!1224741 () Bool)

(declare-fun lt!1474289 () Int)

(assert (=> d!1224741 (= lt!1474289 (size!33158 (list!16403 (charsOf!4943 (_1!24733 (get!14611 lt!1474149))))))))

(declare-fun size!33160 (Conc!13555) Int)

(assert (=> d!1224741 (= lt!1474289 (size!33160 (c!709204 (charsOf!4943 (_1!24733 (get!14611 lt!1474149))))))))

(assert (=> d!1224741 (= (size!33157 (charsOf!4943 (_1!24733 (get!14611 lt!1474149)))) lt!1474289)))

(declare-fun bs!595105 () Bool)

(assert (= bs!595105 d!1224741))

(assert (=> bs!595105 m!4731415))

(declare-fun m!4731859 () Bool)

(assert (=> bs!595105 m!4731859))

(assert (=> bs!595105 m!4731859))

(declare-fun m!4731861 () Bool)

(assert (=> bs!595105 m!4731861))

(declare-fun m!4731863 () Bool)

(assert (=> bs!595105 m!4731863))

(assert (=> b!4134733 d!1224741))

(declare-fun d!1224743 () Bool)

(declare-fun lt!1474292 () BalanceConc!26704)

(assert (=> d!1224743 (= (list!16403 lt!1474292) (originalCharacters!7840 (_1!24733 (get!14611 lt!1474149))))))

(assert (=> d!1224743 (= lt!1474292 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149))))) (value!229858 (_1!24733 (get!14611 lt!1474149)))))))

(assert (=> d!1224743 (= (charsOf!4943 (_1!24733 (get!14611 lt!1474149))) lt!1474292)))

(declare-fun b_lambda!121507 () Bool)

(assert (=> (not b_lambda!121507) (not d!1224743)))

(declare-fun t!341902 () Bool)

(declare-fun tb!248197 () Bool)

(assert (=> (and b!4134725 (= (toChars!9867 (transformation!7344 rBis!149)) (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149)))))) t!341902) tb!248197))

(declare-fun b!4135153 () Bool)

(declare-fun e!2565687 () Bool)

(declare-fun tp!1260423 () Bool)

(assert (=> b!4135153 (= e!2565687 (and (inv!59408 (c!709204 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149))))) (value!229858 (_1!24733 (get!14611 lt!1474149)))))) tp!1260423))))

(declare-fun result!301728 () Bool)

(assert (=> tb!248197 (= result!301728 (and (inv!59409 (dynLambda!19236 (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149))))) (value!229858 (_1!24733 (get!14611 lt!1474149))))) e!2565687))))

(assert (= tb!248197 b!4135153))

(declare-fun m!4731865 () Bool)

(assert (=> b!4135153 m!4731865))

(declare-fun m!4731867 () Bool)

(assert (=> tb!248197 m!4731867))

(assert (=> d!1224743 t!341902))

(declare-fun b_and!320779 () Bool)

(assert (= b_and!320769 (and (=> t!341902 result!301728) b_and!320779)))

(declare-fun t!341904 () Bool)

(declare-fun tb!248199 () Bool)

(assert (=> (and b!4134722 (= (toChars!9867 (transformation!7344 r!4008)) (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149)))))) t!341904) tb!248199))

(declare-fun result!301730 () Bool)

(assert (= result!301730 result!301728))

(assert (=> d!1224743 t!341904))

(declare-fun b_and!320781 () Bool)

(assert (= b_and!320771 (and (=> t!341904 result!301730) b_and!320781)))

(declare-fun t!341906 () Bool)

(declare-fun tb!248201 () Bool)

(assert (=> (and b!4134741 (= (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149)))))) t!341906) tb!248201))

(declare-fun result!301732 () Bool)

(assert (= result!301732 result!301728))

(assert (=> d!1224743 t!341906))

(declare-fun b_and!320783 () Bool)

(assert (= b_and!320773 (and (=> t!341906 result!301732) b_and!320783)))

(declare-fun m!4731869 () Bool)

(assert (=> d!1224743 m!4731869))

(declare-fun m!4731871 () Bool)

(assert (=> d!1224743 m!4731871))

(assert (=> b!4134733 d!1224743))

(declare-fun d!1224745 () Bool)

(assert (=> d!1224745 (= (get!14611 lt!1474149) (v!40271 lt!1474149))))

(assert (=> b!4134733 d!1224745))

(declare-fun b!4135158 () Bool)

(declare-fun e!2565690 () Bool)

(declare-fun tp!1260426 () Bool)

(assert (=> b!4135158 (= e!2565690 (and tp_is_empty!21421 tp!1260426))))

(assert (=> b!4134742 (= tp!1260366 e!2565690)))

(assert (= (and b!4134742 ((_ is Cons!44799) (t!341848 p!2912))) b!4135158))

(declare-fun b!4135169 () Bool)

(declare-fun b_free!117491 () Bool)

(declare-fun b_next!118195 () Bool)

(assert (=> b!4135169 (= b_free!117491 (not b_next!118195))))

(declare-fun tb!248203 () Bool)

(declare-fun t!341908 () Bool)

(assert (=> (and b!4135169 (= (toValue!10008 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toValue!10008 (transformation!7344 r!4008))) t!341908) tb!248203))

(declare-fun result!301738 () Bool)

(assert (= result!301738 result!301694))

(assert (=> d!1224615 t!341908))

(assert (=> d!1224639 t!341908))

(declare-fun b_and!320785 () Bool)

(declare-fun tp!1260437 () Bool)

(assert (=> b!4135169 (= tp!1260437 (and (=> t!341908 result!301738) b_and!320785))))

(declare-fun b_free!117493 () Bool)

(declare-fun b_next!118197 () Bool)

(assert (=> b!4135169 (= b_free!117493 (not b_next!118197))))

(declare-fun t!341910 () Bool)

(declare-fun tb!248205 () Bool)

(assert (=> (and b!4135169 (= (toChars!9867 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toChars!9867 (transformation!7344 r!4008))) t!341910) tb!248205))

(declare-fun result!301740 () Bool)

(assert (= result!301740 result!301686))

(assert (=> d!1224615 t!341910))

(declare-fun tb!248207 () Bool)

(declare-fun t!341912 () Bool)

(assert (=> (and b!4135169 (= (toChars!9867 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toChars!9867 (transformation!7344 (rule!10438 lt!1474147)))) t!341912) tb!248207))

(declare-fun result!301742 () Bool)

(assert (= result!301742 result!301710))

(assert (=> b!4135079 t!341912))

(declare-fun tb!248209 () Bool)

(declare-fun t!341914 () Bool)

(assert (=> (and b!4135169 (= (toChars!9867 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toChars!9867 (transformation!7344 (rule!10438 (_1!24733 (get!14611 lt!1474149)))))) t!341914) tb!248209))

(declare-fun result!301744 () Bool)

(assert (= result!301744 result!301728))

(assert (=> d!1224743 t!341914))

(declare-fun b_and!320787 () Bool)

(declare-fun tp!1260436 () Bool)

(assert (=> b!4135169 (= tp!1260436 (and (=> t!341910 result!301740) (=> t!341912 result!301742) (=> t!341914 result!301744) b_and!320787))))

(declare-fun e!2565701 () Bool)

(assert (=> b!4135169 (= e!2565701 (and tp!1260437 tp!1260436))))

(declare-fun tp!1260438 () Bool)

(declare-fun e!2565702 () Bool)

(declare-fun b!4135168 () Bool)

(assert (=> b!4135168 (= e!2565702 (and tp!1260438 (inv!59401 (tag!8204 (h!50220 (t!341849 rules!3756)))) (inv!59404 (transformation!7344 (h!50220 (t!341849 rules!3756)))) e!2565701))))

(declare-fun b!4135167 () Bool)

(declare-fun e!2565699 () Bool)

(declare-fun tp!1260435 () Bool)

(assert (=> b!4135167 (= e!2565699 (and e!2565702 tp!1260435))))

(assert (=> b!4134736 (= tp!1260372 e!2565699)))

(assert (= b!4135168 b!4135169))

(assert (= b!4135167 b!4135168))

(assert (= (and b!4134736 ((_ is Cons!44800) (t!341849 rules!3756))) b!4135167))

(declare-fun m!4731873 () Bool)

(assert (=> b!4135168 m!4731873))

(declare-fun m!4731875 () Bool)

(assert (=> b!4135168 m!4731875))

(declare-fun b!4135181 () Bool)

(declare-fun e!2565705 () Bool)

(declare-fun tp!1260451 () Bool)

(declare-fun tp!1260453 () Bool)

(assert (=> b!4135181 (= e!2565705 (and tp!1260451 tp!1260453))))

(assert (=> b!4134723 (= tp!1260365 e!2565705)))

(declare-fun b!4135183 () Bool)

(declare-fun tp!1260450 () Bool)

(declare-fun tp!1260452 () Bool)

(assert (=> b!4135183 (= e!2565705 (and tp!1260450 tp!1260452))))

(declare-fun b!4135180 () Bool)

(assert (=> b!4135180 (= e!2565705 tp_is_empty!21421)))

(declare-fun b!4135182 () Bool)

(declare-fun tp!1260449 () Bool)

(assert (=> b!4135182 (= e!2565705 tp!1260449)))

(assert (= (and b!4134723 ((_ is ElementMatch!12249) (regex!7344 rBis!149))) b!4135180))

(assert (= (and b!4134723 ((_ is Concat!19824) (regex!7344 rBis!149))) b!4135181))

(assert (= (and b!4134723 ((_ is Star!12249) (regex!7344 rBis!149))) b!4135182))

(assert (= (and b!4134723 ((_ is Union!12249) (regex!7344 rBis!149))) b!4135183))

(declare-fun b!4135184 () Bool)

(declare-fun e!2565706 () Bool)

(declare-fun tp!1260454 () Bool)

(assert (=> b!4135184 (= e!2565706 (and tp_is_empty!21421 tp!1260454))))

(assert (=> b!4134738 (= tp!1260362 e!2565706)))

(assert (= (and b!4134738 ((_ is Cons!44799) (t!341848 input!3238))) b!4135184))

(declare-fun b!4135186 () Bool)

(declare-fun e!2565707 () Bool)

(declare-fun tp!1260457 () Bool)

(declare-fun tp!1260459 () Bool)

(assert (=> b!4135186 (= e!2565707 (and tp!1260457 tp!1260459))))

(assert (=> b!4134727 (= tp!1260369 e!2565707)))

(declare-fun b!4135188 () Bool)

(declare-fun tp!1260456 () Bool)

(declare-fun tp!1260458 () Bool)

(assert (=> b!4135188 (= e!2565707 (and tp!1260456 tp!1260458))))

(declare-fun b!4135185 () Bool)

(assert (=> b!4135185 (= e!2565707 tp_is_empty!21421)))

(declare-fun b!4135187 () Bool)

(declare-fun tp!1260455 () Bool)

(assert (=> b!4135187 (= e!2565707 tp!1260455)))

(assert (= (and b!4134727 ((_ is ElementMatch!12249) (regex!7344 (h!50220 rules!3756)))) b!4135185))

(assert (= (and b!4134727 ((_ is Concat!19824) (regex!7344 (h!50220 rules!3756)))) b!4135186))

(assert (= (and b!4134727 ((_ is Star!12249) (regex!7344 (h!50220 rules!3756)))) b!4135187))

(assert (= (and b!4134727 ((_ is Union!12249) (regex!7344 (h!50220 rules!3756)))) b!4135188))

(declare-fun b!4135190 () Bool)

(declare-fun e!2565708 () Bool)

(declare-fun tp!1260462 () Bool)

(declare-fun tp!1260464 () Bool)

(assert (=> b!4135190 (= e!2565708 (and tp!1260462 tp!1260464))))

(assert (=> b!4134728 (= tp!1260363 e!2565708)))

(declare-fun b!4135192 () Bool)

(declare-fun tp!1260461 () Bool)

(declare-fun tp!1260463 () Bool)

(assert (=> b!4135192 (= e!2565708 (and tp!1260461 tp!1260463))))

(declare-fun b!4135189 () Bool)

(assert (=> b!4135189 (= e!2565708 tp_is_empty!21421)))

(declare-fun b!4135191 () Bool)

(declare-fun tp!1260460 () Bool)

(assert (=> b!4135191 (= e!2565708 tp!1260460)))

(assert (= (and b!4134728 ((_ is ElementMatch!12249) (regex!7344 r!4008))) b!4135189))

(assert (= (and b!4134728 ((_ is Concat!19824) (regex!7344 r!4008))) b!4135190))

(assert (= (and b!4134728 ((_ is Star!12249) (regex!7344 r!4008))) b!4135191))

(assert (= (and b!4134728 ((_ is Union!12249) (regex!7344 r!4008))) b!4135192))

(declare-fun b_lambda!121509 () Bool)

(assert (= b_lambda!121495 (or (and b!4134725 b_free!117475 (= (toValue!10008 (transformation!7344 rBis!149)) (toValue!10008 (transformation!7344 r!4008)))) (and b!4134722 b_free!117479) (and b!4134741 b_free!117483 (= (toValue!10008 (transformation!7344 (h!50220 rules!3756))) (toValue!10008 (transformation!7344 r!4008)))) (and b!4135169 b_free!117491 (= (toValue!10008 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toValue!10008 (transformation!7344 r!4008)))) b_lambda!121509)))

(declare-fun b_lambda!121511 () Bool)

(assert (= b_lambda!121491 (or (and b!4134725 b_free!117477 (= (toChars!9867 (transformation!7344 rBis!149)) (toChars!9867 (transformation!7344 r!4008)))) (and b!4134722 b_free!117481) (and b!4134741 b_free!117485 (= (toChars!9867 (transformation!7344 (h!50220 rules!3756))) (toChars!9867 (transformation!7344 r!4008)))) (and b!4135169 b_free!117493 (= (toChars!9867 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toChars!9867 (transformation!7344 r!4008)))) b_lambda!121511)))

(declare-fun b_lambda!121513 () Bool)

(assert (= b_lambda!121493 (or (and b!4134725 b_free!117475 (= (toValue!10008 (transformation!7344 rBis!149)) (toValue!10008 (transformation!7344 r!4008)))) (and b!4134722 b_free!117479) (and b!4134741 b_free!117483 (= (toValue!10008 (transformation!7344 (h!50220 rules!3756))) (toValue!10008 (transformation!7344 r!4008)))) (and b!4135169 b_free!117491 (= (toValue!10008 (transformation!7344 (h!50220 (t!341849 rules!3756)))) (toValue!10008 (transformation!7344 r!4008)))) b_lambda!121513)))

(check-sat (not b!4135060) (not b!4135190) b_and!320783 b_and!320761 (not b!4134971) (not b!4135184) (not d!1224611) (not b_next!118185) (not b_next!118195) (not b_next!118183) (not d!1224643) (not b!4135158) (not b!4135150) (not b!4134892) (not b!4135146) (not d!1224667) tp_is_empty!21421 (not d!1224739) (not b_next!118189) (not b!4135188) (not d!1224641) (not d!1224697) (not b!4134974) (not d!1224705) (not b!4134887) (not d!1224737) (not d!1224741) b_and!320787 (not b!4135148) (not b!4135095) (not b!4134833) (not b!4135181) (not b!4134753) (not tb!248171) (not d!1224743) (not b!4135057) (not b!4134981) (not b_lambda!121511) (not d!1224709) (not d!1224607) (not d!1224615) (not b!4134975) (not b_lambda!121509) (not b!4135125) (not b!4135059) (not d!1224703) (not d!1224733) (not b!4134747) (not b!4135182) (not b!4134986) (not b_lambda!121507) (not b!4135168) (not b_next!118187) (not b_lambda!121499) (not b!4134907) b_and!320759 (not tb!248165) (not b!4135191) (not b!4135085) (not d!1224723) (not b!4134985) (not b!4135032) (not bm!290408) (not d!1224727) (not b!4135145) (not b!4135183) (not b!4135025) (not d!1224661) (not b!4135144) (not b!4135029) (not b!4134895) (not b!4135079) b_and!320785 (not b_next!118197) (not b_next!118181) (not b!4135187) (not b!4134840) (not d!1224719) (not b!4135153) (not b!4135152) b_and!320757 (not b!4134888) (not b_next!118179) (not b!4135167) (not b!4135186) (not bm!290405) (not b_lambda!121513) (not b!4134890) (not b!4135080) (not b!4134894) (not tb!248197) (not b!4134891) (not b!4134972) (not b!4135192) (not d!1224665) (not b!4135062) (not b!4134976) (not b!4135058) (not d!1224707) (not b!4135151) (not d!1224729) (not tb!248183) (not d!1224657) b_and!320779 (not b!4135149) (not d!1224649) (not b!4134915) b_and!320781 (not b!4134893))
(check-sat (not b_next!118185) (not b_next!118189) b_and!320787 (not b_next!118187) b_and!320759 b_and!320783 b_and!320761 b_and!320779 b_and!320781 (not b_next!118195) (not b_next!118183) b_and!320785 (not b_next!118197) (not b_next!118181) b_and!320757 (not b_next!118179))
