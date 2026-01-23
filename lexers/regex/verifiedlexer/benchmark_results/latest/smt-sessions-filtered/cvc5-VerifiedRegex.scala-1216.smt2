; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!63910 () Bool)

(assert start!63910)

(declare-fun b!656451 () Bool)

(assert (=> b!656451 true))

(declare-fun b!656450 () Bool)

(declare-fun e!405954 () Bool)

(declare-fun e!405955 () Bool)

(assert (=> b!656450 (= e!405954 e!405955)))

(declare-fun res!291094 () Bool)

(assert (=> b!656450 (=> (not res!291094) (not e!405955))))

(declare-fun e!405951 () Bool)

(assert (=> b!656450 (= res!291094 e!405951)))

(declare-fun res!291097 () Bool)

(assert (=> b!656450 (=> res!291097 e!405951)))

(declare-datatypes ((List!7039 0))(
  ( (Nil!7025) (Cons!7025 (h!12426 (_ BitVec 16)) (t!85960 List!7039)) )
))
(declare-datatypes ((TokenValue!1435 0))(
  ( (FloatLiteralValue!2870 (text!10490 List!7039)) (TokenValueExt!1434 (__x!5011 Int)) (Broken!7175 (value!45055 List!7039)) (Object!1448) (End!1435) (Def!1435) (Underscore!1435) (Match!1435) (Else!1435) (Error!1435) (Case!1435) (If!1435) (Extends!1435) (Abstract!1435) (Class!1435) (Val!1435) (DelimiterValue!2870 (del!1495 List!7039)) (KeywordValue!1441 (value!45056 List!7039)) (CommentValue!2870 (value!45057 List!7039)) (WhitespaceValue!2870 (value!45058 List!7039)) (IndentationValue!1435 (value!45059 List!7039)) (String!8914) (Int32!1435) (Broken!7176 (value!45060 List!7039)) (Boolean!1436) (Unit!12265) (OperatorValue!1438 (op!1495 List!7039)) (IdentifierValue!2870 (value!45061 List!7039)) (IdentifierValue!2871 (value!45062 List!7039)) (WhitespaceValue!2871 (value!45063 List!7039)) (True!2870) (False!2870) (Broken!7177 (value!45064 List!7039)) (Broken!7178 (value!45065 List!7039)) (True!2871) (RightBrace!1435) (RightBracket!1435) (Colon!1435) (Null!1435) (Comma!1435) (LeftBracket!1435) (False!2871) (LeftBrace!1435) (ImaginaryLiteralValue!1435 (text!10491 List!7039)) (StringLiteralValue!4305 (value!45066 List!7039)) (EOFValue!1435 (value!45067 List!7039)) (IdentValue!1435 (value!45068 List!7039)) (DelimiterValue!2871 (value!45069 List!7039)) (DedentValue!1435 (value!45070 List!7039)) (NewLineValue!1435 (value!45071 List!7039)) (IntegerValue!4305 (value!45072 (_ BitVec 32)) (text!10492 List!7039)) (IntegerValue!4306 (value!45073 Int) (text!10493 List!7039)) (Times!1435) (Or!1435) (Equal!1435) (Minus!1435) (Broken!7179 (value!45074 List!7039)) (And!1435) (Div!1435) (LessEqual!1435) (Mod!1435) (Concat!3171) (Not!1435) (Plus!1435) (SpaceValue!1435 (value!45075 List!7039)) (IntegerValue!4307 (value!45076 Int) (text!10494 List!7039)) (StringLiteralValue!4306 (text!10495 List!7039)) (FloatLiteralValue!2871 (text!10496 List!7039)) (BytesLiteralValue!1435 (value!45077 List!7039)) (CommentValue!2871 (value!45078 List!7039)) (StringLiteralValue!4307 (value!45079 List!7039)) (ErrorTokenValue!1435 (msg!1496 List!7039)) )
))
(declare-datatypes ((Regex!1736 0))(
  ( (ElementMatch!1736 (c!118163 (_ BitVec 16))) (Concat!3172 (regOne!3984 Regex!1736) (regTwo!3984 Regex!1736)) (EmptyExpr!1736) (Star!1736 (reg!2065 Regex!1736)) (EmptyLang!1736) (Union!1736 (regOne!3985 Regex!1736) (regTwo!3985 Regex!1736)) )
))
(declare-datatypes ((String!8915 0))(
  ( (String!8916 (value!45080 String)) )
))
(declare-datatypes ((IArray!4823 0))(
  ( (IArray!4824 (innerList!2469 List!7039)) )
))
(declare-datatypes ((Conc!2411 0))(
  ( (Node!2411 (left!5599 Conc!2411) (right!5929 Conc!2411) (csize!5052 Int) (cheight!2622 Int)) (Leaf!3628 (xs!5052 IArray!4823) (csize!5053 Int)) (Empty!2411) )
))
(declare-datatypes ((BalanceConc!4834 0))(
  ( (BalanceConc!4835 (c!118164 Conc!2411)) )
))
(declare-datatypes ((TokenValueInjection!2622 0))(
  ( (TokenValueInjection!2623 (toValue!2342 Int) (toChars!2201 Int)) )
))
(declare-datatypes ((Rule!2602 0))(
  ( (Rule!2603 (regex!1401 Regex!1736) (tag!1663 String!8915) (isSeparator!1401 Bool) (transformation!1401 TokenValueInjection!2622)) )
))
(declare-datatypes ((Token!2524 0))(
  ( (Token!2525 (value!45081 TokenValue!1435) (rule!2196 Rule!2602) (size!5570 Int) (originalCharacters!1433 List!7039)) )
))
(declare-fun lt!279834 () Token!2524)

(declare-fun isKeywordValue!0 (Token!2524 TokenValue!1435) Bool)

(assert (=> b!656450 (= res!291097 (isKeywordValue!0 lt!279834 LeftBrace!1435))))

(declare-datatypes ((List!7040 0))(
  ( (Nil!7026) (Cons!7026 (h!12427 Token!2524) (t!85961 List!7040)) )
))
(declare-datatypes ((IArray!4825 0))(
  ( (IArray!4826 (innerList!2470 List!7040)) )
))
(declare-datatypes ((Conc!2412 0))(
  ( (Node!2412 (left!5600 Conc!2412) (right!5930 Conc!2412) (csize!5054 Int) (cheight!2623 Int)) (Leaf!3629 (xs!5053 IArray!4825) (csize!5055 Int)) (Empty!2412) )
))
(declare-datatypes ((BalanceConc!4836 0))(
  ( (BalanceConc!4837 (c!118165 Conc!2412)) )
))
(declare-fun ts!14 () BalanceConc!4836)

(declare-fun from!502 () Int)

(declare-fun apply!1682 (BalanceConc!4836 Int) Token!2524)

(assert (=> b!656450 (= lt!279834 (apply!1682 ts!14 from!502))))

(declare-fun res!291096 () Bool)

(assert (=> b!656451 (=> (not res!291096) (not e!405954))))

(declare-datatypes ((List!7041 0))(
  ( (Nil!7027) (Cons!7027 (h!12428 Int) (t!85962 List!7041)) )
))
(declare-datatypes ((IArray!4827 0))(
  ( (IArray!4828 (innerList!2471 List!7041)) )
))
(declare-datatypes ((Conc!2413 0))(
  ( (Node!2413 (left!5601 Conc!2413) (right!5931 Conc!2413) (csize!5056 Int) (cheight!2624 Int)) (Leaf!3630 (xs!5054 IArray!4827) (csize!5057 Int)) (Empty!2413) )
))
(declare-datatypes ((BalanceConc!4838 0))(
  ( (BalanceConc!4839 (c!118166 Conc!2413)) )
))
(declare-fun acc!218 () BalanceConc!4838)

(declare-fun lambda!20248 () Int)

(declare-fun forall!1842 (BalanceConc!4838 Int) Bool)

(assert (=> b!656451 (= res!291096 (forall!1842 acc!218 lambda!20248))))

(declare-fun b!656452 () Bool)

(declare-fun res!291099 () Bool)

(assert (=> b!656452 (=> (not res!291099) (not e!405954))))

(declare-fun lt!279833 () Int)

(assert (=> b!656452 (= res!291099 (< from!502 lt!279833))))

(declare-fun b!656453 () Bool)

(declare-fun forall!1843 (List!7041 Int) Bool)

(declare-fun list!2988 (BalanceConc!4838) List!7041)

(assert (=> b!656453 (= e!405955 (not (forall!1843 (list!2988 acc!218) lambda!20248)))))

(declare-fun b!656449 () Bool)

(declare-fun e!405953 () Bool)

(declare-fun tp!200563 () Bool)

(declare-fun inv!8861 (Conc!2412) Bool)

(assert (=> b!656449 (= e!405953 (and (inv!8861 (c!118165 ts!14)) tp!200563))))

(declare-fun res!291095 () Bool)

(declare-fun e!405952 () Bool)

(assert (=> start!63910 (=> (not res!291095) (not e!405952))))

(assert (=> start!63910 (= res!291095 (>= from!502 0))))

(assert (=> start!63910 e!405952))

(assert (=> start!63910 true))

(declare-fun e!405950 () Bool)

(declare-fun inv!8862 (BalanceConc!4838) Bool)

(assert (=> start!63910 (and (inv!8862 acc!218) e!405950)))

(declare-fun inv!8863 (BalanceConc!4836) Bool)

(assert (=> start!63910 (and (inv!8863 ts!14) e!405953)))

(declare-fun b!656454 () Bool)

(assert (=> b!656454 (= e!405952 e!405954)))

(declare-fun res!291100 () Bool)

(assert (=> b!656454 (=> (not res!291100) (not e!405954))))

(declare-fun size!101 () Int)

(assert (=> b!656454 (= res!291100 (and (<= from!502 lt!279833) (= lt!279833 size!101)))))

(declare-fun size!5571 (BalanceConc!4836) Int)

(assert (=> b!656454 (= lt!279833 (size!5571 ts!14))))

(declare-fun b!656455 () Bool)

(declare-fun res!291098 () Bool)

(assert (=> b!656455 (=> (not res!291098) (not e!405955))))

(assert (=> b!656455 (= res!291098 (forall!1842 acc!218 lambda!20248))))

(declare-fun b!656456 () Bool)

(declare-fun tp!200562 () Bool)

(declare-fun inv!8864 (Conc!2413) Bool)

(assert (=> b!656456 (= e!405950 (and (inv!8864 (c!118166 acc!218)) tp!200562))))

(declare-fun b!656457 () Bool)

(assert (=> b!656457 (= e!405951 (isKeywordValue!0 lt!279834 RightBrace!1435))))

(assert (= (and start!63910 res!291095) b!656454))

(assert (= (and b!656454 res!291100) b!656451))

(assert (= (and b!656451 res!291096) b!656452))

(assert (= (and b!656452 res!291099) b!656450))

(assert (= (and b!656450 (not res!291097)) b!656457))

(assert (= (and b!656450 res!291094) b!656455))

(assert (= (and b!656455 res!291098) b!656453))

(assert (= start!63910 b!656456))

(assert (= start!63910 b!656449))

(declare-fun m!922249 () Bool)

(assert (=> start!63910 m!922249))

(declare-fun m!922251 () Bool)

(assert (=> start!63910 m!922251))

(declare-fun m!922253 () Bool)

(assert (=> b!656457 m!922253))

(declare-fun m!922255 () Bool)

(assert (=> b!656454 m!922255))

(declare-fun m!922257 () Bool)

(assert (=> b!656456 m!922257))

(declare-fun m!922259 () Bool)

(assert (=> b!656451 m!922259))

(declare-fun m!922261 () Bool)

(assert (=> b!656449 m!922261))

(declare-fun m!922263 () Bool)

(assert (=> b!656453 m!922263))

(assert (=> b!656453 m!922263))

(declare-fun m!922265 () Bool)

(assert (=> b!656453 m!922265))

(declare-fun m!922267 () Bool)

(assert (=> b!656450 m!922267))

(declare-fun m!922269 () Bool)

(assert (=> b!656450 m!922269))

(assert (=> b!656455 m!922259))

(push 1)

(assert (not b!656457))

(assert (not b!656450))

(assert (not b!656453))

(assert (not b!656451))

(assert (not b!656456))

(assert (not b!656455))

(assert (not b!656449))

(assert (not b!656454))

(assert (not start!63910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225005 () Bool)

(declare-fun c!118173 () Bool)

(assert (=> d!225005 (= c!118173 (is-Node!2413 (c!118166 acc!218)))))

(declare-fun e!405978 () Bool)

(assert (=> d!225005 (= (inv!8864 (c!118166 acc!218)) e!405978)))

(declare-fun b!656495 () Bool)

(declare-fun inv!8869 (Conc!2413) Bool)

(assert (=> b!656495 (= e!405978 (inv!8869 (c!118166 acc!218)))))

(declare-fun b!656496 () Bool)

(declare-fun e!405979 () Bool)

(assert (=> b!656496 (= e!405978 e!405979)))

(declare-fun res!291128 () Bool)

(assert (=> b!656496 (= res!291128 (not (is-Leaf!3630 (c!118166 acc!218))))))

(assert (=> b!656496 (=> res!291128 e!405979)))

(declare-fun b!656497 () Bool)

(declare-fun inv!8870 (Conc!2413) Bool)

(assert (=> b!656497 (= e!405979 (inv!8870 (c!118166 acc!218)))))

(assert (= (and d!225005 c!118173) b!656495))

(assert (= (and d!225005 (not c!118173)) b!656496))

(assert (= (and b!656496 (not res!291128)) b!656497))

(declare-fun m!922293 () Bool)

(assert (=> b!656495 m!922293))

(declare-fun m!922295 () Bool)

(assert (=> b!656497 m!922295))

(assert (=> b!656456 d!225005))

(declare-fun d!225007 () Bool)

(declare-fun lt!279843 () Bool)

(assert (=> d!225007 (= lt!279843 (forall!1843 (list!2988 acc!218) lambda!20248))))

(declare-fun forall!1846 (Conc!2413 Int) Bool)

(assert (=> d!225007 (= lt!279843 (forall!1846 (c!118166 acc!218) lambda!20248))))

(assert (=> d!225007 (= (forall!1842 acc!218 lambda!20248) lt!279843)))

(declare-fun bs!94175 () Bool)

(assert (= bs!94175 d!225007))

(assert (=> bs!94175 m!922263))

(assert (=> bs!94175 m!922263))

(assert (=> bs!94175 m!922265))

(declare-fun m!922297 () Bool)

(assert (=> bs!94175 m!922297))

(assert (=> b!656451 d!225007))

(declare-fun d!225009 () Bool)

(declare-fun isBalanced!639 (Conc!2413) Bool)

(assert (=> d!225009 (= (inv!8862 acc!218) (isBalanced!639 (c!118166 acc!218)))))

(declare-fun bs!94176 () Bool)

(assert (= bs!94176 d!225009))

(declare-fun m!922299 () Bool)

(assert (=> bs!94176 m!922299))

(assert (=> start!63910 d!225009))

(declare-fun d!225013 () Bool)

(declare-fun isBalanced!640 (Conc!2412) Bool)

(assert (=> d!225013 (= (inv!8863 ts!14) (isBalanced!640 (c!118165 ts!14)))))

(declare-fun bs!94177 () Bool)

(assert (= bs!94177 d!225013))

(declare-fun m!922301 () Bool)

(assert (=> bs!94177 m!922301))

(assert (=> start!63910 d!225013))

(declare-fun d!225015 () Bool)

(declare-fun choose!511 (Token!2524 TokenValue!1435) Bool)

(assert (=> d!225015 (= (isKeywordValue!0 lt!279834 LeftBrace!1435) (choose!511 lt!279834 LeftBrace!1435))))

(declare-fun bs!94178 () Bool)

(assert (= bs!94178 d!225015))

(declare-fun m!922303 () Bool)

(assert (=> bs!94178 m!922303))

(assert (=> b!656450 d!225015))

(declare-fun d!225017 () Bool)

(declare-fun lt!279846 () Token!2524)

(declare-fun apply!1684 (List!7040 Int) Token!2524)

(declare-fun list!2990 (BalanceConc!4836) List!7040)

(assert (=> d!225017 (= lt!279846 (apply!1684 (list!2990 ts!14) from!502))))

(declare-fun apply!1685 (Conc!2412 Int) Token!2524)

(assert (=> d!225017 (= lt!279846 (apply!1685 (c!118165 ts!14) from!502))))

(declare-fun e!405988 () Bool)

(assert (=> d!225017 e!405988))

(declare-fun res!291137 () Bool)

(assert (=> d!225017 (=> (not res!291137) (not e!405988))))

(assert (=> d!225017 (= res!291137 (<= 0 from!502))))

(assert (=> d!225017 (= (apply!1682 ts!14 from!502) lt!279846)))

(declare-fun b!656506 () Bool)

(assert (=> b!656506 (= e!405988 (< from!502 (size!5571 ts!14)))))

(assert (= (and d!225017 res!291137) b!656506))

(declare-fun m!922309 () Bool)

(assert (=> d!225017 m!922309))

(assert (=> d!225017 m!922309))

(declare-fun m!922311 () Bool)

(assert (=> d!225017 m!922311))

(declare-fun m!922313 () Bool)

(assert (=> d!225017 m!922313))

(assert (=> b!656506 m!922255))

(assert (=> b!656450 d!225017))

(assert (=> b!656455 d!225007))

(declare-fun d!225021 () Bool)

(declare-fun lt!279849 () Int)

(declare-fun size!5574 (List!7040) Int)

(assert (=> d!225021 (= lt!279849 (size!5574 (list!2990 ts!14)))))

(declare-fun size!5575 (Conc!2412) Int)

(assert (=> d!225021 (= lt!279849 (size!5575 (c!118165 ts!14)))))

(assert (=> d!225021 (= (size!5571 ts!14) lt!279849)))

(declare-fun bs!94180 () Bool)

(assert (= bs!94180 d!225021))

(assert (=> bs!94180 m!922309))

(assert (=> bs!94180 m!922309))

(declare-fun m!922317 () Bool)

(assert (=> bs!94180 m!922317))

(declare-fun m!922319 () Bool)

(assert (=> bs!94180 m!922319))

(assert (=> b!656454 d!225021))

(declare-fun d!225025 () Bool)

(declare-fun c!118176 () Bool)

(assert (=> d!225025 (= c!118176 (is-Node!2412 (c!118165 ts!14)))))

(declare-fun e!405993 () Bool)

(assert (=> d!225025 (= (inv!8861 (c!118165 ts!14)) e!405993)))

(declare-fun b!656513 () Bool)

(declare-fun inv!8871 (Conc!2412) Bool)

(assert (=> b!656513 (= e!405993 (inv!8871 (c!118165 ts!14)))))

(declare-fun b!656514 () Bool)

(declare-fun e!405994 () Bool)

(assert (=> b!656514 (= e!405993 e!405994)))

(declare-fun res!291140 () Bool)

(assert (=> b!656514 (= res!291140 (not (is-Leaf!3629 (c!118165 ts!14))))))

(assert (=> b!656514 (=> res!291140 e!405994)))

(declare-fun b!656515 () Bool)

(declare-fun inv!8872 (Conc!2412) Bool)

(assert (=> b!656515 (= e!405994 (inv!8872 (c!118165 ts!14)))))

(assert (= (and d!225025 c!118176) b!656513))

(assert (= (and d!225025 (not c!118176)) b!656514))

(assert (= (and b!656514 (not res!291140)) b!656515))

(declare-fun m!922323 () Bool)

(assert (=> b!656513 m!922323))

(declare-fun m!922325 () Bool)

(assert (=> b!656515 m!922325))

(assert (=> b!656449 d!225025))

(declare-fun d!225029 () Bool)

(declare-fun res!291145 () Bool)

(declare-fun e!405999 () Bool)

(assert (=> d!225029 (=> res!291145 e!405999)))

(assert (=> d!225029 (= res!291145 (is-Nil!7027 (list!2988 acc!218)))))

(assert (=> d!225029 (= (forall!1843 (list!2988 acc!218) lambda!20248) e!405999)))

(declare-fun b!656520 () Bool)

(declare-fun e!406000 () Bool)

(assert (=> b!656520 (= e!405999 e!406000)))

(declare-fun res!291146 () Bool)

(assert (=> b!656520 (=> (not res!291146) (not e!406000))))

(declare-fun dynLambda!3800 (Int Int) Bool)

(assert (=> b!656520 (= res!291146 (dynLambda!3800 lambda!20248 (h!12428 (list!2988 acc!218))))))

(declare-fun b!656521 () Bool)

(assert (=> b!656521 (= e!406000 (forall!1843 (t!85962 (list!2988 acc!218)) lambda!20248))))

(assert (= (and d!225029 (not res!291145)) b!656520))

(assert (= (and b!656520 res!291146) b!656521))

(declare-fun b_lambda!25599 () Bool)

(assert (=> (not b_lambda!25599) (not b!656520)))

(declare-fun m!922327 () Bool)

(assert (=> b!656520 m!922327))

(declare-fun m!922329 () Bool)

(assert (=> b!656521 m!922329))

(assert (=> b!656453 d!225029))

(declare-fun d!225031 () Bool)

(declare-fun list!2991 (Conc!2413) List!7041)

(assert (=> d!225031 (= (list!2988 acc!218) (list!2991 (c!118166 acc!218)))))

(declare-fun bs!94182 () Bool)

(assert (= bs!94182 d!225031))

(declare-fun m!922331 () Bool)

(assert (=> bs!94182 m!922331))

(assert (=> b!656453 d!225031))

(declare-fun d!225033 () Bool)

(assert (=> d!225033 (= (isKeywordValue!0 lt!279834 RightBrace!1435) (choose!511 lt!279834 RightBrace!1435))))

(declare-fun bs!94183 () Bool)

(assert (= bs!94183 d!225033))

(declare-fun m!922333 () Bool)

(assert (=> bs!94183 m!922333))

(assert (=> b!656457 d!225033))

(declare-fun tp!200575 () Bool)

(declare-fun b!656528 () Bool)

(declare-fun tp!200574 () Bool)

(declare-fun e!406005 () Bool)

(assert (=> b!656528 (= e!406005 (and (inv!8864 (left!5601 (c!118166 acc!218))) tp!200574 (inv!8864 (right!5931 (c!118166 acc!218))) tp!200575))))

(declare-fun b!656529 () Bool)

(declare-fun inv!8873 (IArray!4827) Bool)

(assert (=> b!656529 (= e!406005 (inv!8873 (xs!5054 (c!118166 acc!218))))))

(assert (=> b!656456 (= tp!200562 (and (inv!8864 (c!118166 acc!218)) e!406005))))

(assert (= (and b!656456 (is-Node!2413 (c!118166 acc!218))) b!656528))

(assert (= (and b!656456 (is-Leaf!3630 (c!118166 acc!218))) b!656529))

(declare-fun m!922335 () Bool)

(assert (=> b!656528 m!922335))

(declare-fun m!922337 () Bool)

(assert (=> b!656528 m!922337))

(declare-fun m!922339 () Bool)

(assert (=> b!656529 m!922339))

(assert (=> b!656456 m!922257))

(declare-fun tp!200584 () Bool)

(declare-fun b!656538 () Bool)

(declare-fun tp!200583 () Bool)

(declare-fun e!406011 () Bool)

(assert (=> b!656538 (= e!406011 (and (inv!8861 (left!5600 (c!118165 ts!14))) tp!200583 (inv!8861 (right!5930 (c!118165 ts!14))) tp!200584))))

(declare-fun b!656540 () Bool)

(declare-fun e!406012 () Bool)

(declare-fun tp!200582 () Bool)

(assert (=> b!656540 (= e!406012 tp!200582)))

(declare-fun b!656539 () Bool)

(declare-fun inv!8874 (IArray!4825) Bool)

(assert (=> b!656539 (= e!406011 (and (inv!8874 (xs!5053 (c!118165 ts!14))) e!406012))))

(assert (=> b!656449 (= tp!200563 (and (inv!8861 (c!118165 ts!14)) e!406011))))

(assert (= (and b!656449 (is-Node!2412 (c!118165 ts!14))) b!656538))

(assert (= b!656539 b!656540))

(assert (= (and b!656449 (is-Leaf!3629 (c!118165 ts!14))) b!656539))

(declare-fun m!922343 () Bool)

(assert (=> b!656538 m!922343))

(declare-fun m!922345 () Bool)

(assert (=> b!656538 m!922345))

(declare-fun m!922347 () Bool)

(assert (=> b!656539 m!922347))

(assert (=> b!656449 m!922261))

(declare-fun b_lambda!25601 () Bool)

(assert (= b_lambda!25599 (or b!656451 b_lambda!25601)))

(declare-fun bs!94185 () Bool)

(declare-fun d!225037 () Bool)

(assert (= bs!94185 (and d!225037 b!656451)))

(assert (=> bs!94185 (= (dynLambda!3800 lambda!20248 (h!12428 (list!2988 acc!218))) (and (<= 0 (h!12428 (list!2988 acc!218))) (< (h!12428 (list!2988 acc!218)) size!101)))))

(assert (=> b!656520 d!225037))

(push 1)

(assert (not d!225021))

(assert (not b!656521))

(assert (not b!656515))

(assert (not b!656497))

(assert (not d!225031))

(assert (not b!656506))

(assert (not d!225033))

(assert (not b!656513))

(assert (not d!225007))

(assert (not d!225015))

(assert (not b!656449))

(assert (not b!656539))

(assert (not d!225017))

(assert (not b!656528))

(assert (not d!225009))

(assert (not b!656540))

(assert (not b!656529))

(assert (not b_lambda!25601))

(assert (not b!656495))

(assert (not b!656538))

(assert (not b!656456))

(assert (not d!225013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

