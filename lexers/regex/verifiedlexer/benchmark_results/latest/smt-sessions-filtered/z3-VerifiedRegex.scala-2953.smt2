; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174638 () Bool)

(assert start!174638)

(declare-fun b!1763696 () Bool)

(declare-fun b_free!48743 () Bool)

(declare-fun b_next!49447 () Bool)

(assert (=> b!1763696 (= b_free!48743 (not b_next!49447))))

(declare-fun tp!500742 () Bool)

(declare-fun b_and!133323 () Bool)

(assert (=> b!1763696 (= tp!500742 b_and!133323)))

(declare-fun b_free!48745 () Bool)

(declare-fun b_next!49449 () Bool)

(assert (=> b!1763696 (= b_free!48745 (not b_next!49449))))

(declare-fun tp!500743 () Bool)

(declare-fun b_and!133325 () Bool)

(assert (=> b!1763696 (= tp!500743 b_and!133325)))

(declare-fun b!1763684 () Bool)

(declare-fun b_free!48747 () Bool)

(declare-fun b_next!49451 () Bool)

(assert (=> b!1763684 (= b_free!48747 (not b_next!49451))))

(declare-fun tp!500735 () Bool)

(declare-fun b_and!133327 () Bool)

(assert (=> b!1763684 (= tp!500735 b_and!133327)))

(declare-fun b_free!48749 () Bool)

(declare-fun b_next!49453 () Bool)

(assert (=> b!1763684 (= b_free!48749 (not b_next!49453))))

(declare-fun tp!500745 () Bool)

(declare-fun b_and!133329 () Bool)

(assert (=> b!1763684 (= tp!500745 b_and!133329)))

(declare-fun b!1763688 () Bool)

(declare-fun b_free!48751 () Bool)

(declare-fun b_next!49455 () Bool)

(assert (=> b!1763688 (= b_free!48751 (not b_next!49455))))

(declare-fun tp!500739 () Bool)

(declare-fun b_and!133331 () Bool)

(assert (=> b!1763688 (= tp!500739 b_and!133331)))

(declare-fun b_free!48753 () Bool)

(declare-fun b_next!49457 () Bool)

(assert (=> b!1763688 (= b_free!48753 (not b_next!49457))))

(declare-fun tp!500746 () Bool)

(declare-fun b_and!133333 () Bool)

(assert (=> b!1763688 (= tp!500746 b_and!133333)))

(declare-fun b!1763720 () Bool)

(declare-fun e!1128601 () Bool)

(assert (=> b!1763720 (= e!1128601 true)))

(declare-fun b!1763719 () Bool)

(declare-fun e!1128600 () Bool)

(assert (=> b!1763719 (= e!1128600 e!1128601)))

(declare-fun b!1763718 () Bool)

(declare-fun e!1128599 () Bool)

(assert (=> b!1763718 (= e!1128599 e!1128600)))

(declare-fun b!1763689 () Bool)

(assert (=> b!1763689 e!1128599))

(assert (= b!1763719 b!1763720))

(assert (= b!1763718 b!1763719))

(assert (= b!1763689 b!1763718))

(declare-fun lambda!70236 () Int)

(declare-fun order!12315 () Int)

(declare-datatypes ((List!19475 0))(
  ( (Nil!19405) (Cons!19405 (h!24806 (_ BitVec 16)) (t!164460 List!19475)) )
))
(declare-datatypes ((TokenValue!3557 0))(
  ( (FloatLiteralValue!7114 (text!25344 List!19475)) (TokenValueExt!3556 (__x!12416 Int)) (Broken!17785 (value!108456 List!19475)) (Object!3626) (End!3557) (Def!3557) (Underscore!3557) (Match!3557) (Else!3557) (Error!3557) (Case!3557) (If!3557) (Extends!3557) (Abstract!3557) (Class!3557) (Val!3557) (DelimiterValue!7114 (del!3617 List!19475)) (KeywordValue!3563 (value!108457 List!19475)) (CommentValue!7114 (value!108458 List!19475)) (WhitespaceValue!7114 (value!108459 List!19475)) (IndentationValue!3557 (value!108460 List!19475)) (String!22116) (Int32!3557) (Broken!17786 (value!108461 List!19475)) (Boolean!3558) (Unit!33592) (OperatorValue!3560 (op!3617 List!19475)) (IdentifierValue!7114 (value!108462 List!19475)) (IdentifierValue!7115 (value!108463 List!19475)) (WhitespaceValue!7115 (value!108464 List!19475)) (True!7114) (False!7114) (Broken!17787 (value!108465 List!19475)) (Broken!17788 (value!108466 List!19475)) (True!7115) (RightBrace!3557) (RightBracket!3557) (Colon!3557) (Null!3557) (Comma!3557) (LeftBracket!3557) (False!7115) (LeftBrace!3557) (ImaginaryLiteralValue!3557 (text!25345 List!19475)) (StringLiteralValue!10671 (value!108467 List!19475)) (EOFValue!3557 (value!108468 List!19475)) (IdentValue!3557 (value!108469 List!19475)) (DelimiterValue!7115 (value!108470 List!19475)) (DedentValue!3557 (value!108471 List!19475)) (NewLineValue!3557 (value!108472 List!19475)) (IntegerValue!10671 (value!108473 (_ BitVec 32)) (text!25346 List!19475)) (IntegerValue!10672 (value!108474 Int) (text!25347 List!19475)) (Times!3557) (Or!3557) (Equal!3557) (Minus!3557) (Broken!17789 (value!108475 List!19475)) (And!3557) (Div!3557) (LessEqual!3557) (Mod!3557) (Concat!8352) (Not!3557) (Plus!3557) (SpaceValue!3557 (value!108476 List!19475)) (IntegerValue!10673 (value!108477 Int) (text!25348 List!19475)) (StringLiteralValue!10672 (text!25349 List!19475)) (FloatLiteralValue!7115 (text!25350 List!19475)) (BytesLiteralValue!3557 (value!108478 List!19475)) (CommentValue!7115 (value!108479 List!19475)) (StringLiteralValue!10673 (value!108480 List!19475)) (ErrorTokenValue!3557 (msg!3618 List!19475)) )
))
(declare-datatypes ((C!9764 0))(
  ( (C!9765 (val!5478 Int)) )
))
(declare-datatypes ((List!19476 0))(
  ( (Nil!19406) (Cons!19406 (h!24807 C!9764) (t!164461 List!19476)) )
))
(declare-datatypes ((Regex!4795 0))(
  ( (ElementMatch!4795 (c!287388 C!9764)) (Concat!8353 (regOne!10102 Regex!4795) (regTwo!10102 Regex!4795)) (EmptyExpr!4795) (Star!4795 (reg!5124 Regex!4795)) (EmptyLang!4795) (Union!4795 (regOne!10103 Regex!4795) (regTwo!10103 Regex!4795)) )
))
(declare-datatypes ((String!22117 0))(
  ( (String!22118 (value!108481 String)) )
))
(declare-datatypes ((IArray!12915 0))(
  ( (IArray!12916 (innerList!6515 List!19476)) )
))
(declare-datatypes ((Conc!6455 0))(
  ( (Node!6455 (left!15534 Conc!6455) (right!15864 Conc!6455) (csize!13140 Int) (cheight!6666 Int)) (Leaf!9409 (xs!9331 IArray!12915) (csize!13141 Int)) (Empty!6455) )
))
(declare-datatypes ((BalanceConc!12854 0))(
  ( (BalanceConc!12855 (c!287389 Conc!6455)) )
))
(declare-datatypes ((TokenValueInjection!6774 0))(
  ( (TokenValueInjection!6775 (toValue!4990 Int) (toChars!4849 Int)) )
))
(declare-datatypes ((Rule!6734 0))(
  ( (Rule!6735 (regex!3467 Regex!4795) (tag!3837 String!22117) (isSeparator!3467 Bool) (transformation!3467 TokenValueInjection!6774)) )
))
(declare-datatypes ((Token!6500 0))(
  ( (Token!6501 (value!108482 TokenValue!3557) (rule!5489 Rule!6734) (size!15415 Int) (originalCharacters!4281 List!19476)) )
))
(declare-datatypes ((tuple2!19018 0))(
  ( (tuple2!19019 (_1!10911 Token!6500) (_2!10911 List!19476)) )
))
(declare-fun lt!681810 () tuple2!19018)

(declare-fun order!12317 () Int)

(declare-fun dynLambda!9359 (Int Int) Int)

(declare-fun dynLambda!9360 (Int Int) Int)

(assert (=> b!1763720 (< (dynLambda!9359 order!12315 (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) (dynLambda!9360 order!12317 lambda!70236))))

(declare-fun order!12319 () Int)

(declare-fun dynLambda!9361 (Int Int) Int)

(assert (=> b!1763720 (< (dynLambda!9361 order!12319 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) (dynLambda!9360 order!12317 lambda!70236))))

(declare-fun b!1763681 () Bool)

(declare-fun e!1128572 () Bool)

(declare-fun e!1128575 () Bool)

(assert (=> b!1763681 (= e!1128572 e!1128575)))

(declare-fun res!793818 () Bool)

(assert (=> b!1763681 (=> (not res!793818) (not e!1128575))))

(declare-fun lt!681806 () tuple2!19018)

(declare-fun token!523 () Token!6500)

(assert (=> b!1763681 (= res!793818 (= (_1!10911 lt!681806) token!523))))

(declare-datatypes ((Option!3956 0))(
  ( (None!3955) (Some!3955 (v!25420 tuple2!19018)) )
))
(declare-fun lt!681799 () Option!3956)

(declare-fun get!5907 (Option!3956) tuple2!19018)

(assert (=> b!1763681 (= lt!681806 (get!5907 lt!681799))))

(declare-fun b!1763682 () Bool)

(declare-fun e!1128578 () Bool)

(declare-fun e!1128576 () Bool)

(assert (=> b!1763682 (= e!1128578 e!1128576)))

(declare-fun res!793816 () Bool)

(assert (=> b!1763682 (=> res!793816 e!1128576)))

(declare-fun lt!681789 () List!19476)

(declare-fun lt!681791 () List!19476)

(declare-fun isPrefix!1707 (List!19476 List!19476) Bool)

(assert (=> b!1763682 (= res!793816 (not (isPrefix!1707 lt!681789 lt!681791)))))

(declare-fun ++!5291 (List!19476 List!19476) List!19476)

(assert (=> b!1763682 (isPrefix!1707 lt!681789 (++!5291 lt!681789 (_2!10911 lt!681810)))))

(declare-datatypes ((Unit!33593 0))(
  ( (Unit!33594) )
))
(declare-fun lt!681807 () Unit!33593)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1216 (List!19476 List!19476) Unit!33593)

(assert (=> b!1763682 (= lt!681807 (lemmaConcatTwoListThenFirstIsPrefix!1216 lt!681789 (_2!10911 lt!681810)))))

(declare-fun lt!681804 () BalanceConc!12854)

(declare-fun list!7877 (BalanceConc!12854) List!19476)

(assert (=> b!1763682 (= lt!681789 (list!7877 lt!681804))))

(declare-fun charsOf!2116 (Token!6500) BalanceConc!12854)

(assert (=> b!1763682 (= lt!681804 (charsOf!2116 (_1!10911 lt!681810)))))

(declare-fun e!1128585 () Bool)

(assert (=> b!1763682 e!1128585))

(declare-fun res!793810 () Bool)

(assert (=> b!1763682 (=> (not res!793810) (not e!1128585))))

(declare-datatypes ((Option!3957 0))(
  ( (None!3956) (Some!3956 (v!25421 Rule!6734)) )
))
(declare-fun lt!681805 () Option!3957)

(declare-fun isDefined!3299 (Option!3957) Bool)

(assert (=> b!1763682 (= res!793810 (isDefined!3299 lt!681805))))

(declare-datatypes ((LexerInterface!3096 0))(
  ( (LexerInterfaceExt!3093 (__x!12417 Int)) (Lexer!3094) )
))
(declare-fun thiss!24550 () LexerInterface!3096)

(declare-datatypes ((List!19477 0))(
  ( (Nil!19407) (Cons!19407 (h!24808 Rule!6734) (t!164462 List!19477)) )
))
(declare-fun rules!3447 () List!19477)

(declare-fun getRuleFromTag!515 (LexerInterface!3096 List!19477 String!22117) Option!3957)

(assert (=> b!1763682 (= lt!681805 (getRuleFromTag!515 thiss!24550 rules!3447 (tag!3837 (rule!5489 (_1!10911 lt!681810)))))))

(declare-fun lt!681801 () Unit!33593)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!515 (LexerInterface!3096 List!19477 List!19476 Token!6500) Unit!33593)

(assert (=> b!1763682 (= lt!681801 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!515 thiss!24550 rules!3447 lt!681791 (_1!10911 lt!681810)))))

(declare-fun lt!681788 () Option!3956)

(assert (=> b!1763682 (= lt!681810 (get!5907 lt!681788))))

(declare-fun suffix!1421 () List!19476)

(declare-fun lt!681802 () List!19476)

(declare-fun lt!681811 () Unit!33593)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!618 (LexerInterface!3096 List!19477 List!19476 List!19476) Unit!33593)

(assert (=> b!1763682 (= lt!681811 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!618 thiss!24550 rules!3447 lt!681802 suffix!1421))))

(declare-fun maxPrefix!1650 (LexerInterface!3096 List!19477 List!19476) Option!3956)

(assert (=> b!1763682 (= lt!681788 (maxPrefix!1650 thiss!24550 rules!3447 lt!681791))))

(assert (=> b!1763682 (isPrefix!1707 lt!681802 lt!681791)))

(declare-fun lt!681797 () Unit!33593)

(assert (=> b!1763682 (= lt!681797 (lemmaConcatTwoListThenFirstIsPrefix!1216 lt!681802 suffix!1421))))

(assert (=> b!1763682 (= lt!681791 (++!5291 lt!681802 suffix!1421))))

(declare-fun tp!500736 () Bool)

(declare-fun e!1128581 () Bool)

(declare-fun b!1763683 () Bool)

(declare-fun e!1128590 () Bool)

(declare-fun inv!21 (TokenValue!3557) Bool)

(assert (=> b!1763683 (= e!1128590 (and (inv!21 (value!108482 token!523)) e!1128581 tp!500736))))

(declare-fun e!1128583 () Bool)

(assert (=> b!1763684 (= e!1128583 (and tp!500735 tp!500745))))

(declare-fun b!1763685 () Bool)

(declare-fun res!793821 () Bool)

(declare-fun e!1128584 () Bool)

(assert (=> b!1763685 (=> (not res!793821) (not e!1128584))))

(declare-fun rule!422 () Rule!6734)

(declare-fun contains!3497 (List!19477 Rule!6734) Bool)

(assert (=> b!1763685 (= res!793821 (contains!3497 rules!3447 rule!422))))

(declare-fun b!1763686 () Bool)

(declare-fun res!793822 () Bool)

(assert (=> b!1763686 (=> res!793822 e!1128576)))

(declare-fun matchR!2268 (Regex!4795 List!19476) Bool)

(assert (=> b!1763686 (= res!793822 (not (matchR!2268 (regex!3467 (rule!5489 (_1!10911 lt!681810))) lt!681789)))))

(declare-fun b!1763687 () Bool)

(declare-fun res!793815 () Bool)

(assert (=> b!1763687 (=> (not res!793815) (not e!1128575))))

(declare-fun isEmpty!12248 (List!19476) Bool)

(assert (=> b!1763687 (= res!793815 (isEmpty!12248 (_2!10911 lt!681806)))))

(declare-fun e!1128586 () Bool)

(assert (=> b!1763688 (= e!1128586 (and tp!500739 tp!500746))))

(declare-fun e!1128579 () Bool)

(assert (=> b!1763689 (= e!1128576 e!1128579)))

(declare-fun res!793819 () Bool)

(assert (=> b!1763689 (=> res!793819 e!1128579)))

(declare-fun Forall!834 (Int) Bool)

(assert (=> b!1763689 (= res!793819 (not (Forall!834 lambda!70236)))))

(declare-fun lt!681790 () Unit!33593)

(declare-fun lemmaInv!666 (TokenValueInjection!6774) Unit!33593)

(assert (=> b!1763689 (= lt!681790 (lemmaInv!666 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))))))

(declare-fun b!1763690 () Bool)

(declare-fun e!1128570 () Bool)

(assert (=> b!1763690 (= e!1128579 e!1128570)))

(declare-fun res!793811 () Bool)

(assert (=> b!1763690 (=> res!793811 e!1128570)))

(declare-fun dynLambda!9362 (Int TokenValue!3557) BalanceConc!12854)

(declare-fun dynLambda!9363 (Int BalanceConc!12854) TokenValue!3557)

(assert (=> b!1763690 (= res!793811 (not (= (list!7877 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (dynLambda!9363 (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) lt!681804))) lt!681789)))))

(declare-fun lt!681803 () Unit!33593)

(declare-fun lemmaSemiInverse!605 (TokenValueInjection!6774 BalanceConc!12854) Unit!33593)

(assert (=> b!1763690 (= lt!681803 (lemmaSemiInverse!605 (transformation!3467 (rule!5489 (_1!10911 lt!681810))) lt!681804))))

(declare-fun b!1763691 () Bool)

(declare-fun e!1128582 () Bool)

(declare-fun e!1128589 () Bool)

(declare-fun tp!500741 () Bool)

(assert (=> b!1763691 (= e!1128582 (and e!1128589 tp!500741))))

(declare-fun b!1763692 () Bool)

(declare-fun e!1128574 () Bool)

(assert (=> b!1763692 (= e!1128574 true)))

(declare-fun lt!681812 () Int)

(declare-fun lt!681793 () BalanceConc!12854)

(declare-fun size!15416 (BalanceConc!12854) Int)

(assert (=> b!1763692 (= lt!681812 (size!15416 lt!681793))))

(declare-fun lt!681795 () Regex!4795)

(assert (=> b!1763692 (matchR!2268 lt!681795 lt!681802)))

(declare-fun lt!681798 () Unit!33593)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!174 (LexerInterface!3096 List!19477 List!19476 Token!6500 Rule!6734 List!19476) Unit!33593)

(assert (=> b!1763692 (= lt!681798 (lemmaMaxPrefixThenMatchesRulesRegex!174 thiss!24550 rules!3447 lt!681802 token!523 rule!422 Nil!19406))))

(declare-fun b!1763693 () Bool)

(declare-fun tp!500744 () Bool)

(declare-fun inv!25198 (String!22117) Bool)

(declare-fun inv!25203 (TokenValueInjection!6774) Bool)

(assert (=> b!1763693 (= e!1128589 (and tp!500744 (inv!25198 (tag!3837 (h!24808 rules!3447))) (inv!25203 (transformation!3467 (h!24808 rules!3447))) e!1128586))))

(declare-fun b!1763694 () Bool)

(declare-fun res!793825 () Bool)

(assert (=> b!1763694 (=> (not res!793825) (not e!1128575))))

(assert (=> b!1763694 (= res!793825 (= (rule!5489 token!523) rule!422))))

(declare-fun e!1128587 () Bool)

(declare-fun b!1763695 () Bool)

(declare-fun tp!500740 () Bool)

(assert (=> b!1763695 (= e!1128587 (and tp!500740 (inv!25198 (tag!3837 rule!422)) (inv!25203 (transformation!3467 rule!422)) e!1128583))))

(declare-fun e!1128577 () Bool)

(assert (=> b!1763696 (= e!1128577 (and tp!500742 tp!500743))))

(declare-fun b!1763697 () Bool)

(declare-fun e!1128571 () Bool)

(declare-fun tp_is_empty!7833 () Bool)

(declare-fun tp!500737 () Bool)

(assert (=> b!1763697 (= e!1128571 (and tp_is_empty!7833 tp!500737))))

(declare-fun b!1763698 () Bool)

(assert (=> b!1763698 (= e!1128584 e!1128572)))

(declare-fun res!793812 () Bool)

(assert (=> b!1763698 (=> (not res!793812) (not e!1128572))))

(declare-fun isDefined!3300 (Option!3956) Bool)

(assert (=> b!1763698 (= res!793812 (isDefined!3300 lt!681799))))

(assert (=> b!1763698 (= lt!681799 (maxPrefix!1650 thiss!24550 rules!3447 lt!681802))))

(assert (=> b!1763698 (= lt!681802 (list!7877 lt!681793))))

(assert (=> b!1763698 (= lt!681793 (charsOf!2116 token!523))))

(declare-fun b!1763699 () Bool)

(declare-fun e!1128573 () Bool)

(assert (=> b!1763699 (= e!1128573 e!1128578)))

(declare-fun res!793809 () Bool)

(assert (=> b!1763699 (=> res!793809 e!1128578)))

(declare-fun prefixMatch!678 (Regex!4795 List!19476) Bool)

(declare-fun head!4086 (List!19476) C!9764)

(assert (=> b!1763699 (= res!793809 (prefixMatch!678 lt!681795 (++!5291 lt!681802 (Cons!19406 (head!4086 suffix!1421) Nil!19406))))))

(declare-fun rulesRegex!823 (LexerInterface!3096 List!19477) Regex!4795)

(assert (=> b!1763699 (= lt!681795 (rulesRegex!823 thiss!24550 rules!3447))))

(declare-fun b!1763700 () Bool)

(declare-fun res!793808 () Bool)

(assert (=> b!1763700 (=> (not res!793808) (not e!1128584))))

(declare-fun rulesInvariant!2765 (LexerInterface!3096 List!19477) Bool)

(assert (=> b!1763700 (= res!793808 (rulesInvariant!2765 thiss!24550 rules!3447))))

(declare-fun b!1763701 () Bool)

(declare-fun e!1128580 () Bool)

(assert (=> b!1763701 (= e!1128585 e!1128580)))

(declare-fun res!793813 () Bool)

(assert (=> b!1763701 (=> (not res!793813) (not e!1128580))))

(declare-fun lt!681796 () Rule!6734)

(assert (=> b!1763701 (= res!793813 (matchR!2268 (regex!3467 lt!681796) (list!7877 (charsOf!2116 (_1!10911 lt!681810)))))))

(declare-fun get!5908 (Option!3957) Rule!6734)

(assert (=> b!1763701 (= lt!681796 (get!5908 lt!681805))))

(declare-fun b!1763702 () Bool)

(declare-fun res!793820 () Bool)

(assert (=> b!1763702 (=> res!793820 e!1128570)))

(assert (=> b!1763702 (= res!793820 (not (= lt!681804 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (value!108482 (_1!10911 lt!681810))))))))

(declare-fun b!1763703 () Bool)

(assert (=> b!1763703 (= e!1128580 (= (rule!5489 (_1!10911 lt!681810)) lt!681796))))

(declare-fun tp!500738 () Bool)

(declare-fun b!1763704 () Bool)

(assert (=> b!1763704 (= e!1128581 (and tp!500738 (inv!25198 (tag!3837 (rule!5489 token!523))) (inv!25203 (transformation!3467 (rule!5489 token!523))) e!1128577))))

(declare-fun res!793826 () Bool)

(assert (=> start!174638 (=> (not res!793826) (not e!1128584))))

(get-info :version)

(assert (=> start!174638 (= res!793826 ((_ is Lexer!3094) thiss!24550))))

(assert (=> start!174638 e!1128584))

(assert (=> start!174638 e!1128571))

(assert (=> start!174638 e!1128587))

(assert (=> start!174638 true))

(declare-fun inv!25204 (Token!6500) Bool)

(assert (=> start!174638 (and (inv!25204 token!523) e!1128590)))

(assert (=> start!174638 e!1128582))

(declare-fun b!1763705 () Bool)

(declare-fun res!793807 () Bool)

(assert (=> b!1763705 (=> (not res!793807) (not e!1128584))))

(declare-fun isEmpty!12249 (List!19477) Bool)

(assert (=> b!1763705 (= res!793807 (not (isEmpty!12249 rules!3447)))))

(declare-fun b!1763706 () Bool)

(assert (=> b!1763706 (= e!1128575 (not e!1128573))))

(declare-fun res!793823 () Bool)

(assert (=> b!1763706 (=> res!793823 e!1128573)))

(assert (=> b!1763706 (= res!793823 (not (matchR!2268 (regex!3467 rule!422) lt!681802)))))

(declare-fun ruleValid!965 (LexerInterface!3096 Rule!6734) Bool)

(assert (=> b!1763706 (ruleValid!965 thiss!24550 rule!422)))

(declare-fun lt!681809 () Unit!33593)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!488 (LexerInterface!3096 Rule!6734 List!19477) Unit!33593)

(assert (=> b!1763706 (= lt!681809 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!488 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1763707 () Bool)

(declare-fun e!1128592 () Bool)

(assert (=> b!1763707 (= e!1128592 e!1128574)))

(declare-fun res!793817 () Bool)

(assert (=> b!1763707 (=> res!793817 e!1128574)))

(declare-fun lt!681814 () Option!3956)

(declare-fun lt!681792 () List!19476)

(assert (=> b!1763707 (= res!793817 (or (not (= lt!681792 (_2!10911 lt!681810))) (not (= lt!681814 (Some!3955 (tuple2!19019 (_1!10911 lt!681810) lt!681792))))))))

(assert (=> b!1763707 (= (_2!10911 lt!681810) lt!681792)))

(declare-fun lt!681813 () Unit!33593)

(declare-fun lemmaSamePrefixThenSameSuffix!818 (List!19476 List!19476 List!19476 List!19476 List!19476) Unit!33593)

(assert (=> b!1763707 (= lt!681813 (lemmaSamePrefixThenSameSuffix!818 lt!681789 (_2!10911 lt!681810) lt!681789 lt!681792 lt!681791))))

(declare-fun getSuffix!874 (List!19476 List!19476) List!19476)

(assert (=> b!1763707 (= lt!681792 (getSuffix!874 lt!681791 lt!681789))))

(declare-fun lt!681808 () TokenValue!3557)

(declare-fun lt!681786 () Int)

(assert (=> b!1763707 (= lt!681814 (Some!3955 (tuple2!19019 (Token!6501 lt!681808 (rule!5489 (_1!10911 lt!681810)) lt!681786 lt!681789) (_2!10911 lt!681810))))))

(declare-fun maxPrefixOneRule!1019 (LexerInterface!3096 Rule!6734 List!19476) Option!3956)

(assert (=> b!1763707 (= lt!681814 (maxPrefixOneRule!1019 thiss!24550 (rule!5489 (_1!10911 lt!681810)) lt!681791))))

(declare-fun size!15417 (List!19476) Int)

(assert (=> b!1763707 (= lt!681786 (size!15417 lt!681789))))

(declare-fun apply!5267 (TokenValueInjection!6774 BalanceConc!12854) TokenValue!3557)

(declare-fun seqFromList!2436 (List!19476) BalanceConc!12854)

(assert (=> b!1763707 (= lt!681808 (apply!5267 (transformation!3467 (rule!5489 (_1!10911 lt!681810))) (seqFromList!2436 lt!681789)))))

(declare-fun lt!681800 () Unit!33593)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!397 (LexerInterface!3096 List!19477 List!19476 List!19476 List!19476 Rule!6734) Unit!33593)

(assert (=> b!1763707 (= lt!681800 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!397 thiss!24550 rules!3447 lt!681789 lt!681791 (_2!10911 lt!681810) (rule!5489 (_1!10911 lt!681810))))))

(declare-fun b!1763708 () Bool)

(declare-fun res!793824 () Bool)

(assert (=> b!1763708 (=> res!793824 e!1128573)))

(assert (=> b!1763708 (= res!793824 (isEmpty!12248 suffix!1421))))

(declare-fun b!1763709 () Bool)

(assert (=> b!1763709 (= e!1128570 e!1128592)))

(declare-fun res!793814 () Bool)

(assert (=> b!1763709 (=> res!793814 e!1128592)))

(assert (=> b!1763709 (= res!793814 (not (= lt!681788 (Some!3955 (tuple2!19019 (Token!6501 (apply!5267 (transformation!3467 (rule!5489 (_1!10911 lt!681810))) lt!681804) (rule!5489 (_1!10911 lt!681810)) (size!15416 lt!681804) lt!681789) (_2!10911 lt!681810))))))))

(declare-fun lt!681787 () Unit!33593)

(declare-fun lemmaCharactersSize!525 (Token!6500) Unit!33593)

(assert (=> b!1763709 (= lt!681787 (lemmaCharactersSize!525 (_1!10911 lt!681810)))))

(declare-fun lt!681794 () Unit!33593)

(declare-fun lemmaEqSameImage!378 (TokenValueInjection!6774 BalanceConc!12854 BalanceConc!12854) Unit!33593)

(assert (=> b!1763709 (= lt!681794 (lemmaEqSameImage!378 (transformation!3467 (rule!5489 (_1!10911 lt!681810))) lt!681804 (seqFromList!2436 (originalCharacters!4281 (_1!10911 lt!681810)))))))

(assert (= (and start!174638 res!793826) b!1763705))

(assert (= (and b!1763705 res!793807) b!1763700))

(assert (= (and b!1763700 res!793808) b!1763685))

(assert (= (and b!1763685 res!793821) b!1763698))

(assert (= (and b!1763698 res!793812) b!1763681))

(assert (= (and b!1763681 res!793818) b!1763687))

(assert (= (and b!1763687 res!793815) b!1763694))

(assert (= (and b!1763694 res!793825) b!1763706))

(assert (= (and b!1763706 (not res!793823)) b!1763708))

(assert (= (and b!1763708 (not res!793824)) b!1763699))

(assert (= (and b!1763699 (not res!793809)) b!1763682))

(assert (= (and b!1763682 res!793810) b!1763701))

(assert (= (and b!1763701 res!793813) b!1763703))

(assert (= (and b!1763682 (not res!793816)) b!1763686))

(assert (= (and b!1763686 (not res!793822)) b!1763689))

(assert (= (and b!1763689 (not res!793819)) b!1763690))

(assert (= (and b!1763690 (not res!793811)) b!1763702))

(assert (= (and b!1763702 (not res!793820)) b!1763709))

(assert (= (and b!1763709 (not res!793814)) b!1763707))

(assert (= (and b!1763707 (not res!793817)) b!1763692))

(assert (= (and start!174638 ((_ is Cons!19406) suffix!1421)) b!1763697))

(assert (= b!1763695 b!1763684))

(assert (= start!174638 b!1763695))

(assert (= b!1763704 b!1763696))

(assert (= b!1763683 b!1763704))

(assert (= start!174638 b!1763683))

(assert (= b!1763693 b!1763688))

(assert (= b!1763691 b!1763693))

(assert (= (and start!174638 ((_ is Cons!19407) rules!3447)) b!1763691))

(declare-fun b_lambda!57187 () Bool)

(assert (=> (not b_lambda!57187) (not b!1763690)))

(declare-fun t!164443 () Bool)

(declare-fun tb!106383 () Bool)

(assert (=> (and b!1763696 (= (toChars!4849 (transformation!3467 (rule!5489 token!523))) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164443) tb!106383))

(declare-fun b!1763725 () Bool)

(declare-fun e!1128604 () Bool)

(declare-fun tp!500749 () Bool)

(declare-fun inv!25205 (Conc!6455) Bool)

(assert (=> b!1763725 (= e!1128604 (and (inv!25205 (c!287389 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (dynLambda!9363 (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) lt!681804)))) tp!500749))))

(declare-fun result!127970 () Bool)

(declare-fun inv!25206 (BalanceConc!12854) Bool)

(assert (=> tb!106383 (= result!127970 (and (inv!25206 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (dynLambda!9363 (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) lt!681804))) e!1128604))))

(assert (= tb!106383 b!1763725))

(declare-fun m!2180511 () Bool)

(assert (=> b!1763725 m!2180511))

(declare-fun m!2180513 () Bool)

(assert (=> tb!106383 m!2180513))

(assert (=> b!1763690 t!164443))

(declare-fun b_and!133335 () Bool)

(assert (= b_and!133325 (and (=> t!164443 result!127970) b_and!133335)))

(declare-fun t!164445 () Bool)

(declare-fun tb!106385 () Bool)

(assert (=> (and b!1763684 (= (toChars!4849 (transformation!3467 rule!422)) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164445) tb!106385))

(declare-fun result!127974 () Bool)

(assert (= result!127974 result!127970))

(assert (=> b!1763690 t!164445))

(declare-fun b_and!133337 () Bool)

(assert (= b_and!133329 (and (=> t!164445 result!127974) b_and!133337)))

(declare-fun t!164447 () Bool)

(declare-fun tb!106387 () Bool)

(assert (=> (and b!1763688 (= (toChars!4849 (transformation!3467 (h!24808 rules!3447))) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164447) tb!106387))

(declare-fun result!127976 () Bool)

(assert (= result!127976 result!127970))

(assert (=> b!1763690 t!164447))

(declare-fun b_and!133339 () Bool)

(assert (= b_and!133333 (and (=> t!164447 result!127976) b_and!133339)))

(declare-fun b_lambda!57189 () Bool)

(assert (=> (not b_lambda!57189) (not b!1763690)))

(declare-fun tb!106389 () Bool)

(declare-fun t!164449 () Bool)

(assert (=> (and b!1763696 (= (toValue!4990 (transformation!3467 (rule!5489 token!523))) (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164449) tb!106389))

(declare-fun result!127978 () Bool)

(assert (=> tb!106389 (= result!127978 (inv!21 (dynLambda!9363 (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) lt!681804)))))

(declare-fun m!2180515 () Bool)

(assert (=> tb!106389 m!2180515))

(assert (=> b!1763690 t!164449))

(declare-fun b_and!133341 () Bool)

(assert (= b_and!133323 (and (=> t!164449 result!127978) b_and!133341)))

(declare-fun t!164451 () Bool)

(declare-fun tb!106391 () Bool)

(assert (=> (and b!1763684 (= (toValue!4990 (transformation!3467 rule!422)) (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164451) tb!106391))

(declare-fun result!127982 () Bool)

(assert (= result!127982 result!127978))

(assert (=> b!1763690 t!164451))

(declare-fun b_and!133343 () Bool)

(assert (= b_and!133327 (and (=> t!164451 result!127982) b_and!133343)))

(declare-fun tb!106393 () Bool)

(declare-fun t!164453 () Bool)

(assert (=> (and b!1763688 (= (toValue!4990 (transformation!3467 (h!24808 rules!3447))) (toValue!4990 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164453) tb!106393))

(declare-fun result!127984 () Bool)

(assert (= result!127984 result!127978))

(assert (=> b!1763690 t!164453))

(declare-fun b_and!133345 () Bool)

(assert (= b_and!133331 (and (=> t!164453 result!127984) b_and!133345)))

(declare-fun b_lambda!57191 () Bool)

(assert (=> (not b_lambda!57191) (not b!1763702)))

(declare-fun tb!106395 () Bool)

(declare-fun t!164455 () Bool)

(assert (=> (and b!1763696 (= (toChars!4849 (transformation!3467 (rule!5489 token!523))) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164455) tb!106395))

(declare-fun b!1763728 () Bool)

(declare-fun e!1128608 () Bool)

(declare-fun tp!500750 () Bool)

(assert (=> b!1763728 (= e!1128608 (and (inv!25205 (c!287389 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (value!108482 (_1!10911 lt!681810))))) tp!500750))))

(declare-fun result!127986 () Bool)

(assert (=> tb!106395 (= result!127986 (and (inv!25206 (dynLambda!9362 (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810)))) (value!108482 (_1!10911 lt!681810)))) e!1128608))))

(assert (= tb!106395 b!1763728))

(declare-fun m!2180517 () Bool)

(assert (=> b!1763728 m!2180517))

(declare-fun m!2180519 () Bool)

(assert (=> tb!106395 m!2180519))

(assert (=> b!1763702 t!164455))

(declare-fun b_and!133347 () Bool)

(assert (= b_and!133335 (and (=> t!164455 result!127986) b_and!133347)))

(declare-fun t!164457 () Bool)

(declare-fun tb!106397 () Bool)

(assert (=> (and b!1763684 (= (toChars!4849 (transformation!3467 rule!422)) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164457) tb!106397))

(declare-fun result!127988 () Bool)

(assert (= result!127988 result!127986))

(assert (=> b!1763702 t!164457))

(declare-fun b_and!133349 () Bool)

(assert (= b_and!133337 (and (=> t!164457 result!127988) b_and!133349)))

(declare-fun tb!106399 () Bool)

(declare-fun t!164459 () Bool)

(assert (=> (and b!1763688 (= (toChars!4849 (transformation!3467 (h!24808 rules!3447))) (toChars!4849 (transformation!3467 (rule!5489 (_1!10911 lt!681810))))) t!164459) tb!106399))

(declare-fun result!127990 () Bool)

(assert (= result!127990 result!127986))

(assert (=> b!1763702 t!164459))

(declare-fun b_and!133351 () Bool)

(assert (= b_and!133339 (and (=> t!164459 result!127990) b_and!133351)))

(declare-fun m!2180521 () Bool)

(assert (=> b!1763681 m!2180521))

(declare-fun m!2180523 () Bool)

(assert (=> start!174638 m!2180523))

(declare-fun m!2180525 () Bool)

(assert (=> b!1763683 m!2180525))

(declare-fun m!2180527 () Bool)

(assert (=> b!1763704 m!2180527))

(declare-fun m!2180529 () Bool)

(assert (=> b!1763704 m!2180529))

(declare-fun m!2180531 () Bool)

(assert (=> b!1763692 m!2180531))

(declare-fun m!2180533 () Bool)

(assert (=> b!1763692 m!2180533))

(declare-fun m!2180535 () Bool)

(assert (=> b!1763692 m!2180535))

(declare-fun m!2180537 () Bool)

(assert (=> b!1763700 m!2180537))

(declare-fun m!2180539 () Bool)

(assert (=> b!1763698 m!2180539))

(declare-fun m!2180541 () Bool)

(assert (=> b!1763698 m!2180541))

(declare-fun m!2180543 () Bool)

(assert (=> b!1763698 m!2180543))

(declare-fun m!2180545 () Bool)

(assert (=> b!1763698 m!2180545))

(declare-fun m!2180547 () Bool)

(assert (=> b!1763695 m!2180547))

(declare-fun m!2180549 () Bool)

(assert (=> b!1763695 m!2180549))

(declare-fun m!2180551 () Bool)

(assert (=> b!1763706 m!2180551))

(declare-fun m!2180553 () Bool)

(assert (=> b!1763706 m!2180553))

(declare-fun m!2180555 () Bool)

(assert (=> b!1763706 m!2180555))

(declare-fun m!2180557 () Bool)

(assert (=> b!1763705 m!2180557))

(declare-fun m!2180559 () Bool)

(assert (=> b!1763685 m!2180559))

(declare-fun m!2180561 () Bool)

(assert (=> b!1763702 m!2180561))

(declare-fun m!2180563 () Bool)

(assert (=> b!1763701 m!2180563))

(assert (=> b!1763701 m!2180563))

(declare-fun m!2180565 () Bool)

(assert (=> b!1763701 m!2180565))

(assert (=> b!1763701 m!2180565))

(declare-fun m!2180567 () Bool)

(assert (=> b!1763701 m!2180567))

(declare-fun m!2180569 () Bool)

(assert (=> b!1763701 m!2180569))

(declare-fun m!2180571 () Bool)

(assert (=> b!1763689 m!2180571))

(declare-fun m!2180573 () Bool)

(assert (=> b!1763689 m!2180573))

(declare-fun m!2180575 () Bool)

(assert (=> b!1763693 m!2180575))

(declare-fun m!2180577 () Bool)

(assert (=> b!1763693 m!2180577))

(declare-fun m!2180579 () Bool)

(assert (=> b!1763686 m!2180579))

(declare-fun m!2180581 () Bool)

(assert (=> b!1763709 m!2180581))

(declare-fun m!2180583 () Bool)

(assert (=> b!1763709 m!2180583))

(declare-fun m!2180585 () Bool)

(assert (=> b!1763709 m!2180585))

(declare-fun m!2180587 () Bool)

(assert (=> b!1763709 m!2180587))

(declare-fun m!2180589 () Bool)

(assert (=> b!1763709 m!2180589))

(assert (=> b!1763709 m!2180587))

(declare-fun m!2180591 () Bool)

(assert (=> b!1763687 m!2180591))

(declare-fun m!2180593 () Bool)

(assert (=> b!1763682 m!2180593))

(declare-fun m!2180595 () Bool)

(assert (=> b!1763682 m!2180595))

(declare-fun m!2180597 () Bool)

(assert (=> b!1763682 m!2180597))

(declare-fun m!2180599 () Bool)

(assert (=> b!1763682 m!2180599))

(declare-fun m!2180601 () Bool)

(assert (=> b!1763682 m!2180601))

(assert (=> b!1763682 m!2180563))

(declare-fun m!2180603 () Bool)

(assert (=> b!1763682 m!2180603))

(declare-fun m!2180605 () Bool)

(assert (=> b!1763682 m!2180605))

(declare-fun m!2180607 () Bool)

(assert (=> b!1763682 m!2180607))

(assert (=> b!1763682 m!2180595))

(declare-fun m!2180609 () Bool)

(assert (=> b!1763682 m!2180609))

(declare-fun m!2180611 () Bool)

(assert (=> b!1763682 m!2180611))

(declare-fun m!2180613 () Bool)

(assert (=> b!1763682 m!2180613))

(declare-fun m!2180615 () Bool)

(assert (=> b!1763682 m!2180615))

(declare-fun m!2180617 () Bool)

(assert (=> b!1763682 m!2180617))

(declare-fun m!2180619 () Bool)

(assert (=> b!1763682 m!2180619))

(declare-fun m!2180621 () Bool)

(assert (=> b!1763707 m!2180621))

(declare-fun m!2180623 () Bool)

(assert (=> b!1763707 m!2180623))

(declare-fun m!2180625 () Bool)

(assert (=> b!1763707 m!2180625))

(declare-fun m!2180627 () Bool)

(assert (=> b!1763707 m!2180627))

(declare-fun m!2180629 () Bool)

(assert (=> b!1763707 m!2180629))

(assert (=> b!1763707 m!2180623))

(declare-fun m!2180631 () Bool)

(assert (=> b!1763707 m!2180631))

(declare-fun m!2180633 () Bool)

(assert (=> b!1763707 m!2180633))

(declare-fun m!2180635 () Bool)

(assert (=> b!1763708 m!2180635))

(declare-fun m!2180637 () Bool)

(assert (=> b!1763699 m!2180637))

(declare-fun m!2180639 () Bool)

(assert (=> b!1763699 m!2180639))

(assert (=> b!1763699 m!2180639))

(declare-fun m!2180641 () Bool)

(assert (=> b!1763699 m!2180641))

(declare-fun m!2180643 () Bool)

(assert (=> b!1763699 m!2180643))

(declare-fun m!2180645 () Bool)

(assert (=> b!1763690 m!2180645))

(assert (=> b!1763690 m!2180645))

(declare-fun m!2180647 () Bool)

(assert (=> b!1763690 m!2180647))

(assert (=> b!1763690 m!2180647))

(declare-fun m!2180649 () Bool)

(assert (=> b!1763690 m!2180649))

(declare-fun m!2180651 () Bool)

(assert (=> b!1763690 m!2180651))

(check-sat (not b!1763692) b_and!133345 (not b!1763690) (not b!1763697) (not b_next!49449) (not b!1763709) (not b!1763695) (not b!1763681) (not b!1763707) b_and!133341 (not b!1763706) (not b!1763705) (not b!1763693) (not start!174638) b_and!133347 b_and!133351 (not b!1763698) (not tb!106395) (not b_next!49451) (not b_lambda!57191) (not tb!106389) b_and!133343 (not b!1763728) (not tb!106383) (not b!1763699) (not b!1763685) (not b!1763686) (not b_next!49447) (not b_next!49457) (not b!1763689) (not b_lambda!57187) (not b_lambda!57189) b_and!133349 (not b!1763691) (not b!1763725) (not b_next!49453) (not b!1763682) (not b!1763683) tp_is_empty!7833 (not b_next!49455) (not b!1763687) (not b!1763708) (not b!1763700) (not b!1763704) (not b!1763701))
(check-sat b_and!133345 b_and!133341 (not b_next!49451) b_and!133343 (not b_next!49449) (not b_next!49447) (not b_next!49457) b_and!133349 (not b_next!49453) (not b_next!49455) b_and!133347 b_and!133351)
