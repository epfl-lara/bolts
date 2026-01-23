; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93302 () Bool)

(assert start!93302)

(declare-fun bs!257920 () Bool)

(declare-fun b!1090918 () Bool)

(assert (= bs!257920 (and b!1090918 start!93302)))

(declare-fun lambda!41164 () Int)

(declare-fun lambda!41163 () Int)

(assert (=> bs!257920 (not (= lambda!41164 lambda!41163))))

(declare-fun b!1090943 () Bool)

(declare-fun e!690316 () Bool)

(assert (=> b!1090943 (= e!690316 true)))

(declare-fun b!1090942 () Bool)

(declare-fun e!690315 () Bool)

(assert (=> b!1090942 (= e!690315 e!690316)))

(assert (=> b!1090918 e!690315))

(assert (= b!1090942 b!1090943))

(assert (= b!1090918 b!1090942))

(declare-fun lambda!41165 () Int)

(assert (=> bs!257920 (not (= lambda!41165 lambda!41163))))

(assert (=> b!1090918 (not (= lambda!41165 lambda!41164))))

(declare-fun b!1090945 () Bool)

(declare-fun e!690318 () Bool)

(assert (=> b!1090945 (= e!690318 true)))

(declare-fun b!1090944 () Bool)

(declare-fun e!690317 () Bool)

(assert (=> b!1090944 (= e!690317 e!690318)))

(assert (=> b!1090918 e!690317))

(assert (= b!1090944 b!1090945))

(assert (= b!1090918 b!1090944))

(declare-fun lambda!41166 () Int)

(assert (=> bs!257920 (not (= lambda!41166 lambda!41163))))

(assert (=> b!1090918 (not (= lambda!41166 lambda!41164))))

(assert (=> b!1090918 (not (= lambda!41166 lambda!41165))))

(declare-fun b!1090947 () Bool)

(declare-fun e!690320 () Bool)

(assert (=> b!1090947 (= e!690320 true)))

(declare-fun b!1090946 () Bool)

(declare-fun e!690319 () Bool)

(assert (=> b!1090946 (= e!690319 e!690320)))

(assert (=> b!1090918 e!690319))

(assert (= b!1090946 b!1090947))

(assert (= b!1090918 b!1090946))

(declare-fun e!690310 () Bool)

(declare-fun e!690306 () Bool)

(assert (=> b!1090918 (= e!690310 e!690306)))

(declare-fun res!484798 () Bool)

(assert (=> b!1090918 (=> (not res!484798) (not e!690306))))

(declare-datatypes ((List!10471 0))(
  ( (Nil!10455) (Cons!10455 (h!15856 (_ BitVec 16)) (t!101817 List!10471)) )
))
(declare-datatypes ((TokenValue!1848 0))(
  ( (FloatLiteralValue!3696 (text!13381 List!10471)) (TokenValueExt!1847 (__x!7430 Int)) (Broken!9240 (value!58714 List!10471)) (Object!1863) (End!1848) (Def!1848) (Underscore!1848) (Match!1848) (Else!1848) (Error!1848) (Case!1848) (If!1848) (Extends!1848) (Abstract!1848) (Class!1848) (Val!1848) (DelimiterValue!3696 (del!1908 List!10471)) (KeywordValue!1854 (value!58715 List!10471)) (CommentValue!3696 (value!58716 List!10471)) (WhitespaceValue!3696 (value!58717 List!10471)) (IndentationValue!1848 (value!58718 List!10471)) (String!12809) (Int32!1848) (Broken!9241 (value!58719 List!10471)) (Boolean!1849) (Unit!15852) (OperatorValue!1851 (op!1908 List!10471)) (IdentifierValue!3696 (value!58720 List!10471)) (IdentifierValue!3697 (value!58721 List!10471)) (WhitespaceValue!3697 (value!58722 List!10471)) (True!3696) (False!3696) (Broken!9242 (value!58723 List!10471)) (Broken!9243 (value!58724 List!10471)) (True!3697) (RightBrace!1848) (RightBracket!1848) (Colon!1848) (Null!1848) (Comma!1848) (LeftBracket!1848) (False!3697) (LeftBrace!1848) (ImaginaryLiteralValue!1848 (text!13382 List!10471)) (StringLiteralValue!5544 (value!58725 List!10471)) (EOFValue!1848 (value!58726 List!10471)) (IdentValue!1848 (value!58727 List!10471)) (DelimiterValue!3697 (value!58728 List!10471)) (DedentValue!1848 (value!58729 List!10471)) (NewLineValue!1848 (value!58730 List!10471)) (IntegerValue!5544 (value!58731 (_ BitVec 32)) (text!13383 List!10471)) (IntegerValue!5545 (value!58732 Int) (text!13384 List!10471)) (Times!1848) (Or!1848) (Equal!1848) (Minus!1848) (Broken!9244 (value!58733 List!10471)) (And!1848) (Div!1848) (LessEqual!1848) (Mod!1848) (Concat!4899) (Not!1848) (Plus!1848) (SpaceValue!1848 (value!58734 List!10471)) (IntegerValue!5546 (value!58735 Int) (text!13385 List!10471)) (StringLiteralValue!5545 (text!13386 List!10471)) (FloatLiteralValue!3697 (text!13387 List!10471)) (BytesLiteralValue!1848 (value!58736 List!10471)) (CommentValue!3697 (value!58737 List!10471)) (StringLiteralValue!5546 (value!58738 List!10471)) (ErrorTokenValue!1848 (msg!1909 List!10471)) )
))
(declare-datatypes ((Regex!3051 0))(
  ( (ElementMatch!3051 (c!184862 (_ BitVec 16))) (Concat!4900 (regOne!6614 Regex!3051) (regTwo!6614 Regex!3051)) (EmptyExpr!3051) (Star!3051 (reg!3380 Regex!3051)) (EmptyLang!3051) (Union!3051 (regOne!6615 Regex!3051) (regTwo!6615 Regex!3051)) )
))
(declare-datatypes ((String!12810 0))(
  ( (String!12811 (value!58739 String)) )
))
(declare-datatypes ((IArray!6351 0))(
  ( (IArray!6352 (innerList!3233 List!10471)) )
))
(declare-datatypes ((Conc!3173 0))(
  ( (Node!3173 (left!8959 Conc!3173) (right!9289 Conc!3173) (csize!6576 Int) (cheight!3384 Int)) (Leaf!5070 (xs!5866 IArray!6351) (csize!6577 Int)) (Empty!3173) )
))
(declare-datatypes ((BalanceConc!6360 0))(
  ( (BalanceConc!6361 (c!184863 Conc!3173)) )
))
(declare-datatypes ((TokenValueInjection!3396 0))(
  ( (TokenValueInjection!3397 (toValue!2859 Int) (toChars!2718 Int)) )
))
(declare-datatypes ((Rule!3364 0))(
  ( (Rule!3365 (regex!1782 Regex!3051) (tag!2044 String!12810) (isSeparator!1782 Bool) (transformation!1782 TokenValueInjection!3396)) )
))
(declare-datatypes ((Token!3230 0))(
  ( (Token!3231 (value!58740 TokenValue!1848) (rule!3205 Rule!3364) (size!8082 Int) (originalCharacters!2338 List!10471)) )
))
(declare-datatypes ((List!10472 0))(
  ( (Nil!10456) (Cons!10456 (h!15857 Token!3230) (t!101818 List!10472)) )
))
(declare-datatypes ((IArray!6353 0))(
  ( (IArray!6354 (innerList!3234 List!10472)) )
))
(declare-datatypes ((Conc!3174 0))(
  ( (Node!3174 (left!8960 Conc!3174) (right!9290 Conc!3174) (csize!6578 Int) (cheight!3385 Int)) (Leaf!5071 (xs!5867 IArray!6353) (csize!6579 Int)) (Empty!3174) )
))
(declare-datatypes ((List!10473 0))(
  ( (Nil!10457) (Cons!10457 (h!15858 Rule!3364) (t!101819 List!10473)) )
))
(declare-datatypes ((BalanceConc!6362 0))(
  ( (BalanceConc!6363 (c!184864 Conc!3174)) )
))
(declare-datatypes ((PrintableTokens!280 0))(
  ( (PrintableTokens!281 (rules!9069 List!10473) (tokens!1341 BalanceConc!6362)) )
))
(declare-datatypes ((tuple2!11690 0))(
  ( (tuple2!11691 (_1!6671 Int) (_2!6671 PrintableTokens!280)) )
))
(declare-datatypes ((List!10474 0))(
  ( (Nil!10458) (Cons!10458 (h!15859 tuple2!11690) (t!101820 List!10474)) )
))
(declare-datatypes ((IArray!6355 0))(
  ( (IArray!6356 (innerList!3235 List!10474)) )
))
(declare-datatypes ((Conc!3175 0))(
  ( (Node!3175 (left!8961 Conc!3175) (right!9291 Conc!3175) (csize!6580 Int) (cheight!3386 Int)) (Leaf!5072 (xs!5868 IArray!6355) (csize!6581 Int)) (Empty!3175) )
))
(declare-datatypes ((BalanceConc!6364 0))(
  ( (BalanceConc!6365 (c!184865 Conc!3175)) )
))
(declare-fun objs!8 () BalanceConc!6364)

(declare-fun lt!365171 () tuple2!11690)

(declare-fun contains!1758 (BalanceConc!6364 tuple2!11690) Bool)

(assert (=> b!1090918 (= res!484798 (contains!1758 objs!8 lt!365171))))

(declare-fun lt!365166 () BalanceConc!6364)

(declare-fun filter!228 (BalanceConc!6364 Int) BalanceConc!6364)

(assert (=> b!1090918 (= lt!365166 (filter!228 objs!8 lambda!41166))))

(declare-fun lt!365175 () BalanceConc!6364)

(assert (=> b!1090918 (= lt!365175 (filter!228 objs!8 lambda!41165))))

(declare-fun lt!365176 () BalanceConc!6364)

(assert (=> b!1090918 (= lt!365176 (filter!228 objs!8 lambda!41164))))

(declare-fun lt!365162 () Int)

(declare-fun apply!2037 (BalanceConc!6364 Int) tuple2!11690)

(assert (=> b!1090918 (= lt!365171 (apply!2037 objs!8 (ite (>= lt!365162 0) (div lt!365162 2) (- (div (- lt!365162) 2)))))))

(declare-fun b!1090919 () Bool)

(declare-datatypes ((Unit!15853 0))(
  ( (Unit!15854) )
))
(declare-fun e!690303 () Unit!15853)

(declare-fun err!1910 () Unit!15853)

(assert (=> b!1090919 (= e!690303 err!1910)))

(declare-fun lt!365168 () List!10474)

(declare-fun lt!365173 () Unit!15853)

(declare-fun forallContained!484 (List!10474 Int tuple2!11690) Unit!15853)

(assert (=> b!1090919 (= lt!365173 (forallContained!484 lt!365168 lambda!41166 lt!365171))))

(assert (=> b!1090919 true))

(declare-fun b!1090920 () Bool)

(declare-fun e!690300 () Unit!15853)

(declare-fun err!1912 () Unit!15853)

(assert (=> b!1090920 (= e!690300 err!1912)))

(declare-fun lt!365161 () Unit!15853)

(declare-fun list!3748 (BalanceConc!6364) List!10474)

(assert (=> b!1090920 (= lt!365161 (forallContained!484 (list!3748 lt!365176) lambda!41164 lt!365171))))

(assert (=> b!1090920 true))

(declare-fun b!1090921 () Bool)

(declare-fun e!690305 () Bool)

(assert (=> b!1090921 (= e!690306 e!690305)))

(declare-fun res!484797 () Bool)

(assert (=> b!1090921 (=> (not res!484797) (not e!690305))))

(declare-fun lt!365182 () Bool)

(assert (=> b!1090921 (= res!484797 (not lt!365182))))

(declare-fun lt!365165 () Unit!15853)

(assert (=> b!1090921 (= lt!365165 e!690300)))

(declare-fun c!184859 () Bool)

(assert (=> b!1090921 (= c!184859 lt!365182)))

(assert (=> b!1090921 (= lt!365182 (contains!1758 lt!365176 lt!365171))))

(declare-fun b!1090922 () Bool)

(declare-fun e!690302 () Bool)

(declare-fun e!690308 () Bool)

(assert (=> b!1090922 (= e!690302 e!690308)))

(declare-fun res!484799 () Bool)

(assert (=> b!1090922 (=> res!484799 e!690308)))

(declare-fun lt!365178 () Bool)

(assert (=> b!1090922 (= res!484799 lt!365178)))

(declare-fun lt!365169 () Unit!15853)

(declare-fun e!690309 () Unit!15853)

(assert (=> b!1090922 (= lt!365169 e!690309)))

(declare-fun c!184861 () Bool)

(assert (=> b!1090922 (= c!184861 lt!365178)))

(assert (=> b!1090922 (= lt!365178 (contains!1758 lt!365166 lt!365171))))

(declare-fun b!1090924 () Bool)

(declare-fun e!690299 () Bool)

(assert (=> b!1090924 (= e!690299 true)))

(declare-fun lt!365164 () List!10474)

(assert (=> b!1090924 (= lt!365164 (list!3748 (filter!228 objs!8 lambda!41164)))))

(declare-fun lt!365172 () Unit!15853)

(declare-fun filterSubseq!19 (List!10474 Int) Unit!15853)

(assert (=> b!1090924 (= lt!365172 (filterSubseq!19 lt!365168 lambda!41166))))

(declare-fun lt!365167 () Unit!15853)

(assert (=> b!1090924 (= lt!365167 (filterSubseq!19 lt!365168 lambda!41165))))

(declare-fun lt!365179 () Unit!15853)

(assert (=> b!1090924 (= lt!365179 (filterSubseq!19 lt!365168 lambda!41164))))

(declare-fun b!1090925 () Bool)

(declare-fun Unit!15855 () Unit!15853)

(assert (=> b!1090925 (= e!690309 Unit!15855)))

(declare-fun b!1090926 () Bool)

(declare-fun e!690298 () Bool)

(declare-fun tp!326444 () Bool)

(declare-fun inv!13390 (Conc!3175) Bool)

(assert (=> b!1090926 (= e!690298 (and (inv!13390 (c!184865 objs!8)) tp!326444))))

(declare-fun b!1090927 () Bool)

(declare-fun e!690307 () Unit!15853)

(declare-fun Unit!15856 () Unit!15853)

(assert (=> b!1090927 (= e!690307 Unit!15856)))

(declare-fun b!1090928 () Bool)

(assert (=> b!1090928 (= e!690305 (not e!690302))))

(declare-fun res!484804 () Bool)

(assert (=> b!1090928 (=> res!484804 e!690302)))

(declare-fun size!8083 (BalanceConc!6364) Int)

(assert (=> b!1090928 (= res!484804 (>= (size!8083 lt!365176) lt!365162))))

(declare-fun e!690297 () Bool)

(assert (=> b!1090928 e!690297))

(declare-fun res!484802 () Bool)

(assert (=> b!1090928 (=> res!484802 e!690297)))

(declare-fun lt!365174 () Bool)

(assert (=> b!1090928 (= res!484802 lt!365174)))

(declare-fun isEmpty!6652 (List!10474) Bool)

(assert (=> b!1090928 (= lt!365174 (isEmpty!6652 lt!365168))))

(declare-fun lt!365180 () Unit!15853)

(declare-fun lemmaNotForallFilterShorter!25 (List!10474 Int) Unit!15853)

(assert (=> b!1090928 (= lt!365180 (lemmaNotForallFilterShorter!25 lt!365168 lambda!41164))))

(assert (=> b!1090928 (= lt!365168 (list!3748 objs!8))))

(declare-fun lt!365163 () Unit!15853)

(assert (=> b!1090928 (= lt!365163 e!690307)))

(declare-fun c!184860 () Bool)

(declare-fun forall!2327 (BalanceConc!6364 Int) Bool)

(assert (=> b!1090928 (= c!184860 (forall!2327 objs!8 lambda!41164))))

(declare-fun b!1090929 () Bool)

(declare-fun e!690301 () Bool)

(assert (=> b!1090929 (= e!690301 e!690310)))

(declare-fun res!484801 () Bool)

(assert (=> b!1090929 (=> (not res!484801) (not e!690310))))

(assert (=> b!1090929 (= res!484801 (> lt!365162 1))))

(assert (=> b!1090929 (= lt!365162 (size!8083 objs!8))))

(declare-fun b!1090930 () Bool)

(declare-fun err!1913 () Unit!15853)

(assert (=> b!1090930 (= e!690307 err!1913)))

(declare-fun lt!365181 () Unit!15853)

(assert (=> b!1090930 (= lt!365181 (forallContained!484 (list!3748 objs!8) lambda!41164 lt!365171))))

(assert (=> b!1090930 true))

(declare-fun b!1090931 () Bool)

(declare-fun e!690304 () Bool)

(declare-fun size!8084 (List!10474) Int)

(declare-fun filter!229 (List!10474 Int) List!10474)

(assert (=> b!1090931 (= e!690304 (< (size!8084 (filter!229 lt!365168 lambda!41166)) (size!8084 lt!365168)))))

(declare-fun b!1090932 () Bool)

(assert (=> b!1090932 (= e!690308 e!690299)))

(declare-fun res!484805 () Bool)

(assert (=> b!1090932 (=> res!484805 e!690299)))

(assert (=> b!1090932 (= res!484805 (>= (size!8083 lt!365166) lt!365162))))

(assert (=> b!1090932 e!690304))

(declare-fun res!484800 () Bool)

(assert (=> b!1090932 (=> res!484800 e!690304)))

(assert (=> b!1090932 (= res!484800 lt!365174)))

(declare-fun lt!365183 () Unit!15853)

(assert (=> b!1090932 (= lt!365183 (lemmaNotForallFilterShorter!25 lt!365168 lambda!41166))))

(declare-fun lt!365170 () Unit!15853)

(assert (=> b!1090932 (= lt!365170 e!690303)))

(declare-fun c!184858 () Bool)

(assert (=> b!1090932 (= c!184858 (forall!2327 objs!8 lambda!41166))))

(declare-fun b!1090933 () Bool)

(assert (=> b!1090933 (= e!690297 (< (size!8084 (filter!229 lt!365168 lambda!41164)) (size!8084 lt!365168)))))

(declare-fun b!1090934 () Bool)

(declare-fun Unit!15857 () Unit!15853)

(assert (=> b!1090934 (= e!690300 Unit!15857)))

(declare-fun b!1090935 () Bool)

(declare-fun err!1911 () Unit!15853)

(assert (=> b!1090935 (= e!690309 err!1911)))

(declare-fun lt!365177 () Unit!15853)

(assert (=> b!1090935 (= lt!365177 (forallContained!484 (list!3748 lt!365166) lambda!41166 lt!365171))))

(assert (=> b!1090935 true))

(declare-fun b!1090923 () Bool)

(declare-fun Unit!15858 () Unit!15853)

(assert (=> b!1090923 (= e!690303 Unit!15858)))

(declare-fun res!484803 () Bool)

(assert (=> start!93302 (=> (not res!484803) (not e!690301))))

(assert (=> start!93302 (= res!484803 (forall!2327 objs!8 lambda!41163))))

(assert (=> start!93302 e!690301))

(declare-fun inv!13391 (BalanceConc!6364) Bool)

(assert (=> start!93302 (and (inv!13391 objs!8) e!690298)))

(assert (= (and start!93302 res!484803) b!1090929))

(assert (= (and b!1090929 res!484801) b!1090918))

(assert (= (and b!1090918 res!484798) b!1090921))

(assert (= (and b!1090921 c!184859) b!1090920))

(assert (= (and b!1090921 (not c!184859)) b!1090934))

(assert (= (and b!1090921 res!484797) b!1090928))

(assert (= (and b!1090928 c!184860) b!1090930))

(assert (= (and b!1090928 (not c!184860)) b!1090927))

(assert (= (and b!1090928 (not res!484802)) b!1090933))

(assert (= (and b!1090928 (not res!484804)) b!1090922))

(assert (= (and b!1090922 c!184861) b!1090935))

(assert (= (and b!1090922 (not c!184861)) b!1090925))

(assert (= (and b!1090922 (not res!484799)) b!1090932))

(assert (= (and b!1090932 c!184858) b!1090919))

(assert (= (and b!1090932 (not c!184858)) b!1090923))

(assert (= (and b!1090932 (not res!484800)) b!1090931))

(assert (= (and b!1090932 (not res!484805)) b!1090924))

(assert (= start!93302 b!1090926))

(declare-fun m!1241327 () Bool)

(assert (=> b!1090926 m!1241327))

(declare-fun m!1241329 () Bool)

(assert (=> b!1090929 m!1241329))

(declare-fun m!1241331 () Bool)

(assert (=> start!93302 m!1241331))

(declare-fun m!1241333 () Bool)

(assert (=> start!93302 m!1241333))

(declare-fun m!1241335 () Bool)

(assert (=> b!1090922 m!1241335))

(declare-fun m!1241337 () Bool)

(assert (=> b!1090935 m!1241337))

(assert (=> b!1090935 m!1241337))

(declare-fun m!1241339 () Bool)

(assert (=> b!1090935 m!1241339))

(declare-fun m!1241341 () Bool)

(assert (=> b!1090924 m!1241341))

(declare-fun m!1241343 () Bool)

(assert (=> b!1090924 m!1241343))

(declare-fun m!1241345 () Bool)

(assert (=> b!1090924 m!1241345))

(declare-fun m!1241347 () Bool)

(assert (=> b!1090924 m!1241347))

(declare-fun m!1241349 () Bool)

(assert (=> b!1090924 m!1241349))

(assert (=> b!1090924 m!1241347))

(declare-fun m!1241351 () Bool)

(assert (=> b!1090931 m!1241351))

(assert (=> b!1090931 m!1241351))

(declare-fun m!1241353 () Bool)

(assert (=> b!1090931 m!1241353))

(declare-fun m!1241355 () Bool)

(assert (=> b!1090931 m!1241355))

(declare-fun m!1241357 () Bool)

(assert (=> b!1090918 m!1241357))

(declare-fun m!1241359 () Bool)

(assert (=> b!1090918 m!1241359))

(declare-fun m!1241361 () Bool)

(assert (=> b!1090918 m!1241361))

(declare-fun m!1241363 () Bool)

(assert (=> b!1090918 m!1241363))

(assert (=> b!1090918 m!1241347))

(declare-fun m!1241365 () Bool)

(assert (=> b!1090932 m!1241365))

(declare-fun m!1241367 () Bool)

(assert (=> b!1090932 m!1241367))

(declare-fun m!1241369 () Bool)

(assert (=> b!1090932 m!1241369))

(declare-fun m!1241371 () Bool)

(assert (=> b!1090920 m!1241371))

(assert (=> b!1090920 m!1241371))

(declare-fun m!1241373 () Bool)

(assert (=> b!1090920 m!1241373))

(declare-fun m!1241375 () Bool)

(assert (=> b!1090930 m!1241375))

(assert (=> b!1090930 m!1241375))

(declare-fun m!1241377 () Bool)

(assert (=> b!1090930 m!1241377))

(declare-fun m!1241379 () Bool)

(assert (=> b!1090919 m!1241379))

(declare-fun m!1241381 () Bool)

(assert (=> b!1090933 m!1241381))

(assert (=> b!1090933 m!1241381))

(declare-fun m!1241383 () Bool)

(assert (=> b!1090933 m!1241383))

(assert (=> b!1090933 m!1241355))

(assert (=> b!1090928 m!1241375))

(declare-fun m!1241385 () Bool)

(assert (=> b!1090928 m!1241385))

(declare-fun m!1241387 () Bool)

(assert (=> b!1090928 m!1241387))

(declare-fun m!1241389 () Bool)

(assert (=> b!1090928 m!1241389))

(declare-fun m!1241391 () Bool)

(assert (=> b!1090928 m!1241391))

(declare-fun m!1241393 () Bool)

(assert (=> b!1090921 m!1241393))

(check-sat (not b!1090922) (not b!1090920) (not start!93302) (not b!1090932) (not b!1090935) (not b!1090929) (not b!1090924) (not b!1090921) (not b!1090919) (not b!1090945) (not b!1090933) (not b!1090947) (not b!1090926) (not b!1090944) (not b!1090930) (not b!1090918) (not b!1090942) (not b!1090928) (not b!1090946) (not b!1090931) (not b!1090943))
(check-sat)
