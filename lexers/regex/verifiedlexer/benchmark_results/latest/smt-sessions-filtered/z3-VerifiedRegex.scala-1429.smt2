; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74566 () Bool)

(assert start!74566)

(declare-fun b!840215 () Bool)

(declare-fun b_free!25009 () Bool)

(declare-fun b_next!25073 () Bool)

(assert (=> b!840215 (= b_free!25009 (not b_next!25073))))

(declare-fun tp!264144 () Bool)

(declare-fun b_and!72561 () Bool)

(assert (=> b!840215 (= tp!264144 b_and!72561)))

(declare-fun b_free!25011 () Bool)

(declare-fun b_next!25075 () Bool)

(assert (=> b!840215 (= b_free!25011 (not b_next!25075))))

(declare-fun tp!264138 () Bool)

(declare-fun b_and!72563 () Bool)

(assert (=> b!840215 (= tp!264138 b_and!72563)))

(declare-fun b!840214 () Bool)

(declare-fun b_free!25013 () Bool)

(declare-fun b_next!25077 () Bool)

(assert (=> b!840214 (= b_free!25013 (not b_next!25077))))

(declare-fun tp!264137 () Bool)

(declare-fun b_and!72565 () Bool)

(assert (=> b!840214 (= tp!264137 b_and!72565)))

(declare-fun b_free!25015 () Bool)

(declare-fun b_next!25079 () Bool)

(assert (=> b!840214 (= b_free!25015 (not b_next!25079))))

(declare-fun tp!264140 () Bool)

(declare-fun b_and!72567 () Bool)

(assert (=> b!840214 (= tp!264140 b_and!72567)))

(declare-fun b!840207 () Bool)

(declare-fun b_free!25017 () Bool)

(declare-fun b_next!25081 () Bool)

(assert (=> b!840207 (= b_free!25017 (not b_next!25081))))

(declare-fun tp!264136 () Bool)

(declare-fun b_and!72569 () Bool)

(assert (=> b!840207 (= tp!264136 b_and!72569)))

(declare-fun b_free!25019 () Bool)

(declare-fun b_next!25083 () Bool)

(assert (=> b!840207 (= b_free!25019 (not b_next!25083))))

(declare-fun tp!264141 () Bool)

(declare-fun b_and!72571 () Bool)

(assert (=> b!840207 (= tp!264141 b_and!72571)))

(declare-fun b!840202 () Bool)

(declare-fun res!384074 () Bool)

(declare-fun e!552513 () Bool)

(assert (=> b!840202 (=> (not res!384074) (not e!552513))))

(declare-datatypes ((List!9006 0))(
  ( (Nil!8990) (Cons!8990 (h!14391 (_ BitVec 16)) (t!93436 List!9006)) )
))
(declare-datatypes ((TokenValue!1750 0))(
  ( (FloatLiteralValue!3500 (text!12695 List!9006)) (TokenValueExt!1749 (__x!7231 Int)) (Broken!8750 (value!54667 List!9006)) (Object!1765) (End!1750) (Def!1750) (Underscore!1750) (Match!1750) (Else!1750) (Error!1750) (Case!1750) (If!1750) (Extends!1750) (Abstract!1750) (Class!1750) (Val!1750) (DelimiterValue!3500 (del!1810 List!9006)) (KeywordValue!1756 (value!54668 List!9006)) (CommentValue!3500 (value!54669 List!9006)) (WhitespaceValue!3500 (value!54670 List!9006)) (IndentationValue!1750 (value!54671 List!9006)) (String!10647) (Int32!1750) (Broken!8751 (value!54672 List!9006)) (Boolean!1751) (Unit!13442) (OperatorValue!1753 (op!1810 List!9006)) (IdentifierValue!3500 (value!54673 List!9006)) (IdentifierValue!3501 (value!54674 List!9006)) (WhitespaceValue!3501 (value!54675 List!9006)) (True!3500) (False!3500) (Broken!8752 (value!54676 List!9006)) (Broken!8753 (value!54677 List!9006)) (True!3501) (RightBrace!1750) (RightBracket!1750) (Colon!1750) (Null!1750) (Comma!1750) (LeftBracket!1750) (False!3501) (LeftBrace!1750) (ImaginaryLiteralValue!1750 (text!12696 List!9006)) (StringLiteralValue!5250 (value!54678 List!9006)) (EOFValue!1750 (value!54679 List!9006)) (IdentValue!1750 (value!54680 List!9006)) (DelimiterValue!3501 (value!54681 List!9006)) (DedentValue!1750 (value!54682 List!9006)) (NewLineValue!1750 (value!54683 List!9006)) (IntegerValue!5250 (value!54684 (_ BitVec 32)) (text!12697 List!9006)) (IntegerValue!5251 (value!54685 Int) (text!12698 List!9006)) (Times!1750) (Or!1750) (Equal!1750) (Minus!1750) (Broken!8754 (value!54686 List!9006)) (And!1750) (Div!1750) (LessEqual!1750) (Mod!1750) (Concat!3867) (Not!1750) (Plus!1750) (SpaceValue!1750 (value!54687 List!9006)) (IntegerValue!5252 (value!54688 Int) (text!12699 List!9006)) (StringLiteralValue!5251 (text!12700 List!9006)) (FloatLiteralValue!3501 (text!12701 List!9006)) (BytesLiteralValue!1750 (value!54689 List!9006)) (CommentValue!3501 (value!54690 List!9006)) (StringLiteralValue!5252 (value!54691 List!9006)) (ErrorTokenValue!1750 (msg!1811 List!9006)) )
))
(declare-datatypes ((String!10648 0))(
  ( (String!10649 (value!54692 String)) )
))
(declare-datatypes ((C!4804 0))(
  ( (C!4805 (val!2650 Int)) )
))
(declare-datatypes ((Regex!2117 0))(
  ( (ElementMatch!2117 (c!137053 C!4804)) (Concat!3868 (regOne!4746 Regex!2117) (regTwo!4746 Regex!2117)) (EmptyExpr!2117) (Star!2117 (reg!2446 Regex!2117)) (EmptyLang!2117) (Union!2117 (regOne!4747 Regex!2117) (regTwo!4747 Regex!2117)) )
))
(declare-datatypes ((List!9007 0))(
  ( (Nil!8991) (Cons!8991 (h!14392 C!4804) (t!93437 List!9007)) )
))
(declare-datatypes ((IArray!5971 0))(
  ( (IArray!5972 (innerList!3043 List!9007)) )
))
(declare-datatypes ((Conc!2983 0))(
  ( (Node!2983 (left!6674 Conc!2983) (right!7004 Conc!2983) (csize!6196 Int) (cheight!3194 Int)) (Leaf!4413 (xs!5672 IArray!5971) (csize!6197 Int)) (Empty!2983) )
))
(declare-datatypes ((BalanceConc!5980 0))(
  ( (BalanceConc!5981 (c!137054 Conc!2983)) )
))
(declare-datatypes ((TokenValueInjection!3200 0))(
  ( (TokenValueInjection!3201 (toValue!2701 Int) (toChars!2560 Int)) )
))
(declare-datatypes ((Rule!3168 0))(
  ( (Rule!3169 (regex!1684 Regex!2117) (tag!1946 String!10648) (isSeparator!1684 Bool) (transformation!1684 TokenValueInjection!3200)) )
))
(declare-datatypes ((List!9008 0))(
  ( (Nil!8992) (Cons!8992 (h!14393 Rule!3168) (t!93438 List!9008)) )
))
(declare-fun rules!2621 () List!9008)

(declare-fun isEmpty!5302 (List!9008) Bool)

(assert (=> b!840202 (= res!384074 (not (isEmpty!5302 rules!2621)))))

(declare-fun b!840203 () Bool)

(declare-fun tp!264132 () Bool)

(declare-datatypes ((Token!3034 0))(
  ( (Token!3035 (value!54693 TokenValue!1750) (rule!3107 Rule!3168) (size!7525 Int) (originalCharacters!2240 List!9007)) )
))
(declare-datatypes ((List!9009 0))(
  ( (Nil!8993) (Cons!8993 (h!14394 Token!3034) (t!93439 List!9009)) )
))
(declare-fun l!5107 () List!9009)

(declare-fun e!552511 () Bool)

(declare-fun e!552503 () Bool)

(declare-fun inv!11465 (Token!3034) Bool)

(assert (=> b!840203 (= e!552503 (and (inv!11465 (h!14394 l!5107)) e!552511 tp!264132))))

(declare-fun b!840204 () Bool)

(declare-fun res!384070 () Bool)

(declare-fun e!552510 () Bool)

(assert (=> b!840204 (=> res!384070 e!552510)))

(declare-fun lt!318396 () List!9009)

(declare-fun separatorToken!297 () Token!3034)

(assert (=> b!840204 (= res!384070 (not (= (h!14394 (t!93439 lt!318396)) separatorToken!297)))))

(declare-fun b!840205 () Bool)

(declare-fun res!384069 () Bool)

(assert (=> b!840205 (=> res!384069 e!552510)))

(declare-fun head!1444 (List!9009) Token!3034)

(assert (=> b!840205 (= res!384069 (not (= (head!1444 l!5107) (h!14394 lt!318396))))))

(declare-fun b!840206 () Bool)

(assert (=> b!840206 (= e!552513 (not e!552510))))

(declare-fun res!384064 () Bool)

(assert (=> b!840206 (=> res!384064 e!552510)))

(get-info :version)

(assert (=> b!840206 (= res!384064 (or (not ((_ is Cons!8993) lt!318396)) (not ((_ is Cons!8993) (t!93439 lt!318396)))))))

(declare-datatypes ((LexerInterface!1486 0))(
  ( (LexerInterfaceExt!1483 (__x!7232 Int)) (Lexer!1484) )
))
(declare-fun thiss!20117 () LexerInterface!1486)

(declare-fun rulesProduceEachTokenIndividuallyList!374 (LexerInterface!1486 List!9008 List!9009) Bool)

(assert (=> b!840206 (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 lt!318396)))

(declare-fun withSeparatorTokenList!16 (LexerInterface!1486 List!9009 Token!3034) List!9009)

(assert (=> b!840206 (= lt!318396 (withSeparatorTokenList!16 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13443 0))(
  ( (Unit!13444) )
))
(declare-fun lt!318397 () Unit!13443)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!16 (LexerInterface!1486 List!9008 List!9009 Token!3034) Unit!13443)

(assert (=> b!840206 (= lt!318397 (withSeparatorTokenListPreservesRulesProduceTokens!16 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!552517 () Bool)

(assert (=> b!840207 (= e!552517 (and tp!264136 tp!264141))))

(declare-fun b!840208 () Bool)

(declare-fun res!384073 () Bool)

(assert (=> b!840208 (=> (not res!384073) (not e!552513))))

(declare-fun sepAndNonSepRulesDisjointChars!484 (List!9008 List!9008) Bool)

(assert (=> b!840208 (= res!384073 (sepAndNonSepRulesDisjointChars!484 rules!2621 rules!2621))))

(declare-fun tp!264139 () Bool)

(declare-fun e!552509 () Bool)

(declare-fun b!840209 () Bool)

(declare-fun inv!11462 (String!10648) Bool)

(declare-fun inv!11466 (TokenValueInjection!3200) Bool)

(assert (=> b!840209 (= e!552509 (and tp!264139 (inv!11462 (tag!1946 (rule!3107 (h!14394 l!5107)))) (inv!11466 (transformation!1684 (rule!3107 (h!14394 l!5107)))) e!552517))))

(declare-fun b!840210 () Bool)

(declare-fun res!384066 () Bool)

(assert (=> b!840210 (=> (not res!384066) (not e!552513))))

(assert (=> b!840210 (= res!384066 (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 l!5107))))

(declare-fun b!840211 () Bool)

(declare-fun e!552502 () Bool)

(declare-fun isEmpty!5303 (BalanceConc!5980) Bool)

(declare-fun charsOf!969 (Token!3034) BalanceConc!5980)

(assert (=> b!840211 (= e!552502 (not (isEmpty!5303 (charsOf!969 (h!14394 (t!93439 lt!318396))))))))

(declare-fun b!840212 () Bool)

(declare-fun res!384068 () Bool)

(assert (=> b!840212 (=> (not res!384068) (not e!552513))))

(declare-fun lambda!24944 () Int)

(declare-fun forall!2099 (List!9009 Int) Bool)

(assert (=> b!840212 (= res!384068 (forall!2099 l!5107 lambda!24944))))

(declare-fun b!840213 () Bool)

(declare-fun res!384071 () Bool)

(assert (=> b!840213 (=> (not res!384071) (not e!552513))))

(declare-fun rulesInvariant!1362 (LexerInterface!1486 List!9008) Bool)

(assert (=> b!840213 (= res!384071 (rulesInvariant!1362 thiss!20117 rules!2621))))

(declare-fun e!552506 () Bool)

(assert (=> b!840214 (= e!552506 (and tp!264137 tp!264140))))

(declare-fun e!552519 () Bool)

(assert (=> b!840215 (= e!552519 (and tp!264144 tp!264138))))

(declare-fun b!840216 () Bool)

(assert (=> b!840216 (= e!552510 e!552502)))

(declare-fun res!384075 () Bool)

(assert (=> b!840216 (=> res!384075 e!552502)))

(declare-fun rulesProduceIndividualToken!550 (LexerInterface!1486 List!9008 Token!3034) Bool)

(assert (=> b!840216 (= res!384075 (not (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 lt!318396))))))

(declare-fun separableTokensPredicate!26 (LexerInterface!1486 Token!3034 Token!3034 List!9008) Bool)

(assert (=> b!840216 (separableTokensPredicate!26 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621)))

(declare-fun lt!318395 () Unit!13443)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!8 (LexerInterface!1486 Token!3034 Token!3034 List!9008) Unit!13443)

(assert (=> b!840216 (= lt!318395 (lemmaTokensOfDifferentKindsAreSeparable!8 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621))))

(declare-fun b!840217 () Bool)

(declare-fun res!384076 () Bool)

(assert (=> b!840217 (=> (not res!384076) (not e!552513))))

(assert (=> b!840217 (= res!384076 (rulesProduceIndividualToken!550 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun tp!264134 () Bool)

(declare-fun e!552514 () Bool)

(declare-fun b!840218 () Bool)

(assert (=> b!840218 (= e!552514 (and tp!264134 (inv!11462 (tag!1946 (rule!3107 separatorToken!297))) (inv!11466 (transformation!1684 (rule!3107 separatorToken!297))) e!552519))))

(declare-fun b!840219 () Bool)

(declare-fun res!384063 () Bool)

(assert (=> b!840219 (=> res!384063 e!552502)))

(assert (=> b!840219 (= res!384063 (not (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 (t!93439 lt!318396)))))))

(declare-fun b!840220 () Bool)

(declare-fun e!552512 () Bool)

(declare-fun e!552504 () Bool)

(declare-fun tp!264142 () Bool)

(assert (=> b!840220 (= e!552512 (and e!552504 tp!264142))))

(declare-fun tp!264135 () Bool)

(declare-fun b!840221 () Bool)

(assert (=> b!840221 (= e!552504 (and tp!264135 (inv!11462 (tag!1946 (h!14393 rules!2621))) (inv!11466 (transformation!1684 (h!14393 rules!2621))) e!552506))))

(declare-fun b!840222 () Bool)

(declare-fun res!384072 () Bool)

(assert (=> b!840222 (=> (not res!384072) (not e!552513))))

(assert (=> b!840222 (= res!384072 (isSeparator!1684 (rule!3107 separatorToken!297)))))

(declare-fun tp!264143 () Bool)

(declare-fun e!552507 () Bool)

(declare-fun b!840223 () Bool)

(declare-fun inv!21 (TokenValue!1750) Bool)

(assert (=> b!840223 (= e!552507 (and (inv!21 (value!54693 separatorToken!297)) e!552514 tp!264143))))

(declare-fun res!384067 () Bool)

(assert (=> start!74566 (=> (not res!384067) (not e!552513))))

(assert (=> start!74566 (= res!384067 ((_ is Lexer!1484) thiss!20117))))

(assert (=> start!74566 e!552513))

(assert (=> start!74566 true))

(assert (=> start!74566 e!552512))

(assert (=> start!74566 e!552503))

(assert (=> start!74566 (and (inv!11465 separatorToken!297) e!552507)))

(declare-fun tp!264133 () Bool)

(declare-fun b!840224 () Bool)

(assert (=> b!840224 (= e!552511 (and (inv!21 (value!54693 (h!14394 l!5107))) e!552509 tp!264133))))

(declare-fun b!840225 () Bool)

(declare-fun res!384065 () Bool)

(assert (=> b!840225 (=> res!384065 e!552510)))

(declare-fun tail!1002 (List!9009) List!9009)

(assert (=> b!840225 (= res!384065 (not (= (t!93439 (t!93439 lt!318396)) (withSeparatorTokenList!16 thiss!20117 (tail!1002 l!5107) separatorToken!297))))))

(assert (= (and start!74566 res!384067) b!840202))

(assert (= (and b!840202 res!384074) b!840213))

(assert (= (and b!840213 res!384071) b!840210))

(assert (= (and b!840210 res!384066) b!840217))

(assert (= (and b!840217 res!384076) b!840222))

(assert (= (and b!840222 res!384072) b!840212))

(assert (= (and b!840212 res!384068) b!840208))

(assert (= (and b!840208 res!384073) b!840206))

(assert (= (and b!840206 (not res!384064)) b!840225))

(assert (= (and b!840225 (not res!384065)) b!840205))

(assert (= (and b!840205 (not res!384069)) b!840204))

(assert (= (and b!840204 (not res!384070)) b!840216))

(assert (= (and b!840216 (not res!384075)) b!840219))

(assert (= (and b!840219 (not res!384063)) b!840211))

(assert (= b!840221 b!840214))

(assert (= b!840220 b!840221))

(assert (= (and start!74566 ((_ is Cons!8992) rules!2621)) b!840220))

(assert (= b!840209 b!840207))

(assert (= b!840224 b!840209))

(assert (= b!840203 b!840224))

(assert (= (and start!74566 ((_ is Cons!8993) l!5107)) b!840203))

(assert (= b!840218 b!840215))

(assert (= b!840223 b!840218))

(assert (= start!74566 b!840223))

(declare-fun m!1073121 () Bool)

(assert (=> b!840210 m!1073121))

(declare-fun m!1073123 () Bool)

(assert (=> b!840208 m!1073123))

(declare-fun m!1073125 () Bool)

(assert (=> b!840211 m!1073125))

(assert (=> b!840211 m!1073125))

(declare-fun m!1073127 () Bool)

(assert (=> b!840211 m!1073127))

(declare-fun m!1073129 () Bool)

(assert (=> b!840224 m!1073129))

(declare-fun m!1073131 () Bool)

(assert (=> b!840213 m!1073131))

(declare-fun m!1073133 () Bool)

(assert (=> b!840218 m!1073133))

(declare-fun m!1073135 () Bool)

(assert (=> b!840218 m!1073135))

(declare-fun m!1073137 () Bool)

(assert (=> b!840216 m!1073137))

(declare-fun m!1073139 () Bool)

(assert (=> b!840216 m!1073139))

(declare-fun m!1073141 () Bool)

(assert (=> b!840216 m!1073141))

(declare-fun m!1073143 () Bool)

(assert (=> b!840225 m!1073143))

(assert (=> b!840225 m!1073143))

(declare-fun m!1073145 () Bool)

(assert (=> b!840225 m!1073145))

(declare-fun m!1073147 () Bool)

(assert (=> b!840217 m!1073147))

(declare-fun m!1073149 () Bool)

(assert (=> b!840205 m!1073149))

(declare-fun m!1073151 () Bool)

(assert (=> b!840206 m!1073151))

(declare-fun m!1073153 () Bool)

(assert (=> b!840206 m!1073153))

(declare-fun m!1073155 () Bool)

(assert (=> b!840206 m!1073155))

(declare-fun m!1073157 () Bool)

(assert (=> b!840221 m!1073157))

(declare-fun m!1073159 () Bool)

(assert (=> b!840221 m!1073159))

(declare-fun m!1073161 () Bool)

(assert (=> b!840209 m!1073161))

(declare-fun m!1073163 () Bool)

(assert (=> b!840209 m!1073163))

(declare-fun m!1073165 () Bool)

(assert (=> b!840212 m!1073165))

(declare-fun m!1073167 () Bool)

(assert (=> start!74566 m!1073167))

(declare-fun m!1073169 () Bool)

(assert (=> b!840223 m!1073169))

(declare-fun m!1073171 () Bool)

(assert (=> b!840219 m!1073171))

(declare-fun m!1073173 () Bool)

(assert (=> b!840202 m!1073173))

(declare-fun m!1073175 () Bool)

(assert (=> b!840203 m!1073175))

(check-sat (not b!840210) (not b!840217) (not b!840202) (not b!840206) (not b!840221) (not b_next!25079) b_and!72565 (not b!840212) (not b!840216) (not b_next!25073) b_and!72561 b_and!72567 (not b!840205) (not start!74566) (not b!840213) (not b_next!25077) (not b!840208) (not b!840209) (not b!840219) (not b!840225) (not b!840223) (not b_next!25083) (not b_next!25081) (not b!840211) (not b!840224) (not b!840203) (not b!840220) b_and!72569 b_and!72563 (not b_next!25075) (not b!840218) b_and!72571)
(check-sat b_and!72567 (not b_next!25077) (not b_next!25079) b_and!72565 b_and!72571 (not b_next!25073) b_and!72561 (not b_next!25083) (not b_next!25081) b_and!72569 b_and!72563 (not b_next!25075))
(get-model)

(declare-fun d!261530 () Bool)

(declare-fun res!384094 () Bool)

(declare-fun e!552530 () Bool)

(assert (=> d!261530 (=> res!384094 e!552530)))

(assert (=> d!261530 (= res!384094 ((_ is Nil!8993) l!5107))))

(assert (=> d!261530 (= (forall!2099 l!5107 lambda!24944) e!552530)))

(declare-fun b!840236 () Bool)

(declare-fun e!552531 () Bool)

(assert (=> b!840236 (= e!552530 e!552531)))

(declare-fun res!384095 () Bool)

(assert (=> b!840236 (=> (not res!384095) (not e!552531))))

(declare-fun dynLambda!4157 (Int Token!3034) Bool)

(assert (=> b!840236 (= res!384095 (dynLambda!4157 lambda!24944 (h!14394 l!5107)))))

(declare-fun b!840237 () Bool)

(assert (=> b!840237 (= e!552531 (forall!2099 (t!93439 l!5107) lambda!24944))))

(assert (= (and d!261530 (not res!384094)) b!840236))

(assert (= (and b!840236 res!384095) b!840237))

(declare-fun b_lambda!27627 () Bool)

(assert (=> (not b_lambda!27627) (not b!840236)))

(declare-fun m!1073181 () Bool)

(assert (=> b!840236 m!1073181))

(declare-fun m!1073183 () Bool)

(assert (=> b!840237 m!1073183))

(assert (=> b!840212 d!261530))

(declare-fun d!261532 () Bool)

(declare-fun lt!318400 () Bool)

(declare-fun isEmpty!5306 (List!9007) Bool)

(declare-fun list!3545 (BalanceConc!5980) List!9007)

(assert (=> d!261532 (= lt!318400 (isEmpty!5306 (list!3545 (charsOf!969 (h!14394 (t!93439 lt!318396))))))))

(declare-fun isEmpty!5307 (Conc!2983) Bool)

(assert (=> d!261532 (= lt!318400 (isEmpty!5307 (c!137054 (charsOf!969 (h!14394 (t!93439 lt!318396))))))))

(assert (=> d!261532 (= (isEmpty!5303 (charsOf!969 (h!14394 (t!93439 lt!318396)))) lt!318400)))

(declare-fun bs!229804 () Bool)

(assert (= bs!229804 d!261532))

(assert (=> bs!229804 m!1073125))

(declare-fun m!1073185 () Bool)

(assert (=> bs!229804 m!1073185))

(assert (=> bs!229804 m!1073185))

(declare-fun m!1073187 () Bool)

(assert (=> bs!229804 m!1073187))

(declare-fun m!1073189 () Bool)

(assert (=> bs!229804 m!1073189))

(assert (=> b!840211 d!261532))

(declare-fun d!261534 () Bool)

(declare-fun lt!318403 () BalanceConc!5980)

(assert (=> d!261534 (= (list!3545 lt!318403) (originalCharacters!2240 (h!14394 (t!93439 lt!318396))))))

(declare-fun dynLambda!4158 (Int TokenValue!1750) BalanceConc!5980)

(assert (=> d!261534 (= lt!318403 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396))))) (value!54693 (h!14394 (t!93439 lt!318396)))))))

(assert (=> d!261534 (= (charsOf!969 (h!14394 (t!93439 lt!318396))) lt!318403)))

(declare-fun b_lambda!27629 () Bool)

(assert (=> (not b_lambda!27629) (not d!261534)))

(declare-fun tb!57933 () Bool)

(declare-fun t!93441 () Bool)

(assert (=> (and b!840215 (= (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396)))))) t!93441) tb!57933))

(declare-fun b!840242 () Bool)

(declare-fun e!552534 () Bool)

(declare-fun tp!264147 () Bool)

(declare-fun inv!11469 (Conc!2983) Bool)

(assert (=> b!840242 (= e!552534 (and (inv!11469 (c!137054 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396))))) (value!54693 (h!14394 (t!93439 lt!318396)))))) tp!264147))))

(declare-fun result!67174 () Bool)

(declare-fun inv!11470 (BalanceConc!5980) Bool)

(assert (=> tb!57933 (= result!67174 (and (inv!11470 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396))))) (value!54693 (h!14394 (t!93439 lt!318396))))) e!552534))))

(assert (= tb!57933 b!840242))

(declare-fun m!1073191 () Bool)

(assert (=> b!840242 m!1073191))

(declare-fun m!1073193 () Bool)

(assert (=> tb!57933 m!1073193))

(assert (=> d!261534 t!93441))

(declare-fun b_and!72573 () Bool)

(assert (= b_and!72563 (and (=> t!93441 result!67174) b_and!72573)))

(declare-fun t!93443 () Bool)

(declare-fun tb!57935 () Bool)

(assert (=> (and b!840214 (= (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396)))))) t!93443) tb!57935))

(declare-fun result!67178 () Bool)

(assert (= result!67178 result!67174))

(assert (=> d!261534 t!93443))

(declare-fun b_and!72575 () Bool)

(assert (= b_and!72567 (and (=> t!93443 result!67178) b_and!72575)))

(declare-fun tb!57937 () Bool)

(declare-fun t!93445 () Bool)

(assert (=> (and b!840207 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396)))))) t!93445) tb!57937))

(declare-fun result!67180 () Bool)

(assert (= result!67180 result!67174))

(assert (=> d!261534 t!93445))

(declare-fun b_and!72577 () Bool)

(assert (= b_and!72571 (and (=> t!93445 result!67180) b_and!72577)))

(declare-fun m!1073195 () Bool)

(assert (=> d!261534 m!1073195))

(declare-fun m!1073197 () Bool)

(assert (=> d!261534 m!1073197))

(assert (=> b!840211 d!261534))

(declare-fun d!261536 () Bool)

(declare-fun res!384098 () Bool)

(declare-fun e!552537 () Bool)

(assert (=> d!261536 (=> (not res!384098) (not e!552537))))

(declare-fun rulesValid!581 (LexerInterface!1486 List!9008) Bool)

(assert (=> d!261536 (= res!384098 (rulesValid!581 thiss!20117 rules!2621))))

(assert (=> d!261536 (= (rulesInvariant!1362 thiss!20117 rules!2621) e!552537)))

(declare-fun b!840245 () Bool)

(declare-datatypes ((List!9011 0))(
  ( (Nil!8995) (Cons!8995 (h!14396 String!10648) (t!93507 List!9011)) )
))
(declare-fun noDuplicateTag!581 (LexerInterface!1486 List!9008 List!9011) Bool)

(assert (=> b!840245 (= e!552537 (noDuplicateTag!581 thiss!20117 rules!2621 Nil!8995))))

(assert (= (and d!261536 res!384098) b!840245))

(declare-fun m!1073199 () Bool)

(assert (=> d!261536 m!1073199))

(declare-fun m!1073201 () Bool)

(assert (=> b!840245 m!1073201))

(assert (=> b!840213 d!261536))

(declare-fun b!840256 () Bool)

(declare-fun e!552544 () Bool)

(declare-fun e!552546 () Bool)

(assert (=> b!840256 (= e!552544 e!552546)))

(declare-fun c!137059 () Bool)

(assert (=> b!840256 (= c!137059 ((_ is IntegerValue!5251) (value!54693 (h!14394 l!5107))))))

(declare-fun b!840257 () Bool)

(declare-fun inv!17 (TokenValue!1750) Bool)

(assert (=> b!840257 (= e!552546 (inv!17 (value!54693 (h!14394 l!5107))))))

(declare-fun b!840258 () Bool)

(declare-fun res!384101 () Bool)

(declare-fun e!552545 () Bool)

(assert (=> b!840258 (=> res!384101 e!552545)))

(assert (=> b!840258 (= res!384101 (not ((_ is IntegerValue!5252) (value!54693 (h!14394 l!5107)))))))

(assert (=> b!840258 (= e!552546 e!552545)))

(declare-fun b!840259 () Bool)

(declare-fun inv!16 (TokenValue!1750) Bool)

(assert (=> b!840259 (= e!552544 (inv!16 (value!54693 (h!14394 l!5107))))))

(declare-fun b!840260 () Bool)

(declare-fun inv!15 (TokenValue!1750) Bool)

(assert (=> b!840260 (= e!552545 (inv!15 (value!54693 (h!14394 l!5107))))))

(declare-fun d!261538 () Bool)

(declare-fun c!137060 () Bool)

(assert (=> d!261538 (= c!137060 ((_ is IntegerValue!5250) (value!54693 (h!14394 l!5107))))))

(assert (=> d!261538 (= (inv!21 (value!54693 (h!14394 l!5107))) e!552544)))

(assert (= (and d!261538 c!137060) b!840259))

(assert (= (and d!261538 (not c!137060)) b!840256))

(assert (= (and b!840256 c!137059) b!840257))

(assert (= (and b!840256 (not c!137059)) b!840258))

(assert (= (and b!840258 (not res!384101)) b!840260))

(declare-fun m!1073203 () Bool)

(assert (=> b!840257 m!1073203))

(declare-fun m!1073205 () Bool)

(assert (=> b!840259 m!1073205))

(declare-fun m!1073207 () Bool)

(assert (=> b!840260 m!1073207))

(assert (=> b!840224 d!261538))

(declare-fun b!840261 () Bool)

(declare-fun e!552547 () Bool)

(declare-fun e!552549 () Bool)

(assert (=> b!840261 (= e!552547 e!552549)))

(declare-fun c!137061 () Bool)

(assert (=> b!840261 (= c!137061 ((_ is IntegerValue!5251) (value!54693 separatorToken!297)))))

(declare-fun b!840262 () Bool)

(assert (=> b!840262 (= e!552549 (inv!17 (value!54693 separatorToken!297)))))

(declare-fun b!840263 () Bool)

(declare-fun res!384102 () Bool)

(declare-fun e!552548 () Bool)

(assert (=> b!840263 (=> res!384102 e!552548)))

(assert (=> b!840263 (= res!384102 (not ((_ is IntegerValue!5252) (value!54693 separatorToken!297))))))

(assert (=> b!840263 (= e!552549 e!552548)))

(declare-fun b!840264 () Bool)

(assert (=> b!840264 (= e!552547 (inv!16 (value!54693 separatorToken!297)))))

(declare-fun b!840265 () Bool)

(assert (=> b!840265 (= e!552548 (inv!15 (value!54693 separatorToken!297)))))

(declare-fun d!261540 () Bool)

(declare-fun c!137062 () Bool)

(assert (=> d!261540 (= c!137062 ((_ is IntegerValue!5250) (value!54693 separatorToken!297)))))

(assert (=> d!261540 (= (inv!21 (value!54693 separatorToken!297)) e!552547)))

(assert (= (and d!261540 c!137062) b!840264))

(assert (= (and d!261540 (not c!137062)) b!840261))

(assert (= (and b!840261 c!137061) b!840262))

(assert (= (and b!840261 (not c!137061)) b!840263))

(assert (= (and b!840263 (not res!384102)) b!840265))

(declare-fun m!1073209 () Bool)

(assert (=> b!840262 m!1073209))

(declare-fun m!1073211 () Bool)

(assert (=> b!840264 m!1073211))

(declare-fun m!1073213 () Bool)

(assert (=> b!840265 m!1073213))

(assert (=> b!840223 d!261540))

(declare-fun d!261542 () Bool)

(assert (=> d!261542 (= (isEmpty!5302 rules!2621) ((_ is Nil!8992) rules!2621))))

(assert (=> b!840202 d!261542))

(declare-fun lt!318424 () List!9009)

(declare-fun d!261544 () Bool)

(declare-fun printList!454 (LexerInterface!1486 List!9009) List!9007)

(declare-fun printWithSeparatorTokenList!12 (LexerInterface!1486 List!9009 Token!3034) List!9007)

(assert (=> d!261544 (= (printList!454 thiss!20117 lt!318424) (printWithSeparatorTokenList!12 thiss!20117 (tail!1002 l!5107) separatorToken!297))))

(declare-fun e!552568 () List!9009)

(assert (=> d!261544 (= lt!318424 e!552568)))

(declare-fun c!137071 () Bool)

(assert (=> d!261544 (= c!137071 ((_ is Cons!8993) (tail!1002 l!5107)))))

(declare-fun e!552567 () Bool)

(assert (=> d!261544 e!552567))

(declare-fun res!384118 () Bool)

(assert (=> d!261544 (=> (not res!384118) (not e!552567))))

(assert (=> d!261544 (= res!384118 (isSeparator!1684 (rule!3107 separatorToken!297)))))

(assert (=> d!261544 (= (withSeparatorTokenList!16 thiss!20117 (tail!1002 l!5107) separatorToken!297) lt!318424)))

(declare-fun b!840290 () Bool)

(assert (=> b!840290 (= e!552568 Nil!8993)))

(declare-fun b!840291 () Bool)

(declare-fun e!552566 () List!9007)

(declare-fun lt!318423 () List!9009)

(declare-fun ++!2331 (List!9007 List!9007) List!9007)

(assert (=> b!840291 (= e!552566 (++!2331 (list!3545 (charsOf!969 (h!14394 lt!318423))) (printList!454 thiss!20117 (t!93439 lt!318423))))))

(declare-fun b!840292 () Bool)

(declare-fun e!552571 () List!9007)

(declare-fun lt!318422 () List!9009)

(assert (=> b!840292 (= e!552571 (++!2331 (list!3545 (charsOf!969 (h!14394 lt!318422))) (printList!454 thiss!20117 (t!93439 lt!318422))))))

(declare-fun b!840293 () Bool)

(assert (=> b!840293 (= e!552566 Nil!8991)))

(declare-fun e!552570 () Bool)

(declare-fun b!840294 () Bool)

(declare-fun $colon$colon!67 (List!9009 Token!3034) List!9009)

(assert (=> b!840294 (= e!552570 (= (printList!454 thiss!20117 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297) separatorToken!297) (h!14394 (tail!1002 l!5107)))) e!552571))))

(declare-fun c!137070 () Bool)

(assert (=> b!840294 (= c!137070 ((_ is Cons!8993) lt!318422))))

(assert (=> b!840294 (= lt!318422 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297) separatorToken!297) (h!14394 (tail!1002 l!5107))))))

(declare-fun b!840295 () Bool)

(declare-fun res!384115 () Bool)

(assert (=> b!840295 (=> (not res!384115) (not e!552567))))

(assert (=> b!840295 (= res!384115 e!552570)))

(declare-fun res!384116 () Bool)

(assert (=> b!840295 (=> res!384116 e!552570)))

(assert (=> b!840295 (= res!384116 (not ((_ is Cons!8993) (tail!1002 l!5107))))))

(declare-fun e!552569 () Bool)

(declare-fun b!840296 () Bool)

(assert (=> b!840296 (= e!552569 (= (printList!454 thiss!20117 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297) separatorToken!297)) e!552566))))

(declare-fun c!137069 () Bool)

(assert (=> b!840296 (= c!137069 ((_ is Cons!8993) lt!318423))))

(assert (=> b!840296 (= lt!318423 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!840297 () Bool)

(assert (=> b!840297 (= e!552567 e!552569)))

(declare-fun res!384117 () Bool)

(assert (=> b!840297 (=> res!384117 e!552569)))

(assert (=> b!840297 (= res!384117 (not ((_ is Cons!8993) (tail!1002 l!5107))))))

(declare-fun b!840298 () Bool)

(assert (=> b!840298 (= e!552568 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297) separatorToken!297) (h!14394 (tail!1002 l!5107))))))

(declare-fun lt!318426 () List!9007)

(assert (=> b!840298 (= lt!318426 (list!3545 (charsOf!969 (h!14394 (tail!1002 l!5107)))))))

(declare-fun lt!318429 () List!9007)

(assert (=> b!840298 (= lt!318429 (list!3545 (charsOf!969 separatorToken!297)))))

(declare-fun lt!318428 () List!9007)

(assert (=> b!840298 (= lt!318428 (printList!454 thiss!20117 (withSeparatorTokenList!16 thiss!20117 (t!93439 (tail!1002 l!5107)) separatorToken!297)))))

(declare-fun lt!318427 () Unit!13443)

(declare-fun lemmaConcatAssociativity!729 (List!9007 List!9007 List!9007) Unit!13443)

(assert (=> b!840298 (= lt!318427 (lemmaConcatAssociativity!729 lt!318426 lt!318429 lt!318428))))

(assert (=> b!840298 (= (++!2331 (++!2331 lt!318426 lt!318429) lt!318428) (++!2331 lt!318426 (++!2331 lt!318429 lt!318428)))))

(declare-fun lt!318425 () Unit!13443)

(assert (=> b!840298 (= lt!318425 lt!318427)))

(declare-fun b!840299 () Bool)

(assert (=> b!840299 (= e!552571 Nil!8991)))

(assert (= (and d!261544 res!384118) b!840295))

(assert (= (and b!840295 (not res!384116)) b!840294))

(assert (= (and b!840294 c!137070) b!840292))

(assert (= (and b!840294 (not c!137070)) b!840299))

(assert (= (and b!840295 res!384115) b!840297))

(assert (= (and b!840297 (not res!384117)) b!840296))

(assert (= (and b!840296 c!137069) b!840291))

(assert (= (and b!840296 (not c!137069)) b!840293))

(assert (= (and d!261544 c!137071) b!840298))

(assert (= (and d!261544 (not c!137071)) b!840290))

(declare-fun m!1073215 () Bool)

(assert (=> d!261544 m!1073215))

(assert (=> d!261544 m!1073143))

(declare-fun m!1073217 () Bool)

(assert (=> d!261544 m!1073217))

(declare-fun m!1073219 () Bool)

(assert (=> b!840298 m!1073219))

(declare-fun m!1073221 () Bool)

(assert (=> b!840298 m!1073221))

(declare-fun m!1073223 () Bool)

(assert (=> b!840298 m!1073223))

(declare-fun m!1073225 () Bool)

(assert (=> b!840298 m!1073225))

(declare-fun m!1073227 () Bool)

(assert (=> b!840298 m!1073227))

(assert (=> b!840298 m!1073225))

(assert (=> b!840298 m!1073223))

(declare-fun m!1073229 () Bool)

(assert (=> b!840298 m!1073229))

(assert (=> b!840298 m!1073225))

(declare-fun m!1073231 () Bool)

(assert (=> b!840298 m!1073231))

(declare-fun m!1073233 () Bool)

(assert (=> b!840298 m!1073233))

(assert (=> b!840298 m!1073227))

(declare-fun m!1073235 () Bool)

(assert (=> b!840298 m!1073235))

(assert (=> b!840298 m!1073233))

(declare-fun m!1073237 () Bool)

(assert (=> b!840298 m!1073237))

(declare-fun m!1073239 () Bool)

(assert (=> b!840298 m!1073239))

(declare-fun m!1073241 () Bool)

(assert (=> b!840298 m!1073241))

(assert (=> b!840298 m!1073219))

(assert (=> b!840298 m!1073239))

(declare-fun m!1073243 () Bool)

(assert (=> b!840298 m!1073243))

(declare-fun m!1073245 () Bool)

(assert (=> b!840291 m!1073245))

(assert (=> b!840291 m!1073245))

(declare-fun m!1073247 () Bool)

(assert (=> b!840291 m!1073247))

(declare-fun m!1073249 () Bool)

(assert (=> b!840291 m!1073249))

(assert (=> b!840291 m!1073247))

(assert (=> b!840291 m!1073249))

(declare-fun m!1073251 () Bool)

(assert (=> b!840291 m!1073251))

(assert (=> b!840296 m!1073225))

(assert (=> b!840296 m!1073225))

(assert (=> b!840296 m!1073227))

(assert (=> b!840296 m!1073227))

(declare-fun m!1073253 () Bool)

(assert (=> b!840296 m!1073253))

(declare-fun m!1073255 () Bool)

(assert (=> b!840292 m!1073255))

(assert (=> b!840292 m!1073255))

(declare-fun m!1073257 () Bool)

(assert (=> b!840292 m!1073257))

(declare-fun m!1073259 () Bool)

(assert (=> b!840292 m!1073259))

(assert (=> b!840292 m!1073257))

(assert (=> b!840292 m!1073259))

(declare-fun m!1073261 () Bool)

(assert (=> b!840292 m!1073261))

(assert (=> b!840294 m!1073225))

(assert (=> b!840294 m!1073225))

(assert (=> b!840294 m!1073227))

(assert (=> b!840294 m!1073227))

(assert (=> b!840294 m!1073235))

(assert (=> b!840294 m!1073235))

(declare-fun m!1073263 () Bool)

(assert (=> b!840294 m!1073263))

(assert (=> b!840225 d!261544))

(declare-fun d!261546 () Bool)

(assert (=> d!261546 (= (tail!1002 l!5107) (t!93439 l!5107))))

(assert (=> b!840225 d!261546))

(declare-fun d!261548 () Bool)

(declare-fun res!384123 () Bool)

(declare-fun e!552574 () Bool)

(assert (=> d!261548 (=> (not res!384123) (not e!552574))))

(assert (=> d!261548 (= res!384123 (not (isEmpty!5306 (originalCharacters!2240 separatorToken!297))))))

(assert (=> d!261548 (= (inv!11465 separatorToken!297) e!552574)))

(declare-fun b!840304 () Bool)

(declare-fun res!384124 () Bool)

(assert (=> b!840304 (=> (not res!384124) (not e!552574))))

(assert (=> b!840304 (= res!384124 (= (originalCharacters!2240 separatorToken!297) (list!3545 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (value!54693 separatorToken!297)))))))

(declare-fun b!840305 () Bool)

(declare-fun size!7528 (List!9007) Int)

(assert (=> b!840305 (= e!552574 (= (size!7525 separatorToken!297) (size!7528 (originalCharacters!2240 separatorToken!297))))))

(assert (= (and d!261548 res!384123) b!840304))

(assert (= (and b!840304 res!384124) b!840305))

(declare-fun b_lambda!27631 () Bool)

(assert (=> (not b_lambda!27631) (not b!840304)))

(declare-fun t!93449 () Bool)

(declare-fun tb!57939 () Bool)

(assert (=> (and b!840215 (= (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297)))) t!93449) tb!57939))

(declare-fun b!840306 () Bool)

(declare-fun e!552575 () Bool)

(declare-fun tp!264148 () Bool)

(assert (=> b!840306 (= e!552575 (and (inv!11469 (c!137054 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (value!54693 separatorToken!297)))) tp!264148))))

(declare-fun result!67182 () Bool)

(assert (=> tb!57939 (= result!67182 (and (inv!11470 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (value!54693 separatorToken!297))) e!552575))))

(assert (= tb!57939 b!840306))

(declare-fun m!1073265 () Bool)

(assert (=> b!840306 m!1073265))

(declare-fun m!1073267 () Bool)

(assert (=> tb!57939 m!1073267))

(assert (=> b!840304 t!93449))

(declare-fun b_and!72579 () Bool)

(assert (= b_and!72573 (and (=> t!93449 result!67182) b_and!72579)))

(declare-fun t!93451 () Bool)

(declare-fun tb!57941 () Bool)

(assert (=> (and b!840214 (= (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297)))) t!93451) tb!57941))

(declare-fun result!67184 () Bool)

(assert (= result!67184 result!67182))

(assert (=> b!840304 t!93451))

(declare-fun b_and!72581 () Bool)

(assert (= b_and!72575 (and (=> t!93451 result!67184) b_and!72581)))

(declare-fun t!93453 () Bool)

(declare-fun tb!57943 () Bool)

(assert (=> (and b!840207 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297)))) t!93453) tb!57943))

(declare-fun result!67186 () Bool)

(assert (= result!67186 result!67182))

(assert (=> b!840304 t!93453))

(declare-fun b_and!72583 () Bool)

(assert (= b_and!72577 (and (=> t!93453 result!67186) b_and!72583)))

(declare-fun m!1073269 () Bool)

(assert (=> d!261548 m!1073269))

(declare-fun m!1073271 () Bool)

(assert (=> b!840304 m!1073271))

(assert (=> b!840304 m!1073271))

(declare-fun m!1073273 () Bool)

(assert (=> b!840304 m!1073273))

(declare-fun m!1073275 () Bool)

(assert (=> b!840305 m!1073275))

(assert (=> start!74566 d!261548))

(declare-fun d!261550 () Bool)

(declare-fun res!384125 () Bool)

(declare-fun e!552576 () Bool)

(assert (=> d!261550 (=> (not res!384125) (not e!552576))))

(assert (=> d!261550 (= res!384125 (not (isEmpty!5306 (originalCharacters!2240 (h!14394 l!5107)))))))

(assert (=> d!261550 (= (inv!11465 (h!14394 l!5107)) e!552576)))

(declare-fun b!840307 () Bool)

(declare-fun res!384126 () Bool)

(assert (=> b!840307 (=> (not res!384126) (not e!552576))))

(assert (=> b!840307 (= res!384126 (= (originalCharacters!2240 (h!14394 l!5107)) (list!3545 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (value!54693 (h!14394 l!5107))))))))

(declare-fun b!840308 () Bool)

(assert (=> b!840308 (= e!552576 (= (size!7525 (h!14394 l!5107)) (size!7528 (originalCharacters!2240 (h!14394 l!5107)))))))

(assert (= (and d!261550 res!384125) b!840307))

(assert (= (and b!840307 res!384126) b!840308))

(declare-fun b_lambda!27633 () Bool)

(assert (=> (not b_lambda!27633) (not b!840307)))

(declare-fun tb!57945 () Bool)

(declare-fun t!93455 () Bool)

(assert (=> (and b!840215 (= (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107))))) t!93455) tb!57945))

(declare-fun b!840309 () Bool)

(declare-fun e!552577 () Bool)

(declare-fun tp!264149 () Bool)

(assert (=> b!840309 (= e!552577 (and (inv!11469 (c!137054 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (value!54693 (h!14394 l!5107))))) tp!264149))))

(declare-fun result!67188 () Bool)

(assert (=> tb!57945 (= result!67188 (and (inv!11470 (dynLambda!4158 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (value!54693 (h!14394 l!5107)))) e!552577))))

(assert (= tb!57945 b!840309))

(declare-fun m!1073277 () Bool)

(assert (=> b!840309 m!1073277))

(declare-fun m!1073279 () Bool)

(assert (=> tb!57945 m!1073279))

(assert (=> b!840307 t!93455))

(declare-fun b_and!72585 () Bool)

(assert (= b_and!72579 (and (=> t!93455 result!67188) b_and!72585)))

(declare-fun t!93457 () Bool)

(declare-fun tb!57947 () Bool)

(assert (=> (and b!840214 (= (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107))))) t!93457) tb!57947))

(declare-fun result!67190 () Bool)

(assert (= result!67190 result!67188))

(assert (=> b!840307 t!93457))

(declare-fun b_and!72587 () Bool)

(assert (= b_and!72581 (and (=> t!93457 result!67190) b_and!72587)))

(declare-fun t!93459 () Bool)

(declare-fun tb!57949 () Bool)

(assert (=> (and b!840207 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107))))) t!93459) tb!57949))

(declare-fun result!67192 () Bool)

(assert (= result!67192 result!67188))

(assert (=> b!840307 t!93459))

(declare-fun b_and!72589 () Bool)

(assert (= b_and!72583 (and (=> t!93459 result!67192) b_and!72589)))

(declare-fun m!1073281 () Bool)

(assert (=> d!261550 m!1073281))

(declare-fun m!1073283 () Bool)

(assert (=> b!840307 m!1073283))

(assert (=> b!840307 m!1073283))

(declare-fun m!1073285 () Bool)

(assert (=> b!840307 m!1073285))

(declare-fun m!1073287 () Bool)

(assert (=> b!840308 m!1073287))

(assert (=> b!840203 d!261550))

(declare-fun d!261552 () Bool)

(assert (=> d!261552 (= (head!1444 l!5107) (h!14394 l!5107))))

(assert (=> b!840205 d!261552))

(declare-fun d!261554 () Bool)

(declare-fun lt!318435 () Bool)

(declare-fun e!552582 () Bool)

(assert (=> d!261554 (= lt!318435 e!552582)))

(declare-fun res!384133 () Bool)

(assert (=> d!261554 (=> (not res!384133) (not e!552582))))

(declare-datatypes ((IArray!5975 0))(
  ( (IArray!5976 (innerList!3045 List!9009)) )
))
(declare-datatypes ((Conc!2985 0))(
  ( (Node!2985 (left!6680 Conc!2985) (right!7010 Conc!2985) (csize!6200 Int) (cheight!3196 Int)) (Leaf!4415 (xs!5674 IArray!5975) (csize!6201 Int)) (Empty!2985) )
))
(declare-datatypes ((BalanceConc!5984 0))(
  ( (BalanceConc!5985 (c!137096 Conc!2985)) )
))
(declare-fun list!3546 (BalanceConc!5984) List!9009)

(declare-datatypes ((tuple2!10320 0))(
  ( (tuple2!10321 (_1!5986 BalanceConc!5984) (_2!5986 BalanceConc!5980)) )
))
(declare-fun lex!598 (LexerInterface!1486 List!9008 BalanceConc!5980) tuple2!10320)

(declare-fun print!535 (LexerInterface!1486 BalanceConc!5984) BalanceConc!5980)

(declare-fun singletonSeq!500 (Token!3034) BalanceConc!5984)

(assert (=> d!261554 (= res!384133 (= (list!3546 (_1!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 lt!318396)))))) (list!3546 (singletonSeq!500 (h!14394 lt!318396)))))))

(declare-fun e!552583 () Bool)

(assert (=> d!261554 (= lt!318435 e!552583)))

(declare-fun res!384135 () Bool)

(assert (=> d!261554 (=> (not res!384135) (not e!552583))))

(declare-fun lt!318434 () tuple2!10320)

(declare-fun size!7529 (BalanceConc!5984) Int)

(assert (=> d!261554 (= res!384135 (= (size!7529 (_1!5986 lt!318434)) 1))))

(assert (=> d!261554 (= lt!318434 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 lt!318396)))))))

(assert (=> d!261554 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261554 (= (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 lt!318396)) lt!318435)))

(declare-fun b!840316 () Bool)

(declare-fun res!384134 () Bool)

(assert (=> b!840316 (=> (not res!384134) (not e!552583))))

(declare-fun apply!1810 (BalanceConc!5984 Int) Token!3034)

(assert (=> b!840316 (= res!384134 (= (apply!1810 (_1!5986 lt!318434) 0) (h!14394 lt!318396)))))

(declare-fun b!840317 () Bool)

(assert (=> b!840317 (= e!552583 (isEmpty!5303 (_2!5986 lt!318434)))))

(declare-fun b!840318 () Bool)

(assert (=> b!840318 (= e!552582 (isEmpty!5303 (_2!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 lt!318396)))))))))

(assert (= (and d!261554 res!384135) b!840316))

(assert (= (and b!840316 res!384134) b!840317))

(assert (= (and d!261554 res!384133) b!840318))

(declare-fun m!1073289 () Bool)

(assert (=> d!261554 m!1073289))

(declare-fun m!1073291 () Bool)

(assert (=> d!261554 m!1073291))

(declare-fun m!1073293 () Bool)

(assert (=> d!261554 m!1073293))

(assert (=> d!261554 m!1073289))

(declare-fun m!1073295 () Bool)

(assert (=> d!261554 m!1073295))

(declare-fun m!1073297 () Bool)

(assert (=> d!261554 m!1073297))

(assert (=> d!261554 m!1073173))

(assert (=> d!261554 m!1073291))

(declare-fun m!1073299 () Bool)

(assert (=> d!261554 m!1073299))

(assert (=> d!261554 m!1073289))

(declare-fun m!1073301 () Bool)

(assert (=> b!840316 m!1073301))

(declare-fun m!1073303 () Bool)

(assert (=> b!840317 m!1073303))

(assert (=> b!840318 m!1073289))

(assert (=> b!840318 m!1073289))

(assert (=> b!840318 m!1073291))

(assert (=> b!840318 m!1073291))

(assert (=> b!840318 m!1073299))

(declare-fun m!1073305 () Bool)

(assert (=> b!840318 m!1073305))

(assert (=> b!840216 d!261554))

(declare-fun d!261556 () Bool)

(declare-fun prefixMatchZipperSequence!5 (Regex!2117 BalanceConc!5980) Bool)

(declare-fun rulesRegex!4 (LexerInterface!1486 List!9008) Regex!2117)

(declare-fun ++!2332 (BalanceConc!5980 BalanceConc!5980) BalanceConc!5980)

(declare-fun singletonSeq!501 (C!4804) BalanceConc!5980)

(declare-fun apply!1811 (BalanceConc!5980 Int) C!4804)

(assert (=> d!261556 (= (separableTokensPredicate!26 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621) (not (prefixMatchZipperSequence!5 (rulesRegex!4 thiss!20117 rules!2621) (++!2332 (charsOf!969 (h!14394 lt!318396)) (singletonSeq!501 (apply!1811 (charsOf!969 (h!14394 (t!93439 lt!318396))) 0))))))))

(declare-fun bs!229805 () Bool)

(assert (= bs!229805 d!261556))

(assert (=> bs!229805 m!1073125))

(declare-fun m!1073307 () Bool)

(assert (=> bs!229805 m!1073307))

(declare-fun m!1073309 () Bool)

(assert (=> bs!229805 m!1073309))

(assert (=> bs!229805 m!1073307))

(declare-fun m!1073311 () Bool)

(assert (=> bs!229805 m!1073311))

(assert (=> bs!229805 m!1073125))

(assert (=> bs!229805 m!1073309))

(declare-fun m!1073313 () Bool)

(assert (=> bs!229805 m!1073313))

(declare-fun m!1073315 () Bool)

(assert (=> bs!229805 m!1073315))

(declare-fun m!1073317 () Bool)

(assert (=> bs!229805 m!1073317))

(assert (=> bs!229805 m!1073317))

(assert (=> bs!229805 m!1073311))

(assert (=> bs!229805 m!1073313))

(assert (=> b!840216 d!261556))

(declare-fun d!261558 () Bool)

(assert (=> d!261558 (separableTokensPredicate!26 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621)))

(declare-fun lt!318439 () Unit!13443)

(declare-fun choose!4951 (LexerInterface!1486 Token!3034 Token!3034 List!9008) Unit!13443)

(assert (=> d!261558 (= lt!318439 (choose!4951 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621))))

(assert (=> d!261558 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261558 (= (lemmaTokensOfDifferentKindsAreSeparable!8 thiss!20117 (h!14394 lt!318396) (h!14394 (t!93439 lt!318396)) rules!2621) lt!318439)))

(declare-fun bs!229807 () Bool)

(assert (= bs!229807 d!261558))

(assert (=> bs!229807 m!1073139))

(declare-fun m!1073323 () Bool)

(assert (=> bs!229807 m!1073323))

(assert (=> bs!229807 m!1073173))

(assert (=> b!840216 d!261558))

(declare-fun d!261562 () Bool)

(declare-fun lt!318441 () Bool)

(declare-fun e!552595 () Bool)

(assert (=> d!261562 (= lt!318441 e!552595)))

(declare-fun res!384138 () Bool)

(assert (=> d!261562 (=> (not res!384138) (not e!552595))))

(assert (=> d!261562 (= res!384138 (= (list!3546 (_1!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 separatorToken!297))))) (list!3546 (singletonSeq!500 separatorToken!297))))))

(declare-fun e!552596 () Bool)

(assert (=> d!261562 (= lt!318441 e!552596)))

(declare-fun res!384140 () Bool)

(assert (=> d!261562 (=> (not res!384140) (not e!552596))))

(declare-fun lt!318440 () tuple2!10320)

(assert (=> d!261562 (= res!384140 (= (size!7529 (_1!5986 lt!318440)) 1))))

(assert (=> d!261562 (= lt!318440 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 separatorToken!297))))))

(assert (=> d!261562 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261562 (= (rulesProduceIndividualToken!550 thiss!20117 rules!2621 separatorToken!297) lt!318441)))

(declare-fun b!840334 () Bool)

(declare-fun res!384139 () Bool)

(assert (=> b!840334 (=> (not res!384139) (not e!552596))))

(assert (=> b!840334 (= res!384139 (= (apply!1810 (_1!5986 lt!318440) 0) separatorToken!297))))

(declare-fun b!840335 () Bool)

(assert (=> b!840335 (= e!552596 (isEmpty!5303 (_2!5986 lt!318440)))))

(declare-fun b!840336 () Bool)

(assert (=> b!840336 (= e!552595 (isEmpty!5303 (_2!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 separatorToken!297))))))))

(assert (= (and d!261562 res!384140) b!840334))

(assert (= (and b!840334 res!384139) b!840335))

(assert (= (and d!261562 res!384138) b!840336))

(declare-fun m!1073325 () Bool)

(assert (=> d!261562 m!1073325))

(declare-fun m!1073327 () Bool)

(assert (=> d!261562 m!1073327))

(declare-fun m!1073329 () Bool)

(assert (=> d!261562 m!1073329))

(assert (=> d!261562 m!1073325))

(declare-fun m!1073331 () Bool)

(assert (=> d!261562 m!1073331))

(declare-fun m!1073333 () Bool)

(assert (=> d!261562 m!1073333))

(assert (=> d!261562 m!1073173))

(assert (=> d!261562 m!1073327))

(declare-fun m!1073335 () Bool)

(assert (=> d!261562 m!1073335))

(assert (=> d!261562 m!1073325))

(declare-fun m!1073337 () Bool)

(assert (=> b!840334 m!1073337))

(declare-fun m!1073339 () Bool)

(assert (=> b!840335 m!1073339))

(assert (=> b!840336 m!1073325))

(assert (=> b!840336 m!1073325))

(assert (=> b!840336 m!1073327))

(assert (=> b!840336 m!1073327))

(assert (=> b!840336 m!1073335))

(declare-fun m!1073341 () Bool)

(assert (=> b!840336 m!1073341))

(assert (=> b!840217 d!261562))

(declare-fun bs!229814 () Bool)

(declare-fun d!261564 () Bool)

(assert (= bs!229814 (and d!261564 b!840212)))

(declare-fun lambda!24951 () Int)

(assert (=> bs!229814 (not (= lambda!24951 lambda!24944))))

(declare-fun b!840461 () Bool)

(declare-fun e!552684 () Bool)

(assert (=> b!840461 (= e!552684 true)))

(declare-fun b!840460 () Bool)

(declare-fun e!552683 () Bool)

(assert (=> b!840460 (= e!552683 e!552684)))

(declare-fun b!840459 () Bool)

(declare-fun e!552682 () Bool)

(assert (=> b!840459 (= e!552682 e!552683)))

(assert (=> d!261564 e!552682))

(assert (= b!840460 b!840461))

(assert (= b!840459 b!840460))

(assert (= (and d!261564 ((_ is Cons!8992) rules!2621)) b!840459))

(declare-fun order!5725 () Int)

(declare-fun order!5723 () Int)

(declare-fun dynLambda!4159 (Int Int) Int)

(declare-fun dynLambda!4160 (Int Int) Int)

(assert (=> b!840461 (< (dynLambda!4159 order!5723 (toValue!2701 (transformation!1684 (h!14393 rules!2621)))) (dynLambda!4160 order!5725 lambda!24951))))

(declare-fun order!5727 () Int)

(declare-fun dynLambda!4161 (Int Int) Int)

(assert (=> b!840461 (< (dynLambda!4161 order!5727 (toChars!2560 (transformation!1684 (h!14393 rules!2621)))) (dynLambda!4160 order!5725 lambda!24951))))

(assert (=> d!261564 true))

(declare-fun lt!318499 () Bool)

(assert (=> d!261564 (= lt!318499 (forall!2099 lt!318396 lambda!24951))))

(declare-fun e!552675 () Bool)

(assert (=> d!261564 (= lt!318499 e!552675)))

(declare-fun res!384204 () Bool)

(assert (=> d!261564 (=> res!384204 e!552675)))

(assert (=> d!261564 (= res!384204 (not ((_ is Cons!8993) lt!318396)))))

(assert (=> d!261564 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261564 (= (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 lt!318396) lt!318499)))

(declare-fun b!840449 () Bool)

(declare-fun e!552674 () Bool)

(assert (=> b!840449 (= e!552675 e!552674)))

(declare-fun res!384203 () Bool)

(assert (=> b!840449 (=> (not res!384203) (not e!552674))))

(assert (=> b!840449 (= res!384203 (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 lt!318396)))))

(declare-fun b!840450 () Bool)

(assert (=> b!840450 (= e!552674 (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 (t!93439 lt!318396)))))

(assert (= (and d!261564 (not res!384204)) b!840449))

(assert (= (and b!840449 res!384203) b!840450))

(declare-fun m!1073583 () Bool)

(assert (=> d!261564 m!1073583))

(assert (=> d!261564 m!1073173))

(assert (=> b!840449 m!1073137))

(declare-fun m!1073585 () Bool)

(assert (=> b!840450 m!1073585))

(assert (=> b!840206 d!261564))

(declare-fun d!261612 () Bool)

(declare-fun lt!318502 () List!9009)

(assert (=> d!261612 (= (printList!454 thiss!20117 lt!318502) (printWithSeparatorTokenList!12 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!552687 () List!9009)

(assert (=> d!261612 (= lt!318502 e!552687)))

(declare-fun c!137094 () Bool)

(assert (=> d!261612 (= c!137094 ((_ is Cons!8993) l!5107))))

(declare-fun e!552686 () Bool)

(assert (=> d!261612 e!552686))

(declare-fun res!384208 () Bool)

(assert (=> d!261612 (=> (not res!384208) (not e!552686))))

(assert (=> d!261612 (= res!384208 (isSeparator!1684 (rule!3107 separatorToken!297)))))

(assert (=> d!261612 (= (withSeparatorTokenList!16 thiss!20117 l!5107 separatorToken!297) lt!318502)))

(declare-fun b!840464 () Bool)

(assert (=> b!840464 (= e!552687 Nil!8993)))

(declare-fun b!840465 () Bool)

(declare-fun e!552685 () List!9007)

(declare-fun lt!318501 () List!9009)

(assert (=> b!840465 (= e!552685 (++!2331 (list!3545 (charsOf!969 (h!14394 lt!318501))) (printList!454 thiss!20117 (t!93439 lt!318501))))))

(declare-fun b!840466 () Bool)

(declare-fun e!552690 () List!9007)

(declare-fun lt!318500 () List!9009)

(assert (=> b!840466 (= e!552690 (++!2331 (list!3545 (charsOf!969 (h!14394 lt!318500))) (printList!454 thiss!20117 (t!93439 lt!318500))))))

(declare-fun b!840467 () Bool)

(assert (=> b!840467 (= e!552685 Nil!8991)))

(declare-fun e!552689 () Bool)

(declare-fun b!840468 () Bool)

(assert (=> b!840468 (= e!552689 (= (printList!454 thiss!20117 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297) separatorToken!297) (h!14394 l!5107))) e!552690))))

(declare-fun c!137093 () Bool)

(assert (=> b!840468 (= c!137093 ((_ is Cons!8993) lt!318500))))

(assert (=> b!840468 (= lt!318500 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297) separatorToken!297) (h!14394 l!5107)))))

(declare-fun b!840469 () Bool)

(declare-fun res!384205 () Bool)

(assert (=> b!840469 (=> (not res!384205) (not e!552686))))

(assert (=> b!840469 (= res!384205 e!552689)))

(declare-fun res!384206 () Bool)

(assert (=> b!840469 (=> res!384206 e!552689)))

(assert (=> b!840469 (= res!384206 (not ((_ is Cons!8993) l!5107)))))

(declare-fun b!840470 () Bool)

(declare-fun e!552688 () Bool)

(assert (=> b!840470 (= e!552688 (= (printList!454 thiss!20117 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297) separatorToken!297)) e!552685))))

(declare-fun c!137092 () Bool)

(assert (=> b!840470 (= c!137092 ((_ is Cons!8993) lt!318501))))

(assert (=> b!840470 (= lt!318501 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!840471 () Bool)

(assert (=> b!840471 (= e!552686 e!552688)))

(declare-fun res!384207 () Bool)

(assert (=> b!840471 (=> res!384207 e!552688)))

(assert (=> b!840471 (= res!384207 (not ((_ is Cons!8993) l!5107)))))

(declare-fun b!840472 () Bool)

(assert (=> b!840472 (= e!552687 ($colon$colon!67 ($colon$colon!67 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297) separatorToken!297) (h!14394 l!5107)))))

(declare-fun lt!318504 () List!9007)

(assert (=> b!840472 (= lt!318504 (list!3545 (charsOf!969 (h!14394 l!5107))))))

(declare-fun lt!318507 () List!9007)

(assert (=> b!840472 (= lt!318507 (list!3545 (charsOf!969 separatorToken!297)))))

(declare-fun lt!318506 () List!9007)

(assert (=> b!840472 (= lt!318506 (printList!454 thiss!20117 (withSeparatorTokenList!16 thiss!20117 (t!93439 l!5107) separatorToken!297)))))

(declare-fun lt!318505 () Unit!13443)

(assert (=> b!840472 (= lt!318505 (lemmaConcatAssociativity!729 lt!318504 lt!318507 lt!318506))))

(assert (=> b!840472 (= (++!2331 (++!2331 lt!318504 lt!318507) lt!318506) (++!2331 lt!318504 (++!2331 lt!318507 lt!318506)))))

(declare-fun lt!318503 () Unit!13443)

(assert (=> b!840472 (= lt!318503 lt!318505)))

(declare-fun b!840473 () Bool)

(assert (=> b!840473 (= e!552690 Nil!8991)))

(assert (= (and d!261612 res!384208) b!840469))

(assert (= (and b!840469 (not res!384206)) b!840468))

(assert (= (and b!840468 c!137093) b!840466))

(assert (= (and b!840468 (not c!137093)) b!840473))

(assert (= (and b!840469 res!384205) b!840471))

(assert (= (and b!840471 (not res!384207)) b!840470))

(assert (= (and b!840470 c!137092) b!840465))

(assert (= (and b!840470 (not c!137092)) b!840467))

(assert (= (and d!261612 c!137094) b!840472))

(assert (= (and d!261612 (not c!137094)) b!840464))

(declare-fun m!1073591 () Bool)

(assert (=> d!261612 m!1073591))

(declare-fun m!1073593 () Bool)

(assert (=> d!261612 m!1073593))

(declare-fun m!1073595 () Bool)

(assert (=> b!840472 m!1073595))

(declare-fun m!1073597 () Bool)

(assert (=> b!840472 m!1073597))

(declare-fun m!1073599 () Bool)

(assert (=> b!840472 m!1073599))

(declare-fun m!1073601 () Bool)

(assert (=> b!840472 m!1073601))

(declare-fun m!1073603 () Bool)

(assert (=> b!840472 m!1073603))

(assert (=> b!840472 m!1073601))

(assert (=> b!840472 m!1073599))

(declare-fun m!1073605 () Bool)

(assert (=> b!840472 m!1073605))

(assert (=> b!840472 m!1073601))

(declare-fun m!1073607 () Bool)

(assert (=> b!840472 m!1073607))

(declare-fun m!1073609 () Bool)

(assert (=> b!840472 m!1073609))

(assert (=> b!840472 m!1073603))

(declare-fun m!1073611 () Bool)

(assert (=> b!840472 m!1073611))

(assert (=> b!840472 m!1073609))

(declare-fun m!1073613 () Bool)

(assert (=> b!840472 m!1073613))

(assert (=> b!840472 m!1073239))

(declare-fun m!1073615 () Bool)

(assert (=> b!840472 m!1073615))

(assert (=> b!840472 m!1073595))

(assert (=> b!840472 m!1073239))

(assert (=> b!840472 m!1073243))

(declare-fun m!1073617 () Bool)

(assert (=> b!840465 m!1073617))

(assert (=> b!840465 m!1073617))

(declare-fun m!1073619 () Bool)

(assert (=> b!840465 m!1073619))

(declare-fun m!1073621 () Bool)

(assert (=> b!840465 m!1073621))

(assert (=> b!840465 m!1073619))

(assert (=> b!840465 m!1073621))

(declare-fun m!1073623 () Bool)

(assert (=> b!840465 m!1073623))

(assert (=> b!840470 m!1073601))

(assert (=> b!840470 m!1073601))

(assert (=> b!840470 m!1073603))

(assert (=> b!840470 m!1073603))

(declare-fun m!1073625 () Bool)

(assert (=> b!840470 m!1073625))

(declare-fun m!1073627 () Bool)

(assert (=> b!840466 m!1073627))

(assert (=> b!840466 m!1073627))

(declare-fun m!1073629 () Bool)

(assert (=> b!840466 m!1073629))

(declare-fun m!1073631 () Bool)

(assert (=> b!840466 m!1073631))

(assert (=> b!840466 m!1073629))

(assert (=> b!840466 m!1073631))

(declare-fun m!1073633 () Bool)

(assert (=> b!840466 m!1073633))

(assert (=> b!840468 m!1073601))

(assert (=> b!840468 m!1073601))

(assert (=> b!840468 m!1073603))

(assert (=> b!840468 m!1073603))

(assert (=> b!840468 m!1073611))

(assert (=> b!840468 m!1073611))

(declare-fun m!1073639 () Bool)

(assert (=> b!840468 m!1073639))

(assert (=> b!840206 d!261612))

(declare-fun d!261618 () Bool)

(assert (=> d!261618 (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 (withSeparatorTokenList!16 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318510 () Unit!13443)

(declare-fun choose!4952 (LexerInterface!1486 List!9008 List!9009 Token!3034) Unit!13443)

(assert (=> d!261618 (= lt!318510 (choose!4952 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261618 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261618 (= (withSeparatorTokenListPreservesRulesProduceTokens!16 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318510)))

(declare-fun bs!229816 () Bool)

(assert (= bs!229816 d!261618))

(assert (=> bs!229816 m!1073153))

(assert (=> bs!229816 m!1073153))

(declare-fun m!1073649 () Bool)

(assert (=> bs!229816 m!1073649))

(declare-fun m!1073651 () Bool)

(assert (=> bs!229816 m!1073651))

(assert (=> bs!229816 m!1073173))

(assert (=> b!840206 d!261618))

(declare-fun d!261622 () Bool)

(declare-fun res!384214 () Bool)

(declare-fun e!552735 () Bool)

(assert (=> d!261622 (=> res!384214 e!552735)))

(assert (=> d!261622 (= res!384214 (not ((_ is Cons!8992) rules!2621)))))

(assert (=> d!261622 (= (sepAndNonSepRulesDisjointChars!484 rules!2621 rules!2621) e!552735)))

(declare-fun b!840532 () Bool)

(declare-fun e!552736 () Bool)

(assert (=> b!840532 (= e!552735 e!552736)))

(declare-fun res!384215 () Bool)

(assert (=> b!840532 (=> (not res!384215) (not e!552736))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!217 (Rule!3168 List!9008) Bool)

(assert (=> b!840532 (= res!384215 (ruleDisjointCharsFromAllFromOtherType!217 (h!14393 rules!2621) rules!2621))))

(declare-fun b!840533 () Bool)

(assert (=> b!840533 (= e!552736 (sepAndNonSepRulesDisjointChars!484 rules!2621 (t!93438 rules!2621)))))

(assert (= (and d!261622 (not res!384214)) b!840532))

(assert (= (and b!840532 res!384215) b!840533))

(declare-fun m!1073653 () Bool)

(assert (=> b!840532 m!1073653))

(declare-fun m!1073655 () Bool)

(assert (=> b!840533 m!1073655))

(assert (=> b!840208 d!261622))

(declare-fun d!261624 () Bool)

(assert (=> d!261624 (= (inv!11462 (tag!1946 (rule!3107 separatorToken!297))) (= (mod (str.len (value!54692 (tag!1946 (rule!3107 separatorToken!297)))) 2) 0))))

(assert (=> b!840218 d!261624))

(declare-fun d!261626 () Bool)

(declare-fun res!384218 () Bool)

(declare-fun e!552739 () Bool)

(assert (=> d!261626 (=> (not res!384218) (not e!552739))))

(declare-fun semiInverseModEq!650 (Int Int) Bool)

(assert (=> d!261626 (= res!384218 (semiInverseModEq!650 (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toValue!2701 (transformation!1684 (rule!3107 separatorToken!297)))))))

(assert (=> d!261626 (= (inv!11466 (transformation!1684 (rule!3107 separatorToken!297))) e!552739)))

(declare-fun b!840536 () Bool)

(declare-fun equivClasses!617 (Int Int) Bool)

(assert (=> b!840536 (= e!552739 (equivClasses!617 (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toValue!2701 (transformation!1684 (rule!3107 separatorToken!297)))))))

(assert (= (and d!261626 res!384218) b!840536))

(declare-fun m!1073657 () Bool)

(assert (=> d!261626 m!1073657))

(declare-fun m!1073659 () Bool)

(assert (=> b!840536 m!1073659))

(assert (=> b!840218 d!261626))

(declare-fun d!261628 () Bool)

(assert (=> d!261628 (= (inv!11462 (tag!1946 (rule!3107 (h!14394 l!5107)))) (= (mod (str.len (value!54692 (tag!1946 (rule!3107 (h!14394 l!5107))))) 2) 0))))

(assert (=> b!840209 d!261628))

(declare-fun d!261630 () Bool)

(declare-fun res!384219 () Bool)

(declare-fun e!552740 () Bool)

(assert (=> d!261630 (=> (not res!384219) (not e!552740))))

(assert (=> d!261630 (= res!384219 (semiInverseModEq!650 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toValue!2701 (transformation!1684 (rule!3107 (h!14394 l!5107))))))))

(assert (=> d!261630 (= (inv!11466 (transformation!1684 (rule!3107 (h!14394 l!5107)))) e!552740)))

(declare-fun b!840537 () Bool)

(assert (=> b!840537 (= e!552740 (equivClasses!617 (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toValue!2701 (transformation!1684 (rule!3107 (h!14394 l!5107))))))))

(assert (= (and d!261630 res!384219) b!840537))

(declare-fun m!1073661 () Bool)

(assert (=> d!261630 m!1073661))

(declare-fun m!1073663 () Bool)

(assert (=> b!840537 m!1073663))

(assert (=> b!840209 d!261630))

(declare-fun d!261632 () Bool)

(declare-fun lt!318512 () Bool)

(declare-fun e!552741 () Bool)

(assert (=> d!261632 (= lt!318512 e!552741)))

(declare-fun res!384220 () Bool)

(assert (=> d!261632 (=> (not res!384220) (not e!552741))))

(assert (=> d!261632 (= res!384220 (= (list!3546 (_1!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 (t!93439 lt!318396))))))) (list!3546 (singletonSeq!500 (h!14394 (t!93439 lt!318396))))))))

(declare-fun e!552742 () Bool)

(assert (=> d!261632 (= lt!318512 e!552742)))

(declare-fun res!384222 () Bool)

(assert (=> d!261632 (=> (not res!384222) (not e!552742))))

(declare-fun lt!318511 () tuple2!10320)

(assert (=> d!261632 (= res!384222 (= (size!7529 (_1!5986 lt!318511)) 1))))

(assert (=> d!261632 (= lt!318511 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 (t!93439 lt!318396))))))))

(assert (=> d!261632 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261632 (= (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 (t!93439 lt!318396))) lt!318512)))

(declare-fun b!840538 () Bool)

(declare-fun res!384221 () Bool)

(assert (=> b!840538 (=> (not res!384221) (not e!552742))))

(assert (=> b!840538 (= res!384221 (= (apply!1810 (_1!5986 lt!318511) 0) (h!14394 (t!93439 lt!318396))))))

(declare-fun b!840539 () Bool)

(assert (=> b!840539 (= e!552742 (isEmpty!5303 (_2!5986 lt!318511)))))

(declare-fun b!840540 () Bool)

(assert (=> b!840540 (= e!552741 (isEmpty!5303 (_2!5986 (lex!598 thiss!20117 rules!2621 (print!535 thiss!20117 (singletonSeq!500 (h!14394 (t!93439 lt!318396))))))))))

(assert (= (and d!261632 res!384222) b!840538))

(assert (= (and b!840538 res!384221) b!840539))

(assert (= (and d!261632 res!384220) b!840540))

(declare-fun m!1073665 () Bool)

(assert (=> d!261632 m!1073665))

(declare-fun m!1073667 () Bool)

(assert (=> d!261632 m!1073667))

(declare-fun m!1073669 () Bool)

(assert (=> d!261632 m!1073669))

(assert (=> d!261632 m!1073665))

(declare-fun m!1073671 () Bool)

(assert (=> d!261632 m!1073671))

(declare-fun m!1073673 () Bool)

(assert (=> d!261632 m!1073673))

(assert (=> d!261632 m!1073173))

(assert (=> d!261632 m!1073667))

(declare-fun m!1073675 () Bool)

(assert (=> d!261632 m!1073675))

(assert (=> d!261632 m!1073665))

(declare-fun m!1073677 () Bool)

(assert (=> b!840538 m!1073677))

(declare-fun m!1073679 () Bool)

(assert (=> b!840539 m!1073679))

(assert (=> b!840540 m!1073665))

(assert (=> b!840540 m!1073665))

(assert (=> b!840540 m!1073667))

(assert (=> b!840540 m!1073667))

(assert (=> b!840540 m!1073675))

(declare-fun m!1073681 () Bool)

(assert (=> b!840540 m!1073681))

(assert (=> b!840219 d!261632))

(declare-fun d!261634 () Bool)

(assert (=> d!261634 (= (inv!11462 (tag!1946 (h!14393 rules!2621))) (= (mod (str.len (value!54692 (tag!1946 (h!14393 rules!2621)))) 2) 0))))

(assert (=> b!840221 d!261634))

(declare-fun d!261636 () Bool)

(declare-fun res!384223 () Bool)

(declare-fun e!552743 () Bool)

(assert (=> d!261636 (=> (not res!384223) (not e!552743))))

(assert (=> d!261636 (= res!384223 (semiInverseModEq!650 (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toValue!2701 (transformation!1684 (h!14393 rules!2621)))))))

(assert (=> d!261636 (= (inv!11466 (transformation!1684 (h!14393 rules!2621))) e!552743)))

(declare-fun b!840541 () Bool)

(assert (=> b!840541 (= e!552743 (equivClasses!617 (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toValue!2701 (transformation!1684 (h!14393 rules!2621)))))))

(assert (= (and d!261636 res!384223) b!840541))

(declare-fun m!1073683 () Bool)

(assert (=> d!261636 m!1073683))

(declare-fun m!1073685 () Bool)

(assert (=> b!840541 m!1073685))

(assert (=> b!840221 d!261636))

(declare-fun bs!229817 () Bool)

(declare-fun d!261638 () Bool)

(assert (= bs!229817 (and d!261638 b!840212)))

(declare-fun lambda!24952 () Int)

(assert (=> bs!229817 (not (= lambda!24952 lambda!24944))))

(declare-fun bs!229818 () Bool)

(assert (= bs!229818 (and d!261638 d!261564)))

(assert (=> bs!229818 (= lambda!24952 lambda!24951)))

(declare-fun b!840546 () Bool)

(declare-fun e!552748 () Bool)

(assert (=> b!840546 (= e!552748 true)))

(declare-fun b!840545 () Bool)

(declare-fun e!552747 () Bool)

(assert (=> b!840545 (= e!552747 e!552748)))

(declare-fun b!840544 () Bool)

(declare-fun e!552746 () Bool)

(assert (=> b!840544 (= e!552746 e!552747)))

(assert (=> d!261638 e!552746))

(assert (= b!840545 b!840546))

(assert (= b!840544 b!840545))

(assert (= (and d!261638 ((_ is Cons!8992) rules!2621)) b!840544))

(assert (=> b!840546 (< (dynLambda!4159 order!5723 (toValue!2701 (transformation!1684 (h!14393 rules!2621)))) (dynLambda!4160 order!5725 lambda!24952))))

(assert (=> b!840546 (< (dynLambda!4161 order!5727 (toChars!2560 (transformation!1684 (h!14393 rules!2621)))) (dynLambda!4160 order!5725 lambda!24952))))

(assert (=> d!261638 true))

(declare-fun lt!318513 () Bool)

(assert (=> d!261638 (= lt!318513 (forall!2099 l!5107 lambda!24952))))

(declare-fun e!552745 () Bool)

(assert (=> d!261638 (= lt!318513 e!552745)))

(declare-fun res!384225 () Bool)

(assert (=> d!261638 (=> res!384225 e!552745)))

(assert (=> d!261638 (= res!384225 (not ((_ is Cons!8993) l!5107)))))

(assert (=> d!261638 (not (isEmpty!5302 rules!2621))))

(assert (=> d!261638 (= (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 l!5107) lt!318513)))

(declare-fun b!840542 () Bool)

(declare-fun e!552744 () Bool)

(assert (=> b!840542 (= e!552745 e!552744)))

(declare-fun res!384224 () Bool)

(assert (=> b!840542 (=> (not res!384224) (not e!552744))))

(assert (=> b!840542 (= res!384224 (rulesProduceIndividualToken!550 thiss!20117 rules!2621 (h!14394 l!5107)))))

(declare-fun b!840543 () Bool)

(assert (=> b!840543 (= e!552744 (rulesProduceEachTokenIndividuallyList!374 thiss!20117 rules!2621 (t!93439 l!5107)))))

(assert (= (and d!261638 (not res!384225)) b!840542))

(assert (= (and b!840542 res!384224) b!840543))

(declare-fun m!1073687 () Bool)

(assert (=> d!261638 m!1073687))

(assert (=> d!261638 m!1073173))

(declare-fun m!1073689 () Bool)

(assert (=> b!840542 m!1073689))

(declare-fun m!1073691 () Bool)

(assert (=> b!840543 m!1073691))

(assert (=> b!840210 d!261638))

(declare-fun b!840551 () Bool)

(declare-fun e!552751 () Bool)

(declare-fun tp_is_empty!3933 () Bool)

(declare-fun tp!264213 () Bool)

(assert (=> b!840551 (= e!552751 (and tp_is_empty!3933 tp!264213))))

(assert (=> b!840224 (= tp!264133 e!552751)))

(assert (= (and b!840224 ((_ is Cons!8991) (originalCharacters!2240 (h!14394 l!5107)))) b!840551))

(declare-fun b!840552 () Bool)

(declare-fun e!552752 () Bool)

(declare-fun tp!264214 () Bool)

(assert (=> b!840552 (= e!552752 (and tp_is_empty!3933 tp!264214))))

(assert (=> b!840223 (= tp!264143 e!552752)))

(assert (= (and b!840223 ((_ is Cons!8991) (originalCharacters!2240 separatorToken!297))) b!840552))

(declare-fun b!840566 () Bool)

(declare-fun b_free!25029 () Bool)

(declare-fun b_next!25093 () Bool)

(assert (=> b!840566 (= b_free!25029 (not b_next!25093))))

(declare-fun tp!264226 () Bool)

(declare-fun b_and!72617 () Bool)

(assert (=> b!840566 (= tp!264226 b_and!72617)))

(declare-fun b_free!25031 () Bool)

(declare-fun b_next!25095 () Bool)

(assert (=> b!840566 (= b_free!25031 (not b_next!25095))))

(declare-fun t!93495 () Bool)

(declare-fun tb!57981 () Bool)

(assert (=> (and b!840566 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396)))))) t!93495) tb!57981))

(declare-fun result!67238 () Bool)

(assert (= result!67238 result!67174))

(assert (=> d!261534 t!93495))

(declare-fun t!93497 () Bool)

(declare-fun tb!57983 () Bool)

(assert (=> (and b!840566 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297)))) t!93497) tb!57983))

(declare-fun result!67240 () Bool)

(assert (= result!67240 result!67182))

(assert (=> b!840304 t!93497))

(declare-fun t!93499 () Bool)

(declare-fun tb!57985 () Bool)

(assert (=> (and b!840566 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107))))) t!93499) tb!57985))

(declare-fun result!67242 () Bool)

(assert (= result!67242 result!67188))

(assert (=> b!840307 t!93499))

(declare-fun b_and!72619 () Bool)

(declare-fun tp!264227 () Bool)

(assert (=> b!840566 (= tp!264227 (and (=> t!93495 result!67238) (=> t!93497 result!67240) (=> t!93499 result!67242) b_and!72619))))

(declare-fun b!840563 () Bool)

(declare-fun e!552768 () Bool)

(declare-fun e!552769 () Bool)

(declare-fun tp!264225 () Bool)

(assert (=> b!840563 (= e!552768 (and (inv!11465 (h!14394 (t!93439 l!5107))) e!552769 tp!264225))))

(declare-fun e!552767 () Bool)

(assert (=> b!840566 (= e!552767 (and tp!264226 tp!264227))))

(assert (=> b!840203 (= tp!264132 e!552768)))

(declare-fun tp!264228 () Bool)

(declare-fun e!552770 () Bool)

(declare-fun b!840565 () Bool)

(assert (=> b!840565 (= e!552770 (and tp!264228 (inv!11462 (tag!1946 (rule!3107 (h!14394 (t!93439 l!5107))))) (inv!11466 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) e!552767))))

(declare-fun tp!264229 () Bool)

(declare-fun b!840564 () Bool)

(assert (=> b!840564 (= e!552769 (and (inv!21 (value!54693 (h!14394 (t!93439 l!5107)))) e!552770 tp!264229))))

(assert (= b!840565 b!840566))

(assert (= b!840564 b!840565))

(assert (= b!840563 b!840564))

(assert (= (and b!840203 ((_ is Cons!8993) (t!93439 l!5107))) b!840563))

(declare-fun m!1073693 () Bool)

(assert (=> b!840563 m!1073693))

(declare-fun m!1073695 () Bool)

(assert (=> b!840565 m!1073695))

(declare-fun m!1073697 () Bool)

(assert (=> b!840565 m!1073697))

(declare-fun m!1073699 () Bool)

(assert (=> b!840564 m!1073699))

(declare-fun b!840577 () Bool)

(declare-fun e!552773 () Bool)

(assert (=> b!840577 (= e!552773 tp_is_empty!3933)))

(declare-fun b!840580 () Bool)

(declare-fun tp!264242 () Bool)

(declare-fun tp!264243 () Bool)

(assert (=> b!840580 (= e!552773 (and tp!264242 tp!264243))))

(declare-fun b!840579 () Bool)

(declare-fun tp!264241 () Bool)

(assert (=> b!840579 (= e!552773 tp!264241)))

(assert (=> b!840218 (= tp!264134 e!552773)))

(declare-fun b!840578 () Bool)

(declare-fun tp!264240 () Bool)

(declare-fun tp!264244 () Bool)

(assert (=> b!840578 (= e!552773 (and tp!264240 tp!264244))))

(assert (= (and b!840218 ((_ is ElementMatch!2117) (regex!1684 (rule!3107 separatorToken!297)))) b!840577))

(assert (= (and b!840218 ((_ is Concat!3868) (regex!1684 (rule!3107 separatorToken!297)))) b!840578))

(assert (= (and b!840218 ((_ is Star!2117) (regex!1684 (rule!3107 separatorToken!297)))) b!840579))

(assert (= (and b!840218 ((_ is Union!2117) (regex!1684 (rule!3107 separatorToken!297)))) b!840580))

(declare-fun b!840581 () Bool)

(declare-fun e!552774 () Bool)

(assert (=> b!840581 (= e!552774 tp_is_empty!3933)))

(declare-fun b!840584 () Bool)

(declare-fun tp!264247 () Bool)

(declare-fun tp!264248 () Bool)

(assert (=> b!840584 (= e!552774 (and tp!264247 tp!264248))))

(declare-fun b!840583 () Bool)

(declare-fun tp!264246 () Bool)

(assert (=> b!840583 (= e!552774 tp!264246)))

(assert (=> b!840209 (= tp!264139 e!552774)))

(declare-fun b!840582 () Bool)

(declare-fun tp!264245 () Bool)

(declare-fun tp!264249 () Bool)

(assert (=> b!840582 (= e!552774 (and tp!264245 tp!264249))))

(assert (= (and b!840209 ((_ is ElementMatch!2117) (regex!1684 (rule!3107 (h!14394 l!5107))))) b!840581))

(assert (= (and b!840209 ((_ is Concat!3868) (regex!1684 (rule!3107 (h!14394 l!5107))))) b!840582))

(assert (= (and b!840209 ((_ is Star!2117) (regex!1684 (rule!3107 (h!14394 l!5107))))) b!840583))

(assert (= (and b!840209 ((_ is Union!2117) (regex!1684 (rule!3107 (h!14394 l!5107))))) b!840584))

(declare-fun b!840595 () Bool)

(declare-fun b_free!25033 () Bool)

(declare-fun b_next!25097 () Bool)

(assert (=> b!840595 (= b_free!25033 (not b_next!25097))))

(declare-fun tp!264261 () Bool)

(declare-fun b_and!72621 () Bool)

(assert (=> b!840595 (= tp!264261 b_and!72621)))

(declare-fun b_free!25035 () Bool)

(declare-fun b_next!25099 () Bool)

(assert (=> b!840595 (= b_free!25035 (not b_next!25099))))

(declare-fun tb!57987 () Bool)

(declare-fun t!93501 () Bool)

(assert (=> (and b!840595 (= (toChars!2560 (transformation!1684 (h!14393 (t!93438 rules!2621)))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 lt!318396)))))) t!93501) tb!57987))

(declare-fun result!67248 () Bool)

(assert (= result!67248 result!67174))

(assert (=> d!261534 t!93501))

(declare-fun tb!57989 () Bool)

(declare-fun t!93503 () Bool)

(assert (=> (and b!840595 (= (toChars!2560 (transformation!1684 (h!14393 (t!93438 rules!2621)))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297)))) t!93503) tb!57989))

(declare-fun result!67250 () Bool)

(assert (= result!67250 result!67182))

(assert (=> b!840304 t!93503))

(declare-fun t!93505 () Bool)

(declare-fun tb!57991 () Bool)

(assert (=> (and b!840595 (= (toChars!2560 (transformation!1684 (h!14393 (t!93438 rules!2621)))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107))))) t!93505) tb!57991))

(declare-fun result!67252 () Bool)

(assert (= result!67252 result!67188))

(assert (=> b!840307 t!93505))

(declare-fun b_and!72623 () Bool)

(declare-fun tp!264259 () Bool)

(assert (=> b!840595 (= tp!264259 (and (=> t!93501 result!67248) (=> t!93503 result!67250) (=> t!93505 result!67252) b_and!72623))))

(declare-fun e!552785 () Bool)

(assert (=> b!840595 (= e!552785 (and tp!264261 tp!264259))))

(declare-fun e!552784 () Bool)

(declare-fun b!840594 () Bool)

(declare-fun tp!264258 () Bool)

(assert (=> b!840594 (= e!552784 (and tp!264258 (inv!11462 (tag!1946 (h!14393 (t!93438 rules!2621)))) (inv!11466 (transformation!1684 (h!14393 (t!93438 rules!2621)))) e!552785))))

(declare-fun b!840593 () Bool)

(declare-fun e!552786 () Bool)

(declare-fun tp!264260 () Bool)

(assert (=> b!840593 (= e!552786 (and e!552784 tp!264260))))

(assert (=> b!840220 (= tp!264142 e!552786)))

(assert (= b!840594 b!840595))

(assert (= b!840593 b!840594))

(assert (= (and b!840220 ((_ is Cons!8992) (t!93438 rules!2621))) b!840593))

(declare-fun m!1073701 () Bool)

(assert (=> b!840594 m!1073701))

(declare-fun m!1073703 () Bool)

(assert (=> b!840594 m!1073703))

(declare-fun b!840596 () Bool)

(declare-fun e!552787 () Bool)

(assert (=> b!840596 (= e!552787 tp_is_empty!3933)))

(declare-fun b!840599 () Bool)

(declare-fun tp!264264 () Bool)

(declare-fun tp!264265 () Bool)

(assert (=> b!840599 (= e!552787 (and tp!264264 tp!264265))))

(declare-fun b!840598 () Bool)

(declare-fun tp!264263 () Bool)

(assert (=> b!840598 (= e!552787 tp!264263)))

(assert (=> b!840221 (= tp!264135 e!552787)))

(declare-fun b!840597 () Bool)

(declare-fun tp!264262 () Bool)

(declare-fun tp!264266 () Bool)

(assert (=> b!840597 (= e!552787 (and tp!264262 tp!264266))))

(assert (= (and b!840221 ((_ is ElementMatch!2117) (regex!1684 (h!14393 rules!2621)))) b!840596))

(assert (= (and b!840221 ((_ is Concat!3868) (regex!1684 (h!14393 rules!2621)))) b!840597))

(assert (= (and b!840221 ((_ is Star!2117) (regex!1684 (h!14393 rules!2621)))) b!840598))

(assert (= (and b!840221 ((_ is Union!2117) (regex!1684 (h!14393 rules!2621)))) b!840599))

(declare-fun b_lambda!27649 () Bool)

(assert (= b_lambda!27627 (or b!840212 b_lambda!27649)))

(declare-fun bs!229819 () Bool)

(declare-fun d!261640 () Bool)

(assert (= bs!229819 (and d!261640 b!840212)))

(assert (=> bs!229819 (= (dynLambda!4157 lambda!24944 (h!14394 l!5107)) (not (isSeparator!1684 (rule!3107 (h!14394 l!5107)))))))

(assert (=> b!840236 d!261640))

(declare-fun b_lambda!27651 () Bool)

(assert (= b_lambda!27633 (or (and b!840595 b_free!25035 (= (toChars!2560 (transformation!1684 (h!14393 (t!93438 rules!2621)))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))))) (and b!840214 b_free!25015 (= (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))))) (and b!840566 b_free!25031 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))))) (and b!840207 b_free!25019) (and b!840215 b_free!25011 (= (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))) (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))))) b_lambda!27651)))

(declare-fun b_lambda!27653 () Bool)

(assert (= b_lambda!27631 (or (and b!840215 b_free!25011) (and b!840207 b_free!25019 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 l!5107)))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))))) (and b!840595 b_free!25035 (= (toChars!2560 (transformation!1684 (h!14393 (t!93438 rules!2621)))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))))) (and b!840566 b_free!25031 (= (toChars!2560 (transformation!1684 (rule!3107 (h!14394 (t!93439 l!5107))))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))))) (and b!840214 b_free!25015 (= (toChars!2560 (transformation!1684 (h!14393 rules!2621))) (toChars!2560 (transformation!1684 (rule!3107 separatorToken!297))))) b_lambda!27653)))

(check-sat (not d!261636) (not b!840450) (not b!840294) (not b_next!25079) (not d!261626) (not d!261536) (not b!840305) (not b!840579) (not b!840565) b_and!72619 (not b!840593) (not b!840316) b_and!72587 (not b_next!25073) (not b!840449) b_and!72561 b_and!72589 (not b!840578) (not b!840532) (not b!840264) (not b!840597) (not b!840260) b_and!72623 (not b!840594) (not b!840468) (not d!261534) (not b!840541) (not d!261544) (not b!840309) (not b!840583) (not b!840245) (not b_next!25077) tp_is_empty!3933 (not b!840296) (not tb!57933) (not b!840317) (not b!840564) (not b!840335) (not b!840542) (not d!261562) (not d!261532) (not b!840292) b_and!72617 (not b!840304) (not b_lambda!27629) (not b!840470) (not b!840291) (not b!840465) (not b!840466) (not b!840582) (not b!840262) (not d!261612) (not b_next!25095) (not b_next!25093) (not b!840472) (not d!261558) (not tb!57945) (not b!840537) (not b!840257) (not b!840540) (not b_next!25083) (not b_next!25081) (not b_lambda!27651) (not d!261550) (not b!840265) (not b!840563) (not d!261556) (not b!840336) (not d!261632) (not d!261564) (not b!840539) (not b!840580) (not d!261638) (not b!840334) (not b!840552) (not b!840598) (not b!840307) (not b!840306) (not b!840538) (not b_next!25099) (not b!840543) (not b!840308) (not b!840533) b_and!72569 (not b!840259) (not d!261618) (not b!840237) (not b!840544) (not b_next!25075) (not d!261554) (not b!840459) b_and!72565 (not b!840536) (not b!840584) b_and!72621 (not tb!57939) (not b_lambda!27649) (not b!840242) (not b!840551) (not b!840599) (not d!261630) (not b!840298) (not b_next!25097) (not d!261548) (not b_lambda!27653) b_and!72585 (not b!840318))
(check-sat b_and!72619 b_and!72587 b_and!72623 (not b_next!25077) b_and!72617 (not b_next!25079) (not b_next!25099) b_and!72565 b_and!72621 (not b_next!25097) b_and!72585 (not b_next!25073) b_and!72589 b_and!72561 (not b_next!25093) (not b_next!25095) (not b_next!25083) (not b_next!25081) b_and!72569 (not b_next!25075))
