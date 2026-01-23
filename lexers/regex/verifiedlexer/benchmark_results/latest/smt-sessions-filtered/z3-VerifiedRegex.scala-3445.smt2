; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197608 () Bool)

(assert start!197608)

(declare-fun b!2010521 () Bool)

(declare-fun b_free!56089 () Bool)

(declare-fun b_next!56793 () Bool)

(assert (=> b!2010521 (= b_free!56089 (not b_next!56793))))

(declare-fun tp!599727 () Bool)

(declare-fun b_and!158925 () Bool)

(assert (=> b!2010521 (= tp!599727 b_and!158925)))

(declare-fun b_free!56091 () Bool)

(declare-fun b_next!56795 () Bool)

(assert (=> b!2010521 (= b_free!56091 (not b_next!56795))))

(declare-fun tp!599721 () Bool)

(declare-fun b_and!158927 () Bool)

(assert (=> b!2010521 (= tp!599721 b_and!158927)))

(declare-fun b!2010497 () Bool)

(declare-fun b_free!56093 () Bool)

(declare-fun b_next!56797 () Bool)

(assert (=> b!2010497 (= b_free!56093 (not b_next!56797))))

(declare-fun tp!599723 () Bool)

(declare-fun b_and!158929 () Bool)

(assert (=> b!2010497 (= tp!599723 b_and!158929)))

(declare-fun b_free!56095 () Bool)

(declare-fun b_next!56799 () Bool)

(assert (=> b!2010497 (= b_free!56095 (not b_next!56799))))

(declare-fun tp!599719 () Bool)

(declare-fun b_and!158931 () Bool)

(assert (=> b!2010497 (= tp!599719 b_and!158931)))

(declare-fun b!2010516 () Bool)

(declare-fun b_free!56097 () Bool)

(declare-fun b_next!56801 () Bool)

(assert (=> b!2010516 (= b_free!56097 (not b_next!56801))))

(declare-fun tp!599720 () Bool)

(declare-fun b_and!158933 () Bool)

(assert (=> b!2010516 (= tp!599720 b_and!158933)))

(declare-fun b_free!56099 () Bool)

(declare-fun b_next!56803 () Bool)

(assert (=> b!2010516 (= b_free!56099 (not b_next!56803))))

(declare-fun tp!599729 () Bool)

(declare-fun b_and!158935 () Bool)

(assert (=> b!2010516 (= tp!599729 b_and!158935)))

(declare-fun e!1270376 () Bool)

(assert (=> b!2010497 (= e!1270376 (and tp!599723 tp!599719))))

(declare-fun b!2010498 () Bool)

(declare-datatypes ((Unit!36655 0))(
  ( (Unit!36656) )
))
(declare-fun e!1270384 () Unit!36655)

(declare-fun Unit!36657 () Unit!36655)

(assert (=> b!2010498 (= e!1270384 Unit!36657)))

(declare-fun e!1270374 () Bool)

(declare-fun tp!599726 () Bool)

(declare-fun e!1270387 () Bool)

(declare-fun b!2010499 () Bool)

(declare-datatypes ((List!22168 0))(
  ( (Nil!22086) (Cons!22086 (h!27487 (_ BitVec 16)) (t!187667 List!22168)) )
))
(declare-datatypes ((TokenValue!4102 0))(
  ( (FloatLiteralValue!8204 (text!29159 List!22168)) (TokenValueExt!4101 (__x!13702 Int)) (Broken!20510 (value!124596 List!22168)) (Object!4183) (End!4102) (Def!4102) (Underscore!4102) (Match!4102) (Else!4102) (Error!4102) (Case!4102) (If!4102) (Extends!4102) (Abstract!4102) (Class!4102) (Val!4102) (DelimiterValue!8204 (del!4162 List!22168)) (KeywordValue!4108 (value!124597 List!22168)) (CommentValue!8204 (value!124598 List!22168)) (WhitespaceValue!8204 (value!124599 List!22168)) (IndentationValue!4102 (value!124600 List!22168)) (String!25627) (Int32!4102) (Broken!20511 (value!124601 List!22168)) (Boolean!4103) (Unit!36658) (OperatorValue!4105 (op!4162 List!22168)) (IdentifierValue!8204 (value!124602 List!22168)) (IdentifierValue!8205 (value!124603 List!22168)) (WhitespaceValue!8205 (value!124604 List!22168)) (True!8204) (False!8204) (Broken!20512 (value!124605 List!22168)) (Broken!20513 (value!124606 List!22168)) (True!8205) (RightBrace!4102) (RightBracket!4102) (Colon!4102) (Null!4102) (Comma!4102) (LeftBracket!4102) (False!8205) (LeftBrace!4102) (ImaginaryLiteralValue!4102 (text!29160 List!22168)) (StringLiteralValue!12306 (value!124607 List!22168)) (EOFValue!4102 (value!124608 List!22168)) (IdentValue!4102 (value!124609 List!22168)) (DelimiterValue!8205 (value!124610 List!22168)) (DedentValue!4102 (value!124611 List!22168)) (NewLineValue!4102 (value!124612 List!22168)) (IntegerValue!12306 (value!124613 (_ BitVec 32)) (text!29161 List!22168)) (IntegerValue!12307 (value!124614 Int) (text!29162 List!22168)) (Times!4102) (Or!4102) (Equal!4102) (Minus!4102) (Broken!20514 (value!124615 List!22168)) (And!4102) (Div!4102) (LessEqual!4102) (Mod!4102) (Concat!9493) (Not!4102) (Plus!4102) (SpaceValue!4102 (value!124616 List!22168)) (IntegerValue!12308 (value!124617 Int) (text!29163 List!22168)) (StringLiteralValue!12307 (text!29164 List!22168)) (FloatLiteralValue!8205 (text!29165 List!22168)) (BytesLiteralValue!4102 (value!124618 List!22168)) (CommentValue!8205 (value!124619 List!22168)) (StringLiteralValue!12308 (value!124620 List!22168)) (ErrorTokenValue!4102 (msg!4163 List!22168)) )
))
(declare-datatypes ((C!10928 0))(
  ( (C!10929 (val!6416 Int)) )
))
(declare-datatypes ((List!22169 0))(
  ( (Nil!22087) (Cons!22087 (h!27488 C!10928) (t!187668 List!22169)) )
))
(declare-datatypes ((String!25628 0))(
  ( (String!25629 (value!124621 String)) )
))
(declare-datatypes ((Regex!5391 0))(
  ( (ElementMatch!5391 (c!324757 C!10928)) (Concat!9494 (regOne!11294 Regex!5391) (regTwo!11294 Regex!5391)) (EmptyExpr!5391) (Star!5391 (reg!5720 Regex!5391)) (EmptyLang!5391) (Union!5391 (regOne!11295 Regex!5391) (regTwo!11295 Regex!5391)) )
))
(declare-datatypes ((IArray!14763 0))(
  ( (IArray!14764 (innerList!7439 List!22169)) )
))
(declare-datatypes ((Conc!7379 0))(
  ( (Node!7379 (left!17568 Conc!7379) (right!17898 Conc!7379) (csize!14988 Int) (cheight!7590 Int)) (Leaf!10825 (xs!10277 IArray!14763) (csize!14989 Int)) (Empty!7379) )
))
(declare-datatypes ((BalanceConc!14574 0))(
  ( (BalanceConc!14575 (c!324758 Conc!7379)) )
))
(declare-datatypes ((TokenValueInjection!7788 0))(
  ( (TokenValueInjection!7789 (toValue!5635 Int) (toChars!5494 Int)) )
))
(declare-datatypes ((Rule!7732 0))(
  ( (Rule!7733 (regex!3966 Regex!5391) (tag!4432 String!25628) (isSeparator!3966 Bool) (transformation!3966 TokenValueInjection!7788)) )
))
(declare-datatypes ((Token!7484 0))(
  ( (Token!7485 (value!124622 TokenValue!4102) (rule!6193 Rule!7732) (size!17262 Int) (originalCharacters!4773 List!22169)) )
))
(declare-datatypes ((List!22170 0))(
  ( (Nil!22088) (Cons!22088 (h!27489 Token!7484) (t!187669 List!22170)) )
))
(declare-fun tokens!598 () List!22170)

(declare-fun inv!29250 (Token!7484) Bool)

(assert (=> b!2010499 (= e!1270374 (and (inv!29250 (h!27489 tokens!598)) e!1270387 tp!599726))))

(declare-fun b!2010500 () Bool)

(declare-fun e!1270380 () Bool)

(declare-fun e!1270379 () Bool)

(assert (=> b!2010500 (= e!1270380 (not e!1270379))))

(declare-fun res!881757 () Bool)

(assert (=> b!2010500 (=> res!881757 e!1270379)))

(declare-datatypes ((tuple2!20754 0))(
  ( (tuple2!20755 (_1!11846 Token!7484) (_2!11846 List!22169)) )
))
(declare-datatypes ((Option!4613 0))(
  ( (None!4612) (Some!4612 (v!26857 tuple2!20754)) )
))
(declare-fun lt!754996 () Option!4613)

(declare-fun lt!754988 () Bool)

(assert (=> b!2010500 (= res!881757 (or (and (not lt!754988) (= (_1!11846 (v!26857 lt!754996)) (h!27489 tokens!598))) lt!754988 (= (_1!11846 (v!26857 lt!754996)) (h!27489 tokens!598))))))

(get-info :version)

(assert (=> b!2010500 (= lt!754988 (not ((_ is Some!4612) lt!754996)))))

(declare-datatypes ((LexerInterface!3579 0))(
  ( (LexerInterfaceExt!3576 (__x!13703 Int)) (Lexer!3577) )
))
(declare-fun thiss!23328 () LexerInterface!3579)

(declare-fun lt!754999 () List!22169)

(declare-datatypes ((List!22171 0))(
  ( (Nil!22089) (Cons!22089 (h!27490 Rule!7732) (t!187670 List!22171)) )
))
(declare-fun rules!3198 () List!22171)

(declare-fun lt!754991 () List!22169)

(declare-fun maxPrefix!2015 (LexerInterface!3579 List!22171 List!22169) Option!4613)

(declare-fun ++!5961 (List!22169 List!22169) List!22169)

(assert (=> b!2010500 (= lt!754996 (maxPrefix!2015 thiss!23328 rules!3198 (++!5961 lt!754999 lt!754991)))))

(declare-fun separatorToken!354 () Token!7484)

(declare-fun printWithSeparatorTokenWhenNeededList!608 (LexerInterface!3579 List!22171 List!22170 Token!7484) List!22169)

(assert (=> b!2010500 (= lt!754991 (printWithSeparatorTokenWhenNeededList!608 thiss!23328 rules!3198 (t!187669 tokens!598) separatorToken!354))))

(declare-fun e!1270369 () Bool)

(assert (=> b!2010500 e!1270369))

(declare-fun res!881756 () Bool)

(assert (=> b!2010500 (=> (not res!881756) (not e!1270369))))

(declare-datatypes ((Option!4614 0))(
  ( (None!4613) (Some!4613 (v!26858 Rule!7732)) )
))
(declare-fun lt!754982 () Option!4614)

(declare-fun isDefined!3901 (Option!4614) Bool)

(assert (=> b!2010500 (= res!881756 (isDefined!3901 lt!754982))))

(declare-fun getRuleFromTag!781 (LexerInterface!3579 List!22171 String!25628) Option!4614)

(assert (=> b!2010500 (= lt!754982 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 (h!27489 tokens!598)))))))

(declare-fun lt!754990 () Unit!36655)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!781 (LexerInterface!3579 List!22171 List!22169 Token!7484) Unit!36655)

(assert (=> b!2010500 (= lt!754990 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!781 thiss!23328 rules!3198 lt!754999 (h!27489 tokens!598)))))

(declare-fun e!1270385 () Bool)

(assert (=> b!2010500 e!1270385))

(declare-fun res!881748 () Bool)

(assert (=> b!2010500 (=> (not res!881748) (not e!1270385))))

(declare-fun lt!754983 () Option!4613)

(declare-fun isDefined!3902 (Option!4613) Bool)

(assert (=> b!2010500 (= res!881748 (isDefined!3902 lt!754983))))

(assert (=> b!2010500 (= lt!754983 (maxPrefix!2015 thiss!23328 rules!3198 lt!754999))))

(declare-fun lt!754992 () BalanceConc!14574)

(declare-fun list!8995 (BalanceConc!14574) List!22169)

(assert (=> b!2010500 (= lt!754999 (list!8995 lt!754992))))

(declare-fun e!1270381 () Bool)

(assert (=> b!2010500 e!1270381))

(declare-fun res!881758 () Bool)

(assert (=> b!2010500 (=> (not res!881758) (not e!1270381))))

(declare-fun lt!755000 () Option!4614)

(assert (=> b!2010500 (= res!881758 (isDefined!3901 lt!755000))))

(assert (=> b!2010500 (= lt!755000 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 separatorToken!354))))))

(declare-fun lt!754997 () List!22169)

(declare-fun lt!754986 () Unit!36655)

(assert (=> b!2010500 (= lt!754986 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!781 thiss!23328 rules!3198 lt!754997 separatorToken!354))))

(declare-fun charsOf!2506 (Token!7484) BalanceConc!14574)

(assert (=> b!2010500 (= lt!754997 (list!8995 (charsOf!2506 separatorToken!354)))))

(declare-fun lt!754984 () Unit!36655)

(declare-fun lemmaEqSameImage!652 (TokenValueInjection!7788 BalanceConc!14574 BalanceConc!14574) Unit!36655)

(declare-fun seqFromList!2820 (List!22169) BalanceConc!14574)

(assert (=> b!2010500 (= lt!754984 (lemmaEqSameImage!652 (transformation!3966 (rule!6193 (h!27489 tokens!598))) lt!754992 (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598)))))))

(declare-fun lt!754987 () Unit!36655)

(declare-fun lemmaSemiInverse!923 (TokenValueInjection!7788 BalanceConc!14574) Unit!36655)

(assert (=> b!2010500 (= lt!754987 (lemmaSemiInverse!923 (transformation!3966 (rule!6193 (h!27489 tokens!598))) lt!754992))))

(assert (=> b!2010500 (= lt!754992 (charsOf!2506 (h!27489 tokens!598)))))

(declare-fun b!2010502 () Bool)

(declare-fun Unit!36659 () Unit!36655)

(assert (=> b!2010502 (= e!1270384 Unit!36659)))

(declare-fun lt!754989 () C!10928)

(declare-fun lt!754995 () Unit!36655)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!292 (Regex!5391 List!22169 C!10928) Unit!36655)

(assert (=> b!2010502 (= lt!754995 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!292 (regex!3966 (rule!6193 separatorToken!354)) lt!754997 lt!754989))))

(declare-fun res!881749 () Bool)

(declare-fun matchR!2657 (Regex!5391 List!22169) Bool)

(assert (=> b!2010502 (= res!881749 (not (matchR!2657 (regex!3966 (rule!6193 separatorToken!354)) lt!754997)))))

(declare-fun e!1270375 () Bool)

(assert (=> b!2010502 (=> (not res!881749) (not e!1270375))))

(assert (=> b!2010502 e!1270375))

(declare-fun b!2010503 () Bool)

(declare-fun e!1270372 () Bool)

(declare-fun tp!599725 () Bool)

(declare-fun inv!21 (TokenValue!4102) Bool)

(assert (=> b!2010503 (= e!1270387 (and (inv!21 (value!124622 (h!27489 tokens!598))) e!1270372 tp!599725))))

(declare-fun b!2010504 () Bool)

(declare-fun res!881762 () Bool)

(assert (=> b!2010504 (=> (not res!881762) (not e!1270380))))

(assert (=> b!2010504 (= res!881762 (isSeparator!3966 (rule!6193 separatorToken!354)))))

(declare-fun b!2010505 () Bool)

(assert (=> b!2010505 (= e!1270375 false)))

(declare-fun tp!599718 () Bool)

(declare-fun e!1270388 () Bool)

(declare-fun b!2010506 () Bool)

(declare-fun inv!29247 (String!25628) Bool)

(declare-fun inv!29251 (TokenValueInjection!7788) Bool)

(assert (=> b!2010506 (= e!1270372 (and tp!599718 (inv!29247 (tag!4432 (rule!6193 (h!27489 tokens!598)))) (inv!29251 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) e!1270388))))

(declare-fun b!2010507 () Bool)

(declare-fun res!881754 () Bool)

(assert (=> b!2010507 (=> (not res!881754) (not e!1270380))))

(declare-fun isEmpty!13698 (List!22171) Bool)

(assert (=> b!2010507 (= res!881754 (not (isEmpty!13698 rules!3198)))))

(declare-fun b!2010508 () Bool)

(declare-fun res!881755 () Bool)

(assert (=> b!2010508 (=> (not res!881755) (not e!1270380))))

(assert (=> b!2010508 (= res!881755 ((_ is Cons!22088) tokens!598))))

(declare-fun b!2010509 () Bool)

(declare-fun e!1270368 () Bool)

(declare-fun lt!754998 () Rule!7732)

(assert (=> b!2010509 (= e!1270368 (= (rule!6193 separatorToken!354) lt!754998))))

(declare-fun b!2010510 () Bool)

(declare-fun res!881763 () Bool)

(assert (=> b!2010510 (=> (not res!881763) (not e!1270380))))

(declare-fun lambda!76099 () Int)

(declare-fun forall!4694 (List!22170 Int) Bool)

(assert (=> b!2010510 (= res!881763 (forall!4694 tokens!598 lambda!76099))))

(declare-fun b!2010511 () Bool)

(declare-fun contains!4043 (List!22171 Rule!7732) Bool)

(assert (=> b!2010511 (= e!1270379 (contains!4043 rules!3198 (rule!6193 separatorToken!354)))))

(declare-fun lt!754993 () Unit!36655)

(assert (=> b!2010511 (= lt!754993 e!1270384)))

(declare-fun c!324756 () Bool)

(declare-fun contains!4044 (List!22169 C!10928) Bool)

(declare-fun usedCharacters!404 (Regex!5391) List!22169)

(assert (=> b!2010511 (= c!324756 (not (contains!4044 (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354))) lt!754989)))))

(declare-fun head!4544 (List!22169) C!10928)

(assert (=> b!2010511 (= lt!754989 (head!4544 lt!754997))))

(assert (=> b!2010511 (= (++!5961 (++!5961 lt!754999 lt!754997) lt!754991) (++!5961 lt!754999 (++!5961 lt!754997 lt!754991)))))

(declare-fun lt!754994 () Unit!36655)

(declare-fun lemmaConcatAssociativity!1229 (List!22169 List!22169 List!22169) Unit!36655)

(assert (=> b!2010511 (= lt!754994 (lemmaConcatAssociativity!1229 lt!754999 lt!754997 lt!754991))))

(declare-fun b!2010512 () Bool)

(declare-fun e!1270367 () Bool)

(declare-fun e!1270371 () Bool)

(declare-fun tp!599724 () Bool)

(assert (=> b!2010512 (= e!1270367 (and e!1270371 tp!599724))))

(declare-fun b!2010513 () Bool)

(declare-fun e!1270382 () Bool)

(declare-fun e!1270377 () Bool)

(declare-fun tp!599722 () Bool)

(assert (=> b!2010513 (= e!1270382 (and tp!599722 (inv!29247 (tag!4432 (rule!6193 separatorToken!354))) (inv!29251 (transformation!3966 (rule!6193 separatorToken!354))) e!1270377))))

(declare-fun b!2010514 () Bool)

(declare-fun res!881751 () Bool)

(assert (=> b!2010514 (=> (not res!881751) (not e!1270380))))

(declare-fun rulesProduceEachTokenIndividuallyList!1310 (LexerInterface!3579 List!22171 List!22170) Bool)

(assert (=> b!2010514 (= res!881751 (rulesProduceEachTokenIndividuallyList!1310 thiss!23328 rules!3198 tokens!598))))

(declare-fun res!881760 () Bool)

(assert (=> start!197608 (=> (not res!881760) (not e!1270380))))

(assert (=> start!197608 (= res!881760 ((_ is Lexer!3577) thiss!23328))))

(assert (=> start!197608 e!1270380))

(assert (=> start!197608 true))

(assert (=> start!197608 e!1270367))

(assert (=> start!197608 e!1270374))

(declare-fun e!1270373 () Bool)

(assert (=> start!197608 (and (inv!29250 separatorToken!354) e!1270373)))

(declare-fun b!2010501 () Bool)

(declare-fun e!1270390 () Bool)

(declare-fun lt!754985 () Rule!7732)

(assert (=> b!2010501 (= e!1270390 (= (rule!6193 (h!27489 tokens!598)) lt!754985))))

(declare-fun tp!599730 () Bool)

(declare-fun b!2010515 () Bool)

(assert (=> b!2010515 (= e!1270371 (and tp!599730 (inv!29247 (tag!4432 (h!27490 rules!3198))) (inv!29251 (transformation!3966 (h!27490 rules!3198))) e!1270376))))

(assert (=> b!2010516 (= e!1270388 (and tp!599720 tp!599729))))

(declare-fun tp!599728 () Bool)

(declare-fun b!2010517 () Bool)

(assert (=> b!2010517 (= e!1270373 (and (inv!21 (value!124622 separatorToken!354)) e!1270382 tp!599728))))

(declare-fun b!2010518 () Bool)

(declare-fun res!881753 () Bool)

(assert (=> b!2010518 (=> (not res!881753) (not e!1270380))))

(declare-fun sepAndNonSepRulesDisjointChars!1064 (List!22171 List!22171) Bool)

(assert (=> b!2010518 (= res!881753 (sepAndNonSepRulesDisjointChars!1064 rules!3198 rules!3198))))

(declare-fun b!2010519 () Bool)

(assert (=> b!2010519 (= e!1270369 e!1270390)))

(declare-fun res!881750 () Bool)

(assert (=> b!2010519 (=> (not res!881750) (not e!1270390))))

(assert (=> b!2010519 (= res!881750 (matchR!2657 (regex!3966 lt!754985) lt!754999))))

(declare-fun get!6987 (Option!4614) Rule!7732)

(assert (=> b!2010519 (= lt!754985 (get!6987 lt!754982))))

(declare-fun b!2010520 () Bool)

(declare-fun get!6988 (Option!4613) tuple2!20754)

(assert (=> b!2010520 (= e!1270385 (= (_1!11846 (get!6988 lt!754983)) (h!27489 tokens!598)))))

(assert (=> b!2010521 (= e!1270377 (and tp!599727 tp!599721))))

(declare-fun b!2010522 () Bool)

(declare-fun res!881759 () Bool)

(assert (=> b!2010522 (=> (not res!881759) (not e!1270380))))

(declare-fun rulesInvariant!3186 (LexerInterface!3579 List!22171) Bool)

(assert (=> b!2010522 (= res!881759 (rulesInvariant!3186 thiss!23328 rules!3198))))

(declare-fun b!2010523 () Bool)

(declare-fun res!881761 () Bool)

(assert (=> b!2010523 (=> (not res!881761) (not e!1270380))))

(declare-fun rulesProduceIndividualToken!1751 (LexerInterface!3579 List!22171 Token!7484) Bool)

(assert (=> b!2010523 (= res!881761 (rulesProduceIndividualToken!1751 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2010524 () Bool)

(assert (=> b!2010524 (= e!1270381 e!1270368)))

(declare-fun res!881752 () Bool)

(assert (=> b!2010524 (=> (not res!881752) (not e!1270368))))

(assert (=> b!2010524 (= res!881752 (matchR!2657 (regex!3966 lt!754998) lt!754997))))

(assert (=> b!2010524 (= lt!754998 (get!6987 lt!755000))))

(assert (= (and start!197608 res!881760) b!2010507))

(assert (= (and b!2010507 res!881754) b!2010522))

(assert (= (and b!2010522 res!881759) b!2010514))

(assert (= (and b!2010514 res!881751) b!2010523))

(assert (= (and b!2010523 res!881761) b!2010504))

(assert (= (and b!2010504 res!881762) b!2010510))

(assert (= (and b!2010510 res!881763) b!2010518))

(assert (= (and b!2010518 res!881753) b!2010508))

(assert (= (and b!2010508 res!881755) b!2010500))

(assert (= (and b!2010500 res!881758) b!2010524))

(assert (= (and b!2010524 res!881752) b!2010509))

(assert (= (and b!2010500 res!881748) b!2010520))

(assert (= (and b!2010500 res!881756) b!2010519))

(assert (= (and b!2010519 res!881750) b!2010501))

(assert (= (and b!2010500 (not res!881757)) b!2010511))

(assert (= (and b!2010511 c!324756) b!2010502))

(assert (= (and b!2010511 (not c!324756)) b!2010498))

(assert (= (and b!2010502 res!881749) b!2010505))

(assert (= b!2010515 b!2010497))

(assert (= b!2010512 b!2010515))

(assert (= (and start!197608 ((_ is Cons!22089) rules!3198)) b!2010512))

(assert (= b!2010506 b!2010516))

(assert (= b!2010503 b!2010506))

(assert (= b!2010499 b!2010503))

(assert (= (and start!197608 ((_ is Cons!22088) tokens!598)) b!2010499))

(assert (= b!2010513 b!2010521))

(assert (= b!2010517 b!2010513))

(assert (= start!197608 b!2010517))

(declare-fun m!2443335 () Bool)

(assert (=> b!2010499 m!2443335))

(declare-fun m!2443337 () Bool)

(assert (=> b!2010517 m!2443337))

(declare-fun m!2443339 () Bool)

(assert (=> b!2010506 m!2443339))

(declare-fun m!2443341 () Bool)

(assert (=> b!2010506 m!2443341))

(declare-fun m!2443343 () Bool)

(assert (=> b!2010513 m!2443343))

(declare-fun m!2443345 () Bool)

(assert (=> b!2010513 m!2443345))

(declare-fun m!2443347 () Bool)

(assert (=> b!2010510 m!2443347))

(declare-fun m!2443349 () Bool)

(assert (=> b!2010503 m!2443349))

(declare-fun m!2443351 () Bool)

(assert (=> b!2010522 m!2443351))

(declare-fun m!2443353 () Bool)

(assert (=> b!2010515 m!2443353))

(declare-fun m!2443355 () Bool)

(assert (=> b!2010515 m!2443355))

(declare-fun m!2443357 () Bool)

(assert (=> b!2010518 m!2443357))

(declare-fun m!2443359 () Bool)

(assert (=> b!2010507 m!2443359))

(declare-fun m!2443361 () Bool)

(assert (=> b!2010502 m!2443361))

(declare-fun m!2443363 () Bool)

(assert (=> b!2010502 m!2443363))

(declare-fun m!2443365 () Bool)

(assert (=> start!197608 m!2443365))

(declare-fun m!2443367 () Bool)

(assert (=> b!2010520 m!2443367))

(declare-fun m!2443369 () Bool)

(assert (=> b!2010519 m!2443369))

(declare-fun m!2443371 () Bool)

(assert (=> b!2010519 m!2443371))

(declare-fun m!2443373 () Bool)

(assert (=> b!2010524 m!2443373))

(declare-fun m!2443375 () Bool)

(assert (=> b!2010524 m!2443375))

(declare-fun m!2443377 () Bool)

(assert (=> b!2010511 m!2443377))

(declare-fun m!2443379 () Bool)

(assert (=> b!2010511 m!2443379))

(declare-fun m!2443381 () Bool)

(assert (=> b!2010511 m!2443381))

(declare-fun m!2443383 () Bool)

(assert (=> b!2010511 m!2443383))

(assert (=> b!2010511 m!2443377))

(declare-fun m!2443385 () Bool)

(assert (=> b!2010511 m!2443385))

(declare-fun m!2443387 () Bool)

(assert (=> b!2010511 m!2443387))

(declare-fun m!2443389 () Bool)

(assert (=> b!2010511 m!2443389))

(assert (=> b!2010511 m!2443387))

(declare-fun m!2443391 () Bool)

(assert (=> b!2010511 m!2443391))

(assert (=> b!2010511 m!2443381))

(declare-fun m!2443393 () Bool)

(assert (=> b!2010511 m!2443393))

(declare-fun m!2443395 () Bool)

(assert (=> b!2010500 m!2443395))

(declare-fun m!2443397 () Bool)

(assert (=> b!2010500 m!2443397))

(declare-fun m!2443399 () Bool)

(assert (=> b!2010500 m!2443399))

(declare-fun m!2443401 () Bool)

(assert (=> b!2010500 m!2443401))

(declare-fun m!2443403 () Bool)

(assert (=> b!2010500 m!2443403))

(declare-fun m!2443405 () Bool)

(assert (=> b!2010500 m!2443405))

(declare-fun m!2443407 () Bool)

(assert (=> b!2010500 m!2443407))

(declare-fun m!2443409 () Bool)

(assert (=> b!2010500 m!2443409))

(declare-fun m!2443411 () Bool)

(assert (=> b!2010500 m!2443411))

(declare-fun m!2443413 () Bool)

(assert (=> b!2010500 m!2443413))

(declare-fun m!2443415 () Bool)

(assert (=> b!2010500 m!2443415))

(assert (=> b!2010500 m!2443395))

(declare-fun m!2443417 () Bool)

(assert (=> b!2010500 m!2443417))

(declare-fun m!2443419 () Bool)

(assert (=> b!2010500 m!2443419))

(declare-fun m!2443421 () Bool)

(assert (=> b!2010500 m!2443421))

(assert (=> b!2010500 m!2443415))

(declare-fun m!2443423 () Bool)

(assert (=> b!2010500 m!2443423))

(declare-fun m!2443425 () Bool)

(assert (=> b!2010500 m!2443425))

(declare-fun m!2443427 () Bool)

(assert (=> b!2010500 m!2443427))

(assert (=> b!2010500 m!2443411))

(declare-fun m!2443429 () Bool)

(assert (=> b!2010500 m!2443429))

(declare-fun m!2443431 () Bool)

(assert (=> b!2010514 m!2443431))

(declare-fun m!2443433 () Bool)

(assert (=> b!2010523 m!2443433))

(check-sat (not b_next!56801) b_and!158925 (not b!2010523) b_and!158927 (not b!2010510) (not b_next!56803) (not b_next!56793) (not b!2010513) (not b!2010519) (not b!2010522) (not b!2010524) (not b!2010502) (not b!2010520) (not b!2010515) b_and!158935 (not b!2010506) b_and!158933 (not b!2010518) (not b!2010511) b_and!158929 (not start!197608) (not b!2010499) b_and!158931 (not b!2010507) (not b!2010512) (not b_next!56799) (not b_next!56795) (not b!2010517) (not b!2010514) (not b_next!56797) (not b!2010500) (not b!2010503))
(check-sat b_and!158935 b_and!158933 (not b_next!56801) b_and!158925 b_and!158929 b_and!158927 b_and!158931 (not b_next!56803) (not b_next!56799) (not b_next!56795) (not b_next!56793) (not b_next!56797))
(get-model)

(declare-fun b!2010586 () Bool)

(declare-fun e!1270429 () Bool)

(declare-fun e!1270427 () Bool)

(assert (=> b!2010586 (= e!1270429 e!1270427)))

(declare-fun c!324772 () Bool)

(assert (=> b!2010586 (= c!324772 ((_ is IntegerValue!12307) (value!124622 separatorToken!354)))))

(declare-fun b!2010587 () Bool)

(declare-fun e!1270428 () Bool)

(declare-fun inv!15 (TokenValue!4102) Bool)

(assert (=> b!2010587 (= e!1270428 (inv!15 (value!124622 separatorToken!354)))))

(declare-fun b!2010588 () Bool)

(declare-fun inv!16 (TokenValue!4102) Bool)

(assert (=> b!2010588 (= e!1270429 (inv!16 (value!124622 separatorToken!354)))))

(declare-fun d!614000 () Bool)

(declare-fun c!324773 () Bool)

(assert (=> d!614000 (= c!324773 ((_ is IntegerValue!12306) (value!124622 separatorToken!354)))))

(assert (=> d!614000 (= (inv!21 (value!124622 separatorToken!354)) e!1270429)))

(declare-fun b!2010589 () Bool)

(declare-fun inv!17 (TokenValue!4102) Bool)

(assert (=> b!2010589 (= e!1270427 (inv!17 (value!124622 separatorToken!354)))))

(declare-fun b!2010590 () Bool)

(declare-fun res!881809 () Bool)

(assert (=> b!2010590 (=> res!881809 e!1270428)))

(assert (=> b!2010590 (= res!881809 (not ((_ is IntegerValue!12308) (value!124622 separatorToken!354))))))

(assert (=> b!2010590 (= e!1270427 e!1270428)))

(assert (= (and d!614000 c!324773) b!2010588))

(assert (= (and d!614000 (not c!324773)) b!2010586))

(assert (= (and b!2010586 c!324772) b!2010589))

(assert (= (and b!2010586 (not c!324772)) b!2010590))

(assert (= (and b!2010590 (not res!881809)) b!2010587))

(declare-fun m!2443459 () Bool)

(assert (=> b!2010587 m!2443459))

(declare-fun m!2443461 () Bool)

(assert (=> b!2010588 m!2443461))

(declare-fun m!2443463 () Bool)

(assert (=> b!2010589 m!2443463))

(assert (=> b!2010517 d!614000))

(declare-fun d!614008 () Bool)

(declare-fun res!881814 () Bool)

(declare-fun e!1270434 () Bool)

(assert (=> d!614008 (=> res!881814 e!1270434)))

(assert (=> d!614008 (= res!881814 (not ((_ is Cons!22089) rules!3198)))))

(assert (=> d!614008 (= (sepAndNonSepRulesDisjointChars!1064 rules!3198 rules!3198) e!1270434)))

(declare-fun b!2010595 () Bool)

(declare-fun e!1270435 () Bool)

(assert (=> b!2010595 (= e!1270434 e!1270435)))

(declare-fun res!881815 () Bool)

(assert (=> b!2010595 (=> (not res!881815) (not e!1270435))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!472 (Rule!7732 List!22171) Bool)

(assert (=> b!2010595 (= res!881815 (ruleDisjointCharsFromAllFromOtherType!472 (h!27490 rules!3198) rules!3198))))

(declare-fun b!2010596 () Bool)

(assert (=> b!2010596 (= e!1270435 (sepAndNonSepRulesDisjointChars!1064 rules!3198 (t!187670 rules!3198)))))

(assert (= (and d!614008 (not res!881814)) b!2010595))

(assert (= (and b!2010595 res!881815) b!2010596))

(declare-fun m!2443465 () Bool)

(assert (=> b!2010595 m!2443465))

(declare-fun m!2443467 () Bool)

(assert (=> b!2010596 m!2443467))

(assert (=> b!2010518 d!614008))

(declare-fun d!614010 () Bool)

(assert (=> d!614010 (= (isEmpty!13698 rules!3198) ((_ is Nil!22089) rules!3198))))

(assert (=> b!2010507 d!614010))

(declare-fun b!2010625 () Bool)

(declare-fun res!881836 () Bool)

(declare-fun e!1270452 () Bool)

(assert (=> b!2010625 (=> res!881836 e!1270452)))

(declare-fun e!1270454 () Bool)

(assert (=> b!2010625 (= res!881836 e!1270454)))

(declare-fun res!881838 () Bool)

(assert (=> b!2010625 (=> (not res!881838) (not e!1270454))))

(declare-fun lt!755006 () Bool)

(assert (=> b!2010625 (= res!881838 lt!755006)))

(declare-fun b!2010626 () Bool)

(declare-fun res!881834 () Bool)

(assert (=> b!2010626 (=> (not res!881834) (not e!1270454))))

(declare-fun call!122944 () Bool)

(assert (=> b!2010626 (= res!881834 (not call!122944))))

(declare-fun b!2010627 () Bool)

(declare-fun e!1270451 () Bool)

(declare-fun e!1270450 () Bool)

(assert (=> b!2010627 (= e!1270451 e!1270450)))

(declare-fun res!881833 () Bool)

(assert (=> b!2010627 (=> res!881833 e!1270450)))

(assert (=> b!2010627 (= res!881833 call!122944)))

(declare-fun b!2010628 () Bool)

(declare-fun e!1270455 () Bool)

(declare-fun derivativeStep!1392 (Regex!5391 C!10928) Regex!5391)

(declare-fun tail!3026 (List!22169) List!22169)

(assert (=> b!2010628 (= e!1270455 (matchR!2657 (derivativeStep!1392 (regex!3966 lt!754985) (head!4544 lt!754999)) (tail!3026 lt!754999)))))

(declare-fun b!2010629 () Bool)

(assert (=> b!2010629 (= e!1270454 (= (head!4544 lt!754999) (c!324757 (regex!3966 lt!754985))))))

(declare-fun b!2010630 () Bool)

(declare-fun e!1270456 () Bool)

(assert (=> b!2010630 (= e!1270456 (= lt!755006 call!122944))))

(declare-fun b!2010631 () Bool)

(declare-fun res!881839 () Bool)

(assert (=> b!2010631 (=> res!881839 e!1270452)))

(assert (=> b!2010631 (= res!881839 (not ((_ is ElementMatch!5391) (regex!3966 lt!754985))))))

(declare-fun e!1270453 () Bool)

(assert (=> b!2010631 (= e!1270453 e!1270452)))

(declare-fun b!2010632 () Bool)

(declare-fun res!881832 () Bool)

(assert (=> b!2010632 (=> res!881832 e!1270450)))

(declare-fun isEmpty!13702 (List!22169) Bool)

(assert (=> b!2010632 (= res!881832 (not (isEmpty!13702 (tail!3026 lt!754999))))))

(declare-fun b!2010633 () Bool)

(assert (=> b!2010633 (= e!1270456 e!1270453)))

(declare-fun c!324780 () Bool)

(assert (=> b!2010633 (= c!324780 ((_ is EmptyLang!5391) (regex!3966 lt!754985)))))

(declare-fun b!2010634 () Bool)

(declare-fun nullable!1633 (Regex!5391) Bool)

(assert (=> b!2010634 (= e!1270455 (nullable!1633 (regex!3966 lt!754985)))))

(declare-fun b!2010635 () Bool)

(assert (=> b!2010635 (= e!1270452 e!1270451)))

(declare-fun res!881837 () Bool)

(assert (=> b!2010635 (=> (not res!881837) (not e!1270451))))

(assert (=> b!2010635 (= res!881837 (not lt!755006))))

(declare-fun b!2010636 () Bool)

(assert (=> b!2010636 (= e!1270450 (not (= (head!4544 lt!754999) (c!324757 (regex!3966 lt!754985)))))))

(declare-fun b!2010637 () Bool)

(assert (=> b!2010637 (= e!1270453 (not lt!755006))))

(declare-fun d!614012 () Bool)

(assert (=> d!614012 e!1270456))

(declare-fun c!324781 () Bool)

(assert (=> d!614012 (= c!324781 ((_ is EmptyExpr!5391) (regex!3966 lt!754985)))))

(assert (=> d!614012 (= lt!755006 e!1270455)))

(declare-fun c!324782 () Bool)

(assert (=> d!614012 (= c!324782 (isEmpty!13702 lt!754999))))

(declare-fun validRegex!2159 (Regex!5391) Bool)

(assert (=> d!614012 (validRegex!2159 (regex!3966 lt!754985))))

(assert (=> d!614012 (= (matchR!2657 (regex!3966 lt!754985) lt!754999) lt!755006)))

(declare-fun bm!122939 () Bool)

(assert (=> bm!122939 (= call!122944 (isEmpty!13702 lt!754999))))

(declare-fun b!2010638 () Bool)

(declare-fun res!881835 () Bool)

(assert (=> b!2010638 (=> (not res!881835) (not e!1270454))))

(assert (=> b!2010638 (= res!881835 (isEmpty!13702 (tail!3026 lt!754999)))))

(assert (= (and d!614012 c!324782) b!2010634))

(assert (= (and d!614012 (not c!324782)) b!2010628))

(assert (= (and d!614012 c!324781) b!2010630))

(assert (= (and d!614012 (not c!324781)) b!2010633))

(assert (= (and b!2010633 c!324780) b!2010637))

(assert (= (and b!2010633 (not c!324780)) b!2010631))

(assert (= (and b!2010631 (not res!881839)) b!2010625))

(assert (= (and b!2010625 res!881838) b!2010626))

(assert (= (and b!2010626 res!881834) b!2010638))

(assert (= (and b!2010638 res!881835) b!2010629))

(assert (= (and b!2010625 (not res!881836)) b!2010635))

(assert (= (and b!2010635 res!881837) b!2010627))

(assert (= (and b!2010627 (not res!881833)) b!2010632))

(assert (= (and b!2010632 (not res!881832)) b!2010636))

(assert (= (or b!2010630 b!2010626 b!2010627) bm!122939))

(declare-fun m!2443469 () Bool)

(assert (=> b!2010634 m!2443469))

(declare-fun m!2443471 () Bool)

(assert (=> b!2010628 m!2443471))

(assert (=> b!2010628 m!2443471))

(declare-fun m!2443473 () Bool)

(assert (=> b!2010628 m!2443473))

(declare-fun m!2443475 () Bool)

(assert (=> b!2010628 m!2443475))

(assert (=> b!2010628 m!2443473))

(assert (=> b!2010628 m!2443475))

(declare-fun m!2443477 () Bool)

(assert (=> b!2010628 m!2443477))

(assert (=> b!2010638 m!2443475))

(assert (=> b!2010638 m!2443475))

(declare-fun m!2443479 () Bool)

(assert (=> b!2010638 m!2443479))

(assert (=> b!2010632 m!2443475))

(assert (=> b!2010632 m!2443475))

(assert (=> b!2010632 m!2443479))

(declare-fun m!2443481 () Bool)

(assert (=> bm!122939 m!2443481))

(assert (=> b!2010636 m!2443471))

(assert (=> b!2010629 m!2443471))

(assert (=> d!614012 m!2443481))

(declare-fun m!2443483 () Bool)

(assert (=> d!614012 m!2443483))

(assert (=> b!2010519 d!614012))

(declare-fun d!614014 () Bool)

(assert (=> d!614014 (= (get!6987 lt!754982) (v!26858 lt!754982))))

(assert (=> b!2010519 d!614014))

(declare-fun d!614016 () Bool)

(assert (=> d!614016 (= (get!6988 lt!754983) (v!26857 lt!754983))))

(assert (=> b!2010520 d!614016))

(declare-fun d!614018 () Bool)

(declare-fun res!881844 () Bool)

(declare-fun e!1270461 () Bool)

(assert (=> d!614018 (=> res!881844 e!1270461)))

(assert (=> d!614018 (= res!881844 ((_ is Nil!22088) tokens!598))))

(assert (=> d!614018 (= (forall!4694 tokens!598 lambda!76099) e!1270461)))

(declare-fun b!2010643 () Bool)

(declare-fun e!1270462 () Bool)

(assert (=> b!2010643 (= e!1270461 e!1270462)))

(declare-fun res!881845 () Bool)

(assert (=> b!2010643 (=> (not res!881845) (not e!1270462))))

(declare-fun dynLambda!10875 (Int Token!7484) Bool)

(assert (=> b!2010643 (= res!881845 (dynLambda!10875 lambda!76099 (h!27489 tokens!598)))))

(declare-fun b!2010644 () Bool)

(assert (=> b!2010644 (= e!1270462 (forall!4694 (t!187669 tokens!598) lambda!76099))))

(assert (= (and d!614018 (not res!881844)) b!2010643))

(assert (= (and b!2010643 res!881845) b!2010644))

(declare-fun b_lambda!67135 () Bool)

(assert (=> (not b_lambda!67135) (not b!2010643)))

(declare-fun m!2443485 () Bool)

(assert (=> b!2010643 m!2443485))

(declare-fun m!2443487 () Bool)

(assert (=> b!2010644 m!2443487))

(assert (=> b!2010510 d!614018))

(declare-fun d!614020 () Bool)

(declare-fun res!881850 () Bool)

(declare-fun e!1270465 () Bool)

(assert (=> d!614020 (=> (not res!881850) (not e!1270465))))

(assert (=> d!614020 (= res!881850 (not (isEmpty!13702 (originalCharacters!4773 (h!27489 tokens!598)))))))

(assert (=> d!614020 (= (inv!29250 (h!27489 tokens!598)) e!1270465)))

(declare-fun b!2010649 () Bool)

(declare-fun res!881851 () Bool)

(assert (=> b!2010649 (=> (not res!881851) (not e!1270465))))

(declare-fun dynLambda!10876 (Int TokenValue!4102) BalanceConc!14574)

(assert (=> b!2010649 (= res!881851 (= (originalCharacters!4773 (h!27489 tokens!598)) (list!8995 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (value!124622 (h!27489 tokens!598))))))))

(declare-fun b!2010650 () Bool)

(declare-fun size!17265 (List!22169) Int)

(assert (=> b!2010650 (= e!1270465 (= (size!17262 (h!27489 tokens!598)) (size!17265 (originalCharacters!4773 (h!27489 tokens!598)))))))

(assert (= (and d!614020 res!881850) b!2010649))

(assert (= (and b!2010649 res!881851) b!2010650))

(declare-fun b_lambda!67137 () Bool)

(assert (=> (not b_lambda!67137) (not b!2010649)))

(declare-fun tb!125645 () Bool)

(declare-fun t!187672 () Bool)

(assert (=> (and b!2010521 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187672) tb!125645))

(declare-fun b!2010655 () Bool)

(declare-fun e!1270468 () Bool)

(declare-fun tp!599733 () Bool)

(declare-fun inv!29254 (Conc!7379) Bool)

(assert (=> b!2010655 (= e!1270468 (and (inv!29254 (c!324758 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (value!124622 (h!27489 tokens!598))))) tp!599733))))

(declare-fun result!150540 () Bool)

(declare-fun inv!29255 (BalanceConc!14574) Bool)

(assert (=> tb!125645 (= result!150540 (and (inv!29255 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (value!124622 (h!27489 tokens!598)))) e!1270468))))

(assert (= tb!125645 b!2010655))

(declare-fun m!2443489 () Bool)

(assert (=> b!2010655 m!2443489))

(declare-fun m!2443491 () Bool)

(assert (=> tb!125645 m!2443491))

(assert (=> b!2010649 t!187672))

(declare-fun b_and!158937 () Bool)

(assert (= b_and!158927 (and (=> t!187672 result!150540) b_and!158937)))

(declare-fun t!187674 () Bool)

(declare-fun tb!125647 () Bool)

(assert (=> (and b!2010497 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187674) tb!125647))

(declare-fun result!150544 () Bool)

(assert (= result!150544 result!150540))

(assert (=> b!2010649 t!187674))

(declare-fun b_and!158939 () Bool)

(assert (= b_and!158931 (and (=> t!187674 result!150544) b_and!158939)))

(declare-fun t!187676 () Bool)

(declare-fun tb!125649 () Bool)

(assert (=> (and b!2010516 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187676) tb!125649))

(declare-fun result!150546 () Bool)

(assert (= result!150546 result!150540))

(assert (=> b!2010649 t!187676))

(declare-fun b_and!158941 () Bool)

(assert (= b_and!158935 (and (=> t!187676 result!150546) b_and!158941)))

(declare-fun m!2443493 () Bool)

(assert (=> d!614020 m!2443493))

(declare-fun m!2443495 () Bool)

(assert (=> b!2010649 m!2443495))

(assert (=> b!2010649 m!2443495))

(declare-fun m!2443497 () Bool)

(assert (=> b!2010649 m!2443497))

(declare-fun m!2443499 () Bool)

(assert (=> b!2010650 m!2443499))

(assert (=> b!2010499 d!614020))

(declare-fun b!2010696 () Bool)

(declare-fun e!1270486 () Bool)

(assert (=> b!2010696 (= e!1270486 true)))

(declare-fun d!614022 () Bool)

(assert (=> d!614022 e!1270486))

(assert (= d!614022 b!2010696))

(declare-fun order!14015 () Int)

(declare-fun order!14013 () Int)

(declare-fun lambda!76102 () Int)

(declare-fun dynLambda!10877 (Int Int) Int)

(declare-fun dynLambda!10878 (Int Int) Int)

(assert (=> b!2010696 (< (dynLambda!10877 order!14013 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) (dynLambda!10878 order!14015 lambda!76102))))

(declare-fun order!14017 () Int)

(declare-fun dynLambda!10879 (Int Int) Int)

(assert (=> b!2010696 (< (dynLambda!10879 order!14017 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) (dynLambda!10878 order!14015 lambda!76102))))

(declare-fun dynLambda!10880 (Int BalanceConc!14574) TokenValue!4102)

(assert (=> d!614022 (= (list!8995 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) lt!754992))) (list!8995 lt!754992))))

(declare-fun lt!755032 () Unit!36655)

(declare-fun ForallOf!429 (Int BalanceConc!14574) Unit!36655)

(assert (=> d!614022 (= lt!755032 (ForallOf!429 lambda!76102 lt!754992))))

(assert (=> d!614022 (= (lemmaSemiInverse!923 (transformation!3966 (rule!6193 (h!27489 tokens!598))) lt!754992) lt!755032)))

(declare-fun b_lambda!67139 () Bool)

(assert (=> (not b_lambda!67139) (not d!614022)))

(declare-fun t!187679 () Bool)

(declare-fun tb!125651 () Bool)

(assert (=> (and b!2010521 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187679) tb!125651))

(declare-fun e!1270487 () Bool)

(declare-fun tp!599734 () Bool)

(declare-fun b!2010697 () Bool)

(assert (=> b!2010697 (= e!1270487 (and (inv!29254 (c!324758 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) lt!754992)))) tp!599734))))

(declare-fun result!150548 () Bool)

(assert (=> tb!125651 (= result!150548 (and (inv!29255 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) lt!754992))) e!1270487))))

(assert (= tb!125651 b!2010697))

(declare-fun m!2443553 () Bool)

(assert (=> b!2010697 m!2443553))

(declare-fun m!2443555 () Bool)

(assert (=> tb!125651 m!2443555))

(assert (=> d!614022 t!187679))

(declare-fun b_and!158943 () Bool)

(assert (= b_and!158937 (and (=> t!187679 result!150548) b_and!158943)))

(declare-fun tb!125653 () Bool)

(declare-fun t!187681 () Bool)

(assert (=> (and b!2010497 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187681) tb!125653))

(declare-fun result!150550 () Bool)

(assert (= result!150550 result!150548))

(assert (=> d!614022 t!187681))

(declare-fun b_and!158945 () Bool)

(assert (= b_and!158939 (and (=> t!187681 result!150550) b_and!158945)))

(declare-fun t!187683 () Bool)

(declare-fun tb!125655 () Bool)

(assert (=> (and b!2010516 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187683) tb!125655))

(declare-fun result!150552 () Bool)

(assert (= result!150552 result!150548))

(assert (=> d!614022 t!187683))

(declare-fun b_and!158947 () Bool)

(assert (= b_and!158941 (and (=> t!187683 result!150552) b_and!158947)))

(declare-fun b_lambda!67141 () Bool)

(assert (=> (not b_lambda!67141) (not d!614022)))

(declare-fun t!187685 () Bool)

(declare-fun tb!125657 () Bool)

(assert (=> (and b!2010521 (= (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187685) tb!125657))

(declare-fun result!150554 () Bool)

(assert (=> tb!125657 (= result!150554 (inv!21 (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) lt!754992)))))

(declare-fun m!2443557 () Bool)

(assert (=> tb!125657 m!2443557))

(assert (=> d!614022 t!187685))

(declare-fun b_and!158949 () Bool)

(assert (= b_and!158925 (and (=> t!187685 result!150554) b_and!158949)))

(declare-fun tb!125659 () Bool)

(declare-fun t!187687 () Bool)

(assert (=> (and b!2010497 (= (toValue!5635 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187687) tb!125659))

(declare-fun result!150558 () Bool)

(assert (= result!150558 result!150554))

(assert (=> d!614022 t!187687))

(declare-fun b_and!158951 () Bool)

(assert (= b_and!158929 (and (=> t!187687 result!150558) b_and!158951)))

(declare-fun t!187689 () Bool)

(declare-fun tb!125661 () Bool)

(assert (=> (and b!2010516 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187689) tb!125661))

(declare-fun result!150560 () Bool)

(assert (= result!150560 result!150554))

(assert (=> d!614022 t!187689))

(declare-fun b_and!158953 () Bool)

(assert (= b_and!158933 (and (=> t!187689 result!150560) b_and!158953)))

(declare-fun m!2443559 () Bool)

(assert (=> d!614022 m!2443559))

(assert (=> d!614022 m!2443397))

(declare-fun m!2443561 () Bool)

(assert (=> d!614022 m!2443561))

(declare-fun m!2443563 () Bool)

(assert (=> d!614022 m!2443563))

(declare-fun m!2443565 () Bool)

(assert (=> d!614022 m!2443565))

(assert (=> d!614022 m!2443561))

(assert (=> d!614022 m!2443565))

(assert (=> b!2010500 d!614022))

(declare-fun d!614028 () Bool)

(declare-fun isEmpty!13703 (Option!4614) Bool)

(assert (=> d!614028 (= (isDefined!3901 lt!754982) (not (isEmpty!13703 lt!754982)))))

(declare-fun bs!419791 () Bool)

(assert (= bs!419791 d!614028))

(declare-fun m!2443567 () Bool)

(assert (=> bs!419791 m!2443567))

(assert (=> b!2010500 d!614028))

(declare-fun d!614030 () Bool)

(declare-fun e!1270498 () Bool)

(assert (=> d!614030 e!1270498))

(declare-fun res!881886 () Bool)

(assert (=> d!614030 (=> (not res!881886) (not e!1270498))))

(assert (=> d!614030 (= res!881886 (isDefined!3901 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 separatorToken!354)))))))

(declare-fun lt!755036 () Unit!36655)

(declare-fun choose!12246 (LexerInterface!3579 List!22171 List!22169 Token!7484) Unit!36655)

(assert (=> d!614030 (= lt!755036 (choose!12246 thiss!23328 rules!3198 lt!754997 separatorToken!354))))

(assert (=> d!614030 (rulesInvariant!3186 thiss!23328 rules!3198)))

(assert (=> d!614030 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!781 thiss!23328 rules!3198 lt!754997 separatorToken!354) lt!755036)))

(declare-fun b!2010713 () Bool)

(declare-fun res!881887 () Bool)

(assert (=> b!2010713 (=> (not res!881887) (not e!1270498))))

(assert (=> b!2010713 (= res!881887 (matchR!2657 (regex!3966 (get!6987 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 separatorToken!354))))) (list!8995 (charsOf!2506 separatorToken!354))))))

(declare-fun b!2010714 () Bool)

(assert (=> b!2010714 (= e!1270498 (= (rule!6193 separatorToken!354) (get!6987 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 separatorToken!354))))))))

(assert (= (and d!614030 res!881886) b!2010713))

(assert (= (and b!2010713 res!881887) b!2010714))

(assert (=> d!614030 m!2443421))

(assert (=> d!614030 m!2443421))

(declare-fun m!2443569 () Bool)

(assert (=> d!614030 m!2443569))

(declare-fun m!2443571 () Bool)

(assert (=> d!614030 m!2443571))

(assert (=> d!614030 m!2443351))

(assert (=> b!2010713 m!2443429))

(declare-fun m!2443577 () Bool)

(assert (=> b!2010713 m!2443577))

(assert (=> b!2010713 m!2443421))

(declare-fun m!2443579 () Bool)

(assert (=> b!2010713 m!2443579))

(assert (=> b!2010713 m!2443421))

(assert (=> b!2010713 m!2443411))

(assert (=> b!2010713 m!2443411))

(assert (=> b!2010713 m!2443429))

(assert (=> b!2010714 m!2443421))

(assert (=> b!2010714 m!2443421))

(assert (=> b!2010714 m!2443579))

(assert (=> b!2010500 d!614030))

(declare-fun d!614032 () Bool)

(declare-fun e!1270511 () Bool)

(assert (=> d!614032 e!1270511))

(declare-fun res!881899 () Bool)

(assert (=> d!614032 (=> (not res!881899) (not e!1270511))))

(declare-fun lt!755044 () List!22169)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3234 (List!22169) (InoxSet C!10928))

(assert (=> d!614032 (= res!881899 (= (content!3234 lt!755044) ((_ map or) (content!3234 lt!754999) (content!3234 lt!754991))))))

(declare-fun e!1270510 () List!22169)

(assert (=> d!614032 (= lt!755044 e!1270510)))

(declare-fun c!324791 () Bool)

(assert (=> d!614032 (= c!324791 ((_ is Nil!22087) lt!754999))))

(assert (=> d!614032 (= (++!5961 lt!754999 lt!754991) lt!755044)))

(declare-fun b!2010737 () Bool)

(declare-fun res!881900 () Bool)

(assert (=> b!2010737 (=> (not res!881900) (not e!1270511))))

(assert (=> b!2010737 (= res!881900 (= (size!17265 lt!755044) (+ (size!17265 lt!754999) (size!17265 lt!754991))))))

(declare-fun b!2010738 () Bool)

(assert (=> b!2010738 (= e!1270511 (or (not (= lt!754991 Nil!22087)) (= lt!755044 lt!754999)))))

(declare-fun b!2010735 () Bool)

(assert (=> b!2010735 (= e!1270510 lt!754991)))

(declare-fun b!2010736 () Bool)

(assert (=> b!2010736 (= e!1270510 (Cons!22087 (h!27488 lt!754999) (++!5961 (t!187668 lt!754999) lt!754991)))))

(assert (= (and d!614032 c!324791) b!2010735))

(assert (= (and d!614032 (not c!324791)) b!2010736))

(assert (= (and d!614032 res!881899) b!2010737))

(assert (= (and b!2010737 res!881900) b!2010738))

(declare-fun m!2443623 () Bool)

(assert (=> d!614032 m!2443623))

(declare-fun m!2443625 () Bool)

(assert (=> d!614032 m!2443625))

(declare-fun m!2443627 () Bool)

(assert (=> d!614032 m!2443627))

(declare-fun m!2443629 () Bool)

(assert (=> b!2010737 m!2443629))

(declare-fun m!2443631 () Bool)

(assert (=> b!2010737 m!2443631))

(declare-fun m!2443633 () Bool)

(assert (=> b!2010737 m!2443633))

(declare-fun m!2443635 () Bool)

(assert (=> b!2010736 m!2443635))

(assert (=> b!2010500 d!614032))

(declare-fun bs!419797 () Bool)

(declare-fun b!2010799 () Bool)

(assert (= bs!419797 (and b!2010799 b!2010510)))

(declare-fun lambda!76111 () Int)

(assert (=> bs!419797 (not (= lambda!76111 lambda!76099))))

(declare-fun b!2010810 () Bool)

(declare-fun e!1270557 () Bool)

(assert (=> b!2010810 (= e!1270557 true)))

(declare-fun b!2010809 () Bool)

(declare-fun e!1270556 () Bool)

(assert (=> b!2010809 (= e!1270556 e!1270557)))

(declare-fun b!2010808 () Bool)

(declare-fun e!1270555 () Bool)

(assert (=> b!2010808 (= e!1270555 e!1270556)))

(assert (=> b!2010799 e!1270555))

(assert (= b!2010809 b!2010810))

(assert (= b!2010808 b!2010809))

(assert (= (and b!2010799 ((_ is Cons!22089) rules!3198)) b!2010808))

(declare-fun order!14027 () Int)

(declare-fun dynLambda!10882 (Int Int) Int)

(assert (=> b!2010810 (< (dynLambda!10877 order!14013 (toValue!5635 (transformation!3966 (h!27490 rules!3198)))) (dynLambda!10882 order!14027 lambda!76111))))

(assert (=> b!2010810 (< (dynLambda!10879 order!14017 (toChars!5494 (transformation!3966 (h!27490 rules!3198)))) (dynLambda!10882 order!14027 lambda!76111))))

(assert (=> b!2010799 true))

(declare-fun b!2010792 () Bool)

(declare-fun c!324809 () Bool)

(declare-fun lt!755077 () Option!4613)

(assert (=> b!2010792 (= c!324809 (and ((_ is Some!4612) lt!755077) (not (= (_1!11846 (v!26857 lt!755077)) (h!27489 (t!187669 tokens!598))))))))

(declare-fun e!1270547 () List!22169)

(declare-fun e!1270548 () List!22169)

(assert (=> b!2010792 (= e!1270547 e!1270548)))

(declare-fun b!2010793 () Bool)

(declare-fun e!1270545 () List!22169)

(declare-fun call!122962 () List!22169)

(assert (=> b!2010793 (= e!1270545 call!122962)))

(declare-fun b!2010794 () Bool)

(declare-fun e!1270546 () List!22169)

(assert (=> b!2010794 (= e!1270546 Nil!22087)))

(declare-fun bm!122954 () Bool)

(declare-fun call!122960 () BalanceConc!14574)

(declare-fun c!324811 () Bool)

(declare-fun call!122959 () BalanceConc!14574)

(assert (=> bm!122954 (= call!122962 (list!8995 (ite c!324811 call!122960 call!122959)))))

(declare-fun bm!122955 () Bool)

(assert (=> bm!122955 (= call!122959 call!122960)))

(declare-fun b!2010795 () Bool)

(declare-fun call!122961 () List!22169)

(declare-fun lt!755078 () List!22169)

(assert (=> b!2010795 (= e!1270548 (++!5961 call!122961 lt!755078))))

(declare-fun bm!122956 () Bool)

(declare-fun c!324810 () Bool)

(assert (=> bm!122956 (= c!324810 c!324811)))

(declare-fun call!122963 () List!22169)

(assert (=> bm!122956 (= call!122961 (++!5961 e!1270545 (ite c!324811 lt!755078 call!122963)))))

(declare-fun b!2010796 () Bool)

(assert (=> b!2010796 (= e!1270547 call!122961)))

(declare-fun d!614038 () Bool)

(declare-fun c!324808 () Bool)

(assert (=> d!614038 (= c!324808 ((_ is Cons!22088) (t!187669 tokens!598)))))

(assert (=> d!614038 (= (printWithSeparatorTokenWhenNeededList!608 thiss!23328 rules!3198 (t!187669 tokens!598) separatorToken!354) e!1270546)))

(declare-fun bm!122957 () Bool)

(assert (=> bm!122957 (= call!122960 (charsOf!2506 (ite c!324811 (h!27489 (t!187669 tokens!598)) (ite c!324809 separatorToken!354 (h!27489 (t!187669 tokens!598))))))))

(declare-fun bm!122958 () Bool)

(assert (=> bm!122958 (= call!122963 call!122962)))

(declare-fun b!2010797 () Bool)

(assert (=> b!2010797 (= e!1270545 (list!8995 (charsOf!2506 (h!27489 (t!187669 tokens!598)))))))

(declare-fun b!2010798 () Bool)

(assert (=> b!2010798 (= e!1270548 Nil!22087)))

(declare-datatypes ((IArray!14767 0))(
  ( (IArray!14768 (innerList!7441 List!22170)) )
))
(declare-datatypes ((Conc!7381 0))(
  ( (Node!7381 (left!17574 Conc!7381) (right!17904 Conc!7381) (csize!14992 Int) (cheight!7592 Int)) (Leaf!10827 (xs!10279 IArray!14767) (csize!14993 Int)) (Empty!7381) )
))
(declare-datatypes ((BalanceConc!14578 0))(
  ( (BalanceConc!14579 (c!324896 Conc!7381)) )
))
(declare-fun print!1543 (LexerInterface!3579 BalanceConc!14578) BalanceConc!14574)

(declare-fun singletonSeq!1944 (Token!7484) BalanceConc!14578)

(declare-fun printTailRec!1048 (LexerInterface!3579 BalanceConc!14578 Int BalanceConc!14574) BalanceConc!14574)

(assert (=> b!2010798 (= (print!1543 thiss!23328 (singletonSeq!1944 (h!27489 (t!187669 tokens!598)))) (printTailRec!1048 thiss!23328 (singletonSeq!1944 (h!27489 (t!187669 tokens!598))) 0 (BalanceConc!14575 Empty!7379)))))

(declare-fun lt!755080 () Unit!36655)

(declare-fun Unit!36660 () Unit!36655)

(assert (=> b!2010798 (= lt!755080 Unit!36660)))

(declare-fun lt!755079 () Unit!36655)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!758 (LexerInterface!3579 List!22171 List!22169 List!22169) Unit!36655)

(assert (=> b!2010798 (= lt!755079 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!758 thiss!23328 rules!3198 call!122963 lt!755078))))

(assert (=> b!2010798 false))

(declare-fun lt!755076 () Unit!36655)

(declare-fun Unit!36661 () Unit!36655)

(assert (=> b!2010798 (= lt!755076 Unit!36661)))

(assert (=> b!2010799 (= e!1270546 e!1270547)))

(declare-fun lt!755075 () Unit!36655)

(declare-fun forallContained!727 (List!22170 Int Token!7484) Unit!36655)

(assert (=> b!2010799 (= lt!755075 (forallContained!727 (t!187669 tokens!598) lambda!76111 (h!27489 (t!187669 tokens!598))))))

(assert (=> b!2010799 (= lt!755078 (printWithSeparatorTokenWhenNeededList!608 thiss!23328 rules!3198 (t!187669 (t!187669 tokens!598)) separatorToken!354))))

(assert (=> b!2010799 (= lt!755077 (maxPrefix!2015 thiss!23328 rules!3198 (++!5961 (list!8995 (charsOf!2506 (h!27489 (t!187669 tokens!598)))) lt!755078)))))

(assert (=> b!2010799 (= c!324811 (and ((_ is Some!4612) lt!755077) (= (_1!11846 (v!26857 lt!755077)) (h!27489 (t!187669 tokens!598)))))))

(assert (= (and d!614038 c!324808) b!2010799))

(assert (= (and d!614038 (not c!324808)) b!2010794))

(assert (= (and b!2010799 c!324811) b!2010796))

(assert (= (and b!2010799 (not c!324811)) b!2010792))

(assert (= (and b!2010792 c!324809) b!2010795))

(assert (= (and b!2010792 (not c!324809)) b!2010798))

(assert (= (or b!2010795 b!2010798) bm!122955))

(assert (= (or b!2010795 b!2010798) bm!122958))

(assert (= (or b!2010796 bm!122955) bm!122957))

(assert (= (or b!2010796 bm!122958) bm!122954))

(assert (= (or b!2010796 b!2010795) bm!122956))

(assert (= (and bm!122956 c!324810) b!2010793))

(assert (= (and bm!122956 (not c!324810)) b!2010797))

(declare-fun m!2443685 () Bool)

(assert (=> bm!122956 m!2443685))

(declare-fun m!2443687 () Bool)

(assert (=> b!2010798 m!2443687))

(assert (=> b!2010798 m!2443687))

(declare-fun m!2443689 () Bool)

(assert (=> b!2010798 m!2443689))

(assert (=> b!2010798 m!2443687))

(declare-fun m!2443691 () Bool)

(assert (=> b!2010798 m!2443691))

(declare-fun m!2443693 () Bool)

(assert (=> b!2010798 m!2443693))

(declare-fun m!2443695 () Bool)

(assert (=> b!2010795 m!2443695))

(declare-fun m!2443697 () Bool)

(assert (=> b!2010799 m!2443697))

(declare-fun m!2443699 () Bool)

(assert (=> b!2010799 m!2443699))

(declare-fun m!2443701 () Bool)

(assert (=> b!2010799 m!2443701))

(assert (=> b!2010799 m!2443699))

(declare-fun m!2443703 () Bool)

(assert (=> b!2010799 m!2443703))

(assert (=> b!2010799 m!2443703))

(declare-fun m!2443705 () Bool)

(assert (=> b!2010799 m!2443705))

(assert (=> b!2010799 m!2443705))

(declare-fun m!2443707 () Bool)

(assert (=> b!2010799 m!2443707))

(assert (=> b!2010797 m!2443699))

(assert (=> b!2010797 m!2443699))

(assert (=> b!2010797 m!2443703))

(declare-fun m!2443709 () Bool)

(assert (=> bm!122957 m!2443709))

(declare-fun m!2443711 () Bool)

(assert (=> bm!122954 m!2443711))

(assert (=> b!2010500 d!614038))

(declare-fun d!614058 () Bool)

(declare-fun list!8998 (Conc!7379) List!22169)

(assert (=> d!614058 (= (list!8995 (charsOf!2506 separatorToken!354)) (list!8998 (c!324758 (charsOf!2506 separatorToken!354))))))

(declare-fun bs!419798 () Bool)

(assert (= bs!419798 d!614058))

(declare-fun m!2443713 () Bool)

(assert (=> bs!419798 m!2443713))

(assert (=> b!2010500 d!614058))

(declare-fun d!614060 () Bool)

(declare-fun e!1270586 () Bool)

(assert (=> d!614060 e!1270586))

(declare-fun res!881931 () Bool)

(assert (=> d!614060 (=> res!881931 e!1270586)))

(declare-fun lt!755110 () Option!4613)

(declare-fun isEmpty!13705 (Option!4613) Bool)

(assert (=> d!614060 (= res!881931 (isEmpty!13705 lt!755110))))

(declare-fun e!1270587 () Option!4613)

(assert (=> d!614060 (= lt!755110 e!1270587)))

(declare-fun c!324826 () Bool)

(assert (=> d!614060 (= c!324826 (and ((_ is Cons!22089) rules!3198) ((_ is Nil!22089) (t!187670 rules!3198))))))

(declare-fun lt!755109 () Unit!36655)

(declare-fun lt!755111 () Unit!36655)

(assert (=> d!614060 (= lt!755109 lt!755111)))

(declare-fun isPrefix!1965 (List!22169 List!22169) Bool)

(assert (=> d!614060 (isPrefix!1965 lt!754999 lt!754999)))

(declare-fun lemmaIsPrefixRefl!1283 (List!22169 List!22169) Unit!36655)

(assert (=> d!614060 (= lt!755111 (lemmaIsPrefixRefl!1283 lt!754999 lt!754999))))

(declare-fun rulesValidInductive!1364 (LexerInterface!3579 List!22171) Bool)

(assert (=> d!614060 (rulesValidInductive!1364 thiss!23328 rules!3198)))

(assert (=> d!614060 (= (maxPrefix!2015 thiss!23328 rules!3198 lt!754999) lt!755110)))

(declare-fun b!2010868 () Bool)

(declare-fun res!881936 () Bool)

(declare-fun e!1270585 () Bool)

(assert (=> b!2010868 (=> (not res!881936) (not e!1270585))))

(assert (=> b!2010868 (= res!881936 (matchR!2657 (regex!3966 (rule!6193 (_1!11846 (get!6988 lt!755110)))) (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755110))))))))

(declare-fun b!2010869 () Bool)

(declare-fun call!122981 () Option!4613)

(assert (=> b!2010869 (= e!1270587 call!122981)))

(declare-fun b!2010870 () Bool)

(declare-fun lt!755113 () Option!4613)

(declare-fun lt!755112 () Option!4613)

(assert (=> b!2010870 (= e!1270587 (ite (and ((_ is None!4612) lt!755113) ((_ is None!4612) lt!755112)) None!4612 (ite ((_ is None!4612) lt!755112) lt!755113 (ite ((_ is None!4612) lt!755113) lt!755112 (ite (>= (size!17262 (_1!11846 (v!26857 lt!755113))) (size!17262 (_1!11846 (v!26857 lt!755112)))) lt!755113 lt!755112)))))))

(assert (=> b!2010870 (= lt!755113 call!122981)))

(assert (=> b!2010870 (= lt!755112 (maxPrefix!2015 thiss!23328 (t!187670 rules!3198) lt!754999))))

(declare-fun b!2010871 () Bool)

(declare-fun res!881937 () Bool)

(assert (=> b!2010871 (=> (not res!881937) (not e!1270585))))

(assert (=> b!2010871 (= res!881937 (= (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755110)))) (originalCharacters!4773 (_1!11846 (get!6988 lt!755110)))))))

(declare-fun b!2010872 () Bool)

(declare-fun res!881933 () Bool)

(assert (=> b!2010872 (=> (not res!881933) (not e!1270585))))

(declare-fun apply!5790 (TokenValueInjection!7788 BalanceConc!14574) TokenValue!4102)

(assert (=> b!2010872 (= res!881933 (= (value!124622 (_1!11846 (get!6988 lt!755110))) (apply!5790 (transformation!3966 (rule!6193 (_1!11846 (get!6988 lt!755110)))) (seqFromList!2820 (originalCharacters!4773 (_1!11846 (get!6988 lt!755110)))))))))

(declare-fun b!2010873 () Bool)

(declare-fun res!881932 () Bool)

(assert (=> b!2010873 (=> (not res!881932) (not e!1270585))))

(assert (=> b!2010873 (= res!881932 (< (size!17265 (_2!11846 (get!6988 lt!755110))) (size!17265 lt!754999)))))

(declare-fun b!2010874 () Bool)

(assert (=> b!2010874 (= e!1270585 (contains!4043 rules!3198 (rule!6193 (_1!11846 (get!6988 lt!755110)))))))

(declare-fun b!2010875 () Bool)

(assert (=> b!2010875 (= e!1270586 e!1270585)))

(declare-fun res!881935 () Bool)

(assert (=> b!2010875 (=> (not res!881935) (not e!1270585))))

(assert (=> b!2010875 (= res!881935 (isDefined!3902 lt!755110))))

(declare-fun bm!122976 () Bool)

(declare-fun maxPrefixOneRule!1247 (LexerInterface!3579 Rule!7732 List!22169) Option!4613)

(assert (=> bm!122976 (= call!122981 (maxPrefixOneRule!1247 thiss!23328 (h!27490 rules!3198) lt!754999))))

(declare-fun b!2010876 () Bool)

(declare-fun res!881934 () Bool)

(assert (=> b!2010876 (=> (not res!881934) (not e!1270585))))

(assert (=> b!2010876 (= res!881934 (= (++!5961 (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755110)))) (_2!11846 (get!6988 lt!755110))) lt!754999))))

(assert (= (and d!614060 c!324826) b!2010869))

(assert (= (and d!614060 (not c!324826)) b!2010870))

(assert (= (or b!2010869 b!2010870) bm!122976))

(assert (= (and d!614060 (not res!881931)) b!2010875))

(assert (= (and b!2010875 res!881935) b!2010871))

(assert (= (and b!2010871 res!881937) b!2010873))

(assert (= (and b!2010873 res!881932) b!2010876))

(assert (= (and b!2010876 res!881934) b!2010872))

(assert (= (and b!2010872 res!881933) b!2010868))

(assert (= (and b!2010868 res!881936) b!2010874))

(declare-fun m!2443743 () Bool)

(assert (=> b!2010876 m!2443743))

(declare-fun m!2443745 () Bool)

(assert (=> b!2010876 m!2443745))

(assert (=> b!2010876 m!2443745))

(declare-fun m!2443747 () Bool)

(assert (=> b!2010876 m!2443747))

(assert (=> b!2010876 m!2443747))

(declare-fun m!2443749 () Bool)

(assert (=> b!2010876 m!2443749))

(assert (=> b!2010873 m!2443743))

(declare-fun m!2443751 () Bool)

(assert (=> b!2010873 m!2443751))

(assert (=> b!2010873 m!2443631))

(assert (=> b!2010868 m!2443743))

(assert (=> b!2010868 m!2443745))

(assert (=> b!2010868 m!2443745))

(assert (=> b!2010868 m!2443747))

(assert (=> b!2010868 m!2443747))

(declare-fun m!2443753 () Bool)

(assert (=> b!2010868 m!2443753))

(assert (=> b!2010872 m!2443743))

(declare-fun m!2443755 () Bool)

(assert (=> b!2010872 m!2443755))

(assert (=> b!2010872 m!2443755))

(declare-fun m!2443757 () Bool)

(assert (=> b!2010872 m!2443757))

(assert (=> b!2010874 m!2443743))

(declare-fun m!2443759 () Bool)

(assert (=> b!2010874 m!2443759))

(declare-fun m!2443761 () Bool)

(assert (=> b!2010870 m!2443761))

(declare-fun m!2443763 () Bool)

(assert (=> d!614060 m!2443763))

(declare-fun m!2443765 () Bool)

(assert (=> d!614060 m!2443765))

(declare-fun m!2443767 () Bool)

(assert (=> d!614060 m!2443767))

(declare-fun m!2443769 () Bool)

(assert (=> d!614060 m!2443769))

(assert (=> b!2010871 m!2443743))

(assert (=> b!2010871 m!2443745))

(assert (=> b!2010871 m!2443745))

(assert (=> b!2010871 m!2443747))

(declare-fun m!2443771 () Bool)

(assert (=> b!2010875 m!2443771))

(declare-fun m!2443773 () Bool)

(assert (=> bm!122976 m!2443773))

(assert (=> b!2010500 d!614060))

(declare-fun d!614064 () Bool)

(declare-fun e!1270593 () Bool)

(assert (=> d!614064 e!1270593))

(declare-fun res!881938 () Bool)

(assert (=> d!614064 (=> res!881938 e!1270593)))

(declare-fun lt!755117 () Option!4613)

(assert (=> d!614064 (= res!881938 (isEmpty!13705 lt!755117))))

(declare-fun e!1270594 () Option!4613)

(assert (=> d!614064 (= lt!755117 e!1270594)))

(declare-fun c!324829 () Bool)

(assert (=> d!614064 (= c!324829 (and ((_ is Cons!22089) rules!3198) ((_ is Nil!22089) (t!187670 rules!3198))))))

(declare-fun lt!755116 () Unit!36655)

(declare-fun lt!755118 () Unit!36655)

(assert (=> d!614064 (= lt!755116 lt!755118)))

(assert (=> d!614064 (isPrefix!1965 (++!5961 lt!754999 lt!754991) (++!5961 lt!754999 lt!754991))))

(assert (=> d!614064 (= lt!755118 (lemmaIsPrefixRefl!1283 (++!5961 lt!754999 lt!754991) (++!5961 lt!754999 lt!754991)))))

(assert (=> d!614064 (rulesValidInductive!1364 thiss!23328 rules!3198)))

(assert (=> d!614064 (= (maxPrefix!2015 thiss!23328 rules!3198 (++!5961 lt!754999 lt!754991)) lt!755117)))

(declare-fun b!2010881 () Bool)

(declare-fun res!881945 () Bool)

(declare-fun e!1270592 () Bool)

(assert (=> b!2010881 (=> (not res!881945) (not e!1270592))))

(assert (=> b!2010881 (= res!881945 (matchR!2657 (regex!3966 (rule!6193 (_1!11846 (get!6988 lt!755117)))) (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755117))))))))

(declare-fun b!2010882 () Bool)

(declare-fun call!122982 () Option!4613)

(assert (=> b!2010882 (= e!1270594 call!122982)))

(declare-fun b!2010884 () Bool)

(declare-fun lt!755120 () Option!4613)

(declare-fun lt!755119 () Option!4613)

(assert (=> b!2010884 (= e!1270594 (ite (and ((_ is None!4612) lt!755120) ((_ is None!4612) lt!755119)) None!4612 (ite ((_ is None!4612) lt!755119) lt!755120 (ite ((_ is None!4612) lt!755120) lt!755119 (ite (>= (size!17262 (_1!11846 (v!26857 lt!755120))) (size!17262 (_1!11846 (v!26857 lt!755119)))) lt!755120 lt!755119)))))))

(assert (=> b!2010884 (= lt!755120 call!122982)))

(assert (=> b!2010884 (= lt!755119 (maxPrefix!2015 thiss!23328 (t!187670 rules!3198) (++!5961 lt!754999 lt!754991)))))

(declare-fun b!2010886 () Bool)

(declare-fun res!881946 () Bool)

(assert (=> b!2010886 (=> (not res!881946) (not e!1270592))))

(assert (=> b!2010886 (= res!881946 (= (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755117)))) (originalCharacters!4773 (_1!11846 (get!6988 lt!755117)))))))

(declare-fun b!2010887 () Bool)

(declare-fun res!881942 () Bool)

(assert (=> b!2010887 (=> (not res!881942) (not e!1270592))))

(assert (=> b!2010887 (= res!881942 (= (value!124622 (_1!11846 (get!6988 lt!755117))) (apply!5790 (transformation!3966 (rule!6193 (_1!11846 (get!6988 lt!755117)))) (seqFromList!2820 (originalCharacters!4773 (_1!11846 (get!6988 lt!755117)))))))))

(declare-fun b!2010888 () Bool)

(declare-fun res!881941 () Bool)

(assert (=> b!2010888 (=> (not res!881941) (not e!1270592))))

(assert (=> b!2010888 (= res!881941 (< (size!17265 (_2!11846 (get!6988 lt!755117))) (size!17265 (++!5961 lt!754999 lt!754991))))))

(declare-fun b!2010889 () Bool)

(assert (=> b!2010889 (= e!1270592 (contains!4043 rules!3198 (rule!6193 (_1!11846 (get!6988 lt!755117)))))))

(declare-fun b!2010890 () Bool)

(assert (=> b!2010890 (= e!1270593 e!1270592)))

(declare-fun res!881944 () Bool)

(assert (=> b!2010890 (=> (not res!881944) (not e!1270592))))

(assert (=> b!2010890 (= res!881944 (isDefined!3902 lt!755117))))

(declare-fun bm!122977 () Bool)

(assert (=> bm!122977 (= call!122982 (maxPrefixOneRule!1247 thiss!23328 (h!27490 rules!3198) (++!5961 lt!754999 lt!754991)))))

(declare-fun b!2010891 () Bool)

(declare-fun res!881943 () Bool)

(assert (=> b!2010891 (=> (not res!881943) (not e!1270592))))

(assert (=> b!2010891 (= res!881943 (= (++!5961 (list!8995 (charsOf!2506 (_1!11846 (get!6988 lt!755117)))) (_2!11846 (get!6988 lt!755117))) (++!5961 lt!754999 lt!754991)))))

(assert (= (and d!614064 c!324829) b!2010882))

(assert (= (and d!614064 (not c!324829)) b!2010884))

(assert (= (or b!2010882 b!2010884) bm!122977))

(assert (= (and d!614064 (not res!881938)) b!2010890))

(assert (= (and b!2010890 res!881944) b!2010886))

(assert (= (and b!2010886 res!881946) b!2010888))

(assert (= (and b!2010888 res!881941) b!2010891))

(assert (= (and b!2010891 res!881943) b!2010887))

(assert (= (and b!2010887 res!881942) b!2010881))

(assert (= (and b!2010881 res!881945) b!2010889))

(declare-fun m!2443775 () Bool)

(assert (=> b!2010891 m!2443775))

(declare-fun m!2443777 () Bool)

(assert (=> b!2010891 m!2443777))

(assert (=> b!2010891 m!2443777))

(declare-fun m!2443779 () Bool)

(assert (=> b!2010891 m!2443779))

(assert (=> b!2010891 m!2443779))

(declare-fun m!2443781 () Bool)

(assert (=> b!2010891 m!2443781))

(assert (=> b!2010888 m!2443775))

(declare-fun m!2443783 () Bool)

(assert (=> b!2010888 m!2443783))

(assert (=> b!2010888 m!2443415))

(declare-fun m!2443785 () Bool)

(assert (=> b!2010888 m!2443785))

(assert (=> b!2010881 m!2443775))

(assert (=> b!2010881 m!2443777))

(assert (=> b!2010881 m!2443777))

(assert (=> b!2010881 m!2443779))

(assert (=> b!2010881 m!2443779))

(declare-fun m!2443797 () Bool)

(assert (=> b!2010881 m!2443797))

(assert (=> b!2010887 m!2443775))

(declare-fun m!2443799 () Bool)

(assert (=> b!2010887 m!2443799))

(assert (=> b!2010887 m!2443799))

(declare-fun m!2443803 () Bool)

(assert (=> b!2010887 m!2443803))

(assert (=> b!2010889 m!2443775))

(declare-fun m!2443805 () Bool)

(assert (=> b!2010889 m!2443805))

(assert (=> b!2010884 m!2443415))

(declare-fun m!2443807 () Bool)

(assert (=> b!2010884 m!2443807))

(declare-fun m!2443809 () Bool)

(assert (=> d!614064 m!2443809))

(assert (=> d!614064 m!2443415))

(assert (=> d!614064 m!2443415))

(declare-fun m!2443811 () Bool)

(assert (=> d!614064 m!2443811))

(assert (=> d!614064 m!2443415))

(assert (=> d!614064 m!2443415))

(declare-fun m!2443813 () Bool)

(assert (=> d!614064 m!2443813))

(assert (=> d!614064 m!2443769))

(assert (=> b!2010886 m!2443775))

(assert (=> b!2010886 m!2443777))

(assert (=> b!2010886 m!2443777))

(assert (=> b!2010886 m!2443779))

(declare-fun m!2443815 () Bool)

(assert (=> b!2010890 m!2443815))

(assert (=> bm!122977 m!2443415))

(declare-fun m!2443817 () Bool)

(assert (=> bm!122977 m!2443817))

(assert (=> b!2010500 d!614064))

(declare-fun b!2010934 () Bool)

(declare-fun e!1270620 () Option!4614)

(declare-fun e!1270621 () Option!4614)

(assert (=> b!2010934 (= e!1270620 e!1270621)))

(declare-fun c!324839 () Bool)

(assert (=> b!2010934 (= c!324839 (and ((_ is Cons!22089) rules!3198) (not (= (tag!4432 (h!27490 rules!3198)) (tag!4432 (rule!6193 separatorToken!354))))))))

(declare-fun b!2010935 () Bool)

(declare-fun e!1270618 () Bool)

(declare-fun lt!755136 () Option!4614)

(assert (=> b!2010935 (= e!1270618 (= (tag!4432 (get!6987 lt!755136)) (tag!4432 (rule!6193 separatorToken!354))))))

(declare-fun b!2010936 () Bool)

(declare-fun lt!755134 () Unit!36655)

(declare-fun lt!755135 () Unit!36655)

(assert (=> b!2010936 (= lt!755134 lt!755135)))

(assert (=> b!2010936 (rulesInvariant!3186 thiss!23328 (t!187670 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!290 (LexerInterface!3579 Rule!7732 List!22171) Unit!36655)

(assert (=> b!2010936 (= lt!755135 (lemmaInvariantOnRulesThenOnTail!290 thiss!23328 (h!27490 rules!3198) (t!187670 rules!3198)))))

(assert (=> b!2010936 (= e!1270621 (getRuleFromTag!781 thiss!23328 (t!187670 rules!3198) (tag!4432 (rule!6193 separatorToken!354))))))

(declare-fun b!2010937 () Bool)

(assert (=> b!2010937 (= e!1270620 (Some!4613 (h!27490 rules!3198)))))

(declare-fun d!614068 () Bool)

(declare-fun e!1270619 () Bool)

(assert (=> d!614068 e!1270619))

(declare-fun res!881972 () Bool)

(assert (=> d!614068 (=> res!881972 e!1270619)))

(assert (=> d!614068 (= res!881972 (isEmpty!13703 lt!755136))))

(assert (=> d!614068 (= lt!755136 e!1270620)))

(declare-fun c!324838 () Bool)

(assert (=> d!614068 (= c!324838 (and ((_ is Cons!22089) rules!3198) (= (tag!4432 (h!27490 rules!3198)) (tag!4432 (rule!6193 separatorToken!354)))))))

(assert (=> d!614068 (rulesInvariant!3186 thiss!23328 rules!3198)))

(assert (=> d!614068 (= (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 separatorToken!354))) lt!755136)))

(declare-fun b!2010938 () Bool)

(assert (=> b!2010938 (= e!1270621 None!4613)))

(declare-fun b!2010939 () Bool)

(assert (=> b!2010939 (= e!1270619 e!1270618)))

(declare-fun res!881971 () Bool)

(assert (=> b!2010939 (=> (not res!881971) (not e!1270618))))

(assert (=> b!2010939 (= res!881971 (contains!4043 rules!3198 (get!6987 lt!755136)))))

(assert (= (and d!614068 c!324838) b!2010937))

(assert (= (and d!614068 (not c!324838)) b!2010934))

(assert (= (and b!2010934 c!324839) b!2010936))

(assert (= (and b!2010934 (not c!324839)) b!2010938))

(assert (= (and d!614068 (not res!881972)) b!2010939))

(assert (= (and b!2010939 res!881971) b!2010935))

(declare-fun m!2443851 () Bool)

(assert (=> b!2010935 m!2443851))

(declare-fun m!2443853 () Bool)

(assert (=> b!2010936 m!2443853))

(declare-fun m!2443855 () Bool)

(assert (=> b!2010936 m!2443855))

(declare-fun m!2443857 () Bool)

(assert (=> b!2010936 m!2443857))

(declare-fun m!2443859 () Bool)

(assert (=> d!614068 m!2443859))

(assert (=> d!614068 m!2443351))

(assert (=> b!2010939 m!2443851))

(assert (=> b!2010939 m!2443851))

(declare-fun m!2443861 () Bool)

(assert (=> b!2010939 m!2443861))

(assert (=> b!2010500 d!614068))

(declare-fun b!2010940 () Bool)

(declare-fun e!1270624 () Option!4614)

(declare-fun e!1270625 () Option!4614)

(assert (=> b!2010940 (= e!1270624 e!1270625)))

(declare-fun c!324841 () Bool)

(assert (=> b!2010940 (= c!324841 (and ((_ is Cons!22089) rules!3198) (not (= (tag!4432 (h!27490 rules!3198)) (tag!4432 (rule!6193 (h!27489 tokens!598)))))))))

(declare-fun b!2010941 () Bool)

(declare-fun e!1270622 () Bool)

(declare-fun lt!755139 () Option!4614)

(assert (=> b!2010941 (= e!1270622 (= (tag!4432 (get!6987 lt!755139)) (tag!4432 (rule!6193 (h!27489 tokens!598)))))))

(declare-fun b!2010942 () Bool)

(declare-fun lt!755137 () Unit!36655)

(declare-fun lt!755138 () Unit!36655)

(assert (=> b!2010942 (= lt!755137 lt!755138)))

(assert (=> b!2010942 (rulesInvariant!3186 thiss!23328 (t!187670 rules!3198))))

(assert (=> b!2010942 (= lt!755138 (lemmaInvariantOnRulesThenOnTail!290 thiss!23328 (h!27490 rules!3198) (t!187670 rules!3198)))))

(assert (=> b!2010942 (= e!1270625 (getRuleFromTag!781 thiss!23328 (t!187670 rules!3198) (tag!4432 (rule!6193 (h!27489 tokens!598)))))))

(declare-fun b!2010943 () Bool)

(assert (=> b!2010943 (= e!1270624 (Some!4613 (h!27490 rules!3198)))))

(declare-fun d!614082 () Bool)

(declare-fun e!1270623 () Bool)

(assert (=> d!614082 e!1270623))

(declare-fun res!881974 () Bool)

(assert (=> d!614082 (=> res!881974 e!1270623)))

(assert (=> d!614082 (= res!881974 (isEmpty!13703 lt!755139))))

(assert (=> d!614082 (= lt!755139 e!1270624)))

(declare-fun c!324840 () Bool)

(assert (=> d!614082 (= c!324840 (and ((_ is Cons!22089) rules!3198) (= (tag!4432 (h!27490 rules!3198)) (tag!4432 (rule!6193 (h!27489 tokens!598))))))))

(assert (=> d!614082 (rulesInvariant!3186 thiss!23328 rules!3198)))

(assert (=> d!614082 (= (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 (h!27489 tokens!598)))) lt!755139)))

(declare-fun b!2010944 () Bool)

(assert (=> b!2010944 (= e!1270625 None!4613)))

(declare-fun b!2010945 () Bool)

(assert (=> b!2010945 (= e!1270623 e!1270622)))

(declare-fun res!881973 () Bool)

(assert (=> b!2010945 (=> (not res!881973) (not e!1270622))))

(assert (=> b!2010945 (= res!881973 (contains!4043 rules!3198 (get!6987 lt!755139)))))

(assert (= (and d!614082 c!324840) b!2010943))

(assert (= (and d!614082 (not c!324840)) b!2010940))

(assert (= (and b!2010940 c!324841) b!2010942))

(assert (= (and b!2010940 (not c!324841)) b!2010944))

(assert (= (and d!614082 (not res!881974)) b!2010945))

(assert (= (and b!2010945 res!881973) b!2010941))

(declare-fun m!2443877 () Bool)

(assert (=> b!2010941 m!2443877))

(assert (=> b!2010942 m!2443853))

(assert (=> b!2010942 m!2443855))

(declare-fun m!2443879 () Bool)

(assert (=> b!2010942 m!2443879))

(declare-fun m!2443881 () Bool)

(assert (=> d!614082 m!2443881))

(assert (=> d!614082 m!2443351))

(assert (=> b!2010945 m!2443877))

(assert (=> b!2010945 m!2443877))

(declare-fun m!2443883 () Bool)

(assert (=> b!2010945 m!2443883))

(assert (=> b!2010500 d!614082))

(declare-fun b!2010973 () Bool)

(declare-fun e!1270645 () Bool)

(assert (=> b!2010973 (= e!1270645 true)))

(declare-fun d!614088 () Bool)

(assert (=> d!614088 e!1270645))

(assert (= d!614088 b!2010973))

(declare-fun order!14031 () Int)

(declare-fun lambda!76117 () Int)

(declare-fun dynLambda!10884 (Int Int) Int)

(assert (=> b!2010973 (< (dynLambda!10877 order!14013 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) (dynLambda!10884 order!14031 lambda!76117))))

(assert (=> b!2010973 (< (dynLambda!10879 order!14017 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) (dynLambda!10884 order!14031 lambda!76117))))

(assert (=> d!614088 (= (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) lt!754992) (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598)))))))

(declare-fun lt!755142 () Unit!36655)

(declare-fun Forall2of!225 (Int BalanceConc!14574 BalanceConc!14574) Unit!36655)

(assert (=> d!614088 (= lt!755142 (Forall2of!225 lambda!76117 lt!754992 (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598)))))))

(assert (=> d!614088 (= (list!8995 lt!754992) (list!8995 (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598)))))))

(assert (=> d!614088 (= (lemmaEqSameImage!652 (transformation!3966 (rule!6193 (h!27489 tokens!598))) lt!754992 (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598)))) lt!755142)))

(declare-fun b_lambda!67157 () Bool)

(assert (=> (not b_lambda!67157) (not d!614088)))

(assert (=> d!614088 t!187685))

(declare-fun b_and!158997 () Bool)

(assert (= b_and!158949 (and (=> t!187685 result!150554) b_and!158997)))

(assert (=> d!614088 t!187687))

(declare-fun b_and!158999 () Bool)

(assert (= b_and!158951 (and (=> t!187687 result!150558) b_and!158999)))

(assert (=> d!614088 t!187689))

(declare-fun b_and!159001 () Bool)

(assert (= b_and!158953 (and (=> t!187689 result!150560) b_and!159001)))

(declare-fun b_lambda!67159 () Bool)

(assert (=> (not b_lambda!67159) (not d!614088)))

(declare-fun tb!125693 () Bool)

(declare-fun t!187725 () Bool)

(assert (=> (and b!2010521 (= (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187725) tb!125693))

(declare-fun result!150596 () Bool)

(assert (=> tb!125693 (= result!150596 (inv!21 (dynLambda!10880 (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598))))))))

(declare-fun m!2443895 () Bool)

(assert (=> tb!125693 m!2443895))

(assert (=> d!614088 t!187725))

(declare-fun b_and!159003 () Bool)

(assert (= b_and!158997 (and (=> t!187725 result!150596) b_and!159003)))

(declare-fun tb!125695 () Bool)

(declare-fun t!187727 () Bool)

(assert (=> (and b!2010497 (= (toValue!5635 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187727) tb!125695))

(declare-fun result!150598 () Bool)

(assert (= result!150598 result!150596))

(assert (=> d!614088 t!187727))

(declare-fun b_and!159005 () Bool)

(assert (= b_and!158999 (and (=> t!187727 result!150598) b_and!159005)))

(declare-fun t!187729 () Bool)

(declare-fun tb!125697 () Bool)

(assert (=> (and b!2010516 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187729) tb!125697))

(declare-fun result!150600 () Bool)

(assert (= result!150600 result!150596))

(assert (=> d!614088 t!187729))

(declare-fun b_and!159007 () Bool)

(assert (= b_and!159001 (and (=> t!187729 result!150600) b_and!159007)))

(assert (=> d!614088 m!2443397))

(assert (=> d!614088 m!2443565))

(assert (=> d!614088 m!2443395))

(declare-fun m!2443897 () Bool)

(assert (=> d!614088 m!2443897))

(assert (=> d!614088 m!2443395))

(declare-fun m!2443899 () Bool)

(assert (=> d!614088 m!2443899))

(assert (=> d!614088 m!2443395))

(declare-fun m!2443901 () Bool)

(assert (=> d!614088 m!2443901))

(assert (=> b!2010500 d!614088))

(declare-fun d!614094 () Bool)

(declare-fun e!1270647 () Bool)

(assert (=> d!614094 e!1270647))

(declare-fun res!881986 () Bool)

(assert (=> d!614094 (=> (not res!881986) (not e!1270647))))

(assert (=> d!614094 (= res!881986 (isDefined!3901 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 (h!27489 tokens!598))))))))

(declare-fun lt!755145 () Unit!36655)

(assert (=> d!614094 (= lt!755145 (choose!12246 thiss!23328 rules!3198 lt!754999 (h!27489 tokens!598)))))

(assert (=> d!614094 (rulesInvariant!3186 thiss!23328 rules!3198)))

(assert (=> d!614094 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!781 thiss!23328 rules!3198 lt!754999 (h!27489 tokens!598)) lt!755145)))

(declare-fun b!2010974 () Bool)

(declare-fun res!881987 () Bool)

(assert (=> b!2010974 (=> (not res!881987) (not e!1270647))))

(assert (=> b!2010974 (= res!881987 (matchR!2657 (regex!3966 (get!6987 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 (h!27489 tokens!598)))))) (list!8995 (charsOf!2506 (h!27489 tokens!598)))))))

(declare-fun b!2010975 () Bool)

(assert (=> b!2010975 (= e!1270647 (= (rule!6193 (h!27489 tokens!598)) (get!6987 (getRuleFromTag!781 thiss!23328 rules!3198 (tag!4432 (rule!6193 (h!27489 tokens!598)))))))))

(assert (= (and d!614094 res!881986) b!2010974))

(assert (= (and b!2010974 res!881987) b!2010975))

(assert (=> d!614094 m!2443413))

(assert (=> d!614094 m!2443413))

(declare-fun m!2443907 () Bool)

(assert (=> d!614094 m!2443907))

(declare-fun m!2443909 () Bool)

(assert (=> d!614094 m!2443909))

(assert (=> d!614094 m!2443351))

(declare-fun m!2443911 () Bool)

(assert (=> b!2010974 m!2443911))

(declare-fun m!2443913 () Bool)

(assert (=> b!2010974 m!2443913))

(assert (=> b!2010974 m!2443413))

(declare-fun m!2443915 () Bool)

(assert (=> b!2010974 m!2443915))

(assert (=> b!2010974 m!2443413))

(assert (=> b!2010974 m!2443425))

(assert (=> b!2010974 m!2443425))

(assert (=> b!2010974 m!2443911))

(assert (=> b!2010975 m!2443413))

(assert (=> b!2010975 m!2443413))

(assert (=> b!2010975 m!2443915))

(assert (=> b!2010500 d!614094))

(declare-fun d!614098 () Bool)

(declare-fun lt!755150 () BalanceConc!14574)

(assert (=> d!614098 (= (list!8995 lt!755150) (originalCharacters!4773 (h!27489 tokens!598)))))

(assert (=> d!614098 (= lt!755150 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (value!124622 (h!27489 tokens!598))))))

(assert (=> d!614098 (= (charsOf!2506 (h!27489 tokens!598)) lt!755150)))

(declare-fun b_lambda!67161 () Bool)

(assert (=> (not b_lambda!67161) (not d!614098)))

(assert (=> d!614098 t!187672))

(declare-fun b_and!159009 () Bool)

(assert (= b_and!158943 (and (=> t!187672 result!150540) b_and!159009)))

(assert (=> d!614098 t!187674))

(declare-fun b_and!159011 () Bool)

(assert (= b_and!158945 (and (=> t!187674 result!150544) b_and!159011)))

(assert (=> d!614098 t!187676))

(declare-fun b_and!159013 () Bool)

(assert (= b_and!158947 (and (=> t!187676 result!150546) b_and!159013)))

(declare-fun m!2443923 () Bool)

(assert (=> d!614098 m!2443923))

(assert (=> d!614098 m!2443495))

(assert (=> b!2010500 d!614098))

(declare-fun d!614104 () Bool)

(declare-fun fromListB!1262 (List!22169) BalanceConc!14574)

(assert (=> d!614104 (= (seqFromList!2820 (originalCharacters!4773 (h!27489 tokens!598))) (fromListB!1262 (originalCharacters!4773 (h!27489 tokens!598))))))

(declare-fun bs!419803 () Bool)

(assert (= bs!419803 d!614104))

(declare-fun m!2443937 () Bool)

(assert (=> bs!419803 m!2443937))

(assert (=> b!2010500 d!614104))

(declare-fun d!614110 () Bool)

(declare-fun lt!755155 () BalanceConc!14574)

(assert (=> d!614110 (= (list!8995 lt!755155) (originalCharacters!4773 separatorToken!354))))

(assert (=> d!614110 (= lt!755155 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (value!124622 separatorToken!354)))))

(assert (=> d!614110 (= (charsOf!2506 separatorToken!354) lt!755155)))

(declare-fun b_lambda!67163 () Bool)

(assert (=> (not b_lambda!67163) (not d!614110)))

(declare-fun t!187731 () Bool)

(declare-fun tb!125699 () Bool)

(assert (=> (and b!2010521 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354)))) t!187731) tb!125699))

(declare-fun b!2010994 () Bool)

(declare-fun e!1270657 () Bool)

(declare-fun tp!599740 () Bool)

(assert (=> b!2010994 (= e!1270657 (and (inv!29254 (c!324758 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (value!124622 separatorToken!354)))) tp!599740))))

(declare-fun result!150602 () Bool)

(assert (=> tb!125699 (= result!150602 (and (inv!29255 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (value!124622 separatorToken!354))) e!1270657))))

(assert (= tb!125699 b!2010994))

(declare-fun m!2443939 () Bool)

(assert (=> b!2010994 m!2443939))

(declare-fun m!2443941 () Bool)

(assert (=> tb!125699 m!2443941))

(assert (=> d!614110 t!187731))

(declare-fun b_and!159015 () Bool)

(assert (= b_and!159009 (and (=> t!187731 result!150602) b_and!159015)))

(declare-fun t!187733 () Bool)

(declare-fun tb!125701 () Bool)

(assert (=> (and b!2010497 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354)))) t!187733) tb!125701))

(declare-fun result!150604 () Bool)

(assert (= result!150604 result!150602))

(assert (=> d!614110 t!187733))

(declare-fun b_and!159017 () Bool)

(assert (= b_and!159011 (and (=> t!187733 result!150604) b_and!159017)))

(declare-fun t!187735 () Bool)

(declare-fun tb!125703 () Bool)

(assert (=> (and b!2010516 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354)))) t!187735) tb!125703))

(declare-fun result!150606 () Bool)

(assert (= result!150606 result!150602))

(assert (=> d!614110 t!187735))

(declare-fun b_and!159019 () Bool)

(assert (= b_and!159013 (and (=> t!187735 result!150606) b_and!159019)))

(declare-fun m!2443943 () Bool)

(assert (=> d!614110 m!2443943))

(declare-fun m!2443945 () Bool)

(assert (=> d!614110 m!2443945))

(assert (=> b!2010500 d!614110))

(declare-fun d!614112 () Bool)

(assert (=> d!614112 (= (isDefined!3901 lt!755000) (not (isEmpty!13703 lt!755000)))))

(declare-fun bs!419804 () Bool)

(assert (= bs!419804 d!614112))

(declare-fun m!2443947 () Bool)

(assert (=> bs!419804 m!2443947))

(assert (=> b!2010500 d!614112))

(declare-fun d!614114 () Bool)

(assert (=> d!614114 (= (isDefined!3902 lt!754983) (not (isEmpty!13705 lt!754983)))))

(declare-fun bs!419805 () Bool)

(assert (= bs!419805 d!614114))

(declare-fun m!2443949 () Bool)

(assert (=> bs!419805 m!2443949))

(assert (=> b!2010500 d!614114))

(declare-fun d!614116 () Bool)

(assert (=> d!614116 (= (list!8995 lt!754992) (list!8998 (c!324758 lt!754992)))))

(declare-fun bs!419806 () Bool)

(assert (= bs!419806 d!614116))

(declare-fun m!2443951 () Bool)

(assert (=> bs!419806 m!2443951))

(assert (=> b!2010500 d!614116))

(declare-fun d!614118 () Bool)

(declare-fun res!882000 () Bool)

(declare-fun e!1270668 () Bool)

(assert (=> d!614118 (=> (not res!882000) (not e!1270668))))

(declare-fun rulesValid!1475 (LexerInterface!3579 List!22171) Bool)

(assert (=> d!614118 (= res!882000 (rulesValid!1475 thiss!23328 rules!3198))))

(assert (=> d!614118 (= (rulesInvariant!3186 thiss!23328 rules!3198) e!1270668)))

(declare-fun b!2011013 () Bool)

(declare-datatypes ((List!22172 0))(
  ( (Nil!22090) (Cons!22090 (h!27491 String!25628) (t!187781 List!22172)) )
))
(declare-fun noDuplicateTag!1473 (LexerInterface!3579 List!22171 List!22172) Bool)

(assert (=> b!2011013 (= e!1270668 (noDuplicateTag!1473 thiss!23328 rules!3198 Nil!22090))))

(assert (= (and d!614118 res!882000) b!2011013))

(declare-fun m!2443953 () Bool)

(assert (=> d!614118 m!2443953))

(declare-fun m!2443955 () Bool)

(assert (=> b!2011013 m!2443955))

(assert (=> b!2010522 d!614118))

(declare-fun d!614120 () Bool)

(declare-fun res!882001 () Bool)

(declare-fun e!1270669 () Bool)

(assert (=> d!614120 (=> (not res!882001) (not e!1270669))))

(assert (=> d!614120 (= res!882001 (not (isEmpty!13702 (originalCharacters!4773 separatorToken!354))))))

(assert (=> d!614120 (= (inv!29250 separatorToken!354) e!1270669)))

(declare-fun b!2011014 () Bool)

(declare-fun res!882002 () Bool)

(assert (=> b!2011014 (=> (not res!882002) (not e!1270669))))

(assert (=> b!2011014 (= res!882002 (= (originalCharacters!4773 separatorToken!354) (list!8995 (dynLambda!10876 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (value!124622 separatorToken!354)))))))

(declare-fun b!2011015 () Bool)

(assert (=> b!2011015 (= e!1270669 (= (size!17262 separatorToken!354) (size!17265 (originalCharacters!4773 separatorToken!354))))))

(assert (= (and d!614120 res!882001) b!2011014))

(assert (= (and b!2011014 res!882002) b!2011015))

(declare-fun b_lambda!67165 () Bool)

(assert (=> (not b_lambda!67165) (not b!2011014)))

(assert (=> b!2011014 t!187731))

(declare-fun b_and!159021 () Bool)

(assert (= b_and!159015 (and (=> t!187731 result!150602) b_and!159021)))

(assert (=> b!2011014 t!187733))

(declare-fun b_and!159023 () Bool)

(assert (= b_and!159017 (and (=> t!187733 result!150604) b_and!159023)))

(assert (=> b!2011014 t!187735))

(declare-fun b_and!159025 () Bool)

(assert (= b_and!159019 (and (=> t!187735 result!150606) b_and!159025)))

(declare-fun m!2443957 () Bool)

(assert (=> d!614120 m!2443957))

(assert (=> b!2011014 m!2443945))

(assert (=> b!2011014 m!2443945))

(declare-fun m!2443959 () Bool)

(assert (=> b!2011014 m!2443959))

(declare-fun m!2443961 () Bool)

(assert (=> b!2011015 m!2443961))

(assert (=> start!197608 d!614120))

(declare-fun d!614122 () Bool)

(assert (=> d!614122 (= (head!4544 lt!754997) (h!27488 lt!754997))))

(assert (=> b!2010511 d!614122))

(declare-fun d!614124 () Bool)

(assert (=> d!614124 (= (++!5961 (++!5961 lt!754999 lt!754997) lt!754991) (++!5961 lt!754999 (++!5961 lt!754997 lt!754991)))))

(declare-fun lt!755158 () Unit!36655)

(declare-fun choose!12247 (List!22169 List!22169 List!22169) Unit!36655)

(assert (=> d!614124 (= lt!755158 (choose!12247 lt!754999 lt!754997 lt!754991))))

(assert (=> d!614124 (= (lemmaConcatAssociativity!1229 lt!754999 lt!754997 lt!754991) lt!755158)))

(declare-fun bs!419807 () Bool)

(assert (= bs!419807 d!614124))

(assert (=> bs!419807 m!2443387))

(declare-fun m!2443969 () Bool)

(assert (=> bs!419807 m!2443969))

(assert (=> bs!419807 m!2443387))

(assert (=> bs!419807 m!2443391))

(assert (=> bs!419807 m!2443377))

(assert (=> bs!419807 m!2443377))

(assert (=> bs!419807 m!2443379))

(assert (=> b!2010511 d!614124))

(declare-fun d!614128 () Bool)

(declare-fun lt!755165 () Bool)

(assert (=> d!614128 (= lt!755165 (select (content!3234 (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354)))) lt!754989))))

(declare-fun e!1270684 () Bool)

(assert (=> d!614128 (= lt!755165 e!1270684)))

(declare-fun res!882013 () Bool)

(assert (=> d!614128 (=> (not res!882013) (not e!1270684))))

(assert (=> d!614128 (= res!882013 ((_ is Cons!22087) (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354)))))))

(assert (=> d!614128 (= (contains!4044 (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354))) lt!754989) lt!755165)))

(declare-fun b!2011034 () Bool)

(declare-fun e!1270685 () Bool)

(assert (=> b!2011034 (= e!1270684 e!1270685)))

(declare-fun res!882015 () Bool)

(assert (=> b!2011034 (=> res!882015 e!1270685)))

(assert (=> b!2011034 (= res!882015 (= (h!27488 (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354)))) lt!754989))))

(declare-fun b!2011035 () Bool)

(assert (=> b!2011035 (= e!1270685 (contains!4044 (t!187668 (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354)))) lt!754989))))

(assert (= (and d!614128 res!882013) b!2011034))

(assert (= (and b!2011034 (not res!882015)) b!2011035))

(assert (=> d!614128 m!2443381))

(declare-fun m!2443977 () Bool)

(assert (=> d!614128 m!2443977))

(declare-fun m!2443979 () Bool)

(assert (=> d!614128 m!2443979))

(declare-fun m!2443981 () Bool)

(assert (=> b!2011035 m!2443981))

(assert (=> b!2010511 d!614128))

(declare-fun b!2011073 () Bool)

(declare-fun e!1270710 () List!22169)

(declare-fun e!1270709 () List!22169)

(assert (=> b!2011073 (= e!1270710 e!1270709)))

(declare-fun c!324877 () Bool)

(assert (=> b!2011073 (= c!324877 ((_ is ElementMatch!5391) (regex!3966 (rule!6193 separatorToken!354))))))

(declare-fun d!614132 () Bool)

(declare-fun c!324879 () Bool)

(assert (=> d!614132 (= c!324879 (or ((_ is EmptyExpr!5391) (regex!3966 (rule!6193 separatorToken!354))) ((_ is EmptyLang!5391) (regex!3966 (rule!6193 separatorToken!354)))))))

(assert (=> d!614132 (= (usedCharacters!404 (regex!3966 (rule!6193 separatorToken!354))) e!1270710)))

(declare-fun b!2011074 () Bool)

(declare-fun e!1270711 () List!22169)

(declare-fun call!123006 () List!22169)

(assert (=> b!2011074 (= e!1270711 call!123006)))

(declare-fun b!2011075 () Bool)

(assert (=> b!2011075 (= e!1270711 call!123006)))

(declare-fun b!2011076 () Bool)

(declare-fun c!324876 () Bool)

(assert (=> b!2011076 (= c!324876 ((_ is Star!5391) (regex!3966 (rule!6193 separatorToken!354))))))

(declare-fun e!1270708 () List!22169)

(assert (=> b!2011076 (= e!1270709 e!1270708)))

(declare-fun b!2011077 () Bool)

(assert (=> b!2011077 (= e!1270708 e!1270711)))

(declare-fun c!324878 () Bool)

(assert (=> b!2011077 (= c!324878 ((_ is Union!5391) (regex!3966 (rule!6193 separatorToken!354))))))

(declare-fun b!2011078 () Bool)

(assert (=> b!2011078 (= e!1270710 Nil!22087)))

(declare-fun call!123008 () List!22169)

(declare-fun bm!123000 () Bool)

(assert (=> bm!123000 (= call!123008 (usedCharacters!404 (ite c!324876 (reg!5720 (regex!3966 (rule!6193 separatorToken!354))) (ite c!324878 (regOne!11295 (regex!3966 (rule!6193 separatorToken!354))) (regTwo!11294 (regex!3966 (rule!6193 separatorToken!354)))))))))

(declare-fun b!2011079 () Bool)

(assert (=> b!2011079 (= e!1270709 (Cons!22087 (c!324757 (regex!3966 (rule!6193 separatorToken!354))) Nil!22087))))

(declare-fun bm!123001 () Bool)

(declare-fun call!123005 () List!22169)

(assert (=> bm!123001 (= call!123005 (usedCharacters!404 (ite c!324878 (regTwo!11295 (regex!3966 (rule!6193 separatorToken!354))) (regOne!11294 (regex!3966 (rule!6193 separatorToken!354))))))))

(declare-fun b!2011080 () Bool)

(assert (=> b!2011080 (= e!1270708 call!123008)))

(declare-fun bm!123002 () Bool)

(declare-fun call!123007 () List!22169)

(assert (=> bm!123002 (= call!123007 call!123008)))

(declare-fun bm!123003 () Bool)

(assert (=> bm!123003 (= call!123006 (++!5961 (ite c!324878 call!123007 call!123005) (ite c!324878 call!123005 call!123007)))))

(assert (= (and d!614132 c!324879) b!2011078))

(assert (= (and d!614132 (not c!324879)) b!2011073))

(assert (= (and b!2011073 c!324877) b!2011079))

(assert (= (and b!2011073 (not c!324877)) b!2011076))

(assert (= (and b!2011076 c!324876) b!2011080))

(assert (= (and b!2011076 (not c!324876)) b!2011077))

(assert (= (and b!2011077 c!324878) b!2011074))

(assert (= (and b!2011077 (not c!324878)) b!2011075))

(assert (= (or b!2011074 b!2011075) bm!123002))

(assert (= (or b!2011074 b!2011075) bm!123001))

(assert (= (or b!2011074 b!2011075) bm!123003))

(assert (= (or b!2011080 bm!123002) bm!123000))

(declare-fun m!2444025 () Bool)

(assert (=> bm!123000 m!2444025))

(declare-fun m!2444027 () Bool)

(assert (=> bm!123001 m!2444027))

(declare-fun m!2444029 () Bool)

(assert (=> bm!123003 m!2444029))

(assert (=> b!2010511 d!614132))

(declare-fun d!614148 () Bool)

(declare-fun lt!755173 () Bool)

(declare-fun content!3236 (List!22171) (InoxSet Rule!7732))

(assert (=> d!614148 (= lt!755173 (select (content!3236 rules!3198) (rule!6193 separatorToken!354)))))

(declare-fun e!1270721 () Bool)

(assert (=> d!614148 (= lt!755173 e!1270721)))

(declare-fun res!882038 () Bool)

(assert (=> d!614148 (=> (not res!882038) (not e!1270721))))

(assert (=> d!614148 (= res!882038 ((_ is Cons!22089) rules!3198))))

(assert (=> d!614148 (= (contains!4043 rules!3198 (rule!6193 separatorToken!354)) lt!755173)))

(declare-fun b!2011089 () Bool)

(declare-fun e!1270720 () Bool)

(assert (=> b!2011089 (= e!1270721 e!1270720)))

(declare-fun res!882039 () Bool)

(assert (=> b!2011089 (=> res!882039 e!1270720)))

(assert (=> b!2011089 (= res!882039 (= (h!27490 rules!3198) (rule!6193 separatorToken!354)))))

(declare-fun b!2011090 () Bool)

(assert (=> b!2011090 (= e!1270720 (contains!4043 (t!187670 rules!3198) (rule!6193 separatorToken!354)))))

(assert (= (and d!614148 res!882038) b!2011089))

(assert (= (and b!2011089 (not res!882039)) b!2011090))

(declare-fun m!2444039 () Bool)

(assert (=> d!614148 m!2444039))

(declare-fun m!2444041 () Bool)

(assert (=> d!614148 m!2444041))

(declare-fun m!2444043 () Bool)

(assert (=> b!2011090 m!2444043))

(assert (=> b!2010511 d!614148))

(declare-fun d!614158 () Bool)

(declare-fun e!1270723 () Bool)

(assert (=> d!614158 e!1270723))

(declare-fun res!882040 () Bool)

(assert (=> d!614158 (=> (not res!882040) (not e!1270723))))

(declare-fun lt!755174 () List!22169)

(assert (=> d!614158 (= res!882040 (= (content!3234 lt!755174) ((_ map or) (content!3234 lt!754997) (content!3234 lt!754991))))))

(declare-fun e!1270722 () List!22169)

(assert (=> d!614158 (= lt!755174 e!1270722)))

(declare-fun c!324880 () Bool)

(assert (=> d!614158 (= c!324880 ((_ is Nil!22087) lt!754997))))

(assert (=> d!614158 (= (++!5961 lt!754997 lt!754991) lt!755174)))

(declare-fun b!2011093 () Bool)

(declare-fun res!882041 () Bool)

(assert (=> b!2011093 (=> (not res!882041) (not e!1270723))))

(assert (=> b!2011093 (= res!882041 (= (size!17265 lt!755174) (+ (size!17265 lt!754997) (size!17265 lt!754991))))))

(declare-fun b!2011094 () Bool)

(assert (=> b!2011094 (= e!1270723 (or (not (= lt!754991 Nil!22087)) (= lt!755174 lt!754997)))))

(declare-fun b!2011091 () Bool)

(assert (=> b!2011091 (= e!1270722 lt!754991)))

(declare-fun b!2011092 () Bool)

(assert (=> b!2011092 (= e!1270722 (Cons!22087 (h!27488 lt!754997) (++!5961 (t!187668 lt!754997) lt!754991)))))

(assert (= (and d!614158 c!324880) b!2011091))

(assert (= (and d!614158 (not c!324880)) b!2011092))

(assert (= (and d!614158 res!882040) b!2011093))

(assert (= (and b!2011093 res!882041) b!2011094))

(declare-fun m!2444045 () Bool)

(assert (=> d!614158 m!2444045))

(declare-fun m!2444047 () Bool)

(assert (=> d!614158 m!2444047))

(assert (=> d!614158 m!2443627))

(declare-fun m!2444049 () Bool)

(assert (=> b!2011093 m!2444049))

(declare-fun m!2444051 () Bool)

(assert (=> b!2011093 m!2444051))

(assert (=> b!2011093 m!2443633))

(declare-fun m!2444053 () Bool)

(assert (=> b!2011092 m!2444053))

(assert (=> b!2010511 d!614158))

(declare-fun d!614160 () Bool)

(declare-fun e!1270725 () Bool)

(assert (=> d!614160 e!1270725))

(declare-fun res!882042 () Bool)

(assert (=> d!614160 (=> (not res!882042) (not e!1270725))))

(declare-fun lt!755175 () List!22169)

(assert (=> d!614160 (= res!882042 (= (content!3234 lt!755175) ((_ map or) (content!3234 lt!754999) (content!3234 (++!5961 lt!754997 lt!754991)))))))

(declare-fun e!1270724 () List!22169)

(assert (=> d!614160 (= lt!755175 e!1270724)))

(declare-fun c!324881 () Bool)

(assert (=> d!614160 (= c!324881 ((_ is Nil!22087) lt!754999))))

(assert (=> d!614160 (= (++!5961 lt!754999 (++!5961 lt!754997 lt!754991)) lt!755175)))

(declare-fun b!2011097 () Bool)

(declare-fun res!882043 () Bool)

(assert (=> b!2011097 (=> (not res!882043) (not e!1270725))))

(assert (=> b!2011097 (= res!882043 (= (size!17265 lt!755175) (+ (size!17265 lt!754999) (size!17265 (++!5961 lt!754997 lt!754991)))))))

(declare-fun b!2011098 () Bool)

(assert (=> b!2011098 (= e!1270725 (or (not (= (++!5961 lt!754997 lt!754991) Nil!22087)) (= lt!755175 lt!754999)))))

(declare-fun b!2011095 () Bool)

(assert (=> b!2011095 (= e!1270724 (++!5961 lt!754997 lt!754991))))

(declare-fun b!2011096 () Bool)

(assert (=> b!2011096 (= e!1270724 (Cons!22087 (h!27488 lt!754999) (++!5961 (t!187668 lt!754999) (++!5961 lt!754997 lt!754991))))))

(assert (= (and d!614160 c!324881) b!2011095))

(assert (= (and d!614160 (not c!324881)) b!2011096))

(assert (= (and d!614160 res!882042) b!2011097))

(assert (= (and b!2011097 res!882043) b!2011098))

(declare-fun m!2444055 () Bool)

(assert (=> d!614160 m!2444055))

(assert (=> d!614160 m!2443625))

(assert (=> d!614160 m!2443377))

(declare-fun m!2444057 () Bool)

(assert (=> d!614160 m!2444057))

(declare-fun m!2444059 () Bool)

(assert (=> b!2011097 m!2444059))

(assert (=> b!2011097 m!2443631))

(assert (=> b!2011097 m!2443377))

(declare-fun m!2444061 () Bool)

(assert (=> b!2011097 m!2444061))

(assert (=> b!2011096 m!2443377))

(declare-fun m!2444063 () Bool)

(assert (=> b!2011096 m!2444063))

(assert (=> b!2010511 d!614160))

(declare-fun d!614162 () Bool)

(declare-fun e!1270727 () Bool)

(assert (=> d!614162 e!1270727))

(declare-fun res!882044 () Bool)

(assert (=> d!614162 (=> (not res!882044) (not e!1270727))))

(declare-fun lt!755176 () List!22169)

(assert (=> d!614162 (= res!882044 (= (content!3234 lt!755176) ((_ map or) (content!3234 lt!754999) (content!3234 lt!754997))))))

(declare-fun e!1270726 () List!22169)

(assert (=> d!614162 (= lt!755176 e!1270726)))

(declare-fun c!324882 () Bool)

(assert (=> d!614162 (= c!324882 ((_ is Nil!22087) lt!754999))))

(assert (=> d!614162 (= (++!5961 lt!754999 lt!754997) lt!755176)))

(declare-fun b!2011101 () Bool)

(declare-fun res!882045 () Bool)

(assert (=> b!2011101 (=> (not res!882045) (not e!1270727))))

(assert (=> b!2011101 (= res!882045 (= (size!17265 lt!755176) (+ (size!17265 lt!754999) (size!17265 lt!754997))))))

(declare-fun b!2011102 () Bool)

(assert (=> b!2011102 (= e!1270727 (or (not (= lt!754997 Nil!22087)) (= lt!755176 lt!754999)))))

(declare-fun b!2011099 () Bool)

(assert (=> b!2011099 (= e!1270726 lt!754997)))

(declare-fun b!2011100 () Bool)

(assert (=> b!2011100 (= e!1270726 (Cons!22087 (h!27488 lt!754999) (++!5961 (t!187668 lt!754999) lt!754997)))))

(assert (= (and d!614162 c!324882) b!2011099))

(assert (= (and d!614162 (not c!324882)) b!2011100))

(assert (= (and d!614162 res!882044) b!2011101))

(assert (= (and b!2011101 res!882045) b!2011102))

(declare-fun m!2444065 () Bool)

(assert (=> d!614162 m!2444065))

(assert (=> d!614162 m!2443625))

(assert (=> d!614162 m!2444047))

(declare-fun m!2444067 () Bool)

(assert (=> b!2011101 m!2444067))

(assert (=> b!2011101 m!2443631))

(assert (=> b!2011101 m!2444051))

(declare-fun m!2444069 () Bool)

(assert (=> b!2011100 m!2444069))

(assert (=> b!2010511 d!614162))

(declare-fun d!614164 () Bool)

(declare-fun e!1270729 () Bool)

(assert (=> d!614164 e!1270729))

(declare-fun res!882046 () Bool)

(assert (=> d!614164 (=> (not res!882046) (not e!1270729))))

(declare-fun lt!755177 () List!22169)

(assert (=> d!614164 (= res!882046 (= (content!3234 lt!755177) ((_ map or) (content!3234 (++!5961 lt!754999 lt!754997)) (content!3234 lt!754991))))))

(declare-fun e!1270728 () List!22169)

(assert (=> d!614164 (= lt!755177 e!1270728)))

(declare-fun c!324883 () Bool)

(assert (=> d!614164 (= c!324883 ((_ is Nil!22087) (++!5961 lt!754999 lt!754997)))))

(assert (=> d!614164 (= (++!5961 (++!5961 lt!754999 lt!754997) lt!754991) lt!755177)))

(declare-fun b!2011105 () Bool)

(declare-fun res!882047 () Bool)

(assert (=> b!2011105 (=> (not res!882047) (not e!1270729))))

(assert (=> b!2011105 (= res!882047 (= (size!17265 lt!755177) (+ (size!17265 (++!5961 lt!754999 lt!754997)) (size!17265 lt!754991))))))

(declare-fun b!2011106 () Bool)

(assert (=> b!2011106 (= e!1270729 (or (not (= lt!754991 Nil!22087)) (= lt!755177 (++!5961 lt!754999 lt!754997))))))

(declare-fun b!2011103 () Bool)

(assert (=> b!2011103 (= e!1270728 lt!754991)))

(declare-fun b!2011104 () Bool)

(assert (=> b!2011104 (= e!1270728 (Cons!22087 (h!27488 (++!5961 lt!754999 lt!754997)) (++!5961 (t!187668 (++!5961 lt!754999 lt!754997)) lt!754991)))))

(assert (= (and d!614164 c!324883) b!2011103))

(assert (= (and d!614164 (not c!324883)) b!2011104))

(assert (= (and d!614164 res!882046) b!2011105))

(assert (= (and b!2011105 res!882047) b!2011106))

(declare-fun m!2444071 () Bool)

(assert (=> d!614164 m!2444071))

(assert (=> d!614164 m!2443387))

(declare-fun m!2444073 () Bool)

(assert (=> d!614164 m!2444073))

(assert (=> d!614164 m!2443627))

(declare-fun m!2444075 () Bool)

(assert (=> b!2011105 m!2444075))

(assert (=> b!2011105 m!2443387))

(declare-fun m!2444077 () Bool)

(assert (=> b!2011105 m!2444077))

(assert (=> b!2011105 m!2443633))

(declare-fun m!2444079 () Bool)

(assert (=> b!2011104 m!2444079))

(assert (=> b!2010511 d!614164))

(declare-fun d!614166 () Bool)

(assert (=> d!614166 (not (matchR!2657 (regex!3966 (rule!6193 separatorToken!354)) lt!754997))))

(declare-fun lt!755180 () Unit!36655)

(declare-fun choose!12249 (Regex!5391 List!22169 C!10928) Unit!36655)

(assert (=> d!614166 (= lt!755180 (choose!12249 (regex!3966 (rule!6193 separatorToken!354)) lt!754997 lt!754989))))

(assert (=> d!614166 (validRegex!2159 (regex!3966 (rule!6193 separatorToken!354)))))

(assert (=> d!614166 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!292 (regex!3966 (rule!6193 separatorToken!354)) lt!754997 lt!754989) lt!755180)))

(declare-fun bs!419808 () Bool)

(assert (= bs!419808 d!614166))

(assert (=> bs!419808 m!2443363))

(declare-fun m!2444081 () Bool)

(assert (=> bs!419808 m!2444081))

(declare-fun m!2444083 () Bool)

(assert (=> bs!419808 m!2444083))

(assert (=> b!2010502 d!614166))

(declare-fun b!2011107 () Bool)

(declare-fun res!882052 () Bool)

(declare-fun e!1270732 () Bool)

(assert (=> b!2011107 (=> res!882052 e!1270732)))

(declare-fun e!1270734 () Bool)

(assert (=> b!2011107 (= res!882052 e!1270734)))

(declare-fun res!882054 () Bool)

(assert (=> b!2011107 (=> (not res!882054) (not e!1270734))))

(declare-fun lt!755181 () Bool)

(assert (=> b!2011107 (= res!882054 lt!755181)))

(declare-fun b!2011108 () Bool)

(declare-fun res!882050 () Bool)

(assert (=> b!2011108 (=> (not res!882050) (not e!1270734))))

(declare-fun call!123009 () Bool)

(assert (=> b!2011108 (= res!882050 (not call!123009))))

(declare-fun b!2011109 () Bool)

(declare-fun e!1270731 () Bool)

(declare-fun e!1270730 () Bool)

(assert (=> b!2011109 (= e!1270731 e!1270730)))

(declare-fun res!882049 () Bool)

(assert (=> b!2011109 (=> res!882049 e!1270730)))

(assert (=> b!2011109 (= res!882049 call!123009)))

(declare-fun b!2011110 () Bool)

(declare-fun e!1270735 () Bool)

(assert (=> b!2011110 (= e!1270735 (matchR!2657 (derivativeStep!1392 (regex!3966 (rule!6193 separatorToken!354)) (head!4544 lt!754997)) (tail!3026 lt!754997)))))

(declare-fun b!2011111 () Bool)

(assert (=> b!2011111 (= e!1270734 (= (head!4544 lt!754997) (c!324757 (regex!3966 (rule!6193 separatorToken!354)))))))

(declare-fun b!2011112 () Bool)

(declare-fun e!1270736 () Bool)

(assert (=> b!2011112 (= e!1270736 (= lt!755181 call!123009))))

(declare-fun b!2011113 () Bool)

(declare-fun res!882055 () Bool)

(assert (=> b!2011113 (=> res!882055 e!1270732)))

(assert (=> b!2011113 (= res!882055 (not ((_ is ElementMatch!5391) (regex!3966 (rule!6193 separatorToken!354)))))))

(declare-fun e!1270733 () Bool)

(assert (=> b!2011113 (= e!1270733 e!1270732)))

(declare-fun b!2011114 () Bool)

(declare-fun res!882048 () Bool)

(assert (=> b!2011114 (=> res!882048 e!1270730)))

(assert (=> b!2011114 (= res!882048 (not (isEmpty!13702 (tail!3026 lt!754997))))))

(declare-fun b!2011115 () Bool)

(assert (=> b!2011115 (= e!1270736 e!1270733)))

(declare-fun c!324885 () Bool)

(assert (=> b!2011115 (= c!324885 ((_ is EmptyLang!5391) (regex!3966 (rule!6193 separatorToken!354))))))

(declare-fun b!2011116 () Bool)

(assert (=> b!2011116 (= e!1270735 (nullable!1633 (regex!3966 (rule!6193 separatorToken!354))))))

(declare-fun b!2011117 () Bool)

(assert (=> b!2011117 (= e!1270732 e!1270731)))

(declare-fun res!882053 () Bool)

(assert (=> b!2011117 (=> (not res!882053) (not e!1270731))))

(assert (=> b!2011117 (= res!882053 (not lt!755181))))

(declare-fun b!2011118 () Bool)

(assert (=> b!2011118 (= e!1270730 (not (= (head!4544 lt!754997) (c!324757 (regex!3966 (rule!6193 separatorToken!354))))))))

(declare-fun b!2011119 () Bool)

(assert (=> b!2011119 (= e!1270733 (not lt!755181))))

(declare-fun d!614168 () Bool)

(assert (=> d!614168 e!1270736))

(declare-fun c!324886 () Bool)

(assert (=> d!614168 (= c!324886 ((_ is EmptyExpr!5391) (regex!3966 (rule!6193 separatorToken!354))))))

(assert (=> d!614168 (= lt!755181 e!1270735)))

(declare-fun c!324887 () Bool)

(assert (=> d!614168 (= c!324887 (isEmpty!13702 lt!754997))))

(assert (=> d!614168 (validRegex!2159 (regex!3966 (rule!6193 separatorToken!354)))))

(assert (=> d!614168 (= (matchR!2657 (regex!3966 (rule!6193 separatorToken!354)) lt!754997) lt!755181)))

(declare-fun bm!123004 () Bool)

(assert (=> bm!123004 (= call!123009 (isEmpty!13702 lt!754997))))

(declare-fun b!2011120 () Bool)

(declare-fun res!882051 () Bool)

(assert (=> b!2011120 (=> (not res!882051) (not e!1270734))))

(assert (=> b!2011120 (= res!882051 (isEmpty!13702 (tail!3026 lt!754997)))))

(assert (= (and d!614168 c!324887) b!2011116))

(assert (= (and d!614168 (not c!324887)) b!2011110))

(assert (= (and d!614168 c!324886) b!2011112))

(assert (= (and d!614168 (not c!324886)) b!2011115))

(assert (= (and b!2011115 c!324885) b!2011119))

(assert (= (and b!2011115 (not c!324885)) b!2011113))

(assert (= (and b!2011113 (not res!882055)) b!2011107))

(assert (= (and b!2011107 res!882054) b!2011108))

(assert (= (and b!2011108 res!882050) b!2011120))

(assert (= (and b!2011120 res!882051) b!2011111))

(assert (= (and b!2011107 (not res!882052)) b!2011117))

(assert (= (and b!2011117 res!882053) b!2011109))

(assert (= (and b!2011109 (not res!882049)) b!2011114))

(assert (= (and b!2011114 (not res!882048)) b!2011118))

(assert (= (or b!2011112 b!2011108 b!2011109) bm!123004))

(declare-fun m!2444085 () Bool)

(assert (=> b!2011116 m!2444085))

(assert (=> b!2011110 m!2443383))

(assert (=> b!2011110 m!2443383))

(declare-fun m!2444087 () Bool)

(assert (=> b!2011110 m!2444087))

(declare-fun m!2444089 () Bool)

(assert (=> b!2011110 m!2444089))

(assert (=> b!2011110 m!2444087))

(assert (=> b!2011110 m!2444089))

(declare-fun m!2444091 () Bool)

(assert (=> b!2011110 m!2444091))

(assert (=> b!2011120 m!2444089))

(assert (=> b!2011120 m!2444089))

(declare-fun m!2444093 () Bool)

(assert (=> b!2011120 m!2444093))

(assert (=> b!2011114 m!2444089))

(assert (=> b!2011114 m!2444089))

(assert (=> b!2011114 m!2444093))

(declare-fun m!2444095 () Bool)

(assert (=> bm!123004 m!2444095))

(assert (=> b!2011118 m!2443383))

(assert (=> b!2011111 m!2443383))

(assert (=> d!614168 m!2444095))

(assert (=> d!614168 m!2444083))

(assert (=> b!2010502 d!614168))

(declare-fun d!614170 () Bool)

(declare-fun lt!755189 () Bool)

(declare-fun e!1270765 () Bool)

(assert (=> d!614170 (= lt!755189 e!1270765)))

(declare-fun res!882069 () Bool)

(assert (=> d!614170 (=> (not res!882069) (not e!1270765))))

(declare-fun list!8999 (BalanceConc!14578) List!22170)

(declare-datatypes ((tuple2!20758 0))(
  ( (tuple2!20759 (_1!11848 BalanceConc!14578) (_2!11848 BalanceConc!14574)) )
))
(declare-fun lex!1597 (LexerInterface!3579 List!22171 BalanceConc!14574) tuple2!20758)

(assert (=> d!614170 (= res!882069 (= (list!8999 (_1!11848 (lex!1597 thiss!23328 rules!3198 (print!1543 thiss!23328 (singletonSeq!1944 separatorToken!354))))) (list!8999 (singletonSeq!1944 separatorToken!354))))))

(declare-fun e!1270764 () Bool)

(assert (=> d!614170 (= lt!755189 e!1270764)))

(declare-fun res!882070 () Bool)

(assert (=> d!614170 (=> (not res!882070) (not e!1270764))))

(declare-fun lt!755190 () tuple2!20758)

(declare-fun size!17266 (BalanceConc!14578) Int)

(assert (=> d!614170 (= res!882070 (= (size!17266 (_1!11848 lt!755190)) 1))))

(assert (=> d!614170 (= lt!755190 (lex!1597 thiss!23328 rules!3198 (print!1543 thiss!23328 (singletonSeq!1944 separatorToken!354))))))

(assert (=> d!614170 (not (isEmpty!13698 rules!3198))))

(assert (=> d!614170 (= (rulesProduceIndividualToken!1751 thiss!23328 rules!3198 separatorToken!354) lt!755189)))

(declare-fun b!2011163 () Bool)

(declare-fun res!882071 () Bool)

(assert (=> b!2011163 (=> (not res!882071) (not e!1270764))))

(declare-fun apply!5791 (BalanceConc!14578 Int) Token!7484)

(assert (=> b!2011163 (= res!882071 (= (apply!5791 (_1!11848 lt!755190) 0) separatorToken!354))))

(declare-fun b!2011164 () Bool)

(declare-fun isEmpty!13706 (BalanceConc!14574) Bool)

(assert (=> b!2011164 (= e!1270764 (isEmpty!13706 (_2!11848 lt!755190)))))

(declare-fun b!2011165 () Bool)

(assert (=> b!2011165 (= e!1270765 (isEmpty!13706 (_2!11848 (lex!1597 thiss!23328 rules!3198 (print!1543 thiss!23328 (singletonSeq!1944 separatorToken!354))))))))

(assert (= (and d!614170 res!882070) b!2011163))

(assert (= (and b!2011163 res!882071) b!2011164))

(assert (= (and d!614170 res!882069) b!2011165))

(declare-fun m!2444109 () Bool)

(assert (=> d!614170 m!2444109))

(assert (=> d!614170 m!2443359))

(declare-fun m!2444111 () Bool)

(assert (=> d!614170 m!2444111))

(declare-fun m!2444113 () Bool)

(assert (=> d!614170 m!2444113))

(assert (=> d!614170 m!2444109))

(assert (=> d!614170 m!2444111))

(assert (=> d!614170 m!2444109))

(declare-fun m!2444115 () Bool)

(assert (=> d!614170 m!2444115))

(declare-fun m!2444117 () Bool)

(assert (=> d!614170 m!2444117))

(declare-fun m!2444119 () Bool)

(assert (=> d!614170 m!2444119))

(declare-fun m!2444121 () Bool)

(assert (=> b!2011163 m!2444121))

(declare-fun m!2444123 () Bool)

(assert (=> b!2011164 m!2444123))

(assert (=> b!2011165 m!2444109))

(assert (=> b!2011165 m!2444109))

(assert (=> b!2011165 m!2444111))

(assert (=> b!2011165 m!2444111))

(assert (=> b!2011165 m!2444113))

(declare-fun m!2444125 () Bool)

(assert (=> b!2011165 m!2444125))

(assert (=> b!2010523 d!614170))

(declare-fun b!2011169 () Bool)

(declare-fun res!882076 () Bool)

(declare-fun e!1270772 () Bool)

(assert (=> b!2011169 (=> res!882076 e!1270772)))

(declare-fun e!1270774 () Bool)

(assert (=> b!2011169 (= res!882076 e!1270774)))

(declare-fun res!882078 () Bool)

(assert (=> b!2011169 (=> (not res!882078) (not e!1270774))))

(declare-fun lt!755191 () Bool)

(assert (=> b!2011169 (= res!882078 lt!755191)))

(declare-fun b!2011170 () Bool)

(declare-fun res!882074 () Bool)

(assert (=> b!2011170 (=> (not res!882074) (not e!1270774))))

(declare-fun call!123010 () Bool)

(assert (=> b!2011170 (= res!882074 (not call!123010))))

(declare-fun b!2011171 () Bool)

(declare-fun e!1270771 () Bool)

(declare-fun e!1270770 () Bool)

(assert (=> b!2011171 (= e!1270771 e!1270770)))

(declare-fun res!882073 () Bool)

(assert (=> b!2011171 (=> res!882073 e!1270770)))

(assert (=> b!2011171 (= res!882073 call!123010)))

(declare-fun b!2011172 () Bool)

(declare-fun e!1270775 () Bool)

(assert (=> b!2011172 (= e!1270775 (matchR!2657 (derivativeStep!1392 (regex!3966 lt!754998) (head!4544 lt!754997)) (tail!3026 lt!754997)))))

(declare-fun b!2011173 () Bool)

(assert (=> b!2011173 (= e!1270774 (= (head!4544 lt!754997) (c!324757 (regex!3966 lt!754998))))))

(declare-fun b!2011174 () Bool)

(declare-fun e!1270776 () Bool)

(assert (=> b!2011174 (= e!1270776 (= lt!755191 call!123010))))

(declare-fun b!2011175 () Bool)

(declare-fun res!882079 () Bool)

(assert (=> b!2011175 (=> res!882079 e!1270772)))

(assert (=> b!2011175 (= res!882079 (not ((_ is ElementMatch!5391) (regex!3966 lt!754998))))))

(declare-fun e!1270773 () Bool)

(assert (=> b!2011175 (= e!1270773 e!1270772)))

(declare-fun b!2011176 () Bool)

(declare-fun res!882072 () Bool)

(assert (=> b!2011176 (=> res!882072 e!1270770)))

(assert (=> b!2011176 (= res!882072 (not (isEmpty!13702 (tail!3026 lt!754997))))))

(declare-fun b!2011177 () Bool)

(assert (=> b!2011177 (= e!1270776 e!1270773)))

(declare-fun c!324890 () Bool)

(assert (=> b!2011177 (= c!324890 ((_ is EmptyLang!5391) (regex!3966 lt!754998)))))

(declare-fun b!2011178 () Bool)

(assert (=> b!2011178 (= e!1270775 (nullable!1633 (regex!3966 lt!754998)))))

(declare-fun b!2011179 () Bool)

(assert (=> b!2011179 (= e!1270772 e!1270771)))

(declare-fun res!882077 () Bool)

(assert (=> b!2011179 (=> (not res!882077) (not e!1270771))))

(assert (=> b!2011179 (= res!882077 (not lt!755191))))

(declare-fun b!2011180 () Bool)

(assert (=> b!2011180 (= e!1270770 (not (= (head!4544 lt!754997) (c!324757 (regex!3966 lt!754998)))))))

(declare-fun b!2011181 () Bool)

(assert (=> b!2011181 (= e!1270773 (not lt!755191))))

(declare-fun d!614174 () Bool)

(assert (=> d!614174 e!1270776))

(declare-fun c!324891 () Bool)

(assert (=> d!614174 (= c!324891 ((_ is EmptyExpr!5391) (regex!3966 lt!754998)))))

(assert (=> d!614174 (= lt!755191 e!1270775)))

(declare-fun c!324892 () Bool)

(assert (=> d!614174 (= c!324892 (isEmpty!13702 lt!754997))))

(assert (=> d!614174 (validRegex!2159 (regex!3966 lt!754998))))

(assert (=> d!614174 (= (matchR!2657 (regex!3966 lt!754998) lt!754997) lt!755191)))

(declare-fun bm!123005 () Bool)

(assert (=> bm!123005 (= call!123010 (isEmpty!13702 lt!754997))))

(declare-fun b!2011182 () Bool)

(declare-fun res!882075 () Bool)

(assert (=> b!2011182 (=> (not res!882075) (not e!1270774))))

(assert (=> b!2011182 (= res!882075 (isEmpty!13702 (tail!3026 lt!754997)))))

(assert (= (and d!614174 c!324892) b!2011178))

(assert (= (and d!614174 (not c!324892)) b!2011172))

(assert (= (and d!614174 c!324891) b!2011174))

(assert (= (and d!614174 (not c!324891)) b!2011177))

(assert (= (and b!2011177 c!324890) b!2011181))

(assert (= (and b!2011177 (not c!324890)) b!2011175))

(assert (= (and b!2011175 (not res!882079)) b!2011169))

(assert (= (and b!2011169 res!882078) b!2011170))

(assert (= (and b!2011170 res!882074) b!2011182))

(assert (= (and b!2011182 res!882075) b!2011173))

(assert (= (and b!2011169 (not res!882076)) b!2011179))

(assert (= (and b!2011179 res!882077) b!2011171))

(assert (= (and b!2011171 (not res!882073)) b!2011176))

(assert (= (and b!2011176 (not res!882072)) b!2011180))

(assert (= (or b!2011174 b!2011170 b!2011171) bm!123005))

(declare-fun m!2444131 () Bool)

(assert (=> b!2011178 m!2444131))

(assert (=> b!2011172 m!2443383))

(assert (=> b!2011172 m!2443383))

(declare-fun m!2444133 () Bool)

(assert (=> b!2011172 m!2444133))

(assert (=> b!2011172 m!2444089))

(assert (=> b!2011172 m!2444133))

(assert (=> b!2011172 m!2444089))

(declare-fun m!2444135 () Bool)

(assert (=> b!2011172 m!2444135))

(assert (=> b!2011182 m!2444089))

(assert (=> b!2011182 m!2444089))

(assert (=> b!2011182 m!2444093))

(assert (=> b!2011176 m!2444089))

(assert (=> b!2011176 m!2444089))

(assert (=> b!2011176 m!2444093))

(assert (=> bm!123005 m!2444095))

(assert (=> b!2011180 m!2443383))

(assert (=> b!2011173 m!2443383))

(assert (=> d!614174 m!2444095))

(declare-fun m!2444137 () Bool)

(assert (=> d!614174 m!2444137))

(assert (=> b!2010524 d!614174))

(declare-fun d!614176 () Bool)

(assert (=> d!614176 (= (get!6987 lt!755000) (v!26858 lt!755000))))

(assert (=> b!2010524 d!614176))

(declare-fun d!614178 () Bool)

(assert (=> d!614178 (= (inv!29247 (tag!4432 (rule!6193 separatorToken!354))) (= (mod (str.len (value!124621 (tag!4432 (rule!6193 separatorToken!354)))) 2) 0))))

(assert (=> b!2010513 d!614178))

(declare-fun d!614180 () Bool)

(declare-fun res!882082 () Bool)

(declare-fun e!1270797 () Bool)

(assert (=> d!614180 (=> (not res!882082) (not e!1270797))))

(declare-fun semiInverseModEq!1589 (Int Int) Bool)

(assert (=> d!614180 (= res!882082 (semiInverseModEq!1589 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354)))))))

(assert (=> d!614180 (= (inv!29251 (transformation!3966 (rule!6193 separatorToken!354))) e!1270797)))

(declare-fun b!2011201 () Bool)

(declare-fun equivClasses!1516 (Int Int) Bool)

(assert (=> b!2011201 (= e!1270797 (equivClasses!1516 (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354)))))))

(assert (= (and d!614180 res!882082) b!2011201))

(declare-fun m!2444147 () Bool)

(assert (=> d!614180 m!2444147))

(declare-fun m!2444149 () Bool)

(assert (=> b!2011201 m!2444149))

(assert (=> b!2010513 d!614180))

(declare-fun bs!419812 () Bool)

(declare-fun d!614182 () Bool)

(assert (= bs!419812 (and d!614182 b!2010510)))

(declare-fun lambda!76123 () Int)

(assert (=> bs!419812 (not (= lambda!76123 lambda!76099))))

(declare-fun bs!419813 () Bool)

(assert (= bs!419813 (and d!614182 b!2010799)))

(assert (=> bs!419813 (= lambda!76123 lambda!76111)))

(declare-fun b!2011222 () Bool)

(declare-fun e!1270812 () Bool)

(assert (=> b!2011222 (= e!1270812 true)))

(declare-fun b!2011221 () Bool)

(declare-fun e!1270811 () Bool)

(assert (=> b!2011221 (= e!1270811 e!1270812)))

(declare-fun b!2011220 () Bool)

(declare-fun e!1270810 () Bool)

(assert (=> b!2011220 (= e!1270810 e!1270811)))

(assert (=> d!614182 e!1270810))

(assert (= b!2011221 b!2011222))

(assert (= b!2011220 b!2011221))

(assert (= (and d!614182 ((_ is Cons!22089) rules!3198)) b!2011220))

(assert (=> b!2011222 (< (dynLambda!10877 order!14013 (toValue!5635 (transformation!3966 (h!27490 rules!3198)))) (dynLambda!10882 order!14027 lambda!76123))))

(assert (=> b!2011222 (< (dynLambda!10879 order!14017 (toChars!5494 (transformation!3966 (h!27490 rules!3198)))) (dynLambda!10882 order!14027 lambda!76123))))

(assert (=> d!614182 true))

(declare-fun lt!755194 () Bool)

(assert (=> d!614182 (= lt!755194 (forall!4694 tokens!598 lambda!76123))))

(declare-fun e!1270809 () Bool)

(assert (=> d!614182 (= lt!755194 e!1270809)))

(declare-fun res!882087 () Bool)

(assert (=> d!614182 (=> res!882087 e!1270809)))

(assert (=> d!614182 (= res!882087 (not ((_ is Cons!22088) tokens!598)))))

(assert (=> d!614182 (not (isEmpty!13698 rules!3198))))

(assert (=> d!614182 (= (rulesProduceEachTokenIndividuallyList!1310 thiss!23328 rules!3198 tokens!598) lt!755194)))

(declare-fun b!2011218 () Bool)

(declare-fun e!1270808 () Bool)

(assert (=> b!2011218 (= e!1270809 e!1270808)))

(declare-fun res!882088 () Bool)

(assert (=> b!2011218 (=> (not res!882088) (not e!1270808))))

(assert (=> b!2011218 (= res!882088 (rulesProduceIndividualToken!1751 thiss!23328 rules!3198 (h!27489 tokens!598)))))

(declare-fun b!2011219 () Bool)

(assert (=> b!2011219 (= e!1270808 (rulesProduceEachTokenIndividuallyList!1310 thiss!23328 rules!3198 (t!187669 tokens!598)))))

(assert (= (and d!614182 (not res!882087)) b!2011218))

(assert (= (and b!2011218 res!882088) b!2011219))

(declare-fun m!2444151 () Bool)

(assert (=> d!614182 m!2444151))

(assert (=> d!614182 m!2443359))

(declare-fun m!2444153 () Bool)

(assert (=> b!2011218 m!2444153))

(declare-fun m!2444155 () Bool)

(assert (=> b!2011219 m!2444155))

(assert (=> b!2010514 d!614182))

(declare-fun b!2011223 () Bool)

(declare-fun e!1270815 () Bool)

(declare-fun e!1270813 () Bool)

(assert (=> b!2011223 (= e!1270815 e!1270813)))

(declare-fun c!324894 () Bool)

(assert (=> b!2011223 (= c!324894 ((_ is IntegerValue!12307) (value!124622 (h!27489 tokens!598))))))

(declare-fun b!2011224 () Bool)

(declare-fun e!1270814 () Bool)

(assert (=> b!2011224 (= e!1270814 (inv!15 (value!124622 (h!27489 tokens!598))))))

(declare-fun b!2011225 () Bool)

(assert (=> b!2011225 (= e!1270815 (inv!16 (value!124622 (h!27489 tokens!598))))))

(declare-fun d!614186 () Bool)

(declare-fun c!324895 () Bool)

(assert (=> d!614186 (= c!324895 ((_ is IntegerValue!12306) (value!124622 (h!27489 tokens!598))))))

(assert (=> d!614186 (= (inv!21 (value!124622 (h!27489 tokens!598))) e!1270815)))

(declare-fun b!2011226 () Bool)

(assert (=> b!2011226 (= e!1270813 (inv!17 (value!124622 (h!27489 tokens!598))))))

(declare-fun b!2011227 () Bool)

(declare-fun res!882089 () Bool)

(assert (=> b!2011227 (=> res!882089 e!1270814)))

(assert (=> b!2011227 (= res!882089 (not ((_ is IntegerValue!12308) (value!124622 (h!27489 tokens!598)))))))

(assert (=> b!2011227 (= e!1270813 e!1270814)))

(assert (= (and d!614186 c!324895) b!2011225))

(assert (= (and d!614186 (not c!324895)) b!2011223))

(assert (= (and b!2011223 c!324894) b!2011226))

(assert (= (and b!2011223 (not c!324894)) b!2011227))

(assert (= (and b!2011227 (not res!882089)) b!2011224))

(declare-fun m!2444157 () Bool)

(assert (=> b!2011224 m!2444157))

(declare-fun m!2444159 () Bool)

(assert (=> b!2011225 m!2444159))

(declare-fun m!2444161 () Bool)

(assert (=> b!2011226 m!2444161))

(assert (=> b!2010503 d!614186))

(declare-fun d!614188 () Bool)

(assert (=> d!614188 (= (inv!29247 (tag!4432 (h!27490 rules!3198))) (= (mod (str.len (value!124621 (tag!4432 (h!27490 rules!3198)))) 2) 0))))

(assert (=> b!2010515 d!614188))

(declare-fun d!614190 () Bool)

(declare-fun res!882090 () Bool)

(declare-fun e!1270816 () Bool)

(assert (=> d!614190 (=> (not res!882090) (not e!1270816))))

(assert (=> d!614190 (= res!882090 (semiInverseModEq!1589 (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (h!27490 rules!3198)))))))

(assert (=> d!614190 (= (inv!29251 (transformation!3966 (h!27490 rules!3198))) e!1270816)))

(declare-fun b!2011228 () Bool)

(assert (=> b!2011228 (= e!1270816 (equivClasses!1516 (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (h!27490 rules!3198)))))))

(assert (= (and d!614190 res!882090) b!2011228))

(declare-fun m!2444163 () Bool)

(assert (=> d!614190 m!2444163))

(declare-fun m!2444165 () Bool)

(assert (=> b!2011228 m!2444165))

(assert (=> b!2010515 d!614190))

(declare-fun d!614192 () Bool)

(assert (=> d!614192 (= (inv!29247 (tag!4432 (rule!6193 (h!27489 tokens!598)))) (= (mod (str.len (value!124621 (tag!4432 (rule!6193 (h!27489 tokens!598))))) 2) 0))))

(assert (=> b!2010506 d!614192))

(declare-fun d!614194 () Bool)

(declare-fun res!882091 () Bool)

(declare-fun e!1270817 () Bool)

(assert (=> d!614194 (=> (not res!882091) (not e!1270817))))

(assert (=> d!614194 (= res!882091 (semiInverseModEq!1589 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))))))

(assert (=> d!614194 (= (inv!29251 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) e!1270817)))

(declare-fun b!2011229 () Bool)

(assert (=> b!2011229 (= e!1270817 (equivClasses!1516 (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))))))

(assert (= (and d!614194 res!882091) b!2011229))

(declare-fun m!2444167 () Bool)

(assert (=> d!614194 m!2444167))

(declare-fun m!2444169 () Bool)

(assert (=> b!2011229 m!2444169))

(assert (=> b!2010506 d!614194))

(declare-fun b!2011234 () Bool)

(declare-fun e!1270820 () Bool)

(declare-fun tp_is_empty!9185 () Bool)

(declare-fun tp!599799 () Bool)

(assert (=> b!2011234 (= e!1270820 (and tp_is_empty!9185 tp!599799))))

(assert (=> b!2010517 (= tp!599728 e!1270820)))

(assert (= (and b!2010517 ((_ is Cons!22087) (originalCharacters!4773 separatorToken!354))) b!2011234))

(declare-fun b!2011248 () Bool)

(declare-fun b_free!56109 () Bool)

(declare-fun b_next!56813 () Bool)

(assert (=> b!2011248 (= b_free!56109 (not b_next!56813))))

(declare-fun t!187762 () Bool)

(declare-fun tb!125725 () Bool)

(assert (=> (and b!2011248 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187762) tb!125725))

(declare-fun result!150640 () Bool)

(assert (= result!150640 result!150554))

(assert (=> d!614022 t!187762))

(assert (=> d!614088 t!187762))

(declare-fun t!187764 () Bool)

(declare-fun tb!125727 () Bool)

(assert (=> (and b!2011248 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187764) tb!125727))

(declare-fun result!150642 () Bool)

(assert (= result!150642 result!150596))

(assert (=> d!614088 t!187764))

(declare-fun tp!599814 () Bool)

(declare-fun b_and!159041 () Bool)

(assert (=> b!2011248 (= tp!599814 (and (=> t!187762 result!150640) (=> t!187764 result!150642) b_and!159041))))

(declare-fun b_free!56111 () Bool)

(declare-fun b_next!56815 () Bool)

(assert (=> b!2011248 (= b_free!56111 (not b_next!56815))))

(declare-fun t!187766 () Bool)

(declare-fun tb!125729 () Bool)

(assert (=> (and b!2011248 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187766) tb!125729))

(declare-fun result!150644 () Bool)

(assert (= result!150644 result!150540))

(assert (=> d!614098 t!187766))

(declare-fun t!187768 () Bool)

(declare-fun tb!125731 () Bool)

(assert (=> (and b!2011248 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187768) tb!125731))

(declare-fun result!150646 () Bool)

(assert (= result!150646 result!150548))

(assert (=> d!614022 t!187768))

(declare-fun tb!125733 () Bool)

(declare-fun t!187770 () Bool)

(assert (=> (and b!2011248 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354)))) t!187770) tb!125733))

(declare-fun result!150648 () Bool)

(assert (= result!150648 result!150602))

(assert (=> d!614110 t!187770))

(assert (=> b!2010649 t!187766))

(assert (=> b!2011014 t!187770))

(declare-fun tp!599811 () Bool)

(declare-fun b_and!159043 () Bool)

(assert (=> b!2011248 (= tp!599811 (and (=> t!187766 result!150644) (=> t!187770 result!150648) (=> t!187768 result!150646) b_and!159043))))

(declare-fun e!1270834 () Bool)

(declare-fun e!1270836 () Bool)

(declare-fun b!2011245 () Bool)

(declare-fun tp!599813 () Bool)

(assert (=> b!2011245 (= e!1270834 (and (inv!29250 (h!27489 (t!187669 tokens!598))) e!1270836 tp!599813))))

(declare-fun e!1270837 () Bool)

(assert (=> b!2011248 (= e!1270837 (and tp!599814 tp!599811))))

(assert (=> b!2010499 (= tp!599726 e!1270834)))

(declare-fun e!1270838 () Bool)

(declare-fun b!2011247 () Bool)

(declare-fun tp!599810 () Bool)

(assert (=> b!2011247 (= e!1270838 (and tp!599810 (inv!29247 (tag!4432 (rule!6193 (h!27489 (t!187669 tokens!598))))) (inv!29251 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) e!1270837))))

(declare-fun b!2011246 () Bool)

(declare-fun tp!599812 () Bool)

(assert (=> b!2011246 (= e!1270836 (and (inv!21 (value!124622 (h!27489 (t!187669 tokens!598)))) e!1270838 tp!599812))))

(assert (= b!2011247 b!2011248))

(assert (= b!2011246 b!2011247))

(assert (= b!2011245 b!2011246))

(assert (= (and b!2010499 ((_ is Cons!22088) (t!187669 tokens!598))) b!2011245))

(declare-fun m!2444171 () Bool)

(assert (=> b!2011245 m!2444171))

(declare-fun m!2444173 () Bool)

(assert (=> b!2011247 m!2444173))

(declare-fun m!2444175 () Bool)

(assert (=> b!2011247 m!2444175))

(declare-fun m!2444177 () Bool)

(assert (=> b!2011246 m!2444177))

(declare-fun b!2011259 () Bool)

(declare-fun b_free!56113 () Bool)

(declare-fun b_next!56817 () Bool)

(assert (=> b!2011259 (= b_free!56113 (not b_next!56817))))

(declare-fun tb!125735 () Bool)

(declare-fun t!187772 () Bool)

(assert (=> (and b!2011259 (= (toValue!5635 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187772) tb!125735))

(declare-fun result!150652 () Bool)

(assert (= result!150652 result!150554))

(assert (=> d!614022 t!187772))

(assert (=> d!614088 t!187772))

(declare-fun t!187774 () Bool)

(declare-fun tb!125737 () Bool)

(assert (=> (and b!2011259 (= (toValue!5635 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187774) tb!125737))

(declare-fun result!150654 () Bool)

(assert (= result!150654 result!150596))

(assert (=> d!614088 t!187774))

(declare-fun b_and!159045 () Bool)

(declare-fun tp!599826 () Bool)

(assert (=> b!2011259 (= tp!599826 (and (=> t!187772 result!150652) (=> t!187774 result!150654) b_and!159045))))

(declare-fun b_free!56115 () Bool)

(declare-fun b_next!56819 () Bool)

(assert (=> b!2011259 (= b_free!56115 (not b_next!56819))))

(declare-fun t!187776 () Bool)

(declare-fun tb!125739 () Bool)

(assert (=> (and b!2011259 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187776) tb!125739))

(declare-fun result!150656 () Bool)

(assert (= result!150656 result!150540))

(assert (=> d!614098 t!187776))

(declare-fun t!187778 () Bool)

(declare-fun tb!125741 () Bool)

(assert (=> (and b!2011259 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598))))) t!187778) tb!125741))

(declare-fun result!150658 () Bool)

(assert (= result!150658 result!150548))

(assert (=> d!614022 t!187778))

(declare-fun t!187780 () Bool)

(declare-fun tb!125743 () Bool)

(assert (=> (and b!2011259 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354)))) t!187780) tb!125743))

(declare-fun result!150660 () Bool)

(assert (= result!150660 result!150602))

(assert (=> d!614110 t!187780))

(assert (=> b!2010649 t!187776))

(assert (=> b!2011014 t!187780))

(declare-fun tp!599823 () Bool)

(declare-fun b_and!159047 () Bool)

(assert (=> b!2011259 (= tp!599823 (and (=> t!187776 result!150656) (=> t!187780 result!150660) (=> t!187778 result!150658) b_and!159047))))

(declare-fun e!1270850 () Bool)

(assert (=> b!2011259 (= e!1270850 (and tp!599826 tp!599823))))

(declare-fun tp!599825 () Bool)

(declare-fun e!1270849 () Bool)

(declare-fun b!2011258 () Bool)

(assert (=> b!2011258 (= e!1270849 (and tp!599825 (inv!29247 (tag!4432 (h!27490 (t!187670 rules!3198)))) (inv!29251 (transformation!3966 (h!27490 (t!187670 rules!3198)))) e!1270850))))

(declare-fun b!2011257 () Bool)

(declare-fun e!1270847 () Bool)

(declare-fun tp!599824 () Bool)

(assert (=> b!2011257 (= e!1270847 (and e!1270849 tp!599824))))

(assert (=> b!2010512 (= tp!599724 e!1270847)))

(assert (= b!2011258 b!2011259))

(assert (= b!2011257 b!2011258))

(assert (= (and b!2010512 ((_ is Cons!22089) (t!187670 rules!3198))) b!2011257))

(declare-fun m!2444179 () Bool)

(assert (=> b!2011258 m!2444179))

(declare-fun m!2444181 () Bool)

(assert (=> b!2011258 m!2444181))

(declare-fun b!2011273 () Bool)

(declare-fun e!1270853 () Bool)

(declare-fun tp!599838 () Bool)

(declare-fun tp!599837 () Bool)

(assert (=> b!2011273 (= e!1270853 (and tp!599838 tp!599837))))

(declare-fun b!2011271 () Bool)

(declare-fun tp!599841 () Bool)

(declare-fun tp!599840 () Bool)

(assert (=> b!2011271 (= e!1270853 (and tp!599841 tp!599840))))

(declare-fun b!2011272 () Bool)

(declare-fun tp!599839 () Bool)

(assert (=> b!2011272 (= e!1270853 tp!599839)))

(assert (=> b!2010513 (= tp!599722 e!1270853)))

(declare-fun b!2011270 () Bool)

(assert (=> b!2011270 (= e!1270853 tp_is_empty!9185)))

(assert (= (and b!2010513 ((_ is ElementMatch!5391) (regex!3966 (rule!6193 separatorToken!354)))) b!2011270))

(assert (= (and b!2010513 ((_ is Concat!9494) (regex!3966 (rule!6193 separatorToken!354)))) b!2011271))

(assert (= (and b!2010513 ((_ is Star!5391) (regex!3966 (rule!6193 separatorToken!354)))) b!2011272))

(assert (= (and b!2010513 ((_ is Union!5391) (regex!3966 (rule!6193 separatorToken!354)))) b!2011273))

(declare-fun b!2011274 () Bool)

(declare-fun e!1270854 () Bool)

(declare-fun tp!599842 () Bool)

(assert (=> b!2011274 (= e!1270854 (and tp_is_empty!9185 tp!599842))))

(assert (=> b!2010503 (= tp!599725 e!1270854)))

(assert (= (and b!2010503 ((_ is Cons!22087) (originalCharacters!4773 (h!27489 tokens!598)))) b!2011274))

(declare-fun b!2011278 () Bool)

(declare-fun e!1270855 () Bool)

(declare-fun tp!599844 () Bool)

(declare-fun tp!599843 () Bool)

(assert (=> b!2011278 (= e!1270855 (and tp!599844 tp!599843))))

(declare-fun b!2011276 () Bool)

(declare-fun tp!599847 () Bool)

(declare-fun tp!599846 () Bool)

(assert (=> b!2011276 (= e!1270855 (and tp!599847 tp!599846))))

(declare-fun b!2011277 () Bool)

(declare-fun tp!599845 () Bool)

(assert (=> b!2011277 (= e!1270855 tp!599845)))

(assert (=> b!2010515 (= tp!599730 e!1270855)))

(declare-fun b!2011275 () Bool)

(assert (=> b!2011275 (= e!1270855 tp_is_empty!9185)))

(assert (= (and b!2010515 ((_ is ElementMatch!5391) (regex!3966 (h!27490 rules!3198)))) b!2011275))

(assert (= (and b!2010515 ((_ is Concat!9494) (regex!3966 (h!27490 rules!3198)))) b!2011276))

(assert (= (and b!2010515 ((_ is Star!5391) (regex!3966 (h!27490 rules!3198)))) b!2011277))

(assert (= (and b!2010515 ((_ is Union!5391) (regex!3966 (h!27490 rules!3198)))) b!2011278))

(declare-fun b!2011282 () Bool)

(declare-fun e!1270856 () Bool)

(declare-fun tp!599849 () Bool)

(declare-fun tp!599848 () Bool)

(assert (=> b!2011282 (= e!1270856 (and tp!599849 tp!599848))))

(declare-fun b!2011280 () Bool)

(declare-fun tp!599852 () Bool)

(declare-fun tp!599851 () Bool)

(assert (=> b!2011280 (= e!1270856 (and tp!599852 tp!599851))))

(declare-fun b!2011281 () Bool)

(declare-fun tp!599850 () Bool)

(assert (=> b!2011281 (= e!1270856 tp!599850)))

(assert (=> b!2010506 (= tp!599718 e!1270856)))

(declare-fun b!2011279 () Bool)

(assert (=> b!2011279 (= e!1270856 tp_is_empty!9185)))

(assert (= (and b!2010506 ((_ is ElementMatch!5391) (regex!3966 (rule!6193 (h!27489 tokens!598))))) b!2011279))

(assert (= (and b!2010506 ((_ is Concat!9494) (regex!3966 (rule!6193 (h!27489 tokens!598))))) b!2011280))

(assert (= (and b!2010506 ((_ is Star!5391) (regex!3966 (rule!6193 (h!27489 tokens!598))))) b!2011281))

(assert (= (and b!2010506 ((_ is Union!5391) (regex!3966 (rule!6193 (h!27489 tokens!598))))) b!2011282))

(declare-fun b_lambda!67187 () Bool)

(assert (= b_lambda!67159 (or (and b!2011259 b_free!56113 (= (toValue!5635 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56109 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56097) (and b!2010497 b_free!56093 (= (toValue!5635 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56089 (= (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) b_lambda!67187)))

(declare-fun b_lambda!67189 () Bool)

(assert (= b_lambda!67161 (or (and b!2011259 b_free!56115 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010497 b_free!56095 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56111 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56091 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56099) b_lambda!67189)))

(declare-fun b_lambda!67191 () Bool)

(assert (= b_lambda!67157 (or (and b!2011259 b_free!56113 (= (toValue!5635 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56109 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56097) (and b!2010497 b_free!56093 (= (toValue!5635 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56089 (= (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) b_lambda!67191)))

(declare-fun b_lambda!67193 () Bool)

(assert (= b_lambda!67139 (or (and b!2011259 b_free!56115 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010497 b_free!56095 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56111 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56091 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56099) b_lambda!67193)))

(declare-fun b_lambda!67195 () Bool)

(assert (= b_lambda!67137 (or (and b!2011259 b_free!56115 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010497 b_free!56095 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56111 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56091 (= (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))) (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56099) b_lambda!67195)))

(declare-fun b_lambda!67197 () Bool)

(assert (= b_lambda!67141 (or (and b!2011259 b_free!56113 (= (toValue!5635 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2011248 b_free!56109 (= (toValue!5635 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010516 b_free!56097) (and b!2010497 b_free!56093 (= (toValue!5635 (transformation!3966 (h!27490 rules!3198))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) (and b!2010521 b_free!56089 (= (toValue!5635 (transformation!3966 (rule!6193 separatorToken!354))) (toValue!5635 (transformation!3966 (rule!6193 (h!27489 tokens!598)))))) b_lambda!67197)))

(declare-fun b_lambda!67199 () Bool)

(assert (= b_lambda!67135 (or b!2010510 b_lambda!67199)))

(declare-fun bs!419814 () Bool)

(declare-fun d!614196 () Bool)

(assert (= bs!419814 (and d!614196 b!2010510)))

(assert (=> bs!419814 (= (dynLambda!10875 lambda!76099 (h!27489 tokens!598)) (not (isSeparator!3966 (rule!6193 (h!27489 tokens!598)))))))

(assert (=> b!2010643 d!614196))

(declare-fun b_lambda!67201 () Bool)

(assert (= b_lambda!67165 (or (and b!2010521 b_free!56091) (and b!2011259 b_free!56115 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2010497 b_free!56095 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2011248 b_free!56111 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2010516 b_free!56099 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) b_lambda!67201)))

(declare-fun b_lambda!67203 () Bool)

(assert (= b_lambda!67163 (or (and b!2010521 b_free!56091) (and b!2011259 b_free!56115 (= (toChars!5494 (transformation!3966 (h!27490 (t!187670 rules!3198)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2010497 b_free!56095 (= (toChars!5494 (transformation!3966 (h!27490 rules!3198))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2011248 b_free!56111 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 (t!187669 tokens!598))))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) (and b!2010516 b_free!56099 (= (toChars!5494 (transformation!3966 (rule!6193 (h!27489 tokens!598)))) (toChars!5494 (transformation!3966 (rule!6193 separatorToken!354))))) b_lambda!67203)))

(check-sat (not b!2010798) (not b_lambda!67201) (not d!614118) (not b_next!56819) (not b!2010595) b_and!159025 (not bm!122977) (not tb!125693) (not b!2010872) (not d!614190) (not b!2011245) (not b_next!56815) (not b!2011105) (not d!614112) (not d!614128) b_and!159021 (not b!2011104) (not b!2010884) (not b!2010638) (not b!2010795) b_and!159003 (not tb!125645) (not b!2011258) (not b!2010808) (not b!2011277) b_and!159045 (not b!2011116) (not b!2010655) (not b!2011281) (not d!614030) b_and!159005 (not d!614182) (not b!2011173) (not b_next!56801) (not b!2011219) (not d!614088) (not b_lambda!67193) (not b!2010632) (not b!2011015) (not d!614166) (not b!2011013) (not b!2010939) (not b!2010942) (not d!614158) (not b!2011120) (not b!2010797) (not b!2010936) (not b!2011111) (not b!2010596) (not d!614058) (not b!2010890) (not d!614094) (not bm!122957) (not d!614060) (not b!2011224) (not b_lambda!67187) (not b_lambda!67195) (not b!2010714) (not bm!122939) (not bm!123005) (not b!2010697) (not b!2010589) (not tb!125699) (not d!614162) (not b!2011176) (not b!2011164) (not b!2011100) (not bm!122956) (not b!2010888) (not b!2011229) (not b!2010636) (not d!614160) (not b!2010649) (not d!614148) (not b!2010588) (not b!2010713) (not d!614180) (not b!2010889) (not b!2010974) (not b!2010736) (not bm!123004) (not d!614068) (not bm!123003) (not b!2011110) (not d!614104) (not b!2011035) (not b_lambda!67203) (not b_next!56817) (not b!2011114) (not b!2011225) (not b_lambda!67191) (not b!2010644) (not d!614012) (not b!2010935) (not b!2010634) (not b_next!56803) (not d!614116) (not b!2010873) (not b!2011172) (not b!2011101) (not b!2011274) (not b_lambda!67199) (not b_lambda!67189) (not b!2011276) (not b!2010737) (not b_next!56799) (not b!2011246) (not b!2010876) (not b_next!56795) (not b!2010628) (not bm!123000) (not d!614022) (not d!614174) (not b!2011096) (not b!2011280) (not b!2010887) (not d!614124) (not b!2010870) (not d!614020) (not b!2011097) (not bm!123001) (not b!2011118) (not d!614082) (not b!2011282) (not b_next!56793) (not b!2010871) b_and!159007 (not bm!122976) (not b_next!56813) b_and!159023 (not b!2010941) (not b!2011090) (not b!2011165) (not d!614194) (not d!614164) b_and!159041 (not b!2011247) (not tb!125651) (not b!2011180) (not b!2011201) (not b!2011278) tp_is_empty!9185 (not b!2010650) (not b!2011093) (not b_lambda!67197) (not b!2011092) (not d!614032) (not b!2011182) (not b!2010587) (not b!2011257) b_and!159047 (not b!2011220) (not d!614028) (not b!2010994) (not d!614064) (not b!2010975) (not b!2011163) (not b!2011271) (not d!614168) (not tb!125657) (not b!2011273) (not b!2010881) (not b!2010868) (not b!2011234) (not b!2010886) (not bm!122954) (not b!2010875) (not b!2010874) (not b!2011272) (not b!2011014) (not b!2010891) b_and!159043 (not b!2010799) (not b!2010945) (not b_next!56797) (not b!2010629) (not d!614110) (not d!614098) (not d!614170) (not b!2011218) (not d!614120) (not b!2011178) (not b!2011226) (not b!2011228) (not d!614114))
(check-sat b_and!159003 (not b_next!56801) (not b_next!56799) (not b_next!56795) (not b_next!56793) b_and!159041 b_and!159047 (not b_next!56819) b_and!159025 b_and!159021 (not b_next!56815) b_and!159005 b_and!159045 (not b_next!56817) (not b_next!56803) b_and!159023 b_and!159007 (not b_next!56813) (not b_next!56797) b_and!159043)
