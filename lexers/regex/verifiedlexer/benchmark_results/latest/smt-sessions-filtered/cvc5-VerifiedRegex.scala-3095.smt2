; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183708 () Bool)

(assert start!183708)

(declare-fun b!1843895 () Bool)

(declare-fun e!1178297 () Bool)

(declare-datatypes ((List!20381 0))(
  ( (Nil!20311) (Cons!20311 (h!25712 (_ BitVec 16)) (t!171876 List!20381)) )
))
(declare-datatypes ((TokenValue!3748 0))(
  ( (FloatLiteralValue!7496 (text!26681 List!20381)) (TokenValueExt!3747 (__x!12793 Int)) (Broken!18740 (value!114029 List!20381)) (Object!3817) (End!3748) (Def!3748) (Underscore!3748) (Match!3748) (Else!3748) (Error!3748) (Case!3748) (If!3748) (Extends!3748) (Abstract!3748) (Class!3748) (Val!3748) (DelimiterValue!7496 (del!3808 List!20381)) (KeywordValue!3754 (value!114030 List!20381)) (CommentValue!7496 (value!114031 List!20381)) (WhitespaceValue!7496 (value!114032 List!20381)) (IndentationValue!3748 (value!114033 List!20381)) (String!23253) (Int32!3748) (Broken!18741 (value!114034 List!20381)) (Boolean!3749) (Unit!35007) (OperatorValue!3751 (op!3808 List!20381)) (IdentifierValue!7496 (value!114035 List!20381)) (IdentifierValue!7497 (value!114036 List!20381)) (WhitespaceValue!7497 (value!114037 List!20381)) (True!7496) (False!7496) (Broken!18742 (value!114038 List!20381)) (Broken!18743 (value!114039 List!20381)) (True!7497) (RightBrace!3748) (RightBracket!3748) (Colon!3748) (Null!3748) (Comma!3748) (LeftBracket!3748) (False!7497) (LeftBrace!3748) (ImaginaryLiteralValue!3748 (text!26682 List!20381)) (StringLiteralValue!11244 (value!114040 List!20381)) (EOFValue!3748 (value!114041 List!20381)) (IdentValue!3748 (value!114042 List!20381)) (DelimiterValue!7497 (value!114043 List!20381)) (DedentValue!3748 (value!114044 List!20381)) (NewLineValue!3748 (value!114045 List!20381)) (IntegerValue!11244 (value!114046 (_ BitVec 32)) (text!26683 List!20381)) (IntegerValue!11245 (value!114047 Int) (text!26684 List!20381)) (Times!3748) (Or!3748) (Equal!3748) (Minus!3748) (Broken!18744 (value!114048 List!20381)) (And!3748) (Div!3748) (LessEqual!3748) (Mod!3748) (Concat!8732) (Not!3748) (Plus!3748) (SpaceValue!3748 (value!114049 List!20381)) (IntegerValue!11246 (value!114050 Int) (text!26685 List!20381)) (StringLiteralValue!11245 (text!26686 List!20381)) (FloatLiteralValue!7497 (text!26687 List!20381)) (BytesLiteralValue!3748 (value!114051 List!20381)) (CommentValue!7497 (value!114052 List!20381)) (StringLiteralValue!11246 (value!114053 List!20381)) (ErrorTokenValue!3748 (msg!3809 List!20381)) )
))
(declare-datatypes ((Regex!4984 0))(
  ( (ElementMatch!4984 (c!301048 (_ BitVec 16))) (Concat!8733 (regOne!10480 Regex!4984) (regTwo!10480 Regex!4984)) (EmptyExpr!4984) (Star!4984 (reg!5313 Regex!4984)) (EmptyLang!4984) (Union!4984 (regOne!10481 Regex!4984) (regTwo!10481 Regex!4984)) )
))
(declare-datatypes ((String!23254 0))(
  ( (String!23255 (value!114054 String)) )
))
(declare-datatypes ((IArray!13453 0))(
  ( (IArray!13454 (innerList!6784 List!20381)) )
))
(declare-datatypes ((Conc!6724 0))(
  ( (Node!6724 (left!16249 Conc!6724) (right!16579 Conc!6724) (csize!13678 Int) (cheight!6935 Int)) (Leaf!9820 (xs!9600 IArray!13453) (csize!13679 Int)) (Empty!6724) )
))
(declare-datatypes ((BalanceConc!13368 0))(
  ( (BalanceConc!13369 (c!301049 Conc!6724)) )
))
(declare-datatypes ((TokenValueInjection!7152 0))(
  ( (TokenValueInjection!7153 (toValue!5211 Int) (toChars!5070 Int)) )
))
(declare-datatypes ((Rule!7112 0))(
  ( (Rule!7113 (regex!3656 Regex!4984) (tag!4070 String!23254) (isSeparator!3656 Bool) (transformation!3656 TokenValueInjection!7152)) )
))
(declare-datatypes ((Token!6866 0))(
  ( (Token!6867 (value!114055 TokenValue!3748) (rule!5850 Rule!7112) (size!16095 Int) (originalCharacters!4464 List!20381)) )
))
(declare-datatypes ((List!20382 0))(
  ( (Nil!20312) (Cons!20312 (h!25713 Token!6866) (t!171877 List!20382)) )
))
(declare-datatypes ((IArray!13455 0))(
  ( (IArray!13456 (innerList!6785 List!20382)) )
))
(declare-datatypes ((Conc!6725 0))(
  ( (Node!6725 (left!16250 Conc!6725) (right!16580 Conc!6725) (csize!13680 Int) (cheight!6936 Int)) (Leaf!9821 (xs!9601 IArray!13455) (csize!13681 Int)) (Empty!6725) )
))
(declare-datatypes ((List!20383 0))(
  ( (Nil!20313) (Cons!20313 (h!25714 Rule!7112) (t!171878 List!20383)) )
))
(declare-datatypes ((BalanceConc!13370 0))(
  ( (BalanceConc!13371 (c!301050 Conc!6725)) )
))
(declare-datatypes ((PrintableTokens!1230 0))(
  ( (PrintableTokens!1231 (rules!15015 List!20383) (tokens!2439 BalanceConc!13370)) )
))
(declare-datatypes ((tuple2!19684 0))(
  ( (tuple2!19685 (_1!11244 Int) (_2!11244 PrintableTokens!1230)) )
))
(declare-datatypes ((List!20384 0))(
  ( (Nil!20314) (Cons!20314 (h!25715 tuple2!19684) (t!171879 List!20384)) )
))
(declare-fun l!2176 () List!20384)

(declare-fun tp!521347 () Bool)

(declare-fun inv!26573 (Conc!6725) Bool)

(assert (=> b!1843895 (= e!1178297 (and (inv!26573 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))) tp!521347))))

(declare-fun res!828242 () Bool)

(declare-fun e!1178299 () Bool)

(assert (=> start!183708 (=> (not res!828242) (not e!1178299))))

(declare-fun lambda!72381 () Int)

(declare-fun forall!4372 (List!20384 Int) Bool)

(assert (=> start!183708 (= res!828242 (forall!4372 l!2176 lambda!72381))))

(assert (=> start!183708 e!1178299))

(declare-fun e!1178300 () Bool)

(assert (=> start!183708 e!1178300))

(declare-fun b!1843896 () Bool)

(declare-fun tp!521345 () Bool)

(declare-fun e!1178298 () Bool)

(declare-fun inv!26574 (PrintableTokens!1230) Bool)

(assert (=> b!1843896 (= e!1178300 (and (inv!26574 (_2!11244 (h!25715 l!2176))) e!1178298 tp!521345))))

(declare-fun b!1843897 () Bool)

(declare-fun res!828241 () Bool)

(assert (=> b!1843897 (=> (not res!828241) (not e!1178299))))

(assert (=> b!1843897 (= res!828241 (not (is-Nil!20314 l!2176)))))

(declare-fun tp!521346 () Bool)

(declare-fun b!1843898 () Bool)

(declare-fun inv!26575 (BalanceConc!13370) Bool)

(assert (=> b!1843898 (= e!1178298 (and tp!521346 (inv!26575 (tokens!2439 (_2!11244 (h!25715 l!2176)))) e!1178297))))

(declare-fun b!1843899 () Bool)

(declare-fun ListPrimitiveSize!125 (List!20384) Int)

(assert (=> b!1843899 (= e!1178299 (>= (ListPrimitiveSize!125 (t!171879 l!2176)) (ListPrimitiveSize!125 l!2176)))))

(assert (= (and start!183708 res!828242) b!1843897))

(assert (= (and b!1843897 res!828241) b!1843899))

(assert (= b!1843898 b!1843895))

(assert (= b!1843896 b!1843898))

(assert (= (and start!183708 (is-Cons!20314 l!2176)) b!1843896))

(declare-fun m!2272245 () Bool)

(assert (=> b!1843899 m!2272245))

(declare-fun m!2272247 () Bool)

(assert (=> b!1843899 m!2272247))

(declare-fun m!2272249 () Bool)

(assert (=> b!1843898 m!2272249))

(declare-fun m!2272251 () Bool)

(assert (=> b!1843896 m!2272251))

(declare-fun m!2272253 () Bool)

(assert (=> b!1843895 m!2272253))

(declare-fun m!2272255 () Bool)

(assert (=> start!183708 m!2272255))

(push 1)

(assert (not start!183708))

(assert (not b!1843895))

(assert (not b!1843899))

(assert (not b!1843898))

(assert (not b!1843896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564344 () Bool)

(declare-fun isBalanced!2093 (Conc!6725) Bool)

(assert (=> d!564344 (= (inv!26575 (tokens!2439 (_2!11244 (h!25715 l!2176)))) (isBalanced!2093 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))))))

(declare-fun bs!408804 () Bool)

(assert (= bs!408804 d!564344))

(declare-fun m!2272269 () Bool)

(assert (=> bs!408804 m!2272269))

(assert (=> b!1843898 d!564344))

(declare-fun d!564346 () Bool)

(declare-fun res!828253 () Bool)

(declare-fun e!1178317 () Bool)

(assert (=> d!564346 (=> res!828253 e!1178317)))

(assert (=> d!564346 (= res!828253 (is-Nil!20314 l!2176))))

(assert (=> d!564346 (= (forall!4372 l!2176 lambda!72381) e!1178317)))

(declare-fun b!1843919 () Bool)

(declare-fun e!1178318 () Bool)

(assert (=> b!1843919 (= e!1178317 e!1178318)))

(declare-fun res!828254 () Bool)

(assert (=> b!1843919 (=> (not res!828254) (not e!1178318))))

(declare-fun dynLambda!10095 (Int tuple2!19684) Bool)

(assert (=> b!1843919 (= res!828254 (dynLambda!10095 lambda!72381 (h!25715 l!2176)))))

(declare-fun b!1843920 () Bool)

(assert (=> b!1843920 (= e!1178318 (forall!4372 (t!171879 l!2176) lambda!72381))))

(assert (= (and d!564346 (not res!828253)) b!1843919))

(assert (= (and b!1843919 res!828254) b!1843920))

(declare-fun b_lambda!61153 () Bool)

(assert (=> (not b_lambda!61153) (not b!1843919)))

(declare-fun m!2272271 () Bool)

(assert (=> b!1843919 m!2272271))

(declare-fun m!2272273 () Bool)

(assert (=> b!1843920 m!2272273))

(assert (=> start!183708 d!564346))

(declare-fun d!564348 () Bool)

(declare-fun res!828261 () Bool)

(declare-fun e!1178321 () Bool)

(assert (=> d!564348 (=> (not res!828261) (not e!1178321))))

(declare-fun isEmpty!12766 (List!20383) Bool)

(assert (=> d!564348 (= res!828261 (not (isEmpty!12766 (rules!15015 (_2!11244 (h!25715 l!2176))))))))

(assert (=> d!564348 (= (inv!26574 (_2!11244 (h!25715 l!2176))) e!1178321)))

(declare-fun b!1843927 () Bool)

(declare-fun res!828262 () Bool)

(assert (=> b!1843927 (=> (not res!828262) (not e!1178321))))

(declare-datatypes ((LexerInterface!3282 0))(
  ( (LexerInterfaceExt!3279 (__x!12795 Int)) (Lexer!3280) )
))
(declare-fun rulesInvariant!2951 (LexerInterface!3282 List!20383) Bool)

(assert (=> b!1843927 (= res!828262 (rulesInvariant!2951 Lexer!3280 (rules!15015 (_2!11244 (h!25715 l!2176)))))))

(declare-fun b!1843928 () Bool)

(declare-fun res!828263 () Bool)

(assert (=> b!1843928 (=> (not res!828263) (not e!1178321))))

(declare-fun rulesProduceEachTokenIndividually!919 (LexerInterface!3282 List!20383 BalanceConc!13370) Bool)

(assert (=> b!1843928 (= res!828263 (rulesProduceEachTokenIndividually!919 Lexer!3280 (rules!15015 (_2!11244 (h!25715 l!2176))) (tokens!2439 (_2!11244 (h!25715 l!2176)))))))

(declare-fun b!1843929 () Bool)

(declare-fun separableTokens!290 (LexerInterface!3282 BalanceConc!13370 List!20383) Bool)

(assert (=> b!1843929 (= e!1178321 (separableTokens!290 Lexer!3280 (tokens!2439 (_2!11244 (h!25715 l!2176))) (rules!15015 (_2!11244 (h!25715 l!2176)))))))

(assert (= (and d!564348 res!828261) b!1843927))

(assert (= (and b!1843927 res!828262) b!1843928))

(assert (= (and b!1843928 res!828263) b!1843929))

(declare-fun m!2272275 () Bool)

(assert (=> d!564348 m!2272275))

(declare-fun m!2272277 () Bool)

(assert (=> b!1843927 m!2272277))

(declare-fun m!2272279 () Bool)

(assert (=> b!1843928 m!2272279))

(declare-fun m!2272281 () Bool)

(assert (=> b!1843929 m!2272281))

(assert (=> b!1843896 d!564348))

(declare-fun d!564352 () Bool)

(declare-fun c!301056 () Bool)

(assert (=> d!564352 (= c!301056 (is-Node!6725 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))))))

(declare-fun e!1178326 () Bool)

(assert (=> d!564352 (= (inv!26573 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))) e!1178326)))

(declare-fun b!1843936 () Bool)

(declare-fun inv!26579 (Conc!6725) Bool)

(assert (=> b!1843936 (= e!1178326 (inv!26579 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))))))

(declare-fun b!1843937 () Bool)

(declare-fun e!1178327 () Bool)

(assert (=> b!1843937 (= e!1178326 e!1178327)))

(declare-fun res!828266 () Bool)

(assert (=> b!1843937 (= res!828266 (not (is-Leaf!9821 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))))))

(assert (=> b!1843937 (=> res!828266 e!1178327)))

(declare-fun b!1843938 () Bool)

(declare-fun inv!26580 (Conc!6725) Bool)

(assert (=> b!1843938 (= e!1178327 (inv!26580 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))))))

(assert (= (and d!564352 c!301056) b!1843936))

(assert (= (and d!564352 (not c!301056)) b!1843937))

(assert (= (and b!1843937 (not res!828266)) b!1843938))

(declare-fun m!2272283 () Bool)

(assert (=> b!1843936 m!2272283))

(declare-fun m!2272285 () Bool)

(assert (=> b!1843938 m!2272285))

(assert (=> b!1843895 d!564352))

(declare-fun d!564354 () Bool)

(declare-fun lt!714589 () Int)

(assert (=> d!564354 (>= lt!714589 0)))

(declare-fun e!1178330 () Int)

(assert (=> d!564354 (= lt!714589 e!1178330)))

(declare-fun c!301059 () Bool)

(assert (=> d!564354 (= c!301059 (is-Nil!20314 (t!171879 l!2176)))))

(assert (=> d!564354 (= (ListPrimitiveSize!125 (t!171879 l!2176)) lt!714589)))

(declare-fun b!1843943 () Bool)

(assert (=> b!1843943 (= e!1178330 0)))

(declare-fun b!1843944 () Bool)

(assert (=> b!1843944 (= e!1178330 (+ 1 (ListPrimitiveSize!125 (t!171879 (t!171879 l!2176)))))))

(assert (= (and d!564354 c!301059) b!1843943))

(assert (= (and d!564354 (not c!301059)) b!1843944))

(declare-fun m!2272287 () Bool)

(assert (=> b!1843944 m!2272287))

(assert (=> b!1843899 d!564354))

(declare-fun d!564356 () Bool)

(declare-fun lt!714590 () Int)

(assert (=> d!564356 (>= lt!714590 0)))

(declare-fun e!1178331 () Int)

(assert (=> d!564356 (= lt!714590 e!1178331)))

(declare-fun c!301060 () Bool)

(assert (=> d!564356 (= c!301060 (is-Nil!20314 l!2176))))

(assert (=> d!564356 (= (ListPrimitiveSize!125 l!2176) lt!714590)))

(declare-fun b!1843945 () Bool)

(assert (=> b!1843945 (= e!1178331 0)))

(declare-fun b!1843946 () Bool)

(assert (=> b!1843946 (= e!1178331 (+ 1 (ListPrimitiveSize!125 (t!171879 l!2176))))))

(assert (= (and d!564356 c!301060) b!1843945))

(assert (= (and d!564356 (not c!301060)) b!1843946))

(assert (=> b!1843946 m!2272245))

(assert (=> b!1843899 d!564356))

(declare-fun b!1843957 () Bool)

(declare-fun b_free!51527 () Bool)

(declare-fun b_next!52231 () Bool)

(assert (=> b!1843957 (= b_free!51527 (not b_next!52231))))

(declare-fun tp!521365 () Bool)

(declare-fun b_and!143677 () Bool)

(assert (=> b!1843957 (= tp!521365 b_and!143677)))

(declare-fun b_free!51529 () Bool)

(declare-fun b_next!52233 () Bool)

(assert (=> b!1843957 (= b_free!51529 (not b_next!52233))))

(declare-fun tp!521364 () Bool)

(declare-fun b_and!143679 () Bool)

(assert (=> b!1843957 (= tp!521364 b_and!143679)))

(declare-fun e!1178341 () Bool)

(assert (=> b!1843957 (= e!1178341 (and tp!521365 tp!521364))))

(declare-fun b!1843956 () Bool)

(declare-fun e!1178343 () Bool)

(declare-fun inv!26570 (String!23254) Bool)

(declare-fun inv!26581 (TokenValueInjection!7152) Bool)

(assert (=> b!1843956 (= e!1178343 (and (inv!26570 (tag!4070 (h!25714 (rules!15015 (_2!11244 (h!25715 l!2176)))))) (inv!26581 (transformation!3656 (h!25714 (rules!15015 (_2!11244 (h!25715 l!2176)))))) e!1178341))))

(declare-fun b!1843955 () Bool)

(declare-fun e!1178340 () Bool)

(declare-fun tp!521363 () Bool)

(assert (=> b!1843955 (= e!1178340 (and e!1178343 tp!521363))))

(assert (=> b!1843898 (= tp!521346 e!1178340)))

(assert (= b!1843956 b!1843957))

(assert (= b!1843955 b!1843956))

(assert (= (and b!1843898 (is-Cons!20313 (rules!15015 (_2!11244 (h!25715 l!2176))))) b!1843955))

(declare-fun m!2272289 () Bool)

(assert (=> b!1843956 m!2272289))

(declare-fun m!2272291 () Bool)

(assert (=> b!1843956 m!2272291))

(declare-fun b!1843968 () Bool)

(declare-fun e!1178350 () Bool)

(declare-fun tp!521372 () Bool)

(assert (=> b!1843968 (= e!1178350 (and (inv!26573 (c!301050 (tokens!2439 (_2!11244 (h!25715 (t!171879 l!2176)))))) tp!521372))))

(declare-fun e!1178352 () Bool)

(declare-fun b!1843967 () Bool)

(declare-fun tp!521374 () Bool)

(assert (=> b!1843967 (= e!1178352 (and tp!521374 (inv!26575 (tokens!2439 (_2!11244 (h!25715 (t!171879 l!2176))))) e!1178350))))

(declare-fun b!1843966 () Bool)

(declare-fun e!1178351 () Bool)

(declare-fun tp!521373 () Bool)

(assert (=> b!1843966 (= e!1178351 (and (inv!26574 (_2!11244 (h!25715 (t!171879 l!2176)))) e!1178352 tp!521373))))

(assert (=> b!1843896 (= tp!521345 e!1178351)))

(assert (= b!1843967 b!1843968))

(assert (= b!1843966 b!1843967))

(assert (= (and b!1843896 (is-Cons!20314 (t!171879 l!2176))) b!1843966))

(declare-fun m!2272293 () Bool)

(assert (=> b!1843968 m!2272293))

(declare-fun m!2272295 () Bool)

(assert (=> b!1843967 m!2272295))

(declare-fun m!2272297 () Bool)

(assert (=> b!1843966 m!2272297))

(declare-fun e!1178357 () Bool)

(declare-fun tp!521383 () Bool)

(declare-fun tp!521382 () Bool)

(declare-fun b!1843977 () Bool)

(assert (=> b!1843977 (= e!1178357 (and (inv!26573 (left!16250 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))) tp!521382 (inv!26573 (right!16580 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))) tp!521383))))

(declare-fun b!1843979 () Bool)

(declare-fun e!1178358 () Bool)

(declare-fun tp!521381 () Bool)

(assert (=> b!1843979 (= e!1178358 tp!521381)))

(declare-fun b!1843978 () Bool)

(declare-fun inv!26582 (IArray!13455) Bool)

(assert (=> b!1843978 (= e!1178357 (and (inv!26582 (xs!9601 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))) e!1178358))))

(assert (=> b!1843895 (= tp!521347 (and (inv!26573 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176))))) e!1178357))))

(assert (= (and b!1843895 (is-Node!6725 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))) b!1843977))

(assert (= b!1843978 b!1843979))

(assert (= (and b!1843895 (is-Leaf!9821 (c!301050 (tokens!2439 (_2!11244 (h!25715 l!2176)))))) b!1843978))

(declare-fun m!2272299 () Bool)

(assert (=> b!1843977 m!2272299))

(declare-fun m!2272301 () Bool)

(assert (=> b!1843977 m!2272301))

(declare-fun m!2272303 () Bool)

(assert (=> b!1843978 m!2272303))

(assert (=> b!1843895 m!2272253))

(declare-fun b_lambda!61155 () Bool)

(assert (= b_lambda!61153 (or start!183708 b_lambda!61155)))

(declare-fun bs!408805 () Bool)

(declare-fun d!564358 () Bool)

(assert (= bs!408805 (and d!564358 start!183708)))

(declare-fun usesJsonRules!0 (PrintableTokens!1230) Bool)

(assert (=> bs!408805 (= (dynLambda!10095 lambda!72381 (h!25715 l!2176)) (usesJsonRules!0 (_2!11244 (h!25715 l!2176))))))

(declare-fun m!2272305 () Bool)

(assert (=> bs!408805 m!2272305))

(assert (=> b!1843919 d!564358))

(push 1)

(assert (not b!1843978))

(assert (not b!1843966))

(assert (not b!1843927))

(assert (not b!1843929))

(assert (not b_next!52233))

(assert (not b!1843938))

(assert (not b!1843944))

(assert (not b!1843956))

(assert (not d!564348))

(assert (not b_lambda!61155))

(assert (not b!1843936))

(assert (not b!1843928))

(assert b_and!143677)

(assert (not b!1843920))

(assert (not b!1843955))

(assert (not b!1843895))

(assert (not b!1843977))

(assert (not b!1843968))

(assert (not bs!408805))

(assert (not d!564344))

(assert (not b_next!52231))

(assert (not b!1843979))

(assert b_and!143679)

(assert (not b!1843967))

(assert (not b!1843946))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143679)

(assert b_and!143677)

(assert (not b_next!52231))

(assert (not b_next!52233))

(check-sat)

(pop 1)

