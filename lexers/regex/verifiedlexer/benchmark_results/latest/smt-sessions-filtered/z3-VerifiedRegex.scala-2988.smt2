; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!178114 () Bool)

(assert start!178114)

(declare-fun b!1787755 () Bool)

(declare-fun b_free!49727 () Bool)

(declare-fun b_next!50431 () Bool)

(assert (=> b!1787755 (= b_free!49727 (not b_next!50431))))

(declare-fun tp!505604 () Bool)

(declare-fun b_and!137739 () Bool)

(assert (=> b!1787755 (= tp!505604 b_and!137739)))

(declare-fun b_free!49729 () Bool)

(declare-fun b_next!50433 () Bool)

(assert (=> b!1787755 (= b_free!49729 (not b_next!50433))))

(declare-fun tp!505601 () Bool)

(declare-fun b_and!137741 () Bool)

(assert (=> b!1787755 (= tp!505601 b_and!137741)))

(declare-fun b!1787756 () Bool)

(declare-fun b_free!49731 () Bool)

(declare-fun b_next!50435 () Bool)

(assert (=> b!1787756 (= b_free!49731 (not b_next!50435))))

(declare-fun tp!505599 () Bool)

(declare-fun b_and!137743 () Bool)

(assert (=> b!1787756 (= tp!505599 b_and!137743)))

(declare-fun b_free!49733 () Bool)

(declare-fun b_next!50437 () Bool)

(assert (=> b!1787756 (= b_free!49733 (not b_next!50437))))

(declare-fun tp!505602 () Bool)

(declare-fun b_and!137745 () Bool)

(assert (=> b!1787756 (= tp!505602 b_and!137745)))

(declare-fun b!1787740 () Bool)

(declare-fun b_free!49735 () Bool)

(declare-fun b_next!50439 () Bool)

(assert (=> b!1787740 (= b_free!49735 (not b_next!50439))))

(declare-fun tp!505600 () Bool)

(declare-fun b_and!137747 () Bool)

(assert (=> b!1787740 (= tp!505600 b_and!137747)))

(declare-fun b_free!49737 () Bool)

(declare-fun b_next!50441 () Bool)

(assert (=> b!1787740 (= b_free!49737 (not b_next!50441))))

(declare-fun tp!505606 () Bool)

(declare-fun b_and!137749 () Bool)

(assert (=> b!1787740 (= tp!505606 b_and!137749)))

(declare-fun b!1787784 () Bool)

(declare-fun e!1144317 () Bool)

(assert (=> b!1787784 (= e!1144317 true)))

(declare-fun b!1787783 () Bool)

(declare-fun e!1144316 () Bool)

(assert (=> b!1787783 (= e!1144316 e!1144317)))

(declare-fun b!1787782 () Bool)

(declare-fun e!1144315 () Bool)

(assert (=> b!1787782 (= e!1144315 e!1144316)))

(declare-fun b!1787746 () Bool)

(assert (=> b!1787746 e!1144315))

(assert (= b!1787783 b!1787784))

(assert (= b!1787782 b!1787783))

(assert (= b!1787746 b!1787782))

(declare-fun order!12803 () Int)

(declare-fun order!12805 () Int)

(declare-fun lambda!70816 () Int)

(declare-datatypes ((List!19785 0))(
  ( (Nil!19715) (Cons!19715 (h!25116 (_ BitVec 16)) (t!167324 List!19785)) )
))
(declare-datatypes ((TokenValue!3627 0))(
  ( (FloatLiteralValue!7254 (text!25834 List!19785)) (TokenValueExt!3626 (__x!12556 Int)) (Broken!18135 (value!110451 List!19785)) (Object!3696) (End!3627) (Def!3627) (Underscore!3627) (Match!3627) (Else!3627) (Error!3627) (Case!3627) (If!3627) (Extends!3627) (Abstract!3627) (Class!3627) (Val!3627) (DelimiterValue!7254 (del!3687 List!19785)) (KeywordValue!3633 (value!110452 List!19785)) (CommentValue!7254 (value!110453 List!19785)) (WhitespaceValue!7254 (value!110454 List!19785)) (IndentationValue!3627 (value!110455 List!19785)) (String!22466) (Int32!3627) (Broken!18136 (value!110456 List!19785)) (Boolean!3628) (Unit!34120) (OperatorValue!3630 (op!3687 List!19785)) (IdentifierValue!7254 (value!110457 List!19785)) (IdentifierValue!7255 (value!110458 List!19785)) (WhitespaceValue!7255 (value!110459 List!19785)) (True!7254) (False!7254) (Broken!18137 (value!110460 List!19785)) (Broken!18138 (value!110461 List!19785)) (True!7255) (RightBrace!3627) (RightBracket!3627) (Colon!3627) (Null!3627) (Comma!3627) (LeftBracket!3627) (False!7255) (LeftBrace!3627) (ImaginaryLiteralValue!3627 (text!25835 List!19785)) (StringLiteralValue!10881 (value!110462 List!19785)) (EOFValue!3627 (value!110463 List!19785)) (IdentValue!3627 (value!110464 List!19785)) (DelimiterValue!7255 (value!110465 List!19785)) (DedentValue!3627 (value!110466 List!19785)) (NewLineValue!3627 (value!110467 List!19785)) (IntegerValue!10881 (value!110468 (_ BitVec 32)) (text!25836 List!19785)) (IntegerValue!10882 (value!110469 Int) (text!25837 List!19785)) (Times!3627) (Or!3627) (Equal!3627) (Minus!3627) (Broken!18139 (value!110470 List!19785)) (And!3627) (Div!3627) (LessEqual!3627) (Mod!3627) (Concat!8492) (Not!3627) (Plus!3627) (SpaceValue!3627 (value!110471 List!19785)) (IntegerValue!10883 (value!110472 Int) (text!25838 List!19785)) (StringLiteralValue!10882 (text!25839 List!19785)) (FloatLiteralValue!7255 (text!25840 List!19785)) (BytesLiteralValue!3627 (value!110473 List!19785)) (CommentValue!7255 (value!110474 List!19785)) (StringLiteralValue!10883 (value!110475 List!19785)) (ErrorTokenValue!3627 (msg!3688 List!19785)) )
))
(declare-datatypes ((C!9904 0))(
  ( (C!9905 (val!5548 Int)) )
))
(declare-datatypes ((List!19786 0))(
  ( (Nil!19716) (Cons!19716 (h!25117 C!9904) (t!167325 List!19786)) )
))
(declare-datatypes ((Regex!4865 0))(
  ( (ElementMatch!4865 (c!290660 C!9904)) (Concat!8493 (regOne!10242 Regex!4865) (regTwo!10242 Regex!4865)) (EmptyExpr!4865) (Star!4865 (reg!5194 Regex!4865)) (EmptyLang!4865) (Union!4865 (regOne!10243 Regex!4865) (regTwo!10243 Regex!4865)) )
))
(declare-datatypes ((String!22467 0))(
  ( (String!22468 (value!110476 String)) )
))
(declare-datatypes ((IArray!13123 0))(
  ( (IArray!13124 (innerList!6619 List!19786)) )
))
(declare-datatypes ((Conc!6559 0))(
  ( (Node!6559 (left!15813 Conc!6559) (right!16143 Conc!6559) (csize!13348 Int) (cheight!6770 Int)) (Leaf!9548 (xs!9435 IArray!13123) (csize!13349 Int)) (Empty!6559) )
))
(declare-datatypes ((BalanceConc!13062 0))(
  ( (BalanceConc!13063 (c!290661 Conc!6559)) )
))
(declare-datatypes ((TokenValueInjection!6914 0))(
  ( (TokenValueInjection!6915 (toValue!5064 Int) (toChars!4923 Int)) )
))
(declare-datatypes ((Rule!6874 0))(
  ( (Rule!6875 (regex!3537 Regex!4865) (tag!3941 String!22467) (isSeparator!3537 Bool) (transformation!3537 TokenValueInjection!6914)) )
))
(declare-datatypes ((Token!6640 0))(
  ( (Token!6641 (value!110477 TokenValue!3627) (rule!5629 Rule!6874) (size!15664 Int) (originalCharacters!4351 List!19786)) )
))
(declare-datatypes ((tuple2!19298 0))(
  ( (tuple2!19299 (_1!11051 Token!6640) (_2!11051 List!19786)) )
))
(declare-fun lt!696752 () tuple2!19298)

(declare-fun dynLambda!9747 (Int Int) Int)

(declare-fun dynLambda!9748 (Int Int) Int)

(assert (=> b!1787784 (< (dynLambda!9747 order!12803 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9748 order!12805 lambda!70816))))

(declare-fun order!12807 () Int)

(declare-fun dynLambda!9749 (Int Int) Int)

(assert (=> b!1787784 (< (dynLambda!9749 order!12807 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9748 order!12805 lambda!70816))))

(declare-fun b!1787732 () Bool)

(declare-fun e!1144304 () Bool)

(declare-fun e!1144281 () Bool)

(assert (=> b!1787732 (= e!1144304 e!1144281)))

(declare-fun res!806293 () Bool)

(assert (=> b!1787732 (=> res!806293 e!1144281)))

(declare-fun token!523 () Token!6640)

(assert (=> b!1787732 (= res!806293 (= (rule!5629 (_1!11051 lt!696752)) (rule!5629 token!523)))))

(declare-fun suffix!1421 () List!19786)

(assert (=> b!1787732 (= suffix!1421 (_2!11051 lt!696752))))

(declare-fun lt!696733 () List!19786)

(declare-fun lt!696771 () List!19786)

(declare-datatypes ((Unit!34121 0))(
  ( (Unit!34122) )
))
(declare-fun lt!696770 () Unit!34121)

(declare-fun lemmaSamePrefixThenSameSuffix!888 (List!19786 List!19786 List!19786 List!19786 List!19786) Unit!34121)

(assert (=> b!1787732 (= lt!696770 (lemmaSamePrefixThenSameSuffix!888 lt!696771 suffix!1421 lt!696771 (_2!11051 lt!696752) lt!696733))))

(declare-fun lt!696739 () List!19786)

(assert (=> b!1787732 (= lt!696739 lt!696771)))

(declare-fun lt!696760 () Unit!34121)

(declare-fun lemmaIsPrefixSameLengthThenSameList!273 (List!19786 List!19786 List!19786) Unit!34121)

(assert (=> b!1787732 (= lt!696760 (lemmaIsPrefixSameLengthThenSameList!273 lt!696739 lt!696771 lt!696733))))

(declare-fun b!1787733 () Bool)

(declare-fun e!1144295 () Unit!34121)

(declare-fun Unit!34123 () Unit!34121)

(assert (=> b!1787733 (= e!1144295 Unit!34123)))

(declare-datatypes ((LexerInterface!3166 0))(
  ( (LexerInterfaceExt!3163 (__x!12557 Int)) (Lexer!3164) )
))
(declare-fun thiss!24550 () LexerInterface!3166)

(declare-datatypes ((List!19787 0))(
  ( (Nil!19717) (Cons!19717 (h!25118 Rule!6874) (t!167326 List!19787)) )
))
(declare-fun rules!3447 () List!19787)

(declare-fun lt!696756 () Unit!34121)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!158 (LexerInterface!3166 List!19787 Rule!6874 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> b!1787733 (= lt!696756 (lemmaMaxPrefNoSmallerRuleMatches!158 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 (rule!5629 token!523)))))

(declare-fun res!806283 () Bool)

(declare-fun matchR!2338 (Regex!4865 List!19786) Bool)

(assert (=> b!1787733 (= res!806283 (not (matchR!2338 (regex!3537 (rule!5629 token!523)) lt!696739)))))

(declare-fun e!1144303 () Bool)

(assert (=> b!1787733 (=> (not res!806283) (not e!1144303))))

(assert (=> b!1787733 e!1144303))

(declare-fun b!1787734 () Bool)

(declare-fun e!1144287 () Bool)

(declare-fun e!1144296 () Bool)

(assert (=> b!1787734 (= e!1144287 (not e!1144296))))

(declare-fun res!806298 () Bool)

(assert (=> b!1787734 (=> res!806298 e!1144296)))

(declare-fun rule!422 () Rule!6874)

(assert (=> b!1787734 (= res!806298 (not (matchR!2338 (regex!3537 rule!422) lt!696771)))))

(declare-fun ruleValid!1035 (LexerInterface!3166 Rule!6874) Bool)

(assert (=> b!1787734 (ruleValid!1035 thiss!24550 rule!422)))

(declare-fun lt!696748 () Unit!34121)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!558 (LexerInterface!3166 Rule!6874 List!19787) Unit!34121)

(assert (=> b!1787734 (= lt!696748 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!558 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1787735 () Bool)

(assert (=> b!1787735 (= e!1144303 false)))

(declare-fun b!1787736 () Bool)

(declare-fun e!1144307 () Bool)

(assert (=> b!1787736 (= e!1144281 e!1144307)))

(declare-fun res!806292 () Bool)

(assert (=> b!1787736 (=> res!806292 e!1144307)))

(declare-fun lt!696753 () Int)

(declare-fun lt!696740 () Int)

(assert (=> b!1787736 (= res!806292 (>= lt!696753 lt!696740))))

(declare-fun lt!696754 () Unit!34121)

(assert (=> b!1787736 (= lt!696754 e!1144295)))

(declare-fun c!290658 () Bool)

(assert (=> b!1787736 (= c!290658 (< lt!696740 lt!696753))))

(declare-fun getIndex!202 (List!19787 Rule!6874) Int)

(assert (=> b!1787736 (= lt!696753 (getIndex!202 rules!3447 (rule!5629 (_1!11051 lt!696752))))))

(assert (=> b!1787736 (= lt!696740 (getIndex!202 rules!3447 (rule!5629 token!523)))))

(declare-fun b!1787737 () Bool)

(declare-fun e!1144280 () Bool)

(assert (=> b!1787737 (= e!1144280 e!1144304)))

(declare-fun res!806294 () Bool)

(assert (=> b!1787737 (=> res!806294 e!1144304)))

(declare-fun lt!696755 () Int)

(declare-fun lt!696777 () Int)

(assert (=> b!1787737 (= res!806294 (not (= lt!696755 lt!696777)))))

(declare-fun lt!696743 () Unit!34121)

(declare-fun e!1144294 () Unit!34121)

(assert (=> b!1787737 (= lt!696743 e!1144294)))

(declare-fun c!290657 () Bool)

(assert (=> b!1787737 (= c!290657 (< lt!696755 lt!696777))))

(declare-fun b!1787738 () Bool)

(declare-fun e!1144308 () Bool)

(assert (=> b!1787738 (= e!1144296 e!1144308)))

(declare-fun res!806291 () Bool)

(assert (=> b!1787738 (=> res!806291 e!1144308)))

(declare-fun lt!696746 () Regex!4865)

(declare-fun lt!696750 () List!19786)

(declare-fun prefixMatch!748 (Regex!4865 List!19786) Bool)

(assert (=> b!1787738 (= res!806291 (prefixMatch!748 lt!696746 lt!696750))))

(declare-fun ++!5361 (List!19786 List!19786) List!19786)

(declare-fun head!4192 (List!19786) C!9904)

(assert (=> b!1787738 (= lt!696750 (++!5361 lt!696771 (Cons!19716 (head!4192 suffix!1421) Nil!19716)))))

(declare-fun rulesRegex!893 (LexerInterface!3166 List!19787) Regex!4865)

(assert (=> b!1787738 (= lt!696746 (rulesRegex!893 thiss!24550 rules!3447))))

(declare-fun b!1787739 () Bool)

(declare-fun e!1144305 () Bool)

(assert (=> b!1787739 (= e!1144305 e!1144280)))

(declare-fun res!806272 () Bool)

(assert (=> b!1787739 (=> res!806272 e!1144280)))

(declare-fun lt!696762 () Bool)

(assert (=> b!1787739 (= res!806272 lt!696762)))

(declare-fun lt!696773 () Unit!34121)

(declare-fun e!1144289 () Unit!34121)

(assert (=> b!1787739 (= lt!696773 e!1144289)))

(declare-fun c!290659 () Bool)

(assert (=> b!1787739 (= c!290659 lt!696762)))

(assert (=> b!1787739 (= lt!696762 (> lt!696755 lt!696777))))

(declare-fun lt!696768 () BalanceConc!13062)

(declare-fun size!15665 (BalanceConc!13062) Int)

(assert (=> b!1787739 (= lt!696777 (size!15665 lt!696768))))

(assert (=> b!1787739 (matchR!2338 lt!696746 lt!696771)))

(declare-fun lt!696774 () Unit!34121)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!244 (LexerInterface!3166 List!19787 List!19786 Token!6640 Rule!6874 List!19786) Unit!34121)

(assert (=> b!1787739 (= lt!696774 (lemmaMaxPrefixThenMatchesRulesRegex!244 thiss!24550 rules!3447 lt!696771 token!523 rule!422 Nil!19716))))

(declare-fun e!1144298 () Bool)

(assert (=> b!1787740 (= e!1144298 (and tp!505600 tp!505606))))

(declare-fun b!1787741 () Bool)

(declare-fun Unit!34124 () Unit!34121)

(assert (=> b!1787741 (= e!1144294 Unit!34124)))

(declare-fun b!1787742 () Bool)

(declare-fun res!806276 () Bool)

(declare-fun e!1144277 () Bool)

(assert (=> b!1787742 (=> res!806276 e!1144277)))

(assert (=> b!1787742 (= res!806276 (not (matchR!2338 (regex!3537 (rule!5629 (_1!11051 lt!696752))) lt!696739)))))

(declare-fun b!1787743 () Bool)

(declare-fun res!806284 () Bool)

(assert (=> b!1787743 (=> res!806284 e!1144307)))

(declare-fun isPrefix!1777 (List!19786 List!19786) Bool)

(assert (=> b!1787743 (= res!806284 (not (isPrefix!1777 lt!696771 lt!696771)))))

(declare-fun b!1787744 () Bool)

(declare-fun e!1144293 () Bool)

(declare-fun e!1144302 () Bool)

(assert (=> b!1787744 (= e!1144293 e!1144302)))

(declare-fun res!806288 () Bool)

(assert (=> b!1787744 (=> res!806288 e!1144302)))

(declare-fun lt!696778 () TokenValue!3627)

(declare-datatypes ((Option!4096 0))(
  ( (None!4095) (Some!4095 (v!25594 tuple2!19298)) )
))
(declare-fun lt!696780 () Option!4096)

(assert (=> b!1787744 (= res!806288 (not (= lt!696780 (Some!4095 (tuple2!19299 (Token!6641 lt!696778 (rule!5629 (_1!11051 lt!696752)) lt!696755 lt!696739) (_2!11051 lt!696752))))))))

(declare-fun lt!696766 () BalanceConc!13062)

(assert (=> b!1787744 (= lt!696755 (size!15665 lt!696766))))

(declare-fun apply!5337 (TokenValueInjection!6914 BalanceConc!13062) TokenValue!3627)

(assert (=> b!1787744 (= lt!696778 (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766))))

(declare-fun lt!696741 () Unit!34121)

(declare-fun lemmaCharactersSize!595 (Token!6640) Unit!34121)

(assert (=> b!1787744 (= lt!696741 (lemmaCharactersSize!595 (_1!11051 lt!696752)))))

(declare-fun lt!696747 () Unit!34121)

(declare-fun lemmaEqSameImage!448 (TokenValueInjection!6914 BalanceConc!13062 BalanceConc!13062) Unit!34121)

(declare-fun seqFromList!2506 (List!19786) BalanceConc!13062)

(assert (=> b!1787744 (= lt!696747 (lemmaEqSameImage!448 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766 (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752)))))))

(declare-fun b!1787745 () Bool)

(assert (=> b!1787745 (= e!1144308 e!1144277)))

(declare-fun res!806289 () Bool)

(assert (=> b!1787745 (=> res!806289 e!1144277)))

(assert (=> b!1787745 (= res!806289 (not (isPrefix!1777 lt!696739 lt!696733)))))

(assert (=> b!1787745 (isPrefix!1777 lt!696739 (++!5361 lt!696739 (_2!11051 lt!696752)))))

(declare-fun lt!696744 () Unit!34121)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1286 (List!19786 List!19786) Unit!34121)

(assert (=> b!1787745 (= lt!696744 (lemmaConcatTwoListThenFirstIsPrefix!1286 lt!696739 (_2!11051 lt!696752)))))

(declare-fun list!8019 (BalanceConc!13062) List!19786)

(assert (=> b!1787745 (= lt!696739 (list!8019 lt!696766))))

(declare-fun charsOf!2186 (Token!6640) BalanceConc!13062)

(assert (=> b!1787745 (= lt!696766 (charsOf!2186 (_1!11051 lt!696752)))))

(declare-fun e!1144300 () Bool)

(assert (=> b!1787745 e!1144300))

(declare-fun res!806274 () Bool)

(assert (=> b!1787745 (=> (not res!806274) (not e!1144300))))

(declare-datatypes ((Option!4097 0))(
  ( (None!4096) (Some!4096 (v!25595 Rule!6874)) )
))
(declare-fun lt!696745 () Option!4097)

(declare-fun isDefined!3439 (Option!4097) Bool)

(assert (=> b!1787745 (= res!806274 (isDefined!3439 lt!696745))))

(declare-fun getRuleFromTag!585 (LexerInterface!3166 List!19787 String!22467) Option!4097)

(assert (=> b!1787745 (= lt!696745 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun lt!696767 () Unit!34121)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!585 (LexerInterface!3166 List!19787 List!19786 Token!6640) Unit!34121)

(assert (=> b!1787745 (= lt!696767 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!585 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752)))))

(declare-fun get!6082 (Option!4096) tuple2!19298)

(assert (=> b!1787745 (= lt!696752 (get!6082 lt!696780))))

(declare-fun lt!696779 () Unit!34121)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!688 (LexerInterface!3166 List!19787 List!19786 List!19786) Unit!34121)

(assert (=> b!1787745 (= lt!696779 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!688 thiss!24550 rules!3447 lt!696771 suffix!1421))))

(declare-fun maxPrefix!1720 (LexerInterface!3166 List!19787 List!19786) Option!4096)

(assert (=> b!1787745 (= lt!696780 (maxPrefix!1720 thiss!24550 rules!3447 lt!696733))))

(assert (=> b!1787745 (isPrefix!1777 lt!696771 lt!696733)))

(declare-fun lt!696763 () Unit!34121)

(assert (=> b!1787745 (= lt!696763 (lemmaConcatTwoListThenFirstIsPrefix!1286 lt!696771 suffix!1421))))

(assert (=> b!1787745 (= lt!696733 (++!5361 lt!696771 suffix!1421))))

(declare-fun e!1144278 () Bool)

(assert (=> b!1787746 (= e!1144277 e!1144278)))

(declare-fun res!806280 () Bool)

(assert (=> b!1787746 (=> res!806280 e!1144278)))

(declare-fun Forall!904 (Int) Bool)

(assert (=> b!1787746 (= res!806280 (not (Forall!904 lambda!70816)))))

(declare-fun lt!696742 () Unit!34121)

(declare-fun lemmaInv!736 (TokenValueInjection!6914) Unit!34121)

(assert (=> b!1787746 (= lt!696742 (lemmaInv!736 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun b!1787747 () Bool)

(declare-fun e!1144285 () Bool)

(declare-fun tp!505605 () Bool)

(declare-fun inv!25680 (String!22467) Bool)

(declare-fun inv!25685 (TokenValueInjection!6914) Bool)

(assert (=> b!1787747 (= e!1144285 (and tp!505605 (inv!25680 (tag!3941 rule!422)) (inv!25685 (transformation!3537 rule!422)) e!1144298))))

(declare-fun b!1787748 () Bool)

(assert (=> b!1787748 (= e!1144278 e!1144293)))

(declare-fun res!806297 () Bool)

(assert (=> b!1787748 (=> res!806297 e!1144293)))

(declare-fun dynLambda!9750 (Int TokenValue!3627) BalanceConc!13062)

(declare-fun dynLambda!9751 (Int BalanceConc!13062) TokenValue!3627)

(assert (=> b!1787748 (= res!806297 (not (= (list!8019 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))) lt!696739)))))

(declare-fun lt!696757 () Unit!34121)

(declare-fun lemmaSemiInverse!675 (TokenValueInjection!6914 BalanceConc!13062) Unit!34121)

(assert (=> b!1787748 (= lt!696757 (lemmaSemiInverse!675 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766))))

(declare-fun tp!505598 () Bool)

(declare-fun b!1787749 () Bool)

(declare-fun e!1144306 () Bool)

(declare-fun e!1144286 () Bool)

(assert (=> b!1787749 (= e!1144306 (and tp!505598 (inv!25680 (tag!3941 (rule!5629 token!523))) (inv!25685 (transformation!3537 (rule!5629 token!523))) e!1144286))))

(declare-fun b!1787750 () Bool)

(assert (=> b!1787750 (= e!1144302 e!1144305)))

(declare-fun res!806282 () Bool)

(assert (=> b!1787750 (=> res!806282 e!1144305)))

(declare-fun lt!696761 () List!19786)

(declare-fun lt!696764 () Option!4096)

(assert (=> b!1787750 (= res!806282 (or (not (= lt!696761 (_2!11051 lt!696752))) (not (= lt!696764 (Some!4095 (tuple2!19299 (_1!11051 lt!696752) lt!696761))))))))

(assert (=> b!1787750 (= (_2!11051 lt!696752) lt!696761)))

(declare-fun lt!696736 () Unit!34121)

(assert (=> b!1787750 (= lt!696736 (lemmaSamePrefixThenSameSuffix!888 lt!696739 (_2!11051 lt!696752) lt!696739 lt!696761 lt!696733))))

(declare-fun getSuffix!944 (List!19786 List!19786) List!19786)

(assert (=> b!1787750 (= lt!696761 (getSuffix!944 lt!696733 lt!696739))))

(declare-fun lt!696737 () TokenValue!3627)

(declare-fun lt!696749 () Int)

(assert (=> b!1787750 (= lt!696764 (Some!4095 (tuple2!19299 (Token!6641 lt!696737 (rule!5629 (_1!11051 lt!696752)) lt!696749 lt!696739) (_2!11051 lt!696752))))))

(declare-fun maxPrefixOneRule!1089 (LexerInterface!3166 Rule!6874 List!19786) Option!4096)

(assert (=> b!1787750 (= lt!696764 (maxPrefixOneRule!1089 thiss!24550 (rule!5629 (_1!11051 lt!696752)) lt!696733))))

(declare-fun size!15666 (List!19786) Int)

(assert (=> b!1787750 (= lt!696749 (size!15666 lt!696739))))

(assert (=> b!1787750 (= lt!696737 (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) (seqFromList!2506 lt!696739)))))

(declare-fun lt!696735 () Unit!34121)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!467 (LexerInterface!3166 List!19787 List!19786 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> b!1787750 (= lt!696735 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!467 thiss!24550 rules!3447 lt!696739 lt!696733 (_2!11051 lt!696752) (rule!5629 (_1!11051 lt!696752))))))

(declare-fun b!1787751 () Bool)

(declare-fun Unit!34125 () Unit!34121)

(assert (=> b!1787751 (= e!1144289 Unit!34125)))

(declare-fun b!1787752 () Bool)

(declare-fun Unit!34126 () Unit!34121)

(assert (=> b!1787752 (= e!1144295 Unit!34126)))

(declare-fun b!1787753 () Bool)

(declare-fun e!1144291 () Bool)

(declare-fun tp_is_empty!7973 () Bool)

(declare-fun tp!505596 () Bool)

(assert (=> b!1787753 (= e!1144291 (and tp_is_empty!7973 tp!505596))))

(declare-fun b!1787754 () Bool)

(declare-fun res!806273 () Bool)

(assert (=> b!1787754 (=> res!806273 e!1144307)))

(declare-fun contains!3569 (List!19787 Rule!6874) Bool)

(assert (=> b!1787754 (= res!806273 (not (contains!3569 rules!3447 (rule!5629 token!523))))))

(assert (=> b!1787755 (= e!1144286 (and tp!505604 tp!505601))))

(declare-fun e!1144301 () Bool)

(assert (=> b!1787756 (= e!1144301 (and tp!505599 tp!505602))))

(declare-fun b!1787757 () Bool)

(declare-fun res!806286 () Bool)

(assert (=> b!1787757 (=> (not res!806286) (not e!1144287))))

(assert (=> b!1787757 (= res!806286 (= (rule!5629 token!523) rule!422))))

(declare-fun b!1787758 () Bool)

(declare-fun e!1144288 () Bool)

(assert (=> b!1787758 (= e!1144288 e!1144287)))

(declare-fun res!806287 () Bool)

(assert (=> b!1787758 (=> (not res!806287) (not e!1144287))))

(declare-fun lt!696738 () tuple2!19298)

(assert (=> b!1787758 (= res!806287 (= (_1!11051 lt!696738) token!523))))

(declare-fun lt!696769 () Option!4096)

(assert (=> b!1787758 (= lt!696738 (get!6082 lt!696769))))

(declare-fun b!1787759 () Bool)

(declare-fun Unit!34127 () Unit!34121)

(assert (=> b!1787759 (= e!1144289 Unit!34127)))

(declare-fun lt!696776 () Unit!34121)

(assert (=> b!1787759 (= lt!696776 (lemmaMaxPrefixThenMatchesRulesRegex!244 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752) (rule!5629 (_1!11051 lt!696752)) (_2!11051 lt!696752)))))

(assert (=> b!1787759 (matchR!2338 lt!696746 lt!696739)))

(declare-fun lt!696759 () List!19786)

(assert (=> b!1787759 (= lt!696759 (getSuffix!944 lt!696733 lt!696771))))

(declare-fun lt!696765 () Unit!34121)

(assert (=> b!1787759 (= lt!696765 (lemmaSamePrefixThenSameSuffix!888 lt!696771 suffix!1421 lt!696771 lt!696759 lt!696733))))

(assert (=> b!1787759 (= suffix!1421 lt!696759)))

(declare-fun lt!696772 () Unit!34121)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!313 (List!19786 List!19786) Unit!34121)

(assert (=> b!1787759 (= lt!696772 (lemmaAddHeadSuffixToPrefixStillPrefix!313 lt!696771 lt!696733))))

(assert (=> b!1787759 (isPrefix!1777 (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716)) lt!696733)))

(declare-fun lt!696734 () Unit!34121)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!185 (List!19786 List!19786 List!19786) Unit!34121)

(assert (=> b!1787759 (= lt!696734 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!185 lt!696739 lt!696750 lt!696733))))

(assert (=> b!1787759 (isPrefix!1777 lt!696750 lt!696739)))

(declare-fun lt!696758 () Unit!34121)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!176 (Regex!4865 List!19786 List!19786) Unit!34121)

(assert (=> b!1787759 (= lt!696758 (lemmaNotPrefixMatchThenCannotMatchLonger!176 lt!696746 lt!696750 lt!696739))))

(assert (=> b!1787759 false))

(declare-fun e!1144279 () Bool)

(declare-fun b!1787760 () Bool)

(declare-fun tp!505595 () Bool)

(declare-fun inv!21 (TokenValue!3627) Bool)

(assert (=> b!1787760 (= e!1144279 (and (inv!21 (value!110477 token!523)) e!1144306 tp!505595))))

(declare-fun b!1787761 () Bool)

(declare-fun res!806275 () Bool)

(assert (=> b!1787761 (=> res!806275 e!1144296)))

(declare-fun isEmpty!12462 (List!19786) Bool)

(assert (=> b!1787761 (= res!806275 (isEmpty!12462 suffix!1421))))

(declare-fun b!1787762 () Bool)

(declare-fun e!1144282 () Bool)

(assert (=> b!1787762 (= e!1144282 e!1144288)))

(declare-fun res!806290 () Bool)

(assert (=> b!1787762 (=> (not res!806290) (not e!1144288))))

(declare-fun isDefined!3440 (Option!4096) Bool)

(assert (=> b!1787762 (= res!806290 (isDefined!3440 lt!696769))))

(assert (=> b!1787762 (= lt!696769 (maxPrefix!1720 thiss!24550 rules!3447 lt!696771))))

(assert (=> b!1787762 (= lt!696771 (list!8019 lt!696768))))

(assert (=> b!1787762 (= lt!696768 (charsOf!2186 token!523))))

(declare-fun b!1787763 () Bool)

(declare-fun res!806277 () Bool)

(assert (=> b!1787763 (=> (not res!806277) (not e!1144282))))

(declare-fun isEmpty!12463 (List!19787) Bool)

(assert (=> b!1787763 (= res!806277 (not (isEmpty!12463 rules!3447)))))

(declare-fun b!1787764 () Bool)

(assert (=> b!1787764 (= e!1144307 (contains!3569 rules!3447 (rule!5629 (_1!11051 lt!696752))))))

(declare-fun b!1787765 () Bool)

(declare-fun e!1144284 () Bool)

(assert (=> b!1787765 (= e!1144300 e!1144284)))

(declare-fun res!806296 () Bool)

(assert (=> b!1787765 (=> (not res!806296) (not e!1144284))))

(declare-fun lt!696775 () Rule!6874)

(assert (=> b!1787765 (= res!806296 (matchR!2338 (regex!3537 lt!696775) (list!8019 (charsOf!2186 (_1!11051 lt!696752)))))))

(declare-fun get!6083 (Option!4097) Rule!6874)

(assert (=> b!1787765 (= lt!696775 (get!6083 lt!696745))))

(declare-fun b!1787766 () Bool)

(declare-fun Unit!34128 () Unit!34121)

(assert (=> b!1787766 (= e!1144294 Unit!34128)))

(declare-fun lt!696751 () Unit!34121)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!246 (LexerInterface!3166 List!19787 Rule!6874 List!19786 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> b!1787766 (= lt!696751 (lemmaMaxPrefixOutputsMaxPrefix!246 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 lt!696771 rule!422))))

(assert (=> b!1787766 false))

(declare-fun b!1787767 () Bool)

(declare-fun res!806281 () Bool)

(assert (=> b!1787767 (=> (not res!806281) (not e!1144282))))

(assert (=> b!1787767 (= res!806281 (contains!3569 rules!3447 rule!422))))

(declare-fun res!806295 () Bool)

(assert (=> start!178114 (=> (not res!806295) (not e!1144282))))

(get-info :version)

(assert (=> start!178114 (= res!806295 ((_ is Lexer!3164) thiss!24550))))

(assert (=> start!178114 e!1144282))

(assert (=> start!178114 e!1144291))

(assert (=> start!178114 e!1144285))

(assert (=> start!178114 true))

(declare-fun inv!25686 (Token!6640) Bool)

(assert (=> start!178114 (and (inv!25686 token!523) e!1144279)))

(declare-fun e!1144290 () Bool)

(assert (=> start!178114 e!1144290))

(declare-fun b!1787768 () Bool)

(declare-fun res!806278 () Bool)

(assert (=> b!1787768 (=> (not res!806278) (not e!1144282))))

(declare-fun rulesInvariant!2835 (LexerInterface!3166 List!19787) Bool)

(assert (=> b!1787768 (= res!806278 (rulesInvariant!2835 thiss!24550 rules!3447))))

(declare-fun b!1787769 () Bool)

(declare-fun res!806279 () Bool)

(assert (=> b!1787769 (=> (not res!806279) (not e!1144287))))

(assert (=> b!1787769 (= res!806279 (isEmpty!12462 (_2!11051 lt!696738)))))

(declare-fun b!1787770 () Bool)

(declare-fun e!1144276 () Bool)

(declare-fun tp!505597 () Bool)

(assert (=> b!1787770 (= e!1144290 (and e!1144276 tp!505597))))

(declare-fun b!1787771 () Bool)

(declare-fun res!806285 () Bool)

(assert (=> b!1787771 (=> res!806285 e!1144293)))

(assert (=> b!1787771 (= res!806285 (not (= lt!696766 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))))

(declare-fun tp!505603 () Bool)

(declare-fun b!1787772 () Bool)

(assert (=> b!1787772 (= e!1144276 (and tp!505603 (inv!25680 (tag!3941 (h!25118 rules!3447))) (inv!25685 (transformation!3537 (h!25118 rules!3447))) e!1144301))))

(declare-fun b!1787773 () Bool)

(assert (=> b!1787773 (= e!1144284 (= (rule!5629 (_1!11051 lt!696752)) lt!696775))))

(assert (= (and start!178114 res!806295) b!1787763))

(assert (= (and b!1787763 res!806277) b!1787768))

(assert (= (and b!1787768 res!806278) b!1787767))

(assert (= (and b!1787767 res!806281) b!1787762))

(assert (= (and b!1787762 res!806290) b!1787758))

(assert (= (and b!1787758 res!806287) b!1787769))

(assert (= (and b!1787769 res!806279) b!1787757))

(assert (= (and b!1787757 res!806286) b!1787734))

(assert (= (and b!1787734 (not res!806298)) b!1787761))

(assert (= (and b!1787761 (not res!806275)) b!1787738))

(assert (= (and b!1787738 (not res!806291)) b!1787745))

(assert (= (and b!1787745 res!806274) b!1787765))

(assert (= (and b!1787765 res!806296) b!1787773))

(assert (= (and b!1787745 (not res!806289)) b!1787742))

(assert (= (and b!1787742 (not res!806276)) b!1787746))

(assert (= (and b!1787746 (not res!806280)) b!1787748))

(assert (= (and b!1787748 (not res!806297)) b!1787771))

(assert (= (and b!1787771 (not res!806285)) b!1787744))

(assert (= (and b!1787744 (not res!806288)) b!1787750))

(assert (= (and b!1787750 (not res!806282)) b!1787739))

(assert (= (and b!1787739 c!290659) b!1787759))

(assert (= (and b!1787739 (not c!290659)) b!1787751))

(assert (= (and b!1787739 (not res!806272)) b!1787737))

(assert (= (and b!1787737 c!290657) b!1787766))

(assert (= (and b!1787737 (not c!290657)) b!1787741))

(assert (= (and b!1787737 (not res!806294)) b!1787732))

(assert (= (and b!1787732 (not res!806293)) b!1787736))

(assert (= (and b!1787736 c!290658) b!1787733))

(assert (= (and b!1787736 (not c!290658)) b!1787752))

(assert (= (and b!1787733 res!806283) b!1787735))

(assert (= (and b!1787736 (not res!806292)) b!1787743))

(assert (= (and b!1787743 (not res!806284)) b!1787754))

(assert (= (and b!1787754 (not res!806273)) b!1787764))

(assert (= (and start!178114 ((_ is Cons!19716) suffix!1421)) b!1787753))

(assert (= b!1787747 b!1787740))

(assert (= start!178114 b!1787747))

(assert (= b!1787749 b!1787755))

(assert (= b!1787760 b!1787749))

(assert (= start!178114 b!1787760))

(assert (= b!1787772 b!1787756))

(assert (= b!1787770 b!1787772))

(assert (= (and start!178114 ((_ is Cons!19717) rules!3447)) b!1787770))

(declare-fun b_lambda!58699 () Bool)

(assert (=> (not b_lambda!58699) (not b!1787748)))

(declare-fun t!167307 () Bool)

(declare-fun tb!108931 () Bool)

(assert (=> (and b!1787755 (= (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167307) tb!108931))

(declare-fun e!1144320 () Bool)

(declare-fun tp!505609 () Bool)

(declare-fun b!1787789 () Bool)

(declare-fun inv!25687 (Conc!6559) Bool)

(assert (=> b!1787789 (= e!1144320 (and (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))) tp!505609))))

(declare-fun result!131070 () Bool)

(declare-fun inv!25688 (BalanceConc!13062) Bool)

(assert (=> tb!108931 (= result!131070 (and (inv!25688 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))) e!1144320))))

(assert (= tb!108931 b!1787789))

(declare-fun m!2211653 () Bool)

(assert (=> b!1787789 m!2211653))

(declare-fun m!2211655 () Bool)

(assert (=> tb!108931 m!2211655))

(assert (=> b!1787748 t!167307))

(declare-fun b_and!137751 () Bool)

(assert (= b_and!137741 (and (=> t!167307 result!131070) b_and!137751)))

(declare-fun t!167309 () Bool)

(declare-fun tb!108933 () Bool)

(assert (=> (and b!1787756 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167309) tb!108933))

(declare-fun result!131074 () Bool)

(assert (= result!131074 result!131070))

(assert (=> b!1787748 t!167309))

(declare-fun b_and!137753 () Bool)

(assert (= b_and!137745 (and (=> t!167309 result!131074) b_and!137753)))

(declare-fun tb!108935 () Bool)

(declare-fun t!167311 () Bool)

(assert (=> (and b!1787740 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167311) tb!108935))

(declare-fun result!131076 () Bool)

(assert (= result!131076 result!131070))

(assert (=> b!1787748 t!167311))

(declare-fun b_and!137755 () Bool)

(assert (= b_and!137749 (and (=> t!167311 result!131076) b_and!137755)))

(declare-fun b_lambda!58701 () Bool)

(assert (=> (not b_lambda!58701) (not b!1787748)))

(declare-fun tb!108937 () Bool)

(declare-fun t!167313 () Bool)

(assert (=> (and b!1787755 (= (toValue!5064 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167313) tb!108937))

(declare-fun result!131078 () Bool)

(assert (=> tb!108937 (= result!131078 (inv!21 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(declare-fun m!2211657 () Bool)

(assert (=> tb!108937 m!2211657))

(assert (=> b!1787748 t!167313))

(declare-fun b_and!137757 () Bool)

(assert (= b_and!137739 (and (=> t!167313 result!131078) b_and!137757)))

(declare-fun t!167315 () Bool)

(declare-fun tb!108939 () Bool)

(assert (=> (and b!1787756 (= (toValue!5064 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167315) tb!108939))

(declare-fun result!131082 () Bool)

(assert (= result!131082 result!131078))

(assert (=> b!1787748 t!167315))

(declare-fun b_and!137759 () Bool)

(assert (= b_and!137743 (and (=> t!167315 result!131082) b_and!137759)))

(declare-fun tb!108941 () Bool)

(declare-fun t!167317 () Bool)

(assert (=> (and b!1787740 (= (toValue!5064 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167317) tb!108941))

(declare-fun result!131084 () Bool)

(assert (= result!131084 result!131078))

(assert (=> b!1787748 t!167317))

(declare-fun b_and!137761 () Bool)

(assert (= b_and!137747 (and (=> t!167317 result!131084) b_and!137761)))

(declare-fun b_lambda!58703 () Bool)

(assert (=> (not b_lambda!58703) (not b!1787771)))

(declare-fun tb!108943 () Bool)

(declare-fun t!167319 () Bool)

(assert (=> (and b!1787755 (= (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167319) tb!108943))

(declare-fun b!1787792 () Bool)

(declare-fun e!1144324 () Bool)

(declare-fun tp!505610 () Bool)

(assert (=> b!1787792 (= e!1144324 (and (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))) tp!505610))))

(declare-fun result!131086 () Bool)

(assert (=> tb!108943 (= result!131086 (and (inv!25688 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))) e!1144324))))

(assert (= tb!108943 b!1787792))

(declare-fun m!2211659 () Bool)

(assert (=> b!1787792 m!2211659))

(declare-fun m!2211661 () Bool)

(assert (=> tb!108943 m!2211661))

(assert (=> b!1787771 t!167319))

(declare-fun b_and!137763 () Bool)

(assert (= b_and!137751 (and (=> t!167319 result!131086) b_and!137763)))

(declare-fun t!167321 () Bool)

(declare-fun tb!108945 () Bool)

(assert (=> (and b!1787756 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167321) tb!108945))

(declare-fun result!131088 () Bool)

(assert (= result!131088 result!131086))

(assert (=> b!1787771 t!167321))

(declare-fun b_and!137765 () Bool)

(assert (= b_and!137753 (and (=> t!167321 result!131088) b_and!137765)))

(declare-fun t!167323 () Bool)

(declare-fun tb!108947 () Bool)

(assert (=> (and b!1787740 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167323) tb!108947))

(declare-fun result!131090 () Bool)

(assert (= result!131090 result!131086))

(assert (=> b!1787771 t!167323))

(declare-fun b_and!137767 () Bool)

(assert (= b_and!137755 (and (=> t!167323 result!131090) b_and!137767)))

(declare-fun m!2211663 () Bool)

(assert (=> b!1787745 m!2211663))

(declare-fun m!2211665 () Bool)

(assert (=> b!1787745 m!2211665))

(declare-fun m!2211667 () Bool)

(assert (=> b!1787745 m!2211667))

(declare-fun m!2211669 () Bool)

(assert (=> b!1787745 m!2211669))

(declare-fun m!2211671 () Bool)

(assert (=> b!1787745 m!2211671))

(declare-fun m!2211673 () Bool)

(assert (=> b!1787745 m!2211673))

(declare-fun m!2211675 () Bool)

(assert (=> b!1787745 m!2211675))

(declare-fun m!2211677 () Bool)

(assert (=> b!1787745 m!2211677))

(declare-fun m!2211679 () Bool)

(assert (=> b!1787745 m!2211679))

(assert (=> b!1787745 m!2211663))

(declare-fun m!2211681 () Bool)

(assert (=> b!1787745 m!2211681))

(declare-fun m!2211683 () Bool)

(assert (=> b!1787745 m!2211683))

(declare-fun m!2211685 () Bool)

(assert (=> b!1787745 m!2211685))

(declare-fun m!2211687 () Bool)

(assert (=> b!1787745 m!2211687))

(declare-fun m!2211689 () Bool)

(assert (=> b!1787745 m!2211689))

(declare-fun m!2211691 () Bool)

(assert (=> b!1787745 m!2211691))

(declare-fun m!2211693 () Bool)

(assert (=> start!178114 m!2211693))

(declare-fun m!2211695 () Bool)

(assert (=> b!1787739 m!2211695))

(declare-fun m!2211697 () Bool)

(assert (=> b!1787739 m!2211697))

(declare-fun m!2211699 () Bool)

(assert (=> b!1787739 m!2211699))

(declare-fun m!2211701 () Bool)

(assert (=> b!1787750 m!2211701))

(declare-fun m!2211703 () Bool)

(assert (=> b!1787750 m!2211703))

(declare-fun m!2211705 () Bool)

(assert (=> b!1787750 m!2211705))

(declare-fun m!2211707 () Bool)

(assert (=> b!1787750 m!2211707))

(declare-fun m!2211709 () Bool)

(assert (=> b!1787750 m!2211709))

(declare-fun m!2211711 () Bool)

(assert (=> b!1787750 m!2211711))

(assert (=> b!1787750 m!2211705))

(declare-fun m!2211713 () Bool)

(assert (=> b!1787750 m!2211713))

(declare-fun m!2211715 () Bool)

(assert (=> b!1787736 m!2211715))

(declare-fun m!2211717 () Bool)

(assert (=> b!1787736 m!2211717))

(declare-fun m!2211719 () Bool)

(assert (=> b!1787766 m!2211719))

(assert (=> b!1787765 m!2211675))

(assert (=> b!1787765 m!2211675))

(declare-fun m!2211721 () Bool)

(assert (=> b!1787765 m!2211721))

(assert (=> b!1787765 m!2211721))

(declare-fun m!2211723 () Bool)

(assert (=> b!1787765 m!2211723))

(declare-fun m!2211725 () Bool)

(assert (=> b!1787765 m!2211725))

(declare-fun m!2211727 () Bool)

(assert (=> b!1787747 m!2211727))

(declare-fun m!2211729 () Bool)

(assert (=> b!1787747 m!2211729))

(declare-fun m!2211731 () Bool)

(assert (=> b!1787743 m!2211731))

(declare-fun m!2211733 () Bool)

(assert (=> b!1787767 m!2211733))

(declare-fun m!2211735 () Bool)

(assert (=> b!1787734 m!2211735))

(declare-fun m!2211737 () Bool)

(assert (=> b!1787734 m!2211737))

(declare-fun m!2211739 () Bool)

(assert (=> b!1787734 m!2211739))

(declare-fun m!2211741 () Bool)

(assert (=> b!1787749 m!2211741))

(declare-fun m!2211743 () Bool)

(assert (=> b!1787749 m!2211743))

(declare-fun m!2211745 () Bool)

(assert (=> b!1787742 m!2211745))

(declare-fun m!2211747 () Bool)

(assert (=> b!1787762 m!2211747))

(declare-fun m!2211749 () Bool)

(assert (=> b!1787762 m!2211749))

(declare-fun m!2211751 () Bool)

(assert (=> b!1787762 m!2211751))

(declare-fun m!2211753 () Bool)

(assert (=> b!1787762 m!2211753))

(declare-fun m!2211755 () Bool)

(assert (=> b!1787763 m!2211755))

(declare-fun m!2211757 () Bool)

(assert (=> b!1787746 m!2211757))

(declare-fun m!2211759 () Bool)

(assert (=> b!1787746 m!2211759))

(declare-fun m!2211761 () Bool)

(assert (=> b!1787771 m!2211761))

(declare-fun m!2211763 () Bool)

(assert (=> b!1787748 m!2211763))

(assert (=> b!1787748 m!2211763))

(declare-fun m!2211765 () Bool)

(assert (=> b!1787748 m!2211765))

(assert (=> b!1787748 m!2211765))

(declare-fun m!2211767 () Bool)

(assert (=> b!1787748 m!2211767))

(declare-fun m!2211769 () Bool)

(assert (=> b!1787748 m!2211769))

(declare-fun m!2211771 () Bool)

(assert (=> b!1787760 m!2211771))

(declare-fun m!2211773 () Bool)

(assert (=> b!1787761 m!2211773))

(declare-fun m!2211775 () Bool)

(assert (=> b!1787758 m!2211775))

(declare-fun m!2211777 () Bool)

(assert (=> b!1787768 m!2211777))

(declare-fun m!2211779 () Bool)

(assert (=> b!1787738 m!2211779))

(declare-fun m!2211781 () Bool)

(assert (=> b!1787738 m!2211781))

(declare-fun m!2211783 () Bool)

(assert (=> b!1787738 m!2211783))

(declare-fun m!2211785 () Bool)

(assert (=> b!1787738 m!2211785))

(declare-fun m!2211787 () Bool)

(assert (=> b!1787732 m!2211787))

(declare-fun m!2211789 () Bool)

(assert (=> b!1787732 m!2211789))

(declare-fun m!2211791 () Bool)

(assert (=> b!1787754 m!2211791))

(declare-fun m!2211793 () Bool)

(assert (=> b!1787759 m!2211793))

(declare-fun m!2211795 () Bool)

(assert (=> b!1787759 m!2211795))

(declare-fun m!2211797 () Bool)

(assert (=> b!1787759 m!2211797))

(declare-fun m!2211799 () Bool)

(assert (=> b!1787759 m!2211799))

(declare-fun m!2211801 () Bool)

(assert (=> b!1787759 m!2211801))

(declare-fun m!2211803 () Bool)

(assert (=> b!1787759 m!2211803))

(assert (=> b!1787759 m!2211797))

(declare-fun m!2211805 () Bool)

(assert (=> b!1787759 m!2211805))

(declare-fun m!2211807 () Bool)

(assert (=> b!1787759 m!2211807))

(declare-fun m!2211809 () Bool)

(assert (=> b!1787759 m!2211809))

(declare-fun m!2211811 () Bool)

(assert (=> b!1787759 m!2211811))

(declare-fun m!2211813 () Bool)

(assert (=> b!1787759 m!2211813))

(declare-fun m!2211815 () Bool)

(assert (=> b!1787744 m!2211815))

(declare-fun m!2211817 () Bool)

(assert (=> b!1787744 m!2211817))

(declare-fun m!2211819 () Bool)

(assert (=> b!1787744 m!2211819))

(declare-fun m!2211821 () Bool)

(assert (=> b!1787744 m!2211821))

(declare-fun m!2211823 () Bool)

(assert (=> b!1787744 m!2211823))

(assert (=> b!1787744 m!2211819))

(declare-fun m!2211825 () Bool)

(assert (=> b!1787772 m!2211825))

(declare-fun m!2211827 () Bool)

(assert (=> b!1787772 m!2211827))

(declare-fun m!2211829 () Bool)

(assert (=> b!1787769 m!2211829))

(declare-fun m!2211831 () Bool)

(assert (=> b!1787764 m!2211831))

(declare-fun m!2211833 () Bool)

(assert (=> b!1787733 m!2211833))

(declare-fun m!2211835 () Bool)

(assert (=> b!1787733 m!2211835))

(check-sat (not b!1787772) (not b_next!50431) (not b_lambda!58703) (not b!1787768) (not b!1787758) (not b!1787733) (not b!1787742) b_and!137757 (not b_next!50435) (not b!1787789) (not b!1787743) (not b!1787747) (not b_next!50439) (not b!1787734) b_and!137763 b_and!137767 (not b!1787765) (not b!1787732) (not b!1787767) (not tb!108943) (not b!1787749) (not b!1787744) (not b!1787760) (not b!1787759) (not b_next!50437) (not b!1787753) (not b!1787739) (not b!1787792) (not b!1787763) (not b!1787746) (not b!1787761) (not b!1787769) (not b!1787770) (not b!1787762) (not tb!108931) (not b_lambda!58699) (not start!178114) (not b!1787764) (not b_next!50441) (not b!1787750) (not b!1787738) (not b!1787754) b_and!137759 (not b!1787745) (not b_lambda!58701) (not tb!108937) (not b_next!50433) (not b!1787736) (not b!1787748) b_and!137765 b_and!137761 (not b!1787766) tp_is_empty!7973)
(check-sat (not b_next!50431) b_and!137757 (not b_next!50437) (not b_next!50435) (not b_next!50441) b_and!137759 (not b_next!50433) (not b_next!50439) b_and!137763 b_and!137767 b_and!137765 b_and!137761)
(get-model)

(declare-fun d!545447 () Bool)

(declare-fun lt!696791 () Int)

(assert (=> d!545447 (>= lt!696791 0)))

(declare-fun e!1144364 () Int)

(assert (=> d!545447 (= lt!696791 e!1144364)))

(declare-fun c!290676 () Bool)

(assert (=> d!545447 (= c!290676 (and ((_ is Cons!19717) rules!3447) (= (h!25118 rules!3447) (rule!5629 (_1!11051 lt!696752)))))))

(assert (=> d!545447 (contains!3569 rules!3447 (rule!5629 (_1!11051 lt!696752)))))

(assert (=> d!545447 (= (getIndex!202 rules!3447 (rule!5629 (_1!11051 lt!696752))) lt!696791)))

(declare-fun b!1787858 () Bool)

(declare-fun e!1144363 () Int)

(assert (=> b!1787858 (= e!1144363 (- 1))))

(declare-fun b!1787856 () Bool)

(assert (=> b!1787856 (= e!1144364 e!1144363)))

(declare-fun c!290675 () Bool)

(assert (=> b!1787856 (= c!290675 (and ((_ is Cons!19717) rules!3447) (not (= (h!25118 rules!3447) (rule!5629 (_1!11051 lt!696752))))))))

(declare-fun b!1787855 () Bool)

(assert (=> b!1787855 (= e!1144364 0)))

(declare-fun b!1787857 () Bool)

(assert (=> b!1787857 (= e!1144363 (+ 1 (getIndex!202 (t!167326 rules!3447) (rule!5629 (_1!11051 lt!696752)))))))

(assert (= (and d!545447 c!290676) b!1787855))

(assert (= (and d!545447 (not c!290676)) b!1787856))

(assert (= (and b!1787856 c!290675) b!1787857))

(assert (= (and b!1787856 (not c!290675)) b!1787858))

(assert (=> d!545447 m!2211831))

(declare-fun m!2211873 () Bool)

(assert (=> b!1787857 m!2211873))

(assert (=> b!1787736 d!545447))

(declare-fun d!545451 () Bool)

(declare-fun lt!696793 () Int)

(assert (=> d!545451 (>= lt!696793 0)))

(declare-fun e!1144373 () Int)

(assert (=> d!545451 (= lt!696793 e!1144373)))

(declare-fun c!290681 () Bool)

(assert (=> d!545451 (= c!290681 (and ((_ is Cons!19717) rules!3447) (= (h!25118 rules!3447) (rule!5629 token!523))))))

(assert (=> d!545451 (contains!3569 rules!3447 (rule!5629 token!523))))

(assert (=> d!545451 (= (getIndex!202 rules!3447 (rule!5629 token!523)) lt!696793)))

(declare-fun b!1787876 () Bool)

(declare-fun e!1144372 () Int)

(assert (=> b!1787876 (= e!1144372 (- 1))))

(declare-fun b!1787874 () Bool)

(assert (=> b!1787874 (= e!1144373 e!1144372)))

(declare-fun c!290680 () Bool)

(assert (=> b!1787874 (= c!290680 (and ((_ is Cons!19717) rules!3447) (not (= (h!25118 rules!3447) (rule!5629 token!523)))))))

(declare-fun b!1787873 () Bool)

(assert (=> b!1787873 (= e!1144373 0)))

(declare-fun b!1787875 () Bool)

(assert (=> b!1787875 (= e!1144372 (+ 1 (getIndex!202 (t!167326 rules!3447) (rule!5629 token!523))))))

(assert (= (and d!545451 c!290681) b!1787873))

(assert (= (and d!545451 (not c!290681)) b!1787874))

(assert (= (and b!1787874 c!290680) b!1787875))

(assert (= (and b!1787874 (not c!290680)) b!1787876))

(assert (=> d!545451 m!2211791))

(declare-fun m!2211891 () Bool)

(assert (=> b!1787875 m!2211891))

(assert (=> b!1787736 d!545451))

(declare-fun bm!111387 () Bool)

(declare-fun call!111392 () Bool)

(assert (=> bm!111387 (= call!111392 (isEmpty!12462 lt!696771))))

(declare-fun d!545455 () Bool)

(declare-fun e!1144401 () Bool)

(assert (=> d!545455 e!1144401))

(declare-fun c!290690 () Bool)

(assert (=> d!545455 (= c!290690 ((_ is EmptyExpr!4865) (regex!3537 rule!422)))))

(declare-fun lt!696802 () Bool)

(declare-fun e!1144396 () Bool)

(assert (=> d!545455 (= lt!696802 e!1144396)))

(declare-fun c!290689 () Bool)

(assert (=> d!545455 (= c!290689 (isEmpty!12462 lt!696771))))

(declare-fun validRegex!1973 (Regex!4865) Bool)

(assert (=> d!545455 (validRegex!1973 (regex!3537 rule!422))))

(assert (=> d!545455 (= (matchR!2338 (regex!3537 rule!422) lt!696771) lt!696802)))

(declare-fun b!1787912 () Bool)

(declare-fun res!806360 () Bool)

(declare-fun e!1144400 () Bool)

(assert (=> b!1787912 (=> (not res!806360) (not e!1144400))))

(assert (=> b!1787912 (= res!806360 (not call!111392))))

(declare-fun b!1787913 () Bool)

(declare-fun res!806364 () Bool)

(declare-fun e!1144398 () Bool)

(assert (=> b!1787913 (=> res!806364 e!1144398)))

(assert (=> b!1787913 (= res!806364 (not ((_ is ElementMatch!4865) (regex!3537 rule!422))))))

(declare-fun e!1144397 () Bool)

(assert (=> b!1787913 (= e!1144397 e!1144398)))

(declare-fun b!1787914 () Bool)

(declare-fun derivativeStep!1268 (Regex!4865 C!9904) Regex!4865)

(declare-fun tail!2675 (List!19786) List!19786)

(assert (=> b!1787914 (= e!1144396 (matchR!2338 (derivativeStep!1268 (regex!3537 rule!422) (head!4192 lt!696771)) (tail!2675 lt!696771)))))

(declare-fun b!1787915 () Bool)

(assert (=> b!1787915 (= e!1144401 (= lt!696802 call!111392))))

(declare-fun b!1787916 () Bool)

(declare-fun e!1144395 () Bool)

(assert (=> b!1787916 (= e!1144398 e!1144395)))

(declare-fun res!806366 () Bool)

(assert (=> b!1787916 (=> (not res!806366) (not e!1144395))))

(assert (=> b!1787916 (= res!806366 (not lt!696802))))

(declare-fun b!1787917 () Bool)

(assert (=> b!1787917 (= e!1144397 (not lt!696802))))

(declare-fun b!1787918 () Bool)

(declare-fun res!806365 () Bool)

(assert (=> b!1787918 (=> res!806365 e!1144398)))

(assert (=> b!1787918 (= res!806365 e!1144400)))

(declare-fun res!806363 () Bool)

(assert (=> b!1787918 (=> (not res!806363) (not e!1144400))))

(assert (=> b!1787918 (= res!806363 lt!696802)))

(declare-fun b!1787919 () Bool)

(declare-fun e!1144399 () Bool)

(assert (=> b!1787919 (= e!1144395 e!1144399)))

(declare-fun res!806361 () Bool)

(assert (=> b!1787919 (=> res!806361 e!1144399)))

(assert (=> b!1787919 (= res!806361 call!111392)))

(declare-fun b!1787920 () Bool)

(declare-fun nullable!1499 (Regex!4865) Bool)

(assert (=> b!1787920 (= e!1144396 (nullable!1499 (regex!3537 rule!422)))))

(declare-fun b!1787921 () Bool)

(declare-fun res!806362 () Bool)

(assert (=> b!1787921 (=> (not res!806362) (not e!1144400))))

(assert (=> b!1787921 (= res!806362 (isEmpty!12462 (tail!2675 lt!696771)))))

(declare-fun b!1787922 () Bool)

(declare-fun res!806367 () Bool)

(assert (=> b!1787922 (=> res!806367 e!1144399)))

(assert (=> b!1787922 (= res!806367 (not (isEmpty!12462 (tail!2675 lt!696771))))))

(declare-fun b!1787923 () Bool)

(assert (=> b!1787923 (= e!1144401 e!1144397)))

(declare-fun c!290688 () Bool)

(assert (=> b!1787923 (= c!290688 ((_ is EmptyLang!4865) (regex!3537 rule!422)))))

(declare-fun b!1787924 () Bool)

(assert (=> b!1787924 (= e!1144400 (= (head!4192 lt!696771) (c!290660 (regex!3537 rule!422))))))

(declare-fun b!1787925 () Bool)

(assert (=> b!1787925 (= e!1144399 (not (= (head!4192 lt!696771) (c!290660 (regex!3537 rule!422)))))))

(assert (= (and d!545455 c!290689) b!1787920))

(assert (= (and d!545455 (not c!290689)) b!1787914))

(assert (= (and d!545455 c!290690) b!1787915))

(assert (= (and d!545455 (not c!290690)) b!1787923))

(assert (= (and b!1787923 c!290688) b!1787917))

(assert (= (and b!1787923 (not c!290688)) b!1787913))

(assert (= (and b!1787913 (not res!806364)) b!1787918))

(assert (= (and b!1787918 res!806363) b!1787912))

(assert (= (and b!1787912 res!806360) b!1787921))

(assert (= (and b!1787921 res!806362) b!1787924))

(assert (= (and b!1787918 (not res!806365)) b!1787916))

(assert (= (and b!1787916 res!806366) b!1787919))

(assert (= (and b!1787919 (not res!806361)) b!1787922))

(assert (= (and b!1787922 (not res!806367)) b!1787925))

(assert (= (or b!1787915 b!1787912 b!1787919) bm!111387))

(declare-fun m!2211909 () Bool)

(assert (=> bm!111387 m!2211909))

(declare-fun m!2211911 () Bool)

(assert (=> b!1787921 m!2211911))

(assert (=> b!1787921 m!2211911))

(declare-fun m!2211913 () Bool)

(assert (=> b!1787921 m!2211913))

(declare-fun m!2211915 () Bool)

(assert (=> b!1787920 m!2211915))

(assert (=> d!545455 m!2211909))

(declare-fun m!2211917 () Bool)

(assert (=> d!545455 m!2211917))

(declare-fun m!2211919 () Bool)

(assert (=> b!1787925 m!2211919))

(assert (=> b!1787922 m!2211911))

(assert (=> b!1787922 m!2211911))

(assert (=> b!1787922 m!2211913))

(assert (=> b!1787924 m!2211919))

(assert (=> b!1787914 m!2211919))

(assert (=> b!1787914 m!2211919))

(declare-fun m!2211921 () Bool)

(assert (=> b!1787914 m!2211921))

(assert (=> b!1787914 m!2211911))

(assert (=> b!1787914 m!2211921))

(assert (=> b!1787914 m!2211911))

(declare-fun m!2211923 () Bool)

(assert (=> b!1787914 m!2211923))

(assert (=> b!1787734 d!545455))

(declare-fun d!545475 () Bool)

(declare-fun res!806372 () Bool)

(declare-fun e!1144404 () Bool)

(assert (=> d!545475 (=> (not res!806372) (not e!1144404))))

(assert (=> d!545475 (= res!806372 (validRegex!1973 (regex!3537 rule!422)))))

(assert (=> d!545475 (= (ruleValid!1035 thiss!24550 rule!422) e!1144404)))

(declare-fun b!1787930 () Bool)

(declare-fun res!806373 () Bool)

(assert (=> b!1787930 (=> (not res!806373) (not e!1144404))))

(assert (=> b!1787930 (= res!806373 (not (nullable!1499 (regex!3537 rule!422))))))

(declare-fun b!1787931 () Bool)

(assert (=> b!1787931 (= e!1144404 (not (= (tag!3941 rule!422) (String!22468 ""))))))

(assert (= (and d!545475 res!806372) b!1787930))

(assert (= (and b!1787930 res!806373) b!1787931))

(assert (=> d!545475 m!2211917))

(assert (=> b!1787930 m!2211915))

(assert (=> b!1787734 d!545475))

(declare-fun d!545477 () Bool)

(assert (=> d!545477 (ruleValid!1035 thiss!24550 rule!422)))

(declare-fun lt!696805 () Unit!34121)

(declare-fun choose!11285 (LexerInterface!3166 Rule!6874 List!19787) Unit!34121)

(assert (=> d!545477 (= lt!696805 (choose!11285 thiss!24550 rule!422 rules!3447))))

(assert (=> d!545477 (contains!3569 rules!3447 rule!422)))

(assert (=> d!545477 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!558 thiss!24550 rule!422 rules!3447) lt!696805)))

(declare-fun bs!405477 () Bool)

(assert (= bs!405477 d!545477))

(assert (=> bs!405477 m!2211737))

(declare-fun m!2211925 () Bool)

(assert (=> bs!405477 m!2211925))

(assert (=> bs!405477 m!2211733))

(assert (=> b!1787734 d!545477))

(declare-fun b!1787960 () Bool)

(declare-fun e!1144419 () Bool)

(declare-fun inv!16 (TokenValue!3627) Bool)

(assert (=> b!1787960 (= e!1144419 (inv!16 (value!110477 token!523)))))

(declare-fun d!545479 () Bool)

(declare-fun c!290697 () Bool)

(assert (=> d!545479 (= c!290697 ((_ is IntegerValue!10881) (value!110477 token!523)))))

(assert (=> d!545479 (= (inv!21 (value!110477 token!523)) e!1144419)))

(declare-fun b!1787961 () Bool)

(declare-fun e!1144417 () Bool)

(declare-fun inv!17 (TokenValue!3627) Bool)

(assert (=> b!1787961 (= e!1144417 (inv!17 (value!110477 token!523)))))

(declare-fun b!1787962 () Bool)

(declare-fun res!806390 () Bool)

(declare-fun e!1144418 () Bool)

(assert (=> b!1787962 (=> res!806390 e!1144418)))

(assert (=> b!1787962 (= res!806390 (not ((_ is IntegerValue!10883) (value!110477 token!523))))))

(assert (=> b!1787962 (= e!1144417 e!1144418)))

(declare-fun b!1787963 () Bool)

(assert (=> b!1787963 (= e!1144419 e!1144417)))

(declare-fun c!290698 () Bool)

(assert (=> b!1787963 (= c!290698 ((_ is IntegerValue!10882) (value!110477 token!523)))))

(declare-fun b!1787964 () Bool)

(declare-fun inv!15 (TokenValue!3627) Bool)

(assert (=> b!1787964 (= e!1144418 (inv!15 (value!110477 token!523)))))

(assert (= (and d!545479 c!290697) b!1787960))

(assert (= (and d!545479 (not c!290697)) b!1787963))

(assert (= (and b!1787963 c!290698) b!1787961))

(assert (= (and b!1787963 (not c!290698)) b!1787962))

(assert (= (and b!1787962 (not res!806390)) b!1787964))

(declare-fun m!2211927 () Bool)

(assert (=> b!1787960 m!2211927))

(declare-fun m!2211929 () Bool)

(assert (=> b!1787961 m!2211929))

(declare-fun m!2211931 () Bool)

(assert (=> b!1787964 m!2211931))

(assert (=> b!1787760 d!545479))

(declare-fun d!545481 () Bool)

(declare-fun res!806402 () Bool)

(declare-fun e!1144425 () Bool)

(assert (=> d!545481 (=> (not res!806402) (not e!1144425))))

(assert (=> d!545481 (= res!806402 (not (isEmpty!12462 (originalCharacters!4351 token!523))))))

(assert (=> d!545481 (= (inv!25686 token!523) e!1144425)))

(declare-fun b!1787978 () Bool)

(declare-fun res!806403 () Bool)

(assert (=> b!1787978 (=> (not res!806403) (not e!1144425))))

(assert (=> b!1787978 (= res!806403 (= (originalCharacters!4351 token!523) (list!8019 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (value!110477 token!523)))))))

(declare-fun b!1787979 () Bool)

(assert (=> b!1787979 (= e!1144425 (= (size!15664 token!523) (size!15666 (originalCharacters!4351 token!523))))))

(assert (= (and d!545481 res!806402) b!1787978))

(assert (= (and b!1787978 res!806403) b!1787979))

(declare-fun b_lambda!58717 () Bool)

(assert (=> (not b_lambda!58717) (not b!1787978)))

(declare-fun t!167340 () Bool)

(declare-fun tb!108961 () Bool)

(assert (=> (and b!1787755 (= (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toChars!4923 (transformation!3537 (rule!5629 token!523)))) t!167340) tb!108961))

(declare-fun b!1787980 () Bool)

(declare-fun e!1144426 () Bool)

(declare-fun tp!505612 () Bool)

(assert (=> b!1787980 (= e!1144426 (and (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (value!110477 token!523)))) tp!505612))))

(declare-fun result!131104 () Bool)

(assert (=> tb!108961 (= result!131104 (and (inv!25688 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (value!110477 token!523))) e!1144426))))

(assert (= tb!108961 b!1787980))

(declare-fun m!2211969 () Bool)

(assert (=> b!1787980 m!2211969))

(declare-fun m!2211971 () Bool)

(assert (=> tb!108961 m!2211971))

(assert (=> b!1787978 t!167340))

(declare-fun b_and!137805 () Bool)

(assert (= b_and!137763 (and (=> t!167340 result!131104) b_and!137805)))

(declare-fun t!167342 () Bool)

(declare-fun tb!108963 () Bool)

(assert (=> (and b!1787756 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 token!523)))) t!167342) tb!108963))

(declare-fun result!131106 () Bool)

(assert (= result!131106 result!131104))

(assert (=> b!1787978 t!167342))

(declare-fun b_and!137807 () Bool)

(assert (= b_and!137765 (and (=> t!167342 result!131106) b_and!137807)))

(declare-fun tb!108965 () Bool)

(declare-fun t!167344 () Bool)

(assert (=> (and b!1787740 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 token!523)))) t!167344) tb!108965))

(declare-fun result!131108 () Bool)

(assert (= result!131108 result!131104))

(assert (=> b!1787978 t!167344))

(declare-fun b_and!137809 () Bool)

(assert (= b_and!137767 (and (=> t!167344 result!131108) b_and!137809)))

(declare-fun m!2211973 () Bool)

(assert (=> d!545481 m!2211973))

(declare-fun m!2211975 () Bool)

(assert (=> b!1787978 m!2211975))

(assert (=> b!1787978 m!2211975))

(declare-fun m!2211977 () Bool)

(assert (=> b!1787978 m!2211977))

(declare-fun m!2211979 () Bool)

(assert (=> b!1787979 m!2211979))

(assert (=> start!178114 d!545481))

(declare-fun d!545489 () Bool)

(declare-fun c!290705 () Bool)

(assert (=> d!545489 (= c!290705 (isEmpty!12462 lt!696750))))

(declare-fun e!1144433 () Bool)

(assert (=> d!545489 (= (prefixMatch!748 lt!696746 lt!696750) e!1144433)))

(declare-fun b!1787991 () Bool)

(declare-fun lostCause!608 (Regex!4865) Bool)

(assert (=> b!1787991 (= e!1144433 (not (lostCause!608 lt!696746)))))

(declare-fun b!1787992 () Bool)

(assert (=> b!1787992 (= e!1144433 (prefixMatch!748 (derivativeStep!1268 lt!696746 (head!4192 lt!696750)) (tail!2675 lt!696750)))))

(assert (= (and d!545489 c!290705) b!1787991))

(assert (= (and d!545489 (not c!290705)) b!1787992))

(declare-fun m!2211995 () Bool)

(assert (=> d!545489 m!2211995))

(declare-fun m!2211997 () Bool)

(assert (=> b!1787991 m!2211997))

(declare-fun m!2211999 () Bool)

(assert (=> b!1787992 m!2211999))

(assert (=> b!1787992 m!2211999))

(declare-fun m!2212001 () Bool)

(assert (=> b!1787992 m!2212001))

(declare-fun m!2212003 () Bool)

(assert (=> b!1787992 m!2212003))

(assert (=> b!1787992 m!2212001))

(assert (=> b!1787992 m!2212003))

(declare-fun m!2212005 () Bool)

(assert (=> b!1787992 m!2212005))

(assert (=> b!1787738 d!545489))

(declare-fun b!1788001 () Bool)

(declare-fun e!1144439 () List!19786)

(assert (=> b!1788001 (= e!1144439 (Cons!19716 (head!4192 suffix!1421) Nil!19716))))

(declare-fun e!1144438 () Bool)

(declare-fun b!1788004 () Bool)

(declare-fun lt!696830 () List!19786)

(assert (=> b!1788004 (= e!1144438 (or (not (= (Cons!19716 (head!4192 suffix!1421) Nil!19716) Nil!19716)) (= lt!696830 lt!696771)))))

(declare-fun b!1788003 () Bool)

(declare-fun res!806409 () Bool)

(assert (=> b!1788003 (=> (not res!806409) (not e!1144438))))

(assert (=> b!1788003 (= res!806409 (= (size!15666 lt!696830) (+ (size!15666 lt!696771) (size!15666 (Cons!19716 (head!4192 suffix!1421) Nil!19716)))))))

(declare-fun d!545497 () Bool)

(assert (=> d!545497 e!1144438))

(declare-fun res!806408 () Bool)

(assert (=> d!545497 (=> (not res!806408) (not e!1144438))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2873 (List!19786) (InoxSet C!9904))

(assert (=> d!545497 (= res!806408 (= (content!2873 lt!696830) ((_ map or) (content!2873 lt!696771) (content!2873 (Cons!19716 (head!4192 suffix!1421) Nil!19716)))))))

(assert (=> d!545497 (= lt!696830 e!1144439)))

(declare-fun c!290708 () Bool)

(assert (=> d!545497 (= c!290708 ((_ is Nil!19716) lt!696771))))

(assert (=> d!545497 (= (++!5361 lt!696771 (Cons!19716 (head!4192 suffix!1421) Nil!19716)) lt!696830)))

(declare-fun b!1788002 () Bool)

(assert (=> b!1788002 (= e!1144439 (Cons!19716 (h!25117 lt!696771) (++!5361 (t!167325 lt!696771) (Cons!19716 (head!4192 suffix!1421) Nil!19716))))))

(assert (= (and d!545497 c!290708) b!1788001))

(assert (= (and d!545497 (not c!290708)) b!1788002))

(assert (= (and d!545497 res!806408) b!1788003))

(assert (= (and b!1788003 res!806409) b!1788004))

(declare-fun m!2212007 () Bool)

(assert (=> b!1788003 m!2212007))

(declare-fun m!2212009 () Bool)

(assert (=> b!1788003 m!2212009))

(declare-fun m!2212011 () Bool)

(assert (=> b!1788003 m!2212011))

(declare-fun m!2212013 () Bool)

(assert (=> d!545497 m!2212013))

(declare-fun m!2212015 () Bool)

(assert (=> d!545497 m!2212015))

(declare-fun m!2212017 () Bool)

(assert (=> d!545497 m!2212017))

(declare-fun m!2212019 () Bool)

(assert (=> b!1788002 m!2212019))

(assert (=> b!1787738 d!545497))

(declare-fun d!545499 () Bool)

(assert (=> d!545499 (= (head!4192 suffix!1421) (h!25117 suffix!1421))))

(assert (=> b!1787738 d!545499))

(declare-fun d!545501 () Bool)

(declare-fun lt!696833 () Unit!34121)

(declare-fun lemma!421 (List!19787 LexerInterface!3166 List!19787) Unit!34121)

(assert (=> d!545501 (= lt!696833 (lemma!421 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70822 () Int)

(declare-datatypes ((List!19788 0))(
  ( (Nil!19718) (Cons!19718 (h!25119 Regex!4865) (t!167387 List!19788)) )
))
(declare-fun generalisedUnion!429 (List!19788) Regex!4865)

(declare-fun map!4069 (List!19787 Int) List!19788)

(assert (=> d!545501 (= (rulesRegex!893 thiss!24550 rules!3447) (generalisedUnion!429 (map!4069 rules!3447 lambda!70822)))))

(declare-fun bs!405480 () Bool)

(assert (= bs!405480 d!545501))

(declare-fun m!2212021 () Bool)

(assert (=> bs!405480 m!2212021))

(declare-fun m!2212023 () Bool)

(assert (=> bs!405480 m!2212023))

(assert (=> bs!405480 m!2212023))

(declare-fun m!2212025 () Bool)

(assert (=> bs!405480 m!2212025))

(assert (=> b!1787738 d!545501))

(declare-fun b!1788015 () Bool)

(declare-fun e!1144446 () Bool)

(assert (=> b!1788015 (= e!1144446 (isPrefix!1777 (tail!2675 lt!696750) (tail!2675 lt!696739)))))

(declare-fun b!1788014 () Bool)

(declare-fun res!806421 () Bool)

(assert (=> b!1788014 (=> (not res!806421) (not e!1144446))))

(assert (=> b!1788014 (= res!806421 (= (head!4192 lt!696750) (head!4192 lt!696739)))))

(declare-fun d!545503 () Bool)

(declare-fun e!1144447 () Bool)

(assert (=> d!545503 e!1144447))

(declare-fun res!806420 () Bool)

(assert (=> d!545503 (=> res!806420 e!1144447)))

(declare-fun lt!696836 () Bool)

(assert (=> d!545503 (= res!806420 (not lt!696836))))

(declare-fun e!1144448 () Bool)

(assert (=> d!545503 (= lt!696836 e!1144448)))

(declare-fun res!806419 () Bool)

(assert (=> d!545503 (=> res!806419 e!1144448)))

(assert (=> d!545503 (= res!806419 ((_ is Nil!19716) lt!696750))))

(assert (=> d!545503 (= (isPrefix!1777 lt!696750 lt!696739) lt!696836)))

(declare-fun b!1788013 () Bool)

(assert (=> b!1788013 (= e!1144448 e!1144446)))

(declare-fun res!806418 () Bool)

(assert (=> b!1788013 (=> (not res!806418) (not e!1144446))))

(assert (=> b!1788013 (= res!806418 (not ((_ is Nil!19716) lt!696739)))))

(declare-fun b!1788016 () Bool)

(assert (=> b!1788016 (= e!1144447 (>= (size!15666 lt!696739) (size!15666 lt!696750)))))

(assert (= (and d!545503 (not res!806419)) b!1788013))

(assert (= (and b!1788013 res!806418) b!1788014))

(assert (= (and b!1788014 res!806421) b!1788015))

(assert (= (and d!545503 (not res!806420)) b!1788016))

(assert (=> b!1788015 m!2212003))

(declare-fun m!2212027 () Bool)

(assert (=> b!1788015 m!2212027))

(assert (=> b!1788015 m!2212003))

(assert (=> b!1788015 m!2212027))

(declare-fun m!2212029 () Bool)

(assert (=> b!1788015 m!2212029))

(assert (=> b!1788014 m!2211999))

(declare-fun m!2212031 () Bool)

(assert (=> b!1788014 m!2212031))

(assert (=> b!1788016 m!2211709))

(declare-fun m!2212033 () Bool)

(assert (=> b!1788016 m!2212033))

(assert (=> b!1787759 d!545503))

(declare-fun bm!111391 () Bool)

(declare-fun call!111396 () Bool)

(assert (=> bm!111391 (= call!111396 (isEmpty!12462 lt!696739))))

(declare-fun d!545505 () Bool)

(declare-fun e!1144455 () Bool)

(assert (=> d!545505 e!1144455))

(declare-fun c!290711 () Bool)

(assert (=> d!545505 (= c!290711 ((_ is EmptyExpr!4865) lt!696746))))

(declare-fun lt!696837 () Bool)

(declare-fun e!1144450 () Bool)

(assert (=> d!545505 (= lt!696837 e!1144450)))

(declare-fun c!290710 () Bool)

(assert (=> d!545505 (= c!290710 (isEmpty!12462 lt!696739))))

(assert (=> d!545505 (validRegex!1973 lt!696746)))

(assert (=> d!545505 (= (matchR!2338 lt!696746 lt!696739) lt!696837)))

(declare-fun b!1788017 () Bool)

(declare-fun res!806422 () Bool)

(declare-fun e!1144454 () Bool)

(assert (=> b!1788017 (=> (not res!806422) (not e!1144454))))

(assert (=> b!1788017 (= res!806422 (not call!111396))))

(declare-fun b!1788018 () Bool)

(declare-fun res!806426 () Bool)

(declare-fun e!1144452 () Bool)

(assert (=> b!1788018 (=> res!806426 e!1144452)))

(assert (=> b!1788018 (= res!806426 (not ((_ is ElementMatch!4865) lt!696746)))))

(declare-fun e!1144451 () Bool)

(assert (=> b!1788018 (= e!1144451 e!1144452)))

(declare-fun b!1788019 () Bool)

(assert (=> b!1788019 (= e!1144450 (matchR!2338 (derivativeStep!1268 lt!696746 (head!4192 lt!696739)) (tail!2675 lt!696739)))))

(declare-fun b!1788020 () Bool)

(assert (=> b!1788020 (= e!1144455 (= lt!696837 call!111396))))

(declare-fun b!1788021 () Bool)

(declare-fun e!1144449 () Bool)

(assert (=> b!1788021 (= e!1144452 e!1144449)))

(declare-fun res!806428 () Bool)

(assert (=> b!1788021 (=> (not res!806428) (not e!1144449))))

(assert (=> b!1788021 (= res!806428 (not lt!696837))))

(declare-fun b!1788022 () Bool)

(assert (=> b!1788022 (= e!1144451 (not lt!696837))))

(declare-fun b!1788023 () Bool)

(declare-fun res!806427 () Bool)

(assert (=> b!1788023 (=> res!806427 e!1144452)))

(assert (=> b!1788023 (= res!806427 e!1144454)))

(declare-fun res!806425 () Bool)

(assert (=> b!1788023 (=> (not res!806425) (not e!1144454))))

(assert (=> b!1788023 (= res!806425 lt!696837)))

(declare-fun b!1788024 () Bool)

(declare-fun e!1144453 () Bool)

(assert (=> b!1788024 (= e!1144449 e!1144453)))

(declare-fun res!806423 () Bool)

(assert (=> b!1788024 (=> res!806423 e!1144453)))

(assert (=> b!1788024 (= res!806423 call!111396)))

(declare-fun b!1788025 () Bool)

(assert (=> b!1788025 (= e!1144450 (nullable!1499 lt!696746))))

(declare-fun b!1788026 () Bool)

(declare-fun res!806424 () Bool)

(assert (=> b!1788026 (=> (not res!806424) (not e!1144454))))

(assert (=> b!1788026 (= res!806424 (isEmpty!12462 (tail!2675 lt!696739)))))

(declare-fun b!1788027 () Bool)

(declare-fun res!806429 () Bool)

(assert (=> b!1788027 (=> res!806429 e!1144453)))

(assert (=> b!1788027 (= res!806429 (not (isEmpty!12462 (tail!2675 lt!696739))))))

(declare-fun b!1788028 () Bool)

(assert (=> b!1788028 (= e!1144455 e!1144451)))

(declare-fun c!290709 () Bool)

(assert (=> b!1788028 (= c!290709 ((_ is EmptyLang!4865) lt!696746))))

(declare-fun b!1788029 () Bool)

(assert (=> b!1788029 (= e!1144454 (= (head!4192 lt!696739) (c!290660 lt!696746)))))

(declare-fun b!1788030 () Bool)

(assert (=> b!1788030 (= e!1144453 (not (= (head!4192 lt!696739) (c!290660 lt!696746))))))

(assert (= (and d!545505 c!290710) b!1788025))

(assert (= (and d!545505 (not c!290710)) b!1788019))

(assert (= (and d!545505 c!290711) b!1788020))

(assert (= (and d!545505 (not c!290711)) b!1788028))

(assert (= (and b!1788028 c!290709) b!1788022))

(assert (= (and b!1788028 (not c!290709)) b!1788018))

(assert (= (and b!1788018 (not res!806426)) b!1788023))

(assert (= (and b!1788023 res!806425) b!1788017))

(assert (= (and b!1788017 res!806422) b!1788026))

(assert (= (and b!1788026 res!806424) b!1788029))

(assert (= (and b!1788023 (not res!806427)) b!1788021))

(assert (= (and b!1788021 res!806428) b!1788024))

(assert (= (and b!1788024 (not res!806423)) b!1788027))

(assert (= (and b!1788027 (not res!806429)) b!1788030))

(assert (= (or b!1788020 b!1788017 b!1788024) bm!111391))

(declare-fun m!2212035 () Bool)

(assert (=> bm!111391 m!2212035))

(assert (=> b!1788026 m!2212027))

(assert (=> b!1788026 m!2212027))

(declare-fun m!2212037 () Bool)

(assert (=> b!1788026 m!2212037))

(declare-fun m!2212039 () Bool)

(assert (=> b!1788025 m!2212039))

(assert (=> d!545505 m!2212035))

(declare-fun m!2212041 () Bool)

(assert (=> d!545505 m!2212041))

(assert (=> b!1788030 m!2212031))

(assert (=> b!1788027 m!2212027))

(assert (=> b!1788027 m!2212027))

(assert (=> b!1788027 m!2212037))

(assert (=> b!1788029 m!2212031))

(assert (=> b!1788019 m!2212031))

(assert (=> b!1788019 m!2212031))

(declare-fun m!2212043 () Bool)

(assert (=> b!1788019 m!2212043))

(assert (=> b!1788019 m!2212027))

(assert (=> b!1788019 m!2212043))

(assert (=> b!1788019 m!2212027))

(declare-fun m!2212045 () Bool)

(assert (=> b!1788019 m!2212045))

(assert (=> b!1787759 d!545505))

(declare-fun b!1788031 () Bool)

(declare-fun e!1144457 () List!19786)

(assert (=> b!1788031 (= e!1144457 (Cons!19716 (head!4192 lt!696759) Nil!19716))))

(declare-fun b!1788034 () Bool)

(declare-fun e!1144456 () Bool)

(declare-fun lt!696838 () List!19786)

(assert (=> b!1788034 (= e!1144456 (or (not (= (Cons!19716 (head!4192 lt!696759) Nil!19716) Nil!19716)) (= lt!696838 lt!696771)))))

(declare-fun b!1788033 () Bool)

(declare-fun res!806431 () Bool)

(assert (=> b!1788033 (=> (not res!806431) (not e!1144456))))

(assert (=> b!1788033 (= res!806431 (= (size!15666 lt!696838) (+ (size!15666 lt!696771) (size!15666 (Cons!19716 (head!4192 lt!696759) Nil!19716)))))))

(declare-fun d!545507 () Bool)

(assert (=> d!545507 e!1144456))

(declare-fun res!806430 () Bool)

(assert (=> d!545507 (=> (not res!806430) (not e!1144456))))

(assert (=> d!545507 (= res!806430 (= (content!2873 lt!696838) ((_ map or) (content!2873 lt!696771) (content!2873 (Cons!19716 (head!4192 lt!696759) Nil!19716)))))))

(assert (=> d!545507 (= lt!696838 e!1144457)))

(declare-fun c!290712 () Bool)

(assert (=> d!545507 (= c!290712 ((_ is Nil!19716) lt!696771))))

(assert (=> d!545507 (= (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716)) lt!696838)))

(declare-fun b!1788032 () Bool)

(assert (=> b!1788032 (= e!1144457 (Cons!19716 (h!25117 lt!696771) (++!5361 (t!167325 lt!696771) (Cons!19716 (head!4192 lt!696759) Nil!19716))))))

(assert (= (and d!545507 c!290712) b!1788031))

(assert (= (and d!545507 (not c!290712)) b!1788032))

(assert (= (and d!545507 res!806430) b!1788033))

(assert (= (and b!1788033 res!806431) b!1788034))

(declare-fun m!2212047 () Bool)

(assert (=> b!1788033 m!2212047))

(assert (=> b!1788033 m!2212009))

(declare-fun m!2212049 () Bool)

(assert (=> b!1788033 m!2212049))

(declare-fun m!2212051 () Bool)

(assert (=> d!545507 m!2212051))

(assert (=> d!545507 m!2212015))

(declare-fun m!2212053 () Bool)

(assert (=> d!545507 m!2212053))

(declare-fun m!2212055 () Bool)

(assert (=> b!1788032 m!2212055))

(assert (=> b!1787759 d!545507))

(declare-fun b!1788037 () Bool)

(declare-fun e!1144458 () Bool)

(assert (=> b!1788037 (= e!1144458 (isPrefix!1777 (tail!2675 (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716))) (tail!2675 lt!696733)))))

(declare-fun b!1788036 () Bool)

(declare-fun res!806435 () Bool)

(assert (=> b!1788036 (=> (not res!806435) (not e!1144458))))

(assert (=> b!1788036 (= res!806435 (= (head!4192 (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716))) (head!4192 lt!696733)))))

(declare-fun d!545509 () Bool)

(declare-fun e!1144459 () Bool)

(assert (=> d!545509 e!1144459))

(declare-fun res!806434 () Bool)

(assert (=> d!545509 (=> res!806434 e!1144459)))

(declare-fun lt!696839 () Bool)

(assert (=> d!545509 (= res!806434 (not lt!696839))))

(declare-fun e!1144460 () Bool)

(assert (=> d!545509 (= lt!696839 e!1144460)))

(declare-fun res!806433 () Bool)

(assert (=> d!545509 (=> res!806433 e!1144460)))

(assert (=> d!545509 (= res!806433 ((_ is Nil!19716) (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716))))))

(assert (=> d!545509 (= (isPrefix!1777 (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716)) lt!696733) lt!696839)))

(declare-fun b!1788035 () Bool)

(assert (=> b!1788035 (= e!1144460 e!1144458)))

(declare-fun res!806432 () Bool)

(assert (=> b!1788035 (=> (not res!806432) (not e!1144458))))

(assert (=> b!1788035 (= res!806432 (not ((_ is Nil!19716) lt!696733)))))

(declare-fun b!1788038 () Bool)

(assert (=> b!1788038 (= e!1144459 (>= (size!15666 lt!696733) (size!15666 (++!5361 lt!696771 (Cons!19716 (head!4192 lt!696759) Nil!19716)))))))

(assert (= (and d!545509 (not res!806433)) b!1788035))

(assert (= (and b!1788035 res!806432) b!1788036))

(assert (= (and b!1788036 res!806435) b!1788037))

(assert (= (and d!545509 (not res!806434)) b!1788038))

(assert (=> b!1788037 m!2211797))

(declare-fun m!2212057 () Bool)

(assert (=> b!1788037 m!2212057))

(declare-fun m!2212059 () Bool)

(assert (=> b!1788037 m!2212059))

(assert (=> b!1788037 m!2212057))

(assert (=> b!1788037 m!2212059))

(declare-fun m!2212061 () Bool)

(assert (=> b!1788037 m!2212061))

(assert (=> b!1788036 m!2211797))

(declare-fun m!2212063 () Bool)

(assert (=> b!1788036 m!2212063))

(declare-fun m!2212065 () Bool)

(assert (=> b!1788036 m!2212065))

(declare-fun m!2212067 () Bool)

(assert (=> b!1788038 m!2212067))

(assert (=> b!1788038 m!2211797))

(declare-fun m!2212069 () Bool)

(assert (=> b!1788038 m!2212069))

(assert (=> b!1787759 d!545509))

(declare-fun d!545511 () Bool)

(assert (=> d!545511 (= (head!4192 lt!696759) (h!25117 lt!696759))))

(assert (=> b!1787759 d!545511))

(declare-fun d!545513 () Bool)

(assert (=> d!545513 (matchR!2338 (rulesRegex!893 thiss!24550 rules!3447) (list!8019 (charsOf!2186 (_1!11051 lt!696752))))))

(declare-fun lt!696842 () Unit!34121)

(declare-fun choose!11291 (LexerInterface!3166 List!19787 List!19786 Token!6640 Rule!6874 List!19786) Unit!34121)

(assert (=> d!545513 (= lt!696842 (choose!11291 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752) (rule!5629 (_1!11051 lt!696752)) (_2!11051 lt!696752)))))

(assert (=> d!545513 (not (isEmpty!12463 rules!3447))))

(assert (=> d!545513 (= (lemmaMaxPrefixThenMatchesRulesRegex!244 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752) (rule!5629 (_1!11051 lt!696752)) (_2!11051 lt!696752)) lt!696842)))

(declare-fun bs!405481 () Bool)

(assert (= bs!405481 d!545513))

(assert (=> bs!405481 m!2211755))

(assert (=> bs!405481 m!2211675))

(assert (=> bs!405481 m!2211785))

(assert (=> bs!405481 m!2211675))

(assert (=> bs!405481 m!2211721))

(assert (=> bs!405481 m!2211785))

(assert (=> bs!405481 m!2211721))

(declare-fun m!2212071 () Bool)

(assert (=> bs!405481 m!2212071))

(declare-fun m!2212073 () Bool)

(assert (=> bs!405481 m!2212073))

(assert (=> b!1787759 d!545513))

(declare-fun d!545515 () Bool)

(assert (=> d!545515 (isPrefix!1777 (++!5361 lt!696771 (Cons!19716 (head!4192 (getSuffix!944 lt!696733 lt!696771)) Nil!19716)) lt!696733)))

(declare-fun lt!696845 () Unit!34121)

(declare-fun choose!11292 (List!19786 List!19786) Unit!34121)

(assert (=> d!545515 (= lt!696845 (choose!11292 lt!696771 lt!696733))))

(assert (=> d!545515 (isPrefix!1777 lt!696771 lt!696733)))

(assert (=> d!545515 (= (lemmaAddHeadSuffixToPrefixStillPrefix!313 lt!696771 lt!696733) lt!696845)))

(declare-fun bs!405482 () Bool)

(assert (= bs!405482 d!545515))

(declare-fun m!2212075 () Bool)

(assert (=> bs!405482 m!2212075))

(assert (=> bs!405482 m!2211669))

(declare-fun m!2212077 () Bool)

(assert (=> bs!405482 m!2212077))

(declare-fun m!2212079 () Bool)

(assert (=> bs!405482 m!2212079))

(assert (=> bs!405482 m!2211803))

(assert (=> bs!405482 m!2211803))

(declare-fun m!2212081 () Bool)

(assert (=> bs!405482 m!2212081))

(assert (=> bs!405482 m!2212077))

(assert (=> b!1787759 d!545515))

(declare-fun d!545517 () Bool)

(assert (=> d!545517 (not (matchR!2338 lt!696746 lt!696739))))

(declare-fun lt!696848 () Unit!34121)

(declare-fun choose!11293 (Regex!4865 List!19786 List!19786) Unit!34121)

(assert (=> d!545517 (= lt!696848 (choose!11293 lt!696746 lt!696750 lt!696739))))

(assert (=> d!545517 (validRegex!1973 lt!696746)))

(assert (=> d!545517 (= (lemmaNotPrefixMatchThenCannotMatchLonger!176 lt!696746 lt!696750 lt!696739) lt!696848)))

(declare-fun bs!405483 () Bool)

(assert (= bs!405483 d!545517))

(assert (=> bs!405483 m!2211801))

(declare-fun m!2212083 () Bool)

(assert (=> bs!405483 m!2212083))

(assert (=> bs!405483 m!2212041))

(assert (=> b!1787759 d!545517))

(declare-fun d!545519 () Bool)

(declare-fun lt!696861 () List!19786)

(assert (=> d!545519 (= (++!5361 lt!696771 lt!696861) lt!696733)))

(declare-fun e!1144467 () List!19786)

(assert (=> d!545519 (= lt!696861 e!1144467)))

(declare-fun c!290717 () Bool)

(assert (=> d!545519 (= c!290717 ((_ is Cons!19716) lt!696771))))

(assert (=> d!545519 (>= (size!15666 lt!696733) (size!15666 lt!696771))))

(assert (=> d!545519 (= (getSuffix!944 lt!696733 lt!696771) lt!696861)))

(declare-fun b!1788049 () Bool)

(assert (=> b!1788049 (= e!1144467 (getSuffix!944 (tail!2675 lt!696733) (t!167325 lt!696771)))))

(declare-fun b!1788050 () Bool)

(assert (=> b!1788050 (= e!1144467 lt!696733)))

(assert (= (and d!545519 c!290717) b!1788049))

(assert (= (and d!545519 (not c!290717)) b!1788050))

(declare-fun m!2212085 () Bool)

(assert (=> d!545519 m!2212085))

(assert (=> d!545519 m!2212067))

(assert (=> d!545519 m!2212009))

(assert (=> b!1788049 m!2212059))

(assert (=> b!1788049 m!2212059))

(declare-fun m!2212087 () Bool)

(assert (=> b!1788049 m!2212087))

(assert (=> b!1787759 d!545519))

(declare-fun d!545521 () Bool)

(assert (=> d!545521 (isPrefix!1777 lt!696750 lt!696739)))

(declare-fun lt!696864 () Unit!34121)

(declare-fun choose!11295 (List!19786 List!19786 List!19786) Unit!34121)

(assert (=> d!545521 (= lt!696864 (choose!11295 lt!696739 lt!696750 lt!696733))))

(assert (=> d!545521 (isPrefix!1777 lt!696739 lt!696733)))

(assert (=> d!545521 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!185 lt!696739 lt!696750 lt!696733) lt!696864)))

(declare-fun bs!405484 () Bool)

(assert (= bs!405484 d!545521))

(assert (=> bs!405484 m!2211809))

(declare-fun m!2212089 () Bool)

(assert (=> bs!405484 m!2212089))

(assert (=> bs!405484 m!2211667))

(assert (=> b!1787759 d!545521))

(declare-fun d!545523 () Bool)

(assert (=> d!545523 (= suffix!1421 lt!696759)))

(declare-fun lt!696867 () Unit!34121)

(declare-fun choose!11296 (List!19786 List!19786 List!19786 List!19786 List!19786) Unit!34121)

(assert (=> d!545523 (= lt!696867 (choose!11296 lt!696771 suffix!1421 lt!696771 lt!696759 lt!696733))))

(assert (=> d!545523 (isPrefix!1777 lt!696771 lt!696733)))

(assert (=> d!545523 (= (lemmaSamePrefixThenSameSuffix!888 lt!696771 suffix!1421 lt!696771 lt!696759 lt!696733) lt!696867)))

(declare-fun bs!405485 () Bool)

(assert (= bs!405485 d!545523))

(declare-fun m!2212091 () Bool)

(assert (=> bs!405485 m!2212091))

(assert (=> bs!405485 m!2211669))

(assert (=> b!1787759 d!545523))

(declare-fun d!545525 () Bool)

(assert (=> d!545525 (= (get!6082 lt!696769) (v!25594 lt!696769))))

(assert (=> b!1787758 d!545525))

(declare-fun d!545527 () Bool)

(declare-fun isEmpty!12465 (Option!4096) Bool)

(assert (=> d!545527 (= (isDefined!3440 lt!696769) (not (isEmpty!12465 lt!696769)))))

(declare-fun bs!405486 () Bool)

(assert (= bs!405486 d!545527))

(declare-fun m!2212093 () Bool)

(assert (=> bs!405486 m!2212093))

(assert (=> b!1787762 d!545527))

(declare-fun b!1788108 () Bool)

(declare-fun e!1144492 () Option!4096)

(declare-fun call!111399 () Option!4096)

(assert (=> b!1788108 (= e!1144492 call!111399)))

(declare-fun d!545529 () Bool)

(declare-fun e!1144491 () Bool)

(assert (=> d!545529 e!1144491))

(declare-fun res!806478 () Bool)

(assert (=> d!545529 (=> res!806478 e!1144491)))

(declare-fun lt!696897 () Option!4096)

(assert (=> d!545529 (= res!806478 (isEmpty!12465 lt!696897))))

(assert (=> d!545529 (= lt!696897 e!1144492)))

(declare-fun c!290727 () Bool)

(assert (=> d!545529 (= c!290727 (and ((_ is Cons!19717) rules!3447) ((_ is Nil!19717) (t!167326 rules!3447))))))

(declare-fun lt!696899 () Unit!34121)

(declare-fun lt!696898 () Unit!34121)

(assert (=> d!545529 (= lt!696899 lt!696898)))

(assert (=> d!545529 (isPrefix!1777 lt!696771 lt!696771)))

(declare-fun lemmaIsPrefixRefl!1168 (List!19786 List!19786) Unit!34121)

(assert (=> d!545529 (= lt!696898 (lemmaIsPrefixRefl!1168 lt!696771 lt!696771))))

(declare-fun rulesValidInductive!1204 (LexerInterface!3166 List!19787) Bool)

(assert (=> d!545529 (rulesValidInductive!1204 thiss!24550 rules!3447)))

(assert (=> d!545529 (= (maxPrefix!1720 thiss!24550 rules!3447 lt!696771) lt!696897)))

(declare-fun b!1788109 () Bool)

(declare-fun res!806479 () Bool)

(declare-fun e!1144493 () Bool)

(assert (=> b!1788109 (=> (not res!806479) (not e!1144493))))

(assert (=> b!1788109 (= res!806479 (= (value!110477 (_1!11051 (get!6082 lt!696897))) (apply!5337 (transformation!3537 (rule!5629 (_1!11051 (get!6082 lt!696897)))) (seqFromList!2506 (originalCharacters!4351 (_1!11051 (get!6082 lt!696897)))))))))

(declare-fun b!1788110 () Bool)

(declare-fun res!806481 () Bool)

(assert (=> b!1788110 (=> (not res!806481) (not e!1144493))))

(assert (=> b!1788110 (= res!806481 (matchR!2338 (regex!3537 (rule!5629 (_1!11051 (get!6082 lt!696897)))) (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696897))))))))

(declare-fun bm!111394 () Bool)

(assert (=> bm!111394 (= call!111399 (maxPrefixOneRule!1089 thiss!24550 (h!25118 rules!3447) lt!696771))))

(declare-fun b!1788111 () Bool)

(assert (=> b!1788111 (= e!1144493 (contains!3569 rules!3447 (rule!5629 (_1!11051 (get!6082 lt!696897)))))))

(declare-fun b!1788112 () Bool)

(declare-fun lt!696901 () Option!4096)

(declare-fun lt!696900 () Option!4096)

(assert (=> b!1788112 (= e!1144492 (ite (and ((_ is None!4095) lt!696901) ((_ is None!4095) lt!696900)) None!4095 (ite ((_ is None!4095) lt!696900) lt!696901 (ite ((_ is None!4095) lt!696901) lt!696900 (ite (>= (size!15664 (_1!11051 (v!25594 lt!696901))) (size!15664 (_1!11051 (v!25594 lt!696900)))) lt!696901 lt!696900)))))))

(assert (=> b!1788112 (= lt!696901 call!111399)))

(assert (=> b!1788112 (= lt!696900 (maxPrefix!1720 thiss!24550 (t!167326 rules!3447) lt!696771))))

(declare-fun b!1788113 () Bool)

(declare-fun res!806483 () Bool)

(assert (=> b!1788113 (=> (not res!806483) (not e!1144493))))

(assert (=> b!1788113 (= res!806483 (< (size!15666 (_2!11051 (get!6082 lt!696897))) (size!15666 lt!696771)))))

(declare-fun b!1788114 () Bool)

(assert (=> b!1788114 (= e!1144491 e!1144493)))

(declare-fun res!806477 () Bool)

(assert (=> b!1788114 (=> (not res!806477) (not e!1144493))))

(assert (=> b!1788114 (= res!806477 (isDefined!3440 lt!696897))))

(declare-fun b!1788115 () Bool)

(declare-fun res!806482 () Bool)

(assert (=> b!1788115 (=> (not res!806482) (not e!1144493))))

(assert (=> b!1788115 (= res!806482 (= (++!5361 (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696897)))) (_2!11051 (get!6082 lt!696897))) lt!696771))))

(declare-fun b!1788116 () Bool)

(declare-fun res!806480 () Bool)

(assert (=> b!1788116 (=> (not res!806480) (not e!1144493))))

(assert (=> b!1788116 (= res!806480 (= (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696897)))) (originalCharacters!4351 (_1!11051 (get!6082 lt!696897)))))))

(assert (= (and d!545529 c!290727) b!1788108))

(assert (= (and d!545529 (not c!290727)) b!1788112))

(assert (= (or b!1788108 b!1788112) bm!111394))

(assert (= (and d!545529 (not res!806478)) b!1788114))

(assert (= (and b!1788114 res!806477) b!1788116))

(assert (= (and b!1788116 res!806480) b!1788113))

(assert (= (and b!1788113 res!806483) b!1788115))

(assert (= (and b!1788115 res!806482) b!1788109))

(assert (= (and b!1788109 res!806479) b!1788110))

(assert (= (and b!1788110 res!806481) b!1788111))

(declare-fun m!2212163 () Bool)

(assert (=> b!1788109 m!2212163))

(declare-fun m!2212165 () Bool)

(assert (=> b!1788109 m!2212165))

(assert (=> b!1788109 m!2212165))

(declare-fun m!2212167 () Bool)

(assert (=> b!1788109 m!2212167))

(assert (=> b!1788115 m!2212163))

(declare-fun m!2212169 () Bool)

(assert (=> b!1788115 m!2212169))

(assert (=> b!1788115 m!2212169))

(declare-fun m!2212171 () Bool)

(assert (=> b!1788115 m!2212171))

(assert (=> b!1788115 m!2212171))

(declare-fun m!2212173 () Bool)

(assert (=> b!1788115 m!2212173))

(declare-fun m!2212175 () Bool)

(assert (=> b!1788112 m!2212175))

(declare-fun m!2212177 () Bool)

(assert (=> b!1788114 m!2212177))

(declare-fun m!2212179 () Bool)

(assert (=> d!545529 m!2212179))

(assert (=> d!545529 m!2211731))

(declare-fun m!2212181 () Bool)

(assert (=> d!545529 m!2212181))

(declare-fun m!2212183 () Bool)

(assert (=> d!545529 m!2212183))

(assert (=> b!1788111 m!2212163))

(declare-fun m!2212185 () Bool)

(assert (=> b!1788111 m!2212185))

(assert (=> b!1788110 m!2212163))

(assert (=> b!1788110 m!2212169))

(assert (=> b!1788110 m!2212169))

(assert (=> b!1788110 m!2212171))

(assert (=> b!1788110 m!2212171))

(declare-fun m!2212187 () Bool)

(assert (=> b!1788110 m!2212187))

(assert (=> b!1788116 m!2212163))

(assert (=> b!1788116 m!2212169))

(assert (=> b!1788116 m!2212169))

(assert (=> b!1788116 m!2212171))

(declare-fun m!2212189 () Bool)

(assert (=> bm!111394 m!2212189))

(assert (=> b!1788113 m!2212163))

(declare-fun m!2212191 () Bool)

(assert (=> b!1788113 m!2212191))

(assert (=> b!1788113 m!2212009))

(assert (=> b!1787762 d!545529))

(declare-fun d!545547 () Bool)

(declare-fun list!8021 (Conc!6559) List!19786)

(assert (=> d!545547 (= (list!8019 lt!696768) (list!8021 (c!290661 lt!696768)))))

(declare-fun bs!405493 () Bool)

(assert (= bs!405493 d!545547))

(declare-fun m!2212197 () Bool)

(assert (=> bs!405493 m!2212197))

(assert (=> b!1787762 d!545547))

(declare-fun d!545553 () Bool)

(declare-fun lt!696911 () BalanceConc!13062)

(assert (=> d!545553 (= (list!8019 lt!696911) (originalCharacters!4351 token!523))))

(assert (=> d!545553 (= lt!696911 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (value!110477 token!523)))))

(assert (=> d!545553 (= (charsOf!2186 token!523) lt!696911)))

(declare-fun b_lambda!58721 () Bool)

(assert (=> (not b_lambda!58721) (not d!545553)))

(assert (=> d!545553 t!167340))

(declare-fun b_and!137817 () Bool)

(assert (= b_and!137805 (and (=> t!167340 result!131104) b_and!137817)))

(assert (=> d!545553 t!167342))

(declare-fun b_and!137819 () Bool)

(assert (= b_and!137807 (and (=> t!167342 result!131106) b_and!137819)))

(assert (=> d!545553 t!167344))

(declare-fun b_and!137821 () Bool)

(assert (= b_and!137809 (and (=> t!167344 result!131108) b_and!137821)))

(declare-fun m!2212199 () Bool)

(assert (=> d!545553 m!2212199))

(assert (=> d!545553 m!2211975))

(assert (=> b!1787762 d!545553))

(declare-fun d!545555 () Bool)

(assert (=> d!545555 (= (isEmpty!12462 suffix!1421) ((_ is Nil!19716) suffix!1421))))

(assert (=> b!1787761 d!545555))

(declare-fun d!545557 () Bool)

(declare-fun lt!696915 () Int)

(assert (=> d!545557 (= lt!696915 (size!15666 (list!8019 lt!696768)))))

(declare-fun size!15668 (Conc!6559) Int)

(assert (=> d!545557 (= lt!696915 (size!15668 (c!290661 lt!696768)))))

(assert (=> d!545557 (= (size!15665 lt!696768) lt!696915)))

(declare-fun bs!405494 () Bool)

(assert (= bs!405494 d!545557))

(assert (=> bs!405494 m!2211751))

(assert (=> bs!405494 m!2211751))

(declare-fun m!2212211 () Bool)

(assert (=> bs!405494 m!2212211))

(declare-fun m!2212213 () Bool)

(assert (=> bs!405494 m!2212213))

(assert (=> b!1787739 d!545557))

(declare-fun bm!111395 () Bool)

(declare-fun call!111400 () Bool)

(assert (=> bm!111395 (= call!111400 (isEmpty!12462 lt!696771))))

(declare-fun d!545561 () Bool)

(declare-fun e!1144509 () Bool)

(assert (=> d!545561 e!1144509))

(declare-fun c!290730 () Bool)

(assert (=> d!545561 (= c!290730 ((_ is EmptyExpr!4865) lt!696746))))

(declare-fun lt!696916 () Bool)

(declare-fun e!1144504 () Bool)

(assert (=> d!545561 (= lt!696916 e!1144504)))

(declare-fun c!290729 () Bool)

(assert (=> d!545561 (= c!290729 (isEmpty!12462 lt!696771))))

(assert (=> d!545561 (validRegex!1973 lt!696746)))

(assert (=> d!545561 (= (matchR!2338 lt!696746 lt!696771) lt!696916)))

(declare-fun b!1788129 () Bool)

(declare-fun res!806496 () Bool)

(declare-fun e!1144508 () Bool)

(assert (=> b!1788129 (=> (not res!806496) (not e!1144508))))

(assert (=> b!1788129 (= res!806496 (not call!111400))))

(declare-fun b!1788130 () Bool)

(declare-fun res!806500 () Bool)

(declare-fun e!1144506 () Bool)

(assert (=> b!1788130 (=> res!806500 e!1144506)))

(assert (=> b!1788130 (= res!806500 (not ((_ is ElementMatch!4865) lt!696746)))))

(declare-fun e!1144505 () Bool)

(assert (=> b!1788130 (= e!1144505 e!1144506)))

(declare-fun b!1788131 () Bool)

(assert (=> b!1788131 (= e!1144504 (matchR!2338 (derivativeStep!1268 lt!696746 (head!4192 lt!696771)) (tail!2675 lt!696771)))))

(declare-fun b!1788132 () Bool)

(assert (=> b!1788132 (= e!1144509 (= lt!696916 call!111400))))

(declare-fun b!1788133 () Bool)

(declare-fun e!1144503 () Bool)

(assert (=> b!1788133 (= e!1144506 e!1144503)))

(declare-fun res!806502 () Bool)

(assert (=> b!1788133 (=> (not res!806502) (not e!1144503))))

(assert (=> b!1788133 (= res!806502 (not lt!696916))))

(declare-fun b!1788134 () Bool)

(assert (=> b!1788134 (= e!1144505 (not lt!696916))))

(declare-fun b!1788135 () Bool)

(declare-fun res!806501 () Bool)

(assert (=> b!1788135 (=> res!806501 e!1144506)))

(assert (=> b!1788135 (= res!806501 e!1144508)))

(declare-fun res!806499 () Bool)

(assert (=> b!1788135 (=> (not res!806499) (not e!1144508))))

(assert (=> b!1788135 (= res!806499 lt!696916)))

(declare-fun b!1788136 () Bool)

(declare-fun e!1144507 () Bool)

(assert (=> b!1788136 (= e!1144503 e!1144507)))

(declare-fun res!806497 () Bool)

(assert (=> b!1788136 (=> res!806497 e!1144507)))

(assert (=> b!1788136 (= res!806497 call!111400)))

(declare-fun b!1788137 () Bool)

(assert (=> b!1788137 (= e!1144504 (nullable!1499 lt!696746))))

(declare-fun b!1788138 () Bool)

(declare-fun res!806498 () Bool)

(assert (=> b!1788138 (=> (not res!806498) (not e!1144508))))

(assert (=> b!1788138 (= res!806498 (isEmpty!12462 (tail!2675 lt!696771)))))

(declare-fun b!1788139 () Bool)

(declare-fun res!806503 () Bool)

(assert (=> b!1788139 (=> res!806503 e!1144507)))

(assert (=> b!1788139 (= res!806503 (not (isEmpty!12462 (tail!2675 lt!696771))))))

(declare-fun b!1788140 () Bool)

(assert (=> b!1788140 (= e!1144509 e!1144505)))

(declare-fun c!290728 () Bool)

(assert (=> b!1788140 (= c!290728 ((_ is EmptyLang!4865) lt!696746))))

(declare-fun b!1788141 () Bool)

(assert (=> b!1788141 (= e!1144508 (= (head!4192 lt!696771) (c!290660 lt!696746)))))

(declare-fun b!1788142 () Bool)

(assert (=> b!1788142 (= e!1144507 (not (= (head!4192 lt!696771) (c!290660 lt!696746))))))

(assert (= (and d!545561 c!290729) b!1788137))

(assert (= (and d!545561 (not c!290729)) b!1788131))

(assert (= (and d!545561 c!290730) b!1788132))

(assert (= (and d!545561 (not c!290730)) b!1788140))

(assert (= (and b!1788140 c!290728) b!1788134))

(assert (= (and b!1788140 (not c!290728)) b!1788130))

(assert (= (and b!1788130 (not res!806500)) b!1788135))

(assert (= (and b!1788135 res!806499) b!1788129))

(assert (= (and b!1788129 res!806496) b!1788138))

(assert (= (and b!1788138 res!806498) b!1788141))

(assert (= (and b!1788135 (not res!806501)) b!1788133))

(assert (= (and b!1788133 res!806502) b!1788136))

(assert (= (and b!1788136 (not res!806497)) b!1788139))

(assert (= (and b!1788139 (not res!806503)) b!1788142))

(assert (= (or b!1788132 b!1788129 b!1788136) bm!111395))

(assert (=> bm!111395 m!2211909))

(assert (=> b!1788138 m!2211911))

(assert (=> b!1788138 m!2211911))

(assert (=> b!1788138 m!2211913))

(assert (=> b!1788137 m!2212039))

(assert (=> d!545561 m!2211909))

(assert (=> d!545561 m!2212041))

(assert (=> b!1788142 m!2211919))

(assert (=> b!1788139 m!2211911))

(assert (=> b!1788139 m!2211911))

(assert (=> b!1788139 m!2211913))

(assert (=> b!1788141 m!2211919))

(assert (=> b!1788131 m!2211919))

(assert (=> b!1788131 m!2211919))

(declare-fun m!2212215 () Bool)

(assert (=> b!1788131 m!2212215))

(assert (=> b!1788131 m!2211911))

(assert (=> b!1788131 m!2212215))

(assert (=> b!1788131 m!2211911))

(declare-fun m!2212217 () Bool)

(assert (=> b!1788131 m!2212217))

(assert (=> b!1787739 d!545561))

(declare-fun d!545563 () Bool)

(assert (=> d!545563 (matchR!2338 (rulesRegex!893 thiss!24550 rules!3447) (list!8019 (charsOf!2186 token!523)))))

(declare-fun lt!696919 () Unit!34121)

(assert (=> d!545563 (= lt!696919 (choose!11291 thiss!24550 rules!3447 lt!696771 token!523 rule!422 Nil!19716))))

(assert (=> d!545563 (not (isEmpty!12463 rules!3447))))

(assert (=> d!545563 (= (lemmaMaxPrefixThenMatchesRulesRegex!244 thiss!24550 rules!3447 lt!696771 token!523 rule!422 Nil!19716) lt!696919)))

(declare-fun bs!405495 () Bool)

(assert (= bs!405495 d!545563))

(assert (=> bs!405495 m!2211755))

(assert (=> bs!405495 m!2211753))

(assert (=> bs!405495 m!2211785))

(assert (=> bs!405495 m!2211753))

(declare-fun m!2212219 () Bool)

(assert (=> bs!405495 m!2212219))

(assert (=> bs!405495 m!2211785))

(assert (=> bs!405495 m!2212219))

(declare-fun m!2212221 () Bool)

(assert (=> bs!405495 m!2212221))

(declare-fun m!2212223 () Bool)

(assert (=> bs!405495 m!2212223))

(assert (=> b!1787739 d!545563))

(declare-fun d!545565 () Bool)

(assert (=> d!545565 (= (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))

(declare-fun b_lambda!58723 () Bool)

(assert (=> (not b_lambda!58723) (not d!545565)))

(assert (=> d!545565 t!167313))

(declare-fun b_and!137823 () Bool)

(assert (= b_and!137757 (and (=> t!167313 result!131078) b_and!137823)))

(assert (=> d!545565 t!167315))

(declare-fun b_and!137825 () Bool)

(assert (= b_and!137759 (and (=> t!167315 result!131082) b_and!137825)))

(assert (=> d!545565 t!167317))

(declare-fun b_and!137827 () Bool)

(assert (= b_and!137761 (and (=> t!167317 result!131084) b_and!137827)))

(assert (=> d!545565 m!2211763))

(assert (=> b!1787744 d!545565))

(declare-fun b!1788172 () Bool)

(declare-fun e!1144528 () Bool)

(assert (=> b!1788172 (= e!1144528 true)))

(declare-fun d!545569 () Bool)

(assert (=> d!545569 e!1144528))

(assert (= d!545569 b!1788172))

(declare-fun lambda!70825 () Int)

(declare-fun order!12811 () Int)

(declare-fun dynLambda!9753 (Int Int) Int)

(assert (=> b!1788172 (< (dynLambda!9747 order!12803 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9753 order!12811 lambda!70825))))

(assert (=> b!1788172 (< (dynLambda!9749 order!12807 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9753 order!12811 lambda!70825))))

(assert (=> d!545569 (= (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752)))))))

(declare-fun lt!696927 () Unit!34121)

(declare-fun Forall2of!159 (Int BalanceConc!13062 BalanceConc!13062) Unit!34121)

(assert (=> d!545569 (= lt!696927 (Forall2of!159 lambda!70825 lt!696766 (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752)))))))

(assert (=> d!545569 (= (list!8019 lt!696766) (list!8019 (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752)))))))

(assert (=> d!545569 (= (lemmaEqSameImage!448 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766 (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752)))) lt!696927)))

(declare-fun b_lambda!58725 () Bool)

(assert (=> (not b_lambda!58725) (not d!545569)))

(assert (=> d!545569 t!167313))

(declare-fun b_and!137829 () Bool)

(assert (= b_and!137823 (and (=> t!167313 result!131078) b_and!137829)))

(assert (=> d!545569 t!167315))

(declare-fun b_and!137831 () Bool)

(assert (= b_and!137825 (and (=> t!167315 result!131082) b_and!137831)))

(assert (=> d!545569 t!167317))

(declare-fun b_and!137833 () Bool)

(assert (= b_and!137827 (and (=> t!167317 result!131084) b_and!137833)))

(declare-fun b_lambda!58727 () Bool)

(assert (=> (not b_lambda!58727) (not d!545569)))

(declare-fun tb!108973 () Bool)

(declare-fun t!167352 () Bool)

(assert (=> (and b!1787755 (= (toValue!5064 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167352) tb!108973))

(declare-fun result!131116 () Bool)

(assert (=> tb!108973 (= result!131116 (inv!21 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752))))))))

(declare-fun m!2212273 () Bool)

(assert (=> tb!108973 m!2212273))

(assert (=> d!545569 t!167352))

(declare-fun b_and!137835 () Bool)

(assert (= b_and!137829 (and (=> t!167352 result!131116) b_and!137835)))

(declare-fun t!167354 () Bool)

(declare-fun tb!108975 () Bool)

(assert (=> (and b!1787756 (= (toValue!5064 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167354) tb!108975))

(declare-fun result!131118 () Bool)

(assert (= result!131118 result!131116))

(assert (=> d!545569 t!167354))

(declare-fun b_and!137837 () Bool)

(assert (= b_and!137831 (and (=> t!167354 result!131118) b_and!137837)))

(declare-fun tb!108977 () Bool)

(declare-fun t!167356 () Bool)

(assert (=> (and b!1787740 (= (toValue!5064 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167356) tb!108977))

(declare-fun result!131120 () Bool)

(assert (= result!131120 result!131116))

(assert (=> d!545569 t!167356))

(declare-fun b_and!137839 () Bool)

(assert (= b_and!137833 (and (=> t!167356 result!131120) b_and!137839)))

(assert (=> d!545569 m!2211763))

(assert (=> d!545569 m!2211819))

(declare-fun m!2212275 () Bool)

(assert (=> d!545569 m!2212275))

(assert (=> d!545569 m!2211819))

(declare-fun m!2212277 () Bool)

(assert (=> d!545569 m!2212277))

(assert (=> d!545569 m!2211685))

(assert (=> d!545569 m!2211819))

(declare-fun m!2212279 () Bool)

(assert (=> d!545569 m!2212279))

(assert (=> b!1787744 d!545569))

(declare-fun d!545585 () Bool)

(declare-fun fromListB!1148 (List!19786) BalanceConc!13062)

(assert (=> d!545585 (= (seqFromList!2506 (originalCharacters!4351 (_1!11051 lt!696752))) (fromListB!1148 (originalCharacters!4351 (_1!11051 lt!696752))))))

(declare-fun bs!405498 () Bool)

(assert (= bs!405498 d!545585))

(declare-fun m!2212293 () Bool)

(assert (=> bs!405498 m!2212293))

(assert (=> b!1787744 d!545585))

(declare-fun d!545591 () Bool)

(assert (=> d!545591 (= (size!15664 (_1!11051 lt!696752)) (size!15666 (originalCharacters!4351 (_1!11051 lt!696752))))))

(declare-fun Unit!34130 () Unit!34121)

(assert (=> d!545591 (= (lemmaCharactersSize!595 (_1!11051 lt!696752)) Unit!34130)))

(declare-fun bs!405499 () Bool)

(assert (= bs!405499 d!545591))

(declare-fun m!2212295 () Bool)

(assert (=> bs!405499 m!2212295))

(assert (=> b!1787744 d!545591))

(declare-fun d!545593 () Bool)

(declare-fun lt!696932 () Int)

(assert (=> d!545593 (= lt!696932 (size!15666 (list!8019 lt!696766)))))

(assert (=> d!545593 (= lt!696932 (size!15668 (c!290661 lt!696766)))))

(assert (=> d!545593 (= (size!15665 lt!696766) lt!696932)))

(declare-fun bs!405500 () Bool)

(assert (= bs!405500 d!545593))

(assert (=> bs!405500 m!2211685))

(assert (=> bs!405500 m!2211685))

(declare-fun m!2212297 () Bool)

(assert (=> bs!405500 m!2212297))

(declare-fun m!2212299 () Bool)

(assert (=> bs!405500 m!2212299))

(assert (=> b!1787744 d!545593))

(declare-fun bm!111398 () Bool)

(declare-fun call!111403 () Bool)

(assert (=> bm!111398 (= call!111403 (isEmpty!12462 (list!8019 (charsOf!2186 (_1!11051 lt!696752)))))))

(declare-fun d!545595 () Bool)

(declare-fun e!1144548 () Bool)

(assert (=> d!545595 e!1144548))

(declare-fun c!290743 () Bool)

(assert (=> d!545595 (= c!290743 ((_ is EmptyExpr!4865) (regex!3537 lt!696775)))))

(declare-fun lt!696933 () Bool)

(declare-fun e!1144543 () Bool)

(assert (=> d!545595 (= lt!696933 e!1144543)))

(declare-fun c!290742 () Bool)

(assert (=> d!545595 (= c!290742 (isEmpty!12462 (list!8019 (charsOf!2186 (_1!11051 lt!696752)))))))

(assert (=> d!545595 (validRegex!1973 (regex!3537 lt!696775))))

(assert (=> d!545595 (= (matchR!2338 (regex!3537 lt!696775) (list!8019 (charsOf!2186 (_1!11051 lt!696752)))) lt!696933)))

(declare-fun b!1788196 () Bool)

(declare-fun res!806532 () Bool)

(declare-fun e!1144547 () Bool)

(assert (=> b!1788196 (=> (not res!806532) (not e!1144547))))

(assert (=> b!1788196 (= res!806532 (not call!111403))))

(declare-fun b!1788197 () Bool)

(declare-fun res!806536 () Bool)

(declare-fun e!1144545 () Bool)

(assert (=> b!1788197 (=> res!806536 e!1144545)))

(assert (=> b!1788197 (= res!806536 (not ((_ is ElementMatch!4865) (regex!3537 lt!696775))))))

(declare-fun e!1144544 () Bool)

(assert (=> b!1788197 (= e!1144544 e!1144545)))

(declare-fun b!1788198 () Bool)

(assert (=> b!1788198 (= e!1144543 (matchR!2338 (derivativeStep!1268 (regex!3537 lt!696775) (head!4192 (list!8019 (charsOf!2186 (_1!11051 lt!696752))))) (tail!2675 (list!8019 (charsOf!2186 (_1!11051 lt!696752))))))))

(declare-fun b!1788199 () Bool)

(assert (=> b!1788199 (= e!1144548 (= lt!696933 call!111403))))

(declare-fun b!1788200 () Bool)

(declare-fun e!1144542 () Bool)

(assert (=> b!1788200 (= e!1144545 e!1144542)))

(declare-fun res!806538 () Bool)

(assert (=> b!1788200 (=> (not res!806538) (not e!1144542))))

(assert (=> b!1788200 (= res!806538 (not lt!696933))))

(declare-fun b!1788201 () Bool)

(assert (=> b!1788201 (= e!1144544 (not lt!696933))))

(declare-fun b!1788202 () Bool)

(declare-fun res!806537 () Bool)

(assert (=> b!1788202 (=> res!806537 e!1144545)))

(assert (=> b!1788202 (= res!806537 e!1144547)))

(declare-fun res!806535 () Bool)

(assert (=> b!1788202 (=> (not res!806535) (not e!1144547))))

(assert (=> b!1788202 (= res!806535 lt!696933)))

(declare-fun b!1788203 () Bool)

(declare-fun e!1144546 () Bool)

(assert (=> b!1788203 (= e!1144542 e!1144546)))

(declare-fun res!806533 () Bool)

(assert (=> b!1788203 (=> res!806533 e!1144546)))

(assert (=> b!1788203 (= res!806533 call!111403)))

(declare-fun b!1788204 () Bool)

(assert (=> b!1788204 (= e!1144543 (nullable!1499 (regex!3537 lt!696775)))))

(declare-fun b!1788205 () Bool)

(declare-fun res!806534 () Bool)

(assert (=> b!1788205 (=> (not res!806534) (not e!1144547))))

(assert (=> b!1788205 (= res!806534 (isEmpty!12462 (tail!2675 (list!8019 (charsOf!2186 (_1!11051 lt!696752))))))))

(declare-fun b!1788206 () Bool)

(declare-fun res!806539 () Bool)

(assert (=> b!1788206 (=> res!806539 e!1144546)))

(assert (=> b!1788206 (= res!806539 (not (isEmpty!12462 (tail!2675 (list!8019 (charsOf!2186 (_1!11051 lt!696752)))))))))

(declare-fun b!1788207 () Bool)

(assert (=> b!1788207 (= e!1144548 e!1144544)))

(declare-fun c!290741 () Bool)

(assert (=> b!1788207 (= c!290741 ((_ is EmptyLang!4865) (regex!3537 lt!696775)))))

(declare-fun b!1788208 () Bool)

(assert (=> b!1788208 (= e!1144547 (= (head!4192 (list!8019 (charsOf!2186 (_1!11051 lt!696752)))) (c!290660 (regex!3537 lt!696775))))))

(declare-fun b!1788209 () Bool)

(assert (=> b!1788209 (= e!1144546 (not (= (head!4192 (list!8019 (charsOf!2186 (_1!11051 lt!696752)))) (c!290660 (regex!3537 lt!696775)))))))

(assert (= (and d!545595 c!290742) b!1788204))

(assert (= (and d!545595 (not c!290742)) b!1788198))

(assert (= (and d!545595 c!290743) b!1788199))

(assert (= (and d!545595 (not c!290743)) b!1788207))

(assert (= (and b!1788207 c!290741) b!1788201))

(assert (= (and b!1788207 (not c!290741)) b!1788197))

(assert (= (and b!1788197 (not res!806536)) b!1788202))

(assert (= (and b!1788202 res!806535) b!1788196))

(assert (= (and b!1788196 res!806532) b!1788205))

(assert (= (and b!1788205 res!806534) b!1788208))

(assert (= (and b!1788202 (not res!806537)) b!1788200))

(assert (= (and b!1788200 res!806538) b!1788203))

(assert (= (and b!1788203 (not res!806533)) b!1788206))

(assert (= (and b!1788206 (not res!806539)) b!1788209))

(assert (= (or b!1788199 b!1788196 b!1788203) bm!111398))

(assert (=> bm!111398 m!2211721))

(declare-fun m!2212301 () Bool)

(assert (=> bm!111398 m!2212301))

(assert (=> b!1788205 m!2211721))

(declare-fun m!2212303 () Bool)

(assert (=> b!1788205 m!2212303))

(assert (=> b!1788205 m!2212303))

(declare-fun m!2212305 () Bool)

(assert (=> b!1788205 m!2212305))

(declare-fun m!2212307 () Bool)

(assert (=> b!1788204 m!2212307))

(assert (=> d!545595 m!2211721))

(assert (=> d!545595 m!2212301))

(declare-fun m!2212309 () Bool)

(assert (=> d!545595 m!2212309))

(assert (=> b!1788209 m!2211721))

(declare-fun m!2212311 () Bool)

(assert (=> b!1788209 m!2212311))

(assert (=> b!1788206 m!2211721))

(assert (=> b!1788206 m!2212303))

(assert (=> b!1788206 m!2212303))

(assert (=> b!1788206 m!2212305))

(assert (=> b!1788208 m!2211721))

(assert (=> b!1788208 m!2212311))

(assert (=> b!1788198 m!2211721))

(assert (=> b!1788198 m!2212311))

(assert (=> b!1788198 m!2212311))

(declare-fun m!2212319 () Bool)

(assert (=> b!1788198 m!2212319))

(assert (=> b!1788198 m!2211721))

(assert (=> b!1788198 m!2212303))

(assert (=> b!1788198 m!2212319))

(assert (=> b!1788198 m!2212303))

(declare-fun m!2212323 () Bool)

(assert (=> b!1788198 m!2212323))

(assert (=> b!1787765 d!545595))

(declare-fun d!545599 () Bool)

(assert (=> d!545599 (= (list!8019 (charsOf!2186 (_1!11051 lt!696752))) (list!8021 (c!290661 (charsOf!2186 (_1!11051 lt!696752)))))))

(declare-fun bs!405501 () Bool)

(assert (= bs!405501 d!545599))

(declare-fun m!2212325 () Bool)

(assert (=> bs!405501 m!2212325))

(assert (=> b!1787765 d!545599))

(declare-fun d!545601 () Bool)

(declare-fun lt!696935 () BalanceConc!13062)

(assert (=> d!545601 (= (list!8019 lt!696935) (originalCharacters!4351 (_1!11051 lt!696752)))))

(assert (=> d!545601 (= lt!696935 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))

(assert (=> d!545601 (= (charsOf!2186 (_1!11051 lt!696752)) lt!696935)))

(declare-fun b_lambda!58729 () Bool)

(assert (=> (not b_lambda!58729) (not d!545601)))

(assert (=> d!545601 t!167319))

(declare-fun b_and!137841 () Bool)

(assert (= b_and!137817 (and (=> t!167319 result!131086) b_and!137841)))

(assert (=> d!545601 t!167321))

(declare-fun b_and!137843 () Bool)

(assert (= b_and!137819 (and (=> t!167321 result!131088) b_and!137843)))

(assert (=> d!545601 t!167323))

(declare-fun b_and!137845 () Bool)

(assert (= b_and!137821 (and (=> t!167323 result!131090) b_and!137845)))

(declare-fun m!2212335 () Bool)

(assert (=> d!545601 m!2212335))

(assert (=> d!545601 m!2211761))

(assert (=> b!1787765 d!545601))

(declare-fun d!545605 () Bool)

(assert (=> d!545605 (= (get!6083 lt!696745) (v!25595 lt!696745))))

(assert (=> b!1787765 d!545605))

(declare-fun b!1788218 () Bool)

(declare-fun e!1144552 () Bool)

(assert (=> b!1788218 (= e!1144552 (isPrefix!1777 (tail!2675 lt!696771) (tail!2675 lt!696771)))))

(declare-fun b!1788217 () Bool)

(declare-fun res!806545 () Bool)

(assert (=> b!1788217 (=> (not res!806545) (not e!1144552))))

(assert (=> b!1788217 (= res!806545 (= (head!4192 lt!696771) (head!4192 lt!696771)))))

(declare-fun d!545609 () Bool)

(declare-fun e!1144553 () Bool)

(assert (=> d!545609 e!1144553))

(declare-fun res!806544 () Bool)

(assert (=> d!545609 (=> res!806544 e!1144553)))

(declare-fun lt!696936 () Bool)

(assert (=> d!545609 (= res!806544 (not lt!696936))))

(declare-fun e!1144554 () Bool)

(assert (=> d!545609 (= lt!696936 e!1144554)))

(declare-fun res!806543 () Bool)

(assert (=> d!545609 (=> res!806543 e!1144554)))

(assert (=> d!545609 (= res!806543 ((_ is Nil!19716) lt!696771))))

(assert (=> d!545609 (= (isPrefix!1777 lt!696771 lt!696771) lt!696936)))

(declare-fun b!1788216 () Bool)

(assert (=> b!1788216 (= e!1144554 e!1144552)))

(declare-fun res!806542 () Bool)

(assert (=> b!1788216 (=> (not res!806542) (not e!1144552))))

(assert (=> b!1788216 (= res!806542 (not ((_ is Nil!19716) lt!696771)))))

(declare-fun b!1788219 () Bool)

(assert (=> b!1788219 (= e!1144553 (>= (size!15666 lt!696771) (size!15666 lt!696771)))))

(assert (= (and d!545609 (not res!806543)) b!1788216))

(assert (= (and b!1788216 res!806542) b!1788217))

(assert (= (and b!1788217 res!806545) b!1788218))

(assert (= (and d!545609 (not res!806544)) b!1788219))

(assert (=> b!1788218 m!2211911))

(assert (=> b!1788218 m!2211911))

(assert (=> b!1788218 m!2211911))

(assert (=> b!1788218 m!2211911))

(declare-fun m!2212339 () Bool)

(assert (=> b!1788218 m!2212339))

(assert (=> b!1788217 m!2211919))

(assert (=> b!1788217 m!2211919))

(assert (=> b!1788219 m!2212009))

(assert (=> b!1788219 m!2212009))

(assert (=> b!1787743 d!545609))

(declare-fun d!545611 () Bool)

(declare-fun lt!696942 () Bool)

(declare-fun content!2875 (List!19787) (InoxSet Rule!6874))

(assert (=> d!545611 (= lt!696942 (select (content!2875 rules!3447) (rule!5629 (_1!11051 lt!696752))))))

(declare-fun e!1144560 () Bool)

(assert (=> d!545611 (= lt!696942 e!1144560)))

(declare-fun res!806551 () Bool)

(assert (=> d!545611 (=> (not res!806551) (not e!1144560))))

(assert (=> d!545611 (= res!806551 ((_ is Cons!19717) rules!3447))))

(assert (=> d!545611 (= (contains!3569 rules!3447 (rule!5629 (_1!11051 lt!696752))) lt!696942)))

(declare-fun b!1788224 () Bool)

(declare-fun e!1144559 () Bool)

(assert (=> b!1788224 (= e!1144560 e!1144559)))

(declare-fun res!806550 () Bool)

(assert (=> b!1788224 (=> res!806550 e!1144559)))

(assert (=> b!1788224 (= res!806550 (= (h!25118 rules!3447) (rule!5629 (_1!11051 lt!696752))))))

(declare-fun b!1788225 () Bool)

(assert (=> b!1788225 (= e!1144559 (contains!3569 (t!167326 rules!3447) (rule!5629 (_1!11051 lt!696752))))))

(assert (= (and d!545611 res!806551) b!1788224))

(assert (= (and b!1788224 (not res!806550)) b!1788225))

(declare-fun m!2212349 () Bool)

(assert (=> d!545611 m!2212349))

(declare-fun m!2212351 () Bool)

(assert (=> d!545611 m!2212351))

(declare-fun m!2212353 () Bool)

(assert (=> b!1788225 m!2212353))

(assert (=> b!1787764 d!545611))

(declare-fun bm!111399 () Bool)

(declare-fun call!111404 () Bool)

(assert (=> bm!111399 (= call!111404 (isEmpty!12462 lt!696739))))

(declare-fun d!545617 () Bool)

(declare-fun e!1144567 () Bool)

(assert (=> d!545617 e!1144567))

(declare-fun c!290748 () Bool)

(assert (=> d!545617 (= c!290748 ((_ is EmptyExpr!4865) (regex!3537 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun lt!696944 () Bool)

(declare-fun e!1144562 () Bool)

(assert (=> d!545617 (= lt!696944 e!1144562)))

(declare-fun c!290747 () Bool)

(assert (=> d!545617 (= c!290747 (isEmpty!12462 lt!696739))))

(assert (=> d!545617 (validRegex!1973 (regex!3537 (rule!5629 (_1!11051 lt!696752))))))

(assert (=> d!545617 (= (matchR!2338 (regex!3537 (rule!5629 (_1!11051 lt!696752))) lt!696739) lt!696944)))

(declare-fun b!1788226 () Bool)

(declare-fun res!806552 () Bool)

(declare-fun e!1144566 () Bool)

(assert (=> b!1788226 (=> (not res!806552) (not e!1144566))))

(assert (=> b!1788226 (= res!806552 (not call!111404))))

(declare-fun b!1788227 () Bool)

(declare-fun res!806556 () Bool)

(declare-fun e!1144564 () Bool)

(assert (=> b!1788227 (=> res!806556 e!1144564)))

(assert (=> b!1788227 (= res!806556 (not ((_ is ElementMatch!4865) (regex!3537 (rule!5629 (_1!11051 lt!696752))))))))

(declare-fun e!1144563 () Bool)

(assert (=> b!1788227 (= e!1144563 e!1144564)))

(declare-fun b!1788228 () Bool)

(assert (=> b!1788228 (= e!1144562 (matchR!2338 (derivativeStep!1268 (regex!3537 (rule!5629 (_1!11051 lt!696752))) (head!4192 lt!696739)) (tail!2675 lt!696739)))))

(declare-fun b!1788229 () Bool)

(assert (=> b!1788229 (= e!1144567 (= lt!696944 call!111404))))

(declare-fun b!1788230 () Bool)

(declare-fun e!1144561 () Bool)

(assert (=> b!1788230 (= e!1144564 e!1144561)))

(declare-fun res!806558 () Bool)

(assert (=> b!1788230 (=> (not res!806558) (not e!1144561))))

(assert (=> b!1788230 (= res!806558 (not lt!696944))))

(declare-fun b!1788231 () Bool)

(assert (=> b!1788231 (= e!1144563 (not lt!696944))))

(declare-fun b!1788232 () Bool)

(declare-fun res!806557 () Bool)

(assert (=> b!1788232 (=> res!806557 e!1144564)))

(assert (=> b!1788232 (= res!806557 e!1144566)))

(declare-fun res!806555 () Bool)

(assert (=> b!1788232 (=> (not res!806555) (not e!1144566))))

(assert (=> b!1788232 (= res!806555 lt!696944)))

(declare-fun b!1788233 () Bool)

(declare-fun e!1144565 () Bool)

(assert (=> b!1788233 (= e!1144561 e!1144565)))

(declare-fun res!806553 () Bool)

(assert (=> b!1788233 (=> res!806553 e!1144565)))

(assert (=> b!1788233 (= res!806553 call!111404)))

(declare-fun b!1788234 () Bool)

(assert (=> b!1788234 (= e!1144562 (nullable!1499 (regex!3537 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun b!1788235 () Bool)

(declare-fun res!806554 () Bool)

(assert (=> b!1788235 (=> (not res!806554) (not e!1144566))))

(assert (=> b!1788235 (= res!806554 (isEmpty!12462 (tail!2675 lt!696739)))))

(declare-fun b!1788236 () Bool)

(declare-fun res!806559 () Bool)

(assert (=> b!1788236 (=> res!806559 e!1144565)))

(assert (=> b!1788236 (= res!806559 (not (isEmpty!12462 (tail!2675 lt!696739))))))

(declare-fun b!1788237 () Bool)

(assert (=> b!1788237 (= e!1144567 e!1144563)))

(declare-fun c!290746 () Bool)

(assert (=> b!1788237 (= c!290746 ((_ is EmptyLang!4865) (regex!3537 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun b!1788238 () Bool)

(assert (=> b!1788238 (= e!1144566 (= (head!4192 lt!696739) (c!290660 (regex!3537 (rule!5629 (_1!11051 lt!696752))))))))

(declare-fun b!1788239 () Bool)

(assert (=> b!1788239 (= e!1144565 (not (= (head!4192 lt!696739) (c!290660 (regex!3537 (rule!5629 (_1!11051 lt!696752)))))))))

(assert (= (and d!545617 c!290747) b!1788234))

(assert (= (and d!545617 (not c!290747)) b!1788228))

(assert (= (and d!545617 c!290748) b!1788229))

(assert (= (and d!545617 (not c!290748)) b!1788237))

(assert (= (and b!1788237 c!290746) b!1788231))

(assert (= (and b!1788237 (not c!290746)) b!1788227))

(assert (= (and b!1788227 (not res!806556)) b!1788232))

(assert (= (and b!1788232 res!806555) b!1788226))

(assert (= (and b!1788226 res!806552) b!1788235))

(assert (= (and b!1788235 res!806554) b!1788238))

(assert (= (and b!1788232 (not res!806557)) b!1788230))

(assert (= (and b!1788230 res!806558) b!1788233))

(assert (= (and b!1788233 (not res!806553)) b!1788236))

(assert (= (and b!1788236 (not res!806559)) b!1788239))

(assert (= (or b!1788229 b!1788226 b!1788233) bm!111399))

(assert (=> bm!111399 m!2212035))

(assert (=> b!1788235 m!2212027))

(assert (=> b!1788235 m!2212027))

(assert (=> b!1788235 m!2212037))

(declare-fun m!2212355 () Bool)

(assert (=> b!1788234 m!2212355))

(assert (=> d!545617 m!2212035))

(declare-fun m!2212357 () Bool)

(assert (=> d!545617 m!2212357))

(assert (=> b!1788239 m!2212031))

(assert (=> b!1788236 m!2212027))

(assert (=> b!1788236 m!2212027))

(assert (=> b!1788236 m!2212037))

(assert (=> b!1788238 m!2212031))

(assert (=> b!1788228 m!2212031))

(assert (=> b!1788228 m!2212031))

(declare-fun m!2212359 () Bool)

(assert (=> b!1788228 m!2212359))

(assert (=> b!1788228 m!2212027))

(assert (=> b!1788228 m!2212359))

(assert (=> b!1788228 m!2212027))

(declare-fun m!2212361 () Bool)

(assert (=> b!1788228 m!2212361))

(assert (=> b!1787742 d!545617))

(declare-fun d!545619 () Bool)

(assert (=> d!545619 (= (isEmpty!12463 rules!3447) ((_ is Nil!19717) rules!3447))))

(assert (=> b!1787763 d!545619))

(declare-fun d!545621 () Bool)

(declare-fun res!806562 () Bool)

(declare-fun e!1144570 () Bool)

(assert (=> d!545621 (=> (not res!806562) (not e!1144570))))

(declare-fun rulesValid!1338 (LexerInterface!3166 List!19787) Bool)

(assert (=> d!545621 (= res!806562 (rulesValid!1338 thiss!24550 rules!3447))))

(assert (=> d!545621 (= (rulesInvariant!2835 thiss!24550 rules!3447) e!1144570)))

(declare-fun b!1788242 () Bool)

(declare-datatypes ((List!19790 0))(
  ( (Nil!19720) (Cons!19720 (h!25121 String!22467) (t!167389 List!19790)) )
))
(declare-fun noDuplicateTag!1338 (LexerInterface!3166 List!19787 List!19790) Bool)

(assert (=> b!1788242 (= e!1144570 (noDuplicateTag!1338 thiss!24550 rules!3447 Nil!19720))))

(assert (= (and d!545621 res!806562) b!1788242))

(declare-fun m!2212367 () Bool)

(assert (=> d!545621 m!2212367))

(declare-fun m!2212369 () Bool)

(assert (=> b!1788242 m!2212369))

(assert (=> b!1787768 d!545621))

(declare-fun d!545627 () Bool)

(declare-fun choose!11299 (Int) Bool)

(assert (=> d!545627 (= (Forall!904 lambda!70816) (choose!11299 lambda!70816))))

(declare-fun bs!405506 () Bool)

(assert (= bs!405506 d!545627))

(declare-fun m!2212371 () Bool)

(assert (=> bs!405506 m!2212371))

(assert (=> b!1787746 d!545627))

(declare-fun d!545629 () Bool)

(declare-fun e!1144575 () Bool)

(assert (=> d!545629 e!1144575))

(declare-fun res!806565 () Bool)

(assert (=> d!545629 (=> (not res!806565) (not e!1144575))))

(declare-fun semiInverseModEq!1414 (Int Int) Bool)

(assert (=> d!545629 (= res!806565 (semiInverseModEq!1414 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))))))

(declare-fun Unit!34133 () Unit!34121)

(assert (=> d!545629 (= (lemmaInv!736 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) Unit!34133)))

(declare-fun b!1788249 () Bool)

(declare-fun equivClasses!1355 (Int Int) Bool)

(assert (=> b!1788249 (= e!1144575 (equivClasses!1355 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))))))

(assert (= (and d!545629 res!806565) b!1788249))

(declare-fun m!2212373 () Bool)

(assert (=> d!545629 m!2212373))

(declare-fun m!2212375 () Bool)

(assert (=> b!1788249 m!2212375))

(assert (=> b!1787746 d!545629))

(declare-fun d!545631 () Bool)

(declare-fun isBalanced!2051 (Conc!6559) Bool)

(assert (=> d!545631 (= (inv!25688 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))) (isBalanced!2051 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))))

(declare-fun bs!405508 () Bool)

(assert (= bs!405508 d!545631))

(declare-fun m!2212379 () Bool)

(assert (=> bs!405508 m!2212379))

(assert (=> tb!108943 d!545631))

(declare-fun d!545635 () Bool)

(declare-fun lt!696951 () Bool)

(assert (=> d!545635 (= lt!696951 (select (content!2875 rules!3447) rule!422))))

(declare-fun e!1144578 () Bool)

(assert (=> d!545635 (= lt!696951 e!1144578)))

(declare-fun res!806567 () Bool)

(assert (=> d!545635 (=> (not res!806567) (not e!1144578))))

(assert (=> d!545635 (= res!806567 ((_ is Cons!19717) rules!3447))))

(assert (=> d!545635 (= (contains!3569 rules!3447 rule!422) lt!696951)))

(declare-fun b!1788251 () Bool)

(declare-fun e!1144577 () Bool)

(assert (=> b!1788251 (= e!1144578 e!1144577)))

(declare-fun res!806566 () Bool)

(assert (=> b!1788251 (=> res!806566 e!1144577)))

(assert (=> b!1788251 (= res!806566 (= (h!25118 rules!3447) rule!422))))

(declare-fun b!1788252 () Bool)

(assert (=> b!1788252 (= e!1144577 (contains!3569 (t!167326 rules!3447) rule!422))))

(assert (= (and d!545635 res!806567) b!1788251))

(assert (= (and b!1788251 (not res!806566)) b!1788252))

(assert (=> d!545635 m!2212349))

(declare-fun m!2212381 () Bool)

(assert (=> d!545635 m!2212381))

(declare-fun m!2212383 () Bool)

(assert (=> b!1788252 m!2212383))

(assert (=> b!1787767 d!545635))

(declare-fun b!1788255 () Bool)

(declare-fun e!1144579 () Bool)

(assert (=> b!1788255 (= e!1144579 (isPrefix!1777 (tail!2675 lt!696739) (tail!2675 lt!696733)))))

(declare-fun b!1788254 () Bool)

(declare-fun res!806571 () Bool)

(assert (=> b!1788254 (=> (not res!806571) (not e!1144579))))

(assert (=> b!1788254 (= res!806571 (= (head!4192 lt!696739) (head!4192 lt!696733)))))

(declare-fun d!545637 () Bool)

(declare-fun e!1144580 () Bool)

(assert (=> d!545637 e!1144580))

(declare-fun res!806570 () Bool)

(assert (=> d!545637 (=> res!806570 e!1144580)))

(declare-fun lt!696952 () Bool)

(assert (=> d!545637 (= res!806570 (not lt!696952))))

(declare-fun e!1144581 () Bool)

(assert (=> d!545637 (= lt!696952 e!1144581)))

(declare-fun res!806569 () Bool)

(assert (=> d!545637 (=> res!806569 e!1144581)))

(assert (=> d!545637 (= res!806569 ((_ is Nil!19716) lt!696739))))

(assert (=> d!545637 (= (isPrefix!1777 lt!696739 lt!696733) lt!696952)))

(declare-fun b!1788253 () Bool)

(assert (=> b!1788253 (= e!1144581 e!1144579)))

(declare-fun res!806568 () Bool)

(assert (=> b!1788253 (=> (not res!806568) (not e!1144579))))

(assert (=> b!1788253 (= res!806568 (not ((_ is Nil!19716) lt!696733)))))

(declare-fun b!1788256 () Bool)

(assert (=> b!1788256 (= e!1144580 (>= (size!15666 lt!696733) (size!15666 lt!696739)))))

(assert (= (and d!545637 (not res!806569)) b!1788253))

(assert (= (and b!1788253 res!806568) b!1788254))

(assert (= (and b!1788254 res!806571) b!1788255))

(assert (= (and d!545637 (not res!806570)) b!1788256))

(assert (=> b!1788255 m!2212027))

(assert (=> b!1788255 m!2212059))

(assert (=> b!1788255 m!2212027))

(assert (=> b!1788255 m!2212059))

(declare-fun m!2212385 () Bool)

(assert (=> b!1788255 m!2212385))

(assert (=> b!1788254 m!2212031))

(assert (=> b!1788254 m!2212065))

(assert (=> b!1788256 m!2212067))

(assert (=> b!1788256 m!2211709))

(assert (=> b!1787745 d!545637))

(declare-fun b!1788259 () Bool)

(declare-fun e!1144582 () Bool)

(assert (=> b!1788259 (= e!1144582 (isPrefix!1777 (tail!2675 lt!696771) (tail!2675 lt!696733)))))

(declare-fun b!1788258 () Bool)

(declare-fun res!806575 () Bool)

(assert (=> b!1788258 (=> (not res!806575) (not e!1144582))))

(assert (=> b!1788258 (= res!806575 (= (head!4192 lt!696771) (head!4192 lt!696733)))))

(declare-fun d!545639 () Bool)

(declare-fun e!1144583 () Bool)

(assert (=> d!545639 e!1144583))

(declare-fun res!806574 () Bool)

(assert (=> d!545639 (=> res!806574 e!1144583)))

(declare-fun lt!696953 () Bool)

(assert (=> d!545639 (= res!806574 (not lt!696953))))

(declare-fun e!1144584 () Bool)

(assert (=> d!545639 (= lt!696953 e!1144584)))

(declare-fun res!806573 () Bool)

(assert (=> d!545639 (=> res!806573 e!1144584)))

(assert (=> d!545639 (= res!806573 ((_ is Nil!19716) lt!696771))))

(assert (=> d!545639 (= (isPrefix!1777 lt!696771 lt!696733) lt!696953)))

(declare-fun b!1788257 () Bool)

(assert (=> b!1788257 (= e!1144584 e!1144582)))

(declare-fun res!806572 () Bool)

(assert (=> b!1788257 (=> (not res!806572) (not e!1144582))))

(assert (=> b!1788257 (= res!806572 (not ((_ is Nil!19716) lt!696733)))))

(declare-fun b!1788260 () Bool)

(assert (=> b!1788260 (= e!1144583 (>= (size!15666 lt!696733) (size!15666 lt!696771)))))

(assert (= (and d!545639 (not res!806573)) b!1788257))

(assert (= (and b!1788257 res!806572) b!1788258))

(assert (= (and b!1788258 res!806575) b!1788259))

(assert (= (and d!545639 (not res!806574)) b!1788260))

(assert (=> b!1788259 m!2211911))

(assert (=> b!1788259 m!2212059))

(assert (=> b!1788259 m!2211911))

(assert (=> b!1788259 m!2212059))

(declare-fun m!2212387 () Bool)

(assert (=> b!1788259 m!2212387))

(assert (=> b!1788258 m!2211919))

(assert (=> b!1788258 m!2212065))

(assert (=> b!1788260 m!2212067))

(assert (=> b!1788260 m!2212009))

(assert (=> b!1787745 d!545639))

(declare-fun d!545641 () Bool)

(assert (=> d!545641 (= (get!6082 lt!696780) (v!25594 lt!696780))))

(assert (=> b!1787745 d!545641))

(declare-fun b!1788261 () Bool)

(declare-fun e!1144586 () Option!4096)

(declare-fun call!111405 () Option!4096)

(assert (=> b!1788261 (= e!1144586 call!111405)))

(declare-fun d!545643 () Bool)

(declare-fun e!1144585 () Bool)

(assert (=> d!545643 e!1144585))

(declare-fun res!806577 () Bool)

(assert (=> d!545643 (=> res!806577 e!1144585)))

(declare-fun lt!696954 () Option!4096)

(assert (=> d!545643 (= res!806577 (isEmpty!12465 lt!696954))))

(assert (=> d!545643 (= lt!696954 e!1144586)))

(declare-fun c!290750 () Bool)

(assert (=> d!545643 (= c!290750 (and ((_ is Cons!19717) rules!3447) ((_ is Nil!19717) (t!167326 rules!3447))))))

(declare-fun lt!696956 () Unit!34121)

(declare-fun lt!696955 () Unit!34121)

(assert (=> d!545643 (= lt!696956 lt!696955)))

(assert (=> d!545643 (isPrefix!1777 lt!696733 lt!696733)))

(assert (=> d!545643 (= lt!696955 (lemmaIsPrefixRefl!1168 lt!696733 lt!696733))))

(assert (=> d!545643 (rulesValidInductive!1204 thiss!24550 rules!3447)))

(assert (=> d!545643 (= (maxPrefix!1720 thiss!24550 rules!3447 lt!696733) lt!696954)))

(declare-fun b!1788262 () Bool)

(declare-fun res!806578 () Bool)

(declare-fun e!1144587 () Bool)

(assert (=> b!1788262 (=> (not res!806578) (not e!1144587))))

(assert (=> b!1788262 (= res!806578 (= (value!110477 (_1!11051 (get!6082 lt!696954))) (apply!5337 (transformation!3537 (rule!5629 (_1!11051 (get!6082 lt!696954)))) (seqFromList!2506 (originalCharacters!4351 (_1!11051 (get!6082 lt!696954)))))))))

(declare-fun b!1788263 () Bool)

(declare-fun res!806580 () Bool)

(assert (=> b!1788263 (=> (not res!806580) (not e!1144587))))

(assert (=> b!1788263 (= res!806580 (matchR!2338 (regex!3537 (rule!5629 (_1!11051 (get!6082 lt!696954)))) (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696954))))))))

(declare-fun bm!111400 () Bool)

(assert (=> bm!111400 (= call!111405 (maxPrefixOneRule!1089 thiss!24550 (h!25118 rules!3447) lt!696733))))

(declare-fun b!1788264 () Bool)

(assert (=> b!1788264 (= e!1144587 (contains!3569 rules!3447 (rule!5629 (_1!11051 (get!6082 lt!696954)))))))

(declare-fun b!1788265 () Bool)

(declare-fun lt!696958 () Option!4096)

(declare-fun lt!696957 () Option!4096)

(assert (=> b!1788265 (= e!1144586 (ite (and ((_ is None!4095) lt!696958) ((_ is None!4095) lt!696957)) None!4095 (ite ((_ is None!4095) lt!696957) lt!696958 (ite ((_ is None!4095) lt!696958) lt!696957 (ite (>= (size!15664 (_1!11051 (v!25594 lt!696958))) (size!15664 (_1!11051 (v!25594 lt!696957)))) lt!696958 lt!696957)))))))

(assert (=> b!1788265 (= lt!696958 call!111405)))

(assert (=> b!1788265 (= lt!696957 (maxPrefix!1720 thiss!24550 (t!167326 rules!3447) lt!696733))))

(declare-fun b!1788266 () Bool)

(declare-fun res!806582 () Bool)

(assert (=> b!1788266 (=> (not res!806582) (not e!1144587))))

(assert (=> b!1788266 (= res!806582 (< (size!15666 (_2!11051 (get!6082 lt!696954))) (size!15666 lt!696733)))))

(declare-fun b!1788267 () Bool)

(assert (=> b!1788267 (= e!1144585 e!1144587)))

(declare-fun res!806576 () Bool)

(assert (=> b!1788267 (=> (not res!806576) (not e!1144587))))

(assert (=> b!1788267 (= res!806576 (isDefined!3440 lt!696954))))

(declare-fun b!1788268 () Bool)

(declare-fun res!806581 () Bool)

(assert (=> b!1788268 (=> (not res!806581) (not e!1144587))))

(assert (=> b!1788268 (= res!806581 (= (++!5361 (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696954)))) (_2!11051 (get!6082 lt!696954))) lt!696733))))

(declare-fun b!1788269 () Bool)

(declare-fun res!806579 () Bool)

(assert (=> b!1788269 (=> (not res!806579) (not e!1144587))))

(assert (=> b!1788269 (= res!806579 (= (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!696954)))) (originalCharacters!4351 (_1!11051 (get!6082 lt!696954)))))))

(assert (= (and d!545643 c!290750) b!1788261))

(assert (= (and d!545643 (not c!290750)) b!1788265))

(assert (= (or b!1788261 b!1788265) bm!111400))

(assert (= (and d!545643 (not res!806577)) b!1788267))

(assert (= (and b!1788267 res!806576) b!1788269))

(assert (= (and b!1788269 res!806579) b!1788266))

(assert (= (and b!1788266 res!806582) b!1788268))

(assert (= (and b!1788268 res!806581) b!1788262))

(assert (= (and b!1788262 res!806578) b!1788263))

(assert (= (and b!1788263 res!806580) b!1788264))

(declare-fun m!2212389 () Bool)

(assert (=> b!1788262 m!2212389))

(declare-fun m!2212391 () Bool)

(assert (=> b!1788262 m!2212391))

(assert (=> b!1788262 m!2212391))

(declare-fun m!2212393 () Bool)

(assert (=> b!1788262 m!2212393))

(assert (=> b!1788268 m!2212389))

(declare-fun m!2212395 () Bool)

(assert (=> b!1788268 m!2212395))

(assert (=> b!1788268 m!2212395))

(declare-fun m!2212397 () Bool)

(assert (=> b!1788268 m!2212397))

(assert (=> b!1788268 m!2212397))

(declare-fun m!2212401 () Bool)

(assert (=> b!1788268 m!2212401))

(declare-fun m!2212407 () Bool)

(assert (=> b!1788265 m!2212407))

(declare-fun m!2212409 () Bool)

(assert (=> b!1788267 m!2212409))

(declare-fun m!2212411 () Bool)

(assert (=> d!545643 m!2212411))

(declare-fun m!2212413 () Bool)

(assert (=> d!545643 m!2212413))

(declare-fun m!2212415 () Bool)

(assert (=> d!545643 m!2212415))

(assert (=> d!545643 m!2212183))

(assert (=> b!1788264 m!2212389))

(declare-fun m!2212417 () Bool)

(assert (=> b!1788264 m!2212417))

(assert (=> b!1788263 m!2212389))

(assert (=> b!1788263 m!2212395))

(assert (=> b!1788263 m!2212395))

(assert (=> b!1788263 m!2212397))

(assert (=> b!1788263 m!2212397))

(declare-fun m!2212419 () Bool)

(assert (=> b!1788263 m!2212419))

(assert (=> b!1788269 m!2212389))

(assert (=> b!1788269 m!2212395))

(assert (=> b!1788269 m!2212395))

(assert (=> b!1788269 m!2212397))

(declare-fun m!2212421 () Bool)

(assert (=> bm!111400 m!2212421))

(assert (=> b!1788266 m!2212389))

(declare-fun m!2212423 () Bool)

(assert (=> b!1788266 m!2212423))

(assert (=> b!1788266 m!2212067))

(assert (=> b!1787745 d!545643))

(declare-fun b!1788285 () Bool)

(declare-fun e!1144598 () List!19786)

(assert (=> b!1788285 (= e!1144598 (_2!11051 lt!696752))))

(declare-fun b!1788288 () Bool)

(declare-fun lt!696959 () List!19786)

(declare-fun e!1144597 () Bool)

(assert (=> b!1788288 (= e!1144597 (or (not (= (_2!11051 lt!696752) Nil!19716)) (= lt!696959 lt!696739)))))

(declare-fun b!1788287 () Bool)

(declare-fun res!806587 () Bool)

(assert (=> b!1788287 (=> (not res!806587) (not e!1144597))))

(assert (=> b!1788287 (= res!806587 (= (size!15666 lt!696959) (+ (size!15666 lt!696739) (size!15666 (_2!11051 lt!696752)))))))

(declare-fun d!545647 () Bool)

(assert (=> d!545647 e!1144597))

(declare-fun res!806586 () Bool)

(assert (=> d!545647 (=> (not res!806586) (not e!1144597))))

(assert (=> d!545647 (= res!806586 (= (content!2873 lt!696959) ((_ map or) (content!2873 lt!696739) (content!2873 (_2!11051 lt!696752)))))))

(assert (=> d!545647 (= lt!696959 e!1144598)))

(declare-fun c!290757 () Bool)

(assert (=> d!545647 (= c!290757 ((_ is Nil!19716) lt!696739))))

(assert (=> d!545647 (= (++!5361 lt!696739 (_2!11051 lt!696752)) lt!696959)))

(declare-fun b!1788286 () Bool)

(assert (=> b!1788286 (= e!1144598 (Cons!19716 (h!25117 lt!696739) (++!5361 (t!167325 lt!696739) (_2!11051 lt!696752))))))

(assert (= (and d!545647 c!290757) b!1788285))

(assert (= (and d!545647 (not c!290757)) b!1788286))

(assert (= (and d!545647 res!806586) b!1788287))

(assert (= (and b!1788287 res!806587) b!1788288))

(declare-fun m!2212425 () Bool)

(assert (=> b!1788287 m!2212425))

(assert (=> b!1788287 m!2211709))

(declare-fun m!2212427 () Bool)

(assert (=> b!1788287 m!2212427))

(declare-fun m!2212429 () Bool)

(assert (=> d!545647 m!2212429))

(declare-fun m!2212431 () Bool)

(assert (=> d!545647 m!2212431))

(declare-fun m!2212433 () Bool)

(assert (=> d!545647 m!2212433))

(declare-fun m!2212435 () Bool)

(assert (=> b!1788286 m!2212435))

(assert (=> b!1787745 d!545647))

(declare-fun d!545649 () Bool)

(assert (=> d!545649 (isPrefix!1777 lt!696739 (++!5361 lt!696739 (_2!11051 lt!696752)))))

(declare-fun lt!696967 () Unit!34121)

(declare-fun choose!11301 (List!19786 List!19786) Unit!34121)

(assert (=> d!545649 (= lt!696967 (choose!11301 lt!696739 (_2!11051 lt!696752)))))

(assert (=> d!545649 (= (lemmaConcatTwoListThenFirstIsPrefix!1286 lt!696739 (_2!11051 lt!696752)) lt!696967)))

(declare-fun bs!405510 () Bool)

(assert (= bs!405510 d!545649))

(assert (=> bs!405510 m!2211663))

(assert (=> bs!405510 m!2211663))

(assert (=> bs!405510 m!2211681))

(declare-fun m!2212449 () Bool)

(assert (=> bs!405510 m!2212449))

(assert (=> b!1787745 d!545649))

(declare-fun d!545657 () Bool)

(declare-fun isEmpty!12467 (Option!4097) Bool)

(assert (=> d!545657 (= (isDefined!3439 lt!696745) (not (isEmpty!12467 lt!696745)))))

(declare-fun bs!405513 () Bool)

(assert (= bs!405513 d!545657))

(declare-fun m!2212455 () Bool)

(assert (=> bs!405513 m!2212455))

(assert (=> b!1787745 d!545657))

(declare-fun b!1788322 () Bool)

(declare-fun e!1144619 () Option!4097)

(assert (=> b!1788322 (= e!1144619 None!4096)))

(declare-fun b!1788323 () Bool)

(declare-fun e!1144621 () Option!4097)

(assert (=> b!1788323 (= e!1144621 e!1144619)))

(declare-fun c!290764 () Bool)

(assert (=> b!1788323 (= c!290764 (and ((_ is Cons!19717) rules!3447) (not (= (tag!3941 (h!25118 rules!3447)) (tag!3941 (rule!5629 (_1!11051 lt!696752)))))))))

(declare-fun d!545663 () Bool)

(declare-fun e!1144618 () Bool)

(assert (=> d!545663 e!1144618))

(declare-fun res!806610 () Bool)

(assert (=> d!545663 (=> res!806610 e!1144618)))

(declare-fun lt!696982 () Option!4097)

(assert (=> d!545663 (= res!806610 (isEmpty!12467 lt!696982))))

(assert (=> d!545663 (= lt!696982 e!1144621)))

(declare-fun c!290765 () Bool)

(assert (=> d!545663 (= c!290765 (and ((_ is Cons!19717) rules!3447) (= (tag!3941 (h!25118 rules!3447)) (tag!3941 (rule!5629 (_1!11051 lt!696752))))))))

(assert (=> d!545663 (rulesInvariant!2835 thiss!24550 rules!3447)))

(assert (=> d!545663 (= (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 (_1!11051 lt!696752)))) lt!696982)))

(declare-fun b!1788324 () Bool)

(declare-fun lt!696981 () Unit!34121)

(declare-fun lt!696980 () Unit!34121)

(assert (=> b!1788324 (= lt!696981 lt!696980)))

(assert (=> b!1788324 (rulesInvariant!2835 thiss!24550 (t!167326 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!228 (LexerInterface!3166 Rule!6874 List!19787) Unit!34121)

(assert (=> b!1788324 (= lt!696980 (lemmaInvariantOnRulesThenOnTail!228 thiss!24550 (h!25118 rules!3447) (t!167326 rules!3447)))))

(assert (=> b!1788324 (= e!1144619 (getRuleFromTag!585 thiss!24550 (t!167326 rules!3447) (tag!3941 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun b!1788325 () Bool)

(declare-fun e!1144620 () Bool)

(assert (=> b!1788325 (= e!1144618 e!1144620)))

(declare-fun res!806609 () Bool)

(assert (=> b!1788325 (=> (not res!806609) (not e!1144620))))

(assert (=> b!1788325 (= res!806609 (contains!3569 rules!3447 (get!6083 lt!696982)))))

(declare-fun b!1788326 () Bool)

(assert (=> b!1788326 (= e!1144620 (= (tag!3941 (get!6083 lt!696982)) (tag!3941 (rule!5629 (_1!11051 lt!696752)))))))

(declare-fun b!1788327 () Bool)

(assert (=> b!1788327 (= e!1144621 (Some!4096 (h!25118 rules!3447)))))

(assert (= (and d!545663 c!290765) b!1788327))

(assert (= (and d!545663 (not c!290765)) b!1788323))

(assert (= (and b!1788323 c!290764) b!1788324))

(assert (= (and b!1788323 (not c!290764)) b!1788322))

(assert (= (and d!545663 (not res!806610)) b!1788325))

(assert (= (and b!1788325 res!806609) b!1788326))

(declare-fun m!2212499 () Bool)

(assert (=> d!545663 m!2212499))

(assert (=> d!545663 m!2211777))

(declare-fun m!2212501 () Bool)

(assert (=> b!1788324 m!2212501))

(declare-fun m!2212503 () Bool)

(assert (=> b!1788324 m!2212503))

(declare-fun m!2212505 () Bool)

(assert (=> b!1788324 m!2212505))

(declare-fun m!2212507 () Bool)

(assert (=> b!1788325 m!2212507))

(assert (=> b!1788325 m!2212507))

(declare-fun m!2212509 () Bool)

(assert (=> b!1788325 m!2212509))

(assert (=> b!1788326 m!2212507))

(assert (=> b!1787745 d!545663))

(declare-fun d!545671 () Bool)

(assert (=> d!545671 (= (list!8019 lt!696766) (list!8021 (c!290661 lt!696766)))))

(declare-fun bs!405514 () Bool)

(assert (= bs!405514 d!545671))

(declare-fun m!2212511 () Bool)

(assert (=> bs!405514 m!2212511))

(assert (=> b!1787745 d!545671))

(declare-fun b!1788394 () Bool)

(declare-fun res!806647 () Bool)

(declare-fun e!1144660 () Bool)

(assert (=> b!1788394 (=> (not res!806647) (not e!1144660))))

(declare-fun lt!697090 () Token!6640)

(assert (=> b!1788394 (= res!806647 (matchR!2338 (regex!3537 (get!6083 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 lt!697090))))) (list!8019 (charsOf!2186 lt!697090))))))

(declare-fun b!1788395 () Bool)

(assert (=> b!1788395 (= e!1144660 (= (rule!5629 lt!697090) (get!6083 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 lt!697090))))))))

(declare-fun d!545673 () Bool)

(assert (=> d!545673 (isDefined!3440 (maxPrefix!1720 thiss!24550 rules!3447 (++!5361 lt!696771 suffix!1421)))))

(declare-fun lt!697091 () Unit!34121)

(declare-fun e!1144659 () Unit!34121)

(assert (=> d!545673 (= lt!697091 e!1144659)))

(declare-fun c!290781 () Bool)

(assert (=> d!545673 (= c!290781 (isEmpty!12465 (maxPrefix!1720 thiss!24550 rules!3447 (++!5361 lt!696771 suffix!1421))))))

(declare-fun lt!697100 () Unit!34121)

(declare-fun lt!697084 () Unit!34121)

(assert (=> d!545673 (= lt!697100 lt!697084)))

(assert (=> d!545673 e!1144660))

(declare-fun res!806648 () Bool)

(assert (=> d!545673 (=> (not res!806648) (not e!1144660))))

(assert (=> d!545673 (= res!806648 (isDefined!3439 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 lt!697090)))))))

(assert (=> d!545673 (= lt!697084 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!585 thiss!24550 rules!3447 lt!696771 lt!697090))))

(declare-fun lt!697093 () Unit!34121)

(declare-fun lt!697098 () Unit!34121)

(assert (=> d!545673 (= lt!697093 lt!697098)))

(declare-fun lt!697095 () List!19786)

(assert (=> d!545673 (isPrefix!1777 lt!697095 (++!5361 lt!696771 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!349 (List!19786 List!19786 List!19786) Unit!34121)

(assert (=> d!545673 (= lt!697098 (lemmaPrefixStaysPrefixWhenAddingToSuffix!349 lt!697095 lt!696771 suffix!1421))))

(assert (=> d!545673 (= lt!697095 (list!8019 (charsOf!2186 lt!697090)))))

(declare-fun lt!697089 () Unit!34121)

(declare-fun lt!697097 () Unit!34121)

(assert (=> d!545673 (= lt!697089 lt!697097)))

(declare-fun lt!697085 () List!19786)

(declare-fun lt!697088 () List!19786)

(assert (=> d!545673 (isPrefix!1777 lt!697085 (++!5361 lt!697085 lt!697088))))

(assert (=> d!545673 (= lt!697097 (lemmaConcatTwoListThenFirstIsPrefix!1286 lt!697085 lt!697088))))

(assert (=> d!545673 (= lt!697088 (_2!11051 (get!6082 (maxPrefix!1720 thiss!24550 rules!3447 lt!696771))))))

(assert (=> d!545673 (= lt!697085 (list!8019 (charsOf!2186 lt!697090)))))

(declare-datatypes ((List!19792 0))(
  ( (Nil!19722) (Cons!19722 (h!25123 Token!6640) (t!167391 List!19792)) )
))
(declare-fun head!4194 (List!19792) Token!6640)

(declare-datatypes ((IArray!13127 0))(
  ( (IArray!13128 (innerList!6621 List!19792)) )
))
(declare-datatypes ((Conc!6561 0))(
  ( (Node!6561 (left!15815 Conc!6561) (right!16145 Conc!6561) (csize!13352 Int) (cheight!6772 Int)) (Leaf!9550 (xs!9437 IArray!13127) (csize!13353 Int)) (Empty!6561) )
))
(declare-datatypes ((BalanceConc!13066 0))(
  ( (BalanceConc!13067 (c!290817 Conc!6561)) )
))
(declare-fun list!8023 (BalanceConc!13066) List!19792)

(declare-datatypes ((tuple2!19304 0))(
  ( (tuple2!19305 (_1!11054 BalanceConc!13066) (_2!11054 BalanceConc!13062)) )
))
(declare-fun lex!1488 (LexerInterface!3166 List!19787 BalanceConc!13062) tuple2!19304)

(assert (=> d!545673 (= lt!697090 (head!4194 (list!8023 (_1!11054 (lex!1488 thiss!24550 rules!3447 (seqFromList!2506 lt!696771))))))))

(assert (=> d!545673 (not (isEmpty!12463 rules!3447))))

(assert (=> d!545673 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!688 thiss!24550 rules!3447 lt!696771 suffix!1421) lt!697091)))

(declare-fun b!1788396 () Bool)

(declare-fun Unit!34134 () Unit!34121)

(assert (=> b!1788396 (= e!1144659 Unit!34134)))

(declare-fun lt!697094 () List!19786)

(assert (=> b!1788396 (= lt!697094 (++!5361 lt!696771 suffix!1421))))

(declare-fun lt!697099 () Unit!34121)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!357 (LexerInterface!3166 Rule!6874 List!19787 List!19786) Unit!34121)

(assert (=> b!1788396 (= lt!697099 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!357 thiss!24550 (rule!5629 lt!697090) rules!3447 lt!697094))))

(assert (=> b!1788396 (isEmpty!12465 (maxPrefixOneRule!1089 thiss!24550 (rule!5629 lt!697090) lt!697094))))

(declare-fun lt!697092 () Unit!34121)

(assert (=> b!1788396 (= lt!697092 lt!697099)))

(declare-fun lt!697096 () List!19786)

(assert (=> b!1788396 (= lt!697096 (list!8019 (charsOf!2186 lt!697090)))))

(declare-fun lt!697086 () Unit!34121)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!353 (LexerInterface!3166 Rule!6874 List!19786 List!19786) Unit!34121)

(assert (=> b!1788396 (= lt!697086 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!353 thiss!24550 (rule!5629 lt!697090) lt!697096 (++!5361 lt!696771 suffix!1421)))))

(assert (=> b!1788396 (not (matchR!2338 (regex!3537 (rule!5629 lt!697090)) lt!697096))))

(declare-fun lt!697087 () Unit!34121)

(assert (=> b!1788396 (= lt!697087 lt!697086)))

(assert (=> b!1788396 false))

(declare-fun b!1788397 () Bool)

(declare-fun Unit!34135 () Unit!34121)

(assert (=> b!1788397 (= e!1144659 Unit!34135)))

(assert (= (and d!545673 res!806648) b!1788394))

(assert (= (and b!1788394 res!806647) b!1788395))

(assert (= (and d!545673 c!290781) b!1788396))

(assert (= (and d!545673 (not c!290781)) b!1788397))

(declare-fun m!2212611 () Bool)

(assert (=> b!1788394 m!2212611))

(declare-fun m!2212613 () Bool)

(assert (=> b!1788394 m!2212613))

(declare-fun m!2212615 () Bool)

(assert (=> b!1788394 m!2212615))

(assert (=> b!1788394 m!2212611))

(assert (=> b!1788394 m!2212613))

(declare-fun m!2212617 () Bool)

(assert (=> b!1788394 m!2212617))

(assert (=> b!1788394 m!2212615))

(declare-fun m!2212619 () Bool)

(assert (=> b!1788394 m!2212619))

(assert (=> b!1788395 m!2212615))

(assert (=> b!1788395 m!2212615))

(assert (=> b!1788395 m!2212619))

(declare-fun m!2212621 () Bool)

(assert (=> d!545673 m!2212621))

(declare-fun m!2212623 () Bool)

(assert (=> d!545673 m!2212623))

(declare-fun m!2212625 () Bool)

(assert (=> d!545673 m!2212625))

(declare-fun m!2212627 () Bool)

(assert (=> d!545673 m!2212627))

(declare-fun m!2212629 () Bool)

(assert (=> d!545673 m!2212629))

(assert (=> d!545673 m!2212615))

(declare-fun m!2212631 () Bool)

(assert (=> d!545673 m!2212631))

(declare-fun m!2212633 () Bool)

(assert (=> d!545673 m!2212633))

(assert (=> d!545673 m!2212615))

(assert (=> d!545673 m!2212627))

(declare-fun m!2212635 () Bool)

(assert (=> d!545673 m!2212635))

(declare-fun m!2212637 () Bool)

(assert (=> d!545673 m!2212637))

(assert (=> d!545673 m!2211665))

(assert (=> d!545673 m!2211665))

(declare-fun m!2212639 () Bool)

(assert (=> d!545673 m!2212639))

(declare-fun m!2212641 () Bool)

(assert (=> d!545673 m!2212641))

(assert (=> d!545673 m!2211749))

(assert (=> d!545673 m!2211749))

(declare-fun m!2212643 () Bool)

(assert (=> d!545673 m!2212643))

(assert (=> d!545673 m!2211755))

(declare-fun m!2212645 () Bool)

(assert (=> d!545673 m!2212645))

(declare-fun m!2212647 () Bool)

(assert (=> d!545673 m!2212647))

(assert (=> d!545673 m!2212611))

(assert (=> d!545673 m!2212613))

(assert (=> d!545673 m!2212633))

(declare-fun m!2212649 () Bool)

(assert (=> d!545673 m!2212649))

(assert (=> d!545673 m!2212621))

(assert (=> d!545673 m!2212611))

(assert (=> d!545673 m!2212645))

(assert (=> d!545673 m!2211665))

(assert (=> d!545673 m!2212627))

(assert (=> b!1788396 m!2212611))

(assert (=> b!1788396 m!2212613))

(declare-fun m!2212651 () Bool)

(assert (=> b!1788396 m!2212651))

(assert (=> b!1788396 m!2211665))

(declare-fun m!2212653 () Bool)

(assert (=> b!1788396 m!2212653))

(assert (=> b!1788396 m!2212611))

(assert (=> b!1788396 m!2211665))

(declare-fun m!2212655 () Bool)

(assert (=> b!1788396 m!2212655))

(assert (=> b!1788396 m!2212651))

(declare-fun m!2212657 () Bool)

(assert (=> b!1788396 m!2212657))

(declare-fun m!2212659 () Bool)

(assert (=> b!1788396 m!2212659))

(assert (=> b!1787745 d!545673))

(declare-fun d!545691 () Bool)

(declare-fun e!1144673 () Bool)

(assert (=> d!545691 e!1144673))

(declare-fun res!806667 () Bool)

(assert (=> d!545691 (=> (not res!806667) (not e!1144673))))

(assert (=> d!545691 (= res!806667 (isDefined!3439 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 (_1!11051 lt!696752))))))))

(declare-fun lt!697110 () Unit!34121)

(declare-fun choose!11304 (LexerInterface!3166 List!19787 List!19786 Token!6640) Unit!34121)

(assert (=> d!545691 (= lt!697110 (choose!11304 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752)))))

(assert (=> d!545691 (rulesInvariant!2835 thiss!24550 rules!3447)))

(assert (=> d!545691 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!585 thiss!24550 rules!3447 lt!696733 (_1!11051 lt!696752)) lt!697110)))

(declare-fun b!1788422 () Bool)

(declare-fun res!806668 () Bool)

(assert (=> b!1788422 (=> (not res!806668) (not e!1144673))))

(assert (=> b!1788422 (= res!806668 (matchR!2338 (regex!3537 (get!6083 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 (_1!11051 lt!696752)))))) (list!8019 (charsOf!2186 (_1!11051 lt!696752)))))))

(declare-fun b!1788423 () Bool)

(assert (=> b!1788423 (= e!1144673 (= (rule!5629 (_1!11051 lt!696752)) (get!6083 (getRuleFromTag!585 thiss!24550 rules!3447 (tag!3941 (rule!5629 (_1!11051 lt!696752)))))))))

(assert (= (and d!545691 res!806667) b!1788422))

(assert (= (and b!1788422 res!806668) b!1788423))

(assert (=> d!545691 m!2211683))

(assert (=> d!545691 m!2211683))

(declare-fun m!2212673 () Bool)

(assert (=> d!545691 m!2212673))

(declare-fun m!2212675 () Bool)

(assert (=> d!545691 m!2212675))

(assert (=> d!545691 m!2211777))

(assert (=> b!1788422 m!2211675))

(assert (=> b!1788422 m!2211721))

(assert (=> b!1788422 m!2211675))

(assert (=> b!1788422 m!2211721))

(declare-fun m!2212677 () Bool)

(assert (=> b!1788422 m!2212677))

(assert (=> b!1788422 m!2211683))

(assert (=> b!1788422 m!2211683))

(declare-fun m!2212679 () Bool)

(assert (=> b!1788422 m!2212679))

(assert (=> b!1788423 m!2211683))

(assert (=> b!1788423 m!2211683))

(assert (=> b!1788423 m!2212679))

(assert (=> b!1787745 d!545691))

(declare-fun b!1788432 () Bool)

(declare-fun e!1144680 () List!19786)

(assert (=> b!1788432 (= e!1144680 suffix!1421)))

(declare-fun lt!697113 () List!19786)

(declare-fun b!1788435 () Bool)

(declare-fun e!1144679 () Bool)

(assert (=> b!1788435 (= e!1144679 (or (not (= suffix!1421 Nil!19716)) (= lt!697113 lt!696771)))))

(declare-fun b!1788434 () Bool)

(declare-fun res!806670 () Bool)

(assert (=> b!1788434 (=> (not res!806670) (not e!1144679))))

(assert (=> b!1788434 (= res!806670 (= (size!15666 lt!697113) (+ (size!15666 lt!696771) (size!15666 suffix!1421))))))

(declare-fun d!545699 () Bool)

(assert (=> d!545699 e!1144679))

(declare-fun res!806669 () Bool)

(assert (=> d!545699 (=> (not res!806669) (not e!1144679))))

(assert (=> d!545699 (= res!806669 (= (content!2873 lt!697113) ((_ map or) (content!2873 lt!696771) (content!2873 suffix!1421))))))

(assert (=> d!545699 (= lt!697113 e!1144680)))

(declare-fun c!290789 () Bool)

(assert (=> d!545699 (= c!290789 ((_ is Nil!19716) lt!696771))))

(assert (=> d!545699 (= (++!5361 lt!696771 suffix!1421) lt!697113)))

(declare-fun b!1788433 () Bool)

(assert (=> b!1788433 (= e!1144680 (Cons!19716 (h!25117 lt!696771) (++!5361 (t!167325 lt!696771) suffix!1421)))))

(assert (= (and d!545699 c!290789) b!1788432))

(assert (= (and d!545699 (not c!290789)) b!1788433))

(assert (= (and d!545699 res!806669) b!1788434))

(assert (= (and b!1788434 res!806670) b!1788435))

(declare-fun m!2212681 () Bool)

(assert (=> b!1788434 m!2212681))

(assert (=> b!1788434 m!2212009))

(declare-fun m!2212683 () Bool)

(assert (=> b!1788434 m!2212683))

(declare-fun m!2212685 () Bool)

(assert (=> d!545699 m!2212685))

(assert (=> d!545699 m!2212015))

(declare-fun m!2212687 () Bool)

(assert (=> d!545699 m!2212687))

(declare-fun m!2212689 () Bool)

(assert (=> b!1788433 m!2212689))

(assert (=> b!1787745 d!545699))

(assert (=> b!1787745 d!545601))

(declare-fun b!1788442 () Bool)

(declare-fun e!1144683 () Bool)

(assert (=> b!1788442 (= e!1144683 (isPrefix!1777 (tail!2675 lt!696739) (tail!2675 (++!5361 lt!696739 (_2!11051 lt!696752)))))))

(declare-fun b!1788441 () Bool)

(declare-fun res!806674 () Bool)

(assert (=> b!1788441 (=> (not res!806674) (not e!1144683))))

(assert (=> b!1788441 (= res!806674 (= (head!4192 lt!696739) (head!4192 (++!5361 lt!696739 (_2!11051 lt!696752)))))))

(declare-fun d!545701 () Bool)

(declare-fun e!1144684 () Bool)

(assert (=> d!545701 e!1144684))

(declare-fun res!806673 () Bool)

(assert (=> d!545701 (=> res!806673 e!1144684)))

(declare-fun lt!697115 () Bool)

(assert (=> d!545701 (= res!806673 (not lt!697115))))

(declare-fun e!1144685 () Bool)

(assert (=> d!545701 (= lt!697115 e!1144685)))

(declare-fun res!806672 () Bool)

(assert (=> d!545701 (=> res!806672 e!1144685)))

(assert (=> d!545701 (= res!806672 ((_ is Nil!19716) lt!696739))))

(assert (=> d!545701 (= (isPrefix!1777 lt!696739 (++!5361 lt!696739 (_2!11051 lt!696752))) lt!697115)))

(declare-fun b!1788440 () Bool)

(assert (=> b!1788440 (= e!1144685 e!1144683)))

(declare-fun res!806671 () Bool)

(assert (=> b!1788440 (=> (not res!806671) (not e!1144683))))

(assert (=> b!1788440 (= res!806671 (not ((_ is Nil!19716) (++!5361 lt!696739 (_2!11051 lt!696752)))))))

(declare-fun b!1788443 () Bool)

(assert (=> b!1788443 (= e!1144684 (>= (size!15666 (++!5361 lt!696739 (_2!11051 lt!696752))) (size!15666 lt!696739)))))

(assert (= (and d!545701 (not res!806672)) b!1788440))

(assert (= (and b!1788440 res!806671) b!1788441))

(assert (= (and b!1788441 res!806674) b!1788442))

(assert (= (and d!545701 (not res!806673)) b!1788443))

(assert (=> b!1788442 m!2212027))

(assert (=> b!1788442 m!2211663))

(declare-fun m!2212693 () Bool)

(assert (=> b!1788442 m!2212693))

(assert (=> b!1788442 m!2212027))

(assert (=> b!1788442 m!2212693))

(declare-fun m!2212695 () Bool)

(assert (=> b!1788442 m!2212695))

(assert (=> b!1788441 m!2212031))

(assert (=> b!1788441 m!2211663))

(declare-fun m!2212697 () Bool)

(assert (=> b!1788441 m!2212697))

(assert (=> b!1788443 m!2211663))

(declare-fun m!2212699 () Bool)

(assert (=> b!1788443 m!2212699))

(assert (=> b!1788443 m!2211709))

(assert (=> b!1787745 d!545701))

(declare-fun d!545705 () Bool)

(assert (=> d!545705 (isPrefix!1777 lt!696771 (++!5361 lt!696771 suffix!1421))))

(declare-fun lt!697117 () Unit!34121)

(assert (=> d!545705 (= lt!697117 (choose!11301 lt!696771 suffix!1421))))

(assert (=> d!545705 (= (lemmaConcatTwoListThenFirstIsPrefix!1286 lt!696771 suffix!1421) lt!697117)))

(declare-fun bs!405518 () Bool)

(assert (= bs!405518 d!545705))

(assert (=> bs!405518 m!2211665))

(assert (=> bs!405518 m!2211665))

(declare-fun m!2212703 () Bool)

(assert (=> bs!405518 m!2212703))

(declare-fun m!2212705 () Bool)

(assert (=> bs!405518 m!2212705))

(assert (=> b!1787745 d!545705))

(declare-fun d!545709 () Bool)

(declare-fun c!290801 () Bool)

(assert (=> d!545709 (= c!290801 ((_ is Node!6559) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))))

(declare-fun e!1144706 () Bool)

(assert (=> d!545709 (= (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))) e!1144706)))

(declare-fun b!1788477 () Bool)

(declare-fun inv!25691 (Conc!6559) Bool)

(assert (=> b!1788477 (= e!1144706 (inv!25691 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))))

(declare-fun b!1788478 () Bool)

(declare-fun e!1144707 () Bool)

(assert (=> b!1788478 (= e!1144706 e!1144707)))

(declare-fun res!806690 () Bool)

(assert (=> b!1788478 (= res!806690 (not ((_ is Leaf!9548) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))))))

(assert (=> b!1788478 (=> res!806690 e!1144707)))

(declare-fun b!1788479 () Bool)

(declare-fun inv!25692 (Conc!6559) Bool)

(assert (=> b!1788479 (= e!1144707 (inv!25692 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))))

(assert (= (and d!545709 c!290801) b!1788477))

(assert (= (and d!545709 (not c!290801)) b!1788478))

(assert (= (and b!1788478 (not res!806690)) b!1788479))

(declare-fun m!2212735 () Bool)

(assert (=> b!1788477 m!2212735))

(declare-fun m!2212737 () Bool)

(assert (=> b!1788479 m!2212737))

(assert (=> b!1787789 d!545709))

(declare-fun d!545723 () Bool)

(assert (=> d!545723 (not (matchR!2338 (regex!3537 rule!422) lt!696771))))

(declare-fun lt!697125 () Unit!34121)

(declare-fun choose!11305 (LexerInterface!3166 List!19787 Rule!6874 List!19786 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> d!545723 (= lt!697125 (choose!11305 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 lt!696771 rule!422))))

(assert (=> d!545723 (isPrefix!1777 lt!696739 lt!696733)))

(assert (=> d!545723 (= (lemmaMaxPrefixOutputsMaxPrefix!246 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 lt!696771 rule!422) lt!697125)))

(declare-fun bs!405522 () Bool)

(assert (= bs!405522 d!545723))

(assert (=> bs!405522 m!2211735))

(declare-fun m!2212745 () Bool)

(assert (=> bs!405522 m!2212745))

(assert (=> bs!405522 m!2211667))

(assert (=> b!1787766 d!545723))

(declare-fun d!545731 () Bool)

(assert (=> d!545731 (= (inv!25688 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))) (isBalanced!2051 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))))

(declare-fun bs!405523 () Bool)

(assert (= bs!405523 d!545731))

(declare-fun m!2212747 () Bool)

(assert (=> bs!405523 m!2212747))

(assert (=> tb!108931 d!545731))

(declare-fun d!545733 () Bool)

(assert (=> d!545733 (= (inv!25680 (tag!3941 (rule!5629 token!523))) (= (mod (str.len (value!110476 (tag!3941 (rule!5629 token!523)))) 2) 0))))

(assert (=> b!1787749 d!545733))

(declare-fun d!545737 () Bool)

(declare-fun res!806699 () Bool)

(declare-fun e!1144716 () Bool)

(assert (=> d!545737 (=> (not res!806699) (not e!1144716))))

(assert (=> d!545737 (= res!806699 (semiInverseModEq!1414 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 token!523)))))))

(assert (=> d!545737 (= (inv!25685 (transformation!3537 (rule!5629 token!523))) e!1144716)))

(declare-fun b!1788488 () Bool)

(assert (=> b!1788488 (= e!1144716 (equivClasses!1355 (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 token!523)))))))

(assert (= (and d!545737 res!806699) b!1788488))

(declare-fun m!2212755 () Bool)

(assert (=> d!545737 m!2212755))

(declare-fun m!2212757 () Bool)

(assert (=> b!1788488 m!2212757))

(assert (=> b!1787749 d!545737))

(declare-fun d!545741 () Bool)

(assert (=> d!545741 (= (list!8019 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))) (list!8021 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))))

(declare-fun bs!405526 () Bool)

(assert (= bs!405526 d!545741))

(declare-fun m!2212761 () Bool)

(assert (=> bs!405526 m!2212761))

(assert (=> b!1787748 d!545741))

(declare-fun bs!405527 () Bool)

(declare-fun d!545743 () Bool)

(assert (= bs!405527 (and d!545743 b!1787746)))

(declare-fun lambda!70834 () Int)

(assert (=> bs!405527 (= lambda!70834 lambda!70816)))

(declare-fun b!1788538 () Bool)

(declare-fun e!1144742 () Bool)

(assert (=> b!1788538 (= e!1144742 true)))

(assert (=> d!545743 e!1144742))

(assert (= d!545743 b!1788538))

(assert (=> b!1788538 (< (dynLambda!9747 order!12803 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9748 order!12805 lambda!70834))))

(assert (=> b!1788538 (< (dynLambda!9749 order!12807 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) (dynLambda!9748 order!12805 lambda!70834))))

(assert (=> d!545743 (= (list!8019 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))) (list!8019 lt!696766))))

(declare-fun lt!697128 () Unit!34121)

(declare-fun ForallOf!351 (Int BalanceConc!13062) Unit!34121)

(assert (=> d!545743 (= lt!697128 (ForallOf!351 lambda!70834 lt!696766))))

(assert (=> d!545743 (= (lemmaSemiInverse!675 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) lt!696766) lt!697128)))

(declare-fun b_lambda!58735 () Bool)

(assert (=> (not b_lambda!58735) (not d!545743)))

(assert (=> d!545743 t!167307))

(declare-fun b_and!137861 () Bool)

(assert (= b_and!137841 (and (=> t!167307 result!131070) b_and!137861)))

(assert (=> d!545743 t!167309))

(declare-fun b_and!137863 () Bool)

(assert (= b_and!137843 (and (=> t!167309 result!131074) b_and!137863)))

(assert (=> d!545743 t!167311))

(declare-fun b_and!137865 () Bool)

(assert (= b_and!137845 (and (=> t!167311 result!131076) b_and!137865)))

(declare-fun b_lambda!58737 () Bool)

(assert (=> (not b_lambda!58737) (not d!545743)))

(assert (=> d!545743 t!167313))

(declare-fun b_and!137867 () Bool)

(assert (= b_and!137835 (and (=> t!167313 result!131078) b_and!137867)))

(assert (=> d!545743 t!167315))

(declare-fun b_and!137869 () Bool)

(assert (= b_and!137837 (and (=> t!167315 result!131082) b_and!137869)))

(assert (=> d!545743 t!167317))

(declare-fun b_and!137871 () Bool)

(assert (= b_and!137839 (and (=> t!167317 result!131084) b_and!137871)))

(assert (=> d!545743 m!2211763))

(assert (=> d!545743 m!2211765))

(assert (=> d!545743 m!2211763))

(assert (=> d!545743 m!2211765))

(assert (=> d!545743 m!2211767))

(declare-fun m!2212775 () Bool)

(assert (=> d!545743 m!2212775))

(assert (=> d!545743 m!2211685))

(assert (=> b!1787748 d!545743))

(declare-fun d!545745 () Bool)

(assert (=> d!545745 (= (isEmpty!12462 (_2!11051 lt!696738)) ((_ is Nil!19716) (_2!11051 lt!696738)))))

(assert (=> b!1787769 d!545745))

(declare-fun d!545747 () Bool)

(assert (=> d!545747 (= (inv!25680 (tag!3941 rule!422)) (= (mod (str.len (value!110476 (tag!3941 rule!422))) 2) 0))))

(assert (=> b!1787747 d!545747))

(declare-fun d!545749 () Bool)

(declare-fun res!806700 () Bool)

(declare-fun e!1144747 () Bool)

(assert (=> d!545749 (=> (not res!806700) (not e!1144747))))

(assert (=> d!545749 (= res!806700 (semiInverseModEq!1414 (toChars!4923 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 rule!422))))))

(assert (=> d!545749 (= (inv!25685 (transformation!3537 rule!422)) e!1144747)))

(declare-fun b!1788542 () Bool)

(assert (=> b!1788542 (= e!1144747 (equivClasses!1355 (toChars!4923 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 rule!422))))))

(assert (= (and d!545749 res!806700) b!1788542))

(declare-fun m!2212781 () Bool)

(assert (=> d!545749 m!2212781))

(declare-fun m!2212783 () Bool)

(assert (=> b!1788542 m!2212783))

(assert (=> b!1787747 d!545749))

(declare-fun b!1788547 () Bool)

(declare-fun e!1144751 () Bool)

(assert (=> b!1788547 (= e!1144751 (inv!16 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(declare-fun d!545751 () Bool)

(declare-fun c!290803 () Bool)

(assert (=> d!545751 (= c!290803 ((_ is IntegerValue!10881) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(assert (=> d!545751 (= (inv!21 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)) e!1144751)))

(declare-fun b!1788548 () Bool)

(declare-fun e!1144749 () Bool)

(assert (=> b!1788548 (= e!1144749 (inv!17 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(declare-fun b!1788549 () Bool)

(declare-fun res!806701 () Bool)

(declare-fun e!1144750 () Bool)

(assert (=> b!1788549 (=> res!806701 e!1144750)))

(assert (=> b!1788549 (= res!806701 (not ((_ is IntegerValue!10883) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))))

(assert (=> b!1788549 (= e!1144749 e!1144750)))

(declare-fun b!1788550 () Bool)

(assert (=> b!1788550 (= e!1144751 e!1144749)))

(declare-fun c!290804 () Bool)

(assert (=> b!1788550 (= c!290804 ((_ is IntegerValue!10882) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(declare-fun b!1788551 () Bool)

(assert (=> b!1788551 (= e!1144750 (inv!15 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))))

(assert (= (and d!545751 c!290803) b!1788547))

(assert (= (and d!545751 (not c!290803)) b!1788550))

(assert (= (and b!1788550 c!290804) b!1788548))

(assert (= (and b!1788550 (not c!290804)) b!1788549))

(assert (= (and b!1788549 (not res!806701)) b!1788551))

(declare-fun m!2212785 () Bool)

(assert (=> b!1788547 m!2212785))

(declare-fun m!2212787 () Bool)

(assert (=> b!1788548 m!2212787))

(declare-fun m!2212789 () Bool)

(assert (=> b!1788551 m!2212789))

(assert (=> tb!108937 d!545751))

(declare-fun d!545753 () Bool)

(declare-fun c!290805 () Bool)

(assert (=> d!545753 (= c!290805 ((_ is Node!6559) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))))

(declare-fun e!1144753 () Bool)

(assert (=> d!545753 (= (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))) e!1144753)))

(declare-fun b!1788553 () Bool)

(assert (=> b!1788553 (= e!1144753 (inv!25691 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))))

(declare-fun b!1788554 () Bool)

(declare-fun e!1144754 () Bool)

(assert (=> b!1788554 (= e!1144753 e!1144754)))

(declare-fun res!806702 () Bool)

(assert (=> b!1788554 (= res!806702 (not ((_ is Leaf!9548) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))))))

(assert (=> b!1788554 (=> res!806702 e!1144754)))

(declare-fun b!1788555 () Bool)

(assert (=> b!1788555 (= e!1144754 (inv!25692 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))))))

(assert (= (and d!545753 c!290805) b!1788553))

(assert (= (and d!545753 (not c!290805)) b!1788554))

(assert (= (and b!1788554 (not res!806702)) b!1788555))

(declare-fun m!2212791 () Bool)

(assert (=> b!1788553 m!2212791))

(declare-fun m!2212793 () Bool)

(assert (=> b!1788555 m!2212793))

(assert (=> b!1787792 d!545753))

(declare-fun d!545755 () Bool)

(assert (=> d!545755 (= (inv!25680 (tag!3941 (h!25118 rules!3447))) (= (mod (str.len (value!110476 (tag!3941 (h!25118 rules!3447)))) 2) 0))))

(assert (=> b!1787772 d!545755))

(declare-fun d!545757 () Bool)

(declare-fun res!806703 () Bool)

(declare-fun e!1144755 () Bool)

(assert (=> d!545757 (=> (not res!806703) (not e!1144755))))

(assert (=> d!545757 (= res!806703 (semiInverseModEq!1414 (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (h!25118 rules!3447)))))))

(assert (=> d!545757 (= (inv!25685 (transformation!3537 (h!25118 rules!3447))) e!1144755)))

(declare-fun b!1788556 () Bool)

(assert (=> b!1788556 (= e!1144755 (equivClasses!1355 (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (h!25118 rules!3447)))))))

(assert (= (and d!545757 res!806703) b!1788556))

(declare-fun m!2212795 () Bool)

(assert (=> d!545757 m!2212795))

(declare-fun m!2212797 () Bool)

(assert (=> b!1788556 m!2212797))

(assert (=> b!1787772 d!545757))

(declare-fun d!545759 () Bool)

(assert (=> d!545759 (= (_2!11051 lt!696752) lt!696761)))

(declare-fun lt!697129 () Unit!34121)

(assert (=> d!545759 (= lt!697129 (choose!11296 lt!696739 (_2!11051 lt!696752) lt!696739 lt!696761 lt!696733))))

(assert (=> d!545759 (isPrefix!1777 lt!696739 lt!696733)))

(assert (=> d!545759 (= (lemmaSamePrefixThenSameSuffix!888 lt!696739 (_2!11051 lt!696752) lt!696739 lt!696761 lt!696733) lt!697129)))

(declare-fun bs!405528 () Bool)

(assert (= bs!405528 d!545759))

(declare-fun m!2212799 () Bool)

(assert (=> bs!405528 m!2212799))

(assert (=> bs!405528 m!2211667))

(assert (=> b!1787750 d!545759))

(declare-fun d!545761 () Bool)

(assert (=> d!545761 (= (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) (seqFromList!2506 lt!696739)) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (seqFromList!2506 lt!696739)))))

(declare-fun b_lambda!58749 () Bool)

(assert (=> (not b_lambda!58749) (not d!545761)))

(declare-fun t!167370 () Bool)

(declare-fun tb!108991 () Bool)

(assert (=> (and b!1787755 (= (toValue!5064 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167370) tb!108991))

(declare-fun result!131142 () Bool)

(assert (=> tb!108991 (= result!131142 (inv!21 (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (seqFromList!2506 lt!696739))))))

(declare-fun m!2212801 () Bool)

(assert (=> tb!108991 m!2212801))

(assert (=> d!545761 t!167370))

(declare-fun b_and!137875 () Bool)

(assert (= b_and!137867 (and (=> t!167370 result!131142) b_and!137875)))

(declare-fun tb!108993 () Bool)

(declare-fun t!167372 () Bool)

(assert (=> (and b!1787756 (= (toValue!5064 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167372) tb!108993))

(declare-fun result!131144 () Bool)

(assert (= result!131144 result!131142))

(assert (=> d!545761 t!167372))

(declare-fun b_and!137877 () Bool)

(assert (= b_and!137869 (and (=> t!167372 result!131144) b_and!137877)))

(declare-fun tb!108995 () Bool)

(declare-fun t!167374 () Bool)

(assert (=> (and b!1787740 (= (toValue!5064 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167374) tb!108995))

(declare-fun result!131146 () Bool)

(assert (= result!131146 result!131142))

(assert (=> d!545761 t!167374))

(declare-fun b_and!137879 () Bool)

(assert (= b_and!137871 (and (=> t!167374 result!131146) b_and!137879)))

(assert (=> d!545761 m!2211705))

(declare-fun m!2212803 () Bool)

(assert (=> d!545761 m!2212803))

(assert (=> b!1787750 d!545761))

(declare-fun d!545763 () Bool)

(declare-fun lt!697132 () Int)

(assert (=> d!545763 (>= lt!697132 0)))

(declare-fun e!1144759 () Int)

(assert (=> d!545763 (= lt!697132 e!1144759)))

(declare-fun c!290808 () Bool)

(assert (=> d!545763 (= c!290808 ((_ is Nil!19716) lt!696739))))

(assert (=> d!545763 (= (size!15666 lt!696739) lt!697132)))

(declare-fun b!1788561 () Bool)

(assert (=> b!1788561 (= e!1144759 0)))

(declare-fun b!1788562 () Bool)

(assert (=> b!1788562 (= e!1144759 (+ 1 (size!15666 (t!167325 lt!696739))))))

(assert (= (and d!545763 c!290808) b!1788561))

(assert (= (and d!545763 (not c!290808)) b!1788562))

(declare-fun m!2212805 () Bool)

(assert (=> b!1788562 m!2212805))

(assert (=> b!1787750 d!545763))

(declare-fun d!545765 () Bool)

(assert (=> d!545765 (= (maxPrefixOneRule!1089 thiss!24550 (rule!5629 (_1!11051 lt!696752)) lt!696733) (Some!4095 (tuple2!19299 (Token!6641 (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) (seqFromList!2506 lt!696739)) (rule!5629 (_1!11051 lt!696752)) (size!15666 lt!696739) lt!696739) (_2!11051 lt!696752))))))

(declare-fun lt!697135 () Unit!34121)

(declare-fun choose!11307 (LexerInterface!3166 List!19787 List!19786 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> d!545765 (= lt!697135 (choose!11307 thiss!24550 rules!3447 lt!696739 lt!696733 (_2!11051 lt!696752) (rule!5629 (_1!11051 lt!696752))))))

(assert (=> d!545765 (not (isEmpty!12463 rules!3447))))

(assert (=> d!545765 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!467 thiss!24550 rules!3447 lt!696739 lt!696733 (_2!11051 lt!696752) (rule!5629 (_1!11051 lt!696752))) lt!697135)))

(declare-fun bs!405529 () Bool)

(assert (= bs!405529 d!545765))

(assert (=> bs!405529 m!2211705))

(assert (=> bs!405529 m!2211755))

(assert (=> bs!405529 m!2211705))

(assert (=> bs!405529 m!2211713))

(assert (=> bs!405529 m!2211703))

(assert (=> bs!405529 m!2211709))

(declare-fun m!2212807 () Bool)

(assert (=> bs!405529 m!2212807))

(assert (=> b!1787750 d!545765))

(declare-fun d!545767 () Bool)

(assert (=> d!545767 (= (seqFromList!2506 lt!696739) (fromListB!1148 lt!696739))))

(declare-fun bs!405530 () Bool)

(assert (= bs!405530 d!545767))

(declare-fun m!2212809 () Bool)

(assert (=> bs!405530 m!2212809))

(assert (=> b!1787750 d!545767))

(declare-fun b!1788581 () Bool)

(declare-fun res!806722 () Bool)

(declare-fun e!1144771 () Bool)

(assert (=> b!1788581 (=> (not res!806722) (not e!1144771))))

(declare-fun lt!697146 () Option!4096)

(assert (=> b!1788581 (= res!806722 (= (++!5361 (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!697146)))) (_2!11051 (get!6082 lt!697146))) lt!696733))))

(declare-fun b!1788582 () Bool)

(declare-fun res!806718 () Bool)

(assert (=> b!1788582 (=> (not res!806718) (not e!1144771))))

(assert (=> b!1788582 (= res!806718 (= (rule!5629 (_1!11051 (get!6082 lt!697146))) (rule!5629 (_1!11051 lt!696752))))))

(declare-fun b!1788583 () Bool)

(declare-fun e!1144768 () Bool)

(declare-datatypes ((tuple2!19306 0))(
  ( (tuple2!19307 (_1!11055 List!19786) (_2!11055 List!19786)) )
))
(declare-fun findLongestMatchInner!477 (Regex!4865 List!19786 Int List!19786 List!19786 Int) tuple2!19306)

(assert (=> b!1788583 (= e!1144768 (matchR!2338 (regex!3537 (rule!5629 (_1!11051 lt!696752))) (_1!11055 (findLongestMatchInner!477 (regex!3537 (rule!5629 (_1!11051 lt!696752))) Nil!19716 (size!15666 Nil!19716) lt!696733 lt!696733 (size!15666 lt!696733)))))))

(declare-fun b!1788584 () Bool)

(declare-fun e!1144769 () Bool)

(assert (=> b!1788584 (= e!1144769 e!1144771)))

(declare-fun res!806719 () Bool)

(assert (=> b!1788584 (=> (not res!806719) (not e!1144771))))

(assert (=> b!1788584 (= res!806719 (matchR!2338 (regex!3537 (rule!5629 (_1!11051 lt!696752))) (list!8019 (charsOf!2186 (_1!11051 (get!6082 lt!697146))))))))

(declare-fun b!1788585 () Bool)

(declare-fun e!1144770 () Option!4096)

(assert (=> b!1788585 (= e!1144770 None!4095)))

(declare-fun b!1788586 () Bool)

(declare-fun lt!697150 () tuple2!19306)

(assert (=> b!1788586 (= e!1144770 (Some!4095 (tuple2!19299 (Token!6641 (apply!5337 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) (seqFromList!2506 (_1!11055 lt!697150))) (rule!5629 (_1!11051 lt!696752)) (size!15665 (seqFromList!2506 (_1!11055 lt!697150))) (_1!11055 lt!697150)) (_2!11055 lt!697150))))))

(declare-fun lt!697147 () Unit!34121)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!461 (Regex!4865 List!19786) Unit!34121)

(assert (=> b!1788586 (= lt!697147 (longestMatchIsAcceptedByMatchOrIsEmpty!461 (regex!3537 (rule!5629 (_1!11051 lt!696752))) lt!696733))))

(declare-fun res!806721 () Bool)

(assert (=> b!1788586 (= res!806721 (isEmpty!12462 (_1!11055 (findLongestMatchInner!477 (regex!3537 (rule!5629 (_1!11051 lt!696752))) Nil!19716 (size!15666 Nil!19716) lt!696733 lt!696733 (size!15666 lt!696733)))))))

(assert (=> b!1788586 (=> res!806721 e!1144768)))

(assert (=> b!1788586 e!1144768))

(declare-fun lt!697149 () Unit!34121)

(assert (=> b!1788586 (= lt!697149 lt!697147)))

(declare-fun lt!697148 () Unit!34121)

(assert (=> b!1788586 (= lt!697148 (lemmaSemiInverse!675 (transformation!3537 (rule!5629 (_1!11051 lt!696752))) (seqFromList!2506 (_1!11055 lt!697150))))))

(declare-fun b!1788587 () Bool)

(declare-fun res!806720 () Bool)

(assert (=> b!1788587 (=> (not res!806720) (not e!1144771))))

(assert (=> b!1788587 (= res!806720 (= (value!110477 (_1!11051 (get!6082 lt!697146))) (apply!5337 (transformation!3537 (rule!5629 (_1!11051 (get!6082 lt!697146)))) (seqFromList!2506 (originalCharacters!4351 (_1!11051 (get!6082 lt!697146)))))))))

(declare-fun b!1788588 () Bool)

(declare-fun res!806723 () Bool)

(assert (=> b!1788588 (=> (not res!806723) (not e!1144771))))

(assert (=> b!1788588 (= res!806723 (< (size!15666 (_2!11051 (get!6082 lt!697146))) (size!15666 lt!696733)))))

(declare-fun b!1788589 () Bool)

(assert (=> b!1788589 (= e!1144771 (= (size!15664 (_1!11051 (get!6082 lt!697146))) (size!15666 (originalCharacters!4351 (_1!11051 (get!6082 lt!697146))))))))

(declare-fun d!545769 () Bool)

(assert (=> d!545769 e!1144769))

(declare-fun res!806724 () Bool)

(assert (=> d!545769 (=> res!806724 e!1144769)))

(assert (=> d!545769 (= res!806724 (isEmpty!12465 lt!697146))))

(assert (=> d!545769 (= lt!697146 e!1144770)))

(declare-fun c!290811 () Bool)

(assert (=> d!545769 (= c!290811 (isEmpty!12462 (_1!11055 lt!697150)))))

(declare-fun findLongestMatch!404 (Regex!4865 List!19786) tuple2!19306)

(assert (=> d!545769 (= lt!697150 (findLongestMatch!404 (regex!3537 (rule!5629 (_1!11051 lt!696752))) lt!696733))))

(assert (=> d!545769 (ruleValid!1035 thiss!24550 (rule!5629 (_1!11051 lt!696752)))))

(assert (=> d!545769 (= (maxPrefixOneRule!1089 thiss!24550 (rule!5629 (_1!11051 lt!696752)) lt!696733) lt!697146)))

(assert (= (and d!545769 c!290811) b!1788585))

(assert (= (and d!545769 (not c!290811)) b!1788586))

(assert (= (and b!1788586 (not res!806721)) b!1788583))

(assert (= (and d!545769 (not res!806724)) b!1788584))

(assert (= (and b!1788584 res!806719) b!1788581))

(assert (= (and b!1788581 res!806722) b!1788588))

(assert (= (and b!1788588 res!806723) b!1788582))

(assert (= (and b!1788582 res!806718) b!1788587))

(assert (= (and b!1788587 res!806720) b!1788589))

(declare-fun m!2212811 () Bool)

(assert (=> b!1788588 m!2212811))

(declare-fun m!2212813 () Bool)

(assert (=> b!1788588 m!2212813))

(assert (=> b!1788588 m!2212067))

(assert (=> b!1788581 m!2212811))

(declare-fun m!2212815 () Bool)

(assert (=> b!1788581 m!2212815))

(assert (=> b!1788581 m!2212815))

(declare-fun m!2212817 () Bool)

(assert (=> b!1788581 m!2212817))

(assert (=> b!1788581 m!2212817))

(declare-fun m!2212819 () Bool)

(assert (=> b!1788581 m!2212819))

(assert (=> b!1788587 m!2212811))

(declare-fun m!2212821 () Bool)

(assert (=> b!1788587 m!2212821))

(assert (=> b!1788587 m!2212821))

(declare-fun m!2212823 () Bool)

(assert (=> b!1788587 m!2212823))

(declare-fun m!2212825 () Bool)

(assert (=> d!545769 m!2212825))

(declare-fun m!2212827 () Bool)

(assert (=> d!545769 m!2212827))

(declare-fun m!2212829 () Bool)

(assert (=> d!545769 m!2212829))

(declare-fun m!2212831 () Bool)

(assert (=> d!545769 m!2212831))

(declare-fun m!2212833 () Bool)

(assert (=> b!1788583 m!2212833))

(assert (=> b!1788583 m!2212067))

(assert (=> b!1788583 m!2212833))

(assert (=> b!1788583 m!2212067))

(declare-fun m!2212835 () Bool)

(assert (=> b!1788583 m!2212835))

(declare-fun m!2212837 () Bool)

(assert (=> b!1788583 m!2212837))

(assert (=> b!1788584 m!2212811))

(assert (=> b!1788584 m!2212815))

(assert (=> b!1788584 m!2212815))

(assert (=> b!1788584 m!2212817))

(assert (=> b!1788584 m!2212817))

(declare-fun m!2212839 () Bool)

(assert (=> b!1788584 m!2212839))

(assert (=> b!1788589 m!2212811))

(declare-fun m!2212841 () Bool)

(assert (=> b!1788589 m!2212841))

(assert (=> b!1788586 m!2212833))

(assert (=> b!1788586 m!2212067))

(assert (=> b!1788586 m!2212835))

(declare-fun m!2212843 () Bool)

(assert (=> b!1788586 m!2212843))

(declare-fun m!2212845 () Bool)

(assert (=> b!1788586 m!2212845))

(assert (=> b!1788586 m!2212845))

(declare-fun m!2212847 () Bool)

(assert (=> b!1788586 m!2212847))

(assert (=> b!1788586 m!2212845))

(declare-fun m!2212849 () Bool)

(assert (=> b!1788586 m!2212849))

(assert (=> b!1788586 m!2212833))

(assert (=> b!1788586 m!2212845))

(declare-fun m!2212851 () Bool)

(assert (=> b!1788586 m!2212851))

(assert (=> b!1788586 m!2212067))

(declare-fun m!2212853 () Bool)

(assert (=> b!1788586 m!2212853))

(assert (=> b!1788582 m!2212811))

(assert (=> b!1787750 d!545769))

(declare-fun d!545771 () Bool)

(declare-fun lt!697151 () List!19786)

(assert (=> d!545771 (= (++!5361 lt!696739 lt!697151) lt!696733)))

(declare-fun e!1144772 () List!19786)

(assert (=> d!545771 (= lt!697151 e!1144772)))

(declare-fun c!290812 () Bool)

(assert (=> d!545771 (= c!290812 ((_ is Cons!19716) lt!696739))))

(assert (=> d!545771 (>= (size!15666 lt!696733) (size!15666 lt!696739))))

(assert (=> d!545771 (= (getSuffix!944 lt!696733 lt!696739) lt!697151)))

(declare-fun b!1788590 () Bool)

(assert (=> b!1788590 (= e!1144772 (getSuffix!944 (tail!2675 lt!696733) (t!167325 lt!696739)))))

(declare-fun b!1788591 () Bool)

(assert (=> b!1788591 (= e!1144772 lt!696733)))

(assert (= (and d!545771 c!290812) b!1788590))

(assert (= (and d!545771 (not c!290812)) b!1788591))

(declare-fun m!2212855 () Bool)

(assert (=> d!545771 m!2212855))

(assert (=> d!545771 m!2212067))

(assert (=> d!545771 m!2211709))

(assert (=> b!1788590 m!2212059))

(assert (=> b!1788590 m!2212059))

(declare-fun m!2212857 () Bool)

(assert (=> b!1788590 m!2212857))

(assert (=> b!1787750 d!545771))

(declare-fun d!545773 () Bool)

(assert (=> d!545773 (not (matchR!2338 (regex!3537 (rule!5629 token!523)) lt!696739))))

(declare-fun lt!697154 () Unit!34121)

(declare-fun choose!11308 (LexerInterface!3166 List!19787 Rule!6874 List!19786 List!19786 Rule!6874) Unit!34121)

(assert (=> d!545773 (= lt!697154 (choose!11308 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 (rule!5629 token!523)))))

(assert (=> d!545773 (isPrefix!1777 lt!696739 lt!696733)))

(assert (=> d!545773 (= (lemmaMaxPrefNoSmallerRuleMatches!158 thiss!24550 rules!3447 (rule!5629 (_1!11051 lt!696752)) lt!696739 lt!696733 (rule!5629 token!523)) lt!697154)))

(declare-fun bs!405531 () Bool)

(assert (= bs!405531 d!545773))

(assert (=> bs!405531 m!2211835))

(declare-fun m!2212859 () Bool)

(assert (=> bs!405531 m!2212859))

(assert (=> bs!405531 m!2211667))

(assert (=> b!1787733 d!545773))

(declare-fun bm!111405 () Bool)

(declare-fun call!111410 () Bool)

(assert (=> bm!111405 (= call!111410 (isEmpty!12462 lt!696739))))

(declare-fun d!545775 () Bool)

(declare-fun e!1144779 () Bool)

(assert (=> d!545775 e!1144779))

(declare-fun c!290815 () Bool)

(assert (=> d!545775 (= c!290815 ((_ is EmptyExpr!4865) (regex!3537 (rule!5629 token!523))))))

(declare-fun lt!697155 () Bool)

(declare-fun e!1144774 () Bool)

(assert (=> d!545775 (= lt!697155 e!1144774)))

(declare-fun c!290814 () Bool)

(assert (=> d!545775 (= c!290814 (isEmpty!12462 lt!696739))))

(assert (=> d!545775 (validRegex!1973 (regex!3537 (rule!5629 token!523)))))

(assert (=> d!545775 (= (matchR!2338 (regex!3537 (rule!5629 token!523)) lt!696739) lt!697155)))

(declare-fun b!1788592 () Bool)

(declare-fun res!806725 () Bool)

(declare-fun e!1144778 () Bool)

(assert (=> b!1788592 (=> (not res!806725) (not e!1144778))))

(assert (=> b!1788592 (= res!806725 (not call!111410))))

(declare-fun b!1788593 () Bool)

(declare-fun res!806729 () Bool)

(declare-fun e!1144776 () Bool)

(assert (=> b!1788593 (=> res!806729 e!1144776)))

(assert (=> b!1788593 (= res!806729 (not ((_ is ElementMatch!4865) (regex!3537 (rule!5629 token!523)))))))

(declare-fun e!1144775 () Bool)

(assert (=> b!1788593 (= e!1144775 e!1144776)))

(declare-fun b!1788594 () Bool)

(assert (=> b!1788594 (= e!1144774 (matchR!2338 (derivativeStep!1268 (regex!3537 (rule!5629 token!523)) (head!4192 lt!696739)) (tail!2675 lt!696739)))))

(declare-fun b!1788595 () Bool)

(assert (=> b!1788595 (= e!1144779 (= lt!697155 call!111410))))

(declare-fun b!1788596 () Bool)

(declare-fun e!1144773 () Bool)

(assert (=> b!1788596 (= e!1144776 e!1144773)))

(declare-fun res!806731 () Bool)

(assert (=> b!1788596 (=> (not res!806731) (not e!1144773))))

(assert (=> b!1788596 (= res!806731 (not lt!697155))))

(declare-fun b!1788597 () Bool)

(assert (=> b!1788597 (= e!1144775 (not lt!697155))))

(declare-fun b!1788598 () Bool)

(declare-fun res!806730 () Bool)

(assert (=> b!1788598 (=> res!806730 e!1144776)))

(assert (=> b!1788598 (= res!806730 e!1144778)))

(declare-fun res!806728 () Bool)

(assert (=> b!1788598 (=> (not res!806728) (not e!1144778))))

(assert (=> b!1788598 (= res!806728 lt!697155)))

(declare-fun b!1788599 () Bool)

(declare-fun e!1144777 () Bool)

(assert (=> b!1788599 (= e!1144773 e!1144777)))

(declare-fun res!806726 () Bool)

(assert (=> b!1788599 (=> res!806726 e!1144777)))

(assert (=> b!1788599 (= res!806726 call!111410)))

(declare-fun b!1788600 () Bool)

(assert (=> b!1788600 (= e!1144774 (nullable!1499 (regex!3537 (rule!5629 token!523))))))

(declare-fun b!1788601 () Bool)

(declare-fun res!806727 () Bool)

(assert (=> b!1788601 (=> (not res!806727) (not e!1144778))))

(assert (=> b!1788601 (= res!806727 (isEmpty!12462 (tail!2675 lt!696739)))))

(declare-fun b!1788602 () Bool)

(declare-fun res!806732 () Bool)

(assert (=> b!1788602 (=> res!806732 e!1144777)))

(assert (=> b!1788602 (= res!806732 (not (isEmpty!12462 (tail!2675 lt!696739))))))

(declare-fun b!1788603 () Bool)

(assert (=> b!1788603 (= e!1144779 e!1144775)))

(declare-fun c!290813 () Bool)

(assert (=> b!1788603 (= c!290813 ((_ is EmptyLang!4865) (regex!3537 (rule!5629 token!523))))))

(declare-fun b!1788604 () Bool)

(assert (=> b!1788604 (= e!1144778 (= (head!4192 lt!696739) (c!290660 (regex!3537 (rule!5629 token!523)))))))

(declare-fun b!1788605 () Bool)

(assert (=> b!1788605 (= e!1144777 (not (= (head!4192 lt!696739) (c!290660 (regex!3537 (rule!5629 token!523))))))))

(assert (= (and d!545775 c!290814) b!1788600))

(assert (= (and d!545775 (not c!290814)) b!1788594))

(assert (= (and d!545775 c!290815) b!1788595))

(assert (= (and d!545775 (not c!290815)) b!1788603))

(assert (= (and b!1788603 c!290813) b!1788597))

(assert (= (and b!1788603 (not c!290813)) b!1788593))

(assert (= (and b!1788593 (not res!806729)) b!1788598))

(assert (= (and b!1788598 res!806728) b!1788592))

(assert (= (and b!1788592 res!806725) b!1788601))

(assert (= (and b!1788601 res!806727) b!1788604))

(assert (= (and b!1788598 (not res!806730)) b!1788596))

(assert (= (and b!1788596 res!806731) b!1788599))

(assert (= (and b!1788599 (not res!806726)) b!1788602))

(assert (= (and b!1788602 (not res!806732)) b!1788605))

(assert (= (or b!1788595 b!1788592 b!1788599) bm!111405))

(assert (=> bm!111405 m!2212035))

(assert (=> b!1788601 m!2212027))

(assert (=> b!1788601 m!2212027))

(assert (=> b!1788601 m!2212037))

(declare-fun m!2212861 () Bool)

(assert (=> b!1788600 m!2212861))

(assert (=> d!545775 m!2212035))

(declare-fun m!2212863 () Bool)

(assert (=> d!545775 m!2212863))

(assert (=> b!1788605 m!2212031))

(assert (=> b!1788602 m!2212027))

(assert (=> b!1788602 m!2212027))

(assert (=> b!1788602 m!2212037))

(assert (=> b!1788604 m!2212031))

(assert (=> b!1788594 m!2212031))

(assert (=> b!1788594 m!2212031))

(declare-fun m!2212865 () Bool)

(assert (=> b!1788594 m!2212865))

(assert (=> b!1788594 m!2212027))

(assert (=> b!1788594 m!2212865))

(assert (=> b!1788594 m!2212027))

(declare-fun m!2212867 () Bool)

(assert (=> b!1788594 m!2212867))

(assert (=> b!1787733 d!545775))

(declare-fun d!545777 () Bool)

(declare-fun lt!697156 () Bool)

(assert (=> d!545777 (= lt!697156 (select (content!2875 rules!3447) (rule!5629 token!523)))))

(declare-fun e!1144781 () Bool)

(assert (=> d!545777 (= lt!697156 e!1144781)))

(declare-fun res!806734 () Bool)

(assert (=> d!545777 (=> (not res!806734) (not e!1144781))))

(assert (=> d!545777 (= res!806734 ((_ is Cons!19717) rules!3447))))

(assert (=> d!545777 (= (contains!3569 rules!3447 (rule!5629 token!523)) lt!697156)))

(declare-fun b!1788606 () Bool)

(declare-fun e!1144780 () Bool)

(assert (=> b!1788606 (= e!1144781 e!1144780)))

(declare-fun res!806733 () Bool)

(assert (=> b!1788606 (=> res!806733 e!1144780)))

(assert (=> b!1788606 (= res!806733 (= (h!25118 rules!3447) (rule!5629 token!523)))))

(declare-fun b!1788607 () Bool)

(assert (=> b!1788607 (= e!1144780 (contains!3569 (t!167326 rules!3447) (rule!5629 token!523)))))

(assert (= (and d!545777 res!806734) b!1788606))

(assert (= (and b!1788606 (not res!806733)) b!1788607))

(assert (=> d!545777 m!2212349))

(declare-fun m!2212869 () Bool)

(assert (=> d!545777 m!2212869))

(declare-fun m!2212871 () Bool)

(assert (=> b!1788607 m!2212871))

(assert (=> b!1787754 d!545777))

(declare-fun d!545779 () Bool)

(assert (=> d!545779 (= suffix!1421 (_2!11051 lt!696752))))

(declare-fun lt!697157 () Unit!34121)

(assert (=> d!545779 (= lt!697157 (choose!11296 lt!696771 suffix!1421 lt!696771 (_2!11051 lt!696752) lt!696733))))

(assert (=> d!545779 (isPrefix!1777 lt!696771 lt!696733)))

(assert (=> d!545779 (= (lemmaSamePrefixThenSameSuffix!888 lt!696771 suffix!1421 lt!696771 (_2!11051 lt!696752) lt!696733) lt!697157)))

(declare-fun bs!405532 () Bool)

(assert (= bs!405532 d!545779))

(declare-fun m!2212873 () Bool)

(assert (=> bs!405532 m!2212873))

(assert (=> bs!405532 m!2211669))

(assert (=> b!1787732 d!545779))

(declare-fun d!545781 () Bool)

(assert (=> d!545781 (= lt!696739 lt!696771)))

(declare-fun lt!697160 () Unit!34121)

(declare-fun choose!11309 (List!19786 List!19786 List!19786) Unit!34121)

(assert (=> d!545781 (= lt!697160 (choose!11309 lt!696739 lt!696771 lt!696733))))

(assert (=> d!545781 (isPrefix!1777 lt!696739 lt!696733)))

(assert (=> d!545781 (= (lemmaIsPrefixSameLengthThenSameList!273 lt!696739 lt!696771 lt!696733) lt!697160)))

(declare-fun bs!405533 () Bool)

(assert (= bs!405533 d!545781))

(declare-fun m!2212875 () Bool)

(assert (=> bs!405533 m!2212875))

(assert (=> bs!405533 m!2211667))

(assert (=> b!1787732 d!545781))

(declare-fun b!1788616 () Bool)

(declare-fun tp!505672 () Bool)

(declare-fun tp!505674 () Bool)

(declare-fun e!1144787 () Bool)

(assert (=> b!1788616 (= e!1144787 (and (inv!25687 (left!15813 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))) tp!505674 (inv!25687 (right!16143 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))) tp!505672))))

(declare-fun b!1788618 () Bool)

(declare-fun e!1144786 () Bool)

(declare-fun tp!505673 () Bool)

(assert (=> b!1788618 (= e!1144786 tp!505673)))

(declare-fun b!1788617 () Bool)

(declare-fun inv!25694 (IArray!13123) Bool)

(assert (=> b!1788617 (= e!1144787 (and (inv!25694 (xs!9435 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))) e!1144786))))

(assert (=> b!1787792 (= tp!505610 (and (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752))))) e!1144787))))

(assert (= (and b!1787792 ((_ is Node!6559) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))) b!1788616))

(assert (= b!1788617 b!1788618))

(assert (= (and b!1787792 ((_ is Leaf!9548) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (value!110477 (_1!11051 lt!696752)))))) b!1788617))

(declare-fun m!2212877 () Bool)

(assert (=> b!1788616 m!2212877))

(declare-fun m!2212879 () Bool)

(assert (=> b!1788616 m!2212879))

(declare-fun m!2212881 () Bool)

(assert (=> b!1788617 m!2212881))

(assert (=> b!1787792 m!2211659))

(declare-fun b!1788632 () Bool)

(declare-fun e!1144790 () Bool)

(declare-fun tp!505689 () Bool)

(declare-fun tp!505688 () Bool)

(assert (=> b!1788632 (= e!1144790 (and tp!505689 tp!505688))))

(declare-fun b!1788631 () Bool)

(declare-fun tp!505685 () Bool)

(assert (=> b!1788631 (= e!1144790 tp!505685)))

(assert (=> b!1787772 (= tp!505603 e!1144790)))

(declare-fun b!1788630 () Bool)

(declare-fun tp!505687 () Bool)

(declare-fun tp!505686 () Bool)

(assert (=> b!1788630 (= e!1144790 (and tp!505687 tp!505686))))

(declare-fun b!1788629 () Bool)

(assert (=> b!1788629 (= e!1144790 tp_is_empty!7973)))

(assert (= (and b!1787772 ((_ is ElementMatch!4865) (regex!3537 (h!25118 rules!3447)))) b!1788629))

(assert (= (and b!1787772 ((_ is Concat!8493) (regex!3537 (h!25118 rules!3447)))) b!1788630))

(assert (= (and b!1787772 ((_ is Star!4865) (regex!3537 (h!25118 rules!3447)))) b!1788631))

(assert (= (and b!1787772 ((_ is Union!4865) (regex!3537 (h!25118 rules!3447)))) b!1788632))

(declare-fun tp!505690 () Bool)

(declare-fun e!1144792 () Bool)

(declare-fun b!1788633 () Bool)

(declare-fun tp!505692 () Bool)

(assert (=> b!1788633 (= e!1144792 (and (inv!25687 (left!15813 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))) tp!505692 (inv!25687 (right!16143 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))) tp!505690))))

(declare-fun b!1788635 () Bool)

(declare-fun e!1144791 () Bool)

(declare-fun tp!505691 () Bool)

(assert (=> b!1788635 (= e!1144791 tp!505691)))

(declare-fun b!1788634 () Bool)

(assert (=> b!1788634 (= e!1144792 (and (inv!25694 (xs!9435 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))) e!1144791))))

(assert (=> b!1787789 (= tp!505609 (and (inv!25687 (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766)))) e!1144792))))

(assert (= (and b!1787789 ((_ is Node!6559) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))) b!1788633))

(assert (= b!1788634 b!1788635))

(assert (= (and b!1787789 ((_ is Leaf!9548) (c!290661 (dynLambda!9750 (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) (dynLambda!9751 (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))) lt!696766))))) b!1788634))

(declare-fun m!2212883 () Bool)

(assert (=> b!1788633 m!2212883))

(declare-fun m!2212885 () Bool)

(assert (=> b!1788633 m!2212885))

(declare-fun m!2212887 () Bool)

(assert (=> b!1788634 m!2212887))

(assert (=> b!1787789 m!2211653))

(declare-fun b!1788640 () Bool)

(declare-fun e!1144795 () Bool)

(declare-fun tp!505695 () Bool)

(assert (=> b!1788640 (= e!1144795 (and tp_is_empty!7973 tp!505695))))

(assert (=> b!1787760 (= tp!505595 e!1144795)))

(assert (= (and b!1787760 ((_ is Cons!19716) (originalCharacters!4351 token!523))) b!1788640))

(declare-fun b!1788644 () Bool)

(declare-fun e!1144796 () Bool)

(declare-fun tp!505700 () Bool)

(declare-fun tp!505699 () Bool)

(assert (=> b!1788644 (= e!1144796 (and tp!505700 tp!505699))))

(declare-fun b!1788643 () Bool)

(declare-fun tp!505696 () Bool)

(assert (=> b!1788643 (= e!1144796 tp!505696)))

(assert (=> b!1787749 (= tp!505598 e!1144796)))

(declare-fun b!1788642 () Bool)

(declare-fun tp!505698 () Bool)

(declare-fun tp!505697 () Bool)

(assert (=> b!1788642 (= e!1144796 (and tp!505698 tp!505697))))

(declare-fun b!1788641 () Bool)

(assert (=> b!1788641 (= e!1144796 tp_is_empty!7973)))

(assert (= (and b!1787749 ((_ is ElementMatch!4865) (regex!3537 (rule!5629 token!523)))) b!1788641))

(assert (= (and b!1787749 ((_ is Concat!8493) (regex!3537 (rule!5629 token!523)))) b!1788642))

(assert (= (and b!1787749 ((_ is Star!4865) (regex!3537 (rule!5629 token!523)))) b!1788643))

(assert (= (and b!1787749 ((_ is Union!4865) (regex!3537 (rule!5629 token!523)))) b!1788644))

(declare-fun b!1788655 () Bool)

(declare-fun b_free!49743 () Bool)

(declare-fun b_next!50447 () Bool)

(assert (=> b!1788655 (= b_free!49743 (not b_next!50447))))

(declare-fun t!167376 () Bool)

(declare-fun tb!108997 () Bool)

(assert (=> (and b!1788655 (= (toValue!5064 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167376) tb!108997))

(declare-fun result!131156 () Bool)

(assert (= result!131156 result!131078))

(assert (=> d!545569 t!167376))

(assert (=> b!1787748 t!167376))

(declare-fun tb!108999 () Bool)

(declare-fun t!167378 () Bool)

(assert (=> (and b!1788655 (= (toValue!5064 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167378) tb!108999))

(declare-fun result!131158 () Bool)

(assert (= result!131158 result!131116))

(assert (=> d!545569 t!167378))

(assert (=> d!545743 t!167376))

(declare-fun tb!109001 () Bool)

(declare-fun t!167380 () Bool)

(assert (=> (and b!1788655 (= (toValue!5064 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167380) tb!109001))

(declare-fun result!131160 () Bool)

(assert (= result!131160 result!131142))

(assert (=> d!545761 t!167380))

(assert (=> d!545565 t!167376))

(declare-fun tp!505710 () Bool)

(declare-fun b_and!137881 () Bool)

(assert (=> b!1788655 (= tp!505710 (and (=> t!167376 result!131156) (=> t!167378 result!131158) (=> t!167380 result!131160) b_and!137881))))

(declare-fun b_free!49745 () Bool)

(declare-fun b_next!50449 () Bool)

(assert (=> b!1788655 (= b_free!49745 (not b_next!50449))))

(declare-fun tb!109003 () Bool)

(declare-fun t!167382 () Bool)

(assert (=> (and b!1788655 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167382) tb!109003))

(declare-fun result!131162 () Bool)

(assert (= result!131162 result!131070))

(assert (=> d!545743 t!167382))

(assert (=> b!1787748 t!167382))

(declare-fun tb!109005 () Bool)

(declare-fun t!167384 () Bool)

(assert (=> (and b!1788655 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752))))) t!167384) tb!109005))

(declare-fun result!131164 () Bool)

(assert (= result!131164 result!131086))

(assert (=> d!545601 t!167384))

(declare-fun tb!109007 () Bool)

(declare-fun t!167386 () Bool)

(assert (=> (and b!1788655 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 token!523)))) t!167386) tb!109007))

(declare-fun result!131166 () Bool)

(assert (= result!131166 result!131104))

(assert (=> d!545553 t!167386))

(assert (=> b!1787978 t!167386))

(assert (=> b!1787771 t!167384))

(declare-fun tp!505711 () Bool)

(declare-fun b_and!137883 () Bool)

(assert (=> b!1788655 (= tp!505711 (and (=> t!167382 result!131162) (=> t!167384 result!131164) (=> t!167386 result!131166) b_and!137883))))

(declare-fun e!1144806 () Bool)

(assert (=> b!1788655 (= e!1144806 (and tp!505710 tp!505711))))

(declare-fun e!1144805 () Bool)

(declare-fun tp!505709 () Bool)

(declare-fun b!1788654 () Bool)

(assert (=> b!1788654 (= e!1144805 (and tp!505709 (inv!25680 (tag!3941 (h!25118 (t!167326 rules!3447)))) (inv!25685 (transformation!3537 (h!25118 (t!167326 rules!3447)))) e!1144806))))

(declare-fun b!1788653 () Bool)

(declare-fun e!1144808 () Bool)

(declare-fun tp!505712 () Bool)

(assert (=> b!1788653 (= e!1144808 (and e!1144805 tp!505712))))

(assert (=> b!1787770 (= tp!505597 e!1144808)))

(assert (= b!1788654 b!1788655))

(assert (= b!1788653 b!1788654))

(assert (= (and b!1787770 ((_ is Cons!19717) (t!167326 rules!3447))) b!1788653))

(declare-fun m!2212889 () Bool)

(assert (=> b!1788654 m!2212889))

(declare-fun m!2212891 () Bool)

(assert (=> b!1788654 m!2212891))

(declare-fun b!1788656 () Bool)

(declare-fun e!1144809 () Bool)

(declare-fun tp!505713 () Bool)

(assert (=> b!1788656 (= e!1144809 (and tp_is_empty!7973 tp!505713))))

(assert (=> b!1787753 (= tp!505596 e!1144809)))

(assert (= (and b!1787753 ((_ is Cons!19716) (t!167325 suffix!1421))) b!1788656))

(declare-fun b!1788660 () Bool)

(declare-fun e!1144810 () Bool)

(declare-fun tp!505718 () Bool)

(declare-fun tp!505717 () Bool)

(assert (=> b!1788660 (= e!1144810 (and tp!505718 tp!505717))))

(declare-fun b!1788659 () Bool)

(declare-fun tp!505714 () Bool)

(assert (=> b!1788659 (= e!1144810 tp!505714)))

(assert (=> b!1787747 (= tp!505605 e!1144810)))

(declare-fun b!1788658 () Bool)

(declare-fun tp!505716 () Bool)

(declare-fun tp!505715 () Bool)

(assert (=> b!1788658 (= e!1144810 (and tp!505716 tp!505715))))

(declare-fun b!1788657 () Bool)

(assert (=> b!1788657 (= e!1144810 tp_is_empty!7973)))

(assert (= (and b!1787747 ((_ is ElementMatch!4865) (regex!3537 rule!422))) b!1788657))

(assert (= (and b!1787747 ((_ is Concat!8493) (regex!3537 rule!422))) b!1788658))

(assert (= (and b!1787747 ((_ is Star!4865) (regex!3537 rule!422))) b!1788659))

(assert (= (and b!1787747 ((_ is Union!4865) (regex!3537 rule!422))) b!1788660))

(declare-fun b_lambda!58751 () Bool)

(assert (= b_lambda!58699 (or (and b!1787755 b_free!49729 (= (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787756 b_free!49733 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787740 b_free!49737 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1788655 b_free!49745 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) b_lambda!58751)))

(declare-fun b_lambda!58753 () Bool)

(assert (= b_lambda!58703 (or (and b!1787755 b_free!49729 (= (toChars!4923 (transformation!3537 (rule!5629 token!523))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787756 b_free!49733 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787740 b_free!49737 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1788655 b_free!49745 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) b_lambda!58753)))

(declare-fun b_lambda!58755 () Bool)

(assert (= b_lambda!58701 (or (and b!1787755 b_free!49727 (= (toValue!5064 (transformation!3537 (rule!5629 token!523))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787756 b_free!49731 (= (toValue!5064 (transformation!3537 (h!25118 rules!3447))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1787740 b_free!49735 (= (toValue!5064 (transformation!3537 rule!422)) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) (and b!1788655 b_free!49743 (= (toValue!5064 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toValue!5064 (transformation!3537 (rule!5629 (_1!11051 lt!696752)))))) b_lambda!58755)))

(declare-fun b_lambda!58757 () Bool)

(assert (= b_lambda!58721 (or (and b!1787755 b_free!49729) (and b!1787756 b_free!49733 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) (and b!1787740 b_free!49737 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) (and b!1788655 b_free!49745 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) b_lambda!58757)))

(declare-fun b_lambda!58759 () Bool)

(assert (= b_lambda!58717 (or (and b!1787755 b_free!49729) (and b!1787756 b_free!49733 (= (toChars!4923 (transformation!3537 (h!25118 rules!3447))) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) (and b!1787740 b_free!49737 (= (toChars!4923 (transformation!3537 rule!422)) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) (and b!1788655 b_free!49745 (= (toChars!4923 (transformation!3537 (h!25118 (t!167326 rules!3447)))) (toChars!4923 (transformation!3537 (rule!5629 token!523))))) b_lambda!58759)))

(check-sat b_and!137865 (not b!1788654) (not d!545741) (not b!1787964) (not b!1788258) (not b!1788110) (not b!1788632) (not b!1788395) (not b!1788032) (not b!1788642) (not b!1788019) (not b!1788036) (not b!1788029) (not b_next!50431) (not d!545749) (not b!1788112) (not b!1787992) (not b!1788582) (not b!1788396) (not b!1788600) (not d!545673) (not d!545481) (not b!1788016) (not b!1788555) (not d!545515) (not d!545699) (not b!1788219) b_and!137879 (not d!545771) (not b!1788660) (not b!1788234) (not d!545513) (not b!1788038) (not b!1787978) (not b!1788252) (not d!545591) (not b!1788553) (not d!545631) (not b!1788205) (not b!1788589) (not b!1788206) (not d!545601) (not d!545585) (not d!545691) (not d!545617) (not b!1788235) (not bm!111387) (not tb!108991) (not b_lambda!58755) (not b!1788027) (not b!1788547) (not d!545775) (not b_lambda!58725) (not b!1788266) (not d!545663) (not d!545501) (not b_lambda!58727) (not d!545767) (not b!1788607) (not b!1787979) (not d!545611) (not d!545455) (not b!1788588) b_and!137875 (not b!1788644) (not d!545621) (not b!1788049) (not b!1788255) (not d!545519) (not b!1788477) (not b!1788137) (not b!1788287) (not d!545563) (not b!1788630) (not d!545779) (not b!1788594) b_and!137883 (not b!1788204) (not d!545599) (not b!1788267) (not b!1787961) (not d!545671) (not b!1788262) (not b!1788138) (not b!1788015) (not b!1788003) (not d!545561) (not d!545489) (not d!545547) (not b!1788601) (not b!1787991) (not b!1788254) (not b!1788618) (not d!545765) (not d!545627) (not d!545517) (not b!1788617) (not b!1788228) (not b!1788263) (not bm!111395) (not d!545743) (not d!545723) (not b!1788116) (not bm!111399) (not b!1787920) (not b_lambda!58723) (not d!545475) (not b_next!50437) (not b!1788659) (not b_lambda!58735) (not d!545593) (not b!1788131) (not d!545777) (not d!545569) (not d!545705) (not b!1787980) (not b!1787792) (not b!1788286) (not d!545557) (not d!545523) (not b!1788441) (not b!1788433) (not d!545595) b_and!137877 (not d!545737) (not b!1788139) (not b_lambda!58737) (not b!1787922) (not d!545769) (not b!1788590) (not b!1788422) (not b!1788198) (not b!1788602) (not b!1788616) (not d!545635) (not d!545643) (not b_lambda!58749) (not b!1788635) (not d!545497) (not b_next!50435) (not b!1788324) (not b!1788551) (not b!1788325) (not b!1788259) (not b!1788242) (not b!1788268) (not b!1788643) (not d!545657) (not b!1787925) (not b!1787924) (not b!1788479) (not b!1787914) (not d!545451) (not bm!111391) (not d!545477) (not b!1788394) (not b!1788562) (not d!545731) (not b!1788256) (not b!1788236) (not b!1788434) (not b!1788586) (not b!1788265) (not b!1788269) (not b_lambda!58753) (not b!1787789) (not b!1788488) (not b!1788584) (not b!1788217) (not b!1788239) (not b!1788249) (not b!1788264) (not d!545649) (not d!545447) (not b_next!50441) (not b!1788260) (not d!545647) (not b!1788142) (not b!1788026) (not b!1787921) (not b!1788014) (not bm!111400) (not bm!111405) (not b!1788141) (not b!1788587) (not b!1788238) (not b_next!50449) (not b!1788556) (not b!1787857) (not b_next!50433) (not b_lambda!58751) (not b!1788109) (not b!1788218) (not b!1787930) (not d!545757) (not b!1788443) (not b!1788658) (not b!1788114) (not d!545521) (not b!1788326) (not b!1788548) (not d!545529) (not b!1788002) (not b!1788633) (not b!1788030) (not b!1788442) (not b!1788037) (not bm!111394) (not b!1788209) (not b!1788656) (not b!1788583) (not b!1787960) (not b_next!50447) (not b_lambda!58757) (not b_lambda!58729) (not b!1788111) (not b!1788581) (not b!1788640) (not d!545505) (not b_next!50439) (not d!545773) (not b!1788631) (not b!1788423) (not b!1788653) (not d!545781) (not d!545507) (not b!1788025) (not tb!108961) (not b!1787875) (not d!545629) (not d!545553) (not d!545527) (not b!1788604) (not b!1788225) (not b!1788542) (not bm!111398) (not b!1788115) (not b!1788208) (not b!1788033) (not b_lambda!58759) (not d!545759) (not b!1788605) b_and!137863 (not b!1788113) (not b!1788634) b_and!137861 tp_is_empty!7973 (not tb!108973) b_and!137881)
(check-sat b_and!137865 (not b_next!50431) b_and!137879 b_and!137875 b_and!137883 (not b_next!50437) b_and!137877 (not b_next!50435) (not b_next!50441) (not b_next!50447) (not b_next!50439) (not b_next!50449) (not b_next!50433) b_and!137881 b_and!137863 b_and!137861)
