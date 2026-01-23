; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183724 () Bool)

(assert start!183724)

(declare-fun bs!408808 () Bool)

(declare-fun b!1844034 () Bool)

(assert (= bs!408808 (and b!1844034 start!183724)))

(declare-fun lambda!72390 () Int)

(declare-fun lambda!72389 () Int)

(assert (=> bs!408808 (not (= lambda!72390 lambda!72389))))

(declare-fun e!1178399 () Bool)

(declare-fun b!1844032 () Bool)

(declare-fun e!1178400 () Bool)

(declare-datatypes ((List!20389 0))(
  ( (Nil!20319) (Cons!20319 (h!25720 (_ BitVec 16)) (t!171884 List!20389)) )
))
(declare-datatypes ((TokenValue!3750 0))(
  ( (FloatLiteralValue!7500 (text!26695 List!20389)) (TokenValueExt!3749 (__x!12796 Int)) (Broken!18750 (value!114086 List!20389)) (Object!3819) (End!3750) (Def!3750) (Underscore!3750) (Match!3750) (Else!3750) (Error!3750) (Case!3750) (If!3750) (Extends!3750) (Abstract!3750) (Class!3750) (Val!3750) (DelimiterValue!7500 (del!3810 List!20389)) (KeywordValue!3756 (value!114087 List!20389)) (CommentValue!7500 (value!114088 List!20389)) (WhitespaceValue!7500 (value!114089 List!20389)) (IndentationValue!3750 (value!114090 List!20389)) (String!23263) (Int32!3750) (Broken!18751 (value!114091 List!20389)) (Boolean!3751) (Unit!35009) (OperatorValue!3753 (op!3810 List!20389)) (IdentifierValue!7500 (value!114092 List!20389)) (IdentifierValue!7501 (value!114093 List!20389)) (WhitespaceValue!7501 (value!114094 List!20389)) (True!7500) (False!7500) (Broken!18752 (value!114095 List!20389)) (Broken!18753 (value!114096 List!20389)) (True!7501) (RightBrace!3750) (RightBracket!3750) (Colon!3750) (Null!3750) (Comma!3750) (LeftBracket!3750) (False!7501) (LeftBrace!3750) (ImaginaryLiteralValue!3750 (text!26696 List!20389)) (StringLiteralValue!11250 (value!114097 List!20389)) (EOFValue!3750 (value!114098 List!20389)) (IdentValue!3750 (value!114099 List!20389)) (DelimiterValue!7501 (value!114100 List!20389)) (DedentValue!3750 (value!114101 List!20389)) (NewLineValue!3750 (value!114102 List!20389)) (IntegerValue!11250 (value!114103 (_ BitVec 32)) (text!26697 List!20389)) (IntegerValue!11251 (value!114104 Int) (text!26698 List!20389)) (Times!3750) (Or!3750) (Equal!3750) (Minus!3750) (Broken!18754 (value!114105 List!20389)) (And!3750) (Div!3750) (LessEqual!3750) (Mod!3750) (Concat!8736) (Not!3750) (Plus!3750) (SpaceValue!3750 (value!114106 List!20389)) (IntegerValue!11252 (value!114107 Int) (text!26699 List!20389)) (StringLiteralValue!11251 (text!26700 List!20389)) (FloatLiteralValue!7501 (text!26701 List!20389)) (BytesLiteralValue!3750 (value!114108 List!20389)) (CommentValue!7501 (value!114109 List!20389)) (StringLiteralValue!11252 (value!114110 List!20389)) (ErrorTokenValue!3750 (msg!3811 List!20389)) )
))
(declare-datatypes ((Regex!4986 0))(
  ( (ElementMatch!4986 (c!301061 (_ BitVec 16))) (Concat!8737 (regOne!10484 Regex!4986) (regTwo!10484 Regex!4986)) (EmptyExpr!4986) (Star!4986 (reg!5315 Regex!4986)) (EmptyLang!4986) (Union!4986 (regOne!10485 Regex!4986) (regTwo!10485 Regex!4986)) )
))
(declare-datatypes ((String!23264 0))(
  ( (String!23265 (value!114111 String)) )
))
(declare-datatypes ((IArray!13461 0))(
  ( (IArray!13462 (innerList!6788 List!20389)) )
))
(declare-datatypes ((Conc!6728 0))(
  ( (Node!6728 (left!16254 Conc!6728) (right!16584 Conc!6728) (csize!13686 Int) (cheight!6939 Int)) (Leaf!9825 (xs!9604 IArray!13461) (csize!13687 Int)) (Empty!6728) )
))
(declare-datatypes ((BalanceConc!13376 0))(
  ( (BalanceConc!13377 (c!301062 Conc!6728)) )
))
(declare-datatypes ((TokenValueInjection!7156 0))(
  ( (TokenValueInjection!7157 (toValue!5213 Int) (toChars!5072 Int)) )
))
(declare-datatypes ((Rule!7116 0))(
  ( (Rule!7117 (regex!3658 Regex!4986) (tag!4072 String!23264) (isSeparator!3658 Bool) (transformation!3658 TokenValueInjection!7156)) )
))
(declare-datatypes ((Token!6870 0))(
  ( (Token!6871 (value!114112 TokenValue!3750) (rule!5852 Rule!7116) (size!16097 Int) (originalCharacters!4466 List!20389)) )
))
(declare-datatypes ((List!20390 0))(
  ( (Nil!20320) (Cons!20320 (h!25721 Token!6870) (t!171885 List!20390)) )
))
(declare-datatypes ((IArray!13463 0))(
  ( (IArray!13464 (innerList!6789 List!20390)) )
))
(declare-datatypes ((Conc!6729 0))(
  ( (Node!6729 (left!16255 Conc!6729) (right!16585 Conc!6729) (csize!13688 Int) (cheight!6940 Int)) (Leaf!9826 (xs!9605 IArray!13463) (csize!13689 Int)) (Empty!6729) )
))
(declare-datatypes ((List!20391 0))(
  ( (Nil!20321) (Cons!20321 (h!25722 Rule!7116) (t!171886 List!20391)) )
))
(declare-datatypes ((BalanceConc!13378 0))(
  ( (BalanceConc!13379 (c!301063 Conc!6729)) )
))
(declare-datatypes ((PrintableTokens!1234 0))(
  ( (PrintableTokens!1235 (rules!15017 List!20391) (tokens!2441 BalanceConc!13378)) )
))
(declare-datatypes ((tuple2!19688 0))(
  ( (tuple2!19689 (_1!11246 Int) (_2!11246 PrintableTokens!1234)) )
))
(declare-datatypes ((List!20392 0))(
  ( (Nil!20322) (Cons!20322 (h!25723 tuple2!19688) (t!171887 List!20392)) )
))
(declare-fun l!2176 () List!20392)

(declare-fun tp!521419 () Bool)

(declare-fun inv!26586 (PrintableTokens!1234) Bool)

(assert (=> b!1844032 (= e!1178400 (and (inv!26586 (_2!11246 (h!25723 l!2176))) e!1178399 tp!521419))))

(declare-fun e!1178397 () Bool)

(declare-fun forall!4374 (List!20392 Int) Bool)

(assert (=> b!1844034 (= e!1178397 (not (forall!4374 l!2176 lambda!72390)))))

(declare-datatypes ((Unit!35010 0))(
  ( (Unit!35011) )
))
(declare-fun lt!714593 () Unit!35010)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!20392) Unit!35010)

(assert (=> b!1844034 (= lt!714593 (lemmaRemoveIdsPreservesRules!0 (t!171887 l!2176)))))

(declare-fun b!1844035 () Bool)

(declare-fun e!1178398 () Bool)

(declare-fun tp!521417 () Bool)

(declare-fun inv!26587 (Conc!6729) Bool)

(assert (=> b!1844035 (= e!1178398 (and (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) tp!521417))))

(declare-fun b!1844036 () Bool)

(declare-fun res!828281 () Bool)

(assert (=> b!1844036 (=> (not res!828281) (not e!1178397))))

(assert (=> b!1844036 (= res!828281 (not (is-Nil!20322 l!2176)))))

(declare-fun tp!521418 () Bool)

(declare-fun b!1844033 () Bool)

(declare-fun inv!26588 (BalanceConc!13378) Bool)

(assert (=> b!1844033 (= e!1178399 (and tp!521418 (inv!26588 (tokens!2441 (_2!11246 (h!25723 l!2176)))) e!1178398))))

(declare-fun res!828280 () Bool)

(assert (=> start!183724 (=> (not res!828280) (not e!1178397))))

(assert (=> start!183724 (= res!828280 (forall!4374 l!2176 lambda!72389))))

(assert (=> start!183724 e!1178397))

(assert (=> start!183724 e!1178400))

(assert (= (and start!183724 res!828280) b!1844036))

(assert (= (and b!1844036 res!828281) b!1844034))

(assert (= b!1844033 b!1844035))

(assert (= b!1844032 b!1844033))

(assert (= (and start!183724 (is-Cons!20322 l!2176)) b!1844032))

(declare-fun m!2272307 () Bool)

(assert (=> b!1844032 m!2272307))

(declare-fun m!2272309 () Bool)

(assert (=> start!183724 m!2272309))

(declare-fun m!2272311 () Bool)

(assert (=> b!1844033 m!2272311))

(declare-fun m!2272313 () Bool)

(assert (=> b!1844034 m!2272313))

(declare-fun m!2272315 () Bool)

(assert (=> b!1844034 m!2272315))

(declare-fun m!2272317 () Bool)

(assert (=> b!1844035 m!2272317))

(push 1)

(assert (not b!1844032))

(assert (not b!1844034))

(assert (not start!183724))

(assert (not b!1844035))

(assert (not b!1844033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564361 () Bool)

(declare-fun res!828294 () Bool)

(declare-fun e!1178415 () Bool)

(assert (=> d!564361 (=> (not res!828294) (not e!1178415))))

(declare-fun isEmpty!12767 (List!20391) Bool)

(assert (=> d!564361 (= res!828294 (not (isEmpty!12767 (rules!15017 (_2!11246 (h!25723 l!2176))))))))

(assert (=> d!564361 (= (inv!26586 (_2!11246 (h!25723 l!2176))) e!1178415)))

(declare-fun b!1844058 () Bool)

(declare-fun res!828295 () Bool)

(assert (=> b!1844058 (=> (not res!828295) (not e!1178415))))

(declare-datatypes ((LexerInterface!3283 0))(
  ( (LexerInterfaceExt!3280 (__x!12798 Int)) (Lexer!3281) )
))
(declare-fun rulesInvariant!2952 (LexerInterface!3283 List!20391) Bool)

(assert (=> b!1844058 (= res!828295 (rulesInvariant!2952 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(declare-fun b!1844059 () Bool)

(declare-fun res!828296 () Bool)

(assert (=> b!1844059 (=> (not res!828296) (not e!1178415))))

(declare-fun rulesProduceEachTokenIndividually!920 (LexerInterface!3283 List!20391 BalanceConc!13378) Bool)

(assert (=> b!1844059 (= res!828296 (rulesProduceEachTokenIndividually!920 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176))) (tokens!2441 (_2!11246 (h!25723 l!2176)))))))

(declare-fun b!1844060 () Bool)

(declare-fun separableTokens!291 (LexerInterface!3283 BalanceConc!13378 List!20391) Bool)

(assert (=> b!1844060 (= e!1178415 (separableTokens!291 Lexer!3281 (tokens!2441 (_2!11246 (h!25723 l!2176))) (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(assert (= (and d!564361 res!828294) b!1844058))

(assert (= (and b!1844058 res!828295) b!1844059))

(assert (= (and b!1844059 res!828296) b!1844060))

(declare-fun m!2272331 () Bool)

(assert (=> d!564361 m!2272331))

(declare-fun m!2272333 () Bool)

(assert (=> b!1844058 m!2272333))

(declare-fun m!2272335 () Bool)

(assert (=> b!1844059 m!2272335))

(declare-fun m!2272337 () Bool)

(assert (=> b!1844060 m!2272337))

(assert (=> b!1844032 d!564361))

(declare-fun d!564365 () Bool)

(declare-fun res!828310 () Bool)

(declare-fun e!1178423 () Bool)

(assert (=> d!564365 (=> res!828310 e!1178423)))

(assert (=> d!564365 (= res!828310 (is-Nil!20322 l!2176))))

(assert (=> d!564365 (= (forall!4374 l!2176 lambda!72389) e!1178423)))

(declare-fun b!1844074 () Bool)

(declare-fun e!1178424 () Bool)

(assert (=> b!1844074 (= e!1178423 e!1178424)))

(declare-fun res!828311 () Bool)

(assert (=> b!1844074 (=> (not res!828311) (not e!1178424))))

(declare-fun dynLambda!10096 (Int tuple2!19688) Bool)

(assert (=> b!1844074 (= res!828311 (dynLambda!10096 lambda!72389 (h!25723 l!2176)))))

(declare-fun b!1844075 () Bool)

(assert (=> b!1844075 (= e!1178424 (forall!4374 (t!171887 l!2176) lambda!72389))))

(assert (= (and d!564365 (not res!828310)) b!1844074))

(assert (= (and b!1844074 res!828311) b!1844075))

(declare-fun b_lambda!61157 () Bool)

(assert (=> (not b_lambda!61157) (not b!1844074)))

(declare-fun m!2272347 () Bool)

(assert (=> b!1844074 m!2272347))

(declare-fun m!2272349 () Bool)

(assert (=> b!1844075 m!2272349))

(assert (=> start!183724 d!564365))

(declare-fun d!564369 () Bool)

(declare-fun c!301069 () Bool)

(assert (=> d!564369 (= c!301069 (is-Node!6729 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))

(declare-fun e!1178435 () Bool)

(assert (=> d!564369 (= (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) e!1178435)))

(declare-fun b!1844088 () Bool)

(declare-fun inv!26592 (Conc!6729) Bool)

(assert (=> b!1844088 (= e!1178435 (inv!26592 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))

(declare-fun b!1844089 () Bool)

(declare-fun e!1178436 () Bool)

(assert (=> b!1844089 (= e!1178435 e!1178436)))

(declare-fun res!828320 () Bool)

(assert (=> b!1844089 (= res!828320 (not (is-Leaf!9826 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (=> b!1844089 (=> res!828320 e!1178436)))

(declare-fun b!1844090 () Bool)

(declare-fun inv!26593 (Conc!6729) Bool)

(assert (=> b!1844090 (= e!1178436 (inv!26593 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))

(assert (= (and d!564369 c!301069) b!1844088))

(assert (= (and d!564369 (not c!301069)) b!1844089))

(assert (= (and b!1844089 (not res!828320)) b!1844090))

(declare-fun m!2272355 () Bool)

(assert (=> b!1844088 m!2272355))

(declare-fun m!2272357 () Bool)

(assert (=> b!1844090 m!2272357))

(assert (=> b!1844035 d!564369))

(declare-fun d!564373 () Bool)

(declare-fun res!828321 () Bool)

(declare-fun e!1178437 () Bool)

(assert (=> d!564373 (=> res!828321 e!1178437)))

(assert (=> d!564373 (= res!828321 (is-Nil!20322 l!2176))))

(assert (=> d!564373 (= (forall!4374 l!2176 lambda!72390) e!1178437)))

(declare-fun b!1844091 () Bool)

(declare-fun e!1178438 () Bool)

(assert (=> b!1844091 (= e!1178437 e!1178438)))

(declare-fun res!828322 () Bool)

(assert (=> b!1844091 (=> (not res!828322) (not e!1178438))))

(assert (=> b!1844091 (= res!828322 (dynLambda!10096 lambda!72390 (h!25723 l!2176)))))

(declare-fun b!1844092 () Bool)

(assert (=> b!1844092 (= e!1178438 (forall!4374 (t!171887 l!2176) lambda!72390))))

(assert (= (and d!564373 (not res!828321)) b!1844091))

(assert (= (and b!1844091 res!828322) b!1844092))

(declare-fun b_lambda!61161 () Bool)

(assert (=> (not b_lambda!61161) (not b!1844091)))

(declare-fun m!2272359 () Bool)

(assert (=> b!1844091 m!2272359))

(declare-fun m!2272361 () Bool)

(assert (=> b!1844092 m!2272361))

(assert (=> b!1844034 d!564373))

(declare-fun bs!408812 () Bool)

(declare-fun d!564375 () Bool)

(assert (= bs!408812 (and d!564375 start!183724)))

(declare-fun lambda!72407 () Int)

(assert (=> bs!408812 (= lambda!72407 lambda!72389)))

(declare-fun bs!408813 () Bool)

(assert (= bs!408813 (and d!564375 b!1844034)))

(assert (=> bs!408813 (not (= lambda!72407 lambda!72390))))

(declare-fun lambda!72408 () Int)

(assert (=> bs!408812 (not (= lambda!72408 lambda!72389))))

(assert (=> bs!408813 (= lambda!72408 lambda!72390)))

(assert (=> d!564375 (not (= lambda!72408 lambda!72407))))

(assert (=> d!564375 (forall!4374 (t!171887 l!2176) lambda!72408)))

(declare-fun lt!714607 () Unit!35010)

(declare-fun e!1178446 () Unit!35010)

(assert (=> d!564375 (= lt!714607 e!1178446)))

(declare-fun c!301075 () Bool)

(assert (=> d!564375 (= c!301075 (is-Nil!20322 (t!171887 l!2176)))))

(assert (=> d!564375 (forall!4374 (t!171887 l!2176) lambda!72407)))

(assert (=> d!564375 (= (lemmaRemoveIdsPreservesRules!0 (t!171887 l!2176)) lt!714607)))

(declare-fun b!1844105 () Bool)

(declare-fun Unit!35017 () Unit!35010)

(assert (=> b!1844105 (= e!1178446 Unit!35017)))

(declare-fun b!1844106 () Bool)

(declare-fun Unit!35018 () Unit!35010)

(assert (=> b!1844106 (= e!1178446 Unit!35018)))

(declare-fun lt!714608 () Unit!35010)

(assert (=> b!1844106 (= lt!714608 (lemmaRemoveIdsPreservesRules!0 (t!171887 (t!171887 l!2176))))))

(assert (= (and d!564375 c!301075) b!1844105))

(assert (= (and d!564375 (not c!301075)) b!1844106))

(declare-fun m!2272373 () Bool)

(assert (=> d!564375 m!2272373))

(declare-fun m!2272375 () Bool)

(assert (=> d!564375 m!2272375))

(declare-fun m!2272377 () Bool)

(assert (=> b!1844106 m!2272377))

(assert (=> b!1844034 d!564375))

(declare-fun d!564381 () Bool)

(declare-fun isBalanced!2094 (Conc!6729) Bool)

(assert (=> d!564381 (= (inv!26588 (tokens!2441 (_2!11246 (h!25723 l!2176)))) (isBalanced!2094 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))

(declare-fun bs!408815 () Bool)

(assert (= bs!408815 d!564381))

(declare-fun m!2272381 () Bool)

(assert (=> bs!408815 m!2272381))

(assert (=> b!1844033 d!564381))

(declare-fun b!1844130 () Bool)

(declare-fun e!1178461 () Bool)

(declare-fun tp!521436 () Bool)

(assert (=> b!1844130 (= e!1178461 (and (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))) tp!521436))))

(declare-fun tp!521435 () Bool)

(declare-fun b!1844129 () Bool)

(declare-fun e!1178462 () Bool)

(assert (=> b!1844129 (= e!1178462 (and tp!521435 (inv!26588 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))) e!1178461))))

(declare-fun tp!521437 () Bool)

(declare-fun e!1178463 () Bool)

(declare-fun b!1844128 () Bool)

(assert (=> b!1844128 (= e!1178463 (and (inv!26586 (_2!11246 (h!25723 (t!171887 l!2176)))) e!1178462 tp!521437))))

(assert (=> b!1844032 (= tp!521419 e!1178463)))

(assert (= b!1844129 b!1844130))

(assert (= b!1844128 b!1844129))

(assert (= (and b!1844032 (is-Cons!20322 (t!171887 l!2176))) b!1844128))

(declare-fun m!2272387 () Bool)

(assert (=> b!1844130 m!2272387))

(declare-fun m!2272389 () Bool)

(assert (=> b!1844129 m!2272389))

(declare-fun m!2272391 () Bool)

(assert (=> b!1844128 m!2272391))

(declare-fun tp!521452 () Bool)

(declare-fun tp!521451 () Bool)

(declare-fun e!1178473 () Bool)

(declare-fun b!1844143 () Bool)

(assert (=> b!1844143 (= e!1178473 (and (inv!26587 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) tp!521451 (inv!26587 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) tp!521452))))

(declare-fun b!1844145 () Bool)

(declare-fun e!1178472 () Bool)

(declare-fun tp!521450 () Bool)

(assert (=> b!1844145 (= e!1178472 tp!521450)))

(declare-fun b!1844144 () Bool)

(declare-fun inv!26594 (IArray!13463) Bool)

(assert (=> b!1844144 (= e!1178473 (and (inv!26594 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) e!1178472))))

(assert (=> b!1844035 (= tp!521417 (and (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) e!1178473))))

(assert (= (and b!1844035 (is-Node!6729 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) b!1844143))

(assert (= b!1844144 b!1844145))

(assert (= (and b!1844035 (is-Leaf!9826 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) b!1844144))

(declare-fun m!2272393 () Bool)

(assert (=> b!1844143 m!2272393))

(declare-fun m!2272395 () Bool)

(assert (=> b!1844143 m!2272395))

(declare-fun m!2272397 () Bool)

(assert (=> b!1844144 m!2272397))

(assert (=> b!1844035 m!2272317))

(declare-fun b!1844167 () Bool)

(declare-fun b_free!51531 () Bool)

(declare-fun b_next!52235 () Bool)

(assert (=> b!1844167 (= b_free!51531 (not b_next!52235))))

(declare-fun tp!521467 () Bool)

(declare-fun b_and!143681 () Bool)

(assert (=> b!1844167 (= tp!521467 b_and!143681)))

(declare-fun b_free!51533 () Bool)

(declare-fun b_next!52237 () Bool)

(assert (=> b!1844167 (= b_free!51533 (not b_next!52237))))

(declare-fun tp!521466 () Bool)

(declare-fun b_and!143683 () Bool)

(assert (=> b!1844167 (= tp!521466 b_and!143683)))

(declare-fun e!1178494 () Bool)

(assert (=> b!1844167 (= e!1178494 (and tp!521467 tp!521466))))

(declare-fun b!1844166 () Bool)

(declare-fun e!1178495 () Bool)

(declare-fun inv!26583 (String!23264) Bool)

(declare-fun inv!26597 (TokenValueInjection!7156) Bool)

(assert (=> b!1844166 (= e!1178495 (and (inv!26583 (tag!4072 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) (inv!26597 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) e!1178494))))

(declare-fun b!1844165 () Bool)

(declare-fun e!1178493 () Bool)

(declare-fun tp!521468 () Bool)

(assert (=> b!1844165 (= e!1178493 (and e!1178495 tp!521468))))

(assert (=> b!1844033 (= tp!521418 e!1178493)))

(assert (= b!1844166 b!1844167))

(assert (= b!1844165 b!1844166))

(assert (= (and b!1844033 (is-Cons!20321 (rules!15017 (_2!11246 (h!25723 l!2176))))) b!1844165))

(declare-fun m!2272405 () Bool)

(assert (=> b!1844166 m!2272405))

(declare-fun m!2272407 () Bool)

(assert (=> b!1844166 m!2272407))

(declare-fun b_lambda!61165 () Bool)

(assert (= b_lambda!61157 (or start!183724 b_lambda!61165)))

(declare-fun bs!408816 () Bool)

(declare-fun d!564385 () Bool)

(assert (= bs!408816 (and d!564385 start!183724)))

(declare-fun usesJsonRules!0 (PrintableTokens!1234) Bool)

(assert (=> bs!408816 (= (dynLambda!10096 lambda!72389 (h!25723 l!2176)) (usesJsonRules!0 (_2!11246 (h!25723 l!2176))))))

(declare-fun m!2272409 () Bool)

(assert (=> bs!408816 m!2272409))

(assert (=> b!1844074 d!564385))

(declare-fun b_lambda!61167 () Bool)

(assert (= b_lambda!61161 (or b!1844034 b_lambda!61167)))

(declare-fun bs!408817 () Bool)

(declare-fun d!564387 () Bool)

(assert (= bs!408817 (and d!564387 b!1844034)))

(declare-fun removeId!0 (tuple2!19688) PrintableTokens!1234)

(assert (=> bs!408817 (= (dynLambda!10096 lambda!72390 (h!25723 l!2176)) (usesJsonRules!0 (removeId!0 (h!25723 l!2176))))))

(declare-fun m!2272411 () Bool)

(assert (=> bs!408817 m!2272411))

(assert (=> bs!408817 m!2272411))

(declare-fun m!2272413 () Bool)

(assert (=> bs!408817 m!2272413))

(assert (=> b!1844091 d!564387))

(push 1)

(assert (not b!1844130))

(assert (not b!1844092))

(assert b_and!143683)

(assert (not b!1844144))

(assert (not b_lambda!61165))

(assert (not b!1844035))

(assert (not b!1844090))

(assert (not d!564375))

(assert (not d!564381))

(assert (not b_lambda!61167))

(assert (not b!1844143))

(assert (not bs!408816))

(assert (not b!1844166))

(assert (not b!1844060))

(assert (not b!1844128))

(assert (not b!1844075))

(assert (not b!1844058))

(assert (not d!564361))

(assert (not b!1844106))

(assert b_and!143681)

(assert (not b_next!52235))

(assert (not b!1844145))

(assert (not b!1844165))

(assert (not b_next!52237))

(assert (not bs!408817))

(assert (not b!1844059))

(assert (not b!1844088))

(assert (not b!1844129))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143683)

(assert b_and!143681)

(assert (not b_next!52235))

(assert (not b_next!52237))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564393 () Bool)

(declare-fun size!16099 (List!20390) Int)

(assert (=> d!564393 (= (inv!26594 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) (<= (size!16099 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) 2147483647))))

(declare-fun bs!408820 () Bool)

(assert (= bs!408820 d!564393))

(declare-fun m!2272431 () Bool)

(assert (=> bs!408820 m!2272431))

(assert (=> b!1844144 d!564393))

(declare-fun d!564395 () Bool)

(declare-datatypes ((JsonLexer!428 0))(
  ( (JsonLexer!429) )
))
(declare-fun rules!109 (JsonLexer!428) List!20391)

(assert (=> d!564395 (= (usesJsonRules!0 (_2!11246 (h!25723 l!2176))) (= (rules!15017 (_2!11246 (h!25723 l!2176))) (rules!109 JsonLexer!429)))))

(declare-fun bs!408825 () Bool)

(assert (= bs!408825 d!564395))

(declare-fun m!2272441 () Bool)

(assert (=> bs!408825 m!2272441))

(assert (=> bs!408816 d!564395))

(declare-fun bs!408826 () Bool)

(declare-fun d!564403 () Bool)

(assert (= bs!408826 (and d!564403 start!183724)))

(declare-fun lambda!72411 () Int)

(assert (=> bs!408826 (= lambda!72411 lambda!72389)))

(declare-fun bs!408827 () Bool)

(assert (= bs!408827 (and d!564403 b!1844034)))

(assert (=> bs!408827 (not (= lambda!72411 lambda!72390))))

(declare-fun bs!408828 () Bool)

(assert (= bs!408828 (and d!564403 d!564375)))

(assert (=> bs!408828 (= lambda!72411 lambda!72407)))

(assert (=> bs!408828 (not (= lambda!72411 lambda!72408))))

(declare-fun lambda!72412 () Int)

(assert (=> bs!408827 (= lambda!72412 lambda!72390)))

(assert (=> d!564403 (not (= lambda!72412 lambda!72411))))

(assert (=> bs!408826 (not (= lambda!72412 lambda!72389))))

(assert (=> bs!408828 (not (= lambda!72412 lambda!72407))))

(assert (=> bs!408828 (= lambda!72412 lambda!72408)))

(assert (=> d!564403 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72412)))

(declare-fun lt!714611 () Unit!35010)

(declare-fun e!1178508 () Unit!35010)

(assert (=> d!564403 (= lt!714611 e!1178508)))

(declare-fun c!301080 () Bool)

(assert (=> d!564403 (= c!301080 (is-Nil!20322 (t!171887 (t!171887 l!2176))))))

(assert (=> d!564403 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72411)))

(assert (=> d!564403 (= (lemmaRemoveIdsPreservesRules!0 (t!171887 (t!171887 l!2176))) lt!714611)))

(declare-fun b!1844184 () Bool)

(declare-fun Unit!35019 () Unit!35010)

(assert (=> b!1844184 (= e!1178508 Unit!35019)))

(declare-fun b!1844185 () Bool)

(declare-fun Unit!35020 () Unit!35010)

(assert (=> b!1844185 (= e!1178508 Unit!35020)))

(declare-fun lt!714612 () Unit!35010)

(assert (=> b!1844185 (= lt!714612 (lemmaRemoveIdsPreservesRules!0 (t!171887 (t!171887 (t!171887 l!2176)))))))

(assert (= (and d!564403 c!301080) b!1844184))

(assert (= (and d!564403 (not c!301080)) b!1844185))

(declare-fun m!2272443 () Bool)

(assert (=> d!564403 m!2272443))

(declare-fun m!2272445 () Bool)

(assert (=> d!564403 m!2272445))

(declare-fun m!2272447 () Bool)

(assert (=> b!1844185 m!2272447))

(assert (=> b!1844106 d!564403))

(declare-fun d!564405 () Bool)

(declare-fun c!301081 () Bool)

(assert (=> d!564405 (= c!301081 (is-Node!6729 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun e!1178509 () Bool)

(assert (=> d!564405 (= (inv!26587 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) e!1178509)))

(declare-fun b!1844186 () Bool)

(assert (=> b!1844186 (= e!1178509 (inv!26592 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun b!1844187 () Bool)

(declare-fun e!1178510 () Bool)

(assert (=> b!1844187 (= e!1178509 e!1178510)))

(declare-fun res!828328 () Bool)

(assert (=> b!1844187 (= res!828328 (not (is-Leaf!9826 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))))

(assert (=> b!1844187 (=> res!828328 e!1178510)))

(declare-fun b!1844188 () Bool)

(assert (=> b!1844188 (= e!1178510 (inv!26593 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (= (and d!564405 c!301081) b!1844186))

(assert (= (and d!564405 (not c!301081)) b!1844187))

(assert (= (and b!1844187 (not res!828328)) b!1844188))

(declare-fun m!2272449 () Bool)

(assert (=> b!1844186 m!2272449))

(declare-fun m!2272451 () Bool)

(assert (=> b!1844188 m!2272451))

(assert (=> b!1844143 d!564405))

(declare-fun d!564407 () Bool)

(declare-fun c!301082 () Bool)

(assert (=> d!564407 (= c!301082 (is-Node!6729 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun e!1178511 () Bool)

(assert (=> d!564407 (= (inv!26587 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) e!1178511)))

(declare-fun b!1844189 () Bool)

(assert (=> b!1844189 (= e!1178511 (inv!26592 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun b!1844190 () Bool)

(declare-fun e!1178512 () Bool)

(assert (=> b!1844190 (= e!1178511 e!1178512)))

(declare-fun res!828329 () Bool)

(assert (=> b!1844190 (= res!828329 (not (is-Leaf!9826 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))))

(assert (=> b!1844190 (=> res!828329 e!1178512)))

(declare-fun b!1844191 () Bool)

(assert (=> b!1844191 (= e!1178512 (inv!26593 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (= (and d!564407 c!301082) b!1844189))

(assert (= (and d!564407 (not c!301082)) b!1844190))

(assert (= (and b!1844190 (not res!828329)) b!1844191))

(declare-fun m!2272453 () Bool)

(assert (=> b!1844189 m!2272453))

(declare-fun m!2272455 () Bool)

(assert (=> b!1844191 m!2272455))

(assert (=> b!1844143 d!564407))

(declare-fun d!564409 () Bool)

(declare-fun res!828330 () Bool)

(declare-fun e!1178513 () Bool)

(assert (=> d!564409 (=> res!828330 e!1178513)))

(assert (=> d!564409 (= res!828330 (is-Nil!20322 (t!171887 l!2176)))))

(assert (=> d!564409 (= (forall!4374 (t!171887 l!2176) lambda!72389) e!1178513)))

(declare-fun b!1844192 () Bool)

(declare-fun e!1178514 () Bool)

(assert (=> b!1844192 (= e!1178513 e!1178514)))

(declare-fun res!828331 () Bool)

(assert (=> b!1844192 (=> (not res!828331) (not e!1178514))))

(assert (=> b!1844192 (= res!828331 (dynLambda!10096 lambda!72389 (h!25723 (t!171887 l!2176))))))

(declare-fun b!1844193 () Bool)

(assert (=> b!1844193 (= e!1178514 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72389))))

(assert (= (and d!564409 (not res!828330)) b!1844192))

(assert (= (and b!1844192 res!828331) b!1844193))

(declare-fun b_lambda!61173 () Bool)

(assert (=> (not b_lambda!61173) (not b!1844192)))

(declare-fun m!2272457 () Bool)

(assert (=> b!1844192 m!2272457))

(declare-fun m!2272459 () Bool)

(assert (=> b!1844193 m!2272459))

(assert (=> b!1844075 d!564409))

(declare-fun d!564411 () Bool)

(assert (=> d!564411 (= (inv!26583 (tag!4072 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) (= (mod (str.len (value!114111 (tag!4072 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176))))))) 2) 0))))

(assert (=> b!1844166 d!564411))

(declare-fun d!564413 () Bool)

(declare-fun res!828334 () Bool)

(declare-fun e!1178517 () Bool)

(assert (=> d!564413 (=> (not res!828334) (not e!1178517))))

(declare-fun semiInverseModEq!1471 (Int Int) Bool)

(assert (=> d!564413 (= res!828334 (semiInverseModEq!1471 (toChars!5072 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) (toValue!5213 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176))))))))))

(assert (=> d!564413 (= (inv!26597 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) e!1178517)))

(declare-fun b!1844196 () Bool)

(declare-fun equivClasses!1412 (Int Int) Bool)

(assert (=> b!1844196 (= e!1178517 (equivClasses!1412 (toChars!5072 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176)))))) (toValue!5213 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176))))))))))

(assert (= (and d!564413 res!828334) b!1844196))

(declare-fun m!2272461 () Bool)

(assert (=> d!564413 m!2272461))

(declare-fun m!2272463 () Bool)

(assert (=> b!1844196 m!2272463))

(assert (=> b!1844166 d!564413))

(declare-fun d!564415 () Bool)

(declare-fun res!828335 () Bool)

(declare-fun e!1178518 () Bool)

(assert (=> d!564415 (=> res!828335 e!1178518)))

(assert (=> d!564415 (= res!828335 (is-Nil!20322 (t!171887 l!2176)))))

(assert (=> d!564415 (= (forall!4374 (t!171887 l!2176) lambda!72390) e!1178518)))

(declare-fun b!1844197 () Bool)

(declare-fun e!1178519 () Bool)

(assert (=> b!1844197 (= e!1178518 e!1178519)))

(declare-fun res!828336 () Bool)

(assert (=> b!1844197 (=> (not res!828336) (not e!1178519))))

(assert (=> b!1844197 (= res!828336 (dynLambda!10096 lambda!72390 (h!25723 (t!171887 l!2176))))))

(declare-fun b!1844198 () Bool)

(assert (=> b!1844198 (= e!1178519 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72390))))

(assert (= (and d!564415 (not res!828335)) b!1844197))

(assert (= (and b!1844197 res!828336) b!1844198))

(declare-fun b_lambda!61175 () Bool)

(assert (=> (not b_lambda!61175) (not b!1844197)))

(declare-fun m!2272465 () Bool)

(assert (=> b!1844197 m!2272465))

(declare-fun m!2272467 () Bool)

(assert (=> b!1844198 m!2272467))

(assert (=> b!1844092 d!564415))

(declare-fun d!564417 () Bool)

(assert (=> d!564417 (= (usesJsonRules!0 (removeId!0 (h!25723 l!2176))) (= (rules!15017 (removeId!0 (h!25723 l!2176))) (rules!109 JsonLexer!429)))))

(declare-fun bs!408829 () Bool)

(assert (= bs!408829 d!564417))

(assert (=> bs!408829 m!2272441))

(assert (=> bs!408817 d!564417))

(declare-fun d!564419 () Bool)

(assert (=> d!564419 (= (removeId!0 (h!25723 l!2176)) (_2!11246 (h!25723 l!2176)))))

(assert (=> bs!408817 d!564419))

(declare-fun b!1844212 () Bool)

(declare-fun e!1178533 () Bool)

(assert (=> b!1844212 (= e!1178533 true)))

(declare-fun b!1844211 () Bool)

(declare-fun e!1178532 () Bool)

(assert (=> b!1844211 (= e!1178532 e!1178533)))

(declare-fun b!1844210 () Bool)

(declare-fun e!1178531 () Bool)

(assert (=> b!1844210 (= e!1178531 e!1178532)))

(declare-fun d!564421 () Bool)

(assert (=> d!564421 e!1178531))

(assert (= b!1844211 b!1844212))

(assert (= b!1844210 b!1844211))

(assert (= (and d!564421 (is-Cons!20321 (rules!15017 (_2!11246 (h!25723 l!2176))))) b!1844210))

(declare-fun order!13095 () Int)

(declare-fun lambda!72417 () Int)

(declare-fun order!13093 () Int)

(declare-fun dynLambda!10101 (Int Int) Int)

(declare-fun dynLambda!10102 (Int Int) Int)

(assert (=> b!1844212 (< (dynLambda!10101 order!13093 (toValue!5213 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176))))))) (dynLambda!10102 order!13095 lambda!72417))))

(declare-fun order!13097 () Int)

(declare-fun dynLambda!10103 (Int Int) Int)

(assert (=> b!1844212 (< (dynLambda!10103 order!13097 (toChars!5072 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 l!2176))))))) (dynLambda!10102 order!13095 lambda!72417))))

(assert (=> d!564421 true))

(declare-fun e!1178522 () Bool)

(assert (=> d!564421 e!1178522))

(declare-fun res!828339 () Bool)

(assert (=> d!564421 (=> (not res!828339) (not e!1178522))))

(declare-fun lt!714617 () Bool)

(declare-fun forall!4378 (List!20390 Int) Bool)

(declare-fun list!8260 (BalanceConc!13378) List!20390)

(assert (=> d!564421 (= res!828339 (= lt!714617 (forall!4378 (list!8260 (tokens!2441 (_2!11246 (h!25723 l!2176)))) lambda!72417)))))

(declare-fun forall!4379 (BalanceConc!13378 Int) Bool)

(assert (=> d!564421 (= lt!714617 (forall!4379 (tokens!2441 (_2!11246 (h!25723 l!2176))) lambda!72417))))

(assert (=> d!564421 (not (isEmpty!12767 (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(assert (=> d!564421 (= (rulesProduceEachTokenIndividually!920 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176))) (tokens!2441 (_2!11246 (h!25723 l!2176)))) lt!714617)))

(declare-fun b!1844201 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1094 (LexerInterface!3283 List!20391 List!20390) Bool)

(assert (=> b!1844201 (= e!1178522 (= lt!714617 (rulesProduceEachTokenIndividuallyList!1094 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176))) (list!8260 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (= (and d!564421 res!828339) b!1844201))

(declare-fun m!2272471 () Bool)

(assert (=> d!564421 m!2272471))

(assert (=> d!564421 m!2272471))

(declare-fun m!2272473 () Bool)

(assert (=> d!564421 m!2272473))

(declare-fun m!2272475 () Bool)

(assert (=> d!564421 m!2272475))

(assert (=> d!564421 m!2272331))

(assert (=> b!1844201 m!2272471))

(assert (=> b!1844201 m!2272471))

(declare-fun m!2272477 () Bool)

(assert (=> b!1844201 m!2272477))

(assert (=> b!1844059 d!564421))

(declare-fun d!564425 () Bool)

(assert (=> d!564425 (= (isEmpty!12767 (rules!15017 (_2!11246 (h!25723 l!2176)))) (is-Nil!20321 (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(assert (=> d!564361 d!564425))

(declare-fun d!564427 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!150 (LexerInterface!3283 BalanceConc!13378 Int List!20391) Bool)

(assert (=> d!564427 (= (separableTokens!291 Lexer!3281 (tokens!2441 (_2!11246 (h!25723 l!2176))) (rules!15017 (_2!11246 (h!25723 l!2176)))) (tokensListTwoByTwoPredicateSeparable!150 Lexer!3281 (tokens!2441 (_2!11246 (h!25723 l!2176))) 0 (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(declare-fun bs!408833 () Bool)

(assert (= bs!408833 d!564427))

(declare-fun m!2272531 () Bool)

(assert (=> bs!408833 m!2272531))

(assert (=> b!1844060 d!564427))

(declare-fun d!564457 () Bool)

(declare-fun res!828375 () Bool)

(declare-fun e!1178568 () Bool)

(assert (=> d!564457 (=> (not res!828375) (not e!1178568))))

(declare-fun list!8261 (IArray!13463) List!20390)

(assert (=> d!564457 (= res!828375 (<= (size!16099 (list!8261 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) 512))))

(assert (=> d!564457 (= (inv!26593 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) e!1178568)))

(declare-fun b!1844269 () Bool)

(declare-fun res!828376 () Bool)

(assert (=> b!1844269 (=> (not res!828376) (not e!1178568))))

(assert (=> b!1844269 (= res!828376 (= (csize!13689 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) (size!16099 (list!8261 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))))

(declare-fun b!1844270 () Bool)

(assert (=> b!1844270 (= e!1178568 (and (> (csize!13689 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) 0) (<= (csize!13689 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) 512)))))

(assert (= (and d!564457 res!828375) b!1844269))

(assert (= (and b!1844269 res!828376) b!1844270))

(declare-fun m!2272533 () Bool)

(assert (=> d!564457 m!2272533))

(assert (=> d!564457 m!2272533))

(declare-fun m!2272535 () Bool)

(assert (=> d!564457 m!2272535))

(assert (=> b!1844269 m!2272533))

(assert (=> b!1844269 m!2272533))

(assert (=> b!1844269 m!2272535))

(assert (=> b!1844090 d!564457))

(declare-fun d!564459 () Bool)

(declare-fun res!828379 () Bool)

(declare-fun e!1178571 () Bool)

(assert (=> d!564459 (=> (not res!828379) (not e!1178571))))

(declare-fun rulesValid!1398 (LexerInterface!3283 List!20391) Bool)

(assert (=> d!564459 (= res!828379 (rulesValid!1398 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176)))))))

(assert (=> d!564459 (= (rulesInvariant!2952 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176)))) e!1178571)))

(declare-fun b!1844273 () Bool)

(declare-datatypes ((List!20398 0))(
  ( (Nil!20328) (Cons!20328 (h!25729 String!23264) (t!171935 List!20398)) )
))
(declare-fun noDuplicateTag!1396 (LexerInterface!3283 List!20391 List!20398) Bool)

(assert (=> b!1844273 (= e!1178571 (noDuplicateTag!1396 Lexer!3281 (rules!15017 (_2!11246 (h!25723 l!2176))) Nil!20328))))

(assert (= (and d!564459 res!828379) b!1844273))

(declare-fun m!2272537 () Bool)

(assert (=> d!564459 m!2272537))

(declare-fun m!2272539 () Bool)

(assert (=> b!1844273 m!2272539))

(assert (=> b!1844058 d!564459))

(declare-fun d!564461 () Bool)

(declare-fun res!828386 () Bool)

(declare-fun e!1178574 () Bool)

(assert (=> d!564461 (=> (not res!828386) (not e!1178574))))

(declare-fun size!16101 (Conc!6729) Int)

(assert (=> d!564461 (= res!828386 (= (csize!13688 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) (+ (size!16101 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) (size!16101 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))))

(assert (=> d!564461 (= (inv!26592 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) e!1178574)))

(declare-fun b!1844280 () Bool)

(declare-fun res!828387 () Bool)

(assert (=> b!1844280 (=> (not res!828387) (not e!1178574))))

(assert (=> b!1844280 (= res!828387 (and (not (= (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) Empty!6729)) (not (= (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) Empty!6729))))))

(declare-fun b!1844281 () Bool)

(declare-fun res!828388 () Bool)

(assert (=> b!1844281 (=> (not res!828388) (not e!1178574))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1026 (Conc!6729) Int)

(assert (=> b!1844281 (= res!828388 (= (cheight!6940 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) (+ (max!0 (height!1026 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) (height!1026 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) 1)))))

(declare-fun b!1844282 () Bool)

(assert (=> b!1844282 (= e!1178574 (<= 0 (cheight!6940 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (= (and d!564461 res!828386) b!1844280))

(assert (= (and b!1844280 res!828387) b!1844281))

(assert (= (and b!1844281 res!828388) b!1844282))

(declare-fun m!2272541 () Bool)

(assert (=> d!564461 m!2272541))

(declare-fun m!2272543 () Bool)

(assert (=> d!564461 m!2272543))

(declare-fun m!2272545 () Bool)

(assert (=> b!1844281 m!2272545))

(declare-fun m!2272547 () Bool)

(assert (=> b!1844281 m!2272547))

(assert (=> b!1844281 m!2272545))

(assert (=> b!1844281 m!2272547))

(declare-fun m!2272549 () Bool)

(assert (=> b!1844281 m!2272549))

(assert (=> b!1844088 d!564461))

(assert (=> b!1844035 d!564369))

(declare-fun d!564463 () Bool)

(declare-fun res!828389 () Bool)

(declare-fun e!1178575 () Bool)

(assert (=> d!564463 (=> res!828389 e!1178575)))

(assert (=> d!564463 (= res!828389 (is-Nil!20322 (t!171887 l!2176)))))

(assert (=> d!564463 (= (forall!4374 (t!171887 l!2176) lambda!72408) e!1178575)))

(declare-fun b!1844283 () Bool)

(declare-fun e!1178576 () Bool)

(assert (=> b!1844283 (= e!1178575 e!1178576)))

(declare-fun res!828390 () Bool)

(assert (=> b!1844283 (=> (not res!828390) (not e!1178576))))

(assert (=> b!1844283 (= res!828390 (dynLambda!10096 lambda!72408 (h!25723 (t!171887 l!2176))))))

(declare-fun b!1844284 () Bool)

(assert (=> b!1844284 (= e!1178576 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72408))))

(assert (= (and d!564463 (not res!828389)) b!1844283))

(assert (= (and b!1844283 res!828390) b!1844284))

(declare-fun b_lambda!61181 () Bool)

(assert (=> (not b_lambda!61181) (not b!1844283)))

(declare-fun m!2272551 () Bool)

(assert (=> b!1844283 m!2272551))

(declare-fun m!2272553 () Bool)

(assert (=> b!1844284 m!2272553))

(assert (=> d!564375 d!564463))

(declare-fun d!564465 () Bool)

(declare-fun res!828391 () Bool)

(declare-fun e!1178577 () Bool)

(assert (=> d!564465 (=> res!828391 e!1178577)))

(assert (=> d!564465 (= res!828391 (is-Nil!20322 (t!171887 l!2176)))))

(assert (=> d!564465 (= (forall!4374 (t!171887 l!2176) lambda!72407) e!1178577)))

(declare-fun b!1844285 () Bool)

(declare-fun e!1178578 () Bool)

(assert (=> b!1844285 (= e!1178577 e!1178578)))

(declare-fun res!828392 () Bool)

(assert (=> b!1844285 (=> (not res!828392) (not e!1178578))))

(assert (=> b!1844285 (= res!828392 (dynLambda!10096 lambda!72407 (h!25723 (t!171887 l!2176))))))

(declare-fun b!1844286 () Bool)

(assert (=> b!1844286 (= e!1178578 (forall!4374 (t!171887 (t!171887 l!2176)) lambda!72407))))

(assert (= (and d!564465 (not res!828391)) b!1844285))

(assert (= (and b!1844285 res!828392) b!1844286))

(declare-fun b_lambda!61183 () Bool)

(assert (=> (not b_lambda!61183) (not b!1844285)))

(declare-fun m!2272555 () Bool)

(assert (=> b!1844285 m!2272555))

(declare-fun m!2272557 () Bool)

(assert (=> b!1844286 m!2272557))

(assert (=> d!564375 d!564465))

(declare-fun b!1844299 () Bool)

(declare-fun e!1178584 () Bool)

(declare-fun e!1178583 () Bool)

(assert (=> b!1844299 (= e!1178584 e!1178583)))

(declare-fun res!828407 () Bool)

(assert (=> b!1844299 (=> (not res!828407) (not e!1178583))))

(assert (=> b!1844299 (= res!828407 (<= (- 1) (- (height!1026 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) (height!1026 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))))

(declare-fun d!564467 () Bool)

(declare-fun res!828410 () Bool)

(assert (=> d!564467 (=> res!828410 e!1178584)))

(assert (=> d!564467 (= res!828410 (not (is-Node!6729 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(assert (=> d!564467 (= (isBalanced!2094 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))) e!1178584)))

(declare-fun b!1844300 () Bool)

(declare-fun res!828408 () Bool)

(assert (=> b!1844300 (=> (not res!828408) (not e!1178583))))

(assert (=> b!1844300 (= res!828408 (isBalanced!2094 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun b!1844301 () Bool)

(declare-fun res!828406 () Bool)

(assert (=> b!1844301 (=> (not res!828406) (not e!1178583))))

(assert (=> b!1844301 (= res!828406 (isBalanced!2094 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))

(declare-fun b!1844302 () Bool)

(declare-fun isEmpty!12769 (Conc!6729) Bool)

(assert (=> b!1844302 (= e!1178583 (not (isEmpty!12769 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))))

(declare-fun b!1844303 () Bool)

(declare-fun res!828409 () Bool)

(assert (=> b!1844303 (=> (not res!828409) (not e!1178583))))

(assert (=> b!1844303 (= res!828409 (<= (- (height!1026 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) (height!1026 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) 1))))

(declare-fun b!1844304 () Bool)

(declare-fun res!828405 () Bool)

(assert (=> b!1844304 (=> (not res!828405) (not e!1178583))))

(assert (=> b!1844304 (= res!828405 (not (isEmpty!12769 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))))

(assert (= (and d!564467 (not res!828410)) b!1844299))

(assert (= (and b!1844299 res!828407) b!1844303))

(assert (= (and b!1844303 res!828409) b!1844301))

(assert (= (and b!1844301 res!828406) b!1844300))

(assert (= (and b!1844300 res!828408) b!1844304))

(assert (= (and b!1844304 res!828405) b!1844302))

(assert (=> b!1844303 m!2272545))

(assert (=> b!1844303 m!2272547))

(declare-fun m!2272559 () Bool)

(assert (=> b!1844302 m!2272559))

(declare-fun m!2272561 () Bool)

(assert (=> b!1844300 m!2272561))

(assert (=> b!1844299 m!2272545))

(assert (=> b!1844299 m!2272547))

(declare-fun m!2272563 () Bool)

(assert (=> b!1844304 m!2272563))

(declare-fun m!2272565 () Bool)

(assert (=> b!1844301 m!2272565))

(assert (=> d!564381 d!564467))

(declare-fun d!564469 () Bool)

(declare-fun c!301086 () Bool)

(assert (=> d!564469 (= c!301086 (is-Node!6729 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))))))

(declare-fun e!1178585 () Bool)

(assert (=> d!564469 (= (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))) e!1178585)))

(declare-fun b!1844305 () Bool)

(assert (=> b!1844305 (= e!1178585 (inv!26592 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))))))

(declare-fun b!1844306 () Bool)

(declare-fun e!1178586 () Bool)

(assert (=> b!1844306 (= e!1178585 e!1178586)))

(declare-fun res!828411 () Bool)

(assert (=> b!1844306 (= res!828411 (not (is-Leaf!9826 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))))))

(assert (=> b!1844306 (=> res!828411 e!1178586)))

(declare-fun b!1844307 () Bool)

(assert (=> b!1844307 (= e!1178586 (inv!26593 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))))))

(assert (= (and d!564469 c!301086) b!1844305))

(assert (= (and d!564469 (not c!301086)) b!1844306))

(assert (= (and b!1844306 (not res!828411)) b!1844307))

(declare-fun m!2272567 () Bool)

(assert (=> b!1844305 m!2272567))

(declare-fun m!2272569 () Bool)

(assert (=> b!1844307 m!2272569))

(assert (=> b!1844130 d!564469))

(declare-fun d!564471 () Bool)

(declare-fun res!828412 () Bool)

(declare-fun e!1178587 () Bool)

(assert (=> d!564471 (=> (not res!828412) (not e!1178587))))

(assert (=> d!564471 (= res!828412 (not (isEmpty!12767 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176)))))))))

(assert (=> d!564471 (= (inv!26586 (_2!11246 (h!25723 (t!171887 l!2176)))) e!1178587)))

(declare-fun b!1844308 () Bool)

(declare-fun res!828413 () Bool)

(assert (=> b!1844308 (=> (not res!828413) (not e!1178587))))

(assert (=> b!1844308 (= res!828413 (rulesInvariant!2952 Lexer!3281 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176))))))))

(declare-fun b!1844309 () Bool)

(declare-fun res!828414 () Bool)

(assert (=> b!1844309 (=> (not res!828414) (not e!1178587))))

(assert (=> b!1844309 (= res!828414 (rulesProduceEachTokenIndividually!920 Lexer!3281 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176)))) (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))))

(declare-fun b!1844310 () Bool)

(assert (=> b!1844310 (= e!1178587 (separableTokens!291 Lexer!3281 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))) (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176))))))))

(assert (= (and d!564471 res!828412) b!1844308))

(assert (= (and b!1844308 res!828413) b!1844309))

(assert (= (and b!1844309 res!828414) b!1844310))

(declare-fun m!2272571 () Bool)

(assert (=> d!564471 m!2272571))

(declare-fun m!2272573 () Bool)

(assert (=> b!1844308 m!2272573))

(declare-fun m!2272575 () Bool)

(assert (=> b!1844309 m!2272575))

(declare-fun m!2272577 () Bool)

(assert (=> b!1844310 m!2272577))

(assert (=> b!1844128 d!564471))

(declare-fun d!564473 () Bool)

(assert (=> d!564473 (= (inv!26588 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))) (isBalanced!2094 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))))))

(declare-fun bs!408834 () Bool)

(assert (= bs!408834 d!564473))

(declare-fun m!2272579 () Bool)

(assert (=> bs!408834 m!2272579))

(assert (=> b!1844129 d!564473))

(declare-fun b!1844331 () Bool)

(declare-fun b_free!51539 () Bool)

(declare-fun b_next!52243 () Bool)

(assert (=> b!1844331 (= b_free!51539 (not b_next!52243))))

(declare-fun tp!521489 () Bool)

(declare-fun b_and!143689 () Bool)

(assert (=> b!1844331 (= tp!521489 b_and!143689)))

(declare-fun b_free!51541 () Bool)

(declare-fun b_next!52245 () Bool)

(assert (=> b!1844331 (= b_free!51541 (not b_next!52245))))

(declare-fun tp!521490 () Bool)

(declare-fun b_and!143691 () Bool)

(assert (=> b!1844331 (= tp!521490 b_and!143691)))

(declare-fun e!1178608 () Bool)

(declare-fun tp!521491 () Bool)

(declare-fun b!1844328 () Bool)

(declare-fun e!1178609 () Bool)

(declare-fun inv!26600 (Token!6870) Bool)

(assert (=> b!1844328 (= e!1178608 (and (inv!26600 (h!25721 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))) e!1178609 tp!521491))))

(declare-fun b!1844329 () Bool)

(declare-fun e!1178607 () Bool)

(declare-fun inv!21 (TokenValue!3750) Bool)

(assert (=> b!1844329 (= e!1178609 (and (inv!21 (value!114112 (h!25721 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))))) e!1178607))))

(declare-fun e!1178606 () Bool)

(assert (=> b!1844331 (= e!1178606 (and tp!521489 tp!521490))))

(declare-fun b!1844330 () Bool)

(assert (=> b!1844330 (= e!1178607 (and (inv!26583 (tag!4072 (rule!5852 (h!25721 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))) (inv!26597 (transformation!3658 (rule!5852 (h!25721 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))))) e!1178606))))

(assert (=> b!1844145 (= tp!521450 e!1178608)))

(assert (= b!1844330 b!1844331))

(assert (= b!1844329 b!1844330))

(assert (= b!1844328 b!1844329))

(assert (= (and b!1844145 (is-Cons!20320 (innerList!6789 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))))) b!1844328))

(declare-fun m!2272599 () Bool)

(assert (=> b!1844328 m!2272599))

(declare-fun m!2272601 () Bool)

(assert (=> b!1844329 m!2272601))

(declare-fun m!2272603 () Bool)

(assert (=> b!1844330 m!2272603))

(declare-fun m!2272605 () Bool)

(assert (=> b!1844330 m!2272605))

(declare-fun b!1844334 () Bool)

(declare-fun b_free!51543 () Bool)

(declare-fun b_next!52247 () Bool)

(assert (=> b!1844334 (= b_free!51543 (not b_next!52247))))

(declare-fun tp!521493 () Bool)

(declare-fun b_and!143693 () Bool)

(assert (=> b!1844334 (= tp!521493 b_and!143693)))

(declare-fun b_free!51545 () Bool)

(declare-fun b_next!52249 () Bool)

(assert (=> b!1844334 (= b_free!51545 (not b_next!52249))))

(declare-fun tp!521492 () Bool)

(declare-fun b_and!143695 () Bool)

(assert (=> b!1844334 (= tp!521492 b_and!143695)))

(declare-fun e!1178612 () Bool)

(assert (=> b!1844334 (= e!1178612 (and tp!521493 tp!521492))))

(declare-fun b!1844333 () Bool)

(declare-fun e!1178613 () Bool)

(assert (=> b!1844333 (= e!1178613 (and (inv!26583 (tag!4072 (h!25722 (t!171886 (rules!15017 (_2!11246 (h!25723 l!2176))))))) (inv!26597 (transformation!3658 (h!25722 (t!171886 (rules!15017 (_2!11246 (h!25723 l!2176))))))) e!1178612))))

(declare-fun b!1844332 () Bool)

(declare-fun e!1178611 () Bool)

(declare-fun tp!521494 () Bool)

(assert (=> b!1844332 (= e!1178611 (and e!1178613 tp!521494))))

(assert (=> b!1844165 (= tp!521468 e!1178611)))

(assert (= b!1844333 b!1844334))

(assert (= b!1844332 b!1844333))

(assert (= (and b!1844165 (is-Cons!20321 (t!171886 (rules!15017 (_2!11246 (h!25723 l!2176)))))) b!1844332))

(declare-fun m!2272607 () Bool)

(assert (=> b!1844333 m!2272607))

(declare-fun m!2272609 () Bool)

(assert (=> b!1844333 m!2272609))

(declare-fun tp!521497 () Bool)

(declare-fun b!1844335 () Bool)

(declare-fun e!1178616 () Bool)

(declare-fun tp!521496 () Bool)

(assert (=> b!1844335 (= e!1178616 (and (inv!26587 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))) tp!521496 (inv!26587 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))) tp!521497))))

(declare-fun b!1844337 () Bool)

(declare-fun e!1178615 () Bool)

(declare-fun tp!521495 () Bool)

(assert (=> b!1844337 (= e!1178615 tp!521495)))

(declare-fun b!1844336 () Bool)

(assert (=> b!1844336 (= e!1178616 (and (inv!26594 (xs!9605 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))) e!1178615))))

(assert (=> b!1844130 (= tp!521436 (and (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176)))))) e!1178616))))

(assert (= (and b!1844130 (is-Node!6729 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))) b!1844335))

(assert (= b!1844336 b!1844337))

(assert (= (and b!1844130 (is-Leaf!9826 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 l!2176))))))) b!1844336))

(declare-fun m!2272611 () Bool)

(assert (=> b!1844335 m!2272611))

(declare-fun m!2272613 () Bool)

(assert (=> b!1844335 m!2272613))

(declare-fun m!2272615 () Bool)

(assert (=> b!1844336 m!2272615))

(assert (=> b!1844130 m!2272387))

(declare-fun tp!521499 () Bool)

(declare-fun tp!521500 () Bool)

(declare-fun b!1844338 () Bool)

(declare-fun e!1178618 () Bool)

(assert (=> b!1844338 (= e!1178618 (and (inv!26587 (left!16255 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) tp!521499 (inv!26587 (right!16585 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) tp!521500))))

(declare-fun b!1844340 () Bool)

(declare-fun e!1178617 () Bool)

(declare-fun tp!521498 () Bool)

(assert (=> b!1844340 (= e!1178617 tp!521498)))

(declare-fun b!1844339 () Bool)

(assert (=> b!1844339 (= e!1178618 (and (inv!26594 (xs!9605 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) e!1178617))))

(assert (=> b!1844143 (= tp!521451 (and (inv!26587 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) e!1178618))))

(assert (= (and b!1844143 (is-Node!6729 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) b!1844338))

(assert (= b!1844339 b!1844340))

(assert (= (and b!1844143 (is-Leaf!9826 (left!16255 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) b!1844339))

(declare-fun m!2272617 () Bool)

(assert (=> b!1844338 m!2272617))

(declare-fun m!2272619 () Bool)

(assert (=> b!1844338 m!2272619))

(declare-fun m!2272621 () Bool)

(assert (=> b!1844339 m!2272621))

(assert (=> b!1844143 m!2272393))

(declare-fun tp!521503 () Bool)

(declare-fun tp!521502 () Bool)

(declare-fun e!1178622 () Bool)

(declare-fun b!1844343 () Bool)

(assert (=> b!1844343 (= e!1178622 (and (inv!26587 (left!16255 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) tp!521502 (inv!26587 (right!16585 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) tp!521503))))

(declare-fun b!1844345 () Bool)

(declare-fun e!1178621 () Bool)

(declare-fun tp!521501 () Bool)

(assert (=> b!1844345 (= e!1178621 tp!521501)))

(declare-fun b!1844344 () Bool)

(assert (=> b!1844344 (= e!1178622 (and (inv!26594 (xs!9605 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) e!1178621))))

(assert (=> b!1844143 (= tp!521452 (and (inv!26587 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176)))))) e!1178622))))

(assert (= (and b!1844143 (is-Node!6729 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) b!1844343))

(assert (= b!1844344 b!1844345))

(assert (= (and b!1844143 (is-Leaf!9826 (right!16585 (c!301063 (tokens!2441 (_2!11246 (h!25723 l!2176))))))) b!1844344))

(declare-fun m!2272623 () Bool)

(assert (=> b!1844343 m!2272623))

(declare-fun m!2272625 () Bool)

(assert (=> b!1844343 m!2272625))

(declare-fun m!2272627 () Bool)

(assert (=> b!1844344 m!2272627))

(assert (=> b!1844143 m!2272395))

(declare-fun b!1844358 () Bool)

(declare-fun e!1178625 () Bool)

(declare-fun tp!521505 () Bool)

(assert (=> b!1844358 (= e!1178625 (and (inv!26587 (c!301063 (tokens!2441 (_2!11246 (h!25723 (t!171887 (t!171887 l!2176))))))) tp!521505))))

(declare-fun e!1178626 () Bool)

(declare-fun b!1844357 () Bool)

(declare-fun tp!521504 () Bool)

(assert (=> b!1844357 (= e!1178626 (and tp!521504 (inv!26588 (tokens!2441 (_2!11246 (h!25723 (t!171887 (t!171887 l!2176)))))) e!1178625))))

(declare-fun e!1178627 () Bool)

(declare-fun tp!521506 () Bool)

(declare-fun b!1844356 () Bool)

(assert (=> b!1844356 (= e!1178627 (and (inv!26586 (_2!11246 (h!25723 (t!171887 (t!171887 l!2176))))) e!1178626 tp!521506))))

(assert (=> b!1844128 (= tp!521437 e!1178627)))

(assert (= b!1844357 b!1844358))

(assert (= b!1844356 b!1844357))

(assert (= (and b!1844128 (is-Cons!20322 (t!171887 (t!171887 l!2176)))) b!1844356))

(declare-fun m!2272629 () Bool)

(assert (=> b!1844358 m!2272629))

(declare-fun m!2272631 () Bool)

(assert (=> b!1844357 m!2272631))

(declare-fun m!2272633 () Bool)

(assert (=> b!1844356 m!2272633))

(declare-fun b!1844361 () Bool)

(declare-fun b_free!51547 () Bool)

(declare-fun b_next!52251 () Bool)

(assert (=> b!1844361 (= b_free!51547 (not b_next!52251))))

(declare-fun tp!521508 () Bool)

(declare-fun b_and!143697 () Bool)

(assert (=> b!1844361 (= tp!521508 b_and!143697)))

(declare-fun b_free!51549 () Bool)

(declare-fun b_next!52253 () Bool)

(assert (=> b!1844361 (= b_free!51549 (not b_next!52253))))

(declare-fun tp!521507 () Bool)

(declare-fun b_and!143699 () Bool)

(assert (=> b!1844361 (= tp!521507 b_and!143699)))

(declare-fun e!1178629 () Bool)

(assert (=> b!1844361 (= e!1178629 (and tp!521508 tp!521507))))

(declare-fun b!1844360 () Bool)

(declare-fun e!1178630 () Bool)

(assert (=> b!1844360 (= e!1178630 (and (inv!26583 (tag!4072 (h!25722 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176))))))) (inv!26597 (transformation!3658 (h!25722 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176))))))) e!1178629))))

(declare-fun b!1844359 () Bool)

(declare-fun e!1178628 () Bool)

(declare-fun tp!521509 () Bool)

(assert (=> b!1844359 (= e!1178628 (and e!1178630 tp!521509))))

(assert (=> b!1844129 (= tp!521435 e!1178628)))

(assert (= b!1844360 b!1844361))

(assert (= b!1844359 b!1844360))

(assert (= (and b!1844129 (is-Cons!20321 (rules!15017 (_2!11246 (h!25723 (t!171887 l!2176)))))) b!1844359))

(declare-fun m!2272635 () Bool)

(assert (=> b!1844360 m!2272635))

(declare-fun m!2272637 () Bool)

(assert (=> b!1844360 m!2272637))

(declare-fun b_lambda!61189 () Bool)

(assert (= b_lambda!61183 (or d!564375 b_lambda!61189)))

(declare-fun bs!408836 () Bool)

(declare-fun d!564485 () Bool)

(assert (= bs!408836 (and d!564485 d!564375)))

(assert (=> bs!408836 (= (dynLambda!10096 lambda!72407 (h!25723 (t!171887 l!2176))) (usesJsonRules!0 (_2!11246 (h!25723 (t!171887 l!2176)))))))

(declare-fun m!2272639 () Bool)

(assert (=> bs!408836 m!2272639))

(assert (=> b!1844285 d!564485))

(declare-fun b_lambda!61191 () Bool)

(assert (= b_lambda!61173 (or start!183724 b_lambda!61191)))

(declare-fun bs!408837 () Bool)

(declare-fun d!564487 () Bool)

(assert (= bs!408837 (and d!564487 start!183724)))

(assert (=> bs!408837 (= (dynLambda!10096 lambda!72389 (h!25723 (t!171887 l!2176))) (usesJsonRules!0 (_2!11246 (h!25723 (t!171887 l!2176)))))))

(assert (=> bs!408837 m!2272639))

(assert (=> b!1844192 d!564487))

(declare-fun b_lambda!61193 () Bool)

(assert (= b_lambda!61181 (or d!564375 b_lambda!61193)))

(declare-fun bs!408838 () Bool)

(declare-fun d!564489 () Bool)

(assert (= bs!408838 (and d!564489 d!564375)))

(assert (=> bs!408838 (= (dynLambda!10096 lambda!72408 (h!25723 (t!171887 l!2176))) (usesJsonRules!0 (removeId!0 (h!25723 (t!171887 l!2176)))))))

(declare-fun m!2272641 () Bool)

(assert (=> bs!408838 m!2272641))

(assert (=> bs!408838 m!2272641))

(declare-fun m!2272643 () Bool)

(assert (=> bs!408838 m!2272643))

(assert (=> b!1844283 d!564489))

(declare-fun b_lambda!61195 () Bool)

(assert (= b_lambda!61175 (or b!1844034 b_lambda!61195)))

(declare-fun bs!408839 () Bool)

(declare-fun d!564491 () Bool)

(assert (= bs!408839 (and d!564491 b!1844034)))

(assert (=> bs!408839 (= (dynLambda!10096 lambda!72390 (h!25723 (t!171887 l!2176))) (usesJsonRules!0 (removeId!0 (h!25723 (t!171887 l!2176)))))))

(assert (=> bs!408839 m!2272641))

(assert (=> bs!408839 m!2272641))

(assert (=> bs!408839 m!2272643))

(assert (=> b!1844197 d!564491))

(push 1)

(assert (not b!1844358))

(assert (not b!1844286))

(assert (not b!1844198))

(assert (not b!1844332))

(assert (not d!564393))

(assert (not d!564413))

(assert (not b_lambda!61189))

(assert b_and!143695)

(assert (not b!1844130))

(assert (not b!1844307))

(assert (not b!1844305))

(assert (not b!1844210))

(assert (not b_next!52247))

(assert (not b!1844196))

(assert (not b!1844299))

(assert (not b!1844302))

(assert (not bs!408838))

(assert (not b!1844359))

(assert (not b!1844338))

(assert (not b_next!52253))

(assert (not b!1844193))

(assert (not b!1844310))

(assert (not d!564417))

(assert (not b!1844273))

(assert (not b!1844300))

(assert (not b_next!52245))

(assert (not b!1844303))

(assert (not b!1844336))

(assert (not b!1844337))

(assert b_and!143683)

(assert (not b!1844343))

(assert (not b_lambda!61193))

(assert (not d!564395))

(assert (not d!564461))

(assert (not d!564427))

(assert b_and!143699)

(assert (not b_lambda!61167))

(assert (not b!1844143))

(assert (not b!1844330))

(assert (not b!1844309))

(assert (not d!564471))

(assert (not d!564421))

(assert (not b!1844284))

(assert (not b!1844188))

(assert (not d!564473))

(assert (not d!564403))

(assert (not b!1844360))

(assert (not b!1844340))

(assert (not b!1844186))

(assert (not b!1844304))

(assert (not b!1844335))

(assert b_and!143691)

(assert (not b!1844333))

(assert (not b!1844356))

(assert (not b_lambda!61195))

(assert (not d!564457))

(assert (not b!1844328))

(assert (not b_next!52251))

(assert (not b!1844301))

(assert (not b!1844191))

(assert (not b!1844329))

(assert b_and!143681)

(assert b_and!143697)

(assert b_and!143689)

(assert (not b!1844269))

(assert (not b_next!52235))

(assert (not b_lambda!61191))

(assert (not b_lambda!61165))

(assert (not b!1844308))

(assert (not b!1844345))

(assert (not b_next!52237))

(assert (not b_next!52243))

(assert (not b!1844357))

(assert b_and!143693)

(assert (not b!1844201))

(assert (not b!1844281))

(assert (not b!1844339))

(assert (not bs!408837))

(assert (not d!564459))

(assert (not bs!408836))

(assert (not b!1844185))

(assert (not b_next!52249))

(assert (not b!1844189))

(assert (not b!1844344))

(assert (not bs!408839))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!52247))

(assert (not b_next!52253))

(assert (not b_next!52245))

(assert b_and!143683)

(assert b_and!143699)

(assert b_and!143691)

(assert (not b_next!52251))

(assert b_and!143693)

(assert (not b_next!52249))

(assert b_and!143695)

(assert b_and!143681)

(assert (not b_next!52235))

(assert b_and!143697)

(assert b_and!143689)

(assert (not b_next!52237))

(assert (not b_next!52243))

(check-sat)

(pop 1)

