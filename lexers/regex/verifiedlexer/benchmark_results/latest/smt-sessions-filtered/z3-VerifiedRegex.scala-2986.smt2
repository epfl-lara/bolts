; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!178106 () Bool)

(assert start!178106)

(declare-fun b!1787195 () Bool)

(declare-fun b_free!49679 () Bool)

(declare-fun b_next!50383 () Bool)

(assert (=> b!1787195 (= b_free!49679 (not b_next!50383))))

(declare-fun tp!505439 () Bool)

(declare-fun b_and!137619 () Bool)

(assert (=> b!1787195 (= tp!505439 b_and!137619)))

(declare-fun b_free!49681 () Bool)

(declare-fun b_next!50385 () Bool)

(assert (=> b!1787195 (= b_free!49681 (not b_next!50385))))

(declare-fun tp!505446 () Bool)

(declare-fun b_and!137621 () Bool)

(assert (=> b!1787195 (= tp!505446 b_and!137621)))

(declare-fun b!1787197 () Bool)

(declare-fun b_free!49683 () Bool)

(declare-fun b_next!50387 () Bool)

(assert (=> b!1787197 (= b_free!49683 (not b_next!50387))))

(declare-fun tp!505440 () Bool)

(declare-fun b_and!137623 () Bool)

(assert (=> b!1787197 (= tp!505440 b_and!137623)))

(declare-fun b_free!49685 () Bool)

(declare-fun b_next!50389 () Bool)

(assert (=> b!1787197 (= b_free!49685 (not b_next!50389))))

(declare-fun tp!505443 () Bool)

(declare-fun b_and!137625 () Bool)

(assert (=> b!1787197 (= tp!505443 b_and!137625)))

(declare-fun b!1787163 () Bool)

(declare-fun b_free!49687 () Bool)

(declare-fun b_next!50391 () Bool)

(assert (=> b!1787163 (= b_free!49687 (not b_next!50391))))

(declare-fun tp!505438 () Bool)

(declare-fun b_and!137627 () Bool)

(assert (=> b!1787163 (= tp!505438 b_and!137627)))

(declare-fun b_free!49689 () Bool)

(declare-fun b_next!50393 () Bool)

(assert (=> b!1787163 (= b_free!49689 (not b_next!50393))))

(declare-fun tp!505437 () Bool)

(declare-fun b_and!137629 () Bool)

(assert (=> b!1787163 (= tp!505437 b_and!137629)))

(declare-fun b!1787210 () Bool)

(declare-fun e!1143857 () Bool)

(assert (=> b!1787210 (= e!1143857 true)))

(declare-fun b!1787209 () Bool)

(declare-fun e!1143856 () Bool)

(assert (=> b!1787209 (= e!1143856 e!1143857)))

(declare-fun b!1787208 () Bool)

(declare-fun e!1143855 () Bool)

(assert (=> b!1787208 (= e!1143855 e!1143856)))

(declare-fun b!1787162 () Bool)

(assert (=> b!1787162 e!1143855))

(assert (= b!1787209 b!1787210))

(assert (= b!1787208 b!1787209))

(assert (= b!1787162 b!1787208))

(declare-fun order!12779 () Int)

(declare-fun lambda!70804 () Int)

(declare-datatypes ((List!19773 0))(
  ( (Nil!19703) (Cons!19703 (h!25104 (_ BitVec 16)) (t!167240 List!19773)) )
))
(declare-datatypes ((TokenValue!3623 0))(
  ( (FloatLiteralValue!7246 (text!25806 List!19773)) (TokenValueExt!3622 (__x!12548 Int)) (Broken!18115 (value!110337 List!19773)) (Object!3692) (End!3623) (Def!3623) (Underscore!3623) (Match!3623) (Else!3623) (Error!3623) (Case!3623) (If!3623) (Extends!3623) (Abstract!3623) (Class!3623) (Val!3623) (DelimiterValue!7246 (del!3683 List!19773)) (KeywordValue!3629 (value!110338 List!19773)) (CommentValue!7246 (value!110339 List!19773)) (WhitespaceValue!7246 (value!110340 List!19773)) (IndentationValue!3623 (value!110341 List!19773)) (String!22446) (Int32!3623) (Broken!18116 (value!110342 List!19773)) (Boolean!3624) (Unit!34084) (OperatorValue!3626 (op!3683 List!19773)) (IdentifierValue!7246 (value!110343 List!19773)) (IdentifierValue!7247 (value!110344 List!19773)) (WhitespaceValue!7247 (value!110345 List!19773)) (True!7246) (False!7246) (Broken!18117 (value!110346 List!19773)) (Broken!18118 (value!110347 List!19773)) (True!7247) (RightBrace!3623) (RightBracket!3623) (Colon!3623) (Null!3623) (Comma!3623) (LeftBracket!3623) (False!7247) (LeftBrace!3623) (ImaginaryLiteralValue!3623 (text!25807 List!19773)) (StringLiteralValue!10869 (value!110348 List!19773)) (EOFValue!3623 (value!110349 List!19773)) (IdentValue!3623 (value!110350 List!19773)) (DelimiterValue!7247 (value!110351 List!19773)) (DedentValue!3623 (value!110352 List!19773)) (NewLineValue!3623 (value!110353 List!19773)) (IntegerValue!10869 (value!110354 (_ BitVec 32)) (text!25808 List!19773)) (IntegerValue!10870 (value!110355 Int) (text!25809 List!19773)) (Times!3623) (Or!3623) (Equal!3623) (Minus!3623) (Broken!18119 (value!110356 List!19773)) (And!3623) (Div!3623) (LessEqual!3623) (Mod!3623) (Concat!8484) (Not!3623) (Plus!3623) (SpaceValue!3623 (value!110357 List!19773)) (IntegerValue!10871 (value!110358 Int) (text!25810 List!19773)) (StringLiteralValue!10870 (text!25811 List!19773)) (FloatLiteralValue!7247 (text!25812 List!19773)) (BytesLiteralValue!3623 (value!110359 List!19773)) (CommentValue!7247 (value!110360 List!19773)) (StringLiteralValue!10871 (value!110361 List!19773)) (ErrorTokenValue!3623 (msg!3684 List!19773)) )
))
(declare-datatypes ((C!9896 0))(
  ( (C!9897 (val!5544 Int)) )
))
(declare-datatypes ((List!19774 0))(
  ( (Nil!19704) (Cons!19704 (h!25105 C!9896) (t!167241 List!19774)) )
))
(declare-datatypes ((Regex!4861 0))(
  ( (ElementMatch!4861 (c!290612 C!9896)) (Concat!8485 (regOne!10234 Regex!4861) (regTwo!10234 Regex!4861)) (EmptyExpr!4861) (Star!4861 (reg!5190 Regex!4861)) (EmptyLang!4861) (Union!4861 (regOne!10235 Regex!4861) (regTwo!10235 Regex!4861)) )
))
(declare-datatypes ((String!22447 0))(
  ( (String!22448 (value!110362 String)) )
))
(declare-datatypes ((IArray!13115 0))(
  ( (IArray!13116 (innerList!6615 List!19774)) )
))
(declare-datatypes ((Conc!6555 0))(
  ( (Node!6555 (left!15799 Conc!6555) (right!16129 Conc!6555) (csize!13340 Int) (cheight!6766 Int)) (Leaf!9542 (xs!9431 IArray!13115) (csize!13341 Int)) (Empty!6555) )
))
(declare-datatypes ((BalanceConc!13054 0))(
  ( (BalanceConc!13055 (c!290613 Conc!6555)) )
))
(declare-datatypes ((TokenValueInjection!6906 0))(
  ( (TokenValueInjection!6907 (toValue!5060 Int) (toChars!4919 Int)) )
))
(declare-datatypes ((Rule!6866 0))(
  ( (Rule!6867 (regex!3533 Regex!4861) (tag!3937 String!22447) (isSeparator!3533 Bool) (transformation!3533 TokenValueInjection!6906)) )
))
(declare-datatypes ((Token!6632 0))(
  ( (Token!6633 (value!110363 TokenValue!3623) (rule!5625 Rule!6866) (size!15652 Int) (originalCharacters!4347 List!19774)) )
))
(declare-datatypes ((tuple2!19290 0))(
  ( (tuple2!19291 (_1!11047 Token!6632) (_2!11047 List!19774)) )
))
(declare-fun lt!696165 () tuple2!19290)

(declare-fun order!12781 () Int)

(declare-fun dynLambda!9727 (Int Int) Int)

(declare-fun dynLambda!9728 (Int Int) Int)

(assert (=> b!1787210 (< (dynLambda!9727 order!12779 (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) (dynLambda!9728 order!12781 lambda!70804))))

(declare-fun order!12783 () Int)

(declare-fun dynLambda!9729 (Int Int) Int)

(assert (=> b!1787210 (< (dynLambda!9729 order!12783 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) (dynLambda!9728 order!12781 lambda!70804))))

(declare-fun b!1787160 () Bool)

(declare-fun e!1143821 () Bool)

(declare-fun e!1143829 () Bool)

(assert (=> b!1787160 (= e!1143821 e!1143829)))

(declare-fun res!805966 () Bool)

(assert (=> b!1787160 (=> (not res!805966) (not e!1143829))))

(declare-fun lt!696192 () tuple2!19290)

(declare-fun token!523 () Token!6632)

(assert (=> b!1787160 (= res!805966 (= (_1!11047 lt!696192) token!523))))

(declare-datatypes ((Option!4088 0))(
  ( (None!4087) (Some!4087 (v!25586 tuple2!19290)) )
))
(declare-fun lt!696161 () Option!4088)

(declare-fun get!6072 (Option!4088) tuple2!19290)

(assert (=> b!1787160 (= lt!696192 (get!6072 lt!696161))))

(declare-fun b!1787161 () Bool)

(declare-fun e!1143823 () Bool)

(declare-fun lt!696170 () Rule!6866)

(assert (=> b!1787161 (= e!1143823 (= (rule!5625 (_1!11047 lt!696165)) lt!696170))))

(declare-fun e!1143838 () Bool)

(declare-fun e!1143817 () Bool)

(assert (=> b!1787162 (= e!1143838 e!1143817)))

(declare-fun res!805957 () Bool)

(assert (=> b!1787162 (=> res!805957 e!1143817)))

(declare-fun Forall!900 (Int) Bool)

(assert (=> b!1787162 (= res!805957 (not (Forall!900 lambda!70804)))))

(declare-datatypes ((Unit!34085 0))(
  ( (Unit!34086) )
))
(declare-fun lt!696156 () Unit!34085)

(declare-fun lemmaInv!732 (TokenValueInjection!6906) Unit!34085)

(assert (=> b!1787162 (= lt!696156 (lemmaInv!732 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))))))

(declare-fun e!1143833 () Bool)

(assert (=> b!1787163 (= e!1143833 (and tp!505438 tp!505437))))

(declare-fun res!805979 () Bool)

(declare-fun e!1143837 () Bool)

(assert (=> start!178106 (=> (not res!805979) (not e!1143837))))

(declare-datatypes ((LexerInterface!3162 0))(
  ( (LexerInterfaceExt!3159 (__x!12549 Int)) (Lexer!3160) )
))
(declare-fun thiss!24550 () LexerInterface!3162)

(get-info :version)

(assert (=> start!178106 (= res!805979 ((_ is Lexer!3160) thiss!24550))))

(assert (=> start!178106 e!1143837))

(declare-fun e!1143819 () Bool)

(assert (=> start!178106 e!1143819))

(declare-fun e!1143826 () Bool)

(assert (=> start!178106 e!1143826))

(assert (=> start!178106 true))

(declare-fun e!1143830 () Bool)

(declare-fun inv!25663 (Token!6632) Bool)

(assert (=> start!178106 (and (inv!25663 token!523) e!1143830)))

(declare-fun e!1143816 () Bool)

(assert (=> start!178106 e!1143816))

(declare-fun b!1787164 () Bool)

(declare-fun e!1143827 () Bool)

(declare-fun e!1143847 () Bool)

(assert (=> b!1787164 (= e!1143827 e!1143847)))

(declare-fun res!805975 () Bool)

(assert (=> b!1787164 (=> res!805975 e!1143847)))

(declare-fun lt!696197 () Bool)

(assert (=> b!1787164 (= res!805975 lt!696197)))

(declare-fun lt!696184 () Unit!34085)

(declare-fun e!1143842 () Unit!34085)

(assert (=> b!1787164 (= lt!696184 e!1143842)))

(declare-fun c!290611 () Bool)

(assert (=> b!1787164 (= c!290611 lt!696197)))

(declare-fun lt!696195 () Int)

(declare-fun lt!696159 () Int)

(assert (=> b!1787164 (= lt!696197 (> lt!696195 lt!696159))))

(declare-fun lt!696157 () BalanceConc!13054)

(declare-fun size!15653 (BalanceConc!13054) Int)

(assert (=> b!1787164 (= lt!696159 (size!15653 lt!696157))))

(declare-fun lt!696193 () Regex!4861)

(declare-fun lt!696190 () List!19774)

(declare-fun matchR!2334 (Regex!4861 List!19774) Bool)

(assert (=> b!1787164 (matchR!2334 lt!696193 lt!696190)))

(declare-fun lt!696175 () Unit!34085)

(declare-fun rule!422 () Rule!6866)

(declare-datatypes ((List!19775 0))(
  ( (Nil!19705) (Cons!19705 (h!25106 Rule!6866) (t!167242 List!19775)) )
))
(declare-fun rules!3447 () List!19775)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!240 (LexerInterface!3162 List!19775 List!19774 Token!6632 Rule!6866 List!19774) Unit!34085)

(assert (=> b!1787164 (= lt!696175 (lemmaMaxPrefixThenMatchesRulesRegex!240 thiss!24550 rules!3447 lt!696190 token!523 rule!422 Nil!19704))))

(declare-fun b!1787165 () Bool)

(declare-fun res!805977 () Bool)

(assert (=> b!1787165 (=> (not res!805977) (not e!1143829))))

(declare-fun isEmpty!12454 (List!19774) Bool)

(assert (=> b!1787165 (= res!805977 (isEmpty!12454 (_2!11047 lt!696192)))))

(declare-fun b!1787166 () Bool)

(declare-fun e!1143844 () Bool)

(assert (=> b!1787166 (= e!1143844 e!1143827)))

(declare-fun res!805973 () Bool)

(assert (=> b!1787166 (=> res!805973 e!1143827)))

(declare-fun lt!696188 () List!19774)

(declare-fun lt!696185 () Option!4088)

(assert (=> b!1787166 (= res!805973 (or (not (= lt!696188 (_2!11047 lt!696165))) (not (= lt!696185 (Some!4087 (tuple2!19291 (_1!11047 lt!696165) lt!696188))))))))

(assert (=> b!1787166 (= (_2!11047 lt!696165) lt!696188)))

(declare-fun lt!696179 () List!19774)

(declare-fun lt!696183 () Unit!34085)

(declare-fun lt!696204 () List!19774)

(declare-fun lemmaSamePrefixThenSameSuffix!884 (List!19774 List!19774 List!19774 List!19774 List!19774) Unit!34085)

(assert (=> b!1787166 (= lt!696183 (lemmaSamePrefixThenSameSuffix!884 lt!696204 (_2!11047 lt!696165) lt!696204 lt!696188 lt!696179))))

(declare-fun getSuffix!940 (List!19774 List!19774) List!19774)

(assert (=> b!1787166 (= lt!696188 (getSuffix!940 lt!696179 lt!696204))))

(declare-fun lt!696178 () Int)

(declare-fun lt!696201 () TokenValue!3623)

(assert (=> b!1787166 (= lt!696185 (Some!4087 (tuple2!19291 (Token!6633 lt!696201 (rule!5625 (_1!11047 lt!696165)) lt!696178 lt!696204) (_2!11047 lt!696165))))))

(declare-fun maxPrefixOneRule!1085 (LexerInterface!3162 Rule!6866 List!19774) Option!4088)

(assert (=> b!1787166 (= lt!696185 (maxPrefixOneRule!1085 thiss!24550 (rule!5625 (_1!11047 lt!696165)) lt!696179))))

(declare-fun size!15654 (List!19774) Int)

(assert (=> b!1787166 (= lt!696178 (size!15654 lt!696204))))

(declare-fun apply!5333 (TokenValueInjection!6906 BalanceConc!13054) TokenValue!3623)

(declare-fun seqFromList!2502 (List!19774) BalanceConc!13054)

(assert (=> b!1787166 (= lt!696201 (apply!5333 (transformation!3533 (rule!5625 (_1!11047 lt!696165))) (seqFromList!2502 lt!696204)))))

(declare-fun lt!696182 () Unit!34085)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!463 (LexerInterface!3162 List!19775 List!19774 List!19774 List!19774 Rule!6866) Unit!34085)

(assert (=> b!1787166 (= lt!696182 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!463 thiss!24550 rules!3447 lt!696204 lt!696179 (_2!11047 lt!696165) (rule!5625 (_1!11047 lt!696165))))))

(declare-fun b!1787167 () Bool)

(declare-fun Unit!34087 () Unit!34085)

(assert (=> b!1787167 (= e!1143842 Unit!34087)))

(declare-fun lt!696163 () Unit!34085)

(assert (=> b!1787167 (= lt!696163 (lemmaMaxPrefixThenMatchesRulesRegex!240 thiss!24550 rules!3447 lt!696179 (_1!11047 lt!696165) (rule!5625 (_1!11047 lt!696165)) (_2!11047 lt!696165)))))

(assert (=> b!1787167 (matchR!2334 lt!696193 lt!696204)))

(declare-fun lt!696164 () List!19774)

(assert (=> b!1787167 (= lt!696164 (getSuffix!940 lt!696179 lt!696190))))

(declare-fun lt!696167 () Unit!34085)

(declare-fun suffix!1421 () List!19774)

(assert (=> b!1787167 (= lt!696167 (lemmaSamePrefixThenSameSuffix!884 lt!696190 suffix!1421 lt!696190 lt!696164 lt!696179))))

(assert (=> b!1787167 (= suffix!1421 lt!696164)))

(declare-fun lt!696203 () Unit!34085)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!309 (List!19774 List!19774) Unit!34085)

(assert (=> b!1787167 (= lt!696203 (lemmaAddHeadSuffixToPrefixStillPrefix!309 lt!696190 lt!696179))))

(declare-fun isPrefix!1773 (List!19774 List!19774) Bool)

(declare-fun ++!5357 (List!19774 List!19774) List!19774)

(declare-fun head!4188 (List!19774) C!9896)

(assert (=> b!1787167 (isPrefix!1773 (++!5357 lt!696190 (Cons!19704 (head!4188 lt!696164) Nil!19704)) lt!696179)))

(declare-fun lt!696199 () List!19774)

(declare-fun lt!696196 () Unit!34085)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!181 (List!19774 List!19774 List!19774) Unit!34085)

(assert (=> b!1787167 (= lt!696196 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!181 lt!696204 lt!696199 lt!696179))))

(assert (=> b!1787167 (isPrefix!1773 lt!696199 lt!696204)))

(declare-fun lt!696198 () Unit!34085)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!172 (Regex!4861 List!19774 List!19774) Unit!34085)

(assert (=> b!1787167 (= lt!696198 (lemmaNotPrefixMatchThenCannotMatchLonger!172 lt!696193 lt!696199 lt!696204))))

(assert (=> b!1787167 false))

(declare-fun b!1787168 () Bool)

(declare-fun tp!505444 () Bool)

(declare-fun e!1143848 () Bool)

(declare-fun inv!21 (TokenValue!3623) Bool)

(assert (=> b!1787168 (= e!1143830 (and (inv!21 (value!110363 token!523)) e!1143848 tp!505444))))

(declare-fun b!1787169 () Bool)

(declare-fun res!805956 () Bool)

(assert (=> b!1787169 (=> (not res!805956) (not e!1143837))))

(declare-fun isEmpty!12455 (List!19775) Bool)

(assert (=> b!1787169 (= res!805956 (not (isEmpty!12455 rules!3447)))))

(declare-fun b!1787170 () Bool)

(declare-fun res!805959 () Bool)

(assert (=> b!1787170 (=> res!805959 e!1143838)))

(assert (=> b!1787170 (= res!805959 (not (matchR!2334 (regex!3533 (rule!5625 (_1!11047 lt!696165))) lt!696204)))))

(declare-fun b!1787171 () Bool)

(declare-fun e!1143839 () Unit!34085)

(declare-fun Unit!34088 () Unit!34085)

(assert (=> b!1787171 (= e!1143839 Unit!34088)))

(declare-fun b!1787172 () Bool)

(declare-fun e!1143836 () Bool)

(assert (=> b!1787172 (= e!1143836 e!1143838)))

(declare-fun res!805961 () Bool)

(assert (=> b!1787172 (=> res!805961 e!1143838)))

(assert (=> b!1787172 (= res!805961 (not (isPrefix!1773 lt!696204 lt!696179)))))

(assert (=> b!1787172 (isPrefix!1773 lt!696204 (++!5357 lt!696204 (_2!11047 lt!696165)))))

(declare-fun lt!696177 () Unit!34085)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1282 (List!19774 List!19774) Unit!34085)

(assert (=> b!1787172 (= lt!696177 (lemmaConcatTwoListThenFirstIsPrefix!1282 lt!696204 (_2!11047 lt!696165)))))

(declare-fun lt!696187 () BalanceConc!13054)

(declare-fun list!8015 (BalanceConc!13054) List!19774)

(assert (=> b!1787172 (= lt!696204 (list!8015 lt!696187))))

(declare-fun charsOf!2182 (Token!6632) BalanceConc!13054)

(assert (=> b!1787172 (= lt!696187 (charsOf!2182 (_1!11047 lt!696165)))))

(declare-fun e!1143832 () Bool)

(assert (=> b!1787172 e!1143832))

(declare-fun res!805962 () Bool)

(assert (=> b!1787172 (=> (not res!805962) (not e!1143832))))

(declare-datatypes ((Option!4089 0))(
  ( (None!4088) (Some!4088 (v!25587 Rule!6866)) )
))
(declare-fun lt!696202 () Option!4089)

(declare-fun isDefined!3431 (Option!4089) Bool)

(assert (=> b!1787172 (= res!805962 (isDefined!3431 lt!696202))))

(declare-fun getRuleFromTag!581 (LexerInterface!3162 List!19775 String!22447) Option!4089)

(assert (=> b!1787172 (= lt!696202 (getRuleFromTag!581 thiss!24550 rules!3447 (tag!3937 (rule!5625 (_1!11047 lt!696165)))))))

(declare-fun lt!696194 () Unit!34085)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!581 (LexerInterface!3162 List!19775 List!19774 Token!6632) Unit!34085)

(assert (=> b!1787172 (= lt!696194 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!581 thiss!24550 rules!3447 lt!696179 (_1!11047 lt!696165)))))

(declare-fun lt!696168 () Option!4088)

(assert (=> b!1787172 (= lt!696165 (get!6072 lt!696168))))

(declare-fun lt!696176 () Unit!34085)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!684 (LexerInterface!3162 List!19775 List!19774 List!19774) Unit!34085)

(assert (=> b!1787172 (= lt!696176 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!684 thiss!24550 rules!3447 lt!696190 suffix!1421))))

(declare-fun maxPrefix!1716 (LexerInterface!3162 List!19775 List!19774) Option!4088)

(assert (=> b!1787172 (= lt!696168 (maxPrefix!1716 thiss!24550 rules!3447 lt!696179))))

(assert (=> b!1787172 (isPrefix!1773 lt!696190 lt!696179)))

(declare-fun lt!696162 () Unit!34085)

(assert (=> b!1787172 (= lt!696162 (lemmaConcatTwoListThenFirstIsPrefix!1282 lt!696190 suffix!1421))))

(assert (=> b!1787172 (= lt!696179 (++!5357 lt!696190 suffix!1421))))

(declare-fun b!1787173 () Bool)

(declare-fun res!805967 () Bool)

(assert (=> b!1787173 (=> (not res!805967) (not e!1143837))))

(declare-fun contains!3565 (List!19775 Rule!6866) Bool)

(assert (=> b!1787173 (= res!805967 (contains!3565 rules!3447 rule!422))))

(declare-fun b!1787174 () Bool)

(declare-fun e!1143846 () Bool)

(declare-fun e!1143840 () Bool)

(assert (=> b!1787174 (= e!1143846 e!1143840)))

(declare-fun res!805960 () Bool)

(assert (=> b!1787174 (=> res!805960 e!1143840)))

(assert (=> b!1787174 (= res!805960 (= (rule!5625 (_1!11047 lt!696165)) (rule!5625 token!523)))))

(assert (=> b!1787174 (= suffix!1421 (_2!11047 lt!696165))))

(declare-fun lt!696166 () Unit!34085)

(assert (=> b!1787174 (= lt!696166 (lemmaSamePrefixThenSameSuffix!884 lt!696190 suffix!1421 lt!696190 (_2!11047 lt!696165) lt!696179))))

(assert (=> b!1787174 (= lt!696204 lt!696190)))

(declare-fun lt!696172 () Unit!34085)

(declare-fun lemmaIsPrefixSameLengthThenSameList!269 (List!19774 List!19774 List!19774) Unit!34085)

(assert (=> b!1787174 (= lt!696172 (lemmaIsPrefixSameLengthThenSameList!269 lt!696204 lt!696190 lt!696179))))

(declare-fun b!1787175 () Bool)

(declare-fun e!1143825 () Bool)

(assert (=> b!1787175 (= e!1143825 e!1143844)))

(declare-fun res!805971 () Bool)

(assert (=> b!1787175 (=> res!805971 e!1143844)))

(declare-fun lt!696173 () TokenValue!3623)

(assert (=> b!1787175 (= res!805971 (not (= lt!696168 (Some!4087 (tuple2!19291 (Token!6633 lt!696173 (rule!5625 (_1!11047 lt!696165)) lt!696195 lt!696204) (_2!11047 lt!696165))))))))

(assert (=> b!1787175 (= lt!696195 (size!15653 lt!696187))))

(assert (=> b!1787175 (= lt!696173 (apply!5333 (transformation!3533 (rule!5625 (_1!11047 lt!696165))) lt!696187))))

(declare-fun lt!696191 () Unit!34085)

(declare-fun lemmaCharactersSize!591 (Token!6632) Unit!34085)

(assert (=> b!1787175 (= lt!696191 (lemmaCharactersSize!591 (_1!11047 lt!696165)))))

(declare-fun lt!696200 () Unit!34085)

(declare-fun lemmaEqSameImage!444 (TokenValueInjection!6906 BalanceConc!13054 BalanceConc!13054) Unit!34085)

(assert (=> b!1787175 (= lt!696200 (lemmaEqSameImage!444 (transformation!3533 (rule!5625 (_1!11047 lt!696165))) lt!696187 (seqFromList!2502 (originalCharacters!4347 (_1!11047 lt!696165)))))))

(declare-fun b!1787176 () Bool)

(declare-fun Unit!34089 () Unit!34085)

(assert (=> b!1787176 (= e!1143842 Unit!34089)))

(declare-fun b!1787177 () Bool)

(declare-fun res!805970 () Bool)

(declare-fun e!1143822 () Bool)

(assert (=> b!1787177 (=> res!805970 e!1143822)))

(assert (=> b!1787177 (= res!805970 (isEmpty!12454 suffix!1421))))

(declare-fun b!1787178 () Bool)

(declare-fun res!805980 () Bool)

(assert (=> b!1787178 (=> res!805980 e!1143825)))

(declare-fun dynLambda!9730 (Int TokenValue!3623) BalanceConc!13054)

(assert (=> b!1787178 (= res!805980 (not (= lt!696187 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (value!110363 (_1!11047 lt!696165))))))))

(declare-fun b!1787179 () Bool)

(assert (=> b!1787179 (= e!1143847 e!1143846)))

(declare-fun res!805974 () Bool)

(assert (=> b!1787179 (=> res!805974 e!1143846)))

(assert (=> b!1787179 (= res!805974 (not (= lt!696195 lt!696159)))))

(declare-fun lt!696169 () Unit!34085)

(declare-fun e!1143841 () Unit!34085)

(assert (=> b!1787179 (= lt!696169 e!1143841)))

(declare-fun c!290610 () Bool)

(assert (=> b!1787179 (= c!290610 (< lt!696195 lt!696159))))

(declare-fun b!1787180 () Bool)

(assert (=> b!1787180 (= e!1143822 e!1143836)))

(declare-fun res!805978 () Bool)

(assert (=> b!1787180 (=> res!805978 e!1143836)))

(declare-fun prefixMatch!744 (Regex!4861 List!19774) Bool)

(assert (=> b!1787180 (= res!805978 (prefixMatch!744 lt!696193 lt!696199))))

(assert (=> b!1787180 (= lt!696199 (++!5357 lt!696190 (Cons!19704 (head!4188 suffix!1421) Nil!19704)))))

(declare-fun rulesRegex!889 (LexerInterface!3162 List!19775) Regex!4861)

(assert (=> b!1787180 (= lt!696193 (rulesRegex!889 thiss!24550 rules!3447))))

(declare-fun b!1787181 () Bool)

(declare-fun tp!505435 () Bool)

(declare-fun inv!25658 (String!22447) Bool)

(declare-fun inv!25664 (TokenValueInjection!6906) Bool)

(assert (=> b!1787181 (= e!1143848 (and tp!505435 (inv!25658 (tag!3937 (rule!5625 token!523))) (inv!25664 (transformation!3533 (rule!5625 token!523))) e!1143833))))

(declare-fun b!1787182 () Bool)

(declare-fun Unit!34090 () Unit!34085)

(assert (=> b!1787182 (= e!1143841 Unit!34090)))

(declare-fun lt!696180 () Unit!34085)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!242 (LexerInterface!3162 List!19775 Rule!6866 List!19774 List!19774 List!19774 Rule!6866) Unit!34085)

(assert (=> b!1787182 (= lt!696180 (lemmaMaxPrefixOutputsMaxPrefix!242 thiss!24550 rules!3447 (rule!5625 (_1!11047 lt!696165)) lt!696204 lt!696179 lt!696190 rule!422))))

(assert (=> b!1787182 false))

(declare-fun tp!505436 () Bool)

(declare-fun b!1787183 () Bool)

(declare-fun e!1143820 () Bool)

(assert (=> b!1787183 (= e!1143826 (and tp!505436 (inv!25658 (tag!3937 rule!422)) (inv!25664 (transformation!3533 rule!422)) e!1143820))))

(declare-fun b!1787184 () Bool)

(declare-fun res!805963 () Bool)

(assert (=> b!1787184 (=> (not res!805963) (not e!1143829))))

(assert (=> b!1787184 (= res!805963 (= (rule!5625 token!523) rule!422))))

(declare-fun b!1787185 () Bool)

(declare-fun res!805958 () Bool)

(assert (=> b!1787185 (=> (not res!805958) (not e!1143837))))

(declare-fun rulesInvariant!2831 (LexerInterface!3162 List!19775) Bool)

(assert (=> b!1787185 (= res!805958 (rulesInvariant!2831 thiss!24550 rules!3447))))

(declare-fun b!1787186 () Bool)

(declare-fun e!1143835 () Bool)

(assert (=> b!1787186 (= e!1143835 true)))

(declare-fun lt!696160 () Bool)

(assert (=> b!1787186 (= lt!696160 (isPrefix!1773 lt!696190 lt!696190))))

(declare-fun b!1787187 () Bool)

(declare-fun Unit!34091 () Unit!34085)

(assert (=> b!1787187 (= e!1143839 Unit!34091)))

(declare-fun lt!696174 () Unit!34085)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!154 (LexerInterface!3162 List!19775 Rule!6866 List!19774 List!19774 Rule!6866) Unit!34085)

(assert (=> b!1787187 (= lt!696174 (lemmaMaxPrefNoSmallerRuleMatches!154 thiss!24550 rules!3447 (rule!5625 (_1!11047 lt!696165)) lt!696204 lt!696179 (rule!5625 token!523)))))

(declare-fun res!805972 () Bool)

(assert (=> b!1787187 (= res!805972 (not (matchR!2334 (regex!3533 (rule!5625 token!523)) lt!696204)))))

(declare-fun e!1143834 () Bool)

(assert (=> b!1787187 (=> (not res!805972) (not e!1143834))))

(assert (=> b!1787187 e!1143834))

(declare-fun b!1787188 () Bool)

(assert (=> b!1787188 (= e!1143832 e!1143823)))

(declare-fun res!805968 () Bool)

(assert (=> b!1787188 (=> (not res!805968) (not e!1143823))))

(assert (=> b!1787188 (= res!805968 (matchR!2334 (regex!3533 lt!696170) (list!8015 (charsOf!2182 (_1!11047 lt!696165)))))))

(declare-fun get!6073 (Option!4089) Rule!6866)

(assert (=> b!1787188 (= lt!696170 (get!6073 lt!696202))))

(declare-fun b!1787189 () Bool)

(declare-fun e!1143818 () Bool)

(declare-fun tp!505445 () Bool)

(assert (=> b!1787189 (= e!1143816 (and e!1143818 tp!505445))))

(declare-fun b!1787190 () Bool)

(assert (=> b!1787190 (= e!1143817 e!1143825)))

(declare-fun res!805964 () Bool)

(assert (=> b!1787190 (=> res!805964 e!1143825)))

(declare-fun dynLambda!9731 (Int BalanceConc!13054) TokenValue!3623)

(assert (=> b!1787190 (= res!805964 (not (= (list!8015 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (dynLambda!9731 (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) lt!696187))) lt!696204)))))

(declare-fun lt!696181 () Unit!34085)

(declare-fun lemmaSemiInverse!671 (TokenValueInjection!6906 BalanceConc!13054) Unit!34085)

(assert (=> b!1787190 (= lt!696181 (lemmaSemiInverse!671 (transformation!3533 (rule!5625 (_1!11047 lt!696165))) lt!696187))))

(declare-fun b!1787191 () Bool)

(declare-fun tp_is_empty!7965 () Bool)

(declare-fun tp!505441 () Bool)

(assert (=> b!1787191 (= e!1143819 (and tp_is_empty!7965 tp!505441))))

(declare-fun b!1787192 () Bool)

(assert (=> b!1787192 (= e!1143834 false)))

(declare-fun e!1143845 () Bool)

(declare-fun b!1787193 () Bool)

(declare-fun tp!505442 () Bool)

(assert (=> b!1787193 (= e!1143818 (and tp!505442 (inv!25658 (tag!3937 (h!25106 rules!3447))) (inv!25664 (transformation!3533 (h!25106 rules!3447))) e!1143845))))

(declare-fun b!1787194 () Bool)

(assert (=> b!1787194 (= e!1143829 (not e!1143822))))

(declare-fun res!805965 () Bool)

(assert (=> b!1787194 (=> res!805965 e!1143822)))

(assert (=> b!1787194 (= res!805965 (not (matchR!2334 (regex!3533 rule!422) lt!696190)))))

(declare-fun ruleValid!1031 (LexerInterface!3162 Rule!6866) Bool)

(assert (=> b!1787194 (ruleValid!1031 thiss!24550 rule!422)))

(declare-fun lt!696186 () Unit!34085)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!554 (LexerInterface!3162 Rule!6866 List!19775) Unit!34085)

(assert (=> b!1787194 (= lt!696186 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!554 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1787195 (= e!1143845 (and tp!505439 tp!505446))))

(declare-fun b!1787196 () Bool)

(assert (=> b!1787196 (= e!1143840 e!1143835)))

(declare-fun res!805976 () Bool)

(assert (=> b!1787196 (=> res!805976 e!1143835)))

(declare-fun lt!696189 () Int)

(declare-fun lt!696171 () Int)

(assert (=> b!1787196 (= res!805976 (>= lt!696189 lt!696171))))

(declare-fun lt!696158 () Unit!34085)

(assert (=> b!1787196 (= lt!696158 e!1143839)))

(declare-fun c!290609 () Bool)

(assert (=> b!1787196 (= c!290609 (< lt!696171 lt!696189))))

(declare-fun getIndex!198 (List!19775 Rule!6866) Int)

(assert (=> b!1787196 (= lt!696189 (getIndex!198 rules!3447 (rule!5625 (_1!11047 lt!696165))))))

(assert (=> b!1787196 (= lt!696171 (getIndex!198 rules!3447 (rule!5625 token!523)))))

(assert (=> b!1787197 (= e!1143820 (and tp!505440 tp!505443))))

(declare-fun b!1787198 () Bool)

(assert (=> b!1787198 (= e!1143837 e!1143821)))

(declare-fun res!805969 () Bool)

(assert (=> b!1787198 (=> (not res!805969) (not e!1143821))))

(declare-fun isDefined!3432 (Option!4088) Bool)

(assert (=> b!1787198 (= res!805969 (isDefined!3432 lt!696161))))

(assert (=> b!1787198 (= lt!696161 (maxPrefix!1716 thiss!24550 rules!3447 lt!696190))))

(assert (=> b!1787198 (= lt!696190 (list!8015 lt!696157))))

(assert (=> b!1787198 (= lt!696157 (charsOf!2182 token!523))))

(declare-fun b!1787199 () Bool)

(declare-fun Unit!34092 () Unit!34085)

(assert (=> b!1787199 (= e!1143841 Unit!34092)))

(assert (= (and start!178106 res!805979) b!1787169))

(assert (= (and b!1787169 res!805956) b!1787185))

(assert (= (and b!1787185 res!805958) b!1787173))

(assert (= (and b!1787173 res!805967) b!1787198))

(assert (= (and b!1787198 res!805969) b!1787160))

(assert (= (and b!1787160 res!805966) b!1787165))

(assert (= (and b!1787165 res!805977) b!1787184))

(assert (= (and b!1787184 res!805963) b!1787194))

(assert (= (and b!1787194 (not res!805965)) b!1787177))

(assert (= (and b!1787177 (not res!805970)) b!1787180))

(assert (= (and b!1787180 (not res!805978)) b!1787172))

(assert (= (and b!1787172 res!805962) b!1787188))

(assert (= (and b!1787188 res!805968) b!1787161))

(assert (= (and b!1787172 (not res!805961)) b!1787170))

(assert (= (and b!1787170 (not res!805959)) b!1787162))

(assert (= (and b!1787162 (not res!805957)) b!1787190))

(assert (= (and b!1787190 (not res!805964)) b!1787178))

(assert (= (and b!1787178 (not res!805980)) b!1787175))

(assert (= (and b!1787175 (not res!805971)) b!1787166))

(assert (= (and b!1787166 (not res!805973)) b!1787164))

(assert (= (and b!1787164 c!290611) b!1787167))

(assert (= (and b!1787164 (not c!290611)) b!1787176))

(assert (= (and b!1787164 (not res!805975)) b!1787179))

(assert (= (and b!1787179 c!290610) b!1787182))

(assert (= (and b!1787179 (not c!290610)) b!1787199))

(assert (= (and b!1787179 (not res!805974)) b!1787174))

(assert (= (and b!1787174 (not res!805960)) b!1787196))

(assert (= (and b!1787196 c!290609) b!1787187))

(assert (= (and b!1787196 (not c!290609)) b!1787171))

(assert (= (and b!1787187 res!805972) b!1787192))

(assert (= (and b!1787196 (not res!805976)) b!1787186))

(assert (= (and start!178106 ((_ is Cons!19704) suffix!1421)) b!1787191))

(assert (= b!1787183 b!1787197))

(assert (= start!178106 b!1787183))

(assert (= b!1787181 b!1787163))

(assert (= b!1787168 b!1787181))

(assert (= start!178106 b!1787168))

(assert (= b!1787193 b!1787195))

(assert (= b!1787189 b!1787193))

(assert (= (and start!178106 ((_ is Cons!19705) rules!3447)) b!1787189))

(declare-fun b_lambda!58675 () Bool)

(assert (=> (not b_lambda!58675) (not b!1787178)))

(declare-fun tb!108859 () Bool)

(declare-fun t!167223 () Bool)

(assert (=> (and b!1787195 (= (toChars!4919 (transformation!3533 (h!25106 rules!3447))) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167223) tb!108859))

(declare-fun b!1787215 () Bool)

(declare-fun e!1143860 () Bool)

(declare-fun tp!505449 () Bool)

(declare-fun inv!25665 (Conc!6555) Bool)

(assert (=> b!1787215 (= e!1143860 (and (inv!25665 (c!290613 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (value!110363 (_1!11047 lt!696165))))) tp!505449))))

(declare-fun result!130982 () Bool)

(declare-fun inv!25666 (BalanceConc!13054) Bool)

(assert (=> tb!108859 (= result!130982 (and (inv!25666 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (value!110363 (_1!11047 lt!696165)))) e!1143860))))

(assert (= tb!108859 b!1787215))

(declare-fun m!2210925 () Bool)

(assert (=> b!1787215 m!2210925))

(declare-fun m!2210927 () Bool)

(assert (=> tb!108859 m!2210927))

(assert (=> b!1787178 t!167223))

(declare-fun b_and!137631 () Bool)

(assert (= b_and!137621 (and (=> t!167223 result!130982) b_and!137631)))

(declare-fun t!167225 () Bool)

(declare-fun tb!108861 () Bool)

(assert (=> (and b!1787197 (= (toChars!4919 (transformation!3533 rule!422)) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167225) tb!108861))

(declare-fun result!130986 () Bool)

(assert (= result!130986 result!130982))

(assert (=> b!1787178 t!167225))

(declare-fun b_and!137633 () Bool)

(assert (= b_and!137625 (and (=> t!167225 result!130986) b_and!137633)))

(declare-fun tb!108863 () Bool)

(declare-fun t!167227 () Bool)

(assert (=> (and b!1787163 (= (toChars!4919 (transformation!3533 (rule!5625 token!523))) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167227) tb!108863))

(declare-fun result!130988 () Bool)

(assert (= result!130988 result!130982))

(assert (=> b!1787178 t!167227))

(declare-fun b_and!137635 () Bool)

(assert (= b_and!137629 (and (=> t!167227 result!130988) b_and!137635)))

(declare-fun b_lambda!58677 () Bool)

(assert (=> (not b_lambda!58677) (not b!1787190)))

(declare-fun t!167229 () Bool)

(declare-fun tb!108865 () Bool)

(assert (=> (and b!1787195 (= (toChars!4919 (transformation!3533 (h!25106 rules!3447))) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167229) tb!108865))

(declare-fun b!1787216 () Bool)

(declare-fun tp!505450 () Bool)

(declare-fun e!1143861 () Bool)

(assert (=> b!1787216 (= e!1143861 (and (inv!25665 (c!290613 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (dynLambda!9731 (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) lt!696187)))) tp!505450))))

(declare-fun result!130990 () Bool)

(assert (=> tb!108865 (= result!130990 (and (inv!25666 (dynLambda!9730 (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) (dynLambda!9731 (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) lt!696187))) e!1143861))))

(assert (= tb!108865 b!1787216))

(declare-fun m!2210929 () Bool)

(assert (=> b!1787216 m!2210929))

(declare-fun m!2210931 () Bool)

(assert (=> tb!108865 m!2210931))

(assert (=> b!1787190 t!167229))

(declare-fun b_and!137637 () Bool)

(assert (= b_and!137631 (and (=> t!167229 result!130990) b_and!137637)))

(declare-fun tb!108867 () Bool)

(declare-fun t!167231 () Bool)

(assert (=> (and b!1787197 (= (toChars!4919 (transformation!3533 rule!422)) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167231) tb!108867))

(declare-fun result!130992 () Bool)

(assert (= result!130992 result!130990))

(assert (=> b!1787190 t!167231))

(declare-fun b_and!137639 () Bool)

(assert (= b_and!137633 (and (=> t!167231 result!130992) b_and!137639)))

(declare-fun t!167233 () Bool)

(declare-fun tb!108869 () Bool)

(assert (=> (and b!1787163 (= (toChars!4919 (transformation!3533 (rule!5625 token!523))) (toChars!4919 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167233) tb!108869))

(declare-fun result!130994 () Bool)

(assert (= result!130994 result!130990))

(assert (=> b!1787190 t!167233))

(declare-fun b_and!137641 () Bool)

(assert (= b_and!137635 (and (=> t!167233 result!130994) b_and!137641)))

(declare-fun b_lambda!58679 () Bool)

(assert (=> (not b_lambda!58679) (not b!1787190)))

(declare-fun t!167235 () Bool)

(declare-fun tb!108871 () Bool)

(assert (=> (and b!1787195 (= (toValue!5060 (transformation!3533 (h!25106 rules!3447))) (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167235) tb!108871))

(declare-fun result!130996 () Bool)

(assert (=> tb!108871 (= result!130996 (inv!21 (dynLambda!9731 (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165)))) lt!696187)))))

(declare-fun m!2210933 () Bool)

(assert (=> tb!108871 m!2210933))

(assert (=> b!1787190 t!167235))

(declare-fun b_and!137643 () Bool)

(assert (= b_and!137619 (and (=> t!167235 result!130996) b_and!137643)))

(declare-fun t!167237 () Bool)

(declare-fun tb!108873 () Bool)

(assert (=> (and b!1787197 (= (toValue!5060 (transformation!3533 rule!422)) (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167237) tb!108873))

(declare-fun result!131000 () Bool)

(assert (= result!131000 result!130996))

(assert (=> b!1787190 t!167237))

(declare-fun b_and!137645 () Bool)

(assert (= b_and!137623 (and (=> t!167237 result!131000) b_and!137645)))

(declare-fun tb!108875 () Bool)

(declare-fun t!167239 () Bool)

(assert (=> (and b!1787163 (= (toValue!5060 (transformation!3533 (rule!5625 token!523))) (toValue!5060 (transformation!3533 (rule!5625 (_1!11047 lt!696165))))) t!167239) tb!108875))

(declare-fun result!131002 () Bool)

(assert (= result!131002 result!130996))

(assert (=> b!1787190 t!167239))

(declare-fun b_and!137647 () Bool)

(assert (= b_and!137627 (and (=> t!167239 result!131002) b_and!137647)))

(declare-fun m!2210935 () Bool)

(assert (=> b!1787187 m!2210935))

(declare-fun m!2210937 () Bool)

(assert (=> b!1787187 m!2210937))

(declare-fun m!2210939 () Bool)

(assert (=> b!1787162 m!2210939))

(declare-fun m!2210941 () Bool)

(assert (=> b!1787162 m!2210941))

(declare-fun m!2210943 () Bool)

(assert (=> b!1787173 m!2210943))

(declare-fun m!2210945 () Bool)

(assert (=> b!1787188 m!2210945))

(assert (=> b!1787188 m!2210945))

(declare-fun m!2210947 () Bool)

(assert (=> b!1787188 m!2210947))

(assert (=> b!1787188 m!2210947))

(declare-fun m!2210949 () Bool)

(assert (=> b!1787188 m!2210949))

(declare-fun m!2210951 () Bool)

(assert (=> b!1787188 m!2210951))

(declare-fun m!2210953 () Bool)

(assert (=> b!1787170 m!2210953))

(declare-fun m!2210955 () Bool)

(assert (=> b!1787180 m!2210955))

(declare-fun m!2210957 () Bool)

(assert (=> b!1787180 m!2210957))

(declare-fun m!2210959 () Bool)

(assert (=> b!1787180 m!2210959))

(declare-fun m!2210961 () Bool)

(assert (=> b!1787180 m!2210961))

(declare-fun m!2210963 () Bool)

(assert (=> b!1787169 m!2210963))

(declare-fun m!2210965 () Bool)

(assert (=> b!1787166 m!2210965))

(declare-fun m!2210967 () Bool)

(assert (=> b!1787166 m!2210967))

(declare-fun m!2210969 () Bool)

(assert (=> b!1787166 m!2210969))

(declare-fun m!2210971 () Bool)

(assert (=> b!1787166 m!2210971))

(declare-fun m!2210973 () Bool)

(assert (=> b!1787166 m!2210973))

(declare-fun m!2210975 () Bool)

(assert (=> b!1787166 m!2210975))

(declare-fun m!2210977 () Bool)

(assert (=> b!1787166 m!2210977))

(assert (=> b!1787166 m!2210973))

(declare-fun m!2210979 () Bool)

(assert (=> b!1787194 m!2210979))

(declare-fun m!2210981 () Bool)

(assert (=> b!1787194 m!2210981))

(declare-fun m!2210983 () Bool)

(assert (=> b!1787194 m!2210983))

(declare-fun m!2210985 () Bool)

(assert (=> b!1787185 m!2210985))

(declare-fun m!2210987 () Bool)

(assert (=> b!1787190 m!2210987))

(assert (=> b!1787190 m!2210987))

(declare-fun m!2210989 () Bool)

(assert (=> b!1787190 m!2210989))

(assert (=> b!1787190 m!2210989))

(declare-fun m!2210991 () Bool)

(assert (=> b!1787190 m!2210991))

(declare-fun m!2210993 () Bool)

(assert (=> b!1787190 m!2210993))

(declare-fun m!2210995 () Bool)

(assert (=> b!1787177 m!2210995))

(declare-fun m!2210997 () Bool)

(assert (=> b!1787175 m!2210997))

(declare-fun m!2210999 () Bool)

(assert (=> b!1787175 m!2210999))

(declare-fun m!2211001 () Bool)

(assert (=> b!1787175 m!2211001))

(declare-fun m!2211003 () Bool)

(assert (=> b!1787175 m!2211003))

(declare-fun m!2211005 () Bool)

(assert (=> b!1787175 m!2211005))

(assert (=> b!1787175 m!2210997))

(declare-fun m!2211007 () Bool)

(assert (=> b!1787182 m!2211007))

(declare-fun m!2211009 () Bool)

(assert (=> b!1787198 m!2211009))

(declare-fun m!2211011 () Bool)

(assert (=> b!1787198 m!2211011))

(declare-fun m!2211013 () Bool)

(assert (=> b!1787198 m!2211013))

(declare-fun m!2211015 () Bool)

(assert (=> b!1787198 m!2211015))

(declare-fun m!2211017 () Bool)

(assert (=> b!1787167 m!2211017))

(declare-fun m!2211019 () Bool)

(assert (=> b!1787167 m!2211019))

(declare-fun m!2211021 () Bool)

(assert (=> b!1787167 m!2211021))

(declare-fun m!2211023 () Bool)

(assert (=> b!1787167 m!2211023))

(declare-fun m!2211025 () Bool)

(assert (=> b!1787167 m!2211025))

(declare-fun m!2211027 () Bool)

(assert (=> b!1787167 m!2211027))

(declare-fun m!2211029 () Bool)

(assert (=> b!1787167 m!2211029))

(declare-fun m!2211031 () Bool)

(assert (=> b!1787167 m!2211031))

(assert (=> b!1787167 m!2211017))

(declare-fun m!2211033 () Bool)

(assert (=> b!1787167 m!2211033))

(declare-fun m!2211035 () Bool)

(assert (=> b!1787167 m!2211035))

(declare-fun m!2211037 () Bool)

(assert (=> b!1787167 m!2211037))

(declare-fun m!2211039 () Bool)

(assert (=> b!1787186 m!2211039))

(declare-fun m!2211041 () Bool)

(assert (=> b!1787164 m!2211041))

(declare-fun m!2211043 () Bool)

(assert (=> b!1787164 m!2211043))

(declare-fun m!2211045 () Bool)

(assert (=> b!1787164 m!2211045))

(declare-fun m!2211047 () Bool)

(assert (=> b!1787168 m!2211047))

(declare-fun m!2211049 () Bool)

(assert (=> b!1787196 m!2211049))

(declare-fun m!2211051 () Bool)

(assert (=> b!1787196 m!2211051))

(declare-fun m!2211053 () Bool)

(assert (=> b!1787165 m!2211053))

(declare-fun m!2211055 () Bool)

(assert (=> b!1787172 m!2211055))

(declare-fun m!2211057 () Bool)

(assert (=> b!1787172 m!2211057))

(declare-fun m!2211059 () Bool)

(assert (=> b!1787172 m!2211059))

(declare-fun m!2211061 () Bool)

(assert (=> b!1787172 m!2211061))

(declare-fun m!2211063 () Bool)

(assert (=> b!1787172 m!2211063))

(declare-fun m!2211065 () Bool)

(assert (=> b!1787172 m!2211065))

(declare-fun m!2211067 () Bool)

(assert (=> b!1787172 m!2211067))

(declare-fun m!2211069 () Bool)

(assert (=> b!1787172 m!2211069))

(declare-fun m!2211071 () Bool)

(assert (=> b!1787172 m!2211071))

(declare-fun m!2211073 () Bool)

(assert (=> b!1787172 m!2211073))

(assert (=> b!1787172 m!2210945))

(declare-fun m!2211075 () Bool)

(assert (=> b!1787172 m!2211075))

(declare-fun m!2211077 () Bool)

(assert (=> b!1787172 m!2211077))

(declare-fun m!2211079 () Bool)

(assert (=> b!1787172 m!2211079))

(assert (=> b!1787172 m!2211071))

(declare-fun m!2211081 () Bool)

(assert (=> b!1787172 m!2211081))

(declare-fun m!2211083 () Bool)

(assert (=> b!1787160 m!2211083))

(declare-fun m!2211085 () Bool)

(assert (=> b!1787183 m!2211085))

(declare-fun m!2211087 () Bool)

(assert (=> b!1787183 m!2211087))

(declare-fun m!2211089 () Bool)

(assert (=> b!1787181 m!2211089))

(declare-fun m!2211091 () Bool)

(assert (=> b!1787181 m!2211091))

(declare-fun m!2211093 () Bool)

(assert (=> start!178106 m!2211093))

(declare-fun m!2211095 () Bool)

(assert (=> b!1787178 m!2211095))

(declare-fun m!2211097 () Bool)

(assert (=> b!1787193 m!2211097))

(declare-fun m!2211099 () Bool)

(assert (=> b!1787193 m!2211099))

(declare-fun m!2211101 () Bool)

(assert (=> b!1787174 m!2211101))

(declare-fun m!2211103 () Bool)

(assert (=> b!1787174 m!2211103))

(check-sat (not b_lambda!58679) (not b!1787166) (not b_next!50393) (not b!1787196) (not b_next!50387) b_and!137637 (not b_next!50391) (not tb!108865) (not b!1787164) (not b!1787160) (not b!1787194) (not b!1787187) (not b!1787180) (not b!1787191) (not b!1787198) (not tb!108871) (not b_lambda!58677) b_and!137643 (not b!1787183) (not b!1787181) (not b_next!50385) (not b!1787172) (not b!1787173) (not b!1787168) (not b_lambda!58675) (not tb!108859) (not b!1787177) (not b!1787216) (not b!1787189) b_and!137647 tp_is_empty!7965 (not b!1787215) (not b!1787190) (not b!1787167) (not b!1787186) (not b!1787170) (not start!178106) (not b!1787174) (not b!1787169) (not b!1787175) b_and!137645 b_and!137641 (not b!1787182) (not b_next!50389) (not b!1787193) (not b!1787162) b_and!137639 (not b!1787165) (not b_next!50383) (not b!1787188) (not b!1787185))
(check-sat (not b_next!50393) (not b_next!50387) b_and!137637 (not b_next!50391) b_and!137647 b_and!137645 b_and!137641 (not b_next!50383) b_and!137643 (not b_next!50385) (not b_next!50389) b_and!137639)
