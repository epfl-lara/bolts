; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177898 () Bool)

(assert start!177898)

(declare-fun b!1785755 () Bool)

(declare-fun b_free!49623 () Bool)

(declare-fun b_next!50327 () Bool)

(assert (=> b!1785755 (= b_free!49623 (not b_next!50327))))

(declare-fun tp!505173 () Bool)

(declare-fun b_and!137383 () Bool)

(assert (=> b!1785755 (= tp!505173 b_and!137383)))

(declare-fun b_free!49625 () Bool)

(declare-fun b_next!50329 () Bool)

(assert (=> b!1785755 (= b_free!49625 (not b_next!50329))))

(declare-fun tp!505170 () Bool)

(declare-fun b_and!137385 () Bool)

(assert (=> b!1785755 (= tp!505170 b_and!137385)))

(declare-fun b!1785749 () Bool)

(declare-fun b_free!49627 () Bool)

(declare-fun b_next!50331 () Bool)

(assert (=> b!1785749 (= b_free!49627 (not b_next!50331))))

(declare-fun tp!505167 () Bool)

(declare-fun b_and!137387 () Bool)

(assert (=> b!1785749 (= tp!505167 b_and!137387)))

(declare-fun b_free!49629 () Bool)

(declare-fun b_next!50333 () Bool)

(assert (=> b!1785749 (= b_free!49629 (not b_next!50333))))

(declare-fun tp!505172 () Bool)

(declare-fun b_and!137389 () Bool)

(assert (=> b!1785749 (= tp!505172 b_and!137389)))

(declare-fun b!1785770 () Bool)

(declare-fun b_free!49631 () Bool)

(declare-fun b_next!50335 () Bool)

(assert (=> b!1785770 (= b_free!49631 (not b_next!50335))))

(declare-fun tp!505178 () Bool)

(declare-fun b_and!137391 () Bool)

(assert (=> b!1785770 (= tp!505178 b_and!137391)))

(declare-fun b_free!49633 () Bool)

(declare-fun b_next!50337 () Bool)

(assert (=> b!1785770 (= b_free!49633 (not b_next!50337))))

(declare-fun tp!505174 () Bool)

(declare-fun b_and!137393 () Bool)

(assert (=> b!1785770 (= tp!505174 b_and!137393)))

(declare-fun b!1785794 () Bool)

(declare-fun e!1142919 () Bool)

(assert (=> b!1785794 (= e!1142919 true)))

(declare-fun b!1785793 () Bool)

(declare-fun e!1142918 () Bool)

(assert (=> b!1785793 (= e!1142918 e!1142919)))

(declare-fun b!1785792 () Bool)

(declare-fun e!1142917 () Bool)

(assert (=> b!1785792 (= e!1142917 e!1142918)))

(declare-fun b!1785769 () Bool)

(assert (=> b!1785769 e!1142917))

(assert (= b!1785793 b!1785794))

(assert (= b!1785792 b!1785793))

(assert (= b!1785769 b!1785792))

(declare-datatypes ((List!19755 0))(
  ( (Nil!19685) (Cons!19685 (h!25086 (_ BitVec 16)) (t!167090 List!19755)) )
))
(declare-datatypes ((TokenValue!3619 0))(
  ( (FloatLiteralValue!7238 (text!25778 List!19755)) (TokenValueExt!3618 (__x!12540 Int)) (Broken!18095 (value!110223 List!19755)) (Object!3688) (End!3619) (Def!3619) (Underscore!3619) (Match!3619) (Else!3619) (Error!3619) (Case!3619) (If!3619) (Extends!3619) (Abstract!3619) (Class!3619) (Val!3619) (DelimiterValue!7238 (del!3679 List!19755)) (KeywordValue!3625 (value!110224 List!19755)) (CommentValue!7238 (value!110225 List!19755)) (WhitespaceValue!7238 (value!110226 List!19755)) (IndentationValue!3619 (value!110227 List!19755)) (String!22426) (Int32!3619) (Broken!18096 (value!110228 List!19755)) (Boolean!3620) (Unit!34040) (OperatorValue!3622 (op!3679 List!19755)) (IdentifierValue!7238 (value!110229 List!19755)) (IdentifierValue!7239 (value!110230 List!19755)) (WhitespaceValue!7239 (value!110231 List!19755)) (True!7238) (False!7238) (Broken!18097 (value!110232 List!19755)) (Broken!18098 (value!110233 List!19755)) (True!7239) (RightBrace!3619) (RightBracket!3619) (Colon!3619) (Null!3619) (Comma!3619) (LeftBracket!3619) (False!7239) (LeftBrace!3619) (ImaginaryLiteralValue!3619 (text!25779 List!19755)) (StringLiteralValue!10857 (value!110234 List!19755)) (EOFValue!3619 (value!110235 List!19755)) (IdentValue!3619 (value!110236 List!19755)) (DelimiterValue!7239 (value!110237 List!19755)) (DedentValue!3619 (value!110238 List!19755)) (NewLineValue!3619 (value!110239 List!19755)) (IntegerValue!10857 (value!110240 (_ BitVec 32)) (text!25780 List!19755)) (IntegerValue!10858 (value!110241 Int) (text!25781 List!19755)) (Times!3619) (Or!3619) (Equal!3619) (Minus!3619) (Broken!18099 (value!110242 List!19755)) (And!3619) (Div!3619) (LessEqual!3619) (Mod!3619) (Concat!8476) (Not!3619) (Plus!3619) (SpaceValue!3619 (value!110243 List!19755)) (IntegerValue!10859 (value!110244 Int) (text!25782 List!19755)) (StringLiteralValue!10858 (text!25783 List!19755)) (FloatLiteralValue!7239 (text!25784 List!19755)) (BytesLiteralValue!3619 (value!110245 List!19755)) (CommentValue!7239 (value!110246 List!19755)) (StringLiteralValue!10859 (value!110247 List!19755)) (ErrorTokenValue!3619 (msg!3680 List!19755)) )
))
(declare-datatypes ((C!9888 0))(
  ( (C!9889 (val!5540 Int)) )
))
(declare-datatypes ((List!19756 0))(
  ( (Nil!19686) (Cons!19686 (h!25087 C!9888) (t!167091 List!19756)) )
))
(declare-datatypes ((String!22427 0))(
  ( (String!22428 (value!110248 String)) )
))
(declare-datatypes ((Regex!4857 0))(
  ( (ElementMatch!4857 (c!290408 C!9888)) (Concat!8477 (regOne!10226 Regex!4857) (regTwo!10226 Regex!4857)) (EmptyExpr!4857) (Star!4857 (reg!5186 Regex!4857)) (EmptyLang!4857) (Union!4857 (regOne!10227 Regex!4857) (regTwo!10227 Regex!4857)) )
))
(declare-datatypes ((IArray!13103 0))(
  ( (IArray!13104 (innerList!6609 List!19756)) )
))
(declare-datatypes ((Conc!6549 0))(
  ( (Node!6549 (left!15783 Conc!6549) (right!16113 Conc!6549) (csize!13328 Int) (cheight!6760 Int)) (Leaf!9534 (xs!9425 IArray!13103) (csize!13329 Int)) (Empty!6549) )
))
(declare-datatypes ((BalanceConc!13042 0))(
  ( (BalanceConc!13043 (c!290409 Conc!6549)) )
))
(declare-datatypes ((TokenValueInjection!6898 0))(
  ( (TokenValueInjection!6899 (toValue!5056 Int) (toChars!4915 Int)) )
))
(declare-datatypes ((Rule!6858 0))(
  ( (Rule!6859 (regex!3529 Regex!4857) (tag!3931 String!22427) (isSeparator!3529 Bool) (transformation!3529 TokenValueInjection!6898)) )
))
(declare-datatypes ((Token!6624 0))(
  ( (Token!6625 (value!110249 TokenValue!3619) (rule!5617 Rule!6858) (size!15638 Int) (originalCharacters!4343 List!19756)) )
))
(declare-datatypes ((tuple2!19274 0))(
  ( (tuple2!19275 (_1!11039 Token!6624) (_2!11039 List!19756)) )
))
(declare-fun lt!695215 () tuple2!19274)

(declare-fun lambda!70774 () Int)

(declare-fun order!12753 () Int)

(declare-fun order!12751 () Int)

(declare-fun dynLambda!9705 (Int Int) Int)

(declare-fun dynLambda!9706 (Int Int) Int)

(assert (=> b!1785794 (< (dynLambda!9705 order!12751 (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) (dynLambda!9706 order!12753 lambda!70774))))

(declare-fun order!12755 () Int)

(declare-fun dynLambda!9707 (Int Int) Int)

(assert (=> b!1785794 (< (dynLambda!9707 order!12755 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) (dynLambda!9706 order!12753 lambda!70774))))

(declare-fun b!1785745 () Bool)

(declare-fun e!1142893 () Bool)

(declare-fun e!1142883 () Bool)

(assert (=> b!1785745 (= e!1142893 e!1142883)))

(declare-fun res!805241 () Bool)

(assert (=> b!1785745 (=> res!805241 e!1142883)))

(declare-fun lt!695207 () Regex!4857)

(declare-fun lt!695231 () List!19756)

(declare-fun prefixMatch!740 (Regex!4857 List!19756) Bool)

(assert (=> b!1785745 (= res!805241 (prefixMatch!740 lt!695207 lt!695231))))

(declare-fun lt!695227 () List!19756)

(declare-fun suffix!1421 () List!19756)

(declare-fun ++!5353 (List!19756 List!19756) List!19756)

(declare-fun head!4182 (List!19756) C!9888)

(assert (=> b!1785745 (= lt!695231 (++!5353 lt!695227 (Cons!19686 (head!4182 suffix!1421) Nil!19686)))))

(declare-datatypes ((LexerInterface!3158 0))(
  ( (LexerInterfaceExt!3155 (__x!12541 Int)) (Lexer!3156) )
))
(declare-fun thiss!24550 () LexerInterface!3158)

(declare-datatypes ((List!19757 0))(
  ( (Nil!19687) (Cons!19687 (h!25088 Rule!6858) (t!167092 List!19757)) )
))
(declare-fun rules!3447 () List!19757)

(declare-fun rulesRegex!885 (LexerInterface!3158 List!19757) Regex!4857)

(assert (=> b!1785745 (= lt!695207 (rulesRegex!885 thiss!24550 rules!3447))))

(declare-fun b!1785746 () Bool)

(declare-fun e!1142910 () Bool)

(declare-fun tp_is_empty!7957 () Bool)

(declare-fun tp!505176 () Bool)

(assert (=> b!1785746 (= e!1142910 (and tp_is_empty!7957 tp!505176))))

(declare-fun e!1142888 () Bool)

(declare-fun tp!505168 () Bool)

(declare-fun e!1142892 () Bool)

(declare-fun b!1785747 () Bool)

(declare-fun inv!25630 (String!22427) Bool)

(declare-fun inv!25635 (TokenValueInjection!6898) Bool)

(assert (=> b!1785747 (= e!1142892 (and tp!505168 (inv!25630 (tag!3931 (h!25088 rules!3447))) (inv!25635 (transformation!3529 (h!25088 rules!3447))) e!1142888))))

(declare-fun b!1785748 () Bool)

(declare-datatypes ((Unit!34041 0))(
  ( (Unit!34042) )
))
(declare-fun e!1142879 () Unit!34041)

(declare-fun Unit!34043 () Unit!34041)

(assert (=> b!1785748 (= e!1142879 Unit!34043)))

(declare-fun rule!422 () Rule!6858)

(declare-fun lt!695225 () Unit!34041)

(declare-fun lt!695206 () List!19756)

(declare-fun lt!695245 () List!19756)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!238 (LexerInterface!3158 List!19757 Rule!6858 List!19756 List!19756 List!19756 Rule!6858) Unit!34041)

(assert (=> b!1785748 (= lt!695225 (lemmaMaxPrefixOutputsMaxPrefix!238 thiss!24550 rules!3447 (rule!5617 (_1!11039 lt!695215)) lt!695206 lt!695245 lt!695227 rule!422))))

(assert (=> b!1785748 false))

(assert (=> b!1785749 (= e!1142888 (and tp!505167 tp!505172))))

(declare-fun b!1785750 () Bool)

(declare-fun e!1142909 () Bool)

(declare-fun e!1142881 () Bool)

(assert (=> b!1785750 (= e!1142909 e!1142881)))

(declare-fun res!805245 () Bool)

(assert (=> b!1785750 (=> res!805245 e!1142881)))

(declare-fun lt!695211 () List!19756)

(declare-datatypes ((Option!4080 0))(
  ( (None!4079) (Some!4079 (v!25576 tuple2!19274)) )
))
(declare-fun lt!695218 () Option!4080)

(assert (=> b!1785750 (= res!805245 (or (not (= lt!695211 (_2!11039 lt!695215))) (not (= lt!695218 (Some!4079 (tuple2!19275 (_1!11039 lt!695215) lt!695211))))))))

(assert (=> b!1785750 (= (_2!11039 lt!695215) lt!695211)))

(declare-fun lt!695210 () Unit!34041)

(declare-fun lemmaSamePrefixThenSameSuffix!880 (List!19756 List!19756 List!19756 List!19756 List!19756) Unit!34041)

(assert (=> b!1785750 (= lt!695210 (lemmaSamePrefixThenSameSuffix!880 lt!695206 (_2!11039 lt!695215) lt!695206 lt!695211 lt!695245))))

(declare-fun getSuffix!936 (List!19756 List!19756) List!19756)

(assert (=> b!1785750 (= lt!695211 (getSuffix!936 lt!695245 lt!695206))))

(declare-fun lt!695221 () TokenValue!3619)

(declare-fun lt!695224 () Int)

(assert (=> b!1785750 (= lt!695218 (Some!4079 (tuple2!19275 (Token!6625 lt!695221 (rule!5617 (_1!11039 lt!695215)) lt!695224 lt!695206) (_2!11039 lt!695215))))))

(declare-fun maxPrefixOneRule!1081 (LexerInterface!3158 Rule!6858 List!19756) Option!4080)

(assert (=> b!1785750 (= lt!695218 (maxPrefixOneRule!1081 thiss!24550 (rule!5617 (_1!11039 lt!695215)) lt!695245))))

(declare-fun size!15639 (List!19756) Int)

(assert (=> b!1785750 (= lt!695224 (size!15639 lt!695206))))

(declare-fun apply!5329 (TokenValueInjection!6898 BalanceConc!13042) TokenValue!3619)

(declare-fun seqFromList!2498 (List!19756) BalanceConc!13042)

(assert (=> b!1785750 (= lt!695221 (apply!5329 (transformation!3529 (rule!5617 (_1!11039 lt!695215))) (seqFromList!2498 lt!695206)))))

(declare-fun lt!695212 () Unit!34041)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!459 (LexerInterface!3158 List!19757 List!19756 List!19756 List!19756 Rule!6858) Unit!34041)

(assert (=> b!1785750 (= lt!695212 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!459 thiss!24550 rules!3447 lt!695206 lt!695245 (_2!11039 lt!695215) (rule!5617 (_1!11039 lt!695215))))))

(declare-fun b!1785751 () Bool)

(declare-fun res!805252 () Bool)

(declare-fun e!1142887 () Bool)

(assert (=> b!1785751 (=> (not res!805252) (not e!1142887))))

(declare-fun token!523 () Token!6624)

(assert (=> b!1785751 (= res!805252 (= (rule!5617 token!523) rule!422))))

(declare-fun b!1785752 () Bool)

(declare-fun e!1142894 () Bool)

(assert (=> b!1785752 (= e!1142881 e!1142894)))

(declare-fun res!805240 () Bool)

(assert (=> b!1785752 (=> res!805240 e!1142894)))

(declare-fun lt!695244 () Bool)

(assert (=> b!1785752 (= res!805240 lt!695244)))

(declare-fun lt!695203 () Unit!34041)

(declare-fun e!1142896 () Unit!34041)

(assert (=> b!1785752 (= lt!695203 e!1142896)))

(declare-fun c!290407 () Bool)

(assert (=> b!1785752 (= c!290407 lt!695244)))

(declare-fun lt!695242 () Int)

(declare-fun lt!695219 () Int)

(assert (=> b!1785752 (= lt!695244 (> lt!695242 lt!695219))))

(declare-fun lt!695205 () BalanceConc!13042)

(declare-fun size!15640 (BalanceConc!13042) Int)

(assert (=> b!1785752 (= lt!695219 (size!15640 lt!695205))))

(declare-fun matchR!2330 (Regex!4857 List!19756) Bool)

(assert (=> b!1785752 (matchR!2330 lt!695207 lt!695227)))

(declare-fun lt!695239 () Unit!34041)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!236 (LexerInterface!3158 List!19757 List!19756 Token!6624 Rule!6858 List!19756) Unit!34041)

(assert (=> b!1785752 (= lt!695239 (lemmaMaxPrefixThenMatchesRulesRegex!236 thiss!24550 rules!3447 lt!695227 token!523 rule!422 Nil!19686))))

(declare-fun b!1785754 () Bool)

(declare-fun Unit!34044 () Unit!34041)

(assert (=> b!1785754 (= e!1142879 Unit!34044)))

(declare-fun e!1142884 () Bool)

(assert (=> b!1785755 (= e!1142884 (and tp!505173 tp!505170))))

(declare-fun b!1785756 () Bool)

(declare-fun e!1142886 () Bool)

(assert (=> b!1785756 (= e!1142886 true)))

(declare-fun lt!695223 () Unit!34041)

(declare-fun e!1142889 () Unit!34041)

(assert (=> b!1785756 (= lt!695223 e!1142889)))

(declare-fun c!290405 () Bool)

(declare-fun getIndex!194 (List!19757 Rule!6858) Int)

(assert (=> b!1785756 (= c!290405 (< (getIndex!194 rules!3447 (rule!5617 token!523)) (getIndex!194 rules!3447 (rule!5617 (_1!11039 lt!695215)))))))

(declare-fun b!1785757 () Bool)

(declare-fun res!805251 () Bool)

(declare-fun e!1142895 () Bool)

(assert (=> b!1785757 (=> res!805251 e!1142895)))

(declare-fun lt!695241 () BalanceConc!13042)

(declare-fun dynLambda!9708 (Int TokenValue!3619) BalanceConc!13042)

(assert (=> b!1785757 (= res!805251 (not (= lt!695241 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (value!110249 (_1!11039 lt!695215))))))))

(declare-fun b!1785758 () Bool)

(declare-fun Unit!34045 () Unit!34041)

(assert (=> b!1785758 (= e!1142889 Unit!34045)))

(declare-fun b!1785759 () Bool)

(declare-fun e!1142906 () Bool)

(assert (=> b!1785759 (= e!1142906 e!1142895)))

(declare-fun res!805243 () Bool)

(assert (=> b!1785759 (=> res!805243 e!1142895)))

(declare-fun list!8007 (BalanceConc!13042) List!19756)

(declare-fun dynLambda!9709 (Int BalanceConc!13042) TokenValue!3619)

(assert (=> b!1785759 (= res!805243 (not (= (list!8007 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (dynLambda!9709 (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) lt!695241))) lt!695206)))))

(declare-fun lt!695214 () Unit!34041)

(declare-fun lemmaSemiInverse!667 (TokenValueInjection!6898 BalanceConc!13042) Unit!34041)

(assert (=> b!1785759 (= lt!695214 (lemmaSemiInverse!667 (transformation!3529 (rule!5617 (_1!11039 lt!695215))) lt!695241))))

(declare-fun e!1142890 () Bool)

(declare-fun e!1142904 () Bool)

(declare-fun tp!505171 () Bool)

(declare-fun b!1785760 () Bool)

(declare-fun inv!21 (TokenValue!3619) Bool)

(assert (=> b!1785760 (= e!1142904 (and (inv!21 (value!110249 token!523)) e!1142890 tp!505171))))

(declare-fun b!1785761 () Bool)

(declare-fun e!1142885 () Bool)

(assert (=> b!1785761 (= e!1142885 e!1142886)))

(declare-fun res!805230 () Bool)

(assert (=> b!1785761 (=> res!805230 e!1142886)))

(assert (=> b!1785761 (= res!805230 (= (rule!5617 (_1!11039 lt!695215)) (rule!5617 token!523)))))

(assert (=> b!1785761 (= suffix!1421 (_2!11039 lt!695215))))

(declare-fun lt!695235 () Unit!34041)

(assert (=> b!1785761 (= lt!695235 (lemmaSamePrefixThenSameSuffix!880 lt!695227 suffix!1421 lt!695227 (_2!11039 lt!695215) lt!695245))))

(assert (=> b!1785761 (= lt!695206 lt!695227)))

(declare-fun lt!695233 () Unit!34041)

(declare-fun lemmaIsPrefixSameLengthThenSameList!265 (List!19756 List!19756 List!19756) Unit!34041)

(assert (=> b!1785761 (= lt!695233 (lemmaIsPrefixSameLengthThenSameList!265 lt!695206 lt!695227 lt!695245))))

(declare-fun b!1785762 () Bool)

(declare-fun Unit!34046 () Unit!34041)

(assert (=> b!1785762 (= e!1142896 Unit!34046)))

(declare-fun b!1785763 () Bool)

(declare-fun Unit!34047 () Unit!34041)

(assert (=> b!1785763 (= e!1142896 Unit!34047)))

(declare-fun lt!695204 () Unit!34041)

(assert (=> b!1785763 (= lt!695204 (lemmaMaxPrefixThenMatchesRulesRegex!236 thiss!24550 rules!3447 lt!695245 (_1!11039 lt!695215) (rule!5617 (_1!11039 lt!695215)) (_2!11039 lt!695215)))))

(assert (=> b!1785763 (matchR!2330 lt!695207 lt!695206)))

(declare-fun lt!695243 () List!19756)

(assert (=> b!1785763 (= lt!695243 (getSuffix!936 lt!695245 lt!695227))))

(declare-fun lt!695230 () Unit!34041)

(assert (=> b!1785763 (= lt!695230 (lemmaSamePrefixThenSameSuffix!880 lt!695227 suffix!1421 lt!695227 lt!695243 lt!695245))))

(assert (=> b!1785763 (= suffix!1421 lt!695243)))

(declare-fun lt!695237 () Unit!34041)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!305 (List!19756 List!19756) Unit!34041)

(assert (=> b!1785763 (= lt!695237 (lemmaAddHeadSuffixToPrefixStillPrefix!305 lt!695227 lt!695245))))

(declare-fun isPrefix!1769 (List!19756 List!19756) Bool)

(assert (=> b!1785763 (isPrefix!1769 (++!5353 lt!695227 (Cons!19686 (head!4182 lt!695243) Nil!19686)) lt!695245)))

(declare-fun lt!695202 () Unit!34041)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!177 (List!19756 List!19756 List!19756) Unit!34041)

(assert (=> b!1785763 (= lt!695202 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!177 lt!695206 lt!695231 lt!695245))))

(assert (=> b!1785763 (isPrefix!1769 lt!695231 lt!695206)))

(declare-fun lt!695222 () Unit!34041)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!168 (Regex!4857 List!19756 List!19756) Unit!34041)

(assert (=> b!1785763 (= lt!695222 (lemmaNotPrefixMatchThenCannotMatchLonger!168 lt!695207 lt!695231 lt!695206))))

(assert (=> b!1785763 false))

(declare-fun b!1785764 () Bool)

(declare-fun res!805231 () Bool)

(assert (=> b!1785764 (=> (not res!805231) (not e!1142887))))

(declare-fun lt!695236 () tuple2!19274)

(declare-fun isEmpty!12442 (List!19756) Bool)

(assert (=> b!1785764 (= res!805231 (isEmpty!12442 (_2!11039 lt!695236)))))

(declare-fun b!1785765 () Bool)

(declare-fun Unit!34048 () Unit!34041)

(assert (=> b!1785765 (= e!1142889 Unit!34048)))

(declare-fun lt!695234 () Unit!34041)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!150 (LexerInterface!3158 List!19757 Rule!6858 List!19756 List!19756 Rule!6858) Unit!34041)

(assert (=> b!1785765 (= lt!695234 (lemmaMaxPrefNoSmallerRuleMatches!150 thiss!24550 rules!3447 (rule!5617 (_1!11039 lt!695215)) lt!695206 lt!695245 (rule!5617 token!523)))))

(declare-fun res!805238 () Bool)

(assert (=> b!1785765 (= res!805238 (not (matchR!2330 (regex!3529 (rule!5617 token!523)) lt!695206)))))

(declare-fun e!1142908 () Bool)

(assert (=> b!1785765 (=> (not res!805238) (not e!1142908))))

(assert (=> b!1785765 e!1142908))

(declare-fun b!1785766 () Bool)

(declare-fun res!805244 () Bool)

(assert (=> b!1785766 (=> res!805244 e!1142893)))

(assert (=> b!1785766 (= res!805244 (isEmpty!12442 suffix!1421))))

(declare-fun b!1785767 () Bool)

(assert (=> b!1785767 (= e!1142908 false)))

(declare-fun b!1785768 () Bool)

(declare-fun res!805236 () Bool)

(declare-fun e!1142907 () Bool)

(assert (=> b!1785768 (=> (not res!805236) (not e!1142907))))

(declare-fun isEmpty!12443 (List!19757) Bool)

(assert (=> b!1785768 (= res!805236 (not (isEmpty!12443 rules!3447)))))

(declare-fun e!1142900 () Bool)

(assert (=> b!1785769 (= e!1142900 e!1142906)))

(declare-fun res!805237 () Bool)

(assert (=> b!1785769 (=> res!805237 e!1142906)))

(declare-fun Forall!896 (Int) Bool)

(assert (=> b!1785769 (= res!805237 (not (Forall!896 lambda!70774)))))

(declare-fun lt!695217 () Unit!34041)

(declare-fun lemmaInv!728 (TokenValueInjection!6898) Unit!34041)

(assert (=> b!1785769 (= lt!695217 (lemmaInv!728 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))))))

(declare-fun e!1142905 () Bool)

(assert (=> b!1785770 (= e!1142905 (and tp!505178 tp!505174))))

(declare-fun b!1785771 () Bool)

(declare-fun res!805250 () Bool)

(assert (=> b!1785771 (=> res!805250 e!1142900)))

(assert (=> b!1785771 (= res!805250 (not (matchR!2330 (regex!3529 (rule!5617 (_1!11039 lt!695215))) lt!695206)))))

(declare-fun b!1785772 () Bool)

(assert (=> b!1785772 (= e!1142895 e!1142909)))

(declare-fun res!805249 () Bool)

(assert (=> b!1785772 (=> res!805249 e!1142909)))

(declare-fun lt!695213 () Option!4080)

(declare-fun lt!695216 () TokenValue!3619)

(assert (=> b!1785772 (= res!805249 (not (= lt!695213 (Some!4079 (tuple2!19275 (Token!6625 lt!695216 (rule!5617 (_1!11039 lt!695215)) lt!695242 lt!695206) (_2!11039 lt!695215))))))))

(assert (=> b!1785772 (= lt!695242 (size!15640 lt!695241))))

(assert (=> b!1785772 (= lt!695216 (apply!5329 (transformation!3529 (rule!5617 (_1!11039 lt!695215))) lt!695241))))

(declare-fun lt!695220 () Unit!34041)

(declare-fun lemmaCharactersSize!587 (Token!6624) Unit!34041)

(assert (=> b!1785772 (= lt!695220 (lemmaCharactersSize!587 (_1!11039 lt!695215)))))

(declare-fun lt!695240 () Unit!34041)

(declare-fun lemmaEqSameImage!440 (TokenValueInjection!6898 BalanceConc!13042 BalanceConc!13042) Unit!34041)

(assert (=> b!1785772 (= lt!695240 (lemmaEqSameImage!440 (transformation!3529 (rule!5617 (_1!11039 lt!695215))) lt!695241 (seqFromList!2498 (originalCharacters!4343 (_1!11039 lt!695215)))))))

(declare-fun res!805248 () Bool)

(assert (=> start!177898 (=> (not res!805248) (not e!1142907))))

(get-info :version)

(assert (=> start!177898 (= res!805248 ((_ is Lexer!3156) thiss!24550))))

(assert (=> start!177898 e!1142907))

(assert (=> start!177898 e!1142910))

(declare-fun e!1142899 () Bool)

(assert (=> start!177898 e!1142899))

(assert (=> start!177898 true))

(declare-fun inv!25636 (Token!6624) Bool)

(assert (=> start!177898 (and (inv!25636 token!523) e!1142904)))

(declare-fun e!1142880 () Bool)

(assert (=> start!177898 e!1142880))

(declare-fun b!1785753 () Bool)

(assert (=> b!1785753 (= e!1142887 (not e!1142893))))

(declare-fun res!805239 () Bool)

(assert (=> b!1785753 (=> res!805239 e!1142893)))

(assert (=> b!1785753 (= res!805239 (not (matchR!2330 (regex!3529 rule!422) lt!695227)))))

(declare-fun ruleValid!1027 (LexerInterface!3158 Rule!6858) Bool)

(assert (=> b!1785753 (ruleValid!1027 thiss!24550 rule!422)))

(declare-fun lt!695246 () Unit!34041)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!550 (LexerInterface!3158 Rule!6858 List!19757) Unit!34041)

(assert (=> b!1785753 (= lt!695246 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!550 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1785773 () Bool)

(declare-fun e!1142902 () Bool)

(declare-fun e!1142901 () Bool)

(assert (=> b!1785773 (= e!1142902 e!1142901)))

(declare-fun res!805247 () Bool)

(assert (=> b!1785773 (=> (not res!805247) (not e!1142901))))

(declare-fun lt!695209 () Rule!6858)

(declare-fun charsOf!2178 (Token!6624) BalanceConc!13042)

(assert (=> b!1785773 (= res!805247 (matchR!2330 (regex!3529 lt!695209) (list!8007 (charsOf!2178 (_1!11039 lt!695215)))))))

(declare-datatypes ((Option!4081 0))(
  ( (None!4080) (Some!4080 (v!25577 Rule!6858)) )
))
(declare-fun lt!695208 () Option!4081)

(declare-fun get!6062 (Option!4081) Rule!6858)

(assert (=> b!1785773 (= lt!695209 (get!6062 lt!695208))))

(declare-fun b!1785774 () Bool)

(assert (=> b!1785774 (= e!1142883 e!1142900)))

(declare-fun res!805229 () Bool)

(assert (=> b!1785774 (=> res!805229 e!1142900)))

(assert (=> b!1785774 (= res!805229 (not (isPrefix!1769 lt!695206 lt!695245)))))

(assert (=> b!1785774 (isPrefix!1769 lt!695206 (++!5353 lt!695206 (_2!11039 lt!695215)))))

(declare-fun lt!695232 () Unit!34041)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1278 (List!19756 List!19756) Unit!34041)

(assert (=> b!1785774 (= lt!695232 (lemmaConcatTwoListThenFirstIsPrefix!1278 lt!695206 (_2!11039 lt!695215)))))

(assert (=> b!1785774 (= lt!695206 (list!8007 lt!695241))))

(assert (=> b!1785774 (= lt!695241 (charsOf!2178 (_1!11039 lt!695215)))))

(assert (=> b!1785774 e!1142902))

(declare-fun res!805242 () Bool)

(assert (=> b!1785774 (=> (not res!805242) (not e!1142902))))

(declare-fun isDefined!3423 (Option!4081) Bool)

(assert (=> b!1785774 (= res!805242 (isDefined!3423 lt!695208))))

(declare-fun getRuleFromTag!577 (LexerInterface!3158 List!19757 String!22427) Option!4081)

(assert (=> b!1785774 (= lt!695208 (getRuleFromTag!577 thiss!24550 rules!3447 (tag!3931 (rule!5617 (_1!11039 lt!695215)))))))

(declare-fun lt!695228 () Unit!34041)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!577 (LexerInterface!3158 List!19757 List!19756 Token!6624) Unit!34041)

(assert (=> b!1785774 (= lt!695228 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!577 thiss!24550 rules!3447 lt!695245 (_1!11039 lt!695215)))))

(declare-fun get!6063 (Option!4080) tuple2!19274)

(assert (=> b!1785774 (= lt!695215 (get!6063 lt!695213))))

(declare-fun lt!695238 () Unit!34041)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!680 (LexerInterface!3158 List!19757 List!19756 List!19756) Unit!34041)

(assert (=> b!1785774 (= lt!695238 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!680 thiss!24550 rules!3447 lt!695227 suffix!1421))))

(declare-fun maxPrefix!1712 (LexerInterface!3158 List!19757 List!19756) Option!4080)

(assert (=> b!1785774 (= lt!695213 (maxPrefix!1712 thiss!24550 rules!3447 lt!695245))))

(assert (=> b!1785774 (isPrefix!1769 lt!695227 lt!695245)))

(declare-fun lt!695201 () Unit!34041)

(assert (=> b!1785774 (= lt!695201 (lemmaConcatTwoListThenFirstIsPrefix!1278 lt!695227 suffix!1421))))

(assert (=> b!1785774 (= lt!695245 (++!5353 lt!695227 suffix!1421))))

(declare-fun b!1785775 () Bool)

(declare-fun res!805232 () Bool)

(assert (=> b!1785775 (=> (not res!805232) (not e!1142907))))

(declare-fun rulesInvariant!2827 (LexerInterface!3158 List!19757) Bool)

(assert (=> b!1785775 (= res!805232 (rulesInvariant!2827 thiss!24550 rules!3447))))

(declare-fun tp!505175 () Bool)

(declare-fun b!1785776 () Bool)

(assert (=> b!1785776 (= e!1142890 (and tp!505175 (inv!25630 (tag!3931 (rule!5617 token!523))) (inv!25635 (transformation!3529 (rule!5617 token!523))) e!1142905))))

(declare-fun b!1785777 () Bool)

(declare-fun res!805233 () Bool)

(assert (=> b!1785777 (=> (not res!805233) (not e!1142907))))

(declare-fun contains!3561 (List!19757 Rule!6858) Bool)

(assert (=> b!1785777 (= res!805233 (contains!3561 rules!3447 rule!422))))

(declare-fun b!1785778 () Bool)

(declare-fun tp!505169 () Bool)

(assert (=> b!1785778 (= e!1142880 (and e!1142892 tp!505169))))

(declare-fun b!1785779 () Bool)

(declare-fun e!1142903 () Bool)

(assert (=> b!1785779 (= e!1142903 e!1142887)))

(declare-fun res!805246 () Bool)

(assert (=> b!1785779 (=> (not res!805246) (not e!1142887))))

(assert (=> b!1785779 (= res!805246 (= (_1!11039 lt!695236) token!523))))

(declare-fun lt!695229 () Option!4080)

(assert (=> b!1785779 (= lt!695236 (get!6063 lt!695229))))

(declare-fun b!1785780 () Bool)

(assert (=> b!1785780 (= e!1142894 e!1142885)))

(declare-fun res!805234 () Bool)

(assert (=> b!1785780 (=> res!805234 e!1142885)))

(assert (=> b!1785780 (= res!805234 (not (= lt!695242 lt!695219)))))

(declare-fun lt!695226 () Unit!34041)

(assert (=> b!1785780 (= lt!695226 e!1142879)))

(declare-fun c!290406 () Bool)

(assert (=> b!1785780 (= c!290406 (< lt!695242 lt!695219))))

(declare-fun b!1785781 () Bool)

(assert (=> b!1785781 (= e!1142901 (= (rule!5617 (_1!11039 lt!695215)) lt!695209))))

(declare-fun b!1785782 () Bool)

(declare-fun tp!505177 () Bool)

(assert (=> b!1785782 (= e!1142899 (and tp!505177 (inv!25630 (tag!3931 rule!422)) (inv!25635 (transformation!3529 rule!422)) e!1142884))))

(declare-fun b!1785783 () Bool)

(assert (=> b!1785783 (= e!1142907 e!1142903)))

(declare-fun res!805235 () Bool)

(assert (=> b!1785783 (=> (not res!805235) (not e!1142903))))

(declare-fun isDefined!3424 (Option!4080) Bool)

(assert (=> b!1785783 (= res!805235 (isDefined!3424 lt!695229))))

(assert (=> b!1785783 (= lt!695229 (maxPrefix!1712 thiss!24550 rules!3447 lt!695227))))

(assert (=> b!1785783 (= lt!695227 (list!8007 lt!695205))))

(assert (=> b!1785783 (= lt!695205 (charsOf!2178 token!523))))

(assert (= (and start!177898 res!805248) b!1785768))

(assert (= (and b!1785768 res!805236) b!1785775))

(assert (= (and b!1785775 res!805232) b!1785777))

(assert (= (and b!1785777 res!805233) b!1785783))

(assert (= (and b!1785783 res!805235) b!1785779))

(assert (= (and b!1785779 res!805246) b!1785764))

(assert (= (and b!1785764 res!805231) b!1785751))

(assert (= (and b!1785751 res!805252) b!1785753))

(assert (= (and b!1785753 (not res!805239)) b!1785766))

(assert (= (and b!1785766 (not res!805244)) b!1785745))

(assert (= (and b!1785745 (not res!805241)) b!1785774))

(assert (= (and b!1785774 res!805242) b!1785773))

(assert (= (and b!1785773 res!805247) b!1785781))

(assert (= (and b!1785774 (not res!805229)) b!1785771))

(assert (= (and b!1785771 (not res!805250)) b!1785769))

(assert (= (and b!1785769 (not res!805237)) b!1785759))

(assert (= (and b!1785759 (not res!805243)) b!1785757))

(assert (= (and b!1785757 (not res!805251)) b!1785772))

(assert (= (and b!1785772 (not res!805249)) b!1785750))

(assert (= (and b!1785750 (not res!805245)) b!1785752))

(assert (= (and b!1785752 c!290407) b!1785763))

(assert (= (and b!1785752 (not c!290407)) b!1785762))

(assert (= (and b!1785752 (not res!805240)) b!1785780))

(assert (= (and b!1785780 c!290406) b!1785748))

(assert (= (and b!1785780 (not c!290406)) b!1785754))

(assert (= (and b!1785780 (not res!805234)) b!1785761))

(assert (= (and b!1785761 (not res!805230)) b!1785756))

(assert (= (and b!1785756 c!290405) b!1785765))

(assert (= (and b!1785756 (not c!290405)) b!1785758))

(assert (= (and b!1785765 res!805238) b!1785767))

(assert (= (and start!177898 ((_ is Cons!19686) suffix!1421)) b!1785746))

(assert (= b!1785782 b!1785755))

(assert (= start!177898 b!1785782))

(assert (= b!1785776 b!1785770))

(assert (= b!1785760 b!1785776))

(assert (= start!177898 b!1785760))

(assert (= b!1785747 b!1785749))

(assert (= b!1785778 b!1785747))

(assert (= (and start!177898 ((_ is Cons!19687) rules!3447)) b!1785778))

(declare-fun b_lambda!58595 () Bool)

(assert (=> (not b_lambda!58595) (not b!1785757)))

(declare-fun t!167073 () Bool)

(declare-fun tb!108727 () Bool)

(assert (=> (and b!1785755 (= (toChars!4915 (transformation!3529 rule!422)) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167073) tb!108727))

(declare-fun b!1785799 () Bool)

(declare-fun e!1142922 () Bool)

(declare-fun tp!505181 () Bool)

(declare-fun inv!25637 (Conc!6549) Bool)

(assert (=> b!1785799 (= e!1142922 (and (inv!25637 (c!290409 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (value!110249 (_1!11039 lt!695215))))) tp!505181))))

(declare-fun result!130818 () Bool)

(declare-fun inv!25638 (BalanceConc!13042) Bool)

(assert (=> tb!108727 (= result!130818 (and (inv!25638 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (value!110249 (_1!11039 lt!695215)))) e!1142922))))

(assert (= tb!108727 b!1785799))

(declare-fun m!2209159 () Bool)

(assert (=> b!1785799 m!2209159))

(declare-fun m!2209161 () Bool)

(assert (=> tb!108727 m!2209161))

(assert (=> b!1785757 t!167073))

(declare-fun b_and!137395 () Bool)

(assert (= b_and!137385 (and (=> t!167073 result!130818) b_and!137395)))

(declare-fun t!167075 () Bool)

(declare-fun tb!108729 () Bool)

(assert (=> (and b!1785749 (= (toChars!4915 (transformation!3529 (h!25088 rules!3447))) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167075) tb!108729))

(declare-fun result!130822 () Bool)

(assert (= result!130822 result!130818))

(assert (=> b!1785757 t!167075))

(declare-fun b_and!137397 () Bool)

(assert (= b_and!137389 (and (=> t!167075 result!130822) b_and!137397)))

(declare-fun tb!108731 () Bool)

(declare-fun t!167077 () Bool)

(assert (=> (and b!1785770 (= (toChars!4915 (transformation!3529 (rule!5617 token!523))) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167077) tb!108731))

(declare-fun result!130824 () Bool)

(assert (= result!130824 result!130818))

(assert (=> b!1785757 t!167077))

(declare-fun b_and!137399 () Bool)

(assert (= b_and!137393 (and (=> t!167077 result!130824) b_and!137399)))

(declare-fun b_lambda!58597 () Bool)

(assert (=> (not b_lambda!58597) (not b!1785759)))

(declare-fun tb!108733 () Bool)

(declare-fun t!167079 () Bool)

(assert (=> (and b!1785755 (= (toChars!4915 (transformation!3529 rule!422)) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167079) tb!108733))

(declare-fun e!1142923 () Bool)

(declare-fun tp!505182 () Bool)

(declare-fun b!1785800 () Bool)

(assert (=> b!1785800 (= e!1142923 (and (inv!25637 (c!290409 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (dynLambda!9709 (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) lt!695241)))) tp!505182))))

(declare-fun result!130826 () Bool)

(assert (=> tb!108733 (= result!130826 (and (inv!25638 (dynLambda!9708 (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) (dynLambda!9709 (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) lt!695241))) e!1142923))))

(assert (= tb!108733 b!1785800))

(declare-fun m!2209163 () Bool)

(assert (=> b!1785800 m!2209163))

(declare-fun m!2209165 () Bool)

(assert (=> tb!108733 m!2209165))

(assert (=> b!1785759 t!167079))

(declare-fun b_and!137401 () Bool)

(assert (= b_and!137395 (and (=> t!167079 result!130826) b_and!137401)))

(declare-fun t!167081 () Bool)

(declare-fun tb!108735 () Bool)

(assert (=> (and b!1785749 (= (toChars!4915 (transformation!3529 (h!25088 rules!3447))) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167081) tb!108735))

(declare-fun result!130828 () Bool)

(assert (= result!130828 result!130826))

(assert (=> b!1785759 t!167081))

(declare-fun b_and!137403 () Bool)

(assert (= b_and!137397 (and (=> t!167081 result!130828) b_and!137403)))

(declare-fun t!167083 () Bool)

(declare-fun tb!108737 () Bool)

(assert (=> (and b!1785770 (= (toChars!4915 (transformation!3529 (rule!5617 token!523))) (toChars!4915 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167083) tb!108737))

(declare-fun result!130830 () Bool)

(assert (= result!130830 result!130826))

(assert (=> b!1785759 t!167083))

(declare-fun b_and!137405 () Bool)

(assert (= b_and!137399 (and (=> t!167083 result!130830) b_and!137405)))

(declare-fun b_lambda!58599 () Bool)

(assert (=> (not b_lambda!58599) (not b!1785759)))

(declare-fun tb!108739 () Bool)

(declare-fun t!167085 () Bool)

(assert (=> (and b!1785755 (= (toValue!5056 (transformation!3529 rule!422)) (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167085) tb!108739))

(declare-fun result!130832 () Bool)

(assert (=> tb!108739 (= result!130832 (inv!21 (dynLambda!9709 (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215)))) lt!695241)))))

(declare-fun m!2209167 () Bool)

(assert (=> tb!108739 m!2209167))

(assert (=> b!1785759 t!167085))

(declare-fun b_and!137407 () Bool)

(assert (= b_and!137383 (and (=> t!167085 result!130832) b_and!137407)))

(declare-fun t!167087 () Bool)

(declare-fun tb!108741 () Bool)

(assert (=> (and b!1785749 (= (toValue!5056 (transformation!3529 (h!25088 rules!3447))) (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167087) tb!108741))

(declare-fun result!130836 () Bool)

(assert (= result!130836 result!130832))

(assert (=> b!1785759 t!167087))

(declare-fun b_and!137409 () Bool)

(assert (= b_and!137387 (and (=> t!167087 result!130836) b_and!137409)))

(declare-fun t!167089 () Bool)

(declare-fun tb!108743 () Bool)

(assert (=> (and b!1785770 (= (toValue!5056 (transformation!3529 (rule!5617 token!523))) (toValue!5056 (transformation!3529 (rule!5617 (_1!11039 lt!695215))))) t!167089) tb!108743))

(declare-fun result!130838 () Bool)

(assert (= result!130838 result!130832))

(assert (=> b!1785759 t!167089))

(declare-fun b_and!137411 () Bool)

(assert (= b_and!137391 (and (=> t!167089 result!130838) b_and!137411)))

(declare-fun m!2209169 () Bool)

(assert (=> b!1785772 m!2209169))

(declare-fun m!2209171 () Bool)

(assert (=> b!1785772 m!2209171))

(declare-fun m!2209173 () Bool)

(assert (=> b!1785772 m!2209173))

(declare-fun m!2209175 () Bool)

(assert (=> b!1785772 m!2209175))

(assert (=> b!1785772 m!2209171))

(declare-fun m!2209177 () Bool)

(assert (=> b!1785772 m!2209177))

(declare-fun m!2209179 () Bool)

(assert (=> b!1785779 m!2209179))

(declare-fun m!2209181 () Bool)

(assert (=> start!177898 m!2209181))

(declare-fun m!2209183 () Bool)

(assert (=> b!1785773 m!2209183))

(assert (=> b!1785773 m!2209183))

(declare-fun m!2209185 () Bool)

(assert (=> b!1785773 m!2209185))

(assert (=> b!1785773 m!2209185))

(declare-fun m!2209187 () Bool)

(assert (=> b!1785773 m!2209187))

(declare-fun m!2209189 () Bool)

(assert (=> b!1785773 m!2209189))

(declare-fun m!2209191 () Bool)

(assert (=> b!1785745 m!2209191))

(declare-fun m!2209193 () Bool)

(assert (=> b!1785745 m!2209193))

(declare-fun m!2209195 () Bool)

(assert (=> b!1785745 m!2209195))

(declare-fun m!2209197 () Bool)

(assert (=> b!1785745 m!2209197))

(declare-fun m!2209199 () Bool)

(assert (=> b!1785783 m!2209199))

(declare-fun m!2209201 () Bool)

(assert (=> b!1785783 m!2209201))

(declare-fun m!2209203 () Bool)

(assert (=> b!1785783 m!2209203))

(declare-fun m!2209205 () Bool)

(assert (=> b!1785783 m!2209205))

(declare-fun m!2209207 () Bool)

(assert (=> b!1785752 m!2209207))

(declare-fun m!2209209 () Bool)

(assert (=> b!1785752 m!2209209))

(declare-fun m!2209211 () Bool)

(assert (=> b!1785752 m!2209211))

(declare-fun m!2209213 () Bool)

(assert (=> b!1785764 m!2209213))

(declare-fun m!2209215 () Bool)

(assert (=> b!1785765 m!2209215))

(declare-fun m!2209217 () Bool)

(assert (=> b!1785765 m!2209217))

(declare-fun m!2209219 () Bool)

(assert (=> b!1785750 m!2209219))

(declare-fun m!2209221 () Bool)

(assert (=> b!1785750 m!2209221))

(declare-fun m!2209223 () Bool)

(assert (=> b!1785750 m!2209223))

(declare-fun m!2209225 () Bool)

(assert (=> b!1785750 m!2209225))

(declare-fun m!2209227 () Bool)

(assert (=> b!1785750 m!2209227))

(assert (=> b!1785750 m!2209225))

(declare-fun m!2209229 () Bool)

(assert (=> b!1785750 m!2209229))

(declare-fun m!2209231 () Bool)

(assert (=> b!1785750 m!2209231))

(declare-fun m!2209233 () Bool)

(assert (=> b!1785753 m!2209233))

(declare-fun m!2209235 () Bool)

(assert (=> b!1785753 m!2209235))

(declare-fun m!2209237 () Bool)

(assert (=> b!1785753 m!2209237))

(declare-fun m!2209239 () Bool)

(assert (=> b!1785766 m!2209239))

(declare-fun m!2209241 () Bool)

(assert (=> b!1785782 m!2209241))

(declare-fun m!2209243 () Bool)

(assert (=> b!1785782 m!2209243))

(declare-fun m!2209245 () Bool)

(assert (=> b!1785759 m!2209245))

(assert (=> b!1785759 m!2209245))

(declare-fun m!2209247 () Bool)

(assert (=> b!1785759 m!2209247))

(assert (=> b!1785759 m!2209247))

(declare-fun m!2209249 () Bool)

(assert (=> b!1785759 m!2209249))

(declare-fun m!2209251 () Bool)

(assert (=> b!1785759 m!2209251))

(declare-fun m!2209253 () Bool)

(assert (=> b!1785756 m!2209253))

(declare-fun m!2209255 () Bool)

(assert (=> b!1785756 m!2209255))

(declare-fun m!2209257 () Bool)

(assert (=> b!1785761 m!2209257))

(declare-fun m!2209259 () Bool)

(assert (=> b!1785761 m!2209259))

(declare-fun m!2209261 () Bool)

(assert (=> b!1785747 m!2209261))

(declare-fun m!2209263 () Bool)

(assert (=> b!1785747 m!2209263))

(declare-fun m!2209265 () Bool)

(assert (=> b!1785768 m!2209265))

(declare-fun m!2209267 () Bool)

(assert (=> b!1785776 m!2209267))

(declare-fun m!2209269 () Bool)

(assert (=> b!1785776 m!2209269))

(declare-fun m!2209271 () Bool)

(assert (=> b!1785777 m!2209271))

(declare-fun m!2209273 () Bool)

(assert (=> b!1785760 m!2209273))

(declare-fun m!2209275 () Bool)

(assert (=> b!1785774 m!2209275))

(assert (=> b!1785774 m!2209183))

(declare-fun m!2209277 () Bool)

(assert (=> b!1785774 m!2209277))

(declare-fun m!2209279 () Bool)

(assert (=> b!1785774 m!2209279))

(declare-fun m!2209281 () Bool)

(assert (=> b!1785774 m!2209281))

(declare-fun m!2209283 () Bool)

(assert (=> b!1785774 m!2209283))

(declare-fun m!2209285 () Bool)

(assert (=> b!1785774 m!2209285))

(declare-fun m!2209287 () Bool)

(assert (=> b!1785774 m!2209287))

(declare-fun m!2209289 () Bool)

(assert (=> b!1785774 m!2209289))

(declare-fun m!2209291 () Bool)

(assert (=> b!1785774 m!2209291))

(declare-fun m!2209293 () Bool)

(assert (=> b!1785774 m!2209293))

(declare-fun m!2209295 () Bool)

(assert (=> b!1785774 m!2209295))

(declare-fun m!2209297 () Bool)

(assert (=> b!1785774 m!2209297))

(declare-fun m!2209299 () Bool)

(assert (=> b!1785774 m!2209299))

(assert (=> b!1785774 m!2209281))

(declare-fun m!2209301 () Bool)

(assert (=> b!1785774 m!2209301))

(declare-fun m!2209303 () Bool)

(assert (=> b!1785775 m!2209303))

(declare-fun m!2209305 () Bool)

(assert (=> b!1785771 m!2209305))

(declare-fun m!2209307 () Bool)

(assert (=> b!1785757 m!2209307))

(declare-fun m!2209309 () Bool)

(assert (=> b!1785763 m!2209309))

(declare-fun m!2209311 () Bool)

(assert (=> b!1785763 m!2209311))

(declare-fun m!2209313 () Bool)

(assert (=> b!1785763 m!2209313))

(declare-fun m!2209315 () Bool)

(assert (=> b!1785763 m!2209315))

(declare-fun m!2209317 () Bool)

(assert (=> b!1785763 m!2209317))

(declare-fun m!2209319 () Bool)

(assert (=> b!1785763 m!2209319))

(declare-fun m!2209321 () Bool)

(assert (=> b!1785763 m!2209321))

(assert (=> b!1785763 m!2209311))

(declare-fun m!2209323 () Bool)

(assert (=> b!1785763 m!2209323))

(declare-fun m!2209325 () Bool)

(assert (=> b!1785763 m!2209325))

(declare-fun m!2209327 () Bool)

(assert (=> b!1785763 m!2209327))

(declare-fun m!2209329 () Bool)

(assert (=> b!1785763 m!2209329))

(declare-fun m!2209331 () Bool)

(assert (=> b!1785769 m!2209331))

(declare-fun m!2209333 () Bool)

(assert (=> b!1785769 m!2209333))

(declare-fun m!2209335 () Bool)

(assert (=> b!1785748 m!2209335))

(check-sat (not b!1785745) (not b!1785753) (not b!1785750) (not b!1785764) tp_is_empty!7957 (not tb!108727) (not b!1785771) (not b_lambda!58599) (not b!1785777) (not b!1785746) (not b!1785799) (not b!1785774) (not b!1785779) (not tb!108733) (not tb!108739) (not b!1785765) (not b!1785800) (not b!1785768) (not b_next!50327) (not b_next!50331) (not b!1785748) b_and!137403 (not b!1785772) (not b!1785759) (not b!1785752) (not b!1785756) b_and!137409 b_and!137407 (not b_next!50337) (not b!1785760) (not b!1785761) b_and!137401 (not b!1785769) (not b_next!50333) (not b!1785782) (not b!1785763) (not b_next!50335) (not start!177898) (not b!1785776) b_and!137405 b_and!137411 (not b_next!50329) (not b!1785778) (not b!1785766) (not b!1785783) (not b!1785775) (not b_lambda!58595) (not b!1785773) (not b_lambda!58597) (not b!1785747))
(check-sat b_and!137409 b_and!137401 (not b_next!50333) (not b_next!50335) b_and!137405 (not b_next!50327) (not b_next!50331) b_and!137403 b_and!137407 (not b_next!50337) b_and!137411 (not b_next!50329))
