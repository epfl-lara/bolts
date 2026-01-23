; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95310 () Bool)

(assert start!95310)

(declare-fun bs!259894 () Bool)

(declare-fun b!1104656 () Bool)

(assert (= bs!259894 (and b!1104656 start!95310)))

(declare-fun lambda!44108 () Int)

(declare-fun lambda!44107 () Int)

(assert (=> bs!259894 (not (= lambda!44108 lambda!44107))))

(declare-fun b!1104671 () Bool)

(declare-fun e!699994 () Bool)

(assert (=> b!1104671 (= e!699994 true)))

(declare-fun b!1104670 () Bool)

(declare-fun e!699993 () Bool)

(assert (=> b!1104670 (= e!699993 e!699994)))

(assert (=> b!1104656 e!699993))

(assert (= b!1104670 b!1104671))

(assert (= b!1104656 b!1104670))

(declare-fun lambda!44109 () Int)

(assert (=> bs!259894 (not (= lambda!44109 lambda!44107))))

(assert (=> b!1104656 (not (= lambda!44109 lambda!44108))))

(declare-fun b!1104673 () Bool)

(declare-fun e!699996 () Bool)

(assert (=> b!1104673 (= e!699996 true)))

(declare-fun b!1104672 () Bool)

(declare-fun e!699995 () Bool)

(assert (=> b!1104672 (= e!699995 e!699996)))

(assert (=> b!1104656 e!699995))

(assert (= b!1104672 b!1104673))

(assert (= b!1104656 b!1104672))

(declare-fun lambda!44110 () Int)

(assert (=> bs!259894 (not (= lambda!44110 lambda!44107))))

(assert (=> b!1104656 (not (= lambda!44110 lambda!44108))))

(assert (=> b!1104656 (not (= lambda!44110 lambda!44109))))

(declare-fun b!1104675 () Bool)

(declare-fun e!699998 () Bool)

(assert (=> b!1104675 (= e!699998 true)))

(declare-fun b!1104674 () Bool)

(declare-fun e!699997 () Bool)

(assert (=> b!1104674 (= e!699997 e!699998)))

(assert (=> b!1104656 e!699997))

(assert (= b!1104674 b!1104675))

(assert (= b!1104656 b!1104674))

(declare-fun b!1104646 () Bool)

(declare-datatypes ((Unit!16358 0))(
  ( (Unit!16359) )
))
(declare-fun e!699976 () Unit!16358)

(declare-fun err!2912 () Unit!16358)

(assert (=> b!1104646 (= e!699976 err!2912)))

(declare-datatypes ((List!10727 0))(
  ( (Nil!10711) (Cons!10711 (h!16112 (_ BitVec 16)) (t!104743 List!10727)) )
))
(declare-datatypes ((TokenValue!1912 0))(
  ( (FloatLiteralValue!3824 (text!13829 List!10727)) (TokenValueExt!1911 (__x!7494 Int)) (Broken!9560 (value!60538 List!10727)) (Object!1927) (End!1912) (Def!1912) (Underscore!1912) (Match!1912) (Else!1912) (Error!1912) (Case!1912) (If!1912) (Extends!1912) (Abstract!1912) (Class!1912) (Val!1912) (DelimiterValue!3824 (del!1972 List!10727)) (KeywordValue!1918 (value!60539 List!10727)) (CommentValue!3824 (value!60540 List!10727)) (WhitespaceValue!3824 (value!60541 List!10727)) (IndentationValue!1912 (value!60542 List!10727)) (String!13129) (Int32!1912) (Broken!9561 (value!60543 List!10727)) (Boolean!1913) (Unit!16360) (OperatorValue!1915 (op!1972 List!10727)) (IdentifierValue!3824 (value!60544 List!10727)) (IdentifierValue!3825 (value!60545 List!10727)) (WhitespaceValue!3825 (value!60546 List!10727)) (True!3824) (False!3824) (Broken!9562 (value!60547 List!10727)) (Broken!9563 (value!60548 List!10727)) (True!3825) (RightBrace!1912) (RightBracket!1912) (Colon!1912) (Null!1912) (Comma!1912) (LeftBracket!1912) (False!3825) (LeftBrace!1912) (ImaginaryLiteralValue!1912 (text!13830 List!10727)) (StringLiteralValue!5736 (value!60549 List!10727)) (EOFValue!1912 (value!60550 List!10727)) (IdentValue!1912 (value!60551 List!10727)) (DelimiterValue!3825 (value!60552 List!10727)) (DedentValue!1912 (value!60553 List!10727)) (NewLineValue!1912 (value!60554 List!10727)) (IntegerValue!5736 (value!60555 (_ BitVec 32)) (text!13831 List!10727)) (IntegerValue!5737 (value!60556 Int) (text!13832 List!10727)) (Times!1912) (Or!1912) (Equal!1912) (Minus!1912) (Broken!9564 (value!60557 List!10727)) (And!1912) (Div!1912) (LessEqual!1912) (Mod!1912) (Concat!5027) (Not!1912) (Plus!1912) (SpaceValue!1912 (value!60558 List!10727)) (IntegerValue!5738 (value!60559 Int) (text!13833 List!10727)) (StringLiteralValue!5737 (text!13834 List!10727)) (FloatLiteralValue!3825 (text!13835 List!10727)) (BytesLiteralValue!1912 (value!60560 List!10727)) (CommentValue!3825 (value!60561 List!10727)) (StringLiteralValue!5738 (value!60562 List!10727)) (ErrorTokenValue!1912 (msg!1973 List!10727)) )
))
(declare-datatypes ((Regex!3115 0))(
  ( (ElementMatch!3115 (c!187528 (_ BitVec 16))) (Concat!5028 (regOne!6742 Regex!3115) (regTwo!6742 Regex!3115)) (EmptyExpr!3115) (Star!3115 (reg!3444 Regex!3115)) (EmptyLang!3115) (Union!3115 (regOne!6743 Regex!3115) (regTwo!6743 Regex!3115)) )
))
(declare-datatypes ((String!13130 0))(
  ( (String!13131 (value!60563 String)) )
))
(declare-datatypes ((IArray!6735 0))(
  ( (IArray!6736 (innerList!3425 List!10727)) )
))
(declare-datatypes ((Conc!3365 0))(
  ( (Node!3365 (left!9299 Conc!3365) (right!9629 Conc!3365) (csize!6960 Int) (cheight!3576 Int)) (Leaf!5294 (xs!6058 IArray!6735) (csize!6961 Int)) (Empty!3365) )
))
(declare-datatypes ((BalanceConc!6744 0))(
  ( (BalanceConc!6745 (c!187529 Conc!3365)) )
))
(declare-datatypes ((TokenValueInjection!3524 0))(
  ( (TokenValueInjection!3525 (toValue!2923 Int) (toChars!2782 Int)) )
))
(declare-datatypes ((Rule!3492 0))(
  ( (Rule!3493 (regex!1846 Regex!3115) (tag!2108 String!13130) (isSeparator!1846 Bool) (transformation!1846 TokenValueInjection!3524)) )
))
(declare-datatypes ((Token!3358 0))(
  ( (Token!3359 (value!60564 TokenValue!1912) (rule!3269 Rule!3492) (size!8330 Int) (originalCharacters!2402 List!10727)) )
))
(declare-datatypes ((List!10728 0))(
  ( (Nil!10712) (Cons!10712 (h!16113 Token!3358) (t!104744 List!10728)) )
))
(declare-datatypes ((IArray!6737 0))(
  ( (IArray!6738 (innerList!3426 List!10728)) )
))
(declare-datatypes ((Conc!3366 0))(
  ( (Node!3366 (left!9300 Conc!3366) (right!9630 Conc!3366) (csize!6962 Int) (cheight!3577 Int)) (Leaf!5295 (xs!6059 IArray!6737) (csize!6963 Int)) (Empty!3366) )
))
(declare-datatypes ((List!10729 0))(
  ( (Nil!10713) (Cons!10713 (h!16114 Rule!3492) (t!104745 List!10729)) )
))
(declare-datatypes ((BalanceConc!6746 0))(
  ( (BalanceConc!6747 (c!187530 Conc!3366)) )
))
(declare-datatypes ((PrintableTokens!408 0))(
  ( (PrintableTokens!409 (rules!9133 List!10729) (tokens!1405 BalanceConc!6746)) )
))
(declare-datatypes ((tuple2!11818 0))(
  ( (tuple2!11819 (_1!6735 Int) (_2!6735 PrintableTokens!408)) )
))
(declare-datatypes ((List!10730 0))(
  ( (Nil!10714) (Cons!10714 (h!16115 tuple2!11818) (t!104746 List!10730)) )
))
(declare-datatypes ((IArray!6739 0))(
  ( (IArray!6740 (innerList!3427 List!10730)) )
))
(declare-datatypes ((Conc!3367 0))(
  ( (Node!3367 (left!9301 Conc!3367) (right!9631 Conc!3367) (csize!6964 Int) (cheight!3578 Int)) (Leaf!5296 (xs!6060 IArray!6739) (csize!6965 Int)) (Empty!3367) )
))
(declare-datatypes ((BalanceConc!6748 0))(
  ( (BalanceConc!6749 (c!187531 Conc!3367)) )
))
(declare-fun lt!374262 () BalanceConc!6748)

(declare-fun lt!374268 () Unit!16358)

(declare-fun lt!374245 () tuple2!11818)

(declare-fun forallContained!540 (List!10730 Int tuple2!11818) Unit!16358)

(declare-fun list!3870 (BalanceConc!6748) List!10730)

(assert (=> b!1104646 (= lt!374268 (forallContained!540 (list!3870 lt!374262) lambda!44110 lt!374245))))

(assert (=> b!1104646 true))

(declare-fun b!1104647 () Bool)

(declare-fun e!699978 () Bool)

(declare-fun e!699984 () Bool)

(assert (=> b!1104647 (= e!699978 (not e!699984))))

(declare-fun res!489691 () Bool)

(assert (=> b!1104647 (=> res!489691 e!699984)))

(declare-fun lt!374258 () BalanceConc!6748)

(declare-fun lt!374257 () Int)

(declare-fun size!8331 (BalanceConc!6748) Int)

(assert (=> b!1104647 (= res!489691 (>= (size!8331 lt!374258) lt!374257))))

(declare-fun e!699987 () Bool)

(assert (=> b!1104647 e!699987))

(declare-fun res!489697 () Bool)

(assert (=> b!1104647 (=> res!489697 e!699987)))

(declare-fun lt!374250 () Bool)

(assert (=> b!1104647 (= res!489697 lt!374250)))

(declare-fun lt!374247 () List!10730)

(declare-fun isEmpty!6711 (List!10730) Bool)

(assert (=> b!1104647 (= lt!374250 (isEmpty!6711 lt!374247))))

(declare-fun lt!374251 () Unit!16358)

(declare-fun lemmaNotForallFilterShorter!73 (List!10730 Int) Unit!16358)

(assert (=> b!1104647 (= lt!374251 (lemmaNotForallFilterShorter!73 lt!374247 lambda!44108))))

(declare-fun objs!8 () BalanceConc!6748)

(assert (=> b!1104647 (= lt!374247 (list!3870 objs!8))))

(declare-fun lt!374267 () Unit!16358)

(declare-fun e!699982 () Unit!16358)

(assert (=> b!1104647 (= lt!374267 e!699982)))

(declare-fun c!187526 () Bool)

(declare-fun forall!2513 (BalanceConc!6748 Int) Bool)

(assert (=> b!1104647 (= c!187526 (forall!2513 objs!8 lambda!44108))))

(declare-fun b!1104648 () Bool)

(declare-fun e!699975 () Bool)

(declare-fun e!699986 () Bool)

(assert (=> b!1104648 (= e!699975 e!699986)))

(declare-fun res!489689 () Bool)

(assert (=> b!1104648 (=> (not res!489689) (not e!699986))))

(assert (=> b!1104648 (= res!489689 (> lt!374257 1))))

(assert (=> b!1104648 (= lt!374257 (size!8331 objs!8))))

(declare-fun res!489696 () Bool)

(assert (=> start!95310 (=> (not res!489696) (not e!699975))))

(assert (=> start!95310 (= res!489696 (forall!2513 objs!8 lambda!44107))))

(assert (=> start!95310 e!699975))

(declare-fun e!699988 () Bool)

(declare-fun inv!13780 (BalanceConc!6748) Bool)

(assert (=> start!95310 (and (inv!13780 objs!8) e!699988)))

(declare-fun b!1104649 () Bool)

(declare-fun e!699981 () Unit!16358)

(declare-fun err!2913 () Unit!16358)

(assert (=> b!1104649 (= e!699981 err!2913)))

(declare-fun lt!374256 () Unit!16358)

(assert (=> b!1104649 (= lt!374256 (forallContained!540 lt!374247 lambda!44110 lt!374245))))

(assert (=> b!1104649 true))

(declare-fun b!1104650 () Bool)

(declare-fun e!699979 () Bool)

(declare-fun e!699977 () Bool)

(assert (=> b!1104650 (= e!699979 e!699977)))

(declare-fun res!489694 () Bool)

(assert (=> b!1104650 (=> res!489694 e!699977)))

(assert (=> b!1104650 (= res!489694 (>= (size!8331 lt!374262) lt!374257))))

(declare-fun e!699980 () Bool)

(assert (=> b!1104650 e!699980))

(declare-fun res!489695 () Bool)

(assert (=> b!1104650 (=> res!489695 e!699980)))

(assert (=> b!1104650 (= res!489695 lt!374250)))

(declare-fun lt!374269 () Unit!16358)

(assert (=> b!1104650 (= lt!374269 (lemmaNotForallFilterShorter!73 lt!374247 lambda!44110))))

(declare-fun lt!374263 () Unit!16358)

(assert (=> b!1104650 (= lt!374263 e!699981)))

(declare-fun c!187527 () Bool)

(assert (=> b!1104650 (= c!187527 (forall!2513 objs!8 lambda!44110))))

(declare-fun b!1104651 () Bool)

(declare-fun e!699983 () Bool)

(assert (=> b!1104651 (= e!699983 e!699978)))

(declare-fun res!489693 () Bool)

(assert (=> b!1104651 (=> (not res!489693) (not e!699978))))

(declare-fun lt!374266 () Bool)

(assert (=> b!1104651 (= res!489693 (not lt!374266))))

(declare-fun lt!374252 () Unit!16358)

(declare-fun e!699985 () Unit!16358)

(assert (=> b!1104651 (= lt!374252 e!699985)))

(declare-fun c!187525 () Bool)

(assert (=> b!1104651 (= c!187525 lt!374266)))

(declare-fun contains!1925 (BalanceConc!6748 tuple2!11818) Bool)

(assert (=> b!1104651 (= lt!374266 (contains!1925 lt!374258 lt!374245))))

(declare-fun b!1104652 () Bool)

(declare-fun tp!327284 () Bool)

(declare-fun inv!13781 (Conc!3367) Bool)

(assert (=> b!1104652 (= e!699988 (and (inv!13781 (c!187531 objs!8)) tp!327284))))

(declare-fun b!1104653 () Bool)

(assert (=> b!1104653 (= e!699977 true)))

(declare-fun lt!374255 () List!10730)

(declare-fun forall!2514 (List!10730 Int) Bool)

(assert (=> b!1104653 (forall!2514 lt!374255 lambda!44107)))

(declare-fun lt!374260 () Unit!16358)

(declare-fun lemmaForallSubseq!59 (List!10730 List!10730 Int) Unit!16358)

(assert (=> b!1104653 (= lt!374260 (lemmaForallSubseq!59 lt!374255 lt!374247 lambda!44107))))

(declare-fun filter!401 (BalanceConc!6748 Int) BalanceConc!6748)

(assert (=> b!1104653 (= lt!374255 (list!3870 (filter!401 objs!8 lambda!44110)))))

(declare-fun lt!374242 () List!10730)

(assert (=> b!1104653 (forall!2514 lt!374242 lambda!44107)))

(declare-fun lt!374243 () Unit!16358)

(assert (=> b!1104653 (= lt!374243 (lemmaForallSubseq!59 lt!374242 lt!374247 lambda!44107))))

(assert (=> b!1104653 (= lt!374242 (list!3870 (filter!401 objs!8 lambda!44109)))))

(declare-fun lt!374249 () List!10730)

(assert (=> b!1104653 (forall!2514 lt!374249 lambda!44107)))

(declare-fun lt!374254 () Unit!16358)

(assert (=> b!1104653 (= lt!374254 (lemmaForallSubseq!59 lt!374249 lt!374247 lambda!44107))))

(assert (=> b!1104653 (= lt!374249 (list!3870 (filter!401 objs!8 lambda!44108)))))

(declare-fun lt!374264 () Unit!16358)

(declare-fun filterSubseq!55 (List!10730 Int) Unit!16358)

(assert (=> b!1104653 (= lt!374264 (filterSubseq!55 lt!374247 lambda!44110))))

(declare-fun lt!374244 () Unit!16358)

(assert (=> b!1104653 (= lt!374244 (filterSubseq!55 lt!374247 lambda!44109))))

(declare-fun lt!374253 () Unit!16358)

(assert (=> b!1104653 (= lt!374253 (filterSubseq!55 lt!374247 lambda!44108))))

(declare-fun b!1104654 () Bool)

(declare-fun size!8332 (List!10730) Int)

(declare-fun filter!402 (List!10730 Int) List!10730)

(assert (=> b!1104654 (= e!699980 (< (size!8332 (filter!402 lt!374247 lambda!44110)) (size!8332 lt!374247)))))

(declare-fun b!1104655 () Bool)

(declare-fun err!2911 () Unit!16358)

(assert (=> b!1104655 (= e!699982 err!2911)))

(declare-fun lt!374259 () Unit!16358)

(assert (=> b!1104655 (= lt!374259 (forallContained!540 (list!3870 objs!8) lambda!44108 lt!374245))))

(assert (=> b!1104655 true))

(assert (=> b!1104656 (= e!699986 e!699983)))

(declare-fun res!489690 () Bool)

(assert (=> b!1104656 (=> (not res!489690) (not e!699983))))

(assert (=> b!1104656 (= res!489690 (contains!1925 objs!8 lt!374245))))

(assert (=> b!1104656 (= lt!374262 (filter!401 objs!8 lambda!44110))))

(declare-fun lt!374261 () BalanceConc!6748)

(assert (=> b!1104656 (= lt!374261 (filter!401 objs!8 lambda!44109))))

(assert (=> b!1104656 (= lt!374258 (filter!401 objs!8 lambda!44108))))

(declare-fun apply!2197 (BalanceConc!6748 Int) tuple2!11818)

(assert (=> b!1104656 (= lt!374245 (apply!2197 objs!8 (ite (>= lt!374257 0) (div lt!374257 2) (- (div (- lt!374257) 2)))))))

(declare-fun b!1104657 () Bool)

(declare-fun Unit!16361 () Unit!16358)

(assert (=> b!1104657 (= e!699981 Unit!16361)))

(declare-fun b!1104658 () Bool)

(assert (=> b!1104658 (= e!699987 (< (size!8332 (filter!402 lt!374247 lambda!44108)) (size!8332 lt!374247)))))

(declare-fun b!1104659 () Bool)

(assert (=> b!1104659 (= e!699984 e!699979)))

(declare-fun res!489692 () Bool)

(assert (=> b!1104659 (=> res!489692 e!699979)))

(declare-fun lt!374248 () Bool)

(assert (=> b!1104659 (= res!489692 lt!374248)))

(declare-fun lt!374265 () Unit!16358)

(assert (=> b!1104659 (= lt!374265 e!699976)))

(declare-fun c!187524 () Bool)

(assert (=> b!1104659 (= c!187524 lt!374248)))

(assert (=> b!1104659 (= lt!374248 (contains!1925 lt!374262 lt!374245))))

(declare-fun b!1104660 () Bool)

(declare-fun Unit!16362 () Unit!16358)

(assert (=> b!1104660 (= e!699976 Unit!16362)))

(declare-fun b!1104661 () Bool)

(declare-fun Unit!16363 () Unit!16358)

(assert (=> b!1104661 (= e!699982 Unit!16363)))

(declare-fun b!1104662 () Bool)

(declare-fun Unit!16364 () Unit!16358)

(assert (=> b!1104662 (= e!699985 Unit!16364)))

(declare-fun b!1104663 () Bool)

(declare-fun err!2910 () Unit!16358)

(assert (=> b!1104663 (= e!699985 err!2910)))

(declare-fun lt!374246 () Unit!16358)

(assert (=> b!1104663 (= lt!374246 (forallContained!540 (list!3870 lt!374258) lambda!44108 lt!374245))))

(assert (=> b!1104663 true))

(assert (= (and start!95310 res!489696) b!1104648))

(assert (= (and b!1104648 res!489689) b!1104656))

(assert (= (and b!1104656 res!489690) b!1104651))

(assert (= (and b!1104651 c!187525) b!1104663))

(assert (= (and b!1104651 (not c!187525)) b!1104662))

(assert (= (and b!1104651 res!489693) b!1104647))

(assert (= (and b!1104647 c!187526) b!1104655))

(assert (= (and b!1104647 (not c!187526)) b!1104661))

(assert (= (and b!1104647 (not res!489697)) b!1104658))

(assert (= (and b!1104647 (not res!489691)) b!1104659))

(assert (= (and b!1104659 c!187524) b!1104646))

(assert (= (and b!1104659 (not c!187524)) b!1104660))

(assert (= (and b!1104659 (not res!489692)) b!1104650))

(assert (= (and b!1104650 c!187527) b!1104649))

(assert (= (and b!1104650 (not c!187527)) b!1104657))

(assert (= (and b!1104650 (not res!489695)) b!1104654))

(assert (= (and b!1104650 (not res!489694)) b!1104653))

(assert (= start!95310 b!1104652))

(declare-fun m!1261363 () Bool)

(assert (=> b!1104649 m!1261363))

(declare-fun m!1261365 () Bool)

(assert (=> b!1104658 m!1261365))

(assert (=> b!1104658 m!1261365))

(declare-fun m!1261367 () Bool)

(assert (=> b!1104658 m!1261367))

(declare-fun m!1261369 () Bool)

(assert (=> b!1104658 m!1261369))

(declare-fun m!1261371 () Bool)

(assert (=> b!1104654 m!1261371))

(assert (=> b!1104654 m!1261371))

(declare-fun m!1261373 () Bool)

(assert (=> b!1104654 m!1261373))

(assert (=> b!1104654 m!1261369))

(declare-fun m!1261375 () Bool)

(assert (=> b!1104652 m!1261375))

(declare-fun m!1261377 () Bool)

(assert (=> b!1104659 m!1261377))

(declare-fun m!1261379 () Bool)

(assert (=> b!1104648 m!1261379))

(declare-fun m!1261381 () Bool)

(assert (=> b!1104655 m!1261381))

(assert (=> b!1104655 m!1261381))

(declare-fun m!1261383 () Bool)

(assert (=> b!1104655 m!1261383))

(declare-fun m!1261385 () Bool)

(assert (=> b!1104663 m!1261385))

(assert (=> b!1104663 m!1261385))

(declare-fun m!1261387 () Bool)

(assert (=> b!1104663 m!1261387))

(declare-fun m!1261389 () Bool)

(assert (=> b!1104651 m!1261389))

(declare-fun m!1261391 () Bool)

(assert (=> b!1104646 m!1261391))

(assert (=> b!1104646 m!1261391))

(declare-fun m!1261393 () Bool)

(assert (=> b!1104646 m!1261393))

(declare-fun m!1261395 () Bool)

(assert (=> b!1104653 m!1261395))

(declare-fun m!1261397 () Bool)

(assert (=> b!1104653 m!1261397))

(declare-fun m!1261399 () Bool)

(assert (=> b!1104653 m!1261399))

(declare-fun m!1261401 () Bool)

(assert (=> b!1104653 m!1261401))

(declare-fun m!1261403 () Bool)

(assert (=> b!1104653 m!1261403))

(declare-fun m!1261405 () Bool)

(assert (=> b!1104653 m!1261405))

(declare-fun m!1261407 () Bool)

(assert (=> b!1104653 m!1261407))

(declare-fun m!1261409 () Bool)

(assert (=> b!1104653 m!1261409))

(assert (=> b!1104653 m!1261403))

(declare-fun m!1261411 () Bool)

(assert (=> b!1104653 m!1261411))

(declare-fun m!1261413 () Bool)

(assert (=> b!1104653 m!1261413))

(assert (=> b!1104653 m!1261405))

(declare-fun m!1261415 () Bool)

(assert (=> b!1104653 m!1261415))

(declare-fun m!1261417 () Bool)

(assert (=> b!1104653 m!1261417))

(declare-fun m!1261419 () Bool)

(assert (=> b!1104653 m!1261419))

(declare-fun m!1261421 () Bool)

(assert (=> b!1104653 m!1261421))

(assert (=> b!1104653 m!1261397))

(declare-fun m!1261423 () Bool)

(assert (=> b!1104653 m!1261423))

(declare-fun m!1261425 () Bool)

(assert (=> b!1104650 m!1261425))

(declare-fun m!1261427 () Bool)

(assert (=> b!1104650 m!1261427))

(declare-fun m!1261429 () Bool)

(assert (=> b!1104650 m!1261429))

(assert (=> b!1104656 m!1261405))

(assert (=> b!1104656 m!1261403))

(declare-fun m!1261431 () Bool)

(assert (=> b!1104656 m!1261431))

(declare-fun m!1261433 () Bool)

(assert (=> b!1104656 m!1261433))

(assert (=> b!1104656 m!1261397))

(declare-fun m!1261435 () Bool)

(assert (=> start!95310 m!1261435))

(declare-fun m!1261437 () Bool)

(assert (=> start!95310 m!1261437))

(assert (=> b!1104647 m!1261381))

(declare-fun m!1261439 () Bool)

(assert (=> b!1104647 m!1261439))

(declare-fun m!1261441 () Bool)

(assert (=> b!1104647 m!1261441))

(declare-fun m!1261443 () Bool)

(assert (=> b!1104647 m!1261443))

(declare-fun m!1261445 () Bool)

(assert (=> b!1104647 m!1261445))

(check-sat (not b!1104671) (not b!1104674) (not b!1104651) (not start!95310) (not b!1104670) (not b!1104672) (not b!1104646) (not b!1104659) (not b!1104652) (not b!1104654) (not b!1104675) (not b!1104663) (not b!1104656) (not b!1104648) (not b!1104653) (not b!1104649) (not b!1104673) (not b!1104650) (not b!1104658) (not b!1104655) (not b!1104647))
(check-sat)
