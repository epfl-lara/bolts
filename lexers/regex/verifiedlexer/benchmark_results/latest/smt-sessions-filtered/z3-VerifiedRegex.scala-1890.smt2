; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92962 () Bool)

(assert start!92962)

(declare-fun bs!257748 () Bool)

(declare-fun b!1088388 () Bool)

(assert (= bs!257748 (and b!1088388 start!92962)))

(declare-fun lambda!40868 () Int)

(declare-fun lambda!40867 () Int)

(assert (=> bs!257748 (not (= lambda!40868 lambda!40867))))

(declare-fun b!1088399 () Bool)

(declare-fun e!688544 () Bool)

(assert (=> b!1088399 (= e!688544 true)))

(declare-fun b!1088398 () Bool)

(declare-fun e!688543 () Bool)

(assert (=> b!1088398 (= e!688543 e!688544)))

(assert (=> b!1088388 e!688543))

(assert (= b!1088398 b!1088399))

(assert (= b!1088388 b!1088398))

(declare-fun lambda!40869 () Int)

(assert (=> bs!257748 (not (= lambda!40869 lambda!40867))))

(assert (=> b!1088388 (not (= lambda!40869 lambda!40868))))

(declare-fun b!1088401 () Bool)

(declare-fun e!688546 () Bool)

(assert (=> b!1088401 (= e!688546 true)))

(declare-fun b!1088400 () Bool)

(declare-fun e!688545 () Bool)

(assert (=> b!1088400 (= e!688545 e!688546)))

(assert (=> b!1088388 e!688545))

(assert (= b!1088400 b!1088401))

(assert (= b!1088388 b!1088400))

(declare-fun lambda!40870 () Int)

(assert (=> bs!257748 (not (= lambda!40870 lambda!40867))))

(assert (=> b!1088388 (not (= lambda!40870 lambda!40868))))

(assert (=> b!1088388 (not (= lambda!40870 lambda!40869))))

(declare-fun b!1088403 () Bool)

(declare-fun e!688548 () Bool)

(assert (=> b!1088403 (= e!688548 true)))

(declare-fun b!1088402 () Bool)

(declare-fun e!688547 () Bool)

(assert (=> b!1088402 (= e!688547 e!688548)))

(assert (=> b!1088388 e!688547))

(assert (= b!1088402 b!1088403))

(assert (= b!1088388 b!1088402))

(declare-fun b!1088386 () Bool)

(declare-fun e!688537 () Bool)

(declare-fun e!688535 () Bool)

(assert (=> b!1088386 (= e!688537 e!688535)))

(declare-fun res!483877 () Bool)

(assert (=> b!1088386 (=> (not res!483877) (not e!688535))))

(declare-fun lt!364200 () Int)

(assert (=> b!1088386 (= res!483877 (> lt!364200 1))))

(declare-datatypes ((List!10423 0))(
  ( (Nil!10407) (Cons!10407 (h!15808 (_ BitVec 16)) (t!101493 List!10423)) )
))
(declare-datatypes ((TokenValue!1836 0))(
  ( (FloatLiteralValue!3672 (text!13297 List!10423)) (TokenValueExt!1835 (__x!7418 Int)) (Broken!9180 (value!58372 List!10423)) (Object!1851) (End!1836) (Def!1836) (Underscore!1836) (Match!1836) (Else!1836) (Error!1836) (Case!1836) (If!1836) (Extends!1836) (Abstract!1836) (Class!1836) (Val!1836) (DelimiterValue!3672 (del!1896 List!10423)) (KeywordValue!1842 (value!58373 List!10423)) (CommentValue!3672 (value!58374 List!10423)) (WhitespaceValue!3672 (value!58375 List!10423)) (IndentationValue!1836 (value!58376 List!10423)) (String!12749) (Int32!1836) (Broken!9181 (value!58377 List!10423)) (Boolean!1837) (Unit!15786) (OperatorValue!1839 (op!1896 List!10423)) (IdentifierValue!3672 (value!58378 List!10423)) (IdentifierValue!3673 (value!58379 List!10423)) (WhitespaceValue!3673 (value!58380 List!10423)) (True!3672) (False!3672) (Broken!9182 (value!58381 List!10423)) (Broken!9183 (value!58382 List!10423)) (True!3673) (RightBrace!1836) (RightBracket!1836) (Colon!1836) (Null!1836) (Comma!1836) (LeftBracket!1836) (False!3673) (LeftBrace!1836) (ImaginaryLiteralValue!1836 (text!13298 List!10423)) (StringLiteralValue!5508 (value!58383 List!10423)) (EOFValue!1836 (value!58384 List!10423)) (IdentValue!1836 (value!58385 List!10423)) (DelimiterValue!3673 (value!58386 List!10423)) (DedentValue!1836 (value!58387 List!10423)) (NewLineValue!1836 (value!58388 List!10423)) (IntegerValue!5508 (value!58389 (_ BitVec 32)) (text!13299 List!10423)) (IntegerValue!5509 (value!58390 Int) (text!13300 List!10423)) (Times!1836) (Or!1836) (Equal!1836) (Minus!1836) (Broken!9184 (value!58391 List!10423)) (And!1836) (Div!1836) (LessEqual!1836) (Mod!1836) (Concat!4875) (Not!1836) (Plus!1836) (SpaceValue!1836 (value!58392 List!10423)) (IntegerValue!5510 (value!58393 Int) (text!13301 List!10423)) (StringLiteralValue!5509 (text!13302 List!10423)) (FloatLiteralValue!3673 (text!13303 List!10423)) (BytesLiteralValue!1836 (value!58394 List!10423)) (CommentValue!3673 (value!58395 List!10423)) (StringLiteralValue!5510 (value!58396 List!10423)) (ErrorTokenValue!1836 (msg!1897 List!10423)) )
))
(declare-datatypes ((Regex!3039 0))(
  ( (ElementMatch!3039 (c!184398 (_ BitVec 16))) (Concat!4876 (regOne!6590 Regex!3039) (regTwo!6590 Regex!3039)) (EmptyExpr!3039) (Star!3039 (reg!3368 Regex!3039)) (EmptyLang!3039) (Union!3039 (regOne!6591 Regex!3039) (regTwo!6591 Regex!3039)) )
))
(declare-datatypes ((String!12750 0))(
  ( (String!12751 (value!58397 String)) )
))
(declare-datatypes ((IArray!6279 0))(
  ( (IArray!6280 (innerList!3197 List!10423)) )
))
(declare-datatypes ((Conc!3137 0))(
  ( (Node!3137 (left!8893 Conc!3137) (right!9223 Conc!3137) (csize!6504 Int) (cheight!3348 Int)) (Leaf!5028 (xs!5830 IArray!6279) (csize!6505 Int)) (Empty!3137) )
))
(declare-datatypes ((BalanceConc!6288 0))(
  ( (BalanceConc!6289 (c!184399 Conc!3137)) )
))
(declare-datatypes ((TokenValueInjection!3372 0))(
  ( (TokenValueInjection!3373 (toValue!2847 Int) (toChars!2706 Int)) )
))
(declare-datatypes ((Rule!3340 0))(
  ( (Rule!3341 (regex!1770 Regex!3039) (tag!2032 String!12750) (isSeparator!1770 Bool) (transformation!1770 TokenValueInjection!3372)) )
))
(declare-datatypes ((Token!3206 0))(
  ( (Token!3207 (value!58398 TokenValue!1836) (rule!3193 Rule!3340) (size!8035 Int) (originalCharacters!2326 List!10423)) )
))
(declare-datatypes ((List!10424 0))(
  ( (Nil!10408) (Cons!10408 (h!15809 Token!3206) (t!101494 List!10424)) )
))
(declare-datatypes ((IArray!6281 0))(
  ( (IArray!6282 (innerList!3198 List!10424)) )
))
(declare-datatypes ((Conc!3138 0))(
  ( (Node!3138 (left!8894 Conc!3138) (right!9224 Conc!3138) (csize!6506 Int) (cheight!3349 Int)) (Leaf!5029 (xs!5831 IArray!6281) (csize!6507 Int)) (Empty!3138) )
))
(declare-datatypes ((List!10425 0))(
  ( (Nil!10409) (Cons!10409 (h!15810 Rule!3340) (t!101495 List!10425)) )
))
(declare-datatypes ((BalanceConc!6290 0))(
  ( (BalanceConc!6291 (c!184400 Conc!3138)) )
))
(declare-datatypes ((PrintableTokens!256 0))(
  ( (PrintableTokens!257 (rules!9057 List!10425) (tokens!1329 BalanceConc!6290)) )
))
(declare-datatypes ((tuple2!11666 0))(
  ( (tuple2!11667 (_1!6659 Int) (_2!6659 PrintableTokens!256)) )
))
(declare-datatypes ((List!10426 0))(
  ( (Nil!10410) (Cons!10410 (h!15811 tuple2!11666) (t!101496 List!10426)) )
))
(declare-datatypes ((IArray!6283 0))(
  ( (IArray!6284 (innerList!3199 List!10426)) )
))
(declare-datatypes ((Conc!3139 0))(
  ( (Node!3139 (left!8895 Conc!3139) (right!9225 Conc!3139) (csize!6508 Int) (cheight!3350 Int)) (Leaf!5030 (xs!5832 IArray!6283) (csize!6509 Int)) (Empty!3139) )
))
(declare-datatypes ((BalanceConc!6292 0))(
  ( (BalanceConc!6293 (c!184401 Conc!3139)) )
))
(declare-fun objs!8 () BalanceConc!6292)

(declare-fun size!8036 (BalanceConc!6292) Int)

(assert (=> b!1088386 (= lt!364200 (size!8036 objs!8))))

(declare-fun b!1088387 () Bool)

(declare-fun e!688534 () Bool)

(declare-fun lt!364203 () List!10426)

(declare-fun lt!364198 () tuple2!11666)

(declare-fun contains!1727 (List!10426 tuple2!11666) Bool)

(assert (=> b!1088387 (= e!688534 (not (contains!1727 lt!364203 lt!364198)))))

(declare-fun b!1088389 () Bool)

(declare-fun res!483878 () Bool)

(declare-fun e!688536 () Bool)

(assert (=> b!1088389 (=> (not res!483878) (not e!688536))))

(declare-fun lt!364202 () BalanceConc!6292)

(declare-fun contains!1728 (BalanceConc!6292 tuple2!11666) Bool)

(assert (=> b!1088389 (= res!483878 (contains!1728 lt!364202 lt!364198))))

(assert (=> b!1088388 (= e!688535 e!688536)))

(declare-fun res!483879 () Bool)

(assert (=> b!1088388 (=> (not res!483879) (not e!688536))))

(assert (=> b!1088388 (= res!483879 (contains!1728 objs!8 lt!364198))))

(declare-fun lt!364199 () BalanceConc!6292)

(declare-fun filter!193 (BalanceConc!6292 Int) BalanceConc!6292)

(assert (=> b!1088388 (= lt!364199 (filter!193 objs!8 lambda!40870))))

(declare-fun lt!364201 () BalanceConc!6292)

(assert (=> b!1088388 (= lt!364201 (filter!193 objs!8 lambda!40869))))

(assert (=> b!1088388 (= lt!364202 (filter!193 objs!8 lambda!40868))))

(declare-fun apply!2005 (BalanceConc!6292 Int) tuple2!11666)

(assert (=> b!1088388 (= lt!364198 (apply!2005 objs!8 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(declare-fun res!483880 () Bool)

(assert (=> start!92962 (=> (not res!483880) (not e!688537))))

(declare-fun forall!2294 (BalanceConc!6292 Int) Bool)

(assert (=> start!92962 (= res!483880 (forall!2294 objs!8 lambda!40867))))

(assert (=> start!92962 e!688537))

(declare-fun e!688538 () Bool)

(declare-fun inv!13313 (BalanceConc!6292) Bool)

(assert (=> start!92962 (and (inv!13313 objs!8) e!688538)))

(declare-fun b!1088390 () Bool)

(assert (=> b!1088390 (= e!688536 e!688534)))

(declare-fun res!483881 () Bool)

(assert (=> b!1088390 (=> res!483881 e!688534)))

(declare-fun forall!2295 (List!10426 Int) Bool)

(assert (=> b!1088390 (= res!483881 (not (forall!2295 lt!364203 lambda!40868)))))

(declare-fun list!3724 (BalanceConc!6292) List!10426)

(assert (=> b!1088390 (= lt!364203 (list!3724 lt!364202))))

(declare-fun b!1088391 () Bool)

(declare-fun tp!326276 () Bool)

(declare-fun inv!13314 (Conc!3139) Bool)

(assert (=> b!1088391 (= e!688538 (and (inv!13314 (c!184401 objs!8)) tp!326276))))

(assert (= (and start!92962 res!483880) b!1088386))

(assert (= (and b!1088386 res!483877) b!1088388))

(assert (= (and b!1088388 res!483879) b!1088389))

(assert (= (and b!1088389 res!483878) b!1088390))

(assert (= (and b!1088390 (not res!483881)) b!1088387))

(assert (= start!92962 b!1088391))

(declare-fun m!1238821 () Bool)

(assert (=> b!1088389 m!1238821))

(declare-fun m!1238823 () Bool)

(assert (=> b!1088388 m!1238823))

(declare-fun m!1238825 () Bool)

(assert (=> b!1088388 m!1238825))

(declare-fun m!1238827 () Bool)

(assert (=> b!1088388 m!1238827))

(declare-fun m!1238829 () Bool)

(assert (=> b!1088388 m!1238829))

(declare-fun m!1238831 () Bool)

(assert (=> b!1088388 m!1238831))

(declare-fun m!1238833 () Bool)

(assert (=> start!92962 m!1238833))

(declare-fun m!1238835 () Bool)

(assert (=> start!92962 m!1238835))

(declare-fun m!1238837 () Bool)

(assert (=> b!1088386 m!1238837))

(declare-fun m!1238839 () Bool)

(assert (=> b!1088387 m!1238839))

(declare-fun m!1238841 () Bool)

(assert (=> b!1088390 m!1238841))

(declare-fun m!1238843 () Bool)

(assert (=> b!1088390 m!1238843))

(declare-fun m!1238845 () Bool)

(assert (=> b!1088391 m!1238845))

(check-sat (not b!1088403) (not b!1088402) (not b!1088391) (not b!1088386) (not b!1088390) (not b!1088387) (not b!1088399) (not b!1088388) (not start!92962) (not b!1088400) (not b!1088401) (not b!1088398) (not b!1088389))
(check-sat)
(get-model)

(declare-fun d!306045 () Bool)

(declare-fun lt!364206 () Bool)

(assert (=> d!306045 (= lt!364206 (contains!1727 (list!3724 lt!364202) lt!364198))))

(declare-fun contains!1730 (Conc!3139 tuple2!11666) Bool)

(assert (=> d!306045 (= lt!364206 (contains!1730 (c!184401 lt!364202) lt!364198))))

(assert (=> d!306045 (= (contains!1728 lt!364202 lt!364198) lt!364206)))

(declare-fun bs!257749 () Bool)

(assert (= bs!257749 d!306045))

(assert (=> bs!257749 m!1238843))

(assert (=> bs!257749 m!1238843))

(declare-fun m!1238847 () Bool)

(assert (=> bs!257749 m!1238847))

(declare-fun m!1238849 () Bool)

(assert (=> bs!257749 m!1238849))

(assert (=> b!1088389 d!306045))

(declare-fun d!306047 () Bool)

(declare-fun lt!364209 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1502 (List!10426) (InoxSet tuple2!11666))

(assert (=> d!306047 (= lt!364209 (select (content!1502 lt!364203) lt!364198))))

(declare-fun e!688554 () Bool)

(assert (=> d!306047 (= lt!364209 e!688554)))

(declare-fun res!483887 () Bool)

(assert (=> d!306047 (=> (not res!483887) (not e!688554))))

(get-info :version)

(assert (=> d!306047 (= res!483887 ((_ is Cons!10410) lt!364203))))

(assert (=> d!306047 (= (contains!1727 lt!364203 lt!364198) lt!364209)))

(declare-fun b!1088408 () Bool)

(declare-fun e!688553 () Bool)

(assert (=> b!1088408 (= e!688554 e!688553)))

(declare-fun res!483886 () Bool)

(assert (=> b!1088408 (=> res!483886 e!688553)))

(assert (=> b!1088408 (= res!483886 (= (h!15811 lt!364203) lt!364198))))

(declare-fun b!1088409 () Bool)

(assert (=> b!1088409 (= e!688553 (contains!1727 (t!101496 lt!364203) lt!364198))))

(assert (= (and d!306047 res!483887) b!1088408))

(assert (= (and b!1088408 (not res!483886)) b!1088409))

(declare-fun m!1238851 () Bool)

(assert (=> d!306047 m!1238851))

(declare-fun m!1238853 () Bool)

(assert (=> d!306047 m!1238853))

(declare-fun m!1238855 () Bool)

(assert (=> b!1088409 m!1238855))

(assert (=> b!1088387 d!306047))

(declare-fun d!306049 () Bool)

(declare-fun lt!364210 () Bool)

(assert (=> d!306049 (= lt!364210 (contains!1727 (list!3724 objs!8) lt!364198))))

(assert (=> d!306049 (= lt!364210 (contains!1730 (c!184401 objs!8) lt!364198))))

(assert (=> d!306049 (= (contains!1728 objs!8 lt!364198) lt!364210)))

(declare-fun bs!257750 () Bool)

(assert (= bs!257750 d!306049))

(declare-fun m!1238857 () Bool)

(assert (=> bs!257750 m!1238857))

(assert (=> bs!257750 m!1238857))

(declare-fun m!1238859 () Bool)

(assert (=> bs!257750 m!1238859))

(declare-fun m!1238861 () Bool)

(assert (=> bs!257750 m!1238861))

(assert (=> b!1088388 d!306049))

(declare-fun d!306051 () Bool)

(declare-fun lt!364216 () tuple2!11666)

(declare-fun apply!2008 (List!10426 Int) tuple2!11666)

(assert (=> d!306051 (= lt!364216 (apply!2008 (list!3724 objs!8) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(declare-fun apply!2009 (Conc!3139 Int) tuple2!11666)

(assert (=> d!306051 (= lt!364216 (apply!2009 (c!184401 objs!8) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(declare-fun e!688566 () Bool)

(assert (=> d!306051 e!688566))

(declare-fun res!483899 () Bool)

(assert (=> d!306051 (=> (not res!483899) (not e!688566))))

(assert (=> d!306051 (= res!483899 (<= 0 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(assert (=> d!306051 (= (apply!2005 objs!8 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))) lt!364216)))

(declare-fun b!1088421 () Bool)

(assert (=> b!1088421 (= e!688566 (< (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) (size!8036 objs!8)))))

(assert (= (and d!306051 res!483899) b!1088421))

(assert (=> d!306051 m!1238857))

(assert (=> d!306051 m!1238857))

(declare-fun m!1238879 () Bool)

(assert (=> d!306051 m!1238879))

(declare-fun m!1238885 () Bool)

(assert (=> d!306051 m!1238885))

(assert (=> b!1088421 m!1238837))

(assert (=> b!1088388 d!306051))

(declare-fun d!306063 () Bool)

(declare-fun e!688580 () Bool)

(assert (=> d!306063 e!688580))

(declare-fun res!483913 () Bool)

(assert (=> d!306063 (=> (not res!483913) (not e!688580))))

(declare-fun isBalanced!874 (Conc!3139) Bool)

(declare-fun filter!196 (Conc!3139 Int) Conc!3139)

(assert (=> d!306063 (= res!483913 (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40869)))))

(declare-fun lt!364233 () BalanceConc!6292)

(assert (=> d!306063 (= lt!364233 (BalanceConc!6293 (filter!196 (c!184401 objs!8) lambda!40869)))))

(assert (=> d!306063 (= (filter!193 objs!8 lambda!40869) lt!364233)))

(declare-fun b!1088435 () Bool)

(declare-fun filter!197 (List!10426 Int) List!10426)

(assert (=> b!1088435 (= e!688580 (= (list!3724 lt!364233) (filter!197 (list!3724 objs!8) lambda!40869)))))

(assert (= (and d!306063 res!483913) b!1088435))

(declare-fun m!1238919 () Bool)

(assert (=> d!306063 m!1238919))

(assert (=> d!306063 m!1238919))

(declare-fun m!1238921 () Bool)

(assert (=> d!306063 m!1238921))

(declare-fun m!1238923 () Bool)

(assert (=> b!1088435 m!1238923))

(assert (=> b!1088435 m!1238857))

(assert (=> b!1088435 m!1238857))

(declare-fun m!1238925 () Bool)

(assert (=> b!1088435 m!1238925))

(assert (=> b!1088388 d!306063))

(declare-fun d!306077 () Bool)

(declare-fun e!688585 () Bool)

(assert (=> d!306077 e!688585))

(declare-fun res!483916 () Bool)

(assert (=> d!306077 (=> (not res!483916) (not e!688585))))

(assert (=> d!306077 (= res!483916 (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40868)))))

(declare-fun lt!364234 () BalanceConc!6292)

(assert (=> d!306077 (= lt!364234 (BalanceConc!6293 (filter!196 (c!184401 objs!8) lambda!40868)))))

(assert (=> d!306077 (= (filter!193 objs!8 lambda!40868) lt!364234)))

(declare-fun b!1088442 () Bool)

(assert (=> b!1088442 (= e!688585 (= (list!3724 lt!364234) (filter!197 (list!3724 objs!8) lambda!40868)))))

(assert (= (and d!306077 res!483916) b!1088442))

(declare-fun m!1238927 () Bool)

(assert (=> d!306077 m!1238927))

(assert (=> d!306077 m!1238927))

(declare-fun m!1238929 () Bool)

(assert (=> d!306077 m!1238929))

(declare-fun m!1238933 () Bool)

(assert (=> b!1088442 m!1238933))

(assert (=> b!1088442 m!1238857))

(assert (=> b!1088442 m!1238857))

(declare-fun m!1238937 () Bool)

(assert (=> b!1088442 m!1238937))

(assert (=> b!1088388 d!306077))

(declare-fun d!306081 () Bool)

(declare-fun e!688588 () Bool)

(assert (=> d!306081 e!688588))

(declare-fun res!483918 () Bool)

(assert (=> d!306081 (=> (not res!483918) (not e!688588))))

(assert (=> d!306081 (= res!483918 (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40870)))))

(declare-fun lt!364236 () BalanceConc!6292)

(assert (=> d!306081 (= lt!364236 (BalanceConc!6293 (filter!196 (c!184401 objs!8) lambda!40870)))))

(assert (=> d!306081 (= (filter!193 objs!8 lambda!40870) lt!364236)))

(declare-fun b!1088446 () Bool)

(assert (=> b!1088446 (= e!688588 (= (list!3724 lt!364236) (filter!197 (list!3724 objs!8) lambda!40870)))))

(assert (= (and d!306081 res!483918) b!1088446))

(declare-fun m!1238943 () Bool)

(assert (=> d!306081 m!1238943))

(assert (=> d!306081 m!1238943))

(declare-fun m!1238945 () Bool)

(assert (=> d!306081 m!1238945))

(declare-fun m!1238947 () Bool)

(assert (=> b!1088446 m!1238947))

(assert (=> b!1088446 m!1238857))

(assert (=> b!1088446 m!1238857))

(declare-fun m!1238949 () Bool)

(assert (=> b!1088446 m!1238949))

(assert (=> b!1088388 d!306081))

(declare-fun d!306085 () Bool)

(declare-fun c!184409 () Bool)

(assert (=> d!306085 (= c!184409 ((_ is Node!3139) (c!184401 objs!8)))))

(declare-fun e!688624 () Bool)

(assert (=> d!306085 (= (inv!13314 (c!184401 objs!8)) e!688624)))

(declare-fun b!1088498 () Bool)

(declare-fun inv!13318 (Conc!3139) Bool)

(assert (=> b!1088498 (= e!688624 (inv!13318 (c!184401 objs!8)))))

(declare-fun b!1088499 () Bool)

(declare-fun e!688625 () Bool)

(assert (=> b!1088499 (= e!688624 e!688625)))

(declare-fun res!483921 () Bool)

(assert (=> b!1088499 (= res!483921 (not ((_ is Leaf!5030) (c!184401 objs!8))))))

(assert (=> b!1088499 (=> res!483921 e!688625)))

(declare-fun b!1088500 () Bool)

(declare-fun inv!13319 (Conc!3139) Bool)

(assert (=> b!1088500 (= e!688625 (inv!13319 (c!184401 objs!8)))))

(assert (= (and d!306085 c!184409) b!1088498))

(assert (= (and d!306085 (not c!184409)) b!1088499))

(assert (= (and b!1088499 (not res!483921)) b!1088500))

(declare-fun m!1238961 () Bool)

(assert (=> b!1088498 m!1238961))

(declare-fun m!1238963 () Bool)

(assert (=> b!1088500 m!1238963))

(assert (=> b!1088391 d!306085))

(declare-fun d!306089 () Bool)

(declare-fun lt!364242 () Int)

(declare-fun size!8039 (List!10426) Int)

(assert (=> d!306089 (= lt!364242 (size!8039 (list!3724 objs!8)))))

(declare-fun size!8040 (Conc!3139) Int)

(assert (=> d!306089 (= lt!364242 (size!8040 (c!184401 objs!8)))))

(assert (=> d!306089 (= (size!8036 objs!8) lt!364242)))

(declare-fun bs!257758 () Bool)

(assert (= bs!257758 d!306089))

(assert (=> bs!257758 m!1238857))

(assert (=> bs!257758 m!1238857))

(declare-fun m!1238965 () Bool)

(assert (=> bs!257758 m!1238965))

(declare-fun m!1238967 () Bool)

(assert (=> bs!257758 m!1238967))

(assert (=> b!1088386 d!306089))

(declare-fun d!306091 () Bool)

(declare-fun lt!364245 () Bool)

(assert (=> d!306091 (= lt!364245 (forall!2295 (list!3724 objs!8) lambda!40867))))

(declare-fun forall!2297 (Conc!3139 Int) Bool)

(assert (=> d!306091 (= lt!364245 (forall!2297 (c!184401 objs!8) lambda!40867))))

(assert (=> d!306091 (= (forall!2294 objs!8 lambda!40867) lt!364245)))

(declare-fun bs!257759 () Bool)

(assert (= bs!257759 d!306091))

(assert (=> bs!257759 m!1238857))

(assert (=> bs!257759 m!1238857))

(declare-fun m!1238969 () Bool)

(assert (=> bs!257759 m!1238969))

(declare-fun m!1238971 () Bool)

(assert (=> bs!257759 m!1238971))

(assert (=> start!92962 d!306091))

(declare-fun d!306093 () Bool)

(assert (=> d!306093 (= (inv!13313 objs!8) (isBalanced!874 (c!184401 objs!8)))))

(declare-fun bs!257760 () Bool)

(assert (= bs!257760 d!306093))

(declare-fun m!1238973 () Bool)

(assert (=> bs!257760 m!1238973))

(assert (=> start!92962 d!306093))

(declare-fun d!306095 () Bool)

(declare-fun res!483926 () Bool)

(declare-fun e!688630 () Bool)

(assert (=> d!306095 (=> res!483926 e!688630)))

(assert (=> d!306095 (= res!483926 ((_ is Nil!10410) lt!364203))))

(assert (=> d!306095 (= (forall!2295 lt!364203 lambda!40868) e!688630)))

(declare-fun b!1088505 () Bool)

(declare-fun e!688631 () Bool)

(assert (=> b!1088505 (= e!688630 e!688631)))

(declare-fun res!483927 () Bool)

(assert (=> b!1088505 (=> (not res!483927) (not e!688631))))

(declare-fun dynLambda!4546 (Int tuple2!11666) Bool)

(assert (=> b!1088505 (= res!483927 (dynLambda!4546 lambda!40868 (h!15811 lt!364203)))))

(declare-fun b!1088506 () Bool)

(assert (=> b!1088506 (= e!688631 (forall!2295 (t!101496 lt!364203) lambda!40868))))

(assert (= (and d!306095 (not res!483926)) b!1088505))

(assert (= (and b!1088505 res!483927) b!1088506))

(declare-fun b_lambda!30311 () Bool)

(assert (=> (not b_lambda!30311) (not b!1088505)))

(declare-fun m!1238975 () Bool)

(assert (=> b!1088505 m!1238975))

(declare-fun m!1238977 () Bool)

(assert (=> b!1088506 m!1238977))

(assert (=> b!1088390 d!306095))

(declare-fun d!306097 () Bool)

(declare-fun list!3726 (Conc!3139) List!10426)

(assert (=> d!306097 (= (list!3724 lt!364202) (list!3726 (c!184401 lt!364202)))))

(declare-fun bs!257761 () Bool)

(assert (= bs!257761 d!306097))

(declare-fun m!1238979 () Bool)

(assert (=> bs!257761 m!1238979))

(assert (=> b!1088390 d!306097))

(declare-fun b!1088515 () Bool)

(declare-fun e!688636 () Bool)

(assert (=> b!1088515 (= e!688636 true)))

(declare-fun b!1088517 () Bool)

(declare-fun e!688637 () Bool)

(assert (=> b!1088517 (= e!688637 true)))

(declare-fun b!1088516 () Bool)

(assert (=> b!1088516 (= e!688636 e!688637)))

(assert (=> b!1088399 e!688636))

(assert (= (and b!1088399 ((_ is Node!3138) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088515))

(assert (= b!1088516 b!1088517))

(assert (= (and b!1088399 ((_ is Leaf!5029) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088516))

(declare-fun b!1088518 () Bool)

(declare-fun e!688638 () Bool)

(assert (=> b!1088518 (= e!688638 true)))

(declare-fun b!1088520 () Bool)

(declare-fun e!688639 () Bool)

(assert (=> b!1088520 (= e!688639 true)))

(declare-fun b!1088519 () Bool)

(assert (=> b!1088519 (= e!688638 e!688639)))

(assert (=> b!1088403 e!688638))

(assert (= (and b!1088403 ((_ is Node!3138) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088518))

(assert (= b!1088519 b!1088520))

(assert (= (and b!1088403 ((_ is Leaf!5029) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088519))

(declare-fun b!1088521 () Bool)

(declare-fun e!688640 () Bool)

(assert (=> b!1088521 (= e!688640 true)))

(declare-fun b!1088523 () Bool)

(declare-fun e!688641 () Bool)

(assert (=> b!1088523 (= e!688641 true)))

(declare-fun b!1088522 () Bool)

(assert (=> b!1088522 (= e!688640 e!688641)))

(assert (=> b!1088401 e!688640))

(assert (= (and b!1088401 ((_ is Node!3138) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088521))

(assert (= b!1088522 b!1088523))

(assert (= (and b!1088401 ((_ is Leaf!5029) (c!184400 (tokens!1329 (_2!6659 lt!364198))))) b!1088522))

(declare-fun b!1088534 () Bool)

(declare-fun e!688650 () Bool)

(assert (=> b!1088534 (= e!688650 true)))

(declare-fun b!1088533 () Bool)

(declare-fun e!688649 () Bool)

(assert (=> b!1088533 (= e!688649 e!688650)))

(declare-fun b!1088532 () Bool)

(declare-fun e!688648 () Bool)

(assert (=> b!1088532 (= e!688648 e!688649)))

(assert (=> b!1088398 e!688648))

(assert (= b!1088533 b!1088534))

(assert (= b!1088532 b!1088533))

(assert (= (and b!1088398 ((_ is Cons!10409) (rules!9057 (_2!6659 lt!364198)))) b!1088532))

(declare-fun order!6243 () Int)

(declare-fun order!6245 () Int)

(declare-fun dynLambda!4547 (Int Int) Int)

(declare-fun dynLambda!4548 (Int Int) Int)

(assert (=> b!1088534 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40868))))

(declare-fun order!6247 () Int)

(declare-fun dynLambda!4549 (Int Int) Int)

(assert (=> b!1088534 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40868))))

(declare-fun b!1088537 () Bool)

(declare-fun e!688653 () Bool)

(assert (=> b!1088537 (= e!688653 true)))

(declare-fun b!1088536 () Bool)

(declare-fun e!688652 () Bool)

(assert (=> b!1088536 (= e!688652 e!688653)))

(declare-fun b!1088535 () Bool)

(declare-fun e!688651 () Bool)

(assert (=> b!1088535 (= e!688651 e!688652)))

(assert (=> b!1088402 e!688651))

(assert (= b!1088536 b!1088537))

(assert (= b!1088535 b!1088536))

(assert (= (and b!1088402 ((_ is Cons!10409) (rules!9057 (_2!6659 lt!364198)))) b!1088535))

(assert (=> b!1088537 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40870))))

(assert (=> b!1088537 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40870))))

(declare-fun b!1088540 () Bool)

(declare-fun e!688656 () Bool)

(assert (=> b!1088540 (= e!688656 true)))

(declare-fun b!1088539 () Bool)

(declare-fun e!688655 () Bool)

(assert (=> b!1088539 (= e!688655 e!688656)))

(declare-fun b!1088538 () Bool)

(declare-fun e!688654 () Bool)

(assert (=> b!1088538 (= e!688654 e!688655)))

(assert (=> b!1088400 e!688654))

(assert (= b!1088539 b!1088540))

(assert (= b!1088538 b!1088539))

(assert (= (and b!1088400 ((_ is Cons!10409) (rules!9057 (_2!6659 lt!364198)))) b!1088538))

(assert (=> b!1088540 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40869))))

(assert (=> b!1088540 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (rules!9057 (_2!6659 lt!364198)))))) (dynLambda!4548 order!6245 lambda!40869))))

(declare-fun tp!326294 () Bool)

(declare-fun e!688661 () Bool)

(declare-fun tp!326293 () Bool)

(declare-fun b!1088549 () Bool)

(assert (=> b!1088549 (= e!688661 (and (inv!13314 (left!8895 (c!184401 objs!8))) tp!326294 (inv!13314 (right!9225 (c!184401 objs!8))) tp!326293))))

(declare-fun b!1088551 () Bool)

(declare-fun e!688662 () Bool)

(declare-fun tp!326292 () Bool)

(assert (=> b!1088551 (= e!688662 tp!326292)))

(declare-fun b!1088550 () Bool)

(declare-fun inv!13320 (IArray!6283) Bool)

(assert (=> b!1088550 (= e!688661 (and (inv!13320 (xs!5832 (c!184401 objs!8))) e!688662))))

(assert (=> b!1088391 (= tp!326276 (and (inv!13314 (c!184401 objs!8)) e!688661))))

(assert (= (and b!1088391 ((_ is Node!3139) (c!184401 objs!8))) b!1088549))

(assert (= b!1088550 b!1088551))

(assert (= (and b!1088391 ((_ is Leaf!5030) (c!184401 objs!8))) b!1088550))

(declare-fun m!1238981 () Bool)

(assert (=> b!1088549 m!1238981))

(declare-fun m!1238983 () Bool)

(assert (=> b!1088549 m!1238983))

(declare-fun m!1238985 () Bool)

(assert (=> b!1088550 m!1238985))

(assert (=> b!1088391 m!1238845))

(declare-fun b_lambda!30313 () Bool)

(assert (= b_lambda!30311 (or b!1088388 b_lambda!30313)))

(declare-fun bs!257762 () Bool)

(declare-fun d!306099 () Bool)

(assert (= bs!257762 (and d!306099 b!1088388)))

(assert (=> bs!257762 (= (dynLambda!4546 lambda!40868 (h!15811 lt!364203)) (< (_1!6659 (h!15811 lt!364203)) (_1!6659 lt!364198)))))

(assert (=> b!1088505 d!306099))

(check-sat (not b!1088532) (not b!1088500) (not b!1088517) (not b!1088421) (not d!306091) (not d!306063) (not b_lambda!30313) (not d!306081) (not b!1088538) (not b!1088435) (not b!1088523) (not b!1088391) (not b!1088551) (not d!306051) (not d!306045) (not d!306097) (not b!1088409) (not b!1088550) (not d!306077) (not d!306047) (not b!1088535) (not b!1088521) (not b!1088515) (not b!1088549) (not d!306093) (not d!306089) (not b!1088442) (not b!1088446) (not b!1088506) (not b!1088520) (not d!306049) (not b!1088518) (not b!1088498))
(check-sat)
(get-model)

(declare-fun d!306157 () Bool)

(declare-fun res!484028 () Bool)

(declare-fun e!688777 () Bool)

(assert (=> d!306157 (=> (not res!484028) (not e!688777))))

(assert (=> d!306157 (= res!484028 (= (csize!6508 (c!184401 objs!8)) (+ (size!8040 (left!8895 (c!184401 objs!8))) (size!8040 (right!9225 (c!184401 objs!8))))))))

(assert (=> d!306157 (= (inv!13318 (c!184401 objs!8)) e!688777)))

(declare-fun b!1088762 () Bool)

(declare-fun res!484029 () Bool)

(assert (=> b!1088762 (=> (not res!484029) (not e!688777))))

(assert (=> b!1088762 (= res!484029 (and (not (= (left!8895 (c!184401 objs!8)) Empty!3139)) (not (= (right!9225 (c!184401 objs!8)) Empty!3139))))))

(declare-fun b!1088763 () Bool)

(declare-fun res!484030 () Bool)

(assert (=> b!1088763 (=> (not res!484030) (not e!688777))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!416 (Conc!3139) Int)

(assert (=> b!1088763 (= res!484030 (= (cheight!3350 (c!184401 objs!8)) (+ (max!0 (height!416 (left!8895 (c!184401 objs!8))) (height!416 (right!9225 (c!184401 objs!8)))) 1)))))

(declare-fun b!1088764 () Bool)

(assert (=> b!1088764 (= e!688777 (<= 0 (cheight!3350 (c!184401 objs!8))))))

(assert (= (and d!306157 res!484028) b!1088762))

(assert (= (and b!1088762 res!484029) b!1088763))

(assert (= (and b!1088763 res!484030) b!1088764))

(declare-fun m!1239211 () Bool)

(assert (=> d!306157 m!1239211))

(declare-fun m!1239213 () Bool)

(assert (=> d!306157 m!1239213))

(declare-fun m!1239215 () Bool)

(assert (=> b!1088763 m!1239215))

(declare-fun m!1239217 () Bool)

(assert (=> b!1088763 m!1239217))

(assert (=> b!1088763 m!1239215))

(assert (=> b!1088763 m!1239217))

(declare-fun m!1239219 () Bool)

(assert (=> b!1088763 m!1239219))

(assert (=> b!1088498 d!306157))

(declare-fun b!1088806 () Bool)

(declare-fun res!484052 () Bool)

(declare-fun e!688803 () Bool)

(assert (=> b!1088806 (=> (not res!484052) (not e!688803))))

(assert (=> b!1088806 (= res!484052 (isBalanced!874 (right!9225 (filter!196 (c!184401 objs!8) lambda!40868))))))

(declare-fun b!1088807 () Bool)

(declare-fun res!484049 () Bool)

(assert (=> b!1088807 (=> (not res!484049) (not e!688803))))

(assert (=> b!1088807 (= res!484049 (<= (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40868))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40868)))) 1))))

(declare-fun b!1088808 () Bool)

(declare-fun isEmpty!6642 (Conc!3139) Bool)

(assert (=> b!1088808 (= e!688803 (not (isEmpty!6642 (right!9225 (filter!196 (c!184401 objs!8) lambda!40868)))))))

(declare-fun b!1088809 () Bool)

(declare-fun res!484051 () Bool)

(assert (=> b!1088809 (=> (not res!484051) (not e!688803))))

(assert (=> b!1088809 (= res!484051 (isBalanced!874 (left!8895 (filter!196 (c!184401 objs!8) lambda!40868))))))

(declare-fun d!306165 () Bool)

(declare-fun res!484050 () Bool)

(declare-fun e!688804 () Bool)

(assert (=> d!306165 (=> res!484050 e!688804)))

(assert (=> d!306165 (= res!484050 (not ((_ is Node!3139) (filter!196 (c!184401 objs!8) lambda!40868))))))

(assert (=> d!306165 (= (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40868)) e!688804)))

(declare-fun b!1088810 () Bool)

(declare-fun res!484047 () Bool)

(assert (=> b!1088810 (=> (not res!484047) (not e!688803))))

(assert (=> b!1088810 (= res!484047 (not (isEmpty!6642 (left!8895 (filter!196 (c!184401 objs!8) lambda!40868)))))))

(declare-fun b!1088811 () Bool)

(assert (=> b!1088811 (= e!688804 e!688803)))

(declare-fun res!484048 () Bool)

(assert (=> b!1088811 (=> (not res!484048) (not e!688803))))

(assert (=> b!1088811 (= res!484048 (<= (- 1) (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40868))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40868))))))))

(assert (= (and d!306165 (not res!484050)) b!1088811))

(assert (= (and b!1088811 res!484048) b!1088807))

(assert (= (and b!1088807 res!484049) b!1088809))

(assert (= (and b!1088809 res!484051) b!1088806))

(assert (= (and b!1088806 res!484052) b!1088810))

(assert (= (and b!1088810 res!484047) b!1088808))

(declare-fun m!1239249 () Bool)

(assert (=> b!1088806 m!1239249))

(declare-fun m!1239251 () Bool)

(assert (=> b!1088811 m!1239251))

(declare-fun m!1239253 () Bool)

(assert (=> b!1088811 m!1239253))

(declare-fun m!1239255 () Bool)

(assert (=> b!1088809 m!1239255))

(assert (=> b!1088807 m!1239251))

(assert (=> b!1088807 m!1239253))

(declare-fun m!1239257 () Bool)

(assert (=> b!1088810 m!1239257))

(declare-fun m!1239259 () Bool)

(assert (=> b!1088808 m!1239259))

(assert (=> d!306077 d!306165))

(declare-fun b!1088873 () Bool)

(declare-datatypes ((Unit!15789 0))(
  ( (Unit!15790) )
))
(declare-fun lt!364302 () Unit!15789)

(declare-fun lemmaFilterConcat!2 (List!10426 List!10426 Int) Unit!15789)

(assert (=> b!1088873 (= lt!364302 (lemmaFilterConcat!2 (list!3726 (left!8895 (c!184401 objs!8))) (list!3726 (right!9225 (c!184401 objs!8))) lambda!40868))))

(declare-fun e!688855 () Conc!3139)

(declare-fun ++!2830 (Conc!3139 Conc!3139) Conc!3139)

(assert (=> b!1088873 (= e!688855 (++!2830 (filter!196 (left!8895 (c!184401 objs!8)) lambda!40868) (filter!196 (right!9225 (c!184401 objs!8)) lambda!40868)))))

(declare-fun b!1088874 () Bool)

(declare-fun e!688854 () Conc!3139)

(assert (=> b!1088874 (= e!688854 (c!184401 objs!8))))

(declare-fun b!1088875 () Bool)

(assert (=> b!1088875 (= e!688854 e!688855)))

(declare-fun c!184476 () Bool)

(assert (=> b!1088875 (= c!184476 ((_ is Leaf!5030) (c!184401 objs!8)))))

(declare-fun d!306171 () Bool)

(declare-fun e!688852 () Bool)

(assert (=> d!306171 e!688852))

(declare-fun res!484055 () Bool)

(assert (=> d!306171 (=> (not res!484055) (not e!688852))))

(declare-fun lt!364301 () Conc!3139)

(assert (=> d!306171 (= res!484055 (isBalanced!874 lt!364301))))

(assert (=> d!306171 (= lt!364301 e!688854)))

(declare-fun c!184475 () Bool)

(assert (=> d!306171 (= c!184475 ((_ is Empty!3139) (c!184401 objs!8)))))

(assert (=> d!306171 (isBalanced!874 (c!184401 objs!8))))

(assert (=> d!306171 (= (filter!196 (c!184401 objs!8) lambda!40868) lt!364301)))

(declare-fun b!1088876 () Bool)

(assert (=> b!1088876 (= e!688852 (= (list!3726 lt!364301) (filter!197 (list!3726 (c!184401 objs!8)) lambda!40868)))))

(declare-fun b!1088877 () Bool)

(declare-fun e!688853 () Conc!3139)

(assert (=> b!1088877 (= e!688853 Empty!3139)))

(declare-fun b!1088878 () Bool)

(declare-fun c!184474 () Bool)

(declare-fun lt!364300 () IArray!6283)

(declare-fun size!8042 (IArray!6283) Int)

(assert (=> b!1088878 (= c!184474 (= (size!8042 lt!364300) 0))))

(declare-fun filter!199 (IArray!6283 Int) IArray!6283)

(assert (=> b!1088878 (= lt!364300 (filter!199 (xs!5832 (c!184401 objs!8)) lambda!40868))))

(assert (=> b!1088878 (= e!688855 e!688853)))

(declare-fun b!1088879 () Bool)

(assert (=> b!1088879 (= e!688853 (Leaf!5030 lt!364300 (size!8042 lt!364300)))))

(assert (= (and d!306171 c!184475) b!1088874))

(assert (= (and d!306171 (not c!184475)) b!1088875))

(assert (= (and b!1088875 c!184476) b!1088878))

(assert (= (and b!1088875 (not c!184476)) b!1088873))

(assert (= (and b!1088878 c!184474) b!1088877))

(assert (= (and b!1088878 (not c!184474)) b!1088879))

(assert (= (and d!306171 res!484055) b!1088876))

(declare-fun m!1239275 () Bool)

(assert (=> b!1088876 m!1239275))

(declare-fun m!1239277 () Bool)

(assert (=> b!1088876 m!1239277))

(assert (=> b!1088876 m!1239277))

(declare-fun m!1239279 () Bool)

(assert (=> b!1088876 m!1239279))

(declare-fun m!1239281 () Bool)

(assert (=> b!1088873 m!1239281))

(declare-fun m!1239283 () Bool)

(assert (=> b!1088873 m!1239283))

(declare-fun m!1239285 () Bool)

(assert (=> b!1088873 m!1239285))

(declare-fun m!1239287 () Bool)

(assert (=> b!1088873 m!1239287))

(assert (=> b!1088873 m!1239283))

(declare-fun m!1239289 () Bool)

(assert (=> b!1088873 m!1239289))

(assert (=> b!1088873 m!1239281))

(assert (=> b!1088873 m!1239285))

(declare-fun m!1239291 () Bool)

(assert (=> b!1088873 m!1239291))

(assert (=> b!1088873 m!1239287))

(declare-fun m!1239293 () Bool)

(assert (=> d!306171 m!1239293))

(assert (=> d!306171 m!1238973))

(declare-fun m!1239295 () Bool)

(assert (=> b!1088878 m!1239295))

(declare-fun m!1239297 () Bool)

(assert (=> b!1088878 m!1239297))

(assert (=> b!1088879 m!1239295))

(assert (=> d!306077 d!306171))

(declare-fun d!306183 () Bool)

(declare-fun res!484056 () Bool)

(declare-fun e!688856 () Bool)

(assert (=> d!306183 (=> res!484056 e!688856)))

(assert (=> d!306183 (= res!484056 ((_ is Nil!10410) (t!101496 lt!364203)))))

(assert (=> d!306183 (= (forall!2295 (t!101496 lt!364203) lambda!40868) e!688856)))

(declare-fun b!1088880 () Bool)

(declare-fun e!688857 () Bool)

(assert (=> b!1088880 (= e!688856 e!688857)))

(declare-fun res!484057 () Bool)

(assert (=> b!1088880 (=> (not res!484057) (not e!688857))))

(assert (=> b!1088880 (= res!484057 (dynLambda!4546 lambda!40868 (h!15811 (t!101496 lt!364203))))))

(declare-fun b!1088881 () Bool)

(assert (=> b!1088881 (= e!688857 (forall!2295 (t!101496 (t!101496 lt!364203)) lambda!40868))))

(assert (= (and d!306183 (not res!484056)) b!1088880))

(assert (= (and b!1088880 res!484057) b!1088881))

(declare-fun b_lambda!30335 () Bool)

(assert (=> (not b_lambda!30335) (not b!1088880)))

(declare-fun m!1239299 () Bool)

(assert (=> b!1088880 m!1239299))

(declare-fun m!1239301 () Bool)

(assert (=> b!1088881 m!1239301))

(assert (=> b!1088506 d!306183))

(assert (=> b!1088391 d!306085))

(declare-fun d!306185 () Bool)

(declare-fun lt!364305 () tuple2!11666)

(assert (=> d!306185 (contains!1727 (list!3724 objs!8) lt!364305)))

(declare-fun e!688862 () tuple2!11666)

(assert (=> d!306185 (= lt!364305 e!688862)))

(declare-fun c!184479 () Bool)

(assert (=> d!306185 (= c!184479 (= (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) 0))))

(declare-fun e!688863 () Bool)

(assert (=> d!306185 e!688863))

(declare-fun res!484060 () Bool)

(assert (=> d!306185 (=> (not res!484060) (not e!688863))))

(assert (=> d!306185 (= res!484060 (<= 0 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(assert (=> d!306185 (= (apply!2008 (list!3724 objs!8) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))) lt!364305)))

(declare-fun b!1088888 () Bool)

(assert (=> b!1088888 (= e!688863 (< (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) (size!8039 (list!3724 objs!8))))))

(declare-fun b!1088889 () Bool)

(declare-fun head!2027 (List!10426) tuple2!11666)

(assert (=> b!1088889 (= e!688862 (head!2027 (list!3724 objs!8)))))

(declare-fun b!1088890 () Bool)

(declare-fun tail!1587 (List!10426) List!10426)

(assert (=> b!1088890 (= e!688862 (apply!2008 (tail!1587 (list!3724 objs!8)) (- (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) 1)))))

(assert (= (and d!306185 res!484060) b!1088888))

(assert (= (and d!306185 c!184479) b!1088889))

(assert (= (and d!306185 (not c!184479)) b!1088890))

(assert (=> d!306185 m!1238857))

(declare-fun m!1239303 () Bool)

(assert (=> d!306185 m!1239303))

(assert (=> b!1088888 m!1238857))

(assert (=> b!1088888 m!1238965))

(assert (=> b!1088889 m!1238857))

(declare-fun m!1239305 () Bool)

(assert (=> b!1088889 m!1239305))

(assert (=> b!1088890 m!1238857))

(declare-fun m!1239307 () Bool)

(assert (=> b!1088890 m!1239307))

(assert (=> b!1088890 m!1239307))

(declare-fun m!1239309 () Bool)

(assert (=> b!1088890 m!1239309))

(assert (=> d!306051 d!306185))

(declare-fun d!306187 () Bool)

(assert (=> d!306187 (= (list!3724 objs!8) (list!3726 (c!184401 objs!8)))))

(declare-fun bs!257774 () Bool)

(assert (= bs!257774 d!306187))

(assert (=> bs!257774 m!1239277))

(assert (=> d!306051 d!306187))

(declare-fun b!1088906 () Bool)

(declare-fun e!688873 () tuple2!11666)

(declare-fun call!80219 () tuple2!11666)

(assert (=> b!1088906 (= e!688873 call!80219)))

(declare-fun b!1088907 () Bool)

(declare-fun e!688874 () Int)

(assert (=> b!1088907 (= e!688874 (- (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) (size!8040 (left!8895 (c!184401 objs!8)))))))

(declare-fun b!1088908 () Bool)

(assert (=> b!1088908 (= e!688873 call!80219)))

(declare-fun b!1088909 () Bool)

(declare-fun e!688875 () Bool)

(assert (=> b!1088909 (= e!688875 (< (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) (size!8040 (c!184401 objs!8))))))

(declare-fun b!1088910 () Bool)

(declare-fun e!688872 () tuple2!11666)

(assert (=> b!1088910 (= e!688872 e!688873)))

(declare-fun lt!364310 () Bool)

(declare-fun appendIndex!75 (List!10426 List!10426 Int) Bool)

(assert (=> b!1088910 (= lt!364310 (appendIndex!75 (list!3726 (left!8895 (c!184401 objs!8))) (list!3726 (right!9225 (c!184401 objs!8))) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(declare-fun c!184486 () Bool)

(assert (=> b!1088910 (= c!184486 (< (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))) (size!8040 (left!8895 (c!184401 objs!8)))))))

(declare-fun b!1088911 () Bool)

(declare-fun apply!2010 (IArray!6283 Int) tuple2!11666)

(assert (=> b!1088911 (= e!688872 (apply!2010 (xs!5832 (c!184401 objs!8)) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(declare-fun bm!80214 () Bool)

(declare-fun c!184487 () Bool)

(assert (=> bm!80214 (= c!184487 c!184486)))

(assert (=> bm!80214 (= call!80219 (apply!2009 (ite c!184486 (left!8895 (c!184401 objs!8)) (right!9225 (c!184401 objs!8))) e!688874))))

(declare-fun d!306189 () Bool)

(declare-fun lt!364311 () tuple2!11666)

(assert (=> d!306189 (= lt!364311 (apply!2008 (list!3726 (c!184401 objs!8)) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(assert (=> d!306189 (= lt!364311 e!688872)))

(declare-fun c!184488 () Bool)

(assert (=> d!306189 (= c!184488 ((_ is Leaf!5030) (c!184401 objs!8)))))

(assert (=> d!306189 e!688875))

(declare-fun res!484063 () Bool)

(assert (=> d!306189 (=> (not res!484063) (not e!688875))))

(assert (=> d!306189 (= res!484063 (<= 0 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))))))

(assert (=> d!306189 (= (apply!2009 (c!184401 objs!8) (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2)))) lt!364311)))

(declare-fun b!1088905 () Bool)

(assert (=> b!1088905 (= e!688874 (ite (>= lt!364200 0) (div lt!364200 2) (- (div (- lt!364200) 2))))))

(assert (= (and d!306189 res!484063) b!1088909))

(assert (= (and d!306189 c!184488) b!1088911))

(assert (= (and d!306189 (not c!184488)) b!1088910))

(assert (= (and b!1088910 c!184486) b!1088906))

(assert (= (and b!1088910 (not c!184486)) b!1088908))

(assert (= (or b!1088906 b!1088908) bm!80214))

(assert (= (and bm!80214 c!184487) b!1088905))

(assert (= (and bm!80214 (not c!184487)) b!1088907))

(declare-fun m!1239311 () Bool)

(assert (=> bm!80214 m!1239311))

(declare-fun m!1239313 () Bool)

(assert (=> b!1088911 m!1239313))

(assert (=> b!1088910 m!1239281))

(assert (=> b!1088910 m!1239285))

(assert (=> b!1088910 m!1239281))

(assert (=> b!1088910 m!1239285))

(declare-fun m!1239315 () Bool)

(assert (=> b!1088910 m!1239315))

(assert (=> b!1088910 m!1239211))

(assert (=> b!1088909 m!1238967))

(assert (=> d!306189 m!1239277))

(assert (=> d!306189 m!1239277))

(declare-fun m!1239317 () Bool)

(assert (=> d!306189 m!1239317))

(assert (=> b!1088907 m!1239211))

(assert (=> d!306051 d!306189))

(declare-fun d!306191 () Bool)

(declare-fun lt!364312 () Bool)

(assert (=> d!306191 (= lt!364312 (select (content!1502 (list!3724 objs!8)) lt!364198))))

(declare-fun e!688877 () Bool)

(assert (=> d!306191 (= lt!364312 e!688877)))

(declare-fun res!484065 () Bool)

(assert (=> d!306191 (=> (not res!484065) (not e!688877))))

(assert (=> d!306191 (= res!484065 ((_ is Cons!10410) (list!3724 objs!8)))))

(assert (=> d!306191 (= (contains!1727 (list!3724 objs!8) lt!364198) lt!364312)))

(declare-fun b!1088912 () Bool)

(declare-fun e!688876 () Bool)

(assert (=> b!1088912 (= e!688877 e!688876)))

(declare-fun res!484064 () Bool)

(assert (=> b!1088912 (=> res!484064 e!688876)))

(assert (=> b!1088912 (= res!484064 (= (h!15811 (list!3724 objs!8)) lt!364198))))

(declare-fun b!1088913 () Bool)

(assert (=> b!1088913 (= e!688876 (contains!1727 (t!101496 (list!3724 objs!8)) lt!364198))))

(assert (= (and d!306191 res!484065) b!1088912))

(assert (= (and b!1088912 (not res!484064)) b!1088913))

(assert (=> d!306191 m!1238857))

(declare-fun m!1239319 () Bool)

(assert (=> d!306191 m!1239319))

(declare-fun m!1239321 () Bool)

(assert (=> d!306191 m!1239321))

(declare-fun m!1239323 () Bool)

(assert (=> b!1088913 m!1239323))

(assert (=> d!306049 d!306191))

(assert (=> d!306049 d!306187))

(declare-fun b!1088925 () Bool)

(declare-fun e!688886 () Bool)

(assert (=> b!1088925 (= e!688886 (contains!1730 (right!9225 (c!184401 objs!8)) lt!364198))))

(declare-fun b!1088922 () Bool)

(declare-fun e!688885 () Bool)

(declare-fun e!688884 () Bool)

(assert (=> b!1088922 (= e!688885 e!688884)))

(declare-fun c!184491 () Bool)

(assert (=> b!1088922 (= c!184491 ((_ is Leaf!5030) (c!184401 objs!8)))))

(declare-fun b!1088923 () Bool)

(declare-fun contains!1732 (IArray!6283 tuple2!11666) Bool)

(assert (=> b!1088923 (= e!688884 (contains!1732 (xs!5832 (c!184401 objs!8)) lt!364198))))

(declare-fun b!1088924 () Bool)

(assert (=> b!1088924 (= e!688884 e!688886)))

(declare-fun res!484071 () Bool)

(assert (=> b!1088924 (= res!484071 (contains!1730 (left!8895 (c!184401 objs!8)) lt!364198))))

(assert (=> b!1088924 (=> res!484071 e!688886)))

(declare-fun d!306193 () Bool)

(declare-fun lt!364315 () Bool)

(assert (=> d!306193 (= lt!364315 (contains!1727 (list!3726 (c!184401 objs!8)) lt!364198))))

(assert (=> d!306193 (= lt!364315 e!688885)))

(declare-fun res!484070 () Bool)

(assert (=> d!306193 (=> (not res!484070) (not e!688885))))

(assert (=> d!306193 (= res!484070 (not ((_ is Empty!3139) (c!184401 objs!8))))))

(assert (=> d!306193 (= (contains!1730 (c!184401 objs!8) lt!364198) lt!364315)))

(assert (= (and d!306193 res!484070) b!1088922))

(assert (= (and b!1088922 c!184491) b!1088923))

(assert (= (and b!1088922 (not c!184491)) b!1088924))

(assert (= (and b!1088924 (not res!484071)) b!1088925))

(declare-fun m!1239325 () Bool)

(assert (=> b!1088925 m!1239325))

(declare-fun m!1239327 () Bool)

(assert (=> b!1088923 m!1239327))

(declare-fun m!1239329 () Bool)

(assert (=> b!1088924 m!1239329))

(assert (=> d!306193 m!1239277))

(assert (=> d!306193 m!1239277))

(declare-fun m!1239331 () Bool)

(assert (=> d!306193 m!1239331))

(assert (=> d!306049 d!306193))

(assert (=> b!1088421 d!306089))

(declare-fun b!1088926 () Bool)

(declare-fun res!484077 () Bool)

(declare-fun e!688887 () Bool)

(assert (=> b!1088926 (=> (not res!484077) (not e!688887))))

(assert (=> b!1088926 (= res!484077 (isBalanced!874 (right!9225 (filter!196 (c!184401 objs!8) lambda!40869))))))

(declare-fun b!1088927 () Bool)

(declare-fun res!484074 () Bool)

(assert (=> b!1088927 (=> (not res!484074) (not e!688887))))

(assert (=> b!1088927 (= res!484074 (<= (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40869))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40869)))) 1))))

(declare-fun b!1088928 () Bool)

(assert (=> b!1088928 (= e!688887 (not (isEmpty!6642 (right!9225 (filter!196 (c!184401 objs!8) lambda!40869)))))))

(declare-fun b!1088929 () Bool)

(declare-fun res!484076 () Bool)

(assert (=> b!1088929 (=> (not res!484076) (not e!688887))))

(assert (=> b!1088929 (= res!484076 (isBalanced!874 (left!8895 (filter!196 (c!184401 objs!8) lambda!40869))))))

(declare-fun d!306195 () Bool)

(declare-fun res!484075 () Bool)

(declare-fun e!688888 () Bool)

(assert (=> d!306195 (=> res!484075 e!688888)))

(assert (=> d!306195 (= res!484075 (not ((_ is Node!3139) (filter!196 (c!184401 objs!8) lambda!40869))))))

(assert (=> d!306195 (= (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40869)) e!688888)))

(declare-fun b!1088930 () Bool)

(declare-fun res!484072 () Bool)

(assert (=> b!1088930 (=> (not res!484072) (not e!688887))))

(assert (=> b!1088930 (= res!484072 (not (isEmpty!6642 (left!8895 (filter!196 (c!184401 objs!8) lambda!40869)))))))

(declare-fun b!1088931 () Bool)

(assert (=> b!1088931 (= e!688888 e!688887)))

(declare-fun res!484073 () Bool)

(assert (=> b!1088931 (=> (not res!484073) (not e!688887))))

(assert (=> b!1088931 (= res!484073 (<= (- 1) (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40869))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40869))))))))

(assert (= (and d!306195 (not res!484075)) b!1088931))

(assert (= (and b!1088931 res!484073) b!1088927))

(assert (= (and b!1088927 res!484074) b!1088929))

(assert (= (and b!1088929 res!484076) b!1088926))

(assert (= (and b!1088926 res!484077) b!1088930))

(assert (= (and b!1088930 res!484072) b!1088928))

(declare-fun m!1239333 () Bool)

(assert (=> b!1088926 m!1239333))

(declare-fun m!1239335 () Bool)

(assert (=> b!1088931 m!1239335))

(declare-fun m!1239337 () Bool)

(assert (=> b!1088931 m!1239337))

(declare-fun m!1239339 () Bool)

(assert (=> b!1088929 m!1239339))

(assert (=> b!1088927 m!1239335))

(assert (=> b!1088927 m!1239337))

(declare-fun m!1239341 () Bool)

(assert (=> b!1088930 m!1239341))

(declare-fun m!1239343 () Bool)

(assert (=> b!1088928 m!1239343))

(assert (=> d!306063 d!306195))

(declare-fun b!1088932 () Bool)

(declare-fun lt!364318 () Unit!15789)

(assert (=> b!1088932 (= lt!364318 (lemmaFilterConcat!2 (list!3726 (left!8895 (c!184401 objs!8))) (list!3726 (right!9225 (c!184401 objs!8))) lambda!40869))))

(declare-fun e!688892 () Conc!3139)

(assert (=> b!1088932 (= e!688892 (++!2830 (filter!196 (left!8895 (c!184401 objs!8)) lambda!40869) (filter!196 (right!9225 (c!184401 objs!8)) lambda!40869)))))

(declare-fun b!1088933 () Bool)

(declare-fun e!688891 () Conc!3139)

(assert (=> b!1088933 (= e!688891 (c!184401 objs!8))))

(declare-fun b!1088934 () Bool)

(assert (=> b!1088934 (= e!688891 e!688892)))

(declare-fun c!184494 () Bool)

(assert (=> b!1088934 (= c!184494 ((_ is Leaf!5030) (c!184401 objs!8)))))

(declare-fun d!306197 () Bool)

(declare-fun e!688889 () Bool)

(assert (=> d!306197 e!688889))

(declare-fun res!484078 () Bool)

(assert (=> d!306197 (=> (not res!484078) (not e!688889))))

(declare-fun lt!364317 () Conc!3139)

(assert (=> d!306197 (= res!484078 (isBalanced!874 lt!364317))))

(assert (=> d!306197 (= lt!364317 e!688891)))

(declare-fun c!184493 () Bool)

(assert (=> d!306197 (= c!184493 ((_ is Empty!3139) (c!184401 objs!8)))))

(assert (=> d!306197 (isBalanced!874 (c!184401 objs!8))))

(assert (=> d!306197 (= (filter!196 (c!184401 objs!8) lambda!40869) lt!364317)))

(declare-fun b!1088935 () Bool)

(assert (=> b!1088935 (= e!688889 (= (list!3726 lt!364317) (filter!197 (list!3726 (c!184401 objs!8)) lambda!40869)))))

(declare-fun b!1088936 () Bool)

(declare-fun e!688890 () Conc!3139)

(assert (=> b!1088936 (= e!688890 Empty!3139)))

(declare-fun b!1088937 () Bool)

(declare-fun c!184492 () Bool)

(declare-fun lt!364316 () IArray!6283)

(assert (=> b!1088937 (= c!184492 (= (size!8042 lt!364316) 0))))

(assert (=> b!1088937 (= lt!364316 (filter!199 (xs!5832 (c!184401 objs!8)) lambda!40869))))

(assert (=> b!1088937 (= e!688892 e!688890)))

(declare-fun b!1088938 () Bool)

(assert (=> b!1088938 (= e!688890 (Leaf!5030 lt!364316 (size!8042 lt!364316)))))

(assert (= (and d!306197 c!184493) b!1088933))

(assert (= (and d!306197 (not c!184493)) b!1088934))

(assert (= (and b!1088934 c!184494) b!1088937))

(assert (= (and b!1088934 (not c!184494)) b!1088932))

(assert (= (and b!1088937 c!184492) b!1088936))

(assert (= (and b!1088937 (not c!184492)) b!1088938))

(assert (= (and d!306197 res!484078) b!1088935))

(declare-fun m!1239345 () Bool)

(assert (=> b!1088935 m!1239345))

(assert (=> b!1088935 m!1239277))

(assert (=> b!1088935 m!1239277))

(declare-fun m!1239347 () Bool)

(assert (=> b!1088935 m!1239347))

(assert (=> b!1088932 m!1239281))

(declare-fun m!1239349 () Bool)

(assert (=> b!1088932 m!1239349))

(assert (=> b!1088932 m!1239285))

(declare-fun m!1239351 () Bool)

(assert (=> b!1088932 m!1239351))

(assert (=> b!1088932 m!1239349))

(declare-fun m!1239353 () Bool)

(assert (=> b!1088932 m!1239353))

(assert (=> b!1088932 m!1239281))

(assert (=> b!1088932 m!1239285))

(declare-fun m!1239355 () Bool)

(assert (=> b!1088932 m!1239355))

(assert (=> b!1088932 m!1239351))

(declare-fun m!1239357 () Bool)

(assert (=> d!306197 m!1239357))

(assert (=> d!306197 m!1238973))

(declare-fun m!1239359 () Bool)

(assert (=> b!1088937 m!1239359))

(declare-fun m!1239361 () Bool)

(assert (=> b!1088937 m!1239361))

(assert (=> b!1088938 m!1239359))

(assert (=> d!306063 d!306197))

(declare-fun d!306199 () Bool)

(declare-fun res!484079 () Bool)

(declare-fun e!688893 () Bool)

(assert (=> d!306199 (=> res!484079 e!688893)))

(assert (=> d!306199 (= res!484079 ((_ is Nil!10410) (list!3724 objs!8)))))

(assert (=> d!306199 (= (forall!2295 (list!3724 objs!8) lambda!40867) e!688893)))

(declare-fun b!1088939 () Bool)

(declare-fun e!688894 () Bool)

(assert (=> b!1088939 (= e!688893 e!688894)))

(declare-fun res!484080 () Bool)

(assert (=> b!1088939 (=> (not res!484080) (not e!688894))))

(assert (=> b!1088939 (= res!484080 (dynLambda!4546 lambda!40867 (h!15811 (list!3724 objs!8))))))

(declare-fun b!1088940 () Bool)

(assert (=> b!1088940 (= e!688894 (forall!2295 (t!101496 (list!3724 objs!8)) lambda!40867))))

(assert (= (and d!306199 (not res!484079)) b!1088939))

(assert (= (and b!1088939 res!484080) b!1088940))

(declare-fun b_lambda!30337 () Bool)

(assert (=> (not b_lambda!30337) (not b!1088939)))

(declare-fun m!1239363 () Bool)

(assert (=> b!1088939 m!1239363))

(declare-fun m!1239365 () Bool)

(assert (=> b!1088940 m!1239365))

(assert (=> d!306091 d!306199))

(assert (=> d!306091 d!306187))

(declare-fun d!306201 () Bool)

(declare-fun lt!364324 () Bool)

(assert (=> d!306201 (= lt!364324 (forall!2295 (list!3726 (c!184401 objs!8)) lambda!40867))))

(declare-fun e!688901 () Bool)

(assert (=> d!306201 (= lt!364324 e!688901)))

(declare-fun res!484085 () Bool)

(assert (=> d!306201 (=> res!484085 e!688901)))

(assert (=> d!306201 (= res!484085 ((_ is Empty!3139) (c!184401 objs!8)))))

(assert (=> d!306201 (= (forall!2297 (c!184401 objs!8) lambda!40867) lt!364324)))

(declare-fun b!1088951 () Bool)

(declare-fun e!688903 () Bool)

(declare-fun e!688902 () Bool)

(assert (=> b!1088951 (= e!688903 e!688902)))

(declare-fun lt!364323 () Unit!15789)

(declare-fun lemmaForallConcat!56 (List!10426 List!10426 Int) Unit!15789)

(assert (=> b!1088951 (= lt!364323 (lemmaForallConcat!56 (list!3726 (left!8895 (c!184401 objs!8))) (list!3726 (right!9225 (c!184401 objs!8))) lambda!40867))))

(declare-fun res!484086 () Bool)

(assert (=> b!1088951 (= res!484086 (forall!2297 (left!8895 (c!184401 objs!8)) lambda!40867))))

(assert (=> b!1088951 (=> (not res!484086) (not e!688902))))

(declare-fun b!1088949 () Bool)

(assert (=> b!1088949 (= e!688901 e!688903)))

(declare-fun c!184497 () Bool)

(assert (=> b!1088949 (= c!184497 ((_ is Leaf!5030) (c!184401 objs!8)))))

(declare-fun b!1088950 () Bool)

(declare-fun forall!2299 (IArray!6283 Int) Bool)

(assert (=> b!1088950 (= e!688903 (forall!2299 (xs!5832 (c!184401 objs!8)) lambda!40867))))

(declare-fun b!1088952 () Bool)

(assert (=> b!1088952 (= e!688902 (forall!2297 (right!9225 (c!184401 objs!8)) lambda!40867))))

(assert (= (and d!306201 (not res!484085)) b!1088949))

(assert (= (and b!1088949 c!184497) b!1088950))

(assert (= (and b!1088949 (not c!184497)) b!1088951))

(assert (= (and b!1088951 res!484086) b!1088952))

(assert (=> d!306201 m!1239277))

(assert (=> d!306201 m!1239277))

(declare-fun m!1239367 () Bool)

(assert (=> d!306201 m!1239367))

(assert (=> b!1088951 m!1239281))

(assert (=> b!1088951 m!1239285))

(assert (=> b!1088951 m!1239281))

(assert (=> b!1088951 m!1239285))

(declare-fun m!1239369 () Bool)

(assert (=> b!1088951 m!1239369))

(declare-fun m!1239371 () Bool)

(assert (=> b!1088951 m!1239371))

(declare-fun m!1239373 () Bool)

(assert (=> b!1088950 m!1239373))

(declare-fun m!1239375 () Bool)

(assert (=> b!1088952 m!1239375))

(assert (=> d!306091 d!306201))

(declare-fun d!306203 () Bool)

(declare-fun res!484091 () Bool)

(declare-fun e!688906 () Bool)

(assert (=> d!306203 (=> (not res!484091) (not e!688906))))

(declare-fun list!3728 (IArray!6283) List!10426)

(assert (=> d!306203 (= res!484091 (<= (size!8039 (list!3728 (xs!5832 (c!184401 objs!8)))) 512))))

(assert (=> d!306203 (= (inv!13319 (c!184401 objs!8)) e!688906)))

(declare-fun b!1088957 () Bool)

(declare-fun res!484092 () Bool)

(assert (=> b!1088957 (=> (not res!484092) (not e!688906))))

(assert (=> b!1088957 (= res!484092 (= (csize!6509 (c!184401 objs!8)) (size!8039 (list!3728 (xs!5832 (c!184401 objs!8))))))))

(declare-fun b!1088958 () Bool)

(assert (=> b!1088958 (= e!688906 (and (> (csize!6509 (c!184401 objs!8)) 0) (<= (csize!6509 (c!184401 objs!8)) 512)))))

(assert (= (and d!306203 res!484091) b!1088957))

(assert (= (and b!1088957 res!484092) b!1088958))

(declare-fun m!1239377 () Bool)

(assert (=> d!306203 m!1239377))

(assert (=> d!306203 m!1239377))

(declare-fun m!1239379 () Bool)

(assert (=> d!306203 m!1239379))

(assert (=> b!1088957 m!1239377))

(assert (=> b!1088957 m!1239377))

(assert (=> b!1088957 m!1239379))

(assert (=> b!1088500 d!306203))

(declare-fun d!306205 () Bool)

(assert (=> d!306205 (= (list!3724 lt!364233) (list!3726 (c!184401 lt!364233)))))

(declare-fun bs!257775 () Bool)

(assert (= bs!257775 d!306205))

(declare-fun m!1239381 () Bool)

(assert (=> bs!257775 m!1239381))

(assert (=> b!1088435 d!306205))

(declare-fun d!306207 () Bool)

(declare-fun e!688914 () Bool)

(assert (=> d!306207 e!688914))

(declare-fun res!484097 () Bool)

(assert (=> d!306207 (=> (not res!484097) (not e!688914))))

(declare-fun lt!364327 () List!10426)

(assert (=> d!306207 (= res!484097 (<= (size!8039 lt!364327) (size!8039 (list!3724 objs!8))))))

(declare-fun e!688913 () List!10426)

(assert (=> d!306207 (= lt!364327 e!688913)))

(declare-fun c!184503 () Bool)

(assert (=> d!306207 (= c!184503 ((_ is Nil!10410) (list!3724 objs!8)))))

(assert (=> d!306207 (= (filter!197 (list!3724 objs!8) lambda!40869) lt!364327)))

(declare-fun bm!80217 () Bool)

(declare-fun call!80222 () List!10426)

(assert (=> bm!80217 (= call!80222 (filter!197 (t!101496 (list!3724 objs!8)) lambda!40869))))

(declare-fun b!1088971 () Bool)

(declare-fun e!688915 () List!10426)

(assert (=> b!1088971 (= e!688913 e!688915)))

(declare-fun c!184502 () Bool)

(assert (=> b!1088971 (= c!184502 (dynLambda!4546 lambda!40869 (h!15811 (list!3724 objs!8))))))

(declare-fun b!1088972 () Bool)

(declare-fun res!484098 () Bool)

(assert (=> b!1088972 (=> (not res!484098) (not e!688914))))

(assert (=> b!1088972 (= res!484098 (= ((_ map implies) (content!1502 lt!364327) (content!1502 (list!3724 objs!8))) ((as const (InoxSet tuple2!11666)) true)))))

(declare-fun b!1088973 () Bool)

(assert (=> b!1088973 (= e!688913 Nil!10410)))

(declare-fun b!1088974 () Bool)

(assert (=> b!1088974 (= e!688915 call!80222)))

(declare-fun b!1088975 () Bool)

(assert (=> b!1088975 (= e!688915 (Cons!10410 (h!15811 (list!3724 objs!8)) call!80222))))

(declare-fun b!1088976 () Bool)

(assert (=> b!1088976 (= e!688914 (forall!2295 lt!364327 lambda!40869))))

(assert (= (and d!306207 c!184503) b!1088973))

(assert (= (and d!306207 (not c!184503)) b!1088971))

(assert (= (and b!1088971 c!184502) b!1088975))

(assert (= (and b!1088971 (not c!184502)) b!1088974))

(assert (= (or b!1088975 b!1088974) bm!80217))

(assert (= (and d!306207 res!484097) b!1088972))

(assert (= (and b!1088972 res!484098) b!1088976))

(declare-fun b_lambda!30339 () Bool)

(assert (=> (not b_lambda!30339) (not b!1088971)))

(declare-fun m!1239383 () Bool)

(assert (=> b!1088972 m!1239383))

(assert (=> b!1088972 m!1238857))

(assert (=> b!1088972 m!1239319))

(declare-fun m!1239385 () Bool)

(assert (=> d!306207 m!1239385))

(assert (=> d!306207 m!1238857))

(assert (=> d!306207 m!1238965))

(declare-fun m!1239387 () Bool)

(assert (=> b!1088971 m!1239387))

(declare-fun m!1239389 () Bool)

(assert (=> bm!80217 m!1239389))

(declare-fun m!1239391 () Bool)

(assert (=> b!1088976 m!1239391))

(assert (=> b!1088435 d!306207))

(assert (=> b!1088435 d!306187))

(declare-fun d!306209 () Bool)

(assert (=> d!306209 (= (list!3724 lt!364236) (list!3726 (c!184401 lt!364236)))))

(declare-fun bs!257776 () Bool)

(assert (= bs!257776 d!306209))

(declare-fun m!1239393 () Bool)

(assert (=> bs!257776 m!1239393))

(assert (=> b!1088446 d!306209))

(declare-fun d!306211 () Bool)

(declare-fun e!688917 () Bool)

(assert (=> d!306211 e!688917))

(declare-fun res!484099 () Bool)

(assert (=> d!306211 (=> (not res!484099) (not e!688917))))

(declare-fun lt!364328 () List!10426)

(assert (=> d!306211 (= res!484099 (<= (size!8039 lt!364328) (size!8039 (list!3724 objs!8))))))

(declare-fun e!688916 () List!10426)

(assert (=> d!306211 (= lt!364328 e!688916)))

(declare-fun c!184505 () Bool)

(assert (=> d!306211 (= c!184505 ((_ is Nil!10410) (list!3724 objs!8)))))

(assert (=> d!306211 (= (filter!197 (list!3724 objs!8) lambda!40870) lt!364328)))

(declare-fun bm!80218 () Bool)

(declare-fun call!80223 () List!10426)

(assert (=> bm!80218 (= call!80223 (filter!197 (t!101496 (list!3724 objs!8)) lambda!40870))))

(declare-fun b!1088977 () Bool)

(declare-fun e!688918 () List!10426)

(assert (=> b!1088977 (= e!688916 e!688918)))

(declare-fun c!184504 () Bool)

(assert (=> b!1088977 (= c!184504 (dynLambda!4546 lambda!40870 (h!15811 (list!3724 objs!8))))))

(declare-fun b!1088978 () Bool)

(declare-fun res!484100 () Bool)

(assert (=> b!1088978 (=> (not res!484100) (not e!688917))))

(assert (=> b!1088978 (= res!484100 (= ((_ map implies) (content!1502 lt!364328) (content!1502 (list!3724 objs!8))) ((as const (InoxSet tuple2!11666)) true)))))

(declare-fun b!1088979 () Bool)

(assert (=> b!1088979 (= e!688916 Nil!10410)))

(declare-fun b!1088980 () Bool)

(assert (=> b!1088980 (= e!688918 call!80223)))

(declare-fun b!1088981 () Bool)

(assert (=> b!1088981 (= e!688918 (Cons!10410 (h!15811 (list!3724 objs!8)) call!80223))))

(declare-fun b!1088982 () Bool)

(assert (=> b!1088982 (= e!688917 (forall!2295 lt!364328 lambda!40870))))

(assert (= (and d!306211 c!184505) b!1088979))

(assert (= (and d!306211 (not c!184505)) b!1088977))

(assert (= (and b!1088977 c!184504) b!1088981))

(assert (= (and b!1088977 (not c!184504)) b!1088980))

(assert (= (or b!1088981 b!1088980) bm!80218))

(assert (= (and d!306211 res!484099) b!1088978))

(assert (= (and b!1088978 res!484100) b!1088982))

(declare-fun b_lambda!30341 () Bool)

(assert (=> (not b_lambda!30341) (not b!1088977)))

(declare-fun m!1239395 () Bool)

(assert (=> b!1088978 m!1239395))

(assert (=> b!1088978 m!1238857))

(assert (=> b!1088978 m!1239319))

(declare-fun m!1239397 () Bool)

(assert (=> d!306211 m!1239397))

(assert (=> d!306211 m!1238857))

(assert (=> d!306211 m!1238965))

(declare-fun m!1239399 () Bool)

(assert (=> b!1088977 m!1239399))

(declare-fun m!1239401 () Bool)

(assert (=> bm!80218 m!1239401))

(declare-fun m!1239403 () Bool)

(assert (=> b!1088982 m!1239403))

(assert (=> b!1088446 d!306211))

(assert (=> b!1088446 d!306187))

(declare-fun d!306213 () Bool)

(declare-fun c!184506 () Bool)

(assert (=> d!306213 (= c!184506 ((_ is Node!3139) (left!8895 (c!184401 objs!8))))))

(declare-fun e!688919 () Bool)

(assert (=> d!306213 (= (inv!13314 (left!8895 (c!184401 objs!8))) e!688919)))

(declare-fun b!1088983 () Bool)

(assert (=> b!1088983 (= e!688919 (inv!13318 (left!8895 (c!184401 objs!8))))))

(declare-fun b!1088984 () Bool)

(declare-fun e!688920 () Bool)

(assert (=> b!1088984 (= e!688919 e!688920)))

(declare-fun res!484101 () Bool)

(assert (=> b!1088984 (= res!484101 (not ((_ is Leaf!5030) (left!8895 (c!184401 objs!8)))))))

(assert (=> b!1088984 (=> res!484101 e!688920)))

(declare-fun b!1088985 () Bool)

(assert (=> b!1088985 (= e!688920 (inv!13319 (left!8895 (c!184401 objs!8))))))

(assert (= (and d!306213 c!184506) b!1088983))

(assert (= (and d!306213 (not c!184506)) b!1088984))

(assert (= (and b!1088984 (not res!484101)) b!1088985))

(declare-fun m!1239405 () Bool)

(assert (=> b!1088983 m!1239405))

(declare-fun m!1239407 () Bool)

(assert (=> b!1088985 m!1239407))

(assert (=> b!1088549 d!306213))

(declare-fun d!306215 () Bool)

(declare-fun c!184507 () Bool)

(assert (=> d!306215 (= c!184507 ((_ is Node!3139) (right!9225 (c!184401 objs!8))))))

(declare-fun e!688921 () Bool)

(assert (=> d!306215 (= (inv!13314 (right!9225 (c!184401 objs!8))) e!688921)))

(declare-fun b!1088986 () Bool)

(assert (=> b!1088986 (= e!688921 (inv!13318 (right!9225 (c!184401 objs!8))))))

(declare-fun b!1088987 () Bool)

(declare-fun e!688922 () Bool)

(assert (=> b!1088987 (= e!688921 e!688922)))

(declare-fun res!484102 () Bool)

(assert (=> b!1088987 (= res!484102 (not ((_ is Leaf!5030) (right!9225 (c!184401 objs!8)))))))

(assert (=> b!1088987 (=> res!484102 e!688922)))

(declare-fun b!1088988 () Bool)

(assert (=> b!1088988 (= e!688922 (inv!13319 (right!9225 (c!184401 objs!8))))))

(assert (= (and d!306215 c!184507) b!1088986))

(assert (= (and d!306215 (not c!184507)) b!1088987))

(assert (= (and b!1088987 (not res!484102)) b!1088988))

(declare-fun m!1239409 () Bool)

(assert (=> b!1088986 m!1239409))

(declare-fun m!1239411 () Bool)

(assert (=> b!1088988 m!1239411))

(assert (=> b!1088549 d!306215))

(declare-fun d!306217 () Bool)

(declare-fun lt!364329 () Bool)

(assert (=> d!306217 (= lt!364329 (select (content!1502 (list!3724 lt!364202)) lt!364198))))

(declare-fun e!688924 () Bool)

(assert (=> d!306217 (= lt!364329 e!688924)))

(declare-fun res!484104 () Bool)

(assert (=> d!306217 (=> (not res!484104) (not e!688924))))

(assert (=> d!306217 (= res!484104 ((_ is Cons!10410) (list!3724 lt!364202)))))

(assert (=> d!306217 (= (contains!1727 (list!3724 lt!364202) lt!364198) lt!364329)))

(declare-fun b!1088989 () Bool)

(declare-fun e!688923 () Bool)

(assert (=> b!1088989 (= e!688924 e!688923)))

(declare-fun res!484103 () Bool)

(assert (=> b!1088989 (=> res!484103 e!688923)))

(assert (=> b!1088989 (= res!484103 (= (h!15811 (list!3724 lt!364202)) lt!364198))))

(declare-fun b!1088990 () Bool)

(assert (=> b!1088990 (= e!688923 (contains!1727 (t!101496 (list!3724 lt!364202)) lt!364198))))

(assert (= (and d!306217 res!484104) b!1088989))

(assert (= (and b!1088989 (not res!484103)) b!1088990))

(assert (=> d!306217 m!1238843))

(declare-fun m!1239413 () Bool)

(assert (=> d!306217 m!1239413))

(declare-fun m!1239415 () Bool)

(assert (=> d!306217 m!1239415))

(declare-fun m!1239417 () Bool)

(assert (=> b!1088990 m!1239417))

(assert (=> d!306045 d!306217))

(assert (=> d!306045 d!306097))

(declare-fun b!1088994 () Bool)

(declare-fun e!688927 () Bool)

(assert (=> b!1088994 (= e!688927 (contains!1730 (right!9225 (c!184401 lt!364202)) lt!364198))))

(declare-fun b!1088991 () Bool)

(declare-fun e!688926 () Bool)

(declare-fun e!688925 () Bool)

(assert (=> b!1088991 (= e!688926 e!688925)))

(declare-fun c!184508 () Bool)

(assert (=> b!1088991 (= c!184508 ((_ is Leaf!5030) (c!184401 lt!364202)))))

(declare-fun b!1088992 () Bool)

(assert (=> b!1088992 (= e!688925 (contains!1732 (xs!5832 (c!184401 lt!364202)) lt!364198))))

(declare-fun b!1088993 () Bool)

(assert (=> b!1088993 (= e!688925 e!688927)))

(declare-fun res!484106 () Bool)

(assert (=> b!1088993 (= res!484106 (contains!1730 (left!8895 (c!184401 lt!364202)) lt!364198))))

(assert (=> b!1088993 (=> res!484106 e!688927)))

(declare-fun d!306219 () Bool)

(declare-fun lt!364330 () Bool)

(assert (=> d!306219 (= lt!364330 (contains!1727 (list!3726 (c!184401 lt!364202)) lt!364198))))

(assert (=> d!306219 (= lt!364330 e!688926)))

(declare-fun res!484105 () Bool)

(assert (=> d!306219 (=> (not res!484105) (not e!688926))))

(assert (=> d!306219 (= res!484105 (not ((_ is Empty!3139) (c!184401 lt!364202))))))

(assert (=> d!306219 (= (contains!1730 (c!184401 lt!364202) lt!364198) lt!364330)))

(assert (= (and d!306219 res!484105) b!1088991))

(assert (= (and b!1088991 c!184508) b!1088992))

(assert (= (and b!1088991 (not c!184508)) b!1088993))

(assert (= (and b!1088993 (not res!484106)) b!1088994))

(declare-fun m!1239419 () Bool)

(assert (=> b!1088994 m!1239419))

(declare-fun m!1239421 () Bool)

(assert (=> b!1088992 m!1239421))

(declare-fun m!1239423 () Bool)

(assert (=> b!1088993 m!1239423))

(assert (=> d!306219 m!1238979))

(assert (=> d!306219 m!1238979))

(declare-fun m!1239425 () Bool)

(assert (=> d!306219 m!1239425))

(assert (=> d!306045 d!306219))

(declare-fun d!306221 () Bool)

(assert (=> d!306221 (= (list!3724 lt!364234) (list!3726 (c!184401 lt!364234)))))

(declare-fun bs!257777 () Bool)

(assert (= bs!257777 d!306221))

(declare-fun m!1239427 () Bool)

(assert (=> bs!257777 m!1239427))

(assert (=> b!1088442 d!306221))

(declare-fun d!306223 () Bool)

(declare-fun e!688929 () Bool)

(assert (=> d!306223 e!688929))

(declare-fun res!484107 () Bool)

(assert (=> d!306223 (=> (not res!484107) (not e!688929))))

(declare-fun lt!364331 () List!10426)

(assert (=> d!306223 (= res!484107 (<= (size!8039 lt!364331) (size!8039 (list!3724 objs!8))))))

(declare-fun e!688928 () List!10426)

(assert (=> d!306223 (= lt!364331 e!688928)))

(declare-fun c!184510 () Bool)

(assert (=> d!306223 (= c!184510 ((_ is Nil!10410) (list!3724 objs!8)))))

(assert (=> d!306223 (= (filter!197 (list!3724 objs!8) lambda!40868) lt!364331)))

(declare-fun bm!80219 () Bool)

(declare-fun call!80224 () List!10426)

(assert (=> bm!80219 (= call!80224 (filter!197 (t!101496 (list!3724 objs!8)) lambda!40868))))

(declare-fun b!1088995 () Bool)

(declare-fun e!688930 () List!10426)

(assert (=> b!1088995 (= e!688928 e!688930)))

(declare-fun c!184509 () Bool)

(assert (=> b!1088995 (= c!184509 (dynLambda!4546 lambda!40868 (h!15811 (list!3724 objs!8))))))

(declare-fun b!1088996 () Bool)

(declare-fun res!484108 () Bool)

(assert (=> b!1088996 (=> (not res!484108) (not e!688929))))

(assert (=> b!1088996 (= res!484108 (= ((_ map implies) (content!1502 lt!364331) (content!1502 (list!3724 objs!8))) ((as const (InoxSet tuple2!11666)) true)))))

(declare-fun b!1088997 () Bool)

(assert (=> b!1088997 (= e!688928 Nil!10410)))

(declare-fun b!1088998 () Bool)

(assert (=> b!1088998 (= e!688930 call!80224)))

(declare-fun b!1088999 () Bool)

(assert (=> b!1088999 (= e!688930 (Cons!10410 (h!15811 (list!3724 objs!8)) call!80224))))

(declare-fun b!1089000 () Bool)

(assert (=> b!1089000 (= e!688929 (forall!2295 lt!364331 lambda!40868))))

(assert (= (and d!306223 c!184510) b!1088997))

(assert (= (and d!306223 (not c!184510)) b!1088995))

(assert (= (and b!1088995 c!184509) b!1088999))

(assert (= (and b!1088995 (not c!184509)) b!1088998))

(assert (= (or b!1088999 b!1088998) bm!80219))

(assert (= (and d!306223 res!484107) b!1088996))

(assert (= (and b!1088996 res!484108) b!1089000))

(declare-fun b_lambda!30343 () Bool)

(assert (=> (not b_lambda!30343) (not b!1088995)))

(declare-fun m!1239429 () Bool)

(assert (=> b!1088996 m!1239429))

(assert (=> b!1088996 m!1238857))

(assert (=> b!1088996 m!1239319))

(declare-fun m!1239431 () Bool)

(assert (=> d!306223 m!1239431))

(assert (=> d!306223 m!1238857))

(assert (=> d!306223 m!1238965))

(declare-fun m!1239433 () Bool)

(assert (=> b!1088995 m!1239433))

(declare-fun m!1239435 () Bool)

(assert (=> bm!80219 m!1239435))

(declare-fun m!1239437 () Bool)

(assert (=> b!1089000 m!1239437))

(assert (=> b!1088442 d!306223))

(assert (=> b!1088442 d!306187))

(declare-fun d!306225 () Bool)

(declare-fun c!184513 () Bool)

(assert (=> d!306225 (= c!184513 ((_ is Nil!10410) lt!364203))))

(declare-fun e!688933 () (InoxSet tuple2!11666))

(assert (=> d!306225 (= (content!1502 lt!364203) e!688933)))

(declare-fun b!1089005 () Bool)

(assert (=> b!1089005 (= e!688933 ((as const (Array tuple2!11666 Bool)) false))))

(declare-fun b!1089006 () Bool)

(assert (=> b!1089006 (= e!688933 ((_ map or) (store ((as const (Array tuple2!11666 Bool)) false) (h!15811 lt!364203) true) (content!1502 (t!101496 lt!364203))))))

(assert (= (and d!306225 c!184513) b!1089005))

(assert (= (and d!306225 (not c!184513)) b!1089006))

(declare-fun m!1239439 () Bool)

(assert (=> b!1089006 m!1239439))

(declare-fun m!1239441 () Bool)

(assert (=> b!1089006 m!1239441))

(assert (=> d!306047 d!306225))

(declare-fun d!306227 () Bool)

(declare-fun lt!364334 () Int)

(assert (=> d!306227 (>= lt!364334 0)))

(declare-fun e!688936 () Int)

(assert (=> d!306227 (= lt!364334 e!688936)))

(declare-fun c!184516 () Bool)

(assert (=> d!306227 (= c!184516 ((_ is Nil!10410) (list!3724 objs!8)))))

(assert (=> d!306227 (= (size!8039 (list!3724 objs!8)) lt!364334)))

(declare-fun b!1089011 () Bool)

(assert (=> b!1089011 (= e!688936 0)))

(declare-fun b!1089012 () Bool)

(assert (=> b!1089012 (= e!688936 (+ 1 (size!8039 (t!101496 (list!3724 objs!8)))))))

(assert (= (and d!306227 c!184516) b!1089011))

(assert (= (and d!306227 (not c!184516)) b!1089012))

(declare-fun m!1239443 () Bool)

(assert (=> b!1089012 m!1239443))

(assert (=> d!306089 d!306227))

(assert (=> d!306089 d!306187))

(declare-fun d!306229 () Bool)

(declare-fun lt!364337 () Int)

(assert (=> d!306229 (= lt!364337 (size!8039 (list!3726 (c!184401 objs!8))))))

(assert (=> d!306229 (= lt!364337 (ite ((_ is Empty!3139) (c!184401 objs!8)) 0 (ite ((_ is Leaf!5030) (c!184401 objs!8)) (csize!6509 (c!184401 objs!8)) (csize!6508 (c!184401 objs!8)))))))

(assert (=> d!306229 (= (size!8040 (c!184401 objs!8)) lt!364337)))

(declare-fun bs!257778 () Bool)

(assert (= bs!257778 d!306229))

(assert (=> bs!257778 m!1239277))

(assert (=> bs!257778 m!1239277))

(declare-fun m!1239445 () Bool)

(assert (=> bs!257778 m!1239445))

(assert (=> d!306089 d!306229))

(declare-fun b!1089013 () Bool)

(declare-fun res!484114 () Bool)

(declare-fun e!688937 () Bool)

(assert (=> b!1089013 (=> (not res!484114) (not e!688937))))

(assert (=> b!1089013 (= res!484114 (isBalanced!874 (right!9225 (c!184401 objs!8))))))

(declare-fun b!1089014 () Bool)

(declare-fun res!484111 () Bool)

(assert (=> b!1089014 (=> (not res!484111) (not e!688937))))

(assert (=> b!1089014 (= res!484111 (<= (- (height!416 (left!8895 (c!184401 objs!8))) (height!416 (right!9225 (c!184401 objs!8)))) 1))))

(declare-fun b!1089015 () Bool)

(assert (=> b!1089015 (= e!688937 (not (isEmpty!6642 (right!9225 (c!184401 objs!8)))))))

(declare-fun b!1089016 () Bool)

(declare-fun res!484113 () Bool)

(assert (=> b!1089016 (=> (not res!484113) (not e!688937))))

(assert (=> b!1089016 (= res!484113 (isBalanced!874 (left!8895 (c!184401 objs!8))))))

(declare-fun d!306231 () Bool)

(declare-fun res!484112 () Bool)

(declare-fun e!688938 () Bool)

(assert (=> d!306231 (=> res!484112 e!688938)))

(assert (=> d!306231 (= res!484112 (not ((_ is Node!3139) (c!184401 objs!8))))))

(assert (=> d!306231 (= (isBalanced!874 (c!184401 objs!8)) e!688938)))

(declare-fun b!1089017 () Bool)

(declare-fun res!484109 () Bool)

(assert (=> b!1089017 (=> (not res!484109) (not e!688937))))

(assert (=> b!1089017 (= res!484109 (not (isEmpty!6642 (left!8895 (c!184401 objs!8)))))))

(declare-fun b!1089018 () Bool)

(assert (=> b!1089018 (= e!688938 e!688937)))

(declare-fun res!484110 () Bool)

(assert (=> b!1089018 (=> (not res!484110) (not e!688937))))

(assert (=> b!1089018 (= res!484110 (<= (- 1) (- (height!416 (left!8895 (c!184401 objs!8))) (height!416 (right!9225 (c!184401 objs!8))))))))

(assert (= (and d!306231 (not res!484112)) b!1089018))

(assert (= (and b!1089018 res!484110) b!1089014))

(assert (= (and b!1089014 res!484111) b!1089016))

(assert (= (and b!1089016 res!484113) b!1089013))

(assert (= (and b!1089013 res!484114) b!1089017))

(assert (= (and b!1089017 res!484109) b!1089015))

(declare-fun m!1239447 () Bool)

(assert (=> b!1089013 m!1239447))

(assert (=> b!1089018 m!1239215))

(assert (=> b!1089018 m!1239217))

(declare-fun m!1239449 () Bool)

(assert (=> b!1089016 m!1239449))

(assert (=> b!1089014 m!1239215))

(assert (=> b!1089014 m!1239217))

(declare-fun m!1239451 () Bool)

(assert (=> b!1089017 m!1239451))

(declare-fun m!1239453 () Bool)

(assert (=> b!1089015 m!1239453))

(assert (=> d!306093 d!306231))

(declare-fun d!306233 () Bool)

(assert (=> d!306233 (= (inv!13320 (xs!5832 (c!184401 objs!8))) (<= (size!8039 (innerList!3199 (xs!5832 (c!184401 objs!8)))) 2147483647))))

(declare-fun bs!257779 () Bool)

(assert (= bs!257779 d!306233))

(declare-fun m!1239455 () Bool)

(assert (=> bs!257779 m!1239455))

(assert (=> b!1088550 d!306233))

(declare-fun b!1089019 () Bool)

(declare-fun res!484120 () Bool)

(declare-fun e!688939 () Bool)

(assert (=> b!1089019 (=> (not res!484120) (not e!688939))))

(assert (=> b!1089019 (= res!484120 (isBalanced!874 (right!9225 (filter!196 (c!184401 objs!8) lambda!40870))))))

(declare-fun b!1089020 () Bool)

(declare-fun res!484117 () Bool)

(assert (=> b!1089020 (=> (not res!484117) (not e!688939))))

(assert (=> b!1089020 (= res!484117 (<= (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40870))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40870)))) 1))))

(declare-fun b!1089021 () Bool)

(assert (=> b!1089021 (= e!688939 (not (isEmpty!6642 (right!9225 (filter!196 (c!184401 objs!8) lambda!40870)))))))

(declare-fun b!1089022 () Bool)

(declare-fun res!484119 () Bool)

(assert (=> b!1089022 (=> (not res!484119) (not e!688939))))

(assert (=> b!1089022 (= res!484119 (isBalanced!874 (left!8895 (filter!196 (c!184401 objs!8) lambda!40870))))))

(declare-fun d!306235 () Bool)

(declare-fun res!484118 () Bool)

(declare-fun e!688940 () Bool)

(assert (=> d!306235 (=> res!484118 e!688940)))

(assert (=> d!306235 (= res!484118 (not ((_ is Node!3139) (filter!196 (c!184401 objs!8) lambda!40870))))))

(assert (=> d!306235 (= (isBalanced!874 (filter!196 (c!184401 objs!8) lambda!40870)) e!688940)))

(declare-fun b!1089023 () Bool)

(declare-fun res!484115 () Bool)

(assert (=> b!1089023 (=> (not res!484115) (not e!688939))))

(assert (=> b!1089023 (= res!484115 (not (isEmpty!6642 (left!8895 (filter!196 (c!184401 objs!8) lambda!40870)))))))

(declare-fun b!1089024 () Bool)

(assert (=> b!1089024 (= e!688940 e!688939)))

(declare-fun res!484116 () Bool)

(assert (=> b!1089024 (=> (not res!484116) (not e!688939))))

(assert (=> b!1089024 (= res!484116 (<= (- 1) (- (height!416 (left!8895 (filter!196 (c!184401 objs!8) lambda!40870))) (height!416 (right!9225 (filter!196 (c!184401 objs!8) lambda!40870))))))))

(assert (= (and d!306235 (not res!484118)) b!1089024))

(assert (= (and b!1089024 res!484116) b!1089020))

(assert (= (and b!1089020 res!484117) b!1089022))

(assert (= (and b!1089022 res!484119) b!1089019))

(assert (= (and b!1089019 res!484120) b!1089023))

(assert (= (and b!1089023 res!484115) b!1089021))

(declare-fun m!1239457 () Bool)

(assert (=> b!1089019 m!1239457))

(declare-fun m!1239459 () Bool)

(assert (=> b!1089024 m!1239459))

(declare-fun m!1239461 () Bool)

(assert (=> b!1089024 m!1239461))

(declare-fun m!1239463 () Bool)

(assert (=> b!1089022 m!1239463))

(assert (=> b!1089020 m!1239459))

(assert (=> b!1089020 m!1239461))

(declare-fun m!1239465 () Bool)

(assert (=> b!1089023 m!1239465))

(declare-fun m!1239467 () Bool)

(assert (=> b!1089021 m!1239467))

(assert (=> d!306081 d!306235))

(declare-fun b!1089025 () Bool)

(declare-fun lt!364340 () Unit!15789)

(assert (=> b!1089025 (= lt!364340 (lemmaFilterConcat!2 (list!3726 (left!8895 (c!184401 objs!8))) (list!3726 (right!9225 (c!184401 objs!8))) lambda!40870))))

(declare-fun e!688944 () Conc!3139)

(assert (=> b!1089025 (= e!688944 (++!2830 (filter!196 (left!8895 (c!184401 objs!8)) lambda!40870) (filter!196 (right!9225 (c!184401 objs!8)) lambda!40870)))))

(declare-fun b!1089026 () Bool)

(declare-fun e!688943 () Conc!3139)

(assert (=> b!1089026 (= e!688943 (c!184401 objs!8))))

(declare-fun b!1089027 () Bool)

(assert (=> b!1089027 (= e!688943 e!688944)))

(declare-fun c!184519 () Bool)

(assert (=> b!1089027 (= c!184519 ((_ is Leaf!5030) (c!184401 objs!8)))))

(declare-fun d!306237 () Bool)

(declare-fun e!688941 () Bool)

(assert (=> d!306237 e!688941))

(declare-fun res!484121 () Bool)

(assert (=> d!306237 (=> (not res!484121) (not e!688941))))

(declare-fun lt!364339 () Conc!3139)

(assert (=> d!306237 (= res!484121 (isBalanced!874 lt!364339))))

(assert (=> d!306237 (= lt!364339 e!688943)))

(declare-fun c!184518 () Bool)

(assert (=> d!306237 (= c!184518 ((_ is Empty!3139) (c!184401 objs!8)))))

(assert (=> d!306237 (isBalanced!874 (c!184401 objs!8))))

(assert (=> d!306237 (= (filter!196 (c!184401 objs!8) lambda!40870) lt!364339)))

(declare-fun b!1089028 () Bool)

(assert (=> b!1089028 (= e!688941 (= (list!3726 lt!364339) (filter!197 (list!3726 (c!184401 objs!8)) lambda!40870)))))

(declare-fun b!1089029 () Bool)

(declare-fun e!688942 () Conc!3139)

(assert (=> b!1089029 (= e!688942 Empty!3139)))

(declare-fun b!1089030 () Bool)

(declare-fun c!184517 () Bool)

(declare-fun lt!364338 () IArray!6283)

(assert (=> b!1089030 (= c!184517 (= (size!8042 lt!364338) 0))))

(assert (=> b!1089030 (= lt!364338 (filter!199 (xs!5832 (c!184401 objs!8)) lambda!40870))))

(assert (=> b!1089030 (= e!688944 e!688942)))

(declare-fun b!1089031 () Bool)

(assert (=> b!1089031 (= e!688942 (Leaf!5030 lt!364338 (size!8042 lt!364338)))))

(assert (= (and d!306237 c!184518) b!1089026))

(assert (= (and d!306237 (not c!184518)) b!1089027))

(assert (= (and b!1089027 c!184519) b!1089030))

(assert (= (and b!1089027 (not c!184519)) b!1089025))

(assert (= (and b!1089030 c!184517) b!1089029))

(assert (= (and b!1089030 (not c!184517)) b!1089031))

(assert (= (and d!306237 res!484121) b!1089028))

(declare-fun m!1239469 () Bool)

(assert (=> b!1089028 m!1239469))

(assert (=> b!1089028 m!1239277))

(assert (=> b!1089028 m!1239277))

(declare-fun m!1239471 () Bool)

(assert (=> b!1089028 m!1239471))

(assert (=> b!1089025 m!1239281))

(declare-fun m!1239473 () Bool)

(assert (=> b!1089025 m!1239473))

(assert (=> b!1089025 m!1239285))

(declare-fun m!1239475 () Bool)

(assert (=> b!1089025 m!1239475))

(assert (=> b!1089025 m!1239473))

(declare-fun m!1239477 () Bool)

(assert (=> b!1089025 m!1239477))

(assert (=> b!1089025 m!1239281))

(assert (=> b!1089025 m!1239285))

(declare-fun m!1239479 () Bool)

(assert (=> b!1089025 m!1239479))

(assert (=> b!1089025 m!1239475))

(declare-fun m!1239481 () Bool)

(assert (=> d!306237 m!1239481))

(assert (=> d!306237 m!1238973))

(declare-fun m!1239483 () Bool)

(assert (=> b!1089030 m!1239483))

(declare-fun m!1239485 () Bool)

(assert (=> b!1089030 m!1239485))

(assert (=> b!1089031 m!1239483))

(assert (=> d!306081 d!306237))

(declare-fun d!306239 () Bool)

(declare-fun lt!364341 () Bool)

(assert (=> d!306239 (= lt!364341 (select (content!1502 (t!101496 lt!364203)) lt!364198))))

(declare-fun e!688946 () Bool)

(assert (=> d!306239 (= lt!364341 e!688946)))

(declare-fun res!484123 () Bool)

(assert (=> d!306239 (=> (not res!484123) (not e!688946))))

(assert (=> d!306239 (= res!484123 ((_ is Cons!10410) (t!101496 lt!364203)))))

(assert (=> d!306239 (= (contains!1727 (t!101496 lt!364203) lt!364198) lt!364341)))

(declare-fun b!1089032 () Bool)

(declare-fun e!688945 () Bool)

(assert (=> b!1089032 (= e!688946 e!688945)))

(declare-fun res!484122 () Bool)

(assert (=> b!1089032 (=> res!484122 e!688945)))

(assert (=> b!1089032 (= res!484122 (= (h!15811 (t!101496 lt!364203)) lt!364198))))

(declare-fun b!1089033 () Bool)

(assert (=> b!1089033 (= e!688945 (contains!1727 (t!101496 (t!101496 lt!364203)) lt!364198))))

(assert (= (and d!306239 res!484123) b!1089032))

(assert (= (and b!1089032 (not res!484122)) b!1089033))

(assert (=> d!306239 m!1239441))

(declare-fun m!1239487 () Bool)

(assert (=> d!306239 m!1239487))

(declare-fun m!1239489 () Bool)

(assert (=> b!1089033 m!1239489))

(assert (=> b!1088409 d!306239))

(declare-fun d!306241 () Bool)

(declare-fun c!184524 () Bool)

(assert (=> d!306241 (= c!184524 ((_ is Empty!3139) (c!184401 lt!364202)))))

(declare-fun e!688951 () List!10426)

(assert (=> d!306241 (= (list!3726 (c!184401 lt!364202)) e!688951)))

(declare-fun b!1089045 () Bool)

(declare-fun e!688952 () List!10426)

(declare-fun ++!2831 (List!10426 List!10426) List!10426)

(assert (=> b!1089045 (= e!688952 (++!2831 (list!3726 (left!8895 (c!184401 lt!364202))) (list!3726 (right!9225 (c!184401 lt!364202)))))))

(declare-fun b!1089042 () Bool)

(assert (=> b!1089042 (= e!688951 Nil!10410)))

(declare-fun b!1089043 () Bool)

(assert (=> b!1089043 (= e!688951 e!688952)))

(declare-fun c!184525 () Bool)

(assert (=> b!1089043 (= c!184525 ((_ is Leaf!5030) (c!184401 lt!364202)))))

(declare-fun b!1089044 () Bool)

(assert (=> b!1089044 (= e!688952 (list!3728 (xs!5832 (c!184401 lt!364202))))))

(assert (= (and d!306241 c!184524) b!1089042))

(assert (= (and d!306241 (not c!184524)) b!1089043))

(assert (= (and b!1089043 c!184525) b!1089044))

(assert (= (and b!1089043 (not c!184525)) b!1089045))

(declare-fun m!1239491 () Bool)

(assert (=> b!1089045 m!1239491))

(declare-fun m!1239493 () Bool)

(assert (=> b!1089045 m!1239493))

(assert (=> b!1089045 m!1239491))

(assert (=> b!1089045 m!1239493))

(declare-fun m!1239495 () Bool)

(assert (=> b!1089045 m!1239495))

(declare-fun m!1239497 () Bool)

(assert (=> b!1089044 m!1239497))

(assert (=> d!306097 d!306241))

(declare-fun b!1089046 () Bool)

(declare-fun e!688953 () Bool)

(assert (=> b!1089046 (= e!688953 true)))

(declare-fun b!1089048 () Bool)

(declare-fun e!688954 () Bool)

(assert (=> b!1089048 (= e!688954 true)))

(declare-fun b!1089047 () Bool)

(assert (=> b!1089047 (= e!688953 e!688954)))

(assert (=> b!1088521 e!688953))

(assert (= (and b!1088521 ((_ is Node!3138) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089046))

(assert (= b!1089047 b!1089048))

(assert (= (and b!1088521 ((_ is Leaf!5029) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089047))

(declare-fun b!1089049 () Bool)

(declare-fun e!688955 () Bool)

(assert (=> b!1089049 (= e!688955 true)))

(declare-fun b!1089051 () Bool)

(declare-fun e!688956 () Bool)

(assert (=> b!1089051 (= e!688956 true)))

(declare-fun b!1089050 () Bool)

(assert (=> b!1089050 (= e!688955 e!688956)))

(assert (=> b!1088521 e!688955))

(assert (= (and b!1088521 ((_ is Node!3138) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089049))

(assert (= b!1089050 b!1089051))

(assert (= (and b!1088521 ((_ is Leaf!5029) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089050))

(declare-fun b!1089052 () Bool)

(declare-fun e!688957 () Bool)

(assert (=> b!1089052 (= e!688957 true)))

(declare-fun b!1089054 () Bool)

(declare-fun e!688958 () Bool)

(assert (=> b!1089054 (= e!688958 true)))

(declare-fun b!1089053 () Bool)

(assert (=> b!1089053 (= e!688957 e!688958)))

(assert (=> b!1088518 e!688957))

(assert (= (and b!1088518 ((_ is Node!3138) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089052))

(assert (= b!1089053 b!1089054))

(assert (= (and b!1088518 ((_ is Leaf!5029) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089053))

(declare-fun b!1089055 () Bool)

(declare-fun e!688959 () Bool)

(assert (=> b!1089055 (= e!688959 true)))

(declare-fun b!1089057 () Bool)

(declare-fun e!688960 () Bool)

(assert (=> b!1089057 (= e!688960 true)))

(declare-fun b!1089056 () Bool)

(assert (=> b!1089056 (= e!688959 e!688960)))

(assert (=> b!1088518 e!688959))

(assert (= (and b!1088518 ((_ is Node!3138) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089055))

(assert (= b!1089056 b!1089057))

(assert (= (and b!1088518 ((_ is Leaf!5029) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089056))

(declare-fun b!1089058 () Bool)

(declare-fun e!688961 () Bool)

(assert (=> b!1089058 (= e!688961 true)))

(declare-fun b!1089060 () Bool)

(declare-fun e!688962 () Bool)

(assert (=> b!1089060 (= e!688962 true)))

(declare-fun b!1089059 () Bool)

(assert (=> b!1089059 (= e!688961 e!688962)))

(assert (=> b!1088515 e!688961))

(assert (= (and b!1088515 ((_ is Node!3138) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089058))

(assert (= b!1089059 b!1089060))

(assert (= (and b!1088515 ((_ is Leaf!5029) (left!8894 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089059))

(declare-fun b!1089061 () Bool)

(declare-fun e!688963 () Bool)

(assert (=> b!1089061 (= e!688963 true)))

(declare-fun b!1089063 () Bool)

(declare-fun e!688964 () Bool)

(assert (=> b!1089063 (= e!688964 true)))

(declare-fun b!1089062 () Bool)

(assert (=> b!1089062 (= e!688963 e!688964)))

(assert (=> b!1088515 e!688963))

(assert (= (and b!1088515 ((_ is Node!3138) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089061))

(assert (= b!1089062 b!1089063))

(assert (= (and b!1088515 ((_ is Leaf!5029) (right!9224 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))) b!1089062))

(declare-fun tp!326311 () Bool)

(declare-fun tp!326312 () Bool)

(declare-fun b!1089064 () Bool)

(declare-fun e!688965 () Bool)

(assert (=> b!1089064 (= e!688965 (and (inv!13314 (left!8895 (left!8895 (c!184401 objs!8)))) tp!326312 (inv!13314 (right!9225 (left!8895 (c!184401 objs!8)))) tp!326311))))

(declare-fun b!1089066 () Bool)

(declare-fun e!688966 () Bool)

(declare-fun tp!326310 () Bool)

(assert (=> b!1089066 (= e!688966 tp!326310)))

(declare-fun b!1089065 () Bool)

(assert (=> b!1089065 (= e!688965 (and (inv!13320 (xs!5832 (left!8895 (c!184401 objs!8)))) e!688966))))

(assert (=> b!1088549 (= tp!326294 (and (inv!13314 (left!8895 (c!184401 objs!8))) e!688965))))

(assert (= (and b!1088549 ((_ is Node!3139) (left!8895 (c!184401 objs!8)))) b!1089064))

(assert (= b!1089065 b!1089066))

(assert (= (and b!1088549 ((_ is Leaf!5030) (left!8895 (c!184401 objs!8)))) b!1089065))

(declare-fun m!1239499 () Bool)

(assert (=> b!1089064 m!1239499))

(declare-fun m!1239501 () Bool)

(assert (=> b!1089064 m!1239501))

(declare-fun m!1239503 () Bool)

(assert (=> b!1089065 m!1239503))

(assert (=> b!1088549 m!1238981))

(declare-fun tp!326314 () Bool)

(declare-fun tp!326315 () Bool)

(declare-fun e!688967 () Bool)

(declare-fun b!1089067 () Bool)

(assert (=> b!1089067 (= e!688967 (and (inv!13314 (left!8895 (right!9225 (c!184401 objs!8)))) tp!326315 (inv!13314 (right!9225 (right!9225 (c!184401 objs!8)))) tp!326314))))

(declare-fun b!1089069 () Bool)

(declare-fun e!688968 () Bool)

(declare-fun tp!326313 () Bool)

(assert (=> b!1089069 (= e!688968 tp!326313)))

(declare-fun b!1089068 () Bool)

(assert (=> b!1089068 (= e!688967 (and (inv!13320 (xs!5832 (right!9225 (c!184401 objs!8)))) e!688968))))

(assert (=> b!1088549 (= tp!326293 (and (inv!13314 (right!9225 (c!184401 objs!8))) e!688967))))

(assert (= (and b!1088549 ((_ is Node!3139) (right!9225 (c!184401 objs!8)))) b!1089067))

(assert (= b!1089068 b!1089069))

(assert (= (and b!1088549 ((_ is Leaf!5030) (right!9225 (c!184401 objs!8)))) b!1089068))

(declare-fun m!1239505 () Bool)

(assert (=> b!1089067 m!1239505))

(declare-fun m!1239507 () Bool)

(assert (=> b!1089067 m!1239507))

(declare-fun m!1239509 () Bool)

(assert (=> b!1089068 m!1239509))

(assert (=> b!1088549 m!1238983))

(declare-fun b!1089072 () Bool)

(declare-fun e!688971 () Bool)

(assert (=> b!1089072 (= e!688971 true)))

(declare-fun b!1089071 () Bool)

(declare-fun e!688970 () Bool)

(assert (=> b!1089071 (= e!688970 e!688971)))

(declare-fun b!1089070 () Bool)

(declare-fun e!688969 () Bool)

(assert (=> b!1089070 (= e!688969 e!688970)))

(assert (=> b!1088532 e!688969))

(assert (= b!1089071 b!1089072))

(assert (= b!1089070 b!1089071))

(assert (= (and b!1088532 ((_ is Cons!10409) (t!101495 (rules!9057 (_2!6659 lt!364198))))) b!1089070))

(assert (=> b!1089072 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40868))))

(assert (=> b!1089072 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40868))))

(declare-fun e!688980 () Bool)

(assert (=> b!1088517 e!688980))

(declare-fun b!1089086 () Bool)

(declare-fun e!688983 () Bool)

(assert (=> b!1089086 (= e!688983 true)))

(declare-fun b!1089084 () Bool)

(declare-fun e!688981 () Bool)

(declare-fun e!688982 () Bool)

(assert (=> b!1089084 (= e!688981 e!688982)))

(declare-fun b!1089083 () Bool)

(assert (=> b!1089083 (= e!688980 e!688981)))

(declare-fun b!1089085 () Bool)

(assert (=> b!1089085 (= e!688982 e!688983)))

(assert (= b!1089085 b!1089086))

(assert (= b!1089084 b!1089085))

(assert (= b!1089083 b!1089084))

(assert (= (and b!1088517 ((_ is Cons!10408) (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198))))))) b!1089083))

(assert (=> b!1089086 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40868))))

(assert (=> b!1089086 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40868))))

(declare-fun b!1089089 () Bool)

(declare-fun e!688986 () Bool)

(assert (=> b!1089089 (= e!688986 true)))

(declare-fun b!1089088 () Bool)

(declare-fun e!688985 () Bool)

(assert (=> b!1089088 (= e!688985 e!688986)))

(declare-fun b!1089087 () Bool)

(declare-fun e!688984 () Bool)

(assert (=> b!1089087 (= e!688984 e!688985)))

(assert (=> b!1088538 e!688984))

(assert (= b!1089088 b!1089089))

(assert (= b!1089087 b!1089088))

(assert (= (and b!1088538 ((_ is Cons!10409) (t!101495 (rules!9057 (_2!6659 lt!364198))))) b!1089087))

(assert (=> b!1089089 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40869))))

(assert (=> b!1089089 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40869))))

(declare-fun b!1089092 () Bool)

(declare-fun e!688989 () Bool)

(assert (=> b!1089092 (= e!688989 true)))

(declare-fun b!1089091 () Bool)

(declare-fun e!688988 () Bool)

(assert (=> b!1089091 (= e!688988 e!688989)))

(declare-fun b!1089090 () Bool)

(declare-fun e!688987 () Bool)

(assert (=> b!1089090 (= e!688987 e!688988)))

(assert (=> b!1088535 e!688987))

(assert (= b!1089091 b!1089092))

(assert (= b!1089090 b!1089091))

(assert (= (and b!1088535 ((_ is Cons!10409) (t!101495 (rules!9057 (_2!6659 lt!364198))))) b!1089090))

(assert (=> b!1089092 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40870))))

(assert (=> b!1089092 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (h!15810 (t!101495 (rules!9057 (_2!6659 lt!364198))))))) (dynLambda!4548 order!6245 lambda!40870))))

(declare-fun e!688990 () Bool)

(assert (=> b!1088523 e!688990))

(declare-fun b!1089096 () Bool)

(declare-fun e!688993 () Bool)

(assert (=> b!1089096 (= e!688993 true)))

(declare-fun b!1089094 () Bool)

(declare-fun e!688991 () Bool)

(declare-fun e!688992 () Bool)

(assert (=> b!1089094 (= e!688991 e!688992)))

(declare-fun b!1089093 () Bool)

(assert (=> b!1089093 (= e!688990 e!688991)))

(declare-fun b!1089095 () Bool)

(assert (=> b!1089095 (= e!688992 e!688993)))

(assert (= b!1089095 b!1089096))

(assert (= b!1089094 b!1089095))

(assert (= b!1089093 b!1089094))

(assert (= (and b!1088523 ((_ is Cons!10408) (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198))))))) b!1089093))

(assert (=> b!1089096 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40869))))

(assert (=> b!1089096 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40869))))

(declare-fun b!1089107 () Bool)

(declare-fun e!689000 () Bool)

(declare-fun tp!326324 () Bool)

(declare-fun inv!13324 (Conc!3138) Bool)

(assert (=> b!1089107 (= e!689000 (and (inv!13324 (c!184400 (tokens!1329 (_2!6659 (h!15811 (innerList!3199 (xs!5832 (c!184401 objs!8)))))))) tp!326324))))

(declare-fun e!689001 () Bool)

(declare-fun tp!326323 () Bool)

(declare-fun b!1089106 () Bool)

(declare-fun inv!13325 (BalanceConc!6290) Bool)

(assert (=> b!1089106 (= e!689001 (and tp!326323 (inv!13325 (tokens!1329 (_2!6659 (h!15811 (innerList!3199 (xs!5832 (c!184401 objs!8))))))) e!689000))))

(declare-fun b!1089105 () Bool)

(declare-fun tp!326322 () Bool)

(declare-fun e!689002 () Bool)

(declare-fun inv!13326 (PrintableTokens!256) Bool)

(assert (=> b!1089105 (= e!689002 (and (inv!13326 (_2!6659 (h!15811 (innerList!3199 (xs!5832 (c!184401 objs!8)))))) e!689001 tp!326322))))

(assert (=> b!1088551 (= tp!326292 e!689002)))

(assert (= b!1089106 b!1089107))

(assert (= b!1089105 b!1089106))

(assert (= (and b!1088551 ((_ is Cons!10410) (innerList!3199 (xs!5832 (c!184401 objs!8))))) b!1089105))

(declare-fun m!1239511 () Bool)

(assert (=> b!1089107 m!1239511))

(declare-fun m!1239513 () Bool)

(assert (=> b!1089106 m!1239513))

(declare-fun m!1239515 () Bool)

(assert (=> b!1089105 m!1239515))

(declare-fun e!689003 () Bool)

(assert (=> b!1088520 e!689003))

(declare-fun b!1089111 () Bool)

(declare-fun e!689006 () Bool)

(assert (=> b!1089111 (= e!689006 true)))

(declare-fun b!1089109 () Bool)

(declare-fun e!689004 () Bool)

(declare-fun e!689005 () Bool)

(assert (=> b!1089109 (= e!689004 e!689005)))

(declare-fun b!1089108 () Bool)

(assert (=> b!1089108 (= e!689003 e!689004)))

(declare-fun b!1089110 () Bool)

(assert (=> b!1089110 (= e!689005 e!689006)))

(assert (= b!1089110 b!1089111))

(assert (= b!1089109 b!1089110))

(assert (= b!1089108 b!1089109))

(assert (= (and b!1088520 ((_ is Cons!10408) (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198))))))) b!1089108))

(assert (=> b!1089111 (< (dynLambda!4547 order!6243 (toValue!2847 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40870))))

(assert (=> b!1089111 (< (dynLambda!4549 order!6247 (toChars!2706 (transformation!1770 (rule!3193 (h!15809 (innerList!3198 (xs!5831 (c!184400 (tokens!1329 (_2!6659 lt!364198)))))))))) (dynLambda!4548 order!6245 lambda!40870))))

(declare-fun b_lambda!30345 () Bool)

(assert (= b_lambda!30335 (or b!1088388 b_lambda!30345)))

(declare-fun bs!257780 () Bool)

(declare-fun d!306243 () Bool)

(assert (= bs!257780 (and d!306243 b!1088388)))

(assert (=> bs!257780 (= (dynLambda!4546 lambda!40868 (h!15811 (t!101496 lt!364203))) (< (_1!6659 (h!15811 (t!101496 lt!364203))) (_1!6659 lt!364198)))))

(assert (=> b!1088880 d!306243))

(declare-fun b_lambda!30347 () Bool)

(assert (= b_lambda!30339 (or b!1088388 b_lambda!30347)))

(declare-fun bs!257781 () Bool)

(declare-fun d!306245 () Bool)

(assert (= bs!257781 (and d!306245 b!1088388)))

(assert (=> bs!257781 (= (dynLambda!4546 lambda!40869 (h!15811 (list!3724 objs!8))) (= (_1!6659 (h!15811 (list!3724 objs!8))) (_1!6659 lt!364198)))))

(assert (=> b!1088971 d!306245))

(declare-fun b_lambda!30349 () Bool)

(assert (= b_lambda!30337 (or start!92962 b_lambda!30349)))

(declare-fun bs!257782 () Bool)

(declare-fun d!306247 () Bool)

(assert (= bs!257782 (and d!306247 start!92962)))

(declare-fun usesJsonRules!0 (PrintableTokens!256) Bool)

(assert (=> bs!257782 (= (dynLambda!4546 lambda!40867 (h!15811 (list!3724 objs!8))) (usesJsonRules!0 (_2!6659 (h!15811 (list!3724 objs!8)))))))

(declare-fun m!1239517 () Bool)

(assert (=> bs!257782 m!1239517))

(assert (=> b!1088939 d!306247))

(declare-fun b_lambda!30351 () Bool)

(assert (= b_lambda!30343 (or b!1088388 b_lambda!30351)))

(declare-fun bs!257783 () Bool)

(declare-fun d!306249 () Bool)

(assert (= bs!257783 (and d!306249 b!1088388)))

(assert (=> bs!257783 (= (dynLambda!4546 lambda!40868 (h!15811 (list!3724 objs!8))) (< (_1!6659 (h!15811 (list!3724 objs!8))) (_1!6659 lt!364198)))))

(assert (=> b!1088995 d!306249))

(declare-fun b_lambda!30353 () Bool)

(assert (= b_lambda!30341 (or b!1088388 b_lambda!30353)))

(declare-fun bs!257784 () Bool)

(declare-fun d!306251 () Bool)

(assert (= bs!257784 (and d!306251 b!1088388)))

(assert (=> bs!257784 (= (dynLambda!4546 lambda!40870 (h!15811 (list!3724 objs!8))) (> (_1!6659 (h!15811 (list!3724 objs!8))) (_1!6659 lt!364198)))))

(assert (=> b!1088977 d!306251))

(check-sat (not b!1089108) (not b!1089060) (not b!1089028) (not d!306237) (not b!1089046) (not d!306211) (not b!1089018) (not b!1088930) (not b!1089023) (not b!1089030) (not b!1089070) (not b!1088986) (not b!1088763) (not b!1088923) (not b!1088811) (not d!306223) (not d!306157) (not b!1089020) (not b!1088879) (not d!306207) (not b!1089024) (not d!306229) (not b!1089054) (not b!1089105) (not b!1088909) (not b!1088809) (not b!1088913) (not b!1088950) (not b!1089083) (not d!306239) (not b_lambda!30351) (not b!1088810) (not b!1088925) (not b!1089012) (not b!1088957) (not b!1089061) (not b!1089065) (not d!306197) (not d!306187) (not b!1088873) (not d!306191) (not b_lambda!30345) (not b!1088808) (not b!1089066) (not b!1089013) (not b!1088889) (not b!1088976) (not b!1089055) (not b!1089087) (not b!1089045) (not b!1089014) (not b!1088978) (not bs!257782) (not b!1088982) (not b!1088924) (not b!1088806) (not b_lambda!30347) (not b!1088952) (not b!1088927) (not b!1088972) (not b!1088935) (not b!1088990) (not b!1089058) (not d!306219) (not b!1089063) (not b!1089015) (not b!1089051) (not d!306201) (not b!1089033) (not d!306217) (not b!1089049) (not b!1088876) (not b!1088993) (not b!1089016) (not b!1088890) (not b!1089093) (not b!1088907) (not b!1088931) (not b!1089048) (not b!1089021) (not b!1088911) (not bm!80218) (not b!1088926) (not b!1088985) (not d!306221) (not b!1089031) (not b!1089052) (not b!1088988) (not b!1088807) (not b!1088937) (not d!306209) (not b!1089057) (not b!1089090) (not d!306205) (not b_lambda!30353) (not b!1088878) (not b!1089067) (not d!306233) (not b!1088992) (not b!1088929) (not b!1088549) (not d!306171) (not b!1088940) (not b!1088888) (not d!306185) (not b_lambda!30313) (not bm!80219) (not b!1088932) (not b!1089019) (not bm!80214) (not b!1088994) (not b!1089006) (not b!1088996) (not b!1089106) (not b!1089044) (not b_lambda!30349) (not b!1089064) (not b!1089000) (not b!1088881) (not b!1089069) (not d!306189) (not b!1088928) (not b!1089068) (not b!1088910) (not b!1089025) (not b!1088938) (not b!1089022) (not b!1088951) (not b!1088983) (not d!306203) (not d!306193) (not bm!80217) (not b!1089107) (not b!1089017))
(check-sat)
