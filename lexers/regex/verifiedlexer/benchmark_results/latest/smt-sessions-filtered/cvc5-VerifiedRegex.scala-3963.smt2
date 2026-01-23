; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216362 () Bool)

(assert start!216362)

(assert (=> start!216362 true))

(declare-fun b!2219221 () Bool)

(assert (=> b!2219221 true))

(assert (=> b!2219221 true))

(declare-fun b!2219222 () Bool)

(assert (=> b!2219222 true))

(declare-fun b!2219233 () Bool)

(declare-fun e!1417225 () Bool)

(declare-datatypes ((List!26079 0))(
  ( (Nil!25995) (Cons!25995 (h!31396 (_ BitVec 16)) (t!199468 List!26079)) )
))
(declare-datatypes ((IArray!17001 0))(
  ( (IArray!17002 (innerList!8558 List!26079)) )
))
(declare-datatypes ((Conc!8498 0))(
  ( (Node!8498 (left!19987 Conc!8498) (right!20317 Conc!8498) (csize!17226 Int) (cheight!8709 Int)) (Leaf!12462 (xs!11440 IArray!17001) (csize!17227 Int)) (Empty!8498) )
))
(declare-datatypes ((BalanceConc!16714 0))(
  ( (BalanceConc!16715 (c!354351 Conc!8498)) )
))
(declare-fun x!427880 () BalanceConc!16714)

(declare-fun tp!691255 () Bool)

(declare-fun inv!35255 (Conc!8498) Bool)

(assert (=> b!2219233 (= e!1417225 (and (inv!35255 (c!354351 x!427880)) tp!691255))))

(declare-fun inst!1246 () Bool)

(declare-datatypes ((IntegerValueInjection!108 0))(
  ( (IntegerValueInjection!109) )
))
(declare-fun thiss!4894 () IntegerValueInjection!108)

(declare-fun inv!35256 (BalanceConc!16714) Bool)

(declare-fun list!10081 (BalanceConc!16714) List!26079)

(declare-datatypes ((TokenValue!4332 0))(
  ( (FloatLiteralValue!8664 (text!30769 List!26079)) (TokenValueExt!4331 (__x!17109 Int)) (Broken!21660 (value!132317 List!26079)) (Object!4415) (End!4332) (Def!4332) (Underscore!4332) (Match!4332) (Else!4332) (Error!4332) (Case!4332) (If!4332) (Extends!4332) (Abstract!4332) (Class!4332) (Val!4332) (DelimiterValue!8664 (del!4392 List!26079)) (KeywordValue!4338 (value!132318 List!26079)) (CommentValue!8664 (value!132319 List!26079)) (WhitespaceValue!8664 (value!132320 List!26079)) (IndentationValue!4332 (value!132321 List!26079)) (String!28373) (Int32!4332) (Broken!21661 (value!132322 List!26079)) (Boolean!4333) (Unit!38962) (OperatorValue!4335 (op!4392 List!26079)) (IdentifierValue!8664 (value!132323 List!26079)) (IdentifierValue!8665 (value!132324 List!26079)) (WhitespaceValue!8665 (value!132325 List!26079)) (True!8664) (False!8664) (Broken!21662 (value!132326 List!26079)) (Broken!21663 (value!132327 List!26079)) (True!8665) (RightBrace!4332) (RightBracket!4332) (Colon!4332) (Null!4332) (Comma!4332) (LeftBracket!4332) (False!8665) (LeftBrace!4332) (ImaginaryLiteralValue!4332 (text!30770 List!26079)) (StringLiteralValue!12996 (value!132328 List!26079)) (EOFValue!4332 (value!132329 List!26079)) (IdentValue!4332 (value!132330 List!26079)) (DelimiterValue!8665 (value!132331 List!26079)) (DedentValue!4332 (value!132332 List!26079)) (NewLineValue!4332 (value!132333 List!26079)) (IntegerValue!12996 (value!132334 (_ BitVec 32)) (text!30771 List!26079)) (IntegerValue!12997 (value!132335 Int) (text!30772 List!26079)) (Times!4332) (Or!4332) (Equal!4332) (Minus!4332) (Broken!21664 (value!132336 List!26079)) (And!4332) (Div!4332) (LessEqual!4332) (Mod!4332) (Concat!10664) (Not!4332) (Plus!4332) (SpaceValue!4332 (value!132337 List!26079)) (IntegerValue!12998 (value!132338 Int) (text!30773 List!26079)) (StringLiteralValue!12997 (text!30774 List!26079)) (FloatLiteralValue!8665 (text!30775 List!26079)) (BytesLiteralValue!4332 (value!132339 List!26079)) (CommentValue!8665 (value!132340 List!26079)) (StringLiteralValue!12998 (value!132341 List!26079)) (ErrorTokenValue!4332 (msg!4393 List!26079)) )
))
(declare-fun toCharacters!24 (IntegerValueInjection!108 TokenValue!4332) BalanceConc!16714)

(declare-fun toValue!31 (IntegerValueInjection!108 BalanceConc!16714) TokenValue!4332)

(assert (=> start!216362 (= inst!1246 (=> (and (inv!35256 x!427880) e!1417225) (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 x!427880))))))

(assert (= start!216362 b!2219233))

(declare-fun m!2660095 () Bool)

(assert (=> b!2219233 m!2660095))

(declare-fun m!2660097 () Bool)

(assert (=> start!216362 m!2660097))

(declare-fun m!2660099 () Bool)

(assert (=> start!216362 m!2660099))

(declare-fun m!2660101 () Bool)

(assert (=> start!216362 m!2660101))

(declare-fun m!2660103 () Bool)

(assert (=> start!216362 m!2660103))

(assert (=> start!216362 m!2660101))

(declare-fun m!2660105 () Bool)

(assert (=> start!216362 m!2660105))

(assert (=> start!216362 m!2660099))

(declare-fun res!953047 () Bool)

(declare-fun e!1417226 () Bool)

(assert (=> b!2219222 (=> res!953047 e!1417226)))

(declare-fun x!427881 () BalanceConc!16714)

(declare-fun x!427882 () BalanceConc!16714)

(assert (=> b!2219222 (= res!953047 (not (= (list!10081 x!427881) (list!10081 x!427882))))))

(declare-fun inst!1247 () Bool)

(declare-fun e!1417228 () Bool)

(declare-fun e!1417227 () Bool)

(assert (=> b!2219222 (= inst!1247 (=> (and (inv!35256 x!427881) e!1417228 (inv!35256 x!427882) e!1417227) e!1417226))))

(declare-fun b!2219234 () Bool)

(assert (=> b!2219234 (= e!1417226 (= (toValue!31 thiss!4894 x!427881) (toValue!31 thiss!4894 x!427882)))))

(declare-fun b!2219235 () Bool)

(declare-fun tp!691256 () Bool)

(assert (=> b!2219235 (= e!1417228 (and (inv!35255 (c!354351 x!427881)) tp!691256))))

(declare-fun b!2219236 () Bool)

(declare-fun tp!691257 () Bool)

(assert (=> b!2219236 (= e!1417227 (and (inv!35255 (c!354351 x!427882)) tp!691257))))

(assert (= (and b!2219222 (not res!953047)) b!2219234))

(assert (= b!2219222 b!2219235))

(assert (= b!2219222 b!2219236))

(declare-fun m!2660107 () Bool)

(assert (=> b!2219222 m!2660107))

(declare-fun m!2660109 () Bool)

(assert (=> b!2219222 m!2660109))

(declare-fun m!2660111 () Bool)

(assert (=> b!2219222 m!2660111))

(declare-fun m!2660113 () Bool)

(assert (=> b!2219222 m!2660113))

(declare-fun m!2660115 () Bool)

(assert (=> b!2219234 m!2660115))

(declare-fun m!2660117 () Bool)

(assert (=> b!2219234 m!2660117))

(declare-fun m!2660119 () Bool)

(assert (=> b!2219235 m!2660119))

(declare-fun m!2660121 () Bool)

(assert (=> b!2219236 m!2660121))

(declare-fun bs!452018 () Bool)

(declare-fun neg-inst!1247 () Bool)

(declare-fun s!223871 () Bool)

(assert (= bs!452018 (and neg-inst!1247 s!223871)))

(assert (=> bs!452018 (=> true (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 x!427880)))))

(assert (=> m!2660097 m!2660099))

(assert (=> m!2660097 m!2660101))

(assert (=> m!2660097 m!2660105))

(assert (=> m!2660097 s!223871))

(assert (=> m!2660099 s!223871))

(declare-fun bs!452019 () Bool)

(assert (= bs!452019 (and neg-inst!1247 start!216362)))

(assert (=> bs!452019 (= true inst!1246)))

(declare-fun bs!452020 () Bool)

(declare-fun neg-inst!1246 () Bool)

(declare-fun s!223873 () Bool)

(assert (= bs!452020 (and neg-inst!1246 s!223873)))

(declare-fun res!953048 () Bool)

(declare-fun e!1417229 () Bool)

(assert (=> bs!452020 (=> res!953048 e!1417229)))

(assert (=> bs!452020 (= res!953048 (not (= (list!10081 x!427881) (list!10081 x!427881))))))

(assert (=> bs!452020 (=> true e!1417229)))

(declare-fun b!2219237 () Bool)

(assert (=> b!2219237 (= e!1417229 (= (toValue!31 thiss!4894 x!427881) (toValue!31 thiss!4894 x!427881)))))

(assert (= (and bs!452020 (not res!953048)) b!2219237))

(assert (=> m!2660115 m!2660107))

(assert (=> m!2660115 m!2660107))

(assert (=> m!2660115 s!223873))

(assert (=> m!2660115 s!223873))

(declare-fun bs!452021 () Bool)

(declare-fun s!223875 () Bool)

(assert (= bs!452021 (and neg-inst!1246 s!223875)))

(declare-fun res!953049 () Bool)

(declare-fun e!1417230 () Bool)

(assert (=> bs!452021 (=> res!953049 e!1417230)))

(assert (=> bs!452021 (= res!953049 (not (= (list!10081 x!427882) (list!10081 x!427881))))))

(assert (=> bs!452021 (=> true e!1417230)))

(declare-fun b!2219238 () Bool)

(assert (=> b!2219238 (= e!1417230 (= (toValue!31 thiss!4894 x!427882) (toValue!31 thiss!4894 x!427881)))))

(assert (= (and bs!452021 (not res!953049)) b!2219238))

(declare-fun bs!452022 () Bool)

(assert (= bs!452022 (and m!2660117 m!2660115)))

(assert (=> bs!452022 m!2660109))

(assert (=> bs!452022 m!2660107))

(assert (=> bs!452022 s!223875))

(declare-fun bs!452023 () Bool)

(declare-fun s!223877 () Bool)

(assert (= bs!452023 (and neg-inst!1246 s!223877)))

(declare-fun res!953050 () Bool)

(declare-fun e!1417231 () Bool)

(assert (=> bs!452023 (=> res!953050 e!1417231)))

(assert (=> bs!452023 (= res!953050 (not (= (list!10081 x!427882) (list!10081 x!427882))))))

(assert (=> bs!452023 (=> true e!1417231)))

(declare-fun b!2219239 () Bool)

(assert (=> b!2219239 (= e!1417231 (= (toValue!31 thiss!4894 x!427882) (toValue!31 thiss!4894 x!427882)))))

(assert (= (and bs!452023 (not res!953050)) b!2219239))

(assert (=> m!2660117 m!2660109))

(assert (=> m!2660117 m!2660109))

(assert (=> m!2660117 s!223877))

(declare-fun bs!452024 () Bool)

(declare-fun s!223879 () Bool)

(assert (= bs!452024 (and neg-inst!1246 s!223879)))

(declare-fun res!953051 () Bool)

(declare-fun e!1417232 () Bool)

(assert (=> bs!452024 (=> res!953051 e!1417232)))

(assert (=> bs!452024 (= res!953051 (not (= (list!10081 x!427881) (list!10081 x!427882))))))

(assert (=> bs!452024 (=> true e!1417232)))

(declare-fun b!2219240 () Bool)

(assert (=> b!2219240 (= e!1417232 (= (toValue!31 thiss!4894 x!427881) (toValue!31 thiss!4894 x!427882)))))

(assert (= (and bs!452024 (not res!953051)) b!2219240))

(assert (=> bs!452022 m!2660107))

(assert (=> bs!452022 m!2660109))

(assert (=> bs!452022 s!223879))

(assert (=> m!2660117 s!223877))

(declare-fun bs!452025 () Bool)

(assert (= bs!452025 (and m!2660107 m!2660115)))

(assert (=> bs!452025 s!223873))

(declare-fun bs!452026 () Bool)

(assert (= bs!452026 (and m!2660107 m!2660117)))

(assert (=> bs!452026 s!223879))

(assert (=> m!2660107 s!223873))

(assert (=> bs!452025 s!223873))

(assert (=> bs!452026 s!223875))

(assert (=> m!2660107 s!223873))

(declare-fun bs!452027 () Bool)

(declare-fun s!223881 () Bool)

(assert (= bs!452027 (and neg-inst!1246 s!223881)))

(declare-fun res!953052 () Bool)

(declare-fun e!1417233 () Bool)

(assert (=> bs!452027 (=> res!953052 e!1417233)))

(assert (=> bs!452027 (= res!953052 (not (= (list!10081 x!427880) (list!10081 x!427881))))))

(assert (=> bs!452027 (=> true e!1417233)))

(declare-fun b!2219241 () Bool)

(assert (=> b!2219241 (= e!1417233 (= (toValue!31 thiss!4894 x!427880) (toValue!31 thiss!4894 x!427881)))))

(assert (= (and bs!452027 (not res!953052)) b!2219241))

(declare-fun bs!452028 () Bool)

(assert (= bs!452028 (and m!2660097 m!2660115 m!2660107)))

(assert (=> bs!452028 m!2660097))

(assert (=> bs!452028 m!2660107))

(assert (=> bs!452028 s!223881))

(declare-fun bs!452029 () Bool)

(declare-fun s!223883 () Bool)

(assert (= bs!452029 (and neg-inst!1246 s!223883)))

(declare-fun res!953053 () Bool)

(declare-fun e!1417234 () Bool)

(assert (=> bs!452029 (=> res!953053 e!1417234)))

(assert (=> bs!452029 (= res!953053 (not (= (list!10081 x!427880) (list!10081 x!427882))))))

(assert (=> bs!452029 (=> true e!1417234)))

(declare-fun b!2219242 () Bool)

(assert (=> b!2219242 (= e!1417234 (= (toValue!31 thiss!4894 x!427880) (toValue!31 thiss!4894 x!427882)))))

(assert (= (and bs!452029 (not res!953053)) b!2219242))

(declare-fun bs!452030 () Bool)

(assert (= bs!452030 (and m!2660097 m!2660117)))

(assert (=> bs!452030 m!2660097))

(assert (=> bs!452030 m!2660109))

(assert (=> bs!452030 s!223883))

(declare-fun bs!452031 () Bool)

(declare-fun s!223885 () Bool)

(assert (= bs!452031 (and neg-inst!1246 s!223885)))

(declare-fun res!953054 () Bool)

(declare-fun e!1417235 () Bool)

(assert (=> bs!452031 (=> res!953054 e!1417235)))

(assert (=> bs!452031 (= res!953054 (not (= (list!10081 x!427880) (list!10081 x!427880))))))

(assert (=> bs!452031 (=> true e!1417235)))

(declare-fun b!2219243 () Bool)

(assert (=> b!2219243 (= e!1417235 (= (toValue!31 thiss!4894 x!427880) (toValue!31 thiss!4894 x!427880)))))

(assert (= (and bs!452031 (not res!953054)) b!2219243))

(assert (=> m!2660097 s!223885))

(declare-fun bs!452032 () Bool)

(declare-fun s!223887 () Bool)

(assert (= bs!452032 (and neg-inst!1246 s!223887)))

(declare-fun res!953055 () Bool)

(declare-fun e!1417236 () Bool)

(assert (=> bs!452032 (=> res!953055 e!1417236)))

(assert (=> bs!452032 (= res!953055 (not (= (list!10081 x!427881) (list!10081 x!427880))))))

(assert (=> bs!452032 (=> true e!1417236)))

(declare-fun b!2219244 () Bool)

(assert (=> b!2219244 (= e!1417236 (= (toValue!31 thiss!4894 x!427881) (toValue!31 thiss!4894 x!427880)))))

(assert (= (and bs!452032 (not res!953055)) b!2219244))

(assert (=> bs!452028 m!2660107))

(assert (=> bs!452028 m!2660097))

(assert (=> bs!452028 s!223887))

(declare-fun bs!452033 () Bool)

(declare-fun s!223889 () Bool)

(assert (= bs!452033 (and neg-inst!1246 s!223889)))

(declare-fun res!953056 () Bool)

(declare-fun e!1417237 () Bool)

(assert (=> bs!452033 (=> res!953056 e!1417237)))

(assert (=> bs!452033 (= res!953056 (not (= (list!10081 x!427882) (list!10081 x!427880))))))

(assert (=> bs!452033 (=> true e!1417237)))

(declare-fun b!2219245 () Bool)

(assert (=> b!2219245 (= e!1417237 (= (toValue!31 thiss!4894 x!427882) (toValue!31 thiss!4894 x!427880)))))

(assert (= (and bs!452033 (not res!953056)) b!2219245))

(assert (=> bs!452030 m!2660109))

(assert (=> bs!452030 m!2660097))

(assert (=> bs!452030 s!223889))

(assert (=> m!2660097 s!223885))

(declare-fun bs!452034 () Bool)

(assert (= bs!452034 (and m!2660109 m!2660115 m!2660107)))

(assert (=> bs!452034 s!223875))

(declare-fun bs!452035 () Bool)

(assert (= bs!452035 (and m!2660109 m!2660097)))

(assert (=> bs!452035 s!223889))

(declare-fun bs!452036 () Bool)

(assert (= bs!452036 (and m!2660109 m!2660117)))

(assert (=> bs!452036 s!223877))

(assert (=> m!2660109 s!223877))

(assert (=> bs!452034 s!223879))

(assert (=> bs!452035 s!223883))

(assert (=> bs!452036 s!223877))

(assert (=> m!2660109 s!223877))

(declare-fun bs!452037 () Bool)

(assert (= bs!452037 (and m!2660099 m!2660115 m!2660107)))

(assert (=> bs!452037 s!223881))

(declare-fun bs!452038 () Bool)

(assert (= bs!452038 (and m!2660099 m!2660097)))

(assert (=> bs!452038 s!223885))

(declare-fun bs!452039 () Bool)

(assert (= bs!452039 (and m!2660099 m!2660117 m!2660109)))

(assert (=> bs!452039 s!223883))

(assert (=> m!2660099 s!223885))

(assert (=> bs!452037 s!223887))

(assert (=> bs!452038 s!223885))

(assert (=> bs!452039 s!223889))

(assert (=> m!2660099 s!223885))

(declare-fun bs!452040 () Bool)

(declare-fun s!223891 () Bool)

(assert (= bs!452040 (and neg-inst!1246 s!223891)))

(declare-fun res!953057 () Bool)

(declare-fun e!1417238 () Bool)

(assert (=> bs!452040 (=> res!953057 e!1417238)))

(assert (=> bs!452040 (= res!953057 (not (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 x!427881))))))

(assert (=> bs!452040 (=> true e!1417238)))

(declare-fun b!2219246 () Bool)

(assert (=> b!2219246 (= e!1417238 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (toValue!31 thiss!4894 x!427881)))))

(assert (= (and bs!452040 (not res!953057)) b!2219246))

(declare-fun bs!452041 () Bool)

(assert (= bs!452041 (and m!2660105 m!2660115 m!2660107)))

(assert (=> bs!452041 m!2660105))

(assert (=> bs!452041 m!2660107))

(assert (=> bs!452041 s!223891))

(declare-fun bs!452042 () Bool)

(declare-fun s!223893 () Bool)

(assert (= bs!452042 (and neg-inst!1246 s!223893)))

(declare-fun res!953058 () Bool)

(declare-fun e!1417239 () Bool)

(assert (=> bs!452042 (=> res!953058 e!1417239)))

(assert (=> bs!452042 (= res!953058 (not (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 x!427880))))))

(assert (=> bs!452042 (=> true e!1417239)))

(declare-fun b!2219247 () Bool)

(assert (=> b!2219247 (= e!1417239 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (toValue!31 thiss!4894 x!427880)))))

(assert (= (and bs!452042 (not res!953058)) b!2219247))

(declare-fun bs!452043 () Bool)

(assert (= bs!452043 (and m!2660105 m!2660097 m!2660099)))

(assert (=> bs!452043 m!2660105))

(assert (=> bs!452043 m!2660097))

(assert (=> bs!452043 s!223893))

(declare-fun bs!452044 () Bool)

(declare-fun s!223895 () Bool)

(assert (= bs!452044 (and neg-inst!1246 s!223895)))

(declare-fun res!953059 () Bool)

(declare-fun e!1417240 () Bool)

(assert (=> bs!452044 (=> res!953059 e!1417240)))

(assert (=> bs!452044 (= res!953059 (not (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 x!427882))))))

(assert (=> bs!452044 (=> true e!1417240)))

(declare-fun b!2219248 () Bool)

(assert (=> b!2219248 (= e!1417240 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (toValue!31 thiss!4894 x!427882)))))

(assert (= (and bs!452044 (not res!953059)) b!2219248))

(declare-fun bs!452045 () Bool)

(assert (= bs!452045 (and m!2660105 m!2660117 m!2660109)))

(assert (=> bs!452045 m!2660105))

(assert (=> bs!452045 m!2660109))

(assert (=> bs!452045 s!223895))

(declare-fun bs!452046 () Bool)

(declare-fun s!223897 () Bool)

(assert (= bs!452046 (and neg-inst!1246 s!223897)))

(declare-fun res!953060 () Bool)

(declare-fun e!1417241 () Bool)

(assert (=> bs!452046 (=> res!953060 e!1417241)))

(assert (=> bs!452046 (= res!953060 (not (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))))))))

(assert (=> bs!452046 (=> true e!1417241)))

(declare-fun b!2219249 () Bool)

(assert (=> b!2219249 (= e!1417241 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)))))))

(assert (= (and bs!452046 (not res!953060)) b!2219249))

(assert (=> m!2660105 s!223897))

(declare-fun bs!452047 () Bool)

(declare-fun s!223899 () Bool)

(assert (= bs!452047 (and neg-inst!1246 s!223899)))

(declare-fun res!953061 () Bool)

(declare-fun e!1417242 () Bool)

(assert (=> bs!452047 (=> res!953061 e!1417242)))

(assert (=> bs!452047 (= res!953061 (not (= (list!10081 x!427881) (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))))))))

(assert (=> bs!452047 (=> true e!1417242)))

(declare-fun b!2219250 () Bool)

(assert (=> b!2219250 (= e!1417242 (= (toValue!31 thiss!4894 x!427881) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)))))))

(assert (= (and bs!452047 (not res!953061)) b!2219250))

(assert (=> bs!452041 m!2660107))

(assert (=> bs!452041 m!2660105))

(assert (=> bs!452041 s!223899))

(declare-fun bs!452048 () Bool)

(declare-fun s!223901 () Bool)

(assert (= bs!452048 (and neg-inst!1246 s!223901)))

(declare-fun res!953062 () Bool)

(declare-fun e!1417243 () Bool)

(assert (=> bs!452048 (=> res!953062 e!1417243)))

(assert (=> bs!452048 (= res!953062 (not (= (list!10081 x!427880) (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))))))))

(assert (=> bs!452048 (=> true e!1417243)))

(declare-fun b!2219251 () Bool)

(assert (=> b!2219251 (= e!1417243 (= (toValue!31 thiss!4894 x!427880) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)))))))

(assert (= (and bs!452048 (not res!953062)) b!2219251))

(assert (=> bs!452043 m!2660097))

(assert (=> bs!452043 m!2660105))

(assert (=> bs!452043 s!223901))

(declare-fun bs!452049 () Bool)

(declare-fun s!223903 () Bool)

(assert (= bs!452049 (and neg-inst!1246 s!223903)))

(declare-fun res!953063 () Bool)

(declare-fun e!1417244 () Bool)

(assert (=> bs!452049 (=> res!953063 e!1417244)))

(assert (=> bs!452049 (= res!953063 (not (= (list!10081 x!427882) (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))))))))

(assert (=> bs!452049 (=> true e!1417244)))

(declare-fun b!2219252 () Bool)

(assert (=> b!2219252 (= e!1417244 (= (toValue!31 thiss!4894 x!427882) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)))))))

(assert (= (and bs!452049 (not res!953063)) b!2219252))

(assert (=> bs!452045 m!2660109))

(assert (=> bs!452045 m!2660105))

(assert (=> bs!452045 s!223903))

(assert (=> m!2660105 s!223897))

(declare-fun bs!452050 () Bool)

(assert (= bs!452050 (and neg-inst!1246 b!2219222)))

(assert (=> bs!452050 (= true inst!1247)))

(declare-fun e!1417224 () Bool)

(declare-fun e!1417222 () Bool)

(assert (=> b!2219221 (= e!1417224 e!1417222)))

(declare-fun res!953043 () Bool)

(assert (=> b!2219221 (=> res!953043 e!1417222)))

(declare-fun lambda!83718 () Int)

(declare-fun lambda!83719 () Int)

(declare-fun semiInverseModEq!1681 (Int Int) Bool)

(assert (=> b!2219221 (= res!953043 (not (semiInverseModEq!1681 lambda!83718 lambda!83719)))))

(declare-fun lambda!83717 () Int)

(declare-fun Forall!1048 (Int) Bool)

(assert (=> b!2219221 (= (semiInverseModEq!1681 lambda!83718 lambda!83719) (Forall!1048 lambda!83717))))

(declare-fun e!1417223 () Bool)

(assert (=> b!2219222 (= e!1417222 e!1417223)))

(declare-fun res!953045 () Bool)

(assert (=> b!2219222 (=> res!953045 e!1417223)))

(declare-fun lambda!83720 () Int)

(declare-fun Forall2!669 (Int) Bool)

(assert (=> b!2219222 (= res!953045 (not (Forall2!669 lambda!83720)))))

(assert (=> b!2219222 (= (Forall2!669 lambda!83720) inst!1247)))

(declare-fun b!2219223 () Bool)

(declare-fun e!1417221 () Bool)

(assert (=> b!2219223 (= e!1417223 e!1417221)))

(declare-fun res!953044 () Bool)

(assert (=> b!2219223 (=> res!953044 e!1417221)))

(declare-fun equivClasses!1604 (Int Int) Bool)

(assert (=> b!2219223 (= res!953044 (not (equivClasses!1604 lambda!83718 lambda!83719)))))

(assert (=> b!2219223 (= (equivClasses!1604 lambda!83718 lambda!83719) (Forall2!669 lambda!83720))))

(declare-fun b!2219224 () Bool)

(declare-datatypes ((TokenValueInjection!8232 0))(
  ( (TokenValueInjection!8233 (toValue!5904 Int) (toChars!5763 Int)) )
))
(declare-fun inv!35257 (TokenValueInjection!8232) Bool)

(assert (=> b!2219224 (= e!1417221 (inv!35257 (TokenValueInjection!8233 lambda!83719 lambda!83718)))))

(declare-fun res!953046 () Bool)

(assert (=> start!216362 (=> res!953046 e!1417224)))

(assert (=> start!216362 (= res!953046 (not (Forall!1048 lambda!83717)))))

(assert (=> start!216362 (= (Forall!1048 lambda!83717) inst!1246)))

(assert (=> start!216362 (not e!1417224)))

(assert (=> start!216362 true))

(assert (= neg-inst!1247 inst!1246))

(assert (= (and start!216362 (not res!953046)) b!2219221))

(assert (= (and b!2219221 (not res!953043)) b!2219222))

(assert (= neg-inst!1246 inst!1247))

(assert (= (and b!2219222 (not res!953045)) b!2219223))

(assert (= (and b!2219223 (not res!953044)) b!2219224))

(declare-fun m!2660123 () Bool)

(assert (=> b!2219221 m!2660123))

(assert (=> b!2219221 m!2660123))

(declare-fun m!2660125 () Bool)

(assert (=> b!2219221 m!2660125))

(declare-fun m!2660127 () Bool)

(assert (=> b!2219223 m!2660127))

(assert (=> b!2219223 m!2660127))

(declare-fun m!2660129 () Bool)

(assert (=> b!2219223 m!2660129))

(assert (=> b!2219222 m!2660129))

(assert (=> b!2219222 m!2660129))

(declare-fun m!2660131 () Bool)

(assert (=> b!2219224 m!2660131))

(assert (=> start!216362 m!2660125))

(assert (=> start!216362 m!2660125))

(push 1)

(assert (not bs!452049))

(assert (not bs!452027))

(assert (not b!2219252))

(assert (not b!2219246))

(assert (not bs!452040))

(assert (not b!2219224))

(assert (not b!2219243))

(assert (not b!2219244))

(assert (not b!2219238))

(assert (not b!2219249))

(assert (not b!2219239))

(assert (not bs!452042))

(assert (not b!2219248))

(assert (not b!2219223))

(assert (not bs!452029))

(assert (not b!2219234))

(assert (not bs!452047))

(assert (not bs!452031))

(assert (not bs!452032))

(assert (not b!2219235))

(assert (not b!2219237))

(assert (not start!216362))

(assert (not b!2219242))

(assert (not bs!452023))

(assert (not b!2219251))

(assert (not b!2219236))

(assert (not b!2219245))

(assert (not bs!452020))

(assert (not b!2219241))

(assert (not bs!452046))

(assert (not bs!452044))

(assert (not bs!452048))

(assert (not bs!452033))

(assert (not bs!452018))

(assert (not b!2219247))

(assert (not bs!452024))

(assert (not b!2219240))

(assert (not b!2219222))

(assert (not b!2219221))

(assert (not b!2219233))

(assert (not b!2219250))

(assert (not bs!452021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!452088 () Bool)

(assert (= bs!452088 (and m!2660115 b!2219237)))

(assert (=> bs!452088 m!2660115))

(assert (=> bs!452088 m!2660115))

(declare-fun bs!452089 () Bool)

(assert (= bs!452089 (and m!2660117 m!2660115 b!2219238)))

(assert (=> bs!452089 m!2660117))

(assert (=> bs!452089 m!2660115))

(declare-fun bs!452090 () Bool)

(assert (= bs!452090 (and m!2660117 b!2219239)))

(assert (=> bs!452090 m!2660117))

(assert (=> bs!452090 m!2660117))

(declare-fun bs!452091 () Bool)

(assert (= bs!452091 (and m!2660117 m!2660115 b!2219240)))

(assert (=> bs!452091 m!2660115))

(assert (=> bs!452091 m!2660117))

(declare-fun bs!452092 () Bool)

(assert (= bs!452092 (and m!2660097 m!2660115 m!2660107 b!2219241)))

(assert (=> bs!452092 m!2660099))

(assert (=> bs!452092 m!2660115))

(declare-fun bs!452093 () Bool)

(assert (= bs!452093 (and m!2660097 m!2660117 b!2219242)))

(assert (=> bs!452093 m!2660099))

(assert (=> bs!452093 m!2660117))

(declare-fun bs!452094 () Bool)

(assert (= bs!452094 (and m!2660097 b!2219243)))

(assert (=> bs!452094 m!2660099))

(assert (=> bs!452094 m!2660099))

(declare-fun bs!452095 () Bool)

(assert (= bs!452095 (and m!2660097 m!2660115 m!2660107 b!2219244)))

(assert (=> bs!452095 m!2660115))

(assert (=> bs!452095 m!2660099))

(declare-fun bs!452096 () Bool)

(assert (= bs!452096 (and m!2660097 m!2660117 b!2219245)))

(assert (=> bs!452096 m!2660117))

(assert (=> bs!452096 m!2660099))

(declare-fun bs!452097 () Bool)

(assert (= bs!452097 (and m!2660105 m!2660115 m!2660107 b!2219246)))

(declare-fun m!2660171 () Bool)

(assert (=> bs!452097 m!2660171))

(assert (=> bs!452097 m!2660115))

(declare-fun bs!452098 () Bool)

(assert (= bs!452098 (and m!2660105 m!2660097 m!2660099 b!2219247)))

(assert (=> bs!452098 m!2660171))

(assert (=> bs!452098 m!2660099))

(declare-fun bs!452099 () Bool)

(assert (= bs!452099 (and m!2660105 m!2660117 m!2660109 b!2219248)))

(assert (=> bs!452099 m!2660171))

(assert (=> bs!452099 m!2660117))

(declare-fun bs!452100 () Bool)

(assert (= bs!452100 (and m!2660105 b!2219249)))

(assert (=> bs!452100 m!2660171))

(assert (=> bs!452100 m!2660171))

(declare-fun bs!452101 () Bool)

(assert (= bs!452101 (and m!2660105 m!2660115 m!2660107 b!2219250)))

(assert (=> bs!452101 m!2660115))

(assert (=> bs!452101 m!2660171))

(declare-fun bs!452102 () Bool)

(assert (= bs!452102 (and m!2660105 m!2660097 m!2660099 b!2219251)))

(assert (=> bs!452102 m!2660099))

(assert (=> bs!452102 m!2660171))

(declare-fun bs!452103 () Bool)

(assert (= bs!452103 (and m!2660105 m!2660117 m!2660109 b!2219252)))

(assert (=> bs!452103 m!2660117))

(assert (=> bs!452103 m!2660171))

(push 1)

(assert (not bs!452049))

(assert (not bs!452027))

(assert (not b!2219252))

(assert (not b!2219246))

(assert (not bs!452040))

(assert (not b!2219224))

(assert (not b!2219243))

(assert (not b!2219244))

(assert (not b!2219238))

(assert (not b!2219249))

(assert (not b!2219239))

(assert (not bs!452042))

(assert (not b!2219248))

(assert (not b!2219223))

(assert (not bs!452029))

(assert (not b!2219234))

(assert (not bs!452047))

(assert (not bs!452031))

(assert (not bs!452032))

(assert (not b!2219235))

(assert (not b!2219237))

(assert (not start!216362))

(assert (not b!2219242))

(assert (not bs!452023))

(assert (not b!2219251))

(assert (not b!2219236))

(assert (not b!2219245))

(assert (not bs!452020))

(assert (not b!2219241))

(assert (not bs!452046))

(assert (not bs!452044))

(assert (not bs!452048))

(assert (not bs!452033))

(assert (not bs!452018))

(assert (not b!2219247))

(assert (not bs!452024))

(assert (not b!2219240))

(assert (not b!2219222))

(assert (not b!2219221))

(assert (not b!2219233))

(assert (not b!2219250))

(assert (not bs!452021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663390 () Bool)

(declare-fun list!10083 (Conc!8498) List!26079)

(assert (=> d!663390 (= (list!10081 x!427882) (list!10083 (c!354351 x!427882)))))

(declare-fun bs!452120 () Bool)

(assert (= bs!452120 d!663390))

(declare-fun m!2660175 () Bool)

(assert (=> bs!452120 m!2660175))

(assert (=> bs!452033 d!663390))

(declare-fun d!663392 () Bool)

(assert (=> d!663392 (= (list!10081 x!427880) (list!10083 (c!354351 x!427880)))))

(declare-fun bs!452121 () Bool)

(assert (= bs!452121 d!663392))

(declare-fun m!2660177 () Bool)

(assert (=> bs!452121 m!2660177))

(assert (=> bs!452033 d!663392))

(declare-fun d!663394 () Bool)

(declare-fun lt!827187 () List!26079)

(declare-fun efficientList!277 (BalanceConc!16714) List!26079)

(assert (=> d!663394 (= lt!827187 (efficientList!277 x!427881))))

(declare-fun charsToBigInt!1 (List!26079) Int)

(assert (=> d!663394 (= (toValue!31 thiss!4894 x!427881) (IntegerValue!12997 (charsToBigInt!1 lt!827187) lt!827187))))

(declare-fun bs!452122 () Bool)

(assert (= bs!452122 d!663394))

(declare-fun m!2660179 () Bool)

(assert (=> bs!452122 m!2660179))

(declare-fun m!2660181 () Bool)

(assert (=> bs!452122 m!2660181))

(assert (=> b!2219250 d!663394))

(declare-fun d!663396 () Bool)

(declare-fun lt!827188 () List!26079)

(assert (=> d!663396 (= lt!827188 (efficientList!277 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))))))

(assert (=> d!663396 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (IntegerValue!12997 (charsToBigInt!1 lt!827188) lt!827188))))

(declare-fun bs!452123 () Bool)

(assert (= bs!452123 d!663396))

(assert (=> bs!452123 m!2660101))

(declare-fun m!2660183 () Bool)

(assert (=> bs!452123 m!2660183))

(declare-fun m!2660185 () Bool)

(assert (=> bs!452123 m!2660185))

(assert (=> b!2219250 d!663396))

(assert (=> b!2219247 d!663396))

(declare-fun d!663398 () Bool)

(declare-fun lt!827189 () List!26079)

(assert (=> d!663398 (= lt!827189 (efficientList!277 x!427880))))

(assert (=> d!663398 (= (toValue!31 thiss!4894 x!427880) (IntegerValue!12997 (charsToBigInt!1 lt!827189) lt!827189))))

(declare-fun bs!452124 () Bool)

(assert (= bs!452124 d!663398))

(declare-fun m!2660187 () Bool)

(assert (=> bs!452124 m!2660187))

(declare-fun m!2660189 () Bool)

(assert (=> bs!452124 m!2660189))

(assert (=> b!2219247 d!663398))

(declare-fun d!663400 () Bool)

(declare-fun lt!827190 () List!26079)

(assert (=> d!663400 (= lt!827190 (efficientList!277 x!427882))))

(assert (=> d!663400 (= (toValue!31 thiss!4894 x!427882) (IntegerValue!12997 (charsToBigInt!1 lt!827190) lt!827190))))

(declare-fun bs!452125 () Bool)

(assert (= bs!452125 d!663400))

(declare-fun m!2660191 () Bool)

(assert (=> bs!452125 m!2660191))

(declare-fun m!2660193 () Bool)

(assert (=> bs!452125 m!2660193))

(assert (=> b!2219238 d!663400))

(assert (=> b!2219238 d!663394))

(assert (=> bs!452023 d!663390))

(assert (=> bs!452048 d!663392))

(declare-fun d!663402 () Bool)

(assert (=> d!663402 (= (list!10081 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880))) (list!10083 (c!354351 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)))))))

(declare-fun bs!452126 () Bool)

(assert (= bs!452126 d!663402))

(declare-fun m!2660195 () Bool)

(assert (=> bs!452126 m!2660195))

(assert (=> bs!452048 d!663402))

(assert (=> b!2219245 d!663400))

(assert (=> b!2219245 d!663398))

(assert (=> bs!452029 d!663392))

(assert (=> bs!452029 d!663390))

(assert (=> bs!452027 d!663392))

(declare-fun d!663404 () Bool)

(assert (=> d!663404 (= (list!10081 x!427881) (list!10083 (c!354351 x!427881)))))

(declare-fun bs!452127 () Bool)

(assert (= bs!452127 d!663404))

(declare-fun m!2660197 () Bool)

(assert (=> bs!452127 m!2660197))

(assert (=> bs!452027 d!663404))

(assert (=> bs!452021 d!663390))

(assert (=> bs!452021 d!663404))

(assert (=> b!2219249 d!663396))

(assert (=> b!2219246 d!663396))

(assert (=> b!2219246 d!663394))

(assert (=> bs!452032 d!663404))

(assert (=> bs!452032 d!663392))

(assert (=> start!216362 d!663398))

(assert (=> start!216362 d!663402))

(declare-fun d!663406 () Bool)

(declare-fun choose!13078 (Int) Bool)

(assert (=> d!663406 (= (Forall!1048 lambda!83717) (choose!13078 lambda!83717))))

(declare-fun bs!452128 () Bool)

(assert (= bs!452128 d!663406))

(declare-fun m!2660199 () Bool)

(assert (=> bs!452128 m!2660199))

(assert (=> start!216362 d!663406))

(declare-fun d!663408 () Bool)

(declare-fun isBalanced!2631 (Conc!8498) Bool)

(assert (=> d!663408 (= (inv!35256 x!427880) (isBalanced!2631 (c!354351 x!427880)))))

(declare-fun bs!452129 () Bool)

(assert (= bs!452129 d!663408))

(declare-fun m!2660201 () Bool)

(assert (=> bs!452129 m!2660201))

(assert (=> start!216362 d!663408))

(assert (=> start!216362 d!663392))

(declare-fun d!663410 () Bool)

(declare-fun c!354356 () Bool)

(assert (=> d!663410 (= c!354356 (is-IntegerValue!12997 (toValue!31 thiss!4894 x!427880)))))

(declare-fun e!1417295 () BalanceConc!16714)

(assert (=> d!663410 (= (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427880)) e!1417295)))

(declare-fun b!2219313 () Bool)

(declare-fun seqFromList!2885 (List!26079) BalanceConc!16714)

(assert (=> b!2219313 (= e!1417295 (seqFromList!2885 (text!30772 (toValue!31 thiss!4894 x!427880))))))

(declare-fun b!2219314 () Bool)

(assert (=> b!2219314 (= e!1417295 (BalanceConc!16715 Empty!8498))))

(assert (= (and d!663410 c!354356) b!2219313))

(assert (= (and d!663410 (not c!354356)) b!2219314))

(declare-fun m!2660203 () Bool)

(assert (=> b!2219313 m!2660203))

(assert (=> start!216362 d!663410))

(assert (=> bs!452042 d!663402))

(assert (=> bs!452042 d!663392))

(assert (=> bs!452047 d!663404))

(assert (=> bs!452047 d!663402))

(assert (=> b!2219241 d!663398))

(assert (=> b!2219241 d!663394))

(assert (=> b!2219244 d!663394))

(assert (=> b!2219244 d!663398))

(assert (=> bs!452020 d!663404))

(declare-fun bs!452130 () Bool)

(declare-fun d!663412 () Bool)

(assert (= bs!452130 (and d!663412 b!2219222)))

(declare-fun lambda!83759 () Int)

(assert (=> bs!452130 (not (= lambda!83759 lambda!83720))))

(assert (=> d!663412 true))

(declare-fun order!14843 () Int)

(declare-fun order!14841 () Int)

(declare-fun dynLambda!11495 (Int Int) Int)

(declare-fun dynLambda!11496 (Int Int) Int)

(assert (=> d!663412 (< (dynLambda!11495 order!14841 lambda!83719) (dynLambda!11496 order!14843 lambda!83759))))

(assert (=> d!663412 (= (equivClasses!1604 lambda!83718 lambda!83719) (Forall2!669 lambda!83759))))

(declare-fun bs!452131 () Bool)

(assert (= bs!452131 d!663412))

(declare-fun m!2660205 () Bool)

(assert (=> bs!452131 m!2660205))

(assert (=> b!2219223 d!663412))

(declare-fun d!663414 () Bool)

(declare-fun choose!13079 (Int) Bool)

(assert (=> d!663414 (= (Forall2!669 lambda!83720) (choose!13079 lambda!83720))))

(declare-fun bs!452132 () Bool)

(assert (= bs!452132 d!663414))

(declare-fun m!2660207 () Bool)

(assert (=> bs!452132 m!2660207))

(assert (=> b!2219223 d!663414))

(assert (=> b!2219240 d!663394))

(assert (=> b!2219240 d!663400))

(declare-fun d!663416 () Bool)

(declare-fun c!354359 () Bool)

(assert (=> d!663416 (= c!354359 (is-Node!8498 (c!354351 x!427882)))))

(declare-fun e!1417302 () Bool)

(assert (=> d!663416 (= (inv!35255 (c!354351 x!427882)) e!1417302)))

(declare-fun b!2219325 () Bool)

(declare-fun inv!35261 (Conc!8498) Bool)

(assert (=> b!2219325 (= e!1417302 (inv!35261 (c!354351 x!427882)))))

(declare-fun b!2219326 () Bool)

(declare-fun e!1417303 () Bool)

(assert (=> b!2219326 (= e!1417302 e!1417303)))

(declare-fun res!953115 () Bool)

(assert (=> b!2219326 (= res!953115 (not (is-Leaf!12462 (c!354351 x!427882))))))

(assert (=> b!2219326 (=> res!953115 e!1417303)))

(declare-fun b!2219327 () Bool)

(declare-fun inv!35262 (Conc!8498) Bool)

(assert (=> b!2219327 (= e!1417303 (inv!35262 (c!354351 x!427882)))))

(assert (= (and d!663416 c!354359) b!2219325))

(assert (= (and d!663416 (not c!354359)) b!2219326))

(assert (= (and b!2219326 (not res!953115)) b!2219327))

(declare-fun m!2660209 () Bool)

(assert (=> b!2219325 m!2660209))

(declare-fun m!2660211 () Bool)

(assert (=> b!2219327 m!2660211))

(assert (=> b!2219236 d!663416))

(assert (=> bs!452031 d!663392))

(declare-fun bs!452133 () Bool)

(declare-fun d!663418 () Bool)

(assert (= bs!452133 (and d!663418 start!216362)))

(declare-fun lambda!83762 () Int)

(assert (=> bs!452133 (not (= lambda!83762 lambda!83717))))

(assert (=> d!663418 true))

(declare-fun order!14847 () Int)

(declare-fun order!14845 () Int)

(declare-fun dynLambda!11497 (Int Int) Int)

(declare-fun dynLambda!11498 (Int Int) Int)

(assert (=> d!663418 (< (dynLambda!11497 order!14845 lambda!83718) (dynLambda!11498 order!14847 lambda!83762))))

(assert (=> d!663418 true))

(assert (=> d!663418 (< (dynLambda!11495 order!14841 lambda!83719) (dynLambda!11498 order!14847 lambda!83762))))

(assert (=> d!663418 (= (semiInverseModEq!1681 lambda!83718 lambda!83719) (Forall!1048 lambda!83762))))

(declare-fun bs!452134 () Bool)

(assert (= bs!452134 d!663418))

(declare-fun m!2660213 () Bool)

(assert (=> bs!452134 m!2660213))

(assert (=> b!2219221 d!663418))

(assert (=> b!2219221 d!663406))

(assert (=> bs!452046 d!663402))

(assert (=> b!2219252 d!663400))

(assert (=> b!2219252 d!663396))

(assert (=> b!2219222 d!663414))

(assert (=> b!2219222 d!663404))

(declare-fun d!663420 () Bool)

(assert (=> d!663420 (= (inv!35256 x!427882) (isBalanced!2631 (c!354351 x!427882)))))

(declare-fun bs!452135 () Bool)

(assert (= bs!452135 d!663420))

(declare-fun m!2660215 () Bool)

(assert (=> bs!452135 m!2660215))

(assert (=> b!2219222 d!663420))

(assert (=> b!2219222 d!663390))

(declare-fun d!663422 () Bool)

(assert (=> d!663422 (= (inv!35256 x!427881) (isBalanced!2631 (c!354351 x!427881)))))

(declare-fun bs!452136 () Bool)

(assert (= bs!452136 d!663422))

(declare-fun m!2660217 () Bool)

(assert (=> bs!452136 m!2660217))

(assert (=> b!2219222 d!663422))

(assert (=> b!2219237 d!663394))

(assert (=> bs!452040 d!663402))

(assert (=> bs!452040 d!663404))

(assert (=> b!2219243 d!663398))

(declare-fun d!663424 () Bool)

(declare-fun res!953118 () Bool)

(declare-fun e!1417306 () Bool)

(assert (=> d!663424 (=> (not res!953118) (not e!1417306))))

(assert (=> d!663424 (= res!953118 (semiInverseModEq!1681 (toChars!5763 (TokenValueInjection!8233 lambda!83719 lambda!83718)) (toValue!5904 (TokenValueInjection!8233 lambda!83719 lambda!83718))))))

(assert (=> d!663424 (= (inv!35257 (TokenValueInjection!8233 lambda!83719 lambda!83718)) e!1417306)))

(declare-fun b!2219334 () Bool)

(assert (=> b!2219334 (= e!1417306 (equivClasses!1604 (toChars!5763 (TokenValueInjection!8233 lambda!83719 lambda!83718)) (toValue!5904 (TokenValueInjection!8233 lambda!83719 lambda!83718))))))

(assert (= (and d!663424 res!953118) b!2219334))

(declare-fun m!2660219 () Bool)

(assert (=> d!663424 m!2660219))

(declare-fun m!2660221 () Bool)

(assert (=> b!2219334 m!2660221))

(assert (=> b!2219224 d!663424))

(assert (=> b!2219242 d!663398))

(assert (=> b!2219242 d!663400))

(assert (=> b!2219239 d!663400))

(assert (=> bs!452044 d!663402))

(assert (=> bs!452044 d!663390))

(assert (=> b!2219251 d!663398))

(assert (=> b!2219251 d!663396))

(assert (=> b!2219248 d!663396))

(assert (=> b!2219248 d!663400))

(declare-fun d!663426 () Bool)

(declare-fun c!354360 () Bool)

(assert (=> d!663426 (= c!354360 (is-Node!8498 (c!354351 x!427881)))))

(declare-fun e!1417307 () Bool)

(assert (=> d!663426 (= (inv!35255 (c!354351 x!427881)) e!1417307)))

(declare-fun b!2219335 () Bool)

(assert (=> b!2219335 (= e!1417307 (inv!35261 (c!354351 x!427881)))))

(declare-fun b!2219336 () Bool)

(declare-fun e!1417308 () Bool)

(assert (=> b!2219336 (= e!1417307 e!1417308)))

(declare-fun res!953119 () Bool)

(assert (=> b!2219336 (= res!953119 (not (is-Leaf!12462 (c!354351 x!427881))))))

(assert (=> b!2219336 (=> res!953119 e!1417308)))

(declare-fun b!2219337 () Bool)

(assert (=> b!2219337 (= e!1417308 (inv!35262 (c!354351 x!427881)))))

(assert (= (and d!663426 c!354360) b!2219335))

(assert (= (and d!663426 (not c!354360)) b!2219336))

(assert (= (and b!2219336 (not res!953119)) b!2219337))

(declare-fun m!2660223 () Bool)

(assert (=> b!2219335 m!2660223))

(declare-fun m!2660225 () Bool)

(assert (=> b!2219337 m!2660225))

(assert (=> b!2219235 d!663426))

(assert (=> bs!452024 d!663404))

(assert (=> bs!452024 d!663390))

(declare-fun d!663428 () Bool)

(declare-fun c!354361 () Bool)

(assert (=> d!663428 (= c!354361 (is-Node!8498 (c!354351 x!427880)))))

(declare-fun e!1417309 () Bool)

(assert (=> d!663428 (= (inv!35255 (c!354351 x!427880)) e!1417309)))

(declare-fun b!2219338 () Bool)

(assert (=> b!2219338 (= e!1417309 (inv!35261 (c!354351 x!427880)))))

(declare-fun b!2219339 () Bool)

(declare-fun e!1417310 () Bool)

(assert (=> b!2219339 (= e!1417309 e!1417310)))

(declare-fun res!953120 () Bool)

(assert (=> b!2219339 (= res!953120 (not (is-Leaf!12462 (c!354351 x!427880))))))

(assert (=> b!2219339 (=> res!953120 e!1417310)))

(declare-fun b!2219340 () Bool)

(assert (=> b!2219340 (= e!1417310 (inv!35262 (c!354351 x!427880)))))

(assert (= (and d!663428 c!354361) b!2219338))

(assert (= (and d!663428 (not c!354361)) b!2219339))

(assert (= (and b!2219339 (not res!953120)) b!2219340))

(declare-fun m!2660227 () Bool)

(assert (=> b!2219338 m!2660227))

(declare-fun m!2660229 () Bool)

(assert (=> b!2219340 m!2660229))

(assert (=> b!2219233 d!663428))

(assert (=> bs!452018 d!663402))

(assert (=> bs!452018 d!663410))

(assert (=> bs!452018 d!663398))

(assert (=> bs!452018 d!663392))

(assert (=> b!2219234 d!663394))

(assert (=> b!2219234 d!663400))

(assert (=> bs!452049 d!663390))

(assert (=> bs!452049 d!663402))

(declare-fun tp!691271 () Bool)

(declare-fun e!1417315 () Bool)

(declare-fun b!2219347 () Bool)

(declare-fun tp!691272 () Bool)

(assert (=> b!2219347 (= e!1417315 (and (inv!35255 (left!19987 (c!354351 x!427882))) tp!691271 (inv!35255 (right!20317 (c!354351 x!427882))) tp!691272))))

(declare-fun b!2219348 () Bool)

(declare-fun inv!35263 (IArray!17001) Bool)

(assert (=> b!2219348 (= e!1417315 (inv!35263 (xs!11440 (c!354351 x!427882))))))

(assert (=> b!2219236 (= tp!691257 (and (inv!35255 (c!354351 x!427882)) e!1417315))))

(assert (= (and b!2219236 (is-Node!8498 (c!354351 x!427882))) b!2219347))

(assert (= (and b!2219236 (is-Leaf!12462 (c!354351 x!427882))) b!2219348))

(declare-fun m!2660231 () Bool)

(assert (=> b!2219347 m!2660231))

(declare-fun m!2660233 () Bool)

(assert (=> b!2219347 m!2660233))

(declare-fun m!2660235 () Bool)

(assert (=> b!2219348 m!2660235))

(assert (=> b!2219236 m!2660121))

(declare-fun tp!691274 () Bool)

(declare-fun e!1417317 () Bool)

(declare-fun tp!691273 () Bool)

(declare-fun b!2219349 () Bool)

(assert (=> b!2219349 (= e!1417317 (and (inv!35255 (left!19987 (c!354351 x!427881))) tp!691273 (inv!35255 (right!20317 (c!354351 x!427881))) tp!691274))))

(declare-fun b!2219350 () Bool)

(assert (=> b!2219350 (= e!1417317 (inv!35263 (xs!11440 (c!354351 x!427881))))))

(assert (=> b!2219235 (= tp!691256 (and (inv!35255 (c!354351 x!427881)) e!1417317))))

(assert (= (and b!2219235 (is-Node!8498 (c!354351 x!427881))) b!2219349))

(assert (= (and b!2219235 (is-Leaf!12462 (c!354351 x!427881))) b!2219350))

(declare-fun m!2660237 () Bool)

(assert (=> b!2219349 m!2660237))

(declare-fun m!2660239 () Bool)

(assert (=> b!2219349 m!2660239))

(declare-fun m!2660241 () Bool)

(assert (=> b!2219350 m!2660241))

(assert (=> b!2219235 m!2660119))

(declare-fun b!2219351 () Bool)

(declare-fun tp!691276 () Bool)

(declare-fun tp!691275 () Bool)

(declare-fun e!1417319 () Bool)

(assert (=> b!2219351 (= e!1417319 (and (inv!35255 (left!19987 (c!354351 x!427880))) tp!691275 (inv!35255 (right!20317 (c!354351 x!427880))) tp!691276))))

(declare-fun b!2219352 () Bool)

(assert (=> b!2219352 (= e!1417319 (inv!35263 (xs!11440 (c!354351 x!427880))))))

(assert (=> b!2219233 (= tp!691255 (and (inv!35255 (c!354351 x!427880)) e!1417319))))

(assert (= (and b!2219233 (is-Node!8498 (c!354351 x!427880))) b!2219351))

(assert (= (and b!2219233 (is-Leaf!12462 (c!354351 x!427880))) b!2219352))

(declare-fun m!2660243 () Bool)

(assert (=> b!2219351 m!2660243))

(declare-fun m!2660245 () Bool)

(assert (=> b!2219351 m!2660245))

(declare-fun m!2660247 () Bool)

(assert (=> b!2219352 m!2660247))

(assert (=> b!2219233 m!2660095))

(push 1)

(assert (not d!663408))

(assert (not d!663398))

(assert (not d!663406))

(assert (not b!2219337))

(assert (not d!663422))

(assert (not b!2219348))

(assert (not b!2219325))

(assert (not d!663420))

(assert (not b!2219235))

(assert (not b!2219334))

(assert (not b!2219352))

(assert (not d!663418))

(assert (not d!663390))

(assert (not b!2219351))

(assert (not b!2219313))

(assert (not d!663404))

(assert (not d!663394))

(assert (not b!2219335))

(assert (not b!2219347))

(assert (not b!2219338))

(assert (not d!663424))

(assert (not d!663400))

(assert (not d!663402))

(assert (not d!663412))

(assert (not b!2219236))

(assert (not b!2219340))

(assert (not d!663392))

(assert (not b!2219349))

(assert (not b!2219350))

(assert (not b!2219233))

(assert (not d!663396))

(assert (not d!663414))

(assert (not b!2219327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

