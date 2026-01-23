; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197996 () Bool)

(assert start!197996)

(declare-fun b!2013508 () Bool)

(declare-fun b_free!56233 () Bool)

(declare-fun b_next!56937 () Bool)

(assert (=> b!2013508 (= b_free!56233 (not b_next!56937))))

(declare-fun tp!600402 () Bool)

(declare-fun b_and!159357 () Bool)

(assert (=> b!2013508 (= tp!600402 b_and!159357)))

(declare-fun b_free!56235 () Bool)

(declare-fun b_next!56939 () Bool)

(assert (=> b!2013508 (= b_free!56235 (not b_next!56939))))

(declare-fun tp!600401 () Bool)

(declare-fun b_and!159359 () Bool)

(assert (=> b!2013508 (= tp!600401 b_and!159359)))

(declare-fun b!2013516 () Bool)

(declare-fun b_free!56237 () Bool)

(declare-fun b_next!56941 () Bool)

(assert (=> b!2013516 (= b_free!56237 (not b_next!56941))))

(declare-fun tp!600403 () Bool)

(declare-fun b_and!159361 () Bool)

(assert (=> b!2013516 (= tp!600403 b_and!159361)))

(declare-fun b_free!56239 () Bool)

(declare-fun b_next!56943 () Bool)

(assert (=> b!2013516 (= b_free!56239 (not b_next!56943))))

(declare-fun tp!600398 () Bool)

(declare-fun b_and!159363 () Bool)

(assert (=> b!2013516 (= tp!600398 b_and!159363)))

(declare-fun b!2013515 () Bool)

(declare-fun b_free!56241 () Bool)

(declare-fun b_next!56945 () Bool)

(assert (=> b!2013515 (= b_free!56241 (not b_next!56945))))

(declare-fun tp!600396 () Bool)

(declare-fun b_and!159365 () Bool)

(assert (=> b!2013515 (= tp!600396 b_and!159365)))

(declare-fun b_free!56243 () Bool)

(declare-fun b_next!56947 () Bool)

(assert (=> b!2013515 (= b_free!56243 (not b_next!56947))))

(declare-fun tp!600405 () Bool)

(declare-fun b_and!159367 () Bool)

(assert (=> b!2013515 (= tp!600405 b_and!159367)))

(declare-fun e!1272386 () Bool)

(declare-fun tp!600399 () Bool)

(declare-fun b!2013496 () Bool)

(declare-fun e!1272382 () Bool)

(declare-datatypes ((List!22206 0))(
  ( (Nil!22124) (Cons!22124 (h!27525 (_ BitVec 16)) (t!188035 List!22206)) )
))
(declare-datatypes ((TokenValue!4110 0))(
  ( (FloatLiteralValue!8220 (text!29215 List!22206)) (TokenValueExt!4109 (__x!13718 Int)) (Broken!20550 (value!124824 List!22206)) (Object!4191) (End!4110) (Def!4110) (Underscore!4110) (Match!4110) (Else!4110) (Error!4110) (Case!4110) (If!4110) (Extends!4110) (Abstract!4110) (Class!4110) (Val!4110) (DelimiterValue!8220 (del!4170 List!22206)) (KeywordValue!4116 (value!124825 List!22206)) (CommentValue!8220 (value!124826 List!22206)) (WhitespaceValue!8220 (value!124827 List!22206)) (IndentationValue!4110 (value!124828 List!22206)) (String!25667) (Int32!4110) (Broken!20551 (value!124829 List!22206)) (Boolean!4111) (Unit!36707) (OperatorValue!4113 (op!4170 List!22206)) (IdentifierValue!8220 (value!124830 List!22206)) (IdentifierValue!8221 (value!124831 List!22206)) (WhitespaceValue!8221 (value!124832 List!22206)) (True!8220) (False!8220) (Broken!20552 (value!124833 List!22206)) (Broken!20553 (value!124834 List!22206)) (True!8221) (RightBrace!4110) (RightBracket!4110) (Colon!4110) (Null!4110) (Comma!4110) (LeftBracket!4110) (False!8221) (LeftBrace!4110) (ImaginaryLiteralValue!4110 (text!29216 List!22206)) (StringLiteralValue!12330 (value!124835 List!22206)) (EOFValue!4110 (value!124836 List!22206)) (IdentValue!4110 (value!124837 List!22206)) (DelimiterValue!8221 (value!124838 List!22206)) (DedentValue!4110 (value!124839 List!22206)) (NewLineValue!4110 (value!124840 List!22206)) (IntegerValue!12330 (value!124841 (_ BitVec 32)) (text!29217 List!22206)) (IntegerValue!12331 (value!124842 Int) (text!29218 List!22206)) (Times!4110) (Or!4110) (Equal!4110) (Minus!4110) (Broken!20554 (value!124843 List!22206)) (And!4110) (Div!4110) (LessEqual!4110) (Mod!4110) (Concat!9509) (Not!4110) (Plus!4110) (SpaceValue!4110 (value!124844 List!22206)) (IntegerValue!12332 (value!124845 Int) (text!29219 List!22206)) (StringLiteralValue!12331 (text!29220 List!22206)) (FloatLiteralValue!8221 (text!29221 List!22206)) (BytesLiteralValue!4110 (value!124846 List!22206)) (CommentValue!8221 (value!124847 List!22206)) (StringLiteralValue!12332 (value!124848 List!22206)) (ErrorTokenValue!4110 (msg!4171 List!22206)) )
))
(declare-datatypes ((C!10944 0))(
  ( (C!10945 (val!6424 Int)) )
))
(declare-datatypes ((List!22207 0))(
  ( (Nil!22125) (Cons!22125 (h!27526 C!10944) (t!188036 List!22207)) )
))
(declare-datatypes ((Regex!5399 0))(
  ( (ElementMatch!5399 (c!325220 C!10944)) (Concat!9510 (regOne!11310 Regex!5399) (regTwo!11310 Regex!5399)) (EmptyExpr!5399) (Star!5399 (reg!5728 Regex!5399)) (EmptyLang!5399) (Union!5399 (regOne!11311 Regex!5399) (regTwo!11311 Regex!5399)) )
))
(declare-datatypes ((String!25668 0))(
  ( (String!25669 (value!124849 String)) )
))
(declare-datatypes ((IArray!14793 0))(
  ( (IArray!14794 (innerList!7454 List!22207)) )
))
(declare-datatypes ((Conc!7394 0))(
  ( (Node!7394 (left!17599 Conc!7394) (right!17929 Conc!7394) (csize!15018 Int) (cheight!7605 Int)) (Leaf!10844 (xs!10292 IArray!14793) (csize!15019 Int)) (Empty!7394) )
))
(declare-datatypes ((BalanceConc!14604 0))(
  ( (BalanceConc!14605 (c!325221 Conc!7394)) )
))
(declare-datatypes ((TokenValueInjection!7804 0))(
  ( (TokenValueInjection!7805 (toValue!5643 Int) (toChars!5502 Int)) )
))
(declare-datatypes ((Rule!7748 0))(
  ( (Rule!7749 (regex!3974 Regex!5399) (tag!4446 String!25668) (isSeparator!3974 Bool) (transformation!3974 TokenValueInjection!7804)) )
))
(declare-datatypes ((Token!7500 0))(
  ( (Token!7501 (value!124850 TokenValue!4110) (rule!6201 Rule!7748) (size!17282 Int) (originalCharacters!4781 List!22207)) )
))
(declare-datatypes ((List!22208 0))(
  ( (Nil!22126) (Cons!22126 (h!27527 Token!7500) (t!188037 List!22208)) )
))
(declare-fun tokens!598 () List!22208)

(declare-fun inv!29287 (String!25668) Bool)

(declare-fun inv!29290 (TokenValueInjection!7804) Bool)

(assert (=> b!2013496 (= e!1272382 (and tp!600399 (inv!29287 (tag!4446 (rule!6201 (h!27527 tokens!598)))) (inv!29290 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) e!1272386))))

(declare-fun b!2013497 () Bool)

(declare-fun res!883179 () Bool)

(declare-fun e!1272383 () Bool)

(assert (=> b!2013497 (=> (not res!883179) (not e!1272383))))

(declare-fun separatorToken!354 () Token!7500)

(assert (=> b!2013497 (= res!883179 (isSeparator!3974 (rule!6201 separatorToken!354)))))

(declare-fun tp!600400 () Bool)

(declare-fun b!2013498 () Bool)

(declare-fun e!1272394 () Bool)

(declare-fun e!1272376 () Bool)

(declare-fun inv!21 (TokenValue!4110) Bool)

(assert (=> b!2013498 (= e!1272394 (and (inv!21 (value!124850 separatorToken!354)) e!1272376 tp!600400))))

(declare-fun b!2013499 () Bool)

(declare-fun e!1272388 () Bool)

(declare-fun lt!756059 () Rule!7748)

(assert (=> b!2013499 (= e!1272388 (= (rule!6201 separatorToken!354) lt!756059))))

(declare-fun b!2013500 () Bool)

(declare-fun e!1272391 () Bool)

(assert (=> b!2013500 (= e!1272391 false)))

(declare-fun b!2013501 () Bool)

(declare-fun tp!600408 () Bool)

(declare-fun e!1272373 () Bool)

(assert (=> b!2013501 (= e!1272376 (and tp!600408 (inv!29287 (tag!4446 (rule!6201 separatorToken!354))) (inv!29290 (transformation!3974 (rule!6201 separatorToken!354))) e!1272373))))

(declare-fun b!2013503 () Bool)

(declare-fun res!883175 () Bool)

(assert (=> b!2013503 (=> (not res!883175) (not e!1272383))))

(declare-datatypes ((List!22209 0))(
  ( (Nil!22127) (Cons!22127 (h!27528 Rule!7748) (t!188038 List!22209)) )
))
(declare-fun rules!3198 () List!22209)

(declare-fun sepAndNonSepRulesDisjointChars!1072 (List!22209 List!22209) Bool)

(assert (=> b!2013503 (= res!883175 (sepAndNonSepRulesDisjointChars!1072 rules!3198 rules!3198))))

(declare-fun b!2013504 () Bool)

(declare-fun e!1272378 () Bool)

(declare-fun lt!756067 () Rule!7748)

(assert (=> b!2013504 (= e!1272378 (= (rule!6201 (h!27527 tokens!598)) lt!756067))))

(declare-fun b!2013505 () Bool)

(declare-fun res!883176 () Bool)

(assert (=> b!2013505 (=> (not res!883176) (not e!1272383))))

(get-info :version)

(assert (=> b!2013505 (= res!883176 ((_ is Cons!22126) tokens!598))))

(declare-fun b!2013506 () Bool)

(declare-fun e!1272393 () Bool)

(declare-datatypes ((tuple2!20784 0))(
  ( (tuple2!20785 (_1!11861 Token!7500) (_2!11861 List!22207)) )
))
(declare-datatypes ((Option!4629 0))(
  ( (None!4628) (Some!4628 (v!26885 tuple2!20784)) )
))
(declare-fun lt!756068 () Option!4629)

(declare-fun get!7007 (Option!4629) tuple2!20784)

(assert (=> b!2013506 (= e!1272393 (= (_1!11861 (get!7007 lt!756068)) (h!27527 tokens!598)))))

(declare-fun e!1272379 () Bool)

(declare-fun e!1272374 () Bool)

(declare-fun tp!600406 () Bool)

(declare-fun b!2013507 () Bool)

(assert (=> b!2013507 (= e!1272379 (and tp!600406 (inv!29287 (tag!4446 (h!27528 rules!3198))) (inv!29290 (transformation!3974 (h!27528 rules!3198))) e!1272374))))

(assert (=> b!2013508 (= e!1272374 (and tp!600402 tp!600401))))

(declare-fun b!2013509 () Bool)

(declare-fun res!883186 () Bool)

(declare-fun e!1272381 () Bool)

(assert (=> b!2013509 (=> res!883186 e!1272381)))

(declare-datatypes ((LexerInterface!3587 0))(
  ( (LexerInterfaceExt!3584 (__x!13719 Int)) (Lexer!3585) )
))
(declare-fun thiss!23328 () LexerInterface!3587)

(declare-fun rulesProduceIndividualToken!1759 (LexerInterface!3587 List!22209 Token!7500) Bool)

(assert (=> b!2013509 (= res!883186 (not (rulesProduceIndividualToken!1759 thiss!23328 rules!3198 (h!27527 tokens!598))))))

(declare-fun b!2013510 () Bool)

(declare-datatypes ((Unit!36708 0))(
  ( (Unit!36709) )
))
(declare-fun e!1272390 () Unit!36708)

(declare-fun Unit!36710 () Unit!36708)

(assert (=> b!2013510 (= e!1272390 Unit!36710)))

(declare-fun b!2013511 () Bool)

(declare-fun res!883169 () Bool)

(assert (=> b!2013511 (=> (not res!883169) (not e!1272383))))

(declare-fun rulesProduceEachTokenIndividuallyList!1318 (LexerInterface!3587 List!22209 List!22208) Bool)

(assert (=> b!2013511 (= res!883169 (rulesProduceEachTokenIndividuallyList!1318 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2013512 () Bool)

(declare-fun e!1272375 () Bool)

(assert (=> b!2013512 (= e!1272375 e!1272378)))

(declare-fun res!883184 () Bool)

(assert (=> b!2013512 (=> (not res!883184) (not e!1272378))))

(declare-fun lt!756072 () List!22207)

(declare-fun matchR!2665 (Regex!5399 List!22207) Bool)

(assert (=> b!2013512 (= res!883184 (matchR!2665 (regex!3974 lt!756067) lt!756072))))

(declare-datatypes ((Option!4630 0))(
  ( (None!4629) (Some!4629 (v!26886 Rule!7748)) )
))
(declare-fun lt!756062 () Option!4630)

(declare-fun get!7008 (Option!4630) Rule!7748)

(assert (=> b!2013512 (= lt!756067 (get!7008 lt!756062))))

(declare-fun b!2013513 () Bool)

(declare-fun e!1272395 () Bool)

(assert (=> b!2013513 (= e!1272395 e!1272388)))

(declare-fun res!883181 () Bool)

(assert (=> b!2013513 (=> (not res!883181) (not e!1272388))))

(declare-fun lt!756056 () List!22207)

(assert (=> b!2013513 (= res!883181 (matchR!2665 (regex!3974 lt!756059) lt!756056))))

(declare-fun lt!756071 () Option!4630)

(assert (=> b!2013513 (= lt!756059 (get!7008 lt!756071))))

(declare-fun b!2013514 () Bool)

(declare-fun res!883182 () Bool)

(assert (=> b!2013514 (=> (not res!883182) (not e!1272383))))

(declare-fun lambda!76195 () Int)

(declare-fun forall!4702 (List!22208 Int) Bool)

(assert (=> b!2013514 (= res!883182 (forall!4702 tokens!598 lambda!76195))))

(assert (=> b!2013515 (= e!1272373 (and tp!600396 tp!600405))))

(assert (=> b!2013516 (= e!1272386 (and tp!600403 tp!600398))))

(declare-fun b!2013517 () Bool)

(declare-fun contains!4059 (List!22209 Rule!7748) Bool)

(assert (=> b!2013517 (= e!1272381 (contains!4059 rules!3198 (rule!6201 (h!27527 tokens!598))))))

(declare-fun b!2013518 () Bool)

(declare-fun tp!600407 () Bool)

(declare-fun e!1272396 () Bool)

(declare-fun e!1272389 () Bool)

(declare-fun inv!29291 (Token!7500) Bool)

(assert (=> b!2013518 (= e!1272389 (and (inv!29291 (h!27527 tokens!598)) e!1272396 tp!600407))))

(declare-fun res!883187 () Bool)

(assert (=> start!197996 (=> (not res!883187) (not e!1272383))))

(assert (=> start!197996 (= res!883187 ((_ is Lexer!3585) thiss!23328))))

(assert (=> start!197996 e!1272383))

(assert (=> start!197996 true))

(declare-fun e!1272385 () Bool)

(assert (=> start!197996 e!1272385))

(assert (=> start!197996 e!1272389))

(assert (=> start!197996 (and (inv!29291 separatorToken!354) e!1272394)))

(declare-fun b!2013502 () Bool)

(declare-fun res!883177 () Bool)

(assert (=> b!2013502 (=> res!883177 e!1272381)))

(declare-datatypes ((IArray!14795 0))(
  ( (IArray!14796 (innerList!7455 List!22208)) )
))
(declare-datatypes ((Conc!7395 0))(
  ( (Node!7395 (left!17600 Conc!7395) (right!17930 Conc!7395) (csize!15020 Int) (cheight!7606 Int)) (Leaf!10845 (xs!10293 IArray!14795) (csize!15021 Int)) (Empty!7395) )
))
(declare-datatypes ((BalanceConc!14606 0))(
  ( (BalanceConc!14607 (c!325222 Conc!7395)) )
))
(declare-fun isEmpty!13731 (BalanceConc!14606) Bool)

(declare-datatypes ((tuple2!20786 0))(
  ( (tuple2!20787 (_1!11862 BalanceConc!14606) (_2!11862 BalanceConc!14604)) )
))
(declare-fun lex!1603 (LexerInterface!3587 List!22209 BalanceConc!14604) tuple2!20786)

(declare-fun seqFromList!2828 (List!22207) BalanceConc!14604)

(assert (=> b!2013502 (= res!883177 (isEmpty!13731 (_1!11862 (lex!1603 thiss!23328 rules!3198 (seqFromList!2828 lt!756072)))))))

(declare-fun b!2013519 () Bool)

(declare-fun res!883171 () Bool)

(assert (=> b!2013519 (=> (not res!883171) (not e!1272383))))

(declare-fun rulesInvariant!3194 (LexerInterface!3587 List!22209) Bool)

(assert (=> b!2013519 (= res!883171 (rulesInvariant!3194 thiss!23328 rules!3198))))

(declare-fun b!2013520 () Bool)

(declare-fun e!1272392 () Bool)

(assert (=> b!2013520 (= e!1272383 (not e!1272392))))

(declare-fun res!883185 () Bool)

(assert (=> b!2013520 (=> res!883185 e!1272392)))

(declare-fun lt!756070 () Bool)

(declare-fun lt!756074 () Option!4629)

(assert (=> b!2013520 (= res!883185 (or (and (not lt!756070) (= (_1!11861 (v!26885 lt!756074)) (h!27527 tokens!598))) lt!756070 (= (_1!11861 (v!26885 lt!756074)) (h!27527 tokens!598))))))

(assert (=> b!2013520 (= lt!756070 (not ((_ is Some!4628) lt!756074)))))

(declare-fun lt!756060 () List!22207)

(declare-fun maxPrefix!2023 (LexerInterface!3587 List!22209 List!22207) Option!4629)

(declare-fun ++!5969 (List!22207 List!22207) List!22207)

(assert (=> b!2013520 (= lt!756074 (maxPrefix!2023 thiss!23328 rules!3198 (++!5969 lt!756072 lt!756060)))))

(declare-fun printWithSeparatorTokenWhenNeededList!616 (LexerInterface!3587 List!22209 List!22208 Token!7500) List!22207)

(assert (=> b!2013520 (= lt!756060 (printWithSeparatorTokenWhenNeededList!616 thiss!23328 rules!3198 (t!188037 tokens!598) separatorToken!354))))

(assert (=> b!2013520 e!1272375))

(declare-fun res!883180 () Bool)

(assert (=> b!2013520 (=> (not res!883180) (not e!1272375))))

(declare-fun isDefined!3917 (Option!4630) Bool)

(assert (=> b!2013520 (= res!883180 (isDefined!3917 lt!756062))))

(declare-fun getRuleFromTag!789 (LexerInterface!3587 List!22209 String!25668) Option!4630)

(assert (=> b!2013520 (= lt!756062 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun lt!756073 () Unit!36708)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!789 (LexerInterface!3587 List!22209 List!22207 Token!7500) Unit!36708)

(assert (=> b!2013520 (= lt!756073 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!789 thiss!23328 rules!3198 lt!756072 (h!27527 tokens!598)))))

(assert (=> b!2013520 e!1272393))

(declare-fun res!883174 () Bool)

(assert (=> b!2013520 (=> (not res!883174) (not e!1272393))))

(declare-fun isDefined!3918 (Option!4629) Bool)

(assert (=> b!2013520 (= res!883174 (isDefined!3918 lt!756068))))

(assert (=> b!2013520 (= lt!756068 (maxPrefix!2023 thiss!23328 rules!3198 lt!756072))))

(declare-fun lt!756069 () BalanceConc!14604)

(declare-fun list!9015 (BalanceConc!14604) List!22207)

(assert (=> b!2013520 (= lt!756072 (list!9015 lt!756069))))

(assert (=> b!2013520 e!1272395))

(declare-fun res!883183 () Bool)

(assert (=> b!2013520 (=> (not res!883183) (not e!1272395))))

(assert (=> b!2013520 (= res!883183 (isDefined!3917 lt!756071))))

(assert (=> b!2013520 (= lt!756071 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 separatorToken!354))))))

(declare-fun lt!756061 () Unit!36708)

(assert (=> b!2013520 (= lt!756061 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!789 thiss!23328 rules!3198 lt!756056 separatorToken!354))))

(declare-fun charsOf!2514 (Token!7500) BalanceConc!14604)

(assert (=> b!2013520 (= lt!756056 (list!9015 (charsOf!2514 separatorToken!354)))))

(declare-fun lt!756078 () Unit!36708)

(declare-fun lemmaEqSameImage!660 (TokenValueInjection!7804 BalanceConc!14604 BalanceConc!14604) Unit!36708)

(assert (=> b!2013520 (= lt!756078 (lemmaEqSameImage!660 (transformation!3974 (rule!6201 (h!27527 tokens!598))) lt!756069 (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598)))))))

(declare-fun lt!756065 () Unit!36708)

(declare-fun lemmaSemiInverse!931 (TokenValueInjection!7804 BalanceConc!14604) Unit!36708)

(assert (=> b!2013520 (= lt!756065 (lemmaSemiInverse!931 (transformation!3974 (rule!6201 (h!27527 tokens!598))) lt!756069))))

(assert (=> b!2013520 (= lt!756069 (charsOf!2514 (h!27527 tokens!598)))))

(declare-fun b!2013521 () Bool)

(declare-fun tp!600404 () Bool)

(assert (=> b!2013521 (= e!1272396 (and (inv!21 (value!124850 (h!27527 tokens!598))) e!1272382 tp!600404))))

(declare-fun b!2013522 () Bool)

(declare-fun tp!600397 () Bool)

(assert (=> b!2013522 (= e!1272385 (and e!1272379 tp!600397))))

(declare-fun b!2013523 () Bool)

(declare-fun res!883170 () Bool)

(assert (=> b!2013523 (=> (not res!883170) (not e!1272383))))

(assert (=> b!2013523 (= res!883170 (rulesProduceIndividualToken!1759 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2013524 () Bool)

(declare-fun res!883178 () Bool)

(assert (=> b!2013524 (=> (not res!883178) (not e!1272383))))

(declare-fun isEmpty!13732 (List!22209) Bool)

(assert (=> b!2013524 (= res!883178 (not (isEmpty!13732 rules!3198)))))

(declare-fun b!2013525 () Bool)

(declare-fun Unit!36711 () Unit!36708)

(assert (=> b!2013525 (= e!1272390 Unit!36711)))

(declare-fun lt!756064 () C!10944)

(declare-fun lt!756058 () Unit!36708)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!300 (Regex!5399 List!22207 C!10944) Unit!36708)

(assert (=> b!2013525 (= lt!756058 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!300 (regex!3974 (rule!6201 separatorToken!354)) lt!756056 lt!756064))))

(declare-fun res!883173 () Bool)

(assert (=> b!2013525 (= res!883173 (not (matchR!2665 (regex!3974 (rule!6201 separatorToken!354)) lt!756056)))))

(assert (=> b!2013525 (=> (not res!883173) (not e!1272391))))

(assert (=> b!2013525 e!1272391))

(declare-fun b!2013526 () Bool)

(assert (=> b!2013526 (= e!1272392 e!1272381)))

(declare-fun res!883172 () Bool)

(assert (=> b!2013526 (=> res!883172 e!1272381)))

(declare-fun lt!756063 () List!22207)

(declare-fun lt!756076 () List!22207)

(assert (=> b!2013526 (= res!883172 (or (not (= lt!756063 lt!756076)) (not (= lt!756076 lt!756072)) (not (= lt!756063 lt!756072))))))

(declare-fun printList!1106 (LexerInterface!3587 List!22208) List!22207)

(assert (=> b!2013526 (= lt!756076 (printList!1106 thiss!23328 (Cons!22126 (h!27527 tokens!598) Nil!22126)))))

(declare-fun lt!756077 () BalanceConc!14604)

(assert (=> b!2013526 (= lt!756063 (list!9015 lt!756077))))

(declare-fun lt!756066 () BalanceConc!14606)

(declare-fun printTailRec!1055 (LexerInterface!3587 BalanceConc!14606 Int BalanceConc!14604) BalanceConc!14604)

(assert (=> b!2013526 (= lt!756077 (printTailRec!1055 thiss!23328 lt!756066 0 (BalanceConc!14605 Empty!7394)))))

(declare-fun print!1549 (LexerInterface!3587 BalanceConc!14606) BalanceConc!14604)

(assert (=> b!2013526 (= lt!756077 (print!1549 thiss!23328 lt!756066))))

(declare-fun singletonSeq!1950 (Token!7500) BalanceConc!14606)

(assert (=> b!2013526 (= lt!756066 (singletonSeq!1950 (h!27527 tokens!598)))))

(declare-fun contains!4060 (List!22207 C!10944) Bool)

(declare-fun usedCharacters!412 (Regex!5399) List!22207)

(assert (=> b!2013526 (not (contains!4060 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598)))) lt!756064))))

(declare-fun lt!756055 () Unit!36708)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!84 (LexerInterface!3587 List!22209 List!22209 Rule!7748 Rule!7748 C!10944) Unit!36708)

(assert (=> b!2013526 (= lt!756055 (lemmaNonSepRuleNotContainsCharContainedInASepRule!84 thiss!23328 rules!3198 rules!3198 (rule!6201 (h!27527 tokens!598)) (rule!6201 separatorToken!354) lt!756064))))

(declare-fun lt!756075 () Unit!36708)

(assert (=> b!2013526 (= lt!756075 e!1272390)))

(declare-fun c!325219 () Bool)

(assert (=> b!2013526 (= c!325219 (not (contains!4060 (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354))) lt!756064)))))

(declare-fun head!4552 (List!22207) C!10944)

(assert (=> b!2013526 (= lt!756064 (head!4552 lt!756056))))

(assert (=> b!2013526 (= (++!5969 (++!5969 lt!756072 lt!756056) lt!756060) (++!5969 lt!756072 (++!5969 lt!756056 lt!756060)))))

(declare-fun lt!756057 () Unit!36708)

(declare-fun lemmaConcatAssociativity!1237 (List!22207 List!22207 List!22207) Unit!36708)

(assert (=> b!2013526 (= lt!756057 (lemmaConcatAssociativity!1237 lt!756072 lt!756056 lt!756060))))

(assert (= (and start!197996 res!883187) b!2013524))

(assert (= (and b!2013524 res!883178) b!2013519))

(assert (= (and b!2013519 res!883171) b!2013511))

(assert (= (and b!2013511 res!883169) b!2013523))

(assert (= (and b!2013523 res!883170) b!2013497))

(assert (= (and b!2013497 res!883179) b!2013514))

(assert (= (and b!2013514 res!883182) b!2013503))

(assert (= (and b!2013503 res!883175) b!2013505))

(assert (= (and b!2013505 res!883176) b!2013520))

(assert (= (and b!2013520 res!883183) b!2013513))

(assert (= (and b!2013513 res!883181) b!2013499))

(assert (= (and b!2013520 res!883174) b!2013506))

(assert (= (and b!2013520 res!883180) b!2013512))

(assert (= (and b!2013512 res!883184) b!2013504))

(assert (= (and b!2013520 (not res!883185)) b!2013526))

(assert (= (and b!2013526 c!325219) b!2013525))

(assert (= (and b!2013526 (not c!325219)) b!2013510))

(assert (= (and b!2013525 res!883173) b!2013500))

(assert (= (and b!2013526 (not res!883172)) b!2013509))

(assert (= (and b!2013509 (not res!883186)) b!2013502))

(assert (= (and b!2013502 (not res!883177)) b!2013517))

(assert (= b!2013507 b!2013508))

(assert (= b!2013522 b!2013507))

(assert (= (and start!197996 ((_ is Cons!22127) rules!3198)) b!2013522))

(assert (= b!2013496 b!2013516))

(assert (= b!2013521 b!2013496))

(assert (= b!2013518 b!2013521))

(assert (= (and start!197996 ((_ is Cons!22126) tokens!598)) b!2013518))

(assert (= b!2013501 b!2013515))

(assert (= b!2013498 b!2013501))

(assert (= start!197996 b!2013498))

(declare-fun m!2446433 () Bool)

(assert (=> b!2013507 m!2446433))

(declare-fun m!2446435 () Bool)

(assert (=> b!2013507 m!2446435))

(declare-fun m!2446437 () Bool)

(assert (=> b!2013506 m!2446437))

(declare-fun m!2446439 () Bool)

(assert (=> b!2013523 m!2446439))

(declare-fun m!2446441 () Bool)

(assert (=> b!2013509 m!2446441))

(declare-fun m!2446443 () Bool)

(assert (=> start!197996 m!2446443))

(declare-fun m!2446445 () Bool)

(assert (=> b!2013525 m!2446445))

(declare-fun m!2446447 () Bool)

(assert (=> b!2013525 m!2446447))

(declare-fun m!2446449 () Bool)

(assert (=> b!2013518 m!2446449))

(declare-fun m!2446451 () Bool)

(assert (=> b!2013526 m!2446451))

(declare-fun m!2446453 () Bool)

(assert (=> b!2013526 m!2446453))

(declare-fun m!2446455 () Bool)

(assert (=> b!2013526 m!2446455))

(declare-fun m!2446457 () Bool)

(assert (=> b!2013526 m!2446457))

(assert (=> b!2013526 m!2446455))

(declare-fun m!2446459 () Bool)

(assert (=> b!2013526 m!2446459))

(declare-fun m!2446461 () Bool)

(assert (=> b!2013526 m!2446461))

(declare-fun m!2446463 () Bool)

(assert (=> b!2013526 m!2446463))

(declare-fun m!2446465 () Bool)

(assert (=> b!2013526 m!2446465))

(declare-fun m!2446467 () Bool)

(assert (=> b!2013526 m!2446467))

(assert (=> b!2013526 m!2446451))

(declare-fun m!2446469 () Bool)

(assert (=> b!2013526 m!2446469))

(declare-fun m!2446471 () Bool)

(assert (=> b!2013526 m!2446471))

(assert (=> b!2013526 m!2446463))

(declare-fun m!2446473 () Bool)

(assert (=> b!2013526 m!2446473))

(declare-fun m!2446475 () Bool)

(assert (=> b!2013526 m!2446475))

(declare-fun m!2446477 () Bool)

(assert (=> b!2013526 m!2446477))

(declare-fun m!2446479 () Bool)

(assert (=> b!2013526 m!2446479))

(assert (=> b!2013526 m!2446475))

(declare-fun m!2446481 () Bool)

(assert (=> b!2013526 m!2446481))

(declare-fun m!2446483 () Bool)

(assert (=> b!2013512 m!2446483))

(declare-fun m!2446485 () Bool)

(assert (=> b!2013512 m!2446485))

(declare-fun m!2446487 () Bool)

(assert (=> b!2013524 m!2446487))

(declare-fun m!2446489 () Bool)

(assert (=> b!2013503 m!2446489))

(declare-fun m!2446491 () Bool)

(assert (=> b!2013511 m!2446491))

(declare-fun m!2446493 () Bool)

(assert (=> b!2013496 m!2446493))

(declare-fun m!2446495 () Bool)

(assert (=> b!2013496 m!2446495))

(declare-fun m!2446497 () Bool)

(assert (=> b!2013517 m!2446497))

(declare-fun m!2446499 () Bool)

(assert (=> b!2013520 m!2446499))

(declare-fun m!2446501 () Bool)

(assert (=> b!2013520 m!2446501))

(declare-fun m!2446503 () Bool)

(assert (=> b!2013520 m!2446503))

(declare-fun m!2446505 () Bool)

(assert (=> b!2013520 m!2446505))

(declare-fun m!2446507 () Bool)

(assert (=> b!2013520 m!2446507))

(assert (=> b!2013520 m!2446501))

(declare-fun m!2446509 () Bool)

(assert (=> b!2013520 m!2446509))

(declare-fun m!2446511 () Bool)

(assert (=> b!2013520 m!2446511))

(declare-fun m!2446513 () Bool)

(assert (=> b!2013520 m!2446513))

(declare-fun m!2446515 () Bool)

(assert (=> b!2013520 m!2446515))

(declare-fun m!2446517 () Bool)

(assert (=> b!2013520 m!2446517))

(declare-fun m!2446519 () Bool)

(assert (=> b!2013520 m!2446519))

(declare-fun m!2446521 () Bool)

(assert (=> b!2013520 m!2446521))

(declare-fun m!2446523 () Bool)

(assert (=> b!2013520 m!2446523))

(declare-fun m!2446525 () Bool)

(assert (=> b!2013520 m!2446525))

(declare-fun m!2446527 () Bool)

(assert (=> b!2013520 m!2446527))

(assert (=> b!2013520 m!2446505))

(assert (=> b!2013520 m!2446511))

(declare-fun m!2446529 () Bool)

(assert (=> b!2013520 m!2446529))

(declare-fun m!2446531 () Bool)

(assert (=> b!2013520 m!2446531))

(declare-fun m!2446533 () Bool)

(assert (=> b!2013520 m!2446533))

(declare-fun m!2446535 () Bool)

(assert (=> b!2013502 m!2446535))

(assert (=> b!2013502 m!2446535))

(declare-fun m!2446537 () Bool)

(assert (=> b!2013502 m!2446537))

(declare-fun m!2446539 () Bool)

(assert (=> b!2013502 m!2446539))

(declare-fun m!2446541 () Bool)

(assert (=> b!2013513 m!2446541))

(declare-fun m!2446543 () Bool)

(assert (=> b!2013513 m!2446543))

(declare-fun m!2446545 () Bool)

(assert (=> b!2013498 m!2446545))

(declare-fun m!2446547 () Bool)

(assert (=> b!2013501 m!2446547))

(declare-fun m!2446549 () Bool)

(assert (=> b!2013501 m!2446549))

(declare-fun m!2446551 () Bool)

(assert (=> b!2013519 m!2446551))

(declare-fun m!2446553 () Bool)

(assert (=> b!2013521 m!2446553))

(declare-fun m!2446555 () Bool)

(assert (=> b!2013514 m!2446555))

(check-sat (not b_next!56943) (not b!2013509) (not b!2013526) b_and!159359 (not b!2013506) b_and!159363 (not b!2013501) (not b!2013502) (not b!2013514) (not b_next!56939) b_and!159361 (not b!2013517) (not b!2013525) (not b!2013496) b_and!159365 (not b!2013520) b_and!159367 (not b!2013498) (not b!2013513) (not b!2013518) (not b!2013512) (not b!2013522) (not start!197996) (not b_next!56937) (not b!2013511) (not b!2013524) (not b!2013521) (not b_next!56947) (not b_next!56945) (not b_next!56941) (not b!2013507) (not b!2013503) (not b!2013523) (not b!2013519) b_and!159357)
(check-sat (not b_next!56943) b_and!159365 b_and!159359 b_and!159367 (not b_next!56937) b_and!159363 (not b_next!56947) b_and!159357 (not b_next!56939) b_and!159361 (not b_next!56945) (not b_next!56941))
(get-model)

(declare-fun d!614624 () Bool)

(assert (=> d!614624 (= (get!7007 lt!756068) (v!26885 lt!756068))))

(assert (=> b!2013506 d!614624))

(declare-fun d!614626 () Bool)

(declare-fun res!883217 () Bool)

(declare-fun e!1272411 () Bool)

(assert (=> d!614626 (=> (not res!883217) (not e!1272411))))

(declare-fun isEmpty!13735 (List!22207) Bool)

(assert (=> d!614626 (= res!883217 (not (isEmpty!13735 (originalCharacters!4781 separatorToken!354))))))

(assert (=> d!614626 (= (inv!29291 separatorToken!354) e!1272411)))

(declare-fun b!2013546 () Bool)

(declare-fun res!883218 () Bool)

(assert (=> b!2013546 (=> (not res!883218) (not e!1272411))))

(declare-fun dynLambda!10920 (Int TokenValue!4110) BalanceConc!14604)

(assert (=> b!2013546 (= res!883218 (= (originalCharacters!4781 separatorToken!354) (list!9015 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (value!124850 separatorToken!354)))))))

(declare-fun b!2013547 () Bool)

(declare-fun size!17285 (List!22207) Int)

(assert (=> b!2013547 (= e!1272411 (= (size!17282 separatorToken!354) (size!17285 (originalCharacters!4781 separatorToken!354))))))

(assert (= (and d!614626 res!883217) b!2013546))

(assert (= (and b!2013546 res!883218) b!2013547))

(declare-fun b_lambda!67349 () Bool)

(assert (=> (not b_lambda!67349) (not b!2013546)))

(declare-fun t!188041 () Bool)

(declare-fun tb!125945 () Bool)

(assert (=> (and b!2013508 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354)))) t!188041) tb!125945))

(declare-fun b!2013567 () Bool)

(declare-fun e!1272423 () Bool)

(declare-fun tp!600411 () Bool)

(declare-fun inv!29292 (Conc!7394) Bool)

(assert (=> b!2013567 (= e!1272423 (and (inv!29292 (c!325221 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (value!124850 separatorToken!354)))) tp!600411))))

(declare-fun result!150912 () Bool)

(declare-fun inv!29293 (BalanceConc!14604) Bool)

(assert (=> tb!125945 (= result!150912 (and (inv!29293 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (value!124850 separatorToken!354))) e!1272423))))

(assert (= tb!125945 b!2013567))

(declare-fun m!2446583 () Bool)

(assert (=> b!2013567 m!2446583))

(declare-fun m!2446585 () Bool)

(assert (=> tb!125945 m!2446585))

(assert (=> b!2013546 t!188041))

(declare-fun b_and!159369 () Bool)

(assert (= b_and!159359 (and (=> t!188041 result!150912) b_and!159369)))

(declare-fun t!188043 () Bool)

(declare-fun tb!125947 () Bool)

(assert (=> (and b!2013516 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354)))) t!188043) tb!125947))

(declare-fun result!150916 () Bool)

(assert (= result!150916 result!150912))

(assert (=> b!2013546 t!188043))

(declare-fun b_and!159371 () Bool)

(assert (= b_and!159363 (and (=> t!188043 result!150916) b_and!159371)))

(declare-fun t!188045 () Bool)

(declare-fun tb!125949 () Bool)

(assert (=> (and b!2013515 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354)))) t!188045) tb!125949))

(declare-fun result!150918 () Bool)

(assert (= result!150918 result!150912))

(assert (=> b!2013546 t!188045))

(declare-fun b_and!159373 () Bool)

(assert (= b_and!159367 (and (=> t!188045 result!150918) b_and!159373)))

(declare-fun m!2446587 () Bool)

(assert (=> d!614626 m!2446587))

(declare-fun m!2446589 () Bool)

(assert (=> b!2013546 m!2446589))

(assert (=> b!2013546 m!2446589))

(declare-fun m!2446591 () Bool)

(assert (=> b!2013546 m!2446591))

(declare-fun m!2446593 () Bool)

(assert (=> b!2013547 m!2446593))

(assert (=> start!197996 d!614626))

(declare-fun b!2013578 () Bool)

(declare-fun res!883227 () Bool)

(declare-fun e!1272428 () Bool)

(assert (=> b!2013578 (=> (not res!883227) (not e!1272428))))

(declare-fun lt!756087 () List!22207)

(assert (=> b!2013578 (= res!883227 (= (size!17285 lt!756087) (+ (size!17285 lt!756072) (size!17285 (++!5969 lt!756056 lt!756060)))))))

(declare-fun b!2013577 () Bool)

(declare-fun e!1272429 () List!22207)

(assert (=> b!2013577 (= e!1272429 (Cons!22125 (h!27526 lt!756072) (++!5969 (t!188036 lt!756072) (++!5969 lt!756056 lt!756060))))))

(declare-fun b!2013579 () Bool)

(assert (=> b!2013579 (= e!1272428 (or (not (= (++!5969 lt!756056 lt!756060) Nil!22125)) (= lt!756087 lt!756072)))))

(declare-fun b!2013576 () Bool)

(assert (=> b!2013576 (= e!1272429 (++!5969 lt!756056 lt!756060))))

(declare-fun d!614632 () Bool)

(assert (=> d!614632 e!1272428))

(declare-fun res!883226 () Bool)

(assert (=> d!614632 (=> (not res!883226) (not e!1272428))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3248 (List!22207) (InoxSet C!10944))

(assert (=> d!614632 (= res!883226 (= (content!3248 lt!756087) ((_ map or) (content!3248 lt!756072) (content!3248 (++!5969 lt!756056 lt!756060)))))))

(assert (=> d!614632 (= lt!756087 e!1272429)))

(declare-fun c!325231 () Bool)

(assert (=> d!614632 (= c!325231 ((_ is Nil!22125) lt!756072))))

(assert (=> d!614632 (= (++!5969 lt!756072 (++!5969 lt!756056 lt!756060)) lt!756087)))

(assert (= (and d!614632 c!325231) b!2013576))

(assert (= (and d!614632 (not c!325231)) b!2013577))

(assert (= (and d!614632 res!883226) b!2013578))

(assert (= (and b!2013578 res!883227) b!2013579))

(declare-fun m!2446595 () Bool)

(assert (=> b!2013578 m!2446595))

(declare-fun m!2446597 () Bool)

(assert (=> b!2013578 m!2446597))

(assert (=> b!2013578 m!2446475))

(declare-fun m!2446599 () Bool)

(assert (=> b!2013578 m!2446599))

(assert (=> b!2013577 m!2446475))

(declare-fun m!2446601 () Bool)

(assert (=> b!2013577 m!2446601))

(declare-fun m!2446603 () Bool)

(assert (=> d!614632 m!2446603))

(declare-fun m!2446605 () Bool)

(assert (=> d!614632 m!2446605))

(assert (=> d!614632 m!2446475))

(declare-fun m!2446607 () Bool)

(assert (=> d!614632 m!2446607))

(assert (=> b!2013526 d!614632))

(declare-fun d!614634 () Bool)

(declare-fun lt!756090 () Bool)

(assert (=> d!614634 (= lt!756090 (select (content!3248 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598))))) lt!756064))))

(declare-fun e!1272434 () Bool)

(assert (=> d!614634 (= lt!756090 e!1272434)))

(declare-fun res!883232 () Bool)

(assert (=> d!614634 (=> (not res!883232) (not e!1272434))))

(assert (=> d!614634 (= res!883232 ((_ is Cons!22125) (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598))))))))

(assert (=> d!614634 (= (contains!4060 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598)))) lt!756064) lt!756090)))

(declare-fun b!2013584 () Bool)

(declare-fun e!1272435 () Bool)

(assert (=> b!2013584 (= e!1272434 e!1272435)))

(declare-fun res!883233 () Bool)

(assert (=> b!2013584 (=> res!883233 e!1272435)))

(assert (=> b!2013584 (= res!883233 (= (h!27526 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598))))) lt!756064))))

(declare-fun b!2013585 () Bool)

(assert (=> b!2013585 (= e!1272435 (contains!4060 (t!188036 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598))))) lt!756064))))

(assert (= (and d!614634 res!883232) b!2013584))

(assert (= (and b!2013584 (not res!883233)) b!2013585))

(assert (=> d!614634 m!2446455))

(declare-fun m!2446609 () Bool)

(assert (=> d!614634 m!2446609))

(declare-fun m!2446611 () Bool)

(assert (=> d!614634 m!2446611))

(declare-fun m!2446613 () Bool)

(assert (=> b!2013585 m!2446613))

(assert (=> b!2013526 d!614634))

(declare-fun d!614636 () Bool)

(declare-fun list!9018 (Conc!7394) List!22207)

(assert (=> d!614636 (= (list!9015 lt!756077) (list!9018 (c!325221 lt!756077)))))

(declare-fun bs!419871 () Bool)

(assert (= bs!419871 d!614636))

(declare-fun m!2446615 () Bool)

(assert (=> bs!419871 m!2446615))

(assert (=> b!2013526 d!614636))

(declare-fun d!614638 () Bool)

(assert (=> d!614638 (= (++!5969 (++!5969 lt!756072 lt!756056) lt!756060) (++!5969 lt!756072 (++!5969 lt!756056 lt!756060)))))

(declare-fun lt!756093 () Unit!36708)

(declare-fun choose!12266 (List!22207 List!22207 List!22207) Unit!36708)

(assert (=> d!614638 (= lt!756093 (choose!12266 lt!756072 lt!756056 lt!756060))))

(assert (=> d!614638 (= (lemmaConcatAssociativity!1237 lt!756072 lt!756056 lt!756060) lt!756093)))

(declare-fun bs!419872 () Bool)

(assert (= bs!419872 d!614638))

(declare-fun m!2446617 () Bool)

(assert (=> bs!419872 m!2446617))

(assert (=> bs!419872 m!2446451))

(assert (=> bs!419872 m!2446451))

(assert (=> bs!419872 m!2446453))

(assert (=> bs!419872 m!2446475))

(assert (=> bs!419872 m!2446475))

(assert (=> bs!419872 m!2446481))

(assert (=> b!2013526 d!614638))

(declare-fun c!325241 () Bool)

(declare-fun call!123163 () List!22207)

(declare-fun call!123166 () List!22207)

(declare-fun call!123165 () List!22207)

(declare-fun bm!123158 () Bool)

(assert (=> bm!123158 (= call!123165 (++!5969 (ite c!325241 call!123166 call!123163) (ite c!325241 call!123163 call!123166)))))

(declare-fun d!614640 () Bool)

(declare-fun c!325242 () Bool)

(assert (=> d!614640 (= c!325242 (or ((_ is EmptyExpr!5399) (regex!3974 (rule!6201 separatorToken!354))) ((_ is EmptyLang!5399) (regex!3974 (rule!6201 separatorToken!354)))))))

(declare-fun e!1272445 () List!22207)

(assert (=> d!614640 (= (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354))) e!1272445)))

(declare-fun bm!123159 () Bool)

(declare-fun call!123164 () List!22207)

(assert (=> bm!123159 (= call!123163 call!123164)))

(declare-fun bm!123160 () Bool)

(assert (=> bm!123160 (= call!123166 (usedCharacters!412 (ite c!325241 (regOne!11311 (regex!3974 (rule!6201 separatorToken!354))) (regTwo!11310 (regex!3974 (rule!6201 separatorToken!354))))))))

(declare-fun b!2013602 () Bool)

(declare-fun c!325240 () Bool)

(assert (=> b!2013602 (= c!325240 ((_ is Star!5399) (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun e!1272446 () List!22207)

(declare-fun e!1272447 () List!22207)

(assert (=> b!2013602 (= e!1272446 e!1272447)))

(declare-fun b!2013603 () Bool)

(declare-fun e!1272444 () List!22207)

(assert (=> b!2013603 (= e!1272444 call!123165)))

(declare-fun b!2013604 () Bool)

(assert (=> b!2013604 (= e!1272445 e!1272446)))

(declare-fun c!325243 () Bool)

(assert (=> b!2013604 (= c!325243 ((_ is ElementMatch!5399) (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun b!2013605 () Bool)

(assert (=> b!2013605 (= e!1272447 e!1272444)))

(assert (=> b!2013605 (= c!325241 ((_ is Union!5399) (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun b!2013606 () Bool)

(assert (=> b!2013606 (= e!1272444 call!123165)))

(declare-fun bm!123161 () Bool)

(assert (=> bm!123161 (= call!123164 (usedCharacters!412 (ite c!325240 (reg!5728 (regex!3974 (rule!6201 separatorToken!354))) (ite c!325241 (regTwo!11311 (regex!3974 (rule!6201 separatorToken!354))) (regOne!11310 (regex!3974 (rule!6201 separatorToken!354)))))))))

(declare-fun b!2013607 () Bool)

(assert (=> b!2013607 (= e!1272445 Nil!22125)))

(declare-fun b!2013608 () Bool)

(assert (=> b!2013608 (= e!1272447 call!123164)))

(declare-fun b!2013609 () Bool)

(assert (=> b!2013609 (= e!1272446 (Cons!22125 (c!325220 (regex!3974 (rule!6201 separatorToken!354))) Nil!22125))))

(assert (= (and d!614640 c!325242) b!2013607))

(assert (= (and d!614640 (not c!325242)) b!2013604))

(assert (= (and b!2013604 c!325243) b!2013609))

(assert (= (and b!2013604 (not c!325243)) b!2013602))

(assert (= (and b!2013602 c!325240) b!2013608))

(assert (= (and b!2013602 (not c!325240)) b!2013605))

(assert (= (and b!2013605 c!325241) b!2013603))

(assert (= (and b!2013605 (not c!325241)) b!2013606))

(assert (= (or b!2013603 b!2013606) bm!123160))

(assert (= (or b!2013603 b!2013606) bm!123159))

(assert (= (or b!2013603 b!2013606) bm!123158))

(assert (= (or b!2013608 bm!123159) bm!123161))

(declare-fun m!2446619 () Bool)

(assert (=> bm!123158 m!2446619))

(declare-fun m!2446621 () Bool)

(assert (=> bm!123160 m!2446621))

(declare-fun m!2446623 () Bool)

(assert (=> bm!123161 m!2446623))

(assert (=> b!2013526 d!614640))

(declare-fun b!2013612 () Bool)

(declare-fun res!883235 () Bool)

(declare-fun e!1272448 () Bool)

(assert (=> b!2013612 (=> (not res!883235) (not e!1272448))))

(declare-fun lt!756094 () List!22207)

(assert (=> b!2013612 (= res!883235 (= (size!17285 lt!756094) (+ (size!17285 (++!5969 lt!756072 lt!756056)) (size!17285 lt!756060))))))

(declare-fun b!2013611 () Bool)

(declare-fun e!1272449 () List!22207)

(assert (=> b!2013611 (= e!1272449 (Cons!22125 (h!27526 (++!5969 lt!756072 lt!756056)) (++!5969 (t!188036 (++!5969 lt!756072 lt!756056)) lt!756060)))))

(declare-fun b!2013613 () Bool)

(assert (=> b!2013613 (= e!1272448 (or (not (= lt!756060 Nil!22125)) (= lt!756094 (++!5969 lt!756072 lt!756056))))))

(declare-fun b!2013610 () Bool)

(assert (=> b!2013610 (= e!1272449 lt!756060)))

(declare-fun d!614642 () Bool)

(assert (=> d!614642 e!1272448))

(declare-fun res!883234 () Bool)

(assert (=> d!614642 (=> (not res!883234) (not e!1272448))))

(assert (=> d!614642 (= res!883234 (= (content!3248 lt!756094) ((_ map or) (content!3248 (++!5969 lt!756072 lt!756056)) (content!3248 lt!756060))))))

(assert (=> d!614642 (= lt!756094 e!1272449)))

(declare-fun c!325244 () Bool)

(assert (=> d!614642 (= c!325244 ((_ is Nil!22125) (++!5969 lt!756072 lt!756056)))))

(assert (=> d!614642 (= (++!5969 (++!5969 lt!756072 lt!756056) lt!756060) lt!756094)))

(assert (= (and d!614642 c!325244) b!2013610))

(assert (= (and d!614642 (not c!325244)) b!2013611))

(assert (= (and d!614642 res!883234) b!2013612))

(assert (= (and b!2013612 res!883235) b!2013613))

(declare-fun m!2446625 () Bool)

(assert (=> b!2013612 m!2446625))

(assert (=> b!2013612 m!2446451))

(declare-fun m!2446627 () Bool)

(assert (=> b!2013612 m!2446627))

(declare-fun m!2446629 () Bool)

(assert (=> b!2013612 m!2446629))

(declare-fun m!2446631 () Bool)

(assert (=> b!2013611 m!2446631))

(declare-fun m!2446633 () Bool)

(assert (=> d!614642 m!2446633))

(assert (=> d!614642 m!2446451))

(declare-fun m!2446635 () Bool)

(assert (=> d!614642 m!2446635))

(declare-fun m!2446637 () Bool)

(assert (=> d!614642 m!2446637))

(assert (=> b!2013526 d!614642))

(declare-fun b!2013616 () Bool)

(declare-fun res!883237 () Bool)

(declare-fun e!1272450 () Bool)

(assert (=> b!2013616 (=> (not res!883237) (not e!1272450))))

(declare-fun lt!756095 () List!22207)

(assert (=> b!2013616 (= res!883237 (= (size!17285 lt!756095) (+ (size!17285 lt!756056) (size!17285 lt!756060))))))

(declare-fun b!2013615 () Bool)

(declare-fun e!1272451 () List!22207)

(assert (=> b!2013615 (= e!1272451 (Cons!22125 (h!27526 lt!756056) (++!5969 (t!188036 lt!756056) lt!756060)))))

(declare-fun b!2013617 () Bool)

(assert (=> b!2013617 (= e!1272450 (or (not (= lt!756060 Nil!22125)) (= lt!756095 lt!756056)))))

(declare-fun b!2013614 () Bool)

(assert (=> b!2013614 (= e!1272451 lt!756060)))

(declare-fun d!614644 () Bool)

(assert (=> d!614644 e!1272450))

(declare-fun res!883236 () Bool)

(assert (=> d!614644 (=> (not res!883236) (not e!1272450))))

(assert (=> d!614644 (= res!883236 (= (content!3248 lt!756095) ((_ map or) (content!3248 lt!756056) (content!3248 lt!756060))))))

(assert (=> d!614644 (= lt!756095 e!1272451)))

(declare-fun c!325245 () Bool)

(assert (=> d!614644 (= c!325245 ((_ is Nil!22125) lt!756056))))

(assert (=> d!614644 (= (++!5969 lt!756056 lt!756060) lt!756095)))

(assert (= (and d!614644 c!325245) b!2013614))

(assert (= (and d!614644 (not c!325245)) b!2013615))

(assert (= (and d!614644 res!883236) b!2013616))

(assert (= (and b!2013616 res!883237) b!2013617))

(declare-fun m!2446639 () Bool)

(assert (=> b!2013616 m!2446639))

(declare-fun m!2446641 () Bool)

(assert (=> b!2013616 m!2446641))

(assert (=> b!2013616 m!2446629))

(declare-fun m!2446643 () Bool)

(assert (=> b!2013615 m!2446643))

(declare-fun m!2446645 () Bool)

(assert (=> d!614644 m!2446645))

(declare-fun m!2446647 () Bool)

(assert (=> d!614644 m!2446647))

(assert (=> d!614644 m!2446637))

(assert (=> b!2013526 d!614644))

(declare-fun d!614646 () Bool)

(declare-fun lt!756098 () BalanceConc!14604)

(declare-fun list!9019 (BalanceConc!14606) List!22208)

(assert (=> d!614646 (= (list!9015 lt!756098) (printList!1106 thiss!23328 (list!9019 lt!756066)))))

(assert (=> d!614646 (= lt!756098 (printTailRec!1055 thiss!23328 lt!756066 0 (BalanceConc!14605 Empty!7394)))))

(assert (=> d!614646 (= (print!1549 thiss!23328 lt!756066) lt!756098)))

(declare-fun bs!419873 () Bool)

(assert (= bs!419873 d!614646))

(declare-fun m!2446649 () Bool)

(assert (=> bs!419873 m!2446649))

(declare-fun m!2446651 () Bool)

(assert (=> bs!419873 m!2446651))

(assert (=> bs!419873 m!2446651))

(declare-fun m!2446653 () Bool)

(assert (=> bs!419873 m!2446653))

(assert (=> bs!419873 m!2446469))

(assert (=> b!2013526 d!614646))

(declare-fun d!614648 () Bool)

(declare-fun e!1272458 () Bool)

(assert (=> d!614648 e!1272458))

(declare-fun res!883244 () Bool)

(assert (=> d!614648 (=> (not res!883244) (not e!1272458))))

(declare-fun lt!756103 () BalanceConc!14606)

(assert (=> d!614648 (= res!883244 (= (list!9019 lt!756103) (Cons!22126 (h!27527 tokens!598) Nil!22126)))))

(declare-fun singleton!870 (Token!7500) BalanceConc!14606)

(assert (=> d!614648 (= lt!756103 (singleton!870 (h!27527 tokens!598)))))

(assert (=> d!614648 (= (singletonSeq!1950 (h!27527 tokens!598)) lt!756103)))

(declare-fun b!2013624 () Bool)

(declare-fun isBalanced!2299 (Conc!7395) Bool)

(assert (=> b!2013624 (= e!1272458 (isBalanced!2299 (c!325222 lt!756103)))))

(assert (= (and d!614648 res!883244) b!2013624))

(declare-fun m!2446655 () Bool)

(assert (=> d!614648 m!2446655))

(declare-fun m!2446657 () Bool)

(assert (=> d!614648 m!2446657))

(declare-fun m!2446659 () Bool)

(assert (=> b!2013624 m!2446659))

(assert (=> b!2013526 d!614648))

(declare-fun d!614650 () Bool)

(assert (=> d!614650 (not (contains!4060 (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598)))) lt!756064))))

(declare-fun lt!756106 () Unit!36708)

(declare-fun choose!12268 (LexerInterface!3587 List!22209 List!22209 Rule!7748 Rule!7748 C!10944) Unit!36708)

(assert (=> d!614650 (= lt!756106 (choose!12268 thiss!23328 rules!3198 rules!3198 (rule!6201 (h!27527 tokens!598)) (rule!6201 separatorToken!354) lt!756064))))

(assert (=> d!614650 (rulesInvariant!3194 thiss!23328 rules!3198)))

(assert (=> d!614650 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!84 thiss!23328 rules!3198 rules!3198 (rule!6201 (h!27527 tokens!598)) (rule!6201 separatorToken!354) lt!756064) lt!756106)))

(declare-fun bs!419874 () Bool)

(assert (= bs!419874 d!614650))

(assert (=> bs!419874 m!2446455))

(assert (=> bs!419874 m!2446455))

(assert (=> bs!419874 m!2446457))

(declare-fun m!2446661 () Bool)

(assert (=> bs!419874 m!2446661))

(assert (=> bs!419874 m!2446551))

(assert (=> b!2013526 d!614650))

(declare-fun d!614652 () Bool)

(declare-fun lt!756107 () Bool)

(assert (=> d!614652 (= lt!756107 (select (content!3248 (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354)))) lt!756064))))

(declare-fun e!1272459 () Bool)

(assert (=> d!614652 (= lt!756107 e!1272459)))

(declare-fun res!883245 () Bool)

(assert (=> d!614652 (=> (not res!883245) (not e!1272459))))

(assert (=> d!614652 (= res!883245 ((_ is Cons!22125) (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354)))))))

(assert (=> d!614652 (= (contains!4060 (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354))) lt!756064) lt!756107)))

(declare-fun b!2013625 () Bool)

(declare-fun e!1272460 () Bool)

(assert (=> b!2013625 (= e!1272459 e!1272460)))

(declare-fun res!883246 () Bool)

(assert (=> b!2013625 (=> res!883246 e!1272460)))

(assert (=> b!2013625 (= res!883246 (= (h!27526 (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354)))) lt!756064))))

(declare-fun b!2013626 () Bool)

(assert (=> b!2013626 (= e!1272460 (contains!4060 (t!188036 (usedCharacters!412 (regex!3974 (rule!6201 separatorToken!354)))) lt!756064))))

(assert (= (and d!614652 res!883245) b!2013625))

(assert (= (and b!2013625 (not res!883246)) b!2013626))

(assert (=> d!614652 m!2446463))

(declare-fun m!2446663 () Bool)

(assert (=> d!614652 m!2446663))

(declare-fun m!2446665 () Bool)

(assert (=> d!614652 m!2446665))

(declare-fun m!2446667 () Bool)

(assert (=> b!2013626 m!2446667))

(assert (=> b!2013526 d!614652))

(declare-fun b!2013629 () Bool)

(declare-fun res!883248 () Bool)

(declare-fun e!1272461 () Bool)

(assert (=> b!2013629 (=> (not res!883248) (not e!1272461))))

(declare-fun lt!756108 () List!22207)

(assert (=> b!2013629 (= res!883248 (= (size!17285 lt!756108) (+ (size!17285 lt!756072) (size!17285 lt!756056))))))

(declare-fun b!2013628 () Bool)

(declare-fun e!1272462 () List!22207)

(assert (=> b!2013628 (= e!1272462 (Cons!22125 (h!27526 lt!756072) (++!5969 (t!188036 lt!756072) lt!756056)))))

(declare-fun b!2013630 () Bool)

(assert (=> b!2013630 (= e!1272461 (or (not (= lt!756056 Nil!22125)) (= lt!756108 lt!756072)))))

(declare-fun b!2013627 () Bool)

(assert (=> b!2013627 (= e!1272462 lt!756056)))

(declare-fun d!614654 () Bool)

(assert (=> d!614654 e!1272461))

(declare-fun res!883247 () Bool)

(assert (=> d!614654 (=> (not res!883247) (not e!1272461))))

(assert (=> d!614654 (= res!883247 (= (content!3248 lt!756108) ((_ map or) (content!3248 lt!756072) (content!3248 lt!756056))))))

(assert (=> d!614654 (= lt!756108 e!1272462)))

(declare-fun c!325247 () Bool)

(assert (=> d!614654 (= c!325247 ((_ is Nil!22125) lt!756072))))

(assert (=> d!614654 (= (++!5969 lt!756072 lt!756056) lt!756108)))

(assert (= (and d!614654 c!325247) b!2013627))

(assert (= (and d!614654 (not c!325247)) b!2013628))

(assert (= (and d!614654 res!883247) b!2013629))

(assert (= (and b!2013629 res!883248) b!2013630))

(declare-fun m!2446669 () Bool)

(assert (=> b!2013629 m!2446669))

(assert (=> b!2013629 m!2446597))

(assert (=> b!2013629 m!2446641))

(declare-fun m!2446671 () Bool)

(assert (=> b!2013628 m!2446671))

(declare-fun m!2446673 () Bool)

(assert (=> d!614654 m!2446673))

(assert (=> d!614654 m!2446605))

(assert (=> d!614654 m!2446647))

(assert (=> b!2013526 d!614654))

(declare-fun d!614656 () Bool)

(assert (=> d!614656 (= (head!4552 lt!756056) (h!27526 lt!756056))))

(assert (=> b!2013526 d!614656))

(declare-fun d!614658 () Bool)

(declare-fun c!325250 () Bool)

(assert (=> d!614658 (= c!325250 ((_ is Cons!22126) (Cons!22126 (h!27527 tokens!598) Nil!22126)))))

(declare-fun e!1272465 () List!22207)

(assert (=> d!614658 (= (printList!1106 thiss!23328 (Cons!22126 (h!27527 tokens!598) Nil!22126)) e!1272465)))

(declare-fun b!2013635 () Bool)

(assert (=> b!2013635 (= e!1272465 (++!5969 (list!9015 (charsOf!2514 (h!27527 (Cons!22126 (h!27527 tokens!598) Nil!22126)))) (printList!1106 thiss!23328 (t!188037 (Cons!22126 (h!27527 tokens!598) Nil!22126)))))))

(declare-fun b!2013636 () Bool)

(assert (=> b!2013636 (= e!1272465 Nil!22125)))

(assert (= (and d!614658 c!325250) b!2013635))

(assert (= (and d!614658 (not c!325250)) b!2013636))

(declare-fun m!2446675 () Bool)

(assert (=> b!2013635 m!2446675))

(assert (=> b!2013635 m!2446675))

(declare-fun m!2446677 () Bool)

(assert (=> b!2013635 m!2446677))

(declare-fun m!2446679 () Bool)

(assert (=> b!2013635 m!2446679))

(assert (=> b!2013635 m!2446677))

(assert (=> b!2013635 m!2446679))

(declare-fun m!2446681 () Bool)

(assert (=> b!2013635 m!2446681))

(assert (=> b!2013526 d!614658))

(declare-fun d!614660 () Bool)

(declare-fun lt!756129 () BalanceConc!14604)

(declare-fun printListTailRec!475 (LexerInterface!3587 List!22208 List!22207) List!22207)

(declare-fun dropList!806 (BalanceConc!14606 Int) List!22208)

(assert (=> d!614660 (= (list!9015 lt!756129) (printListTailRec!475 thiss!23328 (dropList!806 lt!756066 0) (list!9015 (BalanceConc!14605 Empty!7394))))))

(declare-fun e!1272471 () BalanceConc!14604)

(assert (=> d!614660 (= lt!756129 e!1272471)))

(declare-fun c!325253 () Bool)

(declare-fun size!17286 (BalanceConc!14606) Int)

(assert (=> d!614660 (= c!325253 (>= 0 (size!17286 lt!756066)))))

(declare-fun e!1272470 () Bool)

(assert (=> d!614660 e!1272470))

(declare-fun res!883251 () Bool)

(assert (=> d!614660 (=> (not res!883251) (not e!1272470))))

(assert (=> d!614660 (= res!883251 (>= 0 0))))

(assert (=> d!614660 (= (printTailRec!1055 thiss!23328 lt!756066 0 (BalanceConc!14605 Empty!7394)) lt!756129)))

(declare-fun b!2013643 () Bool)

(assert (=> b!2013643 (= e!1272470 (<= 0 (size!17286 lt!756066)))))

(declare-fun b!2013644 () Bool)

(assert (=> b!2013644 (= e!1272471 (BalanceConc!14605 Empty!7394))))

(declare-fun b!2013645 () Bool)

(declare-fun ++!5971 (BalanceConc!14604 BalanceConc!14604) BalanceConc!14604)

(declare-fun apply!5803 (BalanceConc!14606 Int) Token!7500)

(assert (=> b!2013645 (= e!1272471 (printTailRec!1055 thiss!23328 lt!756066 (+ 0 1) (++!5971 (BalanceConc!14605 Empty!7394) (charsOf!2514 (apply!5803 lt!756066 0)))))))

(declare-fun lt!756124 () List!22208)

(assert (=> b!2013645 (= lt!756124 (list!9019 lt!756066))))

(declare-fun lt!756123 () Unit!36708)

(declare-fun lemmaDropApply!730 (List!22208 Int) Unit!36708)

(assert (=> b!2013645 (= lt!756123 (lemmaDropApply!730 lt!756124 0))))

(declare-fun head!4554 (List!22208) Token!7500)

(declare-fun drop!1105 (List!22208 Int) List!22208)

(declare-fun apply!5804 (List!22208 Int) Token!7500)

(assert (=> b!2013645 (= (head!4554 (drop!1105 lt!756124 0)) (apply!5804 lt!756124 0))))

(declare-fun lt!756127 () Unit!36708)

(assert (=> b!2013645 (= lt!756127 lt!756123)))

(declare-fun lt!756125 () List!22208)

(assert (=> b!2013645 (= lt!756125 (list!9019 lt!756066))))

(declare-fun lt!756128 () Unit!36708)

(declare-fun lemmaDropTail!706 (List!22208 Int) Unit!36708)

(assert (=> b!2013645 (= lt!756128 (lemmaDropTail!706 lt!756125 0))))

(declare-fun tail!3033 (List!22208) List!22208)

(assert (=> b!2013645 (= (tail!3033 (drop!1105 lt!756125 0)) (drop!1105 lt!756125 (+ 0 1)))))

(declare-fun lt!756126 () Unit!36708)

(assert (=> b!2013645 (= lt!756126 lt!756128)))

(assert (= (and d!614660 res!883251) b!2013643))

(assert (= (and d!614660 c!325253) b!2013644))

(assert (= (and d!614660 (not c!325253)) b!2013645))

(declare-fun m!2446683 () Bool)

(assert (=> d!614660 m!2446683))

(declare-fun m!2446685 () Bool)

(assert (=> d!614660 m!2446685))

(declare-fun m!2446687 () Bool)

(assert (=> d!614660 m!2446687))

(declare-fun m!2446689 () Bool)

(assert (=> d!614660 m!2446689))

(assert (=> d!614660 m!2446687))

(declare-fun m!2446691 () Bool)

(assert (=> d!614660 m!2446691))

(assert (=> d!614660 m!2446685))

(assert (=> b!2013643 m!2446691))

(declare-fun m!2446693 () Bool)

(assert (=> b!2013645 m!2446693))

(declare-fun m!2446695 () Bool)

(assert (=> b!2013645 m!2446695))

(declare-fun m!2446697 () Bool)

(assert (=> b!2013645 m!2446697))

(declare-fun m!2446699 () Bool)

(assert (=> b!2013645 m!2446699))

(declare-fun m!2446701 () Bool)

(assert (=> b!2013645 m!2446701))

(declare-fun m!2446703 () Bool)

(assert (=> b!2013645 m!2446703))

(declare-fun m!2446705 () Bool)

(assert (=> b!2013645 m!2446705))

(assert (=> b!2013645 m!2446651))

(declare-fun m!2446707 () Bool)

(assert (=> b!2013645 m!2446707))

(declare-fun m!2446709 () Bool)

(assert (=> b!2013645 m!2446709))

(declare-fun m!2446711 () Bool)

(assert (=> b!2013645 m!2446711))

(assert (=> b!2013645 m!2446697))

(declare-fun m!2446713 () Bool)

(assert (=> b!2013645 m!2446713))

(assert (=> b!2013645 m!2446707))

(assert (=> b!2013645 m!2446709))

(assert (=> b!2013645 m!2446693))

(assert (=> b!2013645 m!2446703))

(declare-fun m!2446715 () Bool)

(assert (=> b!2013645 m!2446715))

(assert (=> b!2013526 d!614660))

(declare-fun call!123167 () List!22207)

(declare-fun c!325255 () Bool)

(declare-fun call!123169 () List!22207)

(declare-fun bm!123162 () Bool)

(declare-fun call!123170 () List!22207)

(assert (=> bm!123162 (= call!123169 (++!5969 (ite c!325255 call!123170 call!123167) (ite c!325255 call!123167 call!123170)))))

(declare-fun d!614662 () Bool)

(declare-fun c!325256 () Bool)

(assert (=> d!614662 (= c!325256 (or ((_ is EmptyExpr!5399) (regex!3974 (rule!6201 (h!27527 tokens!598)))) ((_ is EmptyLang!5399) (regex!3974 (rule!6201 (h!27527 tokens!598))))))))

(declare-fun e!1272473 () List!22207)

(assert (=> d!614662 (= (usedCharacters!412 (regex!3974 (rule!6201 (h!27527 tokens!598)))) e!1272473)))

(declare-fun bm!123163 () Bool)

(declare-fun call!123168 () List!22207)

(assert (=> bm!123163 (= call!123167 call!123168)))

(declare-fun bm!123164 () Bool)

(assert (=> bm!123164 (= call!123170 (usedCharacters!412 (ite c!325255 (regOne!11311 (regex!3974 (rule!6201 (h!27527 tokens!598)))) (regTwo!11310 (regex!3974 (rule!6201 (h!27527 tokens!598)))))))))

(declare-fun b!2013646 () Bool)

(declare-fun c!325254 () Bool)

(assert (=> b!2013646 (= c!325254 ((_ is Star!5399) (regex!3974 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun e!1272474 () List!22207)

(declare-fun e!1272475 () List!22207)

(assert (=> b!2013646 (= e!1272474 e!1272475)))

(declare-fun b!2013647 () Bool)

(declare-fun e!1272472 () List!22207)

(assert (=> b!2013647 (= e!1272472 call!123169)))

(declare-fun b!2013648 () Bool)

(assert (=> b!2013648 (= e!1272473 e!1272474)))

(declare-fun c!325257 () Bool)

(assert (=> b!2013648 (= c!325257 ((_ is ElementMatch!5399) (regex!3974 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun b!2013649 () Bool)

(assert (=> b!2013649 (= e!1272475 e!1272472)))

(assert (=> b!2013649 (= c!325255 ((_ is Union!5399) (regex!3974 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun b!2013650 () Bool)

(assert (=> b!2013650 (= e!1272472 call!123169)))

(declare-fun bm!123165 () Bool)

(assert (=> bm!123165 (= call!123168 (usedCharacters!412 (ite c!325254 (reg!5728 (regex!3974 (rule!6201 (h!27527 tokens!598)))) (ite c!325255 (regTwo!11311 (regex!3974 (rule!6201 (h!27527 tokens!598)))) (regOne!11310 (regex!3974 (rule!6201 (h!27527 tokens!598))))))))))

(declare-fun b!2013651 () Bool)

(assert (=> b!2013651 (= e!1272473 Nil!22125)))

(declare-fun b!2013652 () Bool)

(assert (=> b!2013652 (= e!1272475 call!123168)))

(declare-fun b!2013653 () Bool)

(assert (=> b!2013653 (= e!1272474 (Cons!22125 (c!325220 (regex!3974 (rule!6201 (h!27527 tokens!598)))) Nil!22125))))

(assert (= (and d!614662 c!325256) b!2013651))

(assert (= (and d!614662 (not c!325256)) b!2013648))

(assert (= (and b!2013648 c!325257) b!2013653))

(assert (= (and b!2013648 (not c!325257)) b!2013646))

(assert (= (and b!2013646 c!325254) b!2013652))

(assert (= (and b!2013646 (not c!325254)) b!2013649))

(assert (= (and b!2013649 c!325255) b!2013647))

(assert (= (and b!2013649 (not c!325255)) b!2013650))

(assert (= (or b!2013647 b!2013650) bm!123164))

(assert (= (or b!2013647 b!2013650) bm!123163))

(assert (= (or b!2013647 b!2013650) bm!123162))

(assert (= (or b!2013652 bm!123163) bm!123165))

(declare-fun m!2446717 () Bool)

(assert (=> bm!123162 m!2446717))

(declare-fun m!2446719 () Bool)

(assert (=> bm!123164 m!2446719))

(declare-fun m!2446721 () Bool)

(assert (=> bm!123165 m!2446721))

(assert (=> b!2013526 d!614662))

(declare-fun d!614664 () Bool)

(assert (=> d!614664 (not (matchR!2665 (regex!3974 (rule!6201 separatorToken!354)) lt!756056))))

(declare-fun lt!756132 () Unit!36708)

(declare-fun choose!12269 (Regex!5399 List!22207 C!10944) Unit!36708)

(assert (=> d!614664 (= lt!756132 (choose!12269 (regex!3974 (rule!6201 separatorToken!354)) lt!756056 lt!756064))))

(declare-fun validRegex!2165 (Regex!5399) Bool)

(assert (=> d!614664 (validRegex!2165 (regex!3974 (rule!6201 separatorToken!354)))))

(assert (=> d!614664 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!300 (regex!3974 (rule!6201 separatorToken!354)) lt!756056 lt!756064) lt!756132)))

(declare-fun bs!419875 () Bool)

(assert (= bs!419875 d!614664))

(assert (=> bs!419875 m!2446447))

(declare-fun m!2446723 () Bool)

(assert (=> bs!419875 m!2446723))

(declare-fun m!2446725 () Bool)

(assert (=> bs!419875 m!2446725))

(assert (=> b!2013525 d!614664))

(declare-fun b!2013682 () Bool)

(declare-fun res!883272 () Bool)

(declare-fun e!1272495 () Bool)

(assert (=> b!2013682 (=> (not res!883272) (not e!1272495))))

(declare-fun call!123173 () Bool)

(assert (=> b!2013682 (= res!883272 (not call!123173))))

(declare-fun b!2013683 () Bool)

(declare-fun e!1272492 () Bool)

(declare-fun e!1272494 () Bool)

(assert (=> b!2013683 (= e!1272492 e!1272494)))

(declare-fun c!325265 () Bool)

(assert (=> b!2013683 (= c!325265 ((_ is EmptyLang!5399) (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun b!2013684 () Bool)

(declare-fun e!1272490 () Bool)

(declare-fun e!1272491 () Bool)

(assert (=> b!2013684 (= e!1272490 e!1272491)))

(declare-fun res!883269 () Bool)

(assert (=> b!2013684 (=> res!883269 e!1272491)))

(assert (=> b!2013684 (= res!883269 call!123173)))

(declare-fun b!2013685 () Bool)

(assert (=> b!2013685 (= e!1272491 (not (= (head!4552 lt!756056) (c!325220 (regex!3974 (rule!6201 separatorToken!354))))))))

(declare-fun b!2013686 () Bool)

(declare-fun e!1272496 () Bool)

(assert (=> b!2013686 (= e!1272496 e!1272490)))

(declare-fun res!883268 () Bool)

(assert (=> b!2013686 (=> (not res!883268) (not e!1272490))))

(declare-fun lt!756135 () Bool)

(assert (=> b!2013686 (= res!883268 (not lt!756135))))

(declare-fun b!2013687 () Bool)

(assert (=> b!2013687 (= e!1272492 (= lt!756135 call!123173))))

(declare-fun b!2013688 () Bool)

(assert (=> b!2013688 (= e!1272494 (not lt!756135))))

(declare-fun b!2013689 () Bool)

(declare-fun res!883270 () Bool)

(assert (=> b!2013689 (=> (not res!883270) (not e!1272495))))

(declare-fun tail!3034 (List!22207) List!22207)

(assert (=> b!2013689 (= res!883270 (isEmpty!13735 (tail!3034 lt!756056)))))

(declare-fun bm!123168 () Bool)

(assert (=> bm!123168 (= call!123173 (isEmpty!13735 lt!756056))))

(declare-fun b!2013690 () Bool)

(declare-fun res!883271 () Bool)

(assert (=> b!2013690 (=> res!883271 e!1272491)))

(assert (=> b!2013690 (= res!883271 (not (isEmpty!13735 (tail!3034 lt!756056))))))

(declare-fun b!2013691 () Bool)

(assert (=> b!2013691 (= e!1272495 (= (head!4552 lt!756056) (c!325220 (regex!3974 (rule!6201 separatorToken!354)))))))

(declare-fun d!614666 () Bool)

(assert (=> d!614666 e!1272492))

(declare-fun c!325267 () Bool)

(assert (=> d!614666 (= c!325267 ((_ is EmptyExpr!5399) (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun e!1272493 () Bool)

(assert (=> d!614666 (= lt!756135 e!1272493)))

(declare-fun c!325266 () Bool)

(assert (=> d!614666 (= c!325266 (isEmpty!13735 lt!756056))))

(assert (=> d!614666 (validRegex!2165 (regex!3974 (rule!6201 separatorToken!354)))))

(assert (=> d!614666 (= (matchR!2665 (regex!3974 (rule!6201 separatorToken!354)) lt!756056) lt!756135)))

(declare-fun b!2013692 () Bool)

(declare-fun nullable!1639 (Regex!5399) Bool)

(assert (=> b!2013692 (= e!1272493 (nullable!1639 (regex!3974 (rule!6201 separatorToken!354))))))

(declare-fun b!2013693 () Bool)

(declare-fun res!883273 () Bool)

(assert (=> b!2013693 (=> res!883273 e!1272496)))

(assert (=> b!2013693 (= res!883273 e!1272495)))

(declare-fun res!883275 () Bool)

(assert (=> b!2013693 (=> (not res!883275) (not e!1272495))))

(assert (=> b!2013693 (= res!883275 lt!756135)))

(declare-fun b!2013694 () Bool)

(declare-fun res!883274 () Bool)

(assert (=> b!2013694 (=> res!883274 e!1272496)))

(assert (=> b!2013694 (= res!883274 (not ((_ is ElementMatch!5399) (regex!3974 (rule!6201 separatorToken!354)))))))

(assert (=> b!2013694 (= e!1272494 e!1272496)))

(declare-fun b!2013695 () Bool)

(declare-fun derivativeStep!1398 (Regex!5399 C!10944) Regex!5399)

(assert (=> b!2013695 (= e!1272493 (matchR!2665 (derivativeStep!1398 (regex!3974 (rule!6201 separatorToken!354)) (head!4552 lt!756056)) (tail!3034 lt!756056)))))

(assert (= (and d!614666 c!325266) b!2013692))

(assert (= (and d!614666 (not c!325266)) b!2013695))

(assert (= (and d!614666 c!325267) b!2013687))

(assert (= (and d!614666 (not c!325267)) b!2013683))

(assert (= (and b!2013683 c!325265) b!2013688))

(assert (= (and b!2013683 (not c!325265)) b!2013694))

(assert (= (and b!2013694 (not res!883274)) b!2013693))

(assert (= (and b!2013693 res!883275) b!2013682))

(assert (= (and b!2013682 res!883272) b!2013689))

(assert (= (and b!2013689 res!883270) b!2013691))

(assert (= (and b!2013693 (not res!883273)) b!2013686))

(assert (= (and b!2013686 res!883268) b!2013684))

(assert (= (and b!2013684 (not res!883269)) b!2013690))

(assert (= (and b!2013690 (not res!883271)) b!2013685))

(assert (= (or b!2013687 b!2013682 b!2013684) bm!123168))

(declare-fun m!2446727 () Bool)

(assert (=> bm!123168 m!2446727))

(assert (=> b!2013685 m!2446479))

(declare-fun m!2446729 () Bool)

(assert (=> b!2013692 m!2446729))

(declare-fun m!2446731 () Bool)

(assert (=> b!2013690 m!2446731))

(assert (=> b!2013690 m!2446731))

(declare-fun m!2446733 () Bool)

(assert (=> b!2013690 m!2446733))

(assert (=> b!2013689 m!2446731))

(assert (=> b!2013689 m!2446731))

(assert (=> b!2013689 m!2446733))

(assert (=> b!2013691 m!2446479))

(assert (=> b!2013695 m!2446479))

(assert (=> b!2013695 m!2446479))

(declare-fun m!2446735 () Bool)

(assert (=> b!2013695 m!2446735))

(assert (=> b!2013695 m!2446731))

(assert (=> b!2013695 m!2446735))

(assert (=> b!2013695 m!2446731))

(declare-fun m!2446737 () Bool)

(assert (=> b!2013695 m!2446737))

(assert (=> d!614666 m!2446727))

(assert (=> d!614666 m!2446725))

(assert (=> b!2013525 d!614666))

(declare-fun d!614668 () Bool)

(declare-fun res!883280 () Bool)

(declare-fun e!1272501 () Bool)

(assert (=> d!614668 (=> res!883280 e!1272501)))

(assert (=> d!614668 (= res!883280 ((_ is Nil!22126) tokens!598))))

(assert (=> d!614668 (= (forall!4702 tokens!598 lambda!76195) e!1272501)))

(declare-fun b!2013700 () Bool)

(declare-fun e!1272502 () Bool)

(assert (=> b!2013700 (= e!1272501 e!1272502)))

(declare-fun res!883281 () Bool)

(assert (=> b!2013700 (=> (not res!883281) (not e!1272502))))

(declare-fun dynLambda!10926 (Int Token!7500) Bool)

(assert (=> b!2013700 (= res!883281 (dynLambda!10926 lambda!76195 (h!27527 tokens!598)))))

(declare-fun b!2013701 () Bool)

(assert (=> b!2013701 (= e!1272502 (forall!4702 (t!188037 tokens!598) lambda!76195))))

(assert (= (and d!614668 (not res!883280)) b!2013700))

(assert (= (and b!2013700 res!883281) b!2013701))

(declare-fun b_lambda!67351 () Bool)

(assert (=> (not b_lambda!67351) (not b!2013700)))

(declare-fun m!2446739 () Bool)

(assert (=> b!2013700 m!2446739))

(declare-fun m!2446741 () Bool)

(assert (=> b!2013701 m!2446741))

(assert (=> b!2013514 d!614668))

(declare-fun d!614670 () Bool)

(declare-fun res!883286 () Bool)

(declare-fun e!1272507 () Bool)

(assert (=> d!614670 (=> res!883286 e!1272507)))

(assert (=> d!614670 (= res!883286 (not ((_ is Cons!22127) rules!3198)))))

(assert (=> d!614670 (= (sepAndNonSepRulesDisjointChars!1072 rules!3198 rules!3198) e!1272507)))

(declare-fun b!2013706 () Bool)

(declare-fun e!1272508 () Bool)

(assert (=> b!2013706 (= e!1272507 e!1272508)))

(declare-fun res!883287 () Bool)

(assert (=> b!2013706 (=> (not res!883287) (not e!1272508))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!479 (Rule!7748 List!22209) Bool)

(assert (=> b!2013706 (= res!883287 (ruleDisjointCharsFromAllFromOtherType!479 (h!27528 rules!3198) rules!3198))))

(declare-fun b!2013707 () Bool)

(assert (=> b!2013707 (= e!1272508 (sepAndNonSepRulesDisjointChars!1072 rules!3198 (t!188038 rules!3198)))))

(assert (= (and d!614670 (not res!883286)) b!2013706))

(assert (= (and b!2013706 res!883287) b!2013707))

(declare-fun m!2446743 () Bool)

(assert (=> b!2013706 m!2446743))

(declare-fun m!2446745 () Bool)

(assert (=> b!2013707 m!2446745))

(assert (=> b!2013503 d!614670))

(declare-fun d!614672 () Bool)

(assert (=> d!614672 (= (isEmpty!13732 rules!3198) ((_ is Nil!22127) rules!3198))))

(assert (=> b!2013524 d!614672))

(declare-fun b!2013708 () Bool)

(declare-fun res!883292 () Bool)

(declare-fun e!1272514 () Bool)

(assert (=> b!2013708 (=> (not res!883292) (not e!1272514))))

(declare-fun call!123174 () Bool)

(assert (=> b!2013708 (= res!883292 (not call!123174))))

(declare-fun b!2013709 () Bool)

(declare-fun e!1272511 () Bool)

(declare-fun e!1272513 () Bool)

(assert (=> b!2013709 (= e!1272511 e!1272513)))

(declare-fun c!325268 () Bool)

(assert (=> b!2013709 (= c!325268 ((_ is EmptyLang!5399) (regex!3974 lt!756059)))))

(declare-fun b!2013710 () Bool)

(declare-fun e!1272509 () Bool)

(declare-fun e!1272510 () Bool)

(assert (=> b!2013710 (= e!1272509 e!1272510)))

(declare-fun res!883289 () Bool)

(assert (=> b!2013710 (=> res!883289 e!1272510)))

(assert (=> b!2013710 (= res!883289 call!123174)))

(declare-fun b!2013711 () Bool)

(assert (=> b!2013711 (= e!1272510 (not (= (head!4552 lt!756056) (c!325220 (regex!3974 lt!756059)))))))

(declare-fun b!2013712 () Bool)

(declare-fun e!1272515 () Bool)

(assert (=> b!2013712 (= e!1272515 e!1272509)))

(declare-fun res!883288 () Bool)

(assert (=> b!2013712 (=> (not res!883288) (not e!1272509))))

(declare-fun lt!756136 () Bool)

(assert (=> b!2013712 (= res!883288 (not lt!756136))))

(declare-fun b!2013713 () Bool)

(assert (=> b!2013713 (= e!1272511 (= lt!756136 call!123174))))

(declare-fun b!2013714 () Bool)

(assert (=> b!2013714 (= e!1272513 (not lt!756136))))

(declare-fun b!2013715 () Bool)

(declare-fun res!883290 () Bool)

(assert (=> b!2013715 (=> (not res!883290) (not e!1272514))))

(assert (=> b!2013715 (= res!883290 (isEmpty!13735 (tail!3034 lt!756056)))))

(declare-fun bm!123169 () Bool)

(assert (=> bm!123169 (= call!123174 (isEmpty!13735 lt!756056))))

(declare-fun b!2013716 () Bool)

(declare-fun res!883291 () Bool)

(assert (=> b!2013716 (=> res!883291 e!1272510)))

(assert (=> b!2013716 (= res!883291 (not (isEmpty!13735 (tail!3034 lt!756056))))))

(declare-fun b!2013717 () Bool)

(assert (=> b!2013717 (= e!1272514 (= (head!4552 lt!756056) (c!325220 (regex!3974 lt!756059))))))

(declare-fun d!614674 () Bool)

(assert (=> d!614674 e!1272511))

(declare-fun c!325270 () Bool)

(assert (=> d!614674 (= c!325270 ((_ is EmptyExpr!5399) (regex!3974 lt!756059)))))

(declare-fun e!1272512 () Bool)

(assert (=> d!614674 (= lt!756136 e!1272512)))

(declare-fun c!325269 () Bool)

(assert (=> d!614674 (= c!325269 (isEmpty!13735 lt!756056))))

(assert (=> d!614674 (validRegex!2165 (regex!3974 lt!756059))))

(assert (=> d!614674 (= (matchR!2665 (regex!3974 lt!756059) lt!756056) lt!756136)))

(declare-fun b!2013718 () Bool)

(assert (=> b!2013718 (= e!1272512 (nullable!1639 (regex!3974 lt!756059)))))

(declare-fun b!2013719 () Bool)

(declare-fun res!883293 () Bool)

(assert (=> b!2013719 (=> res!883293 e!1272515)))

(assert (=> b!2013719 (= res!883293 e!1272514)))

(declare-fun res!883295 () Bool)

(assert (=> b!2013719 (=> (not res!883295) (not e!1272514))))

(assert (=> b!2013719 (= res!883295 lt!756136)))

(declare-fun b!2013720 () Bool)

(declare-fun res!883294 () Bool)

(assert (=> b!2013720 (=> res!883294 e!1272515)))

(assert (=> b!2013720 (= res!883294 (not ((_ is ElementMatch!5399) (regex!3974 lt!756059))))))

(assert (=> b!2013720 (= e!1272513 e!1272515)))

(declare-fun b!2013721 () Bool)

(assert (=> b!2013721 (= e!1272512 (matchR!2665 (derivativeStep!1398 (regex!3974 lt!756059) (head!4552 lt!756056)) (tail!3034 lt!756056)))))

(assert (= (and d!614674 c!325269) b!2013718))

(assert (= (and d!614674 (not c!325269)) b!2013721))

(assert (= (and d!614674 c!325270) b!2013713))

(assert (= (and d!614674 (not c!325270)) b!2013709))

(assert (= (and b!2013709 c!325268) b!2013714))

(assert (= (and b!2013709 (not c!325268)) b!2013720))

(assert (= (and b!2013720 (not res!883294)) b!2013719))

(assert (= (and b!2013719 res!883295) b!2013708))

(assert (= (and b!2013708 res!883292) b!2013715))

(assert (= (and b!2013715 res!883290) b!2013717))

(assert (= (and b!2013719 (not res!883293)) b!2013712))

(assert (= (and b!2013712 res!883288) b!2013710))

(assert (= (and b!2013710 (not res!883289)) b!2013716))

(assert (= (and b!2013716 (not res!883291)) b!2013711))

(assert (= (or b!2013713 b!2013708 b!2013710) bm!123169))

(assert (=> bm!123169 m!2446727))

(assert (=> b!2013711 m!2446479))

(declare-fun m!2446747 () Bool)

(assert (=> b!2013718 m!2446747))

(assert (=> b!2013716 m!2446731))

(assert (=> b!2013716 m!2446731))

(assert (=> b!2013716 m!2446733))

(assert (=> b!2013715 m!2446731))

(assert (=> b!2013715 m!2446731))

(assert (=> b!2013715 m!2446733))

(assert (=> b!2013717 m!2446479))

(assert (=> b!2013721 m!2446479))

(assert (=> b!2013721 m!2446479))

(declare-fun m!2446749 () Bool)

(assert (=> b!2013721 m!2446749))

(assert (=> b!2013721 m!2446731))

(assert (=> b!2013721 m!2446749))

(assert (=> b!2013721 m!2446731))

(declare-fun m!2446751 () Bool)

(assert (=> b!2013721 m!2446751))

(assert (=> d!614674 m!2446727))

(declare-fun m!2446753 () Bool)

(assert (=> d!614674 m!2446753))

(assert (=> b!2013513 d!614674))

(declare-fun d!614676 () Bool)

(assert (=> d!614676 (= (get!7008 lt!756071) (v!26886 lt!756071))))

(assert (=> b!2013513 d!614676))

(declare-fun d!614678 () Bool)

(declare-fun lt!756139 () Bool)

(declare-fun isEmpty!13738 (List!22208) Bool)

(assert (=> d!614678 (= lt!756139 (isEmpty!13738 (list!9019 (_1!11862 (lex!1603 thiss!23328 rules!3198 (seqFromList!2828 lt!756072))))))))

(declare-fun isEmpty!13739 (Conc!7395) Bool)

(assert (=> d!614678 (= lt!756139 (isEmpty!13739 (c!325222 (_1!11862 (lex!1603 thiss!23328 rules!3198 (seqFromList!2828 lt!756072))))))))

(assert (=> d!614678 (= (isEmpty!13731 (_1!11862 (lex!1603 thiss!23328 rules!3198 (seqFromList!2828 lt!756072)))) lt!756139)))

(declare-fun bs!419876 () Bool)

(assert (= bs!419876 d!614678))

(declare-fun m!2446755 () Bool)

(assert (=> bs!419876 m!2446755))

(assert (=> bs!419876 m!2446755))

(declare-fun m!2446757 () Bool)

(assert (=> bs!419876 m!2446757))

(declare-fun m!2446759 () Bool)

(assert (=> bs!419876 m!2446759))

(assert (=> b!2013502 d!614678))

(declare-fun b!2013732 () Bool)

(declare-fun e!1272523 () Bool)

(declare-fun e!1272522 () Bool)

(assert (=> b!2013732 (= e!1272523 e!1272522)))

(declare-fun res!883304 () Bool)

(declare-fun lt!756142 () tuple2!20786)

(declare-fun size!17287 (BalanceConc!14604) Int)

(assert (=> b!2013732 (= res!883304 (< (size!17287 (_2!11862 lt!756142)) (size!17287 (seqFromList!2828 lt!756072))))))

(assert (=> b!2013732 (=> (not res!883304) (not e!1272522))))

(declare-fun b!2013733 () Bool)

(declare-fun res!883302 () Bool)

(declare-fun e!1272524 () Bool)

(assert (=> b!2013733 (=> (not res!883302) (not e!1272524))))

(declare-datatypes ((tuple2!20788 0))(
  ( (tuple2!20789 (_1!11863 List!22208) (_2!11863 List!22207)) )
))
(declare-fun lexList!968 (LexerInterface!3587 List!22209 List!22207) tuple2!20788)

(assert (=> b!2013733 (= res!883302 (= (list!9019 (_1!11862 lt!756142)) (_1!11863 (lexList!968 thiss!23328 rules!3198 (list!9015 (seqFromList!2828 lt!756072))))))))

(declare-fun b!2013734 () Bool)

(assert (=> b!2013734 (= e!1272523 (= (_2!11862 lt!756142) (seqFromList!2828 lt!756072)))))

(declare-fun b!2013735 () Bool)

(assert (=> b!2013735 (= e!1272524 (= (list!9015 (_2!11862 lt!756142)) (_2!11863 (lexList!968 thiss!23328 rules!3198 (list!9015 (seqFromList!2828 lt!756072))))))))

(declare-fun d!614680 () Bool)

(assert (=> d!614680 e!1272524))

(declare-fun res!883303 () Bool)

(assert (=> d!614680 (=> (not res!883303) (not e!1272524))))

(assert (=> d!614680 (= res!883303 e!1272523)))

(declare-fun c!325273 () Bool)

(assert (=> d!614680 (= c!325273 (> (size!17286 (_1!11862 lt!756142)) 0))))

(declare-fun lexTailRecV2!691 (LexerInterface!3587 List!22209 BalanceConc!14604 BalanceConc!14604 BalanceConc!14604 BalanceConc!14606) tuple2!20786)

(assert (=> d!614680 (= lt!756142 (lexTailRecV2!691 thiss!23328 rules!3198 (seqFromList!2828 lt!756072) (BalanceConc!14605 Empty!7394) (seqFromList!2828 lt!756072) (BalanceConc!14607 Empty!7395)))))

(assert (=> d!614680 (= (lex!1603 thiss!23328 rules!3198 (seqFromList!2828 lt!756072)) lt!756142)))

(declare-fun b!2013736 () Bool)

(assert (=> b!2013736 (= e!1272522 (not (isEmpty!13731 (_1!11862 lt!756142))))))

(assert (= (and d!614680 c!325273) b!2013732))

(assert (= (and d!614680 (not c!325273)) b!2013734))

(assert (= (and b!2013732 res!883304) b!2013736))

(assert (= (and d!614680 res!883303) b!2013733))

(assert (= (and b!2013733 res!883302) b!2013735))

(declare-fun m!2446761 () Bool)

(assert (=> d!614680 m!2446761))

(assert (=> d!614680 m!2446535))

(assert (=> d!614680 m!2446535))

(declare-fun m!2446763 () Bool)

(assert (=> d!614680 m!2446763))

(declare-fun m!2446765 () Bool)

(assert (=> b!2013735 m!2446765))

(assert (=> b!2013735 m!2446535))

(declare-fun m!2446767 () Bool)

(assert (=> b!2013735 m!2446767))

(assert (=> b!2013735 m!2446767))

(declare-fun m!2446769 () Bool)

(assert (=> b!2013735 m!2446769))

(declare-fun m!2446771 () Bool)

(assert (=> b!2013736 m!2446771))

(declare-fun m!2446773 () Bool)

(assert (=> b!2013733 m!2446773))

(assert (=> b!2013733 m!2446535))

(assert (=> b!2013733 m!2446767))

(assert (=> b!2013733 m!2446767))

(assert (=> b!2013733 m!2446769))

(declare-fun m!2446775 () Bool)

(assert (=> b!2013732 m!2446775))

(assert (=> b!2013732 m!2446535))

(declare-fun m!2446777 () Bool)

(assert (=> b!2013732 m!2446777))

(assert (=> b!2013502 d!614680))

(declare-fun d!614682 () Bool)

(declare-fun fromListB!1267 (List!22207) BalanceConc!14604)

(assert (=> d!614682 (= (seqFromList!2828 lt!756072) (fromListB!1267 lt!756072))))

(declare-fun bs!419877 () Bool)

(assert (= bs!419877 d!614682))

(declare-fun m!2446779 () Bool)

(assert (=> bs!419877 m!2446779))

(assert (=> b!2013502 d!614682))

(declare-fun d!614684 () Bool)

(declare-fun lt!756157 () Bool)

(declare-fun e!1272589 () Bool)

(assert (=> d!614684 (= lt!756157 e!1272589)))

(declare-fun res!883353 () Bool)

(assert (=> d!614684 (=> (not res!883353) (not e!1272589))))

(assert (=> d!614684 (= res!883353 (= (list!9019 (_1!11862 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 separatorToken!354))))) (list!9019 (singletonSeq!1950 separatorToken!354))))))

(declare-fun e!1272588 () Bool)

(assert (=> d!614684 (= lt!756157 e!1272588)))

(declare-fun res!883354 () Bool)

(assert (=> d!614684 (=> (not res!883354) (not e!1272588))))

(declare-fun lt!756158 () tuple2!20786)

(assert (=> d!614684 (= res!883354 (= (size!17286 (_1!11862 lt!756158)) 1))))

(assert (=> d!614684 (= lt!756158 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 separatorToken!354))))))

(assert (=> d!614684 (not (isEmpty!13732 rules!3198))))

(assert (=> d!614684 (= (rulesProduceIndividualToken!1759 thiss!23328 rules!3198 separatorToken!354) lt!756157)))

(declare-fun b!2013845 () Bool)

(declare-fun res!883352 () Bool)

(assert (=> b!2013845 (=> (not res!883352) (not e!1272588))))

(assert (=> b!2013845 (= res!883352 (= (apply!5803 (_1!11862 lt!756158) 0) separatorToken!354))))

(declare-fun b!2013846 () Bool)

(declare-fun isEmpty!13740 (BalanceConc!14604) Bool)

(assert (=> b!2013846 (= e!1272588 (isEmpty!13740 (_2!11862 lt!756158)))))

(declare-fun b!2013847 () Bool)

(assert (=> b!2013847 (= e!1272589 (isEmpty!13740 (_2!11862 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 separatorToken!354))))))))

(assert (= (and d!614684 res!883354) b!2013845))

(assert (= (and b!2013845 res!883352) b!2013846))

(assert (= (and d!614684 res!883353) b!2013847))

(declare-fun m!2446831 () Bool)

(assert (=> d!614684 m!2446831))

(declare-fun m!2446833 () Bool)

(assert (=> d!614684 m!2446833))

(assert (=> d!614684 m!2446831))

(declare-fun m!2446835 () Bool)

(assert (=> d!614684 m!2446835))

(assert (=> d!614684 m!2446487))

(assert (=> d!614684 m!2446831))

(assert (=> d!614684 m!2446833))

(declare-fun m!2446837 () Bool)

(assert (=> d!614684 m!2446837))

(declare-fun m!2446839 () Bool)

(assert (=> d!614684 m!2446839))

(declare-fun m!2446841 () Bool)

(assert (=> d!614684 m!2446841))

(declare-fun m!2446843 () Bool)

(assert (=> b!2013845 m!2446843))

(declare-fun m!2446845 () Bool)

(assert (=> b!2013846 m!2446845))

(assert (=> b!2013847 m!2446831))

(assert (=> b!2013847 m!2446831))

(assert (=> b!2013847 m!2446833))

(assert (=> b!2013847 m!2446833))

(assert (=> b!2013847 m!2446837))

(declare-fun m!2446847 () Bool)

(assert (=> b!2013847 m!2446847))

(assert (=> b!2013523 d!614684))

(declare-fun b!2013848 () Bool)

(declare-fun res!883359 () Bool)

(declare-fun e!1272595 () Bool)

(assert (=> b!2013848 (=> (not res!883359) (not e!1272595))))

(declare-fun call!123190 () Bool)

(assert (=> b!2013848 (= res!883359 (not call!123190))))

(declare-fun b!2013849 () Bool)

(declare-fun e!1272592 () Bool)

(declare-fun e!1272594 () Bool)

(assert (=> b!2013849 (= e!1272592 e!1272594)))

(declare-fun c!325298 () Bool)

(assert (=> b!2013849 (= c!325298 ((_ is EmptyLang!5399) (regex!3974 lt!756067)))))

(declare-fun b!2013850 () Bool)

(declare-fun e!1272590 () Bool)

(declare-fun e!1272591 () Bool)

(assert (=> b!2013850 (= e!1272590 e!1272591)))

(declare-fun res!883356 () Bool)

(assert (=> b!2013850 (=> res!883356 e!1272591)))

(assert (=> b!2013850 (= res!883356 call!123190)))

(declare-fun b!2013851 () Bool)

(assert (=> b!2013851 (= e!1272591 (not (= (head!4552 lt!756072) (c!325220 (regex!3974 lt!756067)))))))

(declare-fun b!2013852 () Bool)

(declare-fun e!1272596 () Bool)

(assert (=> b!2013852 (= e!1272596 e!1272590)))

(declare-fun res!883355 () Bool)

(assert (=> b!2013852 (=> (not res!883355) (not e!1272590))))

(declare-fun lt!756159 () Bool)

(assert (=> b!2013852 (= res!883355 (not lt!756159))))

(declare-fun b!2013853 () Bool)

(assert (=> b!2013853 (= e!1272592 (= lt!756159 call!123190))))

(declare-fun b!2013854 () Bool)

(assert (=> b!2013854 (= e!1272594 (not lt!756159))))

(declare-fun b!2013855 () Bool)

(declare-fun res!883357 () Bool)

(assert (=> b!2013855 (=> (not res!883357) (not e!1272595))))

(assert (=> b!2013855 (= res!883357 (isEmpty!13735 (tail!3034 lt!756072)))))

(declare-fun bm!123185 () Bool)

(assert (=> bm!123185 (= call!123190 (isEmpty!13735 lt!756072))))

(declare-fun b!2013856 () Bool)

(declare-fun res!883358 () Bool)

(assert (=> b!2013856 (=> res!883358 e!1272591)))

(assert (=> b!2013856 (= res!883358 (not (isEmpty!13735 (tail!3034 lt!756072))))))

(declare-fun b!2013857 () Bool)

(assert (=> b!2013857 (= e!1272595 (= (head!4552 lt!756072) (c!325220 (regex!3974 lt!756067))))))

(declare-fun d!614704 () Bool)

(assert (=> d!614704 e!1272592))

(declare-fun c!325300 () Bool)

(assert (=> d!614704 (= c!325300 ((_ is EmptyExpr!5399) (regex!3974 lt!756067)))))

(declare-fun e!1272593 () Bool)

(assert (=> d!614704 (= lt!756159 e!1272593)))

(declare-fun c!325299 () Bool)

(assert (=> d!614704 (= c!325299 (isEmpty!13735 lt!756072))))

(assert (=> d!614704 (validRegex!2165 (regex!3974 lt!756067))))

(assert (=> d!614704 (= (matchR!2665 (regex!3974 lt!756067) lt!756072) lt!756159)))

(declare-fun b!2013858 () Bool)

(assert (=> b!2013858 (= e!1272593 (nullable!1639 (regex!3974 lt!756067)))))

(declare-fun b!2013859 () Bool)

(declare-fun res!883360 () Bool)

(assert (=> b!2013859 (=> res!883360 e!1272596)))

(assert (=> b!2013859 (= res!883360 e!1272595)))

(declare-fun res!883362 () Bool)

(assert (=> b!2013859 (=> (not res!883362) (not e!1272595))))

(assert (=> b!2013859 (= res!883362 lt!756159)))

(declare-fun b!2013860 () Bool)

(declare-fun res!883361 () Bool)

(assert (=> b!2013860 (=> res!883361 e!1272596)))

(assert (=> b!2013860 (= res!883361 (not ((_ is ElementMatch!5399) (regex!3974 lt!756067))))))

(assert (=> b!2013860 (= e!1272594 e!1272596)))

(declare-fun b!2013861 () Bool)

(assert (=> b!2013861 (= e!1272593 (matchR!2665 (derivativeStep!1398 (regex!3974 lt!756067) (head!4552 lt!756072)) (tail!3034 lt!756072)))))

(assert (= (and d!614704 c!325299) b!2013858))

(assert (= (and d!614704 (not c!325299)) b!2013861))

(assert (= (and d!614704 c!325300) b!2013853))

(assert (= (and d!614704 (not c!325300)) b!2013849))

(assert (= (and b!2013849 c!325298) b!2013854))

(assert (= (and b!2013849 (not c!325298)) b!2013860))

(assert (= (and b!2013860 (not res!883361)) b!2013859))

(assert (= (and b!2013859 res!883362) b!2013848))

(assert (= (and b!2013848 res!883359) b!2013855))

(assert (= (and b!2013855 res!883357) b!2013857))

(assert (= (and b!2013859 (not res!883360)) b!2013852))

(assert (= (and b!2013852 res!883355) b!2013850))

(assert (= (and b!2013850 (not res!883356)) b!2013856))

(assert (= (and b!2013856 (not res!883358)) b!2013851))

(assert (= (or b!2013853 b!2013848 b!2013850) bm!123185))

(declare-fun m!2446849 () Bool)

(assert (=> bm!123185 m!2446849))

(declare-fun m!2446851 () Bool)

(assert (=> b!2013851 m!2446851))

(declare-fun m!2446853 () Bool)

(assert (=> b!2013858 m!2446853))

(declare-fun m!2446855 () Bool)

(assert (=> b!2013856 m!2446855))

(assert (=> b!2013856 m!2446855))

(declare-fun m!2446857 () Bool)

(assert (=> b!2013856 m!2446857))

(assert (=> b!2013855 m!2446855))

(assert (=> b!2013855 m!2446855))

(assert (=> b!2013855 m!2446857))

(assert (=> b!2013857 m!2446851))

(assert (=> b!2013861 m!2446851))

(assert (=> b!2013861 m!2446851))

(declare-fun m!2446859 () Bool)

(assert (=> b!2013861 m!2446859))

(assert (=> b!2013861 m!2446855))

(assert (=> b!2013861 m!2446859))

(assert (=> b!2013861 m!2446855))

(declare-fun m!2446861 () Bool)

(assert (=> b!2013861 m!2446861))

(assert (=> d!614704 m!2446849))

(declare-fun m!2446863 () Bool)

(assert (=> d!614704 m!2446863))

(assert (=> b!2013512 d!614704))

(declare-fun d!614706 () Bool)

(assert (=> d!614706 (= (get!7008 lt!756062) (v!26886 lt!756062))))

(assert (=> b!2013512 d!614706))

(declare-fun d!614708 () Bool)

(assert (=> d!614708 (= (inv!29287 (tag!4446 (rule!6201 separatorToken!354))) (= (mod (str.len (value!124849 (tag!4446 (rule!6201 separatorToken!354)))) 2) 0))))

(assert (=> b!2013501 d!614708))

(declare-fun d!614710 () Bool)

(declare-fun res!883365 () Bool)

(declare-fun e!1272599 () Bool)

(assert (=> d!614710 (=> (not res!883365) (not e!1272599))))

(declare-fun semiInverseModEq!1595 (Int Int) Bool)

(assert (=> d!614710 (= res!883365 (semiInverseModEq!1595 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354)))))))

(assert (=> d!614710 (= (inv!29290 (transformation!3974 (rule!6201 separatorToken!354))) e!1272599)))

(declare-fun b!2013864 () Bool)

(declare-fun equivClasses!1522 (Int Int) Bool)

(assert (=> b!2013864 (= e!1272599 (equivClasses!1522 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354)))))))

(assert (= (and d!614710 res!883365) b!2013864))

(declare-fun m!2446865 () Bool)

(assert (=> d!614710 m!2446865))

(declare-fun m!2446867 () Bool)

(assert (=> b!2013864 m!2446867))

(assert (=> b!2013501 d!614710))

(declare-fun bs!419893 () Bool)

(declare-fun d!614712 () Bool)

(assert (= bs!419893 (and d!614712 b!2013514)))

(declare-fun lambda!76210 () Int)

(assert (=> bs!419893 (not (= lambda!76210 lambda!76195))))

(declare-fun b!2014102 () Bool)

(declare-fun e!1272744 () Bool)

(assert (=> b!2014102 (= e!1272744 true)))

(declare-fun b!2014101 () Bool)

(declare-fun e!1272743 () Bool)

(assert (=> b!2014101 (= e!1272743 e!1272744)))

(declare-fun b!2014100 () Bool)

(declare-fun e!1272742 () Bool)

(assert (=> b!2014100 (= e!1272742 e!1272743)))

(assert (=> d!614712 e!1272742))

(assert (= b!2014101 b!2014102))

(assert (= b!2014100 b!2014101))

(assert (= (and d!614712 ((_ is Cons!22127) rules!3198)) b!2014100))

(declare-fun order!14085 () Int)

(declare-fun order!14083 () Int)

(declare-fun dynLambda!10927 (Int Int) Int)

(declare-fun dynLambda!10928 (Int Int) Int)

(assert (=> b!2014102 (< (dynLambda!10927 order!14083 (toValue!5643 (transformation!3974 (h!27528 rules!3198)))) (dynLambda!10928 order!14085 lambda!76210))))

(declare-fun order!14087 () Int)

(declare-fun dynLambda!10929 (Int Int) Int)

(assert (=> b!2014102 (< (dynLambda!10929 order!14087 (toChars!5502 (transformation!3974 (h!27528 rules!3198)))) (dynLambda!10928 order!14085 lambda!76210))))

(assert (=> d!614712 true))

(declare-fun lt!756277 () Bool)

(assert (=> d!614712 (= lt!756277 (forall!4702 tokens!598 lambda!76210))))

(declare-fun e!1272735 () Bool)

(assert (=> d!614712 (= lt!756277 e!1272735)))

(declare-fun res!883477 () Bool)

(assert (=> d!614712 (=> res!883477 e!1272735)))

(assert (=> d!614712 (= res!883477 (not ((_ is Cons!22126) tokens!598)))))

(assert (=> d!614712 (not (isEmpty!13732 rules!3198))))

(assert (=> d!614712 (= (rulesProduceEachTokenIndividuallyList!1318 thiss!23328 rules!3198 tokens!598) lt!756277)))

(declare-fun b!2014090 () Bool)

(declare-fun e!1272734 () Bool)

(assert (=> b!2014090 (= e!1272735 e!1272734)))

(declare-fun res!883478 () Bool)

(assert (=> b!2014090 (=> (not res!883478) (not e!1272734))))

(assert (=> b!2014090 (= res!883478 (rulesProduceIndividualToken!1759 thiss!23328 rules!3198 (h!27527 tokens!598)))))

(declare-fun b!2014091 () Bool)

(assert (=> b!2014091 (= e!1272734 (rulesProduceEachTokenIndividuallyList!1318 thiss!23328 rules!3198 (t!188037 tokens!598)))))

(assert (= (and d!614712 (not res!883477)) b!2014090))

(assert (= (and b!2014090 res!883478) b!2014091))

(declare-fun m!2447245 () Bool)

(assert (=> d!614712 m!2447245))

(assert (=> d!614712 m!2446487))

(assert (=> b!2014090 m!2446441))

(declare-fun m!2447247 () Bool)

(assert (=> b!2014091 m!2447247))

(assert (=> b!2013511 d!614712))

(declare-fun b!2014116 () Bool)

(declare-fun res!883481 () Bool)

(declare-fun e!1272752 () Bool)

(assert (=> b!2014116 (=> res!883481 e!1272752)))

(assert (=> b!2014116 (= res!883481 (not ((_ is IntegerValue!12332) (value!124850 (h!27527 tokens!598)))))))

(declare-fun e!1272753 () Bool)

(assert (=> b!2014116 (= e!1272753 e!1272752)))

(declare-fun b!2014117 () Bool)

(declare-fun e!1272751 () Bool)

(assert (=> b!2014117 (= e!1272751 e!1272753)))

(declare-fun c!325354 () Bool)

(assert (=> b!2014117 (= c!325354 ((_ is IntegerValue!12331) (value!124850 (h!27527 tokens!598))))))

(declare-fun b!2014118 () Bool)

(declare-fun inv!16 (TokenValue!4110) Bool)

(assert (=> b!2014118 (= e!1272751 (inv!16 (value!124850 (h!27527 tokens!598))))))

(declare-fun b!2014119 () Bool)

(declare-fun inv!15 (TokenValue!4110) Bool)

(assert (=> b!2014119 (= e!1272752 (inv!15 (value!124850 (h!27527 tokens!598))))))

(declare-fun d!614808 () Bool)

(declare-fun c!325355 () Bool)

(assert (=> d!614808 (= c!325355 ((_ is IntegerValue!12330) (value!124850 (h!27527 tokens!598))))))

(assert (=> d!614808 (= (inv!21 (value!124850 (h!27527 tokens!598))) e!1272751)))

(declare-fun b!2014115 () Bool)

(declare-fun inv!17 (TokenValue!4110) Bool)

(assert (=> b!2014115 (= e!1272753 (inv!17 (value!124850 (h!27527 tokens!598))))))

(assert (= (and d!614808 c!325355) b!2014118))

(assert (= (and d!614808 (not c!325355)) b!2014117))

(assert (= (and b!2014117 c!325354) b!2014115))

(assert (= (and b!2014117 (not c!325354)) b!2014116))

(assert (= (and b!2014116 (not res!883481)) b!2014119))

(declare-fun m!2447249 () Bool)

(assert (=> b!2014118 m!2447249))

(declare-fun m!2447251 () Bool)

(assert (=> b!2014119 m!2447251))

(declare-fun m!2447253 () Bool)

(assert (=> b!2014115 m!2447253))

(assert (=> b!2013521 d!614808))

(declare-fun d!614810 () Bool)

(assert (=> d!614810 (= (list!9015 lt!756069) (list!9018 (c!325221 lt!756069)))))

(declare-fun bs!419894 () Bool)

(assert (= bs!419894 d!614810))

(declare-fun m!2447255 () Bool)

(assert (=> bs!419894 m!2447255))

(assert (=> b!2013520 d!614810))

(declare-fun d!614812 () Bool)

(declare-fun e!1272756 () Bool)

(assert (=> d!614812 e!1272756))

(declare-fun res!883486 () Bool)

(assert (=> d!614812 (=> (not res!883486) (not e!1272756))))

(assert (=> d!614812 (= res!883486 (isDefined!3917 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 separatorToken!354)))))))

(declare-fun lt!756280 () Unit!36708)

(declare-fun choose!12270 (LexerInterface!3587 List!22209 List!22207 Token!7500) Unit!36708)

(assert (=> d!614812 (= lt!756280 (choose!12270 thiss!23328 rules!3198 lt!756056 separatorToken!354))))

(assert (=> d!614812 (rulesInvariant!3194 thiss!23328 rules!3198)))

(assert (=> d!614812 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!789 thiss!23328 rules!3198 lt!756056 separatorToken!354) lt!756280)))

(declare-fun b!2014124 () Bool)

(declare-fun res!883487 () Bool)

(assert (=> b!2014124 (=> (not res!883487) (not e!1272756))))

(assert (=> b!2014124 (= res!883487 (matchR!2665 (regex!3974 (get!7008 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 separatorToken!354))))) (list!9015 (charsOf!2514 separatorToken!354))))))

(declare-fun b!2014125 () Bool)

(assert (=> b!2014125 (= e!1272756 (= (rule!6201 separatorToken!354) (get!7008 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 separatorToken!354))))))))

(assert (= (and d!614812 res!883486) b!2014124))

(assert (= (and b!2014124 res!883487) b!2014125))

(assert (=> d!614812 m!2446517))

(assert (=> d!614812 m!2446517))

(declare-fun m!2447257 () Bool)

(assert (=> d!614812 m!2447257))

(declare-fun m!2447259 () Bool)

(assert (=> d!614812 m!2447259))

(assert (=> d!614812 m!2446551))

(assert (=> b!2014124 m!2446511))

(assert (=> b!2014124 m!2446529))

(assert (=> b!2014124 m!2446517))

(declare-fun m!2447261 () Bool)

(assert (=> b!2014124 m!2447261))

(assert (=> b!2014124 m!2446517))

(assert (=> b!2014124 m!2446511))

(assert (=> b!2014124 m!2446529))

(declare-fun m!2447263 () Bool)

(assert (=> b!2014124 m!2447263))

(assert (=> b!2014125 m!2446517))

(assert (=> b!2014125 m!2446517))

(assert (=> b!2014125 m!2447261))

(assert (=> b!2013520 d!614812))

(declare-fun d!614814 () Bool)

(declare-fun e!1272757 () Bool)

(assert (=> d!614814 e!1272757))

(declare-fun res!883488 () Bool)

(assert (=> d!614814 (=> (not res!883488) (not e!1272757))))

(assert (=> d!614814 (= res!883488 (isDefined!3917 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 (h!27527 tokens!598))))))))

(declare-fun lt!756281 () Unit!36708)

(assert (=> d!614814 (= lt!756281 (choose!12270 thiss!23328 rules!3198 lt!756072 (h!27527 tokens!598)))))

(assert (=> d!614814 (rulesInvariant!3194 thiss!23328 rules!3198)))

(assert (=> d!614814 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!789 thiss!23328 rules!3198 lt!756072 (h!27527 tokens!598)) lt!756281)))

(declare-fun b!2014126 () Bool)

(declare-fun res!883489 () Bool)

(assert (=> b!2014126 (=> (not res!883489) (not e!1272757))))

(assert (=> b!2014126 (= res!883489 (matchR!2665 (regex!3974 (get!7008 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 (h!27527 tokens!598)))))) (list!9015 (charsOf!2514 (h!27527 tokens!598)))))))

(declare-fun b!2014127 () Bool)

(assert (=> b!2014127 (= e!1272757 (= (rule!6201 (h!27527 tokens!598)) (get!7008 (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 (h!27527 tokens!598)))))))))

(assert (= (and d!614814 res!883488) b!2014126))

(assert (= (and b!2014126 res!883489) b!2014127))

(assert (=> d!614814 m!2446531))

(assert (=> d!614814 m!2446531))

(declare-fun m!2447265 () Bool)

(assert (=> d!614814 m!2447265))

(declare-fun m!2447267 () Bool)

(assert (=> d!614814 m!2447267))

(assert (=> d!614814 m!2446551))

(assert (=> b!2014126 m!2446521))

(declare-fun m!2447269 () Bool)

(assert (=> b!2014126 m!2447269))

(assert (=> b!2014126 m!2446531))

(declare-fun m!2447271 () Bool)

(assert (=> b!2014126 m!2447271))

(assert (=> b!2014126 m!2446531))

(assert (=> b!2014126 m!2446521))

(assert (=> b!2014126 m!2447269))

(declare-fun m!2447273 () Bool)

(assert (=> b!2014126 m!2447273))

(assert (=> b!2014127 m!2446531))

(assert (=> b!2014127 m!2446531))

(assert (=> b!2014127 m!2447271))

(assert (=> b!2013520 d!614814))

(declare-fun d!614816 () Bool)

(declare-fun isEmpty!13741 (Option!4629) Bool)

(assert (=> d!614816 (= (isDefined!3918 lt!756068) (not (isEmpty!13741 lt!756068)))))

(declare-fun bs!419895 () Bool)

(assert (= bs!419895 d!614816))

(declare-fun m!2447275 () Bool)

(assert (=> bs!419895 m!2447275))

(assert (=> b!2013520 d!614816))

(declare-fun b!2014130 () Bool)

(declare-fun res!883491 () Bool)

(declare-fun e!1272758 () Bool)

(assert (=> b!2014130 (=> (not res!883491) (not e!1272758))))

(declare-fun lt!756282 () List!22207)

(assert (=> b!2014130 (= res!883491 (= (size!17285 lt!756282) (+ (size!17285 lt!756072) (size!17285 lt!756060))))))

(declare-fun b!2014129 () Bool)

(declare-fun e!1272759 () List!22207)

(assert (=> b!2014129 (= e!1272759 (Cons!22125 (h!27526 lt!756072) (++!5969 (t!188036 lt!756072) lt!756060)))))

(declare-fun b!2014131 () Bool)

(assert (=> b!2014131 (= e!1272758 (or (not (= lt!756060 Nil!22125)) (= lt!756282 lt!756072)))))

(declare-fun b!2014128 () Bool)

(assert (=> b!2014128 (= e!1272759 lt!756060)))

(declare-fun d!614818 () Bool)

(assert (=> d!614818 e!1272758))

(declare-fun res!883490 () Bool)

(assert (=> d!614818 (=> (not res!883490) (not e!1272758))))

(assert (=> d!614818 (= res!883490 (= (content!3248 lt!756282) ((_ map or) (content!3248 lt!756072) (content!3248 lt!756060))))))

(assert (=> d!614818 (= lt!756282 e!1272759)))

(declare-fun c!325356 () Bool)

(assert (=> d!614818 (= c!325356 ((_ is Nil!22125) lt!756072))))

(assert (=> d!614818 (= (++!5969 lt!756072 lt!756060) lt!756282)))

(assert (= (and d!614818 c!325356) b!2014128))

(assert (= (and d!614818 (not c!325356)) b!2014129))

(assert (= (and d!614818 res!883490) b!2014130))

(assert (= (and b!2014130 res!883491) b!2014131))

(declare-fun m!2447277 () Bool)

(assert (=> b!2014130 m!2447277))

(assert (=> b!2014130 m!2446597))

(assert (=> b!2014130 m!2446629))

(declare-fun m!2447279 () Bool)

(assert (=> b!2014129 m!2447279))

(declare-fun m!2447281 () Bool)

(assert (=> d!614818 m!2447281))

(assert (=> d!614818 m!2446605))

(assert (=> d!614818 m!2446637))

(assert (=> b!2013520 d!614818))

(declare-fun bs!419898 () Bool)

(declare-fun b!2014221 () Bool)

(assert (= bs!419898 (and b!2014221 b!2013514)))

(declare-fun lambda!76213 () Int)

(assert (=> bs!419898 (not (= lambda!76213 lambda!76195))))

(declare-fun bs!419899 () Bool)

(assert (= bs!419899 (and b!2014221 d!614712)))

(assert (=> bs!419899 (= lambda!76213 lambda!76210)))

(declare-fun b!2014226 () Bool)

(declare-fun e!1272822 () Bool)

(assert (=> b!2014226 (= e!1272822 true)))

(declare-fun b!2014225 () Bool)

(declare-fun e!1272821 () Bool)

(assert (=> b!2014225 (= e!1272821 e!1272822)))

(declare-fun b!2014224 () Bool)

(declare-fun e!1272820 () Bool)

(assert (=> b!2014224 (= e!1272820 e!1272821)))

(assert (=> b!2014221 e!1272820))

(assert (= b!2014225 b!2014226))

(assert (= b!2014224 b!2014225))

(assert (= (and b!2014221 ((_ is Cons!22127) rules!3198)) b!2014224))

(assert (=> b!2014226 (< (dynLambda!10927 order!14083 (toValue!5643 (transformation!3974 (h!27528 rules!3198)))) (dynLambda!10928 order!14085 lambda!76213))))

(assert (=> b!2014226 (< (dynLambda!10929 order!14087 (toChars!5502 (transformation!3974 (h!27528 rules!3198)))) (dynLambda!10928 order!14085 lambda!76213))))

(assert (=> b!2014221 true))

(declare-fun d!614820 () Bool)

(declare-fun c!325368 () Bool)

(assert (=> d!614820 (= c!325368 ((_ is Cons!22126) (t!188037 tokens!598)))))

(declare-fun e!1272816 () List!22207)

(assert (=> d!614820 (= (printWithSeparatorTokenWhenNeededList!616 thiss!23328 rules!3198 (t!188037 tokens!598) separatorToken!354) e!1272816)))

(declare-fun bm!123221 () Bool)

(declare-fun call!123226 () BalanceConc!14604)

(declare-fun call!123230 () BalanceConc!14604)

(assert (=> bm!123221 (= call!123226 call!123230)))

(declare-fun bm!123222 () Bool)

(declare-fun call!123227 () List!22207)

(declare-fun call!123229 () List!22207)

(assert (=> bm!123222 (= call!123227 call!123229)))

(declare-fun b!2014216 () Bool)

(declare-fun e!1272818 () List!22207)

(declare-fun call!123228 () List!22207)

(declare-fun lt!756299 () List!22207)

(assert (=> b!2014216 (= e!1272818 (++!5969 call!123228 lt!756299))))

(declare-fun b!2014217 () Bool)

(declare-fun e!1272817 () List!22207)

(assert (=> b!2014217 (= e!1272817 call!123229)))

(declare-fun b!2014218 () Bool)

(assert (=> b!2014218 (= e!1272816 Nil!22125)))

(declare-fun b!2014219 () Bool)

(assert (=> b!2014219 (= e!1272817 (list!9015 (charsOf!2514 (h!27527 (t!188037 tokens!598)))))))

(declare-fun b!2014220 () Bool)

(declare-fun e!1272819 () List!22207)

(assert (=> b!2014220 (= e!1272819 call!123228)))

(assert (=> b!2014221 (= e!1272816 e!1272819)))

(declare-fun lt!756300 () Unit!36708)

(declare-fun forallContained!734 (List!22208 Int Token!7500) Unit!36708)

(assert (=> b!2014221 (= lt!756300 (forallContained!734 (t!188037 tokens!598) lambda!76213 (h!27527 (t!188037 tokens!598))))))

(assert (=> b!2014221 (= lt!756299 (printWithSeparatorTokenWhenNeededList!616 thiss!23328 rules!3198 (t!188037 (t!188037 tokens!598)) separatorToken!354))))

(declare-fun lt!756298 () Option!4629)

(assert (=> b!2014221 (= lt!756298 (maxPrefix!2023 thiss!23328 rules!3198 (++!5969 (list!9015 (charsOf!2514 (h!27527 (t!188037 tokens!598)))) lt!756299)))))

(declare-fun c!325369 () Bool)

(assert (=> b!2014221 (= c!325369 (and ((_ is Some!4628) lt!756298) (= (_1!11861 (v!26885 lt!756298)) (h!27527 (t!188037 tokens!598)))))))

(declare-fun bm!123223 () Bool)

(declare-fun c!325370 () Bool)

(assert (=> bm!123223 (= c!325370 c!325369)))

(assert (=> bm!123223 (= call!123228 (++!5969 e!1272817 (ite c!325369 lt!756299 call!123227)))))

(declare-fun bm!123224 () Bool)

(assert (=> bm!123224 (= call!123229 (list!9015 (ite c!325369 call!123230 call!123226)))))

(declare-fun b!2014222 () Bool)

(declare-fun c!325371 () Bool)

(assert (=> b!2014222 (= c!325371 (and ((_ is Some!4628) lt!756298) (not (= (_1!11861 (v!26885 lt!756298)) (h!27527 (t!188037 tokens!598))))))))

(assert (=> b!2014222 (= e!1272819 e!1272818)))

(declare-fun b!2014223 () Bool)

(assert (=> b!2014223 (= e!1272818 Nil!22125)))

(assert (=> b!2014223 (= (print!1549 thiss!23328 (singletonSeq!1950 (h!27527 (t!188037 tokens!598)))) (printTailRec!1055 thiss!23328 (singletonSeq!1950 (h!27527 (t!188037 tokens!598))) 0 (BalanceConc!14605 Empty!7394)))))

(declare-fun lt!756303 () Unit!36708)

(declare-fun Unit!36714 () Unit!36708)

(assert (=> b!2014223 (= lt!756303 Unit!36714)))

(declare-fun lt!756301 () Unit!36708)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!765 (LexerInterface!3587 List!22209 List!22207 List!22207) Unit!36708)

(assert (=> b!2014223 (= lt!756301 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!765 thiss!23328 rules!3198 call!123227 lt!756299))))

(assert (=> b!2014223 false))

(declare-fun lt!756302 () Unit!36708)

(declare-fun Unit!36715 () Unit!36708)

(assert (=> b!2014223 (= lt!756302 Unit!36715)))

(declare-fun bm!123225 () Bool)

(assert (=> bm!123225 (= call!123230 (charsOf!2514 (ite c!325369 (h!27527 (t!188037 tokens!598)) (ite c!325371 separatorToken!354 (h!27527 (t!188037 tokens!598))))))))

(assert (= (and d!614820 c!325368) b!2014221))

(assert (= (and d!614820 (not c!325368)) b!2014218))

(assert (= (and b!2014221 c!325369) b!2014220))

(assert (= (and b!2014221 (not c!325369)) b!2014222))

(assert (= (and b!2014222 c!325371) b!2014216))

(assert (= (and b!2014222 (not c!325371)) b!2014223))

(assert (= (or b!2014216 b!2014223) bm!123221))

(assert (= (or b!2014216 b!2014223) bm!123222))

(assert (= (or b!2014220 bm!123221) bm!123225))

(assert (= (or b!2014220 bm!123222) bm!123224))

(assert (= (or b!2014220 b!2014216) bm!123223))

(assert (= (and bm!123223 c!325370) b!2014217))

(assert (= (and bm!123223 (not c!325370)) b!2014219))

(declare-fun m!2447315 () Bool)

(assert (=> b!2014216 m!2447315))

(declare-fun m!2447317 () Bool)

(assert (=> b!2014221 m!2447317))

(declare-fun m!2447319 () Bool)

(assert (=> b!2014221 m!2447319))

(declare-fun m!2447321 () Bool)

(assert (=> b!2014221 m!2447321))

(assert (=> b!2014221 m!2447321))

(declare-fun m!2447323 () Bool)

(assert (=> b!2014221 m!2447323))

(assert (=> b!2014221 m!2447323))

(declare-fun m!2447325 () Bool)

(assert (=> b!2014221 m!2447325))

(declare-fun m!2447327 () Bool)

(assert (=> b!2014221 m!2447327))

(assert (=> b!2014221 m!2447319))

(declare-fun m!2447329 () Bool)

(assert (=> bm!123223 m!2447329))

(declare-fun m!2447331 () Bool)

(assert (=> b!2014223 m!2447331))

(assert (=> b!2014223 m!2447331))

(declare-fun m!2447333 () Bool)

(assert (=> b!2014223 m!2447333))

(assert (=> b!2014223 m!2447331))

(declare-fun m!2447335 () Bool)

(assert (=> b!2014223 m!2447335))

(declare-fun m!2447337 () Bool)

(assert (=> b!2014223 m!2447337))

(declare-fun m!2447339 () Bool)

(assert (=> bm!123224 m!2447339))

(declare-fun m!2447341 () Bool)

(assert (=> bm!123225 m!2447341))

(assert (=> b!2014219 m!2447319))

(assert (=> b!2014219 m!2447319))

(assert (=> b!2014219 m!2447321))

(assert (=> b!2013520 d!614820))

(declare-fun d!614826 () Bool)

(assert (=> d!614826 (= (list!9015 (charsOf!2514 separatorToken!354)) (list!9018 (c!325221 (charsOf!2514 separatorToken!354))))))

(declare-fun bs!419900 () Bool)

(assert (= bs!419900 d!614826))

(declare-fun m!2447343 () Bool)

(assert (=> bs!419900 m!2447343))

(assert (=> b!2013520 d!614826))

(declare-fun b!2014245 () Bool)

(declare-fun e!1272831 () Option!4629)

(declare-fun call!123233 () Option!4629)

(assert (=> b!2014245 (= e!1272831 call!123233)))

(declare-fun b!2014246 () Bool)

(declare-fun res!883517 () Bool)

(declare-fun e!1272829 () Bool)

(assert (=> b!2014246 (=> (not res!883517) (not e!1272829))))

(declare-fun lt!756314 () Option!4629)

(assert (=> b!2014246 (= res!883517 (= (++!5969 (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756314)))) (_2!11861 (get!7007 lt!756314))) (++!5969 lt!756072 lt!756060)))))

(declare-fun b!2014247 () Bool)

(declare-fun res!883515 () Bool)

(assert (=> b!2014247 (=> (not res!883515) (not e!1272829))))

(assert (=> b!2014247 (= res!883515 (< (size!17285 (_2!11861 (get!7007 lt!756314))) (size!17285 (++!5969 lt!756072 lt!756060))))))

(declare-fun b!2014248 () Bool)

(declare-fun res!883521 () Bool)

(assert (=> b!2014248 (=> (not res!883521) (not e!1272829))))

(assert (=> b!2014248 (= res!883521 (matchR!2665 (regex!3974 (rule!6201 (_1!11861 (get!7007 lt!756314)))) (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756314))))))))

(declare-fun b!2014249 () Bool)

(declare-fun e!1272830 () Bool)

(assert (=> b!2014249 (= e!1272830 e!1272829)))

(declare-fun res!883516 () Bool)

(assert (=> b!2014249 (=> (not res!883516) (not e!1272829))))

(assert (=> b!2014249 (= res!883516 (isDefined!3918 lt!756314))))

(declare-fun bm!123228 () Bool)

(declare-fun maxPrefixOneRule!1253 (LexerInterface!3587 Rule!7748 List!22207) Option!4629)

(assert (=> bm!123228 (= call!123233 (maxPrefixOneRule!1253 thiss!23328 (h!27528 rules!3198) (++!5969 lt!756072 lt!756060)))))

(declare-fun d!614828 () Bool)

(assert (=> d!614828 e!1272830))

(declare-fun res!883518 () Bool)

(assert (=> d!614828 (=> res!883518 e!1272830)))

(assert (=> d!614828 (= res!883518 (isEmpty!13741 lt!756314))))

(assert (=> d!614828 (= lt!756314 e!1272831)))

(declare-fun c!325374 () Bool)

(assert (=> d!614828 (= c!325374 (and ((_ is Cons!22127) rules!3198) ((_ is Nil!22127) (t!188038 rules!3198))))))

(declare-fun lt!756315 () Unit!36708)

(declare-fun lt!756316 () Unit!36708)

(assert (=> d!614828 (= lt!756315 lt!756316)))

(declare-fun isPrefix!1971 (List!22207 List!22207) Bool)

(assert (=> d!614828 (isPrefix!1971 (++!5969 lt!756072 lt!756060) (++!5969 lt!756072 lt!756060))))

(declare-fun lemmaIsPrefixRefl!1289 (List!22207 List!22207) Unit!36708)

(assert (=> d!614828 (= lt!756316 (lemmaIsPrefixRefl!1289 (++!5969 lt!756072 lt!756060) (++!5969 lt!756072 lt!756060)))))

(declare-fun rulesValidInductive!1370 (LexerInterface!3587 List!22209) Bool)

(assert (=> d!614828 (rulesValidInductive!1370 thiss!23328 rules!3198)))

(assert (=> d!614828 (= (maxPrefix!2023 thiss!23328 rules!3198 (++!5969 lt!756072 lt!756060)) lt!756314)))

(declare-fun b!2014250 () Bool)

(declare-fun res!883519 () Bool)

(assert (=> b!2014250 (=> (not res!883519) (not e!1272829))))

(declare-fun apply!5805 (TokenValueInjection!7804 BalanceConc!14604) TokenValue!4110)

(assert (=> b!2014250 (= res!883519 (= (value!124850 (_1!11861 (get!7007 lt!756314))) (apply!5805 (transformation!3974 (rule!6201 (_1!11861 (get!7007 lt!756314)))) (seqFromList!2828 (originalCharacters!4781 (_1!11861 (get!7007 lt!756314)))))))))

(declare-fun b!2014251 () Bool)

(declare-fun res!883520 () Bool)

(assert (=> b!2014251 (=> (not res!883520) (not e!1272829))))

(assert (=> b!2014251 (= res!883520 (= (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756314)))) (originalCharacters!4781 (_1!11861 (get!7007 lt!756314)))))))

(declare-fun b!2014252 () Bool)

(assert (=> b!2014252 (= e!1272829 (contains!4059 rules!3198 (rule!6201 (_1!11861 (get!7007 lt!756314)))))))

(declare-fun b!2014253 () Bool)

(declare-fun lt!756318 () Option!4629)

(declare-fun lt!756317 () Option!4629)

(assert (=> b!2014253 (= e!1272831 (ite (and ((_ is None!4628) lt!756318) ((_ is None!4628) lt!756317)) None!4628 (ite ((_ is None!4628) lt!756317) lt!756318 (ite ((_ is None!4628) lt!756318) lt!756317 (ite (>= (size!17282 (_1!11861 (v!26885 lt!756318))) (size!17282 (_1!11861 (v!26885 lt!756317)))) lt!756318 lt!756317)))))))

(assert (=> b!2014253 (= lt!756318 call!123233)))

(assert (=> b!2014253 (= lt!756317 (maxPrefix!2023 thiss!23328 (t!188038 rules!3198) (++!5969 lt!756072 lt!756060)))))

(assert (= (and d!614828 c!325374) b!2014245))

(assert (= (and d!614828 (not c!325374)) b!2014253))

(assert (= (or b!2014245 b!2014253) bm!123228))

(assert (= (and d!614828 (not res!883518)) b!2014249))

(assert (= (and b!2014249 res!883516) b!2014251))

(assert (= (and b!2014251 res!883520) b!2014247))

(assert (= (and b!2014247 res!883515) b!2014246))

(assert (= (and b!2014246 res!883517) b!2014250))

(assert (= (and b!2014250 res!883519) b!2014248))

(assert (= (and b!2014248 res!883521) b!2014252))

(declare-fun m!2447345 () Bool)

(assert (=> b!2014251 m!2447345))

(declare-fun m!2447347 () Bool)

(assert (=> b!2014251 m!2447347))

(assert (=> b!2014251 m!2447347))

(declare-fun m!2447349 () Bool)

(assert (=> b!2014251 m!2447349))

(assert (=> bm!123228 m!2446505))

(declare-fun m!2447351 () Bool)

(assert (=> bm!123228 m!2447351))

(assert (=> b!2014252 m!2447345))

(declare-fun m!2447353 () Bool)

(assert (=> b!2014252 m!2447353))

(assert (=> b!2014247 m!2447345))

(declare-fun m!2447355 () Bool)

(assert (=> b!2014247 m!2447355))

(assert (=> b!2014247 m!2446505))

(declare-fun m!2447357 () Bool)

(assert (=> b!2014247 m!2447357))

(assert (=> b!2014253 m!2446505))

(declare-fun m!2447359 () Bool)

(assert (=> b!2014253 m!2447359))

(assert (=> b!2014246 m!2447345))

(assert (=> b!2014246 m!2447347))

(assert (=> b!2014246 m!2447347))

(assert (=> b!2014246 m!2447349))

(assert (=> b!2014246 m!2447349))

(declare-fun m!2447361 () Bool)

(assert (=> b!2014246 m!2447361))

(assert (=> b!2014250 m!2447345))

(declare-fun m!2447363 () Bool)

(assert (=> b!2014250 m!2447363))

(assert (=> b!2014250 m!2447363))

(declare-fun m!2447365 () Bool)

(assert (=> b!2014250 m!2447365))

(declare-fun m!2447367 () Bool)

(assert (=> b!2014249 m!2447367))

(declare-fun m!2447369 () Bool)

(assert (=> d!614828 m!2447369))

(assert (=> d!614828 m!2446505))

(assert (=> d!614828 m!2446505))

(declare-fun m!2447371 () Bool)

(assert (=> d!614828 m!2447371))

(assert (=> d!614828 m!2446505))

(assert (=> d!614828 m!2446505))

(declare-fun m!2447373 () Bool)

(assert (=> d!614828 m!2447373))

(declare-fun m!2447375 () Bool)

(assert (=> d!614828 m!2447375))

(assert (=> b!2014248 m!2447345))

(assert (=> b!2014248 m!2447347))

(assert (=> b!2014248 m!2447347))

(assert (=> b!2014248 m!2447349))

(assert (=> b!2014248 m!2447349))

(declare-fun m!2447377 () Bool)

(assert (=> b!2014248 m!2447377))

(assert (=> b!2013520 d!614828))

(declare-fun d!614830 () Bool)

(declare-fun lt!756321 () BalanceConc!14604)

(assert (=> d!614830 (= (list!9015 lt!756321) (originalCharacters!4781 separatorToken!354))))

(assert (=> d!614830 (= lt!756321 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (value!124850 separatorToken!354)))))

(assert (=> d!614830 (= (charsOf!2514 separatorToken!354) lt!756321)))

(declare-fun b_lambda!67389 () Bool)

(assert (=> (not b_lambda!67389) (not d!614830)))

(assert (=> d!614830 t!188041))

(declare-fun b_and!159431 () Bool)

(assert (= b_and!159369 (and (=> t!188041 result!150912) b_and!159431)))

(assert (=> d!614830 t!188043))

(declare-fun b_and!159433 () Bool)

(assert (= b_and!159371 (and (=> t!188043 result!150916) b_and!159433)))

(assert (=> d!614830 t!188045))

(declare-fun b_and!159435 () Bool)

(assert (= b_and!159373 (and (=> t!188045 result!150918) b_and!159435)))

(declare-fun m!2447379 () Bool)

(assert (=> d!614830 m!2447379))

(assert (=> d!614830 m!2446589))

(assert (=> b!2013520 d!614830))

(declare-fun d!614832 () Bool)

(declare-fun isEmpty!13744 (Option!4630) Bool)

(assert (=> d!614832 (= (isDefined!3917 lt!756071) (not (isEmpty!13744 lt!756071)))))

(declare-fun bs!419901 () Bool)

(assert (= bs!419901 d!614832))

(declare-fun m!2447381 () Bool)

(assert (=> bs!419901 m!2447381))

(assert (=> b!2013520 d!614832))

(declare-fun d!614834 () Bool)

(declare-fun e!1272841 () Bool)

(assert (=> d!614834 e!1272841))

(declare-fun res!883526 () Bool)

(assert (=> d!614834 (=> res!883526 e!1272841)))

(declare-fun lt!756328 () Option!4630)

(assert (=> d!614834 (= res!883526 (isEmpty!13744 lt!756328))))

(declare-fun e!1272840 () Option!4630)

(assert (=> d!614834 (= lt!756328 e!1272840)))

(declare-fun c!325379 () Bool)

(assert (=> d!614834 (= c!325379 (and ((_ is Cons!22127) rules!3198) (= (tag!4446 (h!27528 rules!3198)) (tag!4446 (rule!6201 separatorToken!354)))))))

(assert (=> d!614834 (rulesInvariant!3194 thiss!23328 rules!3198)))

(assert (=> d!614834 (= (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 separatorToken!354))) lt!756328)))

(declare-fun b!2014266 () Bool)

(declare-fun e!1272843 () Option!4630)

(assert (=> b!2014266 (= e!1272843 None!4629)))

(declare-fun b!2014267 () Bool)

(declare-fun e!1272842 () Bool)

(assert (=> b!2014267 (= e!1272841 e!1272842)))

(declare-fun res!883527 () Bool)

(assert (=> b!2014267 (=> (not res!883527) (not e!1272842))))

(assert (=> b!2014267 (= res!883527 (contains!4059 rules!3198 (get!7008 lt!756328)))))

(declare-fun b!2014268 () Bool)

(assert (=> b!2014268 (= e!1272840 (Some!4629 (h!27528 rules!3198)))))

(declare-fun b!2014269 () Bool)

(declare-fun lt!756330 () Unit!36708)

(declare-fun lt!756329 () Unit!36708)

(assert (=> b!2014269 (= lt!756330 lt!756329)))

(assert (=> b!2014269 (rulesInvariant!3194 thiss!23328 (t!188038 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!296 (LexerInterface!3587 Rule!7748 List!22209) Unit!36708)

(assert (=> b!2014269 (= lt!756329 (lemmaInvariantOnRulesThenOnTail!296 thiss!23328 (h!27528 rules!3198) (t!188038 rules!3198)))))

(assert (=> b!2014269 (= e!1272843 (getRuleFromTag!789 thiss!23328 (t!188038 rules!3198) (tag!4446 (rule!6201 separatorToken!354))))))

(declare-fun b!2014270 () Bool)

(assert (=> b!2014270 (= e!1272842 (= (tag!4446 (get!7008 lt!756328)) (tag!4446 (rule!6201 separatorToken!354))))))

(declare-fun b!2014271 () Bool)

(assert (=> b!2014271 (= e!1272840 e!1272843)))

(declare-fun c!325380 () Bool)

(assert (=> b!2014271 (= c!325380 (and ((_ is Cons!22127) rules!3198) (not (= (tag!4446 (h!27528 rules!3198)) (tag!4446 (rule!6201 separatorToken!354))))))))

(assert (= (and d!614834 c!325379) b!2014268))

(assert (= (and d!614834 (not c!325379)) b!2014271))

(assert (= (and b!2014271 c!325380) b!2014269))

(assert (= (and b!2014271 (not c!325380)) b!2014266))

(assert (= (and d!614834 (not res!883526)) b!2014267))

(assert (= (and b!2014267 res!883527) b!2014270))

(declare-fun m!2447383 () Bool)

(assert (=> d!614834 m!2447383))

(assert (=> d!614834 m!2446551))

(declare-fun m!2447385 () Bool)

(assert (=> b!2014267 m!2447385))

(assert (=> b!2014267 m!2447385))

(declare-fun m!2447387 () Bool)

(assert (=> b!2014267 m!2447387))

(declare-fun m!2447389 () Bool)

(assert (=> b!2014269 m!2447389))

(declare-fun m!2447391 () Bool)

(assert (=> b!2014269 m!2447391))

(declare-fun m!2447393 () Bool)

(assert (=> b!2014269 m!2447393))

(assert (=> b!2014270 m!2447385))

(assert (=> b!2013520 d!614834))

(declare-fun d!614836 () Bool)

(declare-fun e!1272845 () Bool)

(assert (=> d!614836 e!1272845))

(declare-fun res!883528 () Bool)

(assert (=> d!614836 (=> res!883528 e!1272845)))

(declare-fun lt!756331 () Option!4630)

(assert (=> d!614836 (= res!883528 (isEmpty!13744 lt!756331))))

(declare-fun e!1272844 () Option!4630)

(assert (=> d!614836 (= lt!756331 e!1272844)))

(declare-fun c!325381 () Bool)

(assert (=> d!614836 (= c!325381 (and ((_ is Cons!22127) rules!3198) (= (tag!4446 (h!27528 rules!3198)) (tag!4446 (rule!6201 (h!27527 tokens!598))))))))

(assert (=> d!614836 (rulesInvariant!3194 thiss!23328 rules!3198)))

(assert (=> d!614836 (= (getRuleFromTag!789 thiss!23328 rules!3198 (tag!4446 (rule!6201 (h!27527 tokens!598)))) lt!756331)))

(declare-fun b!2014272 () Bool)

(declare-fun e!1272847 () Option!4630)

(assert (=> b!2014272 (= e!1272847 None!4629)))

(declare-fun b!2014273 () Bool)

(declare-fun e!1272846 () Bool)

(assert (=> b!2014273 (= e!1272845 e!1272846)))

(declare-fun res!883529 () Bool)

(assert (=> b!2014273 (=> (not res!883529) (not e!1272846))))

(assert (=> b!2014273 (= res!883529 (contains!4059 rules!3198 (get!7008 lt!756331)))))

(declare-fun b!2014274 () Bool)

(assert (=> b!2014274 (= e!1272844 (Some!4629 (h!27528 rules!3198)))))

(declare-fun b!2014275 () Bool)

(declare-fun lt!756333 () Unit!36708)

(declare-fun lt!756332 () Unit!36708)

(assert (=> b!2014275 (= lt!756333 lt!756332)))

(assert (=> b!2014275 (rulesInvariant!3194 thiss!23328 (t!188038 rules!3198))))

(assert (=> b!2014275 (= lt!756332 (lemmaInvariantOnRulesThenOnTail!296 thiss!23328 (h!27528 rules!3198) (t!188038 rules!3198)))))

(assert (=> b!2014275 (= e!1272847 (getRuleFromTag!789 thiss!23328 (t!188038 rules!3198) (tag!4446 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun b!2014276 () Bool)

(assert (=> b!2014276 (= e!1272846 (= (tag!4446 (get!7008 lt!756331)) (tag!4446 (rule!6201 (h!27527 tokens!598)))))))

(declare-fun b!2014277 () Bool)

(assert (=> b!2014277 (= e!1272844 e!1272847)))

(declare-fun c!325382 () Bool)

(assert (=> b!2014277 (= c!325382 (and ((_ is Cons!22127) rules!3198) (not (= (tag!4446 (h!27528 rules!3198)) (tag!4446 (rule!6201 (h!27527 tokens!598)))))))))

(assert (= (and d!614836 c!325381) b!2014274))

(assert (= (and d!614836 (not c!325381)) b!2014277))

(assert (= (and b!2014277 c!325382) b!2014275))

(assert (= (and b!2014277 (not c!325382)) b!2014272))

(assert (= (and d!614836 (not res!883528)) b!2014273))

(assert (= (and b!2014273 res!883529) b!2014276))

(declare-fun m!2447395 () Bool)

(assert (=> d!614836 m!2447395))

(assert (=> d!614836 m!2446551))

(declare-fun m!2447397 () Bool)

(assert (=> b!2014273 m!2447397))

(assert (=> b!2014273 m!2447397))

(declare-fun m!2447399 () Bool)

(assert (=> b!2014273 m!2447399))

(assert (=> b!2014275 m!2447389))

(assert (=> b!2014275 m!2447391))

(declare-fun m!2447401 () Bool)

(assert (=> b!2014275 m!2447401))

(assert (=> b!2014276 m!2447397))

(assert (=> b!2013520 d!614836))

(declare-fun d!614838 () Bool)

(assert (=> d!614838 (= (isDefined!3917 lt!756062) (not (isEmpty!13744 lt!756062)))))

(declare-fun bs!419902 () Bool)

(assert (= bs!419902 d!614838))

(declare-fun m!2447403 () Bool)

(assert (=> bs!419902 m!2447403))

(assert (=> b!2013520 d!614838))

(declare-fun b!2014278 () Bool)

(declare-fun e!1272850 () Option!4629)

(declare-fun call!123234 () Option!4629)

(assert (=> b!2014278 (= e!1272850 call!123234)))

(declare-fun b!2014279 () Bool)

(declare-fun res!883532 () Bool)

(declare-fun e!1272848 () Bool)

(assert (=> b!2014279 (=> (not res!883532) (not e!1272848))))

(declare-fun lt!756334 () Option!4629)

(assert (=> b!2014279 (= res!883532 (= (++!5969 (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756334)))) (_2!11861 (get!7007 lt!756334))) lt!756072))))

(declare-fun b!2014280 () Bool)

(declare-fun res!883530 () Bool)

(assert (=> b!2014280 (=> (not res!883530) (not e!1272848))))

(assert (=> b!2014280 (= res!883530 (< (size!17285 (_2!11861 (get!7007 lt!756334))) (size!17285 lt!756072)))))

(declare-fun b!2014281 () Bool)

(declare-fun res!883536 () Bool)

(assert (=> b!2014281 (=> (not res!883536) (not e!1272848))))

(assert (=> b!2014281 (= res!883536 (matchR!2665 (regex!3974 (rule!6201 (_1!11861 (get!7007 lt!756334)))) (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756334))))))))

(declare-fun b!2014282 () Bool)

(declare-fun e!1272849 () Bool)

(assert (=> b!2014282 (= e!1272849 e!1272848)))

(declare-fun res!883531 () Bool)

(assert (=> b!2014282 (=> (not res!883531) (not e!1272848))))

(assert (=> b!2014282 (= res!883531 (isDefined!3918 lt!756334))))

(declare-fun bm!123229 () Bool)

(assert (=> bm!123229 (= call!123234 (maxPrefixOneRule!1253 thiss!23328 (h!27528 rules!3198) lt!756072))))

(declare-fun d!614840 () Bool)

(assert (=> d!614840 e!1272849))

(declare-fun res!883533 () Bool)

(assert (=> d!614840 (=> res!883533 e!1272849)))

(assert (=> d!614840 (= res!883533 (isEmpty!13741 lt!756334))))

(assert (=> d!614840 (= lt!756334 e!1272850)))

(declare-fun c!325383 () Bool)

(assert (=> d!614840 (= c!325383 (and ((_ is Cons!22127) rules!3198) ((_ is Nil!22127) (t!188038 rules!3198))))))

(declare-fun lt!756335 () Unit!36708)

(declare-fun lt!756336 () Unit!36708)

(assert (=> d!614840 (= lt!756335 lt!756336)))

(assert (=> d!614840 (isPrefix!1971 lt!756072 lt!756072)))

(assert (=> d!614840 (= lt!756336 (lemmaIsPrefixRefl!1289 lt!756072 lt!756072))))

(assert (=> d!614840 (rulesValidInductive!1370 thiss!23328 rules!3198)))

(assert (=> d!614840 (= (maxPrefix!2023 thiss!23328 rules!3198 lt!756072) lt!756334)))

(declare-fun b!2014283 () Bool)

(declare-fun res!883534 () Bool)

(assert (=> b!2014283 (=> (not res!883534) (not e!1272848))))

(assert (=> b!2014283 (= res!883534 (= (value!124850 (_1!11861 (get!7007 lt!756334))) (apply!5805 (transformation!3974 (rule!6201 (_1!11861 (get!7007 lt!756334)))) (seqFromList!2828 (originalCharacters!4781 (_1!11861 (get!7007 lt!756334)))))))))

(declare-fun b!2014284 () Bool)

(declare-fun res!883535 () Bool)

(assert (=> b!2014284 (=> (not res!883535) (not e!1272848))))

(assert (=> b!2014284 (= res!883535 (= (list!9015 (charsOf!2514 (_1!11861 (get!7007 lt!756334)))) (originalCharacters!4781 (_1!11861 (get!7007 lt!756334)))))))

(declare-fun b!2014285 () Bool)

(assert (=> b!2014285 (= e!1272848 (contains!4059 rules!3198 (rule!6201 (_1!11861 (get!7007 lt!756334)))))))

(declare-fun b!2014286 () Bool)

(declare-fun lt!756338 () Option!4629)

(declare-fun lt!756337 () Option!4629)

(assert (=> b!2014286 (= e!1272850 (ite (and ((_ is None!4628) lt!756338) ((_ is None!4628) lt!756337)) None!4628 (ite ((_ is None!4628) lt!756337) lt!756338 (ite ((_ is None!4628) lt!756338) lt!756337 (ite (>= (size!17282 (_1!11861 (v!26885 lt!756338))) (size!17282 (_1!11861 (v!26885 lt!756337)))) lt!756338 lt!756337)))))))

(assert (=> b!2014286 (= lt!756338 call!123234)))

(assert (=> b!2014286 (= lt!756337 (maxPrefix!2023 thiss!23328 (t!188038 rules!3198) lt!756072))))

(assert (= (and d!614840 c!325383) b!2014278))

(assert (= (and d!614840 (not c!325383)) b!2014286))

(assert (= (or b!2014278 b!2014286) bm!123229))

(assert (= (and d!614840 (not res!883533)) b!2014282))

(assert (= (and b!2014282 res!883531) b!2014284))

(assert (= (and b!2014284 res!883535) b!2014280))

(assert (= (and b!2014280 res!883530) b!2014279))

(assert (= (and b!2014279 res!883532) b!2014283))

(assert (= (and b!2014283 res!883534) b!2014281))

(assert (= (and b!2014281 res!883536) b!2014285))

(declare-fun m!2447405 () Bool)

(assert (=> b!2014284 m!2447405))

(declare-fun m!2447407 () Bool)

(assert (=> b!2014284 m!2447407))

(assert (=> b!2014284 m!2447407))

(declare-fun m!2447409 () Bool)

(assert (=> b!2014284 m!2447409))

(declare-fun m!2447411 () Bool)

(assert (=> bm!123229 m!2447411))

(assert (=> b!2014285 m!2447405))

(declare-fun m!2447413 () Bool)

(assert (=> b!2014285 m!2447413))

(assert (=> b!2014280 m!2447405))

(declare-fun m!2447415 () Bool)

(assert (=> b!2014280 m!2447415))

(assert (=> b!2014280 m!2446597))

(declare-fun m!2447417 () Bool)

(assert (=> b!2014286 m!2447417))

(assert (=> b!2014279 m!2447405))

(assert (=> b!2014279 m!2447407))

(assert (=> b!2014279 m!2447407))

(assert (=> b!2014279 m!2447409))

(assert (=> b!2014279 m!2447409))

(declare-fun m!2447419 () Bool)

(assert (=> b!2014279 m!2447419))

(assert (=> b!2014283 m!2447405))

(declare-fun m!2447421 () Bool)

(assert (=> b!2014283 m!2447421))

(assert (=> b!2014283 m!2447421))

(declare-fun m!2447423 () Bool)

(assert (=> b!2014283 m!2447423))

(declare-fun m!2447425 () Bool)

(assert (=> b!2014282 m!2447425))

(declare-fun m!2447427 () Bool)

(assert (=> d!614840 m!2447427))

(declare-fun m!2447429 () Bool)

(assert (=> d!614840 m!2447429))

(declare-fun m!2447431 () Bool)

(assert (=> d!614840 m!2447431))

(assert (=> d!614840 m!2447375))

(assert (=> b!2014281 m!2447405))

(assert (=> b!2014281 m!2447407))

(assert (=> b!2014281 m!2447407))

(assert (=> b!2014281 m!2447409))

(assert (=> b!2014281 m!2447409))

(declare-fun m!2447433 () Bool)

(assert (=> b!2014281 m!2447433))

(assert (=> b!2013520 d!614840))

(declare-fun d!614842 () Bool)

(declare-fun lt!756339 () BalanceConc!14604)

(assert (=> d!614842 (= (list!9015 lt!756339) (originalCharacters!4781 (h!27527 tokens!598)))))

(assert (=> d!614842 (= lt!756339 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (value!124850 (h!27527 tokens!598))))))

(assert (=> d!614842 (= (charsOf!2514 (h!27527 tokens!598)) lt!756339)))

(declare-fun b_lambda!67391 () Bool)

(assert (=> (not b_lambda!67391) (not d!614842)))

(declare-fun tb!126001 () Bool)

(declare-fun t!188109 () Bool)

(assert (=> (and b!2013508 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188109) tb!126001))

(declare-fun b!2014287 () Bool)

(declare-fun e!1272851 () Bool)

(declare-fun tp!600473 () Bool)

(assert (=> b!2014287 (= e!1272851 (and (inv!29292 (c!325221 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (value!124850 (h!27527 tokens!598))))) tp!600473))))

(declare-fun result!150982 () Bool)

(assert (=> tb!126001 (= result!150982 (and (inv!29293 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (value!124850 (h!27527 tokens!598)))) e!1272851))))

(assert (= tb!126001 b!2014287))

(declare-fun m!2447435 () Bool)

(assert (=> b!2014287 m!2447435))

(declare-fun m!2447437 () Bool)

(assert (=> tb!126001 m!2447437))

(assert (=> d!614842 t!188109))

(declare-fun b_and!159437 () Bool)

(assert (= b_and!159431 (and (=> t!188109 result!150982) b_and!159437)))

(declare-fun t!188111 () Bool)

(declare-fun tb!126003 () Bool)

(assert (=> (and b!2013516 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188111) tb!126003))

(declare-fun result!150984 () Bool)

(assert (= result!150984 result!150982))

(assert (=> d!614842 t!188111))

(declare-fun b_and!159439 () Bool)

(assert (= b_and!159433 (and (=> t!188111 result!150984) b_and!159439)))

(declare-fun tb!126005 () Bool)

(declare-fun t!188113 () Bool)

(assert (=> (and b!2013515 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188113) tb!126005))

(declare-fun result!150986 () Bool)

(assert (= result!150986 result!150982))

(assert (=> d!614842 t!188113))

(declare-fun b_and!159441 () Bool)

(assert (= b_and!159435 (and (=> t!188113 result!150986) b_and!159441)))

(declare-fun m!2447439 () Bool)

(assert (=> d!614842 m!2447439))

(declare-fun m!2447441 () Bool)

(assert (=> d!614842 m!2447441))

(assert (=> b!2013520 d!614842))

(declare-fun b!2014294 () Bool)

(declare-fun e!1272856 () Bool)

(assert (=> b!2014294 (= e!1272856 true)))

(declare-fun d!614844 () Bool)

(assert (=> d!614844 e!1272856))

(assert (= d!614844 b!2014294))

(declare-fun lambda!76216 () Int)

(declare-fun order!14089 () Int)

(declare-fun dynLambda!10930 (Int Int) Int)

(assert (=> b!2014294 (< (dynLambda!10927 order!14083 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) (dynLambda!10930 order!14089 lambda!76216))))

(assert (=> b!2014294 (< (dynLambda!10929 order!14087 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) (dynLambda!10930 order!14089 lambda!76216))))

(declare-fun dynLambda!10931 (Int BalanceConc!14604) TokenValue!4110)

(assert (=> d!614844 (= (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) lt!756069) (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598)))))))

(declare-fun lt!756342 () Unit!36708)

(declare-fun Forall2of!231 (Int BalanceConc!14604 BalanceConc!14604) Unit!36708)

(assert (=> d!614844 (= lt!756342 (Forall2of!231 lambda!76216 lt!756069 (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598)))))))

(assert (=> d!614844 (= (list!9015 lt!756069) (list!9015 (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598)))))))

(assert (=> d!614844 (= (lemmaEqSameImage!660 (transformation!3974 (rule!6201 (h!27527 tokens!598))) lt!756069 (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598)))) lt!756342)))

(declare-fun b_lambda!67393 () Bool)

(assert (=> (not b_lambda!67393) (not d!614844)))

(declare-fun tb!126007 () Bool)

(declare-fun t!188115 () Bool)

(assert (=> (and b!2013508 (= (toValue!5643 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188115) tb!126007))

(declare-fun result!150988 () Bool)

(assert (=> tb!126007 (= result!150988 (inv!21 (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) lt!756069)))))

(declare-fun m!2447443 () Bool)

(assert (=> tb!126007 m!2447443))

(assert (=> d!614844 t!188115))

(declare-fun b_and!159443 () Bool)

(assert (= b_and!159357 (and (=> t!188115 result!150988) b_and!159443)))

(declare-fun t!188117 () Bool)

(declare-fun tb!126009 () Bool)

(assert (=> (and b!2013516 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188117) tb!126009))

(declare-fun result!150992 () Bool)

(assert (= result!150992 result!150988))

(assert (=> d!614844 t!188117))

(declare-fun b_and!159445 () Bool)

(assert (= b_and!159361 (and (=> t!188117 result!150992) b_and!159445)))

(declare-fun tb!126011 () Bool)

(declare-fun t!188119 () Bool)

(assert (=> (and b!2013515 (= (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188119) tb!126011))

(declare-fun result!150994 () Bool)

(assert (= result!150994 result!150988))

(assert (=> d!614844 t!188119))

(declare-fun b_and!159447 () Bool)

(assert (= b_and!159365 (and (=> t!188119 result!150994) b_and!159447)))

(declare-fun b_lambda!67395 () Bool)

(assert (=> (not b_lambda!67395) (not d!614844)))

(declare-fun t!188121 () Bool)

(declare-fun tb!126013 () Bool)

(assert (=> (and b!2013508 (= (toValue!5643 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188121) tb!126013))

(declare-fun result!150996 () Bool)

(assert (=> tb!126013 (= result!150996 (inv!21 (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598))))))))

(declare-fun m!2447445 () Bool)

(assert (=> tb!126013 m!2447445))

(assert (=> d!614844 t!188121))

(declare-fun b_and!159449 () Bool)

(assert (= b_and!159443 (and (=> t!188121 result!150996) b_and!159449)))

(declare-fun t!188123 () Bool)

(declare-fun tb!126015 () Bool)

(assert (=> (and b!2013516 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188123) tb!126015))

(declare-fun result!150998 () Bool)

(assert (= result!150998 result!150996))

(assert (=> d!614844 t!188123))

(declare-fun b_and!159451 () Bool)

(assert (= b_and!159445 (and (=> t!188123 result!150998) b_and!159451)))

(declare-fun tb!126017 () Bool)

(declare-fun t!188125 () Bool)

(assert (=> (and b!2013515 (= (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188125) tb!126017))

(declare-fun result!151000 () Bool)

(assert (= result!151000 result!150996))

(assert (=> d!614844 t!188125))

(declare-fun b_and!159453 () Bool)

(assert (= b_and!159447 (and (=> t!188125 result!151000) b_and!159453)))

(assert (=> d!614844 m!2446501))

(declare-fun m!2447447 () Bool)

(assert (=> d!614844 m!2447447))

(declare-fun m!2447449 () Bool)

(assert (=> d!614844 m!2447449))

(assert (=> d!614844 m!2446501))

(declare-fun m!2447451 () Bool)

(assert (=> d!614844 m!2447451))

(assert (=> d!614844 m!2446501))

(declare-fun m!2447453 () Bool)

(assert (=> d!614844 m!2447453))

(assert (=> d!614844 m!2446533))

(assert (=> b!2013520 d!614844))

(declare-fun b!2014301 () Bool)

(declare-fun e!1272863 () Bool)

(assert (=> b!2014301 (= e!1272863 true)))

(declare-fun d!614846 () Bool)

(assert (=> d!614846 e!1272863))

(assert (= d!614846 b!2014301))

(declare-fun order!14091 () Int)

(declare-fun lambda!76219 () Int)

(declare-fun dynLambda!10932 (Int Int) Int)

(assert (=> b!2014301 (< (dynLambda!10927 order!14083 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) (dynLambda!10932 order!14091 lambda!76219))))

(assert (=> b!2014301 (< (dynLambda!10929 order!14087 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) (dynLambda!10932 order!14091 lambda!76219))))

(assert (=> d!614846 (= (list!9015 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) lt!756069))) (list!9015 lt!756069))))

(declare-fun lt!756345 () Unit!36708)

(declare-fun ForallOf!435 (Int BalanceConc!14604) Unit!36708)

(assert (=> d!614846 (= lt!756345 (ForallOf!435 lambda!76219 lt!756069))))

(assert (=> d!614846 (= (lemmaSemiInverse!931 (transformation!3974 (rule!6201 (h!27527 tokens!598))) lt!756069) lt!756345)))

(declare-fun b_lambda!67397 () Bool)

(assert (=> (not b_lambda!67397) (not d!614846)))

(declare-fun tb!126019 () Bool)

(declare-fun t!188127 () Bool)

(assert (=> (and b!2013508 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188127) tb!126019))

(declare-fun b!2014302 () Bool)

(declare-fun tp!600474 () Bool)

(declare-fun e!1272864 () Bool)

(assert (=> b!2014302 (= e!1272864 (and (inv!29292 (c!325221 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) lt!756069)))) tp!600474))))

(declare-fun result!151002 () Bool)

(assert (=> tb!126019 (= result!151002 (and (inv!29293 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (dynLambda!10931 (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) lt!756069))) e!1272864))))

(assert (= tb!126019 b!2014302))

(declare-fun m!2447455 () Bool)

(assert (=> b!2014302 m!2447455))

(declare-fun m!2447457 () Bool)

(assert (=> tb!126019 m!2447457))

(assert (=> d!614846 t!188127))

(declare-fun b_and!159455 () Bool)

(assert (= b_and!159437 (and (=> t!188127 result!151002) b_and!159455)))

(declare-fun t!188129 () Bool)

(declare-fun tb!126021 () Bool)

(assert (=> (and b!2013516 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188129) tb!126021))

(declare-fun result!151004 () Bool)

(assert (= result!151004 result!151002))

(assert (=> d!614846 t!188129))

(declare-fun b_and!159457 () Bool)

(assert (= b_and!159439 (and (=> t!188129 result!151004) b_and!159457)))

(declare-fun t!188131 () Bool)

(declare-fun tb!126023 () Bool)

(assert (=> (and b!2013515 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188131) tb!126023))

(declare-fun result!151006 () Bool)

(assert (= result!151006 result!151002))

(assert (=> d!614846 t!188131))

(declare-fun b_and!159459 () Bool)

(assert (= b_and!159441 (and (=> t!188131 result!151006) b_and!159459)))

(declare-fun b_lambda!67399 () Bool)

(assert (=> (not b_lambda!67399) (not d!614846)))

(assert (=> d!614846 t!188115))

(declare-fun b_and!159461 () Bool)

(assert (= b_and!159449 (and (=> t!188115 result!150988) b_and!159461)))

(assert (=> d!614846 t!188117))

(declare-fun b_and!159463 () Bool)

(assert (= b_and!159451 (and (=> t!188117 result!150992) b_and!159463)))

(assert (=> d!614846 t!188119))

(declare-fun b_and!159465 () Bool)

(assert (= b_and!159453 (and (=> t!188119 result!150994) b_and!159465)))

(assert (=> d!614846 m!2446533))

(assert (=> d!614846 m!2447449))

(assert (=> d!614846 m!2447449))

(declare-fun m!2447459 () Bool)

(assert (=> d!614846 m!2447459))

(declare-fun m!2447461 () Bool)

(assert (=> d!614846 m!2447461))

(assert (=> d!614846 m!2447459))

(declare-fun m!2447463 () Bool)

(assert (=> d!614846 m!2447463))

(assert (=> b!2013520 d!614846))

(declare-fun d!614848 () Bool)

(assert (=> d!614848 (= (seqFromList!2828 (originalCharacters!4781 (h!27527 tokens!598))) (fromListB!1267 (originalCharacters!4781 (h!27527 tokens!598))))))

(declare-fun bs!419903 () Bool)

(assert (= bs!419903 d!614848))

(declare-fun m!2447465 () Bool)

(assert (=> bs!419903 m!2447465))

(assert (=> b!2013520 d!614848))

(declare-fun d!614850 () Bool)

(declare-fun lt!756346 () Bool)

(declare-fun e!1272866 () Bool)

(assert (=> d!614850 (= lt!756346 e!1272866)))

(declare-fun res!883540 () Bool)

(assert (=> d!614850 (=> (not res!883540) (not e!1272866))))

(assert (=> d!614850 (= res!883540 (= (list!9019 (_1!11862 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 (h!27527 tokens!598)))))) (list!9019 (singletonSeq!1950 (h!27527 tokens!598)))))))

(declare-fun e!1272865 () Bool)

(assert (=> d!614850 (= lt!756346 e!1272865)))

(declare-fun res!883541 () Bool)

(assert (=> d!614850 (=> (not res!883541) (not e!1272865))))

(declare-fun lt!756347 () tuple2!20786)

(assert (=> d!614850 (= res!883541 (= (size!17286 (_1!11862 lt!756347)) 1))))

(assert (=> d!614850 (= lt!756347 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 (h!27527 tokens!598)))))))

(assert (=> d!614850 (not (isEmpty!13732 rules!3198))))

(assert (=> d!614850 (= (rulesProduceIndividualToken!1759 thiss!23328 rules!3198 (h!27527 tokens!598)) lt!756346)))

(declare-fun b!2014303 () Bool)

(declare-fun res!883539 () Bool)

(assert (=> b!2014303 (=> (not res!883539) (not e!1272865))))

(assert (=> b!2014303 (= res!883539 (= (apply!5803 (_1!11862 lt!756347) 0) (h!27527 tokens!598)))))

(declare-fun b!2014304 () Bool)

(assert (=> b!2014304 (= e!1272865 (isEmpty!13740 (_2!11862 lt!756347)))))

(declare-fun b!2014305 () Bool)

(assert (=> b!2014305 (= e!1272866 (isEmpty!13740 (_2!11862 (lex!1603 thiss!23328 rules!3198 (print!1549 thiss!23328 (singletonSeq!1950 (h!27527 tokens!598)))))))))

(assert (= (and d!614850 res!883541) b!2014303))

(assert (= (and b!2014303 res!883539) b!2014304))

(assert (= (and d!614850 res!883540) b!2014305))

(assert (=> d!614850 m!2446477))

(declare-fun m!2447467 () Bool)

(assert (=> d!614850 m!2447467))

(assert (=> d!614850 m!2446477))

(declare-fun m!2447469 () Bool)

(assert (=> d!614850 m!2447469))

(assert (=> d!614850 m!2446487))

(assert (=> d!614850 m!2446477))

(assert (=> d!614850 m!2447467))

(declare-fun m!2447471 () Bool)

(assert (=> d!614850 m!2447471))

(declare-fun m!2447473 () Bool)

(assert (=> d!614850 m!2447473))

(declare-fun m!2447475 () Bool)

(assert (=> d!614850 m!2447475))

(declare-fun m!2447477 () Bool)

(assert (=> b!2014303 m!2447477))

(declare-fun m!2447479 () Bool)

(assert (=> b!2014304 m!2447479))

(assert (=> b!2014305 m!2446477))

(assert (=> b!2014305 m!2446477))

(assert (=> b!2014305 m!2447467))

(assert (=> b!2014305 m!2447467))

(assert (=> b!2014305 m!2447471))

(declare-fun m!2447481 () Bool)

(assert (=> b!2014305 m!2447481))

(assert (=> b!2013509 d!614850))

(declare-fun b!2014307 () Bool)

(declare-fun res!883542 () Bool)

(declare-fun e!1272868 () Bool)

(assert (=> b!2014307 (=> res!883542 e!1272868)))

(assert (=> b!2014307 (= res!883542 (not ((_ is IntegerValue!12332) (value!124850 separatorToken!354))))))

(declare-fun e!1272869 () Bool)

(assert (=> b!2014307 (= e!1272869 e!1272868)))

(declare-fun b!2014308 () Bool)

(declare-fun e!1272867 () Bool)

(assert (=> b!2014308 (= e!1272867 e!1272869)))

(declare-fun c!325385 () Bool)

(assert (=> b!2014308 (= c!325385 ((_ is IntegerValue!12331) (value!124850 separatorToken!354)))))

(declare-fun b!2014309 () Bool)

(assert (=> b!2014309 (= e!1272867 (inv!16 (value!124850 separatorToken!354)))))

(declare-fun b!2014310 () Bool)

(assert (=> b!2014310 (= e!1272868 (inv!15 (value!124850 separatorToken!354)))))

(declare-fun d!614852 () Bool)

(declare-fun c!325386 () Bool)

(assert (=> d!614852 (= c!325386 ((_ is IntegerValue!12330) (value!124850 separatorToken!354)))))

(assert (=> d!614852 (= (inv!21 (value!124850 separatorToken!354)) e!1272867)))

(declare-fun b!2014306 () Bool)

(assert (=> b!2014306 (= e!1272869 (inv!17 (value!124850 separatorToken!354)))))

(assert (= (and d!614852 c!325386) b!2014309))

(assert (= (and d!614852 (not c!325386)) b!2014308))

(assert (= (and b!2014308 c!325385) b!2014306))

(assert (= (and b!2014308 (not c!325385)) b!2014307))

(assert (= (and b!2014307 (not res!883542)) b!2014310))

(declare-fun m!2447483 () Bool)

(assert (=> b!2014309 m!2447483))

(declare-fun m!2447485 () Bool)

(assert (=> b!2014310 m!2447485))

(declare-fun m!2447487 () Bool)

(assert (=> b!2014306 m!2447487))

(assert (=> b!2013498 d!614852))

(declare-fun d!614854 () Bool)

(declare-fun res!883545 () Bool)

(declare-fun e!1272872 () Bool)

(assert (=> d!614854 (=> (not res!883545) (not e!1272872))))

(declare-fun rulesValid!1482 (LexerInterface!3587 List!22209) Bool)

(assert (=> d!614854 (= res!883545 (rulesValid!1482 thiss!23328 rules!3198))))

(assert (=> d!614854 (= (rulesInvariant!3194 thiss!23328 rules!3198) e!1272872)))

(declare-fun b!2014313 () Bool)

(declare-datatypes ((List!22211 0))(
  ( (Nil!22129) (Cons!22129 (h!27530 String!25668) (t!188152 List!22211)) )
))
(declare-fun noDuplicateTag!1480 (LexerInterface!3587 List!22209 List!22211) Bool)

(assert (=> b!2014313 (= e!1272872 (noDuplicateTag!1480 thiss!23328 rules!3198 Nil!22129))))

(assert (= (and d!614854 res!883545) b!2014313))

(declare-fun m!2447489 () Bool)

(assert (=> d!614854 m!2447489))

(declare-fun m!2447491 () Bool)

(assert (=> b!2014313 m!2447491))

(assert (=> b!2013519 d!614854))

(declare-fun d!614856 () Bool)

(declare-fun res!883546 () Bool)

(declare-fun e!1272873 () Bool)

(assert (=> d!614856 (=> (not res!883546) (not e!1272873))))

(assert (=> d!614856 (= res!883546 (not (isEmpty!13735 (originalCharacters!4781 (h!27527 tokens!598)))))))

(assert (=> d!614856 (= (inv!29291 (h!27527 tokens!598)) e!1272873)))

(declare-fun b!2014314 () Bool)

(declare-fun res!883547 () Bool)

(assert (=> b!2014314 (=> (not res!883547) (not e!1272873))))

(assert (=> b!2014314 (= res!883547 (= (originalCharacters!4781 (h!27527 tokens!598)) (list!9015 (dynLambda!10920 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (value!124850 (h!27527 tokens!598))))))))

(declare-fun b!2014315 () Bool)

(assert (=> b!2014315 (= e!1272873 (= (size!17282 (h!27527 tokens!598)) (size!17285 (originalCharacters!4781 (h!27527 tokens!598)))))))

(assert (= (and d!614856 res!883546) b!2014314))

(assert (= (and b!2014314 res!883547) b!2014315))

(declare-fun b_lambda!67401 () Bool)

(assert (=> (not b_lambda!67401) (not b!2014314)))

(assert (=> b!2014314 t!188109))

(declare-fun b_and!159467 () Bool)

(assert (= b_and!159455 (and (=> t!188109 result!150982) b_and!159467)))

(assert (=> b!2014314 t!188111))

(declare-fun b_and!159469 () Bool)

(assert (= b_and!159457 (and (=> t!188111 result!150984) b_and!159469)))

(assert (=> b!2014314 t!188113))

(declare-fun b_and!159471 () Bool)

(assert (= b_and!159459 (and (=> t!188113 result!150986) b_and!159471)))

(declare-fun m!2447493 () Bool)

(assert (=> d!614856 m!2447493))

(assert (=> b!2014314 m!2447441))

(assert (=> b!2014314 m!2447441))

(declare-fun m!2447495 () Bool)

(assert (=> b!2014314 m!2447495))

(declare-fun m!2447497 () Bool)

(assert (=> b!2014315 m!2447497))

(assert (=> b!2013518 d!614856))

(declare-fun d!614858 () Bool)

(assert (=> d!614858 (= (inv!29287 (tag!4446 (h!27528 rules!3198))) (= (mod (str.len (value!124849 (tag!4446 (h!27528 rules!3198)))) 2) 0))))

(assert (=> b!2013507 d!614858))

(declare-fun d!614860 () Bool)

(declare-fun res!883548 () Bool)

(declare-fun e!1272874 () Bool)

(assert (=> d!614860 (=> (not res!883548) (not e!1272874))))

(assert (=> d!614860 (= res!883548 (semiInverseModEq!1595 (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (h!27528 rules!3198)))))))

(assert (=> d!614860 (= (inv!29290 (transformation!3974 (h!27528 rules!3198))) e!1272874)))

(declare-fun b!2014316 () Bool)

(assert (=> b!2014316 (= e!1272874 (equivClasses!1522 (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (h!27528 rules!3198)))))))

(assert (= (and d!614860 res!883548) b!2014316))

(declare-fun m!2447499 () Bool)

(assert (=> d!614860 m!2447499))

(declare-fun m!2447501 () Bool)

(assert (=> b!2014316 m!2447501))

(assert (=> b!2013507 d!614860))

(declare-fun d!614862 () Bool)

(assert (=> d!614862 (= (inv!29287 (tag!4446 (rule!6201 (h!27527 tokens!598)))) (= (mod (str.len (value!124849 (tag!4446 (rule!6201 (h!27527 tokens!598))))) 2) 0))))

(assert (=> b!2013496 d!614862))

(declare-fun d!614864 () Bool)

(declare-fun res!883549 () Bool)

(declare-fun e!1272875 () Bool)

(assert (=> d!614864 (=> (not res!883549) (not e!1272875))))

(assert (=> d!614864 (= res!883549 (semiInverseModEq!1595 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))))))

(assert (=> d!614864 (= (inv!29290 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) e!1272875)))

(declare-fun b!2014317 () Bool)

(assert (=> b!2014317 (= e!1272875 (equivClasses!1522 (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))))))

(assert (= (and d!614864 res!883549) b!2014317))

(declare-fun m!2447503 () Bool)

(assert (=> d!614864 m!2447503))

(declare-fun m!2447505 () Bool)

(assert (=> b!2014317 m!2447505))

(assert (=> b!2013496 d!614864))

(declare-fun d!614866 () Bool)

(declare-fun lt!756350 () Bool)

(declare-fun content!3249 (List!22209) (InoxSet Rule!7748))

(assert (=> d!614866 (= lt!756350 (select (content!3249 rules!3198) (rule!6201 (h!27527 tokens!598))))))

(declare-fun e!1272880 () Bool)

(assert (=> d!614866 (= lt!756350 e!1272880)))

(declare-fun res!883554 () Bool)

(assert (=> d!614866 (=> (not res!883554) (not e!1272880))))

(assert (=> d!614866 (= res!883554 ((_ is Cons!22127) rules!3198))))

(assert (=> d!614866 (= (contains!4059 rules!3198 (rule!6201 (h!27527 tokens!598))) lt!756350)))

(declare-fun b!2014322 () Bool)

(declare-fun e!1272881 () Bool)

(assert (=> b!2014322 (= e!1272880 e!1272881)))

(declare-fun res!883555 () Bool)

(assert (=> b!2014322 (=> res!883555 e!1272881)))

(assert (=> b!2014322 (= res!883555 (= (h!27528 rules!3198) (rule!6201 (h!27527 tokens!598))))))

(declare-fun b!2014323 () Bool)

(assert (=> b!2014323 (= e!1272881 (contains!4059 (t!188038 rules!3198) (rule!6201 (h!27527 tokens!598))))))

(assert (= (and d!614866 res!883554) b!2014322))

(assert (= (and b!2014322 (not res!883555)) b!2014323))

(declare-fun m!2447507 () Bool)

(assert (=> d!614866 m!2447507))

(declare-fun m!2447509 () Bool)

(assert (=> d!614866 m!2447509))

(declare-fun m!2447511 () Bool)

(assert (=> b!2014323 m!2447511))

(assert (=> b!2013517 d!614866))

(declare-fun b!2014337 () Bool)

(declare-fun e!1272884 () Bool)

(declare-fun tp!600485 () Bool)

(declare-fun tp!600486 () Bool)

(assert (=> b!2014337 (= e!1272884 (and tp!600485 tp!600486))))

(declare-fun b!2014334 () Bool)

(declare-fun tp_is_empty!9197 () Bool)

(assert (=> b!2014334 (= e!1272884 tp_is_empty!9197)))

(declare-fun b!2014335 () Bool)

(declare-fun tp!600488 () Bool)

(declare-fun tp!600487 () Bool)

(assert (=> b!2014335 (= e!1272884 (and tp!600488 tp!600487))))

(declare-fun b!2014336 () Bool)

(declare-fun tp!600489 () Bool)

(assert (=> b!2014336 (= e!1272884 tp!600489)))

(assert (=> b!2013501 (= tp!600408 e!1272884)))

(assert (= (and b!2013501 ((_ is ElementMatch!5399) (regex!3974 (rule!6201 separatorToken!354)))) b!2014334))

(assert (= (and b!2013501 ((_ is Concat!9510) (regex!3974 (rule!6201 separatorToken!354)))) b!2014335))

(assert (= (and b!2013501 ((_ is Star!5399) (regex!3974 (rule!6201 separatorToken!354)))) b!2014336))

(assert (= (and b!2013501 ((_ is Union!5399) (regex!3974 (rule!6201 separatorToken!354)))) b!2014337))

(declare-fun b!2014348 () Bool)

(declare-fun b_free!56253 () Bool)

(declare-fun b_next!56957 () Bool)

(assert (=> b!2014348 (= b_free!56253 (not b_next!56957))))

(declare-fun tb!126025 () Bool)

(declare-fun t!188133 () Bool)

(assert (=> (and b!2014348 (= (toValue!5643 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188133) tb!126025))

(declare-fun result!151012 () Bool)

(assert (= result!151012 result!150988))

(assert (=> d!614844 t!188133))

(declare-fun tb!126027 () Bool)

(declare-fun t!188135 () Bool)

(assert (=> (and b!2014348 (= (toValue!5643 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188135) tb!126027))

(declare-fun result!151014 () Bool)

(assert (= result!151014 result!150996))

(assert (=> d!614844 t!188135))

(assert (=> d!614846 t!188133))

(declare-fun tp!600498 () Bool)

(declare-fun b_and!159473 () Bool)

(assert (=> b!2014348 (= tp!600498 (and (=> t!188133 result!151012) (=> t!188135 result!151014) b_and!159473))))

(declare-fun b_free!56255 () Bool)

(declare-fun b_next!56959 () Bool)

(assert (=> b!2014348 (= b_free!56255 (not b_next!56959))))

(declare-fun tb!126029 () Bool)

(declare-fun t!188137 () Bool)

(assert (=> (and b!2014348 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354)))) t!188137) tb!126029))

(declare-fun result!151016 () Bool)

(assert (= result!151016 result!150912))

(assert (=> d!614830 t!188137))

(assert (=> b!2013546 t!188137))

(declare-fun tb!126031 () Bool)

(declare-fun t!188139 () Bool)

(assert (=> (and b!2014348 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188139) tb!126031))

(declare-fun result!151018 () Bool)

(assert (= result!151018 result!150982))

(assert (=> d!614842 t!188139))

(declare-fun t!188141 () Bool)

(declare-fun tb!126033 () Bool)

(assert (=> (and b!2014348 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188141) tb!126033))

(declare-fun result!151020 () Bool)

(assert (= result!151020 result!151002))

(assert (=> d!614846 t!188141))

(assert (=> b!2014314 t!188139))

(declare-fun tp!600500 () Bool)

(declare-fun b_and!159475 () Bool)

(assert (=> b!2014348 (= tp!600500 (and (=> t!188141 result!151020) (=> t!188137 result!151016) (=> t!188139 result!151018) b_and!159475))))

(declare-fun e!1272896 () Bool)

(assert (=> b!2014348 (= e!1272896 (and tp!600498 tp!600500))))

(declare-fun e!1272894 () Bool)

(declare-fun b!2014347 () Bool)

(declare-fun tp!600501 () Bool)

(assert (=> b!2014347 (= e!1272894 (and tp!600501 (inv!29287 (tag!4446 (h!27528 (t!188038 rules!3198)))) (inv!29290 (transformation!3974 (h!27528 (t!188038 rules!3198)))) e!1272896))))

(declare-fun b!2014346 () Bool)

(declare-fun e!1272893 () Bool)

(declare-fun tp!600499 () Bool)

(assert (=> b!2014346 (= e!1272893 (and e!1272894 tp!600499))))

(assert (=> b!2013522 (= tp!600397 e!1272893)))

(assert (= b!2014347 b!2014348))

(assert (= b!2014346 b!2014347))

(assert (= (and b!2013522 ((_ is Cons!22127) (t!188038 rules!3198))) b!2014346))

(declare-fun m!2447513 () Bool)

(assert (=> b!2014347 m!2447513))

(declare-fun m!2447515 () Bool)

(assert (=> b!2014347 m!2447515))

(declare-fun b!2014353 () Bool)

(declare-fun e!1272899 () Bool)

(declare-fun tp!600504 () Bool)

(assert (=> b!2014353 (= e!1272899 (and tp_is_empty!9197 tp!600504))))

(assert (=> b!2013521 (= tp!600404 e!1272899)))

(assert (= (and b!2013521 ((_ is Cons!22125) (originalCharacters!4781 (h!27527 tokens!598)))) b!2014353))

(declare-fun b!2014354 () Bool)

(declare-fun e!1272900 () Bool)

(declare-fun tp!600505 () Bool)

(assert (=> b!2014354 (= e!1272900 (and tp_is_empty!9197 tp!600505))))

(assert (=> b!2013498 (= tp!600400 e!1272900)))

(assert (= (and b!2013498 ((_ is Cons!22125) (originalCharacters!4781 separatorToken!354))) b!2014354))

(declare-fun b!2014368 () Bool)

(declare-fun b_free!56257 () Bool)

(declare-fun b_next!56961 () Bool)

(assert (=> b!2014368 (= b_free!56257 (not b_next!56961))))

(declare-fun t!188143 () Bool)

(declare-fun tb!126035 () Bool)

(assert (=> (and b!2014368 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188143) tb!126035))

(declare-fun result!151026 () Bool)

(assert (= result!151026 result!150988))

(assert (=> d!614844 t!188143))

(declare-fun t!188145 () Bool)

(declare-fun tb!126037 () Bool)

(assert (=> (and b!2014368 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188145) tb!126037))

(declare-fun result!151028 () Bool)

(assert (= result!151028 result!150996))

(assert (=> d!614844 t!188145))

(assert (=> d!614846 t!188143))

(declare-fun b_and!159477 () Bool)

(declare-fun tp!600519 () Bool)

(assert (=> b!2014368 (= tp!600519 (and (=> t!188143 result!151026) (=> t!188145 result!151028) b_and!159477))))

(declare-fun b_free!56259 () Bool)

(declare-fun b_next!56963 () Bool)

(assert (=> b!2014368 (= b_free!56259 (not b_next!56963))))

(declare-fun t!188147 () Bool)

(declare-fun tb!126039 () Bool)

(assert (=> (and b!2014368 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354)))) t!188147) tb!126039))

(declare-fun result!151030 () Bool)

(assert (= result!151030 result!150912))

(assert (=> d!614830 t!188147))

(assert (=> b!2013546 t!188147))

(declare-fun t!188149 () Bool)

(declare-fun tb!126041 () Bool)

(assert (=> (and b!2014368 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188149) tb!126041))

(declare-fun result!151032 () Bool)

(assert (= result!151032 result!150982))

(assert (=> d!614842 t!188149))

(declare-fun t!188151 () Bool)

(declare-fun tb!126043 () Bool)

(assert (=> (and b!2014368 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598))))) t!188151) tb!126043))

(declare-fun result!151034 () Bool)

(assert (= result!151034 result!151002))

(assert (=> d!614846 t!188151))

(assert (=> b!2014314 t!188149))

(declare-fun tp!600518 () Bool)

(declare-fun b_and!159479 () Bool)

(assert (=> b!2014368 (= tp!600518 (and (=> t!188149 result!151032) (=> t!188151 result!151034) (=> t!188147 result!151030) b_and!159479))))

(declare-fun e!1272914 () Bool)

(declare-fun tp!600517 () Bool)

(declare-fun e!1272918 () Bool)

(declare-fun b!2014365 () Bool)

(assert (=> b!2014365 (= e!1272914 (and (inv!29291 (h!27527 (t!188037 tokens!598))) e!1272918 tp!600517))))

(declare-fun b!2014366 () Bool)

(declare-fun tp!600520 () Bool)

(declare-fun e!1272915 () Bool)

(assert (=> b!2014366 (= e!1272918 (and (inv!21 (value!124850 (h!27527 (t!188037 tokens!598)))) e!1272915 tp!600520))))

(assert (=> b!2013518 (= tp!600407 e!1272914)))

(declare-fun e!1272917 () Bool)

(assert (=> b!2014368 (= e!1272917 (and tp!600519 tp!600518))))

(declare-fun tp!600516 () Bool)

(declare-fun b!2014367 () Bool)

(assert (=> b!2014367 (= e!1272915 (and tp!600516 (inv!29287 (tag!4446 (rule!6201 (h!27527 (t!188037 tokens!598))))) (inv!29290 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) e!1272917))))

(assert (= b!2014367 b!2014368))

(assert (= b!2014366 b!2014367))

(assert (= b!2014365 b!2014366))

(assert (= (and b!2013518 ((_ is Cons!22126) (t!188037 tokens!598))) b!2014365))

(declare-fun m!2447517 () Bool)

(assert (=> b!2014365 m!2447517))

(declare-fun m!2447519 () Bool)

(assert (=> b!2014366 m!2447519))

(declare-fun m!2447521 () Bool)

(assert (=> b!2014367 m!2447521))

(declare-fun m!2447523 () Bool)

(assert (=> b!2014367 m!2447523))

(declare-fun b!2014372 () Bool)

(declare-fun e!1272919 () Bool)

(declare-fun tp!600521 () Bool)

(declare-fun tp!600522 () Bool)

(assert (=> b!2014372 (= e!1272919 (and tp!600521 tp!600522))))

(declare-fun b!2014369 () Bool)

(assert (=> b!2014369 (= e!1272919 tp_is_empty!9197)))

(declare-fun b!2014370 () Bool)

(declare-fun tp!600524 () Bool)

(declare-fun tp!600523 () Bool)

(assert (=> b!2014370 (= e!1272919 (and tp!600524 tp!600523))))

(declare-fun b!2014371 () Bool)

(declare-fun tp!600525 () Bool)

(assert (=> b!2014371 (= e!1272919 tp!600525)))

(assert (=> b!2013507 (= tp!600406 e!1272919)))

(assert (= (and b!2013507 ((_ is ElementMatch!5399) (regex!3974 (h!27528 rules!3198)))) b!2014369))

(assert (= (and b!2013507 ((_ is Concat!9510) (regex!3974 (h!27528 rules!3198)))) b!2014370))

(assert (= (and b!2013507 ((_ is Star!5399) (regex!3974 (h!27528 rules!3198)))) b!2014371))

(assert (= (and b!2013507 ((_ is Union!5399) (regex!3974 (h!27528 rules!3198)))) b!2014372))

(declare-fun b!2014376 () Bool)

(declare-fun e!1272920 () Bool)

(declare-fun tp!600526 () Bool)

(declare-fun tp!600527 () Bool)

(assert (=> b!2014376 (= e!1272920 (and tp!600526 tp!600527))))

(declare-fun b!2014373 () Bool)

(assert (=> b!2014373 (= e!1272920 tp_is_empty!9197)))

(declare-fun b!2014374 () Bool)

(declare-fun tp!600529 () Bool)

(declare-fun tp!600528 () Bool)

(assert (=> b!2014374 (= e!1272920 (and tp!600529 tp!600528))))

(declare-fun b!2014375 () Bool)

(declare-fun tp!600530 () Bool)

(assert (=> b!2014375 (= e!1272920 tp!600530)))

(assert (=> b!2013496 (= tp!600399 e!1272920)))

(assert (= (and b!2013496 ((_ is ElementMatch!5399) (regex!3974 (rule!6201 (h!27527 tokens!598))))) b!2014373))

(assert (= (and b!2013496 ((_ is Concat!9510) (regex!3974 (rule!6201 (h!27527 tokens!598))))) b!2014374))

(assert (= (and b!2013496 ((_ is Star!5399) (regex!3974 (rule!6201 (h!27527 tokens!598))))) b!2014375))

(assert (= (and b!2013496 ((_ is Union!5399) (regex!3974 (rule!6201 (h!27527 tokens!598))))) b!2014376))

(declare-fun b_lambda!67403 () Bool)

(assert (= b_lambda!67393 (or (and b!2014348 b_free!56253 (= (toValue!5643 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56233 (= (toValue!5643 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56237) (and b!2013515 b_free!56241 (= (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2014368 b_free!56257 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67403)))

(declare-fun b_lambda!67405 () Bool)

(assert (= b_lambda!67399 (or (and b!2014348 b_free!56253 (= (toValue!5643 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56233 (= (toValue!5643 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56237) (and b!2013515 b_free!56241 (= (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2014368 b_free!56257 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67405)))

(declare-fun b_lambda!67407 () Bool)

(assert (= b_lambda!67397 (or (and b!2014348 b_free!56255 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56235 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56239) (and b!2014368 b_free!56259 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013515 b_free!56243 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67407)))

(declare-fun b_lambda!67409 () Bool)

(assert (= b_lambda!67391 (or (and b!2014348 b_free!56255 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56235 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56239) (and b!2014368 b_free!56259 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013515 b_free!56243 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67409)))

(declare-fun b_lambda!67411 () Bool)

(assert (= b_lambda!67395 (or (and b!2014348 b_free!56253 (= (toValue!5643 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56233 (= (toValue!5643 (transformation!3974 (h!27528 rules!3198))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56237) (and b!2013515 b_free!56241 (= (toValue!5643 (transformation!3974 (rule!6201 separatorToken!354))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2014368 b_free!56257 (= (toValue!5643 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toValue!5643 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67411)))

(declare-fun b_lambda!67413 () Bool)

(assert (= b_lambda!67401 (or (and b!2014348 b_free!56255 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013508 b_free!56235 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013516 b_free!56239) (and b!2014368 b_free!56259 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) (and b!2013515 b_free!56243 (= (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))) (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))))) b_lambda!67413)))

(declare-fun b_lambda!67415 () Bool)

(assert (= b_lambda!67351 (or b!2013514 b_lambda!67415)))

(declare-fun bs!419904 () Bool)

(declare-fun d!614868 () Bool)

(assert (= bs!419904 (and d!614868 b!2013514)))

(assert (=> bs!419904 (= (dynLambda!10926 lambda!76195 (h!27527 tokens!598)) (not (isSeparator!3974 (rule!6201 (h!27527 tokens!598)))))))

(assert (=> b!2013700 d!614868))

(declare-fun b_lambda!67417 () Bool)

(assert (= b_lambda!67349 (or (and b!2013515 b_free!56243) (and b!2013516 b_free!56239 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2014348 b_free!56255 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2013508 b_free!56235 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2014368 b_free!56259 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) b_lambda!67417)))

(declare-fun b_lambda!67419 () Bool)

(assert (= b_lambda!67389 (or (and b!2013515 b_free!56243) (and b!2013516 b_free!56239 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 tokens!598)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2014348 b_free!56255 (= (toChars!5502 (transformation!3974 (h!27528 (t!188038 rules!3198)))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2013508 b_free!56235 (= (toChars!5502 (transformation!3974 (h!27528 rules!3198))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) (and b!2014368 b_free!56259 (= (toChars!5502 (transformation!3974 (rule!6201 (h!27527 (t!188037 tokens!598))))) (toChars!5502 (transformation!3974 (rule!6201 separatorToken!354))))) b_lambda!67419)))

(check-sat (not bm!123223) (not d!614866) (not b!2014130) (not b_lambda!67419) (not b!2014223) (not b!2014281) (not b!2014270) (not b_next!56943) (not b!2013716) (not b!2014285) (not bm!123228) (not bm!123224) (not b!2014317) (not d!614864) (not bm!123169) (not b!2014284) (not bm!123165) (not b!2014250) (not b!2013701) (not b!2014129) (not d!614842) (not d!614644) b_and!159477 (not b!2013858) (not d!614678) (not b!2013711) (not b!2013695) (not b!2013611) (not b!2014252) (not d!614704) (not bm!123185) (not d!614838) (not d!614626) b_and!159461 (not d!614660) (not d!614648) (not b!2013855) (not b_lambda!67417) (not b_lambda!67415) (not b!2014118) (not b!2014115) (not d!614650) (not d!614646) (not d!614638) (not tb!125945) b_and!159469 (not b!2013612) (not b!2014090) (not bm!123161) (not b!2013615) (not b!2013624) (not b!2014323) (not b!2013691) (not d!614854) (not b!2014267) b_and!159471 (not b!2014335) (not b_next!56959) (not b!2014365) (not d!614654) (not b_next!56939) (not b!2013857) (not bm!123225) (not d!614850) (not b!2014091) (not b!2014366) (not b!2014372) (not b!2014124) (not d!614636) (not b!2013735) (not b!2014221) (not bm!123164) (not b!2013546) (not b!2014219) (not b!2014309) (not b!2014337) (not d!614666) (not bm!123168) (not b!2014375) b_and!159465 (not d!614826) (not d!614830) (not b!2014374) (not d!614828) (not b_next!56957) (not d!614812) (not d!614860) (not b!2014100) (not b!2014276) (not b!2013733) (not b!2014303) (not bm!123160) (not d!614642) (not d!614816) (not b!2013732) (not b!2014247) (not d!614710) (not b!2014248) b_and!159467 (not b!2013715) (not b!2014336) (not bm!123162) (not b!2013635) (not b!2014314) (not b!2013864) (not b!2013706) (not b_lambda!67409) (not b!2014315) (not b!2013690) (not b!2013689) (not b!2013707) (not b!2014306) (not b!2014304) (not b!2014246) (not b!2013692) (not d!614632) (not b!2013567) (not b!2013851) (not b!2013643) (not bm!123229) (not b!2014316) b_and!159475 (not b!2014253) (not b!2014286) (not d!614814) (not b!2013847) (not b_next!56961) (not b!2014302) (not b!2014269) (not b!2014216) (not b!2013616) (not tb!126013) b_and!159463 (not b!2014275) (not d!614840) (not b!2013626) (not d!614818) (not b!2013861) (not bm!123158) (not d!614832) (not tb!126019) (not b!2013547) (not b!2013645) (not tb!126001) (not b!2013718) (not b_lambda!67407) (not b_next!56937) (not tb!126007) (not b_next!56963) (not b!2014224) (not b!2013578) (not d!614664) (not d!614834) (not b!2014282) (not b!2014376) (not b_lambda!67405) (not b!2014279) tp_is_empty!9197 (not d!614674) (not d!614684) (not b!2014280) (not b_lambda!67403) (not b!2014305) (not b!2013577) (not b!2013736) b_and!159473 (not d!614848) (not b!2013717) (not b!2014287) (not b_lambda!67411) (not b!2013628) (not b!2014367) (not d!614836) (not b!2014353) (not b!2014119) (not b!2013856) (not b_next!56947) (not b!2014283) (not b!2014371) (not b_next!56945) (not d!614846) (not b_next!56941) b_and!159479 (not b!2014249) (not d!614844) (not b!2014313) (not d!614712) (not b!2014370) (not b_lambda!67413) (not b!2014347) (not d!614810) (not b!2013845) (not b!2014273) (not b!2014310) (not b!2014346) (not d!614652) (not b!2014126) (not b!2013585) (not b!2013685) (not b!2014251) (not d!614856) (not d!614680) (not b!2014127) (not b!2013721) (not b!2014354) (not b!2014125) (not b!2013846) (not b!2013629) (not d!614682) (not d!614634))
(check-sat (not b_next!56943) b_and!159477 b_and!159461 b_and!159469 b_and!159467 b_and!159475 (not b_next!56961) b_and!159463 b_and!159473 (not b_next!56947) b_and!159471 (not b_next!56959) (not b_next!56939) b_and!159465 (not b_next!56957) (not b_next!56937) (not b_next!56963) (not b_next!56945) (not b_next!56941) b_and!159479)
