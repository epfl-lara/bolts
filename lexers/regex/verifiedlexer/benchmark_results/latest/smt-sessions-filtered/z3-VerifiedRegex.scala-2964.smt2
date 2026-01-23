; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176094 () Bool)

(assert start!176094)

(declare-fun b!1773360 () Bool)

(declare-fun b_free!49071 () Bool)

(declare-fun b_next!49775 () Bool)

(assert (=> b!1773360 (= b_free!49071 (not b_next!49775))))

(declare-fun tp!502595 () Bool)

(declare-fun b_and!135043 () Bool)

(assert (=> b!1773360 (= tp!502595 b_and!135043)))

(declare-fun b_free!49073 () Bool)

(declare-fun b_next!49777 () Bool)

(assert (=> b!1773360 (= b_free!49073 (not b_next!49777))))

(declare-fun tp!502590 () Bool)

(declare-fun b_and!135045 () Bool)

(assert (=> b!1773360 (= tp!502590 b_and!135045)))

(declare-fun b!1773358 () Bool)

(declare-fun b_free!49075 () Bool)

(declare-fun b_next!49779 () Bool)

(assert (=> b!1773358 (= b_free!49075 (not b_next!49779))))

(declare-fun tp!502588 () Bool)

(declare-fun b_and!135047 () Bool)

(assert (=> b!1773358 (= tp!502588 b_and!135047)))

(declare-fun b_free!49077 () Bool)

(declare-fun b_next!49781 () Bool)

(assert (=> b!1773358 (= b_free!49077 (not b_next!49781))))

(declare-fun tp!502587 () Bool)

(declare-fun b_and!135049 () Bool)

(assert (=> b!1773358 (= tp!502587 b_and!135049)))

(declare-fun b!1773362 () Bool)

(declare-fun b_free!49079 () Bool)

(declare-fun b_next!49783 () Bool)

(assert (=> b!1773362 (= b_free!49079 (not b_next!49783))))

(declare-fun tp!502591 () Bool)

(declare-fun b_and!135051 () Bool)

(assert (=> b!1773362 (= tp!502591 b_and!135051)))

(declare-fun b_free!49081 () Bool)

(declare-fun b_next!49785 () Bool)

(assert (=> b!1773362 (= b_free!49081 (not b_next!49785))))

(declare-fun tp!502597 () Bool)

(declare-fun b_and!135053 () Bool)

(assert (=> b!1773362 (= tp!502597 b_and!135053)))

(declare-fun b!1773396 () Bool)

(declare-fun e!1134707 () Bool)

(assert (=> b!1773396 (= e!1134707 true)))

(declare-fun b!1773395 () Bool)

(declare-fun e!1134706 () Bool)

(assert (=> b!1773395 (= e!1134706 e!1134707)))

(declare-fun b!1773394 () Bool)

(declare-fun e!1134705 () Bool)

(assert (=> b!1773394 (= e!1134705 e!1134706)))

(declare-fun b!1773356 () Bool)

(assert (=> b!1773356 e!1134705))

(assert (= b!1773395 b!1773396))

(assert (= b!1773394 b!1773395))

(assert (= b!1773356 b!1773394))

(declare-datatypes ((List!19583 0))(
  ( (Nil!19513) (Cons!19513 (h!24914 (_ BitVec 16)) (t!165594 List!19583)) )
))
(declare-datatypes ((TokenValue!3579 0))(
  ( (FloatLiteralValue!7158 (text!25498 List!19583)) (TokenValueExt!3578 (__x!12460 Int)) (Broken!17895 (value!109083 List!19583)) (Object!3648) (End!3579) (Def!3579) (Underscore!3579) (Match!3579) (Else!3579) (Error!3579) (Case!3579) (If!3579) (Extends!3579) (Abstract!3579) (Class!3579) (Val!3579) (DelimiterValue!7158 (del!3639 List!19583)) (KeywordValue!3585 (value!109084 List!19583)) (CommentValue!7158 (value!109085 List!19583)) (WhitespaceValue!7158 (value!109086 List!19583)) (IndentationValue!3579 (value!109087 List!19583)) (String!22226) (Int32!3579) (Broken!17896 (value!109088 List!19583)) (Boolean!3580) (Unit!33723) (OperatorValue!3582 (op!3639 List!19583)) (IdentifierValue!7158 (value!109089 List!19583)) (IdentifierValue!7159 (value!109090 List!19583)) (WhitespaceValue!7159 (value!109091 List!19583)) (True!7158) (False!7158) (Broken!17897 (value!109092 List!19583)) (Broken!17898 (value!109093 List!19583)) (True!7159) (RightBrace!3579) (RightBracket!3579) (Colon!3579) (Null!3579) (Comma!3579) (LeftBracket!3579) (False!7159) (LeftBrace!3579) (ImaginaryLiteralValue!3579 (text!25499 List!19583)) (StringLiteralValue!10737 (value!109094 List!19583)) (EOFValue!3579 (value!109095 List!19583)) (IdentValue!3579 (value!109096 List!19583)) (DelimiterValue!7159 (value!109097 List!19583)) (DedentValue!3579 (value!109098 List!19583)) (NewLineValue!3579 (value!109099 List!19583)) (IntegerValue!10737 (value!109100 (_ BitVec 32)) (text!25500 List!19583)) (IntegerValue!10738 (value!109101 Int) (text!25501 List!19583)) (Times!3579) (Or!3579) (Equal!3579) (Minus!3579) (Broken!17899 (value!109102 List!19583)) (And!3579) (Div!3579) (LessEqual!3579) (Mod!3579) (Concat!8396) (Not!3579) (Plus!3579) (SpaceValue!3579 (value!109103 List!19583)) (IntegerValue!10739 (value!109104 Int) (text!25502 List!19583)) (StringLiteralValue!10738 (text!25503 List!19583)) (FloatLiteralValue!7159 (text!25504 List!19583)) (BytesLiteralValue!3579 (value!109105 List!19583)) (CommentValue!7159 (value!109106 List!19583)) (StringLiteralValue!10739 (value!109107 List!19583)) (ErrorTokenValue!3579 (msg!3640 List!19583)) )
))
(declare-datatypes ((C!9808 0))(
  ( (C!9809 (val!5500 Int)) )
))
(declare-datatypes ((Regex!4817 0))(
  ( (ElementMatch!4817 (c!288812 C!9808)) (Concat!8397 (regOne!10146 Regex!4817) (regTwo!10146 Regex!4817)) (EmptyExpr!4817) (Star!4817 (reg!5146 Regex!4817)) (EmptyLang!4817) (Union!4817 (regOne!10147 Regex!4817) (regTwo!10147 Regex!4817)) )
))
(declare-datatypes ((String!22227 0))(
  ( (String!22228 (value!109108 String)) )
))
(declare-datatypes ((List!19584 0))(
  ( (Nil!19514) (Cons!19514 (h!24915 C!9808) (t!165595 List!19584)) )
))
(declare-datatypes ((IArray!12987 0))(
  ( (IArray!12988 (innerList!6551 List!19584)) )
))
(declare-datatypes ((Conc!6491 0))(
  ( (Node!6491 (left!15625 Conc!6491) (right!15955 Conc!6491) (csize!13212 Int) (cheight!6702 Int)) (Leaf!9456 (xs!9367 IArray!12987) (csize!13213 Int)) (Empty!6491) )
))
(declare-datatypes ((BalanceConc!12926 0))(
  ( (BalanceConc!12927 (c!288813 Conc!6491)) )
))
(declare-datatypes ((TokenValueInjection!6818 0))(
  ( (TokenValueInjection!6819 (toValue!5016 Int) (toChars!4875 Int)) )
))
(declare-datatypes ((Rule!6778 0))(
  ( (Rule!6779 (regex!3489 Regex!4817) (tag!3873 String!22227) (isSeparator!3489 Bool) (transformation!3489 TokenValueInjection!6818)) )
))
(declare-datatypes ((Token!6544 0))(
  ( (Token!6545 (value!109109 TokenValue!3579) (rule!5541 Rule!6778) (size!15500 Int) (originalCharacters!4303 List!19584)) )
))
(declare-datatypes ((tuple2!19122 0))(
  ( (tuple2!19123 (_1!10963 Token!6544) (_2!10963 List!19584)) )
))
(declare-fun lt!686785 () tuple2!19122)

(declare-fun lambda!70484 () Int)

(declare-fun order!12477 () Int)

(declare-fun order!12475 () Int)

(declare-fun dynLambda!9488 (Int Int) Int)

(declare-fun dynLambda!9489 (Int Int) Int)

(assert (=> b!1773396 (< (dynLambda!9488 order!12475 (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) (dynLambda!9489 order!12477 lambda!70484))))

(declare-fun order!12479 () Int)

(declare-fun dynLambda!9490 (Int Int) Int)

(assert (=> b!1773396 (< (dynLambda!9490 order!12479 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) (dynLambda!9489 order!12477 lambda!70484))))

(declare-fun b!1773354 () Bool)

(declare-fun e!1134679 () Bool)

(declare-fun e!1134687 () Bool)

(assert (=> b!1773354 (= e!1134679 (not e!1134687))))

(declare-fun res!798730 () Bool)

(assert (=> b!1773354 (=> res!798730 e!1134687)))

(declare-fun rule!422 () Rule!6778)

(declare-fun lt!686779 () List!19584)

(declare-fun matchR!2290 (Regex!4817 List!19584) Bool)

(assert (=> b!1773354 (= res!798730 (not (matchR!2290 (regex!3489 rule!422) lt!686779)))))

(declare-datatypes ((LexerInterface!3118 0))(
  ( (LexerInterfaceExt!3115 (__x!12461 Int)) (Lexer!3116) )
))
(declare-fun thiss!24550 () LexerInterface!3118)

(declare-fun ruleValid!987 (LexerInterface!3118 Rule!6778) Bool)

(assert (=> b!1773354 (ruleValid!987 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33724 0))(
  ( (Unit!33725) )
))
(declare-fun lt!686752 () Unit!33724)

(declare-datatypes ((List!19585 0))(
  ( (Nil!19515) (Cons!19515 (h!24916 Rule!6778) (t!165596 List!19585)) )
))
(declare-fun rules!3447 () List!19585)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!510 (LexerInterface!3118 Rule!6778 List!19585) Unit!33724)

(assert (=> b!1773354 (= lt!686752 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!510 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1134677 () Bool)

(declare-fun token!523 () Token!6544)

(declare-fun tp!502598 () Bool)

(declare-fun b!1773355 () Bool)

(declare-fun e!1134696 () Bool)

(declare-fun inv!25358 (String!22227) Bool)

(declare-fun inv!25363 (TokenValueInjection!6818) Bool)

(assert (=> b!1773355 (= e!1134677 (and tp!502598 (inv!25358 (tag!3873 (rule!5541 token!523))) (inv!25363 (transformation!3489 (rule!5541 token!523))) e!1134696))))

(declare-fun e!1134684 () Bool)

(declare-fun e!1134683 () Bool)

(assert (=> b!1773356 (= e!1134684 e!1134683)))

(declare-fun res!798740 () Bool)

(assert (=> b!1773356 (=> res!798740 e!1134683)))

(declare-fun Forall!856 (Int) Bool)

(assert (=> b!1773356 (= res!798740 (not (Forall!856 lambda!70484)))))

(declare-fun lt!686759 () Unit!33724)

(declare-fun lemmaInv!688 (TokenValueInjection!6818) Unit!33724)

(assert (=> b!1773356 (= lt!686759 (lemmaInv!688 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))))))

(declare-fun e!1134694 () Bool)

(declare-fun b!1773357 () Bool)

(declare-fun tp!502596 () Bool)

(declare-fun e!1134685 () Bool)

(assert (=> b!1773357 (= e!1134694 (and tp!502596 (inv!25358 (tag!3873 (h!24916 rules!3447))) (inv!25363 (transformation!3489 (h!24916 rules!3447))) e!1134685))))

(declare-fun e!1134695 () Bool)

(assert (=> b!1773358 (= e!1134695 (and tp!502588 tp!502587))))

(declare-fun b!1773359 () Bool)

(declare-fun e!1134680 () Bool)

(assert (=> b!1773359 (= e!1134683 e!1134680)))

(declare-fun res!798732 () Bool)

(assert (=> b!1773359 (=> res!798732 e!1134680)))

(declare-fun lt!686782 () List!19584)

(declare-fun lt!686751 () BalanceConc!12926)

(declare-fun list!7931 (BalanceConc!12926) List!19584)

(declare-fun dynLambda!9491 (Int TokenValue!3579) BalanceConc!12926)

(declare-fun dynLambda!9492 (Int BalanceConc!12926) TokenValue!3579)

(assert (=> b!1773359 (= res!798732 (not (= (list!7931 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (dynLambda!9492 (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) lt!686751))) lt!686782)))))

(declare-fun lt!686781 () Unit!33724)

(declare-fun lemmaSemiInverse!627 (TokenValueInjection!6818 BalanceConc!12926) Unit!33724)

(assert (=> b!1773359 (= lt!686781 (lemmaSemiInverse!627 (transformation!3489 (rule!5541 (_1!10963 lt!686785))) lt!686751))))

(assert (=> b!1773360 (= e!1134685 (and tp!502595 tp!502590))))

(declare-fun b!1773361 () Bool)

(declare-fun res!798737 () Bool)

(assert (=> b!1773361 (=> (not res!798737) (not e!1134679))))

(assert (=> b!1773361 (= res!798737 (= (rule!5541 token!523) rule!422))))

(assert (=> b!1773362 (= e!1134696 (and tp!502591 tp!502597))))

(declare-fun b!1773363 () Bool)

(declare-fun e!1134681 () Bool)

(assert (=> b!1773363 (= e!1134680 e!1134681)))

(declare-fun res!798739 () Bool)

(assert (=> b!1773363 (=> res!798739 e!1134681)))

(declare-datatypes ((Option!4000 0))(
  ( (None!3999) (Some!3999 (v!25478 tuple2!19122)) )
))
(declare-fun lt!686768 () Option!4000)

(declare-fun lt!686769 () TokenValue!3579)

(declare-fun lt!686771 () Int)

(assert (=> b!1773363 (= res!798739 (not (= lt!686768 (Some!3999 (tuple2!19123 (Token!6545 lt!686769 (rule!5541 (_1!10963 lt!686785)) lt!686771 lt!686782) (_2!10963 lt!686785))))))))

(declare-fun size!15501 (BalanceConc!12926) Int)

(assert (=> b!1773363 (= lt!686771 (size!15501 lt!686751))))

(declare-fun apply!5289 (TokenValueInjection!6818 BalanceConc!12926) TokenValue!3579)

(assert (=> b!1773363 (= lt!686769 (apply!5289 (transformation!3489 (rule!5541 (_1!10963 lt!686785))) lt!686751))))

(declare-fun lt!686767 () Unit!33724)

(declare-fun lemmaCharactersSize!547 (Token!6544) Unit!33724)

(assert (=> b!1773363 (= lt!686767 (lemmaCharactersSize!547 (_1!10963 lt!686785)))))

(declare-fun lt!686762 () Unit!33724)

(declare-fun lemmaEqSameImage!400 (TokenValueInjection!6818 BalanceConc!12926 BalanceConc!12926) Unit!33724)

(declare-fun seqFromList!2458 (List!19584) BalanceConc!12926)

(assert (=> b!1773363 (= lt!686762 (lemmaEqSameImage!400 (transformation!3489 (rule!5541 (_1!10963 lt!686785))) lt!686751 (seqFromList!2458 (originalCharacters!4303 (_1!10963 lt!686785)))))))

(declare-fun b!1773364 () Bool)

(declare-fun e!1134688 () Bool)

(declare-fun e!1134676 () Bool)

(assert (=> b!1773364 (= e!1134688 e!1134676)))

(declare-fun res!798734 () Bool)

(assert (=> b!1773364 (=> res!798734 e!1134676)))

(declare-fun lt!686786 () BalanceConc!12926)

(assert (=> b!1773364 (= res!798734 (<= lt!686771 (size!15501 lt!686786)))))

(declare-fun lt!686760 () Regex!4817)

(assert (=> b!1773364 (matchR!2290 lt!686760 lt!686779)))

(declare-fun lt!686766 () Unit!33724)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!196 (LexerInterface!3118 List!19585 List!19584 Token!6544 Rule!6778 List!19584) Unit!33724)

(assert (=> b!1773364 (= lt!686766 (lemmaMaxPrefixThenMatchesRulesRegex!196 thiss!24550 rules!3447 lt!686779 token!523 rule!422 Nil!19514))))

(declare-fun b!1773365 () Bool)

(declare-fun res!798723 () Bool)

(declare-fun e!1134674 () Bool)

(assert (=> b!1773365 (=> (not res!798723) (not e!1134674))))

(declare-fun contains!3521 (List!19585 Rule!6778) Bool)

(assert (=> b!1773365 (= res!798723 (contains!3521 rules!3447 rule!422))))

(declare-fun b!1773366 () Bool)

(declare-fun res!798721 () Bool)

(assert (=> b!1773366 (=> res!798721 e!1134680)))

(assert (=> b!1773366 (= res!798721 (not (= lt!686751 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (value!109109 (_1!10963 lt!686785))))))))

(declare-fun e!1134671 () Bool)

(declare-fun b!1773367 () Bool)

(declare-fun tp!502592 () Bool)

(declare-fun inv!21 (TokenValue!3579) Bool)

(assert (=> b!1773367 (= e!1134671 (and (inv!21 (value!109109 token!523)) e!1134677 tp!502592))))

(declare-fun b!1773368 () Bool)

(declare-fun e!1134691 () Bool)

(assert (=> b!1773368 (= e!1134687 e!1134691)))

(declare-fun res!798726 () Bool)

(assert (=> b!1773368 (=> res!798726 e!1134691)))

(declare-fun lt!686773 () List!19584)

(declare-fun prefixMatch!700 (Regex!4817 List!19584) Bool)

(assert (=> b!1773368 (= res!798726 (prefixMatch!700 lt!686760 lt!686773))))

(declare-fun suffix!1421 () List!19584)

(declare-fun ++!5313 (List!19584 List!19584) List!19584)

(declare-fun head!4124 (List!19584) C!9808)

(assert (=> b!1773368 (= lt!686773 (++!5313 lt!686779 (Cons!19514 (head!4124 suffix!1421) Nil!19514)))))

(declare-fun rulesRegex!845 (LexerInterface!3118 List!19585) Regex!4817)

(assert (=> b!1773368 (= lt!686760 (rulesRegex!845 thiss!24550 rules!3447))))

(declare-fun b!1773369 () Bool)

(declare-fun e!1134673 () Bool)

(assert (=> b!1773369 (= e!1134673 e!1134679)))

(declare-fun res!798731 () Bool)

(assert (=> b!1773369 (=> (not res!798731) (not e!1134679))))

(declare-fun lt!686784 () tuple2!19122)

(assert (=> b!1773369 (= res!798731 (= (_1!10963 lt!686784) token!523))))

(declare-fun lt!686777 () Option!4000)

(declare-fun get!5962 (Option!4000) tuple2!19122)

(assert (=> b!1773369 (= lt!686784 (get!5962 lt!686777))))

(declare-fun b!1773370 () Bool)

(declare-fun e!1134690 () Bool)

(declare-fun e!1134675 () Bool)

(assert (=> b!1773370 (= e!1134690 e!1134675)))

(declare-fun res!798738 () Bool)

(assert (=> b!1773370 (=> (not res!798738) (not e!1134675))))

(declare-fun lt!686783 () Rule!6778)

(declare-fun charsOf!2138 (Token!6544) BalanceConc!12926)

(assert (=> b!1773370 (= res!798738 (matchR!2290 (regex!3489 lt!686783) (list!7931 (charsOf!2138 (_1!10963 lt!686785)))))))

(declare-datatypes ((Option!4001 0))(
  ( (None!4000) (Some!4000 (v!25479 Rule!6778)) )
))
(declare-fun lt!686780 () Option!4001)

(declare-fun get!5963 (Option!4001) Rule!6778)

(assert (=> b!1773370 (= lt!686783 (get!5963 lt!686780))))

(declare-fun e!1134672 () Bool)

(declare-fun tp!502593 () Bool)

(declare-fun b!1773371 () Bool)

(assert (=> b!1773371 (= e!1134672 (and tp!502593 (inv!25358 (tag!3873 rule!422)) (inv!25363 (transformation!3489 rule!422)) e!1134695))))

(declare-fun b!1773372 () Bool)

(declare-fun e!1134698 () Bool)

(declare-fun tp!502594 () Bool)

(assert (=> b!1773372 (= e!1134698 (and e!1134694 tp!502594))))

(declare-fun b!1773373 () Bool)

(declare-fun res!798729 () Bool)

(assert (=> b!1773373 (=> res!798729 e!1134687)))

(declare-fun isEmpty!12326 (List!19584) Bool)

(assert (=> b!1773373 (= res!798729 (isEmpty!12326 suffix!1421))))

(declare-fun b!1773374 () Bool)

(declare-fun res!798724 () Bool)

(assert (=> b!1773374 (=> (not res!798724) (not e!1134674))))

(declare-fun rulesInvariant!2787 (LexerInterface!3118 List!19585) Bool)

(assert (=> b!1773374 (= res!798724 (rulesInvariant!2787 thiss!24550 rules!3447))))

(declare-fun b!1773375 () Bool)

(declare-fun res!798742 () Bool)

(assert (=> b!1773375 (=> res!798742 e!1134684)))

(assert (=> b!1773375 (= res!798742 (not (matchR!2290 (regex!3489 (rule!5541 (_1!10963 lt!686785))) lt!686782)))))

(declare-fun b!1773376 () Bool)

(assert (=> b!1773376 (= e!1134691 e!1134684)))

(declare-fun res!798725 () Bool)

(assert (=> b!1773376 (=> res!798725 e!1134684)))

(declare-fun lt!686775 () List!19584)

(declare-fun isPrefix!1729 (List!19584 List!19584) Bool)

(assert (=> b!1773376 (= res!798725 (not (isPrefix!1729 lt!686782 lt!686775)))))

(assert (=> b!1773376 (isPrefix!1729 lt!686782 (++!5313 lt!686782 (_2!10963 lt!686785)))))

(declare-fun lt!686758 () Unit!33724)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1238 (List!19584 List!19584) Unit!33724)

(assert (=> b!1773376 (= lt!686758 (lemmaConcatTwoListThenFirstIsPrefix!1238 lt!686782 (_2!10963 lt!686785)))))

(assert (=> b!1773376 (= lt!686782 (list!7931 lt!686751))))

(assert (=> b!1773376 (= lt!686751 (charsOf!2138 (_1!10963 lt!686785)))))

(assert (=> b!1773376 e!1134690))

(declare-fun res!798728 () Bool)

(assert (=> b!1773376 (=> (not res!798728) (not e!1134690))))

(declare-fun isDefined!3343 (Option!4001) Bool)

(assert (=> b!1773376 (= res!798728 (isDefined!3343 lt!686780))))

(declare-fun getRuleFromTag!537 (LexerInterface!3118 List!19585 String!22227) Option!4001)

(assert (=> b!1773376 (= lt!686780 (getRuleFromTag!537 thiss!24550 rules!3447 (tag!3873 (rule!5541 (_1!10963 lt!686785)))))))

(declare-fun lt!686757 () Unit!33724)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!537 (LexerInterface!3118 List!19585 List!19584 Token!6544) Unit!33724)

(assert (=> b!1773376 (= lt!686757 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!537 thiss!24550 rules!3447 lt!686775 (_1!10963 lt!686785)))))

(assert (=> b!1773376 (= lt!686785 (get!5962 lt!686768))))

(declare-fun lt!686750 () Unit!33724)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!640 (LexerInterface!3118 List!19585 List!19584 List!19584) Unit!33724)

(assert (=> b!1773376 (= lt!686750 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!640 thiss!24550 rules!3447 lt!686779 suffix!1421))))

(declare-fun maxPrefix!1672 (LexerInterface!3118 List!19585 List!19584) Option!4000)

(assert (=> b!1773376 (= lt!686768 (maxPrefix!1672 thiss!24550 rules!3447 lt!686775))))

(assert (=> b!1773376 (isPrefix!1729 lt!686779 lt!686775)))

(declare-fun lt!686754 () Unit!33724)

(assert (=> b!1773376 (= lt!686754 (lemmaConcatTwoListThenFirstIsPrefix!1238 lt!686779 suffix!1421))))

(assert (=> b!1773376 (= lt!686775 (++!5313 lt!686779 suffix!1421))))

(declare-fun b!1773377 () Bool)

(assert (=> b!1773377 (= e!1134681 e!1134688)))

(declare-fun res!798722 () Bool)

(assert (=> b!1773377 (=> res!798722 e!1134688)))

(declare-fun lt!686765 () List!19584)

(declare-fun lt!686763 () Option!4000)

(assert (=> b!1773377 (= res!798722 (or (not (= lt!686765 (_2!10963 lt!686785))) (not (= lt!686763 (Some!3999 (tuple2!19123 (_1!10963 lt!686785) lt!686765))))))))

(assert (=> b!1773377 (= (_2!10963 lt!686785) lt!686765)))

(declare-fun lt!686756 () Unit!33724)

(declare-fun lemmaSamePrefixThenSameSuffix!840 (List!19584 List!19584 List!19584 List!19584 List!19584) Unit!33724)

(assert (=> b!1773377 (= lt!686756 (lemmaSamePrefixThenSameSuffix!840 lt!686782 (_2!10963 lt!686785) lt!686782 lt!686765 lt!686775))))

(declare-fun getSuffix!896 (List!19584 List!19584) List!19584)

(assert (=> b!1773377 (= lt!686765 (getSuffix!896 lt!686775 lt!686782))))

(declare-fun lt!686755 () Int)

(declare-fun lt!686774 () TokenValue!3579)

(assert (=> b!1773377 (= lt!686763 (Some!3999 (tuple2!19123 (Token!6545 lt!686774 (rule!5541 (_1!10963 lt!686785)) lt!686755 lt!686782) (_2!10963 lt!686785))))))

(declare-fun maxPrefixOneRule!1041 (LexerInterface!3118 Rule!6778 List!19584) Option!4000)

(assert (=> b!1773377 (= lt!686763 (maxPrefixOneRule!1041 thiss!24550 (rule!5541 (_1!10963 lt!686785)) lt!686775))))

(declare-fun size!15502 (List!19584) Int)

(assert (=> b!1773377 (= lt!686755 (size!15502 lt!686782))))

(assert (=> b!1773377 (= lt!686774 (apply!5289 (transformation!3489 (rule!5541 (_1!10963 lt!686785))) (seqFromList!2458 lt!686782)))))

(declare-fun lt!686776 () Unit!33724)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!419 (LexerInterface!3118 List!19585 List!19584 List!19584 List!19584 Rule!6778) Unit!33724)

(assert (=> b!1773377 (= lt!686776 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!419 thiss!24550 rules!3447 lt!686782 lt!686775 (_2!10963 lt!686785) (rule!5541 (_1!10963 lt!686785))))))

(declare-fun b!1773378 () Bool)

(declare-fun e!1134697 () Bool)

(declare-fun e!1134678 () Bool)

(assert (=> b!1773378 (= e!1134697 e!1134678)))

(declare-fun res!798727 () Bool)

(assert (=> b!1773378 (=> res!798727 e!1134678)))

(assert (=> b!1773378 (= res!798727 (not (isPrefix!1729 lt!686773 lt!686775)))))

(declare-fun lt!686770 () List!19584)

(assert (=> b!1773378 (isPrefix!1729 (++!5313 lt!686779 (Cons!19514 (head!4124 lt!686770) Nil!19514)) lt!686775)))

(declare-fun lt!686778 () Unit!33724)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!265 (List!19584 List!19584) Unit!33724)

(assert (=> b!1773378 (= lt!686778 (lemmaAddHeadSuffixToPrefixStillPrefix!265 lt!686779 lt!686775))))

(declare-fun b!1773379 () Bool)

(declare-fun e!1134693 () Bool)

(declare-fun tp_is_empty!7877 () Bool)

(declare-fun tp!502589 () Bool)

(assert (=> b!1773379 (= e!1134693 (and tp_is_empty!7877 tp!502589))))

(declare-fun b!1773380 () Bool)

(assert (=> b!1773380 (= e!1134674 e!1134673)))

(declare-fun res!798741 () Bool)

(assert (=> b!1773380 (=> (not res!798741) (not e!1134673))))

(declare-fun isDefined!3344 (Option!4000) Bool)

(assert (=> b!1773380 (= res!798741 (isDefined!3344 lt!686777))))

(assert (=> b!1773380 (= lt!686777 (maxPrefix!1672 thiss!24550 rules!3447 lt!686779))))

(assert (=> b!1773380 (= lt!686779 (list!7931 lt!686786))))

(assert (=> b!1773380 (= lt!686786 (charsOf!2138 token!523))))

(declare-fun b!1773381 () Bool)

(assert (=> b!1773381 (= e!1134675 (= (rule!5541 (_1!10963 lt!686785)) lt!686783))))

(declare-fun b!1773382 () Bool)

(assert (=> b!1773382 (= e!1134676 e!1134697)))

(declare-fun res!798736 () Bool)

(assert (=> b!1773382 (=> res!798736 e!1134697)))

(assert (=> b!1773382 (= res!798736 (not (= lt!686770 suffix!1421)))))

(assert (=> b!1773382 (= suffix!1421 lt!686770)))

(declare-fun lt!686772 () Unit!33724)

(assert (=> b!1773382 (= lt!686772 (lemmaSamePrefixThenSameSuffix!840 lt!686779 suffix!1421 lt!686779 lt!686770 lt!686775))))

(assert (=> b!1773382 (= lt!686770 (getSuffix!896 lt!686775 lt!686779))))

(assert (=> b!1773382 (matchR!2290 lt!686760 lt!686782)))

(declare-fun lt!686761 () Unit!33724)

(assert (=> b!1773382 (= lt!686761 (lemmaMaxPrefixThenMatchesRulesRegex!196 thiss!24550 rules!3447 lt!686775 (_1!10963 lt!686785) (rule!5541 (_1!10963 lt!686785)) (_2!10963 lt!686785)))))

(declare-fun b!1773383 () Bool)

(declare-fun res!798733 () Bool)

(assert (=> b!1773383 (=> (not res!798733) (not e!1134674))))

(declare-fun isEmpty!12327 (List!19585) Bool)

(assert (=> b!1773383 (= res!798733 (not (isEmpty!12327 rules!3447)))))

(declare-fun res!798720 () Bool)

(assert (=> start!176094 (=> (not res!798720) (not e!1134674))))

(get-info :version)

(assert (=> start!176094 (= res!798720 ((_ is Lexer!3116) thiss!24550))))

(assert (=> start!176094 e!1134674))

(assert (=> start!176094 e!1134693))

(assert (=> start!176094 e!1134672))

(assert (=> start!176094 true))

(declare-fun inv!25364 (Token!6544) Bool)

(assert (=> start!176094 (and (inv!25364 token!523) e!1134671)))

(assert (=> start!176094 e!1134698))

(declare-fun b!1773384 () Bool)

(declare-fun res!798735 () Bool)

(assert (=> b!1773384 (=> (not res!798735) (not e!1134679))))

(assert (=> b!1773384 (= res!798735 (isEmpty!12326 (_2!10963 lt!686784)))))

(declare-fun b!1773385 () Bool)

(assert (=> b!1773385 (= e!1134678 true)))

(assert (=> b!1773385 false))

(declare-fun lt!686753 () Unit!33724)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!128 (Regex!4817 List!19584 List!19584) Unit!33724)

(assert (=> b!1773385 (= lt!686753 (lemmaNotPrefixMatchThenCannotMatchLonger!128 lt!686760 lt!686773 lt!686782))))

(assert (=> b!1773385 (isPrefix!1729 lt!686773 lt!686782)))

(declare-fun lt!686764 () Unit!33724)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!137 (List!19584 List!19584 List!19584) Unit!33724)

(assert (=> b!1773385 (= lt!686764 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!137 lt!686782 lt!686773 lt!686775))))

(assert (= (and start!176094 res!798720) b!1773383))

(assert (= (and b!1773383 res!798733) b!1773374))

(assert (= (and b!1773374 res!798724) b!1773365))

(assert (= (and b!1773365 res!798723) b!1773380))

(assert (= (and b!1773380 res!798741) b!1773369))

(assert (= (and b!1773369 res!798731) b!1773384))

(assert (= (and b!1773384 res!798735) b!1773361))

(assert (= (and b!1773361 res!798737) b!1773354))

(assert (= (and b!1773354 (not res!798730)) b!1773373))

(assert (= (and b!1773373 (not res!798729)) b!1773368))

(assert (= (and b!1773368 (not res!798726)) b!1773376))

(assert (= (and b!1773376 res!798728) b!1773370))

(assert (= (and b!1773370 res!798738) b!1773381))

(assert (= (and b!1773376 (not res!798725)) b!1773375))

(assert (= (and b!1773375 (not res!798742)) b!1773356))

(assert (= (and b!1773356 (not res!798740)) b!1773359))

(assert (= (and b!1773359 (not res!798732)) b!1773366))

(assert (= (and b!1773366 (not res!798721)) b!1773363))

(assert (= (and b!1773363 (not res!798739)) b!1773377))

(assert (= (and b!1773377 (not res!798722)) b!1773364))

(assert (= (and b!1773364 (not res!798734)) b!1773382))

(assert (= (and b!1773382 (not res!798736)) b!1773378))

(assert (= (and b!1773378 (not res!798727)) b!1773385))

(assert (= (and start!176094 ((_ is Cons!19514) suffix!1421)) b!1773379))

(assert (= b!1773371 b!1773358))

(assert (= start!176094 b!1773371))

(assert (= b!1773355 b!1773362))

(assert (= b!1773367 b!1773355))

(assert (= start!176094 b!1773367))

(assert (= b!1773357 b!1773360))

(assert (= b!1773372 b!1773357))

(assert (= (and start!176094 ((_ is Cons!19515) rules!3447)) b!1773372))

(declare-fun b_lambda!57819 () Bool)

(assert (=> (not b_lambda!57819) (not b!1773359)))

(declare-fun tb!107403 () Bool)

(declare-fun t!165577 () Bool)

(assert (=> (and b!1773360 (= (toChars!4875 (transformation!3489 (h!24916 rules!3447))) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165577) tb!107403))

(declare-fun e!1134710 () Bool)

(declare-fun tp!502601 () Bool)

(declare-fun b!1773401 () Bool)

(declare-fun inv!25365 (Conc!6491) Bool)

(assert (=> b!1773401 (= e!1134710 (and (inv!25365 (c!288813 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (dynLambda!9492 (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) lt!686751)))) tp!502601))))

(declare-fun result!129190 () Bool)

(declare-fun inv!25366 (BalanceConc!12926) Bool)

(assert (=> tb!107403 (= result!129190 (and (inv!25366 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (dynLambda!9492 (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) lt!686751))) e!1134710))))

(assert (= tb!107403 b!1773401))

(declare-fun m!2192927 () Bool)

(assert (=> b!1773401 m!2192927))

(declare-fun m!2192929 () Bool)

(assert (=> tb!107403 m!2192929))

(assert (=> b!1773359 t!165577))

(declare-fun b_and!135055 () Bool)

(assert (= b_and!135045 (and (=> t!165577 result!129190) b_and!135055)))

(declare-fun t!165579 () Bool)

(declare-fun tb!107405 () Bool)

(assert (=> (and b!1773358 (= (toChars!4875 (transformation!3489 rule!422)) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165579) tb!107405))

(declare-fun result!129194 () Bool)

(assert (= result!129194 result!129190))

(assert (=> b!1773359 t!165579))

(declare-fun b_and!135057 () Bool)

(assert (= b_and!135049 (and (=> t!165579 result!129194) b_and!135057)))

(declare-fun tb!107407 () Bool)

(declare-fun t!165581 () Bool)

(assert (=> (and b!1773362 (= (toChars!4875 (transformation!3489 (rule!5541 token!523))) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165581) tb!107407))

(declare-fun result!129196 () Bool)

(assert (= result!129196 result!129190))

(assert (=> b!1773359 t!165581))

(declare-fun b_and!135059 () Bool)

(assert (= b_and!135053 (and (=> t!165581 result!129196) b_and!135059)))

(declare-fun b_lambda!57821 () Bool)

(assert (=> (not b_lambda!57821) (not b!1773359)))

(declare-fun tb!107409 () Bool)

(declare-fun t!165583 () Bool)

(assert (=> (and b!1773360 (= (toValue!5016 (transformation!3489 (h!24916 rules!3447))) (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165583) tb!107409))

(declare-fun result!129198 () Bool)

(assert (=> tb!107409 (= result!129198 (inv!21 (dynLambda!9492 (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) lt!686751)))))

(declare-fun m!2192931 () Bool)

(assert (=> tb!107409 m!2192931))

(assert (=> b!1773359 t!165583))

(declare-fun b_and!135061 () Bool)

(assert (= b_and!135043 (and (=> t!165583 result!129198) b_and!135061)))

(declare-fun tb!107411 () Bool)

(declare-fun t!165585 () Bool)

(assert (=> (and b!1773358 (= (toValue!5016 (transformation!3489 rule!422)) (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165585) tb!107411))

(declare-fun result!129202 () Bool)

(assert (= result!129202 result!129198))

(assert (=> b!1773359 t!165585))

(declare-fun b_and!135063 () Bool)

(assert (= b_and!135047 (and (=> t!165585 result!129202) b_and!135063)))

(declare-fun t!165587 () Bool)

(declare-fun tb!107413 () Bool)

(assert (=> (and b!1773362 (= (toValue!5016 (transformation!3489 (rule!5541 token!523))) (toValue!5016 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165587) tb!107413))

(declare-fun result!129204 () Bool)

(assert (= result!129204 result!129198))

(assert (=> b!1773359 t!165587))

(declare-fun b_and!135065 () Bool)

(assert (= b_and!135051 (and (=> t!165587 result!129204) b_and!135065)))

(declare-fun b_lambda!57823 () Bool)

(assert (=> (not b_lambda!57823) (not b!1773366)))

(declare-fun t!165589 () Bool)

(declare-fun tb!107415 () Bool)

(assert (=> (and b!1773360 (= (toChars!4875 (transformation!3489 (h!24916 rules!3447))) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165589) tb!107415))

(declare-fun b!1773404 () Bool)

(declare-fun e!1134714 () Bool)

(declare-fun tp!502602 () Bool)

(assert (=> b!1773404 (= e!1134714 (and (inv!25365 (c!288813 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (value!109109 (_1!10963 lt!686785))))) tp!502602))))

(declare-fun result!129206 () Bool)

(assert (=> tb!107415 (= result!129206 (and (inv!25366 (dynLambda!9491 (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785)))) (value!109109 (_1!10963 lt!686785)))) e!1134714))))

(assert (= tb!107415 b!1773404))

(declare-fun m!2192933 () Bool)

(assert (=> b!1773404 m!2192933))

(declare-fun m!2192935 () Bool)

(assert (=> tb!107415 m!2192935))

(assert (=> b!1773366 t!165589))

(declare-fun b_and!135067 () Bool)

(assert (= b_and!135055 (and (=> t!165589 result!129206) b_and!135067)))

(declare-fun tb!107417 () Bool)

(declare-fun t!165591 () Bool)

(assert (=> (and b!1773358 (= (toChars!4875 (transformation!3489 rule!422)) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165591) tb!107417))

(declare-fun result!129208 () Bool)

(assert (= result!129208 result!129206))

(assert (=> b!1773366 t!165591))

(declare-fun b_and!135069 () Bool)

(assert (= b_and!135057 (and (=> t!165591 result!129208) b_and!135069)))

(declare-fun tb!107419 () Bool)

(declare-fun t!165593 () Bool)

(assert (=> (and b!1773362 (= (toChars!4875 (transformation!3489 (rule!5541 token!523))) (toChars!4875 (transformation!3489 (rule!5541 (_1!10963 lt!686785))))) t!165593) tb!107419))

(declare-fun result!129210 () Bool)

(assert (= result!129210 result!129206))

(assert (=> b!1773366 t!165593))

(declare-fun b_and!135071 () Bool)

(assert (= b_and!135059 (and (=> t!165593 result!129210) b_and!135071)))

(declare-fun m!2192937 () Bool)

(assert (=> b!1773366 m!2192937))

(declare-fun m!2192939 () Bool)

(assert (=> b!1773383 m!2192939))

(declare-fun m!2192941 () Bool)

(assert (=> b!1773367 m!2192941))

(declare-fun m!2192943 () Bool)

(assert (=> b!1773368 m!2192943))

(declare-fun m!2192945 () Bool)

(assert (=> b!1773368 m!2192945))

(declare-fun m!2192947 () Bool)

(assert (=> b!1773368 m!2192947))

(declare-fun m!2192949 () Bool)

(assert (=> b!1773368 m!2192949))

(declare-fun m!2192951 () Bool)

(assert (=> b!1773354 m!2192951))

(declare-fun m!2192953 () Bool)

(assert (=> b!1773354 m!2192953))

(declare-fun m!2192955 () Bool)

(assert (=> b!1773354 m!2192955))

(declare-fun m!2192957 () Bool)

(assert (=> b!1773364 m!2192957))

(declare-fun m!2192959 () Bool)

(assert (=> b!1773364 m!2192959))

(declare-fun m!2192961 () Bool)

(assert (=> b!1773364 m!2192961))

(declare-fun m!2192963 () Bool)

(assert (=> b!1773356 m!2192963))

(declare-fun m!2192965 () Bool)

(assert (=> b!1773356 m!2192965))

(declare-fun m!2192967 () Bool)

(assert (=> b!1773370 m!2192967))

(assert (=> b!1773370 m!2192967))

(declare-fun m!2192969 () Bool)

(assert (=> b!1773370 m!2192969))

(assert (=> b!1773370 m!2192969))

(declare-fun m!2192971 () Bool)

(assert (=> b!1773370 m!2192971))

(declare-fun m!2192973 () Bool)

(assert (=> b!1773370 m!2192973))

(declare-fun m!2192975 () Bool)

(assert (=> b!1773375 m!2192975))

(declare-fun m!2192977 () Bool)

(assert (=> b!1773377 m!2192977))

(declare-fun m!2192979 () Bool)

(assert (=> b!1773377 m!2192979))

(declare-fun m!2192981 () Bool)

(assert (=> b!1773377 m!2192981))

(declare-fun m!2192983 () Bool)

(assert (=> b!1773377 m!2192983))

(declare-fun m!2192985 () Bool)

(assert (=> b!1773377 m!2192985))

(assert (=> b!1773377 m!2192979))

(declare-fun m!2192987 () Bool)

(assert (=> b!1773377 m!2192987))

(declare-fun m!2192989 () Bool)

(assert (=> b!1773377 m!2192989))

(declare-fun m!2192991 () Bool)

(assert (=> b!1773380 m!2192991))

(declare-fun m!2192993 () Bool)

(assert (=> b!1773380 m!2192993))

(declare-fun m!2192995 () Bool)

(assert (=> b!1773380 m!2192995))

(declare-fun m!2192997 () Bool)

(assert (=> b!1773380 m!2192997))

(declare-fun m!2192999 () Bool)

(assert (=> b!1773373 m!2192999))

(declare-fun m!2193001 () Bool)

(assert (=> b!1773357 m!2193001))

(declare-fun m!2193003 () Bool)

(assert (=> b!1773357 m!2193003))

(declare-fun m!2193005 () Bool)

(assert (=> b!1773384 m!2193005))

(declare-fun m!2193007 () Bool)

(assert (=> b!1773385 m!2193007))

(declare-fun m!2193009 () Bool)

(assert (=> b!1773385 m!2193009))

(declare-fun m!2193011 () Bool)

(assert (=> b!1773385 m!2193011))

(declare-fun m!2193013 () Bool)

(assert (=> b!1773365 m!2193013))

(declare-fun m!2193015 () Bool)

(assert (=> b!1773359 m!2193015))

(assert (=> b!1773359 m!2193015))

(declare-fun m!2193017 () Bool)

(assert (=> b!1773359 m!2193017))

(assert (=> b!1773359 m!2193017))

(declare-fun m!2193019 () Bool)

(assert (=> b!1773359 m!2193019))

(declare-fun m!2193021 () Bool)

(assert (=> b!1773359 m!2193021))

(declare-fun m!2193023 () Bool)

(assert (=> b!1773374 m!2193023))

(declare-fun m!2193025 () Bool)

(assert (=> b!1773363 m!2193025))

(declare-fun m!2193027 () Bool)

(assert (=> b!1773363 m!2193027))

(declare-fun m!2193029 () Bool)

(assert (=> b!1773363 m!2193029))

(declare-fun m!2193031 () Bool)

(assert (=> b!1773363 m!2193031))

(assert (=> b!1773363 m!2193025))

(declare-fun m!2193033 () Bool)

(assert (=> b!1773363 m!2193033))

(declare-fun m!2193035 () Bool)

(assert (=> b!1773376 m!2193035))

(declare-fun m!2193037 () Bool)

(assert (=> b!1773376 m!2193037))

(declare-fun m!2193039 () Bool)

(assert (=> b!1773376 m!2193039))

(declare-fun m!2193041 () Bool)

(assert (=> b!1773376 m!2193041))

(declare-fun m!2193043 () Bool)

(assert (=> b!1773376 m!2193043))

(declare-fun m!2193045 () Bool)

(assert (=> b!1773376 m!2193045))

(declare-fun m!2193047 () Bool)

(assert (=> b!1773376 m!2193047))

(declare-fun m!2193049 () Bool)

(assert (=> b!1773376 m!2193049))

(declare-fun m!2193051 () Bool)

(assert (=> b!1773376 m!2193051))

(declare-fun m!2193053 () Bool)

(assert (=> b!1773376 m!2193053))

(declare-fun m!2193055 () Bool)

(assert (=> b!1773376 m!2193055))

(declare-fun m!2193057 () Bool)

(assert (=> b!1773376 m!2193057))

(declare-fun m!2193059 () Bool)

(assert (=> b!1773376 m!2193059))

(assert (=> b!1773376 m!2192967))

(assert (=> b!1773376 m!2193053))

(declare-fun m!2193061 () Bool)

(assert (=> b!1773376 m!2193061))

(declare-fun m!2193063 () Bool)

(assert (=> start!176094 m!2193063))

(declare-fun m!2193065 () Bool)

(assert (=> b!1773369 m!2193065))

(declare-fun m!2193067 () Bool)

(assert (=> b!1773382 m!2193067))

(declare-fun m!2193069 () Bool)

(assert (=> b!1773382 m!2193069))

(declare-fun m!2193071 () Bool)

(assert (=> b!1773382 m!2193071))

(declare-fun m!2193073 () Bool)

(assert (=> b!1773382 m!2193073))

(declare-fun m!2193075 () Bool)

(assert (=> b!1773355 m!2193075))

(declare-fun m!2193077 () Bool)

(assert (=> b!1773355 m!2193077))

(declare-fun m!2193079 () Bool)

(assert (=> b!1773378 m!2193079))

(declare-fun m!2193081 () Bool)

(assert (=> b!1773378 m!2193081))

(declare-fun m!2193083 () Bool)

(assert (=> b!1773378 m!2193083))

(assert (=> b!1773378 m!2193079))

(declare-fun m!2193085 () Bool)

(assert (=> b!1773378 m!2193085))

(declare-fun m!2193087 () Bool)

(assert (=> b!1773378 m!2193087))

(declare-fun m!2193089 () Bool)

(assert (=> b!1773371 m!2193089))

(declare-fun m!2193091 () Bool)

(assert (=> b!1773371 m!2193091))

(check-sat (not b!1773372) (not b!1773385) (not b!1773384) (not b!1773355) b_and!135063 (not b!1773404) (not b!1773356) (not b_lambda!57821) (not b!1773373) (not b!1773401) (not b!1773377) (not b!1773379) (not b!1773383) (not b!1773354) (not b!1773369) (not b_next!49781) (not b_next!49785) tp_is_empty!7877 (not b_lambda!57819) (not b!1773380) (not tb!107415) (not b!1773378) (not b!1773357) (not b_next!49777) b_and!135067 b_and!135061 (not b!1773367) (not b_next!49779) (not b!1773375) (not b_next!49783) b_and!135071 (not b!1773363) b_and!135065 (not start!176094) (not tb!107403) (not b_next!49775) (not b!1773364) (not b_lambda!57823) (not b!1773359) (not b!1773374) (not b!1773370) (not b!1773368) (not tb!107409) b_and!135069 (not b!1773371) (not b!1773376) (not b!1773382) (not b!1773365))
(check-sat b_and!135063 b_and!135061 (not b_next!49775) b_and!135069 (not b_next!49781) (not b_next!49785) (not b_next!49777) b_and!135067 (not b_next!49779) (not b_next!49783) b_and!135071 b_and!135065)
