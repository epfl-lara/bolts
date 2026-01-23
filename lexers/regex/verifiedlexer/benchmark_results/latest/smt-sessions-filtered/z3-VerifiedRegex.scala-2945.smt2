; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173310 () Bool)

(assert start!173310)

(declare-fun b!1755685 () Bool)

(declare-fun b_free!48487 () Bool)

(declare-fun b_next!49191 () Bool)

(assert (=> b!1755685 (= b_free!48487 (not b_next!49191))))

(declare-fun tp!499132 () Bool)

(declare-fun b_and!131783 () Bool)

(assert (=> b!1755685 (= tp!499132 b_and!131783)))

(declare-fun b_free!48489 () Bool)

(declare-fun b_next!49193 () Bool)

(assert (=> b!1755685 (= b_free!48489 (not b_next!49193))))

(declare-fun tp!499128 () Bool)

(declare-fun b_and!131785 () Bool)

(assert (=> b!1755685 (= tp!499128 b_and!131785)))

(declare-fun b!1755695 () Bool)

(declare-fun b_free!48491 () Bool)

(declare-fun b_next!49195 () Bool)

(assert (=> b!1755695 (= b_free!48491 (not b_next!49195))))

(declare-fun tp!499122 () Bool)

(declare-fun b_and!131787 () Bool)

(assert (=> b!1755695 (= tp!499122 b_and!131787)))

(declare-fun b_free!48493 () Bool)

(declare-fun b_next!49197 () Bool)

(assert (=> b!1755695 (= b_free!48493 (not b_next!49197))))

(declare-fun tp!499130 () Bool)

(declare-fun b_and!131789 () Bool)

(assert (=> b!1755695 (= tp!499130 b_and!131789)))

(declare-fun b!1755680 () Bool)

(declare-fun b_free!48495 () Bool)

(declare-fun b_next!49199 () Bool)

(assert (=> b!1755680 (= b_free!48495 (not b_next!49199))))

(declare-fun tp!499127 () Bool)

(declare-fun b_and!131791 () Bool)

(assert (=> b!1755680 (= tp!499127 b_and!131791)))

(declare-fun b_free!48497 () Bool)

(declare-fun b_next!49201 () Bool)

(assert (=> b!1755680 (= b_free!48497 (not b_next!49201))))

(declare-fun tp!499121 () Bool)

(declare-fun b_and!131793 () Bool)

(assert (=> b!1755680 (= tp!499121 b_and!131793)))

(declare-fun b!1755706 () Bool)

(declare-fun e!1123703 () Bool)

(assert (=> b!1755706 (= e!1123703 true)))

(declare-fun b!1755705 () Bool)

(declare-fun e!1123702 () Bool)

(assert (=> b!1755705 (= e!1123702 e!1123703)))

(declare-fun b!1755704 () Bool)

(declare-fun e!1123701 () Bool)

(assert (=> b!1755704 (= e!1123701 e!1123702)))

(declare-fun b!1755688 () Bool)

(assert (=> b!1755688 e!1123701))

(assert (= b!1755705 b!1755706))

(assert (= b!1755704 b!1755705))

(assert (= b!1755688 b!1755704))

(declare-datatypes ((List!19385 0))(
  ( (Nil!19315) (Cons!19315 (h!24716 (_ BitVec 16)) (t!163468 List!19385)) )
))
(declare-datatypes ((TokenValue!3541 0))(
  ( (FloatLiteralValue!7082 (text!25232 List!19385)) (TokenValueExt!3540 (__x!12384 Int)) (Broken!17705 (value!108000 List!19385)) (Object!3610) (End!3541) (Def!3541) (Underscore!3541) (Match!3541) (Else!3541) (Error!3541) (Case!3541) (If!3541) (Extends!3541) (Abstract!3541) (Class!3541) (Val!3541) (DelimiterValue!7082 (del!3601 List!19385)) (KeywordValue!3547 (value!108001 List!19385)) (CommentValue!7082 (value!108002 List!19385)) (WhitespaceValue!7082 (value!108003 List!19385)) (IndentationValue!3541 (value!108004 List!19385)) (String!22036) (Int32!3541) (Broken!17706 (value!108005 List!19385)) (Boolean!3542) (Unit!33478) (OperatorValue!3544 (op!3601 List!19385)) (IdentifierValue!7082 (value!108006 List!19385)) (IdentifierValue!7083 (value!108007 List!19385)) (WhitespaceValue!7083 (value!108008 List!19385)) (True!7082) (False!7082) (Broken!17707 (value!108009 List!19385)) (Broken!17708 (value!108010 List!19385)) (True!7083) (RightBrace!3541) (RightBracket!3541) (Colon!3541) (Null!3541) (Comma!3541) (LeftBracket!3541) (False!7083) (LeftBrace!3541) (ImaginaryLiteralValue!3541 (text!25233 List!19385)) (StringLiteralValue!10623 (value!108011 List!19385)) (EOFValue!3541 (value!108012 List!19385)) (IdentValue!3541 (value!108013 List!19385)) (DelimiterValue!7083 (value!108014 List!19385)) (DedentValue!3541 (value!108015 List!19385)) (NewLineValue!3541 (value!108016 List!19385)) (IntegerValue!10623 (value!108017 (_ BitVec 32)) (text!25234 List!19385)) (IntegerValue!10624 (value!108018 Int) (text!25235 List!19385)) (Times!3541) (Or!3541) (Equal!3541) (Minus!3541) (Broken!17709 (value!108019 List!19385)) (And!3541) (Div!3541) (LessEqual!3541) (Mod!3541) (Concat!8320) (Not!3541) (Plus!3541) (SpaceValue!3541 (value!108020 List!19385)) (IntegerValue!10625 (value!108021 Int) (text!25236 List!19385)) (StringLiteralValue!10624 (text!25237 List!19385)) (FloatLiteralValue!7083 (text!25238 List!19385)) (BytesLiteralValue!3541 (value!108022 List!19385)) (CommentValue!7083 (value!108023 List!19385)) (StringLiteralValue!10625 (value!108024 List!19385)) (ErrorTokenValue!3541 (msg!3602 List!19385)) )
))
(declare-datatypes ((C!9732 0))(
  ( (C!9733 (val!5462 Int)) )
))
(declare-datatypes ((List!19386 0))(
  ( (Nil!19316) (Cons!19316 (h!24717 C!9732) (t!163469 List!19386)) )
))
(declare-datatypes ((Regex!4779 0))(
  ( (ElementMatch!4779 (c!286194 C!9732)) (Concat!8321 (regOne!10070 Regex!4779) (regTwo!10070 Regex!4779)) (EmptyExpr!4779) (Star!4779 (reg!5108 Regex!4779)) (EmptyLang!4779) (Union!4779 (regOne!10071 Regex!4779) (regTwo!10071 Regex!4779)) )
))
(declare-datatypes ((String!22037 0))(
  ( (String!22038 (value!108025 String)) )
))
(declare-datatypes ((IArray!12855 0))(
  ( (IArray!12856 (innerList!6485 List!19386)) )
))
(declare-datatypes ((Conc!6425 0))(
  ( (Node!6425 (left!15464 Conc!6425) (right!15794 Conc!6425) (csize!13080 Int) (cheight!6636 Int)) (Leaf!9371 (xs!9301 IArray!12855) (csize!13081 Int)) (Empty!6425) )
))
(declare-datatypes ((BalanceConc!12794 0))(
  ( (BalanceConc!12795 (c!286195 Conc!6425)) )
))
(declare-datatypes ((TokenValueInjection!6742 0))(
  ( (TokenValueInjection!6743 (toValue!4970 Int) (toChars!4829 Int)) )
))
(declare-datatypes ((Rule!6702 0))(
  ( (Rule!6703 (regex!3451 Regex!4779) (tag!3807 String!22037) (isSeparator!3451 Bool) (transformation!3451 TokenValueInjection!6742)) )
))
(declare-datatypes ((Token!6468 0))(
  ( (Token!6469 (value!108026 TokenValue!3541) (rule!5465 Rule!6702) (size!15346 Int) (originalCharacters!4265 List!19386)) )
))
(declare-datatypes ((tuple2!18938 0))(
  ( (tuple2!18939 (_1!10871 Token!6468) (_2!10871 List!19386)) )
))
(declare-fun lt!678216 () tuple2!18938)

(declare-fun order!12193 () Int)

(declare-fun lambda!70004 () Int)

(declare-fun order!12191 () Int)

(declare-fun dynLambda!9259 (Int Int) Int)

(declare-fun dynLambda!9260 (Int Int) Int)

(assert (=> b!1755706 (< (dynLambda!9259 order!12191 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9260 order!12193 lambda!70004))))

(declare-fun order!12195 () Int)

(declare-fun dynLambda!9261 (Int Int) Int)

(assert (=> b!1755706 (< (dynLambda!9261 order!12195 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9260 order!12193 lambda!70004))))

(declare-fun b!1755667 () Bool)

(declare-fun res!789869 () Bool)

(declare-fun e!1123685 () Bool)

(assert (=> b!1755667 (=> res!789869 e!1123685)))

(declare-fun lt!678211 () List!19386)

(declare-fun matchR!2252 (Regex!4779 List!19386) Bool)

(assert (=> b!1755667 (= res!789869 (not (matchR!2252 (regex!3451 (rule!5465 (_1!10871 lt!678216))) lt!678211)))))

(declare-fun b!1755668 () Bool)

(declare-fun res!789861 () Bool)

(declare-fun e!1123686 () Bool)

(assert (=> b!1755668 (=> res!789861 e!1123686)))

(declare-fun lt!678201 () BalanceConc!12794)

(declare-fun dynLambda!9262 (Int TokenValue!3541) BalanceConc!12794)

(assert (=> b!1755668 (= res!789861 (not (= lt!678201 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))))

(declare-fun b!1755669 () Bool)

(declare-fun res!789871 () Bool)

(declare-fun e!1123692 () Bool)

(assert (=> b!1755669 (=> res!789871 e!1123692)))

(declare-fun suffix!1421 () List!19386)

(declare-datatypes ((LexerInterface!3080 0))(
  ( (LexerInterfaceExt!3077 (__x!12385 Int)) (Lexer!3078) )
))
(declare-fun thiss!24550 () LexerInterface!3080)

(declare-datatypes ((List!19387 0))(
  ( (Nil!19317) (Cons!19317 (h!24718 Rule!6702) (t!163470 List!19387)) )
))
(declare-fun rules!3447 () List!19387)

(declare-fun lt!678218 () List!19386)

(declare-fun prefixMatch!662 (Regex!4779 List!19386) Bool)

(declare-fun rulesRegex!807 (LexerInterface!3080 List!19387) Regex!4779)

(declare-fun ++!5275 (List!19386 List!19386) List!19386)

(declare-fun head!4054 (List!19386) C!9732)

(assert (=> b!1755669 (= res!789871 (prefixMatch!662 (rulesRegex!807 thiss!24550 rules!3447) (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316))))))

(declare-fun b!1755670 () Bool)

(declare-fun token!523 () Token!6468)

(declare-fun e!1123677 () Bool)

(declare-fun e!1123676 () Bool)

(declare-fun tp!499125 () Bool)

(declare-fun inv!21 (TokenValue!3541) Bool)

(assert (=> b!1755670 (= e!1123677 (and (inv!21 (value!108026 token!523)) e!1123676 tp!499125))))

(declare-fun b!1755671 () Bool)

(declare-fun e!1123694 () Bool)

(declare-fun e!1123693 () Bool)

(assert (=> b!1755671 (= e!1123694 e!1123693)))

(declare-fun res!789864 () Bool)

(assert (=> b!1755671 (=> (not res!789864) (not e!1123693))))

(declare-fun lt!678220 () Rule!6702)

(declare-fun list!7829 (BalanceConc!12794) List!19386)

(declare-fun charsOf!2100 (Token!6468) BalanceConc!12794)

(assert (=> b!1755671 (= res!789864 (matchR!2252 (regex!3451 lt!678220) (list!7829 (charsOf!2100 (_1!10871 lt!678216)))))))

(declare-datatypes ((Option!3924 0))(
  ( (None!3923) (Some!3923 (v!25374 Rule!6702)) )
))
(declare-fun lt!678217 () Option!3924)

(declare-fun get!5867 (Option!3924) Rule!6702)

(assert (=> b!1755671 (= lt!678220 (get!5867 lt!678217))))

(declare-fun b!1755672 () Bool)

(declare-fun e!1123683 () Bool)

(assert (=> b!1755672 (= e!1123686 e!1123683)))

(declare-fun res!789862 () Bool)

(assert (=> b!1755672 (=> res!789862 e!1123683)))

(declare-datatypes ((Option!3925 0))(
  ( (None!3924) (Some!3924 (v!25375 tuple2!18938)) )
))
(declare-fun lt!678214 () Option!3925)

(declare-fun apply!5251 (TokenValueInjection!6742 BalanceConc!12794) TokenValue!3541)

(declare-fun size!15347 (BalanceConc!12794) Int)

(assert (=> b!1755672 (= res!789862 (not (= lt!678214 (Some!3924 (tuple2!18939 (Token!6469 (apply!5251 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201) (rule!5465 (_1!10871 lt!678216)) (size!15347 lt!678201) lt!678211) (_2!10871 lt!678216))))))))

(declare-datatypes ((Unit!33479 0))(
  ( (Unit!33480) )
))
(declare-fun lt!678205 () Unit!33479)

(declare-fun lemmaCharactersSize!509 (Token!6468) Unit!33479)

(assert (=> b!1755672 (= lt!678205 (lemmaCharactersSize!509 (_1!10871 lt!678216)))))

(declare-fun lt!678219 () Unit!33479)

(declare-fun lemmaEqSameImage!362 (TokenValueInjection!6742 BalanceConc!12794 BalanceConc!12794) Unit!33479)

(declare-fun seqFromList!2420 (List!19386) BalanceConc!12794)

(assert (=> b!1755672 (= lt!678219 (lemmaEqSameImage!362 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201 (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216)))))))

(declare-fun b!1755673 () Bool)

(declare-fun res!789857 () Bool)

(declare-fun e!1123687 () Bool)

(assert (=> b!1755673 (=> (not res!789857) (not e!1123687))))

(declare-fun lt!678204 () tuple2!18938)

(declare-fun isEmpty!12182 (List!19386) Bool)

(assert (=> b!1755673 (= res!789857 (isEmpty!12182 (_2!10871 lt!678204)))))

(declare-fun b!1755674 () Bool)

(assert (=> b!1755674 (= e!1123687 (not e!1123692))))

(declare-fun res!789867 () Bool)

(assert (=> b!1755674 (=> res!789867 e!1123692)))

(declare-fun rule!422 () Rule!6702)

(assert (=> b!1755674 (= res!789867 (not (matchR!2252 (regex!3451 rule!422) lt!678218)))))

(declare-fun ruleValid!949 (LexerInterface!3080 Rule!6702) Bool)

(assert (=> b!1755674 (ruleValid!949 thiss!24550 rule!422)))

(declare-fun lt!678208 () Unit!33479)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!472 (LexerInterface!3080 Rule!6702 List!19387) Unit!33479)

(assert (=> b!1755674 (= lt!678208 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!472 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1755675 () Bool)

(assert (=> b!1755675 (= e!1123692 e!1123685)))

(declare-fun res!789868 () Bool)

(assert (=> b!1755675 (=> res!789868 e!1123685)))

(declare-fun lt!678203 () List!19386)

(declare-fun isPrefix!1691 (List!19386 List!19386) Bool)

(assert (=> b!1755675 (= res!789868 (not (isPrefix!1691 lt!678211 lt!678203)))))

(declare-fun lt!678209 () List!19386)

(assert (=> b!1755675 (isPrefix!1691 lt!678211 lt!678209)))

(assert (=> b!1755675 (= lt!678209 (++!5275 lt!678211 (_2!10871 lt!678216)))))

(declare-fun lt!678207 () Unit!33479)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1200 (List!19386 List!19386) Unit!33479)

(assert (=> b!1755675 (= lt!678207 (lemmaConcatTwoListThenFirstIsPrefix!1200 lt!678211 (_2!10871 lt!678216)))))

(assert (=> b!1755675 (= lt!678211 (list!7829 lt!678201))))

(assert (=> b!1755675 (= lt!678201 (charsOf!2100 (_1!10871 lt!678216)))))

(assert (=> b!1755675 e!1123694))

(declare-fun res!789863 () Bool)

(assert (=> b!1755675 (=> (not res!789863) (not e!1123694))))

(declare-fun isDefined!3267 (Option!3924) Bool)

(assert (=> b!1755675 (= res!789863 (isDefined!3267 lt!678217))))

(declare-fun getRuleFromTag!499 (LexerInterface!3080 List!19387 String!22037) Option!3924)

(assert (=> b!1755675 (= lt!678217 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun lt!678206 () Unit!33479)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!499 (LexerInterface!3080 List!19387 List!19386 Token!6468) Unit!33479)

(assert (=> b!1755675 (= lt!678206 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!499 thiss!24550 rules!3447 lt!678203 (_1!10871 lt!678216)))))

(declare-fun get!5868 (Option!3925) tuple2!18938)

(assert (=> b!1755675 (= lt!678216 (get!5868 lt!678214))))

(declare-fun lt!678202 () Unit!33479)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!602 (LexerInterface!3080 List!19387 List!19386 List!19386) Unit!33479)

(assert (=> b!1755675 (= lt!678202 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!602 thiss!24550 rules!3447 lt!678218 suffix!1421))))

(declare-fun maxPrefix!1634 (LexerInterface!3080 List!19387 List!19386) Option!3925)

(assert (=> b!1755675 (= lt!678214 (maxPrefix!1634 thiss!24550 rules!3447 lt!678203))))

(assert (=> b!1755675 (isPrefix!1691 lt!678218 lt!678203)))

(declare-fun lt!678212 () Unit!33479)

(assert (=> b!1755675 (= lt!678212 (lemmaConcatTwoListThenFirstIsPrefix!1200 lt!678218 suffix!1421))))

(assert (=> b!1755675 (= lt!678203 (++!5275 lt!678218 suffix!1421))))

(declare-fun e!1123684 () Bool)

(declare-fun b!1755676 () Bool)

(declare-fun tp!499124 () Bool)

(declare-fun e!1123674 () Bool)

(declare-fun inv!25068 (String!22037) Bool)

(declare-fun inv!25073 (TokenValueInjection!6742) Bool)

(assert (=> b!1755676 (= e!1123674 (and tp!499124 (inv!25068 (tag!3807 (h!24718 rules!3447))) (inv!25073 (transformation!3451 (h!24718 rules!3447))) e!1123684))))

(declare-fun b!1755677 () Bool)

(declare-fun res!789865 () Bool)

(declare-fun e!1123690 () Bool)

(assert (=> b!1755677 (=> (not res!789865) (not e!1123690))))

(declare-fun contains!3479 (List!19387 Rule!6702) Bool)

(assert (=> b!1755677 (= res!789865 (contains!3479 rules!3447 rule!422))))

(declare-fun b!1755678 () Bool)

(declare-fun res!789860 () Bool)

(assert (=> b!1755678 (=> (not res!789860) (not e!1123687))))

(assert (=> b!1755678 (= res!789860 (= (rule!5465 token!523) rule!422))))

(declare-fun b!1755679 () Bool)

(declare-fun e!1123680 () Bool)

(assert (=> b!1755679 (= e!1123690 e!1123680)))

(declare-fun res!789873 () Bool)

(assert (=> b!1755679 (=> (not res!789873) (not e!1123680))))

(declare-fun lt!678210 () Option!3925)

(declare-fun isDefined!3268 (Option!3925) Bool)

(assert (=> b!1755679 (= res!789873 (isDefined!3268 lt!678210))))

(assert (=> b!1755679 (= lt!678210 (maxPrefix!1634 thiss!24550 rules!3447 lt!678218))))

(assert (=> b!1755679 (= lt!678218 (list!7829 (charsOf!2100 token!523)))))

(assert (=> b!1755680 (= e!1123684 (and tp!499127 tp!499121))))

(declare-fun b!1755681 () Bool)

(declare-fun res!789872 () Bool)

(assert (=> b!1755681 (=> (not res!789872) (not e!1123690))))

(declare-fun rulesInvariant!2749 (LexerInterface!3080 List!19387) Bool)

(assert (=> b!1755681 (= res!789872 (rulesInvariant!2749 thiss!24550 rules!3447))))

(declare-fun b!1755682 () Bool)

(declare-fun res!789876 () Bool)

(assert (=> b!1755682 (=> res!789876 e!1123683)))

(assert (=> b!1755682 (= res!789876 (not (contains!3479 rules!3447 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun e!1123689 () Bool)

(declare-fun tp!499131 () Bool)

(declare-fun b!1755683 () Bool)

(assert (=> b!1755683 (= e!1123676 (and tp!499131 (inv!25068 (tag!3807 (rule!5465 token!523))) (inv!25073 (transformation!3451 (rule!5465 token!523))) e!1123689))))

(declare-fun b!1755684 () Bool)

(declare-fun e!1123688 () Bool)

(declare-fun tp_is_empty!7801 () Bool)

(declare-fun tp!499123 () Bool)

(assert (=> b!1755684 (= e!1123688 (and tp_is_empty!7801 tp!499123))))

(assert (=> b!1755685 (= e!1123689 (and tp!499132 tp!499128))))

(declare-fun tp!499129 () Bool)

(declare-fun e!1123681 () Bool)

(declare-fun e!1123691 () Bool)

(declare-fun b!1755686 () Bool)

(assert (=> b!1755686 (= e!1123681 (and tp!499129 (inv!25068 (tag!3807 rule!422)) (inv!25073 (transformation!3451 rule!422)) e!1123691))))

(declare-fun b!1755687 () Bool)

(declare-fun res!789859 () Bool)

(assert (=> b!1755687 (=> (not res!789859) (not e!1123690))))

(declare-fun isEmpty!12183 (List!19387) Bool)

(assert (=> b!1755687 (= res!789859 (not (isEmpty!12183 rules!3447)))))

(declare-fun e!1123672 () Bool)

(assert (=> b!1755688 (= e!1123685 e!1123672)))

(declare-fun res!789858 () Bool)

(assert (=> b!1755688 (=> res!789858 e!1123672)))

(declare-fun Forall!818 (Int) Bool)

(assert (=> b!1755688 (= res!789858 (not (Forall!818 lambda!70004)))))

(declare-fun lt!678215 () Unit!33479)

(declare-fun lemmaInv!650 (TokenValueInjection!6742) Unit!33479)

(assert (=> b!1755688 (= lt!678215 (lemmaInv!650 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun b!1755689 () Bool)

(declare-fun res!789866 () Bool)

(assert (=> b!1755689 (=> res!789866 e!1123692)))

(assert (=> b!1755689 (= res!789866 (isEmpty!12182 suffix!1421))))

(declare-fun b!1755690 () Bool)

(assert (=> b!1755690 (= e!1123672 e!1123686)))

(declare-fun res!789875 () Bool)

(assert (=> b!1755690 (=> res!789875 e!1123686)))

(declare-fun dynLambda!9263 (Int BalanceConc!12794) TokenValue!3541)

(assert (=> b!1755690 (= res!789875 (not (= (list!7829 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))) lt!678211)))))

(declare-fun lt!678213 () Unit!33479)

(declare-fun lemmaSemiInverse!589 (TokenValueInjection!6742 BalanceConc!12794) Unit!33479)

(assert (=> b!1755690 (= lt!678213 (lemmaSemiInverse!589 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201))))

(declare-fun b!1755691 () Bool)

(assert (=> b!1755691 (= e!1123693 (= (rule!5465 (_1!10871 lt!678216)) lt!678220))))

(declare-fun b!1755692 () Bool)

(assert (=> b!1755692 (= e!1123683 (= lt!678203 lt!678209))))

(declare-fun res!789874 () Bool)

(assert (=> start!173310 (=> (not res!789874) (not e!1123690))))

(get-info :version)

(assert (=> start!173310 (= res!789874 ((_ is Lexer!3078) thiss!24550))))

(assert (=> start!173310 e!1123690))

(assert (=> start!173310 e!1123688))

(assert (=> start!173310 e!1123681))

(assert (=> start!173310 true))

(declare-fun inv!25074 (Token!6468) Bool)

(assert (=> start!173310 (and (inv!25074 token!523) e!1123677)))

(declare-fun e!1123682 () Bool)

(assert (=> start!173310 e!1123682))

(declare-fun b!1755693 () Bool)

(declare-fun tp!499126 () Bool)

(assert (=> b!1755693 (= e!1123682 (and e!1123674 tp!499126))))

(declare-fun b!1755694 () Bool)

(assert (=> b!1755694 (= e!1123680 e!1123687)))

(declare-fun res!789870 () Bool)

(assert (=> b!1755694 (=> (not res!789870) (not e!1123687))))

(assert (=> b!1755694 (= res!789870 (= (_1!10871 lt!678204) token!523))))

(assert (=> b!1755694 (= lt!678204 (get!5868 lt!678210))))

(assert (=> b!1755695 (= e!1123691 (and tp!499122 tp!499130))))

(assert (= (and start!173310 res!789874) b!1755687))

(assert (= (and b!1755687 res!789859) b!1755681))

(assert (= (and b!1755681 res!789872) b!1755677))

(assert (= (and b!1755677 res!789865) b!1755679))

(assert (= (and b!1755679 res!789873) b!1755694))

(assert (= (and b!1755694 res!789870) b!1755673))

(assert (= (and b!1755673 res!789857) b!1755678))

(assert (= (and b!1755678 res!789860) b!1755674))

(assert (= (and b!1755674 (not res!789867)) b!1755689))

(assert (= (and b!1755689 (not res!789866)) b!1755669))

(assert (= (and b!1755669 (not res!789871)) b!1755675))

(assert (= (and b!1755675 res!789863) b!1755671))

(assert (= (and b!1755671 res!789864) b!1755691))

(assert (= (and b!1755675 (not res!789868)) b!1755667))

(assert (= (and b!1755667 (not res!789869)) b!1755688))

(assert (= (and b!1755688 (not res!789858)) b!1755690))

(assert (= (and b!1755690 (not res!789875)) b!1755668))

(assert (= (and b!1755668 (not res!789861)) b!1755672))

(assert (= (and b!1755672 (not res!789862)) b!1755682))

(assert (= (and b!1755682 (not res!789876)) b!1755692))

(assert (= (and start!173310 ((_ is Cons!19316) suffix!1421)) b!1755684))

(assert (= b!1755686 b!1755695))

(assert (= start!173310 b!1755686))

(assert (= b!1755683 b!1755685))

(assert (= b!1755670 b!1755683))

(assert (= start!173310 b!1755670))

(assert (= b!1755676 b!1755680))

(assert (= b!1755693 b!1755676))

(assert (= (and start!173310 ((_ is Cons!19317) rules!3447)) b!1755693))

(declare-fun b_lambda!56591 () Bool)

(assert (=> (not b_lambda!56591) (not b!1755668)))

(declare-fun t!163451 () Bool)

(declare-fun tb!105487 () Bool)

(assert (=> (and b!1755685 (= (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163451) tb!105487))

(declare-fun b!1755711 () Bool)

(declare-fun e!1123706 () Bool)

(declare-fun tp!499135 () Bool)

(declare-fun inv!25075 (Conc!6425) Bool)

(assert (=> b!1755711 (= e!1123706 (and (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))) tp!499135))))

(declare-fun result!126898 () Bool)

(declare-fun inv!25076 (BalanceConc!12794) Bool)

(assert (=> tb!105487 (= result!126898 (and (inv!25076 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))) e!1123706))))

(assert (= tb!105487 b!1755711))

(declare-fun m!2170317 () Bool)

(assert (=> b!1755711 m!2170317))

(declare-fun m!2170319 () Bool)

(assert (=> tb!105487 m!2170319))

(assert (=> b!1755668 t!163451))

(declare-fun b_and!131795 () Bool)

(assert (= b_and!131785 (and (=> t!163451 result!126898) b_and!131795)))

(declare-fun t!163453 () Bool)

(declare-fun tb!105489 () Bool)

(assert (=> (and b!1755695 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163453) tb!105489))

(declare-fun result!126902 () Bool)

(assert (= result!126902 result!126898))

(assert (=> b!1755668 t!163453))

(declare-fun b_and!131797 () Bool)

(assert (= b_and!131789 (and (=> t!163453 result!126902) b_and!131797)))

(declare-fun t!163455 () Bool)

(declare-fun tb!105491 () Bool)

(assert (=> (and b!1755680 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163455) tb!105491))

(declare-fun result!126904 () Bool)

(assert (= result!126904 result!126898))

(assert (=> b!1755668 t!163455))

(declare-fun b_and!131799 () Bool)

(assert (= b_and!131793 (and (=> t!163455 result!126904) b_and!131799)))

(declare-fun b_lambda!56593 () Bool)

(assert (=> (not b_lambda!56593) (not b!1755690)))

(declare-fun tb!105493 () Bool)

(declare-fun t!163457 () Bool)

(assert (=> (and b!1755685 (= (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163457) tb!105493))

(declare-fun e!1123707 () Bool)

(declare-fun b!1755712 () Bool)

(declare-fun tp!499136 () Bool)

(assert (=> b!1755712 (= e!1123707 (and (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))) tp!499136))))

(declare-fun result!126906 () Bool)

(assert (=> tb!105493 (= result!126906 (and (inv!25076 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))) e!1123707))))

(assert (= tb!105493 b!1755712))

(declare-fun m!2170321 () Bool)

(assert (=> b!1755712 m!2170321))

(declare-fun m!2170323 () Bool)

(assert (=> tb!105493 m!2170323))

(assert (=> b!1755690 t!163457))

(declare-fun b_and!131801 () Bool)

(assert (= b_and!131795 (and (=> t!163457 result!126906) b_and!131801)))

(declare-fun t!163459 () Bool)

(declare-fun tb!105495 () Bool)

(assert (=> (and b!1755695 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163459) tb!105495))

(declare-fun result!126908 () Bool)

(assert (= result!126908 result!126906))

(assert (=> b!1755690 t!163459))

(declare-fun b_and!131803 () Bool)

(assert (= b_and!131797 (and (=> t!163459 result!126908) b_and!131803)))

(declare-fun tb!105497 () Bool)

(declare-fun t!163461 () Bool)

(assert (=> (and b!1755680 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163461) tb!105497))

(declare-fun result!126910 () Bool)

(assert (= result!126910 result!126906))

(assert (=> b!1755690 t!163461))

(declare-fun b_and!131805 () Bool)

(assert (= b_and!131799 (and (=> t!163461 result!126910) b_and!131805)))

(declare-fun b_lambda!56595 () Bool)

(assert (=> (not b_lambda!56595) (not b!1755690)))

(declare-fun tb!105499 () Bool)

(declare-fun t!163463 () Bool)

(assert (=> (and b!1755685 (= (toValue!4970 (transformation!3451 (rule!5465 token!523))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163463) tb!105499))

(declare-fun result!126912 () Bool)

(assert (=> tb!105499 (= result!126912 (inv!21 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(declare-fun m!2170325 () Bool)

(assert (=> tb!105499 m!2170325))

(assert (=> b!1755690 t!163463))

(declare-fun b_and!131807 () Bool)

(assert (= b_and!131783 (and (=> t!163463 result!126912) b_and!131807)))

(declare-fun t!163465 () Bool)

(declare-fun tb!105501 () Bool)

(assert (=> (and b!1755695 (= (toValue!4970 (transformation!3451 rule!422)) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163465) tb!105501))

(declare-fun result!126916 () Bool)

(assert (= result!126916 result!126912))

(assert (=> b!1755690 t!163465))

(declare-fun b_and!131809 () Bool)

(assert (= b_and!131787 (and (=> t!163465 result!126916) b_and!131809)))

(declare-fun tb!105503 () Bool)

(declare-fun t!163467 () Bool)

(assert (=> (and b!1755680 (= (toValue!4970 (transformation!3451 (h!24718 rules!3447))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163467) tb!105503))

(declare-fun result!126918 () Bool)

(assert (= result!126918 result!126912))

(assert (=> b!1755690 t!163467))

(declare-fun b_and!131811 () Bool)

(assert (= b_and!131791 (and (=> t!163467 result!126918) b_and!131811)))

(declare-fun m!2170327 () Bool)

(assert (=> b!1755686 m!2170327))

(declare-fun m!2170329 () Bool)

(assert (=> b!1755686 m!2170329))

(declare-fun m!2170331 () Bool)

(assert (=> b!1755669 m!2170331))

(declare-fun m!2170333 () Bool)

(assert (=> b!1755669 m!2170333))

(declare-fun m!2170335 () Bool)

(assert (=> b!1755669 m!2170335))

(assert (=> b!1755669 m!2170331))

(assert (=> b!1755669 m!2170335))

(declare-fun m!2170337 () Bool)

(assert (=> b!1755669 m!2170337))

(declare-fun m!2170339 () Bool)

(assert (=> b!1755675 m!2170339))

(declare-fun m!2170341 () Bool)

(assert (=> b!1755675 m!2170341))

(declare-fun m!2170343 () Bool)

(assert (=> b!1755675 m!2170343))

(declare-fun m!2170345 () Bool)

(assert (=> b!1755675 m!2170345))

(declare-fun m!2170347 () Bool)

(assert (=> b!1755675 m!2170347))

(declare-fun m!2170349 () Bool)

(assert (=> b!1755675 m!2170349))

(declare-fun m!2170351 () Bool)

(assert (=> b!1755675 m!2170351))

(declare-fun m!2170353 () Bool)

(assert (=> b!1755675 m!2170353))

(declare-fun m!2170355 () Bool)

(assert (=> b!1755675 m!2170355))

(declare-fun m!2170357 () Bool)

(assert (=> b!1755675 m!2170357))

(declare-fun m!2170359 () Bool)

(assert (=> b!1755675 m!2170359))

(declare-fun m!2170361 () Bool)

(assert (=> b!1755675 m!2170361))

(declare-fun m!2170363 () Bool)

(assert (=> b!1755675 m!2170363))

(declare-fun m!2170365 () Bool)

(assert (=> b!1755675 m!2170365))

(declare-fun m!2170367 () Bool)

(assert (=> b!1755675 m!2170367))

(declare-fun m!2170369 () Bool)

(assert (=> b!1755682 m!2170369))

(assert (=> b!1755671 m!2170347))

(assert (=> b!1755671 m!2170347))

(declare-fun m!2170371 () Bool)

(assert (=> b!1755671 m!2170371))

(assert (=> b!1755671 m!2170371))

(declare-fun m!2170373 () Bool)

(assert (=> b!1755671 m!2170373))

(declare-fun m!2170375 () Bool)

(assert (=> b!1755671 m!2170375))

(declare-fun m!2170377 () Bool)

(assert (=> b!1755674 m!2170377))

(declare-fun m!2170379 () Bool)

(assert (=> b!1755674 m!2170379))

(declare-fun m!2170381 () Bool)

(assert (=> b!1755674 m!2170381))

(declare-fun m!2170383 () Bool)

(assert (=> b!1755672 m!2170383))

(declare-fun m!2170385 () Bool)

(assert (=> b!1755672 m!2170385))

(declare-fun m!2170387 () Bool)

(assert (=> b!1755672 m!2170387))

(declare-fun m!2170389 () Bool)

(assert (=> b!1755672 m!2170389))

(assert (=> b!1755672 m!2170383))

(declare-fun m!2170391 () Bool)

(assert (=> b!1755672 m!2170391))

(declare-fun m!2170393 () Bool)

(assert (=> b!1755681 m!2170393))

(declare-fun m!2170395 () Bool)

(assert (=> b!1755673 m!2170395))

(declare-fun m!2170397 () Bool)

(assert (=> b!1755668 m!2170397))

(declare-fun m!2170399 () Bool)

(assert (=> b!1755683 m!2170399))

(declare-fun m!2170401 () Bool)

(assert (=> b!1755683 m!2170401))

(declare-fun m!2170403 () Bool)

(assert (=> b!1755694 m!2170403))

(declare-fun m!2170405 () Bool)

(assert (=> b!1755670 m!2170405))

(declare-fun m!2170407 () Bool)

(assert (=> b!1755688 m!2170407))

(declare-fun m!2170409 () Bool)

(assert (=> b!1755688 m!2170409))

(declare-fun m!2170411 () Bool)

(assert (=> b!1755679 m!2170411))

(declare-fun m!2170413 () Bool)

(assert (=> b!1755679 m!2170413))

(declare-fun m!2170415 () Bool)

(assert (=> b!1755679 m!2170415))

(assert (=> b!1755679 m!2170415))

(declare-fun m!2170417 () Bool)

(assert (=> b!1755679 m!2170417))

(declare-fun m!2170419 () Bool)

(assert (=> start!173310 m!2170419))

(declare-fun m!2170421 () Bool)

(assert (=> b!1755687 m!2170421))

(declare-fun m!2170423 () Bool)

(assert (=> b!1755689 m!2170423))

(declare-fun m!2170425 () Bool)

(assert (=> b!1755667 m!2170425))

(declare-fun m!2170427 () Bool)

(assert (=> b!1755677 m!2170427))

(declare-fun m!2170429 () Bool)

(assert (=> b!1755676 m!2170429))

(declare-fun m!2170431 () Bool)

(assert (=> b!1755676 m!2170431))

(declare-fun m!2170433 () Bool)

(assert (=> b!1755690 m!2170433))

(assert (=> b!1755690 m!2170433))

(declare-fun m!2170435 () Bool)

(assert (=> b!1755690 m!2170435))

(assert (=> b!1755690 m!2170435))

(declare-fun m!2170437 () Bool)

(assert (=> b!1755690 m!2170437))

(declare-fun m!2170439 () Bool)

(assert (=> b!1755690 m!2170439))

(check-sat (not b!1755686) (not tb!105499) (not b_next!49199) b_and!131807 (not b!1755675) (not b_next!49195) (not b!1755670) (not b!1755687) (not b!1755683) (not b!1755676) (not b!1755684) (not b!1755672) (not b!1755667) (not b_next!49193) (not b!1755688) (not b!1755712) (not b!1755682) (not b!1755690) (not start!173310) (not b!1755669) (not b_lambda!56595) (not b!1755694) (not b!1755681) (not b!1755674) (not b!1755677) b_and!131801 (not b_next!49191) b_and!131809 (not tb!105493) (not b_next!49201) b_and!131805 (not b!1755693) b_and!131811 (not b!1755711) b_and!131803 (not b!1755673) (not b!1755689) (not b_next!49197) (not b_lambda!56591) (not tb!105487) tp_is_empty!7801 (not b!1755671) (not b!1755679) (not b_lambda!56593))
(check-sat (not b_next!49199) b_and!131807 (not b_next!49195) b_and!131801 b_and!131811 b_and!131803 (not b_next!49197) (not b_next!49193) (not b_next!49191) b_and!131809 (not b_next!49201) b_and!131805)
(get-model)

(declare-fun d!536334 () Bool)

(declare-fun res!789954 () Bool)

(declare-fun e!1123773 () Bool)

(assert (=> d!536334 (=> (not res!789954) (not e!1123773))))

(declare-fun rulesValid!1291 (LexerInterface!3080 List!19387) Bool)

(assert (=> d!536334 (= res!789954 (rulesValid!1291 thiss!24550 rules!3447))))

(assert (=> d!536334 (= (rulesInvariant!2749 thiss!24550 rules!3447) e!1123773)))

(declare-fun b!1755834 () Bool)

(declare-datatypes ((List!19390 0))(
  ( (Nil!19320) (Cons!19320 (h!24721 String!22037) (t!163517 List!19390)) )
))
(declare-fun noDuplicateTag!1291 (LexerInterface!3080 List!19387 List!19390) Bool)

(assert (=> b!1755834 (= e!1123773 (noDuplicateTag!1291 thiss!24550 rules!3447 Nil!19320))))

(assert (= (and d!536334 res!789954) b!1755834))

(declare-fun m!2170541 () Bool)

(assert (=> d!536334 m!2170541))

(declare-fun m!2170543 () Bool)

(assert (=> b!1755834 m!2170543))

(assert (=> b!1755681 d!536334))

(declare-fun d!536336 () Bool)

(declare-fun lt!678265 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2778 (List!19387) (InoxSet Rule!6702))

(assert (=> d!536336 (= lt!678265 (select (content!2778 rules!3447) (rule!5465 (_1!10871 lt!678216))))))

(declare-fun e!1123778 () Bool)

(assert (=> d!536336 (= lt!678265 e!1123778)))

(declare-fun res!789960 () Bool)

(assert (=> d!536336 (=> (not res!789960) (not e!1123778))))

(assert (=> d!536336 (= res!789960 ((_ is Cons!19317) rules!3447))))

(assert (=> d!536336 (= (contains!3479 rules!3447 (rule!5465 (_1!10871 lt!678216))) lt!678265)))

(declare-fun b!1755839 () Bool)

(declare-fun e!1123779 () Bool)

(assert (=> b!1755839 (= e!1123778 e!1123779)))

(declare-fun res!789959 () Bool)

(assert (=> b!1755839 (=> res!789959 e!1123779)))

(assert (=> b!1755839 (= res!789959 (= (h!24718 rules!3447) (rule!5465 (_1!10871 lt!678216))))))

(declare-fun b!1755840 () Bool)

(assert (=> b!1755840 (= e!1123779 (contains!3479 (t!163470 rules!3447) (rule!5465 (_1!10871 lt!678216))))))

(assert (= (and d!536336 res!789960) b!1755839))

(assert (= (and b!1755839 (not res!789959)) b!1755840))

(declare-fun m!2170545 () Bool)

(assert (=> d!536336 m!2170545))

(declare-fun m!2170547 () Bool)

(assert (=> d!536336 m!2170547))

(declare-fun m!2170549 () Bool)

(assert (=> b!1755840 m!2170549))

(assert (=> b!1755682 d!536336))

(declare-fun d!536338 () Bool)

(assert (=> d!536338 (= (inv!25068 (tag!3807 (rule!5465 token!523))) (= (mod (str.len (value!108025 (tag!3807 (rule!5465 token!523)))) 2) 0))))

(assert (=> b!1755683 d!536338))

(declare-fun d!536340 () Bool)

(declare-fun res!789963 () Bool)

(declare-fun e!1123782 () Bool)

(assert (=> d!536340 (=> (not res!789963) (not e!1123782))))

(declare-fun semiInverseModEq!1365 (Int Int) Bool)

(assert (=> d!536340 (= res!789963 (semiInverseModEq!1365 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toValue!4970 (transformation!3451 (rule!5465 token!523)))))))

(assert (=> d!536340 (= (inv!25073 (transformation!3451 (rule!5465 token!523))) e!1123782)))

(declare-fun b!1755843 () Bool)

(declare-fun equivClasses!1306 (Int Int) Bool)

(assert (=> b!1755843 (= e!1123782 (equivClasses!1306 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toValue!4970 (transformation!3451 (rule!5465 token!523)))))))

(assert (= (and d!536340 res!789963) b!1755843))

(declare-fun m!2170551 () Bool)

(assert (=> d!536340 m!2170551))

(declare-fun m!2170553 () Bool)

(assert (=> b!1755843 m!2170553))

(assert (=> b!1755683 d!536340))

(declare-fun d!536342 () Bool)

(declare-fun c!286219 () Bool)

(assert (=> d!536342 (= c!286219 ((_ is Node!6425) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))))

(declare-fun e!1123787 () Bool)

(assert (=> d!536342 (= (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))) e!1123787)))

(declare-fun b!1755850 () Bool)

(declare-fun inv!25079 (Conc!6425) Bool)

(assert (=> b!1755850 (= e!1123787 (inv!25079 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))))

(declare-fun b!1755851 () Bool)

(declare-fun e!1123788 () Bool)

(assert (=> b!1755851 (= e!1123787 e!1123788)))

(declare-fun res!789966 () Bool)

(assert (=> b!1755851 (= res!789966 (not ((_ is Leaf!9371) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))))))

(assert (=> b!1755851 (=> res!789966 e!1123788)))

(declare-fun b!1755852 () Bool)

(declare-fun inv!25080 (Conc!6425) Bool)

(assert (=> b!1755852 (= e!1123788 (inv!25080 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))))

(assert (= (and d!536342 c!286219) b!1755850))

(assert (= (and d!536342 (not c!286219)) b!1755851))

(assert (= (and b!1755851 (not res!789966)) b!1755852))

(declare-fun m!2170555 () Bool)

(assert (=> b!1755850 m!2170555))

(declare-fun m!2170557 () Bool)

(assert (=> b!1755852 m!2170557))

(assert (=> b!1755712 d!536342))

(declare-fun d!536344 () Bool)

(declare-fun isEmpty!12186 (Option!3925) Bool)

(assert (=> d!536344 (= (isDefined!3268 lt!678210) (not (isEmpty!12186 lt!678210)))))

(declare-fun bs!403810 () Bool)

(assert (= bs!403810 d!536344))

(declare-fun m!2170559 () Bool)

(assert (=> bs!403810 m!2170559))

(assert (=> b!1755679 d!536344))

(declare-fun b!1755871 () Bool)

(declare-fun e!1123797 () Bool)

(declare-fun e!1123795 () Bool)

(assert (=> b!1755871 (= e!1123797 e!1123795)))

(declare-fun res!789983 () Bool)

(assert (=> b!1755871 (=> (not res!789983) (not e!1123795))))

(declare-fun lt!678279 () Option!3925)

(assert (=> b!1755871 (= res!789983 (isDefined!3268 lt!678279))))

(declare-fun b!1755872 () Bool)

(declare-fun res!789985 () Bool)

(assert (=> b!1755872 (=> (not res!789985) (not e!1123795))))

(assert (=> b!1755872 (= res!789985 (= (value!108026 (_1!10871 (get!5868 lt!678279))) (apply!5251 (transformation!3451 (rule!5465 (_1!10871 (get!5868 lt!678279)))) (seqFromList!2420 (originalCharacters!4265 (_1!10871 (get!5868 lt!678279)))))))))

(declare-fun b!1755873 () Bool)

(declare-fun res!789984 () Bool)

(assert (=> b!1755873 (=> (not res!789984) (not e!1123795))))

(assert (=> b!1755873 (= res!789984 (= (++!5275 (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678279)))) (_2!10871 (get!5868 lt!678279))) lt!678218))))

(declare-fun call!110547 () Option!3925)

(declare-fun bm!110542 () Bool)

(declare-fun maxPrefixOneRule!1003 (LexerInterface!3080 Rule!6702 List!19386) Option!3925)

(assert (=> bm!110542 (= call!110547 (maxPrefixOneRule!1003 thiss!24550 (h!24718 rules!3447) lt!678218))))

(declare-fun d!536346 () Bool)

(assert (=> d!536346 e!1123797))

(declare-fun res!789987 () Bool)

(assert (=> d!536346 (=> res!789987 e!1123797)))

(assert (=> d!536346 (= res!789987 (isEmpty!12186 lt!678279))))

(declare-fun e!1123796 () Option!3925)

(assert (=> d!536346 (= lt!678279 e!1123796)))

(declare-fun c!286222 () Bool)

(assert (=> d!536346 (= c!286222 (and ((_ is Cons!19317) rules!3447) ((_ is Nil!19317) (t!163470 rules!3447))))))

(declare-fun lt!678277 () Unit!33479)

(declare-fun lt!678278 () Unit!33479)

(assert (=> d!536346 (= lt!678277 lt!678278)))

(assert (=> d!536346 (isPrefix!1691 lt!678218 lt!678218)))

(declare-fun lemmaIsPrefixRefl!1118 (List!19386 List!19386) Unit!33479)

(assert (=> d!536346 (= lt!678278 (lemmaIsPrefixRefl!1118 lt!678218 lt!678218))))

(declare-fun rulesValidInductive!1156 (LexerInterface!3080 List!19387) Bool)

(assert (=> d!536346 (rulesValidInductive!1156 thiss!24550 rules!3447)))

(assert (=> d!536346 (= (maxPrefix!1634 thiss!24550 rules!3447 lt!678218) lt!678279)))

(declare-fun b!1755874 () Bool)

(assert (=> b!1755874 (= e!1123795 (contains!3479 rules!3447 (rule!5465 (_1!10871 (get!5868 lt!678279)))))))

(declare-fun b!1755875 () Bool)

(declare-fun res!789981 () Bool)

(assert (=> b!1755875 (=> (not res!789981) (not e!1123795))))

(assert (=> b!1755875 (= res!789981 (matchR!2252 (regex!3451 (rule!5465 (_1!10871 (get!5868 lt!678279)))) (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678279))))))))

(declare-fun b!1755876 () Bool)

(declare-fun lt!678280 () Option!3925)

(declare-fun lt!678276 () Option!3925)

(assert (=> b!1755876 (= e!1123796 (ite (and ((_ is None!3924) lt!678280) ((_ is None!3924) lt!678276)) None!3924 (ite ((_ is None!3924) lt!678276) lt!678280 (ite ((_ is None!3924) lt!678280) lt!678276 (ite (>= (size!15346 (_1!10871 (v!25375 lt!678280))) (size!15346 (_1!10871 (v!25375 lt!678276)))) lt!678280 lt!678276)))))))

(assert (=> b!1755876 (= lt!678280 call!110547)))

(assert (=> b!1755876 (= lt!678276 (maxPrefix!1634 thiss!24550 (t!163470 rules!3447) lt!678218))))

(declare-fun b!1755877 () Bool)

(assert (=> b!1755877 (= e!1123796 call!110547)))

(declare-fun b!1755878 () Bool)

(declare-fun res!789986 () Bool)

(assert (=> b!1755878 (=> (not res!789986) (not e!1123795))))

(assert (=> b!1755878 (= res!789986 (= (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678279)))) (originalCharacters!4265 (_1!10871 (get!5868 lt!678279)))))))

(declare-fun b!1755879 () Bool)

(declare-fun res!789982 () Bool)

(assert (=> b!1755879 (=> (not res!789982) (not e!1123795))))

(declare-fun size!15349 (List!19386) Int)

(assert (=> b!1755879 (= res!789982 (< (size!15349 (_2!10871 (get!5868 lt!678279))) (size!15349 lt!678218)))))

(assert (= (and d!536346 c!286222) b!1755877))

(assert (= (and d!536346 (not c!286222)) b!1755876))

(assert (= (or b!1755877 b!1755876) bm!110542))

(assert (= (and d!536346 (not res!789987)) b!1755871))

(assert (= (and b!1755871 res!789983) b!1755878))

(assert (= (and b!1755878 res!789986) b!1755879))

(assert (= (and b!1755879 res!789982) b!1755873))

(assert (= (and b!1755873 res!789984) b!1755872))

(assert (= (and b!1755872 res!789985) b!1755875))

(assert (= (and b!1755875 res!789981) b!1755874))

(declare-fun m!2170561 () Bool)

(assert (=> b!1755873 m!2170561))

(declare-fun m!2170563 () Bool)

(assert (=> b!1755873 m!2170563))

(assert (=> b!1755873 m!2170563))

(declare-fun m!2170565 () Bool)

(assert (=> b!1755873 m!2170565))

(assert (=> b!1755873 m!2170565))

(declare-fun m!2170567 () Bool)

(assert (=> b!1755873 m!2170567))

(assert (=> b!1755879 m!2170561))

(declare-fun m!2170569 () Bool)

(assert (=> b!1755879 m!2170569))

(declare-fun m!2170571 () Bool)

(assert (=> b!1755879 m!2170571))

(declare-fun m!2170573 () Bool)

(assert (=> bm!110542 m!2170573))

(assert (=> b!1755872 m!2170561))

(declare-fun m!2170575 () Bool)

(assert (=> b!1755872 m!2170575))

(assert (=> b!1755872 m!2170575))

(declare-fun m!2170577 () Bool)

(assert (=> b!1755872 m!2170577))

(declare-fun m!2170579 () Bool)

(assert (=> b!1755871 m!2170579))

(declare-fun m!2170581 () Bool)

(assert (=> d!536346 m!2170581))

(declare-fun m!2170583 () Bool)

(assert (=> d!536346 m!2170583))

(declare-fun m!2170585 () Bool)

(assert (=> d!536346 m!2170585))

(declare-fun m!2170587 () Bool)

(assert (=> d!536346 m!2170587))

(assert (=> b!1755875 m!2170561))

(assert (=> b!1755875 m!2170563))

(assert (=> b!1755875 m!2170563))

(assert (=> b!1755875 m!2170565))

(assert (=> b!1755875 m!2170565))

(declare-fun m!2170589 () Bool)

(assert (=> b!1755875 m!2170589))

(assert (=> b!1755878 m!2170561))

(assert (=> b!1755878 m!2170563))

(assert (=> b!1755878 m!2170563))

(assert (=> b!1755878 m!2170565))

(assert (=> b!1755874 m!2170561))

(declare-fun m!2170591 () Bool)

(assert (=> b!1755874 m!2170591))

(declare-fun m!2170593 () Bool)

(assert (=> b!1755876 m!2170593))

(assert (=> b!1755679 d!536346))

(declare-fun d!536348 () Bool)

(declare-fun list!7832 (Conc!6425) List!19386)

(assert (=> d!536348 (= (list!7829 (charsOf!2100 token!523)) (list!7832 (c!286195 (charsOf!2100 token!523))))))

(declare-fun bs!403811 () Bool)

(assert (= bs!403811 d!536348))

(declare-fun m!2170595 () Bool)

(assert (=> bs!403811 m!2170595))

(assert (=> b!1755679 d!536348))

(declare-fun d!536350 () Bool)

(declare-fun lt!678317 () BalanceConc!12794)

(assert (=> d!536350 (= (list!7829 lt!678317) (originalCharacters!4265 token!523))))

(assert (=> d!536350 (= lt!678317 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (value!108026 token!523)))))

(assert (=> d!536350 (= (charsOf!2100 token!523) lt!678317)))

(declare-fun b_lambda!56599 () Bool)

(assert (=> (not b_lambda!56599) (not d!536350)))

(declare-fun t!163472 () Bool)

(declare-fun tb!105505 () Bool)

(assert (=> (and b!1755685 (= (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toChars!4829 (transformation!3451 (rule!5465 token!523)))) t!163472) tb!105505))

(declare-fun b!1755888 () Bool)

(declare-fun e!1123802 () Bool)

(declare-fun tp!499137 () Bool)

(assert (=> b!1755888 (= e!1123802 (and (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (value!108026 token!523)))) tp!499137))))

(declare-fun result!126920 () Bool)

(assert (=> tb!105505 (= result!126920 (and (inv!25076 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (value!108026 token!523))) e!1123802))))

(assert (= tb!105505 b!1755888))

(declare-fun m!2170597 () Bool)

(assert (=> b!1755888 m!2170597))

(declare-fun m!2170599 () Bool)

(assert (=> tb!105505 m!2170599))

(assert (=> d!536350 t!163472))

(declare-fun b_and!131819 () Bool)

(assert (= b_and!131801 (and (=> t!163472 result!126920) b_and!131819)))

(declare-fun t!163474 () Bool)

(declare-fun tb!105507 () Bool)

(assert (=> (and b!1755695 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 token!523)))) t!163474) tb!105507))

(declare-fun result!126922 () Bool)

(assert (= result!126922 result!126920))

(assert (=> d!536350 t!163474))

(declare-fun b_and!131821 () Bool)

(assert (= b_and!131803 (and (=> t!163474 result!126922) b_and!131821)))

(declare-fun tb!105509 () Bool)

(declare-fun t!163476 () Bool)

(assert (=> (and b!1755680 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 token!523)))) t!163476) tb!105509))

(declare-fun result!126924 () Bool)

(assert (= result!126924 result!126920))

(assert (=> d!536350 t!163476))

(declare-fun b_and!131823 () Bool)

(assert (= b_and!131805 (and (=> t!163476 result!126924) b_and!131823)))

(declare-fun m!2170601 () Bool)

(assert (=> d!536350 m!2170601))

(declare-fun m!2170603 () Bool)

(assert (=> d!536350 m!2170603))

(assert (=> b!1755679 d!536350))

(declare-fun d!536352 () Bool)

(assert (=> d!536352 (= (inv!25068 (tag!3807 (h!24718 rules!3447))) (= (mod (str.len (value!108025 (tag!3807 (h!24718 rules!3447)))) 2) 0))))

(assert (=> b!1755676 d!536352))

(declare-fun d!536354 () Bool)

(declare-fun res!789992 () Bool)

(declare-fun e!1123803 () Bool)

(assert (=> d!536354 (=> (not res!789992) (not e!1123803))))

(assert (=> d!536354 (= res!789992 (semiInverseModEq!1365 (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toValue!4970 (transformation!3451 (h!24718 rules!3447)))))))

(assert (=> d!536354 (= (inv!25073 (transformation!3451 (h!24718 rules!3447))) e!1123803)))

(declare-fun b!1755889 () Bool)

(assert (=> b!1755889 (= e!1123803 (equivClasses!1306 (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toValue!4970 (transformation!3451 (h!24718 rules!3447)))))))

(assert (= (and d!536354 res!789992) b!1755889))

(declare-fun m!2170605 () Bool)

(assert (=> d!536354 m!2170605))

(declare-fun m!2170607 () Bool)

(assert (=> b!1755889 m!2170607))

(assert (=> b!1755676 d!536354))

(declare-fun d!536356 () Bool)

(declare-fun lt!678318 () Bool)

(assert (=> d!536356 (= lt!678318 (select (content!2778 rules!3447) rule!422))))

(declare-fun e!1123804 () Bool)

(assert (=> d!536356 (= lt!678318 e!1123804)))

(declare-fun res!789994 () Bool)

(assert (=> d!536356 (=> (not res!789994) (not e!1123804))))

(assert (=> d!536356 (= res!789994 ((_ is Cons!19317) rules!3447))))

(assert (=> d!536356 (= (contains!3479 rules!3447 rule!422) lt!678318)))

(declare-fun b!1755890 () Bool)

(declare-fun e!1123805 () Bool)

(assert (=> b!1755890 (= e!1123804 e!1123805)))

(declare-fun res!789993 () Bool)

(assert (=> b!1755890 (=> res!789993 e!1123805)))

(assert (=> b!1755890 (= res!789993 (= (h!24718 rules!3447) rule!422))))

(declare-fun b!1755891 () Bool)

(assert (=> b!1755891 (= e!1123805 (contains!3479 (t!163470 rules!3447) rule!422))))

(assert (= (and d!536356 res!789994) b!1755890))

(assert (= (and b!1755890 (not res!789993)) b!1755891))

(assert (=> d!536356 m!2170545))

(declare-fun m!2170609 () Bool)

(assert (=> d!536356 m!2170609))

(declare-fun m!2170611 () Bool)

(assert (=> b!1755891 m!2170611))

(assert (=> b!1755677 d!536356))

(declare-fun d!536358 () Bool)

(assert (=> d!536358 (= (get!5868 lt!678210) (v!25375 lt!678210))))

(assert (=> b!1755694 d!536358))

(declare-fun d!536360 () Bool)

(assert (=> d!536360 (= (isEmpty!12182 (_2!10871 lt!678204)) ((_ is Nil!19316) (_2!10871 lt!678204)))))

(assert (=> b!1755673 d!536360))

(declare-fun d!536362 () Bool)

(declare-fun isBalanced!2004 (Conc!6425) Bool)

(assert (=> d!536362 (= (inv!25076 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))) (isBalanced!2004 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))))

(declare-fun bs!403812 () Bool)

(assert (= bs!403812 d!536362))

(declare-fun m!2170669 () Bool)

(assert (=> bs!403812 m!2170669))

(assert (=> tb!105493 d!536362))

(declare-fun d!536368 () Bool)

(declare-fun e!1123839 () Bool)

(assert (=> d!536368 e!1123839))

(declare-fun c!286241 () Bool)

(assert (=> d!536368 (= c!286241 ((_ is EmptyExpr!4779) (regex!3451 rule!422)))))

(declare-fun lt!678342 () Bool)

(declare-fun e!1123843 () Bool)

(assert (=> d!536368 (= lt!678342 e!1123843)))

(declare-fun c!286239 () Bool)

(assert (=> d!536368 (= c!286239 (isEmpty!12182 lt!678218))))

(declare-fun validRegex!1925 (Regex!4779) Bool)

(assert (=> d!536368 (validRegex!1925 (regex!3451 rule!422))))

(assert (=> d!536368 (= (matchR!2252 (regex!3451 rule!422) lt!678218) lt!678342)))

(declare-fun b!1755951 () Bool)

(declare-fun e!1123845 () Bool)

(assert (=> b!1755951 (= e!1123845 (not lt!678342))))

(declare-fun b!1755952 () Bool)

(declare-fun res!790031 () Bool)

(declare-fun e!1123840 () Bool)

(assert (=> b!1755952 (=> res!790031 e!1123840)))

(declare-fun e!1123842 () Bool)

(assert (=> b!1755952 (= res!790031 e!1123842)))

(declare-fun res!790026 () Bool)

(assert (=> b!1755952 (=> (not res!790026) (not e!1123842))))

(assert (=> b!1755952 (= res!790026 lt!678342)))

(declare-fun b!1755953 () Bool)

(declare-fun res!790029 () Bool)

(assert (=> b!1755953 (=> res!790029 e!1123840)))

(assert (=> b!1755953 (= res!790029 (not ((_ is ElementMatch!4779) (regex!3451 rule!422))))))

(assert (=> b!1755953 (= e!1123845 e!1123840)))

(declare-fun b!1755954 () Bool)

(declare-fun nullable!1451 (Regex!4779) Bool)

(assert (=> b!1755954 (= e!1123843 (nullable!1451 (regex!3451 rule!422)))))

(declare-fun b!1755955 () Bool)

(declare-fun res!790027 () Bool)

(declare-fun e!1123844 () Bool)

(assert (=> b!1755955 (=> res!790027 e!1123844)))

(declare-fun tail!2623 (List!19386) List!19386)

(assert (=> b!1755955 (= res!790027 (not (isEmpty!12182 (tail!2623 lt!678218))))))

(declare-fun b!1755956 () Bool)

(declare-fun e!1123841 () Bool)

(assert (=> b!1755956 (= e!1123841 e!1123844)))

(declare-fun res!790028 () Bool)

(assert (=> b!1755956 (=> res!790028 e!1123844)))

(declare-fun call!110550 () Bool)

(assert (=> b!1755956 (= res!790028 call!110550)))

(declare-fun b!1755957 () Bool)

(assert (=> b!1755957 (= e!1123839 e!1123845)))

(declare-fun c!286240 () Bool)

(assert (=> b!1755957 (= c!286240 ((_ is EmptyLang!4779) (regex!3451 rule!422)))))

(declare-fun b!1755958 () Bool)

(assert (=> b!1755958 (= e!1123839 (= lt!678342 call!110550))))

(declare-fun b!1755959 () Bool)

(declare-fun res!790032 () Bool)

(assert (=> b!1755959 (=> (not res!790032) (not e!1123842))))

(assert (=> b!1755959 (= res!790032 (not call!110550))))

(declare-fun b!1755960 () Bool)

(assert (=> b!1755960 (= e!1123844 (not (= (head!4054 lt!678218) (c!286194 (regex!3451 rule!422)))))))

(declare-fun b!1755961 () Bool)

(declare-fun res!790033 () Bool)

(assert (=> b!1755961 (=> (not res!790033) (not e!1123842))))

(assert (=> b!1755961 (= res!790033 (isEmpty!12182 (tail!2623 lt!678218)))))

(declare-fun b!1755962 () Bool)

(assert (=> b!1755962 (= e!1123842 (= (head!4054 lt!678218) (c!286194 (regex!3451 rule!422))))))

(declare-fun b!1755963 () Bool)

(declare-fun derivativeStep!1220 (Regex!4779 C!9732) Regex!4779)

(assert (=> b!1755963 (= e!1123843 (matchR!2252 (derivativeStep!1220 (regex!3451 rule!422) (head!4054 lt!678218)) (tail!2623 lt!678218)))))

(declare-fun b!1755964 () Bool)

(assert (=> b!1755964 (= e!1123840 e!1123841)))

(declare-fun res!790030 () Bool)

(assert (=> b!1755964 (=> (not res!790030) (not e!1123841))))

(assert (=> b!1755964 (= res!790030 (not lt!678342))))

(declare-fun bm!110545 () Bool)

(assert (=> bm!110545 (= call!110550 (isEmpty!12182 lt!678218))))

(assert (= (and d!536368 c!286239) b!1755954))

(assert (= (and d!536368 (not c!286239)) b!1755963))

(assert (= (and d!536368 c!286241) b!1755958))

(assert (= (and d!536368 (not c!286241)) b!1755957))

(assert (= (and b!1755957 c!286240) b!1755951))

(assert (= (and b!1755957 (not c!286240)) b!1755953))

(assert (= (and b!1755953 (not res!790029)) b!1755952))

(assert (= (and b!1755952 res!790026) b!1755959))

(assert (= (and b!1755959 res!790032) b!1755961))

(assert (= (and b!1755961 res!790033) b!1755962))

(assert (= (and b!1755952 (not res!790031)) b!1755964))

(assert (= (and b!1755964 res!790030) b!1755956))

(assert (= (and b!1755956 (not res!790028)) b!1755955))

(assert (= (and b!1755955 (not res!790027)) b!1755960))

(assert (= (or b!1755958 b!1755956 b!1755959) bm!110545))

(declare-fun m!2170713 () Bool)

(assert (=> d!536368 m!2170713))

(declare-fun m!2170715 () Bool)

(assert (=> d!536368 m!2170715))

(declare-fun m!2170717 () Bool)

(assert (=> b!1755962 m!2170717))

(declare-fun m!2170719 () Bool)

(assert (=> b!1755961 m!2170719))

(assert (=> b!1755961 m!2170719))

(declare-fun m!2170721 () Bool)

(assert (=> b!1755961 m!2170721))

(declare-fun m!2170723 () Bool)

(assert (=> b!1755954 m!2170723))

(assert (=> b!1755955 m!2170719))

(assert (=> b!1755955 m!2170719))

(assert (=> b!1755955 m!2170721))

(assert (=> bm!110545 m!2170713))

(assert (=> b!1755963 m!2170717))

(assert (=> b!1755963 m!2170717))

(declare-fun m!2170725 () Bool)

(assert (=> b!1755963 m!2170725))

(assert (=> b!1755963 m!2170719))

(assert (=> b!1755963 m!2170725))

(assert (=> b!1755963 m!2170719))

(declare-fun m!2170727 () Bool)

(assert (=> b!1755963 m!2170727))

(assert (=> b!1755960 m!2170717))

(assert (=> b!1755674 d!536368))

(declare-fun d!536382 () Bool)

(declare-fun res!790040 () Bool)

(declare-fun e!1123850 () Bool)

(assert (=> d!536382 (=> (not res!790040) (not e!1123850))))

(assert (=> d!536382 (= res!790040 (validRegex!1925 (regex!3451 rule!422)))))

(assert (=> d!536382 (= (ruleValid!949 thiss!24550 rule!422) e!1123850)))

(declare-fun b!1755973 () Bool)

(declare-fun res!790041 () Bool)

(assert (=> b!1755973 (=> (not res!790041) (not e!1123850))))

(assert (=> b!1755973 (= res!790041 (not (nullable!1451 (regex!3451 rule!422))))))

(declare-fun b!1755974 () Bool)

(assert (=> b!1755974 (= e!1123850 (not (= (tag!3807 rule!422) (String!22038 ""))))))

(assert (= (and d!536382 res!790040) b!1755973))

(assert (= (and b!1755973 res!790041) b!1755974))

(assert (=> d!536382 m!2170715))

(assert (=> b!1755973 m!2170723))

(assert (=> b!1755674 d!536382))

(declare-fun d!536390 () Bool)

(assert (=> d!536390 (ruleValid!949 thiss!24550 rule!422)))

(declare-fun lt!678349 () Unit!33479)

(declare-fun choose!10852 (LexerInterface!3080 Rule!6702 List!19387) Unit!33479)

(assert (=> d!536390 (= lt!678349 (choose!10852 thiss!24550 rule!422 rules!3447))))

(assert (=> d!536390 (contains!3479 rules!3447 rule!422)))

(assert (=> d!536390 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!472 thiss!24550 rule!422 rules!3447) lt!678349)))

(declare-fun bs!403816 () Bool)

(assert (= bs!403816 d!536390))

(assert (=> bs!403816 m!2170379))

(declare-fun m!2170745 () Bool)

(assert (=> bs!403816 m!2170745))

(assert (=> bs!403816 m!2170427))

(assert (=> b!1755674 d!536390))

(declare-fun d!536392 () Bool)

(declare-fun e!1123870 () Bool)

(assert (=> d!536392 e!1123870))

(declare-fun res!790059 () Bool)

(assert (=> d!536392 (=> res!790059 e!1123870)))

(declare-fun lt!678352 () Bool)

(assert (=> d!536392 (= res!790059 (not lt!678352))))

(declare-fun e!1123869 () Bool)

(assert (=> d!536392 (= lt!678352 e!1123869)))

(declare-fun res!790056 () Bool)

(assert (=> d!536392 (=> res!790056 e!1123869)))

(assert (=> d!536392 (= res!790056 ((_ is Nil!19316) lt!678211))))

(assert (=> d!536392 (= (isPrefix!1691 lt!678211 lt!678203) lt!678352)))

(declare-fun b!1756003 () Bool)

(declare-fun e!1123871 () Bool)

(assert (=> b!1756003 (= e!1123871 (isPrefix!1691 (tail!2623 lt!678211) (tail!2623 lt!678203)))))

(declare-fun b!1756004 () Bool)

(assert (=> b!1756004 (= e!1123870 (>= (size!15349 lt!678203) (size!15349 lt!678211)))))

(declare-fun b!1756002 () Bool)

(declare-fun res!790057 () Bool)

(assert (=> b!1756002 (=> (not res!790057) (not e!1123871))))

(assert (=> b!1756002 (= res!790057 (= (head!4054 lt!678211) (head!4054 lt!678203)))))

(declare-fun b!1756001 () Bool)

(assert (=> b!1756001 (= e!1123869 e!1123871)))

(declare-fun res!790058 () Bool)

(assert (=> b!1756001 (=> (not res!790058) (not e!1123871))))

(assert (=> b!1756001 (= res!790058 (not ((_ is Nil!19316) lt!678203)))))

(assert (= (and d!536392 (not res!790056)) b!1756001))

(assert (= (and b!1756001 res!790058) b!1756002))

(assert (= (and b!1756002 res!790057) b!1756003))

(assert (= (and d!536392 (not res!790059)) b!1756004))

(declare-fun m!2170757 () Bool)

(assert (=> b!1756003 m!2170757))

(declare-fun m!2170759 () Bool)

(assert (=> b!1756003 m!2170759))

(assert (=> b!1756003 m!2170757))

(assert (=> b!1756003 m!2170759))

(declare-fun m!2170761 () Bool)

(assert (=> b!1756003 m!2170761))

(declare-fun m!2170763 () Bool)

(assert (=> b!1756004 m!2170763))

(declare-fun m!2170765 () Bool)

(assert (=> b!1756004 m!2170765))

(declare-fun m!2170767 () Bool)

(assert (=> b!1756002 m!2170767))

(declare-fun m!2170769 () Bool)

(assert (=> b!1756002 m!2170769))

(assert (=> b!1755675 d!536392))

(declare-fun d!536402 () Bool)

(declare-fun isEmpty!12187 (Option!3924) Bool)

(assert (=> d!536402 (= (isDefined!3267 lt!678217) (not (isEmpty!12187 lt!678217)))))

(declare-fun bs!403818 () Bool)

(assert (= bs!403818 d!536402))

(declare-fun m!2170773 () Bool)

(assert (=> bs!403818 m!2170773))

(assert (=> b!1755675 d!536402))

(declare-fun lt!678427 () Token!6468)

(declare-fun e!1123959 () Bool)

(declare-fun b!1756153 () Bool)

(assert (=> b!1756153 (= e!1123959 (= (rule!5465 lt!678427) (get!5867 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 lt!678427))))))))

(declare-fun d!536406 () Bool)

(assert (=> d!536406 (isDefined!3268 (maxPrefix!1634 thiss!24550 rules!3447 (++!5275 lt!678218 suffix!1421)))))

(declare-fun lt!678414 () Unit!33479)

(declare-fun e!1123960 () Unit!33479)

(assert (=> d!536406 (= lt!678414 e!1123960)))

(declare-fun c!286262 () Bool)

(assert (=> d!536406 (= c!286262 (isEmpty!12186 (maxPrefix!1634 thiss!24550 rules!3447 (++!5275 lt!678218 suffix!1421))))))

(declare-fun lt!678419 () Unit!33479)

(declare-fun lt!678422 () Unit!33479)

(assert (=> d!536406 (= lt!678419 lt!678422)))

(assert (=> d!536406 e!1123959))

(declare-fun res!790119 () Bool)

(assert (=> d!536406 (=> (not res!790119) (not e!1123959))))

(assert (=> d!536406 (= res!790119 (isDefined!3267 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 lt!678427)))))))

(assert (=> d!536406 (= lt!678422 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!499 thiss!24550 rules!3447 lt!678218 lt!678427))))

(declare-fun lt!678411 () Unit!33479)

(declare-fun lt!678412 () Unit!33479)

(assert (=> d!536406 (= lt!678411 lt!678412)))

(declare-fun lt!678415 () List!19386)

(assert (=> d!536406 (isPrefix!1691 lt!678415 (++!5275 lt!678218 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!301 (List!19386 List!19386 List!19386) Unit!33479)

(assert (=> d!536406 (= lt!678412 (lemmaPrefixStaysPrefixWhenAddingToSuffix!301 lt!678415 lt!678218 suffix!1421))))

(assert (=> d!536406 (= lt!678415 (list!7829 (charsOf!2100 lt!678427)))))

(declare-fun lt!678421 () Unit!33479)

(declare-fun lt!678423 () Unit!33479)

(assert (=> d!536406 (= lt!678421 lt!678423)))

(declare-fun lt!678420 () List!19386)

(declare-fun lt!678418 () List!19386)

(assert (=> d!536406 (isPrefix!1691 lt!678420 (++!5275 lt!678420 lt!678418))))

(assert (=> d!536406 (= lt!678423 (lemmaConcatTwoListThenFirstIsPrefix!1200 lt!678420 lt!678418))))

(assert (=> d!536406 (= lt!678418 (_2!10871 (get!5868 (maxPrefix!1634 thiss!24550 rules!3447 lt!678218))))))

(assert (=> d!536406 (= lt!678420 (list!7829 (charsOf!2100 lt!678427)))))

(declare-datatypes ((List!19391 0))(
  ( (Nil!19321) (Cons!19321 (h!24722 Token!6468) (t!163518 List!19391)) )
))
(declare-fun head!4056 (List!19391) Token!6468)

(declare-datatypes ((IArray!12859 0))(
  ( (IArray!12860 (innerList!6487 List!19391)) )
))
(declare-datatypes ((Conc!6427 0))(
  ( (Node!6427 (left!15466 Conc!6427) (right!15796 Conc!6427) (csize!13084 Int) (cheight!6638 Int)) (Leaf!9373 (xs!9303 IArray!12859) (csize!13085 Int)) (Empty!6427) )
))
(declare-datatypes ((BalanceConc!12798 0))(
  ( (BalanceConc!12799 (c!286295 Conc!6427)) )
))
(declare-fun list!7833 (BalanceConc!12798) List!19391)

(declare-datatypes ((tuple2!18942 0))(
  ( (tuple2!18943 (_1!10873 BalanceConc!12798) (_2!10873 BalanceConc!12794)) )
))
(declare-fun lex!1440 (LexerInterface!3080 List!19387 BalanceConc!12794) tuple2!18942)

(assert (=> d!536406 (= lt!678427 (head!4056 (list!7833 (_1!10873 (lex!1440 thiss!24550 rules!3447 (seqFromList!2420 lt!678218))))))))

(assert (=> d!536406 (not (isEmpty!12183 rules!3447))))

(assert (=> d!536406 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!602 thiss!24550 rules!3447 lt!678218 suffix!1421) lt!678414)))

(declare-fun b!1756154 () Bool)

(declare-fun Unit!33485 () Unit!33479)

(assert (=> b!1756154 (= e!1123960 Unit!33485)))

(declare-fun lt!678416 () List!19386)

(assert (=> b!1756154 (= lt!678416 (++!5275 lt!678218 suffix!1421))))

(declare-fun lt!678424 () Unit!33479)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!309 (LexerInterface!3080 Rule!6702 List!19387 List!19386) Unit!33479)

(assert (=> b!1756154 (= lt!678424 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!309 thiss!24550 (rule!5465 lt!678427) rules!3447 lt!678416))))

(assert (=> b!1756154 (isEmpty!12186 (maxPrefixOneRule!1003 thiss!24550 (rule!5465 lt!678427) lt!678416))))

(declare-fun lt!678426 () Unit!33479)

(assert (=> b!1756154 (= lt!678426 lt!678424)))

(declare-fun lt!678413 () List!19386)

(assert (=> b!1756154 (= lt!678413 (list!7829 (charsOf!2100 lt!678427)))))

(declare-fun lt!678417 () Unit!33479)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!305 (LexerInterface!3080 Rule!6702 List!19386 List!19386) Unit!33479)

(assert (=> b!1756154 (= lt!678417 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!305 thiss!24550 (rule!5465 lt!678427) lt!678413 (++!5275 lt!678218 suffix!1421)))))

(assert (=> b!1756154 (not (matchR!2252 (regex!3451 (rule!5465 lt!678427)) lt!678413))))

(declare-fun lt!678425 () Unit!33479)

(assert (=> b!1756154 (= lt!678425 lt!678417)))

(assert (=> b!1756154 false))

(declare-fun b!1756155 () Bool)

(declare-fun Unit!33486 () Unit!33479)

(assert (=> b!1756155 (= e!1123960 Unit!33486)))

(declare-fun b!1756152 () Bool)

(declare-fun res!790120 () Bool)

(assert (=> b!1756152 (=> (not res!790120) (not e!1123959))))

(assert (=> b!1756152 (= res!790120 (matchR!2252 (regex!3451 (get!5867 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 lt!678427))))) (list!7829 (charsOf!2100 lt!678427))))))

(assert (= (and d!536406 res!790119) b!1756152))

(assert (= (and b!1756152 res!790120) b!1756153))

(assert (= (and d!536406 c!286262) b!1756154))

(assert (= (and d!536406 (not c!286262)) b!1756155))

(declare-fun m!2170931 () Bool)

(assert (=> b!1756153 m!2170931))

(assert (=> b!1756153 m!2170931))

(declare-fun m!2170933 () Bool)

(assert (=> b!1756153 m!2170933))

(assert (=> d!536406 m!2170421))

(assert (=> d!536406 m!2170931))

(declare-fun m!2170935 () Bool)

(assert (=> d!536406 m!2170935))

(declare-fun m!2170937 () Bool)

(assert (=> d!536406 m!2170937))

(declare-fun m!2170939 () Bool)

(assert (=> d!536406 m!2170939))

(declare-fun m!2170941 () Bool)

(assert (=> d!536406 m!2170941))

(assert (=> d!536406 m!2170367))

(declare-fun m!2170943 () Bool)

(assert (=> d!536406 m!2170943))

(declare-fun m!2170945 () Bool)

(assert (=> d!536406 m!2170945))

(assert (=> d!536406 m!2170367))

(declare-fun m!2170947 () Bool)

(assert (=> d!536406 m!2170947))

(assert (=> d!536406 m!2170941))

(declare-fun m!2170949 () Bool)

(assert (=> d!536406 m!2170949))

(assert (=> d!536406 m!2170367))

(declare-fun m!2170951 () Bool)

(assert (=> d!536406 m!2170951))

(declare-fun m!2170953 () Bool)

(assert (=> d!536406 m!2170953))

(declare-fun m!2170955 () Bool)

(assert (=> d!536406 m!2170955))

(assert (=> d!536406 m!2170413))

(declare-fun m!2170957 () Bool)

(assert (=> d!536406 m!2170957))

(assert (=> d!536406 m!2170945))

(declare-fun m!2170959 () Bool)

(assert (=> d!536406 m!2170959))

(assert (=> d!536406 m!2170951))

(assert (=> d!536406 m!2170935))

(assert (=> d!536406 m!2170931))

(declare-fun m!2170961 () Bool)

(assert (=> d!536406 m!2170961))

(assert (=> d!536406 m!2170413))

(declare-fun m!2170963 () Bool)

(assert (=> d!536406 m!2170963))

(assert (=> d!536406 m!2170943))

(declare-fun m!2170965 () Bool)

(assert (=> d!536406 m!2170965))

(assert (=> d!536406 m!2170943))

(declare-fun m!2170967 () Bool)

(assert (=> d!536406 m!2170967))

(assert (=> b!1756154 m!2170367))

(declare-fun m!2170969 () Bool)

(assert (=> b!1756154 m!2170969))

(assert (=> b!1756154 m!2170941))

(declare-fun m!2170971 () Bool)

(assert (=> b!1756154 m!2170971))

(declare-fun m!2170973 () Bool)

(assert (=> b!1756154 m!2170973))

(declare-fun m!2170975 () Bool)

(assert (=> b!1756154 m!2170975))

(assert (=> b!1756154 m!2170971))

(declare-fun m!2170977 () Bool)

(assert (=> b!1756154 m!2170977))

(assert (=> b!1756154 m!2170941))

(assert (=> b!1756154 m!2170949))

(assert (=> b!1756154 m!2170367))

(assert (=> b!1756152 m!2170931))

(assert (=> b!1756152 m!2170941))

(assert (=> b!1756152 m!2170949))

(assert (=> b!1756152 m!2170941))

(assert (=> b!1756152 m!2170949))

(declare-fun m!2170979 () Bool)

(assert (=> b!1756152 m!2170979))

(assert (=> b!1756152 m!2170931))

(assert (=> b!1756152 m!2170933))

(assert (=> b!1755675 d!536406))

(declare-fun d!536472 () Bool)

(assert (=> d!536472 (= (get!5868 lt!678214) (v!25375 lt!678214))))

(assert (=> b!1755675 d!536472))

(declare-fun d!536474 () Bool)

(declare-fun e!1123970 () Bool)

(assert (=> d!536474 e!1123970))

(declare-fun res!790126 () Bool)

(assert (=> d!536474 (=> res!790126 e!1123970)))

(declare-fun lt!678434 () Option!3924)

(assert (=> d!536474 (= res!790126 (isEmpty!12187 lt!678434))))

(declare-fun e!1123972 () Option!3924)

(assert (=> d!536474 (= lt!678434 e!1123972)))

(declare-fun c!286267 () Bool)

(assert (=> d!536474 (= c!286267 (and ((_ is Cons!19317) rules!3447) (= (tag!3807 (h!24718 rules!3447)) (tag!3807 (rule!5465 (_1!10871 lt!678216))))))))

(assert (=> d!536474 (rulesInvariant!2749 thiss!24550 rules!3447)))

(assert (=> d!536474 (= (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 (_1!10871 lt!678216)))) lt!678434)))

(declare-fun b!1756168 () Bool)

(assert (=> b!1756168 (= e!1123972 (Some!3923 (h!24718 rules!3447)))))

(declare-fun b!1756169 () Bool)

(declare-fun e!1123969 () Option!3924)

(assert (=> b!1756169 (= e!1123969 None!3923)))

(declare-fun b!1756170 () Bool)

(declare-fun e!1123971 () Bool)

(assert (=> b!1756170 (= e!1123970 e!1123971)))

(declare-fun res!790125 () Bool)

(assert (=> b!1756170 (=> (not res!790125) (not e!1123971))))

(assert (=> b!1756170 (= res!790125 (contains!3479 rules!3447 (get!5867 lt!678434)))))

(declare-fun b!1756171 () Bool)

(assert (=> b!1756171 (= e!1123972 e!1123969)))

(declare-fun c!286268 () Bool)

(assert (=> b!1756171 (= c!286268 (and ((_ is Cons!19317) rules!3447) (not (= (tag!3807 (h!24718 rules!3447)) (tag!3807 (rule!5465 (_1!10871 lt!678216)))))))))

(declare-fun b!1756172 () Bool)

(assert (=> b!1756172 (= e!1123971 (= (tag!3807 (get!5867 lt!678434)) (tag!3807 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun b!1756173 () Bool)

(declare-fun lt!678435 () Unit!33479)

(declare-fun lt!678436 () Unit!33479)

(assert (=> b!1756173 (= lt!678435 lt!678436)))

(assert (=> b!1756173 (rulesInvariant!2749 thiss!24550 (t!163470 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!180 (LexerInterface!3080 Rule!6702 List!19387) Unit!33479)

(assert (=> b!1756173 (= lt!678436 (lemmaInvariantOnRulesThenOnTail!180 thiss!24550 (h!24718 rules!3447) (t!163470 rules!3447)))))

(assert (=> b!1756173 (= e!1123969 (getRuleFromTag!499 thiss!24550 (t!163470 rules!3447) (tag!3807 (rule!5465 (_1!10871 lt!678216)))))))

(assert (= (and d!536474 c!286267) b!1756168))

(assert (= (and d!536474 (not c!286267)) b!1756171))

(assert (= (and b!1756171 c!286268) b!1756173))

(assert (= (and b!1756171 (not c!286268)) b!1756169))

(assert (= (and d!536474 (not res!790126)) b!1756170))

(assert (= (and b!1756170 res!790125) b!1756172))

(declare-fun m!2170981 () Bool)

(assert (=> d!536474 m!2170981))

(assert (=> d!536474 m!2170393))

(declare-fun m!2170983 () Bool)

(assert (=> b!1756170 m!2170983))

(assert (=> b!1756170 m!2170983))

(declare-fun m!2170985 () Bool)

(assert (=> b!1756170 m!2170985))

(assert (=> b!1756172 m!2170983))

(declare-fun m!2170987 () Bool)

(assert (=> b!1756173 m!2170987))

(declare-fun m!2170989 () Bool)

(assert (=> b!1756173 m!2170989))

(declare-fun m!2170991 () Bool)

(assert (=> b!1756173 m!2170991))

(assert (=> b!1755675 d!536474))

(declare-fun b!1756185 () Bool)

(declare-fun e!1123978 () Bool)

(declare-fun lt!678439 () List!19386)

(assert (=> b!1756185 (= e!1123978 (or (not (= (_2!10871 lt!678216) Nil!19316)) (= lt!678439 lt!678211)))))

(declare-fun b!1756182 () Bool)

(declare-fun e!1123977 () List!19386)

(assert (=> b!1756182 (= e!1123977 (_2!10871 lt!678216))))

(declare-fun d!536476 () Bool)

(assert (=> d!536476 e!1123978))

(declare-fun res!790131 () Bool)

(assert (=> d!536476 (=> (not res!790131) (not e!1123978))))

(declare-fun content!2780 (List!19386) (InoxSet C!9732))

(assert (=> d!536476 (= res!790131 (= (content!2780 lt!678439) ((_ map or) (content!2780 lt!678211) (content!2780 (_2!10871 lt!678216)))))))

(assert (=> d!536476 (= lt!678439 e!1123977)))

(declare-fun c!286271 () Bool)

(assert (=> d!536476 (= c!286271 ((_ is Nil!19316) lt!678211))))

(assert (=> d!536476 (= (++!5275 lt!678211 (_2!10871 lt!678216)) lt!678439)))

(declare-fun b!1756183 () Bool)

(assert (=> b!1756183 (= e!1123977 (Cons!19316 (h!24717 lt!678211) (++!5275 (t!163469 lt!678211) (_2!10871 lt!678216))))))

(declare-fun b!1756184 () Bool)

(declare-fun res!790132 () Bool)

(assert (=> b!1756184 (=> (not res!790132) (not e!1123978))))

(assert (=> b!1756184 (= res!790132 (= (size!15349 lt!678439) (+ (size!15349 lt!678211) (size!15349 (_2!10871 lt!678216)))))))

(assert (= (and d!536476 c!286271) b!1756182))

(assert (= (and d!536476 (not c!286271)) b!1756183))

(assert (= (and d!536476 res!790131) b!1756184))

(assert (= (and b!1756184 res!790132) b!1756185))

(declare-fun m!2170993 () Bool)

(assert (=> d!536476 m!2170993))

(declare-fun m!2170995 () Bool)

(assert (=> d!536476 m!2170995))

(declare-fun m!2170997 () Bool)

(assert (=> d!536476 m!2170997))

(declare-fun m!2170999 () Bool)

(assert (=> b!1756183 m!2170999))

(declare-fun m!2171001 () Bool)

(assert (=> b!1756184 m!2171001))

(assert (=> b!1756184 m!2170765))

(declare-fun m!2171003 () Bool)

(assert (=> b!1756184 m!2171003))

(assert (=> b!1755675 d!536476))

(declare-fun b!1756186 () Bool)

(declare-fun e!1123981 () Bool)

(declare-fun e!1123979 () Bool)

(assert (=> b!1756186 (= e!1123981 e!1123979)))

(declare-fun res!790135 () Bool)

(assert (=> b!1756186 (=> (not res!790135) (not e!1123979))))

(declare-fun lt!678443 () Option!3925)

(assert (=> b!1756186 (= res!790135 (isDefined!3268 lt!678443))))

(declare-fun b!1756187 () Bool)

(declare-fun res!790137 () Bool)

(assert (=> b!1756187 (=> (not res!790137) (not e!1123979))))

(assert (=> b!1756187 (= res!790137 (= (value!108026 (_1!10871 (get!5868 lt!678443))) (apply!5251 (transformation!3451 (rule!5465 (_1!10871 (get!5868 lt!678443)))) (seqFromList!2420 (originalCharacters!4265 (_1!10871 (get!5868 lt!678443)))))))))

(declare-fun b!1756188 () Bool)

(declare-fun res!790136 () Bool)

(assert (=> b!1756188 (=> (not res!790136) (not e!1123979))))

(assert (=> b!1756188 (= res!790136 (= (++!5275 (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678443)))) (_2!10871 (get!5868 lt!678443))) lt!678203))))

(declare-fun bm!110549 () Bool)

(declare-fun call!110554 () Option!3925)

(assert (=> bm!110549 (= call!110554 (maxPrefixOneRule!1003 thiss!24550 (h!24718 rules!3447) lt!678203))))

(declare-fun d!536478 () Bool)

(assert (=> d!536478 e!1123981))

(declare-fun res!790139 () Bool)

(assert (=> d!536478 (=> res!790139 e!1123981)))

(assert (=> d!536478 (= res!790139 (isEmpty!12186 lt!678443))))

(declare-fun e!1123980 () Option!3925)

(assert (=> d!536478 (= lt!678443 e!1123980)))

(declare-fun c!286272 () Bool)

(assert (=> d!536478 (= c!286272 (and ((_ is Cons!19317) rules!3447) ((_ is Nil!19317) (t!163470 rules!3447))))))

(declare-fun lt!678441 () Unit!33479)

(declare-fun lt!678442 () Unit!33479)

(assert (=> d!536478 (= lt!678441 lt!678442)))

(assert (=> d!536478 (isPrefix!1691 lt!678203 lt!678203)))

(assert (=> d!536478 (= lt!678442 (lemmaIsPrefixRefl!1118 lt!678203 lt!678203))))

(assert (=> d!536478 (rulesValidInductive!1156 thiss!24550 rules!3447)))

(assert (=> d!536478 (= (maxPrefix!1634 thiss!24550 rules!3447 lt!678203) lt!678443)))

(declare-fun b!1756189 () Bool)

(assert (=> b!1756189 (= e!1123979 (contains!3479 rules!3447 (rule!5465 (_1!10871 (get!5868 lt!678443)))))))

(declare-fun b!1756190 () Bool)

(declare-fun res!790133 () Bool)

(assert (=> b!1756190 (=> (not res!790133) (not e!1123979))))

(assert (=> b!1756190 (= res!790133 (matchR!2252 (regex!3451 (rule!5465 (_1!10871 (get!5868 lt!678443)))) (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678443))))))))

(declare-fun b!1756191 () Bool)

(declare-fun lt!678444 () Option!3925)

(declare-fun lt!678440 () Option!3925)

(assert (=> b!1756191 (= e!1123980 (ite (and ((_ is None!3924) lt!678444) ((_ is None!3924) lt!678440)) None!3924 (ite ((_ is None!3924) lt!678440) lt!678444 (ite ((_ is None!3924) lt!678444) lt!678440 (ite (>= (size!15346 (_1!10871 (v!25375 lt!678444))) (size!15346 (_1!10871 (v!25375 lt!678440)))) lt!678444 lt!678440)))))))

(assert (=> b!1756191 (= lt!678444 call!110554)))

(assert (=> b!1756191 (= lt!678440 (maxPrefix!1634 thiss!24550 (t!163470 rules!3447) lt!678203))))

(declare-fun b!1756192 () Bool)

(assert (=> b!1756192 (= e!1123980 call!110554)))

(declare-fun b!1756193 () Bool)

(declare-fun res!790138 () Bool)

(assert (=> b!1756193 (=> (not res!790138) (not e!1123979))))

(assert (=> b!1756193 (= res!790138 (= (list!7829 (charsOf!2100 (_1!10871 (get!5868 lt!678443)))) (originalCharacters!4265 (_1!10871 (get!5868 lt!678443)))))))

(declare-fun b!1756194 () Bool)

(declare-fun res!790134 () Bool)

(assert (=> b!1756194 (=> (not res!790134) (not e!1123979))))

(assert (=> b!1756194 (= res!790134 (< (size!15349 (_2!10871 (get!5868 lt!678443))) (size!15349 lt!678203)))))

(assert (= (and d!536478 c!286272) b!1756192))

(assert (= (and d!536478 (not c!286272)) b!1756191))

(assert (= (or b!1756192 b!1756191) bm!110549))

(assert (= (and d!536478 (not res!790139)) b!1756186))

(assert (= (and b!1756186 res!790135) b!1756193))

(assert (= (and b!1756193 res!790138) b!1756194))

(assert (= (and b!1756194 res!790134) b!1756188))

(assert (= (and b!1756188 res!790136) b!1756187))

(assert (= (and b!1756187 res!790137) b!1756190))

(assert (= (and b!1756190 res!790133) b!1756189))

(declare-fun m!2171005 () Bool)

(assert (=> b!1756188 m!2171005))

(declare-fun m!2171007 () Bool)

(assert (=> b!1756188 m!2171007))

(assert (=> b!1756188 m!2171007))

(declare-fun m!2171009 () Bool)

(assert (=> b!1756188 m!2171009))

(assert (=> b!1756188 m!2171009))

(declare-fun m!2171011 () Bool)

(assert (=> b!1756188 m!2171011))

(assert (=> b!1756194 m!2171005))

(declare-fun m!2171013 () Bool)

(assert (=> b!1756194 m!2171013))

(assert (=> b!1756194 m!2170763))

(declare-fun m!2171015 () Bool)

(assert (=> bm!110549 m!2171015))

(assert (=> b!1756187 m!2171005))

(declare-fun m!2171017 () Bool)

(assert (=> b!1756187 m!2171017))

(assert (=> b!1756187 m!2171017))

(declare-fun m!2171019 () Bool)

(assert (=> b!1756187 m!2171019))

(declare-fun m!2171021 () Bool)

(assert (=> b!1756186 m!2171021))

(declare-fun m!2171023 () Bool)

(assert (=> d!536478 m!2171023))

(declare-fun m!2171025 () Bool)

(assert (=> d!536478 m!2171025))

(declare-fun m!2171027 () Bool)

(assert (=> d!536478 m!2171027))

(assert (=> d!536478 m!2170587))

(assert (=> b!1756190 m!2171005))

(assert (=> b!1756190 m!2171007))

(assert (=> b!1756190 m!2171007))

(assert (=> b!1756190 m!2171009))

(assert (=> b!1756190 m!2171009))

(declare-fun m!2171029 () Bool)

(assert (=> b!1756190 m!2171029))

(assert (=> b!1756193 m!2171005))

(assert (=> b!1756193 m!2171007))

(assert (=> b!1756193 m!2171007))

(assert (=> b!1756193 m!2171009))

(assert (=> b!1756189 m!2171005))

(declare-fun m!2171031 () Bool)

(assert (=> b!1756189 m!2171031))

(declare-fun m!2171033 () Bool)

(assert (=> b!1756191 m!2171033))

(assert (=> b!1755675 d!536478))

(declare-fun d!536480 () Bool)

(assert (=> d!536480 (isPrefix!1691 lt!678211 (++!5275 lt!678211 (_2!10871 lt!678216)))))

(declare-fun lt!678447 () Unit!33479)

(declare-fun choose!10854 (List!19386 List!19386) Unit!33479)

(assert (=> d!536480 (= lt!678447 (choose!10854 lt!678211 (_2!10871 lt!678216)))))

(assert (=> d!536480 (= (lemmaConcatTwoListThenFirstIsPrefix!1200 lt!678211 (_2!10871 lt!678216)) lt!678447)))

(declare-fun bs!403830 () Bool)

(assert (= bs!403830 d!536480))

(assert (=> bs!403830 m!2170349))

(assert (=> bs!403830 m!2170349))

(declare-fun m!2171035 () Bool)

(assert (=> bs!403830 m!2171035))

(declare-fun m!2171037 () Bool)

(assert (=> bs!403830 m!2171037))

(assert (=> b!1755675 d!536480))

(declare-fun d!536482 () Bool)

(declare-fun e!1123983 () Bool)

(assert (=> d!536482 e!1123983))

(declare-fun res!790143 () Bool)

(assert (=> d!536482 (=> res!790143 e!1123983)))

(declare-fun lt!678448 () Bool)

(assert (=> d!536482 (= res!790143 (not lt!678448))))

(declare-fun e!1123982 () Bool)

(assert (=> d!536482 (= lt!678448 e!1123982)))

(declare-fun res!790140 () Bool)

(assert (=> d!536482 (=> res!790140 e!1123982)))

(assert (=> d!536482 (= res!790140 ((_ is Nil!19316) lt!678218))))

(assert (=> d!536482 (= (isPrefix!1691 lt!678218 lt!678203) lt!678448)))

(declare-fun b!1756197 () Bool)

(declare-fun e!1123984 () Bool)

(assert (=> b!1756197 (= e!1123984 (isPrefix!1691 (tail!2623 lt!678218) (tail!2623 lt!678203)))))

(declare-fun b!1756198 () Bool)

(assert (=> b!1756198 (= e!1123983 (>= (size!15349 lt!678203) (size!15349 lt!678218)))))

(declare-fun b!1756196 () Bool)

(declare-fun res!790141 () Bool)

(assert (=> b!1756196 (=> (not res!790141) (not e!1123984))))

(assert (=> b!1756196 (= res!790141 (= (head!4054 lt!678218) (head!4054 lt!678203)))))

(declare-fun b!1756195 () Bool)

(assert (=> b!1756195 (= e!1123982 e!1123984)))

(declare-fun res!790142 () Bool)

(assert (=> b!1756195 (=> (not res!790142) (not e!1123984))))

(assert (=> b!1756195 (= res!790142 (not ((_ is Nil!19316) lt!678203)))))

(assert (= (and d!536482 (not res!790140)) b!1756195))

(assert (= (and b!1756195 res!790142) b!1756196))

(assert (= (and b!1756196 res!790141) b!1756197))

(assert (= (and d!536482 (not res!790143)) b!1756198))

(assert (=> b!1756197 m!2170719))

(assert (=> b!1756197 m!2170759))

(assert (=> b!1756197 m!2170719))

(assert (=> b!1756197 m!2170759))

(declare-fun m!2171039 () Bool)

(assert (=> b!1756197 m!2171039))

(assert (=> b!1756198 m!2170763))

(assert (=> b!1756198 m!2170571))

(assert (=> b!1756196 m!2170717))

(assert (=> b!1756196 m!2170769))

(assert (=> b!1755675 d!536482))

(declare-fun d!536484 () Bool)

(declare-fun e!1123986 () Bool)

(assert (=> d!536484 e!1123986))

(declare-fun res!790147 () Bool)

(assert (=> d!536484 (=> res!790147 e!1123986)))

(declare-fun lt!678449 () Bool)

(assert (=> d!536484 (= res!790147 (not lt!678449))))

(declare-fun e!1123985 () Bool)

(assert (=> d!536484 (= lt!678449 e!1123985)))

(declare-fun res!790144 () Bool)

(assert (=> d!536484 (=> res!790144 e!1123985)))

(assert (=> d!536484 (= res!790144 ((_ is Nil!19316) lt!678211))))

(assert (=> d!536484 (= (isPrefix!1691 lt!678211 lt!678209) lt!678449)))

(declare-fun b!1756201 () Bool)

(declare-fun e!1123987 () Bool)

(assert (=> b!1756201 (= e!1123987 (isPrefix!1691 (tail!2623 lt!678211) (tail!2623 lt!678209)))))

(declare-fun b!1756202 () Bool)

(assert (=> b!1756202 (= e!1123986 (>= (size!15349 lt!678209) (size!15349 lt!678211)))))

(declare-fun b!1756200 () Bool)

(declare-fun res!790145 () Bool)

(assert (=> b!1756200 (=> (not res!790145) (not e!1123987))))

(assert (=> b!1756200 (= res!790145 (= (head!4054 lt!678211) (head!4054 lt!678209)))))

(declare-fun b!1756199 () Bool)

(assert (=> b!1756199 (= e!1123985 e!1123987)))

(declare-fun res!790146 () Bool)

(assert (=> b!1756199 (=> (not res!790146) (not e!1123987))))

(assert (=> b!1756199 (= res!790146 (not ((_ is Nil!19316) lt!678209)))))

(assert (= (and d!536484 (not res!790144)) b!1756199))

(assert (= (and b!1756199 res!790146) b!1756200))

(assert (= (and b!1756200 res!790145) b!1756201))

(assert (= (and d!536484 (not res!790147)) b!1756202))

(assert (=> b!1756201 m!2170757))

(declare-fun m!2171041 () Bool)

(assert (=> b!1756201 m!2171041))

(assert (=> b!1756201 m!2170757))

(assert (=> b!1756201 m!2171041))

(declare-fun m!2171043 () Bool)

(assert (=> b!1756201 m!2171043))

(declare-fun m!2171045 () Bool)

(assert (=> b!1756202 m!2171045))

(assert (=> b!1756202 m!2170765))

(assert (=> b!1756200 m!2170767))

(declare-fun m!2171047 () Bool)

(assert (=> b!1756200 m!2171047))

(assert (=> b!1755675 d!536484))

(declare-fun d!536486 () Bool)

(declare-fun lt!678450 () BalanceConc!12794)

(assert (=> d!536486 (= (list!7829 lt!678450) (originalCharacters!4265 (_1!10871 lt!678216)))))

(assert (=> d!536486 (= lt!678450 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))

(assert (=> d!536486 (= (charsOf!2100 (_1!10871 lt!678216)) lt!678450)))

(declare-fun b_lambda!56625 () Bool)

(assert (=> (not b_lambda!56625) (not d!536486)))

(assert (=> d!536486 t!163451))

(declare-fun b_and!131871 () Bool)

(assert (= b_and!131819 (and (=> t!163451 result!126898) b_and!131871)))

(assert (=> d!536486 t!163453))

(declare-fun b_and!131873 () Bool)

(assert (= b_and!131821 (and (=> t!163453 result!126902) b_and!131873)))

(assert (=> d!536486 t!163455))

(declare-fun b_and!131875 () Bool)

(assert (= b_and!131823 (and (=> t!163455 result!126904) b_and!131875)))

(declare-fun m!2171049 () Bool)

(assert (=> d!536486 m!2171049))

(assert (=> d!536486 m!2170397))

(assert (=> b!1755675 d!536486))

(declare-fun d!536488 () Bool)

(assert (=> d!536488 (= (list!7829 lt!678201) (list!7832 (c!286195 lt!678201)))))

(declare-fun bs!403831 () Bool)

(assert (= bs!403831 d!536488))

(declare-fun m!2171051 () Bool)

(assert (=> bs!403831 m!2171051))

(assert (=> b!1755675 d!536488))

(declare-fun lt!678451 () List!19386)

(declare-fun b!1756206 () Bool)

(declare-fun e!1123989 () Bool)

(assert (=> b!1756206 (= e!1123989 (or (not (= suffix!1421 Nil!19316)) (= lt!678451 lt!678218)))))

(declare-fun b!1756203 () Bool)

(declare-fun e!1123988 () List!19386)

(assert (=> b!1756203 (= e!1123988 suffix!1421)))

(declare-fun d!536490 () Bool)

(assert (=> d!536490 e!1123989))

(declare-fun res!790148 () Bool)

(assert (=> d!536490 (=> (not res!790148) (not e!1123989))))

(assert (=> d!536490 (= res!790148 (= (content!2780 lt!678451) ((_ map or) (content!2780 lt!678218) (content!2780 suffix!1421))))))

(assert (=> d!536490 (= lt!678451 e!1123988)))

(declare-fun c!286273 () Bool)

(assert (=> d!536490 (= c!286273 ((_ is Nil!19316) lt!678218))))

(assert (=> d!536490 (= (++!5275 lt!678218 suffix!1421) lt!678451)))

(declare-fun b!1756204 () Bool)

(assert (=> b!1756204 (= e!1123988 (Cons!19316 (h!24717 lt!678218) (++!5275 (t!163469 lt!678218) suffix!1421)))))

(declare-fun b!1756205 () Bool)

(declare-fun res!790149 () Bool)

(assert (=> b!1756205 (=> (not res!790149) (not e!1123989))))

(assert (=> b!1756205 (= res!790149 (= (size!15349 lt!678451) (+ (size!15349 lt!678218) (size!15349 suffix!1421))))))

(assert (= (and d!536490 c!286273) b!1756203))

(assert (= (and d!536490 (not c!286273)) b!1756204))

(assert (= (and d!536490 res!790148) b!1756205))

(assert (= (and b!1756205 res!790149) b!1756206))

(declare-fun m!2171053 () Bool)

(assert (=> d!536490 m!2171053))

(declare-fun m!2171055 () Bool)

(assert (=> d!536490 m!2171055))

(declare-fun m!2171057 () Bool)

(assert (=> d!536490 m!2171057))

(declare-fun m!2171059 () Bool)

(assert (=> b!1756204 m!2171059))

(declare-fun m!2171061 () Bool)

(assert (=> b!1756205 m!2171061))

(assert (=> b!1756205 m!2170571))

(declare-fun m!2171063 () Bool)

(assert (=> b!1756205 m!2171063))

(assert (=> b!1755675 d!536490))

(declare-fun d!536492 () Bool)

(declare-fun e!1123992 () Bool)

(assert (=> d!536492 e!1123992))

(declare-fun res!790154 () Bool)

(assert (=> d!536492 (=> (not res!790154) (not e!1123992))))

(assert (=> d!536492 (= res!790154 (isDefined!3267 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 (_1!10871 lt!678216))))))))

(declare-fun lt!678454 () Unit!33479)

(declare-fun choose!10855 (LexerInterface!3080 List!19387 List!19386 Token!6468) Unit!33479)

(assert (=> d!536492 (= lt!678454 (choose!10855 thiss!24550 rules!3447 lt!678203 (_1!10871 lt!678216)))))

(assert (=> d!536492 (rulesInvariant!2749 thiss!24550 rules!3447)))

(assert (=> d!536492 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!499 thiss!24550 rules!3447 lt!678203 (_1!10871 lt!678216)) lt!678454)))

(declare-fun b!1756211 () Bool)

(declare-fun res!790155 () Bool)

(assert (=> b!1756211 (=> (not res!790155) (not e!1123992))))

(assert (=> b!1756211 (= res!790155 (matchR!2252 (regex!3451 (get!5867 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 (_1!10871 lt!678216)))))) (list!7829 (charsOf!2100 (_1!10871 lt!678216)))))))

(declare-fun b!1756212 () Bool)

(assert (=> b!1756212 (= e!1123992 (= (rule!5465 (_1!10871 lt!678216)) (get!5867 (getRuleFromTag!499 thiss!24550 rules!3447 (tag!3807 (rule!5465 (_1!10871 lt!678216)))))))))

(assert (= (and d!536492 res!790154) b!1756211))

(assert (= (and b!1756211 res!790155) b!1756212))

(assert (=> d!536492 m!2170341))

(assert (=> d!536492 m!2170341))

(declare-fun m!2171065 () Bool)

(assert (=> d!536492 m!2171065))

(declare-fun m!2171067 () Bool)

(assert (=> d!536492 m!2171067))

(assert (=> d!536492 m!2170393))

(assert (=> b!1756211 m!2170371))

(declare-fun m!2171069 () Bool)

(assert (=> b!1756211 m!2171069))

(assert (=> b!1756211 m!2170347))

(assert (=> b!1756211 m!2170371))

(assert (=> b!1756211 m!2170341))

(declare-fun m!2171071 () Bool)

(assert (=> b!1756211 m!2171071))

(assert (=> b!1756211 m!2170347))

(assert (=> b!1756211 m!2170341))

(assert (=> b!1756212 m!2170341))

(assert (=> b!1756212 m!2170341))

(assert (=> b!1756212 m!2171071))

(assert (=> b!1755675 d!536492))

(declare-fun d!536494 () Bool)

(assert (=> d!536494 (isPrefix!1691 lt!678218 (++!5275 lt!678218 suffix!1421))))

(declare-fun lt!678455 () Unit!33479)

(assert (=> d!536494 (= lt!678455 (choose!10854 lt!678218 suffix!1421))))

(assert (=> d!536494 (= (lemmaConcatTwoListThenFirstIsPrefix!1200 lt!678218 suffix!1421) lt!678455)))

(declare-fun bs!403832 () Bool)

(assert (= bs!403832 d!536494))

(assert (=> bs!403832 m!2170367))

(assert (=> bs!403832 m!2170367))

(declare-fun m!2171073 () Bool)

(assert (=> bs!403832 m!2171073))

(declare-fun m!2171075 () Bool)

(assert (=> bs!403832 m!2171075))

(assert (=> b!1755675 d!536494))

(declare-fun b!1756223 () Bool)

(declare-fun e!1124000 () Bool)

(declare-fun inv!16 (TokenValue!3541) Bool)

(assert (=> b!1756223 (= e!1124000 (inv!16 (value!108026 token!523)))))

(declare-fun b!1756224 () Bool)

(declare-fun e!1123999 () Bool)

(declare-fun inv!17 (TokenValue!3541) Bool)

(assert (=> b!1756224 (= e!1123999 (inv!17 (value!108026 token!523)))))

(declare-fun b!1756225 () Bool)

(declare-fun res!790158 () Bool)

(declare-fun e!1124001 () Bool)

(assert (=> b!1756225 (=> res!790158 e!1124001)))

(assert (=> b!1756225 (= res!790158 (not ((_ is IntegerValue!10625) (value!108026 token!523))))))

(assert (=> b!1756225 (= e!1123999 e!1124001)))

(declare-fun b!1756226 () Bool)

(assert (=> b!1756226 (= e!1124000 e!1123999)))

(declare-fun c!286278 () Bool)

(assert (=> b!1756226 (= c!286278 ((_ is IntegerValue!10624) (value!108026 token!523)))))

(declare-fun b!1756227 () Bool)

(declare-fun inv!15 (TokenValue!3541) Bool)

(assert (=> b!1756227 (= e!1124001 (inv!15 (value!108026 token!523)))))

(declare-fun d!536496 () Bool)

(declare-fun c!286279 () Bool)

(assert (=> d!536496 (= c!286279 ((_ is IntegerValue!10623) (value!108026 token!523)))))

(assert (=> d!536496 (= (inv!21 (value!108026 token!523)) e!1124000)))

(assert (= (and d!536496 c!286279) b!1756223))

(assert (= (and d!536496 (not c!286279)) b!1756226))

(assert (= (and b!1756226 c!286278) b!1756224))

(assert (= (and b!1756226 (not c!286278)) b!1756225))

(assert (= (and b!1756225 (not res!790158)) b!1756227))

(declare-fun m!2171077 () Bool)

(assert (=> b!1756223 m!2171077))

(declare-fun m!2171079 () Bool)

(assert (=> b!1756224 m!2171079))

(declare-fun m!2171081 () Bool)

(assert (=> b!1756227 m!2171081))

(assert (=> b!1755670 d!536496))

(declare-fun d!536498 () Bool)

(declare-fun e!1124002 () Bool)

(assert (=> d!536498 e!1124002))

(declare-fun c!286282 () Bool)

(assert (=> d!536498 (= c!286282 ((_ is EmptyExpr!4779) (regex!3451 lt!678220)))))

(declare-fun lt!678456 () Bool)

(declare-fun e!1124006 () Bool)

(assert (=> d!536498 (= lt!678456 e!1124006)))

(declare-fun c!286280 () Bool)

(assert (=> d!536498 (= c!286280 (isEmpty!12182 (list!7829 (charsOf!2100 (_1!10871 lt!678216)))))))

(assert (=> d!536498 (validRegex!1925 (regex!3451 lt!678220))))

(assert (=> d!536498 (= (matchR!2252 (regex!3451 lt!678220) (list!7829 (charsOf!2100 (_1!10871 lt!678216)))) lt!678456)))

(declare-fun b!1756228 () Bool)

(declare-fun e!1124008 () Bool)

(assert (=> b!1756228 (= e!1124008 (not lt!678456))))

(declare-fun b!1756229 () Bool)

(declare-fun res!790164 () Bool)

(declare-fun e!1124003 () Bool)

(assert (=> b!1756229 (=> res!790164 e!1124003)))

(declare-fun e!1124005 () Bool)

(assert (=> b!1756229 (= res!790164 e!1124005)))

(declare-fun res!790159 () Bool)

(assert (=> b!1756229 (=> (not res!790159) (not e!1124005))))

(assert (=> b!1756229 (= res!790159 lt!678456)))

(declare-fun b!1756230 () Bool)

(declare-fun res!790162 () Bool)

(assert (=> b!1756230 (=> res!790162 e!1124003)))

(assert (=> b!1756230 (= res!790162 (not ((_ is ElementMatch!4779) (regex!3451 lt!678220))))))

(assert (=> b!1756230 (= e!1124008 e!1124003)))

(declare-fun b!1756231 () Bool)

(assert (=> b!1756231 (= e!1124006 (nullable!1451 (regex!3451 lt!678220)))))

(declare-fun b!1756232 () Bool)

(declare-fun res!790160 () Bool)

(declare-fun e!1124007 () Bool)

(assert (=> b!1756232 (=> res!790160 e!1124007)))

(assert (=> b!1756232 (= res!790160 (not (isEmpty!12182 (tail!2623 (list!7829 (charsOf!2100 (_1!10871 lt!678216)))))))))

(declare-fun b!1756233 () Bool)

(declare-fun e!1124004 () Bool)

(assert (=> b!1756233 (= e!1124004 e!1124007)))

(declare-fun res!790161 () Bool)

(assert (=> b!1756233 (=> res!790161 e!1124007)))

(declare-fun call!110555 () Bool)

(assert (=> b!1756233 (= res!790161 call!110555)))

(declare-fun b!1756234 () Bool)

(assert (=> b!1756234 (= e!1124002 e!1124008)))

(declare-fun c!286281 () Bool)

(assert (=> b!1756234 (= c!286281 ((_ is EmptyLang!4779) (regex!3451 lt!678220)))))

(declare-fun b!1756235 () Bool)

(assert (=> b!1756235 (= e!1124002 (= lt!678456 call!110555))))

(declare-fun b!1756236 () Bool)

(declare-fun res!790165 () Bool)

(assert (=> b!1756236 (=> (not res!790165) (not e!1124005))))

(assert (=> b!1756236 (= res!790165 (not call!110555))))

(declare-fun b!1756237 () Bool)

(assert (=> b!1756237 (= e!1124007 (not (= (head!4054 (list!7829 (charsOf!2100 (_1!10871 lt!678216)))) (c!286194 (regex!3451 lt!678220)))))))

(declare-fun b!1756238 () Bool)

(declare-fun res!790166 () Bool)

(assert (=> b!1756238 (=> (not res!790166) (not e!1124005))))

(assert (=> b!1756238 (= res!790166 (isEmpty!12182 (tail!2623 (list!7829 (charsOf!2100 (_1!10871 lt!678216))))))))

(declare-fun b!1756239 () Bool)

(assert (=> b!1756239 (= e!1124005 (= (head!4054 (list!7829 (charsOf!2100 (_1!10871 lt!678216)))) (c!286194 (regex!3451 lt!678220))))))

(declare-fun b!1756240 () Bool)

(assert (=> b!1756240 (= e!1124006 (matchR!2252 (derivativeStep!1220 (regex!3451 lt!678220) (head!4054 (list!7829 (charsOf!2100 (_1!10871 lt!678216))))) (tail!2623 (list!7829 (charsOf!2100 (_1!10871 lt!678216))))))))

(declare-fun b!1756241 () Bool)

(assert (=> b!1756241 (= e!1124003 e!1124004)))

(declare-fun res!790163 () Bool)

(assert (=> b!1756241 (=> (not res!790163) (not e!1124004))))

(assert (=> b!1756241 (= res!790163 (not lt!678456))))

(declare-fun bm!110550 () Bool)

(assert (=> bm!110550 (= call!110555 (isEmpty!12182 (list!7829 (charsOf!2100 (_1!10871 lt!678216)))))))

(assert (= (and d!536498 c!286280) b!1756231))

(assert (= (and d!536498 (not c!286280)) b!1756240))

(assert (= (and d!536498 c!286282) b!1756235))

(assert (= (and d!536498 (not c!286282)) b!1756234))

(assert (= (and b!1756234 c!286281) b!1756228))

(assert (= (and b!1756234 (not c!286281)) b!1756230))

(assert (= (and b!1756230 (not res!790162)) b!1756229))

(assert (= (and b!1756229 res!790159) b!1756236))

(assert (= (and b!1756236 res!790165) b!1756238))

(assert (= (and b!1756238 res!790166) b!1756239))

(assert (= (and b!1756229 (not res!790164)) b!1756241))

(assert (= (and b!1756241 res!790163) b!1756233))

(assert (= (and b!1756233 (not res!790161)) b!1756232))

(assert (= (and b!1756232 (not res!790160)) b!1756237))

(assert (= (or b!1756235 b!1756233 b!1756236) bm!110550))

(assert (=> d!536498 m!2170371))

(declare-fun m!2171083 () Bool)

(assert (=> d!536498 m!2171083))

(declare-fun m!2171085 () Bool)

(assert (=> d!536498 m!2171085))

(assert (=> b!1756239 m!2170371))

(declare-fun m!2171087 () Bool)

(assert (=> b!1756239 m!2171087))

(assert (=> b!1756238 m!2170371))

(declare-fun m!2171089 () Bool)

(assert (=> b!1756238 m!2171089))

(assert (=> b!1756238 m!2171089))

(declare-fun m!2171091 () Bool)

(assert (=> b!1756238 m!2171091))

(declare-fun m!2171093 () Bool)

(assert (=> b!1756231 m!2171093))

(assert (=> b!1756232 m!2170371))

(assert (=> b!1756232 m!2171089))

(assert (=> b!1756232 m!2171089))

(assert (=> b!1756232 m!2171091))

(assert (=> bm!110550 m!2170371))

(assert (=> bm!110550 m!2171083))

(assert (=> b!1756240 m!2170371))

(assert (=> b!1756240 m!2171087))

(assert (=> b!1756240 m!2171087))

(declare-fun m!2171095 () Bool)

(assert (=> b!1756240 m!2171095))

(assert (=> b!1756240 m!2170371))

(assert (=> b!1756240 m!2171089))

(assert (=> b!1756240 m!2171095))

(assert (=> b!1756240 m!2171089))

(declare-fun m!2171097 () Bool)

(assert (=> b!1756240 m!2171097))

(assert (=> b!1756237 m!2170371))

(assert (=> b!1756237 m!2171087))

(assert (=> b!1755671 d!536498))

(declare-fun d!536500 () Bool)

(assert (=> d!536500 (= (list!7829 (charsOf!2100 (_1!10871 lt!678216))) (list!7832 (c!286195 (charsOf!2100 (_1!10871 lt!678216)))))))

(declare-fun bs!403833 () Bool)

(assert (= bs!403833 d!536500))

(declare-fun m!2171099 () Bool)

(assert (=> bs!403833 m!2171099))

(assert (=> b!1755671 d!536500))

(assert (=> b!1755671 d!536486))

(declare-fun d!536502 () Bool)

(assert (=> d!536502 (= (get!5867 lt!678217) (v!25374 lt!678217))))

(assert (=> b!1755671 d!536502))

(declare-fun d!536504 () Bool)

(assert (=> d!536504 (= (inv!25076 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))) (isBalanced!2004 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))))

(declare-fun bs!403834 () Bool)

(assert (= bs!403834 d!536504))

(declare-fun m!2171101 () Bool)

(assert (=> bs!403834 m!2171101))

(assert (=> tb!105487 d!536504))

(declare-fun d!536506 () Bool)

(declare-fun lt!678459 () Int)

(assert (=> d!536506 (= lt!678459 (size!15349 (list!7829 lt!678201)))))

(declare-fun size!15351 (Conc!6425) Int)

(assert (=> d!536506 (= lt!678459 (size!15351 (c!286195 lt!678201)))))

(assert (=> d!536506 (= (size!15347 lt!678201) lt!678459)))

(declare-fun bs!403835 () Bool)

(assert (= bs!403835 d!536506))

(assert (=> bs!403835 m!2170343))

(assert (=> bs!403835 m!2170343))

(declare-fun m!2171103 () Bool)

(assert (=> bs!403835 m!2171103))

(declare-fun m!2171105 () Bool)

(assert (=> bs!403835 m!2171105))

(assert (=> b!1755672 d!536506))

(declare-fun d!536508 () Bool)

(assert (=> d!536508 (= (apply!5251 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))

(declare-fun b_lambda!56627 () Bool)

(assert (=> (not b_lambda!56627) (not d!536508)))

(assert (=> d!536508 t!163463))

(declare-fun b_and!131877 () Bool)

(assert (= b_and!131807 (and (=> t!163463 result!126912) b_and!131877)))

(assert (=> d!536508 t!163465))

(declare-fun b_and!131879 () Bool)

(assert (= b_and!131809 (and (=> t!163465 result!126916) b_and!131879)))

(assert (=> d!536508 t!163467))

(declare-fun b_and!131881 () Bool)

(assert (= b_and!131811 (and (=> t!163467 result!126918) b_and!131881)))

(assert (=> d!536508 m!2170433))

(assert (=> b!1755672 d!536508))

(declare-fun d!536510 () Bool)

(declare-fun fromListB!1100 (List!19386) BalanceConc!12794)

(assert (=> d!536510 (= (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216))) (fromListB!1100 (originalCharacters!4265 (_1!10871 lt!678216))))))

(declare-fun bs!403836 () Bool)

(assert (= bs!403836 d!536510))

(declare-fun m!2171107 () Bool)

(assert (=> bs!403836 m!2171107))

(assert (=> b!1755672 d!536510))

(declare-fun d!536512 () Bool)

(assert (=> d!536512 (= (size!15346 (_1!10871 lt!678216)) (size!15349 (originalCharacters!4265 (_1!10871 lt!678216))))))

(declare-fun Unit!33487 () Unit!33479)

(assert (=> d!536512 (= (lemmaCharactersSize!509 (_1!10871 lt!678216)) Unit!33487)))

(declare-fun bs!403837 () Bool)

(assert (= bs!403837 d!536512))

(declare-fun m!2171109 () Bool)

(assert (=> bs!403837 m!2171109))

(assert (=> b!1755672 d!536512))

(declare-fun b!1756248 () Bool)

(declare-fun e!1124013 () Bool)

(assert (=> b!1756248 (= e!1124013 true)))

(declare-fun d!536514 () Bool)

(assert (=> d!536514 e!1124013))

(assert (= d!536514 b!1756248))

(declare-fun lambda!70016 () Int)

(declare-fun order!12199 () Int)

(declare-fun dynLambda!9265 (Int Int) Int)

(assert (=> b!1756248 (< (dynLambda!9259 order!12191 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9265 order!12199 lambda!70016))))

(assert (=> b!1756248 (< (dynLambda!9261 order!12195 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9265 order!12199 lambda!70016))))

(assert (=> d!536514 (= (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216)))))))

(declare-fun lt!678462 () Unit!33479)

(declare-fun Forall2of!113 (Int BalanceConc!12794 BalanceConc!12794) Unit!33479)

(assert (=> d!536514 (= lt!678462 (Forall2of!113 lambda!70016 lt!678201 (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216)))))))

(assert (=> d!536514 (= (list!7829 lt!678201) (list!7829 (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216)))))))

(assert (=> d!536514 (= (lemmaEqSameImage!362 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201 (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216)))) lt!678462)))

(declare-fun b_lambda!56629 () Bool)

(assert (=> (not b_lambda!56629) (not d!536514)))

(assert (=> d!536514 t!163463))

(declare-fun b_and!131883 () Bool)

(assert (= b_and!131877 (and (=> t!163463 result!126912) b_and!131883)))

(assert (=> d!536514 t!163465))

(declare-fun b_and!131885 () Bool)

(assert (= b_and!131879 (and (=> t!163465 result!126916) b_and!131885)))

(assert (=> d!536514 t!163467))

(declare-fun b_and!131887 () Bool)

(assert (= b_and!131881 (and (=> t!163467 result!126918) b_and!131887)))

(declare-fun b_lambda!56631 () Bool)

(assert (=> (not b_lambda!56631) (not d!536514)))

(declare-fun t!163501 () Bool)

(declare-fun tb!105533 () Bool)

(assert (=> (and b!1755685 (= (toValue!4970 (transformation!3451 (rule!5465 token!523))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163501) tb!105533))

(declare-fun result!126956 () Bool)

(assert (=> tb!105533 (= result!126956 (inv!21 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (seqFromList!2420 (originalCharacters!4265 (_1!10871 lt!678216))))))))

(declare-fun m!2171111 () Bool)

(assert (=> tb!105533 m!2171111))

(assert (=> d!536514 t!163501))

(declare-fun b_and!131889 () Bool)

(assert (= b_and!131883 (and (=> t!163501 result!126956) b_and!131889)))

(declare-fun tb!105535 () Bool)

(declare-fun t!163503 () Bool)

(assert (=> (and b!1755695 (= (toValue!4970 (transformation!3451 rule!422)) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163503) tb!105535))

(declare-fun result!126958 () Bool)

(assert (= result!126958 result!126956))

(assert (=> d!536514 t!163503))

(declare-fun b_and!131891 () Bool)

(assert (= b_and!131885 (and (=> t!163503 result!126958) b_and!131891)))

(declare-fun tb!105537 () Bool)

(declare-fun t!163505 () Bool)

(assert (=> (and b!1755680 (= (toValue!4970 (transformation!3451 (h!24718 rules!3447))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163505) tb!105537))

(declare-fun result!126960 () Bool)

(assert (= result!126960 result!126956))

(assert (=> d!536514 t!163505))

(declare-fun b_and!131893 () Bool)

(assert (= b_and!131887 (and (=> t!163505 result!126960) b_and!131893)))

(assert (=> d!536514 m!2170383))

(declare-fun m!2171113 () Bool)

(assert (=> d!536514 m!2171113))

(assert (=> d!536514 m!2170433))

(assert (=> d!536514 m!2170383))

(declare-fun m!2171115 () Bool)

(assert (=> d!536514 m!2171115))

(assert (=> d!536514 m!2170383))

(declare-fun m!2171117 () Bool)

(assert (=> d!536514 m!2171117))

(assert (=> d!536514 m!2170343))

(assert (=> b!1755672 d!536514))

(declare-fun d!536516 () Bool)

(assert (=> d!536516 (= (isEmpty!12182 suffix!1421) ((_ is Nil!19316) suffix!1421))))

(assert (=> b!1755689 d!536516))

(declare-fun d!536518 () Bool)

(assert (=> d!536518 (= (list!7829 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))) (list!7832 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))))

(declare-fun bs!403838 () Bool)

(assert (= bs!403838 d!536518))

(declare-fun m!2171119 () Bool)

(assert (=> bs!403838 m!2171119))

(assert (=> b!1755690 d!536518))

(declare-fun bs!403839 () Bool)

(declare-fun d!536520 () Bool)

(assert (= bs!403839 (and d!536520 b!1755688)))

(declare-fun lambda!70019 () Int)

(assert (=> bs!403839 (= lambda!70019 lambda!70004)))

(declare-fun b!1756253 () Bool)

(declare-fun e!1124017 () Bool)

(assert (=> b!1756253 (= e!1124017 true)))

(assert (=> d!536520 e!1124017))

(assert (= d!536520 b!1756253))

(assert (=> b!1756253 (< (dynLambda!9259 order!12191 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9260 order!12193 lambda!70019))))

(assert (=> b!1756253 (< (dynLambda!9261 order!12195 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) (dynLambda!9260 order!12193 lambda!70019))))

(assert (=> d!536520 (= (list!7829 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))) (list!7829 lt!678201))))

(declare-fun lt!678465 () Unit!33479)

(declare-fun ForallOf!304 (Int BalanceConc!12794) Unit!33479)

(assert (=> d!536520 (= lt!678465 (ForallOf!304 lambda!70019 lt!678201))))

(assert (=> d!536520 (= (lemmaSemiInverse!589 (transformation!3451 (rule!5465 (_1!10871 lt!678216))) lt!678201) lt!678465)))

(declare-fun b_lambda!56633 () Bool)

(assert (=> (not b_lambda!56633) (not d!536520)))

(assert (=> d!536520 t!163457))

(declare-fun b_and!131895 () Bool)

(assert (= b_and!131871 (and (=> t!163457 result!126906) b_and!131895)))

(assert (=> d!536520 t!163459))

(declare-fun b_and!131897 () Bool)

(assert (= b_and!131873 (and (=> t!163459 result!126908) b_and!131897)))

(assert (=> d!536520 t!163461))

(declare-fun b_and!131899 () Bool)

(assert (= b_and!131875 (and (=> t!163461 result!126910) b_and!131899)))

(declare-fun b_lambda!56635 () Bool)

(assert (=> (not b_lambda!56635) (not d!536520)))

(assert (=> d!536520 t!163463))

(declare-fun b_and!131901 () Bool)

(assert (= b_and!131889 (and (=> t!163463 result!126912) b_and!131901)))

(assert (=> d!536520 t!163465))

(declare-fun b_and!131903 () Bool)

(assert (= b_and!131891 (and (=> t!163465 result!126916) b_and!131903)))

(assert (=> d!536520 t!163467))

(declare-fun b_and!131905 () Bool)

(assert (= b_and!131893 (and (=> t!163467 result!126918) b_and!131905)))

(assert (=> d!536520 m!2170433))

(assert (=> d!536520 m!2170435))

(assert (=> d!536520 m!2170343))

(assert (=> d!536520 m!2170435))

(assert (=> d!536520 m!2170437))

(assert (=> d!536520 m!2170433))

(declare-fun m!2171121 () Bool)

(assert (=> d!536520 m!2171121))

(assert (=> b!1755690 d!536520))

(declare-fun d!536522 () Bool)

(declare-fun res!790173 () Bool)

(declare-fun e!1124020 () Bool)

(assert (=> d!536522 (=> (not res!790173) (not e!1124020))))

(assert (=> d!536522 (= res!790173 (not (isEmpty!12182 (originalCharacters!4265 token!523))))))

(assert (=> d!536522 (= (inv!25074 token!523) e!1124020)))

(declare-fun b!1756258 () Bool)

(declare-fun res!790174 () Bool)

(assert (=> b!1756258 (=> (not res!790174) (not e!1124020))))

(assert (=> b!1756258 (= res!790174 (= (originalCharacters!4265 token!523) (list!7829 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 token!523))) (value!108026 token!523)))))))

(declare-fun b!1756259 () Bool)

(assert (=> b!1756259 (= e!1124020 (= (size!15346 token!523) (size!15349 (originalCharacters!4265 token!523))))))

(assert (= (and d!536522 res!790173) b!1756258))

(assert (= (and b!1756258 res!790174) b!1756259))

(declare-fun b_lambda!56637 () Bool)

(assert (=> (not b_lambda!56637) (not b!1756258)))

(assert (=> b!1756258 t!163472))

(declare-fun b_and!131907 () Bool)

(assert (= b_and!131895 (and (=> t!163472 result!126920) b_and!131907)))

(assert (=> b!1756258 t!163474))

(declare-fun b_and!131909 () Bool)

(assert (= b_and!131897 (and (=> t!163474 result!126922) b_and!131909)))

(assert (=> b!1756258 t!163476))

(declare-fun b_and!131911 () Bool)

(assert (= b_and!131899 (and (=> t!163476 result!126924) b_and!131911)))

(declare-fun m!2171123 () Bool)

(assert (=> d!536522 m!2171123))

(assert (=> b!1756258 m!2170603))

(assert (=> b!1756258 m!2170603))

(declare-fun m!2171125 () Bool)

(assert (=> b!1756258 m!2171125))

(declare-fun m!2171127 () Bool)

(assert (=> b!1756259 m!2171127))

(assert (=> start!173310 d!536522))

(declare-fun d!536524 () Bool)

(declare-fun c!286287 () Bool)

(assert (=> d!536524 (= c!286287 (isEmpty!12182 (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316))))))

(declare-fun e!1124023 () Bool)

(assert (=> d!536524 (= (prefixMatch!662 (rulesRegex!807 thiss!24550 rules!3447) (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316))) e!1124023)))

(declare-fun b!1756264 () Bool)

(declare-fun lostCause!562 (Regex!4779) Bool)

(assert (=> b!1756264 (= e!1124023 (not (lostCause!562 (rulesRegex!807 thiss!24550 rules!3447))))))

(declare-fun b!1756265 () Bool)

(assert (=> b!1756265 (= e!1124023 (prefixMatch!662 (derivativeStep!1220 (rulesRegex!807 thiss!24550 rules!3447) (head!4054 (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316)))) (tail!2623 (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316)))))))

(assert (= (and d!536524 c!286287) b!1756264))

(assert (= (and d!536524 (not c!286287)) b!1756265))

(assert (=> d!536524 m!2170335))

(declare-fun m!2171129 () Bool)

(assert (=> d!536524 m!2171129))

(assert (=> b!1756264 m!2170331))

(declare-fun m!2171131 () Bool)

(assert (=> b!1756264 m!2171131))

(assert (=> b!1756265 m!2170335))

(declare-fun m!2171133 () Bool)

(assert (=> b!1756265 m!2171133))

(assert (=> b!1756265 m!2170331))

(assert (=> b!1756265 m!2171133))

(declare-fun m!2171135 () Bool)

(assert (=> b!1756265 m!2171135))

(assert (=> b!1756265 m!2170335))

(declare-fun m!2171137 () Bool)

(assert (=> b!1756265 m!2171137))

(assert (=> b!1756265 m!2171135))

(assert (=> b!1756265 m!2171137))

(declare-fun m!2171139 () Bool)

(assert (=> b!1756265 m!2171139))

(assert (=> b!1755669 d!536524))

(declare-fun d!536526 () Bool)

(declare-fun lt!678468 () Unit!33479)

(declare-fun lemma!375 (List!19387 LexerInterface!3080 List!19387) Unit!33479)

(assert (=> d!536526 (= lt!678468 (lemma!375 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70022 () Int)

(declare-datatypes ((List!19393 0))(
  ( (Nil!19323) (Cons!19323 (h!24724 Regex!4779) (t!163520 List!19393)) )
))
(declare-fun generalisedUnion!383 (List!19393) Regex!4779)

(declare-fun map!3980 (List!19387 Int) List!19393)

(assert (=> d!536526 (= (rulesRegex!807 thiss!24550 rules!3447) (generalisedUnion!383 (map!3980 rules!3447 lambda!70022)))))

(declare-fun bs!403840 () Bool)

(assert (= bs!403840 d!536526))

(declare-fun m!2171141 () Bool)

(assert (=> bs!403840 m!2171141))

(declare-fun m!2171143 () Bool)

(assert (=> bs!403840 m!2171143))

(assert (=> bs!403840 m!2171143))

(declare-fun m!2171145 () Bool)

(assert (=> bs!403840 m!2171145))

(assert (=> b!1755669 d!536526))

(declare-fun e!1124025 () Bool)

(declare-fun lt!678469 () List!19386)

(declare-fun b!1756269 () Bool)

(assert (=> b!1756269 (= e!1124025 (or (not (= (Cons!19316 (head!4054 suffix!1421) Nil!19316) Nil!19316)) (= lt!678469 lt!678218)))))

(declare-fun b!1756266 () Bool)

(declare-fun e!1124024 () List!19386)

(assert (=> b!1756266 (= e!1124024 (Cons!19316 (head!4054 suffix!1421) Nil!19316))))

(declare-fun d!536528 () Bool)

(assert (=> d!536528 e!1124025))

(declare-fun res!790175 () Bool)

(assert (=> d!536528 (=> (not res!790175) (not e!1124025))))

(assert (=> d!536528 (= res!790175 (= (content!2780 lt!678469) ((_ map or) (content!2780 lt!678218) (content!2780 (Cons!19316 (head!4054 suffix!1421) Nil!19316)))))))

(assert (=> d!536528 (= lt!678469 e!1124024)))

(declare-fun c!286288 () Bool)

(assert (=> d!536528 (= c!286288 ((_ is Nil!19316) lt!678218))))

(assert (=> d!536528 (= (++!5275 lt!678218 (Cons!19316 (head!4054 suffix!1421) Nil!19316)) lt!678469)))

(declare-fun b!1756267 () Bool)

(assert (=> b!1756267 (= e!1124024 (Cons!19316 (h!24717 lt!678218) (++!5275 (t!163469 lt!678218) (Cons!19316 (head!4054 suffix!1421) Nil!19316))))))

(declare-fun b!1756268 () Bool)

(declare-fun res!790176 () Bool)

(assert (=> b!1756268 (=> (not res!790176) (not e!1124025))))

(assert (=> b!1756268 (= res!790176 (= (size!15349 lt!678469) (+ (size!15349 lt!678218) (size!15349 (Cons!19316 (head!4054 suffix!1421) Nil!19316)))))))

(assert (= (and d!536528 c!286288) b!1756266))

(assert (= (and d!536528 (not c!286288)) b!1756267))

(assert (= (and d!536528 res!790175) b!1756268))

(assert (= (and b!1756268 res!790176) b!1756269))

(declare-fun m!2171147 () Bool)

(assert (=> d!536528 m!2171147))

(assert (=> d!536528 m!2171055))

(declare-fun m!2171149 () Bool)

(assert (=> d!536528 m!2171149))

(declare-fun m!2171151 () Bool)

(assert (=> b!1756267 m!2171151))

(declare-fun m!2171153 () Bool)

(assert (=> b!1756268 m!2171153))

(assert (=> b!1756268 m!2170571))

(declare-fun m!2171155 () Bool)

(assert (=> b!1756268 m!2171155))

(assert (=> b!1755669 d!536528))

(declare-fun d!536530 () Bool)

(assert (=> d!536530 (= (head!4054 suffix!1421) (h!24717 suffix!1421))))

(assert (=> b!1755669 d!536530))

(declare-fun d!536532 () Bool)

(assert (=> d!536532 (= (inv!25068 (tag!3807 rule!422)) (= (mod (str.len (value!108025 (tag!3807 rule!422))) 2) 0))))

(assert (=> b!1755686 d!536532))

(declare-fun d!536534 () Bool)

(declare-fun res!790177 () Bool)

(declare-fun e!1124026 () Bool)

(assert (=> d!536534 (=> (not res!790177) (not e!1124026))))

(assert (=> d!536534 (= res!790177 (semiInverseModEq!1365 (toChars!4829 (transformation!3451 rule!422)) (toValue!4970 (transformation!3451 rule!422))))))

(assert (=> d!536534 (= (inv!25073 (transformation!3451 rule!422)) e!1124026)))

(declare-fun b!1756270 () Bool)

(assert (=> b!1756270 (= e!1124026 (equivClasses!1306 (toChars!4829 (transformation!3451 rule!422)) (toValue!4970 (transformation!3451 rule!422))))))

(assert (= (and d!536534 res!790177) b!1756270))

(declare-fun m!2171157 () Bool)

(assert (=> d!536534 m!2171157))

(declare-fun m!2171159 () Bool)

(assert (=> b!1756270 m!2171159))

(assert (=> b!1755686 d!536534))

(declare-fun d!536536 () Bool)

(assert (=> d!536536 (= (isEmpty!12183 rules!3447) ((_ is Nil!19317) rules!3447))))

(assert (=> b!1755687 d!536536))

(declare-fun d!536538 () Bool)

(declare-fun choose!10856 (Int) Bool)

(assert (=> d!536538 (= (Forall!818 lambda!70004) (choose!10856 lambda!70004))))

(declare-fun bs!403841 () Bool)

(assert (= bs!403841 d!536538))

(declare-fun m!2171161 () Bool)

(assert (=> bs!403841 m!2171161))

(assert (=> b!1755688 d!536538))

(declare-fun d!536540 () Bool)

(declare-fun e!1124029 () Bool)

(assert (=> d!536540 e!1124029))

(declare-fun res!790180 () Bool)

(assert (=> d!536540 (=> (not res!790180) (not e!1124029))))

(assert (=> d!536540 (= res!790180 (semiInverseModEq!1365 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))))))

(declare-fun Unit!33488 () Unit!33479)

(assert (=> d!536540 (= (lemmaInv!650 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) Unit!33488)))

(declare-fun b!1756273 () Bool)

(assert (=> b!1756273 (= e!1124029 (equivClasses!1306 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))))))

(assert (= (and d!536540 res!790180) b!1756273))

(declare-fun m!2171163 () Bool)

(assert (=> d!536540 m!2171163))

(declare-fun m!2171165 () Bool)

(assert (=> b!1756273 m!2171165))

(assert (=> b!1755688 d!536540))

(declare-fun d!536542 () Bool)

(declare-fun e!1124030 () Bool)

(assert (=> d!536542 e!1124030))

(declare-fun c!286291 () Bool)

(assert (=> d!536542 (= c!286291 ((_ is EmptyExpr!4779) (regex!3451 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun lt!678470 () Bool)

(declare-fun e!1124034 () Bool)

(assert (=> d!536542 (= lt!678470 e!1124034)))

(declare-fun c!286289 () Bool)

(assert (=> d!536542 (= c!286289 (isEmpty!12182 lt!678211))))

(assert (=> d!536542 (validRegex!1925 (regex!3451 (rule!5465 (_1!10871 lt!678216))))))

(assert (=> d!536542 (= (matchR!2252 (regex!3451 (rule!5465 (_1!10871 lt!678216))) lt!678211) lt!678470)))

(declare-fun b!1756274 () Bool)

(declare-fun e!1124036 () Bool)

(assert (=> b!1756274 (= e!1124036 (not lt!678470))))

(declare-fun b!1756275 () Bool)

(declare-fun res!790186 () Bool)

(declare-fun e!1124031 () Bool)

(assert (=> b!1756275 (=> res!790186 e!1124031)))

(declare-fun e!1124033 () Bool)

(assert (=> b!1756275 (= res!790186 e!1124033)))

(declare-fun res!790181 () Bool)

(assert (=> b!1756275 (=> (not res!790181) (not e!1124033))))

(assert (=> b!1756275 (= res!790181 lt!678470)))

(declare-fun b!1756276 () Bool)

(declare-fun res!790184 () Bool)

(assert (=> b!1756276 (=> res!790184 e!1124031)))

(assert (=> b!1756276 (= res!790184 (not ((_ is ElementMatch!4779) (regex!3451 (rule!5465 (_1!10871 lt!678216))))))))

(assert (=> b!1756276 (= e!1124036 e!1124031)))

(declare-fun b!1756277 () Bool)

(assert (=> b!1756277 (= e!1124034 (nullable!1451 (regex!3451 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun b!1756278 () Bool)

(declare-fun res!790182 () Bool)

(declare-fun e!1124035 () Bool)

(assert (=> b!1756278 (=> res!790182 e!1124035)))

(assert (=> b!1756278 (= res!790182 (not (isEmpty!12182 (tail!2623 lt!678211))))))

(declare-fun b!1756279 () Bool)

(declare-fun e!1124032 () Bool)

(assert (=> b!1756279 (= e!1124032 e!1124035)))

(declare-fun res!790183 () Bool)

(assert (=> b!1756279 (=> res!790183 e!1124035)))

(declare-fun call!110556 () Bool)

(assert (=> b!1756279 (= res!790183 call!110556)))

(declare-fun b!1756280 () Bool)

(assert (=> b!1756280 (= e!1124030 e!1124036)))

(declare-fun c!286290 () Bool)

(assert (=> b!1756280 (= c!286290 ((_ is EmptyLang!4779) (regex!3451 (rule!5465 (_1!10871 lt!678216)))))))

(declare-fun b!1756281 () Bool)

(assert (=> b!1756281 (= e!1124030 (= lt!678470 call!110556))))

(declare-fun b!1756282 () Bool)

(declare-fun res!790187 () Bool)

(assert (=> b!1756282 (=> (not res!790187) (not e!1124033))))

(assert (=> b!1756282 (= res!790187 (not call!110556))))

(declare-fun b!1756283 () Bool)

(assert (=> b!1756283 (= e!1124035 (not (= (head!4054 lt!678211) (c!286194 (regex!3451 (rule!5465 (_1!10871 lt!678216)))))))))

(declare-fun b!1756284 () Bool)

(declare-fun res!790188 () Bool)

(assert (=> b!1756284 (=> (not res!790188) (not e!1124033))))

(assert (=> b!1756284 (= res!790188 (isEmpty!12182 (tail!2623 lt!678211)))))

(declare-fun b!1756285 () Bool)

(assert (=> b!1756285 (= e!1124033 (= (head!4054 lt!678211) (c!286194 (regex!3451 (rule!5465 (_1!10871 lt!678216))))))))

(declare-fun b!1756286 () Bool)

(assert (=> b!1756286 (= e!1124034 (matchR!2252 (derivativeStep!1220 (regex!3451 (rule!5465 (_1!10871 lt!678216))) (head!4054 lt!678211)) (tail!2623 lt!678211)))))

(declare-fun b!1756287 () Bool)

(assert (=> b!1756287 (= e!1124031 e!1124032)))

(declare-fun res!790185 () Bool)

(assert (=> b!1756287 (=> (not res!790185) (not e!1124032))))

(assert (=> b!1756287 (= res!790185 (not lt!678470))))

(declare-fun bm!110551 () Bool)

(assert (=> bm!110551 (= call!110556 (isEmpty!12182 lt!678211))))

(assert (= (and d!536542 c!286289) b!1756277))

(assert (= (and d!536542 (not c!286289)) b!1756286))

(assert (= (and d!536542 c!286291) b!1756281))

(assert (= (and d!536542 (not c!286291)) b!1756280))

(assert (= (and b!1756280 c!286290) b!1756274))

(assert (= (and b!1756280 (not c!286290)) b!1756276))

(assert (= (and b!1756276 (not res!790184)) b!1756275))

(assert (= (and b!1756275 res!790181) b!1756282))

(assert (= (and b!1756282 res!790187) b!1756284))

(assert (= (and b!1756284 res!790188) b!1756285))

(assert (= (and b!1756275 (not res!790186)) b!1756287))

(assert (= (and b!1756287 res!790185) b!1756279))

(assert (= (and b!1756279 (not res!790183)) b!1756278))

(assert (= (and b!1756278 (not res!790182)) b!1756283))

(assert (= (or b!1756281 b!1756279 b!1756282) bm!110551))

(declare-fun m!2171167 () Bool)

(assert (=> d!536542 m!2171167))

(declare-fun m!2171169 () Bool)

(assert (=> d!536542 m!2171169))

(assert (=> b!1756285 m!2170767))

(assert (=> b!1756284 m!2170757))

(assert (=> b!1756284 m!2170757))

(declare-fun m!2171171 () Bool)

(assert (=> b!1756284 m!2171171))

(declare-fun m!2171173 () Bool)

(assert (=> b!1756277 m!2171173))

(assert (=> b!1756278 m!2170757))

(assert (=> b!1756278 m!2170757))

(assert (=> b!1756278 m!2171171))

(assert (=> bm!110551 m!2171167))

(assert (=> b!1756286 m!2170767))

(assert (=> b!1756286 m!2170767))

(declare-fun m!2171175 () Bool)

(assert (=> b!1756286 m!2171175))

(assert (=> b!1756286 m!2170757))

(assert (=> b!1756286 m!2171175))

(assert (=> b!1756286 m!2170757))

(declare-fun m!2171177 () Bool)

(assert (=> b!1756286 m!2171177))

(assert (=> b!1756283 m!2170767))

(assert (=> b!1755667 d!536542))

(declare-fun d!536544 () Bool)

(declare-fun c!286292 () Bool)

(assert (=> d!536544 (= c!286292 ((_ is Node!6425) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))))

(declare-fun e!1124037 () Bool)

(assert (=> d!536544 (= (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))) e!1124037)))

(declare-fun b!1756288 () Bool)

(assert (=> b!1756288 (= e!1124037 (inv!25079 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))))

(declare-fun b!1756289 () Bool)

(declare-fun e!1124038 () Bool)

(assert (=> b!1756289 (= e!1124037 e!1124038)))

(declare-fun res!790189 () Bool)

(assert (=> b!1756289 (= res!790189 (not ((_ is Leaf!9371) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))))))

(assert (=> b!1756289 (=> res!790189 e!1124038)))

(declare-fun b!1756290 () Bool)

(assert (=> b!1756290 (= e!1124038 (inv!25080 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))))))

(assert (= (and d!536544 c!286292) b!1756288))

(assert (= (and d!536544 (not c!286292)) b!1756289))

(assert (= (and b!1756289 (not res!790189)) b!1756290))

(declare-fun m!2171179 () Bool)

(assert (=> b!1756288 m!2171179))

(declare-fun m!2171181 () Bool)

(assert (=> b!1756290 m!2171181))

(assert (=> b!1755711 d!536544))

(declare-fun b!1756291 () Bool)

(declare-fun e!1124040 () Bool)

(assert (=> b!1756291 (= e!1124040 (inv!16 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(declare-fun b!1756292 () Bool)

(declare-fun e!1124039 () Bool)

(assert (=> b!1756292 (= e!1124039 (inv!17 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(declare-fun b!1756293 () Bool)

(declare-fun res!790190 () Bool)

(declare-fun e!1124041 () Bool)

(assert (=> b!1756293 (=> res!790190 e!1124041)))

(assert (=> b!1756293 (= res!790190 (not ((_ is IntegerValue!10625) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))))

(assert (=> b!1756293 (= e!1124039 e!1124041)))

(declare-fun b!1756294 () Bool)

(assert (=> b!1756294 (= e!1124040 e!1124039)))

(declare-fun c!286293 () Bool)

(assert (=> b!1756294 (= c!286293 ((_ is IntegerValue!10624) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(declare-fun b!1756295 () Bool)

(assert (=> b!1756295 (= e!1124041 (inv!15 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(declare-fun d!536546 () Bool)

(declare-fun c!286294 () Bool)

(assert (=> d!536546 (= c!286294 ((_ is IntegerValue!10623) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))))

(assert (=> d!536546 (= (inv!21 (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)) e!1124040)))

(assert (= (and d!536546 c!286294) b!1756291))

(assert (= (and d!536546 (not c!286294)) b!1756294))

(assert (= (and b!1756294 c!286293) b!1756292))

(assert (= (and b!1756294 (not c!286293)) b!1756293))

(assert (= (and b!1756293 (not res!790190)) b!1756295))

(declare-fun m!2171183 () Bool)

(assert (=> b!1756291 m!2171183))

(declare-fun m!2171185 () Bool)

(assert (=> b!1756292 m!2171185))

(declare-fun m!2171187 () Bool)

(assert (=> b!1756295 m!2171187))

(assert (=> tb!105499 d!536546))

(declare-fun b!1756300 () Bool)

(declare-fun e!1124044 () Bool)

(declare-fun tp!499194 () Bool)

(assert (=> b!1756300 (= e!1124044 (and tp_is_empty!7801 tp!499194))))

(assert (=> b!1755670 (= tp!499125 e!1124044)))

(assert (= (and b!1755670 ((_ is Cons!19316) (originalCharacters!4265 token!523))) b!1756300))

(declare-fun e!1124047 () Bool)

(assert (=> b!1755686 (= tp!499129 e!1124047)))

(declare-fun b!1756314 () Bool)

(declare-fun tp!499209 () Bool)

(declare-fun tp!499207 () Bool)

(assert (=> b!1756314 (= e!1124047 (and tp!499209 tp!499207))))

(declare-fun b!1756311 () Bool)

(assert (=> b!1756311 (= e!1124047 tp_is_empty!7801)))

(declare-fun b!1756312 () Bool)

(declare-fun tp!499208 () Bool)

(declare-fun tp!499205 () Bool)

(assert (=> b!1756312 (= e!1124047 (and tp!499208 tp!499205))))

(declare-fun b!1756313 () Bool)

(declare-fun tp!499206 () Bool)

(assert (=> b!1756313 (= e!1124047 tp!499206)))

(assert (= (and b!1755686 ((_ is ElementMatch!4779) (regex!3451 rule!422))) b!1756311))

(assert (= (and b!1755686 ((_ is Concat!8321) (regex!3451 rule!422))) b!1756312))

(assert (= (and b!1755686 ((_ is Star!4779) (regex!3451 rule!422))) b!1756313))

(assert (= (and b!1755686 ((_ is Union!4779) (regex!3451 rule!422))) b!1756314))

(declare-fun e!1124048 () Bool)

(assert (=> b!1755676 (= tp!499124 e!1124048)))

(declare-fun b!1756318 () Bool)

(declare-fun tp!499214 () Bool)

(declare-fun tp!499212 () Bool)

(assert (=> b!1756318 (= e!1124048 (and tp!499214 tp!499212))))

(declare-fun b!1756315 () Bool)

(assert (=> b!1756315 (= e!1124048 tp_is_empty!7801)))

(declare-fun b!1756316 () Bool)

(declare-fun tp!499213 () Bool)

(declare-fun tp!499210 () Bool)

(assert (=> b!1756316 (= e!1124048 (and tp!499213 tp!499210))))

(declare-fun b!1756317 () Bool)

(declare-fun tp!499211 () Bool)

(assert (=> b!1756317 (= e!1124048 tp!499211)))

(assert (= (and b!1755676 ((_ is ElementMatch!4779) (regex!3451 (h!24718 rules!3447)))) b!1756315))

(assert (= (and b!1755676 ((_ is Concat!8321) (regex!3451 (h!24718 rules!3447)))) b!1756316))

(assert (= (and b!1755676 ((_ is Star!4779) (regex!3451 (h!24718 rules!3447)))) b!1756317))

(assert (= (and b!1755676 ((_ is Union!4779) (regex!3451 (h!24718 rules!3447)))) b!1756318))

(declare-fun b!1756329 () Bool)

(declare-fun b_free!48503 () Bool)

(declare-fun b_next!49207 () Bool)

(assert (=> b!1756329 (= b_free!48503 (not b_next!49207))))

(declare-fun t!163507 () Bool)

(declare-fun tb!105539 () Bool)

(assert (=> (and b!1756329 (= (toValue!4970 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163507) tb!105539))

(declare-fun result!126968 () Bool)

(assert (= result!126968 result!126912))

(assert (=> d!536514 t!163507))

(assert (=> d!536520 t!163507))

(assert (=> b!1755690 t!163507))

(declare-fun t!163509 () Bool)

(declare-fun tb!105541 () Bool)

(assert (=> (and b!1756329 (= (toValue!4970 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163509) tb!105541))

(declare-fun result!126970 () Bool)

(assert (= result!126970 result!126956))

(assert (=> d!536514 t!163509))

(assert (=> d!536508 t!163507))

(declare-fun b_and!131913 () Bool)

(declare-fun tp!499225 () Bool)

(assert (=> b!1756329 (= tp!499225 (and (=> t!163507 result!126968) (=> t!163509 result!126970) b_and!131913))))

(declare-fun b_free!48505 () Bool)

(declare-fun b_next!49209 () Bool)

(assert (=> b!1756329 (= b_free!48505 (not b_next!49209))))

(declare-fun t!163511 () Bool)

(declare-fun tb!105543 () Bool)

(assert (=> (and b!1756329 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163511) tb!105543))

(declare-fun result!126972 () Bool)

(assert (= result!126972 result!126898))

(assert (=> b!1755668 t!163511))

(declare-fun t!163513 () Bool)

(declare-fun tb!105545 () Bool)

(assert (=> (and b!1756329 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216))))) t!163513) tb!105545))

(declare-fun result!126974 () Bool)

(assert (= result!126974 result!126906))

(assert (=> d!536520 t!163513))

(assert (=> b!1755690 t!163513))

(declare-fun t!163515 () Bool)

(declare-fun tb!105547 () Bool)

(assert (=> (and b!1756329 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 token!523)))) t!163515) tb!105547))

(declare-fun result!126976 () Bool)

(assert (= result!126976 result!126920))

(assert (=> b!1756258 t!163515))

(assert (=> d!536350 t!163515))

(assert (=> d!536486 t!163511))

(declare-fun tp!499224 () Bool)

(declare-fun b_and!131915 () Bool)

(assert (=> b!1756329 (= tp!499224 (and (=> t!163515 result!126976) (=> t!163513 result!126974) (=> t!163511 result!126972) b_and!131915))))

(declare-fun e!1124058 () Bool)

(assert (=> b!1756329 (= e!1124058 (and tp!499225 tp!499224))))

(declare-fun b!1756328 () Bool)

(declare-fun e!1124059 () Bool)

(declare-fun tp!499226 () Bool)

(assert (=> b!1756328 (= e!1124059 (and tp!499226 (inv!25068 (tag!3807 (h!24718 (t!163470 rules!3447)))) (inv!25073 (transformation!3451 (h!24718 (t!163470 rules!3447)))) e!1124058))))

(declare-fun b!1756327 () Bool)

(declare-fun e!1124057 () Bool)

(declare-fun tp!499223 () Bool)

(assert (=> b!1756327 (= e!1124057 (and e!1124059 tp!499223))))

(assert (=> b!1755693 (= tp!499126 e!1124057)))

(assert (= b!1756328 b!1756329))

(assert (= b!1756327 b!1756328))

(assert (= (and b!1755693 ((_ is Cons!19317) (t!163470 rules!3447))) b!1756327))

(declare-fun m!2171189 () Bool)

(assert (=> b!1756328 m!2171189))

(declare-fun m!2171191 () Bool)

(assert (=> b!1756328 m!2171191))

(declare-fun e!1124061 () Bool)

(assert (=> b!1755683 (= tp!499131 e!1124061)))

(declare-fun b!1756333 () Bool)

(declare-fun tp!499231 () Bool)

(declare-fun tp!499229 () Bool)

(assert (=> b!1756333 (= e!1124061 (and tp!499231 tp!499229))))

(declare-fun b!1756330 () Bool)

(assert (=> b!1756330 (= e!1124061 tp_is_empty!7801)))

(declare-fun b!1756331 () Bool)

(declare-fun tp!499230 () Bool)

(declare-fun tp!499227 () Bool)

(assert (=> b!1756331 (= e!1124061 (and tp!499230 tp!499227))))

(declare-fun b!1756332 () Bool)

(declare-fun tp!499228 () Bool)

(assert (=> b!1756332 (= e!1124061 tp!499228)))

(assert (= (and b!1755683 ((_ is ElementMatch!4779) (regex!3451 (rule!5465 token!523)))) b!1756330))

(assert (= (and b!1755683 ((_ is Concat!8321) (regex!3451 (rule!5465 token!523)))) b!1756331))

(assert (= (and b!1755683 ((_ is Star!4779) (regex!3451 (rule!5465 token!523)))) b!1756332))

(assert (= (and b!1755683 ((_ is Union!4779) (regex!3451 (rule!5465 token!523)))) b!1756333))

(declare-fun b!1756342 () Bool)

(declare-fun e!1124067 () Bool)

(declare-fun tp!499238 () Bool)

(declare-fun tp!499240 () Bool)

(assert (=> b!1756342 (= e!1124067 (and (inv!25075 (left!15464 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))) tp!499238 (inv!25075 (right!15794 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))) tp!499240))))

(declare-fun b!1756344 () Bool)

(declare-fun e!1124066 () Bool)

(declare-fun tp!499239 () Bool)

(assert (=> b!1756344 (= e!1124066 tp!499239)))

(declare-fun b!1756343 () Bool)

(declare-fun inv!25082 (IArray!12855) Bool)

(assert (=> b!1756343 (= e!1124067 (and (inv!25082 (xs!9301 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))) e!1124066))))

(assert (=> b!1755711 (= tp!499135 (and (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216))))) e!1124067))))

(assert (= (and b!1755711 ((_ is Node!6425) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))) b!1756342))

(assert (= b!1756343 b!1756344))

(assert (= (and b!1755711 ((_ is Leaf!9371) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (value!108026 (_1!10871 lt!678216)))))) b!1756343))

(declare-fun m!2171193 () Bool)

(assert (=> b!1756342 m!2171193))

(declare-fun m!2171195 () Bool)

(assert (=> b!1756342 m!2171195))

(declare-fun m!2171197 () Bool)

(assert (=> b!1756343 m!2171197))

(assert (=> b!1755711 m!2170317))

(declare-fun b!1756345 () Bool)

(declare-fun e!1124068 () Bool)

(declare-fun tp!499241 () Bool)

(assert (=> b!1756345 (= e!1124068 (and tp_is_empty!7801 tp!499241))))

(assert (=> b!1755684 (= tp!499123 e!1124068)))

(assert (= (and b!1755684 ((_ is Cons!19316) (t!163469 suffix!1421))) b!1756345))

(declare-fun e!1124070 () Bool)

(declare-fun tp!499244 () Bool)

(declare-fun tp!499242 () Bool)

(declare-fun b!1756346 () Bool)

(assert (=> b!1756346 (= e!1124070 (and (inv!25075 (left!15464 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))) tp!499242 (inv!25075 (right!15794 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))) tp!499244))))

(declare-fun b!1756348 () Bool)

(declare-fun e!1124069 () Bool)

(declare-fun tp!499243 () Bool)

(assert (=> b!1756348 (= e!1124069 tp!499243)))

(declare-fun b!1756347 () Bool)

(assert (=> b!1756347 (= e!1124070 (and (inv!25082 (xs!9301 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))) e!1124069))))

(assert (=> b!1755712 (= tp!499136 (and (inv!25075 (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201)))) e!1124070))))

(assert (= (and b!1755712 ((_ is Node!6425) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))) b!1756346))

(assert (= b!1756347 b!1756348))

(assert (= (and b!1755712 ((_ is Leaf!9371) (c!286195 (dynLambda!9262 (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) (dynLambda!9263 (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))) lt!678201))))) b!1756347))

(declare-fun m!2171199 () Bool)

(assert (=> b!1756346 m!2171199))

(declare-fun m!2171201 () Bool)

(assert (=> b!1756346 m!2171201))

(declare-fun m!2171203 () Bool)

(assert (=> b!1756347 m!2171203))

(assert (=> b!1755712 m!2170321))

(declare-fun b_lambda!56639 () Bool)

(assert (= b_lambda!56595 (or (and b!1755685 b_free!48487 (= (toValue!4970 (transformation!3451 (rule!5465 token!523))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755695 b_free!48491 (= (toValue!4970 (transformation!3451 rule!422)) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755680 b_free!48495 (= (toValue!4970 (transformation!3451 (h!24718 rules!3447))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1756329 b_free!48503 (= (toValue!4970 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toValue!4970 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) b_lambda!56639)))

(declare-fun b_lambda!56641 () Bool)

(assert (= b_lambda!56591 (or (and b!1755685 b_free!48489 (= (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755695 b_free!48493 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755680 b_free!48497 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1756329 b_free!48505 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) b_lambda!56641)))

(declare-fun b_lambda!56643 () Bool)

(assert (= b_lambda!56599 (or (and b!1755685 b_free!48489) (and b!1755695 b_free!48493 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) (and b!1755680 b_free!48497 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) (and b!1756329 b_free!48505 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) b_lambda!56643)))

(declare-fun b_lambda!56645 () Bool)

(assert (= b_lambda!56637 (or (and b!1755685 b_free!48489) (and b!1755695 b_free!48493 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) (and b!1755680 b_free!48497 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) (and b!1756329 b_free!48505 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 token!523))))) b_lambda!56645)))

(declare-fun b_lambda!56647 () Bool)

(assert (= b_lambda!56593 (or (and b!1755685 b_free!48489 (= (toChars!4829 (transformation!3451 (rule!5465 token!523))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755695 b_free!48493 (= (toChars!4829 (transformation!3451 rule!422)) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1755680 b_free!48497 (= (toChars!4829 (transformation!3451 (h!24718 rules!3447))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) (and b!1756329 b_free!48505 (= (toChars!4829 (transformation!3451 (h!24718 (t!163470 rules!3447)))) (toChars!4829 (transformation!3451 (rule!5465 (_1!10871 lt!678216)))))) b_lambda!56647)))

(check-sat b_and!131903 (not d!536504) (not d!536348) (not b!1756273) (not b!1756170) (not d!536538) (not d!536522) (not b!1756345) (not b!1756283) (not b!1756003) (not bm!110551) (not d!536362) (not d!536354) (not b!1756184) (not b!1755874) (not b!1756278) (not b!1756312) (not b!1756190) (not b_lambda!56641) (not bm!110545) (not b!1755875) (not b_next!49209) (not b!1755962) (not b!1755872) (not b!1755889) (not b!1755712) (not b!1756316) (not bm!110549) (not bm!110550) (not b!1756284) (not b!1756264) (not b_next!49199) (not b!1756327) (not d!536406) (not d!536510) (not b!1756187) (not b!1756268) (not b_lambda!56631) (not d!536382) (not b!1756342) (not d!536520) (not d!536492) (not b!1756292) (not b!1756172) (not b!1756259) (not b!1756186) (not b_next!49195) (not d!536474) (not b!1756153) (not b!1756212) (not b!1756188) (not d!536390) (not b!1756237) (not b!1756290) (not b!1756204) (not d!536476) (not d!536498) (not b!1756196) (not b!1756277) (not b!1756286) (not b!1756227) (not b!1755876) (not b!1755873) (not b!1756004) (not d!536334) (not b!1756191) (not b_next!49191) b_and!131905 (not d!536534) (not b!1756240) (not tb!105505) (not d!536542) (not b!1756002) (not b!1756313) (not b_lambda!56625) (not b_next!49201) (not b_lambda!56635) (not b!1756232) (not b!1756348) (not b!1756343) (not b!1756344) (not b!1756314) (not d!536488) (not b!1756224) (not d!536356) (not b!1756346) (not b!1755879) (not d!536340) (not b!1755963) (not d!536494) (not b_lambda!56643) (not b_lambda!56639) (not b!1756291) (not d!536402) (not d!536528) (not b!1756270) (not b_next!49207) (not b!1756173) (not b!1755711) (not d!536524) (not b!1756200) (not b!1756332) (not d!536506) (not b!1756317) (not b!1756194) (not b!1756265) (not b!1755871) (not b!1756189) (not b!1756295) (not b!1756202) (not b!1755850) (not b!1755891) (not d!536514) (not bm!110542) (not b!1756154) (not d!536518) (not b!1756197) (not b!1755955) (not b!1755973) (not d!536540) (not b_next!49197) (not d!536368) (not b!1756205) (not b!1756300) (not b!1756193) (not b!1756328) (not b!1755961) (not b!1756333) tp_is_empty!7801 (not b!1755834) (not b!1756183) (not b_lambda!56647) (not b_lambda!56633) (not b!1756198) (not b!1755852) (not b!1756223) (not b!1756231) (not b!1755878) (not d!536486) b_and!131909 (not b!1756238) (not b_lambda!56629) (not b!1756152) (not d!536512) (not b!1755960) (not b!1756318) (not d!536478) (not b!1756285) (not d!536526) (not d!536346) (not b_lambda!56645) (not b!1755843) (not tb!105533) (not b!1755954) (not d!536500) (not b!1756288) (not b!1755888) (not b!1756258) b_and!131907 (not d!536480) (not b!1756239) (not b!1756331) (not d!536336) b_and!131901 (not b!1755840) (not d!536490) (not b_lambda!56627) (not b_next!49193) (not b!1756201) (not d!536344) b_and!131911 b_and!131915 b_and!131913 (not b!1756211) (not d!536350) (not b!1756267) (not b!1756347))
(check-sat (not b_next!49209) (not b_next!49199) (not b_next!49195) (not b_next!49201) (not b_next!49207) (not b_next!49197) b_and!131903 b_and!131909 b_and!131907 b_and!131901 (not b_next!49193) (not b_next!49191) b_and!131905 b_and!131911 b_and!131915 b_and!131913)
