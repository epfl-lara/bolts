; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93114 () Bool)

(assert start!93114)

(declare-fun bs!257816 () Bool)

(declare-fun b!1089505 () Bool)

(assert (= bs!257816 (and b!1089505 start!93114)))

(declare-fun lambda!40988 () Int)

(declare-fun lambda!40987 () Int)

(assert (=> bs!257816 (not (= lambda!40988 lambda!40987))))

(declare-fun b!1089519 () Bool)

(declare-fun e!689326 () Bool)

(assert (=> b!1089519 (= e!689326 true)))

(declare-fun b!1089518 () Bool)

(declare-fun e!689325 () Bool)

(assert (=> b!1089518 (= e!689325 e!689326)))

(assert (=> b!1089505 e!689325))

(assert (= b!1089518 b!1089519))

(assert (= b!1089505 b!1089518))

(declare-fun lambda!40989 () Int)

(assert (=> bs!257816 (not (= lambda!40989 lambda!40987))))

(assert (=> b!1089505 (not (= lambda!40989 lambda!40988))))

(declare-fun b!1089521 () Bool)

(declare-fun e!689328 () Bool)

(assert (=> b!1089521 (= e!689328 true)))

(declare-fun b!1089520 () Bool)

(declare-fun e!689327 () Bool)

(assert (=> b!1089520 (= e!689327 e!689328)))

(assert (=> b!1089505 e!689327))

(assert (= b!1089520 b!1089521))

(assert (= b!1089505 b!1089520))

(declare-fun lambda!40990 () Int)

(assert (=> bs!257816 (not (= lambda!40990 lambda!40987))))

(assert (=> b!1089505 (not (= lambda!40990 lambda!40988))))

(assert (=> b!1089505 (not (= lambda!40990 lambda!40989))))

(declare-fun b!1089523 () Bool)

(declare-fun e!689330 () Bool)

(assert (=> b!1089523 (= e!689330 true)))

(declare-fun b!1089522 () Bool)

(declare-fun e!689329 () Bool)

(assert (=> b!1089522 (= e!689329 e!689330)))

(assert (=> b!1089505 e!689329))

(assert (= b!1089522 b!1089523))

(assert (= b!1089505 b!1089522))

(declare-fun b!1089499 () Bool)

(declare-fun res!484277 () Bool)

(declare-fun e!689316 () Bool)

(assert (=> b!1089499 (=> res!484277 e!689316)))

(declare-datatypes ((List!10447 0))(
  ( (Nil!10431) (Cons!10431 (h!15832 (_ BitVec 16)) (t!101627 List!10447)) )
))
(declare-datatypes ((TokenValue!1842 0))(
  ( (FloatLiteralValue!3684 (text!13339 List!10447)) (TokenValueExt!1841 (__x!7424 Int)) (Broken!9210 (value!58543 List!10447)) (Object!1857) (End!1842) (Def!1842) (Underscore!1842) (Match!1842) (Else!1842) (Error!1842) (Case!1842) (If!1842) (Extends!1842) (Abstract!1842) (Class!1842) (Val!1842) (DelimiterValue!3684 (del!1902 List!10447)) (KeywordValue!1848 (value!58544 List!10447)) (CommentValue!3684 (value!58545 List!10447)) (WhitespaceValue!3684 (value!58546 List!10447)) (IndentationValue!1842 (value!58547 List!10447)) (String!12779) (Int32!1842) (Broken!9211 (value!58548 List!10447)) (Boolean!1843) (Unit!15814) (OperatorValue!1845 (op!1902 List!10447)) (IdentifierValue!3684 (value!58549 List!10447)) (IdentifierValue!3685 (value!58550 List!10447)) (WhitespaceValue!3685 (value!58551 List!10447)) (True!3684) (False!3684) (Broken!9212 (value!58552 List!10447)) (Broken!9213 (value!58553 List!10447)) (True!3685) (RightBrace!1842) (RightBracket!1842) (Colon!1842) (Null!1842) (Comma!1842) (LeftBracket!1842) (False!3685) (LeftBrace!1842) (ImaginaryLiteralValue!1842 (text!13340 List!10447)) (StringLiteralValue!5526 (value!58554 List!10447)) (EOFValue!1842 (value!58555 List!10447)) (IdentValue!1842 (value!58556 List!10447)) (DelimiterValue!3685 (value!58557 List!10447)) (DedentValue!1842 (value!58558 List!10447)) (NewLineValue!1842 (value!58559 List!10447)) (IntegerValue!5526 (value!58560 (_ BitVec 32)) (text!13341 List!10447)) (IntegerValue!5527 (value!58561 Int) (text!13342 List!10447)) (Times!1842) (Or!1842) (Equal!1842) (Minus!1842) (Broken!9214 (value!58562 List!10447)) (And!1842) (Div!1842) (LessEqual!1842) (Mod!1842) (Concat!4887) (Not!1842) (Plus!1842) (SpaceValue!1842 (value!58563 List!10447)) (IntegerValue!5528 (value!58564 Int) (text!13343 List!10447)) (StringLiteralValue!5527 (text!13344 List!10447)) (FloatLiteralValue!3685 (text!13345 List!10447)) (BytesLiteralValue!1842 (value!58565 List!10447)) (CommentValue!3685 (value!58566 List!10447)) (StringLiteralValue!5528 (value!58567 List!10447)) (ErrorTokenValue!1842 (msg!1903 List!10447)) )
))
(declare-datatypes ((Regex!3045 0))(
  ( (ElementMatch!3045 (c!184584 (_ BitVec 16))) (Concat!4888 (regOne!6602 Regex!3045) (regTwo!6602 Regex!3045)) (EmptyExpr!3045) (Star!3045 (reg!3374 Regex!3045)) (EmptyLang!3045) (Union!3045 (regOne!6603 Regex!3045) (regTwo!6603 Regex!3045)) )
))
(declare-datatypes ((String!12780 0))(
  ( (String!12781 (value!58568 String)) )
))
(declare-datatypes ((IArray!6315 0))(
  ( (IArray!6316 (innerList!3215 List!10447)) )
))
(declare-datatypes ((Conc!3155 0))(
  ( (Node!3155 (left!8926 Conc!3155) (right!9256 Conc!3155) (csize!6540 Int) (cheight!3366 Int)) (Leaf!5049 (xs!5848 IArray!6315) (csize!6541 Int)) (Empty!3155) )
))
(declare-datatypes ((BalanceConc!6324 0))(
  ( (BalanceConc!6325 (c!184585 Conc!3155)) )
))
(declare-datatypes ((TokenValueInjection!3384 0))(
  ( (TokenValueInjection!3385 (toValue!2853 Int) (toChars!2712 Int)) )
))
(declare-datatypes ((Rule!3352 0))(
  ( (Rule!3353 (regex!1776 Regex!3045) (tag!2038 String!12780) (isSeparator!1776 Bool) (transformation!1776 TokenValueInjection!3384)) )
))
(declare-datatypes ((Token!3218 0))(
  ( (Token!3219 (value!58569 TokenValue!1842) (rule!3199 Rule!3352) (size!8058 Int) (originalCharacters!2332 List!10447)) )
))
(declare-datatypes ((List!10448 0))(
  ( (Nil!10432) (Cons!10432 (h!15833 Token!3218) (t!101628 List!10448)) )
))
(declare-datatypes ((IArray!6317 0))(
  ( (IArray!6318 (innerList!3216 List!10448)) )
))
(declare-datatypes ((Conc!3156 0))(
  ( (Node!3156 (left!8927 Conc!3156) (right!9257 Conc!3156) (csize!6542 Int) (cheight!3367 Int)) (Leaf!5050 (xs!5849 IArray!6317) (csize!6543 Int)) (Empty!3156) )
))
(declare-datatypes ((List!10449 0))(
  ( (Nil!10433) (Cons!10433 (h!15834 Rule!3352) (t!101629 List!10449)) )
))
(declare-datatypes ((BalanceConc!6326 0))(
  ( (BalanceConc!6327 (c!184586 Conc!3156)) )
))
(declare-datatypes ((PrintableTokens!268 0))(
  ( (PrintableTokens!269 (rules!9063 List!10449) (tokens!1335 BalanceConc!6326)) )
))
(declare-datatypes ((tuple2!11678 0))(
  ( (tuple2!11679 (_1!6665 Int) (_2!6665 PrintableTokens!268)) )
))
(declare-datatypes ((List!10450 0))(
  ( (Nil!10434) (Cons!10434 (h!15835 tuple2!11678) (t!101630 List!10450)) )
))
(declare-datatypes ((IArray!6319 0))(
  ( (IArray!6320 (innerList!3217 List!10450)) )
))
(declare-datatypes ((Conc!3157 0))(
  ( (Node!3157 (left!8928 Conc!3157) (right!9258 Conc!3157) (csize!6544 Int) (cheight!3368 Int)) (Leaf!5051 (xs!5850 IArray!6319) (csize!6545 Int)) (Empty!3157) )
))
(declare-datatypes ((BalanceConc!6328 0))(
  ( (BalanceConc!6329 (c!184587 Conc!3157)) )
))
(declare-fun lt!364579 () BalanceConc!6328)

(declare-fun lt!364585 () tuple2!11678)

(declare-fun contains!1743 (BalanceConc!6328 tuple2!11678) Bool)

(assert (=> b!1089499 (= res!484277 (not (contains!1743 lt!364579 lt!364585)))))

(declare-fun b!1089500 () Bool)

(declare-fun e!689315 () Bool)

(declare-fun e!689311 () Bool)

(assert (=> b!1089500 (= e!689315 e!689311)))

(declare-fun res!484276 () Bool)

(assert (=> b!1089500 (=> (not res!484276) (not e!689311))))

(declare-fun lt!364580 () Int)

(assert (=> b!1089500 (= res!484276 (> lt!364580 1))))

(declare-fun objs!8 () BalanceConc!6328)

(declare-fun size!8059 (BalanceConc!6328) Int)

(assert (=> b!1089500 (= lt!364580 (size!8059 objs!8))))

(declare-fun b!1089501 () Bool)

(declare-datatypes ((Unit!15815 0))(
  ( (Unit!15816) )
))
(declare-fun e!689318 () Unit!15815)

(declare-fun err!1824 () Unit!15815)

(assert (=> b!1089501 (= e!689318 err!1824)))

(declare-fun lt!364581 () BalanceConc!6328)

(declare-fun lt!364577 () Unit!15815)

(declare-fun forallContained!478 (List!10450 Int tuple2!11678) Unit!15815)

(declare-fun list!3736 (BalanceConc!6328) List!10450)

(assert (=> b!1089501 (= lt!364577 (forallContained!478 (list!3736 lt!364581) lambda!40988 lt!364585))))

(assert (=> b!1089501 true))

(declare-fun b!1089502 () Bool)

(declare-fun e!689313 () Bool)

(declare-fun e!689320 () Bool)

(assert (=> b!1089502 (= e!689313 e!689320)))

(declare-fun res!484283 () Bool)

(assert (=> b!1089502 (=> (not res!484283) (not e!689320))))

(declare-fun lt!364582 () Bool)

(assert (=> b!1089502 (= res!484283 (not lt!364582))))

(declare-fun lt!364586 () Unit!15815)

(assert (=> b!1089502 (= lt!364586 e!689318)))

(declare-fun c!184583 () Bool)

(assert (=> b!1089502 (= c!184583 lt!364582)))

(assert (=> b!1089502 (= lt!364582 (contains!1743 lt!364581 lt!364585))))

(declare-fun b!1089504 () Bool)

(declare-fun e!689314 () Bool)

(declare-fun lt!364583 () List!10450)

(declare-fun size!8060 (List!10450) Int)

(declare-fun filter!210 (List!10450 Int) List!10450)

(assert (=> b!1089504 (= e!689314 (< (size!8060 (filter!210 lt!364583 lambda!40988)) (size!8060 lt!364583)))))

(assert (=> b!1089505 (= e!689311 e!689313)))

(declare-fun res!484280 () Bool)

(assert (=> b!1089505 (=> (not res!484280) (not e!689313))))

(assert (=> b!1089505 (= res!484280 (contains!1743 objs!8 lt!364585))))

(declare-fun filter!211 (BalanceConc!6328 Int) BalanceConc!6328)

(assert (=> b!1089505 (= lt!364579 (filter!211 objs!8 lambda!40990))))

(declare-fun lt!364587 () BalanceConc!6328)

(assert (=> b!1089505 (= lt!364587 (filter!211 objs!8 lambda!40989))))

(assert (=> b!1089505 (= lt!364581 (filter!211 objs!8 lambda!40988))))

(declare-fun apply!2021 (BalanceConc!6328 Int) tuple2!11678)

(assert (=> b!1089505 (= lt!364585 (apply!2021 objs!8 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(declare-fun b!1089506 () Bool)

(declare-fun e!689312 () Unit!15815)

(declare-fun err!1825 () Unit!15815)

(assert (=> b!1089506 (= e!689312 err!1825)))

(declare-fun lt!364584 () Unit!15815)

(assert (=> b!1089506 (= lt!364584 (forallContained!478 (list!3736 objs!8) lambda!40988 lt!364585))))

(assert (=> b!1089506 true))

(declare-fun b!1089507 () Bool)

(declare-fun e!689317 () Bool)

(declare-fun lt!364588 () List!10450)

(declare-fun contains!1744 (List!10450 tuple2!11678) Bool)

(assert (=> b!1089507 (= e!689317 (contains!1744 lt!364588 lt!364585))))

(declare-fun b!1089508 () Bool)

(assert (=> b!1089508 (= e!689320 (not e!689316))))

(declare-fun res!484279 () Bool)

(assert (=> b!1089508 (=> res!484279 e!689316)))

(assert (=> b!1089508 (= res!484279 (>= (size!8059 lt!364581) lt!364580))))

(assert (=> b!1089508 e!689314))

(declare-fun res!484282 () Bool)

(assert (=> b!1089508 (=> res!484282 e!689314)))

(declare-fun isEmpty!6644 (List!10450) Bool)

(assert (=> b!1089508 (= res!484282 (isEmpty!6644 lt!364583))))

(declare-fun lt!364578 () Unit!15815)

(declare-fun lemmaNotForallFilterShorter!19 (List!10450 Int) Unit!15815)

(assert (=> b!1089508 (= lt!364578 (lemmaNotForallFilterShorter!19 lt!364583 lambda!40988))))

(assert (=> b!1089508 (= lt!364583 (list!3736 objs!8))))

(declare-fun lt!364589 () Unit!15815)

(assert (=> b!1089508 (= lt!364589 e!689312)))

(declare-fun c!184582 () Bool)

(declare-fun forall!2312 (BalanceConc!6328 Int) Bool)

(assert (=> b!1089508 (= c!184582 (forall!2312 objs!8 lambda!40988))))

(declare-fun b!1089509 () Bool)

(declare-fun e!689319 () Bool)

(declare-fun tp!326360 () Bool)

(declare-fun inv!13352 (Conc!3157) Bool)

(assert (=> b!1089509 (= e!689319 (and (inv!13352 (c!184587 objs!8)) tp!326360))))

(declare-fun b!1089510 () Bool)

(declare-fun Unit!15817 () Unit!15815)

(assert (=> b!1089510 (= e!689318 Unit!15817)))

(declare-fun b!1089511 () Bool)

(declare-fun Unit!15818 () Unit!15815)

(assert (=> b!1089511 (= e!689312 Unit!15818)))

(declare-fun res!484278 () Bool)

(assert (=> start!93114 (=> (not res!484278) (not e!689315))))

(assert (=> start!93114 (= res!484278 (forall!2312 objs!8 lambda!40987))))

(assert (=> start!93114 e!689315))

(declare-fun inv!13353 (BalanceConc!6328) Bool)

(assert (=> start!93114 (and (inv!13353 objs!8) e!689319)))

(declare-fun b!1089503 () Bool)

(assert (=> b!1089503 (= e!689316 e!689317)))

(declare-fun res!484281 () Bool)

(assert (=> b!1089503 (=> (not res!484281) (not e!689317))))

(declare-fun forall!2313 (List!10450 Int) Bool)

(assert (=> b!1089503 (= res!484281 (forall!2313 lt!364588 lambda!40990))))

(assert (=> b!1089503 (= lt!364588 (list!3736 lt!364579))))

(assert (= (and start!93114 res!484278) b!1089500))

(assert (= (and b!1089500 res!484276) b!1089505))

(assert (= (and b!1089505 res!484280) b!1089502))

(assert (= (and b!1089502 c!184583) b!1089501))

(assert (= (and b!1089502 (not c!184583)) b!1089510))

(assert (= (and b!1089502 res!484283) b!1089508))

(assert (= (and b!1089508 c!184582) b!1089506))

(assert (= (and b!1089508 (not c!184582)) b!1089511))

(assert (= (and b!1089508 (not res!484282)) b!1089504))

(assert (= (and b!1089508 (not res!484279)) b!1089499))

(assert (= (and b!1089499 (not res!484277)) b!1089503))

(assert (= (and b!1089503 res!484281) b!1089507))

(assert (= start!93114 b!1089509))

(declare-fun m!1239857 () Bool)

(assert (=> b!1089509 m!1239857))

(declare-fun m!1239859 () Bool)

(assert (=> b!1089505 m!1239859))

(declare-fun m!1239861 () Bool)

(assert (=> b!1089505 m!1239861))

(declare-fun m!1239863 () Bool)

(assert (=> b!1089505 m!1239863))

(declare-fun m!1239865 () Bool)

(assert (=> b!1089505 m!1239865))

(declare-fun m!1239867 () Bool)

(assert (=> b!1089505 m!1239867))

(declare-fun m!1239869 () Bool)

(assert (=> b!1089502 m!1239869))

(declare-fun m!1239871 () Bool)

(assert (=> b!1089506 m!1239871))

(assert (=> b!1089506 m!1239871))

(declare-fun m!1239873 () Bool)

(assert (=> b!1089506 m!1239873))

(declare-fun m!1239875 () Bool)

(assert (=> start!93114 m!1239875))

(declare-fun m!1239877 () Bool)

(assert (=> start!93114 m!1239877))

(declare-fun m!1239879 () Bool)

(assert (=> b!1089503 m!1239879))

(declare-fun m!1239881 () Bool)

(assert (=> b!1089503 m!1239881))

(declare-fun m!1239883 () Bool)

(assert (=> b!1089507 m!1239883))

(declare-fun m!1239885 () Bool)

(assert (=> b!1089500 m!1239885))

(declare-fun m!1239887 () Bool)

(assert (=> b!1089504 m!1239887))

(assert (=> b!1089504 m!1239887))

(declare-fun m!1239889 () Bool)

(assert (=> b!1089504 m!1239889))

(declare-fun m!1239891 () Bool)

(assert (=> b!1089504 m!1239891))

(declare-fun m!1239893 () Bool)

(assert (=> b!1089508 m!1239893))

(declare-fun m!1239895 () Bool)

(assert (=> b!1089508 m!1239895))

(assert (=> b!1089508 m!1239871))

(declare-fun m!1239897 () Bool)

(assert (=> b!1089508 m!1239897))

(declare-fun m!1239899 () Bool)

(assert (=> b!1089508 m!1239899))

(declare-fun m!1239901 () Bool)

(assert (=> b!1089499 m!1239901))

(declare-fun m!1239903 () Bool)

(assert (=> b!1089501 m!1239903))

(assert (=> b!1089501 m!1239903))

(declare-fun m!1239905 () Bool)

(assert (=> b!1089501 m!1239905))

(check-sat (not b!1089499) (not b!1089501) (not b!1089503) (not b!1089506) (not b!1089520) (not b!1089507) (not b!1089523) (not b!1089509) (not b!1089522) (not b!1089500) (not b!1089518) (not start!93114) (not b!1089519) (not b!1089502) (not b!1089505) (not b!1089508) (not b!1089521) (not b!1089504))
(check-sat)
(get-model)

(declare-fun d!306328 () Bool)

(declare-fun dynLambda!4559 (Int tuple2!11678) Bool)

(assert (=> d!306328 (dynLambda!4559 lambda!40988 lt!364585)))

(declare-fun lt!364592 () Unit!15815)

(declare-fun choose!6996 (List!10450 Int tuple2!11678) Unit!15815)

(assert (=> d!306328 (= lt!364592 (choose!6996 (list!3736 lt!364581) lambda!40988 lt!364585))))

(declare-fun e!689333 () Bool)

(assert (=> d!306328 e!689333))

(declare-fun res!484286 () Bool)

(assert (=> d!306328 (=> (not res!484286) (not e!689333))))

(assert (=> d!306328 (= res!484286 (forall!2313 (list!3736 lt!364581) lambda!40988))))

(assert (=> d!306328 (= (forallContained!478 (list!3736 lt!364581) lambda!40988 lt!364585) lt!364592)))

(declare-fun b!1089526 () Bool)

(assert (=> b!1089526 (= e!689333 (contains!1744 (list!3736 lt!364581) lt!364585))))

(assert (= (and d!306328 res!484286) b!1089526))

(declare-fun b_lambda!30371 () Bool)

(assert (=> (not b_lambda!30371) (not d!306328)))

(declare-fun m!1239907 () Bool)

(assert (=> d!306328 m!1239907))

(assert (=> d!306328 m!1239903))

(declare-fun m!1239909 () Bool)

(assert (=> d!306328 m!1239909))

(assert (=> d!306328 m!1239903))

(declare-fun m!1239911 () Bool)

(assert (=> d!306328 m!1239911))

(assert (=> b!1089526 m!1239903))

(declare-fun m!1239913 () Bool)

(assert (=> b!1089526 m!1239913))

(assert (=> b!1089501 d!306328))

(declare-fun d!306330 () Bool)

(declare-fun list!3738 (Conc!3157) List!10450)

(assert (=> d!306330 (= (list!3736 lt!364581) (list!3738 (c!184587 lt!364581)))))

(declare-fun bs!257817 () Bool)

(assert (= bs!257817 d!306330))

(declare-fun m!1239915 () Bool)

(assert (=> bs!257817 m!1239915))

(assert (=> b!1089501 d!306330))

(declare-fun d!306332 () Bool)

(declare-fun lt!364595 () Int)

(assert (=> d!306332 (= lt!364595 (size!8060 (list!3736 objs!8)))))

(declare-fun size!8062 (Conc!3157) Int)

(assert (=> d!306332 (= lt!364595 (size!8062 (c!184587 objs!8)))))

(assert (=> d!306332 (= (size!8059 objs!8) lt!364595)))

(declare-fun bs!257818 () Bool)

(assert (= bs!257818 d!306332))

(assert (=> bs!257818 m!1239871))

(assert (=> bs!257818 m!1239871))

(declare-fun m!1239917 () Bool)

(assert (=> bs!257818 m!1239917))

(declare-fun m!1239919 () Bool)

(assert (=> bs!257818 m!1239919))

(assert (=> b!1089500 d!306332))

(declare-fun d!306334 () Bool)

(declare-fun lt!364598 () Bool)

(assert (=> d!306334 (= lt!364598 (contains!1744 (list!3736 lt!364579) lt!364585))))

(declare-fun contains!1746 (Conc!3157 tuple2!11678) Bool)

(assert (=> d!306334 (= lt!364598 (contains!1746 (c!184587 lt!364579) lt!364585))))

(assert (=> d!306334 (= (contains!1743 lt!364579 lt!364585) lt!364598)))

(declare-fun bs!257819 () Bool)

(assert (= bs!257819 d!306334))

(assert (=> bs!257819 m!1239881))

(assert (=> bs!257819 m!1239881))

(declare-fun m!1239921 () Bool)

(assert (=> bs!257819 m!1239921))

(declare-fun m!1239923 () Bool)

(assert (=> bs!257819 m!1239923))

(assert (=> b!1089499 d!306334))

(declare-fun d!306338 () Bool)

(declare-fun c!184590 () Bool)

(get-info :version)

(assert (=> d!306338 (= c!184590 ((_ is Node!3157) (c!184587 objs!8)))))

(declare-fun e!689338 () Bool)

(assert (=> d!306338 (= (inv!13352 (c!184587 objs!8)) e!689338)))

(declare-fun b!1089533 () Bool)

(declare-fun inv!13356 (Conc!3157) Bool)

(assert (=> b!1089533 (= e!689338 (inv!13356 (c!184587 objs!8)))))

(declare-fun b!1089534 () Bool)

(declare-fun e!689339 () Bool)

(assert (=> b!1089534 (= e!689338 e!689339)))

(declare-fun res!484289 () Bool)

(assert (=> b!1089534 (= res!484289 (not ((_ is Leaf!5051) (c!184587 objs!8))))))

(assert (=> b!1089534 (=> res!484289 e!689339)))

(declare-fun b!1089535 () Bool)

(declare-fun inv!13357 (Conc!3157) Bool)

(assert (=> b!1089535 (= e!689339 (inv!13357 (c!184587 objs!8)))))

(assert (= (and d!306338 c!184590) b!1089533))

(assert (= (and d!306338 (not c!184590)) b!1089534))

(assert (= (and b!1089534 (not res!484289)) b!1089535))

(declare-fun m!1239935 () Bool)

(assert (=> b!1089533 m!1239935))

(declare-fun m!1239937 () Bool)

(assert (=> b!1089535 m!1239937))

(assert (=> b!1089509 d!306338))

(declare-fun d!306346 () Bool)

(declare-fun lt!364612 () Bool)

(assert (=> d!306346 (= lt!364612 (forall!2313 (list!3736 objs!8) lambda!40987))))

(declare-fun forall!2315 (Conc!3157 Int) Bool)

(assert (=> d!306346 (= lt!364612 (forall!2315 (c!184587 objs!8) lambda!40987))))

(assert (=> d!306346 (= (forall!2312 objs!8 lambda!40987) lt!364612)))

(declare-fun bs!257824 () Bool)

(assert (= bs!257824 d!306346))

(assert (=> bs!257824 m!1239871))

(assert (=> bs!257824 m!1239871))

(declare-fun m!1239943 () Bool)

(assert (=> bs!257824 m!1239943))

(declare-fun m!1239945 () Bool)

(assert (=> bs!257824 m!1239945))

(assert (=> start!93114 d!306346))

(declare-fun d!306350 () Bool)

(declare-fun isBalanced!878 (Conc!3157) Bool)

(assert (=> d!306350 (= (inv!13353 objs!8) (isBalanced!878 (c!184587 objs!8)))))

(declare-fun bs!257825 () Bool)

(assert (= bs!257825 d!306350))

(declare-fun m!1239963 () Bool)

(assert (=> bs!257825 m!1239963))

(assert (=> start!93114 d!306350))

(declare-fun d!306356 () Bool)

(assert (=> d!306356 (= (list!3736 objs!8) (list!3738 (c!184587 objs!8)))))

(declare-fun bs!257826 () Bool)

(assert (= bs!257826 d!306356))

(declare-fun m!1239965 () Bool)

(assert (=> bs!257826 m!1239965))

(assert (=> b!1089508 d!306356))

(declare-fun d!306358 () Bool)

(declare-fun lt!364615 () Bool)

(assert (=> d!306358 (= lt!364615 (forall!2313 (list!3736 objs!8) lambda!40988))))

(assert (=> d!306358 (= lt!364615 (forall!2315 (c!184587 objs!8) lambda!40988))))

(assert (=> d!306358 (= (forall!2312 objs!8 lambda!40988) lt!364615)))

(declare-fun bs!257827 () Bool)

(assert (= bs!257827 d!306358))

(assert (=> bs!257827 m!1239871))

(assert (=> bs!257827 m!1239871))

(declare-fun m!1239967 () Bool)

(assert (=> bs!257827 m!1239967))

(declare-fun m!1239969 () Bool)

(assert (=> bs!257827 m!1239969))

(assert (=> b!1089508 d!306358))

(declare-fun d!306360 () Bool)

(declare-fun e!689353 () Bool)

(assert (=> d!306360 e!689353))

(declare-fun res!484303 () Bool)

(assert (=> d!306360 (=> res!484303 e!689353)))

(assert (=> d!306360 (= res!484303 (isEmpty!6644 lt!364583))))

(declare-fun lt!364625 () Unit!15815)

(declare-fun choose!6998 (List!10450 Int) Unit!15815)

(assert (=> d!306360 (= lt!364625 (choose!6998 lt!364583 lambda!40988))))

(assert (=> d!306360 (not (forall!2313 lt!364583 lambda!40988))))

(assert (=> d!306360 (= (lemmaNotForallFilterShorter!19 lt!364583 lambda!40988) lt!364625)))

(declare-fun b!1089549 () Bool)

(assert (=> b!1089549 (= e!689353 (< (size!8060 (filter!210 lt!364583 lambda!40988)) (size!8060 lt!364583)))))

(assert (= (and d!306360 (not res!484303)) b!1089549))

(assert (=> d!306360 m!1239893))

(declare-fun m!1239993 () Bool)

(assert (=> d!306360 m!1239993))

(declare-fun m!1239995 () Bool)

(assert (=> d!306360 m!1239995))

(assert (=> b!1089549 m!1239887))

(assert (=> b!1089549 m!1239887))

(assert (=> b!1089549 m!1239889))

(assert (=> b!1089549 m!1239891))

(assert (=> b!1089508 d!306360))

(declare-fun d!306370 () Bool)

(assert (=> d!306370 (= (isEmpty!6644 lt!364583) ((_ is Nil!10434) lt!364583))))

(assert (=> b!1089508 d!306370))

(declare-fun d!306374 () Bool)

(declare-fun lt!364629 () Int)

(assert (=> d!306374 (= lt!364629 (size!8060 (list!3736 lt!364581)))))

(assert (=> d!306374 (= lt!364629 (size!8062 (c!184587 lt!364581)))))

(assert (=> d!306374 (= (size!8059 lt!364581) lt!364629)))

(declare-fun bs!257829 () Bool)

(assert (= bs!257829 d!306374))

(assert (=> bs!257829 m!1239903))

(assert (=> bs!257829 m!1239903))

(declare-fun m!1239999 () Bool)

(assert (=> bs!257829 m!1239999))

(declare-fun m!1240001 () Bool)

(assert (=> bs!257829 m!1240001))

(assert (=> b!1089508 d!306374))

(declare-fun d!306376 () Bool)

(declare-fun lt!364636 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1506 (List!10450) (InoxSet tuple2!11678))

(assert (=> d!306376 (= lt!364636 (select (content!1506 lt!364588) lt!364585))))

(declare-fun e!689372 () Bool)

(assert (=> d!306376 (= lt!364636 e!689372)))

(declare-fun res!484314 () Bool)

(assert (=> d!306376 (=> (not res!484314) (not e!689372))))

(assert (=> d!306376 (= res!484314 ((_ is Cons!10434) lt!364588))))

(assert (=> d!306376 (= (contains!1744 lt!364588 lt!364585) lt!364636)))

(declare-fun b!1089580 () Bool)

(declare-fun e!689371 () Bool)

(assert (=> b!1089580 (= e!689372 e!689371)))

(declare-fun res!484315 () Bool)

(assert (=> b!1089580 (=> res!484315 e!689371)))

(assert (=> b!1089580 (= res!484315 (= (h!15835 lt!364588) lt!364585))))

(declare-fun b!1089581 () Bool)

(assert (=> b!1089581 (= e!689371 (contains!1744 (t!101630 lt!364588) lt!364585))))

(assert (= (and d!306376 res!484314) b!1089580))

(assert (= (and b!1089580 (not res!484315)) b!1089581))

(declare-fun m!1240017 () Bool)

(assert (=> d!306376 m!1240017))

(declare-fun m!1240019 () Bool)

(assert (=> d!306376 m!1240019))

(declare-fun m!1240021 () Bool)

(assert (=> b!1089581 m!1240021))

(assert (=> b!1089507 d!306376))

(declare-fun d!306382 () Bool)

(assert (=> d!306382 (dynLambda!4559 lambda!40988 lt!364585)))

(declare-fun lt!364637 () Unit!15815)

(assert (=> d!306382 (= lt!364637 (choose!6996 (list!3736 objs!8) lambda!40988 lt!364585))))

(declare-fun e!689377 () Bool)

(assert (=> d!306382 e!689377))

(declare-fun res!484320 () Bool)

(assert (=> d!306382 (=> (not res!484320) (not e!689377))))

(assert (=> d!306382 (= res!484320 (forall!2313 (list!3736 objs!8) lambda!40988))))

(assert (=> d!306382 (= (forallContained!478 (list!3736 objs!8) lambda!40988 lt!364585) lt!364637)))

(declare-fun b!1089586 () Bool)

(assert (=> b!1089586 (= e!689377 (contains!1744 (list!3736 objs!8) lt!364585))))

(assert (= (and d!306382 res!484320) b!1089586))

(declare-fun b_lambda!30379 () Bool)

(assert (=> (not b_lambda!30379) (not d!306382)))

(assert (=> d!306382 m!1239907))

(assert (=> d!306382 m!1239871))

(declare-fun m!1240029 () Bool)

(assert (=> d!306382 m!1240029))

(assert (=> d!306382 m!1239871))

(assert (=> d!306382 m!1239967))

(assert (=> b!1089586 m!1239871))

(declare-fun m!1240031 () Bool)

(assert (=> b!1089586 m!1240031))

(assert (=> b!1089506 d!306382))

(assert (=> b!1089506 d!306356))

(declare-fun d!306388 () Bool)

(declare-fun e!689415 () Bool)

(assert (=> d!306388 e!689415))

(declare-fun res!484338 () Bool)

(assert (=> d!306388 (=> (not res!484338) (not e!689415))))

(declare-fun filter!213 (Conc!3157 Int) Conc!3157)

(assert (=> d!306388 (= res!484338 (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40989)))))

(declare-fun lt!364651 () BalanceConc!6328)

(assert (=> d!306388 (= lt!364651 (BalanceConc!6329 (filter!213 (c!184587 objs!8) lambda!40989)))))

(assert (=> d!306388 (= (filter!211 objs!8 lambda!40989) lt!364651)))

(declare-fun b!1089635 () Bool)

(assert (=> b!1089635 (= e!689415 (= (list!3736 lt!364651) (filter!210 (list!3736 objs!8) lambda!40989)))))

(assert (= (and d!306388 res!484338) b!1089635))

(declare-fun m!1240065 () Bool)

(assert (=> d!306388 m!1240065))

(assert (=> d!306388 m!1240065))

(declare-fun m!1240067 () Bool)

(assert (=> d!306388 m!1240067))

(declare-fun m!1240069 () Bool)

(assert (=> b!1089635 m!1240069))

(assert (=> b!1089635 m!1239871))

(assert (=> b!1089635 m!1239871))

(declare-fun m!1240071 () Bool)

(assert (=> b!1089635 m!1240071))

(assert (=> b!1089505 d!306388))

(declare-fun d!306408 () Bool)

(declare-fun e!689428 () Bool)

(assert (=> d!306408 e!689428))

(declare-fun res!484339 () Bool)

(assert (=> d!306408 (=> (not res!484339) (not e!689428))))

(assert (=> d!306408 (= res!484339 (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40988)))))

(declare-fun lt!364652 () BalanceConc!6328)

(assert (=> d!306408 (= lt!364652 (BalanceConc!6329 (filter!213 (c!184587 objs!8) lambda!40988)))))

(assert (=> d!306408 (= (filter!211 objs!8 lambda!40988) lt!364652)))

(declare-fun b!1089653 () Bool)

(assert (=> b!1089653 (= e!689428 (= (list!3736 lt!364652) (filter!210 (list!3736 objs!8) lambda!40988)))))

(assert (= (and d!306408 res!484339) b!1089653))

(declare-fun m!1240073 () Bool)

(assert (=> d!306408 m!1240073))

(assert (=> d!306408 m!1240073))

(declare-fun m!1240075 () Bool)

(assert (=> d!306408 m!1240075))

(declare-fun m!1240077 () Bool)

(assert (=> b!1089653 m!1240077))

(assert (=> b!1089653 m!1239871))

(assert (=> b!1089653 m!1239871))

(declare-fun m!1240079 () Bool)

(assert (=> b!1089653 m!1240079))

(assert (=> b!1089505 d!306408))

(declare-fun d!306410 () Bool)

(declare-fun lt!364655 () tuple2!11678)

(declare-fun apply!2024 (List!10450 Int) tuple2!11678)

(assert (=> d!306410 (= lt!364655 (apply!2024 (list!3736 objs!8) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(declare-fun apply!2025 (Conc!3157 Int) tuple2!11678)

(assert (=> d!306410 (= lt!364655 (apply!2025 (c!184587 objs!8) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(declare-fun e!689433 () Bool)

(assert (=> d!306410 e!689433))

(declare-fun res!484342 () Bool)

(assert (=> d!306410 (=> (not res!484342) (not e!689433))))

(assert (=> d!306410 (= res!484342 (<= 0 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(assert (=> d!306410 (= (apply!2021 objs!8 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))) lt!364655)))

(declare-fun b!1089659 () Bool)

(assert (=> b!1089659 (= e!689433 (< (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) (size!8059 objs!8)))))

(assert (= (and d!306410 res!484342) b!1089659))

(assert (=> d!306410 m!1239871))

(assert (=> d!306410 m!1239871))

(declare-fun m!1240087 () Bool)

(assert (=> d!306410 m!1240087))

(declare-fun m!1240089 () Bool)

(assert (=> d!306410 m!1240089))

(assert (=> b!1089659 m!1239885))

(assert (=> b!1089505 d!306410))

(declare-fun d!306418 () Bool)

(declare-fun e!689434 () Bool)

(assert (=> d!306418 e!689434))

(declare-fun res!484343 () Bool)

(assert (=> d!306418 (=> (not res!484343) (not e!689434))))

(assert (=> d!306418 (= res!484343 (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40990)))))

(declare-fun lt!364656 () BalanceConc!6328)

(assert (=> d!306418 (= lt!364656 (BalanceConc!6329 (filter!213 (c!184587 objs!8) lambda!40990)))))

(assert (=> d!306418 (= (filter!211 objs!8 lambda!40990) lt!364656)))

(declare-fun b!1089660 () Bool)

(assert (=> b!1089660 (= e!689434 (= (list!3736 lt!364656) (filter!210 (list!3736 objs!8) lambda!40990)))))

(assert (= (and d!306418 res!484343) b!1089660))

(declare-fun m!1240091 () Bool)

(assert (=> d!306418 m!1240091))

(assert (=> d!306418 m!1240091))

(declare-fun m!1240093 () Bool)

(assert (=> d!306418 m!1240093))

(declare-fun m!1240095 () Bool)

(assert (=> b!1089660 m!1240095))

(assert (=> b!1089660 m!1239871))

(assert (=> b!1089660 m!1239871))

(declare-fun m!1240097 () Bool)

(assert (=> b!1089660 m!1240097))

(assert (=> b!1089505 d!306418))

(declare-fun d!306420 () Bool)

(declare-fun lt!364657 () Bool)

(assert (=> d!306420 (= lt!364657 (contains!1744 (list!3736 objs!8) lt!364585))))

(assert (=> d!306420 (= lt!364657 (contains!1746 (c!184587 objs!8) lt!364585))))

(assert (=> d!306420 (= (contains!1743 objs!8 lt!364585) lt!364657)))

(declare-fun bs!257839 () Bool)

(assert (= bs!257839 d!306420))

(assert (=> bs!257839 m!1239871))

(assert (=> bs!257839 m!1239871))

(assert (=> bs!257839 m!1240031))

(declare-fun m!1240099 () Bool)

(assert (=> bs!257839 m!1240099))

(assert (=> b!1089505 d!306420))

(declare-fun d!306422 () Bool)

(declare-fun lt!364660 () Int)

(assert (=> d!306422 (>= lt!364660 0)))

(declare-fun e!689437 () Int)

(assert (=> d!306422 (= lt!364660 e!689437)))

(declare-fun c!184608 () Bool)

(assert (=> d!306422 (= c!184608 ((_ is Nil!10434) (filter!210 lt!364583 lambda!40988)))))

(assert (=> d!306422 (= (size!8060 (filter!210 lt!364583 lambda!40988)) lt!364660)))

(declare-fun b!1089665 () Bool)

(assert (=> b!1089665 (= e!689437 0)))

(declare-fun b!1089666 () Bool)

(assert (=> b!1089666 (= e!689437 (+ 1 (size!8060 (t!101630 (filter!210 lt!364583 lambda!40988)))))))

(assert (= (and d!306422 c!184608) b!1089665))

(assert (= (and d!306422 (not c!184608)) b!1089666))

(declare-fun m!1240101 () Bool)

(assert (=> b!1089666 m!1240101))

(assert (=> b!1089504 d!306422))

(declare-fun d!306424 () Bool)

(declare-fun e!689446 () Bool)

(assert (=> d!306424 e!689446))

(declare-fun res!484349 () Bool)

(assert (=> d!306424 (=> (not res!484349) (not e!689446))))

(declare-fun lt!364663 () List!10450)

(assert (=> d!306424 (= res!484349 (<= (size!8060 lt!364663) (size!8060 lt!364583)))))

(declare-fun e!689444 () List!10450)

(assert (=> d!306424 (= lt!364663 e!689444)))

(declare-fun c!184614 () Bool)

(assert (=> d!306424 (= c!184614 ((_ is Nil!10434) lt!364583))))

(assert (=> d!306424 (= (filter!210 lt!364583 lambda!40988) lt!364663)))

(declare-fun b!1089679 () Bool)

(declare-fun e!689445 () List!10450)

(assert (=> b!1089679 (= e!689444 e!689445)))

(declare-fun c!184613 () Bool)

(assert (=> b!1089679 (= c!184613 (dynLambda!4559 lambda!40988 (h!15835 lt!364583)))))

(declare-fun b!1089680 () Bool)

(declare-fun call!80230 () List!10450)

(assert (=> b!1089680 (= e!689445 call!80230)))

(declare-fun bm!80225 () Bool)

(assert (=> bm!80225 (= call!80230 (filter!210 (t!101630 lt!364583) lambda!40988))))

(declare-fun b!1089681 () Bool)

(declare-fun res!484348 () Bool)

(assert (=> b!1089681 (=> (not res!484348) (not e!689446))))

(assert (=> b!1089681 (= res!484348 (= ((_ map implies) (content!1506 lt!364663) (content!1506 lt!364583)) ((as const (InoxSet tuple2!11678)) true)))))

(declare-fun b!1089682 () Bool)

(assert (=> b!1089682 (= e!689444 Nil!10434)))

(declare-fun b!1089683 () Bool)

(assert (=> b!1089683 (= e!689446 (forall!2313 lt!364663 lambda!40988))))

(declare-fun b!1089684 () Bool)

(assert (=> b!1089684 (= e!689445 (Cons!10434 (h!15835 lt!364583) call!80230))))

(assert (= (and d!306424 c!184614) b!1089682))

(assert (= (and d!306424 (not c!184614)) b!1089679))

(assert (= (and b!1089679 c!184613) b!1089684))

(assert (= (and b!1089679 (not c!184613)) b!1089680))

(assert (= (or b!1089684 b!1089680) bm!80225))

(assert (= (and d!306424 res!484349) b!1089681))

(assert (= (and b!1089681 res!484348) b!1089683))

(declare-fun b_lambda!30391 () Bool)

(assert (=> (not b_lambda!30391) (not b!1089679)))

(declare-fun m!1240103 () Bool)

(assert (=> bm!80225 m!1240103))

(declare-fun m!1240105 () Bool)

(assert (=> b!1089681 m!1240105))

(declare-fun m!1240107 () Bool)

(assert (=> b!1089681 m!1240107))

(declare-fun m!1240109 () Bool)

(assert (=> b!1089679 m!1240109))

(declare-fun m!1240111 () Bool)

(assert (=> b!1089683 m!1240111))

(declare-fun m!1240113 () Bool)

(assert (=> d!306424 m!1240113))

(assert (=> d!306424 m!1239891))

(assert (=> b!1089504 d!306424))

(declare-fun d!306426 () Bool)

(declare-fun lt!364664 () Int)

(assert (=> d!306426 (>= lt!364664 0)))

(declare-fun e!689447 () Int)

(assert (=> d!306426 (= lt!364664 e!689447)))

(declare-fun c!184615 () Bool)

(assert (=> d!306426 (= c!184615 ((_ is Nil!10434) lt!364583))))

(assert (=> d!306426 (= (size!8060 lt!364583) lt!364664)))

(declare-fun b!1089685 () Bool)

(assert (=> b!1089685 (= e!689447 0)))

(declare-fun b!1089686 () Bool)

(assert (=> b!1089686 (= e!689447 (+ 1 (size!8060 (t!101630 lt!364583))))))

(assert (= (and d!306426 c!184615) b!1089685))

(assert (= (and d!306426 (not c!184615)) b!1089686))

(declare-fun m!1240115 () Bool)

(assert (=> b!1089686 m!1240115))

(assert (=> b!1089504 d!306426))

(declare-fun d!306428 () Bool)

(declare-fun res!484354 () Bool)

(declare-fun e!689452 () Bool)

(assert (=> d!306428 (=> res!484354 e!689452)))

(assert (=> d!306428 (= res!484354 ((_ is Nil!10434) lt!364588))))

(assert (=> d!306428 (= (forall!2313 lt!364588 lambda!40990) e!689452)))

(declare-fun b!1089691 () Bool)

(declare-fun e!689453 () Bool)

(assert (=> b!1089691 (= e!689452 e!689453)))

(declare-fun res!484355 () Bool)

(assert (=> b!1089691 (=> (not res!484355) (not e!689453))))

(assert (=> b!1089691 (= res!484355 (dynLambda!4559 lambda!40990 (h!15835 lt!364588)))))

(declare-fun b!1089692 () Bool)

(assert (=> b!1089692 (= e!689453 (forall!2313 (t!101630 lt!364588) lambda!40990))))

(assert (= (and d!306428 (not res!484354)) b!1089691))

(assert (= (and b!1089691 res!484355) b!1089692))

(declare-fun b_lambda!30393 () Bool)

(assert (=> (not b_lambda!30393) (not b!1089691)))

(declare-fun m!1240117 () Bool)

(assert (=> b!1089691 m!1240117))

(declare-fun m!1240119 () Bool)

(assert (=> b!1089692 m!1240119))

(assert (=> b!1089503 d!306428))

(declare-fun d!306430 () Bool)

(assert (=> d!306430 (= (list!3736 lt!364579) (list!3738 (c!184587 lt!364579)))))

(declare-fun bs!257840 () Bool)

(assert (= bs!257840 d!306430))

(declare-fun m!1240121 () Bool)

(assert (=> bs!257840 m!1240121))

(assert (=> b!1089503 d!306430))

(declare-fun d!306432 () Bool)

(declare-fun lt!364665 () Bool)

(assert (=> d!306432 (= lt!364665 (contains!1744 (list!3736 lt!364581) lt!364585))))

(assert (=> d!306432 (= lt!364665 (contains!1746 (c!184587 lt!364581) lt!364585))))

(assert (=> d!306432 (= (contains!1743 lt!364581 lt!364585) lt!364665)))

(declare-fun bs!257841 () Bool)

(assert (= bs!257841 d!306432))

(assert (=> bs!257841 m!1239903))

(assert (=> bs!257841 m!1239903))

(assert (=> bs!257841 m!1239913))

(declare-fun m!1240123 () Bool)

(assert (=> bs!257841 m!1240123))

(assert (=> b!1089502 d!306432))

(declare-fun b!1089701 () Bool)

(declare-fun e!689458 () Bool)

(assert (=> b!1089701 (= e!689458 true)))

(declare-fun b!1089703 () Bool)

(declare-fun e!689459 () Bool)

(assert (=> b!1089703 (= e!689459 true)))

(declare-fun b!1089702 () Bool)

(assert (=> b!1089702 (= e!689458 e!689459)))

(assert (=> b!1089523 e!689458))

(assert (= (and b!1089523 ((_ is Node!3156) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089701))

(assert (= b!1089702 b!1089703))

(assert (= (and b!1089523 ((_ is Leaf!5050) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089702))

(declare-fun tp!326376 () Bool)

(declare-fun tp!326378 () Bool)

(declare-fun b!1089712 () Bool)

(declare-fun e!689464 () Bool)

(assert (=> b!1089712 (= e!689464 (and (inv!13352 (left!8928 (c!184587 objs!8))) tp!326378 (inv!13352 (right!9258 (c!184587 objs!8))) tp!326376))))

(declare-fun b!1089714 () Bool)

(declare-fun e!689465 () Bool)

(declare-fun tp!326377 () Bool)

(assert (=> b!1089714 (= e!689465 tp!326377)))

(declare-fun b!1089713 () Bool)

(declare-fun inv!13359 (IArray!6319) Bool)

(assert (=> b!1089713 (= e!689464 (and (inv!13359 (xs!5850 (c!184587 objs!8))) e!689465))))

(assert (=> b!1089509 (= tp!326360 (and (inv!13352 (c!184587 objs!8)) e!689464))))

(assert (= (and b!1089509 ((_ is Node!3157) (c!184587 objs!8))) b!1089712))

(assert (= b!1089713 b!1089714))

(assert (= (and b!1089509 ((_ is Leaf!5051) (c!184587 objs!8))) b!1089713))

(declare-fun m!1240125 () Bool)

(assert (=> b!1089712 m!1240125))

(declare-fun m!1240127 () Bool)

(assert (=> b!1089712 m!1240127))

(declare-fun m!1240129 () Bool)

(assert (=> b!1089713 m!1240129))

(assert (=> b!1089509 m!1239857))

(declare-fun b!1089715 () Bool)

(declare-fun e!689466 () Bool)

(assert (=> b!1089715 (= e!689466 true)))

(declare-fun b!1089717 () Bool)

(declare-fun e!689467 () Bool)

(assert (=> b!1089717 (= e!689467 true)))

(declare-fun b!1089716 () Bool)

(assert (=> b!1089716 (= e!689466 e!689467)))

(assert (=> b!1089521 e!689466))

(assert (= (and b!1089521 ((_ is Node!3156) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089715))

(assert (= b!1089716 b!1089717))

(assert (= (and b!1089521 ((_ is Leaf!5050) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089716))

(declare-fun b!1089728 () Bool)

(declare-fun e!689476 () Bool)

(assert (=> b!1089728 (= e!689476 true)))

(declare-fun b!1089727 () Bool)

(declare-fun e!689475 () Bool)

(assert (=> b!1089727 (= e!689475 e!689476)))

(declare-fun b!1089726 () Bool)

(declare-fun e!689474 () Bool)

(assert (=> b!1089726 (= e!689474 e!689475)))

(assert (=> b!1089520 e!689474))

(assert (= b!1089727 b!1089728))

(assert (= b!1089726 b!1089727))

(assert (= (and b!1089520 ((_ is Cons!10433) (rules!9063 (_2!6665 lt!364585)))) b!1089726))

(declare-fun order!6269 () Int)

(declare-fun order!6267 () Int)

(declare-fun dynLambda!4563 (Int Int) Int)

(declare-fun dynLambda!4564 (Int Int) Int)

(assert (=> b!1089728 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40989))))

(declare-fun order!6271 () Int)

(declare-fun dynLambda!4565 (Int Int) Int)

(assert (=> b!1089728 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40989))))

(declare-fun b!1089729 () Bool)

(declare-fun e!689477 () Bool)

(assert (=> b!1089729 (= e!689477 true)))

(declare-fun b!1089731 () Bool)

(declare-fun e!689478 () Bool)

(assert (=> b!1089731 (= e!689478 true)))

(declare-fun b!1089730 () Bool)

(assert (=> b!1089730 (= e!689477 e!689478)))

(assert (=> b!1089519 e!689477))

(assert (= (and b!1089519 ((_ is Node!3156) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089729))

(assert (= b!1089730 b!1089731))

(assert (= (and b!1089519 ((_ is Leaf!5050) (c!184586 (tokens!1335 (_2!6665 lt!364585))))) b!1089730))

(declare-fun b!1089734 () Bool)

(declare-fun e!689481 () Bool)

(assert (=> b!1089734 (= e!689481 true)))

(declare-fun b!1089733 () Bool)

(declare-fun e!689480 () Bool)

(assert (=> b!1089733 (= e!689480 e!689481)))

(declare-fun b!1089732 () Bool)

(declare-fun e!689479 () Bool)

(assert (=> b!1089732 (= e!689479 e!689480)))

(assert (=> b!1089518 e!689479))

(assert (= b!1089733 b!1089734))

(assert (= b!1089732 b!1089733))

(assert (= (and b!1089518 ((_ is Cons!10433) (rules!9063 (_2!6665 lt!364585)))) b!1089732))

(assert (=> b!1089734 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40988))))

(assert (=> b!1089734 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40988))))

(declare-fun b!1089737 () Bool)

(declare-fun e!689484 () Bool)

(assert (=> b!1089737 (= e!689484 true)))

(declare-fun b!1089736 () Bool)

(declare-fun e!689483 () Bool)

(assert (=> b!1089736 (= e!689483 e!689484)))

(declare-fun b!1089735 () Bool)

(declare-fun e!689482 () Bool)

(assert (=> b!1089735 (= e!689482 e!689483)))

(assert (=> b!1089522 e!689482))

(assert (= b!1089736 b!1089737))

(assert (= b!1089735 b!1089736))

(assert (= (and b!1089522 ((_ is Cons!10433) (rules!9063 (_2!6665 lt!364585)))) b!1089735))

(assert (=> b!1089737 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40990))))

(assert (=> b!1089737 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (rules!9063 (_2!6665 lt!364585)))))) (dynLambda!4564 order!6269 lambda!40990))))

(declare-fun b_lambda!30395 () Bool)

(assert (= b_lambda!30379 (or b!1089505 b_lambda!30395)))

(declare-fun bs!257842 () Bool)

(declare-fun d!306434 () Bool)

(assert (= bs!257842 (and d!306434 b!1089505)))

(assert (=> bs!257842 (= (dynLambda!4559 lambda!40988 lt!364585) (< (_1!6665 lt!364585) (_1!6665 lt!364585)))))

(assert (=> d!306382 d!306434))

(declare-fun b_lambda!30397 () Bool)

(assert (= b_lambda!30393 (or b!1089505 b_lambda!30397)))

(declare-fun bs!257843 () Bool)

(declare-fun d!306436 () Bool)

(assert (= bs!257843 (and d!306436 b!1089505)))

(assert (=> bs!257843 (= (dynLambda!4559 lambda!40990 (h!15835 lt!364588)) (> (_1!6665 (h!15835 lt!364588)) (_1!6665 lt!364585)))))

(assert (=> b!1089691 d!306436))

(declare-fun b_lambda!30399 () Bool)

(assert (= b_lambda!30371 (or b!1089505 b_lambda!30399)))

(assert (=> d!306328 d!306434))

(declare-fun b_lambda!30401 () Bool)

(assert (= b_lambda!30391 (or b!1089505 b_lambda!30401)))

(declare-fun bs!257844 () Bool)

(declare-fun d!306438 () Bool)

(assert (= bs!257844 (and d!306438 b!1089505)))

(assert (=> bs!257844 (= (dynLambda!4559 lambda!40988 (h!15835 lt!364583)) (< (_1!6665 (h!15835 lt!364583)) (_1!6665 lt!364585)))))

(assert (=> b!1089679 d!306438))

(check-sat (not b!1089653) (not d!306388) (not b!1089681) (not b!1089660) (not b!1089729) (not b!1089526) (not b!1089731) (not b!1089586) (not d!306430) (not b_lambda!30401) (not b!1089713) (not b!1089686) (not b!1089549) (not d!306330) (not b!1089714) (not b!1089726) (not b!1089659) (not b!1089692) (not d!306332) (not d!306376) (not b!1089703) (not d!306350) (not b_lambda!30395) (not d!306432) (not d!306360) (not b!1089533) (not d!306328) (not d!306420) (not b!1089683) (not d!306418) (not b!1089635) (not d!306410) (not bm!80225) (not b!1089715) (not d!306356) (not b!1089712) (not d!306382) (not d!306346) (not d!306424) (not b_lambda!30397) (not b_lambda!30399) (not b!1089666) (not b!1089732) (not d!306374) (not d!306334) (not b!1089735) (not b!1089717) (not d!306408) (not b!1089581) (not b!1089701) (not b!1089535) (not d!306358) (not b!1089509))
(check-sat)
(get-model)

(declare-fun b!1090060 () Bool)

(declare-fun e!689686 () List!10450)

(declare-fun ++!2833 (List!10450 List!10450) List!10450)

(assert (=> b!1090060 (= e!689686 (++!2833 (list!3738 (left!8928 (c!184587 lt!364581))) (list!3738 (right!9258 (c!184587 lt!364581)))))))

(declare-fun b!1090059 () Bool)

(declare-fun list!3740 (IArray!6319) List!10450)

(assert (=> b!1090059 (= e!689686 (list!3740 (xs!5850 (c!184587 lt!364581))))))

(declare-fun b!1090057 () Bool)

(declare-fun e!689685 () List!10450)

(assert (=> b!1090057 (= e!689685 Nil!10434)))

(declare-fun b!1090058 () Bool)

(assert (=> b!1090058 (= e!689685 e!689686)))

(declare-fun c!184687 () Bool)

(assert (=> b!1090058 (= c!184687 ((_ is Leaf!5051) (c!184587 lt!364581)))))

(declare-fun d!306544 () Bool)

(declare-fun c!184686 () Bool)

(assert (=> d!306544 (= c!184686 ((_ is Empty!3157) (c!184587 lt!364581)))))

(assert (=> d!306544 (= (list!3738 (c!184587 lt!364581)) e!689685)))

(assert (= (and d!306544 c!184686) b!1090057))

(assert (= (and d!306544 (not c!184686)) b!1090058))

(assert (= (and b!1090058 c!184687) b!1090059))

(assert (= (and b!1090058 (not c!184687)) b!1090060))

(declare-fun m!1240469 () Bool)

(assert (=> b!1090060 m!1240469))

(declare-fun m!1240471 () Bool)

(assert (=> b!1090060 m!1240471))

(assert (=> b!1090060 m!1240469))

(assert (=> b!1090060 m!1240471))

(declare-fun m!1240473 () Bool)

(assert (=> b!1090060 m!1240473))

(declare-fun m!1240475 () Bool)

(assert (=> b!1090059 m!1240475))

(assert (=> d!306330 d!306544))

(declare-fun d!306562 () Bool)

(assert (=> d!306562 (= (list!3736 lt!364656) (list!3738 (c!184587 lt!364656)))))

(declare-fun bs!257861 () Bool)

(assert (= bs!257861 d!306562))

(declare-fun m!1240477 () Bool)

(assert (=> bs!257861 m!1240477))

(assert (=> b!1089660 d!306562))

(declare-fun d!306564 () Bool)

(declare-fun e!689689 () Bool)

(assert (=> d!306564 e!689689))

(declare-fun res!484470 () Bool)

(assert (=> d!306564 (=> (not res!484470) (not e!689689))))

(declare-fun lt!364720 () List!10450)

(assert (=> d!306564 (= res!484470 (<= (size!8060 lt!364720) (size!8060 (list!3736 objs!8))))))

(declare-fun e!689687 () List!10450)

(assert (=> d!306564 (= lt!364720 e!689687)))

(declare-fun c!184689 () Bool)

(assert (=> d!306564 (= c!184689 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306564 (= (filter!210 (list!3736 objs!8) lambda!40990) lt!364720)))

(declare-fun b!1090061 () Bool)

(declare-fun e!689688 () List!10450)

(assert (=> b!1090061 (= e!689687 e!689688)))

(declare-fun c!184688 () Bool)

(assert (=> b!1090061 (= c!184688 (dynLambda!4559 lambda!40990 (h!15835 (list!3736 objs!8))))))

(declare-fun b!1090062 () Bool)

(declare-fun call!80238 () List!10450)

(assert (=> b!1090062 (= e!689688 call!80238)))

(declare-fun bm!80233 () Bool)

(assert (=> bm!80233 (= call!80238 (filter!210 (t!101630 (list!3736 objs!8)) lambda!40990))))

(declare-fun b!1090063 () Bool)

(declare-fun res!484469 () Bool)

(assert (=> b!1090063 (=> (not res!484469) (not e!689689))))

(assert (=> b!1090063 (= res!484469 (= ((_ map implies) (content!1506 lt!364720) (content!1506 (list!3736 objs!8))) ((as const (InoxSet tuple2!11678)) true)))))

(declare-fun b!1090064 () Bool)

(assert (=> b!1090064 (= e!689687 Nil!10434)))

(declare-fun b!1090065 () Bool)

(assert (=> b!1090065 (= e!689689 (forall!2313 lt!364720 lambda!40990))))

(declare-fun b!1090066 () Bool)

(assert (=> b!1090066 (= e!689688 (Cons!10434 (h!15835 (list!3736 objs!8)) call!80238))))

(assert (= (and d!306564 c!184689) b!1090064))

(assert (= (and d!306564 (not c!184689)) b!1090061))

(assert (= (and b!1090061 c!184688) b!1090066))

(assert (= (and b!1090061 (not c!184688)) b!1090062))

(assert (= (or b!1090066 b!1090062) bm!80233))

(assert (= (and d!306564 res!484470) b!1090063))

(assert (= (and b!1090063 res!484469) b!1090065))

(declare-fun b_lambda!30451 () Bool)

(assert (=> (not b_lambda!30451) (not b!1090061)))

(declare-fun m!1240479 () Bool)

(assert (=> bm!80233 m!1240479))

(declare-fun m!1240481 () Bool)

(assert (=> b!1090063 m!1240481))

(assert (=> b!1090063 m!1239871))

(declare-fun m!1240483 () Bool)

(assert (=> b!1090063 m!1240483))

(declare-fun m!1240485 () Bool)

(assert (=> b!1090061 m!1240485))

(declare-fun m!1240487 () Bool)

(assert (=> b!1090065 m!1240487))

(declare-fun m!1240489 () Bool)

(assert (=> d!306564 m!1240489))

(assert (=> d!306564 m!1239871))

(assert (=> d!306564 m!1239917))

(assert (=> b!1089660 d!306564))

(assert (=> b!1089660 d!306356))

(declare-fun d!306566 () Bool)

(declare-fun lt!364721 () Bool)

(assert (=> d!306566 (= lt!364721 (select (content!1506 (list!3736 lt!364579)) lt!364585))))

(declare-fun e!689691 () Bool)

(assert (=> d!306566 (= lt!364721 e!689691)))

(declare-fun res!484471 () Bool)

(assert (=> d!306566 (=> (not res!484471) (not e!689691))))

(assert (=> d!306566 (= res!484471 ((_ is Cons!10434) (list!3736 lt!364579)))))

(assert (=> d!306566 (= (contains!1744 (list!3736 lt!364579) lt!364585) lt!364721)))

(declare-fun b!1090067 () Bool)

(declare-fun e!689690 () Bool)

(assert (=> b!1090067 (= e!689691 e!689690)))

(declare-fun res!484472 () Bool)

(assert (=> b!1090067 (=> res!484472 e!689690)))

(assert (=> b!1090067 (= res!484472 (= (h!15835 (list!3736 lt!364579)) lt!364585))))

(declare-fun b!1090068 () Bool)

(assert (=> b!1090068 (= e!689690 (contains!1744 (t!101630 (list!3736 lt!364579)) lt!364585))))

(assert (= (and d!306566 res!484471) b!1090067))

(assert (= (and b!1090067 (not res!484472)) b!1090068))

(assert (=> d!306566 m!1239881))

(declare-fun m!1240491 () Bool)

(assert (=> d!306566 m!1240491))

(declare-fun m!1240493 () Bool)

(assert (=> d!306566 m!1240493))

(declare-fun m!1240495 () Bool)

(assert (=> b!1090068 m!1240495))

(assert (=> d!306334 d!306566))

(assert (=> d!306334 d!306430))

(declare-fun b!1090079 () Bool)

(declare-fun e!689700 () Bool)

(declare-fun e!689698 () Bool)

(assert (=> b!1090079 (= e!689700 e!689698)))

(declare-fun res!484478 () Bool)

(assert (=> b!1090079 (= res!484478 (contains!1746 (left!8928 (c!184587 lt!364579)) lt!364585))))

(assert (=> b!1090079 (=> res!484478 e!689698)))

(declare-fun b!1090080 () Bool)

(assert (=> b!1090080 (= e!689698 (contains!1746 (right!9258 (c!184587 lt!364579)) lt!364585))))

(declare-fun b!1090078 () Bool)

(declare-fun contains!1748 (IArray!6319 tuple2!11678) Bool)

(assert (=> b!1090078 (= e!689700 (contains!1748 (xs!5850 (c!184587 lt!364579)) lt!364585))))

(declare-fun d!306568 () Bool)

(declare-fun lt!364724 () Bool)

(assert (=> d!306568 (= lt!364724 (contains!1744 (list!3738 (c!184587 lt!364579)) lt!364585))))

(declare-fun e!689699 () Bool)

(assert (=> d!306568 (= lt!364724 e!689699)))

(declare-fun res!484477 () Bool)

(assert (=> d!306568 (=> (not res!484477) (not e!689699))))

(assert (=> d!306568 (= res!484477 (not ((_ is Empty!3157) (c!184587 lt!364579))))))

(assert (=> d!306568 (= (contains!1746 (c!184587 lt!364579) lt!364585) lt!364724)))

(declare-fun b!1090077 () Bool)

(assert (=> b!1090077 (= e!689699 e!689700)))

(declare-fun c!184692 () Bool)

(assert (=> b!1090077 (= c!184692 ((_ is Leaf!5051) (c!184587 lt!364579)))))

(assert (= (and d!306568 res!484477) b!1090077))

(assert (= (and b!1090077 c!184692) b!1090078))

(assert (= (and b!1090077 (not c!184692)) b!1090079))

(assert (= (and b!1090079 (not res!484478)) b!1090080))

(declare-fun m!1240497 () Bool)

(assert (=> b!1090079 m!1240497))

(declare-fun m!1240499 () Bool)

(assert (=> b!1090080 m!1240499))

(declare-fun m!1240501 () Bool)

(assert (=> b!1090078 m!1240501))

(assert (=> d!306568 m!1240121))

(assert (=> d!306568 m!1240121))

(declare-fun m!1240503 () Bool)

(assert (=> d!306568 m!1240503))

(assert (=> d!306334 d!306568))

(declare-fun d!306570 () Bool)

(declare-fun lt!364725 () Bool)

(assert (=> d!306570 (= lt!364725 (select (content!1506 (list!3736 objs!8)) lt!364585))))

(declare-fun e!689702 () Bool)

(assert (=> d!306570 (= lt!364725 e!689702)))

(declare-fun res!484479 () Bool)

(assert (=> d!306570 (=> (not res!484479) (not e!689702))))

(assert (=> d!306570 (= res!484479 ((_ is Cons!10434) (list!3736 objs!8)))))

(assert (=> d!306570 (= (contains!1744 (list!3736 objs!8) lt!364585) lt!364725)))

(declare-fun b!1090081 () Bool)

(declare-fun e!689701 () Bool)

(assert (=> b!1090081 (= e!689702 e!689701)))

(declare-fun res!484480 () Bool)

(assert (=> b!1090081 (=> res!484480 e!689701)))

(assert (=> b!1090081 (= res!484480 (= (h!15835 (list!3736 objs!8)) lt!364585))))

(declare-fun b!1090082 () Bool)

(assert (=> b!1090082 (= e!689701 (contains!1744 (t!101630 (list!3736 objs!8)) lt!364585))))

(assert (= (and d!306570 res!484479) b!1090081))

(assert (= (and b!1090081 (not res!484480)) b!1090082))

(assert (=> d!306570 m!1239871))

(assert (=> d!306570 m!1240483))

(declare-fun m!1240505 () Bool)

(assert (=> d!306570 m!1240505))

(declare-fun m!1240507 () Bool)

(assert (=> b!1090082 m!1240507))

(assert (=> b!1089586 d!306570))

(assert (=> b!1089549 d!306422))

(assert (=> b!1089549 d!306424))

(assert (=> b!1089549 d!306426))

(declare-fun d!306572 () Bool)

(declare-fun lt!364726 () Int)

(assert (=> d!306572 (>= lt!364726 0)))

(declare-fun e!689703 () Int)

(assert (=> d!306572 (= lt!364726 e!689703)))

(declare-fun c!184693 () Bool)

(assert (=> d!306572 (= c!184693 ((_ is Nil!10434) lt!364663))))

(assert (=> d!306572 (= (size!8060 lt!364663) lt!364726)))

(declare-fun b!1090083 () Bool)

(assert (=> b!1090083 (= e!689703 0)))

(declare-fun b!1090084 () Bool)

(assert (=> b!1090084 (= e!689703 (+ 1 (size!8060 (t!101630 lt!364663))))))

(assert (= (and d!306572 c!184693) b!1090083))

(assert (= (and d!306572 (not c!184693)) b!1090084))

(declare-fun m!1240509 () Bool)

(assert (=> b!1090084 m!1240509))

(assert (=> d!306424 d!306572))

(assert (=> d!306424 d!306426))

(assert (=> b!1089509 d!306338))

(declare-fun d!306574 () Bool)

(declare-fun res!484481 () Bool)

(declare-fun e!689704 () Bool)

(assert (=> d!306574 (=> res!484481 e!689704)))

(assert (=> d!306574 (= res!484481 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306574 (= (forall!2313 (list!3736 objs!8) lambda!40987) e!689704)))

(declare-fun b!1090085 () Bool)

(declare-fun e!689705 () Bool)

(assert (=> b!1090085 (= e!689704 e!689705)))

(declare-fun res!484482 () Bool)

(assert (=> b!1090085 (=> (not res!484482) (not e!689705))))

(assert (=> b!1090085 (= res!484482 (dynLambda!4559 lambda!40987 (h!15835 (list!3736 objs!8))))))

(declare-fun b!1090086 () Bool)

(assert (=> b!1090086 (= e!689705 (forall!2313 (t!101630 (list!3736 objs!8)) lambda!40987))))

(assert (= (and d!306574 (not res!484481)) b!1090085))

(assert (= (and b!1090085 res!484482) b!1090086))

(declare-fun b_lambda!30453 () Bool)

(assert (=> (not b_lambda!30453) (not b!1090085)))

(declare-fun m!1240511 () Bool)

(assert (=> b!1090085 m!1240511))

(declare-fun m!1240513 () Bool)

(assert (=> b!1090086 m!1240513))

(assert (=> d!306346 d!306574))

(assert (=> d!306346 d!306356))

(declare-fun b!1090096 () Bool)

(declare-fun e!689714 () Bool)

(declare-fun forall!2317 (IArray!6319 Int) Bool)

(assert (=> b!1090096 (= e!689714 (forall!2317 (xs!5850 (c!184587 objs!8)) lambda!40987))))

(declare-fun b!1090097 () Bool)

(declare-fun e!689713 () Bool)

(assert (=> b!1090097 (= e!689714 e!689713)))

(declare-fun lt!364732 () Unit!15815)

(declare-fun lemmaForallConcat!58 (List!10450 List!10450 Int) Unit!15815)

(assert (=> b!1090097 (= lt!364732 (lemmaForallConcat!58 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) lambda!40987))))

(declare-fun res!484488 () Bool)

(assert (=> b!1090097 (= res!484488 (forall!2315 (left!8928 (c!184587 objs!8)) lambda!40987))))

(assert (=> b!1090097 (=> (not res!484488) (not e!689713))))

(declare-fun b!1090095 () Bool)

(declare-fun e!689712 () Bool)

(assert (=> b!1090095 (= e!689712 e!689714)))

(declare-fun c!184696 () Bool)

(assert (=> b!1090095 (= c!184696 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun b!1090098 () Bool)

(assert (=> b!1090098 (= e!689713 (forall!2315 (right!9258 (c!184587 objs!8)) lambda!40987))))

(declare-fun d!306576 () Bool)

(declare-fun lt!364731 () Bool)

(assert (=> d!306576 (= lt!364731 (forall!2313 (list!3738 (c!184587 objs!8)) lambda!40987))))

(assert (=> d!306576 (= lt!364731 e!689712)))

(declare-fun res!484487 () Bool)

(assert (=> d!306576 (=> res!484487 e!689712)))

(assert (=> d!306576 (= res!484487 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306576 (= (forall!2315 (c!184587 objs!8) lambda!40987) lt!364731)))

(assert (= (and d!306576 (not res!484487)) b!1090095))

(assert (= (and b!1090095 c!184696) b!1090096))

(assert (= (and b!1090095 (not c!184696)) b!1090097))

(assert (= (and b!1090097 res!484488) b!1090098))

(declare-fun m!1240515 () Bool)

(assert (=> b!1090096 m!1240515))

(declare-fun m!1240517 () Bool)

(assert (=> b!1090097 m!1240517))

(declare-fun m!1240519 () Bool)

(assert (=> b!1090097 m!1240519))

(assert (=> b!1090097 m!1240517))

(assert (=> b!1090097 m!1240519))

(declare-fun m!1240521 () Bool)

(assert (=> b!1090097 m!1240521))

(declare-fun m!1240523 () Bool)

(assert (=> b!1090097 m!1240523))

(declare-fun m!1240525 () Bool)

(assert (=> b!1090098 m!1240525))

(assert (=> d!306576 m!1239965))

(assert (=> d!306576 m!1239965))

(declare-fun m!1240527 () Bool)

(assert (=> d!306576 m!1240527))

(assert (=> d!306346 d!306576))

(declare-fun b!1090111 () Bool)

(declare-fun res!484502 () Bool)

(declare-fun e!689719 () Bool)

(assert (=> b!1090111 (=> (not res!484502) (not e!689719))))

(declare-fun isEmpty!6646 (Conc!3157) Bool)

(assert (=> b!1090111 (= res!484502 (not (isEmpty!6646 (left!8928 (filter!213 (c!184587 objs!8) lambda!40990)))))))

(declare-fun d!306578 () Bool)

(declare-fun res!484505 () Bool)

(declare-fun e!689720 () Bool)

(assert (=> d!306578 (=> res!484505 e!689720)))

(assert (=> d!306578 (= res!484505 (not ((_ is Node!3157) (filter!213 (c!184587 objs!8) lambda!40990))))))

(assert (=> d!306578 (= (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40990)) e!689720)))

(declare-fun b!1090112 () Bool)

(assert (=> b!1090112 (= e!689719 (not (isEmpty!6646 (right!9258 (filter!213 (c!184587 objs!8) lambda!40990)))))))

(declare-fun b!1090113 () Bool)

(declare-fun res!484501 () Bool)

(assert (=> b!1090113 (=> (not res!484501) (not e!689719))))

(declare-fun height!418 (Conc!3157) Int)

(assert (=> b!1090113 (= res!484501 (<= (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40990))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40990)))) 1))))

(declare-fun b!1090114 () Bool)

(declare-fun res!484506 () Bool)

(assert (=> b!1090114 (=> (not res!484506) (not e!689719))))

(assert (=> b!1090114 (= res!484506 (isBalanced!878 (right!9258 (filter!213 (c!184587 objs!8) lambda!40990))))))

(declare-fun b!1090115 () Bool)

(declare-fun res!484504 () Bool)

(assert (=> b!1090115 (=> (not res!484504) (not e!689719))))

(assert (=> b!1090115 (= res!484504 (isBalanced!878 (left!8928 (filter!213 (c!184587 objs!8) lambda!40990))))))

(declare-fun b!1090116 () Bool)

(assert (=> b!1090116 (= e!689720 e!689719)))

(declare-fun res!484503 () Bool)

(assert (=> b!1090116 (=> (not res!484503) (not e!689719))))

(assert (=> b!1090116 (= res!484503 (<= (- 1) (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40990))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40990))))))))

(assert (= (and d!306578 (not res!484505)) b!1090116))

(assert (= (and b!1090116 res!484503) b!1090113))

(assert (= (and b!1090113 res!484501) b!1090115))

(assert (= (and b!1090115 res!484504) b!1090114))

(assert (= (and b!1090114 res!484506) b!1090111))

(assert (= (and b!1090111 res!484502) b!1090112))

(declare-fun m!1240529 () Bool)

(assert (=> b!1090115 m!1240529))

(declare-fun m!1240531 () Bool)

(assert (=> b!1090112 m!1240531))

(declare-fun m!1240533 () Bool)

(assert (=> b!1090116 m!1240533))

(declare-fun m!1240535 () Bool)

(assert (=> b!1090116 m!1240535))

(assert (=> b!1090113 m!1240533))

(assert (=> b!1090113 m!1240535))

(declare-fun m!1240537 () Bool)

(assert (=> b!1090114 m!1240537))

(declare-fun m!1240539 () Bool)

(assert (=> b!1090111 m!1240539))

(assert (=> d!306418 d!306578))

(declare-fun b!1090131 () Bool)

(declare-fun e!689731 () Conc!3157)

(assert (=> b!1090131 (= e!689731 Empty!3157)))

(declare-fun b!1090132 () Bool)

(declare-fun e!689730 () Conc!3157)

(assert (=> b!1090132 (= e!689730 (c!184587 objs!8))))

(declare-fun b!1090133 () Bool)

(declare-fun c!184703 () Bool)

(declare-fun lt!364739 () IArray!6319)

(declare-fun size!8064 (IArray!6319) Int)

(assert (=> b!1090133 (= c!184703 (= (size!8064 lt!364739) 0))))

(declare-fun filter!215 (IArray!6319 Int) IArray!6319)

(assert (=> b!1090133 (= lt!364739 (filter!215 (xs!5850 (c!184587 objs!8)) lambda!40990))))

(declare-fun e!689729 () Conc!3157)

(assert (=> b!1090133 (= e!689729 e!689731)))

(declare-fun b!1090135 () Bool)

(assert (=> b!1090135 (= e!689730 e!689729)))

(declare-fun c!184704 () Bool)

(assert (=> b!1090135 (= c!184704 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun b!1090136 () Bool)

(declare-fun lt!364740 () Unit!15815)

(declare-fun lemmaFilterConcat!4 (List!10450 List!10450 Int) Unit!15815)

(assert (=> b!1090136 (= lt!364740 (lemmaFilterConcat!4 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) lambda!40990))))

(declare-fun ++!2835 (Conc!3157 Conc!3157) Conc!3157)

(assert (=> b!1090136 (= e!689729 (++!2835 (filter!213 (left!8928 (c!184587 objs!8)) lambda!40990) (filter!213 (right!9258 (c!184587 objs!8)) lambda!40990)))))

(declare-fun b!1090137 () Bool)

(assert (=> b!1090137 (= e!689731 (Leaf!5051 lt!364739 (size!8064 lt!364739)))))

(declare-fun d!306580 () Bool)

(declare-fun e!689732 () Bool)

(assert (=> d!306580 e!689732))

(declare-fun res!484509 () Bool)

(assert (=> d!306580 (=> (not res!484509) (not e!689732))))

(declare-fun lt!364741 () Conc!3157)

(assert (=> d!306580 (= res!484509 (isBalanced!878 lt!364741))))

(assert (=> d!306580 (= lt!364741 e!689730)))

(declare-fun c!184705 () Bool)

(assert (=> d!306580 (= c!184705 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306580 (isBalanced!878 (c!184587 objs!8))))

(assert (=> d!306580 (= (filter!213 (c!184587 objs!8) lambda!40990) lt!364741)))

(declare-fun b!1090134 () Bool)

(assert (=> b!1090134 (= e!689732 (= (list!3738 lt!364741) (filter!210 (list!3738 (c!184587 objs!8)) lambda!40990)))))

(assert (= (and d!306580 c!184705) b!1090132))

(assert (= (and d!306580 (not c!184705)) b!1090135))

(assert (= (and b!1090135 c!184704) b!1090133))

(assert (= (and b!1090135 (not c!184704)) b!1090136))

(assert (= (and b!1090133 c!184703) b!1090131))

(assert (= (and b!1090133 (not c!184703)) b!1090137))

(assert (= (and d!306580 res!484509) b!1090134))

(declare-fun m!1240541 () Bool)

(assert (=> b!1090136 m!1240541))

(declare-fun m!1240543 () Bool)

(assert (=> b!1090136 m!1240543))

(declare-fun m!1240545 () Bool)

(assert (=> b!1090136 m!1240545))

(assert (=> b!1090136 m!1240517))

(assert (=> b!1090136 m!1240541))

(assert (=> b!1090136 m!1240517))

(assert (=> b!1090136 m!1240519))

(declare-fun m!1240547 () Bool)

(assert (=> b!1090136 m!1240547))

(assert (=> b!1090136 m!1240519))

(assert (=> b!1090136 m!1240543))

(declare-fun m!1240549 () Bool)

(assert (=> d!306580 m!1240549))

(assert (=> d!306580 m!1239963))

(declare-fun m!1240551 () Bool)

(assert (=> b!1090133 m!1240551))

(declare-fun m!1240553 () Bool)

(assert (=> b!1090133 m!1240553))

(declare-fun m!1240555 () Bool)

(assert (=> b!1090134 m!1240555))

(assert (=> b!1090134 m!1239965))

(assert (=> b!1090134 m!1239965))

(declare-fun m!1240557 () Bool)

(assert (=> b!1090134 m!1240557))

(assert (=> b!1090137 m!1240551))

(assert (=> d!306418 d!306580))

(declare-fun d!306582 () Bool)

(declare-fun c!184706 () Bool)

(assert (=> d!306582 (= c!184706 ((_ is Node!3157) (left!8928 (c!184587 objs!8))))))

(declare-fun e!689733 () Bool)

(assert (=> d!306582 (= (inv!13352 (left!8928 (c!184587 objs!8))) e!689733)))

(declare-fun b!1090138 () Bool)

(assert (=> b!1090138 (= e!689733 (inv!13356 (left!8928 (c!184587 objs!8))))))

(declare-fun b!1090139 () Bool)

(declare-fun e!689734 () Bool)

(assert (=> b!1090139 (= e!689733 e!689734)))

(declare-fun res!484510 () Bool)

(assert (=> b!1090139 (= res!484510 (not ((_ is Leaf!5051) (left!8928 (c!184587 objs!8)))))))

(assert (=> b!1090139 (=> res!484510 e!689734)))

(declare-fun b!1090140 () Bool)

(assert (=> b!1090140 (= e!689734 (inv!13357 (left!8928 (c!184587 objs!8))))))

(assert (= (and d!306582 c!184706) b!1090138))

(assert (= (and d!306582 (not c!184706)) b!1090139))

(assert (= (and b!1090139 (not res!484510)) b!1090140))

(declare-fun m!1240559 () Bool)

(assert (=> b!1090138 m!1240559))

(declare-fun m!1240561 () Bool)

(assert (=> b!1090140 m!1240561))

(assert (=> b!1089712 d!306582))

(declare-fun d!306584 () Bool)

(declare-fun c!184707 () Bool)

(assert (=> d!306584 (= c!184707 ((_ is Node!3157) (right!9258 (c!184587 objs!8))))))

(declare-fun e!689735 () Bool)

(assert (=> d!306584 (= (inv!13352 (right!9258 (c!184587 objs!8))) e!689735)))

(declare-fun b!1090141 () Bool)

(assert (=> b!1090141 (= e!689735 (inv!13356 (right!9258 (c!184587 objs!8))))))

(declare-fun b!1090142 () Bool)

(declare-fun e!689736 () Bool)

(assert (=> b!1090142 (= e!689735 e!689736)))

(declare-fun res!484511 () Bool)

(assert (=> b!1090142 (= res!484511 (not ((_ is Leaf!5051) (right!9258 (c!184587 objs!8)))))))

(assert (=> b!1090142 (=> res!484511 e!689736)))

(declare-fun b!1090143 () Bool)

(assert (=> b!1090143 (= e!689736 (inv!13357 (right!9258 (c!184587 objs!8))))))

(assert (= (and d!306584 c!184707) b!1090141))

(assert (= (and d!306584 (not c!184707)) b!1090142))

(assert (= (and b!1090142 (not res!484511)) b!1090143))

(declare-fun m!1240563 () Bool)

(assert (=> b!1090141 m!1240563))

(declare-fun m!1240565 () Bool)

(assert (=> b!1090143 m!1240565))

(assert (=> b!1089712 d!306584))

(declare-fun d!306586 () Bool)

(declare-fun c!184710 () Bool)

(assert (=> d!306586 (= c!184710 ((_ is Nil!10434) lt!364588))))

(declare-fun e!689739 () (InoxSet tuple2!11678))

(assert (=> d!306586 (= (content!1506 lt!364588) e!689739)))

(declare-fun b!1090148 () Bool)

(assert (=> b!1090148 (= e!689739 ((as const (Array tuple2!11678 Bool)) false))))

(declare-fun b!1090149 () Bool)

(assert (=> b!1090149 (= e!689739 ((_ map or) (store ((as const (Array tuple2!11678 Bool)) false) (h!15835 lt!364588) true) (content!1506 (t!101630 lt!364588))))))

(assert (= (and d!306586 c!184710) b!1090148))

(assert (= (and d!306586 (not c!184710)) b!1090149))

(declare-fun m!1240567 () Bool)

(assert (=> b!1090149 m!1240567))

(declare-fun m!1240569 () Bool)

(assert (=> b!1090149 m!1240569))

(assert (=> d!306376 d!306586))

(declare-fun d!306588 () Bool)

(assert (=> d!306588 (= (inv!13359 (xs!5850 (c!184587 objs!8))) (<= (size!8060 (innerList!3217 (xs!5850 (c!184587 objs!8)))) 2147483647))))

(declare-fun bs!257862 () Bool)

(assert (= bs!257862 d!306588))

(declare-fun m!1240571 () Bool)

(assert (=> bs!257862 m!1240571))

(assert (=> b!1089713 d!306588))

(declare-fun d!306590 () Bool)

(declare-fun res!484516 () Bool)

(declare-fun e!689742 () Bool)

(assert (=> d!306590 (=> (not res!484516) (not e!689742))))

(assert (=> d!306590 (= res!484516 (<= (size!8060 (list!3740 (xs!5850 (c!184587 objs!8)))) 512))))

(assert (=> d!306590 (= (inv!13357 (c!184587 objs!8)) e!689742)))

(declare-fun b!1090154 () Bool)

(declare-fun res!484517 () Bool)

(assert (=> b!1090154 (=> (not res!484517) (not e!689742))))

(assert (=> b!1090154 (= res!484517 (= (csize!6545 (c!184587 objs!8)) (size!8060 (list!3740 (xs!5850 (c!184587 objs!8))))))))

(declare-fun b!1090155 () Bool)

(assert (=> b!1090155 (= e!689742 (and (> (csize!6545 (c!184587 objs!8)) 0) (<= (csize!6545 (c!184587 objs!8)) 512)))))

(assert (= (and d!306590 res!484516) b!1090154))

(assert (= (and b!1090154 res!484517) b!1090155))

(declare-fun m!1240573 () Bool)

(assert (=> d!306590 m!1240573))

(assert (=> d!306590 m!1240573))

(declare-fun m!1240575 () Bool)

(assert (=> d!306590 m!1240575))

(assert (=> b!1090154 m!1240573))

(assert (=> b!1090154 m!1240573))

(assert (=> b!1090154 m!1240575))

(assert (=> b!1089535 d!306590))

(declare-fun d!306592 () Bool)

(declare-fun e!689745 () Bool)

(assert (=> d!306592 e!689745))

(declare-fun res!484519 () Bool)

(assert (=> d!306592 (=> (not res!484519) (not e!689745))))

(declare-fun lt!364742 () List!10450)

(assert (=> d!306592 (= res!484519 (<= (size!8060 lt!364742) (size!8060 (t!101630 lt!364583))))))

(declare-fun e!689743 () List!10450)

(assert (=> d!306592 (= lt!364742 e!689743)))

(declare-fun c!184712 () Bool)

(assert (=> d!306592 (= c!184712 ((_ is Nil!10434) (t!101630 lt!364583)))))

(assert (=> d!306592 (= (filter!210 (t!101630 lt!364583) lambda!40988) lt!364742)))

(declare-fun b!1090156 () Bool)

(declare-fun e!689744 () List!10450)

(assert (=> b!1090156 (= e!689743 e!689744)))

(declare-fun c!184711 () Bool)

(assert (=> b!1090156 (= c!184711 (dynLambda!4559 lambda!40988 (h!15835 (t!101630 lt!364583))))))

(declare-fun b!1090157 () Bool)

(declare-fun call!80239 () List!10450)

(assert (=> b!1090157 (= e!689744 call!80239)))

(declare-fun bm!80234 () Bool)

(assert (=> bm!80234 (= call!80239 (filter!210 (t!101630 (t!101630 lt!364583)) lambda!40988))))

(declare-fun b!1090158 () Bool)

(declare-fun res!484518 () Bool)

(assert (=> b!1090158 (=> (not res!484518) (not e!689745))))

(assert (=> b!1090158 (= res!484518 (= ((_ map implies) (content!1506 lt!364742) (content!1506 (t!101630 lt!364583))) ((as const (InoxSet tuple2!11678)) true)))))

(declare-fun b!1090159 () Bool)

(assert (=> b!1090159 (= e!689743 Nil!10434)))

(declare-fun b!1090160 () Bool)

(assert (=> b!1090160 (= e!689745 (forall!2313 lt!364742 lambda!40988))))

(declare-fun b!1090161 () Bool)

(assert (=> b!1090161 (= e!689744 (Cons!10434 (h!15835 (t!101630 lt!364583)) call!80239))))

(assert (= (and d!306592 c!184712) b!1090159))

(assert (= (and d!306592 (not c!184712)) b!1090156))

(assert (= (and b!1090156 c!184711) b!1090161))

(assert (= (and b!1090156 (not c!184711)) b!1090157))

(assert (= (or b!1090161 b!1090157) bm!80234))

(assert (= (and d!306592 res!484519) b!1090158))

(assert (= (and b!1090158 res!484518) b!1090160))

(declare-fun b_lambda!30455 () Bool)

(assert (=> (not b_lambda!30455) (not b!1090156)))

(declare-fun m!1240577 () Bool)

(assert (=> bm!80234 m!1240577))

(declare-fun m!1240579 () Bool)

(assert (=> b!1090158 m!1240579))

(declare-fun m!1240581 () Bool)

(assert (=> b!1090158 m!1240581))

(declare-fun m!1240583 () Bool)

(assert (=> b!1090156 m!1240583))

(declare-fun m!1240585 () Bool)

(assert (=> b!1090160 m!1240585))

(declare-fun m!1240587 () Bool)

(assert (=> d!306592 m!1240587))

(assert (=> d!306592 m!1240115))

(assert (=> bm!80225 d!306592))

(declare-fun d!306594 () Bool)

(declare-fun res!484526 () Bool)

(declare-fun e!689748 () Bool)

(assert (=> d!306594 (=> (not res!484526) (not e!689748))))

(assert (=> d!306594 (= res!484526 (= (csize!6544 (c!184587 objs!8)) (+ (size!8062 (left!8928 (c!184587 objs!8))) (size!8062 (right!9258 (c!184587 objs!8))))))))

(assert (=> d!306594 (= (inv!13356 (c!184587 objs!8)) e!689748)))

(declare-fun b!1090168 () Bool)

(declare-fun res!484527 () Bool)

(assert (=> b!1090168 (=> (not res!484527) (not e!689748))))

(assert (=> b!1090168 (= res!484527 (and (not (= (left!8928 (c!184587 objs!8)) Empty!3157)) (not (= (right!9258 (c!184587 objs!8)) Empty!3157))))))

(declare-fun b!1090169 () Bool)

(declare-fun res!484528 () Bool)

(assert (=> b!1090169 (=> (not res!484528) (not e!689748))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1090169 (= res!484528 (= (cheight!3368 (c!184587 objs!8)) (+ (max!0 (height!418 (left!8928 (c!184587 objs!8))) (height!418 (right!9258 (c!184587 objs!8)))) 1)))))

(declare-fun b!1090170 () Bool)

(assert (=> b!1090170 (= e!689748 (<= 0 (cheight!3368 (c!184587 objs!8))))))

(assert (= (and d!306594 res!484526) b!1090168))

(assert (= (and b!1090168 res!484527) b!1090169))

(assert (= (and b!1090169 res!484528) b!1090170))

(declare-fun m!1240589 () Bool)

(assert (=> d!306594 m!1240589))

(declare-fun m!1240591 () Bool)

(assert (=> d!306594 m!1240591))

(declare-fun m!1240593 () Bool)

(assert (=> b!1090169 m!1240593))

(declare-fun m!1240595 () Bool)

(assert (=> b!1090169 m!1240595))

(assert (=> b!1090169 m!1240593))

(assert (=> b!1090169 m!1240595))

(declare-fun m!1240597 () Bool)

(assert (=> b!1090169 m!1240597))

(assert (=> b!1089533 d!306594))

(declare-fun b!1090174 () Bool)

(declare-fun e!689750 () List!10450)

(assert (=> b!1090174 (= e!689750 (++!2833 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8)))))))

(declare-fun b!1090173 () Bool)

(assert (=> b!1090173 (= e!689750 (list!3740 (xs!5850 (c!184587 objs!8))))))

(declare-fun b!1090171 () Bool)

(declare-fun e!689749 () List!10450)

(assert (=> b!1090171 (= e!689749 Nil!10434)))

(declare-fun b!1090172 () Bool)

(assert (=> b!1090172 (= e!689749 e!689750)))

(declare-fun c!184714 () Bool)

(assert (=> b!1090172 (= c!184714 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun d!306596 () Bool)

(declare-fun c!184713 () Bool)

(assert (=> d!306596 (= c!184713 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306596 (= (list!3738 (c!184587 objs!8)) e!689749)))

(assert (= (and d!306596 c!184713) b!1090171))

(assert (= (and d!306596 (not c!184713)) b!1090172))

(assert (= (and b!1090172 c!184714) b!1090173))

(assert (= (and b!1090172 (not c!184714)) b!1090174))

(assert (=> b!1090174 m!1240517))

(assert (=> b!1090174 m!1240519))

(assert (=> b!1090174 m!1240517))

(assert (=> b!1090174 m!1240519))

(declare-fun m!1240599 () Bool)

(assert (=> b!1090174 m!1240599))

(assert (=> b!1090173 m!1240573))

(assert (=> d!306356 d!306596))

(declare-fun d!306598 () Bool)

(assert (=> d!306598 (= (list!3736 lt!364651) (list!3738 (c!184587 lt!364651)))))

(declare-fun bs!257863 () Bool)

(assert (= bs!257863 d!306598))

(declare-fun m!1240601 () Bool)

(assert (=> bs!257863 m!1240601))

(assert (=> b!1089635 d!306598))

(declare-fun d!306600 () Bool)

(declare-fun e!689753 () Bool)

(assert (=> d!306600 e!689753))

(declare-fun res!484530 () Bool)

(assert (=> d!306600 (=> (not res!484530) (not e!689753))))

(declare-fun lt!364743 () List!10450)

(assert (=> d!306600 (= res!484530 (<= (size!8060 lt!364743) (size!8060 (list!3736 objs!8))))))

(declare-fun e!689751 () List!10450)

(assert (=> d!306600 (= lt!364743 e!689751)))

(declare-fun c!184716 () Bool)

(assert (=> d!306600 (= c!184716 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306600 (= (filter!210 (list!3736 objs!8) lambda!40989) lt!364743)))

(declare-fun b!1090175 () Bool)

(declare-fun e!689752 () List!10450)

(assert (=> b!1090175 (= e!689751 e!689752)))

(declare-fun c!184715 () Bool)

(assert (=> b!1090175 (= c!184715 (dynLambda!4559 lambda!40989 (h!15835 (list!3736 objs!8))))))

(declare-fun b!1090176 () Bool)

(declare-fun call!80240 () List!10450)

(assert (=> b!1090176 (= e!689752 call!80240)))

(declare-fun bm!80235 () Bool)

(assert (=> bm!80235 (= call!80240 (filter!210 (t!101630 (list!3736 objs!8)) lambda!40989))))

(declare-fun b!1090177 () Bool)

(declare-fun res!484529 () Bool)

(assert (=> b!1090177 (=> (not res!484529) (not e!689753))))

(assert (=> b!1090177 (= res!484529 (= ((_ map implies) (content!1506 lt!364743) (content!1506 (list!3736 objs!8))) ((as const (InoxSet tuple2!11678)) true)))))

(declare-fun b!1090178 () Bool)

(assert (=> b!1090178 (= e!689751 Nil!10434)))

(declare-fun b!1090179 () Bool)

(assert (=> b!1090179 (= e!689753 (forall!2313 lt!364743 lambda!40989))))

(declare-fun b!1090180 () Bool)

(assert (=> b!1090180 (= e!689752 (Cons!10434 (h!15835 (list!3736 objs!8)) call!80240))))

(assert (= (and d!306600 c!184716) b!1090178))

(assert (= (and d!306600 (not c!184716)) b!1090175))

(assert (= (and b!1090175 c!184715) b!1090180))

(assert (= (and b!1090175 (not c!184715)) b!1090176))

(assert (= (or b!1090180 b!1090176) bm!80235))

(assert (= (and d!306600 res!484530) b!1090177))

(assert (= (and b!1090177 res!484529) b!1090179))

(declare-fun b_lambda!30457 () Bool)

(assert (=> (not b_lambda!30457) (not b!1090175)))

(declare-fun m!1240603 () Bool)

(assert (=> bm!80235 m!1240603))

(declare-fun m!1240605 () Bool)

(assert (=> b!1090177 m!1240605))

(assert (=> b!1090177 m!1239871))

(assert (=> b!1090177 m!1240483))

(declare-fun m!1240607 () Bool)

(assert (=> b!1090175 m!1240607))

(declare-fun m!1240609 () Bool)

(assert (=> b!1090179 m!1240609))

(declare-fun m!1240611 () Bool)

(assert (=> d!306600 m!1240611))

(assert (=> d!306600 m!1239871))

(assert (=> d!306600 m!1239917))

(assert (=> b!1089635 d!306600))

(assert (=> b!1089635 d!306356))

(declare-fun b!1090184 () Bool)

(declare-fun e!689755 () List!10450)

(assert (=> b!1090184 (= e!689755 (++!2833 (list!3738 (left!8928 (c!184587 lt!364579))) (list!3738 (right!9258 (c!184587 lt!364579)))))))

(declare-fun b!1090183 () Bool)

(assert (=> b!1090183 (= e!689755 (list!3740 (xs!5850 (c!184587 lt!364579))))))

(declare-fun b!1090181 () Bool)

(declare-fun e!689754 () List!10450)

(assert (=> b!1090181 (= e!689754 Nil!10434)))

(declare-fun b!1090182 () Bool)

(assert (=> b!1090182 (= e!689754 e!689755)))

(declare-fun c!184718 () Bool)

(assert (=> b!1090182 (= c!184718 ((_ is Leaf!5051) (c!184587 lt!364579)))))

(declare-fun d!306602 () Bool)

(declare-fun c!184717 () Bool)

(assert (=> d!306602 (= c!184717 ((_ is Empty!3157) (c!184587 lt!364579)))))

(assert (=> d!306602 (= (list!3738 (c!184587 lt!364579)) e!689754)))

(assert (= (and d!306602 c!184717) b!1090181))

(assert (= (and d!306602 (not c!184717)) b!1090182))

(assert (= (and b!1090182 c!184718) b!1090183))

(assert (= (and b!1090182 (not c!184718)) b!1090184))

(declare-fun m!1240613 () Bool)

(assert (=> b!1090184 m!1240613))

(declare-fun m!1240615 () Bool)

(assert (=> b!1090184 m!1240615))

(assert (=> b!1090184 m!1240613))

(assert (=> b!1090184 m!1240615))

(declare-fun m!1240617 () Bool)

(assert (=> b!1090184 m!1240617))

(declare-fun m!1240619 () Bool)

(assert (=> b!1090183 m!1240619))

(assert (=> d!306430 d!306602))

(declare-fun b!1090185 () Bool)

(declare-fun res!484532 () Bool)

(declare-fun e!689756 () Bool)

(assert (=> b!1090185 (=> (not res!484532) (not e!689756))))

(assert (=> b!1090185 (= res!484532 (not (isEmpty!6646 (left!8928 (filter!213 (c!184587 objs!8) lambda!40989)))))))

(declare-fun d!306604 () Bool)

(declare-fun res!484535 () Bool)

(declare-fun e!689757 () Bool)

(assert (=> d!306604 (=> res!484535 e!689757)))

(assert (=> d!306604 (= res!484535 (not ((_ is Node!3157) (filter!213 (c!184587 objs!8) lambda!40989))))))

(assert (=> d!306604 (= (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40989)) e!689757)))

(declare-fun b!1090186 () Bool)

(assert (=> b!1090186 (= e!689756 (not (isEmpty!6646 (right!9258 (filter!213 (c!184587 objs!8) lambda!40989)))))))

(declare-fun b!1090187 () Bool)

(declare-fun res!484531 () Bool)

(assert (=> b!1090187 (=> (not res!484531) (not e!689756))))

(assert (=> b!1090187 (= res!484531 (<= (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40989))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40989)))) 1))))

(declare-fun b!1090188 () Bool)

(declare-fun res!484536 () Bool)

(assert (=> b!1090188 (=> (not res!484536) (not e!689756))))

(assert (=> b!1090188 (= res!484536 (isBalanced!878 (right!9258 (filter!213 (c!184587 objs!8) lambda!40989))))))

(declare-fun b!1090189 () Bool)

(declare-fun res!484534 () Bool)

(assert (=> b!1090189 (=> (not res!484534) (not e!689756))))

(assert (=> b!1090189 (= res!484534 (isBalanced!878 (left!8928 (filter!213 (c!184587 objs!8) lambda!40989))))))

(declare-fun b!1090190 () Bool)

(assert (=> b!1090190 (= e!689757 e!689756)))

(declare-fun res!484533 () Bool)

(assert (=> b!1090190 (=> (not res!484533) (not e!689756))))

(assert (=> b!1090190 (= res!484533 (<= (- 1) (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40989))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40989))))))))

(assert (= (and d!306604 (not res!484535)) b!1090190))

(assert (= (and b!1090190 res!484533) b!1090187))

(assert (= (and b!1090187 res!484531) b!1090189))

(assert (= (and b!1090189 res!484534) b!1090188))

(assert (= (and b!1090188 res!484536) b!1090185))

(assert (= (and b!1090185 res!484532) b!1090186))

(declare-fun m!1240621 () Bool)

(assert (=> b!1090189 m!1240621))

(declare-fun m!1240623 () Bool)

(assert (=> b!1090186 m!1240623))

(declare-fun m!1240625 () Bool)

(assert (=> b!1090190 m!1240625))

(declare-fun m!1240627 () Bool)

(assert (=> b!1090190 m!1240627))

(assert (=> b!1090187 m!1240625))

(assert (=> b!1090187 m!1240627))

(declare-fun m!1240629 () Bool)

(assert (=> b!1090188 m!1240629))

(declare-fun m!1240631 () Bool)

(assert (=> b!1090185 m!1240631))

(assert (=> d!306388 d!306604))

(declare-fun b!1090191 () Bool)

(declare-fun e!689760 () Conc!3157)

(assert (=> b!1090191 (= e!689760 Empty!3157)))

(declare-fun b!1090192 () Bool)

(declare-fun e!689759 () Conc!3157)

(assert (=> b!1090192 (= e!689759 (c!184587 objs!8))))

(declare-fun b!1090193 () Bool)

(declare-fun c!184719 () Bool)

(declare-fun lt!364744 () IArray!6319)

(assert (=> b!1090193 (= c!184719 (= (size!8064 lt!364744) 0))))

(assert (=> b!1090193 (= lt!364744 (filter!215 (xs!5850 (c!184587 objs!8)) lambda!40989))))

(declare-fun e!689758 () Conc!3157)

(assert (=> b!1090193 (= e!689758 e!689760)))

(declare-fun b!1090195 () Bool)

(assert (=> b!1090195 (= e!689759 e!689758)))

(declare-fun c!184720 () Bool)

(assert (=> b!1090195 (= c!184720 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun b!1090196 () Bool)

(declare-fun lt!364745 () Unit!15815)

(assert (=> b!1090196 (= lt!364745 (lemmaFilterConcat!4 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) lambda!40989))))

(assert (=> b!1090196 (= e!689758 (++!2835 (filter!213 (left!8928 (c!184587 objs!8)) lambda!40989) (filter!213 (right!9258 (c!184587 objs!8)) lambda!40989)))))

(declare-fun b!1090197 () Bool)

(assert (=> b!1090197 (= e!689760 (Leaf!5051 lt!364744 (size!8064 lt!364744)))))

(declare-fun d!306606 () Bool)

(declare-fun e!689761 () Bool)

(assert (=> d!306606 e!689761))

(declare-fun res!484537 () Bool)

(assert (=> d!306606 (=> (not res!484537) (not e!689761))))

(declare-fun lt!364746 () Conc!3157)

(assert (=> d!306606 (= res!484537 (isBalanced!878 lt!364746))))

(assert (=> d!306606 (= lt!364746 e!689759)))

(declare-fun c!184721 () Bool)

(assert (=> d!306606 (= c!184721 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306606 (isBalanced!878 (c!184587 objs!8))))

(assert (=> d!306606 (= (filter!213 (c!184587 objs!8) lambda!40989) lt!364746)))

(declare-fun b!1090194 () Bool)

(assert (=> b!1090194 (= e!689761 (= (list!3738 lt!364746) (filter!210 (list!3738 (c!184587 objs!8)) lambda!40989)))))

(assert (= (and d!306606 c!184721) b!1090192))

(assert (= (and d!306606 (not c!184721)) b!1090195))

(assert (= (and b!1090195 c!184720) b!1090193))

(assert (= (and b!1090195 (not c!184720)) b!1090196))

(assert (= (and b!1090193 c!184719) b!1090191))

(assert (= (and b!1090193 (not c!184719)) b!1090197))

(assert (= (and d!306606 res!484537) b!1090194))

(declare-fun m!1240633 () Bool)

(assert (=> b!1090196 m!1240633))

(declare-fun m!1240635 () Bool)

(assert (=> b!1090196 m!1240635))

(declare-fun m!1240637 () Bool)

(assert (=> b!1090196 m!1240637))

(assert (=> b!1090196 m!1240517))

(assert (=> b!1090196 m!1240633))

(assert (=> b!1090196 m!1240517))

(assert (=> b!1090196 m!1240519))

(declare-fun m!1240639 () Bool)

(assert (=> b!1090196 m!1240639))

(assert (=> b!1090196 m!1240519))

(assert (=> b!1090196 m!1240635))

(declare-fun m!1240641 () Bool)

(assert (=> d!306606 m!1240641))

(assert (=> d!306606 m!1239963))

(declare-fun m!1240643 () Bool)

(assert (=> b!1090193 m!1240643))

(declare-fun m!1240645 () Bool)

(assert (=> b!1090193 m!1240645))

(declare-fun m!1240647 () Bool)

(assert (=> b!1090194 m!1240647))

(assert (=> b!1090194 m!1239965))

(assert (=> b!1090194 m!1239965))

(declare-fun m!1240649 () Bool)

(assert (=> b!1090194 m!1240649))

(assert (=> b!1090197 m!1240643))

(assert (=> d!306388 d!306606))

(assert (=> b!1089659 d!306332))

(declare-fun d!306608 () Bool)

(declare-fun lt!364747 () Bool)

(assert (=> d!306608 (= lt!364747 (select (content!1506 (list!3736 lt!364581)) lt!364585))))

(declare-fun e!689763 () Bool)

(assert (=> d!306608 (= lt!364747 e!689763)))

(declare-fun res!484538 () Bool)

(assert (=> d!306608 (=> (not res!484538) (not e!689763))))

(assert (=> d!306608 (= res!484538 ((_ is Cons!10434) (list!3736 lt!364581)))))

(assert (=> d!306608 (= (contains!1744 (list!3736 lt!364581) lt!364585) lt!364747)))

(declare-fun b!1090198 () Bool)

(declare-fun e!689762 () Bool)

(assert (=> b!1090198 (= e!689763 e!689762)))

(declare-fun res!484539 () Bool)

(assert (=> b!1090198 (=> res!484539 e!689762)))

(assert (=> b!1090198 (= res!484539 (= (h!15835 (list!3736 lt!364581)) lt!364585))))

(declare-fun b!1090199 () Bool)

(assert (=> b!1090199 (= e!689762 (contains!1744 (t!101630 (list!3736 lt!364581)) lt!364585))))

(assert (= (and d!306608 res!484538) b!1090198))

(assert (= (and b!1090198 (not res!484539)) b!1090199))

(assert (=> d!306608 m!1239903))

(declare-fun m!1240651 () Bool)

(assert (=> d!306608 m!1240651))

(declare-fun m!1240653 () Bool)

(assert (=> d!306608 m!1240653))

(declare-fun m!1240655 () Bool)

(assert (=> b!1090199 m!1240655))

(assert (=> b!1089526 d!306608))

(declare-fun b!1090200 () Bool)

(declare-fun res!484541 () Bool)

(declare-fun e!689764 () Bool)

(assert (=> b!1090200 (=> (not res!484541) (not e!689764))))

(assert (=> b!1090200 (= res!484541 (not (isEmpty!6646 (left!8928 (filter!213 (c!184587 objs!8) lambda!40988)))))))

(declare-fun d!306610 () Bool)

(declare-fun res!484544 () Bool)

(declare-fun e!689765 () Bool)

(assert (=> d!306610 (=> res!484544 e!689765)))

(assert (=> d!306610 (= res!484544 (not ((_ is Node!3157) (filter!213 (c!184587 objs!8) lambda!40988))))))

(assert (=> d!306610 (= (isBalanced!878 (filter!213 (c!184587 objs!8) lambda!40988)) e!689765)))

(declare-fun b!1090201 () Bool)

(assert (=> b!1090201 (= e!689764 (not (isEmpty!6646 (right!9258 (filter!213 (c!184587 objs!8) lambda!40988)))))))

(declare-fun b!1090202 () Bool)

(declare-fun res!484540 () Bool)

(assert (=> b!1090202 (=> (not res!484540) (not e!689764))))

(assert (=> b!1090202 (= res!484540 (<= (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40988))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40988)))) 1))))

(declare-fun b!1090203 () Bool)

(declare-fun res!484545 () Bool)

(assert (=> b!1090203 (=> (not res!484545) (not e!689764))))

(assert (=> b!1090203 (= res!484545 (isBalanced!878 (right!9258 (filter!213 (c!184587 objs!8) lambda!40988))))))

(declare-fun b!1090204 () Bool)

(declare-fun res!484543 () Bool)

(assert (=> b!1090204 (=> (not res!484543) (not e!689764))))

(assert (=> b!1090204 (= res!484543 (isBalanced!878 (left!8928 (filter!213 (c!184587 objs!8) lambda!40988))))))

(declare-fun b!1090205 () Bool)

(assert (=> b!1090205 (= e!689765 e!689764)))

(declare-fun res!484542 () Bool)

(assert (=> b!1090205 (=> (not res!484542) (not e!689764))))

(assert (=> b!1090205 (= res!484542 (<= (- 1) (- (height!418 (left!8928 (filter!213 (c!184587 objs!8) lambda!40988))) (height!418 (right!9258 (filter!213 (c!184587 objs!8) lambda!40988))))))))

(assert (= (and d!306610 (not res!484544)) b!1090205))

(assert (= (and b!1090205 res!484542) b!1090202))

(assert (= (and b!1090202 res!484540) b!1090204))

(assert (= (and b!1090204 res!484543) b!1090203))

(assert (= (and b!1090203 res!484545) b!1090200))

(assert (= (and b!1090200 res!484541) b!1090201))

(declare-fun m!1240657 () Bool)

(assert (=> b!1090204 m!1240657))

(declare-fun m!1240659 () Bool)

(assert (=> b!1090201 m!1240659))

(declare-fun m!1240661 () Bool)

(assert (=> b!1090205 m!1240661))

(declare-fun m!1240663 () Bool)

(assert (=> b!1090205 m!1240663))

(assert (=> b!1090202 m!1240661))

(assert (=> b!1090202 m!1240663))

(declare-fun m!1240665 () Bool)

(assert (=> b!1090203 m!1240665))

(declare-fun m!1240667 () Bool)

(assert (=> b!1090200 m!1240667))

(assert (=> d!306408 d!306610))

(declare-fun b!1090206 () Bool)

(declare-fun e!689768 () Conc!3157)

(assert (=> b!1090206 (= e!689768 Empty!3157)))

(declare-fun b!1090207 () Bool)

(declare-fun e!689767 () Conc!3157)

(assert (=> b!1090207 (= e!689767 (c!184587 objs!8))))

(declare-fun b!1090208 () Bool)

(declare-fun c!184722 () Bool)

(declare-fun lt!364748 () IArray!6319)

(assert (=> b!1090208 (= c!184722 (= (size!8064 lt!364748) 0))))

(assert (=> b!1090208 (= lt!364748 (filter!215 (xs!5850 (c!184587 objs!8)) lambda!40988))))

(declare-fun e!689766 () Conc!3157)

(assert (=> b!1090208 (= e!689766 e!689768)))

(declare-fun b!1090210 () Bool)

(assert (=> b!1090210 (= e!689767 e!689766)))

(declare-fun c!184723 () Bool)

(assert (=> b!1090210 (= c!184723 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun b!1090211 () Bool)

(declare-fun lt!364749 () Unit!15815)

(assert (=> b!1090211 (= lt!364749 (lemmaFilterConcat!4 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) lambda!40988))))

(assert (=> b!1090211 (= e!689766 (++!2835 (filter!213 (left!8928 (c!184587 objs!8)) lambda!40988) (filter!213 (right!9258 (c!184587 objs!8)) lambda!40988)))))

(declare-fun b!1090212 () Bool)

(assert (=> b!1090212 (= e!689768 (Leaf!5051 lt!364748 (size!8064 lt!364748)))))

(declare-fun d!306612 () Bool)

(declare-fun e!689769 () Bool)

(assert (=> d!306612 e!689769))

(declare-fun res!484546 () Bool)

(assert (=> d!306612 (=> (not res!484546) (not e!689769))))

(declare-fun lt!364750 () Conc!3157)

(assert (=> d!306612 (= res!484546 (isBalanced!878 lt!364750))))

(assert (=> d!306612 (= lt!364750 e!689767)))

(declare-fun c!184724 () Bool)

(assert (=> d!306612 (= c!184724 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306612 (isBalanced!878 (c!184587 objs!8))))

(assert (=> d!306612 (= (filter!213 (c!184587 objs!8) lambda!40988) lt!364750)))

(declare-fun b!1090209 () Bool)

(assert (=> b!1090209 (= e!689769 (= (list!3738 lt!364750) (filter!210 (list!3738 (c!184587 objs!8)) lambda!40988)))))

(assert (= (and d!306612 c!184724) b!1090207))

(assert (= (and d!306612 (not c!184724)) b!1090210))

(assert (= (and b!1090210 c!184723) b!1090208))

(assert (= (and b!1090210 (not c!184723)) b!1090211))

(assert (= (and b!1090208 c!184722) b!1090206))

(assert (= (and b!1090208 (not c!184722)) b!1090212))

(assert (= (and d!306612 res!484546) b!1090209))

(declare-fun m!1240669 () Bool)

(assert (=> b!1090211 m!1240669))

(declare-fun m!1240671 () Bool)

(assert (=> b!1090211 m!1240671))

(declare-fun m!1240673 () Bool)

(assert (=> b!1090211 m!1240673))

(assert (=> b!1090211 m!1240517))

(assert (=> b!1090211 m!1240669))

(assert (=> b!1090211 m!1240517))

(assert (=> b!1090211 m!1240519))

(declare-fun m!1240675 () Bool)

(assert (=> b!1090211 m!1240675))

(assert (=> b!1090211 m!1240519))

(assert (=> b!1090211 m!1240671))

(declare-fun m!1240677 () Bool)

(assert (=> d!306612 m!1240677))

(assert (=> d!306612 m!1239963))

(declare-fun m!1240679 () Bool)

(assert (=> b!1090208 m!1240679))

(declare-fun m!1240681 () Bool)

(assert (=> b!1090208 m!1240681))

(declare-fun m!1240683 () Bool)

(assert (=> b!1090209 m!1240683))

(assert (=> b!1090209 m!1239965))

(assert (=> b!1090209 m!1239965))

(declare-fun m!1240685 () Bool)

(assert (=> b!1090209 m!1240685))

(assert (=> b!1090212 m!1240679))

(assert (=> d!306408 d!306612))

(declare-fun d!306614 () Bool)

(declare-fun lt!364751 () Int)

(assert (=> d!306614 (>= lt!364751 0)))

(declare-fun e!689770 () Int)

(assert (=> d!306614 (= lt!364751 e!689770)))

(declare-fun c!184725 () Bool)

(assert (=> d!306614 (= c!184725 ((_ is Nil!10434) (t!101630 lt!364583)))))

(assert (=> d!306614 (= (size!8060 (t!101630 lt!364583)) lt!364751)))

(declare-fun b!1090213 () Bool)

(assert (=> b!1090213 (= e!689770 0)))

(declare-fun b!1090214 () Bool)

(assert (=> b!1090214 (= e!689770 (+ 1 (size!8060 (t!101630 (t!101630 lt!364583)))))))

(assert (= (and d!306614 c!184725) b!1090213))

(assert (= (and d!306614 (not c!184725)) b!1090214))

(declare-fun m!1240687 () Bool)

(assert (=> b!1090214 m!1240687))

(assert (=> b!1089686 d!306614))

(declare-fun d!306616 () Bool)

(declare-fun lt!364752 () Int)

(assert (=> d!306616 (>= lt!364752 0)))

(declare-fun e!689771 () Int)

(assert (=> d!306616 (= lt!364752 e!689771)))

(declare-fun c!184726 () Bool)

(assert (=> d!306616 (= c!184726 ((_ is Nil!10434) (list!3736 lt!364581)))))

(assert (=> d!306616 (= (size!8060 (list!3736 lt!364581)) lt!364752)))

(declare-fun b!1090215 () Bool)

(assert (=> b!1090215 (= e!689771 0)))

(declare-fun b!1090216 () Bool)

(assert (=> b!1090216 (= e!689771 (+ 1 (size!8060 (t!101630 (list!3736 lt!364581)))))))

(assert (= (and d!306616 c!184726) b!1090215))

(assert (= (and d!306616 (not c!184726)) b!1090216))

(declare-fun m!1240689 () Bool)

(assert (=> b!1090216 m!1240689))

(assert (=> d!306374 d!306616))

(assert (=> d!306374 d!306330))

(declare-fun d!306618 () Bool)

(declare-fun lt!364755 () Int)

(assert (=> d!306618 (= lt!364755 (size!8060 (list!3738 (c!184587 lt!364581))))))

(assert (=> d!306618 (= lt!364755 (ite ((_ is Empty!3157) (c!184587 lt!364581)) 0 (ite ((_ is Leaf!5051) (c!184587 lt!364581)) (csize!6545 (c!184587 lt!364581)) (csize!6544 (c!184587 lt!364581)))))))

(assert (=> d!306618 (= (size!8062 (c!184587 lt!364581)) lt!364755)))

(declare-fun bs!257864 () Bool)

(assert (= bs!257864 d!306618))

(assert (=> bs!257864 m!1239915))

(assert (=> bs!257864 m!1239915))

(declare-fun m!1240691 () Bool)

(assert (=> bs!257864 m!1240691))

(assert (=> d!306374 d!306618))

(assert (=> d!306420 d!306570))

(assert (=> d!306420 d!306356))

(declare-fun b!1090219 () Bool)

(declare-fun e!689774 () Bool)

(declare-fun e!689772 () Bool)

(assert (=> b!1090219 (= e!689774 e!689772)))

(declare-fun res!484548 () Bool)

(assert (=> b!1090219 (= res!484548 (contains!1746 (left!8928 (c!184587 objs!8)) lt!364585))))

(assert (=> b!1090219 (=> res!484548 e!689772)))

(declare-fun b!1090220 () Bool)

(assert (=> b!1090220 (= e!689772 (contains!1746 (right!9258 (c!184587 objs!8)) lt!364585))))

(declare-fun b!1090218 () Bool)

(assert (=> b!1090218 (= e!689774 (contains!1748 (xs!5850 (c!184587 objs!8)) lt!364585))))

(declare-fun d!306620 () Bool)

(declare-fun lt!364756 () Bool)

(assert (=> d!306620 (= lt!364756 (contains!1744 (list!3738 (c!184587 objs!8)) lt!364585))))

(declare-fun e!689773 () Bool)

(assert (=> d!306620 (= lt!364756 e!689773)))

(declare-fun res!484547 () Bool)

(assert (=> d!306620 (=> (not res!484547) (not e!689773))))

(assert (=> d!306620 (= res!484547 (not ((_ is Empty!3157) (c!184587 objs!8))))))

(assert (=> d!306620 (= (contains!1746 (c!184587 objs!8) lt!364585) lt!364756)))

(declare-fun b!1090217 () Bool)

(assert (=> b!1090217 (= e!689773 e!689774)))

(declare-fun c!184727 () Bool)

(assert (=> b!1090217 (= c!184727 ((_ is Leaf!5051) (c!184587 objs!8)))))

(assert (= (and d!306620 res!484547) b!1090217))

(assert (= (and b!1090217 c!184727) b!1090218))

(assert (= (and b!1090217 (not c!184727)) b!1090219))

(assert (= (and b!1090219 (not res!484548)) b!1090220))

(declare-fun m!1240693 () Bool)

(assert (=> b!1090219 m!1240693))

(declare-fun m!1240695 () Bool)

(assert (=> b!1090220 m!1240695))

(declare-fun m!1240697 () Bool)

(assert (=> b!1090218 m!1240697))

(assert (=> d!306620 m!1239965))

(assert (=> d!306620 m!1239965))

(declare-fun m!1240699 () Bool)

(assert (=> d!306620 m!1240699))

(assert (=> d!306420 d!306620))

(declare-fun b!1090221 () Bool)

(declare-fun res!484550 () Bool)

(declare-fun e!689775 () Bool)

(assert (=> b!1090221 (=> (not res!484550) (not e!689775))))

(assert (=> b!1090221 (= res!484550 (not (isEmpty!6646 (left!8928 (c!184587 objs!8)))))))

(declare-fun d!306622 () Bool)

(declare-fun res!484553 () Bool)

(declare-fun e!689776 () Bool)

(assert (=> d!306622 (=> res!484553 e!689776)))

(assert (=> d!306622 (= res!484553 (not ((_ is Node!3157) (c!184587 objs!8))))))

(assert (=> d!306622 (= (isBalanced!878 (c!184587 objs!8)) e!689776)))

(declare-fun b!1090222 () Bool)

(assert (=> b!1090222 (= e!689775 (not (isEmpty!6646 (right!9258 (c!184587 objs!8)))))))

(declare-fun b!1090223 () Bool)

(declare-fun res!484549 () Bool)

(assert (=> b!1090223 (=> (not res!484549) (not e!689775))))

(assert (=> b!1090223 (= res!484549 (<= (- (height!418 (left!8928 (c!184587 objs!8))) (height!418 (right!9258 (c!184587 objs!8)))) 1))))

(declare-fun b!1090224 () Bool)

(declare-fun res!484554 () Bool)

(assert (=> b!1090224 (=> (not res!484554) (not e!689775))))

(assert (=> b!1090224 (= res!484554 (isBalanced!878 (right!9258 (c!184587 objs!8))))))

(declare-fun b!1090225 () Bool)

(declare-fun res!484552 () Bool)

(assert (=> b!1090225 (=> (not res!484552) (not e!689775))))

(assert (=> b!1090225 (= res!484552 (isBalanced!878 (left!8928 (c!184587 objs!8))))))

(declare-fun b!1090226 () Bool)

(assert (=> b!1090226 (= e!689776 e!689775)))

(declare-fun res!484551 () Bool)

(assert (=> b!1090226 (=> (not res!484551) (not e!689775))))

(assert (=> b!1090226 (= res!484551 (<= (- 1) (- (height!418 (left!8928 (c!184587 objs!8))) (height!418 (right!9258 (c!184587 objs!8))))))))

(assert (= (and d!306622 (not res!484553)) b!1090226))

(assert (= (and b!1090226 res!484551) b!1090223))

(assert (= (and b!1090223 res!484549) b!1090225))

(assert (= (and b!1090225 res!484552) b!1090224))

(assert (= (and b!1090224 res!484554) b!1090221))

(assert (= (and b!1090221 res!484550) b!1090222))

(declare-fun m!1240701 () Bool)

(assert (=> b!1090225 m!1240701))

(declare-fun m!1240703 () Bool)

(assert (=> b!1090222 m!1240703))

(assert (=> b!1090226 m!1240593))

(assert (=> b!1090226 m!1240595))

(assert (=> b!1090223 m!1240593))

(assert (=> b!1090223 m!1240595))

(declare-fun m!1240705 () Bool)

(assert (=> b!1090224 m!1240705))

(declare-fun m!1240707 () Bool)

(assert (=> b!1090221 m!1240707))

(assert (=> d!306350 d!306622))

(declare-fun d!306624 () Bool)

(declare-fun lt!364757 () Int)

(assert (=> d!306624 (>= lt!364757 0)))

(declare-fun e!689777 () Int)

(assert (=> d!306624 (= lt!364757 e!689777)))

(declare-fun c!184728 () Bool)

(assert (=> d!306624 (= c!184728 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306624 (= (size!8060 (list!3736 objs!8)) lt!364757)))

(declare-fun b!1090227 () Bool)

(assert (=> b!1090227 (= e!689777 0)))

(declare-fun b!1090228 () Bool)

(assert (=> b!1090228 (= e!689777 (+ 1 (size!8060 (t!101630 (list!3736 objs!8)))))))

(assert (= (and d!306624 c!184728) b!1090227))

(assert (= (and d!306624 (not c!184728)) b!1090228))

(declare-fun m!1240709 () Bool)

(assert (=> b!1090228 m!1240709))

(assert (=> d!306332 d!306624))

(assert (=> d!306332 d!306356))

(declare-fun d!306626 () Bool)

(declare-fun lt!364758 () Int)

(assert (=> d!306626 (= lt!364758 (size!8060 (list!3738 (c!184587 objs!8))))))

(assert (=> d!306626 (= lt!364758 (ite ((_ is Empty!3157) (c!184587 objs!8)) 0 (ite ((_ is Leaf!5051) (c!184587 objs!8)) (csize!6545 (c!184587 objs!8)) (csize!6544 (c!184587 objs!8)))))))

(assert (=> d!306626 (= (size!8062 (c!184587 objs!8)) lt!364758)))

(declare-fun bs!257865 () Bool)

(assert (= bs!257865 d!306626))

(assert (=> bs!257865 m!1239965))

(assert (=> bs!257865 m!1239965))

(declare-fun m!1240711 () Bool)

(assert (=> bs!257865 m!1240711))

(assert (=> d!306332 d!306626))

(declare-fun d!306628 () Bool)

(declare-fun res!484555 () Bool)

(declare-fun e!689778 () Bool)

(assert (=> d!306628 (=> res!484555 e!689778)))

(assert (=> d!306628 (= res!484555 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306628 (= (forall!2313 (list!3736 objs!8) lambda!40988) e!689778)))

(declare-fun b!1090229 () Bool)

(declare-fun e!689779 () Bool)

(assert (=> b!1090229 (= e!689778 e!689779)))

(declare-fun res!484556 () Bool)

(assert (=> b!1090229 (=> (not res!484556) (not e!689779))))

(assert (=> b!1090229 (= res!484556 (dynLambda!4559 lambda!40988 (h!15835 (list!3736 objs!8))))))

(declare-fun b!1090230 () Bool)

(assert (=> b!1090230 (= e!689779 (forall!2313 (t!101630 (list!3736 objs!8)) lambda!40988))))

(assert (= (and d!306628 (not res!484555)) b!1090229))

(assert (= (and b!1090229 res!484556) b!1090230))

(declare-fun b_lambda!30459 () Bool)

(assert (=> (not b_lambda!30459) (not b!1090229)))

(declare-fun m!1240713 () Bool)

(assert (=> b!1090229 m!1240713))

(declare-fun m!1240715 () Bool)

(assert (=> b!1090230 m!1240715))

(assert (=> d!306358 d!306628))

(assert (=> d!306358 d!306356))

(declare-fun b!1090232 () Bool)

(declare-fun e!689782 () Bool)

(assert (=> b!1090232 (= e!689782 (forall!2317 (xs!5850 (c!184587 objs!8)) lambda!40988))))

(declare-fun b!1090233 () Bool)

(declare-fun e!689781 () Bool)

(assert (=> b!1090233 (= e!689782 e!689781)))

(declare-fun lt!364760 () Unit!15815)

(assert (=> b!1090233 (= lt!364760 (lemmaForallConcat!58 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) lambda!40988))))

(declare-fun res!484558 () Bool)

(assert (=> b!1090233 (= res!484558 (forall!2315 (left!8928 (c!184587 objs!8)) lambda!40988))))

(assert (=> b!1090233 (=> (not res!484558) (not e!689781))))

(declare-fun b!1090231 () Bool)

(declare-fun e!689780 () Bool)

(assert (=> b!1090231 (= e!689780 e!689782)))

(declare-fun c!184729 () Bool)

(assert (=> b!1090231 (= c!184729 ((_ is Leaf!5051) (c!184587 objs!8)))))

(declare-fun b!1090234 () Bool)

(assert (=> b!1090234 (= e!689781 (forall!2315 (right!9258 (c!184587 objs!8)) lambda!40988))))

(declare-fun d!306630 () Bool)

(declare-fun lt!364759 () Bool)

(assert (=> d!306630 (= lt!364759 (forall!2313 (list!3738 (c!184587 objs!8)) lambda!40988))))

(assert (=> d!306630 (= lt!364759 e!689780)))

(declare-fun res!484557 () Bool)

(assert (=> d!306630 (=> res!484557 e!689780)))

(assert (=> d!306630 (= res!484557 ((_ is Empty!3157) (c!184587 objs!8)))))

(assert (=> d!306630 (= (forall!2315 (c!184587 objs!8) lambda!40988) lt!364759)))

(assert (= (and d!306630 (not res!484557)) b!1090231))

(assert (= (and b!1090231 c!184729) b!1090232))

(assert (= (and b!1090231 (not c!184729)) b!1090233))

(assert (= (and b!1090233 res!484558) b!1090234))

(declare-fun m!1240717 () Bool)

(assert (=> b!1090232 m!1240717))

(assert (=> b!1090233 m!1240517))

(assert (=> b!1090233 m!1240519))

(assert (=> b!1090233 m!1240517))

(assert (=> b!1090233 m!1240519))

(declare-fun m!1240719 () Bool)

(assert (=> b!1090233 m!1240719))

(declare-fun m!1240721 () Bool)

(assert (=> b!1090233 m!1240721))

(declare-fun m!1240723 () Bool)

(assert (=> b!1090234 m!1240723))

(assert (=> d!306630 m!1239965))

(assert (=> d!306630 m!1239965))

(declare-fun m!1240725 () Bool)

(assert (=> d!306630 m!1240725))

(assert (=> d!306358 d!306630))

(declare-fun d!306632 () Bool)

(declare-fun res!484559 () Bool)

(declare-fun e!689783 () Bool)

(assert (=> d!306632 (=> res!484559 e!689783)))

(assert (=> d!306632 (= res!484559 ((_ is Nil!10434) lt!364663))))

(assert (=> d!306632 (= (forall!2313 lt!364663 lambda!40988) e!689783)))

(declare-fun b!1090235 () Bool)

(declare-fun e!689784 () Bool)

(assert (=> b!1090235 (= e!689783 e!689784)))

(declare-fun res!484560 () Bool)

(assert (=> b!1090235 (=> (not res!484560) (not e!689784))))

(assert (=> b!1090235 (= res!484560 (dynLambda!4559 lambda!40988 (h!15835 lt!364663)))))

(declare-fun b!1090236 () Bool)

(assert (=> b!1090236 (= e!689784 (forall!2313 (t!101630 lt!364663) lambda!40988))))

(assert (= (and d!306632 (not res!484559)) b!1090235))

(assert (= (and b!1090235 res!484560) b!1090236))

(declare-fun b_lambda!30461 () Bool)

(assert (=> (not b_lambda!30461) (not b!1090235)))

(declare-fun m!1240727 () Bool)

(assert (=> b!1090235 m!1240727))

(declare-fun m!1240729 () Bool)

(assert (=> b!1090236 m!1240729))

(assert (=> b!1089683 d!306632))

(declare-fun d!306634 () Bool)

(declare-fun c!184730 () Bool)

(assert (=> d!306634 (= c!184730 ((_ is Nil!10434) lt!364663))))

(declare-fun e!689785 () (InoxSet tuple2!11678))

(assert (=> d!306634 (= (content!1506 lt!364663) e!689785)))

(declare-fun b!1090237 () Bool)

(assert (=> b!1090237 (= e!689785 ((as const (Array tuple2!11678 Bool)) false))))

(declare-fun b!1090238 () Bool)

(assert (=> b!1090238 (= e!689785 ((_ map or) (store ((as const (Array tuple2!11678 Bool)) false) (h!15835 lt!364663) true) (content!1506 (t!101630 lt!364663))))))

(assert (= (and d!306634 c!184730) b!1090237))

(assert (= (and d!306634 (not c!184730)) b!1090238))

(declare-fun m!1240731 () Bool)

(assert (=> b!1090238 m!1240731))

(declare-fun m!1240733 () Bool)

(assert (=> b!1090238 m!1240733))

(assert (=> b!1089681 d!306634))

(declare-fun d!306636 () Bool)

(declare-fun c!184731 () Bool)

(assert (=> d!306636 (= c!184731 ((_ is Nil!10434) lt!364583))))

(declare-fun e!689786 () (InoxSet tuple2!11678))

(assert (=> d!306636 (= (content!1506 lt!364583) e!689786)))

(declare-fun b!1090239 () Bool)

(assert (=> b!1090239 (= e!689786 ((as const (Array tuple2!11678 Bool)) false))))

(declare-fun b!1090240 () Bool)

(assert (=> b!1090240 (= e!689786 ((_ map or) (store ((as const (Array tuple2!11678 Bool)) false) (h!15835 lt!364583) true) (content!1506 (t!101630 lt!364583))))))

(assert (= (and d!306636 c!184731) b!1090239))

(assert (= (and d!306636 (not c!184731)) b!1090240))

(declare-fun m!1240735 () Bool)

(assert (=> b!1090240 m!1240735))

(assert (=> b!1090240 m!1240581))

(assert (=> b!1089681 d!306636))

(assert (=> d!306432 d!306608))

(assert (=> d!306432 d!306330))

(declare-fun b!1090243 () Bool)

(declare-fun e!689789 () Bool)

(declare-fun e!689787 () Bool)

(assert (=> b!1090243 (= e!689789 e!689787)))

(declare-fun res!484562 () Bool)

(assert (=> b!1090243 (= res!484562 (contains!1746 (left!8928 (c!184587 lt!364581)) lt!364585))))

(assert (=> b!1090243 (=> res!484562 e!689787)))

(declare-fun b!1090244 () Bool)

(assert (=> b!1090244 (= e!689787 (contains!1746 (right!9258 (c!184587 lt!364581)) lt!364585))))

(declare-fun b!1090242 () Bool)

(assert (=> b!1090242 (= e!689789 (contains!1748 (xs!5850 (c!184587 lt!364581)) lt!364585))))

(declare-fun d!306638 () Bool)

(declare-fun lt!364761 () Bool)

(assert (=> d!306638 (= lt!364761 (contains!1744 (list!3738 (c!184587 lt!364581)) lt!364585))))

(declare-fun e!689788 () Bool)

(assert (=> d!306638 (= lt!364761 e!689788)))

(declare-fun res!484561 () Bool)

(assert (=> d!306638 (=> (not res!484561) (not e!689788))))

(assert (=> d!306638 (= res!484561 (not ((_ is Empty!3157) (c!184587 lt!364581))))))

(assert (=> d!306638 (= (contains!1746 (c!184587 lt!364581) lt!364585) lt!364761)))

(declare-fun b!1090241 () Bool)

(assert (=> b!1090241 (= e!689788 e!689789)))

(declare-fun c!184732 () Bool)

(assert (=> b!1090241 (= c!184732 ((_ is Leaf!5051) (c!184587 lt!364581)))))

(assert (= (and d!306638 res!484561) b!1090241))

(assert (= (and b!1090241 c!184732) b!1090242))

(assert (= (and b!1090241 (not c!184732)) b!1090243))

(assert (= (and b!1090243 (not res!484562)) b!1090244))

(declare-fun m!1240737 () Bool)

(assert (=> b!1090243 m!1240737))

(declare-fun m!1240739 () Bool)

(assert (=> b!1090244 m!1240739))

(declare-fun m!1240741 () Bool)

(assert (=> b!1090242 m!1240741))

(assert (=> d!306638 m!1239915))

(assert (=> d!306638 m!1239915))

(declare-fun m!1240743 () Bool)

(assert (=> d!306638 m!1240743))

(assert (=> d!306432 d!306638))

(assert (=> d!306360 d!306370))

(declare-fun d!306640 () Bool)

(declare-fun e!689792 () Bool)

(assert (=> d!306640 e!689792))

(declare-fun res!484565 () Bool)

(assert (=> d!306640 (=> res!484565 e!689792)))

(assert (=> d!306640 (= res!484565 (isEmpty!6644 lt!364583))))

(assert (=> d!306640 true))

(declare-fun _$38!311 () Unit!15815)

(assert (=> d!306640 (= (choose!6998 lt!364583 lambda!40988) _$38!311)))

(declare-fun b!1090247 () Bool)

(assert (=> b!1090247 (= e!689792 (< (size!8060 (filter!210 lt!364583 lambda!40988)) (size!8060 lt!364583)))))

(assert (= (and d!306640 (not res!484565)) b!1090247))

(assert (=> d!306640 m!1239893))

(assert (=> b!1090247 m!1239887))

(assert (=> b!1090247 m!1239887))

(assert (=> b!1090247 m!1239889))

(assert (=> b!1090247 m!1239891))

(assert (=> d!306360 d!306640))

(declare-fun d!306642 () Bool)

(declare-fun res!484566 () Bool)

(declare-fun e!689793 () Bool)

(assert (=> d!306642 (=> res!484566 e!689793)))

(assert (=> d!306642 (= res!484566 ((_ is Nil!10434) lt!364583))))

(assert (=> d!306642 (= (forall!2313 lt!364583 lambda!40988) e!689793)))

(declare-fun b!1090248 () Bool)

(declare-fun e!689794 () Bool)

(assert (=> b!1090248 (= e!689793 e!689794)))

(declare-fun res!484567 () Bool)

(assert (=> b!1090248 (=> (not res!484567) (not e!689794))))

(assert (=> b!1090248 (= res!484567 (dynLambda!4559 lambda!40988 (h!15835 lt!364583)))))

(declare-fun b!1090249 () Bool)

(assert (=> b!1090249 (= e!689794 (forall!2313 (t!101630 lt!364583) lambda!40988))))

(assert (= (and d!306642 (not res!484566)) b!1090248))

(assert (= (and b!1090248 res!484567) b!1090249))

(declare-fun b_lambda!30463 () Bool)

(assert (=> (not b_lambda!30463) (not b!1090248)))

(assert (=> b!1090248 m!1240109))

(declare-fun m!1240745 () Bool)

(assert (=> b!1090249 m!1240745))

(assert (=> d!306360 d!306642))

(declare-fun d!306644 () Bool)

(assert (=> d!306644 (dynLambda!4559 lambda!40988 lt!364585)))

(assert (=> d!306644 true))

(declare-fun _$7!643 () Unit!15815)

(assert (=> d!306644 (= (choose!6996 (list!3736 objs!8) lambda!40988 lt!364585) _$7!643)))

(declare-fun b_lambda!30465 () Bool)

(assert (=> (not b_lambda!30465) (not d!306644)))

(declare-fun bs!257866 () Bool)

(assert (= bs!257866 d!306644))

(assert (=> bs!257866 m!1239907))

(assert (=> d!306382 d!306644))

(assert (=> d!306382 d!306628))

(declare-fun d!306646 () Bool)

(declare-fun lt!364762 () Int)

(assert (=> d!306646 (>= lt!364762 0)))

(declare-fun e!689795 () Int)

(assert (=> d!306646 (= lt!364762 e!689795)))

(declare-fun c!184733 () Bool)

(assert (=> d!306646 (= c!184733 ((_ is Nil!10434) (t!101630 (filter!210 lt!364583 lambda!40988))))))

(assert (=> d!306646 (= (size!8060 (t!101630 (filter!210 lt!364583 lambda!40988))) lt!364762)))

(declare-fun b!1090250 () Bool)

(assert (=> b!1090250 (= e!689795 0)))

(declare-fun b!1090251 () Bool)

(assert (=> b!1090251 (= e!689795 (+ 1 (size!8060 (t!101630 (t!101630 (filter!210 lt!364583 lambda!40988))))))))

(assert (= (and d!306646 c!184733) b!1090250))

(assert (= (and d!306646 (not c!184733)) b!1090251))

(declare-fun m!1240747 () Bool)

(assert (=> b!1090251 m!1240747))

(assert (=> b!1089666 d!306646))

(declare-fun d!306648 () Bool)

(declare-fun res!484568 () Bool)

(declare-fun e!689796 () Bool)

(assert (=> d!306648 (=> res!484568 e!689796)))

(assert (=> d!306648 (= res!484568 ((_ is Nil!10434) (t!101630 lt!364588)))))

(assert (=> d!306648 (= (forall!2313 (t!101630 lt!364588) lambda!40990) e!689796)))

(declare-fun b!1090252 () Bool)

(declare-fun e!689797 () Bool)

(assert (=> b!1090252 (= e!689796 e!689797)))

(declare-fun res!484569 () Bool)

(assert (=> b!1090252 (=> (not res!484569) (not e!689797))))

(assert (=> b!1090252 (= res!484569 (dynLambda!4559 lambda!40990 (h!15835 (t!101630 lt!364588))))))

(declare-fun b!1090253 () Bool)

(assert (=> b!1090253 (= e!689797 (forall!2313 (t!101630 (t!101630 lt!364588)) lambda!40990))))

(assert (= (and d!306648 (not res!484568)) b!1090252))

(assert (= (and b!1090252 res!484569) b!1090253))

(declare-fun b_lambda!30467 () Bool)

(assert (=> (not b_lambda!30467) (not b!1090252)))

(declare-fun m!1240749 () Bool)

(assert (=> b!1090252 m!1240749))

(declare-fun m!1240751 () Bool)

(assert (=> b!1090253 m!1240751))

(assert (=> b!1089692 d!306648))

(declare-fun d!306650 () Bool)

(declare-fun lt!364763 () Bool)

(assert (=> d!306650 (= lt!364763 (select (content!1506 (t!101630 lt!364588)) lt!364585))))

(declare-fun e!689799 () Bool)

(assert (=> d!306650 (= lt!364763 e!689799)))

(declare-fun res!484570 () Bool)

(assert (=> d!306650 (=> (not res!484570) (not e!689799))))

(assert (=> d!306650 (= res!484570 ((_ is Cons!10434) (t!101630 lt!364588)))))

(assert (=> d!306650 (= (contains!1744 (t!101630 lt!364588) lt!364585) lt!364763)))

(declare-fun b!1090254 () Bool)

(declare-fun e!689798 () Bool)

(assert (=> b!1090254 (= e!689799 e!689798)))

(declare-fun res!484571 () Bool)

(assert (=> b!1090254 (=> res!484571 e!689798)))

(assert (=> b!1090254 (= res!484571 (= (h!15835 (t!101630 lt!364588)) lt!364585))))

(declare-fun b!1090255 () Bool)

(assert (=> b!1090255 (= e!689798 (contains!1744 (t!101630 (t!101630 lt!364588)) lt!364585))))

(assert (= (and d!306650 res!484570) b!1090254))

(assert (= (and b!1090254 (not res!484571)) b!1090255))

(assert (=> d!306650 m!1240569))

(declare-fun m!1240753 () Bool)

(assert (=> d!306650 m!1240753))

(declare-fun m!1240755 () Bool)

(assert (=> b!1090255 m!1240755))

(assert (=> b!1089581 d!306650))

(declare-fun d!306652 () Bool)

(assert (=> d!306652 (= (list!3736 lt!364652) (list!3738 (c!184587 lt!364652)))))

(declare-fun bs!257867 () Bool)

(assert (= bs!257867 d!306652))

(declare-fun m!1240757 () Bool)

(assert (=> bs!257867 m!1240757))

(assert (=> b!1089653 d!306652))

(declare-fun d!306654 () Bool)

(declare-fun e!689802 () Bool)

(assert (=> d!306654 e!689802))

(declare-fun res!484573 () Bool)

(assert (=> d!306654 (=> (not res!484573) (not e!689802))))

(declare-fun lt!364764 () List!10450)

(assert (=> d!306654 (= res!484573 (<= (size!8060 lt!364764) (size!8060 (list!3736 objs!8))))))

(declare-fun e!689800 () List!10450)

(assert (=> d!306654 (= lt!364764 e!689800)))

(declare-fun c!184735 () Bool)

(assert (=> d!306654 (= c!184735 ((_ is Nil!10434) (list!3736 objs!8)))))

(assert (=> d!306654 (= (filter!210 (list!3736 objs!8) lambda!40988) lt!364764)))

(declare-fun b!1090256 () Bool)

(declare-fun e!689801 () List!10450)

(assert (=> b!1090256 (= e!689800 e!689801)))

(declare-fun c!184734 () Bool)

(assert (=> b!1090256 (= c!184734 (dynLambda!4559 lambda!40988 (h!15835 (list!3736 objs!8))))))

(declare-fun b!1090257 () Bool)

(declare-fun call!80241 () List!10450)

(assert (=> b!1090257 (= e!689801 call!80241)))

(declare-fun bm!80236 () Bool)

(assert (=> bm!80236 (= call!80241 (filter!210 (t!101630 (list!3736 objs!8)) lambda!40988))))

(declare-fun b!1090258 () Bool)

(declare-fun res!484572 () Bool)

(assert (=> b!1090258 (=> (not res!484572) (not e!689802))))

(assert (=> b!1090258 (= res!484572 (= ((_ map implies) (content!1506 lt!364764) (content!1506 (list!3736 objs!8))) ((as const (InoxSet tuple2!11678)) true)))))

(declare-fun b!1090259 () Bool)

(assert (=> b!1090259 (= e!689800 Nil!10434)))

(declare-fun b!1090260 () Bool)

(assert (=> b!1090260 (= e!689802 (forall!2313 lt!364764 lambda!40988))))

(declare-fun b!1090261 () Bool)

(assert (=> b!1090261 (= e!689801 (Cons!10434 (h!15835 (list!3736 objs!8)) call!80241))))

(assert (= (and d!306654 c!184735) b!1090259))

(assert (= (and d!306654 (not c!184735)) b!1090256))

(assert (= (and b!1090256 c!184734) b!1090261))

(assert (= (and b!1090256 (not c!184734)) b!1090257))

(assert (= (or b!1090261 b!1090257) bm!80236))

(assert (= (and d!306654 res!484573) b!1090258))

(assert (= (and b!1090258 res!484572) b!1090260))

(declare-fun b_lambda!30469 () Bool)

(assert (=> (not b_lambda!30469) (not b!1090256)))

(declare-fun m!1240759 () Bool)

(assert (=> bm!80236 m!1240759))

(declare-fun m!1240761 () Bool)

(assert (=> b!1090258 m!1240761))

(assert (=> b!1090258 m!1239871))

(assert (=> b!1090258 m!1240483))

(assert (=> b!1090256 m!1240713))

(declare-fun m!1240763 () Bool)

(assert (=> b!1090260 m!1240763))

(declare-fun m!1240765 () Bool)

(assert (=> d!306654 m!1240765))

(assert (=> d!306654 m!1239871))

(assert (=> d!306654 m!1239917))

(assert (=> b!1089653 d!306654))

(assert (=> b!1089653 d!306356))

(declare-fun d!306656 () Bool)

(assert (=> d!306656 (dynLambda!4559 lambda!40988 lt!364585)))

(assert (=> d!306656 true))

(declare-fun _$7!644 () Unit!15815)

(assert (=> d!306656 (= (choose!6996 (list!3736 lt!364581) lambda!40988 lt!364585) _$7!644)))

(declare-fun b_lambda!30471 () Bool)

(assert (=> (not b_lambda!30471) (not d!306656)))

(declare-fun bs!257868 () Bool)

(assert (= bs!257868 d!306656))

(assert (=> bs!257868 m!1239907))

(assert (=> d!306328 d!306656))

(declare-fun d!306658 () Bool)

(declare-fun res!484574 () Bool)

(declare-fun e!689803 () Bool)

(assert (=> d!306658 (=> res!484574 e!689803)))

(assert (=> d!306658 (= res!484574 ((_ is Nil!10434) (list!3736 lt!364581)))))

(assert (=> d!306658 (= (forall!2313 (list!3736 lt!364581) lambda!40988) e!689803)))

(declare-fun b!1090262 () Bool)

(declare-fun e!689804 () Bool)

(assert (=> b!1090262 (= e!689803 e!689804)))

(declare-fun res!484575 () Bool)

(assert (=> b!1090262 (=> (not res!484575) (not e!689804))))

(assert (=> b!1090262 (= res!484575 (dynLambda!4559 lambda!40988 (h!15835 (list!3736 lt!364581))))))

(declare-fun b!1090263 () Bool)

(assert (=> b!1090263 (= e!689804 (forall!2313 (t!101630 (list!3736 lt!364581)) lambda!40988))))

(assert (= (and d!306658 (not res!484574)) b!1090262))

(assert (= (and b!1090262 res!484575) b!1090263))

(declare-fun b_lambda!30473 () Bool)

(assert (=> (not b_lambda!30473) (not b!1090262)))

(declare-fun m!1240767 () Bool)

(assert (=> b!1090262 m!1240767))

(declare-fun m!1240769 () Bool)

(assert (=> b!1090263 m!1240769))

(assert (=> d!306328 d!306658))

(declare-fun d!306660 () Bool)

(declare-fun lt!364767 () tuple2!11678)

(assert (=> d!306660 (contains!1744 (list!3736 objs!8) lt!364767)))

(declare-fun e!689809 () tuple2!11678)

(assert (=> d!306660 (= lt!364767 e!689809)))

(declare-fun c!184738 () Bool)

(assert (=> d!306660 (= c!184738 (= (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) 0))))

(declare-fun e!689810 () Bool)

(assert (=> d!306660 e!689810))

(declare-fun res!484578 () Bool)

(assert (=> d!306660 (=> (not res!484578) (not e!689810))))

(assert (=> d!306660 (= res!484578 (<= 0 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(assert (=> d!306660 (= (apply!2024 (list!3736 objs!8) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))) lt!364767)))

(declare-fun b!1090270 () Bool)

(assert (=> b!1090270 (= e!689810 (< (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) (size!8060 (list!3736 objs!8))))))

(declare-fun b!1090271 () Bool)

(declare-fun head!2029 (List!10450) tuple2!11678)

(assert (=> b!1090271 (= e!689809 (head!2029 (list!3736 objs!8)))))

(declare-fun b!1090272 () Bool)

(declare-fun tail!1589 (List!10450) List!10450)

(assert (=> b!1090272 (= e!689809 (apply!2024 (tail!1589 (list!3736 objs!8)) (- (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) 1)))))

(assert (= (and d!306660 res!484578) b!1090270))

(assert (= (and d!306660 c!184738) b!1090271))

(assert (= (and d!306660 (not c!184738)) b!1090272))

(assert (=> d!306660 m!1239871))

(declare-fun m!1240771 () Bool)

(assert (=> d!306660 m!1240771))

(assert (=> b!1090270 m!1239871))

(assert (=> b!1090270 m!1239917))

(assert (=> b!1090271 m!1239871))

(declare-fun m!1240773 () Bool)

(assert (=> b!1090271 m!1240773))

(assert (=> b!1090272 m!1239871))

(declare-fun m!1240775 () Bool)

(assert (=> b!1090272 m!1240775))

(assert (=> b!1090272 m!1240775))

(declare-fun m!1240777 () Bool)

(assert (=> b!1090272 m!1240777))

(assert (=> d!306410 d!306660))

(assert (=> d!306410 d!306356))

(declare-fun b!1090287 () Bool)

(declare-fun e!689819 () Bool)

(assert (=> b!1090287 (= e!689819 (< (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) (size!8062 (c!184587 objs!8))))))

(declare-fun b!1090288 () Bool)

(declare-fun e!689820 () tuple2!11678)

(declare-fun call!80244 () tuple2!11678)

(assert (=> b!1090288 (= e!689820 call!80244)))

(declare-fun b!1090289 () Bool)

(declare-fun e!689822 () tuple2!11678)

(assert (=> b!1090289 (= e!689822 e!689820)))

(declare-fun lt!364773 () Bool)

(declare-fun appendIndex!78 (List!10450 List!10450 Int) Bool)

(assert (=> b!1090289 (= lt!364773 (appendIndex!78 (list!3738 (left!8928 (c!184587 objs!8))) (list!3738 (right!9258 (c!184587 objs!8))) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(declare-fun c!184745 () Bool)

(assert (=> b!1090289 (= c!184745 (< (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) (size!8062 (left!8928 (c!184587 objs!8)))))))

(declare-fun b!1090290 () Bool)

(declare-fun apply!2027 (IArray!6319 Int) tuple2!11678)

(assert (=> b!1090290 (= e!689822 (apply!2027 (xs!5850 (c!184587 objs!8)) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(declare-fun d!306662 () Bool)

(declare-fun lt!364772 () tuple2!11678)

(assert (=> d!306662 (= lt!364772 (apply!2024 (list!3738 (c!184587 objs!8)) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(assert (=> d!306662 (= lt!364772 e!689822)))

(declare-fun c!184746 () Bool)

(assert (=> d!306662 (= c!184746 ((_ is Leaf!5051) (c!184587 objs!8)))))

(assert (=> d!306662 e!689819))

(declare-fun res!484581 () Bool)

(assert (=> d!306662 (=> (not res!484581) (not e!689819))))

(assert (=> d!306662 (= res!484581 (<= 0 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))))))

(assert (=> d!306662 (= (apply!2025 (c!184587 objs!8) (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2)))) lt!364772)))

(declare-fun bm!80239 () Bool)

(declare-fun c!184747 () Bool)

(assert (=> bm!80239 (= c!184747 c!184745)))

(declare-fun e!689821 () Int)

(assert (=> bm!80239 (= call!80244 (apply!2025 (ite c!184745 (left!8928 (c!184587 objs!8)) (right!9258 (c!184587 objs!8))) e!689821))))

(declare-fun b!1090291 () Bool)

(assert (=> b!1090291 (= e!689821 (- (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))) (size!8062 (left!8928 (c!184587 objs!8)))))))

(declare-fun b!1090292 () Bool)

(assert (=> b!1090292 (= e!689821 (ite (>= lt!364580 0) (div lt!364580 2) (- (div (- lt!364580) 2))))))

(declare-fun b!1090293 () Bool)

(assert (=> b!1090293 (= e!689820 call!80244)))

(assert (= (and d!306662 res!484581) b!1090287))

(assert (= (and d!306662 c!184746) b!1090290))

(assert (= (and d!306662 (not c!184746)) b!1090289))

(assert (= (and b!1090289 c!184745) b!1090288))

(assert (= (and b!1090289 (not c!184745)) b!1090293))

(assert (= (or b!1090288 b!1090293) bm!80239))

(assert (= (and bm!80239 c!184747) b!1090292))

(assert (= (and bm!80239 (not c!184747)) b!1090291))

(declare-fun m!1240779 () Bool)

(assert (=> b!1090290 m!1240779))

(assert (=> b!1090287 m!1239919))

(declare-fun m!1240781 () Bool)

(assert (=> bm!80239 m!1240781))

(assert (=> b!1090289 m!1240517))

(assert (=> b!1090289 m!1240519))

(assert (=> b!1090289 m!1240517))

(assert (=> b!1090289 m!1240519))

(declare-fun m!1240783 () Bool)

(assert (=> b!1090289 m!1240783))

(assert (=> b!1090289 m!1240589))

(assert (=> d!306662 m!1239965))

(assert (=> d!306662 m!1239965))

(declare-fun m!1240785 () Bool)

(assert (=> d!306662 m!1240785))

(assert (=> b!1090291 m!1240589))

(assert (=> d!306410 d!306662))

(declare-fun b!1090307 () Bool)

(declare-fun e!689834 () Bool)

(assert (=> b!1090307 (= e!689834 true)))

(declare-fun e!689831 () Bool)

(assert (=> b!1089703 e!689831))

(declare-fun b!1090304 () Bool)

(declare-fun e!689832 () Bool)

(assert (=> b!1090304 (= e!689831 e!689832)))

(declare-fun b!1090305 () Bool)

(declare-fun e!689833 () Bool)

(assert (=> b!1090305 (= e!689832 e!689833)))

(declare-fun b!1090306 () Bool)

(assert (=> b!1090306 (= e!689833 e!689834)))

(assert (= b!1090306 b!1090307))

(assert (= b!1090305 b!1090306))

(assert (= b!1090304 b!1090305))

(assert (= (and b!1089703 ((_ is Cons!10432) (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585))))))) b!1090304))

(assert (=> b!1090307 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40990))))

(assert (=> b!1090307 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40990))))

(declare-fun b!1090311 () Bool)

(declare-fun e!689838 () Bool)

(assert (=> b!1090311 (= e!689838 true)))

(declare-fun e!689835 () Bool)

(assert (=> b!1089731 e!689835))

(declare-fun b!1090308 () Bool)

(declare-fun e!689836 () Bool)

(assert (=> b!1090308 (= e!689835 e!689836)))

(declare-fun b!1090309 () Bool)

(declare-fun e!689837 () Bool)

(assert (=> b!1090309 (= e!689836 e!689837)))

(declare-fun b!1090310 () Bool)

(assert (=> b!1090310 (= e!689837 e!689838)))

(assert (= b!1090310 b!1090311))

(assert (= b!1090309 b!1090310))

(assert (= b!1090308 b!1090309))

(assert (= (and b!1089731 ((_ is Cons!10432) (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585))))))) b!1090308))

(assert (=> b!1090311 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40988))))

(assert (=> b!1090311 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40988))))

(declare-fun b!1090314 () Bool)

(declare-fun e!689841 () Bool)

(assert (=> b!1090314 (= e!689841 true)))

(declare-fun b!1090313 () Bool)

(declare-fun e!689840 () Bool)

(assert (=> b!1090313 (= e!689840 e!689841)))

(declare-fun b!1090312 () Bool)

(declare-fun e!689839 () Bool)

(assert (=> b!1090312 (= e!689839 e!689840)))

(assert (=> b!1089732 e!689839))

(assert (= b!1090313 b!1090314))

(assert (= b!1090312 b!1090313))

(assert (= (and b!1089732 ((_ is Cons!10433) (t!101629 (rules!9063 (_2!6665 lt!364585))))) b!1090312))

(assert (=> b!1090314 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40988))))

(assert (=> b!1090314 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40988))))

(declare-fun b!1090325 () Bool)

(declare-fun e!689848 () Bool)

(declare-fun tp!326400 () Bool)

(declare-fun inv!13363 (Conc!3156) Bool)

(assert (=> b!1090325 (= e!689848 (and (inv!13363 (c!184586 (tokens!1335 (_2!6665 (h!15835 (innerList!3217 (xs!5850 (c!184587 objs!8)))))))) tp!326400))))

(declare-fun b!1090324 () Bool)

(declare-fun e!689850 () Bool)

(declare-fun tp!326401 () Bool)

(declare-fun inv!13364 (BalanceConc!6326) Bool)

(assert (=> b!1090324 (= e!689850 (and tp!326401 (inv!13364 (tokens!1335 (_2!6665 (h!15835 (innerList!3217 (xs!5850 (c!184587 objs!8))))))) e!689848))))

(declare-fun e!689849 () Bool)

(declare-fun b!1090323 () Bool)

(declare-fun tp!326402 () Bool)

(declare-fun inv!13365 (PrintableTokens!268) Bool)

(assert (=> b!1090323 (= e!689849 (and (inv!13365 (_2!6665 (h!15835 (innerList!3217 (xs!5850 (c!184587 objs!8)))))) e!689850 tp!326402))))

(assert (=> b!1089714 (= tp!326377 e!689849)))

(assert (= b!1090324 b!1090325))

(assert (= b!1090323 b!1090324))

(assert (= (and b!1089714 ((_ is Cons!10434) (innerList!3217 (xs!5850 (c!184587 objs!8))))) b!1090323))

(declare-fun m!1240787 () Bool)

(assert (=> b!1090325 m!1240787))

(declare-fun m!1240789 () Bool)

(assert (=> b!1090324 m!1240789))

(declare-fun m!1240791 () Bool)

(assert (=> b!1090323 m!1240791))

(declare-fun b!1090328 () Bool)

(declare-fun e!689853 () Bool)

(assert (=> b!1090328 (= e!689853 true)))

(declare-fun b!1090327 () Bool)

(declare-fun e!689852 () Bool)

(assert (=> b!1090327 (= e!689852 e!689853)))

(declare-fun b!1090326 () Bool)

(declare-fun e!689851 () Bool)

(assert (=> b!1090326 (= e!689851 e!689852)))

(assert (=> b!1089735 e!689851))

(assert (= b!1090327 b!1090328))

(assert (= b!1090326 b!1090327))

(assert (= (and b!1089735 ((_ is Cons!10433) (t!101629 (rules!9063 (_2!6665 lt!364585))))) b!1090326))

(assert (=> b!1090328 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40990))))

(assert (=> b!1090328 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40990))))

(declare-fun b!1090329 () Bool)

(declare-fun e!689854 () Bool)

(assert (=> b!1090329 (= e!689854 true)))

(declare-fun b!1090331 () Bool)

(declare-fun e!689855 () Bool)

(assert (=> b!1090331 (= e!689855 true)))

(declare-fun b!1090330 () Bool)

(assert (=> b!1090330 (= e!689854 e!689855)))

(assert (=> b!1089701 e!689854))

(assert (= (and b!1089701 ((_ is Node!3156) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090329))

(assert (= b!1090330 b!1090331))

(assert (= (and b!1089701 ((_ is Leaf!5050) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090330))

(declare-fun b!1090332 () Bool)

(declare-fun e!689856 () Bool)

(assert (=> b!1090332 (= e!689856 true)))

(declare-fun b!1090334 () Bool)

(declare-fun e!689857 () Bool)

(assert (=> b!1090334 (= e!689857 true)))

(declare-fun b!1090333 () Bool)

(assert (=> b!1090333 (= e!689856 e!689857)))

(assert (=> b!1089701 e!689856))

(assert (= (and b!1089701 ((_ is Node!3156) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090332))

(assert (= b!1090333 b!1090334))

(assert (= (and b!1089701 ((_ is Leaf!5050) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090333))

(declare-fun b!1090338 () Bool)

(declare-fun e!689861 () Bool)

(assert (=> b!1090338 (= e!689861 true)))

(declare-fun e!689858 () Bool)

(assert (=> b!1089717 e!689858))

(declare-fun b!1090335 () Bool)

(declare-fun e!689859 () Bool)

(assert (=> b!1090335 (= e!689858 e!689859)))

(declare-fun b!1090336 () Bool)

(declare-fun e!689860 () Bool)

(assert (=> b!1090336 (= e!689859 e!689860)))

(declare-fun b!1090337 () Bool)

(assert (=> b!1090337 (= e!689860 e!689861)))

(assert (= b!1090337 b!1090338))

(assert (= b!1090336 b!1090337))

(assert (= b!1090335 b!1090336))

(assert (= (and b!1089717 ((_ is Cons!10432) (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585))))))) b!1090335))

(assert (=> b!1090338 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40989))))

(assert (=> b!1090338 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (rule!3199 (h!15833 (innerList!3216 (xs!5849 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))))))) (dynLambda!4564 order!6269 lambda!40989))))

(declare-fun e!689862 () Bool)

(declare-fun tp!326403 () Bool)

(declare-fun b!1090339 () Bool)

(declare-fun tp!326405 () Bool)

(assert (=> b!1090339 (= e!689862 (and (inv!13352 (left!8928 (left!8928 (c!184587 objs!8)))) tp!326405 (inv!13352 (right!9258 (left!8928 (c!184587 objs!8)))) tp!326403))))

(declare-fun b!1090341 () Bool)

(declare-fun e!689863 () Bool)

(declare-fun tp!326404 () Bool)

(assert (=> b!1090341 (= e!689863 tp!326404)))

(declare-fun b!1090340 () Bool)

(assert (=> b!1090340 (= e!689862 (and (inv!13359 (xs!5850 (left!8928 (c!184587 objs!8)))) e!689863))))

(assert (=> b!1089712 (= tp!326378 (and (inv!13352 (left!8928 (c!184587 objs!8))) e!689862))))

(assert (= (and b!1089712 ((_ is Node!3157) (left!8928 (c!184587 objs!8)))) b!1090339))

(assert (= b!1090340 b!1090341))

(assert (= (and b!1089712 ((_ is Leaf!5051) (left!8928 (c!184587 objs!8)))) b!1090340))

(declare-fun m!1240793 () Bool)

(assert (=> b!1090339 m!1240793))

(declare-fun m!1240795 () Bool)

(assert (=> b!1090339 m!1240795))

(declare-fun m!1240797 () Bool)

(assert (=> b!1090340 m!1240797))

(assert (=> b!1089712 m!1240125))

(declare-fun tp!326408 () Bool)

(declare-fun b!1090342 () Bool)

(declare-fun tp!326406 () Bool)

(declare-fun e!689864 () Bool)

(assert (=> b!1090342 (= e!689864 (and (inv!13352 (left!8928 (right!9258 (c!184587 objs!8)))) tp!326408 (inv!13352 (right!9258 (right!9258 (c!184587 objs!8)))) tp!326406))))

(declare-fun b!1090344 () Bool)

(declare-fun e!689865 () Bool)

(declare-fun tp!326407 () Bool)

(assert (=> b!1090344 (= e!689865 tp!326407)))

(declare-fun b!1090343 () Bool)

(assert (=> b!1090343 (= e!689864 (and (inv!13359 (xs!5850 (right!9258 (c!184587 objs!8)))) e!689865))))

(assert (=> b!1089712 (= tp!326376 (and (inv!13352 (right!9258 (c!184587 objs!8))) e!689864))))

(assert (= (and b!1089712 ((_ is Node!3157) (right!9258 (c!184587 objs!8)))) b!1090342))

(assert (= b!1090343 b!1090344))

(assert (= (and b!1089712 ((_ is Leaf!5051) (right!9258 (c!184587 objs!8)))) b!1090343))

(declare-fun m!1240799 () Bool)

(assert (=> b!1090342 m!1240799))

(declare-fun m!1240801 () Bool)

(assert (=> b!1090342 m!1240801))

(declare-fun m!1240803 () Bool)

(assert (=> b!1090343 m!1240803))

(assert (=> b!1089712 m!1240127))

(declare-fun b!1090345 () Bool)

(declare-fun e!689866 () Bool)

(assert (=> b!1090345 (= e!689866 true)))

(declare-fun b!1090347 () Bool)

(declare-fun e!689867 () Bool)

(assert (=> b!1090347 (= e!689867 true)))

(declare-fun b!1090346 () Bool)

(assert (=> b!1090346 (= e!689866 e!689867)))

(assert (=> b!1089715 e!689866))

(assert (= (and b!1089715 ((_ is Node!3156) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090345))

(assert (= b!1090346 b!1090347))

(assert (= (and b!1089715 ((_ is Leaf!5050) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090346))

(declare-fun b!1090348 () Bool)

(declare-fun e!689868 () Bool)

(assert (=> b!1090348 (= e!689868 true)))

(declare-fun b!1090350 () Bool)

(declare-fun e!689869 () Bool)

(assert (=> b!1090350 (= e!689869 true)))

(declare-fun b!1090349 () Bool)

(assert (=> b!1090349 (= e!689868 e!689869)))

(assert (=> b!1089715 e!689868))

(assert (= (and b!1089715 ((_ is Node!3156) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090348))

(assert (= b!1090349 b!1090350))

(assert (= (and b!1089715 ((_ is Leaf!5050) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090349))

(declare-fun b!1090351 () Bool)

(declare-fun e!689870 () Bool)

(assert (=> b!1090351 (= e!689870 true)))

(declare-fun b!1090353 () Bool)

(declare-fun e!689871 () Bool)

(assert (=> b!1090353 (= e!689871 true)))

(declare-fun b!1090352 () Bool)

(assert (=> b!1090352 (= e!689870 e!689871)))

(assert (=> b!1089729 e!689870))

(assert (= (and b!1089729 ((_ is Node!3156) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090351))

(assert (= b!1090352 b!1090353))

(assert (= (and b!1089729 ((_ is Leaf!5050) (left!8927 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090352))

(declare-fun b!1090354 () Bool)

(declare-fun e!689872 () Bool)

(assert (=> b!1090354 (= e!689872 true)))

(declare-fun b!1090356 () Bool)

(declare-fun e!689873 () Bool)

(assert (=> b!1090356 (= e!689873 true)))

(declare-fun b!1090355 () Bool)

(assert (=> b!1090355 (= e!689872 e!689873)))

(assert (=> b!1089729 e!689872))

(assert (= (and b!1089729 ((_ is Node!3156) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090354))

(assert (= b!1090355 b!1090356))

(assert (= (and b!1089729 ((_ is Leaf!5050) (right!9257 (c!184586 (tokens!1335 (_2!6665 lt!364585)))))) b!1090355))

(declare-fun b!1090359 () Bool)

(declare-fun e!689876 () Bool)

(assert (=> b!1090359 (= e!689876 true)))

(declare-fun b!1090358 () Bool)

(declare-fun e!689875 () Bool)

(assert (=> b!1090358 (= e!689875 e!689876)))

(declare-fun b!1090357 () Bool)

(declare-fun e!689874 () Bool)

(assert (=> b!1090357 (= e!689874 e!689875)))

(assert (=> b!1089726 e!689874))

(assert (= b!1090358 b!1090359))

(assert (= b!1090357 b!1090358))

(assert (= (and b!1089726 ((_ is Cons!10433) (t!101629 (rules!9063 (_2!6665 lt!364585))))) b!1090357))

(assert (=> b!1090359 (< (dynLambda!4563 order!6267 (toValue!2853 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40989))))

(assert (=> b!1090359 (< (dynLambda!4565 order!6271 (toChars!2712 (transformation!1776 (h!15834 (t!101629 (rules!9063 (_2!6665 lt!364585))))))) (dynLambda!4564 order!6269 lambda!40989))))

(declare-fun b_lambda!30475 () Bool)

(assert (= b_lambda!30453 (or start!93114 b_lambda!30475)))

(declare-fun bs!257869 () Bool)

(declare-fun d!306664 () Bool)

(assert (= bs!257869 (and d!306664 start!93114)))

(declare-fun usesJsonRules!0 (PrintableTokens!268) Bool)

(assert (=> bs!257869 (= (dynLambda!4559 lambda!40987 (h!15835 (list!3736 objs!8))) (usesJsonRules!0 (_2!6665 (h!15835 (list!3736 objs!8)))))))

(declare-fun m!1240805 () Bool)

(assert (=> bs!257869 m!1240805))

(assert (=> b!1090085 d!306664))

(declare-fun b_lambda!30477 () Bool)

(assert (= b_lambda!30465 (or b!1089505 b_lambda!30477)))

(assert (=> d!306644 d!306434))

(declare-fun b_lambda!30479 () Bool)

(assert (= b_lambda!30467 (or b!1089505 b_lambda!30479)))

(declare-fun bs!257870 () Bool)

(declare-fun d!306666 () Bool)

(assert (= bs!257870 (and d!306666 b!1089505)))

(assert (=> bs!257870 (= (dynLambda!4559 lambda!40990 (h!15835 (t!101630 lt!364588))) (> (_1!6665 (h!15835 (t!101630 lt!364588))) (_1!6665 lt!364585)))))

(assert (=> b!1090252 d!306666))

(declare-fun b_lambda!30481 () Bool)

(assert (= b_lambda!30473 (or b!1089505 b_lambda!30481)))

(declare-fun bs!257871 () Bool)

(declare-fun d!306668 () Bool)

(assert (= bs!257871 (and d!306668 b!1089505)))

(assert (=> bs!257871 (= (dynLambda!4559 lambda!40988 (h!15835 (list!3736 lt!364581))) (< (_1!6665 (h!15835 (list!3736 lt!364581))) (_1!6665 lt!364585)))))

(assert (=> b!1090262 d!306668))

(declare-fun b_lambda!30483 () Bool)

(assert (= b_lambda!30457 (or b!1089505 b_lambda!30483)))

(declare-fun bs!257872 () Bool)

(declare-fun d!306670 () Bool)

(assert (= bs!257872 (and d!306670 b!1089505)))

(assert (=> bs!257872 (= (dynLambda!4559 lambda!40989 (h!15835 (list!3736 objs!8))) (= (_1!6665 (h!15835 (list!3736 objs!8))) (_1!6665 lt!364585)))))

(assert (=> b!1090175 d!306670))

(declare-fun b_lambda!30485 () Bool)

(assert (= b_lambda!30463 (or b!1089505 b_lambda!30485)))

(assert (=> b!1090248 d!306438))

(declare-fun b_lambda!30487 () Bool)

(assert (= b_lambda!30459 (or b!1089505 b_lambda!30487)))

(declare-fun bs!257873 () Bool)

(declare-fun d!306672 () Bool)

(assert (= bs!257873 (and d!306672 b!1089505)))

(assert (=> bs!257873 (= (dynLambda!4559 lambda!40988 (h!15835 (list!3736 objs!8))) (< (_1!6665 (h!15835 (list!3736 objs!8))) (_1!6665 lt!364585)))))

(assert (=> b!1090229 d!306672))

(declare-fun b_lambda!30489 () Bool)

(assert (= b_lambda!30455 (or b!1089505 b_lambda!30489)))

(declare-fun bs!257874 () Bool)

(declare-fun d!306674 () Bool)

(assert (= bs!257874 (and d!306674 b!1089505)))

(assert (=> bs!257874 (= (dynLambda!4559 lambda!40988 (h!15835 (t!101630 lt!364583))) (< (_1!6665 (h!15835 (t!101630 lt!364583))) (_1!6665 lt!364585)))))

(assert (=> b!1090156 d!306674))

(declare-fun b_lambda!30491 () Bool)

(assert (= b_lambda!30451 (or b!1089505 b_lambda!30491)))

(declare-fun bs!257875 () Bool)

(declare-fun d!306676 () Bool)

(assert (= bs!257875 (and d!306676 b!1089505)))

(assert (=> bs!257875 (= (dynLambda!4559 lambda!40990 (h!15835 (list!3736 objs!8))) (> (_1!6665 (h!15835 (list!3736 objs!8))) (_1!6665 lt!364585)))))

(assert (=> b!1090061 d!306676))

(declare-fun b_lambda!30493 () Bool)

(assert (= b_lambda!30471 (or b!1089505 b_lambda!30493)))

(assert (=> d!306656 d!306434))

(declare-fun b_lambda!30495 () Bool)

(assert (= b_lambda!30469 (or b!1089505 b_lambda!30495)))

(assert (=> b!1090256 d!306672))

(declare-fun b_lambda!30497 () Bool)

(assert (= b_lambda!30461 (or b!1089505 b_lambda!30497)))

(declare-fun bs!257876 () Bool)

(declare-fun d!306678 () Bool)

(assert (= bs!257876 (and d!306678 b!1089505)))

(assert (=> bs!257876 (= (dynLambda!4559 lambda!40988 (h!15835 lt!364663)) (< (_1!6665 (h!15835 lt!364663)) (_1!6665 lt!364585)))))

(assert (=> b!1090235 d!306678))

(check-sat (not b!1090236) (not b!1090225) (not d!306612) (not d!306568) (not b!1090079) (not b!1090185) (not b!1090194) (not b_lambda!30477) (not bm!80236) (not b!1090272) (not b!1090200) (not d!306570) (not b_lambda!30485) (not b_lambda!30479) (not bs!257869) (not bm!80233) (not b_lambda!30475) (not d!306652) (not b!1090098) (not b!1090308) (not b!1090080) (not b!1090196) (not b!1090204) (not b!1090201) (not b_lambda!30401) (not d!306630) (not b!1090240) (not d!306660) (not b!1090341) (not b!1090351) (not d!306626) (not d!306564) (not b_lambda!30483) (not b!1090086) (not b!1090133) (not d!306662) (not b!1090212) (not d!306638) (not b_lambda!30491) (not b!1090230) (not b!1090063) (not b!1090260) (not b!1090232) (not d!306600) (not b!1090233) (not b!1090112) (not b!1090356) (not b!1090216) (not b_lambda!30395) (not b!1090111) (not b!1090343) (not b!1090137) (not b!1090331) (not b!1090184) (not b!1090187) (not b!1090238) (not b!1090335) (not b!1090193) (not b!1090218) (not b!1090223) (not bm!80234) (not b!1090243) (not b!1090347) (not b!1090354) (not b!1090214) (not b!1090202) (not d!306618) (not b!1090244) (not d!306576) (not b!1090242) (not b!1090205) (not b!1090353) (not d!306594) (not b!1090116) (not b!1090326) (not d!306606) (not b!1090340) (not d!306654) (not b!1090160) (not b!1090287) (not b!1090339) (not b!1090334) (not b!1090197) (not b!1090228) (not b!1090189) (not b_lambda!30489) (not d!306566) (not b!1090183) (not d!306620) (not b!1090114) (not d!306562) (not b!1090141) (not bm!80239) (not b!1090208) (not b!1090060) (not b!1090179) (not b!1090263) (not bm!80235) (not b!1090059) (not b!1090290) (not b!1090203) (not b_lambda!30493) (not b!1090329) (not b!1090323) (not b!1090304) (not b!1090325) (not b!1090136) (not d!306640) (not b!1090226) (not b!1090344) (not b!1090097) (not b!1090253) (not b!1090271) (not d!306598) (not b!1090219) (not b!1090140) (not b!1090270) (not d!306580) (not b!1090348) (not b!1089712) (not b!1090332) (not b!1090188) (not b!1090342) (not b!1090186) (not b!1090158) (not b!1090177) (not b!1090251) (not b!1090357) (not b!1090289) (not d!306650) (not b!1090221) (not b!1090255) (not b!1090154) (not b!1090324) (not b!1090224) (not d!306592) (not b_lambda!30497) (not d!306608) (not b!1090222) (not b!1090199) (not b_lambda!30495) (not b!1090350) (not b!1090113) (not b_lambda!30399) (not b!1090078) (not b_lambda!30397) (not b!1090084) (not b!1090174) (not b!1090115) (not d!306590) (not b!1090345) (not b!1090134) (not b!1090220) (not b!1090209) (not b!1090068) (not b!1090149) (not b!1090247) (not b!1090143) (not b!1090312) (not b!1090169) (not b!1090234) (not b_lambda!30481) (not b!1090258) (not d!306588) (not b!1090138) (not b!1090211) (not b_lambda!30487) (not b!1090190) (not b!1090096) (not b!1090173) (not b!1090291) (not b!1090082) (not b!1090249) (not b!1090065))
(check-sat)
