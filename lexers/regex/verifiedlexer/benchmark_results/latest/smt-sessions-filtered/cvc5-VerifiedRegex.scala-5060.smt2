; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!256360 () Bool)

(assert start!256360)

(declare-fun b!2634071 () Bool)

(declare-fun b_free!74261 () Bool)

(declare-fun b_next!74965 () Bool)

(assert (=> b!2634071 (= b_free!74261 (not b_next!74965))))

(declare-fun tp!834767 () Bool)

(declare-fun b_and!192927 () Bool)

(assert (=> b!2634071 (= tp!834767 b_and!192927)))

(declare-fun b_free!74263 () Bool)

(declare-fun b_next!74967 () Bool)

(assert (=> b!2634071 (= b_free!74263 (not b_next!74967))))

(declare-fun tp!834761 () Bool)

(declare-fun b_and!192929 () Bool)

(assert (=> b!2634071 (= tp!834761 b_and!192929)))

(declare-fun b!2634075 () Bool)

(declare-fun b_free!74265 () Bool)

(declare-fun b_next!74969 () Bool)

(assert (=> b!2634075 (= b_free!74265 (not b_next!74969))))

(declare-fun tp!834764 () Bool)

(declare-fun b_and!192931 () Bool)

(assert (=> b!2634075 (= tp!834764 b_and!192931)))

(declare-fun b_free!74267 () Bool)

(declare-fun b_next!74971 () Bool)

(assert (=> b!2634075 (= b_free!74267 (not b_next!74971))))

(declare-fun tp!834768 () Bool)

(declare-fun b_and!192933 () Bool)

(assert (=> b!2634075 (= tp!834768 b_and!192933)))

(declare-fun bs!475996 () Bool)

(declare-fun b!2634076 () Bool)

(declare-fun b!2634070 () Bool)

(assert (= bs!475996 (and b!2634076 b!2634070)))

(declare-fun lambda!98836 () Int)

(declare-fun lambda!98835 () Int)

(assert (=> bs!475996 (not (= lambda!98836 lambda!98835))))

(declare-fun b!2634101 () Bool)

(declare-fun e!1662059 () Bool)

(assert (=> b!2634101 (= e!1662059 true)))

(declare-fun b!2634100 () Bool)

(declare-fun e!1662058 () Bool)

(assert (=> b!2634100 (= e!1662058 e!1662059)))

(declare-fun b!2634099 () Bool)

(declare-fun e!1662057 () Bool)

(assert (=> b!2634099 (= e!1662057 e!1662058)))

(assert (=> b!2634076 e!1662057))

(assert (= b!2634100 b!2634101))

(assert (= b!2634099 b!2634100))

(declare-datatypes ((List!30605 0))(
  ( (Nil!30505) (Cons!30505 (h!35925 (_ BitVec 16)) (t!216670 List!30605)) )
))
(declare-datatypes ((C!15726 0))(
  ( (C!15727 (val!9797 Int)) )
))
(declare-datatypes ((TokenValue!4862 0))(
  ( (FloatLiteralValue!9724 (text!34479 List!30605)) (TokenValueExt!4861 (__x!19557 Int)) (Broken!24310 (value!149820 List!30605)) (Object!4961) (End!4862) (Def!4862) (Underscore!4862) (Match!4862) (Else!4862) (Error!4862) (Case!4862) (If!4862) (Extends!4862) (Abstract!4862) (Class!4862) (Val!4862) (DelimiterValue!9724 (del!4922 List!30605)) (KeywordValue!4868 (value!149821 List!30605)) (CommentValue!9724 (value!149822 List!30605)) (WhitespaceValue!9724 (value!149823 List!30605)) (IndentationValue!4862 (value!149824 List!30605)) (String!34195) (Int32!4862) (Broken!24311 (value!149825 List!30605)) (Boolean!4863) (Unit!44525) (OperatorValue!4865 (op!4922 List!30605)) (IdentifierValue!9724 (value!149826 List!30605)) (IdentifierValue!9725 (value!149827 List!30605)) (WhitespaceValue!9725 (value!149828 List!30605)) (True!9724) (False!9724) (Broken!24312 (value!149829 List!30605)) (Broken!24313 (value!149830 List!30605)) (True!9725) (RightBrace!4862) (RightBracket!4862) (Colon!4862) (Null!4862) (Comma!4862) (LeftBracket!4862) (False!9725) (LeftBrace!4862) (ImaginaryLiteralValue!4862 (text!34480 List!30605)) (StringLiteralValue!14586 (value!149831 List!30605)) (EOFValue!4862 (value!149832 List!30605)) (IdentValue!4862 (value!149833 List!30605)) (DelimiterValue!9725 (value!149834 List!30605)) (DedentValue!4862 (value!149835 List!30605)) (NewLineValue!4862 (value!149836 List!30605)) (IntegerValue!14586 (value!149837 (_ BitVec 32)) (text!34481 List!30605)) (IntegerValue!14587 (value!149838 Int) (text!34482 List!30605)) (Times!4862) (Or!4862) (Equal!4862) (Minus!4862) (Broken!24314 (value!149839 List!30605)) (And!4862) (Div!4862) (LessEqual!4862) (Mod!4862) (Concat!12646) (Not!4862) (Plus!4862) (SpaceValue!4862 (value!149840 List!30605)) (IntegerValue!14588 (value!149841 Int) (text!34483 List!30605)) (StringLiteralValue!14587 (text!34484 List!30605)) (FloatLiteralValue!9725 (text!34485 List!30605)) (BytesLiteralValue!4862 (value!149842 List!30605)) (CommentValue!9725 (value!149843 List!30605)) (StringLiteralValue!14588 (value!149844 List!30605)) (ErrorTokenValue!4862 (msg!4923 List!30605)) )
))
(declare-datatypes ((List!30606 0))(
  ( (Nil!30506) (Cons!30506 (h!35926 C!15726) (t!216671 List!30606)) )
))
(declare-datatypes ((IArray!19049 0))(
  ( (IArray!19050 (innerList!9582 List!30606)) )
))
(declare-datatypes ((Conc!9522 0))(
  ( (Node!9522 (left!23568 Conc!9522) (right!23898 Conc!9522) (csize!19274 Int) (cheight!9733 Int)) (Leaf!14583 (xs!12526 IArray!19049) (csize!19275 Int)) (Empty!9522) )
))
(declare-datatypes ((BalanceConc!18658 0))(
  ( (BalanceConc!18659 (c!423525 Conc!9522)) )
))
(declare-datatypes ((TokenValueInjection!9164 0))(
  ( (TokenValueInjection!9165 (toValue!6558 Int) (toChars!6417 Int)) )
))
(declare-datatypes ((Regex!7784 0))(
  ( (ElementMatch!7784 (c!423526 C!15726)) (Concat!12647 (regOne!16080 Regex!7784) (regTwo!16080 Regex!7784)) (EmptyExpr!7784) (Star!7784 (reg!8113 Regex!7784)) (EmptyLang!7784) (Union!7784 (regOne!16081 Regex!7784) (regTwo!16081 Regex!7784)) )
))
(declare-datatypes ((String!34196 0))(
  ( (String!34197 (value!149845 String)) )
))
(declare-datatypes ((Rule!9080 0))(
  ( (Rule!9081 (regex!4640 Regex!7784) (tag!5134 String!34196) (isSeparator!4640 Bool) (transformation!4640 TokenValueInjection!9164)) )
))
(declare-datatypes ((List!30607 0))(
  ( (Nil!30507) (Cons!30507 (h!35927 Rule!9080) (t!216672 List!30607)) )
))
(declare-fun rules!1726 () List!30607)

(assert (= (and b!2634076 (is-Cons!30507 rules!1726)) b!2634099))

(declare-fun order!16549 () Int)

(declare-fun order!16551 () Int)

(declare-fun dynLambda!13075 (Int Int) Int)

(declare-fun dynLambda!13076 (Int Int) Int)

(assert (=> b!2634101 (< (dynLambda!13075 order!16549 (toValue!6558 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98836))))

(declare-fun order!16553 () Int)

(declare-fun dynLambda!13077 (Int Int) Int)

(assert (=> b!2634101 (< (dynLambda!13077 order!16553 (toChars!6417 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98836))))

(assert (=> b!2634076 true))

(declare-fun b!2634069 () Bool)

(declare-fun e!1662039 () Bool)

(declare-fun e!1662046 () Bool)

(assert (=> b!2634069 (= e!1662039 (not e!1662046))))

(declare-fun res!1109055 () Bool)

(assert (=> b!2634069 (=> res!1109055 e!1662046)))

(declare-datatypes ((Token!8750 0))(
  ( (Token!8751 (value!149846 TokenValue!4862) (rule!7024 Rule!9080) (size!23588 Int) (originalCharacters!5406 List!30606)) )
))
(declare-datatypes ((List!30608 0))(
  ( (Nil!30508) (Cons!30508 (h!35928 Token!8750) (t!216673 List!30608)) )
))
(declare-datatypes ((IArray!19051 0))(
  ( (IArray!19052 (innerList!9583 List!30608)) )
))
(declare-datatypes ((Conc!9523 0))(
  ( (Node!9523 (left!23569 Conc!9523) (right!23899 Conc!9523) (csize!19276 Int) (cheight!9734 Int)) (Leaf!14584 (xs!12527 IArray!19051) (csize!19277 Int)) (Empty!9523) )
))
(declare-datatypes ((BalanceConc!18660 0))(
  ( (BalanceConc!18661 (c!423527 Conc!9523)) )
))
(declare-fun v!6381 () BalanceConc!18660)

(declare-fun lt!927135 () Token!8750)

(declare-fun contains!5795 (BalanceConc!18660 Token!8750) Bool)

(assert (=> b!2634069 (= res!1109055 (not (contains!5795 v!6381 lt!927135)))))

(declare-fun from!862 () Int)

(declare-fun apply!7273 (BalanceConc!18660 Int) Token!8750)

(assert (=> b!2634069 (= lt!927135 (apply!7273 v!6381 from!862))))

(declare-fun lt!927128 () List!30608)

(declare-fun lt!927132 () List!30608)

(declare-fun tail!4279 (List!30608) List!30608)

(declare-fun drop!1636 (List!30608 Int) List!30608)

(assert (=> b!2634069 (= (tail!4279 lt!927128) (drop!1636 lt!927132 (+ 1 from!862)))))

(declare-datatypes ((Unit!44526 0))(
  ( (Unit!44527) )
))
(declare-fun lt!927136 () Unit!44526)

(declare-fun lemmaDropTail!825 (List!30608 Int) Unit!44526)

(assert (=> b!2634069 (= lt!927136 (lemmaDropTail!825 lt!927132 from!862))))

(declare-fun head!6041 (List!30608) Token!8750)

(declare-fun apply!7274 (List!30608 Int) Token!8750)

(assert (=> b!2634069 (= (head!6041 lt!927128) (apply!7274 lt!927132 from!862))))

(assert (=> b!2634069 (= lt!927128 (drop!1636 lt!927132 from!862))))

(declare-fun lt!927139 () Unit!44526)

(declare-fun lemmaDropApply!851 (List!30608 Int) Unit!44526)

(assert (=> b!2634069 (= lt!927139 (lemmaDropApply!851 lt!927132 from!862))))

(declare-fun res!1109049 () Bool)

(declare-fun e!1662035 () Bool)

(assert (=> b!2634070 (=> (not res!1109049) (not e!1662035))))

(declare-fun forall!6393 (BalanceConc!18660 Int) Bool)

(assert (=> b!2634070 (= res!1109049 (forall!6393 v!6381 lambda!98835))))

(declare-fun e!1662050 () Bool)

(assert (=> b!2634071 (= e!1662050 (and tp!834767 tp!834761))))

(declare-fun b!2634072 () Bool)

(declare-fun e!1662048 () Bool)

(declare-fun e!1662045 () Bool)

(declare-fun tp!834769 () Bool)

(assert (=> b!2634072 (= e!1662048 (and e!1662045 tp!834769))))

(declare-fun b!2634073 () Bool)

(declare-fun e!1662042 () Bool)

(assert (=> b!2634073 (= e!1662042 e!1662035)))

(declare-fun res!1109044 () Bool)

(assert (=> b!2634073 (=> (not res!1109044) (not e!1662035))))

(declare-fun lt!927134 () Int)

(assert (=> b!2634073 (= res!1109044 (<= from!862 lt!927134))))

(declare-fun size!23589 (BalanceConc!18660) Int)

(assert (=> b!2634073 (= lt!927134 (size!23589 v!6381))))

(declare-fun b!2634074 () Bool)

(declare-fun res!1109057 () Bool)

(assert (=> b!2634074 (=> (not res!1109057) (not e!1662035))))

(declare-fun sepAndNonSepRulesDisjointChars!1213 (List!30607 List!30607) Bool)

(assert (=> b!2634074 (= res!1109057 (sepAndNonSepRulesDisjointChars!1213 rules!1726 rules!1726))))

(declare-fun e!1662036 () Bool)

(assert (=> b!2634075 (= e!1662036 (and tp!834764 tp!834768))))

(declare-fun e!1662038 () Bool)

(assert (=> b!2634076 (= e!1662046 e!1662038)))

(declare-fun res!1109048 () Bool)

(assert (=> b!2634076 (=> res!1109048 e!1662038)))

(declare-fun lt!927133 () Bool)

(declare-datatypes ((tuple2!30012 0))(
  ( (tuple2!30013 (_1!17548 Token!8750) (_2!17548 BalanceConc!18658)) )
))
(declare-datatypes ((Option!6033 0))(
  ( (None!6032) (Some!6032 (v!32447 tuple2!30012)) )
))
(declare-fun lt!927130 () Option!6033)

(assert (=> b!2634076 (= res!1109048 (or (and (not lt!927133) (= (_1!17548 (v!32447 lt!927130)) lt!927135)) (and (not lt!927133) (not (= (_1!17548 (v!32447 lt!927130)) lt!927135))) (not (is-None!6032 lt!927130))))))

(assert (=> b!2634076 (= lt!927133 (not (is-Some!6032 lt!927130)))))

(declare-datatypes ((LexerInterface!4237 0))(
  ( (LexerInterfaceExt!4234 (__x!19558 Int)) (Lexer!4235) )
))
(declare-fun thiss!14197 () LexerInterface!4237)

(declare-fun lt!927143 () BalanceConc!18658)

(declare-fun lt!927137 () BalanceConc!18658)

(declare-fun maxPrefixZipperSequence!963 (LexerInterface!4237 List!30607 BalanceConc!18658) Option!6033)

(declare-fun ++!7432 (BalanceConc!18658 BalanceConc!18658) BalanceConc!18658)

(assert (=> b!2634076 (= lt!927130 (maxPrefixZipperSequence!963 thiss!14197 rules!1726 (++!7432 lt!927137 lt!927143)))))

(declare-fun charsOf!2927 (Token!8750) BalanceConc!18658)

(assert (=> b!2634076 (= lt!927137 (charsOf!2927 lt!927135))))

(declare-fun separatorToken!156 () Token!8750)

(declare-fun printWithSeparatorTokenWhenNeededRec!511 (LexerInterface!4237 List!30607 BalanceConc!18660 Token!8750 Int) BalanceConc!18658)

(assert (=> b!2634076 (= lt!927143 (printWithSeparatorTokenWhenNeededRec!511 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!927129 () Unit!44526)

(declare-fun forallContained!992 (List!30608 Int Token!8750) Unit!44526)

(assert (=> b!2634076 (= lt!927129 (forallContained!992 lt!927132 lambda!98836 lt!927135))))

(declare-fun b!2634077 () Bool)

(declare-fun res!1109054 () Bool)

(assert (=> b!2634077 (=> res!1109054 e!1662046)))

(declare-fun contains!5796 (List!30608 Token!8750) Bool)

(assert (=> b!2634077 (= res!1109054 (not (contains!5796 lt!927132 lt!927135)))))

(declare-fun b!2634078 () Bool)

(declare-fun e!1662041 () Bool)

(assert (=> b!2634078 (= e!1662038 e!1662041)))

(declare-fun res!1109053 () Bool)

(assert (=> b!2634078 (=> res!1109053 e!1662041)))

(declare-fun lt!927141 () List!30606)

(declare-fun lt!927142 () List!30606)

(assert (=> b!2634078 (= res!1109053 (not (= lt!927141 lt!927142)))))

(declare-fun printList!1165 (LexerInterface!4237 List!30608) List!30606)

(assert (=> b!2634078 (= lt!927142 (printList!1165 thiss!14197 (Cons!30508 lt!927135 Nil!30508)))))

(declare-fun lt!927138 () BalanceConc!18658)

(declare-fun list!11480 (BalanceConc!18658) List!30606)

(assert (=> b!2634078 (= lt!927141 (list!11480 lt!927138))))

(declare-fun lt!927140 () BalanceConc!18660)

(declare-fun printTailRec!1124 (LexerInterface!4237 BalanceConc!18660 Int BalanceConc!18658) BalanceConc!18658)

(assert (=> b!2634078 (= lt!927138 (printTailRec!1124 thiss!14197 lt!927140 0 (BalanceConc!18659 Empty!9522)))))

(declare-fun print!1638 (LexerInterface!4237 BalanceConc!18660) BalanceConc!18658)

(assert (=> b!2634078 (= lt!927138 (print!1638 thiss!14197 lt!927140))))

(declare-fun singletonSeq!2057 (Token!8750) BalanceConc!18660)

(assert (=> b!2634078 (= lt!927140 (singletonSeq!2057 lt!927135))))

(declare-fun b!2634079 () Bool)

(declare-fun res!1109050 () Bool)

(assert (=> b!2634079 (=> (not res!1109050) (not e!1662035))))

(declare-fun isEmpty!17404 (List!30607) Bool)

(assert (=> b!2634079 (= res!1109050 (not (isEmpty!17404 rules!1726)))))

(declare-fun b!2634080 () Bool)

(declare-fun res!1109045 () Bool)

(assert (=> b!2634080 (=> (not res!1109045) (not e!1662035))))

(declare-fun rulesProduceIndividualToken!1949 (LexerInterface!4237 List!30607 Token!8750) Bool)

(assert (=> b!2634080 (= res!1109045 (rulesProduceIndividualToken!1949 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2634081 () Bool)

(assert (=> b!2634081 (= e!1662041 (rulesProduceIndividualToken!1949 thiss!14197 rules!1726 lt!927135))))

(declare-fun b!2634082 () Bool)

(declare-fun res!1109047 () Bool)

(assert (=> b!2634082 (=> (not res!1109047) (not e!1662035))))

(declare-fun rulesProduceEachTokenIndividually!1057 (LexerInterface!4237 List!30607 BalanceConc!18660) Bool)

(assert (=> b!2634082 (= res!1109047 (rulesProduceEachTokenIndividually!1057 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2634083 () Bool)

(declare-fun tp!834763 () Bool)

(declare-fun e!1662037 () Bool)

(declare-fun inv!41375 (String!34196) Bool)

(declare-fun inv!41378 (TokenValueInjection!9164) Bool)

(assert (=> b!2634083 (= e!1662037 (and tp!834763 (inv!41375 (tag!5134 (rule!7024 separatorToken!156))) (inv!41378 (transformation!4640 (rule!7024 separatorToken!156))) e!1662036))))

(declare-fun res!1109051 () Bool)

(assert (=> start!256360 (=> (not res!1109051) (not e!1662042))))

(assert (=> start!256360 (= res!1109051 (and (is-Lexer!4235 thiss!14197) (>= from!862 0)))))

(assert (=> start!256360 e!1662042))

(assert (=> start!256360 true))

(assert (=> start!256360 e!1662048))

(declare-fun e!1662043 () Bool)

(declare-fun inv!41379 (Token!8750) Bool)

(assert (=> start!256360 (and (inv!41379 separatorToken!156) e!1662043)))

(declare-fun e!1662040 () Bool)

(declare-fun inv!41380 (BalanceConc!18660) Bool)

(assert (=> start!256360 (and (inv!41380 v!6381) e!1662040)))

(declare-fun b!2634084 () Bool)

(assert (=> b!2634084 (= e!1662035 e!1662039)))

(declare-fun res!1109056 () Bool)

(assert (=> b!2634084 (=> (not res!1109056) (not e!1662039))))

(assert (=> b!2634084 (= res!1109056 (< from!862 lt!927134))))

(declare-fun lt!927131 () Unit!44526)

(declare-fun lemmaContentSubsetPreservesForall!309 (List!30608 List!30608 Int) Unit!44526)

(declare-fun dropList!943 (BalanceConc!18660 Int) List!30608)

(assert (=> b!2634084 (= lt!927131 (lemmaContentSubsetPreservesForall!309 lt!927132 (dropList!943 v!6381 from!862) lambda!98835))))

(declare-fun list!11481 (BalanceConc!18660) List!30608)

(assert (=> b!2634084 (= lt!927132 (list!11481 v!6381))))

(declare-fun b!2634085 () Bool)

(declare-fun res!1109058 () Bool)

(assert (=> b!2634085 (=> (not res!1109058) (not e!1662035))))

(assert (=> b!2634085 (= res!1109058 (isSeparator!4640 (rule!7024 separatorToken!156)))))

(declare-fun tp!834765 () Bool)

(declare-fun b!2634086 () Bool)

(declare-fun inv!21 (TokenValue!4862) Bool)

(assert (=> b!2634086 (= e!1662043 (and (inv!21 (value!149846 separatorToken!156)) e!1662037 tp!834765))))

(declare-fun b!2634087 () Bool)

(declare-fun res!1109046 () Bool)

(assert (=> b!2634087 (=> res!1109046 e!1662041)))

(assert (=> b!2634087 (= res!1109046 (not (= lt!927142 (list!11480 lt!927137))))))

(declare-fun b!2634088 () Bool)

(declare-fun res!1109052 () Bool)

(assert (=> b!2634088 (=> (not res!1109052) (not e!1662035))))

(declare-fun rulesInvariant!3737 (LexerInterface!4237 List!30607) Bool)

(assert (=> b!2634088 (= res!1109052 (rulesInvariant!3737 thiss!14197 rules!1726))))

(declare-fun b!2634089 () Bool)

(declare-fun tp!834766 () Bool)

(declare-fun inv!41381 (Conc!9523) Bool)

(assert (=> b!2634089 (= e!1662040 (and (inv!41381 (c!423527 v!6381)) tp!834766))))

(declare-fun b!2634090 () Bool)

(declare-fun tp!834762 () Bool)

(assert (=> b!2634090 (= e!1662045 (and tp!834762 (inv!41375 (tag!5134 (h!35927 rules!1726))) (inv!41378 (transformation!4640 (h!35927 rules!1726))) e!1662050))))

(assert (= (and start!256360 res!1109051) b!2634073))

(assert (= (and b!2634073 res!1109044) b!2634079))

(assert (= (and b!2634079 res!1109050) b!2634088))

(assert (= (and b!2634088 res!1109052) b!2634082))

(assert (= (and b!2634082 res!1109047) b!2634080))

(assert (= (and b!2634080 res!1109045) b!2634085))

(assert (= (and b!2634085 res!1109058) b!2634070))

(assert (= (and b!2634070 res!1109049) b!2634074))

(assert (= (and b!2634074 res!1109057) b!2634084))

(assert (= (and b!2634084 res!1109056) b!2634069))

(assert (= (and b!2634069 (not res!1109055)) b!2634077))

(assert (= (and b!2634077 (not res!1109054)) b!2634076))

(assert (= (and b!2634076 (not res!1109048)) b!2634078))

(assert (= (and b!2634078 (not res!1109053)) b!2634087))

(assert (= (and b!2634087 (not res!1109046)) b!2634081))

(assert (= b!2634090 b!2634071))

(assert (= b!2634072 b!2634090))

(assert (= (and start!256360 (is-Cons!30507 rules!1726)) b!2634072))

(assert (= b!2634083 b!2634075))

(assert (= b!2634086 b!2634083))

(assert (= start!256360 b!2634086))

(assert (= start!256360 b!2634089))

(declare-fun m!2977941 () Bool)

(assert (=> start!256360 m!2977941))

(declare-fun m!2977943 () Bool)

(assert (=> start!256360 m!2977943))

(declare-fun m!2977945 () Bool)

(assert (=> b!2634086 m!2977945))

(declare-fun m!2977947 () Bool)

(assert (=> b!2634074 m!2977947))

(declare-fun m!2977949 () Bool)

(assert (=> b!2634073 m!2977949))

(declare-fun m!2977951 () Bool)

(assert (=> b!2634077 m!2977951))

(declare-fun m!2977953 () Bool)

(assert (=> b!2634088 m!2977953))

(declare-fun m!2977955 () Bool)

(assert (=> b!2634078 m!2977955))

(declare-fun m!2977957 () Bool)

(assert (=> b!2634078 m!2977957))

(declare-fun m!2977959 () Bool)

(assert (=> b!2634078 m!2977959))

(declare-fun m!2977961 () Bool)

(assert (=> b!2634078 m!2977961))

(declare-fun m!2977963 () Bool)

(assert (=> b!2634078 m!2977963))

(declare-fun m!2977965 () Bool)

(assert (=> b!2634082 m!2977965))

(declare-fun m!2977967 () Bool)

(assert (=> b!2634080 m!2977967))

(declare-fun m!2977969 () Bool)

(assert (=> b!2634083 m!2977969))

(declare-fun m!2977971 () Bool)

(assert (=> b!2634083 m!2977971))

(declare-fun m!2977973 () Bool)

(assert (=> b!2634079 m!2977973))

(declare-fun m!2977975 () Bool)

(assert (=> b!2634084 m!2977975))

(assert (=> b!2634084 m!2977975))

(declare-fun m!2977977 () Bool)

(assert (=> b!2634084 m!2977977))

(declare-fun m!2977979 () Bool)

(assert (=> b!2634084 m!2977979))

(declare-fun m!2977981 () Bool)

(assert (=> b!2634070 m!2977981))

(declare-fun m!2977983 () Bool)

(assert (=> b!2634087 m!2977983))

(declare-fun m!2977985 () Bool)

(assert (=> b!2634090 m!2977985))

(declare-fun m!2977987 () Bool)

(assert (=> b!2634090 m!2977987))

(declare-fun m!2977989 () Bool)

(assert (=> b!2634081 m!2977989))

(declare-fun m!2977991 () Bool)

(assert (=> b!2634076 m!2977991))

(declare-fun m!2977993 () Bool)

(assert (=> b!2634076 m!2977993))

(declare-fun m!2977995 () Bool)

(assert (=> b!2634076 m!2977995))

(declare-fun m!2977997 () Bool)

(assert (=> b!2634076 m!2977997))

(declare-fun m!2977999 () Bool)

(assert (=> b!2634076 m!2977999))

(assert (=> b!2634076 m!2977991))

(declare-fun m!2978001 () Bool)

(assert (=> b!2634069 m!2978001))

(declare-fun m!2978003 () Bool)

(assert (=> b!2634069 m!2978003))

(declare-fun m!2978005 () Bool)

(assert (=> b!2634069 m!2978005))

(declare-fun m!2978007 () Bool)

(assert (=> b!2634069 m!2978007))

(declare-fun m!2978009 () Bool)

(assert (=> b!2634069 m!2978009))

(declare-fun m!2978011 () Bool)

(assert (=> b!2634069 m!2978011))

(declare-fun m!2978013 () Bool)

(assert (=> b!2634069 m!2978013))

(declare-fun m!2978015 () Bool)

(assert (=> b!2634069 m!2978015))

(declare-fun m!2978017 () Bool)

(assert (=> b!2634069 m!2978017))

(declare-fun m!2978019 () Bool)

(assert (=> b!2634089 m!2978019))

(push 1)

(assert (not b!2634074))

(assert (not b_next!74965))

(assert (not b!2634088))

(assert (not b!2634099))

(assert (not b!2634082))

(assert (not b!2634073))

(assert (not b!2634086))

(assert (not b!2634069))

(assert (not b!2634070))

(assert b_and!192933)

(assert (not b_next!74969))

(assert (not b_next!74967))

(assert (not b!2634083))

(assert (not b!2634077))

(assert (not b!2634078))

(assert (not b_next!74971))

(assert (not b!2634081))

(assert (not start!256360))

(assert (not b!2634080))

(assert b_and!192929)

(assert (not b!2634076))

(assert (not b!2634079))

(assert (not b!2634090))

(assert (not b!2634087))

(assert (not b!2634072))

(assert (not b!2634089))

(assert b_and!192931)

(assert b_and!192927)

(assert (not b!2634084))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74967))

(assert (not b_next!74965))

(assert (not b_next!74971))

(assert b_and!192929)

(assert b_and!192933)

(assert (not b_next!74969))

(assert b_and!192931)

(assert b_and!192927)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2634194 () Bool)

(declare-fun e!1662124 () Bool)

(declare-fun inv!15 (TokenValue!4862) Bool)

(assert (=> b!2634194 (= e!1662124 (inv!15 (value!149846 separatorToken!156)))))

(declare-fun b!2634195 () Bool)

(declare-fun e!1662125 () Bool)

(declare-fun e!1662123 () Bool)

(assert (=> b!2634195 (= e!1662125 e!1662123)))

(declare-fun c!423535 () Bool)

(assert (=> b!2634195 (= c!423535 (is-IntegerValue!14587 (value!149846 separatorToken!156)))))

(declare-fun b!2634196 () Bool)

(declare-fun res!1109109 () Bool)

(assert (=> b!2634196 (=> res!1109109 e!1662124)))

(assert (=> b!2634196 (= res!1109109 (not (is-IntegerValue!14588 (value!149846 separatorToken!156))))))

(assert (=> b!2634196 (= e!1662123 e!1662124)))

(declare-fun b!2634197 () Bool)

(declare-fun inv!17 (TokenValue!4862) Bool)

(assert (=> b!2634197 (= e!1662123 (inv!17 (value!149846 separatorToken!156)))))

(declare-fun b!2634193 () Bool)

(declare-fun inv!16 (TokenValue!4862) Bool)

(assert (=> b!2634193 (= e!1662125 (inv!16 (value!149846 separatorToken!156)))))

(declare-fun d!747447 () Bool)

(declare-fun c!423536 () Bool)

(assert (=> d!747447 (= c!423536 (is-IntegerValue!14586 (value!149846 separatorToken!156)))))

(assert (=> d!747447 (= (inv!21 (value!149846 separatorToken!156)) e!1662125)))

(assert (= (and d!747447 c!423536) b!2634193))

(assert (= (and d!747447 (not c!423536)) b!2634195))

(assert (= (and b!2634195 c!423535) b!2634197))

(assert (= (and b!2634195 (not c!423535)) b!2634196))

(assert (= (and b!2634196 (not res!1109109)) b!2634194))

(declare-fun m!2978101 () Bool)

(assert (=> b!2634194 m!2978101))

(declare-fun m!2978103 () Bool)

(assert (=> b!2634197 m!2978103))

(declare-fun m!2978105 () Bool)

(assert (=> b!2634193 m!2978105))

(assert (=> b!2634086 d!747447))

(declare-fun d!747449 () Bool)

(declare-fun list!11484 (Conc!9522) List!30606)

(assert (=> d!747449 (= (list!11480 lt!927137) (list!11484 (c!423525 lt!927137)))))

(declare-fun bs!475998 () Bool)

(assert (= bs!475998 d!747449))

(declare-fun m!2978107 () Bool)

(assert (=> bs!475998 m!2978107))

(assert (=> b!2634087 d!747449))

(declare-fun b!2634214 () Bool)

(declare-fun e!1662139 () Bool)

(declare-fun e!1662140 () Bool)

(assert (=> b!2634214 (= e!1662139 e!1662140)))

(declare-fun res!1109128 () Bool)

(assert (=> b!2634214 (=> res!1109128 e!1662140)))

(declare-fun lt!927209 () Option!6033)

(declare-fun isDefined!4797 (Option!6033) Bool)

(assert (=> b!2634214 (= res!1109128 (not (isDefined!4797 lt!927209)))))

(declare-fun b!2634215 () Bool)

(declare-fun e!1662142 () Bool)

(assert (=> b!2634215 (= e!1662140 e!1662142)))

(declare-fun res!1109132 () Bool)

(assert (=> b!2634215 (=> (not res!1109132) (not e!1662142))))

(declare-fun get!9601 (Option!6033) tuple2!30012)

(declare-datatypes ((tuple2!30016 0))(
  ( (tuple2!30017 (_1!17550 Token!8750) (_2!17550 List!30606)) )
))
(declare-datatypes ((Option!6035 0))(
  ( (None!6034) (Some!6034 (v!32457 tuple2!30016)) )
))
(declare-fun get!9602 (Option!6035) tuple2!30016)

(declare-fun maxPrefix!2309 (LexerInterface!4237 List!30607 List!30606) Option!6035)

(assert (=> b!2634215 (= res!1109132 (= (_1!17548 (get!9601 lt!927209)) (_1!17550 (get!9602 (maxPrefix!2309 thiss!14197 rules!1726 (list!11480 (++!7432 lt!927137 lt!927143)))))))))

(declare-fun e!1662138 () Bool)

(declare-fun b!2634216 () Bool)

(declare-fun maxPrefixZipper!437 (LexerInterface!4237 List!30607 List!30606) Option!6035)

(assert (=> b!2634216 (= e!1662138 (= (list!11480 (_2!17548 (get!9601 lt!927209))) (_2!17550 (get!9602 (maxPrefixZipper!437 thiss!14197 rules!1726 (list!11480 (++!7432 lt!927137 lt!927143)))))))))

(declare-fun b!2634217 () Bool)

(assert (=> b!2634217 (= e!1662142 (= (list!11480 (_2!17548 (get!9601 lt!927209))) (_2!17550 (get!9602 (maxPrefix!2309 thiss!14197 rules!1726 (list!11480 (++!7432 lt!927137 lt!927143)))))))))

(declare-fun bm!169478 () Bool)

(declare-fun call!169483 () Option!6033)

(declare-fun maxPrefixOneRuleZipperSequence!446 (LexerInterface!4237 Rule!9080 BalanceConc!18658) Option!6033)

(assert (=> bm!169478 (= call!169483 (maxPrefixOneRuleZipperSequence!446 thiss!14197 (h!35927 rules!1726) (++!7432 lt!927137 lt!927143)))))

(declare-fun b!2634218 () Bool)

(declare-fun e!1662143 () Bool)

(assert (=> b!2634218 (= e!1662143 e!1662138)))

(declare-fun res!1109131 () Bool)

(assert (=> b!2634218 (=> (not res!1109131) (not e!1662138))))

(assert (=> b!2634218 (= res!1109131 (= (_1!17548 (get!9601 lt!927209)) (_1!17550 (get!9602 (maxPrefixZipper!437 thiss!14197 rules!1726 (list!11480 (++!7432 lt!927137 lt!927143)))))))))

(declare-fun b!2634220 () Bool)

(declare-fun e!1662141 () Option!6033)

(assert (=> b!2634220 (= e!1662141 call!169483)))

(declare-fun b!2634221 () Bool)

(declare-fun res!1109130 () Bool)

(assert (=> b!2634221 (=> (not res!1109130) (not e!1662139))))

(assert (=> b!2634221 (= res!1109130 e!1662143)))

(declare-fun res!1109133 () Bool)

(assert (=> b!2634221 (=> res!1109133 e!1662143)))

(assert (=> b!2634221 (= res!1109133 (not (isDefined!4797 lt!927209)))))

(declare-fun b!2634219 () Bool)

(declare-fun lt!927211 () Option!6033)

(declare-fun lt!927206 () Option!6033)

(assert (=> b!2634219 (= e!1662141 (ite (and (is-None!6032 lt!927211) (is-None!6032 lt!927206)) None!6032 (ite (is-None!6032 lt!927206) lt!927211 (ite (is-None!6032 lt!927211) lt!927206 (ite (>= (size!23588 (_1!17548 (v!32447 lt!927211))) (size!23588 (_1!17548 (v!32447 lt!927206)))) lt!927211 lt!927206)))))))

(assert (=> b!2634219 (= lt!927211 call!169483)))

(assert (=> b!2634219 (= lt!927206 (maxPrefixZipperSequence!963 thiss!14197 (t!216672 rules!1726) (++!7432 lt!927137 lt!927143)))))

(declare-fun d!747451 () Bool)

(assert (=> d!747451 e!1662139))

(declare-fun res!1109129 () Bool)

(assert (=> d!747451 (=> (not res!1109129) (not e!1662139))))

(declare-fun isDefined!4798 (Option!6035) Bool)

(assert (=> d!747451 (= res!1109129 (= (isDefined!4797 lt!927209) (isDefined!4798 (maxPrefixZipper!437 thiss!14197 rules!1726 (list!11480 (++!7432 lt!927137 lt!927143))))))))

(assert (=> d!747451 (= lt!927209 e!1662141)))

(declare-fun c!423540 () Bool)

(assert (=> d!747451 (= c!423540 (and (is-Cons!30507 rules!1726) (is-Nil!30507 (t!216672 rules!1726))))))

(declare-fun lt!927212 () Unit!44526)

(declare-fun lt!927210 () Unit!44526)

(assert (=> d!747451 (= lt!927212 lt!927210)))

(declare-fun lt!927207 () List!30606)

(declare-fun lt!927208 () List!30606)

(declare-fun isPrefix!2438 (List!30606 List!30606) Bool)

(assert (=> d!747451 (isPrefix!2438 lt!927207 lt!927208)))

(declare-fun lemmaIsPrefixRefl!1564 (List!30606 List!30606) Unit!44526)

(assert (=> d!747451 (= lt!927210 (lemmaIsPrefixRefl!1564 lt!927207 lt!927208))))

(assert (=> d!747451 (= lt!927208 (list!11480 (++!7432 lt!927137 lt!927143)))))

(assert (=> d!747451 (= lt!927207 (list!11480 (++!7432 lt!927137 lt!927143)))))

(declare-fun rulesValidInductive!1616 (LexerInterface!4237 List!30607) Bool)

(assert (=> d!747451 (rulesValidInductive!1616 thiss!14197 rules!1726)))

(assert (=> d!747451 (= (maxPrefixZipperSequence!963 thiss!14197 rules!1726 (++!7432 lt!927137 lt!927143)) lt!927209)))

(assert (= (and d!747451 c!423540) b!2634220))

(assert (= (and d!747451 (not c!423540)) b!2634219))

(assert (= (or b!2634220 b!2634219) bm!169478))

(assert (= (and d!747451 res!1109129) b!2634221))

(assert (= (and b!2634221 (not res!1109133)) b!2634218))

(assert (= (and b!2634218 res!1109131) b!2634216))

(assert (= (and b!2634221 res!1109130) b!2634214))

(assert (= (and b!2634214 (not res!1109128)) b!2634215))

(assert (= (and b!2634215 res!1109132) b!2634217))

(assert (=> b!2634219 m!2977991))

(declare-fun m!2978109 () Bool)

(assert (=> b!2634219 m!2978109))

(declare-fun m!2978111 () Bool)

(assert (=> b!2634214 m!2978111))

(declare-fun m!2978113 () Bool)

(assert (=> d!747451 m!2978113))

(declare-fun m!2978115 () Bool)

(assert (=> d!747451 m!2978115))

(assert (=> d!747451 m!2978111))

(declare-fun m!2978117 () Bool)

(assert (=> d!747451 m!2978117))

(declare-fun m!2978119 () Bool)

(assert (=> d!747451 m!2978119))

(assert (=> d!747451 m!2978113))

(assert (=> d!747451 m!2977991))

(assert (=> d!747451 m!2978119))

(declare-fun m!2978121 () Bool)

(assert (=> d!747451 m!2978121))

(declare-fun m!2978123 () Bool)

(assert (=> d!747451 m!2978123))

(declare-fun m!2978125 () Bool)

(assert (=> b!2634215 m!2978125))

(assert (=> b!2634215 m!2977991))

(assert (=> b!2634215 m!2978119))

(assert (=> b!2634215 m!2978119))

(declare-fun m!2978127 () Bool)

(assert (=> b!2634215 m!2978127))

(assert (=> b!2634215 m!2978127))

(declare-fun m!2978129 () Bool)

(assert (=> b!2634215 m!2978129))

(declare-fun m!2978131 () Bool)

(assert (=> b!2634216 m!2978131))

(assert (=> b!2634216 m!2978113))

(declare-fun m!2978133 () Bool)

(assert (=> b!2634216 m!2978133))

(assert (=> b!2634216 m!2978125))

(assert (=> b!2634216 m!2978119))

(assert (=> b!2634216 m!2978113))

(assert (=> b!2634216 m!2977991))

(assert (=> b!2634216 m!2978119))

(assert (=> b!2634218 m!2978125))

(assert (=> b!2634218 m!2977991))

(assert (=> b!2634218 m!2978119))

(assert (=> b!2634218 m!2978119))

(assert (=> b!2634218 m!2978113))

(assert (=> b!2634218 m!2978113))

(assert (=> b!2634218 m!2978133))

(assert (=> b!2634217 m!2977991))

(assert (=> b!2634217 m!2978119))

(assert (=> b!2634217 m!2978131))

(assert (=> b!2634217 m!2978119))

(assert (=> b!2634217 m!2978127))

(assert (=> b!2634217 m!2978127))

(assert (=> b!2634217 m!2978129))

(assert (=> b!2634217 m!2978125))

(assert (=> bm!169478 m!2977991))

(declare-fun m!2978135 () Bool)

(assert (=> bm!169478 m!2978135))

(assert (=> b!2634221 m!2978111))

(assert (=> b!2634076 d!747451))

(declare-fun d!747453 () Bool)

(declare-fun lt!927215 () BalanceConc!18658)

(assert (=> d!747453 (= (list!11480 lt!927215) (originalCharacters!5406 lt!927135))))

(declare-fun dynLambda!13081 (Int TokenValue!4862) BalanceConc!18658)

(assert (=> d!747453 (= lt!927215 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 lt!927135))) (value!149846 lt!927135)))))

(assert (=> d!747453 (= (charsOf!2927 lt!927135) lt!927215)))

(declare-fun b_lambda!79343 () Bool)

(assert (=> (not b_lambda!79343) (not d!747453)))

(declare-fun tb!143747 () Bool)

(declare-fun t!216683 () Bool)

(assert (=> (and b!2634071 (= (toChars!6417 (transformation!4640 (h!35927 rules!1726))) (toChars!6417 (transformation!4640 (rule!7024 lt!927135)))) t!216683) tb!143747))

(declare-fun b!2634226 () Bool)

(declare-fun e!1662146 () Bool)

(declare-fun tp!834799 () Bool)

(declare-fun inv!41386 (Conc!9522) Bool)

(assert (=> b!2634226 (= e!1662146 (and (inv!41386 (c!423525 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 lt!927135))) (value!149846 lt!927135)))) tp!834799))))

(declare-fun result!178650 () Bool)

(declare-fun inv!41387 (BalanceConc!18658) Bool)

(assert (=> tb!143747 (= result!178650 (and (inv!41387 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 lt!927135))) (value!149846 lt!927135))) e!1662146))))

(assert (= tb!143747 b!2634226))

(declare-fun m!2978137 () Bool)

(assert (=> b!2634226 m!2978137))

(declare-fun m!2978139 () Bool)

(assert (=> tb!143747 m!2978139))

(assert (=> d!747453 t!216683))

(declare-fun b_and!192943 () Bool)

(assert (= b_and!192929 (and (=> t!216683 result!178650) b_and!192943)))

(declare-fun tb!143749 () Bool)

(declare-fun t!216685 () Bool)

(assert (=> (and b!2634075 (= (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (toChars!6417 (transformation!4640 (rule!7024 lt!927135)))) t!216685) tb!143749))

(declare-fun result!178654 () Bool)

(assert (= result!178654 result!178650))

(assert (=> d!747453 t!216685))

(declare-fun b_and!192945 () Bool)

(assert (= b_and!192933 (and (=> t!216685 result!178654) b_and!192945)))

(declare-fun m!2978141 () Bool)

(assert (=> d!747453 m!2978141))

(declare-fun m!2978143 () Bool)

(assert (=> d!747453 m!2978143))

(assert (=> b!2634076 d!747453))

(declare-fun b!2634236 () Bool)

(declare-fun res!1109142 () Bool)

(declare-fun e!1662149 () Bool)

(assert (=> b!2634236 (=> (not res!1109142) (not e!1662149))))

(declare-fun height!1377 (Conc!9522) Int)

(declare-fun ++!7434 (Conc!9522 Conc!9522) Conc!9522)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2634236 (= res!1109142 (<= (height!1377 (++!7434 (c!423525 lt!927137) (c!423525 lt!927143))) (+ (max!0 (height!1377 (c!423525 lt!927137)) (height!1377 (c!423525 lt!927143))) 1)))))

(declare-fun b!2634238 () Bool)

(declare-fun lt!927218 () BalanceConc!18658)

(declare-fun ++!7435 (List!30606 List!30606) List!30606)

(assert (=> b!2634238 (= e!1662149 (= (list!11480 lt!927218) (++!7435 (list!11480 lt!927137) (list!11480 lt!927143))))))

(declare-fun d!747455 () Bool)

(assert (=> d!747455 e!1662149))

(declare-fun res!1109143 () Bool)

(assert (=> d!747455 (=> (not res!1109143) (not e!1662149))))

(declare-fun appendAssocInst!633 (Conc!9522 Conc!9522) Bool)

(assert (=> d!747455 (= res!1109143 (appendAssocInst!633 (c!423525 lt!927137) (c!423525 lt!927143)))))

(assert (=> d!747455 (= lt!927218 (BalanceConc!18659 (++!7434 (c!423525 lt!927137) (c!423525 lt!927143))))))

(assert (=> d!747455 (= (++!7432 lt!927137 lt!927143) lt!927218)))

(declare-fun b!2634237 () Bool)

(declare-fun res!1109144 () Bool)

(assert (=> b!2634237 (=> (not res!1109144) (not e!1662149))))

(assert (=> b!2634237 (= res!1109144 (>= (height!1377 (++!7434 (c!423525 lt!927137) (c!423525 lt!927143))) (max!0 (height!1377 (c!423525 lt!927137)) (height!1377 (c!423525 lt!927143)))))))

(declare-fun b!2634235 () Bool)

(declare-fun res!1109145 () Bool)

(assert (=> b!2634235 (=> (not res!1109145) (not e!1662149))))

(declare-fun isBalanced!2880 (Conc!9522) Bool)

(assert (=> b!2634235 (= res!1109145 (isBalanced!2880 (++!7434 (c!423525 lt!927137) (c!423525 lt!927143))))))

(assert (= (and d!747455 res!1109143) b!2634235))

(assert (= (and b!2634235 res!1109145) b!2634236))

(assert (= (and b!2634236 res!1109142) b!2634237))

(assert (= (and b!2634237 res!1109144) b!2634238))

(declare-fun m!2978145 () Bool)

(assert (=> d!747455 m!2978145))

(declare-fun m!2978147 () Bool)

(assert (=> d!747455 m!2978147))

(assert (=> b!2634237 m!2978147))

(declare-fun m!2978149 () Bool)

(assert (=> b!2634237 m!2978149))

(declare-fun m!2978151 () Bool)

(assert (=> b!2634237 m!2978151))

(assert (=> b!2634237 m!2978147))

(declare-fun m!2978153 () Bool)

(assert (=> b!2634237 m!2978153))

(assert (=> b!2634237 m!2978153))

(assert (=> b!2634237 m!2978151))

(declare-fun m!2978155 () Bool)

(assert (=> b!2634237 m!2978155))

(assert (=> b!2634235 m!2978147))

(assert (=> b!2634235 m!2978147))

(declare-fun m!2978157 () Bool)

(assert (=> b!2634235 m!2978157))

(assert (=> b!2634236 m!2978147))

(assert (=> b!2634236 m!2978149))

(assert (=> b!2634236 m!2978151))

(assert (=> b!2634236 m!2978147))

(assert (=> b!2634236 m!2978153))

(assert (=> b!2634236 m!2978153))

(assert (=> b!2634236 m!2978151))

(assert (=> b!2634236 m!2978155))

(declare-fun m!2978159 () Bool)

(assert (=> b!2634238 m!2978159))

(assert (=> b!2634238 m!2977983))

(declare-fun m!2978161 () Bool)

(assert (=> b!2634238 m!2978161))

(assert (=> b!2634238 m!2977983))

(assert (=> b!2634238 m!2978161))

(declare-fun m!2978163 () Bool)

(assert (=> b!2634238 m!2978163))

(assert (=> b!2634076 d!747455))

(declare-fun d!747457 () Bool)

(declare-fun dynLambda!13082 (Int Token!8750) Bool)

(assert (=> d!747457 (dynLambda!13082 lambda!98836 lt!927135)))

(declare-fun lt!927221 () Unit!44526)

(declare-fun choose!15630 (List!30608 Int Token!8750) Unit!44526)

(assert (=> d!747457 (= lt!927221 (choose!15630 lt!927132 lambda!98836 lt!927135))))

(declare-fun e!1662152 () Bool)

(assert (=> d!747457 e!1662152))

(declare-fun res!1109148 () Bool)

(assert (=> d!747457 (=> (not res!1109148) (not e!1662152))))

(declare-fun forall!6395 (List!30608 Int) Bool)

(assert (=> d!747457 (= res!1109148 (forall!6395 lt!927132 lambda!98836))))

(assert (=> d!747457 (= (forallContained!992 lt!927132 lambda!98836 lt!927135) lt!927221)))

(declare-fun b!2634241 () Bool)

(assert (=> b!2634241 (= e!1662152 (contains!5796 lt!927132 lt!927135))))

(assert (= (and d!747457 res!1109148) b!2634241))

(declare-fun b_lambda!79345 () Bool)

(assert (=> (not b_lambda!79345) (not d!747457)))

(declare-fun m!2978165 () Bool)

(assert (=> d!747457 m!2978165))

(declare-fun m!2978167 () Bool)

(assert (=> d!747457 m!2978167))

(declare-fun m!2978169 () Bool)

(assert (=> d!747457 m!2978169))

(assert (=> b!2634241 m!2977951))

(assert (=> b!2634076 d!747457))

(declare-fun bs!476002 () Bool)

(declare-fun d!747461 () Bool)

(assert (= bs!476002 (and d!747461 b!2634070)))

(declare-fun lambda!98849 () Int)

(assert (=> bs!476002 (= lambda!98849 lambda!98835)))

(declare-fun bs!476003 () Bool)

(assert (= bs!476003 (and d!747461 b!2634076)))

(assert (=> bs!476003 (not (= lambda!98849 lambda!98836))))

(declare-fun bs!476004 () Bool)

(declare-fun b!2634288 () Bool)

(assert (= bs!476004 (and b!2634288 b!2634070)))

(declare-fun lambda!98850 () Int)

(assert (=> bs!476004 (not (= lambda!98850 lambda!98835))))

(declare-fun bs!476005 () Bool)

(assert (= bs!476005 (and b!2634288 b!2634076)))

(assert (=> bs!476005 (= lambda!98850 lambda!98836)))

(declare-fun bs!476006 () Bool)

(assert (= bs!476006 (and b!2634288 d!747461)))

(assert (=> bs!476006 (not (= lambda!98850 lambda!98849))))

(declare-fun b!2634298 () Bool)

(declare-fun e!1662194 () Bool)

(assert (=> b!2634298 (= e!1662194 true)))

(declare-fun b!2634297 () Bool)

(declare-fun e!1662193 () Bool)

(assert (=> b!2634297 (= e!1662193 e!1662194)))

(declare-fun b!2634296 () Bool)

(declare-fun e!1662192 () Bool)

(assert (=> b!2634296 (= e!1662192 e!1662193)))

(assert (=> b!2634288 e!1662192))

(assert (= b!2634297 b!2634298))

(assert (= b!2634296 b!2634297))

(assert (= (and b!2634288 (is-Cons!30507 rules!1726)) b!2634296))

(assert (=> b!2634298 (< (dynLambda!13075 order!16549 (toValue!6558 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98850))))

(assert (=> b!2634298 (< (dynLambda!13077 order!16553 (toChars!6417 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98850))))

(assert (=> b!2634288 true))

(declare-fun e!1662190 () Bool)

(declare-fun b!2634285 () Bool)

(declare-fun lt!927265 () Option!6033)

(assert (=> b!2634285 (= e!1662190 (= (_1!17548 (v!32447 lt!927265)) (apply!7273 v!6381 (+ 1 from!862))))))

(declare-fun b!2634286 () Bool)

(declare-fun e!1662185 () BalanceConc!18658)

(declare-fun call!169496 () BalanceConc!18658)

(assert (=> b!2634286 (= e!1662185 call!169496)))

(declare-fun b!2634287 () Bool)

(declare-fun e!1662186 () BalanceConc!18658)

(assert (=> b!2634287 (= e!1662186 (BalanceConc!18659 Empty!9522))))

(declare-fun b!2634289 () Bool)

(declare-fun e!1662189 () BalanceConc!18658)

(declare-fun lt!927266 () BalanceConc!18658)

(assert (=> b!2634289 (= e!1662189 (++!7432 call!169496 lt!927266))))

(declare-fun b!2634290 () Bool)

(declare-fun e!1662188 () Bool)

(declare-fun call!169494 () Token!8750)

(assert (=> b!2634290 (= e!1662188 (not (= (_1!17548 (v!32447 lt!927265)) call!169494)))))

(declare-fun b!2634291 () Bool)

(declare-fun e!1662191 () BalanceConc!18658)

(declare-fun call!169498 () BalanceConc!18658)

(assert (=> b!2634291 (= e!1662191 call!169498)))

(declare-fun bm!169489 () Bool)

(declare-fun c!423558 () Bool)

(declare-fun c!423557 () Bool)

(assert (=> bm!169489 (= c!423558 c!423557)))

(declare-fun call!169495 () BalanceConc!18658)

(assert (=> bm!169489 (= call!169496 (++!7432 e!1662191 (ite c!423557 lt!927266 call!169495)))))

(declare-fun bm!169490 () Bool)

(declare-fun call!169497 () Token!8750)

(assert (=> bm!169490 (= call!169497 call!169494)))

(declare-fun bm!169491 () Bool)

(assert (=> bm!169491 (= call!169495 call!169498)))

(declare-fun b!2634292 () Bool)

(declare-fun c!423555 () Bool)

(assert (=> b!2634292 (= c!423555 e!1662188)))

(declare-fun res!1109172 () Bool)

(assert (=> b!2634292 (=> (not res!1109172) (not e!1662188))))

(assert (=> b!2634292 (= res!1109172 (is-Some!6032 lt!927265))))

(assert (=> b!2634292 (= e!1662185 e!1662189)))

(declare-fun bm!169492 () Bool)

(assert (=> bm!169492 (= call!169498 (charsOf!2927 (ite c!423557 call!169494 (ite c!423555 separatorToken!156 call!169497))))))

(declare-fun lt!927270 () BalanceConc!18658)

(declare-fun printWithSeparatorTokenWhenNeededList!657 (LexerInterface!4237 List!30607 List!30608 Token!8750) List!30606)

(assert (=> d!747461 (= (list!11480 lt!927270) (printWithSeparatorTokenWhenNeededList!657 thiss!14197 rules!1726 (dropList!943 v!6381 (+ 1 from!862)) separatorToken!156))))

(assert (=> d!747461 (= lt!927270 e!1662186)))

(declare-fun c!423556 () Bool)

(assert (=> d!747461 (= c!423556 (>= (+ 1 from!862) (size!23589 v!6381)))))

(declare-fun lt!927268 () Unit!44526)

(assert (=> d!747461 (= lt!927268 (lemmaContentSubsetPreservesForall!309 (list!11481 v!6381) (dropList!943 v!6381 (+ 1 from!862)) lambda!98849))))

(declare-fun e!1662187 () Bool)

(assert (=> d!747461 e!1662187))

(declare-fun res!1109171 () Bool)

(assert (=> d!747461 (=> (not res!1109171) (not e!1662187))))

(assert (=> d!747461 (= res!1109171 (>= (+ 1 from!862) 0))))

(assert (=> d!747461 (= (printWithSeparatorTokenWhenNeededRec!511 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!927270)))

(assert (=> b!2634288 (= e!1662186 e!1662185)))

(declare-fun lt!927264 () List!30608)

(assert (=> b!2634288 (= lt!927264 (list!11481 v!6381))))

(declare-fun lt!927260 () Unit!44526)

(assert (=> b!2634288 (= lt!927260 (lemmaDropApply!851 lt!927264 (+ 1 from!862)))))

(assert (=> b!2634288 (= (head!6041 (drop!1636 lt!927264 (+ 1 from!862))) (apply!7274 lt!927264 (+ 1 from!862)))))

(declare-fun lt!927267 () Unit!44526)

(assert (=> b!2634288 (= lt!927267 lt!927260)))

(declare-fun lt!927262 () List!30608)

(assert (=> b!2634288 (= lt!927262 (list!11481 v!6381))))

(declare-fun lt!927272 () Unit!44526)

(assert (=> b!2634288 (= lt!927272 (lemmaDropTail!825 lt!927262 (+ 1 from!862)))))

(assert (=> b!2634288 (= (tail!4279 (drop!1636 lt!927262 (+ 1 from!862))) (drop!1636 lt!927262 (+ 1 from!862 1)))))

(declare-fun lt!927259 () Unit!44526)

(assert (=> b!2634288 (= lt!927259 lt!927272)))

(declare-fun lt!927263 () Unit!44526)

(assert (=> b!2634288 (= lt!927263 (forallContained!992 (list!11481 v!6381) lambda!98850 (apply!7273 v!6381 (+ 1 from!862))))))

(assert (=> b!2634288 (= lt!927266 (printWithSeparatorTokenWhenNeededRec!511 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(assert (=> b!2634288 (= lt!927265 (maxPrefixZipperSequence!963 thiss!14197 rules!1726 (++!7432 (charsOf!2927 (apply!7273 v!6381 (+ 1 from!862))) lt!927266)))))

(declare-fun res!1109170 () Bool)

(assert (=> b!2634288 (= res!1109170 (is-Some!6032 lt!927265))))

(assert (=> b!2634288 (=> (not res!1109170) (not e!1662190))))

(assert (=> b!2634288 (= c!423557 e!1662190)))

(declare-fun bm!169493 () Bool)

(assert (=> bm!169493 (= call!169494 (apply!7273 v!6381 (+ 1 from!862)))))

(declare-fun b!2634293 () Bool)

(assert (=> b!2634293 (= e!1662189 (BalanceConc!18659 Empty!9522))))

(assert (=> b!2634293 (= (print!1638 thiss!14197 (singletonSeq!2057 call!169497)) (printTailRec!1124 thiss!14197 (singletonSeq!2057 call!169497) 0 (BalanceConc!18659 Empty!9522)))))

(declare-fun lt!927261 () Unit!44526)

(declare-fun Unit!44531 () Unit!44526)

(assert (=> b!2634293 (= lt!927261 Unit!44531)))

(declare-fun lt!927271 () Unit!44526)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!800 (LexerInterface!4237 List!30607 List!30606 List!30606) Unit!44526)

(assert (=> b!2634293 (= lt!927271 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!800 thiss!14197 rules!1726 (list!11480 call!169495) (list!11480 lt!927266)))))

(assert (=> b!2634293 false))

(declare-fun lt!927269 () Unit!44526)

(declare-fun Unit!44532 () Unit!44526)

(assert (=> b!2634293 (= lt!927269 Unit!44532)))

(declare-fun b!2634294 () Bool)

(assert (=> b!2634294 (= e!1662191 (charsOf!2927 call!169497))))

(declare-fun b!2634295 () Bool)

(assert (=> b!2634295 (= e!1662187 (<= (+ 1 from!862) (size!23589 v!6381)))))

(assert (= (and d!747461 res!1109171) b!2634295))

(assert (= (and d!747461 c!423556) b!2634287))

(assert (= (and d!747461 (not c!423556)) b!2634288))

(assert (= (and b!2634288 res!1109170) b!2634285))

(assert (= (and b!2634288 c!423557) b!2634286))

(assert (= (and b!2634288 (not c!423557)) b!2634292))

(assert (= (and b!2634292 res!1109172) b!2634290))

(assert (= (and b!2634292 c!423555) b!2634289))

(assert (= (and b!2634292 (not c!423555)) b!2634293))

(assert (= (or b!2634289 b!2634293) bm!169490))

(assert (= (or b!2634289 b!2634293) bm!169491))

(assert (= (or b!2634286 b!2634290 bm!169490) bm!169493))

(assert (= (or b!2634286 bm!169491) bm!169492))

(assert (= (or b!2634286 b!2634289) bm!169489))

(assert (= (and bm!169489 c!423558) b!2634291))

(assert (= (and bm!169489 (not c!423558)) b!2634294))

(declare-fun m!2978195 () Bool)

(assert (=> bm!169493 m!2978195))

(assert (=> b!2634295 m!2977949))

(declare-fun m!2978197 () Bool)

(assert (=> bm!169492 m!2978197))

(declare-fun m!2978199 () Bool)

(assert (=> b!2634293 m!2978199))

(declare-fun m!2978201 () Bool)

(assert (=> b!2634293 m!2978201))

(declare-fun m!2978203 () Bool)

(assert (=> b!2634293 m!2978203))

(assert (=> b!2634293 m!2978199))

(declare-fun m!2978205 () Bool)

(assert (=> b!2634293 m!2978205))

(declare-fun m!2978207 () Bool)

(assert (=> b!2634293 m!2978207))

(assert (=> b!2634293 m!2978203))

(declare-fun m!2978209 () Bool)

(assert (=> b!2634293 m!2978209))

(assert (=> b!2634293 m!2978199))

(assert (=> b!2634293 m!2978207))

(declare-fun m!2978211 () Bool)

(assert (=> bm!169489 m!2978211))

(declare-fun m!2978213 () Bool)

(assert (=> b!2634288 m!2978213))

(declare-fun m!2978215 () Bool)

(assert (=> b!2634288 m!2978215))

(declare-fun m!2978217 () Bool)

(assert (=> b!2634288 m!2978217))

(assert (=> b!2634288 m!2977979))

(declare-fun m!2978219 () Bool)

(assert (=> b!2634288 m!2978219))

(declare-fun m!2978221 () Bool)

(assert (=> b!2634288 m!2978221))

(declare-fun m!2978223 () Bool)

(assert (=> b!2634288 m!2978223))

(declare-fun m!2978225 () Bool)

(assert (=> b!2634288 m!2978225))

(assert (=> b!2634288 m!2978221))

(declare-fun m!2978227 () Bool)

(assert (=> b!2634288 m!2978227))

(assert (=> b!2634288 m!2977979))

(assert (=> b!2634288 m!2978195))

(declare-fun m!2978229 () Bool)

(assert (=> b!2634288 m!2978229))

(declare-fun m!2978231 () Bool)

(assert (=> b!2634288 m!2978231))

(declare-fun m!2978233 () Bool)

(assert (=> b!2634288 m!2978233))

(assert (=> b!2634288 m!2978213))

(declare-fun m!2978235 () Bool)

(assert (=> b!2634288 m!2978235))

(assert (=> b!2634288 m!2978195))

(assert (=> b!2634288 m!2978227))

(declare-fun m!2978237 () Bool)

(assert (=> b!2634288 m!2978237))

(assert (=> b!2634288 m!2978195))

(assert (=> b!2634288 m!2978233))

(declare-fun m!2978239 () Bool)

(assert (=> b!2634294 m!2978239))

(declare-fun m!2978241 () Bool)

(assert (=> d!747461 m!2978241))

(assert (=> d!747461 m!2977979))

(assert (=> d!747461 m!2978241))

(declare-fun m!2978243 () Bool)

(assert (=> d!747461 m!2978243))

(assert (=> d!747461 m!2977979))

(assert (=> d!747461 m!2978241))

(declare-fun m!2978245 () Bool)

(assert (=> d!747461 m!2978245))

(declare-fun m!2978247 () Bool)

(assert (=> d!747461 m!2978247))

(assert (=> d!747461 m!2977949))

(declare-fun m!2978249 () Bool)

(assert (=> b!2634289 m!2978249))

(assert (=> b!2634285 m!2978195))

(assert (=> b!2634076 d!747461))

(declare-fun d!747477 () Bool)

(declare-fun lt!927275 () Bool)

(declare-fun content!4310 (List!30608) (Set Token!8750))

(assert (=> d!747477 (= lt!927275 (set.member lt!927135 (content!4310 lt!927132)))))

(declare-fun e!1662200 () Bool)

(assert (=> d!747477 (= lt!927275 e!1662200)))

(declare-fun res!1109178 () Bool)

(assert (=> d!747477 (=> (not res!1109178) (not e!1662200))))

(assert (=> d!747477 (= res!1109178 (is-Cons!30508 lt!927132))))

(assert (=> d!747477 (= (contains!5796 lt!927132 lt!927135) lt!927275)))

(declare-fun b!2634303 () Bool)

(declare-fun e!1662199 () Bool)

(assert (=> b!2634303 (= e!1662200 e!1662199)))

(declare-fun res!1109177 () Bool)

(assert (=> b!2634303 (=> res!1109177 e!1662199)))

(assert (=> b!2634303 (= res!1109177 (= (h!35928 lt!927132) lt!927135))))

(declare-fun b!2634304 () Bool)

(assert (=> b!2634304 (= e!1662199 (contains!5796 (t!216673 lt!927132) lt!927135))))

(assert (= (and d!747477 res!1109178) b!2634303))

(assert (= (and b!2634303 (not res!1109177)) b!2634304))

(declare-fun m!2978251 () Bool)

(assert (=> d!747477 m!2978251))

(declare-fun m!2978253 () Bool)

(assert (=> d!747477 m!2978253))

(declare-fun m!2978255 () Bool)

(assert (=> b!2634304 m!2978255))

(assert (=> b!2634077 d!747477))

(declare-fun d!747479 () Bool)

(declare-fun res!1109181 () Bool)

(declare-fun e!1662203 () Bool)

(assert (=> d!747479 (=> (not res!1109181) (not e!1662203))))

(declare-fun rulesValid!1723 (LexerInterface!4237 List!30607) Bool)

(assert (=> d!747479 (= res!1109181 (rulesValid!1723 thiss!14197 rules!1726))))

(assert (=> d!747479 (= (rulesInvariant!3737 thiss!14197 rules!1726) e!1662203)))

(declare-fun b!2634307 () Bool)

(declare-datatypes ((List!30613 0))(
  ( (Nil!30513) (Cons!30513 (h!35933 String!34196) (t!216717 List!30613)) )
))
(declare-fun noDuplicateTag!1719 (LexerInterface!4237 List!30607 List!30613) Bool)

(assert (=> b!2634307 (= e!1662203 (noDuplicateTag!1719 thiss!14197 rules!1726 Nil!30513))))

(assert (= (and d!747479 res!1109181) b!2634307))

(declare-fun m!2978257 () Bool)

(assert (=> d!747479 m!2978257))

(declare-fun m!2978259 () Bool)

(assert (=> b!2634307 m!2978259))

(assert (=> b!2634088 d!747479))

(declare-fun d!747481 () Bool)

(declare-fun lt!927278 () Int)

(declare-fun size!23592 (List!30608) Int)

(assert (=> d!747481 (= lt!927278 (size!23592 (list!11481 v!6381)))))

(declare-fun size!23593 (Conc!9523) Int)

(assert (=> d!747481 (= lt!927278 (size!23593 (c!423527 v!6381)))))

(assert (=> d!747481 (= (size!23589 v!6381) lt!927278)))

(declare-fun bs!476007 () Bool)

(assert (= bs!476007 d!747481))

(assert (=> bs!476007 m!2977979))

(assert (=> bs!476007 m!2977979))

(declare-fun m!2978261 () Bool)

(assert (=> bs!476007 m!2978261))

(declare-fun m!2978263 () Bool)

(assert (=> bs!476007 m!2978263))

(assert (=> b!2634073 d!747481))

(declare-fun d!747483 () Bool)

(assert (=> d!747483 (forall!6395 (dropList!943 v!6381 from!862) lambda!98835)))

(declare-fun lt!927281 () Unit!44526)

(declare-fun choose!15631 (List!30608 List!30608 Int) Unit!44526)

(assert (=> d!747483 (= lt!927281 (choose!15631 lt!927132 (dropList!943 v!6381 from!862) lambda!98835))))

(assert (=> d!747483 (forall!6395 lt!927132 lambda!98835)))

(assert (=> d!747483 (= (lemmaContentSubsetPreservesForall!309 lt!927132 (dropList!943 v!6381 from!862) lambda!98835) lt!927281)))

(declare-fun bs!476008 () Bool)

(assert (= bs!476008 d!747483))

(assert (=> bs!476008 m!2977975))

(declare-fun m!2978265 () Bool)

(assert (=> bs!476008 m!2978265))

(assert (=> bs!476008 m!2977975))

(declare-fun m!2978267 () Bool)

(assert (=> bs!476008 m!2978267))

(declare-fun m!2978269 () Bool)

(assert (=> bs!476008 m!2978269))

(assert (=> b!2634084 d!747483))

(declare-fun d!747485 () Bool)

(declare-fun list!11485 (Conc!9523) List!30608)

(assert (=> d!747485 (= (dropList!943 v!6381 from!862) (drop!1636 (list!11485 (c!423527 v!6381)) from!862))))

(declare-fun bs!476009 () Bool)

(assert (= bs!476009 d!747485))

(declare-fun m!2978271 () Bool)

(assert (=> bs!476009 m!2978271))

(assert (=> bs!476009 m!2978271))

(declare-fun m!2978273 () Bool)

(assert (=> bs!476009 m!2978273))

(assert (=> b!2634084 d!747485))

(declare-fun d!747487 () Bool)

(assert (=> d!747487 (= (list!11481 v!6381) (list!11485 (c!423527 v!6381)))))

(declare-fun bs!476010 () Bool)

(assert (= bs!476010 d!747487))

(assert (=> bs!476010 m!2978271))

(assert (=> b!2634084 d!747487))

(declare-fun d!747489 () Bool)

(declare-fun res!1109186 () Bool)

(declare-fun e!1662208 () Bool)

(assert (=> d!747489 (=> res!1109186 e!1662208)))

(assert (=> d!747489 (= res!1109186 (not (is-Cons!30507 rules!1726)))))

(assert (=> d!747489 (= (sepAndNonSepRulesDisjointChars!1213 rules!1726 rules!1726) e!1662208)))

(declare-fun b!2634312 () Bool)

(declare-fun e!1662209 () Bool)

(assert (=> b!2634312 (= e!1662208 e!1662209)))

(declare-fun res!1109187 () Bool)

(assert (=> b!2634312 (=> (not res!1109187) (not e!1662209))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!524 (Rule!9080 List!30607) Bool)

(assert (=> b!2634312 (= res!1109187 (ruleDisjointCharsFromAllFromOtherType!524 (h!35927 rules!1726) rules!1726))))

(declare-fun b!2634313 () Bool)

(assert (=> b!2634313 (= e!1662209 (sepAndNonSepRulesDisjointChars!1213 rules!1726 (t!216672 rules!1726)))))

(assert (= (and d!747489 (not res!1109186)) b!2634312))

(assert (= (and b!2634312 res!1109187) b!2634313))

(declare-fun m!2978275 () Bool)

(assert (=> b!2634312 m!2978275))

(declare-fun m!2978277 () Bool)

(assert (=> b!2634313 m!2978277))

(assert (=> b!2634074 d!747489))

(declare-fun d!747491 () Bool)

(declare-fun lt!927316 () Bool)

(declare-fun e!1662267 () Bool)

(assert (=> d!747491 (= lt!927316 e!1662267)))

(declare-fun res!1109232 () Bool)

(assert (=> d!747491 (=> (not res!1109232) (not e!1662267))))

(declare-datatypes ((tuple2!30018 0))(
  ( (tuple2!30019 (_1!17551 BalanceConc!18660) (_2!17551 BalanceConc!18658)) )
))
(declare-fun lex!1900 (LexerInterface!4237 List!30607 BalanceConc!18658) tuple2!30018)

(assert (=> d!747491 (= res!1109232 (= (list!11481 (_1!17551 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 lt!927135))))) (list!11481 (singletonSeq!2057 lt!927135))))))

(declare-fun e!1662268 () Bool)

(assert (=> d!747491 (= lt!927316 e!1662268)))

(declare-fun res!1109233 () Bool)

(assert (=> d!747491 (=> (not res!1109233) (not e!1662268))))

(declare-fun lt!927317 () tuple2!30018)

(assert (=> d!747491 (= res!1109233 (= (size!23589 (_1!17551 lt!927317)) 1))))

(assert (=> d!747491 (= lt!927317 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 lt!927135))))))

(assert (=> d!747491 (not (isEmpty!17404 rules!1726))))

(assert (=> d!747491 (= (rulesProduceIndividualToken!1949 thiss!14197 rules!1726 lt!927135) lt!927316)))

(declare-fun b!2634401 () Bool)

(declare-fun res!1109231 () Bool)

(assert (=> b!2634401 (=> (not res!1109231) (not e!1662268))))

(assert (=> b!2634401 (= res!1109231 (= (apply!7273 (_1!17551 lt!927317) 0) lt!927135))))

(declare-fun b!2634402 () Bool)

(declare-fun isEmpty!17406 (BalanceConc!18658) Bool)

(assert (=> b!2634402 (= e!1662268 (isEmpty!17406 (_2!17551 lt!927317)))))

(declare-fun b!2634403 () Bool)

(assert (=> b!2634403 (= e!1662267 (isEmpty!17406 (_2!17551 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 lt!927135))))))))

(assert (= (and d!747491 res!1109233) b!2634401))

(assert (= (and b!2634401 res!1109231) b!2634402))

(assert (= (and d!747491 res!1109232) b!2634403))

(declare-fun m!2978379 () Bool)

(assert (=> d!747491 m!2978379))

(declare-fun m!2978381 () Bool)

(assert (=> d!747491 m!2978381))

(declare-fun m!2978383 () Bool)

(assert (=> d!747491 m!2978383))

(assert (=> d!747491 m!2977955))

(declare-fun m!2978385 () Bool)

(assert (=> d!747491 m!2978385))

(assert (=> d!747491 m!2977973))

(assert (=> d!747491 m!2977955))

(assert (=> d!747491 m!2978379))

(assert (=> d!747491 m!2977955))

(declare-fun m!2978387 () Bool)

(assert (=> d!747491 m!2978387))

(declare-fun m!2978389 () Bool)

(assert (=> b!2634401 m!2978389))

(declare-fun m!2978391 () Bool)

(assert (=> b!2634402 m!2978391))

(assert (=> b!2634403 m!2977955))

(assert (=> b!2634403 m!2977955))

(assert (=> b!2634403 m!2978379))

(assert (=> b!2634403 m!2978379))

(assert (=> b!2634403 m!2978381))

(declare-fun m!2978393 () Bool)

(assert (=> b!2634403 m!2978393))

(assert (=> b!2634081 d!747491))

(declare-fun d!747525 () Bool)

(declare-fun lt!927320 () Bool)

(assert (=> d!747525 (= lt!927320 (forall!6395 (list!11481 v!6381) lambda!98835))))

(declare-fun forall!6396 (Conc!9523 Int) Bool)

(assert (=> d!747525 (= lt!927320 (forall!6396 (c!423527 v!6381) lambda!98835))))

(assert (=> d!747525 (= (forall!6393 v!6381 lambda!98835) lt!927320)))

(declare-fun bs!476013 () Bool)

(assert (= bs!476013 d!747525))

(assert (=> bs!476013 m!2977979))

(assert (=> bs!476013 m!2977979))

(declare-fun m!2978395 () Bool)

(assert (=> bs!476013 m!2978395))

(declare-fun m!2978397 () Bool)

(assert (=> bs!476013 m!2978397))

(assert (=> b!2634070 d!747525))

(declare-fun d!747527 () Bool)

(declare-fun res!1109238 () Bool)

(declare-fun e!1662271 () Bool)

(assert (=> d!747527 (=> (not res!1109238) (not e!1662271))))

(declare-fun isEmpty!17407 (List!30606) Bool)

(assert (=> d!747527 (= res!1109238 (not (isEmpty!17407 (originalCharacters!5406 separatorToken!156))))))

(assert (=> d!747527 (= (inv!41379 separatorToken!156) e!1662271)))

(declare-fun b!2634408 () Bool)

(declare-fun res!1109239 () Bool)

(assert (=> b!2634408 (=> (not res!1109239) (not e!1662271))))

(assert (=> b!2634408 (= res!1109239 (= (originalCharacters!5406 separatorToken!156) (list!11480 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (value!149846 separatorToken!156)))))))

(declare-fun b!2634409 () Bool)

(declare-fun size!23594 (List!30606) Int)

(assert (=> b!2634409 (= e!1662271 (= (size!23588 separatorToken!156) (size!23594 (originalCharacters!5406 separatorToken!156))))))

(assert (= (and d!747527 res!1109238) b!2634408))

(assert (= (and b!2634408 res!1109239) b!2634409))

(declare-fun b_lambda!79351 () Bool)

(assert (=> (not b_lambda!79351) (not b!2634408)))

(declare-fun t!216701 () Bool)

(declare-fun tb!143759 () Bool)

(assert (=> (and b!2634071 (= (toChars!6417 (transformation!4640 (h!35927 rules!1726))) (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156)))) t!216701) tb!143759))

(declare-fun b!2634410 () Bool)

(declare-fun e!1662272 () Bool)

(declare-fun tp!834804 () Bool)

(assert (=> b!2634410 (= e!1662272 (and (inv!41386 (c!423525 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (value!149846 separatorToken!156)))) tp!834804))))

(declare-fun result!178666 () Bool)

(assert (=> tb!143759 (= result!178666 (and (inv!41387 (dynLambda!13081 (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (value!149846 separatorToken!156))) e!1662272))))

(assert (= tb!143759 b!2634410))

(declare-fun m!2978399 () Bool)

(assert (=> b!2634410 m!2978399))

(declare-fun m!2978401 () Bool)

(assert (=> tb!143759 m!2978401))

(assert (=> b!2634408 t!216701))

(declare-fun b_and!192955 () Bool)

(assert (= b_and!192943 (and (=> t!216701 result!178666) b_and!192955)))

(declare-fun t!216703 () Bool)

(declare-fun tb!143761 () Bool)

(assert (=> (and b!2634075 (= (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156)))) t!216703) tb!143761))

(declare-fun result!178668 () Bool)

(assert (= result!178668 result!178666))

(assert (=> b!2634408 t!216703))

(declare-fun b_and!192957 () Bool)

(assert (= b_and!192945 (and (=> t!216703 result!178668) b_and!192957)))

(declare-fun m!2978403 () Bool)

(assert (=> d!747527 m!2978403))

(declare-fun m!2978405 () Bool)

(assert (=> b!2634408 m!2978405))

(assert (=> b!2634408 m!2978405))

(declare-fun m!2978407 () Bool)

(assert (=> b!2634408 m!2978407))

(declare-fun m!2978409 () Bool)

(assert (=> b!2634409 m!2978409))

(assert (=> start!256360 d!747527))

(declare-fun d!747529 () Bool)

(declare-fun isBalanced!2881 (Conc!9523) Bool)

(assert (=> d!747529 (= (inv!41380 v!6381) (isBalanced!2881 (c!423527 v!6381)))))

(declare-fun bs!476014 () Bool)

(assert (= bs!476014 d!747529))

(declare-fun m!2978411 () Bool)

(assert (=> bs!476014 m!2978411))

(assert (=> start!256360 d!747529))

(declare-fun bs!476015 () Bool)

(declare-fun d!747531 () Bool)

(assert (= bs!476015 (and d!747531 b!2634070)))

(declare-fun lambda!98855 () Int)

(assert (=> bs!476015 (not (= lambda!98855 lambda!98835))))

(declare-fun bs!476016 () Bool)

(assert (= bs!476016 (and d!747531 b!2634076)))

(assert (=> bs!476016 (= lambda!98855 lambda!98836)))

(declare-fun bs!476017 () Bool)

(assert (= bs!476017 (and d!747531 d!747461)))

(assert (=> bs!476017 (not (= lambda!98855 lambda!98849))))

(declare-fun bs!476018 () Bool)

(assert (= bs!476018 (and d!747531 b!2634288)))

(assert (=> bs!476018 (= lambda!98855 lambda!98850)))

(declare-fun b!2634416 () Bool)

(declare-fun e!1662278 () Bool)

(assert (=> b!2634416 (= e!1662278 true)))

(declare-fun b!2634415 () Bool)

(declare-fun e!1662277 () Bool)

(assert (=> b!2634415 (= e!1662277 e!1662278)))

(declare-fun b!2634414 () Bool)

(declare-fun e!1662276 () Bool)

(assert (=> b!2634414 (= e!1662276 e!1662277)))

(assert (=> d!747531 e!1662276))

(assert (= b!2634415 b!2634416))

(assert (= b!2634414 b!2634415))

(assert (= (and d!747531 (is-Cons!30507 rules!1726)) b!2634414))

(assert (=> b!2634416 (< (dynLambda!13075 order!16549 (toValue!6558 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98855))))

(assert (=> b!2634416 (< (dynLambda!13077 order!16553 (toChars!6417 (transformation!4640 (h!35927 rules!1726)))) (dynLambda!13076 order!16551 lambda!98855))))

(assert (=> d!747531 true))

(declare-fun e!1662275 () Bool)

(assert (=> d!747531 e!1662275))

(declare-fun res!1109242 () Bool)

(assert (=> d!747531 (=> (not res!1109242) (not e!1662275))))

(declare-fun lt!927323 () Bool)

(assert (=> d!747531 (= res!1109242 (= lt!927323 (forall!6395 (list!11481 v!6381) lambda!98855)))))

(assert (=> d!747531 (= lt!927323 (forall!6393 v!6381 lambda!98855))))

(assert (=> d!747531 (not (isEmpty!17404 rules!1726))))

(assert (=> d!747531 (= (rulesProduceEachTokenIndividually!1057 thiss!14197 rules!1726 v!6381) lt!927323)))

(declare-fun b!2634413 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1469 (LexerInterface!4237 List!30607 List!30608) Bool)

(assert (=> b!2634413 (= e!1662275 (= lt!927323 (rulesProduceEachTokenIndividuallyList!1469 thiss!14197 rules!1726 (list!11481 v!6381))))))

(assert (= (and d!747531 res!1109242) b!2634413))

(assert (=> d!747531 m!2977979))

(assert (=> d!747531 m!2977979))

(declare-fun m!2978413 () Bool)

(assert (=> d!747531 m!2978413))

(declare-fun m!2978415 () Bool)

(assert (=> d!747531 m!2978415))

(assert (=> d!747531 m!2977973))

(assert (=> b!2634413 m!2977979))

(assert (=> b!2634413 m!2977979))

(declare-fun m!2978417 () Bool)

(assert (=> b!2634413 m!2978417))

(assert (=> b!2634082 d!747531))

(declare-fun d!747533 () Bool)

(assert (=> d!747533 (= (inv!41375 (tag!5134 (rule!7024 separatorToken!156))) (= (mod (str.len (value!149845 (tag!5134 (rule!7024 separatorToken!156)))) 2) 0))))

(assert (=> b!2634083 d!747533))

(declare-fun d!747535 () Bool)

(declare-fun res!1109245 () Bool)

(declare-fun e!1662281 () Bool)

(assert (=> d!747535 (=> (not res!1109245) (not e!1662281))))

(declare-fun semiInverseModEq!1917 (Int Int) Bool)

(assert (=> d!747535 (= res!1109245 (semiInverseModEq!1917 (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (toValue!6558 (transformation!4640 (rule!7024 separatorToken!156)))))))

(assert (=> d!747535 (= (inv!41378 (transformation!4640 (rule!7024 separatorToken!156))) e!1662281)))

(declare-fun b!2634419 () Bool)

(declare-fun equivClasses!1818 (Int Int) Bool)

(assert (=> b!2634419 (= e!1662281 (equivClasses!1818 (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))) (toValue!6558 (transformation!4640 (rule!7024 separatorToken!156)))))))

(assert (= (and d!747535 res!1109245) b!2634419))

(declare-fun m!2978419 () Bool)

(assert (=> d!747535 m!2978419))

(declare-fun m!2978421 () Bool)

(assert (=> b!2634419 m!2978421))

(assert (=> b!2634083 d!747535))

(declare-fun d!747537 () Bool)

(declare-fun c!423581 () Bool)

(assert (=> d!747537 (= c!423581 (is-Node!9523 (c!423527 v!6381)))))

(declare-fun e!1662288 () Bool)

(assert (=> d!747537 (= (inv!41381 (c!423527 v!6381)) e!1662288)))

(declare-fun b!2634428 () Bool)

(declare-fun inv!41388 (Conc!9523) Bool)

(assert (=> b!2634428 (= e!1662288 (inv!41388 (c!423527 v!6381)))))

(declare-fun b!2634429 () Bool)

(declare-fun e!1662289 () Bool)

(assert (=> b!2634429 (= e!1662288 e!1662289)))

(declare-fun res!1109250 () Bool)

(assert (=> b!2634429 (= res!1109250 (not (is-Leaf!14584 (c!423527 v!6381))))))

(assert (=> b!2634429 (=> res!1109250 e!1662289)))

(declare-fun b!2634430 () Bool)

(declare-fun inv!41389 (Conc!9523) Bool)

(assert (=> b!2634430 (= e!1662289 (inv!41389 (c!423527 v!6381)))))

(assert (= (and d!747537 c!423581) b!2634428))

(assert (= (and d!747537 (not c!423581)) b!2634429))

(assert (= (and b!2634429 (not res!1109250)) b!2634430))

(declare-fun m!2978423 () Bool)

(assert (=> b!2634428 m!2978423))

(declare-fun m!2978425 () Bool)

(assert (=> b!2634430 m!2978425))

(assert (=> b!2634089 d!747537))

(declare-fun d!747539 () Bool)

(declare-fun lt!927386 () BalanceConc!18658)

(declare-fun printListTailRec!506 (LexerInterface!4237 List!30608 List!30606) List!30606)

(assert (=> d!747539 (= (list!11480 lt!927386) (printListTailRec!506 thiss!14197 (dropList!943 lt!927140 0) (list!11480 (BalanceConc!18659 Empty!9522))))))

(declare-fun e!1662313 () BalanceConc!18658)

(assert (=> d!747539 (= lt!927386 e!1662313)))

(declare-fun c!423593 () Bool)

(assert (=> d!747539 (= c!423593 (>= 0 (size!23589 lt!927140)))))

(declare-fun e!1662314 () Bool)

(assert (=> d!747539 e!1662314))

(declare-fun res!1109260 () Bool)

(assert (=> d!747539 (=> (not res!1109260) (not e!1662314))))

(assert (=> d!747539 (= res!1109260 (>= 0 0))))

(assert (=> d!747539 (= (printTailRec!1124 thiss!14197 lt!927140 0 (BalanceConc!18659 Empty!9522)) lt!927386)))

(declare-fun b!2634465 () Bool)

(assert (=> b!2634465 (= e!1662314 (<= 0 (size!23589 lt!927140)))))

(declare-fun b!2634466 () Bool)

(assert (=> b!2634466 (= e!1662313 (BalanceConc!18659 Empty!9522))))

(declare-fun b!2634467 () Bool)

(assert (=> b!2634467 (= e!1662313 (printTailRec!1124 thiss!14197 lt!927140 (+ 0 1) (++!7432 (BalanceConc!18659 Empty!9522) (charsOf!2927 (apply!7273 lt!927140 0)))))))

(declare-fun lt!927380 () List!30608)

(assert (=> b!2634467 (= lt!927380 (list!11481 lt!927140))))

(declare-fun lt!927381 () Unit!44526)

(assert (=> b!2634467 (= lt!927381 (lemmaDropApply!851 lt!927380 0))))

(assert (=> b!2634467 (= (head!6041 (drop!1636 lt!927380 0)) (apply!7274 lt!927380 0))))

(declare-fun lt!927382 () Unit!44526)

(assert (=> b!2634467 (= lt!927382 lt!927381)))

(declare-fun lt!927385 () List!30608)

(assert (=> b!2634467 (= lt!927385 (list!11481 lt!927140))))

(declare-fun lt!927384 () Unit!44526)

(assert (=> b!2634467 (= lt!927384 (lemmaDropTail!825 lt!927385 0))))

(assert (=> b!2634467 (= (tail!4279 (drop!1636 lt!927385 0)) (drop!1636 lt!927385 (+ 0 1)))))

(declare-fun lt!927383 () Unit!44526)

(assert (=> b!2634467 (= lt!927383 lt!927384)))

(assert (= (and d!747539 res!1109260) b!2634465))

(assert (= (and d!747539 c!423593) b!2634466))

(assert (= (and d!747539 (not c!423593)) b!2634467))

(declare-fun m!2978483 () Bool)

(assert (=> d!747539 m!2978483))

(declare-fun m!2978485 () Bool)

(assert (=> d!747539 m!2978485))

(declare-fun m!2978487 () Bool)

(assert (=> d!747539 m!2978487))

(declare-fun m!2978489 () Bool)

(assert (=> d!747539 m!2978489))

(declare-fun m!2978491 () Bool)

(assert (=> d!747539 m!2978491))

(assert (=> d!747539 m!2978485))

(assert (=> d!747539 m!2978487))

(assert (=> b!2634465 m!2978491))

(declare-fun m!2978493 () Bool)

(assert (=> b!2634467 m!2978493))

(declare-fun m!2978495 () Bool)

(assert (=> b!2634467 m!2978495))

(declare-fun m!2978497 () Bool)

(assert (=> b!2634467 m!2978497))

(declare-fun m!2978499 () Bool)

(assert (=> b!2634467 m!2978499))

(declare-fun m!2978501 () Bool)

(assert (=> b!2634467 m!2978501))

(declare-fun m!2978503 () Bool)

(assert (=> b!2634467 m!2978503))

(assert (=> b!2634467 m!2978493))

(assert (=> b!2634467 m!2978495))

(declare-fun m!2978505 () Bool)

(assert (=> b!2634467 m!2978505))

(declare-fun m!2978507 () Bool)

(assert (=> b!2634467 m!2978507))

(declare-fun m!2978509 () Bool)

(assert (=> b!2634467 m!2978509))

(assert (=> b!2634467 m!2978497))

(declare-fun m!2978511 () Bool)

(assert (=> b!2634467 m!2978511))

(assert (=> b!2634467 m!2978503))

(declare-fun m!2978513 () Bool)

(assert (=> b!2634467 m!2978513))

(declare-fun m!2978515 () Bool)

(assert (=> b!2634467 m!2978515))

(assert (=> b!2634467 m!2978499))

(declare-fun m!2978517 () Bool)

(assert (=> b!2634467 m!2978517))

(assert (=> b!2634078 d!747539))

(declare-fun d!747543 () Bool)

(assert (=> d!747543 (= (list!11480 lt!927138) (list!11484 (c!423525 lt!927138)))))

(declare-fun bs!476024 () Bool)

(assert (= bs!476024 d!747543))

(declare-fun m!2978519 () Bool)

(assert (=> bs!476024 m!2978519))

(assert (=> b!2634078 d!747543))

(declare-fun d!747545 () Bool)

(declare-fun c!423596 () Bool)

(assert (=> d!747545 (= c!423596 (is-Cons!30508 (Cons!30508 lt!927135 Nil!30508)))))

(declare-fun e!1662317 () List!30606)

(assert (=> d!747545 (= (printList!1165 thiss!14197 (Cons!30508 lt!927135 Nil!30508)) e!1662317)))

(declare-fun b!2634472 () Bool)

(assert (=> b!2634472 (= e!1662317 (++!7435 (list!11480 (charsOf!2927 (h!35928 (Cons!30508 lt!927135 Nil!30508)))) (printList!1165 thiss!14197 (t!216673 (Cons!30508 lt!927135 Nil!30508)))))))

(declare-fun b!2634473 () Bool)

(assert (=> b!2634473 (= e!1662317 Nil!30506)))

(assert (= (and d!747545 c!423596) b!2634472))

(assert (= (and d!747545 (not c!423596)) b!2634473))

(declare-fun m!2978521 () Bool)

(assert (=> b!2634472 m!2978521))

(assert (=> b!2634472 m!2978521))

(declare-fun m!2978523 () Bool)

(assert (=> b!2634472 m!2978523))

(declare-fun m!2978525 () Bool)

(assert (=> b!2634472 m!2978525))

(assert (=> b!2634472 m!2978523))

(assert (=> b!2634472 m!2978525))

(declare-fun m!2978527 () Bool)

(assert (=> b!2634472 m!2978527))

(assert (=> b!2634078 d!747545))

(declare-fun d!747547 () Bool)

(declare-fun e!1662320 () Bool)

(assert (=> d!747547 e!1662320))

(declare-fun res!1109263 () Bool)

(assert (=> d!747547 (=> (not res!1109263) (not e!1662320))))

(declare-fun lt!927389 () BalanceConc!18660)

(assert (=> d!747547 (= res!1109263 (= (list!11481 lt!927389) (Cons!30508 lt!927135 Nil!30508)))))

(declare-fun singleton!911 (Token!8750) BalanceConc!18660)

(assert (=> d!747547 (= lt!927389 (singleton!911 lt!927135))))

(assert (=> d!747547 (= (singletonSeq!2057 lt!927135) lt!927389)))

(declare-fun b!2634476 () Bool)

(assert (=> b!2634476 (= e!1662320 (isBalanced!2881 (c!423527 lt!927389)))))

(assert (= (and d!747547 res!1109263) b!2634476))

(declare-fun m!2978529 () Bool)

(assert (=> d!747547 m!2978529))

(declare-fun m!2978531 () Bool)

(assert (=> d!747547 m!2978531))

(declare-fun m!2978533 () Bool)

(assert (=> b!2634476 m!2978533))

(assert (=> b!2634078 d!747547))

(declare-fun d!747549 () Bool)

(declare-fun lt!927392 () BalanceConc!18658)

(assert (=> d!747549 (= (list!11480 lt!927392) (printList!1165 thiss!14197 (list!11481 lt!927140)))))

(assert (=> d!747549 (= lt!927392 (printTailRec!1124 thiss!14197 lt!927140 0 (BalanceConc!18659 Empty!9522)))))

(assert (=> d!747549 (= (print!1638 thiss!14197 lt!927140) lt!927392)))

(declare-fun bs!476025 () Bool)

(assert (= bs!476025 d!747549))

(declare-fun m!2978535 () Bool)

(assert (=> bs!476025 m!2978535))

(assert (=> bs!476025 m!2978517))

(assert (=> bs!476025 m!2978517))

(declare-fun m!2978537 () Bool)

(assert (=> bs!476025 m!2978537))

(assert (=> bs!476025 m!2977963))

(assert (=> b!2634078 d!747549))

(declare-fun d!747551 () Bool)

(assert (=> d!747551 (= (isEmpty!17404 rules!1726) (is-Nil!30507 rules!1726))))

(assert (=> b!2634079 d!747551))

(declare-fun d!747553 () Bool)

(declare-fun e!1662335 () Bool)

(assert (=> d!747553 e!1662335))

(declare-fun res!1109266 () Bool)

(assert (=> d!747553 (=> (not res!1109266) (not e!1662335))))

(declare-fun lt!927395 () List!30608)

(assert (=> d!747553 (= res!1109266 (set.subset (content!4310 lt!927395) (content!4310 lt!927132)))))

(declare-fun e!1662331 () List!30608)

(assert (=> d!747553 (= lt!927395 e!1662331)))

(declare-fun c!423605 () Bool)

(assert (=> d!747553 (= c!423605 (is-Nil!30508 lt!927132))))

(assert (=> d!747553 (= (drop!1636 lt!927132 from!862) lt!927395)))

(declare-fun bm!169515 () Bool)

(declare-fun call!169520 () Int)

(assert (=> bm!169515 (= call!169520 (size!23592 lt!927132))))

(declare-fun b!2634495 () Bool)

(declare-fun e!1662332 () Int)

(declare-fun e!1662333 () Int)

(assert (=> b!2634495 (= e!1662332 e!1662333)))

(declare-fun c!423608 () Bool)

(assert (=> b!2634495 (= c!423608 (>= from!862 call!169520))))

(declare-fun b!2634496 () Bool)

(declare-fun e!1662334 () List!30608)

(assert (=> b!2634496 (= e!1662334 lt!927132)))

(declare-fun b!2634497 () Bool)

(assert (=> b!2634497 (= e!1662333 (- call!169520 from!862))))

(declare-fun b!2634498 () Bool)

(assert (=> b!2634498 (= e!1662335 (= (size!23592 lt!927395) e!1662332))))

(declare-fun c!423607 () Bool)

(assert (=> b!2634498 (= c!423607 (<= from!862 0))))

(declare-fun b!2634499 () Bool)

(assert (=> b!2634499 (= e!1662332 call!169520)))

(declare-fun b!2634500 () Bool)

(assert (=> b!2634500 (= e!1662334 (drop!1636 (t!216673 lt!927132) (- from!862 1)))))

(declare-fun b!2634501 () Bool)

(assert (=> b!2634501 (= e!1662331 Nil!30508)))

(declare-fun b!2634502 () Bool)

(assert (=> b!2634502 (= e!1662331 e!1662334)))

(declare-fun c!423606 () Bool)

(assert (=> b!2634502 (= c!423606 (<= from!862 0))))

(declare-fun b!2634503 () Bool)

(assert (=> b!2634503 (= e!1662333 0)))

(assert (= (and d!747553 c!423605) b!2634501))

(assert (= (and d!747553 (not c!423605)) b!2634502))

(assert (= (and b!2634502 c!423606) b!2634496))

(assert (= (and b!2634502 (not c!423606)) b!2634500))

(assert (= (and d!747553 res!1109266) b!2634498))

(assert (= (and b!2634498 c!423607) b!2634499))

(assert (= (and b!2634498 (not c!423607)) b!2634495))

(assert (= (and b!2634495 c!423608) b!2634503))

(assert (= (and b!2634495 (not c!423608)) b!2634497))

(assert (= (or b!2634499 b!2634495 b!2634497) bm!169515))

(declare-fun m!2978539 () Bool)

(assert (=> d!747553 m!2978539))

(assert (=> d!747553 m!2978251))

(declare-fun m!2978541 () Bool)

(assert (=> bm!169515 m!2978541))

(declare-fun m!2978543 () Bool)

(assert (=> b!2634498 m!2978543))

(declare-fun m!2978545 () Bool)

(assert (=> b!2634500 m!2978545))

(assert (=> b!2634069 d!747553))

(declare-fun d!747555 () Bool)

(assert (=> d!747555 (= (tail!4279 lt!927128) (t!216673 lt!927128))))

(assert (=> b!2634069 d!747555))

(declare-fun d!747557 () Bool)

(assert (=> d!747557 (= (head!6041 lt!927128) (h!35928 lt!927128))))

(assert (=> b!2634069 d!747557))

(declare-fun d!747559 () Bool)

(assert (=> d!747559 (= (tail!4279 (drop!1636 lt!927132 from!862)) (drop!1636 lt!927132 (+ from!862 1)))))

(declare-fun lt!927398 () Unit!44526)

(declare-fun choose!15632 (List!30608 Int) Unit!44526)

(assert (=> d!747559 (= lt!927398 (choose!15632 lt!927132 from!862))))

(declare-fun e!1662338 () Bool)

(assert (=> d!747559 e!1662338))

(declare-fun res!1109269 () Bool)

(assert (=> d!747559 (=> (not res!1109269) (not e!1662338))))

(assert (=> d!747559 (= res!1109269 (>= from!862 0))))

(assert (=> d!747559 (= (lemmaDropTail!825 lt!927132 from!862) lt!927398)))

(declare-fun b!2634506 () Bool)

(assert (=> b!2634506 (= e!1662338 (< from!862 (size!23592 lt!927132)))))

(assert (= (and d!747559 res!1109269) b!2634506))

(assert (=> d!747559 m!2978011))

(assert (=> d!747559 m!2978011))

(declare-fun m!2978547 () Bool)

(assert (=> d!747559 m!2978547))

(declare-fun m!2978549 () Bool)

(assert (=> d!747559 m!2978549))

(declare-fun m!2978551 () Bool)

(assert (=> d!747559 m!2978551))

(assert (=> b!2634506 m!2978541))

(assert (=> b!2634069 d!747559))

(declare-fun d!747561 () Bool)

(declare-fun lt!927401 () Bool)

(assert (=> d!747561 (= lt!927401 (contains!5796 (list!11481 v!6381) lt!927135))))

(declare-fun contains!5799 (Conc!9523 Token!8750) Bool)

(assert (=> d!747561 (= lt!927401 (contains!5799 (c!423527 v!6381) lt!927135))))

(assert (=> d!747561 (= (contains!5795 v!6381 lt!927135) lt!927401)))

(declare-fun bs!476026 () Bool)

(assert (= bs!476026 d!747561))

(assert (=> bs!476026 m!2977979))

(assert (=> bs!476026 m!2977979))

(declare-fun m!2978553 () Bool)

(assert (=> bs!476026 m!2978553))

(declare-fun m!2978555 () Bool)

(assert (=> bs!476026 m!2978555))

(assert (=> b!2634069 d!747561))

(declare-fun d!747563 () Bool)

(declare-fun lt!927404 () Token!8750)

(assert (=> d!747563 (= lt!927404 (apply!7274 (list!11481 v!6381) from!862))))

(declare-fun apply!7277 (Conc!9523 Int) Token!8750)

(assert (=> d!747563 (= lt!927404 (apply!7277 (c!423527 v!6381) from!862))))

(declare-fun e!1662341 () Bool)

(assert (=> d!747563 e!1662341))

(declare-fun res!1109272 () Bool)

(assert (=> d!747563 (=> (not res!1109272) (not e!1662341))))

(assert (=> d!747563 (= res!1109272 (<= 0 from!862))))

(assert (=> d!747563 (= (apply!7273 v!6381 from!862) lt!927404)))

(declare-fun b!2634509 () Bool)

(assert (=> b!2634509 (= e!1662341 (< from!862 (size!23589 v!6381)))))

(assert (= (and d!747563 res!1109272) b!2634509))

(assert (=> d!747563 m!2977979))

(assert (=> d!747563 m!2977979))

(declare-fun m!2978557 () Bool)

(assert (=> d!747563 m!2978557))

(declare-fun m!2978559 () Bool)

(assert (=> d!747563 m!2978559))

(assert (=> b!2634509 m!2977949))

(assert (=> b!2634069 d!747563))

(declare-fun d!747565 () Bool)

(declare-fun e!1662346 () Bool)

(assert (=> d!747565 e!1662346))

(declare-fun res!1109273 () Bool)

(assert (=> d!747565 (=> (not res!1109273) (not e!1662346))))

(declare-fun lt!927405 () List!30608)

(assert (=> d!747565 (= res!1109273 (set.subset (content!4310 lt!927405) (content!4310 lt!927132)))))

(declare-fun e!1662342 () List!30608)

(assert (=> d!747565 (= lt!927405 e!1662342)))

(declare-fun c!423609 () Bool)

(assert (=> d!747565 (= c!423609 (is-Nil!30508 lt!927132))))

(assert (=> d!747565 (= (drop!1636 lt!927132 (+ 1 from!862)) lt!927405)))

(declare-fun bm!169516 () Bool)

(declare-fun call!169521 () Int)

(assert (=> bm!169516 (= call!169521 (size!23592 lt!927132))))

(declare-fun b!2634510 () Bool)

(declare-fun e!1662343 () Int)

(declare-fun e!1662344 () Int)

(assert (=> b!2634510 (= e!1662343 e!1662344)))

(declare-fun c!423612 () Bool)

(assert (=> b!2634510 (= c!423612 (>= (+ 1 from!862) call!169521))))

(declare-fun b!2634511 () Bool)

(declare-fun e!1662345 () List!30608)

(assert (=> b!2634511 (= e!1662345 lt!927132)))

(declare-fun b!2634512 () Bool)

(assert (=> b!2634512 (= e!1662344 (- call!169521 (+ 1 from!862)))))

(declare-fun b!2634513 () Bool)

(assert (=> b!2634513 (= e!1662346 (= (size!23592 lt!927405) e!1662343))))

(declare-fun c!423611 () Bool)

(assert (=> b!2634513 (= c!423611 (<= (+ 1 from!862) 0))))

(declare-fun b!2634514 () Bool)

(assert (=> b!2634514 (= e!1662343 call!169521)))

(declare-fun b!2634515 () Bool)

(assert (=> b!2634515 (= e!1662345 (drop!1636 (t!216673 lt!927132) (- (+ 1 from!862) 1)))))

(declare-fun b!2634516 () Bool)

(assert (=> b!2634516 (= e!1662342 Nil!30508)))

(declare-fun b!2634517 () Bool)

(assert (=> b!2634517 (= e!1662342 e!1662345)))

(declare-fun c!423610 () Bool)

(assert (=> b!2634517 (= c!423610 (<= (+ 1 from!862) 0))))

(declare-fun b!2634518 () Bool)

(assert (=> b!2634518 (= e!1662344 0)))

(assert (= (and d!747565 c!423609) b!2634516))

(assert (= (and d!747565 (not c!423609)) b!2634517))

(assert (= (and b!2634517 c!423610) b!2634511))

(assert (= (and b!2634517 (not c!423610)) b!2634515))

(assert (= (and d!747565 res!1109273) b!2634513))

(assert (= (and b!2634513 c!423611) b!2634514))

(assert (= (and b!2634513 (not c!423611)) b!2634510))

(assert (= (and b!2634510 c!423612) b!2634518))

(assert (= (and b!2634510 (not c!423612)) b!2634512))

(assert (= (or b!2634514 b!2634510 b!2634512) bm!169516))

(declare-fun m!2978561 () Bool)

(assert (=> d!747565 m!2978561))

(assert (=> d!747565 m!2978251))

(assert (=> bm!169516 m!2978541))

(declare-fun m!2978563 () Bool)

(assert (=> b!2634513 m!2978563))

(declare-fun m!2978565 () Bool)

(assert (=> b!2634515 m!2978565))

(assert (=> b!2634069 d!747565))

(declare-fun d!747567 () Bool)

(declare-fun lt!927408 () Token!8750)

(assert (=> d!747567 (contains!5796 lt!927132 lt!927408)))

(declare-fun e!1662351 () Token!8750)

(assert (=> d!747567 (= lt!927408 e!1662351)))

(declare-fun c!423615 () Bool)

(assert (=> d!747567 (= c!423615 (= from!862 0))))

(declare-fun e!1662352 () Bool)

(assert (=> d!747567 e!1662352))

(declare-fun res!1109276 () Bool)

(assert (=> d!747567 (=> (not res!1109276) (not e!1662352))))

(assert (=> d!747567 (= res!1109276 (<= 0 from!862))))

(assert (=> d!747567 (= (apply!7274 lt!927132 from!862) lt!927408)))

(declare-fun b!2634525 () Bool)

(assert (=> b!2634525 (= e!1662352 (< from!862 (size!23592 lt!927132)))))

(declare-fun b!2634526 () Bool)

(assert (=> b!2634526 (= e!1662351 (head!6041 lt!927132))))

(declare-fun b!2634527 () Bool)

(assert (=> b!2634527 (= e!1662351 (apply!7274 (tail!4279 lt!927132) (- from!862 1)))))

(assert (= (and d!747567 res!1109276) b!2634525))

(assert (= (and d!747567 c!423615) b!2634526))

(assert (= (and d!747567 (not c!423615)) b!2634527))

(declare-fun m!2978567 () Bool)

(assert (=> d!747567 m!2978567))

(assert (=> b!2634525 m!2978541))

(declare-fun m!2978569 () Bool)

(assert (=> b!2634526 m!2978569))

(declare-fun m!2978571 () Bool)

(assert (=> b!2634527 m!2978571))

(assert (=> b!2634527 m!2978571))

(declare-fun m!2978573 () Bool)

(assert (=> b!2634527 m!2978573))

(assert (=> b!2634069 d!747567))

(declare-fun d!747569 () Bool)

(assert (=> d!747569 (= (head!6041 (drop!1636 lt!927132 from!862)) (apply!7274 lt!927132 from!862))))

(declare-fun lt!927411 () Unit!44526)

(declare-fun choose!15635 (List!30608 Int) Unit!44526)

(assert (=> d!747569 (= lt!927411 (choose!15635 lt!927132 from!862))))

(declare-fun e!1662355 () Bool)

(assert (=> d!747569 e!1662355))

(declare-fun res!1109279 () Bool)

(assert (=> d!747569 (=> (not res!1109279) (not e!1662355))))

(assert (=> d!747569 (= res!1109279 (>= from!862 0))))

(assert (=> d!747569 (= (lemmaDropApply!851 lt!927132 from!862) lt!927411)))

(declare-fun b!2634530 () Bool)

(assert (=> b!2634530 (= e!1662355 (< from!862 (size!23592 lt!927132)))))

(assert (= (and d!747569 res!1109279) b!2634530))

(assert (=> d!747569 m!2978011))

(assert (=> d!747569 m!2978011))

(declare-fun m!2978575 () Bool)

(assert (=> d!747569 m!2978575))

(assert (=> d!747569 m!2978013))

(declare-fun m!2978577 () Bool)

(assert (=> d!747569 m!2978577))

(assert (=> b!2634530 m!2978541))

(assert (=> b!2634069 d!747569))

(declare-fun d!747571 () Bool)

(assert (=> d!747571 (= (inv!41375 (tag!5134 (h!35927 rules!1726))) (= (mod (str.len (value!149845 (tag!5134 (h!35927 rules!1726)))) 2) 0))))

(assert (=> b!2634090 d!747571))

(declare-fun d!747573 () Bool)

(declare-fun res!1109280 () Bool)

(declare-fun e!1662356 () Bool)

(assert (=> d!747573 (=> (not res!1109280) (not e!1662356))))

(assert (=> d!747573 (= res!1109280 (semiInverseModEq!1917 (toChars!6417 (transformation!4640 (h!35927 rules!1726))) (toValue!6558 (transformation!4640 (h!35927 rules!1726)))))))

(assert (=> d!747573 (= (inv!41378 (transformation!4640 (h!35927 rules!1726))) e!1662356)))

(declare-fun b!2634531 () Bool)

(assert (=> b!2634531 (= e!1662356 (equivClasses!1818 (toChars!6417 (transformation!4640 (h!35927 rules!1726))) (toValue!6558 (transformation!4640 (h!35927 rules!1726)))))))

(assert (= (and d!747573 res!1109280) b!2634531))

(declare-fun m!2978579 () Bool)

(assert (=> d!747573 m!2978579))

(declare-fun m!2978581 () Bool)

(assert (=> b!2634531 m!2978581))

(assert (=> b!2634090 d!747573))

(declare-fun d!747575 () Bool)

(declare-fun lt!927412 () Bool)

(declare-fun e!1662357 () Bool)

(assert (=> d!747575 (= lt!927412 e!1662357)))

(declare-fun res!1109282 () Bool)

(assert (=> d!747575 (=> (not res!1109282) (not e!1662357))))

(assert (=> d!747575 (= res!1109282 (= (list!11481 (_1!17551 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 separatorToken!156))))) (list!11481 (singletonSeq!2057 separatorToken!156))))))

(declare-fun e!1662358 () Bool)

(assert (=> d!747575 (= lt!927412 e!1662358)))

(declare-fun res!1109283 () Bool)

(assert (=> d!747575 (=> (not res!1109283) (not e!1662358))))

(declare-fun lt!927413 () tuple2!30018)

(assert (=> d!747575 (= res!1109283 (= (size!23589 (_1!17551 lt!927413)) 1))))

(assert (=> d!747575 (= lt!927413 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 separatorToken!156))))))

(assert (=> d!747575 (not (isEmpty!17404 rules!1726))))

(assert (=> d!747575 (= (rulesProduceIndividualToken!1949 thiss!14197 rules!1726 separatorToken!156) lt!927412)))

(declare-fun b!2634532 () Bool)

(declare-fun res!1109281 () Bool)

(assert (=> b!2634532 (=> (not res!1109281) (not e!1662358))))

(assert (=> b!2634532 (= res!1109281 (= (apply!7273 (_1!17551 lt!927413) 0) separatorToken!156))))

(declare-fun b!2634533 () Bool)

(assert (=> b!2634533 (= e!1662358 (isEmpty!17406 (_2!17551 lt!927413)))))

(declare-fun b!2634534 () Bool)

(assert (=> b!2634534 (= e!1662357 (isEmpty!17406 (_2!17551 (lex!1900 thiss!14197 rules!1726 (print!1638 thiss!14197 (singletonSeq!2057 separatorToken!156))))))))

(assert (= (and d!747575 res!1109283) b!2634532))

(assert (= (and b!2634532 res!1109281) b!2634533))

(assert (= (and d!747575 res!1109282) b!2634534))

(declare-fun m!2978583 () Bool)

(assert (=> d!747575 m!2978583))

(declare-fun m!2978585 () Bool)

(assert (=> d!747575 m!2978585))

(declare-fun m!2978587 () Bool)

(assert (=> d!747575 m!2978587))

(declare-fun m!2978589 () Bool)

(assert (=> d!747575 m!2978589))

(declare-fun m!2978591 () Bool)

(assert (=> d!747575 m!2978591))

(assert (=> d!747575 m!2977973))

(assert (=> d!747575 m!2978589))

(assert (=> d!747575 m!2978583))

(assert (=> d!747575 m!2978589))

(declare-fun m!2978593 () Bool)

(assert (=> d!747575 m!2978593))

(declare-fun m!2978595 () Bool)

(assert (=> b!2634532 m!2978595))

(declare-fun m!2978597 () Bool)

(assert (=> b!2634533 m!2978597))

(assert (=> b!2634534 m!2978589))

(assert (=> b!2634534 m!2978589))

(assert (=> b!2634534 m!2978583))

(assert (=> b!2634534 m!2978583))

(assert (=> b!2634534 m!2978585))

(declare-fun m!2978599 () Bool)

(assert (=> b!2634534 m!2978599))

(assert (=> b!2634080 d!747575))

(declare-fun b!2634539 () Bool)

(declare-fun e!1662361 () Bool)

(declare-fun tp_is_empty!13763 () Bool)

(declare-fun tp!834807 () Bool)

(assert (=> b!2634539 (= e!1662361 (and tp_is_empty!13763 tp!834807))))

(assert (=> b!2634086 (= tp!834765 e!1662361)))

(assert (= (and b!2634086 (is-Cons!30506 (originalCharacters!5406 separatorToken!156))) b!2634539))

(declare-fun b!2634553 () Bool)

(declare-fun e!1662364 () Bool)

(declare-fun tp!834818 () Bool)

(declare-fun tp!834820 () Bool)

(assert (=> b!2634553 (= e!1662364 (and tp!834818 tp!834820))))

(declare-fun b!2634551 () Bool)

(declare-fun tp!834822 () Bool)

(declare-fun tp!834821 () Bool)

(assert (=> b!2634551 (= e!1662364 (and tp!834822 tp!834821))))

(declare-fun b!2634552 () Bool)

(declare-fun tp!834819 () Bool)

(assert (=> b!2634552 (= e!1662364 tp!834819)))

(declare-fun b!2634550 () Bool)

(assert (=> b!2634550 (= e!1662364 tp_is_empty!13763)))

(assert (=> b!2634083 (= tp!834763 e!1662364)))

(assert (= (and b!2634083 (is-ElementMatch!7784 (regex!4640 (rule!7024 separatorToken!156)))) b!2634550))

(assert (= (and b!2634083 (is-Concat!12647 (regex!4640 (rule!7024 separatorToken!156)))) b!2634551))

(assert (= (and b!2634083 (is-Star!7784 (regex!4640 (rule!7024 separatorToken!156)))) b!2634552))

(assert (= (and b!2634083 (is-Union!7784 (regex!4640 (rule!7024 separatorToken!156)))) b!2634553))

(declare-fun b!2634568 () Bool)

(declare-fun b_free!74277 () Bool)

(declare-fun b_next!74981 () Bool)

(assert (=> b!2634568 (= b_free!74277 (not b_next!74981))))

(declare-fun tp!834834 () Bool)

(declare-fun b_and!192959 () Bool)

(assert (=> b!2634568 (= tp!834834 b_and!192959)))

(declare-fun b_free!74279 () Bool)

(declare-fun b_next!74983 () Bool)

(assert (=> b!2634568 (= b_free!74279 (not b_next!74983))))

(declare-fun t!216714 () Bool)

(declare-fun tb!143763 () Bool)

(assert (=> (and b!2634568 (= (toChars!6417 (transformation!4640 (h!35927 (t!216672 rules!1726)))) (toChars!6417 (transformation!4640 (rule!7024 lt!927135)))) t!216714) tb!143763))

(declare-fun result!178676 () Bool)

(assert (= result!178676 result!178650))

(assert (=> d!747453 t!216714))

(declare-fun t!216716 () Bool)

(declare-fun tb!143765 () Bool)

(assert (=> (and b!2634568 (= (toChars!6417 (transformation!4640 (h!35927 (t!216672 rules!1726)))) (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156)))) t!216716) tb!143765))

(declare-fun result!178678 () Bool)

(assert (= result!178678 result!178666))

(assert (=> b!2634408 t!216716))

(declare-fun b_and!192961 () Bool)

(declare-fun tp!834831 () Bool)

(assert (=> b!2634568 (= tp!834831 (and (=> t!216714 result!178676) (=> t!216716 result!178678) b_and!192961))))

(declare-fun e!1662375 () Bool)

(assert (=> b!2634568 (= e!1662375 (and tp!834834 tp!834831))))

(declare-fun b!2634567 () Bool)

(declare-fun tp!834833 () Bool)

(declare-fun e!1662376 () Bool)

(assert (=> b!2634567 (= e!1662376 (and tp!834833 (inv!41375 (tag!5134 (h!35927 (t!216672 rules!1726)))) (inv!41378 (transformation!4640 (h!35927 (t!216672 rules!1726)))) e!1662375))))

(declare-fun b!2634566 () Bool)

(declare-fun e!1662378 () Bool)

(declare-fun tp!834832 () Bool)

(assert (=> b!2634566 (= e!1662378 (and e!1662376 tp!834832))))

(assert (=> b!2634072 (= tp!834769 e!1662378)))

(assert (= b!2634567 b!2634568))

(assert (= b!2634566 b!2634567))

(assert (= (and b!2634072 (is-Cons!30507 (t!216672 rules!1726))) b!2634566))

(declare-fun m!2978601 () Bool)

(assert (=> b!2634567 m!2978601))

(declare-fun m!2978603 () Bool)

(assert (=> b!2634567 m!2978603))

(declare-fun tp!834843 () Bool)

(declare-fun b!2634589 () Bool)

(declare-fun tp!834841 () Bool)

(declare-fun e!1662393 () Bool)

(assert (=> b!2634589 (= e!1662393 (and (inv!41381 (left!23569 (c!423527 v!6381))) tp!834843 (inv!41381 (right!23899 (c!423527 v!6381))) tp!834841))))

(declare-fun b!2634591 () Bool)

(declare-fun e!1662394 () Bool)

(declare-fun tp!834842 () Bool)

(assert (=> b!2634591 (= e!1662394 tp!834842)))

(declare-fun b!2634590 () Bool)

(declare-fun inv!41394 (IArray!19051) Bool)

(assert (=> b!2634590 (= e!1662393 (and (inv!41394 (xs!12527 (c!423527 v!6381))) e!1662394))))

(assert (=> b!2634089 (= tp!834766 (and (inv!41381 (c!423527 v!6381)) e!1662393))))

(assert (= (and b!2634089 (is-Node!9523 (c!423527 v!6381))) b!2634589))

(assert (= b!2634590 b!2634591))

(assert (= (and b!2634089 (is-Leaf!14584 (c!423527 v!6381))) b!2634590))

(declare-fun m!2978605 () Bool)

(assert (=> b!2634589 m!2978605))

(declare-fun m!2978607 () Bool)

(assert (=> b!2634589 m!2978607))

(declare-fun m!2978609 () Bool)

(assert (=> b!2634590 m!2978609))

(assert (=> b!2634089 m!2978019))

(declare-fun b!2634595 () Bool)

(declare-fun e!1662395 () Bool)

(declare-fun tp!834844 () Bool)

(declare-fun tp!834846 () Bool)

(assert (=> b!2634595 (= e!1662395 (and tp!834844 tp!834846))))

(declare-fun b!2634593 () Bool)

(declare-fun tp!834848 () Bool)

(declare-fun tp!834847 () Bool)

(assert (=> b!2634593 (= e!1662395 (and tp!834848 tp!834847))))

(declare-fun b!2634594 () Bool)

(declare-fun tp!834845 () Bool)

(assert (=> b!2634594 (= e!1662395 tp!834845)))

(declare-fun b!2634592 () Bool)

(assert (=> b!2634592 (= e!1662395 tp_is_empty!13763)))

(assert (=> b!2634090 (= tp!834762 e!1662395)))

(assert (= (and b!2634090 (is-ElementMatch!7784 (regex!4640 (h!35927 rules!1726)))) b!2634592))

(assert (= (and b!2634090 (is-Concat!12647 (regex!4640 (h!35927 rules!1726)))) b!2634593))

(assert (= (and b!2634090 (is-Star!7784 (regex!4640 (h!35927 rules!1726)))) b!2634594))

(assert (= (and b!2634090 (is-Union!7784 (regex!4640 (h!35927 rules!1726)))) b!2634595))

(declare-fun b!2634598 () Bool)

(declare-fun e!1662398 () Bool)

(assert (=> b!2634598 (= e!1662398 true)))

(declare-fun b!2634597 () Bool)

(declare-fun e!1662397 () Bool)

(assert (=> b!2634597 (= e!1662397 e!1662398)))

(declare-fun b!2634596 () Bool)

(declare-fun e!1662396 () Bool)

(assert (=> b!2634596 (= e!1662396 e!1662397)))

(assert (=> b!2634099 e!1662396))

(assert (= b!2634597 b!2634598))

(assert (= b!2634596 b!2634597))

(assert (= (and b!2634099 (is-Cons!30507 (t!216672 rules!1726))) b!2634596))

(assert (=> b!2634598 (< (dynLambda!13075 order!16549 (toValue!6558 (transformation!4640 (h!35927 (t!216672 rules!1726))))) (dynLambda!13076 order!16551 lambda!98836))))

(assert (=> b!2634598 (< (dynLambda!13077 order!16553 (toChars!6417 (transformation!4640 (h!35927 (t!216672 rules!1726))))) (dynLambda!13076 order!16551 lambda!98836))))

(declare-fun b_lambda!79353 () Bool)

(assert (= b_lambda!79345 (or b!2634076 b_lambda!79353)))

(declare-fun bs!476027 () Bool)

(declare-fun d!747577 () Bool)

(assert (= bs!476027 (and d!747577 b!2634076)))

(assert (=> bs!476027 (= (dynLambda!13082 lambda!98836 lt!927135) (rulesProduceIndividualToken!1949 thiss!14197 rules!1726 lt!927135))))

(assert (=> bs!476027 m!2977989))

(assert (=> d!747457 d!747577))

(declare-fun b_lambda!79355 () Bool)

(assert (= b_lambda!79351 (or (and b!2634071 b_free!74263 (= (toChars!6417 (transformation!4640 (h!35927 rules!1726))) (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))))) (and b!2634075 b_free!74267) (and b!2634568 b_free!74279 (= (toChars!6417 (transformation!4640 (h!35927 (t!216672 rules!1726)))) (toChars!6417 (transformation!4640 (rule!7024 separatorToken!156))))) b_lambda!79355)))

(push 1)

(assert (not b!2634595))

(assert (not b!2634591))

(assert (not bm!169516))

(assert b_and!192955)

(assert (not b!2634214))

(assert (not d!747529))

(assert (not d!747563))

(assert (not d!747527))

(assert (not b!2634403))

(assert (not tb!143747))

(assert b_and!192961)

(assert (not d!747477))

(assert (not b!2634500))

(assert (not b!2634307))

(assert (not d!747449))

(assert (not b!2634217))

(assert (not b_next!74967))

(assert (not d!747569))

(assert (not b!2634551))

(assert (not b!2634567))

(assert (not d!747573))

(assert (not d!747457))

(assert (not b_next!74983))

(assert (not tb!143759))

(assert (not b!2634590))

(assert (not b_next!74965))

(assert (not d!747539))

(assert (not d!747483))

(assert tp_is_empty!13763)

(assert (not b!2634509))

(assert (not b_lambda!79355))

(assert (not b!2634498))

(assert (not b!2634288))

(assert (not b!2634530))

(assert (not b!2634430))

(assert (not b!2634428))

(assert (not d!747479))

(assert (not b_next!74981))

(assert (not b!2634534))

(assert (not b!2634312))

(assert (not b!2634531))

(assert (not d!747547))

(assert (not d!747567))

(assert (not b_lambda!79353))

(assert (not b!2634218))

(assert (not b!2634472))

(assert (not b!2634525))

(assert (not d!747455))

(assert (not b!2634241))

(assert (not b!2634413))

(assert (not d!747549))

(assert (not b_next!74971))

(assert (not b!2634593))

(assert (not b!2634237))

(assert (not bs!476027))

(assert (not b!2634238))

(assert (not d!747481))

(assert (not bm!169492))

(assert (not d!747565))

(assert (not b!2634467))

(assert (not b_lambda!79343))

(assert (not bm!169478))

(assert (not b!2634219))

(assert (not d!747487))

(assert (not d!747575))

(assert (not b!2634304))

(assert (not b!2634526))

(assert (not b!2634408))

(assert (not d!747561))

(assert b_and!192959)

(assert (not b!2634235))

(assert (not b!2634313))

(assert (not b!2634414))

(assert (not b!2634221))

(assert (not b!2634293))

(assert (not b!2634532))

(assert (not d!747535))

(assert (not b!2634465))

(assert (not d!747491))

(assert (not d!747531))

(assert (not bm!169515))

(assert (not b!2634552))

(assert b_and!192957)

(assert (not d!747553))

(assert (not d!747453))

(assert (not b!2634513))

(assert (not b!2634226))

(assert (not b!2634589))

(assert (not d!747543))

(assert (not b!2634506))

(assert (not b!2634295))

(assert (not b!2634539))

(assert (not b!2634553))

(assert (not b!2634594))

(assert (not d!747559))

(assert (not b!2634193))

(assert (not b!2634527))

(assert (not b!2634216))

(assert (not d!747525))

(assert (not b!2634596))

(assert (not b!2634236))

(assert (not b!2634566))

(assert (not b_next!74969))

(assert (not d!747451))

(assert (not b!2634476))

(assert (not b!2634410))

(assert (not b!2634402))

(assert (not b!2634089))

(assert b_and!192931)

(assert (not bm!169489))

(assert (not b!2634285))

(assert (not b!2634419))

(assert (not b!2634294))

(assert (not b!2634197))

(assert (not b!2634296))

(assert (not b!2634515))

(assert (not b!2634533))

(assert (not bm!169493))

(assert (not b!2634401))

(assert b_and!192927)

(assert (not b!2634289))

(assert (not b!2634215))

(assert (not b!2634194))

(assert (not d!747485))

(assert (not b!2634409))

(assert (not d!747461))

(check-sat)

(pop 1)

(push 1)

(assert b_and!192955)

(assert b_and!192961)

(assert (not b_next!74967))

(assert (not b_next!74983))

(assert (not b_next!74965))

(assert (not b_next!74981))

(assert (not b_next!74971))

(assert b_and!192959)

(assert b_and!192957)

(assert (not b_next!74969))

(assert b_and!192931)

(assert b_and!192927)

(check-sat)

(pop 1)

