; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!129070 () Bool)

(assert start!129070)

(declare-fun res!639079 () Bool)

(declare-fun e!900818 () Bool)

(assert (=> start!129070 (=> (not res!639079) (not e!900818))))

(declare-datatypes ((List!14469 0))(
  ( (Nil!14403) (Cons!14403 (h!19804 (_ BitVec 16)) (t!123502 List!14469)) )
))
(declare-datatypes ((TokenValue!2590 0))(
  ( (FloatLiteralValue!5180 (text!18575 List!14469)) (TokenValueExt!2589 (__x!9002 Int)) (Broken!12950 (value!80858 List!14469)) (Object!2655) (End!2590) (Def!2590) (Underscore!2590) (Match!2590) (Else!2590) (Error!2590) (Case!2590) (If!2590) (Extends!2590) (Abstract!2590) (Class!2590) (Val!2590) (DelimiterValue!5180 (del!2650 List!14469)) (KeywordValue!2596 (value!80859 List!14469)) (CommentValue!5180 (value!80860 List!14469)) (WhitespaceValue!5180 (value!80861 List!14469)) (IndentationValue!2590 (value!80862 List!14469)) (String!17187) (Int32!2590) (Broken!12951 (value!80863 List!14469)) (Boolean!2591) (Unit!20909) (OperatorValue!2593 (op!2650 List!14469)) (IdentifierValue!5180 (value!80864 List!14469)) (IdentifierValue!5181 (value!80865 List!14469)) (WhitespaceValue!5181 (value!80866 List!14469)) (True!5180) (False!5180) (Broken!12952 (value!80867 List!14469)) (Broken!12953 (value!80868 List!14469)) (True!5181) (RightBrace!2590) (RightBracket!2590) (Colon!2590) (Null!2590) (Comma!2590) (LeftBracket!2590) (False!5181) (LeftBrace!2590) (ImaginaryLiteralValue!2590 (text!18576 List!14469)) (StringLiteralValue!7770 (value!80869 List!14469)) (EOFValue!2590 (value!80870 List!14469)) (IdentValue!2590 (value!80871 List!14469)) (DelimiterValue!5181 (value!80872 List!14469)) (DedentValue!2590 (value!80873 List!14469)) (NewLineValue!2590 (value!80874 List!14469)) (IntegerValue!7770 (value!80875 (_ BitVec 32)) (text!18577 List!14469)) (IntegerValue!7771 (value!80876 Int) (text!18578 List!14469)) (Times!2590) (Or!2590) (Equal!2590) (Minus!2590) (Broken!12954 (value!80877 List!14469)) (And!2590) (Div!2590) (LessEqual!2590) (Mod!2590) (Concat!6404) (Not!2590) (Plus!2590) (SpaceValue!2590 (value!80878 List!14469)) (IntegerValue!7772 (value!80879 Int) (text!18579 List!14469)) (StringLiteralValue!7771 (text!18580 List!14469)) (FloatLiteralValue!5181 (text!18581 List!14469)) (BytesLiteralValue!2590 (value!80880 List!14469)) (CommentValue!5181 (value!80881 List!14469)) (StringLiteralValue!7772 (value!80882 List!14469)) (ErrorTokenValue!2590 (msg!2651 List!14469)) )
))
(declare-datatypes ((Regex!3814 0))(
  ( (ElementMatch!3814 (c!231879 (_ BitVec 16))) (Concat!6405 (regOne!8140 Regex!3814) (regTwo!8140 Regex!3814)) (EmptyExpr!3814) (Star!3814 (reg!4143 Regex!3814)) (EmptyLang!3814) (Union!3814 (regOne!8141 Regex!3814) (regTwo!8141 Regex!3814)) )
))
(declare-datatypes ((String!17188 0))(
  ( (String!17189 (value!80883 String)) )
))
(declare-datatypes ((IArray!9553 0))(
  ( (IArray!9554 (innerList!4834 List!14469)) )
))
(declare-datatypes ((Conc!4774 0))(
  ( (Node!4774 (left!12302 Conc!4774) (right!12632 Conc!4774) (csize!9778 Int) (cheight!4985 Int)) (Leaf!7221 (xs!7501 IArray!9553) (csize!9779 Int)) (Empty!4774) )
))
(declare-datatypes ((BalanceConc!9488 0))(
  ( (BalanceConc!9489 (c!231880 Conc!4774)) )
))
(declare-datatypes ((TokenValueInjection!4840 0))(
  ( (TokenValueInjection!4841 (toValue!3795 Int) (toChars!3654 Int)) )
))
(declare-datatypes ((Rule!4800 0))(
  ( (Rule!4801 (regex!2500 Regex!3814) (tag!2762 String!17188) (isSeparator!2500 Bool) (transformation!2500 TokenValueInjection!4840)) )
))
(declare-datatypes ((Token!4662 0))(
  ( (Token!4663 (value!80884 TokenValue!2590) (rule!4263 Rule!4800) (size!11863 Int) (originalCharacters!3362 List!14469)) )
))
(declare-datatypes ((List!14470 0))(
  ( (Nil!14404) (Cons!14404 (h!19805 Token!4662) (t!123503 List!14470)) )
))
(declare-datatypes ((IArray!9555 0))(
  ( (IArray!9556 (innerList!4835 List!14470)) )
))
(declare-datatypes ((Conc!4775 0))(
  ( (Node!4775 (left!12303 Conc!4775) (right!12633 Conc!4775) (csize!9780 Int) (cheight!4986 Int)) (Leaf!7222 (xs!7502 IArray!9555) (csize!9781 Int)) (Empty!4775) )
))
(declare-datatypes ((List!14471 0))(
  ( (Nil!14405) (Cons!14405 (h!19806 Rule!4800) (t!123504 List!14471)) )
))
(declare-datatypes ((BalanceConc!9490 0))(
  ( (BalanceConc!9491 (c!231881 Conc!4775)) )
))
(declare-datatypes ((PrintableTokens!782 0))(
  ( (PrintableTokens!783 (rules!11001 List!14471) (tokens!1737 BalanceConc!9490)) )
))
(declare-datatypes ((List!14472 0))(
  ( (Nil!14406) (Cons!14406 (h!19807 PrintableTokens!782) (t!123505 List!14472)) )
))
(declare-datatypes ((IArray!9557 0))(
  ( (IArray!9558 (innerList!4836 List!14472)) )
))
(declare-datatypes ((Conc!4776 0))(
  ( (Node!4776 (left!12304 Conc!4776) (right!12634 Conc!4776) (csize!9782 Int) (cheight!4987 Int)) (Leaf!7223 (xs!7503 IArray!9557) (csize!9783 Int)) (Empty!4776) )
))
(declare-datatypes ((BalanceConc!9492 0))(
  ( (BalanceConc!9493 (c!231882 Conc!4776)) )
))
(declare-fun objs!24 () BalanceConc!9492)

(declare-fun lambda!62382 () Int)

(declare-fun forall!3516 (BalanceConc!9492 Int) Bool)

(assert (=> start!129070 (= res!639079 (forall!3516 objs!24 lambda!62382))))

(assert (=> start!129070 e!900818))

(declare-fun e!900816 () Bool)

(declare-fun inv!18793 (BalanceConc!9492) Bool)

(assert (=> start!129070 (and (inv!18793 objs!24) e!900816)))

(declare-fun acc!229 () PrintableTokens!782)

(declare-fun e!900811 () Bool)

(declare-fun inv!18794 (PrintableTokens!782) Bool)

(assert (=> start!129070 (and (inv!18794 acc!229) e!900811)))

(declare-fun sep!3 () PrintableTokens!782)

(declare-fun e!900813 () Bool)

(assert (=> start!129070 (and (inv!18794 sep!3) e!900813)))

(declare-fun b!1411076 () Bool)

(declare-fun res!639080 () Bool)

(assert (=> b!1411076 (=> (not res!639080) (not e!900818))))

(declare-fun usesJsonRules!0 (PrintableTokens!782) Bool)

(assert (=> b!1411076 (= res!639080 (usesJsonRules!0 acc!229))))

(declare-fun b!1411077 () Bool)

(declare-fun e!900814 () Bool)

(declare-fun e!900815 () Bool)

(assert (=> b!1411077 (= e!900814 e!900815)))

(declare-fun res!639075 () Bool)

(assert (=> b!1411077 (=> (not res!639075) (not e!900815))))

(declare-datatypes ((Option!2761 0))(
  ( (None!2760) (Some!2760 (v!21810 PrintableTokens!782)) )
))
(declare-fun lt!471949 () Option!2761)

(declare-fun isEmpty!8795 (Option!2761) Bool)

(assert (=> b!1411077 (= res!639075 (not (isEmpty!8795 lt!471949)))))

(declare-fun lt!471950 () Option!2761)

(declare-fun recombineSlicesWithSep!0 (BalanceConc!9492 PrintableTokens!782 PrintableTokens!782) Option!2761)

(declare-fun tail!2061 (BalanceConc!9492) BalanceConc!9492)

(assert (=> b!1411077 (= lt!471949 (recombineSlicesWithSep!0 (tail!2061 objs!24) sep!3 (v!21810 lt!471950)))))

(declare-fun b!1411078 () Bool)

(declare-fun isDefined!2256 (Option!2761) Bool)

(assert (=> b!1411078 (= e!900815 (not (isDefined!2256 lt!471949)))))

(declare-fun b!1411079 () Bool)

(declare-fun res!639081 () Bool)

(assert (=> b!1411079 (=> (not res!639081) (not e!900818))))

(declare-fun size!11864 (BalanceConc!9492) Int)

(assert (=> b!1411079 (= res!639081 (= (size!11864 objs!24) 1))))

(declare-fun e!900817 () Bool)

(declare-fun tp!400559 () Bool)

(declare-fun b!1411080 () Bool)

(declare-fun inv!18795 (BalanceConc!9490) Bool)

(assert (=> b!1411080 (= e!900811 (and tp!400559 (inv!18795 (tokens!1737 acc!229)) e!900817))))

(declare-fun b!1411081 () Bool)

(declare-fun tp!400560 () Bool)

(declare-fun inv!18796 (Conc!4775) Bool)

(assert (=> b!1411081 (= e!900817 (and (inv!18796 (c!231881 (tokens!1737 acc!229))) tp!400560))))

(declare-fun b!1411082 () Bool)

(declare-fun tp!400563 () Bool)

(declare-fun inv!18797 (Conc!4776) Bool)

(assert (=> b!1411082 (= e!900816 (and (inv!18797 (c!231882 objs!24)) tp!400563))))

(declare-fun tp!400562 () Bool)

(declare-fun e!900812 () Bool)

(declare-fun b!1411083 () Bool)

(assert (=> b!1411083 (= e!900813 (and tp!400562 (inv!18795 (tokens!1737 sep!3)) e!900812))))

(declare-fun b!1411084 () Bool)

(declare-fun res!639078 () Bool)

(assert (=> b!1411084 (=> (not res!639078) (not e!900818))))

(declare-fun isEmpty!8796 (BalanceConc!9492) Bool)

(assert (=> b!1411084 (= res!639078 (not (isEmpty!8796 objs!24)))))

(declare-fun b!1411085 () Bool)

(declare-fun tp!400561 () Bool)

(assert (=> b!1411085 (= e!900812 (and (inv!18796 (c!231881 (tokens!1737 sep!3))) tp!400561))))

(declare-fun b!1411086 () Bool)

(declare-fun res!639076 () Bool)

(assert (=> b!1411086 (=> (not res!639076) (not e!900818))))

(assert (=> b!1411086 (= res!639076 (usesJsonRules!0 sep!3))))

(declare-fun b!1411087 () Bool)

(assert (=> b!1411087 (= e!900818 e!900814)))

(declare-fun res!639077 () Bool)

(assert (=> b!1411087 (=> (not res!639077) (not e!900814))))

(assert (=> b!1411087 (= res!639077 (is-Some!2760 lt!471950))))

(declare-fun append!421 (PrintableTokens!782 PrintableTokens!782) Option!2761)

(declare-fun head!2664 (BalanceConc!9492) PrintableTokens!782)

(assert (=> b!1411087 (= lt!471950 (append!421 acc!229 (head!2664 objs!24)))))

(assert (= (and start!129070 res!639079) b!1411076))

(assert (= (and b!1411076 res!639080) b!1411086))

(assert (= (and b!1411086 res!639076) b!1411084))

(assert (= (and b!1411084 res!639078) b!1411079))

(assert (= (and b!1411079 res!639081) b!1411087))

(assert (= (and b!1411087 res!639077) b!1411077))

(assert (= (and b!1411077 res!639075) b!1411078))

(assert (= start!129070 b!1411082))

(assert (= b!1411080 b!1411081))

(assert (= start!129070 b!1411080))

(assert (= b!1411083 b!1411085))

(assert (= start!129070 b!1411083))

(declare-fun m!1591315 () Bool)

(assert (=> b!1411082 m!1591315))

(declare-fun m!1591317 () Bool)

(assert (=> b!1411079 m!1591317))

(declare-fun m!1591319 () Bool)

(assert (=> b!1411083 m!1591319))

(declare-fun m!1591321 () Bool)

(assert (=> b!1411085 m!1591321))

(declare-fun m!1591323 () Bool)

(assert (=> b!1411077 m!1591323))

(declare-fun m!1591325 () Bool)

(assert (=> b!1411077 m!1591325))

(assert (=> b!1411077 m!1591325))

(declare-fun m!1591327 () Bool)

(assert (=> b!1411077 m!1591327))

(declare-fun m!1591329 () Bool)

(assert (=> b!1411086 m!1591329))

(declare-fun m!1591331 () Bool)

(assert (=> b!1411081 m!1591331))

(declare-fun m!1591333 () Bool)

(assert (=> b!1411087 m!1591333))

(assert (=> b!1411087 m!1591333))

(declare-fun m!1591335 () Bool)

(assert (=> b!1411087 m!1591335))

(declare-fun m!1591337 () Bool)

(assert (=> b!1411078 m!1591337))

(declare-fun m!1591339 () Bool)

(assert (=> b!1411076 m!1591339))

(declare-fun m!1591341 () Bool)

(assert (=> start!129070 m!1591341))

(declare-fun m!1591343 () Bool)

(assert (=> start!129070 m!1591343))

(declare-fun m!1591345 () Bool)

(assert (=> start!129070 m!1591345))

(declare-fun m!1591347 () Bool)

(assert (=> start!129070 m!1591347))

(declare-fun m!1591349 () Bool)

(assert (=> b!1411080 m!1591349))

(declare-fun m!1591351 () Bool)

(assert (=> b!1411084 m!1591351))

(push 1)

(assert (not b!1411084))

(assert (not start!129070))

(assert (not b!1411076))

(assert (not b!1411079))

(assert (not b!1411085))

(assert (not b!1411081))

(assert (not b!1411080))

(assert (not b!1411086))

(assert (not b!1411082))

(assert (not b!1411087))

(assert (not b!1411077))

(assert (not b!1411078))

(assert (not b!1411083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!403373 () Bool)

(declare-fun lt!471959 () Bool)

(declare-fun isEmpty!8799 (List!14472) Bool)

(declare-fun list!5644 (BalanceConc!9492) List!14472)

(assert (=> d!403373 (= lt!471959 (isEmpty!8799 (list!5644 objs!24)))))

(declare-fun isEmpty!8800 (Conc!4776) Bool)

(assert (=> d!403373 (= lt!471959 (isEmpty!8800 (c!231882 objs!24)))))

(assert (=> d!403373 (= (isEmpty!8796 objs!24) lt!471959)))

(declare-fun bs!338941 () Bool)

(assert (= bs!338941 d!403373))

(declare-fun m!1591391 () Bool)

(assert (=> bs!338941 m!1591391))

(assert (=> bs!338941 m!1591391))

(declare-fun m!1591393 () Bool)

(assert (=> bs!338941 m!1591393))

(declare-fun m!1591395 () Bool)

(assert (=> bs!338941 m!1591395))

(assert (=> b!1411084 d!403373))

(declare-fun d!403375 () Bool)

(declare-fun lt!471962 () Bool)

(declare-fun forall!3518 (List!14472 Int) Bool)

(assert (=> d!403375 (= lt!471962 (forall!3518 (list!5644 objs!24) lambda!62382))))

(declare-fun forall!3519 (Conc!4776 Int) Bool)

(assert (=> d!403375 (= lt!471962 (forall!3519 (c!231882 objs!24) lambda!62382))))

(assert (=> d!403375 (= (forall!3516 objs!24 lambda!62382) lt!471962)))

(declare-fun bs!338942 () Bool)

(assert (= bs!338942 d!403375))

(assert (=> bs!338942 m!1591391))

(assert (=> bs!338942 m!1591391))

(declare-fun m!1591397 () Bool)

(assert (=> bs!338942 m!1591397))

(declare-fun m!1591399 () Bool)

(assert (=> bs!338942 m!1591399))

(assert (=> start!129070 d!403375))

(declare-fun d!403379 () Bool)

(declare-fun isBalanced!1409 (Conc!4776) Bool)

(assert (=> d!403379 (= (inv!18793 objs!24) (isBalanced!1409 (c!231882 objs!24)))))

(declare-fun bs!338943 () Bool)

(assert (= bs!338943 d!403379))

(declare-fun m!1591401 () Bool)

(assert (=> bs!338943 m!1591401))

(assert (=> start!129070 d!403379))

(declare-fun d!403381 () Bool)

(declare-fun res!639111 () Bool)

(declare-fun e!900845 () Bool)

(assert (=> d!403381 (=> (not res!639111) (not e!900845))))

(declare-fun isEmpty!8801 (List!14471) Bool)

(assert (=> d!403381 (= res!639111 (not (isEmpty!8801 (rules!11001 acc!229))))))

(assert (=> d!403381 (= (inv!18794 acc!229) e!900845)))

(declare-fun b!1411130 () Bool)

(declare-fun res!639112 () Bool)

(assert (=> b!1411130 (=> (not res!639112) (not e!900845))))

(declare-datatypes ((LexerInterface!2188 0))(
  ( (LexerInterfaceExt!2185 (__x!9004 Int)) (Lexer!2186) )
))
(declare-fun rulesInvariant!2058 (LexerInterface!2188 List!14471) Bool)

(assert (=> b!1411130 (= res!639112 (rulesInvariant!2058 Lexer!2186 (rules!11001 acc!229)))))

(declare-fun b!1411131 () Bool)

(declare-fun res!639113 () Bool)

(assert (=> b!1411131 (=> (not res!639113) (not e!900845))))

(declare-fun rulesProduceEachTokenIndividually!785 (LexerInterface!2188 List!14471 BalanceConc!9490) Bool)

(assert (=> b!1411131 (= res!639113 (rulesProduceEachTokenIndividually!785 Lexer!2186 (rules!11001 acc!229) (tokens!1737 acc!229)))))

(declare-fun b!1411132 () Bool)

(declare-fun separableTokens!170 (LexerInterface!2188 BalanceConc!9490 List!14471) Bool)

(assert (=> b!1411132 (= e!900845 (separableTokens!170 Lexer!2186 (tokens!1737 acc!229) (rules!11001 acc!229)))))

(assert (= (and d!403381 res!639111) b!1411130))

(assert (= (and b!1411130 res!639112) b!1411131))

(assert (= (and b!1411131 res!639113) b!1411132))

(declare-fun m!1591403 () Bool)

(assert (=> d!403381 m!1591403))

(declare-fun m!1591405 () Bool)

(assert (=> b!1411130 m!1591405))

(declare-fun m!1591407 () Bool)

(assert (=> b!1411131 m!1591407))

(declare-fun m!1591409 () Bool)

(assert (=> b!1411132 m!1591409))

(assert (=> start!129070 d!403381))

(declare-fun d!403383 () Bool)

(declare-fun res!639114 () Bool)

(declare-fun e!900846 () Bool)

(assert (=> d!403383 (=> (not res!639114) (not e!900846))))

(assert (=> d!403383 (= res!639114 (not (isEmpty!8801 (rules!11001 sep!3))))))

(assert (=> d!403383 (= (inv!18794 sep!3) e!900846)))

(declare-fun b!1411133 () Bool)

(declare-fun res!639115 () Bool)

(assert (=> b!1411133 (=> (not res!639115) (not e!900846))))

(assert (=> b!1411133 (= res!639115 (rulesInvariant!2058 Lexer!2186 (rules!11001 sep!3)))))

(declare-fun b!1411134 () Bool)

(declare-fun res!639116 () Bool)

(assert (=> b!1411134 (=> (not res!639116) (not e!900846))))

(assert (=> b!1411134 (= res!639116 (rulesProduceEachTokenIndividually!785 Lexer!2186 (rules!11001 sep!3) (tokens!1737 sep!3)))))

(declare-fun b!1411135 () Bool)

(assert (=> b!1411135 (= e!900846 (separableTokens!170 Lexer!2186 (tokens!1737 sep!3) (rules!11001 sep!3)))))

(assert (= (and d!403383 res!639114) b!1411133))

(assert (= (and b!1411133 res!639115) b!1411134))

(assert (= (and b!1411134 res!639116) b!1411135))

(declare-fun m!1591411 () Bool)

(assert (=> d!403383 m!1591411))

(declare-fun m!1591413 () Bool)

(assert (=> b!1411133 m!1591413))

(declare-fun m!1591415 () Bool)

(assert (=> b!1411134 m!1591415))

(declare-fun m!1591417 () Bool)

(assert (=> b!1411135 m!1591417))

(assert (=> start!129070 d!403383))

(declare-fun d!403385 () Bool)

(declare-fun isBalanced!1410 (Conc!4775) Bool)

(assert (=> d!403385 (= (inv!18795 (tokens!1737 sep!3)) (isBalanced!1410 (c!231881 (tokens!1737 sep!3))))))

(declare-fun bs!338944 () Bool)

(assert (= bs!338944 d!403385))

(declare-fun m!1591419 () Bool)

(assert (=> bs!338944 m!1591419))

(assert (=> b!1411083 d!403385))

(declare-fun d!403387 () Bool)

(declare-fun c!231889 () Bool)

(assert (=> d!403387 (= c!231889 (is-Node!4775 (c!231881 (tokens!1737 acc!229))))))

(declare-fun e!900851 () Bool)

(assert (=> d!403387 (= (inv!18796 (c!231881 (tokens!1737 acc!229))) e!900851)))

(declare-fun b!1411142 () Bool)

(declare-fun inv!18803 (Conc!4775) Bool)

(assert (=> b!1411142 (= e!900851 (inv!18803 (c!231881 (tokens!1737 acc!229))))))

(declare-fun b!1411143 () Bool)

(declare-fun e!900852 () Bool)

(assert (=> b!1411143 (= e!900851 e!900852)))

(declare-fun res!639119 () Bool)

(assert (=> b!1411143 (= res!639119 (not (is-Leaf!7222 (c!231881 (tokens!1737 acc!229)))))))

(assert (=> b!1411143 (=> res!639119 e!900852)))

(declare-fun b!1411144 () Bool)

(declare-fun inv!18804 (Conc!4775) Bool)

(assert (=> b!1411144 (= e!900852 (inv!18804 (c!231881 (tokens!1737 acc!229))))))

(assert (= (and d!403387 c!231889) b!1411142))

(assert (= (and d!403387 (not c!231889)) b!1411143))

(assert (= (and b!1411143 (not res!639119)) b!1411144))

(declare-fun m!1591421 () Bool)

(assert (=> b!1411142 m!1591421))

(declare-fun m!1591423 () Bool)

(assert (=> b!1411144 m!1591423))

(assert (=> b!1411081 d!403387))

(declare-fun d!403389 () Bool)

(declare-fun c!231892 () Bool)

(assert (=> d!403389 (= c!231892 (is-Node!4776 (c!231882 objs!24)))))

(declare-fun e!900857 () Bool)

(assert (=> d!403389 (= (inv!18797 (c!231882 objs!24)) e!900857)))

(declare-fun b!1411151 () Bool)

(declare-fun inv!18805 (Conc!4776) Bool)

(assert (=> b!1411151 (= e!900857 (inv!18805 (c!231882 objs!24)))))

(declare-fun b!1411152 () Bool)

(declare-fun e!900858 () Bool)

(assert (=> b!1411152 (= e!900857 e!900858)))

(declare-fun res!639122 () Bool)

(assert (=> b!1411152 (= res!639122 (not (is-Leaf!7223 (c!231882 objs!24))))))

(assert (=> b!1411152 (=> res!639122 e!900858)))

(declare-fun b!1411153 () Bool)

(declare-fun inv!18806 (Conc!4776) Bool)

(assert (=> b!1411153 (= e!900858 (inv!18806 (c!231882 objs!24)))))

(assert (= (and d!403389 c!231892) b!1411151))

(assert (= (and d!403389 (not c!231892)) b!1411152))

(assert (= (and b!1411152 (not res!639122)) b!1411153))

(declare-fun m!1591425 () Bool)

(assert (=> b!1411151 m!1591425))

(declare-fun m!1591427 () Bool)

(assert (=> b!1411153 m!1591427))

(assert (=> b!1411082 d!403389))

(declare-fun d!403391 () Bool)

(assert (=> d!403391 (= (inv!18795 (tokens!1737 acc!229)) (isBalanced!1410 (c!231881 (tokens!1737 acc!229))))))

(declare-fun bs!338945 () Bool)

(assert (= bs!338945 d!403391))

(declare-fun m!1591429 () Bool)

(assert (=> bs!338945 m!1591429))

(assert (=> b!1411080 d!403391))

(declare-fun d!403393 () Bool)

(declare-fun lt!471965 () Int)

(declare-fun size!11867 (List!14472) Int)

(assert (=> d!403393 (= lt!471965 (size!11867 (list!5644 objs!24)))))

(declare-fun size!11868 (Conc!4776) Int)

(assert (=> d!403393 (= lt!471965 (size!11868 (c!231882 objs!24)))))

(assert (=> d!403393 (= (size!11864 objs!24) lt!471965)))

(declare-fun bs!338946 () Bool)

(assert (= bs!338946 d!403393))

(assert (=> bs!338946 m!1591391))

(assert (=> bs!338946 m!1591391))

(declare-fun m!1591431 () Bool)

(assert (=> bs!338946 m!1591431))

(declare-fun m!1591433 () Bool)

(assert (=> bs!338946 m!1591433))

(assert (=> b!1411079 d!403393))

(declare-fun d!403395 () Bool)

(assert (=> d!403395 (= (isEmpty!8795 lt!471949) (not (is-Some!2760 lt!471949)))))

(assert (=> b!1411077 d!403395))

(declare-fun bs!338948 () Bool)

(declare-fun d!403397 () Bool)

(assert (= bs!338948 (and d!403397 start!129070)))

(declare-fun lambda!62388 () Int)

(assert (=> bs!338948 (= lambda!62388 lambda!62382)))

(declare-fun b!1411176 () Bool)

(declare-fun e!900871 () Option!2761)

(assert (=> b!1411176 (= e!900871 None!2760)))

(declare-fun b!1411177 () Bool)

(declare-fun e!900873 () Option!2761)

(assert (=> b!1411177 (= e!900873 None!2760)))

(declare-fun lt!471977 () Option!2761)

(declare-fun lt!471975 () Option!2761)

(declare-fun bm!94341 () Bool)

(declare-fun call!94346 () Option!2761)

(declare-fun call!94349 () BalanceConc!9492)

(declare-fun c!231904 () Bool)

(assert (=> bm!94341 (= call!94346 (recombineSlicesWithSep!0 call!94349 sep!3 (ite c!231904 (v!21810 lt!471977) (v!21810 lt!471975))))))

(declare-fun b!1411179 () Bool)

(declare-fun e!900875 () Option!2761)

(declare-fun e!900872 () Option!2761)

(assert (=> b!1411179 (= e!900875 e!900872)))

(assert (=> b!1411179 (= c!231904 (= (size!11864 (tail!2061 objs!24)) 1))))

(declare-fun bm!94342 () Bool)

(assert (=> bm!94342 (= call!94349 (tail!2061 (tail!2061 objs!24)))))

(declare-fun b!1411180 () Bool)

(assert (=> b!1411180 (= e!900873 e!900871)))

(declare-fun call!94348 () Option!2761)

(assert (=> b!1411180 (= lt!471975 call!94348)))

(declare-fun c!231903 () Bool)

(assert (=> b!1411180 (= c!231903 (is-Some!2760 lt!471975))))

(declare-fun b!1411181 () Bool)

(assert (=> b!1411181 (= e!900875 (Some!2760 (v!21810 lt!471950)))))

(declare-fun b!1411182 () Bool)

(declare-fun e!900874 () Option!2761)

(assert (=> b!1411182 (= e!900874 call!94346)))

(declare-fun b!1411183 () Bool)

(declare-fun e!900876 () Bool)

(declare-fun lt!471976 () Option!2761)

(declare-fun get!4434 (Option!2761) PrintableTokens!782)

(assert (=> b!1411183 (= e!900876 (usesJsonRules!0 (get!4434 lt!471976)))))

(declare-fun b!1411184 () Bool)

(declare-fun c!231906 () Bool)

(assert (=> b!1411184 (= c!231906 (is-Some!2760 lt!471977))))

(assert (=> b!1411184 (= lt!471977 call!94348)))

(assert (=> b!1411184 (= e!900872 e!900874)))

(assert (=> d!403397 e!900876))

(declare-fun res!639125 () Bool)

(assert (=> d!403397 (=> res!639125 e!900876)))

(assert (=> d!403397 (= res!639125 (isEmpty!8795 lt!471976))))

(assert (=> d!403397 (= lt!471976 e!900875)))

(declare-fun c!231905 () Bool)

(assert (=> d!403397 (= c!231905 (isEmpty!8796 (tail!2061 objs!24)))))

(assert (=> d!403397 (forall!3516 (tail!2061 objs!24) lambda!62388)))

(assert (=> d!403397 (= (recombineSlicesWithSep!0 (tail!2061 objs!24) sep!3 (v!21810 lt!471950)) lt!471976)))

(declare-fun b!1411178 () Bool)

(assert (=> b!1411178 (= e!900874 None!2760)))

(declare-fun bm!94343 () Bool)

(declare-fun call!94347 () PrintableTokens!782)

(assert (=> bm!94343 (= call!94347 (head!2664 (tail!2061 objs!24)))))

(declare-fun b!1411185 () Bool)

(assert (=> b!1411185 (= e!900871 call!94346)))

(declare-fun b!1411186 () Bool)

(declare-fun c!231907 () Bool)

(declare-fun lt!471974 () Option!2761)

(assert (=> b!1411186 (= c!231907 (is-Some!2760 lt!471974))))

(assert (=> b!1411186 (= lt!471974 (append!421 call!94347 sep!3))))

(assert (=> b!1411186 (= e!900872 e!900873)))

(declare-fun bm!94344 () Bool)

(assert (=> bm!94344 (= call!94348 (append!421 (v!21810 lt!471950) (ite c!231904 call!94347 (v!21810 lt!471974))))))

(assert (= (and d!403397 c!231905) b!1411181))

(assert (= (and d!403397 (not c!231905)) b!1411179))

(assert (= (and b!1411179 c!231904) b!1411184))

(assert (= (and b!1411179 (not c!231904)) b!1411186))

(assert (= (and b!1411184 c!231906) b!1411182))

(assert (= (and b!1411184 (not c!231906)) b!1411178))

(assert (= (and b!1411186 c!231907) b!1411180))

(assert (= (and b!1411186 (not c!231907)) b!1411177))

(assert (= (and b!1411180 c!231903) b!1411185))

(assert (= (and b!1411180 (not c!231903)) b!1411176))

(assert (= (or b!1411184 b!1411186) bm!94343))

(assert (= (or b!1411182 b!1411185) bm!94342))

(assert (= (or b!1411184 b!1411180) bm!94344))

(assert (= (or b!1411182 b!1411185) bm!94341))

(assert (= (and d!403397 (not res!639125)) b!1411183))

(declare-fun m!1591437 () Bool)

(assert (=> d!403397 m!1591437))

(assert (=> d!403397 m!1591325))

(declare-fun m!1591439 () Bool)

(assert (=> d!403397 m!1591439))

(assert (=> d!403397 m!1591325))

(declare-fun m!1591441 () Bool)

(assert (=> d!403397 m!1591441))

(declare-fun m!1591443 () Bool)

(assert (=> bm!94341 m!1591443))

(assert (=> b!1411179 m!1591325))

(declare-fun m!1591445 () Bool)

(assert (=> b!1411179 m!1591445))

(assert (=> bm!94343 m!1591325))

(declare-fun m!1591447 () Bool)

(assert (=> bm!94343 m!1591447))

(declare-fun m!1591449 () Bool)

(assert (=> b!1411186 m!1591449))

(assert (=> bm!94342 m!1591325))

(declare-fun m!1591451 () Bool)

(assert (=> bm!94342 m!1591451))

(declare-fun m!1591453 () Bool)

(assert (=> b!1411183 m!1591453))

(assert (=> b!1411183 m!1591453))

(declare-fun m!1591455 () Bool)

(assert (=> b!1411183 m!1591455))

(declare-fun m!1591457 () Bool)

(assert (=> bm!94344 m!1591457))

(assert (=> b!1411077 d!403397))

(declare-fun d!403401 () Bool)

(declare-fun e!900879 () Bool)

(assert (=> d!403401 e!900879))

(declare-fun res!639128 () Bool)

(assert (=> d!403401 (=> (not res!639128) (not e!900879))))

(declare-fun tail!2063 (Conc!4776) Conc!4776)

(assert (=> d!403401 (= res!639128 (isBalanced!1409 (tail!2063 (c!231882 objs!24))))))

(declare-fun lt!471980 () BalanceConc!9492)

(assert (=> d!403401 (= lt!471980 (BalanceConc!9493 (tail!2063 (c!231882 objs!24))))))

(assert (=> d!403401 (not (isEmpty!8796 objs!24))))

(assert (=> d!403401 (= (tail!2061 objs!24) lt!471980)))

(declare-fun b!1411189 () Bool)

(declare-fun tail!2064 (List!14472) List!14472)

(assert (=> b!1411189 (= e!900879 (= (list!5644 lt!471980) (tail!2064 (list!5644 objs!24))))))

(assert (= (and d!403401 res!639128) b!1411189))

(declare-fun m!1591459 () Bool)

(assert (=> d!403401 m!1591459))

(assert (=> d!403401 m!1591459))

(declare-fun m!1591461 () Bool)

(assert (=> d!403401 m!1591461))

(assert (=> d!403401 m!1591351))

(declare-fun m!1591463 () Bool)

(assert (=> b!1411189 m!1591463))

(assert (=> b!1411189 m!1591391))

(assert (=> b!1411189 m!1591391))

(declare-fun m!1591465 () Bool)

(assert (=> b!1411189 m!1591465))

(assert (=> b!1411077 d!403401))

(declare-fun d!403403 () Bool)

(assert (=> d!403403 (= (isDefined!2256 lt!471949) (not (isEmpty!8795 lt!471949)))))

(declare-fun bs!338949 () Bool)

(assert (= bs!338949 d!403403))

(assert (=> bs!338949 m!1591323))

(assert (=> b!1411078 d!403403))

(declare-fun d!403405 () Bool)

(declare-datatypes ((JsonLexer!380 0))(
  ( (JsonLexer!381) )
))
(declare-fun rules!109 (JsonLexer!380) List!14471)

(assert (=> d!403405 (= (usesJsonRules!0 acc!229) (= (rules!11001 acc!229) (rules!109 JsonLexer!381)))))

(declare-fun bs!338950 () Bool)

(assert (= bs!338950 d!403405))

(declare-fun m!1591467 () Bool)

(assert (=> bs!338950 m!1591467))

(assert (=> b!1411076 d!403405))

(declare-fun lt!472350 () Option!2761)

(declare-fun b!1411293 () Bool)

(declare-fun e!900936 () Bool)

(declare-fun list!5645 (BalanceConc!9488) List!14469)

(declare-fun print!953 (PrintableTokens!782) BalanceConc!9488)

(declare-fun ++!3753 (List!14469 List!14469) List!14469)

(assert (=> b!1411293 (= e!900936 (= (list!5645 (print!953 (get!4434 lt!472350))) (++!3753 (list!5645 (print!953 acc!229)) (list!5645 (print!953 (head!2664 objs!24))))))))

(declare-fun call!94568 () List!14470)

(declare-fun bm!94540 () Bool)

(declare-fun c!231949 () Bool)

(declare-fun call!94551 () List!14470)

(declare-fun lt!472320 () LexerInterface!2188)

(declare-fun call!94550 () List!14470)

(declare-fun c!231955 () Bool)

(declare-fun call!94579 () List!14469)

(declare-fun printList!649 (LexerInterface!2188 List!14470) List!14469)

(assert (=> bm!94540 (= call!94579 (printList!649 (ite (or c!231955 c!231949) Lexer!2186 lt!472320) (ite c!231955 call!94568 (ite c!231949 call!94551 call!94550))))))

(declare-fun bm!94541 () Bool)

(declare-datatypes ((Unit!20911 0))(
  ( (Unit!20912) )
))
(declare-fun call!94555 () Unit!20911)

(declare-fun call!94574 () Unit!20911)

(assert (=> bm!94541 (= call!94555 call!94574)))

(declare-fun bm!94543 () Bool)

(declare-fun call!94577 () List!14470)

(assert (=> bm!94543 (= call!94550 call!94577)))

(declare-fun b!1411294 () Bool)

(declare-fun e!900940 () List!14469)

(declare-fun call!94554 () List!14469)

(assert (=> b!1411294 (= e!900940 call!94554)))

(declare-fun bm!94544 () Bool)

(declare-fun c!231952 () Bool)

(assert (=> bm!94544 (= c!231952 c!231949)))

(declare-fun call!94548 () List!14469)

(declare-fun call!94575 () List!14469)

(assert (=> bm!94544 (= call!94548 call!94575)))

(declare-fun b!1411295 () Bool)

(assert (=> b!1411295 (= e!900940 Nil!14403)))

(declare-fun lt!472316 () LexerInterface!2188)

(declare-fun call!94569 () List!14469)

(declare-fun e!900934 () List!14470)

(declare-fun bm!94545 () Bool)

(declare-fun lt!472343 () LexerInterface!2188)

(assert (=> bm!94545 (= call!94569 (printList!649 (ite c!231955 Lexer!2186 (ite c!231949 lt!472316 lt!472343)) (ite c!231955 Nil!14404 e!900934)))))

(declare-fun bm!94546 () Bool)

(declare-fun call!94564 () List!14469)

(declare-fun call!94561 () List!14469)

(assert (=> bm!94546 (= call!94564 call!94561)))

(declare-fun bm!94547 () Bool)

(declare-fun call!94559 () List!14469)

(assert (=> bm!94547 (= call!94559 call!94579)))

(declare-fun lt!472372 () List!14470)

(declare-fun lt!472330 () List!14470)

(declare-fun lt!472331 () List!14470)

(declare-fun bm!94548 () Bool)

(declare-fun lt!472356 () List!14470)

(declare-fun lt!472359 () List!14470)

(declare-fun lt!472335 () LexerInterface!2188)

(declare-fun lt!472317 () List!14470)

(declare-fun lemmaPrintConcatSameAsConcatPrint!14 (LexerInterface!2188 List!14470 List!14470) Unit!20911)

(assert (=> bm!94548 (= call!94574 (lemmaPrintConcatSameAsConcatPrint!14 (ite c!231955 lt!472335 (ite c!231949 lt!472316 lt!472343)) (ite c!231955 lt!472372 (ite c!231949 lt!472356 lt!472330)) (ite c!231955 lt!472331 (ite c!231949 lt!472317 lt!472359))))))

(declare-fun b!1411296 () Bool)

(declare-fun ++!3754 (List!14470 List!14470) List!14470)

(assert (=> b!1411296 (= e!900934 (++!3754 lt!472330 lt!472359))))

(declare-fun b!1411297 () Bool)

(assert (=> b!1411297 (= e!900934 call!94550)))

(declare-fun bm!94549 () Bool)

(declare-fun call!94557 () BalanceConc!9488)

(declare-fun call!94545 () BalanceConc!9488)

(assert (=> bm!94549 (= call!94557 call!94545)))

(declare-fun d!403407 () Bool)

(declare-fun e!900932 () Bool)

(assert (=> d!403407 e!900932))

(declare-fun res!639157 () Bool)

(assert (=> d!403407 (=> res!639157 e!900932)))

(assert (=> d!403407 (= res!639157 (isEmpty!8795 lt!472350))))

(declare-fun e!900937 () Option!2761)

(assert (=> d!403407 (= lt!472350 e!900937)))

(declare-fun isEmpty!8802 (BalanceConc!9490) Bool)

(assert (=> d!403407 (= c!231955 (isEmpty!8802 (tokens!1737 (head!2664 objs!24))))))

(declare-fun lt!472314 () Unit!20911)

(declare-fun lemmaInvariant!221 (PrintableTokens!782) Unit!20911)

(assert (=> d!403407 (= lt!472314 (lemmaInvariant!221 acc!229))))

(declare-fun lt!472375 () Unit!20911)

(assert (=> d!403407 (= lt!472375 (lemmaInvariant!221 (head!2664 objs!24)))))

(assert (=> d!403407 (= (rules!11001 acc!229) (rules!11001 (head!2664 objs!24)))))

(assert (=> d!403407 (= (append!421 acc!229 (head!2664 objs!24)) lt!472350)))

(declare-fun bm!94542 () Bool)

(declare-fun call!94562 () List!14470)

(assert (=> bm!94542 (= call!94562 call!94568)))

(declare-fun bm!94550 () Bool)

(declare-fun list!5646 (BalanceConc!9490) List!14470)

(assert (=> bm!94550 (= call!94568 (list!5646 (ite c!231955 (tokens!1737 (head!2664 objs!24)) (ite c!231949 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24))))))))

(declare-fun b!1411298 () Bool)

(declare-fun c!231954 () Bool)

(declare-fun separableTokensPredicate!470 (LexerInterface!2188 Token!4662 Token!4662 List!14471) Bool)

(declare-fun last!63 (BalanceConc!9490) Token!4662)

(declare-fun head!2666 (BalanceConc!9490) Token!4662)

(assert (=> b!1411298 (= c!231954 (separableTokensPredicate!470 Lexer!2186 (last!63 (tokens!1737 acc!229)) (head!2666 (tokens!1737 (head!2664 objs!24))) (rules!11001 acc!229)))))

(declare-fun lt!472324 () Unit!20911)

(declare-fun lt!472333 () Unit!20911)

(assert (=> b!1411298 (= lt!472324 lt!472333)))

(declare-fun lt!472353 () LexerInterface!2188)

(declare-fun lt!472337 () Token!4662)

(declare-fun rulesProduceIndividualToken!1156 (LexerInterface!2188 List!14471 Token!4662) Bool)

(assert (=> b!1411298 (rulesProduceIndividualToken!1156 lt!472353 (rules!11001 acc!229) lt!472337)))

(declare-fun lt!472357 () List!14470)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!341 (LexerInterface!2188 List!14471 List!14470 Token!4662) Unit!20911)

(assert (=> b!1411298 (= lt!472333 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!341 lt!472353 (rules!11001 acc!229) lt!472357 lt!472337))))

(assert (=> b!1411298 (= lt!472337 (head!2666 (tokens!1737 (head!2664 objs!24))))))

(assert (=> b!1411298 (= lt!472357 call!94562)))

(assert (=> b!1411298 (= lt!472353 Lexer!2186)))

(declare-fun lt!472374 () Unit!20911)

(declare-fun lt!472346 () Unit!20911)

(assert (=> b!1411298 (= lt!472374 lt!472346)))

(declare-fun lt!472368 () LexerInterface!2188)

(declare-fun lt!472365 () Token!4662)

(assert (=> b!1411298 (rulesProduceIndividualToken!1156 lt!472368 (rules!11001 acc!229) lt!472365)))

(declare-fun lt!472352 () List!14470)

(assert (=> b!1411298 (= lt!472346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!341 lt!472368 (rules!11001 acc!229) lt!472352 lt!472365))))

(assert (=> b!1411298 (= lt!472365 (last!63 (tokens!1737 acc!229)))))

(assert (=> b!1411298 (= lt!472352 call!94551)))

(assert (=> b!1411298 (= lt!472368 Lexer!2186)))

(declare-fun e!900935 () Option!2761)

(declare-fun e!900938 () Option!2761)

(assert (=> b!1411298 (= e!900935 e!900938)))

(declare-fun call!94573 () List!14470)

(declare-fun bm!94551 () Bool)

(assert (=> bm!94551 (= call!94573 (list!5646 (ite c!231955 (tokens!1737 acc!229) (ite c!231949 (tokens!1737 (head!2664 objs!24)) (tokens!1737 acc!229)))))))

(declare-fun call!94583 () List!14469)

(declare-fun bm!94552 () Bool)

(declare-fun lt!472327 () List!14470)

(assert (=> bm!94552 (= call!94583 (printList!649 (ite c!231955 lt!472335 (ite c!231949 lt!472316 lt!472320)) (ite c!231955 call!94577 (ite c!231949 lt!472356 lt!472327))))))

(declare-fun bm!94553 () Bool)

(declare-fun call!94578 () Unit!20911)

(declare-fun call!94565 () Unit!20911)

(assert (=> bm!94553 (= call!94578 call!94565)))

(declare-fun bm!94554 () Bool)

(assert (=> bm!94554 (= call!94551 call!94573)))

(declare-fun b!1411299 () Bool)

(declare-fun e!900939 () List!14469)

(assert (=> b!1411299 (= e!900939 Nil!14403)))

(declare-fun b!1411300 () Bool)

(assert (=> b!1411300 (= e!900932 e!900936)))

(declare-fun res!639158 () Bool)

(assert (=> b!1411300 (=> (not res!639158) (not e!900936))))

(assert (=> b!1411300 (= res!639158 (= (rules!11001 (get!4434 lt!472350)) (rules!11001 acc!229)))))

(declare-fun bm!94555 () Bool)

(declare-fun call!94547 () List!14469)

(assert (=> bm!94555 (= call!94547 call!94554)))

(declare-fun b!1411301 () Bool)

(assert (=> b!1411301 (= e!900937 e!900935)))

(assert (=> b!1411301 (= c!231949 (isEmpty!8802 (tokens!1737 acc!229)))))

(declare-fun lt!472328 () List!14470)

(declare-fun call!94552 () List!14469)

(declare-fun bm!94556 () Bool)

(assert (=> bm!94556 (= call!94552 (printList!649 (ite c!231955 lt!472335 (ite c!231949 Lexer!2186 lt!472343)) (ite c!231955 lt!472372 (ite c!231949 (t!123503 lt!472328) lt!472330))))))

(declare-fun b!1411302 () Bool)

(declare-fun res!639156 () Bool)

(assert (=> b!1411302 (=> (not res!639156) (not e!900936))))

(assert (=> b!1411302 (= res!639156 (= (list!5646 (tokens!1737 (get!4434 lt!472350))) (++!3754 (list!5646 (tokens!1737 acc!229)) (list!5646 (tokens!1737 (head!2664 objs!24))))))))

(declare-fun b!1411303 () Bool)

(declare-fun lt!472363 () Unit!20911)

(declare-fun Unit!20913 () Unit!20911)

(assert (=> b!1411303 (= lt!472363 Unit!20913)))

(assert (=> b!1411303 (= call!94559 e!900939)))

(declare-fun c!231950 () Bool)

(assert (=> b!1411303 (= c!231950 (is-Cons!14404 lt!472328))))

(assert (=> b!1411303 (= lt!472328 call!94551)))

(declare-fun lt!472315 () Unit!20911)

(declare-fun Unit!20914 () Unit!20911)

(assert (=> b!1411303 (= lt!472315 Unit!20914)))

(declare-fun call!94563 () BalanceConc!9488)

(assert (=> b!1411303 (= call!94557 call!94563)))

(declare-fun lt!472340 () Unit!20911)

(declare-fun Unit!20915 () Unit!20911)

(assert (=> b!1411303 (= lt!472340 Unit!20915)))

(declare-fun call!94582 () BalanceConc!9488)

(assert (=> b!1411303 (= call!94582 call!94557)))

(declare-fun lt!472318 () Unit!20911)

(declare-fun call!94553 () Unit!20911)

(assert (=> b!1411303 (= lt!472318 call!94553)))

(declare-fun lt!472348 () Unit!20911)

(declare-fun Unit!20916 () Unit!20911)

(assert (=> b!1411303 (= lt!472348 Unit!20916)))

(declare-fun call!94581 () BalanceConc!9488)

(declare-fun call!94567 () BalanceConc!9488)

(assert (=> b!1411303 (= call!94581 call!94567)))

(declare-fun lt!472323 () Unit!20911)

(assert (=> b!1411303 (= lt!472323 call!94578)))

(declare-fun lt!472354 () Unit!20911)

(declare-fun Unit!20917 () Unit!20911)

(assert (=> b!1411303 (= lt!472354 Unit!20917)))

(assert (=> b!1411303 (= call!94564 Nil!14403)))

(declare-fun lt!472360 () Unit!20911)

(declare-fun lt!472369 () Unit!20911)

(assert (=> b!1411303 (= lt!472360 lt!472369)))

(declare-fun call!94576 () List!14469)

(assert (=> b!1411303 (= call!94576 call!94547)))

(assert (=> b!1411303 (= lt!472369 call!94555)))

(assert (=> b!1411303 (= lt!472317 call!94551)))

(assert (=> b!1411303 (= lt!472356 Nil!14404)))

(assert (=> b!1411303 (= lt!472316 Lexer!2186)))

(assert (=> b!1411303 (= e!900935 (Some!2760 (head!2664 objs!24)))))

(declare-fun bm!94557 () Bool)

(declare-fun call!94566 () BalanceConc!9488)

(assert (=> bm!94557 (= call!94566 (print!953 (ite c!231955 acc!229 (ite c!231949 (head!2664 objs!24) acc!229))))))

(declare-fun bm!94558 () Bool)

(declare-fun call!94558 () List!14469)

(assert (=> bm!94558 (= call!94558 call!94583)))

(declare-fun lt!472334 () List!14470)

(declare-fun bm!94559 () Bool)

(assert (=> bm!94559 (= call!94577 (++!3754 (ite c!231955 lt!472372 (ite c!231949 lt!472356 lt!472334)) (ite c!231955 lt!472331 (ite c!231949 lt!472317 lt!472327))))))

(declare-fun call!94580 () Unit!20911)

(declare-fun bm!94560 () Bool)

(declare-fun theoremInvertabilityWhenTokenListSeparable!19 (LexerInterface!2188 List!14471 List!14470) Unit!20911)

(assert (=> bm!94560 (= call!94580 (theoremInvertabilityWhenTokenListSeparable!19 Lexer!2186 (ite c!231955 (rules!11001 acc!229) (rules!11001 (head!2664 objs!24))) (ite c!231955 call!94573 (ite c!231949 call!94551 call!94562))))))

(declare-fun bm!94561 () Bool)

(declare-fun call!94570 () BalanceConc!9488)

(assert (=> bm!94561 (= call!94581 call!94570)))

(declare-fun bm!94562 () Bool)

(declare-fun printTailRec!631 (LexerInterface!2188 BalanceConc!9490 Int BalanceConc!9488) BalanceConc!9488)

(assert (=> bm!94562 (= call!94563 (printTailRec!631 Lexer!2186 (tokens!1737 (head!2664 objs!24)) 0 (BalanceConc!9489 Empty!4774)))))

(declare-fun bm!94563 () Bool)

(declare-fun e!900933 () List!14469)

(declare-fun call!94546 () List!14469)

(declare-fun call!94549 () List!14469)

(assert (=> bm!94563 (= call!94575 (++!3753 (ite c!231955 call!94552 e!900933) (ite c!231955 call!94561 (ite c!231949 call!94546 call!94549))))))

(declare-fun bm!94564 () Bool)

(assert (=> bm!94564 (= call!94565 (theoremInvertabilityWhenTokenListSeparable!19 Lexer!2186 (ite c!231955 (rules!11001 (head!2664 objs!24)) (rules!11001 acc!229)) (ite c!231955 call!94568 (ite c!231949 call!94562 call!94551))))))

(declare-fun bm!94565 () Bool)

(declare-fun call!94572 () List!14469)

(assert (=> bm!94565 (= call!94549 call!94572)))

(declare-fun b!1411304 () Bool)

(declare-fun call!94571 () List!14469)

(assert (=> b!1411304 (= e!900933 call!94571)))

(declare-fun bm!94566 () Bool)

(assert (=> bm!94566 (= call!94546 call!94552)))

(declare-fun b!1411305 () Bool)

(assert (=> b!1411305 (= e!900937 (Some!2760 acc!229))))

(assert (=> b!1411305 (= lt!472335 Lexer!2186)))

(assert (=> b!1411305 (= lt!472372 call!94573)))

(assert (=> b!1411305 (= lt!472331 Nil!14404)))

(declare-fun lt!472366 () Unit!20911)

(assert (=> b!1411305 (= lt!472366 call!94574)))

(assert (=> b!1411305 (= call!94583 call!94575)))

(declare-fun lt!472376 () Unit!20911)

(assert (=> b!1411305 (= lt!472376 lt!472366)))

(assert (=> b!1411305 (= call!94569 Nil!14403)))

(declare-fun lt!472364 () Unit!20911)

(declare-fun Unit!20918 () Unit!20911)

(assert (=> b!1411305 (= lt!472364 Unit!20918)))

(declare-fun lt!472344 () Unit!20911)

(assert (=> b!1411305 (= lt!472344 call!94580)))

(declare-fun call!94560 () BalanceConc!9488)

(assert (=> b!1411305 (= call!94566 call!94560)))

(declare-fun lt!472361 () Unit!20911)

(declare-fun Unit!20919 () Unit!20911)

(assert (=> b!1411305 (= lt!472361 Unit!20919)))

(declare-fun lt!472349 () Unit!20911)

(assert (=> b!1411305 (= lt!472349 call!94565)))

(assert (=> b!1411305 (= call!94570 call!94545)))

(declare-fun lt!472325 () Unit!20911)

(declare-fun Unit!20920 () Unit!20911)

(assert (=> b!1411305 (= lt!472325 Unit!20920)))

(assert (=> b!1411305 (= call!94545 call!94563)))

(declare-fun lt!472373 () Unit!20911)

(declare-fun Unit!20921 () Unit!20911)

(assert (=> b!1411305 (= lt!472373 Unit!20921)))

(declare-fun lt!472345 () List!14470)

(assert (=> b!1411305 (= lt!472345 call!94568)))

(declare-fun c!231951 () Bool)

(assert (=> b!1411305 (= c!231951 (is-Cons!14404 lt!472345))))

(assert (=> b!1411305 (= call!94579 e!900940)))

(declare-fun lt!472319 () Unit!20911)

(declare-fun Unit!20922 () Unit!20911)

(assert (=> b!1411305 (= lt!472319 Unit!20922)))

(declare-fun bm!94567 () Bool)

(declare-fun call!94556 () BalanceConc!9488)

(assert (=> bm!94567 (= call!94571 (list!5645 call!94556))))

(declare-fun b!1411306 () Bool)

(assert (=> b!1411306 (= e!900933 call!94546)))

(declare-fun bm!94568 () Bool)

(declare-fun charsOf!1464 (Token!4662) BalanceConc!9488)

(assert (=> bm!94568 (= call!94556 (charsOf!1464 (ite c!231955 (h!19805 lt!472345) (h!19805 lt!472328))))))

(declare-fun bm!94569 () Bool)

(declare-fun c!231953 () Bool)

(assert (=> bm!94569 (= c!231953 c!231949)))

(assert (=> bm!94569 (= call!94576 call!94569)))

(declare-fun bm!94570 () Bool)

(assert (=> bm!94570 (= call!94582 call!94566)))

(declare-fun bm!94571 () Bool)

(assert (=> bm!94571 (= call!94572 (printList!649 (ite c!231955 Lexer!2186 (ite c!231949 lt!472316 lt!472343)) (ite c!231955 (t!123503 lt!472345) (ite c!231949 lt!472317 lt!472359))))))

(declare-fun bm!94572 () Bool)

(assert (=> bm!94572 (= call!94570 (print!953 (ite c!231955 (head!2664 objs!24) (ite c!231949 acc!229 (head!2664 objs!24)))))))

(declare-fun bm!94573 () Bool)

(assert (=> bm!94573 (= call!94561 (printList!649 (ite c!231955 lt!472335 (ite c!231949 Lexer!2186 lt!472320)) (ite c!231955 lt!472331 (ite c!231949 Nil!14404 lt!472334))))))

(declare-fun bm!94574 () Bool)

(declare-fun print!954 (LexerInterface!2188 BalanceConc!9490) BalanceConc!9488)

(assert (=> bm!94574 (= call!94560 (print!954 Lexer!2186 (tokens!1737 acc!229)))))

(declare-fun bm!94575 () Bool)

(assert (=> bm!94575 (= call!94553 call!94580)))

(declare-fun b!1411307 () Bool)

(declare-fun ++!3755 (BalanceConc!9490 BalanceConc!9490) BalanceConc!9490)

(assert (=> b!1411307 (= e!900938 (Some!2760 (PrintableTokens!783 (rules!11001 acc!229) (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24))))))))

(declare-fun lt!472326 () LexerInterface!2188)

(assert (=> b!1411307 (= lt!472326 Lexer!2186)))

(declare-fun lt!472321 () List!14470)

(assert (=> b!1411307 (= lt!472321 call!94551)))

(declare-fun lt!472370 () List!14470)

(assert (=> b!1411307 (= lt!472370 call!94562)))

(declare-fun lt!472322 () Unit!20911)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!14 (LexerInterface!2188 List!14470 List!14470 List!14471) Unit!20911)

(assert (=> b!1411307 (= lt!472322 (tokensListTwoByTwoPredicateConcatSeparableTokensList!14 lt!472326 lt!472321 lt!472370 (rules!11001 acc!229)))))

(declare-fun lt!472355 () Unit!20911)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!14 (LexerInterface!2188 List!14471 List!14470 List!14470) Unit!20911)

(assert (=> b!1411307 (= lt!472355 (lemmaRulesProduceEachTokenIndividuallyConcat!14 lt!472326 (rules!11001 acc!229) lt!472321 lt!472370))))

(declare-fun rulesProduceEachTokenIndividuallyList!672 (LexerInterface!2188 List!14471 List!14470) Bool)

(assert (=> b!1411307 (rulesProduceEachTokenIndividuallyList!672 lt!472326 (rules!11001 acc!229) (++!3754 lt!472321 lt!472370))))

(declare-fun lt!472347 () Unit!20911)

(assert (=> b!1411307 (= lt!472347 lt!472355)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!193 (LexerInterface!2188 List!14470 List!14471) Bool)

(assert (=> b!1411307 (tokensListTwoByTwoPredicateSeparableList!193 lt!472326 (++!3754 lt!472321 lt!472370) (rules!11001 acc!229))))

(declare-fun lt!472339 () Unit!20911)

(assert (=> b!1411307 (= lt!472339 lt!472322)))

(assert (=> b!1411307 (= lt!472343 Lexer!2186)))

(assert (=> b!1411307 (= lt!472330 call!94551)))

(assert (=> b!1411307 (= lt!472359 call!94562)))

(declare-fun lt!472342 () Unit!20911)

(assert (=> b!1411307 (= lt!472342 call!94555)))

(assert (=> b!1411307 (= call!94576 call!94548)))

(declare-fun lt!472313 () Unit!20911)

(assert (=> b!1411307 (= lt!472313 lt!472342)))

(declare-fun lt!472341 () Unit!20911)

(assert (=> b!1411307 (= lt!472341 call!94578)))

(assert (=> b!1411307 (= call!94582 call!94567)))

(declare-fun lt!472338 () Unit!20911)

(declare-fun Unit!20923 () Unit!20911)

(assert (=> b!1411307 (= lt!472338 Unit!20923)))

(declare-fun lt!472358 () Unit!20911)

(assert (=> b!1411307 (= lt!472358 call!94553)))

(assert (=> b!1411307 (= call!94581 call!94557)))

(declare-fun lt!472371 () Unit!20911)

(declare-fun Unit!20924 () Unit!20911)

(assert (=> b!1411307 (= lt!472371 Unit!20924)))

(declare-fun lt!472367 () PrintableTokens!782)

(assert (=> b!1411307 (= lt!472367 (PrintableTokens!783 (rules!11001 acc!229) (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24)))))))

(declare-fun lt!472332 () BalanceConc!9490)

(assert (=> b!1411307 (= lt!472332 (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24))))))

(declare-fun lt!472329 () Unit!20911)

(assert (=> b!1411307 (= lt!472329 (theoremInvertabilityWhenTokenListSeparable!19 Lexer!2186 (rules!11001 acc!229) (list!5646 (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24))))))))

(assert (=> b!1411307 (= (print!953 (PrintableTokens!783 (rules!11001 acc!229) (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24))))) (print!954 Lexer!2186 (++!3755 (tokens!1737 acc!229) (tokens!1737 (head!2664 objs!24)))))))

(declare-fun lt!472362 () Unit!20911)

(declare-fun Unit!20925 () Unit!20911)

(assert (=> b!1411307 (= lt!472362 Unit!20925)))

(assert (=> b!1411307 (= lt!472320 Lexer!2186)))

(assert (=> b!1411307 (= lt!472334 call!94551)))

(assert (=> b!1411307 (= lt!472327 call!94562)))

(declare-fun lt!472351 () Unit!20911)

(assert (=> b!1411307 (= lt!472351 (lemmaPrintConcatSameAsConcatPrint!14 lt!472320 lt!472334 lt!472327))))

(assert (=> b!1411307 (= call!94559 call!94547)))

(declare-fun lt!472336 () Unit!20911)

(assert (=> b!1411307 (= lt!472336 lt!472351)))

(declare-fun b!1411308 () Bool)

(assert (=> b!1411308 (= e!900938 None!2760)))

(declare-fun bm!94576 () Bool)

(assert (=> bm!94576 (= call!94545 (print!954 Lexer!2186 (tokens!1737 (head!2664 objs!24))))))

(declare-fun bm!94577 () Bool)

(assert (=> bm!94577 (= call!94567 call!94560)))

(declare-fun bm!94578 () Bool)

(assert (=> bm!94578 (= call!94554 (++!3753 (ite c!231955 call!94571 (ite c!231949 call!94558 call!94564)) (ite c!231955 call!94572 (ite c!231949 call!94549 call!94558))))))

(declare-fun b!1411309 () Bool)

(assert (=> b!1411309 (= e!900939 call!94548)))

(assert (= (and d!403407 c!231955) b!1411305))

(assert (= (and d!403407 (not c!231955)) b!1411301))

(assert (= (and b!1411305 c!231951) b!1411294))

(assert (= (and b!1411305 (not c!231951)) b!1411295))

(assert (= (and b!1411301 c!231949) b!1411303))

(assert (= (and b!1411301 (not c!231949)) b!1411298))

(assert (= (and b!1411303 c!231950) b!1411309))

(assert (= (and b!1411303 (not c!231950)) b!1411299))

(assert (= (and b!1411298 c!231954) b!1411307))

(assert (= (and b!1411298 (not c!231954)) b!1411308))

(assert (= (or b!1411303 b!1411298 b!1411307) bm!94542))

(assert (= (or b!1411303 b!1411307) bm!94546))

(assert (= (or b!1411303 b!1411307) bm!94561))

(assert (= (or b!1411309 b!1411307) bm!94566))

(assert (= (or b!1411303 b!1411298 b!1411307) bm!94554))

(assert (= (or b!1411303 b!1411307) bm!94543))

(assert (= (or b!1411303 b!1411307) bm!94558))

(assert (= (or b!1411303 b!1411307) bm!94577))

(assert (= (or b!1411303 b!1411307) bm!94541))

(assert (= (or b!1411303 b!1411307) bm!94549))

(assert (= (or b!1411303 b!1411307) bm!94570))

(assert (= (or b!1411303 b!1411307) bm!94565))

(assert (= (or b!1411303 b!1411307) bm!94575))

(assert (= (or b!1411303 b!1411307) bm!94553))

(assert (= (or b!1411303 b!1411307) bm!94569))

(assert (= (and bm!94569 c!231953) b!1411297))

(assert (= (and bm!94569 (not c!231953)) b!1411296))

(assert (= (or b!1411303 b!1411307) bm!94547))

(assert (= (or b!1411303 b!1411307) bm!94555))

(assert (= (or b!1411309 b!1411307) bm!94544))

(assert (= (and bm!94544 c!231952) b!1411304))

(assert (= (and bm!94544 (not c!231952)) b!1411306))

(assert (= (or b!1411305 bm!94569) bm!94545))

(assert (= (or b!1411305 b!1411303) bm!94562))

(assert (= (or b!1411305 bm!94541) bm!94548))

(assert (= (or b!1411305 bm!94566) bm!94556))

(assert (= (or b!1411305 bm!94549) bm!94576))

(assert (= (or b!1411305 bm!94546) bm!94573))

(assert (= (or b!1411305 bm!94542) bm!94550))

(assert (= (or b!1411305 bm!94570) bm!94557))

(assert (= (or b!1411294 bm!94565) bm!94571))

(assert (= (or b!1411305 bm!94577) bm!94574))

(assert (= (or b!1411305 bm!94554) bm!94551))

(assert (= (or b!1411294 b!1411304) bm!94568))

(assert (= (or b!1411305 bm!94561) bm!94572))

(assert (= (or b!1411305 bm!94543) bm!94559))

(assert (= (or b!1411305 bm!94558) bm!94552))

(assert (= (or b!1411305 bm!94575) bm!94560))

(assert (= (or b!1411305 bm!94553) bm!94564))

(assert (= (or b!1411305 bm!94547) bm!94540))

(assert (= (or b!1411305 bm!94544) bm!94563))

(assert (= (or b!1411294 b!1411304) bm!94567))

(assert (= (or b!1411294 bm!94555) bm!94578))

(assert (= (and d!403407 (not res!639157)) b!1411300))

(assert (= (and b!1411300 res!639158) b!1411302))

(assert (= (and b!1411302 res!639156) b!1411293))

(declare-fun m!1591617 () Bool)

(assert (=> b!1411296 m!1591617))

(declare-fun m!1591619 () Bool)

(assert (=> bm!94545 m!1591619))

(declare-fun m!1591621 () Bool)

(assert (=> bm!94572 m!1591621))

(declare-fun m!1591623 () Bool)

(assert (=> bm!94562 m!1591623))

(declare-fun m!1591625 () Bool)

(assert (=> bm!94567 m!1591625))

(declare-fun m!1591627 () Bool)

(assert (=> bm!94568 m!1591627))

(declare-fun m!1591629 () Bool)

(assert (=> b!1411307 m!1591629))

(declare-fun m!1591631 () Bool)

(assert (=> b!1411307 m!1591631))

(declare-fun m!1591633 () Bool)

(assert (=> b!1411307 m!1591633))

(declare-fun m!1591635 () Bool)

(assert (=> b!1411307 m!1591635))

(assert (=> b!1411307 m!1591635))

(declare-fun m!1591637 () Bool)

(assert (=> b!1411307 m!1591637))

(declare-fun m!1591639 () Bool)

(assert (=> b!1411307 m!1591639))

(assert (=> b!1411307 m!1591635))

(declare-fun m!1591641 () Bool)

(assert (=> b!1411307 m!1591641))

(assert (=> b!1411307 m!1591631))

(declare-fun m!1591643 () Bool)

(assert (=> b!1411307 m!1591643))

(assert (=> b!1411307 m!1591629))

(declare-fun m!1591645 () Bool)

(assert (=> b!1411307 m!1591645))

(declare-fun m!1591647 () Bool)

(assert (=> b!1411307 m!1591647))

(assert (=> b!1411307 m!1591629))

(declare-fun m!1591649 () Bool)

(assert (=> b!1411307 m!1591649))

(declare-fun m!1591651 () Bool)

(assert (=> bm!94576 m!1591651))

(declare-fun m!1591653 () Bool)

(assert (=> bm!94556 m!1591653))

(declare-fun m!1591655 () Bool)

(assert (=> b!1411301 m!1591655))

(declare-fun m!1591657 () Bool)

(assert (=> bm!94550 m!1591657))

(declare-fun m!1591659 () Bool)

(assert (=> b!1411302 m!1591659))

(declare-fun m!1591661 () Bool)

(assert (=> b!1411302 m!1591661))

(declare-fun m!1591663 () Bool)

(assert (=> b!1411302 m!1591663))

(declare-fun m!1591665 () Bool)

(assert (=> b!1411302 m!1591665))

(declare-fun m!1591667 () Bool)

(assert (=> b!1411302 m!1591667))

(assert (=> b!1411302 m!1591661))

(assert (=> b!1411302 m!1591663))

(declare-fun m!1591669 () Bool)

(assert (=> bm!94540 m!1591669))

(declare-fun m!1591671 () Bool)

(assert (=> bm!94551 m!1591671))

(declare-fun m!1591673 () Bool)

(assert (=> bm!94564 m!1591673))

(declare-fun m!1591675 () Bool)

(assert (=> bm!94559 m!1591675))

(declare-fun m!1591677 () Bool)

(assert (=> b!1411293 m!1591677))

(declare-fun m!1591679 () Bool)

(assert (=> b!1411293 m!1591679))

(declare-fun m!1591681 () Bool)

(assert (=> b!1411293 m!1591681))

(assert (=> b!1411293 m!1591659))

(assert (=> b!1411293 m!1591679))

(declare-fun m!1591683 () Bool)

(assert (=> b!1411293 m!1591683))

(declare-fun m!1591685 () Bool)

(assert (=> b!1411293 m!1591685))

(declare-fun m!1591687 () Bool)

(assert (=> b!1411293 m!1591687))

(assert (=> b!1411293 m!1591677))

(assert (=> b!1411293 m!1591683))

(assert (=> b!1411293 m!1591333))

(declare-fun m!1591689 () Bool)

(assert (=> b!1411293 m!1591689))

(assert (=> b!1411293 m!1591689))

(assert (=> b!1411293 m!1591685))

(assert (=> b!1411293 m!1591659))

(declare-fun m!1591691 () Bool)

(assert (=> bm!94573 m!1591691))

(declare-fun m!1591693 () Bool)

(assert (=> bm!94578 m!1591693))

(assert (=> b!1411300 m!1591659))

(declare-fun m!1591695 () Bool)

(assert (=> bm!94560 m!1591695))

(declare-fun m!1591697 () Bool)

(assert (=> bm!94571 m!1591697))

(declare-fun m!1591699 () Bool)

(assert (=> bm!94563 m!1591699))

(declare-fun m!1591701 () Bool)

(assert (=> bm!94557 m!1591701))

(declare-fun m!1591703 () Bool)

(assert (=> b!1411298 m!1591703))

(assert (=> b!1411298 m!1591703))

(declare-fun m!1591705 () Bool)

(assert (=> b!1411298 m!1591705))

(declare-fun m!1591707 () Bool)

(assert (=> b!1411298 m!1591707))

(declare-fun m!1591709 () Bool)

(assert (=> b!1411298 m!1591709))

(declare-fun m!1591711 () Bool)

(assert (=> b!1411298 m!1591711))

(declare-fun m!1591713 () Bool)

(assert (=> b!1411298 m!1591713))

(declare-fun m!1591715 () Bool)

(assert (=> b!1411298 m!1591715))

(assert (=> b!1411298 m!1591705))

(declare-fun m!1591717 () Bool)

(assert (=> d!403407 m!1591717))

(declare-fun m!1591719 () Bool)

(assert (=> d!403407 m!1591719))

(declare-fun m!1591721 () Bool)

(assert (=> d!403407 m!1591721))

(assert (=> d!403407 m!1591333))

(declare-fun m!1591723 () Bool)

(assert (=> d!403407 m!1591723))

(declare-fun m!1591725 () Bool)

(assert (=> bm!94552 m!1591725))

(declare-fun m!1591727 () Bool)

(assert (=> bm!94574 m!1591727))

(declare-fun m!1591729 () Bool)

(assert (=> bm!94548 m!1591729))

(assert (=> b!1411087 d!403407))

(declare-fun d!403433 () Bool)

(declare-fun lt!472379 () PrintableTokens!782)

(declare-fun head!2667 (List!14472) PrintableTokens!782)

(assert (=> d!403433 (= lt!472379 (head!2667 (list!5644 objs!24)))))

(declare-fun head!2668 (Conc!4776) PrintableTokens!782)

(assert (=> d!403433 (= lt!472379 (head!2668 (c!231882 objs!24)))))

(assert (=> d!403433 (not (isEmpty!8796 objs!24))))

(assert (=> d!403433 (= (head!2664 objs!24) lt!472379)))

(declare-fun bs!338959 () Bool)

(assert (= bs!338959 d!403433))

(assert (=> bs!338959 m!1591391))

(assert (=> bs!338959 m!1591391))

(declare-fun m!1591731 () Bool)

(assert (=> bs!338959 m!1591731))

(declare-fun m!1591733 () Bool)

(assert (=> bs!338959 m!1591733))

(assert (=> bs!338959 m!1591351))

(assert (=> b!1411087 d!403433))

(declare-fun d!403435 () Bool)

(declare-fun c!231956 () Bool)

(assert (=> d!403435 (= c!231956 (is-Node!4775 (c!231881 (tokens!1737 sep!3))))))

(declare-fun e!900941 () Bool)

(assert (=> d!403435 (= (inv!18796 (c!231881 (tokens!1737 sep!3))) e!900941)))

(declare-fun b!1411310 () Bool)

(assert (=> b!1411310 (= e!900941 (inv!18803 (c!231881 (tokens!1737 sep!3))))))

(declare-fun b!1411311 () Bool)

(declare-fun e!900942 () Bool)

(assert (=> b!1411311 (= e!900941 e!900942)))

(declare-fun res!639159 () Bool)

(assert (=> b!1411311 (= res!639159 (not (is-Leaf!7222 (c!231881 (tokens!1737 sep!3)))))))

(assert (=> b!1411311 (=> res!639159 e!900942)))

(declare-fun b!1411312 () Bool)

(assert (=> b!1411312 (= e!900942 (inv!18804 (c!231881 (tokens!1737 sep!3))))))

(assert (= (and d!403435 c!231956) b!1411310))

(assert (= (and d!403435 (not c!231956)) b!1411311))

(assert (= (and b!1411311 (not res!639159)) b!1411312))

(declare-fun m!1591735 () Bool)

(assert (=> b!1411310 m!1591735))

(declare-fun m!1591737 () Bool)

(assert (=> b!1411312 m!1591737))

(assert (=> b!1411085 d!403435))

(declare-fun d!403437 () Bool)

(assert (=> d!403437 (= (usesJsonRules!0 sep!3) (= (rules!11001 sep!3) (rules!109 JsonLexer!381)))))

(declare-fun bs!338960 () Bool)

(assert (= bs!338960 d!403437))

(assert (=> bs!338960 m!1591467))

(assert (=> b!1411086 d!403437))

(declare-fun b!1411323 () Bool)

(declare-fun b_free!34591 () Bool)

(declare-fun b_next!35295 () Bool)

(assert (=> b!1411323 (= b_free!34591 (not b_next!35295))))

(declare-fun tp!400585 () Bool)

(declare-fun b_and!94519 () Bool)

(assert (=> b!1411323 (= tp!400585 b_and!94519)))

(declare-fun b_free!34593 () Bool)

(declare-fun b_next!35297 () Bool)

(assert (=> b!1411323 (= b_free!34593 (not b_next!35297))))

(declare-fun tp!400587 () Bool)

(declare-fun b_and!94521 () Bool)

(assert (=> b!1411323 (= tp!400587 b_and!94521)))

(declare-fun e!900951 () Bool)

(assert (=> b!1411323 (= e!900951 (and tp!400585 tp!400587))))

(declare-fun b!1411322 () Bool)

(declare-fun e!900952 () Bool)

(declare-fun inv!18790 (String!17188) Bool)

(declare-fun inv!18807 (TokenValueInjection!4840) Bool)

(assert (=> b!1411322 (= e!900952 (and (inv!18790 (tag!2762 (h!19806 (rules!11001 sep!3)))) (inv!18807 (transformation!2500 (h!19806 (rules!11001 sep!3)))) e!900951))))

(declare-fun b!1411321 () Bool)

(declare-fun e!900953 () Bool)

(declare-fun tp!400586 () Bool)

(assert (=> b!1411321 (= e!900953 (and e!900952 tp!400586))))

(assert (=> b!1411083 (= tp!400562 e!900953)))

(assert (= b!1411322 b!1411323))

(assert (= b!1411321 b!1411322))

(assert (= (and b!1411083 (is-Cons!14405 (rules!11001 sep!3))) b!1411321))

(declare-fun m!1591739 () Bool)

(assert (=> b!1411322 m!1591739))

(declare-fun m!1591741 () Bool)

(assert (=> b!1411322 m!1591741))

(declare-fun e!900960 () Bool)

(declare-fun tp!400595 () Bool)

(declare-fun b!1411332 () Bool)

(declare-fun tp!400594 () Bool)

(assert (=> b!1411332 (= e!900960 (and (inv!18796 (left!12303 (c!231881 (tokens!1737 acc!229)))) tp!400595 (inv!18796 (right!12633 (c!231881 (tokens!1737 acc!229)))) tp!400594))))

(declare-fun b!1411334 () Bool)

(declare-fun e!900959 () Bool)

(declare-fun tp!400596 () Bool)

(assert (=> b!1411334 (= e!900959 tp!400596)))

(declare-fun b!1411333 () Bool)

(declare-fun inv!18808 (IArray!9555) Bool)

(assert (=> b!1411333 (= e!900960 (and (inv!18808 (xs!7502 (c!231881 (tokens!1737 acc!229)))) e!900959))))

(assert (=> b!1411081 (= tp!400560 (and (inv!18796 (c!231881 (tokens!1737 acc!229))) e!900960))))

(assert (= (and b!1411081 (is-Node!4775 (c!231881 (tokens!1737 acc!229)))) b!1411332))

(assert (= b!1411333 b!1411334))

(assert (= (and b!1411081 (is-Leaf!7222 (c!231881 (tokens!1737 acc!229)))) b!1411333))

(declare-fun m!1591743 () Bool)

(assert (=> b!1411332 m!1591743))

(declare-fun m!1591745 () Bool)

(assert (=> b!1411332 m!1591745))

(declare-fun m!1591747 () Bool)

(assert (=> b!1411333 m!1591747))

(assert (=> b!1411081 m!1591331))

(declare-fun tp!400604 () Bool)

(declare-fun e!900966 () Bool)

(declare-fun b!1411343 () Bool)

(declare-fun tp!400603 () Bool)

(assert (=> b!1411343 (= e!900966 (and (inv!18797 (left!12304 (c!231882 objs!24))) tp!400604 (inv!18797 (right!12634 (c!231882 objs!24))) tp!400603))))

(declare-fun b!1411345 () Bool)

(declare-fun e!900965 () Bool)

(declare-fun tp!400605 () Bool)

(assert (=> b!1411345 (= e!900965 tp!400605)))

(declare-fun b!1411344 () Bool)

(declare-fun inv!18809 (IArray!9557) Bool)

(assert (=> b!1411344 (= e!900966 (and (inv!18809 (xs!7503 (c!231882 objs!24))) e!900965))))

(assert (=> b!1411082 (= tp!400563 (and (inv!18797 (c!231882 objs!24)) e!900966))))

(assert (= (and b!1411082 (is-Node!4776 (c!231882 objs!24))) b!1411343))

(assert (= b!1411344 b!1411345))

(assert (= (and b!1411082 (is-Leaf!7223 (c!231882 objs!24))) b!1411344))

(declare-fun m!1591749 () Bool)

(assert (=> b!1411343 m!1591749))

(declare-fun m!1591751 () Bool)

(assert (=> b!1411343 m!1591751))

(declare-fun m!1591753 () Bool)

(assert (=> b!1411344 m!1591753))

(assert (=> b!1411082 m!1591315))

(declare-fun b!1411348 () Bool)

(declare-fun b_free!34595 () Bool)

(declare-fun b_next!35299 () Bool)

(assert (=> b!1411348 (= b_free!34595 (not b_next!35299))))

(declare-fun tp!400606 () Bool)

(declare-fun b_and!94523 () Bool)

(assert (=> b!1411348 (= tp!400606 b_and!94523)))

(declare-fun b_free!34597 () Bool)

(declare-fun b_next!35301 () Bool)

(assert (=> b!1411348 (= b_free!34597 (not b_next!35301))))

(declare-fun tp!400608 () Bool)

(declare-fun b_and!94525 () Bool)

(assert (=> b!1411348 (= tp!400608 b_and!94525)))

(declare-fun e!900967 () Bool)

(assert (=> b!1411348 (= e!900967 (and tp!400606 tp!400608))))

(declare-fun b!1411347 () Bool)

(declare-fun e!900968 () Bool)

(assert (=> b!1411347 (= e!900968 (and (inv!18790 (tag!2762 (h!19806 (rules!11001 acc!229)))) (inv!18807 (transformation!2500 (h!19806 (rules!11001 acc!229)))) e!900967))))

(declare-fun b!1411346 () Bool)

(declare-fun e!900969 () Bool)

(declare-fun tp!400607 () Bool)

(assert (=> b!1411346 (= e!900969 (and e!900968 tp!400607))))

(assert (=> b!1411080 (= tp!400559 e!900969)))

(assert (= b!1411347 b!1411348))

(assert (= b!1411346 b!1411347))

(assert (= (and b!1411080 (is-Cons!14405 (rules!11001 acc!229))) b!1411346))

(declare-fun m!1591755 () Bool)

(assert (=> b!1411347 m!1591755))

(declare-fun m!1591757 () Bool)

(assert (=> b!1411347 m!1591757))

(declare-fun tp!400609 () Bool)

(declare-fun b!1411349 () Bool)

(declare-fun tp!400610 () Bool)

(declare-fun e!900972 () Bool)

(assert (=> b!1411349 (= e!900972 (and (inv!18796 (left!12303 (c!231881 (tokens!1737 sep!3)))) tp!400610 (inv!18796 (right!12633 (c!231881 (tokens!1737 sep!3)))) tp!400609))))

(declare-fun b!1411351 () Bool)

(declare-fun e!900971 () Bool)

(declare-fun tp!400611 () Bool)

(assert (=> b!1411351 (= e!900971 tp!400611)))

(declare-fun b!1411350 () Bool)

(assert (=> b!1411350 (= e!900972 (and (inv!18808 (xs!7502 (c!231881 (tokens!1737 sep!3)))) e!900971))))

(assert (=> b!1411085 (= tp!400561 (and (inv!18796 (c!231881 (tokens!1737 sep!3))) e!900972))))

(assert (= (and b!1411085 (is-Node!4775 (c!231881 (tokens!1737 sep!3)))) b!1411349))

(assert (= b!1411350 b!1411351))

(assert (= (and b!1411085 (is-Leaf!7222 (c!231881 (tokens!1737 sep!3)))) b!1411350))

(declare-fun m!1591759 () Bool)

(assert (=> b!1411349 m!1591759))

(declare-fun m!1591761 () Bool)

(assert (=> b!1411349 m!1591761))

(declare-fun m!1591763 () Bool)

(assert (=> b!1411350 m!1591763))

(assert (=> b!1411085 m!1591321))

(push 1)

(assert (not bm!94560))

(assert (not b!1411300))

(assert (not b!1411298))

(assert (not bm!94564))

(assert (not bm!94573))

(assert (not bm!94571))

(assert (not d!403381))

(assert (not d!403373))

(assert (not b!1411130))

(assert (not b!1411333))

(assert (not b!1411302))

(assert (not b!1411135))

(assert (not b!1411301))

(assert (not b!1411321))

(assert (not bm!94568))

(assert (not d!403433))

(assert (not b!1411310))

(assert (not b!1411133))

(assert (not b!1411131))

(assert (not d!403393))

(assert (not b!1411344))

(assert b_and!94521)

(assert (not b_next!35299))

(assert (not bm!94574))

(assert (not bm!94552))

(assert (not d!403407))

(assert (not bm!94548))

(assert (not b!1411307))

(assert (not bm!94556))

(assert (not b!1411351))

(assert (not d!403401))

(assert (not bm!94540))

(assert (not bm!94551))

(assert (not b!1411186))

(assert (not b!1411134))

(assert (not d!403405))

(assert (not b!1411085))

(assert (not b!1411343))

(assert (not b!1411153))

(assert (not bm!94572))

(assert (not b!1411142))

(assert (not d!403403))

(assert (not d!403391))

(assert b_and!94523)

(assert (not bm!94545))

(assert (not b_next!35301))

(assert (not bm!94567))

(assert (not b!1411081))

(assert (not bm!94563))

(assert (not bm!94344))

(assert (not b!1411293))

(assert (not bm!94342))

(assert (not bm!94343))

(assert (not b!1411312))

(assert (not bm!94557))

(assert (not b!1411346))

(assert (not b!1411345))

(assert (not b!1411151))

(assert (not b!1411189))

(assert (not bm!94550))

(assert (not bm!94578))

(assert (not b!1411296))

(assert b_and!94525)

(assert (not b!1411183))

(assert (not b_next!35295))

(assert (not bm!94341))

(assert (not d!403385))

(assert b_and!94519)

(assert (not b!1411349))

(assert (not b!1411347))

(assert (not b!1411334))

(assert (not b!1411132))

(assert (not bm!94562))

(assert (not bm!94576))

(assert (not d!403437))

(assert (not b_next!35297))

(assert (not b!1411082))

(assert (not bm!94559))

(assert (not d!403397))

(assert (not b!1411144))

(assert (not b!1411179))

(assert (not d!403375))

(assert (not d!403383))

(assert (not b!1411332))

(assert (not d!403379))

(assert (not b!1411322))

(assert (not b!1411350))

(check-sat)

(pop 1)

(push 1)

(assert b_and!94521)

(assert (not b_next!35299))

(assert b_and!94523)

(assert (not b_next!35301))

(assert b_and!94519)

(assert (not b_next!35297))

(assert b_and!94525)

(assert (not b_next!35295))

(check-sat)

(pop 1)

