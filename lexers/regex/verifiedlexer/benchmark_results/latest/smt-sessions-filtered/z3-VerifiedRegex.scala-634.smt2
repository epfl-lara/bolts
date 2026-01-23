; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20518 () Bool)

(assert start!20518)

(declare-fun b!190632 () Bool)

(declare-fun b_free!7617 () Bool)

(declare-fun b_next!7617 () Bool)

(assert (=> b!190632 (= b_free!7617 (not b_next!7617))))

(declare-fun tp!88694 () Bool)

(declare-fun b_and!13221 () Bool)

(assert (=> b!190632 (= tp!88694 b_and!13221)))

(declare-fun b_free!7619 () Bool)

(declare-fun b_next!7619 () Bool)

(assert (=> b!190632 (= b_free!7619 (not b_next!7619))))

(declare-fun tp!88698 () Bool)

(declare-fun b_and!13223 () Bool)

(assert (=> b!190632 (= tp!88698 b_and!13223)))

(declare-fun b!190664 () Bool)

(declare-fun b_free!7621 () Bool)

(declare-fun b_next!7621 () Bool)

(assert (=> b!190664 (= b_free!7621 (not b_next!7621))))

(declare-fun tp!88699 () Bool)

(declare-fun b_and!13225 () Bool)

(assert (=> b!190664 (= tp!88699 b_and!13225)))

(declare-fun b_free!7623 () Bool)

(declare-fun b_next!7623 () Bool)

(assert (=> b!190664 (= b_free!7623 (not b_next!7623))))

(declare-fun tp!88697 () Bool)

(declare-fun b_and!13227 () Bool)

(assert (=> b!190664 (= tp!88697 b_and!13227)))

(declare-fun b!190640 () Bool)

(declare-fun b_free!7625 () Bool)

(declare-fun b_next!7625 () Bool)

(assert (=> b!190640 (= b_free!7625 (not b_next!7625))))

(declare-fun tp!88696 () Bool)

(declare-fun b_and!13229 () Bool)

(assert (=> b!190640 (= tp!88696 b_and!13229)))

(declare-fun b_free!7627 () Bool)

(declare-fun b_next!7627 () Bool)

(assert (=> b!190640 (= b_free!7627 (not b_next!7627))))

(declare-fun tp!88700 () Bool)

(declare-fun b_and!13231 () Bool)

(assert (=> b!190640 (= tp!88700 b_and!13231)))

(declare-fun bs!18774 () Bool)

(declare-fun b!190630 () Bool)

(declare-fun b!190639 () Bool)

(assert (= bs!18774 (and b!190630 b!190639)))

(declare-fun lambda!5824 () Int)

(declare-fun lambda!5823 () Int)

(assert (=> bs!18774 (not (= lambda!5824 lambda!5823))))

(declare-fun b!190680 () Bool)

(declare-fun e!117175 () Bool)

(assert (=> b!190680 (= e!117175 true)))

(declare-fun b!190679 () Bool)

(declare-fun e!117174 () Bool)

(assert (=> b!190679 (= e!117174 e!117175)))

(declare-fun b!190678 () Bool)

(declare-fun e!117173 () Bool)

(assert (=> b!190678 (= e!117173 e!117174)))

(assert (=> b!190630 e!117173))

(assert (= b!190679 b!190680))

(assert (= b!190678 b!190679))

(declare-datatypes ((List!3219 0))(
  ( (Nil!3209) (Cons!3209 (h!8606 (_ BitVec 16)) (t!28913 List!3219)) )
))
(declare-datatypes ((TokenValue!613 0))(
  ( (FloatLiteralValue!1226 (text!4736 List!3219)) (TokenValueExt!612 (__x!2713 Int)) (Broken!3065 (value!21133 List!3219)) (Object!622) (End!613) (Def!613) (Underscore!613) (Match!613) (Else!613) (Error!613) (Case!613) (If!613) (Extends!613) (Abstract!613) (Class!613) (Val!613) (DelimiterValue!1226 (del!673 List!3219)) (KeywordValue!619 (value!21134 List!3219)) (CommentValue!1226 (value!21135 List!3219)) (WhitespaceValue!1226 (value!21136 List!3219)) (IndentationValue!613 (value!21137 List!3219)) (String!4144) (Int32!613) (Broken!3066 (value!21138 List!3219)) (Boolean!614) (Unit!3025) (OperatorValue!616 (op!673 List!3219)) (IdentifierValue!1226 (value!21139 List!3219)) (IdentifierValue!1227 (value!21140 List!3219)) (WhitespaceValue!1227 (value!21141 List!3219)) (True!1226) (False!1226) (Broken!3067 (value!21142 List!3219)) (Broken!3068 (value!21143 List!3219)) (True!1227) (RightBrace!613) (RightBracket!613) (Colon!613) (Null!613) (Comma!613) (LeftBracket!613) (False!1227) (LeftBrace!613) (ImaginaryLiteralValue!613 (text!4737 List!3219)) (StringLiteralValue!1839 (value!21144 List!3219)) (EOFValue!613 (value!21145 List!3219)) (IdentValue!613 (value!21146 List!3219)) (DelimiterValue!1227 (value!21147 List!3219)) (DedentValue!613 (value!21148 List!3219)) (NewLineValue!613 (value!21149 List!3219)) (IntegerValue!1839 (value!21150 (_ BitVec 32)) (text!4738 List!3219)) (IntegerValue!1840 (value!21151 Int) (text!4739 List!3219)) (Times!613) (Or!613) (Equal!613) (Minus!613) (Broken!3069 (value!21152 List!3219)) (And!613) (Div!613) (LessEqual!613) (Mod!613) (Concat!1428) (Not!613) (Plus!613) (SpaceValue!613 (value!21153 List!3219)) (IntegerValue!1841 (value!21154 Int) (text!4740 List!3219)) (StringLiteralValue!1840 (text!4741 List!3219)) (FloatLiteralValue!1227 (text!4742 List!3219)) (BytesLiteralValue!613 (value!21155 List!3219)) (CommentValue!1227 (value!21156 List!3219)) (StringLiteralValue!1841 (value!21157 List!3219)) (ErrorTokenValue!613 (msg!674 List!3219)) )
))
(declare-datatypes ((C!2552 0))(
  ( (C!2553 (val!1162 Int)) )
))
(declare-datatypes ((List!3220 0))(
  ( (Nil!3210) (Cons!3210 (h!8607 C!2552) (t!28914 List!3220)) )
))
(declare-datatypes ((IArray!2009 0))(
  ( (IArray!2010 (innerList!1062 List!3220)) )
))
(declare-datatypes ((Conc!1004 0))(
  ( (Node!1004 (left!2538 Conc!1004) (right!2868 Conc!1004) (csize!2238 Int) (cheight!1215 Int)) (Leaf!1639 (xs!3599 IArray!2009) (csize!2239 Int)) (Empty!1004) )
))
(declare-datatypes ((BalanceConc!2016 0))(
  ( (BalanceConc!2017 (c!36411 Conc!1004)) )
))
(declare-datatypes ((TokenValueInjection!998 0))(
  ( (TokenValueInjection!999 (toValue!1262 Int) (toChars!1121 Int)) )
))
(declare-datatypes ((Regex!815 0))(
  ( (ElementMatch!815 (c!36412 C!2552)) (Concat!1429 (regOne!2142 Regex!815) (regTwo!2142 Regex!815)) (EmptyExpr!815) (Star!815 (reg!1144 Regex!815)) (EmptyLang!815) (Union!815 (regOne!2143 Regex!815) (regTwo!2143 Regex!815)) )
))
(declare-datatypes ((String!4145 0))(
  ( (String!4146 (value!21158 String)) )
))
(declare-datatypes ((Rule!982 0))(
  ( (Rule!983 (regex!591 Regex!815) (tag!769 String!4145) (isSeparator!591 Bool) (transformation!591 TokenValueInjection!998)) )
))
(declare-datatypes ((List!3221 0))(
  ( (Nil!3211) (Cons!3211 (h!8608 Rule!982) (t!28915 List!3221)) )
))
(declare-fun rules!1920 () List!3221)

(get-info :version)

(assert (= (and b!190630 ((_ is Cons!3211) rules!1920)) b!190678))

(declare-fun order!2021 () Int)

(declare-fun order!2023 () Int)

(declare-fun dynLambda!1363 (Int Int) Int)

(declare-fun dynLambda!1364 (Int Int) Int)

(assert (=> b!190680 (< (dynLambda!1363 order!2021 (toValue!1262 (transformation!591 (h!8608 rules!1920)))) (dynLambda!1364 order!2023 lambda!5824))))

(declare-fun order!2025 () Int)

(declare-fun dynLambda!1365 (Int Int) Int)

(assert (=> b!190680 (< (dynLambda!1365 order!2025 (toChars!1121 (transformation!591 (h!8608 rules!1920)))) (dynLambda!1364 order!2023 lambda!5824))))

(assert (=> b!190630 true))

(declare-fun b!190629 () Bool)

(declare-fun res!87327 () Bool)

(declare-fun e!117161 () Bool)

(assert (=> b!190629 (=> (not res!87327) (not e!117161))))

(declare-datatypes ((Token!926 0))(
  ( (Token!927 (value!21159 TokenValue!613) (rule!1106 Rule!982) (size!2558 Int) (originalCharacters!634 List!3220)) )
))
(declare-fun separatorToken!170 () Token!926)

(assert (=> b!190629 (= res!87327 (isSeparator!591 (rule!1106 separatorToken!170)))))

(declare-fun e!117144 () Bool)

(declare-fun e!117146 () Bool)

(assert (=> b!190630 (= e!117144 e!117146)))

(declare-fun res!87336 () Bool)

(assert (=> b!190630 (=> res!87336 e!117146)))

(declare-datatypes ((List!3222 0))(
  ( (Nil!3212) (Cons!3212 (h!8609 Token!926) (t!28916 List!3222)) )
))
(declare-fun tokens!465 () List!3222)

(declare-datatypes ((LexerInterface!477 0))(
  ( (LexerInterfaceExt!474 (__x!2714 Int)) (Lexer!475) )
))
(declare-fun thiss!17480 () LexerInterface!477)

(declare-datatypes ((tuple2!3290 0))(
  ( (tuple2!3291 (_1!1861 Token!926) (_2!1861 BalanceConc!2016)) )
))
(declare-datatypes ((Option!465 0))(
  ( (None!464) (Some!464 (v!13975 tuple2!3290)) )
))
(declare-fun isDefined!316 (Option!465) Bool)

(declare-fun maxPrefixZipperSequence!170 (LexerInterface!477 List!3221 BalanceConc!2016) Option!465)

(declare-fun seqFromList!559 (List!3220) BalanceConc!2016)

(assert (=> b!190630 (= res!87336 (not (isDefined!316 (maxPrefixZipperSequence!170 thiss!17480 rules!1920 (seqFromList!559 (originalCharacters!634 (h!8609 tokens!465)))))))))

(declare-datatypes ((Unit!3026 0))(
  ( (Unit!3027) )
))
(declare-fun lt!65220 () Unit!3026)

(declare-fun forallContained!158 (List!3222 Int Token!926) Unit!3026)

(assert (=> b!190630 (= lt!65220 (forallContained!158 tokens!465 lambda!5824 (h!8609 tokens!465)))))

(declare-fun lt!65213 () List!3220)

(assert (=> b!190630 (= lt!65213 (originalCharacters!634 (h!8609 tokens!465)))))

(declare-fun lt!65215 () List!3220)

(declare-fun b!190631 () Bool)

(declare-fun lt!65201 () List!3220)

(declare-fun e!117137 () Bool)

(declare-fun ++!766 (List!3220 List!3220) List!3220)

(assert (=> b!190631 (= e!117137 (not (= lt!65201 (++!766 lt!65213 lt!65215))))))

(declare-fun e!117151 () Bool)

(assert (=> b!190632 (= e!117151 (and tp!88694 tp!88698))))

(declare-fun b!190633 () Bool)

(declare-fun e!117163 () Unit!3026)

(declare-fun Unit!3028 () Unit!3026)

(assert (=> b!190633 (= e!117163 Unit!3028)))

(assert (=> b!190633 false))

(declare-fun b!190634 () Bool)

(declare-fun res!87344 () Bool)

(assert (=> b!190634 (=> res!87344 e!117144)))

(declare-datatypes ((IArray!2011 0))(
  ( (IArray!2012 (innerList!1063 List!3222)) )
))
(declare-datatypes ((Conc!1005 0))(
  ( (Node!1005 (left!2539 Conc!1005) (right!2869 Conc!1005) (csize!2240 Int) (cheight!1216 Int)) (Leaf!1640 (xs!3600 IArray!2011) (csize!2241 Int)) (Empty!1005) )
))
(declare-datatypes ((BalanceConc!2018 0))(
  ( (BalanceConc!2019 (c!36413 Conc!1005)) )
))
(declare-fun isEmpty!1598 (BalanceConc!2018) Bool)

(declare-datatypes ((tuple2!3292 0))(
  ( (tuple2!3293 (_1!1862 BalanceConc!2018) (_2!1862 BalanceConc!2016)) )
))
(declare-fun lex!277 (LexerInterface!477 List!3221 BalanceConc!2016) tuple2!3292)

(assert (=> b!190634 (= res!87344 (isEmpty!1598 (_1!1862 (lex!277 thiss!17480 rules!1920 (seqFromList!559 lt!65213)))))))

(declare-fun e!117145 () Bool)

(declare-fun tp!88691 () Bool)

(declare-fun b!190636 () Bool)

(declare-fun e!117149 () Bool)

(declare-fun inv!4033 (Token!926) Bool)

(assert (=> b!190636 (= e!117145 (and (inv!4033 (h!8609 tokens!465)) e!117149 tp!88691))))

(declare-fun b!190637 () Bool)

(declare-fun e!117143 () Bool)

(assert (=> b!190637 (= e!117143 true)))

(declare-fun e!117155 () Bool)

(assert (=> b!190637 e!117155))

(declare-fun res!87335 () Bool)

(assert (=> b!190637 (=> (not res!87335) (not e!117155))))

(declare-fun lt!65202 () tuple2!3292)

(declare-fun size!2559 (BalanceConc!2018) Int)

(assert (=> b!190637 (= res!87335 (= (size!2559 (_1!1862 lt!65202)) 1))))

(declare-fun lt!65196 () BalanceConc!2016)

(assert (=> b!190637 (= lt!65202 (lex!277 thiss!17480 rules!1920 lt!65196))))

(declare-fun lt!65197 () BalanceConc!2018)

(declare-fun printTailRec!171 (LexerInterface!477 BalanceConc!2018 Int BalanceConc!2016) BalanceConc!2016)

(assert (=> b!190637 (= lt!65196 (printTailRec!171 thiss!17480 lt!65197 0 (BalanceConc!2017 Empty!1004)))))

(declare-fun print!208 (LexerInterface!477 BalanceConc!2018) BalanceConc!2016)

(assert (=> b!190637 (= lt!65196 (print!208 thiss!17480 lt!65197))))

(declare-fun lt!65198 () Token!926)

(declare-fun singletonSeq!143 (Token!926) BalanceConc!2018)

(assert (=> b!190637 (= lt!65197 (singletonSeq!143 lt!65198))))

(declare-fun e!117135 () Bool)

(assert (=> b!190637 e!117135))

(declare-fun res!87334 () Bool)

(assert (=> b!190637 (=> (not res!87334) (not e!117135))))

(declare-datatypes ((Option!466 0))(
  ( (None!465) (Some!465 (v!13976 Rule!982)) )
))
(declare-fun lt!65206 () Option!466)

(declare-fun isDefined!317 (Option!466) Bool)

(assert (=> b!190637 (= res!87334 (isDefined!317 lt!65206))))

(declare-fun getRuleFromTag!32 (LexerInterface!477 List!3221 String!4145) Option!466)

(assert (=> b!190637 (= lt!65206 (getRuleFromTag!32 thiss!17480 rules!1920 (tag!769 (rule!1106 separatorToken!170))))))

(declare-fun lt!65203 () List!3220)

(declare-fun lt!65192 () Unit!3026)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!32 (LexerInterface!477 List!3221 List!3220 Token!926) Unit!3026)

(assert (=> b!190637 (= lt!65192 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!32 thiss!17480 rules!1920 lt!65203 separatorToken!170))))

(declare-fun e!117160 () Bool)

(assert (=> b!190637 e!117160))

(declare-fun res!87352 () Bool)

(assert (=> b!190637 (=> (not res!87352) (not e!117160))))

(declare-fun lt!65207 () tuple2!3292)

(assert (=> b!190637 (= res!87352 (= (size!2559 (_1!1862 lt!65207)) 1))))

(declare-fun lt!65195 () BalanceConc!2016)

(assert (=> b!190637 (= lt!65207 (lex!277 thiss!17480 rules!1920 lt!65195))))

(declare-fun lt!65208 () BalanceConc!2018)

(assert (=> b!190637 (= lt!65195 (printTailRec!171 thiss!17480 lt!65208 0 (BalanceConc!2017 Empty!1004)))))

(assert (=> b!190637 (= lt!65195 (print!208 thiss!17480 lt!65208))))

(assert (=> b!190637 (= lt!65208 (singletonSeq!143 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!226 (LexerInterface!477 List!3221 Token!926) Bool)

(assert (=> b!190637 (rulesProduceIndividualToken!226 thiss!17480 rules!1920 lt!65198)))

(declare-fun lt!65217 () Unit!3026)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!44 (LexerInterface!477 List!3221 List!3222 Token!926) Unit!3026)

(assert (=> b!190637 (= lt!65217 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!44 thiss!17480 rules!1920 tokens!465 lt!65198))))

(declare-fun head!680 (List!3222) Token!926)

(assert (=> b!190637 (= lt!65198 (head!680 (t!28916 tokens!465)))))

(declare-fun lt!65212 () Unit!3026)

(assert (=> b!190637 (= lt!65212 e!117163)))

(declare-fun c!36410 () Bool)

(declare-fun isEmpty!1599 (List!3222) Bool)

(assert (=> b!190637 (= c!36410 (isEmpty!1599 (t!28916 tokens!465)))))

(declare-fun lt!65209 () List!3220)

(declare-datatypes ((tuple2!3294 0))(
  ( (tuple2!3295 (_1!1863 Token!926) (_2!1863 List!3220)) )
))
(declare-datatypes ((Option!467 0))(
  ( (None!466) (Some!466 (v!13977 tuple2!3294)) )
))
(declare-fun lt!65224 () Option!467)

(declare-fun maxPrefix!207 (LexerInterface!477 List!3221 List!3220) Option!467)

(assert (=> b!190637 (= lt!65224 (maxPrefix!207 thiss!17480 rules!1920 lt!65209))))

(declare-fun lt!65189 () tuple2!3294)

(assert (=> b!190637 (= lt!65209 (_2!1863 lt!65189))))

(declare-fun lt!65218 () Unit!3026)

(declare-fun lemmaSamePrefixThenSameSuffix!112 (List!3220 List!3220 List!3220 List!3220 List!3220) Unit!3026)

(assert (=> b!190637 (= lt!65218 (lemmaSamePrefixThenSameSuffix!112 lt!65213 lt!65209 lt!65213 (_2!1863 lt!65189) lt!65201))))

(declare-fun get!932 (Option!467) tuple2!3294)

(assert (=> b!190637 (= lt!65189 (get!932 (maxPrefix!207 thiss!17480 rules!1920 lt!65201)))))

(declare-fun lt!65199 () List!3220)

(declare-fun isPrefix!287 (List!3220 List!3220) Bool)

(assert (=> b!190637 (isPrefix!287 lt!65213 lt!65199)))

(declare-fun lt!65205 () Unit!3026)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!182 (List!3220 List!3220) Unit!3026)

(assert (=> b!190637 (= lt!65205 (lemmaConcatTwoListThenFirstIsPrefix!182 lt!65213 lt!65209))))

(declare-fun e!117148 () Bool)

(assert (=> b!190637 e!117148))

(declare-fun res!87338 () Bool)

(assert (=> b!190637 (=> res!87338 e!117148)))

(assert (=> b!190637 (= res!87338 (isEmpty!1599 tokens!465))))

(declare-fun lt!65223 () Unit!3026)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!52 (LexerInterface!477 List!3221 List!3222 Token!926) Unit!3026)

(assert (=> b!190637 (= lt!65223 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!52 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!88701 () Bool)

(declare-fun e!117147 () Bool)

(declare-fun b!190638 () Bool)

(declare-fun e!117166 () Bool)

(declare-fun inv!4030 (String!4145) Bool)

(declare-fun inv!4034 (TokenValueInjection!998) Bool)

(assert (=> b!190638 (= e!117147 (and tp!88701 (inv!4030 (tag!769 (h!8608 rules!1920))) (inv!4034 (transformation!591 (h!8608 rules!1920))) e!117166))))

(declare-fun res!87347 () Bool)

(assert (=> b!190639 (=> (not res!87347) (not e!117161))))

(declare-fun forall!673 (List!3222 Int) Bool)

(assert (=> b!190639 (= res!87347 (forall!673 tokens!465 lambda!5823))))

(assert (=> b!190640 (= e!117166 (and tp!88696 tp!88700))))

(declare-fun b!190641 () Bool)

(declare-fun res!87346 () Bool)

(assert (=> b!190641 (=> (not res!87346) (not e!117155))))

(declare-fun apply!490 (BalanceConc!2018 Int) Token!926)

(assert (=> b!190641 (= res!87346 (= (apply!490 (_1!1862 lt!65202) 0) lt!65198))))

(declare-fun b!190642 () Bool)

(assert (=> b!190642 (= e!117146 e!117143)))

(declare-fun res!87329 () Bool)

(assert (=> b!190642 (=> res!87329 e!117143)))

(declare-fun lt!65200 () Bool)

(assert (=> b!190642 (= res!87329 (not lt!65200))))

(declare-fun e!117157 () Bool)

(assert (=> b!190642 e!117157))

(declare-fun res!87339 () Bool)

(assert (=> b!190642 (=> (not res!87339) (not e!117157))))

(declare-fun lt!65191 () tuple2!3294)

(assert (=> b!190642 (= res!87339 (= (_1!1863 lt!65191) (h!8609 tokens!465)))))

(declare-fun lt!65211 () Option!467)

(assert (=> b!190642 (= lt!65191 (get!932 lt!65211))))

(declare-fun isDefined!318 (Option!467) Bool)

(assert (=> b!190642 (isDefined!318 lt!65211)))

(assert (=> b!190642 (= lt!65211 (maxPrefix!207 thiss!17480 rules!1920 lt!65213))))

(declare-fun b!190643 () Bool)

(declare-fun res!87343 () Bool)

(assert (=> b!190643 (=> (not res!87343) (not e!117157))))

(declare-fun isEmpty!1600 (List!3220) Bool)

(assert (=> b!190643 (= res!87343 (isEmpty!1600 (_2!1863 lt!65191)))))

(declare-fun b!190644 () Bool)

(declare-fun res!87353 () Bool)

(assert (=> b!190644 (=> (not res!87353) (not e!117160))))

(assert (=> b!190644 (= res!87353 (= (apply!490 (_1!1862 lt!65207) 0) separatorToken!170))))

(declare-fun b!190645 () Bool)

(declare-fun e!117153 () Bool)

(declare-fun tp!88703 () Bool)

(declare-fun inv!21 (TokenValue!613) Bool)

(assert (=> b!190645 (= e!117149 (and (inv!21 (value!21159 (h!8609 tokens!465))) e!117153 tp!88703))))

(declare-fun b!190646 () Bool)

(declare-fun isEmpty!1601 (BalanceConc!2016) Bool)

(assert (=> b!190646 (= e!117160 (isEmpty!1601 (_2!1862 lt!65207)))))

(declare-fun b!190647 () Bool)

(declare-fun e!117164 () Bool)

(declare-fun e!117162 () Bool)

(assert (=> b!190647 (= e!117164 (not e!117162))))

(declare-fun res!87333 () Bool)

(assert (=> b!190647 (=> res!87333 e!117162)))

(declare-fun list!1177 (BalanceConc!2016) List!3220)

(declare-fun printWithSeparatorTokenWhenNeededRec!160 (LexerInterface!477 List!3221 BalanceConc!2018 Token!926 Int) BalanceConc!2016)

(declare-fun seqFromList!560 (List!3222) BalanceConc!2018)

(assert (=> b!190647 (= res!87333 (not (= lt!65215 (list!1177 (printWithSeparatorTokenWhenNeededRec!160 thiss!17480 rules!1920 (seqFromList!560 (t!28916 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!65214 () List!3220)

(assert (=> b!190647 (= lt!65214 lt!65199)))

(assert (=> b!190647 (= lt!65199 (++!766 lt!65213 lt!65209))))

(assert (=> b!190647 (= lt!65214 (++!766 (++!766 lt!65213 lt!65203) lt!65215))))

(declare-fun lt!65204 () Unit!3026)

(declare-fun lemmaConcatAssociativity!280 (List!3220 List!3220 List!3220) Unit!3026)

(assert (=> b!190647 (= lt!65204 (lemmaConcatAssociativity!280 lt!65213 lt!65203 lt!65215))))

(declare-fun charsOf!246 (Token!926) BalanceConc!2016)

(assert (=> b!190647 (= lt!65213 (list!1177 (charsOf!246 (h!8609 tokens!465))))))

(assert (=> b!190647 (= lt!65209 (++!766 lt!65203 lt!65215))))

(declare-fun printWithSeparatorTokenWhenNeededList!170 (LexerInterface!477 List!3221 List!3222 Token!926) List!3220)

(assert (=> b!190647 (= lt!65215 (printWithSeparatorTokenWhenNeededList!170 thiss!17480 rules!1920 (t!28916 tokens!465) separatorToken!170))))

(assert (=> b!190647 (= lt!65203 (list!1177 (charsOf!246 separatorToken!170)))))

(declare-fun b!190648 () Bool)

(declare-fun e!117158 () Bool)

(assert (=> b!190648 (= e!117162 e!117158)))

(declare-fun res!87354 () Bool)

(assert (=> b!190648 (=> res!87354 e!117158)))

(assert (=> b!190648 (= res!87354 e!117137)))

(declare-fun res!87342 () Bool)

(assert (=> b!190648 (=> (not res!87342) (not e!117137))))

(assert (=> b!190648 (= res!87342 (not lt!65200))))

(assert (=> b!190648 (= lt!65200 (= lt!65201 lt!65199))))

(declare-fun b!190649 () Bool)

(declare-fun e!117142 () Bool)

(assert (=> b!190649 (= e!117148 e!117142)))

(declare-fun res!87349 () Bool)

(assert (=> b!190649 (=> (not res!87349) (not e!117142))))

(declare-fun lt!65193 () Option!467)

(assert (=> b!190649 (= res!87349 (isDefined!318 lt!65193))))

(assert (=> b!190649 (= lt!65193 (maxPrefix!207 thiss!17480 rules!1920 lt!65201))))

(declare-fun b!190650 () Bool)

(declare-fun tp!88693 () Bool)

(assert (=> b!190650 (= e!117153 (and tp!88693 (inv!4030 (tag!769 (rule!1106 (h!8609 tokens!465)))) (inv!4034 (transformation!591 (rule!1106 (h!8609 tokens!465)))) e!117151))))

(declare-fun b!190651 () Bool)

(declare-fun matchR!153 (Regex!815 List!3220) Bool)

(assert (=> b!190651 (= e!117157 (matchR!153 (regex!591 (rule!1106 (h!8609 tokens!465))) lt!65213))))

(declare-fun b!190652 () Bool)

(declare-fun Unit!3029 () Unit!3026)

(assert (=> b!190652 (= e!117163 Unit!3029)))

(declare-fun b!190653 () Bool)

(declare-fun res!87337 () Bool)

(assert (=> b!190653 (=> (not res!87337) (not e!117161))))

(declare-fun sepAndNonSepRulesDisjointChars!180 (List!3221 List!3221) Bool)

(assert (=> b!190653 (= res!87337 (sepAndNonSepRulesDisjointChars!180 rules!1920 rules!1920))))

(declare-fun b!190654 () Bool)

(declare-fun res!87331 () Bool)

(declare-fun e!117139 () Bool)

(assert (=> b!190654 (=> (not res!87331) (not e!117139))))

(declare-fun rulesInvariant!443 (LexerInterface!477 List!3221) Bool)

(assert (=> b!190654 (= res!87331 (rulesInvariant!443 thiss!17480 rules!1920))))

(declare-fun b!190655 () Bool)

(declare-fun res!87355 () Bool)

(assert (=> b!190655 (=> (not res!87355) (not e!117139))))

(declare-fun isEmpty!1602 (List!3221) Bool)

(assert (=> b!190655 (= res!87355 (not (isEmpty!1602 rules!1920)))))

(declare-fun b!190656 () Bool)

(declare-fun e!117154 () Bool)

(declare-fun lt!65194 () Rule!982)

(assert (=> b!190656 (= e!117154 (= (rule!1106 separatorToken!170) lt!65194))))

(declare-fun b!190657 () Bool)

(declare-fun e!117150 () Bool)

(declare-fun tp!88692 () Bool)

(assert (=> b!190657 (= e!117150 (and e!117147 tp!88692))))

(declare-fun b!190658 () Bool)

(declare-fun res!87328 () Bool)

(assert (=> b!190658 (=> (not res!87328) (not e!117161))))

(assert (=> b!190658 (= res!87328 (rulesProduceIndividualToken!226 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!190635 () Bool)

(assert (=> b!190635 (= e!117139 e!117161)))

(declare-fun res!87340 () Bool)

(assert (=> b!190635 (=> (not res!87340) (not e!117161))))

(declare-fun lt!65210 () BalanceConc!2018)

(declare-fun rulesProduceEachTokenIndividually!269 (LexerInterface!477 List!3221 BalanceConc!2018) Bool)

(assert (=> b!190635 (= res!87340 (rulesProduceEachTokenIndividually!269 thiss!17480 rules!1920 lt!65210))))

(assert (=> b!190635 (= lt!65210 (seqFromList!560 tokens!465))))

(declare-fun res!87330 () Bool)

(assert (=> start!20518 (=> (not res!87330) (not e!117139))))

(assert (=> start!20518 (= res!87330 ((_ is Lexer!475) thiss!17480))))

(assert (=> start!20518 e!117139))

(assert (=> start!20518 true))

(assert (=> start!20518 e!117150))

(declare-fun e!117159 () Bool)

(assert (=> start!20518 (and (inv!4033 separatorToken!170) e!117159)))

(assert (=> start!20518 e!117145))

(declare-fun b!190659 () Bool)

(assert (=> b!190659 (= e!117135 e!117154)))

(declare-fun res!87350 () Bool)

(assert (=> b!190659 (=> (not res!87350) (not e!117154))))

(assert (=> b!190659 (= res!87350 (matchR!153 (regex!591 lt!65194) lt!65203))))

(declare-fun get!933 (Option!466) Rule!982)

(assert (=> b!190659 (= lt!65194 (get!933 lt!65206))))

(declare-fun b!190660 () Bool)

(assert (=> b!190660 (= e!117161 e!117164)))

(declare-fun res!87345 () Bool)

(assert (=> b!190660 (=> (not res!87345) (not e!117164))))

(declare-fun lt!65190 () List!3220)

(assert (=> b!190660 (= res!87345 (= lt!65201 lt!65190))))

(assert (=> b!190660 (= lt!65190 (list!1177 (printWithSeparatorTokenWhenNeededRec!160 thiss!17480 rules!1920 lt!65210 separatorToken!170 0)))))

(assert (=> b!190660 (= lt!65201 (printWithSeparatorTokenWhenNeededList!170 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190661 () Bool)

(assert (=> b!190661 (= e!117155 (isEmpty!1601 (_2!1862 lt!65202)))))

(declare-fun b!190662 () Bool)

(assert (=> b!190662 (= e!117158 e!117144)))

(declare-fun res!87348 () Bool)

(assert (=> b!190662 (=> res!87348 e!117144)))

(declare-fun lt!65222 () List!3220)

(declare-fun lt!65216 () List!3220)

(assert (=> b!190662 (= res!87348 (or (not (= lt!65216 lt!65222)) (not (= lt!65222 lt!65213)) (not (= lt!65216 lt!65213))))))

(declare-fun printList!161 (LexerInterface!477 List!3222) List!3220)

(assert (=> b!190662 (= lt!65222 (printList!161 thiss!17480 (Cons!3212 (h!8609 tokens!465) Nil!3212)))))

(declare-fun lt!65219 () BalanceConc!2016)

(assert (=> b!190662 (= lt!65216 (list!1177 lt!65219))))

(declare-fun lt!65221 () BalanceConc!2018)

(assert (=> b!190662 (= lt!65219 (printTailRec!171 thiss!17480 lt!65221 0 (BalanceConc!2017 Empty!1004)))))

(assert (=> b!190662 (= lt!65219 (print!208 thiss!17480 lt!65221))))

(assert (=> b!190662 (= lt!65221 (singletonSeq!143 (h!8609 tokens!465)))))

(declare-fun b!190663 () Bool)

(declare-fun res!87332 () Bool)

(assert (=> b!190663 (=> (not res!87332) (not e!117164))))

(assert (=> b!190663 (= res!87332 (= (list!1177 (seqFromList!559 lt!65201)) lt!65190))))

(declare-fun e!117152 () Bool)

(assert (=> b!190664 (= e!117152 (and tp!88699 tp!88697))))

(declare-fun e!117140 () Bool)

(declare-fun tp!88695 () Bool)

(declare-fun b!190665 () Bool)

(assert (=> b!190665 (= e!117140 (and tp!88695 (inv!4030 (tag!769 (rule!1106 separatorToken!170))) (inv!4034 (transformation!591 (rule!1106 separatorToken!170))) e!117152))))

(declare-fun tp!88702 () Bool)

(declare-fun b!190666 () Bool)

(assert (=> b!190666 (= e!117159 (and (inv!21 (value!21159 separatorToken!170)) e!117140 tp!88702))))

(declare-fun b!190667 () Bool)

(assert (=> b!190667 (= e!117142 (= (_1!1863 (get!932 lt!65193)) (head!680 tokens!465)))))

(declare-fun b!190668 () Bool)

(declare-fun res!87341 () Bool)

(assert (=> b!190668 (=> res!87341 e!117144)))

(assert (=> b!190668 (= res!87341 (not (rulesProduceIndividualToken!226 thiss!17480 rules!1920 (h!8609 tokens!465))))))

(declare-fun b!190669 () Bool)

(declare-fun res!87351 () Bool)

(assert (=> b!190669 (=> (not res!87351) (not e!117161))))

(assert (=> b!190669 (= res!87351 ((_ is Cons!3212) tokens!465))))

(assert (= (and start!20518 res!87330) b!190655))

(assert (= (and b!190655 res!87355) b!190654))

(assert (= (and b!190654 res!87331) b!190635))

(assert (= (and b!190635 res!87340) b!190658))

(assert (= (and b!190658 res!87328) b!190629))

(assert (= (and b!190629 res!87327) b!190639))

(assert (= (and b!190639 res!87347) b!190653))

(assert (= (and b!190653 res!87337) b!190669))

(assert (= (and b!190669 res!87351) b!190660))

(assert (= (and b!190660 res!87345) b!190663))

(assert (= (and b!190663 res!87332) b!190647))

(assert (= (and b!190647 (not res!87333)) b!190648))

(assert (= (and b!190648 res!87342) b!190631))

(assert (= (and b!190648 (not res!87354)) b!190662))

(assert (= (and b!190662 (not res!87348)) b!190668))

(assert (= (and b!190668 (not res!87341)) b!190634))

(assert (= (and b!190634 (not res!87344)) b!190630))

(assert (= (and b!190630 (not res!87336)) b!190642))

(assert (= (and b!190642 res!87339) b!190643))

(assert (= (and b!190643 res!87343) b!190651))

(assert (= (and b!190642 (not res!87329)) b!190637))

(assert (= (and b!190637 (not res!87338)) b!190649))

(assert (= (and b!190649 res!87349) b!190667))

(assert (= (and b!190637 c!36410) b!190633))

(assert (= (and b!190637 (not c!36410)) b!190652))

(assert (= (and b!190637 res!87352) b!190644))

(assert (= (and b!190644 res!87353) b!190646))

(assert (= (and b!190637 res!87334) b!190659))

(assert (= (and b!190659 res!87350) b!190656))

(assert (= (and b!190637 res!87335) b!190641))

(assert (= (and b!190641 res!87346) b!190661))

(assert (= b!190638 b!190640))

(assert (= b!190657 b!190638))

(assert (= (and start!20518 ((_ is Cons!3211) rules!1920)) b!190657))

(assert (= b!190665 b!190664))

(assert (= b!190666 b!190665))

(assert (= start!20518 b!190666))

(assert (= b!190650 b!190632))

(assert (= b!190645 b!190650))

(assert (= b!190636 b!190645))

(assert (= (and start!20518 ((_ is Cons!3212) tokens!465)) b!190636))

(declare-fun m!196047 () Bool)

(assert (=> b!190630 m!196047))

(assert (=> b!190630 m!196047))

(declare-fun m!196049 () Bool)

(assert (=> b!190630 m!196049))

(assert (=> b!190630 m!196049))

(declare-fun m!196051 () Bool)

(assert (=> b!190630 m!196051))

(declare-fun m!196053 () Bool)

(assert (=> b!190630 m!196053))

(declare-fun m!196055 () Bool)

(assert (=> b!190662 m!196055))

(declare-fun m!196057 () Bool)

(assert (=> b!190662 m!196057))

(declare-fun m!196059 () Bool)

(assert (=> b!190662 m!196059))

(declare-fun m!196061 () Bool)

(assert (=> b!190662 m!196061))

(declare-fun m!196063 () Bool)

(assert (=> b!190662 m!196063))

(declare-fun m!196065 () Bool)

(assert (=> b!190645 m!196065))

(declare-fun m!196067 () Bool)

(assert (=> b!190634 m!196067))

(assert (=> b!190634 m!196067))

(declare-fun m!196069 () Bool)

(assert (=> b!190634 m!196069))

(declare-fun m!196071 () Bool)

(assert (=> b!190634 m!196071))

(declare-fun m!196073 () Bool)

(assert (=> b!190658 m!196073))

(declare-fun m!196075 () Bool)

(assert (=> b!190663 m!196075))

(assert (=> b!190663 m!196075))

(declare-fun m!196077 () Bool)

(assert (=> b!190663 m!196077))

(declare-fun m!196079 () Bool)

(assert (=> b!190635 m!196079))

(declare-fun m!196081 () Bool)

(assert (=> b!190635 m!196081))

(declare-fun m!196083 () Bool)

(assert (=> b!190631 m!196083))

(declare-fun m!196085 () Bool)

(assert (=> b!190661 m!196085))

(declare-fun m!196087 () Bool)

(assert (=> b!190655 m!196087))

(declare-fun m!196089 () Bool)

(assert (=> b!190643 m!196089))

(declare-fun m!196091 () Bool)

(assert (=> b!190653 m!196091))

(declare-fun m!196093 () Bool)

(assert (=> b!190650 m!196093))

(declare-fun m!196095 () Bool)

(assert (=> b!190650 m!196095))

(declare-fun m!196097 () Bool)

(assert (=> b!190642 m!196097))

(declare-fun m!196099 () Bool)

(assert (=> b!190642 m!196099))

(declare-fun m!196101 () Bool)

(assert (=> b!190642 m!196101))

(declare-fun m!196103 () Bool)

(assert (=> b!190651 m!196103))

(declare-fun m!196105 () Bool)

(assert (=> b!190639 m!196105))

(declare-fun m!196107 () Bool)

(assert (=> b!190649 m!196107))

(declare-fun m!196109 () Bool)

(assert (=> b!190649 m!196109))

(declare-fun m!196111 () Bool)

(assert (=> b!190647 m!196111))

(declare-fun m!196113 () Bool)

(assert (=> b!190647 m!196113))

(declare-fun m!196115 () Bool)

(assert (=> b!190647 m!196115))

(declare-fun m!196117 () Bool)

(assert (=> b!190647 m!196117))

(declare-fun m!196119 () Bool)

(assert (=> b!190647 m!196119))

(assert (=> b!190647 m!196115))

(declare-fun m!196121 () Bool)

(assert (=> b!190647 m!196121))

(assert (=> b!190647 m!196111))

(declare-fun m!196123 () Bool)

(assert (=> b!190647 m!196123))

(declare-fun m!196125 () Bool)

(assert (=> b!190647 m!196125))

(declare-fun m!196127 () Bool)

(assert (=> b!190647 m!196127))

(declare-fun m!196129 () Bool)

(assert (=> b!190647 m!196129))

(declare-fun m!196131 () Bool)

(assert (=> b!190647 m!196131))

(assert (=> b!190647 m!196125))

(assert (=> b!190647 m!196131))

(declare-fun m!196133 () Bool)

(assert (=> b!190647 m!196133))

(assert (=> b!190647 m!196123))

(declare-fun m!196135 () Bool)

(assert (=> b!190647 m!196135))

(declare-fun m!196137 () Bool)

(assert (=> b!190654 m!196137))

(declare-fun m!196139 () Bool)

(assert (=> b!190659 m!196139))

(declare-fun m!196141 () Bool)

(assert (=> b!190659 m!196141))

(declare-fun m!196143 () Bool)

(assert (=> b!190637 m!196143))

(declare-fun m!196145 () Bool)

(assert (=> b!190637 m!196145))

(declare-fun m!196147 () Bool)

(assert (=> b!190637 m!196147))

(declare-fun m!196149 () Bool)

(assert (=> b!190637 m!196149))

(declare-fun m!196151 () Bool)

(assert (=> b!190637 m!196151))

(assert (=> b!190637 m!196109))

(declare-fun m!196153 () Bool)

(assert (=> b!190637 m!196153))

(declare-fun m!196155 () Bool)

(assert (=> b!190637 m!196155))

(declare-fun m!196157 () Bool)

(assert (=> b!190637 m!196157))

(declare-fun m!196159 () Bool)

(assert (=> b!190637 m!196159))

(declare-fun m!196161 () Bool)

(assert (=> b!190637 m!196161))

(declare-fun m!196163 () Bool)

(assert (=> b!190637 m!196163))

(declare-fun m!196165 () Bool)

(assert (=> b!190637 m!196165))

(declare-fun m!196167 () Bool)

(assert (=> b!190637 m!196167))

(declare-fun m!196169 () Bool)

(assert (=> b!190637 m!196169))

(declare-fun m!196171 () Bool)

(assert (=> b!190637 m!196171))

(declare-fun m!196173 () Bool)

(assert (=> b!190637 m!196173))

(assert (=> b!190637 m!196109))

(declare-fun m!196175 () Bool)

(assert (=> b!190637 m!196175))

(declare-fun m!196177 () Bool)

(assert (=> b!190637 m!196177))

(declare-fun m!196179 () Bool)

(assert (=> b!190637 m!196179))

(declare-fun m!196181 () Bool)

(assert (=> b!190637 m!196181))

(declare-fun m!196183 () Bool)

(assert (=> b!190637 m!196183))

(declare-fun m!196185 () Bool)

(assert (=> b!190637 m!196185))

(declare-fun m!196187 () Bool)

(assert (=> b!190637 m!196187))

(declare-fun m!196189 () Bool)

(assert (=> b!190637 m!196189))

(declare-fun m!196191 () Bool)

(assert (=> start!20518 m!196191))

(declare-fun m!196193 () Bool)

(assert (=> b!190636 m!196193))

(declare-fun m!196195 () Bool)

(assert (=> b!190646 m!196195))

(declare-fun m!196197 () Bool)

(assert (=> b!190638 m!196197))

(declare-fun m!196199 () Bool)

(assert (=> b!190638 m!196199))

(declare-fun m!196201 () Bool)

(assert (=> b!190666 m!196201))

(declare-fun m!196203 () Bool)

(assert (=> b!190668 m!196203))

(declare-fun m!196205 () Bool)

(assert (=> b!190644 m!196205))

(declare-fun m!196207 () Bool)

(assert (=> b!190641 m!196207))

(declare-fun m!196209 () Bool)

(assert (=> b!190660 m!196209))

(assert (=> b!190660 m!196209))

(declare-fun m!196211 () Bool)

(assert (=> b!190660 m!196211))

(declare-fun m!196213 () Bool)

(assert (=> b!190660 m!196213))

(declare-fun m!196215 () Bool)

(assert (=> b!190665 m!196215))

(declare-fun m!196217 () Bool)

(assert (=> b!190665 m!196217))

(declare-fun m!196219 () Bool)

(assert (=> b!190667 m!196219))

(declare-fun m!196221 () Bool)

(assert (=> b!190667 m!196221))

(check-sat (not b!190646) b_and!13227 (not b_next!7621) (not b!190657) (not b_next!7627) (not b!190636) (not b!190666) (not b!190635) (not b!190668) (not b!190661) (not b!190643) (not b!190637) (not b_next!7619) (not b!190642) b_and!13231 (not b!190630) b_and!13221 b_and!13223 (not b!190665) (not b_next!7625) (not b!190645) (not b!190663) b_and!13229 b_and!13225 (not b_next!7617) (not start!20518) (not b!190639) (not b!190678) (not b!190662) (not b!190631) (not b!190644) (not b!190634) (not b!190638) (not b!190649) (not b!190658) (not b!190650) (not b!190660) (not b!190655) (not b!190667) (not b!190641) (not b!190654) (not b!190651) (not b!190659) (not b!190647) (not b!190653) (not b_next!7623))
(check-sat (not b_next!7619) b_and!13231 b_and!13227 (not b_next!7621) (not b_next!7625) (not b_next!7627) (not b_next!7617) (not b_next!7623) b_and!13221 b_and!13223 b_and!13229 b_and!13225)
