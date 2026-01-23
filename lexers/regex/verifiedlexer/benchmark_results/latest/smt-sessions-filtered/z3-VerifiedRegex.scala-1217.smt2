; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63954 () Bool)

(assert start!63954)

(declare-fun b!656630 () Bool)

(assert (=> b!656630 true))

(declare-fun b!656624 () Bool)

(declare-fun e!406072 () Bool)

(declare-datatypes ((List!7048 0))(
  ( (Nil!7034) (Cons!7034 (h!12435 (_ BitVec 16)) (t!85971 List!7048)) )
))
(declare-datatypes ((TokenValue!1438 0))(
  ( (FloatLiteralValue!2876 (text!10511 List!7048)) (TokenValueExt!1437 (__x!5014 Int)) (Broken!7190 (value!45139 List!7048)) (Object!1451) (End!1438) (Def!1438) (Underscore!1438) (Match!1438) (Else!1438) (Error!1438) (Case!1438) (If!1438) (Extends!1438) (Abstract!1438) (Class!1438) (Val!1438) (DelimiterValue!2876 (del!1498 List!7048)) (KeywordValue!1444 (value!45140 List!7048)) (CommentValue!2876 (value!45141 List!7048)) (WhitespaceValue!2876 (value!45142 List!7048)) (IndentationValue!1438 (value!45143 List!7048)) (String!8927) (Int32!1438) (Broken!7191 (value!45144 List!7048)) (Boolean!1439) (Unit!12268) (OperatorValue!1441 (op!1498 List!7048)) (IdentifierValue!2876 (value!45145 List!7048)) (IdentifierValue!2877 (value!45146 List!7048)) (WhitespaceValue!2877 (value!45147 List!7048)) (True!2876) (False!2876) (Broken!7192 (value!45148 List!7048)) (Broken!7193 (value!45149 List!7048)) (True!2877) (RightBrace!1438) (RightBracket!1438) (Colon!1438) (Null!1438) (Comma!1438) (LeftBracket!1438) (False!2877) (LeftBrace!1438) (ImaginaryLiteralValue!1438 (text!10512 List!7048)) (StringLiteralValue!4314 (value!45150 List!7048)) (EOFValue!1438 (value!45151 List!7048)) (IdentValue!1438 (value!45152 List!7048)) (DelimiterValue!2877 (value!45153 List!7048)) (DedentValue!1438 (value!45154 List!7048)) (NewLineValue!1438 (value!45155 List!7048)) (IntegerValue!4314 (value!45156 (_ BitVec 32)) (text!10513 List!7048)) (IntegerValue!4315 (value!45157 Int) (text!10514 List!7048)) (Times!1438) (Or!1438) (Equal!1438) (Minus!1438) (Broken!7194 (value!45158 List!7048)) (And!1438) (Div!1438) (LessEqual!1438) (Mod!1438) (Concat!3177) (Not!1438) (Plus!1438) (SpaceValue!1438 (value!45159 List!7048)) (IntegerValue!4316 (value!45160 Int) (text!10515 List!7048)) (StringLiteralValue!4315 (text!10516 List!7048)) (FloatLiteralValue!2877 (text!10517 List!7048)) (BytesLiteralValue!1438 (value!45161 List!7048)) (CommentValue!2877 (value!45162 List!7048)) (StringLiteralValue!4316 (value!45163 List!7048)) (ErrorTokenValue!1438 (msg!1499 List!7048)) )
))
(declare-datatypes ((Regex!1739 0))(
  ( (ElementMatch!1739 (c!118184 (_ BitVec 16))) (Concat!3178 (regOne!3990 Regex!1739) (regTwo!3990 Regex!1739)) (EmptyExpr!1739) (Star!1739 (reg!2068 Regex!1739)) (EmptyLang!1739) (Union!1739 (regOne!3991 Regex!1739) (regTwo!3991 Regex!1739)) )
))
(declare-datatypes ((String!8928 0))(
  ( (String!8929 (value!45164 String)) )
))
(declare-datatypes ((IArray!4841 0))(
  ( (IArray!4842 (innerList!2478 List!7048)) )
))
(declare-datatypes ((Conc!2420 0))(
  ( (Node!2420 (left!5615 Conc!2420) (right!5945 Conc!2420) (csize!5070 Int) (cheight!2631 Int)) (Leaf!3638 (xs!5061 IArray!4841) (csize!5071 Int)) (Empty!2420) )
))
(declare-datatypes ((BalanceConc!4852 0))(
  ( (BalanceConc!4853 (c!118185 Conc!2420)) )
))
(declare-datatypes ((TokenValueInjection!2628 0))(
  ( (TokenValueInjection!2629 (toValue!2345 Int) (toChars!2204 Int)) )
))
(declare-datatypes ((Rule!2608 0))(
  ( (Rule!2609 (regex!1404 Regex!1739) (tag!1666 String!8928) (isSeparator!1404 Bool) (transformation!1404 TokenValueInjection!2628)) )
))
(declare-datatypes ((Token!2530 0))(
  ( (Token!2531 (value!45165 TokenValue!1438) (rule!2199 Rule!2608) (size!5578 Int) (originalCharacters!1436 List!7048)) )
))
(declare-fun lt!279869 () Token!2530)

(declare-fun isKeywordValue!0 (Token!2530 TokenValue!1438) Bool)

(assert (=> b!656624 (= e!406072 (isKeywordValue!0 lt!279869 RightBrace!1438))))

(declare-fun b!656625 () Bool)

(declare-fun e!406073 () Bool)

(declare-fun e!406071 () Bool)

(assert (=> b!656625 (= e!406073 e!406071)))

(declare-fun res!291195 () Bool)

(assert (=> b!656625 (=> (not res!291195) (not e!406071))))

(declare-fun size!101 () Int)

(declare-fun lt!279870 () Int)

(declare-fun from!502 () Int)

(assert (=> b!656625 (= res!291195 (and (<= from!502 lt!279870) (= lt!279870 size!101)))))

(declare-datatypes ((List!7049 0))(
  ( (Nil!7035) (Cons!7035 (h!12436 Token!2530) (t!85972 List!7049)) )
))
(declare-datatypes ((IArray!4843 0))(
  ( (IArray!4844 (innerList!2479 List!7049)) )
))
(declare-datatypes ((Conc!2421 0))(
  ( (Node!2421 (left!5616 Conc!2421) (right!5946 Conc!2421) (csize!5072 Int) (cheight!2632 Int)) (Leaf!3639 (xs!5062 IArray!4843) (csize!5073 Int)) (Empty!2421) )
))
(declare-datatypes ((BalanceConc!4854 0))(
  ( (BalanceConc!4855 (c!118186 Conc!2421)) )
))
(declare-fun ts!14 () BalanceConc!4854)

(declare-fun size!5579 (BalanceConc!4854) Int)

(assert (=> b!656625 (= lt!279870 (size!5579 ts!14))))

(declare-fun b!656626 () Bool)

(declare-fun e!406069 () Bool)

(assert (=> b!656626 (= e!406071 e!406069)))

(declare-fun res!291193 () Bool)

(assert (=> b!656626 (=> (not res!291193) (not e!406069))))

(assert (=> b!656626 (= res!291193 e!406072)))

(declare-fun res!291197 () Bool)

(assert (=> b!656626 (=> res!291197 e!406072)))

(assert (=> b!656626 (= res!291197 (isKeywordValue!0 lt!279869 LeftBrace!1438))))

(declare-fun apply!1687 (BalanceConc!4854 Int) Token!2530)

(assert (=> b!656626 (= lt!279869 (apply!1687 ts!14 from!502))))

(declare-fun b!656627 () Bool)

(declare-fun e!406074 () Bool)

(declare-fun tp!200611 () Bool)

(declare-fun inv!8882 (Conc!2421) Bool)

(assert (=> b!656627 (= e!406074 (and (inv!8882 (c!118186 ts!14)) tp!200611))))

(declare-fun b!656628 () Bool)

(declare-fun res!291198 () Bool)

(assert (=> b!656628 (=> (not res!291198) (not e!406071))))

(assert (=> b!656628 (= res!291198 (< from!502 lt!279870))))

(declare-fun b!656629 () Bool)

(declare-fun e!406070 () Bool)

(declare-fun lambda!20269 () Int)

(declare-datatypes ((List!7050 0))(
  ( (Nil!7036) (Cons!7036 (h!12437 Int) (t!85973 List!7050)) )
))
(declare-fun forall!1849 (List!7050 Int) Bool)

(assert (=> b!656629 (= e!406070 (not (forall!1849 (Cons!7036 from!502 Nil!7036) lambda!20269)))))

(declare-fun res!291194 () Bool)

(assert (=> b!656630 (=> (not res!291194) (not e!406071))))

(declare-datatypes ((IArray!4845 0))(
  ( (IArray!4846 (innerList!2480 List!7050)) )
))
(declare-datatypes ((Conc!2422 0))(
  ( (Node!2422 (left!5617 Conc!2422) (right!5947 Conc!2422) (csize!5074 Int) (cheight!2633 Int)) (Leaf!3640 (xs!5063 IArray!4845) (csize!5075 Int)) (Empty!2422) )
))
(declare-datatypes ((BalanceConc!4856 0))(
  ( (BalanceConc!4857 (c!118187 Conc!2422)) )
))
(declare-fun acc!218 () BalanceConc!4856)

(declare-fun forall!1850 (BalanceConc!4856 Int) Bool)

(assert (=> b!656630 (= res!291194 (forall!1850 acc!218 lambda!20269))))

(declare-fun res!291196 () Bool)

(assert (=> start!63954 (=> (not res!291196) (not e!406073))))

(assert (=> start!63954 (= res!291196 (>= from!502 0))))

(assert (=> start!63954 e!406073))

(assert (=> start!63954 true))

(declare-fun e!406075 () Bool)

(declare-fun inv!8883 (BalanceConc!4856) Bool)

(assert (=> start!63954 (and (inv!8883 acc!218) e!406075)))

(declare-fun inv!8884 (BalanceConc!4854) Bool)

(assert (=> start!63954 (and (inv!8884 ts!14) e!406074)))

(declare-fun b!656631 () Bool)

(declare-fun res!291200 () Bool)

(assert (=> b!656631 (=> (not res!291200) (not e!406069))))

(assert (=> b!656631 (= res!291200 (forall!1850 acc!218 lambda!20269))))

(declare-fun b!656632 () Bool)

(assert (=> b!656632 (= e!406069 e!406070)))

(declare-fun res!291199 () Bool)

(assert (=> b!656632 (=> (not res!291199) (not e!406070))))

(declare-fun list!2993 (BalanceConc!4856) List!7050)

(assert (=> b!656632 (= res!291199 (forall!1849 (list!2993 acc!218) lambda!20269))))

(declare-fun b!656633 () Bool)

(declare-fun tp!200610 () Bool)

(declare-fun inv!8885 (Conc!2422) Bool)

(assert (=> b!656633 (= e!406075 (and (inv!8885 (c!118187 acc!218)) tp!200610))))

(assert (= (and start!63954 res!291196) b!656625))

(assert (= (and b!656625 res!291195) b!656630))

(assert (= (and b!656630 res!291194) b!656628))

(assert (= (and b!656628 res!291198) b!656626))

(assert (= (and b!656626 (not res!291197)) b!656624))

(assert (= (and b!656626 res!291193) b!656631))

(assert (= (and b!656631 res!291200) b!656632))

(assert (= (and b!656632 res!291199) b!656629))

(assert (= start!63954 b!656633))

(assert (= start!63954 b!656627))

(declare-fun m!922389 () Bool)

(assert (=> b!656625 m!922389))

(declare-fun m!922391 () Bool)

(assert (=> b!656627 m!922391))

(declare-fun m!922393 () Bool)

(assert (=> b!656630 m!922393))

(declare-fun m!922395 () Bool)

(assert (=> b!656624 m!922395))

(assert (=> b!656631 m!922393))

(declare-fun m!922397 () Bool)

(assert (=> b!656629 m!922397))

(declare-fun m!922399 () Bool)

(assert (=> start!63954 m!922399))

(declare-fun m!922401 () Bool)

(assert (=> start!63954 m!922401))

(declare-fun m!922403 () Bool)

(assert (=> b!656633 m!922403))

(declare-fun m!922405 () Bool)

(assert (=> b!656626 m!922405))

(declare-fun m!922407 () Bool)

(assert (=> b!656626 m!922407))

(declare-fun m!922409 () Bool)

(assert (=> b!656632 m!922409))

(assert (=> b!656632 m!922409))

(declare-fun m!922411 () Bool)

(assert (=> b!656632 m!922411))

(check-sat (not b!656633) (not b!656627) (not b!656624) (not b!656632) (not start!63954) (not b!656630) (not b!656625) (not b!656629) (not b!656631) (not b!656626))
(check-sat)
(get-model)

(declare-fun d!225054 () Bool)

(declare-fun lt!279873 () Bool)

(assert (=> d!225054 (= lt!279873 (forall!1849 (list!2993 acc!218) lambda!20269))))

(declare-fun forall!1851 (Conc!2422 Int) Bool)

(assert (=> d!225054 (= lt!279873 (forall!1851 (c!118187 acc!218) lambda!20269))))

(assert (=> d!225054 (= (forall!1850 acc!218 lambda!20269) lt!279873)))

(declare-fun bs!94191 () Bool)

(assert (= bs!94191 d!225054))

(assert (=> bs!94191 m!922409))

(assert (=> bs!94191 m!922409))

(assert (=> bs!94191 m!922411))

(declare-fun m!922417 () Bool)

(assert (=> bs!94191 m!922417))

(assert (=> b!656630 d!225054))

(declare-fun d!225056 () Bool)

(declare-fun lt!279876 () Int)

(declare-fun size!5580 (List!7049) Int)

(declare-fun list!2994 (BalanceConc!4854) List!7049)

(assert (=> d!225056 (= lt!279876 (size!5580 (list!2994 ts!14)))))

(declare-fun size!5581 (Conc!2421) Int)

(assert (=> d!225056 (= lt!279876 (size!5581 (c!118186 ts!14)))))

(assert (=> d!225056 (= (size!5579 ts!14) lt!279876)))

(declare-fun bs!94193 () Bool)

(assert (= bs!94193 d!225056))

(declare-fun m!922425 () Bool)

(assert (=> bs!94193 m!922425))

(assert (=> bs!94193 m!922425))

(declare-fun m!922427 () Bool)

(assert (=> bs!94193 m!922427))

(declare-fun m!922429 () Bool)

(assert (=> bs!94193 m!922429))

(assert (=> b!656625 d!225056))

(declare-fun d!225062 () Bool)

(declare-fun isBalanced!642 (Conc!2422) Bool)

(assert (=> d!225062 (= (inv!8883 acc!218) (isBalanced!642 (c!118187 acc!218)))))

(declare-fun bs!94195 () Bool)

(assert (= bs!94195 d!225062))

(declare-fun m!922433 () Bool)

(assert (=> bs!94195 m!922433))

(assert (=> start!63954 d!225062))

(declare-fun d!225066 () Bool)

(declare-fun isBalanced!644 (Conc!2421) Bool)

(assert (=> d!225066 (= (inv!8884 ts!14) (isBalanced!644 (c!118186 ts!14)))))

(declare-fun bs!94196 () Bool)

(assert (= bs!94196 d!225066))

(declare-fun m!922435 () Bool)

(assert (=> bs!94196 m!922435))

(assert (=> start!63954 d!225066))

(declare-fun d!225068 () Bool)

(declare-fun choose!511 (Token!2530 TokenValue!1438) Bool)

(assert (=> d!225068 (= (isKeywordValue!0 lt!279869 RightBrace!1438) (choose!511 lt!279869 RightBrace!1438))))

(declare-fun bs!94198 () Bool)

(assert (= bs!94198 d!225068))

(declare-fun m!922439 () Bool)

(assert (=> bs!94198 m!922439))

(assert (=> b!656624 d!225068))

(declare-fun d!225072 () Bool)

(declare-fun res!291220 () Bool)

(declare-fun e!406094 () Bool)

(assert (=> d!225072 (=> res!291220 e!406094)))

(get-info :version)

(assert (=> d!225072 (= res!291220 ((_ is Nil!7036) (Cons!7036 from!502 Nil!7036)))))

(assert (=> d!225072 (= (forall!1849 (Cons!7036 from!502 Nil!7036) lambda!20269) e!406094)))

(declare-fun b!656657 () Bool)

(declare-fun e!406095 () Bool)

(assert (=> b!656657 (= e!406094 e!406095)))

(declare-fun res!291221 () Bool)

(assert (=> b!656657 (=> (not res!291221) (not e!406095))))

(declare-fun dynLambda!3802 (Int Int) Bool)

(assert (=> b!656657 (= res!291221 (dynLambda!3802 lambda!20269 (h!12437 (Cons!7036 from!502 Nil!7036))))))

(declare-fun b!656658 () Bool)

(assert (=> b!656658 (= e!406095 (forall!1849 (t!85973 (Cons!7036 from!502 Nil!7036)) lambda!20269))))

(assert (= (and d!225072 (not res!291220)) b!656657))

(assert (= (and b!656657 res!291221) b!656658))

(declare-fun b_lambda!25609 () Bool)

(assert (=> (not b_lambda!25609) (not b!656657)))

(declare-fun m!922449 () Bool)

(assert (=> b!656657 m!922449))

(declare-fun m!922451 () Bool)

(assert (=> b!656658 m!922451))

(assert (=> b!656629 d!225072))

(declare-fun d!225080 () Bool)

(declare-fun c!118193 () Bool)

(assert (=> d!225080 (= c!118193 ((_ is Node!2421) (c!118186 ts!14)))))

(declare-fun e!406100 () Bool)

(assert (=> d!225080 (= (inv!8882 (c!118186 ts!14)) e!406100)))

(declare-fun b!656665 () Bool)

(declare-fun inv!8888 (Conc!2421) Bool)

(assert (=> b!656665 (= e!406100 (inv!8888 (c!118186 ts!14)))))

(declare-fun b!656666 () Bool)

(declare-fun e!406101 () Bool)

(assert (=> b!656666 (= e!406100 e!406101)))

(declare-fun res!291224 () Bool)

(assert (=> b!656666 (= res!291224 (not ((_ is Leaf!3639) (c!118186 ts!14))))))

(assert (=> b!656666 (=> res!291224 e!406101)))

(declare-fun b!656667 () Bool)

(declare-fun inv!8889 (Conc!2421) Bool)

(assert (=> b!656667 (= e!406101 (inv!8889 (c!118186 ts!14)))))

(assert (= (and d!225080 c!118193) b!656665))

(assert (= (and d!225080 (not c!118193)) b!656666))

(assert (= (and b!656666 (not res!291224)) b!656667))

(declare-fun m!922453 () Bool)

(assert (=> b!656665 m!922453))

(declare-fun m!922455 () Bool)

(assert (=> b!656667 m!922455))

(assert (=> b!656627 d!225080))

(declare-fun d!225082 () Bool)

(declare-fun c!118196 () Bool)

(assert (=> d!225082 (= c!118196 ((_ is Node!2422) (c!118187 acc!218)))))

(declare-fun e!406109 () Bool)

(assert (=> d!225082 (= (inv!8885 (c!118187 acc!218)) e!406109)))

(declare-fun b!656677 () Bool)

(declare-fun inv!8890 (Conc!2422) Bool)

(assert (=> b!656677 (= e!406109 (inv!8890 (c!118187 acc!218)))))

(declare-fun b!656678 () Bool)

(declare-fun e!406110 () Bool)

(assert (=> b!656678 (= e!406109 e!406110)))

(declare-fun res!291230 () Bool)

(assert (=> b!656678 (= res!291230 (not ((_ is Leaf!3640) (c!118187 acc!218))))))

(assert (=> b!656678 (=> res!291230 e!406110)))

(declare-fun b!656679 () Bool)

(declare-fun inv!8891 (Conc!2422) Bool)

(assert (=> b!656679 (= e!406110 (inv!8891 (c!118187 acc!218)))))

(assert (= (and d!225082 c!118196) b!656677))

(assert (= (and d!225082 (not c!118196)) b!656678))

(assert (= (and b!656678 (not res!291230)) b!656679))

(declare-fun m!922465 () Bool)

(assert (=> b!656677 m!922465))

(declare-fun m!922467 () Bool)

(assert (=> b!656679 m!922467))

(assert (=> b!656633 d!225082))

(declare-fun d!225088 () Bool)

(assert (=> d!225088 (= (isKeywordValue!0 lt!279869 LeftBrace!1438) (choose!511 lt!279869 LeftBrace!1438))))

(declare-fun bs!94202 () Bool)

(assert (= bs!94202 d!225088))

(declare-fun m!922469 () Bool)

(assert (=> bs!94202 m!922469))

(assert (=> b!656626 d!225088))

(declare-fun d!225090 () Bool)

(declare-fun lt!279888 () Token!2530)

(declare-fun apply!1690 (List!7049 Int) Token!2530)

(assert (=> d!225090 (= lt!279888 (apply!1690 (list!2994 ts!14) from!502))))

(declare-fun apply!1691 (Conc!2421 Int) Token!2530)

(assert (=> d!225090 (= lt!279888 (apply!1691 (c!118186 ts!14) from!502))))

(declare-fun e!406123 () Bool)

(assert (=> d!225090 e!406123))

(declare-fun res!291236 () Bool)

(assert (=> d!225090 (=> (not res!291236) (not e!406123))))

(assert (=> d!225090 (= res!291236 (<= 0 from!502))))

(assert (=> d!225090 (= (apply!1687 ts!14 from!502) lt!279888)))

(declare-fun b!656697 () Bool)

(assert (=> b!656697 (= e!406123 (< from!502 (size!5579 ts!14)))))

(assert (= (and d!225090 res!291236) b!656697))

(assert (=> d!225090 m!922425))

(assert (=> d!225090 m!922425))

(declare-fun m!922479 () Bool)

(assert (=> d!225090 m!922479))

(declare-fun m!922481 () Bool)

(assert (=> d!225090 m!922481))

(assert (=> b!656697 m!922389))

(assert (=> b!656626 d!225090))

(assert (=> b!656631 d!225054))

(declare-fun d!225094 () Bool)

(declare-fun res!291237 () Bool)

(declare-fun e!406126 () Bool)

(assert (=> d!225094 (=> res!291237 e!406126)))

(assert (=> d!225094 (= res!291237 ((_ is Nil!7036) (list!2993 acc!218)))))

(assert (=> d!225094 (= (forall!1849 (list!2993 acc!218) lambda!20269) e!406126)))

(declare-fun b!656700 () Bool)

(declare-fun e!406127 () Bool)

(assert (=> b!656700 (= e!406126 e!406127)))

(declare-fun res!291238 () Bool)

(assert (=> b!656700 (=> (not res!291238) (not e!406127))))

(assert (=> b!656700 (= res!291238 (dynLambda!3802 lambda!20269 (h!12437 (list!2993 acc!218))))))

(declare-fun b!656701 () Bool)

(assert (=> b!656701 (= e!406127 (forall!1849 (t!85973 (list!2993 acc!218)) lambda!20269))))

(assert (= (and d!225094 (not res!291237)) b!656700))

(assert (= (and b!656700 res!291238) b!656701))

(declare-fun b_lambda!25611 () Bool)

(assert (=> (not b_lambda!25611) (not b!656700)))

(declare-fun m!922489 () Bool)

(assert (=> b!656700 m!922489))

(declare-fun m!922491 () Bool)

(assert (=> b!656701 m!922491))

(assert (=> b!656632 d!225094))

(declare-fun d!225096 () Bool)

(declare-fun list!2997 (Conc!2422) List!7050)

(assert (=> d!225096 (= (list!2993 acc!218) (list!2997 (c!118187 acc!218)))))

(declare-fun bs!94204 () Bool)

(assert (= bs!94204 d!225096))

(declare-fun m!922493 () Bool)

(assert (=> bs!94204 m!922493))

(assert (=> b!656632 d!225096))

(declare-fun e!406138 () Bool)

(declare-fun tp!200634 () Bool)

(declare-fun b!656721 () Bool)

(declare-fun tp!200633 () Bool)

(assert (=> b!656721 (= e!406138 (and (inv!8882 (left!5616 (c!118186 ts!14))) tp!200634 (inv!8882 (right!5946 (c!118186 ts!14))) tp!200633))))

(declare-fun b!656723 () Bool)

(declare-fun e!406139 () Bool)

(declare-fun tp!200635 () Bool)

(assert (=> b!656723 (= e!406139 tp!200635)))

(declare-fun b!656722 () Bool)

(declare-fun inv!8895 (IArray!4843) Bool)

(assert (=> b!656722 (= e!406138 (and (inv!8895 (xs!5062 (c!118186 ts!14))) e!406139))))

(assert (=> b!656627 (= tp!200611 (and (inv!8882 (c!118186 ts!14)) e!406138))))

(assert (= (and b!656627 ((_ is Node!2421) (c!118186 ts!14))) b!656721))

(assert (= b!656722 b!656723))

(assert (= (and b!656627 ((_ is Leaf!3639) (c!118186 ts!14))) b!656722))

(declare-fun m!922501 () Bool)

(assert (=> b!656721 m!922501))

(declare-fun m!922503 () Bool)

(assert (=> b!656721 m!922503))

(declare-fun m!922505 () Bool)

(assert (=> b!656722 m!922505))

(assert (=> b!656627 m!922391))

(declare-fun tp!200640 () Bool)

(declare-fun tp!200641 () Bool)

(declare-fun b!656730 () Bool)

(declare-fun e!406144 () Bool)

(assert (=> b!656730 (= e!406144 (and (inv!8885 (left!5617 (c!118187 acc!218))) tp!200640 (inv!8885 (right!5947 (c!118187 acc!218))) tp!200641))))

(declare-fun b!656731 () Bool)

(declare-fun inv!8897 (IArray!4845) Bool)

(assert (=> b!656731 (= e!406144 (inv!8897 (xs!5063 (c!118187 acc!218))))))

(assert (=> b!656633 (= tp!200610 (and (inv!8885 (c!118187 acc!218)) e!406144))))

(assert (= (and b!656633 ((_ is Node!2422) (c!118187 acc!218))) b!656730))

(assert (= (and b!656633 ((_ is Leaf!3640) (c!118187 acc!218))) b!656731))

(declare-fun m!922507 () Bool)

(assert (=> b!656730 m!922507))

(declare-fun m!922509 () Bool)

(assert (=> b!656730 m!922509))

(declare-fun m!922511 () Bool)

(assert (=> b!656731 m!922511))

(assert (=> b!656633 m!922403))

(declare-fun b_lambda!25617 () Bool)

(assert (= b_lambda!25609 (or b!656630 b_lambda!25617)))

(declare-fun bs!94207 () Bool)

(declare-fun d!225102 () Bool)

(assert (= bs!94207 (and d!225102 b!656630)))

(assert (=> bs!94207 (= (dynLambda!3802 lambda!20269 (h!12437 (Cons!7036 from!502 Nil!7036))) (and (<= 0 (h!12437 (Cons!7036 from!502 Nil!7036))) (< (h!12437 (Cons!7036 from!502 Nil!7036)) size!101)))))

(assert (=> b!656657 d!225102))

(declare-fun b_lambda!25619 () Bool)

(assert (= b_lambda!25611 (or b!656630 b_lambda!25619)))

(declare-fun bs!94208 () Bool)

(declare-fun d!225104 () Bool)

(assert (= bs!94208 (and d!225104 b!656630)))

(assert (=> bs!94208 (= (dynLambda!3802 lambda!20269 (h!12437 (list!2993 acc!218))) (and (<= 0 (h!12437 (list!2993 acc!218))) (< (h!12437 (list!2993 acc!218)) size!101)))))

(assert (=> b!656700 d!225104))

(check-sat (not b!656633) (not b!656701) (not d!225090) (not b!656679) (not b!656677) (not b!656723) (not d!225096) (not b!656665) (not b!656667) (not d!225088) (not b!656731) (not b!656730) (not d!225056) (not d!225068) (not b!656658) (not d!225054) (not b_lambda!25619) (not d!225066) (not b!656721) (not b!656722) (not d!225062) (not b_lambda!25617) (not b!656627) (not b!656697))
(check-sat)
(get-model)

(declare-fun d!225106 () Bool)

(declare-fun lt!279891 () Token!2530)

(declare-fun contains!1551 (List!7049 Token!2530) Bool)

(assert (=> d!225106 (contains!1551 (list!2994 ts!14) lt!279891)))

(declare-fun e!406150 () Token!2530)

(assert (=> d!225106 (= lt!279891 e!406150)))

(declare-fun c!118202 () Bool)

(assert (=> d!225106 (= c!118202 (= from!502 0))))

(declare-fun e!406151 () Bool)

(assert (=> d!225106 e!406151))

(declare-fun res!291243 () Bool)

(assert (=> d!225106 (=> (not res!291243) (not e!406151))))

(assert (=> d!225106 (= res!291243 (<= 0 from!502))))

(assert (=> d!225106 (= (apply!1690 (list!2994 ts!14) from!502) lt!279891)))

(declare-fun b!656738 () Bool)

(assert (=> b!656738 (= e!406151 (< from!502 (size!5580 (list!2994 ts!14))))))

(declare-fun b!656739 () Bool)

(declare-fun head!1368 (List!7049) Token!2530)

(assert (=> b!656739 (= e!406150 (head!1368 (list!2994 ts!14)))))

(declare-fun b!656740 () Bool)

(declare-fun tail!932 (List!7049) List!7049)

(assert (=> b!656740 (= e!406150 (apply!1690 (tail!932 (list!2994 ts!14)) (- from!502 1)))))

(assert (= (and d!225106 res!291243) b!656738))

(assert (= (and d!225106 c!118202) b!656739))

(assert (= (and d!225106 (not c!118202)) b!656740))

(assert (=> d!225106 m!922425))

(declare-fun m!922513 () Bool)

(assert (=> d!225106 m!922513))

(assert (=> b!656738 m!922425))

(assert (=> b!656738 m!922427))

(assert (=> b!656739 m!922425))

(declare-fun m!922515 () Bool)

(assert (=> b!656739 m!922515))

(assert (=> b!656740 m!922425))

(declare-fun m!922517 () Bool)

(assert (=> b!656740 m!922517))

(assert (=> b!656740 m!922517))

(declare-fun m!922519 () Bool)

(assert (=> b!656740 m!922519))

(assert (=> d!225090 d!225106))

(declare-fun d!225108 () Bool)

(declare-fun list!2998 (Conc!2421) List!7049)

(assert (=> d!225108 (= (list!2994 ts!14) (list!2998 (c!118186 ts!14)))))

(declare-fun bs!94209 () Bool)

(assert (= bs!94209 d!225108))

(declare-fun m!922521 () Bool)

(assert (=> bs!94209 m!922521))

(assert (=> d!225090 d!225108))

(declare-fun b!656779 () Bool)

(declare-fun e!406168 () Token!2530)

(declare-fun call!42268 () Token!2530)

(assert (=> b!656779 (= e!406168 call!42268)))

(declare-fun b!656780 () Bool)

(declare-fun e!406171 () Token!2530)

(assert (=> b!656780 (= e!406171 e!406168)))

(declare-fun lt!279897 () Bool)

(declare-fun appendIndex!63 (List!7049 List!7049 Int) Bool)

(assert (=> b!656780 (= lt!279897 (appendIndex!63 (list!2998 (left!5616 (c!118186 ts!14))) (list!2998 (right!5946 (c!118186 ts!14))) from!502))))

(declare-fun c!118209 () Bool)

(assert (=> b!656780 (= c!118209 (< from!502 (size!5581 (left!5616 (c!118186 ts!14)))))))

(declare-fun b!656781 () Bool)

(declare-fun e!406170 () Int)

(assert (=> b!656781 (= e!406170 from!502)))

(declare-fun b!656782 () Bool)

(declare-fun apply!1692 (IArray!4843 Int) Token!2530)

(assert (=> b!656782 (= e!406171 (apply!1692 (xs!5062 (c!118186 ts!14)) from!502))))

(declare-fun b!656783 () Bool)

(assert (=> b!656783 (= e!406170 (- from!502 (size!5581 (left!5616 (c!118186 ts!14)))))))

(declare-fun d!225110 () Bool)

(declare-fun lt!279896 () Token!2530)

(assert (=> d!225110 (= lt!279896 (apply!1690 (list!2998 (c!118186 ts!14)) from!502))))

(assert (=> d!225110 (= lt!279896 e!406171)))

(declare-fun c!118211 () Bool)

(assert (=> d!225110 (= c!118211 ((_ is Leaf!3639) (c!118186 ts!14)))))

(declare-fun e!406169 () Bool)

(assert (=> d!225110 e!406169))

(declare-fun res!291272 () Bool)

(assert (=> d!225110 (=> (not res!291272) (not e!406169))))

(assert (=> d!225110 (= res!291272 (<= 0 from!502))))

(assert (=> d!225110 (= (apply!1691 (c!118186 ts!14) from!502) lt!279896)))

(declare-fun b!656784 () Bool)

(assert (=> b!656784 (= e!406169 (< from!502 (size!5581 (c!118186 ts!14))))))

(declare-fun bm!42263 () Bool)

(declare-fun c!118210 () Bool)

(assert (=> bm!42263 (= c!118210 c!118209)))

(assert (=> bm!42263 (= call!42268 (apply!1691 (ite c!118209 (left!5616 (c!118186 ts!14)) (right!5946 (c!118186 ts!14))) e!406170))))

(declare-fun b!656785 () Bool)

(assert (=> b!656785 (= e!406168 call!42268)))

(assert (= (and d!225110 res!291272) b!656784))

(assert (= (and d!225110 c!118211) b!656782))

(assert (= (and d!225110 (not c!118211)) b!656780))

(assert (= (and b!656780 c!118209) b!656785))

(assert (= (and b!656780 (not c!118209)) b!656779))

(assert (= (or b!656785 b!656779) bm!42263))

(assert (= (and bm!42263 c!118210) b!656781))

(assert (= (and bm!42263 (not c!118210)) b!656783))

(declare-fun m!922535 () Bool)

(assert (=> bm!42263 m!922535))

(declare-fun m!922537 () Bool)

(assert (=> b!656780 m!922537))

(declare-fun m!922539 () Bool)

(assert (=> b!656780 m!922539))

(assert (=> b!656780 m!922537))

(assert (=> b!656780 m!922539))

(declare-fun m!922541 () Bool)

(assert (=> b!656780 m!922541))

(declare-fun m!922543 () Bool)

(assert (=> b!656780 m!922543))

(assert (=> b!656783 m!922543))

(declare-fun m!922545 () Bool)

(assert (=> b!656782 m!922545))

(assert (=> b!656784 m!922429))

(assert (=> d!225110 m!922521))

(assert (=> d!225110 m!922521))

(declare-fun m!922547 () Bool)

(assert (=> d!225110 m!922547))

(assert (=> d!225090 d!225110))

(declare-fun d!225116 () Bool)

(declare-fun res!291273 () Bool)

(declare-fun e!406172 () Bool)

(assert (=> d!225116 (=> res!291273 e!406172)))

(assert (=> d!225116 (= res!291273 ((_ is Nil!7036) (t!85973 (Cons!7036 from!502 Nil!7036))))))

(assert (=> d!225116 (= (forall!1849 (t!85973 (Cons!7036 from!502 Nil!7036)) lambda!20269) e!406172)))

(declare-fun b!656786 () Bool)

(declare-fun e!406173 () Bool)

(assert (=> b!656786 (= e!406172 e!406173)))

(declare-fun res!291274 () Bool)

(assert (=> b!656786 (=> (not res!291274) (not e!406173))))

(assert (=> b!656786 (= res!291274 (dynLambda!3802 lambda!20269 (h!12437 (t!85973 (Cons!7036 from!502 Nil!7036)))))))

(declare-fun b!656787 () Bool)

(assert (=> b!656787 (= e!406173 (forall!1849 (t!85973 (t!85973 (Cons!7036 from!502 Nil!7036))) lambda!20269))))

(assert (= (and d!225116 (not res!291273)) b!656786))

(assert (= (and b!656786 res!291274) b!656787))

(declare-fun b_lambda!25621 () Bool)

(assert (=> (not b_lambda!25621) (not b!656786)))

(declare-fun m!922549 () Bool)

(assert (=> b!656786 m!922549))

(declare-fun m!922551 () Bool)

(assert (=> b!656787 m!922551))

(assert (=> b!656658 d!225116))

(assert (=> d!225054 d!225094))

(assert (=> d!225054 d!225096))

(declare-fun b!656802 () Bool)

(declare-fun e!406183 () Bool)

(declare-fun forall!1853 (IArray!4845 Int) Bool)

(assert (=> b!656802 (= e!406183 (forall!1853 (xs!5063 (c!118187 acc!218)) lambda!20269))))

(declare-fun b!656804 () Bool)

(declare-fun e!406185 () Bool)

(assert (=> b!656804 (= e!406185 (forall!1851 (right!5947 (c!118187 acc!218)) lambda!20269))))

(declare-fun d!225118 () Bool)

(declare-fun lt!279903 () Bool)

(assert (=> d!225118 (= lt!279903 (forall!1849 (list!2997 (c!118187 acc!218)) lambda!20269))))

(declare-fun e!406184 () Bool)

(assert (=> d!225118 (= lt!279903 e!406184)))

(declare-fun res!291287 () Bool)

(assert (=> d!225118 (=> res!291287 e!406184)))

(assert (=> d!225118 (= res!291287 ((_ is Empty!2422) (c!118187 acc!218)))))

(assert (=> d!225118 (= (forall!1851 (c!118187 acc!218) lambda!20269) lt!279903)))

(declare-fun b!656801 () Bool)

(assert (=> b!656801 (= e!406184 e!406183)))

(declare-fun c!118214 () Bool)

(assert (=> b!656801 (= c!118214 ((_ is Leaf!3640) (c!118187 acc!218)))))

(declare-fun b!656803 () Bool)

(assert (=> b!656803 (= e!406183 e!406185)))

(declare-datatypes ((Unit!12269 0))(
  ( (Unit!12270) )
))
(declare-fun lt!279902 () Unit!12269)

(declare-fun lemmaForallConcat!49 (List!7050 List!7050 Int) Unit!12269)

(assert (=> b!656803 (= lt!279902 (lemmaForallConcat!49 (list!2997 (left!5617 (c!118187 acc!218))) (list!2997 (right!5947 (c!118187 acc!218))) lambda!20269))))

(declare-fun res!291288 () Bool)

(assert (=> b!656803 (= res!291288 (forall!1851 (left!5617 (c!118187 acc!218)) lambda!20269))))

(assert (=> b!656803 (=> (not res!291288) (not e!406185))))

(assert (= (and d!225118 (not res!291287)) b!656801))

(assert (= (and b!656801 c!118214) b!656802))

(assert (= (and b!656801 (not c!118214)) b!656803))

(assert (= (and b!656803 res!291288) b!656804))

(declare-fun m!922567 () Bool)

(assert (=> b!656802 m!922567))

(declare-fun m!922569 () Bool)

(assert (=> b!656804 m!922569))

(assert (=> d!225118 m!922493))

(assert (=> d!225118 m!922493))

(declare-fun m!922571 () Bool)

(assert (=> d!225118 m!922571))

(declare-fun m!922573 () Bool)

(assert (=> b!656803 m!922573))

(declare-fun m!922575 () Bool)

(assert (=> b!656803 m!922575))

(assert (=> b!656803 m!922573))

(assert (=> b!656803 m!922575))

(declare-fun m!922577 () Bool)

(assert (=> b!656803 m!922577))

(declare-fun m!922579 () Bool)

(assert (=> b!656803 m!922579))

(assert (=> d!225054 d!225118))

(declare-fun d!225126 () Bool)

(declare-fun res!291305 () Bool)

(declare-fun e!406192 () Bool)

(assert (=> d!225126 (=> (not res!291305) (not e!406192))))

(declare-fun size!5585 (List!7050) Int)

(declare-fun list!2999 (IArray!4845) List!7050)

(assert (=> d!225126 (= res!291305 (<= (size!5585 (list!2999 (xs!5063 (c!118187 acc!218)))) 512))))

(assert (=> d!225126 (= (inv!8891 (c!118187 acc!218)) e!406192)))

(declare-fun b!656821 () Bool)

(declare-fun res!291306 () Bool)

(assert (=> b!656821 (=> (not res!291306) (not e!406192))))

(assert (=> b!656821 (= res!291306 (= (csize!5075 (c!118187 acc!218)) (size!5585 (list!2999 (xs!5063 (c!118187 acc!218))))))))

(declare-fun b!656822 () Bool)

(assert (=> b!656822 (= e!406192 (and (> (csize!5075 (c!118187 acc!218)) 0) (<= (csize!5075 (c!118187 acc!218)) 512)))))

(assert (= (and d!225126 res!291305) b!656821))

(assert (= (and b!656821 res!291306) b!656822))

(declare-fun m!922581 () Bool)

(assert (=> d!225126 m!922581))

(assert (=> d!225126 m!922581))

(declare-fun m!922583 () Bool)

(assert (=> d!225126 m!922583))

(assert (=> b!656821 m!922581))

(assert (=> b!656821 m!922581))

(assert (=> b!656821 m!922583))

(assert (=> b!656679 d!225126))

(declare-fun d!225128 () Bool)

(declare-fun res!291328 () Bool)

(declare-fun e!406201 () Bool)

(assert (=> d!225128 (=> res!291328 e!406201)))

(assert (=> d!225128 (= res!291328 (not ((_ is Node!2422) (c!118187 acc!218))))))

(assert (=> d!225128 (= (isBalanced!642 (c!118187 acc!218)) e!406201)))

(declare-fun b!656843 () Bool)

(declare-fun e!406202 () Bool)

(assert (=> b!656843 (= e!406201 e!406202)))

(declare-fun res!291331 () Bool)

(assert (=> b!656843 (=> (not res!291331) (not e!406202))))

(declare-fun height!293 (Conc!2422) Int)

(assert (=> b!656843 (= res!291331 (<= (- 1) (- (height!293 (left!5617 (c!118187 acc!218))) (height!293 (right!5947 (c!118187 acc!218))))))))

(declare-fun b!656844 () Bool)

(declare-fun res!291332 () Bool)

(assert (=> b!656844 (=> (not res!291332) (not e!406202))))

(assert (=> b!656844 (= res!291332 (isBalanced!642 (right!5947 (c!118187 acc!218))))))

(declare-fun b!656845 () Bool)

(declare-fun isEmpty!4765 (Conc!2422) Bool)

(assert (=> b!656845 (= e!406202 (not (isEmpty!4765 (right!5947 (c!118187 acc!218)))))))

(declare-fun b!656846 () Bool)

(declare-fun res!291329 () Bool)

(assert (=> b!656846 (=> (not res!291329) (not e!406202))))

(assert (=> b!656846 (= res!291329 (<= (- (height!293 (left!5617 (c!118187 acc!218))) (height!293 (right!5947 (c!118187 acc!218)))) 1))))

(declare-fun b!656847 () Bool)

(declare-fun res!291330 () Bool)

(assert (=> b!656847 (=> (not res!291330) (not e!406202))))

(assert (=> b!656847 (= res!291330 (not (isEmpty!4765 (left!5617 (c!118187 acc!218)))))))

(declare-fun b!656848 () Bool)

(declare-fun res!291333 () Bool)

(assert (=> b!656848 (=> (not res!291333) (not e!406202))))

(assert (=> b!656848 (= res!291333 (isBalanced!642 (left!5617 (c!118187 acc!218))))))

(assert (= (and d!225128 (not res!291328)) b!656843))

(assert (= (and b!656843 res!291331) b!656846))

(assert (= (and b!656846 res!291329) b!656848))

(assert (= (and b!656848 res!291333) b!656844))

(assert (= (and b!656844 res!291332) b!656847))

(assert (= (and b!656847 res!291330) b!656845))

(declare-fun m!922599 () Bool)

(assert (=> b!656844 m!922599))

(declare-fun m!922601 () Bool)

(assert (=> b!656846 m!922601))

(declare-fun m!922603 () Bool)

(assert (=> b!656846 m!922603))

(declare-fun m!922605 () Bool)

(assert (=> b!656847 m!922605))

(assert (=> b!656843 m!922601))

(assert (=> b!656843 m!922603))

(declare-fun m!922607 () Bool)

(assert (=> b!656848 m!922607))

(declare-fun m!922609 () Bool)

(assert (=> b!656845 m!922609))

(assert (=> d!225062 d!225128))

(assert (=> b!656627 d!225080))

(declare-fun d!225138 () Bool)

(declare-fun res!291344 () Bool)

(declare-fun e!406211 () Bool)

(assert (=> d!225138 (=> (not res!291344) (not e!406211))))

(declare-fun size!5586 (Conc!2422) Int)

(assert (=> d!225138 (= res!291344 (= (csize!5074 (c!118187 acc!218)) (+ (size!5586 (left!5617 (c!118187 acc!218))) (size!5586 (right!5947 (c!118187 acc!218))))))))

(assert (=> d!225138 (= (inv!8890 (c!118187 acc!218)) e!406211)))

(declare-fun b!656863 () Bool)

(declare-fun res!291345 () Bool)

(assert (=> b!656863 (=> (not res!291345) (not e!406211))))

(assert (=> b!656863 (= res!291345 (and (not (= (left!5617 (c!118187 acc!218)) Empty!2422)) (not (= (right!5947 (c!118187 acc!218)) Empty!2422))))))

(declare-fun b!656864 () Bool)

(declare-fun res!291346 () Bool)

(assert (=> b!656864 (=> (not res!291346) (not e!406211))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!656864 (= res!291346 (= (cheight!2633 (c!118187 acc!218)) (+ (max!0 (height!293 (left!5617 (c!118187 acc!218))) (height!293 (right!5947 (c!118187 acc!218)))) 1)))))

(declare-fun b!656865 () Bool)

(assert (=> b!656865 (= e!406211 (<= 0 (cheight!2633 (c!118187 acc!218))))))

(assert (= (and d!225138 res!291344) b!656863))

(assert (= (and b!656863 res!291345) b!656864))

(assert (= (and b!656864 res!291346) b!656865))

(declare-fun m!922611 () Bool)

(assert (=> d!225138 m!922611))

(declare-fun m!922613 () Bool)

(assert (=> d!225138 m!922613))

(assert (=> b!656864 m!922601))

(assert (=> b!656864 m!922603))

(assert (=> b!656864 m!922601))

(assert (=> b!656864 m!922603))

(declare-fun m!922615 () Bool)

(assert (=> b!656864 m!922615))

(assert (=> b!656677 d!225138))

(declare-fun d!225140 () Bool)

(assert (=> d!225140 true))

(assert (=> d!225140 true))

(declare-fun res!291349 () Bool)

(assert (=> d!225140 (= (choose!511 lt!279869 RightBrace!1438) res!291349)))

(assert (=> d!225068 d!225140))

(declare-fun d!225142 () Bool)

(declare-fun res!291350 () Bool)

(declare-fun e!406212 () Bool)

(assert (=> d!225142 (=> res!291350 e!406212)))

(assert (=> d!225142 (= res!291350 ((_ is Nil!7036) (t!85973 (list!2993 acc!218))))))

(assert (=> d!225142 (= (forall!1849 (t!85973 (list!2993 acc!218)) lambda!20269) e!406212)))

(declare-fun b!656866 () Bool)

(declare-fun e!406213 () Bool)

(assert (=> b!656866 (= e!406212 e!406213)))

(declare-fun res!291351 () Bool)

(assert (=> b!656866 (=> (not res!291351) (not e!406213))))

(assert (=> b!656866 (= res!291351 (dynLambda!3802 lambda!20269 (h!12437 (t!85973 (list!2993 acc!218)))))))

(declare-fun b!656867 () Bool)

(assert (=> b!656867 (= e!406213 (forall!1849 (t!85973 (t!85973 (list!2993 acc!218))) lambda!20269))))

(assert (= (and d!225142 (not res!291350)) b!656866))

(assert (= (and b!656866 res!291351) b!656867))

(declare-fun b_lambda!25627 () Bool)

(assert (=> (not b_lambda!25627) (not b!656866)))

(declare-fun m!922617 () Bool)

(assert (=> b!656866 m!922617))

(declare-fun m!922619 () Bool)

(assert (=> b!656867 m!922619))

(assert (=> b!656701 d!225142))

(declare-fun d!225144 () Bool)

(declare-fun c!118217 () Bool)

(assert (=> d!225144 (= c!118217 ((_ is Node!2422) (left!5617 (c!118187 acc!218))))))

(declare-fun e!406214 () Bool)

(assert (=> d!225144 (= (inv!8885 (left!5617 (c!118187 acc!218))) e!406214)))

(declare-fun b!656868 () Bool)

(assert (=> b!656868 (= e!406214 (inv!8890 (left!5617 (c!118187 acc!218))))))

(declare-fun b!656869 () Bool)

(declare-fun e!406215 () Bool)

(assert (=> b!656869 (= e!406214 e!406215)))

(declare-fun res!291352 () Bool)

(assert (=> b!656869 (= res!291352 (not ((_ is Leaf!3640) (left!5617 (c!118187 acc!218)))))))

(assert (=> b!656869 (=> res!291352 e!406215)))

(declare-fun b!656870 () Bool)

(assert (=> b!656870 (= e!406215 (inv!8891 (left!5617 (c!118187 acc!218))))))

(assert (= (and d!225144 c!118217) b!656868))

(assert (= (and d!225144 (not c!118217)) b!656869))

(assert (= (and b!656869 (not res!291352)) b!656870))

(declare-fun m!922621 () Bool)

(assert (=> b!656868 m!922621))

(declare-fun m!922623 () Bool)

(assert (=> b!656870 m!922623))

(assert (=> b!656730 d!225144))

(declare-fun d!225146 () Bool)

(declare-fun c!118219 () Bool)

(assert (=> d!225146 (= c!118219 ((_ is Node!2422) (right!5947 (c!118187 acc!218))))))

(declare-fun e!406219 () Bool)

(assert (=> d!225146 (= (inv!8885 (right!5947 (c!118187 acc!218))) e!406219)))

(declare-fun b!656875 () Bool)

(assert (=> b!656875 (= e!406219 (inv!8890 (right!5947 (c!118187 acc!218))))))

(declare-fun b!656876 () Bool)

(declare-fun e!406220 () Bool)

(assert (=> b!656876 (= e!406219 e!406220)))

(declare-fun res!291355 () Bool)

(assert (=> b!656876 (= res!291355 (not ((_ is Leaf!3640) (right!5947 (c!118187 acc!218)))))))

(assert (=> b!656876 (=> res!291355 e!406220)))

(declare-fun b!656877 () Bool)

(assert (=> b!656877 (= e!406220 (inv!8891 (right!5947 (c!118187 acc!218))))))

(assert (= (and d!225146 c!118219) b!656875))

(assert (= (and d!225146 (not c!118219)) b!656876))

(assert (= (and b!656876 (not res!291355)) b!656877))

(declare-fun m!922625 () Bool)

(assert (=> b!656875 m!922625))

(declare-fun m!922627 () Bool)

(assert (=> b!656877 m!922627))

(assert (=> b!656730 d!225146))

(declare-fun d!225148 () Bool)

(declare-fun c!118220 () Bool)

(assert (=> d!225148 (= c!118220 ((_ is Node!2421) (left!5616 (c!118186 ts!14))))))

(declare-fun e!406221 () Bool)

(assert (=> d!225148 (= (inv!8882 (left!5616 (c!118186 ts!14))) e!406221)))

(declare-fun b!656878 () Bool)

(assert (=> b!656878 (= e!406221 (inv!8888 (left!5616 (c!118186 ts!14))))))

(declare-fun b!656879 () Bool)

(declare-fun e!406222 () Bool)

(assert (=> b!656879 (= e!406221 e!406222)))

(declare-fun res!291356 () Bool)

(assert (=> b!656879 (= res!291356 (not ((_ is Leaf!3639) (left!5616 (c!118186 ts!14)))))))

(assert (=> b!656879 (=> res!291356 e!406222)))

(declare-fun b!656880 () Bool)

(assert (=> b!656880 (= e!406222 (inv!8889 (left!5616 (c!118186 ts!14))))))

(assert (= (and d!225148 c!118220) b!656878))

(assert (= (and d!225148 (not c!118220)) b!656879))

(assert (= (and b!656879 (not res!291356)) b!656880))

(declare-fun m!922629 () Bool)

(assert (=> b!656878 m!922629))

(declare-fun m!922633 () Bool)

(assert (=> b!656880 m!922633))

(assert (=> b!656721 d!225148))

(declare-fun d!225150 () Bool)

(declare-fun c!118221 () Bool)

(assert (=> d!225150 (= c!118221 ((_ is Node!2421) (right!5946 (c!118186 ts!14))))))

(declare-fun e!406223 () Bool)

(assert (=> d!225150 (= (inv!8882 (right!5946 (c!118186 ts!14))) e!406223)))

(declare-fun b!656881 () Bool)

(assert (=> b!656881 (= e!406223 (inv!8888 (right!5946 (c!118186 ts!14))))))

(declare-fun b!656882 () Bool)

(declare-fun e!406224 () Bool)

(assert (=> b!656882 (= e!406223 e!406224)))

(declare-fun res!291357 () Bool)

(assert (=> b!656882 (= res!291357 (not ((_ is Leaf!3639) (right!5946 (c!118186 ts!14)))))))

(assert (=> b!656882 (=> res!291357 e!406224)))

(declare-fun b!656883 () Bool)

(assert (=> b!656883 (= e!406224 (inv!8889 (right!5946 (c!118186 ts!14))))))

(assert (= (and d!225150 c!118221) b!656881))

(assert (= (and d!225150 (not c!118221)) b!656882))

(assert (= (and b!656882 (not res!291357)) b!656883))

(declare-fun m!922647 () Bool)

(assert (=> b!656881 m!922647))

(declare-fun m!922649 () Bool)

(assert (=> b!656883 m!922649))

(assert (=> b!656721 d!225150))

(declare-fun d!225154 () Bool)

(assert (=> d!225154 (= (inv!8897 (xs!5063 (c!118187 acc!218))) (<= (size!5585 (innerList!2480 (xs!5063 (c!118187 acc!218)))) 2147483647))))

(declare-fun bs!94211 () Bool)

(assert (= bs!94211 d!225154))

(declare-fun m!922651 () Bool)

(assert (=> bs!94211 m!922651))

(assert (=> b!656731 d!225154))

(declare-fun d!225156 () Bool)

(assert (=> d!225156 (= (inv!8895 (xs!5062 (c!118186 ts!14))) (<= (size!5580 (innerList!2479 (xs!5062 (c!118186 ts!14)))) 2147483647))))

(declare-fun bs!94212 () Bool)

(assert (= bs!94212 d!225156))

(declare-fun m!922653 () Bool)

(assert (=> bs!94212 m!922653))

(assert (=> b!656722 d!225156))

(declare-fun d!225158 () Bool)

(assert (=> d!225158 true))

(assert (=> d!225158 true))

(declare-fun res!291362 () Bool)

(assert (=> d!225158 (= (choose!511 lt!279869 LeftBrace!1438) res!291362)))

(assert (=> d!225088 d!225158))

(declare-fun d!225160 () Bool)

(declare-fun lt!279912 () Int)

(assert (=> d!225160 (>= lt!279912 0)))

(declare-fun e!406234 () Int)

(assert (=> d!225160 (= lt!279912 e!406234)))

(declare-fun c!118226 () Bool)

(assert (=> d!225160 (= c!118226 ((_ is Nil!7035) (list!2994 ts!14)))))

(assert (=> d!225160 (= (size!5580 (list!2994 ts!14)) lt!279912)))

(declare-fun b!656900 () Bool)

(assert (=> b!656900 (= e!406234 0)))

(declare-fun b!656901 () Bool)

(assert (=> b!656901 (= e!406234 (+ 1 (size!5580 (t!85972 (list!2994 ts!14)))))))

(assert (= (and d!225160 c!118226) b!656900))

(assert (= (and d!225160 (not c!118226)) b!656901))

(declare-fun m!922667 () Bool)

(assert (=> b!656901 m!922667))

(assert (=> d!225056 d!225160))

(assert (=> d!225056 d!225108))

(declare-fun d!225168 () Bool)

(declare-fun lt!279915 () Int)

(assert (=> d!225168 (= lt!279915 (size!5580 (list!2998 (c!118186 ts!14))))))

(assert (=> d!225168 (= lt!279915 (ite ((_ is Empty!2421) (c!118186 ts!14)) 0 (ite ((_ is Leaf!3639) (c!118186 ts!14)) (csize!5073 (c!118186 ts!14)) (csize!5072 (c!118186 ts!14)))))))

(assert (=> d!225168 (= (size!5581 (c!118186 ts!14)) lt!279915)))

(declare-fun bs!94213 () Bool)

(assert (= bs!94213 d!225168))

(assert (=> bs!94213 m!922521))

(assert (=> bs!94213 m!922521))

(declare-fun m!922669 () Bool)

(assert (=> bs!94213 m!922669))

(assert (=> d!225056 d!225168))

(declare-fun b!656924 () Bool)

(declare-fun e!406247 () List!7050)

(assert (=> b!656924 (= e!406247 Nil!7036)))

(declare-fun b!656926 () Bool)

(declare-fun e!406248 () List!7050)

(assert (=> b!656926 (= e!406248 (list!2999 (xs!5063 (c!118187 acc!218))))))

(declare-fun b!656927 () Bool)

(declare-fun ++!1878 (List!7050 List!7050) List!7050)

(assert (=> b!656927 (= e!406248 (++!1878 (list!2997 (left!5617 (c!118187 acc!218))) (list!2997 (right!5947 (c!118187 acc!218)))))))

(declare-fun d!225170 () Bool)

(declare-fun c!118237 () Bool)

(assert (=> d!225170 (= c!118237 ((_ is Empty!2422) (c!118187 acc!218)))))

(assert (=> d!225170 (= (list!2997 (c!118187 acc!218)) e!406247)))

(declare-fun b!656925 () Bool)

(assert (=> b!656925 (= e!406247 e!406248)))

(declare-fun c!118238 () Bool)

(assert (=> b!656925 (= c!118238 ((_ is Leaf!3640) (c!118187 acc!218)))))

(assert (= (and d!225170 c!118237) b!656924))

(assert (= (and d!225170 (not c!118237)) b!656925))

(assert (= (and b!656925 c!118238) b!656926))

(assert (= (and b!656925 (not c!118238)) b!656927))

(assert (=> b!656926 m!922581))

(assert (=> b!656927 m!922573))

(assert (=> b!656927 m!922575))

(assert (=> b!656927 m!922573))

(assert (=> b!656927 m!922575))

(declare-fun m!922675 () Bool)

(assert (=> b!656927 m!922675))

(assert (=> d!225096 d!225170))

(declare-fun b!656959 () Bool)

(declare-fun res!291399 () Bool)

(declare-fun e!406262 () Bool)

(assert (=> b!656959 (=> (not res!291399) (not e!406262))))

(assert (=> b!656959 (= res!291399 (isBalanced!644 (left!5616 (c!118186 ts!14))))))

(declare-fun b!656960 () Bool)

(declare-fun res!291397 () Bool)

(assert (=> b!656960 (=> (not res!291397) (not e!406262))))

(declare-fun height!294 (Conc!2421) Int)

(assert (=> b!656960 (= res!291397 (<= (- (height!294 (left!5616 (c!118186 ts!14))) (height!294 (right!5946 (c!118186 ts!14)))) 1))))

(declare-fun b!656961 () Bool)

(declare-fun res!291400 () Bool)

(assert (=> b!656961 (=> (not res!291400) (not e!406262))))

(declare-fun isEmpty!4766 (Conc!2421) Bool)

(assert (=> b!656961 (= res!291400 (not (isEmpty!4766 (left!5616 (c!118186 ts!14)))))))

(declare-fun b!656962 () Bool)

(declare-fun e!406261 () Bool)

(assert (=> b!656962 (= e!406261 e!406262)))

(declare-fun res!291396 () Bool)

(assert (=> b!656962 (=> (not res!291396) (not e!406262))))

(assert (=> b!656962 (= res!291396 (<= (- 1) (- (height!294 (left!5616 (c!118186 ts!14))) (height!294 (right!5946 (c!118186 ts!14))))))))

(declare-fun d!225174 () Bool)

(declare-fun res!291401 () Bool)

(assert (=> d!225174 (=> res!291401 e!406261)))

(assert (=> d!225174 (= res!291401 (not ((_ is Node!2421) (c!118186 ts!14))))))

(assert (=> d!225174 (= (isBalanced!644 (c!118186 ts!14)) e!406261)))

(declare-fun b!656963 () Bool)

(declare-fun res!291398 () Bool)

(assert (=> b!656963 (=> (not res!291398) (not e!406262))))

(assert (=> b!656963 (= res!291398 (isBalanced!644 (right!5946 (c!118186 ts!14))))))

(declare-fun b!656964 () Bool)

(assert (=> b!656964 (= e!406262 (not (isEmpty!4766 (right!5946 (c!118186 ts!14)))))))

(assert (= (and d!225174 (not res!291401)) b!656962))

(assert (= (and b!656962 res!291396) b!656960))

(assert (= (and b!656960 res!291397) b!656959))

(assert (= (and b!656959 res!291399) b!656963))

(assert (= (and b!656963 res!291398) b!656961))

(assert (= (and b!656961 res!291400) b!656964))

(declare-fun m!922695 () Bool)

(assert (=> b!656962 m!922695))

(declare-fun m!922697 () Bool)

(assert (=> b!656962 m!922697))

(declare-fun m!922699 () Bool)

(assert (=> b!656959 m!922699))

(declare-fun m!922701 () Bool)

(assert (=> b!656964 m!922701))

(declare-fun m!922703 () Bool)

(assert (=> b!656961 m!922703))

(declare-fun m!922705 () Bool)

(assert (=> b!656963 m!922705))

(assert (=> b!656960 m!922695))

(assert (=> b!656960 m!922697))

(assert (=> d!225066 d!225174))

(assert (=> b!656633 d!225082))

(declare-fun d!225186 () Bool)

(declare-fun res!291406 () Bool)

(declare-fun e!406268 () Bool)

(assert (=> d!225186 (=> (not res!291406) (not e!406268))))

(declare-fun list!3003 (IArray!4843) List!7049)

(assert (=> d!225186 (= res!291406 (<= (size!5580 (list!3003 (xs!5062 (c!118186 ts!14)))) 512))))

(assert (=> d!225186 (= (inv!8889 (c!118186 ts!14)) e!406268)))

(declare-fun b!656975 () Bool)

(declare-fun res!291407 () Bool)

(assert (=> b!656975 (=> (not res!291407) (not e!406268))))

(assert (=> b!656975 (= res!291407 (= (csize!5073 (c!118186 ts!14)) (size!5580 (list!3003 (xs!5062 (c!118186 ts!14))))))))

(declare-fun b!656976 () Bool)

(assert (=> b!656976 (= e!406268 (and (> (csize!5073 (c!118186 ts!14)) 0) (<= (csize!5073 (c!118186 ts!14)) 512)))))

(assert (= (and d!225186 res!291406) b!656975))

(assert (= (and b!656975 res!291407) b!656976))

(declare-fun m!922711 () Bool)

(assert (=> d!225186 m!922711))

(assert (=> d!225186 m!922711))

(declare-fun m!922713 () Bool)

(assert (=> d!225186 m!922713))

(assert (=> b!656975 m!922711))

(assert (=> b!656975 m!922711))

(assert (=> b!656975 m!922713))

(assert (=> b!656667 d!225186))

(assert (=> b!656697 d!225056))

(declare-fun d!225192 () Bool)

(declare-fun res!291414 () Bool)

(declare-fun e!406271 () Bool)

(assert (=> d!225192 (=> (not res!291414) (not e!406271))))

(assert (=> d!225192 (= res!291414 (= (csize!5072 (c!118186 ts!14)) (+ (size!5581 (left!5616 (c!118186 ts!14))) (size!5581 (right!5946 (c!118186 ts!14))))))))

(assert (=> d!225192 (= (inv!8888 (c!118186 ts!14)) e!406271)))

(declare-fun b!656983 () Bool)

(declare-fun res!291415 () Bool)

(assert (=> b!656983 (=> (not res!291415) (not e!406271))))

(assert (=> b!656983 (= res!291415 (and (not (= (left!5616 (c!118186 ts!14)) Empty!2421)) (not (= (right!5946 (c!118186 ts!14)) Empty!2421))))))

(declare-fun b!656984 () Bool)

(declare-fun res!291416 () Bool)

(assert (=> b!656984 (=> (not res!291416) (not e!406271))))

(assert (=> b!656984 (= res!291416 (= (cheight!2632 (c!118186 ts!14)) (+ (max!0 (height!294 (left!5616 (c!118186 ts!14))) (height!294 (right!5946 (c!118186 ts!14)))) 1)))))

(declare-fun b!656985 () Bool)

(assert (=> b!656985 (= e!406271 (<= 0 (cheight!2632 (c!118186 ts!14))))))

(assert (= (and d!225192 res!291414) b!656983))

(assert (= (and b!656983 res!291415) b!656984))

(assert (= (and b!656984 res!291416) b!656985))

(assert (=> d!225192 m!922543))

(declare-fun m!922717 () Bool)

(assert (=> d!225192 m!922717))

(assert (=> b!656984 m!922695))

(assert (=> b!656984 m!922697))

(assert (=> b!656984 m!922695))

(assert (=> b!656984 m!922697))

(declare-fun m!922719 () Bool)

(assert (=> b!656984 m!922719))

(assert (=> b!656665 d!225192))

(declare-fun b!657005 () Bool)

(declare-fun b_free!18969 () Bool)

(declare-fun b_next!19033 () Bool)

(assert (=> b!657005 (= b_free!18969 (not b_next!19033))))

(declare-fun tp!200648 () Bool)

(declare-fun b_and!62763 () Bool)

(assert (=> b!657005 (= tp!200648 b_and!62763)))

(declare-fun b_free!18971 () Bool)

(declare-fun b_next!19035 () Bool)

(assert (=> b!657005 (= b_free!18971 (not b_next!19035))))

(declare-fun tp!200649 () Bool)

(declare-fun b_and!62765 () Bool)

(assert (=> b!657005 (= tp!200649 b_and!62765)))

(declare-fun b!657003 () Bool)

(declare-fun e!406293 () Bool)

(declare-fun e!406289 () Bool)

(declare-fun inv!21 (TokenValue!1438) Bool)

(assert (=> b!657003 (= e!406293 (and (inv!21 (value!45165 (h!12436 (innerList!2479 (xs!5062 (c!118186 ts!14)))))) e!406289))))

(declare-fun b!657004 () Bool)

(declare-fun e!406288 () Bool)

(declare-fun inv!8877 (String!8928) Bool)

(declare-fun inv!8900 (TokenValueInjection!2628) Bool)

(assert (=> b!657004 (= e!406289 (and (inv!8877 (tag!1666 (rule!2199 (h!12436 (innerList!2479 (xs!5062 (c!118186 ts!14))))))) (inv!8900 (transformation!1404 (rule!2199 (h!12436 (innerList!2479 (xs!5062 (c!118186 ts!14))))))) e!406288))))

(assert (=> b!657005 (= e!406288 (and tp!200648 tp!200649))))

(declare-fun b!657002 () Bool)

(declare-fun tp!200650 () Bool)

(declare-fun e!406291 () Bool)

(declare-fun inv!8901 (Token!2530) Bool)

(assert (=> b!657002 (= e!406291 (and (inv!8901 (h!12436 (innerList!2479 (xs!5062 (c!118186 ts!14))))) e!406293 tp!200650))))

(assert (=> b!656723 (= tp!200635 e!406291)))

(assert (= b!657004 b!657005))

(assert (= b!657003 b!657004))

(assert (= b!657002 b!657003))

(assert (= (and b!656723 ((_ is Cons!7035) (innerList!2479 (xs!5062 (c!118186 ts!14))))) b!657002))

(declare-fun m!922721 () Bool)

(assert (=> b!657003 m!922721))

(declare-fun m!922723 () Bool)

(assert (=> b!657004 m!922723))

(declare-fun m!922725 () Bool)

(assert (=> b!657004 m!922725))

(declare-fun m!922727 () Bool)

(assert (=> b!657002 m!922727))

(declare-fun tp!200651 () Bool)

(declare-fun tp!200652 () Bool)

(declare-fun b!657006 () Bool)

(declare-fun e!406294 () Bool)

(assert (=> b!657006 (= e!406294 (and (inv!8885 (left!5617 (left!5617 (c!118187 acc!218)))) tp!200651 (inv!8885 (right!5947 (left!5617 (c!118187 acc!218)))) tp!200652))))

(declare-fun b!657007 () Bool)

(assert (=> b!657007 (= e!406294 (inv!8897 (xs!5063 (left!5617 (c!118187 acc!218)))))))

(assert (=> b!656730 (= tp!200640 (and (inv!8885 (left!5617 (c!118187 acc!218))) e!406294))))

(assert (= (and b!656730 ((_ is Node!2422) (left!5617 (c!118187 acc!218)))) b!657006))

(assert (= (and b!656730 ((_ is Leaf!3640) (left!5617 (c!118187 acc!218)))) b!657007))

(declare-fun m!922729 () Bool)

(assert (=> b!657006 m!922729))

(declare-fun m!922731 () Bool)

(assert (=> b!657006 m!922731))

(declare-fun m!922733 () Bool)

(assert (=> b!657007 m!922733))

(assert (=> b!656730 m!922507))

(declare-fun tp!200653 () Bool)

(declare-fun tp!200654 () Bool)

(declare-fun b!657008 () Bool)

(declare-fun e!406296 () Bool)

(assert (=> b!657008 (= e!406296 (and (inv!8885 (left!5617 (right!5947 (c!118187 acc!218)))) tp!200653 (inv!8885 (right!5947 (right!5947 (c!118187 acc!218)))) tp!200654))))

(declare-fun b!657009 () Bool)

(assert (=> b!657009 (= e!406296 (inv!8897 (xs!5063 (right!5947 (c!118187 acc!218)))))))

(assert (=> b!656730 (= tp!200641 (and (inv!8885 (right!5947 (c!118187 acc!218))) e!406296))))

(assert (= (and b!656730 ((_ is Node!2422) (right!5947 (c!118187 acc!218)))) b!657008))

(assert (= (and b!656730 ((_ is Leaf!3640) (right!5947 (c!118187 acc!218)))) b!657009))

(declare-fun m!922735 () Bool)

(assert (=> b!657008 m!922735))

(declare-fun m!922737 () Bool)

(assert (=> b!657008 m!922737))

(declare-fun m!922739 () Bool)

(assert (=> b!657009 m!922739))

(assert (=> b!656730 m!922509))

(declare-fun e!406298 () Bool)

(declare-fun b!657010 () Bool)

(declare-fun tp!200656 () Bool)

(declare-fun tp!200655 () Bool)

(assert (=> b!657010 (= e!406298 (and (inv!8882 (left!5616 (left!5616 (c!118186 ts!14)))) tp!200656 (inv!8882 (right!5946 (left!5616 (c!118186 ts!14)))) tp!200655))))

(declare-fun b!657012 () Bool)

(declare-fun e!406299 () Bool)

(declare-fun tp!200657 () Bool)

(assert (=> b!657012 (= e!406299 tp!200657)))

(declare-fun b!657011 () Bool)

(assert (=> b!657011 (= e!406298 (and (inv!8895 (xs!5062 (left!5616 (c!118186 ts!14)))) e!406299))))

(assert (=> b!656721 (= tp!200634 (and (inv!8882 (left!5616 (c!118186 ts!14))) e!406298))))

(assert (= (and b!656721 ((_ is Node!2421) (left!5616 (c!118186 ts!14)))) b!657010))

(assert (= b!657011 b!657012))

(assert (= (and b!656721 ((_ is Leaf!3639) (left!5616 (c!118186 ts!14)))) b!657011))

(declare-fun m!922741 () Bool)

(assert (=> b!657010 m!922741))

(declare-fun m!922743 () Bool)

(assert (=> b!657010 m!922743))

(declare-fun m!922745 () Bool)

(assert (=> b!657011 m!922745))

(assert (=> b!656721 m!922501))

(declare-fun tp!200658 () Bool)

(declare-fun b!657013 () Bool)

(declare-fun tp!200659 () Bool)

(declare-fun e!406300 () Bool)

(assert (=> b!657013 (= e!406300 (and (inv!8882 (left!5616 (right!5946 (c!118186 ts!14)))) tp!200659 (inv!8882 (right!5946 (right!5946 (c!118186 ts!14)))) tp!200658))))

(declare-fun b!657015 () Bool)

(declare-fun e!406301 () Bool)

(declare-fun tp!200660 () Bool)

(assert (=> b!657015 (= e!406301 tp!200660)))

(declare-fun b!657014 () Bool)

(assert (=> b!657014 (= e!406300 (and (inv!8895 (xs!5062 (right!5946 (c!118186 ts!14)))) e!406301))))

(assert (=> b!656721 (= tp!200633 (and (inv!8882 (right!5946 (c!118186 ts!14))) e!406300))))

(assert (= (and b!656721 ((_ is Node!2421) (right!5946 (c!118186 ts!14)))) b!657013))

(assert (= b!657014 b!657015))

(assert (= (and b!656721 ((_ is Leaf!3639) (right!5946 (c!118186 ts!14)))) b!657014))

(declare-fun m!922747 () Bool)

(assert (=> b!657013 m!922747))

(declare-fun m!922749 () Bool)

(assert (=> b!657013 m!922749))

(declare-fun m!922751 () Bool)

(assert (=> b!657014 m!922751))

(assert (=> b!656721 m!922503))

(declare-fun b_lambda!25629 () Bool)

(assert (= b_lambda!25627 (or b!656630 b_lambda!25629)))

(declare-fun bs!94217 () Bool)

(declare-fun d!225196 () Bool)

(assert (= bs!94217 (and d!225196 b!656630)))

(assert (=> bs!94217 (= (dynLambda!3802 lambda!20269 (h!12437 (t!85973 (list!2993 acc!218)))) (and (<= 0 (h!12437 (t!85973 (list!2993 acc!218)))) (< (h!12437 (t!85973 (list!2993 acc!218))) size!101)))))

(assert (=> b!656866 d!225196))

(declare-fun b_lambda!25631 () Bool)

(assert (= b_lambda!25621 (or b!656630 b_lambda!25631)))

(declare-fun bs!94218 () Bool)

(declare-fun d!225198 () Bool)

(assert (= bs!94218 (and d!225198 b!656630)))

(assert (=> bs!94218 (= (dynLambda!3802 lambda!20269 (h!12437 (t!85973 (Cons!7036 from!502 Nil!7036)))) (and (<= 0 (h!12437 (t!85973 (Cons!7036 from!502 Nil!7036)))) (< (h!12437 (t!85973 (Cons!7036 from!502 Nil!7036))) size!101)))))

(assert (=> b!656786 d!225198))

(check-sat (not b_next!19035) (not d!225106) (not b!656782) (not b!656867) (not b!656847) (not b!657006) (not b!656802) (not b!656926) (not b!656877) (not b!656864) (not b!656878) (not d!225156) (not b!657008) (not d!225118) (not b!657003) (not b!657002) (not b!656964) (not b_lambda!25619) (not b_next!19033) (not b!656845) (not b!657015) (not b!656787) (not d!225126) (not b!656803) (not b!656738) (not b!656721) (not b!656960) (not b!656959) (not b!657012) (not b!656901) (not b!656821) (not b_lambda!25617) (not b_lambda!25629) (not d!225186) (not b!657013) (not b!656740) (not b!656875) (not d!225110) (not b!657011) (not b!657009) (not b!656927) (not b!656870) (not d!225192) b_and!62765 (not b!657004) b_and!62763 (not d!225138) (not b!656881) (not b!656844) (not b!656780) (not b!657007) (not b!656975) (not b!656848) (not b!656963) (not b!656783) (not b!656846) (not b!656804) (not d!225168) (not b!656880) (not b!657014) (not b!656739) (not d!225108) (not b!656868) (not b!656843) (not b!656984) (not b!656883) (not b_lambda!25631) (not b!657010) (not b!656961) (not b!656962) (not bm!42263) (not b!656784) (not d!225154) (not b!656730))
(check-sat b_and!62765 b_and!62763 (not b_next!19035) (not b_next!19033))
