; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74966 () Bool)

(assert start!74966)

(declare-fun b!843113 () Bool)

(declare-fun b_free!25241 () Bool)

(declare-fun b_next!25305 () Bool)

(assert (=> b!843113 (= b_free!25241 (not b_next!25305))))

(declare-fun tp!265277 () Bool)

(declare-fun b_and!73097 () Bool)

(assert (=> b!843113 (= tp!265277 b_and!73097)))

(declare-fun b_free!25243 () Bool)

(declare-fun b_next!25307 () Bool)

(assert (=> b!843113 (= b_free!25243 (not b_next!25307))))

(declare-fun tp!265276 () Bool)

(declare-fun b_and!73099 () Bool)

(assert (=> b!843113 (= tp!265276 b_and!73099)))

(declare-fun b!843130 () Bool)

(declare-fun b_free!25245 () Bool)

(declare-fun b_next!25309 () Bool)

(assert (=> b!843130 (= b_free!25245 (not b_next!25309))))

(declare-fun tp!265282 () Bool)

(declare-fun b_and!73101 () Bool)

(assert (=> b!843130 (= tp!265282 b_and!73101)))

(declare-fun b_free!25247 () Bool)

(declare-fun b_next!25311 () Bool)

(assert (=> b!843130 (= b_free!25247 (not b_next!25311))))

(declare-fun tp!265286 () Bool)

(declare-fun b_and!73103 () Bool)

(assert (=> b!843130 (= tp!265286 b_and!73103)))

(declare-fun b!843127 () Bool)

(declare-fun b_free!25249 () Bool)

(declare-fun b_next!25313 () Bool)

(assert (=> b!843127 (= b_free!25249 (not b_next!25313))))

(declare-fun tp!265284 () Bool)

(declare-fun b_and!73105 () Bool)

(assert (=> b!843127 (= tp!265284 b_and!73105)))

(declare-fun b_free!25251 () Bool)

(declare-fun b_next!25315 () Bool)

(assert (=> b!843127 (= b_free!25251 (not b_next!25315))))

(declare-fun tp!265287 () Bool)

(declare-fun b_and!73107 () Bool)

(assert (=> b!843127 (= tp!265287 b_and!73107)))

(declare-fun tp!265283 () Bool)

(declare-fun e!554600 () Bool)

(declare-datatypes ((List!9072 0))(
  ( (Nil!9056) (Cons!9056 (h!14457 (_ BitVec 16)) (t!93944 List!9072)) )
))
(declare-datatypes ((TokenValue!1764 0))(
  ( (FloatLiteralValue!3528 (text!12793 List!9072)) (TokenValueExt!1763 (__x!7259 Int)) (Broken!8820 (value!55066 List!9072)) (Object!1779) (End!1764) (Def!1764) (Underscore!1764) (Match!1764) (Else!1764) (Error!1764) (Case!1764) (If!1764) (Extends!1764) (Abstract!1764) (Class!1764) (Val!1764) (DelimiterValue!3528 (del!1824 List!9072)) (KeywordValue!1770 (value!55067 List!9072)) (CommentValue!3528 (value!55068 List!9072)) (WhitespaceValue!3528 (value!55069 List!9072)) (IndentationValue!1764 (value!55070 List!9072)) (String!10717) (Int32!1764) (Broken!8821 (value!55071 List!9072)) (Boolean!1765) (Unit!13502) (OperatorValue!1767 (op!1824 List!9072)) (IdentifierValue!3528 (value!55072 List!9072)) (IdentifierValue!3529 (value!55073 List!9072)) (WhitespaceValue!3529 (value!55074 List!9072)) (True!3528) (False!3528) (Broken!8822 (value!55075 List!9072)) (Broken!8823 (value!55076 List!9072)) (True!3529) (RightBrace!1764) (RightBracket!1764) (Colon!1764) (Null!1764) (Comma!1764) (LeftBracket!1764) (False!3529) (LeftBrace!1764) (ImaginaryLiteralValue!1764 (text!12794 List!9072)) (StringLiteralValue!5292 (value!55077 List!9072)) (EOFValue!1764 (value!55078 List!9072)) (IdentValue!1764 (value!55079 List!9072)) (DelimiterValue!3529 (value!55080 List!9072)) (DedentValue!1764 (value!55081 List!9072)) (NewLineValue!1764 (value!55082 List!9072)) (IntegerValue!5292 (value!55083 (_ BitVec 32)) (text!12795 List!9072)) (IntegerValue!5293 (value!55084 Int) (text!12796 List!9072)) (Times!1764) (Or!1764) (Equal!1764) (Minus!1764) (Broken!8824 (value!55085 List!9072)) (And!1764) (Div!1764) (LessEqual!1764) (Mod!1764) (Concat!3895) (Not!1764) (Plus!1764) (SpaceValue!1764 (value!55086 List!9072)) (IntegerValue!5294 (value!55087 Int) (text!12797 List!9072)) (StringLiteralValue!5293 (text!12798 List!9072)) (FloatLiteralValue!3529 (text!12799 List!9072)) (BytesLiteralValue!1764 (value!55088 List!9072)) (CommentValue!3529 (value!55089 List!9072)) (StringLiteralValue!5294 (value!55090 List!9072)) (ErrorTokenValue!1764 (msg!1825 List!9072)) )
))
(declare-datatypes ((C!4832 0))(
  ( (C!4833 (val!2664 Int)) )
))
(declare-datatypes ((Regex!2131 0))(
  ( (ElementMatch!2131 (c!137325 C!4832)) (Concat!3896 (regOne!4774 Regex!2131) (regTwo!4774 Regex!2131)) (EmptyExpr!2131) (Star!2131 (reg!2460 Regex!2131)) (EmptyLang!2131) (Union!2131 (regOne!4775 Regex!2131) (regTwo!4775 Regex!2131)) )
))
(declare-datatypes ((String!10718 0))(
  ( (String!10719 (value!55091 String)) )
))
(declare-datatypes ((List!9073 0))(
  ( (Nil!9057) (Cons!9057 (h!14458 C!4832) (t!93945 List!9073)) )
))
(declare-datatypes ((IArray!6011 0))(
  ( (IArray!6012 (innerList!3063 List!9073)) )
))
(declare-datatypes ((Conc!3003 0))(
  ( (Node!3003 (left!6713 Conc!3003) (right!7043 Conc!3003) (csize!6236 Int) (cheight!3214 Int)) (Leaf!4440 (xs!5692 IArray!6011) (csize!6237 Int)) (Empty!3003) )
))
(declare-datatypes ((BalanceConc!6020 0))(
  ( (BalanceConc!6021 (c!137326 Conc!3003)) )
))
(declare-datatypes ((TokenValueInjection!3228 0))(
  ( (TokenValueInjection!3229 (toValue!2719 Int) (toChars!2578 Int)) )
))
(declare-datatypes ((Rule!3196 0))(
  ( (Rule!3197 (regex!1698 Regex!2131) (tag!1960 String!10718) (isSeparator!1698 Bool) (transformation!1698 TokenValueInjection!3228)) )
))
(declare-datatypes ((Token!3062 0))(
  ( (Token!3063 (value!55092 TokenValue!1764) (rule!3121 Rule!3196) (size!7559 Int) (originalCharacters!2254 List!9073)) )
))
(declare-datatypes ((List!9074 0))(
  ( (Nil!9058) (Cons!9058 (h!14459 Token!3062) (t!93946 List!9074)) )
))
(declare-fun l!5107 () List!9074)

(declare-fun b!843112 () Bool)

(declare-fun e!554612 () Bool)

(declare-fun inv!11529 (String!10718) Bool)

(declare-fun inv!11532 (TokenValueInjection!3228) Bool)

(assert (=> b!843112 (= e!554612 (and tp!265283 (inv!11529 (tag!1960 (rule!3121 (h!14459 l!5107)))) (inv!11532 (transformation!1698 (rule!3121 (h!14459 l!5107)))) e!554600))))

(declare-fun res!385385 () Bool)

(declare-fun e!554614 () Bool)

(assert (=> start!74966 (=> (not res!385385) (not e!554614))))

(declare-datatypes ((LexerInterface!1500 0))(
  ( (LexerInterfaceExt!1497 (__x!7260 Int)) (Lexer!1498) )
))
(declare-fun thiss!20117 () LexerInterface!1500)

(get-info :version)

(assert (=> start!74966 (= res!385385 ((_ is Lexer!1498) thiss!20117))))

(assert (=> start!74966 e!554614))

(assert (=> start!74966 true))

(declare-fun e!554616 () Bool)

(assert (=> start!74966 e!554616))

(declare-fun e!554608 () Bool)

(assert (=> start!74966 e!554608))

(declare-fun separatorToken!297 () Token!3062)

(declare-fun e!554599 () Bool)

(declare-fun inv!11533 (Token!3062) Bool)

(assert (=> start!74966 (and (inv!11533 separatorToken!297) e!554599)))

(assert (=> b!843113 (= e!554600 (and tp!265277 tp!265276))))

(declare-fun b!843114 () Bool)

(declare-fun e!554610 () Bool)

(declare-fun tp!265280 () Bool)

(assert (=> b!843114 (= e!554616 (and e!554610 tp!265280))))

(declare-fun b!843115 () Bool)

(declare-fun e!554598 () Bool)

(declare-fun e!554603 () Bool)

(assert (=> b!843115 (= e!554598 e!554603)))

(declare-fun res!385379 () Bool)

(assert (=> b!843115 (=> res!385379 e!554603)))

(declare-fun lt!319316 () List!9074)

(declare-fun isEmpty!5336 (List!9074) Bool)

(assert (=> b!843115 (= res!385379 (not (isEmpty!5336 (t!93946 (t!93946 lt!319316)))))))

(declare-fun e!554602 () Bool)

(assert (=> b!843115 e!554602))

(declare-fun res!385387 () Bool)

(assert (=> b!843115 (=> (not res!385387) (not e!554602))))

(declare-datatypes ((List!9075 0))(
  ( (Nil!9059) (Cons!9059 (h!14460 Rule!3196) (t!93947 List!9075)) )
))
(declare-fun rules!2621 () List!9075)

(declare-fun lt!319321 () List!9074)

(declare-fun rulesProduceEachTokenIndividuallyList!388 (LexerInterface!1500 List!9075 List!9074) Bool)

(assert (=> b!843115 (= res!385387 (rulesProduceEachTokenIndividuallyList!388 thiss!20117 rules!2621 lt!319321))))

(declare-fun lt!319319 () List!9074)

(declare-datatypes ((Unit!13503 0))(
  ( (Unit!13504) )
))
(declare-fun lt!319320 () Unit!13503)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!30 (LexerInterface!1500 List!9075 List!9074 Token!3062) Unit!13503)

(assert (=> b!843115 (= lt!319320 (withSeparatorTokenListPreservesRulesProduceTokens!30 thiss!20117 rules!2621 lt!319319 separatorToken!297))))

(declare-fun lt!319314 () Unit!13503)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!6 (LexerInterface!1500 List!9075 List!9074 Token!3062) Unit!13503)

(assert (=> b!843115 (= lt!319314 (printWithSeparatorTokenImpliesSeparableTokensList!6 thiss!20117 rules!2621 lt!319319 separatorToken!297))))

(declare-fun separableTokensPredicate!40 (LexerInterface!1500 Token!3062 Token!3062 List!9075) Bool)

(assert (=> b!843115 (separableTokensPredicate!40 thiss!20117 (h!14459 lt!319316) (h!14459 (t!93946 lt!319316)) rules!2621)))

(declare-fun lt!319317 () Unit!13503)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!22 (LexerInterface!1500 Token!3062 Token!3062 List!9075) Unit!13503)

(assert (=> b!843115 (= lt!319317 (lemmaTokensOfDifferentKindsAreSeparable!22 thiss!20117 (h!14459 lt!319316) (h!14459 (t!93946 lt!319316)) rules!2621))))

(declare-fun b!843116 () Bool)

(declare-fun e!554606 () Bool)

(assert (=> b!843116 (= e!554614 (not e!554606))))

(declare-fun res!385378 () Bool)

(assert (=> b!843116 (=> res!385378 e!554606)))

(assert (=> b!843116 (= res!385378 (or (not ((_ is Cons!9058) lt!319316)) (not ((_ is Cons!9058) (t!93946 lt!319316)))))))

(assert (=> b!843116 (rulesProduceEachTokenIndividuallyList!388 thiss!20117 rules!2621 lt!319316)))

(declare-fun withSeparatorTokenList!30 (LexerInterface!1500 List!9074 Token!3062) List!9074)

(assert (=> b!843116 (= lt!319316 (withSeparatorTokenList!30 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!319318 () Unit!13503)

(assert (=> b!843116 (= lt!319318 (withSeparatorTokenListPreservesRulesProduceTokens!30 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!265285 () Bool)

(declare-fun b!843117 () Bool)

(declare-fun e!554613 () Bool)

(assert (=> b!843117 (= e!554608 (and (inv!11533 (h!14459 l!5107)) e!554613 tp!265285))))

(declare-fun e!554604 () Bool)

(declare-fun tp!265281 () Bool)

(declare-fun b!843118 () Bool)

(assert (=> b!843118 (= e!554610 (and tp!265281 (inv!11529 (tag!1960 (h!14460 rules!2621))) (inv!11532 (transformation!1698 (h!14460 rules!2621))) e!554604))))

(declare-fun b!843119 () Bool)

(assert (=> b!843119 (= e!554603 true)))

(declare-fun lt!319315 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!22 (LexerInterface!1500 List!9074 List!9075) Bool)

(assert (=> b!843119 (= lt!319315 (tokensListTwoByTwoPredicateSeparableList!22 thiss!20117 lt!319316 rules!2621))))

(declare-fun b!843120 () Bool)

(declare-fun res!385390 () Bool)

(assert (=> b!843120 (=> (not res!385390) (not e!554614))))

(declare-fun rulesProduceIndividualToken!564 (LexerInterface!1500 List!9075 Token!3062) Bool)

(assert (=> b!843120 (= res!385390 (rulesProduceIndividualToken!564 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!843121 () Bool)

(assert (=> b!843121 (= e!554606 e!554598)))

(declare-fun res!385386 () Bool)

(assert (=> b!843121 (=> res!385386 e!554598)))

(assert (=> b!843121 (= res!385386 (not (= (t!93946 (t!93946 lt!319316)) lt!319321)))))

(assert (=> b!843121 (= lt!319321 (withSeparatorTokenList!30 thiss!20117 lt!319319 separatorToken!297))))

(declare-fun tail!1016 (List!9074) List!9074)

(assert (=> b!843121 (= lt!319319 (tail!1016 l!5107))))

(declare-fun b!843122 () Bool)

(assert (=> b!843122 (= e!554602 (tokensListTwoByTwoPredicateSeparableList!22 thiss!20117 lt!319321 rules!2621))))

(declare-fun b!843123 () Bool)

(declare-fun res!385381 () Bool)

(assert (=> b!843123 (=> res!385381 e!554598)))

(declare-fun head!1458 (List!9074) Token!3062)

(assert (=> b!843123 (= res!385381 (not (= (head!1458 l!5107) (h!14459 lt!319316))))))

(declare-fun b!843124 () Bool)

(declare-fun res!385388 () Bool)

(assert (=> b!843124 (=> res!385388 e!554598)))

(assert (=> b!843124 (= res!385388 (not (= (h!14459 (t!93946 lt!319316)) separatorToken!297)))))

(declare-fun e!554611 () Bool)

(declare-fun b!843125 () Bool)

(declare-fun tp!265288 () Bool)

(declare-fun e!554617 () Bool)

(assert (=> b!843125 (= e!554617 (and tp!265288 (inv!11529 (tag!1960 (rule!3121 separatorToken!297))) (inv!11532 (transformation!1698 (rule!3121 separatorToken!297))) e!554611))))

(declare-fun b!843126 () Bool)

(declare-fun res!385391 () Bool)

(assert (=> b!843126 (=> (not res!385391) (not e!554614))))

(declare-fun sepAndNonSepRulesDisjointChars!498 (List!9075 List!9075) Bool)

(assert (=> b!843126 (= res!385391 (sepAndNonSepRulesDisjointChars!498 rules!2621 rules!2621))))

(assert (=> b!843127 (= e!554604 (and tp!265284 tp!265287))))

(declare-fun b!843128 () Bool)

(declare-fun res!385384 () Bool)

(assert (=> b!843128 (=> (not res!385384) (not e!554614))))

(assert (=> b!843128 (= res!385384 (rulesProduceEachTokenIndividuallyList!388 thiss!20117 rules!2621 l!5107))))

(declare-fun b!843129 () Bool)

(declare-fun res!385389 () Bool)

(assert (=> b!843129 (=> (not res!385389) (not e!554614))))

(declare-fun lambda!25076 () Int)

(declare-fun forall!2119 (List!9074 Int) Bool)

(assert (=> b!843129 (= res!385389 (forall!2119 l!5107 lambda!25076))))

(assert (=> b!843130 (= e!554611 (and tp!265282 tp!265286))))

(declare-fun b!843131 () Bool)

(declare-fun res!385383 () Bool)

(assert (=> b!843131 (=> (not res!385383) (not e!554614))))

(declare-fun isEmpty!5337 (List!9075) Bool)

(assert (=> b!843131 (= res!385383 (not (isEmpty!5337 rules!2621)))))

(declare-fun tp!265278 () Bool)

(declare-fun b!843132 () Bool)

(declare-fun inv!21 (TokenValue!1764) Bool)

(assert (=> b!843132 (= e!554613 (and (inv!21 (value!55092 (h!14459 l!5107))) e!554612 tp!265278))))

(declare-fun b!843133 () Bool)

(declare-fun res!385380 () Bool)

(assert (=> b!843133 (=> (not res!385380) (not e!554614))))

(assert (=> b!843133 (= res!385380 (isSeparator!1698 (rule!3121 separatorToken!297)))))

(declare-fun b!843134 () Bool)

(declare-fun res!385382 () Bool)

(assert (=> b!843134 (=> (not res!385382) (not e!554614))))

(declare-fun rulesInvariant!1376 (LexerInterface!1500 List!9075) Bool)

(assert (=> b!843134 (= res!385382 (rulesInvariant!1376 thiss!20117 rules!2621))))

(declare-fun b!843135 () Bool)

(declare-fun tp!265279 () Bool)

(assert (=> b!843135 (= e!554599 (and (inv!21 (value!55092 separatorToken!297)) e!554617 tp!265279))))

(assert (= (and start!74966 res!385385) b!843131))

(assert (= (and b!843131 res!385383) b!843134))

(assert (= (and b!843134 res!385382) b!843128))

(assert (= (and b!843128 res!385384) b!843120))

(assert (= (and b!843120 res!385390) b!843133))

(assert (= (and b!843133 res!385380) b!843129))

(assert (= (and b!843129 res!385389) b!843126))

(assert (= (and b!843126 res!385391) b!843116))

(assert (= (and b!843116 (not res!385378)) b!843121))

(assert (= (and b!843121 (not res!385386)) b!843123))

(assert (= (and b!843123 (not res!385381)) b!843124))

(assert (= (and b!843124 (not res!385388)) b!843115))

(assert (= (and b!843115 res!385387) b!843122))

(assert (= (and b!843115 (not res!385379)) b!843119))

(assert (= b!843118 b!843127))

(assert (= b!843114 b!843118))

(assert (= (and start!74966 ((_ is Cons!9059) rules!2621)) b!843114))

(assert (= b!843112 b!843113))

(assert (= b!843132 b!843112))

(assert (= b!843117 b!843132))

(assert (= (and start!74966 ((_ is Cons!9058) l!5107)) b!843117))

(assert (= b!843125 b!843130))

(assert (= b!843135 b!843125))

(assert (= start!74966 b!843135))

(declare-fun m!1077057 () Bool)

(assert (=> start!74966 m!1077057))

(declare-fun m!1077059 () Bool)

(assert (=> b!843131 m!1077059))

(declare-fun m!1077061 () Bool)

(assert (=> b!843125 m!1077061))

(declare-fun m!1077063 () Bool)

(assert (=> b!843125 m!1077063))

(declare-fun m!1077065 () Bool)

(assert (=> b!843120 m!1077065))

(declare-fun m!1077067 () Bool)

(assert (=> b!843135 m!1077067))

(declare-fun m!1077069 () Bool)

(assert (=> b!843122 m!1077069))

(declare-fun m!1077071 () Bool)

(assert (=> b!843112 m!1077071))

(declare-fun m!1077073 () Bool)

(assert (=> b!843112 m!1077073))

(declare-fun m!1077075 () Bool)

(assert (=> b!843126 m!1077075))

(declare-fun m!1077077 () Bool)

(assert (=> b!843119 m!1077077))

(declare-fun m!1077079 () Bool)

(assert (=> b!843129 m!1077079))

(declare-fun m!1077081 () Bool)

(assert (=> b!843118 m!1077081))

(declare-fun m!1077083 () Bool)

(assert (=> b!843118 m!1077083))

(declare-fun m!1077085 () Bool)

(assert (=> b!843132 m!1077085))

(declare-fun m!1077087 () Bool)

(assert (=> b!843117 m!1077087))

(declare-fun m!1077089 () Bool)

(assert (=> b!843123 m!1077089))

(declare-fun m!1077091 () Bool)

(assert (=> b!843115 m!1077091))

(declare-fun m!1077093 () Bool)

(assert (=> b!843115 m!1077093))

(declare-fun m!1077095 () Bool)

(assert (=> b!843115 m!1077095))

(declare-fun m!1077097 () Bool)

(assert (=> b!843115 m!1077097))

(declare-fun m!1077099 () Bool)

(assert (=> b!843115 m!1077099))

(declare-fun m!1077101 () Bool)

(assert (=> b!843115 m!1077101))

(declare-fun m!1077103 () Bool)

(assert (=> b!843116 m!1077103))

(declare-fun m!1077105 () Bool)

(assert (=> b!843116 m!1077105))

(declare-fun m!1077107 () Bool)

(assert (=> b!843116 m!1077107))

(declare-fun m!1077109 () Bool)

(assert (=> b!843121 m!1077109))

(declare-fun m!1077111 () Bool)

(assert (=> b!843121 m!1077111))

(declare-fun m!1077113 () Bool)

(assert (=> b!843128 m!1077113))

(declare-fun m!1077115 () Bool)

(assert (=> b!843134 m!1077115))

(check-sat (not b!843120) (not b!843116) (not b!843134) b_and!73099 (not b!843131) (not b!843117) (not b!843122) (not b!843126) (not b_next!25315) (not b!843114) (not b!843132) b_and!73105 b_and!73097 (not b!843135) b_and!73101 (not b_next!25311) (not b_next!25309) b_and!73103 (not b_next!25305) (not b_next!25307) (not b!843118) (not b!843128) (not b!843123) (not b!843112) (not b!843121) (not b!843119) (not start!74966) (not b!843129) (not b!843125) (not b!843115) b_and!73107 (not b_next!25313))
(check-sat b_and!73101 b_and!73099 (not b_next!25315) b_and!73105 b_and!73097 (not b_next!25311) (not b_next!25309) b_and!73103 (not b_next!25305) (not b_next!25307) b_and!73107 (not b_next!25313))
