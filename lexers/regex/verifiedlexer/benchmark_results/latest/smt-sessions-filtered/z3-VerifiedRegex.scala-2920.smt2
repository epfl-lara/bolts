; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171150 () Bool)

(assert start!171150)

(declare-fun b!1739345 () Bool)

(declare-fun b_free!47779 () Bool)

(declare-fun b_next!48483 () Bool)

(assert (=> b!1739345 (= b_free!47779 (not b_next!48483))))

(declare-fun tp!495409 () Bool)

(declare-fun b_and!129127 () Bool)

(assert (=> b!1739345 (= tp!495409 b_and!129127)))

(declare-fun b_free!47781 () Bool)

(declare-fun b_next!48485 () Bool)

(assert (=> b!1739345 (= b_free!47781 (not b_next!48485))))

(declare-fun tp!495420 () Bool)

(declare-fun b_and!129129 () Bool)

(assert (=> b!1739345 (= tp!495420 b_and!129129)))

(declare-fun b!1739330 () Bool)

(declare-fun b_free!47783 () Bool)

(declare-fun b_next!48487 () Bool)

(assert (=> b!1739330 (= b_free!47783 (not b_next!48487))))

(declare-fun tp!495413 () Bool)

(declare-fun b_and!129131 () Bool)

(assert (=> b!1739330 (= tp!495413 b_and!129131)))

(declare-fun b_free!47785 () Bool)

(declare-fun b_next!48489 () Bool)

(assert (=> b!1739330 (= b_free!47785 (not b_next!48489))))

(declare-fun tp!495418 () Bool)

(declare-fun b_and!129133 () Bool)

(assert (=> b!1739330 (= tp!495418 b_and!129133)))

(declare-fun b!1739351 () Bool)

(declare-fun b_free!47787 () Bool)

(declare-fun b_next!48491 () Bool)

(assert (=> b!1739351 (= b_free!47787 (not b_next!48491))))

(declare-fun tp!495412 () Bool)

(declare-fun b_and!129135 () Bool)

(assert (=> b!1739351 (= tp!495412 b_and!129135)))

(declare-fun b_free!47789 () Bool)

(declare-fun b_next!48493 () Bool)

(assert (=> b!1739351 (= b_free!47789 (not b_next!48493))))

(declare-fun tp!495410 () Bool)

(declare-fun b_and!129137 () Bool)

(assert (=> b!1739351 (= tp!495410 b_and!129137)))

(declare-fun b!1739384 () Bool)

(declare-fun e!1113253 () Bool)

(assert (=> b!1739384 (= e!1113253 true)))

(declare-fun b!1739383 () Bool)

(declare-fun e!1113252 () Bool)

(assert (=> b!1739383 (= e!1113252 e!1113253)))

(declare-fun b!1739382 () Bool)

(declare-fun e!1113251 () Bool)

(assert (=> b!1739382 (= e!1113251 e!1113252)))

(declare-fun b!1739363 () Bool)

(assert (=> b!1739363 e!1113251))

(assert (= b!1739383 b!1739384))

(assert (= b!1739382 b!1739383))

(assert (= b!1739363 b!1739382))

(declare-fun lambda!69560 () Int)

(declare-fun order!11913 () Int)

(declare-datatypes ((List!19175 0))(
  ( (Nil!19105) (Cons!19105 (h!24506 (_ BitVec 16)) (t!161710 List!19175)) )
))
(declare-datatypes ((TokenValue!3491 0))(
  ( (FloatLiteralValue!6982 (text!24882 List!19175)) (TokenValueExt!3490 (__x!12284 Int)) (Broken!17455 (value!106575 List!19175)) (Object!3560) (End!3491) (Def!3491) (Underscore!3491) (Match!3491) (Else!3491) (Error!3491) (Case!3491) (If!3491) (Extends!3491) (Abstract!3491) (Class!3491) (Val!3491) (DelimiterValue!6982 (del!3551 List!19175)) (KeywordValue!3497 (value!106576 List!19175)) (CommentValue!6982 (value!106577 List!19175)) (WhitespaceValue!6982 (value!106578 List!19175)) (IndentationValue!3491 (value!106579 List!19175)) (String!21786) (Int32!3491) (Broken!17456 (value!106580 List!19175)) (Boolean!3492) (Unit!33112) (OperatorValue!3494 (op!3551 List!19175)) (IdentifierValue!6982 (value!106581 List!19175)) (IdentifierValue!6983 (value!106582 List!19175)) (WhitespaceValue!6983 (value!106583 List!19175)) (True!6982) (False!6982) (Broken!17457 (value!106584 List!19175)) (Broken!17458 (value!106585 List!19175)) (True!6983) (RightBrace!3491) (RightBracket!3491) (Colon!3491) (Null!3491) (Comma!3491) (LeftBracket!3491) (False!6983) (LeftBrace!3491) (ImaginaryLiteralValue!3491 (text!24883 List!19175)) (StringLiteralValue!10473 (value!106586 List!19175)) (EOFValue!3491 (value!106587 List!19175)) (IdentValue!3491 (value!106588 List!19175)) (DelimiterValue!6983 (value!106589 List!19175)) (DedentValue!3491 (value!106590 List!19175)) (NewLineValue!3491 (value!106591 List!19175)) (IntegerValue!10473 (value!106592 (_ BitVec 32)) (text!24884 List!19175)) (IntegerValue!10474 (value!106593 Int) (text!24885 List!19175)) (Times!3491) (Or!3491) (Equal!3491) (Minus!3491) (Broken!17459 (value!106594 List!19175)) (And!3491) (Div!3491) (LessEqual!3491) (Mod!3491) (Concat!8220) (Not!3491) (Plus!3491) (SpaceValue!3491 (value!106595 List!19175)) (IntegerValue!10475 (value!106596 Int) (text!24886 List!19175)) (StringLiteralValue!10474 (text!24887 List!19175)) (FloatLiteralValue!6983 (text!24888 List!19175)) (BytesLiteralValue!3491 (value!106597 List!19175)) (CommentValue!6983 (value!106598 List!19175)) (StringLiteralValue!10475 (value!106599 List!19175)) (ErrorTokenValue!3491 (msg!3552 List!19175)) )
))
(declare-datatypes ((C!9632 0))(
  ( (C!9633 (val!5412 Int)) )
))
(declare-datatypes ((List!19176 0))(
  ( (Nil!19106) (Cons!19106 (h!24507 C!9632) (t!161711 List!19176)) )
))
(declare-datatypes ((Regex!4729 0))(
  ( (ElementMatch!4729 (c!283826 C!9632)) (Concat!8221 (regOne!9970 Regex!4729) (regTwo!9970 Regex!4729)) (EmptyExpr!4729) (Star!4729 (reg!5058 Regex!4729)) (EmptyLang!4729) (Union!4729 (regOne!9971 Regex!4729) (regTwo!9971 Regex!4729)) )
))
(declare-datatypes ((String!21787 0))(
  ( (String!21788 (value!106600 String)) )
))
(declare-datatypes ((IArray!12715 0))(
  ( (IArray!12716 (innerList!6415 List!19176)) )
))
(declare-datatypes ((Conc!6355 0))(
  ( (Node!6355 (left!15281 Conc!6355) (right!15611 Conc!6355) (csize!12940 Int) (cheight!6566 Int)) (Leaf!9276 (xs!9231 IArray!12715) (csize!12941 Int)) (Empty!6355) )
))
(declare-datatypes ((BalanceConc!12654 0))(
  ( (BalanceConc!12655 (c!283827 Conc!6355)) )
))
(declare-datatypes ((TokenValueInjection!6642 0))(
  ( (TokenValueInjection!6643 (toValue!4908 Int) (toChars!4767 Int)) )
))
(declare-datatypes ((Rule!6602 0))(
  ( (Rule!6603 (regex!3401 Regex!4729) (tag!3737 String!21787) (isSeparator!3401 Bool) (transformation!3401 TokenValueInjection!6642)) )
))
(declare-datatypes ((Token!6368 0))(
  ( (Token!6369 (value!106601 TokenValue!3491) (rule!5399 Rule!6602) (size!15186 Int) (originalCharacters!4215 List!19176)) )
))
(declare-datatypes ((tuple2!18762 0))(
  ( (tuple2!18763 (_1!10783 Token!6368) (_2!10783 List!19176)) )
))
(declare-fun lt!670138 () tuple2!18762)

(declare-fun order!11911 () Int)

(declare-fun dynLambda!9018 (Int Int) Int)

(declare-fun dynLambda!9019 (Int Int) Int)

(assert (=> b!1739384 (< (dynLambda!9018 order!11911 (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) (dynLambda!9019 order!11913 lambda!69560))))

(declare-fun order!11915 () Int)

(declare-fun dynLambda!9020 (Int Int) Int)

(assert (=> b!1739384 (< (dynLambda!9020 order!11915 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) (dynLambda!9019 order!11913 lambda!69560))))

(declare-fun b!1739329 () Bool)

(declare-fun res!781832 () Bool)

(declare-fun e!1113238 () Bool)

(assert (=> b!1739329 (=> (not res!781832) (not e!1113238))))

(declare-datatypes ((List!19177 0))(
  ( (Nil!19107) (Cons!19107 (h!24508 Rule!6602) (t!161712 List!19177)) )
))
(declare-fun rules!3447 () List!19177)

(declare-fun rule!422 () Rule!6602)

(declare-fun contains!3423 (List!19177 Rule!6602) Bool)

(assert (=> b!1739329 (= res!781832 (contains!3423 rules!3447 rule!422))))

(declare-fun e!1113240 () Bool)

(assert (=> b!1739330 (= e!1113240 (and tp!495413 tp!495418))))

(declare-fun b!1739331 () Bool)

(declare-datatypes ((Unit!33113 0))(
  ( (Unit!33114) )
))
(declare-fun e!1113225 () Unit!33113)

(declare-fun Unit!33115 () Unit!33113)

(assert (=> b!1739331 (= e!1113225 Unit!33115)))

(declare-fun b!1739332 () Bool)

(declare-fun res!781838 () Bool)

(assert (=> b!1739332 (=> (not res!781838) (not e!1113238))))

(declare-fun isEmpty!12025 (List!19177) Bool)

(assert (=> b!1739332 (= res!781838 (not (isEmpty!12025 rules!3447)))))

(declare-fun b!1739333 () Bool)

(declare-fun res!781835 () Bool)

(declare-fun e!1113212 () Bool)

(assert (=> b!1739333 (=> (not res!781835) (not e!1113212))))

(declare-fun token!523 () Token!6368)

(assert (=> b!1739333 (= res!781835 (= (rule!5399 token!523) rule!422))))

(declare-fun b!1739334 () Bool)

(declare-fun e!1113227 () Bool)

(assert (=> b!1739334 (= e!1113227 false)))

(declare-fun b!1739335 () Bool)

(declare-fun e!1113219 () Unit!33113)

(declare-fun Unit!33116 () Unit!33113)

(assert (=> b!1739335 (= e!1113219 Unit!33116)))

(declare-fun b!1739337 () Bool)

(assert (=> b!1739337 false))

(declare-fun lt!670159 () Unit!33113)

(declare-fun lemmaSameIndexThenSameElement!102 (List!19177 Rule!6602 Rule!6602) Unit!33113)

(assert (=> b!1739337 (= lt!670159 (lemmaSameIndexThenSameElement!102 rules!3447 (rule!5399 (_1!10783 lt!670138)) (rule!5399 token!523)))))

(declare-fun e!1113213 () Unit!33113)

(declare-fun Unit!33117 () Unit!33113)

(assert (=> b!1739337 (= e!1113213 Unit!33117)))

(declare-fun b!1739338 () Bool)

(declare-fun e!1113217 () Bool)

(assert (=> b!1739338 e!1113217))

(declare-fun res!781841 () Bool)

(assert (=> b!1739338 (=> (not res!781841) (not e!1113217))))

(declare-fun lt!670161 () List!19176)

(declare-fun matchR!2203 (Regex!4729 List!19176) Bool)

(assert (=> b!1739338 (= res!781841 (not (matchR!2203 (regex!3401 (rule!5399 (_1!10783 lt!670138))) lt!670161)))))

(declare-datatypes ((LexerInterface!3030 0))(
  ( (LexerInterfaceExt!3027 (__x!12285 Int)) (Lexer!3028) )
))
(declare-fun thiss!24550 () LexerInterface!3030)

(declare-fun lt!670147 () Unit!33113)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!138 (LexerInterface!3030 List!19177 Rule!6602 List!19176 List!19176 Rule!6602) Unit!33113)

(assert (=> b!1739338 (= lt!670147 (lemmaMaxPrefNoSmallerRuleMatches!138 thiss!24550 rules!3447 (rule!5399 token!523) lt!670161 lt!670161 (rule!5399 (_1!10783 lt!670138))))))

(declare-fun Unit!33118 () Unit!33113)

(assert (=> b!1739338 (= e!1113219 Unit!33118)))

(declare-fun b!1739339 () Bool)

(declare-fun e!1113211 () Bool)

(declare-fun e!1113218 () Bool)

(assert (=> b!1739339 (= e!1113211 e!1113218)))

(declare-fun res!781846 () Bool)

(assert (=> b!1739339 (=> (not res!781846) (not e!1113218))))

(declare-fun lt!670153 () Rule!6602)

(declare-fun list!7726 (BalanceConc!12654) List!19176)

(declare-fun charsOf!2050 (Token!6368) BalanceConc!12654)

(assert (=> b!1739339 (= res!781846 (matchR!2203 (regex!3401 lt!670153) (list!7726 (charsOf!2050 (_1!10783 lt!670138)))))))

(declare-datatypes ((Option!3826 0))(
  ( (None!3825) (Some!3825 (v!25254 Rule!6602)) )
))
(declare-fun lt!670178 () Option!3826)

(declare-fun get!5744 (Option!3826) Rule!6602)

(assert (=> b!1739339 (= lt!670153 (get!5744 lt!670178))))

(declare-fun b!1739340 () Bool)

(declare-fun e!1113214 () Bool)

(assert (=> b!1739340 (= e!1113238 e!1113214)))

(declare-fun res!781836 () Bool)

(assert (=> b!1739340 (=> (not res!781836) (not e!1113214))))

(declare-datatypes ((Option!3827 0))(
  ( (None!3826) (Some!3826 (v!25255 tuple2!18762)) )
))
(declare-fun lt!670181 () Option!3827)

(declare-fun isDefined!3169 (Option!3827) Bool)

(assert (=> b!1739340 (= res!781836 (isDefined!3169 lt!670181))))

(declare-fun maxPrefix!1584 (LexerInterface!3030 List!19177 List!19176) Option!3827)

(assert (=> b!1739340 (= lt!670181 (maxPrefix!1584 thiss!24550 rules!3447 lt!670161))))

(declare-fun lt!670163 () BalanceConc!12654)

(assert (=> b!1739340 (= lt!670161 (list!7726 lt!670163))))

(assert (=> b!1739340 (= lt!670163 (charsOf!2050 token!523))))

(declare-fun b!1739341 () Bool)

(assert (=> b!1739341 (= e!1113214 e!1113212)))

(declare-fun res!781831 () Bool)

(assert (=> b!1739341 (=> (not res!781831) (not e!1113212))))

(declare-fun lt!670142 () tuple2!18762)

(assert (=> b!1739341 (= res!781831 (= (_1!10783 lt!670142) token!523))))

(declare-fun get!5745 (Option!3827) tuple2!18762)

(assert (=> b!1739341 (= lt!670142 (get!5745 lt!670181))))

(declare-fun e!1113210 () Bool)

(declare-fun b!1739342 () Bool)

(declare-fun e!1113231 () Bool)

(declare-fun tp!495415 () Bool)

(declare-fun inv!21 (TokenValue!3491) Bool)

(assert (=> b!1739342 (= e!1113210 (and (inv!21 (value!106601 token!523)) e!1113231 tp!495415))))

(declare-fun b!1739343 () Bool)

(declare-fun e!1113230 () Bool)

(declare-fun e!1113226 () Bool)

(assert (=> b!1739343 (= e!1113230 e!1113226)))

(declare-fun res!781834 () Bool)

(assert (=> b!1739343 (=> res!781834 e!1113226)))

(declare-fun lt!670189 () BalanceConc!12654)

(declare-fun lt!670179 () List!19176)

(declare-fun dynLambda!9021 (Int TokenValue!3491) BalanceConc!12654)

(declare-fun dynLambda!9022 (Int BalanceConc!12654) TokenValue!3491)

(assert (=> b!1739343 (= res!781834 (not (= (list!7726 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (dynLambda!9022 (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) lt!670189))) lt!670179)))))

(declare-fun lt!670172 () Unit!33113)

(declare-fun lemmaSemiInverse!547 (TokenValueInjection!6642 BalanceConc!12654) Unit!33113)

(assert (=> b!1739343 (= lt!670172 (lemmaSemiInverse!547 (transformation!3401 (rule!5399 (_1!10783 lt!670138))) lt!670189))))

(declare-fun b!1739344 () Bool)

(declare-fun e!1113229 () Bool)

(declare-fun e!1113220 () Bool)

(assert (=> b!1739344 (= e!1113229 e!1113220)))

(declare-fun res!781851 () Bool)

(assert (=> b!1739344 (=> res!781851 e!1113220)))

(declare-fun lt!670170 () Int)

(declare-fun lt!670185 () Int)

(assert (=> b!1739344 (= res!781851 (not (= lt!670170 lt!670185)))))

(declare-fun lt!670173 () Unit!33113)

(declare-fun e!1113223 () Unit!33113)

(assert (=> b!1739344 (= lt!670173 e!1113223)))

(declare-fun c!283821 () Bool)

(assert (=> b!1739344 (= c!283821 (< lt!670170 lt!670185))))

(declare-fun e!1113216 () Bool)

(assert (=> b!1739345 (= e!1113216 (and tp!495409 tp!495420))))

(declare-fun b!1739346 () Bool)

(declare-fun e!1113239 () Bool)

(assert (=> b!1739346 (= e!1113226 e!1113239)))

(declare-fun res!781849 () Bool)

(assert (=> b!1739346 (=> res!781849 e!1113239)))

(declare-fun lt!670144 () TokenValue!3491)

(declare-fun lt!670169 () Option!3827)

(assert (=> b!1739346 (= res!781849 (not (= lt!670169 (Some!3826 (tuple2!18763 (Token!6369 lt!670144 (rule!5399 (_1!10783 lt!670138)) lt!670170 lt!670179) (_2!10783 lt!670138))))))))

(declare-fun size!15187 (BalanceConc!12654) Int)

(assert (=> b!1739346 (= lt!670170 (size!15187 lt!670189))))

(declare-fun apply!5206 (TokenValueInjection!6642 BalanceConc!12654) TokenValue!3491)

(assert (=> b!1739346 (= lt!670144 (apply!5206 (transformation!3401 (rule!5399 (_1!10783 lt!670138))) lt!670189))))

(declare-fun lt!670174 () Unit!33113)

(declare-fun lemmaCharactersSize!473 (Token!6368) Unit!33113)

(assert (=> b!1739346 (= lt!670174 (lemmaCharactersSize!473 (_1!10783 lt!670138)))))

(declare-fun lt!670180 () Unit!33113)

(declare-fun lemmaEqSameImage!326 (TokenValueInjection!6642 BalanceConc!12654 BalanceConc!12654) Unit!33113)

(declare-fun seqFromList!2375 (List!19176) BalanceConc!12654)

(assert (=> b!1739346 (= lt!670180 (lemmaEqSameImage!326 (transformation!3401 (rule!5399 (_1!10783 lt!670138))) lt!670189 (seqFromList!2375 (originalCharacters!4215 (_1!10783 lt!670138)))))))

(declare-fun b!1739347 () Bool)

(assert (=> b!1739347 e!1113227))

(declare-fun res!781837 () Bool)

(assert (=> b!1739347 (=> (not res!781837) (not e!1113227))))

(assert (=> b!1739347 (= res!781837 (not (matchR!2203 (regex!3401 (rule!5399 token!523)) lt!670179)))))

(declare-fun lt!670160 () List!19176)

(declare-fun lt!670158 () Unit!33113)

(assert (=> b!1739347 (= lt!670158 (lemmaMaxPrefNoSmallerRuleMatches!138 thiss!24550 rules!3447 (rule!5399 (_1!10783 lt!670138)) lt!670179 lt!670160 (rule!5399 token!523)))))

(declare-fun Unit!33119 () Unit!33113)

(assert (=> b!1739347 (= e!1113225 Unit!33119)))

(declare-fun b!1739348 () Bool)

(declare-fun e!1113235 () Bool)

(assert (=> b!1739348 (= e!1113212 (not e!1113235))))

(declare-fun res!781830 () Bool)

(assert (=> b!1739348 (=> res!781830 e!1113235)))

(assert (=> b!1739348 (= res!781830 (not (matchR!2203 (regex!3401 rule!422) lt!670161)))))

(declare-fun ruleValid!900 (LexerInterface!3030 Rule!6602) Bool)

(assert (=> b!1739348 (ruleValid!900 thiss!24550 rule!422)))

(declare-fun lt!670168 () Unit!33113)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!424 (LexerInterface!3030 Rule!6602 List!19177) Unit!33113)

(assert (=> b!1739348 (= lt!670168 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!424 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!495411 () Bool)

(declare-fun b!1739349 () Bool)

(declare-fun e!1113241 () Bool)

(declare-fun inv!24751 (String!21787) Bool)

(declare-fun inv!24756 (TokenValueInjection!6642) Bool)

(assert (=> b!1739349 (= e!1113241 (and tp!495411 (inv!24751 (tag!3737 (h!24508 rules!3447))) (inv!24756 (transformation!3401 (h!24508 rules!3447))) e!1113240))))

(declare-fun b!1739350 () Bool)

(declare-fun res!781843 () Bool)

(declare-fun e!1113243 () Bool)

(assert (=> b!1739350 (=> res!781843 e!1113243)))

(assert (=> b!1739350 (= res!781843 (not (matchR!2203 (regex!3401 (rule!5399 (_1!10783 lt!670138))) lt!670179)))))

(declare-fun e!1113237 () Bool)

(assert (=> b!1739351 (= e!1113237 (and tp!495412 tp!495410))))

(declare-fun b!1739352 () Bool)

(declare-fun e!1113236 () Bool)

(assert (=> b!1739352 (= e!1113239 e!1113236)))

(declare-fun res!781842 () Bool)

(assert (=> b!1739352 (=> res!781842 e!1113236)))

(declare-fun lt!670141 () Option!3827)

(declare-fun lt!670150 () List!19176)

(assert (=> b!1739352 (= res!781842 (or (not (= lt!670150 (_2!10783 lt!670138))) (not (= lt!670141 (Some!3826 (tuple2!18763 (_1!10783 lt!670138) lt!670150))))))))

(assert (=> b!1739352 (= (_2!10783 lt!670138) lt!670150)))

(declare-fun lt!670154 () Unit!33113)

(declare-fun lemmaSamePrefixThenSameSuffix!786 (List!19176 List!19176 List!19176 List!19176 List!19176) Unit!33113)

(assert (=> b!1739352 (= lt!670154 (lemmaSamePrefixThenSameSuffix!786 lt!670179 (_2!10783 lt!670138) lt!670179 lt!670150 lt!670160))))

(declare-fun getSuffix!836 (List!19176 List!19176) List!19176)

(assert (=> b!1739352 (= lt!670150 (getSuffix!836 lt!670160 lt!670179))))

(declare-fun lt!670164 () TokenValue!3491)

(declare-fun lt!670166 () Int)

(assert (=> b!1739352 (= lt!670141 (Some!3826 (tuple2!18763 (Token!6369 lt!670164 (rule!5399 (_1!10783 lt!670138)) lt!670166 lt!670179) (_2!10783 lt!670138))))))

(declare-fun maxPrefixOneRule!960 (LexerInterface!3030 Rule!6602 List!19176) Option!3827)

(assert (=> b!1739352 (= lt!670141 (maxPrefixOneRule!960 thiss!24550 (rule!5399 (_1!10783 lt!670138)) lt!670160))))

(declare-fun size!15188 (List!19176) Int)

(assert (=> b!1739352 (= lt!670166 (size!15188 lt!670179))))

(assert (=> b!1739352 (= lt!670164 (apply!5206 (transformation!3401 (rule!5399 (_1!10783 lt!670138))) (seqFromList!2375 lt!670179)))))

(declare-fun lt!670190 () Unit!33113)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!359 (LexerInterface!3030 List!19177 List!19176 List!19176 List!19176 Rule!6602) Unit!33113)

(assert (=> b!1739352 (= lt!670190 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!359 thiss!24550 rules!3447 lt!670179 lt!670160 (_2!10783 lt!670138) (rule!5399 (_1!10783 lt!670138))))))

(declare-fun b!1739353 () Bool)

(declare-fun res!781833 () Bool)

(assert (=> b!1739353 (=> res!781833 e!1113235)))

(declare-fun suffix!1421 () List!19176)

(declare-fun isEmpty!12026 (List!19176) Bool)

(assert (=> b!1739353 (= res!781833 (isEmpty!12026 suffix!1421))))

(declare-fun b!1739354 () Bool)

(declare-fun e!1113233 () Bool)

(assert (=> b!1739354 (= e!1113235 e!1113233)))

(declare-fun res!781840 () Bool)

(assert (=> b!1739354 (=> res!781840 e!1113233)))

(declare-fun lt!670156 () Regex!4729)

(declare-fun lt!670146 () List!19176)

(declare-fun prefixMatch!614 (Regex!4729 List!19176) Bool)

(assert (=> b!1739354 (= res!781840 (prefixMatch!614 lt!670156 lt!670146))))

(declare-fun ++!5226 (List!19176 List!19176) List!19176)

(declare-fun head!3980 (List!19176) C!9632)

(assert (=> b!1739354 (= lt!670146 (++!5226 lt!670161 (Cons!19106 (head!3980 suffix!1421) Nil!19106)))))

(declare-fun rulesRegex!759 (LexerInterface!3030 List!19177) Regex!4729)

(assert (=> b!1739354 (= lt!670156 (rulesRegex!759 thiss!24550 rules!3447))))

(declare-fun b!1739355 () Bool)

(declare-fun Unit!33120 () Unit!33113)

(assert (=> b!1739355 (= e!1113213 Unit!33120)))

(declare-fun b!1739356 () Bool)

(assert (=> b!1739356 (= e!1113218 (= (rule!5399 (_1!10783 lt!670138)) lt!670153))))

(declare-fun b!1739357 () Bool)

(declare-fun tp!495419 () Bool)

(assert (=> b!1739357 (= e!1113231 (and tp!495419 (inv!24751 (tag!3737 (rule!5399 token!523))) (inv!24756 (transformation!3401 (rule!5399 token!523))) e!1113237))))

(declare-fun b!1739358 () Bool)

(declare-fun e!1113242 () Bool)

(declare-fun tp!495414 () Bool)

(assert (=> b!1739358 (= e!1113242 (and e!1113241 tp!495414))))

(declare-fun b!1739359 () Bool)

(declare-fun res!781850 () Bool)

(assert (=> b!1739359 (=> (not res!781850) (not e!1113212))))

(assert (=> b!1739359 (= res!781850 (isEmpty!12026 (_2!10783 lt!670142)))))

(declare-fun b!1739360 () Bool)

(declare-fun res!781848 () Bool)

(assert (=> b!1739360 (=> (not res!781848) (not e!1113238))))

(declare-fun rulesInvariant!2699 (LexerInterface!3030 List!19177) Bool)

(assert (=> b!1739360 (= res!781848 (rulesInvariant!2699 thiss!24550 rules!3447))))

(declare-fun b!1739361 () Bool)

(declare-fun e!1113215 () Unit!33113)

(declare-fun Unit!33121 () Unit!33113)

(assert (=> b!1739361 (= e!1113215 Unit!33121)))

(declare-fun lt!670176 () Int)

(declare-fun getIndex!168 (List!19177 Rule!6602) Int)

(assert (=> b!1739361 (= lt!670176 (getIndex!168 rules!3447 (rule!5399 token!523)))))

(declare-fun lt!670167 () Int)

(assert (=> b!1739361 (= lt!670167 (getIndex!168 rules!3447 (rule!5399 (_1!10783 lt!670138))))))

(declare-fun c!283824 () Bool)

(assert (=> b!1739361 (= c!283824 (< lt!670176 lt!670167))))

(declare-fun lt!670186 () Unit!33113)

(assert (=> b!1739361 (= lt!670186 e!1113225)))

(declare-fun c!283822 () Bool)

(assert (=> b!1739361 (= c!283822 (< lt!670167 lt!670176))))

(declare-fun lt!670175 () Unit!33113)

(assert (=> b!1739361 (= lt!670175 e!1113219)))

(declare-fun c!283823 () Bool)

(assert (=> b!1739361 (= c!283823 (= lt!670167 lt!670176))))

(declare-fun lt!670157 () Unit!33113)

(assert (=> b!1739361 (= lt!670157 e!1113213)))

(assert (=> b!1739361 false))

(declare-fun b!1739362 () Bool)

(declare-fun Unit!33122 () Unit!33113)

(assert (=> b!1739362 (= e!1113223 Unit!33122)))

(assert (=> b!1739363 (= e!1113243 e!1113230)))

(declare-fun res!781845 () Bool)

(assert (=> b!1739363 (=> res!781845 e!1113230)))

(declare-fun Forall!776 (Int) Bool)

(assert (=> b!1739363 (= res!781845 (not (Forall!776 lambda!69560)))))

(declare-fun lt!670162 () Unit!33113)

(declare-fun lemmaInv!608 (TokenValueInjection!6642) Unit!33113)

(assert (=> b!1739363 (= lt!670162 (lemmaInv!608 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))))))

(declare-fun b!1739364 () Bool)

(assert (=> b!1739364 (= e!1113236 e!1113229)))

(declare-fun res!781844 () Bool)

(assert (=> b!1739364 (=> res!781844 e!1113229)))

(declare-fun lt!670183 () Bool)

(assert (=> b!1739364 (= res!781844 lt!670183)))

(declare-fun lt!670171 () Unit!33113)

(declare-fun e!1113228 () Unit!33113)

(assert (=> b!1739364 (= lt!670171 e!1113228)))

(declare-fun c!283825 () Bool)

(assert (=> b!1739364 (= c!283825 lt!670183)))

(assert (=> b!1739364 (= lt!670183 (> lt!670170 lt!670185))))

(assert (=> b!1739364 (= lt!670185 (size!15187 lt!670163))))

(assert (=> b!1739364 (matchR!2203 lt!670156 lt!670161)))

(declare-fun lt!670187 () Unit!33113)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!150 (LexerInterface!3030 List!19177 List!19176 Token!6368 Rule!6602 List!19176) Unit!33113)

(assert (=> b!1739364 (= lt!670187 (lemmaMaxPrefixThenMatchesRulesRegex!150 thiss!24550 rules!3447 lt!670161 token!523 rule!422 Nil!19106))))

(declare-fun b!1739365 () Bool)

(declare-fun Unit!33123 () Unit!33113)

(assert (=> b!1739365 (= e!1113228 Unit!33123)))

(declare-fun lt!670182 () Unit!33113)

(assert (=> b!1739365 (= lt!670182 (lemmaMaxPrefixThenMatchesRulesRegex!150 thiss!24550 rules!3447 lt!670160 (_1!10783 lt!670138) (rule!5399 (_1!10783 lt!670138)) (_2!10783 lt!670138)))))

(assert (=> b!1739365 (matchR!2203 lt!670156 lt!670179)))

(declare-fun lt!670140 () List!19176)

(assert (=> b!1739365 (= lt!670140 (getSuffix!836 lt!670160 lt!670161))))

(declare-fun lt!670152 () Unit!33113)

(assert (=> b!1739365 (= lt!670152 (lemmaSamePrefixThenSameSuffix!786 lt!670161 suffix!1421 lt!670161 lt!670140 lt!670160))))

(assert (=> b!1739365 (= suffix!1421 lt!670140)))

(declare-fun lt!670188 () Unit!33113)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!237 (List!19176 List!19176) Unit!33113)

(assert (=> b!1739365 (= lt!670188 (lemmaAddHeadSuffixToPrefixStillPrefix!237 lt!670161 lt!670160))))

(declare-fun isPrefix!1642 (List!19176 List!19176) Bool)

(assert (=> b!1739365 (isPrefix!1642 (++!5226 lt!670161 (Cons!19106 (head!3980 lt!670140) Nil!19106)) lt!670160)))

(declare-fun lt!670177 () Unit!33113)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!117 (List!19176 List!19176 List!19176) Unit!33113)

(assert (=> b!1739365 (= lt!670177 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!117 lt!670179 lt!670146 lt!670160))))

(assert (=> b!1739365 (isPrefix!1642 lt!670146 lt!670179)))

(declare-fun lt!670139 () Unit!33113)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!110 (Regex!4729 List!19176 List!19176) Unit!33113)

(assert (=> b!1739365 (= lt!670139 (lemmaNotPrefixMatchThenCannotMatchLonger!110 lt!670156 lt!670146 lt!670179))))

(assert (=> b!1739365 false))

(declare-fun b!1739366 () Bool)

(declare-fun Unit!33124 () Unit!33113)

(assert (=> b!1739366 (= e!1113215 Unit!33124)))

(declare-fun b!1739336 () Bool)

(declare-fun res!781829 () Bool)

(assert (=> b!1739336 (=> res!781829 e!1113226)))

(assert (=> b!1739336 (= res!781829 (not (= lt!670189 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (value!106601 (_1!10783 lt!670138))))))))

(declare-fun res!781852 () Bool)

(assert (=> start!171150 (=> (not res!781852) (not e!1113238))))

(get-info :version)

(assert (=> start!171150 (= res!781852 ((_ is Lexer!3028) thiss!24550))))

(assert (=> start!171150 e!1113238))

(declare-fun e!1113232 () Bool)

(assert (=> start!171150 e!1113232))

(declare-fun e!1113222 () Bool)

(assert (=> start!171150 e!1113222))

(assert (=> start!171150 true))

(declare-fun inv!24757 (Token!6368) Bool)

(assert (=> start!171150 (and (inv!24757 token!523) e!1113210)))

(assert (=> start!171150 e!1113242))

(declare-fun b!1739367 () Bool)

(declare-fun tp_is_empty!7701 () Bool)

(declare-fun tp!495417 () Bool)

(assert (=> b!1739367 (= e!1113232 (and tp_is_empty!7701 tp!495417))))

(declare-fun tp!495416 () Bool)

(declare-fun b!1739368 () Bool)

(assert (=> b!1739368 (= e!1113222 (and tp!495416 (inv!24751 (tag!3737 rule!422)) (inv!24756 (transformation!3401 rule!422)) e!1113216))))

(declare-fun b!1739369 () Bool)

(declare-fun Unit!33125 () Unit!33113)

(assert (=> b!1739369 (= e!1113228 Unit!33125)))

(declare-fun b!1739370 () Bool)

(assert (=> b!1739370 (= e!1113220 true)))

(declare-fun lt!670184 () Unit!33113)

(assert (=> b!1739370 (= lt!670184 e!1113215)))

(declare-fun c!283820 () Bool)

(assert (=> b!1739370 (= c!283820 (not (= (rule!5399 (_1!10783 lt!670138)) (rule!5399 token!523))))))

(assert (=> b!1739370 (= suffix!1421 (_2!10783 lt!670138))))

(declare-fun lt!670165 () Unit!33113)

(assert (=> b!1739370 (= lt!670165 (lemmaSamePrefixThenSameSuffix!786 lt!670161 suffix!1421 lt!670161 (_2!10783 lt!670138) lt!670160))))

(assert (=> b!1739370 (= lt!670179 lt!670161)))

(declare-fun lt!670151 () Unit!33113)

(declare-fun lemmaIsPrefixSameLengthThenSameList!229 (List!19176 List!19176 List!19176) Unit!33113)

(assert (=> b!1739370 (= lt!670151 (lemmaIsPrefixSameLengthThenSameList!229 lt!670179 lt!670161 lt!670160))))

(declare-fun b!1739371 () Bool)

(declare-fun Unit!33126 () Unit!33113)

(assert (=> b!1739371 (= e!1113223 Unit!33126)))

(declare-fun lt!670143 () Unit!33113)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!198 (LexerInterface!3030 List!19177 Rule!6602 List!19176 List!19176 List!19176 Rule!6602) Unit!33113)

(assert (=> b!1739371 (= lt!670143 (lemmaMaxPrefixOutputsMaxPrefix!198 thiss!24550 rules!3447 (rule!5399 (_1!10783 lt!670138)) lt!670179 lt!670160 lt!670161 rule!422))))

(assert (=> b!1739371 false))

(declare-fun b!1739372 () Bool)

(assert (=> b!1739372 (= e!1113233 e!1113243)))

(declare-fun res!781847 () Bool)

(assert (=> b!1739372 (=> res!781847 e!1113243)))

(assert (=> b!1739372 (= res!781847 (not (isPrefix!1642 lt!670179 lt!670160)))))

(assert (=> b!1739372 (isPrefix!1642 lt!670179 (++!5226 lt!670179 (_2!10783 lt!670138)))))

(declare-fun lt!670155 () Unit!33113)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1152 (List!19176 List!19176) Unit!33113)

(assert (=> b!1739372 (= lt!670155 (lemmaConcatTwoListThenFirstIsPrefix!1152 lt!670179 (_2!10783 lt!670138)))))

(assert (=> b!1739372 (= lt!670179 (list!7726 lt!670189))))

(assert (=> b!1739372 (= lt!670189 (charsOf!2050 (_1!10783 lt!670138)))))

(assert (=> b!1739372 e!1113211))

(declare-fun res!781839 () Bool)

(assert (=> b!1739372 (=> (not res!781839) (not e!1113211))))

(declare-fun isDefined!3170 (Option!3826) Bool)

(assert (=> b!1739372 (= res!781839 (isDefined!3170 lt!670178))))

(declare-fun getRuleFromTag!451 (LexerInterface!3030 List!19177 String!21787) Option!3826)

(assert (=> b!1739372 (= lt!670178 (getRuleFromTag!451 thiss!24550 rules!3447 (tag!3737 (rule!5399 (_1!10783 lt!670138)))))))

(declare-fun lt!670149 () Unit!33113)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!451 (LexerInterface!3030 List!19177 List!19176 Token!6368) Unit!33113)

(assert (=> b!1739372 (= lt!670149 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!451 thiss!24550 rules!3447 lt!670160 (_1!10783 lt!670138)))))

(assert (=> b!1739372 (= lt!670138 (get!5745 lt!670169))))

(declare-fun lt!670145 () Unit!33113)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!554 (LexerInterface!3030 List!19177 List!19176 List!19176) Unit!33113)

(assert (=> b!1739372 (= lt!670145 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!554 thiss!24550 rules!3447 lt!670161 suffix!1421))))

(assert (=> b!1739372 (= lt!670169 (maxPrefix!1584 thiss!24550 rules!3447 lt!670160))))

(assert (=> b!1739372 (isPrefix!1642 lt!670161 lt!670160)))

(declare-fun lt!670148 () Unit!33113)

(assert (=> b!1739372 (= lt!670148 (lemmaConcatTwoListThenFirstIsPrefix!1152 lt!670161 suffix!1421))))

(assert (=> b!1739372 (= lt!670160 (++!5226 lt!670161 suffix!1421))))

(declare-fun b!1739373 () Bool)

(assert (=> b!1739373 (= e!1113217 false)))

(assert (= (and start!171150 res!781852) b!1739332))

(assert (= (and b!1739332 res!781838) b!1739360))

(assert (= (and b!1739360 res!781848) b!1739329))

(assert (= (and b!1739329 res!781832) b!1739340))

(assert (= (and b!1739340 res!781836) b!1739341))

(assert (= (and b!1739341 res!781831) b!1739359))

(assert (= (and b!1739359 res!781850) b!1739333))

(assert (= (and b!1739333 res!781835) b!1739348))

(assert (= (and b!1739348 (not res!781830)) b!1739353))

(assert (= (and b!1739353 (not res!781833)) b!1739354))

(assert (= (and b!1739354 (not res!781840)) b!1739372))

(assert (= (and b!1739372 res!781839) b!1739339))

(assert (= (and b!1739339 res!781846) b!1739356))

(assert (= (and b!1739372 (not res!781847)) b!1739350))

(assert (= (and b!1739350 (not res!781843)) b!1739363))

(assert (= (and b!1739363 (not res!781845)) b!1739343))

(assert (= (and b!1739343 (not res!781834)) b!1739336))

(assert (= (and b!1739336 (not res!781829)) b!1739346))

(assert (= (and b!1739346 (not res!781849)) b!1739352))

(assert (= (and b!1739352 (not res!781842)) b!1739364))

(assert (= (and b!1739364 c!283825) b!1739365))

(assert (= (and b!1739364 (not c!283825)) b!1739369))

(assert (= (and b!1739364 (not res!781844)) b!1739344))

(assert (= (and b!1739344 c!283821) b!1739371))

(assert (= (and b!1739344 (not c!283821)) b!1739362))

(assert (= (and b!1739344 (not res!781851)) b!1739370))

(assert (= (and b!1739370 c!283820) b!1739361))

(assert (= (and b!1739370 (not c!283820)) b!1739366))

(assert (= (and b!1739361 c!283824) b!1739347))

(assert (= (and b!1739361 (not c!283824)) b!1739331))

(assert (= (and b!1739347 res!781837) b!1739334))

(assert (= (and b!1739361 c!283822) b!1739338))

(assert (= (and b!1739361 (not c!283822)) b!1739335))

(assert (= (and b!1739338 res!781841) b!1739373))

(assert (= (and b!1739361 c!283823) b!1739337))

(assert (= (and b!1739361 (not c!283823)) b!1739355))

(assert (= (and start!171150 ((_ is Cons!19106) suffix!1421)) b!1739367))

(assert (= b!1739368 b!1739345))

(assert (= start!171150 b!1739368))

(assert (= b!1739357 b!1739351))

(assert (= b!1739342 b!1739357))

(assert (= start!171150 b!1739342))

(assert (= b!1739349 b!1739330))

(assert (= b!1739358 b!1739349))

(assert (= (and start!171150 ((_ is Cons!19107) rules!3447)) b!1739358))

(declare-fun b_lambda!55691 () Bool)

(assert (=> (not b_lambda!55691) (not b!1739343)))

(declare-fun tb!103953 () Bool)

(declare-fun t!161693 () Bool)

(assert (=> (and b!1739345 (= (toChars!4767 (transformation!3401 rule!422)) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161693) tb!103953))

(declare-fun e!1113256 () Bool)

(declare-fun b!1739389 () Bool)

(declare-fun tp!495423 () Bool)

(declare-fun inv!24758 (Conc!6355) Bool)

(assert (=> b!1739389 (= e!1113256 (and (inv!24758 (c!283827 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (dynLambda!9022 (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) lt!670189)))) tp!495423))))

(declare-fun result!125020 () Bool)

(declare-fun inv!24759 (BalanceConc!12654) Bool)

(assert (=> tb!103953 (= result!125020 (and (inv!24759 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (dynLambda!9022 (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) lt!670189))) e!1113256))))

(assert (= tb!103953 b!1739389))

(declare-fun m!2149885 () Bool)

(assert (=> b!1739389 m!2149885))

(declare-fun m!2149887 () Bool)

(assert (=> tb!103953 m!2149887))

(assert (=> b!1739343 t!161693))

(declare-fun b_and!129139 () Bool)

(assert (= b_and!129129 (and (=> t!161693 result!125020) b_and!129139)))

(declare-fun tb!103955 () Bool)

(declare-fun t!161695 () Bool)

(assert (=> (and b!1739330 (= (toChars!4767 (transformation!3401 (h!24508 rules!3447))) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161695) tb!103955))

(declare-fun result!125024 () Bool)

(assert (= result!125024 result!125020))

(assert (=> b!1739343 t!161695))

(declare-fun b_and!129141 () Bool)

(assert (= b_and!129133 (and (=> t!161695 result!125024) b_and!129141)))

(declare-fun tb!103957 () Bool)

(declare-fun t!161697 () Bool)

(assert (=> (and b!1739351 (= (toChars!4767 (transformation!3401 (rule!5399 token!523))) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161697) tb!103957))

(declare-fun result!125026 () Bool)

(assert (= result!125026 result!125020))

(assert (=> b!1739343 t!161697))

(declare-fun b_and!129143 () Bool)

(assert (= b_and!129137 (and (=> t!161697 result!125026) b_and!129143)))

(declare-fun b_lambda!55693 () Bool)

(assert (=> (not b_lambda!55693) (not b!1739343)))

(declare-fun t!161699 () Bool)

(declare-fun tb!103959 () Bool)

(assert (=> (and b!1739345 (= (toValue!4908 (transformation!3401 rule!422)) (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161699) tb!103959))

(declare-fun result!125028 () Bool)

(assert (=> tb!103959 (= result!125028 (inv!21 (dynLambda!9022 (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) lt!670189)))))

(declare-fun m!2149889 () Bool)

(assert (=> tb!103959 m!2149889))

(assert (=> b!1739343 t!161699))

(declare-fun b_and!129145 () Bool)

(assert (= b_and!129127 (and (=> t!161699 result!125028) b_and!129145)))

(declare-fun t!161701 () Bool)

(declare-fun tb!103961 () Bool)

(assert (=> (and b!1739330 (= (toValue!4908 (transformation!3401 (h!24508 rules!3447))) (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161701) tb!103961))

(declare-fun result!125032 () Bool)

(assert (= result!125032 result!125028))

(assert (=> b!1739343 t!161701))

(declare-fun b_and!129147 () Bool)

(assert (= b_and!129131 (and (=> t!161701 result!125032) b_and!129147)))

(declare-fun t!161703 () Bool)

(declare-fun tb!103963 () Bool)

(assert (=> (and b!1739351 (= (toValue!4908 (transformation!3401 (rule!5399 token!523))) (toValue!4908 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161703) tb!103963))

(declare-fun result!125034 () Bool)

(assert (= result!125034 result!125028))

(assert (=> b!1739343 t!161703))

(declare-fun b_and!129149 () Bool)

(assert (= b_and!129135 (and (=> t!161703 result!125034) b_and!129149)))

(declare-fun b_lambda!55695 () Bool)

(assert (=> (not b_lambda!55695) (not b!1739336)))

(declare-fun t!161705 () Bool)

(declare-fun tb!103965 () Bool)

(assert (=> (and b!1739345 (= (toChars!4767 (transformation!3401 rule!422)) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161705) tb!103965))

(declare-fun b!1739392 () Bool)

(declare-fun e!1113260 () Bool)

(declare-fun tp!495424 () Bool)

(assert (=> b!1739392 (= e!1113260 (and (inv!24758 (c!283827 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (value!106601 (_1!10783 lt!670138))))) tp!495424))))

(declare-fun result!125036 () Bool)

(assert (=> tb!103965 (= result!125036 (and (inv!24759 (dynLambda!9021 (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138)))) (value!106601 (_1!10783 lt!670138)))) e!1113260))))

(assert (= tb!103965 b!1739392))

(declare-fun m!2149891 () Bool)

(assert (=> b!1739392 m!2149891))

(declare-fun m!2149893 () Bool)

(assert (=> tb!103965 m!2149893))

(assert (=> b!1739336 t!161705))

(declare-fun b_and!129151 () Bool)

(assert (= b_and!129139 (and (=> t!161705 result!125036) b_and!129151)))

(declare-fun t!161707 () Bool)

(declare-fun tb!103967 () Bool)

(assert (=> (and b!1739330 (= (toChars!4767 (transformation!3401 (h!24508 rules!3447))) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161707) tb!103967))

(declare-fun result!125038 () Bool)

(assert (= result!125038 result!125036))

(assert (=> b!1739336 t!161707))

(declare-fun b_and!129153 () Bool)

(assert (= b_and!129141 (and (=> t!161707 result!125038) b_and!129153)))

(declare-fun t!161709 () Bool)

(declare-fun tb!103969 () Bool)

(assert (=> (and b!1739351 (= (toChars!4767 (transformation!3401 (rule!5399 token!523))) (toChars!4767 (transformation!3401 (rule!5399 (_1!10783 lt!670138))))) t!161709) tb!103969))

(declare-fun result!125040 () Bool)

(assert (= result!125040 result!125036))

(assert (=> b!1739336 t!161709))

(declare-fun b_and!129155 () Bool)

(assert (= b_and!129143 (and (=> t!161709 result!125040) b_and!129155)))

(declare-fun m!2149895 () Bool)

(assert (=> b!1739342 m!2149895))

(declare-fun m!2149897 () Bool)

(assert (=> b!1739352 m!2149897))

(declare-fun m!2149899 () Bool)

(assert (=> b!1739352 m!2149899))

(declare-fun m!2149901 () Bool)

(assert (=> b!1739352 m!2149901))

(declare-fun m!2149903 () Bool)

(assert (=> b!1739352 m!2149903))

(declare-fun m!2149905 () Bool)

(assert (=> b!1739352 m!2149905))

(declare-fun m!2149907 () Bool)

(assert (=> b!1739352 m!2149907))

(assert (=> b!1739352 m!2149901))

(declare-fun m!2149909 () Bool)

(assert (=> b!1739352 m!2149909))

(declare-fun m!2149911 () Bool)

(assert (=> b!1739372 m!2149911))

(declare-fun m!2149913 () Bool)

(assert (=> b!1739372 m!2149913))

(declare-fun m!2149915 () Bool)

(assert (=> b!1739372 m!2149915))

(declare-fun m!2149917 () Bool)

(assert (=> b!1739372 m!2149917))

(declare-fun m!2149919 () Bool)

(assert (=> b!1739372 m!2149919))

(declare-fun m!2149921 () Bool)

(assert (=> b!1739372 m!2149921))

(declare-fun m!2149923 () Bool)

(assert (=> b!1739372 m!2149923))

(declare-fun m!2149925 () Bool)

(assert (=> b!1739372 m!2149925))

(declare-fun m!2149927 () Bool)

(assert (=> b!1739372 m!2149927))

(declare-fun m!2149929 () Bool)

(assert (=> b!1739372 m!2149929))

(declare-fun m!2149931 () Bool)

(assert (=> b!1739372 m!2149931))

(declare-fun m!2149933 () Bool)

(assert (=> b!1739372 m!2149933))

(declare-fun m!2149935 () Bool)

(assert (=> b!1739372 m!2149935))

(declare-fun m!2149937 () Bool)

(assert (=> b!1739372 m!2149937))

(assert (=> b!1739372 m!2149933))

(declare-fun m!2149939 () Bool)

(assert (=> b!1739372 m!2149939))

(declare-fun m!2149941 () Bool)

(assert (=> b!1739343 m!2149941))

(assert (=> b!1739343 m!2149941))

(declare-fun m!2149943 () Bool)

(assert (=> b!1739343 m!2149943))

(assert (=> b!1739343 m!2149943))

(declare-fun m!2149945 () Bool)

(assert (=> b!1739343 m!2149945))

(declare-fun m!2149947 () Bool)

(assert (=> b!1739343 m!2149947))

(declare-fun m!2149949 () Bool)

(assert (=> b!1739340 m!2149949))

(declare-fun m!2149951 () Bool)

(assert (=> b!1739340 m!2149951))

(declare-fun m!2149953 () Bool)

(assert (=> b!1739340 m!2149953))

(declare-fun m!2149955 () Bool)

(assert (=> b!1739340 m!2149955))

(declare-fun m!2149957 () Bool)

(assert (=> b!1739368 m!2149957))

(declare-fun m!2149959 () Bool)

(assert (=> b!1739368 m!2149959))

(declare-fun m!2149961 () Bool)

(assert (=> b!1739338 m!2149961))

(declare-fun m!2149963 () Bool)

(assert (=> b!1739338 m!2149963))

(declare-fun m!2149965 () Bool)

(assert (=> b!1739332 m!2149965))

(declare-fun m!2149967 () Bool)

(assert (=> b!1739329 m!2149967))

(declare-fun m!2149969 () Bool)

(assert (=> b!1739360 m!2149969))

(declare-fun m!2149971 () Bool)

(assert (=> b!1739348 m!2149971))

(declare-fun m!2149973 () Bool)

(assert (=> b!1739348 m!2149973))

(declare-fun m!2149975 () Bool)

(assert (=> b!1739348 m!2149975))

(declare-fun m!2149977 () Bool)

(assert (=> b!1739365 m!2149977))

(declare-fun m!2149979 () Bool)

(assert (=> b!1739365 m!2149979))

(declare-fun m!2149981 () Bool)

(assert (=> b!1739365 m!2149981))

(declare-fun m!2149983 () Bool)

(assert (=> b!1739365 m!2149983))

(declare-fun m!2149985 () Bool)

(assert (=> b!1739365 m!2149985))

(declare-fun m!2149987 () Bool)

(assert (=> b!1739365 m!2149987))

(declare-fun m!2149989 () Bool)

(assert (=> b!1739365 m!2149989))

(declare-fun m!2149991 () Bool)

(assert (=> b!1739365 m!2149991))

(declare-fun m!2149993 () Bool)

(assert (=> b!1739365 m!2149993))

(declare-fun m!2149995 () Bool)

(assert (=> b!1739365 m!2149995))

(assert (=> b!1739365 m!2149981))

(declare-fun m!2149997 () Bool)

(assert (=> b!1739365 m!2149997))

(declare-fun m!2149999 () Bool)

(assert (=> b!1739347 m!2149999))

(declare-fun m!2150001 () Bool)

(assert (=> b!1739347 m!2150001))

(declare-fun m!2150003 () Bool)

(assert (=> b!1739363 m!2150003))

(declare-fun m!2150005 () Bool)

(assert (=> b!1739363 m!2150005))

(declare-fun m!2150007 () Bool)

(assert (=> b!1739336 m!2150007))

(declare-fun m!2150009 () Bool)

(assert (=> b!1739359 m!2150009))

(declare-fun m!2150011 () Bool)

(assert (=> b!1739357 m!2150011))

(declare-fun m!2150013 () Bool)

(assert (=> b!1739357 m!2150013))

(declare-fun m!2150015 () Bool)

(assert (=> b!1739346 m!2150015))

(declare-fun m!2150017 () Bool)

(assert (=> b!1739346 m!2150017))

(declare-fun m!2150019 () Bool)

(assert (=> b!1739346 m!2150019))

(declare-fun m!2150021 () Bool)

(assert (=> b!1739346 m!2150021))

(assert (=> b!1739346 m!2150019))

(declare-fun m!2150023 () Bool)

(assert (=> b!1739346 m!2150023))

(declare-fun m!2150025 () Bool)

(assert (=> b!1739353 m!2150025))

(declare-fun m!2150027 () Bool)

(assert (=> b!1739341 m!2150027))

(declare-fun m!2150029 () Bool)

(assert (=> b!1739337 m!2150029))

(declare-fun m!2150031 () Bool)

(assert (=> b!1739349 m!2150031))

(declare-fun m!2150033 () Bool)

(assert (=> b!1739349 m!2150033))

(declare-fun m!2150035 () Bool)

(assert (=> b!1739370 m!2150035))

(declare-fun m!2150037 () Bool)

(assert (=> b!1739370 m!2150037))

(declare-fun m!2150039 () Bool)

(assert (=> b!1739371 m!2150039))

(declare-fun m!2150041 () Bool)

(assert (=> b!1739354 m!2150041))

(declare-fun m!2150043 () Bool)

(assert (=> b!1739354 m!2150043))

(declare-fun m!2150045 () Bool)

(assert (=> b!1739354 m!2150045))

(declare-fun m!2150047 () Bool)

(assert (=> b!1739354 m!2150047))

(declare-fun m!2150049 () Bool)

(assert (=> b!1739361 m!2150049))

(declare-fun m!2150051 () Bool)

(assert (=> b!1739361 m!2150051))

(declare-fun m!2150053 () Bool)

(assert (=> b!1739364 m!2150053))

(declare-fun m!2150055 () Bool)

(assert (=> b!1739364 m!2150055))

(declare-fun m!2150057 () Bool)

(assert (=> b!1739364 m!2150057))

(declare-fun m!2150059 () Bool)

(assert (=> b!1739350 m!2150059))

(declare-fun m!2150061 () Bool)

(assert (=> start!171150 m!2150061))

(assert (=> b!1739339 m!2149931))

(assert (=> b!1739339 m!2149931))

(declare-fun m!2150063 () Bool)

(assert (=> b!1739339 m!2150063))

(assert (=> b!1739339 m!2150063))

(declare-fun m!2150065 () Bool)

(assert (=> b!1739339 m!2150065))

(declare-fun m!2150067 () Bool)

(assert (=> b!1739339 m!2150067))

(check-sat (not b!1739337) (not b!1739349) b_and!129151 (not tb!103965) (not b!1739341) (not b_next!48493) (not b!1739365) (not b_lambda!55693) (not b!1739370) b_and!129147 (not b!1739363) (not b_next!48487) (not b_lambda!55695) (not b!1739338) (not start!171150) (not b_next!48489) (not b!1739359) (not b_next!48491) (not b!1739329) (not b!1739339) (not b!1739350) (not b!1739342) (not b!1739368) (not b!1739389) (not b!1739357) (not b!1739347) (not b_next!48483) (not b!1739340) (not b!1739348) b_and!129149 (not b!1739364) (not b!1739360) b_and!129155 tp_is_empty!7701 (not b!1739372) (not b!1739352) (not b!1739332) (not b!1739371) (not tb!103959) (not b!1739361) (not b!1739367) (not b!1739343) (not b!1739353) b_and!129145 (not b!1739346) (not b!1739358) b_and!129153 (not b!1739392) (not b_next!48485) (not b_lambda!55691) (not b!1739354) (not tb!103953))
(check-sat (not b_next!48487) (not b_next!48489) (not b_next!48491) (not b_next!48483) b_and!129151 b_and!129149 b_and!129155 (not b_next!48493) b_and!129145 b_and!129153 b_and!129147 (not b_next!48485))
