; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197992 () Bool)

(assert start!197992)

(declare-fun b!2013314 () Bool)

(declare-fun b_free!56209 () Bool)

(declare-fun b_next!56913 () Bool)

(assert (=> b!2013314 (= b_free!56209 (not b_next!56913))))

(declare-fun tp!600330 () Bool)

(declare-fun b_and!159333 () Bool)

(assert (=> b!2013314 (= tp!600330 b_and!159333)))

(declare-fun b_free!56211 () Bool)

(declare-fun b_next!56915 () Bool)

(assert (=> b!2013314 (= b_free!56211 (not b_next!56915))))

(declare-fun tp!600326 () Bool)

(declare-fun b_and!159335 () Bool)

(assert (=> b!2013314 (= tp!600326 b_and!159335)))

(declare-fun b!2013333 () Bool)

(declare-fun b_free!56213 () Bool)

(declare-fun b_next!56917 () Bool)

(assert (=> b!2013333 (= b_free!56213 (not b_next!56917))))

(declare-fun tp!600323 () Bool)

(declare-fun b_and!159337 () Bool)

(assert (=> b!2013333 (= tp!600323 b_and!159337)))

(declare-fun b_free!56215 () Bool)

(declare-fun b_next!56919 () Bool)

(assert (=> b!2013333 (= b_free!56215 (not b_next!56919))))

(declare-fun tp!600321 () Bool)

(declare-fun b_and!159339 () Bool)

(assert (=> b!2013333 (= tp!600321 b_and!159339)))

(declare-fun b!2013313 () Bool)

(declare-fun b_free!56217 () Bool)

(declare-fun b_next!56921 () Bool)

(assert (=> b!2013313 (= b_free!56217 (not b_next!56921))))

(declare-fun tp!600320 () Bool)

(declare-fun b_and!159341 () Bool)

(assert (=> b!2013313 (= tp!600320 b_and!159341)))

(declare-fun b_free!56219 () Bool)

(declare-fun b_next!56923 () Bool)

(assert (=> b!2013313 (= b_free!56219 (not b_next!56923))))

(declare-fun tp!600319 () Bool)

(declare-fun b_and!159343 () Bool)

(assert (=> b!2013313 (= tp!600319 b_and!159343)))

(declare-fun b!2013311 () Bool)

(declare-fun e!1272236 () Bool)

(declare-fun e!1272228 () Bool)

(assert (=> b!2013311 (= e!1272236 e!1272228)))

(declare-fun res!883066 () Bool)

(assert (=> b!2013311 (=> (not res!883066) (not e!1272228))))

(declare-datatypes ((List!22198 0))(
  ( (Nil!22116) (Cons!22116 (h!27517 (_ BitVec 16)) (t!188027 List!22198)) )
))
(declare-datatypes ((TokenValue!4108 0))(
  ( (FloatLiteralValue!8216 (text!29201 List!22198)) (TokenValueExt!4107 (__x!13714 Int)) (Broken!20540 (value!124767 List!22198)) (Object!4189) (End!4108) (Def!4108) (Underscore!4108) (Match!4108) (Else!4108) (Error!4108) (Case!4108) (If!4108) (Extends!4108) (Abstract!4108) (Class!4108) (Val!4108) (DelimiterValue!8216 (del!4168 List!22198)) (KeywordValue!4114 (value!124768 List!22198)) (CommentValue!8216 (value!124769 List!22198)) (WhitespaceValue!8216 (value!124770 List!22198)) (IndentationValue!4108 (value!124771 List!22198)) (String!25657) (Int32!4108) (Broken!20541 (value!124772 List!22198)) (Boolean!4109) (Unit!36697) (OperatorValue!4111 (op!4168 List!22198)) (IdentifierValue!8216 (value!124773 List!22198)) (IdentifierValue!8217 (value!124774 List!22198)) (WhitespaceValue!8217 (value!124775 List!22198)) (True!8216) (False!8216) (Broken!20542 (value!124776 List!22198)) (Broken!20543 (value!124777 List!22198)) (True!8217) (RightBrace!4108) (RightBracket!4108) (Colon!4108) (Null!4108) (Comma!4108) (LeftBracket!4108) (False!8217) (LeftBrace!4108) (ImaginaryLiteralValue!4108 (text!29202 List!22198)) (StringLiteralValue!12324 (value!124778 List!22198)) (EOFValue!4108 (value!124779 List!22198)) (IdentValue!4108 (value!124780 List!22198)) (DelimiterValue!8217 (value!124781 List!22198)) (DedentValue!4108 (value!124782 List!22198)) (NewLineValue!4108 (value!124783 List!22198)) (IntegerValue!12324 (value!124784 (_ BitVec 32)) (text!29203 List!22198)) (IntegerValue!12325 (value!124785 Int) (text!29204 List!22198)) (Times!4108) (Or!4108) (Equal!4108) (Minus!4108) (Broken!20544 (value!124786 List!22198)) (And!4108) (Div!4108) (LessEqual!4108) (Mod!4108) (Concat!9505) (Not!4108) (Plus!4108) (SpaceValue!4108 (value!124787 List!22198)) (IntegerValue!12326 (value!124788 Int) (text!29205 List!22198)) (StringLiteralValue!12325 (text!29206 List!22198)) (FloatLiteralValue!8217 (text!29207 List!22198)) (BytesLiteralValue!4108 (value!124789 List!22198)) (CommentValue!8217 (value!124790 List!22198)) (StringLiteralValue!12326 (value!124791 List!22198)) (ErrorTokenValue!4108 (msg!4169 List!22198)) )
))
(declare-datatypes ((C!10940 0))(
  ( (C!10941 (val!6422 Int)) )
))
(declare-datatypes ((List!22199 0))(
  ( (Nil!22117) (Cons!22117 (h!27518 C!10940) (t!188028 List!22199)) )
))
(declare-datatypes ((String!25658 0))(
  ( (String!25659 (value!124792 String)) )
))
(declare-datatypes ((IArray!14787 0))(
  ( (IArray!14788 (innerList!7451 List!22199)) )
))
(declare-datatypes ((Conc!7391 0))(
  ( (Node!7391 (left!17595 Conc!7391) (right!17925 Conc!7391) (csize!15012 Int) (cheight!7602 Int)) (Leaf!10840 (xs!10289 IArray!14787) (csize!15013 Int)) (Empty!7391) )
))
(declare-datatypes ((BalanceConc!14598 0))(
  ( (BalanceConc!14599 (c!325207 Conc!7391)) )
))
(declare-datatypes ((TokenValueInjection!7800 0))(
  ( (TokenValueInjection!7801 (toValue!5641 Int) (toChars!5500 Int)) )
))
(declare-datatypes ((Regex!5397 0))(
  ( (ElementMatch!5397 (c!325208 C!10940)) (Concat!9506 (regOne!11306 Regex!5397) (regTwo!11306 Regex!5397)) (EmptyExpr!5397) (Star!5397 (reg!5726 Regex!5397)) (EmptyLang!5397) (Union!5397 (regOne!11307 Regex!5397) (regTwo!11307 Regex!5397)) )
))
(declare-datatypes ((Rule!7744 0))(
  ( (Rule!7745 (regex!3972 Regex!5397) (tag!4444 String!25658) (isSeparator!3972 Bool) (transformation!3972 TokenValueInjection!7800)) )
))
(declare-fun lt!755916 () Rule!7744)

(declare-fun lt!755918 () List!22199)

(declare-fun matchR!2663 (Regex!5397 List!22199) Bool)

(assert (=> b!2013311 (= res!883066 (matchR!2663 (regex!3972 lt!755916) lt!755918))))

(declare-datatypes ((Option!4625 0))(
  ( (None!4624) (Some!4624 (v!26881 Rule!7744)) )
))
(declare-fun lt!755928 () Option!4625)

(declare-fun get!7002 (Option!4625) Rule!7744)

(assert (=> b!2013311 (= lt!755916 (get!7002 lt!755928))))

(declare-fun b!2013312 () Bool)

(declare-fun res!883061 () Bool)

(declare-fun e!1272223 () Bool)

(assert (=> b!2013312 (=> (not res!883061) (not e!1272223))))

(declare-datatypes ((Token!7496 0))(
  ( (Token!7497 (value!124793 TokenValue!4108) (rule!6199 Rule!7744) (size!17280 Int) (originalCharacters!4779 List!22199)) )
))
(declare-datatypes ((List!22200 0))(
  ( (Nil!22118) (Cons!22118 (h!27519 Token!7496) (t!188029 List!22200)) )
))
(declare-fun tokens!598 () List!22200)

(declare-fun lambda!76189 () Int)

(declare-fun forall!4700 (List!22200 Int) Bool)

(assert (=> b!2013312 (= res!883061 (forall!4700 tokens!598 lambda!76189))))

(declare-fun e!1272232 () Bool)

(assert (=> b!2013313 (= e!1272232 (and tp!600320 tp!600319))))

(declare-fun e!1272246 () Bool)

(assert (=> b!2013314 (= e!1272246 (and tp!600330 tp!600326))))

(declare-fun b!2013315 () Bool)

(declare-fun res!883069 () Bool)

(assert (=> b!2013315 (=> (not res!883069) (not e!1272223))))

(get-info :version)

(assert (=> b!2013315 (= res!883069 ((_ is Cons!22118) tokens!598))))

(declare-fun e!1272231 () Bool)

(declare-fun b!2013316 () Bool)

(declare-fun tp!600327 () Bool)

(declare-fun e!1272229 () Bool)

(declare-fun inv!29283 (Token!7496) Bool)

(assert (=> b!2013316 (= e!1272229 (and (inv!29283 (h!27519 tokens!598)) e!1272231 tp!600327))))

(declare-fun b!2013317 () Bool)

(declare-datatypes ((Unit!36698 0))(
  ( (Unit!36699) )
))
(declare-fun e!1272233 () Unit!36698)

(declare-fun Unit!36700 () Unit!36698)

(assert (=> b!2013317 (= e!1272233 Unit!36700)))

(declare-fun lt!755920 () C!10940)

(declare-fun lt!755934 () Unit!36698)

(declare-fun separatorToken!354 () Token!7496)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!298 (Regex!5397 List!22199 C!10940) Unit!36698)

(assert (=> b!2013317 (= lt!755934 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!298 (regex!3972 (rule!6199 separatorToken!354)) lt!755918 lt!755920))))

(declare-fun res!883058 () Bool)

(assert (=> b!2013317 (= res!883058 (not (matchR!2663 (regex!3972 (rule!6199 separatorToken!354)) lt!755918)))))

(declare-fun e!1272239 () Bool)

(assert (=> b!2013317 (=> (not res!883058) (not e!1272239))))

(assert (=> b!2013317 e!1272239))

(declare-fun b!2013318 () Bool)

(declare-fun e!1272235 () Bool)

(declare-fun lt!755930 () Rule!7744)

(assert (=> b!2013318 (= e!1272235 (= (rule!6199 (h!27519 tokens!598)) lt!755930))))

(declare-fun b!2013319 () Bool)

(assert (=> b!2013319 (= e!1272228 (= (rule!6199 separatorToken!354) lt!755916))))

(declare-fun b!2013320 () Bool)

(declare-fun e!1272245 () Bool)

(assert (=> b!2013320 (= e!1272245 e!1272235)))

(declare-fun res!883063 () Bool)

(assert (=> b!2013320 (=> (not res!883063) (not e!1272235))))

(declare-fun lt!755917 () List!22199)

(assert (=> b!2013320 (= res!883063 (matchR!2663 (regex!3972 lt!755930) lt!755917))))

(declare-fun lt!755923 () Option!4625)

(assert (=> b!2013320 (= lt!755930 (get!7002 lt!755923))))

(declare-fun e!1272226 () Bool)

(declare-fun b!2013321 () Bool)

(declare-fun tp!600324 () Bool)

(declare-fun inv!29280 (String!25658) Bool)

(declare-fun inv!29284 (TokenValueInjection!7800) Bool)

(assert (=> b!2013321 (= e!1272226 (and tp!600324 (inv!29280 (tag!4444 (rule!6199 (h!27519 tokens!598)))) (inv!29284 (transformation!3972 (rule!6199 (h!27519 tokens!598)))) e!1272232))))

(declare-fun b!2013322 () Bool)

(declare-fun res!883068 () Bool)

(assert (=> b!2013322 (=> (not res!883068) (not e!1272223))))

(declare-datatypes ((List!22201 0))(
  ( (Nil!22119) (Cons!22119 (h!27520 Rule!7744) (t!188030 List!22201)) )
))
(declare-fun rules!3198 () List!22201)

(declare-fun sepAndNonSepRulesDisjointChars!1070 (List!22201 List!22201) Bool)

(assert (=> b!2013322 (= res!883068 (sepAndNonSepRulesDisjointChars!1070 rules!3198 rules!3198))))

(declare-fun e!1272227 () Bool)

(declare-fun tp!600322 () Bool)

(declare-fun b!2013323 () Bool)

(declare-fun e!1272243 () Bool)

(declare-fun inv!21 (TokenValue!4108) Bool)

(assert (=> b!2013323 (= e!1272227 (and (inv!21 (value!124793 separatorToken!354)) e!1272243 tp!600322))))

(declare-fun b!2013324 () Bool)

(declare-fun res!883072 () Bool)

(assert (=> b!2013324 (=> (not res!883072) (not e!1272223))))

(declare-fun isEmpty!13728 (List!22201) Bool)

(assert (=> b!2013324 (= res!883072 (not (isEmpty!13728 rules!3198)))))

(declare-fun b!2013325 () Bool)

(declare-fun res!883056 () Bool)

(assert (=> b!2013325 (=> (not res!883056) (not e!1272223))))

(assert (=> b!2013325 (= res!883056 (isSeparator!3972 (rule!6199 separatorToken!354)))))

(declare-fun b!2013326 () Bool)

(declare-fun e!1272234 () Bool)

(declare-fun e!1272237 () Bool)

(assert (=> b!2013326 (= e!1272234 e!1272237)))

(declare-fun res!883062 () Bool)

(assert (=> b!2013326 (=> res!883062 e!1272237)))

(declare-fun contains!4055 (List!22201 Rule!7744) Bool)

(assert (=> b!2013326 (= res!883062 (not (contains!4055 rules!3198 (rule!6199 separatorToken!354))))))

(declare-fun lt!755927 () Unit!36698)

(assert (=> b!2013326 (= lt!755927 e!1272233)))

(declare-fun c!325206 () Bool)

(declare-fun lt!755921 () Bool)

(assert (=> b!2013326 (= c!325206 (not lt!755921))))

(declare-fun contains!4056 (List!22199 C!10940) Bool)

(declare-fun usedCharacters!410 (Regex!5397) List!22199)

(assert (=> b!2013326 (= lt!755921 (contains!4056 (usedCharacters!410 (regex!3972 (rule!6199 separatorToken!354))) lt!755920))))

(declare-fun head!4550 (List!22199) C!10940)

(assert (=> b!2013326 (= lt!755920 (head!4550 lt!755918))))

(declare-fun lt!755919 () List!22199)

(declare-fun ++!5967 (List!22199 List!22199) List!22199)

(assert (=> b!2013326 (= (++!5967 (++!5967 lt!755917 lt!755918) lt!755919) (++!5967 lt!755917 (++!5967 lt!755918 lt!755919)))))

(declare-fun lt!755929 () Unit!36698)

(declare-fun lemmaConcatAssociativity!1235 (List!22199 List!22199 List!22199) Unit!36698)

(assert (=> b!2013326 (= lt!755929 (lemmaConcatAssociativity!1235 lt!755917 lt!755918 lt!755919))))

(declare-fun b!2013327 () Bool)

(declare-fun res!883071 () Bool)

(assert (=> b!2013327 (=> res!883071 e!1272237)))

(assert (=> b!2013327 (= res!883071 (not (contains!4055 rules!3198 (rule!6199 (h!27519 tokens!598)))))))

(declare-fun res!883060 () Bool)

(assert (=> start!197992 (=> (not res!883060) (not e!1272223))))

(declare-datatypes ((LexerInterface!3585 0))(
  ( (LexerInterfaceExt!3582 (__x!13715 Int)) (Lexer!3583) )
))
(declare-fun thiss!23328 () LexerInterface!3585)

(assert (=> start!197992 (= res!883060 ((_ is Lexer!3583) thiss!23328))))

(assert (=> start!197992 e!1272223))

(assert (=> start!197992 true))

(declare-fun e!1272222 () Bool)

(assert (=> start!197992 e!1272222))

(assert (=> start!197992 e!1272229))

(assert (=> start!197992 (and (inv!29283 separatorToken!354) e!1272227)))

(declare-fun b!2013328 () Bool)

(declare-fun res!883057 () Bool)

(assert (=> b!2013328 (=> (not res!883057) (not e!1272223))))

(declare-fun rulesProduceIndividualToken!1757 (LexerInterface!3585 List!22201 Token!7496) Bool)

(assert (=> b!2013328 (= res!883057 (rulesProduceIndividualToken!1757 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2013329 () Bool)

(assert (=> b!2013329 (= e!1272223 (not e!1272234))))

(declare-fun res!883073 () Bool)

(assert (=> b!2013329 (=> res!883073 e!1272234)))

(declare-datatypes ((tuple2!20778 0))(
  ( (tuple2!20779 (_1!11858 Token!7496) (_2!11858 List!22199)) )
))
(declare-datatypes ((Option!4626 0))(
  ( (None!4625) (Some!4625 (v!26882 tuple2!20778)) )
))
(declare-fun lt!755931 () Option!4626)

(declare-fun lt!755926 () Bool)

(assert (=> b!2013329 (= res!883073 (or (and (not lt!755926) (= (_1!11858 (v!26882 lt!755931)) (h!27519 tokens!598))) lt!755926 (= (_1!11858 (v!26882 lt!755931)) (h!27519 tokens!598))))))

(assert (=> b!2013329 (= lt!755926 (not ((_ is Some!4625) lt!755931)))))

(declare-fun maxPrefix!2021 (LexerInterface!3585 List!22201 List!22199) Option!4626)

(assert (=> b!2013329 (= lt!755931 (maxPrefix!2021 thiss!23328 rules!3198 (++!5967 lt!755917 lt!755919)))))

(declare-fun printWithSeparatorTokenWhenNeededList!614 (LexerInterface!3585 List!22201 List!22200 Token!7496) List!22199)

(assert (=> b!2013329 (= lt!755919 (printWithSeparatorTokenWhenNeededList!614 thiss!23328 rules!3198 (t!188029 tokens!598) separatorToken!354))))

(assert (=> b!2013329 e!1272245))

(declare-fun res!883059 () Bool)

(assert (=> b!2013329 (=> (not res!883059) (not e!1272245))))

(declare-fun isDefined!3913 (Option!4625) Bool)

(assert (=> b!2013329 (= res!883059 (isDefined!3913 lt!755923))))

(declare-fun getRuleFromTag!787 (LexerInterface!3585 List!22201 String!25658) Option!4625)

(assert (=> b!2013329 (= lt!755923 (getRuleFromTag!787 thiss!23328 rules!3198 (tag!4444 (rule!6199 (h!27519 tokens!598)))))))

(declare-fun lt!755922 () Unit!36698)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!787 (LexerInterface!3585 List!22201 List!22199 Token!7496) Unit!36698)

(assert (=> b!2013329 (= lt!755922 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!787 thiss!23328 rules!3198 lt!755917 (h!27519 tokens!598)))))

(declare-fun e!1272225 () Bool)

(assert (=> b!2013329 e!1272225))

(declare-fun res!883070 () Bool)

(assert (=> b!2013329 (=> (not res!883070) (not e!1272225))))

(declare-fun lt!755932 () Option!4626)

(declare-fun isDefined!3914 (Option!4626) Bool)

(assert (=> b!2013329 (= res!883070 (isDefined!3914 lt!755932))))

(assert (=> b!2013329 (= lt!755932 (maxPrefix!2021 thiss!23328 rules!3198 lt!755917))))

(declare-fun lt!755933 () BalanceConc!14598)

(declare-fun list!9013 (BalanceConc!14598) List!22199)

(assert (=> b!2013329 (= lt!755917 (list!9013 lt!755933))))

(assert (=> b!2013329 e!1272236))

(declare-fun res!883067 () Bool)

(assert (=> b!2013329 (=> (not res!883067) (not e!1272236))))

(assert (=> b!2013329 (= res!883067 (isDefined!3913 lt!755928))))

(assert (=> b!2013329 (= lt!755928 (getRuleFromTag!787 thiss!23328 rules!3198 (tag!4444 (rule!6199 separatorToken!354))))))

(declare-fun lt!755925 () Unit!36698)

(assert (=> b!2013329 (= lt!755925 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!787 thiss!23328 rules!3198 lt!755918 separatorToken!354))))

(declare-fun charsOf!2512 (Token!7496) BalanceConc!14598)

(assert (=> b!2013329 (= lt!755918 (list!9013 (charsOf!2512 separatorToken!354)))))

(declare-fun lt!755924 () Unit!36698)

(declare-fun lemmaEqSameImage!658 (TokenValueInjection!7800 BalanceConc!14598 BalanceConc!14598) Unit!36698)

(declare-fun seqFromList!2826 (List!22199) BalanceConc!14598)

(assert (=> b!2013329 (= lt!755924 (lemmaEqSameImage!658 (transformation!3972 (rule!6199 (h!27519 tokens!598))) lt!755933 (seqFromList!2826 (originalCharacters!4779 (h!27519 tokens!598)))))))

(declare-fun lt!755915 () Unit!36698)

(declare-fun lemmaSemiInverse!929 (TokenValueInjection!7800 BalanceConc!14598) Unit!36698)

(assert (=> b!2013329 (= lt!755915 (lemmaSemiInverse!929 (transformation!3972 (rule!6199 (h!27519 tokens!598))) lt!755933))))

(assert (=> b!2013329 (= lt!755933 (charsOf!2512 (h!27519 tokens!598)))))

(declare-fun tp!600325 () Bool)

(declare-fun b!2013330 () Bool)

(assert (=> b!2013330 (= e!1272243 (and tp!600325 (inv!29280 (tag!4444 (rule!6199 separatorToken!354))) (inv!29284 (transformation!3972 (rule!6199 separatorToken!354))) e!1272246))))

(declare-fun b!2013331 () Bool)

(declare-fun res!883065 () Bool)

(assert (=> b!2013331 (=> (not res!883065) (not e!1272223))))

(declare-fun rulesInvariant!3192 (LexerInterface!3585 List!22201) Bool)

(assert (=> b!2013331 (= res!883065 (rulesInvariant!3192 thiss!23328 rules!3198))))

(declare-fun tp!600329 () Bool)

(declare-fun b!2013332 () Bool)

(declare-fun e!1272224 () Bool)

(declare-fun e!1272230 () Bool)

(assert (=> b!2013332 (= e!1272230 (and tp!600329 (inv!29280 (tag!4444 (h!27520 rules!3198))) (inv!29284 (transformation!3972 (h!27520 rules!3198))) e!1272224))))

(assert (=> b!2013333 (= e!1272224 (and tp!600323 tp!600321))))

(declare-fun b!2013334 () Bool)

(declare-fun tp!600318 () Bool)

(assert (=> b!2013334 (= e!1272222 (and e!1272230 tp!600318))))

(declare-fun b!2013335 () Bool)

(declare-fun res!883064 () Bool)

(assert (=> b!2013335 (=> (not res!883064) (not e!1272223))))

(declare-fun rulesProduceEachTokenIndividuallyList!1316 (LexerInterface!3585 List!22201 List!22200) Bool)

(assert (=> b!2013335 (= res!883064 (rulesProduceEachTokenIndividuallyList!1316 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2013336 () Bool)

(assert (=> b!2013336 (= e!1272237 (or (isSeparator!3972 (rule!6199 (h!27519 tokens!598))) lt!755921))))

(declare-fun b!2013337 () Bool)

(declare-fun Unit!36701 () Unit!36698)

(assert (=> b!2013337 (= e!1272233 Unit!36701)))

(declare-fun b!2013338 () Bool)

(assert (=> b!2013338 (= e!1272239 false)))

(declare-fun tp!600328 () Bool)

(declare-fun b!2013339 () Bool)

(assert (=> b!2013339 (= e!1272231 (and (inv!21 (value!124793 (h!27519 tokens!598))) e!1272226 tp!600328))))

(declare-fun b!2013340 () Bool)

(declare-fun get!7003 (Option!4626) tuple2!20778)

(assert (=> b!2013340 (= e!1272225 (= (_1!11858 (get!7003 lt!755932)) (h!27519 tokens!598)))))

(assert (= (and start!197992 res!883060) b!2013324))

(assert (= (and b!2013324 res!883072) b!2013331))

(assert (= (and b!2013331 res!883065) b!2013335))

(assert (= (and b!2013335 res!883064) b!2013328))

(assert (= (and b!2013328 res!883057) b!2013325))

(assert (= (and b!2013325 res!883056) b!2013312))

(assert (= (and b!2013312 res!883061) b!2013322))

(assert (= (and b!2013322 res!883068) b!2013315))

(assert (= (and b!2013315 res!883069) b!2013329))

(assert (= (and b!2013329 res!883067) b!2013311))

(assert (= (and b!2013311 res!883066) b!2013319))

(assert (= (and b!2013329 res!883070) b!2013340))

(assert (= (and b!2013329 res!883059) b!2013320))

(assert (= (and b!2013320 res!883063) b!2013318))

(assert (= (and b!2013329 (not res!883073)) b!2013326))

(assert (= (and b!2013326 c!325206) b!2013317))

(assert (= (and b!2013326 (not c!325206)) b!2013337))

(assert (= (and b!2013317 res!883058) b!2013338))

(assert (= (and b!2013326 (not res!883062)) b!2013327))

(assert (= (and b!2013327 (not res!883071)) b!2013336))

(assert (= b!2013332 b!2013333))

(assert (= b!2013334 b!2013332))

(assert (= (and start!197992 ((_ is Cons!22119) rules!3198)) b!2013334))

(assert (= b!2013321 b!2013313))

(assert (= b!2013339 b!2013321))

(assert (= b!2013316 b!2013339))

(assert (= (and start!197992 ((_ is Cons!22118) tokens!598)) b!2013316))

(assert (= b!2013330 b!2013314))

(assert (= b!2013323 b!2013330))

(assert (= start!197992 b!2013323))

(declare-fun m!2446207 () Bool)

(assert (=> b!2013335 m!2446207))

(declare-fun m!2446209 () Bool)

(assert (=> b!2013327 m!2446209))

(declare-fun m!2446211 () Bool)

(assert (=> b!2013317 m!2446211))

(declare-fun m!2446213 () Bool)

(assert (=> b!2013317 m!2446213))

(declare-fun m!2446215 () Bool)

(assert (=> b!2013339 m!2446215))

(declare-fun m!2446217 () Bool)

(assert (=> b!2013329 m!2446217))

(declare-fun m!2446219 () Bool)

(assert (=> b!2013329 m!2446219))

(declare-fun m!2446221 () Bool)

(assert (=> b!2013329 m!2446221))

(declare-fun m!2446223 () Bool)

(assert (=> b!2013329 m!2446223))

(declare-fun m!2446225 () Bool)

(assert (=> b!2013329 m!2446225))

(declare-fun m!2446227 () Bool)

(assert (=> b!2013329 m!2446227))

(declare-fun m!2446229 () Bool)

(assert (=> b!2013329 m!2446229))

(declare-fun m!2446231 () Bool)

(assert (=> b!2013329 m!2446231))

(declare-fun m!2446233 () Bool)

(assert (=> b!2013329 m!2446233))

(declare-fun m!2446235 () Bool)

(assert (=> b!2013329 m!2446235))

(declare-fun m!2446237 () Bool)

(assert (=> b!2013329 m!2446237))

(declare-fun m!2446239 () Bool)

(assert (=> b!2013329 m!2446239))

(assert (=> b!2013329 m!2446219))

(declare-fun m!2446241 () Bool)

(assert (=> b!2013329 m!2446241))

(declare-fun m!2446243 () Bool)

(assert (=> b!2013329 m!2446243))

(declare-fun m!2446245 () Bool)

(assert (=> b!2013329 m!2446245))

(assert (=> b!2013329 m!2446225))

(declare-fun m!2446247 () Bool)

(assert (=> b!2013329 m!2446247))

(declare-fun m!2446249 () Bool)

(assert (=> b!2013329 m!2446249))

(assert (=> b!2013329 m!2446233))

(declare-fun m!2446251 () Bool)

(assert (=> b!2013329 m!2446251))

(declare-fun m!2446253 () Bool)

(assert (=> b!2013326 m!2446253))

(declare-fun m!2446255 () Bool)

(assert (=> b!2013326 m!2446255))

(assert (=> b!2013326 m!2446253))

(declare-fun m!2446257 () Bool)

(assert (=> b!2013326 m!2446257))

(declare-fun m!2446259 () Bool)

(assert (=> b!2013326 m!2446259))

(declare-fun m!2446261 () Bool)

(assert (=> b!2013326 m!2446261))

(assert (=> b!2013326 m!2446259))

(declare-fun m!2446263 () Bool)

(assert (=> b!2013326 m!2446263))

(declare-fun m!2446265 () Bool)

(assert (=> b!2013326 m!2446265))

(declare-fun m!2446267 () Bool)

(assert (=> b!2013326 m!2446267))

(assert (=> b!2013326 m!2446255))

(declare-fun m!2446269 () Bool)

(assert (=> b!2013326 m!2446269))

(declare-fun m!2446271 () Bool)

(assert (=> b!2013332 m!2446271))

(declare-fun m!2446273 () Bool)

(assert (=> b!2013332 m!2446273))

(declare-fun m!2446275 () Bool)

(assert (=> b!2013328 m!2446275))

(declare-fun m!2446277 () Bool)

(assert (=> b!2013331 m!2446277))

(declare-fun m!2446279 () Bool)

(assert (=> b!2013311 m!2446279))

(declare-fun m!2446281 () Bool)

(assert (=> b!2013311 m!2446281))

(declare-fun m!2446283 () Bool)

(assert (=> b!2013312 m!2446283))

(declare-fun m!2446285 () Bool)

(assert (=> b!2013340 m!2446285))

(declare-fun m!2446287 () Bool)

(assert (=> b!2013320 m!2446287))

(declare-fun m!2446289 () Bool)

(assert (=> b!2013320 m!2446289))

(declare-fun m!2446291 () Bool)

(assert (=> b!2013324 m!2446291))

(declare-fun m!2446293 () Bool)

(assert (=> b!2013323 m!2446293))

(declare-fun m!2446295 () Bool)

(assert (=> b!2013322 m!2446295))

(declare-fun m!2446297 () Bool)

(assert (=> b!2013330 m!2446297))

(declare-fun m!2446299 () Bool)

(assert (=> b!2013330 m!2446299))

(declare-fun m!2446301 () Bool)

(assert (=> b!2013316 m!2446301))

(declare-fun m!2446303 () Bool)

(assert (=> start!197992 m!2446303))

(declare-fun m!2446305 () Bool)

(assert (=> b!2013321 m!2446305))

(declare-fun m!2446307 () Bool)

(assert (=> b!2013321 m!2446307))

(check-sat (not b!2013327) (not b!2013321) (not b!2013316) (not b!2013328) b_and!159337 (not start!197992) b_and!159333 (not b!2013311) (not b_next!56923) (not b!2013339) (not b!2013317) b_and!159339 (not b!2013320) (not b!2013335) (not b!2013340) (not b!2013331) (not b!2013332) b_and!159343 (not b!2013322) (not b_next!56917) (not b_next!56913) b_and!159335 (not b!2013334) b_and!159341 (not b!2013326) (not b!2013312) (not b!2013324) (not b_next!56915) (not b!2013323) (not b_next!56921) (not b_next!56919) (not b!2013329) (not b!2013330))
(check-sat b_and!159337 b_and!159333 b_and!159343 b_and!159335 b_and!159341 (not b_next!56923) (not b_next!56915) b_and!159339 (not b_next!56917) (not b_next!56913) (not b_next!56921) (not b_next!56919))
