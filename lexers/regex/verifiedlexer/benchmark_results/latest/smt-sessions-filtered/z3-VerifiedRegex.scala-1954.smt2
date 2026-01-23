; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97122 () Bool)

(assert start!97122)

(declare-fun b!1130277 () Bool)

(assert (=> b!1130277 true))

(declare-fun res!507967 () Bool)

(declare-fun e!722054 () Bool)

(assert (=> start!97122 (=> (not res!507967) (not e!722054))))

(declare-datatypes ((List!10978 0))(
  ( (Nil!10954) (Cons!10954 (h!16355 (_ BitVec 16)) (t!106832 List!10978)) )
))
(declare-datatypes ((TokenValue!1955 0))(
  ( (FloatLiteralValue!3910 (text!14130 List!10978)) (TokenValueExt!1954 (__x!7631 Int)) (Broken!9775 (value!61807 List!10978)) (Object!1978) (End!1955) (Def!1955) (Underscore!1955) (Match!1955) (Else!1955) (Error!1955) (Case!1955) (If!1955) (Extends!1955) (Abstract!1955) (Class!1955) (Val!1955) (DelimiterValue!3910 (del!2015 List!10978)) (KeywordValue!1961 (value!61808 List!10978)) (CommentValue!3910 (value!61809 List!10978)) (WhitespaceValue!3910 (value!61810 List!10978)) (IndentationValue!1955 (value!61811 List!10978)) (String!13362) (Int32!1955) (Broken!9776 (value!61812 List!10978)) (Boolean!1956) (Unit!16627) (OperatorValue!1958 (op!2015 List!10978)) (IdentifierValue!3910 (value!61813 List!10978)) (IdentifierValue!3911 (value!61814 List!10978)) (WhitespaceValue!3911 (value!61815 List!10978)) (True!3910) (False!3910) (Broken!9777 (value!61816 List!10978)) (Broken!9778 (value!61817 List!10978)) (True!3911) (RightBrace!1955) (RightBracket!1955) (Colon!1955) (Null!1955) (Comma!1955) (LeftBracket!1955) (False!3911) (LeftBrace!1955) (ImaginaryLiteralValue!1955 (text!14131 List!10978)) (StringLiteralValue!5865 (value!61818 List!10978)) (EOFValue!1955 (value!61819 List!10978)) (IdentValue!1955 (value!61820 List!10978)) (DelimiterValue!3911 (value!61821 List!10978)) (DedentValue!1955 (value!61822 List!10978)) (NewLineValue!1955 (value!61823 List!10978)) (IntegerValue!5865 (value!61824 (_ BitVec 32)) (text!14132 List!10978)) (IntegerValue!5866 (value!61825 Int) (text!14133 List!10978)) (Times!1955) (Or!1955) (Equal!1955) (Minus!1955) (Broken!9779 (value!61826 List!10978)) (And!1955) (Div!1955) (LessEqual!1955) (Mod!1955) (Concat!5114) (Not!1955) (Plus!1955) (SpaceValue!1955 (value!61827 List!10978)) (IntegerValue!5867 (value!61828 Int) (text!14134 List!10978)) (StringLiteralValue!5866 (text!14135 List!10978)) (FloatLiteralValue!3911 (text!14136 List!10978)) (BytesLiteralValue!1955 (value!61829 List!10978)) (CommentValue!3911 (value!61830 List!10978)) (StringLiteralValue!5867 (value!61831 List!10978)) (ErrorTokenValue!1955 (msg!2016 List!10978)) )
))
(declare-datatypes ((Regex!3159 0))(
  ( (ElementMatch!3159 (c!189408 (_ BitVec 16))) (Concat!5115 (regOne!6830 Regex!3159) (regTwo!6830 Regex!3159)) (EmptyExpr!3159) (Star!3159 (reg!3488 Regex!3159)) (EmptyLang!3159) (Union!3159 (regOne!6831 Regex!3159) (regTwo!6831 Regex!3159)) )
))
(declare-datatypes ((String!13363 0))(
  ( (String!13364 (value!61832 String)) )
))
(declare-datatypes ((IArray!6985 0))(
  ( (IArray!6986 (innerList!3550 List!10978)) )
))
(declare-datatypes ((Conc!3490 0))(
  ( (Node!3490 (left!9508 Conc!3490) (right!9838 Conc!3490) (csize!7210 Int) (cheight!3701 Int)) (Leaf!5445 (xs!6183 IArray!6985) (csize!7211 Int)) (Empty!3490) )
))
(declare-datatypes ((BalanceConc!7002 0))(
  ( (BalanceConc!7003 (c!189409 Conc!3490)) )
))
(declare-datatypes ((TokenValueInjection!3610 0))(
  ( (TokenValueInjection!3611 (toValue!2978 Int) (toChars!2837 Int)) )
))
(declare-datatypes ((Rule!3578 0))(
  ( (Rule!3579 (regex!1889 Regex!3159) (tag!2151 String!13363) (isSeparator!1889 Bool) (transformation!1889 TokenValueInjection!3610)) )
))
(declare-datatypes ((Token!3440 0))(
  ( (Token!3441 (value!61833 TokenValue!1955) (rule!3310 Rule!3578) (size!8526 Int) (originalCharacters!2443 List!10978)) )
))
(declare-datatypes ((List!10979 0))(
  ( (Nil!10955) (Cons!10955 (h!16356 Token!3440) (t!106833 List!10979)) )
))
(declare-datatypes ((IArray!6987 0))(
  ( (IArray!6988 (innerList!3551 List!10979)) )
))
(declare-datatypes ((Conc!3491 0))(
  ( (Node!3491 (left!9509 Conc!3491) (right!9839 Conc!3491) (csize!7212 Int) (cheight!3702 Int)) (Leaf!5446 (xs!6184 IArray!6987) (csize!7213 Int)) (Empty!3491) )
))
(declare-datatypes ((List!10980 0))(
  ( (Nil!10956) (Cons!10956 (h!16357 Rule!3578) (t!106834 List!10980)) )
))
(declare-datatypes ((BalanceConc!7004 0))(
  ( (BalanceConc!7005 (c!189410 Conc!3491)) )
))
(declare-datatypes ((PrintableTokens!464 0))(
  ( (PrintableTokens!465 (rules!9208 List!10980) (tokens!1450 BalanceConc!7004)) )
))
(declare-fun pt!21 () PrintableTokens!464)

(declare-fun size!108 () Int)

(declare-fun size!8527 (PrintableTokens!464) Int)

(assert (=> start!97122 (= res!507967 (= (size!8527 pt!21) size!108))))

(assert (=> start!97122 e!722054))

(declare-fun e!722059 () Bool)

(declare-fun inv!14153 (PrintableTokens!464) Bool)

(assert (=> start!97122 (and (inv!14153 pt!21) e!722059)))

(assert (=> start!97122 true))

(declare-datatypes ((List!10981 0))(
  ( (Nil!10957) (Cons!10957 (h!16358 Int) (t!106835 List!10981)) )
))
(declare-datatypes ((IArray!6989 0))(
  ( (IArray!6990 (innerList!3552 List!10981)) )
))
(declare-datatypes ((Conc!3492 0))(
  ( (Node!3492 (left!9510 Conc!3492) (right!9840 Conc!3492) (csize!7214 Int) (cheight!3703 Int)) (Leaf!5447 (xs!6185 IArray!6989) (csize!7215 Int)) (Empty!3492) )
))
(declare-datatypes ((BalanceConc!7006 0))(
  ( (BalanceConc!7007 (c!189411 Conc!3492)) )
))
(declare-fun indices!2 () BalanceConc!7006)

(declare-fun e!722058 () Bool)

(declare-fun inv!14154 (BalanceConc!7006) Bool)

(assert (=> start!97122 (and (inv!14154 indices!2) e!722058)))

(declare-datatypes ((List!10982 0))(
  ( (Nil!10958) (Cons!10958 (h!16359 PrintableTokens!464) (t!106836 List!10982)) )
))
(declare-datatypes ((IArray!6991 0))(
  ( (IArray!6992 (innerList!3553 List!10982)) )
))
(declare-datatypes ((Conc!3493 0))(
  ( (Node!3493 (left!9511 Conc!3493) (right!9841 Conc!3493) (csize!7216 Int) (cheight!3704 Int)) (Leaf!5448 (xs!6186 IArray!6991) (csize!7217 Int)) (Empty!3493) )
))
(declare-datatypes ((BalanceConc!7008 0))(
  ( (BalanceConc!7009 (c!189412 Conc!3493)) )
))
(declare-fun acc!225 () BalanceConc!7008)

(declare-fun e!722055 () Bool)

(declare-fun inv!14155 (BalanceConc!7008) Bool)

(assert (=> start!97122 (and (inv!14155 acc!225) e!722055)))

(declare-fun b!1130276 () Bool)

(declare-fun tp!330801 () Bool)

(declare-fun e!722056 () Bool)

(declare-fun inv!14156 (BalanceConc!7004) Bool)

(assert (=> b!1130276 (= e!722059 (and tp!330801 (inv!14156 (tokens!1450 pt!21)) e!722056))))

(declare-fun res!507963 () Bool)

(assert (=> b!1130277 (=> (not res!507963) (not e!722054))))

(declare-fun lambda!45474 () Int)

(declare-fun forall!2629 (BalanceConc!7006 Int) Bool)

(assert (=> b!1130277 (= res!507963 (forall!2629 indices!2 lambda!45474))))

(declare-fun b!1130278 () Bool)

(declare-fun tp!330800 () Bool)

(declare-fun inv!14157 (Conc!3491) Bool)

(assert (=> b!1130278 (= e!722056 (and (inv!14157 (c!189410 (tokens!1450 pt!21))) tp!330800))))

(declare-fun b!1130279 () Bool)

(declare-fun res!507962 () Bool)

(assert (=> b!1130279 (=> (not res!507962) (not e!722054))))

(declare-fun size!8528 (BalanceConc!7006) Int)

(assert (=> b!1130279 (= res!507962 (>= (size!8528 indices!2) 2))))

(declare-fun b!1130280 () Bool)

(declare-fun tp!330799 () Bool)

(declare-fun inv!14158 (Conc!3493) Bool)

(assert (=> b!1130280 (= e!722055 (and (inv!14158 (c!189412 acc!225)) tp!330799))))

(declare-fun b!1130281 () Bool)

(declare-fun e!722057 () Bool)

(assert (=> b!1130281 (= e!722054 e!722057)))

(declare-fun res!507965 () Bool)

(assert (=> b!1130281 (=> (not res!507965) (not e!722057))))

(declare-fun lt!378985 () PrintableTokens!464)

(declare-fun usesJsonRules!0 (PrintableTokens!464) Bool)

(assert (=> b!1130281 (= res!507965 (usesJsonRules!0 lt!378985))))

(declare-fun e!722052 () PrintableTokens!464)

(assert (=> b!1130281 (= lt!378985 e!722052)))

(declare-fun c!189407 () Bool)

(declare-fun lt!378986 () Int)

(declare-fun lt!378984 () Int)

(assert (=> b!1130281 (= c!189407 (<= lt!378986 lt!378984))))

(declare-fun apply!2259 (BalanceConc!7006 Int) Int)

(assert (=> b!1130281 (= lt!378984 (apply!2259 indices!2 1))))

(assert (=> b!1130281 (= lt!378986 (apply!2259 indices!2 0))))

(declare-fun b!1130282 () Bool)

(declare-fun e!722053 () Bool)

(assert (=> b!1130282 (= e!722057 e!722053)))

(declare-fun res!507968 () Bool)

(assert (=> b!1130282 (=> (not res!507968) (not e!722053))))

(declare-fun lambda!45475 () Int)

(declare-fun forall!2630 (List!10982 Int) Bool)

(declare-fun list!3952 (BalanceConc!7008) List!10982)

(assert (=> b!1130282 (= res!507968 (forall!2630 (list!3952 acc!225) lambda!45475))))

(declare-fun b!1130283 () Bool)

(declare-fun tp!330802 () Bool)

(declare-fun inv!14159 (Conc!3492) Bool)

(assert (=> b!1130283 (= e!722058 (and (inv!14159 (c!189411 indices!2)) tp!330802))))

(declare-fun b!1130284 () Bool)

(declare-fun call!80634 () PrintableTokens!464)

(assert (=> b!1130284 (= e!722052 call!80634)))

(declare-fun bm!80629 () Bool)

(declare-fun slice!58 (PrintableTokens!464 Int Int) PrintableTokens!464)

(assert (=> bm!80629 (= call!80634 (slice!58 pt!21 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))

(declare-fun b!1130285 () Bool)

(declare-fun res!507966 () Bool)

(assert (=> b!1130285 (=> (not res!507966) (not e!722054))))

(declare-fun forall!2631 (BalanceConc!7008 Int) Bool)

(assert (=> b!1130285 (= res!507966 (forall!2631 acc!225 lambda!45475))))

(declare-fun b!1130286 () Bool)

(assert (=> b!1130286 (= e!722052 call!80634)))

(declare-fun b!1130287 () Bool)

(assert (=> b!1130287 (= e!722053 (not (forall!2630 (Cons!10958 lt!378985 Nil!10958) lambda!45475)))))

(declare-fun b!1130288 () Bool)

(declare-fun res!507964 () Bool)

(assert (=> b!1130288 (=> (not res!507964) (not e!722054))))

(assert (=> b!1130288 (= res!507964 (usesJsonRules!0 pt!21))))

(assert (= (and start!97122 res!507967) b!1130277))

(assert (= (and b!1130277 res!507963) b!1130288))

(assert (= (and b!1130288 res!507964) b!1130285))

(assert (= (and b!1130285 res!507966) b!1130279))

(assert (= (and b!1130279 res!507962) b!1130281))

(assert (= (and b!1130281 c!189407) b!1130284))

(assert (= (and b!1130281 (not c!189407)) b!1130286))

(assert (= (or b!1130284 b!1130286) bm!80629))

(assert (= (and b!1130281 res!507965) b!1130282))

(assert (= (and b!1130282 res!507968) b!1130287))

(assert (= b!1130276 b!1130278))

(assert (= start!97122 b!1130276))

(assert (= start!97122 b!1130283))

(assert (= start!97122 b!1130280))

(declare-fun m!1278921 () Bool)

(assert (=> b!1130285 m!1278921))

(declare-fun m!1278923 () Bool)

(assert (=> b!1130279 m!1278923))

(declare-fun m!1278925 () Bool)

(assert (=> b!1130276 m!1278925))

(declare-fun m!1278927 () Bool)

(assert (=> b!1130283 m!1278927))

(declare-fun m!1278929 () Bool)

(assert (=> b!1130287 m!1278929))

(declare-fun m!1278931 () Bool)

(assert (=> start!97122 m!1278931))

(declare-fun m!1278933 () Bool)

(assert (=> start!97122 m!1278933))

(declare-fun m!1278935 () Bool)

(assert (=> start!97122 m!1278935))

(declare-fun m!1278937 () Bool)

(assert (=> start!97122 m!1278937))

(declare-fun m!1278939 () Bool)

(assert (=> b!1130281 m!1278939))

(declare-fun m!1278941 () Bool)

(assert (=> b!1130281 m!1278941))

(declare-fun m!1278943 () Bool)

(assert (=> b!1130281 m!1278943))

(declare-fun m!1278945 () Bool)

(assert (=> b!1130282 m!1278945))

(assert (=> b!1130282 m!1278945))

(declare-fun m!1278947 () Bool)

(assert (=> b!1130282 m!1278947))

(declare-fun m!1278949 () Bool)

(assert (=> b!1130280 m!1278949))

(declare-fun m!1278951 () Bool)

(assert (=> b!1130278 m!1278951))

(declare-fun m!1278953 () Bool)

(assert (=> b!1130288 m!1278953))

(declare-fun m!1278955 () Bool)

(assert (=> bm!80629 m!1278955))

(declare-fun m!1278957 () Bool)

(assert (=> b!1130277 m!1278957))

(check-sat (not bm!80629) (not b!1130287) (not b!1130279) (not start!97122) (not b!1130288) (not b!1130283) (not b!1130276) (not b!1130278) (not b!1130277) (not b!1130280) (not b!1130282) (not b!1130281) (not b!1130285))
(check-sat)
(get-model)

(declare-fun d!318443 () Bool)

(declare-fun res!507982 () Bool)

(declare-fun e!722076 () Bool)

(assert (=> d!318443 (=> res!507982 e!722076)))

(get-info :version)

(assert (=> d!318443 (= res!507982 ((_ is Nil!10958) (list!3952 acc!225)))))

(assert (=> d!318443 (= (forall!2630 (list!3952 acc!225) lambda!45475) e!722076)))

(declare-fun b!1130310 () Bool)

(declare-fun e!722077 () Bool)

(assert (=> b!1130310 (= e!722076 e!722077)))

(declare-fun res!507983 () Bool)

(assert (=> b!1130310 (=> (not res!507983) (not e!722077))))

(declare-fun dynLambda!4818 (Int PrintableTokens!464) Bool)

(assert (=> b!1130310 (= res!507983 (dynLambda!4818 lambda!45475 (h!16359 (list!3952 acc!225))))))

(declare-fun b!1130311 () Bool)

(assert (=> b!1130311 (= e!722077 (forall!2630 (t!106836 (list!3952 acc!225)) lambda!45475))))

(assert (= (and d!318443 (not res!507982)) b!1130310))

(assert (= (and b!1130310 res!507983) b!1130311))

(declare-fun b_lambda!33221 () Bool)

(assert (=> (not b_lambda!33221) (not b!1130310)))

(declare-fun m!1278971 () Bool)

(assert (=> b!1130310 m!1278971))

(declare-fun m!1278973 () Bool)

(assert (=> b!1130311 m!1278973))

(assert (=> b!1130282 d!318443))

(declare-fun d!318445 () Bool)

(declare-fun list!3956 (Conc!3493) List!10982)

(assert (=> d!318445 (= (list!3952 acc!225) (list!3956 (c!189412 acc!225)))))

(declare-fun bs!277582 () Bool)

(assert (= bs!277582 d!318445))

(declare-fun m!1278975 () Bool)

(assert (=> bs!277582 m!1278975))

(assert (=> b!1130282 d!318445))

(declare-fun d!318447 () Bool)

(declare-fun c!189418 () Bool)

(assert (=> d!318447 (= c!189418 ((_ is Node!3492) (c!189411 indices!2)))))

(declare-fun e!722082 () Bool)

(assert (=> d!318447 (= (inv!14159 (c!189411 indices!2)) e!722082)))

(declare-fun b!1130318 () Bool)

(declare-fun inv!14166 (Conc!3492) Bool)

(assert (=> b!1130318 (= e!722082 (inv!14166 (c!189411 indices!2)))))

(declare-fun b!1130319 () Bool)

(declare-fun e!722083 () Bool)

(assert (=> b!1130319 (= e!722082 e!722083)))

(declare-fun res!507986 () Bool)

(assert (=> b!1130319 (= res!507986 (not ((_ is Leaf!5447) (c!189411 indices!2))))))

(assert (=> b!1130319 (=> res!507986 e!722083)))

(declare-fun b!1130320 () Bool)

(declare-fun inv!14167 (Conc!3492) Bool)

(assert (=> b!1130320 (= e!722083 (inv!14167 (c!189411 indices!2)))))

(assert (= (and d!318447 c!189418) b!1130318))

(assert (= (and d!318447 (not c!189418)) b!1130319))

(assert (= (and b!1130319 (not res!507986)) b!1130320))

(declare-fun m!1278977 () Bool)

(assert (=> b!1130318 m!1278977))

(declare-fun m!1278979 () Bool)

(assert (=> b!1130320 m!1278979))

(assert (=> b!1130283 d!318447))

(declare-fun d!318449 () Bool)

(declare-fun size!8533 (BalanceConc!7004) Int)

(assert (=> d!318449 (= (size!8527 pt!21) (size!8533 (tokens!1450 pt!21)))))

(declare-fun bs!277583 () Bool)

(assert (= bs!277583 d!318449))

(declare-fun m!1278981 () Bool)

(assert (=> bs!277583 m!1278981))

(assert (=> start!97122 d!318449))

(declare-fun d!318451 () Bool)

(declare-fun res!508007 () Bool)

(declare-fun e!722097 () Bool)

(assert (=> d!318451 (=> (not res!508007) (not e!722097))))

(declare-fun isEmpty!6785 (List!10980) Bool)

(assert (=> d!318451 (= res!508007 (not (isEmpty!6785 (rules!9208 pt!21))))))

(assert (=> d!318451 (= (inv!14153 pt!21) e!722097)))

(declare-fun b!1130347 () Bool)

(declare-fun res!508008 () Bool)

(assert (=> b!1130347 (=> (not res!508008) (not e!722097))))

(declare-datatypes ((LexerInterface!1595 0))(
  ( (LexerInterfaceExt!1592 (__x!7633 Int)) (Lexer!1593) )
))
(declare-fun rulesInvariant!1469 (LexerInterface!1595 List!10980) Bool)

(assert (=> b!1130347 (= res!508008 (rulesInvariant!1469 Lexer!1593 (rules!9208 pt!21)))))

(declare-fun b!1130348 () Bool)

(declare-fun res!508009 () Bool)

(assert (=> b!1130348 (=> (not res!508009) (not e!722097))))

(declare-fun rulesProduceEachTokenIndividually!637 (LexerInterface!1595 List!10980 BalanceConc!7004) Bool)

(assert (=> b!1130348 (= res!508009 (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (tokens!1450 pt!21)))))

(declare-fun b!1130349 () Bool)

(declare-fun separableTokens!64 (LexerInterface!1595 BalanceConc!7004 List!10980) Bool)

(assert (=> b!1130349 (= e!722097 (separableTokens!64 Lexer!1593 (tokens!1450 pt!21) (rules!9208 pt!21)))))

(assert (= (and d!318451 res!508007) b!1130347))

(assert (= (and b!1130347 res!508008) b!1130348))

(assert (= (and b!1130348 res!508009) b!1130349))

(declare-fun m!1279015 () Bool)

(assert (=> d!318451 m!1279015))

(declare-fun m!1279017 () Bool)

(assert (=> b!1130347 m!1279017))

(declare-fun m!1279019 () Bool)

(assert (=> b!1130348 m!1279019))

(declare-fun m!1279021 () Bool)

(assert (=> b!1130349 m!1279021))

(assert (=> start!97122 d!318451))

(declare-fun d!318469 () Bool)

(declare-fun isBalanced!965 (Conc!3492) Bool)

(assert (=> d!318469 (= (inv!14154 indices!2) (isBalanced!965 (c!189411 indices!2)))))

(declare-fun bs!277589 () Bool)

(assert (= bs!277589 d!318469))

(declare-fun m!1279023 () Bool)

(assert (=> bs!277589 m!1279023))

(assert (=> start!97122 d!318469))

(declare-fun d!318471 () Bool)

(declare-fun isBalanced!966 (Conc!3493) Bool)

(assert (=> d!318471 (= (inv!14155 acc!225) (isBalanced!966 (c!189412 acc!225)))))

(declare-fun bs!277590 () Bool)

(assert (= bs!277590 d!318471))

(declare-fun m!1279025 () Bool)

(assert (=> bs!277590 m!1279025))

(assert (=> start!97122 d!318471))

(declare-fun d!318473 () Bool)

(declare-datatypes ((JsonLexer!308 0))(
  ( (JsonLexer!309) )
))
(declare-fun rules!109 (JsonLexer!308) List!10980)

(assert (=> d!318473 (= (usesJsonRules!0 lt!378985) (= (rules!9208 lt!378985) (rules!109 JsonLexer!309)))))

(declare-fun bs!277591 () Bool)

(assert (= bs!277591 d!318473))

(declare-fun m!1279027 () Bool)

(assert (=> bs!277591 m!1279027))

(assert (=> b!1130281 d!318473))

(declare-fun d!318475 () Bool)

(declare-fun lt!378998 () Int)

(declare-fun apply!2264 (List!10981 Int) Int)

(declare-fun list!3957 (BalanceConc!7006) List!10981)

(assert (=> d!318475 (= lt!378998 (apply!2264 (list!3957 indices!2) 1))))

(declare-fun apply!2265 (Conc!3492 Int) Int)

(assert (=> d!318475 (= lt!378998 (apply!2265 (c!189411 indices!2) 1))))

(declare-fun e!722100 () Bool)

(assert (=> d!318475 e!722100))

(declare-fun res!508012 () Bool)

(assert (=> d!318475 (=> (not res!508012) (not e!722100))))

(assert (=> d!318475 (= res!508012 (<= 0 1))))

(assert (=> d!318475 (= (apply!2259 indices!2 1) lt!378998)))

(declare-fun b!1130352 () Bool)

(assert (=> b!1130352 (= e!722100 (< 1 (size!8528 indices!2)))))

(assert (= (and d!318475 res!508012) b!1130352))

(declare-fun m!1279029 () Bool)

(assert (=> d!318475 m!1279029))

(assert (=> d!318475 m!1279029))

(declare-fun m!1279031 () Bool)

(assert (=> d!318475 m!1279031))

(declare-fun m!1279033 () Bool)

(assert (=> d!318475 m!1279033))

(assert (=> b!1130352 m!1278923))

(assert (=> b!1130281 d!318475))

(declare-fun d!318477 () Bool)

(declare-fun lt!378999 () Int)

(assert (=> d!318477 (= lt!378999 (apply!2264 (list!3957 indices!2) 0))))

(assert (=> d!318477 (= lt!378999 (apply!2265 (c!189411 indices!2) 0))))

(declare-fun e!722101 () Bool)

(assert (=> d!318477 e!722101))

(declare-fun res!508013 () Bool)

(assert (=> d!318477 (=> (not res!508013) (not e!722101))))

(assert (=> d!318477 (= res!508013 (<= 0 0))))

(assert (=> d!318477 (= (apply!2259 indices!2 0) lt!378999)))

(declare-fun b!1130353 () Bool)

(assert (=> b!1130353 (= e!722101 (< 0 (size!8528 indices!2)))))

(assert (= (and d!318477 res!508013) b!1130353))

(assert (=> d!318477 m!1279029))

(assert (=> d!318477 m!1279029))

(declare-fun m!1279035 () Bool)

(assert (=> d!318477 m!1279035))

(declare-fun m!1279037 () Bool)

(assert (=> d!318477 m!1279037))

(assert (=> b!1130353 m!1278923))

(assert (=> b!1130281 d!318477))

(declare-fun d!318479 () Bool)

(declare-fun c!189424 () Bool)

(assert (=> d!318479 (= c!189424 ((_ is Node!3493) (c!189412 acc!225)))))

(declare-fun e!722106 () Bool)

(assert (=> d!318479 (= (inv!14158 (c!189412 acc!225)) e!722106)))

(declare-fun b!1130360 () Bool)

(declare-fun inv!14172 (Conc!3493) Bool)

(assert (=> b!1130360 (= e!722106 (inv!14172 (c!189412 acc!225)))))

(declare-fun b!1130361 () Bool)

(declare-fun e!722107 () Bool)

(assert (=> b!1130361 (= e!722106 e!722107)))

(declare-fun res!508016 () Bool)

(assert (=> b!1130361 (= res!508016 (not ((_ is Leaf!5448) (c!189412 acc!225))))))

(assert (=> b!1130361 (=> res!508016 e!722107)))

(declare-fun b!1130362 () Bool)

(declare-fun inv!14173 (Conc!3493) Bool)

(assert (=> b!1130362 (= e!722107 (inv!14173 (c!189412 acc!225)))))

(assert (= (and d!318479 c!189424) b!1130360))

(assert (= (and d!318479 (not c!189424)) b!1130361))

(assert (= (and b!1130361 (not res!508016)) b!1130362))

(declare-fun m!1279039 () Bool)

(assert (=> b!1130360 m!1279039))

(declare-fun m!1279041 () Bool)

(assert (=> b!1130362 m!1279041))

(assert (=> b!1130280 d!318479))

(declare-fun d!318481 () Bool)

(assert (=> d!318481 (= (usesJsonRules!0 pt!21) (= (rules!9208 pt!21) (rules!109 JsonLexer!309)))))

(declare-fun bs!277592 () Bool)

(assert (= bs!277592 d!318481))

(assert (=> bs!277592 m!1279027))

(assert (=> b!1130288 d!318481))

(declare-fun d!318483 () Bool)

(declare-fun c!189427 () Bool)

(assert (=> d!318483 (= c!189427 ((_ is Node!3491) (c!189410 (tokens!1450 pt!21))))))

(declare-fun e!722112 () Bool)

(assert (=> d!318483 (= (inv!14157 (c!189410 (tokens!1450 pt!21))) e!722112)))

(declare-fun b!1130369 () Bool)

(declare-fun inv!14174 (Conc!3491) Bool)

(assert (=> b!1130369 (= e!722112 (inv!14174 (c!189410 (tokens!1450 pt!21))))))

(declare-fun b!1130370 () Bool)

(declare-fun e!722113 () Bool)

(assert (=> b!1130370 (= e!722112 e!722113)))

(declare-fun res!508019 () Bool)

(assert (=> b!1130370 (= res!508019 (not ((_ is Leaf!5446) (c!189410 (tokens!1450 pt!21)))))))

(assert (=> b!1130370 (=> res!508019 e!722113)))

(declare-fun b!1130371 () Bool)

(declare-fun inv!14175 (Conc!3491) Bool)

(assert (=> b!1130371 (= e!722113 (inv!14175 (c!189410 (tokens!1450 pt!21))))))

(assert (= (and d!318483 c!189427) b!1130369))

(assert (= (and d!318483 (not c!189427)) b!1130370))

(assert (= (and b!1130370 (not res!508019)) b!1130371))

(declare-fun m!1279043 () Bool)

(assert (=> b!1130369 m!1279043))

(declare-fun m!1279045 () Bool)

(assert (=> b!1130371 m!1279045))

(assert (=> b!1130278 d!318483))

(declare-fun d!318485 () Bool)

(declare-fun lt!379002 () Int)

(declare-fun size!8534 (List!10981) Int)

(assert (=> d!318485 (= lt!379002 (size!8534 (list!3957 indices!2)))))

(declare-fun size!8535 (Conc!3492) Int)

(assert (=> d!318485 (= lt!379002 (size!8535 (c!189411 indices!2)))))

(assert (=> d!318485 (= (size!8528 indices!2) lt!379002)))

(declare-fun bs!277593 () Bool)

(assert (= bs!277593 d!318485))

(assert (=> bs!277593 m!1279029))

(assert (=> bs!277593 m!1279029))

(declare-fun m!1279047 () Bool)

(assert (=> bs!277593 m!1279047))

(declare-fun m!1279049 () Bool)

(assert (=> bs!277593 m!1279049))

(assert (=> b!1130279 d!318485))

(declare-fun d!318487 () Bool)

(declare-fun lt!379005 () Bool)

(declare-fun forall!2637 (List!10981 Int) Bool)

(assert (=> d!318487 (= lt!379005 (forall!2637 (list!3957 indices!2) lambda!45474))))

(declare-fun forall!2638 (Conc!3492 Int) Bool)

(assert (=> d!318487 (= lt!379005 (forall!2638 (c!189411 indices!2) lambda!45474))))

(assert (=> d!318487 (= (forall!2629 indices!2 lambda!45474) lt!379005)))

(declare-fun bs!277594 () Bool)

(assert (= bs!277594 d!318487))

(assert (=> bs!277594 m!1279029))

(assert (=> bs!277594 m!1279029))

(declare-fun m!1279051 () Bool)

(assert (=> bs!277594 m!1279051))

(declare-fun m!1279053 () Bool)

(assert (=> bs!277594 m!1279053))

(assert (=> b!1130277 d!318487))

(declare-fun d!318489 () Bool)

(declare-fun res!508020 () Bool)

(declare-fun e!722114 () Bool)

(assert (=> d!318489 (=> res!508020 e!722114)))

(assert (=> d!318489 (= res!508020 ((_ is Nil!10958) (Cons!10958 lt!378985 Nil!10958)))))

(assert (=> d!318489 (= (forall!2630 (Cons!10958 lt!378985 Nil!10958) lambda!45475) e!722114)))

(declare-fun b!1130372 () Bool)

(declare-fun e!722115 () Bool)

(assert (=> b!1130372 (= e!722114 e!722115)))

(declare-fun res!508021 () Bool)

(assert (=> b!1130372 (=> (not res!508021) (not e!722115))))

(assert (=> b!1130372 (= res!508021 (dynLambda!4818 lambda!45475 (h!16359 (Cons!10958 lt!378985 Nil!10958))))))

(declare-fun b!1130373 () Bool)

(assert (=> b!1130373 (= e!722115 (forall!2630 (t!106836 (Cons!10958 lt!378985 Nil!10958)) lambda!45475))))

(assert (= (and d!318489 (not res!508020)) b!1130372))

(assert (= (and b!1130372 res!508021) b!1130373))

(declare-fun b_lambda!33225 () Bool)

(assert (=> (not b_lambda!33225) (not b!1130372)))

(declare-fun m!1279055 () Bool)

(assert (=> b!1130372 m!1279055))

(declare-fun m!1279057 () Bool)

(assert (=> b!1130373 m!1279057))

(assert (=> b!1130287 d!318489))

(declare-fun d!318491 () Bool)

(declare-fun lt!379008 () Bool)

(assert (=> d!318491 (= lt!379008 (forall!2630 (list!3952 acc!225) lambda!45475))))

(declare-fun forall!2639 (Conc!3493 Int) Bool)

(assert (=> d!318491 (= lt!379008 (forall!2639 (c!189412 acc!225) lambda!45475))))

(assert (=> d!318491 (= (forall!2631 acc!225 lambda!45475) lt!379008)))

(declare-fun bs!277595 () Bool)

(assert (= bs!277595 d!318491))

(assert (=> bs!277595 m!1278945))

(assert (=> bs!277595 m!1278945))

(assert (=> bs!277595 m!1278947))

(declare-fun m!1279059 () Bool)

(assert (=> bs!277595 m!1279059))

(assert (=> b!1130285 d!318491))

(declare-fun d!318493 () Bool)

(declare-fun isBalanced!967 (Conc!3491) Bool)

(assert (=> d!318493 (= (inv!14156 (tokens!1450 pt!21)) (isBalanced!967 (c!189410 (tokens!1450 pt!21))))))

(declare-fun bs!277596 () Bool)

(assert (= bs!277596 d!318493))

(declare-fun m!1279061 () Bool)

(assert (=> bs!277596 m!1279061))

(assert (=> b!1130276 d!318493))

(declare-fun b!1130527 () Bool)

(declare-fun e!722251 () Bool)

(assert (=> b!1130527 (= e!722251 true)))

(declare-fun b!1130526 () Bool)

(declare-fun e!722250 () Bool)

(assert (=> b!1130526 (= e!722250 e!722251)))

(declare-fun d!318495 () Bool)

(assert (=> d!318495 e!722250))

(assert (= b!1130526 b!1130527))

(assert (= d!318495 b!1130526))

(declare-fun lt!379402 () LexerInterface!1595)

(declare-fun e!722232 () Bool)

(declare-fun lt!379420 () List!10979)

(declare-fun b!1130506 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!470 (LexerInterface!1595 List!10980 List!10979) Bool)

(assert (=> b!1130506 (= e!722232 (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (t!106833 lt!379420)))))

(declare-fun b!1130507 () Bool)

(declare-fun lt!379384 () Int)

(declare-fun lt!379437 () List!10979)

(declare-fun e!722245 () Bool)

(declare-fun lt!379404 () LexerInterface!1595)

(declare-fun tokensListTwoByTwoPredicateSeparableList!69 (LexerInterface!1595 List!10979 List!10980) Bool)

(declare-fun take!15 (List!10979 Int) List!10979)

(assert (=> b!1130507 (= e!722245 (tokensListTwoByTwoPredicateSeparableList!69 lt!379404 (take!15 lt!379437 lt!379384) (rules!9208 pt!21)))))

(declare-datatypes ((Unit!16639 0))(
  ( (Unit!16640) )
))
(declare-fun lt!379440 () Unit!16639)

(declare-fun lt!379442 () Unit!16639)

(assert (=> b!1130507 (= lt!379440 lt!379442)))

(declare-fun lt!379379 () List!10979)

(declare-fun lambda!45501 () Int)

(declare-fun forall!2640 (List!10979 Int) Bool)

(assert (=> b!1130507 (forall!2640 lt!379379 lambda!45501)))

(declare-fun lemmaForallSubseq!72 (List!10979 List!10979 Int) Unit!16639)

(assert (=> b!1130507 (= lt!379442 (lemmaForallSubseq!72 lt!379379 lt!379437 lambda!45501))))

(assert (=> b!1130507 (= lt!379379 (take!15 lt!379437 lt!379384))))

(declare-fun b!1130508 () Bool)

(declare-fun e!722243 () Bool)

(declare-fun e!722238 () Bool)

(assert (=> b!1130508 (= e!722243 e!722238)))

(declare-fun res!508108 () Bool)

(assert (=> b!1130508 (=> (not res!508108) (not e!722238))))

(declare-fun lt!379412 () LexerInterface!1595)

(declare-fun lt!379432 () List!10979)

(declare-fun rulesProduceIndividualToken!642 (LexerInterface!1595 List!10980 Token!3440) Bool)

(assert (=> b!1130508 (= res!508108 (rulesProduceIndividualToken!642 lt!379412 (rules!9208 pt!21) (h!16356 lt!379432)))))

(declare-fun lt!379387 () PrintableTokens!464)

(declare-fun b!1130509 () Bool)

(declare-fun e!722239 () Bool)

(declare-fun list!3958 (BalanceConc!7004) List!10979)

(declare-fun slice!61 (BalanceConc!7004 Int Int) BalanceConc!7004)

(assert (=> b!1130509 (= e!722239 (= (list!3958 (tokens!1450 lt!379387)) (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))))

(assert (=> d!318495 e!722239))

(declare-fun res!508109 () Bool)

(assert (=> d!318495 (=> (not res!508109) (not e!722239))))

(assert (=> d!318495 (= res!508109 (= (rules!9208 lt!379387) (rules!9208 pt!21)))))

(assert (=> d!318495 (= lt!379387 (PrintableTokens!465 (rules!9208 pt!21) (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379434 () Unit!16639)

(declare-fun lt!379424 () Unit!16639)

(assert (=> d!318495 (= lt!379434 lt!379424)))

(assert (=> d!318495 e!722245))

(declare-fun res!508106 () Bool)

(assert (=> d!318495 (=> (not res!508106) (not e!722245))))

(declare-fun e!722240 () Bool)

(assert (=> d!318495 (= res!508106 (= (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (take!15 lt!379437 lt!379384)) e!722240))))

(declare-fun res!508102 () Bool)

(assert (=> d!318495 (=> res!508102 e!722240)))

(declare-fun lt!379443 () List!10979)

(assert (=> d!318495 (= res!508102 (not ((_ is Cons!10955) lt!379443)))))

(assert (=> d!318495 (= lt!379443 (take!15 lt!379437 lt!379384))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!13 (LexerInterface!1595 List!10979 Int List!10980) Unit!16639)

(assert (=> d!318495 (= lt!379424 (tokensListTwoByTwoPredicateSeparableTokensTakeList!13 lt!379404 lt!379437 lt!379384 (rules!9208 pt!21)))))

(assert (=> d!318495 (= lt!379384 (- (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (ite c!189407 lt!378986 lt!378984)))))

(declare-fun drop!417 (List!10979 Int) List!10979)

(assert (=> d!318495 (= lt!379437 (drop!417 (list!3958 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984)))))

(assert (=> d!318495 (= lt!379404 Lexer!1593)))

(declare-fun lt!379375 () Unit!16639)

(declare-fun lt!379444 () Unit!16639)

(assert (=> d!318495 (= lt!379375 lt!379444)))

(declare-fun lt!379417 () List!10979)

(assert (=> d!318495 (forall!2640 lt!379417 lambda!45501)))

(declare-fun lt!379411 () List!10979)

(assert (=> d!318495 (= lt!379444 (lemmaForallSubseq!72 lt!379417 lt!379411 lambda!45501))))

(assert (=> d!318495 (= lt!379411 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318495 (= lt!379417 (drop!417 (list!3958 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984)))))

(declare-fun lt!379410 () Unit!16639)

(declare-fun lt!379392 () Unit!16639)

(assert (=> d!318495 (= lt!379410 lt!379392)))

(declare-fun lt!379406 () List!10979)

(declare-fun subseq!172 (List!10979 List!10979) Bool)

(assert (=> d!318495 (subseq!172 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984)) lt!379406)))

(declare-fun lemmaDropSubseq!13 (List!10979 Int) Unit!16639)

(assert (=> d!318495 (= lt!379392 (lemmaDropSubseq!13 lt!379406 (ite c!189407 lt!378986 lt!378984)))))

(assert (=> d!318495 (= lt!379406 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379383 () Unit!16639)

(declare-fun lt!379380 () Unit!16639)

(assert (=> d!318495 (= lt!379383 lt!379380)))

(declare-fun e!722242 () Bool)

(assert (=> d!318495 e!722242))

(declare-fun res!508104 () Bool)

(assert (=> d!318495 (=> (not res!508104) (not e!722242))))

(declare-fun lt!379399 () List!10979)

(declare-fun e!722235 () Bool)

(assert (=> d!318495 (= res!508104 (= (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) e!722235))))

(declare-fun res!508103 () Bool)

(assert (=> d!318495 (=> res!508103 e!722235)))

(assert (=> d!318495 (= res!508103 (not ((_ is Cons!10955) lt!379420)))))

(assert (=> d!318495 (= lt!379420 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!13 (LexerInterface!1595 List!10979 Int List!10980) Unit!16639)

(assert (=> d!318495 (= lt!379380 (tokensListTwoByTwoPredicateSeparableTokensDropList!13 lt!379402 lt!379399 (ite c!189407 lt!378986 lt!378984) (rules!9208 pt!21)))))

(assert (=> d!318495 (= lt!379399 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318495 (= lt!379402 Lexer!1593)))

(declare-fun lt!379394 () Unit!16639)

(declare-fun Unit!16641 () Unit!16639)

(assert (=> d!318495 (= lt!379394 Unit!16641)))

(declare-fun e!722237 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!24 (LexerInterface!1595 BalanceConc!7004 Int List!10980) Bool)

(assert (=> d!318495 (= (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (tokens!1450 pt!21) 0 (rules!9208 pt!21)) e!722237)))

(declare-fun res!508110 () Bool)

(assert (=> d!318495 (=> res!508110 e!722237)))

(declare-fun lt!379419 () Int)

(assert (=> d!318495 (= res!508110 (not (< lt!379419 (- (size!8533 (tokens!1450 pt!21)) 1))))))

(assert (=> d!318495 (= lt!379419 0)))

(declare-fun lt!379395 () LexerInterface!1595)

(assert (=> d!318495 (= lt!379395 Lexer!1593)))

(declare-fun lt!379408 () Unit!16639)

(declare-fun Unit!16642 () Unit!16639)

(assert (=> d!318495 (= lt!379408 Unit!16642)))

(assert (=> d!318495 (= (separableTokens!64 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (rules!9208 pt!21)) (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0 (rules!9208 pt!21)))))

(declare-fun lt!379374 () Unit!16639)

(declare-fun Unit!16643 () Unit!16639)

(assert (=> d!318495 (= lt!379374 Unit!16643)))

(declare-fun e!722236 () Bool)

(assert (=> d!318495 (= (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))) e!722236)))

(declare-fun res!508100 () Bool)

(assert (=> d!318495 (=> res!508100 e!722236)))

(declare-fun lt!379435 () List!10979)

(assert (=> d!318495 (= res!508100 (not ((_ is Cons!10955) lt!379435)))))

(assert (=> d!318495 (= lt!379435 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379381 () LexerInterface!1595)

(assert (=> d!318495 (= lt!379381 Lexer!1593)))

(declare-fun lt!379427 () Unit!16639)

(declare-fun Unit!16644 () Unit!16639)

(assert (=> d!318495 (= lt!379427 Unit!16644)))

(declare-fun forall!2641 (BalanceConc!7004 Int) Bool)

(assert (=> d!318495 (= (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) (forall!2641 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lambda!45501))))

(declare-fun lt!379373 () Unit!16639)

(declare-fun lt!379390 () Unit!16639)

(assert (=> d!318495 (= lt!379373 lt!379390)))

(declare-fun lt!379396 () List!10979)

(assert (=> d!318495 (forall!2640 lt!379396 lambda!45501)))

(declare-fun lt!379421 () List!10979)

(assert (=> d!318495 (= lt!379390 (lemmaForallSubseq!72 lt!379396 lt!379421 lambda!45501))))

(assert (=> d!318495 (= lt!379421 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318495 (= lt!379396 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379398 () Unit!16639)

(declare-fun lt!379439 () Unit!16639)

(assert (=> d!318495 (= lt!379398 lt!379439)))

(declare-fun lt!379433 () List!10979)

(declare-fun slice!62 (List!10979 Int Int) List!10979)

(assert (=> d!318495 (subseq!172 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379433)))

(declare-fun lemmaSliceSubseq!13 (List!10979 Int Int) Unit!16639)

(assert (=> d!318495 (= lt!379439 (lemmaSliceSubseq!13 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))

(assert (=> d!318495 (= lt!379433 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379382 () Unit!16639)

(declare-fun Unit!16645 () Unit!16639)

(assert (=> d!318495 (= lt!379382 Unit!16645)))

(assert (=> d!318495 (= (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (tokens!1450 pt!21))) e!722243)))

(declare-fun res!508105 () Bool)

(assert (=> d!318495 (=> res!508105 e!722243)))

(assert (=> d!318495 (= res!508105 (not ((_ is Cons!10955) lt!379432)))))

(assert (=> d!318495 (= lt!379432 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318495 (= lt!379412 Lexer!1593)))

(declare-fun lt!379422 () Unit!16639)

(declare-fun Unit!16646 () Unit!16639)

(assert (=> d!318495 (= lt!379422 Unit!16646)))

(assert (=> d!318495 (= (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (tokens!1450 pt!21)) (forall!2641 (tokens!1450 pt!21) lambda!45501))))

(declare-fun lt!379376 () Unit!16639)

(declare-fun lemmaInvariant!87 (PrintableTokens!464) Unit!16639)

(assert (=> d!318495 (= lt!379376 (lemmaInvariant!87 pt!21))))

(declare-fun e!722234 () Bool)

(assert (=> d!318495 e!722234))

(declare-fun res!508112 () Bool)

(assert (=> d!318495 (=> (not res!508112) (not e!722234))))

(assert (=> d!318495 (= res!508112 (and (<= 0 (ite c!189407 lt!378986 lt!378984)) (<= (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(assert (=> d!318495 (= (slice!58 pt!21 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379387)))

(declare-fun b!1130510 () Bool)

(assert (=> b!1130510 (= e!722238 (rulesProduceEachTokenIndividuallyList!470 lt!379412 (rules!9208 pt!21) (t!106833 lt!379432)))))

(declare-fun b!1130511 () Bool)

(declare-fun e!722244 () Bool)

(assert (=> b!1130511 (= e!722237 e!722244)))

(declare-fun res!508101 () Bool)

(assert (=> b!1130511 (=> (not res!508101) (not e!722244))))

(declare-fun separableTokensPredicate!93 (LexerInterface!1595 Token!3440 Token!3440 List!10980) Bool)

(declare-fun apply!2266 (BalanceConc!7004 Int) Token!3440)

(assert (=> b!1130511 (= res!508101 (separableTokensPredicate!93 lt!379395 (apply!2266 (tokens!1450 pt!21) lt!379419) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)) (rules!9208 pt!21)))))

(declare-fun lt!379413 () Unit!16639)

(declare-fun Unit!16647 () Unit!16639)

(assert (=> b!1130511 (= lt!379413 Unit!16647)))

(declare-fun size!8536 (BalanceConc!7002) Int)

(declare-fun charsOf!1031 (Token!3440) BalanceConc!7002)

(assert (=> b!1130511 (> (size!8536 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))) 0)))

(declare-fun lt!379438 () Unit!16639)

(declare-fun Unit!16648 () Unit!16639)

(assert (=> b!1130511 (= lt!379438 Unit!16648)))

(assert (=> b!1130511 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))

(declare-fun lt!379425 () Unit!16639)

(declare-fun Unit!16649 () Unit!16639)

(assert (=> b!1130511 (= lt!379425 Unit!16649)))

(assert (=> b!1130511 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) lt!379419))))

(declare-fun lt!379414 () Unit!16639)

(declare-fun lt!379385 () Unit!16639)

(assert (=> b!1130511 (= lt!379414 lt!379385)))

(declare-fun lt!379388 () Token!3440)

(assert (=> b!1130511 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379388)))

(declare-fun lt!379391 () List!10979)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 (LexerInterface!1595 List!10980 List!10979 Token!3440) Unit!16639)

(assert (=> b!1130511 (= lt!379385 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379391 lt!379388))))

(assert (=> b!1130511 (= lt!379388 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))

(assert (=> b!1130511 (= lt!379391 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379423 () Unit!16639)

(declare-fun lt!379409 () Unit!16639)

(assert (=> b!1130511 (= lt!379423 lt!379409)))

(declare-fun lt!379428 () Token!3440)

(assert (=> b!1130511 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379428)))

(declare-fun lt!379441 () List!10979)

(assert (=> b!1130511 (= lt!379409 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379441 lt!379428))))

(assert (=> b!1130511 (= lt!379428 (apply!2266 (tokens!1450 pt!21) lt!379419))))

(assert (=> b!1130511 (= lt!379441 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379431 () Unit!16639)

(declare-fun lt!379430 () Unit!16639)

(assert (=> b!1130511 (= lt!379431 lt!379430)))

(declare-fun lt!379416 () List!10979)

(declare-fun lt!379429 () Int)

(declare-fun tail!1613 (List!10979) List!10979)

(assert (=> b!1130511 (= (tail!1613 (drop!417 lt!379416 lt!379429)) (drop!417 lt!379416 (+ lt!379429 1)))))

(declare-fun lemmaDropTail!322 (List!10979 Int) Unit!16639)

(assert (=> b!1130511 (= lt!379430 (lemmaDropTail!322 lt!379416 lt!379429))))

(assert (=> b!1130511 (= lt!379429 (+ lt!379419 1))))

(assert (=> b!1130511 (= lt!379416 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379405 () Unit!16639)

(declare-fun lt!379418 () Unit!16639)

(assert (=> b!1130511 (= lt!379405 lt!379418)))

(declare-fun lt!379386 () List!10979)

(assert (=> b!1130511 (= (tail!1613 (drop!417 lt!379386 lt!379419)) (drop!417 lt!379386 (+ lt!379419 1)))))

(assert (=> b!1130511 (= lt!379418 (lemmaDropTail!322 lt!379386 lt!379419))))

(assert (=> b!1130511 (= lt!379386 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379389 () Unit!16639)

(declare-fun lt!379407 () Unit!16639)

(assert (=> b!1130511 (= lt!379389 lt!379407)))

(declare-fun lt!379401 () List!10979)

(declare-fun lt!379397 () Int)

(declare-fun head!2053 (List!10979) Token!3440)

(declare-fun apply!2267 (List!10979 Int) Token!3440)

(assert (=> b!1130511 (= (head!2053 (drop!417 lt!379401 lt!379397)) (apply!2267 lt!379401 lt!379397))))

(declare-fun lemmaDropApply!334 (List!10979 Int) Unit!16639)

(assert (=> b!1130511 (= lt!379407 (lemmaDropApply!334 lt!379401 lt!379397))))

(assert (=> b!1130511 (= lt!379397 (+ lt!379419 1))))

(assert (=> b!1130511 (= lt!379401 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379426 () Unit!16639)

(declare-fun lt!379436 () Unit!16639)

(assert (=> b!1130511 (= lt!379426 lt!379436)))

(declare-fun lt!379400 () List!10979)

(assert (=> b!1130511 (= (head!2053 (drop!417 lt!379400 lt!379419)) (apply!2267 lt!379400 lt!379419))))

(assert (=> b!1130511 (= lt!379436 (lemmaDropApply!334 lt!379400 lt!379419))))

(assert (=> b!1130511 (= lt!379400 (list!3958 (tokens!1450 pt!21)))))

(declare-fun e!722241 () Bool)

(declare-fun b!1130512 () Bool)

(assert (=> b!1130512 (= e!722241 (rulesProduceEachTokenIndividuallyList!470 lt!379381 (rules!9208 pt!21) (t!106833 lt!379435)))))

(declare-fun b!1130513 () Bool)

(assert (=> b!1130513 (= e!722242 (tokensListTwoByTwoPredicateSeparableList!69 lt!379402 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (rules!9208 pt!21)))))

(declare-fun lt!379378 () Unit!16639)

(declare-fun lt!379393 () Unit!16639)

(assert (=> b!1130513 (= lt!379378 lt!379393)))

(declare-fun lt!379403 () List!10979)

(assert (=> b!1130513 (forall!2640 lt!379403 lambda!45501)))

(assert (=> b!1130513 (= lt!379393 (lemmaForallSubseq!72 lt!379403 lt!379399 lambda!45501))))

(assert (=> b!1130513 (= lt!379403 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun lt!379415 () Unit!16639)

(declare-fun lt!379377 () Unit!16639)

(assert (=> b!1130513 (= lt!379415 lt!379377)))

(assert (=> b!1130513 (subseq!172 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!379399)))

(assert (=> b!1130513 (= lt!379377 (lemmaDropSubseq!13 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun b!1130514 () Bool)

(assert (=> b!1130514 (= e!722236 e!722241)))

(declare-fun res!508107 () Bool)

(assert (=> b!1130514 (=> (not res!508107) (not e!722241))))

(assert (=> b!1130514 (= res!508107 (rulesProduceIndividualToken!642 lt!379381 (rules!9208 pt!21) (h!16356 lt!379435)))))

(declare-fun b!1130515 () Bool)

(assert (=> b!1130515 (= e!722244 (tokensListTwoByTwoPredicateSeparable!24 lt!379395 (tokens!1450 pt!21) (+ lt!379419 1) (rules!9208 pt!21)))))

(declare-fun b!1130516 () Bool)

(assert (=> b!1130516 (= e!722235 e!722232)))

(declare-fun res!508111 () Bool)

(assert (=> b!1130516 (=> (not res!508111) (not e!722232))))

(assert (=> b!1130516 (= res!508111 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 lt!379420)))))

(declare-fun b!1130517 () Bool)

(assert (=> b!1130517 (= e!722234 (<= (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (size!8533 (tokens!1450 pt!21))))))

(declare-fun b!1130518 () Bool)

(declare-fun e!722233 () Bool)

(assert (=> b!1130518 (= e!722233 (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (t!106833 lt!379443)))))

(declare-fun b!1130519 () Bool)

(assert (=> b!1130519 (= e!722240 e!722233)))

(declare-fun res!508099 () Bool)

(assert (=> b!1130519 (=> (not res!508099) (not e!722233))))

(assert (=> b!1130519 (= res!508099 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 lt!379443)))))

(assert (= (and d!318495 res!508112) b!1130517))

(assert (= (and d!318495 (not res!508105)) b!1130508))

(assert (= (and b!1130508 res!508108) b!1130510))

(assert (= (and d!318495 (not res!508100)) b!1130514))

(assert (= (and b!1130514 res!508107) b!1130512))

(assert (= (and d!318495 (not res!508110)) b!1130511))

(assert (= (and b!1130511 res!508101) b!1130515))

(assert (= (and d!318495 (not res!508103)) b!1130516))

(assert (= (and b!1130516 res!508111) b!1130506))

(assert (= (and d!318495 res!508104) b!1130513))

(assert (= (and d!318495 (not res!508102)) b!1130519))

(assert (= (and b!1130519 res!508099) b!1130518))

(assert (= (and d!318495 res!508106) b!1130507))

(assert (= (and d!318495 res!508109) b!1130509))

(assert (=> b!1130517 m!1278981))

(declare-fun m!1279253 () Bool)

(assert (=> b!1130516 m!1279253))

(declare-fun m!1279255 () Bool)

(assert (=> b!1130512 m!1279255))

(declare-fun m!1279257 () Bool)

(assert (=> b!1130506 m!1279257))

(declare-fun m!1279259 () Bool)

(assert (=> b!1130515 m!1279259))

(declare-fun m!1279261 () Bool)

(assert (=> b!1130518 m!1279261))

(declare-fun m!1279263 () Bool)

(assert (=> b!1130514 m!1279263))

(declare-fun m!1279265 () Bool)

(assert (=> b!1130510 m!1279265))

(declare-fun m!1279267 () Bool)

(assert (=> b!1130507 m!1279267))

(assert (=> b!1130507 m!1279267))

(declare-fun m!1279269 () Bool)

(assert (=> b!1130507 m!1279269))

(declare-fun m!1279271 () Bool)

(assert (=> b!1130507 m!1279271))

(declare-fun m!1279273 () Bool)

(assert (=> b!1130507 m!1279273))

(declare-fun m!1279275 () Bool)

(assert (=> b!1130513 m!1279275))

(declare-fun m!1279277 () Bool)

(assert (=> b!1130513 m!1279277))

(declare-fun m!1279279 () Bool)

(assert (=> b!1130513 m!1279279))

(assert (=> b!1130513 m!1279277))

(assert (=> b!1130513 m!1279277))

(declare-fun m!1279281 () Bool)

(assert (=> b!1130513 m!1279281))

(declare-fun m!1279283 () Bool)

(assert (=> b!1130513 m!1279283))

(declare-fun m!1279285 () Bool)

(assert (=> b!1130513 m!1279285))

(assert (=> d!318495 m!1279277))

(declare-fun m!1279287 () Bool)

(assert (=> d!318495 m!1279287))

(declare-fun m!1279289 () Bool)

(assert (=> d!318495 m!1279289))

(declare-fun m!1279291 () Bool)

(assert (=> d!318495 m!1279291))

(declare-fun m!1279293 () Bool)

(assert (=> d!318495 m!1279293))

(declare-fun m!1279295 () Bool)

(assert (=> d!318495 m!1279295))

(declare-fun m!1279297 () Bool)

(assert (=> d!318495 m!1279297))

(declare-fun m!1279299 () Bool)

(assert (=> d!318495 m!1279299))

(assert (=> d!318495 m!1279295))

(declare-fun m!1279301 () Bool)

(assert (=> d!318495 m!1279301))

(assert (=> d!318495 m!1279019))

(assert (=> d!318495 m!1279267))

(declare-fun m!1279303 () Bool)

(assert (=> d!318495 m!1279303))

(declare-fun m!1279305 () Bool)

(assert (=> d!318495 m!1279305))

(declare-fun m!1279307 () Bool)

(assert (=> d!318495 m!1279307))

(declare-fun m!1279309 () Bool)

(assert (=> d!318495 m!1279309))

(declare-fun m!1279311 () Bool)

(assert (=> d!318495 m!1279311))

(assert (=> d!318495 m!1279277))

(declare-fun m!1279313 () Bool)

(assert (=> d!318495 m!1279313))

(assert (=> d!318495 m!1279305))

(declare-fun m!1279315 () Bool)

(assert (=> d!318495 m!1279315))

(declare-fun m!1279317 () Bool)

(assert (=> d!318495 m!1279317))

(assert (=> d!318495 m!1279295))

(declare-fun m!1279319 () Bool)

(assert (=> d!318495 m!1279319))

(assert (=> d!318495 m!1279295))

(declare-fun m!1279321 () Bool)

(assert (=> d!318495 m!1279321))

(assert (=> d!318495 m!1279267))

(declare-fun m!1279323 () Bool)

(assert (=> d!318495 m!1279323))

(assert (=> d!318495 m!1279315))

(declare-fun m!1279325 () Bool)

(assert (=> d!318495 m!1279325))

(declare-fun m!1279327 () Bool)

(assert (=> d!318495 m!1279327))

(declare-fun m!1279329 () Bool)

(assert (=> d!318495 m!1279329))

(assert (=> d!318495 m!1279299))

(declare-fun m!1279331 () Bool)

(assert (=> d!318495 m!1279331))

(assert (=> d!318495 m!1279305))

(declare-fun m!1279333 () Bool)

(assert (=> d!318495 m!1279333))

(assert (=> d!318495 m!1278981))

(declare-fun m!1279335 () Bool)

(assert (=> d!318495 m!1279335))

(assert (=> d!318495 m!1279295))

(declare-fun m!1279337 () Bool)

(assert (=> d!318495 m!1279337))

(assert (=> d!318495 m!1279295))

(assert (=> d!318495 m!1279289))

(declare-fun m!1279339 () Bool)

(assert (=> d!318495 m!1279339))

(declare-fun m!1279341 () Bool)

(assert (=> b!1130509 m!1279341))

(assert (=> b!1130509 m!1279295))

(assert (=> b!1130509 m!1279295))

(assert (=> b!1130509 m!1279289))

(declare-fun m!1279343 () Bool)

(assert (=> b!1130508 m!1279343))

(declare-fun m!1279345 () Bool)

(assert (=> b!1130519 m!1279345))

(declare-fun m!1279347 () Bool)

(assert (=> b!1130511 m!1279347))

(declare-fun m!1279349 () Bool)

(assert (=> b!1130511 m!1279349))

(declare-fun m!1279351 () Bool)

(assert (=> b!1130511 m!1279351))

(declare-fun m!1279353 () Bool)

(assert (=> b!1130511 m!1279353))

(declare-fun m!1279355 () Bool)

(assert (=> b!1130511 m!1279355))

(declare-fun m!1279357 () Bool)

(assert (=> b!1130511 m!1279357))

(declare-fun m!1279359 () Bool)

(assert (=> b!1130511 m!1279359))

(declare-fun m!1279361 () Bool)

(assert (=> b!1130511 m!1279361))

(declare-fun m!1279363 () Bool)

(assert (=> b!1130511 m!1279363))

(declare-fun m!1279365 () Bool)

(assert (=> b!1130511 m!1279365))

(assert (=> b!1130511 m!1279305))

(declare-fun m!1279367 () Bool)

(assert (=> b!1130511 m!1279367))

(assert (=> b!1130511 m!1279357))

(declare-fun m!1279369 () Bool)

(assert (=> b!1130511 m!1279369))

(declare-fun m!1279371 () Bool)

(assert (=> b!1130511 m!1279371))

(declare-fun m!1279373 () Bool)

(assert (=> b!1130511 m!1279373))

(declare-fun m!1279375 () Bool)

(assert (=> b!1130511 m!1279375))

(assert (=> b!1130511 m!1279361))

(declare-fun m!1279377 () Bool)

(assert (=> b!1130511 m!1279377))

(assert (=> b!1130511 m!1279351))

(declare-fun m!1279379 () Bool)

(assert (=> b!1130511 m!1279379))

(declare-fun m!1279381 () Bool)

(assert (=> b!1130511 m!1279381))

(declare-fun m!1279383 () Bool)

(assert (=> b!1130511 m!1279383))

(declare-fun m!1279385 () Bool)

(assert (=> b!1130511 m!1279385))

(assert (=> b!1130511 m!1279383))

(assert (=> b!1130511 m!1279381))

(declare-fun m!1279387 () Bool)

(assert (=> b!1130511 m!1279387))

(declare-fun m!1279389 () Bool)

(assert (=> b!1130511 m!1279389))

(assert (=> b!1130511 m!1279357))

(assert (=> b!1130511 m!1279351))

(declare-fun m!1279391 () Bool)

(assert (=> b!1130511 m!1279391))

(declare-fun m!1279393 () Bool)

(assert (=> b!1130511 m!1279393))

(assert (=> b!1130511 m!1279351))

(assert (=> b!1130511 m!1279379))

(declare-fun m!1279395 () Bool)

(assert (=> b!1130511 m!1279395))

(declare-fun m!1279397 () Bool)

(assert (=> b!1130511 m!1279397))

(declare-fun m!1279399 () Bool)

(assert (=> b!1130511 m!1279399))

(assert (=> b!1130511 m!1279371))

(assert (=> bm!80629 d!318495))

(declare-fun b!1130536 () Bool)

(declare-fun tp!330842 () Bool)

(declare-fun tp!330843 () Bool)

(declare-fun e!722257 () Bool)

(assert (=> b!1130536 (= e!722257 (and (inv!14157 (left!9509 (c!189410 (tokens!1450 pt!21)))) tp!330843 (inv!14157 (right!9839 (c!189410 (tokens!1450 pt!21)))) tp!330842))))

(declare-fun b!1130538 () Bool)

(declare-fun e!722256 () Bool)

(declare-fun tp!330844 () Bool)

(assert (=> b!1130538 (= e!722256 tp!330844)))

(declare-fun b!1130537 () Bool)

(declare-fun inv!14176 (IArray!6987) Bool)

(assert (=> b!1130537 (= e!722257 (and (inv!14176 (xs!6184 (c!189410 (tokens!1450 pt!21)))) e!722256))))

(assert (=> b!1130278 (= tp!330800 (and (inv!14157 (c!189410 (tokens!1450 pt!21))) e!722257))))

(assert (= (and b!1130278 ((_ is Node!3491) (c!189410 (tokens!1450 pt!21)))) b!1130536))

(assert (= b!1130537 b!1130538))

(assert (= (and b!1130278 ((_ is Leaf!5446) (c!189410 (tokens!1450 pt!21)))) b!1130537))

(declare-fun m!1279401 () Bool)

(assert (=> b!1130536 m!1279401))

(declare-fun m!1279403 () Bool)

(assert (=> b!1130536 m!1279403))

(declare-fun m!1279405 () Bool)

(assert (=> b!1130537 m!1279405))

(assert (=> b!1130278 m!1278951))

(declare-fun b!1130545 () Bool)

(declare-fun e!722262 () Bool)

(declare-fun tp!330850 () Bool)

(declare-fun tp!330849 () Bool)

(assert (=> b!1130545 (= e!722262 (and (inv!14159 (left!9510 (c!189411 indices!2))) tp!330849 (inv!14159 (right!9840 (c!189411 indices!2))) tp!330850))))

(declare-fun b!1130546 () Bool)

(declare-fun inv!14177 (IArray!6989) Bool)

(assert (=> b!1130546 (= e!722262 (inv!14177 (xs!6185 (c!189411 indices!2))))))

(assert (=> b!1130283 (= tp!330802 (and (inv!14159 (c!189411 indices!2)) e!722262))))

(assert (= (and b!1130283 ((_ is Node!3492) (c!189411 indices!2))) b!1130545))

(assert (= (and b!1130283 ((_ is Leaf!5447) (c!189411 indices!2))) b!1130546))

(declare-fun m!1279407 () Bool)

(assert (=> b!1130545 m!1279407))

(declare-fun m!1279409 () Bool)

(assert (=> b!1130545 m!1279409))

(declare-fun m!1279411 () Bool)

(assert (=> b!1130546 m!1279411))

(assert (=> b!1130283 m!1278927))

(declare-fun b!1130557 () Bool)

(declare-fun b_free!27321 () Bool)

(declare-fun b_next!28025 () Bool)

(assert (=> b!1130557 (= b_free!27321 (not b_next!28025))))

(declare-fun tp!330858 () Bool)

(declare-fun b_and!79921 () Bool)

(assert (=> b!1130557 (= tp!330858 b_and!79921)))

(declare-fun b_free!27323 () Bool)

(declare-fun b_next!28027 () Bool)

(assert (=> b!1130557 (= b_free!27323 (not b_next!28027))))

(declare-fun tp!330859 () Bool)

(declare-fun b_and!79923 () Bool)

(assert (=> b!1130557 (= tp!330859 b_and!79923)))

(declare-fun e!722272 () Bool)

(assert (=> b!1130557 (= e!722272 (and tp!330858 tp!330859))))

(declare-fun b!1130556 () Bool)

(declare-fun e!722275 () Bool)

(declare-fun inv!14145 (String!13363) Bool)

(declare-fun inv!14178 (TokenValueInjection!3610) Bool)

(assert (=> b!1130556 (= e!722275 (and (inv!14145 (tag!2151 (h!16357 (rules!9208 pt!21)))) (inv!14178 (transformation!1889 (h!16357 (rules!9208 pt!21)))) e!722272))))

(declare-fun b!1130555 () Bool)

(declare-fun e!722273 () Bool)

(declare-fun tp!330857 () Bool)

(assert (=> b!1130555 (= e!722273 (and e!722275 tp!330857))))

(assert (=> b!1130276 (= tp!330801 e!722273)))

(assert (= b!1130556 b!1130557))

(assert (= b!1130555 b!1130556))

(assert (= (and b!1130276 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130555))

(declare-fun m!1279413 () Bool)

(assert (=> b!1130556 m!1279413))

(declare-fun m!1279415 () Bool)

(assert (=> b!1130556 m!1279415))

(declare-fun e!722281 () Bool)

(declare-fun tp!330867 () Bool)

(declare-fun tp!330868 () Bool)

(declare-fun b!1130566 () Bool)

(assert (=> b!1130566 (= e!722281 (and (inv!14158 (left!9511 (c!189412 acc!225))) tp!330867 (inv!14158 (right!9841 (c!189412 acc!225))) tp!330868))))

(declare-fun b!1130568 () Bool)

(declare-fun e!722280 () Bool)

(declare-fun tp!330866 () Bool)

(assert (=> b!1130568 (= e!722280 tp!330866)))

(declare-fun b!1130567 () Bool)

(declare-fun inv!14179 (IArray!6991) Bool)

(assert (=> b!1130567 (= e!722281 (and (inv!14179 (xs!6186 (c!189412 acc!225))) e!722280))))

(assert (=> b!1130280 (= tp!330799 (and (inv!14158 (c!189412 acc!225)) e!722281))))

(assert (= (and b!1130280 ((_ is Node!3493) (c!189412 acc!225))) b!1130566))

(assert (= b!1130567 b!1130568))

(assert (= (and b!1130280 ((_ is Leaf!5448) (c!189412 acc!225))) b!1130567))

(declare-fun m!1279417 () Bool)

(assert (=> b!1130566 m!1279417))

(declare-fun m!1279419 () Bool)

(assert (=> b!1130566 m!1279419))

(declare-fun m!1279421 () Bool)

(assert (=> b!1130567 m!1279421))

(assert (=> b!1130280 m!1278949))

(declare-fun b_lambda!33231 () Bool)

(assert (= b_lambda!33225 (or b!1130285 b_lambda!33231)))

(declare-fun bs!277602 () Bool)

(declare-fun d!318513 () Bool)

(assert (= bs!277602 (and d!318513 b!1130285)))

(assert (=> bs!277602 (= (dynLambda!4818 lambda!45475 (h!16359 (Cons!10958 lt!378985 Nil!10958))) (usesJsonRules!0 (h!16359 (Cons!10958 lt!378985 Nil!10958))))))

(declare-fun m!1279423 () Bool)

(assert (=> bs!277602 m!1279423))

(assert (=> b!1130372 d!318513))

(declare-fun b_lambda!33233 () Bool)

(assert (= b_lambda!33221 (or b!1130285 b_lambda!33233)))

(declare-fun bs!277603 () Bool)

(declare-fun d!318515 () Bool)

(assert (= bs!277603 (and d!318515 b!1130285)))

(assert (=> bs!277603 (= (dynLambda!4818 lambda!45475 (h!16359 (list!3952 acc!225))) (usesJsonRules!0 (h!16359 (list!3952 acc!225))))))

(declare-fun m!1279425 () Bool)

(assert (=> bs!277603 m!1279425))

(assert (=> b!1130310 d!318515))

(check-sat (not b!1130348) (not d!318475) (not b!1130352) (not d!318493) (not b!1130349) (not b!1130511) (not b!1130311) (not d!318487) (not b!1130518) (not d!318469) (not b!1130526) (not b_lambda!33233) (not b!1130527) (not b!1130538) (not b!1130508) b_and!79923 (not b!1130545) (not b!1130537) (not b!1130516) (not b!1130566) (not bs!277603) (not b!1130369) (not b!1130546) (not b!1130519) (not b!1130512) (not b_next!28025) (not b!1130517) (not bs!277602) (not b!1130514) (not b!1130556) (not b!1130320) (not d!318495) (not b!1130507) (not b!1130567) (not b!1130371) (not d!318445) (not d!318473) (not b!1130283) (not d!318477) (not d!318471) (not b!1130353) (not b!1130347) (not d!318481) (not d!318491) (not b_lambda!33231) (not b!1130509) (not d!318485) (not b!1130278) (not b!1130510) (not b!1130513) (not b!1130280) (not b_next!28027) (not d!318449) (not b!1130362) (not b!1130568) (not b!1130506) (not b!1130360) (not d!318451) b_and!79921 (not b!1130555) (not b!1130515) (not b!1130536) (not b!1130373) (not b!1130318))
(check-sat b_and!79923 b_and!79921 (not b_next!28025) (not b_next!28027))
(get-model)

(declare-fun d!318521 () Bool)

(declare-fun c!189437 () Bool)

(assert (=> d!318521 (= c!189437 ((_ is Node!3493) (left!9511 (c!189412 acc!225))))))

(declare-fun e!722288 () Bool)

(assert (=> d!318521 (= (inv!14158 (left!9511 (c!189412 acc!225))) e!722288)))

(declare-fun b!1130581 () Bool)

(assert (=> b!1130581 (= e!722288 (inv!14172 (left!9511 (c!189412 acc!225))))))

(declare-fun b!1130582 () Bool)

(declare-fun e!722289 () Bool)

(assert (=> b!1130582 (= e!722288 e!722289)))

(declare-fun res!508117 () Bool)

(assert (=> b!1130582 (= res!508117 (not ((_ is Leaf!5448) (left!9511 (c!189412 acc!225)))))))

(assert (=> b!1130582 (=> res!508117 e!722289)))

(declare-fun b!1130583 () Bool)

(assert (=> b!1130583 (= e!722289 (inv!14173 (left!9511 (c!189412 acc!225))))))

(assert (= (and d!318521 c!189437) b!1130581))

(assert (= (and d!318521 (not c!189437)) b!1130582))

(assert (= (and b!1130582 (not res!508117)) b!1130583))

(declare-fun m!1279435 () Bool)

(assert (=> b!1130581 m!1279435))

(declare-fun m!1279437 () Bool)

(assert (=> b!1130583 m!1279437))

(assert (=> b!1130566 d!318521))

(declare-fun d!318523 () Bool)

(declare-fun c!189438 () Bool)

(assert (=> d!318523 (= c!189438 ((_ is Node!3493) (right!9841 (c!189412 acc!225))))))

(declare-fun e!722290 () Bool)

(assert (=> d!318523 (= (inv!14158 (right!9841 (c!189412 acc!225))) e!722290)))

(declare-fun b!1130584 () Bool)

(assert (=> b!1130584 (= e!722290 (inv!14172 (right!9841 (c!189412 acc!225))))))

(declare-fun b!1130585 () Bool)

(declare-fun e!722291 () Bool)

(assert (=> b!1130585 (= e!722290 e!722291)))

(declare-fun res!508118 () Bool)

(assert (=> b!1130585 (= res!508118 (not ((_ is Leaf!5448) (right!9841 (c!189412 acc!225)))))))

(assert (=> b!1130585 (=> res!508118 e!722291)))

(declare-fun b!1130586 () Bool)

(assert (=> b!1130586 (= e!722291 (inv!14173 (right!9841 (c!189412 acc!225))))))

(assert (= (and d!318523 c!189438) b!1130584))

(assert (= (and d!318523 (not c!189438)) b!1130585))

(assert (= (and b!1130585 (not res!508118)) b!1130586))

(declare-fun m!1279439 () Bool)

(assert (=> b!1130584 m!1279439))

(declare-fun m!1279441 () Bool)

(assert (=> b!1130586 m!1279441))

(assert (=> b!1130566 d!318523))

(declare-fun b!1130600 () Bool)

(declare-fun res!508133 () Bool)

(declare-fun e!722297 () Bool)

(assert (=> b!1130600 (=> (not res!508133) (not e!722297))))

(assert (=> b!1130600 (= res!508133 (isBalanced!966 (left!9511 (c!189412 acc!225))))))

(declare-fun b!1130601 () Bool)

(declare-fun res!508134 () Bool)

(assert (=> b!1130601 (=> (not res!508134) (not e!722297))))

(declare-fun height!449 (Conc!3493) Int)

(assert (=> b!1130601 (= res!508134 (<= (- (height!449 (left!9511 (c!189412 acc!225))) (height!449 (right!9841 (c!189412 acc!225)))) 1))))

(declare-fun b!1130602 () Bool)

(declare-fun res!508136 () Bool)

(assert (=> b!1130602 (=> (not res!508136) (not e!722297))))

(assert (=> b!1130602 (= res!508136 (isBalanced!966 (right!9841 (c!189412 acc!225))))))

(declare-fun b!1130599 () Bool)

(declare-fun isEmpty!6787 (Conc!3493) Bool)

(assert (=> b!1130599 (= e!722297 (not (isEmpty!6787 (right!9841 (c!189412 acc!225)))))))

(declare-fun d!318525 () Bool)

(declare-fun res!508131 () Bool)

(declare-fun e!722296 () Bool)

(assert (=> d!318525 (=> res!508131 e!722296)))

(assert (=> d!318525 (= res!508131 (not ((_ is Node!3493) (c!189412 acc!225))))))

(assert (=> d!318525 (= (isBalanced!966 (c!189412 acc!225)) e!722296)))

(declare-fun b!1130603 () Bool)

(declare-fun res!508135 () Bool)

(assert (=> b!1130603 (=> (not res!508135) (not e!722297))))

(assert (=> b!1130603 (= res!508135 (not (isEmpty!6787 (left!9511 (c!189412 acc!225)))))))

(declare-fun b!1130604 () Bool)

(assert (=> b!1130604 (= e!722296 e!722297)))

(declare-fun res!508132 () Bool)

(assert (=> b!1130604 (=> (not res!508132) (not e!722297))))

(assert (=> b!1130604 (= res!508132 (<= (- 1) (- (height!449 (left!9511 (c!189412 acc!225))) (height!449 (right!9841 (c!189412 acc!225))))))))

(assert (= (and d!318525 (not res!508131)) b!1130604))

(assert (= (and b!1130604 res!508132) b!1130601))

(assert (= (and b!1130601 res!508134) b!1130600))

(assert (= (and b!1130600 res!508133) b!1130602))

(assert (= (and b!1130602 res!508136) b!1130603))

(assert (= (and b!1130603 res!508135) b!1130599))

(declare-fun m!1279443 () Bool)

(assert (=> b!1130599 m!1279443))

(declare-fun m!1279445 () Bool)

(assert (=> b!1130602 m!1279445))

(declare-fun m!1279447 () Bool)

(assert (=> b!1130601 m!1279447))

(declare-fun m!1279449 () Bool)

(assert (=> b!1130601 m!1279449))

(declare-fun m!1279451 () Bool)

(assert (=> b!1130603 m!1279451))

(declare-fun m!1279453 () Bool)

(assert (=> b!1130600 m!1279453))

(assert (=> b!1130604 m!1279447))

(assert (=> b!1130604 m!1279449))

(assert (=> d!318471 d!318525))

(declare-fun d!318527 () Bool)

(declare-fun lt!379447 () Int)

(assert (=> d!318527 (>= lt!379447 0)))

(declare-fun e!722300 () Int)

(assert (=> d!318527 (= lt!379447 e!722300)))

(declare-fun c!189441 () Bool)

(assert (=> d!318527 (= c!189441 ((_ is Nil!10957) (list!3957 indices!2)))))

(assert (=> d!318527 (= (size!8534 (list!3957 indices!2)) lt!379447)))

(declare-fun b!1130609 () Bool)

(assert (=> b!1130609 (= e!722300 0)))

(declare-fun b!1130610 () Bool)

(assert (=> b!1130610 (= e!722300 (+ 1 (size!8534 (t!106835 (list!3957 indices!2)))))))

(assert (= (and d!318527 c!189441) b!1130609))

(assert (= (and d!318527 (not c!189441)) b!1130610))

(declare-fun m!1279455 () Bool)

(assert (=> b!1130610 m!1279455))

(assert (=> d!318485 d!318527))

(declare-fun d!318529 () Bool)

(declare-fun list!3961 (Conc!3492) List!10981)

(assert (=> d!318529 (= (list!3957 indices!2) (list!3961 (c!189411 indices!2)))))

(declare-fun bs!277604 () Bool)

(assert (= bs!277604 d!318529))

(declare-fun m!1279457 () Bool)

(assert (=> bs!277604 m!1279457))

(assert (=> d!318485 d!318529))

(declare-fun d!318531 () Bool)

(declare-fun lt!379450 () Int)

(assert (=> d!318531 (= lt!379450 (size!8534 (list!3961 (c!189411 indices!2))))))

(assert (=> d!318531 (= lt!379450 (ite ((_ is Empty!3492) (c!189411 indices!2)) 0 (ite ((_ is Leaf!5447) (c!189411 indices!2)) (csize!7215 (c!189411 indices!2)) (csize!7214 (c!189411 indices!2)))))))

(assert (=> d!318531 (= (size!8535 (c!189411 indices!2)) lt!379450)))

(declare-fun bs!277605 () Bool)

(assert (= bs!277605 d!318531))

(assert (=> bs!277605 m!1279457))

(assert (=> bs!277605 m!1279457))

(declare-fun m!1279459 () Bool)

(assert (=> bs!277605 m!1279459))

(assert (=> d!318485 d!318531))

(assert (=> b!1130283 d!318447))

(declare-fun d!318533 () Bool)

(declare-fun lt!379459 () Bool)

(declare-fun e!722323 () Bool)

(assert (=> d!318533 (= lt!379459 e!722323)))

(declare-fun res!508166 () Bool)

(assert (=> d!318533 (=> (not res!508166) (not e!722323))))

(declare-datatypes ((tuple2!11916 0))(
  ( (tuple2!11917 (_1!6805 BalanceConc!7004) (_2!6805 BalanceConc!7002)) )
))
(declare-fun lex!657 (LexerInterface!1595 List!10980 BalanceConc!7002) tuple2!11916)

(declare-fun print!594 (LexerInterface!1595 BalanceConc!7004) BalanceConc!7002)

(declare-fun singletonSeq!600 (Token!3440) BalanceConc!7004)

(assert (=> d!318533 (= res!508166 (= (list!3958 (_1!6805 (lex!657 lt!379402 (rules!9208 pt!21) (print!594 lt!379402 (singletonSeq!600 (h!16356 lt!379420)))))) (list!3958 (singletonSeq!600 (h!16356 lt!379420)))))))

(declare-fun e!722324 () Bool)

(assert (=> d!318533 (= lt!379459 e!722324)))

(declare-fun res!508164 () Bool)

(assert (=> d!318533 (=> (not res!508164) (not e!722324))))

(declare-fun lt!379458 () tuple2!11916)

(assert (=> d!318533 (= res!508164 (= (size!8533 (_1!6805 lt!379458)) 1))))

(assert (=> d!318533 (= lt!379458 (lex!657 lt!379402 (rules!9208 pt!21) (print!594 lt!379402 (singletonSeq!600 (h!16356 lt!379420)))))))

(assert (=> d!318533 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318533 (= (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 lt!379420)) lt!379459)))

(declare-fun b!1130651 () Bool)

(declare-fun res!508165 () Bool)

(assert (=> b!1130651 (=> (not res!508165) (not e!722324))))

(assert (=> b!1130651 (= res!508165 (= (apply!2266 (_1!6805 lt!379458) 0) (h!16356 lt!379420)))))

(declare-fun b!1130652 () Bool)

(declare-fun isEmpty!6788 (BalanceConc!7002) Bool)

(assert (=> b!1130652 (= e!722324 (isEmpty!6788 (_2!6805 lt!379458)))))

(declare-fun b!1130653 () Bool)

(assert (=> b!1130653 (= e!722323 (isEmpty!6788 (_2!6805 (lex!657 lt!379402 (rules!9208 pt!21) (print!594 lt!379402 (singletonSeq!600 (h!16356 lt!379420)))))))))

(assert (= (and d!318533 res!508164) b!1130651))

(assert (= (and b!1130651 res!508165) b!1130652))

(assert (= (and d!318533 res!508166) b!1130653))

(declare-fun m!1279477 () Bool)

(assert (=> d!318533 m!1279477))

(declare-fun m!1279479 () Bool)

(assert (=> d!318533 m!1279479))

(assert (=> d!318533 m!1279477))

(declare-fun m!1279481 () Bool)

(assert (=> d!318533 m!1279481))

(assert (=> d!318533 m!1279015))

(assert (=> d!318533 m!1279479))

(declare-fun m!1279483 () Bool)

(assert (=> d!318533 m!1279483))

(declare-fun m!1279485 () Bool)

(assert (=> d!318533 m!1279485))

(assert (=> d!318533 m!1279477))

(declare-fun m!1279487 () Bool)

(assert (=> d!318533 m!1279487))

(declare-fun m!1279489 () Bool)

(assert (=> b!1130651 m!1279489))

(declare-fun m!1279491 () Bool)

(assert (=> b!1130652 m!1279491))

(assert (=> b!1130653 m!1279477))

(assert (=> b!1130653 m!1279477))

(assert (=> b!1130653 m!1279479))

(assert (=> b!1130653 m!1279479))

(assert (=> b!1130653 m!1279483))

(declare-fun m!1279493 () Bool)

(assert (=> b!1130653 m!1279493))

(assert (=> b!1130516 d!318533))

(declare-fun d!318541 () Bool)

(assert (=> d!318541 (= (isEmpty!6785 (rules!9208 pt!21)) ((_ is Nil!10956) (rules!9208 pt!21)))))

(assert (=> d!318451 d!318541))

(declare-fun bs!277607 () Bool)

(declare-fun d!318543 () Bool)

(assert (= bs!277607 (and d!318543 d!318495)))

(declare-fun lambda!45509 () Int)

(assert (=> bs!277607 (= (= lt!379381 Lexer!1593) (= lambda!45509 lambda!45501))))

(declare-fun b!1130670 () Bool)

(declare-fun e!722339 () Bool)

(assert (=> b!1130670 (= e!722339 true)))

(declare-fun b!1130669 () Bool)

(declare-fun e!722338 () Bool)

(assert (=> b!1130669 (= e!722338 e!722339)))

(declare-fun b!1130668 () Bool)

(declare-fun e!722337 () Bool)

(assert (=> b!1130668 (= e!722337 e!722338)))

(assert (=> d!318543 e!722337))

(assert (= b!1130669 b!1130670))

(assert (= b!1130668 b!1130669))

(assert (= (and d!318543 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130668))

(declare-fun order!6695 () Int)

(declare-fun order!6693 () Int)

(declare-fun dynLambda!4822 (Int Int) Int)

(declare-fun dynLambda!4823 (Int Int) Int)

(assert (=> b!1130670 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45509))))

(declare-fun order!6697 () Int)

(declare-fun dynLambda!4824 (Int Int) Int)

(assert (=> b!1130670 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45509))))

(assert (=> d!318543 true))

(declare-fun lt!379462 () Bool)

(assert (=> d!318543 (= lt!379462 (forall!2640 (t!106833 lt!379435) lambda!45509))))

(declare-fun e!722330 () Bool)

(assert (=> d!318543 (= lt!379462 e!722330)))

(declare-fun res!508172 () Bool)

(assert (=> d!318543 (=> res!508172 e!722330)))

(assert (=> d!318543 (= res!508172 (not ((_ is Cons!10955) (t!106833 lt!379435))))))

(assert (=> d!318543 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318543 (= (rulesProduceEachTokenIndividuallyList!470 lt!379381 (rules!9208 pt!21) (t!106833 lt!379435)) lt!379462)))

(declare-fun b!1130658 () Bool)

(declare-fun e!722329 () Bool)

(assert (=> b!1130658 (= e!722330 e!722329)))

(declare-fun res!508171 () Bool)

(assert (=> b!1130658 (=> (not res!508171) (not e!722329))))

(assert (=> b!1130658 (= res!508171 (rulesProduceIndividualToken!642 lt!379381 (rules!9208 pt!21) (h!16356 (t!106833 lt!379435))))))

(declare-fun b!1130659 () Bool)

(assert (=> b!1130659 (= e!722329 (rulesProduceEachTokenIndividuallyList!470 lt!379381 (rules!9208 pt!21) (t!106833 (t!106833 lt!379435))))))

(assert (= (and d!318543 (not res!508172)) b!1130658))

(assert (= (and b!1130658 res!508171) b!1130659))

(declare-fun m!1279495 () Bool)

(assert (=> d!318543 m!1279495))

(assert (=> d!318543 m!1279015))

(declare-fun m!1279497 () Bool)

(assert (=> b!1130658 m!1279497))

(declare-fun m!1279499 () Bool)

(assert (=> b!1130659 m!1279499))

(assert (=> b!1130512 d!318543))

(declare-fun d!318545 () Bool)

(assert (=> d!318545 (= (separableTokens!64 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (rules!9208 pt!21)) (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0 (rules!9208 pt!21)))))

(declare-fun bs!277610 () Bool)

(assert (= bs!277610 d!318545))

(assert (=> bs!277610 m!1279295))

(assert (=> bs!277610 m!1279297))

(assert (=> d!318495 d!318545))

(declare-fun d!318561 () Bool)

(assert (=> d!318561 (forall!2640 lt!379417 lambda!45501)))

(declare-fun lt!379585 () Unit!16639)

(declare-fun choose!7230 (List!10979 List!10979 Int) Unit!16639)

(assert (=> d!318561 (= lt!379585 (choose!7230 lt!379417 lt!379411 lambda!45501))))

(assert (=> d!318561 (forall!2640 lt!379411 lambda!45501)))

(assert (=> d!318561 (= (lemmaForallSubseq!72 lt!379417 lt!379411 lambda!45501) lt!379585)))

(declare-fun bs!277611 () Bool)

(assert (= bs!277611 d!318561))

(assert (=> bs!277611 m!1279327))

(declare-fun m!1279617 () Bool)

(assert (=> bs!277611 m!1279617))

(declare-fun m!1279619 () Bool)

(assert (=> bs!277611 m!1279619))

(assert (=> d!318495 d!318561))

(declare-fun d!318563 () Bool)

(declare-fun list!3962 (Conc!3491) List!10979)

(assert (=> d!318563 (= (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) (list!3962 (c!189410 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))))

(declare-fun bs!277612 () Bool)

(assert (= bs!277612 d!318563))

(declare-fun m!1279621 () Bool)

(assert (=> bs!277612 m!1279621))

(assert (=> d!318495 d!318563))

(declare-fun bs!277613 () Bool)

(declare-fun d!318565 () Bool)

(assert (= bs!277613 (and d!318565 d!318495)))

(declare-fun lambda!45510 () Int)

(assert (=> bs!277613 (= (= lt!379402 Lexer!1593) (= lambda!45510 lambda!45501))))

(declare-fun bs!277614 () Bool)

(assert (= bs!277614 (and d!318565 d!318543)))

(assert (=> bs!277614 (= (= lt!379402 lt!379381) (= lambda!45510 lambda!45509))))

(declare-fun b!1130746 () Bool)

(declare-fun e!722389 () Bool)

(assert (=> b!1130746 (= e!722389 true)))

(declare-fun b!1130745 () Bool)

(declare-fun e!722388 () Bool)

(assert (=> b!1130745 (= e!722388 e!722389)))

(declare-fun b!1130744 () Bool)

(declare-fun e!722387 () Bool)

(assert (=> b!1130744 (= e!722387 e!722388)))

(assert (=> d!318565 e!722387))

(assert (= b!1130745 b!1130746))

(assert (= b!1130744 b!1130745))

(assert (= (and d!318565 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130744))

(assert (=> b!1130746 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45510))))

(assert (=> b!1130746 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45510))))

(assert (=> d!318565 true))

(declare-fun lt!379586 () Bool)

(assert (=> d!318565 (= lt!379586 (forall!2640 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lambda!45510))))

(declare-fun e!722386 () Bool)

(assert (=> d!318565 (= lt!379586 e!722386)))

(declare-fun res!508213 () Bool)

(assert (=> d!318565 (=> res!508213 e!722386)))

(assert (=> d!318565 (= res!508213 (not ((_ is Cons!10955) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(assert (=> d!318565 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318565 (= (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) lt!379586)))

(declare-fun b!1130742 () Bool)

(declare-fun e!722385 () Bool)

(assert (=> b!1130742 (= e!722386 e!722385)))

(declare-fun res!508212 () Bool)

(assert (=> b!1130742 (=> (not res!508212) (not e!722385))))

(assert (=> b!1130742 (= res!508212 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(declare-fun b!1130743 () Bool)

(assert (=> b!1130743 (= e!722385 (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(assert (= (and d!318565 (not res!508213)) b!1130742))

(assert (= (and b!1130742 res!508212) b!1130743))

(assert (=> d!318565 m!1279277))

(declare-fun m!1279623 () Bool)

(assert (=> d!318565 m!1279623))

(assert (=> d!318565 m!1279015))

(declare-fun m!1279625 () Bool)

(assert (=> b!1130742 m!1279625))

(declare-fun m!1279627 () Bool)

(assert (=> b!1130743 m!1279627))

(assert (=> d!318495 d!318565))

(declare-fun b!1130765 () Bool)

(declare-fun e!722400 () Int)

(assert (=> b!1130765 (= e!722400 0)))

(declare-fun b!1130766 () Bool)

(declare-fun e!722402 () Bool)

(declare-fun lt!379589 () List!10979)

(declare-fun e!722403 () Int)

(declare-fun size!8539 (List!10979) Int)

(assert (=> b!1130766 (= e!722402 (= (size!8539 lt!379589) e!722403))))

(declare-fun c!189466 () Bool)

(assert (=> b!1130766 (= c!189466 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1130767 () Bool)

(declare-fun e!722401 () List!10979)

(assert (=> b!1130767 (= e!722401 lt!379399)))

(declare-fun bm!80635 () Bool)

(declare-fun call!80640 () Int)

(assert (=> bm!80635 (= call!80640 (size!8539 lt!379399))))

(declare-fun b!1130768 () Bool)

(declare-fun e!722404 () List!10979)

(assert (=> b!1130768 (= e!722404 Nil!10955)))

(declare-fun b!1130769 () Bool)

(assert (=> b!1130769 (= e!722400 (- call!80640 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun d!318567 () Bool)

(assert (=> d!318567 e!722402))

(declare-fun res!508216 () Bool)

(assert (=> d!318567 (=> (not res!508216) (not e!722402))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1572 (List!10979) (InoxSet Token!3440))

(assert (=> d!318567 (= res!508216 (= ((_ map implies) (content!1572 lt!379589) (content!1572 lt!379399)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318567 (= lt!379589 e!722404)))

(declare-fun c!189465 () Bool)

(assert (=> d!318567 (= c!189465 ((_ is Nil!10955) lt!379399))))

(assert (=> d!318567 (= (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!379589)))

(declare-fun b!1130770 () Bool)

(assert (=> b!1130770 (= e!722401 (drop!417 (t!106833 lt!379399) (- (ite c!189407 lt!378986 lt!378984) 1)))))

(declare-fun b!1130771 () Bool)

(assert (=> b!1130771 (= e!722403 e!722400)))

(declare-fun c!189467 () Bool)

(assert (=> b!1130771 (= c!189467 (>= (ite c!189407 lt!378986 lt!378984) call!80640))))

(declare-fun b!1130772 () Bool)

(assert (=> b!1130772 (= e!722404 e!722401)))

(declare-fun c!189468 () Bool)

(assert (=> b!1130772 (= c!189468 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1130773 () Bool)

(assert (=> b!1130773 (= e!722403 call!80640)))

(assert (= (and d!318567 c!189465) b!1130768))

(assert (= (and d!318567 (not c!189465)) b!1130772))

(assert (= (and b!1130772 c!189468) b!1130767))

(assert (= (and b!1130772 (not c!189468)) b!1130770))

(assert (= (and d!318567 res!508216) b!1130766))

(assert (= (and b!1130766 c!189466) b!1130773))

(assert (= (and b!1130766 (not c!189466)) b!1130771))

(assert (= (and b!1130771 c!189467) b!1130765))

(assert (= (and b!1130771 (not c!189467)) b!1130769))

(assert (= (or b!1130773 b!1130771 b!1130769) bm!80635))

(declare-fun m!1279629 () Bool)

(assert (=> b!1130766 m!1279629))

(declare-fun m!1279631 () Bool)

(assert (=> bm!80635 m!1279631))

(declare-fun m!1279633 () Bool)

(assert (=> d!318567 m!1279633))

(declare-fun m!1279635 () Bool)

(assert (=> d!318567 m!1279635))

(declare-fun m!1279637 () Bool)

(assert (=> b!1130770 m!1279637))

(assert (=> d!318495 d!318567))

(declare-fun bs!277615 () Bool)

(declare-fun d!318569 () Bool)

(assert (= bs!277615 (and d!318569 d!318495)))

(declare-fun lambda!45511 () Int)

(assert (=> bs!277615 (= lambda!45511 lambda!45501)))

(declare-fun bs!277616 () Bool)

(assert (= bs!277616 (and d!318569 d!318543)))

(assert (=> bs!277616 (= (= Lexer!1593 lt!379381) (= lambda!45511 lambda!45509))))

(declare-fun bs!277617 () Bool)

(assert (= bs!277617 (and d!318569 d!318565)))

(assert (=> bs!277617 (= (= Lexer!1593 lt!379402) (= lambda!45511 lambda!45510))))

(declare-fun b!1130778 () Bool)

(declare-fun e!722409 () Bool)

(assert (=> b!1130778 (= e!722409 true)))

(declare-fun b!1130777 () Bool)

(declare-fun e!722408 () Bool)

(assert (=> b!1130777 (= e!722408 e!722409)))

(declare-fun b!1130776 () Bool)

(declare-fun e!722407 () Bool)

(assert (=> b!1130776 (= e!722407 e!722408)))

(assert (=> d!318569 e!722407))

(assert (= b!1130777 b!1130778))

(assert (= b!1130776 b!1130777))

(assert (= (and d!318569 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130776))

(assert (=> b!1130778 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45511))))

(assert (=> b!1130778 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45511))))

(assert (=> d!318569 true))

(declare-fun lt!379590 () Bool)

(assert (=> d!318569 (= lt!379590 (forall!2640 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) lambda!45511))))

(declare-fun e!722406 () Bool)

(assert (=> d!318569 (= lt!379590 e!722406)))

(declare-fun res!508218 () Bool)

(assert (=> d!318569 (=> res!508218 e!722406)))

(assert (=> d!318569 (= res!508218 (not ((_ is Cons!10955) (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))))

(assert (=> d!318569 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318569 (= (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))) lt!379590)))

(declare-fun b!1130774 () Bool)

(declare-fun e!722405 () Bool)

(assert (=> b!1130774 (= e!722406 e!722405)))

(declare-fun res!508217 () Bool)

(assert (=> b!1130774 (=> (not res!508217) (not e!722405))))

(assert (=> b!1130774 (= res!508217 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))))

(declare-fun b!1130775 () Bool)

(assert (=> b!1130775 (= e!722405 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (t!106833 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))))

(assert (= (and d!318569 (not res!508218)) b!1130774))

(assert (= (and b!1130774 res!508217) b!1130775))

(assert (=> d!318569 m!1279289))

(declare-fun m!1279639 () Bool)

(assert (=> d!318569 m!1279639))

(assert (=> d!318569 m!1279015))

(declare-fun m!1279641 () Bool)

(assert (=> b!1130774 m!1279641))

(declare-fun m!1279643 () Bool)

(assert (=> b!1130775 m!1279643))

(assert (=> d!318495 d!318569))

(declare-fun bs!277618 () Bool)

(declare-fun d!318571 () Bool)

(assert (= bs!277618 (and d!318571 d!318495)))

(declare-fun lambda!45512 () Int)

(assert (=> bs!277618 (= (= lt!379404 Lexer!1593) (= lambda!45512 lambda!45501))))

(declare-fun bs!277619 () Bool)

(assert (= bs!277619 (and d!318571 d!318543)))

(assert (=> bs!277619 (= (= lt!379404 lt!379381) (= lambda!45512 lambda!45509))))

(declare-fun bs!277620 () Bool)

(assert (= bs!277620 (and d!318571 d!318565)))

(assert (=> bs!277620 (= (= lt!379404 lt!379402) (= lambda!45512 lambda!45510))))

(declare-fun bs!277621 () Bool)

(assert (= bs!277621 (and d!318571 d!318569)))

(assert (=> bs!277621 (= (= lt!379404 Lexer!1593) (= lambda!45512 lambda!45511))))

(declare-fun b!1130783 () Bool)

(declare-fun e!722414 () Bool)

(assert (=> b!1130783 (= e!722414 true)))

(declare-fun b!1130782 () Bool)

(declare-fun e!722413 () Bool)

(assert (=> b!1130782 (= e!722413 e!722414)))

(declare-fun b!1130781 () Bool)

(declare-fun e!722412 () Bool)

(assert (=> b!1130781 (= e!722412 e!722413)))

(assert (=> d!318571 e!722412))

(assert (= b!1130782 b!1130783))

(assert (= b!1130781 b!1130782))

(assert (= (and d!318571 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130781))

(assert (=> b!1130783 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45512))))

(assert (=> b!1130783 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45512))))

(assert (=> d!318571 true))

(declare-fun lt!379591 () Bool)

(assert (=> d!318571 (= lt!379591 (forall!2640 (take!15 lt!379437 lt!379384) lambda!45512))))

(declare-fun e!722411 () Bool)

(assert (=> d!318571 (= lt!379591 e!722411)))

(declare-fun res!508220 () Bool)

(assert (=> d!318571 (=> res!508220 e!722411)))

(assert (=> d!318571 (= res!508220 (not ((_ is Cons!10955) (take!15 lt!379437 lt!379384))))))

(assert (=> d!318571 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318571 (= (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (take!15 lt!379437 lt!379384)) lt!379591)))

(declare-fun b!1130779 () Bool)

(declare-fun e!722410 () Bool)

(assert (=> b!1130779 (= e!722411 e!722410)))

(declare-fun res!508219 () Bool)

(assert (=> b!1130779 (=> (not res!508219) (not e!722410))))

(assert (=> b!1130779 (= res!508219 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (take!15 lt!379437 lt!379384))))))

(declare-fun b!1130780 () Bool)

(assert (=> b!1130780 (= e!722410 (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (t!106833 (take!15 lt!379437 lt!379384))))))

(assert (= (and d!318571 (not res!508220)) b!1130779))

(assert (= (and b!1130779 res!508219) b!1130780))

(assert (=> d!318571 m!1279267))

(declare-fun m!1279645 () Bool)

(assert (=> d!318571 m!1279645))

(assert (=> d!318571 m!1279015))

(declare-fun m!1279647 () Bool)

(assert (=> b!1130779 m!1279647))

(declare-fun m!1279649 () Bool)

(assert (=> b!1130780 m!1279649))

(assert (=> d!318495 d!318571))

(declare-fun d!318573 () Bool)

(declare-fun lt!379594 () Int)

(assert (=> d!318573 (= lt!379594 (size!8539 (list!3958 (tokens!1450 pt!21))))))

(declare-fun size!8540 (Conc!3491) Int)

(assert (=> d!318573 (= lt!379594 (size!8540 (c!189410 (tokens!1450 pt!21))))))

(assert (=> d!318573 (= (size!8533 (tokens!1450 pt!21)) lt!379594)))

(declare-fun bs!277622 () Bool)

(assert (= bs!277622 d!318573))

(assert (=> bs!277622 m!1279305))

(assert (=> bs!277622 m!1279305))

(declare-fun m!1279651 () Bool)

(assert (=> bs!277622 m!1279651))

(declare-fun m!1279653 () Bool)

(assert (=> bs!277622 m!1279653))

(assert (=> d!318495 d!318573))

(declare-fun b!1130907 () Bool)

(declare-fun e!722490 () Bool)

(declare-fun lt!379707 () List!10979)

(assert (=> b!1130907 (= e!722490 (<= 0 (size!8539 lt!379707)))))

(declare-fun e!722493 () Bool)

(declare-fun b!1130908 () Bool)

(assert (=> b!1130908 (= e!722493 (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (+ 0 1) (rules!9208 pt!21)))))

(declare-fun b!1130909 () Bool)

(declare-fun res!508270 () Bool)

(declare-fun e!722489 () Bool)

(assert (=> b!1130909 (=> (not res!508270) (not e!722489))))

(assert (=> b!1130909 (= res!508270 (not (isEmpty!6785 (rules!9208 pt!21))))))

(declare-fun b!1130910 () Bool)

(declare-fun res!508267 () Bool)

(assert (=> b!1130910 (=> (not res!508267) (not e!722489))))

(declare-fun lt!379693 () List!10979)

(declare-fun lt!379706 () List!10979)

(assert (=> b!1130910 (= res!508267 (subseq!172 lt!379693 lt!379706))))

(declare-fun b!1130911 () Bool)

(declare-fun e!722492 () Bool)

(assert (=> b!1130911 (= e!722492 e!722493)))

(declare-fun res!508274 () Bool)

(assert (=> b!1130911 (=> (not res!508274) (not e!722493))))

(assert (=> b!1130911 (= res!508274 (separableTokensPredicate!93 Lexer!1593 (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0) (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (+ 0 1)) (rules!9208 pt!21)))))

(declare-fun lt!379712 () Unit!16639)

(declare-fun Unit!16653 () Unit!16639)

(assert (=> b!1130911 (= lt!379712 Unit!16653)))

(assert (=> b!1130911 (> (size!8536 (charsOf!1031 (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (+ 0 1)))) 0)))

(declare-fun lt!379695 () Unit!16639)

(declare-fun Unit!16654 () Unit!16639)

(assert (=> b!1130911 (= lt!379695 Unit!16654)))

(assert (=> b!1130911 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (+ 0 1)))))

(declare-fun lt!379702 () Unit!16639)

(declare-fun Unit!16655 () Unit!16639)

(assert (=> b!1130911 (= lt!379702 Unit!16655)))

(assert (=> b!1130911 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0))))

(declare-fun lt!379691 () Unit!16639)

(declare-fun lt!379697 () Unit!16639)

(assert (=> b!1130911 (= lt!379691 lt!379697)))

(declare-fun lt!379690 () Token!3440)

(assert (=> b!1130911 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) lt!379690)))

(declare-fun lt!379716 () List!10979)

(assert (=> b!1130911 (= lt!379697 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 Lexer!1593 (rules!9208 pt!21) lt!379716 lt!379690))))

(assert (=> b!1130911 (= lt!379690 (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (+ 0 1)))))

(assert (=> b!1130911 (= lt!379716 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379721 () Unit!16639)

(declare-fun lt!379718 () Unit!16639)

(assert (=> b!1130911 (= lt!379721 lt!379718)))

(declare-fun lt!379699 () Token!3440)

(assert (=> b!1130911 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) lt!379699)))

(declare-fun lt!379715 () List!10979)

(assert (=> b!1130911 (= lt!379718 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 Lexer!1593 (rules!9208 pt!21) lt!379715 lt!379699))))

(assert (=> b!1130911 (= lt!379699 (apply!2266 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0))))

(assert (=> b!1130911 (= lt!379715 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379714 () Unit!16639)

(declare-fun lt!379719 () Unit!16639)

(assert (=> b!1130911 (= lt!379714 lt!379719)))

(declare-fun lt!379717 () List!10979)

(declare-fun lt!379700 () Int)

(assert (=> b!1130911 (= (tail!1613 (drop!417 lt!379717 lt!379700)) (drop!417 lt!379717 (+ lt!379700 1)))))

(assert (=> b!1130911 (= lt!379719 (lemmaDropTail!322 lt!379717 lt!379700))))

(assert (=> b!1130911 (= lt!379700 (+ 0 1))))

(assert (=> b!1130911 (= lt!379717 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379708 () Unit!16639)

(declare-fun lt!379709 () Unit!16639)

(assert (=> b!1130911 (= lt!379708 lt!379709)))

(declare-fun lt!379696 () List!10979)

(assert (=> b!1130911 (= (tail!1613 (drop!417 lt!379696 0)) (drop!417 lt!379696 (+ 0 1)))))

(assert (=> b!1130911 (= lt!379709 (lemmaDropTail!322 lt!379696 0))))

(assert (=> b!1130911 (= lt!379696 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379711 () Unit!16639)

(declare-fun lt!379694 () Unit!16639)

(assert (=> b!1130911 (= lt!379711 lt!379694)))

(declare-fun lt!379720 () List!10979)

(declare-fun lt!379703 () Int)

(assert (=> b!1130911 (= (head!2053 (drop!417 lt!379720 lt!379703)) (apply!2267 lt!379720 lt!379703))))

(assert (=> b!1130911 (= lt!379694 (lemmaDropApply!334 lt!379720 lt!379703))))

(assert (=> b!1130911 (= lt!379703 (+ 0 1))))

(assert (=> b!1130911 (= lt!379720 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379705 () Unit!16639)

(declare-fun lt!379713 () Unit!16639)

(assert (=> b!1130911 (= lt!379705 lt!379713)))

(declare-fun lt!379704 () List!10979)

(assert (=> b!1130911 (= (head!2053 (drop!417 lt!379704 0)) (apply!2267 lt!379704 0))))

(assert (=> b!1130911 (= lt!379713 (lemmaDropApply!334 lt!379704 0))))

(assert (=> b!1130911 (= lt!379704 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun b!1130913 () Bool)

(assert (=> b!1130913 (= e!722489 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) lt!379706))))

(declare-fun e!722491 () Bool)

(declare-fun b!1130914 () Bool)

(assert (=> b!1130914 (= e!722491 (<= 0 (size!8533 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))))

(declare-fun b!1130912 () Bool)

(declare-fun res!508273 () Bool)

(assert (=> b!1130912 (=> (not res!508273) (not e!722489))))

(assert (=> b!1130912 (= res!508273 (rulesInvariant!1469 Lexer!1593 (rules!9208 pt!21)))))

(declare-fun d!318575 () Bool)

(declare-fun lt!379689 () Bool)

(declare-fun dropList!290 (BalanceConc!7004 Int) List!10979)

(assert (=> d!318575 (= lt!379689 (tokensListTwoByTwoPredicateSeparableList!69 Lexer!1593 (dropList!290 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0) (rules!9208 pt!21)))))

(declare-fun lt!379710 () Unit!16639)

(declare-fun lt!379698 () Unit!16639)

(assert (=> d!318575 (= lt!379710 lt!379698)))

(assert (=> d!318575 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) lt!379693)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!6 (LexerInterface!1595 List!10980 List!10979 List!10979) Unit!16639)

(assert (=> d!318575 (= lt!379698 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!6 Lexer!1593 (rules!9208 pt!21) lt!379706 lt!379693))))

(assert (=> d!318575 e!722489))

(declare-fun res!508272 () Bool)

(assert (=> d!318575 (=> (not res!508272) (not e!722489))))

(assert (=> d!318575 (= res!508272 ((_ is Lexer!1593) Lexer!1593))))

(assert (=> d!318575 (= lt!379693 (dropList!290 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0))))

(assert (=> d!318575 (= lt!379706 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379692 () Unit!16639)

(declare-fun lt!379701 () Unit!16639)

(assert (=> d!318575 (= lt!379692 lt!379701)))

(assert (=> d!318575 (subseq!172 (drop!417 lt!379707 0) lt!379707)))

(declare-fun lemmaDropSubSeq!6 (List!10979 Int) Unit!16639)

(assert (=> d!318575 (= lt!379701 (lemmaDropSubSeq!6 lt!379707 0))))

(assert (=> d!318575 e!722490))

(declare-fun res!508269 () Bool)

(assert (=> d!318575 (=> (not res!508269) (not e!722490))))

(assert (=> d!318575 (= res!508269 (>= 0 0))))

(assert (=> d!318575 (= lt!379707 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(assert (=> d!318575 (= lt!379689 e!722492)))

(declare-fun res!508268 () Bool)

(assert (=> d!318575 (=> res!508268 e!722492)))

(assert (=> d!318575 (= res!508268 (not (< 0 (- (size!8533 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) 1))))))

(assert (=> d!318575 e!722491))

(declare-fun res!508271 () Bool)

(assert (=> d!318575 (=> (not res!508271) (not e!722491))))

(assert (=> d!318575 (= res!508271 (>= 0 0))))

(assert (=> d!318575 (= (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) 0 (rules!9208 pt!21)) lt!379689)))

(assert (= (and d!318575 res!508271) b!1130914))

(assert (= (and d!318575 (not res!508268)) b!1130911))

(assert (= (and b!1130911 res!508274) b!1130908))

(assert (= (and d!318575 res!508269) b!1130907))

(assert (= (and d!318575 res!508272) b!1130909))

(assert (= (and b!1130909 res!508270) b!1130912))

(assert (= (and b!1130912 res!508273) b!1130910))

(assert (= (and b!1130910 res!508267) b!1130913))

(assert (=> b!1130908 m!1279295))

(declare-fun m!1279797 () Bool)

(assert (=> b!1130908 m!1279797))

(declare-fun m!1279799 () Bool)

(assert (=> b!1130913 m!1279799))

(assert (=> b!1130912 m!1279017))

(assert (=> b!1130909 m!1279015))

(declare-fun m!1279801 () Bool)

(assert (=> d!318575 m!1279801))

(declare-fun m!1279803 () Bool)

(assert (=> d!318575 m!1279803))

(assert (=> d!318575 m!1279295))

(assert (=> d!318575 m!1279289))

(declare-fun m!1279805 () Bool)

(assert (=> d!318575 m!1279805))

(assert (=> d!318575 m!1279801))

(assert (=> d!318575 m!1279295))

(declare-fun m!1279807 () Bool)

(assert (=> d!318575 m!1279807))

(assert (=> d!318575 m!1279295))

(declare-fun m!1279809 () Bool)

(assert (=> d!318575 m!1279809))

(declare-fun m!1279811 () Bool)

(assert (=> d!318575 m!1279811))

(declare-fun m!1279813 () Bool)

(assert (=> d!318575 m!1279813))

(assert (=> d!318575 m!1279807))

(declare-fun m!1279815 () Bool)

(assert (=> d!318575 m!1279815))

(declare-fun m!1279817 () Bool)

(assert (=> b!1130907 m!1279817))

(declare-fun m!1279819 () Bool)

(assert (=> b!1130911 m!1279819))

(declare-fun m!1279821 () Bool)

(assert (=> b!1130911 m!1279821))

(declare-fun m!1279823 () Bool)

(assert (=> b!1130911 m!1279823))

(declare-fun m!1279825 () Bool)

(assert (=> b!1130911 m!1279825))

(assert (=> b!1130911 m!1279295))

(assert (=> b!1130911 m!1279289))

(assert (=> b!1130911 m!1279819))

(declare-fun m!1279827 () Bool)

(assert (=> b!1130911 m!1279827))

(declare-fun m!1279829 () Bool)

(assert (=> b!1130911 m!1279829))

(declare-fun m!1279831 () Bool)

(assert (=> b!1130911 m!1279831))

(declare-fun m!1279833 () Bool)

(assert (=> b!1130911 m!1279833))

(declare-fun m!1279835 () Bool)

(assert (=> b!1130911 m!1279835))

(assert (=> b!1130911 m!1279821))

(declare-fun m!1279837 () Bool)

(assert (=> b!1130911 m!1279837))

(declare-fun m!1279839 () Bool)

(assert (=> b!1130911 m!1279839))

(declare-fun m!1279841 () Bool)

(assert (=> b!1130911 m!1279841))

(assert (=> b!1130911 m!1279829))

(assert (=> b!1130911 m!1279295))

(assert (=> b!1130911 m!1279821))

(assert (=> b!1130911 m!1279295))

(assert (=> b!1130911 m!1279819))

(declare-fun m!1279843 () Bool)

(assert (=> b!1130911 m!1279843))

(declare-fun m!1279845 () Bool)

(assert (=> b!1130911 m!1279845))

(declare-fun m!1279847 () Bool)

(assert (=> b!1130911 m!1279847))

(assert (=> b!1130911 m!1279845))

(declare-fun m!1279849 () Bool)

(assert (=> b!1130911 m!1279849))

(assert (=> b!1130911 m!1279839))

(declare-fun m!1279851 () Bool)

(assert (=> b!1130911 m!1279851))

(declare-fun m!1279853 () Bool)

(assert (=> b!1130911 m!1279853))

(assert (=> b!1130911 m!1279821))

(declare-fun m!1279855 () Bool)

(assert (=> b!1130911 m!1279855))

(declare-fun m!1279857 () Bool)

(assert (=> b!1130911 m!1279857))

(assert (=> b!1130911 m!1279843))

(declare-fun m!1279859 () Bool)

(assert (=> b!1130911 m!1279859))

(declare-fun m!1279861 () Bool)

(assert (=> b!1130911 m!1279861))

(declare-fun m!1279863 () Bool)

(assert (=> b!1130911 m!1279863))

(declare-fun m!1279865 () Bool)

(assert (=> b!1130911 m!1279865))

(assert (=> b!1130911 m!1279837))

(declare-fun m!1279867 () Bool)

(assert (=> b!1130911 m!1279867))

(declare-fun m!1279869 () Bool)

(assert (=> b!1130911 m!1279869))

(declare-fun m!1279871 () Bool)

(assert (=> b!1130911 m!1279871))

(assert (=> b!1130914 m!1279295))

(assert (=> b!1130914 m!1279809))

(declare-fun m!1279873 () Bool)

(assert (=> b!1130910 m!1279873))

(assert (=> d!318495 d!318575))

(declare-fun b!1130925 () Bool)

(declare-fun e!722503 () Bool)

(declare-fun e!722505 () Bool)

(assert (=> b!1130925 (= e!722503 e!722505)))

(declare-fun res!508287 () Bool)

(assert (=> b!1130925 (=> res!508287 e!722505)))

(declare-fun e!722506 () Bool)

(assert (=> b!1130925 (= res!508287 e!722506)))

(declare-fun res!508286 () Bool)

(assert (=> b!1130925 (=> (not res!508286) (not e!722506))))

(assert (=> b!1130925 (= res!508286 (= (h!16356 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984))) (h!16356 lt!379406)))))

(declare-fun b!1130927 () Bool)

(assert (=> b!1130927 (= e!722505 (subseq!172 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984)) (t!106833 lt!379406)))))

(declare-fun b!1130926 () Bool)

(assert (=> b!1130926 (= e!722506 (subseq!172 (t!106833 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984))) (t!106833 lt!379406)))))

(declare-fun d!318609 () Bool)

(declare-fun res!508285 () Bool)

(declare-fun e!722504 () Bool)

(assert (=> d!318609 (=> res!508285 e!722504)))

(assert (=> d!318609 (= res!508285 ((_ is Nil!10955) (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984))))))

(assert (=> d!318609 (= (subseq!172 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984)) lt!379406) e!722504)))

(declare-fun b!1130924 () Bool)

(assert (=> b!1130924 (= e!722504 e!722503)))

(declare-fun res!508284 () Bool)

(assert (=> b!1130924 (=> (not res!508284) (not e!722503))))

(assert (=> b!1130924 (= res!508284 ((_ is Cons!10955) lt!379406))))

(assert (= (and d!318609 (not res!508285)) b!1130924))

(assert (= (and b!1130924 res!508284) b!1130925))

(assert (= (and b!1130925 res!508286) b!1130926))

(assert (= (and b!1130925 (not res!508287)) b!1130927))

(assert (=> b!1130927 m!1279299))

(declare-fun m!1279879 () Bool)

(assert (=> b!1130927 m!1279879))

(declare-fun m!1279881 () Bool)

(assert (=> b!1130926 m!1279881))

(assert (=> d!318495 d!318609))

(declare-fun d!318617 () Bool)

(declare-fun lt!379734 () Bool)

(assert (=> d!318617 (= lt!379734 (forall!2640 (list!3958 (tokens!1450 pt!21)) lambda!45501))))

(declare-fun forall!2643 (Conc!3491 Int) Bool)

(assert (=> d!318617 (= lt!379734 (forall!2643 (c!189410 (tokens!1450 pt!21)) lambda!45501))))

(assert (=> d!318617 (= (forall!2641 (tokens!1450 pt!21) lambda!45501) lt!379734)))

(declare-fun bs!277625 () Bool)

(assert (= bs!277625 d!318617))

(assert (=> bs!277625 m!1279305))

(assert (=> bs!277625 m!1279305))

(declare-fun m!1279889 () Bool)

(assert (=> bs!277625 m!1279889))

(declare-fun m!1279891 () Bool)

(assert (=> bs!277625 m!1279891))

(assert (=> d!318495 d!318617))

(declare-fun lt!379735 () Bool)

(declare-fun d!318623 () Bool)

(assert (=> d!318623 (= lt!379735 (forall!2640 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) lambda!45501))))

(assert (=> d!318623 (= lt!379735 (forall!2643 (c!189410 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) lambda!45501))))

(assert (=> d!318623 (= (forall!2641 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lambda!45501) lt!379735)))

(declare-fun bs!277626 () Bool)

(assert (= bs!277626 d!318623))

(assert (=> bs!277626 m!1279295))

(assert (=> bs!277626 m!1279289))

(assert (=> bs!277626 m!1279289))

(declare-fun m!1279897 () Bool)

(assert (=> bs!277626 m!1279897))

(declare-fun m!1279901 () Bool)

(assert (=> bs!277626 m!1279901))

(assert (=> d!318495 d!318623))

(declare-fun d!318625 () Bool)

(assert (=> d!318625 (= (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (take!15 (drop!417 lt!379433 (ite c!189407 lt!378986 lt!378984)) (- (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (ite c!189407 lt!378986 lt!378984))))))

(declare-fun bs!277627 () Bool)

(assert (= bs!277627 d!318625))

(declare-fun m!1279919 () Bool)

(assert (=> bs!277627 m!1279919))

(assert (=> bs!277627 m!1279919))

(declare-fun m!1279921 () Bool)

(assert (=> bs!277627 m!1279921))

(assert (=> d!318495 d!318625))

(declare-fun bs!277642 () Bool)

(declare-fun b!1130989 () Bool)

(assert (= bs!277642 (and b!1130989 d!318569)))

(declare-fun lambda!45519 () Int)

(assert (=> bs!277642 (= lambda!45519 lambda!45511)))

(declare-fun bs!277643 () Bool)

(assert (= bs!277643 (and b!1130989 d!318565)))

(assert (=> bs!277643 (= (= Lexer!1593 lt!379402) (= lambda!45519 lambda!45510))))

(declare-fun bs!277644 () Bool)

(assert (= bs!277644 (and b!1130989 d!318543)))

(assert (=> bs!277644 (= (= Lexer!1593 lt!379381) (= lambda!45519 lambda!45509))))

(declare-fun bs!277645 () Bool)

(assert (= bs!277645 (and b!1130989 d!318571)))

(assert (=> bs!277645 (= (= Lexer!1593 lt!379404) (= lambda!45519 lambda!45512))))

(declare-fun bs!277646 () Bool)

(assert (= bs!277646 (and b!1130989 d!318495)))

(assert (=> bs!277646 (= lambda!45519 lambda!45501)))

(declare-fun b!1130993 () Bool)

(declare-fun e!722563 () Bool)

(assert (=> b!1130993 (= e!722563 true)))

(declare-fun b!1130992 () Bool)

(declare-fun e!722562 () Bool)

(assert (=> b!1130992 (= e!722562 e!722563)))

(declare-fun b!1130991 () Bool)

(declare-fun e!722561 () Bool)

(assert (=> b!1130991 (= e!722561 e!722562)))

(assert (=> b!1130989 e!722561))

(assert (= b!1130992 b!1130993))

(assert (= b!1130991 b!1130992))

(assert (= (and b!1130989 ((_ is Cons!10956) (rules!9208 pt!21))) b!1130991))

(assert (=> b!1130993 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45519))))

(assert (=> b!1130993 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45519))))

(declare-fun b!1130990 () Bool)

(declare-fun e!722558 () Bool)

(declare-fun lt!379773 () List!10979)

(assert (=> b!1130990 (= e!722558 (subseq!172 lt!379773 lt!379399))))

(declare-fun d!318633 () Bool)

(declare-fun e!722559 () Bool)

(assert (=> d!318633 e!722559))

(declare-fun res!508334 () Bool)

(assert (=> d!318633 (=> (not res!508334) (not e!722559))))

(declare-fun e!722560 () Bool)

(assert (=> d!318633 (= res!508334 (= (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) e!722560))))

(declare-fun res!508331 () Bool)

(assert (=> d!318633 (=> res!508331 e!722560)))

(declare-fun lt!379769 () List!10979)

(assert (=> d!318633 (= res!508331 (not ((_ is Cons!10955) lt!379769)))))

(assert (=> d!318633 (= lt!379769 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun lt!379771 () Unit!16639)

(declare-fun choose!7233 (LexerInterface!1595 List!10979 Int List!10980) Unit!16639)

(assert (=> d!318633 (= lt!379771 (choose!7233 lt!379402 lt!379399 (ite c!189407 lt!378986 lt!378984) (rules!9208 pt!21)))))

(assert (=> d!318633 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318633 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!13 lt!379402 lt!379399 (ite c!189407 lt!378986 lt!378984) (rules!9208 pt!21)) lt!379771)))

(assert (=> b!1130989 (= e!722559 (tokensListTwoByTwoPredicateSeparableList!69 lt!379402 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (rules!9208 pt!21)))))

(declare-fun lt!379774 () Unit!16639)

(declare-fun lt!379772 () Unit!16639)

(assert (=> b!1130989 (= lt!379774 lt!379772)))

(assert (=> b!1130989 (forall!2640 lt!379773 lambda!45519)))

(assert (=> b!1130989 (= lt!379772 (lemmaForallSubseq!72 lt!379773 lt!379399 lambda!45519))))

(assert (=> b!1130989 e!722558))

(declare-fun res!508332 () Bool)

(assert (=> b!1130989 (=> (not res!508332) (not e!722558))))

(assert (=> b!1130989 (= res!508332 (forall!2640 lt!379399 lambda!45519))))

(assert (=> b!1130989 (= lt!379773 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun lt!379770 () Unit!16639)

(declare-fun lt!379768 () Unit!16639)

(assert (=> b!1130989 (= lt!379770 lt!379768)))

(assert (=> b!1130989 (subseq!172 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!379399)))

(assert (=> b!1130989 (= lt!379768 (lemmaDropSubseq!13 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun e!722557 () Bool)

(declare-fun b!1130988 () Bool)

(assert (=> b!1130988 (= e!722557 (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (t!106833 lt!379769)))))

(declare-fun b!1130987 () Bool)

(assert (=> b!1130987 (= e!722560 e!722557)))

(declare-fun res!508333 () Bool)

(assert (=> b!1130987 (=> (not res!508333) (not e!722557))))

(assert (=> b!1130987 (= res!508333 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 lt!379769)))))

(assert (= (and d!318633 (not res!508331)) b!1130987))

(assert (= (and b!1130987 res!508333) b!1130988))

(assert (= (and d!318633 res!508334) b!1130989))

(assert (= (and b!1130989 res!508332) b!1130990))

(declare-fun m!1279981 () Bool)

(assert (=> b!1130990 m!1279981))

(declare-fun m!1279983 () Bool)

(assert (=> b!1130987 m!1279983))

(declare-fun m!1279985 () Bool)

(assert (=> b!1130988 m!1279985))

(declare-fun m!1279987 () Bool)

(assert (=> b!1130989 m!1279987))

(declare-fun m!1279989 () Bool)

(assert (=> b!1130989 m!1279989))

(assert (=> b!1130989 m!1279277))

(assert (=> b!1130989 m!1279281))

(declare-fun m!1279991 () Bool)

(assert (=> b!1130989 m!1279991))

(assert (=> b!1130989 m!1279283))

(assert (=> b!1130989 m!1279277))

(assert (=> b!1130989 m!1279279))

(assert (=> b!1130989 m!1279277))

(assert (=> d!318633 m!1279277))

(assert (=> d!318633 m!1279277))

(assert (=> d!318633 m!1279287))

(declare-fun m!1279993 () Bool)

(assert (=> d!318633 m!1279993))

(assert (=> d!318633 m!1279015))

(assert (=> d!318495 d!318633))

(declare-fun d!318669 () Bool)

(assert (=> d!318669 (forall!2640 lt!379396 lambda!45501)))

(declare-fun lt!379779 () Unit!16639)

(assert (=> d!318669 (= lt!379779 (choose!7230 lt!379396 lt!379421 lambda!45501))))

(assert (=> d!318669 (forall!2640 lt!379421 lambda!45501)))

(assert (=> d!318669 (= (lemmaForallSubseq!72 lt!379396 lt!379421 lambda!45501) lt!379779)))

(declare-fun bs!277647 () Bool)

(assert (= bs!277647 d!318669))

(assert (=> bs!277647 m!1279313))

(declare-fun m!1279995 () Bool)

(assert (=> bs!277647 m!1279995))

(declare-fun m!1279997 () Bool)

(assert (=> bs!277647 m!1279997))

(assert (=> d!318495 d!318669))

(declare-fun d!318671 () Bool)

(declare-fun res!508345 () Bool)

(declare-fun e!722577 () Bool)

(assert (=> d!318671 (=> res!508345 e!722577)))

(assert (=> d!318671 (= res!508345 ((_ is Nil!10955) lt!379417))))

(assert (=> d!318671 (= (forall!2640 lt!379417 lambda!45501) e!722577)))

(declare-fun b!1131010 () Bool)

(declare-fun e!722578 () Bool)

(assert (=> b!1131010 (= e!722577 e!722578)))

(declare-fun res!508346 () Bool)

(assert (=> b!1131010 (=> (not res!508346) (not e!722578))))

(declare-fun dynLambda!4826 (Int Token!3440) Bool)

(assert (=> b!1131010 (= res!508346 (dynLambda!4826 lambda!45501 (h!16356 lt!379417)))))

(declare-fun b!1131011 () Bool)

(assert (=> b!1131011 (= e!722578 (forall!2640 (t!106833 lt!379417) lambda!45501))))

(assert (= (and d!318671 (not res!508345)) b!1131010))

(assert (= (and b!1131010 res!508346) b!1131011))

(declare-fun b_lambda!33241 () Bool)

(assert (=> (not b_lambda!33241) (not b!1131010)))

(declare-fun m!1280009 () Bool)

(assert (=> b!1131010 m!1280009))

(declare-fun m!1280011 () Bool)

(assert (=> b!1131011 m!1280011))

(assert (=> d!318495 d!318671))

(declare-fun d!318675 () Bool)

(assert (=> d!318675 (subseq!172 (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984)) lt!379406)))

(declare-fun lt!379786 () Unit!16639)

(declare-fun choose!7234 (List!10979 Int) Unit!16639)

(assert (=> d!318675 (= lt!379786 (choose!7234 lt!379406 (ite c!189407 lt!378986 lt!378984)))))

(assert (=> d!318675 (= (lemmaDropSubseq!13 lt!379406 (ite c!189407 lt!378986 lt!378984)) lt!379786)))

(declare-fun bs!277648 () Bool)

(assert (= bs!277648 d!318675))

(assert (=> bs!277648 m!1279299))

(assert (=> bs!277648 m!1279299))

(assert (=> bs!277648 m!1279331))

(declare-fun m!1280035 () Bool)

(assert (=> bs!277648 m!1280035))

(assert (=> d!318495 d!318675))

(declare-fun d!318681 () Bool)

(assert (=> d!318681 (subseq!172 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379433)))

(declare-fun lt!379789 () Unit!16639)

(declare-fun choose!7235 (List!10979 Int Int) Unit!16639)

(assert (=> d!318681 (= lt!379789 (choose!7235 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))))))

(declare-fun e!722593 () Bool)

(assert (=> d!318681 e!722593))

(declare-fun res!508369 () Bool)

(assert (=> d!318681 (=> (not res!508369) (not e!722593))))

(assert (=> d!318681 (= res!508369 (and (>= (ite c!189407 lt!378986 lt!378984) 0) (>= (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (ite c!189407 lt!378986 lt!378984))))))

(assert (=> d!318681 (= (lemmaSliceSubseq!13 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379789)))

(declare-fun b!1131038 () Bool)

(assert (=> b!1131038 (= e!722593 (<= (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (size!8539 lt!379433)))))

(assert (= (and d!318681 res!508369) b!1131038))

(assert (=> d!318681 m!1279315))

(assert (=> d!318681 m!1279315))

(assert (=> d!318681 m!1279325))

(declare-fun m!1280053 () Bool)

(assert (=> d!318681 m!1280053))

(declare-fun m!1280055 () Bool)

(assert (=> b!1131038 m!1280055))

(assert (=> d!318495 d!318681))

(declare-fun b!1131039 () Bool)

(declare-fun e!722594 () Int)

(assert (=> b!1131039 (= e!722594 0)))

(declare-fun b!1131040 () Bool)

(declare-fun e!722596 () Bool)

(declare-fun lt!379790 () List!10979)

(declare-fun e!722597 () Int)

(assert (=> b!1131040 (= e!722596 (= (size!8539 lt!379790) e!722597))))

(declare-fun c!189517 () Bool)

(assert (=> b!1131040 (= c!189517 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1131041 () Bool)

(declare-fun e!722595 () List!10979)

(assert (=> b!1131041 (= e!722595 (list!3958 (tokens!1450 pt!21)))))

(declare-fun bm!80644 () Bool)

(declare-fun call!80649 () Int)

(assert (=> bm!80644 (= call!80649 (size!8539 (list!3958 (tokens!1450 pt!21))))))

(declare-fun b!1131042 () Bool)

(declare-fun e!722598 () List!10979)

(assert (=> b!1131042 (= e!722598 Nil!10955)))

(declare-fun b!1131043 () Bool)

(assert (=> b!1131043 (= e!722594 (- call!80649 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun d!318689 () Bool)

(assert (=> d!318689 e!722596))

(declare-fun res!508370 () Bool)

(assert (=> d!318689 (=> (not res!508370) (not e!722596))))

(assert (=> d!318689 (= res!508370 (= ((_ map implies) (content!1572 lt!379790) (content!1572 (list!3958 (tokens!1450 pt!21)))) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318689 (= lt!379790 e!722598)))

(declare-fun c!189516 () Bool)

(assert (=> d!318689 (= c!189516 ((_ is Nil!10955) (list!3958 (tokens!1450 pt!21))))))

(assert (=> d!318689 (= (drop!417 (list!3958 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984)) lt!379790)))

(declare-fun b!1131044 () Bool)

(assert (=> b!1131044 (= e!722595 (drop!417 (t!106833 (list!3958 (tokens!1450 pt!21))) (- (ite c!189407 lt!378986 lt!378984) 1)))))

(declare-fun b!1131045 () Bool)

(assert (=> b!1131045 (= e!722597 e!722594)))

(declare-fun c!189518 () Bool)

(assert (=> b!1131045 (= c!189518 (>= (ite c!189407 lt!378986 lt!378984) call!80649))))

(declare-fun b!1131046 () Bool)

(assert (=> b!1131046 (= e!722598 e!722595)))

(declare-fun c!189519 () Bool)

(assert (=> b!1131046 (= c!189519 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1131047 () Bool)

(assert (=> b!1131047 (= e!722597 call!80649)))

(assert (= (and d!318689 c!189516) b!1131042))

(assert (= (and d!318689 (not c!189516)) b!1131046))

(assert (= (and b!1131046 c!189519) b!1131041))

(assert (= (and b!1131046 (not c!189519)) b!1131044))

(assert (= (and d!318689 res!508370) b!1131040))

(assert (= (and b!1131040 c!189517) b!1131047))

(assert (= (and b!1131040 (not c!189517)) b!1131045))

(assert (= (and b!1131045 c!189518) b!1131039))

(assert (= (and b!1131045 (not c!189518)) b!1131043))

(assert (= (or b!1131047 b!1131045 b!1131043) bm!80644))

(declare-fun m!1280057 () Bool)

(assert (=> b!1131040 m!1280057))

(assert (=> bm!80644 m!1279305))

(assert (=> bm!80644 m!1279651))

(declare-fun m!1280059 () Bool)

(assert (=> d!318689 m!1280059))

(assert (=> d!318689 m!1279305))

(declare-fun m!1280061 () Bool)

(assert (=> d!318689 m!1280061))

(declare-fun m!1280063 () Bool)

(assert (=> b!1131044 m!1280063))

(assert (=> d!318495 d!318689))

(declare-fun bs!277649 () Bool)

(declare-fun d!318691 () Bool)

(assert (= bs!277649 (and d!318691 d!318569)))

(declare-fun lambda!45520 () Int)

(assert (=> bs!277649 (= lambda!45520 lambda!45511)))

(declare-fun bs!277650 () Bool)

(assert (= bs!277650 (and d!318691 d!318565)))

(assert (=> bs!277650 (= (= Lexer!1593 lt!379402) (= lambda!45520 lambda!45510))))

(declare-fun bs!277651 () Bool)

(assert (= bs!277651 (and d!318691 b!1130989)))

(assert (=> bs!277651 (= lambda!45520 lambda!45519)))

(declare-fun bs!277652 () Bool)

(assert (= bs!277652 (and d!318691 d!318543)))

(assert (=> bs!277652 (= (= Lexer!1593 lt!379381) (= lambda!45520 lambda!45509))))

(declare-fun bs!277653 () Bool)

(assert (= bs!277653 (and d!318691 d!318571)))

(assert (=> bs!277653 (= (= Lexer!1593 lt!379404) (= lambda!45520 lambda!45512))))

(declare-fun bs!277654 () Bool)

(assert (= bs!277654 (and d!318691 d!318495)))

(assert (=> bs!277654 (= lambda!45520 lambda!45501)))

(declare-fun b!1131052 () Bool)

(declare-fun e!722603 () Bool)

(assert (=> b!1131052 (= e!722603 true)))

(declare-fun b!1131051 () Bool)

(declare-fun e!722602 () Bool)

(assert (=> b!1131051 (= e!722602 e!722603)))

(declare-fun b!1131050 () Bool)

(declare-fun e!722601 () Bool)

(assert (=> b!1131050 (= e!722601 e!722602)))

(assert (=> d!318691 e!722601))

(assert (= b!1131051 b!1131052))

(assert (= b!1131050 b!1131051))

(assert (= (and d!318691 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131050))

(assert (=> b!1131052 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45520))))

(assert (=> b!1131052 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45520))))

(assert (=> d!318691 true))

(declare-fun lt!379791 () Bool)

(assert (=> d!318691 (= lt!379791 (forall!2640 (list!3958 (tokens!1450 pt!21)) lambda!45520))))

(declare-fun e!722600 () Bool)

(assert (=> d!318691 (= lt!379791 e!722600)))

(declare-fun res!508372 () Bool)

(assert (=> d!318691 (=> res!508372 e!722600)))

(assert (=> d!318691 (= res!508372 (not ((_ is Cons!10955) (list!3958 (tokens!1450 pt!21)))))))

(assert (=> d!318691 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318691 (= (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (tokens!1450 pt!21))) lt!379791)))

(declare-fun b!1131048 () Bool)

(declare-fun e!722599 () Bool)

(assert (=> b!1131048 (= e!722600 e!722599)))

(declare-fun res!508371 () Bool)

(assert (=> b!1131048 (=> (not res!508371) (not e!722599))))

(assert (=> b!1131048 (= res!508371 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 (list!3958 (tokens!1450 pt!21)))))))

(declare-fun b!1131049 () Bool)

(assert (=> b!1131049 (= e!722599 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (t!106833 (list!3958 (tokens!1450 pt!21)))))))

(assert (= (and d!318691 (not res!508372)) b!1131048))

(assert (= (and b!1131048 res!508371) b!1131049))

(assert (=> d!318691 m!1279305))

(declare-fun m!1280065 () Bool)

(assert (=> d!318691 m!1280065))

(assert (=> d!318691 m!1279015))

(declare-fun m!1280067 () Bool)

(assert (=> b!1131048 m!1280067))

(declare-fun m!1280069 () Bool)

(assert (=> b!1131049 m!1280069))

(assert (=> d!318495 d!318691))

(declare-fun d!318693 () Bool)

(declare-fun res!508373 () Bool)

(declare-fun e!722604 () Bool)

(assert (=> d!318693 (=> res!508373 e!722604)))

(assert (=> d!318693 (= res!508373 ((_ is Nil!10955) lt!379396))))

(assert (=> d!318693 (= (forall!2640 lt!379396 lambda!45501) e!722604)))

(declare-fun b!1131053 () Bool)

(declare-fun e!722605 () Bool)

(assert (=> b!1131053 (= e!722604 e!722605)))

(declare-fun res!508374 () Bool)

(assert (=> b!1131053 (=> (not res!508374) (not e!722605))))

(assert (=> b!1131053 (= res!508374 (dynLambda!4826 lambda!45501 (h!16356 lt!379396)))))

(declare-fun b!1131054 () Bool)

(assert (=> b!1131054 (= e!722605 (forall!2640 (t!106833 lt!379396) lambda!45501))))

(assert (= (and d!318693 (not res!508373)) b!1131053))

(assert (= (and b!1131053 res!508374) b!1131054))

(declare-fun b_lambda!33243 () Bool)

(assert (=> (not b_lambda!33243) (not b!1131053)))

(declare-fun m!1280071 () Bool)

(assert (=> b!1131053 m!1280071))

(declare-fun m!1280073 () Bool)

(assert (=> b!1131054 m!1280073))

(assert (=> d!318495 d!318693))

(declare-fun d!318695 () Bool)

(declare-fun e!722611 () Bool)

(assert (=> d!318695 e!722611))

(declare-fun res!508383 () Bool)

(assert (=> d!318695 (=> (not res!508383) (not e!722611))))

(declare-fun slice!63 (Conc!3491 Int Int) Conc!3491)

(assert (=> d!318695 (= res!508383 (isBalanced!967 (slice!63 (c!189410 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun lt!379794 () BalanceConc!7004)

(assert (=> d!318695 (= lt!379794 (BalanceConc!7005 (slice!63 (c!189410 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(declare-fun e!722610 () Bool)

(assert (=> d!318695 e!722610))

(declare-fun res!508381 () Bool)

(assert (=> d!318695 (=> (not res!508381) (not e!722610))))

(assert (=> d!318695 (= res!508381 (and (<= 0 (ite c!189407 lt!378986 lt!378984)) (<= (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(assert (=> d!318695 (= (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379794)))

(declare-fun b!1131061 () Bool)

(declare-fun res!508382 () Bool)

(assert (=> b!1131061 (=> (not res!508382) (not e!722610))))

(assert (=> b!1131061 (= res!508382 (<= (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)) (size!8533 (tokens!1450 pt!21))))))

(declare-fun b!1131062 () Bool)

(assert (=> b!1131062 (= e!722610 (isBalanced!967 (c!189410 (tokens!1450 pt!21))))))

(declare-fun b!1131063 () Bool)

(assert (=> b!1131063 (= e!722611 (= (list!3958 lt!379794) (slice!62 (list!3958 (tokens!1450 pt!21)) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(assert (= (and d!318695 res!508381) b!1131061))

(assert (= (and b!1131061 res!508382) b!1131062))

(assert (= (and d!318695 res!508383) b!1131063))

(declare-fun m!1280075 () Bool)

(assert (=> d!318695 m!1280075))

(assert (=> d!318695 m!1280075))

(declare-fun m!1280077 () Bool)

(assert (=> d!318695 m!1280077))

(assert (=> b!1131061 m!1278981))

(assert (=> b!1131062 m!1279061))

(declare-fun m!1280079 () Bool)

(assert (=> b!1131063 m!1280079))

(assert (=> b!1131063 m!1279305))

(assert (=> b!1131063 m!1279305))

(declare-fun m!1280081 () Bool)

(assert (=> b!1131063 m!1280081))

(assert (=> d!318495 d!318695))

(declare-fun d!318697 () Bool)

(declare-fun e!722614 () Bool)

(assert (=> d!318697 e!722614))

(declare-fun res!508388 () Bool)

(assert (=> d!318697 (=> (not res!508388) (not e!722614))))

(assert (=> d!318697 (= res!508388 (rulesInvariant!1469 Lexer!1593 (rules!9208 pt!21)))))

(declare-fun Unit!16656 () Unit!16639)

(assert (=> d!318697 (= (lemmaInvariant!87 pt!21) Unit!16656)))

(declare-fun b!1131068 () Bool)

(declare-fun res!508389 () Bool)

(assert (=> b!1131068 (=> (not res!508389) (not e!722614))))

(assert (=> b!1131068 (= res!508389 (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (tokens!1450 pt!21)))))

(declare-fun b!1131069 () Bool)

(assert (=> b!1131069 (= e!722614 (separableTokens!64 Lexer!1593 (tokens!1450 pt!21) (rules!9208 pt!21)))))

(assert (= (and d!318697 res!508388) b!1131068))

(assert (= (and b!1131068 res!508389) b!1131069))

(assert (=> d!318697 m!1279017))

(assert (=> b!1131068 m!1279019))

(assert (=> b!1131069 m!1279021))

(assert (=> d!318495 d!318697))

(declare-fun b!1131071 () Bool)

(declare-fun e!722615 () Bool)

(declare-fun e!722617 () Bool)

(assert (=> b!1131071 (= e!722615 e!722617)))

(declare-fun res!508393 () Bool)

(assert (=> b!1131071 (=> res!508393 e!722617)))

(declare-fun e!722618 () Bool)

(assert (=> b!1131071 (= res!508393 e!722618)))

(declare-fun res!508392 () Bool)

(assert (=> b!1131071 (=> (not res!508392) (not e!722618))))

(assert (=> b!1131071 (= res!508392 (= (h!16356 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) (h!16356 lt!379433)))))

(declare-fun b!1131073 () Bool)

(assert (=> b!1131073 (= e!722617 (subseq!172 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) (t!106833 lt!379433)))))

(declare-fun b!1131072 () Bool)

(assert (=> b!1131072 (= e!722618 (subseq!172 (t!106833 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) (t!106833 lt!379433)))))

(declare-fun d!318701 () Bool)

(declare-fun res!508391 () Bool)

(declare-fun e!722616 () Bool)

(assert (=> d!318701 (=> res!508391 e!722616)))

(assert (=> d!318701 (= res!508391 ((_ is Nil!10955) (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))

(assert (=> d!318701 (= (subseq!172 (slice!62 lt!379433 (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lt!379433) e!722616)))

(declare-fun b!1131070 () Bool)

(assert (=> b!1131070 (= e!722616 e!722615)))

(declare-fun res!508390 () Bool)

(assert (=> b!1131070 (=> (not res!508390) (not e!722615))))

(assert (=> b!1131070 (= res!508390 ((_ is Cons!10955) lt!379433))))

(assert (= (and d!318701 (not res!508391)) b!1131070))

(assert (= (and b!1131070 res!508390) b!1131071))

(assert (= (and b!1131071 res!508392) b!1131072))

(assert (= (and b!1131071 (not res!508393)) b!1131073))

(assert (=> b!1131073 m!1279315))

(declare-fun m!1280111 () Bool)

(assert (=> b!1131073 m!1280111))

(declare-fun m!1280113 () Bool)

(assert (=> b!1131072 m!1280113))

(assert (=> d!318495 d!318701))

(declare-fun b!1131088 () Bool)

(declare-fun e!722627 () Int)

(assert (=> b!1131088 (= e!722627 0)))

(declare-fun b!1131089 () Bool)

(declare-fun e!722629 () Int)

(assert (=> b!1131089 (= e!722629 lt!379384)))

(declare-fun b!1131090 () Bool)

(declare-fun e!722628 () List!10979)

(assert (=> b!1131090 (= e!722628 Nil!10955)))

(declare-fun b!1131091 () Bool)

(assert (=> b!1131091 (= e!722628 (Cons!10955 (h!16356 lt!379437) (take!15 (t!106833 lt!379437) (- lt!379384 1))))))

(declare-fun b!1131093 () Bool)

(declare-fun e!722630 () Bool)

(declare-fun lt!379797 () List!10979)

(assert (=> b!1131093 (= e!722630 (= (size!8539 lt!379797) e!722627))))

(declare-fun c!189528 () Bool)

(assert (=> b!1131093 (= c!189528 (<= lt!379384 0))))

(declare-fun b!1131094 () Bool)

(assert (=> b!1131094 (= e!722627 e!722629)))

(declare-fun c!189529 () Bool)

(assert (=> b!1131094 (= c!189529 (>= lt!379384 (size!8539 lt!379437)))))

(declare-fun d!318703 () Bool)

(assert (=> d!318703 e!722630))

(declare-fun res!508396 () Bool)

(assert (=> d!318703 (=> (not res!508396) (not e!722630))))

(assert (=> d!318703 (= res!508396 (= ((_ map implies) (content!1572 lt!379797) (content!1572 lt!379437)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318703 (= lt!379797 e!722628)))

(declare-fun c!189527 () Bool)

(assert (=> d!318703 (= c!189527 (or ((_ is Nil!10955) lt!379437) (<= lt!379384 0)))))

(assert (=> d!318703 (= (take!15 lt!379437 lt!379384) lt!379797)))

(declare-fun b!1131092 () Bool)

(assert (=> b!1131092 (= e!722629 (size!8539 lt!379437))))

(assert (= (and d!318703 c!189527) b!1131090))

(assert (= (and d!318703 (not c!189527)) b!1131091))

(assert (= (and d!318703 res!508396) b!1131093))

(assert (= (and b!1131093 c!189528) b!1131088))

(assert (= (and b!1131093 (not c!189528)) b!1131094))

(assert (= (and b!1131094 c!189529) b!1131092))

(assert (= (and b!1131094 (not c!189529)) b!1131089))

(declare-fun m!1280117 () Bool)

(assert (=> d!318703 m!1280117))

(declare-fun m!1280121 () Bool)

(assert (=> d!318703 m!1280121))

(declare-fun m!1280123 () Bool)

(assert (=> b!1131092 m!1280123))

(declare-fun m!1280125 () Bool)

(assert (=> b!1131093 m!1280125))

(declare-fun m!1280127 () Bool)

(assert (=> b!1131091 m!1280127))

(assert (=> b!1131094 m!1280123))

(assert (=> d!318495 d!318703))

(declare-fun bs!277676 () Bool)

(declare-fun d!318709 () Bool)

(assert (= bs!277676 (and d!318709 d!318569)))

(declare-fun lambda!45528 () Int)

(assert (=> bs!277676 (= lambda!45528 lambda!45511)))

(declare-fun bs!277677 () Bool)

(assert (= bs!277677 (and d!318709 d!318565)))

(assert (=> bs!277677 (= (= Lexer!1593 lt!379402) (= lambda!45528 lambda!45510))))

(declare-fun bs!277678 () Bool)

(assert (= bs!277678 (and d!318709 d!318691)))

(assert (=> bs!277678 (= lambda!45528 lambda!45520)))

(declare-fun bs!277679 () Bool)

(assert (= bs!277679 (and d!318709 b!1130989)))

(assert (=> bs!277679 (= lambda!45528 lambda!45519)))

(declare-fun bs!277680 () Bool)

(assert (= bs!277680 (and d!318709 d!318543)))

(assert (=> bs!277680 (= (= Lexer!1593 lt!379381) (= lambda!45528 lambda!45509))))

(declare-fun bs!277681 () Bool)

(assert (= bs!277681 (and d!318709 d!318571)))

(assert (=> bs!277681 (= (= Lexer!1593 lt!379404) (= lambda!45528 lambda!45512))))

(declare-fun bs!277682 () Bool)

(assert (= bs!277682 (and d!318709 d!318495)))

(assert (=> bs!277682 (= lambda!45528 lambda!45501)))

(declare-fun b!1131126 () Bool)

(declare-fun e!722658 () Bool)

(assert (=> b!1131126 (= e!722658 true)))

(declare-fun b!1131125 () Bool)

(declare-fun e!722657 () Bool)

(assert (=> b!1131125 (= e!722657 e!722658)))

(declare-fun b!1131124 () Bool)

(declare-fun e!722656 () Bool)

(assert (=> b!1131124 (= e!722656 e!722657)))

(assert (=> d!318709 e!722656))

(assert (= b!1131125 b!1131126))

(assert (= b!1131124 b!1131125))

(assert (= (and d!318709 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131124))

(assert (=> b!1131126 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45528))))

(assert (=> b!1131126 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45528))))

(assert (=> d!318709 true))

(declare-fun e!722655 () Bool)

(assert (=> d!318709 e!722655))

(declare-fun res!508408 () Bool)

(assert (=> d!318709 (=> (not res!508408) (not e!722655))))

(declare-fun lt!379813 () Bool)

(assert (=> d!318709 (= res!508408 (= lt!379813 (forall!2640 (list!3958 (tokens!1450 pt!21)) lambda!45528)))))

(assert (=> d!318709 (= lt!379813 (forall!2641 (tokens!1450 pt!21) lambda!45528))))

(assert (=> d!318709 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318709 (= (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (tokens!1450 pt!21)) lt!379813)))

(declare-fun b!1131123 () Bool)

(assert (=> b!1131123 (= e!722655 (= lt!379813 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (tokens!1450 pt!21)))))))

(assert (= (and d!318709 res!508408) b!1131123))

(assert (=> d!318709 m!1279305))

(assert (=> d!318709 m!1279305))

(declare-fun m!1280167 () Bool)

(assert (=> d!318709 m!1280167))

(declare-fun m!1280169 () Bool)

(assert (=> d!318709 m!1280169))

(assert (=> d!318709 m!1279015))

(assert (=> b!1131123 m!1279305))

(assert (=> b!1131123 m!1279305))

(assert (=> b!1131123 m!1279333))

(assert (=> d!318495 d!318709))

(declare-fun b!1131127 () Bool)

(declare-fun e!722659 () Int)

(assert (=> b!1131127 (= e!722659 0)))

(declare-fun b!1131128 () Bool)

(declare-fun e!722661 () Bool)

(declare-fun lt!379814 () List!10979)

(declare-fun e!722662 () Int)

(assert (=> b!1131128 (= e!722661 (= (size!8539 lt!379814) e!722662))))

(declare-fun c!189535 () Bool)

(assert (=> b!1131128 (= c!189535 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1131129 () Bool)

(declare-fun e!722660 () List!10979)

(assert (=> b!1131129 (= e!722660 lt!379406)))

(declare-fun bm!80646 () Bool)

(declare-fun call!80651 () Int)

(assert (=> bm!80646 (= call!80651 (size!8539 lt!379406))))

(declare-fun b!1131130 () Bool)

(declare-fun e!722663 () List!10979)

(assert (=> b!1131130 (= e!722663 Nil!10955)))

(declare-fun b!1131131 () Bool)

(assert (=> b!1131131 (= e!722659 (- call!80651 (ite c!189407 lt!378986 lt!378984)))))

(declare-fun d!318727 () Bool)

(assert (=> d!318727 e!722661))

(declare-fun res!508409 () Bool)

(assert (=> d!318727 (=> (not res!508409) (not e!722661))))

(assert (=> d!318727 (= res!508409 (= ((_ map implies) (content!1572 lt!379814) (content!1572 lt!379406)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318727 (= lt!379814 e!722663)))

(declare-fun c!189534 () Bool)

(assert (=> d!318727 (= c!189534 ((_ is Nil!10955) lt!379406))))

(assert (=> d!318727 (= (drop!417 lt!379406 (ite c!189407 lt!378986 lt!378984)) lt!379814)))

(declare-fun b!1131132 () Bool)

(assert (=> b!1131132 (= e!722660 (drop!417 (t!106833 lt!379406) (- (ite c!189407 lt!378986 lt!378984) 1)))))

(declare-fun b!1131133 () Bool)

(assert (=> b!1131133 (= e!722662 e!722659)))

(declare-fun c!189536 () Bool)

(assert (=> b!1131133 (= c!189536 (>= (ite c!189407 lt!378986 lt!378984) call!80651))))

(declare-fun b!1131134 () Bool)

(assert (=> b!1131134 (= e!722663 e!722660)))

(declare-fun c!189537 () Bool)

(assert (=> b!1131134 (= c!189537 (<= (ite c!189407 lt!378986 lt!378984) 0))))

(declare-fun b!1131135 () Bool)

(assert (=> b!1131135 (= e!722662 call!80651)))

(assert (= (and d!318727 c!189534) b!1131130))

(assert (= (and d!318727 (not c!189534)) b!1131134))

(assert (= (and b!1131134 c!189537) b!1131129))

(assert (= (and b!1131134 (not c!189537)) b!1131132))

(assert (= (and d!318727 res!508409) b!1131128))

(assert (= (and b!1131128 c!189535) b!1131135))

(assert (= (and b!1131128 (not c!189535)) b!1131133))

(assert (= (and b!1131133 c!189536) b!1131127))

(assert (= (and b!1131133 (not c!189536)) b!1131131))

(assert (= (or b!1131135 b!1131133 b!1131131) bm!80646))

(declare-fun m!1280171 () Bool)

(assert (=> b!1131128 m!1280171))

(declare-fun m!1280173 () Bool)

(assert (=> bm!80646 m!1280173))

(declare-fun m!1280175 () Bool)

(assert (=> d!318727 m!1280175))

(declare-fun m!1280177 () Bool)

(assert (=> d!318727 m!1280177))

(declare-fun m!1280179 () Bool)

(assert (=> b!1131132 m!1280179))

(assert (=> d!318495 d!318727))

(declare-fun bs!277683 () Bool)

(declare-fun d!318729 () Bool)

(assert (= bs!277683 (and d!318729 d!318709)))

(declare-fun lambda!45529 () Int)

(assert (=> bs!277683 (= lambda!45529 lambda!45528)))

(declare-fun bs!277684 () Bool)

(assert (= bs!277684 (and d!318729 d!318569)))

(assert (=> bs!277684 (= lambda!45529 lambda!45511)))

(declare-fun bs!277685 () Bool)

(assert (= bs!277685 (and d!318729 d!318565)))

(assert (=> bs!277685 (= (= Lexer!1593 lt!379402) (= lambda!45529 lambda!45510))))

(declare-fun bs!277686 () Bool)

(assert (= bs!277686 (and d!318729 d!318691)))

(assert (=> bs!277686 (= lambda!45529 lambda!45520)))

(declare-fun bs!277687 () Bool)

(assert (= bs!277687 (and d!318729 b!1130989)))

(assert (=> bs!277687 (= lambda!45529 lambda!45519)))

(declare-fun bs!277688 () Bool)

(assert (= bs!277688 (and d!318729 d!318543)))

(assert (=> bs!277688 (= (= Lexer!1593 lt!379381) (= lambda!45529 lambda!45509))))

(declare-fun bs!277689 () Bool)

(assert (= bs!277689 (and d!318729 d!318571)))

(assert (=> bs!277689 (= (= Lexer!1593 lt!379404) (= lambda!45529 lambda!45512))))

(declare-fun bs!277690 () Bool)

(assert (= bs!277690 (and d!318729 d!318495)))

(assert (=> bs!277690 (= lambda!45529 lambda!45501)))

(declare-fun b!1131139 () Bool)

(declare-fun e!722667 () Bool)

(assert (=> b!1131139 (= e!722667 true)))

(declare-fun b!1131138 () Bool)

(declare-fun e!722666 () Bool)

(assert (=> b!1131138 (= e!722666 e!722667)))

(declare-fun b!1131137 () Bool)

(declare-fun e!722665 () Bool)

(assert (=> b!1131137 (= e!722665 e!722666)))

(assert (=> d!318729 e!722665))

(assert (= b!1131138 b!1131139))

(assert (= b!1131137 b!1131138))

(assert (= (and d!318729 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131137))

(assert (=> b!1131139 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45529))))

(assert (=> b!1131139 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45529))))

(assert (=> d!318729 true))

(declare-fun e!722664 () Bool)

(assert (=> d!318729 e!722664))

(declare-fun res!508410 () Bool)

(assert (=> d!318729 (=> (not res!508410) (not e!722664))))

(declare-fun lt!379815 () Bool)

(assert (=> d!318729 (= res!508410 (= lt!379815 (forall!2640 (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) lambda!45529)))))

(assert (=> d!318729 (= lt!379815 (forall!2641 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986))) lambda!45529))))

(assert (=> d!318729 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318729 (= (rulesProduceEachTokenIndividually!637 Lexer!1593 (rules!9208 pt!21) (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))) lt!379815)))

(declare-fun b!1131136 () Bool)

(assert (=> b!1131136 (= e!722664 (= lt!379815 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) (list!3958 (slice!61 (tokens!1450 pt!21) (ite c!189407 lt!378986 lt!378984) (ite c!189407 (+ 1 lt!378984) (+ 1 lt!378986)))))))))

(assert (= (and d!318729 res!508410) b!1131136))

(assert (=> d!318729 m!1279295))

(assert (=> d!318729 m!1279289))

(assert (=> d!318729 m!1279289))

(declare-fun m!1280181 () Bool)

(assert (=> d!318729 m!1280181))

(assert (=> d!318729 m!1279295))

(declare-fun m!1280183 () Bool)

(assert (=> d!318729 m!1280183))

(assert (=> d!318729 m!1279015))

(assert (=> b!1131136 m!1279295))

(assert (=> b!1131136 m!1279289))

(assert (=> b!1131136 m!1279289))

(assert (=> b!1131136 m!1279291))

(assert (=> d!318495 d!318729))

(declare-fun d!318731 () Bool)

(assert (=> d!318731 (= (list!3958 (tokens!1450 pt!21)) (list!3962 (c!189410 (tokens!1450 pt!21))))))

(declare-fun bs!277691 () Bool)

(assert (= bs!277691 d!318731))

(declare-fun m!1280185 () Bool)

(assert (=> bs!277691 m!1280185))

(assert (=> d!318495 d!318731))

(declare-fun b!1131140 () Bool)

(declare-fun e!722669 () Bool)

(declare-fun lt!379834 () List!10979)

(assert (=> b!1131140 (= e!722669 (<= 0 (size!8539 lt!379834)))))

(declare-fun b!1131141 () Bool)

(declare-fun e!722672 () Bool)

(assert (=> b!1131141 (= e!722672 (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (tokens!1450 pt!21) (+ 0 1) (rules!9208 pt!21)))))

(declare-fun b!1131142 () Bool)

(declare-fun res!508414 () Bool)

(declare-fun e!722668 () Bool)

(assert (=> b!1131142 (=> (not res!508414) (not e!722668))))

(assert (=> b!1131142 (= res!508414 (not (isEmpty!6785 (rules!9208 pt!21))))))

(declare-fun b!1131143 () Bool)

(declare-fun res!508411 () Bool)

(assert (=> b!1131143 (=> (not res!508411) (not e!722668))))

(declare-fun lt!379820 () List!10979)

(declare-fun lt!379833 () List!10979)

(assert (=> b!1131143 (= res!508411 (subseq!172 lt!379820 lt!379833))))

(declare-fun b!1131144 () Bool)

(declare-fun e!722671 () Bool)

(assert (=> b!1131144 (= e!722671 e!722672)))

(declare-fun res!508418 () Bool)

(assert (=> b!1131144 (=> (not res!508418) (not e!722672))))

(assert (=> b!1131144 (= res!508418 (separableTokensPredicate!93 Lexer!1593 (apply!2266 (tokens!1450 pt!21) 0) (apply!2266 (tokens!1450 pt!21) (+ 0 1)) (rules!9208 pt!21)))))

(declare-fun lt!379839 () Unit!16639)

(declare-fun Unit!16657 () Unit!16639)

(assert (=> b!1131144 (= lt!379839 Unit!16657)))

(assert (=> b!1131144 (> (size!8536 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ 0 1)))) 0)))

(declare-fun lt!379822 () Unit!16639)

(declare-fun Unit!16658 () Unit!16639)

(assert (=> b!1131144 (= lt!379822 Unit!16658)))

(assert (=> b!1131144 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) (+ 0 1)))))

(declare-fun lt!379829 () Unit!16639)

(declare-fun Unit!16659 () Unit!16639)

(assert (=> b!1131144 (= lt!379829 Unit!16659)))

(assert (=> b!1131144 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) 0))))

(declare-fun lt!379818 () Unit!16639)

(declare-fun lt!379824 () Unit!16639)

(assert (=> b!1131144 (= lt!379818 lt!379824)))

(declare-fun lt!379817 () Token!3440)

(assert (=> b!1131144 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) lt!379817)))

(declare-fun lt!379843 () List!10979)

(assert (=> b!1131144 (= lt!379824 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 Lexer!1593 (rules!9208 pt!21) lt!379843 lt!379817))))

(assert (=> b!1131144 (= lt!379817 (apply!2266 (tokens!1450 pt!21) (+ 0 1)))))

(assert (=> b!1131144 (= lt!379843 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379848 () Unit!16639)

(declare-fun lt!379845 () Unit!16639)

(assert (=> b!1131144 (= lt!379848 lt!379845)))

(declare-fun lt!379826 () Token!3440)

(assert (=> b!1131144 (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) lt!379826)))

(declare-fun lt!379842 () List!10979)

(assert (=> b!1131144 (= lt!379845 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 Lexer!1593 (rules!9208 pt!21) lt!379842 lt!379826))))

(assert (=> b!1131144 (= lt!379826 (apply!2266 (tokens!1450 pt!21) 0))))

(assert (=> b!1131144 (= lt!379842 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379841 () Unit!16639)

(declare-fun lt!379846 () Unit!16639)

(assert (=> b!1131144 (= lt!379841 lt!379846)))

(declare-fun lt!379844 () List!10979)

(declare-fun lt!379827 () Int)

(assert (=> b!1131144 (= (tail!1613 (drop!417 lt!379844 lt!379827)) (drop!417 lt!379844 (+ lt!379827 1)))))

(assert (=> b!1131144 (= lt!379846 (lemmaDropTail!322 lt!379844 lt!379827))))

(assert (=> b!1131144 (= lt!379827 (+ 0 1))))

(assert (=> b!1131144 (= lt!379844 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379835 () Unit!16639)

(declare-fun lt!379836 () Unit!16639)

(assert (=> b!1131144 (= lt!379835 lt!379836)))

(declare-fun lt!379823 () List!10979)

(assert (=> b!1131144 (= (tail!1613 (drop!417 lt!379823 0)) (drop!417 lt!379823 (+ 0 1)))))

(assert (=> b!1131144 (= lt!379836 (lemmaDropTail!322 lt!379823 0))))

(assert (=> b!1131144 (= lt!379823 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379838 () Unit!16639)

(declare-fun lt!379821 () Unit!16639)

(assert (=> b!1131144 (= lt!379838 lt!379821)))

(declare-fun lt!379847 () List!10979)

(declare-fun lt!379830 () Int)

(assert (=> b!1131144 (= (head!2053 (drop!417 lt!379847 lt!379830)) (apply!2267 lt!379847 lt!379830))))

(assert (=> b!1131144 (= lt!379821 (lemmaDropApply!334 lt!379847 lt!379830))))

(assert (=> b!1131144 (= lt!379830 (+ 0 1))))

(assert (=> b!1131144 (= lt!379847 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379832 () Unit!16639)

(declare-fun lt!379840 () Unit!16639)

(assert (=> b!1131144 (= lt!379832 lt!379840)))

(declare-fun lt!379831 () List!10979)

(assert (=> b!1131144 (= (head!2053 (drop!417 lt!379831 0)) (apply!2267 lt!379831 0))))

(assert (=> b!1131144 (= lt!379840 (lemmaDropApply!334 lt!379831 0))))

(assert (=> b!1131144 (= lt!379831 (list!3958 (tokens!1450 pt!21)))))

(declare-fun b!1131146 () Bool)

(assert (=> b!1131146 (= e!722668 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) lt!379833))))

(declare-fun b!1131147 () Bool)

(declare-fun e!722670 () Bool)

(assert (=> b!1131147 (= e!722670 (<= 0 (size!8533 (tokens!1450 pt!21))))))

(declare-fun b!1131145 () Bool)

(declare-fun res!508417 () Bool)

(assert (=> b!1131145 (=> (not res!508417) (not e!722668))))

(assert (=> b!1131145 (= res!508417 (rulesInvariant!1469 Lexer!1593 (rules!9208 pt!21)))))

(declare-fun d!318733 () Bool)

(declare-fun lt!379816 () Bool)

(assert (=> d!318733 (= lt!379816 (tokensListTwoByTwoPredicateSeparableList!69 Lexer!1593 (dropList!290 (tokens!1450 pt!21) 0) (rules!9208 pt!21)))))

(declare-fun lt!379837 () Unit!16639)

(declare-fun lt!379825 () Unit!16639)

(assert (=> d!318733 (= lt!379837 lt!379825)))

(assert (=> d!318733 (rulesProduceEachTokenIndividuallyList!470 Lexer!1593 (rules!9208 pt!21) lt!379820)))

(assert (=> d!318733 (= lt!379825 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!6 Lexer!1593 (rules!9208 pt!21) lt!379833 lt!379820))))

(assert (=> d!318733 e!722668))

(declare-fun res!508416 () Bool)

(assert (=> d!318733 (=> (not res!508416) (not e!722668))))

(assert (=> d!318733 (= res!508416 ((_ is Lexer!1593) Lexer!1593))))

(assert (=> d!318733 (= lt!379820 (dropList!290 (tokens!1450 pt!21) 0))))

(assert (=> d!318733 (= lt!379833 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379819 () Unit!16639)

(declare-fun lt!379828 () Unit!16639)

(assert (=> d!318733 (= lt!379819 lt!379828)))

(assert (=> d!318733 (subseq!172 (drop!417 lt!379834 0) lt!379834)))

(assert (=> d!318733 (= lt!379828 (lemmaDropSubSeq!6 lt!379834 0))))

(assert (=> d!318733 e!722669))

(declare-fun res!508413 () Bool)

(assert (=> d!318733 (=> (not res!508413) (not e!722669))))

(assert (=> d!318733 (= res!508413 (>= 0 0))))

(assert (=> d!318733 (= lt!379834 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318733 (= lt!379816 e!722671)))

(declare-fun res!508412 () Bool)

(assert (=> d!318733 (=> res!508412 e!722671)))

(assert (=> d!318733 (= res!508412 (not (< 0 (- (size!8533 (tokens!1450 pt!21)) 1))))))

(assert (=> d!318733 e!722670))

(declare-fun res!508415 () Bool)

(assert (=> d!318733 (=> (not res!508415) (not e!722670))))

(assert (=> d!318733 (= res!508415 (>= 0 0))))

(assert (=> d!318733 (= (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (tokens!1450 pt!21) 0 (rules!9208 pt!21)) lt!379816)))

(assert (= (and d!318733 res!508415) b!1131147))

(assert (= (and d!318733 (not res!508412)) b!1131144))

(assert (= (and b!1131144 res!508418) b!1131141))

(assert (= (and d!318733 res!508413) b!1131140))

(assert (= (and d!318733 res!508416) b!1131142))

(assert (= (and b!1131142 res!508414) b!1131145))

(assert (= (and b!1131145 res!508417) b!1131143))

(assert (= (and b!1131143 res!508411) b!1131146))

(declare-fun m!1280187 () Bool)

(assert (=> b!1131141 m!1280187))

(declare-fun m!1280189 () Bool)

(assert (=> b!1131146 m!1280189))

(assert (=> b!1131145 m!1279017))

(assert (=> b!1131142 m!1279015))

(declare-fun m!1280191 () Bool)

(assert (=> d!318733 m!1280191))

(declare-fun m!1280193 () Bool)

(assert (=> d!318733 m!1280193))

(assert (=> d!318733 m!1279305))

(declare-fun m!1280195 () Bool)

(assert (=> d!318733 m!1280195))

(assert (=> d!318733 m!1280191))

(declare-fun m!1280197 () Bool)

(assert (=> d!318733 m!1280197))

(assert (=> d!318733 m!1278981))

(declare-fun m!1280199 () Bool)

(assert (=> d!318733 m!1280199))

(declare-fun m!1280201 () Bool)

(assert (=> d!318733 m!1280201))

(assert (=> d!318733 m!1280197))

(declare-fun m!1280203 () Bool)

(assert (=> d!318733 m!1280203))

(declare-fun m!1280205 () Bool)

(assert (=> b!1131140 m!1280205))

(declare-fun m!1280207 () Bool)

(assert (=> b!1131144 m!1280207))

(declare-fun m!1280209 () Bool)

(assert (=> b!1131144 m!1280209))

(declare-fun m!1280211 () Bool)

(assert (=> b!1131144 m!1280211))

(declare-fun m!1280213 () Bool)

(assert (=> b!1131144 m!1280213))

(assert (=> b!1131144 m!1279305))

(assert (=> b!1131144 m!1280207))

(declare-fun m!1280215 () Bool)

(assert (=> b!1131144 m!1280215))

(declare-fun m!1280217 () Bool)

(assert (=> b!1131144 m!1280217))

(declare-fun m!1280219 () Bool)

(assert (=> b!1131144 m!1280219))

(declare-fun m!1280221 () Bool)

(assert (=> b!1131144 m!1280221))

(declare-fun m!1280223 () Bool)

(assert (=> b!1131144 m!1280223))

(assert (=> b!1131144 m!1280209))

(declare-fun m!1280225 () Bool)

(assert (=> b!1131144 m!1280225))

(declare-fun m!1280227 () Bool)

(assert (=> b!1131144 m!1280227))

(declare-fun m!1280229 () Bool)

(assert (=> b!1131144 m!1280229))

(assert (=> b!1131144 m!1280217))

(assert (=> b!1131144 m!1280209))

(assert (=> b!1131144 m!1280207))

(declare-fun m!1280231 () Bool)

(assert (=> b!1131144 m!1280231))

(declare-fun m!1280233 () Bool)

(assert (=> b!1131144 m!1280233))

(declare-fun m!1280235 () Bool)

(assert (=> b!1131144 m!1280235))

(assert (=> b!1131144 m!1280233))

(declare-fun m!1280237 () Bool)

(assert (=> b!1131144 m!1280237))

(assert (=> b!1131144 m!1280227))

(declare-fun m!1280239 () Bool)

(assert (=> b!1131144 m!1280239))

(declare-fun m!1280241 () Bool)

(assert (=> b!1131144 m!1280241))

(assert (=> b!1131144 m!1280209))

(declare-fun m!1280243 () Bool)

(assert (=> b!1131144 m!1280243))

(declare-fun m!1280245 () Bool)

(assert (=> b!1131144 m!1280245))

(assert (=> b!1131144 m!1280231))

(declare-fun m!1280247 () Bool)

(assert (=> b!1131144 m!1280247))

(declare-fun m!1280249 () Bool)

(assert (=> b!1131144 m!1280249))

(declare-fun m!1280251 () Bool)

(assert (=> b!1131144 m!1280251))

(declare-fun m!1280253 () Bool)

(assert (=> b!1131144 m!1280253))

(assert (=> b!1131144 m!1280225))

(declare-fun m!1280255 () Bool)

(assert (=> b!1131144 m!1280255))

(declare-fun m!1280257 () Bool)

(assert (=> b!1131144 m!1280257))

(declare-fun m!1280259 () Bool)

(assert (=> b!1131144 m!1280259))

(assert (=> b!1131147 m!1278981))

(declare-fun m!1280261 () Bool)

(assert (=> b!1131143 m!1280261))

(assert (=> d!318495 d!318733))

(declare-fun bs!277692 () Bool)

(declare-fun b!1131170 () Bool)

(assert (= bs!277692 (and b!1131170 d!318709)))

(declare-fun lambda!45532 () Int)

(assert (=> bs!277692 (= lambda!45532 lambda!45528)))

(declare-fun bs!277693 () Bool)

(assert (= bs!277693 (and b!1131170 d!318569)))

(assert (=> bs!277693 (= lambda!45532 lambda!45511)))

(declare-fun bs!277694 () Bool)

(assert (= bs!277694 (and b!1131170 d!318565)))

(assert (=> bs!277694 (= (= Lexer!1593 lt!379402) (= lambda!45532 lambda!45510))))

(declare-fun bs!277695 () Bool)

(assert (= bs!277695 (and b!1131170 d!318691)))

(assert (=> bs!277695 (= lambda!45532 lambda!45520)))

(declare-fun bs!277696 () Bool)

(assert (= bs!277696 (and b!1131170 b!1130989)))

(assert (=> bs!277696 (= lambda!45532 lambda!45519)))

(declare-fun bs!277697 () Bool)

(assert (= bs!277697 (and b!1131170 d!318571)))

(assert (=> bs!277697 (= (= Lexer!1593 lt!379404) (= lambda!45532 lambda!45512))))

(declare-fun bs!277698 () Bool)

(assert (= bs!277698 (and b!1131170 d!318495)))

(assert (=> bs!277698 (= lambda!45532 lambda!45501)))

(declare-fun bs!277699 () Bool)

(assert (= bs!277699 (and b!1131170 d!318729)))

(assert (=> bs!277699 (= lambda!45532 lambda!45529)))

(declare-fun bs!277700 () Bool)

(assert (= bs!277700 (and b!1131170 d!318543)))

(assert (=> bs!277700 (= (= Lexer!1593 lt!379381) (= lambda!45532 lambda!45509))))

(declare-fun b!1131174 () Bool)

(declare-fun e!722696 () Bool)

(assert (=> b!1131174 (= e!722696 true)))

(declare-fun b!1131173 () Bool)

(declare-fun e!722695 () Bool)

(assert (=> b!1131173 (= e!722695 e!722696)))

(declare-fun b!1131172 () Bool)

(declare-fun e!722694 () Bool)

(assert (=> b!1131172 (= e!722694 e!722695)))

(assert (=> b!1131170 e!722694))

(assert (= b!1131173 b!1131174))

(assert (= b!1131172 b!1131173))

(assert (= (and b!1131170 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131172))

(assert (=> b!1131174 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45532))))

(assert (=> b!1131174 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45532))))

(declare-fun b!1131171 () Bool)

(declare-fun e!722691 () Bool)

(declare-fun lt!379861 () List!10979)

(assert (=> b!1131171 (= e!722691 (subseq!172 lt!379861 lt!379437))))

(declare-fun b!1131169 () Bool)

(declare-fun e!722690 () Bool)

(declare-fun lt!379863 () List!10979)

(assert (=> b!1131169 (= e!722690 (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (t!106833 lt!379863)))))

(declare-fun b!1131168 () Bool)

(declare-fun e!722693 () Bool)

(assert (=> b!1131168 (= e!722693 e!722690)))

(declare-fun res!508441 () Bool)

(assert (=> b!1131168 (=> (not res!508441) (not e!722690))))

(assert (=> b!1131168 (= res!508441 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 lt!379863)))))

(declare-fun e!722692 () Bool)

(assert (=> b!1131170 (= e!722692 (tokensListTwoByTwoPredicateSeparableList!69 lt!379404 (take!15 lt!379437 lt!379384) (rules!9208 pt!21)))))

(declare-fun lt!379859 () Unit!16639)

(declare-fun lt!379860 () Unit!16639)

(assert (=> b!1131170 (= lt!379859 lt!379860)))

(assert (=> b!1131170 (forall!2640 lt!379861 lambda!45532)))

(assert (=> b!1131170 (= lt!379860 (lemmaForallSubseq!72 lt!379861 lt!379437 lambda!45532))))

(assert (=> b!1131170 e!722691))

(declare-fun res!508442 () Bool)

(assert (=> b!1131170 (=> (not res!508442) (not e!722691))))

(assert (=> b!1131170 (= res!508442 (forall!2640 lt!379437 lambda!45532))))

(assert (=> b!1131170 (= lt!379861 (take!15 lt!379437 lt!379384))))

(declare-fun d!318735 () Bool)

(assert (=> d!318735 e!722692))

(declare-fun res!508439 () Bool)

(assert (=> d!318735 (=> (not res!508439) (not e!722692))))

(assert (=> d!318735 (= res!508439 (= (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (take!15 lt!379437 lt!379384)) e!722693))))

(declare-fun res!508440 () Bool)

(assert (=> d!318735 (=> res!508440 e!722693)))

(assert (=> d!318735 (= res!508440 (not ((_ is Cons!10955) lt!379863)))))

(assert (=> d!318735 (= lt!379863 (take!15 lt!379437 lt!379384))))

(declare-fun lt!379862 () Unit!16639)

(declare-fun choose!7236 (LexerInterface!1595 List!10979 Int List!10980) Unit!16639)

(assert (=> d!318735 (= lt!379862 (choose!7236 lt!379404 lt!379437 lt!379384 (rules!9208 pt!21)))))

(assert (=> d!318735 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318735 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!13 lt!379404 lt!379437 lt!379384 (rules!9208 pt!21)) lt!379862)))

(assert (= (and d!318735 (not res!508440)) b!1131168))

(assert (= (and b!1131168 res!508441) b!1131169))

(assert (= (and d!318735 res!508439) b!1131170))

(assert (= (and b!1131170 res!508442) b!1131171))

(declare-fun m!1280267 () Bool)

(assert (=> b!1131168 m!1280267))

(assert (=> b!1131170 m!1279267))

(assert (=> b!1131170 m!1279269))

(declare-fun m!1280269 () Bool)

(assert (=> b!1131170 m!1280269))

(declare-fun m!1280271 () Bool)

(assert (=> b!1131170 m!1280271))

(assert (=> b!1131170 m!1279267))

(declare-fun m!1280273 () Bool)

(assert (=> b!1131170 m!1280273))

(declare-fun m!1280275 () Bool)

(assert (=> b!1131169 m!1280275))

(assert (=> d!318735 m!1279267))

(assert (=> d!318735 m!1279267))

(assert (=> d!318735 m!1279303))

(declare-fun m!1280277 () Bool)

(assert (=> d!318735 m!1280277))

(assert (=> d!318735 m!1279015))

(declare-fun m!1280279 () Bool)

(assert (=> b!1131171 m!1280279))

(assert (=> d!318495 d!318735))

(declare-fun d!318741 () Bool)

(declare-fun lt!379865 () Bool)

(declare-fun e!722697 () Bool)

(assert (=> d!318741 (= lt!379865 e!722697)))

(declare-fun res!508445 () Bool)

(assert (=> d!318741 (=> (not res!508445) (not e!722697))))

(assert (=> d!318741 (= res!508445 (= (list!3958 (_1!6805 (lex!657 lt!379381 (rules!9208 pt!21) (print!594 lt!379381 (singletonSeq!600 (h!16356 lt!379435)))))) (list!3958 (singletonSeq!600 (h!16356 lt!379435)))))))

(declare-fun e!722698 () Bool)

(assert (=> d!318741 (= lt!379865 e!722698)))

(declare-fun res!508443 () Bool)

(assert (=> d!318741 (=> (not res!508443) (not e!722698))))

(declare-fun lt!379864 () tuple2!11916)

(assert (=> d!318741 (= res!508443 (= (size!8533 (_1!6805 lt!379864)) 1))))

(assert (=> d!318741 (= lt!379864 (lex!657 lt!379381 (rules!9208 pt!21) (print!594 lt!379381 (singletonSeq!600 (h!16356 lt!379435)))))))

(assert (=> d!318741 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318741 (= (rulesProduceIndividualToken!642 lt!379381 (rules!9208 pt!21) (h!16356 lt!379435)) lt!379865)))

(declare-fun b!1131175 () Bool)

(declare-fun res!508444 () Bool)

(assert (=> b!1131175 (=> (not res!508444) (not e!722698))))

(assert (=> b!1131175 (= res!508444 (= (apply!2266 (_1!6805 lt!379864) 0) (h!16356 lt!379435)))))

(declare-fun b!1131176 () Bool)

(assert (=> b!1131176 (= e!722698 (isEmpty!6788 (_2!6805 lt!379864)))))

(declare-fun b!1131177 () Bool)

(assert (=> b!1131177 (= e!722697 (isEmpty!6788 (_2!6805 (lex!657 lt!379381 (rules!9208 pt!21) (print!594 lt!379381 (singletonSeq!600 (h!16356 lt!379435)))))))))

(assert (= (and d!318741 res!508443) b!1131175))

(assert (= (and b!1131175 res!508444) b!1131176))

(assert (= (and d!318741 res!508445) b!1131177))

(declare-fun m!1280281 () Bool)

(assert (=> d!318741 m!1280281))

(declare-fun m!1280283 () Bool)

(assert (=> d!318741 m!1280283))

(assert (=> d!318741 m!1280281))

(declare-fun m!1280285 () Bool)

(assert (=> d!318741 m!1280285))

(assert (=> d!318741 m!1279015))

(assert (=> d!318741 m!1280283))

(declare-fun m!1280287 () Bool)

(assert (=> d!318741 m!1280287))

(declare-fun m!1280289 () Bool)

(assert (=> d!318741 m!1280289))

(assert (=> d!318741 m!1280281))

(declare-fun m!1280291 () Bool)

(assert (=> d!318741 m!1280291))

(declare-fun m!1280293 () Bool)

(assert (=> b!1131175 m!1280293))

(declare-fun m!1280295 () Bool)

(assert (=> b!1131176 m!1280295))

(assert (=> b!1131177 m!1280281))

(assert (=> b!1131177 m!1280281))

(assert (=> b!1131177 m!1280283))

(assert (=> b!1131177 m!1280283))

(assert (=> b!1131177 m!1280287))

(declare-fun m!1280297 () Bool)

(assert (=> b!1131177 m!1280297))

(assert (=> b!1130514 d!318741))

(declare-fun d!318743 () Bool)

(declare-fun c!189538 () Bool)

(assert (=> d!318743 (= c!189538 ((_ is Node!3492) (left!9510 (c!189411 indices!2))))))

(declare-fun e!722699 () Bool)

(assert (=> d!318743 (= (inv!14159 (left!9510 (c!189411 indices!2))) e!722699)))

(declare-fun b!1131178 () Bool)

(assert (=> b!1131178 (= e!722699 (inv!14166 (left!9510 (c!189411 indices!2))))))

(declare-fun b!1131179 () Bool)

(declare-fun e!722700 () Bool)

(assert (=> b!1131179 (= e!722699 e!722700)))

(declare-fun res!508446 () Bool)

(assert (=> b!1131179 (= res!508446 (not ((_ is Leaf!5447) (left!9510 (c!189411 indices!2)))))))

(assert (=> b!1131179 (=> res!508446 e!722700)))

(declare-fun b!1131180 () Bool)

(assert (=> b!1131180 (= e!722700 (inv!14167 (left!9510 (c!189411 indices!2))))))

(assert (= (and d!318743 c!189538) b!1131178))

(assert (= (and d!318743 (not c!189538)) b!1131179))

(assert (= (and b!1131179 (not res!508446)) b!1131180))

(declare-fun m!1280299 () Bool)

(assert (=> b!1131178 m!1280299))

(declare-fun m!1280301 () Bool)

(assert (=> b!1131180 m!1280301))

(assert (=> b!1130545 d!318743))

(declare-fun d!318745 () Bool)

(declare-fun c!189539 () Bool)

(assert (=> d!318745 (= c!189539 ((_ is Node!3492) (right!9840 (c!189411 indices!2))))))

(declare-fun e!722701 () Bool)

(assert (=> d!318745 (= (inv!14159 (right!9840 (c!189411 indices!2))) e!722701)))

(declare-fun b!1131181 () Bool)

(assert (=> b!1131181 (= e!722701 (inv!14166 (right!9840 (c!189411 indices!2))))))

(declare-fun b!1131182 () Bool)

(declare-fun e!722702 () Bool)

(assert (=> b!1131182 (= e!722701 e!722702)))

(declare-fun res!508447 () Bool)

(assert (=> b!1131182 (= res!508447 (not ((_ is Leaf!5447) (right!9840 (c!189411 indices!2)))))))

(assert (=> b!1131182 (=> res!508447 e!722702)))

(declare-fun b!1131183 () Bool)

(assert (=> b!1131183 (= e!722702 (inv!14167 (right!9840 (c!189411 indices!2))))))

(assert (= (and d!318745 c!189539) b!1131181))

(assert (= (and d!318745 (not c!189539)) b!1131182))

(assert (= (and b!1131182 (not res!508447)) b!1131183))

(declare-fun m!1280303 () Bool)

(assert (=> b!1131181 m!1280303))

(declare-fun m!1280305 () Bool)

(assert (=> b!1131183 m!1280305))

(assert (=> b!1130545 d!318745))

(declare-fun b!1131195 () Bool)

(declare-fun e!722708 () List!10982)

(declare-fun ++!2912 (List!10982 List!10982) List!10982)

(assert (=> b!1131195 (= e!722708 (++!2912 (list!3956 (left!9511 (c!189412 acc!225))) (list!3956 (right!9841 (c!189412 acc!225)))))))

(declare-fun b!1131192 () Bool)

(declare-fun e!722707 () List!10982)

(assert (=> b!1131192 (= e!722707 Nil!10958)))

(declare-fun d!318747 () Bool)

(declare-fun c!189544 () Bool)

(assert (=> d!318747 (= c!189544 ((_ is Empty!3493) (c!189412 acc!225)))))

(assert (=> d!318747 (= (list!3956 (c!189412 acc!225)) e!722707)))

(declare-fun b!1131194 () Bool)

(declare-fun list!3966 (IArray!6991) List!10982)

(assert (=> b!1131194 (= e!722708 (list!3966 (xs!6186 (c!189412 acc!225))))))

(declare-fun b!1131193 () Bool)

(assert (=> b!1131193 (= e!722707 e!722708)))

(declare-fun c!189545 () Bool)

(assert (=> b!1131193 (= c!189545 ((_ is Leaf!5448) (c!189412 acc!225)))))

(assert (= (and d!318747 c!189544) b!1131192))

(assert (= (and d!318747 (not c!189544)) b!1131193))

(assert (= (and b!1131193 c!189545) b!1131194))

(assert (= (and b!1131193 (not c!189545)) b!1131195))

(declare-fun m!1280307 () Bool)

(assert (=> b!1131195 m!1280307))

(declare-fun m!1280309 () Bool)

(assert (=> b!1131195 m!1280309))

(assert (=> b!1131195 m!1280307))

(assert (=> b!1131195 m!1280309))

(declare-fun m!1280311 () Bool)

(assert (=> b!1131195 m!1280311))

(declare-fun m!1280313 () Bool)

(assert (=> b!1131194 m!1280313))

(assert (=> d!318445 d!318747))

(declare-fun bs!277701 () Bool)

(declare-fun d!318749 () Bool)

(assert (= bs!277701 (and d!318749 d!318709)))

(declare-fun lambda!45533 () Int)

(assert (=> bs!277701 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45528))))

(declare-fun bs!277702 () Bool)

(assert (= bs!277702 (and d!318749 d!318569)))

(assert (=> bs!277702 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45511))))

(declare-fun bs!277703 () Bool)

(assert (= bs!277703 (and d!318749 d!318565)))

(assert (=> bs!277703 (= (= lt!379412 lt!379402) (= lambda!45533 lambda!45510))))

(declare-fun bs!277704 () Bool)

(assert (= bs!277704 (and d!318749 d!318691)))

(assert (=> bs!277704 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45520))))

(declare-fun bs!277705 () Bool)

(assert (= bs!277705 (and d!318749 b!1130989)))

(assert (=> bs!277705 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45519))))

(declare-fun bs!277706 () Bool)

(assert (= bs!277706 (and d!318749 b!1131170)))

(assert (=> bs!277706 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45532))))

(declare-fun bs!277707 () Bool)

(assert (= bs!277707 (and d!318749 d!318571)))

(assert (=> bs!277707 (= (= lt!379412 lt!379404) (= lambda!45533 lambda!45512))))

(declare-fun bs!277708 () Bool)

(assert (= bs!277708 (and d!318749 d!318495)))

(assert (=> bs!277708 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45501))))

(declare-fun bs!277709 () Bool)

(assert (= bs!277709 (and d!318749 d!318729)))

(assert (=> bs!277709 (= (= lt!379412 Lexer!1593) (= lambda!45533 lambda!45529))))

(declare-fun bs!277710 () Bool)

(assert (= bs!277710 (and d!318749 d!318543)))

(assert (=> bs!277710 (= (= lt!379412 lt!379381) (= lambda!45533 lambda!45509))))

(declare-fun b!1131200 () Bool)

(declare-fun e!722713 () Bool)

(assert (=> b!1131200 (= e!722713 true)))

(declare-fun b!1131199 () Bool)

(declare-fun e!722712 () Bool)

(assert (=> b!1131199 (= e!722712 e!722713)))

(declare-fun b!1131198 () Bool)

(declare-fun e!722711 () Bool)

(assert (=> b!1131198 (= e!722711 e!722712)))

(assert (=> d!318749 e!722711))

(assert (= b!1131199 b!1131200))

(assert (= b!1131198 b!1131199))

(assert (= (and d!318749 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131198))

(assert (=> b!1131200 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45533))))

(assert (=> b!1131200 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45533))))

(assert (=> d!318749 true))

(declare-fun lt!379866 () Bool)

(assert (=> d!318749 (= lt!379866 (forall!2640 (t!106833 lt!379432) lambda!45533))))

(declare-fun e!722710 () Bool)

(assert (=> d!318749 (= lt!379866 e!722710)))

(declare-fun res!508449 () Bool)

(assert (=> d!318749 (=> res!508449 e!722710)))

(assert (=> d!318749 (= res!508449 (not ((_ is Cons!10955) (t!106833 lt!379432))))))

(assert (=> d!318749 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318749 (= (rulesProduceEachTokenIndividuallyList!470 lt!379412 (rules!9208 pt!21) (t!106833 lt!379432)) lt!379866)))

(declare-fun b!1131196 () Bool)

(declare-fun e!722709 () Bool)

(assert (=> b!1131196 (= e!722710 e!722709)))

(declare-fun res!508448 () Bool)

(assert (=> b!1131196 (=> (not res!508448) (not e!722709))))

(assert (=> b!1131196 (= res!508448 (rulesProduceIndividualToken!642 lt!379412 (rules!9208 pt!21) (h!16356 (t!106833 lt!379432))))))

(declare-fun b!1131197 () Bool)

(assert (=> b!1131197 (= e!722709 (rulesProduceEachTokenIndividuallyList!470 lt!379412 (rules!9208 pt!21) (t!106833 (t!106833 lt!379432))))))

(assert (= (and d!318749 (not res!508449)) b!1131196))

(assert (= (and b!1131196 res!508448) b!1131197))

(declare-fun m!1280315 () Bool)

(assert (=> d!318749 m!1280315))

(assert (=> d!318749 m!1279015))

(declare-fun m!1280317 () Bool)

(assert (=> b!1131196 m!1280317))

(declare-fun m!1280319 () Bool)

(assert (=> b!1131197 m!1280319))

(assert (=> b!1130510 d!318749))

(declare-fun d!318751 () Bool)

(assert (=> d!318751 (= (inv!14145 (tag!2151 (h!16357 (rules!9208 pt!21)))) (= (mod (str.len (value!61832 (tag!2151 (h!16357 (rules!9208 pt!21))))) 2) 0))))

(assert (=> b!1130556 d!318751))

(declare-fun d!318753 () Bool)

(declare-fun res!508452 () Bool)

(declare-fun e!722716 () Bool)

(assert (=> d!318753 (=> (not res!508452) (not e!722716))))

(declare-fun semiInverseModEq!716 (Int Int) Bool)

(assert (=> d!318753 (= res!508452 (semiInverseModEq!716 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21)))) (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))))))

(assert (=> d!318753 (= (inv!14178 (transformation!1889 (h!16357 (rules!9208 pt!21)))) e!722716)))

(declare-fun b!1131203 () Bool)

(declare-fun equivClasses!683 (Int Int) Bool)

(assert (=> b!1131203 (= e!722716 (equivClasses!683 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21)))) (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))))))

(assert (= (and d!318753 res!508452) b!1131203))

(declare-fun m!1280321 () Bool)

(assert (=> d!318753 m!1280321))

(declare-fun m!1280323 () Bool)

(assert (=> b!1131203 m!1280323))

(assert (=> b!1130556 d!318753))

(assert (=> b!1130353 d!318485))

(declare-fun d!318755 () Bool)

(declare-fun res!508463 () Bool)

(declare-fun e!722725 () Bool)

(assert (=> d!318755 (=> (not res!508463) (not e!722725))))

(declare-fun list!3967 (IArray!6987) List!10979)

(assert (=> d!318755 (= res!508463 (<= (size!8539 (list!3967 (xs!6184 (c!189410 (tokens!1450 pt!21))))) 512))))

(assert (=> d!318755 (= (inv!14175 (c!189410 (tokens!1450 pt!21))) e!722725)))

(declare-fun b!1131214 () Bool)

(declare-fun res!508464 () Bool)

(assert (=> b!1131214 (=> (not res!508464) (not e!722725))))

(assert (=> b!1131214 (= res!508464 (= (csize!7213 (c!189410 (tokens!1450 pt!21))) (size!8539 (list!3967 (xs!6184 (c!189410 (tokens!1450 pt!21)))))))))

(declare-fun b!1131215 () Bool)

(assert (=> b!1131215 (= e!722725 (and (> (csize!7213 (c!189410 (tokens!1450 pt!21))) 0) (<= (csize!7213 (c!189410 (tokens!1450 pt!21))) 512)))))

(assert (= (and d!318755 res!508463) b!1131214))

(assert (= (and b!1131214 res!508464) b!1131215))

(declare-fun m!1280325 () Bool)

(assert (=> d!318755 m!1280325))

(assert (=> d!318755 m!1280325))

(declare-fun m!1280327 () Bool)

(assert (=> d!318755 m!1280327))

(assert (=> b!1131214 m!1280325))

(assert (=> b!1131214 m!1280325))

(assert (=> b!1131214 m!1280327))

(assert (=> b!1130371 d!318755))

(declare-fun d!318757 () Bool)

(declare-fun res!508469 () Bool)

(declare-fun e!722730 () Bool)

(assert (=> d!318757 (=> res!508469 e!722730)))

(assert (=> d!318757 (= res!508469 ((_ is Nil!10957) (list!3957 indices!2)))))

(assert (=> d!318757 (= (forall!2637 (list!3957 indices!2) lambda!45474) e!722730)))

(declare-fun b!1131220 () Bool)

(declare-fun e!722731 () Bool)

(assert (=> b!1131220 (= e!722730 e!722731)))

(declare-fun res!508470 () Bool)

(assert (=> b!1131220 (=> (not res!508470) (not e!722731))))

(declare-fun dynLambda!4828 (Int Int) Bool)

(assert (=> b!1131220 (= res!508470 (dynLambda!4828 lambda!45474 (h!16358 (list!3957 indices!2))))))

(declare-fun b!1131221 () Bool)

(assert (=> b!1131221 (= e!722731 (forall!2637 (t!106835 (list!3957 indices!2)) lambda!45474))))

(assert (= (and d!318757 (not res!508469)) b!1131220))

(assert (= (and b!1131220 res!508470) b!1131221))

(declare-fun b_lambda!33247 () Bool)

(assert (=> (not b_lambda!33247) (not b!1131220)))

(declare-fun m!1280329 () Bool)

(assert (=> b!1131220 m!1280329))

(declare-fun m!1280331 () Bool)

(assert (=> b!1131221 m!1280331))

(assert (=> d!318487 d!318757))

(assert (=> d!318487 d!318529))

(declare-fun b!1131242 () Bool)

(declare-fun e!722747 () Bool)

(assert (=> b!1131242 (= e!722747 (forall!2638 (right!9840 (c!189411 indices!2)) lambda!45474))))

(declare-fun b!1131239 () Bool)

(declare-fun e!722749 () Bool)

(declare-fun e!722748 () Bool)

(assert (=> b!1131239 (= e!722749 e!722748)))

(declare-fun c!189548 () Bool)

(assert (=> b!1131239 (= c!189548 ((_ is Leaf!5447) (c!189411 indices!2)))))

(declare-fun b!1131240 () Bool)

(declare-fun forall!2646 (IArray!6989 Int) Bool)

(assert (=> b!1131240 (= e!722748 (forall!2646 (xs!6185 (c!189411 indices!2)) lambda!45474))))

(declare-fun b!1131241 () Bool)

(assert (=> b!1131241 (= e!722748 e!722747)))

(declare-fun lt!379893 () Unit!16639)

(declare-fun lemmaForallConcat!84 (List!10981 List!10981 Int) Unit!16639)

(assert (=> b!1131241 (= lt!379893 (lemmaForallConcat!84 (list!3961 (left!9510 (c!189411 indices!2))) (list!3961 (right!9840 (c!189411 indices!2))) lambda!45474))))

(declare-fun res!508481 () Bool)

(assert (=> b!1131241 (= res!508481 (forall!2638 (left!9510 (c!189411 indices!2)) lambda!45474))))

(assert (=> b!1131241 (=> (not res!508481) (not e!722747))))

(declare-fun d!318759 () Bool)

(declare-fun lt!379892 () Bool)

(assert (=> d!318759 (= lt!379892 (forall!2637 (list!3961 (c!189411 indices!2)) lambda!45474))))

(assert (=> d!318759 (= lt!379892 e!722749)))

(declare-fun res!508482 () Bool)

(assert (=> d!318759 (=> res!508482 e!722749)))

(assert (=> d!318759 (= res!508482 ((_ is Empty!3492) (c!189411 indices!2)))))

(assert (=> d!318759 (= (forall!2638 (c!189411 indices!2) lambda!45474) lt!379892)))

(assert (= (and d!318759 (not res!508482)) b!1131239))

(assert (= (and b!1131239 c!189548) b!1131240))

(assert (= (and b!1131239 (not c!189548)) b!1131241))

(assert (= (and b!1131241 res!508481) b!1131242))

(declare-fun m!1280351 () Bool)

(assert (=> b!1131242 m!1280351))

(declare-fun m!1280353 () Bool)

(assert (=> b!1131240 m!1280353))

(declare-fun m!1280355 () Bool)

(assert (=> b!1131241 m!1280355))

(declare-fun m!1280357 () Bool)

(assert (=> b!1131241 m!1280357))

(assert (=> b!1131241 m!1280355))

(assert (=> b!1131241 m!1280357))

(declare-fun m!1280359 () Bool)

(assert (=> b!1131241 m!1280359))

(declare-fun m!1280361 () Bool)

(assert (=> b!1131241 m!1280361))

(assert (=> d!318759 m!1279457))

(assert (=> d!318759 m!1279457))

(declare-fun m!1280363 () Bool)

(assert (=> d!318759 m!1280363))

(assert (=> d!318487 d!318759))

(declare-fun b!1131267 () Bool)

(declare-fun res!508512 () Bool)

(declare-fun e!722766 () Bool)

(assert (=> b!1131267 (=> (not res!508512) (not e!722766))))

(declare-fun height!451 (Conc!3492) Int)

(assert (=> b!1131267 (= res!508512 (<= (- (height!451 (left!9510 (c!189411 indices!2))) (height!451 (right!9840 (c!189411 indices!2)))) 1))))

(declare-fun d!318765 () Bool)

(declare-fun res!508507 () Bool)

(declare-fun e!722767 () Bool)

(assert (=> d!318765 (=> res!508507 e!722767)))

(assert (=> d!318765 (= res!508507 (not ((_ is Node!3492) (c!189411 indices!2))))))

(assert (=> d!318765 (= (isBalanced!965 (c!189411 indices!2)) e!722767)))

(declare-fun b!1131268 () Bool)

(declare-fun res!508511 () Bool)

(assert (=> b!1131268 (=> (not res!508511) (not e!722766))))

(assert (=> b!1131268 (= res!508511 (isBalanced!965 (right!9840 (c!189411 indices!2))))))

(declare-fun b!1131269 () Bool)

(declare-fun res!508510 () Bool)

(assert (=> b!1131269 (=> (not res!508510) (not e!722766))))

(assert (=> b!1131269 (= res!508510 (isBalanced!965 (left!9510 (c!189411 indices!2))))))

(declare-fun b!1131270 () Bool)

(declare-fun res!508508 () Bool)

(assert (=> b!1131270 (=> (not res!508508) (not e!722766))))

(declare-fun isEmpty!6790 (Conc!3492) Bool)

(assert (=> b!1131270 (= res!508508 (not (isEmpty!6790 (left!9510 (c!189411 indices!2)))))))

(declare-fun b!1131271 () Bool)

(assert (=> b!1131271 (= e!722767 e!722766)))

(declare-fun res!508509 () Bool)

(assert (=> b!1131271 (=> (not res!508509) (not e!722766))))

(assert (=> b!1131271 (= res!508509 (<= (- 1) (- (height!451 (left!9510 (c!189411 indices!2))) (height!451 (right!9840 (c!189411 indices!2))))))))

(declare-fun b!1131272 () Bool)

(assert (=> b!1131272 (= e!722766 (not (isEmpty!6790 (right!9840 (c!189411 indices!2)))))))

(assert (= (and d!318765 (not res!508507)) b!1131271))

(assert (= (and b!1131271 res!508509) b!1131267))

(assert (= (and b!1131267 res!508512) b!1131269))

(assert (= (and b!1131269 res!508510) b!1131268))

(assert (= (and b!1131268 res!508511) b!1131270))

(assert (= (and b!1131270 res!508508) b!1131272))

(declare-fun m!1280373 () Bool)

(assert (=> b!1131269 m!1280373))

(declare-fun m!1280375 () Bool)

(assert (=> b!1131268 m!1280375))

(declare-fun m!1280377 () Bool)

(assert (=> b!1131272 m!1280377))

(declare-fun m!1280379 () Bool)

(assert (=> b!1131270 m!1280379))

(declare-fun m!1280381 () Bool)

(assert (=> b!1131267 m!1280381))

(declare-fun m!1280383 () Bool)

(assert (=> b!1131267 m!1280383))

(assert (=> b!1131271 m!1280381))

(assert (=> b!1131271 m!1280383))

(assert (=> d!318469 d!318765))

(declare-fun d!318771 () Bool)

(declare-fun res!508527 () Bool)

(declare-fun e!722784 () Bool)

(assert (=> d!318771 (=> (not res!508527) (not e!722784))))

(assert (=> d!318771 (= res!508527 (= (csize!7212 (c!189410 (tokens!1450 pt!21))) (+ (size!8540 (left!9509 (c!189410 (tokens!1450 pt!21)))) (size!8540 (right!9839 (c!189410 (tokens!1450 pt!21)))))))))

(assert (=> d!318771 (= (inv!14174 (c!189410 (tokens!1450 pt!21))) e!722784)))

(declare-fun b!1131293 () Bool)

(declare-fun res!508528 () Bool)

(assert (=> b!1131293 (=> (not res!508528) (not e!722784))))

(assert (=> b!1131293 (= res!508528 (and (not (= (left!9509 (c!189410 (tokens!1450 pt!21))) Empty!3491)) (not (= (right!9839 (c!189410 (tokens!1450 pt!21))) Empty!3491))))))

(declare-fun b!1131294 () Bool)

(declare-fun res!508529 () Bool)

(assert (=> b!1131294 (=> (not res!508529) (not e!722784))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!452 (Conc!3491) Int)

(assert (=> b!1131294 (= res!508529 (= (cheight!3702 (c!189410 (tokens!1450 pt!21))) (+ (max!0 (height!452 (left!9509 (c!189410 (tokens!1450 pt!21)))) (height!452 (right!9839 (c!189410 (tokens!1450 pt!21))))) 1)))))

(declare-fun b!1131295 () Bool)

(assert (=> b!1131295 (= e!722784 (<= 0 (cheight!3702 (c!189410 (tokens!1450 pt!21)))))))

(assert (= (and d!318771 res!508527) b!1131293))

(assert (= (and b!1131293 res!508528) b!1131294))

(assert (= (and b!1131294 res!508529) b!1131295))

(declare-fun m!1280403 () Bool)

(assert (=> d!318771 m!1280403))

(declare-fun m!1280405 () Bool)

(assert (=> d!318771 m!1280405))

(declare-fun m!1280407 () Bool)

(assert (=> b!1131294 m!1280407))

(declare-fun m!1280409 () Bool)

(assert (=> b!1131294 m!1280409))

(assert (=> b!1131294 m!1280407))

(assert (=> b!1131294 m!1280409))

(declare-fun m!1280411 () Bool)

(assert (=> b!1131294 m!1280411))

(assert (=> b!1130369 d!318771))

(declare-fun d!318781 () Bool)

(assert (=> d!318781 (= (usesJsonRules!0 (h!16359 (Cons!10958 lt!378985 Nil!10958))) (= (rules!9208 (h!16359 (Cons!10958 lt!378985 Nil!10958))) (rules!109 JsonLexer!309)))))

(declare-fun bs!277738 () Bool)

(assert (= bs!277738 d!318781))

(assert (=> bs!277738 m!1279027))

(assert (=> bs!277602 d!318781))

(declare-fun d!318785 () Bool)

(declare-fun lt!379902 () Bool)

(declare-fun e!722787 () Bool)

(assert (=> d!318785 (= lt!379902 e!722787)))

(declare-fun res!508534 () Bool)

(assert (=> d!318785 (=> (not res!508534) (not e!722787))))

(assert (=> d!318785 (= res!508534 (= (list!3958 (_1!6805 (lex!657 lt!379412 (rules!9208 pt!21) (print!594 lt!379412 (singletonSeq!600 (h!16356 lt!379432)))))) (list!3958 (singletonSeq!600 (h!16356 lt!379432)))))))

(declare-fun e!722788 () Bool)

(assert (=> d!318785 (= lt!379902 e!722788)))

(declare-fun res!508532 () Bool)

(assert (=> d!318785 (=> (not res!508532) (not e!722788))))

(declare-fun lt!379901 () tuple2!11916)

(assert (=> d!318785 (= res!508532 (= (size!8533 (_1!6805 lt!379901)) 1))))

(assert (=> d!318785 (= lt!379901 (lex!657 lt!379412 (rules!9208 pt!21) (print!594 lt!379412 (singletonSeq!600 (h!16356 lt!379432)))))))

(assert (=> d!318785 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318785 (= (rulesProduceIndividualToken!642 lt!379412 (rules!9208 pt!21) (h!16356 lt!379432)) lt!379902)))

(declare-fun b!1131298 () Bool)

(declare-fun res!508533 () Bool)

(assert (=> b!1131298 (=> (not res!508533) (not e!722788))))

(assert (=> b!1131298 (= res!508533 (= (apply!2266 (_1!6805 lt!379901) 0) (h!16356 lt!379432)))))

(declare-fun b!1131299 () Bool)

(assert (=> b!1131299 (= e!722788 (isEmpty!6788 (_2!6805 lt!379901)))))

(declare-fun b!1131300 () Bool)

(assert (=> b!1131300 (= e!722787 (isEmpty!6788 (_2!6805 (lex!657 lt!379412 (rules!9208 pt!21) (print!594 lt!379412 (singletonSeq!600 (h!16356 lt!379432)))))))))

(assert (= (and d!318785 res!508532) b!1131298))

(assert (= (and b!1131298 res!508533) b!1131299))

(assert (= (and d!318785 res!508534) b!1131300))

(declare-fun m!1280417 () Bool)

(assert (=> d!318785 m!1280417))

(declare-fun m!1280419 () Bool)

(assert (=> d!318785 m!1280419))

(assert (=> d!318785 m!1280417))

(declare-fun m!1280421 () Bool)

(assert (=> d!318785 m!1280421))

(assert (=> d!318785 m!1279015))

(assert (=> d!318785 m!1280419))

(declare-fun m!1280423 () Bool)

(assert (=> d!318785 m!1280423))

(declare-fun m!1280425 () Bool)

(assert (=> d!318785 m!1280425))

(assert (=> d!318785 m!1280417))

(declare-fun m!1280427 () Bool)

(assert (=> d!318785 m!1280427))

(declare-fun m!1280429 () Bool)

(assert (=> b!1131298 m!1280429))

(declare-fun m!1280431 () Bool)

(assert (=> b!1131299 m!1280431))

(assert (=> b!1131300 m!1280417))

(assert (=> b!1131300 m!1280417))

(assert (=> b!1131300 m!1280419))

(assert (=> b!1131300 m!1280419))

(assert (=> b!1131300 m!1280423))

(declare-fun m!1280433 () Bool)

(assert (=> b!1131300 m!1280433))

(assert (=> b!1130508 d!318785))

(declare-fun d!318787 () Bool)

(declare-fun res!508535 () Bool)

(declare-fun e!722789 () Bool)

(assert (=> d!318787 (=> res!508535 e!722789)))

(assert (=> d!318787 (= res!508535 ((_ is Nil!10958) (t!106836 (Cons!10958 lt!378985 Nil!10958))))))

(assert (=> d!318787 (= (forall!2630 (t!106836 (Cons!10958 lt!378985 Nil!10958)) lambda!45475) e!722789)))

(declare-fun b!1131301 () Bool)

(declare-fun e!722790 () Bool)

(assert (=> b!1131301 (= e!722789 e!722790)))

(declare-fun res!508536 () Bool)

(assert (=> b!1131301 (=> (not res!508536) (not e!722790))))

(assert (=> b!1131301 (= res!508536 (dynLambda!4818 lambda!45475 (h!16359 (t!106836 (Cons!10958 lt!378985 Nil!10958)))))))

(declare-fun b!1131302 () Bool)

(assert (=> b!1131302 (= e!722790 (forall!2630 (t!106836 (t!106836 (Cons!10958 lt!378985 Nil!10958))) lambda!45475))))

(assert (= (and d!318787 (not res!508535)) b!1131301))

(assert (= (and b!1131301 res!508536) b!1131302))

(declare-fun b_lambda!33251 () Bool)

(assert (=> (not b_lambda!33251) (not b!1131301)))

(declare-fun m!1280435 () Bool)

(assert (=> b!1131301 m!1280435))

(declare-fun m!1280437 () Bool)

(assert (=> b!1131302 m!1280437))

(assert (=> b!1130373 d!318787))

(declare-fun d!318789 () Bool)

(declare-fun lt!379905 () Int)

(declare-fun contains!1958 (List!10981 Int) Bool)

(assert (=> d!318789 (contains!1958 (list!3957 indices!2) lt!379905)))

(declare-fun e!722795 () Int)

(assert (=> d!318789 (= lt!379905 e!722795)))

(declare-fun c!189551 () Bool)

(assert (=> d!318789 (= c!189551 (= 1 0))))

(declare-fun e!722796 () Bool)

(assert (=> d!318789 e!722796))

(declare-fun res!508539 () Bool)

(assert (=> d!318789 (=> (not res!508539) (not e!722796))))

(assert (=> d!318789 (= res!508539 (<= 0 1))))

(assert (=> d!318789 (= (apply!2264 (list!3957 indices!2) 1) lt!379905)))

(declare-fun b!1131309 () Bool)

(assert (=> b!1131309 (= e!722796 (< 1 (size!8534 (list!3957 indices!2))))))

(declare-fun b!1131310 () Bool)

(declare-fun head!2055 (List!10981) Int)

(assert (=> b!1131310 (= e!722795 (head!2055 (list!3957 indices!2)))))

(declare-fun b!1131311 () Bool)

(declare-fun tail!1615 (List!10981) List!10981)

(assert (=> b!1131311 (= e!722795 (apply!2264 (tail!1615 (list!3957 indices!2)) (- 1 1)))))

(assert (= (and d!318789 res!508539) b!1131309))

(assert (= (and d!318789 c!189551) b!1131310))

(assert (= (and d!318789 (not c!189551)) b!1131311))

(assert (=> d!318789 m!1279029))

(declare-fun m!1280439 () Bool)

(assert (=> d!318789 m!1280439))

(assert (=> b!1131309 m!1279029))

(assert (=> b!1131309 m!1279047))

(assert (=> b!1131310 m!1279029))

(declare-fun m!1280441 () Bool)

(assert (=> b!1131310 m!1280441))

(assert (=> b!1131311 m!1279029))

(declare-fun m!1280443 () Bool)

(assert (=> b!1131311 m!1280443))

(assert (=> b!1131311 m!1280443))

(declare-fun m!1280445 () Bool)

(assert (=> b!1131311 m!1280445))

(assert (=> d!318475 d!318789))

(assert (=> d!318475 d!318529))

(declare-fun bm!80649 () Bool)

(declare-fun c!189560 () Bool)

(declare-fun c!189559 () Bool)

(assert (=> bm!80649 (= c!189560 c!189559)))

(declare-fun e!722808 () Int)

(declare-fun call!80654 () Int)

(assert (=> bm!80649 (= call!80654 (apply!2265 (ite c!189559 (left!9510 (c!189411 indices!2)) (right!9840 (c!189411 indices!2))) e!722808))))

(declare-fun b!1131326 () Bool)

(assert (=> b!1131326 (= e!722808 1)))

(declare-fun b!1131327 () Bool)

(assert (=> b!1131327 (= e!722808 (- 1 (size!8535 (left!9510 (c!189411 indices!2)))))))

(declare-fun b!1131328 () Bool)

(declare-fun e!722806 () Int)

(assert (=> b!1131328 (= e!722806 call!80654)))

(declare-fun d!318791 () Bool)

(declare-fun lt!379910 () Int)

(assert (=> d!318791 (= lt!379910 (apply!2264 (list!3961 (c!189411 indices!2)) 1))))

(declare-fun e!722807 () Int)

(assert (=> d!318791 (= lt!379910 e!722807)))

(declare-fun c!189558 () Bool)

(assert (=> d!318791 (= c!189558 ((_ is Leaf!5447) (c!189411 indices!2)))))

(declare-fun e!722805 () Bool)

(assert (=> d!318791 e!722805))

(declare-fun res!508542 () Bool)

(assert (=> d!318791 (=> (not res!508542) (not e!722805))))

(assert (=> d!318791 (= res!508542 (<= 0 1))))

(assert (=> d!318791 (= (apply!2265 (c!189411 indices!2) 1) lt!379910)))

(declare-fun b!1131329 () Bool)

(assert (=> b!1131329 (= e!722807 e!722806)))

(declare-fun lt!379911 () Bool)

(declare-fun appendIndex!94 (List!10981 List!10981 Int) Bool)

(assert (=> b!1131329 (= lt!379911 (appendIndex!94 (list!3961 (left!9510 (c!189411 indices!2))) (list!3961 (right!9840 (c!189411 indices!2))) 1))))

(assert (=> b!1131329 (= c!189559 (< 1 (size!8535 (left!9510 (c!189411 indices!2)))))))

(declare-fun b!1131330 () Bool)

(assert (=> b!1131330 (= e!722806 call!80654)))

(declare-fun b!1131331 () Bool)

(assert (=> b!1131331 (= e!722805 (< 1 (size!8535 (c!189411 indices!2))))))

(declare-fun b!1131332 () Bool)

(declare-fun apply!2271 (IArray!6989 Int) Int)

(assert (=> b!1131332 (= e!722807 (apply!2271 (xs!6185 (c!189411 indices!2)) 1))))

(assert (= (and d!318791 res!508542) b!1131331))

(assert (= (and d!318791 c!189558) b!1131332))

(assert (= (and d!318791 (not c!189558)) b!1131329))

(assert (= (and b!1131329 c!189559) b!1131330))

(assert (= (and b!1131329 (not c!189559)) b!1131328))

(assert (= (or b!1131330 b!1131328) bm!80649))

(assert (= (and bm!80649 c!189560) b!1131326))

(assert (= (and bm!80649 (not c!189560)) b!1131327))

(assert (=> d!318791 m!1279457))

(assert (=> d!318791 m!1279457))

(declare-fun m!1280447 () Bool)

(assert (=> d!318791 m!1280447))

(declare-fun m!1280449 () Bool)

(assert (=> bm!80649 m!1280449))

(assert (=> b!1131329 m!1280355))

(assert (=> b!1131329 m!1280357))

(assert (=> b!1131329 m!1280355))

(assert (=> b!1131329 m!1280357))

(declare-fun m!1280451 () Bool)

(assert (=> b!1131329 m!1280451))

(declare-fun m!1280453 () Bool)

(assert (=> b!1131329 m!1280453))

(assert (=> b!1131331 m!1279049))

(declare-fun m!1280455 () Bool)

(assert (=> b!1131332 m!1280455))

(assert (=> b!1131327 m!1280453))

(assert (=> d!318475 d!318791))

(declare-fun d!318793 () Bool)

(assert (=> d!318793 (= (inv!14176 (xs!6184 (c!189410 (tokens!1450 pt!21)))) (<= (size!8539 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21))))) 2147483647))))

(declare-fun bs!277739 () Bool)

(assert (= bs!277739 d!318793))

(declare-fun m!1280457 () Bool)

(assert (=> bs!277739 m!1280457))

(assert (=> b!1130537 d!318793))

(declare-fun d!318795 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!308) Rule!3578)

(declare-fun integerLiteralRule!0 (JsonLexer!308) Rule!3578)

(declare-fun floatLiteralRule!0 (JsonLexer!308) Rule!3578)

(declare-fun trueRule!0 (JsonLexer!308) Rule!3578)

(declare-fun falseRule!0 (JsonLexer!308) Rule!3578)

(declare-fun nullRule!0 (JsonLexer!308) Rule!3578)

(declare-fun jsonstringRule!0 (JsonLexer!308) Rule!3578)

(declare-fun lBraceRule!0 (JsonLexer!308) Rule!3578)

(declare-fun rBraceRule!0 (JsonLexer!308) Rule!3578)

(declare-fun lBracketRule!0 (JsonLexer!308) Rule!3578)

(declare-fun rBracketRule!0 (JsonLexer!308) Rule!3578)

(declare-fun colonRule!0 (JsonLexer!308) Rule!3578)

(declare-fun commaRule!0 (JsonLexer!308) Rule!3578)

(declare-fun eofRule!0 (JsonLexer!308) Rule!3578)

(assert (=> d!318795 (= (rules!109 JsonLexer!309) (Cons!10956 (whitespaceRule!0 JsonLexer!309) (Cons!10956 (integerLiteralRule!0 JsonLexer!309) (Cons!10956 (floatLiteralRule!0 JsonLexer!309) (Cons!10956 (trueRule!0 JsonLexer!309) (Cons!10956 (falseRule!0 JsonLexer!309) (Cons!10956 (nullRule!0 JsonLexer!309) (Cons!10956 (jsonstringRule!0 JsonLexer!309) (Cons!10956 (lBraceRule!0 JsonLexer!309) (Cons!10956 (rBraceRule!0 JsonLexer!309) (Cons!10956 (lBracketRule!0 JsonLexer!309) (Cons!10956 (rBracketRule!0 JsonLexer!309) (Cons!10956 (colonRule!0 JsonLexer!309) (Cons!10956 (commaRule!0 JsonLexer!309) (Cons!10956 (eofRule!0 JsonLexer!309) Nil!10956)))))))))))))))))

(declare-fun bs!277740 () Bool)

(assert (= bs!277740 d!318795))

(declare-fun m!1280459 () Bool)

(assert (=> bs!277740 m!1280459))

(declare-fun m!1280461 () Bool)

(assert (=> bs!277740 m!1280461))

(declare-fun m!1280463 () Bool)

(assert (=> bs!277740 m!1280463))

(declare-fun m!1280465 () Bool)

(assert (=> bs!277740 m!1280465))

(declare-fun m!1280467 () Bool)

(assert (=> bs!277740 m!1280467))

(declare-fun m!1280469 () Bool)

(assert (=> bs!277740 m!1280469))

(declare-fun m!1280471 () Bool)

(assert (=> bs!277740 m!1280471))

(declare-fun m!1280473 () Bool)

(assert (=> bs!277740 m!1280473))

(declare-fun m!1280475 () Bool)

(assert (=> bs!277740 m!1280475))

(declare-fun m!1280477 () Bool)

(assert (=> bs!277740 m!1280477))

(declare-fun m!1280479 () Bool)

(assert (=> bs!277740 m!1280479))

(declare-fun m!1280481 () Bool)

(assert (=> bs!277740 m!1280481))

(declare-fun m!1280483 () Bool)

(assert (=> bs!277740 m!1280483))

(declare-fun m!1280485 () Bool)

(assert (=> bs!277740 m!1280485))

(assert (=> d!318473 d!318795))

(declare-fun bs!277741 () Bool)

(declare-fun d!318797 () Bool)

(assert (= bs!277741 (and d!318797 d!318709)))

(declare-fun lambda!45539 () Int)

(assert (=> bs!277741 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45528))))

(declare-fun bs!277742 () Bool)

(assert (= bs!277742 (and d!318797 d!318569)))

(assert (=> bs!277742 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45511))))

(declare-fun bs!277743 () Bool)

(assert (= bs!277743 (and d!318797 d!318565)))

(assert (=> bs!277743 (= (= lt!379404 lt!379402) (= lambda!45539 lambda!45510))))

(declare-fun bs!277744 () Bool)

(assert (= bs!277744 (and d!318797 d!318691)))

(assert (=> bs!277744 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45520))))

(declare-fun bs!277745 () Bool)

(assert (= bs!277745 (and d!318797 b!1131170)))

(assert (=> bs!277745 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45532))))

(declare-fun bs!277746 () Bool)

(assert (= bs!277746 (and d!318797 d!318571)))

(assert (=> bs!277746 (= lambda!45539 lambda!45512)))

(declare-fun bs!277747 () Bool)

(assert (= bs!277747 (and d!318797 d!318495)))

(assert (=> bs!277747 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45501))))

(declare-fun bs!277748 () Bool)

(assert (= bs!277748 (and d!318797 b!1130989)))

(assert (=> bs!277748 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45519))))

(declare-fun bs!277749 () Bool)

(assert (= bs!277749 (and d!318797 d!318749)))

(assert (=> bs!277749 (= (= lt!379404 lt!379412) (= lambda!45539 lambda!45533))))

(declare-fun bs!277750 () Bool)

(assert (= bs!277750 (and d!318797 d!318729)))

(assert (=> bs!277750 (= (= lt!379404 Lexer!1593) (= lambda!45539 lambda!45529))))

(declare-fun bs!277751 () Bool)

(assert (= bs!277751 (and d!318797 d!318543)))

(assert (=> bs!277751 (= (= lt!379404 lt!379381) (= lambda!45539 lambda!45509))))

(declare-fun b!1131337 () Bool)

(declare-fun e!722813 () Bool)

(assert (=> b!1131337 (= e!722813 true)))

(declare-fun b!1131336 () Bool)

(declare-fun e!722812 () Bool)

(assert (=> b!1131336 (= e!722812 e!722813)))

(declare-fun b!1131335 () Bool)

(declare-fun e!722811 () Bool)

(assert (=> b!1131335 (= e!722811 e!722812)))

(assert (=> d!318797 e!722811))

(assert (= b!1131336 b!1131337))

(assert (= b!1131335 b!1131336))

(assert (= (and d!318797 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131335))

(assert (=> b!1131337 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45539))))

(assert (=> b!1131337 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45539))))

(assert (=> d!318797 true))

(declare-fun lt!379912 () Bool)

(assert (=> d!318797 (= lt!379912 (forall!2640 (t!106833 lt!379443) lambda!45539))))

(declare-fun e!722810 () Bool)

(assert (=> d!318797 (= lt!379912 e!722810)))

(declare-fun res!508544 () Bool)

(assert (=> d!318797 (=> res!508544 e!722810)))

(assert (=> d!318797 (= res!508544 (not ((_ is Cons!10955) (t!106833 lt!379443))))))

(assert (=> d!318797 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318797 (= (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (t!106833 lt!379443)) lt!379912)))

(declare-fun b!1131333 () Bool)

(declare-fun e!722809 () Bool)

(assert (=> b!1131333 (= e!722810 e!722809)))

(declare-fun res!508543 () Bool)

(assert (=> b!1131333 (=> (not res!508543) (not e!722809))))

(assert (=> b!1131333 (= res!508543 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (t!106833 lt!379443))))))

(declare-fun b!1131334 () Bool)

(assert (=> b!1131334 (= e!722809 (rulesProduceEachTokenIndividuallyList!470 lt!379404 (rules!9208 pt!21) (t!106833 (t!106833 lt!379443))))))

(assert (= (and d!318797 (not res!508544)) b!1131333))

(assert (= (and b!1131333 res!508543) b!1131334))

(declare-fun m!1280487 () Bool)

(assert (=> d!318797 m!1280487))

(assert (=> d!318797 m!1279015))

(declare-fun m!1280489 () Bool)

(assert (=> b!1131333 m!1280489))

(declare-fun m!1280491 () Bool)

(assert (=> b!1131334 m!1280491))

(assert (=> b!1130518 d!318797))

(assert (=> b!1130348 d!318709))

(declare-fun d!318799 () Bool)

(declare-fun res!508547 () Bool)

(declare-fun e!722816 () Bool)

(assert (=> d!318799 (=> (not res!508547) (not e!722816))))

(declare-fun rulesValid!647 (LexerInterface!1595 List!10980) Bool)

(assert (=> d!318799 (= res!508547 (rulesValid!647 Lexer!1593 (rules!9208 pt!21)))))

(assert (=> d!318799 (= (rulesInvariant!1469 Lexer!1593 (rules!9208 pt!21)) e!722816)))

(declare-fun b!1131340 () Bool)

(declare-datatypes ((List!10983 0))(
  ( (Nil!10959) (Cons!10959 (h!16360 String!13363) (t!106943 List!10983)) )
))
(declare-fun noDuplicateTag!647 (LexerInterface!1595 List!10980 List!10983) Bool)

(assert (=> b!1131340 (= e!722816 (noDuplicateTag!647 Lexer!1593 (rules!9208 pt!21) Nil!10959))))

(assert (= (and d!318799 res!508547) b!1131340))

(declare-fun m!1280493 () Bool)

(assert (=> d!318799 m!1280493))

(declare-fun m!1280495 () Bool)

(assert (=> b!1131340 m!1280495))

(assert (=> b!1130347 d!318799))

(declare-fun d!318801 () Bool)

(declare-fun res!508554 () Bool)

(declare-fun e!722819 () Bool)

(assert (=> d!318801 (=> (not res!508554) (not e!722819))))

(declare-fun size!8544 (Conc!3493) Int)

(assert (=> d!318801 (= res!508554 (= (csize!7216 (c!189412 acc!225)) (+ (size!8544 (left!9511 (c!189412 acc!225))) (size!8544 (right!9841 (c!189412 acc!225))))))))

(assert (=> d!318801 (= (inv!14172 (c!189412 acc!225)) e!722819)))

(declare-fun b!1131347 () Bool)

(declare-fun res!508555 () Bool)

(assert (=> b!1131347 (=> (not res!508555) (not e!722819))))

(assert (=> b!1131347 (= res!508555 (and (not (= (left!9511 (c!189412 acc!225)) Empty!3493)) (not (= (right!9841 (c!189412 acc!225)) Empty!3493))))))

(declare-fun b!1131348 () Bool)

(declare-fun res!508556 () Bool)

(assert (=> b!1131348 (=> (not res!508556) (not e!722819))))

(assert (=> b!1131348 (= res!508556 (= (cheight!3704 (c!189412 acc!225)) (+ (max!0 (height!449 (left!9511 (c!189412 acc!225))) (height!449 (right!9841 (c!189412 acc!225)))) 1)))))

(declare-fun b!1131349 () Bool)

(assert (=> b!1131349 (= e!722819 (<= 0 (cheight!3704 (c!189412 acc!225))))))

(assert (= (and d!318801 res!508554) b!1131347))

(assert (= (and b!1131347 res!508555) b!1131348))

(assert (= (and b!1131348 res!508556) b!1131349))

(declare-fun m!1280497 () Bool)

(assert (=> d!318801 m!1280497))

(declare-fun m!1280499 () Bool)

(assert (=> d!318801 m!1280499))

(assert (=> b!1131348 m!1279447))

(assert (=> b!1131348 m!1279449))

(assert (=> b!1131348 m!1279447))

(assert (=> b!1131348 m!1279449))

(declare-fun m!1280501 () Bool)

(assert (=> b!1131348 m!1280501))

(assert (=> b!1130360 d!318801))

(declare-fun b!1131350 () Bool)

(declare-fun e!722821 () Bool)

(declare-fun lt!379931 () List!10979)

(assert (=> b!1131350 (= e!722821 (<= (+ lt!379419 1) (size!8539 lt!379931)))))

(declare-fun e!722824 () Bool)

(declare-fun b!1131351 () Bool)

(assert (=> b!1131351 (= e!722824 (tokensListTwoByTwoPredicateSeparable!24 lt!379395 (tokens!1450 pt!21) (+ lt!379419 1 1) (rules!9208 pt!21)))))

(declare-fun b!1131352 () Bool)

(declare-fun res!508560 () Bool)

(declare-fun e!722820 () Bool)

(assert (=> b!1131352 (=> (not res!508560) (not e!722820))))

(assert (=> b!1131352 (= res!508560 (not (isEmpty!6785 (rules!9208 pt!21))))))

(declare-fun b!1131353 () Bool)

(declare-fun res!508557 () Bool)

(assert (=> b!1131353 (=> (not res!508557) (not e!722820))))

(declare-fun lt!379917 () List!10979)

(declare-fun lt!379930 () List!10979)

(assert (=> b!1131353 (= res!508557 (subseq!172 lt!379917 lt!379930))))

(declare-fun b!1131354 () Bool)

(declare-fun e!722823 () Bool)

(assert (=> b!1131354 (= e!722823 e!722824)))

(declare-fun res!508564 () Bool)

(assert (=> b!1131354 (=> (not res!508564) (not e!722824))))

(assert (=> b!1131354 (= res!508564 (separableTokensPredicate!93 lt!379395 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1 1)) (rules!9208 pt!21)))))

(declare-fun lt!379936 () Unit!16639)

(declare-fun Unit!16661 () Unit!16639)

(assert (=> b!1131354 (= lt!379936 Unit!16661)))

(assert (=> b!1131354 (> (size!8536 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1 1)))) 0)))

(declare-fun lt!379919 () Unit!16639)

(declare-fun Unit!16662 () Unit!16639)

(assert (=> b!1131354 (= lt!379919 Unit!16662)))

(assert (=> b!1131354 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1 1)))))

(declare-fun lt!379926 () Unit!16639)

(declare-fun Unit!16663 () Unit!16639)

(assert (=> b!1131354 (= lt!379926 Unit!16663)))

(assert (=> b!1131354 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))

(declare-fun lt!379915 () Unit!16639)

(declare-fun lt!379921 () Unit!16639)

(assert (=> b!1131354 (= lt!379915 lt!379921)))

(declare-fun lt!379914 () Token!3440)

(assert (=> b!1131354 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379914)))

(declare-fun lt!379940 () List!10979)

(assert (=> b!1131354 (= lt!379921 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379940 lt!379914))))

(assert (=> b!1131354 (= lt!379914 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1 1)))))

(assert (=> b!1131354 (= lt!379940 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379945 () Unit!16639)

(declare-fun lt!379942 () Unit!16639)

(assert (=> b!1131354 (= lt!379945 lt!379942)))

(declare-fun lt!379923 () Token!3440)

(assert (=> b!1131354 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379923)))

(declare-fun lt!379939 () List!10979)

(assert (=> b!1131354 (= lt!379942 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379939 lt!379923))))

(assert (=> b!1131354 (= lt!379923 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))

(assert (=> b!1131354 (= lt!379939 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379938 () Unit!16639)

(declare-fun lt!379943 () Unit!16639)

(assert (=> b!1131354 (= lt!379938 lt!379943)))

(declare-fun lt!379941 () List!10979)

(declare-fun lt!379924 () Int)

(assert (=> b!1131354 (= (tail!1613 (drop!417 lt!379941 lt!379924)) (drop!417 lt!379941 (+ lt!379924 1)))))

(assert (=> b!1131354 (= lt!379943 (lemmaDropTail!322 lt!379941 lt!379924))))

(assert (=> b!1131354 (= lt!379924 (+ lt!379419 1 1))))

(assert (=> b!1131354 (= lt!379941 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379932 () Unit!16639)

(declare-fun lt!379933 () Unit!16639)

(assert (=> b!1131354 (= lt!379932 lt!379933)))

(declare-fun lt!379920 () List!10979)

(assert (=> b!1131354 (= (tail!1613 (drop!417 lt!379920 (+ lt!379419 1))) (drop!417 lt!379920 (+ lt!379419 1 1)))))

(assert (=> b!1131354 (= lt!379933 (lemmaDropTail!322 lt!379920 (+ lt!379419 1)))))

(assert (=> b!1131354 (= lt!379920 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379935 () Unit!16639)

(declare-fun lt!379918 () Unit!16639)

(assert (=> b!1131354 (= lt!379935 lt!379918)))

(declare-fun lt!379944 () List!10979)

(declare-fun lt!379927 () Int)

(assert (=> b!1131354 (= (head!2053 (drop!417 lt!379944 lt!379927)) (apply!2267 lt!379944 lt!379927))))

(assert (=> b!1131354 (= lt!379918 (lemmaDropApply!334 lt!379944 lt!379927))))

(assert (=> b!1131354 (= lt!379927 (+ lt!379419 1 1))))

(assert (=> b!1131354 (= lt!379944 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379929 () Unit!16639)

(declare-fun lt!379937 () Unit!16639)

(assert (=> b!1131354 (= lt!379929 lt!379937)))

(declare-fun lt!379928 () List!10979)

(assert (=> b!1131354 (= (head!2053 (drop!417 lt!379928 (+ lt!379419 1))) (apply!2267 lt!379928 (+ lt!379419 1)))))

(assert (=> b!1131354 (= lt!379937 (lemmaDropApply!334 lt!379928 (+ lt!379419 1)))))

(assert (=> b!1131354 (= lt!379928 (list!3958 (tokens!1450 pt!21)))))

(declare-fun b!1131356 () Bool)

(assert (=> b!1131356 (= e!722820 (rulesProduceEachTokenIndividuallyList!470 lt!379395 (rules!9208 pt!21) lt!379930))))

(declare-fun b!1131357 () Bool)

(declare-fun e!722822 () Bool)

(assert (=> b!1131357 (= e!722822 (<= (+ lt!379419 1) (size!8533 (tokens!1450 pt!21))))))

(declare-fun b!1131355 () Bool)

(declare-fun res!508563 () Bool)

(assert (=> b!1131355 (=> (not res!508563) (not e!722820))))

(assert (=> b!1131355 (= res!508563 (rulesInvariant!1469 lt!379395 (rules!9208 pt!21)))))

(declare-fun lt!379913 () Bool)

(declare-fun d!318803 () Bool)

(assert (=> d!318803 (= lt!379913 (tokensListTwoByTwoPredicateSeparableList!69 lt!379395 (dropList!290 (tokens!1450 pt!21) (+ lt!379419 1)) (rules!9208 pt!21)))))

(declare-fun lt!379934 () Unit!16639)

(declare-fun lt!379922 () Unit!16639)

(assert (=> d!318803 (= lt!379934 lt!379922)))

(assert (=> d!318803 (rulesProduceEachTokenIndividuallyList!470 lt!379395 (rules!9208 pt!21) lt!379917)))

(assert (=> d!318803 (= lt!379922 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!6 lt!379395 (rules!9208 pt!21) lt!379930 lt!379917))))

(assert (=> d!318803 e!722820))

(declare-fun res!508562 () Bool)

(assert (=> d!318803 (=> (not res!508562) (not e!722820))))

(assert (=> d!318803 (= res!508562 ((_ is Lexer!1593) lt!379395))))

(assert (=> d!318803 (= lt!379917 (dropList!290 (tokens!1450 pt!21) (+ lt!379419 1)))))

(assert (=> d!318803 (= lt!379930 (list!3958 (tokens!1450 pt!21)))))

(declare-fun lt!379916 () Unit!16639)

(declare-fun lt!379925 () Unit!16639)

(assert (=> d!318803 (= lt!379916 lt!379925)))

(assert (=> d!318803 (subseq!172 (drop!417 lt!379931 (+ lt!379419 1)) lt!379931)))

(assert (=> d!318803 (= lt!379925 (lemmaDropSubSeq!6 lt!379931 (+ lt!379419 1)))))

(assert (=> d!318803 e!722821))

(declare-fun res!508559 () Bool)

(assert (=> d!318803 (=> (not res!508559) (not e!722821))))

(assert (=> d!318803 (= res!508559 (>= (+ lt!379419 1) 0))))

(assert (=> d!318803 (= lt!379931 (list!3958 (tokens!1450 pt!21)))))

(assert (=> d!318803 (= lt!379913 e!722823)))

(declare-fun res!508558 () Bool)

(assert (=> d!318803 (=> res!508558 e!722823)))

(assert (=> d!318803 (= res!508558 (not (< (+ lt!379419 1) (- (size!8533 (tokens!1450 pt!21)) 1))))))

(assert (=> d!318803 e!722822))

(declare-fun res!508561 () Bool)

(assert (=> d!318803 (=> (not res!508561) (not e!722822))))

(assert (=> d!318803 (= res!508561 (>= (+ lt!379419 1) 0))))

(assert (=> d!318803 (= (tokensListTwoByTwoPredicateSeparable!24 lt!379395 (tokens!1450 pt!21) (+ lt!379419 1) (rules!9208 pt!21)) lt!379913)))

(assert (= (and d!318803 res!508561) b!1131357))

(assert (= (and d!318803 (not res!508558)) b!1131354))

(assert (= (and b!1131354 res!508564) b!1131351))

(assert (= (and d!318803 res!508559) b!1131350))

(assert (= (and d!318803 res!508562) b!1131352))

(assert (= (and b!1131352 res!508560) b!1131355))

(assert (= (and b!1131355 res!508563) b!1131353))

(assert (= (and b!1131353 res!508557) b!1131356))

(declare-fun m!1280503 () Bool)

(assert (=> b!1131351 m!1280503))

(declare-fun m!1280505 () Bool)

(assert (=> b!1131356 m!1280505))

(declare-fun m!1280507 () Bool)

(assert (=> b!1131355 m!1280507))

(assert (=> b!1131352 m!1279015))

(declare-fun m!1280509 () Bool)

(assert (=> d!318803 m!1280509))

(declare-fun m!1280511 () Bool)

(assert (=> d!318803 m!1280511))

(assert (=> d!318803 m!1279305))

(declare-fun m!1280513 () Bool)

(assert (=> d!318803 m!1280513))

(assert (=> d!318803 m!1280509))

(declare-fun m!1280515 () Bool)

(assert (=> d!318803 m!1280515))

(assert (=> d!318803 m!1278981))

(declare-fun m!1280517 () Bool)

(assert (=> d!318803 m!1280517))

(declare-fun m!1280519 () Bool)

(assert (=> d!318803 m!1280519))

(assert (=> d!318803 m!1280515))

(declare-fun m!1280521 () Bool)

(assert (=> d!318803 m!1280521))

(declare-fun m!1280523 () Bool)

(assert (=> b!1131350 m!1280523))

(assert (=> b!1131354 m!1279351))

(declare-fun m!1280525 () Bool)

(assert (=> b!1131354 m!1280525))

(declare-fun m!1280527 () Bool)

(assert (=> b!1131354 m!1280527))

(declare-fun m!1280529 () Bool)

(assert (=> b!1131354 m!1280529))

(assert (=> b!1131354 m!1279305))

(assert (=> b!1131354 m!1279351))

(assert (=> b!1131354 m!1279353))

(declare-fun m!1280531 () Bool)

(assert (=> b!1131354 m!1280531))

(declare-fun m!1280533 () Bool)

(assert (=> b!1131354 m!1280533))

(declare-fun m!1280535 () Bool)

(assert (=> b!1131354 m!1280535))

(declare-fun m!1280537 () Bool)

(assert (=> b!1131354 m!1280537))

(assert (=> b!1131354 m!1280525))

(declare-fun m!1280539 () Bool)

(assert (=> b!1131354 m!1280539))

(declare-fun m!1280541 () Bool)

(assert (=> b!1131354 m!1280541))

(declare-fun m!1280543 () Bool)

(assert (=> b!1131354 m!1280543))

(assert (=> b!1131354 m!1280531))

(assert (=> b!1131354 m!1280525))

(assert (=> b!1131354 m!1279351))

(declare-fun m!1280545 () Bool)

(assert (=> b!1131354 m!1280545))

(declare-fun m!1280547 () Bool)

(assert (=> b!1131354 m!1280547))

(declare-fun m!1280549 () Bool)

(assert (=> b!1131354 m!1280549))

(assert (=> b!1131354 m!1280547))

(declare-fun m!1280551 () Bool)

(assert (=> b!1131354 m!1280551))

(assert (=> b!1131354 m!1280541))

(declare-fun m!1280553 () Bool)

(assert (=> b!1131354 m!1280553))

(declare-fun m!1280555 () Bool)

(assert (=> b!1131354 m!1280555))

(assert (=> b!1131354 m!1280525))

(declare-fun m!1280557 () Bool)

(assert (=> b!1131354 m!1280557))

(declare-fun m!1280559 () Bool)

(assert (=> b!1131354 m!1280559))

(assert (=> b!1131354 m!1280545))

(declare-fun m!1280561 () Bool)

(assert (=> b!1131354 m!1280561))

(declare-fun m!1280563 () Bool)

(assert (=> b!1131354 m!1280563))

(declare-fun m!1280565 () Bool)

(assert (=> b!1131354 m!1280565))

(declare-fun m!1280567 () Bool)

(assert (=> b!1131354 m!1280567))

(assert (=> b!1131354 m!1280539))

(declare-fun m!1280569 () Bool)

(assert (=> b!1131354 m!1280569))

(declare-fun m!1280571 () Bool)

(assert (=> b!1131354 m!1280571))

(declare-fun m!1280573 () Bool)

(assert (=> b!1131354 m!1280573))

(assert (=> b!1131357 m!1278981))

(declare-fun m!1280575 () Bool)

(assert (=> b!1131353 m!1280575))

(assert (=> b!1130515 d!318803))

(assert (=> b!1130517 d!318573))

(declare-fun d!318805 () Bool)

(declare-fun size!8545 (List!10982) Int)

(assert (=> d!318805 (= (inv!14179 (xs!6186 (c!189412 acc!225))) (<= (size!8545 (innerList!3553 (xs!6186 (c!189412 acc!225)))) 2147483647))))

(declare-fun bs!277752 () Bool)

(assert (= bs!277752 d!318805))

(declare-fun m!1280577 () Bool)

(assert (=> bs!277752 m!1280577))

(assert (=> b!1130567 d!318805))

(assert (=> d!318491 d!318443))

(assert (=> d!318491 d!318445))

(declare-fun b!1131369 () Bool)

(declare-fun e!722832 () Bool)

(assert (=> b!1131369 (= e!722832 (forall!2639 (right!9841 (c!189412 acc!225)) lambda!45475))))

(declare-fun b!1131368 () Bool)

(declare-fun e!722831 () Bool)

(assert (=> b!1131368 (= e!722831 e!722832)))

(declare-fun lt!379951 () Unit!16639)

(declare-fun lemmaForallConcat!85 (List!10982 List!10982 Int) Unit!16639)

(assert (=> b!1131368 (= lt!379951 (lemmaForallConcat!85 (list!3956 (left!9511 (c!189412 acc!225))) (list!3956 (right!9841 (c!189412 acc!225))) lambda!45475))))

(declare-fun res!508569 () Bool)

(assert (=> b!1131368 (= res!508569 (forall!2639 (left!9511 (c!189412 acc!225)) lambda!45475))))

(assert (=> b!1131368 (=> (not res!508569) (not e!722832))))

(declare-fun b!1131367 () Bool)

(declare-fun forall!2647 (IArray!6991 Int) Bool)

(assert (=> b!1131367 (= e!722831 (forall!2647 (xs!6186 (c!189412 acc!225)) lambda!45475))))

(declare-fun b!1131366 () Bool)

(declare-fun e!722833 () Bool)

(assert (=> b!1131366 (= e!722833 e!722831)))

(declare-fun c!189563 () Bool)

(assert (=> b!1131366 (= c!189563 ((_ is Leaf!5448) (c!189412 acc!225)))))

(declare-fun d!318807 () Bool)

(declare-fun lt!379950 () Bool)

(assert (=> d!318807 (= lt!379950 (forall!2630 (list!3956 (c!189412 acc!225)) lambda!45475))))

(assert (=> d!318807 (= lt!379950 e!722833)))

(declare-fun res!508570 () Bool)

(assert (=> d!318807 (=> res!508570 e!722833)))

(assert (=> d!318807 (= res!508570 ((_ is Empty!3493) (c!189412 acc!225)))))

(assert (=> d!318807 (= (forall!2639 (c!189412 acc!225) lambda!45475) lt!379950)))

(assert (= (and d!318807 (not res!508570)) b!1131366))

(assert (= (and b!1131366 c!189563) b!1131367))

(assert (= (and b!1131366 (not c!189563)) b!1131368))

(assert (= (and b!1131368 res!508569) b!1131369))

(declare-fun m!1280579 () Bool)

(assert (=> b!1131369 m!1280579))

(assert (=> b!1131368 m!1280307))

(assert (=> b!1131368 m!1280309))

(assert (=> b!1131368 m!1280307))

(assert (=> b!1131368 m!1280309))

(declare-fun m!1280581 () Bool)

(assert (=> b!1131368 m!1280581))

(declare-fun m!1280583 () Bool)

(assert (=> b!1131368 m!1280583))

(declare-fun m!1280585 () Bool)

(assert (=> b!1131367 m!1280585))

(assert (=> d!318807 m!1278975))

(assert (=> d!318807 m!1278975))

(declare-fun m!1280587 () Bool)

(assert (=> d!318807 m!1280587))

(assert (=> d!318491 d!318807))

(declare-fun d!318809 () Bool)

(declare-fun res!508571 () Bool)

(declare-fun e!722834 () Bool)

(assert (=> d!318809 (=> res!508571 e!722834)))

(assert (=> d!318809 (= res!508571 ((_ is Nil!10955) lt!379403))))

(assert (=> d!318809 (= (forall!2640 lt!379403 lambda!45501) e!722834)))

(declare-fun b!1131370 () Bool)

(declare-fun e!722835 () Bool)

(assert (=> b!1131370 (= e!722834 e!722835)))

(declare-fun res!508572 () Bool)

(assert (=> b!1131370 (=> (not res!508572) (not e!722835))))

(assert (=> b!1131370 (= res!508572 (dynLambda!4826 lambda!45501 (h!16356 lt!379403)))))

(declare-fun b!1131371 () Bool)

(assert (=> b!1131371 (= e!722835 (forall!2640 (t!106833 lt!379403) lambda!45501))))

(assert (= (and d!318809 (not res!508571)) b!1131370))

(assert (= (and b!1131370 res!508572) b!1131371))

(declare-fun b_lambda!33253 () Bool)

(assert (=> (not b_lambda!33253) (not b!1131370)))

(declare-fun m!1280589 () Bool)

(assert (=> b!1131370 m!1280589))

(declare-fun m!1280591 () Bool)

(assert (=> b!1131371 m!1280591))

(assert (=> b!1130513 d!318809))

(declare-fun d!318811 () Bool)

(assert (=> d!318811 (forall!2640 lt!379403 lambda!45501)))

(declare-fun lt!379952 () Unit!16639)

(assert (=> d!318811 (= lt!379952 (choose!7230 lt!379403 lt!379399 lambda!45501))))

(assert (=> d!318811 (forall!2640 lt!379399 lambda!45501)))

(assert (=> d!318811 (= (lemmaForallSubseq!72 lt!379403 lt!379399 lambda!45501) lt!379952)))

(declare-fun bs!277753 () Bool)

(assert (= bs!277753 d!318811))

(assert (=> bs!277753 m!1279285))

(declare-fun m!1280593 () Bool)

(assert (=> bs!277753 m!1280593))

(declare-fun m!1280595 () Bool)

(assert (=> bs!277753 m!1280595))

(assert (=> b!1130513 d!318811))

(declare-fun b!1131373 () Bool)

(declare-fun e!722836 () Bool)

(declare-fun e!722838 () Bool)

(assert (=> b!1131373 (= e!722836 e!722838)))

(declare-fun res!508576 () Bool)

(assert (=> b!1131373 (=> res!508576 e!722838)))

(declare-fun e!722839 () Bool)

(assert (=> b!1131373 (= res!508576 e!722839)))

(declare-fun res!508575 () Bool)

(assert (=> b!1131373 (=> (not res!508575) (not e!722839))))

(assert (=> b!1131373 (= res!508575 (= (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) (h!16356 lt!379399)))))

(declare-fun b!1131375 () Bool)

(assert (=> b!1131375 (= e!722838 (subseq!172 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (t!106833 lt!379399)))))

(declare-fun b!1131374 () Bool)

(assert (=> b!1131374 (= e!722839 (subseq!172 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) (t!106833 lt!379399)))))

(declare-fun d!318813 () Bool)

(declare-fun res!508574 () Bool)

(declare-fun e!722837 () Bool)

(assert (=> d!318813 (=> res!508574 e!722837)))

(assert (=> d!318813 (= res!508574 ((_ is Nil!10955) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))))))

(assert (=> d!318813 (= (subseq!172 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!379399) e!722837)))

(declare-fun b!1131372 () Bool)

(assert (=> b!1131372 (= e!722837 e!722836)))

(declare-fun res!508573 () Bool)

(assert (=> b!1131372 (=> (not res!508573) (not e!722836))))

(assert (=> b!1131372 (= res!508573 ((_ is Cons!10955) lt!379399))))

(assert (= (and d!318813 (not res!508574)) b!1131372))

(assert (= (and b!1131372 res!508573) b!1131373))

(assert (= (and b!1131373 res!508575) b!1131374))

(assert (= (and b!1131373 (not res!508576)) b!1131375))

(assert (=> b!1131375 m!1279277))

(declare-fun m!1280597 () Bool)

(assert (=> b!1131375 m!1280597))

(declare-fun m!1280599 () Bool)

(assert (=> b!1131374 m!1280599))

(assert (=> b!1130513 d!318813))

(declare-fun d!318815 () Bool)

(declare-fun res!508645 () Bool)

(declare-fun e!722916 () Bool)

(assert (=> d!318815 (=> res!508645 e!722916)))

(assert (=> d!318815 (= res!508645 (or (not ((_ is Cons!10955) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))) (not ((_ is Cons!10955) (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))))

(assert (=> d!318815 (= (tokensListTwoByTwoPredicateSeparableList!69 lt!379402 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (rules!9208 pt!21)) e!722916)))

(declare-fun b!1131492 () Bool)

(declare-fun e!722915 () Bool)

(assert (=> b!1131492 (= e!722916 e!722915)))

(declare-fun res!508646 () Bool)

(assert (=> b!1131492 (=> (not res!508646) (not e!722915))))

(assert (=> b!1131492 (= res!508646 (separableTokensPredicate!93 lt!379402 (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))) (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))) (rules!9208 pt!21)))))

(declare-fun lt!380061 () Unit!16639)

(declare-fun Unit!16667 () Unit!16639)

(assert (=> b!1131492 (= lt!380061 Unit!16667)))

(assert (=> b!1131492 (> (size!8536 (charsOf!1031 (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))) 0)))

(declare-fun lt!380063 () Unit!16639)

(declare-fun Unit!16668 () Unit!16639)

(assert (=> b!1131492 (= lt!380063 Unit!16668)))

(assert (=> b!1131492 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(declare-fun lt!380067 () Unit!16639)

(declare-fun Unit!16669 () Unit!16639)

(assert (=> b!1131492 (= lt!380067 Unit!16669)))

(assert (=> b!1131492 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))))))

(declare-fun lt!380065 () Unit!16639)

(declare-fun lt!380064 () Unit!16639)

(assert (=> b!1131492 (= lt!380065 lt!380064)))

(assert (=> b!1131492 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(assert (=> b!1131492 (= lt!380064 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379402 (rules!9208 pt!21) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))))))))

(declare-fun lt!380062 () Unit!16639)

(declare-fun lt!380066 () Unit!16639)

(assert (=> b!1131492 (= lt!380062 lt!380066)))

(assert (=> b!1131492 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))))))

(assert (=> b!1131492 (= lt!380066 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379402 (rules!9208 pt!21) (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) (h!16356 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))))))

(declare-fun b!1131493 () Bool)

(assert (=> b!1131493 (= e!722915 (tokensListTwoByTwoPredicateSeparableList!69 lt!379402 (Cons!10955 (h!16356 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)))) (t!106833 (t!106833 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984))))) (rules!9208 pt!21)))))

(assert (= (and d!318815 (not res!508645)) b!1131492))

(assert (= (and b!1131492 res!508646) b!1131493))

(assert (=> b!1131492 m!1279625))

(assert (=> b!1131492 m!1279277))

(declare-fun m!1280867 () Bool)

(assert (=> b!1131492 m!1280867))

(declare-fun m!1280869 () Bool)

(assert (=> b!1131492 m!1280869))

(declare-fun m!1280871 () Bool)

(assert (=> b!1131492 m!1280871))

(declare-fun m!1280873 () Bool)

(assert (=> b!1131492 m!1280873))

(assert (=> b!1131492 m!1280871))

(declare-fun m!1280875 () Bool)

(assert (=> b!1131492 m!1280875))

(assert (=> b!1131492 m!1279277))

(declare-fun m!1280877 () Bool)

(assert (=> b!1131492 m!1280877))

(declare-fun m!1280879 () Bool)

(assert (=> b!1131493 m!1280879))

(assert (=> b!1130513 d!318815))

(assert (=> b!1130513 d!318567))

(declare-fun d!318845 () Bool)

(assert (=> d!318845 (subseq!172 (drop!417 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!379399)))

(declare-fun lt!380068 () Unit!16639)

(assert (=> d!318845 (= lt!380068 (choose!7234 lt!379399 (ite c!189407 lt!378986 lt!378984)))))

(assert (=> d!318845 (= (lemmaDropSubseq!13 lt!379399 (ite c!189407 lt!378986 lt!378984)) lt!380068)))

(declare-fun bs!277776 () Bool)

(assert (= bs!277776 d!318845))

(assert (=> bs!277776 m!1279277))

(assert (=> bs!277776 m!1279277))

(assert (=> bs!277776 m!1279279))

(declare-fun m!1280881 () Bool)

(assert (=> bs!277776 m!1280881))

(assert (=> b!1130513 d!318845))

(declare-fun d!318847 () Bool)

(assert (=> d!318847 (= (usesJsonRules!0 (h!16359 (list!3952 acc!225))) (= (rules!9208 (h!16359 (list!3952 acc!225))) (rules!109 JsonLexer!309)))))

(declare-fun bs!277777 () Bool)

(assert (= bs!277777 d!318847))

(assert (=> bs!277777 m!1279027))

(assert (=> bs!277603 d!318847))

(assert (=> b!1130280 d!318479))

(assert (=> b!1130278 d!318483))

(declare-fun d!318849 () Bool)

(assert (=> d!318849 (= (inv!14177 (xs!6185 (c!189411 indices!2))) (<= (size!8534 (innerList!3552 (xs!6185 (c!189411 indices!2)))) 2147483647))))

(declare-fun bs!277778 () Bool)

(assert (= bs!277778 d!318849))

(declare-fun m!1280883 () Bool)

(assert (=> bs!277778 m!1280883))

(assert (=> b!1130546 d!318849))

(declare-fun d!318851 () Bool)

(assert (=> d!318851 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379388)))

(declare-fun lt!380103 () Unit!16639)

(declare-fun choose!7242 (LexerInterface!1595 List!10980 List!10979 Token!3440) Unit!16639)

(assert (=> d!318851 (= lt!380103 (choose!7242 lt!379395 (rules!9208 pt!21) lt!379391 lt!379388))))

(assert (=> d!318851 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318851 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379391 lt!379388) lt!380103)))

(declare-fun bs!277794 () Bool)

(assert (= bs!277794 d!318851))

(assert (=> bs!277794 m!1279389))

(declare-fun m!1280957 () Bool)

(assert (=> bs!277794 m!1280957))

(assert (=> bs!277794 m!1279015))

(assert (=> b!1130511 d!318851))

(declare-fun d!318879 () Bool)

(assert (=> d!318879 (= (tail!1613 (drop!417 lt!379416 lt!379429)) (drop!417 lt!379416 (+ lt!379429 1)))))

(declare-fun lt!380108 () Unit!16639)

(declare-fun choose!7243 (List!10979 Int) Unit!16639)

(assert (=> d!318879 (= lt!380108 (choose!7243 lt!379416 lt!379429))))

(declare-fun e!722960 () Bool)

(assert (=> d!318879 e!722960))

(declare-fun res!508701 () Bool)

(assert (=> d!318879 (=> (not res!508701) (not e!722960))))

(assert (=> d!318879 (= res!508701 (>= lt!379429 0))))

(assert (=> d!318879 (= (lemmaDropTail!322 lt!379416 lt!379429) lt!380108)))

(declare-fun b!1131555 () Bool)

(assert (=> b!1131555 (= e!722960 (< lt!379429 (size!8539 lt!379416)))))

(assert (= (and d!318879 res!508701) b!1131555))

(assert (=> d!318879 m!1279381))

(assert (=> d!318879 m!1279381))

(assert (=> d!318879 m!1279387))

(assert (=> d!318879 m!1279375))

(declare-fun m!1280989 () Bool)

(assert (=> d!318879 m!1280989))

(declare-fun m!1280991 () Bool)

(assert (=> b!1131555 m!1280991))

(assert (=> b!1130511 d!318879))

(declare-fun d!318889 () Bool)

(declare-fun prefixMatchZipperSequence!65 (Regex!3159 BalanceConc!7002) Bool)

(declare-fun rulesRegex!46 (LexerInterface!1595 List!10980) Regex!3159)

(declare-fun ++!2913 (BalanceConc!7002 BalanceConc!7002) BalanceConc!7002)

(declare-fun singletonSeq!603 ((_ BitVec 16)) BalanceConc!7002)

(declare-fun apply!2272 (BalanceConc!7002 Int) (_ BitVec 16))

(assert (=> d!318889 (= (separableTokensPredicate!93 lt!379395 (apply!2266 (tokens!1450 pt!21) lt!379419) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)) (rules!9208 pt!21)) (not (prefixMatchZipperSequence!65 (rulesRegex!46 lt!379395 (rules!9208 pt!21)) (++!2913 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) lt!379419)) (singletonSeq!603 (apply!2272 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))) 0))))))))

(declare-fun bs!277796 () Bool)

(assert (= bs!277796 d!318889))

(assert (=> bs!277796 m!1279357))

(declare-fun m!1281057 () Bool)

(assert (=> bs!277796 m!1281057))

(declare-fun m!1281059 () Bool)

(assert (=> bs!277796 m!1281059))

(declare-fun m!1281061 () Bool)

(assert (=> bs!277796 m!1281061))

(declare-fun m!1281063 () Bool)

(assert (=> bs!277796 m!1281063))

(assert (=> bs!277796 m!1281059))

(declare-fun m!1281065 () Bool)

(assert (=> bs!277796 m!1281065))

(declare-fun m!1281067 () Bool)

(assert (=> bs!277796 m!1281067))

(assert (=> bs!277796 m!1279379))

(assert (=> bs!277796 m!1281065))

(assert (=> bs!277796 m!1281057))

(assert (=> bs!277796 m!1281067))

(assert (=> bs!277796 m!1281061))

(assert (=> bs!277796 m!1279351))

(assert (=> bs!277796 m!1279379))

(assert (=> b!1130511 d!318889))

(declare-fun d!318897 () Bool)

(declare-fun lt!380110 () Bool)

(declare-fun e!723015 () Bool)

(assert (=> d!318897 (= lt!380110 e!723015)))

(declare-fun res!508728 () Bool)

(assert (=> d!318897 (=> (not res!508728) (not e!723015))))

(assert (=> d!318897 (= res!508728 (= (list!3958 (_1!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) lt!379419)))))) (list!3958 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) lt!379419)))))))

(declare-fun e!723016 () Bool)

(assert (=> d!318897 (= lt!380110 e!723016)))

(declare-fun res!508726 () Bool)

(assert (=> d!318897 (=> (not res!508726) (not e!723016))))

(declare-fun lt!380109 () tuple2!11916)

(assert (=> d!318897 (= res!508726 (= (size!8533 (_1!6805 lt!380109)) 1))))

(assert (=> d!318897 (= lt!380109 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) lt!379419)))))))

(assert (=> d!318897 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318897 (= (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) lt!379419)) lt!380110)))

(declare-fun b!1131631 () Bool)

(declare-fun res!508727 () Bool)

(assert (=> b!1131631 (=> (not res!508727) (not e!723016))))

(assert (=> b!1131631 (= res!508727 (= (apply!2266 (_1!6805 lt!380109) 0) (apply!2266 (tokens!1450 pt!21) lt!379419)))))

(declare-fun b!1131632 () Bool)

(assert (=> b!1131632 (= e!723016 (isEmpty!6788 (_2!6805 lt!380109)))))

(declare-fun b!1131633 () Bool)

(assert (=> b!1131633 (= e!723015 (isEmpty!6788 (_2!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) lt!379419)))))))))

(assert (= (and d!318897 res!508726) b!1131631))

(assert (= (and b!1131631 res!508727) b!1131632))

(assert (= (and d!318897 res!508728) b!1131633))

(declare-fun m!1281069 () Bool)

(assert (=> d!318897 m!1281069))

(declare-fun m!1281071 () Bool)

(assert (=> d!318897 m!1281071))

(assert (=> d!318897 m!1279357))

(assert (=> d!318897 m!1281069))

(declare-fun m!1281073 () Bool)

(assert (=> d!318897 m!1281073))

(assert (=> d!318897 m!1279015))

(assert (=> d!318897 m!1281071))

(declare-fun m!1281075 () Bool)

(assert (=> d!318897 m!1281075))

(declare-fun m!1281077 () Bool)

(assert (=> d!318897 m!1281077))

(assert (=> d!318897 m!1281069))

(declare-fun m!1281079 () Bool)

(assert (=> d!318897 m!1281079))

(declare-fun m!1281081 () Bool)

(assert (=> b!1131631 m!1281081))

(declare-fun m!1281083 () Bool)

(assert (=> b!1131632 m!1281083))

(assert (=> b!1131633 m!1279357))

(assert (=> b!1131633 m!1281069))

(assert (=> b!1131633 m!1281069))

(assert (=> b!1131633 m!1281071))

(assert (=> b!1131633 m!1281071))

(assert (=> b!1131633 m!1281075))

(declare-fun m!1281085 () Bool)

(assert (=> b!1131633 m!1281085))

(assert (=> b!1130511 d!318897))

(declare-fun d!318899 () Bool)

(assert (=> d!318899 (= (head!2053 (drop!417 lt!379400 lt!379419)) (h!16356 (drop!417 lt!379400 lt!379419)))))

(assert (=> b!1130511 d!318899))

(declare-fun d!318901 () Bool)

(declare-fun lt!380113 () Token!3440)

(assert (=> d!318901 (= lt!380113 (apply!2267 (list!3958 (tokens!1450 pt!21)) lt!379419))))

(declare-fun apply!2273 (Conc!3491 Int) Token!3440)

(assert (=> d!318901 (= lt!380113 (apply!2273 (c!189410 (tokens!1450 pt!21)) lt!379419))))

(declare-fun e!723026 () Bool)

(assert (=> d!318901 e!723026))

(declare-fun res!508731 () Bool)

(assert (=> d!318901 (=> (not res!508731) (not e!723026))))

(assert (=> d!318901 (= res!508731 (<= 0 lt!379419))))

(assert (=> d!318901 (= (apply!2266 (tokens!1450 pt!21) lt!379419) lt!380113)))

(declare-fun b!1131643 () Bool)

(assert (=> b!1131643 (= e!723026 (< lt!379419 (size!8533 (tokens!1450 pt!21))))))

(assert (= (and d!318901 res!508731) b!1131643))

(assert (=> d!318901 m!1279305))

(assert (=> d!318901 m!1279305))

(declare-fun m!1281105 () Bool)

(assert (=> d!318901 m!1281105))

(declare-fun m!1281107 () Bool)

(assert (=> d!318901 m!1281107))

(assert (=> b!1131643 m!1278981))

(assert (=> b!1130511 d!318901))

(declare-fun d!318917 () Bool)

(assert (=> d!318917 (= (tail!1613 (drop!417 lt!379416 lt!379429)) (t!106833 (drop!417 lt!379416 lt!379429)))))

(assert (=> b!1130511 d!318917))

(declare-fun d!318919 () Bool)

(assert (=> d!318919 (= (tail!1613 (drop!417 lt!379386 lt!379419)) (drop!417 lt!379386 (+ lt!379419 1)))))

(declare-fun lt!380114 () Unit!16639)

(assert (=> d!318919 (= lt!380114 (choose!7243 lt!379386 lt!379419))))

(declare-fun e!723027 () Bool)

(assert (=> d!318919 e!723027))

(declare-fun res!508732 () Bool)

(assert (=> d!318919 (=> (not res!508732) (not e!723027))))

(assert (=> d!318919 (= res!508732 (>= lt!379419 0))))

(assert (=> d!318919 (= (lemmaDropTail!322 lt!379386 lt!379419) lt!380114)))

(declare-fun b!1131644 () Bool)

(assert (=> b!1131644 (= e!723027 (< lt!379419 (size!8539 lt!379386)))))

(assert (= (and d!318919 res!508732) b!1131644))

(assert (=> d!318919 m!1279361))

(assert (=> d!318919 m!1279361))

(assert (=> d!318919 m!1279363))

(assert (=> d!318919 m!1279377))

(declare-fun m!1281109 () Bool)

(assert (=> d!318919 m!1281109))

(declare-fun m!1281111 () Bool)

(assert (=> b!1131644 m!1281111))

(assert (=> b!1130511 d!318919))

(declare-fun b!1131645 () Bool)

(declare-fun e!723028 () Int)

(assert (=> b!1131645 (= e!723028 0)))

(declare-fun b!1131646 () Bool)

(declare-fun e!723030 () Bool)

(declare-fun lt!380115 () List!10979)

(declare-fun e!723031 () Int)

(assert (=> b!1131646 (= e!723030 (= (size!8539 lt!380115) e!723031))))

(declare-fun c!189588 () Bool)

(assert (=> b!1131646 (= c!189588 (<= lt!379419 0))))

(declare-fun b!1131647 () Bool)

(declare-fun e!723029 () List!10979)

(assert (=> b!1131647 (= e!723029 lt!379386)))

(declare-fun bm!80653 () Bool)

(declare-fun call!80658 () Int)

(assert (=> bm!80653 (= call!80658 (size!8539 lt!379386))))

(declare-fun b!1131648 () Bool)

(declare-fun e!723032 () List!10979)

(assert (=> b!1131648 (= e!723032 Nil!10955)))

(declare-fun b!1131649 () Bool)

(assert (=> b!1131649 (= e!723028 (- call!80658 lt!379419))))

(declare-fun d!318921 () Bool)

(assert (=> d!318921 e!723030))

(declare-fun res!508733 () Bool)

(assert (=> d!318921 (=> (not res!508733) (not e!723030))))

(assert (=> d!318921 (= res!508733 (= ((_ map implies) (content!1572 lt!380115) (content!1572 lt!379386)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318921 (= lt!380115 e!723032)))

(declare-fun c!189587 () Bool)

(assert (=> d!318921 (= c!189587 ((_ is Nil!10955) lt!379386))))

(assert (=> d!318921 (= (drop!417 lt!379386 lt!379419) lt!380115)))

(declare-fun b!1131650 () Bool)

(assert (=> b!1131650 (= e!723029 (drop!417 (t!106833 lt!379386) (- lt!379419 1)))))

(declare-fun b!1131651 () Bool)

(assert (=> b!1131651 (= e!723031 e!723028)))

(declare-fun c!189589 () Bool)

(assert (=> b!1131651 (= c!189589 (>= lt!379419 call!80658))))

(declare-fun b!1131652 () Bool)

(assert (=> b!1131652 (= e!723032 e!723029)))

(declare-fun c!189590 () Bool)

(assert (=> b!1131652 (= c!189590 (<= lt!379419 0))))

(declare-fun b!1131653 () Bool)

(assert (=> b!1131653 (= e!723031 call!80658)))

(assert (= (and d!318921 c!189587) b!1131648))

(assert (= (and d!318921 (not c!189587)) b!1131652))

(assert (= (and b!1131652 c!189590) b!1131647))

(assert (= (and b!1131652 (not c!189590)) b!1131650))

(assert (= (and d!318921 res!508733) b!1131646))

(assert (= (and b!1131646 c!189588) b!1131653))

(assert (= (and b!1131646 (not c!189588)) b!1131651))

(assert (= (and b!1131651 c!189589) b!1131645))

(assert (= (and b!1131651 (not c!189589)) b!1131649))

(assert (= (or b!1131653 b!1131651 b!1131649) bm!80653))

(declare-fun m!1281113 () Bool)

(assert (=> b!1131646 m!1281113))

(assert (=> bm!80653 m!1281111))

(declare-fun m!1281115 () Bool)

(assert (=> d!318921 m!1281115))

(declare-fun m!1281117 () Bool)

(assert (=> d!318921 m!1281117))

(declare-fun m!1281119 () Bool)

(assert (=> b!1131650 m!1281119))

(assert (=> b!1130511 d!318921))

(declare-fun b!1131654 () Bool)

(declare-fun e!723033 () Int)

(assert (=> b!1131654 (= e!723033 0)))

(declare-fun b!1131655 () Bool)

(declare-fun e!723035 () Bool)

(declare-fun lt!380116 () List!10979)

(declare-fun e!723036 () Int)

(assert (=> b!1131655 (= e!723035 (= (size!8539 lt!380116) e!723036))))

(declare-fun c!189592 () Bool)

(assert (=> b!1131655 (= c!189592 (<= lt!379397 0))))

(declare-fun b!1131656 () Bool)

(declare-fun e!723034 () List!10979)

(assert (=> b!1131656 (= e!723034 lt!379401)))

(declare-fun bm!80654 () Bool)

(declare-fun call!80659 () Int)

(assert (=> bm!80654 (= call!80659 (size!8539 lt!379401))))

(declare-fun b!1131657 () Bool)

(declare-fun e!723037 () List!10979)

(assert (=> b!1131657 (= e!723037 Nil!10955)))

(declare-fun b!1131658 () Bool)

(assert (=> b!1131658 (= e!723033 (- call!80659 lt!379397))))

(declare-fun d!318923 () Bool)

(assert (=> d!318923 e!723035))

(declare-fun res!508734 () Bool)

(assert (=> d!318923 (=> (not res!508734) (not e!723035))))

(assert (=> d!318923 (= res!508734 (= ((_ map implies) (content!1572 lt!380116) (content!1572 lt!379401)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318923 (= lt!380116 e!723037)))

(declare-fun c!189591 () Bool)

(assert (=> d!318923 (= c!189591 ((_ is Nil!10955) lt!379401))))

(assert (=> d!318923 (= (drop!417 lt!379401 lt!379397) lt!380116)))

(declare-fun b!1131659 () Bool)

(assert (=> b!1131659 (= e!723034 (drop!417 (t!106833 lt!379401) (- lt!379397 1)))))

(declare-fun b!1131660 () Bool)

(assert (=> b!1131660 (= e!723036 e!723033)))

(declare-fun c!189593 () Bool)

(assert (=> b!1131660 (= c!189593 (>= lt!379397 call!80659))))

(declare-fun b!1131661 () Bool)

(assert (=> b!1131661 (= e!723037 e!723034)))

(declare-fun c!189594 () Bool)

(assert (=> b!1131661 (= c!189594 (<= lt!379397 0))))

(declare-fun b!1131662 () Bool)

(assert (=> b!1131662 (= e!723036 call!80659)))

(assert (= (and d!318923 c!189591) b!1131657))

(assert (= (and d!318923 (not c!189591)) b!1131661))

(assert (= (and b!1131661 c!189594) b!1131656))

(assert (= (and b!1131661 (not c!189594)) b!1131659))

(assert (= (and d!318923 res!508734) b!1131655))

(assert (= (and b!1131655 c!189592) b!1131662))

(assert (= (and b!1131655 (not c!189592)) b!1131660))

(assert (= (and b!1131660 c!189593) b!1131654))

(assert (= (and b!1131660 (not c!189593)) b!1131658))

(assert (= (or b!1131662 b!1131660 b!1131658) bm!80654))

(declare-fun m!1281121 () Bool)

(assert (=> b!1131655 m!1281121))

(declare-fun m!1281123 () Bool)

(assert (=> bm!80654 m!1281123))

(declare-fun m!1281125 () Bool)

(assert (=> d!318923 m!1281125))

(declare-fun m!1281127 () Bool)

(assert (=> d!318923 m!1281127))

(declare-fun m!1281129 () Bool)

(assert (=> b!1131659 m!1281129))

(assert (=> b!1130511 d!318923))

(declare-fun d!318925 () Bool)

(assert (=> d!318925 (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379428)))

(declare-fun lt!380117 () Unit!16639)

(assert (=> d!318925 (= lt!380117 (choose!7242 lt!379395 (rules!9208 pt!21) lt!379441 lt!379428))))

(assert (=> d!318925 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318925 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379395 (rules!9208 pt!21) lt!379441 lt!379428) lt!380117)))

(declare-fun bs!277804 () Bool)

(assert (= bs!277804 d!318925))

(assert (=> bs!277804 m!1279393))

(declare-fun m!1281131 () Bool)

(assert (=> bs!277804 m!1281131))

(assert (=> bs!277804 m!1279015))

(assert (=> b!1130511 d!318925))

(declare-fun b!1131663 () Bool)

(declare-fun e!723038 () Int)

(assert (=> b!1131663 (= e!723038 0)))

(declare-fun b!1131664 () Bool)

(declare-fun e!723040 () Bool)

(declare-fun lt!380118 () List!10979)

(declare-fun e!723041 () Int)

(assert (=> b!1131664 (= e!723040 (= (size!8539 lt!380118) e!723041))))

(declare-fun c!189596 () Bool)

(assert (=> b!1131664 (= c!189596 (<= (+ lt!379429 1) 0))))

(declare-fun b!1131665 () Bool)

(declare-fun e!723039 () List!10979)

(assert (=> b!1131665 (= e!723039 lt!379416)))

(declare-fun bm!80655 () Bool)

(declare-fun call!80660 () Int)

(assert (=> bm!80655 (= call!80660 (size!8539 lt!379416))))

(declare-fun b!1131666 () Bool)

(declare-fun e!723042 () List!10979)

(assert (=> b!1131666 (= e!723042 Nil!10955)))

(declare-fun b!1131667 () Bool)

(assert (=> b!1131667 (= e!723038 (- call!80660 (+ lt!379429 1)))))

(declare-fun d!318927 () Bool)

(assert (=> d!318927 e!723040))

(declare-fun res!508735 () Bool)

(assert (=> d!318927 (=> (not res!508735) (not e!723040))))

(assert (=> d!318927 (= res!508735 (= ((_ map implies) (content!1572 lt!380118) (content!1572 lt!379416)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318927 (= lt!380118 e!723042)))

(declare-fun c!189595 () Bool)

(assert (=> d!318927 (= c!189595 ((_ is Nil!10955) lt!379416))))

(assert (=> d!318927 (= (drop!417 lt!379416 (+ lt!379429 1)) lt!380118)))

(declare-fun b!1131668 () Bool)

(assert (=> b!1131668 (= e!723039 (drop!417 (t!106833 lt!379416) (- (+ lt!379429 1) 1)))))

(declare-fun b!1131669 () Bool)

(assert (=> b!1131669 (= e!723041 e!723038)))

(declare-fun c!189597 () Bool)

(assert (=> b!1131669 (= c!189597 (>= (+ lt!379429 1) call!80660))))

(declare-fun b!1131670 () Bool)

(assert (=> b!1131670 (= e!723042 e!723039)))

(declare-fun c!189598 () Bool)

(assert (=> b!1131670 (= c!189598 (<= (+ lt!379429 1) 0))))

(declare-fun b!1131671 () Bool)

(assert (=> b!1131671 (= e!723041 call!80660)))

(assert (= (and d!318927 c!189595) b!1131666))

(assert (= (and d!318927 (not c!189595)) b!1131670))

(assert (= (and b!1131670 c!189598) b!1131665))

(assert (= (and b!1131670 (not c!189598)) b!1131668))

(assert (= (and d!318927 res!508735) b!1131664))

(assert (= (and b!1131664 c!189596) b!1131671))

(assert (= (and b!1131664 (not c!189596)) b!1131669))

(assert (= (and b!1131669 c!189597) b!1131663))

(assert (= (and b!1131669 (not c!189597)) b!1131667))

(assert (= (or b!1131671 b!1131669 b!1131667) bm!80655))

(declare-fun m!1281133 () Bool)

(assert (=> b!1131664 m!1281133))

(assert (=> bm!80655 m!1280991))

(declare-fun m!1281135 () Bool)

(assert (=> d!318927 m!1281135))

(declare-fun m!1281137 () Bool)

(assert (=> d!318927 m!1281137))

(declare-fun m!1281139 () Bool)

(assert (=> b!1131668 m!1281139))

(assert (=> b!1130511 d!318927))

(declare-fun d!318929 () Bool)

(declare-fun lt!380121 () BalanceConc!7002)

(declare-fun list!3968 (BalanceConc!7002) List!10978)

(assert (=> d!318929 (= (list!3968 lt!380121) (originalCharacters!2443 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))

(declare-fun dynLambda!4830 (Int TokenValue!1955) BalanceConc!7002)

(assert (=> d!318929 (= lt!380121 (dynLambda!4830 (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))) (value!61833 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))))

(assert (=> d!318929 (= (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))) lt!380121)))

(declare-fun b_lambda!33275 () Bool)

(assert (=> (not b_lambda!33275) (not d!318929)))

(declare-fun t!106937 () Bool)

(declare-fun tb!65035 () Bool)

(assert (=> (and b!1130557 (= (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21)))) (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))) t!106937) tb!65035))

(declare-fun tp!330911 () Bool)

(declare-fun e!723045 () Bool)

(declare-fun b!1131676 () Bool)

(declare-fun inv!14182 (Conc!3490) Bool)

(assert (=> b!1131676 (= e!723045 (and (inv!14182 (c!189409 (dynLambda!4830 (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))) (value!61833 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))) tp!330911))))

(declare-fun result!77574 () Bool)

(declare-fun inv!14183 (BalanceConc!7002) Bool)

(assert (=> tb!65035 (= result!77574 (and (inv!14183 (dynLambda!4830 (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))) (value!61833 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))) e!723045))))

(assert (= tb!65035 b!1131676))

(declare-fun m!1281141 () Bool)

(assert (=> b!1131676 m!1281141))

(declare-fun m!1281143 () Bool)

(assert (=> tb!65035 m!1281143))

(assert (=> d!318929 t!106937))

(declare-fun b_and!79935 () Bool)

(assert (= b_and!79923 (and (=> t!106937 result!77574) b_and!79935)))

(declare-fun m!1281145 () Bool)

(assert (=> d!318929 m!1281145))

(declare-fun m!1281147 () Bool)

(assert (=> d!318929 m!1281147))

(assert (=> b!1130511 d!318929))

(declare-fun d!318931 () Bool)

(assert (=> d!318931 (= (tail!1613 (drop!417 lt!379386 lt!379419)) (t!106833 (drop!417 lt!379386 lt!379419)))))

(assert (=> b!1130511 d!318931))

(declare-fun d!318933 () Bool)

(declare-fun lt!380123 () Bool)

(declare-fun e!723046 () Bool)

(assert (=> d!318933 (= lt!380123 e!723046)))

(declare-fun res!508738 () Bool)

(assert (=> d!318933 (=> (not res!508738) (not e!723046))))

(assert (=> d!318933 (= res!508738 (= (list!3958 (_1!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379388))))) (list!3958 (singletonSeq!600 lt!379388))))))

(declare-fun e!723047 () Bool)

(assert (=> d!318933 (= lt!380123 e!723047)))

(declare-fun res!508736 () Bool)

(assert (=> d!318933 (=> (not res!508736) (not e!723047))))

(declare-fun lt!380122 () tuple2!11916)

(assert (=> d!318933 (= res!508736 (= (size!8533 (_1!6805 lt!380122)) 1))))

(assert (=> d!318933 (= lt!380122 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379388))))))

(assert (=> d!318933 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318933 (= (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379388) lt!380123)))

(declare-fun b!1131677 () Bool)

(declare-fun res!508737 () Bool)

(assert (=> b!1131677 (=> (not res!508737) (not e!723047))))

(assert (=> b!1131677 (= res!508737 (= (apply!2266 (_1!6805 lt!380122) 0) lt!379388))))

(declare-fun b!1131678 () Bool)

(assert (=> b!1131678 (= e!723047 (isEmpty!6788 (_2!6805 lt!380122)))))

(declare-fun b!1131679 () Bool)

(assert (=> b!1131679 (= e!723046 (isEmpty!6788 (_2!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379388))))))))

(assert (= (and d!318933 res!508736) b!1131677))

(assert (= (and b!1131677 res!508737) b!1131678))

(assert (= (and d!318933 res!508738) b!1131679))

(declare-fun m!1281149 () Bool)

(assert (=> d!318933 m!1281149))

(declare-fun m!1281151 () Bool)

(assert (=> d!318933 m!1281151))

(assert (=> d!318933 m!1281149))

(declare-fun m!1281153 () Bool)

(assert (=> d!318933 m!1281153))

(assert (=> d!318933 m!1279015))

(assert (=> d!318933 m!1281151))

(declare-fun m!1281155 () Bool)

(assert (=> d!318933 m!1281155))

(declare-fun m!1281157 () Bool)

(assert (=> d!318933 m!1281157))

(assert (=> d!318933 m!1281149))

(declare-fun m!1281159 () Bool)

(assert (=> d!318933 m!1281159))

(declare-fun m!1281161 () Bool)

(assert (=> b!1131677 m!1281161))

(declare-fun m!1281163 () Bool)

(assert (=> b!1131678 m!1281163))

(assert (=> b!1131679 m!1281149))

(assert (=> b!1131679 m!1281149))

(assert (=> b!1131679 m!1281151))

(assert (=> b!1131679 m!1281151))

(assert (=> b!1131679 m!1281155))

(declare-fun m!1281165 () Bool)

(assert (=> b!1131679 m!1281165))

(assert (=> b!1130511 d!318933))

(declare-fun d!318935 () Bool)

(declare-fun lt!380126 () Token!3440)

(declare-fun contains!1959 (List!10979 Token!3440) Bool)

(assert (=> d!318935 (contains!1959 lt!379401 lt!380126)))

(declare-fun e!723052 () Token!3440)

(assert (=> d!318935 (= lt!380126 e!723052)))

(declare-fun c!189601 () Bool)

(assert (=> d!318935 (= c!189601 (= lt!379397 0))))

(declare-fun e!723053 () Bool)

(assert (=> d!318935 e!723053))

(declare-fun res!508741 () Bool)

(assert (=> d!318935 (=> (not res!508741) (not e!723053))))

(assert (=> d!318935 (= res!508741 (<= 0 lt!379397))))

(assert (=> d!318935 (= (apply!2267 lt!379401 lt!379397) lt!380126)))

(declare-fun b!1131686 () Bool)

(assert (=> b!1131686 (= e!723053 (< lt!379397 (size!8539 lt!379401)))))

(declare-fun b!1131687 () Bool)

(assert (=> b!1131687 (= e!723052 (head!2053 lt!379401))))

(declare-fun b!1131688 () Bool)

(assert (=> b!1131688 (= e!723052 (apply!2267 (tail!1613 lt!379401) (- lt!379397 1)))))

(assert (= (and d!318935 res!508741) b!1131686))

(assert (= (and d!318935 c!189601) b!1131687))

(assert (= (and d!318935 (not c!189601)) b!1131688))

(declare-fun m!1281167 () Bool)

(assert (=> d!318935 m!1281167))

(assert (=> b!1131686 m!1281123))

(declare-fun m!1281169 () Bool)

(assert (=> b!1131687 m!1281169))

(declare-fun m!1281171 () Bool)

(assert (=> b!1131688 m!1281171))

(assert (=> b!1131688 m!1281171))

(declare-fun m!1281173 () Bool)

(assert (=> b!1131688 m!1281173))

(assert (=> b!1130511 d!318935))

(declare-fun d!318937 () Bool)

(assert (=> d!318937 (= (head!2053 (drop!417 lt!379401 lt!379397)) (h!16356 (drop!417 lt!379401 lt!379397)))))

(assert (=> b!1130511 d!318937))

(declare-fun d!318939 () Bool)

(declare-fun lt!380128 () Bool)

(declare-fun e!723054 () Bool)

(assert (=> d!318939 (= lt!380128 e!723054)))

(declare-fun res!508744 () Bool)

(assert (=> d!318939 (=> (not res!508744) (not e!723054))))

(assert (=> d!318939 (= res!508744 (= (list!3958 (_1!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))) (list!3958 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))))

(declare-fun e!723055 () Bool)

(assert (=> d!318939 (= lt!380128 e!723055)))

(declare-fun res!508742 () Bool)

(assert (=> d!318939 (=> (not res!508742) (not e!723055))))

(declare-fun lt!380127 () tuple2!11916)

(assert (=> d!318939 (= res!508742 (= (size!8533 (_1!6805 lt!380127)) 1))))

(assert (=> d!318939 (= lt!380127 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))))

(assert (=> d!318939 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318939 (= (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))) lt!380128)))

(declare-fun b!1131689 () Bool)

(declare-fun res!508743 () Bool)

(assert (=> b!1131689 (=> (not res!508743) (not e!723055))))

(assert (=> b!1131689 (= res!508743 (= (apply!2266 (_1!6805 lt!380127) 0) (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))

(declare-fun b!1131690 () Bool)

(assert (=> b!1131690 (= e!723055 (isEmpty!6788 (_2!6805 lt!380127)))))

(declare-fun b!1131691 () Bool)

(assert (=> b!1131691 (= e!723054 (isEmpty!6788 (_2!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))))))

(assert (= (and d!318939 res!508742) b!1131689))

(assert (= (and b!1131689 res!508743) b!1131690))

(assert (= (and d!318939 res!508744) b!1131691))

(declare-fun m!1281175 () Bool)

(assert (=> d!318939 m!1281175))

(declare-fun m!1281177 () Bool)

(assert (=> d!318939 m!1281177))

(assert (=> d!318939 m!1279351))

(assert (=> d!318939 m!1281175))

(declare-fun m!1281179 () Bool)

(assert (=> d!318939 m!1281179))

(assert (=> d!318939 m!1279015))

(assert (=> d!318939 m!1281177))

(declare-fun m!1281181 () Bool)

(assert (=> d!318939 m!1281181))

(declare-fun m!1281183 () Bool)

(assert (=> d!318939 m!1281183))

(assert (=> d!318939 m!1281175))

(declare-fun m!1281185 () Bool)

(assert (=> d!318939 m!1281185))

(declare-fun m!1281187 () Bool)

(assert (=> b!1131689 m!1281187))

(declare-fun m!1281189 () Bool)

(assert (=> b!1131690 m!1281189))

(assert (=> b!1131691 m!1279351))

(assert (=> b!1131691 m!1281175))

(assert (=> b!1131691 m!1281175))

(assert (=> b!1131691 m!1281177))

(assert (=> b!1131691 m!1281177))

(assert (=> b!1131691 m!1281181))

(declare-fun m!1281191 () Bool)

(assert (=> b!1131691 m!1281191))

(assert (=> b!1130511 d!318939))

(declare-fun d!318941 () Bool)

(assert (=> d!318941 (= (head!2053 (drop!417 lt!379401 lt!379397)) (apply!2267 lt!379401 lt!379397))))

(declare-fun lt!380131 () Unit!16639)

(declare-fun choose!7244 (List!10979 Int) Unit!16639)

(assert (=> d!318941 (= lt!380131 (choose!7244 lt!379401 lt!379397))))

(declare-fun e!723058 () Bool)

(assert (=> d!318941 e!723058))

(declare-fun res!508747 () Bool)

(assert (=> d!318941 (=> (not res!508747) (not e!723058))))

(assert (=> d!318941 (= res!508747 (>= lt!379397 0))))

(assert (=> d!318941 (= (lemmaDropApply!334 lt!379401 lt!379397) lt!380131)))

(declare-fun b!1131694 () Bool)

(assert (=> b!1131694 (= e!723058 (< lt!379397 (size!8539 lt!379401)))))

(assert (= (and d!318941 res!508747) b!1131694))

(assert (=> d!318941 m!1279383))

(assert (=> d!318941 m!1279383))

(assert (=> d!318941 m!1279385))

(assert (=> d!318941 m!1279349))

(declare-fun m!1281193 () Bool)

(assert (=> d!318941 m!1281193))

(assert (=> b!1131694 m!1281123))

(assert (=> b!1130511 d!318941))

(declare-fun d!318943 () Bool)

(declare-fun lt!380132 () Token!3440)

(assert (=> d!318943 (contains!1959 lt!379400 lt!380132)))

(declare-fun e!723059 () Token!3440)

(assert (=> d!318943 (= lt!380132 e!723059)))

(declare-fun c!189602 () Bool)

(assert (=> d!318943 (= c!189602 (= lt!379419 0))))

(declare-fun e!723060 () Bool)

(assert (=> d!318943 e!723060))

(declare-fun res!508748 () Bool)

(assert (=> d!318943 (=> (not res!508748) (not e!723060))))

(assert (=> d!318943 (= res!508748 (<= 0 lt!379419))))

(assert (=> d!318943 (= (apply!2267 lt!379400 lt!379419) lt!380132)))

(declare-fun b!1131695 () Bool)

(assert (=> b!1131695 (= e!723060 (< lt!379419 (size!8539 lt!379400)))))

(declare-fun b!1131696 () Bool)

(assert (=> b!1131696 (= e!723059 (head!2053 lt!379400))))

(declare-fun b!1131697 () Bool)

(assert (=> b!1131697 (= e!723059 (apply!2267 (tail!1613 lt!379400) (- lt!379419 1)))))

(assert (= (and d!318943 res!508748) b!1131695))

(assert (= (and d!318943 c!189602) b!1131696))

(assert (= (and d!318943 (not c!189602)) b!1131697))

(declare-fun m!1281195 () Bool)

(assert (=> d!318943 m!1281195))

(declare-fun m!1281197 () Bool)

(assert (=> b!1131695 m!1281197))

(declare-fun m!1281199 () Bool)

(assert (=> b!1131696 m!1281199))

(declare-fun m!1281201 () Bool)

(assert (=> b!1131697 m!1281201))

(assert (=> b!1131697 m!1281201))

(declare-fun m!1281203 () Bool)

(assert (=> b!1131697 m!1281203))

(assert (=> b!1130511 d!318943))

(declare-fun d!318945 () Bool)

(declare-fun lt!380133 () Token!3440)

(assert (=> d!318945 (= lt!380133 (apply!2267 (list!3958 (tokens!1450 pt!21)) (+ lt!379419 1)))))

(assert (=> d!318945 (= lt!380133 (apply!2273 (c!189410 (tokens!1450 pt!21)) (+ lt!379419 1)))))

(declare-fun e!723061 () Bool)

(assert (=> d!318945 e!723061))

(declare-fun res!508749 () Bool)

(assert (=> d!318945 (=> (not res!508749) (not e!723061))))

(assert (=> d!318945 (= res!508749 (<= 0 (+ lt!379419 1)))))

(assert (=> d!318945 (= (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)) lt!380133)))

(declare-fun b!1131698 () Bool)

(assert (=> b!1131698 (= e!723061 (< (+ lt!379419 1) (size!8533 (tokens!1450 pt!21))))))

(assert (= (and d!318945 res!508749) b!1131698))

(assert (=> d!318945 m!1279305))

(assert (=> d!318945 m!1279305))

(declare-fun m!1281205 () Bool)

(assert (=> d!318945 m!1281205))

(declare-fun m!1281207 () Bool)

(assert (=> d!318945 m!1281207))

(assert (=> b!1131698 m!1278981))

(assert (=> b!1130511 d!318945))

(declare-fun d!318947 () Bool)

(assert (=> d!318947 (= (head!2053 (drop!417 lt!379400 lt!379419)) (apply!2267 lt!379400 lt!379419))))

(declare-fun lt!380134 () Unit!16639)

(assert (=> d!318947 (= lt!380134 (choose!7244 lt!379400 lt!379419))))

(declare-fun e!723062 () Bool)

(assert (=> d!318947 e!723062))

(declare-fun res!508750 () Bool)

(assert (=> d!318947 (=> (not res!508750) (not e!723062))))

(assert (=> d!318947 (= res!508750 (>= lt!379419 0))))

(assert (=> d!318947 (= (lemmaDropApply!334 lt!379400 lt!379419) lt!380134)))

(declare-fun b!1131699 () Bool)

(assert (=> b!1131699 (= e!723062 (< lt!379419 (size!8539 lt!379400)))))

(assert (= (and d!318947 res!508750) b!1131699))

(assert (=> d!318947 m!1279371))

(assert (=> d!318947 m!1279371))

(assert (=> d!318947 m!1279373))

(assert (=> d!318947 m!1279347))

(declare-fun m!1281209 () Bool)

(assert (=> d!318947 m!1281209))

(assert (=> b!1131699 m!1281197))

(assert (=> b!1130511 d!318947))

(declare-fun d!318949 () Bool)

(declare-fun lt!380136 () Bool)

(declare-fun e!723063 () Bool)

(assert (=> d!318949 (= lt!380136 e!723063)))

(declare-fun res!508753 () Bool)

(assert (=> d!318949 (=> (not res!508753) (not e!723063))))

(assert (=> d!318949 (= res!508753 (= (list!3958 (_1!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379428))))) (list!3958 (singletonSeq!600 lt!379428))))))

(declare-fun e!723064 () Bool)

(assert (=> d!318949 (= lt!380136 e!723064)))

(declare-fun res!508751 () Bool)

(assert (=> d!318949 (=> (not res!508751) (not e!723064))))

(declare-fun lt!380135 () tuple2!11916)

(assert (=> d!318949 (= res!508751 (= (size!8533 (_1!6805 lt!380135)) 1))))

(assert (=> d!318949 (= lt!380135 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379428))))))

(assert (=> d!318949 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318949 (= (rulesProduceIndividualToken!642 lt!379395 (rules!9208 pt!21) lt!379428) lt!380136)))

(declare-fun b!1131700 () Bool)

(declare-fun res!508752 () Bool)

(assert (=> b!1131700 (=> (not res!508752) (not e!723064))))

(assert (=> b!1131700 (= res!508752 (= (apply!2266 (_1!6805 lt!380135) 0) lt!379428))))

(declare-fun b!1131701 () Bool)

(assert (=> b!1131701 (= e!723064 (isEmpty!6788 (_2!6805 lt!380135)))))

(declare-fun b!1131702 () Bool)

(assert (=> b!1131702 (= e!723063 (isEmpty!6788 (_2!6805 (lex!657 lt!379395 (rules!9208 pt!21) (print!594 lt!379395 (singletonSeq!600 lt!379428))))))))

(assert (= (and d!318949 res!508751) b!1131700))

(assert (= (and b!1131700 res!508752) b!1131701))

(assert (= (and d!318949 res!508753) b!1131702))

(declare-fun m!1281211 () Bool)

(assert (=> d!318949 m!1281211))

(declare-fun m!1281213 () Bool)

(assert (=> d!318949 m!1281213))

(assert (=> d!318949 m!1281211))

(declare-fun m!1281215 () Bool)

(assert (=> d!318949 m!1281215))

(assert (=> d!318949 m!1279015))

(assert (=> d!318949 m!1281213))

(declare-fun m!1281217 () Bool)

(assert (=> d!318949 m!1281217))

(declare-fun m!1281219 () Bool)

(assert (=> d!318949 m!1281219))

(assert (=> d!318949 m!1281211))

(declare-fun m!1281221 () Bool)

(assert (=> d!318949 m!1281221))

(declare-fun m!1281223 () Bool)

(assert (=> b!1131700 m!1281223))

(declare-fun m!1281225 () Bool)

(assert (=> b!1131701 m!1281225))

(assert (=> b!1131702 m!1281211))

(assert (=> b!1131702 m!1281211))

(assert (=> b!1131702 m!1281213))

(assert (=> b!1131702 m!1281213))

(assert (=> b!1131702 m!1281217))

(declare-fun m!1281227 () Bool)

(assert (=> b!1131702 m!1281227))

(assert (=> b!1130511 d!318949))

(declare-fun b!1131703 () Bool)

(declare-fun e!723065 () Int)

(assert (=> b!1131703 (= e!723065 0)))

(declare-fun b!1131704 () Bool)

(declare-fun e!723067 () Bool)

(declare-fun lt!380137 () List!10979)

(declare-fun e!723068 () Int)

(assert (=> b!1131704 (= e!723067 (= (size!8539 lt!380137) e!723068))))

(declare-fun c!189604 () Bool)

(assert (=> b!1131704 (= c!189604 (<= lt!379419 0))))

(declare-fun b!1131705 () Bool)

(declare-fun e!723066 () List!10979)

(assert (=> b!1131705 (= e!723066 lt!379400)))

(declare-fun bm!80656 () Bool)

(declare-fun call!80661 () Int)

(assert (=> bm!80656 (= call!80661 (size!8539 lt!379400))))

(declare-fun b!1131706 () Bool)

(declare-fun e!723069 () List!10979)

(assert (=> b!1131706 (= e!723069 Nil!10955)))

(declare-fun b!1131707 () Bool)

(assert (=> b!1131707 (= e!723065 (- call!80661 lt!379419))))

(declare-fun d!318951 () Bool)

(assert (=> d!318951 e!723067))

(declare-fun res!508754 () Bool)

(assert (=> d!318951 (=> (not res!508754) (not e!723067))))

(assert (=> d!318951 (= res!508754 (= ((_ map implies) (content!1572 lt!380137) (content!1572 lt!379400)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318951 (= lt!380137 e!723069)))

(declare-fun c!189603 () Bool)

(assert (=> d!318951 (= c!189603 ((_ is Nil!10955) lt!379400))))

(assert (=> d!318951 (= (drop!417 lt!379400 lt!379419) lt!380137)))

(declare-fun b!1131708 () Bool)

(assert (=> b!1131708 (= e!723066 (drop!417 (t!106833 lt!379400) (- lt!379419 1)))))

(declare-fun b!1131709 () Bool)

(assert (=> b!1131709 (= e!723068 e!723065)))

(declare-fun c!189605 () Bool)

(assert (=> b!1131709 (= c!189605 (>= lt!379419 call!80661))))

(declare-fun b!1131710 () Bool)

(assert (=> b!1131710 (= e!723069 e!723066)))

(declare-fun c!189606 () Bool)

(assert (=> b!1131710 (= c!189606 (<= lt!379419 0))))

(declare-fun b!1131711 () Bool)

(assert (=> b!1131711 (= e!723068 call!80661)))

(assert (= (and d!318951 c!189603) b!1131706))

(assert (= (and d!318951 (not c!189603)) b!1131710))

(assert (= (and b!1131710 c!189606) b!1131705))

(assert (= (and b!1131710 (not c!189606)) b!1131708))

(assert (= (and d!318951 res!508754) b!1131704))

(assert (= (and b!1131704 c!189604) b!1131711))

(assert (= (and b!1131704 (not c!189604)) b!1131709))

(assert (= (and b!1131709 c!189605) b!1131703))

(assert (= (and b!1131709 (not c!189605)) b!1131707))

(assert (= (or b!1131711 b!1131709 b!1131707) bm!80656))

(declare-fun m!1281229 () Bool)

(assert (=> b!1131704 m!1281229))

(assert (=> bm!80656 m!1281197))

(declare-fun m!1281231 () Bool)

(assert (=> d!318951 m!1281231))

(declare-fun m!1281233 () Bool)

(assert (=> d!318951 m!1281233))

(declare-fun m!1281235 () Bool)

(assert (=> b!1131708 m!1281235))

(assert (=> b!1130511 d!318951))

(assert (=> b!1130511 d!318731))

(declare-fun d!318953 () Bool)

(declare-fun lt!380140 () Int)

(declare-fun size!8546 (List!10978) Int)

(assert (=> d!318953 (= lt!380140 (size!8546 (list!3968 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))))

(declare-fun size!8547 (Conc!3490) Int)

(assert (=> d!318953 (= lt!380140 (size!8547 (c!189409 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1))))))))

(assert (=> d!318953 (= (size!8536 (charsOf!1031 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))) lt!380140)))

(declare-fun bs!277805 () Bool)

(assert (= bs!277805 d!318953))

(assert (=> bs!277805 m!1279379))

(declare-fun m!1281237 () Bool)

(assert (=> bs!277805 m!1281237))

(assert (=> bs!277805 m!1281237))

(declare-fun m!1281239 () Bool)

(assert (=> bs!277805 m!1281239))

(declare-fun m!1281241 () Bool)

(assert (=> bs!277805 m!1281241))

(assert (=> b!1130511 d!318953))

(declare-fun b!1131712 () Bool)

(declare-fun e!723070 () Int)

(assert (=> b!1131712 (= e!723070 0)))

(declare-fun b!1131713 () Bool)

(declare-fun e!723072 () Bool)

(declare-fun lt!380141 () List!10979)

(declare-fun e!723073 () Int)

(assert (=> b!1131713 (= e!723072 (= (size!8539 lt!380141) e!723073))))

(declare-fun c!189608 () Bool)

(assert (=> b!1131713 (= c!189608 (<= lt!379429 0))))

(declare-fun b!1131714 () Bool)

(declare-fun e!723071 () List!10979)

(assert (=> b!1131714 (= e!723071 lt!379416)))

(declare-fun bm!80657 () Bool)

(declare-fun call!80662 () Int)

(assert (=> bm!80657 (= call!80662 (size!8539 lt!379416))))

(declare-fun b!1131715 () Bool)

(declare-fun e!723074 () List!10979)

(assert (=> b!1131715 (= e!723074 Nil!10955)))

(declare-fun b!1131716 () Bool)

(assert (=> b!1131716 (= e!723070 (- call!80662 lt!379429))))

(declare-fun d!318955 () Bool)

(assert (=> d!318955 e!723072))

(declare-fun res!508755 () Bool)

(assert (=> d!318955 (=> (not res!508755) (not e!723072))))

(assert (=> d!318955 (= res!508755 (= ((_ map implies) (content!1572 lt!380141) (content!1572 lt!379416)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318955 (= lt!380141 e!723074)))

(declare-fun c!189607 () Bool)

(assert (=> d!318955 (= c!189607 ((_ is Nil!10955) lt!379416))))

(assert (=> d!318955 (= (drop!417 lt!379416 lt!379429) lt!380141)))

(declare-fun b!1131717 () Bool)

(assert (=> b!1131717 (= e!723071 (drop!417 (t!106833 lt!379416) (- lt!379429 1)))))

(declare-fun b!1131718 () Bool)

(assert (=> b!1131718 (= e!723073 e!723070)))

(declare-fun c!189609 () Bool)

(assert (=> b!1131718 (= c!189609 (>= lt!379429 call!80662))))

(declare-fun b!1131719 () Bool)

(assert (=> b!1131719 (= e!723074 e!723071)))

(declare-fun c!189610 () Bool)

(assert (=> b!1131719 (= c!189610 (<= lt!379429 0))))

(declare-fun b!1131720 () Bool)

(assert (=> b!1131720 (= e!723073 call!80662)))

(assert (= (and d!318955 c!189607) b!1131715))

(assert (= (and d!318955 (not c!189607)) b!1131719))

(assert (= (and b!1131719 c!189610) b!1131714))

(assert (= (and b!1131719 (not c!189610)) b!1131717))

(assert (= (and d!318955 res!508755) b!1131713))

(assert (= (and b!1131713 c!189608) b!1131720))

(assert (= (and b!1131713 (not c!189608)) b!1131718))

(assert (= (and b!1131718 c!189609) b!1131712))

(assert (= (and b!1131718 (not c!189609)) b!1131716))

(assert (= (or b!1131720 b!1131718 b!1131716) bm!80657))

(declare-fun m!1281243 () Bool)

(assert (=> b!1131713 m!1281243))

(assert (=> bm!80657 m!1280991))

(declare-fun m!1281245 () Bool)

(assert (=> d!318955 m!1281245))

(assert (=> d!318955 m!1281137))

(declare-fun m!1281247 () Bool)

(assert (=> b!1131717 m!1281247))

(assert (=> b!1130511 d!318955))

(declare-fun b!1131721 () Bool)

(declare-fun e!723075 () Int)

(assert (=> b!1131721 (= e!723075 0)))

(declare-fun b!1131722 () Bool)

(declare-fun e!723077 () Bool)

(declare-fun lt!380142 () List!10979)

(declare-fun e!723078 () Int)

(assert (=> b!1131722 (= e!723077 (= (size!8539 lt!380142) e!723078))))

(declare-fun c!189612 () Bool)

(assert (=> b!1131722 (= c!189612 (<= (+ lt!379419 1) 0))))

(declare-fun b!1131723 () Bool)

(declare-fun e!723076 () List!10979)

(assert (=> b!1131723 (= e!723076 lt!379386)))

(declare-fun bm!80658 () Bool)

(declare-fun call!80663 () Int)

(assert (=> bm!80658 (= call!80663 (size!8539 lt!379386))))

(declare-fun b!1131724 () Bool)

(declare-fun e!723079 () List!10979)

(assert (=> b!1131724 (= e!723079 Nil!10955)))

(declare-fun b!1131725 () Bool)

(assert (=> b!1131725 (= e!723075 (- call!80663 (+ lt!379419 1)))))

(declare-fun d!318957 () Bool)

(assert (=> d!318957 e!723077))

(declare-fun res!508756 () Bool)

(assert (=> d!318957 (=> (not res!508756) (not e!723077))))

(assert (=> d!318957 (= res!508756 (= ((_ map implies) (content!1572 lt!380142) (content!1572 lt!379386)) ((as const (InoxSet Token!3440)) true)))))

(assert (=> d!318957 (= lt!380142 e!723079)))

(declare-fun c!189611 () Bool)

(assert (=> d!318957 (= c!189611 ((_ is Nil!10955) lt!379386))))

(assert (=> d!318957 (= (drop!417 lt!379386 (+ lt!379419 1)) lt!380142)))

(declare-fun b!1131726 () Bool)

(assert (=> b!1131726 (= e!723076 (drop!417 (t!106833 lt!379386) (- (+ lt!379419 1) 1)))))

(declare-fun b!1131727 () Bool)

(assert (=> b!1131727 (= e!723078 e!723075)))

(declare-fun c!189613 () Bool)

(assert (=> b!1131727 (= c!189613 (>= (+ lt!379419 1) call!80663))))

(declare-fun b!1131728 () Bool)

(assert (=> b!1131728 (= e!723079 e!723076)))

(declare-fun c!189614 () Bool)

(assert (=> b!1131728 (= c!189614 (<= (+ lt!379419 1) 0))))

(declare-fun b!1131729 () Bool)

(assert (=> b!1131729 (= e!723078 call!80663)))

(assert (= (and d!318957 c!189611) b!1131724))

(assert (= (and d!318957 (not c!189611)) b!1131728))

(assert (= (and b!1131728 c!189614) b!1131723))

(assert (= (and b!1131728 (not c!189614)) b!1131726))

(assert (= (and d!318957 res!508756) b!1131722))

(assert (= (and b!1131722 c!189612) b!1131729))

(assert (= (and b!1131722 (not c!189612)) b!1131727))

(assert (= (and b!1131727 c!189613) b!1131721))

(assert (= (and b!1131727 (not c!189613)) b!1131725))

(assert (= (or b!1131729 b!1131727 b!1131725) bm!80658))

(declare-fun m!1281249 () Bool)

(assert (=> b!1131722 m!1281249))

(assert (=> bm!80658 m!1281111))

(declare-fun m!1281251 () Bool)

(assert (=> d!318957 m!1281251))

(assert (=> d!318957 m!1281117))

(declare-fun m!1281253 () Bool)

(assert (=> b!1131726 m!1281253))

(assert (=> b!1130511 d!318957))

(declare-fun d!318959 () Bool)

(declare-fun res!508757 () Bool)

(declare-fun e!723081 () Bool)

(assert (=> d!318959 (=> res!508757 e!723081)))

(assert (=> d!318959 (= res!508757 (or (not ((_ is Cons!10955) (take!15 lt!379437 lt!379384))) (not ((_ is Cons!10955) (t!106833 (take!15 lt!379437 lt!379384))))))))

(assert (=> d!318959 (= (tokensListTwoByTwoPredicateSeparableList!69 lt!379404 (take!15 lt!379437 lt!379384) (rules!9208 pt!21)) e!723081)))

(declare-fun b!1131730 () Bool)

(declare-fun e!723080 () Bool)

(assert (=> b!1131730 (= e!723081 e!723080)))

(declare-fun res!508758 () Bool)

(assert (=> b!1131730 (=> (not res!508758) (not e!723080))))

(assert (=> b!1131730 (= res!508758 (separableTokensPredicate!93 lt!379404 (h!16356 (take!15 lt!379437 lt!379384)) (h!16356 (t!106833 (take!15 lt!379437 lt!379384))) (rules!9208 pt!21)))))

(declare-fun lt!380143 () Unit!16639)

(declare-fun Unit!16676 () Unit!16639)

(assert (=> b!1131730 (= lt!380143 Unit!16676)))

(assert (=> b!1131730 (> (size!8536 (charsOf!1031 (h!16356 (t!106833 (take!15 lt!379437 lt!379384))))) 0)))

(declare-fun lt!380145 () Unit!16639)

(declare-fun Unit!16677 () Unit!16639)

(assert (=> b!1131730 (= lt!380145 Unit!16677)))

(assert (=> b!1131730 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (t!106833 (take!15 lt!379437 lt!379384))))))

(declare-fun lt!380149 () Unit!16639)

(declare-fun Unit!16678 () Unit!16639)

(assert (=> b!1131730 (= lt!380149 Unit!16678)))

(assert (=> b!1131730 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (take!15 lt!379437 lt!379384)))))

(declare-fun lt!380147 () Unit!16639)

(declare-fun lt!380146 () Unit!16639)

(assert (=> b!1131730 (= lt!380147 lt!380146)))

(assert (=> b!1131730 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (t!106833 (take!15 lt!379437 lt!379384))))))

(assert (=> b!1131730 (= lt!380146 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379404 (rules!9208 pt!21) (take!15 lt!379437 lt!379384) (h!16356 (t!106833 (take!15 lt!379437 lt!379384)))))))

(declare-fun lt!380144 () Unit!16639)

(declare-fun lt!380148 () Unit!16639)

(assert (=> b!1131730 (= lt!380144 lt!380148)))

(assert (=> b!1131730 (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 (take!15 lt!379437 lt!379384)))))

(assert (=> b!1131730 (= lt!380148 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!252 lt!379404 (rules!9208 pt!21) (take!15 lt!379437 lt!379384) (h!16356 (take!15 lt!379437 lt!379384))))))

(declare-fun b!1131731 () Bool)

(assert (=> b!1131731 (= e!723080 (tokensListTwoByTwoPredicateSeparableList!69 lt!379404 (Cons!10955 (h!16356 (t!106833 (take!15 lt!379437 lt!379384))) (t!106833 (t!106833 (take!15 lt!379437 lt!379384)))) (rules!9208 pt!21)))))

(assert (= (and d!318959 (not res!508757)) b!1131730))

(assert (= (and b!1131730 res!508758) b!1131731))

(assert (=> b!1131730 m!1279647))

(assert (=> b!1131730 m!1279267))

(declare-fun m!1281255 () Bool)

(assert (=> b!1131730 m!1281255))

(declare-fun m!1281257 () Bool)

(assert (=> b!1131730 m!1281257))

(declare-fun m!1281259 () Bool)

(assert (=> b!1131730 m!1281259))

(declare-fun m!1281261 () Bool)

(assert (=> b!1131730 m!1281261))

(assert (=> b!1131730 m!1281259))

(declare-fun m!1281263 () Bool)

(assert (=> b!1131730 m!1281263))

(assert (=> b!1131730 m!1279267))

(declare-fun m!1281265 () Bool)

(assert (=> b!1131730 m!1281265))

(declare-fun m!1281267 () Bool)

(assert (=> b!1131731 m!1281267))

(assert (=> b!1130507 d!318959))

(assert (=> b!1130507 d!318703))

(declare-fun d!318961 () Bool)

(declare-fun res!508759 () Bool)

(declare-fun e!723082 () Bool)

(assert (=> d!318961 (=> res!508759 e!723082)))

(assert (=> d!318961 (= res!508759 ((_ is Nil!10955) lt!379379))))

(assert (=> d!318961 (= (forall!2640 lt!379379 lambda!45501) e!723082)))

(declare-fun b!1131732 () Bool)

(declare-fun e!723083 () Bool)

(assert (=> b!1131732 (= e!723082 e!723083)))

(declare-fun res!508760 () Bool)

(assert (=> b!1131732 (=> (not res!508760) (not e!723083))))

(assert (=> b!1131732 (= res!508760 (dynLambda!4826 lambda!45501 (h!16356 lt!379379)))))

(declare-fun b!1131733 () Bool)

(assert (=> b!1131733 (= e!723083 (forall!2640 (t!106833 lt!379379) lambda!45501))))

(assert (= (and d!318961 (not res!508759)) b!1131732))

(assert (= (and b!1131732 res!508760) b!1131733))

(declare-fun b_lambda!33277 () Bool)

(assert (=> (not b_lambda!33277) (not b!1131732)))

(declare-fun m!1281269 () Bool)

(assert (=> b!1131732 m!1281269))

(declare-fun m!1281271 () Bool)

(assert (=> b!1131733 m!1281271))

(assert (=> b!1130507 d!318961))

(declare-fun d!318963 () Bool)

(assert (=> d!318963 (forall!2640 lt!379379 lambda!45501)))

(declare-fun lt!380150 () Unit!16639)

(assert (=> d!318963 (= lt!380150 (choose!7230 lt!379379 lt!379437 lambda!45501))))

(assert (=> d!318963 (forall!2640 lt!379437 lambda!45501)))

(assert (=> d!318963 (= (lemmaForallSubseq!72 lt!379379 lt!379437 lambda!45501) lt!380150)))

(declare-fun bs!277806 () Bool)

(assert (= bs!277806 d!318963))

(assert (=> bs!277806 m!1279271))

(declare-fun m!1281273 () Bool)

(assert (=> bs!277806 m!1281273))

(declare-fun m!1281275 () Bool)

(assert (=> bs!277806 m!1281275))

(assert (=> b!1130507 d!318963))

(declare-fun d!318965 () Bool)

(assert (=> d!318965 (= (list!3958 (tokens!1450 lt!379387)) (list!3962 (c!189410 (tokens!1450 lt!379387))))))

(declare-fun bs!277807 () Bool)

(assert (= bs!277807 d!318965))

(declare-fun m!1281277 () Bool)

(assert (=> bs!277807 m!1281277))

(assert (=> b!1130509 d!318965))

(assert (=> b!1130509 d!318563))

(assert (=> b!1130509 d!318695))

(assert (=> d!318449 d!318573))

(declare-fun d!318967 () Bool)

(declare-fun lt!380151 () Int)

(assert (=> d!318967 (contains!1958 (list!3957 indices!2) lt!380151)))

(declare-fun e!723084 () Int)

(assert (=> d!318967 (= lt!380151 e!723084)))

(declare-fun c!189615 () Bool)

(assert (=> d!318967 (= c!189615 (= 0 0))))

(declare-fun e!723085 () Bool)

(assert (=> d!318967 e!723085))

(declare-fun res!508761 () Bool)

(assert (=> d!318967 (=> (not res!508761) (not e!723085))))

(assert (=> d!318967 (= res!508761 (<= 0 0))))

(assert (=> d!318967 (= (apply!2264 (list!3957 indices!2) 0) lt!380151)))

(declare-fun b!1131734 () Bool)

(assert (=> b!1131734 (= e!723085 (< 0 (size!8534 (list!3957 indices!2))))))

(declare-fun b!1131735 () Bool)

(assert (=> b!1131735 (= e!723084 (head!2055 (list!3957 indices!2)))))

(declare-fun b!1131736 () Bool)

(assert (=> b!1131736 (= e!723084 (apply!2264 (tail!1615 (list!3957 indices!2)) (- 0 1)))))

(assert (= (and d!318967 res!508761) b!1131734))

(assert (= (and d!318967 c!189615) b!1131735))

(assert (= (and d!318967 (not c!189615)) b!1131736))

(assert (=> d!318967 m!1279029))

(declare-fun m!1281279 () Bool)

(assert (=> d!318967 m!1281279))

(assert (=> b!1131734 m!1279029))

(assert (=> b!1131734 m!1279047))

(assert (=> b!1131735 m!1279029))

(assert (=> b!1131735 m!1280441))

(assert (=> b!1131736 m!1279029))

(assert (=> b!1131736 m!1280443))

(assert (=> b!1131736 m!1280443))

(declare-fun m!1281281 () Bool)

(assert (=> b!1131736 m!1281281))

(assert (=> d!318477 d!318967))

(assert (=> d!318477 d!318529))

(declare-fun bm!80659 () Bool)

(declare-fun c!189618 () Bool)

(declare-fun c!189617 () Bool)

(assert (=> bm!80659 (= c!189618 c!189617)))

(declare-fun e!723089 () Int)

(declare-fun call!80664 () Int)

(assert (=> bm!80659 (= call!80664 (apply!2265 (ite c!189617 (left!9510 (c!189411 indices!2)) (right!9840 (c!189411 indices!2))) e!723089))))

(declare-fun b!1131737 () Bool)

(assert (=> b!1131737 (= e!723089 0)))

(declare-fun b!1131738 () Bool)

(assert (=> b!1131738 (= e!723089 (- 0 (size!8535 (left!9510 (c!189411 indices!2)))))))

(declare-fun b!1131739 () Bool)

(declare-fun e!723087 () Int)

(assert (=> b!1131739 (= e!723087 call!80664)))

(declare-fun d!318969 () Bool)

(declare-fun lt!380152 () Int)

(assert (=> d!318969 (= lt!380152 (apply!2264 (list!3961 (c!189411 indices!2)) 0))))

(declare-fun e!723088 () Int)

(assert (=> d!318969 (= lt!380152 e!723088)))

(declare-fun c!189616 () Bool)

(assert (=> d!318969 (= c!189616 ((_ is Leaf!5447) (c!189411 indices!2)))))

(declare-fun e!723086 () Bool)

(assert (=> d!318969 e!723086))

(declare-fun res!508762 () Bool)

(assert (=> d!318969 (=> (not res!508762) (not e!723086))))

(assert (=> d!318969 (= res!508762 (<= 0 0))))

(assert (=> d!318969 (= (apply!2265 (c!189411 indices!2) 0) lt!380152)))

(declare-fun b!1131740 () Bool)

(assert (=> b!1131740 (= e!723088 e!723087)))

(declare-fun lt!380153 () Bool)

(assert (=> b!1131740 (= lt!380153 (appendIndex!94 (list!3961 (left!9510 (c!189411 indices!2))) (list!3961 (right!9840 (c!189411 indices!2))) 0))))

(assert (=> b!1131740 (= c!189617 (< 0 (size!8535 (left!9510 (c!189411 indices!2)))))))

(declare-fun b!1131741 () Bool)

(assert (=> b!1131741 (= e!723087 call!80664)))

(declare-fun b!1131742 () Bool)

(assert (=> b!1131742 (= e!723086 (< 0 (size!8535 (c!189411 indices!2))))))

(declare-fun b!1131743 () Bool)

(assert (=> b!1131743 (= e!723088 (apply!2271 (xs!6185 (c!189411 indices!2)) 0))))

(assert (= (and d!318969 res!508762) b!1131742))

(assert (= (and d!318969 c!189616) b!1131743))

(assert (= (and d!318969 (not c!189616)) b!1131740))

(assert (= (and b!1131740 c!189617) b!1131741))

(assert (= (and b!1131740 (not c!189617)) b!1131739))

(assert (= (or b!1131741 b!1131739) bm!80659))

(assert (= (and bm!80659 c!189618) b!1131737))

(assert (= (and bm!80659 (not c!189618)) b!1131738))

(assert (=> d!318969 m!1279457))

(assert (=> d!318969 m!1279457))

(declare-fun m!1281283 () Bool)

(assert (=> d!318969 m!1281283))

(declare-fun m!1281285 () Bool)

(assert (=> bm!80659 m!1281285))

(assert (=> b!1131740 m!1280355))

(assert (=> b!1131740 m!1280357))

(assert (=> b!1131740 m!1280355))

(assert (=> b!1131740 m!1280357))

(declare-fun m!1281287 () Bool)

(assert (=> b!1131740 m!1281287))

(assert (=> b!1131740 m!1280453))

(assert (=> b!1131742 m!1279049))

(declare-fun m!1281289 () Bool)

(assert (=> b!1131743 m!1281289))

(assert (=> b!1131738 m!1280453))

(assert (=> d!318477 d!318969))

(declare-fun b!1131756 () Bool)

(declare-fun res!508775 () Bool)

(declare-fun e!723095 () Bool)

(assert (=> b!1131756 (=> (not res!508775) (not e!723095))))

(assert (=> b!1131756 (= res!508775 (<= (- (height!452 (left!9509 (c!189410 (tokens!1450 pt!21)))) (height!452 (right!9839 (c!189410 (tokens!1450 pt!21))))) 1))))

(declare-fun b!1131757 () Bool)

(declare-fun e!723094 () Bool)

(assert (=> b!1131757 (= e!723094 e!723095)))

(declare-fun res!508777 () Bool)

(assert (=> b!1131757 (=> (not res!508777) (not e!723095))))

(assert (=> b!1131757 (= res!508777 (<= (- 1) (- (height!452 (left!9509 (c!189410 (tokens!1450 pt!21)))) (height!452 (right!9839 (c!189410 (tokens!1450 pt!21)))))))))

(declare-fun b!1131758 () Bool)

(declare-fun isEmpty!6793 (Conc!3491) Bool)

(assert (=> b!1131758 (= e!723095 (not (isEmpty!6793 (right!9839 (c!189410 (tokens!1450 pt!21))))))))

(declare-fun b!1131759 () Bool)

(declare-fun res!508779 () Bool)

(assert (=> b!1131759 (=> (not res!508779) (not e!723095))))

(assert (=> b!1131759 (= res!508779 (isBalanced!967 (right!9839 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun d!318971 () Bool)

(declare-fun res!508776 () Bool)

(assert (=> d!318971 (=> res!508776 e!723094)))

(assert (=> d!318971 (= res!508776 (not ((_ is Node!3491) (c!189410 (tokens!1450 pt!21)))))))

(assert (=> d!318971 (= (isBalanced!967 (c!189410 (tokens!1450 pt!21))) e!723094)))

(declare-fun b!1131760 () Bool)

(declare-fun res!508780 () Bool)

(assert (=> b!1131760 (=> (not res!508780) (not e!723095))))

(assert (=> b!1131760 (= res!508780 (isBalanced!967 (left!9509 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun b!1131761 () Bool)

(declare-fun res!508778 () Bool)

(assert (=> b!1131761 (=> (not res!508778) (not e!723095))))

(assert (=> b!1131761 (= res!508778 (not (isEmpty!6793 (left!9509 (c!189410 (tokens!1450 pt!21))))))))

(assert (= (and d!318971 (not res!508776)) b!1131757))

(assert (= (and b!1131757 res!508777) b!1131756))

(assert (= (and b!1131756 res!508775) b!1131760))

(assert (= (and b!1131760 res!508780) b!1131759))

(assert (= (and b!1131759 res!508779) b!1131761))

(assert (= (and b!1131761 res!508778) b!1131758))

(assert (=> b!1131757 m!1280407))

(assert (=> b!1131757 m!1280409))

(declare-fun m!1281291 () Bool)

(assert (=> b!1131758 m!1281291))

(declare-fun m!1281293 () Bool)

(assert (=> b!1131760 m!1281293))

(assert (=> b!1131756 m!1280407))

(assert (=> b!1131756 m!1280409))

(declare-fun m!1281295 () Bool)

(assert (=> b!1131761 m!1281295))

(declare-fun m!1281297 () Bool)

(assert (=> b!1131759 m!1281297))

(assert (=> d!318493 d!318971))

(declare-fun bs!277808 () Bool)

(declare-fun d!318973 () Bool)

(assert (= bs!277808 (and d!318973 d!318709)))

(declare-fun lambda!45545 () Int)

(assert (=> bs!277808 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45528))))

(declare-fun bs!277809 () Bool)

(assert (= bs!277809 (and d!318973 d!318569)))

(assert (=> bs!277809 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45511))))

(declare-fun bs!277810 () Bool)

(assert (= bs!277810 (and d!318973 d!318565)))

(assert (=> bs!277810 (= lambda!45545 lambda!45510)))

(declare-fun bs!277811 () Bool)

(assert (= bs!277811 (and d!318973 d!318691)))

(assert (=> bs!277811 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45520))))

(declare-fun bs!277812 () Bool)

(assert (= bs!277812 (and d!318973 d!318797)))

(assert (=> bs!277812 (= (= lt!379402 lt!379404) (= lambda!45545 lambda!45539))))

(declare-fun bs!277813 () Bool)

(assert (= bs!277813 (and d!318973 b!1131170)))

(assert (=> bs!277813 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45532))))

(declare-fun bs!277814 () Bool)

(assert (= bs!277814 (and d!318973 d!318571)))

(assert (=> bs!277814 (= (= lt!379402 lt!379404) (= lambda!45545 lambda!45512))))

(declare-fun bs!277815 () Bool)

(assert (= bs!277815 (and d!318973 d!318495)))

(assert (=> bs!277815 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45501))))

(declare-fun bs!277816 () Bool)

(assert (= bs!277816 (and d!318973 b!1130989)))

(assert (=> bs!277816 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45519))))

(declare-fun bs!277817 () Bool)

(assert (= bs!277817 (and d!318973 d!318749)))

(assert (=> bs!277817 (= (= lt!379402 lt!379412) (= lambda!45545 lambda!45533))))

(declare-fun bs!277818 () Bool)

(assert (= bs!277818 (and d!318973 d!318729)))

(assert (=> bs!277818 (= (= lt!379402 Lexer!1593) (= lambda!45545 lambda!45529))))

(declare-fun bs!277819 () Bool)

(assert (= bs!277819 (and d!318973 d!318543)))

(assert (=> bs!277819 (= (= lt!379402 lt!379381) (= lambda!45545 lambda!45509))))

(declare-fun b!1131766 () Bool)

(declare-fun e!723100 () Bool)

(assert (=> b!1131766 (= e!723100 true)))

(declare-fun b!1131765 () Bool)

(declare-fun e!723099 () Bool)

(assert (=> b!1131765 (= e!723099 e!723100)))

(declare-fun b!1131764 () Bool)

(declare-fun e!723098 () Bool)

(assert (=> b!1131764 (= e!723098 e!723099)))

(assert (=> d!318973 e!723098))

(assert (= b!1131765 b!1131766))

(assert (= b!1131764 b!1131765))

(assert (= (and d!318973 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131764))

(assert (=> b!1131766 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45545))))

(assert (=> b!1131766 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45545))))

(assert (=> d!318973 true))

(declare-fun lt!380154 () Bool)

(assert (=> d!318973 (= lt!380154 (forall!2640 (t!106833 lt!379420) lambda!45545))))

(declare-fun e!723097 () Bool)

(assert (=> d!318973 (= lt!380154 e!723097)))

(declare-fun res!508782 () Bool)

(assert (=> d!318973 (=> res!508782 e!723097)))

(assert (=> d!318973 (= res!508782 (not ((_ is Cons!10955) (t!106833 lt!379420))))))

(assert (=> d!318973 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318973 (= (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (t!106833 lt!379420)) lt!380154)))

(declare-fun b!1131762 () Bool)

(declare-fun e!723096 () Bool)

(assert (=> b!1131762 (= e!723097 e!723096)))

(declare-fun res!508781 () Bool)

(assert (=> b!1131762 (=> (not res!508781) (not e!723096))))

(assert (=> b!1131762 (= res!508781 (rulesProduceIndividualToken!642 lt!379402 (rules!9208 pt!21) (h!16356 (t!106833 lt!379420))))))

(declare-fun b!1131763 () Bool)

(assert (=> b!1131763 (= e!723096 (rulesProduceEachTokenIndividuallyList!470 lt!379402 (rules!9208 pt!21) (t!106833 (t!106833 lt!379420))))))

(assert (= (and d!318973 (not res!508782)) b!1131762))

(assert (= (and b!1131762 res!508781) b!1131763))

(declare-fun m!1281299 () Bool)

(assert (=> d!318973 m!1281299))

(assert (=> d!318973 m!1279015))

(declare-fun m!1281301 () Bool)

(assert (=> b!1131762 m!1281301))

(declare-fun m!1281303 () Bool)

(assert (=> b!1131763 m!1281303))

(assert (=> b!1130506 d!318973))

(declare-fun d!318975 () Bool)

(declare-fun res!508783 () Bool)

(declare-fun e!723101 () Bool)

(assert (=> d!318975 (=> res!508783 e!723101)))

(assert (=> d!318975 (= res!508783 ((_ is Nil!10958) (t!106836 (list!3952 acc!225))))))

(assert (=> d!318975 (= (forall!2630 (t!106836 (list!3952 acc!225)) lambda!45475) e!723101)))

(declare-fun b!1131767 () Bool)

(declare-fun e!723102 () Bool)

(assert (=> b!1131767 (= e!723101 e!723102)))

(declare-fun res!508784 () Bool)

(assert (=> b!1131767 (=> (not res!508784) (not e!723102))))

(assert (=> b!1131767 (= res!508784 (dynLambda!4818 lambda!45475 (h!16359 (t!106836 (list!3952 acc!225)))))))

(declare-fun b!1131768 () Bool)

(assert (=> b!1131768 (= e!723102 (forall!2630 (t!106836 (t!106836 (list!3952 acc!225))) lambda!45475))))

(assert (= (and d!318975 (not res!508783)) b!1131767))

(assert (= (and b!1131767 res!508784) b!1131768))

(declare-fun b_lambda!33279 () Bool)

(assert (=> (not b_lambda!33279) (not b!1131767)))

(declare-fun m!1281305 () Bool)

(assert (=> b!1131767 m!1281305))

(declare-fun m!1281307 () Bool)

(assert (=> b!1131768 m!1281307))

(assert (=> b!1130311 d!318975))

(assert (=> d!318481 d!318795))

(declare-fun d!318977 () Bool)

(declare-fun res!508789 () Bool)

(declare-fun e!723105 () Bool)

(assert (=> d!318977 (=> (not res!508789) (not e!723105))))

(declare-fun list!3970 (IArray!6989) List!10981)

(assert (=> d!318977 (= res!508789 (<= (size!8534 (list!3970 (xs!6185 (c!189411 indices!2)))) 512))))

(assert (=> d!318977 (= (inv!14167 (c!189411 indices!2)) e!723105)))

(declare-fun b!1131773 () Bool)

(declare-fun res!508790 () Bool)

(assert (=> b!1131773 (=> (not res!508790) (not e!723105))))

(assert (=> b!1131773 (= res!508790 (= (csize!7215 (c!189411 indices!2)) (size!8534 (list!3970 (xs!6185 (c!189411 indices!2))))))))

(declare-fun b!1131774 () Bool)

(assert (=> b!1131774 (= e!723105 (and (> (csize!7215 (c!189411 indices!2)) 0) (<= (csize!7215 (c!189411 indices!2)) 512)))))

(assert (= (and d!318977 res!508789) b!1131773))

(assert (= (and b!1131773 res!508790) b!1131774))

(declare-fun m!1281309 () Bool)

(assert (=> d!318977 m!1281309))

(assert (=> d!318977 m!1281309))

(declare-fun m!1281311 () Bool)

(assert (=> d!318977 m!1281311))

(assert (=> b!1131773 m!1281309))

(assert (=> b!1131773 m!1281309))

(assert (=> b!1131773 m!1281311))

(assert (=> b!1130320 d!318977))

(declare-fun d!318979 () Bool)

(declare-fun c!189619 () Bool)

(assert (=> d!318979 (= c!189619 ((_ is Node!3491) (left!9509 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun e!723106 () Bool)

(assert (=> d!318979 (= (inv!14157 (left!9509 (c!189410 (tokens!1450 pt!21)))) e!723106)))

(declare-fun b!1131775 () Bool)

(assert (=> b!1131775 (= e!723106 (inv!14174 (left!9509 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun b!1131776 () Bool)

(declare-fun e!723107 () Bool)

(assert (=> b!1131776 (= e!723106 e!723107)))

(declare-fun res!508791 () Bool)

(assert (=> b!1131776 (= res!508791 (not ((_ is Leaf!5446) (left!9509 (c!189410 (tokens!1450 pt!21))))))))

(assert (=> b!1131776 (=> res!508791 e!723107)))

(declare-fun b!1131777 () Bool)

(assert (=> b!1131777 (= e!723107 (inv!14175 (left!9509 (c!189410 (tokens!1450 pt!21)))))))

(assert (= (and d!318979 c!189619) b!1131775))

(assert (= (and d!318979 (not c!189619)) b!1131776))

(assert (= (and b!1131776 (not res!508791)) b!1131777))

(declare-fun m!1281313 () Bool)

(assert (=> b!1131775 m!1281313))

(declare-fun m!1281315 () Bool)

(assert (=> b!1131777 m!1281315))

(assert (=> b!1130536 d!318979))

(declare-fun d!318981 () Bool)

(declare-fun c!189620 () Bool)

(assert (=> d!318981 (= c!189620 ((_ is Node!3491) (right!9839 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun e!723108 () Bool)

(assert (=> d!318981 (= (inv!14157 (right!9839 (c!189410 (tokens!1450 pt!21)))) e!723108)))

(declare-fun b!1131778 () Bool)

(assert (=> b!1131778 (= e!723108 (inv!14174 (right!9839 (c!189410 (tokens!1450 pt!21)))))))

(declare-fun b!1131779 () Bool)

(declare-fun e!723109 () Bool)

(assert (=> b!1131779 (= e!723108 e!723109)))

(declare-fun res!508792 () Bool)

(assert (=> b!1131779 (= res!508792 (not ((_ is Leaf!5446) (right!9839 (c!189410 (tokens!1450 pt!21))))))))

(assert (=> b!1131779 (=> res!508792 e!723109)))

(declare-fun b!1131780 () Bool)

(assert (=> b!1131780 (= e!723109 (inv!14175 (right!9839 (c!189410 (tokens!1450 pt!21)))))))

(assert (= (and d!318981 c!189620) b!1131778))

(assert (= (and d!318981 (not c!189620)) b!1131779))

(assert (= (and b!1131779 (not res!508792)) b!1131780))

(declare-fun m!1281317 () Bool)

(assert (=> b!1131778 m!1281317))

(declare-fun m!1281319 () Bool)

(assert (=> b!1131780 m!1281319))

(assert (=> b!1130536 d!318981))

(declare-fun d!318983 () Bool)

(declare-fun res!508797 () Bool)

(declare-fun e!723112 () Bool)

(assert (=> d!318983 (=> (not res!508797) (not e!723112))))

(assert (=> d!318983 (= res!508797 (<= (size!8545 (list!3966 (xs!6186 (c!189412 acc!225)))) 512))))

(assert (=> d!318983 (= (inv!14173 (c!189412 acc!225)) e!723112)))

(declare-fun b!1131785 () Bool)

(declare-fun res!508798 () Bool)

(assert (=> b!1131785 (=> (not res!508798) (not e!723112))))

(assert (=> b!1131785 (= res!508798 (= (csize!7217 (c!189412 acc!225)) (size!8545 (list!3966 (xs!6186 (c!189412 acc!225))))))))

(declare-fun b!1131786 () Bool)

(assert (=> b!1131786 (= e!723112 (and (> (csize!7217 (c!189412 acc!225)) 0) (<= (csize!7217 (c!189412 acc!225)) 512)))))

(assert (= (and d!318983 res!508797) b!1131785))

(assert (= (and b!1131785 res!508798) b!1131786))

(assert (=> d!318983 m!1280313))

(assert (=> d!318983 m!1280313))

(declare-fun m!1281321 () Bool)

(assert (=> d!318983 m!1281321))

(assert (=> b!1131785 m!1280313))

(assert (=> b!1131785 m!1280313))

(assert (=> b!1131785 m!1281321))

(assert (=> b!1130362 d!318983))

(declare-fun d!318985 () Bool)

(declare-fun res!508805 () Bool)

(declare-fun e!723115 () Bool)

(assert (=> d!318985 (=> (not res!508805) (not e!723115))))

(assert (=> d!318985 (= res!508805 (= (csize!7214 (c!189411 indices!2)) (+ (size!8535 (left!9510 (c!189411 indices!2))) (size!8535 (right!9840 (c!189411 indices!2))))))))

(assert (=> d!318985 (= (inv!14166 (c!189411 indices!2)) e!723115)))

(declare-fun b!1131793 () Bool)

(declare-fun res!508806 () Bool)

(assert (=> b!1131793 (=> (not res!508806) (not e!723115))))

(assert (=> b!1131793 (= res!508806 (and (not (= (left!9510 (c!189411 indices!2)) Empty!3492)) (not (= (right!9840 (c!189411 indices!2)) Empty!3492))))))

(declare-fun b!1131794 () Bool)

(declare-fun res!508807 () Bool)

(assert (=> b!1131794 (=> (not res!508807) (not e!723115))))

(assert (=> b!1131794 (= res!508807 (= (cheight!3703 (c!189411 indices!2)) (+ (max!0 (height!451 (left!9510 (c!189411 indices!2))) (height!451 (right!9840 (c!189411 indices!2)))) 1)))))

(declare-fun b!1131795 () Bool)

(assert (=> b!1131795 (= e!723115 (<= 0 (cheight!3703 (c!189411 indices!2))))))

(assert (= (and d!318985 res!508805) b!1131793))

(assert (= (and b!1131793 res!508806) b!1131794))

(assert (= (and b!1131794 res!508807) b!1131795))

(assert (=> d!318985 m!1280453))

(declare-fun m!1281323 () Bool)

(assert (=> d!318985 m!1281323))

(assert (=> b!1131794 m!1280381))

(assert (=> b!1131794 m!1280383))

(assert (=> b!1131794 m!1280381))

(assert (=> b!1131794 m!1280383))

(declare-fun m!1281325 () Bool)

(assert (=> b!1131794 m!1281325))

(assert (=> b!1130318 d!318985))

(assert (=> b!1130352 d!318485))

(declare-fun d!318987 () Bool)

(declare-fun lt!380156 () Bool)

(declare-fun e!723116 () Bool)

(assert (=> d!318987 (= lt!380156 e!723116)))

(declare-fun res!508810 () Bool)

(assert (=> d!318987 (=> (not res!508810) (not e!723116))))

(assert (=> d!318987 (= res!508810 (= (list!3958 (_1!6805 (lex!657 lt!379404 (rules!9208 pt!21) (print!594 lt!379404 (singletonSeq!600 (h!16356 lt!379443)))))) (list!3958 (singletonSeq!600 (h!16356 lt!379443)))))))

(declare-fun e!723117 () Bool)

(assert (=> d!318987 (= lt!380156 e!723117)))

(declare-fun res!508808 () Bool)

(assert (=> d!318987 (=> (not res!508808) (not e!723117))))

(declare-fun lt!380155 () tuple2!11916)

(assert (=> d!318987 (= res!508808 (= (size!8533 (_1!6805 lt!380155)) 1))))

(assert (=> d!318987 (= lt!380155 (lex!657 lt!379404 (rules!9208 pt!21) (print!594 lt!379404 (singletonSeq!600 (h!16356 lt!379443)))))))

(assert (=> d!318987 (not (isEmpty!6785 (rules!9208 pt!21)))))

(assert (=> d!318987 (= (rulesProduceIndividualToken!642 lt!379404 (rules!9208 pt!21) (h!16356 lt!379443)) lt!380156)))

(declare-fun b!1131796 () Bool)

(declare-fun res!508809 () Bool)

(assert (=> b!1131796 (=> (not res!508809) (not e!723117))))

(assert (=> b!1131796 (= res!508809 (= (apply!2266 (_1!6805 lt!380155) 0) (h!16356 lt!379443)))))

(declare-fun b!1131797 () Bool)

(assert (=> b!1131797 (= e!723117 (isEmpty!6788 (_2!6805 lt!380155)))))

(declare-fun b!1131798 () Bool)

(assert (=> b!1131798 (= e!723116 (isEmpty!6788 (_2!6805 (lex!657 lt!379404 (rules!9208 pt!21) (print!594 lt!379404 (singletonSeq!600 (h!16356 lt!379443)))))))))

(assert (= (and d!318987 res!508808) b!1131796))

(assert (= (and b!1131796 res!508809) b!1131797))

(assert (= (and d!318987 res!508810) b!1131798))

(declare-fun m!1281327 () Bool)

(assert (=> d!318987 m!1281327))

(declare-fun m!1281329 () Bool)

(assert (=> d!318987 m!1281329))

(assert (=> d!318987 m!1281327))

(declare-fun m!1281331 () Bool)

(assert (=> d!318987 m!1281331))

(assert (=> d!318987 m!1279015))

(assert (=> d!318987 m!1281329))

(declare-fun m!1281333 () Bool)

(assert (=> d!318987 m!1281333))

(declare-fun m!1281335 () Bool)

(assert (=> d!318987 m!1281335))

(assert (=> d!318987 m!1281327))

(declare-fun m!1281337 () Bool)

(assert (=> d!318987 m!1281337))

(declare-fun m!1281339 () Bool)

(assert (=> b!1131796 m!1281339))

(declare-fun m!1281341 () Bool)

(assert (=> b!1131797 m!1281341))

(assert (=> b!1131798 m!1281327))

(assert (=> b!1131798 m!1281327))

(assert (=> b!1131798 m!1281329))

(assert (=> b!1131798 m!1281329))

(assert (=> b!1131798 m!1281333))

(declare-fun m!1281343 () Bool)

(assert (=> b!1131798 m!1281343))

(assert (=> b!1130519 d!318987))

(declare-fun d!318989 () Bool)

(assert (=> d!318989 (= (separableTokens!64 Lexer!1593 (tokens!1450 pt!21) (rules!9208 pt!21)) (tokensListTwoByTwoPredicateSeparable!24 Lexer!1593 (tokens!1450 pt!21) 0 (rules!9208 pt!21)))))

(declare-fun bs!277820 () Bool)

(assert (= bs!277820 d!318989))

(assert (=> bs!277820 m!1279301))

(assert (=> b!1130349 d!318989))

(declare-fun b!1131801 () Bool)

(declare-fun e!723120 () Bool)

(assert (=> b!1131801 (= e!723120 true)))

(declare-fun b!1131800 () Bool)

(declare-fun e!723119 () Bool)

(assert (=> b!1131800 (= e!723119 e!723120)))

(declare-fun b!1131799 () Bool)

(declare-fun e!723118 () Bool)

(assert (=> b!1131799 (= e!723118 e!723119)))

(assert (=> b!1130526 e!723118))

(assert (= b!1131800 b!1131801))

(assert (= b!1131799 b!1131800))

(assert (= (and b!1130526 ((_ is Cons!10956) (rules!9208 pt!21))) b!1131799))

(assert (=> b!1131801 (< (dynLambda!4822 order!6693 (toValue!2978 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45501))))

(assert (=> b!1131801 (< (dynLambda!4824 order!6697 (toChars!2837 (transformation!1889 (h!16357 (rules!9208 pt!21))))) (dynLambda!4823 order!6695 lambda!45501))))

(declare-fun tp!330913 () Bool)

(declare-fun b!1131802 () Bool)

(declare-fun tp!330914 () Bool)

(declare-fun e!723122 () Bool)

(assert (=> b!1131802 (= e!723122 (and (inv!14158 (left!9511 (left!9511 (c!189412 acc!225)))) tp!330913 (inv!14158 (right!9841 (left!9511 (c!189412 acc!225)))) tp!330914))))

(declare-fun b!1131804 () Bool)

(declare-fun e!723121 () Bool)

(declare-fun tp!330912 () Bool)

(assert (=> b!1131804 (= e!723121 tp!330912)))

(declare-fun b!1131803 () Bool)

(assert (=> b!1131803 (= e!723122 (and (inv!14179 (xs!6186 (left!9511 (c!189412 acc!225)))) e!723121))))

(assert (=> b!1130566 (= tp!330867 (and (inv!14158 (left!9511 (c!189412 acc!225))) e!723122))))

(assert (= (and b!1130566 ((_ is Node!3493) (left!9511 (c!189412 acc!225)))) b!1131802))

(assert (= b!1131803 b!1131804))

(assert (= (and b!1130566 ((_ is Leaf!5448) (left!9511 (c!189412 acc!225)))) b!1131803))

(declare-fun m!1281345 () Bool)

(assert (=> b!1131802 m!1281345))

(declare-fun m!1281347 () Bool)

(assert (=> b!1131802 m!1281347))

(declare-fun m!1281349 () Bool)

(assert (=> b!1131803 m!1281349))

(assert (=> b!1130566 m!1279417))

(declare-fun tp!330916 () Bool)

(declare-fun tp!330917 () Bool)

(declare-fun e!723124 () Bool)

(declare-fun b!1131805 () Bool)

(assert (=> b!1131805 (= e!723124 (and (inv!14158 (left!9511 (right!9841 (c!189412 acc!225)))) tp!330916 (inv!14158 (right!9841 (right!9841 (c!189412 acc!225)))) tp!330917))))

(declare-fun b!1131807 () Bool)

(declare-fun e!723123 () Bool)

(declare-fun tp!330915 () Bool)

(assert (=> b!1131807 (= e!723123 tp!330915)))

(declare-fun b!1131806 () Bool)

(assert (=> b!1131806 (= e!723124 (and (inv!14179 (xs!6186 (right!9841 (c!189412 acc!225)))) e!723123))))

(assert (=> b!1130566 (= tp!330868 (and (inv!14158 (right!9841 (c!189412 acc!225))) e!723124))))

(assert (= (and b!1130566 ((_ is Node!3493) (right!9841 (c!189412 acc!225)))) b!1131805))

(assert (= b!1131806 b!1131807))

(assert (= (and b!1130566 ((_ is Leaf!5448) (right!9841 (c!189412 acc!225)))) b!1131806))

(declare-fun m!1281351 () Bool)

(assert (=> b!1131805 m!1281351))

(declare-fun m!1281353 () Bool)

(assert (=> b!1131805 m!1281353))

(declare-fun m!1281355 () Bool)

(assert (=> b!1131806 m!1281355))

(assert (=> b!1130566 m!1279419))

(declare-fun b!1131818 () Bool)

(declare-fun e!723132 () Bool)

(declare-fun tp!330926 () Bool)

(assert (=> b!1131818 (= e!723132 (and (inv!14157 (c!189410 (tokens!1450 (h!16359 (innerList!3553 (xs!6186 (c!189412 acc!225))))))) tp!330926))))

(declare-fun b!1131817 () Bool)

(declare-fun tp!330924 () Bool)

(declare-fun e!723133 () Bool)

(assert (=> b!1131817 (= e!723133 (and tp!330924 (inv!14156 (tokens!1450 (h!16359 (innerList!3553 (xs!6186 (c!189412 acc!225)))))) e!723132))))

(declare-fun tp!330925 () Bool)

(declare-fun e!723131 () Bool)

(declare-fun b!1131816 () Bool)

(assert (=> b!1131816 (= e!723131 (and (inv!14153 (h!16359 (innerList!3553 (xs!6186 (c!189412 acc!225))))) e!723133 tp!330925))))

(assert (=> b!1130568 (= tp!330866 e!723131)))

(assert (= b!1131817 b!1131818))

(assert (= b!1131816 b!1131817))

(assert (= (and b!1130568 ((_ is Cons!10958) (innerList!3553 (xs!6186 (c!189412 acc!225))))) b!1131816))

(declare-fun m!1281357 () Bool)

(assert (=> b!1131818 m!1281357))

(declare-fun m!1281359 () Bool)

(assert (=> b!1131817 m!1281359))

(declare-fun m!1281361 () Bool)

(assert (=> b!1131816 m!1281361))

(declare-fun b!1131827 () Bool)

(declare-fun e!723138 () Bool)

(assert (=> b!1131827 (= e!723138 true)))

(declare-fun b!1131829 () Bool)

(declare-fun e!723139 () Bool)

(assert (=> b!1131829 (= e!723139 true)))

(declare-fun b!1131828 () Bool)

(assert (=> b!1131828 (= e!723138 e!723139)))

(assert (=> b!1130527 e!723138))

(assert (= (and b!1130527 ((_ is Node!3491) (c!189410 (tokens!1450 pt!21)))) b!1131827))

(assert (= b!1131828 b!1131829))

(assert (= (and b!1130527 ((_ is Leaf!5446) (c!189410 (tokens!1450 pt!21)))) b!1131828))

(declare-fun b!1131843 () Bool)

(declare-fun b_free!27333 () Bool)

(declare-fun b_next!28037 () Bool)

(assert (=> b!1131843 (= b_free!27333 (not b_next!28037))))

(declare-fun tp!330934 () Bool)

(declare-fun b_and!79937 () Bool)

(assert (=> b!1131843 (= tp!330934 b_and!79937)))

(declare-fun b_free!27335 () Bool)

(declare-fun b_next!28039 () Bool)

(assert (=> b!1131843 (= b_free!27335 (not b_next!28039))))

(declare-fun tb!65037 () Bool)

(declare-fun t!106940 () Bool)

(assert (=> (and b!1131843 (= (toChars!2837 (transformation!1889 (rule!3310 (h!16356 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21)))))))) (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))) t!106940) tb!65037))

(declare-fun result!77582 () Bool)

(assert (= result!77582 result!77574))

(assert (=> d!318929 t!106940))

(declare-fun tp!330933 () Bool)

(declare-fun b_and!79939 () Bool)

(assert (=> b!1131843 (= tp!330933 (and (=> t!106940 result!77582) b_and!79939))))

(declare-fun e!723152 () Bool)

(assert (=> b!1130538 (= tp!330844 e!723152)))

(declare-fun b!1131842 () Bool)

(declare-fun e!723153 () Bool)

(declare-fun e!723157 () Bool)

(assert (=> b!1131842 (= e!723153 (and (inv!14145 (tag!2151 (rule!3310 (h!16356 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21)))))))) (inv!14178 (transformation!1889 (rule!3310 (h!16356 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21)))))))) e!723157))))

(declare-fun b!1131841 () Bool)

(declare-fun e!723155 () Bool)

(declare-fun inv!21 (TokenValue!1955) Bool)

(assert (=> b!1131841 (= e!723155 (and (inv!21 (value!61833 (h!16356 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21))))))) e!723153))))

(declare-fun b!1131840 () Bool)

(declare-fun tp!330935 () Bool)

(declare-fun inv!14184 (Token!3440) Bool)

(assert (=> b!1131840 (= e!723152 (and (inv!14184 (h!16356 (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21)))))) e!723155 tp!330935))))

(assert (=> b!1131843 (= e!723157 (and tp!330934 tp!330933))))

(assert (= b!1131842 b!1131843))

(assert (= b!1131841 b!1131842))

(assert (= b!1131840 b!1131841))

(assert (= (and b!1130538 ((_ is Cons!10955) (innerList!3551 (xs!6184 (c!189410 (tokens!1450 pt!21)))))) b!1131840))

(declare-fun m!1281363 () Bool)

(assert (=> b!1131842 m!1281363))

(declare-fun m!1281365 () Bool)

(assert (=> b!1131842 m!1281365))

(declare-fun m!1281367 () Bool)

(assert (=> b!1131841 m!1281367))

(declare-fun m!1281369 () Bool)

(assert (=> b!1131840 m!1281369))

(declare-fun e!723158 () Bool)

(declare-fun tp!330937 () Bool)

(declare-fun tp!330936 () Bool)

(declare-fun b!1131844 () Bool)

(assert (=> b!1131844 (= e!723158 (and (inv!14159 (left!9510 (left!9510 (c!189411 indices!2)))) tp!330936 (inv!14159 (right!9840 (left!9510 (c!189411 indices!2)))) tp!330937))))

(declare-fun b!1131845 () Bool)

(assert (=> b!1131845 (= e!723158 (inv!14177 (xs!6185 (left!9510 (c!189411 indices!2)))))))

(assert (=> b!1130545 (= tp!330849 (and (inv!14159 (left!9510 (c!189411 indices!2))) e!723158))))

(assert (= (and b!1130545 ((_ is Node!3492) (left!9510 (c!189411 indices!2)))) b!1131844))

(assert (= (and b!1130545 ((_ is Leaf!5447) (left!9510 (c!189411 indices!2)))) b!1131845))

(declare-fun m!1281371 () Bool)

(assert (=> b!1131844 m!1281371))

(declare-fun m!1281373 () Bool)

(assert (=> b!1131844 m!1281373))

(declare-fun m!1281375 () Bool)

(assert (=> b!1131845 m!1281375))

(assert (=> b!1130545 m!1279407))

(declare-fun tp!330939 () Bool)

(declare-fun tp!330938 () Bool)

(declare-fun b!1131846 () Bool)

(declare-fun e!723160 () Bool)

(assert (=> b!1131846 (= e!723160 (and (inv!14159 (left!9510 (right!9840 (c!189411 indices!2)))) tp!330938 (inv!14159 (right!9840 (right!9840 (c!189411 indices!2)))) tp!330939))))

(declare-fun b!1131847 () Bool)

(assert (=> b!1131847 (= e!723160 (inv!14177 (xs!6185 (right!9840 (c!189411 indices!2)))))))

(assert (=> b!1130545 (= tp!330850 (and (inv!14159 (right!9840 (c!189411 indices!2))) e!723160))))

(assert (= (and b!1130545 ((_ is Node!3492) (right!9840 (c!189411 indices!2)))) b!1131846))

(assert (= (and b!1130545 ((_ is Leaf!5447) (right!9840 (c!189411 indices!2)))) b!1131847))

(declare-fun m!1281377 () Bool)

(assert (=> b!1131846 m!1281377))

(declare-fun m!1281379 () Bool)

(assert (=> b!1131846 m!1281379))

(declare-fun m!1281381 () Bool)

(assert (=> b!1131847 m!1281381))

(assert (=> b!1130545 m!1279409))

(declare-fun tp!330940 () Bool)

(declare-fun tp!330941 () Bool)

(declare-fun b!1131848 () Bool)

(declare-fun e!723163 () Bool)

(assert (=> b!1131848 (= e!723163 (and (inv!14157 (left!9509 (left!9509 (c!189410 (tokens!1450 pt!21))))) tp!330941 (inv!14157 (right!9839 (left!9509 (c!189410 (tokens!1450 pt!21))))) tp!330940))))

(declare-fun b!1131850 () Bool)

(declare-fun e!723162 () Bool)

(declare-fun tp!330942 () Bool)

(assert (=> b!1131850 (= e!723162 tp!330942)))

(declare-fun b!1131849 () Bool)

(assert (=> b!1131849 (= e!723163 (and (inv!14176 (xs!6184 (left!9509 (c!189410 (tokens!1450 pt!21))))) e!723162))))

(assert (=> b!1130536 (= tp!330843 (and (inv!14157 (left!9509 (c!189410 (tokens!1450 pt!21)))) e!723163))))

(assert (= (and b!1130536 ((_ is Node!3491) (left!9509 (c!189410 (tokens!1450 pt!21))))) b!1131848))

(assert (= b!1131849 b!1131850))

(assert (= (and b!1130536 ((_ is Leaf!5446) (left!9509 (c!189410 (tokens!1450 pt!21))))) b!1131849))

(declare-fun m!1281383 () Bool)

(assert (=> b!1131848 m!1281383))

(declare-fun m!1281385 () Bool)

(assert (=> b!1131848 m!1281385))

(declare-fun m!1281387 () Bool)

(assert (=> b!1131849 m!1281387))

(assert (=> b!1130536 m!1279401))

(declare-fun tp!330943 () Bool)

(declare-fun e!723165 () Bool)

(declare-fun tp!330944 () Bool)

(declare-fun b!1131851 () Bool)

(assert (=> b!1131851 (= e!723165 (and (inv!14157 (left!9509 (right!9839 (c!189410 (tokens!1450 pt!21))))) tp!330944 (inv!14157 (right!9839 (right!9839 (c!189410 (tokens!1450 pt!21))))) tp!330943))))

(declare-fun b!1131853 () Bool)

(declare-fun e!723164 () Bool)

(declare-fun tp!330945 () Bool)

(assert (=> b!1131853 (= e!723164 tp!330945)))

(declare-fun b!1131852 () Bool)

(assert (=> b!1131852 (= e!723165 (and (inv!14176 (xs!6184 (right!9839 (c!189410 (tokens!1450 pt!21))))) e!723164))))

(assert (=> b!1130536 (= tp!330842 (and (inv!14157 (right!9839 (c!189410 (tokens!1450 pt!21)))) e!723165))))

(assert (= (and b!1130536 ((_ is Node!3491) (right!9839 (c!189410 (tokens!1450 pt!21))))) b!1131851))

(assert (= b!1131852 b!1131853))

(assert (= (and b!1130536 ((_ is Leaf!5446) (right!9839 (c!189410 (tokens!1450 pt!21))))) b!1131852))

(declare-fun m!1281389 () Bool)

(assert (=> b!1131851 m!1281389))

(declare-fun m!1281391 () Bool)

(assert (=> b!1131851 m!1281391))

(declare-fun m!1281393 () Bool)

(assert (=> b!1131852 m!1281393))

(assert (=> b!1130536 m!1279403))

(declare-fun b!1131856 () Bool)

(declare-fun b_free!27337 () Bool)

(declare-fun b_next!28041 () Bool)

(assert (=> b!1131856 (= b_free!27337 (not b_next!28041))))

(declare-fun tp!330947 () Bool)

(declare-fun b_and!79941 () Bool)

(assert (=> b!1131856 (= tp!330947 b_and!79941)))

(declare-fun b_free!27339 () Bool)

(declare-fun b_next!28043 () Bool)

(assert (=> b!1131856 (= b_free!27339 (not b_next!28043))))

(declare-fun t!106942 () Bool)

(declare-fun tb!65039 () Bool)

(assert (=> (and b!1131856 (= (toChars!2837 (transformation!1889 (h!16357 (t!106834 (rules!9208 pt!21))))) (toChars!2837 (transformation!1889 (rule!3310 (apply!2266 (tokens!1450 pt!21) (+ lt!379419 1)))))) t!106942) tb!65039))

(declare-fun result!77584 () Bool)

(assert (= result!77584 result!77574))

(assert (=> d!318929 t!106942))

(declare-fun tp!330948 () Bool)

(declare-fun b_and!79943 () Bool)

(assert (=> b!1131856 (= tp!330948 (and (=> t!106942 result!77584) b_and!79943))))

(declare-fun e!723166 () Bool)

(assert (=> b!1131856 (= e!723166 (and tp!330947 tp!330948))))

(declare-fun b!1131855 () Bool)

(declare-fun e!723169 () Bool)

(assert (=> b!1131855 (= e!723169 (and (inv!14145 (tag!2151 (h!16357 (t!106834 (rules!9208 pt!21))))) (inv!14178 (transformation!1889 (h!16357 (t!106834 (rules!9208 pt!21))))) e!723166))))

(declare-fun b!1131854 () Bool)

(declare-fun e!723167 () Bool)

(declare-fun tp!330946 () Bool)

(assert (=> b!1131854 (= e!723167 (and e!723169 tp!330946))))

(assert (=> b!1130555 (= tp!330857 e!723167)))

(assert (= b!1131855 b!1131856))

(assert (= b!1131854 b!1131855))

(assert (= (and b!1130555 ((_ is Cons!10956) (t!106834 (rules!9208 pt!21)))) b!1131854))

(declare-fun m!1281395 () Bool)

(assert (=> b!1131855 m!1281395))

(declare-fun m!1281397 () Bool)

(assert (=> b!1131855 m!1281397))

(declare-fun b_lambda!33281 () Bool)

(assert (= b_lambda!33243 (or d!318495 b_lambda!33281)))

(declare-fun bs!277821 () Bool)

(declare-fun d!318991 () Bool)

(assert (= bs!277821 (and d!318991 d!318495)))

(assert (=> bs!277821 (= (dynLambda!4826 lambda!45501 (h!16356 lt!379396)) (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 lt!379396)))))

(declare-fun m!1281399 () Bool)

(assert (=> bs!277821 m!1281399))

(assert (=> b!1131053 d!318991))

(declare-fun b_lambda!33283 () Bool)

(assert (= b_lambda!33277 (or d!318495 b_lambda!33283)))

(declare-fun bs!277822 () Bool)

(declare-fun d!318993 () Bool)

(assert (= bs!277822 (and d!318993 d!318495)))

(assert (=> bs!277822 (= (dynLambda!4826 lambda!45501 (h!16356 lt!379379)) (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 lt!379379)))))

(declare-fun m!1281401 () Bool)

(assert (=> bs!277822 m!1281401))

(assert (=> b!1131732 d!318993))

(declare-fun b_lambda!33285 () Bool)

(assert (= b_lambda!33251 (or b!1130285 b_lambda!33285)))

(declare-fun bs!277823 () Bool)

(declare-fun d!318995 () Bool)

(assert (= bs!277823 (and d!318995 b!1130285)))

(assert (=> bs!277823 (= (dynLambda!4818 lambda!45475 (h!16359 (t!106836 (Cons!10958 lt!378985 Nil!10958)))) (usesJsonRules!0 (h!16359 (t!106836 (Cons!10958 lt!378985 Nil!10958)))))))

(declare-fun m!1281403 () Bool)

(assert (=> bs!277823 m!1281403))

(assert (=> b!1131301 d!318995))

(declare-fun b_lambda!33287 () Bool)

(assert (= b_lambda!33241 (or d!318495 b_lambda!33287)))

(declare-fun bs!277824 () Bool)

(declare-fun d!318997 () Bool)

(assert (= bs!277824 (and d!318997 d!318495)))

(assert (=> bs!277824 (= (dynLambda!4826 lambda!45501 (h!16356 lt!379417)) (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 lt!379417)))))

(declare-fun m!1281405 () Bool)

(assert (=> bs!277824 m!1281405))

(assert (=> b!1131010 d!318997))

(declare-fun b_lambda!33289 () Bool)

(assert (= b_lambda!33253 (or d!318495 b_lambda!33289)))

(declare-fun bs!277825 () Bool)

(declare-fun d!318999 () Bool)

(assert (= bs!277825 (and d!318999 d!318495)))

(assert (=> bs!277825 (= (dynLambda!4826 lambda!45501 (h!16356 lt!379403)) (rulesProduceIndividualToken!642 Lexer!1593 (rules!9208 pt!21) (h!16356 lt!379403)))))

(declare-fun m!1281407 () Bool)

(assert (=> bs!277825 m!1281407))

(assert (=> b!1131370 d!318999))

(declare-fun b_lambda!33291 () Bool)

(assert (= b_lambda!33279 (or b!1130285 b_lambda!33291)))

(declare-fun bs!277826 () Bool)

(declare-fun d!319001 () Bool)

(assert (= bs!277826 (and d!319001 b!1130285)))

(assert (=> bs!277826 (= (dynLambda!4818 lambda!45475 (h!16359 (t!106836 (list!3952 acc!225)))) (usesJsonRules!0 (h!16359 (t!106836 (list!3952 acc!225)))))))

(declare-fun m!1281409 () Bool)

(assert (=> bs!277826 m!1281409))

(assert (=> b!1131767 d!319001))

(declare-fun b_lambda!33293 () Bool)

(assert (= b_lambda!33247 (or b!1130277 b_lambda!33293)))

(declare-fun bs!277827 () Bool)

(declare-fun d!319003 () Bool)

(assert (= bs!277827 (and d!319003 b!1130277)))

(assert (=> bs!277827 (= (dynLambda!4828 lambda!45474 (h!16358 (list!3957 indices!2))) (and (<= 0 (h!16358 (list!3957 indices!2))) (< (h!16358 (list!3957 indices!2)) size!108)))))

(assert (=> b!1131220 d!319003))

(check-sat (not b_lambda!33291) (not b!1131845) (not b!1131142) (not b!1131050) (not b!1131044) (not b!1131492) (not b!1131170) (not b!1131848) (not b!1131743) b_and!79935 (not b!1131340) (not b!1131268) (not d!318963) (not b!1130653) (not d!318755) (not b!1131803) (not b!1131198) (not b!1131335) (not b!1131698) (not d!318563) (not b!1131294) (not b!1131849) (not b!1131736) (not b_lambda!33233) (not d!318803) (not b!1131140) (not b!1131686) (not b!1131329) (not d!318529) (not d!318983) (not d!318785) (not d!318669) (not b!1131203) (not b!1131841) (not b!1130651) (not b!1130599) (not b!1131733) (not b!1131311) (not b!1131687) (not b!1130926) (not b!1130775) (not d!318531) (not b!1131493) (not b!1131677) (not b!1131176) (not b!1131367) (not b!1130988) (not b!1131241) (not b!1131267) (not b!1130910) (not b!1131761) (not b!1131352) (not d!318795) (not b!1131242) (not b!1130908) (not b!1131348) (not b!1130545) (not d!318623) (not b!1131802) (not b!1131178) (not b!1130913) (not bm!80656) (not b!1131369) (not b!1131726) (not d!318771) (not d!318617) (not d!318929) (not b!1131840) (not b!1131048) (not b!1131214) (not b!1131794) (not b!1131123) (not b!1131659) (not d!318571) (not b!1131764) (not b!1131350) (not b!1131183) (not b!1131168) (not d!318735) (not b!1131643) (not b!1130566) (not b!1131555) (not b!1131664) (not d!318941) (not b!1131146) (not d!318781) (not b!1131371) (not d!318943) (not b!1130776) (not b!1131147) (not b!1131804) (not bm!80657) (not bs!277821) (not b!1131842) (not d!318731) (not b!1131309) (not b!1131777) (not b!1131853) (not b!1130766) (not b!1131375) (not b_lambda!33293) (not b!1131797) (not bs!277826) (not b_next!28025) (not d!318749) (not b!1130912) (not b!1131331) (not b!1131708) (not d!318733) (not d!318925) (not b!1131722) (not d!318901) (not d!318847) (not b!1131668) (not b!1131175) (not b!1131851) (not d!318695) (not b!1131852) (not d!318849) (not d!318965) (not d!318793) (not bm!80646) (not b!1131272) (not bm!80635) (not bs!277822) (not b!1130601) (not b!1131270) (not b!1131676) (not b!1131298) (not b!1130600) (not b!1131775) (not b!1131197) (not b_lambda!33275) (not b!1131846) (not b!1131136) (not b!1131633) (not b!1131054) (not d!318741) (not bs!277825) (not d!318533) (not b!1131735) (not b!1131240) (not b!1131124) (not b!1131731) (not b!1131717) (not b!1131171) (not b!1131757) (not b!1131181) (not b!1131061) (not b!1131368) (not d!318565) (not d!318689) (not b!1131195) (not d!318697) (not b!1131356) (not b!1131699) (not b!1131177) (not b!1131760) (not d!318801) (not b_lambda!33289) (not b!1131327) (not d!318727) (not b!1131807) (not b!1131713) (not b!1130991) (not d!318681) (not d!318935) (not d!318945) (not b_lambda!33231) (not b!1130610) (not b!1131334) (not d!318927) (not d!318675) (not d!318575) (not b!1131299) (not b_lambda!33281) (not d!318921) (not b!1131827) (not bm!80653) (not b!1131196) (not d!318753) (not d!318797) (not b!1131644) (not b!1131063) (not b!1131730) (not b!1131194) (not b!1131798) (not b!1130581) (not b!1131172) (not b!1130658) (not b!1131817) (not b!1131799) (not b!1130668) (not bm!80659) (not b!1131049) (not b!1130989) b_and!79939 (not bm!80654) (not b!1130604) (not b!1130583) (not b!1130742) (not b!1130907) (not b!1131740) (not b!1130909) (not d!318851) (not b!1131357) (not d!318543) b_and!79943 (not d!318633) (not b!1131806) (not b_next!28039) b_and!79937 (not b!1131302) (not b!1131072) (not b!1131829) (not b!1131785) (not b!1131355) (not b!1131128) (not b!1131354) (not bm!80644) (not b_next!28037) (not bm!80655) (not d!318729) (not b!1131132) (not b!1130779) (not b!1131073) (not b!1131169) (not b!1131221) (not b!1131816) (not b!1131854) (not d!318807) (not b!1131011) (not d!318967) (not d!318919) (not d!318811) (not b!1131780) (not bm!80649) (not b!1131756) (not b_lambda!33285) (not b!1131847) (not b!1131143) (not b!1131091) (not bm!80658) (not b!1131689) (not b!1131704) (not b!1131701) (not b!1131695) (not b!1131040) b_and!79941 (not b!1131374) (not d!318805) (not tb!65035) (not b!1131332) (not d!318879) (not d!318625) (not b!1130911) (not d!318759) (not d!318691) (not d!318889) (not b!1131144) (not b!1131778) (not b!1131759) (not b!1131762) (not b!1130987) (not b!1131646) (not b_next!28027) (not bs!277823) (not b!1131763) (not d!318933) (not d!318791) (not d!318977) (not b!1131271) (not b!1130602) (not d!318957) (not b!1131844) (not b!1131688) (not d!318573) (not b!1131141) (not d!318939) (not b!1131069) (not b!1131691) (not b!1131093) (not b!1131333) (not b!1131697) (not d!318569) (not b!1130770) (not b!1130652) (not b!1131734) (not b!1131632) (not b!1130990) (not b!1130927) (not d!318953) (not d!318799) (not b!1130659) (not b!1130744) (not b!1130780) (not b!1131655) b_and!79921 (not d!318973) (not d!318923) (not b!1131700) (not b!1131068) (not d!318789) (not d!318703) (not b!1131742) (not b!1131062) (not b!1130603) (not b!1131738) (not b!1130774) (not b!1131300) (not d!318561) (not b!1131855) (not b!1131850) (not b!1130586) (not b!1131805) (not b!1131145) (not b!1131818) (not b!1131702) (not d!318985) (not b_next!28043) (not b!1131679) (not b!1131094) (not b!1131696) (not b!1131773) (not d!318567) (not b!1131650) (not d!318955) (not d!318949) (not b!1130743) (not b!1131796) (not d!318947) (not b_lambda!33287) (not b!1131690) (not d!318951) (not b!1131351) (not b_next!28041) (not b!1130536) (not b!1131310) (not d!318987) (not b!1131038) (not b!1130584) (not b!1130914) (not d!318545) (not bs!277824) (not d!318709) (not b!1131768) (not d!318989) (not d!318845) (not d!318897) (not b!1131631) (not b!1131758) (not d!318969) (not b!1130781) (not b!1131180) (not b_lambda!33283) (not b!1131678) (not b!1131092) (not b!1131269) (not b!1131137) (not b!1131353) (not b!1131694))
(check-sat b_and!79935 (not b_next!28025) b_and!79941 (not b_next!28027) b_and!79921 (not b_next!28043) (not b_next!28041) (not b_next!28039) b_and!79939 b_and!79943 b_and!79937 (not b_next!28037))
