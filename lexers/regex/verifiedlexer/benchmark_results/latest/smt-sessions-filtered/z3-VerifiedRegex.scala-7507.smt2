; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396658 () Bool)

(assert start!396658)

(declare-fun b!4162669 () Bool)

(declare-fun b_free!120023 () Bool)

(declare-fun b_next!120727 () Bool)

(assert (=> b!4162669 (= b_free!120023 (not b_next!120727))))

(declare-fun tp!1270870 () Bool)

(declare-fun b_and!324409 () Bool)

(assert (=> b!4162669 (= tp!1270870 b_and!324409)))

(declare-fun b_free!120025 () Bool)

(declare-fun b_next!120729 () Bool)

(assert (=> b!4162669 (= b_free!120025 (not b_next!120729))))

(declare-fun tp!1270872 () Bool)

(declare-fun b_and!324411 () Bool)

(assert (=> b!4162669 (= tp!1270872 b_and!324411)))

(declare-fun b!4162673 () Bool)

(declare-fun b_free!120027 () Bool)

(declare-fun b_next!120731 () Bool)

(assert (=> b!4162673 (= b_free!120027 (not b_next!120731))))

(declare-fun tp!1270869 () Bool)

(declare-fun b_and!324413 () Bool)

(assert (=> b!4162673 (= tp!1270869 b_and!324413)))

(declare-fun b_free!120029 () Bool)

(declare-fun b_next!120733 () Bool)

(assert (=> b!4162673 (= b_free!120029 (not b_next!120733))))

(declare-fun tp!1270863 () Bool)

(declare-fun b_and!324415 () Bool)

(assert (=> b!4162673 (= tp!1270863 b_and!324415)))

(declare-fun b!4162684 () Bool)

(declare-fun b_free!120031 () Bool)

(declare-fun b_next!120735 () Bool)

(assert (=> b!4162684 (= b_free!120031 (not b_next!120735))))

(declare-fun tp!1270862 () Bool)

(declare-fun b_and!324417 () Bool)

(assert (=> b!4162684 (= tp!1270862 b_and!324417)))

(declare-fun b_free!120033 () Bool)

(declare-fun b_next!120737 () Bool)

(assert (=> b!4162684 (= b_free!120033 (not b_next!120737))))

(declare-fun tp!1270868 () Bool)

(declare-fun b_and!324419 () Bool)

(assert (=> b!4162684 (= tp!1270868 b_and!324419)))

(declare-fun b!4162668 () Bool)

(declare-fun e!2584085 () Bool)

(assert (=> b!4162668 (= e!2584085 true)))

(declare-fun lt!1483116 () Int)

(declare-datatypes ((C!25060 0))(
  ( (C!25061 (val!14692 Int)) )
))
(declare-datatypes ((List!45667 0))(
  ( (Nil!45543) (Cons!45543 (h!50963 C!25060) (t!343730 List!45667)) )
))
(declare-fun pBis!100 () List!45667)

(declare-fun size!33463 (List!45667) Int)

(assert (=> b!4162668 (= lt!1483116 (size!33463 pBis!100))))

(declare-fun e!2584078 () Bool)

(assert (=> b!4162669 (= e!2584078 (and tp!1270870 tp!1270872))))

(declare-fun b!4162670 () Bool)

(declare-fun e!2584082 () Bool)

(declare-fun e!2584091 () Bool)

(declare-fun tp!1270864 () Bool)

(assert (=> b!4162670 (= e!2584082 (and e!2584091 tp!1270864))))

(declare-fun b!4162671 () Bool)

(declare-fun res!1705282 () Bool)

(declare-fun e!2584090 () Bool)

(assert (=> b!4162671 (=> (not res!1705282) (not e!2584090))))

(declare-datatypes ((LexerInterface!7123 0))(
  ( (LexerInterfaceExt!7120 (__x!27741 Int)) (Lexer!7121) )
))
(declare-fun thiss!25889 () LexerInterface!7123)

(declare-datatypes ((List!45668 0))(
  ( (Nil!45544) (Cons!45544 (h!50964 (_ BitVec 16)) (t!343731 List!45668)) )
))
(declare-datatypes ((IArray!27487 0))(
  ( (IArray!27488 (innerList!13801 List!45667)) )
))
(declare-datatypes ((Conc!13741 0))(
  ( (Node!13741 (left!33960 Conc!13741) (right!34290 Conc!13741) (csize!27712 Int) (cheight!13952 Int)) (Leaf!21249 (xs!17047 IArray!27487) (csize!27713 Int)) (Empty!13741) )
))
(declare-datatypes ((BalanceConc!27076 0))(
  ( (BalanceConc!27077 (c!712014 Conc!13741)) )
))
(declare-datatypes ((TokenValue!7760 0))(
  ( (FloatLiteralValue!15520 (text!54765 List!45668)) (TokenValueExt!7759 (__x!27742 Int)) (Broken!38800 (value!235127 List!45668)) (Object!7883) (End!7760) (Def!7760) (Underscore!7760) (Match!7760) (Else!7760) (Error!7760) (Case!7760) (If!7760) (Extends!7760) (Abstract!7760) (Class!7760) (Val!7760) (DelimiterValue!15520 (del!7820 List!45668)) (KeywordValue!7766 (value!235128 List!45668)) (CommentValue!15520 (value!235129 List!45668)) (WhitespaceValue!15520 (value!235130 List!45668)) (IndentationValue!7760 (value!235131 List!45668)) (String!52665) (Int32!7760) (Broken!38801 (value!235132 List!45668)) (Boolean!7761) (Unit!64632) (OperatorValue!7763 (op!7820 List!45668)) (IdentifierValue!15520 (value!235133 List!45668)) (IdentifierValue!15521 (value!235134 List!45668)) (WhitespaceValue!15521 (value!235135 List!45668)) (True!15520) (False!15520) (Broken!38802 (value!235136 List!45668)) (Broken!38803 (value!235137 List!45668)) (True!15521) (RightBrace!7760) (RightBracket!7760) (Colon!7760) (Null!7760) (Comma!7760) (LeftBracket!7760) (False!15521) (LeftBrace!7760) (ImaginaryLiteralValue!7760 (text!54766 List!45668)) (StringLiteralValue!23280 (value!235138 List!45668)) (EOFValue!7760 (value!235139 List!45668)) (IdentValue!7760 (value!235140 List!45668)) (DelimiterValue!15521 (value!235141 List!45668)) (DedentValue!7760 (value!235142 List!45668)) (NewLineValue!7760 (value!235143 List!45668)) (IntegerValue!23280 (value!235144 (_ BitVec 32)) (text!54767 List!45668)) (IntegerValue!23281 (value!235145 Int) (text!54768 List!45668)) (Times!7760) (Or!7760) (Equal!7760) (Minus!7760) (Broken!38804 (value!235146 List!45668)) (And!7760) (Div!7760) (LessEqual!7760) (Mod!7760) (Concat!20195) (Not!7760) (Plus!7760) (SpaceValue!7760 (value!235147 List!45668)) (IntegerValue!23282 (value!235148 Int) (text!54769 List!45668)) (StringLiteralValue!23281 (text!54770 List!45668)) (FloatLiteralValue!15521 (text!54771 List!45668)) (BytesLiteralValue!7760 (value!235149 List!45668)) (CommentValue!15521 (value!235150 List!45668)) (StringLiteralValue!23282 (value!235151 List!45668)) (ErrorTokenValue!7760 (msg!7821 List!45668)) )
))
(declare-datatypes ((TokenValueInjection!14948 0))(
  ( (TokenValueInjection!14949 (toValue!10194 Int) (toChars!10053 Int)) )
))
(declare-datatypes ((Regex!12435 0))(
  ( (ElementMatch!12435 (c!712015 C!25060)) (Concat!20196 (regOne!25382 Regex!12435) (regTwo!25382 Regex!12435)) (EmptyExpr!12435) (Star!12435 (reg!12764 Regex!12435)) (EmptyLang!12435) (Union!12435 (regOne!25383 Regex!12435) (regTwo!25383 Regex!12435)) )
))
(declare-datatypes ((String!52666 0))(
  ( (String!52667 (value!235152 String)) )
))
(declare-datatypes ((Rule!14860 0))(
  ( (Rule!14861 (regex!7530 Regex!12435) (tag!8394 String!52666) (isSeparator!7530 Bool) (transformation!7530 TokenValueInjection!14948)) )
))
(declare-datatypes ((List!45669 0))(
  ( (Nil!45545) (Cons!45545 (h!50965 Rule!14860) (t!343732 List!45669)) )
))
(declare-fun rules!3820 () List!45669)

(declare-fun rulesInvariant!6336 (LexerInterface!7123 List!45669) Bool)

(assert (=> b!4162671 (= res!1705282 (rulesInvariant!6336 thiss!25889 rules!3820))))

(declare-fun e!2584089 () Bool)

(declare-fun tp!1270860 () Bool)

(declare-fun b!4162672 () Bool)

(declare-fun inv!60058 (String!52666) Bool)

(declare-fun inv!60060 (TokenValueInjection!14948) Bool)

(assert (=> b!4162672 (= e!2584091 (and tp!1270860 (inv!60058 (tag!8394 (h!50965 rules!3820))) (inv!60060 (transformation!7530 (h!50965 rules!3820))) e!2584089))))

(declare-fun e!2584077 () Bool)

(assert (=> b!4162673 (= e!2584077 (and tp!1270869 tp!1270863))))

(declare-fun b!4162674 () Bool)

(declare-fun res!1705275 () Bool)

(assert (=> b!4162674 (=> (not res!1705275) (not e!2584090))))

(declare-fun input!3316 () List!45667)

(declare-fun isPrefix!4387 (List!45667 List!45667) Bool)

(assert (=> b!4162674 (= res!1705275 (isPrefix!4387 pBis!100 input!3316))))

(declare-fun b!4162675 () Bool)

(declare-fun e!2584088 () Bool)

(assert (=> b!4162675 (= e!2584090 (not e!2584088))))

(declare-fun res!1705278 () Bool)

(assert (=> b!4162675 (=> res!1705278 e!2584088)))

(declare-fun r!4097 () Rule!14860)

(declare-fun p!2942 () List!45667)

(declare-fun matchR!6180 (Regex!12435 List!45667) Bool)

(assert (=> b!4162675 (= res!1705278 (not (matchR!6180 (regex!7530 r!4097) p!2942)))))

(declare-fun ruleValid!3254 (LexerInterface!7123 Rule!14860) Bool)

(assert (=> b!4162675 (ruleValid!3254 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64633 0))(
  ( (Unit!64634) )
))
(declare-fun lt!1483117 () Unit!64633)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2294 (LexerInterface!7123 Rule!14860 List!45669) Unit!64633)

(assert (=> b!4162675 (= lt!1483117 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2294 thiss!25889 r!4097 rules!3820))))

(declare-fun res!1705279 () Bool)

(assert (=> start!396658 (=> (not res!1705279) (not e!2584090))))

(get-info :version)

(assert (=> start!396658 (= res!1705279 ((_ is Lexer!7121) thiss!25889))))

(assert (=> start!396658 e!2584090))

(declare-fun e!2584084 () Bool)

(assert (=> start!396658 e!2584084))

(assert (=> start!396658 e!2584082))

(declare-fun e!2584092 () Bool)

(assert (=> start!396658 e!2584092))

(declare-fun e!2584079 () Bool)

(assert (=> start!396658 e!2584079))

(assert (=> start!396658 true))

(declare-fun e!2584083 () Bool)

(assert (=> start!396658 e!2584083))

(declare-fun e!2584086 () Bool)

(assert (=> start!396658 e!2584086))

(declare-fun b!4162676 () Bool)

(declare-fun tp_is_empty!21833 () Bool)

(declare-fun tp!1270865 () Bool)

(assert (=> b!4162676 (= e!2584092 (and tp_is_empty!21833 tp!1270865))))

(declare-fun b!4162677 () Bool)

(assert (=> b!4162677 (= e!2584088 e!2584085)))

(declare-fun res!1705276 () Bool)

(assert (=> b!4162677 (=> res!1705276 e!2584085)))

(declare-fun lt!1483120 () BalanceConc!27076)

(declare-datatypes ((Token!13806 0))(
  ( (Token!13807 (value!235153 TokenValue!7760) (rule!10580 Rule!14860) (size!33464 Int) (originalCharacters!7934 List!45667)) )
))
(declare-datatypes ((tuple2!43482 0))(
  ( (tuple2!43483 (_1!24875 Token!13806) (_2!24875 List!45667)) )
))
(declare-datatypes ((Option!9744 0))(
  ( (None!9743) (Some!9743 (v!40517 tuple2!43482)) )
))
(declare-fun maxPrefixOneRule!3152 (LexerInterface!7123 Rule!14860 List!45667) Option!9744)

(declare-fun apply!10511 (TokenValueInjection!14948 BalanceConc!27076) TokenValue!7760)

(declare-fun getSuffix!2700 (List!45667 List!45667) List!45667)

(assert (=> b!4162677 (= res!1705276 (not (= (maxPrefixOneRule!3152 thiss!25889 r!4097 input!3316) (Some!9743 (tuple2!43483 (Token!13807 (apply!10511 (transformation!7530 r!4097) lt!1483120) r!4097 (size!33463 p!2942) p!2942) (getSuffix!2700 input!3316 p!2942))))))))

(assert (=> b!4162677 (isPrefix!4387 input!3316 input!3316)))

(declare-fun lt!1483119 () Unit!64633)

(declare-fun lemmaIsPrefixRefl!2826 (List!45667 List!45667) Unit!64633)

(assert (=> b!4162677 (= lt!1483119 (lemmaIsPrefixRefl!2826 input!3316 input!3316))))

(declare-fun lt!1483118 () Unit!64633)

(declare-fun lemmaSemiInverse!2304 (TokenValueInjection!14948 BalanceConc!27076) Unit!64633)

(assert (=> b!4162677 (= lt!1483118 (lemmaSemiInverse!2304 (transformation!7530 r!4097) lt!1483120))))

(declare-fun seqFromList!5563 (List!45667) BalanceConc!27076)

(assert (=> b!4162677 (= lt!1483120 (seqFromList!5563 p!2942))))

(declare-fun b!4162678 () Bool)

(declare-fun tp!1270861 () Bool)

(assert (=> b!4162678 (= e!2584086 (and tp!1270861 (inv!60058 (tag!8394 r!4097)) (inv!60060 (transformation!7530 r!4097)) e!2584077))))

(declare-fun b!4162679 () Bool)

(declare-fun res!1705277 () Bool)

(assert (=> b!4162679 (=> (not res!1705277) (not e!2584090))))

(declare-fun contains!9323 (List!45669 Rule!14860) Bool)

(assert (=> b!4162679 (= res!1705277 (contains!9323 rules!3820 r!4097))))

(declare-fun b!4162680 () Bool)

(declare-fun tp!1270867 () Bool)

(assert (=> b!4162680 (= e!2584079 (and tp_is_empty!21833 tp!1270867))))

(declare-fun b!4162681 () Bool)

(declare-fun tp!1270866 () Bool)

(assert (=> b!4162681 (= e!2584084 (and tp_is_empty!21833 tp!1270866))))

(declare-fun b!4162682 () Bool)

(declare-fun res!1705280 () Bool)

(assert (=> b!4162682 (=> (not res!1705280) (not e!2584090))))

(declare-fun isEmpty!26963 (List!45669) Bool)

(assert (=> b!4162682 (= res!1705280 (not (isEmpty!26963 rules!3820)))))

(declare-fun b!4162683 () Bool)

(declare-fun res!1705274 () Bool)

(assert (=> b!4162683 (=> (not res!1705274) (not e!2584090))))

(declare-fun rBis!161 () Rule!14860)

(assert (=> b!4162683 (= res!1705274 (contains!9323 rules!3820 rBis!161))))

(assert (=> b!4162684 (= e!2584089 (and tp!1270862 tp!1270868))))

(declare-fun b!4162685 () Bool)

(declare-fun res!1705281 () Bool)

(assert (=> b!4162685 (=> (not res!1705281) (not e!2584090))))

(assert (=> b!4162685 (= res!1705281 (isPrefix!4387 p!2942 input!3316))))

(declare-fun tp!1270871 () Bool)

(declare-fun b!4162686 () Bool)

(assert (=> b!4162686 (= e!2584083 (and tp!1270871 (inv!60058 (tag!8394 rBis!161)) (inv!60060 (transformation!7530 rBis!161)) e!2584078))))

(assert (= (and start!396658 res!1705279) b!4162685))

(assert (= (and b!4162685 res!1705281) b!4162674))

(assert (= (and b!4162674 res!1705275) b!4162682))

(assert (= (and b!4162682 res!1705280) b!4162671))

(assert (= (and b!4162671 res!1705282) b!4162679))

(assert (= (and b!4162679 res!1705277) b!4162683))

(assert (= (and b!4162683 res!1705274) b!4162675))

(assert (= (and b!4162675 (not res!1705278)) b!4162677))

(assert (= (and b!4162677 (not res!1705276)) b!4162668))

(assert (= (and start!396658 ((_ is Cons!45543) pBis!100)) b!4162681))

(assert (= b!4162672 b!4162684))

(assert (= b!4162670 b!4162672))

(assert (= (and start!396658 ((_ is Cons!45545) rules!3820)) b!4162670))

(assert (= (and start!396658 ((_ is Cons!45543) p!2942)) b!4162676))

(assert (= (and start!396658 ((_ is Cons!45543) input!3316)) b!4162680))

(assert (= b!4162686 b!4162669))

(assert (= start!396658 b!4162686))

(assert (= b!4162678 b!4162673))

(assert (= start!396658 b!4162678))

(declare-fun m!4755167 () Bool)

(assert (=> b!4162677 m!4755167))

(declare-fun m!4755169 () Bool)

(assert (=> b!4162677 m!4755169))

(declare-fun m!4755171 () Bool)

(assert (=> b!4162677 m!4755171))

(declare-fun m!4755173 () Bool)

(assert (=> b!4162677 m!4755173))

(declare-fun m!4755175 () Bool)

(assert (=> b!4162677 m!4755175))

(declare-fun m!4755177 () Bool)

(assert (=> b!4162677 m!4755177))

(declare-fun m!4755179 () Bool)

(assert (=> b!4162677 m!4755179))

(declare-fun m!4755181 () Bool)

(assert (=> b!4162677 m!4755181))

(declare-fun m!4755183 () Bool)

(assert (=> b!4162668 m!4755183))

(declare-fun m!4755185 () Bool)

(assert (=> b!4162678 m!4755185))

(declare-fun m!4755187 () Bool)

(assert (=> b!4162678 m!4755187))

(declare-fun m!4755189 () Bool)

(assert (=> b!4162679 m!4755189))

(declare-fun m!4755191 () Bool)

(assert (=> b!4162675 m!4755191))

(declare-fun m!4755193 () Bool)

(assert (=> b!4162675 m!4755193))

(declare-fun m!4755195 () Bool)

(assert (=> b!4162675 m!4755195))

(declare-fun m!4755197 () Bool)

(assert (=> b!4162672 m!4755197))

(declare-fun m!4755199 () Bool)

(assert (=> b!4162672 m!4755199))

(declare-fun m!4755201 () Bool)

(assert (=> b!4162674 m!4755201))

(declare-fun m!4755203 () Bool)

(assert (=> b!4162671 m!4755203))

(declare-fun m!4755205 () Bool)

(assert (=> b!4162686 m!4755205))

(declare-fun m!4755207 () Bool)

(assert (=> b!4162686 m!4755207))

(declare-fun m!4755209 () Bool)

(assert (=> b!4162683 m!4755209))

(declare-fun m!4755211 () Bool)

(assert (=> b!4162682 m!4755211))

(declare-fun m!4755213 () Bool)

(assert (=> b!4162685 m!4755213))

(check-sat (not b!4162685) (not b_next!120735) b_and!324411 (not b!4162680) b_and!324417 (not b!4162681) (not b!4162672) tp_is_empty!21833 b_and!324415 (not b!4162679) (not b!4162670) (not b_next!120729) (not b_next!120737) (not b_next!120731) (not b!4162683) (not b!4162676) (not b!4162682) b_and!324413 b_and!324419 (not b!4162671) b_and!324409 (not b!4162674) (not b_next!120733) (not b!4162678) (not b_next!120727) (not b!4162675) (not b!4162686) (not b!4162668) (not b!4162677))
(check-sat (not b_next!120735) b_and!324411 b_and!324417 b_and!324415 b_and!324409 (not b_next!120733) (not b_next!120727) (not b_next!120729) (not b_next!120737) (not b_next!120731) b_and!324413 b_and!324419)
