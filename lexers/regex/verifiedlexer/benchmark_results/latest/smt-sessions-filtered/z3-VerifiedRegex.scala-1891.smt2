; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93062 () Bool)

(assert start!93062)

(declare-fun bs!257788 () Bool)

(declare-fun b!1089176 () Bool)

(assert (= bs!257788 (and b!1089176 start!93062)))

(declare-fun lambda!40904 () Int)

(declare-fun lambda!40903 () Int)

(assert (=> bs!257788 (not (= lambda!40904 lambda!40903))))

(declare-fun b!1089185 () Bool)

(declare-fun e!689064 () Bool)

(assert (=> b!1089185 (= e!689064 true)))

(declare-fun b!1089184 () Bool)

(declare-fun e!689063 () Bool)

(assert (=> b!1089184 (= e!689063 e!689064)))

(assert (=> b!1089176 e!689063))

(assert (= b!1089184 b!1089185))

(assert (= b!1089176 b!1089184))

(declare-fun lambda!40905 () Int)

(assert (=> bs!257788 (not (= lambda!40905 lambda!40903))))

(assert (=> b!1089176 (not (= lambda!40905 lambda!40904))))

(declare-fun b!1089187 () Bool)

(declare-fun e!689066 () Bool)

(assert (=> b!1089187 (= e!689066 true)))

(declare-fun b!1089186 () Bool)

(declare-fun e!689065 () Bool)

(assert (=> b!1089186 (= e!689065 e!689066)))

(assert (=> b!1089176 e!689065))

(assert (= b!1089186 b!1089187))

(assert (= b!1089176 b!1089186))

(declare-fun lambda!40906 () Int)

(assert (=> bs!257788 (not (= lambda!40906 lambda!40903))))

(assert (=> b!1089176 (not (= lambda!40906 lambda!40904))))

(assert (=> b!1089176 (not (= lambda!40906 lambda!40905))))

(declare-fun b!1089189 () Bool)

(declare-fun e!689068 () Bool)

(assert (=> b!1089189 (= e!689068 true)))

(declare-fun b!1089188 () Bool)

(declare-fun e!689067 () Bool)

(assert (=> b!1089188 (= e!689067 e!689068)))

(assert (=> b!1089176 e!689067))

(assert (= b!1089188 b!1089189))

(assert (= b!1089176 b!1089188))

(declare-fun b!1089170 () Bool)

(declare-datatypes ((Unit!15795 0))(
  ( (Unit!15796) )
))
(declare-fun e!689055 () Unit!15795)

(declare-fun err!1793 () Unit!15795)

(assert (=> b!1089170 (= e!689055 err!1793)))

(declare-fun lt!364388 () Unit!15795)

(declare-datatypes ((List!10431 0))(
  ( (Nil!10415) (Cons!10415 (h!15816 (_ BitVec 16)) (t!101543 List!10431)) )
))
(declare-datatypes ((TokenValue!1838 0))(
  ( (FloatLiteralValue!3676 (text!13311 List!10431)) (TokenValueExt!1837 (__x!7420 Int)) (Broken!9190 (value!58429 List!10431)) (Object!1853) (End!1838) (Def!1838) (Underscore!1838) (Match!1838) (Else!1838) (Error!1838) (Case!1838) (If!1838) (Extends!1838) (Abstract!1838) (Class!1838) (Val!1838) (DelimiterValue!3676 (del!1898 List!10431)) (KeywordValue!1844 (value!58430 List!10431)) (CommentValue!3676 (value!58431 List!10431)) (WhitespaceValue!3676 (value!58432 List!10431)) (IndentationValue!1838 (value!58433 List!10431)) (String!12759) (Int32!1838) (Broken!9191 (value!58434 List!10431)) (Boolean!1839) (Unit!15797) (OperatorValue!1841 (op!1898 List!10431)) (IdentifierValue!3676 (value!58435 List!10431)) (IdentifierValue!3677 (value!58436 List!10431)) (WhitespaceValue!3677 (value!58437 List!10431)) (True!3676) (False!3676) (Broken!9192 (value!58438 List!10431)) (Broken!9193 (value!58439 List!10431)) (True!3677) (RightBrace!1838) (RightBracket!1838) (Colon!1838) (Null!1838) (Comma!1838) (LeftBracket!1838) (False!3677) (LeftBrace!1838) (ImaginaryLiteralValue!1838 (text!13312 List!10431)) (StringLiteralValue!5514 (value!58440 List!10431)) (EOFValue!1838 (value!58441 List!10431)) (IdentValue!1838 (value!58442 List!10431)) (DelimiterValue!3677 (value!58443 List!10431)) (DedentValue!1838 (value!58444 List!10431)) (NewLineValue!1838 (value!58445 List!10431)) (IntegerValue!5514 (value!58446 (_ BitVec 32)) (text!13313 List!10431)) (IntegerValue!5515 (value!58447 Int) (text!13314 List!10431)) (Times!1838) (Or!1838) (Equal!1838) (Minus!1838) (Broken!9194 (value!58448 List!10431)) (And!1838) (Div!1838) (LessEqual!1838) (Mod!1838) (Concat!4879) (Not!1838) (Plus!1838) (SpaceValue!1838 (value!58449 List!10431)) (IntegerValue!5516 (value!58450 Int) (text!13315 List!10431)) (StringLiteralValue!5515 (text!13316 List!10431)) (FloatLiteralValue!3677 (text!13317 List!10431)) (BytesLiteralValue!1838 (value!58451 List!10431)) (CommentValue!3677 (value!58452 List!10431)) (StringLiteralValue!5516 (value!58453 List!10431)) (ErrorTokenValue!1838 (msg!1899 List!10431)) )
))
(declare-datatypes ((Regex!3041 0))(
  ( (ElementMatch!3041 (c!184536 (_ BitVec 16))) (Concat!4880 (regOne!6594 Regex!3041) (regTwo!6594 Regex!3041)) (EmptyExpr!3041) (Star!3041 (reg!3370 Regex!3041)) (EmptyLang!3041) (Union!3041 (regOne!6595 Regex!3041) (regTwo!6595 Regex!3041)) )
))
(declare-datatypes ((String!12760 0))(
  ( (String!12761 (value!58454 String)) )
))
(declare-datatypes ((IArray!6291 0))(
  ( (IArray!6292 (innerList!3203 List!10431)) )
))
(declare-datatypes ((Conc!3143 0))(
  ( (Node!3143 (left!8904 Conc!3143) (right!9234 Conc!3143) (csize!6516 Int) (cheight!3354 Int)) (Leaf!5035 (xs!5836 IArray!6291) (csize!6517 Int)) (Empty!3143) )
))
(declare-datatypes ((BalanceConc!6300 0))(
  ( (BalanceConc!6301 (c!184537 Conc!3143)) )
))
(declare-datatypes ((TokenValueInjection!3376 0))(
  ( (TokenValueInjection!3377 (toValue!2849 Int) (toChars!2708 Int)) )
))
(declare-datatypes ((Rule!3344 0))(
  ( (Rule!3345 (regex!1772 Regex!3041) (tag!2034 String!12760) (isSeparator!1772 Bool) (transformation!1772 TokenValueInjection!3376)) )
))
(declare-datatypes ((Token!3210 0))(
  ( (Token!3211 (value!58455 TokenValue!1838) (rule!3195 Rule!3344) (size!8045 Int) (originalCharacters!2328 List!10431)) )
))
(declare-datatypes ((List!10432 0))(
  ( (Nil!10416) (Cons!10416 (h!15817 Token!3210) (t!101544 List!10432)) )
))
(declare-datatypes ((IArray!6293 0))(
  ( (IArray!6294 (innerList!3204 List!10432)) )
))
(declare-datatypes ((Conc!3144 0))(
  ( (Node!3144 (left!8905 Conc!3144) (right!9235 Conc!3144) (csize!6518 Int) (cheight!3355 Int)) (Leaf!5036 (xs!5837 IArray!6293) (csize!6519 Int)) (Empty!3144) )
))
(declare-datatypes ((List!10433 0))(
  ( (Nil!10417) (Cons!10417 (h!15818 Rule!3344) (t!101545 List!10433)) )
))
(declare-datatypes ((BalanceConc!6302 0))(
  ( (BalanceConc!6303 (c!184538 Conc!3144)) )
))
(declare-datatypes ((PrintableTokens!260 0))(
  ( (PrintableTokens!261 (rules!9059 List!10433) (tokens!1331 BalanceConc!6302)) )
))
(declare-datatypes ((tuple2!11670 0))(
  ( (tuple2!11671 (_1!6661 Int) (_2!6661 PrintableTokens!260)) )
))
(declare-fun lt!364387 () tuple2!11670)

(declare-datatypes ((List!10434 0))(
  ( (Nil!10418) (Cons!10418 (h!15819 tuple2!11670) (t!101546 List!10434)) )
))
(declare-datatypes ((IArray!6295 0))(
  ( (IArray!6296 (innerList!3205 List!10434)) )
))
(declare-datatypes ((Conc!3145 0))(
  ( (Node!3145 (left!8906 Conc!3145) (right!9236 Conc!3145) (csize!6520 Int) (cheight!3356 Int)) (Leaf!5037 (xs!5838 IArray!6295) (csize!6521 Int)) (Empty!3145) )
))
(declare-datatypes ((BalanceConc!6304 0))(
  ( (BalanceConc!6305 (c!184539 Conc!3145)) )
))
(declare-fun lt!364389 () BalanceConc!6304)

(declare-fun forallContained!474 (List!10434 Int tuple2!11670) Unit!15795)

(declare-fun list!3730 (BalanceConc!6304) List!10434)

(assert (=> b!1089170 (= lt!364388 (forallContained!474 (list!3730 lt!364389) lambda!40904 lt!364387))))

(assert (=> b!1089170 true))

(declare-fun b!1089171 () Bool)

(declare-fun res!484156 () Bool)

(declare-fun e!689058 () Bool)

(assert (=> b!1089171 (=> (not res!484156) (not e!689058))))

(declare-fun objs!8 () BalanceConc!6304)

(declare-fun forall!2302 (BalanceConc!6304 Int) Bool)

(assert (=> b!1089171 (= res!484156 (forall!2302 objs!8 lambda!40904))))

(declare-fun b!1089172 () Bool)

(declare-fun e!689052 () Bool)

(declare-fun e!689054 () Bool)

(assert (=> b!1089172 (= e!689052 e!689054)))

(declare-fun res!484155 () Bool)

(assert (=> b!1089172 (=> (not res!484155) (not e!689054))))

(declare-fun lt!364395 () Int)

(assert (=> b!1089172 (= res!484155 (> lt!364395 1))))

(declare-fun size!8046 (BalanceConc!6304) Int)

(assert (=> b!1089172 (= lt!364395 (size!8046 objs!8))))

(declare-fun b!1089173 () Bool)

(declare-fun e!689053 () Bool)

(declare-fun tp!326330 () Bool)

(declare-fun inv!13332 (Conc!3145) Bool)

(assert (=> b!1089173 (= e!689053 (and (inv!13332 (c!184539 objs!8)) tp!326330))))

(declare-fun b!1089174 () Bool)

(declare-fun Unit!15798 () Unit!15795)

(assert (=> b!1089174 (= e!689055 Unit!15798)))

(declare-fun b!1089175 () Bool)

(declare-fun e!689056 () Bool)

(assert (=> b!1089175 (= e!689056 e!689058)))

(declare-fun res!484158 () Bool)

(assert (=> b!1089175 (=> (not res!484158) (not e!689058))))

(declare-fun lt!364392 () Bool)

(assert (=> b!1089175 (= res!484158 (not lt!364392))))

(declare-fun lt!364390 () Unit!15795)

(assert (=> b!1089175 (= lt!364390 e!689055)))

(declare-fun c!184535 () Bool)

(assert (=> b!1089175 (= c!184535 lt!364392)))

(declare-fun contains!1735 (BalanceConc!6304 tuple2!11670) Bool)

(assert (=> b!1089175 (= lt!364392 (contains!1735 lt!364389 lt!364387))))

(declare-fun b!1089169 () Bool)

(declare-fun e!689057 () Bool)

(assert (=> b!1089169 (= e!689058 e!689057)))

(declare-fun res!484159 () Bool)

(assert (=> b!1089169 (=> res!484159 e!689057)))

(declare-fun lt!364393 () List!10434)

(declare-fun forall!2303 (List!10434 Int) Bool)

(assert (=> b!1089169 (= res!484159 (not (forall!2303 lt!364393 lambda!40904)))))

(assert (=> b!1089169 (= lt!364393 (list!3730 objs!8))))

(declare-fun res!484157 () Bool)

(assert (=> start!93062 (=> (not res!484157) (not e!689052))))

(assert (=> start!93062 (= res!484157 (forall!2302 objs!8 lambda!40903))))

(assert (=> start!93062 e!689052))

(declare-fun inv!13333 (BalanceConc!6304) Bool)

(assert (=> start!93062 (and (inv!13333 objs!8) e!689053)))

(assert (=> b!1089176 (= e!689054 e!689056)))

(declare-fun res!484154 () Bool)

(assert (=> b!1089176 (=> (not res!484154) (not e!689056))))

(assert (=> b!1089176 (= res!484154 (contains!1735 objs!8 lt!364387))))

(declare-fun lt!364391 () BalanceConc!6304)

(declare-fun filter!201 (BalanceConc!6304 Int) BalanceConc!6304)

(assert (=> b!1089176 (= lt!364391 (filter!201 objs!8 lambda!40906))))

(declare-fun lt!364394 () BalanceConc!6304)

(assert (=> b!1089176 (= lt!364394 (filter!201 objs!8 lambda!40905))))

(assert (=> b!1089176 (= lt!364389 (filter!201 objs!8 lambda!40904))))

(declare-fun apply!2013 (BalanceConc!6304 Int) tuple2!11670)

(assert (=> b!1089176 (= lt!364387 (apply!2013 objs!8 (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2)))))))

(declare-fun b!1089177 () Bool)

(declare-fun contains!1736 (List!10434 tuple2!11670) Bool)

(assert (=> b!1089177 (= e!689057 (not (contains!1736 lt!364393 lt!364387)))))

(assert (= (and start!93062 res!484157) b!1089172))

(assert (= (and b!1089172 res!484155) b!1089176))

(assert (= (and b!1089176 res!484154) b!1089175))

(assert (= (and b!1089175 c!184535) b!1089170))

(assert (= (and b!1089175 (not c!184535)) b!1089174))

(assert (= (and b!1089175 res!484158) b!1089171))

(assert (= (and b!1089171 res!484156) b!1089169))

(assert (= (and b!1089169 (not res!484159)) b!1089177))

(assert (= start!93062 b!1089173))

(declare-fun m!1239551 () Bool)

(assert (=> b!1089173 m!1239551))

(declare-fun m!1239553 () Bool)

(assert (=> b!1089176 m!1239553))

(declare-fun m!1239555 () Bool)

(assert (=> b!1089176 m!1239555))

(declare-fun m!1239557 () Bool)

(assert (=> b!1089176 m!1239557))

(declare-fun m!1239559 () Bool)

(assert (=> b!1089176 m!1239559))

(declare-fun m!1239561 () Bool)

(assert (=> b!1089176 m!1239561))

(declare-fun m!1239563 () Bool)

(assert (=> b!1089175 m!1239563))

(declare-fun m!1239565 () Bool)

(assert (=> start!93062 m!1239565))

(declare-fun m!1239567 () Bool)

(assert (=> start!93062 m!1239567))

(declare-fun m!1239569 () Bool)

(assert (=> b!1089177 m!1239569))

(declare-fun m!1239571 () Bool)

(assert (=> b!1089170 m!1239571))

(assert (=> b!1089170 m!1239571))

(declare-fun m!1239573 () Bool)

(assert (=> b!1089170 m!1239573))

(declare-fun m!1239575 () Bool)

(assert (=> b!1089172 m!1239575))

(declare-fun m!1239577 () Bool)

(assert (=> b!1089171 m!1239577))

(declare-fun m!1239579 () Bool)

(assert (=> b!1089169 m!1239579))

(declare-fun m!1239581 () Bool)

(assert (=> b!1089169 m!1239581))

(check-sat (not b!1089185) (not b!1089176) (not b!1089173) (not b!1089189) (not b!1089175) (not b!1089172) (not start!93062) (not b!1089170) (not b!1089171) (not b!1089188) (not b!1089177) (not b!1089184) (not b!1089186) (not b!1089169) (not b!1089187))
(check-sat)
(get-model)

(declare-fun d!306254 () Bool)

(declare-fun lt!364398 () Bool)

(assert (=> d!306254 (= lt!364398 (contains!1736 (list!3730 lt!364389) lt!364387))))

(declare-fun contains!1737 (Conc!3145 tuple2!11670) Bool)

(assert (=> d!306254 (= lt!364398 (contains!1737 (c!184539 lt!364389) lt!364387))))

(assert (=> d!306254 (= (contains!1735 lt!364389 lt!364387) lt!364398)))

(declare-fun bs!257789 () Bool)

(assert (= bs!257789 d!306254))

(assert (=> bs!257789 m!1239571))

(assert (=> bs!257789 m!1239571))

(declare-fun m!1239583 () Bool)

(assert (=> bs!257789 m!1239583))

(declare-fun m!1239585 () Bool)

(assert (=> bs!257789 m!1239585))

(assert (=> b!1089175 d!306254))

(declare-fun d!306256 () Bool)

(declare-fun lt!364401 () Bool)

(assert (=> d!306256 (= lt!364401 (forall!2303 (list!3730 objs!8) lambda!40903))))

(declare-fun forall!2304 (Conc!3145 Int) Bool)

(assert (=> d!306256 (= lt!364401 (forall!2304 (c!184539 objs!8) lambda!40903))))

(assert (=> d!306256 (= (forall!2302 objs!8 lambda!40903) lt!364401)))

(declare-fun bs!257790 () Bool)

(assert (= bs!257790 d!306256))

(assert (=> bs!257790 m!1239581))

(assert (=> bs!257790 m!1239581))

(declare-fun m!1239587 () Bool)

(assert (=> bs!257790 m!1239587))

(declare-fun m!1239589 () Bool)

(assert (=> bs!257790 m!1239589))

(assert (=> start!93062 d!306256))

(declare-fun d!306258 () Bool)

(declare-fun isBalanced!875 (Conc!3145) Bool)

(assert (=> d!306258 (= (inv!13333 objs!8) (isBalanced!875 (c!184539 objs!8)))))

(declare-fun bs!257791 () Bool)

(assert (= bs!257791 d!306258))

(declare-fun m!1239591 () Bool)

(assert (=> bs!257791 m!1239591))

(assert (=> start!93062 d!306258))

(declare-fun d!306260 () Bool)

(declare-fun dynLambda!4550 (Int tuple2!11670) Bool)

(assert (=> d!306260 (dynLambda!4550 lambda!40904 lt!364387)))

(declare-fun lt!364404 () Unit!15795)

(declare-fun choose!6993 (List!10434 Int tuple2!11670) Unit!15795)

(assert (=> d!306260 (= lt!364404 (choose!6993 (list!3730 lt!364389) lambda!40904 lt!364387))))

(declare-fun e!689071 () Bool)

(assert (=> d!306260 e!689071))

(declare-fun res!484162 () Bool)

(assert (=> d!306260 (=> (not res!484162) (not e!689071))))

(assert (=> d!306260 (= res!484162 (forall!2303 (list!3730 lt!364389) lambda!40904))))

(assert (=> d!306260 (= (forallContained!474 (list!3730 lt!364389) lambda!40904 lt!364387) lt!364404)))

(declare-fun b!1089192 () Bool)

(assert (=> b!1089192 (= e!689071 (contains!1736 (list!3730 lt!364389) lt!364387))))

(assert (= (and d!306260 res!484162) b!1089192))

(declare-fun b_lambda!30355 () Bool)

(assert (=> (not b_lambda!30355) (not d!306260)))

(declare-fun m!1239593 () Bool)

(assert (=> d!306260 m!1239593))

(assert (=> d!306260 m!1239571))

(declare-fun m!1239595 () Bool)

(assert (=> d!306260 m!1239595))

(assert (=> d!306260 m!1239571))

(declare-fun m!1239597 () Bool)

(assert (=> d!306260 m!1239597))

(assert (=> b!1089192 m!1239571))

(assert (=> b!1089192 m!1239583))

(assert (=> b!1089170 d!306260))

(declare-fun d!306264 () Bool)

(declare-fun list!3731 (Conc!3145) List!10434)

(assert (=> d!306264 (= (list!3730 lt!364389) (list!3731 (c!184539 lt!364389)))))

(declare-fun bs!257792 () Bool)

(assert (= bs!257792 d!306264))

(declare-fun m!1239599 () Bool)

(assert (=> bs!257792 m!1239599))

(assert (=> b!1089170 d!306264))

(declare-fun d!306266 () Bool)

(declare-fun lt!364405 () Bool)

(assert (=> d!306266 (= lt!364405 (forall!2303 (list!3730 objs!8) lambda!40904))))

(assert (=> d!306266 (= lt!364405 (forall!2304 (c!184539 objs!8) lambda!40904))))

(assert (=> d!306266 (= (forall!2302 objs!8 lambda!40904) lt!364405)))

(declare-fun bs!257793 () Bool)

(assert (= bs!257793 d!306266))

(assert (=> bs!257793 m!1239581))

(assert (=> bs!257793 m!1239581))

(declare-fun m!1239601 () Bool)

(assert (=> bs!257793 m!1239601))

(declare-fun m!1239603 () Bool)

(assert (=> bs!257793 m!1239603))

(assert (=> b!1089171 d!306266))

(declare-fun d!306268 () Bool)

(declare-fun e!689086 () Bool)

(assert (=> d!306268 e!689086))

(declare-fun res!484174 () Bool)

(assert (=> d!306268 (=> (not res!484174) (not e!689086))))

(declare-fun filter!202 (Conc!3145 Int) Conc!3145)

(assert (=> d!306268 (= res!484174 (isBalanced!875 (filter!202 (c!184539 objs!8) lambda!40905)))))

(declare-fun lt!364411 () BalanceConc!6304)

(assert (=> d!306268 (= lt!364411 (BalanceConc!6305 (filter!202 (c!184539 objs!8) lambda!40905)))))

(assert (=> d!306268 (= (filter!201 objs!8 lambda!40905) lt!364411)))

(declare-fun b!1089210 () Bool)

(declare-fun filter!203 (List!10434 Int) List!10434)

(assert (=> b!1089210 (= e!689086 (= (list!3730 lt!364411) (filter!203 (list!3730 objs!8) lambda!40905)))))

(assert (= (and d!306268 res!484174) b!1089210))

(declare-fun m!1239619 () Bool)

(assert (=> d!306268 m!1239619))

(assert (=> d!306268 m!1239619))

(declare-fun m!1239621 () Bool)

(assert (=> d!306268 m!1239621))

(declare-fun m!1239623 () Bool)

(assert (=> b!1089210 m!1239623))

(assert (=> b!1089210 m!1239581))

(assert (=> b!1089210 m!1239581))

(declare-fun m!1239625 () Bool)

(assert (=> b!1089210 m!1239625))

(assert (=> b!1089176 d!306268))

(declare-fun d!306278 () Bool)

(declare-fun lt!364412 () Bool)

(assert (=> d!306278 (= lt!364412 (contains!1736 (list!3730 objs!8) lt!364387))))

(assert (=> d!306278 (= lt!364412 (contains!1737 (c!184539 objs!8) lt!364387))))

(assert (=> d!306278 (= (contains!1735 objs!8 lt!364387) lt!364412)))

(declare-fun bs!257796 () Bool)

(assert (= bs!257796 d!306278))

(assert (=> bs!257796 m!1239581))

(assert (=> bs!257796 m!1239581))

(declare-fun m!1239627 () Bool)

(assert (=> bs!257796 m!1239627))

(declare-fun m!1239629 () Bool)

(assert (=> bs!257796 m!1239629))

(assert (=> b!1089176 d!306278))

(declare-fun d!306280 () Bool)

(declare-fun e!689087 () Bool)

(assert (=> d!306280 e!689087))

(declare-fun res!484175 () Bool)

(assert (=> d!306280 (=> (not res!484175) (not e!689087))))

(assert (=> d!306280 (= res!484175 (isBalanced!875 (filter!202 (c!184539 objs!8) lambda!40904)))))

(declare-fun lt!364413 () BalanceConc!6304)

(assert (=> d!306280 (= lt!364413 (BalanceConc!6305 (filter!202 (c!184539 objs!8) lambda!40904)))))

(assert (=> d!306280 (= (filter!201 objs!8 lambda!40904) lt!364413)))

(declare-fun b!1089211 () Bool)

(assert (=> b!1089211 (= e!689087 (= (list!3730 lt!364413) (filter!203 (list!3730 objs!8) lambda!40904)))))

(assert (= (and d!306280 res!484175) b!1089211))

(declare-fun m!1239631 () Bool)

(assert (=> d!306280 m!1239631))

(assert (=> d!306280 m!1239631))

(declare-fun m!1239633 () Bool)

(assert (=> d!306280 m!1239633))

(declare-fun m!1239635 () Bool)

(assert (=> b!1089211 m!1239635))

(assert (=> b!1089211 m!1239581))

(assert (=> b!1089211 m!1239581))

(declare-fun m!1239637 () Bool)

(assert (=> b!1089211 m!1239637))

(assert (=> b!1089176 d!306280))

(declare-fun d!306282 () Bool)

(declare-fun e!689088 () Bool)

(assert (=> d!306282 e!689088))

(declare-fun res!484176 () Bool)

(assert (=> d!306282 (=> (not res!484176) (not e!689088))))

(assert (=> d!306282 (= res!484176 (isBalanced!875 (filter!202 (c!184539 objs!8) lambda!40906)))))

(declare-fun lt!364414 () BalanceConc!6304)

(assert (=> d!306282 (= lt!364414 (BalanceConc!6305 (filter!202 (c!184539 objs!8) lambda!40906)))))

(assert (=> d!306282 (= (filter!201 objs!8 lambda!40906) lt!364414)))

(declare-fun b!1089212 () Bool)

(assert (=> b!1089212 (= e!689088 (= (list!3730 lt!364414) (filter!203 (list!3730 objs!8) lambda!40906)))))

(assert (= (and d!306282 res!484176) b!1089212))

(declare-fun m!1239639 () Bool)

(assert (=> d!306282 m!1239639))

(assert (=> d!306282 m!1239639))

(declare-fun m!1239641 () Bool)

(assert (=> d!306282 m!1239641))

(declare-fun m!1239643 () Bool)

(assert (=> b!1089212 m!1239643))

(assert (=> b!1089212 m!1239581))

(assert (=> b!1089212 m!1239581))

(declare-fun m!1239645 () Bool)

(assert (=> b!1089212 m!1239645))

(assert (=> b!1089176 d!306282))

(declare-fun d!306284 () Bool)

(declare-fun lt!364423 () tuple2!11670)

(declare-fun apply!2014 (List!10434 Int) tuple2!11670)

(assert (=> d!306284 (= lt!364423 (apply!2014 (list!3730 objs!8) (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2)))))))

(declare-fun apply!2015 (Conc!3145 Int) tuple2!11670)

(assert (=> d!306284 (= lt!364423 (apply!2015 (c!184539 objs!8) (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2)))))))

(declare-fun e!689094 () Bool)

(assert (=> d!306284 e!689094))

(declare-fun res!484182 () Bool)

(assert (=> d!306284 (=> (not res!484182) (not e!689094))))

(assert (=> d!306284 (= res!484182 (<= 0 (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2)))))))

(assert (=> d!306284 (= (apply!2013 objs!8 (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2)))) lt!364423)))

(declare-fun b!1089218 () Bool)

(assert (=> b!1089218 (= e!689094 (< (ite (>= lt!364395 0) (div lt!364395 2) (- (div (- lt!364395) 2))) (size!8046 objs!8)))))

(assert (= (and d!306284 res!484182) b!1089218))

(assert (=> d!306284 m!1239581))

(assert (=> d!306284 m!1239581))

(declare-fun m!1239661 () Bool)

(assert (=> d!306284 m!1239661))

(declare-fun m!1239663 () Bool)

(assert (=> d!306284 m!1239663))

(assert (=> b!1089218 m!1239575))

(assert (=> b!1089176 d!306284))

(declare-fun d!306292 () Bool)

(declare-fun lt!364430 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1503 (List!10434) (InoxSet tuple2!11670))

(assert (=> d!306292 (= lt!364430 (select (content!1503 lt!364393) lt!364387))))

(declare-fun e!689099 () Bool)

(assert (=> d!306292 (= lt!364430 e!689099)))

(declare-fun res!484188 () Bool)

(assert (=> d!306292 (=> (not res!484188) (not e!689099))))

(get-info :version)

(assert (=> d!306292 (= res!484188 ((_ is Cons!10418) lt!364393))))

(assert (=> d!306292 (= (contains!1736 lt!364393 lt!364387) lt!364430)))

(declare-fun b!1089223 () Bool)

(declare-fun e!689100 () Bool)

(assert (=> b!1089223 (= e!689099 e!689100)))

(declare-fun res!484187 () Bool)

(assert (=> b!1089223 (=> res!484187 e!689100)))

(assert (=> b!1089223 (= res!484187 (= (h!15819 lt!364393) lt!364387))))

(declare-fun b!1089224 () Bool)

(assert (=> b!1089224 (= e!689100 (contains!1736 (t!101546 lt!364393) lt!364387))))

(assert (= (and d!306292 res!484188) b!1089223))

(assert (= (and b!1089223 (not res!484187)) b!1089224))

(declare-fun m!1239673 () Bool)

(assert (=> d!306292 m!1239673))

(declare-fun m!1239675 () Bool)

(assert (=> d!306292 m!1239675))

(declare-fun m!1239677 () Bool)

(assert (=> b!1089224 m!1239677))

(assert (=> b!1089177 d!306292))

(declare-fun d!306300 () Bool)

(declare-fun lt!364435 () Int)

(declare-fun size!8049 (List!10434) Int)

(assert (=> d!306300 (= lt!364435 (size!8049 (list!3730 objs!8)))))

(declare-fun size!8050 (Conc!3145) Int)

(assert (=> d!306300 (= lt!364435 (size!8050 (c!184539 objs!8)))))

(assert (=> d!306300 (= (size!8046 objs!8) lt!364435)))

(declare-fun bs!257802 () Bool)

(assert (= bs!257802 d!306300))

(assert (=> bs!257802 m!1239581))

(assert (=> bs!257802 m!1239581))

(declare-fun m!1239679 () Bool)

(assert (=> bs!257802 m!1239679))

(declare-fun m!1239681 () Bool)

(assert (=> bs!257802 m!1239681))

(assert (=> b!1089172 d!306300))

(declare-fun d!306302 () Bool)

(declare-fun c!184546 () Bool)

(assert (=> d!306302 (= c!184546 ((_ is Node!3145) (c!184539 objs!8)))))

(declare-fun e!689111 () Bool)

(assert (=> d!306302 (= (inv!13332 (c!184539 objs!8)) e!689111)))

(declare-fun b!1089237 () Bool)

(declare-fun inv!13336 (Conc!3145) Bool)

(assert (=> b!1089237 (= e!689111 (inv!13336 (c!184539 objs!8)))))

(declare-fun b!1089238 () Bool)

(declare-fun e!689112 () Bool)

(assert (=> b!1089238 (= e!689111 e!689112)))

(declare-fun res!484197 () Bool)

(assert (=> b!1089238 (= res!484197 (not ((_ is Leaf!5037) (c!184539 objs!8))))))

(assert (=> b!1089238 (=> res!484197 e!689112)))

(declare-fun b!1089239 () Bool)

(declare-fun inv!13337 (Conc!3145) Bool)

(assert (=> b!1089239 (= e!689112 (inv!13337 (c!184539 objs!8)))))

(assert (= (and d!306302 c!184546) b!1089237))

(assert (= (and d!306302 (not c!184546)) b!1089238))

(assert (= (and b!1089238 (not res!484197)) b!1089239))

(declare-fun m!1239689 () Bool)

(assert (=> b!1089237 m!1239689))

(declare-fun m!1239691 () Bool)

(assert (=> b!1089239 m!1239691))

(assert (=> b!1089173 d!306302))

(declare-fun d!306306 () Bool)

(declare-fun res!484202 () Bool)

(declare-fun e!689117 () Bool)

(assert (=> d!306306 (=> res!484202 e!689117)))

(assert (=> d!306306 (= res!484202 ((_ is Nil!10418) lt!364393))))

(assert (=> d!306306 (= (forall!2303 lt!364393 lambda!40904) e!689117)))

(declare-fun b!1089244 () Bool)

(declare-fun e!689118 () Bool)

(assert (=> b!1089244 (= e!689117 e!689118)))

(declare-fun res!484203 () Bool)

(assert (=> b!1089244 (=> (not res!484203) (not e!689118))))

(assert (=> b!1089244 (= res!484203 (dynLambda!4550 lambda!40904 (h!15819 lt!364393)))))

(declare-fun b!1089245 () Bool)

(assert (=> b!1089245 (= e!689118 (forall!2303 (t!101546 lt!364393) lambda!40904))))

(assert (= (and d!306306 (not res!484202)) b!1089244))

(assert (= (and b!1089244 res!484203) b!1089245))

(declare-fun b_lambda!30361 () Bool)

(assert (=> (not b_lambda!30361) (not b!1089244)))

(declare-fun m!1239693 () Bool)

(assert (=> b!1089244 m!1239693))

(declare-fun m!1239695 () Bool)

(assert (=> b!1089245 m!1239695))

(assert (=> b!1089169 d!306306))

(declare-fun d!306308 () Bool)

(assert (=> d!306308 (= (list!3730 objs!8) (list!3731 (c!184539 objs!8)))))

(declare-fun bs!257803 () Bool)

(assert (= bs!257803 d!306308))

(declare-fun m!1239697 () Bool)

(assert (=> bs!257803 m!1239697))

(assert (=> b!1089169 d!306308))

(declare-fun b!1089256 () Bool)

(declare-fun e!689125 () Bool)

(assert (=> b!1089256 (= e!689125 true)))

(declare-fun b!1089258 () Bool)

(declare-fun e!689126 () Bool)

(assert (=> b!1089258 (= e!689126 true)))

(declare-fun b!1089257 () Bool)

(assert (=> b!1089257 (= e!689125 e!689126)))

(assert (=> b!1089187 e!689125))

(assert (= (and b!1089187 ((_ is Node!3144) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089256))

(assert (= b!1089257 b!1089258))

(assert (= (and b!1089187 ((_ is Leaf!5036) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089257))

(declare-fun b!1089259 () Bool)

(declare-fun e!689127 () Bool)

(assert (=> b!1089259 (= e!689127 true)))

(declare-fun b!1089261 () Bool)

(declare-fun e!689128 () Bool)

(assert (=> b!1089261 (= e!689128 true)))

(declare-fun b!1089260 () Bool)

(assert (=> b!1089260 (= e!689127 e!689128)))

(assert (=> b!1089189 e!689127))

(assert (= (and b!1089189 ((_ is Node!3144) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089259))

(assert (= b!1089260 b!1089261))

(assert (= (and b!1089189 ((_ is Leaf!5036) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089260))

(declare-fun b!1089271 () Bool)

(declare-fun e!689135 () Bool)

(declare-fun tp!326337 () Bool)

(declare-fun tp!326339 () Bool)

(assert (=> b!1089271 (= e!689135 (and (inv!13332 (left!8906 (c!184539 objs!8))) tp!326339 (inv!13332 (right!9236 (c!184539 objs!8))) tp!326337))))

(declare-fun b!1089273 () Bool)

(declare-fun e!689134 () Bool)

(declare-fun tp!326338 () Bool)

(assert (=> b!1089273 (= e!689134 tp!326338)))

(declare-fun b!1089272 () Bool)

(declare-fun inv!13338 (IArray!6295) Bool)

(assert (=> b!1089272 (= e!689135 (and (inv!13338 (xs!5838 (c!184539 objs!8))) e!689134))))

(assert (=> b!1089173 (= tp!326330 (and (inv!13332 (c!184539 objs!8)) e!689135))))

(assert (= (and b!1089173 ((_ is Node!3145) (c!184539 objs!8))) b!1089271))

(assert (= b!1089272 b!1089273))

(assert (= (and b!1089173 ((_ is Leaf!5037) (c!184539 objs!8))) b!1089272))

(declare-fun m!1239707 () Bool)

(assert (=> b!1089271 m!1239707))

(declare-fun m!1239709 () Bool)

(assert (=> b!1089271 m!1239709))

(declare-fun m!1239711 () Bool)

(assert (=> b!1089272 m!1239711))

(assert (=> b!1089173 m!1239551))

(declare-fun b!1089284 () Bool)

(declare-fun e!689144 () Bool)

(assert (=> b!1089284 (= e!689144 true)))

(declare-fun b!1089283 () Bool)

(declare-fun e!689143 () Bool)

(assert (=> b!1089283 (= e!689143 e!689144)))

(declare-fun b!1089282 () Bool)

(declare-fun e!689142 () Bool)

(assert (=> b!1089282 (= e!689142 e!689143)))

(assert (=> b!1089188 e!689142))

(assert (= b!1089283 b!1089284))

(assert (= b!1089282 b!1089283))

(assert (= (and b!1089188 ((_ is Cons!10417) (rules!9059 (_2!6661 lt!364387)))) b!1089282))

(declare-fun order!6249 () Int)

(declare-fun order!6251 () Int)

(declare-fun dynLambda!4552 (Int Int) Int)

(declare-fun dynLambda!4553 (Int Int) Int)

(assert (=> b!1089284 (< (dynLambda!4552 order!6249 (toValue!2849 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40906))))

(declare-fun order!6253 () Int)

(declare-fun dynLambda!4554 (Int Int) Int)

(assert (=> b!1089284 (< (dynLambda!4554 order!6253 (toChars!2708 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40906))))

(declare-fun b!1089287 () Bool)

(declare-fun e!689147 () Bool)

(assert (=> b!1089287 (= e!689147 true)))

(declare-fun b!1089286 () Bool)

(declare-fun e!689146 () Bool)

(assert (=> b!1089286 (= e!689146 e!689147)))

(declare-fun b!1089285 () Bool)

(declare-fun e!689145 () Bool)

(assert (=> b!1089285 (= e!689145 e!689146)))

(assert (=> b!1089184 e!689145))

(assert (= b!1089286 b!1089287))

(assert (= b!1089285 b!1089286))

(assert (= (and b!1089184 ((_ is Cons!10417) (rules!9059 (_2!6661 lt!364387)))) b!1089285))

(assert (=> b!1089287 (< (dynLambda!4552 order!6249 (toValue!2849 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40904))))

(assert (=> b!1089287 (< (dynLambda!4554 order!6253 (toChars!2708 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40904))))

(declare-fun b!1089288 () Bool)

(declare-fun e!689148 () Bool)

(assert (=> b!1089288 (= e!689148 true)))

(declare-fun b!1089290 () Bool)

(declare-fun e!689149 () Bool)

(assert (=> b!1089290 (= e!689149 true)))

(declare-fun b!1089289 () Bool)

(assert (=> b!1089289 (= e!689148 e!689149)))

(assert (=> b!1089185 e!689148))

(assert (= (and b!1089185 ((_ is Node!3144) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089288))

(assert (= b!1089289 b!1089290))

(assert (= (and b!1089185 ((_ is Leaf!5036) (c!184538 (tokens!1331 (_2!6661 lt!364387))))) b!1089289))

(declare-fun b!1089293 () Bool)

(declare-fun e!689152 () Bool)

(assert (=> b!1089293 (= e!689152 true)))

(declare-fun b!1089292 () Bool)

(declare-fun e!689151 () Bool)

(assert (=> b!1089292 (= e!689151 e!689152)))

(declare-fun b!1089291 () Bool)

(declare-fun e!689150 () Bool)

(assert (=> b!1089291 (= e!689150 e!689151)))

(assert (=> b!1089186 e!689150))

(assert (= b!1089292 b!1089293))

(assert (= b!1089291 b!1089292))

(assert (= (and b!1089186 ((_ is Cons!10417) (rules!9059 (_2!6661 lt!364387)))) b!1089291))

(assert (=> b!1089293 (< (dynLambda!4552 order!6249 (toValue!2849 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40905))))

(assert (=> b!1089293 (< (dynLambda!4554 order!6253 (toChars!2708 (transformation!1772 (h!15818 (rules!9059 (_2!6661 lt!364387)))))) (dynLambda!4553 order!6251 lambda!40905))))

(declare-fun b_lambda!30363 () Bool)

(assert (= b_lambda!30361 (or b!1089176 b_lambda!30363)))

(declare-fun bs!257804 () Bool)

(declare-fun d!306312 () Bool)

(assert (= bs!257804 (and d!306312 b!1089176)))

(assert (=> bs!257804 (= (dynLambda!4550 lambda!40904 (h!15819 lt!364393)) (< (_1!6661 (h!15819 lt!364393)) (_1!6661 lt!364387)))))

(assert (=> b!1089244 d!306312))

(declare-fun b_lambda!30365 () Bool)

(assert (= b_lambda!30355 (or b!1089176 b_lambda!30365)))

(declare-fun bs!257805 () Bool)

(declare-fun d!306314 () Bool)

(assert (= bs!257805 (and d!306314 b!1089176)))

(assert (=> bs!257805 (= (dynLambda!4550 lambda!40904 lt!364387) (< (_1!6661 lt!364387) (_1!6661 lt!364387)))))

(assert (=> d!306260 d!306314))

(check-sat (not d!306308) (not d!306268) (not b!1089245) (not d!306266) (not d!306284) (not b!1089173) (not d!306282) (not b!1089261) (not d!306300) (not b!1089237) (not b!1089272) (not b_lambda!30365) (not b!1089218) (not b!1089288) (not b!1089210) (not d!306254) (not d!306292) (not b!1089256) (not b_lambda!30363) (not b!1089211) (not d!306264) (not d!306258) (not b!1089285) (not d!306256) (not b!1089271) (not b!1089239) (not b!1089291) (not d!306260) (not b!1089273) (not b!1089212) (not b!1089282) (not d!306280) (not d!306278) (not b!1089259) (not b!1089224) (not b!1089290) (not b!1089258) (not b!1089192))
(check-sat)
