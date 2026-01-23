; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74970 () Bool)

(assert start!74970)

(declare-fun b!843274 () Bool)

(declare-fun b_free!25265 () Bool)

(declare-fun b_next!25329 () Bool)

(assert (=> b!843274 (= b_free!25265 (not b_next!25329))))

(declare-fun tp!265360 () Bool)

(declare-fun b_and!73121 () Bool)

(assert (=> b!843274 (= tp!265360 b_and!73121)))

(declare-fun b_free!25267 () Bool)

(declare-fun b_next!25331 () Bool)

(assert (=> b!843274 (= b_free!25267 (not b_next!25331))))

(declare-fun tp!265361 () Bool)

(declare-fun b_and!73123 () Bool)

(assert (=> b!843274 (= tp!265361 b_and!73123)))

(declare-fun b!843282 () Bool)

(declare-fun b_free!25269 () Bool)

(declare-fun b_next!25333 () Bool)

(assert (=> b!843282 (= b_free!25269 (not b_next!25333))))

(declare-fun tp!265363 () Bool)

(declare-fun b_and!73125 () Bool)

(assert (=> b!843282 (= tp!265363 b_and!73125)))

(declare-fun b_free!25271 () Bool)

(declare-fun b_next!25335 () Bool)

(assert (=> b!843282 (= b_free!25271 (not b_next!25335))))

(declare-fun tp!265355 () Bool)

(declare-fun b_and!73127 () Bool)

(assert (=> b!843282 (= tp!265355 b_and!73127)))

(declare-fun b!843264 () Bool)

(declare-fun b_free!25273 () Bool)

(declare-fun b_next!25337 () Bool)

(assert (=> b!843264 (= b_free!25273 (not b_next!25337))))

(declare-fun tp!265364 () Bool)

(declare-fun b_and!73129 () Bool)

(assert (=> b!843264 (= tp!265364 b_and!73129)))

(declare-fun b_free!25275 () Bool)

(declare-fun b_next!25339 () Bool)

(assert (=> b!843264 (= b_free!25275 (not b_next!25339))))

(declare-fun tp!265356 () Bool)

(declare-fun b_and!73131 () Bool)

(assert (=> b!843264 (= tp!265356 b_and!73131)))

(declare-fun b!843261 () Bool)

(declare-fun res!385470 () Bool)

(declare-fun e!554722 () Bool)

(assert (=> b!843261 (=> (not res!385470) (not e!554722))))

(declare-datatypes ((LexerInterface!1502 0))(
  ( (LexerInterfaceExt!1499 (__x!7263 Int)) (Lexer!1500) )
))
(declare-fun thiss!20117 () LexerInterface!1502)

(declare-datatypes ((List!9080 0))(
  ( (Nil!9064) (Cons!9064 (h!14465 (_ BitVec 16)) (t!93952 List!9080)) )
))
(declare-datatypes ((TokenValue!1766 0))(
  ( (FloatLiteralValue!3532 (text!12807 List!9080)) (TokenValueExt!1765 (__x!7264 Int)) (Broken!8830 (value!55123 List!9080)) (Object!1781) (End!1766) (Def!1766) (Underscore!1766) (Match!1766) (Else!1766) (Error!1766) (Case!1766) (If!1766) (Extends!1766) (Abstract!1766) (Class!1766) (Val!1766) (DelimiterValue!3532 (del!1826 List!9080)) (KeywordValue!1772 (value!55124 List!9080)) (CommentValue!3532 (value!55125 List!9080)) (WhitespaceValue!3532 (value!55126 List!9080)) (IndentationValue!1766 (value!55127 List!9080)) (String!10727) (Int32!1766) (Broken!8831 (value!55128 List!9080)) (Boolean!1767) (Unit!13508) (OperatorValue!1769 (op!1826 List!9080)) (IdentifierValue!3532 (value!55129 List!9080)) (IdentifierValue!3533 (value!55130 List!9080)) (WhitespaceValue!3533 (value!55131 List!9080)) (True!3532) (False!3532) (Broken!8832 (value!55132 List!9080)) (Broken!8833 (value!55133 List!9080)) (True!3533) (RightBrace!1766) (RightBracket!1766) (Colon!1766) (Null!1766) (Comma!1766) (LeftBracket!1766) (False!3533) (LeftBrace!1766) (ImaginaryLiteralValue!1766 (text!12808 List!9080)) (StringLiteralValue!5298 (value!55134 List!9080)) (EOFValue!1766 (value!55135 List!9080)) (IdentValue!1766 (value!55136 List!9080)) (DelimiterValue!3533 (value!55137 List!9080)) (DedentValue!1766 (value!55138 List!9080)) (NewLineValue!1766 (value!55139 List!9080)) (IntegerValue!5298 (value!55140 (_ BitVec 32)) (text!12809 List!9080)) (IntegerValue!5299 (value!55141 Int) (text!12810 List!9080)) (Times!1766) (Or!1766) (Equal!1766) (Minus!1766) (Broken!8834 (value!55142 List!9080)) (And!1766) (Div!1766) (LessEqual!1766) (Mod!1766) (Concat!3899) (Not!1766) (Plus!1766) (SpaceValue!1766 (value!55143 List!9080)) (IntegerValue!5300 (value!55144 Int) (text!12811 List!9080)) (StringLiteralValue!5299 (text!12812 List!9080)) (FloatLiteralValue!3533 (text!12813 List!9080)) (BytesLiteralValue!1766 (value!55145 List!9080)) (CommentValue!3533 (value!55146 List!9080)) (StringLiteralValue!5300 (value!55147 List!9080)) (ErrorTokenValue!1766 (msg!1827 List!9080)) )
))
(declare-datatypes ((C!4836 0))(
  ( (C!4837 (val!2666 Int)) )
))
(declare-datatypes ((Regex!2133 0))(
  ( (ElementMatch!2133 (c!137332 C!4836)) (Concat!3900 (regOne!4778 Regex!2133) (regTwo!4778 Regex!2133)) (EmptyExpr!2133) (Star!2133 (reg!2462 Regex!2133)) (EmptyLang!2133) (Union!2133 (regOne!4779 Regex!2133) (regTwo!4779 Regex!2133)) )
))
(declare-datatypes ((String!10728 0))(
  ( (String!10729 (value!55148 String)) )
))
(declare-datatypes ((List!9081 0))(
  ( (Nil!9065) (Cons!9065 (h!14466 C!4836) (t!93953 List!9081)) )
))
(declare-datatypes ((IArray!6017 0))(
  ( (IArray!6018 (innerList!3066 List!9081)) )
))
(declare-datatypes ((Conc!3006 0))(
  ( (Node!3006 (left!6717 Conc!3006) (right!7047 Conc!3006) (csize!6242 Int) (cheight!3217 Int)) (Leaf!4444 (xs!5695 IArray!6017) (csize!6243 Int)) (Empty!3006) )
))
(declare-datatypes ((BalanceConc!6026 0))(
  ( (BalanceConc!6027 (c!137333 Conc!3006)) )
))
(declare-datatypes ((TokenValueInjection!3232 0))(
  ( (TokenValueInjection!3233 (toValue!2721 Int) (toChars!2580 Int)) )
))
(declare-datatypes ((Rule!3200 0))(
  ( (Rule!3201 (regex!1700 Regex!2133) (tag!1962 String!10728) (isSeparator!1700 Bool) (transformation!1700 TokenValueInjection!3232)) )
))
(declare-datatypes ((List!9082 0))(
  ( (Nil!9066) (Cons!9066 (h!14467 Rule!3200) (t!93954 List!9082)) )
))
(declare-fun rules!2621 () List!9082)

(declare-fun rulesInvariant!1378 (LexerInterface!1502 List!9082) Bool)

(assert (=> b!843261 (= res!385470 (rulesInvariant!1378 thiss!20117 rules!2621))))

(declare-fun b!843262 () Bool)

(declare-fun res!385472 () Bool)

(declare-fun e!554728 () Bool)

(assert (=> b!843262 (=> res!385472 e!554728)))

(declare-datatypes ((Token!3066 0))(
  ( (Token!3067 (value!55149 TokenValue!1766) (rule!3123 Rule!3200) (size!7561 Int) (originalCharacters!2256 List!9081)) )
))
(declare-datatypes ((List!9083 0))(
  ( (Nil!9067) (Cons!9067 (h!14468 Token!3066) (t!93955 List!9083)) )
))
(declare-fun lt!319362 () List!9083)

(declare-fun tokensListTwoByTwoPredicateSeparableList!24 (LexerInterface!1502 List!9083 List!9082) Bool)

(assert (=> b!843262 (= res!385472 (not (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 lt!319362 rules!2621)))))

(declare-fun b!843263 () Bool)

(declare-fun e!554737 () Bool)

(declare-fun e!554726 () Bool)

(declare-fun l!5107 () List!9083)

(declare-fun tp!265358 () Bool)

(declare-fun inv!11539 (Token!3066) Bool)

(assert (=> b!843263 (= e!554726 (and (inv!11539 (h!14468 l!5107)) e!554737 tp!265358))))

(declare-fun e!554730 () Bool)

(assert (=> b!843264 (= e!554730 (and tp!265364 tp!265356))))

(declare-fun e!554727 () Bool)

(declare-fun separatorToken!297 () Token!3066)

(declare-fun b!843265 () Bool)

(declare-fun e!554731 () Bool)

(declare-fun tp!265362 () Bool)

(declare-fun inv!21 (TokenValue!1766) Bool)

(assert (=> b!843265 (= e!554727 (and (inv!21 (value!55149 separatorToken!297)) e!554731 tp!265362))))

(declare-fun b!843266 () Bool)

(declare-fun e!554736 () Bool)

(declare-fun e!554723 () Bool)

(assert (=> b!843266 (= e!554736 e!554723)))

(declare-fun res!385476 () Bool)

(assert (=> b!843266 (=> res!385476 e!554723)))

(declare-fun lt!319358 () List!9083)

(assert (=> b!843266 (= res!385476 (not (= (t!93955 (t!93955 lt!319362)) lt!319358)))))

(declare-fun lt!319357 () List!9083)

(declare-fun withSeparatorTokenList!32 (LexerInterface!1502 List!9083 Token!3066) List!9083)

(assert (=> b!843266 (= lt!319358 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))

(declare-fun tail!1018 (List!9083) List!9083)

(assert (=> b!843266 (= lt!319357 (tail!1018 l!5107))))

(declare-fun b!843267 () Bool)

(declare-fun res!385480 () Bool)

(assert (=> b!843267 (=> (not res!385480) (not e!554722))))

(declare-fun sepAndNonSepRulesDisjointChars!500 (List!9082 List!9082) Bool)

(assert (=> b!843267 (= res!385480 (sepAndNonSepRulesDisjointChars!500 rules!2621 rules!2621))))

(declare-fun b!843268 () Bool)

(declare-fun res!385471 () Bool)

(assert (=> b!843268 (=> (not res!385471) (not e!554722))))

(assert (=> b!843268 (= res!385471 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(declare-fun b!843269 () Bool)

(declare-fun res!385469 () Bool)

(assert (=> b!843269 (=> (not res!385469) (not e!554722))))

(declare-fun rulesProduceIndividualToken!566 (LexerInterface!1502 List!9082 Token!3066) Bool)

(assert (=> b!843269 (= res!385469 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!843270 () Bool)

(declare-fun res!385474 () Bool)

(assert (=> b!843270 (=> res!385474 e!554723)))

(declare-fun head!1460 (List!9083) Token!3066)

(assert (=> b!843270 (= res!385474 (not (= (head!1460 l!5107) (h!14468 lt!319362))))))

(declare-fun b!843272 () Bool)

(declare-fun e!554733 () Bool)

(assert (=> b!843272 (= e!554733 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 lt!319358 rules!2621))))

(declare-fun b!843273 () Bool)

(declare-fun res!385478 () Bool)

(assert (=> b!843273 (=> res!385478 e!554723)))

(assert (=> b!843273 (= res!385478 (not (= (h!14468 (t!93955 lt!319362)) separatorToken!297)))))

(declare-fun e!554735 () Bool)

(assert (=> b!843274 (= e!554735 (and tp!265360 tp!265361))))

(declare-fun b!843275 () Bool)

(assert (=> b!843275 (= e!554722 (not e!554736))))

(declare-fun res!385479 () Bool)

(assert (=> b!843275 (=> res!385479 e!554736)))

(get-info :version)

(assert (=> b!843275 (= res!385479 (or (not ((_ is Cons!9067) lt!319362)) (not ((_ is Cons!9067) (t!93955 lt!319362)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!390 (LexerInterface!1502 List!9082 List!9083) Bool)

(assert (=> b!843275 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319362)))

(assert (=> b!843275 (= lt!319362 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13509 0))(
  ( (Unit!13510) )
))
(declare-fun lt!319363 () Unit!13509)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!32 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> b!843275 (= lt!319363 (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!554732 () Bool)

(declare-fun tp!265366 () Bool)

(declare-fun b!843276 () Bool)

(declare-fun inv!11536 (String!10728) Bool)

(declare-fun inv!11540 (TokenValueInjection!3232) Bool)

(assert (=> b!843276 (= e!554732 (and tp!265366 (inv!11536 (tag!1962 (h!14467 rules!2621))) (inv!11540 (transformation!1700 (h!14467 rules!2621))) e!554730))))

(declare-fun b!843277 () Bool)

(declare-fun res!385475 () Bool)

(assert (=> b!843277 (=> (not res!385475) (not e!554722))))

(declare-fun isEmpty!5340 (List!9082) Bool)

(assert (=> b!843277 (= res!385475 (not (isEmpty!5340 rules!2621)))))

(declare-fun b!843278 () Bool)

(declare-fun tp!265359 () Bool)

(declare-fun e!554720 () Bool)

(assert (=> b!843278 (= e!554731 (and tp!265359 (inv!11536 (tag!1962 (rule!3123 separatorToken!297))) (inv!11540 (transformation!1700 (rule!3123 separatorToken!297))) e!554720))))

(declare-fun b!843279 () Bool)

(assert (=> b!843279 (= e!554723 e!554728)))

(declare-fun res!385468 () Bool)

(assert (=> b!843279 (=> res!385468 e!554728)))

(declare-fun isEmpty!5341 (List!9083) Bool)

(assert (=> b!843279 (= res!385468 (not (isEmpty!5341 (t!93955 (t!93955 lt!319362)))))))

(assert (=> b!843279 e!554733))

(declare-fun res!385473 () Bool)

(assert (=> b!843279 (=> (not res!385473) (not e!554733))))

(assert (=> b!843279 (= res!385473 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319358))))

(declare-fun lt!319359 () Unit!13509)

(assert (=> b!843279 (= lt!319359 (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(declare-fun lt!319360 () Unit!13509)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!8 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> b!843279 (= lt!319360 (printWithSeparatorTokenImpliesSeparableTokensList!8 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(declare-fun separableTokensPredicate!42 (LexerInterface!1502 Token!3066 Token!3066 List!9082) Bool)

(assert (=> b!843279 (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621)))

(declare-fun lt!319361 () Unit!13509)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!24 (LexerInterface!1502 Token!3066 Token!3066 List!9082) Unit!13509)

(assert (=> b!843279 (= lt!319361 (lemmaTokensOfDifferentKindsAreSeparable!24 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621))))

(declare-fun b!843280 () Bool)

(declare-fun e!554724 () Bool)

(declare-fun tp!265357 () Bool)

(assert (=> b!843280 (= e!554724 (and e!554732 tp!265357))))

(declare-fun b!843281 () Bool)

(declare-fun res!385467 () Bool)

(assert (=> b!843281 (=> (not res!385467) (not e!554722))))

(declare-fun lambda!25082 () Int)

(declare-fun forall!2121 (List!9083 Int) Bool)

(assert (=> b!843281 (= res!385467 (forall!2121 l!5107 lambda!25082))))

(assert (=> b!843282 (= e!554720 (and tp!265363 tp!265355))))

(declare-fun b!843283 () Bool)

(declare-datatypes ((IArray!6019 0))(
  ( (IArray!6020 (innerList!3067 List!9083)) )
))
(declare-datatypes ((Conc!3007 0))(
  ( (Node!3007 (left!6718 Conc!3007) (right!7048 Conc!3007) (csize!6244 Int) (cheight!3218 Int)) (Leaf!4445 (xs!5696 IArray!6019) (csize!6245 Int)) (Empty!3007) )
))
(declare-datatypes ((BalanceConc!6028 0))(
  ( (BalanceConc!6029 (c!137334 Conc!3007)) )
))
(declare-fun rulesProduceEachTokenIndividually!605 (LexerInterface!1502 List!9082 BalanceConc!6028) Bool)

(declare-fun seqFromList!1520 (List!9083) BalanceConc!6028)

(assert (=> b!843283 (= e!554728 (rulesProduceEachTokenIndividually!605 thiss!20117 rules!2621 (seqFromList!1520 lt!319362)))))

(declare-fun b!843284 () Bool)

(declare-fun res!385481 () Bool)

(assert (=> b!843284 (=> (not res!385481) (not e!554722))))

(assert (=> b!843284 (= res!385481 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 l!5107))))

(declare-fun e!554725 () Bool)

(declare-fun b!843285 () Bool)

(declare-fun tp!265354 () Bool)

(assert (=> b!843285 (= e!554725 (and tp!265354 (inv!11536 (tag!1962 (rule!3123 (h!14468 l!5107)))) (inv!11540 (transformation!1700 (rule!3123 (h!14468 l!5107)))) e!554735))))

(declare-fun tp!265365 () Bool)

(declare-fun b!843271 () Bool)

(assert (=> b!843271 (= e!554737 (and (inv!21 (value!55149 (h!14468 l!5107))) e!554725 tp!265365))))

(declare-fun res!385477 () Bool)

(assert (=> start!74970 (=> (not res!385477) (not e!554722))))

(assert (=> start!74970 (= res!385477 ((_ is Lexer!1500) thiss!20117))))

(assert (=> start!74970 e!554722))

(assert (=> start!74970 true))

(assert (=> start!74970 e!554724))

(assert (=> start!74970 e!554726))

(assert (=> start!74970 (and (inv!11539 separatorToken!297) e!554727)))

(assert (= (and start!74970 res!385477) b!843277))

(assert (= (and b!843277 res!385475) b!843261))

(assert (= (and b!843261 res!385470) b!843284))

(assert (= (and b!843284 res!385481) b!843269))

(assert (= (and b!843269 res!385469) b!843268))

(assert (= (and b!843268 res!385471) b!843281))

(assert (= (and b!843281 res!385467) b!843267))

(assert (= (and b!843267 res!385480) b!843275))

(assert (= (and b!843275 (not res!385479)) b!843266))

(assert (= (and b!843266 (not res!385476)) b!843270))

(assert (= (and b!843270 (not res!385474)) b!843273))

(assert (= (and b!843273 (not res!385478)) b!843279))

(assert (= (and b!843279 res!385473) b!843272))

(assert (= (and b!843279 (not res!385468)) b!843262))

(assert (= (and b!843262 (not res!385472)) b!843283))

(assert (= b!843276 b!843264))

(assert (= b!843280 b!843276))

(assert (= (and start!74970 ((_ is Cons!9066) rules!2621)) b!843280))

(assert (= b!843285 b!843274))

(assert (= b!843271 b!843285))

(assert (= b!843263 b!843271))

(assert (= (and start!74970 ((_ is Cons!9067) l!5107)) b!843263))

(assert (= b!843278 b!843282))

(assert (= b!843265 b!843278))

(assert (= start!74970 b!843265))

(declare-fun m!1077181 () Bool)

(assert (=> b!843262 m!1077181))

(declare-fun m!1077183 () Bool)

(assert (=> b!843265 m!1077183))

(declare-fun m!1077185 () Bool)

(assert (=> b!843263 m!1077185))

(declare-fun m!1077187 () Bool)

(assert (=> b!843277 m!1077187))

(declare-fun m!1077189 () Bool)

(assert (=> b!843269 m!1077189))

(declare-fun m!1077191 () Bool)

(assert (=> b!843285 m!1077191))

(declare-fun m!1077193 () Bool)

(assert (=> b!843285 m!1077193))

(declare-fun m!1077195 () Bool)

(assert (=> b!843272 m!1077195))

(declare-fun m!1077197 () Bool)

(assert (=> b!843276 m!1077197))

(declare-fun m!1077199 () Bool)

(assert (=> b!843276 m!1077199))

(declare-fun m!1077201 () Bool)

(assert (=> b!843283 m!1077201))

(assert (=> b!843283 m!1077201))

(declare-fun m!1077203 () Bool)

(assert (=> b!843283 m!1077203))

(declare-fun m!1077205 () Bool)

(assert (=> b!843271 m!1077205))

(declare-fun m!1077207 () Bool)

(assert (=> b!843275 m!1077207))

(declare-fun m!1077209 () Bool)

(assert (=> b!843275 m!1077209))

(declare-fun m!1077211 () Bool)

(assert (=> b!843275 m!1077211))

(declare-fun m!1077213 () Bool)

(assert (=> b!843284 m!1077213))

(declare-fun m!1077215 () Bool)

(assert (=> b!843266 m!1077215))

(declare-fun m!1077217 () Bool)

(assert (=> b!843266 m!1077217))

(declare-fun m!1077219 () Bool)

(assert (=> start!74970 m!1077219))

(declare-fun m!1077221 () Bool)

(assert (=> b!843267 m!1077221))

(declare-fun m!1077223 () Bool)

(assert (=> b!843279 m!1077223))

(declare-fun m!1077225 () Bool)

(assert (=> b!843279 m!1077225))

(declare-fun m!1077227 () Bool)

(assert (=> b!843279 m!1077227))

(declare-fun m!1077229 () Bool)

(assert (=> b!843279 m!1077229))

(declare-fun m!1077231 () Bool)

(assert (=> b!843279 m!1077231))

(declare-fun m!1077233 () Bool)

(assert (=> b!843279 m!1077233))

(declare-fun m!1077235 () Bool)

(assert (=> b!843261 m!1077235))

(declare-fun m!1077237 () Bool)

(assert (=> b!843278 m!1077237))

(declare-fun m!1077239 () Bool)

(assert (=> b!843278 m!1077239))

(declare-fun m!1077241 () Bool)

(assert (=> b!843270 m!1077241))

(declare-fun m!1077243 () Bool)

(assert (=> b!843281 m!1077243))

(check-sat (not b!843284) (not b!843263) (not b!843281) (not b!843262) (not b!843275) (not b!843261) (not b!843279) (not b!843267) (not b!843285) (not b_next!25329) (not b!843265) b_and!73131 (not b!843269) (not b!843266) b_and!73121 (not b_next!25337) (not b_next!25335) b_and!73127 (not b_next!25331) b_and!73129 (not b!843272) (not b!843278) b_and!73123 (not b!843280) (not b!843270) (not b!843271) (not b!843276) b_and!73125 (not b_next!25339) (not b!843277) (not b_next!25333) (not start!74970) (not b!843283))
(check-sat b_and!73131 b_and!73129 b_and!73123 (not b_next!25333) (not b_next!25329) b_and!73121 (not b_next!25337) (not b_next!25335) b_and!73127 (not b_next!25331) b_and!73125 (not b_next!25339))
(get-model)

(declare-fun d!262406 () Bool)

(assert (=> d!262406 (= (inv!11536 (tag!1962 (h!14467 rules!2621))) (= (mod (str.len (value!55148 (tag!1962 (h!14467 rules!2621)))) 2) 0))))

(assert (=> b!843276 d!262406))

(declare-fun d!262408 () Bool)

(declare-fun res!385494 () Bool)

(declare-fun e!554749 () Bool)

(assert (=> d!262408 (=> (not res!385494) (not e!554749))))

(declare-fun semiInverseModEq!655 (Int Int) Bool)

(assert (=> d!262408 (= res!385494 (semiInverseModEq!655 (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (h!14467 rules!2621)))))))

(assert (=> d!262408 (= (inv!11540 (transformation!1700 (h!14467 rules!2621))) e!554749)))

(declare-fun b!843303 () Bool)

(declare-fun equivClasses!622 (Int Int) Bool)

(assert (=> b!843303 (= e!554749 (equivClasses!622 (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (h!14467 rules!2621)))))))

(assert (= (and d!262408 res!385494) b!843303))

(declare-fun m!1077251 () Bool)

(assert (=> d!262408 m!1077251))

(declare-fun m!1077253 () Bool)

(assert (=> b!843303 m!1077253))

(assert (=> b!843276 d!262408))

(declare-fun b!843328 () Bool)

(declare-fun e!554766 () Bool)

(declare-fun e!554770 () Bool)

(assert (=> b!843328 (= e!554766 e!554770)))

(declare-fun res!385509 () Bool)

(assert (=> b!843328 (=> res!385509 e!554770)))

(assert (=> b!843328 (= res!385509 (not ((_ is Cons!9067) lt!319357)))))

(declare-fun b!843329 () Bool)

(declare-fun e!554767 () List!9081)

(assert (=> b!843329 (= e!554767 Nil!9065)))

(declare-fun b!843330 () Bool)

(declare-fun e!554771 () List!9081)

(declare-fun lt!319389 () List!9083)

(declare-fun ++!2345 (List!9081 List!9081) List!9081)

(declare-fun list!3561 (BalanceConc!6026) List!9081)

(declare-fun charsOf!975 (Token!3066) BalanceConc!6026)

(declare-fun printList!460 (LexerInterface!1502 List!9083) List!9081)

(assert (=> b!843330 (= e!554771 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319389))) (printList!460 thiss!20117 (t!93955 lt!319389))))))

(declare-fun b!843331 () Bool)

(declare-fun res!385510 () Bool)

(assert (=> b!843331 (=> (not res!385510) (not e!554766))))

(declare-fun e!554769 () Bool)

(assert (=> b!843331 (= res!385510 e!554769)))

(declare-fun res!385508 () Bool)

(assert (=> b!843331 (=> res!385508 e!554769)))

(assert (=> b!843331 (= res!385508 (not ((_ is Cons!9067) lt!319357)))))

(declare-fun b!843333 () Bool)

(declare-fun e!554768 () List!9083)

(assert (=> b!843333 (= e!554768 Nil!9067)))

(declare-fun b!843334 () Bool)

(declare-fun $colon$colon!73 (List!9083 Token!3066) List!9083)

(assert (=> b!843334 (= e!554769 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357))) e!554767))))

(declare-fun c!137347 () Bool)

(declare-fun lt!319387 () List!9083)

(assert (=> b!843334 (= c!137347 ((_ is Cons!9067) lt!319387))))

(assert (=> b!843334 (= lt!319387 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357)))))

(declare-fun b!843335 () Bool)

(assert (=> b!843335 (= e!554770 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)) e!554771))))

(declare-fun c!137349 () Bool)

(assert (=> b!843335 (= c!137349 ((_ is Cons!9067) lt!319389))))

(assert (=> b!843335 (= lt!319389 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297))))

(declare-fun b!843336 () Bool)

(assert (=> b!843336 (= e!554771 Nil!9065)))

(declare-fun b!843337 () Bool)

(assert (=> b!843337 (= e!554767 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319387))) (printList!460 thiss!20117 (t!93955 lt!319387))))))

(declare-fun d!262410 () Bool)

(declare-fun lt!319382 () List!9083)

(declare-fun printWithSeparatorTokenList!18 (LexerInterface!1502 List!9083 Token!3066) List!9081)

(assert (=> d!262410 (= (printList!460 thiss!20117 lt!319382) (printWithSeparatorTokenList!18 thiss!20117 lt!319357 separatorToken!297))))

(assert (=> d!262410 (= lt!319382 e!554768)))

(declare-fun c!137348 () Bool)

(assert (=> d!262410 (= c!137348 ((_ is Cons!9067) lt!319357))))

(assert (=> d!262410 e!554766))

(declare-fun res!385507 () Bool)

(assert (=> d!262410 (=> (not res!385507) (not e!554766))))

(assert (=> d!262410 (= res!385507 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(assert (=> d!262410 (= (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) lt!319382)))

(declare-fun b!843332 () Bool)

(assert (=> b!843332 (= e!554768 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357)))))

(declare-fun lt!319388 () List!9081)

(assert (=> b!843332 (= lt!319388 (list!3561 (charsOf!975 (h!14468 lt!319357))))))

(declare-fun lt!319383 () List!9081)

(assert (=> b!843332 (= lt!319383 (list!3561 (charsOf!975 separatorToken!297)))))

(declare-fun lt!319386 () List!9081)

(assert (=> b!843332 (= lt!319386 (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)))))

(declare-fun lt!319385 () Unit!13509)

(declare-fun lemmaConcatAssociativity!735 (List!9081 List!9081 List!9081) Unit!13509)

(assert (=> b!843332 (= lt!319385 (lemmaConcatAssociativity!735 lt!319388 lt!319383 lt!319386))))

(assert (=> b!843332 (= (++!2345 (++!2345 lt!319388 lt!319383) lt!319386) (++!2345 lt!319388 (++!2345 lt!319383 lt!319386)))))

(declare-fun lt!319384 () Unit!13509)

(assert (=> b!843332 (= lt!319384 lt!319385)))

(assert (= (and d!262410 res!385507) b!843331))

(assert (= (and b!843331 (not res!385508)) b!843334))

(assert (= (and b!843334 c!137347) b!843337))

(assert (= (and b!843334 (not c!137347)) b!843329))

(assert (= (and b!843331 res!385510) b!843328))

(assert (= (and b!843328 (not res!385509)) b!843335))

(assert (= (and b!843335 c!137349) b!843330))

(assert (= (and b!843335 (not c!137349)) b!843336))

(assert (= (and d!262410 c!137348) b!843332))

(assert (= (and d!262410 (not c!137348)) b!843333))

(declare-fun m!1077255 () Bool)

(assert (=> b!843337 m!1077255))

(assert (=> b!843337 m!1077255))

(declare-fun m!1077257 () Bool)

(assert (=> b!843337 m!1077257))

(declare-fun m!1077259 () Bool)

(assert (=> b!843337 m!1077259))

(assert (=> b!843337 m!1077257))

(assert (=> b!843337 m!1077259))

(declare-fun m!1077261 () Bool)

(assert (=> b!843337 m!1077261))

(declare-fun m!1077263 () Bool)

(assert (=> b!843330 m!1077263))

(assert (=> b!843330 m!1077263))

(declare-fun m!1077265 () Bool)

(assert (=> b!843330 m!1077265))

(declare-fun m!1077267 () Bool)

(assert (=> b!843330 m!1077267))

(assert (=> b!843330 m!1077265))

(assert (=> b!843330 m!1077267))

(declare-fun m!1077269 () Bool)

(assert (=> b!843330 m!1077269))

(declare-fun m!1077271 () Bool)

(assert (=> d!262410 m!1077271))

(declare-fun m!1077273 () Bool)

(assert (=> d!262410 m!1077273))

(declare-fun m!1077275 () Bool)

(assert (=> b!843332 m!1077275))

(declare-fun m!1077277 () Bool)

(assert (=> b!843332 m!1077277))

(declare-fun m!1077279 () Bool)

(assert (=> b!843332 m!1077279))

(assert (=> b!843332 m!1077275))

(declare-fun m!1077281 () Bool)

(assert (=> b!843332 m!1077281))

(declare-fun m!1077283 () Bool)

(assert (=> b!843332 m!1077283))

(declare-fun m!1077285 () Bool)

(assert (=> b!843332 m!1077285))

(assert (=> b!843332 m!1077283))

(declare-fun m!1077287 () Bool)

(assert (=> b!843332 m!1077287))

(declare-fun m!1077289 () Bool)

(assert (=> b!843332 m!1077289))

(declare-fun m!1077291 () Bool)

(assert (=> b!843332 m!1077291))

(assert (=> b!843332 m!1077291))

(declare-fun m!1077293 () Bool)

(assert (=> b!843332 m!1077293))

(assert (=> b!843332 m!1077279))

(declare-fun m!1077295 () Bool)

(assert (=> b!843332 m!1077295))

(declare-fun m!1077297 () Bool)

(assert (=> b!843332 m!1077297))

(assert (=> b!843332 m!1077281))

(declare-fun m!1077299 () Bool)

(assert (=> b!843332 m!1077299))

(assert (=> b!843332 m!1077291))

(assert (=> b!843332 m!1077287))

(assert (=> b!843335 m!1077291))

(assert (=> b!843335 m!1077291))

(assert (=> b!843335 m!1077287))

(assert (=> b!843335 m!1077287))

(declare-fun m!1077301 () Bool)

(assert (=> b!843335 m!1077301))

(assert (=> b!843334 m!1077291))

(assert (=> b!843334 m!1077291))

(assert (=> b!843334 m!1077287))

(assert (=> b!843334 m!1077287))

(assert (=> b!843334 m!1077289))

(assert (=> b!843334 m!1077289))

(declare-fun m!1077303 () Bool)

(assert (=> b!843334 m!1077303))

(assert (=> b!843266 d!262410))

(declare-fun d!262412 () Bool)

(assert (=> d!262412 (= (tail!1018 l!5107) (t!93955 l!5107))))

(assert (=> b!843266 d!262412))

(declare-fun d!262414 () Bool)

(assert (=> d!262414 (= (isEmpty!5340 rules!2621) ((_ is Nil!9066) rules!2621))))

(assert (=> b!843277 d!262414))

(declare-fun bs!230106 () Bool)

(declare-fun d!262416 () Bool)

(assert (= bs!230106 (and d!262416 b!843281)))

(declare-fun lambda!25088 () Int)

(assert (=> bs!230106 (not (= lambda!25088 lambda!25082))))

(declare-fun b!843399 () Bool)

(declare-fun e!554815 () Bool)

(assert (=> b!843399 (= e!554815 true)))

(declare-fun b!843398 () Bool)

(declare-fun e!554814 () Bool)

(assert (=> b!843398 (= e!554814 e!554815)))

(declare-fun b!843397 () Bool)

(declare-fun e!554813 () Bool)

(assert (=> b!843397 (= e!554813 e!554814)))

(assert (=> d!262416 e!554813))

(assert (= b!843398 b!843399))

(assert (= b!843397 b!843398))

(assert (= (and d!262416 ((_ is Cons!9066) rules!2621)) b!843397))

(declare-fun order!5767 () Int)

(declare-fun order!5769 () Int)

(declare-fun dynLambda!4191 (Int Int) Int)

(declare-fun dynLambda!4192 (Int Int) Int)

(assert (=> b!843399 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25088))))

(declare-fun order!5771 () Int)

(declare-fun dynLambda!4193 (Int Int) Int)

(assert (=> b!843399 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25088))))

(assert (=> d!262416 true))

(declare-fun lt!319420 () Bool)

(assert (=> d!262416 (= lt!319420 (forall!2121 lt!319362 lambda!25088))))

(declare-fun e!554805 () Bool)

(assert (=> d!262416 (= lt!319420 e!554805)))

(declare-fun res!385530 () Bool)

(assert (=> d!262416 (=> res!385530 e!554805)))

(assert (=> d!262416 (= res!385530 (not ((_ is Cons!9067) lt!319362)))))

(assert (=> d!262416 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262416 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319362) lt!319420)))

(declare-fun b!843387 () Bool)

(declare-fun e!554806 () Bool)

(assert (=> b!843387 (= e!554805 e!554806)))

(declare-fun res!385529 () Bool)

(assert (=> b!843387 (=> (not res!385529) (not e!554806))))

(assert (=> b!843387 (= res!385529 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362)))))

(declare-fun b!843388 () Bool)

(assert (=> b!843388 (= e!554806 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 lt!319362)))))

(assert (= (and d!262416 (not res!385530)) b!843387))

(assert (= (and b!843387 res!385529) b!843388))

(declare-fun m!1077365 () Bool)

(assert (=> d!262416 m!1077365))

(assert (=> d!262416 m!1077187))

(declare-fun m!1077367 () Bool)

(assert (=> b!843387 m!1077367))

(declare-fun m!1077369 () Bool)

(assert (=> b!843388 m!1077369))

(assert (=> b!843275 d!262416))

(declare-fun b!843402 () Bool)

(declare-fun e!554816 () Bool)

(declare-fun e!554820 () Bool)

(assert (=> b!843402 (= e!554816 e!554820)))

(declare-fun res!385533 () Bool)

(assert (=> b!843402 (=> res!385533 e!554820)))

(assert (=> b!843402 (= res!385533 (not ((_ is Cons!9067) l!5107)))))

(declare-fun b!843403 () Bool)

(declare-fun e!554817 () List!9081)

(assert (=> b!843403 (= e!554817 Nil!9065)))

(declare-fun b!843404 () Bool)

(declare-fun e!554821 () List!9081)

(declare-fun lt!319428 () List!9083)

(assert (=> b!843404 (= e!554821 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319428))) (printList!460 thiss!20117 (t!93955 lt!319428))))))

(declare-fun b!843405 () Bool)

(declare-fun res!385534 () Bool)

(assert (=> b!843405 (=> (not res!385534) (not e!554816))))

(declare-fun e!554819 () Bool)

(assert (=> b!843405 (= res!385534 e!554819)))

(declare-fun res!385532 () Bool)

(assert (=> b!843405 (=> res!385532 e!554819)))

(assert (=> b!843405 (= res!385532 (not ((_ is Cons!9067) l!5107)))))

(declare-fun b!843407 () Bool)

(declare-fun e!554818 () List!9083)

(assert (=> b!843407 (= e!554818 Nil!9067)))

(declare-fun b!843408 () Bool)

(assert (=> b!843408 (= e!554819 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107))) e!554817))))

(declare-fun c!137359 () Bool)

(declare-fun lt!319426 () List!9083)

(assert (=> b!843408 (= c!137359 ((_ is Cons!9067) lt!319426))))

(assert (=> b!843408 (= lt!319426 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107)))))

(declare-fun b!843409 () Bool)

(assert (=> b!843409 (= e!554820 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)) e!554821))))

(declare-fun c!137361 () Bool)

(assert (=> b!843409 (= c!137361 ((_ is Cons!9067) lt!319428))))

(assert (=> b!843409 (= lt!319428 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!843410 () Bool)

(assert (=> b!843410 (= e!554821 Nil!9065)))

(declare-fun b!843411 () Bool)

(assert (=> b!843411 (= e!554817 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319426))) (printList!460 thiss!20117 (t!93955 lt!319426))))))

(declare-fun d!262424 () Bool)

(declare-fun lt!319421 () List!9083)

(assert (=> d!262424 (= (printList!460 thiss!20117 lt!319421) (printWithSeparatorTokenList!18 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!262424 (= lt!319421 e!554818)))

(declare-fun c!137360 () Bool)

(assert (=> d!262424 (= c!137360 ((_ is Cons!9067) l!5107))))

(assert (=> d!262424 e!554816))

(declare-fun res!385531 () Bool)

(assert (=> d!262424 (=> (not res!385531) (not e!554816))))

(assert (=> d!262424 (= res!385531 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(assert (=> d!262424 (= (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297) lt!319421)))

(declare-fun b!843406 () Bool)

(assert (=> b!843406 (= e!554818 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107)))))

(declare-fun lt!319427 () List!9081)

(assert (=> b!843406 (= lt!319427 (list!3561 (charsOf!975 (h!14468 l!5107))))))

(declare-fun lt!319422 () List!9081)

(assert (=> b!843406 (= lt!319422 (list!3561 (charsOf!975 separatorToken!297)))))

(declare-fun lt!319425 () List!9081)

(assert (=> b!843406 (= lt!319425 (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)))))

(declare-fun lt!319424 () Unit!13509)

(assert (=> b!843406 (= lt!319424 (lemmaConcatAssociativity!735 lt!319427 lt!319422 lt!319425))))

(assert (=> b!843406 (= (++!2345 (++!2345 lt!319427 lt!319422) lt!319425) (++!2345 lt!319427 (++!2345 lt!319422 lt!319425)))))

(declare-fun lt!319423 () Unit!13509)

(assert (=> b!843406 (= lt!319423 lt!319424)))

(assert (= (and d!262424 res!385531) b!843405))

(assert (= (and b!843405 (not res!385532)) b!843408))

(assert (= (and b!843408 c!137359) b!843411))

(assert (= (and b!843408 (not c!137359)) b!843403))

(assert (= (and b!843405 res!385534) b!843402))

(assert (= (and b!843402 (not res!385533)) b!843409))

(assert (= (and b!843409 c!137361) b!843404))

(assert (= (and b!843409 (not c!137361)) b!843410))

(assert (= (and d!262424 c!137360) b!843406))

(assert (= (and d!262424 (not c!137360)) b!843407))

(declare-fun m!1077371 () Bool)

(assert (=> b!843411 m!1077371))

(assert (=> b!843411 m!1077371))

(declare-fun m!1077373 () Bool)

(assert (=> b!843411 m!1077373))

(declare-fun m!1077375 () Bool)

(assert (=> b!843411 m!1077375))

(assert (=> b!843411 m!1077373))

(assert (=> b!843411 m!1077375))

(declare-fun m!1077377 () Bool)

(assert (=> b!843411 m!1077377))

(declare-fun m!1077379 () Bool)

(assert (=> b!843404 m!1077379))

(assert (=> b!843404 m!1077379))

(declare-fun m!1077381 () Bool)

(assert (=> b!843404 m!1077381))

(declare-fun m!1077383 () Bool)

(assert (=> b!843404 m!1077383))

(assert (=> b!843404 m!1077381))

(assert (=> b!843404 m!1077383))

(declare-fun m!1077385 () Bool)

(assert (=> b!843404 m!1077385))

(declare-fun m!1077387 () Bool)

(assert (=> d!262424 m!1077387))

(declare-fun m!1077389 () Bool)

(assert (=> d!262424 m!1077389))

(assert (=> b!843406 m!1077275))

(assert (=> b!843406 m!1077277))

(declare-fun m!1077391 () Bool)

(assert (=> b!843406 m!1077391))

(assert (=> b!843406 m!1077275))

(declare-fun m!1077393 () Bool)

(assert (=> b!843406 m!1077393))

(declare-fun m!1077395 () Bool)

(assert (=> b!843406 m!1077395))

(declare-fun m!1077397 () Bool)

(assert (=> b!843406 m!1077397))

(assert (=> b!843406 m!1077395))

(declare-fun m!1077399 () Bool)

(assert (=> b!843406 m!1077399))

(declare-fun m!1077401 () Bool)

(assert (=> b!843406 m!1077401))

(declare-fun m!1077403 () Bool)

(assert (=> b!843406 m!1077403))

(assert (=> b!843406 m!1077403))

(declare-fun m!1077405 () Bool)

(assert (=> b!843406 m!1077405))

(assert (=> b!843406 m!1077391))

(declare-fun m!1077407 () Bool)

(assert (=> b!843406 m!1077407))

(declare-fun m!1077409 () Bool)

(assert (=> b!843406 m!1077409))

(assert (=> b!843406 m!1077393))

(declare-fun m!1077411 () Bool)

(assert (=> b!843406 m!1077411))

(assert (=> b!843406 m!1077403))

(assert (=> b!843406 m!1077399))

(assert (=> b!843409 m!1077403))

(assert (=> b!843409 m!1077403))

(assert (=> b!843409 m!1077399))

(assert (=> b!843409 m!1077399))

(declare-fun m!1077413 () Bool)

(assert (=> b!843409 m!1077413))

(assert (=> b!843408 m!1077403))

(assert (=> b!843408 m!1077403))

(assert (=> b!843408 m!1077399))

(assert (=> b!843408 m!1077399))

(assert (=> b!843408 m!1077401))

(assert (=> b!843408 m!1077401))

(declare-fun m!1077415 () Bool)

(assert (=> b!843408 m!1077415))

(assert (=> b!843275 d!262424))

(declare-fun d!262426 () Bool)

(assert (=> d!262426 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!319453 () Unit!13509)

(declare-fun choose!4970 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> d!262426 (= lt!319453 (choose!4970 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!262426 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262426 (= (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!319453)))

(declare-fun bs!230109 () Bool)

(assert (= bs!230109 d!262426))

(assert (=> bs!230109 m!1077209))

(assert (=> bs!230109 m!1077209))

(declare-fun m!1077435 () Bool)

(assert (=> bs!230109 m!1077435))

(declare-fun m!1077437 () Bool)

(assert (=> bs!230109 m!1077437))

(assert (=> bs!230109 m!1077187))

(assert (=> b!843275 d!262426))

(declare-fun b!843433 () Bool)

(declare-fun res!385547 () Bool)

(declare-fun e!554842 () Bool)

(assert (=> b!843433 (=> res!385547 e!554842)))

(assert (=> b!843433 (= res!385547 (not ((_ is IntegerValue!5300) (value!55149 separatorToken!297))))))

(declare-fun e!554841 () Bool)

(assert (=> b!843433 (= e!554841 e!554842)))

(declare-fun d!262434 () Bool)

(declare-fun c!137366 () Bool)

(assert (=> d!262434 (= c!137366 ((_ is IntegerValue!5298) (value!55149 separatorToken!297)))))

(declare-fun e!554843 () Bool)

(assert (=> d!262434 (= (inv!21 (value!55149 separatorToken!297)) e!554843)))

(declare-fun b!843434 () Bool)

(declare-fun inv!17 (TokenValue!1766) Bool)

(assert (=> b!843434 (= e!554841 (inv!17 (value!55149 separatorToken!297)))))

(declare-fun b!843435 () Bool)

(declare-fun inv!15 (TokenValue!1766) Bool)

(assert (=> b!843435 (= e!554842 (inv!15 (value!55149 separatorToken!297)))))

(declare-fun b!843436 () Bool)

(assert (=> b!843436 (= e!554843 e!554841)))

(declare-fun c!137367 () Bool)

(assert (=> b!843436 (= c!137367 ((_ is IntegerValue!5299) (value!55149 separatorToken!297)))))

(declare-fun b!843437 () Bool)

(declare-fun inv!16 (TokenValue!1766) Bool)

(assert (=> b!843437 (= e!554843 (inv!16 (value!55149 separatorToken!297)))))

(assert (= (and d!262434 c!137366) b!843437))

(assert (= (and d!262434 (not c!137366)) b!843436))

(assert (= (and b!843436 c!137367) b!843434))

(assert (= (and b!843436 (not c!137367)) b!843433))

(assert (= (and b!843433 (not res!385547)) b!843435))

(declare-fun m!1077439 () Bool)

(assert (=> b!843434 m!1077439))

(declare-fun m!1077441 () Bool)

(assert (=> b!843435 m!1077441))

(declare-fun m!1077443 () Bool)

(assert (=> b!843437 m!1077443))

(assert (=> b!843265 d!262434))

(declare-fun bs!230110 () Bool)

(declare-fun d!262436 () Bool)

(assert (= bs!230110 (and d!262436 b!843281)))

(declare-fun lambda!25092 () Int)

(assert (=> bs!230110 (not (= lambda!25092 lambda!25082))))

(declare-fun bs!230111 () Bool)

(assert (= bs!230111 (and d!262436 d!262416)))

(assert (=> bs!230111 (= lambda!25092 lambda!25088)))

(declare-fun b!843442 () Bool)

(declare-fun e!554848 () Bool)

(assert (=> b!843442 (= e!554848 true)))

(declare-fun b!843441 () Bool)

(declare-fun e!554847 () Bool)

(assert (=> b!843441 (= e!554847 e!554848)))

(declare-fun b!843440 () Bool)

(declare-fun e!554846 () Bool)

(assert (=> b!843440 (= e!554846 e!554847)))

(assert (=> d!262436 e!554846))

(assert (= b!843441 b!843442))

(assert (= b!843440 b!843441))

(assert (= (and d!262436 ((_ is Cons!9066) rules!2621)) b!843440))

(assert (=> b!843442 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25092))))

(assert (=> b!843442 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25092))))

(assert (=> d!262436 true))

(declare-fun lt!319456 () Bool)

(assert (=> d!262436 (= lt!319456 (forall!2121 l!5107 lambda!25092))))

(declare-fun e!554844 () Bool)

(assert (=> d!262436 (= lt!319456 e!554844)))

(declare-fun res!385549 () Bool)

(assert (=> d!262436 (=> res!385549 e!554844)))

(assert (=> d!262436 (= res!385549 (not ((_ is Cons!9067) l!5107)))))

(assert (=> d!262436 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262436 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 l!5107) lt!319456)))

(declare-fun b!843438 () Bool)

(declare-fun e!554845 () Bool)

(assert (=> b!843438 (= e!554844 e!554845)))

(declare-fun res!385548 () Bool)

(assert (=> b!843438 (=> (not res!385548) (not e!554845))))

(assert (=> b!843438 (= res!385548 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 l!5107)))))

(declare-fun b!843439 () Bool)

(assert (=> b!843439 (= e!554845 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 l!5107)))))

(assert (= (and d!262436 (not res!385549)) b!843438))

(assert (= (and b!843438 res!385548) b!843439))

(declare-fun m!1077445 () Bool)

(assert (=> d!262436 m!1077445))

(assert (=> d!262436 m!1077187))

(declare-fun m!1077447 () Bool)

(assert (=> b!843438 m!1077447))

(declare-fun m!1077449 () Bool)

(assert (=> b!843439 m!1077449))

(assert (=> b!843284 d!262436))

(declare-fun d!262438 () Bool)

(declare-fun res!385555 () Bool)

(declare-fun e!554855 () Bool)

(assert (=> d!262438 (=> (not res!385555) (not e!554855))))

(declare-fun isEmpty!5344 (List!9081) Bool)

(assert (=> d!262438 (= res!385555 (not (isEmpty!5344 (originalCharacters!2256 (h!14468 l!5107)))))))

(assert (=> d!262438 (= (inv!11539 (h!14468 l!5107)) e!554855)))

(declare-fun b!843453 () Bool)

(declare-fun res!385556 () Bool)

(assert (=> b!843453 (=> (not res!385556) (not e!554855))))

(declare-fun dynLambda!4194 (Int TokenValue!1766) BalanceConc!6026)

(assert (=> b!843453 (= res!385556 (= (originalCharacters!2256 (h!14468 l!5107)) (list!3561 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(declare-fun b!843454 () Bool)

(declare-fun size!7565 (List!9081) Int)

(assert (=> b!843454 (= e!554855 (= (size!7561 (h!14468 l!5107)) (size!7565 (originalCharacters!2256 (h!14468 l!5107)))))))

(assert (= (and d!262438 res!385555) b!843453))

(assert (= (and b!843453 res!385556) b!843454))

(declare-fun b_lambda!27799 () Bool)

(assert (=> (not b_lambda!27799) (not b!843453)))

(declare-fun t!93965 () Bool)

(declare-fun tb!58341 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!93965) tb!58341))

(declare-fun b!843459 () Bool)

(declare-fun e!554858 () Bool)

(declare-fun tp!265369 () Bool)

(declare-fun inv!11543 (Conc!3006) Bool)

(assert (=> b!843459 (= e!554858 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))) tp!265369))))

(declare-fun result!67646 () Bool)

(declare-fun inv!11544 (BalanceConc!6026) Bool)

(assert (=> tb!58341 (= result!67646 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))) e!554858))))

(assert (= tb!58341 b!843459))

(declare-fun m!1077461 () Bool)

(assert (=> b!843459 m!1077461))

(declare-fun m!1077463 () Bool)

(assert (=> tb!58341 m!1077463))

(assert (=> b!843453 t!93965))

(declare-fun b_and!73133 () Bool)

(assert (= b_and!73123 (and (=> t!93965 result!67646) b_and!73133)))

(declare-fun tb!58343 () Bool)

(declare-fun t!93967 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!93967) tb!58343))

(declare-fun result!67650 () Bool)

(assert (= result!67650 result!67646))

(assert (=> b!843453 t!93967))

(declare-fun b_and!73135 () Bool)

(assert (= b_and!73127 (and (=> t!93967 result!67650) b_and!73135)))

(declare-fun t!93969 () Bool)

(declare-fun tb!58345 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!93969) tb!58345))

(declare-fun result!67652 () Bool)

(assert (= result!67652 result!67646))

(assert (=> b!843453 t!93969))

(declare-fun b_and!73137 () Bool)

(assert (= b_and!73131 (and (=> t!93969 result!67652) b_and!73137)))

(declare-fun m!1077465 () Bool)

(assert (=> d!262438 m!1077465))

(declare-fun m!1077467 () Bool)

(assert (=> b!843453 m!1077467))

(assert (=> b!843453 m!1077467))

(declare-fun m!1077469 () Bool)

(assert (=> b!843453 m!1077469))

(declare-fun m!1077471 () Bool)

(assert (=> b!843454 m!1077471))

(assert (=> b!843263 d!262438))

(declare-fun d!262444 () Bool)

(assert (=> d!262444 (= (inv!11536 (tag!1962 (rule!3123 (h!14468 l!5107)))) (= (mod (str.len (value!55148 (tag!1962 (rule!3123 (h!14468 l!5107))))) 2) 0))))

(assert (=> b!843285 d!262444))

(declare-fun d!262446 () Bool)

(declare-fun res!385557 () Bool)

(declare-fun e!554859 () Bool)

(assert (=> d!262446 (=> (not res!385557) (not e!554859))))

(assert (=> d!262446 (= res!385557 (semiInverseModEq!655 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))))))

(assert (=> d!262446 (= (inv!11540 (transformation!1700 (rule!3123 (h!14468 l!5107)))) e!554859)))

(declare-fun b!843460 () Bool)

(assert (=> b!843460 (= e!554859 (equivClasses!622 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))))))

(assert (= (and d!262446 res!385557) b!843460))

(declare-fun m!1077473 () Bool)

(assert (=> d!262446 m!1077473))

(declare-fun m!1077475 () Bool)

(assert (=> b!843460 m!1077475))

(assert (=> b!843285 d!262446))

(declare-fun d!262448 () Bool)

(declare-fun res!385570 () Bool)

(declare-fun e!554873 () Bool)

(assert (=> d!262448 (=> res!385570 e!554873)))

(assert (=> d!262448 (= res!385570 (or (not ((_ is Cons!9067) lt!319358)) (not ((_ is Cons!9067) (t!93955 lt!319358)))))))

(assert (=> d!262448 (= (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 lt!319358 rules!2621) e!554873)))

(declare-fun b!843479 () Bool)

(declare-fun e!554872 () Bool)

(assert (=> b!843479 (= e!554873 e!554872)))

(declare-fun res!385571 () Bool)

(assert (=> b!843479 (=> (not res!385571) (not e!554872))))

(assert (=> b!843479 (= res!385571 (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319358) (h!14468 (t!93955 lt!319358)) rules!2621))))

(declare-fun lt!319481 () Unit!13509)

(declare-fun Unit!13517 () Unit!13509)

(assert (=> b!843479 (= lt!319481 Unit!13517)))

(declare-fun size!7566 (BalanceConc!6026) Int)

(assert (=> b!843479 (> (size!7566 (charsOf!975 (h!14468 (t!93955 lt!319358)))) 0)))

(declare-fun lt!319475 () Unit!13509)

(declare-fun Unit!13518 () Unit!13509)

(assert (=> b!843479 (= lt!319475 Unit!13518)))

(assert (=> b!843479 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319358)))))

(declare-fun lt!319477 () Unit!13509)

(declare-fun Unit!13519 () Unit!13509)

(assert (=> b!843479 (= lt!319477 Unit!13519)))

(assert (=> b!843479 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358))))

(declare-fun lt!319476 () Unit!13509)

(declare-fun lt!319480 () Unit!13509)

(assert (=> b!843479 (= lt!319476 lt!319480)))

(assert (=> b!843479 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319358)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> b!843479 (= lt!319480 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319358 (h!14468 (t!93955 lt!319358))))))

(declare-fun lt!319478 () Unit!13509)

(declare-fun lt!319479 () Unit!13509)

(assert (=> b!843479 (= lt!319478 lt!319479)))

(assert (=> b!843479 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358))))

(assert (=> b!843479 (= lt!319479 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319358 (h!14468 lt!319358)))))

(declare-fun b!843480 () Bool)

(assert (=> b!843480 (= e!554872 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))) rules!2621))))

(assert (= (and d!262448 (not res!385570)) b!843479))

(assert (= (and b!843479 res!385571) b!843480))

(declare-fun m!1077503 () Bool)

(assert (=> b!843479 m!1077503))

(declare-fun m!1077505 () Bool)

(assert (=> b!843479 m!1077505))

(declare-fun m!1077507 () Bool)

(assert (=> b!843479 m!1077507))

(declare-fun m!1077509 () Bool)

(assert (=> b!843479 m!1077509))

(assert (=> b!843479 m!1077507))

(declare-fun m!1077511 () Bool)

(assert (=> b!843479 m!1077511))

(declare-fun m!1077513 () Bool)

(assert (=> b!843479 m!1077513))

(declare-fun m!1077515 () Bool)

(assert (=> b!843479 m!1077515))

(declare-fun m!1077517 () Bool)

(assert (=> b!843480 m!1077517))

(assert (=> b!843272 d!262448))

(declare-fun bs!230123 () Bool)

(declare-fun d!262456 () Bool)

(assert (= bs!230123 (and d!262456 b!843281)))

(declare-fun lambda!25101 () Int)

(assert (=> bs!230123 (not (= lambda!25101 lambda!25082))))

(declare-fun bs!230124 () Bool)

(assert (= bs!230124 (and d!262456 d!262416)))

(assert (=> bs!230124 (= lambda!25101 lambda!25088)))

(declare-fun bs!230125 () Bool)

(assert (= bs!230125 (and d!262456 d!262436)))

(assert (=> bs!230125 (= lambda!25101 lambda!25092)))

(declare-fun b!843524 () Bool)

(declare-fun e!554899 () Bool)

(assert (=> b!843524 (= e!554899 true)))

(declare-fun b!843523 () Bool)

(declare-fun e!554898 () Bool)

(assert (=> b!843523 (= e!554898 e!554899)))

(declare-fun b!843522 () Bool)

(declare-fun e!554897 () Bool)

(assert (=> b!843522 (= e!554897 e!554898)))

(assert (=> d!262456 e!554897))

(assert (= b!843523 b!843524))

(assert (= b!843522 b!843523))

(assert (= (and d!262456 ((_ is Cons!9066) rules!2621)) b!843522))

(assert (=> b!843524 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25101))))

(assert (=> b!843524 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25101))))

(assert (=> d!262456 true))

(declare-fun e!554896 () Bool)

(assert (=> d!262456 e!554896))

(declare-fun res!385599 () Bool)

(assert (=> d!262456 (=> (not res!385599) (not e!554896))))

(declare-fun lt!319503 () Bool)

(declare-fun list!3562 (BalanceConc!6028) List!9083)

(assert (=> d!262456 (= res!385599 (= lt!319503 (forall!2121 (list!3562 (seqFromList!1520 lt!319362)) lambda!25101)))))

(declare-fun forall!2123 (BalanceConc!6028 Int) Bool)

(assert (=> d!262456 (= lt!319503 (forall!2123 (seqFromList!1520 lt!319362) lambda!25101))))

(assert (=> d!262456 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262456 (= (rulesProduceEachTokenIndividually!605 thiss!20117 rules!2621 (seqFromList!1520 lt!319362)) lt!319503)))

(declare-fun b!843521 () Bool)

(assert (=> b!843521 (= e!554896 (= lt!319503 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (list!3562 (seqFromList!1520 lt!319362)))))))

(assert (= (and d!262456 res!385599) b!843521))

(assert (=> d!262456 m!1077201))

(declare-fun m!1077603 () Bool)

(assert (=> d!262456 m!1077603))

(assert (=> d!262456 m!1077603))

(declare-fun m!1077605 () Bool)

(assert (=> d!262456 m!1077605))

(assert (=> d!262456 m!1077201))

(declare-fun m!1077607 () Bool)

(assert (=> d!262456 m!1077607))

(assert (=> d!262456 m!1077187))

(assert (=> b!843521 m!1077201))

(assert (=> b!843521 m!1077603))

(assert (=> b!843521 m!1077603))

(declare-fun m!1077609 () Bool)

(assert (=> b!843521 m!1077609))

(assert (=> b!843283 d!262456))

(declare-fun d!262476 () Bool)

(declare-fun fromListB!667 (List!9083) BalanceConc!6028)

(assert (=> d!262476 (= (seqFromList!1520 lt!319362) (fromListB!667 lt!319362))))

(declare-fun bs!230126 () Bool)

(assert (= bs!230126 d!262476))

(declare-fun m!1077611 () Bool)

(assert (=> bs!230126 m!1077611))

(assert (=> b!843283 d!262476))

(declare-fun d!262478 () Bool)

(declare-fun res!385600 () Bool)

(declare-fun e!554901 () Bool)

(assert (=> d!262478 (=> res!385600 e!554901)))

(assert (=> d!262478 (= res!385600 (or (not ((_ is Cons!9067) lt!319362)) (not ((_ is Cons!9067) (t!93955 lt!319362)))))))

(assert (=> d!262478 (= (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 lt!319362 rules!2621) e!554901)))

(declare-fun b!843525 () Bool)

(declare-fun e!554900 () Bool)

(assert (=> b!843525 (= e!554901 e!554900)))

(declare-fun res!385601 () Bool)

(assert (=> b!843525 (=> (not res!385601) (not e!554900))))

(assert (=> b!843525 (= res!385601 (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621))))

(declare-fun lt!319510 () Unit!13509)

(declare-fun Unit!13520 () Unit!13509)

(assert (=> b!843525 (= lt!319510 Unit!13520)))

(assert (=> b!843525 (> (size!7566 (charsOf!975 (h!14468 (t!93955 lt!319362)))) 0)))

(declare-fun lt!319504 () Unit!13509)

(declare-fun Unit!13521 () Unit!13509)

(assert (=> b!843525 (= lt!319504 Unit!13521)))

(assert (=> b!843525 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319362)))))

(declare-fun lt!319506 () Unit!13509)

(declare-fun Unit!13522 () Unit!13509)

(assert (=> b!843525 (= lt!319506 Unit!13522)))

(assert (=> b!843525 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362))))

(declare-fun lt!319505 () Unit!13509)

(declare-fun lt!319509 () Unit!13509)

(assert (=> b!843525 (= lt!319505 lt!319509)))

(assert (=> b!843525 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319362)))))

(assert (=> b!843525 (= lt!319509 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319362 (h!14468 (t!93955 lt!319362))))))

(declare-fun lt!319507 () Unit!13509)

(declare-fun lt!319508 () Unit!13509)

(assert (=> b!843525 (= lt!319507 lt!319508)))

(assert (=> b!843525 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362))))

(assert (=> b!843525 (= lt!319508 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319362 (h!14468 lt!319362)))))

(declare-fun b!843526 () Bool)

(assert (=> b!843526 (= e!554900 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))) rules!2621))))

(assert (= (and d!262478 (not res!385600)) b!843525))

(assert (= (and b!843525 res!385601) b!843526))

(declare-fun m!1077613 () Bool)

(assert (=> b!843525 m!1077613))

(declare-fun m!1077615 () Bool)

(assert (=> b!843525 m!1077615))

(declare-fun m!1077617 () Bool)

(assert (=> b!843525 m!1077617))

(assert (=> b!843525 m!1077229))

(assert (=> b!843525 m!1077617))

(declare-fun m!1077619 () Bool)

(assert (=> b!843525 m!1077619))

(assert (=> b!843525 m!1077367))

(declare-fun m!1077621 () Bool)

(assert (=> b!843525 m!1077621))

(declare-fun m!1077623 () Bool)

(assert (=> b!843526 m!1077623))

(assert (=> b!843262 d!262478))

(declare-fun d!262480 () Bool)

(declare-fun res!385602 () Bool)

(declare-fun e!554902 () Bool)

(assert (=> d!262480 (=> (not res!385602) (not e!554902))))

(assert (=> d!262480 (= res!385602 (not (isEmpty!5344 (originalCharacters!2256 separatorToken!297))))))

(assert (=> d!262480 (= (inv!11539 separatorToken!297) e!554902)))

(declare-fun b!843527 () Bool)

(declare-fun res!385603 () Bool)

(assert (=> b!843527 (=> (not res!385603) (not e!554902))))

(assert (=> b!843527 (= res!385603 (= (originalCharacters!2256 separatorToken!297) (list!3561 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(declare-fun b!843528 () Bool)

(assert (=> b!843528 (= e!554902 (= (size!7561 separatorToken!297) (size!7565 (originalCharacters!2256 separatorToken!297))))))

(assert (= (and d!262480 res!385602) b!843527))

(assert (= (and b!843527 res!385603) b!843528))

(declare-fun b_lambda!27805 () Bool)

(assert (=> (not b_lambda!27805) (not b!843527)))

(declare-fun tb!58359 () Bool)

(declare-fun t!93987 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!93987) tb!58359))

(declare-fun b!843529 () Bool)

(declare-fun e!554903 () Bool)

(declare-fun tp!265374 () Bool)

(assert (=> b!843529 (= e!554903 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))) tp!265374))))

(declare-fun result!67668 () Bool)

(assert (=> tb!58359 (= result!67668 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))) e!554903))))

(assert (= tb!58359 b!843529))

(declare-fun m!1077625 () Bool)

(assert (=> b!843529 m!1077625))

(declare-fun m!1077627 () Bool)

(assert (=> tb!58359 m!1077627))

(assert (=> b!843527 t!93987))

(declare-fun b_and!73151 () Bool)

(assert (= b_and!73133 (and (=> t!93987 result!67668) b_and!73151)))

(declare-fun t!93989 () Bool)

(declare-fun tb!58361 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!93989) tb!58361))

(declare-fun result!67670 () Bool)

(assert (= result!67670 result!67668))

(assert (=> b!843527 t!93989))

(declare-fun b_and!73153 () Bool)

(assert (= b_and!73135 (and (=> t!93989 result!67670) b_and!73153)))

(declare-fun t!93991 () Bool)

(declare-fun tb!58363 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!93991) tb!58363))

(declare-fun result!67672 () Bool)

(assert (= result!67672 result!67668))

(assert (=> b!843527 t!93991))

(declare-fun b_and!73155 () Bool)

(assert (= b_and!73137 (and (=> t!93991 result!67672) b_and!73155)))

(declare-fun m!1077629 () Bool)

(assert (=> d!262480 m!1077629))

(declare-fun m!1077631 () Bool)

(assert (=> b!843527 m!1077631))

(assert (=> b!843527 m!1077631))

(declare-fun m!1077633 () Bool)

(assert (=> b!843527 m!1077633))

(declare-fun m!1077635 () Bool)

(assert (=> b!843528 m!1077635))

(assert (=> start!74970 d!262480))

(declare-fun b!843530 () Bool)

(declare-fun res!385604 () Bool)

(declare-fun e!554905 () Bool)

(assert (=> b!843530 (=> res!385604 e!554905)))

(assert (=> b!843530 (= res!385604 (not ((_ is IntegerValue!5300) (value!55149 (h!14468 l!5107)))))))

(declare-fun e!554904 () Bool)

(assert (=> b!843530 (= e!554904 e!554905)))

(declare-fun d!262482 () Bool)

(declare-fun c!137373 () Bool)

(assert (=> d!262482 (= c!137373 ((_ is IntegerValue!5298) (value!55149 (h!14468 l!5107))))))

(declare-fun e!554906 () Bool)

(assert (=> d!262482 (= (inv!21 (value!55149 (h!14468 l!5107))) e!554906)))

(declare-fun b!843531 () Bool)

(assert (=> b!843531 (= e!554904 (inv!17 (value!55149 (h!14468 l!5107))))))

(declare-fun b!843532 () Bool)

(assert (=> b!843532 (= e!554905 (inv!15 (value!55149 (h!14468 l!5107))))))

(declare-fun b!843533 () Bool)

(assert (=> b!843533 (= e!554906 e!554904)))

(declare-fun c!137374 () Bool)

(assert (=> b!843533 (= c!137374 ((_ is IntegerValue!5299) (value!55149 (h!14468 l!5107))))))

(declare-fun b!843534 () Bool)

(assert (=> b!843534 (= e!554906 (inv!16 (value!55149 (h!14468 l!5107))))))

(assert (= (and d!262482 c!137373) b!843534))

(assert (= (and d!262482 (not c!137373)) b!843533))

(assert (= (and b!843533 c!137374) b!843531))

(assert (= (and b!843533 (not c!137374)) b!843530))

(assert (= (and b!843530 (not res!385604)) b!843532))

(declare-fun m!1077637 () Bool)

(assert (=> b!843531 m!1077637))

(declare-fun m!1077639 () Bool)

(assert (=> b!843532 m!1077639))

(declare-fun m!1077641 () Bool)

(assert (=> b!843534 m!1077641))

(assert (=> b!843271 d!262482))

(declare-fun d!262484 () Bool)

(declare-fun res!385607 () Bool)

(declare-fun e!554909 () Bool)

(assert (=> d!262484 (=> (not res!385607) (not e!554909))))

(declare-fun rulesValid!587 (LexerInterface!1502 List!9082) Bool)

(assert (=> d!262484 (= res!385607 (rulesValid!587 thiss!20117 rules!2621))))

(assert (=> d!262484 (= (rulesInvariant!1378 thiss!20117 rules!2621) e!554909)))

(declare-fun b!843537 () Bool)

(declare-datatypes ((List!9085 0))(
  ( (Nil!9069) (Cons!9069 (h!14470 String!10728) (t!94011 List!9085)) )
))
(declare-fun noDuplicateTag!587 (LexerInterface!1502 List!9082 List!9085) Bool)

(assert (=> b!843537 (= e!554909 (noDuplicateTag!587 thiss!20117 rules!2621 Nil!9069))))

(assert (= (and d!262484 res!385607) b!843537))

(declare-fun m!1077643 () Bool)

(assert (=> d!262484 m!1077643))

(declare-fun m!1077645 () Bool)

(assert (=> b!843537 m!1077645))

(assert (=> b!843261 d!262484))

(declare-fun d!262486 () Bool)

(assert (=> d!262486 (= (head!1460 l!5107) (h!14468 l!5107))))

(assert (=> b!843270 d!262486))

(declare-fun d!262488 () Bool)

(declare-fun res!385612 () Bool)

(declare-fun e!554914 () Bool)

(assert (=> d!262488 (=> res!385612 e!554914)))

(assert (=> d!262488 (= res!385612 ((_ is Nil!9067) l!5107))))

(assert (=> d!262488 (= (forall!2121 l!5107 lambda!25082) e!554914)))

(declare-fun b!843542 () Bool)

(declare-fun e!554915 () Bool)

(assert (=> b!843542 (= e!554914 e!554915)))

(declare-fun res!385613 () Bool)

(assert (=> b!843542 (=> (not res!385613) (not e!554915))))

(declare-fun dynLambda!4195 (Int Token!3066) Bool)

(assert (=> b!843542 (= res!385613 (dynLambda!4195 lambda!25082 (h!14468 l!5107)))))

(declare-fun b!843543 () Bool)

(assert (=> b!843543 (= e!554915 (forall!2121 (t!93955 l!5107) lambda!25082))))

(assert (= (and d!262488 (not res!385612)) b!843542))

(assert (= (and b!843542 res!385613) b!843543))

(declare-fun b_lambda!27807 () Bool)

(assert (=> (not b_lambda!27807) (not b!843542)))

(declare-fun m!1077647 () Bool)

(assert (=> b!843542 m!1077647))

(declare-fun m!1077649 () Bool)

(assert (=> b!843543 m!1077649))

(assert (=> b!843281 d!262488))

(declare-fun b!843635 () Bool)

(declare-fun e!554982 () Bool)

(assert (=> b!843635 (= e!554982 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) rules!2621))))

(declare-fun lt!319531 () Unit!13509)

(declare-fun lt!319532 () Unit!13509)

(assert (=> b!843635 (= lt!319531 lt!319532)))

(assert (=> b!843635 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))

(assert (=> b!843635 (= lt!319532 (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(declare-fun b!843636 () Bool)

(declare-fun res!385652 () Bool)

(assert (=> b!843636 (=> (not res!385652) (not e!554982))))

(assert (=> b!843636 (= res!385652 (rulesInvariant!1378 thiss!20117 rules!2621))))

(declare-fun b!843637 () Bool)

(declare-fun res!385653 () Bool)

(assert (=> b!843637 (=> (not res!385653) (not e!554982))))

(assert (=> b!843637 (= res!385653 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!843638 () Bool)

(declare-fun res!385656 () Bool)

(assert (=> b!843638 (=> (not res!385656) (not e!554982))))

(assert (=> b!843638 (= res!385656 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(declare-fun d!262490 () Bool)

(assert (=> d!262490 e!554982))

(declare-fun res!385655 () Bool)

(assert (=> d!262490 (=> (not res!385655) (not e!554982))))

(assert (=> d!262490 (= res!385655 ((_ is Lexer!1500) thiss!20117))))

(declare-fun lt!319530 () Unit!13509)

(declare-fun choose!4971 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> d!262490 (= lt!319530 (choose!4971 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(assert (=> d!262490 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262490 (= (printWithSeparatorTokenImpliesSeparableTokensList!8 thiss!20117 rules!2621 lt!319357 separatorToken!297) lt!319530)))

(declare-fun b!843639 () Bool)

(declare-fun res!385654 () Bool)

(assert (=> b!843639 (=> (not res!385654) (not e!554982))))

(assert (=> b!843639 (= res!385654 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319357))))

(assert (= (and d!262490 res!385655) b!843636))

(assert (= (and b!843636 res!385652) b!843639))

(assert (= (and b!843639 res!385654) b!843637))

(assert (= (and b!843637 res!385653) b!843638))

(assert (= (and b!843638 res!385656) b!843635))

(declare-fun m!1077715 () Bool)

(assert (=> d!262490 m!1077715))

(assert (=> d!262490 m!1077187))

(assert (=> b!843637 m!1077189))

(declare-fun m!1077717 () Bool)

(assert (=> b!843639 m!1077717))

(assert (=> b!843636 m!1077235))

(assert (=> b!843635 m!1077215))

(assert (=> b!843635 m!1077215))

(declare-fun m!1077719 () Bool)

(assert (=> b!843635 m!1077719))

(assert (=> b!843635 m!1077215))

(declare-fun m!1077721 () Bool)

(assert (=> b!843635 m!1077721))

(assert (=> b!843635 m!1077231))

(assert (=> b!843279 d!262490))

(declare-fun d!262514 () Bool)

(assert (=> d!262514 (= (isEmpty!5341 (t!93955 (t!93955 lt!319362))) ((_ is Nil!9067) (t!93955 (t!93955 lt!319362))))))

(assert (=> b!843279 d!262514))

(declare-fun d!262516 () Bool)

(assert (=> d!262516 (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621)))

(declare-fun lt!319535 () Unit!13509)

(declare-fun choose!4972 (LexerInterface!1502 Token!3066 Token!3066 List!9082) Unit!13509)

(assert (=> d!262516 (= lt!319535 (choose!4972 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621))))

(assert (=> d!262516 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262516 (= (lemmaTokensOfDifferentKindsAreSeparable!24 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621) lt!319535)))

(declare-fun bs!230128 () Bool)

(assert (= bs!230128 d!262516))

(assert (=> bs!230128 m!1077229))

(declare-fun m!1077723 () Bool)

(assert (=> bs!230128 m!1077723))

(assert (=> bs!230128 m!1077187))

(assert (=> b!843279 d!262516))

(declare-fun d!262518 () Bool)

(assert (=> d!262518 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))

(declare-fun lt!319536 () Unit!13509)

(assert (=> d!262518 (= lt!319536 (choose!4970 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(assert (=> d!262518 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262518 (= (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 lt!319357 separatorToken!297) lt!319536)))

(declare-fun bs!230129 () Bool)

(assert (= bs!230129 d!262518))

(assert (=> bs!230129 m!1077215))

(assert (=> bs!230129 m!1077215))

(assert (=> bs!230129 m!1077721))

(declare-fun m!1077725 () Bool)

(assert (=> bs!230129 m!1077725))

(assert (=> bs!230129 m!1077187))

(assert (=> b!843279 d!262518))

(declare-fun d!262520 () Bool)

(declare-fun prefixMatchZipperSequence!13 (Regex!2133 BalanceConc!6026) Bool)

(declare-fun rulesRegex!10 (LexerInterface!1502 List!9082) Regex!2133)

(declare-fun ++!2346 (BalanceConc!6026 BalanceConc!6026) BalanceConc!6026)

(declare-fun singletonSeq!512 (C!4836) BalanceConc!6026)

(declare-fun apply!1830 (BalanceConc!6026 Int) C!4836)

(assert (=> d!262520 (= (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621) (not (prefixMatchZipperSequence!13 (rulesRegex!10 thiss!20117 rules!2621) (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))))))

(declare-fun bs!230130 () Bool)

(assert (= bs!230130 d!262520))

(declare-fun m!1077727 () Bool)

(assert (=> bs!230130 m!1077727))

(declare-fun m!1077729 () Bool)

(assert (=> bs!230130 m!1077729))

(declare-fun m!1077731 () Bool)

(assert (=> bs!230130 m!1077731))

(assert (=> bs!230130 m!1077727))

(declare-fun m!1077733 () Bool)

(assert (=> bs!230130 m!1077733))

(assert (=> bs!230130 m!1077729))

(declare-fun m!1077735 () Bool)

(assert (=> bs!230130 m!1077735))

(assert (=> bs!230130 m!1077735))

(assert (=> bs!230130 m!1077731))

(declare-fun m!1077737 () Bool)

(assert (=> bs!230130 m!1077737))

(assert (=> bs!230130 m!1077617))

(assert (=> bs!230130 m!1077617))

(assert (=> bs!230130 m!1077733))

(assert (=> b!843279 d!262520))

(declare-fun bs!230131 () Bool)

(declare-fun d!262522 () Bool)

(assert (= bs!230131 (and d!262522 b!843281)))

(declare-fun lambda!25102 () Int)

(assert (=> bs!230131 (not (= lambda!25102 lambda!25082))))

(declare-fun bs!230132 () Bool)

(assert (= bs!230132 (and d!262522 d!262416)))

(assert (=> bs!230132 (= lambda!25102 lambda!25088)))

(declare-fun bs!230133 () Bool)

(assert (= bs!230133 (and d!262522 d!262436)))

(assert (=> bs!230133 (= lambda!25102 lambda!25092)))

(declare-fun bs!230134 () Bool)

(assert (= bs!230134 (and d!262522 d!262456)))

(assert (=> bs!230134 (= lambda!25102 lambda!25101)))

(declare-fun b!843644 () Bool)

(declare-fun e!554987 () Bool)

(assert (=> b!843644 (= e!554987 true)))

(declare-fun b!843643 () Bool)

(declare-fun e!554986 () Bool)

(assert (=> b!843643 (= e!554986 e!554987)))

(declare-fun b!843642 () Bool)

(declare-fun e!554985 () Bool)

(assert (=> b!843642 (= e!554985 e!554986)))

(assert (=> d!262522 e!554985))

(assert (= b!843643 b!843644))

(assert (= b!843642 b!843643))

(assert (= (and d!262522 ((_ is Cons!9066) rules!2621)) b!843642))

(assert (=> b!843644 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25102))))

(assert (=> b!843644 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25102))))

(assert (=> d!262522 true))

(declare-fun lt!319537 () Bool)

(assert (=> d!262522 (= lt!319537 (forall!2121 lt!319358 lambda!25102))))

(declare-fun e!554983 () Bool)

(assert (=> d!262522 (= lt!319537 e!554983)))

(declare-fun res!385658 () Bool)

(assert (=> d!262522 (=> res!385658 e!554983)))

(assert (=> d!262522 (= res!385658 (not ((_ is Cons!9067) lt!319358)))))

(assert (=> d!262522 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262522 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319358) lt!319537)))

(declare-fun b!843640 () Bool)

(declare-fun e!554984 () Bool)

(assert (=> b!843640 (= e!554983 e!554984)))

(declare-fun res!385657 () Bool)

(assert (=> b!843640 (=> (not res!385657) (not e!554984))))

(assert (=> b!843640 (= res!385657 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358)))))

(declare-fun b!843641 () Bool)

(assert (=> b!843641 (= e!554984 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 lt!319358)))))

(assert (= (and d!262522 (not res!385658)) b!843640))

(assert (= (and b!843640 res!385657) b!843641))

(declare-fun m!1077739 () Bool)

(assert (=> d!262522 m!1077739))

(assert (=> d!262522 m!1077187))

(assert (=> b!843640 m!1077513))

(declare-fun m!1077741 () Bool)

(assert (=> b!843641 m!1077741))

(assert (=> b!843279 d!262522))

(declare-fun d!262524 () Bool)

(declare-fun lt!319542 () Bool)

(declare-fun e!554992 () Bool)

(assert (=> d!262524 (= lt!319542 e!554992)))

(declare-fun res!385667 () Bool)

(assert (=> d!262524 (=> (not res!385667) (not e!554992))))

(declare-datatypes ((tuple2!10336 0))(
  ( (tuple2!10337 (_1!5994 BalanceConc!6028) (_2!5994 BalanceConc!6026)) )
))
(declare-fun lex!604 (LexerInterface!1502 List!9082 BalanceConc!6026) tuple2!10336)

(declare-fun print!541 (LexerInterface!1502 BalanceConc!6028) BalanceConc!6026)

(declare-fun singletonSeq!513 (Token!3066) BalanceConc!6028)

(assert (=> d!262524 (= res!385667 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))) (list!3562 (singletonSeq!513 separatorToken!297))))))

(declare-fun e!554993 () Bool)

(assert (=> d!262524 (= lt!319542 e!554993)))

(declare-fun res!385666 () Bool)

(assert (=> d!262524 (=> (not res!385666) (not e!554993))))

(declare-fun lt!319543 () tuple2!10336)

(declare-fun size!7567 (BalanceConc!6028) Int)

(assert (=> d!262524 (= res!385666 (= (size!7567 (_1!5994 lt!319543)) 1))))

(assert (=> d!262524 (= lt!319543 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))))

(assert (=> d!262524 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262524 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 separatorToken!297) lt!319542)))

(declare-fun b!843651 () Bool)

(declare-fun res!385665 () Bool)

(assert (=> b!843651 (=> (not res!385665) (not e!554993))))

(declare-fun apply!1831 (BalanceConc!6028 Int) Token!3066)

(assert (=> b!843651 (= res!385665 (= (apply!1831 (_1!5994 lt!319543) 0) separatorToken!297))))

(declare-fun b!843652 () Bool)

(declare-fun isEmpty!5345 (BalanceConc!6026) Bool)

(assert (=> b!843652 (= e!554993 (isEmpty!5345 (_2!5994 lt!319543)))))

(declare-fun b!843653 () Bool)

(assert (=> b!843653 (= e!554992 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))))))

(assert (= (and d!262524 res!385666) b!843651))

(assert (= (and b!843651 res!385665) b!843652))

(assert (= (and d!262524 res!385667) b!843653))

(assert (=> d!262524 m!1077187))

(declare-fun m!1077743 () Bool)

(assert (=> d!262524 m!1077743))

(declare-fun m!1077745 () Bool)

(assert (=> d!262524 m!1077745))

(declare-fun m!1077747 () Bool)

(assert (=> d!262524 m!1077747))

(declare-fun m!1077749 () Bool)

(assert (=> d!262524 m!1077749))

(assert (=> d!262524 m!1077743))

(assert (=> d!262524 m!1077743))

(declare-fun m!1077751 () Bool)

(assert (=> d!262524 m!1077751))

(assert (=> d!262524 m!1077751))

(declare-fun m!1077753 () Bool)

(assert (=> d!262524 m!1077753))

(declare-fun m!1077755 () Bool)

(assert (=> b!843651 m!1077755))

(declare-fun m!1077757 () Bool)

(assert (=> b!843652 m!1077757))

(assert (=> b!843653 m!1077743))

(assert (=> b!843653 m!1077743))

(assert (=> b!843653 m!1077751))

(assert (=> b!843653 m!1077751))

(assert (=> b!843653 m!1077753))

(declare-fun m!1077759 () Bool)

(assert (=> b!843653 m!1077759))

(assert (=> b!843269 d!262524))

(declare-fun d!262526 () Bool)

(declare-fun res!385672 () Bool)

(declare-fun e!554998 () Bool)

(assert (=> d!262526 (=> res!385672 e!554998)))

(assert (=> d!262526 (= res!385672 (not ((_ is Cons!9066) rules!2621)))))

(assert (=> d!262526 (= (sepAndNonSepRulesDisjointChars!500 rules!2621 rules!2621) e!554998)))

(declare-fun b!843658 () Bool)

(declare-fun e!554999 () Bool)

(assert (=> b!843658 (= e!554998 e!554999)))

(declare-fun res!385673 () Bool)

(assert (=> b!843658 (=> (not res!385673) (not e!554999))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!223 (Rule!3200 List!9082) Bool)

(assert (=> b!843658 (= res!385673 (ruleDisjointCharsFromAllFromOtherType!223 (h!14467 rules!2621) rules!2621))))

(declare-fun b!843659 () Bool)

(assert (=> b!843659 (= e!554999 (sepAndNonSepRulesDisjointChars!500 rules!2621 (t!93954 rules!2621)))))

(assert (= (and d!262526 (not res!385672)) b!843658))

(assert (= (and b!843658 res!385673) b!843659))

(declare-fun m!1077761 () Bool)

(assert (=> b!843658 m!1077761))

(declare-fun m!1077763 () Bool)

(assert (=> b!843659 m!1077763))

(assert (=> b!843267 d!262526))

(declare-fun d!262528 () Bool)

(assert (=> d!262528 (= (inv!11536 (tag!1962 (rule!3123 separatorToken!297))) (= (mod (str.len (value!55148 (tag!1962 (rule!3123 separatorToken!297)))) 2) 0))))

(assert (=> b!843278 d!262528))

(declare-fun d!262530 () Bool)

(declare-fun res!385674 () Bool)

(declare-fun e!555000 () Bool)

(assert (=> d!262530 (=> (not res!385674) (not e!555000))))

(assert (=> d!262530 (= res!385674 (semiInverseModEq!655 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))))))

(assert (=> d!262530 (= (inv!11540 (transformation!1700 (rule!3123 separatorToken!297))) e!555000)))

(declare-fun b!843660 () Bool)

(assert (=> b!843660 (= e!555000 (equivClasses!622 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))))))

(assert (= (and d!262530 res!385674) b!843660))

(declare-fun m!1077765 () Bool)

(assert (=> d!262530 m!1077765))

(declare-fun m!1077767 () Bool)

(assert (=> b!843660 m!1077767))

(assert (=> b!843278 d!262530))

(declare-fun b!843673 () Bool)

(declare-fun e!555003 () Bool)

(declare-fun tp!265441 () Bool)

(assert (=> b!843673 (= e!555003 tp!265441)))

(assert (=> b!843276 (= tp!265366 e!555003)))

(declare-fun b!843674 () Bool)

(declare-fun tp!265442 () Bool)

(declare-fun tp!265445 () Bool)

(assert (=> b!843674 (= e!555003 (and tp!265442 tp!265445))))

(declare-fun b!843671 () Bool)

(declare-fun tp_is_empty!3945 () Bool)

(assert (=> b!843671 (= e!555003 tp_is_empty!3945)))

(declare-fun b!843672 () Bool)

(declare-fun tp!265443 () Bool)

(declare-fun tp!265444 () Bool)

(assert (=> b!843672 (= e!555003 (and tp!265443 tp!265444))))

(assert (= (and b!843276 ((_ is ElementMatch!2133) (regex!1700 (h!14467 rules!2621)))) b!843671))

(assert (= (and b!843276 ((_ is Concat!3900) (regex!1700 (h!14467 rules!2621)))) b!843672))

(assert (= (and b!843276 ((_ is Star!2133) (regex!1700 (h!14467 rules!2621)))) b!843673))

(assert (= (and b!843276 ((_ is Union!2133) (regex!1700 (h!14467 rules!2621)))) b!843674))

(declare-fun b!843679 () Bool)

(declare-fun e!555006 () Bool)

(declare-fun tp!265448 () Bool)

(assert (=> b!843679 (= e!555006 (and tp_is_empty!3945 tp!265448))))

(assert (=> b!843265 (= tp!265362 e!555006)))

(assert (= (and b!843265 ((_ is Cons!9065) (originalCharacters!2256 separatorToken!297))) b!843679))

(declare-fun b!843693 () Bool)

(declare-fun b_free!25285 () Bool)

(declare-fun b_next!25349 () Bool)

(assert (=> b!843693 (= b_free!25285 (not b_next!25349))))

(declare-fun tp!265462 () Bool)

(declare-fun b_and!73165 () Bool)

(assert (=> b!843693 (= tp!265462 b_and!73165)))

(declare-fun b_free!25287 () Bool)

(declare-fun b_next!25351 () Bool)

(assert (=> b!843693 (= b_free!25287 (not b_next!25351))))

(declare-fun t!94004 () Bool)

(declare-fun tb!58373 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!94004) tb!58373))

(declare-fun result!67696 () Bool)

(assert (= result!67696 result!67646))

(assert (=> b!843453 t!94004))

(declare-fun t!94006 () Bool)

(declare-fun tb!58375 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!94006) tb!58375))

(declare-fun result!67698 () Bool)

(assert (= result!67698 result!67668))

(assert (=> b!843527 t!94006))

(declare-fun tp!265459 () Bool)

(declare-fun b_and!73167 () Bool)

(assert (=> b!843693 (= tp!265459 (and (=> t!94004 result!67696) (=> t!94006 result!67698) b_and!73167))))

(declare-fun e!555023 () Bool)

(declare-fun e!555022 () Bool)

(declare-fun b!843692 () Bool)

(declare-fun tp!265461 () Bool)

(assert (=> b!843692 (= e!555023 (and tp!265461 (inv!11536 (tag!1962 (rule!3123 (h!14468 (t!93955 l!5107))))) (inv!11540 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) e!555022))))

(declare-fun tp!265460 () Bool)

(declare-fun b!843691 () Bool)

(declare-fun e!555021 () Bool)

(assert (=> b!843691 (= e!555021 (and (inv!21 (value!55149 (h!14468 (t!93955 l!5107)))) e!555023 tp!265460))))

(declare-fun e!555019 () Bool)

(declare-fun b!843690 () Bool)

(declare-fun tp!265463 () Bool)

(assert (=> b!843690 (= e!555019 (and (inv!11539 (h!14468 (t!93955 l!5107))) e!555021 tp!265463))))

(assert (=> b!843693 (= e!555022 (and tp!265462 tp!265459))))

(assert (=> b!843263 (= tp!265358 e!555019)))

(assert (= b!843692 b!843693))

(assert (= b!843691 b!843692))

(assert (= b!843690 b!843691))

(assert (= (and b!843263 ((_ is Cons!9067) (t!93955 l!5107))) b!843690))

(declare-fun m!1077769 () Bool)

(assert (=> b!843692 m!1077769))

(declare-fun m!1077771 () Bool)

(assert (=> b!843692 m!1077771))

(declare-fun m!1077773 () Bool)

(assert (=> b!843691 m!1077773))

(declare-fun m!1077775 () Bool)

(assert (=> b!843690 m!1077775))

(declare-fun b!843696 () Bool)

(declare-fun e!555025 () Bool)

(declare-fun tp!265464 () Bool)

(assert (=> b!843696 (= e!555025 tp!265464)))

(assert (=> b!843285 (= tp!265354 e!555025)))

(declare-fun b!843697 () Bool)

(declare-fun tp!265465 () Bool)

(declare-fun tp!265468 () Bool)

(assert (=> b!843697 (= e!555025 (and tp!265465 tp!265468))))

(declare-fun b!843694 () Bool)

(assert (=> b!843694 (= e!555025 tp_is_empty!3945)))

(declare-fun b!843695 () Bool)

(declare-fun tp!265466 () Bool)

(declare-fun tp!265467 () Bool)

(assert (=> b!843695 (= e!555025 (and tp!265466 tp!265467))))

(assert (= (and b!843285 ((_ is ElementMatch!2133) (regex!1700 (rule!3123 (h!14468 l!5107))))) b!843694))

(assert (= (and b!843285 ((_ is Concat!3900) (regex!1700 (rule!3123 (h!14468 l!5107))))) b!843695))

(assert (= (and b!843285 ((_ is Star!2133) (regex!1700 (rule!3123 (h!14468 l!5107))))) b!843696))

(assert (= (and b!843285 ((_ is Union!2133) (regex!1700 (rule!3123 (h!14468 l!5107))))) b!843697))

(declare-fun b!843698 () Bool)

(declare-fun e!555026 () Bool)

(declare-fun tp!265469 () Bool)

(assert (=> b!843698 (= e!555026 (and tp_is_empty!3945 tp!265469))))

(assert (=> b!843271 (= tp!265365 e!555026)))

(assert (= (and b!843271 ((_ is Cons!9065) (originalCharacters!2256 (h!14468 l!5107)))) b!843698))

(declare-fun b!843709 () Bool)

(declare-fun b_free!25289 () Bool)

(declare-fun b_next!25353 () Bool)

(assert (=> b!843709 (= b_free!25289 (not b_next!25353))))

(declare-fun tp!265481 () Bool)

(declare-fun b_and!73169 () Bool)

(assert (=> b!843709 (= tp!265481 b_and!73169)))

(declare-fun b_free!25291 () Bool)

(declare-fun b_next!25355 () Bool)

(assert (=> b!843709 (= b_free!25291 (not b_next!25355))))

(declare-fun t!94008 () Bool)

(declare-fun tb!58377 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!94008) tb!58377))

(declare-fun result!67702 () Bool)

(assert (= result!67702 result!67646))

(assert (=> b!843453 t!94008))

(declare-fun tb!58379 () Bool)

(declare-fun t!94010 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!94010) tb!58379))

(declare-fun result!67704 () Bool)

(assert (= result!67704 result!67668))

(assert (=> b!843527 t!94010))

(declare-fun tp!265480 () Bool)

(declare-fun b_and!73171 () Bool)

(assert (=> b!843709 (= tp!265480 (and (=> t!94008 result!67702) (=> t!94010 result!67704) b_and!73171))))

(declare-fun e!555036 () Bool)

(assert (=> b!843709 (= e!555036 (and tp!265481 tp!265480))))

(declare-fun b!843708 () Bool)

(declare-fun e!555035 () Bool)

(declare-fun tp!265479 () Bool)

(assert (=> b!843708 (= e!555035 (and tp!265479 (inv!11536 (tag!1962 (h!14467 (t!93954 rules!2621)))) (inv!11540 (transformation!1700 (h!14467 (t!93954 rules!2621)))) e!555036))))

(declare-fun b!843707 () Bool)

(declare-fun e!555038 () Bool)

(declare-fun tp!265478 () Bool)

(assert (=> b!843707 (= e!555038 (and e!555035 tp!265478))))

(assert (=> b!843280 (= tp!265357 e!555038)))

(assert (= b!843708 b!843709))

(assert (= b!843707 b!843708))

(assert (= (and b!843280 ((_ is Cons!9066) (t!93954 rules!2621))) b!843707))

(declare-fun m!1077777 () Bool)

(assert (=> b!843708 m!1077777))

(declare-fun m!1077779 () Bool)

(assert (=> b!843708 m!1077779))

(declare-fun b!843712 () Bool)

(declare-fun e!555039 () Bool)

(declare-fun tp!265482 () Bool)

(assert (=> b!843712 (= e!555039 tp!265482)))

(assert (=> b!843278 (= tp!265359 e!555039)))

(declare-fun b!843713 () Bool)

(declare-fun tp!265483 () Bool)

(declare-fun tp!265486 () Bool)

(assert (=> b!843713 (= e!555039 (and tp!265483 tp!265486))))

(declare-fun b!843710 () Bool)

(assert (=> b!843710 (= e!555039 tp_is_empty!3945)))

(declare-fun b!843711 () Bool)

(declare-fun tp!265484 () Bool)

(declare-fun tp!265485 () Bool)

(assert (=> b!843711 (= e!555039 (and tp!265484 tp!265485))))

(assert (= (and b!843278 ((_ is ElementMatch!2133) (regex!1700 (rule!3123 separatorToken!297)))) b!843710))

(assert (= (and b!843278 ((_ is Concat!3900) (regex!1700 (rule!3123 separatorToken!297)))) b!843711))

(assert (= (and b!843278 ((_ is Star!2133) (regex!1700 (rule!3123 separatorToken!297)))) b!843712))

(assert (= (and b!843278 ((_ is Union!2133) (regex!1700 (rule!3123 separatorToken!297)))) b!843713))

(declare-fun b_lambda!27817 () Bool)

(assert (= b_lambda!27807 (or b!843281 b_lambda!27817)))

(declare-fun bs!230135 () Bool)

(declare-fun d!262532 () Bool)

(assert (= bs!230135 (and d!262532 b!843281)))

(assert (=> bs!230135 (= (dynLambda!4195 lambda!25082 (h!14468 l!5107)) (not (isSeparator!1700 (rule!3123 (h!14468 l!5107)))))))

(assert (=> b!843542 d!262532))

(declare-fun b_lambda!27819 () Bool)

(assert (= b_lambda!27799 (or (and b!843709 b_free!25291 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843282 b_free!25271 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843274 b_free!25267) (and b!843264 b_free!25275 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843693 b_free!25287 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) b_lambda!27819)))

(declare-fun b_lambda!27821 () Bool)

(assert (= b_lambda!27805 (or (and b!843693 b_free!25287 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843282 b_free!25271) (and b!843274 b_free!25267 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843709 b_free!25291 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843264 b_free!25275 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) b_lambda!27821)))

(check-sat (not b!843388) (not d!262416) (not b!843659) (not b!843692) b_and!73169 (not b_lambda!27819) (not d!262424) (not b!843529) b_and!73151 (not b!843672) b_and!73165 tp_is_empty!3945 (not b!843521) (not d!262520) (not b!843711) (not d!262484) (not b!843537) (not b!843639) (not d!262426) (not b!843334) (not tb!58341) (not b!843658) (not d!262436) (not b!843532) (not b!843437) (not b!843637) (not b!843409) (not b_next!25353) (not b!843404) b_and!73121 (not b!843330) (not d!262516) (not d!262490) (not b!843397) (not b!843408) (not b!843480) (not b_next!25337) (not b_next!25335) (not d!262518) (not b!843641) (not b!843411) b_and!73153 (not d!262410) (not tb!58359) (not b_next!25331) (not b!843642) (not b!843459) (not b!843696) (not b!843695) (not b!843332) (not b!843527) (not b_next!25355) (not d!262456) (not b_lambda!27821) (not d!262408) (not d!262480) (not b!843303) (not b!843660) (not b!843640) (not b!843528) (not b!843438) (not b!843674) (not b!843406) (not b!843526) b_and!73129 (not b!843435) (not b!843337) (not b_lambda!27817) (not d!262446) (not b!843713) (not b_next!25349) (not b!843635) (not b!843708) (not b!843531) (not b!843652) (not d!262524) (not b!843690) (not b!843460) (not b!843651) b_and!73125 (not b_next!25339) (not b!843453) (not b!843673) (not b_next!25333) (not b!843697) (not d!262530) (not b!843534) (not b!843636) (not b_next!25351) (not b!843707) (not b!843698) (not b!843454) (not b!843691) (not b!843387) b_and!73167 (not d!262522) b_and!73155 (not b!843522) (not b!843712) (not b!843679) (not b!843335) (not b!843440) (not d!262438) (not b!843525) (not b_next!25329) (not b!843479) (not b!843439) (not d!262476) (not b!843543) b_and!73171 (not b!843653) (not b!843434))
(check-sat b_and!73169 b_and!73151 b_and!73165 (not b_next!25353) b_and!73153 (not b_next!25331) (not b_next!25355) b_and!73129 (not b_next!25349) (not b_next!25333) (not b_next!25351) (not b_next!25329) b_and!73171 b_and!73121 (not b_next!25337) (not b_next!25335) b_and!73125 (not b_next!25339) b_and!73167 b_and!73155)
(get-model)

(declare-fun d!262538 () Bool)

(declare-fun c!137377 () Bool)

(assert (=> d!262538 (= c!137377 ((_ is Cons!9067) ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!555042 () List!9081)

(assert (=> d!262538 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)) e!555042)))

(declare-fun b!843718 () Bool)

(assert (=> b!843718 (= e!555042 (++!2345 (list!3561 (charsOf!975 (h!14468 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)))) (printList!460 thiss!20117 (t!93955 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!843719 () Bool)

(assert (=> b!843719 (= e!555042 Nil!9065)))

(assert (= (and d!262538 c!137377) b!843718))

(assert (= (and d!262538 (not c!137377)) b!843719))

(declare-fun m!1077787 () Bool)

(assert (=> b!843718 m!1077787))

(assert (=> b!843718 m!1077787))

(declare-fun m!1077789 () Bool)

(assert (=> b!843718 m!1077789))

(declare-fun m!1077791 () Bool)

(assert (=> b!843718 m!1077791))

(assert (=> b!843718 m!1077789))

(assert (=> b!843718 m!1077791))

(declare-fun m!1077793 () Bool)

(assert (=> b!843718 m!1077793))

(assert (=> b!843409 d!262538))

(declare-fun d!262540 () Bool)

(assert (=> d!262540 (= ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (Cons!9067 separatorToken!297 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)))))

(assert (=> b!843409 d!262540))

(declare-fun b!843720 () Bool)

(declare-fun e!555043 () Bool)

(declare-fun e!555047 () Bool)

(assert (=> b!843720 (= e!555043 e!555047)))

(declare-fun res!385683 () Bool)

(assert (=> b!843720 (=> res!385683 e!555047)))

(assert (=> b!843720 (= res!385683 (not ((_ is Cons!9067) (t!93955 l!5107))))))

(declare-fun b!843721 () Bool)

(declare-fun e!555044 () List!9081)

(assert (=> b!843721 (= e!555044 Nil!9065)))

(declare-fun b!843722 () Bool)

(declare-fun e!555048 () List!9081)

(declare-fun lt!319554 () List!9083)

(assert (=> b!843722 (= e!555048 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319554))) (printList!460 thiss!20117 (t!93955 lt!319554))))))

(declare-fun b!843723 () Bool)

(declare-fun res!385684 () Bool)

(assert (=> b!843723 (=> (not res!385684) (not e!555043))))

(declare-fun e!555046 () Bool)

(assert (=> b!843723 (= res!385684 e!555046)))

(declare-fun res!385682 () Bool)

(assert (=> b!843723 (=> res!385682 e!555046)))

(assert (=> b!843723 (= res!385682 (not ((_ is Cons!9067) (t!93955 l!5107))))))

(declare-fun b!843725 () Bool)

(declare-fun e!555045 () List!9083)

(assert (=> b!843725 (= e!555045 Nil!9067)))

(declare-fun b!843726 () Bool)

(assert (=> b!843726 (= e!555046 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 l!5107)))) e!555044))))

(declare-fun c!137378 () Bool)

(declare-fun lt!319552 () List!9083)

(assert (=> b!843726 (= c!137378 ((_ is Cons!9067) lt!319552))))

(assert (=> b!843726 (= lt!319552 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 l!5107))))))

(declare-fun b!843727 () Bool)

(assert (=> b!843727 (= e!555047 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297) separatorToken!297)) e!555048))))

(declare-fun c!137380 () Bool)

(assert (=> b!843727 (= c!137380 ((_ is Cons!9067) lt!319554))))

(assert (=> b!843727 (= lt!319554 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!843728 () Bool)

(assert (=> b!843728 (= e!555048 Nil!9065)))

(declare-fun b!843729 () Bool)

(assert (=> b!843729 (= e!555044 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319552))) (printList!460 thiss!20117 (t!93955 lt!319552))))))

(declare-fun d!262542 () Bool)

(declare-fun lt!319547 () List!9083)

(assert (=> d!262542 (= (printList!460 thiss!20117 lt!319547) (printWithSeparatorTokenList!18 thiss!20117 (t!93955 l!5107) separatorToken!297))))

(assert (=> d!262542 (= lt!319547 e!555045)))

(declare-fun c!137379 () Bool)

(assert (=> d!262542 (= c!137379 ((_ is Cons!9067) (t!93955 l!5107)))))

(assert (=> d!262542 e!555043))

(declare-fun res!385681 () Bool)

(assert (=> d!262542 (=> (not res!385681) (not e!555043))))

(assert (=> d!262542 (= res!385681 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(assert (=> d!262542 (= (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) lt!319547)))

(declare-fun b!843724 () Bool)

(assert (=> b!843724 (= e!555045 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 l!5107))))))

(declare-fun lt!319553 () List!9081)

(assert (=> b!843724 (= lt!319553 (list!3561 (charsOf!975 (h!14468 (t!93955 l!5107)))))))

(declare-fun lt!319548 () List!9081)

(assert (=> b!843724 (= lt!319548 (list!3561 (charsOf!975 separatorToken!297)))))

(declare-fun lt!319551 () List!9081)

(assert (=> b!843724 (= lt!319551 (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 l!5107)) separatorToken!297)))))

(declare-fun lt!319550 () Unit!13509)

(assert (=> b!843724 (= lt!319550 (lemmaConcatAssociativity!735 lt!319553 lt!319548 lt!319551))))

(assert (=> b!843724 (= (++!2345 (++!2345 lt!319553 lt!319548) lt!319551) (++!2345 lt!319553 (++!2345 lt!319548 lt!319551)))))

(declare-fun lt!319549 () Unit!13509)

(assert (=> b!843724 (= lt!319549 lt!319550)))

(assert (= (and d!262542 res!385681) b!843723))

(assert (= (and b!843723 (not res!385682)) b!843726))

(assert (= (and b!843726 c!137378) b!843729))

(assert (= (and b!843726 (not c!137378)) b!843721))

(assert (= (and b!843723 res!385684) b!843720))

(assert (= (and b!843720 (not res!385683)) b!843727))

(assert (= (and b!843727 c!137380) b!843722))

(assert (= (and b!843727 (not c!137380)) b!843728))

(assert (= (and d!262542 c!137379) b!843724))

(assert (= (and d!262542 (not c!137379)) b!843725))

(declare-fun m!1077795 () Bool)

(assert (=> b!843729 m!1077795))

(assert (=> b!843729 m!1077795))

(declare-fun m!1077797 () Bool)

(assert (=> b!843729 m!1077797))

(declare-fun m!1077799 () Bool)

(assert (=> b!843729 m!1077799))

(assert (=> b!843729 m!1077797))

(assert (=> b!843729 m!1077799))

(declare-fun m!1077801 () Bool)

(assert (=> b!843729 m!1077801))

(declare-fun m!1077803 () Bool)

(assert (=> b!843722 m!1077803))

(assert (=> b!843722 m!1077803))

(declare-fun m!1077805 () Bool)

(assert (=> b!843722 m!1077805))

(declare-fun m!1077807 () Bool)

(assert (=> b!843722 m!1077807))

(assert (=> b!843722 m!1077805))

(assert (=> b!843722 m!1077807))

(declare-fun m!1077809 () Bool)

(assert (=> b!843722 m!1077809))

(declare-fun m!1077811 () Bool)

(assert (=> d!262542 m!1077811))

(declare-fun m!1077813 () Bool)

(assert (=> d!262542 m!1077813))

(assert (=> b!843724 m!1077275))

(assert (=> b!843724 m!1077277))

(declare-fun m!1077815 () Bool)

(assert (=> b!843724 m!1077815))

(assert (=> b!843724 m!1077275))

(declare-fun m!1077817 () Bool)

(assert (=> b!843724 m!1077817))

(declare-fun m!1077819 () Bool)

(assert (=> b!843724 m!1077819))

(declare-fun m!1077821 () Bool)

(assert (=> b!843724 m!1077821))

(assert (=> b!843724 m!1077819))

(declare-fun m!1077823 () Bool)

(assert (=> b!843724 m!1077823))

(declare-fun m!1077825 () Bool)

(assert (=> b!843724 m!1077825))

(declare-fun m!1077827 () Bool)

(assert (=> b!843724 m!1077827))

(assert (=> b!843724 m!1077827))

(declare-fun m!1077829 () Bool)

(assert (=> b!843724 m!1077829))

(assert (=> b!843724 m!1077815))

(declare-fun m!1077831 () Bool)

(assert (=> b!843724 m!1077831))

(declare-fun m!1077833 () Bool)

(assert (=> b!843724 m!1077833))

(assert (=> b!843724 m!1077817))

(declare-fun m!1077835 () Bool)

(assert (=> b!843724 m!1077835))

(assert (=> b!843724 m!1077827))

(assert (=> b!843724 m!1077823))

(assert (=> b!843727 m!1077827))

(assert (=> b!843727 m!1077827))

(assert (=> b!843727 m!1077823))

(assert (=> b!843727 m!1077823))

(declare-fun m!1077837 () Bool)

(assert (=> b!843727 m!1077837))

(assert (=> b!843726 m!1077827))

(assert (=> b!843726 m!1077827))

(assert (=> b!843726 m!1077823))

(assert (=> b!843726 m!1077823))

(assert (=> b!843726 m!1077825))

(assert (=> b!843726 m!1077825))

(declare-fun m!1077839 () Bool)

(assert (=> b!843726 m!1077839))

(assert (=> b!843409 d!262542))

(declare-fun d!262544 () Bool)

(declare-fun isBalanced!815 (Conc!3006) Bool)

(assert (=> d!262544 (= (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))) (isBalanced!815 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(declare-fun bs!230137 () Bool)

(assert (= bs!230137 d!262544))

(declare-fun m!1077841 () Bool)

(assert (=> bs!230137 m!1077841))

(assert (=> tb!58359 d!262544))

(declare-fun d!262546 () Bool)

(declare-fun lt!319555 () Bool)

(declare-fun e!555049 () Bool)

(assert (=> d!262546 (= lt!319555 e!555049)))

(declare-fun res!385687 () Bool)

(assert (=> d!262546 (=> (not res!385687) (not e!555049))))

(assert (=> d!262546 (= res!385687 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319362)))))) (list!3562 (singletonSeq!513 (h!14468 lt!319362)))))))

(declare-fun e!555050 () Bool)

(assert (=> d!262546 (= lt!319555 e!555050)))

(declare-fun res!385686 () Bool)

(assert (=> d!262546 (=> (not res!385686) (not e!555050))))

(declare-fun lt!319556 () tuple2!10336)

(assert (=> d!262546 (= res!385686 (= (size!7567 (_1!5994 lt!319556)) 1))))

(assert (=> d!262546 (= lt!319556 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319362)))))))

(assert (=> d!262546 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262546 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362)) lt!319555)))

(declare-fun b!843730 () Bool)

(declare-fun res!385685 () Bool)

(assert (=> b!843730 (=> (not res!385685) (not e!555050))))

(assert (=> b!843730 (= res!385685 (= (apply!1831 (_1!5994 lt!319556) 0) (h!14468 lt!319362)))))

(declare-fun b!843731 () Bool)

(assert (=> b!843731 (= e!555050 (isEmpty!5345 (_2!5994 lt!319556)))))

(declare-fun b!843732 () Bool)

(assert (=> b!843732 (= e!555049 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319362)))))))))

(assert (= (and d!262546 res!385686) b!843730))

(assert (= (and b!843730 res!385685) b!843731))

(assert (= (and d!262546 res!385687) b!843732))

(assert (=> d!262546 m!1077187))

(declare-fun m!1077843 () Bool)

(assert (=> d!262546 m!1077843))

(declare-fun m!1077845 () Bool)

(assert (=> d!262546 m!1077845))

(declare-fun m!1077847 () Bool)

(assert (=> d!262546 m!1077847))

(declare-fun m!1077849 () Bool)

(assert (=> d!262546 m!1077849))

(assert (=> d!262546 m!1077843))

(assert (=> d!262546 m!1077843))

(declare-fun m!1077851 () Bool)

(assert (=> d!262546 m!1077851))

(assert (=> d!262546 m!1077851))

(declare-fun m!1077853 () Bool)

(assert (=> d!262546 m!1077853))

(declare-fun m!1077855 () Bool)

(assert (=> b!843730 m!1077855))

(declare-fun m!1077857 () Bool)

(assert (=> b!843731 m!1077857))

(assert (=> b!843732 m!1077843))

(assert (=> b!843732 m!1077843))

(assert (=> b!843732 m!1077851))

(assert (=> b!843732 m!1077851))

(assert (=> b!843732 m!1077853))

(declare-fun m!1077859 () Bool)

(assert (=> b!843732 m!1077859))

(assert (=> b!843387 d!262546))

(declare-fun d!262548 () Bool)

(declare-fun c!137383 () Bool)

(assert (=> d!262548 (= c!137383 ((_ is Node!3006) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(declare-fun e!555055 () Bool)

(assert (=> d!262548 (= (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))) e!555055)))

(declare-fun b!843739 () Bool)

(declare-fun inv!11545 (Conc!3006) Bool)

(assert (=> b!843739 (= e!555055 (inv!11545 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(declare-fun b!843740 () Bool)

(declare-fun e!555056 () Bool)

(assert (=> b!843740 (= e!555055 e!555056)))

(declare-fun res!385690 () Bool)

(assert (=> b!843740 (= res!385690 (not ((_ is Leaf!4444) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))))))

(assert (=> b!843740 (=> res!385690 e!555056)))

(declare-fun b!843741 () Bool)

(declare-fun inv!11546 (Conc!3006) Bool)

(assert (=> b!843741 (= e!555056 (inv!11546 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(assert (= (and d!262548 c!137383) b!843739))

(assert (= (and d!262548 (not c!137383)) b!843740))

(assert (= (and b!843740 (not res!385690)) b!843741))

(declare-fun m!1077861 () Bool)

(assert (=> b!843739 m!1077861))

(declare-fun m!1077863 () Bool)

(assert (=> b!843741 m!1077863))

(assert (=> b!843459 d!262548))

(declare-fun d!262550 () Bool)

(declare-fun res!385691 () Bool)

(declare-fun e!555057 () Bool)

(assert (=> d!262550 (=> res!385691 e!555057)))

(assert (=> d!262550 (= res!385691 ((_ is Nil!9067) lt!319358))))

(assert (=> d!262550 (= (forall!2121 lt!319358 lambda!25102) e!555057)))

(declare-fun b!843742 () Bool)

(declare-fun e!555058 () Bool)

(assert (=> b!843742 (= e!555057 e!555058)))

(declare-fun res!385692 () Bool)

(assert (=> b!843742 (=> (not res!385692) (not e!555058))))

(assert (=> b!843742 (= res!385692 (dynLambda!4195 lambda!25102 (h!14468 lt!319358)))))

(declare-fun b!843743 () Bool)

(assert (=> b!843743 (= e!555058 (forall!2121 (t!93955 lt!319358) lambda!25102))))

(assert (= (and d!262550 (not res!385691)) b!843742))

(assert (= (and b!843742 res!385692) b!843743))

(declare-fun b_lambda!27823 () Bool)

(assert (=> (not b_lambda!27823) (not b!843742)))

(declare-fun m!1077865 () Bool)

(assert (=> b!843742 m!1077865))

(declare-fun m!1077867 () Bool)

(assert (=> b!843743 m!1077867))

(assert (=> d!262522 d!262550))

(assert (=> d!262522 d!262414))

(declare-fun d!262552 () Bool)

(declare-fun list!3564 (Conc!3006) List!9081)

(assert (=> d!262552 (= (list!3561 (charsOf!975 (h!14468 lt!319357))) (list!3564 (c!137333 (charsOf!975 (h!14468 lt!319357)))))))

(declare-fun bs!230138 () Bool)

(assert (= bs!230138 d!262552))

(declare-fun m!1077869 () Bool)

(assert (=> bs!230138 m!1077869))

(assert (=> b!843332 d!262552))

(declare-fun d!262554 () Bool)

(assert (=> d!262554 (= ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (Cons!9067 separatorToken!297 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)))))

(assert (=> b!843332 d!262554))

(declare-fun c!137384 () Bool)

(declare-fun d!262556 () Bool)

(assert (=> d!262556 (= c!137384 ((_ is Cons!9067) (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)))))

(declare-fun e!555059 () List!9081)

(assert (=> d!262556 (= (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)) e!555059)))

(declare-fun b!843744 () Bool)

(assert (=> b!843744 (= e!555059 (++!2345 (list!3561 (charsOf!975 (h!14468 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)))) (printList!460 thiss!20117 (t!93955 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297)))))))

(declare-fun b!843745 () Bool)

(assert (=> b!843745 (= e!555059 Nil!9065)))

(assert (= (and d!262556 c!137384) b!843744))

(assert (= (and d!262556 (not c!137384)) b!843745))

(declare-fun m!1077871 () Bool)

(assert (=> b!843744 m!1077871))

(assert (=> b!843744 m!1077871))

(declare-fun m!1077873 () Bool)

(assert (=> b!843744 m!1077873))

(declare-fun m!1077875 () Bool)

(assert (=> b!843744 m!1077875))

(assert (=> b!843744 m!1077873))

(assert (=> b!843744 m!1077875))

(declare-fun m!1077877 () Bool)

(assert (=> b!843744 m!1077877))

(assert (=> b!843332 d!262556))

(declare-fun d!262558 () Bool)

(assert (=> d!262558 (= ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357)) (Cons!9067 (h!14468 lt!319357) ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)))))

(assert (=> b!843332 d!262558))

(declare-fun d!262560 () Bool)

(declare-fun lt!319559 () BalanceConc!6026)

(assert (=> d!262560 (= (list!3561 lt!319559) (originalCharacters!2256 (h!14468 lt!319357)))))

(assert (=> d!262560 (= lt!319559 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357)))) (value!55149 (h!14468 lt!319357))))))

(assert (=> d!262560 (= (charsOf!975 (h!14468 lt!319357)) lt!319559)))

(declare-fun b_lambda!27825 () Bool)

(assert (=> (not b_lambda!27825) (not d!262560)))

(declare-fun tb!58381 () Bool)

(declare-fun t!94014 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94014) tb!58381))

(declare-fun b!843746 () Bool)

(declare-fun e!555060 () Bool)

(declare-fun tp!265487 () Bool)

(assert (=> b!843746 (= e!555060 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357)))) (value!55149 (h!14468 lt!319357))))) tp!265487))))

(declare-fun result!67706 () Bool)

(assert (=> tb!58381 (= result!67706 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357)))) (value!55149 (h!14468 lt!319357)))) e!555060))))

(assert (= tb!58381 b!843746))

(declare-fun m!1077879 () Bool)

(assert (=> b!843746 m!1077879))

(declare-fun m!1077881 () Bool)

(assert (=> tb!58381 m!1077881))

(assert (=> d!262560 t!94014))

(declare-fun b_and!73173 () Bool)

(assert (= b_and!73167 (and (=> t!94014 result!67706) b_and!73173)))

(declare-fun tb!58383 () Bool)

(declare-fun t!94016 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94016) tb!58383))

(declare-fun result!67708 () Bool)

(assert (= result!67708 result!67706))

(assert (=> d!262560 t!94016))

(declare-fun b_and!73175 () Bool)

(assert (= b_and!73171 (and (=> t!94016 result!67708) b_and!73175)))

(declare-fun tb!58385 () Bool)

(declare-fun t!94018 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94018) tb!58385))

(declare-fun result!67710 () Bool)

(assert (= result!67710 result!67706))

(assert (=> d!262560 t!94018))

(declare-fun b_and!73177 () Bool)

(assert (= b_and!73155 (and (=> t!94018 result!67710) b_and!73177)))

(declare-fun t!94020 () Bool)

(declare-fun tb!58387 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94020) tb!58387))

(declare-fun result!67712 () Bool)

(assert (= result!67712 result!67706))

(assert (=> d!262560 t!94020))

(declare-fun b_and!73179 () Bool)

(assert (= b_and!73151 (and (=> t!94020 result!67712) b_and!73179)))

(declare-fun t!94022 () Bool)

(declare-fun tb!58389 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94022) tb!58389))

(declare-fun result!67714 () Bool)

(assert (= result!67714 result!67706))

(assert (=> d!262560 t!94022))

(declare-fun b_and!73181 () Bool)

(assert (= b_and!73153 (and (=> t!94022 result!67714) b_and!73181)))

(declare-fun m!1077883 () Bool)

(assert (=> d!262560 m!1077883))

(declare-fun m!1077885 () Bool)

(assert (=> d!262560 m!1077885))

(assert (=> b!843332 d!262560))

(declare-fun d!262562 () Bool)

(declare-fun lt!319560 () BalanceConc!6026)

(assert (=> d!262562 (= (list!3561 lt!319560) (originalCharacters!2256 separatorToken!297))))

(assert (=> d!262562 (= lt!319560 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))

(assert (=> d!262562 (= (charsOf!975 separatorToken!297) lt!319560)))

(declare-fun b_lambda!27827 () Bool)

(assert (=> (not b_lambda!27827) (not d!262562)))

(assert (=> d!262562 t!93989))

(declare-fun b_and!73183 () Bool)

(assert (= b_and!73181 (and (=> t!93989 result!67670) b_and!73183)))

(assert (=> d!262562 t!94006))

(declare-fun b_and!73185 () Bool)

(assert (= b_and!73173 (and (=> t!94006 result!67698) b_and!73185)))

(assert (=> d!262562 t!93987))

(declare-fun b_and!73187 () Bool)

(assert (= b_and!73179 (and (=> t!93987 result!67668) b_and!73187)))

(assert (=> d!262562 t!94010))

(declare-fun b_and!73189 () Bool)

(assert (= b_and!73175 (and (=> t!94010 result!67704) b_and!73189)))

(assert (=> d!262562 t!93991))

(declare-fun b_and!73191 () Bool)

(assert (= b_and!73177 (and (=> t!93991 result!67672) b_and!73191)))

(declare-fun m!1077887 () Bool)

(assert (=> d!262562 m!1077887))

(assert (=> d!262562 m!1077631))

(assert (=> b!843332 d!262562))

(declare-fun d!262564 () Bool)

(assert (=> d!262564 (= (++!2345 (++!2345 lt!319388 lt!319383) lt!319386) (++!2345 lt!319388 (++!2345 lt!319383 lt!319386)))))

(declare-fun lt!319563 () Unit!13509)

(declare-fun choose!4974 (List!9081 List!9081 List!9081) Unit!13509)

(assert (=> d!262564 (= lt!319563 (choose!4974 lt!319388 lt!319383 lt!319386))))

(assert (=> d!262564 (= (lemmaConcatAssociativity!735 lt!319388 lt!319383 lt!319386) lt!319563)))

(declare-fun bs!230139 () Bool)

(assert (= bs!230139 d!262564))

(assert (=> bs!230139 m!1077283))

(assert (=> bs!230139 m!1077285))

(assert (=> bs!230139 m!1077279))

(assert (=> bs!230139 m!1077295))

(declare-fun m!1077889 () Bool)

(assert (=> bs!230139 m!1077889))

(assert (=> bs!230139 m!1077279))

(assert (=> bs!230139 m!1077283))

(assert (=> b!843332 d!262564))

(declare-fun d!262566 () Bool)

(assert (=> d!262566 (= (list!3561 (charsOf!975 separatorToken!297)) (list!3564 (c!137333 (charsOf!975 separatorToken!297))))))

(declare-fun bs!230140 () Bool)

(assert (= bs!230140 d!262566))

(declare-fun m!1077891 () Bool)

(assert (=> bs!230140 m!1077891))

(assert (=> b!843332 d!262566))

(declare-fun e!555072 () Bool)

(declare-fun lt!319568 () List!9081)

(declare-fun b!843764 () Bool)

(assert (=> b!843764 (= e!555072 (or (not (= lt!319386 Nil!9065)) (= lt!319568 lt!319383)))))

(declare-fun b!843763 () Bool)

(declare-fun res!385702 () Bool)

(assert (=> b!843763 (=> (not res!385702) (not e!555072))))

(assert (=> b!843763 (= res!385702 (= (size!7565 lt!319568) (+ (size!7565 lt!319383) (size!7565 lt!319386))))))

(declare-fun b!843762 () Bool)

(declare-fun e!555071 () List!9081)

(assert (=> b!843762 (= e!555071 (Cons!9065 (h!14466 lt!319383) (++!2345 (t!93953 lt!319383) lt!319386)))))

(declare-fun d!262568 () Bool)

(assert (=> d!262568 e!555072))

(declare-fun res!385701 () Bool)

(assert (=> d!262568 (=> (not res!385701) (not e!555072))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1336 (List!9081) (InoxSet C!4836))

(assert (=> d!262568 (= res!385701 (= (content!1336 lt!319568) ((_ map or) (content!1336 lt!319383) (content!1336 lt!319386))))))

(assert (=> d!262568 (= lt!319568 e!555071)))

(declare-fun c!137389 () Bool)

(assert (=> d!262568 (= c!137389 ((_ is Nil!9065) lt!319383))))

(assert (=> d!262568 (= (++!2345 lt!319383 lt!319386) lt!319568)))

(declare-fun b!843761 () Bool)

(assert (=> b!843761 (= e!555071 lt!319386)))

(assert (= (and d!262568 c!137389) b!843761))

(assert (= (and d!262568 (not c!137389)) b!843762))

(assert (= (and d!262568 res!385701) b!843763))

(assert (= (and b!843763 res!385702) b!843764))

(declare-fun m!1077893 () Bool)

(assert (=> b!843763 m!1077893))

(declare-fun m!1077895 () Bool)

(assert (=> b!843763 m!1077895))

(declare-fun m!1077897 () Bool)

(assert (=> b!843763 m!1077897))

(declare-fun m!1077899 () Bool)

(assert (=> b!843762 m!1077899))

(declare-fun m!1077901 () Bool)

(assert (=> d!262568 m!1077901))

(declare-fun m!1077903 () Bool)

(assert (=> d!262568 m!1077903))

(declare-fun m!1077905 () Bool)

(assert (=> d!262568 m!1077905))

(assert (=> b!843332 d!262568))

(declare-fun e!555074 () Bool)

(declare-fun b!843772 () Bool)

(declare-fun lt!319569 () List!9081)

(assert (=> b!843772 (= e!555074 (or (not (= lt!319383 Nil!9065)) (= lt!319569 lt!319388)))))

(declare-fun b!843771 () Bool)

(declare-fun res!385706 () Bool)

(assert (=> b!843771 (=> (not res!385706) (not e!555074))))

(assert (=> b!843771 (= res!385706 (= (size!7565 lt!319569) (+ (size!7565 lt!319388) (size!7565 lt!319383))))))

(declare-fun b!843770 () Bool)

(declare-fun e!555073 () List!9081)

(assert (=> b!843770 (= e!555073 (Cons!9065 (h!14466 lt!319388) (++!2345 (t!93953 lt!319388) lt!319383)))))

(declare-fun d!262570 () Bool)

(assert (=> d!262570 e!555074))

(declare-fun res!385705 () Bool)

(assert (=> d!262570 (=> (not res!385705) (not e!555074))))

(assert (=> d!262570 (= res!385705 (= (content!1336 lt!319569) ((_ map or) (content!1336 lt!319388) (content!1336 lt!319383))))))

(assert (=> d!262570 (= lt!319569 e!555073)))

(declare-fun c!137390 () Bool)

(assert (=> d!262570 (= c!137390 ((_ is Nil!9065) lt!319388))))

(assert (=> d!262570 (= (++!2345 lt!319388 lt!319383) lt!319569)))

(declare-fun b!843769 () Bool)

(assert (=> b!843769 (= e!555073 lt!319383)))

(assert (= (and d!262570 c!137390) b!843769))

(assert (= (and d!262570 (not c!137390)) b!843770))

(assert (= (and d!262570 res!385705) b!843771))

(assert (= (and b!843771 res!385706) b!843772))

(declare-fun m!1077907 () Bool)

(assert (=> b!843771 m!1077907))

(declare-fun m!1077909 () Bool)

(assert (=> b!843771 m!1077909))

(assert (=> b!843771 m!1077895))

(declare-fun m!1077911 () Bool)

(assert (=> b!843770 m!1077911))

(declare-fun m!1077913 () Bool)

(assert (=> d!262570 m!1077913))

(declare-fun m!1077915 () Bool)

(assert (=> d!262570 m!1077915))

(assert (=> d!262570 m!1077903))

(assert (=> b!843332 d!262570))

(declare-fun b!843773 () Bool)

(declare-fun e!555075 () Bool)

(declare-fun e!555079 () Bool)

(assert (=> b!843773 (= e!555075 e!555079)))

(declare-fun res!385709 () Bool)

(assert (=> b!843773 (=> res!385709 e!555079)))

(assert (=> b!843773 (= res!385709 (not ((_ is Cons!9067) (t!93955 lt!319357))))))

(declare-fun b!843774 () Bool)

(declare-fun e!555076 () List!9081)

(assert (=> b!843774 (= e!555076 Nil!9065)))

(declare-fun b!843775 () Bool)

(declare-fun e!555080 () List!9081)

(declare-fun lt!319577 () List!9083)

(assert (=> b!843775 (= e!555080 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319577))) (printList!460 thiss!20117 (t!93955 lt!319577))))))

(declare-fun b!843776 () Bool)

(declare-fun res!385710 () Bool)

(assert (=> b!843776 (=> (not res!385710) (not e!555075))))

(declare-fun e!555078 () Bool)

(assert (=> b!843776 (= res!385710 e!555078)))

(declare-fun res!385708 () Bool)

(assert (=> b!843776 (=> res!385708 e!555078)))

(assert (=> b!843776 (= res!385708 (not ((_ is Cons!9067) (t!93955 lt!319357))))))

(declare-fun b!843778 () Bool)

(declare-fun e!555077 () List!9083)

(assert (=> b!843778 (= e!555077 Nil!9067)))

(declare-fun b!843779 () Bool)

(assert (=> b!843779 (= e!555078 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 lt!319357)))) e!555076))))

(declare-fun c!137391 () Bool)

(declare-fun lt!319575 () List!9083)

(assert (=> b!843779 (= c!137391 ((_ is Cons!9067) lt!319575))))

(assert (=> b!843779 (= lt!319575 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 lt!319357))))))

(declare-fun b!843780 () Bool)

(assert (=> b!843780 (= e!555079 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297) separatorToken!297)) e!555080))))

(declare-fun c!137393 () Bool)

(assert (=> b!843780 (= c!137393 ((_ is Cons!9067) lt!319577))))

(assert (=> b!843780 (= lt!319577 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297) separatorToken!297))))

(declare-fun b!843781 () Bool)

(assert (=> b!843781 (= e!555080 Nil!9065)))

(declare-fun b!843782 () Bool)

(assert (=> b!843782 (= e!555076 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319575))) (printList!460 thiss!20117 (t!93955 lt!319575))))))

(declare-fun d!262572 () Bool)

(declare-fun lt!319570 () List!9083)

(assert (=> d!262572 (= (printList!460 thiss!20117 lt!319570) (printWithSeparatorTokenList!18 thiss!20117 (t!93955 lt!319357) separatorToken!297))))

(assert (=> d!262572 (= lt!319570 e!555077)))

(declare-fun c!137392 () Bool)

(assert (=> d!262572 (= c!137392 ((_ is Cons!9067) (t!93955 lt!319357)))))

(assert (=> d!262572 e!555075))

(declare-fun res!385707 () Bool)

(assert (=> d!262572 (=> (not res!385707) (not e!555075))))

(assert (=> d!262572 (= res!385707 (isSeparator!1700 (rule!3123 separatorToken!297)))))

(assert (=> d!262572 (= (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) lt!319570)))

(declare-fun b!843777 () Bool)

(assert (=> b!843777 (= e!555077 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297) separatorToken!297) (h!14468 (t!93955 lt!319357))))))

(declare-fun lt!319576 () List!9081)

(assert (=> b!843777 (= lt!319576 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319357)))))))

(declare-fun lt!319571 () List!9081)

(assert (=> b!843777 (= lt!319571 (list!3561 (charsOf!975 separatorToken!297)))))

(declare-fun lt!319574 () List!9081)

(assert (=> b!843777 (= lt!319574 (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 (t!93955 lt!319357)) separatorToken!297)))))

(declare-fun lt!319573 () Unit!13509)

(assert (=> b!843777 (= lt!319573 (lemmaConcatAssociativity!735 lt!319576 lt!319571 lt!319574))))

(assert (=> b!843777 (= (++!2345 (++!2345 lt!319576 lt!319571) lt!319574) (++!2345 lt!319576 (++!2345 lt!319571 lt!319574)))))

(declare-fun lt!319572 () Unit!13509)

(assert (=> b!843777 (= lt!319572 lt!319573)))

(assert (= (and d!262572 res!385707) b!843776))

(assert (= (and b!843776 (not res!385708)) b!843779))

(assert (= (and b!843779 c!137391) b!843782))

(assert (= (and b!843779 (not c!137391)) b!843774))

(assert (= (and b!843776 res!385710) b!843773))

(assert (= (and b!843773 (not res!385709)) b!843780))

(assert (= (and b!843780 c!137393) b!843775))

(assert (= (and b!843780 (not c!137393)) b!843781))

(assert (= (and d!262572 c!137392) b!843777))

(assert (= (and d!262572 (not c!137392)) b!843778))

(declare-fun m!1077917 () Bool)

(assert (=> b!843782 m!1077917))

(assert (=> b!843782 m!1077917))

(declare-fun m!1077919 () Bool)

(assert (=> b!843782 m!1077919))

(declare-fun m!1077921 () Bool)

(assert (=> b!843782 m!1077921))

(assert (=> b!843782 m!1077919))

(assert (=> b!843782 m!1077921))

(declare-fun m!1077923 () Bool)

(assert (=> b!843782 m!1077923))

(declare-fun m!1077925 () Bool)

(assert (=> b!843775 m!1077925))

(assert (=> b!843775 m!1077925))

(declare-fun m!1077927 () Bool)

(assert (=> b!843775 m!1077927))

(declare-fun m!1077929 () Bool)

(assert (=> b!843775 m!1077929))

(assert (=> b!843775 m!1077927))

(assert (=> b!843775 m!1077929))

(declare-fun m!1077931 () Bool)

(assert (=> b!843775 m!1077931))

(declare-fun m!1077933 () Bool)

(assert (=> d!262572 m!1077933))

(declare-fun m!1077935 () Bool)

(assert (=> d!262572 m!1077935))

(assert (=> b!843777 m!1077275))

(assert (=> b!843777 m!1077277))

(declare-fun m!1077937 () Bool)

(assert (=> b!843777 m!1077937))

(assert (=> b!843777 m!1077275))

(declare-fun m!1077939 () Bool)

(assert (=> b!843777 m!1077939))

(declare-fun m!1077941 () Bool)

(assert (=> b!843777 m!1077941))

(declare-fun m!1077943 () Bool)

(assert (=> b!843777 m!1077943))

(assert (=> b!843777 m!1077941))

(declare-fun m!1077945 () Bool)

(assert (=> b!843777 m!1077945))

(declare-fun m!1077947 () Bool)

(assert (=> b!843777 m!1077947))

(declare-fun m!1077949 () Bool)

(assert (=> b!843777 m!1077949))

(assert (=> b!843777 m!1077949))

(declare-fun m!1077951 () Bool)

(assert (=> b!843777 m!1077951))

(assert (=> b!843777 m!1077937))

(declare-fun m!1077953 () Bool)

(assert (=> b!843777 m!1077953))

(declare-fun m!1077955 () Bool)

(assert (=> b!843777 m!1077955))

(assert (=> b!843777 m!1077939))

(declare-fun m!1077957 () Bool)

(assert (=> b!843777 m!1077957))

(assert (=> b!843777 m!1077949))

(assert (=> b!843777 m!1077945))

(assert (=> b!843780 m!1077949))

(assert (=> b!843780 m!1077949))

(assert (=> b!843780 m!1077945))

(assert (=> b!843780 m!1077945))

(declare-fun m!1077961 () Bool)

(assert (=> b!843780 m!1077961))

(assert (=> b!843779 m!1077949))

(assert (=> b!843779 m!1077949))

(assert (=> b!843779 m!1077945))

(assert (=> b!843779 m!1077945))

(assert (=> b!843779 m!1077947))

(assert (=> b!843779 m!1077947))

(declare-fun m!1077973 () Bool)

(assert (=> b!843779 m!1077973))

(assert (=> b!843332 d!262572))

(declare-fun e!555085 () Bool)

(declare-fun b!843791 () Bool)

(declare-fun lt!319579 () List!9081)

(assert (=> b!843791 (= e!555085 (or (not (= lt!319386 Nil!9065)) (= lt!319579 (++!2345 lt!319388 lt!319383))))))

(declare-fun b!843790 () Bool)

(declare-fun res!385715 () Bool)

(assert (=> b!843790 (=> (not res!385715) (not e!555085))))

(assert (=> b!843790 (= res!385715 (= (size!7565 lt!319579) (+ (size!7565 (++!2345 lt!319388 lt!319383)) (size!7565 lt!319386))))))

(declare-fun e!555084 () List!9081)

(declare-fun b!843789 () Bool)

(assert (=> b!843789 (= e!555084 (Cons!9065 (h!14466 (++!2345 lt!319388 lt!319383)) (++!2345 (t!93953 (++!2345 lt!319388 lt!319383)) lt!319386)))))

(declare-fun d!262574 () Bool)

(assert (=> d!262574 e!555085))

(declare-fun res!385714 () Bool)

(assert (=> d!262574 (=> (not res!385714) (not e!555085))))

(assert (=> d!262574 (= res!385714 (= (content!1336 lt!319579) ((_ map or) (content!1336 (++!2345 lt!319388 lt!319383)) (content!1336 lt!319386))))))

(assert (=> d!262574 (= lt!319579 e!555084)))

(declare-fun c!137395 () Bool)

(assert (=> d!262574 (= c!137395 ((_ is Nil!9065) (++!2345 lt!319388 lt!319383)))))

(assert (=> d!262574 (= (++!2345 (++!2345 lt!319388 lt!319383) lt!319386) lt!319579)))

(declare-fun b!843788 () Bool)

(assert (=> b!843788 (= e!555084 lt!319386)))

(assert (= (and d!262574 c!137395) b!843788))

(assert (= (and d!262574 (not c!137395)) b!843789))

(assert (= (and d!262574 res!385714) b!843790))

(assert (= (and b!843790 res!385715) b!843791))

(declare-fun m!1077981 () Bool)

(assert (=> b!843790 m!1077981))

(assert (=> b!843790 m!1077279))

(declare-fun m!1077983 () Bool)

(assert (=> b!843790 m!1077983))

(assert (=> b!843790 m!1077897))

(declare-fun m!1077985 () Bool)

(assert (=> b!843789 m!1077985))

(declare-fun m!1077987 () Bool)

(assert (=> d!262574 m!1077987))

(assert (=> d!262574 m!1077279))

(declare-fun m!1077989 () Bool)

(assert (=> d!262574 m!1077989))

(assert (=> d!262574 m!1077905))

(assert (=> b!843332 d!262574))

(declare-fun e!555087 () Bool)

(declare-fun b!843795 () Bool)

(declare-fun lt!319580 () List!9081)

(assert (=> b!843795 (= e!555087 (or (not (= (++!2345 lt!319383 lt!319386) Nil!9065)) (= lt!319580 lt!319388)))))

(declare-fun b!843794 () Bool)

(declare-fun res!385717 () Bool)

(assert (=> b!843794 (=> (not res!385717) (not e!555087))))

(assert (=> b!843794 (= res!385717 (= (size!7565 lt!319580) (+ (size!7565 lt!319388) (size!7565 (++!2345 lt!319383 lt!319386)))))))

(declare-fun b!843793 () Bool)

(declare-fun e!555086 () List!9081)

(assert (=> b!843793 (= e!555086 (Cons!9065 (h!14466 lt!319388) (++!2345 (t!93953 lt!319388) (++!2345 lt!319383 lt!319386))))))

(declare-fun d!262578 () Bool)

(assert (=> d!262578 e!555087))

(declare-fun res!385716 () Bool)

(assert (=> d!262578 (=> (not res!385716) (not e!555087))))

(assert (=> d!262578 (= res!385716 (= (content!1336 lt!319580) ((_ map or) (content!1336 lt!319388) (content!1336 (++!2345 lt!319383 lt!319386)))))))

(assert (=> d!262578 (= lt!319580 e!555086)))

(declare-fun c!137396 () Bool)

(assert (=> d!262578 (= c!137396 ((_ is Nil!9065) lt!319388))))

(assert (=> d!262578 (= (++!2345 lt!319388 (++!2345 lt!319383 lt!319386)) lt!319580)))

(declare-fun b!843792 () Bool)

(assert (=> b!843792 (= e!555086 (++!2345 lt!319383 lt!319386))))

(assert (= (and d!262578 c!137396) b!843792))

(assert (= (and d!262578 (not c!137396)) b!843793))

(assert (= (and d!262578 res!385716) b!843794))

(assert (= (and b!843794 res!385717) b!843795))

(declare-fun m!1077991 () Bool)

(assert (=> b!843794 m!1077991))

(assert (=> b!843794 m!1077909))

(assert (=> b!843794 m!1077283))

(declare-fun m!1077993 () Bool)

(assert (=> b!843794 m!1077993))

(assert (=> b!843793 m!1077283))

(declare-fun m!1077995 () Bool)

(assert (=> b!843793 m!1077995))

(declare-fun m!1077997 () Bool)

(assert (=> d!262578 m!1077997))

(assert (=> d!262578 m!1077915))

(assert (=> d!262578 m!1077283))

(declare-fun m!1077999 () Bool)

(assert (=> d!262578 m!1077999))

(assert (=> b!843332 d!262578))

(assert (=> b!843637 d!262524))

(declare-fun d!262580 () Bool)

(declare-fun res!385718 () Bool)

(declare-fun e!555089 () Bool)

(assert (=> d!262580 (=> res!385718 e!555089)))

(assert (=> d!262580 (= res!385718 (or (not ((_ is Cons!9067) (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))) (not ((_ is Cons!9067) (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))))))))

(assert (=> d!262580 (= (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))) rules!2621) e!555089)))

(declare-fun b!843796 () Bool)

(declare-fun e!555088 () Bool)

(assert (=> b!843796 (= e!555089 e!555088)))

(declare-fun res!385719 () Bool)

(assert (=> b!843796 (=> (not res!385719) (not e!555088))))

(assert (=> b!843796 (= res!385719 (separableTokensPredicate!42 thiss!20117 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362)))) (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))) rules!2621))))

(declare-fun lt!319587 () Unit!13509)

(declare-fun Unit!13523 () Unit!13509)

(assert (=> b!843796 (= lt!319587 Unit!13523)))

(assert (=> b!843796 (> (size!7566 (charsOf!975 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))))) 0)))

(declare-fun lt!319581 () Unit!13509)

(declare-fun Unit!13524 () Unit!13509)

(assert (=> b!843796 (= lt!319581 Unit!13524)))

(assert (=> b!843796 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))))))

(declare-fun lt!319583 () Unit!13509)

(declare-fun Unit!13525 () Unit!13509)

(assert (=> b!843796 (= lt!319583 Unit!13525)))

(assert (=> b!843796 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362)))))))

(declare-fun lt!319582 () Unit!13509)

(declare-fun lt!319586 () Unit!13509)

(assert (=> b!843796 (= lt!319582 lt!319586)))

(assert (=> b!843796 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))))))

(assert (=> b!843796 (= lt!319586 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))) (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362)))))))))

(declare-fun lt!319584 () Unit!13509)

(declare-fun lt!319585 () Unit!13509)

(assert (=> b!843796 (= lt!319584 lt!319585)))

(assert (=> b!843796 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362)))))))

(assert (=> b!843796 (= lt!319585 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))) (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))))))

(declare-fun b!843797 () Bool)

(assert (=> b!843797 (= e!555088 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362))))) (t!93955 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319362)) (t!93955 (t!93955 lt!319362)))))) rules!2621))))

(assert (= (and d!262580 (not res!385718)) b!843796))

(assert (= (and b!843796 res!385719) b!843797))

(declare-fun m!1078001 () Bool)

(assert (=> b!843796 m!1078001))

(declare-fun m!1078003 () Bool)

(assert (=> b!843796 m!1078003))

(declare-fun m!1078005 () Bool)

(assert (=> b!843796 m!1078005))

(declare-fun m!1078007 () Bool)

(assert (=> b!843796 m!1078007))

(assert (=> b!843796 m!1078005))

(declare-fun m!1078009 () Bool)

(assert (=> b!843796 m!1078009))

(declare-fun m!1078011 () Bool)

(assert (=> b!843796 m!1078011))

(declare-fun m!1078013 () Bool)

(assert (=> b!843796 m!1078013))

(declare-fun m!1078015 () Bool)

(assert (=> b!843797 m!1078015))

(assert (=> b!843526 d!262580))

(declare-fun d!262582 () Bool)

(declare-fun e!555092 () Bool)

(assert (=> d!262582 e!555092))

(declare-fun res!385722 () Bool)

(assert (=> d!262582 (=> (not res!385722) (not e!555092))))

(declare-fun lt!319590 () BalanceConc!6028)

(assert (=> d!262582 (= res!385722 (= (list!3562 lt!319590) lt!319362))))

(declare-fun fromList!307 (List!9083) Conc!3007)

(assert (=> d!262582 (= lt!319590 (BalanceConc!6029 (fromList!307 lt!319362)))))

(assert (=> d!262582 (= (fromListB!667 lt!319362) lt!319590)))

(declare-fun b!843800 () Bool)

(declare-fun isBalanced!816 (Conc!3007) Bool)

(assert (=> b!843800 (= e!555092 (isBalanced!816 (fromList!307 lt!319362)))))

(assert (= (and d!262582 res!385722) b!843800))

(declare-fun m!1078017 () Bool)

(assert (=> d!262582 m!1078017))

(declare-fun m!1078019 () Bool)

(assert (=> d!262582 m!1078019))

(assert (=> b!843800 m!1078019))

(assert (=> b!843800 m!1078019))

(declare-fun m!1078021 () Bool)

(assert (=> b!843800 m!1078021))

(assert (=> d!262476 d!262582))

(declare-fun e!555094 () Bool)

(declare-fun b!843804 () Bool)

(declare-fun lt!319591 () List!9081)

(assert (=> b!843804 (= e!555094 (or (not (= (printList!460 thiss!20117 (t!93955 lt!319389)) Nil!9065)) (= lt!319591 (list!3561 (charsOf!975 (h!14468 lt!319389))))))))

(declare-fun b!843803 () Bool)

(declare-fun res!385724 () Bool)

(assert (=> b!843803 (=> (not res!385724) (not e!555094))))

(assert (=> b!843803 (= res!385724 (= (size!7565 lt!319591) (+ (size!7565 (list!3561 (charsOf!975 (h!14468 lt!319389)))) (size!7565 (printList!460 thiss!20117 (t!93955 lt!319389))))))))

(declare-fun b!843802 () Bool)

(declare-fun e!555093 () List!9081)

(assert (=> b!843802 (= e!555093 (Cons!9065 (h!14466 (list!3561 (charsOf!975 (h!14468 lt!319389)))) (++!2345 (t!93953 (list!3561 (charsOf!975 (h!14468 lt!319389)))) (printList!460 thiss!20117 (t!93955 lt!319389)))))))

(declare-fun d!262584 () Bool)

(assert (=> d!262584 e!555094))

(declare-fun res!385723 () Bool)

(assert (=> d!262584 (=> (not res!385723) (not e!555094))))

(assert (=> d!262584 (= res!385723 (= (content!1336 lt!319591) ((_ map or) (content!1336 (list!3561 (charsOf!975 (h!14468 lt!319389)))) (content!1336 (printList!460 thiss!20117 (t!93955 lt!319389))))))))

(assert (=> d!262584 (= lt!319591 e!555093)))

(declare-fun c!137398 () Bool)

(assert (=> d!262584 (= c!137398 ((_ is Nil!9065) (list!3561 (charsOf!975 (h!14468 lt!319389)))))))

(assert (=> d!262584 (= (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319389))) (printList!460 thiss!20117 (t!93955 lt!319389))) lt!319591)))

(declare-fun b!843801 () Bool)

(assert (=> b!843801 (= e!555093 (printList!460 thiss!20117 (t!93955 lt!319389)))))

(assert (= (and d!262584 c!137398) b!843801))

(assert (= (and d!262584 (not c!137398)) b!843802))

(assert (= (and d!262584 res!385723) b!843803))

(assert (= (and b!843803 res!385724) b!843804))

(declare-fun m!1078023 () Bool)

(assert (=> b!843803 m!1078023))

(assert (=> b!843803 m!1077265))

(declare-fun m!1078025 () Bool)

(assert (=> b!843803 m!1078025))

(assert (=> b!843803 m!1077267))

(declare-fun m!1078027 () Bool)

(assert (=> b!843803 m!1078027))

(assert (=> b!843802 m!1077267))

(declare-fun m!1078029 () Bool)

(assert (=> b!843802 m!1078029))

(declare-fun m!1078031 () Bool)

(assert (=> d!262584 m!1078031))

(assert (=> d!262584 m!1077265))

(declare-fun m!1078033 () Bool)

(assert (=> d!262584 m!1078033))

(assert (=> d!262584 m!1077267))

(declare-fun m!1078035 () Bool)

(assert (=> d!262584 m!1078035))

(assert (=> b!843330 d!262584))

(declare-fun d!262586 () Bool)

(assert (=> d!262586 (= (list!3561 (charsOf!975 (h!14468 lt!319389))) (list!3564 (c!137333 (charsOf!975 (h!14468 lt!319389)))))))

(declare-fun bs!230141 () Bool)

(assert (= bs!230141 d!262586))

(declare-fun m!1078037 () Bool)

(assert (=> bs!230141 m!1078037))

(assert (=> b!843330 d!262586))

(declare-fun d!262588 () Bool)

(declare-fun lt!319592 () BalanceConc!6026)

(assert (=> d!262588 (= (list!3561 lt!319592) (originalCharacters!2256 (h!14468 lt!319389)))))

(assert (=> d!262588 (= lt!319592 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389)))) (value!55149 (h!14468 lt!319389))))))

(assert (=> d!262588 (= (charsOf!975 (h!14468 lt!319389)) lt!319592)))

(declare-fun b_lambda!27829 () Bool)

(assert (=> (not b_lambda!27829) (not d!262588)))

(declare-fun tb!58391 () Bool)

(declare-fun t!94024 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94024) tb!58391))

(declare-fun b!843805 () Bool)

(declare-fun e!555095 () Bool)

(declare-fun tp!265488 () Bool)

(assert (=> b!843805 (= e!555095 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389)))) (value!55149 (h!14468 lt!319389))))) tp!265488))))

(declare-fun result!67716 () Bool)

(assert (=> tb!58391 (= result!67716 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389)))) (value!55149 (h!14468 lt!319389)))) e!555095))))

(assert (= tb!58391 b!843805))

(declare-fun m!1078039 () Bool)

(assert (=> b!843805 m!1078039))

(declare-fun m!1078041 () Bool)

(assert (=> tb!58391 m!1078041))

(assert (=> d!262588 t!94024))

(declare-fun b_and!73193 () Bool)

(assert (= b_and!73183 (and (=> t!94024 result!67716) b_and!73193)))

(declare-fun tb!58393 () Bool)

(declare-fun t!94026 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94026) tb!58393))

(declare-fun result!67718 () Bool)

(assert (= result!67718 result!67716))

(assert (=> d!262588 t!94026))

(declare-fun b_and!73195 () Bool)

(assert (= b_and!73187 (and (=> t!94026 result!67718) b_and!73195)))

(declare-fun tb!58395 () Bool)

(declare-fun t!94028 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94028) tb!58395))

(declare-fun result!67720 () Bool)

(assert (= result!67720 result!67716))

(assert (=> d!262588 t!94028))

(declare-fun b_and!73197 () Bool)

(assert (= b_and!73189 (and (=> t!94028 result!67720) b_and!73197)))

(declare-fun t!94030 () Bool)

(declare-fun tb!58397 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94030) tb!58397))

(declare-fun result!67722 () Bool)

(assert (= result!67722 result!67716))

(assert (=> d!262588 t!94030))

(declare-fun b_and!73199 () Bool)

(assert (= b_and!73191 (and (=> t!94030 result!67722) b_and!73199)))

(declare-fun t!94032 () Bool)

(declare-fun tb!58399 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94032) tb!58399))

(declare-fun result!67724 () Bool)

(assert (= result!67724 result!67716))

(assert (=> d!262588 t!94032))

(declare-fun b_and!73201 () Bool)

(assert (= b_and!73185 (and (=> t!94032 result!67724) b_and!73201)))

(declare-fun m!1078043 () Bool)

(assert (=> d!262588 m!1078043))

(declare-fun m!1078045 () Bool)

(assert (=> d!262588 m!1078045))

(assert (=> b!843330 d!262588))

(declare-fun d!262590 () Bool)

(declare-fun c!137399 () Bool)

(assert (=> d!262590 (= c!137399 ((_ is Cons!9067) (t!93955 lt!319389)))))

(declare-fun e!555096 () List!9081)

(assert (=> d!262590 (= (printList!460 thiss!20117 (t!93955 lt!319389)) e!555096)))

(declare-fun b!843806 () Bool)

(assert (=> b!843806 (= e!555096 (++!2345 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319389)))) (printList!460 thiss!20117 (t!93955 (t!93955 lt!319389)))))))

(declare-fun b!843807 () Bool)

(assert (=> b!843807 (= e!555096 Nil!9065)))

(assert (= (and d!262590 c!137399) b!843806))

(assert (= (and d!262590 (not c!137399)) b!843807))

(declare-fun m!1078047 () Bool)

(assert (=> b!843806 m!1078047))

(assert (=> b!843806 m!1078047))

(declare-fun m!1078049 () Bool)

(assert (=> b!843806 m!1078049))

(declare-fun m!1078051 () Bool)

(assert (=> b!843806 m!1078051))

(assert (=> b!843806 m!1078049))

(assert (=> b!843806 m!1078051))

(declare-fun m!1078053 () Bool)

(assert (=> b!843806 m!1078053))

(assert (=> b!843330 d!262590))

(declare-fun bs!230142 () Bool)

(declare-fun d!262592 () Bool)

(assert (= bs!230142 (and d!262592 b!843281)))

(declare-fun lambda!25103 () Int)

(assert (=> bs!230142 (not (= lambda!25103 lambda!25082))))

(declare-fun bs!230143 () Bool)

(assert (= bs!230143 (and d!262592 d!262522)))

(assert (=> bs!230143 (= lambda!25103 lambda!25102)))

(declare-fun bs!230144 () Bool)

(assert (= bs!230144 (and d!262592 d!262416)))

(assert (=> bs!230144 (= lambda!25103 lambda!25088)))

(declare-fun bs!230145 () Bool)

(assert (= bs!230145 (and d!262592 d!262436)))

(assert (=> bs!230145 (= lambda!25103 lambda!25092)))

(declare-fun bs!230146 () Bool)

(assert (= bs!230146 (and d!262592 d!262456)))

(assert (=> bs!230146 (= lambda!25103 lambda!25101)))

(declare-fun b!843812 () Bool)

(declare-fun e!555101 () Bool)

(assert (=> b!843812 (= e!555101 true)))

(declare-fun b!843811 () Bool)

(declare-fun e!555100 () Bool)

(assert (=> b!843811 (= e!555100 e!555101)))

(declare-fun b!843810 () Bool)

(declare-fun e!555099 () Bool)

(assert (=> b!843810 (= e!555099 e!555100)))

(assert (=> d!262592 e!555099))

(assert (= b!843811 b!843812))

(assert (= b!843810 b!843811))

(assert (= (and d!262592 ((_ is Cons!9066) rules!2621)) b!843810))

(assert (=> b!843812 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25103))))

(assert (=> b!843812 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25103))))

(assert (=> d!262592 true))

(declare-fun lt!319593 () Bool)

(assert (=> d!262592 (= lt!319593 (forall!2121 lt!319357 lambda!25103))))

(declare-fun e!555097 () Bool)

(assert (=> d!262592 (= lt!319593 e!555097)))

(declare-fun res!385726 () Bool)

(assert (=> d!262592 (=> res!385726 e!555097)))

(assert (=> d!262592 (= res!385726 (not ((_ is Cons!9067) lt!319357)))))

(assert (=> d!262592 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262592 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 lt!319357) lt!319593)))

(declare-fun b!843808 () Bool)

(declare-fun e!555098 () Bool)

(assert (=> b!843808 (= e!555097 e!555098)))

(declare-fun res!385725 () Bool)

(assert (=> b!843808 (=> (not res!385725) (not e!555098))))

(assert (=> b!843808 (= res!385725 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319357)))))

(declare-fun b!843809 () Bool)

(assert (=> b!843809 (= e!555098 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 lt!319357)))))

(assert (= (and d!262592 (not res!385726)) b!843808))

(assert (= (and b!843808 res!385725) b!843809))

(declare-fun m!1078059 () Bool)

(assert (=> d!262592 m!1078059))

(assert (=> d!262592 m!1077187))

(declare-fun m!1078063 () Bool)

(assert (=> b!843808 m!1078063))

(declare-fun m!1078065 () Bool)

(assert (=> b!843809 m!1078065))

(assert (=> b!843639 d!262592))

(declare-fun d!262596 () Bool)

(declare-fun res!385733 () Bool)

(declare-fun e!555108 () Bool)

(assert (=> d!262596 (=> res!385733 e!555108)))

(assert (=> d!262596 (= res!385733 ((_ is Nil!9066) rules!2621))))

(assert (=> d!262596 (= (noDuplicateTag!587 thiss!20117 rules!2621 Nil!9069) e!555108)))

(declare-fun b!843819 () Bool)

(declare-fun e!555109 () Bool)

(assert (=> b!843819 (= e!555108 e!555109)))

(declare-fun res!385734 () Bool)

(assert (=> b!843819 (=> (not res!385734) (not e!555109))))

(declare-fun contains!1689 (List!9085 String!10728) Bool)

(assert (=> b!843819 (= res!385734 (not (contains!1689 Nil!9069 (tag!1962 (h!14467 rules!2621)))))))

(declare-fun b!843820 () Bool)

(assert (=> b!843820 (= e!555109 (noDuplicateTag!587 thiss!20117 (t!93954 rules!2621) (Cons!9069 (tag!1962 (h!14467 rules!2621)) Nil!9069)))))

(assert (= (and d!262596 (not res!385733)) b!843819))

(assert (= (and b!843819 res!385734) b!843820))

(declare-fun m!1078067 () Bool)

(assert (=> b!843819 m!1078067))

(declare-fun m!1078069 () Bool)

(assert (=> b!843820 m!1078069))

(assert (=> b!843537 d!262596))

(declare-fun d!262598 () Bool)

(declare-fun charsToInt!0 (List!9080) (_ BitVec 32))

(assert (=> d!262598 (= (inv!16 (value!55149 (h!14468 l!5107))) (= (charsToInt!0 (text!12809 (value!55149 (h!14468 l!5107)))) (value!55140 (value!55149 (h!14468 l!5107)))))))

(declare-fun bs!230148 () Bool)

(assert (= bs!230148 d!262598))

(declare-fun m!1078077 () Bool)

(assert (=> bs!230148 m!1078077))

(assert (=> b!843534 d!262598))

(declare-fun d!262602 () Bool)

(declare-fun lt!319600 () Bool)

(declare-fun e!555111 () Bool)

(assert (=> d!262602 (= lt!319600 e!555111)))

(declare-fun res!385738 () Bool)

(assert (=> d!262602 (=> (not res!385738) (not e!555111))))

(assert (=> d!262602 (= res!385738 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319358)))))) (list!3562 (singletonSeq!513 (h!14468 lt!319358)))))))

(declare-fun e!555112 () Bool)

(assert (=> d!262602 (= lt!319600 e!555112)))

(declare-fun res!385737 () Bool)

(assert (=> d!262602 (=> (not res!385737) (not e!555112))))

(declare-fun lt!319601 () tuple2!10336)

(assert (=> d!262602 (= res!385737 (= (size!7567 (_1!5994 lt!319601)) 1))))

(assert (=> d!262602 (= lt!319601 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319358)))))))

(assert (=> d!262602 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262602 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358)) lt!319600)))

(declare-fun b!843822 () Bool)

(declare-fun res!385736 () Bool)

(assert (=> b!843822 (=> (not res!385736) (not e!555112))))

(assert (=> b!843822 (= res!385736 (= (apply!1831 (_1!5994 lt!319601) 0) (h!14468 lt!319358)))))

(declare-fun b!843823 () Bool)

(assert (=> b!843823 (= e!555112 (isEmpty!5345 (_2!5994 lt!319601)))))

(declare-fun b!843824 () Bool)

(assert (=> b!843824 (= e!555111 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 lt!319358)))))))))

(assert (= (and d!262602 res!385737) b!843822))

(assert (= (and b!843822 res!385736) b!843823))

(assert (= (and d!262602 res!385738) b!843824))

(assert (=> d!262602 m!1077187))

(declare-fun m!1078081 () Bool)

(assert (=> d!262602 m!1078081))

(declare-fun m!1078083 () Bool)

(assert (=> d!262602 m!1078083))

(declare-fun m!1078085 () Bool)

(assert (=> d!262602 m!1078085))

(declare-fun m!1078087 () Bool)

(assert (=> d!262602 m!1078087))

(assert (=> d!262602 m!1078081))

(assert (=> d!262602 m!1078081))

(declare-fun m!1078089 () Bool)

(assert (=> d!262602 m!1078089))

(assert (=> d!262602 m!1078089))

(declare-fun m!1078091 () Bool)

(assert (=> d!262602 m!1078091))

(declare-fun m!1078093 () Bool)

(assert (=> b!843822 m!1078093))

(declare-fun m!1078095 () Bool)

(assert (=> b!843823 m!1078095))

(assert (=> b!843824 m!1078081))

(assert (=> b!843824 m!1078081))

(assert (=> b!843824 m!1078089))

(assert (=> b!843824 m!1078089))

(assert (=> b!843824 m!1078091))

(declare-fun m!1078097 () Bool)

(assert (=> b!843824 m!1078097))

(assert (=> b!843640 d!262602))

(declare-fun d!262606 () Bool)

(declare-fun c!137400 () Bool)

(assert (=> d!262606 (= c!137400 ((_ is Cons!9067) ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357))))))

(declare-fun e!555113 () List!9081)

(assert (=> d!262606 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357))) e!555113)))

(declare-fun b!843825 () Bool)

(assert (=> b!843825 (= e!555113 (++!2345 (list!3561 (charsOf!975 (h!14468 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357))))) (printList!460 thiss!20117 (t!93955 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297) (h!14468 lt!319357))))))))

(declare-fun b!843826 () Bool)

(assert (=> b!843826 (= e!555113 Nil!9065)))

(assert (= (and d!262606 c!137400) b!843825))

(assert (= (and d!262606 (not c!137400)) b!843826))

(declare-fun m!1078099 () Bool)

(assert (=> b!843825 m!1078099))

(assert (=> b!843825 m!1078099))

(declare-fun m!1078101 () Bool)

(assert (=> b!843825 m!1078101))

(declare-fun m!1078103 () Bool)

(assert (=> b!843825 m!1078103))

(assert (=> b!843825 m!1078101))

(assert (=> b!843825 m!1078103))

(declare-fun m!1078105 () Bool)

(assert (=> b!843825 m!1078105))

(assert (=> b!843334 d!262606))

(assert (=> b!843334 d!262558))

(assert (=> b!843334 d!262554))

(assert (=> b!843334 d!262572))

(declare-fun d!262608 () Bool)

(declare-fun res!385739 () Bool)

(declare-fun e!555116 () Bool)

(assert (=> d!262608 (=> res!385739 e!555116)))

(assert (=> d!262608 (= res!385739 ((_ is Nil!9067) l!5107))))

(assert (=> d!262608 (= (forall!2121 l!5107 lambda!25092) e!555116)))

(declare-fun b!843831 () Bool)

(declare-fun e!555117 () Bool)

(assert (=> b!843831 (= e!555116 e!555117)))

(declare-fun res!385740 () Bool)

(assert (=> b!843831 (=> (not res!385740) (not e!555117))))

(assert (=> b!843831 (= res!385740 (dynLambda!4195 lambda!25092 (h!14468 l!5107)))))

(declare-fun b!843832 () Bool)

(assert (=> b!843832 (= e!555117 (forall!2121 (t!93955 l!5107) lambda!25092))))

(assert (= (and d!262608 (not res!385739)) b!843831))

(assert (= (and b!843831 res!385740) b!843832))

(declare-fun b_lambda!27831 () Bool)

(assert (=> (not b_lambda!27831) (not b!843831)))

(declare-fun m!1078107 () Bool)

(assert (=> b!843831 m!1078107))

(declare-fun m!1078109 () Bool)

(assert (=> b!843832 m!1078109))

(assert (=> d!262436 d!262608))

(assert (=> d!262436 d!262414))

(declare-fun b!843836 () Bool)

(declare-fun e!555119 () Bool)

(declare-fun lt!319602 () List!9081)

(assert (=> b!843836 (= e!555119 (or (not (= (printList!460 thiss!20117 (t!93955 lt!319426)) Nil!9065)) (= lt!319602 (list!3561 (charsOf!975 (h!14468 lt!319426))))))))

(declare-fun b!843835 () Bool)

(declare-fun res!385742 () Bool)

(assert (=> b!843835 (=> (not res!385742) (not e!555119))))

(assert (=> b!843835 (= res!385742 (= (size!7565 lt!319602) (+ (size!7565 (list!3561 (charsOf!975 (h!14468 lt!319426)))) (size!7565 (printList!460 thiss!20117 (t!93955 lt!319426))))))))

(declare-fun b!843834 () Bool)

(declare-fun e!555118 () List!9081)

(assert (=> b!843834 (= e!555118 (Cons!9065 (h!14466 (list!3561 (charsOf!975 (h!14468 lt!319426)))) (++!2345 (t!93953 (list!3561 (charsOf!975 (h!14468 lt!319426)))) (printList!460 thiss!20117 (t!93955 lt!319426)))))))

(declare-fun d!262610 () Bool)

(assert (=> d!262610 e!555119))

(declare-fun res!385741 () Bool)

(assert (=> d!262610 (=> (not res!385741) (not e!555119))))

(assert (=> d!262610 (= res!385741 (= (content!1336 lt!319602) ((_ map or) (content!1336 (list!3561 (charsOf!975 (h!14468 lt!319426)))) (content!1336 (printList!460 thiss!20117 (t!93955 lt!319426))))))))

(assert (=> d!262610 (= lt!319602 e!555118)))

(declare-fun c!137403 () Bool)

(assert (=> d!262610 (= c!137403 ((_ is Nil!9065) (list!3561 (charsOf!975 (h!14468 lt!319426)))))))

(assert (=> d!262610 (= (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319426))) (printList!460 thiss!20117 (t!93955 lt!319426))) lt!319602)))

(declare-fun b!843833 () Bool)

(assert (=> b!843833 (= e!555118 (printList!460 thiss!20117 (t!93955 lt!319426)))))

(assert (= (and d!262610 c!137403) b!843833))

(assert (= (and d!262610 (not c!137403)) b!843834))

(assert (= (and d!262610 res!385741) b!843835))

(assert (= (and b!843835 res!385742) b!843836))

(declare-fun m!1078111 () Bool)

(assert (=> b!843835 m!1078111))

(assert (=> b!843835 m!1077373))

(declare-fun m!1078113 () Bool)

(assert (=> b!843835 m!1078113))

(assert (=> b!843835 m!1077375))

(declare-fun m!1078115 () Bool)

(assert (=> b!843835 m!1078115))

(assert (=> b!843834 m!1077375))

(declare-fun m!1078117 () Bool)

(assert (=> b!843834 m!1078117))

(declare-fun m!1078119 () Bool)

(assert (=> d!262610 m!1078119))

(assert (=> d!262610 m!1077373))

(declare-fun m!1078123 () Bool)

(assert (=> d!262610 m!1078123))

(assert (=> d!262610 m!1077375))

(declare-fun m!1078125 () Bool)

(assert (=> d!262610 m!1078125))

(assert (=> b!843411 d!262610))

(declare-fun d!262612 () Bool)

(assert (=> d!262612 (= (list!3561 (charsOf!975 (h!14468 lt!319426))) (list!3564 (c!137333 (charsOf!975 (h!14468 lt!319426)))))))

(declare-fun bs!230150 () Bool)

(assert (= bs!230150 d!262612))

(declare-fun m!1078131 () Bool)

(assert (=> bs!230150 m!1078131))

(assert (=> b!843411 d!262612))

(declare-fun d!262614 () Bool)

(declare-fun lt!319603 () BalanceConc!6026)

(assert (=> d!262614 (= (list!3561 lt!319603) (originalCharacters!2256 (h!14468 lt!319426)))))

(assert (=> d!262614 (= lt!319603 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426)))) (value!55149 (h!14468 lt!319426))))))

(assert (=> d!262614 (= (charsOf!975 (h!14468 lt!319426)) lt!319603)))

(declare-fun b_lambda!27833 () Bool)

(assert (=> (not b_lambda!27833) (not d!262614)))

(declare-fun tb!58401 () Bool)

(declare-fun t!94035 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94035) tb!58401))

(declare-fun b!843839 () Bool)

(declare-fun e!555121 () Bool)

(declare-fun tp!265489 () Bool)

(assert (=> b!843839 (= e!555121 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426)))) (value!55149 (h!14468 lt!319426))))) tp!265489))))

(declare-fun result!67726 () Bool)

(assert (=> tb!58401 (= result!67726 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426)))) (value!55149 (h!14468 lt!319426)))) e!555121))))

(assert (= tb!58401 b!843839))

(declare-fun m!1078135 () Bool)

(assert (=> b!843839 m!1078135))

(declare-fun m!1078137 () Bool)

(assert (=> tb!58401 m!1078137))

(assert (=> d!262614 t!94035))

(declare-fun b_and!73203 () Bool)

(assert (= b_and!73199 (and (=> t!94035 result!67726) b_and!73203)))

(declare-fun t!94038 () Bool)

(declare-fun tb!58403 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94038) tb!58403))

(declare-fun result!67728 () Bool)

(assert (= result!67728 result!67726))

(assert (=> d!262614 t!94038))

(declare-fun b_and!73205 () Bool)

(assert (= b_and!73197 (and (=> t!94038 result!67728) b_and!73205)))

(declare-fun tb!58405 () Bool)

(declare-fun t!94040 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94040) tb!58405))

(declare-fun result!67730 () Bool)

(assert (= result!67730 result!67726))

(assert (=> d!262614 t!94040))

(declare-fun b_and!73207 () Bool)

(assert (= b_and!73201 (and (=> t!94040 result!67730) b_and!73207)))

(declare-fun tb!58407 () Bool)

(declare-fun t!94042 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94042) tb!58407))

(declare-fun result!67732 () Bool)

(assert (= result!67732 result!67726))

(assert (=> d!262614 t!94042))

(declare-fun b_and!73209 () Bool)

(assert (= b_and!73195 (and (=> t!94042 result!67732) b_and!73209)))

(declare-fun t!94044 () Bool)

(declare-fun tb!58409 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94044) tb!58409))

(declare-fun result!67734 () Bool)

(assert (= result!67734 result!67726))

(assert (=> d!262614 t!94044))

(declare-fun b_and!73211 () Bool)

(assert (= b_and!73193 (and (=> t!94044 result!67734) b_and!73211)))

(declare-fun m!1078139 () Bool)

(assert (=> d!262614 m!1078139))

(declare-fun m!1078141 () Bool)

(assert (=> d!262614 m!1078141))

(assert (=> b!843411 d!262614))

(declare-fun d!262620 () Bool)

(declare-fun c!137408 () Bool)

(assert (=> d!262620 (= c!137408 ((_ is Cons!9067) (t!93955 lt!319426)))))

(declare-fun e!555128 () List!9081)

(assert (=> d!262620 (= (printList!460 thiss!20117 (t!93955 lt!319426)) e!555128)))

(declare-fun b!843850 () Bool)

(assert (=> b!843850 (= e!555128 (++!2345 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319426)))) (printList!460 thiss!20117 (t!93955 (t!93955 lt!319426)))))))

(declare-fun b!843851 () Bool)

(assert (=> b!843851 (= e!555128 Nil!9065)))

(assert (= (and d!262620 c!137408) b!843850))

(assert (= (and d!262620 (not c!137408)) b!843851))

(declare-fun m!1078143 () Bool)

(assert (=> b!843850 m!1078143))

(assert (=> b!843850 m!1078143))

(declare-fun m!1078145 () Bool)

(assert (=> b!843850 m!1078145))

(declare-fun m!1078147 () Bool)

(assert (=> b!843850 m!1078147))

(assert (=> b!843850 m!1078145))

(assert (=> b!843850 m!1078147))

(declare-fun m!1078149 () Bool)

(assert (=> b!843850 m!1078149))

(assert (=> b!843411 d!262620))

(declare-fun d!262622 () Bool)

(declare-fun res!385747 () Bool)

(declare-fun e!555129 () Bool)

(assert (=> d!262622 (=> res!385747 e!555129)))

(assert (=> d!262622 (= res!385747 ((_ is Nil!9067) lt!319362))))

(assert (=> d!262622 (= (forall!2121 lt!319362 lambda!25088) e!555129)))

(declare-fun b!843852 () Bool)

(declare-fun e!555130 () Bool)

(assert (=> b!843852 (= e!555129 e!555130)))

(declare-fun res!385748 () Bool)

(assert (=> b!843852 (=> (not res!385748) (not e!555130))))

(assert (=> b!843852 (= res!385748 (dynLambda!4195 lambda!25088 (h!14468 lt!319362)))))

(declare-fun b!843853 () Bool)

(assert (=> b!843853 (= e!555130 (forall!2121 (t!93955 lt!319362) lambda!25088))))

(assert (= (and d!262622 (not res!385747)) b!843852))

(assert (= (and b!843852 res!385748) b!843853))

(declare-fun b_lambda!27835 () Bool)

(assert (=> (not b_lambda!27835) (not b!843852)))

(declare-fun m!1078151 () Bool)

(assert (=> b!843852 m!1078151))

(declare-fun m!1078153 () Bool)

(assert (=> b!843853 m!1078153))

(assert (=> d!262416 d!262622))

(assert (=> d!262416 d!262414))

(declare-fun d!262624 () Bool)

(declare-fun charsToBigInt!0 (List!9080 Int) Int)

(assert (=> d!262624 (= (inv!15 (value!55149 (h!14468 l!5107))) (= (charsToBigInt!0 (text!12811 (value!55149 (h!14468 l!5107))) 0) (value!55144 (value!55149 (h!14468 l!5107)))))))

(declare-fun bs!230151 () Bool)

(assert (= bs!230151 d!262624))

(declare-fun m!1078199 () Bool)

(assert (=> bs!230151 m!1078199))

(assert (=> b!843532 d!262624))

(declare-fun d!262626 () Bool)

(assert (=> d!262626 true))

(declare-fun lambda!25106 () Int)

(declare-fun order!5773 () Int)

(declare-fun dynLambda!4197 (Int Int) Int)

(assert (=> d!262626 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (dynLambda!4197 order!5773 lambda!25106))))

(declare-fun Forall2!312 (Int) Bool)

(assert (=> d!262626 (= (equivClasses!622 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (Forall2!312 lambda!25106))))

(declare-fun bs!230152 () Bool)

(assert (= bs!230152 d!262626))

(declare-fun m!1078203 () Bool)

(assert (=> bs!230152 m!1078203))

(assert (=> b!843660 d!262626))

(declare-fun d!262630 () Bool)

(declare-fun lt!319618 () Int)

(assert (=> d!262630 (>= lt!319618 0)))

(declare-fun e!555143 () Int)

(assert (=> d!262630 (= lt!319618 e!555143)))

(declare-fun c!137415 () Bool)

(assert (=> d!262630 (= c!137415 ((_ is Nil!9065) (originalCharacters!2256 (h!14468 l!5107))))))

(assert (=> d!262630 (= (size!7565 (originalCharacters!2256 (h!14468 l!5107))) lt!319618)))

(declare-fun b!843878 () Bool)

(assert (=> b!843878 (= e!555143 0)))

(declare-fun b!843879 () Bool)

(assert (=> b!843879 (= e!555143 (+ 1 (size!7565 (t!93953 (originalCharacters!2256 (h!14468 l!5107))))))))

(assert (= (and d!262630 c!137415) b!843878))

(assert (= (and d!262630 (not c!137415)) b!843879))

(declare-fun m!1078235 () Bool)

(assert (=> b!843879 m!1078235))

(assert (=> b!843454 d!262630))

(assert (=> b!843479 d!262602))

(declare-fun d!262638 () Bool)

(assert (=> d!262638 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319358)))))

(declare-fun lt!319643 () Unit!13509)

(declare-fun choose!4976 (LexerInterface!1502 List!9082 List!9083 Token!3066) Unit!13509)

(assert (=> d!262638 (= lt!319643 (choose!4976 thiss!20117 rules!2621 lt!319358 (h!14468 (t!93955 lt!319358))))))

(assert (=> d!262638 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262638 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319358 (h!14468 (t!93955 lt!319358))) lt!319643)))

(declare-fun bs!230158 () Bool)

(assert (= bs!230158 d!262638))

(assert (=> bs!230158 m!1077515))

(declare-fun m!1078381 () Bool)

(assert (=> bs!230158 m!1078381))

(assert (=> bs!230158 m!1077187))

(assert (=> b!843479 d!262638))

(declare-fun d!262684 () Bool)

(declare-fun lt!319646 () Int)

(assert (=> d!262684 (= lt!319646 (size!7565 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319358))))))))

(declare-fun size!7569 (Conc!3006) Int)

(assert (=> d!262684 (= lt!319646 (size!7569 (c!137333 (charsOf!975 (h!14468 (t!93955 lt!319358))))))))

(assert (=> d!262684 (= (size!7566 (charsOf!975 (h!14468 (t!93955 lt!319358)))) lt!319646)))

(declare-fun bs!230159 () Bool)

(assert (= bs!230159 d!262684))

(assert (=> bs!230159 m!1077507))

(declare-fun m!1078383 () Bool)

(assert (=> bs!230159 m!1078383))

(assert (=> bs!230159 m!1078383))

(declare-fun m!1078385 () Bool)

(assert (=> bs!230159 m!1078385))

(declare-fun m!1078387 () Bool)

(assert (=> bs!230159 m!1078387))

(assert (=> b!843479 d!262684))

(declare-fun d!262686 () Bool)

(assert (=> d!262686 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358))))

(declare-fun lt!319647 () Unit!13509)

(assert (=> d!262686 (= lt!319647 (choose!4976 thiss!20117 rules!2621 lt!319358 (h!14468 lt!319358)))))

(assert (=> d!262686 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262686 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319358 (h!14468 lt!319358)) lt!319647)))

(declare-fun bs!230160 () Bool)

(assert (= bs!230160 d!262686))

(assert (=> bs!230160 m!1077513))

(declare-fun m!1078389 () Bool)

(assert (=> bs!230160 m!1078389))

(assert (=> bs!230160 m!1077187))

(assert (=> b!843479 d!262686))

(declare-fun d!262688 () Bool)

(declare-fun lt!319648 () BalanceConc!6026)

(assert (=> d!262688 (= (list!3561 lt!319648) (originalCharacters!2256 (h!14468 (t!93955 lt!319358))))))

(assert (=> d!262688 (= lt!319648 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358))))) (value!55149 (h!14468 (t!93955 lt!319358)))))))

(assert (=> d!262688 (= (charsOf!975 (h!14468 (t!93955 lt!319358))) lt!319648)))

(declare-fun b_lambda!27845 () Bool)

(assert (=> (not b_lambda!27845) (not d!262688)))

(declare-fun t!94067 () Bool)

(declare-fun tb!58431 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94067) tb!58431))

(declare-fun b!843925 () Bool)

(declare-fun e!555173 () Bool)

(declare-fun tp!265492 () Bool)

(assert (=> b!843925 (= e!555173 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358))))) (value!55149 (h!14468 (t!93955 lt!319358)))))) tp!265492))))

(declare-fun result!67756 () Bool)

(assert (=> tb!58431 (= result!67756 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358))))) (value!55149 (h!14468 (t!93955 lt!319358))))) e!555173))))

(assert (= tb!58431 b!843925))

(declare-fun m!1078391 () Bool)

(assert (=> b!843925 m!1078391))

(declare-fun m!1078393 () Bool)

(assert (=> tb!58431 m!1078393))

(assert (=> d!262688 t!94067))

(declare-fun b_and!73243 () Bool)

(assert (= b_and!73205 (and (=> t!94067 result!67756) b_and!73243)))

(declare-fun t!94069 () Bool)

(declare-fun tb!58433 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94069) tb!58433))

(declare-fun result!67758 () Bool)

(assert (= result!67758 result!67756))

(assert (=> d!262688 t!94069))

(declare-fun b_and!73245 () Bool)

(assert (= b_and!73203 (and (=> t!94069 result!67758) b_and!73245)))

(declare-fun t!94071 () Bool)

(declare-fun tb!58435 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94071) tb!58435))

(declare-fun result!67760 () Bool)

(assert (= result!67760 result!67756))

(assert (=> d!262688 t!94071))

(declare-fun b_and!73247 () Bool)

(assert (= b_and!73209 (and (=> t!94071 result!67760) b_and!73247)))

(declare-fun tb!58437 () Bool)

(declare-fun t!94073 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94073) tb!58437))

(declare-fun result!67762 () Bool)

(assert (= result!67762 result!67756))

(assert (=> d!262688 t!94073))

(declare-fun b_and!73249 () Bool)

(assert (= b_and!73211 (and (=> t!94073 result!67762) b_and!73249)))

(declare-fun tb!58439 () Bool)

(declare-fun t!94075 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94075) tb!58439))

(declare-fun result!67764 () Bool)

(assert (= result!67764 result!67756))

(assert (=> d!262688 t!94075))

(declare-fun b_and!73251 () Bool)

(assert (= b_and!73207 (and (=> t!94075 result!67764) b_and!73251)))

(declare-fun m!1078395 () Bool)

(assert (=> d!262688 m!1078395))

(declare-fun m!1078397 () Bool)

(assert (=> d!262688 m!1078397))

(assert (=> b!843479 d!262688))

(declare-fun d!262690 () Bool)

(assert (=> d!262690 (= (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319358) (h!14468 (t!93955 lt!319358)) rules!2621) (not (prefixMatchZipperSequence!13 (rulesRegex!10 thiss!20117 rules!2621) (++!2346 (charsOf!975 (h!14468 lt!319358)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319358))) 0))))))))

(declare-fun bs!230161 () Bool)

(assert (= bs!230161 d!262690))

(declare-fun m!1078399 () Bool)

(assert (=> bs!230161 m!1078399))

(declare-fun m!1078401 () Bool)

(assert (=> bs!230161 m!1078401))

(declare-fun m!1078403 () Bool)

(assert (=> bs!230161 m!1078403))

(assert (=> bs!230161 m!1078399))

(declare-fun m!1078405 () Bool)

(assert (=> bs!230161 m!1078405))

(assert (=> bs!230161 m!1078401))

(assert (=> bs!230161 m!1077735))

(assert (=> bs!230161 m!1077735))

(assert (=> bs!230161 m!1078403))

(declare-fun m!1078407 () Bool)

(assert (=> bs!230161 m!1078407))

(assert (=> bs!230161 m!1077507))

(assert (=> bs!230161 m!1077507))

(assert (=> bs!230161 m!1078405))

(assert (=> b!843479 d!262690))

(declare-fun d!262692 () Bool)

(declare-fun lt!319649 () Bool)

(declare-fun e!555174 () Bool)

(assert (=> d!262692 (= lt!319649 e!555174)))

(declare-fun res!385780 () Bool)

(assert (=> d!262692 (=> (not res!385780) (not e!555174))))

(assert (=> d!262692 (= res!385780 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319358))))))) (list!3562 (singletonSeq!513 (h!14468 (t!93955 lt!319358))))))))

(declare-fun e!555175 () Bool)

(assert (=> d!262692 (= lt!319649 e!555175)))

(declare-fun res!385779 () Bool)

(assert (=> d!262692 (=> (not res!385779) (not e!555175))))

(declare-fun lt!319650 () tuple2!10336)

(assert (=> d!262692 (= res!385779 (= (size!7567 (_1!5994 lt!319650)) 1))))

(assert (=> d!262692 (= lt!319650 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319358))))))))

(assert (=> d!262692 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262692 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319358))) lt!319649)))

(declare-fun b!843926 () Bool)

(declare-fun res!385778 () Bool)

(assert (=> b!843926 (=> (not res!385778) (not e!555175))))

(assert (=> b!843926 (= res!385778 (= (apply!1831 (_1!5994 lt!319650) 0) (h!14468 (t!93955 lt!319358))))))

(declare-fun b!843927 () Bool)

(assert (=> b!843927 (= e!555175 (isEmpty!5345 (_2!5994 lt!319650)))))

(declare-fun b!843928 () Bool)

(assert (=> b!843928 (= e!555174 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319358))))))))))

(assert (= (and d!262692 res!385779) b!843926))

(assert (= (and b!843926 res!385778) b!843927))

(assert (= (and d!262692 res!385780) b!843928))

(assert (=> d!262692 m!1077187))

(declare-fun m!1078409 () Bool)

(assert (=> d!262692 m!1078409))

(declare-fun m!1078411 () Bool)

(assert (=> d!262692 m!1078411))

(declare-fun m!1078413 () Bool)

(assert (=> d!262692 m!1078413))

(declare-fun m!1078415 () Bool)

(assert (=> d!262692 m!1078415))

(assert (=> d!262692 m!1078409))

(assert (=> d!262692 m!1078409))

(declare-fun m!1078417 () Bool)

(assert (=> d!262692 m!1078417))

(assert (=> d!262692 m!1078417))

(declare-fun m!1078419 () Bool)

(assert (=> d!262692 m!1078419))

(declare-fun m!1078421 () Bool)

(assert (=> b!843926 m!1078421))

(declare-fun m!1078423 () Bool)

(assert (=> b!843927 m!1078423))

(assert (=> b!843928 m!1078409))

(assert (=> b!843928 m!1078409))

(assert (=> b!843928 m!1078417))

(assert (=> b!843928 m!1078417))

(assert (=> b!843928 m!1078419))

(declare-fun m!1078425 () Bool)

(assert (=> b!843928 m!1078425))

(assert (=> b!843479 d!262692))

(declare-fun bs!230162 () Bool)

(declare-fun d!262694 () Bool)

(assert (= bs!230162 (and d!262694 b!843281)))

(declare-fun lambda!25107 () Int)

(assert (=> bs!230162 (not (= lambda!25107 lambda!25082))))

(declare-fun bs!230163 () Bool)

(assert (= bs!230163 (and d!262694 d!262522)))

(assert (=> bs!230163 (= lambda!25107 lambda!25102)))

(declare-fun bs!230164 () Bool)

(assert (= bs!230164 (and d!262694 d!262592)))

(assert (=> bs!230164 (= lambda!25107 lambda!25103)))

(declare-fun bs!230165 () Bool)

(assert (= bs!230165 (and d!262694 d!262416)))

(assert (=> bs!230165 (= lambda!25107 lambda!25088)))

(declare-fun bs!230166 () Bool)

(assert (= bs!230166 (and d!262694 d!262436)))

(assert (=> bs!230166 (= lambda!25107 lambda!25092)))

(declare-fun bs!230167 () Bool)

(assert (= bs!230167 (and d!262694 d!262456)))

(assert (=> bs!230167 (= lambda!25107 lambda!25101)))

(declare-fun b!843933 () Bool)

(declare-fun e!555180 () Bool)

(assert (=> b!843933 (= e!555180 true)))

(declare-fun b!843932 () Bool)

(declare-fun e!555179 () Bool)

(assert (=> b!843932 (= e!555179 e!555180)))

(declare-fun b!843931 () Bool)

(declare-fun e!555178 () Bool)

(assert (=> b!843931 (= e!555178 e!555179)))

(assert (=> d!262694 e!555178))

(assert (= b!843932 b!843933))

(assert (= b!843931 b!843932))

(assert (= (and d!262694 ((_ is Cons!9066) rules!2621)) b!843931))

(assert (=> b!843933 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25107))))

(assert (=> b!843933 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25107))))

(assert (=> d!262694 true))

(declare-fun lt!319651 () Bool)

(assert (=> d!262694 (= lt!319651 (forall!2121 (t!93955 l!5107) lambda!25107))))

(declare-fun e!555176 () Bool)

(assert (=> d!262694 (= lt!319651 e!555176)))

(declare-fun res!385782 () Bool)

(assert (=> d!262694 (=> res!385782 e!555176)))

(assert (=> d!262694 (= res!385782 (not ((_ is Cons!9067) (t!93955 l!5107))))))

(assert (=> d!262694 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262694 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 l!5107)) lt!319651)))

(declare-fun b!843929 () Bool)

(declare-fun e!555177 () Bool)

(assert (=> b!843929 (= e!555176 e!555177)))

(declare-fun res!385781 () Bool)

(assert (=> b!843929 (=> (not res!385781) (not e!555177))))

(assert (=> b!843929 (= res!385781 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 l!5107))))))

(declare-fun b!843930 () Bool)

(assert (=> b!843930 (= e!555177 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (t!93955 l!5107))))))

(assert (= (and d!262694 (not res!385782)) b!843929))

(assert (= (and b!843929 res!385781) b!843930))

(declare-fun m!1078427 () Bool)

(assert (=> d!262694 m!1078427))

(assert (=> d!262694 m!1077187))

(declare-fun m!1078429 () Bool)

(assert (=> b!843929 m!1078429))

(declare-fun m!1078431 () Bool)

(assert (=> b!843930 m!1078431))

(assert (=> b!843439 d!262694))

(declare-fun d!262696 () Bool)

(assert (=> d!262696 true))

(declare-fun lambda!25110 () Int)

(declare-fun order!5775 () Int)

(declare-fun dynLambda!4199 (Int Int) Int)

(assert (=> d!262696 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (dynLambda!4199 order!5775 lambda!25110))))

(assert (=> d!262696 true))

(assert (=> d!262696 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (dynLambda!4199 order!5775 lambda!25110))))

(declare-fun Forall!403 (Int) Bool)

(assert (=> d!262696 (= (semiInverseModEq!655 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (Forall!403 lambda!25110))))

(declare-fun bs!230168 () Bool)

(assert (= bs!230168 d!262696))

(declare-fun m!1078433 () Bool)

(assert (=> bs!230168 m!1078433))

(assert (=> d!262446 d!262696))

(declare-fun d!262698 () Bool)

(assert (=> d!262698 (= (inv!11536 (tag!1962 (rule!3123 (h!14468 (t!93955 l!5107))))) (= (mod (str.len (value!55148 (tag!1962 (rule!3123 (h!14468 (t!93955 l!5107)))))) 2) 0))))

(assert (=> b!843692 d!262698))

(declare-fun d!262700 () Bool)

(declare-fun res!385783 () Bool)

(declare-fun e!555181 () Bool)

(assert (=> d!262700 (=> (not res!385783) (not e!555181))))

(assert (=> d!262700 (= res!385783 (semiInverseModEq!655 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))))))

(assert (=> d!262700 (= (inv!11540 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) e!555181)))

(declare-fun b!843938 () Bool)

(assert (=> b!843938 (= e!555181 (equivClasses!622 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))))))

(assert (= (and d!262700 res!385783) b!843938))

(declare-fun m!1078435 () Bool)

(assert (=> d!262700 m!1078435))

(declare-fun m!1078437 () Bool)

(assert (=> b!843938 m!1078437))

(assert (=> b!843692 d!262700))

(declare-fun d!262702 () Bool)

(assert (=> d!262702 (= (isEmpty!5344 (originalCharacters!2256 (h!14468 l!5107))) ((_ is Nil!9065) (originalCharacters!2256 (h!14468 l!5107))))))

(assert (=> d!262438 d!262702))

(declare-fun d!262704 () Bool)

(declare-fun res!385784 () Bool)

(declare-fun e!555182 () Bool)

(assert (=> d!262704 (=> res!385784 e!555182)))

(assert (=> d!262704 (= res!385784 ((_ is Nil!9067) (list!3562 (seqFromList!1520 lt!319362))))))

(assert (=> d!262704 (= (forall!2121 (list!3562 (seqFromList!1520 lt!319362)) lambda!25101) e!555182)))

(declare-fun b!843939 () Bool)

(declare-fun e!555183 () Bool)

(assert (=> b!843939 (= e!555182 e!555183)))

(declare-fun res!385785 () Bool)

(assert (=> b!843939 (=> (not res!385785) (not e!555183))))

(assert (=> b!843939 (= res!385785 (dynLambda!4195 lambda!25101 (h!14468 (list!3562 (seqFromList!1520 lt!319362)))))))

(declare-fun b!843940 () Bool)

(assert (=> b!843940 (= e!555183 (forall!2121 (t!93955 (list!3562 (seqFromList!1520 lt!319362))) lambda!25101))))

(assert (= (and d!262704 (not res!385784)) b!843939))

(assert (= (and b!843939 res!385785) b!843940))

(declare-fun b_lambda!27847 () Bool)

(assert (=> (not b_lambda!27847) (not b!843939)))

(declare-fun m!1078439 () Bool)

(assert (=> b!843939 m!1078439))

(declare-fun m!1078441 () Bool)

(assert (=> b!843940 m!1078441))

(assert (=> d!262456 d!262704))

(declare-fun d!262706 () Bool)

(declare-fun list!3566 (Conc!3007) List!9083)

(assert (=> d!262706 (= (list!3562 (seqFromList!1520 lt!319362)) (list!3566 (c!137334 (seqFromList!1520 lt!319362))))))

(declare-fun bs!230169 () Bool)

(assert (= bs!230169 d!262706))

(declare-fun m!1078443 () Bool)

(assert (=> bs!230169 m!1078443))

(assert (=> d!262456 d!262706))

(declare-fun d!262708 () Bool)

(declare-fun lt!319654 () Bool)

(assert (=> d!262708 (= lt!319654 (forall!2121 (list!3562 (seqFromList!1520 lt!319362)) lambda!25101))))

(declare-fun forall!2125 (Conc!3007 Int) Bool)

(assert (=> d!262708 (= lt!319654 (forall!2125 (c!137334 (seqFromList!1520 lt!319362)) lambda!25101))))

(assert (=> d!262708 (= (forall!2123 (seqFromList!1520 lt!319362) lambda!25101) lt!319654)))

(declare-fun bs!230170 () Bool)

(assert (= bs!230170 d!262708))

(assert (=> bs!230170 m!1077201))

(assert (=> bs!230170 m!1077603))

(assert (=> bs!230170 m!1077603))

(assert (=> bs!230170 m!1077605))

(declare-fun m!1078445 () Bool)

(assert (=> bs!230170 m!1078445))

(assert (=> d!262456 d!262708))

(assert (=> d!262456 d!262414))

(declare-fun d!262710 () Bool)

(declare-fun res!385786 () Bool)

(declare-fun e!555184 () Bool)

(assert (=> d!262710 (=> (not res!385786) (not e!555184))))

(assert (=> d!262710 (= res!385786 (not (isEmpty!5344 (originalCharacters!2256 (h!14468 (t!93955 l!5107))))))))

(assert (=> d!262710 (= (inv!11539 (h!14468 (t!93955 l!5107))) e!555184)))

(declare-fun b!843941 () Bool)

(declare-fun res!385787 () Bool)

(assert (=> b!843941 (=> (not res!385787) (not e!555184))))

(assert (=> b!843941 (= res!385787 (= (originalCharacters!2256 (h!14468 (t!93955 l!5107))) (list!3561 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (value!55149 (h!14468 (t!93955 l!5107)))))))))

(declare-fun b!843942 () Bool)

(assert (=> b!843942 (= e!555184 (= (size!7561 (h!14468 (t!93955 l!5107))) (size!7565 (originalCharacters!2256 (h!14468 (t!93955 l!5107))))))))

(assert (= (and d!262710 res!385786) b!843941))

(assert (= (and b!843941 res!385787) b!843942))

(declare-fun b_lambda!27849 () Bool)

(assert (=> (not b_lambda!27849) (not b!843941)))

(declare-fun t!94077 () Bool)

(declare-fun tb!58441 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94077) tb!58441))

(declare-fun b!843943 () Bool)

(declare-fun e!555185 () Bool)

(declare-fun tp!265493 () Bool)

(assert (=> b!843943 (= e!555185 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (value!55149 (h!14468 (t!93955 l!5107)))))) tp!265493))))

(declare-fun result!67766 () Bool)

(assert (=> tb!58441 (= result!67766 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (value!55149 (h!14468 (t!93955 l!5107))))) e!555185))))

(assert (= tb!58441 b!843943))

(declare-fun m!1078447 () Bool)

(assert (=> b!843943 m!1078447))

(declare-fun m!1078449 () Bool)

(assert (=> tb!58441 m!1078449))

(assert (=> b!843941 t!94077))

(declare-fun b_and!73253 () Bool)

(assert (= b_and!73243 (and (=> t!94077 result!67766) b_and!73253)))

(declare-fun tb!58443 () Bool)

(declare-fun t!94079 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94079) tb!58443))

(declare-fun result!67768 () Bool)

(assert (= result!67768 result!67766))

(assert (=> b!843941 t!94079))

(declare-fun b_and!73255 () Bool)

(assert (= b_and!73245 (and (=> t!94079 result!67768) b_and!73255)))

(declare-fun t!94081 () Bool)

(declare-fun tb!58445 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94081) tb!58445))

(declare-fun result!67770 () Bool)

(assert (= result!67770 result!67766))

(assert (=> b!843941 t!94081))

(declare-fun b_and!73257 () Bool)

(assert (= b_and!73251 (and (=> t!94081 result!67770) b_and!73257)))

(declare-fun t!94083 () Bool)

(declare-fun tb!58447 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94083) tb!58447))

(declare-fun result!67772 () Bool)

(assert (= result!67772 result!67766))

(assert (=> b!843941 t!94083))

(declare-fun b_and!73259 () Bool)

(assert (= b_and!73247 (and (=> t!94083 result!67772) b_and!73259)))

(declare-fun tb!58449 () Bool)

(declare-fun t!94085 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94085) tb!58449))

(declare-fun result!67774 () Bool)

(assert (= result!67774 result!67766))

(assert (=> b!843941 t!94085))

(declare-fun b_and!73261 () Bool)

(assert (= b_and!73249 (and (=> t!94085 result!67774) b_and!73261)))

(declare-fun m!1078451 () Bool)

(assert (=> d!262710 m!1078451))

(declare-fun m!1078453 () Bool)

(assert (=> b!843941 m!1078453))

(assert (=> b!843941 m!1078453))

(declare-fun m!1078455 () Bool)

(assert (=> b!843941 m!1078455))

(declare-fun m!1078457 () Bool)

(assert (=> b!843942 m!1078457))

(assert (=> b!843690 d!262710))

(declare-fun d!262712 () Bool)

(assert (=> d!262712 (= (inv!16 (value!55149 separatorToken!297)) (= (charsToInt!0 (text!12809 (value!55149 separatorToken!297))) (value!55140 (value!55149 separatorToken!297))))))

(declare-fun bs!230171 () Bool)

(assert (= bs!230171 d!262712))

(declare-fun m!1078459 () Bool)

(assert (=> bs!230171 m!1078459))

(assert (=> b!843437 d!262712))

(declare-fun d!262714 () Bool)

(declare-fun res!385788 () Bool)

(declare-fun e!555187 () Bool)

(assert (=> d!262714 (=> res!385788 e!555187)))

(assert (=> d!262714 (= res!385788 (or (not ((_ is Cons!9067) (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))) (not ((_ is Cons!9067) (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))))

(assert (=> d!262714 (= (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) rules!2621) e!555187)))

(declare-fun b!843944 () Bool)

(declare-fun e!555186 () Bool)

(assert (=> b!843944 (= e!555187 e!555186)))

(declare-fun res!385789 () Bool)

(assert (=> b!843944 (=> (not res!385789) (not e!555186))))

(assert (=> b!843944 (= res!385789 (separableTokensPredicate!42 thiss!20117 (h!14468 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)) (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))) rules!2621))))

(declare-fun lt!319661 () Unit!13509)

(declare-fun Unit!13529 () Unit!13509)

(assert (=> b!843944 (= lt!319661 Unit!13529)))

(assert (=> b!843944 (> (size!7566 (charsOf!975 (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))) 0)))

(declare-fun lt!319655 () Unit!13509)

(declare-fun Unit!13530 () Unit!13509)

(assert (=> b!843944 (= lt!319655 Unit!13530)))

(assert (=> b!843944 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(declare-fun lt!319657 () Unit!13509)

(declare-fun Unit!13531 () Unit!13509)

(assert (=> b!843944 (= lt!319657 Unit!13531)))

(assert (=> b!843944 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)))))

(declare-fun lt!319656 () Unit!13509)

(declare-fun lt!319660 () Unit!13509)

(assert (=> b!843944 (= lt!319656 lt!319660)))

(assert (=> b!843944 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(assert (=> b!843944 (= lt!319660 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)))))))

(declare-fun lt!319658 () Unit!13509)

(declare-fun lt!319659 () Unit!13509)

(assert (=> b!843944 (= lt!319658 lt!319659)))

(assert (=> b!843944 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)))))

(assert (=> b!843944 (= lt!319659 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) (h!14468 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(declare-fun b!843945 () Bool)

(assert (=> b!843945 (= e!555186 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))) (t!93955 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)))) rules!2621))))

(assert (= (and d!262714 (not res!385788)) b!843944))

(assert (= (and b!843944 res!385789) b!843945))

(assert (=> b!843944 m!1077215))

(declare-fun m!1078461 () Bool)

(assert (=> b!843944 m!1078461))

(assert (=> b!843944 m!1077215))

(declare-fun m!1078463 () Bool)

(assert (=> b!843944 m!1078463))

(declare-fun m!1078465 () Bool)

(assert (=> b!843944 m!1078465))

(declare-fun m!1078467 () Bool)

(assert (=> b!843944 m!1078467))

(assert (=> b!843944 m!1078465))

(declare-fun m!1078469 () Bool)

(assert (=> b!843944 m!1078469))

(declare-fun m!1078471 () Bool)

(assert (=> b!843944 m!1078471))

(declare-fun m!1078473 () Bool)

(assert (=> b!843944 m!1078473))

(declare-fun m!1078475 () Bool)

(assert (=> b!843945 m!1078475))

(assert (=> b!843635 d!262714))

(assert (=> b!843635 d!262410))

(declare-fun bs!230172 () Bool)

(declare-fun d!262716 () Bool)

(assert (= bs!230172 (and d!262716 b!843281)))

(declare-fun lambda!25111 () Int)

(assert (=> bs!230172 (not (= lambda!25111 lambda!25082))))

(declare-fun bs!230173 () Bool)

(assert (= bs!230173 (and d!262716 d!262522)))

(assert (=> bs!230173 (= lambda!25111 lambda!25102)))

(declare-fun bs!230174 () Bool)

(assert (= bs!230174 (and d!262716 d!262592)))

(assert (=> bs!230174 (= lambda!25111 lambda!25103)))

(declare-fun bs!230175 () Bool)

(assert (= bs!230175 (and d!262716 d!262416)))

(assert (=> bs!230175 (= lambda!25111 lambda!25088)))

(declare-fun bs!230176 () Bool)

(assert (= bs!230176 (and d!262716 d!262436)))

(assert (=> bs!230176 (= lambda!25111 lambda!25092)))

(declare-fun bs!230177 () Bool)

(assert (= bs!230177 (and d!262716 d!262694)))

(assert (=> bs!230177 (= lambda!25111 lambda!25107)))

(declare-fun bs!230178 () Bool)

(assert (= bs!230178 (and d!262716 d!262456)))

(assert (=> bs!230178 (= lambda!25111 lambda!25101)))

(declare-fun b!843950 () Bool)

(declare-fun e!555192 () Bool)

(assert (=> b!843950 (= e!555192 true)))

(declare-fun b!843949 () Bool)

(declare-fun e!555191 () Bool)

(assert (=> b!843949 (= e!555191 e!555192)))

(declare-fun b!843948 () Bool)

(declare-fun e!555190 () Bool)

(assert (=> b!843948 (= e!555190 e!555191)))

(assert (=> d!262716 e!555190))

(assert (= b!843949 b!843950))

(assert (= b!843948 b!843949))

(assert (= (and d!262716 ((_ is Cons!9066) rules!2621)) b!843948))

(assert (=> b!843950 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25111))))

(assert (=> b!843950 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25111))))

(assert (=> d!262716 true))

(declare-fun lt!319662 () Bool)

(assert (=> d!262716 (= lt!319662 (forall!2121 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) lambda!25111))))

(declare-fun e!555188 () Bool)

(assert (=> d!262716 (= lt!319662 e!555188)))

(declare-fun res!385791 () Bool)

(assert (=> d!262716 (=> res!385791 e!555188)))

(assert (=> d!262716 (= res!385791 (not ((_ is Cons!9067) (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(assert (=> d!262716 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262716 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297)) lt!319662)))

(declare-fun b!843946 () Bool)

(declare-fun e!555189 () Bool)

(assert (=> b!843946 (= e!555188 e!555189)))

(declare-fun res!385790 () Bool)

(assert (=> b!843946 (=> (not res!385790) (not e!555189))))

(assert (=> b!843946 (= res!385790 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(declare-fun b!843947 () Bool)

(assert (=> b!843947 (= e!555189 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))))

(assert (= (and d!262716 (not res!385791)) b!843946))

(assert (= (and b!843946 res!385790) b!843947))

(assert (=> d!262716 m!1077215))

(declare-fun m!1078477 () Bool)

(assert (=> d!262716 m!1078477))

(assert (=> d!262716 m!1077187))

(assert (=> b!843946 m!1078471))

(declare-fun m!1078479 () Bool)

(assert (=> b!843947 m!1078479))

(assert (=> b!843635 d!262716))

(assert (=> b!843635 d!262518))

(declare-fun d!262718 () Bool)

(declare-fun lt!319663 () Int)

(assert (=> d!262718 (>= lt!319663 0)))

(declare-fun e!555193 () Int)

(assert (=> d!262718 (= lt!319663 e!555193)))

(declare-fun c!137428 () Bool)

(assert (=> d!262718 (= c!137428 ((_ is Nil!9065) (originalCharacters!2256 separatorToken!297)))))

(assert (=> d!262718 (= (size!7565 (originalCharacters!2256 separatorToken!297)) lt!319663)))

(declare-fun b!843951 () Bool)

(assert (=> b!843951 (= e!555193 0)))

(declare-fun b!843952 () Bool)

(assert (=> b!843952 (= e!555193 (+ 1 (size!7565 (t!93953 (originalCharacters!2256 separatorToken!297)))))))

(assert (= (and d!262718 c!137428) b!843951))

(assert (= (and d!262718 (not c!137428)) b!843952))

(declare-fun m!1078481 () Bool)

(assert (=> b!843952 m!1078481))

(assert (=> b!843528 d!262718))

(declare-fun d!262720 () Bool)

(assert (=> d!262720 (= (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))) (isBalanced!815 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(declare-fun bs!230179 () Bool)

(assert (= bs!230179 d!262720))

(declare-fun m!1078483 () Bool)

(assert (=> bs!230179 m!1078483))

(assert (=> tb!58341 d!262720))

(declare-fun bm!50475 () Bool)

(declare-fun call!50480 () Bool)

(assert (=> bm!50475 (= call!50480 (ruleDisjointCharsFromAllFromOtherType!223 (h!14467 rules!2621) (t!93954 rules!2621)))))

(declare-fun b!843961 () Bool)

(declare-fun e!555200 () Bool)

(assert (=> b!843961 (= e!555200 call!50480)))

(declare-fun b!843962 () Bool)

(declare-fun e!555202 () Bool)

(assert (=> b!843962 (= e!555202 call!50480)))

(declare-fun b!843963 () Bool)

(declare-fun e!555201 () Bool)

(assert (=> b!843963 (= e!555201 e!555202)))

(declare-fun res!385797 () Bool)

(declare-fun rulesUseDisjointChars!109 (Rule!3200 Rule!3200) Bool)

(assert (=> b!843963 (= res!385797 (rulesUseDisjointChars!109 (h!14467 rules!2621) (h!14467 rules!2621)))))

(assert (=> b!843963 (=> (not res!385797) (not e!555202))))

(declare-fun d!262722 () Bool)

(declare-fun c!137431 () Bool)

(assert (=> d!262722 (= c!137431 (and ((_ is Cons!9066) rules!2621) (not (= (isSeparator!1700 (h!14467 rules!2621)) (isSeparator!1700 (h!14467 rules!2621))))))))

(assert (=> d!262722 (= (ruleDisjointCharsFromAllFromOtherType!223 (h!14467 rules!2621) rules!2621) e!555201)))

(declare-fun b!843964 () Bool)

(assert (=> b!843964 (= e!555201 e!555200)))

(declare-fun res!385796 () Bool)

(assert (=> b!843964 (= res!385796 (not ((_ is Cons!9066) rules!2621)))))

(assert (=> b!843964 (=> res!385796 e!555200)))

(assert (= (and d!262722 c!137431) b!843963))

(assert (= (and d!262722 (not c!137431)) b!843964))

(assert (= (and b!843963 res!385797) b!843962))

(assert (= (and b!843964 (not res!385796)) b!843961))

(assert (= (or b!843962 b!843961) bm!50475))

(declare-fun m!1078485 () Bool)

(assert (=> bm!50475 m!1078485))

(declare-fun m!1078487 () Bool)

(assert (=> b!843963 m!1078487))

(assert (=> b!843658 d!262722))

(assert (=> d!262516 d!262520))

(declare-fun d!262724 () Bool)

(assert (=> d!262724 (separableTokensPredicate!42 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621)))

(assert (=> d!262724 true))

(declare-fun _$37!197 () Unit!13509)

(assert (=> d!262724 (= (choose!4972 thiss!20117 (h!14468 lt!319362) (h!14468 (t!93955 lt!319362)) rules!2621) _$37!197)))

(declare-fun bs!230182 () Bool)

(assert (= bs!230182 d!262724))

(assert (=> bs!230182 m!1077229))

(assert (=> d!262516 d!262724))

(assert (=> d!262516 d!262414))

(declare-fun d!262738 () Bool)

(declare-fun lt!319675 () Bool)

(assert (=> d!262738 (= lt!319675 (isEmpty!5344 (list!3561 (_2!5994 lt!319543))))))

(declare-fun isEmpty!5348 (Conc!3006) Bool)

(assert (=> d!262738 (= lt!319675 (isEmpty!5348 (c!137333 (_2!5994 lt!319543))))))

(assert (=> d!262738 (= (isEmpty!5345 (_2!5994 lt!319543)) lt!319675)))

(declare-fun bs!230184 () Bool)

(assert (= bs!230184 d!262738))

(declare-fun m!1078519 () Bool)

(assert (=> bs!230184 m!1078519))

(assert (=> bs!230184 m!1078519))

(declare-fun m!1078521 () Bool)

(assert (=> bs!230184 m!1078521))

(declare-fun m!1078523 () Bool)

(assert (=> bs!230184 m!1078523))

(assert (=> b!843652 d!262738))

(declare-fun d!262744 () Bool)

(assert (=> d!262744 (= (inv!15 (value!55149 separatorToken!297)) (= (charsToBigInt!0 (text!12811 (value!55149 separatorToken!297)) 0) (value!55144 (value!55149 separatorToken!297))))))

(declare-fun bs!230185 () Bool)

(assert (= bs!230185 d!262744))

(declare-fun m!1078525 () Bool)

(assert (=> bs!230185 m!1078525))

(assert (=> b!843435 d!262744))

(declare-fun d!262746 () Bool)

(declare-fun c!137438 () Bool)

(assert (=> d!262746 (= c!137438 ((_ is Cons!9067) lt!319421))))

(declare-fun e!555214 () List!9081)

(assert (=> d!262746 (= (printList!460 thiss!20117 lt!319421) e!555214)))

(declare-fun b!843981 () Bool)

(assert (=> b!843981 (= e!555214 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319421))) (printList!460 thiss!20117 (t!93955 lt!319421))))))

(declare-fun b!843982 () Bool)

(assert (=> b!843982 (= e!555214 Nil!9065)))

(assert (= (and d!262746 c!137438) b!843981))

(assert (= (and d!262746 (not c!137438)) b!843982))

(declare-fun m!1078527 () Bool)

(assert (=> b!843981 m!1078527))

(assert (=> b!843981 m!1078527))

(declare-fun m!1078529 () Bool)

(assert (=> b!843981 m!1078529))

(declare-fun m!1078531 () Bool)

(assert (=> b!843981 m!1078531))

(assert (=> b!843981 m!1078529))

(assert (=> b!843981 m!1078531))

(declare-fun m!1078533 () Bool)

(assert (=> b!843981 m!1078533))

(assert (=> d!262424 d!262746))

(declare-fun d!262748 () Bool)

(declare-fun c!137443 () Bool)

(assert (=> d!262748 (= c!137443 ((_ is Cons!9067) l!5107))))

(declare-fun e!555225 () List!9081)

(assert (=> d!262748 (= (printWithSeparatorTokenList!18 thiss!20117 l!5107 separatorToken!297) e!555225)))

(declare-fun b!844001 () Bool)

(assert (=> b!844001 (= e!555225 (++!2345 (++!2345 (list!3561 (charsOf!975 (h!14468 l!5107))) (list!3561 (charsOf!975 separatorToken!297))) (printWithSeparatorTokenList!18 thiss!20117 (t!93955 l!5107) separatorToken!297)))))

(declare-fun b!844002 () Bool)

(assert (=> b!844002 (= e!555225 Nil!9065)))

(assert (= (and d!262748 c!137443) b!844001))

(assert (= (and d!262748 (not c!137443)) b!844002))

(assert (=> b!844001 m!1077393))

(assert (=> b!844001 m!1077411))

(assert (=> b!844001 m!1077813))

(assert (=> b!844001 m!1077275))

(assert (=> b!844001 m!1077411))

(assert (=> b!844001 m!1077277))

(declare-fun m!1078543 () Bool)

(assert (=> b!844001 m!1078543))

(assert (=> b!844001 m!1078543))

(assert (=> b!844001 m!1077813))

(declare-fun m!1078547 () Bool)

(assert (=> b!844001 m!1078547))

(assert (=> b!844001 m!1077275))

(assert (=> b!844001 m!1077277))

(assert (=> b!844001 m!1077393))

(assert (=> d!262424 d!262748))

(declare-fun bs!230192 () Bool)

(declare-fun d!262754 () Bool)

(assert (= bs!230192 (and d!262754 d!262626)))

(declare-fun lambda!25116 () Int)

(assert (=> bs!230192 (= (= (toValue!2721 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (= lambda!25116 lambda!25106))))

(assert (=> d!262754 true))

(assert (=> d!262754 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4197 order!5773 lambda!25116))))

(assert (=> d!262754 (= (equivClasses!622 (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (Forall2!312 lambda!25116))))

(declare-fun bs!230193 () Bool)

(assert (= bs!230193 d!262754))

(declare-fun m!1078553 () Bool)

(assert (=> bs!230193 m!1078553))

(assert (=> b!843303 d!262754))

(declare-fun c!137444 () Bool)

(declare-fun d!262758 () Bool)

(assert (=> d!262758 (= c!137444 ((_ is Cons!9067) ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107))))))

(declare-fun e!555226 () List!9081)

(assert (=> d!262758 (= (printList!460 thiss!20117 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107))) e!555226)))

(declare-fun b!844003 () Bool)

(assert (=> b!844003 (= e!555226 (++!2345 (list!3561 (charsOf!975 (h!14468 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107))))) (printList!460 thiss!20117 (t!93955 ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107))))))))

(declare-fun b!844004 () Bool)

(assert (=> b!844004 (= e!555226 Nil!9065)))

(assert (= (and d!262758 c!137444) b!844003))

(assert (= (and d!262758 (not c!137444)) b!844004))

(declare-fun m!1078555 () Bool)

(assert (=> b!844003 m!1078555))

(assert (=> b!844003 m!1078555))

(declare-fun m!1078557 () Bool)

(assert (=> b!844003 m!1078557))

(declare-fun m!1078559 () Bool)

(assert (=> b!844003 m!1078559))

(assert (=> b!844003 m!1078557))

(assert (=> b!844003 m!1078559))

(declare-fun m!1078561 () Bool)

(assert (=> b!844003 m!1078561))

(assert (=> b!843408 d!262758))

(declare-fun d!262760 () Bool)

(assert (=> d!262760 (= ($colon$colon!73 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297) (h!14468 l!5107)) (Cons!9067 (h!14468 l!5107) ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!843408 d!262760))

(assert (=> b!843408 d!262540))

(assert (=> b!843408 d!262542))

(declare-fun bs!230194 () Bool)

(declare-fun d!262762 () Bool)

(assert (= bs!230194 (and d!262762 d!262696)))

(declare-fun lambda!25117 () Int)

(assert (=> bs!230194 (= (and (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (= (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (= lambda!25117 lambda!25110))))

(assert (=> d!262762 true))

(assert (=> d!262762 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) (dynLambda!4199 order!5775 lambda!25117))))

(assert (=> d!262762 true))

(assert (=> d!262762 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (dynLambda!4199 order!5775 lambda!25117))))

(assert (=> d!262762 (= (semiInverseModEq!655 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (Forall!403 lambda!25117))))

(declare-fun bs!230195 () Bool)

(assert (= bs!230195 d!262762))

(declare-fun m!1078563 () Bool)

(assert (=> bs!230195 m!1078563))

(assert (=> d!262530 d!262762))

(declare-fun bs!230196 () Bool)

(declare-fun d!262764 () Bool)

(assert (= bs!230196 (and d!262764 b!843281)))

(declare-fun lambda!25118 () Int)

(assert (=> bs!230196 (not (= lambda!25118 lambda!25082))))

(declare-fun bs!230197 () Bool)

(assert (= bs!230197 (and d!262764 d!262522)))

(assert (=> bs!230197 (= lambda!25118 lambda!25102)))

(declare-fun bs!230198 () Bool)

(assert (= bs!230198 (and d!262764 d!262416)))

(assert (=> bs!230198 (= lambda!25118 lambda!25088)))

(declare-fun bs!230199 () Bool)

(assert (= bs!230199 (and d!262764 d!262436)))

(assert (=> bs!230199 (= lambda!25118 lambda!25092)))

(declare-fun bs!230200 () Bool)

(assert (= bs!230200 (and d!262764 d!262694)))

(assert (=> bs!230200 (= lambda!25118 lambda!25107)))

(declare-fun bs!230201 () Bool)

(assert (= bs!230201 (and d!262764 d!262456)))

(assert (=> bs!230201 (= lambda!25118 lambda!25101)))

(declare-fun bs!230202 () Bool)

(assert (= bs!230202 (and d!262764 d!262592)))

(assert (=> bs!230202 (= lambda!25118 lambda!25103)))

(declare-fun bs!230203 () Bool)

(assert (= bs!230203 (and d!262764 d!262716)))

(assert (=> bs!230203 (= lambda!25118 lambda!25111)))

(declare-fun b!844009 () Bool)

(declare-fun e!555231 () Bool)

(assert (=> b!844009 (= e!555231 true)))

(declare-fun b!844008 () Bool)

(declare-fun e!555230 () Bool)

(assert (=> b!844008 (= e!555230 e!555231)))

(declare-fun b!844007 () Bool)

(declare-fun e!555229 () Bool)

(assert (=> b!844007 (= e!555229 e!555230)))

(assert (=> d!262764 e!555229))

(assert (= b!844008 b!844009))

(assert (= b!844007 b!844008))

(assert (= (and d!262764 ((_ is Cons!9066) rules!2621)) b!844007))

(assert (=> b!844009 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25118))))

(assert (=> b!844009 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25118))))

(assert (=> d!262764 true))

(declare-fun lt!319677 () Bool)

(assert (=> d!262764 (= lt!319677 (forall!2121 (t!93955 lt!319362) lambda!25118))))

(declare-fun e!555227 () Bool)

(assert (=> d!262764 (= lt!319677 e!555227)))

(declare-fun res!385808 () Bool)

(assert (=> d!262764 (=> res!385808 e!555227)))

(assert (=> d!262764 (= res!385808 (not ((_ is Cons!9067) (t!93955 lt!319362))))))

(assert (=> d!262764 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262764 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 lt!319362)) lt!319677)))

(declare-fun b!844005 () Bool)

(declare-fun e!555228 () Bool)

(assert (=> b!844005 (= e!555227 e!555228)))

(declare-fun res!385807 () Bool)

(assert (=> b!844005 (=> (not res!385807) (not e!555228))))

(assert (=> b!844005 (= res!385807 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319362))))))

(declare-fun b!844006 () Bool)

(assert (=> b!844006 (= e!555228 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (t!93955 lt!319362))))))

(assert (= (and d!262764 (not res!385808)) b!844005))

(assert (= (and b!844005 res!385807) b!844006))

(declare-fun m!1078565 () Bool)

(assert (=> d!262764 m!1078565))

(assert (=> d!262764 m!1077187))

(assert (=> b!844005 m!1077621))

(declare-fun m!1078567 () Bool)

(assert (=> b!844006 m!1078567))

(assert (=> b!843388 d!262764))

(declare-fun d!262766 () Bool)

(declare-fun c!137445 () Bool)

(assert (=> d!262766 (= c!137445 ((_ is Cons!9067) (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)))))

(declare-fun e!555232 () List!9081)

(assert (=> d!262766 (= (printList!460 thiss!20117 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)) e!555232)))

(declare-fun b!844010 () Bool)

(assert (=> b!844010 (= e!555232 (++!2345 (list!3561 (charsOf!975 (h!14468 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)))) (printList!460 thiss!20117 (t!93955 (withSeparatorTokenList!32 thiss!20117 (t!93955 l!5107) separatorToken!297)))))))

(declare-fun b!844011 () Bool)

(assert (=> b!844011 (= e!555232 Nil!9065)))

(assert (= (and d!262766 c!137445) b!844010))

(assert (= (and d!262766 (not c!137445)) b!844011))

(declare-fun m!1078569 () Bool)

(assert (=> b!844010 m!1078569))

(assert (=> b!844010 m!1078569))

(declare-fun m!1078571 () Bool)

(assert (=> b!844010 m!1078571))

(declare-fun m!1078573 () Bool)

(assert (=> b!844010 m!1078573))

(assert (=> b!844010 m!1078571))

(assert (=> b!844010 m!1078573))

(declare-fun m!1078575 () Bool)

(assert (=> b!844010 m!1078575))

(assert (=> b!843406 d!262766))

(declare-fun d!262768 () Bool)

(assert (=> d!262768 (= (++!2345 (++!2345 lt!319427 lt!319422) lt!319425) (++!2345 lt!319427 (++!2345 lt!319422 lt!319425)))))

(declare-fun lt!319678 () Unit!13509)

(assert (=> d!262768 (= lt!319678 (choose!4974 lt!319427 lt!319422 lt!319425))))

(assert (=> d!262768 (= (lemmaConcatAssociativity!735 lt!319427 lt!319422 lt!319425) lt!319678)))

(declare-fun bs!230204 () Bool)

(assert (= bs!230204 d!262768))

(assert (=> bs!230204 m!1077395))

(assert (=> bs!230204 m!1077397))

(assert (=> bs!230204 m!1077391))

(assert (=> bs!230204 m!1077407))

(declare-fun m!1078577 () Bool)

(assert (=> bs!230204 m!1078577))

(assert (=> bs!230204 m!1077391))

(assert (=> bs!230204 m!1077395))

(assert (=> b!843406 d!262768))

(assert (=> b!843406 d!262562))

(declare-fun b!844015 () Bool)

(declare-fun lt!319679 () List!9081)

(declare-fun e!555234 () Bool)

(assert (=> b!844015 (= e!555234 (or (not (= lt!319425 Nil!9065)) (= lt!319679 (++!2345 lt!319427 lt!319422))))))

(declare-fun b!844014 () Bool)

(declare-fun res!385810 () Bool)

(assert (=> b!844014 (=> (not res!385810) (not e!555234))))

(assert (=> b!844014 (= res!385810 (= (size!7565 lt!319679) (+ (size!7565 (++!2345 lt!319427 lt!319422)) (size!7565 lt!319425))))))

(declare-fun e!555233 () List!9081)

(declare-fun b!844013 () Bool)

(assert (=> b!844013 (= e!555233 (Cons!9065 (h!14466 (++!2345 lt!319427 lt!319422)) (++!2345 (t!93953 (++!2345 lt!319427 lt!319422)) lt!319425)))))

(declare-fun d!262770 () Bool)

(assert (=> d!262770 e!555234))

(declare-fun res!385809 () Bool)

(assert (=> d!262770 (=> (not res!385809) (not e!555234))))

(assert (=> d!262770 (= res!385809 (= (content!1336 lt!319679) ((_ map or) (content!1336 (++!2345 lt!319427 lt!319422)) (content!1336 lt!319425))))))

(assert (=> d!262770 (= lt!319679 e!555233)))

(declare-fun c!137446 () Bool)

(assert (=> d!262770 (= c!137446 ((_ is Nil!9065) (++!2345 lt!319427 lt!319422)))))

(assert (=> d!262770 (= (++!2345 (++!2345 lt!319427 lt!319422) lt!319425) lt!319679)))

(declare-fun b!844012 () Bool)

(assert (=> b!844012 (= e!555233 lt!319425)))

(assert (= (and d!262770 c!137446) b!844012))

(assert (= (and d!262770 (not c!137446)) b!844013))

(assert (= (and d!262770 res!385809) b!844014))

(assert (= (and b!844014 res!385810) b!844015))

(declare-fun m!1078579 () Bool)

(assert (=> b!844014 m!1078579))

(assert (=> b!844014 m!1077391))

(declare-fun m!1078581 () Bool)

(assert (=> b!844014 m!1078581))

(declare-fun m!1078583 () Bool)

(assert (=> b!844014 m!1078583))

(declare-fun m!1078585 () Bool)

(assert (=> b!844013 m!1078585))

(declare-fun m!1078587 () Bool)

(assert (=> d!262770 m!1078587))

(assert (=> d!262770 m!1077391))

(declare-fun m!1078589 () Bool)

(assert (=> d!262770 m!1078589))

(declare-fun m!1078591 () Bool)

(assert (=> d!262770 m!1078591))

(assert (=> b!843406 d!262770))

(declare-fun e!555236 () Bool)

(declare-fun b!844019 () Bool)

(declare-fun lt!319680 () List!9081)

(assert (=> b!844019 (= e!555236 (or (not (= lt!319422 Nil!9065)) (= lt!319680 lt!319427)))))

(declare-fun b!844018 () Bool)

(declare-fun res!385812 () Bool)

(assert (=> b!844018 (=> (not res!385812) (not e!555236))))

(assert (=> b!844018 (= res!385812 (= (size!7565 lt!319680) (+ (size!7565 lt!319427) (size!7565 lt!319422))))))

(declare-fun b!844017 () Bool)

(declare-fun e!555235 () List!9081)

(assert (=> b!844017 (= e!555235 (Cons!9065 (h!14466 lt!319427) (++!2345 (t!93953 lt!319427) lt!319422)))))

(declare-fun d!262772 () Bool)

(assert (=> d!262772 e!555236))

(declare-fun res!385811 () Bool)

(assert (=> d!262772 (=> (not res!385811) (not e!555236))))

(assert (=> d!262772 (= res!385811 (= (content!1336 lt!319680) ((_ map or) (content!1336 lt!319427) (content!1336 lt!319422))))))

(assert (=> d!262772 (= lt!319680 e!555235)))

(declare-fun c!137447 () Bool)

(assert (=> d!262772 (= c!137447 ((_ is Nil!9065) lt!319427))))

(assert (=> d!262772 (= (++!2345 lt!319427 lt!319422) lt!319680)))

(declare-fun b!844016 () Bool)

(assert (=> b!844016 (= e!555235 lt!319422)))

(assert (= (and d!262772 c!137447) b!844016))

(assert (= (and d!262772 (not c!137447)) b!844017))

(assert (= (and d!262772 res!385811) b!844018))

(assert (= (and b!844018 res!385812) b!844019))

(declare-fun m!1078593 () Bool)

(assert (=> b!844018 m!1078593))

(declare-fun m!1078595 () Bool)

(assert (=> b!844018 m!1078595))

(declare-fun m!1078597 () Bool)

(assert (=> b!844018 m!1078597))

(declare-fun m!1078599 () Bool)

(assert (=> b!844017 m!1078599))

(declare-fun m!1078601 () Bool)

(assert (=> d!262772 m!1078601))

(declare-fun m!1078603 () Bool)

(assert (=> d!262772 m!1078603))

(declare-fun m!1078605 () Bool)

(assert (=> d!262772 m!1078605))

(assert (=> b!843406 d!262772))

(assert (=> b!843406 d!262566))

(declare-fun e!555238 () Bool)

(declare-fun b!844023 () Bool)

(declare-fun lt!319681 () List!9081)

(assert (=> b!844023 (= e!555238 (or (not (= lt!319425 Nil!9065)) (= lt!319681 lt!319422)))))

(declare-fun b!844022 () Bool)

(declare-fun res!385814 () Bool)

(assert (=> b!844022 (=> (not res!385814) (not e!555238))))

(assert (=> b!844022 (= res!385814 (= (size!7565 lt!319681) (+ (size!7565 lt!319422) (size!7565 lt!319425))))))

(declare-fun b!844021 () Bool)

(declare-fun e!555237 () List!9081)

(assert (=> b!844021 (= e!555237 (Cons!9065 (h!14466 lt!319422) (++!2345 (t!93953 lt!319422) lt!319425)))))

(declare-fun d!262774 () Bool)

(assert (=> d!262774 e!555238))

(declare-fun res!385813 () Bool)

(assert (=> d!262774 (=> (not res!385813) (not e!555238))))

(assert (=> d!262774 (= res!385813 (= (content!1336 lt!319681) ((_ map or) (content!1336 lt!319422) (content!1336 lt!319425))))))

(assert (=> d!262774 (= lt!319681 e!555237)))

(declare-fun c!137448 () Bool)

(assert (=> d!262774 (= c!137448 ((_ is Nil!9065) lt!319422))))

(assert (=> d!262774 (= (++!2345 lt!319422 lt!319425) lt!319681)))

(declare-fun b!844020 () Bool)

(assert (=> b!844020 (= e!555237 lt!319425)))

(assert (= (and d!262774 c!137448) b!844020))

(assert (= (and d!262774 (not c!137448)) b!844021))

(assert (= (and d!262774 res!385813) b!844022))

(assert (= (and b!844022 res!385814) b!844023))

(declare-fun m!1078607 () Bool)

(assert (=> b!844022 m!1078607))

(assert (=> b!844022 m!1078597))

(assert (=> b!844022 m!1078583))

(declare-fun m!1078609 () Bool)

(assert (=> b!844021 m!1078609))

(declare-fun m!1078611 () Bool)

(assert (=> d!262774 m!1078611))

(assert (=> d!262774 m!1078605))

(assert (=> d!262774 m!1078591))

(assert (=> b!843406 d!262774))

(declare-fun d!262776 () Bool)

(assert (=> d!262776 (= (list!3561 (charsOf!975 (h!14468 l!5107))) (list!3564 (c!137333 (charsOf!975 (h!14468 l!5107)))))))

(declare-fun bs!230205 () Bool)

(assert (= bs!230205 d!262776))

(declare-fun m!1078613 () Bool)

(assert (=> bs!230205 m!1078613))

(assert (=> b!843406 d!262776))

(assert (=> b!843406 d!262760))

(declare-fun d!262778 () Bool)

(declare-fun lt!319682 () BalanceConc!6026)

(assert (=> d!262778 (= (list!3561 lt!319682) (originalCharacters!2256 (h!14468 l!5107)))))

(assert (=> d!262778 (= lt!319682 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))

(assert (=> d!262778 (= (charsOf!975 (h!14468 l!5107)) lt!319682)))

(declare-fun b_lambda!27853 () Bool)

(assert (=> (not b_lambda!27853) (not d!262778)))

(assert (=> d!262778 t!93969))

(declare-fun b_and!73263 () Bool)

(assert (= b_and!73255 (and (=> t!93969 result!67652) b_and!73263)))

(assert (=> d!262778 t!94008))

(declare-fun b_and!73265 () Bool)

(assert (= b_and!73253 (and (=> t!94008 result!67702) b_and!73265)))

(assert (=> d!262778 t!93965))

(declare-fun b_and!73267 () Bool)

(assert (= b_and!73259 (and (=> t!93965 result!67646) b_and!73267)))

(assert (=> d!262778 t!94004))

(declare-fun b_and!73269 () Bool)

(assert (= b_and!73257 (and (=> t!94004 result!67696) b_and!73269)))

(assert (=> d!262778 t!93967))

(declare-fun b_and!73271 () Bool)

(assert (= b_and!73261 (and (=> t!93967 result!67650) b_and!73271)))

(declare-fun m!1078615 () Bool)

(assert (=> d!262778 m!1078615))

(assert (=> d!262778 m!1077467))

(assert (=> b!843406 d!262778))

(assert (=> b!843406 d!262540))

(declare-fun e!555240 () Bool)

(declare-fun lt!319683 () List!9081)

(declare-fun b!844027 () Bool)

(assert (=> b!844027 (= e!555240 (or (not (= (++!2345 lt!319422 lt!319425) Nil!9065)) (= lt!319683 lt!319427)))))

(declare-fun b!844026 () Bool)

(declare-fun res!385816 () Bool)

(assert (=> b!844026 (=> (not res!385816) (not e!555240))))

(assert (=> b!844026 (= res!385816 (= (size!7565 lt!319683) (+ (size!7565 lt!319427) (size!7565 (++!2345 lt!319422 lt!319425)))))))

(declare-fun e!555239 () List!9081)

(declare-fun b!844025 () Bool)

(assert (=> b!844025 (= e!555239 (Cons!9065 (h!14466 lt!319427) (++!2345 (t!93953 lt!319427) (++!2345 lt!319422 lt!319425))))))

(declare-fun d!262780 () Bool)

(assert (=> d!262780 e!555240))

(declare-fun res!385815 () Bool)

(assert (=> d!262780 (=> (not res!385815) (not e!555240))))

(assert (=> d!262780 (= res!385815 (= (content!1336 lt!319683) ((_ map or) (content!1336 lt!319427) (content!1336 (++!2345 lt!319422 lt!319425)))))))

(assert (=> d!262780 (= lt!319683 e!555239)))

(declare-fun c!137449 () Bool)

(assert (=> d!262780 (= c!137449 ((_ is Nil!9065) lt!319427))))

(assert (=> d!262780 (= (++!2345 lt!319427 (++!2345 lt!319422 lt!319425)) lt!319683)))

(declare-fun b!844024 () Bool)

(assert (=> b!844024 (= e!555239 (++!2345 lt!319422 lt!319425))))

(assert (= (and d!262780 c!137449) b!844024))

(assert (= (and d!262780 (not c!137449)) b!844025))

(assert (= (and d!262780 res!385815) b!844026))

(assert (= (and b!844026 res!385816) b!844027))

(declare-fun m!1078617 () Bool)

(assert (=> b!844026 m!1078617))

(assert (=> b!844026 m!1078595))

(assert (=> b!844026 m!1077395))

(declare-fun m!1078619 () Bool)

(assert (=> b!844026 m!1078619))

(assert (=> b!844025 m!1077395))

(declare-fun m!1078621 () Bool)

(assert (=> b!844025 m!1078621))

(declare-fun m!1078623 () Bool)

(assert (=> d!262780 m!1078623))

(assert (=> d!262780 m!1078603))

(assert (=> d!262780 m!1077395))

(declare-fun m!1078625 () Bool)

(assert (=> d!262780 m!1078625))

(assert (=> b!843406 d!262780))

(assert (=> b!843406 d!262542))

(declare-fun bs!230206 () Bool)

(declare-fun d!262782 () Bool)

(assert (= bs!230206 (and d!262782 b!843281)))

(declare-fun lambda!25119 () Int)

(assert (=> bs!230206 (not (= lambda!25119 lambda!25082))))

(declare-fun bs!230207 () Bool)

(assert (= bs!230207 (and d!262782 d!262522)))

(assert (=> bs!230207 (= lambda!25119 lambda!25102)))

(declare-fun bs!230208 () Bool)

(assert (= bs!230208 (and d!262782 d!262416)))

(assert (=> bs!230208 (= lambda!25119 lambda!25088)))

(declare-fun bs!230209 () Bool)

(assert (= bs!230209 (and d!262782 d!262436)))

(assert (=> bs!230209 (= lambda!25119 lambda!25092)))

(declare-fun bs!230210 () Bool)

(assert (= bs!230210 (and d!262782 d!262694)))

(assert (=> bs!230210 (= lambda!25119 lambda!25107)))

(declare-fun bs!230211 () Bool)

(assert (= bs!230211 (and d!262782 d!262764)))

(assert (=> bs!230211 (= lambda!25119 lambda!25118)))

(declare-fun bs!230212 () Bool)

(assert (= bs!230212 (and d!262782 d!262456)))

(assert (=> bs!230212 (= lambda!25119 lambda!25101)))

(declare-fun bs!230213 () Bool)

(assert (= bs!230213 (and d!262782 d!262592)))

(assert (=> bs!230213 (= lambda!25119 lambda!25103)))

(declare-fun bs!230214 () Bool)

(assert (= bs!230214 (and d!262782 d!262716)))

(assert (=> bs!230214 (= lambda!25119 lambda!25111)))

(declare-fun b!844032 () Bool)

(declare-fun e!555245 () Bool)

(assert (=> b!844032 (= e!555245 true)))

(declare-fun b!844031 () Bool)

(declare-fun e!555244 () Bool)

(assert (=> b!844031 (= e!555244 e!555245)))

(declare-fun b!844030 () Bool)

(declare-fun e!555243 () Bool)

(assert (=> b!844030 (= e!555243 e!555244)))

(assert (=> d!262782 e!555243))

(assert (= b!844031 b!844032))

(assert (= b!844030 b!844031))

(assert (= (and d!262782 ((_ is Cons!9066) rules!2621)) b!844030))

(assert (=> b!844032 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25119))))

(assert (=> b!844032 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25119))))

(assert (=> d!262782 true))

(declare-fun lt!319684 () Bool)

(assert (=> d!262782 (= lt!319684 (forall!2121 (list!3562 (seqFromList!1520 lt!319362)) lambda!25119))))

(declare-fun e!555241 () Bool)

(assert (=> d!262782 (= lt!319684 e!555241)))

(declare-fun res!385818 () Bool)

(assert (=> d!262782 (=> res!385818 e!555241)))

(assert (=> d!262782 (= res!385818 (not ((_ is Cons!9067) (list!3562 (seqFromList!1520 lt!319362)))))))

(assert (=> d!262782 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262782 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (list!3562 (seqFromList!1520 lt!319362))) lt!319684)))

(declare-fun b!844028 () Bool)

(declare-fun e!555242 () Bool)

(assert (=> b!844028 (= e!555241 e!555242)))

(declare-fun res!385817 () Bool)

(assert (=> b!844028 (=> (not res!385817) (not e!555242))))

(assert (=> b!844028 (= res!385817 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (list!3562 (seqFromList!1520 lt!319362)))))))

(declare-fun b!844029 () Bool)

(assert (=> b!844029 (= e!555242 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (list!3562 (seqFromList!1520 lt!319362)))))))

(assert (= (and d!262782 (not res!385818)) b!844028))

(assert (= (and b!844028 res!385817) b!844029))

(assert (=> d!262782 m!1077603))

(declare-fun m!1078627 () Bool)

(assert (=> d!262782 m!1078627))

(assert (=> d!262782 m!1077187))

(declare-fun m!1078629 () Bool)

(assert (=> b!844028 m!1078629))

(declare-fun m!1078631 () Bool)

(assert (=> b!844029 m!1078631))

(assert (=> b!843521 d!262782))

(assert (=> b!843521 d!262706))

(declare-fun d!262784 () Bool)

(declare-fun c!137450 () Bool)

(assert (=> d!262784 (= c!137450 ((_ is Node!3006) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(declare-fun e!555246 () Bool)

(assert (=> d!262784 (= (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))) e!555246)))

(declare-fun b!844033 () Bool)

(assert (=> b!844033 (= e!555246 (inv!11545 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(declare-fun b!844034 () Bool)

(declare-fun e!555247 () Bool)

(assert (=> b!844034 (= e!555246 e!555247)))

(declare-fun res!385819 () Bool)

(assert (=> b!844034 (= res!385819 (not ((_ is Leaf!4444) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))))))

(assert (=> b!844034 (=> res!385819 e!555247)))

(declare-fun b!844035 () Bool)

(assert (=> b!844035 (= e!555247 (inv!11546 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(assert (= (and d!262784 c!137450) b!844033))

(assert (= (and d!262784 (not c!137450)) b!844034))

(assert (= (and b!844034 (not res!385819)) b!844035))

(declare-fun m!1078633 () Bool)

(assert (=> b!844033 m!1078633))

(declare-fun m!1078635 () Bool)

(assert (=> b!844035 m!1078635))

(assert (=> b!843529 d!262784))

(declare-fun bs!230215 () Bool)

(declare-fun d!262786 () Bool)

(assert (= bs!230215 (and d!262786 d!262782)))

(declare-fun lambda!25120 () Int)

(assert (=> bs!230215 (= lambda!25120 lambda!25119)))

(declare-fun bs!230216 () Bool)

(assert (= bs!230216 (and d!262786 b!843281)))

(assert (=> bs!230216 (not (= lambda!25120 lambda!25082))))

(declare-fun bs!230217 () Bool)

(assert (= bs!230217 (and d!262786 d!262522)))

(assert (=> bs!230217 (= lambda!25120 lambda!25102)))

(declare-fun bs!230218 () Bool)

(assert (= bs!230218 (and d!262786 d!262416)))

(assert (=> bs!230218 (= lambda!25120 lambda!25088)))

(declare-fun bs!230219 () Bool)

(assert (= bs!230219 (and d!262786 d!262436)))

(assert (=> bs!230219 (= lambda!25120 lambda!25092)))

(declare-fun bs!230220 () Bool)

(assert (= bs!230220 (and d!262786 d!262694)))

(assert (=> bs!230220 (= lambda!25120 lambda!25107)))

(declare-fun bs!230221 () Bool)

(assert (= bs!230221 (and d!262786 d!262764)))

(assert (=> bs!230221 (= lambda!25120 lambda!25118)))

(declare-fun bs!230222 () Bool)

(assert (= bs!230222 (and d!262786 d!262456)))

(assert (=> bs!230222 (= lambda!25120 lambda!25101)))

(declare-fun bs!230223 () Bool)

(assert (= bs!230223 (and d!262786 d!262592)))

(assert (=> bs!230223 (= lambda!25120 lambda!25103)))

(declare-fun bs!230224 () Bool)

(assert (= bs!230224 (and d!262786 d!262716)))

(assert (=> bs!230224 (= lambda!25120 lambda!25111)))

(declare-fun b!844040 () Bool)

(declare-fun e!555252 () Bool)

(assert (=> b!844040 (= e!555252 true)))

(declare-fun b!844039 () Bool)

(declare-fun e!555251 () Bool)

(assert (=> b!844039 (= e!555251 e!555252)))

(declare-fun b!844038 () Bool)

(declare-fun e!555250 () Bool)

(assert (=> b!844038 (= e!555250 e!555251)))

(assert (=> d!262786 e!555250))

(assert (= b!844039 b!844040))

(assert (= b!844038 b!844039))

(assert (= (and d!262786 ((_ is Cons!9066) rules!2621)) b!844038))

(assert (=> b!844040 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25120))))

(assert (=> b!844040 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25120))))

(assert (=> d!262786 true))

(declare-fun lt!319685 () Bool)

(assert (=> d!262786 (= lt!319685 (forall!2121 (t!93955 lt!319358) lambda!25120))))

(declare-fun e!555248 () Bool)

(assert (=> d!262786 (= lt!319685 e!555248)))

(declare-fun res!385821 () Bool)

(assert (=> d!262786 (=> res!385821 e!555248)))

(assert (=> d!262786 (= res!385821 (not ((_ is Cons!9067) (t!93955 lt!319358))))))

(assert (=> d!262786 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262786 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 lt!319358)) lt!319685)))

(declare-fun b!844036 () Bool)

(declare-fun e!555249 () Bool)

(assert (=> b!844036 (= e!555248 e!555249)))

(declare-fun res!385820 () Bool)

(assert (=> b!844036 (=> (not res!385820) (not e!555249))))

(assert (=> b!844036 (= res!385820 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319358))))))

(declare-fun b!844037 () Bool)

(assert (=> b!844037 (= e!555249 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (t!93955 lt!319358))))))

(assert (= (and d!262786 (not res!385821)) b!844036))

(assert (= (and b!844036 res!385820) b!844037))

(declare-fun m!1078637 () Bool)

(assert (=> d!262786 m!1078637))

(assert (=> d!262786 m!1077187))

(assert (=> b!844036 m!1077515))

(declare-fun m!1078639 () Bool)

(assert (=> b!844037 m!1078639))

(assert (=> b!843641 d!262786))

(declare-fun d!262788 () Bool)

(declare-fun c!137451 () Bool)

(assert (=> d!262788 (= c!137451 ((_ is Cons!9067) lt!319382))))

(declare-fun e!555253 () List!9081)

(assert (=> d!262788 (= (printList!460 thiss!20117 lt!319382) e!555253)))

(declare-fun b!844041 () Bool)

(assert (=> b!844041 (= e!555253 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319382))) (printList!460 thiss!20117 (t!93955 lt!319382))))))

(declare-fun b!844042 () Bool)

(assert (=> b!844042 (= e!555253 Nil!9065)))

(assert (= (and d!262788 c!137451) b!844041))

(assert (= (and d!262788 (not c!137451)) b!844042))

(declare-fun m!1078641 () Bool)

(assert (=> b!844041 m!1078641))

(assert (=> b!844041 m!1078641))

(declare-fun m!1078643 () Bool)

(assert (=> b!844041 m!1078643))

(declare-fun m!1078645 () Bool)

(assert (=> b!844041 m!1078645))

(assert (=> b!844041 m!1078643))

(assert (=> b!844041 m!1078645))

(declare-fun m!1078647 () Bool)

(assert (=> b!844041 m!1078647))

(assert (=> d!262410 d!262788))

(declare-fun d!262790 () Bool)

(declare-fun c!137452 () Bool)

(assert (=> d!262790 (= c!137452 ((_ is Cons!9067) lt!319357))))

(declare-fun e!555254 () List!9081)

(assert (=> d!262790 (= (printWithSeparatorTokenList!18 thiss!20117 lt!319357 separatorToken!297) e!555254)))

(declare-fun b!844043 () Bool)

(assert (=> b!844043 (= e!555254 (++!2345 (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319357))) (list!3561 (charsOf!975 separatorToken!297))) (printWithSeparatorTokenList!18 thiss!20117 (t!93955 lt!319357) separatorToken!297)))))

(declare-fun b!844044 () Bool)

(assert (=> b!844044 (= e!555254 Nil!9065)))

(assert (= (and d!262790 c!137452) b!844043))

(assert (= (and d!262790 (not c!137452)) b!844044))

(assert (=> b!844043 m!1077281))

(assert (=> b!844043 m!1077299))

(assert (=> b!844043 m!1077935))

(assert (=> b!844043 m!1077275))

(assert (=> b!844043 m!1077299))

(assert (=> b!844043 m!1077277))

(declare-fun m!1078649 () Bool)

(assert (=> b!844043 m!1078649))

(assert (=> b!844043 m!1078649))

(assert (=> b!844043 m!1077935))

(declare-fun m!1078651 () Bool)

(assert (=> b!844043 m!1078651))

(assert (=> b!844043 m!1077275))

(assert (=> b!844043 m!1077277))

(assert (=> b!844043 m!1077281))

(assert (=> d!262410 d!262790))

(declare-fun lt!319686 () List!9081)

(declare-fun e!555256 () Bool)

(declare-fun b!844048 () Bool)

(assert (=> b!844048 (= e!555256 (or (not (= (printList!460 thiss!20117 (t!93955 lt!319387)) Nil!9065)) (= lt!319686 (list!3561 (charsOf!975 (h!14468 lt!319387))))))))

(declare-fun b!844047 () Bool)

(declare-fun res!385823 () Bool)

(assert (=> b!844047 (=> (not res!385823) (not e!555256))))

(assert (=> b!844047 (= res!385823 (= (size!7565 lt!319686) (+ (size!7565 (list!3561 (charsOf!975 (h!14468 lt!319387)))) (size!7565 (printList!460 thiss!20117 (t!93955 lt!319387))))))))

(declare-fun b!844046 () Bool)

(declare-fun e!555255 () List!9081)

(assert (=> b!844046 (= e!555255 (Cons!9065 (h!14466 (list!3561 (charsOf!975 (h!14468 lt!319387)))) (++!2345 (t!93953 (list!3561 (charsOf!975 (h!14468 lt!319387)))) (printList!460 thiss!20117 (t!93955 lt!319387)))))))

(declare-fun d!262792 () Bool)

(assert (=> d!262792 e!555256))

(declare-fun res!385822 () Bool)

(assert (=> d!262792 (=> (not res!385822) (not e!555256))))

(assert (=> d!262792 (= res!385822 (= (content!1336 lt!319686) ((_ map or) (content!1336 (list!3561 (charsOf!975 (h!14468 lt!319387)))) (content!1336 (printList!460 thiss!20117 (t!93955 lt!319387))))))))

(assert (=> d!262792 (= lt!319686 e!555255)))

(declare-fun c!137453 () Bool)

(assert (=> d!262792 (= c!137453 ((_ is Nil!9065) (list!3561 (charsOf!975 (h!14468 lt!319387)))))))

(assert (=> d!262792 (= (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319387))) (printList!460 thiss!20117 (t!93955 lt!319387))) lt!319686)))

(declare-fun b!844045 () Bool)

(assert (=> b!844045 (= e!555255 (printList!460 thiss!20117 (t!93955 lt!319387)))))

(assert (= (and d!262792 c!137453) b!844045))

(assert (= (and d!262792 (not c!137453)) b!844046))

(assert (= (and d!262792 res!385822) b!844047))

(assert (= (and b!844047 res!385823) b!844048))

(declare-fun m!1078653 () Bool)

(assert (=> b!844047 m!1078653))

(assert (=> b!844047 m!1077257))

(declare-fun m!1078655 () Bool)

(assert (=> b!844047 m!1078655))

(assert (=> b!844047 m!1077259))

(declare-fun m!1078657 () Bool)

(assert (=> b!844047 m!1078657))

(assert (=> b!844046 m!1077259))

(declare-fun m!1078659 () Bool)

(assert (=> b!844046 m!1078659))

(declare-fun m!1078661 () Bool)

(assert (=> d!262792 m!1078661))

(assert (=> d!262792 m!1077257))

(declare-fun m!1078663 () Bool)

(assert (=> d!262792 m!1078663))

(assert (=> d!262792 m!1077259))

(declare-fun m!1078665 () Bool)

(assert (=> d!262792 m!1078665))

(assert (=> b!843337 d!262792))

(declare-fun d!262794 () Bool)

(assert (=> d!262794 (= (list!3561 (charsOf!975 (h!14468 lt!319387))) (list!3564 (c!137333 (charsOf!975 (h!14468 lt!319387)))))))

(declare-fun bs!230225 () Bool)

(assert (= bs!230225 d!262794))

(declare-fun m!1078667 () Bool)

(assert (=> bs!230225 m!1078667))

(assert (=> b!843337 d!262794))

(declare-fun d!262796 () Bool)

(declare-fun lt!319687 () BalanceConc!6026)

(assert (=> d!262796 (= (list!3561 lt!319687) (originalCharacters!2256 (h!14468 lt!319387)))))

(assert (=> d!262796 (= lt!319687 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387)))) (value!55149 (h!14468 lt!319387))))))

(assert (=> d!262796 (= (charsOf!975 (h!14468 lt!319387)) lt!319687)))

(declare-fun b_lambda!27855 () Bool)

(assert (=> (not b_lambda!27855) (not d!262796)))

(declare-fun t!94087 () Bool)

(declare-fun tb!58451 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94087) tb!58451))

(declare-fun b!844049 () Bool)

(declare-fun e!555257 () Bool)

(declare-fun tp!265494 () Bool)

(assert (=> b!844049 (= e!555257 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387)))) (value!55149 (h!14468 lt!319387))))) tp!265494))))

(declare-fun result!67776 () Bool)

(assert (=> tb!58451 (= result!67776 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387)))) (value!55149 (h!14468 lt!319387)))) e!555257))))

(assert (= tb!58451 b!844049))

(declare-fun m!1078669 () Bool)

(assert (=> b!844049 m!1078669))

(declare-fun m!1078671 () Bool)

(assert (=> tb!58451 m!1078671))

(assert (=> d!262796 t!94087))

(declare-fun b_and!73273 () Bool)

(assert (= b_and!73267 (and (=> t!94087 result!67776) b_and!73273)))

(declare-fun tb!58453 () Bool)

(declare-fun t!94089 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94089) tb!58453))

(declare-fun result!67778 () Bool)

(assert (= result!67778 result!67776))

(assert (=> d!262796 t!94089))

(declare-fun b_and!73275 () Bool)

(assert (= b_and!73271 (and (=> t!94089 result!67778) b_and!73275)))

(declare-fun tb!58455 () Bool)

(declare-fun t!94091 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94091) tb!58455))

(declare-fun result!67780 () Bool)

(assert (= result!67780 result!67776))

(assert (=> d!262796 t!94091))

(declare-fun b_and!73277 () Bool)

(assert (= b_and!73263 (and (=> t!94091 result!67780) b_and!73277)))

(declare-fun t!94093 () Bool)

(declare-fun tb!58457 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94093) tb!58457))

(declare-fun result!67782 () Bool)

(assert (= result!67782 result!67776))

(assert (=> d!262796 t!94093))

(declare-fun b_and!73279 () Bool)

(assert (= b_and!73265 (and (=> t!94093 result!67782) b_and!73279)))

(declare-fun tb!58459 () Bool)

(declare-fun t!94095 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94095) tb!58459))

(declare-fun result!67784 () Bool)

(assert (= result!67784 result!67776))

(assert (=> d!262796 t!94095))

(declare-fun b_and!73281 () Bool)

(assert (= b_and!73269 (and (=> t!94095 result!67784) b_and!73281)))

(declare-fun m!1078673 () Bool)

(assert (=> d!262796 m!1078673))

(declare-fun m!1078675 () Bool)

(assert (=> d!262796 m!1078675))

(assert (=> b!843337 d!262796))

(declare-fun d!262798 () Bool)

(declare-fun c!137454 () Bool)

(assert (=> d!262798 (= c!137454 ((_ is Cons!9067) (t!93955 lt!319387)))))

(declare-fun e!555258 () List!9081)

(assert (=> d!262798 (= (printList!460 thiss!20117 (t!93955 lt!319387)) e!555258)))

(declare-fun b!844050 () Bool)

(assert (=> b!844050 (= e!555258 (++!2345 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319387)))) (printList!460 thiss!20117 (t!93955 (t!93955 lt!319387)))))))

(declare-fun b!844051 () Bool)

(assert (=> b!844051 (= e!555258 Nil!9065)))

(assert (= (and d!262798 c!137454) b!844050))

(assert (= (and d!262798 (not c!137454)) b!844051))

(declare-fun m!1078677 () Bool)

(assert (=> b!844050 m!1078677))

(assert (=> b!844050 m!1078677))

(declare-fun m!1078679 () Bool)

(assert (=> b!844050 m!1078679))

(declare-fun m!1078681 () Bool)

(assert (=> b!844050 m!1078681))

(assert (=> b!844050 m!1078679))

(assert (=> b!844050 m!1078681))

(declare-fun m!1078683 () Bool)

(assert (=> b!844050 m!1078683))

(assert (=> b!843337 d!262798))

(declare-fun d!262800 () Bool)

(declare-fun charsToBigInt!1 (List!9080) Int)

(assert (=> d!262800 (= (inv!17 (value!55149 (h!14468 l!5107))) (= (charsToBigInt!1 (text!12810 (value!55149 (h!14468 l!5107)))) (value!55141 (value!55149 (h!14468 l!5107)))))))

(declare-fun bs!230226 () Bool)

(assert (= bs!230226 d!262800))

(declare-fun m!1078685 () Bool)

(assert (=> bs!230226 m!1078685))

(assert (=> b!843531 d!262800))

(declare-fun d!262802 () Bool)

(declare-fun lt!319690 () BalanceConc!6026)

(assert (=> d!262802 (= (list!3561 lt!319690) (printList!460 thiss!20117 (list!3562 (singletonSeq!513 separatorToken!297))))))

(declare-fun printTailRec!462 (LexerInterface!1502 BalanceConc!6028 Int BalanceConc!6026) BalanceConc!6026)

(assert (=> d!262802 (= lt!319690 (printTailRec!462 thiss!20117 (singletonSeq!513 separatorToken!297) 0 (BalanceConc!6027 Empty!3006)))))

(assert (=> d!262802 (= (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)) lt!319690)))

(declare-fun bs!230227 () Bool)

(assert (= bs!230227 d!262802))

(declare-fun m!1078687 () Bool)

(assert (=> bs!230227 m!1078687))

(assert (=> bs!230227 m!1077743))

(assert (=> bs!230227 m!1077745))

(assert (=> bs!230227 m!1077745))

(declare-fun m!1078689 () Bool)

(assert (=> bs!230227 m!1078689))

(assert (=> bs!230227 m!1077743))

(declare-fun m!1078691 () Bool)

(assert (=> bs!230227 m!1078691))

(assert (=> d!262524 d!262802))

(declare-fun d!262804 () Bool)

(declare-fun e!555302 () Bool)

(assert (=> d!262804 e!555302))

(declare-fun res!385857 () Bool)

(assert (=> d!262804 (=> (not res!385857) (not e!555302))))

(declare-fun e!555301 () Bool)

(assert (=> d!262804 (= res!385857 e!555301)))

(declare-fun c!137460 () Bool)

(declare-fun lt!319723 () tuple2!10336)

(assert (=> d!262804 (= c!137460 (> (size!7567 (_1!5994 lt!319723)) 0))))

(declare-fun lexTailRecV2!287 (LexerInterface!1502 List!9082 BalanceConc!6026 BalanceConc!6026 BalanceConc!6026 BalanceConc!6028) tuple2!10336)

(assert (=> d!262804 (= lt!319723 (lexTailRecV2!287 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)) (BalanceConc!6027 Empty!3006) (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)) (BalanceConc!6029 Empty!3007)))))

(assert (=> d!262804 (= (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))) lt!319723)))

(declare-fun b!844105 () Bool)

(declare-fun e!555300 () Bool)

(assert (=> b!844105 (= e!555301 e!555300)))

(declare-fun res!385855 () Bool)

(assert (=> b!844105 (= res!385855 (< (size!7566 (_2!5994 lt!319723)) (size!7566 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))

(assert (=> b!844105 (=> (not res!385855) (not e!555300))))

(declare-fun b!844106 () Bool)

(declare-fun isEmpty!5349 (BalanceConc!6028) Bool)

(assert (=> b!844106 (= e!555300 (not (isEmpty!5349 (_1!5994 lt!319723))))))

(declare-fun b!844107 () Bool)

(declare-datatypes ((tuple2!10340 0))(
  ( (tuple2!10341 (_1!5996 List!9083) (_2!5996 List!9081)) )
))
(declare-fun lexList!380 (LexerInterface!1502 List!9082 List!9081) tuple2!10340)

(assert (=> b!844107 (= e!555302 (= (list!3561 (_2!5994 lt!319723)) (_2!5996 (lexList!380 thiss!20117 rules!2621 (list!3561 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))))

(declare-fun b!844108 () Bool)

(declare-fun res!385856 () Bool)

(assert (=> b!844108 (=> (not res!385856) (not e!555302))))

(assert (=> b!844108 (= res!385856 (= (list!3562 (_1!5994 lt!319723)) (_1!5996 (lexList!380 thiss!20117 rules!2621 (list!3561 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))))

(declare-fun b!844109 () Bool)

(assert (=> b!844109 (= e!555301 (= (_2!5994 lt!319723) (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))))

(assert (= (and d!262804 c!137460) b!844105))

(assert (= (and d!262804 (not c!137460)) b!844109))

(assert (= (and b!844105 res!385855) b!844106))

(assert (= (and d!262804 res!385857) b!844108))

(assert (= (and b!844108 res!385856) b!844107))

(declare-fun m!1078819 () Bool)

(assert (=> b!844107 m!1078819))

(assert (=> b!844107 m!1077751))

(declare-fun m!1078821 () Bool)

(assert (=> b!844107 m!1078821))

(assert (=> b!844107 m!1078821))

(declare-fun m!1078823 () Bool)

(assert (=> b!844107 m!1078823))

(declare-fun m!1078825 () Bool)

(assert (=> d!262804 m!1078825))

(assert (=> d!262804 m!1077751))

(assert (=> d!262804 m!1077751))

(declare-fun m!1078827 () Bool)

(assert (=> d!262804 m!1078827))

(declare-fun m!1078829 () Bool)

(assert (=> b!844105 m!1078829))

(assert (=> b!844105 m!1077751))

(declare-fun m!1078831 () Bool)

(assert (=> b!844105 m!1078831))

(declare-fun m!1078833 () Bool)

(assert (=> b!844108 m!1078833))

(assert (=> b!844108 m!1077751))

(assert (=> b!844108 m!1078821))

(assert (=> b!844108 m!1078821))

(assert (=> b!844108 m!1078823))

(declare-fun m!1078835 () Bool)

(assert (=> b!844106 m!1078835))

(assert (=> d!262524 d!262804))

(declare-fun d!262848 () Bool)

(assert (=> d!262848 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))) (list!3566 (c!137334 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))))

(declare-fun bs!230258 () Bool)

(assert (= bs!230258 d!262848))

(declare-fun m!1078837 () Bool)

(assert (=> bs!230258 m!1078837))

(assert (=> d!262524 d!262848))

(assert (=> d!262524 d!262414))

(declare-fun d!262850 () Bool)

(declare-fun lt!319726 () Int)

(declare-fun size!7572 (List!9083) Int)

(assert (=> d!262850 (= lt!319726 (size!7572 (list!3562 (_1!5994 lt!319543))))))

(declare-fun size!7573 (Conc!3007) Int)

(assert (=> d!262850 (= lt!319726 (size!7573 (c!137334 (_1!5994 lt!319543))))))

(assert (=> d!262850 (= (size!7567 (_1!5994 lt!319543)) lt!319726)))

(declare-fun bs!230259 () Bool)

(assert (= bs!230259 d!262850))

(declare-fun m!1078839 () Bool)

(assert (=> bs!230259 m!1078839))

(assert (=> bs!230259 m!1078839))

(declare-fun m!1078841 () Bool)

(assert (=> bs!230259 m!1078841))

(declare-fun m!1078843 () Bool)

(assert (=> bs!230259 m!1078843))

(assert (=> d!262524 d!262850))

(declare-fun d!262852 () Bool)

(assert (=> d!262852 (= (list!3562 (singletonSeq!513 separatorToken!297)) (list!3566 (c!137334 (singletonSeq!513 separatorToken!297))))))

(declare-fun bs!230260 () Bool)

(assert (= bs!230260 d!262852))

(declare-fun m!1078845 () Bool)

(assert (=> bs!230260 m!1078845))

(assert (=> d!262524 d!262852))

(declare-fun d!262854 () Bool)

(declare-fun e!555305 () Bool)

(assert (=> d!262854 e!555305))

(declare-fun res!385860 () Bool)

(assert (=> d!262854 (=> (not res!385860) (not e!555305))))

(declare-fun lt!319729 () BalanceConc!6028)

(assert (=> d!262854 (= res!385860 (= (list!3562 lt!319729) (Cons!9067 separatorToken!297 Nil!9067)))))

(declare-fun singleton!244 (Token!3066) BalanceConc!6028)

(assert (=> d!262854 (= lt!319729 (singleton!244 separatorToken!297))))

(assert (=> d!262854 (= (singletonSeq!513 separatorToken!297) lt!319729)))

(declare-fun b!844112 () Bool)

(assert (=> b!844112 (= e!555305 (isBalanced!816 (c!137334 lt!319729)))))

(assert (= (and d!262854 res!385860) b!844112))

(declare-fun m!1078847 () Bool)

(assert (=> d!262854 m!1078847))

(declare-fun m!1078849 () Bool)

(assert (=> d!262854 m!1078849))

(declare-fun m!1078851 () Bool)

(assert (=> b!844112 m!1078851))

(assert (=> d!262524 d!262854))

(declare-fun d!262856 () Bool)

(declare-fun c!137461 () Bool)

(assert (=> d!262856 (= c!137461 ((_ is Cons!9067) ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)))))

(declare-fun e!555306 () List!9081)

(assert (=> d!262856 (= (printList!460 thiss!20117 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)) e!555306)))

(declare-fun b!844113 () Bool)

(assert (=> b!844113 (= e!555306 (++!2345 (list!3561 (charsOf!975 (h!14468 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)))) (printList!460 thiss!20117 (t!93955 ($colon$colon!73 (withSeparatorTokenList!32 thiss!20117 (t!93955 lt!319357) separatorToken!297) separatorToken!297)))))))

(declare-fun b!844114 () Bool)

(assert (=> b!844114 (= e!555306 Nil!9065)))

(assert (= (and d!262856 c!137461) b!844113))

(assert (= (and d!262856 (not c!137461)) b!844114))

(declare-fun m!1078853 () Bool)

(assert (=> b!844113 m!1078853))

(assert (=> b!844113 m!1078853))

(declare-fun m!1078855 () Bool)

(assert (=> b!844113 m!1078855))

(declare-fun m!1078857 () Bool)

(assert (=> b!844113 m!1078857))

(assert (=> b!844113 m!1078855))

(assert (=> b!844113 m!1078857))

(declare-fun m!1078859 () Bool)

(assert (=> b!844113 m!1078859))

(assert (=> b!843335 d!262856))

(assert (=> b!843335 d!262554))

(assert (=> b!843335 d!262572))

(declare-fun d!262858 () Bool)

(assert (=> d!262858 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297) rules!2621)))

(declare-fun lt!319756 () Unit!13509)

(declare-fun lt!319757 () Unit!13509)

(assert (=> d!262858 (= lt!319756 lt!319757)))

(assert (=> d!262858 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))

(assert (=> d!262858 (= lt!319757 (withSeparatorTokenListPreservesRulesProduceTokens!32 thiss!20117 rules!2621 lt!319357 separatorToken!297))))

(assert (=> d!262858 true))

(declare-fun _$39!196 () Unit!13509)

(assert (=> d!262858 (= (choose!4971 thiss!20117 rules!2621 lt!319357 separatorToken!297) _$39!196)))

(declare-fun bs!230283 () Bool)

(assert (= bs!230283 d!262858))

(assert (=> bs!230283 m!1077215))

(assert (=> bs!230283 m!1077215))

(assert (=> bs!230283 m!1077719))

(assert (=> bs!230283 m!1077215))

(assert (=> bs!230283 m!1077721))

(assert (=> bs!230283 m!1077231))

(assert (=> d!262490 d!262858))

(assert (=> d!262490 d!262414))

(declare-fun d!262916 () Bool)

(assert (=> d!262916 (= (isEmpty!5344 (originalCharacters!2256 separatorToken!297)) ((_ is Nil!9065) (originalCharacters!2256 separatorToken!297)))))

(assert (=> d!262480 d!262916))

(declare-fun b!844160 () Bool)

(declare-fun res!385879 () Bool)

(declare-fun e!555335 () Bool)

(assert (=> b!844160 (=> res!385879 e!555335)))

(assert (=> b!844160 (= res!385879 (not ((_ is IntegerValue!5300) (value!55149 (h!14468 (t!93955 l!5107))))))))

(declare-fun e!555334 () Bool)

(assert (=> b!844160 (= e!555334 e!555335)))

(declare-fun d!262918 () Bool)

(declare-fun c!137472 () Bool)

(assert (=> d!262918 (= c!137472 ((_ is IntegerValue!5298) (value!55149 (h!14468 (t!93955 l!5107)))))))

(declare-fun e!555336 () Bool)

(assert (=> d!262918 (= (inv!21 (value!55149 (h!14468 (t!93955 l!5107)))) e!555336)))

(declare-fun b!844161 () Bool)

(assert (=> b!844161 (= e!555334 (inv!17 (value!55149 (h!14468 (t!93955 l!5107)))))))

(declare-fun b!844162 () Bool)

(assert (=> b!844162 (= e!555335 (inv!15 (value!55149 (h!14468 (t!93955 l!5107)))))))

(declare-fun b!844163 () Bool)

(assert (=> b!844163 (= e!555336 e!555334)))

(declare-fun c!137473 () Bool)

(assert (=> b!844163 (= c!137473 ((_ is IntegerValue!5299) (value!55149 (h!14468 (t!93955 l!5107)))))))

(declare-fun b!844164 () Bool)

(assert (=> b!844164 (= e!555336 (inv!16 (value!55149 (h!14468 (t!93955 l!5107)))))))

(assert (= (and d!262918 c!137472) b!844164))

(assert (= (and d!262918 (not c!137472)) b!844163))

(assert (= (and b!844163 c!137473) b!844161))

(assert (= (and b!844163 (not c!137473)) b!844160))

(assert (= (and b!844160 (not res!385879)) b!844162))

(declare-fun m!1079035 () Bool)

(assert (=> b!844161 m!1079035))

(declare-fun m!1079037 () Bool)

(assert (=> b!844162 m!1079037))

(declare-fun m!1079039 () Bool)

(assert (=> b!844164 m!1079039))

(assert (=> b!843691 d!262918))

(declare-fun d!262920 () Bool)

(assert (=> d!262920 (= (list!3561 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))) (list!3564 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))))))

(declare-fun bs!230284 () Bool)

(assert (= bs!230284 d!262920))

(declare-fun m!1079041 () Bool)

(assert (=> bs!230284 m!1079041))

(assert (=> b!843453 d!262920))

(declare-fun d!262922 () Bool)

(declare-fun res!385880 () Bool)

(declare-fun e!555338 () Bool)

(assert (=> d!262922 (=> res!385880 e!555338)))

(assert (=> d!262922 (= res!385880 (or (not ((_ is Cons!9067) (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))) (not ((_ is Cons!9067) (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))))))))

(assert (=> d!262922 (= (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))) rules!2621) e!555338)))

(declare-fun b!844165 () Bool)

(declare-fun e!555337 () Bool)

(assert (=> b!844165 (= e!555338 e!555337)))

(declare-fun res!385881 () Bool)

(assert (=> b!844165 (=> (not res!385881) (not e!555337))))

(assert (=> b!844165 (= res!385881 (separableTokensPredicate!42 thiss!20117 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358)))) (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))) rules!2621))))

(declare-fun lt!319764 () Unit!13509)

(declare-fun Unit!13535 () Unit!13509)

(assert (=> b!844165 (= lt!319764 Unit!13535)))

(assert (=> b!844165 (> (size!7566 (charsOf!975 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))))) 0)))

(declare-fun lt!319758 () Unit!13509)

(declare-fun Unit!13536 () Unit!13509)

(assert (=> b!844165 (= lt!319758 Unit!13536)))

(assert (=> b!844165 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))))))

(declare-fun lt!319760 () Unit!13509)

(declare-fun Unit!13537 () Unit!13509)

(assert (=> b!844165 (= lt!319760 Unit!13537)))

(assert (=> b!844165 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358)))))))

(declare-fun lt!319759 () Unit!13509)

(declare-fun lt!319763 () Unit!13509)

(assert (=> b!844165 (= lt!319759 lt!319763)))

(assert (=> b!844165 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))))))

(assert (=> b!844165 (= lt!319763 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))) (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358)))))))))

(declare-fun lt!319761 () Unit!13509)

(declare-fun lt!319762 () Unit!13509)

(assert (=> b!844165 (= lt!319761 lt!319762)))

(assert (=> b!844165 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358)))))))

(assert (=> b!844165 (= lt!319762 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))) (h!14468 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))))))

(declare-fun b!844166 () Bool)

(assert (=> b!844166 (= e!555337 (tokensListTwoByTwoPredicateSeparableList!24 thiss!20117 (Cons!9067 (h!14468 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358))))) (t!93955 (t!93955 (Cons!9067 (h!14468 (t!93955 lt!319358)) (t!93955 (t!93955 lt!319358)))))) rules!2621))))

(assert (= (and d!262922 (not res!385880)) b!844165))

(assert (= (and b!844165 res!385881) b!844166))

(declare-fun m!1079043 () Bool)

(assert (=> b!844165 m!1079043))

(declare-fun m!1079045 () Bool)

(assert (=> b!844165 m!1079045))

(declare-fun m!1079047 () Bool)

(assert (=> b!844165 m!1079047))

(declare-fun m!1079049 () Bool)

(assert (=> b!844165 m!1079049))

(assert (=> b!844165 m!1079047))

(declare-fun m!1079051 () Bool)

(assert (=> b!844165 m!1079051))

(declare-fun m!1079053 () Bool)

(assert (=> b!844165 m!1079053))

(declare-fun m!1079055 () Bool)

(assert (=> b!844165 m!1079055))

(declare-fun m!1079057 () Bool)

(assert (=> b!844166 m!1079057))

(assert (=> b!843480 d!262922))

(declare-fun bs!230285 () Bool)

(declare-fun d!262924 () Bool)

(assert (= bs!230285 (and d!262924 d!262782)))

(declare-fun lambda!25133 () Int)

(assert (=> bs!230285 (= lambda!25133 lambda!25119)))

(declare-fun bs!230286 () Bool)

(assert (= bs!230286 (and d!262924 b!843281)))

(assert (=> bs!230286 (not (= lambda!25133 lambda!25082))))

(declare-fun bs!230287 () Bool)

(assert (= bs!230287 (and d!262924 d!262522)))

(assert (=> bs!230287 (= lambda!25133 lambda!25102)))

(declare-fun bs!230288 () Bool)

(assert (= bs!230288 (and d!262924 d!262786)))

(assert (=> bs!230288 (= lambda!25133 lambda!25120)))

(declare-fun bs!230289 () Bool)

(assert (= bs!230289 (and d!262924 d!262416)))

(assert (=> bs!230289 (= lambda!25133 lambda!25088)))

(declare-fun bs!230290 () Bool)

(assert (= bs!230290 (and d!262924 d!262436)))

(assert (=> bs!230290 (= lambda!25133 lambda!25092)))

(declare-fun bs!230291 () Bool)

(assert (= bs!230291 (and d!262924 d!262694)))

(assert (=> bs!230291 (= lambda!25133 lambda!25107)))

(declare-fun bs!230292 () Bool)

(assert (= bs!230292 (and d!262924 d!262764)))

(assert (=> bs!230292 (= lambda!25133 lambda!25118)))

(declare-fun bs!230293 () Bool)

(assert (= bs!230293 (and d!262924 d!262456)))

(assert (=> bs!230293 (= lambda!25133 lambda!25101)))

(declare-fun bs!230294 () Bool)

(assert (= bs!230294 (and d!262924 d!262592)))

(assert (=> bs!230294 (= lambda!25133 lambda!25103)))

(declare-fun bs!230295 () Bool)

(assert (= bs!230295 (and d!262924 d!262716)))

(assert (=> bs!230295 (= lambda!25133 lambda!25111)))

(declare-fun b!844171 () Bool)

(declare-fun e!555343 () Bool)

(assert (=> b!844171 (= e!555343 true)))

(declare-fun b!844170 () Bool)

(declare-fun e!555342 () Bool)

(assert (=> b!844170 (= e!555342 e!555343)))

(declare-fun b!844169 () Bool)

(declare-fun e!555341 () Bool)

(assert (=> b!844169 (= e!555341 e!555342)))

(assert (=> d!262924 e!555341))

(assert (= b!844170 b!844171))

(assert (= b!844169 b!844170))

(assert (= (and d!262924 ((_ is Cons!9066) rules!2621)) b!844169))

(assert (=> b!844171 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25133))))

(assert (=> b!844171 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4192 order!5769 lambda!25133))))

(assert (=> d!262924 true))

(declare-fun lt!319765 () Bool)

(assert (=> d!262924 (= lt!319765 (forall!2121 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297) lambda!25133))))

(declare-fun e!555339 () Bool)

(assert (=> d!262924 (= lt!319765 e!555339)))

(declare-fun res!385883 () Bool)

(assert (=> d!262924 (=> res!385883 e!555339)))

(assert (=> d!262924 (= res!385883 (not ((_ is Cons!9067) (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!262924 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262924 (= (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297)) lt!319765)))

(declare-fun b!844167 () Bool)

(declare-fun e!555340 () Bool)

(assert (=> b!844167 (= e!555339 e!555340)))

(declare-fun res!385882 () Bool)

(assert (=> b!844167 (=> (not res!385882) (not e!555340))))

(assert (=> b!844167 (= res!385882 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!844168 () Bool)

(assert (=> b!844168 (= e!555340 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (t!93955 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!262924 (not res!385883)) b!844167))

(assert (= (and b!844167 res!385882) b!844168))

(assert (=> d!262924 m!1077209))

(declare-fun m!1079059 () Bool)

(assert (=> d!262924 m!1079059))

(assert (=> d!262924 m!1077187))

(declare-fun m!1079061 () Bool)

(assert (=> b!844167 m!1079061))

(declare-fun m!1079063 () Bool)

(assert (=> b!844168 m!1079063))

(assert (=> d!262426 d!262924))

(assert (=> d!262426 d!262424))

(declare-fun d!262926 () Bool)

(assert (=> d!262926 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!262926 true))

(declare-fun _$32!298 () Unit!13509)

(assert (=> d!262926 (= (choose!4970 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!298)))

(declare-fun bs!230305 () Bool)

(assert (= bs!230305 d!262926))

(assert (=> bs!230305 m!1077209))

(assert (=> bs!230305 m!1077209))

(assert (=> bs!230305 m!1077435))

(assert (=> d!262426 d!262926))

(assert (=> d!262426 d!262414))

(declare-fun bs!230306 () Bool)

(declare-fun d!262960 () Bool)

(assert (= bs!230306 (and d!262960 d!262696)))

(declare-fun lambda!25137 () Int)

(assert (=> bs!230306 (= (and (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (= (toValue!2721 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (= lambda!25137 lambda!25110))))

(declare-fun bs!230307 () Bool)

(assert (= bs!230307 (and d!262960 d!262762)))

(assert (=> bs!230307 (= (and (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) (= (toValue!2721 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297))))) (= lambda!25137 lambda!25117))))

(assert (=> d!262960 true))

(assert (=> d!262960 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4199 order!5775 lambda!25137))))

(assert (=> d!262960 true))

(assert (=> d!262960 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (dynLambda!4199 order!5775 lambda!25137))))

(assert (=> d!262960 (= (semiInverseModEq!655 (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (Forall!403 lambda!25137))))

(declare-fun bs!230308 () Bool)

(assert (= bs!230308 d!262960))

(declare-fun m!1079183 () Bool)

(assert (=> bs!230308 m!1079183))

(assert (=> d!262408 d!262960))

(assert (=> d!262518 d!262716))

(assert (=> d!262518 d!262410))

(declare-fun d!262962 () Bool)

(assert (=> d!262962 (rulesProduceEachTokenIndividuallyList!390 thiss!20117 rules!2621 (withSeparatorTokenList!32 thiss!20117 lt!319357 separatorToken!297))))

(assert (=> d!262962 true))

(declare-fun _$32!299 () Unit!13509)

(assert (=> d!262962 (= (choose!4970 thiss!20117 rules!2621 lt!319357 separatorToken!297) _$32!299)))

(declare-fun bs!230309 () Bool)

(assert (= bs!230309 d!262962))

(assert (=> bs!230309 m!1077215))

(assert (=> bs!230309 m!1077215))

(assert (=> bs!230309 m!1077721))

(assert (=> d!262518 d!262962))

(assert (=> d!262518 d!262414))

(declare-fun d!262964 () Bool)

(declare-fun lt!319820 () Bool)

(declare-fun e!555359 () Bool)

(assert (=> d!262964 (= lt!319820 e!555359)))

(declare-fun res!385910 () Bool)

(assert (=> d!262964 (=> (not res!385910) (not e!555359))))

(assert (=> d!262964 (= res!385910 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 l!5107)))))) (list!3562 (singletonSeq!513 (h!14468 l!5107)))))))

(declare-fun e!555360 () Bool)

(assert (=> d!262964 (= lt!319820 e!555360)))

(declare-fun res!385909 () Bool)

(assert (=> d!262964 (=> (not res!385909) (not e!555360))))

(declare-fun lt!319821 () tuple2!10336)

(assert (=> d!262964 (= res!385909 (= (size!7567 (_1!5994 lt!319821)) 1))))

(assert (=> d!262964 (= lt!319821 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 l!5107)))))))

(assert (=> d!262964 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262964 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 l!5107)) lt!319820)))

(declare-fun b!844198 () Bool)

(declare-fun res!385908 () Bool)

(assert (=> b!844198 (=> (not res!385908) (not e!555360))))

(assert (=> b!844198 (= res!385908 (= (apply!1831 (_1!5994 lt!319821) 0) (h!14468 l!5107)))))

(declare-fun b!844199 () Bool)

(assert (=> b!844199 (= e!555360 (isEmpty!5345 (_2!5994 lt!319821)))))

(declare-fun b!844200 () Bool)

(assert (=> b!844200 (= e!555359 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 l!5107)))))))))

(assert (= (and d!262964 res!385909) b!844198))

(assert (= (and b!844198 res!385908) b!844199))

(assert (= (and d!262964 res!385910) b!844200))

(assert (=> d!262964 m!1077187))

(declare-fun m!1079201 () Bool)

(assert (=> d!262964 m!1079201))

(declare-fun m!1079205 () Bool)

(assert (=> d!262964 m!1079205))

(declare-fun m!1079207 () Bool)

(assert (=> d!262964 m!1079207))

(declare-fun m!1079211 () Bool)

(assert (=> d!262964 m!1079211))

(assert (=> d!262964 m!1079201))

(assert (=> d!262964 m!1079201))

(declare-fun m!1079215 () Bool)

(assert (=> d!262964 m!1079215))

(assert (=> d!262964 m!1079215))

(declare-fun m!1079219 () Bool)

(assert (=> d!262964 m!1079219))

(declare-fun m!1079221 () Bool)

(assert (=> b!844198 m!1079221))

(declare-fun m!1079225 () Bool)

(assert (=> b!844199 m!1079225))

(assert (=> b!844200 m!1079201))

(assert (=> b!844200 m!1079201))

(assert (=> b!844200 m!1079215))

(assert (=> b!844200 m!1079215))

(assert (=> b!844200 m!1079219))

(declare-fun m!1079227 () Bool)

(assert (=> b!844200 m!1079227))

(assert (=> b!843438 d!262964))

(declare-fun lt!319822 () List!9081)

(declare-fun e!555362 () Bool)

(declare-fun b!844204 () Bool)

(assert (=> b!844204 (= e!555362 (or (not (= (printList!460 thiss!20117 (t!93955 lt!319428)) Nil!9065)) (= lt!319822 (list!3561 (charsOf!975 (h!14468 lt!319428))))))))

(declare-fun b!844203 () Bool)

(declare-fun res!385912 () Bool)

(assert (=> b!844203 (=> (not res!385912) (not e!555362))))

(assert (=> b!844203 (= res!385912 (= (size!7565 lt!319822) (+ (size!7565 (list!3561 (charsOf!975 (h!14468 lt!319428)))) (size!7565 (printList!460 thiss!20117 (t!93955 lt!319428))))))))

(declare-fun b!844202 () Bool)

(declare-fun e!555361 () List!9081)

(assert (=> b!844202 (= e!555361 (Cons!9065 (h!14466 (list!3561 (charsOf!975 (h!14468 lt!319428)))) (++!2345 (t!93953 (list!3561 (charsOf!975 (h!14468 lt!319428)))) (printList!460 thiss!20117 (t!93955 lt!319428)))))))

(declare-fun d!262968 () Bool)

(assert (=> d!262968 e!555362))

(declare-fun res!385911 () Bool)

(assert (=> d!262968 (=> (not res!385911) (not e!555362))))

(assert (=> d!262968 (= res!385911 (= (content!1336 lt!319822) ((_ map or) (content!1336 (list!3561 (charsOf!975 (h!14468 lt!319428)))) (content!1336 (printList!460 thiss!20117 (t!93955 lt!319428))))))))

(assert (=> d!262968 (= lt!319822 e!555361)))

(declare-fun c!137477 () Bool)

(assert (=> d!262968 (= c!137477 ((_ is Nil!9065) (list!3561 (charsOf!975 (h!14468 lt!319428)))))))

(assert (=> d!262968 (= (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319428))) (printList!460 thiss!20117 (t!93955 lt!319428))) lt!319822)))

(declare-fun b!844201 () Bool)

(assert (=> b!844201 (= e!555361 (printList!460 thiss!20117 (t!93955 lt!319428)))))

(assert (= (and d!262968 c!137477) b!844201))

(assert (= (and d!262968 (not c!137477)) b!844202))

(assert (= (and d!262968 res!385911) b!844203))

(assert (= (and b!844203 res!385912) b!844204))

(declare-fun m!1079229 () Bool)

(assert (=> b!844203 m!1079229))

(assert (=> b!844203 m!1077381))

(declare-fun m!1079231 () Bool)

(assert (=> b!844203 m!1079231))

(assert (=> b!844203 m!1077383))

(declare-fun m!1079233 () Bool)

(assert (=> b!844203 m!1079233))

(assert (=> b!844202 m!1077383))

(declare-fun m!1079235 () Bool)

(assert (=> b!844202 m!1079235))

(declare-fun m!1079237 () Bool)

(assert (=> d!262968 m!1079237))

(assert (=> d!262968 m!1077381))

(declare-fun m!1079239 () Bool)

(assert (=> d!262968 m!1079239))

(assert (=> d!262968 m!1077383))

(declare-fun m!1079241 () Bool)

(assert (=> d!262968 m!1079241))

(assert (=> b!843404 d!262968))

(declare-fun d!262970 () Bool)

(assert (=> d!262970 (= (list!3561 (charsOf!975 (h!14468 lt!319428))) (list!3564 (c!137333 (charsOf!975 (h!14468 lt!319428)))))))

(declare-fun bs!230314 () Bool)

(assert (= bs!230314 d!262970))

(declare-fun m!1079245 () Bool)

(assert (=> bs!230314 m!1079245))

(assert (=> b!843404 d!262970))

(declare-fun d!262972 () Bool)

(declare-fun lt!319823 () BalanceConc!6026)

(assert (=> d!262972 (= (list!3561 lt!319823) (originalCharacters!2256 (h!14468 lt!319428)))))

(assert (=> d!262972 (= lt!319823 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428)))) (value!55149 (h!14468 lt!319428))))))

(assert (=> d!262972 (= (charsOf!975 (h!14468 lt!319428)) lt!319823)))

(declare-fun b_lambda!27875 () Bool)

(assert (=> (not b_lambda!27875) (not d!262972)))

(declare-fun tb!58511 () Bool)

(declare-fun t!94150 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94150) tb!58511))

(declare-fun b!844206 () Bool)

(declare-fun e!555364 () Bool)

(declare-fun tp!265500 () Bool)

(assert (=> b!844206 (= e!555364 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428)))) (value!55149 (h!14468 lt!319428))))) tp!265500))))

(declare-fun result!67836 () Bool)

(assert (=> tb!58511 (= result!67836 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428)))) (value!55149 (h!14468 lt!319428)))) e!555364))))

(assert (= tb!58511 b!844206))

(declare-fun m!1079251 () Bool)

(assert (=> b!844206 m!1079251))

(declare-fun m!1079253 () Bool)

(assert (=> tb!58511 m!1079253))

(assert (=> d!262972 t!94150))

(declare-fun b_and!73343 () Bool)

(assert (= b_and!73275 (and (=> t!94150 result!67836) b_and!73343)))

(declare-fun tb!58513 () Bool)

(declare-fun t!94152 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94152) tb!58513))

(declare-fun result!67838 () Bool)

(assert (= result!67838 result!67836))

(assert (=> d!262972 t!94152))

(declare-fun b_and!73345 () Bool)

(assert (= b_and!73273 (and (=> t!94152 result!67838) b_and!73345)))

(declare-fun tb!58515 () Bool)

(declare-fun t!94154 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94154) tb!58515))

(declare-fun result!67840 () Bool)

(assert (= result!67840 result!67836))

(assert (=> d!262972 t!94154))

(declare-fun b_and!73347 () Bool)

(assert (= b_and!73281 (and (=> t!94154 result!67840) b_and!73347)))

(declare-fun t!94156 () Bool)

(declare-fun tb!58517 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94156) tb!58517))

(declare-fun result!67842 () Bool)

(assert (= result!67842 result!67836))

(assert (=> d!262972 t!94156))

(declare-fun b_and!73349 () Bool)

(assert (= b_and!73277 (and (=> t!94156 result!67842) b_and!73349)))

(declare-fun t!94158 () Bool)

(declare-fun tb!58519 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94158) tb!58519))

(declare-fun result!67844 () Bool)

(assert (= result!67844 result!67836))

(assert (=> d!262972 t!94158))

(declare-fun b_and!73351 () Bool)

(assert (= b_and!73279 (and (=> t!94158 result!67844) b_and!73351)))

(declare-fun m!1079255 () Bool)

(assert (=> d!262972 m!1079255))

(declare-fun m!1079257 () Bool)

(assert (=> d!262972 m!1079257))

(assert (=> b!843404 d!262972))

(declare-fun d!262980 () Bool)

(declare-fun c!137478 () Bool)

(assert (=> d!262980 (= c!137478 ((_ is Cons!9067) (t!93955 lt!319428)))))

(declare-fun e!555365 () List!9081)

(assert (=> d!262980 (= (printList!460 thiss!20117 (t!93955 lt!319428)) e!555365)))

(declare-fun b!844207 () Bool)

(assert (=> b!844207 (= e!555365 (++!2345 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319428)))) (printList!460 thiss!20117 (t!93955 (t!93955 lt!319428)))))))

(declare-fun b!844208 () Bool)

(assert (=> b!844208 (= e!555365 Nil!9065)))

(assert (= (and d!262980 c!137478) b!844207))

(assert (= (and d!262980 (not c!137478)) b!844208))

(declare-fun m!1079259 () Bool)

(assert (=> b!844207 m!1079259))

(assert (=> b!844207 m!1079259))

(declare-fun m!1079261 () Bool)

(assert (=> b!844207 m!1079261))

(declare-fun m!1079263 () Bool)

(assert (=> b!844207 m!1079263))

(assert (=> b!844207 m!1079261))

(assert (=> b!844207 m!1079263))

(declare-fun m!1079265 () Bool)

(assert (=> b!844207 m!1079265))

(assert (=> b!843404 d!262980))

(declare-fun d!262982 () Bool)

(declare-fun lt!319824 () BalanceConc!6026)

(assert (=> d!262982 (= (list!3561 lt!319824) (originalCharacters!2256 (h!14468 (t!93955 lt!319362))))))

(assert (=> d!262982 (= lt!319824 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362))))) (value!55149 (h!14468 (t!93955 lt!319362)))))))

(assert (=> d!262982 (= (charsOf!975 (h!14468 (t!93955 lt!319362))) lt!319824)))

(declare-fun b_lambda!27877 () Bool)

(assert (=> (not b_lambda!27877) (not d!262982)))

(declare-fun t!94160 () Bool)

(declare-fun tb!58521 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94160) tb!58521))

(declare-fun b!844210 () Bool)

(declare-fun e!555368 () Bool)

(declare-fun tp!265501 () Bool)

(assert (=> b!844210 (= e!555368 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362))))) (value!55149 (h!14468 (t!93955 lt!319362)))))) tp!265501))))

(declare-fun result!67846 () Bool)

(assert (=> tb!58521 (= result!67846 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362))))) (value!55149 (h!14468 (t!93955 lt!319362))))) e!555368))))

(assert (= tb!58521 b!844210))

(declare-fun m!1079267 () Bool)

(assert (=> b!844210 m!1079267))

(declare-fun m!1079269 () Bool)

(assert (=> tb!58521 m!1079269))

(assert (=> d!262982 t!94160))

(declare-fun b_and!73353 () Bool)

(assert (= b_and!73347 (and (=> t!94160 result!67846) b_and!73353)))

(declare-fun t!94162 () Bool)

(declare-fun tb!58523 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94162) tb!58523))

(declare-fun result!67848 () Bool)

(assert (= result!67848 result!67846))

(assert (=> d!262982 t!94162))

(declare-fun b_and!73355 () Bool)

(assert (= b_and!73345 (and (=> t!94162 result!67848) b_and!73355)))

(declare-fun t!94164 () Bool)

(declare-fun tb!58525 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94164) tb!58525))

(declare-fun result!67850 () Bool)

(assert (= result!67850 result!67846))

(assert (=> d!262982 t!94164))

(declare-fun b_and!73357 () Bool)

(assert (= b_and!73343 (and (=> t!94164 result!67850) b_and!73357)))

(declare-fun tb!58527 () Bool)

(declare-fun t!94166 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94166) tb!58527))

(declare-fun result!67852 () Bool)

(assert (= result!67852 result!67846))

(assert (=> d!262982 t!94166))

(declare-fun b_and!73359 () Bool)

(assert (= b_and!73349 (and (=> t!94166 result!67852) b_and!73359)))

(declare-fun tb!58529 () Bool)

(declare-fun t!94168 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94168) tb!58529))

(declare-fun result!67854 () Bool)

(assert (= result!67854 result!67846))

(assert (=> d!262982 t!94168))

(declare-fun b_and!73361 () Bool)

(assert (= b_and!73351 (and (=> t!94168 result!67854) b_and!73361)))

(declare-fun m!1079271 () Bool)

(assert (=> d!262982 m!1079271))

(declare-fun m!1079273 () Bool)

(assert (=> d!262982 m!1079273))

(assert (=> b!843525 d!262982))

(declare-fun d!262984 () Bool)

(assert (=> d!262984 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362))))

(declare-fun lt!319825 () Unit!13509)

(assert (=> d!262984 (= lt!319825 (choose!4976 thiss!20117 rules!2621 lt!319362 (h!14468 lt!319362)))))

(assert (=> d!262984 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262984 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319362 (h!14468 lt!319362)) lt!319825)))

(declare-fun bs!230315 () Bool)

(assert (= bs!230315 d!262984))

(assert (=> bs!230315 m!1077367))

(declare-fun m!1079275 () Bool)

(assert (=> bs!230315 m!1079275))

(assert (=> bs!230315 m!1077187))

(assert (=> b!843525 d!262984))

(assert (=> b!843525 d!262520))

(declare-fun d!262986 () Bool)

(assert (=> d!262986 (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319362)))))

(declare-fun lt!319826 () Unit!13509)

(assert (=> d!262986 (= lt!319826 (choose!4976 thiss!20117 rules!2621 lt!319362 (h!14468 (t!93955 lt!319362))))))

(assert (=> d!262986 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262986 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!218 thiss!20117 rules!2621 lt!319362 (h!14468 (t!93955 lt!319362))) lt!319826)))

(declare-fun bs!230316 () Bool)

(assert (= bs!230316 d!262986))

(assert (=> bs!230316 m!1077621))

(declare-fun m!1079277 () Bool)

(assert (=> bs!230316 m!1079277))

(assert (=> bs!230316 m!1077187))

(assert (=> b!843525 d!262986))

(assert (=> b!843525 d!262546))

(declare-fun d!262988 () Bool)

(declare-fun lt!319827 () Int)

(assert (=> d!262988 (= lt!319827 (size!7565 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319362))))))))

(assert (=> d!262988 (= lt!319827 (size!7569 (c!137333 (charsOf!975 (h!14468 (t!93955 lt!319362))))))))

(assert (=> d!262988 (= (size!7566 (charsOf!975 (h!14468 (t!93955 lt!319362)))) lt!319827)))

(declare-fun bs!230317 () Bool)

(assert (= bs!230317 d!262988))

(assert (=> bs!230317 m!1077617))

(declare-fun m!1079283 () Bool)

(assert (=> bs!230317 m!1079283))

(assert (=> bs!230317 m!1079283))

(declare-fun m!1079285 () Bool)

(assert (=> bs!230317 m!1079285))

(declare-fun m!1079287 () Bool)

(assert (=> bs!230317 m!1079287))

(assert (=> b!843525 d!262988))

(declare-fun d!262992 () Bool)

(declare-fun lt!319828 () Bool)

(declare-fun e!555374 () Bool)

(assert (=> d!262992 (= lt!319828 e!555374)))

(declare-fun res!385924 () Bool)

(assert (=> d!262992 (=> (not res!385924) (not e!555374))))

(assert (=> d!262992 (= res!385924 (= (list!3562 (_1!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319362))))))) (list!3562 (singletonSeq!513 (h!14468 (t!93955 lt!319362))))))))

(declare-fun e!555375 () Bool)

(assert (=> d!262992 (= lt!319828 e!555375)))

(declare-fun res!385923 () Bool)

(assert (=> d!262992 (=> (not res!385923) (not e!555375))))

(declare-fun lt!319829 () tuple2!10336)

(assert (=> d!262992 (= res!385923 (= (size!7567 (_1!5994 lt!319829)) 1))))

(assert (=> d!262992 (= lt!319829 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319362))))))))

(assert (=> d!262992 (not (isEmpty!5340 rules!2621))))

(assert (=> d!262992 (= (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (t!93955 lt!319362))) lt!319828)))

(declare-fun b!844218 () Bool)

(declare-fun res!385922 () Bool)

(assert (=> b!844218 (=> (not res!385922) (not e!555375))))

(assert (=> b!844218 (= res!385922 (= (apply!1831 (_1!5994 lt!319829) 0) (h!14468 (t!93955 lt!319362))))))

(declare-fun b!844219 () Bool)

(assert (=> b!844219 (= e!555375 (isEmpty!5345 (_2!5994 lt!319829)))))

(declare-fun b!844220 () Bool)

(assert (=> b!844220 (= e!555374 (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 (h!14468 (t!93955 lt!319362))))))))))

(assert (= (and d!262992 res!385923) b!844218))

(assert (= (and b!844218 res!385922) b!844219))

(assert (= (and d!262992 res!385924) b!844220))

(assert (=> d!262992 m!1077187))

(declare-fun m!1079289 () Bool)

(assert (=> d!262992 m!1079289))

(declare-fun m!1079291 () Bool)

(assert (=> d!262992 m!1079291))

(declare-fun m!1079295 () Bool)

(assert (=> d!262992 m!1079295))

(declare-fun m!1079299 () Bool)

(assert (=> d!262992 m!1079299))

(assert (=> d!262992 m!1079289))

(assert (=> d!262992 m!1079289))

(declare-fun m!1079301 () Bool)

(assert (=> d!262992 m!1079301))

(assert (=> d!262992 m!1079301))

(declare-fun m!1079303 () Bool)

(assert (=> d!262992 m!1079303))

(declare-fun m!1079305 () Bool)

(assert (=> b!844218 m!1079305))

(declare-fun m!1079307 () Bool)

(assert (=> b!844219 m!1079307))

(assert (=> b!844220 m!1079289))

(assert (=> b!844220 m!1079289))

(assert (=> b!844220 m!1079301))

(assert (=> b!844220 m!1079301))

(assert (=> b!844220 m!1079303))

(declare-fun m!1079313 () Bool)

(assert (=> b!844220 m!1079313))

(assert (=> b!843525 d!262992))

(declare-fun d!262994 () Bool)

(declare-fun res!385925 () Bool)

(declare-fun e!555377 () Bool)

(assert (=> d!262994 (=> res!385925 e!555377)))

(assert (=> d!262994 (= res!385925 ((_ is Nil!9067) (t!93955 l!5107)))))

(assert (=> d!262994 (= (forall!2121 (t!93955 l!5107) lambda!25082) e!555377)))

(declare-fun b!844222 () Bool)

(declare-fun e!555378 () Bool)

(assert (=> b!844222 (= e!555377 e!555378)))

(declare-fun res!385926 () Bool)

(assert (=> b!844222 (=> (not res!385926) (not e!555378))))

(assert (=> b!844222 (= res!385926 (dynLambda!4195 lambda!25082 (h!14468 (t!93955 l!5107))))))

(declare-fun b!844223 () Bool)

(assert (=> b!844223 (= e!555378 (forall!2121 (t!93955 (t!93955 l!5107)) lambda!25082))))

(assert (= (and d!262994 (not res!385925)) b!844222))

(assert (= (and b!844222 res!385926) b!844223))

(declare-fun b_lambda!27881 () Bool)

(assert (=> (not b_lambda!27881) (not b!844222)))

(declare-fun m!1079319 () Bool)

(assert (=> b!844222 m!1079319))

(declare-fun m!1079321 () Bool)

(assert (=> b!844223 m!1079321))

(assert (=> b!843543 d!262994))

(assert (=> b!843636 d!262484))

(declare-fun d!262998 () Bool)

(declare-fun lt!319839 () Token!3066)

(declare-fun apply!1836 (List!9083 Int) Token!3066)

(assert (=> d!262998 (= lt!319839 (apply!1836 (list!3562 (_1!5994 lt!319543)) 0))))

(declare-fun apply!1837 (Conc!3007 Int) Token!3066)

(assert (=> d!262998 (= lt!319839 (apply!1837 (c!137334 (_1!5994 lt!319543)) 0))))

(declare-fun e!555389 () Bool)

(assert (=> d!262998 e!555389))

(declare-fun res!385935 () Bool)

(assert (=> d!262998 (=> (not res!385935) (not e!555389))))

(assert (=> d!262998 (= res!385935 (<= 0 0))))

(assert (=> d!262998 (= (apply!1831 (_1!5994 lt!319543) 0) lt!319839)))

(declare-fun b!844236 () Bool)

(assert (=> b!844236 (= e!555389 (< 0 (size!7567 (_1!5994 lt!319543))))))

(assert (= (and d!262998 res!385935) b!844236))

(assert (=> d!262998 m!1078839))

(assert (=> d!262998 m!1078839))

(declare-fun m!1079339 () Bool)

(assert (=> d!262998 m!1079339))

(declare-fun m!1079341 () Bool)

(assert (=> d!262998 m!1079341))

(assert (=> b!844236 m!1077747))

(assert (=> b!843651 d!262998))

(declare-fun d!263002 () Bool)

(assert (=> d!263002 (= (inv!11536 (tag!1962 (h!14467 (t!93954 rules!2621)))) (= (mod (str.len (value!55148 (tag!1962 (h!14467 (t!93954 rules!2621))))) 2) 0))))

(assert (=> b!843708 d!263002))

(declare-fun d!263004 () Bool)

(declare-fun res!385938 () Bool)

(declare-fun e!555393 () Bool)

(assert (=> d!263004 (=> (not res!385938) (not e!555393))))

(assert (=> d!263004 (= res!385938 (semiInverseModEq!655 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))))))

(assert (=> d!263004 (= (inv!11540 (transformation!1700 (h!14467 (t!93954 rules!2621)))) e!555393)))

(declare-fun b!844241 () Bool)

(assert (=> b!844241 (= e!555393 (equivClasses!622 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))))))

(assert (= (and d!263004 res!385938) b!844241))

(declare-fun m!1079347 () Bool)

(assert (=> d!263004 m!1079347))

(declare-fun m!1079349 () Bool)

(assert (=> b!844241 m!1079349))

(assert (=> b!843708 d!263004))

(declare-fun d!263008 () Bool)

(assert (=> d!263008 (= (inv!17 (value!55149 separatorToken!297)) (= (charsToBigInt!1 (text!12810 (value!55149 separatorToken!297))) (value!55141 (value!55149 separatorToken!297))))))

(declare-fun bs!230318 () Bool)

(assert (= bs!230318 d!263008))

(declare-fun m!1079351 () Bool)

(assert (=> bs!230318 m!1079351))

(assert (=> b!843434 d!263008))

(declare-fun d!263010 () Bool)

(assert (=> d!263010 true))

(declare-fun lt!319844 () Bool)

(declare-fun rulesValidInductive!601 (LexerInterface!1502 List!9082) Bool)

(assert (=> d!263010 (= lt!319844 (rulesValidInductive!601 thiss!20117 rules!2621))))

(declare-fun lambda!25143 () Int)

(declare-fun forall!2127 (List!9082 Int) Bool)

(assert (=> d!263010 (= lt!319844 (forall!2127 rules!2621 lambda!25143))))

(assert (=> d!263010 (= (rulesValid!587 thiss!20117 rules!2621) lt!319844)))

(declare-fun bs!230340 () Bool)

(assert (= bs!230340 d!263010))

(declare-fun m!1079359 () Bool)

(assert (=> bs!230340 m!1079359))

(declare-fun m!1079361 () Bool)

(assert (=> bs!230340 m!1079361))

(assert (=> d!262484 d!263010))

(declare-fun d!263014 () Bool)

(assert (=> d!263014 (= (list!3561 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))) (list!3564 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))))))

(declare-fun bs!230341 () Bool)

(assert (= bs!230341 d!263014))

(declare-fun m!1079363 () Bool)

(assert (=> bs!230341 m!1079363))

(assert (=> b!843527 d!263014))

(declare-fun d!263016 () Bool)

(declare-fun res!385943 () Bool)

(declare-fun e!555404 () Bool)

(assert (=> d!263016 (=> res!385943 e!555404)))

(assert (=> d!263016 (= res!385943 (not ((_ is Cons!9066) (t!93954 rules!2621))))))

(assert (=> d!263016 (= (sepAndNonSepRulesDisjointChars!500 rules!2621 (t!93954 rules!2621)) e!555404)))

(declare-fun b!844254 () Bool)

(declare-fun e!555405 () Bool)

(assert (=> b!844254 (= e!555404 e!555405)))

(declare-fun res!385944 () Bool)

(assert (=> b!844254 (=> (not res!385944) (not e!555405))))

(assert (=> b!844254 (= res!385944 (ruleDisjointCharsFromAllFromOtherType!223 (h!14467 (t!93954 rules!2621)) rules!2621))))

(declare-fun b!844255 () Bool)

(assert (=> b!844255 (= e!555405 (sepAndNonSepRulesDisjointChars!500 rules!2621 (t!93954 (t!93954 rules!2621))))))

(assert (= (and d!263016 (not res!385943)) b!844254))

(assert (= (and b!844254 res!385944) b!844255))

(declare-fun m!1079371 () Bool)

(assert (=> b!844254 m!1079371))

(declare-fun m!1079373 () Bool)

(assert (=> b!844255 m!1079373))

(assert (=> b!843659 d!263016))

(declare-fun bs!230343 () Bool)

(declare-fun d!263020 () Bool)

(assert (= bs!230343 (and d!263020 d!262626)))

(declare-fun lambda!25144 () Int)

(assert (=> bs!230343 (= (= (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (rule!3123 separatorToken!297)))) (= lambda!25144 lambda!25106))))

(declare-fun bs!230345 () Bool)

(assert (= bs!230345 (and d!263020 d!262754)))

(assert (=> bs!230345 (= (= (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (h!14467 rules!2621)))) (= lambda!25144 lambda!25116))))

(assert (=> d!263020 true))

(assert (=> d!263020 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (dynLambda!4197 order!5773 lambda!25144))))

(assert (=> d!263020 (= (equivClasses!622 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toValue!2721 (transformation!1700 (rule!3123 (h!14468 l!5107))))) (Forall2!312 lambda!25144))))

(declare-fun bs!230347 () Bool)

(assert (= bs!230347 d!263020))

(declare-fun m!1079375 () Bool)

(assert (=> bs!230347 m!1079375))

(assert (=> b!843460 d!263020))

(declare-fun lt!319845 () Bool)

(declare-fun d!263024 () Bool)

(assert (=> d!263024 (= lt!319845 (isEmpty!5344 (list!3561 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))))

(assert (=> d!263024 (= lt!319845 (isEmpty!5348 (c!137333 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297)))))))))

(assert (=> d!263024 (= (isEmpty!5345 (_2!5994 (lex!604 thiss!20117 rules!2621 (print!541 thiss!20117 (singletonSeq!513 separatorToken!297))))) lt!319845)))

(declare-fun bs!230349 () Bool)

(assert (= bs!230349 d!263024))

(declare-fun m!1079379 () Bool)

(assert (=> bs!230349 m!1079379))

(assert (=> bs!230349 m!1079379))

(declare-fun m!1079381 () Bool)

(assert (=> bs!230349 m!1079381))

(declare-fun m!1079385 () Bool)

(assert (=> bs!230349 m!1079385))

(assert (=> b!843653 d!263024))

(assert (=> b!843653 d!262804))

(assert (=> b!843653 d!262802))

(assert (=> b!843653 d!262854))

(declare-fun d!263032 () Bool)

(declare-fun lt!319846 () BalanceConc!6026)

(assert (=> d!263032 (= (list!3561 lt!319846) (originalCharacters!2256 (h!14468 lt!319362)))))

(assert (=> d!263032 (= lt!319846 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362)))) (value!55149 (h!14468 lt!319362))))))

(assert (=> d!263032 (= (charsOf!975 (h!14468 lt!319362)) lt!319846)))

(declare-fun b_lambda!27883 () Bool)

(assert (=> (not b_lambda!27883) (not d!263032)))

(declare-fun tb!58541 () Bool)

(declare-fun t!94180 () Bool)

(assert (=> (and b!843274 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94180) tb!58541))

(declare-fun b!844258 () Bool)

(declare-fun e!555407 () Bool)

(declare-fun tp!265503 () Bool)

(assert (=> b!844258 (= e!555407 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362)))) (value!55149 (h!14468 lt!319362))))) tp!265503))))

(declare-fun result!67866 () Bool)

(assert (=> tb!58541 (= result!67866 (and (inv!11544 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362)))) (value!55149 (h!14468 lt!319362)))) e!555407))))

(assert (= tb!58541 b!844258))

(declare-fun m!1079393 () Bool)

(assert (=> b!844258 m!1079393))

(declare-fun m!1079395 () Bool)

(assert (=> tb!58541 m!1079395))

(assert (=> d!263032 t!94180))

(declare-fun b_and!73373 () Bool)

(assert (= b_and!73355 (and (=> t!94180 result!67866) b_and!73373)))

(declare-fun t!94182 () Bool)

(declare-fun tb!58543 () Bool)

(assert (=> (and b!843709 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94182) tb!58543))

(declare-fun result!67868 () Bool)

(assert (= result!67868 result!67866))

(assert (=> d!263032 t!94182))

(declare-fun b_and!73375 () Bool)

(assert (= b_and!73361 (and (=> t!94182 result!67868) b_and!73375)))

(declare-fun tb!58545 () Bool)

(declare-fun t!94184 () Bool)

(assert (=> (and b!843264 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94184) tb!58545))

(declare-fun result!67870 () Bool)

(assert (= result!67870 result!67866))

(assert (=> d!263032 t!94184))

(declare-fun b_and!73377 () Bool)

(assert (= b_and!73359 (and (=> t!94184 result!67870) b_and!73377)))

(declare-fun tb!58547 () Bool)

(declare-fun t!94186 () Bool)

(assert (=> (and b!843282 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94186) tb!58547))

(declare-fun result!67872 () Bool)

(assert (= result!67872 result!67866))

(assert (=> d!263032 t!94186))

(declare-fun b_and!73379 () Bool)

(assert (= b_and!73357 (and (=> t!94186 result!67872) b_and!73379)))

(declare-fun tb!58549 () Bool)

(declare-fun t!94188 () Bool)

(assert (=> (and b!843693 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94188) tb!58549))

(declare-fun result!67874 () Bool)

(assert (= result!67874 result!67866))

(assert (=> d!263032 t!94188))

(declare-fun b_and!73381 () Bool)

(assert (= b_and!73353 (and (=> t!94188 result!67874) b_and!73381)))

(declare-fun m!1079399 () Bool)

(assert (=> d!263032 m!1079399))

(declare-fun m!1079401 () Bool)

(assert (=> d!263032 m!1079401))

(assert (=> d!262520 d!263032))

(declare-fun b!844356 () Bool)

(declare-fun res!385958 () Bool)

(declare-fun e!555452 () Bool)

(assert (=> b!844356 (=> (not res!385958) (not e!555452))))

(declare-fun height!394 (Conc!3006) Int)

(declare-fun ++!2348 (Conc!3006 Conc!3006) Conc!3006)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!844356 (= res!385958 (<= (height!394 (++!2348 (c!137333 (charsOf!975 (h!14468 lt!319362))) (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))) (+ (max!0 (height!394 (c!137333 (charsOf!975 (h!14468 lt!319362)))) (height!394 (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))) 1)))))

(declare-fun b!844355 () Bool)

(declare-fun res!385957 () Bool)

(assert (=> b!844355 (=> (not res!385957) (not e!555452))))

(assert (=> b!844355 (= res!385957 (isBalanced!815 (++!2348 (c!137333 (charsOf!975 (h!14468 lt!319362))) (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))))))

(declare-fun b!844358 () Bool)

(declare-fun lt!319852 () BalanceConc!6026)

(assert (=> b!844358 (= e!555452 (= (list!3561 lt!319852) (++!2345 (list!3561 (charsOf!975 (h!14468 lt!319362))) (list!3561 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))))))

(declare-fun d!263036 () Bool)

(assert (=> d!263036 e!555452))

(declare-fun res!385956 () Bool)

(assert (=> d!263036 (=> (not res!385956) (not e!555452))))

(declare-fun appendAssocInst!190 (Conc!3006 Conc!3006) Bool)

(assert (=> d!263036 (= res!385956 (appendAssocInst!190 (c!137333 (charsOf!975 (h!14468 lt!319362))) (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)))))))

(assert (=> d!263036 (= lt!319852 (BalanceConc!6027 (++!2348 (c!137333 (charsOf!975 (h!14468 lt!319362))) (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))))))

(assert (=> d!263036 (= (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))) lt!319852)))

(declare-fun b!844357 () Bool)

(declare-fun res!385955 () Bool)

(assert (=> b!844357 (=> (not res!385955) (not e!555452))))

(assert (=> b!844357 (= res!385955 (>= (height!394 (++!2348 (c!137333 (charsOf!975 (h!14468 lt!319362))) (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))) (max!0 (height!394 (c!137333 (charsOf!975 (h!14468 lt!319362)))) (height!394 (c!137333 (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)))))))))

(assert (= (and d!263036 res!385956) b!844355))

(assert (= (and b!844355 res!385957) b!844356))

(assert (= (and b!844356 res!385958) b!844357))

(assert (= (and b!844357 res!385955) b!844358))

(declare-fun m!1079461 () Bool)

(assert (=> b!844358 m!1079461))

(assert (=> b!844358 m!1077727))

(declare-fun m!1079463 () Bool)

(assert (=> b!844358 m!1079463))

(assert (=> b!844358 m!1077729))

(declare-fun m!1079465 () Bool)

(assert (=> b!844358 m!1079465))

(assert (=> b!844358 m!1079463))

(assert (=> b!844358 m!1079465))

(declare-fun m!1079471 () Bool)

(assert (=> b!844358 m!1079471))

(declare-fun m!1079477 () Bool)

(assert (=> d!263036 m!1079477))

(declare-fun m!1079479 () Bool)

(assert (=> d!263036 m!1079479))

(declare-fun m!1079481 () Bool)

(assert (=> b!844357 m!1079481))

(declare-fun m!1079483 () Bool)

(assert (=> b!844357 m!1079483))

(declare-fun m!1079485 () Bool)

(assert (=> b!844357 m!1079485))

(assert (=> b!844357 m!1079481))

(assert (=> b!844357 m!1079483))

(assert (=> b!844357 m!1079479))

(assert (=> b!844357 m!1079479))

(declare-fun m!1079487 () Bool)

(assert (=> b!844357 m!1079487))

(assert (=> b!844356 m!1079481))

(assert (=> b!844356 m!1079483))

(assert (=> b!844356 m!1079485))

(assert (=> b!844356 m!1079481))

(assert (=> b!844356 m!1079483))

(assert (=> b!844356 m!1079479))

(assert (=> b!844356 m!1079479))

(assert (=> b!844356 m!1079487))

(assert (=> b!844355 m!1079479))

(assert (=> b!844355 m!1079479))

(declare-fun m!1079489 () Bool)

(assert (=> b!844355 m!1079489))

(assert (=> d!262520 d!263036))

(declare-fun d!263050 () Bool)

(declare-fun e!555470 () Bool)

(assert (=> d!263050 e!555470))

(declare-fun res!385961 () Bool)

(assert (=> d!263050 (=> (not res!385961) (not e!555470))))

(declare-fun lt!319855 () BalanceConc!6026)

(assert (=> d!263050 (= res!385961 (= (list!3561 lt!319855) (Cons!9065 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0) Nil!9065)))))

(declare-fun singleton!246 (C!4836) BalanceConc!6026)

(assert (=> d!263050 (= lt!319855 (singleton!246 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)))))

(assert (=> d!263050 (= (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)) lt!319855)))

(declare-fun b!844390 () Bool)

(assert (=> b!844390 (= e!555470 (isBalanced!815 (c!137333 lt!319855)))))

(assert (= (and d!263050 res!385961) b!844390))

(declare-fun m!1079495 () Bool)

(assert (=> d!263050 m!1079495))

(assert (=> d!263050 m!1077733))

(declare-fun m!1079497 () Bool)

(assert (=> d!263050 m!1079497))

(declare-fun m!1079499 () Bool)

(assert (=> b!844390 m!1079499))

(assert (=> d!262520 d!263050))

(assert (=> d!262520 d!262982))

(declare-fun d!263062 () Bool)

(declare-fun lt!319882 () Bool)

(declare-fun prefixMatch!4 (Regex!2133 List!9081) Bool)

(assert (=> d!263062 (= lt!319882 (prefixMatch!4 (rulesRegex!10 thiss!20117 rules!2621) (list!3561 (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))))))))

(declare-datatypes ((List!9088 0))(
  ( (Nil!9072) (Cons!9072 (h!14473 Regex!2133) (t!94290 List!9088)) )
))
(declare-datatypes ((Context!858 0))(
  ( (Context!859 (exprs!929 List!9088)) )
))
(declare-fun prefixMatchZipperSequence!15 ((InoxSet Context!858) BalanceConc!6026 Int) Bool)

(declare-fun focus!24 (Regex!2133) (InoxSet Context!858))

(assert (=> d!263062 (= lt!319882 (prefixMatchZipperSequence!15 (focus!24 (rulesRegex!10 thiss!20117 rules!2621)) (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))) 0))))

(declare-fun lt!319881 () Unit!13509)

(declare-fun lt!319879 () Unit!13509)

(assert (=> d!263062 (= lt!319881 lt!319879)))

(declare-fun lt!319878 () List!9081)

(declare-fun lt!319884 () (InoxSet Context!858))

(declare-fun prefixMatchZipper!4 ((InoxSet Context!858) List!9081) Bool)

(assert (=> d!263062 (= (prefixMatch!4 (rulesRegex!10 thiss!20117 rules!2621) lt!319878) (prefixMatchZipper!4 lt!319884 lt!319878))))

(declare-datatypes ((List!9089 0))(
  ( (Nil!9073) (Cons!9073 (h!14474 Context!858) (t!94291 List!9089)) )
))
(declare-fun lt!319877 () List!9089)

(declare-fun prefixMatchZipperRegexEquiv!4 ((InoxSet Context!858) List!9089 Regex!2133 List!9081) Unit!13509)

(assert (=> d!263062 (= lt!319879 (prefixMatchZipperRegexEquiv!4 lt!319884 lt!319877 (rulesRegex!10 thiss!20117 rules!2621) lt!319878))))

(assert (=> d!263062 (= lt!319878 (list!3561 (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)))))))

(declare-fun toList!570 ((InoxSet Context!858)) List!9089)

(assert (=> d!263062 (= lt!319877 (toList!570 (focus!24 (rulesRegex!10 thiss!20117 rules!2621))))))

(assert (=> d!263062 (= lt!319884 (focus!24 (rulesRegex!10 thiss!20117 rules!2621)))))

(declare-fun lt!319880 () Unit!13509)

(declare-fun lt!319876 () Unit!13509)

(assert (=> d!263062 (= lt!319880 lt!319876)))

(declare-fun lt!319883 () (InoxSet Context!858))

(declare-fun lt!319885 () Int)

(declare-fun dropList!266 (BalanceConc!6026 Int) List!9081)

(assert (=> d!263062 (= (prefixMatchZipper!4 lt!319883 (dropList!266 (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))) lt!319885)) (prefixMatchZipperSequence!15 lt!319883 (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))) lt!319885))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!4 ((InoxSet Context!858) BalanceConc!6026 Int) Unit!13509)

(assert (=> d!263062 (= lt!319876 (lemmaprefixMatchZipperSequenceEquivalent!4 lt!319883 (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0))) lt!319885))))

(assert (=> d!263062 (= lt!319885 0)))

(assert (=> d!263062 (= lt!319883 (focus!24 (rulesRegex!10 thiss!20117 rules!2621)))))

(declare-fun validRegex!654 (Regex!2133) Bool)

(assert (=> d!263062 (validRegex!654 (rulesRegex!10 thiss!20117 rules!2621))))

(assert (=> d!263062 (= (prefixMatchZipperSequence!13 (rulesRegex!10 thiss!20117 rules!2621) (++!2346 (charsOf!975 (h!14468 lt!319362)) (singletonSeq!512 (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0)))) lt!319882)))

(declare-fun bs!230357 () Bool)

(assert (= bs!230357 d!263062))

(assert (=> bs!230357 m!1077735))

(declare-fun m!1079501 () Bool)

(assert (=> bs!230357 m!1079501))

(assert (=> bs!230357 m!1077735))

(declare-fun m!1079503 () Bool)

(assert (=> bs!230357 m!1079503))

(declare-fun m!1079505 () Bool)

(assert (=> bs!230357 m!1079505))

(declare-fun m!1079507 () Bool)

(assert (=> bs!230357 m!1079507))

(declare-fun m!1079509 () Bool)

(assert (=> bs!230357 m!1079509))

(assert (=> bs!230357 m!1077731))

(assert (=> bs!230357 m!1079503))

(assert (=> bs!230357 m!1077735))

(assert (=> bs!230357 m!1079507))

(assert (=> bs!230357 m!1077731))

(declare-fun m!1079511 () Bool)

(assert (=> bs!230357 m!1079511))

(declare-fun m!1079513 () Bool)

(assert (=> bs!230357 m!1079513))

(declare-fun m!1079515 () Bool)

(assert (=> bs!230357 m!1079515))

(assert (=> bs!230357 m!1077731))

(assert (=> bs!230357 m!1079513))

(assert (=> bs!230357 m!1077735))

(declare-fun m!1079517 () Bool)

(assert (=> bs!230357 m!1079517))

(assert (=> bs!230357 m!1077735))

(declare-fun m!1079519 () Bool)

(assert (=> bs!230357 m!1079519))

(assert (=> bs!230357 m!1079507))

(assert (=> bs!230357 m!1077731))

(declare-fun m!1079521 () Bool)

(assert (=> bs!230357 m!1079521))

(assert (=> bs!230357 m!1077731))

(declare-fun m!1079523 () Bool)

(assert (=> bs!230357 m!1079523))

(declare-fun m!1079525 () Bool)

(assert (=> bs!230357 m!1079525))

(assert (=> d!262520 d!263062))

(declare-fun d!263064 () Bool)

(declare-fun lt!319888 () Unit!13509)

(declare-fun lemma!6 (List!9082 LexerInterface!1502 List!9082) Unit!13509)

(assert (=> d!263064 (= lt!319888 (lemma!6 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25148 () Int)

(declare-fun generalisedUnion!10 (List!9088) Regex!2133)

(declare-fun map!1888 (List!9082 Int) List!9088)

(assert (=> d!263064 (= (rulesRegex!10 thiss!20117 rules!2621) (generalisedUnion!10 (map!1888 rules!2621 lambda!25148)))))

(declare-fun bs!230358 () Bool)

(assert (= bs!230358 d!263064))

(declare-fun m!1079527 () Bool)

(assert (=> bs!230358 m!1079527))

(declare-fun m!1079529 () Bool)

(assert (=> bs!230358 m!1079529))

(assert (=> bs!230358 m!1079529))

(declare-fun m!1079531 () Bool)

(assert (=> bs!230358 m!1079531))

(assert (=> d!262520 d!263064))

(declare-fun d!263066 () Bool)

(declare-fun lt!319891 () C!4836)

(declare-fun apply!1838 (List!9081 Int) C!4836)

(assert (=> d!263066 (= lt!319891 (apply!1838 (list!3561 (charsOf!975 (h!14468 (t!93955 lt!319362)))) 0))))

(declare-fun apply!1839 (Conc!3006 Int) C!4836)

(assert (=> d!263066 (= lt!319891 (apply!1839 (c!137333 (charsOf!975 (h!14468 (t!93955 lt!319362)))) 0))))

(declare-fun e!555473 () Bool)

(assert (=> d!263066 e!555473))

(declare-fun res!385964 () Bool)

(assert (=> d!263066 (=> (not res!385964) (not e!555473))))

(assert (=> d!263066 (= res!385964 (<= 0 0))))

(assert (=> d!263066 (= (apply!1830 (charsOf!975 (h!14468 (t!93955 lt!319362))) 0) lt!319891)))

(declare-fun b!844393 () Bool)

(assert (=> b!844393 (= e!555473 (< 0 (size!7566 (charsOf!975 (h!14468 (t!93955 lt!319362))))))))

(assert (= (and d!263066 res!385964) b!844393))

(assert (=> d!263066 m!1077617))

(assert (=> d!263066 m!1079283))

(assert (=> d!263066 m!1079283))

(declare-fun m!1079533 () Bool)

(assert (=> d!263066 m!1079533))

(declare-fun m!1079535 () Bool)

(assert (=> d!263066 m!1079535))

(assert (=> b!844393 m!1077617))

(assert (=> b!844393 m!1077619))

(assert (=> d!262520 d!263066))

(declare-fun e!555478 () Bool)

(declare-fun tp!265622 () Bool)

(declare-fun tp!265621 () Bool)

(declare-fun b!844402 () Bool)

(assert (=> b!844402 (= e!555478 (and (inv!11543 (left!6717 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))) tp!265622 (inv!11543 (right!7047 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))) tp!265621))))

(declare-fun b!844404 () Bool)

(declare-fun e!555479 () Bool)

(declare-fun tp!265620 () Bool)

(assert (=> b!844404 (= e!555479 tp!265620)))

(declare-fun b!844403 () Bool)

(declare-fun inv!11549 (IArray!6017) Bool)

(assert (=> b!844403 (= e!555478 (and (inv!11549 (xs!5695 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))) e!555479))))

(assert (=> b!843459 (= tp!265369 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107))))) e!555478))))

(assert (= (and b!843459 ((_ is Node!3006) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))) b!844402))

(assert (= b!844403 b!844404))

(assert (= (and b!843459 ((_ is Leaf!4444) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (value!55149 (h!14468 l!5107)))))) b!844403))

(declare-fun m!1079537 () Bool)

(assert (=> b!844402 m!1079537))

(declare-fun m!1079539 () Bool)

(assert (=> b!844402 m!1079539))

(declare-fun m!1079541 () Bool)

(assert (=> b!844403 m!1079541))

(assert (=> b!843459 m!1077461))

(declare-fun b!844407 () Bool)

(declare-fun e!555480 () Bool)

(declare-fun tp!265623 () Bool)

(assert (=> b!844407 (= e!555480 tp!265623)))

(assert (=> b!843672 (= tp!265443 e!555480)))

(declare-fun b!844408 () Bool)

(declare-fun tp!265624 () Bool)

(declare-fun tp!265627 () Bool)

(assert (=> b!844408 (= e!555480 (and tp!265624 tp!265627))))

(declare-fun b!844405 () Bool)

(assert (=> b!844405 (= e!555480 tp_is_empty!3945)))

(declare-fun b!844406 () Bool)

(declare-fun tp!265625 () Bool)

(declare-fun tp!265626 () Bool)

(assert (=> b!844406 (= e!555480 (and tp!265625 tp!265626))))

(assert (= (and b!843672 ((_ is ElementMatch!2133) (regOne!4778 (regex!1700 (h!14467 rules!2621))))) b!844405))

(assert (= (and b!843672 ((_ is Concat!3900) (regOne!4778 (regex!1700 (h!14467 rules!2621))))) b!844406))

(assert (= (and b!843672 ((_ is Star!2133) (regOne!4778 (regex!1700 (h!14467 rules!2621))))) b!844407))

(assert (= (and b!843672 ((_ is Union!2133) (regOne!4778 (regex!1700 (h!14467 rules!2621))))) b!844408))

(declare-fun b!844411 () Bool)

(declare-fun e!555481 () Bool)

(declare-fun tp!265628 () Bool)

(assert (=> b!844411 (= e!555481 tp!265628)))

(assert (=> b!843672 (= tp!265444 e!555481)))

(declare-fun b!844412 () Bool)

(declare-fun tp!265629 () Bool)

(declare-fun tp!265632 () Bool)

(assert (=> b!844412 (= e!555481 (and tp!265629 tp!265632))))

(declare-fun b!844409 () Bool)

(assert (=> b!844409 (= e!555481 tp_is_empty!3945)))

(declare-fun b!844410 () Bool)

(declare-fun tp!265630 () Bool)

(declare-fun tp!265631 () Bool)

(assert (=> b!844410 (= e!555481 (and tp!265630 tp!265631))))

(assert (= (and b!843672 ((_ is ElementMatch!2133) (regTwo!4778 (regex!1700 (h!14467 rules!2621))))) b!844409))

(assert (= (and b!843672 ((_ is Concat!3900) (regTwo!4778 (regex!1700 (h!14467 rules!2621))))) b!844410))

(assert (= (and b!843672 ((_ is Star!2133) (regTwo!4778 (regex!1700 (h!14467 rules!2621))))) b!844411))

(assert (= (and b!843672 ((_ is Union!2133) (regTwo!4778 (regex!1700 (h!14467 rules!2621))))) b!844412))

(declare-fun b!844413 () Bool)

(declare-fun e!555482 () Bool)

(declare-fun tp!265633 () Bool)

(assert (=> b!844413 (= e!555482 (and tp_is_empty!3945 tp!265633))))

(assert (=> b!843679 (= tp!265448 e!555482)))

(assert (= (and b!843679 ((_ is Cons!9065) (t!93953 (originalCharacters!2256 separatorToken!297)))) b!844413))

(declare-fun b!844416 () Bool)

(declare-fun e!555485 () Bool)

(assert (=> b!844416 (= e!555485 true)))

(declare-fun b!844415 () Bool)

(declare-fun e!555484 () Bool)

(assert (=> b!844415 (= e!555484 e!555485)))

(declare-fun b!844414 () Bool)

(declare-fun e!555483 () Bool)

(assert (=> b!844414 (= e!555483 e!555484)))

(assert (=> b!843397 e!555483))

(assert (= b!844415 b!844416))

(assert (= b!844414 b!844415))

(assert (= (and b!843397 ((_ is Cons!9066) (t!93954 rules!2621))) b!844414))

(assert (=> b!844416 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25088))))

(assert (=> b!844416 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25088))))

(declare-fun b!844417 () Bool)

(declare-fun tp!265636 () Bool)

(declare-fun e!555486 () Bool)

(declare-fun tp!265635 () Bool)

(assert (=> b!844417 (= e!555486 (and (inv!11543 (left!6717 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))) tp!265636 (inv!11543 (right!7047 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))) tp!265635))))

(declare-fun b!844419 () Bool)

(declare-fun e!555487 () Bool)

(declare-fun tp!265634 () Bool)

(assert (=> b!844419 (= e!555487 tp!265634)))

(declare-fun b!844418 () Bool)

(assert (=> b!844418 (= e!555486 (and (inv!11549 (xs!5695 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))) e!555487))))

(assert (=> b!843529 (= tp!265374 (and (inv!11543 (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297)))) e!555486))))

(assert (= (and b!843529 ((_ is Node!3006) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))) b!844417))

(assert (= b!844418 b!844419))

(assert (= (and b!843529 ((_ is Leaf!4444) (c!137333 (dynLambda!4194 (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (value!55149 separatorToken!297))))) b!844418))

(declare-fun m!1079543 () Bool)

(assert (=> b!844417 m!1079543))

(declare-fun m!1079545 () Bool)

(assert (=> b!844417 m!1079545))

(declare-fun m!1079547 () Bool)

(assert (=> b!844418 m!1079547))

(assert (=> b!843529 m!1077625))

(declare-fun b!844422 () Bool)

(declare-fun e!555488 () Bool)

(declare-fun tp!265637 () Bool)

(assert (=> b!844422 (= e!555488 tp!265637)))

(assert (=> b!843673 (= tp!265441 e!555488)))

(declare-fun b!844423 () Bool)

(declare-fun tp!265638 () Bool)

(declare-fun tp!265641 () Bool)

(assert (=> b!844423 (= e!555488 (and tp!265638 tp!265641))))

(declare-fun b!844420 () Bool)

(assert (=> b!844420 (= e!555488 tp_is_empty!3945)))

(declare-fun b!844421 () Bool)

(declare-fun tp!265639 () Bool)

(declare-fun tp!265640 () Bool)

(assert (=> b!844421 (= e!555488 (and tp!265639 tp!265640))))

(assert (= (and b!843673 ((_ is ElementMatch!2133) (reg!2462 (regex!1700 (h!14467 rules!2621))))) b!844420))

(assert (= (and b!843673 ((_ is Concat!3900) (reg!2462 (regex!1700 (h!14467 rules!2621))))) b!844421))

(assert (= (and b!843673 ((_ is Star!2133) (reg!2462 (regex!1700 (h!14467 rules!2621))))) b!844422))

(assert (= (and b!843673 ((_ is Union!2133) (reg!2462 (regex!1700 (h!14467 rules!2621))))) b!844423))

(declare-fun b!844426 () Bool)

(declare-fun e!555489 () Bool)

(declare-fun tp!265642 () Bool)

(assert (=> b!844426 (= e!555489 tp!265642)))

(assert (=> b!843674 (= tp!265442 e!555489)))

(declare-fun b!844427 () Bool)

(declare-fun tp!265643 () Bool)

(declare-fun tp!265646 () Bool)

(assert (=> b!844427 (= e!555489 (and tp!265643 tp!265646))))

(declare-fun b!844424 () Bool)

(assert (=> b!844424 (= e!555489 tp_is_empty!3945)))

(declare-fun b!844425 () Bool)

(declare-fun tp!265644 () Bool)

(declare-fun tp!265645 () Bool)

(assert (=> b!844425 (= e!555489 (and tp!265644 tp!265645))))

(assert (= (and b!843674 ((_ is ElementMatch!2133) (regOne!4779 (regex!1700 (h!14467 rules!2621))))) b!844424))

(assert (= (and b!843674 ((_ is Concat!3900) (regOne!4779 (regex!1700 (h!14467 rules!2621))))) b!844425))

(assert (= (and b!843674 ((_ is Star!2133) (regOne!4779 (regex!1700 (h!14467 rules!2621))))) b!844426))

(assert (= (and b!843674 ((_ is Union!2133) (regOne!4779 (regex!1700 (h!14467 rules!2621))))) b!844427))

(declare-fun b!844430 () Bool)

(declare-fun e!555490 () Bool)

(declare-fun tp!265647 () Bool)

(assert (=> b!844430 (= e!555490 tp!265647)))

(assert (=> b!843674 (= tp!265445 e!555490)))

(declare-fun b!844431 () Bool)

(declare-fun tp!265648 () Bool)

(declare-fun tp!265651 () Bool)

(assert (=> b!844431 (= e!555490 (and tp!265648 tp!265651))))

(declare-fun b!844428 () Bool)

(assert (=> b!844428 (= e!555490 tp_is_empty!3945)))

(declare-fun b!844429 () Bool)

(declare-fun tp!265649 () Bool)

(declare-fun tp!265650 () Bool)

(assert (=> b!844429 (= e!555490 (and tp!265649 tp!265650))))

(assert (= (and b!843674 ((_ is ElementMatch!2133) (regTwo!4779 (regex!1700 (h!14467 rules!2621))))) b!844428))

(assert (= (and b!843674 ((_ is Concat!3900) (regTwo!4779 (regex!1700 (h!14467 rules!2621))))) b!844429))

(assert (= (and b!843674 ((_ is Star!2133) (regTwo!4779 (regex!1700 (h!14467 rules!2621))))) b!844430))

(assert (= (and b!843674 ((_ is Union!2133) (regTwo!4779 (regex!1700 (h!14467 rules!2621))))) b!844431))

(declare-fun b!844434 () Bool)

(declare-fun e!555493 () Bool)

(assert (=> b!844434 (= e!555493 true)))

(declare-fun b!844433 () Bool)

(declare-fun e!555492 () Bool)

(assert (=> b!844433 (= e!555492 e!555493)))

(declare-fun b!844432 () Bool)

(declare-fun e!555491 () Bool)

(assert (=> b!844432 (= e!555491 e!555492)))

(assert (=> b!843522 e!555491))

(assert (= b!844433 b!844434))

(assert (= b!844432 b!844433))

(assert (= (and b!843522 ((_ is Cons!9066) (t!93954 rules!2621))) b!844432))

(assert (=> b!844434 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25101))))

(assert (=> b!844434 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25101))))

(declare-fun b!844435 () Bool)

(declare-fun e!555494 () Bool)

(declare-fun tp!265652 () Bool)

(assert (=> b!844435 (= e!555494 (and tp_is_empty!3945 tp!265652))))

(assert (=> b!843691 (= tp!265460 e!555494)))

(assert (= (and b!843691 ((_ is Cons!9065) (originalCharacters!2256 (h!14468 (t!93955 l!5107))))) b!844435))

(declare-fun b!844438 () Bool)

(declare-fun e!555495 () Bool)

(declare-fun tp!265653 () Bool)

(assert (=> b!844438 (= e!555495 tp!265653)))

(assert (=> b!843695 (= tp!265466 e!555495)))

(declare-fun b!844439 () Bool)

(declare-fun tp!265654 () Bool)

(declare-fun tp!265657 () Bool)

(assert (=> b!844439 (= e!555495 (and tp!265654 tp!265657))))

(declare-fun b!844436 () Bool)

(assert (=> b!844436 (= e!555495 tp_is_empty!3945)))

(declare-fun b!844437 () Bool)

(declare-fun tp!265655 () Bool)

(declare-fun tp!265656 () Bool)

(assert (=> b!844437 (= e!555495 (and tp!265655 tp!265656))))

(assert (= (and b!843695 ((_ is ElementMatch!2133) (regOne!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844436))

(assert (= (and b!843695 ((_ is Concat!3900) (regOne!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844437))

(assert (= (and b!843695 ((_ is Star!2133) (regOne!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844438))

(assert (= (and b!843695 ((_ is Union!2133) (regOne!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844439))

(declare-fun b!844442 () Bool)

(declare-fun e!555496 () Bool)

(declare-fun tp!265658 () Bool)

(assert (=> b!844442 (= e!555496 tp!265658)))

(assert (=> b!843695 (= tp!265467 e!555496)))

(declare-fun b!844443 () Bool)

(declare-fun tp!265659 () Bool)

(declare-fun tp!265662 () Bool)

(assert (=> b!844443 (= e!555496 (and tp!265659 tp!265662))))

(declare-fun b!844440 () Bool)

(assert (=> b!844440 (= e!555496 tp_is_empty!3945)))

(declare-fun b!844441 () Bool)

(declare-fun tp!265660 () Bool)

(declare-fun tp!265661 () Bool)

(assert (=> b!844441 (= e!555496 (and tp!265660 tp!265661))))

(assert (= (and b!843695 ((_ is ElementMatch!2133) (regTwo!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844440))

(assert (= (and b!843695 ((_ is Concat!3900) (regTwo!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844441))

(assert (= (and b!843695 ((_ is Star!2133) (regTwo!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844442))

(assert (= (and b!843695 ((_ is Union!2133) (regTwo!4778 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844443))

(declare-fun b!844446 () Bool)

(declare-fun e!555497 () Bool)

(declare-fun tp!265663 () Bool)

(assert (=> b!844446 (= e!555497 tp!265663)))

(assert (=> b!843696 (= tp!265464 e!555497)))

(declare-fun b!844447 () Bool)

(declare-fun tp!265664 () Bool)

(declare-fun tp!265667 () Bool)

(assert (=> b!844447 (= e!555497 (and tp!265664 tp!265667))))

(declare-fun b!844444 () Bool)

(assert (=> b!844444 (= e!555497 tp_is_empty!3945)))

(declare-fun b!844445 () Bool)

(declare-fun tp!265665 () Bool)

(declare-fun tp!265666 () Bool)

(assert (=> b!844445 (= e!555497 (and tp!265665 tp!265666))))

(assert (= (and b!843696 ((_ is ElementMatch!2133) (reg!2462 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844444))

(assert (= (and b!843696 ((_ is Concat!3900) (reg!2462 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844445))

(assert (= (and b!843696 ((_ is Star!2133) (reg!2462 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844446))

(assert (= (and b!843696 ((_ is Union!2133) (reg!2462 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844447))

(declare-fun b!844450 () Bool)

(declare-fun e!555498 () Bool)

(declare-fun tp!265668 () Bool)

(assert (=> b!844450 (= e!555498 tp!265668)))

(assert (=> b!843692 (= tp!265461 e!555498)))

(declare-fun b!844451 () Bool)

(declare-fun tp!265669 () Bool)

(declare-fun tp!265672 () Bool)

(assert (=> b!844451 (= e!555498 (and tp!265669 tp!265672))))

(declare-fun b!844448 () Bool)

(assert (=> b!844448 (= e!555498 tp_is_empty!3945)))

(declare-fun b!844449 () Bool)

(declare-fun tp!265670 () Bool)

(declare-fun tp!265671 () Bool)

(assert (=> b!844449 (= e!555498 (and tp!265670 tp!265671))))

(assert (= (and b!843692 ((_ is ElementMatch!2133) (regex!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) b!844448))

(assert (= (and b!843692 ((_ is Concat!3900) (regex!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) b!844449))

(assert (= (and b!843692 ((_ is Star!2133) (regex!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) b!844450))

(assert (= (and b!843692 ((_ is Union!2133) (regex!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) b!844451))

(declare-fun b!844454 () Bool)

(declare-fun e!555501 () Bool)

(assert (=> b!844454 (= e!555501 true)))

(declare-fun b!844453 () Bool)

(declare-fun e!555500 () Bool)

(assert (=> b!844453 (= e!555500 e!555501)))

(declare-fun b!844452 () Bool)

(declare-fun e!555499 () Bool)

(assert (=> b!844452 (= e!555499 e!555500)))

(assert (=> b!843642 e!555499))

(assert (= b!844453 b!844454))

(assert (= b!844452 b!844453))

(assert (= (and b!843642 ((_ is Cons!9066) (t!93954 rules!2621))) b!844452))

(assert (=> b!844454 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25102))))

(assert (=> b!844454 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25102))))

(declare-fun b!844457 () Bool)

(declare-fun b_free!25301 () Bool)

(declare-fun b_next!25365 () Bool)

(assert (=> b!844457 (= b_free!25301 (not b_next!25365))))

(declare-fun tp!265676 () Bool)

(declare-fun b_and!73401 () Bool)

(assert (=> b!844457 (= tp!265676 b_and!73401)))

(declare-fun b_free!25303 () Bool)

(declare-fun b_next!25367 () Bool)

(assert (=> b!844457 (= b_free!25303 (not b_next!25367))))

(declare-fun tb!58605 () Bool)

(declare-fun t!94245 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!94245) tb!58605))

(declare-fun result!67934 () Bool)

(assert (= result!67934 result!67668))

(assert (=> b!843527 t!94245))

(declare-fun t!94247 () Bool)

(declare-fun tb!58607 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94247) tb!58607))

(declare-fun result!67936 () Bool)

(assert (= result!67936 result!67756))

(assert (=> d!262688 t!94247))

(declare-fun t!94249 () Bool)

(declare-fun tb!58609 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94249) tb!58609))

(declare-fun result!67938 () Bool)

(assert (= result!67938 result!67706))

(assert (=> d!262560 t!94249))

(declare-fun t!94251 () Bool)

(declare-fun tb!58611 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94251) tb!58611))

(declare-fun result!67940 () Bool)

(assert (= result!67940 result!67716))

(assert (=> d!262588 t!94251))

(declare-fun t!94253 () Bool)

(declare-fun tb!58613 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94253) tb!58613))

(declare-fun result!67942 () Bool)

(assert (= result!67942 result!67726))

(assert (=> d!262614 t!94253))

(declare-fun t!94255 () Bool)

(declare-fun tb!58615 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94255) tb!58615))

(declare-fun result!67944 () Bool)

(assert (= result!67944 result!67846))

(assert (=> d!262982 t!94255))

(declare-fun t!94257 () Bool)

(declare-fun tb!58617 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94257) tb!58617))

(declare-fun result!67946 () Bool)

(assert (= result!67946 result!67776))

(assert (=> d!262796 t!94257))

(declare-fun tb!58619 () Bool)

(declare-fun t!94259 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94259) tb!58619))

(declare-fun result!67948 () Bool)

(assert (= result!67948 result!67766))

(assert (=> b!843941 t!94259))

(declare-fun tb!58621 () Bool)

(declare-fun t!94261 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94261) tb!58621))

(declare-fun result!67950 () Bool)

(assert (= result!67950 result!67836))

(assert (=> d!262972 t!94261))

(declare-fun tb!58623 () Bool)

(declare-fun t!94263 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!94263) tb!58623))

(declare-fun result!67952 () Bool)

(assert (= result!67952 result!67646))

(assert (=> d!262778 t!94263))

(assert (=> b!843453 t!94263))

(declare-fun tb!58625 () Bool)

(declare-fun t!94265 () Bool)

(assert (=> (and b!844457 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94265) tb!58625))

(declare-fun result!67954 () Bool)

(assert (= result!67954 result!67866))

(assert (=> d!263032 t!94265))

(assert (=> d!262562 t!94245))

(declare-fun b_and!73403 () Bool)

(declare-fun tp!265675 () Bool)

(assert (=> b!844457 (= tp!265675 (and (=> t!94263 result!67952) (=> t!94265 result!67954) (=> t!94255 result!67944) (=> t!94257 result!67946) (=> t!94245 result!67934) (=> t!94259 result!67948) (=> t!94251 result!67940) (=> t!94261 result!67950) (=> t!94247 result!67936) (=> t!94253 result!67942) (=> t!94249 result!67938) b_and!73403))))

(declare-fun e!555503 () Bool)

(assert (=> b!844457 (= e!555503 (and tp!265676 tp!265675))))

(declare-fun tp!265674 () Bool)

(declare-fun b!844456 () Bool)

(declare-fun e!555502 () Bool)

(assert (=> b!844456 (= e!555502 (and tp!265674 (inv!11536 (tag!1962 (h!14467 (t!93954 (t!93954 rules!2621))))) (inv!11540 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) e!555503))))

(declare-fun b!844455 () Bool)

(declare-fun e!555505 () Bool)

(declare-fun tp!265673 () Bool)

(assert (=> b!844455 (= e!555505 (and e!555502 tp!265673))))

(assert (=> b!843707 (= tp!265478 e!555505)))

(assert (= b!844456 b!844457))

(assert (= b!844455 b!844456))

(assert (= (and b!843707 ((_ is Cons!9066) (t!93954 (t!93954 rules!2621)))) b!844455))

(declare-fun m!1079549 () Bool)

(assert (=> b!844456 m!1079549))

(declare-fun m!1079551 () Bool)

(assert (=> b!844456 m!1079551))

(declare-fun b!844460 () Bool)

(declare-fun e!555506 () Bool)

(declare-fun tp!265677 () Bool)

(assert (=> b!844460 (= e!555506 tp!265677)))

(assert (=> b!843711 (= tp!265484 e!555506)))

(declare-fun b!844461 () Bool)

(declare-fun tp!265678 () Bool)

(declare-fun tp!265681 () Bool)

(assert (=> b!844461 (= e!555506 (and tp!265678 tp!265681))))

(declare-fun b!844458 () Bool)

(assert (=> b!844458 (= e!555506 tp_is_empty!3945)))

(declare-fun b!844459 () Bool)

(declare-fun tp!265679 () Bool)

(declare-fun tp!265680 () Bool)

(assert (=> b!844459 (= e!555506 (and tp!265679 tp!265680))))

(assert (= (and b!843711 ((_ is ElementMatch!2133) (regOne!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844458))

(assert (= (and b!843711 ((_ is Concat!3900) (regOne!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844459))

(assert (= (and b!843711 ((_ is Star!2133) (regOne!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844460))

(assert (= (and b!843711 ((_ is Union!2133) (regOne!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844461))

(declare-fun b!844464 () Bool)

(declare-fun e!555507 () Bool)

(declare-fun tp!265682 () Bool)

(assert (=> b!844464 (= e!555507 tp!265682)))

(assert (=> b!843711 (= tp!265485 e!555507)))

(declare-fun b!844465 () Bool)

(declare-fun tp!265683 () Bool)

(declare-fun tp!265686 () Bool)

(assert (=> b!844465 (= e!555507 (and tp!265683 tp!265686))))

(declare-fun b!844462 () Bool)

(assert (=> b!844462 (= e!555507 tp_is_empty!3945)))

(declare-fun b!844463 () Bool)

(declare-fun tp!265684 () Bool)

(declare-fun tp!265685 () Bool)

(assert (=> b!844463 (= e!555507 (and tp!265684 tp!265685))))

(assert (= (and b!843711 ((_ is ElementMatch!2133) (regTwo!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844462))

(assert (= (and b!843711 ((_ is Concat!3900) (regTwo!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844463))

(assert (= (and b!843711 ((_ is Star!2133) (regTwo!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844464))

(assert (= (and b!843711 ((_ is Union!2133) (regTwo!4778 (regex!1700 (rule!3123 separatorToken!297))))) b!844465))

(declare-fun b!844468 () Bool)

(declare-fun e!555508 () Bool)

(declare-fun tp!265687 () Bool)

(assert (=> b!844468 (= e!555508 tp!265687)))

(assert (=> b!843712 (= tp!265482 e!555508)))

(declare-fun b!844469 () Bool)

(declare-fun tp!265688 () Bool)

(declare-fun tp!265691 () Bool)

(assert (=> b!844469 (= e!555508 (and tp!265688 tp!265691))))

(declare-fun b!844466 () Bool)

(assert (=> b!844466 (= e!555508 tp_is_empty!3945)))

(declare-fun b!844467 () Bool)

(declare-fun tp!265689 () Bool)

(declare-fun tp!265690 () Bool)

(assert (=> b!844467 (= e!555508 (and tp!265689 tp!265690))))

(assert (= (and b!843712 ((_ is ElementMatch!2133) (reg!2462 (regex!1700 (rule!3123 separatorToken!297))))) b!844466))

(assert (= (and b!843712 ((_ is Concat!3900) (reg!2462 (regex!1700 (rule!3123 separatorToken!297))))) b!844467))

(assert (= (and b!843712 ((_ is Star!2133) (reg!2462 (regex!1700 (rule!3123 separatorToken!297))))) b!844468))

(assert (= (and b!843712 ((_ is Union!2133) (reg!2462 (regex!1700 (rule!3123 separatorToken!297))))) b!844469))

(declare-fun b!844473 () Bool)

(declare-fun b_free!25305 () Bool)

(declare-fun b_next!25369 () Bool)

(assert (=> b!844473 (= b_free!25305 (not b_next!25369))))

(declare-fun tp!265695 () Bool)

(declare-fun b_and!73405 () Bool)

(assert (=> b!844473 (= tp!265695 b_and!73405)))

(declare-fun b_free!25307 () Bool)

(declare-fun b_next!25371 () Bool)

(assert (=> b!844473 (= b_free!25307 (not b_next!25371))))

(declare-fun tb!58627 () Bool)

(declare-fun t!94267 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297)))) t!94267) tb!58627))

(declare-fun result!67956 () Bool)

(assert (= result!67956 result!67668))

(assert (=> b!843527 t!94267))

(declare-fun tb!58629 () Bool)

(declare-fun t!94269 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319358)))))) t!94269) tb!58629))

(declare-fun result!67958 () Bool)

(assert (= result!67958 result!67756))

(assert (=> d!262688 t!94269))

(declare-fun t!94271 () Bool)

(declare-fun tb!58631 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319357))))) t!94271) tb!58631))

(declare-fun result!67960 () Bool)

(assert (= result!67960 result!67706))

(assert (=> d!262560 t!94271))

(declare-fun tb!58633 () Bool)

(declare-fun t!94273 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319389))))) t!94273) tb!58633))

(declare-fun result!67962 () Bool)

(assert (= result!67962 result!67716))

(assert (=> d!262588 t!94273))

(declare-fun tb!58635 () Bool)

(declare-fun t!94275 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319426))))) t!94275) tb!58635))

(declare-fun result!67964 () Bool)

(assert (= result!67964 result!67726))

(assert (=> d!262614 t!94275))

(declare-fun t!94277 () Bool)

(declare-fun tb!58637 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 lt!319362)))))) t!94277) tb!58637))

(declare-fun result!67966 () Bool)

(assert (= result!67966 result!67846))

(assert (=> d!262982 t!94277))

(declare-fun tb!58639 () Bool)

(declare-fun t!94279 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319387))))) t!94279) tb!58639))

(declare-fun result!67968 () Bool)

(assert (= result!67968 result!67776))

(assert (=> d!262796 t!94279))

(declare-fun t!94281 () Bool)

(declare-fun tb!58641 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107)))))) t!94281) tb!58641))

(declare-fun result!67970 () Bool)

(assert (= result!67970 result!67766))

(assert (=> b!843941 t!94281))

(declare-fun tb!58643 () Bool)

(declare-fun t!94283 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319428))))) t!94283) tb!58643))

(declare-fun result!67972 () Bool)

(assert (= result!67972 result!67836))

(assert (=> d!262972 t!94283))

(declare-fun t!94285 () Bool)

(declare-fun tb!58645 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107))))) t!94285) tb!58645))

(declare-fun result!67974 () Bool)

(assert (= result!67974 result!67646))

(assert (=> d!262778 t!94285))

(assert (=> b!843453 t!94285))

(declare-fun t!94287 () Bool)

(declare-fun tb!58647 () Bool)

(assert (=> (and b!844473 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 lt!319362))))) t!94287) tb!58647))

(declare-fun result!67976 () Bool)

(assert (= result!67976 result!67866))

(assert (=> d!263032 t!94287))

(assert (=> d!262562 t!94267))

(declare-fun b_and!73407 () Bool)

(declare-fun tp!265692 () Bool)

(assert (=> b!844473 (= tp!265692 (and (=> t!94279 result!67968) (=> t!94271 result!67960) (=> t!94275 result!67964) (=> t!94287 result!67976) (=> t!94267 result!67956) (=> t!94281 result!67970) (=> t!94277 result!67966) (=> t!94285 result!67974) (=> t!94283 result!67972) (=> t!94273 result!67962) (=> t!94269 result!67958) b_and!73407))))

(declare-fun e!555512 () Bool)

(declare-fun e!555513 () Bool)

(declare-fun tp!265694 () Bool)

(declare-fun b!844472 () Bool)

(assert (=> b!844472 (= e!555513 (and tp!265694 (inv!11536 (tag!1962 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (inv!11540 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) e!555512))))

(declare-fun b!844471 () Bool)

(declare-fun e!555511 () Bool)

(declare-fun tp!265693 () Bool)

(assert (=> b!844471 (= e!555511 (and (inv!21 (value!55149 (h!14468 (t!93955 (t!93955 l!5107))))) e!555513 tp!265693))))

(declare-fun e!555509 () Bool)

(declare-fun tp!265696 () Bool)

(declare-fun b!844470 () Bool)

(assert (=> b!844470 (= e!555509 (and (inv!11539 (h!14468 (t!93955 (t!93955 l!5107)))) e!555511 tp!265696))))

(assert (=> b!844473 (= e!555512 (and tp!265695 tp!265692))))

(assert (=> b!843690 (= tp!265463 e!555509)))

(assert (= b!844472 b!844473))

(assert (= b!844471 b!844472))

(assert (= b!844470 b!844471))

(assert (= (and b!843690 ((_ is Cons!9067) (t!93955 (t!93955 l!5107)))) b!844470))

(declare-fun m!1079553 () Bool)

(assert (=> b!844472 m!1079553))

(declare-fun m!1079555 () Bool)

(assert (=> b!844472 m!1079555))

(declare-fun m!1079557 () Bool)

(assert (=> b!844471 m!1079557))

(declare-fun m!1079559 () Bool)

(assert (=> b!844470 m!1079559))

(declare-fun b!844476 () Bool)

(declare-fun e!555515 () Bool)

(declare-fun tp!265697 () Bool)

(assert (=> b!844476 (= e!555515 tp!265697)))

(assert (=> b!843713 (= tp!265483 e!555515)))

(declare-fun b!844477 () Bool)

(declare-fun tp!265698 () Bool)

(declare-fun tp!265701 () Bool)

(assert (=> b!844477 (= e!555515 (and tp!265698 tp!265701))))

(declare-fun b!844474 () Bool)

(assert (=> b!844474 (= e!555515 tp_is_empty!3945)))

(declare-fun b!844475 () Bool)

(declare-fun tp!265699 () Bool)

(declare-fun tp!265700 () Bool)

(assert (=> b!844475 (= e!555515 (and tp!265699 tp!265700))))

(assert (= (and b!843713 ((_ is ElementMatch!2133) (regOne!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844474))

(assert (= (and b!843713 ((_ is Concat!3900) (regOne!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844475))

(assert (= (and b!843713 ((_ is Star!2133) (regOne!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844476))

(assert (= (and b!843713 ((_ is Union!2133) (regOne!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844477))

(declare-fun b!844480 () Bool)

(declare-fun e!555516 () Bool)

(declare-fun tp!265702 () Bool)

(assert (=> b!844480 (= e!555516 tp!265702)))

(assert (=> b!843713 (= tp!265486 e!555516)))

(declare-fun b!844481 () Bool)

(declare-fun tp!265703 () Bool)

(declare-fun tp!265706 () Bool)

(assert (=> b!844481 (= e!555516 (and tp!265703 tp!265706))))

(declare-fun b!844478 () Bool)

(assert (=> b!844478 (= e!555516 tp_is_empty!3945)))

(declare-fun b!844479 () Bool)

(declare-fun tp!265704 () Bool)

(declare-fun tp!265705 () Bool)

(assert (=> b!844479 (= e!555516 (and tp!265704 tp!265705))))

(assert (= (and b!843713 ((_ is ElementMatch!2133) (regTwo!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844478))

(assert (= (and b!843713 ((_ is Concat!3900) (regTwo!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844479))

(assert (= (and b!843713 ((_ is Star!2133) (regTwo!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844480))

(assert (= (and b!843713 ((_ is Union!2133) (regTwo!4779 (regex!1700 (rule!3123 separatorToken!297))))) b!844481))

(declare-fun b!844482 () Bool)

(declare-fun e!555517 () Bool)

(declare-fun tp!265707 () Bool)

(assert (=> b!844482 (= e!555517 (and tp_is_empty!3945 tp!265707))))

(assert (=> b!843698 (= tp!265469 e!555517)))

(assert (= (and b!843698 ((_ is Cons!9065) (t!93953 (originalCharacters!2256 (h!14468 l!5107))))) b!844482))

(declare-fun b!844485 () Bool)

(declare-fun e!555518 () Bool)

(declare-fun tp!265708 () Bool)

(assert (=> b!844485 (= e!555518 tp!265708)))

(assert (=> b!843708 (= tp!265479 e!555518)))

(declare-fun b!844486 () Bool)

(declare-fun tp!265709 () Bool)

(declare-fun tp!265712 () Bool)

(assert (=> b!844486 (= e!555518 (and tp!265709 tp!265712))))

(declare-fun b!844483 () Bool)

(assert (=> b!844483 (= e!555518 tp_is_empty!3945)))

(declare-fun b!844484 () Bool)

(declare-fun tp!265710 () Bool)

(declare-fun tp!265711 () Bool)

(assert (=> b!844484 (= e!555518 (and tp!265710 tp!265711))))

(assert (= (and b!843708 ((_ is ElementMatch!2133) (regex!1700 (h!14467 (t!93954 rules!2621))))) b!844483))

(assert (= (and b!843708 ((_ is Concat!3900) (regex!1700 (h!14467 (t!93954 rules!2621))))) b!844484))

(assert (= (and b!843708 ((_ is Star!2133) (regex!1700 (h!14467 (t!93954 rules!2621))))) b!844485))

(assert (= (and b!843708 ((_ is Union!2133) (regex!1700 (h!14467 (t!93954 rules!2621))))) b!844486))

(declare-fun b!844489 () Bool)

(declare-fun e!555519 () Bool)

(declare-fun tp!265713 () Bool)

(assert (=> b!844489 (= e!555519 tp!265713)))

(assert (=> b!843697 (= tp!265465 e!555519)))

(declare-fun b!844490 () Bool)

(declare-fun tp!265714 () Bool)

(declare-fun tp!265717 () Bool)

(assert (=> b!844490 (= e!555519 (and tp!265714 tp!265717))))

(declare-fun b!844487 () Bool)

(assert (=> b!844487 (= e!555519 tp_is_empty!3945)))

(declare-fun b!844488 () Bool)

(declare-fun tp!265715 () Bool)

(declare-fun tp!265716 () Bool)

(assert (=> b!844488 (= e!555519 (and tp!265715 tp!265716))))

(assert (= (and b!843697 ((_ is ElementMatch!2133) (regOne!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844487))

(assert (= (and b!843697 ((_ is Concat!3900) (regOne!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844488))

(assert (= (and b!843697 ((_ is Star!2133) (regOne!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844489))

(assert (= (and b!843697 ((_ is Union!2133) (regOne!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844490))

(declare-fun b!844493 () Bool)

(declare-fun e!555520 () Bool)

(declare-fun tp!265718 () Bool)

(assert (=> b!844493 (= e!555520 tp!265718)))

(assert (=> b!843697 (= tp!265468 e!555520)))

(declare-fun b!844494 () Bool)

(declare-fun tp!265719 () Bool)

(declare-fun tp!265722 () Bool)

(assert (=> b!844494 (= e!555520 (and tp!265719 tp!265722))))

(declare-fun b!844491 () Bool)

(assert (=> b!844491 (= e!555520 tp_is_empty!3945)))

(declare-fun b!844492 () Bool)

(declare-fun tp!265720 () Bool)

(declare-fun tp!265721 () Bool)

(assert (=> b!844492 (= e!555520 (and tp!265720 tp!265721))))

(assert (= (and b!843697 ((_ is ElementMatch!2133) (regTwo!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844491))

(assert (= (and b!843697 ((_ is Concat!3900) (regTwo!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844492))

(assert (= (and b!843697 ((_ is Star!2133) (regTwo!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844493))

(assert (= (and b!843697 ((_ is Union!2133) (regTwo!4779 (regex!1700 (rule!3123 (h!14468 l!5107)))))) b!844494))

(declare-fun b!844497 () Bool)

(declare-fun e!555523 () Bool)

(assert (=> b!844497 (= e!555523 true)))

(declare-fun b!844496 () Bool)

(declare-fun e!555522 () Bool)

(assert (=> b!844496 (= e!555522 e!555523)))

(declare-fun b!844495 () Bool)

(declare-fun e!555521 () Bool)

(assert (=> b!844495 (= e!555521 e!555522)))

(assert (=> b!843440 e!555521))

(assert (= b!844496 b!844497))

(assert (= b!844495 b!844496))

(assert (= (and b!843440 ((_ is Cons!9066) (t!93954 rules!2621))) b!844495))

(assert (=> b!844497 (< (dynLambda!4191 order!5767 (toValue!2721 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25092))))

(assert (=> b!844497 (< (dynLambda!4193 order!5771 (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621))))) (dynLambda!4192 order!5769 lambda!25092))))

(declare-fun b_lambda!27903 () Bool)

(assert (= b_lambda!27827 (or (and b!843693 b_free!25287 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843282 b_free!25271) (and b!843274 b_free!25267 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843709 b_free!25291 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!843264 b_free!25275 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!844473 b_free!25307 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) (and b!844457 b_free!25303 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))))) b_lambda!27903)))

(declare-fun b_lambda!27905 () Bool)

(assert (= b_lambda!27847 (or d!262456 b_lambda!27905)))

(declare-fun bs!230359 () Bool)

(declare-fun d!263068 () Bool)

(assert (= bs!230359 (and d!263068 d!262456)))

(assert (=> bs!230359 (= (dynLambda!4195 lambda!25101 (h!14468 (list!3562 (seqFromList!1520 lt!319362)))) (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 (list!3562 (seqFromList!1520 lt!319362)))))))

(assert (=> bs!230359 m!1078629))

(assert (=> b!843939 d!263068))

(declare-fun b_lambda!27907 () Bool)

(assert (= b_lambda!27853 (or (and b!843709 b_free!25291 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843282 b_free!25271 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!844473 b_free!25307 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843274 b_free!25267) (and b!843264 b_free!25275 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!843693 b_free!25287 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) (and b!844457 b_free!25303 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))))) b_lambda!27907)))

(declare-fun b_lambda!27909 () Bool)

(assert (= b_lambda!27823 (or d!262522 b_lambda!27909)))

(declare-fun bs!230360 () Bool)

(declare-fun d!263070 () Bool)

(assert (= bs!230360 (and d!263070 d!262522)))

(assert (=> bs!230360 (= (dynLambda!4195 lambda!25102 (h!14468 lt!319358)) (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319358)))))

(assert (=> bs!230360 m!1077513))

(assert (=> b!843742 d!263070))

(declare-fun b_lambda!27911 () Bool)

(assert (= b_lambda!27881 (or b!843281 b_lambda!27911)))

(declare-fun bs!230361 () Bool)

(declare-fun d!263072 () Bool)

(assert (= bs!230361 (and d!263072 b!843281)))

(assert (=> bs!230361 (= (dynLambda!4195 lambda!25082 (h!14468 (t!93955 l!5107))) (not (isSeparator!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))))

(assert (=> b!844222 d!263072))

(declare-fun b_lambda!27913 () Bool)

(assert (= b_lambda!27835 (or d!262416 b_lambda!27913)))

(declare-fun bs!230362 () Bool)

(declare-fun d!263074 () Bool)

(assert (= bs!230362 (and d!263074 d!262416)))

(assert (=> bs!230362 (= (dynLambda!4195 lambda!25088 (h!14468 lt!319362)) (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 lt!319362)))))

(assert (=> bs!230362 m!1077367))

(assert (=> b!843852 d!263074))

(declare-fun b_lambda!27915 () Bool)

(assert (= b_lambda!27849 (or (and b!843693 b_free!25287) (and b!844457 b_free!25303 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 (t!93954 rules!2621))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) (and b!843264 b_free!25275 (= (toChars!2580 (transformation!1700 (h!14467 rules!2621))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) (and b!844473 b_free!25307 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 (t!93955 l!5107)))))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) (and b!843709 b_free!25291 (= (toChars!2580 (transformation!1700 (h!14467 (t!93954 rules!2621)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) (and b!843282 b_free!25271 (= (toChars!2580 (transformation!1700 (rule!3123 separatorToken!297))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) (and b!843274 b_free!25267 (= (toChars!2580 (transformation!1700 (rule!3123 (h!14468 l!5107)))) (toChars!2580 (transformation!1700 (rule!3123 (h!14468 (t!93955 l!5107))))))) b_lambda!27915)))

(declare-fun b_lambda!27917 () Bool)

(assert (= b_lambda!27831 (or d!262436 b_lambda!27917)))

(declare-fun bs!230363 () Bool)

(declare-fun d!263076 () Bool)

(assert (= bs!230363 (and d!263076 d!262436)))

(assert (=> bs!230363 (= (dynLambda!4195 lambda!25092 (h!14468 l!5107)) (rulesProduceIndividualToken!566 thiss!20117 rules!2621 (h!14468 l!5107)))))

(assert (=> bs!230363 m!1077447))

(assert (=> b!843831 d!263076))

(check-sat (not d!262638) (not b!844472) b_and!73169 (not b_lambda!27819) (not b!844442) (not b!843529) (not b!844425) (not b!844422) (not b!844203) (not d!262738) (not b!843762) (not b!844456) (not d!262804) (not d!262754) (not b!844490) (not b!844427) (not b!844390) (not b!843943) (not b!843790) (not tb!58381) (not b!843820) (not b!843928) (not b!844241) (not b!843952) (not b!843726) (not b!844493) (not d!263064) (not b!844407) (not b!844161) (not b!844485) (not b!844408) (not d!262572) (not d!262796) (not b!844486) (not b!844223) b_and!73165 (not b!844403) tp_is_empty!3945 (not b!843930) (not b!844469) (not b!844412) (not b!844005) (not b!844013) (not b!844021) (not d!262624) (not b!844028) (not b!844108) (not b!844029) (not b!844439) (not b!844162) (not b!844445) (not b!844393) (not b!844475) (not b_lambda!27875) (not b!844166) (not d!262792) (not b_lambda!27883) (not b!844356) b_and!73407 (not d!262706) b_and!73379 (not b!844443) (not b!843824) (not d!262588) (not b_lambda!27825) (not b!843793) (not d!262712) (not b!844106) b_and!73381 (not d!263032) (not d!262708) (not b!843794) (not d!262848) (not b!844446) (not d!262992) (not b!844441) (not d!262568) (not b_lambda!27829) (not b!844003) (not b!843944) (not b!844447) (not d!262794) (not d!262542) (not b!843810) (not b!843782) (not b!844049) (not b!844465) (not b!843731) (not b!843947) (not d!262764) (not b!844406) (not b!843938) (not b_next!25353) (not tb!58391) (not d!262570) (not d!262544) (not d!263020) (not b!843746) (not b!844430) b_and!73121 (not d!262582) (not b!844017) (not d!262716) b_and!73401 (not d!262768) (not b!843796) (not b!843802) (not b_next!25337) (not b_next!25335) (not d!262972) (not tb!58511) (not b!844451) (not b!844418) (not b!843771) (not d!262854) (not d!262802) (not b!843963) (not d!262592) (not b!844033) (not b!844438) (not d!262552) (not b!844200) (not b!843945) (not d!262786) (not b!843741) (not b!844463) (not b!844455) (not b!844479) (not b_next!25331) (not b!843459) (not b_lambda!27877) (not b!843940) (not b!844484) b_and!73377 (not b!844030) (not b!844218) (not b!844429) (not b!843770) (not b!843779) (not b!844489) (not b!843850) (not b_next!25365) (not b!844419) (not b!844202) (not b!844210) (not tb!58441) (not b!844105) (not b_lambda!27907) (not d!262962) (not b!843942) (not b!843743) (not tb!58451) (not b_next!25355) (not d!262924) (not b!843806) (not b!844026) (not b_lambda!27821) (not b!843929) (not b!844432) (not b!844018) (not b!844167) (not b!844164) (not b!844035) (not b!843823) (not b!843832) (not b!844477) (not d!262546) (not b_lambda!27915) (not d!262774) (not b_lambda!27845) (not d!262694) (not d!263008) (not b!844041) (not b!844480) (not d!262586) (not b!843835) (not b!844198) (not b_next!25369) (not b!843946) (not b!844414) (not b!844423) (not d!262684) (not b!844025) (not d!262988) (not b!843948) (not d!262744) (not b!844411) (not d!262686) (not b!844046) (not bm!50475) (not b!844168) (not b!844437) (not b!844113) (not b!844449) (not bs!230363) (not b!844470) (not b!844417) (not b!843819) (not d!262602) (not d!263036) (not b!843797) (not b!844169) (not d!262770) (not b!844402) (not b!843775) (not b!844038) (not d!262710) (not b!843724) (not b!844421) (not tb!58541) (not d!263004) (not b!844036) (not b!843789) (not d!262772) (not b!844358) (not bs!230359) (not d!262610) (not d!262964) (not b_lambda!27911) (not b!844431) b_and!73129 (not b_lambda!27833) (not b!844461) (not b!844481) (not b!844007) (not b!843805) (not d!262982) (not b!844495) (not d!262960) (not b!843825) (not b_next!25349) (not b!843926) (not b_lambda!27817) (not b!844219) (not d!262968) (not d!262858) (not b!844413) (not d!262920) (not d!262998) (not b!844206) (not b!843879) (not b!844410) (not d!262564) (not b!844467) (not d!262778) (not b!843941) (not b!844207) (not b_lambda!27903) (not d!262720) (not b!844450) (not b!843834) b_and!73125 (not b_next!25339) (not b!843808) (not b!843853) (not d!263024) (not b!843822) (not b!844460) (not bs!230360) (not b!844459) (not d!262560) (not d!262986) (not d!262688) (not b!844482) b_and!73375 (not b!843722) (not b_next!25333) (not b!843981) (not b_next!25367) (not d!263050) (not d!262782) (not b!844010) (not d!262852) (not b!844107) (not b!843800) (not d!262614) (not b!844254) (not b!844357) (not b!844468) (not d!262574) (not d!262762) (not d!262562) (not d!262696) (not d!262800) (not b_next!25351) (not tb!58521) (not b!843927) (not b_lambda!27855) (not b!844492) (not d!262724) (not b!844236) (not d!262566) (not b!843730) (not b!844022) b_and!73405 (not d!262780) (not d!263014) (not b!844494) (not b!844047) (not d!262692) (not b!844404) (not b!843763) (not b!844435) (not b_lambda!27913) (not b!844476) (not b!844258) (not b_lambda!27917) (not d!262776) (not b!844488) (not b!843931) (not b_next!25371) (not b!844001) (not b!843744) (not b!843739) (not b!844006) (not tb!58401) (not d!262598) (not d!262700) (not b!843780) (not d!262626) (not d!263010) (not b!844043) (not b!844014) (not b!844426) (not b!843727) (not d!262690) (not b!843718) (not b!843809) (not b!844112) (not b!843729) (not b!844452) (not b_next!25329) (not b_lambda!27905) (not b!843803) (not b!844355) (not b!844220) (not b!843777) (not b!844464) (not tb!58431) (not b!843732) b_and!73373 (not d!262926) (not b!844037) (not d!262984) b_and!73403 (not bs!230362) (not b!844165) (not b_lambda!27909) (not b!844199) (not b!843925) (not b!843839) (not b!844471) (not d!262584) (not d!262578) (not d!263066) (not b!844255) (not d!262612) (not d!262970) (not d!263062) (not d!262850) (not b!844050))
(check-sat b_and!73169 b_and!73165 b_and!73381 (not b_next!25353) (not b_next!25365) (not b_next!25355) (not b_next!25369) b_and!73129 (not b_next!25349) (not b_next!25351) b_and!73405 (not b_next!25371) (not b_next!25329) b_and!73373 b_and!73403 b_and!73407 b_and!73379 b_and!73121 b_and!73401 (not b_next!25337) (not b_next!25335) (not b_next!25331) b_and!73377 b_and!73125 (not b_next!25339) b_and!73375 (not b_next!25333) (not b_next!25367))
