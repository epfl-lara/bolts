; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299246 () Bool)

(assert start!299246)

(declare-fun b!3189722 () Bool)

(declare-fun b_free!84289 () Bool)

(declare-fun b_next!84993 () Bool)

(assert (=> b!3189722 (= b_free!84289 (not b_next!84993))))

(declare-fun tp!1008310 () Bool)

(declare-fun b_and!211299 () Bool)

(assert (=> b!3189722 (= tp!1008310 b_and!211299)))

(declare-fun b_free!84291 () Bool)

(declare-fun b_next!84995 () Bool)

(assert (=> b!3189722 (= b_free!84291 (not b_next!84995))))

(declare-fun tp!1008302 () Bool)

(declare-fun b_and!211301 () Bool)

(assert (=> b!3189722 (= tp!1008302 b_and!211301)))

(declare-fun b!3189756 () Bool)

(declare-fun b_free!84293 () Bool)

(declare-fun b_next!84997 () Bool)

(assert (=> b!3189756 (= b_free!84293 (not b_next!84997))))

(declare-fun tp!1008311 () Bool)

(declare-fun b_and!211303 () Bool)

(assert (=> b!3189756 (= tp!1008311 b_and!211303)))

(declare-fun b_free!84295 () Bool)

(declare-fun b_next!84999 () Bool)

(assert (=> b!3189756 (= b_free!84295 (not b_next!84999))))

(declare-fun tp!1008313 () Bool)

(declare-fun b_and!211305 () Bool)

(assert (=> b!3189756 (= tp!1008313 b_and!211305)))

(declare-fun b!3189752 () Bool)

(declare-fun b_free!84297 () Bool)

(declare-fun b_next!85001 () Bool)

(assert (=> b!3189752 (= b_free!84297 (not b_next!85001))))

(declare-fun tp!1008304 () Bool)

(declare-fun b_and!211307 () Bool)

(assert (=> b!3189752 (= tp!1008304 b_and!211307)))

(declare-fun b_free!84299 () Bool)

(declare-fun b_next!85003 () Bool)

(assert (=> b!3189752 (= b_free!84299 (not b_next!85003))))

(declare-fun tp!1008312 () Bool)

(declare-fun b_and!211309 () Bool)

(assert (=> b!3189752 (= tp!1008312 b_and!211309)))

(declare-fun e!1987785 () Bool)

(assert (=> b!3189722 (= e!1987785 (and tp!1008310 tp!1008302))))

(declare-fun b!3189723 () Bool)

(declare-datatypes ((Unit!50279 0))(
  ( (Unit!50280) )
))
(declare-fun e!1987796 () Unit!50279)

(declare-fun Unit!50281 () Unit!50279)

(assert (=> b!3189723 (= e!1987796 Unit!50281)))

(declare-fun b!3189724 () Bool)

(declare-fun res!1297131 () Bool)

(declare-fun e!1987776 () Bool)

(assert (=> b!3189724 (=> (not res!1297131) (not e!1987776))))

(declare-datatypes ((C!19996 0))(
  ( (C!19997 (val!12046 Int)) )
))
(declare-datatypes ((Regex!9905 0))(
  ( (ElementMatch!9905 (c!535712 C!19996)) (Concat!15281 (regOne!20322 Regex!9905) (regTwo!20322 Regex!9905)) (EmptyExpr!9905) (Star!9905 (reg!10234 Regex!9905)) (EmptyLang!9905) (Union!9905 (regOne!20323 Regex!9905) (regTwo!20323 Regex!9905)) )
))
(declare-datatypes ((List!35976 0))(
  ( (Nil!35852) (Cons!35852 (h!41272 (_ BitVec 16)) (t!236111 List!35976)) )
))
(declare-datatypes ((TokenValue!5376 0))(
  ( (FloatLiteralValue!10752 (text!38077 List!35976)) (TokenValueExt!5375 (__x!22969 Int)) (Broken!26880 (value!167095 List!35976)) (Object!5499) (End!5376) (Def!5376) (Underscore!5376) (Match!5376) (Else!5376) (Error!5376) (Case!5376) (If!5376) (Extends!5376) (Abstract!5376) (Class!5376) (Val!5376) (DelimiterValue!10752 (del!5436 List!35976)) (KeywordValue!5382 (value!167096 List!35976)) (CommentValue!10752 (value!167097 List!35976)) (WhitespaceValue!10752 (value!167098 List!35976)) (IndentationValue!5376 (value!167099 List!35976)) (String!40213) (Int32!5376) (Broken!26881 (value!167100 List!35976)) (Boolean!5377) (Unit!50282) (OperatorValue!5379 (op!5436 List!35976)) (IdentifierValue!10752 (value!167101 List!35976)) (IdentifierValue!10753 (value!167102 List!35976)) (WhitespaceValue!10753 (value!167103 List!35976)) (True!10752) (False!10752) (Broken!26882 (value!167104 List!35976)) (Broken!26883 (value!167105 List!35976)) (True!10753) (RightBrace!5376) (RightBracket!5376) (Colon!5376) (Null!5376) (Comma!5376) (LeftBracket!5376) (False!10753) (LeftBrace!5376) (ImaginaryLiteralValue!5376 (text!38078 List!35976)) (StringLiteralValue!16128 (value!167106 List!35976)) (EOFValue!5376 (value!167107 List!35976)) (IdentValue!5376 (value!167108 List!35976)) (DelimiterValue!10753 (value!167109 List!35976)) (DedentValue!5376 (value!167110 List!35976)) (NewLineValue!5376 (value!167111 List!35976)) (IntegerValue!16128 (value!167112 (_ BitVec 32)) (text!38079 List!35976)) (IntegerValue!16129 (value!167113 Int) (text!38080 List!35976)) (Times!5376) (Or!5376) (Equal!5376) (Minus!5376) (Broken!26884 (value!167114 List!35976)) (And!5376) (Div!5376) (LessEqual!5376) (Mod!5376) (Concat!15282) (Not!5376) (Plus!5376) (SpaceValue!5376 (value!167115 List!35976)) (IntegerValue!16130 (value!167116 Int) (text!38081 List!35976)) (StringLiteralValue!16129 (text!38082 List!35976)) (FloatLiteralValue!10753 (text!38083 List!35976)) (BytesLiteralValue!5376 (value!167117 List!35976)) (CommentValue!10753 (value!167118 List!35976)) (StringLiteralValue!16130 (value!167119 List!35976)) (ErrorTokenValue!5376 (msg!5437 List!35976)) )
))
(declare-datatypes ((List!35977 0))(
  ( (Nil!35853) (Cons!35853 (h!41273 C!19996) (t!236112 List!35977)) )
))
(declare-datatypes ((IArray!21339 0))(
  ( (IArray!21340 (innerList!10727 List!35977)) )
))
(declare-datatypes ((Conc!10667 0))(
  ( (Node!10667 (left!27882 Conc!10667) (right!28212 Conc!10667) (csize!21564 Int) (cheight!10878 Int)) (Leaf!16851 (xs!13785 IArray!21339) (csize!21565 Int)) (Empty!10667) )
))
(declare-datatypes ((BalanceConc!20948 0))(
  ( (BalanceConc!20949 (c!535713 Conc!10667)) )
))
(declare-datatypes ((String!40214 0))(
  ( (String!40215 (value!167120 String)) )
))
(declare-datatypes ((TokenValueInjection!10180 0))(
  ( (TokenValueInjection!10181 (toValue!7210 Int) (toChars!7069 Int)) )
))
(declare-datatypes ((Rule!10092 0))(
  ( (Rule!10093 (regex!5146 Regex!9905) (tag!5664 String!40214) (isSeparator!5146 Bool) (transformation!5146 TokenValueInjection!10180)) )
))
(declare-datatypes ((Token!9658 0))(
  ( (Token!9659 (value!167121 TokenValue!5376) (rule!7578 Rule!10092) (size!27048 Int) (originalCharacters!5860 List!35977)) )
))
(declare-datatypes ((List!35978 0))(
  ( (Nil!35854) (Cons!35854 (h!41274 Token!9658) (t!236113 List!35978)) )
))
(declare-fun tokens!494 () List!35978)

(get-info :version)

(assert (=> b!3189724 (= res!1297131 (and (not ((_ is Nil!35854) tokens!494)) ((_ is Nil!35854) (t!236113 tokens!494))))))

(declare-fun b!3189725 () Bool)

(declare-fun e!1987771 () Bool)

(assert (=> b!3189725 (= e!1987771 true)))

(declare-datatypes ((LexerInterface!4735 0))(
  ( (LexerInterfaceExt!4732 (__x!22970 Int)) (Lexer!4733) )
))
(declare-fun thiss!18206 () LexerInterface!4735)

(declare-datatypes ((List!35979 0))(
  ( (Nil!35855) (Cons!35855 (h!41275 Rule!10092) (t!236114 List!35979)) )
))
(declare-fun rules!2135 () List!35979)

(declare-fun lt!1073780 () List!35977)

(declare-datatypes ((tuple2!35232 0))(
  ( (tuple2!35233 (_1!20750 List!35978) (_2!20750 List!35977)) )
))
(declare-fun lt!1073774 () tuple2!35232)

(declare-fun lexList!1285 (LexerInterface!4735 List!35979 List!35977) tuple2!35232)

(assert (=> b!3189725 (= lt!1073774 (lexList!1285 thiss!18206 rules!2135 lt!1073780))))

(declare-fun lt!1073775 () tuple2!35232)

(declare-fun e!1987794 () tuple2!35232)

(assert (=> b!3189725 (= lt!1073775 e!1987794)))

(declare-fun c!535711 () Bool)

(declare-datatypes ((tuple2!35234 0))(
  ( (tuple2!35235 (_1!20751 Token!9658) (_2!20751 List!35977)) )
))
(declare-datatypes ((Option!7025 0))(
  ( (None!7024) (Some!7024 (v!35524 tuple2!35234)) )
))
(declare-fun lt!1073784 () Option!7025)

(assert (=> b!3189725 (= c!535711 ((_ is Some!7024) lt!1073784))))

(declare-fun maxPrefix!2413 (LexerInterface!4735 List!35979 List!35977) Option!7025)

(assert (=> b!3189725 (= lt!1073784 (maxPrefix!2413 thiss!18206 rules!2135 lt!1073780))))

(declare-fun lt!1073804 () List!35977)

(declare-fun lt!1073795 () List!35977)

(assert (=> b!3189725 (= (maxPrefix!2413 thiss!18206 rules!2135 lt!1073795) (Some!7024 (tuple2!35235 (h!41274 tokens!494) lt!1073804)))))

(declare-fun separatorToken!241 () Token!9658)

(declare-fun lt!1073797 () Unit!50279)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!124 (LexerInterface!4735 List!35979 Token!9658 Rule!10092 List!35977 Rule!10092) Unit!50279)

(assert (=> b!3189725 (= lt!1073797 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!124 thiss!18206 rules!2135 (h!41274 tokens!494) (rule!7578 (h!41274 tokens!494)) lt!1073804 (rule!7578 separatorToken!241)))))

(declare-fun lt!1073793 () C!19996)

(declare-fun contains!6371 (List!35977 C!19996) Bool)

(declare-fun usedCharacters!490 (Regex!9905) List!35977)

(assert (=> b!3189725 (not (contains!6371 (usedCharacters!490 (regex!5146 (rule!7578 (h!41274 tokens!494)))) lt!1073793))))

(declare-fun lt!1073779 () Unit!50279)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!122 (LexerInterface!4735 List!35979 List!35979 Rule!10092 Rule!10092 C!19996) Unit!50279)

(assert (=> b!3189725 (= lt!1073779 (lemmaNonSepRuleNotContainsCharContainedInASepRule!122 thiss!18206 rules!2135 rules!2135 (rule!7578 (h!41274 tokens!494)) (rule!7578 separatorToken!241) lt!1073793))))

(declare-fun b!3189726 () Bool)

(declare-fun e!1987781 () Bool)

(declare-fun e!1987800 () Bool)

(assert (=> b!3189726 (= e!1987781 e!1987800)))

(declare-fun res!1297126 () Bool)

(assert (=> b!3189726 (=> res!1297126 e!1987800)))

(assert (=> b!3189726 (= res!1297126 (not (= lt!1073780 lt!1073795)))))

(declare-fun lt!1073802 () List!35977)

(declare-fun ++!8584 (List!35977 List!35977) List!35977)

(assert (=> b!3189726 (= lt!1073795 (++!8584 lt!1073802 lt!1073804))))

(declare-fun lt!1073782 () BalanceConc!20948)

(declare-fun list!12735 (BalanceConc!20948) List!35977)

(assert (=> b!3189726 (= lt!1073780 (list!12735 lt!1073782))))

(declare-fun charsOf!3168 (Token!9658) BalanceConc!20948)

(assert (=> b!3189726 (= lt!1073804 (list!12735 (charsOf!3168 separatorToken!241)))))

(declare-datatypes ((IArray!21341 0))(
  ( (IArray!21342 (innerList!10728 List!35978)) )
))
(declare-datatypes ((Conc!10668 0))(
  ( (Node!10668 (left!27883 Conc!10668) (right!28213 Conc!10668) (csize!21566 Int) (cheight!10879 Int)) (Leaf!16852 (xs!13786 IArray!21341) (csize!21567 Int)) (Empty!10668) )
))
(declare-datatypes ((BalanceConc!20950 0))(
  ( (BalanceConc!20951 (c!535714 Conc!10668)) )
))
(declare-fun lt!1073778 () BalanceConc!20950)

(declare-fun printWithSeparatorToken!44 (LexerInterface!4735 BalanceConc!20950 Token!9658) BalanceConc!20948)

(assert (=> b!3189726 (= lt!1073782 (printWithSeparatorToken!44 thiss!18206 lt!1073778 separatorToken!241))))

(declare-fun e!1987780 () Bool)

(declare-fun tp!1008307 () Bool)

(declare-fun b!3189727 () Bool)

(declare-fun e!1987772 () Bool)

(declare-fun inv!48705 (String!40214) Bool)

(declare-fun inv!48708 (TokenValueInjection!10180) Bool)

(assert (=> b!3189727 (= e!1987772 (and tp!1008307 (inv!48705 (tag!5664 (h!41275 rules!2135))) (inv!48708 (transformation!5146 (h!41275 rules!2135))) e!1987780))))

(declare-fun b!3189728 () Bool)

(declare-fun e!1987797 () Bool)

(declare-fun e!1987792 () Bool)

(assert (=> b!3189728 (= e!1987797 e!1987792)))

(declare-fun res!1297129 () Bool)

(assert (=> b!3189728 (=> (not res!1297129) (not e!1987792))))

(declare-fun lt!1073792 () Rule!10092)

(declare-fun matchR!4563 (Regex!9905 List!35977) Bool)

(assert (=> b!3189728 (= res!1297129 (matchR!4563 (regex!5146 lt!1073792) lt!1073804))))

(declare-datatypes ((Option!7026 0))(
  ( (None!7025) (Some!7025 (v!35525 Rule!10092)) )
))
(declare-fun lt!1073783 () Option!7026)

(declare-fun get!11416 (Option!7026) Rule!10092)

(assert (=> b!3189728 (= lt!1073792 (get!11416 lt!1073783))))

(declare-fun b!3189729 () Bool)

(declare-fun e!1987790 () Bool)

(declare-fun tp!1008308 () Bool)

(declare-fun e!1987793 () Bool)

(declare-fun inv!21 (TokenValue!5376) Bool)

(assert (=> b!3189729 (= e!1987790 (and (inv!21 (value!167121 (h!41274 tokens!494))) e!1987793 tp!1008308))))

(declare-fun b!3189730 () Bool)

(declare-fun tp!1008303 () Bool)

(declare-fun e!1987798 () Bool)

(declare-fun inv!48709 (Token!9658) Bool)

(assert (=> b!3189730 (= e!1987798 (and (inv!48709 (h!41274 tokens!494)) e!1987790 tp!1008303))))

(declare-fun res!1297119 () Bool)

(declare-fun e!1987773 () Bool)

(assert (=> start!299246 (=> (not res!1297119) (not e!1987773))))

(assert (=> start!299246 (= res!1297119 ((_ is Lexer!4733) thiss!18206))))

(assert (=> start!299246 e!1987773))

(assert (=> start!299246 true))

(declare-fun e!1987774 () Bool)

(assert (=> start!299246 e!1987774))

(declare-fun e!1987787 () Bool)

(assert (=> start!299246 (and (inv!48709 separatorToken!241) e!1987787)))

(assert (=> start!299246 e!1987798))

(declare-fun b!3189731 () Bool)

(declare-fun res!1297121 () Bool)

(assert (=> b!3189731 (=> (not res!1297121) (not e!1987776))))

(declare-fun rulesProduceIndividualToken!2227 (LexerInterface!4735 List!35979 Token!9658) Bool)

(assert (=> b!3189731 (= res!1297121 (rulesProduceIndividualToken!2227 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3189732 () Bool)

(declare-fun e!1987783 () Bool)

(assert (=> b!3189732 (= e!1987783 e!1987781)))

(declare-fun res!1297124 () Bool)

(assert (=> b!3189732 (=> res!1297124 e!1987781)))

(assert (=> b!3189732 (= res!1297124 (isSeparator!5146 (rule!7578 (h!41274 tokens!494))))))

(declare-fun lt!1073794 () Unit!50279)

(declare-fun lambda!116649 () Int)

(declare-fun forallContained!1129 (List!35978 Int Token!9658) Unit!50279)

(assert (=> b!3189732 (= lt!1073794 (forallContained!1129 tokens!494 lambda!116649 (h!41274 tokens!494)))))

(declare-fun b!3189733 () Bool)

(declare-fun tp!1008309 () Bool)

(declare-fun e!1987799 () Bool)

(assert (=> b!3189733 (= e!1987793 (and tp!1008309 (inv!48705 (tag!5664 (rule!7578 (h!41274 tokens!494)))) (inv!48708 (transformation!5146 (rule!7578 (h!41274 tokens!494)))) e!1987799))))

(declare-fun b!3189734 () Bool)

(declare-fun Unit!50283 () Unit!50279)

(assert (=> b!3189734 (= e!1987796 Unit!50283)))

(declare-fun lt!1073803 () Unit!50279)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!344 (Regex!9905 List!35977 C!19996) Unit!50279)

(assert (=> b!3189734 (= lt!1073803 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!344 (regex!5146 (rule!7578 separatorToken!241)) lt!1073804 lt!1073793))))

(declare-fun res!1297132 () Bool)

(assert (=> b!3189734 (= res!1297132 (not (matchR!4563 (regex!5146 (rule!7578 separatorToken!241)) lt!1073804)))))

(declare-fun e!1987778 () Bool)

(assert (=> b!3189734 (=> (not res!1297132) (not e!1987778))))

(assert (=> b!3189734 e!1987778))

(declare-fun b!3189735 () Bool)

(declare-fun lt!1073796 () tuple2!35232)

(assert (=> b!3189735 (= e!1987794 (tuple2!35233 (Cons!35854 (_1!20751 (v!35524 lt!1073784)) (_1!20750 lt!1073796)) (_2!20750 lt!1073796)))))

(assert (=> b!3189735 (= lt!1073796 (lexList!1285 thiss!18206 rules!2135 (_2!20751 (v!35524 lt!1073784))))))

(declare-fun b!3189736 () Bool)

(declare-fun res!1297127 () Bool)

(assert (=> b!3189736 (=> (not res!1297127) (not e!1987773))))

(declare-fun isEmpty!19989 (List!35979) Bool)

(assert (=> b!3189736 (= res!1297127 (not (isEmpty!19989 rules!2135)))))

(declare-fun b!3189737 () Bool)

(declare-fun res!1297125 () Bool)

(assert (=> b!3189737 (=> (not res!1297125) (not e!1987776))))

(declare-fun forall!7278 (List!35978 Int) Bool)

(assert (=> b!3189737 (= res!1297125 (forall!7278 tokens!494 lambda!116649))))

(declare-fun b!3189738 () Bool)

(declare-fun e!1987788 () Bool)

(assert (=> b!3189738 (= e!1987776 (not e!1987788))))

(declare-fun res!1297130 () Bool)

(assert (=> b!3189738 (=> res!1297130 e!1987788)))

(declare-fun lt!1073800 () List!35977)

(declare-fun lt!1073790 () List!35977)

(assert (=> b!3189738 (= res!1297130 (not (= lt!1073800 lt!1073790)))))

(declare-fun printList!1289 (LexerInterface!4735 List!35978) List!35977)

(assert (=> b!3189738 (= lt!1073790 (printList!1289 thiss!18206 (Cons!35854 (h!41274 tokens!494) Nil!35854)))))

(declare-fun lt!1073799 () BalanceConc!20948)

(assert (=> b!3189738 (= lt!1073800 (list!12735 lt!1073799))))

(declare-fun lt!1073781 () BalanceConc!20950)

(declare-fun printTailRec!1234 (LexerInterface!4735 BalanceConc!20950 Int BalanceConc!20948) BalanceConc!20948)

(assert (=> b!3189738 (= lt!1073799 (printTailRec!1234 thiss!18206 lt!1073781 0 (BalanceConc!20949 Empty!10667)))))

(declare-fun print!1802 (LexerInterface!4735 BalanceConc!20950) BalanceConc!20948)

(assert (=> b!3189738 (= lt!1073799 (print!1802 thiss!18206 lt!1073781))))

(declare-fun singletonSeq!2242 (Token!9658) BalanceConc!20950)

(assert (=> b!3189738 (= lt!1073781 (singletonSeq!2242 (h!41274 tokens!494)))))

(declare-fun b!3189739 () Bool)

(declare-fun res!1297120 () Bool)

(assert (=> b!3189739 (=> (not res!1297120) (not e!1987773))))

(declare-fun rulesInvariant!4132 (LexerInterface!4735 List!35979) Bool)

(assert (=> b!3189739 (= res!1297120 (rulesInvariant!4132 thiss!18206 rules!2135))))

(declare-fun b!3189740 () Bool)

(declare-fun res!1297138 () Bool)

(assert (=> b!3189740 (=> (not res!1297138) (not e!1987776))))

(assert (=> b!3189740 (= res!1297138 (isSeparator!5146 (rule!7578 separatorToken!241)))))

(declare-fun b!3189741 () Bool)

(declare-fun res!1297139 () Bool)

(assert (=> b!3189741 (=> (not res!1297139) (not e!1987776))))

(declare-fun sepAndNonSepRulesDisjointChars!1340 (List!35979 List!35979) Bool)

(assert (=> b!3189741 (= res!1297139 (sepAndNonSepRulesDisjointChars!1340 rules!2135 rules!2135))))

(declare-fun b!3189742 () Bool)

(declare-fun e!1987777 () Bool)

(declare-fun lt!1073785 () Rule!10092)

(assert (=> b!3189742 (= e!1987777 (= (rule!7578 (h!41274 tokens!494)) lt!1073785))))

(declare-fun b!3189743 () Bool)

(assert (=> b!3189743 (= e!1987778 false)))

(declare-fun b!3189744 () Bool)

(declare-fun e!1987784 () Bool)

(assert (=> b!3189744 (= e!1987784 e!1987777)))

(declare-fun res!1297128 () Bool)

(assert (=> b!3189744 (=> (not res!1297128) (not e!1987777))))

(assert (=> b!3189744 (= res!1297128 (matchR!4563 (regex!5146 lt!1073785) lt!1073802))))

(declare-fun lt!1073786 () Option!7026)

(assert (=> b!3189744 (= lt!1073785 (get!11416 lt!1073786))))

(declare-fun b!3189745 () Bool)

(declare-fun e!1987795 () Bool)

(assert (=> b!3189745 (= e!1987788 e!1987795)))

(declare-fun res!1297137 () Bool)

(assert (=> b!3189745 (=> res!1297137 e!1987795)))

(assert (=> b!3189745 (= res!1297137 (or (not (= lt!1073790 lt!1073802)) (not (= lt!1073800 lt!1073802))))))

(assert (=> b!3189745 (= lt!1073802 (list!12735 (charsOf!3168 (h!41274 tokens!494))))))

(declare-fun tp!1008306 () Bool)

(declare-fun b!3189746 () Bool)

(declare-fun e!1987775 () Bool)

(assert (=> b!3189746 (= e!1987787 (and (inv!21 (value!167121 separatorToken!241)) e!1987775 tp!1008306))))

(declare-fun b!3189747 () Bool)

(assert (=> b!3189747 (= e!1987773 e!1987776)))

(declare-fun res!1297133 () Bool)

(assert (=> b!3189747 (=> (not res!1297133) (not e!1987776))))

(declare-fun rulesProduceEachTokenIndividually!1186 (LexerInterface!4735 List!35979 BalanceConc!20950) Bool)

(assert (=> b!3189747 (= res!1297133 (rulesProduceEachTokenIndividually!1186 thiss!18206 rules!2135 lt!1073778))))

(declare-fun seqFromList!3371 (List!35978) BalanceConc!20950)

(assert (=> b!3189747 (= lt!1073778 (seqFromList!3371 tokens!494))))

(declare-fun b!3189748 () Bool)

(assert (=> b!3189748 (= e!1987794 (tuple2!35233 Nil!35854 lt!1073780))))

(assert (=> b!3189748 false))

(declare-fun b!3189749 () Bool)

(assert (=> b!3189749 (= e!1987800 e!1987771)))

(declare-fun res!1297135 () Bool)

(assert (=> b!3189749 (=> res!1297135 e!1987771)))

(declare-fun lt!1073791 () Bool)

(assert (=> b!3189749 (= res!1297135 lt!1073791)))

(declare-fun lt!1073777 () Unit!50279)

(assert (=> b!3189749 (= lt!1073777 e!1987796)))

(declare-fun c!535710 () Bool)

(assert (=> b!3189749 (= c!535710 lt!1073791)))

(assert (=> b!3189749 (= lt!1073791 (not (contains!6371 (usedCharacters!490 (regex!5146 (rule!7578 separatorToken!241))) lt!1073793)))))

(declare-fun head!6981 (List!35977) C!19996)

(assert (=> b!3189749 (= lt!1073793 (head!6981 lt!1073804))))

(declare-fun lt!1073798 () BalanceConc!20948)

(declare-fun maxPrefixOneRule!1540 (LexerInterface!4735 Rule!10092 List!35977) Option!7025)

(declare-fun apply!8084 (TokenValueInjection!10180 BalanceConc!20948) TokenValue!5376)

(declare-fun size!27049 (List!35977) Int)

(assert (=> b!3189749 (= (maxPrefixOneRule!1540 thiss!18206 (rule!7578 (h!41274 tokens!494)) lt!1073802) (Some!7024 (tuple2!35235 (Token!9659 (apply!8084 (transformation!5146 (rule!7578 (h!41274 tokens!494))) lt!1073798) (rule!7578 (h!41274 tokens!494)) (size!27049 lt!1073802) lt!1073802) Nil!35853)))))

(declare-fun lt!1073776 () Unit!50279)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!653 (LexerInterface!4735 List!35979 List!35977 List!35977 List!35977 Rule!10092) Unit!50279)

(assert (=> b!3189749 (= lt!1073776 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!653 thiss!18206 rules!2135 lt!1073802 lt!1073802 Nil!35853 (rule!7578 (h!41274 tokens!494))))))

(assert (=> b!3189749 e!1987797))

(declare-fun res!1297134 () Bool)

(assert (=> b!3189749 (=> (not res!1297134) (not e!1987797))))

(declare-fun isDefined!5498 (Option!7026) Bool)

(assert (=> b!3189749 (= res!1297134 (isDefined!5498 lt!1073783))))

(declare-fun getRuleFromTag!875 (LexerInterface!4735 List!35979 String!40214) Option!7026)

(assert (=> b!3189749 (= lt!1073783 (getRuleFromTag!875 thiss!18206 rules!2135 (tag!5664 (rule!7578 separatorToken!241))))))

(declare-fun lt!1073789 () Unit!50279)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!875 (LexerInterface!4735 List!35979 List!35977 Token!9658) Unit!50279)

(assert (=> b!3189749 (= lt!1073789 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!875 thiss!18206 rules!2135 lt!1073804 separatorToken!241))))

(assert (=> b!3189749 e!1987784))

(declare-fun res!1297122 () Bool)

(assert (=> b!3189749 (=> (not res!1297122) (not e!1987784))))

(assert (=> b!3189749 (= res!1297122 (isDefined!5498 lt!1073786))))

(assert (=> b!3189749 (= lt!1073786 (getRuleFromTag!875 thiss!18206 rules!2135 (tag!5664 (rule!7578 (h!41274 tokens!494)))))))

(declare-fun lt!1073788 () Unit!50279)

(assert (=> b!3189749 (= lt!1073788 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!875 thiss!18206 rules!2135 lt!1073802 (h!41274 tokens!494)))))

(declare-fun lt!1073801 () Unit!50279)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!796 (LexerInterface!4735 List!35979 List!35978 Token!9658) Unit!50279)

(assert (=> b!3189749 (= lt!1073801 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!796 thiss!18206 rules!2135 tokens!494 (h!41274 tokens!494)))))

(declare-fun isEmpty!19990 (List!35977) Bool)

(declare-fun getSuffix!1362 (List!35977 List!35977) List!35977)

(assert (=> b!3189749 (isEmpty!19990 (getSuffix!1362 lt!1073802 lt!1073802))))

(declare-fun lt!1073787 () Unit!50279)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!40 (List!35977) Unit!50279)

(assert (=> b!3189749 (= lt!1073787 (lemmaGetSuffixOnListWithItSelfIsEmpty!40 lt!1073802))))

(declare-fun b!3189750 () Bool)

(declare-fun res!1297123 () Bool)

(assert (=> b!3189750 (=> res!1297123 e!1987795)))

(assert (=> b!3189750 (= res!1297123 (not (rulesProduceIndividualToken!2227 thiss!18206 rules!2135 (h!41274 tokens!494))))))

(declare-fun b!3189751 () Bool)

(declare-fun tp!1008314 () Bool)

(assert (=> b!3189751 (= e!1987774 (and e!1987772 tp!1008314))))

(assert (=> b!3189752 (= e!1987799 (and tp!1008304 tp!1008312))))

(declare-fun b!3189753 () Bool)

(assert (=> b!3189753 (= e!1987792 (= (rule!7578 separatorToken!241) lt!1073792))))

(declare-fun tp!1008305 () Bool)

(declare-fun b!3189754 () Bool)

(assert (=> b!3189754 (= e!1987775 (and tp!1008305 (inv!48705 (tag!5664 (rule!7578 separatorToken!241))) (inv!48708 (transformation!5146 (rule!7578 separatorToken!241))) e!1987785))))

(declare-fun b!3189755 () Bool)

(assert (=> b!3189755 (= e!1987795 e!1987783)))

(declare-fun res!1297136 () Bool)

(assert (=> b!3189755 (=> res!1297136 e!1987783)))

(declare-fun isEmpty!19991 (BalanceConc!20950) Bool)

(declare-datatypes ((tuple2!35236 0))(
  ( (tuple2!35237 (_1!20752 BalanceConc!20950) (_2!20752 BalanceConc!20948)) )
))
(declare-fun lex!2075 (LexerInterface!4735 List!35979 BalanceConc!20948) tuple2!35236)

(assert (=> b!3189755 (= res!1297136 (isEmpty!19991 (_1!20752 (lex!2075 thiss!18206 rules!2135 lt!1073798))))))

(declare-fun seqFromList!3372 (List!35977) BalanceConc!20948)

(assert (=> b!3189755 (= lt!1073798 (seqFromList!3372 lt!1073802))))

(assert (=> b!3189756 (= e!1987780 (and tp!1008311 tp!1008313))))

(assert (= (and start!299246 res!1297119) b!3189736))

(assert (= (and b!3189736 res!1297127) b!3189739))

(assert (= (and b!3189739 res!1297120) b!3189747))

(assert (= (and b!3189747 res!1297133) b!3189731))

(assert (= (and b!3189731 res!1297121) b!3189740))

(assert (= (and b!3189740 res!1297138) b!3189737))

(assert (= (and b!3189737 res!1297125) b!3189741))

(assert (= (and b!3189741 res!1297139) b!3189724))

(assert (= (and b!3189724 res!1297131) b!3189738))

(assert (= (and b!3189738 (not res!1297130)) b!3189745))

(assert (= (and b!3189745 (not res!1297137)) b!3189750))

(assert (= (and b!3189750 (not res!1297123)) b!3189755))

(assert (= (and b!3189755 (not res!1297136)) b!3189732))

(assert (= (and b!3189732 (not res!1297124)) b!3189726))

(assert (= (and b!3189726 (not res!1297126)) b!3189749))

(assert (= (and b!3189749 res!1297122) b!3189744))

(assert (= (and b!3189744 res!1297128) b!3189742))

(assert (= (and b!3189749 res!1297134) b!3189728))

(assert (= (and b!3189728 res!1297129) b!3189753))

(assert (= (and b!3189749 c!535710) b!3189734))

(assert (= (and b!3189749 (not c!535710)) b!3189723))

(assert (= (and b!3189734 res!1297132) b!3189743))

(assert (= (and b!3189749 (not res!1297135)) b!3189725))

(assert (= (and b!3189725 c!535711) b!3189735))

(assert (= (and b!3189725 (not c!535711)) b!3189748))

(assert (= b!3189727 b!3189756))

(assert (= b!3189751 b!3189727))

(assert (= (and start!299246 ((_ is Cons!35855) rules!2135)) b!3189751))

(assert (= b!3189754 b!3189722))

(assert (= b!3189746 b!3189754))

(assert (= start!299246 b!3189746))

(assert (= b!3189733 b!3189752))

(assert (= b!3189729 b!3189733))

(assert (= b!3189730 b!3189729))

(assert (= (and start!299246 ((_ is Cons!35854) tokens!494)) b!3189730))

(declare-fun m!3448565 () Bool)

(assert (=> b!3189734 m!3448565))

(declare-fun m!3448567 () Bool)

(assert (=> b!3189734 m!3448567))

(declare-fun m!3448569 () Bool)

(assert (=> b!3189727 m!3448569))

(declare-fun m!3448571 () Bool)

(assert (=> b!3189727 m!3448571))

(declare-fun m!3448573 () Bool)

(assert (=> b!3189735 m!3448573))

(declare-fun m!3448575 () Bool)

(assert (=> b!3189747 m!3448575))

(declare-fun m!3448577 () Bool)

(assert (=> b!3189747 m!3448577))

(declare-fun m!3448579 () Bool)

(assert (=> b!3189726 m!3448579))

(declare-fun m!3448581 () Bool)

(assert (=> b!3189726 m!3448581))

(declare-fun m!3448583 () Bool)

(assert (=> b!3189726 m!3448583))

(declare-fun m!3448585 () Bool)

(assert (=> b!3189726 m!3448585))

(assert (=> b!3189726 m!3448581))

(declare-fun m!3448587 () Bool)

(assert (=> b!3189726 m!3448587))

(declare-fun m!3448589 () Bool)

(assert (=> b!3189744 m!3448589))

(declare-fun m!3448591 () Bool)

(assert (=> b!3189744 m!3448591))

(declare-fun m!3448593 () Bool)

(assert (=> start!299246 m!3448593))

(declare-fun m!3448595 () Bool)

(assert (=> b!3189750 m!3448595))

(declare-fun m!3448597 () Bool)

(assert (=> b!3189755 m!3448597))

(declare-fun m!3448599 () Bool)

(assert (=> b!3189755 m!3448599))

(declare-fun m!3448601 () Bool)

(assert (=> b!3189755 m!3448601))

(declare-fun m!3448603 () Bool)

(assert (=> b!3189730 m!3448603))

(declare-fun m!3448605 () Bool)

(assert (=> b!3189732 m!3448605))

(declare-fun m!3448607 () Bool)

(assert (=> b!3189736 m!3448607))

(declare-fun m!3448609 () Bool)

(assert (=> b!3189738 m!3448609))

(declare-fun m!3448611 () Bool)

(assert (=> b!3189738 m!3448611))

(declare-fun m!3448613 () Bool)

(assert (=> b!3189738 m!3448613))

(declare-fun m!3448615 () Bool)

(assert (=> b!3189738 m!3448615))

(declare-fun m!3448617 () Bool)

(assert (=> b!3189738 m!3448617))

(declare-fun m!3448619 () Bool)

(assert (=> b!3189737 m!3448619))

(declare-fun m!3448621 () Bool)

(assert (=> b!3189731 m!3448621))

(declare-fun m!3448623 () Bool)

(assert (=> b!3189739 m!3448623))

(declare-fun m!3448625 () Bool)

(assert (=> b!3189746 m!3448625))

(declare-fun m!3448627 () Bool)

(assert (=> b!3189754 m!3448627))

(declare-fun m!3448629 () Bool)

(assert (=> b!3189754 m!3448629))

(declare-fun m!3448631 () Bool)

(assert (=> b!3189741 m!3448631))

(declare-fun m!3448633 () Bool)

(assert (=> b!3189733 m!3448633))

(declare-fun m!3448635 () Bool)

(assert (=> b!3189733 m!3448635))

(declare-fun m!3448637 () Bool)

(assert (=> b!3189749 m!3448637))

(declare-fun m!3448639 () Bool)

(assert (=> b!3189749 m!3448639))

(declare-fun m!3448641 () Bool)

(assert (=> b!3189749 m!3448641))

(declare-fun m!3448643 () Bool)

(assert (=> b!3189749 m!3448643))

(declare-fun m!3448645 () Bool)

(assert (=> b!3189749 m!3448645))

(assert (=> b!3189749 m!3448641))

(declare-fun m!3448647 () Bool)

(assert (=> b!3189749 m!3448647))

(declare-fun m!3448649 () Bool)

(assert (=> b!3189749 m!3448649))

(declare-fun m!3448651 () Bool)

(assert (=> b!3189749 m!3448651))

(declare-fun m!3448653 () Bool)

(assert (=> b!3189749 m!3448653))

(declare-fun m!3448655 () Bool)

(assert (=> b!3189749 m!3448655))

(declare-fun m!3448657 () Bool)

(assert (=> b!3189749 m!3448657))

(declare-fun m!3448659 () Bool)

(assert (=> b!3189749 m!3448659))

(declare-fun m!3448661 () Bool)

(assert (=> b!3189749 m!3448661))

(declare-fun m!3448663 () Bool)

(assert (=> b!3189749 m!3448663))

(declare-fun m!3448665 () Bool)

(assert (=> b!3189749 m!3448665))

(declare-fun m!3448667 () Bool)

(assert (=> b!3189749 m!3448667))

(declare-fun m!3448669 () Bool)

(assert (=> b!3189749 m!3448669))

(assert (=> b!3189749 m!3448657))

(declare-fun m!3448671 () Bool)

(assert (=> b!3189729 m!3448671))

(declare-fun m!3448673 () Bool)

(assert (=> b!3189725 m!3448673))

(declare-fun m!3448675 () Bool)

(assert (=> b!3189725 m!3448675))

(declare-fun m!3448677 () Bool)

(assert (=> b!3189725 m!3448677))

(declare-fun m!3448679 () Bool)

(assert (=> b!3189725 m!3448679))

(declare-fun m!3448681 () Bool)

(assert (=> b!3189725 m!3448681))

(declare-fun m!3448683 () Bool)

(assert (=> b!3189725 m!3448683))

(assert (=> b!3189725 m!3448681))

(declare-fun m!3448685 () Bool)

(assert (=> b!3189725 m!3448685))

(declare-fun m!3448687 () Bool)

(assert (=> b!3189745 m!3448687))

(assert (=> b!3189745 m!3448687))

(declare-fun m!3448689 () Bool)

(assert (=> b!3189745 m!3448689))

(declare-fun m!3448691 () Bool)

(assert (=> b!3189728 m!3448691))

(declare-fun m!3448693 () Bool)

(assert (=> b!3189728 m!3448693))

(check-sat (not b_next!84997) (not b!3189750) (not b!3189734) (not b!3189745) (not b!3189754) (not b!3189751) (not b_next!84995) (not b!3189746) b_and!211305 (not b!3189737) (not b!3189747) (not b!3189725) b_and!211299 (not b!3189739) (not b!3189732) (not b!3189726) (not b!3189735) b_and!211309 b_and!211301 (not b!3189727) (not b_next!84999) (not b!3189744) b_and!211303 (not b!3189738) (not start!299246) (not b!3189729) (not b!3189736) (not b!3189755) b_and!211307 (not b_next!85001) (not b!3189749) (not b!3189733) (not b!3189731) (not b_next!85003) (not b!3189730) (not b!3189741) (not b!3189728) (not b_next!84993))
(check-sat (not b_next!84997) b_and!211299 (not b_next!84999) b_and!211303 (not b_next!84995) (not b_next!85003) b_and!211305 (not b_next!84993) b_and!211309 b_and!211301 b_and!211307 (not b_next!85001))
