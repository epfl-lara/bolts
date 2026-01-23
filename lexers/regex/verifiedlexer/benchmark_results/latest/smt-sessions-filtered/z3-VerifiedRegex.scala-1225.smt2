; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64246 () Bool)

(assert start!64246)

(declare-fun b!658370 () Bool)

(assert (=> b!658370 true))

(declare-fun b!658365 () Bool)

(declare-fun res!292194 () Bool)

(declare-fun e!407119 () Bool)

(assert (=> b!658365 (=> (not res!292194) (not e!407119))))

(declare-fun from!502 () Int)

(declare-fun lt!280333 () Int)

(assert (=> b!658365 (= res!292194 (< from!502 lt!280333))))

(declare-fun b!658366 () Bool)

(declare-fun e!407120 () Bool)

(declare-datatypes ((List!7096 0))(
  ( (Nil!7082) (Cons!7082 (h!12483 (_ BitVec 16)) (t!86057 List!7096)) )
))
(declare-datatypes ((TokenValue!1454 0))(
  ( (FloatLiteralValue!2908 (text!10623 List!7096)) (TokenValueExt!1453 (__x!5030 Int)) (Broken!7270 (value!45595 List!7096)) (Object!1467) (End!1454) (Def!1454) (Underscore!1454) (Match!1454) (Else!1454) (Error!1454) (Case!1454) (If!1454) (Extends!1454) (Abstract!1454) (Class!1454) (Val!1454) (DelimiterValue!2908 (del!1514 List!7096)) (KeywordValue!1460 (value!45596 List!7096)) (CommentValue!2908 (value!45597 List!7096)) (WhitespaceValue!2908 (value!45598 List!7096)) (IndentationValue!1454 (value!45599 List!7096)) (String!9007) (Int32!1454) (Broken!7271 (value!45600 List!7096)) (Boolean!1455) (Unit!12302) (OperatorValue!1457 (op!1514 List!7096)) (IdentifierValue!2908 (value!45601 List!7096)) (IdentifierValue!2909 (value!45602 List!7096)) (WhitespaceValue!2909 (value!45603 List!7096)) (True!2908) (False!2908) (Broken!7272 (value!45604 List!7096)) (Broken!7273 (value!45605 List!7096)) (True!2909) (RightBrace!1454) (RightBracket!1454) (Colon!1454) (Null!1454) (Comma!1454) (LeftBracket!1454) (False!2909) (LeftBrace!1454) (ImaginaryLiteralValue!1454 (text!10624 List!7096)) (StringLiteralValue!4362 (value!45606 List!7096)) (EOFValue!1454 (value!45607 List!7096)) (IdentValue!1454 (value!45608 List!7096)) (DelimiterValue!2909 (value!45609 List!7096)) (DedentValue!1454 (value!45610 List!7096)) (NewLineValue!1454 (value!45611 List!7096)) (IntegerValue!4362 (value!45612 (_ BitVec 32)) (text!10625 List!7096)) (IntegerValue!4363 (value!45613 Int) (text!10626 List!7096)) (Times!1454) (Or!1454) (Equal!1454) (Minus!1454) (Broken!7274 (value!45614 List!7096)) (And!1454) (Div!1454) (LessEqual!1454) (Mod!1454) (Concat!3209) (Not!1454) (Plus!1454) (SpaceValue!1454 (value!45615 List!7096)) (IntegerValue!4364 (value!45616 Int) (text!10627 List!7096)) (StringLiteralValue!4363 (text!10628 List!7096)) (FloatLiteralValue!2909 (text!10629 List!7096)) (BytesLiteralValue!1454 (value!45617 List!7096)) (CommentValue!2909 (value!45618 List!7096)) (StringLiteralValue!4364 (value!45619 List!7096)) (ErrorTokenValue!1454 (msg!1515 List!7096)) )
))
(declare-datatypes ((Regex!1755 0))(
  ( (ElementMatch!1755 (c!118504 (_ BitVec 16))) (Concat!3210 (regOne!4022 Regex!1755) (regTwo!4022 Regex!1755)) (EmptyExpr!1755) (Star!1755 (reg!2084 Regex!1755)) (EmptyLang!1755) (Union!1755 (regOne!4023 Regex!1755) (regTwo!4023 Regex!1755)) )
))
(declare-datatypes ((String!9008 0))(
  ( (String!9009 (value!45620 String)) )
))
(declare-datatypes ((IArray!4937 0))(
  ( (IArray!4938 (innerList!2526 List!7096)) )
))
(declare-datatypes ((Conc!2468 0))(
  ( (Node!2468 (left!5703 Conc!2468) (right!6033 Conc!2468) (csize!5166 Int) (cheight!2679 Int)) (Leaf!3694 (xs!5113 IArray!4937) (csize!5167 Int)) (Empty!2468) )
))
(declare-datatypes ((BalanceConc!4948 0))(
  ( (BalanceConc!4949 (c!118505 Conc!2468)) )
))
(declare-datatypes ((TokenValueInjection!2660 0))(
  ( (TokenValueInjection!2661 (toValue!2361 Int) (toChars!2220 Int)) )
))
(declare-datatypes ((Rule!2640 0))(
  ( (Rule!2641 (regex!1420 Regex!1755) (tag!1682 String!9008) (isSeparator!1420 Bool) (transformation!1420 TokenValueInjection!2660)) )
))
(declare-datatypes ((Token!2562 0))(
  ( (Token!2563 (value!45621 TokenValue!1454) (rule!2215 Rule!2640) (size!5626 Int) (originalCharacters!1452 List!7096)) )
))
(declare-fun lt!280331 () Token!2562)

(declare-fun isKeywordValue!0 (Token!2562 TokenValue!1454) Bool)

(assert (=> b!658366 (= e!407120 (isKeywordValue!0 lt!280331 RightBrace!1454))))

(declare-fun b!658367 () Bool)

(declare-fun e!407118 () Bool)

(assert (=> b!658367 (= e!407118 e!407119)))

(declare-fun res!292191 () Bool)

(assert (=> b!658367 (=> (not res!292191) (not e!407119))))

(declare-fun size!101 () Int)

(assert (=> b!658367 (= res!292191 (and (<= from!502 lt!280333) (= lt!280333 size!101)))))

(declare-datatypes ((List!7097 0))(
  ( (Nil!7083) (Cons!7083 (h!12484 Token!2562) (t!86058 List!7097)) )
))
(declare-datatypes ((IArray!4939 0))(
  ( (IArray!4940 (innerList!2527 List!7097)) )
))
(declare-datatypes ((Conc!2469 0))(
  ( (Node!2469 (left!5704 Conc!2469) (right!6034 Conc!2469) (csize!5168 Int) (cheight!2680 Int)) (Leaf!3695 (xs!5114 IArray!4939) (csize!5169 Int)) (Empty!2469) )
))
(declare-datatypes ((BalanceConc!4950 0))(
  ( (BalanceConc!4951 (c!118506 Conc!2469)) )
))
(declare-fun ts!14 () BalanceConc!4950)

(declare-fun size!5627 (BalanceConc!4950) Int)

(assert (=> b!658367 (= lt!280333 (size!5627 ts!14))))

(declare-fun e!407123 () Bool)

(declare-fun b!658368 () Bool)

(declare-fun lambda!20377 () Int)

(declare-datatypes ((List!7098 0))(
  ( (Nil!7084) (Cons!7084 (h!12485 Int) (t!86059 List!7098)) )
))
(declare-fun lt!280332 () List!7098)

(declare-datatypes ((IArray!4941 0))(
  ( (IArray!4942 (innerList!2528 List!7098)) )
))
(declare-datatypes ((Conc!2470 0))(
  ( (Node!2470 (left!5705 Conc!2470) (right!6035 Conc!2470) (csize!5170 Int) (cheight!2681 Int)) (Leaf!3696 (xs!5115 IArray!4941) (csize!5171 Int)) (Empty!2470) )
))
(declare-datatypes ((BalanceConc!4952 0))(
  ( (BalanceConc!4953 (c!118507 Conc!2470)) )
))
(declare-fun acc!218 () BalanceConc!4952)

(declare-fun forall!1876 (BalanceConc!4952 Int) Bool)

(declare-fun ++!1890 (BalanceConc!4952 BalanceConc!4952) BalanceConc!4952)

(declare-fun seqFromList!1462 (List!7098) BalanceConc!4952)

(assert (=> b!658368 (= e!407123 (not (forall!1876 (++!1890 acc!218 (seqFromList!1462 lt!280332)) lambda!20377)))))

(declare-datatypes ((Unit!12303 0))(
  ( (Unit!12304) )
))
(declare-fun lt!280334 () Unit!12303)

(declare-fun lemmaConcatPreservesForall!73 (List!7098 List!7098 Int) Unit!12303)

(declare-fun list!3021 (BalanceConc!4952) List!7098)

(assert (=> b!658368 (= lt!280334 (lemmaConcatPreservesForall!73 (list!3021 acc!218) lt!280332 lambda!20377))))

(assert (=> b!658368 (= lt!280332 (Cons!7084 from!502 Nil!7084))))

(declare-fun b!658369 () Bool)

(declare-fun res!292195 () Bool)

(assert (=> b!658369 (=> (not res!292195) (not e!407123))))

(assert (=> b!658369 (= res!292195 (forall!1876 acc!218 lambda!20377))))

(declare-fun res!292190 () Bool)

(assert (=> start!64246 (=> (not res!292190) (not e!407118))))

(assert (=> start!64246 (= res!292190 (>= from!502 0))))

(assert (=> start!64246 e!407118))

(assert (=> start!64246 true))

(declare-fun e!407122 () Bool)

(declare-fun inv!9002 (BalanceConc!4952) Bool)

(assert (=> start!64246 (and (inv!9002 acc!218) e!407122)))

(declare-fun e!407121 () Bool)

(declare-fun inv!9003 (BalanceConc!4950) Bool)

(assert (=> start!64246 (and (inv!9003 ts!14) e!407121)))

(declare-fun res!292192 () Bool)

(assert (=> b!658370 (=> (not res!292192) (not e!407119))))

(assert (=> b!658370 (= res!292192 (forall!1876 acc!218 lambda!20377))))

(declare-fun b!658371 () Bool)

(declare-fun tp!200843 () Bool)

(declare-fun inv!9004 (Conc!2469) Bool)

(assert (=> b!658371 (= e!407121 (and (inv!9004 (c!118506 ts!14)) tp!200843))))

(declare-fun b!658372 () Bool)

(assert (=> b!658372 (= e!407119 e!407123)))

(declare-fun res!292196 () Bool)

(assert (=> b!658372 (=> (not res!292196) (not e!407123))))

(assert (=> b!658372 (= res!292196 e!407120)))

(declare-fun res!292193 () Bool)

(assert (=> b!658372 (=> res!292193 e!407120)))

(assert (=> b!658372 (= res!292193 (isKeywordValue!0 lt!280331 LeftBrace!1454))))

(declare-fun apply!1715 (BalanceConc!4950 Int) Token!2562)

(assert (=> b!658372 (= lt!280331 (apply!1715 ts!14 from!502))))

(declare-fun b!658373 () Bool)

(declare-fun tp!200842 () Bool)

(declare-fun inv!9005 (Conc!2470) Bool)

(assert (=> b!658373 (= e!407122 (and (inv!9005 (c!118507 acc!218)) tp!200842))))

(assert (= (and start!64246 res!292190) b!658367))

(assert (= (and b!658367 res!292191) b!658370))

(assert (= (and b!658370 res!292192) b!658365))

(assert (= (and b!658365 res!292194) b!658372))

(assert (= (and b!658372 (not res!292193)) b!658366))

(assert (= (and b!658372 res!292196) b!658369))

(assert (= (and b!658369 res!292195) b!658368))

(assert (= start!64246 b!658373))

(assert (= start!64246 b!658371))

(declare-fun m!924063 () Bool)

(assert (=> start!64246 m!924063))

(declare-fun m!924065 () Bool)

(assert (=> start!64246 m!924065))

(declare-fun m!924067 () Bool)

(assert (=> b!658366 m!924067))

(declare-fun m!924069 () Bool)

(assert (=> b!658371 m!924069))

(declare-fun m!924071 () Bool)

(assert (=> b!658369 m!924071))

(assert (=> b!658370 m!924071))

(declare-fun m!924073 () Bool)

(assert (=> b!658373 m!924073))

(declare-fun m!924075 () Bool)

(assert (=> b!658368 m!924075))

(assert (=> b!658368 m!924075))

(declare-fun m!924077 () Bool)

(assert (=> b!658368 m!924077))

(declare-fun m!924079 () Bool)

(assert (=> b!658368 m!924079))

(declare-fun m!924081 () Bool)

(assert (=> b!658368 m!924081))

(declare-fun m!924083 () Bool)

(assert (=> b!658368 m!924083))

(assert (=> b!658368 m!924079))

(assert (=> b!658368 m!924081))

(declare-fun m!924085 () Bool)

(assert (=> b!658367 m!924085))

(declare-fun m!924087 () Bool)

(assert (=> b!658372 m!924087))

(declare-fun m!924089 () Bool)

(assert (=> b!658372 m!924089))

(check-sat (not b!658368) (not b!658367) (not b!658373) (not b!658366) (not b!658372) (not start!64246) (not b!658369) (not b!658371) (not b!658370))
(check-sat)
(get-model)

(declare-fun d!225480 () Bool)

(declare-fun c!118513 () Bool)

(get-info :version)

(assert (=> d!225480 (= c!118513 ((_ is Node!2469) (c!118506 ts!14)))))

(declare-fun e!407134 () Bool)

(assert (=> d!225480 (= (inv!9004 (c!118506 ts!14)) e!407134)))

(declare-fun b!658391 () Bool)

(declare-fun inv!9010 (Conc!2469) Bool)

(assert (=> b!658391 (= e!407134 (inv!9010 (c!118506 ts!14)))))

(declare-fun b!658392 () Bool)

(declare-fun e!407135 () Bool)

(assert (=> b!658392 (= e!407134 e!407135)))

(declare-fun res!292206 () Bool)

(assert (=> b!658392 (= res!292206 (not ((_ is Leaf!3695) (c!118506 ts!14))))))

(assert (=> b!658392 (=> res!292206 e!407135)))

(declare-fun b!658393 () Bool)

(declare-fun inv!9011 (Conc!2469) Bool)

(assert (=> b!658393 (= e!407135 (inv!9011 (c!118506 ts!14)))))

(assert (= (and d!225480 c!118513) b!658391))

(assert (= (and d!225480 (not c!118513)) b!658392))

(assert (= (and b!658392 (not res!292206)) b!658393))

(declare-fun m!924095 () Bool)

(assert (=> b!658391 m!924095))

(declare-fun m!924097 () Bool)

(assert (=> b!658393 m!924097))

(assert (=> b!658371 d!225480))

(declare-fun d!225484 () Bool)

(declare-fun choose!511 (Token!2562 TokenValue!1454) Bool)

(assert (=> d!225484 (= (isKeywordValue!0 lt!280331 RightBrace!1454) (choose!511 lt!280331 RightBrace!1454))))

(declare-fun bs!94287 () Bool)

(assert (= bs!94287 d!225484))

(declare-fun m!924099 () Bool)

(assert (=> bs!94287 m!924099))

(assert (=> b!658366 d!225484))

(declare-fun d!225486 () Bool)

(declare-fun lt!280337 () Int)

(declare-fun size!5630 (List!7097) Int)

(declare-fun list!3023 (BalanceConc!4950) List!7097)

(assert (=> d!225486 (= lt!280337 (size!5630 (list!3023 ts!14)))))

(declare-fun size!5631 (Conc!2469) Int)

(assert (=> d!225486 (= lt!280337 (size!5631 (c!118506 ts!14)))))

(assert (=> d!225486 (= (size!5627 ts!14) lt!280337)))

(declare-fun bs!94289 () Bool)

(assert (= bs!94289 d!225486))

(declare-fun m!924107 () Bool)

(assert (=> bs!94289 m!924107))

(assert (=> bs!94289 m!924107))

(declare-fun m!924109 () Bool)

(assert (=> bs!94289 m!924109))

(declare-fun m!924111 () Bool)

(assert (=> bs!94289 m!924111))

(assert (=> b!658367 d!225486))

(declare-fun d!225492 () Bool)

(assert (=> d!225492 (= (isKeywordValue!0 lt!280331 LeftBrace!1454) (choose!511 lt!280331 LeftBrace!1454))))

(declare-fun bs!94290 () Bool)

(assert (= bs!94290 d!225492))

(declare-fun m!924113 () Bool)

(assert (=> bs!94290 m!924113))

(assert (=> b!658372 d!225492))

(declare-fun d!225494 () Bool)

(declare-fun lt!280347 () Token!2562)

(declare-fun apply!1716 (List!7097 Int) Token!2562)

(assert (=> d!225494 (= lt!280347 (apply!1716 (list!3023 ts!14) from!502))))

(declare-fun apply!1717 (Conc!2469 Int) Token!2562)

(assert (=> d!225494 (= lt!280347 (apply!1717 (c!118506 ts!14) from!502))))

(declare-fun e!407144 () Bool)

(assert (=> d!225494 e!407144))

(declare-fun res!292212 () Bool)

(assert (=> d!225494 (=> (not res!292212) (not e!407144))))

(assert (=> d!225494 (= res!292212 (<= 0 from!502))))

(assert (=> d!225494 (= (apply!1715 ts!14 from!502) lt!280347)))

(declare-fun b!658405 () Bool)

(assert (=> b!658405 (= e!407144 (< from!502 (size!5627 ts!14)))))

(assert (= (and d!225494 res!292212) b!658405))

(assert (=> d!225494 m!924107))

(assert (=> d!225494 m!924107))

(declare-fun m!924131 () Bool)

(assert (=> d!225494 m!924131))

(declare-fun m!924133 () Bool)

(assert (=> d!225494 m!924133))

(assert (=> b!658405 m!924085))

(assert (=> b!658372 d!225494))

(declare-fun d!225502 () Bool)

(declare-fun c!118521 () Bool)

(assert (=> d!225502 (= c!118521 ((_ is Node!2470) (c!118507 acc!218)))))

(declare-fun e!407149 () Bool)

(assert (=> d!225502 (= (inv!9005 (c!118507 acc!218)) e!407149)))

(declare-fun b!658412 () Bool)

(declare-fun inv!9012 (Conc!2470) Bool)

(assert (=> b!658412 (= e!407149 (inv!9012 (c!118507 acc!218)))))

(declare-fun b!658413 () Bool)

(declare-fun e!407150 () Bool)

(assert (=> b!658413 (= e!407149 e!407150)))

(declare-fun res!292215 () Bool)

(assert (=> b!658413 (= res!292215 (not ((_ is Leaf!3696) (c!118507 acc!218))))))

(assert (=> b!658413 (=> res!292215 e!407150)))

(declare-fun b!658414 () Bool)

(declare-fun inv!9013 (Conc!2470) Bool)

(assert (=> b!658414 (= e!407150 (inv!9013 (c!118507 acc!218)))))

(assert (= (and d!225502 c!118521) b!658412))

(assert (= (and d!225502 (not c!118521)) b!658413))

(assert (= (and b!658413 (not res!292215)) b!658414))

(declare-fun m!924135 () Bool)

(assert (=> b!658412 m!924135))

(declare-fun m!924137 () Bool)

(assert (=> b!658414 m!924137))

(assert (=> b!658373 d!225502))

(declare-fun b!658436 () Bool)

(declare-fun res!292236 () Bool)

(declare-fun e!407156 () Bool)

(assert (=> b!658436 (=> (not res!292236) (not e!407156))))

(declare-fun height!300 (Conc!2470) Int)

(declare-fun ++!1893 (Conc!2470 Conc!2470) Conc!2470)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!658436 (= res!292236 (<= (height!300 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) (+ (max!0 (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332)))) 1)))))

(declare-fun b!658435 () Bool)

(declare-fun res!292238 () Bool)

(assert (=> b!658435 (=> (not res!292238) (not e!407156))))

(declare-fun isBalanced!650 (Conc!2470) Bool)

(assert (=> b!658435 (= res!292238 (isBalanced!650 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))))

(declare-fun lt!280356 () BalanceConc!4952)

(declare-fun b!658438 () Bool)

(declare-fun ++!1894 (List!7098 List!7098) List!7098)

(assert (=> b!658438 (= e!407156 (= (list!3021 lt!280356) (++!1894 (list!3021 acc!218) (list!3021 (seqFromList!1462 lt!280332)))))))

(declare-fun d!225504 () Bool)

(assert (=> d!225504 e!407156))

(declare-fun res!292239 () Bool)

(assert (=> d!225504 (=> (not res!292239) (not e!407156))))

(declare-fun appendAssocInst!129 (Conc!2470 Conc!2470) Bool)

(assert (=> d!225504 (= res!292239 (appendAssocInst!129 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))

(assert (=> d!225504 (= lt!280356 (BalanceConc!4953 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))))

(assert (=> d!225504 (= (++!1890 acc!218 (seqFromList!1462 lt!280332)) lt!280356)))

(declare-fun b!658437 () Bool)

(declare-fun res!292237 () Bool)

(assert (=> b!658437 (=> (not res!292237) (not e!407156))))

(assert (=> b!658437 (= res!292237 (>= (height!300 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) (max!0 (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332))))))))

(assert (= (and d!225504 res!292239) b!658435))

(assert (= (and b!658435 res!292238) b!658436))

(assert (= (and b!658436 res!292236) b!658437))

(assert (= (and b!658437 res!292237) b!658438))

(declare-fun m!924171 () Bool)

(assert (=> b!658435 m!924171))

(assert (=> b!658435 m!924171))

(declare-fun m!924173 () Bool)

(assert (=> b!658435 m!924173))

(declare-fun m!924175 () Bool)

(assert (=> d!225504 m!924175))

(assert (=> d!225504 m!924171))

(declare-fun m!924177 () Bool)

(assert (=> b!658438 m!924177))

(assert (=> b!658438 m!924075))

(assert (=> b!658438 m!924079))

(declare-fun m!924179 () Bool)

(assert (=> b!658438 m!924179))

(assert (=> b!658438 m!924075))

(assert (=> b!658438 m!924179))

(declare-fun m!924181 () Bool)

(assert (=> b!658438 m!924181))

(declare-fun m!924183 () Bool)

(assert (=> b!658437 m!924183))

(assert (=> b!658437 m!924171))

(assert (=> b!658437 m!924171))

(declare-fun m!924185 () Bool)

(assert (=> b!658437 m!924185))

(declare-fun m!924187 () Bool)

(assert (=> b!658437 m!924187))

(assert (=> b!658437 m!924187))

(assert (=> b!658437 m!924183))

(declare-fun m!924189 () Bool)

(assert (=> b!658437 m!924189))

(assert (=> b!658436 m!924183))

(assert (=> b!658436 m!924171))

(assert (=> b!658436 m!924171))

(assert (=> b!658436 m!924185))

(assert (=> b!658436 m!924187))

(assert (=> b!658436 m!924187))

(assert (=> b!658436 m!924183))

(assert (=> b!658436 m!924189))

(assert (=> b!658368 d!225504))

(declare-fun d!225516 () Bool)

(declare-fun fromListB!636 (List!7098) BalanceConc!4952)

(assert (=> d!225516 (= (seqFromList!1462 lt!280332) (fromListB!636 lt!280332))))

(declare-fun bs!94298 () Bool)

(assert (= bs!94298 d!225516))

(declare-fun m!924191 () Bool)

(assert (=> bs!94298 m!924191))

(assert (=> b!658368 d!225516))

(declare-fun d!225518 () Bool)

(declare-fun lt!280362 () Bool)

(declare-fun forall!1879 (List!7098 Int) Bool)

(assert (=> d!225518 (= lt!280362 (forall!1879 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))) lambda!20377))))

(declare-fun forall!1880 (Conc!2470 Int) Bool)

(assert (=> d!225518 (= lt!280362 (forall!1880 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332))) lambda!20377))))

(assert (=> d!225518 (= (forall!1876 (++!1890 acc!218 (seqFromList!1462 lt!280332)) lambda!20377) lt!280362)))

(declare-fun bs!94300 () Bool)

(assert (= bs!94300 d!225518))

(assert (=> bs!94300 m!924081))

(declare-fun m!924199 () Bool)

(assert (=> bs!94300 m!924199))

(assert (=> bs!94300 m!924199))

(declare-fun m!924201 () Bool)

(assert (=> bs!94300 m!924201))

(declare-fun m!924203 () Bool)

(assert (=> bs!94300 m!924203))

(assert (=> b!658368 d!225518))

(declare-fun d!225524 () Bool)

(assert (=> d!225524 (forall!1879 (++!1894 (list!3021 acc!218) lt!280332) lambda!20377)))

(declare-fun lt!280365 () Unit!12303)

(declare-fun choose!4670 (List!7098 List!7098 Int) Unit!12303)

(assert (=> d!225524 (= lt!280365 (choose!4670 (list!3021 acc!218) lt!280332 lambda!20377))))

(assert (=> d!225524 (forall!1879 (list!3021 acc!218) lambda!20377)))

(assert (=> d!225524 (= (lemmaConcatPreservesForall!73 (list!3021 acc!218) lt!280332 lambda!20377) lt!280365)))

(declare-fun bs!94302 () Bool)

(assert (= bs!94302 d!225524))

(assert (=> bs!94302 m!924075))

(declare-fun m!924207 () Bool)

(assert (=> bs!94302 m!924207))

(assert (=> bs!94302 m!924207))

(declare-fun m!924211 () Bool)

(assert (=> bs!94302 m!924211))

(assert (=> bs!94302 m!924075))

(declare-fun m!924217 () Bool)

(assert (=> bs!94302 m!924217))

(assert (=> bs!94302 m!924075))

(declare-fun m!924219 () Bool)

(assert (=> bs!94302 m!924219))

(assert (=> b!658368 d!225524))

(declare-fun d!225526 () Bool)

(declare-fun list!3025 (Conc!2470) List!7098)

(assert (=> d!225526 (= (list!3021 acc!218) (list!3025 (c!118507 acc!218)))))

(declare-fun bs!94303 () Bool)

(assert (= bs!94303 d!225526))

(declare-fun m!924221 () Bool)

(assert (=> bs!94303 m!924221))

(assert (=> b!658368 d!225526))

(declare-fun d!225528 () Bool)

(declare-fun lt!280366 () Bool)

(assert (=> d!225528 (= lt!280366 (forall!1879 (list!3021 acc!218) lambda!20377))))

(assert (=> d!225528 (= lt!280366 (forall!1880 (c!118507 acc!218) lambda!20377))))

(assert (=> d!225528 (= (forall!1876 acc!218 lambda!20377) lt!280366)))

(declare-fun bs!94304 () Bool)

(assert (= bs!94304 d!225528))

(assert (=> bs!94304 m!924075))

(assert (=> bs!94304 m!924075))

(assert (=> bs!94304 m!924219))

(declare-fun m!924229 () Bool)

(assert (=> bs!94304 m!924229))

(assert (=> b!658369 d!225528))

(assert (=> b!658370 d!225528))

(declare-fun d!225530 () Bool)

(assert (=> d!225530 (= (inv!9002 acc!218) (isBalanced!650 (c!118507 acc!218)))))

(declare-fun bs!94305 () Bool)

(assert (= bs!94305 d!225530))

(declare-fun m!924231 () Bool)

(assert (=> bs!94305 m!924231))

(assert (=> start!64246 d!225530))

(declare-fun d!225532 () Bool)

(declare-fun isBalanced!652 (Conc!2469) Bool)

(assert (=> d!225532 (= (inv!9003 ts!14) (isBalanced!652 (c!118506 ts!14)))))

(declare-fun bs!94306 () Bool)

(assert (= bs!94306 d!225532))

(declare-fun m!924233 () Bool)

(assert (=> bs!94306 m!924233))

(assert (=> start!64246 d!225532))

(declare-fun e!407176 () Bool)

(declare-fun b!658469 () Bool)

(declare-fun tp!200867 () Bool)

(declare-fun tp!200865 () Bool)

(assert (=> b!658469 (= e!407176 (and (inv!9004 (left!5704 (c!118506 ts!14))) tp!200867 (inv!9004 (right!6034 (c!118506 ts!14))) tp!200865))))

(declare-fun b!658471 () Bool)

(declare-fun e!407177 () Bool)

(declare-fun tp!200866 () Bool)

(assert (=> b!658471 (= e!407177 tp!200866)))

(declare-fun b!658470 () Bool)

(declare-fun inv!9016 (IArray!4939) Bool)

(assert (=> b!658470 (= e!407176 (and (inv!9016 (xs!5114 (c!118506 ts!14))) e!407177))))

(assert (=> b!658371 (= tp!200843 (and (inv!9004 (c!118506 ts!14)) e!407176))))

(assert (= (and b!658371 ((_ is Node!2469) (c!118506 ts!14))) b!658469))

(assert (= b!658470 b!658471))

(assert (= (and b!658371 ((_ is Leaf!3695) (c!118506 ts!14))) b!658470))

(declare-fun m!924235 () Bool)

(assert (=> b!658469 m!924235))

(declare-fun m!924237 () Bool)

(assert (=> b!658469 m!924237))

(declare-fun m!924239 () Bool)

(assert (=> b!658470 m!924239))

(assert (=> b!658371 m!924069))

(declare-fun e!407182 () Bool)

(declare-fun tp!200872 () Bool)

(declare-fun tp!200873 () Bool)

(declare-fun b!658478 () Bool)

(assert (=> b!658478 (= e!407182 (and (inv!9005 (left!5705 (c!118507 acc!218))) tp!200872 (inv!9005 (right!6035 (c!118507 acc!218))) tp!200873))))

(declare-fun b!658479 () Bool)

(declare-fun inv!9017 (IArray!4941) Bool)

(assert (=> b!658479 (= e!407182 (inv!9017 (xs!5115 (c!118507 acc!218))))))

(assert (=> b!658373 (= tp!200842 (and (inv!9005 (c!118507 acc!218)) e!407182))))

(assert (= (and b!658373 ((_ is Node!2470) (c!118507 acc!218))) b!658478))

(assert (= (and b!658373 ((_ is Leaf!3696) (c!118507 acc!218))) b!658479))

(declare-fun m!924241 () Bool)

(assert (=> b!658478 m!924241))

(declare-fun m!924243 () Bool)

(assert (=> b!658478 m!924243))

(declare-fun m!924245 () Bool)

(assert (=> b!658479 m!924245))

(assert (=> b!658373 m!924073))

(check-sat (not d!225530) (not b!658436) (not d!225504) (not b!658373) (not b!658391) (not d!225492) (not d!225528) (not b!658405) (not b!658470) (not d!225494) (not b!658469) (not b!658414) (not b!658371) (not d!225526) (not b!658479) (not d!225486) (not d!225532) (not b!658478) (not d!225516) (not d!225524) (not b!658435) (not d!225484) (not d!225518) (not b!658438) (not b!658437) (not b!658412) (not b!658471) (not b!658393))
(check-sat)
(get-model)

(assert (=> b!658371 d!225480))

(declare-fun d!225538 () Bool)

(assert (=> d!225538 (= (max!0 (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332)))) (ite (< (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332)))) (height!300 (c!118507 (seqFromList!1462 lt!280332))) (height!300 (c!118507 acc!218))))))

(assert (=> b!658436 d!225538))

(declare-fun d!225542 () Bool)

(assert (=> d!225542 (= (height!300 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) (ite ((_ is Empty!2470) (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) 0 (ite ((_ is Leaf!3696) (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) 1 (cheight!2681 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))))))

(assert (=> b!658436 d!225542))

(declare-fun d!225546 () Bool)

(assert (=> d!225546 (= (height!300 (c!118507 acc!218)) (ite ((_ is Empty!2470) (c!118507 acc!218)) 0 (ite ((_ is Leaf!3696) (c!118507 acc!218)) 1 (cheight!2681 (c!118507 acc!218)))))))

(assert (=> b!658436 d!225546))

(declare-fun d!225548 () Bool)

(assert (=> d!225548 (= (height!300 (c!118507 (seqFromList!1462 lt!280332))) (ite ((_ is Empty!2470) (c!118507 (seqFromList!1462 lt!280332))) 0 (ite ((_ is Leaf!3696) (c!118507 (seqFromList!1462 lt!280332))) 1 (cheight!2681 (c!118507 (seqFromList!1462 lt!280332))))))))

(assert (=> b!658436 d!225548))

(declare-fun lt!280390 () Conc!2470)

(declare-fun c!118565 () Bool)

(declare-fun c!118567 () Bool)

(declare-fun c!118570 () Bool)

(declare-fun c!118568 () Bool)

(declare-fun call!42497 () Conc!2470)

(declare-fun lt!280389 () Conc!2470)

(declare-fun call!42493 () Conc!2470)

(declare-fun bm!42477 () Bool)

(declare-fun <>!41 (Conc!2470 Conc!2470) Conc!2470)

(assert (=> bm!42477 (= call!42493 (<>!41 (ite c!118570 (ite c!118567 (left!5705 (c!118507 acc!218)) (ite c!118568 (left!5705 (right!6035 (c!118507 acc!218))) (left!5705 (c!118507 acc!218)))) (ite c!118565 lt!280390 (right!6035 (left!5705 (c!118507 (seqFromList!1462 lt!280332)))))) (ite c!118570 (ite c!118567 call!42497 (ite c!118568 lt!280389 (left!5705 (right!6035 (c!118507 acc!218))))) (ite c!118565 (right!6035 (left!5705 (c!118507 (seqFromList!1462 lt!280332)))) (right!6035 (c!118507 (seqFromList!1462 lt!280332)))))))))

(declare-fun d!225550 () Bool)

(declare-fun e!407267 () Bool)

(assert (=> d!225550 e!407267))

(declare-fun res!292307 () Bool)

(assert (=> d!225550 (=> (not res!292307) (not e!407267))))

(assert (=> d!225550 (= res!292307 (appendAssocInst!129 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))

(declare-fun lt!280387 () Conc!2470)

(declare-fun e!407269 () Conc!2470)

(assert (=> d!225550 (= lt!280387 e!407269)))

(declare-fun c!118569 () Bool)

(assert (=> d!225550 (= c!118569 (= (c!118507 acc!218) Empty!2470))))

(declare-fun e!407260 () Bool)

(assert (=> d!225550 e!407260))

(declare-fun res!292310 () Bool)

(assert (=> d!225550 (=> (not res!292310) (not e!407260))))

(assert (=> d!225550 (= res!292310 (isBalanced!650 (c!118507 acc!218)))))

(assert (=> d!225550 (= (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))) lt!280387)))

(declare-fun bm!42478 () Bool)

(declare-fun call!42490 () Conc!2470)

(declare-fun call!42492 () Conc!2470)

(assert (=> bm!42478 (= call!42490 call!42492)))

(declare-fun b!658611 () Bool)

(declare-fun e!407266 () Conc!2470)

(declare-fun e!407261 () Conc!2470)

(assert (=> b!658611 (= e!407266 e!407261)))

(assert (=> b!658611 (= lt!280389 call!42497)))

(declare-fun call!42481 () Int)

(declare-fun call!42482 () Int)

(assert (=> b!658611 (= c!118568 (= call!42481 (- call!42482 3)))))

(declare-fun bm!42479 () Bool)

(declare-fun call!42496 () Conc!2470)

(declare-fun call!42494 () Conc!2470)

(assert (=> bm!42479 (= call!42496 call!42494)))

(declare-fun b!658612 () Bool)

(declare-fun e!407268 () Conc!2470)

(declare-fun e!407265 () Conc!2470)

(assert (=> b!658612 (= e!407268 e!407265)))

(assert (=> b!658612 (= lt!280390 call!42490)))

(declare-fun call!42486 () Int)

(assert (=> b!658612 (= c!118565 (= call!42482 (- call!42486 3)))))

(declare-fun c!118564 () Bool)

(declare-fun c!118563 () Bool)

(declare-fun bm!42480 () Bool)

(declare-fun call!42495 () Conc!2470)

(declare-fun call!42480 () Conc!2470)

(declare-fun call!42491 () Conc!2470)

(assert (=> bm!42480 (= call!42491 (<>!41 (ite c!118563 (c!118507 acc!218) (ite c!118570 (ite c!118568 (left!5705 (c!118507 acc!218)) call!42480) (ite c!118564 call!42490 (ite c!118565 call!42495 lt!280390)))) (ite c!118563 (c!118507 (seqFromList!1462 lt!280332)) (ite c!118570 (ite c!118568 call!42480 lt!280389) (ite (or c!118564 c!118565) (right!6035 (c!118507 (seqFromList!1462 lt!280332))) call!42495)))))))

(declare-fun bm!42481 () Bool)

(assert (=> bm!42481 (= call!42482 (height!300 (ite c!118570 (c!118507 acc!218) lt!280390)))))

(declare-fun b!658613 () Bool)

(declare-fun call!42484 () Conc!2470)

(assert (=> b!658613 (= e!407266 call!42484)))

(declare-fun bm!42482 () Bool)

(assert (=> bm!42482 (= call!42484 call!42493)))

(declare-fun b!658614 () Bool)

(assert (=> b!658614 (= e!407268 call!42494)))

(declare-fun b!658615 () Bool)

(assert (=> b!658615 (= e!407269 (c!118507 (seqFromList!1462 lt!280332)))))

(declare-fun bm!42483 () Bool)

(assert (=> bm!42483 (= call!42486 (height!300 (ite c!118570 (right!6035 (c!118507 acc!218)) (c!118507 (seqFromList!1462 lt!280332)))))))

(declare-fun b!658616 () Bool)

(declare-fun res!292309 () Bool)

(assert (=> b!658616 (=> (not res!292309) (not e!407267))))

(assert (=> b!658616 (= res!292309 (isBalanced!650 lt!280387))))

(declare-fun b!658617 () Bool)

(declare-fun e!407262 () Conc!2470)

(assert (=> b!658617 (= e!407262 (c!118507 acc!218))))

(declare-fun b!658618 () Bool)

(assert (=> b!658618 (= e!407269 e!407262)))

(declare-fun c!118566 () Bool)

(assert (=> b!658618 (= c!118566 (= (c!118507 (seqFromList!1462 lt!280332)) Empty!2470))))

(declare-fun bm!42484 () Bool)

(declare-fun call!42485 () Conc!2470)

(assert (=> bm!42484 (= call!42494 call!42485)))

(declare-fun bm!42485 () Bool)

(assert (=> bm!42485 (= call!42497 call!42492)))

(declare-fun b!658619 () Bool)

(assert (=> b!658619 (= e!407260 (isBalanced!650 (c!118507 (seqFromList!1462 lt!280332))))))

(declare-fun bm!42486 () Bool)

(assert (=> bm!42486 (= call!42495 call!42493)))

(declare-fun b!658620 () Bool)

(assert (=> b!658620 (= e!407265 call!42496)))

(declare-fun bm!42487 () Bool)

(assert (=> bm!42487 (= call!42485 call!42491)))

(declare-fun call!42487 () Int)

(declare-fun bm!42488 () Bool)

(assert (=> bm!42488 (= call!42487 (height!300 (ite c!118570 (left!5705 (c!118507 acc!218)) (left!5705 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658621 () Bool)

(declare-fun e!407264 () Conc!2470)

(assert (=> b!658621 (= e!407264 call!42491)))

(declare-fun bm!42489 () Bool)

(assert (=> bm!42489 (= call!42480 call!42484)))

(declare-fun b!658622 () Bool)

(declare-fun call!42483 () Conc!2470)

(assert (=> b!658622 (= e!407261 call!42483)))

(declare-fun bm!42490 () Bool)

(assert (=> bm!42490 (= call!42481 (height!300 (ite c!118570 lt!280389 (right!6035 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658623 () Bool)

(declare-fun res!292311 () Bool)

(assert (=> b!658623 (=> (not res!292311) (not e!407267))))

(assert (=> b!658623 (= res!292311 (>= (height!300 lt!280387) (max!0 (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658624 () Bool)

(declare-fun e!407263 () Conc!2470)

(assert (=> b!658624 (= e!407264 e!407263)))

(declare-fun lt!280388 () Int)

(assert (=> b!658624 (= c!118570 (< lt!280388 (- 1)))))

(declare-fun b!658625 () Bool)

(assert (=> b!658625 (= c!118564 (>= call!42481 call!42487))))

(assert (=> b!658625 (= e!407263 e!407268)))

(declare-fun bm!42491 () Bool)

(assert (=> bm!42491 (= call!42492 (++!1893 (ite c!118570 (ite c!118567 (right!6035 (c!118507 acc!218)) (right!6035 (right!6035 (c!118507 acc!218)))) (c!118507 acc!218)) (ite c!118570 (c!118507 (seqFromList!1462 lt!280332)) (ite c!118564 (left!5705 (c!118507 (seqFromList!1462 lt!280332))) (left!5705 (left!5705 (c!118507 (seqFromList!1462 lt!280332))))))))))

(declare-fun b!658626 () Bool)

(declare-fun res!292308 () Bool)

(assert (=> b!658626 (=> (not res!292308) (not e!407267))))

(assert (=> b!658626 (= res!292308 (<= (height!300 lt!280387) (+ (max!0 (height!300 (c!118507 acc!218)) (height!300 (c!118507 (seqFromList!1462 lt!280332)))) 1)))))

(declare-fun b!658627 () Bool)

(assert (=> b!658627 (= e!407261 call!42483)))

(declare-fun bm!42492 () Bool)

(assert (=> bm!42492 (= call!42483 call!42485)))

(declare-fun b!658628 () Bool)

(assert (=> b!658628 (= c!118567 (>= call!42487 call!42486))))

(assert (=> b!658628 (= e!407263 e!407266)))

(declare-fun b!658629 () Bool)

(assert (=> b!658629 (= e!407267 (= (list!3025 lt!280387) (++!1894 (list!3025 (c!118507 acc!218)) (list!3025 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658630 () Bool)

(assert (=> b!658630 (= e!407265 call!42496)))

(declare-fun b!658631 () Bool)

(assert (=> b!658631 (= c!118563 (and (<= (- 1) lt!280388) (<= lt!280388 1)))))

(assert (=> b!658631 (= lt!280388 (- (height!300 (c!118507 (seqFromList!1462 lt!280332))) (height!300 (c!118507 acc!218))))))

(assert (=> b!658631 (= e!407262 e!407264)))

(assert (= (and d!225550 res!292310) b!658619))

(assert (= (and d!225550 c!118569) b!658615))

(assert (= (and d!225550 (not c!118569)) b!658618))

(assert (= (and b!658618 c!118566) b!658617))

(assert (= (and b!658618 (not c!118566)) b!658631))

(assert (= (and b!658631 c!118563) b!658621))

(assert (= (and b!658631 (not c!118563)) b!658624))

(assert (= (and b!658624 c!118570) b!658628))

(assert (= (and b!658624 (not c!118570)) b!658625))

(assert (= (and b!658628 c!118567) b!658613))

(assert (= (and b!658628 (not c!118567)) b!658611))

(assert (= (and b!658611 c!118568) b!658622))

(assert (= (and b!658611 (not c!118568)) b!658627))

(assert (= (or b!658622 b!658627) bm!42489))

(assert (= (or b!658622 b!658627) bm!42492))

(assert (= (or b!658613 b!658611) bm!42485))

(assert (= (or b!658613 bm!42489) bm!42482))

(assert (= (and b!658625 c!118564) b!658614))

(assert (= (and b!658625 (not c!118564)) b!658612))

(assert (= (and b!658612 c!118565) b!658630))

(assert (= (and b!658612 (not c!118565)) b!658620))

(assert (= (or b!658630 b!658620) bm!42486))

(assert (= (or b!658630 b!658620) bm!42479))

(assert (= (or b!658614 b!658612) bm!42478))

(assert (= (or b!658614 bm!42479) bm!42484))

(assert (= (or bm!42485 bm!42478) bm!42491))

(assert (= (or b!658628 b!658625) bm!42488))

(assert (= (or bm!42482 bm!42486) bm!42477))

(assert (= (or b!658611 b!658612) bm!42481))

(assert (= (or b!658611 b!658625) bm!42490))

(assert (= (or b!658628 b!658612) bm!42483))

(assert (= (or bm!42492 bm!42484) bm!42487))

(assert (= (or b!658621 bm!42487) bm!42480))

(assert (= (and d!225550 res!292307) b!658616))

(assert (= (and b!658616 res!292309) b!658626))

(assert (= (and b!658626 res!292308) b!658623))

(assert (= (and b!658623 res!292311) b!658629))

(assert (=> b!658631 m!924183))

(assert (=> b!658631 m!924187))

(declare-fun m!924303 () Bool)

(assert (=> b!658626 m!924303))

(assert (=> b!658626 m!924187))

(assert (=> b!658626 m!924183))

(assert (=> b!658626 m!924187))

(assert (=> b!658626 m!924183))

(assert (=> b!658626 m!924189))

(declare-fun m!924305 () Bool)

(assert (=> bm!42481 m!924305))

(declare-fun m!924307 () Bool)

(assert (=> b!658619 m!924307))

(assert (=> b!658623 m!924303))

(assert (=> b!658623 m!924187))

(assert (=> b!658623 m!924183))

(assert (=> b!658623 m!924187))

(assert (=> b!658623 m!924183))

(assert (=> b!658623 m!924189))

(declare-fun m!924309 () Bool)

(assert (=> bm!42491 m!924309))

(declare-fun m!924311 () Bool)

(assert (=> bm!42480 m!924311))

(declare-fun m!924313 () Bool)

(assert (=> bm!42490 m!924313))

(assert (=> d!225550 m!924175))

(assert (=> d!225550 m!924231))

(declare-fun m!924315 () Bool)

(assert (=> bm!42488 m!924315))

(declare-fun m!924317 () Bool)

(assert (=> bm!42477 m!924317))

(declare-fun m!924319 () Bool)

(assert (=> b!658629 m!924319))

(assert (=> b!658629 m!924221))

(declare-fun m!924321 () Bool)

(assert (=> b!658629 m!924321))

(assert (=> b!658629 m!924221))

(assert (=> b!658629 m!924321))

(declare-fun m!924323 () Bool)

(assert (=> b!658629 m!924323))

(declare-fun m!924325 () Bool)

(assert (=> bm!42483 m!924325))

(declare-fun m!924327 () Bool)

(assert (=> b!658616 m!924327))

(assert (=> b!658436 d!225550))

(declare-fun d!225560 () Bool)

(declare-fun res!292318 () Bool)

(declare-fun e!407280 () Bool)

(assert (=> d!225560 (=> res!292318 e!407280)))

(assert (=> d!225560 (= res!292318 ((_ is Nil!7084) (list!3021 acc!218)))))

(assert (=> d!225560 (= (forall!1879 (list!3021 acc!218) lambda!20377) e!407280)))

(declare-fun b!658646 () Bool)

(declare-fun e!407281 () Bool)

(assert (=> b!658646 (= e!407280 e!407281)))

(declare-fun res!292319 () Bool)

(assert (=> b!658646 (=> (not res!292319) (not e!407281))))

(declare-fun dynLambda!3805 (Int Int) Bool)

(assert (=> b!658646 (= res!292319 (dynLambda!3805 lambda!20377 (h!12485 (list!3021 acc!218))))))

(declare-fun b!658647 () Bool)

(assert (=> b!658647 (= e!407281 (forall!1879 (t!86059 (list!3021 acc!218)) lambda!20377))))

(assert (= (and d!225560 (not res!292318)) b!658646))

(assert (= (and b!658646 res!292319) b!658647))

(declare-fun b_lambda!25669 () Bool)

(assert (=> (not b_lambda!25669) (not b!658646)))

(declare-fun m!924329 () Bool)

(assert (=> b!658646 m!924329))

(declare-fun m!924331 () Bool)

(assert (=> b!658647 m!924331))

(assert (=> d!225528 d!225560))

(assert (=> d!225528 d!225526))

(declare-fun b!658663 () Bool)

(declare-fun e!407290 () Bool)

(declare-fun forall!1881 (IArray!4941 Int) Bool)

(assert (=> b!658663 (= e!407290 (forall!1881 (xs!5115 (c!118507 acc!218)) lambda!20377))))

(declare-fun b!658664 () Bool)

(declare-fun e!407289 () Bool)

(assert (=> b!658664 (= e!407290 e!407289)))

(declare-fun lt!280398 () Unit!12303)

(declare-fun lemmaForallConcat!53 (List!7098 List!7098 Int) Unit!12303)

(assert (=> b!658664 (= lt!280398 (lemmaForallConcat!53 (list!3025 (left!5705 (c!118507 acc!218))) (list!3025 (right!6035 (c!118507 acc!218))) lambda!20377))))

(declare-fun res!292331 () Bool)

(assert (=> b!658664 (= res!292331 (forall!1880 (left!5705 (c!118507 acc!218)) lambda!20377))))

(assert (=> b!658664 (=> (not res!292331) (not e!407289))))

(declare-fun b!658665 () Bool)

(assert (=> b!658665 (= e!407289 (forall!1880 (right!6035 (c!118507 acc!218)) lambda!20377))))

(declare-fun b!658662 () Bool)

(declare-fun e!407288 () Bool)

(assert (=> b!658662 (= e!407288 e!407290)))

(declare-fun c!118577 () Bool)

(assert (=> b!658662 (= c!118577 ((_ is Leaf!3696) (c!118507 acc!218)))))

(declare-fun d!225562 () Bool)

(declare-fun lt!280397 () Bool)

(assert (=> d!225562 (= lt!280397 (forall!1879 (list!3025 (c!118507 acc!218)) lambda!20377))))

(assert (=> d!225562 (= lt!280397 e!407288)))

(declare-fun res!292330 () Bool)

(assert (=> d!225562 (=> res!292330 e!407288)))

(assert (=> d!225562 (= res!292330 ((_ is Empty!2470) (c!118507 acc!218)))))

(assert (=> d!225562 (= (forall!1880 (c!118507 acc!218) lambda!20377) lt!280397)))

(assert (= (and d!225562 (not res!292330)) b!658662))

(assert (= (and b!658662 c!118577) b!658663))

(assert (= (and b!658662 (not c!118577)) b!658664))

(assert (= (and b!658664 res!292331) b!658665))

(declare-fun m!924333 () Bool)

(assert (=> b!658663 m!924333))

(declare-fun m!924335 () Bool)

(assert (=> b!658664 m!924335))

(declare-fun m!924337 () Bool)

(assert (=> b!658664 m!924337))

(assert (=> b!658664 m!924335))

(assert (=> b!658664 m!924337))

(declare-fun m!924339 () Bool)

(assert (=> b!658664 m!924339))

(declare-fun m!924341 () Bool)

(assert (=> b!658664 m!924341))

(declare-fun m!924343 () Bool)

(assert (=> b!658665 m!924343))

(assert (=> d!225562 m!924221))

(assert (=> d!225562 m!924221))

(declare-fun m!924345 () Bool)

(assert (=> d!225562 m!924345))

(assert (=> d!225528 d!225562))

(declare-fun d!225564 () Bool)

(declare-fun res!292351 () Bool)

(declare-fun e!407306 () Bool)

(assert (=> d!225564 (=> res!292351 e!407306)))

(assert (=> d!225564 (= res!292351 (not ((_ is Node!2469) (c!118506 ts!14))))))

(assert (=> d!225564 (= (isBalanced!652 (c!118506 ts!14)) e!407306)))

(declare-fun b!658699 () Bool)

(declare-fun e!407305 () Bool)

(declare-fun isEmpty!4772 (Conc!2469) Bool)

(assert (=> b!658699 (= e!407305 (not (isEmpty!4772 (right!6034 (c!118506 ts!14)))))))

(declare-fun b!658700 () Bool)

(declare-fun res!292355 () Bool)

(assert (=> b!658700 (=> (not res!292355) (not e!407305))))

(declare-fun height!302 (Conc!2469) Int)

(assert (=> b!658700 (= res!292355 (<= (- (height!302 (left!5704 (c!118506 ts!14))) (height!302 (right!6034 (c!118506 ts!14)))) 1))))

(declare-fun b!658701 () Bool)

(declare-fun res!292353 () Bool)

(assert (=> b!658701 (=> (not res!292353) (not e!407305))))

(assert (=> b!658701 (= res!292353 (isBalanced!652 (left!5704 (c!118506 ts!14))))))

(declare-fun b!658702 () Bool)

(declare-fun res!292354 () Bool)

(assert (=> b!658702 (=> (not res!292354) (not e!407305))))

(assert (=> b!658702 (= res!292354 (not (isEmpty!4772 (left!5704 (c!118506 ts!14)))))))

(declare-fun b!658703 () Bool)

(assert (=> b!658703 (= e!407306 e!407305)))

(declare-fun res!292350 () Bool)

(assert (=> b!658703 (=> (not res!292350) (not e!407305))))

(assert (=> b!658703 (= res!292350 (<= (- 1) (- (height!302 (left!5704 (c!118506 ts!14))) (height!302 (right!6034 (c!118506 ts!14))))))))

(declare-fun b!658704 () Bool)

(declare-fun res!292352 () Bool)

(assert (=> b!658704 (=> (not res!292352) (not e!407305))))

(assert (=> b!658704 (= res!292352 (isBalanced!652 (right!6034 (c!118506 ts!14))))))

(assert (= (and d!225564 (not res!292351)) b!658703))

(assert (= (and b!658703 res!292350) b!658700))

(assert (= (and b!658700 res!292355) b!658701))

(assert (= (and b!658701 res!292353) b!658704))

(assert (= (and b!658704 res!292352) b!658702))

(assert (= (and b!658702 res!292354) b!658699))

(declare-fun m!924371 () Bool)

(assert (=> b!658702 m!924371))

(declare-fun m!924373 () Bool)

(assert (=> b!658699 m!924373))

(declare-fun m!924375 () Bool)

(assert (=> b!658703 m!924375))

(declare-fun m!924377 () Bool)

(assert (=> b!658703 m!924377))

(declare-fun m!924379 () Bool)

(assert (=> b!658704 m!924379))

(assert (=> b!658700 m!924375))

(assert (=> b!658700 m!924377))

(declare-fun m!924381 () Bool)

(assert (=> b!658701 m!924381))

(assert (=> d!225532 d!225564))

(assert (=> b!658437 d!225538))

(assert (=> b!658437 d!225542))

(assert (=> b!658437 d!225546))

(assert (=> b!658437 d!225548))

(assert (=> b!658437 d!225550))

(assert (=> b!658405 d!225486))

(assert (=> b!658373 d!225502))

(declare-fun d!225570 () Bool)

(assert (=> d!225570 (= (list!3021 lt!280356) (list!3025 (c!118507 lt!280356)))))

(declare-fun bs!94309 () Bool)

(assert (= bs!94309 d!225570))

(declare-fun m!924383 () Bool)

(assert (=> bs!94309 m!924383))

(assert (=> b!658438 d!225570))

(declare-fun b!658724 () Bool)

(declare-fun e!407318 () List!7098)

(assert (=> b!658724 (= e!407318 (list!3021 (seqFromList!1462 lt!280332)))))

(declare-fun b!658726 () Bool)

(declare-fun res!292372 () Bool)

(declare-fun e!407319 () Bool)

(assert (=> b!658726 (=> (not res!292372) (not e!407319))))

(declare-fun lt!280405 () List!7098)

(declare-fun size!5632 (List!7098) Int)

(assert (=> b!658726 (= res!292372 (= (size!5632 lt!280405) (+ (size!5632 (list!3021 acc!218)) (size!5632 (list!3021 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658727 () Bool)

(assert (=> b!658727 (= e!407319 (or (not (= (list!3021 (seqFromList!1462 lt!280332)) Nil!7084)) (= lt!280405 (list!3021 acc!218))))))

(declare-fun d!225572 () Bool)

(assert (=> d!225572 e!407319))

(declare-fun res!292371 () Bool)

(assert (=> d!225572 (=> (not res!292371) (not e!407319))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1172 (List!7098) (InoxSet Int))

(assert (=> d!225572 (= res!292371 (= (content!1172 lt!280405) ((_ map or) (content!1172 (list!3021 acc!218)) (content!1172 (list!3021 (seqFromList!1462 lt!280332))))))))

(assert (=> d!225572 (= lt!280405 e!407318)))

(declare-fun c!118588 () Bool)

(assert (=> d!225572 (= c!118588 ((_ is Nil!7084) (list!3021 acc!218)))))

(assert (=> d!225572 (= (++!1894 (list!3021 acc!218) (list!3021 (seqFromList!1462 lt!280332))) lt!280405)))

(declare-fun b!658725 () Bool)

(assert (=> b!658725 (= e!407318 (Cons!7084 (h!12485 (list!3021 acc!218)) (++!1894 (t!86059 (list!3021 acc!218)) (list!3021 (seqFromList!1462 lt!280332)))))))

(assert (= (and d!225572 c!118588) b!658724))

(assert (= (and d!225572 (not c!118588)) b!658725))

(assert (= (and d!225572 res!292371) b!658726))

(assert (= (and b!658726 res!292372) b!658727))

(declare-fun m!924391 () Bool)

(assert (=> b!658726 m!924391))

(assert (=> b!658726 m!924075))

(declare-fun m!924393 () Bool)

(assert (=> b!658726 m!924393))

(assert (=> b!658726 m!924179))

(declare-fun m!924395 () Bool)

(assert (=> b!658726 m!924395))

(declare-fun m!924397 () Bool)

(assert (=> d!225572 m!924397))

(assert (=> d!225572 m!924075))

(declare-fun m!924399 () Bool)

(assert (=> d!225572 m!924399))

(assert (=> d!225572 m!924179))

(declare-fun m!924401 () Bool)

(assert (=> d!225572 m!924401))

(assert (=> b!658725 m!924179))

(declare-fun m!924403 () Bool)

(assert (=> b!658725 m!924403))

(assert (=> b!658438 d!225572))

(assert (=> b!658438 d!225526))

(declare-fun d!225576 () Bool)

(assert (=> d!225576 (= (list!3021 (seqFromList!1462 lt!280332)) (list!3025 (c!118507 (seqFromList!1462 lt!280332))))))

(declare-fun bs!94310 () Bool)

(assert (= bs!94310 d!225576))

(assert (=> bs!94310 m!924321))

(assert (=> b!658438 d!225576))

(declare-fun d!225578 () Bool)

(declare-fun e!407324 () Bool)

(assert (=> d!225578 e!407324))

(declare-fun res!292391 () Bool)

(assert (=> d!225578 (=> (not res!292391) (not e!407324))))

(declare-fun lt!280408 () BalanceConc!4952)

(assert (=> d!225578 (= res!292391 (= (list!3021 lt!280408) lt!280332))))

(declare-fun fromList!295 (List!7098) Conc!2470)

(assert (=> d!225578 (= lt!280408 (BalanceConc!4953 (fromList!295 lt!280332)))))

(assert (=> d!225578 (= (fromListB!636 lt!280332) lt!280408)))

(declare-fun b!658746 () Bool)

(assert (=> b!658746 (= e!407324 (isBalanced!650 (fromList!295 lt!280332)))))

(assert (= (and d!225578 res!292391) b!658746))

(declare-fun m!924417 () Bool)

(assert (=> d!225578 m!924417))

(declare-fun m!924419 () Bool)

(assert (=> d!225578 m!924419))

(assert (=> b!658746 m!924419))

(assert (=> b!658746 m!924419))

(declare-fun m!924421 () Bool)

(assert (=> b!658746 m!924421))

(assert (=> d!225516 d!225578))

(declare-fun d!225586 () Bool)

(assert (=> d!225586 true))

(assert (=> d!225586 true))

(declare-fun res!292394 () Bool)

(assert (=> d!225586 (= (choose!511 lt!280331 LeftBrace!1454) res!292394)))

(assert (=> d!225492 d!225586))

(declare-fun d!225592 () Bool)

(declare-fun c!118590 () Bool)

(assert (=> d!225592 (= c!118590 ((_ is Node!2470) (left!5705 (c!118507 acc!218))))))

(declare-fun e!407325 () Bool)

(assert (=> d!225592 (= (inv!9005 (left!5705 (c!118507 acc!218))) e!407325)))

(declare-fun b!658747 () Bool)

(assert (=> b!658747 (= e!407325 (inv!9012 (left!5705 (c!118507 acc!218))))))

(declare-fun b!658748 () Bool)

(declare-fun e!407326 () Bool)

(assert (=> b!658748 (= e!407325 e!407326)))

(declare-fun res!292395 () Bool)

(assert (=> b!658748 (= res!292395 (not ((_ is Leaf!3696) (left!5705 (c!118507 acc!218)))))))

(assert (=> b!658748 (=> res!292395 e!407326)))

(declare-fun b!658749 () Bool)

(assert (=> b!658749 (= e!407326 (inv!9013 (left!5705 (c!118507 acc!218))))))

(assert (= (and d!225592 c!118590) b!658747))

(assert (= (and d!225592 (not c!118590)) b!658748))

(assert (= (and b!658748 (not res!292395)) b!658749))

(declare-fun m!924423 () Bool)

(assert (=> b!658747 m!924423))

(declare-fun m!924425 () Bool)

(assert (=> b!658749 m!924425))

(assert (=> b!658478 d!225592))

(declare-fun d!225594 () Bool)

(declare-fun c!118591 () Bool)

(assert (=> d!225594 (= c!118591 ((_ is Node!2470) (right!6035 (c!118507 acc!218))))))

(declare-fun e!407327 () Bool)

(assert (=> d!225594 (= (inv!9005 (right!6035 (c!118507 acc!218))) e!407327)))

(declare-fun b!658750 () Bool)

(assert (=> b!658750 (= e!407327 (inv!9012 (right!6035 (c!118507 acc!218))))))

(declare-fun b!658751 () Bool)

(declare-fun e!407328 () Bool)

(assert (=> b!658751 (= e!407327 e!407328)))

(declare-fun res!292396 () Bool)

(assert (=> b!658751 (= res!292396 (not ((_ is Leaf!3696) (right!6035 (c!118507 acc!218)))))))

(assert (=> b!658751 (=> res!292396 e!407328)))

(declare-fun b!658752 () Bool)

(assert (=> b!658752 (= e!407328 (inv!9013 (right!6035 (c!118507 acc!218))))))

(assert (= (and d!225594 c!118591) b!658750))

(assert (= (and d!225594 (not c!118591)) b!658751))

(assert (= (and b!658751 (not res!292396)) b!658752))

(declare-fun m!924427 () Bool)

(assert (=> b!658750 m!924427))

(declare-fun m!924429 () Bool)

(assert (=> b!658752 m!924429))

(assert (=> b!658478 d!225594))

(declare-fun d!225596 () Bool)

(assert (=> d!225596 (= (inv!9017 (xs!5115 (c!118507 acc!218))) (<= (size!5632 (innerList!2528 (xs!5115 (c!118507 acc!218)))) 2147483647))))

(declare-fun bs!94311 () Bool)

(assert (= bs!94311 d!225596))

(declare-fun m!924431 () Bool)

(assert (=> bs!94311 m!924431))

(assert (=> b!658479 d!225596))

(declare-fun d!225598 () Bool)

(declare-fun lt!280411 () Int)

(assert (=> d!225598 (>= lt!280411 0)))

(declare-fun e!407338 () Int)

(assert (=> d!225598 (= lt!280411 e!407338)))

(declare-fun c!118594 () Bool)

(assert (=> d!225598 (= c!118594 ((_ is Nil!7083) (list!3023 ts!14)))))

(assert (=> d!225598 (= (size!5630 (list!3023 ts!14)) lt!280411)))

(declare-fun b!658767 () Bool)

(assert (=> b!658767 (= e!407338 0)))

(declare-fun b!658768 () Bool)

(assert (=> b!658768 (= e!407338 (+ 1 (size!5630 (t!86058 (list!3023 ts!14)))))))

(assert (= (and d!225598 c!118594) b!658767))

(assert (= (and d!225598 (not c!118594)) b!658768))

(declare-fun m!924437 () Bool)

(assert (=> b!658768 m!924437))

(assert (=> d!225486 d!225598))

(declare-fun d!225602 () Bool)

(declare-fun list!3028 (Conc!2469) List!7097)

(assert (=> d!225602 (= (list!3023 ts!14) (list!3028 (c!118506 ts!14)))))

(declare-fun bs!94312 () Bool)

(assert (= bs!94312 d!225602))

(declare-fun m!924443 () Bool)

(assert (=> bs!94312 m!924443))

(assert (=> d!225486 d!225602))

(declare-fun d!225606 () Bool)

(declare-fun lt!280414 () Int)

(assert (=> d!225606 (= lt!280414 (size!5630 (list!3028 (c!118506 ts!14))))))

(assert (=> d!225606 (= lt!280414 (ite ((_ is Empty!2469) (c!118506 ts!14)) 0 (ite ((_ is Leaf!3695) (c!118506 ts!14)) (csize!5169 (c!118506 ts!14)) (csize!5168 (c!118506 ts!14)))))))

(assert (=> d!225606 (= (size!5631 (c!118506 ts!14)) lt!280414)))

(declare-fun bs!94313 () Bool)

(assert (= bs!94313 d!225606))

(assert (=> bs!94313 m!924443))

(assert (=> bs!94313 m!924443))

(declare-fun m!924445 () Bool)

(assert (=> bs!94313 m!924445))

(assert (=> d!225486 d!225606))

(declare-fun d!225608 () Bool)

(declare-fun res!292419 () Bool)

(declare-fun e!407349 () Bool)

(assert (=> d!225608 (=> (not res!292419) (not e!407349))))

(declare-fun size!5633 (Conc!2470) Int)

(assert (=> d!225608 (= res!292419 (= (csize!5170 (c!118507 acc!218)) (+ (size!5633 (left!5705 (c!118507 acc!218))) (size!5633 (right!6035 (c!118507 acc!218))))))))

(assert (=> d!225608 (= (inv!9012 (c!118507 acc!218)) e!407349)))

(declare-fun b!658785 () Bool)

(declare-fun res!292420 () Bool)

(assert (=> b!658785 (=> (not res!292420) (not e!407349))))

(assert (=> b!658785 (= res!292420 (and (not (= (left!5705 (c!118507 acc!218)) Empty!2470)) (not (= (right!6035 (c!118507 acc!218)) Empty!2470))))))

(declare-fun b!658786 () Bool)

(declare-fun res!292421 () Bool)

(assert (=> b!658786 (=> (not res!292421) (not e!407349))))

(assert (=> b!658786 (= res!292421 (= (cheight!2681 (c!118507 acc!218)) (+ (max!0 (height!300 (left!5705 (c!118507 acc!218))) (height!300 (right!6035 (c!118507 acc!218)))) 1)))))

(declare-fun b!658787 () Bool)

(assert (=> b!658787 (= e!407349 (<= 0 (cheight!2681 (c!118507 acc!218))))))

(assert (= (and d!225608 res!292419) b!658785))

(assert (= (and b!658785 res!292420) b!658786))

(assert (= (and b!658786 res!292421) b!658787))

(declare-fun m!924447 () Bool)

(assert (=> d!225608 m!924447))

(declare-fun m!924449 () Bool)

(assert (=> d!225608 m!924449))

(declare-fun m!924451 () Bool)

(assert (=> b!658786 m!924451))

(declare-fun m!924453 () Bool)

(assert (=> b!658786 m!924453))

(assert (=> b!658786 m!924451))

(assert (=> b!658786 m!924453))

(declare-fun m!924455 () Bool)

(assert (=> b!658786 m!924455))

(assert (=> b!658412 d!225608))

(declare-fun d!225610 () Bool)

(declare-fun lt!280423 () Token!2562)

(declare-fun contains!1555 (List!7097 Token!2562) Bool)

(assert (=> d!225610 (contains!1555 (list!3023 ts!14) lt!280423)))

(declare-fun e!407361 () Token!2562)

(assert (=> d!225610 (= lt!280423 e!407361)))

(declare-fun c!118600 () Bool)

(assert (=> d!225610 (= c!118600 (= from!502 0))))

(declare-fun e!407362 () Bool)

(assert (=> d!225610 e!407362))

(declare-fun res!292434 () Bool)

(assert (=> d!225610 (=> (not res!292434) (not e!407362))))

(assert (=> d!225610 (= res!292434 (<= 0 from!502))))

(assert (=> d!225610 (= (apply!1716 (list!3023 ts!14) from!502) lt!280423)))

(declare-fun b!658806 () Bool)

(assert (=> b!658806 (= e!407362 (< from!502 (size!5630 (list!3023 ts!14))))))

(declare-fun b!658807 () Bool)

(declare-fun head!1372 (List!7097) Token!2562)

(assert (=> b!658807 (= e!407361 (head!1372 (list!3023 ts!14)))))

(declare-fun b!658808 () Bool)

(declare-fun tail!936 (List!7097) List!7097)

(assert (=> b!658808 (= e!407361 (apply!1716 (tail!936 (list!3023 ts!14)) (- from!502 1)))))

(assert (= (and d!225610 res!292434) b!658806))

(assert (= (and d!225610 c!118600) b!658807))

(assert (= (and d!225610 (not c!118600)) b!658808))

(assert (=> d!225610 m!924107))

(declare-fun m!924483 () Bool)

(assert (=> d!225610 m!924483))

(assert (=> b!658806 m!924107))

(assert (=> b!658806 m!924109))

(assert (=> b!658807 m!924107))

(declare-fun m!924485 () Bool)

(assert (=> b!658807 m!924485))

(assert (=> b!658808 m!924107))

(declare-fun m!924487 () Bool)

(assert (=> b!658808 m!924487))

(assert (=> b!658808 m!924487))

(declare-fun m!924489 () Bool)

(assert (=> b!658808 m!924489))

(assert (=> d!225494 d!225610))

(assert (=> d!225494 d!225602))

(declare-fun bm!42539 () Bool)

(declare-fun c!118616 () Bool)

(declare-fun c!118617 () Bool)

(assert (=> bm!42539 (= c!118616 c!118617)))

(declare-fun call!42544 () Token!2562)

(declare-fun e!407390 () Int)

(assert (=> bm!42539 (= call!42544 (apply!1717 (ite c!118617 (left!5704 (c!118506 ts!14)) (right!6034 (c!118506 ts!14))) e!407390))))

(declare-fun b!658855 () Bool)

(declare-fun e!407389 () Token!2562)

(declare-fun apply!1720 (IArray!4939 Int) Token!2562)

(assert (=> b!658855 (= e!407389 (apply!1720 (xs!5114 (c!118506 ts!14)) from!502))))

(declare-fun b!658856 () Bool)

(assert (=> b!658856 (= e!407390 (- from!502 (size!5631 (left!5704 (c!118506 ts!14)))))))

(declare-fun b!658857 () Bool)

(assert (=> b!658857 (= e!407390 from!502)))

(declare-fun b!658858 () Bool)

(declare-fun e!407391 () Token!2562)

(assert (=> b!658858 (= e!407389 e!407391)))

(declare-fun lt!280435 () Bool)

(declare-fun appendIndex!67 (List!7097 List!7097 Int) Bool)

(assert (=> b!658858 (= lt!280435 (appendIndex!67 (list!3028 (left!5704 (c!118506 ts!14))) (list!3028 (right!6034 (c!118506 ts!14))) from!502))))

(assert (=> b!658858 (= c!118617 (< from!502 (size!5631 (left!5704 (c!118506 ts!14)))))))

(declare-fun b!658859 () Bool)

(assert (=> b!658859 (= e!407391 call!42544)))

(declare-fun b!658860 () Bool)

(declare-fun e!407392 () Bool)

(assert (=> b!658860 (= e!407392 (< from!502 (size!5631 (c!118506 ts!14))))))

(declare-fun d!225618 () Bool)

(declare-fun lt!280436 () Token!2562)

(assert (=> d!225618 (= lt!280436 (apply!1716 (list!3028 (c!118506 ts!14)) from!502))))

(assert (=> d!225618 (= lt!280436 e!407389)))

(declare-fun c!118618 () Bool)

(assert (=> d!225618 (= c!118618 ((_ is Leaf!3695) (c!118506 ts!14)))))

(assert (=> d!225618 e!407392))

(declare-fun res!292450 () Bool)

(assert (=> d!225618 (=> (not res!292450) (not e!407392))))

(assert (=> d!225618 (= res!292450 (<= 0 from!502))))

(assert (=> d!225618 (= (apply!1717 (c!118506 ts!14) from!502) lt!280436)))

(declare-fun b!658854 () Bool)

(assert (=> b!658854 (= e!407391 call!42544)))

(assert (= (and d!225618 res!292450) b!658860))

(assert (= (and d!225618 c!118618) b!658855))

(assert (= (and d!225618 (not c!118618)) b!658858))

(assert (= (and b!658858 c!118617) b!658859))

(assert (= (and b!658858 (not c!118617)) b!658854))

(assert (= (or b!658859 b!658854) bm!42539))

(assert (= (and bm!42539 c!118616) b!658857))

(assert (= (and bm!42539 (not c!118616)) b!658856))

(declare-fun m!924535 () Bool)

(assert (=> b!658855 m!924535))

(declare-fun m!924537 () Bool)

(assert (=> b!658858 m!924537))

(declare-fun m!924539 () Bool)

(assert (=> b!658858 m!924539))

(assert (=> b!658858 m!924537))

(assert (=> b!658858 m!924539))

(declare-fun m!924541 () Bool)

(assert (=> b!658858 m!924541))

(declare-fun m!924543 () Bool)

(assert (=> b!658858 m!924543))

(assert (=> b!658860 m!924111))

(declare-fun m!924545 () Bool)

(assert (=> bm!42539 m!924545))

(assert (=> b!658856 m!924543))

(assert (=> d!225618 m!924443))

(assert (=> d!225618 m!924443))

(declare-fun m!924547 () Bool)

(assert (=> d!225618 m!924547))

(assert (=> d!225494 d!225618))

(declare-fun b!658883 () Bool)

(declare-fun e!407404 () Bool)

(declare-fun e!407403 () Bool)

(assert (=> b!658883 (= e!407404 e!407403)))

(declare-fun res!292466 () Bool)

(assert (=> b!658883 (=> (not res!292466) (not e!407403))))

(assert (=> b!658883 (= res!292466 (<= (- 1) (- (height!300 (left!5705 (c!118507 acc!218))) (height!300 (right!6035 (c!118507 acc!218))))))))

(declare-fun b!658884 () Bool)

(declare-fun res!292465 () Bool)

(assert (=> b!658884 (=> (not res!292465) (not e!407403))))

(assert (=> b!658884 (= res!292465 (isBalanced!650 (left!5705 (c!118507 acc!218))))))

(declare-fun b!658885 () Bool)

(declare-fun res!292470 () Bool)

(assert (=> b!658885 (=> (not res!292470) (not e!407403))))

(assert (=> b!658885 (= res!292470 (<= (- (height!300 (left!5705 (c!118507 acc!218))) (height!300 (right!6035 (c!118507 acc!218)))) 1))))

(declare-fun b!658887 () Bool)

(declare-fun res!292468 () Bool)

(assert (=> b!658887 (=> (not res!292468) (not e!407403))))

(declare-fun isEmpty!4774 (Conc!2470) Bool)

(assert (=> b!658887 (= res!292468 (not (isEmpty!4774 (left!5705 (c!118507 acc!218)))))))

(declare-fun b!658888 () Bool)

(assert (=> b!658888 (= e!407403 (not (isEmpty!4774 (right!6035 (c!118507 acc!218)))))))

(declare-fun d!225638 () Bool)

(declare-fun res!292467 () Bool)

(assert (=> d!225638 (=> res!292467 e!407404)))

(assert (=> d!225638 (= res!292467 (not ((_ is Node!2470) (c!118507 acc!218))))))

(assert (=> d!225638 (= (isBalanced!650 (c!118507 acc!218)) e!407404)))

(declare-fun b!658886 () Bool)

(declare-fun res!292469 () Bool)

(assert (=> b!658886 (=> (not res!292469) (not e!407403))))

(assert (=> b!658886 (= res!292469 (isBalanced!650 (right!6035 (c!118507 acc!218))))))

(assert (= (and d!225638 (not res!292467)) b!658883))

(assert (= (and b!658883 res!292466) b!658885))

(assert (= (and b!658885 res!292470) b!658884))

(assert (= (and b!658884 res!292465) b!658886))

(assert (= (and b!658886 res!292469) b!658887))

(assert (= (and b!658887 res!292468) b!658888))

(assert (=> b!658885 m!924451))

(assert (=> b!658885 m!924453))

(declare-fun m!924549 () Bool)

(assert (=> b!658888 m!924549))

(declare-fun m!924551 () Bool)

(assert (=> b!658886 m!924551))

(assert (=> b!658883 m!924451))

(assert (=> b!658883 m!924453))

(declare-fun m!924553 () Bool)

(assert (=> b!658884 m!924553))

(declare-fun m!924555 () Bool)

(assert (=> b!658887 m!924555))

(assert (=> d!225530 d!225638))

(declare-fun d!225640 () Bool)

(declare-fun res!292475 () Bool)

(declare-fun e!407409 () Bool)

(assert (=> d!225640 (=> (not res!292475) (not e!407409))))

(declare-fun list!3030 (IArray!4941) List!7098)

(assert (=> d!225640 (= res!292475 (<= (size!5632 (list!3030 (xs!5115 (c!118507 acc!218)))) 512))))

(assert (=> d!225640 (= (inv!9013 (c!118507 acc!218)) e!407409)))

(declare-fun b!658897 () Bool)

(declare-fun res!292476 () Bool)

(assert (=> b!658897 (=> (not res!292476) (not e!407409))))

(assert (=> b!658897 (= res!292476 (= (csize!5171 (c!118507 acc!218)) (size!5632 (list!3030 (xs!5115 (c!118507 acc!218))))))))

(declare-fun b!658898 () Bool)

(assert (=> b!658898 (= e!407409 (and (> (csize!5171 (c!118507 acc!218)) 0) (<= (csize!5171 (c!118507 acc!218)) 512)))))

(assert (= (and d!225640 res!292475) b!658897))

(assert (= (and b!658897 res!292476) b!658898))

(declare-fun m!924557 () Bool)

(assert (=> d!225640 m!924557))

(assert (=> d!225640 m!924557))

(declare-fun m!924559 () Bool)

(assert (=> d!225640 m!924559))

(assert (=> b!658897 m!924557))

(assert (=> b!658897 m!924557))

(assert (=> b!658897 m!924559))

(assert (=> b!658414 d!225640))

(declare-fun d!225642 () Bool)

(declare-fun res!292478 () Bool)

(declare-fun e!407414 () Bool)

(assert (=> d!225642 (=> res!292478 e!407414)))

(assert (=> d!225642 (= res!292478 ((_ is Nil!7084) (++!1894 (list!3021 acc!218) lt!280332)))))

(assert (=> d!225642 (= (forall!1879 (++!1894 (list!3021 acc!218) lt!280332) lambda!20377) e!407414)))

(declare-fun b!658906 () Bool)

(declare-fun e!407415 () Bool)

(assert (=> b!658906 (= e!407414 e!407415)))

(declare-fun res!292479 () Bool)

(assert (=> b!658906 (=> (not res!292479) (not e!407415))))

(assert (=> b!658906 (= res!292479 (dynLambda!3805 lambda!20377 (h!12485 (++!1894 (list!3021 acc!218) lt!280332))))))

(declare-fun b!658907 () Bool)

(assert (=> b!658907 (= e!407415 (forall!1879 (t!86059 (++!1894 (list!3021 acc!218) lt!280332)) lambda!20377))))

(assert (= (and d!225642 (not res!292478)) b!658906))

(assert (= (and b!658906 res!292479) b!658907))

(declare-fun b_lambda!25675 () Bool)

(assert (=> (not b_lambda!25675) (not b!658906)))

(declare-fun m!924561 () Bool)

(assert (=> b!658906 m!924561))

(declare-fun m!924563 () Bool)

(assert (=> b!658907 m!924563))

(assert (=> d!225524 d!225642))

(declare-fun b!658908 () Bool)

(declare-fun e!407416 () List!7098)

(assert (=> b!658908 (= e!407416 lt!280332)))

(declare-fun b!658910 () Bool)

(declare-fun res!292481 () Bool)

(declare-fun e!407417 () Bool)

(assert (=> b!658910 (=> (not res!292481) (not e!407417))))

(declare-fun lt!280443 () List!7098)

(assert (=> b!658910 (= res!292481 (= (size!5632 lt!280443) (+ (size!5632 (list!3021 acc!218)) (size!5632 lt!280332))))))

(declare-fun b!658911 () Bool)

(assert (=> b!658911 (= e!407417 (or (not (= lt!280332 Nil!7084)) (= lt!280443 (list!3021 acc!218))))))

(declare-fun d!225644 () Bool)

(assert (=> d!225644 e!407417))

(declare-fun res!292480 () Bool)

(assert (=> d!225644 (=> (not res!292480) (not e!407417))))

(assert (=> d!225644 (= res!292480 (= (content!1172 lt!280443) ((_ map or) (content!1172 (list!3021 acc!218)) (content!1172 lt!280332))))))

(assert (=> d!225644 (= lt!280443 e!407416)))

(declare-fun c!118628 () Bool)

(assert (=> d!225644 (= c!118628 ((_ is Nil!7084) (list!3021 acc!218)))))

(assert (=> d!225644 (= (++!1894 (list!3021 acc!218) lt!280332) lt!280443)))

(declare-fun b!658909 () Bool)

(assert (=> b!658909 (= e!407416 (Cons!7084 (h!12485 (list!3021 acc!218)) (++!1894 (t!86059 (list!3021 acc!218)) lt!280332)))))

(assert (= (and d!225644 c!118628) b!658908))

(assert (= (and d!225644 (not c!118628)) b!658909))

(assert (= (and d!225644 res!292480) b!658910))

(assert (= (and b!658910 res!292481) b!658911))

(declare-fun m!924575 () Bool)

(assert (=> b!658910 m!924575))

(assert (=> b!658910 m!924075))

(assert (=> b!658910 m!924393))

(declare-fun m!924577 () Bool)

(assert (=> b!658910 m!924577))

(declare-fun m!924579 () Bool)

(assert (=> d!225644 m!924579))

(assert (=> d!225644 m!924075))

(assert (=> d!225644 m!924399))

(declare-fun m!924583 () Bool)

(assert (=> d!225644 m!924583))

(declare-fun m!924585 () Bool)

(assert (=> b!658909 m!924585))

(assert (=> d!225524 d!225644))

(declare-fun d!225648 () Bool)

(assert (=> d!225648 (forall!1879 (++!1894 (list!3021 acc!218) lt!280332) lambda!20377)))

(assert (=> d!225648 true))

(declare-fun _$78!224 () Unit!12303)

(assert (=> d!225648 (= (choose!4670 (list!3021 acc!218) lt!280332 lambda!20377) _$78!224)))

(declare-fun bs!94318 () Bool)

(assert (= bs!94318 d!225648))

(assert (=> bs!94318 m!924075))

(assert (=> bs!94318 m!924207))

(assert (=> bs!94318 m!924207))

(assert (=> bs!94318 m!924211))

(assert (=> d!225524 d!225648))

(assert (=> d!225524 d!225560))

(declare-fun d!225650 () Bool)

(declare-fun res!292482 () Bool)

(declare-fun e!407418 () Bool)

(assert (=> d!225650 (=> res!292482 e!407418)))

(assert (=> d!225650 (= res!292482 ((_ is Nil!7084) (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332)))))))

(assert (=> d!225650 (= (forall!1879 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))) lambda!20377) e!407418)))

(declare-fun b!658912 () Bool)

(declare-fun e!407419 () Bool)

(assert (=> b!658912 (= e!407418 e!407419)))

(declare-fun res!292483 () Bool)

(assert (=> b!658912 (=> (not res!292483) (not e!407419))))

(assert (=> b!658912 (= res!292483 (dynLambda!3805 lambda!20377 (h!12485 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))))))))

(declare-fun b!658913 () Bool)

(assert (=> b!658913 (= e!407419 (forall!1879 (t!86059 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) lambda!20377))))

(assert (= (and d!225650 (not res!292482)) b!658912))

(assert (= (and b!658912 res!292483) b!658913))

(declare-fun b_lambda!25677 () Bool)

(assert (=> (not b_lambda!25677) (not b!658912)))

(declare-fun m!924587 () Bool)

(assert (=> b!658912 m!924587))

(declare-fun m!924589 () Bool)

(assert (=> b!658913 m!924589))

(assert (=> d!225518 d!225650))

(declare-fun d!225652 () Bool)

(assert (=> d!225652 (= (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))) (list!3025 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))))))

(declare-fun bs!94319 () Bool)

(assert (= bs!94319 d!225652))

(declare-fun m!924591 () Bool)

(assert (=> bs!94319 m!924591))

(assert (=> d!225518 d!225652))

(declare-fun b!658915 () Bool)

(declare-fun e!407422 () Bool)

(assert (=> b!658915 (= e!407422 (forall!1881 (xs!5115 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) lambda!20377))))

(declare-fun b!658916 () Bool)

(declare-fun e!407421 () Bool)

(assert (=> b!658916 (= e!407422 e!407421)))

(declare-fun lt!280445 () Unit!12303)

(assert (=> b!658916 (= lt!280445 (lemmaForallConcat!53 (list!3025 (left!5705 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332))))) (list!3025 (right!6035 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332))))) lambda!20377))))

(declare-fun res!292485 () Bool)

(assert (=> b!658916 (= res!292485 (forall!1880 (left!5705 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) lambda!20377))))

(assert (=> b!658916 (=> (not res!292485) (not e!407421))))

(declare-fun b!658917 () Bool)

(assert (=> b!658917 (= e!407421 (forall!1880 (right!6035 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) lambda!20377))))

(declare-fun b!658914 () Bool)

(declare-fun e!407420 () Bool)

(assert (=> b!658914 (= e!407420 e!407422)))

(declare-fun c!118630 () Bool)

(assert (=> b!658914 (= c!118630 ((_ is Leaf!3696) (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))))))

(declare-fun d!225654 () Bool)

(declare-fun lt!280444 () Bool)

(assert (=> d!225654 (= lt!280444 (forall!1879 (list!3025 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) lambda!20377))))

(assert (=> d!225654 (= lt!280444 e!407420)))

(declare-fun res!292484 () Bool)

(assert (=> d!225654 (=> res!292484 e!407420)))

(assert (=> d!225654 (= res!292484 ((_ is Empty!2470) (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332)))))))

(assert (=> d!225654 (= (forall!1880 (c!118507 (++!1890 acc!218 (seqFromList!1462 lt!280332))) lambda!20377) lt!280444)))

(assert (= (and d!225654 (not res!292484)) b!658914))

(assert (= (and b!658914 c!118630) b!658915))

(assert (= (and b!658914 (not c!118630)) b!658916))

(assert (= (and b!658916 res!292485) b!658917))

(declare-fun m!924593 () Bool)

(assert (=> b!658915 m!924593))

(declare-fun m!924595 () Bool)

(assert (=> b!658916 m!924595))

(declare-fun m!924597 () Bool)

(assert (=> b!658916 m!924597))

(assert (=> b!658916 m!924595))

(assert (=> b!658916 m!924597))

(declare-fun m!924599 () Bool)

(assert (=> b!658916 m!924599))

(declare-fun m!924601 () Bool)

(assert (=> b!658916 m!924601))

(declare-fun m!924603 () Bool)

(assert (=> b!658917 m!924603))

(assert (=> d!225654 m!924591))

(assert (=> d!225654 m!924591))

(declare-fun m!924605 () Bool)

(assert (=> d!225654 m!924605))

(assert (=> d!225518 d!225654))

(declare-fun d!225656 () Bool)

(declare-fun c!118631 () Bool)

(assert (=> d!225656 (= c!118631 ((_ is Node!2469) (left!5704 (c!118506 ts!14))))))

(declare-fun e!407425 () Bool)

(assert (=> d!225656 (= (inv!9004 (left!5704 (c!118506 ts!14))) e!407425)))

(declare-fun b!658920 () Bool)

(assert (=> b!658920 (= e!407425 (inv!9010 (left!5704 (c!118506 ts!14))))))

(declare-fun b!658921 () Bool)

(declare-fun e!407426 () Bool)

(assert (=> b!658921 (= e!407425 e!407426)))

(declare-fun res!292488 () Bool)

(assert (=> b!658921 (= res!292488 (not ((_ is Leaf!3695) (left!5704 (c!118506 ts!14)))))))

(assert (=> b!658921 (=> res!292488 e!407426)))

(declare-fun b!658922 () Bool)

(assert (=> b!658922 (= e!407426 (inv!9011 (left!5704 (c!118506 ts!14))))))

(assert (= (and d!225656 c!118631) b!658920))

(assert (= (and d!225656 (not c!118631)) b!658921))

(assert (= (and b!658921 (not res!292488)) b!658922))

(declare-fun m!924607 () Bool)

(assert (=> b!658920 m!924607))

(declare-fun m!924609 () Bool)

(assert (=> b!658922 m!924609))

(assert (=> b!658469 d!225656))

(declare-fun d!225658 () Bool)

(declare-fun c!118632 () Bool)

(assert (=> d!225658 (= c!118632 ((_ is Node!2469) (right!6034 (c!118506 ts!14))))))

(declare-fun e!407427 () Bool)

(assert (=> d!225658 (= (inv!9004 (right!6034 (c!118506 ts!14))) e!407427)))

(declare-fun b!658923 () Bool)

(assert (=> b!658923 (= e!407427 (inv!9010 (right!6034 (c!118506 ts!14))))))

(declare-fun b!658924 () Bool)

(declare-fun e!407428 () Bool)

(assert (=> b!658924 (= e!407427 e!407428)))

(declare-fun res!292489 () Bool)

(assert (=> b!658924 (= res!292489 (not ((_ is Leaf!3695) (right!6034 (c!118506 ts!14)))))))

(assert (=> b!658924 (=> res!292489 e!407428)))

(declare-fun b!658925 () Bool)

(assert (=> b!658925 (= e!407428 (inv!9011 (right!6034 (c!118506 ts!14))))))

(assert (= (and d!225658 c!118632) b!658923))

(assert (= (and d!225658 (not c!118632)) b!658924))

(assert (= (and b!658924 (not res!292489)) b!658925))

(declare-fun m!924611 () Bool)

(assert (=> b!658923 m!924611))

(declare-fun m!924613 () Bool)

(assert (=> b!658925 m!924613))

(assert (=> b!658469 d!225658))

(declare-fun d!225660 () Bool)

(assert (=> d!225660 (= (inv!9016 (xs!5114 (c!118506 ts!14))) (<= (size!5630 (innerList!2527 (xs!5114 (c!118506 ts!14)))) 2147483647))))

(declare-fun bs!94320 () Bool)

(assert (= bs!94320 d!225660))

(declare-fun m!924621 () Bool)

(assert (=> bs!94320 m!924621))

(assert (=> b!658470 d!225660))

(declare-fun d!225664 () Bool)

(declare-fun res!292506 () Bool)

(declare-fun e!407435 () Bool)

(assert (=> d!225664 (=> (not res!292506) (not e!407435))))

(assert (=> d!225664 (= res!292506 (= (csize!5168 (c!118506 ts!14)) (+ (size!5631 (left!5704 (c!118506 ts!14))) (size!5631 (right!6034 (c!118506 ts!14))))))))

(assert (=> d!225664 (= (inv!9010 (c!118506 ts!14)) e!407435)))

(declare-fun b!658942 () Bool)

(declare-fun res!292507 () Bool)

(assert (=> b!658942 (=> (not res!292507) (not e!407435))))

(assert (=> b!658942 (= res!292507 (and (not (= (left!5704 (c!118506 ts!14)) Empty!2469)) (not (= (right!6034 (c!118506 ts!14)) Empty!2469))))))

(declare-fun b!658943 () Bool)

(declare-fun res!292508 () Bool)

(assert (=> b!658943 (=> (not res!292508) (not e!407435))))

(assert (=> b!658943 (= res!292508 (= (cheight!2680 (c!118506 ts!14)) (+ (max!0 (height!302 (left!5704 (c!118506 ts!14))) (height!302 (right!6034 (c!118506 ts!14)))) 1)))))

(declare-fun b!658944 () Bool)

(assert (=> b!658944 (= e!407435 (<= 0 (cheight!2680 (c!118506 ts!14))))))

(assert (= (and d!225664 res!292506) b!658942))

(assert (= (and b!658942 res!292507) b!658943))

(assert (= (and b!658943 res!292508) b!658944))

(assert (=> d!225664 m!924543))

(declare-fun m!924633 () Bool)

(assert (=> d!225664 m!924633))

(assert (=> b!658943 m!924375))

(assert (=> b!658943 m!924377))

(assert (=> b!658943 m!924375))

(assert (=> b!658943 m!924377))

(declare-fun m!924639 () Bool)

(assert (=> b!658943 m!924639))

(assert (=> b!658391 d!225664))

(declare-fun d!225672 () Bool)

(declare-fun res!292521 () Bool)

(declare-fun e!407445 () Bool)

(assert (=> d!225672 (=> (not res!292521) (not e!407445))))

(declare-fun list!3031 (IArray!4939) List!7097)

(assert (=> d!225672 (= res!292521 (<= (size!5630 (list!3031 (xs!5114 (c!118506 ts!14)))) 512))))

(assert (=> d!225672 (= (inv!9011 (c!118506 ts!14)) e!407445)))

(declare-fun b!658961 () Bool)

(declare-fun res!292522 () Bool)

(assert (=> b!658961 (=> (not res!292522) (not e!407445))))

(assert (=> b!658961 (= res!292522 (= (csize!5169 (c!118506 ts!14)) (size!5630 (list!3031 (xs!5114 (c!118506 ts!14))))))))

(declare-fun b!658962 () Bool)

(assert (=> b!658962 (= e!407445 (and (> (csize!5169 (c!118506 ts!14)) 0) (<= (csize!5169 (c!118506 ts!14)) 512)))))

(assert (= (and d!225672 res!292521) b!658961))

(assert (= (and b!658961 res!292522) b!658962))

(declare-fun m!924643 () Bool)

(assert (=> d!225672 m!924643))

(assert (=> d!225672 m!924643))

(declare-fun m!924645 () Bool)

(assert (=> d!225672 m!924645))

(assert (=> b!658961 m!924643))

(assert (=> b!658961 m!924643))

(assert (=> b!658961 m!924645))

(assert (=> b!658393 d!225672))

(declare-fun b!659011 () Bool)

(declare-fun e!407501 () Bool)

(declare-fun e!407502 () Bool)

(assert (=> b!659011 (= e!407501 e!407502)))

(declare-fun res!292549 () Bool)

(assert (=> b!659011 (=> (not res!292549) (not e!407502))))

(declare-fun appendAssoc!36 (List!7098 List!7098 List!7098) Bool)

(assert (=> b!659011 (= res!292549 (appendAssoc!36 (list!3025 (c!118507 acc!218)) (list!3025 (left!5705 (c!118507 (seqFromList!1462 lt!280332)))) (list!3025 (right!6035 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!659012 () Bool)

(declare-fun e!407497 () Bool)

(assert (=> b!659012 (= e!407502 e!407497)))

(declare-fun res!292551 () Bool)

(assert (=> b!659012 (=> res!292551 e!407497)))

(assert (=> b!659012 (= res!292551 (not ((_ is Node!2470) (left!5705 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!659013 () Bool)

(declare-fun e!407498 () Bool)

(assert (=> b!659013 (= e!407498 e!407501)))

(declare-fun res!292550 () Bool)

(assert (=> b!659013 (=> res!292550 e!407501)))

(assert (=> b!659013 (= res!292550 (not ((_ is Node!2470) (c!118507 (seqFromList!1462 lt!280332)))))))

(declare-fun b!659014 () Bool)

(declare-fun e!407499 () Bool)

(assert (=> b!659014 (= e!407499 (appendAssoc!36 (list!3025 (left!5705 (c!118507 acc!218))) (list!3025 (left!5705 (right!6035 (c!118507 acc!218)))) (++!1894 (list!3025 (right!6035 (right!6035 (c!118507 acc!218)))) (list!3025 (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun d!225676 () Bool)

(assert (=> d!225676 e!407498))

(declare-fun res!292552 () Bool)

(assert (=> d!225676 (=> (not res!292552) (not e!407498))))

(declare-fun e!407503 () Bool)

(assert (=> d!225676 (= res!292552 e!407503)))

(declare-fun res!292546 () Bool)

(assert (=> d!225676 (=> res!292546 e!407503)))

(assert (=> d!225676 (= res!292546 (not ((_ is Node!2470) (c!118507 acc!218))))))

(assert (=> d!225676 (= (appendAssocInst!129 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))) true)))

(declare-fun b!659015 () Bool)

(declare-fun e!407495 () Bool)

(assert (=> b!659015 (= e!407503 e!407495)))

(declare-fun res!292545 () Bool)

(assert (=> b!659015 (=> (not res!292545) (not e!407495))))

(assert (=> b!659015 (= res!292545 (appendAssoc!36 (list!3025 (left!5705 (c!118507 acc!218))) (list!3025 (right!6035 (c!118507 acc!218))) (list!3025 (c!118507 (seqFromList!1462 lt!280332)))))))

(declare-fun b!659016 () Bool)

(declare-fun e!407496 () Bool)

(assert (=> b!659016 (= e!407497 e!407496)))

(declare-fun res!292553 () Bool)

(assert (=> b!659016 (=> (not res!292553) (not e!407496))))

(assert (=> b!659016 (= res!292553 (appendAssoc!36 (list!3025 (c!118507 acc!218)) (list!3025 (left!5705 (left!5705 (c!118507 (seqFromList!1462 lt!280332))))) (list!3025 (right!6035 (left!5705 (c!118507 (seqFromList!1462 lt!280332)))))))))

(declare-fun b!659017 () Bool)

(declare-fun e!407500 () Bool)

(assert (=> b!659017 (= e!407495 e!407500)))

(declare-fun res!292547 () Bool)

(assert (=> b!659017 (=> res!292547 e!407500)))

(assert (=> b!659017 (= res!292547 (not ((_ is Node!2470) (right!6035 (c!118507 acc!218)))))))

(declare-fun b!659018 () Bool)

(assert (=> b!659018 (= e!407500 e!407499)))

(declare-fun res!292548 () Bool)

(assert (=> b!659018 (=> (not res!292548) (not e!407499))))

(assert (=> b!659018 (= res!292548 (appendAssoc!36 (list!3025 (left!5705 (right!6035 (c!118507 acc!218)))) (list!3025 (right!6035 (right!6035 (c!118507 acc!218)))) (list!3025 (c!118507 (seqFromList!1462 lt!280332)))))))

(declare-fun b!659019 () Bool)

(assert (=> b!659019 (= e!407496 (appendAssoc!36 (++!1894 (list!3025 (c!118507 acc!218)) (list!3025 (left!5705 (left!5705 (c!118507 (seqFromList!1462 lt!280332)))))) (list!3025 (right!6035 (left!5705 (c!118507 (seqFromList!1462 lt!280332))))) (list!3025 (right!6035 (c!118507 (seqFromList!1462 lt!280332))))))))

(assert (= (and d!225676 (not res!292546)) b!659015))

(assert (= (and b!659015 res!292545) b!659017))

(assert (= (and b!659017 (not res!292547)) b!659018))

(assert (= (and b!659018 res!292548) b!659014))

(assert (= (and d!225676 res!292552) b!659013))

(assert (= (and b!659013 (not res!292550)) b!659011))

(assert (= (and b!659011 res!292549) b!659012))

(assert (= (and b!659012 (not res!292551)) b!659016))

(assert (= (and b!659016 res!292553) b!659019))

(declare-fun m!924701 () Bool)

(assert (=> b!659014 m!924701))

(declare-fun m!924703 () Bool)

(assert (=> b!659014 m!924703))

(assert (=> b!659014 m!924321))

(declare-fun m!924705 () Bool)

(assert (=> b!659014 m!924705))

(assert (=> b!659014 m!924335))

(assert (=> b!659014 m!924321))

(assert (=> b!659014 m!924335))

(assert (=> b!659014 m!924701))

(assert (=> b!659014 m!924705))

(declare-fun m!924707 () Bool)

(assert (=> b!659014 m!924707))

(assert (=> b!659014 m!924703))

(declare-fun m!924709 () Bool)

(assert (=> b!659019 m!924709))

(declare-fun m!924711 () Bool)

(assert (=> b!659019 m!924711))

(declare-fun m!924713 () Bool)

(assert (=> b!659019 m!924713))

(declare-fun m!924715 () Bool)

(assert (=> b!659019 m!924715))

(assert (=> b!659019 m!924221))

(declare-fun m!924717 () Bool)

(assert (=> b!659019 m!924717))

(assert (=> b!659019 m!924709))

(assert (=> b!659019 m!924717))

(assert (=> b!659019 m!924221))

(assert (=> b!659019 m!924711))

(assert (=> b!659019 m!924713))

(assert (=> b!659011 m!924221))

(declare-fun m!924719 () Bool)

(assert (=> b!659011 m!924719))

(assert (=> b!659011 m!924713))

(assert (=> b!659011 m!924221))

(assert (=> b!659011 m!924719))

(assert (=> b!659011 m!924713))

(declare-fun m!924721 () Bool)

(assert (=> b!659011 m!924721))

(assert (=> b!659015 m!924335))

(assert (=> b!659015 m!924337))

(assert (=> b!659015 m!924321))

(assert (=> b!659015 m!924335))

(assert (=> b!659015 m!924337))

(assert (=> b!659015 m!924321))

(declare-fun m!924723 () Bool)

(assert (=> b!659015 m!924723))

(assert (=> b!659018 m!924701))

(assert (=> b!659018 m!924703))

(assert (=> b!659018 m!924321))

(assert (=> b!659018 m!924701))

(assert (=> b!659018 m!924703))

(assert (=> b!659018 m!924321))

(declare-fun m!924725 () Bool)

(assert (=> b!659018 m!924725))

(assert (=> b!659016 m!924221))

(assert (=> b!659016 m!924717))

(assert (=> b!659016 m!924711))

(assert (=> b!659016 m!924221))

(assert (=> b!659016 m!924717))

(assert (=> b!659016 m!924711))

(declare-fun m!924727 () Bool)

(assert (=> b!659016 m!924727))

(assert (=> d!225504 d!225676))

(assert (=> d!225504 d!225550))

(declare-fun b!659020 () Bool)

(declare-fun e!407505 () Bool)

(declare-fun e!407504 () Bool)

(assert (=> b!659020 (= e!407505 e!407504)))

(declare-fun res!292555 () Bool)

(assert (=> b!659020 (=> (not res!292555) (not e!407504))))

(assert (=> b!659020 (= res!292555 (<= (- 1) (- (height!300 (left!5705 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))) (height!300 (right!6035 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))))))

(declare-fun b!659021 () Bool)

(declare-fun res!292554 () Bool)

(assert (=> b!659021 (=> (not res!292554) (not e!407504))))

(assert (=> b!659021 (= res!292554 (isBalanced!650 (left!5705 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))))

(declare-fun b!659022 () Bool)

(declare-fun res!292559 () Bool)

(assert (=> b!659022 (=> (not res!292559) (not e!407504))))

(assert (=> b!659022 (= res!292559 (<= (- (height!300 (left!5705 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))) (height!300 (right!6035 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))) 1))))

(declare-fun b!659024 () Bool)

(declare-fun res!292557 () Bool)

(assert (=> b!659024 (=> (not res!292557) (not e!407504))))

(assert (=> b!659024 (= res!292557 (not (isEmpty!4774 (left!5705 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))))))

(declare-fun b!659025 () Bool)

(assert (=> b!659025 (= e!407504 (not (isEmpty!4774 (right!6035 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))))))))

(declare-fun d!225690 () Bool)

(declare-fun res!292556 () Bool)

(assert (=> d!225690 (=> res!292556 e!407505)))

(assert (=> d!225690 (= res!292556 (not ((_ is Node!2470) (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))))

(assert (=> d!225690 (= (isBalanced!650 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332)))) e!407505)))

(declare-fun b!659023 () Bool)

(declare-fun res!292558 () Bool)

(assert (=> b!659023 (=> (not res!292558) (not e!407504))))

(assert (=> b!659023 (= res!292558 (isBalanced!650 (right!6035 (++!1893 (c!118507 acc!218) (c!118507 (seqFromList!1462 lt!280332))))))))

(assert (= (and d!225690 (not res!292556)) b!659020))

(assert (= (and b!659020 res!292555) b!659022))

(assert (= (and b!659022 res!292559) b!659021))

(assert (= (and b!659021 res!292554) b!659023))

(assert (= (and b!659023 res!292558) b!659024))

(assert (= (and b!659024 res!292557) b!659025))

(declare-fun m!924729 () Bool)

(assert (=> b!659022 m!924729))

(declare-fun m!924731 () Bool)

(assert (=> b!659022 m!924731))

(declare-fun m!924733 () Bool)

(assert (=> b!659025 m!924733))

(declare-fun m!924735 () Bool)

(assert (=> b!659023 m!924735))

(assert (=> b!659020 m!924729))

(assert (=> b!659020 m!924731))

(declare-fun m!924737 () Bool)

(assert (=> b!659021 m!924737))

(declare-fun m!924739 () Bool)

(assert (=> b!659024 m!924739))

(assert (=> b!658435 d!225690))

(assert (=> b!658435 d!225550))

(declare-fun d!225692 () Bool)

(assert (=> d!225692 true))

(assert (=> d!225692 true))

(declare-fun res!292560 () Bool)

(assert (=> d!225692 (= (choose!511 lt!280331 RightBrace!1454) res!292560)))

(assert (=> d!225484 d!225692))

(declare-fun b!659036 () Bool)

(declare-fun e!407511 () List!7098)

(assert (=> b!659036 (= e!407511 (list!3030 (xs!5115 (c!118507 acc!218))))))

(declare-fun b!659034 () Bool)

(declare-fun e!407510 () List!7098)

(assert (=> b!659034 (= e!407510 Nil!7084)))

(declare-fun b!659037 () Bool)

(assert (=> b!659037 (= e!407511 (++!1894 (list!3025 (left!5705 (c!118507 acc!218))) (list!3025 (right!6035 (c!118507 acc!218)))))))

(declare-fun b!659035 () Bool)

(assert (=> b!659035 (= e!407510 e!407511)))

(declare-fun c!118641 () Bool)

(assert (=> b!659035 (= c!118641 ((_ is Leaf!3696) (c!118507 acc!218)))))

(declare-fun d!225694 () Bool)

(declare-fun c!118640 () Bool)

(assert (=> d!225694 (= c!118640 ((_ is Empty!2470) (c!118507 acc!218)))))

(assert (=> d!225694 (= (list!3025 (c!118507 acc!218)) e!407510)))

(assert (= (and d!225694 c!118640) b!659034))

(assert (= (and d!225694 (not c!118640)) b!659035))

(assert (= (and b!659035 c!118641) b!659036))

(assert (= (and b!659035 (not c!118641)) b!659037))

(assert (=> b!659036 m!924557))

(assert (=> b!659037 m!924335))

(assert (=> b!659037 m!924337))

(assert (=> b!659037 m!924335))

(assert (=> b!659037 m!924337))

(declare-fun m!924741 () Bool)

(assert (=> b!659037 m!924741))

(assert (=> d!225526 d!225694))

(declare-fun b!659038 () Bool)

(declare-fun e!407512 () Bool)

(declare-fun tp!200894 () Bool)

(declare-fun tp!200893 () Bool)

(assert (=> b!659038 (= e!407512 (and (inv!9005 (left!5705 (left!5705 (c!118507 acc!218)))) tp!200893 (inv!9005 (right!6035 (left!5705 (c!118507 acc!218)))) tp!200894))))

(declare-fun b!659039 () Bool)

(assert (=> b!659039 (= e!407512 (inv!9017 (xs!5115 (left!5705 (c!118507 acc!218)))))))

(assert (=> b!658478 (= tp!200872 (and (inv!9005 (left!5705 (c!118507 acc!218))) e!407512))))

(assert (= (and b!658478 ((_ is Node!2470) (left!5705 (c!118507 acc!218)))) b!659038))

(assert (= (and b!658478 ((_ is Leaf!3696) (left!5705 (c!118507 acc!218)))) b!659039))

(declare-fun m!924743 () Bool)

(assert (=> b!659038 m!924743))

(declare-fun m!924745 () Bool)

(assert (=> b!659038 m!924745))

(declare-fun m!924747 () Bool)

(assert (=> b!659039 m!924747))

(assert (=> b!658478 m!924241))

(declare-fun tp!200896 () Bool)

(declare-fun b!659040 () Bool)

(declare-fun tp!200895 () Bool)

(declare-fun e!407514 () Bool)

(assert (=> b!659040 (= e!407514 (and (inv!9005 (left!5705 (right!6035 (c!118507 acc!218)))) tp!200895 (inv!9005 (right!6035 (right!6035 (c!118507 acc!218)))) tp!200896))))

(declare-fun b!659041 () Bool)

(assert (=> b!659041 (= e!407514 (inv!9017 (xs!5115 (right!6035 (c!118507 acc!218)))))))

(assert (=> b!658478 (= tp!200873 (and (inv!9005 (right!6035 (c!118507 acc!218))) e!407514))))

(assert (= (and b!658478 ((_ is Node!2470) (right!6035 (c!118507 acc!218)))) b!659040))

(assert (= (and b!658478 ((_ is Leaf!3696) (right!6035 (c!118507 acc!218)))) b!659041))

(declare-fun m!924749 () Bool)

(assert (=> b!659040 m!924749))

(declare-fun m!924751 () Bool)

(assert (=> b!659040 m!924751))

(declare-fun m!924753 () Bool)

(assert (=> b!659041 m!924753))

(assert (=> b!658478 m!924243))

(declare-fun b!659055 () Bool)

(declare-fun b_free!18989 () Bool)

(declare-fun b_next!19053 () Bool)

(assert (=> b!659055 (= b_free!18989 (not b_next!19053))))

(declare-fun tp!200905 () Bool)

(declare-fun b_and!62783 () Bool)

(assert (=> b!659055 (= tp!200905 b_and!62783)))

(declare-fun b_free!18991 () Bool)

(declare-fun b_next!19055 () Bool)

(assert (=> b!659055 (= b_free!18991 (not b_next!19055))))

(declare-fun tp!200903 () Bool)

(declare-fun b_and!62785 () Bool)

(assert (=> b!659055 (= tp!200903 b_and!62785)))

(declare-fun e!407531 () Bool)

(assert (=> b!658471 (= tp!200866 e!407531)))

(declare-fun e!407532 () Bool)

(assert (=> b!659055 (= e!407532 (and tp!200905 tp!200903))))

(declare-fun tp!200904 () Bool)

(declare-fun b!659052 () Bool)

(declare-fun e!407530 () Bool)

(declare-fun inv!9018 (Token!2562) Bool)

(assert (=> b!659052 (= e!407531 (and (inv!9018 (h!12484 (innerList!2527 (xs!5114 (c!118506 ts!14))))) e!407530 tp!200904))))

(declare-fun b!659054 () Bool)

(declare-fun e!407529 () Bool)

(declare-fun inv!8997 (String!9008) Bool)

(declare-fun inv!9019 (TokenValueInjection!2660) Bool)

(assert (=> b!659054 (= e!407529 (and (inv!8997 (tag!1682 (rule!2215 (h!12484 (innerList!2527 (xs!5114 (c!118506 ts!14))))))) (inv!9019 (transformation!1420 (rule!2215 (h!12484 (innerList!2527 (xs!5114 (c!118506 ts!14))))))) e!407532))))

(declare-fun b!659053 () Bool)

(declare-fun inv!21 (TokenValue!1454) Bool)

(assert (=> b!659053 (= e!407530 (and (inv!21 (value!45621 (h!12484 (innerList!2527 (xs!5114 (c!118506 ts!14)))))) e!407529))))

(assert (= b!659054 b!659055))

(assert (= b!659053 b!659054))

(assert (= b!659052 b!659053))

(assert (= (and b!658471 ((_ is Cons!7083) (innerList!2527 (xs!5114 (c!118506 ts!14))))) b!659052))

(declare-fun m!924755 () Bool)

(assert (=> b!659052 m!924755))

(declare-fun m!924757 () Bool)

(assert (=> b!659054 m!924757))

(declare-fun m!924759 () Bool)

(assert (=> b!659054 m!924759))

(declare-fun m!924761 () Bool)

(assert (=> b!659053 m!924761))

(declare-fun tp!200908 () Bool)

(declare-fun e!407534 () Bool)

(declare-fun b!659056 () Bool)

(declare-fun tp!200906 () Bool)

(assert (=> b!659056 (= e!407534 (and (inv!9004 (left!5704 (left!5704 (c!118506 ts!14)))) tp!200908 (inv!9004 (right!6034 (left!5704 (c!118506 ts!14)))) tp!200906))))

(declare-fun b!659058 () Bool)

(declare-fun e!407535 () Bool)

(declare-fun tp!200907 () Bool)

(assert (=> b!659058 (= e!407535 tp!200907)))

(declare-fun b!659057 () Bool)

(assert (=> b!659057 (= e!407534 (and (inv!9016 (xs!5114 (left!5704 (c!118506 ts!14)))) e!407535))))

(assert (=> b!658469 (= tp!200867 (and (inv!9004 (left!5704 (c!118506 ts!14))) e!407534))))

(assert (= (and b!658469 ((_ is Node!2469) (left!5704 (c!118506 ts!14)))) b!659056))

(assert (= b!659057 b!659058))

(assert (= (and b!658469 ((_ is Leaf!3695) (left!5704 (c!118506 ts!14)))) b!659057))

(declare-fun m!924763 () Bool)

(assert (=> b!659056 m!924763))

(declare-fun m!924765 () Bool)

(assert (=> b!659056 m!924765))

(declare-fun m!924767 () Bool)

(assert (=> b!659057 m!924767))

(assert (=> b!658469 m!924235))

(declare-fun tp!200909 () Bool)

(declare-fun e!407536 () Bool)

(declare-fun tp!200911 () Bool)

(declare-fun b!659059 () Bool)

(assert (=> b!659059 (= e!407536 (and (inv!9004 (left!5704 (right!6034 (c!118506 ts!14)))) tp!200911 (inv!9004 (right!6034 (right!6034 (c!118506 ts!14)))) tp!200909))))

(declare-fun b!659061 () Bool)

(declare-fun e!407537 () Bool)

(declare-fun tp!200910 () Bool)

(assert (=> b!659061 (= e!407537 tp!200910)))

(declare-fun b!659060 () Bool)

(assert (=> b!659060 (= e!407536 (and (inv!9016 (xs!5114 (right!6034 (c!118506 ts!14)))) e!407537))))

(assert (=> b!658469 (= tp!200865 (and (inv!9004 (right!6034 (c!118506 ts!14))) e!407536))))

(assert (= (and b!658469 ((_ is Node!2469) (right!6034 (c!118506 ts!14)))) b!659059))

(assert (= b!659060 b!659061))

(assert (= (and b!658469 ((_ is Leaf!3695) (right!6034 (c!118506 ts!14)))) b!659060))

(declare-fun m!924769 () Bool)

(assert (=> b!659059 m!924769))

(declare-fun m!924771 () Bool)

(assert (=> b!659059 m!924771))

(declare-fun m!924773 () Bool)

(assert (=> b!659060 m!924773))

(assert (=> b!658469 m!924237))

(declare-fun b_lambda!25687 () Bool)

(assert (= b_lambda!25669 (or b!658370 b_lambda!25687)))

(declare-fun bs!94326 () Bool)

(declare-fun d!225696 () Bool)

(assert (= bs!94326 (and d!225696 b!658370)))

(assert (=> bs!94326 (= (dynLambda!3805 lambda!20377 (h!12485 (list!3021 acc!218))) (and (<= 0 (h!12485 (list!3021 acc!218))) (< (h!12485 (list!3021 acc!218)) size!101)))))

(assert (=> b!658646 d!225696))

(declare-fun b_lambda!25689 () Bool)

(assert (= b_lambda!25677 (or b!658370 b_lambda!25689)))

(declare-fun bs!94327 () Bool)

(declare-fun d!225698 () Bool)

(assert (= bs!94327 (and d!225698 b!658370)))

(assert (=> bs!94327 (= (dynLambda!3805 lambda!20377 (h!12485 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))))) (and (<= 0 (h!12485 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332))))) (< (h!12485 (list!3021 (++!1890 acc!218 (seqFromList!1462 lt!280332)))) size!101)))))

(assert (=> b!658912 d!225698))

(declare-fun b_lambda!25691 () Bool)

(assert (= b_lambda!25675 (or b!658370 b_lambda!25691)))

(declare-fun bs!94328 () Bool)

(declare-fun d!225700 () Bool)

(assert (= bs!94328 (and d!225700 b!658370)))

(assert (=> bs!94328 (= (dynLambda!3805 lambda!20377 (h!12485 (++!1894 (list!3021 acc!218) lt!280332))) (and (<= 0 (h!12485 (++!1894 (list!3021 acc!218) lt!280332))) (< (h!12485 (++!1894 (list!3021 acc!218) lt!280332)) size!101)))))

(assert (=> b!658906 d!225700))

(check-sat (not d!225602) (not b!658703) (not b!658915) (not b!659022) (not b!659056) (not b!658922) (not b!658909) (not bm!42491) (not b!658961) (not b!658469) (not bm!42539) (not b!658887) (not b!658629) (not b!658860) (not d!225550) (not bm!42483) (not b!658631) (not b!658916) (not d!225608) (not b!659019) (not b!659014) (not b_lambda!25689) (not b!658917) (not b!659036) (not d!225660) (not b!658910) (not b_lambda!25691) (not b!658700) (not b!659039) (not b!658701) (not b!658704) (not d!225578) (not b!658907) (not b!658478) b_and!62783 (not b!659057) (not b!658626) (not d!225570) (not b!659059) (not bm!42488) (not b!658923) (not b!658807) (not d!225672) (not b!658725) (not b!659053) (not d!225562) (not b!659037) (not b!658702) (not b!658750) (not b_lambda!25687) (not b!659054) (not b!658920) (not d!225576) (not b!658619) (not b!658897) (not b!658808) (not bm!42480) (not b!658664) (not b!658858) (not d!225572) (not b!659016) (not b!658786) (not b!659052) (not b!659024) (not b!658623) (not b!658663) (not b!659058) (not d!225664) (not b!658616) (not b!658752) (not b!658806) b_and!62785 (not b!658768) (not b!659038) (not d!225648) (not d!225606) (not b!659061) (not b!659011) (not b!658888) (not b!659025) (not b!658883) (not b!658925) (not b!658747) (not b!659041) (not b!659015) (not b_next!19055) (not b!658699) (not b!658856) (not b!659021) (not b!658665) (not d!225644) (not d!225618) (not d!225640) (not b!658884) (not b_next!19053) (not d!225596) (not b!658913) (not b!658886) (not b!659060) (not b!658647) (not bm!42477) (not b!658726) (not bm!42490) (not bm!42481) (not b!658746) (not b!658943) (not d!225652) (not b!659023) (not b!659020) (not d!225610) (not b!658855) (not d!225654) (not b!658885) (not b!658749) (not b!659018) (not b!659040))
(check-sat b_and!62785 b_and!62783 (not b_next!19055) (not b_next!19053))
