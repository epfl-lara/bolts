; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94200 () Bool)

(assert start!94200)

(declare-fun bs!259197 () Bool)

(declare-fun b!1098151 () Bool)

(assert (= bs!259197 (and b!1098151 start!94200)))

(declare-fun lambda!43080 () Int)

(declare-fun lambda!43079 () Int)

(assert (=> bs!259197 (not (= lambda!43080 lambda!43079))))

(declare-fun b!1098159 () Bool)

(declare-fun e!695335 () Bool)

(assert (=> b!1098159 (= e!695335 true)))

(declare-fun b!1098158 () Bool)

(declare-fun e!695334 () Bool)

(assert (=> b!1098158 (= e!695334 e!695335)))

(assert (=> b!1098151 e!695334))

(assert (= b!1098158 b!1098159))

(assert (= b!1098151 b!1098158))

(declare-fun lambda!43081 () Int)

(assert (=> bs!259197 (not (= lambda!43081 lambda!43079))))

(assert (=> b!1098151 (not (= lambda!43081 lambda!43080))))

(declare-fun b!1098161 () Bool)

(declare-fun e!695337 () Bool)

(assert (=> b!1098161 (= e!695337 true)))

(declare-fun b!1098160 () Bool)

(declare-fun e!695336 () Bool)

(assert (=> b!1098160 (= e!695336 e!695337)))

(assert (=> b!1098151 e!695336))

(assert (= b!1098160 b!1098161))

(assert (= b!1098151 b!1098160))

(declare-fun lambda!43082 () Int)

(assert (=> bs!259197 (not (= lambda!43082 lambda!43079))))

(assert (=> b!1098151 (not (= lambda!43082 lambda!43080))))

(assert (=> b!1098151 (not (= lambda!43082 lambda!43081))))

(declare-fun b!1098163 () Bool)

(declare-fun e!695339 () Bool)

(assert (=> b!1098163 (= e!695339 true)))

(declare-fun b!1098162 () Bool)

(declare-fun e!695338 () Bool)

(assert (=> b!1098162 (= e!695338 e!695339)))

(assert (=> b!1098151 e!695338))

(assert (= b!1098162 b!1098163))

(assert (= b!1098151 b!1098162))

(declare-fun res!487387 () Bool)

(declare-fun e!695327 () Bool)

(assert (=> start!94200 (=> (not res!487387) (not e!695327))))

(declare-datatypes ((List!10571 0))(
  ( (Nil!10555) (Cons!10555 (h!15956 (_ BitVec 16)) (t!103663 List!10571)) )
))
(declare-datatypes ((TokenValue!1873 0))(
  ( (FloatLiteralValue!3746 (text!13556 List!10571)) (TokenValueExt!1872 (__x!7455 Int)) (Broken!9365 (value!59428 List!10571)) (Object!1888) (End!1873) (Def!1873) (Underscore!1873) (Match!1873) (Else!1873) (Error!1873) (Case!1873) (If!1873) (Extends!1873) (Abstract!1873) (Class!1873) (Val!1873) (DelimiterValue!3746 (del!1933 List!10571)) (KeywordValue!1879 (value!59429 List!10571)) (CommentValue!3746 (value!59430 List!10571)) (WhitespaceValue!3746 (value!59431 List!10571)) (IndentationValue!1873 (value!59432 List!10571)) (String!12936) (Int32!1873) (Broken!9366 (value!59433 List!10571)) (Boolean!1874) (Unit!16155) (OperatorValue!1876 (op!1933 List!10571)) (IdentifierValue!3746 (value!59434 List!10571)) (IdentifierValue!3747 (value!59435 List!10571)) (WhitespaceValue!3747 (value!59436 List!10571)) (True!3746) (False!3746) (Broken!9367 (value!59437 List!10571)) (Broken!9368 (value!59438 List!10571)) (True!3747) (RightBrace!1873) (RightBracket!1873) (Colon!1873) (Null!1873) (Comma!1873) (LeftBracket!1873) (False!3747) (LeftBrace!1873) (ImaginaryLiteralValue!1873 (text!13557 List!10571)) (StringLiteralValue!5619 (value!59439 List!10571)) (EOFValue!1873 (value!59440 List!10571)) (IdentValue!1873 (value!59441 List!10571)) (DelimiterValue!3747 (value!59442 List!10571)) (DedentValue!1873 (value!59443 List!10571)) (NewLineValue!1873 (value!59444 List!10571)) (IntegerValue!5619 (value!59445 (_ BitVec 32)) (text!13558 List!10571)) (IntegerValue!5620 (value!59446 Int) (text!13559 List!10571)) (Times!1873) (Or!1873) (Equal!1873) (Minus!1873) (Broken!9369 (value!59447 List!10571)) (And!1873) (Div!1873) (LessEqual!1873) (Mod!1873) (Concat!4949) (Not!1873) (Plus!1873) (SpaceValue!1873 (value!59448 List!10571)) (IntegerValue!5621 (value!59449 Int) (text!13560 List!10571)) (StringLiteralValue!5620 (text!13561 List!10571)) (FloatLiteralValue!3747 (text!13562 List!10571)) (BytesLiteralValue!1873 (value!59450 List!10571)) (CommentValue!3747 (value!59451 List!10571)) (StringLiteralValue!5621 (value!59452 List!10571)) (ErrorTokenValue!1873 (msg!1934 List!10571)) )
))
(declare-datatypes ((Regex!3076 0))(
  ( (ElementMatch!3076 (c!186375 (_ BitVec 16))) (Concat!4950 (regOne!6664 Regex!3076) (regTwo!6664 Regex!3076)) (EmptyExpr!3076) (Star!3076 (reg!3405 Regex!3076)) (EmptyLang!3076) (Union!3076 (regOne!6665 Regex!3076) (regTwo!6665 Regex!3076)) )
))
(declare-datatypes ((String!12937 0))(
  ( (String!12938 (value!59453 String)) )
))
(declare-datatypes ((IArray!6501 0))(
  ( (IArray!6502 (innerList!3308 List!10571)) )
))
(declare-datatypes ((Conc!3248 0))(
  ( (Node!3248 (left!9097 Conc!3248) (right!9427 Conc!3248) (csize!6726 Int) (cheight!3459 Int)) (Leaf!5158 (xs!5941 IArray!6501) (csize!6727 Int)) (Empty!3248) )
))
(declare-datatypes ((BalanceConc!6510 0))(
  ( (BalanceConc!6511 (c!186376 Conc!3248)) )
))
(declare-datatypes ((TokenValueInjection!3446 0))(
  ( (TokenValueInjection!3447 (toValue!2884 Int) (toChars!2743 Int)) )
))
(declare-datatypes ((Rule!3414 0))(
  ( (Rule!3415 (regex!1807 Regex!3076) (tag!2069 String!12937) (isSeparator!1807 Bool) (transformation!1807 TokenValueInjection!3446)) )
))
(declare-datatypes ((Token!3280 0))(
  ( (Token!3281 (value!59454 TokenValue!1873) (rule!3230 Rule!3414) (size!8181 Int) (originalCharacters!2363 List!10571)) )
))
(declare-datatypes ((List!10572 0))(
  ( (Nil!10556) (Cons!10556 (h!15957 Token!3280) (t!103664 List!10572)) )
))
(declare-datatypes ((IArray!6503 0))(
  ( (IArray!6504 (innerList!3309 List!10572)) )
))
(declare-datatypes ((Conc!3249 0))(
  ( (Node!3249 (left!9098 Conc!3249) (right!9428 Conc!3249) (csize!6728 Int) (cheight!3460 Int)) (Leaf!5159 (xs!5942 IArray!6503) (csize!6729 Int)) (Empty!3249) )
))
(declare-datatypes ((List!10573 0))(
  ( (Nil!10557) (Cons!10557 (h!15958 Rule!3414) (t!103665 List!10573)) )
))
(declare-datatypes ((BalanceConc!6512 0))(
  ( (BalanceConc!6513 (c!186377 Conc!3249)) )
))
(declare-datatypes ((PrintableTokens!330 0))(
  ( (PrintableTokens!331 (rules!9094 List!10573) (tokens!1366 BalanceConc!6512)) )
))
(declare-datatypes ((tuple2!11740 0))(
  ( (tuple2!11741 (_1!6696 Int) (_2!6696 PrintableTokens!330)) )
))
(declare-datatypes ((List!10574 0))(
  ( (Nil!10558) (Cons!10558 (h!15959 tuple2!11740) (t!103666 List!10574)) )
))
(declare-datatypes ((IArray!6505 0))(
  ( (IArray!6506 (innerList!3310 List!10574)) )
))
(declare-datatypes ((Conc!3250 0))(
  ( (Node!3250 (left!9099 Conc!3250) (right!9429 Conc!3250) (csize!6730 Int) (cheight!3461 Int)) (Leaf!5160 (xs!5943 IArray!6505) (csize!6731 Int)) (Empty!3250) )
))
(declare-datatypes ((BalanceConc!6514 0))(
  ( (BalanceConc!6515 (c!186378 Conc!3250)) )
))
(declare-fun objs!8 () BalanceConc!6514)

(declare-fun forall!2400 (BalanceConc!6514 Int) Bool)

(assert (=> start!94200 (= res!487387 (forall!2400 objs!8 lambda!43079))))

(assert (=> start!94200 e!695327))

(declare-fun e!695328 () Bool)

(declare-fun inv!13549 (BalanceConc!6514) Bool)

(assert (=> start!94200 (and (inv!13549 objs!8) e!695328)))

(declare-fun b!1098146 () Bool)

(declare-datatypes ((Unit!16156 0))(
  ( (Unit!16157) )
))
(declare-fun e!695325 () Unit!16156)

(declare-fun err!2517 () Unit!16156)

(assert (=> b!1098146 (= e!695325 err!2517)))

(declare-fun lt!370984 () tuple2!11740)

(declare-fun lt!370979 () BalanceConc!6514)

(declare-fun lt!370978 () Unit!16156)

(declare-fun forallContained!507 (List!10574 Int tuple2!11740) Unit!16156)

(declare-fun list!3797 (BalanceConc!6514) List!10574)

(assert (=> b!1098146 (= lt!370978 (forallContained!507 (list!3797 lt!370979) lambda!43080 lt!370984))))

(assert (=> b!1098146 true))

(declare-fun b!1098147 () Bool)

(declare-fun Unit!16158 () Unit!16156)

(assert (=> b!1098147 (= e!695325 Unit!16158)))

(declare-fun b!1098148 () Bool)

(declare-fun tp!326771 () Bool)

(declare-fun inv!13550 (Conc!3250) Bool)

(assert (=> b!1098148 (= e!695328 (and (inv!13550 (c!186378 objs!8)) tp!326771))))

(declare-fun b!1098149 () Bool)

(declare-fun e!695329 () Bool)

(assert (=> b!1098149 (= e!695327 e!695329)))

(declare-fun res!487388 () Bool)

(assert (=> b!1098149 (=> (not res!487388) (not e!695329))))

(declare-fun lt!370982 () Int)

(assert (=> b!1098149 (= res!487388 (> lt!370982 1))))

(declare-fun size!8182 (BalanceConc!6514) Int)

(assert (=> b!1098149 (= lt!370982 (size!8182 objs!8))))

(declare-fun b!1098150 () Bool)

(declare-fun e!695326 () Bool)

(declare-fun lt!370981 () Bool)

(assert (=> b!1098150 (= e!695326 lt!370981)))

(declare-fun lt!370983 () Unit!16156)

(assert (=> b!1098150 (= lt!370983 e!695325)))

(declare-fun c!186374 () Bool)

(assert (=> b!1098150 (= c!186374 lt!370981)))

(declare-fun contains!1825 (BalanceConc!6514 tuple2!11740) Bool)

(assert (=> b!1098150 (= lt!370981 (contains!1825 lt!370979 lt!370984))))

(assert (=> b!1098151 (= e!695329 e!695326)))

(declare-fun res!487386 () Bool)

(assert (=> b!1098151 (=> (not res!487386) (not e!695326))))

(assert (=> b!1098151 (= res!487386 (contains!1825 objs!8 lt!370984))))

(declare-fun lt!370980 () BalanceConc!6514)

(declare-fun filter!302 (BalanceConc!6514 Int) BalanceConc!6514)

(assert (=> b!1098151 (= lt!370980 (filter!302 objs!8 lambda!43082))))

(declare-fun lt!370985 () BalanceConc!6514)

(assert (=> b!1098151 (= lt!370985 (filter!302 objs!8 lambda!43081))))

(assert (=> b!1098151 (= lt!370979 (filter!302 objs!8 lambda!43080))))

(declare-fun apply!2102 (BalanceConc!6514 Int) tuple2!11740)

(assert (=> b!1098151 (= lt!370984 (apply!2102 objs!8 (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2)))))))

(assert (= (and start!94200 res!487387) b!1098149))

(assert (= (and b!1098149 res!487388) b!1098151))

(assert (= (and b!1098151 res!487386) b!1098150))

(assert (= (and b!1098150 c!186374) b!1098146))

(assert (= (and b!1098150 (not c!186374)) b!1098147))

(assert (= start!94200 b!1098148))

(declare-fun m!1253959 () Bool)

(assert (=> b!1098146 m!1253959))

(assert (=> b!1098146 m!1253959))

(declare-fun m!1253961 () Bool)

(assert (=> b!1098146 m!1253961))

(declare-fun m!1253963 () Bool)

(assert (=> b!1098148 m!1253963))

(declare-fun m!1253965 () Bool)

(assert (=> b!1098151 m!1253965))

(declare-fun m!1253967 () Bool)

(assert (=> b!1098151 m!1253967))

(declare-fun m!1253969 () Bool)

(assert (=> b!1098151 m!1253969))

(declare-fun m!1253971 () Bool)

(assert (=> b!1098151 m!1253971))

(declare-fun m!1253973 () Bool)

(assert (=> b!1098151 m!1253973))

(declare-fun m!1253975 () Bool)

(assert (=> b!1098149 m!1253975))

(declare-fun m!1253977 () Bool)

(assert (=> start!94200 m!1253977))

(declare-fun m!1253979 () Bool)

(assert (=> start!94200 m!1253979))

(declare-fun m!1253981 () Bool)

(assert (=> b!1098150 m!1253981))

(push 1)

(assert (not b!1098150))

(assert (not b!1098163))

(assert (not b!1098159))

(assert (not b!1098158))

(assert (not start!94200))

(assert (not b!1098161))

(assert (not b!1098149))

(assert (not b!1098146))

(assert (not b!1098162))

(assert (not b!1098151))

(assert (not b!1098160))

(assert (not b!1098148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310316 () Bool)

(declare-fun lt!371012 () Bool)

(declare-fun contains!1827 (List!10574 tuple2!11740) Bool)

(assert (=> d!310316 (= lt!371012 (contains!1827 (list!3797 lt!370979) lt!370984))))

(declare-fun contains!1828 (Conc!3250 tuple2!11740) Bool)

(assert (=> d!310316 (= lt!371012 (contains!1828 (c!186378 lt!370979) lt!370984))))

(assert (=> d!310316 (= (contains!1825 lt!370979 lt!370984) lt!371012)))

(declare-fun bs!259199 () Bool)

(assert (= bs!259199 d!310316))

(assert (=> bs!259199 m!1253959))

(assert (=> bs!259199 m!1253959))

(declare-fun m!1254007 () Bool)

(assert (=> bs!259199 m!1254007))

(declare-fun m!1254009 () Bool)

(assert (=> bs!259199 m!1254009))

(assert (=> b!1098150 d!310316))

(declare-fun d!310318 () Bool)

(declare-fun lt!371015 () Bool)

(declare-fun forall!2402 (List!10574 Int) Bool)

(assert (=> d!310318 (= lt!371015 (forall!2402 (list!3797 objs!8) lambda!43079))))

(declare-fun forall!2403 (Conc!3250 Int) Bool)

(assert (=> d!310318 (= lt!371015 (forall!2403 (c!186378 objs!8) lambda!43079))))

(assert (=> d!310318 (= (forall!2400 objs!8 lambda!43079) lt!371015)))

(declare-fun bs!259200 () Bool)

(assert (= bs!259200 d!310318))

(declare-fun m!1254011 () Bool)

(assert (=> bs!259200 m!1254011))

(assert (=> bs!259200 m!1254011))

(declare-fun m!1254013 () Bool)

(assert (=> bs!259200 m!1254013))

(declare-fun m!1254015 () Bool)

(assert (=> bs!259200 m!1254015))

(assert (=> start!94200 d!310318))

(declare-fun d!310320 () Bool)

(declare-fun isBalanced!899 (Conc!3250) Bool)

(assert (=> d!310320 (= (inv!13549 objs!8) (isBalanced!899 (c!186378 objs!8)))))

(declare-fun bs!259201 () Bool)

(assert (= bs!259201 d!310320))

(declare-fun m!1254017 () Bool)

(assert (=> bs!259201 m!1254017))

(assert (=> start!94200 d!310320))

(declare-fun d!310322 () Bool)

(declare-fun lt!371018 () Int)

(declare-fun size!8185 (List!10574) Int)

(assert (=> d!310322 (= lt!371018 (size!8185 (list!3797 objs!8)))))

(declare-fun size!8186 (Conc!3250) Int)

(assert (=> d!310322 (= lt!371018 (size!8186 (c!186378 objs!8)))))

(assert (=> d!310322 (= (size!8182 objs!8) lt!371018)))

(declare-fun bs!259202 () Bool)

(assert (= bs!259202 d!310322))

(assert (=> bs!259202 m!1254011))

(assert (=> bs!259202 m!1254011))

(declare-fun m!1254019 () Bool)

(assert (=> bs!259202 m!1254019))

(declare-fun m!1254021 () Bool)

(assert (=> bs!259202 m!1254021))

(assert (=> b!1098149 d!310322))

(declare-fun d!310326 () Bool)

(declare-fun c!186388 () Bool)

(assert (=> d!310326 (= c!186388 (is-Node!3250 (c!186378 objs!8)))))

(declare-fun e!695369 () Bool)

(assert (=> d!310326 (= (inv!13550 (c!186378 objs!8)) e!695369)))

(declare-fun b!1098200 () Bool)

(declare-fun inv!13553 (Conc!3250) Bool)

(assert (=> b!1098200 (= e!695369 (inv!13553 (c!186378 objs!8)))))

(declare-fun b!1098201 () Bool)

(declare-fun e!695370 () Bool)

(assert (=> b!1098201 (= e!695369 e!695370)))

(declare-fun res!487400 () Bool)

(assert (=> b!1098201 (= res!487400 (not (is-Leaf!5160 (c!186378 objs!8))))))

(assert (=> b!1098201 (=> res!487400 e!695370)))

(declare-fun b!1098202 () Bool)

(declare-fun inv!13554 (Conc!3250) Bool)

(assert (=> b!1098202 (= e!695370 (inv!13554 (c!186378 objs!8)))))

(assert (= (and d!310326 c!186388) b!1098200))

(assert (= (and d!310326 (not c!186388)) b!1098201))

(assert (= (and b!1098201 (not res!487400)) b!1098202))

(declare-fun m!1254023 () Bool)

(assert (=> b!1098200 m!1254023))

(declare-fun m!1254025 () Bool)

(assert (=> b!1098202 m!1254025))

(assert (=> b!1098148 d!310326))

(declare-fun d!310328 () Bool)

(declare-fun dynLambda!4637 (Int tuple2!11740) Bool)

(assert (=> d!310328 (dynLambda!4637 lambda!43080 lt!370984)))

(declare-fun lt!371024 () Unit!16156)

(declare-fun choose!7080 (List!10574 Int tuple2!11740) Unit!16156)

(assert (=> d!310328 (= lt!371024 (choose!7080 (list!3797 lt!370979) lambda!43080 lt!370984))))

(declare-fun e!695373 () Bool)

(assert (=> d!310328 e!695373))

(declare-fun res!487403 () Bool)

(assert (=> d!310328 (=> (not res!487403) (not e!695373))))

(assert (=> d!310328 (= res!487403 (forall!2402 (list!3797 lt!370979) lambda!43080))))

(assert (=> d!310328 (= (forallContained!507 (list!3797 lt!370979) lambda!43080 lt!370984) lt!371024)))

(declare-fun b!1098205 () Bool)

(assert (=> b!1098205 (= e!695373 (contains!1827 (list!3797 lt!370979) lt!370984))))

(assert (= (and d!310328 res!487403) b!1098205))

(declare-fun b_lambda!31803 () Bool)

(assert (=> (not b_lambda!31803) (not d!310328)))

(declare-fun m!1254033 () Bool)

(assert (=> d!310328 m!1254033))

(assert (=> d!310328 m!1253959))

(declare-fun m!1254035 () Bool)

(assert (=> d!310328 m!1254035))

(assert (=> d!310328 m!1253959))

(declare-fun m!1254037 () Bool)

(assert (=> d!310328 m!1254037))

(assert (=> b!1098205 m!1253959))

(assert (=> b!1098205 m!1254007))

(assert (=> b!1098146 d!310328))

(declare-fun d!310332 () Bool)

(declare-fun list!3799 (Conc!3250) List!10574)

(assert (=> d!310332 (= (list!3797 lt!370979) (list!3799 (c!186378 lt!370979)))))

(declare-fun bs!259204 () Bool)

(assert (= bs!259204 d!310332))

(declare-fun m!1254039 () Bool)

(assert (=> bs!259204 m!1254039))

(assert (=> b!1098146 d!310332))

(declare-fun d!310334 () Bool)

(declare-fun lt!371027 () tuple2!11740)

(declare-fun apply!2104 (List!10574 Int) tuple2!11740)

(assert (=> d!310334 (= lt!371027 (apply!2104 (list!3797 objs!8) (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2)))))))

(declare-fun apply!2105 (Conc!3250 Int) tuple2!11740)

(assert (=> d!310334 (= lt!371027 (apply!2105 (c!186378 objs!8) (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2)))))))

(declare-fun e!695376 () Bool)

(assert (=> d!310334 e!695376))

(declare-fun res!487406 () Bool)

(assert (=> d!310334 (=> (not res!487406) (not e!695376))))

(assert (=> d!310334 (= res!487406 (<= 0 (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2)))))))

(assert (=> d!310334 (= (apply!2102 objs!8 (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2)))) lt!371027)))

(declare-fun b!1098208 () Bool)

(assert (=> b!1098208 (= e!695376 (< (ite (>= lt!370982 0) (div lt!370982 2) (- (div (- lt!370982) 2))) (size!8182 objs!8)))))

(assert (= (and d!310334 res!487406) b!1098208))

(assert (=> d!310334 m!1254011))

(assert (=> d!310334 m!1254011))

(declare-fun m!1254041 () Bool)

(assert (=> d!310334 m!1254041))

(declare-fun m!1254043 () Bool)

(assert (=> d!310334 m!1254043))

(assert (=> b!1098208 m!1253975))

(assert (=> b!1098151 d!310334))

(declare-fun d!310336 () Bool)

(declare-fun e!695381 () Bool)

(assert (=> d!310336 e!695381))

(declare-fun res!487411 () Bool)

(assert (=> d!310336 (=> (not res!487411) (not e!695381))))

(declare-fun filter!304 (Conc!3250 Int) Conc!3250)

(assert (=> d!310336 (= res!487411 (isBalanced!899 (filter!304 (c!186378 objs!8) lambda!43082)))))

(declare-fun lt!371032 () BalanceConc!6514)

(assert (=> d!310336 (= lt!371032 (BalanceConc!6515 (filter!304 (c!186378 objs!8) lambda!43082)))))

(assert (=> d!310336 (= (filter!302 objs!8 lambda!43082) lt!371032)))

(declare-fun b!1098213 () Bool)

(declare-fun filter!305 (List!10574 Int) List!10574)

(assert (=> b!1098213 (= e!695381 (= (list!3797 lt!371032) (filter!305 (list!3797 objs!8) lambda!43082)))))

(assert (= (and d!310336 res!487411) b!1098213))

(declare-fun m!1254045 () Bool)

(assert (=> d!310336 m!1254045))

(assert (=> d!310336 m!1254045))

(declare-fun m!1254047 () Bool)

(assert (=> d!310336 m!1254047))

(declare-fun m!1254049 () Bool)

(assert (=> b!1098213 m!1254049))

(assert (=> b!1098213 m!1254011))

(assert (=> b!1098213 m!1254011))

(declare-fun m!1254051 () Bool)

(assert (=> b!1098213 m!1254051))

(assert (=> b!1098151 d!310336))

(declare-fun d!310338 () Bool)

(declare-fun e!695383 () Bool)

(assert (=> d!310338 e!695383))

(declare-fun res!487413 () Bool)

(assert (=> d!310338 (=> (not res!487413) (not e!695383))))

(assert (=> d!310338 (= res!487413 (isBalanced!899 (filter!304 (c!186378 objs!8) lambda!43081)))))

(declare-fun lt!371034 () BalanceConc!6514)

(assert (=> d!310338 (= lt!371034 (BalanceConc!6515 (filter!304 (c!186378 objs!8) lambda!43081)))))

(assert (=> d!310338 (= (filter!302 objs!8 lambda!43081) lt!371034)))

(declare-fun b!1098215 () Bool)

(assert (=> b!1098215 (= e!695383 (= (list!3797 lt!371034) (filter!305 (list!3797 objs!8) lambda!43081)))))

(assert (= (and d!310338 res!487413) b!1098215))

(declare-fun m!1254053 () Bool)

(assert (=> d!310338 m!1254053))

(assert (=> d!310338 m!1254053))

(declare-fun m!1254055 () Bool)

(assert (=> d!310338 m!1254055))

(declare-fun m!1254057 () Bool)

(assert (=> b!1098215 m!1254057))

(assert (=> b!1098215 m!1254011))

(assert (=> b!1098215 m!1254011))

(declare-fun m!1254061 () Bool)

(assert (=> b!1098215 m!1254061))

(assert (=> b!1098151 d!310338))

(declare-fun d!310340 () Bool)

(declare-fun lt!371035 () Bool)

(assert (=> d!310340 (= lt!371035 (contains!1827 (list!3797 objs!8) lt!370984))))

(assert (=> d!310340 (= lt!371035 (contains!1828 (c!186378 objs!8) lt!370984))))

(assert (=> d!310340 (= (contains!1825 objs!8 lt!370984) lt!371035)))

(declare-fun bs!259205 () Bool)

(assert (= bs!259205 d!310340))

(assert (=> bs!259205 m!1254011))

(assert (=> bs!259205 m!1254011))

(declare-fun m!1254065 () Bool)

(assert (=> bs!259205 m!1254065))

(declare-fun m!1254069 () Bool)

(assert (=> bs!259205 m!1254069))

(assert (=> b!1098151 d!310340))

(declare-fun d!310342 () Bool)

(declare-fun e!695384 () Bool)

(assert (=> d!310342 e!695384))

(declare-fun res!487414 () Bool)

(assert (=> d!310342 (=> (not res!487414) (not e!695384))))

(assert (=> d!310342 (= res!487414 (isBalanced!899 (filter!304 (c!186378 objs!8) lambda!43080)))))

(declare-fun lt!371036 () BalanceConc!6514)

(assert (=> d!310342 (= lt!371036 (BalanceConc!6515 (filter!304 (c!186378 objs!8) lambda!43080)))))

(assert (=> d!310342 (= (filter!302 objs!8 lambda!43080) lt!371036)))

(declare-fun b!1098216 () Bool)

(assert (=> b!1098216 (= e!695384 (= (list!3797 lt!371036) (filter!305 (list!3797 objs!8) lambda!43080)))))

(assert (= (and d!310342 res!487414) b!1098216))

(declare-fun m!1254073 () Bool)

(assert (=> d!310342 m!1254073))

(assert (=> d!310342 m!1254073))

(declare-fun m!1254075 () Bool)

(assert (=> d!310342 m!1254075))

(declare-fun m!1254077 () Bool)

(assert (=> b!1098216 m!1254077))

(assert (=> b!1098216 m!1254011))

(assert (=> b!1098216 m!1254011))

(declare-fun m!1254079 () Bool)

(assert (=> b!1098216 m!1254079))

(assert (=> b!1098151 d!310342))

(declare-fun b!1098227 () Bool)

(declare-fun e!695391 () Bool)

(assert (=> b!1098227 (= e!695391 true)))

(declare-fun b!1098229 () Bool)

(declare-fun e!695392 () Bool)

(assert (=> b!1098229 (= e!695392 true)))

(declare-fun b!1098228 () Bool)

(assert (=> b!1098228 (= e!695391 e!695392)))

(assert (=> b!1098161 e!695391))

(assert (= (and b!1098161 (is-Node!3249 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098227))

(assert (= b!1098228 b!1098229))

(assert (= (and b!1098161 (is-Leaf!5159 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098228))

(declare-fun b!1098230 () Bool)

(declare-fun e!695393 () Bool)

(assert (=> b!1098230 (= e!695393 true)))

(declare-fun b!1098232 () Bool)

(declare-fun e!695394 () Bool)

(assert (=> b!1098232 (= e!695394 true)))

(declare-fun b!1098231 () Bool)

(assert (=> b!1098231 (= e!695393 e!695394)))

(assert (=> b!1098163 e!695393))

(assert (= (and b!1098163 (is-Node!3249 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098230))

(assert (= b!1098231 b!1098232))

(assert (= (and b!1098163 (is-Leaf!5159 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098231))

(declare-fun b!1098233 () Bool)

(declare-fun e!695395 () Bool)

(assert (=> b!1098233 (= e!695395 true)))

(declare-fun b!1098235 () Bool)

(declare-fun e!695396 () Bool)

(assert (=> b!1098235 (= e!695396 true)))

(declare-fun b!1098234 () Bool)

(assert (=> b!1098234 (= e!695395 e!695396)))

(assert (=> b!1098159 e!695395))

(assert (= (and b!1098159 (is-Node!3249 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098233))

(assert (= b!1098234 b!1098235))

(assert (= (and b!1098159 (is-Leaf!5159 (c!186377 (tokens!1366 (_2!6696 lt!370984))))) b!1098234))

(declare-fun b!1098246 () Bool)

(declare-fun e!695405 () Bool)

(assert (=> b!1098246 (= e!695405 true)))

(declare-fun b!1098245 () Bool)

(declare-fun e!695404 () Bool)

(assert (=> b!1098245 (= e!695404 e!695405)))

(declare-fun b!1098244 () Bool)

(declare-fun e!695403 () Bool)

(assert (=> b!1098244 (= e!695403 e!695404)))

(assert (=> b!1098160 e!695403))

(assert (= b!1098245 b!1098246))

(assert (= b!1098244 b!1098245))

(assert (= (and b!1098160 (is-Cons!10557 (rules!9094 (_2!6696 lt!370984)))) b!1098244))

(declare-fun order!6395 () Int)

(declare-fun order!6393 () Int)

(declare-fun dynLambda!4638 (Int Int) Int)

(declare-fun dynLambda!4639 (Int Int) Int)

(assert (=> b!1098246 (< (dynLambda!4638 order!6393 (toValue!2884 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43081))))

(declare-fun order!6397 () Int)

(declare-fun dynLambda!4640 (Int Int) Int)

(assert (=> b!1098246 (< (dynLambda!4640 order!6397 (toChars!2743 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43081))))

(declare-fun tp!326781 () Bool)

(declare-fun b!1098255 () Bool)

(declare-fun e!695410 () Bool)

(declare-fun tp!326783 () Bool)

(assert (=> b!1098255 (= e!695410 (and (inv!13550 (left!9099 (c!186378 objs!8))) tp!326783 (inv!13550 (right!9429 (c!186378 objs!8))) tp!326781))))

(declare-fun b!1098257 () Bool)

(declare-fun e!695411 () Bool)

(declare-fun tp!326782 () Bool)

(assert (=> b!1098257 (= e!695411 tp!326782)))

(declare-fun b!1098256 () Bool)

(declare-fun inv!13555 (IArray!6505) Bool)

(assert (=> b!1098256 (= e!695410 (and (inv!13555 (xs!5943 (c!186378 objs!8))) e!695411))))

(assert (=> b!1098148 (= tp!326771 (and (inv!13550 (c!186378 objs!8)) e!695410))))

(assert (= (and b!1098148 (is-Node!3250 (c!186378 objs!8))) b!1098255))

(assert (= b!1098256 b!1098257))

(assert (= (and b!1098148 (is-Leaf!5160 (c!186378 objs!8))) b!1098256))

(declare-fun m!1254097 () Bool)

(assert (=> b!1098255 m!1254097))

(declare-fun m!1254099 () Bool)

(assert (=> b!1098255 m!1254099))

(declare-fun m!1254101 () Bool)

(assert (=> b!1098256 m!1254101))

(assert (=> b!1098148 m!1253963))

(declare-fun b!1098260 () Bool)

(declare-fun e!695414 () Bool)

(assert (=> b!1098260 (= e!695414 true)))

(declare-fun b!1098259 () Bool)

(declare-fun e!695413 () Bool)

(assert (=> b!1098259 (= e!695413 e!695414)))

(declare-fun b!1098258 () Bool)

(declare-fun e!695412 () Bool)

(assert (=> b!1098258 (= e!695412 e!695413)))

(assert (=> b!1098162 e!695412))

(assert (= b!1098259 b!1098260))

(assert (= b!1098258 b!1098259))

(assert (= (and b!1098162 (is-Cons!10557 (rules!9094 (_2!6696 lt!370984)))) b!1098258))

(assert (=> b!1098260 (< (dynLambda!4638 order!6393 (toValue!2884 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43082))))

(assert (=> b!1098260 (< (dynLambda!4640 order!6397 (toChars!2743 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43082))))

(declare-fun b!1098263 () Bool)

(declare-fun e!695417 () Bool)

(assert (=> b!1098263 (= e!695417 true)))

(declare-fun b!1098262 () Bool)

(declare-fun e!695416 () Bool)

(assert (=> b!1098262 (= e!695416 e!695417)))

(declare-fun b!1098261 () Bool)

(declare-fun e!695415 () Bool)

(assert (=> b!1098261 (= e!695415 e!695416)))

(assert (=> b!1098158 e!695415))

(assert (= b!1098262 b!1098263))

(assert (= b!1098261 b!1098262))

(assert (= (and b!1098158 (is-Cons!10557 (rules!9094 (_2!6696 lt!370984)))) b!1098261))

(assert (=> b!1098263 (< (dynLambda!4638 order!6393 (toValue!2884 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43080))))

(assert (=> b!1098263 (< (dynLambda!4640 order!6397 (toChars!2743 (transformation!1807 (h!15958 (rules!9094 (_2!6696 lt!370984)))))) (dynLambda!4639 order!6395 lambda!43080))))

(declare-fun b_lambda!31805 () Bool)

(assert (= b_lambda!31803 (or b!1098151 b_lambda!31805)))

(declare-fun bs!259206 () Bool)

(declare-fun d!310350 () Bool)

(assert (= bs!259206 (and d!310350 b!1098151)))

(assert (=> bs!259206 (= (dynLambda!4637 lambda!43080 lt!370984) (< (_1!6696 lt!370984) (_1!6696 lt!370984)))))

(assert (=> d!310328 d!310350))

(push 1)

(assert (not b!1098230))

(assert (not b_lambda!31805))

(assert (not b!1098216))

(assert (not b!1098202))

(assert (not d!310322))

(assert (not d!310336))

(assert (not b!1098148))

(assert (not b!1098257))

(assert (not b!1098215))

(assert (not b!1098208))

(assert (not d!310320))

(assert (not d!310332))

(assert (not b!1098235))

(assert (not b!1098213))

(assert (not b!1098258))

(assert (not d!310338))

(assert (not b!1098205))

(assert (not b!1098227))

(assert (not d!310342))

(assert (not b!1098256))

(assert (not b!1098229))

(assert (not d!310316))

(assert (not b!1098232))

(assert (not b!1098261))

(assert (not d!310328))

(assert (not b!1098244))

(assert (not b!1098233))

(assert (not b!1098200))

(assert (not d!310334))

(assert (not b!1098255))

(assert (not d!310318))

(assert (not d!310340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

