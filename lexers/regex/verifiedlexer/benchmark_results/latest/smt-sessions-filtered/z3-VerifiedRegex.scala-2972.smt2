; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176686 () Bool)

(assert start!176686)

(declare-fun b!1777667 () Bool)

(declare-fun b_free!49287 () Bool)

(declare-fun b_next!49991 () Bool)

(assert (=> b!1777667 (= b_free!49287 (not b_next!49991))))

(declare-fun tp!503561 () Bool)

(declare-fun b_and!135919 () Bool)

(assert (=> b!1777667 (= tp!503561 b_and!135919)))

(declare-fun b_free!49289 () Bool)

(declare-fun b_next!49993 () Bool)

(assert (=> b!1777667 (= b_free!49289 (not b_next!49993))))

(declare-fun tp!503559 () Bool)

(declare-fun b_and!135921 () Bool)

(assert (=> b!1777667 (= tp!503559 b_and!135921)))

(declare-fun b!1777658 () Bool)

(declare-fun b_free!49291 () Bool)

(declare-fun b_next!49995 () Bool)

(assert (=> b!1777658 (= b_free!49291 (not b_next!49995))))

(declare-fun tp!503558 () Bool)

(declare-fun b_and!135923 () Bool)

(assert (=> b!1777658 (= tp!503558 b_and!135923)))

(declare-fun b_free!49293 () Bool)

(declare-fun b_next!49997 () Bool)

(assert (=> b!1777658 (= b_free!49293 (not b_next!49997))))

(declare-fun tp!503564 () Bool)

(declare-fun b_and!135925 () Bool)

(assert (=> b!1777658 (= tp!503564 b_and!135925)))

(declare-fun b!1777684 () Bool)

(declare-fun b_free!49295 () Bool)

(declare-fun b_next!49999 () Bool)

(assert (=> b!1777684 (= b_free!49295 (not b_next!49999))))

(declare-fun tp!503560 () Bool)

(declare-fun b_and!135927 () Bool)

(assert (=> b!1777684 (= tp!503560 b_and!135927)))

(declare-fun b_free!49297 () Bool)

(declare-fun b_next!50001 () Bool)

(assert (=> b!1777684 (= b_free!49297 (not b_next!50001))))

(declare-fun tp!503557 () Bool)

(declare-fun b_and!135929 () Bool)

(assert (=> b!1777684 (= tp!503557 b_and!135929)))

(declare-fun b!1777700 () Bool)

(declare-fun e!1137625 () Bool)

(assert (=> b!1777700 (= e!1137625 true)))

(declare-fun b!1777699 () Bool)

(declare-fun e!1137624 () Bool)

(assert (=> b!1777699 (= e!1137624 e!1137625)))

(declare-fun b!1777698 () Bool)

(declare-fun e!1137623 () Bool)

(assert (=> b!1777698 (= e!1137623 e!1137624)))

(declare-fun b!1777660 () Bool)

(assert (=> b!1777660 e!1137623))

(assert (= b!1777699 b!1777700))

(assert (= b!1777698 b!1777699))

(assert (= b!1777660 b!1777698))

(declare-fun lambda!70590 () Int)

(declare-fun order!12583 () Int)

(declare-datatypes ((List!19649 0))(
  ( (Nil!19579) (Cons!19579 (h!24980 (_ BitVec 16)) (t!166160 List!19649)) )
))
(declare-datatypes ((TokenValue!3595 0))(
  ( (FloatLiteralValue!7190 (text!25610 List!19649)) (TokenValueExt!3594 (__x!12492 Int)) (Broken!17975 (value!109539 List!19649)) (Object!3664) (End!3595) (Def!3595) (Underscore!3595) (Match!3595) (Else!3595) (Error!3595) (Case!3595) (If!3595) (Extends!3595) (Abstract!3595) (Class!3595) (Val!3595) (DelimiterValue!7190 (del!3655 List!19649)) (KeywordValue!3601 (value!109540 List!19649)) (CommentValue!7190 (value!109541 List!19649)) (WhitespaceValue!7190 (value!109542 List!19649)) (IndentationValue!3595 (value!109543 List!19649)) (String!22306) (Int32!3595) (Broken!17976 (value!109544 List!19649)) (Boolean!3596) (Unit!33825) (OperatorValue!3598 (op!3655 List!19649)) (IdentifierValue!7190 (value!109545 List!19649)) (IdentifierValue!7191 (value!109546 List!19649)) (WhitespaceValue!7191 (value!109547 List!19649)) (True!7190) (False!7190) (Broken!17977 (value!109548 List!19649)) (Broken!17978 (value!109549 List!19649)) (True!7191) (RightBrace!3595) (RightBracket!3595) (Colon!3595) (Null!3595) (Comma!3595) (LeftBracket!3595) (False!7191) (LeftBrace!3595) (ImaginaryLiteralValue!3595 (text!25611 List!19649)) (StringLiteralValue!10785 (value!109550 List!19649)) (EOFValue!3595 (value!109551 List!19649)) (IdentValue!3595 (value!109552 List!19649)) (DelimiterValue!7191 (value!109553 List!19649)) (DedentValue!3595 (value!109554 List!19649)) (NewLineValue!3595 (value!109555 List!19649)) (IntegerValue!10785 (value!109556 (_ BitVec 32)) (text!25612 List!19649)) (IntegerValue!10786 (value!109557 Int) (text!25613 List!19649)) (Times!3595) (Or!3595) (Equal!3595) (Minus!3595) (Broken!17979 (value!109558 List!19649)) (And!3595) (Div!3595) (LessEqual!3595) (Mod!3595) (Concat!8428) (Not!3595) (Plus!3595) (SpaceValue!3595 (value!109559 List!19649)) (IntegerValue!10787 (value!109560 Int) (text!25614 List!19649)) (StringLiteralValue!10786 (text!25615 List!19649)) (FloatLiteralValue!7191 (text!25616 List!19649)) (BytesLiteralValue!3595 (value!109561 List!19649)) (CommentValue!7191 (value!109562 List!19649)) (StringLiteralValue!10787 (value!109563 List!19649)) (ErrorTokenValue!3595 (msg!3656 List!19649)) )
))
(declare-datatypes ((C!9840 0))(
  ( (C!9841 (val!5516 Int)) )
))
(declare-datatypes ((List!19650 0))(
  ( (Nil!19580) (Cons!19580 (h!24981 C!9840) (t!166161 List!19650)) )
))
(declare-datatypes ((Regex!4833 0))(
  ( (ElementMatch!4833 (c!289314 C!9840)) (Concat!8429 (regOne!10178 Regex!4833) (regTwo!10178 Regex!4833)) (EmptyExpr!4833) (Star!4833 (reg!5162 Regex!4833)) (EmptyLang!4833) (Union!4833 (regOne!10179 Regex!4833) (regTwo!10179 Regex!4833)) )
))
(declare-datatypes ((String!22307 0))(
  ( (String!22308 (value!109564 String)) )
))
(declare-datatypes ((IArray!13031 0))(
  ( (IArray!13032 (innerList!6573 List!19650)) )
))
(declare-datatypes ((Conc!6513 0))(
  ( (Node!6513 (left!15687 Conc!6513) (right!16017 Conc!6513) (csize!13256 Int) (cheight!6724 Int)) (Leaf!9486 (xs!9389 IArray!13031) (csize!13257 Int)) (Empty!6513) )
))
(declare-datatypes ((BalanceConc!12970 0))(
  ( (BalanceConc!12971 (c!289315 Conc!6513)) )
))
(declare-datatypes ((TokenValueInjection!6850 0))(
  ( (TokenValueInjection!6851 (toValue!5032 Int) (toChars!4891 Int)) )
))
(declare-datatypes ((Rule!6810 0))(
  ( (Rule!6811 (regex!3505 Regex!4833) (tag!3895 String!22307) (isSeparator!3505 Bool) (transformation!3505 TokenValueInjection!6850)) )
))
(declare-datatypes ((Token!6576 0))(
  ( (Token!6577 (value!109565 TokenValue!3595) (rule!5569 Rule!6810) (size!15554 Int) (originalCharacters!4319 List!19650)) )
))
(declare-datatypes ((tuple2!19178 0))(
  ( (tuple2!19179 (_1!10991 Token!6576) (_2!10991 List!19650)) )
))
(declare-fun lt!689827 () tuple2!19178)

(declare-fun order!12585 () Int)

(declare-fun dynLambda!9574 (Int Int) Int)

(declare-fun dynLambda!9575 (Int Int) Int)

(assert (=> b!1777700 (< (dynLambda!9574 order!12583 (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) (dynLambda!9575 order!12585 lambda!70590))))

(declare-fun order!12587 () Int)

(declare-fun dynLambda!9576 (Int Int) Int)

(assert (=> b!1777700 (< (dynLambda!9576 order!12587 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) (dynLambda!9575 order!12585 lambda!70590))))

(declare-fun e!1137603 () Bool)

(assert (=> b!1777658 (= e!1137603 (and tp!503558 tp!503564))))

(declare-fun b!1777659 () Bool)

(declare-fun e!1137598 () Bool)

(declare-fun lt!689825 () Rule!6810)

(assert (=> b!1777659 (= e!1137598 (= (rule!5569 (_1!10991 lt!689827)) lt!689825))))

(declare-fun e!1137601 () Bool)

(declare-fun e!1137596 () Bool)

(assert (=> b!1777660 (= e!1137601 e!1137596)))

(declare-fun res!801025 () Bool)

(assert (=> b!1777660 (=> res!801025 e!1137596)))

(declare-fun Forall!872 (Int) Bool)

(assert (=> b!1777660 (= res!801025 (not (Forall!872 lambda!70590)))))

(declare-datatypes ((Unit!33826 0))(
  ( (Unit!33827) )
))
(declare-fun lt!689833 () Unit!33826)

(declare-fun lemmaInv!704 (TokenValueInjection!6850) Unit!33826)

(assert (=> b!1777660 (= lt!689833 (lemmaInv!704 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))))))

(declare-fun b!1777661 () Bool)

(declare-fun res!801029 () Bool)

(declare-fun e!1137602 () Bool)

(assert (=> b!1777661 (=> (not res!801029) (not e!1137602))))

(declare-datatypes ((List!19651 0))(
  ( (Nil!19581) (Cons!19581 (h!24982 Rule!6810) (t!166162 List!19651)) )
))
(declare-fun rules!3447 () List!19651)

(declare-fun isEmpty!12370 (List!19651) Bool)

(assert (=> b!1777661 (= res!801029 (not (isEmpty!12370 rules!3447)))))

(declare-fun b!1777662 () Bool)

(declare-fun e!1137612 () Bool)

(declare-fun e!1137599 () Bool)

(assert (=> b!1777662 (= e!1137612 e!1137599)))

(declare-fun res!801017 () Bool)

(assert (=> b!1777662 (=> res!801017 e!1137599)))

(declare-datatypes ((Option!4032 0))(
  ( (None!4031) (Some!4031 (v!25516 tuple2!19178)) )
))
(declare-fun lt!689839 () Option!4032)

(declare-fun lt!689834 () List!19650)

(assert (=> b!1777662 (= res!801017 (or (not (= lt!689834 (_2!10991 lt!689827))) (not (= lt!689839 (Some!4031 (tuple2!19179 (_1!10991 lt!689827) lt!689834))))))))

(assert (=> b!1777662 (= (_2!10991 lt!689827) lt!689834)))

(declare-fun lt!689826 () List!19650)

(declare-fun lt!689847 () Unit!33826)

(declare-fun lt!689846 () List!19650)

(declare-fun lemmaSamePrefixThenSameSuffix!856 (List!19650 List!19650 List!19650 List!19650 List!19650) Unit!33826)

(assert (=> b!1777662 (= lt!689847 (lemmaSamePrefixThenSameSuffix!856 lt!689826 (_2!10991 lt!689827) lt!689826 lt!689834 lt!689846))))

(declare-fun getSuffix!912 (List!19650 List!19650) List!19650)

(assert (=> b!1777662 (= lt!689834 (getSuffix!912 lt!689846 lt!689826))))

(declare-fun lt!689853 () TokenValue!3595)

(declare-fun lt!689859 () Int)

(assert (=> b!1777662 (= lt!689839 (Some!4031 (tuple2!19179 (Token!6577 lt!689853 (rule!5569 (_1!10991 lt!689827)) lt!689859 lt!689826) (_2!10991 lt!689827))))))

(declare-datatypes ((LexerInterface!3134 0))(
  ( (LexerInterfaceExt!3131 (__x!12493 Int)) (Lexer!3132) )
))
(declare-fun thiss!24550 () LexerInterface!3134)

(declare-fun maxPrefixOneRule!1057 (LexerInterface!3134 Rule!6810 List!19650) Option!4032)

(assert (=> b!1777662 (= lt!689839 (maxPrefixOneRule!1057 thiss!24550 (rule!5569 (_1!10991 lt!689827)) lt!689846))))

(declare-fun size!15555 (List!19650) Int)

(assert (=> b!1777662 (= lt!689859 (size!15555 lt!689826))))

(declare-fun apply!5305 (TokenValueInjection!6850 BalanceConc!12970) TokenValue!3595)

(declare-fun seqFromList!2474 (List!19650) BalanceConc!12970)

(assert (=> b!1777662 (= lt!689853 (apply!5305 (transformation!3505 (rule!5569 (_1!10991 lt!689827))) (seqFromList!2474 lt!689826)))))

(declare-fun lt!689849 () Unit!33826)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!435 (LexerInterface!3134 List!19651 List!19650 List!19650 List!19650 Rule!6810) Unit!33826)

(assert (=> b!1777662 (= lt!689849 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!435 thiss!24550 rules!3447 lt!689826 lt!689846 (_2!10991 lt!689827) (rule!5569 (_1!10991 lt!689827))))))

(declare-fun b!1777663 () Bool)

(declare-fun res!801021 () Bool)

(assert (=> b!1777663 (=> (not res!801021) (not e!1137602))))

(declare-fun rule!422 () Rule!6810)

(declare-fun contains!3537 (List!19651 Rule!6810) Bool)

(assert (=> b!1777663 (= res!801021 (contains!3537 rules!3447 rule!422))))

(declare-fun b!1777664 () Bool)

(declare-fun res!801028 () Bool)

(declare-fun e!1137610 () Bool)

(assert (=> b!1777664 (=> res!801028 e!1137610)))

(declare-fun suffix!1421 () List!19650)

(declare-fun isEmpty!12371 (List!19650) Bool)

(assert (=> b!1777664 (= res!801028 (isEmpty!12371 suffix!1421))))

(declare-fun b!1777665 () Bool)

(declare-fun e!1137600 () Bool)

(declare-fun tp_is_empty!7909 () Bool)

(declare-fun tp!503565 () Bool)

(assert (=> b!1777665 (= e!1137600 (and tp_is_empty!7909 tp!503565))))

(declare-fun b!1777666 () Bool)

(declare-fun e!1137590 () Bool)

(assert (=> b!1777666 (= e!1137596 e!1137590)))

(declare-fun res!801014 () Bool)

(assert (=> b!1777666 (=> res!801014 e!1137590)))

(declare-fun lt!689844 () BalanceConc!12970)

(declare-fun list!7959 (BalanceConc!12970) List!19650)

(declare-fun dynLambda!9577 (Int TokenValue!3595) BalanceConc!12970)

(declare-fun dynLambda!9578 (Int BalanceConc!12970) TokenValue!3595)

(assert (=> b!1777666 (= res!801014 (not (= (list!7959 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (dynLambda!9578 (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) lt!689844))) lt!689826)))))

(declare-fun lt!689831 () Unit!33826)

(declare-fun lemmaSemiInverse!643 (TokenValueInjection!6850 BalanceConc!12970) Unit!33826)

(assert (=> b!1777666 (= lt!689831 (lemmaSemiInverse!643 (transformation!3505 (rule!5569 (_1!10991 lt!689827))) lt!689844))))

(declare-fun e!1137604 () Bool)

(assert (=> b!1777667 (= e!1137604 (and tp!503561 tp!503559))))

(declare-fun e!1137594 () Bool)

(declare-fun token!523 () Token!6576)

(declare-fun tp!503562 () Bool)

(declare-fun b!1777668 () Bool)

(declare-fun inv!25464 (String!22307) Bool)

(declare-fun inv!25469 (TokenValueInjection!6850) Bool)

(assert (=> b!1777668 (= e!1137594 (and tp!503562 (inv!25464 (tag!3895 (rule!5569 token!523))) (inv!25469 (transformation!3505 (rule!5569 token!523))) e!1137603))))

(declare-fun b!1777669 () Bool)

(declare-fun e!1137597 () Bool)

(declare-fun e!1137615 () Bool)

(declare-fun tp!503555 () Bool)

(assert (=> b!1777669 (= e!1137597 (and e!1137615 tp!503555))))

(declare-fun b!1777670 () Bool)

(declare-fun res!801032 () Bool)

(assert (=> b!1777670 (=> res!801032 e!1137601)))

(declare-fun matchR!2306 (Regex!4833 List!19650) Bool)

(assert (=> b!1777670 (= res!801032 (not (matchR!2306 (regex!3505 (rule!5569 (_1!10991 lt!689827))) lt!689826)))))

(declare-fun b!1777671 () Bool)

(assert (=> b!1777671 (= e!1137590 e!1137612)))

(declare-fun res!801026 () Bool)

(assert (=> b!1777671 (=> res!801026 e!1137612)))

(declare-fun lt!689840 () Option!4032)

(declare-fun lt!689851 () TokenValue!3595)

(declare-fun lt!689829 () Int)

(assert (=> b!1777671 (= res!801026 (not (= lt!689840 (Some!4031 (tuple2!19179 (Token!6577 lt!689851 (rule!5569 (_1!10991 lt!689827)) lt!689829 lt!689826) (_2!10991 lt!689827))))))))

(declare-fun size!15556 (BalanceConc!12970) Int)

(assert (=> b!1777671 (= lt!689829 (size!15556 lt!689844))))

(assert (=> b!1777671 (= lt!689851 (apply!5305 (transformation!3505 (rule!5569 (_1!10991 lt!689827))) lt!689844))))

(declare-fun lt!689862 () Unit!33826)

(declare-fun lemmaCharactersSize!563 (Token!6576) Unit!33826)

(assert (=> b!1777671 (= lt!689862 (lemmaCharactersSize!563 (_1!10991 lt!689827)))))

(declare-fun lt!689854 () Unit!33826)

(declare-fun lemmaEqSameImage!416 (TokenValueInjection!6850 BalanceConc!12970 BalanceConc!12970) Unit!33826)

(assert (=> b!1777671 (= lt!689854 (lemmaEqSameImage!416 (transformation!3505 (rule!5569 (_1!10991 lt!689827))) lt!689844 (seqFromList!2474 (originalCharacters!4319 (_1!10991 lt!689827)))))))

(declare-fun b!1777672 () Bool)

(declare-fun e!1137593 () Bool)

(assert (=> b!1777672 (= e!1137593 e!1137601)))

(declare-fun res!801031 () Bool)

(assert (=> b!1777672 (=> res!801031 e!1137601)))

(declare-fun isPrefix!1745 (List!19650 List!19650) Bool)

(assert (=> b!1777672 (= res!801031 (not (isPrefix!1745 lt!689826 lt!689846)))))

(declare-fun ++!5329 (List!19650 List!19650) List!19650)

(assert (=> b!1777672 (isPrefix!1745 lt!689826 (++!5329 lt!689826 (_2!10991 lt!689827)))))

(declare-fun lt!689860 () Unit!33826)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1254 (List!19650 List!19650) Unit!33826)

(assert (=> b!1777672 (= lt!689860 (lemmaConcatTwoListThenFirstIsPrefix!1254 lt!689826 (_2!10991 lt!689827)))))

(assert (=> b!1777672 (= lt!689826 (list!7959 lt!689844))))

(declare-fun charsOf!2154 (Token!6576) BalanceConc!12970)

(assert (=> b!1777672 (= lt!689844 (charsOf!2154 (_1!10991 lt!689827)))))

(declare-fun e!1137611 () Bool)

(assert (=> b!1777672 e!1137611))

(declare-fun res!801024 () Bool)

(assert (=> b!1777672 (=> (not res!801024) (not e!1137611))))

(declare-datatypes ((Option!4033 0))(
  ( (None!4032) (Some!4032 (v!25517 Rule!6810)) )
))
(declare-fun lt!689828 () Option!4033)

(declare-fun isDefined!3375 (Option!4033) Bool)

(assert (=> b!1777672 (= res!801024 (isDefined!3375 lt!689828))))

(declare-fun getRuleFromTag!553 (LexerInterface!3134 List!19651 String!22307) Option!4033)

(assert (=> b!1777672 (= lt!689828 (getRuleFromTag!553 thiss!24550 rules!3447 (tag!3895 (rule!5569 (_1!10991 lt!689827)))))))

(declare-fun lt!689841 () Unit!33826)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!553 (LexerInterface!3134 List!19651 List!19650 Token!6576) Unit!33826)

(assert (=> b!1777672 (= lt!689841 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!553 thiss!24550 rules!3447 lt!689846 (_1!10991 lt!689827)))))

(declare-fun get!6002 (Option!4032) tuple2!19178)

(assert (=> b!1777672 (= lt!689827 (get!6002 lt!689840))))

(declare-fun lt!689843 () List!19650)

(declare-fun lt!689835 () Unit!33826)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!656 (LexerInterface!3134 List!19651 List!19650 List!19650) Unit!33826)

(assert (=> b!1777672 (= lt!689835 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!656 thiss!24550 rules!3447 lt!689843 suffix!1421))))

(declare-fun maxPrefix!1688 (LexerInterface!3134 List!19651 List!19650) Option!4032)

(assert (=> b!1777672 (= lt!689840 (maxPrefix!1688 thiss!24550 rules!3447 lt!689846))))

(assert (=> b!1777672 (isPrefix!1745 lt!689843 lt!689846)))

(declare-fun lt!689861 () Unit!33826)

(assert (=> b!1777672 (= lt!689861 (lemmaConcatTwoListThenFirstIsPrefix!1254 lt!689843 suffix!1421))))

(assert (=> b!1777672 (= lt!689846 (++!5329 lt!689843 suffix!1421))))

(declare-fun b!1777673 () Bool)

(declare-fun e!1137614 () Bool)

(declare-fun tp!503563 () Bool)

(assert (=> b!1777673 (= e!1137615 (and tp!503563 (inv!25464 (tag!3895 (h!24982 rules!3447))) (inv!25469 (transformation!3505 (h!24982 rules!3447))) e!1137614))))

(declare-fun b!1777674 () Bool)

(declare-fun e!1137616 () Bool)

(declare-fun e!1137608 () Bool)

(assert (=> b!1777674 (= e!1137616 e!1137608)))

(declare-fun res!801027 () Bool)

(assert (=> b!1777674 (=> (not res!801027) (not e!1137608))))

(declare-fun lt!689832 () tuple2!19178)

(assert (=> b!1777674 (= res!801027 (= (_1!10991 lt!689832) token!523))))

(declare-fun lt!689845 () Option!4032)

(assert (=> b!1777674 (= lt!689832 (get!6002 lt!689845))))

(declare-fun b!1777675 () Bool)

(declare-fun e!1137595 () Unit!33826)

(declare-fun Unit!33828 () Unit!33826)

(assert (=> b!1777675 (= e!1137595 Unit!33828)))

(declare-fun lt!689842 () Unit!33826)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!212 (LexerInterface!3134 List!19651 List!19650 Token!6576 Rule!6810 List!19650) Unit!33826)

(assert (=> b!1777675 (= lt!689842 (lemmaMaxPrefixThenMatchesRulesRegex!212 thiss!24550 rules!3447 lt!689846 (_1!10991 lt!689827) (rule!5569 (_1!10991 lt!689827)) (_2!10991 lt!689827)))))

(declare-fun lt!689830 () Regex!4833)

(assert (=> b!1777675 (matchR!2306 lt!689830 lt!689826)))

(declare-fun lt!689824 () List!19650)

(assert (=> b!1777675 (= lt!689824 (getSuffix!912 lt!689846 lt!689843))))

(declare-fun lt!689857 () Unit!33826)

(assert (=> b!1777675 (= lt!689857 (lemmaSamePrefixThenSameSuffix!856 lt!689843 suffix!1421 lt!689843 lt!689824 lt!689846))))

(assert (=> b!1777675 (= suffix!1421 lt!689824)))

(declare-fun lt!689837 () Unit!33826)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!281 (List!19650 List!19650) Unit!33826)

(assert (=> b!1777675 (= lt!689837 (lemmaAddHeadSuffixToPrefixStillPrefix!281 lt!689843 lt!689846))))

(declare-fun head!4146 (List!19650) C!9840)

(assert (=> b!1777675 (isPrefix!1745 (++!5329 lt!689843 (Cons!19580 (head!4146 lt!689824) Nil!19580)) lt!689846)))

(declare-fun lt!689858 () List!19650)

(declare-fun lt!689856 () Unit!33826)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!153 (List!19650 List!19650 List!19650) Unit!33826)

(assert (=> b!1777675 (= lt!689856 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!153 lt!689826 lt!689858 lt!689846))))

(assert (=> b!1777675 (isPrefix!1745 lt!689858 lt!689826)))

(declare-fun lt!689822 () Unit!33826)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!144 (Regex!4833 List!19650 List!19650) Unit!33826)

(assert (=> b!1777675 (= lt!689822 (lemmaNotPrefixMatchThenCannotMatchLonger!144 lt!689830 lt!689858 lt!689826))))

(assert (=> b!1777675 false))

(declare-fun b!1777676 () Bool)

(declare-fun res!801016 () Bool)

(assert (=> b!1777676 (=> res!801016 e!1137590)))

(assert (=> b!1777676 (= res!801016 (not (= lt!689844 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (value!109565 (_1!10991 lt!689827))))))))

(declare-fun b!1777677 () Bool)

(declare-fun res!801015 () Bool)

(assert (=> b!1777677 (=> (not res!801015) (not e!1137608))))

(assert (=> b!1777677 (= res!801015 (= (rule!5569 token!523) rule!422))))

(declare-fun b!1777678 () Bool)

(assert (=> b!1777678 (= e!1137602 e!1137616)))

(declare-fun res!801023 () Bool)

(assert (=> b!1777678 (=> (not res!801023) (not e!1137616))))

(declare-fun isDefined!3376 (Option!4032) Bool)

(assert (=> b!1777678 (= res!801023 (isDefined!3376 lt!689845))))

(assert (=> b!1777678 (= lt!689845 (maxPrefix!1688 thiss!24550 rules!3447 lt!689843))))

(declare-fun lt!689836 () BalanceConc!12970)

(assert (=> b!1777678 (= lt!689843 (list!7959 lt!689836))))

(assert (=> b!1777678 (= lt!689836 (charsOf!2154 token!523))))

(declare-fun b!1777679 () Bool)

(assert (=> b!1777679 (= e!1137608 (not e!1137610))))

(declare-fun res!801034 () Bool)

(assert (=> b!1777679 (=> res!801034 e!1137610)))

(assert (=> b!1777679 (= res!801034 (not (matchR!2306 (regex!3505 rule!422) lt!689843)))))

(declare-fun ruleValid!1003 (LexerInterface!3134 Rule!6810) Bool)

(assert (=> b!1777679 (ruleValid!1003 thiss!24550 rule!422)))

(declare-fun lt!689848 () Unit!33826)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!526 (LexerInterface!3134 Rule!6810 List!19651) Unit!33826)

(assert (=> b!1777679 (= lt!689848 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!526 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1777680 () Bool)

(declare-fun res!801030 () Bool)

(assert (=> b!1777680 (=> (not res!801030) (not e!1137602))))

(declare-fun rulesInvariant!2803 (LexerInterface!3134 List!19651) Bool)

(assert (=> b!1777680 (= res!801030 (rulesInvariant!2803 thiss!24550 rules!3447))))

(declare-fun b!1777681 () Bool)

(assert (=> b!1777681 (= e!1137611 e!1137598)))

(declare-fun res!801022 () Bool)

(assert (=> b!1777681 (=> (not res!801022) (not e!1137598))))

(assert (=> b!1777681 (= res!801022 (matchR!2306 (regex!3505 lt!689825) (list!7959 (charsOf!2154 (_1!10991 lt!689827)))))))

(declare-fun get!6003 (Option!4033) Rule!6810)

(assert (=> b!1777681 (= lt!689825 (get!6003 lt!689828))))

(declare-fun b!1777682 () Bool)

(declare-fun Unit!33829 () Unit!33826)

(assert (=> b!1777682 (= e!1137595 Unit!33829)))

(declare-fun b!1777683 () Bool)

(declare-fun res!801018 () Bool)

(assert (=> b!1777683 (=> (not res!801018) (not e!1137608))))

(assert (=> b!1777683 (= res!801018 (isEmpty!12371 (_2!10991 lt!689832)))))

(assert (=> b!1777684 (= e!1137614 (and tp!503560 tp!503557))))

(declare-fun b!1777685 () Bool)

(declare-fun e!1137609 () Bool)

(assert (=> b!1777685 (= e!1137599 e!1137609)))

(declare-fun res!801020 () Bool)

(assert (=> b!1777685 (=> res!801020 e!1137609)))

(declare-fun lt!689838 () Bool)

(declare-fun lt!689823 () Int)

(assert (=> b!1777685 (= res!801020 (or lt!689838 (>= lt!689829 lt!689823)))))

(declare-fun lt!689852 () Unit!33826)

(assert (=> b!1777685 (= lt!689852 e!1137595)))

(declare-fun c!289313 () Bool)

(assert (=> b!1777685 (= c!289313 lt!689838)))

(assert (=> b!1777685 (= lt!689838 (> lt!689829 lt!689823))))

(assert (=> b!1777685 (= lt!689823 (size!15556 lt!689836))))

(assert (=> b!1777685 (matchR!2306 lt!689830 lt!689843)))

(declare-fun lt!689850 () Unit!33826)

(assert (=> b!1777685 (= lt!689850 (lemmaMaxPrefixThenMatchesRulesRegex!212 thiss!24550 rules!3447 lt!689843 token!523 rule!422 Nil!19580))))

(declare-fun e!1137591 () Bool)

(declare-fun tp!503566 () Bool)

(declare-fun b!1777686 () Bool)

(declare-fun inv!21 (TokenValue!3595) Bool)

(assert (=> b!1777686 (= e!1137591 (and (inv!21 (value!109565 token!523)) e!1137594 tp!503566))))

(declare-fun res!801033 () Bool)

(assert (=> start!176686 (=> (not res!801033) (not e!1137602))))

(get-info :version)

(assert (=> start!176686 (= res!801033 ((_ is Lexer!3132) thiss!24550))))

(assert (=> start!176686 e!1137602))

(assert (=> start!176686 e!1137600))

(declare-fun e!1137607 () Bool)

(assert (=> start!176686 e!1137607))

(assert (=> start!176686 true))

(declare-fun inv!25470 (Token!6576) Bool)

(assert (=> start!176686 (and (inv!25470 token!523) e!1137591)))

(assert (=> start!176686 e!1137597))

(declare-fun b!1777687 () Bool)

(assert (=> b!1777687 (= e!1137610 e!1137593)))

(declare-fun res!801019 () Bool)

(assert (=> b!1777687 (=> res!801019 e!1137593)))

(declare-fun prefixMatch!716 (Regex!4833 List!19650) Bool)

(assert (=> b!1777687 (= res!801019 (prefixMatch!716 lt!689830 lt!689858))))

(assert (=> b!1777687 (= lt!689858 (++!5329 lt!689843 (Cons!19580 (head!4146 suffix!1421) Nil!19580)))))

(declare-fun rulesRegex!861 (LexerInterface!3134 List!19651) Regex!4833)

(assert (=> b!1777687 (= lt!689830 (rulesRegex!861 thiss!24550 rules!3447))))

(declare-fun tp!503556 () Bool)

(declare-fun b!1777688 () Bool)

(assert (=> b!1777688 (= e!1137607 (and tp!503556 (inv!25464 (tag!3895 rule!422)) (inv!25469 (transformation!3505 rule!422)) e!1137604))))

(declare-fun b!1777689 () Bool)

(assert (=> b!1777689 (= e!1137609 true)))

(assert (=> b!1777689 false))

(declare-fun lt!689855 () Unit!33826)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!214 (LexerInterface!3134 List!19651 Rule!6810 List!19650 List!19650 List!19650 Rule!6810) Unit!33826)

(assert (=> b!1777689 (= lt!689855 (lemmaMaxPrefixOutputsMaxPrefix!214 thiss!24550 rules!3447 (rule!5569 (_1!10991 lt!689827)) lt!689826 lt!689846 lt!689843 rule!422))))

(assert (= (and start!176686 res!801033) b!1777661))

(assert (= (and b!1777661 res!801029) b!1777680))

(assert (= (and b!1777680 res!801030) b!1777663))

(assert (= (and b!1777663 res!801021) b!1777678))

(assert (= (and b!1777678 res!801023) b!1777674))

(assert (= (and b!1777674 res!801027) b!1777683))

(assert (= (and b!1777683 res!801018) b!1777677))

(assert (= (and b!1777677 res!801015) b!1777679))

(assert (= (and b!1777679 (not res!801034)) b!1777664))

(assert (= (and b!1777664 (not res!801028)) b!1777687))

(assert (= (and b!1777687 (not res!801019)) b!1777672))

(assert (= (and b!1777672 res!801024) b!1777681))

(assert (= (and b!1777681 res!801022) b!1777659))

(assert (= (and b!1777672 (not res!801031)) b!1777670))

(assert (= (and b!1777670 (not res!801032)) b!1777660))

(assert (= (and b!1777660 (not res!801025)) b!1777666))

(assert (= (and b!1777666 (not res!801014)) b!1777676))

(assert (= (and b!1777676 (not res!801016)) b!1777671))

(assert (= (and b!1777671 (not res!801026)) b!1777662))

(assert (= (and b!1777662 (not res!801017)) b!1777685))

(assert (= (and b!1777685 c!289313) b!1777675))

(assert (= (and b!1777685 (not c!289313)) b!1777682))

(assert (= (and b!1777685 (not res!801020)) b!1777689))

(assert (= (and start!176686 ((_ is Cons!19580) suffix!1421)) b!1777665))

(assert (= b!1777688 b!1777667))

(assert (= start!176686 b!1777688))

(assert (= b!1777668 b!1777658))

(assert (= b!1777686 b!1777668))

(assert (= start!176686 b!1777686))

(assert (= b!1777673 b!1777684))

(assert (= b!1777669 b!1777673))

(assert (= (and start!176686 ((_ is Cons!19581) rules!3447)) b!1777669))

(declare-fun b_lambda!58099 () Bool)

(assert (=> (not b_lambda!58099) (not b!1777666)))

(declare-fun tb!107903 () Bool)

(declare-fun t!166143 () Bool)

(assert (=> (and b!1777667 (= (toChars!4891 (transformation!3505 rule!422)) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166143) tb!107903))

(declare-fun e!1137628 () Bool)

(declare-fun b!1777705 () Bool)

(declare-fun tp!503569 () Bool)

(declare-fun inv!25471 (Conc!6513) Bool)

(assert (=> b!1777705 (= e!1137628 (and (inv!25471 (c!289315 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (dynLambda!9578 (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) lt!689844)))) tp!503569))))

(declare-fun result!129802 () Bool)

(declare-fun inv!25472 (BalanceConc!12970) Bool)

(assert (=> tb!107903 (= result!129802 (and (inv!25472 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (dynLambda!9578 (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) lt!689844))) e!1137628))))

(assert (= tb!107903 b!1777705))

(declare-fun m!2198735 () Bool)

(assert (=> b!1777705 m!2198735))

(declare-fun m!2198737 () Bool)

(assert (=> tb!107903 m!2198737))

(assert (=> b!1777666 t!166143))

(declare-fun b_and!135931 () Bool)

(assert (= b_and!135921 (and (=> t!166143 result!129802) b_and!135931)))

(declare-fun t!166145 () Bool)

(declare-fun tb!107905 () Bool)

(assert (=> (and b!1777658 (= (toChars!4891 (transformation!3505 (rule!5569 token!523))) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166145) tb!107905))

(declare-fun result!129806 () Bool)

(assert (= result!129806 result!129802))

(assert (=> b!1777666 t!166145))

(declare-fun b_and!135933 () Bool)

(assert (= b_and!135925 (and (=> t!166145 result!129806) b_and!135933)))

(declare-fun tb!107907 () Bool)

(declare-fun t!166147 () Bool)

(assert (=> (and b!1777684 (= (toChars!4891 (transformation!3505 (h!24982 rules!3447))) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166147) tb!107907))

(declare-fun result!129808 () Bool)

(assert (= result!129808 result!129802))

(assert (=> b!1777666 t!166147))

(declare-fun b_and!135935 () Bool)

(assert (= b_and!135929 (and (=> t!166147 result!129808) b_and!135935)))

(declare-fun b_lambda!58101 () Bool)

(assert (=> (not b_lambda!58101) (not b!1777666)))

(declare-fun t!166149 () Bool)

(declare-fun tb!107909 () Bool)

(assert (=> (and b!1777667 (= (toValue!5032 (transformation!3505 rule!422)) (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166149) tb!107909))

(declare-fun result!129810 () Bool)

(assert (=> tb!107909 (= result!129810 (inv!21 (dynLambda!9578 (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) lt!689844)))))

(declare-fun m!2198739 () Bool)

(assert (=> tb!107909 m!2198739))

(assert (=> b!1777666 t!166149))

(declare-fun b_and!135937 () Bool)

(assert (= b_and!135919 (and (=> t!166149 result!129810) b_and!135937)))

(declare-fun tb!107911 () Bool)

(declare-fun t!166151 () Bool)

(assert (=> (and b!1777658 (= (toValue!5032 (transformation!3505 (rule!5569 token!523))) (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166151) tb!107911))

(declare-fun result!129814 () Bool)

(assert (= result!129814 result!129810))

(assert (=> b!1777666 t!166151))

(declare-fun b_and!135939 () Bool)

(assert (= b_and!135923 (and (=> t!166151 result!129814) b_and!135939)))

(declare-fun t!166153 () Bool)

(declare-fun tb!107913 () Bool)

(assert (=> (and b!1777684 (= (toValue!5032 (transformation!3505 (h!24982 rules!3447))) (toValue!5032 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166153) tb!107913))

(declare-fun result!129816 () Bool)

(assert (= result!129816 result!129810))

(assert (=> b!1777666 t!166153))

(declare-fun b_and!135941 () Bool)

(assert (= b_and!135927 (and (=> t!166153 result!129816) b_and!135941)))

(declare-fun b_lambda!58103 () Bool)

(assert (=> (not b_lambda!58103) (not b!1777676)))

(declare-fun t!166155 () Bool)

(declare-fun tb!107915 () Bool)

(assert (=> (and b!1777667 (= (toChars!4891 (transformation!3505 rule!422)) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166155) tb!107915))

(declare-fun b!1777708 () Bool)

(declare-fun e!1137632 () Bool)

(declare-fun tp!503570 () Bool)

(assert (=> b!1777708 (= e!1137632 (and (inv!25471 (c!289315 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (value!109565 (_1!10991 lt!689827))))) tp!503570))))

(declare-fun result!129818 () Bool)

(assert (=> tb!107915 (= result!129818 (and (inv!25472 (dynLambda!9577 (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827)))) (value!109565 (_1!10991 lt!689827)))) e!1137632))))

(assert (= tb!107915 b!1777708))

(declare-fun m!2198741 () Bool)

(assert (=> b!1777708 m!2198741))

(declare-fun m!2198743 () Bool)

(assert (=> tb!107915 m!2198743))

(assert (=> b!1777676 t!166155))

(declare-fun b_and!135943 () Bool)

(assert (= b_and!135931 (and (=> t!166155 result!129818) b_and!135943)))

(declare-fun tb!107917 () Bool)

(declare-fun t!166157 () Bool)

(assert (=> (and b!1777658 (= (toChars!4891 (transformation!3505 (rule!5569 token!523))) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166157) tb!107917))

(declare-fun result!129820 () Bool)

(assert (= result!129820 result!129818))

(assert (=> b!1777676 t!166157))

(declare-fun b_and!135945 () Bool)

(assert (= b_and!135933 (and (=> t!166157 result!129820) b_and!135945)))

(declare-fun tb!107919 () Bool)

(declare-fun t!166159 () Bool)

(assert (=> (and b!1777684 (= (toChars!4891 (transformation!3505 (h!24982 rules!3447))) (toChars!4891 (transformation!3505 (rule!5569 (_1!10991 lt!689827))))) t!166159) tb!107919))

(declare-fun result!129822 () Bool)

(assert (= result!129822 result!129818))

(assert (=> b!1777676 t!166159))

(declare-fun b_and!135947 () Bool)

(assert (= b_and!135935 (and (=> t!166159 result!129822) b_and!135947)))

(declare-fun m!2198745 () Bool)

(assert (=> b!1777680 m!2198745))

(declare-fun m!2198747 () Bool)

(assert (=> b!1777689 m!2198747))

(declare-fun m!2198749 () Bool)

(assert (=> b!1777685 m!2198749))

(declare-fun m!2198751 () Bool)

(assert (=> b!1777685 m!2198751))

(declare-fun m!2198753 () Bool)

(assert (=> b!1777685 m!2198753))

(declare-fun m!2198755 () Bool)

(assert (=> b!1777681 m!2198755))

(assert (=> b!1777681 m!2198755))

(declare-fun m!2198757 () Bool)

(assert (=> b!1777681 m!2198757))

(assert (=> b!1777681 m!2198757))

(declare-fun m!2198759 () Bool)

(assert (=> b!1777681 m!2198759))

(declare-fun m!2198761 () Bool)

(assert (=> b!1777681 m!2198761))

(declare-fun m!2198763 () Bool)

(assert (=> b!1777686 m!2198763))

(declare-fun m!2198765 () Bool)

(assert (=> b!1777672 m!2198765))

(declare-fun m!2198767 () Bool)

(assert (=> b!1777672 m!2198767))

(declare-fun m!2198769 () Bool)

(assert (=> b!1777672 m!2198769))

(declare-fun m!2198771 () Bool)

(assert (=> b!1777672 m!2198771))

(declare-fun m!2198773 () Bool)

(assert (=> b!1777672 m!2198773))

(assert (=> b!1777672 m!2198755))

(declare-fun m!2198775 () Bool)

(assert (=> b!1777672 m!2198775))

(declare-fun m!2198777 () Bool)

(assert (=> b!1777672 m!2198777))

(declare-fun m!2198779 () Bool)

(assert (=> b!1777672 m!2198779))

(declare-fun m!2198781 () Bool)

(assert (=> b!1777672 m!2198781))

(declare-fun m!2198783 () Bool)

(assert (=> b!1777672 m!2198783))

(declare-fun m!2198785 () Bool)

(assert (=> b!1777672 m!2198785))

(declare-fun m!2198787 () Bool)

(assert (=> b!1777672 m!2198787))

(assert (=> b!1777672 m!2198775))

(declare-fun m!2198789 () Bool)

(assert (=> b!1777672 m!2198789))

(declare-fun m!2198791 () Bool)

(assert (=> b!1777672 m!2198791))

(declare-fun m!2198793 () Bool)

(assert (=> b!1777675 m!2198793))

(declare-fun m!2198795 () Bool)

(assert (=> b!1777675 m!2198795))

(declare-fun m!2198797 () Bool)

(assert (=> b!1777675 m!2198797))

(declare-fun m!2198799 () Bool)

(assert (=> b!1777675 m!2198799))

(declare-fun m!2198801 () Bool)

(assert (=> b!1777675 m!2198801))

(declare-fun m!2198803 () Bool)

(assert (=> b!1777675 m!2198803))

(declare-fun m!2198805 () Bool)

(assert (=> b!1777675 m!2198805))

(declare-fun m!2198807 () Bool)

(assert (=> b!1777675 m!2198807))

(declare-fun m!2198809 () Bool)

(assert (=> b!1777675 m!2198809))

(declare-fun m!2198811 () Bool)

(assert (=> b!1777675 m!2198811))

(declare-fun m!2198813 () Bool)

(assert (=> b!1777675 m!2198813))

(assert (=> b!1777675 m!2198801))

(declare-fun m!2198815 () Bool)

(assert (=> b!1777666 m!2198815))

(assert (=> b!1777666 m!2198815))

(declare-fun m!2198817 () Bool)

(assert (=> b!1777666 m!2198817))

(assert (=> b!1777666 m!2198817))

(declare-fun m!2198819 () Bool)

(assert (=> b!1777666 m!2198819))

(declare-fun m!2198821 () Bool)

(assert (=> b!1777666 m!2198821))

(declare-fun m!2198823 () Bool)

(assert (=> b!1777676 m!2198823))

(declare-fun m!2198825 () Bool)

(assert (=> b!1777662 m!2198825))

(declare-fun m!2198827 () Bool)

(assert (=> b!1777662 m!2198827))

(declare-fun m!2198829 () Bool)

(assert (=> b!1777662 m!2198829))

(declare-fun m!2198831 () Bool)

(assert (=> b!1777662 m!2198831))

(declare-fun m!2198833 () Bool)

(assert (=> b!1777662 m!2198833))

(assert (=> b!1777662 m!2198829))

(declare-fun m!2198835 () Bool)

(assert (=> b!1777662 m!2198835))

(declare-fun m!2198837 () Bool)

(assert (=> b!1777662 m!2198837))

(declare-fun m!2198839 () Bool)

(assert (=> b!1777674 m!2198839))

(declare-fun m!2198841 () Bool)

(assert (=> b!1777664 m!2198841))

(declare-fun m!2198843 () Bool)

(assert (=> b!1777683 m!2198843))

(declare-fun m!2198845 () Bool)

(assert (=> b!1777688 m!2198845))

(declare-fun m!2198847 () Bool)

(assert (=> b!1777688 m!2198847))

(declare-fun m!2198849 () Bool)

(assert (=> b!1777668 m!2198849))

(declare-fun m!2198851 () Bool)

(assert (=> b!1777668 m!2198851))

(declare-fun m!2198853 () Bool)

(assert (=> b!1777670 m!2198853))

(declare-fun m!2198855 () Bool)

(assert (=> b!1777678 m!2198855))

(declare-fun m!2198857 () Bool)

(assert (=> b!1777678 m!2198857))

(declare-fun m!2198859 () Bool)

(assert (=> b!1777678 m!2198859))

(declare-fun m!2198861 () Bool)

(assert (=> b!1777678 m!2198861))

(declare-fun m!2198863 () Bool)

(assert (=> b!1777671 m!2198863))

(declare-fun m!2198865 () Bool)

(assert (=> b!1777671 m!2198865))

(declare-fun m!2198867 () Bool)

(assert (=> b!1777671 m!2198867))

(assert (=> b!1777671 m!2198867))

(declare-fun m!2198869 () Bool)

(assert (=> b!1777671 m!2198869))

(declare-fun m!2198871 () Bool)

(assert (=> b!1777671 m!2198871))

(declare-fun m!2198873 () Bool)

(assert (=> b!1777661 m!2198873))

(declare-fun m!2198875 () Bool)

(assert (=> b!1777673 m!2198875))

(declare-fun m!2198877 () Bool)

(assert (=> b!1777673 m!2198877))

(declare-fun m!2198879 () Bool)

(assert (=> b!1777679 m!2198879))

(declare-fun m!2198881 () Bool)

(assert (=> b!1777679 m!2198881))

(declare-fun m!2198883 () Bool)

(assert (=> b!1777679 m!2198883))

(declare-fun m!2198885 () Bool)

(assert (=> b!1777687 m!2198885))

(declare-fun m!2198887 () Bool)

(assert (=> b!1777687 m!2198887))

(declare-fun m!2198889 () Bool)

(assert (=> b!1777687 m!2198889))

(declare-fun m!2198891 () Bool)

(assert (=> b!1777687 m!2198891))

(declare-fun m!2198893 () Bool)

(assert (=> start!176686 m!2198893))

(declare-fun m!2198895 () Bool)

(assert (=> b!1777663 m!2198895))

(declare-fun m!2198897 () Bool)

(assert (=> b!1777660 m!2198897))

(declare-fun m!2198899 () Bool)

(assert (=> b!1777660 m!2198899))

(check-sat (not b!1777681) (not b_next!49997) (not b_next!49993) (not b!1777673) (not b!1777669) (not tb!107915) (not b!1777663) b_and!135947 (not b!1777686) b_and!135943 (not b_next!49991) (not b!1777672) (not b!1777674) (not b!1777675) (not b!1777661) b_and!135939 (not b!1777678) (not b!1777662) tp_is_empty!7909 (not b!1777705) (not b!1777680) (not b!1777664) (not b_next!49999) (not b!1777679) (not tb!107909) (not b!1777688) (not tb!107903) b_and!135945 (not b!1777666) (not b_lambda!58103) (not b_lambda!58099) (not b_next!50001) (not b!1777708) b_and!135941 (not b!1777683) (not b!1777685) (not b!1777687) (not start!176686) b_and!135937 (not b!1777671) (not b_lambda!58101) (not b_next!49995) (not b!1777660) (not b!1777665) (not b!1777668) (not b!1777670) (not b!1777689))
(check-sat b_and!135943 (not b_next!49997) (not b_next!49991) b_and!135939 (not b_next!49999) b_and!135945 (not b_next!49993) (not b_next!50001) b_and!135941 b_and!135937 (not b_next!49995) b_and!135947)
