; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172538 () Bool)

(assert start!172538)

(declare-fun b!1749398 () Bool)

(declare-fun b_free!48187 () Bool)

(declare-fun b_next!48891 () Bool)

(assert (=> b!1749398 (= b_free!48187 (not b_next!48891))))

(declare-fun tp!497628 () Bool)

(declare-fun b_and!130627 () Bool)

(assert (=> b!1749398 (= tp!497628 b_and!130627)))

(declare-fun b_free!48189 () Bool)

(declare-fun b_next!48893 () Bool)

(assert (=> b!1749398 (= b_free!48189 (not b_next!48893))))

(declare-fun tp!497630 () Bool)

(declare-fun b_and!130629 () Bool)

(assert (=> b!1749398 (= tp!497630 b_and!130629)))

(declare-fun b!1749387 () Bool)

(declare-fun b_free!48191 () Bool)

(declare-fun b_next!48895 () Bool)

(assert (=> b!1749387 (= b_free!48191 (not b_next!48895))))

(declare-fun tp!497635 () Bool)

(declare-fun b_and!130631 () Bool)

(assert (=> b!1749387 (= tp!497635 b_and!130631)))

(declare-fun b_free!48193 () Bool)

(declare-fun b_next!48897 () Bool)

(assert (=> b!1749387 (= b_free!48193 (not b_next!48897))))

(declare-fun tp!497629 () Bool)

(declare-fun b_and!130633 () Bool)

(assert (=> b!1749387 (= tp!497629 b_and!130633)))

(declare-fun b!1749411 () Bool)

(declare-fun b_free!48195 () Bool)

(declare-fun b_next!48899 () Bool)

(assert (=> b!1749411 (= b_free!48195 (not b_next!48899))))

(declare-fun tp!497626 () Bool)

(declare-fun b_and!130635 () Bool)

(assert (=> b!1749411 (= tp!497626 b_and!130635)))

(declare-fun b_free!48197 () Bool)

(declare-fun b_next!48901 () Bool)

(assert (=> b!1749411 (= b_free!48197 (not b_next!48901))))

(declare-fun tp!497625 () Bool)

(declare-fun b_and!130637 () Bool)

(assert (=> b!1749411 (= tp!497625 b_and!130637)))

(declare-fun b!1749426 () Bool)

(declare-fun e!1119577 () Bool)

(assert (=> b!1749426 (= e!1119577 true)))

(declare-fun b!1749425 () Bool)

(declare-fun e!1119576 () Bool)

(assert (=> b!1749425 (= e!1119576 e!1119577)))

(declare-fun b!1749424 () Bool)

(declare-fun e!1119575 () Bool)

(assert (=> b!1749424 (= e!1119575 e!1119576)))

(declare-fun b!1749402 () Bool)

(assert (=> b!1749402 e!1119575))

(assert (= b!1749425 b!1749426))

(assert (= b!1749424 b!1749425))

(assert (= b!1749402 b!1749424))

(declare-datatypes ((List!19300 0))(
  ( (Nil!19230) (Cons!19230 (h!24631 (_ BitVec 16)) (t!162715 List!19300)) )
))
(declare-datatypes ((TokenValue!3519 0))(
  ( (FloatLiteralValue!7038 (text!25078 List!19300)) (TokenValueExt!3518 (__x!12340 Int)) (Broken!17595 (value!107373 List!19300)) (Object!3588) (End!3519) (Def!3519) (Underscore!3519) (Match!3519) (Else!3519) (Error!3519) (Case!3519) (If!3519) (Extends!3519) (Abstract!3519) (Class!3519) (Val!3519) (DelimiterValue!7038 (del!3579 List!19300)) (KeywordValue!3525 (value!107374 List!19300)) (CommentValue!7038 (value!107375 List!19300)) (WhitespaceValue!7038 (value!107376 List!19300)) (IndentationValue!3519 (value!107377 List!19300)) (String!21926) (Int32!3519) (Broken!17596 (value!107378 List!19300)) (Boolean!3520) (Unit!33310) (OperatorValue!3522 (op!3579 List!19300)) (IdentifierValue!7038 (value!107379 List!19300)) (IdentifierValue!7039 (value!107380 List!19300)) (WhitespaceValue!7039 (value!107381 List!19300)) (True!7038) (False!7038) (Broken!17597 (value!107382 List!19300)) (Broken!17598 (value!107383 List!19300)) (True!7039) (RightBrace!3519) (RightBracket!3519) (Colon!3519) (Null!3519) (Comma!3519) (LeftBracket!3519) (False!7039) (LeftBrace!3519) (ImaginaryLiteralValue!3519 (text!25079 List!19300)) (StringLiteralValue!10557 (value!107384 List!19300)) (EOFValue!3519 (value!107385 List!19300)) (IdentValue!3519 (value!107386 List!19300)) (DelimiterValue!7039 (value!107387 List!19300)) (DedentValue!3519 (value!107388 List!19300)) (NewLineValue!3519 (value!107389 List!19300)) (IntegerValue!10557 (value!107390 (_ BitVec 32)) (text!25080 List!19300)) (IntegerValue!10558 (value!107391 Int) (text!25081 List!19300)) (Times!3519) (Or!3519) (Equal!3519) (Minus!3519) (Broken!17599 (value!107392 List!19300)) (And!3519) (Div!3519) (LessEqual!3519) (Mod!3519) (Concat!8276) (Not!3519) (Plus!3519) (SpaceValue!3519 (value!107393 List!19300)) (IntegerValue!10559 (value!107394 Int) (text!25082 List!19300)) (StringLiteralValue!10558 (text!25083 List!19300)) (FloatLiteralValue!7039 (text!25084 List!19300)) (BytesLiteralValue!3519 (value!107395 List!19300)) (CommentValue!7039 (value!107396 List!19300)) (StringLiteralValue!10559 (value!107397 List!19300)) (ErrorTokenValue!3519 (msg!3580 List!19300)) )
))
(declare-datatypes ((C!9688 0))(
  ( (C!9689 (val!5440 Int)) )
))
(declare-datatypes ((List!19301 0))(
  ( (Nil!19231) (Cons!19231 (h!24632 C!9688) (t!162716 List!19301)) )
))
(declare-datatypes ((Regex!4757 0))(
  ( (ElementMatch!4757 (c!285322 C!9688)) (Concat!8277 (regOne!10026 Regex!4757) (regTwo!10026 Regex!4757)) (EmptyExpr!4757) (Star!4757 (reg!5086 Regex!4757)) (EmptyLang!4757) (Union!4757 (regOne!10027 Regex!4757) (regTwo!10027 Regex!4757)) )
))
(declare-datatypes ((String!21927 0))(
  ( (String!21928 (value!107398 String)) )
))
(declare-datatypes ((IArray!12799 0))(
  ( (IArray!12800 (innerList!6457 List!19301)) )
))
(declare-datatypes ((Conc!6397 0))(
  ( (Node!6397 (left!15381 Conc!6397) (right!15711 Conc!6397) (csize!13024 Int) (cheight!6608 Int)) (Leaf!9332 (xs!9273 IArray!12799) (csize!13025 Int)) (Empty!6397) )
))
(declare-datatypes ((BalanceConc!12738 0))(
  ( (BalanceConc!12739 (c!285323 Conc!6397)) )
))
(declare-datatypes ((TokenValueInjection!6698 0))(
  ( (TokenValueInjection!6699 (toValue!4944 Int) (toChars!4803 Int)) )
))
(declare-datatypes ((Rule!6658 0))(
  ( (Rule!6659 (regex!3429 Regex!4757) (tag!3779 String!21927) (isSeparator!3429 Bool) (transformation!3429 TokenValueInjection!6698)) )
))
(declare-datatypes ((Token!6424 0))(
  ( (Token!6425 (value!107399 TokenValue!3519) (rule!5437 Rule!6658) (size!15274 Int) (originalCharacters!4243 List!19301)) )
))
(declare-datatypes ((tuple2!18870 0))(
  ( (tuple2!18871 (_1!10837 Token!6424) (_2!10837 List!19301)) )
))
(declare-fun lt!674849 () tuple2!18870)

(declare-fun order!12059 () Int)

(declare-fun order!12061 () Int)

(declare-fun lambda!69830 () Int)

(declare-fun dynLambda!9146 (Int Int) Int)

(declare-fun dynLambda!9147 (Int Int) Int)

(assert (=> b!1749426 (< (dynLambda!9146 order!12059 (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) (dynLambda!9147 order!12061 lambda!69830))))

(declare-fun order!12063 () Int)

(declare-fun dynLambda!9148 (Int Int) Int)

(assert (=> b!1749426 (< (dynLambda!9148 order!12063 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) (dynLambda!9147 order!12061 lambda!69830))))

(declare-fun b!1749385 () Bool)

(declare-fun e!1119547 () Bool)

(declare-fun e!1119542 () Bool)

(assert (=> b!1749385 (= e!1119547 e!1119542)))

(declare-fun res!786803 () Bool)

(assert (=> b!1749385 (=> res!786803 e!1119542)))

(declare-fun lt!674829 () Regex!4757)

(declare-fun lt!674823 () List!19301)

(declare-fun prefixMatch!642 (Regex!4757 List!19301) Bool)

(assert (=> b!1749385 (= res!786803 (prefixMatch!642 lt!674829 lt!674823))))

(declare-fun lt!674840 () List!19301)

(declare-fun suffix!1421 () List!19301)

(declare-fun ++!5254 (List!19301 List!19301) List!19301)

(declare-fun head!4026 (List!19301) C!9688)

(assert (=> b!1749385 (= lt!674823 (++!5254 lt!674840 (Cons!19231 (head!4026 suffix!1421) Nil!19231)))))

(declare-datatypes ((LexerInterface!3058 0))(
  ( (LexerInterfaceExt!3055 (__x!12341 Int)) (Lexer!3056) )
))
(declare-fun thiss!24550 () LexerInterface!3058)

(declare-datatypes ((List!19302 0))(
  ( (Nil!19232) (Cons!19232 (h!24633 Rule!6658) (t!162717 List!19302)) )
))
(declare-fun rules!3447 () List!19302)

(declare-fun rulesRegex!787 (LexerInterface!3058 List!19302) Regex!4757)

(assert (=> b!1749385 (= lt!674829 (rulesRegex!787 thiss!24550 rules!3447))))

(declare-fun b!1749386 () Bool)

(declare-fun e!1119544 () Bool)

(declare-fun e!1119557 () Bool)

(assert (=> b!1749386 (= e!1119544 e!1119557)))

(declare-fun res!786805 () Bool)

(assert (=> b!1749386 (=> res!786805 e!1119557)))

(declare-fun lt!674839 () BalanceConc!12738)

(declare-fun lt!674821 () List!19301)

(declare-fun list!7790 (BalanceConc!12738) List!19301)

(declare-fun dynLambda!9149 (Int TokenValue!3519) BalanceConc!12738)

(declare-fun dynLambda!9150 (Int BalanceConc!12738) TokenValue!3519)

(assert (=> b!1749386 (= res!786805 (not (= (list!7790 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (dynLambda!9150 (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) lt!674839))) lt!674821)))))

(declare-datatypes ((Unit!33311 0))(
  ( (Unit!33312) )
))
(declare-fun lt!674831 () Unit!33311)

(declare-fun lemmaSemiInverse!569 (TokenValueInjection!6698 BalanceConc!12738) Unit!33311)

(assert (=> b!1749386 (= lt!674831 (lemmaSemiInverse!569 (transformation!3429 (rule!5437 (_1!10837 lt!674849))) lt!674839))))

(declare-fun e!1119550 () Bool)

(assert (=> b!1749387 (= e!1119550 (and tp!497635 tp!497629))))

(declare-fun b!1749388 () Bool)

(declare-fun e!1119558 () Bool)

(assert (=> b!1749388 (= e!1119558 true)))

(declare-fun lt!674846 () Bool)

(declare-fun lt!674827 () List!19301)

(declare-fun isPrefix!1670 (List!19301 List!19301) Bool)

(assert (=> b!1749388 (= lt!674846 (isPrefix!1670 lt!674823 lt!674827))))

(declare-fun lt!674833 () List!19301)

(assert (=> b!1749388 (isPrefix!1670 (++!5254 lt!674840 (Cons!19231 (head!4026 lt!674833) Nil!19231)) lt!674827)))

(declare-fun lt!674835 () Unit!33311)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!245 (List!19301 List!19301) Unit!33311)

(assert (=> b!1749388 (= lt!674835 (lemmaAddHeadSuffixToPrefixStillPrefix!245 lt!674840 lt!674827))))

(declare-fun b!1749389 () Bool)

(declare-fun res!786807 () Bool)

(declare-fun e!1119561 () Bool)

(assert (=> b!1749389 (=> (not res!786807) (not e!1119561))))

(declare-fun token!523 () Token!6424)

(declare-fun rule!422 () Rule!6658)

(assert (=> b!1749389 (= res!786807 (= (rule!5437 token!523) rule!422))))

(declare-fun b!1749390 () Bool)

(declare-fun res!786801 () Bool)

(declare-fun e!1119566 () Bool)

(assert (=> b!1749390 (=> (not res!786801) (not e!1119566))))

(declare-fun contains!3455 (List!19302 Rule!6658) Bool)

(assert (=> b!1749390 (= res!786801 (contains!3455 rules!3447 rule!422))))

(declare-fun b!1749391 () Bool)

(declare-fun res!786797 () Bool)

(assert (=> b!1749391 (=> (not res!786797) (not e!1119566))))

(declare-fun isEmpty!12119 (List!19302) Bool)

(assert (=> b!1749391 (= res!786797 (not (isEmpty!12119 rules!3447)))))

(declare-fun b!1749392 () Bool)

(declare-fun e!1119553 () Bool)

(declare-fun e!1119554 () Bool)

(assert (=> b!1749392 (= e!1119553 e!1119554)))

(declare-fun res!786816 () Bool)

(assert (=> b!1749392 (=> (not res!786816) (not e!1119554))))

(declare-fun lt!674826 () Rule!6658)

(declare-fun matchR!2231 (Regex!4757 List!19301) Bool)

(declare-fun charsOf!2078 (Token!6424) BalanceConc!12738)

(assert (=> b!1749392 (= res!786816 (matchR!2231 (regex!3429 lt!674826) (list!7790 (charsOf!2078 (_1!10837 lt!674849)))))))

(declare-datatypes ((Option!3882 0))(
  ( (None!3881) (Some!3881 (v!25324 Rule!6658)) )
))
(declare-fun lt!674845 () Option!3882)

(declare-fun get!5814 (Option!3882) Rule!6658)

(assert (=> b!1749392 (= lt!674826 (get!5814 lt!674845))))

(declare-fun b!1749393 () Bool)

(declare-fun e!1119548 () Bool)

(assert (=> b!1749393 (= e!1119566 e!1119548)))

(declare-fun res!786804 () Bool)

(assert (=> b!1749393 (=> (not res!786804) (not e!1119548))))

(declare-datatypes ((Option!3883 0))(
  ( (None!3882) (Some!3882 (v!25325 tuple2!18870)) )
))
(declare-fun lt!674828 () Option!3883)

(declare-fun isDefined!3225 (Option!3883) Bool)

(assert (=> b!1749393 (= res!786804 (isDefined!3225 lt!674828))))

(declare-fun maxPrefix!1612 (LexerInterface!3058 List!19302 List!19301) Option!3883)

(assert (=> b!1749393 (= lt!674828 (maxPrefix!1612 thiss!24550 rules!3447 lt!674840))))

(declare-fun lt!674832 () BalanceConc!12738)

(assert (=> b!1749393 (= lt!674840 (list!7790 lt!674832))))

(assert (=> b!1749393 (= lt!674832 (charsOf!2078 token!523))))

(declare-fun e!1119565 () Bool)

(declare-fun tp!497627 () Bool)

(declare-fun b!1749394 () Bool)

(declare-fun inv!24931 (String!21927) Bool)

(declare-fun inv!24936 (TokenValueInjection!6698) Bool)

(assert (=> b!1749394 (= e!1119565 (and tp!497627 (inv!24931 (tag!3779 (h!24633 rules!3447))) (inv!24936 (transformation!3429 (h!24633 rules!3447))) e!1119550))))

(declare-fun tp!497636 () Bool)

(declare-fun b!1749395 () Bool)

(declare-fun e!1119552 () Bool)

(declare-fun e!1119562 () Bool)

(declare-fun inv!21 (TokenValue!3519) Bool)

(assert (=> b!1749395 (= e!1119552 (and (inv!21 (value!107399 token!523)) e!1119562 tp!497636))))

(declare-fun tp!497631 () Bool)

(declare-fun e!1119545 () Bool)

(declare-fun b!1749396 () Bool)

(assert (=> b!1749396 (= e!1119562 (and tp!497631 (inv!24931 (tag!3779 (rule!5437 token!523))) (inv!24936 (transformation!3429 (rule!5437 token!523))) e!1119545))))

(declare-fun b!1749397 () Bool)

(declare-fun res!786802 () Bool)

(assert (=> b!1749397 (=> (not res!786802) (not e!1119561))))

(declare-fun lt!674824 () tuple2!18870)

(declare-fun isEmpty!12120 (List!19301) Bool)

(assert (=> b!1749397 (= res!786802 (isEmpty!12120 (_2!10837 lt!674824)))))

(declare-fun e!1119543 () Bool)

(assert (=> b!1749398 (= e!1119543 (and tp!497628 tp!497630))))

(declare-fun b!1749399 () Bool)

(declare-fun e!1119564 () Bool)

(assert (=> b!1749399 (= e!1119557 e!1119564)))

(declare-fun res!786813 () Bool)

(assert (=> b!1749399 (=> res!786813 e!1119564)))

(declare-fun lt!674825 () Int)

(declare-fun lt!674838 () TokenValue!3519)

(declare-fun lt!674843 () Option!3883)

(assert (=> b!1749399 (= res!786813 (not (= lt!674843 (Some!3882 (tuple2!18871 (Token!6425 lt!674838 (rule!5437 (_1!10837 lt!674849)) lt!674825 lt!674821) (_2!10837 lt!674849))))))))

(declare-fun size!15275 (BalanceConc!12738) Int)

(assert (=> b!1749399 (= lt!674825 (size!15275 lt!674839))))

(declare-fun apply!5230 (TokenValueInjection!6698 BalanceConc!12738) TokenValue!3519)

(assert (=> b!1749399 (= lt!674838 (apply!5230 (transformation!3429 (rule!5437 (_1!10837 lt!674849))) lt!674839))))

(declare-fun lt!674852 () Unit!33311)

(declare-fun lemmaCharactersSize!489 (Token!6424) Unit!33311)

(assert (=> b!1749399 (= lt!674852 (lemmaCharactersSize!489 (_1!10837 lt!674849)))))

(declare-fun lt!674851 () Unit!33311)

(declare-fun lemmaEqSameImage!342 (TokenValueInjection!6698 BalanceConc!12738 BalanceConc!12738) Unit!33311)

(declare-fun seqFromList!2399 (List!19301) BalanceConc!12738)

(assert (=> b!1749399 (= lt!674851 (lemmaEqSameImage!342 (transformation!3429 (rule!5437 (_1!10837 lt!674849))) lt!674839 (seqFromList!2399 (originalCharacters!4243 (_1!10837 lt!674849)))))))

(declare-fun tp!497633 () Bool)

(declare-fun e!1119559 () Bool)

(declare-fun b!1749400 () Bool)

(assert (=> b!1749400 (= e!1119559 (and tp!497633 (inv!24931 (tag!3779 rule!422)) (inv!24936 (transformation!3429 rule!422)) e!1119543))))

(declare-fun b!1749401 () Bool)

(declare-fun e!1119546 () Bool)

(declare-fun e!1119551 () Bool)

(assert (=> b!1749401 (= e!1119546 e!1119551)))

(declare-fun res!786806 () Bool)

(assert (=> b!1749401 (=> res!786806 e!1119551)))

(assert (=> b!1749401 (= res!786806 (<= lt!674825 (size!15275 lt!674832)))))

(assert (=> b!1749401 (matchR!2231 lt!674829 lt!674840)))

(declare-fun lt!674836 () Unit!33311)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!160 (LexerInterface!3058 List!19302 List!19301 Token!6424 Rule!6658 List!19301) Unit!33311)

(assert (=> b!1749401 (= lt!674836 (lemmaMaxPrefixThenMatchesRulesRegex!160 thiss!24550 rules!3447 lt!674840 token!523 rule!422 Nil!19231))))

(declare-fun e!1119549 () Bool)

(assert (=> b!1749402 (= e!1119549 e!1119544)))

(declare-fun res!786815 () Bool)

(assert (=> b!1749402 (=> res!786815 e!1119544)))

(declare-fun Forall!798 (Int) Bool)

(assert (=> b!1749402 (= res!786815 (not (Forall!798 lambda!69830)))))

(declare-fun lt!674850 () Unit!33311)

(declare-fun lemmaInv!630 (TokenValueInjection!6698) Unit!33311)

(assert (=> b!1749402 (= lt!674850 (lemmaInv!630 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))))))

(declare-fun b!1749403 () Bool)

(declare-fun e!1119563 () Bool)

(declare-fun tp_is_empty!7757 () Bool)

(declare-fun tp!497634 () Bool)

(assert (=> b!1749403 (= e!1119563 (and tp_is_empty!7757 tp!497634))))

(declare-fun b!1749404 () Bool)

(assert (=> b!1749404 (= e!1119561 (not e!1119547))))

(declare-fun res!786814 () Bool)

(assert (=> b!1749404 (=> res!786814 e!1119547)))

(assert (=> b!1749404 (= res!786814 (not (matchR!2231 (regex!3429 rule!422) lt!674840)))))

(declare-fun ruleValid!928 (LexerInterface!3058 Rule!6658) Bool)

(assert (=> b!1749404 (ruleValid!928 thiss!24550 rule!422)))

(declare-fun lt!674844 () Unit!33311)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!452 (LexerInterface!3058 Rule!6658 List!19302) Unit!33311)

(assert (=> b!1749404 (= lt!674844 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!452 thiss!24550 rule!422 rules!3447))))

(declare-fun res!786812 () Bool)

(assert (=> start!172538 (=> (not res!786812) (not e!1119566))))

(get-info :version)

(assert (=> start!172538 (= res!786812 ((_ is Lexer!3056) thiss!24550))))

(assert (=> start!172538 e!1119566))

(assert (=> start!172538 e!1119563))

(assert (=> start!172538 e!1119559))

(assert (=> start!172538 true))

(declare-fun inv!24937 (Token!6424) Bool)

(assert (=> start!172538 (and (inv!24937 token!523) e!1119552)))

(declare-fun e!1119560 () Bool)

(assert (=> start!172538 e!1119560))

(declare-fun b!1749405 () Bool)

(declare-fun tp!497632 () Bool)

(assert (=> b!1749405 (= e!1119560 (and e!1119565 tp!497632))))

(declare-fun b!1749406 () Bool)

(declare-fun res!786798 () Bool)

(assert (=> b!1749406 (=> res!786798 e!1119547)))

(assert (=> b!1749406 (= res!786798 (isEmpty!12120 suffix!1421))))

(declare-fun b!1749407 () Bool)

(assert (=> b!1749407 (= e!1119542 e!1119549)))

(declare-fun res!786796 () Bool)

(assert (=> b!1749407 (=> res!786796 e!1119549)))

(assert (=> b!1749407 (= res!786796 (not (isPrefix!1670 lt!674821 lt!674827)))))

(assert (=> b!1749407 (isPrefix!1670 lt!674821 (++!5254 lt!674821 (_2!10837 lt!674849)))))

(declare-fun lt!674822 () Unit!33311)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1180 (List!19301 List!19301) Unit!33311)

(assert (=> b!1749407 (= lt!674822 (lemmaConcatTwoListThenFirstIsPrefix!1180 lt!674821 (_2!10837 lt!674849)))))

(assert (=> b!1749407 (= lt!674821 (list!7790 lt!674839))))

(assert (=> b!1749407 (= lt!674839 (charsOf!2078 (_1!10837 lt!674849)))))

(assert (=> b!1749407 e!1119553))

(declare-fun res!786799 () Bool)

(assert (=> b!1749407 (=> (not res!786799) (not e!1119553))))

(declare-fun isDefined!3226 (Option!3882) Bool)

(assert (=> b!1749407 (= res!786799 (isDefined!3226 lt!674845))))

(declare-fun getRuleFromTag!479 (LexerInterface!3058 List!19302 String!21927) Option!3882)

(assert (=> b!1749407 (= lt!674845 (getRuleFromTag!479 thiss!24550 rules!3447 (tag!3779 (rule!5437 (_1!10837 lt!674849)))))))

(declare-fun lt!674841 () Unit!33311)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!479 (LexerInterface!3058 List!19302 List!19301 Token!6424) Unit!33311)

(assert (=> b!1749407 (= lt!674841 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!479 thiss!24550 rules!3447 lt!674827 (_1!10837 lt!674849)))))

(declare-fun get!5815 (Option!3883) tuple2!18870)

(assert (=> b!1749407 (= lt!674849 (get!5815 lt!674843))))

(declare-fun lt!674853 () Unit!33311)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!582 (LexerInterface!3058 List!19302 List!19301 List!19301) Unit!33311)

(assert (=> b!1749407 (= lt!674853 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!582 thiss!24550 rules!3447 lt!674840 suffix!1421))))

(assert (=> b!1749407 (= lt!674843 (maxPrefix!1612 thiss!24550 rules!3447 lt!674827))))

(assert (=> b!1749407 (isPrefix!1670 lt!674840 lt!674827)))

(declare-fun lt!674819 () Unit!33311)

(assert (=> b!1749407 (= lt!674819 (lemmaConcatTwoListThenFirstIsPrefix!1180 lt!674840 suffix!1421))))

(assert (=> b!1749407 (= lt!674827 (++!5254 lt!674840 suffix!1421))))

(declare-fun b!1749408 () Bool)

(assert (=> b!1749408 (= e!1119564 e!1119546)))

(declare-fun res!786795 () Bool)

(assert (=> b!1749408 (=> res!786795 e!1119546)))

(declare-fun lt!674848 () List!19301)

(declare-fun lt!674820 () Option!3883)

(assert (=> b!1749408 (= res!786795 (or (not (= lt!674848 (_2!10837 lt!674849))) (not (= lt!674820 (Some!3882 (tuple2!18871 (_1!10837 lt!674849) lt!674848))))))))

(assert (=> b!1749408 (= (_2!10837 lt!674849) lt!674848)))

(declare-fun lt!674837 () Unit!33311)

(declare-fun lemmaSamePrefixThenSameSuffix!800 (List!19301 List!19301 List!19301 List!19301 List!19301) Unit!33311)

(assert (=> b!1749408 (= lt!674837 (lemmaSamePrefixThenSameSuffix!800 lt!674821 (_2!10837 lt!674849) lt!674821 lt!674848 lt!674827))))

(declare-fun getSuffix!850 (List!19301 List!19301) List!19301)

(assert (=> b!1749408 (= lt!674848 (getSuffix!850 lt!674827 lt!674821))))

(declare-fun lt!674842 () Int)

(declare-fun lt!674834 () TokenValue!3519)

(assert (=> b!1749408 (= lt!674820 (Some!3882 (tuple2!18871 (Token!6425 lt!674834 (rule!5437 (_1!10837 lt!674849)) lt!674842 lt!674821) (_2!10837 lt!674849))))))

(declare-fun maxPrefixOneRule!984 (LexerInterface!3058 Rule!6658 List!19301) Option!3883)

(assert (=> b!1749408 (= lt!674820 (maxPrefixOneRule!984 thiss!24550 (rule!5437 (_1!10837 lt!674849)) lt!674827))))

(declare-fun size!15276 (List!19301) Int)

(assert (=> b!1749408 (= lt!674842 (size!15276 lt!674821))))

(assert (=> b!1749408 (= lt!674834 (apply!5230 (transformation!3429 (rule!5437 (_1!10837 lt!674849))) (seqFromList!2399 lt!674821)))))

(declare-fun lt!674830 () Unit!33311)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!373 (LexerInterface!3058 List!19302 List!19301 List!19301 List!19301 Rule!6658) Unit!33311)

(assert (=> b!1749408 (= lt!674830 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!373 thiss!24550 rules!3447 lt!674821 lt!674827 (_2!10837 lt!674849) (rule!5437 (_1!10837 lt!674849))))))

(declare-fun b!1749409 () Bool)

(assert (=> b!1749409 (= e!1119554 (= (rule!5437 (_1!10837 lt!674849)) lt!674826))))

(declare-fun b!1749410 () Bool)

(declare-fun res!786808 () Bool)

(assert (=> b!1749410 (=> (not res!786808) (not e!1119566))))

(declare-fun rulesInvariant!2727 (LexerInterface!3058 List!19302) Bool)

(assert (=> b!1749410 (= res!786808 (rulesInvariant!2727 thiss!24550 rules!3447))))

(assert (=> b!1749411 (= e!1119545 (and tp!497626 tp!497625))))

(declare-fun b!1749412 () Bool)

(declare-fun res!786811 () Bool)

(assert (=> b!1749412 (=> res!786811 e!1119549)))

(assert (=> b!1749412 (= res!786811 (not (matchR!2231 (regex!3429 (rule!5437 (_1!10837 lt!674849))) lt!674821)))))

(declare-fun b!1749413 () Bool)

(declare-fun res!786809 () Bool)

(assert (=> b!1749413 (=> res!786809 e!1119557)))

(assert (=> b!1749413 (= res!786809 (not (= lt!674839 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (value!107399 (_1!10837 lt!674849))))))))

(declare-fun b!1749414 () Bool)

(assert (=> b!1749414 (= e!1119551 e!1119558)))

(declare-fun res!786800 () Bool)

(assert (=> b!1749414 (=> res!786800 e!1119558)))

(assert (=> b!1749414 (= res!786800 (not (= lt!674833 suffix!1421)))))

(assert (=> b!1749414 (= suffix!1421 lt!674833)))

(declare-fun lt!674854 () Unit!33311)

(assert (=> b!1749414 (= lt!674854 (lemmaSamePrefixThenSameSuffix!800 lt!674840 suffix!1421 lt!674840 lt!674833 lt!674827))))

(assert (=> b!1749414 (= lt!674833 (getSuffix!850 lt!674827 lt!674840))))

(assert (=> b!1749414 (matchR!2231 lt!674829 lt!674821)))

(declare-fun lt!674847 () Unit!33311)

(assert (=> b!1749414 (= lt!674847 (lemmaMaxPrefixThenMatchesRulesRegex!160 thiss!24550 rules!3447 lt!674827 (_1!10837 lt!674849) (rule!5437 (_1!10837 lt!674849)) (_2!10837 lt!674849)))))

(declare-fun b!1749415 () Bool)

(assert (=> b!1749415 (= e!1119548 e!1119561)))

(declare-fun res!786810 () Bool)

(assert (=> b!1749415 (=> (not res!786810) (not e!1119561))))

(assert (=> b!1749415 (= res!786810 (= (_1!10837 lt!674824) token!523))))

(assert (=> b!1749415 (= lt!674824 (get!5815 lt!674828))))

(assert (= (and start!172538 res!786812) b!1749391))

(assert (= (and b!1749391 res!786797) b!1749410))

(assert (= (and b!1749410 res!786808) b!1749390))

(assert (= (and b!1749390 res!786801) b!1749393))

(assert (= (and b!1749393 res!786804) b!1749415))

(assert (= (and b!1749415 res!786810) b!1749397))

(assert (= (and b!1749397 res!786802) b!1749389))

(assert (= (and b!1749389 res!786807) b!1749404))

(assert (= (and b!1749404 (not res!786814)) b!1749406))

(assert (= (and b!1749406 (not res!786798)) b!1749385))

(assert (= (and b!1749385 (not res!786803)) b!1749407))

(assert (= (and b!1749407 res!786799) b!1749392))

(assert (= (and b!1749392 res!786816) b!1749409))

(assert (= (and b!1749407 (not res!786796)) b!1749412))

(assert (= (and b!1749412 (not res!786811)) b!1749402))

(assert (= (and b!1749402 (not res!786815)) b!1749386))

(assert (= (and b!1749386 (not res!786805)) b!1749413))

(assert (= (and b!1749413 (not res!786809)) b!1749399))

(assert (= (and b!1749399 (not res!786813)) b!1749408))

(assert (= (and b!1749408 (not res!786795)) b!1749401))

(assert (= (and b!1749401 (not res!786806)) b!1749414))

(assert (= (and b!1749414 (not res!786800)) b!1749388))

(assert (= (and start!172538 ((_ is Cons!19231) suffix!1421)) b!1749403))

(assert (= b!1749400 b!1749398))

(assert (= start!172538 b!1749400))

(assert (= b!1749396 b!1749411))

(assert (= b!1749395 b!1749396))

(assert (= start!172538 b!1749395))

(assert (= b!1749394 b!1749387))

(assert (= b!1749405 b!1749394))

(assert (= (and start!172538 ((_ is Cons!19232) rules!3447)) b!1749405))

(declare-fun b_lambda!56203 () Bool)

(assert (=> (not b_lambda!56203) (not b!1749386)))

(declare-fun t!162698 () Bool)

(declare-fun tb!104825 () Bool)

(assert (=> (and b!1749398 (= (toChars!4803 (transformation!3429 rule!422)) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162698) tb!104825))

(declare-fun b!1749431 () Bool)

(declare-fun e!1119580 () Bool)

(declare-fun tp!497639 () Bool)

(declare-fun inv!24938 (Conc!6397) Bool)

(assert (=> b!1749431 (= e!1119580 (and (inv!24938 (c!285323 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (dynLambda!9150 (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) lt!674839)))) tp!497639))))

(declare-fun result!126092 () Bool)

(declare-fun inv!24939 (BalanceConc!12738) Bool)

(assert (=> tb!104825 (= result!126092 (and (inv!24939 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (dynLambda!9150 (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) lt!674839))) e!1119580))))

(assert (= tb!104825 b!1749431))

(declare-fun m!2162449 () Bool)

(assert (=> b!1749431 m!2162449))

(declare-fun m!2162451 () Bool)

(assert (=> tb!104825 m!2162451))

(assert (=> b!1749386 t!162698))

(declare-fun b_and!130639 () Bool)

(assert (= b_and!130629 (and (=> t!162698 result!126092) b_and!130639)))

(declare-fun t!162700 () Bool)

(declare-fun tb!104827 () Bool)

(assert (=> (and b!1749387 (= (toChars!4803 (transformation!3429 (h!24633 rules!3447))) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162700) tb!104827))

(declare-fun result!126096 () Bool)

(assert (= result!126096 result!126092))

(assert (=> b!1749386 t!162700))

(declare-fun b_and!130641 () Bool)

(assert (= b_and!130633 (and (=> t!162700 result!126096) b_and!130641)))

(declare-fun t!162702 () Bool)

(declare-fun tb!104829 () Bool)

(assert (=> (and b!1749411 (= (toChars!4803 (transformation!3429 (rule!5437 token!523))) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162702) tb!104829))

(declare-fun result!126098 () Bool)

(assert (= result!126098 result!126092))

(assert (=> b!1749386 t!162702))

(declare-fun b_and!130643 () Bool)

(assert (= b_and!130637 (and (=> t!162702 result!126098) b_and!130643)))

(declare-fun b_lambda!56205 () Bool)

(assert (=> (not b_lambda!56205) (not b!1749386)))

(declare-fun t!162704 () Bool)

(declare-fun tb!104831 () Bool)

(assert (=> (and b!1749398 (= (toValue!4944 (transformation!3429 rule!422)) (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162704) tb!104831))

(declare-fun result!126100 () Bool)

(assert (=> tb!104831 (= result!126100 (inv!21 (dynLambda!9150 (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) lt!674839)))))

(declare-fun m!2162453 () Bool)

(assert (=> tb!104831 m!2162453))

(assert (=> b!1749386 t!162704))

(declare-fun b_and!130645 () Bool)

(assert (= b_and!130627 (and (=> t!162704 result!126100) b_and!130645)))

(declare-fun t!162706 () Bool)

(declare-fun tb!104833 () Bool)

(assert (=> (and b!1749387 (= (toValue!4944 (transformation!3429 (h!24633 rules!3447))) (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162706) tb!104833))

(declare-fun result!126104 () Bool)

(assert (= result!126104 result!126100))

(assert (=> b!1749386 t!162706))

(declare-fun b_and!130647 () Bool)

(assert (= b_and!130631 (and (=> t!162706 result!126104) b_and!130647)))

(declare-fun t!162708 () Bool)

(declare-fun tb!104835 () Bool)

(assert (=> (and b!1749411 (= (toValue!4944 (transformation!3429 (rule!5437 token!523))) (toValue!4944 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162708) tb!104835))

(declare-fun result!126106 () Bool)

(assert (= result!126106 result!126100))

(assert (=> b!1749386 t!162708))

(declare-fun b_and!130649 () Bool)

(assert (= b_and!130635 (and (=> t!162708 result!126106) b_and!130649)))

(declare-fun b_lambda!56207 () Bool)

(assert (=> (not b_lambda!56207) (not b!1749413)))

(declare-fun tb!104837 () Bool)

(declare-fun t!162710 () Bool)

(assert (=> (and b!1749398 (= (toChars!4803 (transformation!3429 rule!422)) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162710) tb!104837))

(declare-fun b!1749434 () Bool)

(declare-fun e!1119584 () Bool)

(declare-fun tp!497640 () Bool)

(assert (=> b!1749434 (= e!1119584 (and (inv!24938 (c!285323 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (value!107399 (_1!10837 lt!674849))))) tp!497640))))

(declare-fun result!126108 () Bool)

(assert (=> tb!104837 (= result!126108 (and (inv!24939 (dynLambda!9149 (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849)))) (value!107399 (_1!10837 lt!674849)))) e!1119584))))

(assert (= tb!104837 b!1749434))

(declare-fun m!2162455 () Bool)

(assert (=> b!1749434 m!2162455))

(declare-fun m!2162457 () Bool)

(assert (=> tb!104837 m!2162457))

(assert (=> b!1749413 t!162710))

(declare-fun b_and!130651 () Bool)

(assert (= b_and!130639 (and (=> t!162710 result!126108) b_and!130651)))

(declare-fun tb!104839 () Bool)

(declare-fun t!162712 () Bool)

(assert (=> (and b!1749387 (= (toChars!4803 (transformation!3429 (h!24633 rules!3447))) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162712) tb!104839))

(declare-fun result!126110 () Bool)

(assert (= result!126110 result!126108))

(assert (=> b!1749413 t!162712))

(declare-fun b_and!130653 () Bool)

(assert (= b_and!130641 (and (=> t!162712 result!126110) b_and!130653)))

(declare-fun tb!104841 () Bool)

(declare-fun t!162714 () Bool)

(assert (=> (and b!1749411 (= (toChars!4803 (transformation!3429 (rule!5437 token!523))) (toChars!4803 (transformation!3429 (rule!5437 (_1!10837 lt!674849))))) t!162714) tb!104841))

(declare-fun result!126112 () Bool)

(assert (= result!126112 result!126108))

(assert (=> b!1749413 t!162714))

(declare-fun b_and!130655 () Bool)

(assert (= b_and!130643 (and (=> t!162714 result!126112) b_and!130655)))

(declare-fun m!2162459 () Bool)

(assert (=> b!1749393 m!2162459))

(declare-fun m!2162461 () Bool)

(assert (=> b!1749393 m!2162461))

(declare-fun m!2162463 () Bool)

(assert (=> b!1749393 m!2162463))

(declare-fun m!2162465 () Bool)

(assert (=> b!1749393 m!2162465))

(declare-fun m!2162467 () Bool)

(assert (=> b!1749391 m!2162467))

(declare-fun m!2162469 () Bool)

(assert (=> b!1749396 m!2162469))

(declare-fun m!2162471 () Bool)

(assert (=> b!1749396 m!2162471))

(declare-fun m!2162473 () Bool)

(assert (=> b!1749415 m!2162473))

(declare-fun m!2162475 () Bool)

(assert (=> b!1749395 m!2162475))

(declare-fun m!2162477 () Bool)

(assert (=> b!1749385 m!2162477))

(declare-fun m!2162479 () Bool)

(assert (=> b!1749385 m!2162479))

(declare-fun m!2162481 () Bool)

(assert (=> b!1749385 m!2162481))

(declare-fun m!2162483 () Bool)

(assert (=> b!1749385 m!2162483))

(declare-fun m!2162485 () Bool)

(assert (=> b!1749406 m!2162485))

(declare-fun m!2162487 () Bool)

(assert (=> b!1749408 m!2162487))

(declare-fun m!2162489 () Bool)

(assert (=> b!1749408 m!2162489))

(declare-fun m!2162491 () Bool)

(assert (=> b!1749408 m!2162491))

(assert (=> b!1749408 m!2162487))

(declare-fun m!2162493 () Bool)

(assert (=> b!1749408 m!2162493))

(declare-fun m!2162495 () Bool)

(assert (=> b!1749408 m!2162495))

(declare-fun m!2162497 () Bool)

(assert (=> b!1749408 m!2162497))

(declare-fun m!2162499 () Bool)

(assert (=> b!1749408 m!2162499))

(declare-fun m!2162501 () Bool)

(assert (=> b!1749397 m!2162501))

(declare-fun m!2162503 () Bool)

(assert (=> b!1749401 m!2162503))

(declare-fun m!2162505 () Bool)

(assert (=> b!1749401 m!2162505))

(declare-fun m!2162507 () Bool)

(assert (=> b!1749401 m!2162507))

(declare-fun m!2162509 () Bool)

(assert (=> b!1749390 m!2162509))

(declare-fun m!2162511 () Bool)

(assert (=> b!1749388 m!2162511))

(declare-fun m!2162513 () Bool)

(assert (=> b!1749388 m!2162513))

(declare-fun m!2162515 () Bool)

(assert (=> b!1749388 m!2162515))

(assert (=> b!1749388 m!2162511))

(declare-fun m!2162517 () Bool)

(assert (=> b!1749388 m!2162517))

(declare-fun m!2162519 () Bool)

(assert (=> b!1749388 m!2162519))

(declare-fun m!2162521 () Bool)

(assert (=> b!1749404 m!2162521))

(declare-fun m!2162523 () Bool)

(assert (=> b!1749404 m!2162523))

(declare-fun m!2162525 () Bool)

(assert (=> b!1749404 m!2162525))

(declare-fun m!2162527 () Bool)

(assert (=> b!1749412 m!2162527))

(declare-fun m!2162529 () Bool)

(assert (=> b!1749400 m!2162529))

(declare-fun m!2162531 () Bool)

(assert (=> b!1749400 m!2162531))

(declare-fun m!2162533 () Bool)

(assert (=> b!1749392 m!2162533))

(assert (=> b!1749392 m!2162533))

(declare-fun m!2162535 () Bool)

(assert (=> b!1749392 m!2162535))

(assert (=> b!1749392 m!2162535))

(declare-fun m!2162537 () Bool)

(assert (=> b!1749392 m!2162537))

(declare-fun m!2162539 () Bool)

(assert (=> b!1749392 m!2162539))

(declare-fun m!2162541 () Bool)

(assert (=> b!1749402 m!2162541))

(declare-fun m!2162543 () Bool)

(assert (=> b!1749402 m!2162543))

(declare-fun m!2162545 () Bool)

(assert (=> start!172538 m!2162545))

(declare-fun m!2162547 () Bool)

(assert (=> b!1749414 m!2162547))

(declare-fun m!2162549 () Bool)

(assert (=> b!1749414 m!2162549))

(declare-fun m!2162551 () Bool)

(assert (=> b!1749414 m!2162551))

(declare-fun m!2162553 () Bool)

(assert (=> b!1749414 m!2162553))

(declare-fun m!2162555 () Bool)

(assert (=> b!1749410 m!2162555))

(declare-fun m!2162557 () Bool)

(assert (=> b!1749413 m!2162557))

(declare-fun m!2162559 () Bool)

(assert (=> b!1749386 m!2162559))

(assert (=> b!1749386 m!2162559))

(declare-fun m!2162561 () Bool)

(assert (=> b!1749386 m!2162561))

(assert (=> b!1749386 m!2162561))

(declare-fun m!2162563 () Bool)

(assert (=> b!1749386 m!2162563))

(declare-fun m!2162565 () Bool)

(assert (=> b!1749386 m!2162565))

(declare-fun m!2162567 () Bool)

(assert (=> b!1749394 m!2162567))

(declare-fun m!2162569 () Bool)

(assert (=> b!1749394 m!2162569))

(declare-fun m!2162571 () Bool)

(assert (=> b!1749407 m!2162571))

(declare-fun m!2162573 () Bool)

(assert (=> b!1749407 m!2162573))

(declare-fun m!2162575 () Bool)

(assert (=> b!1749407 m!2162575))

(declare-fun m!2162577 () Bool)

(assert (=> b!1749407 m!2162577))

(assert (=> b!1749407 m!2162533))

(declare-fun m!2162579 () Bool)

(assert (=> b!1749407 m!2162579))

(declare-fun m!2162581 () Bool)

(assert (=> b!1749407 m!2162581))

(assert (=> b!1749407 m!2162579))

(declare-fun m!2162583 () Bool)

(assert (=> b!1749407 m!2162583))

(declare-fun m!2162585 () Bool)

(assert (=> b!1749407 m!2162585))

(declare-fun m!2162587 () Bool)

(assert (=> b!1749407 m!2162587))

(declare-fun m!2162589 () Bool)

(assert (=> b!1749407 m!2162589))

(declare-fun m!2162591 () Bool)

(assert (=> b!1749407 m!2162591))

(declare-fun m!2162593 () Bool)

(assert (=> b!1749407 m!2162593))

(declare-fun m!2162595 () Bool)

(assert (=> b!1749407 m!2162595))

(declare-fun m!2162597 () Bool)

(assert (=> b!1749407 m!2162597))

(declare-fun m!2162599 () Bool)

(assert (=> b!1749399 m!2162599))

(declare-fun m!2162601 () Bool)

(assert (=> b!1749399 m!2162601))

(declare-fun m!2162603 () Bool)

(assert (=> b!1749399 m!2162603))

(assert (=> b!1749399 m!2162599))

(declare-fun m!2162605 () Bool)

(assert (=> b!1749399 m!2162605))

(declare-fun m!2162607 () Bool)

(assert (=> b!1749399 m!2162607))

(check-sat (not b!1749406) (not start!172538) b_and!130651 b_and!130649 (not b_next!48891) (not b!1749385) (not b_next!48899) (not b_next!48901) (not b_lambda!56203) b_and!130647 (not b!1749434) (not b!1749394) (not b!1749391) (not b!1749402) (not b!1749412) (not b!1749399) (not b!1749397) (not b!1749410) (not b!1749401) (not tb!104825) (not b_next!48897) (not b!1749386) b_and!130655 (not b_lambda!56205) (not b!1749395) (not b!1749393) (not b_lambda!56207) (not b!1749405) (not b!1749388) b_and!130653 (not b!1749390) (not b!1749400) (not b!1749392) (not b!1749408) (not b!1749404) (not tb!104831) (not b!1749396) (not b!1749403) (not b!1749431) (not b!1749407) (not b!1749414) (not b_next!48893) b_and!130645 (not tb!104837) (not b_next!48895) (not b!1749415) tp_is_empty!7757)
(check-sat b_and!130647 b_and!130651 (not b_next!48897) b_and!130655 b_and!130649 b_and!130653 (not b_next!48891) (not b_next!48899) (not b_next!48901) (not b_next!48893) b_and!130645 (not b_next!48895))
