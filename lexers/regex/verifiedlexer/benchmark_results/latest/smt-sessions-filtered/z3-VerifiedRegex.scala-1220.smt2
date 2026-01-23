; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64070 () Bool)

(assert start!64070)

(declare-fun b!657253 () Bool)

(assert (=> b!657253 true))

(declare-fun b!657250 () Bool)

(declare-fun e!406467 () Bool)

(declare-fun e!406472 () Bool)

(assert (=> b!657250 (= e!406467 e!406472)))

(declare-fun res!291570 () Bool)

(assert (=> b!657250 (=> (not res!291570) (not e!406472))))

(declare-fun e!406466 () Bool)

(assert (=> b!657250 (= res!291570 e!406466)))

(declare-fun res!291568 () Bool)

(assert (=> b!657250 (=> res!291568 e!406466)))

(declare-datatypes ((List!7066 0))(
  ( (Nil!7052) (Cons!7052 (h!12453 (_ BitVec 16)) (t!86005 List!7066)) )
))
(declare-datatypes ((TokenValue!1444 0))(
  ( (FloatLiteralValue!2888 (text!10553 List!7066)) (TokenValueExt!1443 (__x!5020 Int)) (Broken!7220 (value!45310 List!7066)) (Object!1457) (End!1444) (Def!1444) (Underscore!1444) (Match!1444) (Else!1444) (Error!1444) (Case!1444) (If!1444) (Extends!1444) (Abstract!1444) (Class!1444) (Val!1444) (DelimiterValue!2888 (del!1504 List!7066)) (KeywordValue!1450 (value!45311 List!7066)) (CommentValue!2888 (value!45312 List!7066)) (WhitespaceValue!2888 (value!45313 List!7066)) (IndentationValue!1444 (value!45314 List!7066)) (String!8957) (Int32!1444) (Broken!7221 (value!45315 List!7066)) (Boolean!1445) (Unit!12288) (OperatorValue!1447 (op!1504 List!7066)) (IdentifierValue!2888 (value!45316 List!7066)) (IdentifierValue!2889 (value!45317 List!7066)) (WhitespaceValue!2889 (value!45318 List!7066)) (True!2888) (False!2888) (Broken!7222 (value!45319 List!7066)) (Broken!7223 (value!45320 List!7066)) (True!2889) (RightBrace!1444) (RightBracket!1444) (Colon!1444) (Null!1444) (Comma!1444) (LeftBracket!1444) (False!2889) (LeftBrace!1444) (ImaginaryLiteralValue!1444 (text!10554 List!7066)) (StringLiteralValue!4332 (value!45321 List!7066)) (EOFValue!1444 (value!45322 List!7066)) (IdentValue!1444 (value!45323 List!7066)) (DelimiterValue!2889 (value!45324 List!7066)) (DedentValue!1444 (value!45325 List!7066)) (NewLineValue!1444 (value!45326 List!7066)) (IntegerValue!4332 (value!45327 (_ BitVec 32)) (text!10555 List!7066)) (IntegerValue!4333 (value!45328 Int) (text!10556 List!7066)) (Times!1444) (Or!1444) (Equal!1444) (Minus!1444) (Broken!7224 (value!45329 List!7066)) (And!1444) (Div!1444) (LessEqual!1444) (Mod!1444) (Concat!3189) (Not!1444) (Plus!1444) (SpaceValue!1444 (value!45330 List!7066)) (IntegerValue!4334 (value!45331 Int) (text!10557 List!7066)) (StringLiteralValue!4333 (text!10558 List!7066)) (FloatLiteralValue!2889 (text!10559 List!7066)) (BytesLiteralValue!1444 (value!45332 List!7066)) (CommentValue!2889 (value!45333 List!7066)) (StringLiteralValue!4334 (value!45334 List!7066)) (ErrorTokenValue!1444 (msg!1505 List!7066)) )
))
(declare-datatypes ((Regex!1745 0))(
  ( (ElementMatch!1745 (c!118282 (_ BitVec 16))) (Concat!3190 (regOne!4002 Regex!1745) (regTwo!4002 Regex!1745)) (EmptyExpr!1745) (Star!1745 (reg!2074 Regex!1745)) (EmptyLang!1745) (Union!1745 (regOne!4003 Regex!1745) (regTwo!4003 Regex!1745)) )
))
(declare-datatypes ((String!8958 0))(
  ( (String!8959 (value!45335 String)) )
))
(declare-datatypes ((IArray!4877 0))(
  ( (IArray!4878 (innerList!2496 List!7066)) )
))
(declare-datatypes ((Conc!2438 0))(
  ( (Node!2438 (left!5648 Conc!2438) (right!5978 Conc!2438) (csize!5106 Int) (cheight!2649 Int)) (Leaf!3659 (xs!5079 IArray!4877) (csize!5107 Int)) (Empty!2438) )
))
(declare-datatypes ((BalanceConc!4888 0))(
  ( (BalanceConc!4889 (c!118283 Conc!2438)) )
))
(declare-datatypes ((TokenValueInjection!2640 0))(
  ( (TokenValueInjection!2641 (toValue!2351 Int) (toChars!2210 Int)) )
))
(declare-datatypes ((Rule!2620 0))(
  ( (Rule!2621 (regex!1410 Regex!1745) (tag!1672 String!8958) (isSeparator!1410 Bool) (transformation!1410 TokenValueInjection!2640)) )
))
(declare-datatypes ((Token!2542 0))(
  ( (Token!2543 (value!45336 TokenValue!1444) (rule!2205 Rule!2620) (size!5598 Int) (originalCharacters!1442 List!7066)) )
))
(declare-fun lt!280017 () Token!2542)

(declare-fun isKeywordValue!0 (Token!2542 TokenValue!1444) Bool)

(assert (=> b!657250 (= res!291568 (isKeywordValue!0 lt!280017 LeftBrace!1444))))

(declare-datatypes ((List!7067 0))(
  ( (Nil!7053) (Cons!7053 (h!12454 Token!2542) (t!86006 List!7067)) )
))
(declare-datatypes ((IArray!4879 0))(
  ( (IArray!4880 (innerList!2497 List!7067)) )
))
(declare-datatypes ((Conc!2439 0))(
  ( (Node!2439 (left!5649 Conc!2439) (right!5979 Conc!2439) (csize!5108 Int) (cheight!2650 Int)) (Leaf!3660 (xs!5080 IArray!4879) (csize!5109 Int)) (Empty!2439) )
))
(declare-datatypes ((BalanceConc!4890 0))(
  ( (BalanceConc!4891 (c!118284 Conc!2439)) )
))
(declare-fun ts!14 () BalanceConc!4890)

(declare-fun from!502 () Int)

(declare-fun apply!1699 (BalanceConc!4890 Int) Token!2542)

(assert (=> b!657250 (= lt!280017 (apply!1699 ts!14 from!502))))

(declare-fun b!657251 () Bool)

(declare-fun e!406473 () Bool)

(assert (=> b!657251 (= e!406472 e!406473)))

(declare-fun res!291569 () Bool)

(assert (=> b!657251 (=> (not res!291569) (not e!406473))))

(declare-fun lambda!20327 () Int)

(declare-datatypes ((List!7068 0))(
  ( (Nil!7054) (Cons!7054 (h!12455 Int) (t!86007 List!7068)) )
))
(declare-fun lt!280020 () List!7068)

(declare-datatypes ((IArray!4881 0))(
  ( (IArray!4882 (innerList!2498 List!7068)) )
))
(declare-datatypes ((Conc!2440 0))(
  ( (Node!2440 (left!5650 Conc!2440) (right!5980 Conc!2440) (csize!5110 Int) (cheight!2651 Int)) (Leaf!3661 (xs!5081 IArray!4881) (csize!5111 Int)) (Empty!2440) )
))
(declare-datatypes ((BalanceConc!4892 0))(
  ( (BalanceConc!4893 (c!118285 Conc!2440)) )
))
(declare-fun acc!218 () BalanceConc!4892)

(declare-fun forall!1860 (BalanceConc!4892 Int) Bool)

(declare-fun ++!1884 (BalanceConc!4892 BalanceConc!4892) BalanceConc!4892)

(declare-fun seqFromList!1460 (List!7068) BalanceConc!4892)

(assert (=> b!657251 (= res!291569 (forall!1860 (++!1884 acc!218 (seqFromList!1460 lt!280020)) lambda!20327))))

(declare-datatypes ((Unit!12289 0))(
  ( (Unit!12290) )
))
(declare-fun lt!280016 () Unit!12289)

(declare-fun lemmaConcatPreservesForall!71 (List!7068 List!7068 Int) Unit!12289)

(declare-fun list!3009 (BalanceConc!4892) List!7068)

(assert (=> b!657251 (= lt!280016 (lemmaConcatPreservesForall!71 (list!3009 acc!218) lt!280020 lambda!20327))))

(assert (=> b!657251 (= lt!280020 (Cons!7054 from!502 Nil!7054))))

(declare-fun b!657252 () Bool)

(declare-fun e!406468 () Bool)

(assert (=> b!657252 (= e!406468 e!406467)))

(declare-fun res!291564 () Bool)

(assert (=> b!657252 (=> (not res!291564) (not e!406467))))

(declare-fun size!101 () Int)

(declare-fun lt!280019 () Int)

(assert (=> b!657252 (= res!291564 (and (<= from!502 lt!280019) (= lt!280019 size!101)))))

(declare-fun size!5599 (BalanceConc!4890) Int)

(assert (=> b!657252 (= lt!280019 (size!5599 ts!14))))

(declare-fun res!291571 () Bool)

(assert (=> b!657253 (=> (not res!291571) (not e!406467))))

(assert (=> b!657253 (= res!291571 (forall!1860 acc!218 lambda!20327))))

(declare-fun b!657254 () Bool)

(declare-fun e!406470 () Bool)

(assert (=> b!657254 (= e!406473 e!406470)))

(declare-fun res!291567 () Bool)

(assert (=> b!657254 (=> (not res!291567) (not e!406470))))

(assert (=> b!657254 (= res!291567 (and (>= (+ 1 from!502) 0) (<= (+ 1 from!502) lt!280019)))))

(declare-fun lt!280018 () BalanceConc!4892)

(declare-fun append!247 (BalanceConc!4892 Int) BalanceConc!4892)

(assert (=> b!657254 (= lt!280018 (append!247 acc!218 from!502))))

(declare-fun b!657255 () Bool)

(declare-fun res!291566 () Bool)

(assert (=> b!657255 (=> (not res!291566) (not e!406472))))

(assert (=> b!657255 (= res!291566 (forall!1860 acc!218 lambda!20327))))

(declare-fun res!291572 () Bool)

(assert (=> start!64070 (=> (not res!291572) (not e!406468))))

(assert (=> start!64070 (= res!291572 (>= from!502 0))))

(assert (=> start!64070 e!406468))

(assert (=> start!64070 true))

(declare-fun e!406471 () Bool)

(declare-fun inv!8931 (BalanceConc!4892) Bool)

(assert (=> start!64070 (and (inv!8931 acc!218) e!406471)))

(declare-fun e!406469 () Bool)

(declare-fun inv!8932 (BalanceConc!4890) Bool)

(assert (=> start!64070 (and (inv!8932 ts!14) e!406469)))

(declare-fun b!657249 () Bool)

(declare-fun tp!200714 () Bool)

(declare-fun inv!8933 (Conc!2439) Bool)

(assert (=> b!657249 (= e!406469 (and (inv!8933 (c!118284 ts!14)) tp!200714))))

(declare-fun b!657256 () Bool)

(assert (=> b!657256 (= e!406470 (not (forall!1860 lt!280018 lambda!20327)))))

(declare-fun b!657257 () Bool)

(declare-fun tp!200715 () Bool)

(declare-fun inv!8934 (Conc!2440) Bool)

(assert (=> b!657257 (= e!406471 (and (inv!8934 (c!118285 acc!218)) tp!200715))))

(declare-fun b!657258 () Bool)

(declare-fun res!291565 () Bool)

(assert (=> b!657258 (=> (not res!291565) (not e!406467))))

(assert (=> b!657258 (= res!291565 (< from!502 lt!280019))))

(declare-fun b!657259 () Bool)

(assert (=> b!657259 (= e!406466 (isKeywordValue!0 lt!280017 RightBrace!1444))))

(assert (= (and start!64070 res!291572) b!657252))

(assert (= (and b!657252 res!291564) b!657253))

(assert (= (and b!657253 res!291571) b!657258))

(assert (= (and b!657258 res!291565) b!657250))

(assert (= (and b!657250 (not res!291568)) b!657259))

(assert (= (and b!657250 res!291570) b!657255))

(assert (= (and b!657255 res!291566) b!657251))

(assert (= (and b!657251 res!291569) b!657254))

(assert (= (and b!657254 res!291567) b!657256))

(assert (= start!64070 b!657257))

(assert (= start!64070 b!657249))

(declare-fun m!922957 () Bool)

(assert (=> b!657259 m!922957))

(declare-fun m!922959 () Bool)

(assert (=> b!657257 m!922959))

(declare-fun m!922961 () Bool)

(assert (=> b!657250 m!922961))

(declare-fun m!922963 () Bool)

(assert (=> b!657250 m!922963))

(declare-fun m!922965 () Bool)

(assert (=> b!657256 m!922965))

(declare-fun m!922967 () Bool)

(assert (=> b!657252 m!922967))

(declare-fun m!922969 () Bool)

(assert (=> b!657251 m!922969))

(assert (=> b!657251 m!922969))

(declare-fun m!922971 () Bool)

(assert (=> b!657251 m!922971))

(declare-fun m!922973 () Bool)

(assert (=> b!657251 m!922973))

(declare-fun m!922975 () Bool)

(assert (=> b!657251 m!922975))

(assert (=> b!657251 m!922975))

(declare-fun m!922977 () Bool)

(assert (=> b!657251 m!922977))

(assert (=> b!657251 m!922973))

(declare-fun m!922979 () Bool)

(assert (=> b!657254 m!922979))

(declare-fun m!922981 () Bool)

(assert (=> start!64070 m!922981))

(declare-fun m!922983 () Bool)

(assert (=> start!64070 m!922983))

(declare-fun m!922985 () Bool)

(assert (=> b!657255 m!922985))

(assert (=> b!657253 m!922985))

(declare-fun m!922987 () Bool)

(assert (=> b!657249 m!922987))

(check-sat (not b!657249) (not b!657254) (not b!657256) (not b!657251) (not start!64070) (not b!657250) (not b!657257) (not b!657259) (not b!657253) (not b!657255) (not b!657252))
(check-sat)
(get-model)

(declare-fun d!225209 () Bool)

(declare-fun lt!280023 () Bool)

(declare-fun forall!1863 (List!7068 Int) Bool)

(assert (=> d!225209 (= lt!280023 (forall!1863 (list!3009 acc!218) lambda!20327))))

(declare-fun forall!1864 (Conc!2440 Int) Bool)

(assert (=> d!225209 (= lt!280023 (forall!1864 (c!118285 acc!218) lambda!20327))))

(assert (=> d!225209 (= (forall!1860 acc!218 lambda!20327) lt!280023)))

(declare-fun bs!94227 () Bool)

(assert (= bs!94227 d!225209))

(assert (=> bs!94227 m!922969))

(assert (=> bs!94227 m!922969))

(declare-fun m!922989 () Bool)

(assert (=> bs!94227 m!922989))

(declare-fun m!922991 () Bool)

(assert (=> bs!94227 m!922991))

(assert (=> b!657253 d!225209))

(declare-fun d!225213 () Bool)

(declare-fun choose!511 (Token!2542 TokenValue!1444) Bool)

(assert (=> d!225213 (= (isKeywordValue!0 lt!280017 RightBrace!1444) (choose!511 lt!280017 RightBrace!1444))))

(declare-fun bs!94228 () Bool)

(assert (= bs!94228 d!225213))

(declare-fun m!922993 () Bool)

(assert (=> bs!94228 m!922993))

(assert (=> b!657259 d!225213))

(declare-fun d!225215 () Bool)

(declare-fun e!406476 () Bool)

(assert (=> d!225215 e!406476))

(declare-fun res!291579 () Bool)

(assert (=> d!225215 (=> (not res!291579) (not e!406476))))

(declare-fun isBalanced!646 (Conc!2440) Bool)

(declare-fun append!249 (Conc!2440 Int) Conc!2440)

(assert (=> d!225215 (= res!291579 (isBalanced!646 (append!249 (c!118285 acc!218) from!502)))))

(declare-fun lt!280032 () BalanceConc!4892)

(assert (=> d!225215 (= lt!280032 (BalanceConc!4893 (append!249 (c!118285 acc!218) from!502)))))

(assert (=> d!225215 (= (append!247 acc!218 from!502) lt!280032)))

(declare-fun b!657264 () Bool)

(declare-fun $colon+!52 (List!7068 Int) List!7068)

(assert (=> b!657264 (= e!406476 (= (list!3009 lt!280032) ($colon+!52 (list!3009 acc!218) from!502)))))

(assert (= (and d!225215 res!291579) b!657264))

(declare-fun m!923005 () Bool)

(assert (=> d!225215 m!923005))

(assert (=> d!225215 m!923005))

(declare-fun m!923007 () Bool)

(assert (=> d!225215 m!923007))

(declare-fun m!923009 () Bool)

(assert (=> b!657264 m!923009))

(assert (=> b!657264 m!922969))

(assert (=> b!657264 m!922969))

(declare-fun m!923011 () Bool)

(assert (=> b!657264 m!923011))

(assert (=> b!657254 d!225215))

(declare-fun d!225221 () Bool)

(declare-fun c!118290 () Bool)

(get-info :version)

(assert (=> d!225221 (= c!118290 ((_ is Node!2439) (c!118284 ts!14)))))

(declare-fun e!406484 () Bool)

(assert (=> d!225221 (= (inv!8933 (c!118284 ts!14)) e!406484)))

(declare-fun b!657274 () Bool)

(declare-fun inv!8937 (Conc!2439) Bool)

(assert (=> b!657274 (= e!406484 (inv!8937 (c!118284 ts!14)))))

(declare-fun b!657275 () Bool)

(declare-fun e!406485 () Bool)

(assert (=> b!657275 (= e!406484 e!406485)))

(declare-fun res!291585 () Bool)

(assert (=> b!657275 (= res!291585 (not ((_ is Leaf!3660) (c!118284 ts!14))))))

(assert (=> b!657275 (=> res!291585 e!406485)))

(declare-fun b!657276 () Bool)

(declare-fun inv!8938 (Conc!2439) Bool)

(assert (=> b!657276 (= e!406485 (inv!8938 (c!118284 ts!14)))))

(assert (= (and d!225221 c!118290) b!657274))

(assert (= (and d!225221 (not c!118290)) b!657275))

(assert (= (and b!657275 (not res!291585)) b!657276))

(declare-fun m!923023 () Bool)

(assert (=> b!657274 m!923023))

(declare-fun m!923025 () Bool)

(assert (=> b!657276 m!923025))

(assert (=> b!657249 d!225221))

(assert (=> b!657255 d!225209))

(declare-fun d!225227 () Bool)

(assert (=> d!225227 (= (isKeywordValue!0 lt!280017 LeftBrace!1444) (choose!511 lt!280017 LeftBrace!1444))))

(declare-fun bs!94232 () Bool)

(assert (= bs!94232 d!225227))

(declare-fun m!923027 () Bool)

(assert (=> bs!94232 m!923027))

(assert (=> b!657250 d!225227))

(declare-fun d!225229 () Bool)

(declare-fun lt!280041 () Token!2542)

(declare-fun apply!1702 (List!7067 Int) Token!2542)

(declare-fun list!3011 (BalanceConc!4890) List!7067)

(assert (=> d!225229 (= lt!280041 (apply!1702 (list!3011 ts!14) from!502))))

(declare-fun apply!1703 (Conc!2439 Int) Token!2542)

(assert (=> d!225229 (= lt!280041 (apply!1703 (c!118284 ts!14) from!502))))

(declare-fun e!406491 () Bool)

(assert (=> d!225229 e!406491))

(declare-fun res!291591 () Bool)

(assert (=> d!225229 (=> (not res!291591) (not e!406491))))

(assert (=> d!225229 (= res!291591 (<= 0 from!502))))

(assert (=> d!225229 (= (apply!1699 ts!14 from!502) lt!280041)))

(declare-fun b!657282 () Bool)

(assert (=> b!657282 (= e!406491 (< from!502 (size!5599 ts!14)))))

(assert (= (and d!225229 res!291591) b!657282))

(declare-fun m!923033 () Bool)

(assert (=> d!225229 m!923033))

(assert (=> d!225229 m!923033))

(declare-fun m!923035 () Bool)

(assert (=> d!225229 m!923035))

(declare-fun m!923037 () Bool)

(assert (=> d!225229 m!923037))

(assert (=> b!657282 m!922967))

(assert (=> b!657250 d!225229))

(declare-fun d!225233 () Bool)

(assert (=> d!225233 (= (inv!8931 acc!218) (isBalanced!646 (c!118285 acc!218)))))

(declare-fun bs!94233 () Bool)

(assert (= bs!94233 d!225233))

(declare-fun m!923039 () Bool)

(assert (=> bs!94233 m!923039))

(assert (=> start!64070 d!225233))

(declare-fun d!225235 () Bool)

(declare-fun isBalanced!648 (Conc!2439) Bool)

(assert (=> d!225235 (= (inv!8932 ts!14) (isBalanced!648 (c!118284 ts!14)))))

(declare-fun bs!94235 () Bool)

(assert (= bs!94235 d!225235))

(declare-fun m!923051 () Bool)

(assert (=> bs!94235 m!923051))

(assert (=> start!64070 d!225235))

(declare-fun d!225241 () Bool)

(declare-fun lt!280043 () Bool)

(assert (=> d!225241 (= lt!280043 (forall!1863 (list!3009 lt!280018) lambda!20327))))

(assert (=> d!225241 (= lt!280043 (forall!1864 (c!118285 lt!280018) lambda!20327))))

(assert (=> d!225241 (= (forall!1860 lt!280018 lambda!20327) lt!280043)))

(declare-fun bs!94237 () Bool)

(assert (= bs!94237 d!225241))

(declare-fun m!923055 () Bool)

(assert (=> bs!94237 m!923055))

(assert (=> bs!94237 m!923055))

(declare-fun m!923057 () Bool)

(assert (=> bs!94237 m!923057))

(declare-fun m!923059 () Bool)

(assert (=> bs!94237 m!923059))

(assert (=> b!657256 d!225241))

(declare-fun b!657317 () Bool)

(declare-fun res!291616 () Bool)

(declare-fun e!406508 () Bool)

(assert (=> b!657317 (=> (not res!291616) (not e!406508))))

(declare-fun ++!1887 (Conc!2440 Conc!2440) Conc!2440)

(assert (=> b!657317 (= res!291616 (isBalanced!646 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))))

(declare-fun b!657319 () Bool)

(declare-fun res!291615 () Bool)

(assert (=> b!657319 (=> (not res!291615) (not e!406508))))

(declare-fun height!296 (Conc!2440) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!657319 (= res!291615 (>= (height!296 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) (max!0 (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun lt!280048 () BalanceConc!4892)

(declare-fun b!657320 () Bool)

(declare-fun ++!1888 (List!7068 List!7068) List!7068)

(assert (=> b!657320 (= e!406508 (= (list!3009 lt!280048) (++!1888 (list!3009 acc!218) (list!3009 (seqFromList!1460 lt!280020)))))))

(declare-fun d!225245 () Bool)

(assert (=> d!225245 e!406508))

(declare-fun res!291617 () Bool)

(assert (=> d!225245 (=> (not res!291617) (not e!406508))))

(declare-fun appendAssocInst!127 (Conc!2440 Conc!2440) Bool)

(assert (=> d!225245 (= res!291617 (appendAssocInst!127 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))

(assert (=> d!225245 (= lt!280048 (BalanceConc!4893 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))))

(assert (=> d!225245 (= (++!1884 acc!218 (seqFromList!1460 lt!280020)) lt!280048)))

(declare-fun b!657318 () Bool)

(declare-fun res!291614 () Bool)

(assert (=> b!657318 (=> (not res!291614) (not e!406508))))

(assert (=> b!657318 (= res!291614 (<= (height!296 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) (+ (max!0 (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020)))) 1)))))

(assert (= (and d!225245 res!291617) b!657317))

(assert (= (and b!657317 res!291616) b!657318))

(assert (= (and b!657318 res!291614) b!657319))

(assert (= (and b!657319 res!291615) b!657320))

(declare-fun m!923067 () Bool)

(assert (=> b!657319 m!923067))

(assert (=> b!657319 m!923067))

(declare-fun m!923069 () Bool)

(assert (=> b!657319 m!923069))

(declare-fun m!923071 () Bool)

(assert (=> b!657319 m!923071))

(declare-fun m!923073 () Bool)

(assert (=> b!657319 m!923073))

(assert (=> b!657319 m!923071))

(assert (=> b!657319 m!923073))

(declare-fun m!923075 () Bool)

(assert (=> b!657319 m!923075))

(declare-fun m!923077 () Bool)

(assert (=> d!225245 m!923077))

(assert (=> d!225245 m!923067))

(declare-fun m!923079 () Bool)

(assert (=> b!657320 m!923079))

(assert (=> b!657320 m!922969))

(assert (=> b!657320 m!922973))

(declare-fun m!923081 () Bool)

(assert (=> b!657320 m!923081))

(assert (=> b!657320 m!922969))

(assert (=> b!657320 m!923081))

(declare-fun m!923083 () Bool)

(assert (=> b!657320 m!923083))

(assert (=> b!657318 m!923067))

(assert (=> b!657318 m!923067))

(assert (=> b!657318 m!923069))

(assert (=> b!657318 m!923071))

(assert (=> b!657318 m!923073))

(assert (=> b!657318 m!923071))

(assert (=> b!657318 m!923073))

(assert (=> b!657318 m!923075))

(assert (=> b!657317 m!923067))

(assert (=> b!657317 m!923067))

(declare-fun m!923085 () Bool)

(assert (=> b!657317 m!923085))

(assert (=> b!657251 d!225245))

(declare-fun d!225251 () Bool)

(declare-fun fromListB!634 (List!7068) BalanceConc!4892)

(assert (=> d!225251 (= (seqFromList!1460 lt!280020) (fromListB!634 lt!280020))))

(declare-fun bs!94239 () Bool)

(assert (= bs!94239 d!225251))

(declare-fun m!923107 () Bool)

(assert (=> bs!94239 m!923107))

(assert (=> b!657251 d!225251))

(declare-fun d!225255 () Bool)

(assert (=> d!225255 (forall!1863 (++!1888 (list!3009 acc!218) lt!280020) lambda!20327)))

(declare-fun lt!280052 () Unit!12289)

(declare-fun choose!4668 (List!7068 List!7068 Int) Unit!12289)

(assert (=> d!225255 (= lt!280052 (choose!4668 (list!3009 acc!218) lt!280020 lambda!20327))))

(assert (=> d!225255 (forall!1863 (list!3009 acc!218) lambda!20327)))

(assert (=> d!225255 (= (lemmaConcatPreservesForall!71 (list!3009 acc!218) lt!280020 lambda!20327) lt!280052)))

(declare-fun bs!94242 () Bool)

(assert (= bs!94242 d!225255))

(assert (=> bs!94242 m!922969))

(declare-fun m!923113 () Bool)

(assert (=> bs!94242 m!923113))

(assert (=> bs!94242 m!923113))

(declare-fun m!923115 () Bool)

(assert (=> bs!94242 m!923115))

(assert (=> bs!94242 m!922969))

(declare-fun m!923117 () Bool)

(assert (=> bs!94242 m!923117))

(assert (=> bs!94242 m!922969))

(assert (=> bs!94242 m!922989))

(assert (=> b!657251 d!225255))

(declare-fun d!225261 () Bool)

(declare-fun lt!280053 () Bool)

(assert (=> d!225261 (= lt!280053 (forall!1863 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))) lambda!20327))))

(assert (=> d!225261 (= lt!280053 (forall!1864 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020))) lambda!20327))))

(assert (=> d!225261 (= (forall!1860 (++!1884 acc!218 (seqFromList!1460 lt!280020)) lambda!20327) lt!280053)))

(declare-fun bs!94243 () Bool)

(assert (= bs!94243 d!225261))

(assert (=> bs!94243 m!922975))

(declare-fun m!923119 () Bool)

(assert (=> bs!94243 m!923119))

(assert (=> bs!94243 m!923119))

(declare-fun m!923121 () Bool)

(assert (=> bs!94243 m!923121))

(declare-fun m!923123 () Bool)

(assert (=> bs!94243 m!923123))

(assert (=> b!657251 d!225261))

(declare-fun d!225263 () Bool)

(declare-fun list!3013 (Conc!2440) List!7068)

(assert (=> d!225263 (= (list!3009 acc!218) (list!3013 (c!118285 acc!218)))))

(declare-fun bs!94245 () Bool)

(assert (= bs!94245 d!225263))

(declare-fun m!923127 () Bool)

(assert (=> bs!94245 m!923127))

(assert (=> b!657251 d!225263))

(declare-fun d!225265 () Bool)

(declare-fun c!118305 () Bool)

(assert (=> d!225265 (= c!118305 ((_ is Node!2440) (c!118285 acc!218)))))

(declare-fun e!406524 () Bool)

(assert (=> d!225265 (= (inv!8934 (c!118285 acc!218)) e!406524)))

(declare-fun b!657347 () Bool)

(declare-fun inv!8943 (Conc!2440) Bool)

(assert (=> b!657347 (= e!406524 (inv!8943 (c!118285 acc!218)))))

(declare-fun b!657348 () Bool)

(declare-fun e!406525 () Bool)

(assert (=> b!657348 (= e!406524 e!406525)))

(declare-fun res!291624 () Bool)

(assert (=> b!657348 (= res!291624 (not ((_ is Leaf!3661) (c!118285 acc!218))))))

(assert (=> b!657348 (=> res!291624 e!406525)))

(declare-fun b!657349 () Bool)

(declare-fun inv!8944 (Conc!2440) Bool)

(assert (=> b!657349 (= e!406525 (inv!8944 (c!118285 acc!218)))))

(assert (= (and d!225265 c!118305) b!657347))

(assert (= (and d!225265 (not c!118305)) b!657348))

(assert (= (and b!657348 (not res!291624)) b!657349))

(declare-fun m!923147 () Bool)

(assert (=> b!657347 m!923147))

(declare-fun m!923149 () Bool)

(assert (=> b!657349 m!923149))

(assert (=> b!657257 d!225265))

(declare-fun d!225271 () Bool)

(declare-fun lt!280060 () Int)

(declare-fun size!5602 (List!7067) Int)

(assert (=> d!225271 (= lt!280060 (size!5602 (list!3011 ts!14)))))

(declare-fun size!5603 (Conc!2439) Int)

(assert (=> d!225271 (= lt!280060 (size!5603 (c!118284 ts!14)))))

(assert (=> d!225271 (= (size!5599 ts!14) lt!280060)))

(declare-fun bs!94248 () Bool)

(assert (= bs!94248 d!225271))

(assert (=> bs!94248 m!923033))

(assert (=> bs!94248 m!923033))

(declare-fun m!923157 () Bool)

(assert (=> bs!94248 m!923157))

(declare-fun m!923159 () Bool)

(assert (=> bs!94248 m!923159))

(assert (=> b!657252 d!225271))

(declare-fun tp!200738 () Bool)

(declare-fun b!657361 () Bool)

(declare-fun tp!200737 () Bool)

(declare-fun e!406533 () Bool)

(assert (=> b!657361 (= e!406533 (and (inv!8933 (left!5649 (c!118284 ts!14))) tp!200737 (inv!8933 (right!5979 (c!118284 ts!14))) tp!200738))))

(declare-fun b!657363 () Bool)

(declare-fun e!406532 () Bool)

(declare-fun tp!200739 () Bool)

(assert (=> b!657363 (= e!406532 tp!200739)))

(declare-fun b!657362 () Bool)

(declare-fun inv!8945 (IArray!4879) Bool)

(assert (=> b!657362 (= e!406533 (and (inv!8945 (xs!5080 (c!118284 ts!14))) e!406532))))

(assert (=> b!657249 (= tp!200714 (and (inv!8933 (c!118284 ts!14)) e!406533))))

(assert (= (and b!657249 ((_ is Node!2439) (c!118284 ts!14))) b!657361))

(assert (= b!657362 b!657363))

(assert (= (and b!657249 ((_ is Leaf!3660) (c!118284 ts!14))) b!657362))

(declare-fun m!923161 () Bool)

(assert (=> b!657361 m!923161))

(declare-fun m!923163 () Bool)

(assert (=> b!657361 m!923163))

(declare-fun m!923165 () Bool)

(assert (=> b!657362 m!923165))

(assert (=> b!657249 m!922987))

(declare-fun b!657370 () Bool)

(declare-fun e!406538 () Bool)

(declare-fun tp!200744 () Bool)

(declare-fun tp!200745 () Bool)

(assert (=> b!657370 (= e!406538 (and (inv!8934 (left!5650 (c!118285 acc!218))) tp!200744 (inv!8934 (right!5980 (c!118285 acc!218))) tp!200745))))

(declare-fun b!657371 () Bool)

(declare-fun inv!8946 (IArray!4881) Bool)

(assert (=> b!657371 (= e!406538 (inv!8946 (xs!5081 (c!118285 acc!218))))))

(assert (=> b!657257 (= tp!200715 (and (inv!8934 (c!118285 acc!218)) e!406538))))

(assert (= (and b!657257 ((_ is Node!2440) (c!118285 acc!218))) b!657370))

(assert (= (and b!657257 ((_ is Leaf!3661) (c!118285 acc!218))) b!657371))

(declare-fun m!923167 () Bool)

(assert (=> b!657370 m!923167))

(declare-fun m!923169 () Bool)

(assert (=> b!657370 m!923169))

(declare-fun m!923171 () Bool)

(assert (=> b!657371 m!923171))

(assert (=> b!657257 m!922959))

(check-sat (not b!657349) (not d!225229) (not b!657318) (not d!225215) (not d!225227) (not b!657371) (not d!225241) (not b!657282) (not d!225245) (not b!657363) (not d!225213) (not b!657249) (not b!657264) (not b!657317) (not d!225261) (not d!225233) (not b!657257) (not d!225271) (not b!657370) (not b!657319) (not b!657276) (not d!225255) (not b!657361) (not d!225209) (not d!225263) (not b!657362) (not b!657347) (not d!225235) (not d!225251) (not b!657274) (not b!657320))
(check-sat)
(get-model)

(declare-fun d!225275 () Bool)

(declare-fun res!291639 () Bool)

(declare-fun e!406546 () Bool)

(assert (=> d!225275 (=> res!291639 e!406546)))

(assert (=> d!225275 (= res!291639 ((_ is Nil!7054) (list!3009 acc!218)))))

(assert (=> d!225275 (= (forall!1863 (list!3009 acc!218) lambda!20327) e!406546)))

(declare-fun b!657382 () Bool)

(declare-fun e!406547 () Bool)

(assert (=> b!657382 (= e!406546 e!406547)))

(declare-fun res!291640 () Bool)

(assert (=> b!657382 (=> (not res!291640) (not e!406547))))

(declare-fun dynLambda!3803 (Int Int) Bool)

(assert (=> b!657382 (= res!291640 (dynLambda!3803 lambda!20327 (h!12455 (list!3009 acc!218))))))

(declare-fun b!657383 () Bool)

(assert (=> b!657383 (= e!406547 (forall!1863 (t!86007 (list!3009 acc!218)) lambda!20327))))

(assert (= (and d!225275 (not res!291639)) b!657382))

(assert (= (and b!657382 res!291640) b!657383))

(declare-fun b_lambda!25637 () Bool)

(assert (=> (not b_lambda!25637) (not b!657382)))

(declare-fun m!923173 () Bool)

(assert (=> b!657382 m!923173))

(declare-fun m!923175 () Bool)

(assert (=> b!657383 m!923175))

(assert (=> d!225209 d!225275))

(assert (=> d!225209 d!225263))

(declare-fun b!657407 () Bool)

(declare-fun e!406565 () Bool)

(declare-fun e!406567 () Bool)

(assert (=> b!657407 (= e!406565 e!406567)))

(declare-fun c!118310 () Bool)

(assert (=> b!657407 (= c!118310 ((_ is Leaf!3661) (c!118285 acc!218)))))

(declare-fun b!657409 () Bool)

(declare-fun e!406566 () Bool)

(assert (=> b!657409 (= e!406567 e!406566)))

(declare-fun lt!280066 () Unit!12289)

(declare-fun lemmaForallConcat!51 (List!7068 List!7068 Int) Unit!12289)

(assert (=> b!657409 (= lt!280066 (lemmaForallConcat!51 (list!3013 (left!5650 (c!118285 acc!218))) (list!3013 (right!5980 (c!118285 acc!218))) lambda!20327))))

(declare-fun res!291659 () Bool)

(assert (=> b!657409 (= res!291659 (forall!1864 (left!5650 (c!118285 acc!218)) lambda!20327))))

(assert (=> b!657409 (=> (not res!291659) (not e!406566))))

(declare-fun d!225277 () Bool)

(declare-fun lt!280065 () Bool)

(assert (=> d!225277 (= lt!280065 (forall!1863 (list!3013 (c!118285 acc!218)) lambda!20327))))

(assert (=> d!225277 (= lt!280065 e!406565)))

(declare-fun res!291660 () Bool)

(assert (=> d!225277 (=> res!291660 e!406565)))

(assert (=> d!225277 (= res!291660 ((_ is Empty!2440) (c!118285 acc!218)))))

(assert (=> d!225277 (= (forall!1864 (c!118285 acc!218) lambda!20327) lt!280065)))

(declare-fun b!657408 () Bool)

(declare-fun forall!1866 (IArray!4881 Int) Bool)

(assert (=> b!657408 (= e!406567 (forall!1866 (xs!5081 (c!118285 acc!218)) lambda!20327))))

(declare-fun b!657410 () Bool)

(assert (=> b!657410 (= e!406566 (forall!1864 (right!5980 (c!118285 acc!218)) lambda!20327))))

(assert (= (and d!225277 (not res!291660)) b!657407))

(assert (= (and b!657407 c!118310) b!657408))

(assert (= (and b!657407 (not c!118310)) b!657409))

(assert (= (and b!657409 res!291659) b!657410))

(declare-fun m!923199 () Bool)

(assert (=> b!657409 m!923199))

(declare-fun m!923201 () Bool)

(assert (=> b!657409 m!923201))

(assert (=> b!657409 m!923199))

(assert (=> b!657409 m!923201))

(declare-fun m!923203 () Bool)

(assert (=> b!657409 m!923203))

(declare-fun m!923205 () Bool)

(assert (=> b!657409 m!923205))

(assert (=> d!225277 m!923127))

(assert (=> d!225277 m!923127))

(declare-fun m!923207 () Bool)

(assert (=> d!225277 m!923207))

(declare-fun m!923209 () Bool)

(assert (=> b!657408 m!923209))

(declare-fun m!923211 () Bool)

(assert (=> b!657410 m!923211))

(assert (=> d!225209 d!225277))

(declare-fun d!225289 () Bool)

(declare-fun res!291673 () Bool)

(declare-fun e!406579 () Bool)

(assert (=> d!225289 (=> (not res!291673) (not e!406579))))

(assert (=> d!225289 (= res!291673 (= (csize!5108 (c!118284 ts!14)) (+ (size!5603 (left!5649 (c!118284 ts!14))) (size!5603 (right!5979 (c!118284 ts!14))))))))

(assert (=> d!225289 (= (inv!8937 (c!118284 ts!14)) e!406579)))

(declare-fun b!657429 () Bool)

(declare-fun res!291674 () Bool)

(assert (=> b!657429 (=> (not res!291674) (not e!406579))))

(assert (=> b!657429 (= res!291674 (and (not (= (left!5649 (c!118284 ts!14)) Empty!2439)) (not (= (right!5979 (c!118284 ts!14)) Empty!2439))))))

(declare-fun b!657430 () Bool)

(declare-fun res!291675 () Bool)

(assert (=> b!657430 (=> (not res!291675) (not e!406579))))

(declare-fun height!298 (Conc!2439) Int)

(assert (=> b!657430 (= res!291675 (= (cheight!2650 (c!118284 ts!14)) (+ (max!0 (height!298 (left!5649 (c!118284 ts!14))) (height!298 (right!5979 (c!118284 ts!14)))) 1)))))

(declare-fun b!657431 () Bool)

(assert (=> b!657431 (= e!406579 (<= 0 (cheight!2650 (c!118284 ts!14))))))

(assert (= (and d!225289 res!291673) b!657429))

(assert (= (and b!657429 res!291674) b!657430))

(assert (= (and b!657430 res!291675) b!657431))

(declare-fun m!923227 () Bool)

(assert (=> d!225289 m!923227))

(declare-fun m!923229 () Bool)

(assert (=> d!225289 m!923229))

(declare-fun m!923231 () Bool)

(assert (=> b!657430 m!923231))

(declare-fun m!923233 () Bool)

(assert (=> b!657430 m!923233))

(assert (=> b!657430 m!923231))

(assert (=> b!657430 m!923233))

(declare-fun m!923235 () Bool)

(assert (=> b!657430 m!923235))

(assert (=> b!657274 d!225289))

(declare-fun d!225293 () Bool)

(assert (=> d!225293 (= (list!3009 lt!280032) (list!3013 (c!118285 lt!280032)))))

(declare-fun bs!94249 () Bool)

(assert (= bs!94249 d!225293))

(declare-fun m!923237 () Bool)

(assert (=> bs!94249 m!923237))

(assert (=> b!657264 d!225293))

(declare-fun b!657470 () Bool)

(declare-fun e!406599 () Bool)

(declare-fun call!42276 () (_ BitVec 32))

(declare-fun call!42277 () (_ BitVec 32))

(assert (=> b!657470 (= e!406599 (= call!42276 call!42277))))

(declare-fun b!657471 () Bool)

(assert (=> b!657471 (= e!406599 (= call!42276 (bvadd call!42277 #b00000000000000000000000000000001)))))

(declare-fun b!657472 () Bool)

(declare-fun e!406598 () List!7068)

(assert (=> b!657472 (= e!406598 (Cons!7054 (h!12455 (list!3009 acc!218)) ($colon+!52 (t!86007 (list!3009 acc!218)) from!502)))))

(declare-fun b!657469 () Bool)

(declare-fun res!291699 () Bool)

(declare-fun e!406600 () Bool)

(assert (=> b!657469 (=> (not res!291699) (not e!406600))))

(assert (=> b!657469 (= res!291699 e!406599)))

(declare-fun c!118323 () Bool)

(declare-fun isize!8 (List!7068) (_ BitVec 32))

(assert (=> b!657469 (= c!118323 (bvslt (isize!8 (list!3009 acc!218)) #b01111111111111111111111111111111))))

(declare-fun d!225295 () Bool)

(assert (=> d!225295 e!406600))

(declare-fun res!291701 () Bool)

(assert (=> d!225295 (=> (not res!291701) (not e!406600))))

(declare-fun lt!280081 () List!7068)

(assert (=> d!225295 (= res!291701 ((_ is Cons!7054) lt!280081))))

(assert (=> d!225295 (= lt!280081 e!406598)))

(declare-fun c!118322 () Bool)

(assert (=> d!225295 (= c!118322 ((_ is Nil!7054) (list!3009 acc!218)))))

(assert (=> d!225295 (= ($colon+!52 (list!3009 acc!218) from!502) lt!280081)))

(declare-fun b!657473 () Bool)

(declare-fun res!291702 () Bool)

(assert (=> b!657473 (=> (not res!291702) (not e!406600))))

(declare-fun size!5604 (List!7068) Int)

(assert (=> b!657473 (= res!291702 (= (size!5604 lt!280081) (+ (size!5604 (list!3009 acc!218)) 1)))))

(declare-fun b!657474 () Bool)

(assert (=> b!657474 (= e!406598 (Cons!7054 from!502 (list!3009 acc!218)))))

(declare-fun bm!42271 () Bool)

(assert (=> bm!42271 (= call!42276 (isize!8 lt!280081))))

(declare-fun b!657475 () Bool)

(assert (=> b!657475 (= e!406600 (= lt!280081 (++!1888 (list!3009 acc!218) (Cons!7054 from!502 Nil!7054))))))

(declare-fun b!657476 () Bool)

(declare-fun res!291700 () Bool)

(assert (=> b!657476 (=> (not res!291700) (not e!406600))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1171 (List!7068) (InoxSet Int))

(assert (=> b!657476 (= res!291700 (= (content!1171 lt!280081) ((_ map or) (content!1171 (list!3009 acc!218)) (store ((as const (Array Int Bool)) false) from!502 true))))))

(declare-fun bm!42272 () Bool)

(assert (=> bm!42272 (= call!42277 (isize!8 (list!3009 acc!218)))))

(assert (= (and d!225295 c!118322) b!657474))

(assert (= (and d!225295 (not c!118322)) b!657472))

(assert (= (and d!225295 res!291701) b!657473))

(assert (= (and b!657473 res!291702) b!657469))

(assert (= (and b!657469 c!118323) b!657471))

(assert (= (and b!657469 (not c!118323)) b!657470))

(assert (= (or b!657471 b!657470) bm!42272))

(assert (= (or b!657471 b!657470) bm!42271))

(assert (= (and b!657469 res!291699) b!657476))

(assert (= (and b!657476 res!291700) b!657475))

(assert (=> bm!42272 m!922969))

(declare-fun m!923267 () Bool)

(assert (=> bm!42272 m!923267))

(declare-fun m!923269 () Bool)

(assert (=> b!657473 m!923269))

(assert (=> b!657473 m!922969))

(declare-fun m!923271 () Bool)

(assert (=> b!657473 m!923271))

(declare-fun m!923274 () Bool)

(assert (=> bm!42271 m!923274))

(declare-fun m!923277 () Bool)

(assert (=> b!657472 m!923277))

(assert (=> b!657475 m!922969))

(declare-fun m!923281 () Bool)

(assert (=> b!657475 m!923281))

(assert (=> b!657469 m!922969))

(assert (=> b!657469 m!923267))

(declare-fun m!923283 () Bool)

(assert (=> b!657476 m!923283))

(assert (=> b!657476 m!922969))

(declare-fun m!923285 () Bool)

(assert (=> b!657476 m!923285))

(declare-fun m!923289 () Bool)

(assert (=> b!657476 m!923289))

(assert (=> b!657264 d!225295))

(assert (=> b!657264 d!225263))

(declare-fun d!225311 () Bool)

(declare-fun res!291707 () Bool)

(declare-fun e!406606 () Bool)

(assert (=> d!225311 (=> res!291707 e!406606)))

(assert (=> d!225311 (= res!291707 ((_ is Nil!7054) (list!3009 lt!280018)))))

(assert (=> d!225311 (= (forall!1863 (list!3009 lt!280018) lambda!20327) e!406606)))

(declare-fun b!657483 () Bool)

(declare-fun e!406607 () Bool)

(assert (=> b!657483 (= e!406606 e!406607)))

(declare-fun res!291708 () Bool)

(assert (=> b!657483 (=> (not res!291708) (not e!406607))))

(assert (=> b!657483 (= res!291708 (dynLambda!3803 lambda!20327 (h!12455 (list!3009 lt!280018))))))

(declare-fun b!657484 () Bool)

(assert (=> b!657484 (= e!406607 (forall!1863 (t!86007 (list!3009 lt!280018)) lambda!20327))))

(assert (= (and d!225311 (not res!291707)) b!657483))

(assert (= (and b!657483 res!291708) b!657484))

(declare-fun b_lambda!25643 () Bool)

(assert (=> (not b_lambda!25643) (not b!657483)))

(declare-fun m!923291 () Bool)

(assert (=> b!657483 m!923291))

(declare-fun m!923293 () Bool)

(assert (=> b!657484 m!923293))

(assert (=> d!225241 d!225311))

(declare-fun d!225313 () Bool)

(assert (=> d!225313 (= (list!3009 lt!280018) (list!3013 (c!118285 lt!280018)))))

(declare-fun bs!94253 () Bool)

(assert (= bs!94253 d!225313))

(declare-fun m!923301 () Bool)

(assert (=> bs!94253 m!923301))

(assert (=> d!225241 d!225313))

(declare-fun b!657485 () Bool)

(declare-fun e!406608 () Bool)

(declare-fun e!406610 () Bool)

(assert (=> b!657485 (= e!406608 e!406610)))

(declare-fun c!118325 () Bool)

(assert (=> b!657485 (= c!118325 ((_ is Leaf!3661) (c!118285 lt!280018)))))

(declare-fun b!657487 () Bool)

(declare-fun e!406609 () Bool)

(assert (=> b!657487 (= e!406610 e!406609)))

(declare-fun lt!280085 () Unit!12289)

(assert (=> b!657487 (= lt!280085 (lemmaForallConcat!51 (list!3013 (left!5650 (c!118285 lt!280018))) (list!3013 (right!5980 (c!118285 lt!280018))) lambda!20327))))

(declare-fun res!291709 () Bool)

(assert (=> b!657487 (= res!291709 (forall!1864 (left!5650 (c!118285 lt!280018)) lambda!20327))))

(assert (=> b!657487 (=> (not res!291709) (not e!406609))))

(declare-fun d!225315 () Bool)

(declare-fun lt!280084 () Bool)

(assert (=> d!225315 (= lt!280084 (forall!1863 (list!3013 (c!118285 lt!280018)) lambda!20327))))

(assert (=> d!225315 (= lt!280084 e!406608)))

(declare-fun res!291710 () Bool)

(assert (=> d!225315 (=> res!291710 e!406608)))

(assert (=> d!225315 (= res!291710 ((_ is Empty!2440) (c!118285 lt!280018)))))

(assert (=> d!225315 (= (forall!1864 (c!118285 lt!280018) lambda!20327) lt!280084)))

(declare-fun b!657486 () Bool)

(assert (=> b!657486 (= e!406610 (forall!1866 (xs!5081 (c!118285 lt!280018)) lambda!20327))))

(declare-fun b!657488 () Bool)

(assert (=> b!657488 (= e!406609 (forall!1864 (right!5980 (c!118285 lt!280018)) lambda!20327))))

(assert (= (and d!225315 (not res!291710)) b!657485))

(assert (= (and b!657485 c!118325) b!657486))

(assert (= (and b!657485 (not c!118325)) b!657487))

(assert (= (and b!657487 res!291709) b!657488))

(declare-fun m!923311 () Bool)

(assert (=> b!657487 m!923311))

(declare-fun m!923313 () Bool)

(assert (=> b!657487 m!923313))

(assert (=> b!657487 m!923311))

(assert (=> b!657487 m!923313))

(declare-fun m!923315 () Bool)

(assert (=> b!657487 m!923315))

(declare-fun m!923317 () Bool)

(assert (=> b!657487 m!923317))

(assert (=> d!225315 m!923301))

(assert (=> d!225315 m!923301))

(declare-fun m!923319 () Bool)

(assert (=> d!225315 m!923319))

(declare-fun m!923321 () Bool)

(assert (=> b!657486 m!923321))

(declare-fun m!923323 () Bool)

(assert (=> b!657488 m!923323))

(assert (=> d!225241 d!225315))

(declare-fun b!657514 () Bool)

(declare-fun res!291736 () Bool)

(declare-fun e!406619 () Bool)

(assert (=> b!657514 (=> (not res!291736) (not e!406619))))

(assert (=> b!657514 (= res!291736 (isBalanced!646 (left!5650 (append!249 (c!118285 acc!218) from!502))))))

(declare-fun b!657515 () Bool)

(declare-fun res!291738 () Bool)

(assert (=> b!657515 (=> (not res!291738) (not e!406619))))

(assert (=> b!657515 (= res!291738 (<= (- (height!296 (left!5650 (append!249 (c!118285 acc!218) from!502))) (height!296 (right!5980 (append!249 (c!118285 acc!218) from!502)))) 1))))

(declare-fun b!657516 () Bool)

(declare-fun e!406620 () Bool)

(assert (=> b!657516 (= e!406620 e!406619)))

(declare-fun res!291739 () Bool)

(assert (=> b!657516 (=> (not res!291739) (not e!406619))))

(assert (=> b!657516 (= res!291739 (<= (- 1) (- (height!296 (left!5650 (append!249 (c!118285 acc!218) from!502))) (height!296 (right!5980 (append!249 (c!118285 acc!218) from!502))))))))

(declare-fun b!657517 () Bool)

(declare-fun isEmpty!4767 (Conc!2440) Bool)

(assert (=> b!657517 (= e!406619 (not (isEmpty!4767 (right!5980 (append!249 (c!118285 acc!218) from!502)))))))

(declare-fun b!657518 () Bool)

(declare-fun res!291735 () Bool)

(assert (=> b!657518 (=> (not res!291735) (not e!406619))))

(assert (=> b!657518 (= res!291735 (isBalanced!646 (right!5980 (append!249 (c!118285 acc!218) from!502))))))

(declare-fun d!225319 () Bool)

(declare-fun res!291737 () Bool)

(assert (=> d!225319 (=> res!291737 e!406620)))

(assert (=> d!225319 (= res!291737 (not ((_ is Node!2440) (append!249 (c!118285 acc!218) from!502))))))

(assert (=> d!225319 (= (isBalanced!646 (append!249 (c!118285 acc!218) from!502)) e!406620)))

(declare-fun b!657513 () Bool)

(declare-fun res!291740 () Bool)

(assert (=> b!657513 (=> (not res!291740) (not e!406619))))

(assert (=> b!657513 (= res!291740 (not (isEmpty!4767 (left!5650 (append!249 (c!118285 acc!218) from!502)))))))

(assert (= (and d!225319 (not res!291737)) b!657516))

(assert (= (and b!657516 res!291739) b!657515))

(assert (= (and b!657515 res!291738) b!657514))

(assert (= (and b!657514 res!291736) b!657518))

(assert (= (and b!657518 res!291735) b!657513))

(assert (= (and b!657513 res!291740) b!657517))

(declare-fun m!923327 () Bool)

(assert (=> b!657513 m!923327))

(declare-fun m!923329 () Bool)

(assert (=> b!657516 m!923329))

(declare-fun m!923331 () Bool)

(assert (=> b!657516 m!923331))

(declare-fun m!923333 () Bool)

(assert (=> b!657518 m!923333))

(assert (=> b!657515 m!923329))

(assert (=> b!657515 m!923331))

(declare-fun m!923337 () Bool)

(assert (=> b!657514 m!923337))

(declare-fun m!923341 () Bool)

(assert (=> b!657517 m!923341))

(assert (=> d!225215 d!225319))

(declare-fun b!657618 () Bool)

(declare-fun res!291777 () Bool)

(declare-fun e!406668 () Bool)

(assert (=> b!657618 (=> (not res!291777) (not e!406668))))

(declare-fun lt!280181 () Conc!2440)

(assert (=> b!657618 (= res!291777 (<= (height!296 (c!118285 acc!218)) (height!296 lt!280181)))))

(declare-fun c!118361 () Bool)

(declare-fun bm!42327 () Bool)

(declare-fun lt!280193 () Conc!2440)

(declare-fun call!42340 () List!7068)

(assert (=> bm!42327 (= call!42340 (list!3013 (ite c!118361 (right!5980 (c!118285 acc!218)) (right!5980 lt!280193))))))

(declare-fun lt!280186 () List!7068)

(declare-fun call!42339 () List!7068)

(declare-fun lt!280179 () List!7068)

(declare-fun call!42336 () List!7068)

(declare-fun lt!280194 () List!7068)

(declare-fun bm!42328 () Bool)

(assert (=> bm!42328 (= call!42336 (++!1888 (ite c!118361 lt!280179 lt!280186) (ite c!118361 call!42339 lt!280194)))))

(declare-fun b!657619 () Bool)

(declare-fun res!291778 () Bool)

(assert (=> b!657619 (=> (not res!291778) (not e!406668))))

(assert (=> b!657619 (= res!291778 (<= (height!296 lt!280181) (+ (height!296 (c!118285 acc!218)) 1)))))

(declare-fun b!657620 () Bool)

(declare-fun e!406669 () Conc!2440)

(declare-fun call!42333 () Conc!2440)

(assert (=> b!657620 (= e!406669 call!42333)))

(declare-fun call!42338 () List!7068)

(assert (=> b!657620 (= lt!280179 call!42338)))

(declare-fun lt!280183 () List!7068)

(assert (=> b!657620 (= lt!280183 call!42340)))

(declare-fun lt!280184 () List!7068)

(assert (=> b!657620 (= lt!280184 (Cons!7054 from!502 Nil!7054))))

(declare-fun lt!280196 () Unit!12289)

(declare-fun call!42337 () Unit!12289)

(assert (=> b!657620 (= lt!280196 call!42337)))

(declare-fun call!42341 () List!7068)

(assert (=> b!657620 (= call!42341 call!42336)))

(declare-fun lt!280192 () Unit!12289)

(assert (=> b!657620 (= lt!280192 lt!280196)))

(declare-fun bm!42329 () Bool)

(declare-fun call!42335 () Conc!2440)

(assert (=> bm!42329 (= call!42333 call!42335)))

(declare-fun b!657621 () Bool)

(assert (=> b!657621 (= e!406668 (= (list!3013 lt!280181) ($colon+!52 (list!3013 (c!118285 acc!218)) from!502)))))

(declare-fun bm!42330 () Bool)

(declare-fun lt!280190 () List!7068)

(declare-fun lemmaConcatAssociativity!637 (List!7068 List!7068 List!7068) Unit!12289)

(assert (=> bm!42330 (= call!42337 (lemmaConcatAssociativity!637 (ite c!118361 lt!280179 lt!280190) (ite c!118361 lt!280183 lt!280186) (ite c!118361 lt!280184 lt!280194)))))

(declare-fun b!657622 () Bool)

(declare-fun e!406667 () Conc!2440)

(declare-fun call!42334 () IArray!4881)

(assert (=> b!657622 (= e!406667 (Leaf!3661 call!42334 1))))

(declare-fun b!657623 () Bool)

(assert (=> b!657623 (= c!118361 (<= (height!296 lt!280193) (+ (height!296 (left!5650 (c!118285 acc!218))) 1)))))

(assert (=> b!657623 (= lt!280193 (append!249 (right!5980 (c!118285 acc!218)) from!502))))

(declare-fun e!406672 () Conc!2440)

(assert (=> b!657623 (= e!406672 e!406669)))

(declare-fun bm!42331 () Bool)

(declare-fun fill!35 (Int Int) IArray!4881)

(assert (=> bm!42331 (= call!42334 (fill!35 1 from!502))))

(declare-fun b!657624 () Bool)

(declare-fun <>!40 (Conc!2440 Conc!2440) Conc!2440)

(assert (=> b!657624 (= e!406669 (<>!40 call!42333 (right!5980 lt!280193)))))

(assert (=> b!657624 (= lt!280190 (list!3013 (left!5650 (c!118285 acc!218))))))

(assert (=> b!657624 (= lt!280186 call!42338)))

(assert (=> b!657624 (= lt!280194 call!42340)))

(declare-fun lt!280195 () Unit!12289)

(assert (=> b!657624 (= lt!280195 call!42337)))

(assert (=> b!657624 (= (++!1888 call!42339 lt!280194) (++!1888 lt!280190 call!42336))))

(declare-fun lt!280185 () Unit!12289)

(assert (=> b!657624 (= lt!280185 lt!280195)))

(declare-fun lt!280188 () List!7068)

(assert (=> b!657624 (= lt!280188 (list!3013 (left!5650 (c!118285 acc!218))))))

(declare-fun lt!280187 () List!7068)

(assert (=> b!657624 (= lt!280187 (list!3013 (right!5980 (c!118285 acc!218))))))

(declare-fun lt!280189 () List!7068)

(assert (=> b!657624 (= lt!280189 (Cons!7054 from!502 Nil!7054))))

(declare-fun lt!280180 () Unit!12289)

(assert (=> b!657624 (= lt!280180 (lemmaConcatAssociativity!637 lt!280188 lt!280187 lt!280189))))

(declare-fun call!42332 () List!7068)

(assert (=> b!657624 (= (++!1888 call!42341 lt!280189) (++!1888 lt!280188 call!42332))))

(declare-fun lt!280191 () Unit!12289)

(assert (=> b!657624 (= lt!280191 lt!280180)))

(declare-fun b!657625 () Bool)

(declare-fun e!406671 () Conc!2440)

(assert (=> b!657625 (= e!406671 (Leaf!3661 call!42334 1))))

(declare-fun b!657626 () Bool)

(assert (=> b!657626 (= e!406667 e!406672)))

(declare-fun c!118362 () Bool)

(assert (=> b!657626 (= c!118362 ((_ is Node!2440) (c!118285 acc!218)))))

(declare-fun bm!42332 () Bool)

(assert (=> bm!42332 (= call!42338 (list!3013 (ite c!118361 (left!5650 (c!118285 acc!218)) (left!5650 lt!280193))))))

(declare-fun bm!42333 () Bool)

(declare-fun c!118360 () Bool)

(assert (=> bm!42333 (= c!118360 c!118362)))

(assert (=> bm!42333 (= call!42335 (<>!40 (ite c!118362 (left!5650 (c!118285 acc!218)) (c!118285 acc!218)) e!406671))))

(declare-fun b!657627 () Bool)

(declare-fun c!118358 () Bool)

(assert (=> b!657627 (= c!118358 (< (csize!5111 (c!118285 acc!218)) 512))))

(declare-fun e!406670 () Conc!2440)

(assert (=> b!657627 (= e!406672 e!406670)))

(declare-fun bm!42334 () Bool)

(assert (=> bm!42334 (= call!42341 (++!1888 (ite c!118361 call!42332 lt!280188) (ite c!118361 lt!280184 lt!280187)))))

(declare-fun b!657628 () Bool)

(assert (=> b!657628 (= e!406671 (ite c!118361 lt!280193 (left!5650 lt!280193)))))

(declare-fun bm!42335 () Bool)

(assert (=> bm!42335 (= call!42339 (++!1888 (ite c!118361 lt!280183 lt!280190) (ite c!118361 lt!280184 lt!280186)))))

(declare-fun b!657629 () Bool)

(assert (=> b!657629 (= e!406670 call!42335)))

(declare-fun d!225323 () Bool)

(assert (=> d!225323 e!406668))

(declare-fun res!291776 () Bool)

(assert (=> d!225323 (=> (not res!291776) (not e!406668))))

(assert (=> d!225323 (= res!291776 (isBalanced!646 lt!280181))))

(assert (=> d!225323 (= lt!280181 e!406667)))

(declare-fun c!118359 () Bool)

(assert (=> d!225323 (= c!118359 ((_ is Empty!2440) (c!118285 acc!218)))))

(assert (=> d!225323 (isBalanced!646 (c!118285 acc!218))))

(assert (=> d!225323 (= (append!249 (c!118285 acc!218) from!502) lt!280181)))

(declare-fun b!657630 () Bool)

(declare-fun append!251 (IArray!4881 Int) IArray!4881)

(assert (=> b!657630 (= e!406670 (Leaf!3661 (append!251 (xs!5081 (c!118285 acc!218)) from!502) (+ (csize!5111 (c!118285 acc!218)) 1)))))

(declare-fun lt!280182 () List!7068)

(declare-fun list!3016 (IArray!4881) List!7068)

(assert (=> b!657630 (= lt!280182 ($colon+!52 (list!3016 (xs!5081 (c!118285 acc!218))) from!502))))

(declare-fun bm!42336 () Bool)

(assert (=> bm!42336 (= call!42332 (++!1888 (ite c!118361 lt!280179 lt!280187) (ite c!118361 lt!280183 lt!280189)))))

(assert (= (and d!225323 c!118359) b!657622))

(assert (= (and d!225323 (not c!118359)) b!657626))

(assert (= (and b!657626 c!118362) b!657623))

(assert (= (and b!657626 (not c!118362)) b!657627))

(assert (= (and b!657623 c!118361) b!657620))

(assert (= (and b!657623 (not c!118361)) b!657624))

(assert (= (or b!657620 b!657624) bm!42336))

(assert (= (or b!657620 b!657624) bm!42329))

(assert (= (or b!657620 b!657624) bm!42327))

(assert (= (or b!657620 b!657624) bm!42335))

(assert (= (or b!657620 b!657624) bm!42332))

(assert (= (or b!657620 b!657624) bm!42330))

(assert (= (or b!657620 b!657624) bm!42334))

(assert (= (or b!657620 b!657624) bm!42328))

(assert (= (and b!657627 c!118358) b!657630))

(assert (= (and b!657627 (not c!118358)) b!657629))

(assert (= (or bm!42329 b!657629) bm!42333))

(assert (= (and bm!42333 c!118360) b!657628))

(assert (= (and bm!42333 (not c!118360)) b!657625))

(assert (= (or b!657622 b!657625) bm!42331))

(assert (= (and d!225323 res!291776) b!657618))

(assert (= (and b!657618 res!291777) b!657619))

(assert (= (and b!657619 res!291778) b!657621))

(declare-fun m!923441 () Bool)

(assert (=> bm!42330 m!923441))

(declare-fun m!923443 () Bool)

(assert (=> bm!42331 m!923443))

(declare-fun m!923445 () Bool)

(assert (=> b!657619 m!923445))

(assert (=> b!657619 m!923071))

(assert (=> b!657618 m!923071))

(assert (=> b!657618 m!923445))

(declare-fun m!923447 () Bool)

(assert (=> bm!42336 m!923447))

(declare-fun m!923449 () Bool)

(assert (=> bm!42327 m!923449))

(declare-fun m!923451 () Bool)

(assert (=> d!225323 m!923451))

(assert (=> d!225323 m!923039))

(declare-fun m!923453 () Bool)

(assert (=> b!657624 m!923453))

(assert (=> b!657624 m!923201))

(declare-fun m!923455 () Bool)

(assert (=> b!657624 m!923455))

(declare-fun m!923457 () Bool)

(assert (=> b!657624 m!923457))

(declare-fun m!923459 () Bool)

(assert (=> b!657624 m!923459))

(assert (=> b!657624 m!923199))

(declare-fun m!923461 () Bool)

(assert (=> b!657624 m!923461))

(declare-fun m!923463 () Bool)

(assert (=> b!657624 m!923463))

(declare-fun m!923465 () Bool)

(assert (=> b!657623 m!923465))

(declare-fun m!923467 () Bool)

(assert (=> b!657623 m!923467))

(declare-fun m!923469 () Bool)

(assert (=> b!657623 m!923469))

(declare-fun m!923471 () Bool)

(assert (=> bm!42334 m!923471))

(declare-fun m!923473 () Bool)

(assert (=> bm!42332 m!923473))

(declare-fun m!923475 () Bool)

(assert (=> b!657630 m!923475))

(declare-fun m!923477 () Bool)

(assert (=> b!657630 m!923477))

(assert (=> b!657630 m!923477))

(declare-fun m!923479 () Bool)

(assert (=> b!657630 m!923479))

(declare-fun m!923481 () Bool)

(assert (=> bm!42328 m!923481))

(declare-fun m!923483 () Bool)

(assert (=> b!657621 m!923483))

(assert (=> b!657621 m!923127))

(assert (=> b!657621 m!923127))

(declare-fun m!923485 () Bool)

(assert (=> b!657621 m!923485))

(declare-fun m!923487 () Bool)

(assert (=> bm!42333 m!923487))

(declare-fun m!923489 () Bool)

(assert (=> bm!42335 m!923489))

(assert (=> d!225215 d!225323))

(declare-fun d!225343 () Bool)

(declare-fun lt!280200 () Token!2542)

(declare-fun contains!1553 (List!7067 Token!2542) Bool)

(assert (=> d!225343 (contains!1553 (list!3011 ts!14) lt!280200)))

(declare-fun e!406684 () Token!2542)

(assert (=> d!225343 (= lt!280200 e!406684)))

(declare-fun c!118367 () Bool)

(assert (=> d!225343 (= c!118367 (= from!502 0))))

(declare-fun e!406685 () Bool)

(assert (=> d!225343 e!406685))

(declare-fun res!291797 () Bool)

(assert (=> d!225343 (=> (not res!291797) (not e!406685))))

(assert (=> d!225343 (= res!291797 (<= 0 from!502))))

(assert (=> d!225343 (= (apply!1702 (list!3011 ts!14) from!502) lt!280200)))

(declare-fun b!657657 () Bool)

(assert (=> b!657657 (= e!406685 (< from!502 (size!5602 (list!3011 ts!14))))))

(declare-fun b!657658 () Bool)

(declare-fun head!1370 (List!7067) Token!2542)

(assert (=> b!657658 (= e!406684 (head!1370 (list!3011 ts!14)))))

(declare-fun b!657659 () Bool)

(declare-fun tail!934 (List!7067) List!7067)

(assert (=> b!657659 (= e!406684 (apply!1702 (tail!934 (list!3011 ts!14)) (- from!502 1)))))

(assert (= (and d!225343 res!291797) b!657657))

(assert (= (and d!225343 c!118367) b!657658))

(assert (= (and d!225343 (not c!118367)) b!657659))

(assert (=> d!225343 m!923033))

(declare-fun m!923491 () Bool)

(assert (=> d!225343 m!923491))

(assert (=> b!657657 m!923033))

(assert (=> b!657657 m!923157))

(assert (=> b!657658 m!923033))

(declare-fun m!923493 () Bool)

(assert (=> b!657658 m!923493))

(assert (=> b!657659 m!923033))

(declare-fun m!923495 () Bool)

(assert (=> b!657659 m!923495))

(assert (=> b!657659 m!923495))

(declare-fun m!923497 () Bool)

(assert (=> b!657659 m!923497))

(assert (=> d!225229 d!225343))

(declare-fun d!225345 () Bool)

(declare-fun list!3017 (Conc!2439) List!7067)

(assert (=> d!225345 (= (list!3011 ts!14) (list!3017 (c!118284 ts!14)))))

(declare-fun bs!94257 () Bool)

(assert (= bs!94257 d!225345))

(declare-fun m!923507 () Bool)

(assert (=> bs!94257 m!923507))

(assert (=> d!225229 d!225345))

(declare-fun b!657698 () Bool)

(declare-fun e!406707 () Token!2542)

(declare-fun e!406709 () Token!2542)

(assert (=> b!657698 (= e!406707 e!406709)))

(declare-fun lt!280213 () Bool)

(declare-fun appendIndex!65 (List!7067 List!7067 Int) Bool)

(assert (=> b!657698 (= lt!280213 (appendIndex!65 (list!3017 (left!5649 (c!118284 ts!14))) (list!3017 (right!5979 (c!118284 ts!14))) from!502))))

(declare-fun c!118378 () Bool)

(assert (=> b!657698 (= c!118378 (< from!502 (size!5603 (left!5649 (c!118284 ts!14)))))))

(declare-fun b!657699 () Bool)

(declare-fun e!406708 () Bool)

(assert (=> b!657699 (= e!406708 (< from!502 (size!5603 (c!118284 ts!14))))))

(declare-fun b!657700 () Bool)

(declare-fun e!406710 () Int)

(assert (=> b!657700 (= e!406710 (- from!502 (size!5603 (left!5649 (c!118284 ts!14)))))))

(declare-fun b!657701 () Bool)

(assert (=> b!657701 (= e!406710 from!502)))

(declare-fun b!657702 () Bool)

(declare-fun apply!1704 (IArray!4879 Int) Token!2542)

(assert (=> b!657702 (= e!406707 (apply!1704 (xs!5080 (c!118284 ts!14)) from!502))))

(declare-fun bm!42341 () Bool)

(declare-fun c!118380 () Bool)

(assert (=> bm!42341 (= c!118380 c!118378)))

(declare-fun call!42346 () Token!2542)

(assert (=> bm!42341 (= call!42346 (apply!1703 (ite c!118378 (left!5649 (c!118284 ts!14)) (right!5979 (c!118284 ts!14))) e!406710))))

(declare-fun b!657703 () Bool)

(assert (=> b!657703 (= e!406709 call!42346)))

(declare-fun b!657704 () Bool)

(assert (=> b!657704 (= e!406709 call!42346)))

(declare-fun d!225349 () Bool)

(declare-fun lt!280214 () Token!2542)

(assert (=> d!225349 (= lt!280214 (apply!1702 (list!3017 (c!118284 ts!14)) from!502))))

(assert (=> d!225349 (= lt!280214 e!406707)))

(declare-fun c!118379 () Bool)

(assert (=> d!225349 (= c!118379 ((_ is Leaf!3660) (c!118284 ts!14)))))

(assert (=> d!225349 e!406708))

(declare-fun res!291817 () Bool)

(assert (=> d!225349 (=> (not res!291817) (not e!406708))))

(assert (=> d!225349 (= res!291817 (<= 0 from!502))))

(assert (=> d!225349 (= (apply!1703 (c!118284 ts!14) from!502) lt!280214)))

(assert (= (and d!225349 res!291817) b!657699))

(assert (= (and d!225349 c!118379) b!657702))

(assert (= (and d!225349 (not c!118379)) b!657698))

(assert (= (and b!657698 c!118378) b!657703))

(assert (= (and b!657698 (not c!118378)) b!657704))

(assert (= (or b!657703 b!657704) bm!42341))

(assert (= (and bm!42341 c!118380) b!657701))

(assert (= (and bm!42341 (not c!118380)) b!657700))

(assert (=> d!225349 m!923507))

(assert (=> d!225349 m!923507))

(declare-fun m!923539 () Bool)

(assert (=> d!225349 m!923539))

(declare-fun m!923541 () Bool)

(assert (=> b!657702 m!923541))

(declare-fun m!923543 () Bool)

(assert (=> b!657698 m!923543))

(declare-fun m!923545 () Bool)

(assert (=> b!657698 m!923545))

(assert (=> b!657698 m!923543))

(assert (=> b!657698 m!923545))

(declare-fun m!923547 () Bool)

(assert (=> b!657698 m!923547))

(assert (=> b!657698 m!923227))

(declare-fun m!923549 () Bool)

(assert (=> bm!42341 m!923549))

(assert (=> b!657700 m!923227))

(assert (=> b!657699 m!923159))

(assert (=> d!225229 d!225349))

(declare-fun d!225369 () Bool)

(assert (=> d!225369 (= (max!0 (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020)))) (ite (< (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020)))) (height!296 (c!118285 (seqFromList!1460 lt!280020))) (height!296 (c!118285 acc!218))))))

(assert (=> b!657318 d!225369))

(declare-fun d!225371 () Bool)

(assert (=> d!225371 (= (height!296 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) (ite ((_ is Empty!2440) (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) 0 (ite ((_ is Leaf!3661) (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) 1 (cheight!2651 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))))))

(assert (=> b!657318 d!225371))

(declare-fun bm!42398 () Bool)

(declare-fun call!42414 () Conc!2440)

(declare-fun call!42415 () Conc!2440)

(assert (=> bm!42398 (= call!42414 call!42415)))

(declare-fun call!42408 () Int)

(declare-fun bm!42399 () Bool)

(declare-fun c!118414 () Bool)

(assert (=> bm!42399 (= call!42408 (height!296 (ite c!118414 (c!118285 acc!218) (right!5980 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657808 () Bool)

(declare-fun e!406778 () Conc!2440)

(declare-fun call!42419 () Conc!2440)

(assert (=> b!657808 (= e!406778 call!42419)))

(declare-fun bm!42400 () Bool)

(declare-fun call!42406 () Conc!2440)

(assert (=> bm!42400 (= call!42419 call!42406)))

(declare-fun e!406783 () Bool)

(declare-fun b!657809 () Bool)

(declare-fun lt!280232 () Conc!2440)

(assert (=> b!657809 (= e!406783 (= (list!3013 lt!280232) (++!1888 (list!3013 (c!118285 acc!218)) (list!3013 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun c!118419 () Bool)

(declare-fun c!118420 () Bool)

(declare-fun call!42409 () Conc!2440)

(declare-fun bm!42401 () Bool)

(assert (=> bm!42401 (= call!42409 (++!1887 (ite c!118414 (ite c!118419 (right!5980 (c!118285 acc!218)) (right!5980 (right!5980 (c!118285 acc!218)))) (c!118285 acc!218)) (ite c!118414 (c!118285 (seqFromList!1460 lt!280020)) (ite c!118420 (left!5650 (c!118285 (seqFromList!1460 lt!280020))) (left!5650 (left!5650 (c!118285 (seqFromList!1460 lt!280020))))))))))

(declare-fun b!657810 () Bool)

(declare-fun e!406781 () Conc!2440)

(assert (=> b!657810 (= e!406781 e!406778)))

(declare-fun lt!280231 () Conc!2440)

(declare-fun call!42412 () Conc!2440)

(assert (=> b!657810 (= lt!280231 call!42412)))

(declare-fun c!118416 () Bool)

(declare-fun call!42410 () Int)

(declare-fun call!42418 () Int)

(assert (=> b!657810 (= c!118416 (= call!42410 (- call!42418 3)))))

(declare-fun bm!42402 () Bool)

(assert (=> bm!42402 (= call!42412 call!42409)))

(declare-fun b!657811 () Bool)

(assert (=> b!657811 (= e!406781 call!42415)))

(declare-fun b!657812 () Bool)

(declare-fun res!291861 () Bool)

(assert (=> b!657812 (=> (not res!291861) (not e!406783))))

(assert (=> b!657812 (= res!291861 (<= (height!296 lt!280232) (+ (max!0 (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020)))) 1)))))

(declare-fun bm!42404 () Bool)

(assert (=> bm!42404 (= call!42418 (height!296 (ite c!118414 (right!5980 (c!118285 acc!218)) (c!118285 (seqFromList!1460 lt!280020)))))))

(declare-fun bm!42405 () Bool)

(declare-fun call!42405 () Conc!2440)

(assert (=> bm!42405 (= call!42405 call!42406)))

(declare-fun b!657813 () Bool)

(declare-fun e!406776 () Conc!2440)

(assert (=> b!657813 (= e!406776 (c!118285 (seqFromList!1460 lt!280020)))))

(declare-fun bm!42406 () Bool)

(declare-fun call!42420 () Conc!2440)

(assert (=> bm!42406 (= call!42420 call!42405)))

(declare-fun b!657814 () Bool)

(declare-fun e!406780 () Conc!2440)

(assert (=> b!657814 (= e!406780 call!42405)))

(declare-fun b!657815 () Bool)

(declare-fun res!291858 () Bool)

(assert (=> b!657815 (=> (not res!291858) (not e!406783))))

(assert (=> b!657815 (= res!291858 (isBalanced!646 lt!280232))))

(declare-fun b!657816 () Bool)

(declare-fun e!406779 () Bool)

(assert (=> b!657816 (= e!406779 (isBalanced!646 (c!118285 (seqFromList!1460 lt!280020))))))

(declare-fun bm!42407 () Bool)

(declare-fun call!42413 () Conc!2440)

(assert (=> bm!42407 (= call!42415 call!42413)))

(declare-fun b!657817 () Bool)

(declare-fun res!291857 () Bool)

(assert (=> b!657817 (=> (not res!291857) (not e!406783))))

(assert (=> b!657817 (= res!291857 (>= (height!296 lt!280232) (max!0 (height!296 (c!118285 acc!218)) (height!296 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun call!42417 () Int)

(declare-fun bm!42408 () Bool)

(assert (=> bm!42408 (= call!42417 (height!296 (ite c!118414 (left!5650 (c!118285 acc!218)) (left!5650 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657818 () Bool)

(assert (=> b!657818 (= c!118419 (>= call!42417 call!42418))))

(declare-fun e!406782 () Conc!2440)

(assert (=> b!657818 (= e!406782 e!406780)))

(declare-fun b!657819 () Bool)

(declare-fun e!406777 () Conc!2440)

(assert (=> b!657819 (= e!406777 e!406782)))

(declare-fun lt!280233 () Int)

(assert (=> b!657819 (= c!118414 (< lt!280233 (- 1)))))

(declare-fun bm!42409 () Bool)

(declare-fun lt!280234 () Conc!2440)

(assert (=> bm!42409 (= call!42410 (height!296 (ite c!118414 lt!280234 lt!280231)))))

(declare-fun b!657820 () Bool)

(declare-fun c!118413 () Bool)

(assert (=> b!657820 (= c!118413 (and (<= (- 1) lt!280233) (<= lt!280233 1)))))

(assert (=> b!657820 (= lt!280233 (- (height!296 (c!118285 (seqFromList!1460 lt!280020))) (height!296 (c!118285 acc!218))))))

(declare-fun e!406784 () Conc!2440)

(assert (=> b!657820 (= e!406784 e!406777)))

(declare-fun b!657821 () Bool)

(declare-fun call!42416 () Conc!2440)

(assert (=> b!657821 (= e!406777 call!42416)))

(declare-fun b!657822 () Bool)

(declare-fun e!406785 () Conc!2440)

(assert (=> b!657822 (= e!406780 e!406785)))

(declare-fun call!42411 () Conc!2440)

(assert (=> b!657822 (= lt!280234 call!42411)))

(declare-fun c!118417 () Bool)

(assert (=> b!657822 (= c!118417 (= call!42410 (- call!42408 3)))))

(declare-fun b!657823 () Bool)

(assert (=> b!657823 (= c!118420 (>= call!42408 call!42417))))

(assert (=> b!657823 (= e!406782 e!406781)))

(declare-fun call!42407 () Conc!2440)

(declare-fun bm!42410 () Bool)

(assert (=> bm!42410 (= call!42406 (<>!40 (ite c!118414 (ite (or c!118419 c!118417) (left!5650 (c!118285 acc!218)) call!42407) (ite c!118416 call!42414 lt!280231)) (ite c!118414 (ite c!118419 call!42411 (ite c!118417 call!42407 lt!280234)) (ite c!118416 (right!5980 (c!118285 (seqFromList!1460 lt!280020))) call!42414))))))

(declare-fun bm!42411 () Bool)

(assert (=> bm!42411 (= call!42416 (<>!40 (ite c!118413 (c!118285 acc!218) (ite c!118414 (ite c!118417 (left!5650 (right!5980 (c!118285 acc!218))) (left!5650 (c!118285 acc!218))) (ite c!118420 call!42412 (ite c!118416 lt!280231 (right!5980 (left!5650 (c!118285 (seqFromList!1460 lt!280020)))))))) (ite c!118413 (c!118285 (seqFromList!1460 lt!280020)) (ite c!118414 (ite c!118417 lt!280234 (left!5650 (right!5980 (c!118285 acc!218)))) (ite c!118420 (right!5980 (c!118285 (seqFromList!1460 lt!280020))) (ite c!118416 (right!5980 (left!5650 (c!118285 (seqFromList!1460 lt!280020)))) (right!5980 (c!118285 (seqFromList!1460 lt!280020)))))))))))

(declare-fun bm!42412 () Bool)

(assert (=> bm!42412 (= call!42411 call!42409)))

(declare-fun d!225373 () Bool)

(assert (=> d!225373 e!406783))

(declare-fun res!291860 () Bool)

(assert (=> d!225373 (=> (not res!291860) (not e!406783))))

(assert (=> d!225373 (= res!291860 (appendAssocInst!127 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))

(assert (=> d!225373 (= lt!280232 e!406776)))

(declare-fun c!118415 () Bool)

(assert (=> d!225373 (= c!118415 (= (c!118285 acc!218) Empty!2440))))

(assert (=> d!225373 e!406779))

(declare-fun res!291859 () Bool)

(assert (=> d!225373 (=> (not res!291859) (not e!406779))))

(assert (=> d!225373 (= res!291859 (isBalanced!646 (c!118285 acc!218)))))

(assert (=> d!225373 (= (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))) lt!280232)))

(declare-fun bm!42403 () Bool)

(assert (=> bm!42403 (= call!42407 call!42413)))

(declare-fun bm!42413 () Bool)

(assert (=> bm!42413 (= call!42413 call!42416)))

(declare-fun b!657824 () Bool)

(assert (=> b!657824 (= e!406778 call!42419)))

(declare-fun b!657825 () Bool)

(assert (=> b!657825 (= e!406784 (c!118285 acc!218))))

(declare-fun b!657826 () Bool)

(assert (=> b!657826 (= e!406785 call!42420)))

(declare-fun b!657827 () Bool)

(assert (=> b!657827 (= e!406785 call!42420)))

(declare-fun b!657828 () Bool)

(assert (=> b!657828 (= e!406776 e!406784)))

(declare-fun c!118418 () Bool)

(assert (=> b!657828 (= c!118418 (= (c!118285 (seqFromList!1460 lt!280020)) Empty!2440))))

(assert (= (and d!225373 res!291859) b!657816))

(assert (= (and d!225373 c!118415) b!657813))

(assert (= (and d!225373 (not c!118415)) b!657828))

(assert (= (and b!657828 c!118418) b!657825))

(assert (= (and b!657828 (not c!118418)) b!657820))

(assert (= (and b!657820 c!118413) b!657821))

(assert (= (and b!657820 (not c!118413)) b!657819))

(assert (= (and b!657819 c!118414) b!657818))

(assert (= (and b!657819 (not c!118414)) b!657823))

(assert (= (and b!657818 c!118419) b!657814))

(assert (= (and b!657818 (not c!118419)) b!657822))

(assert (= (and b!657822 c!118417) b!657827))

(assert (= (and b!657822 (not c!118417)) b!657826))

(assert (= (or b!657827 b!657826) bm!42403))

(assert (= (or b!657827 b!657826) bm!42406))

(assert (= (or b!657814 b!657822) bm!42412))

(assert (= (or b!657814 bm!42406) bm!42405))

(assert (= (and b!657823 c!118420) b!657811))

(assert (= (and b!657823 (not c!118420)) b!657810))

(assert (= (and b!657810 c!118416) b!657824))

(assert (= (and b!657810 (not c!118416)) b!657808))

(assert (= (or b!657824 b!657808) bm!42398))

(assert (= (or b!657824 b!657808) bm!42400))

(assert (= (or b!657811 b!657810) bm!42402))

(assert (= (or b!657811 bm!42398) bm!42407))

(assert (= (or bm!42403 bm!42407) bm!42413))

(assert (= (or bm!42412 bm!42402) bm!42401))

(assert (= (or b!657818 b!657810) bm!42404))

(assert (= (or b!657818 b!657823) bm!42408))

(assert (= (or b!657822 b!657810) bm!42409))

(assert (= (or b!657822 b!657823) bm!42399))

(assert (= (or bm!42405 bm!42400) bm!42410))

(assert (= (or b!657821 bm!42413) bm!42411))

(assert (= (and d!225373 res!291860) b!657815))

(assert (= (and b!657815 res!291858) b!657812))

(assert (= (and b!657812 res!291861) b!657817))

(assert (= (and b!657817 res!291857) b!657809))

(declare-fun m!923579 () Bool)

(assert (=> b!657809 m!923579))

(assert (=> b!657809 m!923127))

(declare-fun m!923581 () Bool)

(assert (=> b!657809 m!923581))

(assert (=> b!657809 m!923127))

(assert (=> b!657809 m!923581))

(declare-fun m!923583 () Bool)

(assert (=> b!657809 m!923583))

(assert (=> d!225373 m!923077))

(assert (=> d!225373 m!923039))

(declare-fun m!923585 () Bool)

(assert (=> b!657817 m!923585))

(assert (=> b!657817 m!923071))

(assert (=> b!657817 m!923073))

(assert (=> b!657817 m!923071))

(assert (=> b!657817 m!923073))

(assert (=> b!657817 m!923075))

(declare-fun m!923587 () Bool)

(assert (=> bm!42404 m!923587))

(declare-fun m!923589 () Bool)

(assert (=> bm!42408 m!923589))

(declare-fun m!923591 () Bool)

(assert (=> bm!42409 m!923591))

(declare-fun m!923593 () Bool)

(assert (=> bm!42410 m!923593))

(declare-fun m!923595 () Bool)

(assert (=> bm!42411 m!923595))

(declare-fun m!923597 () Bool)

(assert (=> bm!42399 m!923597))

(declare-fun m!923599 () Bool)

(assert (=> b!657816 m!923599))

(assert (=> b!657820 m!923073))

(assert (=> b!657820 m!923071))

(assert (=> b!657812 m!923585))

(assert (=> b!657812 m!923071))

(assert (=> b!657812 m!923073))

(assert (=> b!657812 m!923071))

(assert (=> b!657812 m!923073))

(assert (=> b!657812 m!923075))

(declare-fun m!923601 () Bool)

(assert (=> bm!42401 m!923601))

(declare-fun m!923603 () Bool)

(assert (=> b!657815 m!923603))

(assert (=> b!657318 d!225373))

(declare-fun d!225377 () Bool)

(assert (=> d!225377 (= (height!296 (c!118285 acc!218)) (ite ((_ is Empty!2440) (c!118285 acc!218)) 0 (ite ((_ is Leaf!3661) (c!118285 acc!218)) 1 (cheight!2651 (c!118285 acc!218)))))))

(assert (=> b!657318 d!225377))

(declare-fun d!225379 () Bool)

(assert (=> d!225379 (= (height!296 (c!118285 (seqFromList!1460 lt!280020))) (ite ((_ is Empty!2440) (c!118285 (seqFromList!1460 lt!280020))) 0 (ite ((_ is Leaf!3661) (c!118285 (seqFromList!1460 lt!280020))) 1 (cheight!2651 (c!118285 (seqFromList!1460 lt!280020))))))))

(assert (=> b!657318 d!225379))

(assert (=> b!657319 d!225369))

(assert (=> b!657319 d!225371))

(assert (=> b!657319 d!225373))

(assert (=> b!657319 d!225377))

(assert (=> b!657319 d!225379))

(declare-fun b!657830 () Bool)

(declare-fun res!291863 () Bool)

(declare-fun e!406786 () Bool)

(assert (=> b!657830 (=> (not res!291863) (not e!406786))))

(assert (=> b!657830 (= res!291863 (isBalanced!646 (left!5650 (c!118285 acc!218))))))

(declare-fun b!657831 () Bool)

(declare-fun res!291865 () Bool)

(assert (=> b!657831 (=> (not res!291865) (not e!406786))))

(assert (=> b!657831 (= res!291865 (<= (- (height!296 (left!5650 (c!118285 acc!218))) (height!296 (right!5980 (c!118285 acc!218)))) 1))))

(declare-fun b!657832 () Bool)

(declare-fun e!406787 () Bool)

(assert (=> b!657832 (= e!406787 e!406786)))

(declare-fun res!291866 () Bool)

(assert (=> b!657832 (=> (not res!291866) (not e!406786))))

(assert (=> b!657832 (= res!291866 (<= (- 1) (- (height!296 (left!5650 (c!118285 acc!218))) (height!296 (right!5980 (c!118285 acc!218))))))))

(declare-fun b!657833 () Bool)

(assert (=> b!657833 (= e!406786 (not (isEmpty!4767 (right!5980 (c!118285 acc!218)))))))

(declare-fun b!657834 () Bool)

(declare-fun res!291862 () Bool)

(assert (=> b!657834 (=> (not res!291862) (not e!406786))))

(assert (=> b!657834 (= res!291862 (isBalanced!646 (right!5980 (c!118285 acc!218))))))

(declare-fun d!225381 () Bool)

(declare-fun res!291864 () Bool)

(assert (=> d!225381 (=> res!291864 e!406787)))

(assert (=> d!225381 (= res!291864 (not ((_ is Node!2440) (c!118285 acc!218))))))

(assert (=> d!225381 (= (isBalanced!646 (c!118285 acc!218)) e!406787)))

(declare-fun b!657829 () Bool)

(declare-fun res!291867 () Bool)

(assert (=> b!657829 (=> (not res!291867) (not e!406786))))

(assert (=> b!657829 (= res!291867 (not (isEmpty!4767 (left!5650 (c!118285 acc!218)))))))

(assert (= (and d!225381 (not res!291864)) b!657832))

(assert (= (and b!657832 res!291866) b!657831))

(assert (= (and b!657831 res!291865) b!657830))

(assert (= (and b!657830 res!291863) b!657834))

(assert (= (and b!657834 res!291862) b!657829))

(assert (= (and b!657829 res!291867) b!657833))

(declare-fun m!923605 () Bool)

(assert (=> b!657829 m!923605))

(assert (=> b!657832 m!923467))

(declare-fun m!923607 () Bool)

(assert (=> b!657832 m!923607))

(declare-fun m!923609 () Bool)

(assert (=> b!657834 m!923609))

(assert (=> b!657831 m!923467))

(assert (=> b!657831 m!923607))

(declare-fun m!923611 () Bool)

(assert (=> b!657830 m!923611))

(declare-fun m!923613 () Bool)

(assert (=> b!657833 m!923613))

(assert (=> d!225233 d!225381))

(declare-fun d!225383 () Bool)

(declare-fun lt!280237 () Int)

(assert (=> d!225383 (>= lt!280237 0)))

(declare-fun e!406792 () Int)

(assert (=> d!225383 (= lt!280237 e!406792)))

(declare-fun c!118423 () Bool)

(assert (=> d!225383 (= c!118423 ((_ is Nil!7053) (list!3011 ts!14)))))

(assert (=> d!225383 (= (size!5602 (list!3011 ts!14)) lt!280237)))

(declare-fun b!657847 () Bool)

(assert (=> b!657847 (= e!406792 0)))

(declare-fun b!657848 () Bool)

(assert (=> b!657848 (= e!406792 (+ 1 (size!5602 (t!86006 (list!3011 ts!14)))))))

(assert (= (and d!225383 c!118423) b!657847))

(assert (= (and d!225383 (not c!118423)) b!657848))

(declare-fun m!923615 () Bool)

(assert (=> b!657848 m!923615))

(assert (=> d!225271 d!225383))

(assert (=> d!225271 d!225345))

(declare-fun d!225385 () Bool)

(declare-fun lt!280240 () Int)

(assert (=> d!225385 (= lt!280240 (size!5602 (list!3017 (c!118284 ts!14))))))

(assert (=> d!225385 (= lt!280240 (ite ((_ is Empty!2439) (c!118284 ts!14)) 0 (ite ((_ is Leaf!3660) (c!118284 ts!14)) (csize!5109 (c!118284 ts!14)) (csize!5108 (c!118284 ts!14)))))))

(assert (=> d!225385 (= (size!5603 (c!118284 ts!14)) lt!280240)))

(declare-fun bs!94262 () Bool)

(assert (= bs!94262 d!225385))

(assert (=> bs!94262 m!923507))

(assert (=> bs!94262 m!923507))

(declare-fun m!923617 () Bool)

(assert (=> bs!94262 m!923617))

(assert (=> d!225271 d!225385))

(declare-fun d!225387 () Bool)

(assert (=> d!225387 (= (inv!8946 (xs!5081 (c!118285 acc!218))) (<= (size!5604 (innerList!2498 (xs!5081 (c!118285 acc!218)))) 2147483647))))

(declare-fun bs!94263 () Bool)

(assert (= bs!94263 d!225387))

(declare-fun m!923619 () Bool)

(assert (=> bs!94263 m!923619))

(assert (=> b!657371 d!225387))

(declare-fun d!225389 () Bool)

(declare-fun res!291880 () Bool)

(declare-fun e!406795 () Bool)

(assert (=> d!225389 (=> (not res!291880) (not e!406795))))

(declare-fun list!3018 (IArray!4879) List!7067)

(assert (=> d!225389 (= res!291880 (<= (size!5602 (list!3018 (xs!5080 (c!118284 ts!14)))) 512))))

(assert (=> d!225389 (= (inv!8938 (c!118284 ts!14)) e!406795)))

(declare-fun b!657853 () Bool)

(declare-fun res!291881 () Bool)

(assert (=> b!657853 (=> (not res!291881) (not e!406795))))

(assert (=> b!657853 (= res!291881 (= (csize!5109 (c!118284 ts!14)) (size!5602 (list!3018 (xs!5080 (c!118284 ts!14))))))))

(declare-fun b!657854 () Bool)

(assert (=> b!657854 (= e!406795 (and (> (csize!5109 (c!118284 ts!14)) 0) (<= (csize!5109 (c!118284 ts!14)) 512)))))

(assert (= (and d!225389 res!291880) b!657853))

(assert (= (and b!657853 res!291881) b!657854))

(declare-fun m!923621 () Bool)

(assert (=> d!225389 m!923621))

(assert (=> d!225389 m!923621))

(declare-fun m!923623 () Bool)

(assert (=> d!225389 m!923623))

(assert (=> b!657853 m!923621))

(assert (=> b!657853 m!923621))

(assert (=> b!657853 m!923623))

(assert (=> b!657276 d!225389))

(declare-fun d!225391 () Bool)

(declare-fun c!118436 () Bool)

(assert (=> d!225391 (= c!118436 ((_ is Empty!2440) (c!118285 acc!218)))))

(declare-fun e!406810 () List!7068)

(assert (=> d!225391 (= (list!3013 (c!118285 acc!218)) e!406810)))

(declare-fun b!657884 () Bool)

(assert (=> b!657884 (= e!406810 Nil!7054)))

(declare-fun b!657886 () Bool)

(declare-fun e!406811 () List!7068)

(assert (=> b!657886 (= e!406811 (list!3016 (xs!5081 (c!118285 acc!218))))))

(declare-fun b!657885 () Bool)

(assert (=> b!657885 (= e!406810 e!406811)))

(declare-fun c!118437 () Bool)

(assert (=> b!657885 (= c!118437 ((_ is Leaf!3661) (c!118285 acc!218)))))

(declare-fun b!657887 () Bool)

(assert (=> b!657887 (= e!406811 (++!1888 (list!3013 (left!5650 (c!118285 acc!218))) (list!3013 (right!5980 (c!118285 acc!218)))))))

(assert (= (and d!225391 c!118436) b!657884))

(assert (= (and d!225391 (not c!118436)) b!657885))

(assert (= (and b!657885 c!118437) b!657886))

(assert (= (and b!657885 (not c!118437)) b!657887))

(assert (=> b!657886 m!923477))

(assert (=> b!657887 m!923199))

(assert (=> b!657887 m!923201))

(assert (=> b!657887 m!923199))

(assert (=> b!657887 m!923201))

(declare-fun m!923625 () Bool)

(assert (=> b!657887 m!923625))

(assert (=> d!225263 d!225391))

(declare-fun d!225393 () Bool)

(declare-fun c!118438 () Bool)

(assert (=> d!225393 (= c!118438 ((_ is Node!2440) (left!5650 (c!118285 acc!218))))))

(declare-fun e!406812 () Bool)

(assert (=> d!225393 (= (inv!8934 (left!5650 (c!118285 acc!218))) e!406812)))

(declare-fun b!657888 () Bool)

(assert (=> b!657888 (= e!406812 (inv!8943 (left!5650 (c!118285 acc!218))))))

(declare-fun b!657889 () Bool)

(declare-fun e!406813 () Bool)

(assert (=> b!657889 (= e!406812 e!406813)))

(declare-fun res!291887 () Bool)

(assert (=> b!657889 (= res!291887 (not ((_ is Leaf!3661) (left!5650 (c!118285 acc!218)))))))

(assert (=> b!657889 (=> res!291887 e!406813)))

(declare-fun b!657890 () Bool)

(assert (=> b!657890 (= e!406813 (inv!8944 (left!5650 (c!118285 acc!218))))))

(assert (= (and d!225393 c!118438) b!657888))

(assert (= (and d!225393 (not c!118438)) b!657889))

(assert (= (and b!657889 (not res!291887)) b!657890))

(declare-fun m!923627 () Bool)

(assert (=> b!657888 m!923627))

(declare-fun m!923629 () Bool)

(assert (=> b!657890 m!923629))

(assert (=> b!657370 d!225393))

(declare-fun d!225395 () Bool)

(declare-fun c!118439 () Bool)

(assert (=> d!225395 (= c!118439 ((_ is Node!2440) (right!5980 (c!118285 acc!218))))))

(declare-fun e!406814 () Bool)

(assert (=> d!225395 (= (inv!8934 (right!5980 (c!118285 acc!218))) e!406814)))

(declare-fun b!657891 () Bool)

(assert (=> b!657891 (= e!406814 (inv!8943 (right!5980 (c!118285 acc!218))))))

(declare-fun b!657892 () Bool)

(declare-fun e!406815 () Bool)

(assert (=> b!657892 (= e!406814 e!406815)))

(declare-fun res!291888 () Bool)

(assert (=> b!657892 (= res!291888 (not ((_ is Leaf!3661) (right!5980 (c!118285 acc!218)))))))

(assert (=> b!657892 (=> res!291888 e!406815)))

(declare-fun b!657893 () Bool)

(assert (=> b!657893 (= e!406815 (inv!8944 (right!5980 (c!118285 acc!218))))))

(assert (= (and d!225395 c!118439) b!657891))

(assert (= (and d!225395 (not c!118439)) b!657892))

(assert (= (and b!657892 (not res!291888)) b!657893))

(declare-fun m!923633 () Bool)

(assert (=> b!657891 m!923633))

(declare-fun m!923635 () Bool)

(assert (=> b!657893 m!923635))

(assert (=> b!657370 d!225395))

(declare-fun d!225397 () Bool)

(declare-fun res!291889 () Bool)

(declare-fun e!406816 () Bool)

(assert (=> d!225397 (=> res!291889 e!406816)))

(assert (=> d!225397 (= res!291889 ((_ is Nil!7054) (++!1888 (list!3009 acc!218) lt!280020)))))

(assert (=> d!225397 (= (forall!1863 (++!1888 (list!3009 acc!218) lt!280020) lambda!20327) e!406816)))

(declare-fun b!657894 () Bool)

(declare-fun e!406817 () Bool)

(assert (=> b!657894 (= e!406816 e!406817)))

(declare-fun res!291890 () Bool)

(assert (=> b!657894 (=> (not res!291890) (not e!406817))))

(assert (=> b!657894 (= res!291890 (dynLambda!3803 lambda!20327 (h!12455 (++!1888 (list!3009 acc!218) lt!280020))))))

(declare-fun b!657895 () Bool)

(assert (=> b!657895 (= e!406817 (forall!1863 (t!86007 (++!1888 (list!3009 acc!218) lt!280020)) lambda!20327))))

(assert (= (and d!225397 (not res!291889)) b!657894))

(assert (= (and b!657894 res!291890) b!657895))

(declare-fun b_lambda!25649 () Bool)

(assert (=> (not b_lambda!25649) (not b!657894)))

(declare-fun m!923649 () Bool)

(assert (=> b!657894 m!923649))

(declare-fun m!923651 () Bool)

(assert (=> b!657895 m!923651))

(assert (=> d!225255 d!225397))

(declare-fun b!657918 () Bool)

(declare-fun res!291907 () Bool)

(declare-fun e!406827 () Bool)

(assert (=> b!657918 (=> (not res!291907) (not e!406827))))

(declare-fun lt!280247 () List!7068)

(assert (=> b!657918 (= res!291907 (= (size!5604 lt!280247) (+ (size!5604 (list!3009 acc!218)) (size!5604 lt!280020))))))

(declare-fun d!225399 () Bool)

(assert (=> d!225399 e!406827))

(declare-fun res!291908 () Bool)

(assert (=> d!225399 (=> (not res!291908) (not e!406827))))

(assert (=> d!225399 (= res!291908 (= (content!1171 lt!280247) ((_ map or) (content!1171 (list!3009 acc!218)) (content!1171 lt!280020))))))

(declare-fun e!406826 () List!7068)

(assert (=> d!225399 (= lt!280247 e!406826)))

(declare-fun c!118442 () Bool)

(assert (=> d!225399 (= c!118442 ((_ is Nil!7054) (list!3009 acc!218)))))

(assert (=> d!225399 (= (++!1888 (list!3009 acc!218) lt!280020) lt!280247)))

(declare-fun b!657916 () Bool)

(assert (=> b!657916 (= e!406826 lt!280020)))

(declare-fun b!657917 () Bool)

(assert (=> b!657917 (= e!406826 (Cons!7054 (h!12455 (list!3009 acc!218)) (++!1888 (t!86007 (list!3009 acc!218)) lt!280020)))))

(declare-fun b!657919 () Bool)

(assert (=> b!657919 (= e!406827 (or (not (= lt!280020 Nil!7054)) (= lt!280247 (list!3009 acc!218))))))

(assert (= (and d!225399 c!118442) b!657916))

(assert (= (and d!225399 (not c!118442)) b!657917))

(assert (= (and d!225399 res!291908) b!657918))

(assert (= (and b!657918 res!291907) b!657919))

(declare-fun m!923673 () Bool)

(assert (=> b!657918 m!923673))

(assert (=> b!657918 m!922969))

(assert (=> b!657918 m!923271))

(declare-fun m!923675 () Bool)

(assert (=> b!657918 m!923675))

(declare-fun m!923677 () Bool)

(assert (=> d!225399 m!923677))

(assert (=> d!225399 m!922969))

(assert (=> d!225399 m!923285))

(declare-fun m!923679 () Bool)

(assert (=> d!225399 m!923679))

(declare-fun m!923681 () Bool)

(assert (=> b!657917 m!923681))

(assert (=> d!225255 d!225399))

(declare-fun d!225405 () Bool)

(assert (=> d!225405 (forall!1863 (++!1888 (list!3009 acc!218) lt!280020) lambda!20327)))

(assert (=> d!225405 true))

(declare-fun _$78!218 () Unit!12289)

(assert (=> d!225405 (= (choose!4668 (list!3009 acc!218) lt!280020 lambda!20327) _$78!218)))

(declare-fun bs!94264 () Bool)

(assert (= bs!94264 d!225405))

(assert (=> bs!94264 m!922969))

(assert (=> bs!94264 m!923113))

(assert (=> bs!94264 m!923113))

(assert (=> bs!94264 m!923115))

(assert (=> d!225255 d!225405))

(assert (=> d!225255 d!225275))

(assert (=> b!657257 d!225265))

(declare-fun b!657924 () Bool)

(declare-fun res!291913 () Bool)

(declare-fun e!406829 () Bool)

(assert (=> b!657924 (=> (not res!291913) (not e!406829))))

(assert (=> b!657924 (= res!291913 (isBalanced!646 (left!5650 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657925 () Bool)

(declare-fun res!291915 () Bool)

(assert (=> b!657925 (=> (not res!291915) (not e!406829))))

(assert (=> b!657925 (= res!291915 (<= (- (height!296 (left!5650 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))) (height!296 (right!5980 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))) 1))))

(declare-fun b!657926 () Bool)

(declare-fun e!406830 () Bool)

(assert (=> b!657926 (= e!406830 e!406829)))

(declare-fun res!291916 () Bool)

(assert (=> b!657926 (=> (not res!291916) (not e!406829))))

(assert (=> b!657926 (= res!291916 (<= (- 1) (- (height!296 (left!5650 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))) (height!296 (right!5980 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))))))

(declare-fun b!657927 () Bool)

(assert (=> b!657927 (= e!406829 (not (isEmpty!4767 (right!5980 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))))))

(declare-fun b!657928 () Bool)

(declare-fun res!291912 () Bool)

(assert (=> b!657928 (=> (not res!291912) (not e!406829))))

(assert (=> b!657928 (= res!291912 (isBalanced!646 (right!5980 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun d!225409 () Bool)

(declare-fun res!291914 () Bool)

(assert (=> d!225409 (=> res!291914 e!406830)))

(assert (=> d!225409 (= res!291914 (not ((_ is Node!2440) (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))))))))

(assert (=> d!225409 (= (isBalanced!646 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))) e!406830)))

(declare-fun b!657923 () Bool)

(declare-fun res!291917 () Bool)

(assert (=> b!657923 (=> (not res!291917) (not e!406829))))

(assert (=> b!657923 (= res!291917 (not (isEmpty!4767 (left!5650 (++!1887 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020)))))))))

(assert (= (and d!225409 (not res!291914)) b!657926))

(assert (= (and b!657926 res!291916) b!657925))

(assert (= (and b!657925 res!291915) b!657924))

(assert (= (and b!657924 res!291913) b!657928))

(assert (= (and b!657928 res!291912) b!657923))

(assert (= (and b!657923 res!291917) b!657927))

(declare-fun m!923689 () Bool)

(assert (=> b!657923 m!923689))

(declare-fun m!923691 () Bool)

(assert (=> b!657926 m!923691))

(declare-fun m!923693 () Bool)

(assert (=> b!657926 m!923693))

(declare-fun m!923695 () Bool)

(assert (=> b!657928 m!923695))

(assert (=> b!657925 m!923691))

(assert (=> b!657925 m!923693))

(declare-fun m!923697 () Bool)

(assert (=> b!657924 m!923697))

(declare-fun m!923699 () Bool)

(assert (=> b!657927 m!923699))

(assert (=> b!657317 d!225409))

(assert (=> b!657317 d!225373))

(declare-fun d!225411 () Bool)

(declare-fun e!406839 () Bool)

(assert (=> d!225411 e!406839))

(declare-fun res!291923 () Bool)

(assert (=> d!225411 (=> (not res!291923) (not e!406839))))

(declare-fun lt!280253 () BalanceConc!4892)

(assert (=> d!225411 (= res!291923 (= (list!3009 lt!280253) lt!280020))))

(declare-fun fromList!294 (List!7068) Conc!2440)

(assert (=> d!225411 (= lt!280253 (BalanceConc!4893 (fromList!294 lt!280020)))))

(assert (=> d!225411 (= (fromListB!634 lt!280020) lt!280253)))

(declare-fun b!657940 () Bool)

(assert (=> b!657940 (= e!406839 (isBalanced!646 (fromList!294 lt!280020)))))

(assert (= (and d!225411 res!291923) b!657940))

(declare-fun m!923709 () Bool)

(assert (=> d!225411 m!923709))

(declare-fun m!923711 () Bool)

(assert (=> d!225411 m!923711))

(assert (=> b!657940 m!923711))

(assert (=> b!657940 m!923711))

(declare-fun m!923713 () Bool)

(assert (=> b!657940 m!923713))

(assert (=> d!225251 d!225411))

(declare-fun b!657980 () Bool)

(declare-fun e!406872 () Bool)

(declare-fun e!406876 () Bool)

(assert (=> b!657980 (= e!406872 e!406876)))

(declare-fun res!291948 () Bool)

(assert (=> b!657980 (=> (not res!291948) (not e!406876))))

(declare-fun appendAssoc!34 (List!7068 List!7068 List!7068) Bool)

(assert (=> b!657980 (= res!291948 (appendAssoc!34 (list!3013 (c!118285 acc!218)) (list!3013 (left!5650 (c!118285 (seqFromList!1460 lt!280020)))) (list!3013 (right!5980 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657981 () Bool)

(declare-fun e!406871 () Bool)

(declare-fun e!406875 () Bool)

(assert (=> b!657981 (= e!406871 e!406875)))

(declare-fun res!291947 () Bool)

(assert (=> b!657981 (=> (not res!291947) (not e!406875))))

(assert (=> b!657981 (= res!291947 (appendAssoc!34 (list!3013 (left!5650 (c!118285 acc!218))) (list!3013 (right!5980 (c!118285 acc!218))) (list!3013 (c!118285 (seqFromList!1460 lt!280020)))))))

(declare-fun b!657982 () Bool)

(declare-fun e!406870 () Bool)

(declare-fun e!406874 () Bool)

(assert (=> b!657982 (= e!406870 e!406874)))

(declare-fun res!291945 () Bool)

(assert (=> b!657982 (=> (not res!291945) (not e!406874))))

(assert (=> b!657982 (= res!291945 (appendAssoc!34 (list!3013 (c!118285 acc!218)) (list!3013 (left!5650 (left!5650 (c!118285 (seqFromList!1460 lt!280020))))) (list!3013 (right!5980 (left!5650 (c!118285 (seqFromList!1460 lt!280020)))))))))

(declare-fun b!657983 () Bool)

(assert (=> b!657983 (= e!406876 e!406870)))

(declare-fun res!291952 () Bool)

(assert (=> b!657983 (=> res!291952 e!406870)))

(assert (=> b!657983 (= res!291952 (not ((_ is Node!2440) (left!5650 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657984 () Bool)

(declare-fun e!406878 () Bool)

(assert (=> b!657984 (= e!406878 e!406872)))

(declare-fun res!291949 () Bool)

(assert (=> b!657984 (=> res!291949 e!406872)))

(assert (=> b!657984 (= res!291949 (not ((_ is Node!2440) (c!118285 (seqFromList!1460 lt!280020)))))))

(declare-fun b!657985 () Bool)

(declare-fun e!406877 () Bool)

(assert (=> b!657985 (= e!406877 (appendAssoc!34 (list!3013 (left!5650 (c!118285 acc!218))) (list!3013 (left!5650 (right!5980 (c!118285 acc!218)))) (++!1888 (list!3013 (right!5980 (right!5980 (c!118285 acc!218)))) (list!3013 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun d!225415 () Bool)

(assert (=> d!225415 e!406878))

(declare-fun res!291953 () Bool)

(assert (=> d!225415 (=> (not res!291953) (not e!406878))))

(assert (=> d!225415 (= res!291953 e!406871)))

(declare-fun res!291950 () Bool)

(assert (=> d!225415 (=> res!291950 e!406871)))

(assert (=> d!225415 (= res!291950 (not ((_ is Node!2440) (c!118285 acc!218))))))

(assert (=> d!225415 (= (appendAssocInst!127 (c!118285 acc!218) (c!118285 (seqFromList!1460 lt!280020))) true)))

(declare-fun b!657986 () Bool)

(assert (=> b!657986 (= e!406874 (appendAssoc!34 (++!1888 (list!3013 (c!118285 acc!218)) (list!3013 (left!5650 (left!5650 (c!118285 (seqFromList!1460 lt!280020)))))) (list!3013 (right!5980 (left!5650 (c!118285 (seqFromList!1460 lt!280020))))) (list!3013 (right!5980 (c!118285 (seqFromList!1460 lt!280020))))))))

(declare-fun b!657987 () Bool)

(declare-fun e!406873 () Bool)

(assert (=> b!657987 (= e!406875 e!406873)))

(declare-fun res!291951 () Bool)

(assert (=> b!657987 (=> res!291951 e!406873)))

(assert (=> b!657987 (= res!291951 (not ((_ is Node!2440) (right!5980 (c!118285 acc!218)))))))

(declare-fun b!657988 () Bool)

(assert (=> b!657988 (= e!406873 e!406877)))

(declare-fun res!291946 () Bool)

(assert (=> b!657988 (=> (not res!291946) (not e!406877))))

(assert (=> b!657988 (= res!291946 (appendAssoc!34 (list!3013 (left!5650 (right!5980 (c!118285 acc!218)))) (list!3013 (right!5980 (right!5980 (c!118285 acc!218)))) (list!3013 (c!118285 (seqFromList!1460 lt!280020)))))))

(assert (= (and d!225415 (not res!291950)) b!657981))

(assert (= (and b!657981 res!291947) b!657987))

(assert (= (and b!657987 (not res!291951)) b!657988))

(assert (= (and b!657988 res!291946) b!657985))

(assert (= (and d!225415 res!291953) b!657984))

(assert (= (and b!657984 (not res!291949)) b!657980))

(assert (= (and b!657980 res!291948) b!657983))

(assert (= (and b!657983 (not res!291952)) b!657982))

(assert (= (and b!657982 res!291945) b!657986))

(assert (=> b!657981 m!923199))

(assert (=> b!657981 m!923201))

(assert (=> b!657981 m!923581))

(assert (=> b!657981 m!923199))

(assert (=> b!657981 m!923201))

(assert (=> b!657981 m!923581))

(declare-fun m!923739 () Bool)

(assert (=> b!657981 m!923739))

(assert (=> b!657980 m!923127))

(declare-fun m!923741 () Bool)

(assert (=> b!657980 m!923741))

(declare-fun m!923743 () Bool)

(assert (=> b!657980 m!923743))

(assert (=> b!657980 m!923127))

(assert (=> b!657980 m!923741))

(assert (=> b!657980 m!923743))

(declare-fun m!923745 () Bool)

(assert (=> b!657980 m!923745))

(assert (=> b!657982 m!923127))

(declare-fun m!923747 () Bool)

(assert (=> b!657982 m!923747))

(declare-fun m!923749 () Bool)

(assert (=> b!657982 m!923749))

(assert (=> b!657982 m!923127))

(assert (=> b!657982 m!923747))

(assert (=> b!657982 m!923749))

(declare-fun m!923751 () Bool)

(assert (=> b!657982 m!923751))

(declare-fun m!923753 () Bool)

(assert (=> b!657988 m!923753))

(declare-fun m!923755 () Bool)

(assert (=> b!657988 m!923755))

(assert (=> b!657988 m!923581))

(assert (=> b!657988 m!923753))

(assert (=> b!657988 m!923755))

(assert (=> b!657988 m!923581))

(declare-fun m!923757 () Bool)

(assert (=> b!657988 m!923757))

(assert (=> b!657985 m!923199))

(assert (=> b!657985 m!923753))

(assert (=> b!657985 m!923755))

(assert (=> b!657985 m!923755))

(assert (=> b!657985 m!923581))

(declare-fun m!923759 () Bool)

(assert (=> b!657985 m!923759))

(assert (=> b!657985 m!923581))

(assert (=> b!657985 m!923199))

(assert (=> b!657985 m!923753))

(assert (=> b!657985 m!923759))

(declare-fun m!923761 () Bool)

(assert (=> b!657985 m!923761))

(assert (=> b!657986 m!923749))

(assert (=> b!657986 m!923743))

(assert (=> b!657986 m!923747))

(declare-fun m!923763 () Bool)

(assert (=> b!657986 m!923763))

(assert (=> b!657986 m!923749))

(assert (=> b!657986 m!923743))

(declare-fun m!923765 () Bool)

(assert (=> b!657986 m!923765))

(assert (=> b!657986 m!923127))

(assert (=> b!657986 m!923747))

(assert (=> b!657986 m!923763))

(assert (=> b!657986 m!923127))

(assert (=> d!225245 d!225415))

(assert (=> d!225245 d!225373))

(declare-fun d!225421 () Bool)

(assert (=> d!225421 (= (list!3009 lt!280048) (list!3013 (c!118285 lt!280048)))))

(declare-fun bs!94265 () Bool)

(assert (= bs!94265 d!225421))

(declare-fun m!923767 () Bool)

(assert (=> bs!94265 m!923767))

(assert (=> b!657320 d!225421))

(declare-fun b!658005 () Bool)

(declare-fun res!291960 () Bool)

(declare-fun e!406886 () Bool)

(assert (=> b!658005 (=> (not res!291960) (not e!406886))))

(declare-fun lt!280260 () List!7068)

(assert (=> b!658005 (= res!291960 (= (size!5604 lt!280260) (+ (size!5604 (list!3009 acc!218)) (size!5604 (list!3009 (seqFromList!1460 lt!280020))))))))

(declare-fun d!225423 () Bool)

(assert (=> d!225423 e!406886))

(declare-fun res!291961 () Bool)

(assert (=> d!225423 (=> (not res!291961) (not e!406886))))

(assert (=> d!225423 (= res!291961 (= (content!1171 lt!280260) ((_ map or) (content!1171 (list!3009 acc!218)) (content!1171 (list!3009 (seqFromList!1460 lt!280020))))))))

(declare-fun e!406885 () List!7068)

(assert (=> d!225423 (= lt!280260 e!406885)))

(declare-fun c!118460 () Bool)

(assert (=> d!225423 (= c!118460 ((_ is Nil!7054) (list!3009 acc!218)))))

(assert (=> d!225423 (= (++!1888 (list!3009 acc!218) (list!3009 (seqFromList!1460 lt!280020))) lt!280260)))

(declare-fun b!658003 () Bool)

(assert (=> b!658003 (= e!406885 (list!3009 (seqFromList!1460 lt!280020)))))

(declare-fun b!658004 () Bool)

(assert (=> b!658004 (= e!406885 (Cons!7054 (h!12455 (list!3009 acc!218)) (++!1888 (t!86007 (list!3009 acc!218)) (list!3009 (seqFromList!1460 lt!280020)))))))

(declare-fun b!658006 () Bool)

(assert (=> b!658006 (= e!406886 (or (not (= (list!3009 (seqFromList!1460 lt!280020)) Nil!7054)) (= lt!280260 (list!3009 acc!218))))))

(assert (= (and d!225423 c!118460) b!658003))

(assert (= (and d!225423 (not c!118460)) b!658004))

(assert (= (and d!225423 res!291961) b!658005))

(assert (= (and b!658005 res!291960) b!658006))

(declare-fun m!923769 () Bool)

(assert (=> b!658005 m!923769))

(assert (=> b!658005 m!922969))

(assert (=> b!658005 m!923271))

(assert (=> b!658005 m!923081))

(declare-fun m!923771 () Bool)

(assert (=> b!658005 m!923771))

(declare-fun m!923773 () Bool)

(assert (=> d!225423 m!923773))

(assert (=> d!225423 m!922969))

(assert (=> d!225423 m!923285))

(assert (=> d!225423 m!923081))

(declare-fun m!923775 () Bool)

(assert (=> d!225423 m!923775))

(assert (=> b!658004 m!923081))

(declare-fun m!923777 () Bool)

(assert (=> b!658004 m!923777))

(assert (=> b!657320 d!225423))

(assert (=> b!657320 d!225263))

(declare-fun d!225425 () Bool)

(assert (=> d!225425 (= (list!3009 (seqFromList!1460 lt!280020)) (list!3013 (c!118285 (seqFromList!1460 lt!280020))))))

(declare-fun bs!94266 () Bool)

(assert (= bs!94266 d!225425))

(assert (=> bs!94266 m!923581))

(assert (=> b!657320 d!225425))

(declare-fun d!225427 () Bool)

(declare-fun res!291968 () Bool)

(declare-fun e!406897 () Bool)

(assert (=> d!225427 (=> (not res!291968) (not e!406897))))

(declare-fun size!5606 (Conc!2440) Int)

(assert (=> d!225427 (= res!291968 (= (csize!5110 (c!118285 acc!218)) (+ (size!5606 (left!5650 (c!118285 acc!218))) (size!5606 (right!5980 (c!118285 acc!218))))))))

(assert (=> d!225427 (= (inv!8943 (c!118285 acc!218)) e!406897)))

(declare-fun b!658025 () Bool)

(declare-fun res!291969 () Bool)

(assert (=> b!658025 (=> (not res!291969) (not e!406897))))

(assert (=> b!658025 (= res!291969 (and (not (= (left!5650 (c!118285 acc!218)) Empty!2440)) (not (= (right!5980 (c!118285 acc!218)) Empty!2440))))))

(declare-fun b!658026 () Bool)

(declare-fun res!291970 () Bool)

(assert (=> b!658026 (=> (not res!291970) (not e!406897))))

(assert (=> b!658026 (= res!291970 (= (cheight!2651 (c!118285 acc!218)) (+ (max!0 (height!296 (left!5650 (c!118285 acc!218))) (height!296 (right!5980 (c!118285 acc!218)))) 1)))))

(declare-fun b!658027 () Bool)

(assert (=> b!658027 (= e!406897 (<= 0 (cheight!2651 (c!118285 acc!218))))))

(assert (= (and d!225427 res!291968) b!658025))

(assert (= (and b!658025 res!291969) b!658026))

(assert (= (and b!658026 res!291970) b!658027))

(declare-fun m!923805 () Bool)

(assert (=> d!225427 m!923805))

(declare-fun m!923807 () Bool)

(assert (=> d!225427 m!923807))

(assert (=> b!658026 m!923467))

(assert (=> b!658026 m!923607))

(assert (=> b!658026 m!923467))

(assert (=> b!658026 m!923607))

(declare-fun m!923809 () Bool)

(assert (=> b!658026 m!923809))

(assert (=> b!657347 d!225427))

(declare-fun d!225437 () Bool)

(assert (=> d!225437 true))

(assert (=> d!225437 true))

(declare-fun res!291973 () Bool)

(assert (=> d!225437 (= (choose!511 lt!280017 RightBrace!1444) res!291973)))

(assert (=> d!225213 d!225437))

(assert (=> b!657282 d!225271))

(declare-fun d!225439 () Bool)

(assert (=> d!225439 (= (inv!8945 (xs!5080 (c!118284 ts!14))) (<= (size!5602 (innerList!2497 (xs!5080 (c!118284 ts!14)))) 2147483647))))

(declare-fun bs!94267 () Bool)

(assert (= bs!94267 d!225439))

(declare-fun m!923811 () Bool)

(assert (=> bs!94267 m!923811))

(assert (=> b!657362 d!225439))

(declare-fun d!225441 () Bool)

(declare-fun c!118463 () Bool)

(assert (=> d!225441 (= c!118463 ((_ is Node!2439) (left!5649 (c!118284 ts!14))))))

(declare-fun e!406907 () Bool)

(assert (=> d!225441 (= (inv!8933 (left!5649 (c!118284 ts!14))) e!406907)))

(declare-fun b!658038 () Bool)

(assert (=> b!658038 (= e!406907 (inv!8937 (left!5649 (c!118284 ts!14))))))

(declare-fun b!658039 () Bool)

(declare-fun e!406909 () Bool)

(assert (=> b!658039 (= e!406907 e!406909)))

(declare-fun res!291974 () Bool)

(assert (=> b!658039 (= res!291974 (not ((_ is Leaf!3660) (left!5649 (c!118284 ts!14)))))))

(assert (=> b!658039 (=> res!291974 e!406909)))

(declare-fun b!658040 () Bool)

(assert (=> b!658040 (= e!406909 (inv!8938 (left!5649 (c!118284 ts!14))))))

(assert (= (and d!225441 c!118463) b!658038))

(assert (= (and d!225441 (not c!118463)) b!658039))

(assert (= (and b!658039 (not res!291974)) b!658040))

(declare-fun m!923813 () Bool)

(assert (=> b!658038 m!923813))

(declare-fun m!923815 () Bool)

(assert (=> b!658040 m!923815))

(assert (=> b!657361 d!225441))

(declare-fun d!225443 () Bool)

(declare-fun c!118464 () Bool)

(assert (=> d!225443 (= c!118464 ((_ is Node!2439) (right!5979 (c!118284 ts!14))))))

(declare-fun e!406912 () Bool)

(assert (=> d!225443 (= (inv!8933 (right!5979 (c!118284 ts!14))) e!406912)))

(declare-fun b!658041 () Bool)

(assert (=> b!658041 (= e!406912 (inv!8937 (right!5979 (c!118284 ts!14))))))

(declare-fun b!658042 () Bool)

(declare-fun e!406913 () Bool)

(assert (=> b!658042 (= e!406912 e!406913)))

(declare-fun res!291975 () Bool)

(assert (=> b!658042 (= res!291975 (not ((_ is Leaf!3660) (right!5979 (c!118284 ts!14)))))))

(assert (=> b!658042 (=> res!291975 e!406913)))

(declare-fun b!658043 () Bool)

(assert (=> b!658043 (= e!406913 (inv!8938 (right!5979 (c!118284 ts!14))))))

(assert (= (and d!225443 c!118464) b!658041))

(assert (= (and d!225443 (not c!118464)) b!658042))

(assert (= (and b!658042 (not res!291975)) b!658043))

(declare-fun m!923817 () Bool)

(assert (=> b!658041 m!923817))

(declare-fun m!923819 () Bool)

(assert (=> b!658043 m!923819))

(assert (=> b!657361 d!225443))

(declare-fun d!225445 () Bool)

(declare-fun res!291980 () Bool)

(declare-fun e!406924 () Bool)

(assert (=> d!225445 (=> (not res!291980) (not e!406924))))

(assert (=> d!225445 (= res!291980 (<= (size!5604 (list!3016 (xs!5081 (c!118285 acc!218)))) 512))))

(assert (=> d!225445 (= (inv!8944 (c!118285 acc!218)) e!406924)))

(declare-fun b!658054 () Bool)

(declare-fun res!291981 () Bool)

(assert (=> b!658054 (=> (not res!291981) (not e!406924))))

(assert (=> b!658054 (= res!291981 (= (csize!5111 (c!118285 acc!218)) (size!5604 (list!3016 (xs!5081 (c!118285 acc!218))))))))

(declare-fun b!658055 () Bool)

(assert (=> b!658055 (= e!406924 (and (> (csize!5111 (c!118285 acc!218)) 0) (<= (csize!5111 (c!118285 acc!218)) 512)))))

(assert (= (and d!225445 res!291980) b!658054))

(assert (= (and b!658054 res!291981) b!658055))

(assert (=> d!225445 m!923477))

(assert (=> d!225445 m!923477))

(declare-fun m!923829 () Bool)

(assert (=> d!225445 m!923829))

(assert (=> b!658054 m!923477))

(assert (=> b!658054 m!923477))

(assert (=> b!658054 m!923829))

(assert (=> b!657349 d!225445))

(assert (=> b!657249 d!225221))

(declare-fun b!658068 () Bool)

(declare-fun res!291997 () Bool)

(declare-fun e!406929 () Bool)

(assert (=> b!658068 (=> (not res!291997) (not e!406929))))

(assert (=> b!658068 (= res!291997 (isBalanced!648 (left!5649 (c!118284 ts!14))))))

(declare-fun b!658069 () Bool)

(declare-fun res!291994 () Bool)

(assert (=> b!658069 (=> (not res!291994) (not e!406929))))

(assert (=> b!658069 (= res!291994 (isBalanced!648 (right!5979 (c!118284 ts!14))))))

(declare-fun b!658070 () Bool)

(declare-fun isEmpty!4770 (Conc!2439) Bool)

(assert (=> b!658070 (= e!406929 (not (isEmpty!4770 (right!5979 (c!118284 ts!14)))))))

(declare-fun b!658071 () Bool)

(declare-fun e!406930 () Bool)

(assert (=> b!658071 (= e!406930 e!406929)))

(declare-fun res!291995 () Bool)

(assert (=> b!658071 (=> (not res!291995) (not e!406929))))

(assert (=> b!658071 (= res!291995 (<= (- 1) (- (height!298 (left!5649 (c!118284 ts!14))) (height!298 (right!5979 (c!118284 ts!14))))))))

(declare-fun b!658073 () Bool)

(declare-fun res!291996 () Bool)

(assert (=> b!658073 (=> (not res!291996) (not e!406929))))

(assert (=> b!658073 (= res!291996 (not (isEmpty!4770 (left!5649 (c!118284 ts!14)))))))

(declare-fun b!658072 () Bool)

(declare-fun res!291999 () Bool)

(assert (=> b!658072 (=> (not res!291999) (not e!406929))))

(assert (=> b!658072 (= res!291999 (<= (- (height!298 (left!5649 (c!118284 ts!14))) (height!298 (right!5979 (c!118284 ts!14)))) 1))))

(declare-fun d!225447 () Bool)

(declare-fun res!291998 () Bool)

(assert (=> d!225447 (=> res!291998 e!406930)))

(assert (=> d!225447 (= res!291998 (not ((_ is Node!2439) (c!118284 ts!14))))))

(assert (=> d!225447 (= (isBalanced!648 (c!118284 ts!14)) e!406930)))

(assert (= (and d!225447 (not res!291998)) b!658071))

(assert (= (and b!658071 res!291995) b!658072))

(assert (= (and b!658072 res!291999) b!658068))

(assert (= (and b!658068 res!291997) b!658069))

(assert (= (and b!658069 res!291994) b!658073))

(assert (= (and b!658073 res!291996) b!658070))

(declare-fun m!923831 () Bool)

(assert (=> b!658069 m!923831))

(declare-fun m!923833 () Bool)

(assert (=> b!658068 m!923833))

(declare-fun m!923835 () Bool)

(assert (=> b!658073 m!923835))

(assert (=> b!658071 m!923231))

(assert (=> b!658071 m!923233))

(assert (=> b!658072 m!923231))

(assert (=> b!658072 m!923233))

(declare-fun m!923837 () Bool)

(assert (=> b!658070 m!923837))

(assert (=> d!225235 d!225447))

(declare-fun d!225457 () Bool)

(declare-fun res!292000 () Bool)

(declare-fun e!406931 () Bool)

(assert (=> d!225457 (=> res!292000 e!406931)))

(assert (=> d!225457 (= res!292000 ((_ is Nil!7054) (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020)))))))

(assert (=> d!225457 (= (forall!1863 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))) lambda!20327) e!406931)))

(declare-fun b!658074 () Bool)

(declare-fun e!406932 () Bool)

(assert (=> b!658074 (= e!406931 e!406932)))

(declare-fun res!292001 () Bool)

(assert (=> b!658074 (=> (not res!292001) (not e!406932))))

(assert (=> b!658074 (= res!292001 (dynLambda!3803 lambda!20327 (h!12455 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))))))))

(declare-fun b!658075 () Bool)

(assert (=> b!658075 (= e!406932 (forall!1863 (t!86007 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) lambda!20327))))

(assert (= (and d!225457 (not res!292000)) b!658074))

(assert (= (and b!658074 res!292001) b!658075))

(declare-fun b_lambda!25659 () Bool)

(assert (=> (not b_lambda!25659) (not b!658074)))

(declare-fun m!923839 () Bool)

(assert (=> b!658074 m!923839))

(declare-fun m!923841 () Bool)

(assert (=> b!658075 m!923841))

(assert (=> d!225261 d!225457))

(declare-fun d!225459 () Bool)

(assert (=> d!225459 (= (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))) (list!3013 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))))))

(declare-fun bs!94272 () Bool)

(assert (= bs!94272 d!225459))

(declare-fun m!923843 () Bool)

(assert (=> bs!94272 m!923843))

(assert (=> d!225261 d!225459))

(declare-fun b!658076 () Bool)

(declare-fun e!406933 () Bool)

(declare-fun e!406935 () Bool)

(assert (=> b!658076 (= e!406933 e!406935)))

(declare-fun c!118465 () Bool)

(assert (=> b!658076 (= c!118465 ((_ is Leaf!3661) (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))))))

(declare-fun b!658078 () Bool)

(declare-fun e!406934 () Bool)

(assert (=> b!658078 (= e!406935 e!406934)))

(declare-fun lt!280262 () Unit!12289)

(assert (=> b!658078 (= lt!280262 (lemmaForallConcat!51 (list!3013 (left!5650 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020))))) (list!3013 (right!5980 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020))))) lambda!20327))))

(declare-fun res!292002 () Bool)

(assert (=> b!658078 (= res!292002 (forall!1864 (left!5650 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) lambda!20327))))

(assert (=> b!658078 (=> (not res!292002) (not e!406934))))

(declare-fun d!225461 () Bool)

(declare-fun lt!280261 () Bool)

(assert (=> d!225461 (= lt!280261 (forall!1863 (list!3013 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) lambda!20327))))

(assert (=> d!225461 (= lt!280261 e!406933)))

(declare-fun res!292003 () Bool)

(assert (=> d!225461 (=> res!292003 e!406933)))

(assert (=> d!225461 (= res!292003 ((_ is Empty!2440) (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))))))

(assert (=> d!225461 (= (forall!1864 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020))) lambda!20327) lt!280261)))

(declare-fun b!658077 () Bool)

(assert (=> b!658077 (= e!406935 (forall!1866 (xs!5081 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) lambda!20327))))

(declare-fun b!658079 () Bool)

(assert (=> b!658079 (= e!406934 (forall!1864 (right!5980 (c!118285 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) lambda!20327))))

(assert (= (and d!225461 (not res!292003)) b!658076))

(assert (= (and b!658076 c!118465) b!658077))

(assert (= (and b!658076 (not c!118465)) b!658078))

(assert (= (and b!658078 res!292002) b!658079))

(declare-fun m!923845 () Bool)

(assert (=> b!658078 m!923845))

(declare-fun m!923847 () Bool)

(assert (=> b!658078 m!923847))

(assert (=> b!658078 m!923845))

(assert (=> b!658078 m!923847))

(declare-fun m!923849 () Bool)

(assert (=> b!658078 m!923849))

(declare-fun m!923851 () Bool)

(assert (=> b!658078 m!923851))

(assert (=> d!225461 m!923843))

(assert (=> d!225461 m!923843))

(declare-fun m!923853 () Bool)

(assert (=> d!225461 m!923853))

(declare-fun m!923855 () Bool)

(assert (=> b!658077 m!923855))

(declare-fun m!923857 () Bool)

(assert (=> b!658079 m!923857))

(assert (=> d!225261 d!225461))

(declare-fun d!225463 () Bool)

(assert (=> d!225463 true))

(assert (=> d!225463 true))

(declare-fun res!292004 () Bool)

(assert (=> d!225463 (= (choose!511 lt!280017 LeftBrace!1444) res!292004)))

(assert (=> d!225227 d!225463))

(declare-fun e!406937 () Bool)

(declare-fun tp!200765 () Bool)

(declare-fun b!658080 () Bool)

(declare-fun tp!200766 () Bool)

(assert (=> b!658080 (= e!406937 (and (inv!8933 (left!5649 (left!5649 (c!118284 ts!14)))) tp!200765 (inv!8933 (right!5979 (left!5649 (c!118284 ts!14)))) tp!200766))))

(declare-fun b!658082 () Bool)

(declare-fun e!406936 () Bool)

(declare-fun tp!200767 () Bool)

(assert (=> b!658082 (= e!406936 tp!200767)))

(declare-fun b!658081 () Bool)

(assert (=> b!658081 (= e!406937 (and (inv!8945 (xs!5080 (left!5649 (c!118284 ts!14)))) e!406936))))

(assert (=> b!657361 (= tp!200737 (and (inv!8933 (left!5649 (c!118284 ts!14))) e!406937))))

(assert (= (and b!657361 ((_ is Node!2439) (left!5649 (c!118284 ts!14)))) b!658080))

(assert (= b!658081 b!658082))

(assert (= (and b!657361 ((_ is Leaf!3660) (left!5649 (c!118284 ts!14)))) b!658081))

(declare-fun m!923859 () Bool)

(assert (=> b!658080 m!923859))

(declare-fun m!923861 () Bool)

(assert (=> b!658080 m!923861))

(declare-fun m!923863 () Bool)

(assert (=> b!658081 m!923863))

(assert (=> b!657361 m!923161))

(declare-fun tp!200769 () Bool)

(declare-fun e!406939 () Bool)

(declare-fun b!658083 () Bool)

(declare-fun tp!200768 () Bool)

(assert (=> b!658083 (= e!406939 (and (inv!8933 (left!5649 (right!5979 (c!118284 ts!14)))) tp!200768 (inv!8933 (right!5979 (right!5979 (c!118284 ts!14)))) tp!200769))))

(declare-fun b!658085 () Bool)

(declare-fun e!406938 () Bool)

(declare-fun tp!200770 () Bool)

(assert (=> b!658085 (= e!406938 tp!200770)))

(declare-fun b!658084 () Bool)

(assert (=> b!658084 (= e!406939 (and (inv!8945 (xs!5080 (right!5979 (c!118284 ts!14)))) e!406938))))

(assert (=> b!657361 (= tp!200738 (and (inv!8933 (right!5979 (c!118284 ts!14))) e!406939))))

(assert (= (and b!657361 ((_ is Node!2439) (right!5979 (c!118284 ts!14)))) b!658083))

(assert (= b!658084 b!658085))

(assert (= (and b!657361 ((_ is Leaf!3660) (right!5979 (c!118284 ts!14)))) b!658084))

(declare-fun m!923865 () Bool)

(assert (=> b!658083 m!923865))

(declare-fun m!923867 () Bool)

(assert (=> b!658083 m!923867))

(declare-fun m!923869 () Bool)

(assert (=> b!658084 m!923869))

(assert (=> b!657361 m!923163))

(declare-fun tp!200772 () Bool)

(declare-fun b!658086 () Bool)

(declare-fun tp!200771 () Bool)

(declare-fun e!406940 () Bool)

(assert (=> b!658086 (= e!406940 (and (inv!8934 (left!5650 (left!5650 (c!118285 acc!218)))) tp!200771 (inv!8934 (right!5980 (left!5650 (c!118285 acc!218)))) tp!200772))))

(declare-fun b!658087 () Bool)

(assert (=> b!658087 (= e!406940 (inv!8946 (xs!5081 (left!5650 (c!118285 acc!218)))))))

(assert (=> b!657370 (= tp!200744 (and (inv!8934 (left!5650 (c!118285 acc!218))) e!406940))))

(assert (= (and b!657370 ((_ is Node!2440) (left!5650 (c!118285 acc!218)))) b!658086))

(assert (= (and b!657370 ((_ is Leaf!3661) (left!5650 (c!118285 acc!218)))) b!658087))

(declare-fun m!923871 () Bool)

(assert (=> b!658086 m!923871))

(declare-fun m!923873 () Bool)

(assert (=> b!658086 m!923873))

(declare-fun m!923875 () Bool)

(assert (=> b!658087 m!923875))

(assert (=> b!657370 m!923167))

(declare-fun b!658088 () Bool)

(declare-fun e!406942 () Bool)

(declare-fun tp!200773 () Bool)

(declare-fun tp!200774 () Bool)

(assert (=> b!658088 (= e!406942 (and (inv!8934 (left!5650 (right!5980 (c!118285 acc!218)))) tp!200773 (inv!8934 (right!5980 (right!5980 (c!118285 acc!218)))) tp!200774))))

(declare-fun b!658089 () Bool)

(assert (=> b!658089 (= e!406942 (inv!8946 (xs!5081 (right!5980 (c!118285 acc!218)))))))

(assert (=> b!657370 (= tp!200745 (and (inv!8934 (right!5980 (c!118285 acc!218))) e!406942))))

(assert (= (and b!657370 ((_ is Node!2440) (right!5980 (c!118285 acc!218)))) b!658088))

(assert (= (and b!657370 ((_ is Leaf!3661) (right!5980 (c!118285 acc!218)))) b!658089))

(declare-fun m!923877 () Bool)

(assert (=> b!658088 m!923877))

(declare-fun m!923879 () Bool)

(assert (=> b!658088 m!923879))

(declare-fun m!923881 () Bool)

(assert (=> b!658089 m!923881))

(assert (=> b!657370 m!923169))

(declare-fun b!658103 () Bool)

(declare-fun b_free!18981 () Bool)

(declare-fun b_next!19045 () Bool)

(assert (=> b!658103 (= b_free!18981 (not b_next!19045))))

(declare-fun tp!200783 () Bool)

(declare-fun b_and!62775 () Bool)

(assert (=> b!658103 (= tp!200783 b_and!62775)))

(declare-fun b_free!18983 () Bool)

(declare-fun b_next!19047 () Bool)

(assert (=> b!658103 (= b_free!18983 (not b_next!19047))))

(declare-fun tp!200782 () Bool)

(declare-fun b_and!62777 () Bool)

(assert (=> b!658103 (= tp!200782 b_and!62777)))

(declare-fun tp!200781 () Bool)

(declare-fun b!658100 () Bool)

(declare-fun e!406960 () Bool)

(declare-fun e!406959 () Bool)

(declare-fun inv!8947 (Token!2542) Bool)

(assert (=> b!658100 (= e!406960 (and (inv!8947 (h!12454 (innerList!2497 (xs!5080 (c!118284 ts!14))))) e!406959 tp!200781))))

(declare-fun e!406961 () Bool)

(assert (=> b!658103 (= e!406961 (and tp!200783 tp!200782))))

(declare-fun b!658102 () Bool)

(declare-fun e!406958 () Bool)

(declare-fun inv!8926 (String!8958) Bool)

(declare-fun inv!8948 (TokenValueInjection!2640) Bool)

(assert (=> b!658102 (= e!406958 (and (inv!8926 (tag!1672 (rule!2205 (h!12454 (innerList!2497 (xs!5080 (c!118284 ts!14))))))) (inv!8948 (transformation!1410 (rule!2205 (h!12454 (innerList!2497 (xs!5080 (c!118284 ts!14))))))) e!406961))))

(declare-fun b!658101 () Bool)

(declare-fun inv!21 (TokenValue!1444) Bool)

(assert (=> b!658101 (= e!406959 (and (inv!21 (value!45336 (h!12454 (innerList!2497 (xs!5080 (c!118284 ts!14)))))) e!406958))))

(assert (=> b!657363 (= tp!200739 e!406960)))

(assert (= b!658102 b!658103))

(assert (= b!658101 b!658102))

(assert (= b!658100 b!658101))

(assert (= (and b!657363 ((_ is Cons!7053) (innerList!2497 (xs!5080 (c!118284 ts!14))))) b!658100))

(declare-fun m!923883 () Bool)

(assert (=> b!658100 m!923883))

(declare-fun m!923885 () Bool)

(assert (=> b!658102 m!923885))

(declare-fun m!923887 () Bool)

(assert (=> b!658102 m!923887))

(declare-fun m!923889 () Bool)

(assert (=> b!658101 m!923889))

(declare-fun b_lambda!25661 () Bool)

(assert (= b_lambda!25659 (or b!657253 b_lambda!25661)))

(declare-fun bs!94273 () Bool)

(declare-fun d!225465 () Bool)

(assert (= bs!94273 (and d!225465 b!657253)))

(assert (=> bs!94273 (= (dynLambda!3803 lambda!20327 (h!12455 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))))) (and (<= 0 (h!12455 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020))))) (< (h!12455 (list!3009 (++!1884 acc!218 (seqFromList!1460 lt!280020)))) size!101)))))

(assert (=> b!658074 d!225465))

(declare-fun b_lambda!25663 () Bool)

(assert (= b_lambda!25643 (or b!657253 b_lambda!25663)))

(declare-fun bs!94274 () Bool)

(declare-fun d!225467 () Bool)

(assert (= bs!94274 (and d!225467 b!657253)))

(assert (=> bs!94274 (= (dynLambda!3803 lambda!20327 (h!12455 (list!3009 lt!280018))) (and (<= 0 (h!12455 (list!3009 lt!280018))) (< (h!12455 (list!3009 lt!280018)) size!101)))))

(assert (=> b!657483 d!225467))

(declare-fun b_lambda!25665 () Bool)

(assert (= b_lambda!25649 (or b!657253 b_lambda!25665)))

(declare-fun bs!94275 () Bool)

(declare-fun d!225469 () Bool)

(assert (= bs!94275 (and d!225469 b!657253)))

(assert (=> bs!94275 (= (dynLambda!3803 lambda!20327 (h!12455 (++!1888 (list!3009 acc!218) lt!280020))) (and (<= 0 (h!12455 (++!1888 (list!3009 acc!218) lt!280020))) (< (h!12455 (++!1888 (list!3009 acc!218) lt!280020)) size!101)))))

(assert (=> b!657894 d!225469))

(declare-fun b_lambda!25667 () Bool)

(assert (= b_lambda!25637 (or b!657253 b_lambda!25667)))

(declare-fun bs!94276 () Bool)

(declare-fun d!225471 () Bool)

(assert (= bs!94276 (and d!225471 b!657253)))

(assert (=> bs!94276 (= (dynLambda!3803 lambda!20327 (h!12455 (list!3009 acc!218))) (and (<= 0 (h!12455 (list!3009 acc!218))) (< (h!12455 (list!3009 acc!218)) size!101)))))

(assert (=> b!657382 d!225471))

(check-sat (not b!658073) (not b!657815) (not b!658080) (not b!657469) (not b!658079) (not bm!42333) (not bm!42404) (not d!225313) (not b!658102) (not b!658075) (not b!658100) (not b!657702) (not b!658070) (not b!657940) (not d!225459) b_and!62777 (not b!657986) (not b!657886) (not bm!42334) (not b_lambda!25663) (not b!657895) (not bm!42327) (not d!225345) (not b!657515) (not d!225349) (not b!657985) (not b!657816) (not b!657917) (not b!658101) (not b!658086) (not b!657408) (not b!657659) (not b_next!19047) (not b_lambda!25665) (not d!225387) (not b!657475) (not b!657430) (not bm!42401) (not b!657887) (not d!225425) (not bm!42330) (not d!225423) (not b!658054) (not b!657830) (not b!657699) (not b!657853) (not b!657409) (not b_lambda!25661) (not b!657476) (not b!657410) (not b!658089) (not b!657484) (not bm!42411) (not b!657893) (not bm!42272) (not b!657888) (not d!225373) (not b!657698) (not b!657513) (not d!225385) (not bm!42409) (not b!657517) (not d!225439) (not d!225289) (not b!657658) (not d!225411) (not b!657834) (not b!657370) (not bm!42336) (not b!657809) (not bm!42408) (not bm!42328) (not b!657988) (not b!657925) (not b!658005) (not b!658043) (not b!657383) b_and!62775 (not b!658088) (not b!658041) (not b!658071) (not bm!42399) (not b!657926) (not d!225389) (not b!657829) (not b!657848) (not b!658072) (not b!657923) (not b!657918) (not b!657488) (not b_lambda!25667) (not b!658084) (not b!657831) (not b!657700) (not d!225405) (not b!657833) (not b!657473) (not b!657621) (not b!658026) (not b!657619) (not b!658004) (not b!658040) (not b!657514) (not bm!42341) (not b!658085) (not b!658083) (not b!657618) (not bm!42332) (not b!657812) (not b!657361) (not bm!42331) (not b!658068) (not d!225315) (not b!657817) (not d!225461) (not b!657980) (not bm!42271) (not b!658078) (not d!225427) (not b!657518) (not b!657891) (not b!657624) (not b!658087) (not b!657927) (not d!225399) (not d!225421) (not b!658069) (not b!657630) (not b!658081) (not b!657928) (not d!225343) (not d!225323) (not b!658038) (not b!657982) (not b!657472) (not b_next!19045) (not b!657981) (not b!657657) (not bm!42335) (not b!657924) (not b!657487) (not b!657820) (not b!657486) (not b!658082) (not b!657516) (not d!225293) (not b!657623) (not d!225277) (not bm!42410) (not b!657890) (not b!657832) (not b!658077) (not d!225445))
(check-sat b_and!62777 b_and!62775 (not b_next!19047) (not b_next!19045))
