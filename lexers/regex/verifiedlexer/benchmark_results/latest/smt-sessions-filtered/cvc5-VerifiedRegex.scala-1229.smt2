; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64404 () Bool)

(assert start!64404)

(declare-fun b!659225 () Bool)

(assert (=> b!659225 true))

(declare-fun size!101 () Int)

(declare-fun lambda!20422 () Int)

(declare-datatypes ((List!7117 0))(
  ( (Nil!7103) (Cons!7103 (h!12504 Int) (t!86096 List!7117)) )
))
(declare-datatypes ((IArray!4979 0))(
  ( (IArray!4980 (innerList!2547 List!7117)) )
))
(declare-datatypes ((Conc!2489 0))(
  ( (Node!2489 (left!5742 Conc!2489) (right!6072 Conc!2489) (csize!5208 Int) (cheight!2700 Int)) (Leaf!3719 (xs!5138 IArray!4979) (csize!5209 Int)) (Empty!2489) )
))
(declare-datatypes ((BalanceConc!4990 0))(
  ( (BalanceConc!4991 (c!118669 Conc!2489)) )
))
(declare-fun acc!218 () BalanceConc!4990)

(declare-datatypes ((List!7118 0))(
  ( (Nil!7104) (Cons!7104 (h!12505 (_ BitVec 16)) (t!86097 List!7118)) )
))
(declare-datatypes ((TokenValue!1461 0))(
  ( (FloatLiteralValue!2922 (text!10672 List!7118)) (TokenValueExt!1460 (__x!5037 Int)) (Broken!7305 (value!45796 List!7118)) (Object!1474) (End!1461) (Def!1461) (Underscore!1461) (Match!1461) (Else!1461) (Error!1461) (Case!1461) (If!1461) (Extends!1461) (Abstract!1461) (Class!1461) (Val!1461) (DelimiterValue!2922 (del!1521 List!7118)) (KeywordValue!1467 (value!45797 List!7118)) (CommentValue!2922 (value!45798 List!7118)) (WhitespaceValue!2922 (value!45799 List!7118)) (IndentationValue!1461 (value!45800 List!7118)) (String!9044) (Int32!1461) (Broken!7306 (value!45801 List!7118)) (Boolean!1462) (Unit!12315) (OperatorValue!1464 (op!1521 List!7118)) (IdentifierValue!2922 (value!45802 List!7118)) (IdentifierValue!2923 (value!45803 List!7118)) (WhitespaceValue!2923 (value!45804 List!7118)) (True!2922) (False!2922) (Broken!7307 (value!45805 List!7118)) (Broken!7308 (value!45806 List!7118)) (True!2923) (RightBrace!1461) (RightBracket!1461) (Colon!1461) (Null!1461) (Comma!1461) (LeftBracket!1461) (False!2923) (LeftBrace!1461) (ImaginaryLiteralValue!1461 (text!10673 List!7118)) (StringLiteralValue!4383 (value!45807 List!7118)) (EOFValue!1461 (value!45808 List!7118)) (IdentValue!1461 (value!45809 List!7118)) (DelimiterValue!2923 (value!45810 List!7118)) (DedentValue!1461 (value!45811 List!7118)) (NewLineValue!1461 (value!45812 List!7118)) (IntegerValue!4383 (value!45813 (_ BitVec 32)) (text!10674 List!7118)) (IntegerValue!4384 (value!45814 Int) (text!10675 List!7118)) (Times!1461) (Or!1461) (Equal!1461) (Minus!1461) (Broken!7309 (value!45815 List!7118)) (And!1461) (Div!1461) (LessEqual!1461) (Mod!1461) (Concat!3223) (Not!1461) (Plus!1461) (SpaceValue!1461 (value!45816 List!7118)) (IntegerValue!4385 (value!45817 Int) (text!10676 List!7118)) (StringLiteralValue!4384 (text!10677 List!7118)) (FloatLiteralValue!2923 (text!10678 List!7118)) (BytesLiteralValue!1461 (value!45818 List!7118)) (CommentValue!2923 (value!45819 List!7118)) (StringLiteralValue!4385 (value!45820 List!7118)) (ErrorTokenValue!1461 (msg!1522 List!7118)) )
))
(declare-datatypes ((Regex!1762 0))(
  ( (ElementMatch!1762 (c!118670 (_ BitVec 16))) (Concat!3224 (regOne!4036 Regex!1762) (regTwo!4036 Regex!1762)) (EmptyExpr!1762) (Star!1762 (reg!2091 Regex!1762)) (EmptyLang!1762) (Union!1762 (regOne!4037 Regex!1762) (regTwo!4037 Regex!1762)) )
))
(declare-datatypes ((String!9045 0))(
  ( (String!9046 (value!45821 String)) )
))
(declare-datatypes ((IArray!4981 0))(
  ( (IArray!4982 (innerList!2548 List!7118)) )
))
(declare-datatypes ((Conc!2490 0))(
  ( (Node!2490 (left!5743 Conc!2490) (right!6073 Conc!2490) (csize!5210 Int) (cheight!2701 Int)) (Leaf!3720 (xs!5139 IArray!4981) (csize!5211 Int)) (Empty!2490) )
))
(declare-datatypes ((BalanceConc!4992 0))(
  ( (BalanceConc!4993 (c!118671 Conc!2490)) )
))
(declare-datatypes ((TokenValueInjection!2674 0))(
  ( (TokenValueInjection!2675 (toValue!2368 Int) (toChars!2227 Int)) )
))
(declare-datatypes ((Rule!2654 0))(
  ( (Rule!2655 (regex!1427 Regex!1762) (tag!1689 String!9045) (isSeparator!1427 Bool) (transformation!1427 TokenValueInjection!2674)) )
))
(declare-datatypes ((Token!2576 0))(
  ( (Token!2577 (value!45822 TokenValue!1461) (rule!2222 Rule!2654) (size!5648 Int) (originalCharacters!1459 List!7118)) )
))
(declare-datatypes ((List!7119 0))(
  ( (Nil!7105) (Cons!7105 (h!12506 Token!2576) (t!86098 List!7119)) )
))
(declare-datatypes ((IArray!4983 0))(
  ( (IArray!4984 (innerList!2549 List!7119)) )
))
(declare-datatypes ((Conc!2491 0))(
  ( (Node!2491 (left!5744 Conc!2491) (right!6074 Conc!2491) (csize!5212 Int) (cheight!2702 Int)) (Leaf!3721 (xs!5140 IArray!4983) (csize!5213 Int)) (Empty!2491) )
))
(declare-datatypes ((BalanceConc!4994 0))(
  ( (BalanceConc!4995 (c!118672 Conc!2491)) )
))
(declare-fun ts!14 () BalanceConc!4994)

(declare-fun e!407643 () Bool)

(declare-fun b!659220 () Bool)

(declare-fun from!502 () Int)

(declare-fun forall!1889 (BalanceConc!4990 Int) Bool)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4994 Int Int BalanceConc!4990) BalanceConc!4990)

(declare-fun append!254 (BalanceConc!4990 Int) BalanceConc!4990)

(assert (=> b!659220 (= e!407643 (not (forall!1889 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) (append!254 acc!218 from!502)) lambda!20422)))))

(declare-fun b!659221 () Bool)

(declare-fun e!407646 () Bool)

(declare-fun tp!200952 () Bool)

(declare-fun inv!9058 (Conc!2489) Bool)

(assert (=> b!659221 (= e!407646 (and (inv!9058 (c!118669 acc!218)) tp!200952))))

(declare-fun b!659222 () Bool)

(declare-fun e!407642 () Bool)

(declare-fun e!407647 () Bool)

(assert (=> b!659222 (= e!407642 e!407647)))

(declare-fun res!292669 () Bool)

(assert (=> b!659222 (=> (not res!292669) (not e!407647))))

(declare-fun e!407645 () Bool)

(assert (=> b!659222 (= res!292669 e!407645)))

(declare-fun res!292673 () Bool)

(assert (=> b!659222 (=> res!292673 e!407645)))

(declare-fun lt!280501 () Token!2576)

(declare-fun isKeywordValue!0 (Token!2576 TokenValue!1461) Bool)

(assert (=> b!659222 (= res!292673 (isKeywordValue!0 lt!280501 LeftBrace!1461))))

(declare-fun apply!1724 (BalanceConc!4994 Int) Token!2576)

(assert (=> b!659222 (= lt!280501 (apply!1724 ts!14 from!502))))

(declare-fun b!659223 () Bool)

(assert (=> b!659223 (= e!407647 e!407643)))

(declare-fun res!292672 () Bool)

(assert (=> b!659223 (=> (not res!292672) (not e!407643))))

(declare-fun lt!280502 () List!7117)

(declare-fun ++!1897 (BalanceConc!4990 BalanceConc!4990) BalanceConc!4990)

(declare-fun seqFromList!1465 (List!7117) BalanceConc!4990)

(assert (=> b!659223 (= res!292672 (forall!1889 (++!1897 acc!218 (seqFromList!1465 lt!280502)) lambda!20422))))

(declare-datatypes ((Unit!12316 0))(
  ( (Unit!12317) )
))
(declare-fun lt!280504 () Unit!12316)

(declare-fun lemmaConcatPreservesForall!76 (List!7117 List!7117 Int) Unit!12316)

(declare-fun list!3034 (BalanceConc!4990) List!7117)

(assert (=> b!659223 (= lt!280504 (lemmaConcatPreservesForall!76 (list!3034 acc!218) lt!280502 lambda!20422))))

(assert (=> b!659223 (= lt!280502 (Cons!7103 from!502 Nil!7103))))

(declare-fun b!659224 () Bool)

(declare-fun res!292667 () Bool)

(assert (=> b!659224 (=> (not res!292667) (not e!407642))))

(declare-fun lt!280503 () Int)

(assert (=> b!659224 (= res!292667 (< from!502 lt!280503))))

(declare-fun res!292668 () Bool)

(assert (=> b!659225 (=> (not res!292668) (not e!407642))))

(assert (=> b!659225 (= res!292668 (forall!1889 acc!218 lambda!20422))))

(declare-fun res!292670 () Bool)

(declare-fun e!407644 () Bool)

(assert (=> start!64404 (=> (not res!292670) (not e!407644))))

(assert (=> start!64404 (= res!292670 (>= from!502 0))))

(assert (=> start!64404 e!407644))

(assert (=> start!64404 true))

(declare-fun inv!9059 (BalanceConc!4990) Bool)

(assert (=> start!64404 (and (inv!9059 acc!218) e!407646)))

(declare-fun e!407648 () Bool)

(declare-fun inv!9060 (BalanceConc!4994) Bool)

(assert (=> start!64404 (and (inv!9060 ts!14) e!407648)))

(declare-fun b!659226 () Bool)

(declare-fun tp!200953 () Bool)

(declare-fun inv!9061 (Conc!2491) Bool)

(assert (=> b!659226 (= e!407648 (and (inv!9061 (c!118672 ts!14)) tp!200953))))

(declare-fun b!659227 () Bool)

(declare-fun res!292671 () Bool)

(assert (=> b!659227 (=> (not res!292671) (not e!407647))))

(assert (=> b!659227 (= res!292671 (forall!1889 acc!218 lambda!20422))))

(declare-fun b!659228 () Bool)

(assert (=> b!659228 (= e!407644 e!407642)))

(declare-fun res!292674 () Bool)

(assert (=> b!659228 (=> (not res!292674) (not e!407642))))

(assert (=> b!659228 (= res!292674 (and (<= from!502 lt!280503) (= lt!280503 size!101)))))

(declare-fun size!5649 (BalanceConc!4994) Int)

(assert (=> b!659228 (= lt!280503 (size!5649 ts!14))))

(declare-fun b!659229 () Bool)

(assert (=> b!659229 (= e!407645 (isKeywordValue!0 lt!280501 RightBrace!1461))))

(assert (= (and start!64404 res!292670) b!659228))

(assert (= (and b!659228 res!292674) b!659225))

(assert (= (and b!659225 res!292668) b!659224))

(assert (= (and b!659224 res!292667) b!659222))

(assert (= (and b!659222 (not res!292673)) b!659229))

(assert (= (and b!659222 res!292669) b!659227))

(assert (= (and b!659227 res!292671) b!659223))

(assert (= (and b!659223 res!292672) b!659220))

(assert (= start!64404 b!659221))

(assert (= start!64404 b!659226))

(declare-fun m!924883 () Bool)

(assert (=> b!659228 m!924883))

(declare-fun m!924885 () Bool)

(assert (=> b!659225 m!924885))

(declare-fun m!924887 () Bool)

(assert (=> start!64404 m!924887))

(declare-fun m!924889 () Bool)

(assert (=> start!64404 m!924889))

(declare-fun m!924891 () Bool)

(assert (=> b!659226 m!924891))

(declare-fun m!924893 () Bool)

(assert (=> b!659221 m!924893))

(assert (=> b!659227 m!924885))

(declare-fun m!924895 () Bool)

(assert (=> b!659220 m!924895))

(assert (=> b!659220 m!924895))

(declare-fun m!924897 () Bool)

(assert (=> b!659220 m!924897))

(assert (=> b!659220 m!924897))

(declare-fun m!924899 () Bool)

(assert (=> b!659220 m!924899))

(declare-fun m!924901 () Bool)

(assert (=> b!659222 m!924901))

(declare-fun m!924903 () Bool)

(assert (=> b!659222 m!924903))

(declare-fun m!924905 () Bool)

(assert (=> b!659229 m!924905))

(declare-fun m!924907 () Bool)

(assert (=> b!659223 m!924907))

(declare-fun m!924909 () Bool)

(assert (=> b!659223 m!924909))

(declare-fun m!924911 () Bool)

(assert (=> b!659223 m!924911))

(declare-fun m!924913 () Bool)

(assert (=> b!659223 m!924913))

(assert (=> b!659223 m!924907))

(declare-fun m!924915 () Bool)

(assert (=> b!659223 m!924915))

(assert (=> b!659223 m!924913))

(assert (=> b!659223 m!924909))

(push 1)

(assert (not b!659220))

(assert (not b!659223))

(assert (not start!64404))

(assert (not b!659222))

(assert (not b!659228))

(assert (not b!659225))

(assert (not b!659226))

(assert (not b!659229))

(assert (not b!659227))

(assert (not b!659221))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225706 () Bool)

(declare-fun c!118680 () Bool)

(assert (=> d!225706 (= c!118680 (is-Node!2491 (c!118672 ts!14)))))

(declare-fun e!407674 () Bool)

(assert (=> d!225706 (= (inv!9061 (c!118672 ts!14)) e!407674)))

(declare-fun b!659270 () Bool)

(declare-fun inv!9066 (Conc!2491) Bool)

(assert (=> b!659270 (= e!407674 (inv!9066 (c!118672 ts!14)))))

(declare-fun b!659271 () Bool)

(declare-fun e!407675 () Bool)

(assert (=> b!659271 (= e!407674 e!407675)))

(declare-fun res!292705 () Bool)

(assert (=> b!659271 (= res!292705 (not (is-Leaf!3721 (c!118672 ts!14))))))

(assert (=> b!659271 (=> res!292705 e!407675)))

(declare-fun b!659272 () Bool)

(declare-fun inv!9067 (Conc!2491) Bool)

(assert (=> b!659272 (= e!407675 (inv!9067 (c!118672 ts!14)))))

(assert (= (and d!225706 c!118680) b!659270))

(assert (= (and d!225706 (not c!118680)) b!659271))

(assert (= (and b!659271 (not res!292705)) b!659272))

(declare-fun m!924951 () Bool)

(assert (=> b!659270 m!924951))

(declare-fun m!924953 () Bool)

(assert (=> b!659272 m!924953))

(assert (=> b!659226 d!225706))

(declare-fun lt!280522 () Bool)

(declare-fun d!225710 () Bool)

(declare-fun forall!1891 (List!7117 Int) Bool)

(assert (=> d!225710 (= lt!280522 (forall!1891 (list!3034 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) (append!254 acc!218 from!502))) lambda!20422))))

(declare-fun forall!1892 (Conc!2489 Int) Bool)

(assert (=> d!225710 (= lt!280522 (forall!1892 (c!118669 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) (append!254 acc!218 from!502))) lambda!20422))))

(assert (=> d!225710 (= (forall!1889 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) (append!254 acc!218 from!502)) lambda!20422) lt!280522)))

(declare-fun bs!94340 () Bool)

(assert (= bs!94340 d!225710))

(assert (=> bs!94340 m!924897))

(declare-fun m!924965 () Bool)

(assert (=> bs!94340 m!924965))

(assert (=> bs!94340 m!924965))

(declare-fun m!924967 () Bool)

(assert (=> bs!94340 m!924967))

(declare-fun m!924969 () Bool)

(assert (=> bs!94340 m!924969))

(assert (=> b!659220 d!225710))

(declare-fun bs!94344 () Bool)

(declare-fun b!659308 () Bool)

(assert (= bs!94344 (and b!659308 b!659225)))

(declare-fun lambda!20438 () Int)

(assert (=> bs!94344 (= lambda!20438 lambda!20422)))

(assert (=> b!659308 true))

(declare-fun bs!94345 () Bool)

(declare-fun d!225718 () Bool)

(assert (= bs!94345 (and d!225718 b!659225)))

(declare-fun lambda!20439 () Int)

(assert (=> bs!94345 (= lambda!20439 lambda!20422)))

(declare-fun bs!94346 () Bool)

(assert (= bs!94346 (and d!225718 b!659308)))

(assert (=> bs!94346 (= lambda!20439 lambda!20438)))

(assert (=> d!225718 true))

(declare-fun bm!42545 () Bool)

(declare-fun c!118692 () Bool)

(declare-fun c!118691 () Bool)

(assert (=> bm!42545 (= c!118692 c!118691)))

(declare-fun call!42550 () BalanceConc!4990)

(declare-fun e!407699 () BalanceConc!4990)

(assert (=> bm!42545 (= call!42550 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502 1) e!407699))))

(declare-fun b!659301 () Bool)

(declare-fun e!407696 () Bool)

(declare-fun lt!280536 () Token!2576)

(assert (=> b!659301 (= e!407696 (isKeywordValue!0 lt!280536 RightBrace!1461))))

(declare-fun b!659302 () Bool)

(assert (=> b!659302 (= e!407699 (append!254 acc!218 from!502))))

(declare-fun b!659303 () Bool)

(declare-fun e!407697 () BalanceConc!4990)

(declare-fun e!407695 () BalanceConc!4990)

(assert (=> b!659303 (= e!407697 e!407695)))

(assert (=> b!659303 (= lt!280536 (apply!1724 ts!14 (+ 1 from!502)))))

(declare-fun res!292717 () Bool)

(assert (=> b!659303 (= res!292717 (isKeywordValue!0 lt!280536 LeftBrace!1461))))

(assert (=> b!659303 (=> res!292717 e!407696)))

(assert (=> b!659303 (= c!118691 e!407696)))

(declare-fun b!659304 () Bool)

(assert (=> b!659304 (= e!407697 (append!254 acc!218 from!502))))

(declare-fun b!659305 () Bool)

(assert (=> b!659305 (= e!407695 call!42550)))

(declare-fun lt!280537 () BalanceConc!4990)

(assert (=> d!225718 (forall!1889 lt!280537 lambda!20439)))

(assert (=> d!225718 (= lt!280537 e!407697)))

(declare-fun c!118690 () Bool)

(assert (=> d!225718 (= c!118690 (>= (+ 1 from!502) (size!5649 ts!14)))))

(declare-fun e!407698 () Bool)

(assert (=> d!225718 e!407698))

(declare-fun res!292716 () Bool)

(assert (=> d!225718 (=> (not res!292716) (not e!407698))))

(assert (=> d!225718 (= res!292716 (>= (+ 1 from!502) 0))))

(assert (=> d!225718 (= (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) (append!254 acc!218 from!502)) lt!280537)))

(declare-fun b!659306 () Bool)

(assert (=> b!659306 (= e!407698 (<= (+ 1 from!502) (size!5649 ts!14)))))

(declare-fun b!659307 () Bool)

(assert (=> b!659307 (= e!407699 (append!254 (append!254 acc!218 from!502) (+ 1 from!502)))))

(declare-fun lt!280535 () Unit!12316)

(assert (=> b!659308 (= lt!280535 (lemmaConcatPreservesForall!76 (list!3034 (append!254 acc!218 from!502)) (Cons!7103 (+ 1 from!502) Nil!7103) lambda!20438))))

(assert (=> b!659308 (= e!407695 call!42550)))

(assert (= (and d!225718 res!292716) b!659306))

(assert (= (and d!225718 c!118690) b!659304))

(assert (= (and d!225718 (not c!118690)) b!659303))

(assert (= (and b!659303 (not res!292717)) b!659301))

(assert (= (and b!659303 c!118691) b!659308))

(assert (= (and b!659303 (not c!118691)) b!659305))

(assert (= (or b!659308 b!659305) bm!42545))

(assert (= (and bm!42545 c!118692) b!659307))

(assert (= (and bm!42545 (not c!118692)) b!659302))

(declare-fun m!924987 () Bool)

(assert (=> b!659303 m!924987))

(declare-fun m!924989 () Bool)

(assert (=> b!659303 m!924989))

(assert (=> b!659308 m!924895))

(declare-fun m!924991 () Bool)

(assert (=> b!659308 m!924991))

(assert (=> b!659308 m!924991))

(declare-fun m!924993 () Bool)

(assert (=> b!659308 m!924993))

(declare-fun m!924995 () Bool)

(assert (=> b!659301 m!924995))

(declare-fun m!924997 () Bool)

(assert (=> d!225718 m!924997))

(assert (=> d!225718 m!924883))

(assert (=> b!659306 m!924883))

(declare-fun m!924999 () Bool)

(assert (=> bm!42545 m!924999))

(assert (=> b!659307 m!924895))

(declare-fun m!925001 () Bool)

(assert (=> b!659307 m!925001))

(assert (=> b!659220 d!225718))

(declare-fun d!225730 () Bool)

(declare-fun e!407708 () Bool)

(assert (=> d!225730 e!407708))

(declare-fun res!292723 () Bool)

(assert (=> d!225730 (=> (not res!292723) (not e!407708))))

(declare-fun isBalanced!653 (Conc!2489) Bool)

(declare-fun append!256 (Conc!2489 Int) Conc!2489)

(assert (=> d!225730 (= res!292723 (isBalanced!653 (append!256 (c!118669 acc!218) from!502)))))

(declare-fun lt!280541 () BalanceConc!4990)

(assert (=> d!225730 (= lt!280541 (BalanceConc!4991 (append!256 (c!118669 acc!218) from!502)))))

(assert (=> d!225730 (= (append!254 acc!218 from!502) lt!280541)))

(declare-fun b!659320 () Bool)

(declare-fun $colon+!53 (List!7117 Int) List!7117)

(assert (=> b!659320 (= e!407708 (= (list!3034 lt!280541) ($colon+!53 (list!3034 acc!218) from!502)))))

(assert (= (and d!225730 res!292723) b!659320))

(declare-fun m!925013 () Bool)

(assert (=> d!225730 m!925013))

(assert (=> d!225730 m!925013))

(declare-fun m!925015 () Bool)

(assert (=> d!225730 m!925015))

(declare-fun m!925017 () Bool)

(assert (=> b!659320 m!925017))

(assert (=> b!659320 m!924907))

(assert (=> b!659320 m!924907))

(declare-fun m!925019 () Bool)

(assert (=> b!659320 m!925019))

(assert (=> b!659220 d!225730))

(declare-fun d!225736 () Bool)

(declare-fun lt!280542 () Bool)

(assert (=> d!225736 (= lt!280542 (forall!1891 (list!3034 acc!218) lambda!20422))))

(assert (=> d!225736 (= lt!280542 (forall!1892 (c!118669 acc!218) lambda!20422))))

(assert (=> d!225736 (= (forall!1889 acc!218 lambda!20422) lt!280542)))

(declare-fun bs!94348 () Bool)

(assert (= bs!94348 d!225736))

(assert (=> bs!94348 m!924907))

(assert (=> bs!94348 m!924907))

(declare-fun m!925021 () Bool)

(assert (=> bs!94348 m!925021))

(declare-fun m!925023 () Bool)

(assert (=> bs!94348 m!925023))

(assert (=> b!659225 d!225736))

(declare-fun d!225738 () Bool)

(declare-fun choose!511 (Token!2576 TokenValue!1461) Bool)

(assert (=> d!225738 (= (isKeywordValue!0 lt!280501 LeftBrace!1461) (choose!511 lt!280501 LeftBrace!1461))))

(declare-fun bs!94349 () Bool)

(assert (= bs!94349 d!225738))

(declare-fun m!925025 () Bool)

(assert (=> bs!94349 m!925025))

(assert (=> b!659222 d!225738))

(declare-fun d!225740 () Bool)

(declare-fun lt!280545 () Token!2576)

(declare-fun apply!1726 (List!7119 Int) Token!2576)

(declare-fun list!3036 (BalanceConc!4994) List!7119)

(assert (=> d!225740 (= lt!280545 (apply!1726 (list!3036 ts!14) from!502))))

(declare-fun apply!1727 (Conc!2491 Int) Token!2576)

(assert (=> d!225740 (= lt!280545 (apply!1727 (c!118672 ts!14) from!502))))

(declare-fun e!407711 () Bool)

(assert (=> d!225740 e!407711))

(declare-fun res!292726 () Bool)

(assert (=> d!225740 (=> (not res!292726) (not e!407711))))

(assert (=> d!225740 (= res!292726 (<= 0 from!502))))

(assert (=> d!225740 (= (apply!1724 ts!14 from!502) lt!280545)))

(declare-fun b!659323 () Bool)

(assert (=> b!659323 (= e!407711 (< from!502 (size!5649 ts!14)))))

(assert (= (and d!225740 res!292726) b!659323))

(declare-fun m!925027 () Bool)

(assert (=> d!225740 m!925027))

(assert (=> d!225740 m!925027))

(declare-fun m!925029 () Bool)

(assert (=> d!225740 m!925029))

(declare-fun m!925031 () Bool)

(assert (=> d!225740 m!925031))

(assert (=> b!659323 m!924883))

(assert (=> b!659222 d!225740))

(assert (=> b!659227 d!225736))

(declare-fun d!225742 () Bool)

(assert (=> d!225742 (= (inv!9059 acc!218) (isBalanced!653 (c!118669 acc!218)))))

(declare-fun bs!94350 () Bool)

(assert (= bs!94350 d!225742))

(declare-fun m!925033 () Bool)

(assert (=> bs!94350 m!925033))

(assert (=> start!64404 d!225742))

(declare-fun d!225744 () Bool)

(declare-fun isBalanced!654 (Conc!2491) Bool)

(assert (=> d!225744 (= (inv!9060 ts!14) (isBalanced!654 (c!118672 ts!14)))))

(declare-fun bs!94351 () Bool)

(assert (= bs!94351 d!225744))

(declare-fun m!925035 () Bool)

(assert (=> bs!94351 m!925035))

(assert (=> start!64404 d!225744))

(declare-fun d!225746 () Bool)

(declare-fun c!118705 () Bool)

(assert (=> d!225746 (= c!118705 (is-Node!2489 (c!118669 acc!218)))))

(declare-fun e!407726 () Bool)

(assert (=> d!225746 (= (inv!9058 (c!118669 acc!218)) e!407726)))

(declare-fun b!659346 () Bool)

(declare-fun inv!9068 (Conc!2489) Bool)

(assert (=> b!659346 (= e!407726 (inv!9068 (c!118669 acc!218)))))

(declare-fun b!659347 () Bool)

(declare-fun e!407727 () Bool)

(assert (=> b!659347 (= e!407726 e!407727)))

(declare-fun res!292733 () Bool)

(assert (=> b!659347 (= res!292733 (not (is-Leaf!3719 (c!118669 acc!218))))))

(assert (=> b!659347 (=> res!292733 e!407727)))

(declare-fun b!659348 () Bool)

(declare-fun inv!9069 (Conc!2489) Bool)

(assert (=> b!659348 (= e!407727 (inv!9069 (c!118669 acc!218)))))

(assert (= (and d!225746 c!118705) b!659346))

(assert (= (and d!225746 (not c!118705)) b!659347))

(assert (= (and b!659347 (not res!292733)) b!659348))

(declare-fun m!925037 () Bool)

(assert (=> b!659346 m!925037))

(declare-fun m!925039 () Bool)

(assert (=> b!659348 m!925039))

(assert (=> b!659221 d!225746))

(declare-fun d!225748 () Bool)

(declare-fun fromListB!637 (List!7117) BalanceConc!4990)

(assert (=> d!225748 (= (seqFromList!1465 lt!280502) (fromListB!637 lt!280502))))

(declare-fun bs!94352 () Bool)

(assert (= bs!94352 d!225748))

(declare-fun m!925041 () Bool)

(assert (=> bs!94352 m!925041))

(assert (=> b!659223 d!225748))

(declare-fun lt!280552 () Bool)

(declare-fun d!225750 () Bool)

(assert (=> d!225750 (= lt!280552 (forall!1891 (list!3034 (++!1897 acc!218 (seqFromList!1465 lt!280502))) lambda!20422))))

(assert (=> d!225750 (= lt!280552 (forall!1892 (c!118669 (++!1897 acc!218 (seqFromList!1465 lt!280502))) lambda!20422))))

(assert (=> d!225750 (= (forall!1889 (++!1897 acc!218 (seqFromList!1465 lt!280502)) lambda!20422) lt!280552)))

(declare-fun bs!94353 () Bool)

(assert (= bs!94353 d!225750))

(assert (=> bs!94353 m!924909))

(declare-fun m!925043 () Bool)

(assert (=> bs!94353 m!925043))

(assert (=> bs!94353 m!925043))

(declare-fun m!925045 () Bool)

(assert (=> bs!94353 m!925045))

(declare-fun m!925047 () Bool)

(assert (=> bs!94353 m!925047))

(assert (=> b!659223 d!225750))

(declare-fun lt!280558 () BalanceConc!4990)

(declare-fun e!407735 () Bool)

(declare-fun b!659368 () Bool)

(declare-fun ++!1899 (List!7117 List!7117) List!7117)

(assert (=> b!659368 (= e!407735 (= (list!3034 lt!280558) (++!1899 (list!3034 acc!218) (list!3034 (seqFromList!1465 lt!280502)))))))

(declare-fun b!659366 () Bool)

(declare-fun res!292746 () Bool)

(assert (=> b!659366 (=> (not res!292746) (not e!407735))))

(declare-fun height!303 (Conc!2489) Int)

(declare-fun ++!1900 (Conc!2489 Conc!2489) Conc!2489)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!659366 (= res!292746 (<= (height!303 (++!1900 (c!118669 acc!218) (c!118669 (seqFromList!1465 lt!280502)))) (+ (max!0 (height!303 (c!118669 acc!218)) (height!303 (c!118669 (seqFromList!1465 lt!280502)))) 1)))))

(declare-fun b!659365 () Bool)

(declare-fun res!292745 () Bool)

(assert (=> b!659365 (=> (not res!292745) (not e!407735))))

(assert (=> b!659365 (= res!292745 (isBalanced!653 (++!1900 (c!118669 acc!218) (c!118669 (seqFromList!1465 lt!280502)))))))

(declare-fun b!659367 () Bool)

(declare-fun res!292747 () Bool)

(assert (=> b!659367 (=> (not res!292747) (not e!407735))))

(assert (=> b!659367 (= res!292747 (>= (height!303 (++!1900 (c!118669 acc!218) (c!118669 (seqFromList!1465 lt!280502)))) (max!0 (height!303 (c!118669 acc!218)) (height!303 (c!118669 (seqFromList!1465 lt!280502))))))))

(declare-fun d!225752 () Bool)

(assert (=> d!225752 e!407735))

(declare-fun res!292744 () Bool)

(assert (=> d!225752 (=> (not res!292744) (not e!407735))))

(declare-fun appendAssocInst!130 (Conc!2489 Conc!2489) Bool)

(assert (=> d!225752 (= res!292744 (appendAssocInst!130 (c!118669 acc!218) (c!118669 (seqFromList!1465 lt!280502))))))

(assert (=> d!225752 (= lt!280558 (BalanceConc!4991 (++!1900 (c!118669 acc!218) (c!118669 (seqFromList!1465 lt!280502)))))))

(assert (=> d!225752 (= (++!1897 acc!218 (seqFromList!1465 lt!280502)) lt!280558)))

(assert (= (and d!225752 res!292744) b!659365))

(assert (= (and b!659365 res!292745) b!659366))

(assert (= (and b!659366 res!292746) b!659367))

(assert (= (and b!659367 res!292747) b!659368))

(declare-fun m!925065 () Bool)

(assert (=> b!659366 m!925065))

(declare-fun m!925067 () Bool)

(assert (=> b!659366 m!925067))

(declare-fun m!925069 () Bool)

(assert (=> b!659366 m!925069))

(declare-fun m!925071 () Bool)

(assert (=> b!659366 m!925071))

(assert (=> b!659366 m!925071))

(assert (=> b!659366 m!925065))

(declare-fun m!925073 () Bool)

(assert (=> b!659366 m!925073))

(assert (=> b!659366 m!925067))

(assert (=> b!659365 m!925067))

(assert (=> b!659365 m!925067))

(declare-fun m!925075 () Bool)

(assert (=> b!659365 m!925075))

(declare-fun m!925077 () Bool)

(assert (=> d!225752 m!925077))

(assert (=> d!225752 m!925067))

(assert (=> b!659367 m!925065))

(assert (=> b!659367 m!925067))

(assert (=> b!659367 m!925069))

(assert (=> b!659367 m!925071))

(assert (=> b!659367 m!925071))

(assert (=> b!659367 m!925065))

(assert (=> b!659367 m!925073))

(assert (=> b!659367 m!925067))

(declare-fun m!925079 () Bool)

(assert (=> b!659368 m!925079))

(assert (=> b!659368 m!924907))

(assert (=> b!659368 m!924913))

(declare-fun m!925081 () Bool)

(assert (=> b!659368 m!925081))

(assert (=> b!659368 m!924907))

(assert (=> b!659368 m!925081))

(declare-fun m!925083 () Bool)

(assert (=> b!659368 m!925083))

(assert (=> b!659223 d!225752))

(declare-fun d!225756 () Bool)

(declare-fun list!3038 (Conc!2489) List!7117)

(assert (=> d!225756 (= (list!3034 acc!218) (list!3038 (c!118669 acc!218)))))

(declare-fun bs!94357 () Bool)

(assert (= bs!94357 d!225756))

(declare-fun m!925085 () Bool)

(assert (=> bs!94357 m!925085))

(assert (=> b!659223 d!225756))

(declare-fun d!225758 () Bool)

(assert (=> d!225758 (forall!1891 (++!1899 (list!3034 acc!218) lt!280502) lambda!20422)))

(declare-fun lt!280561 () Unit!12316)

(declare-fun choose!4671 (List!7117 List!7117 Int) Unit!12316)

(assert (=> d!225758 (= lt!280561 (choose!4671 (list!3034 acc!218) lt!280502 lambda!20422))))

(assert (=> d!225758 (forall!1891 (list!3034 acc!218) lambda!20422)))

(assert (=> d!225758 (= (lemmaConcatPreservesForall!76 (list!3034 acc!218) lt!280502 lambda!20422) lt!280561)))

(declare-fun bs!94358 () Bool)

(assert (= bs!94358 d!225758))

(assert (=> bs!94358 m!924907))

(declare-fun m!925087 () Bool)

(assert (=> bs!94358 m!925087))

(assert (=> bs!94358 m!925087))

(declare-fun m!925089 () Bool)

(assert (=> bs!94358 m!925089))

(assert (=> bs!94358 m!924907))

(declare-fun m!925091 () Bool)

(assert (=> bs!94358 m!925091))

(assert (=> bs!94358 m!924907))

(assert (=> bs!94358 m!925021))

(assert (=> b!659223 d!225758))

(declare-fun d!225760 () Bool)

(declare-fun lt!280566 () Int)

(declare-fun size!5656 (List!7119) Int)

(assert (=> d!225760 (= lt!280566 (size!5656 (list!3036 ts!14)))))

(declare-fun size!5657 (Conc!2491) Int)

(assert (=> d!225760 (= lt!280566 (size!5657 (c!118672 ts!14)))))

(assert (=> d!225760 (= (size!5649 ts!14) lt!280566)))

(declare-fun bs!94359 () Bool)

(assert (= bs!94359 d!225760))

(assert (=> bs!94359 m!925027))

(assert (=> bs!94359 m!925027))

(declare-fun m!925093 () Bool)

(assert (=> bs!94359 m!925093))

(declare-fun m!925095 () Bool)

(assert (=> bs!94359 m!925095))

(assert (=> b!659228 d!225760))

(declare-fun d!225762 () Bool)

(assert (=> d!225762 (= (isKeywordValue!0 lt!280501 RightBrace!1461) (choose!511 lt!280501 RightBrace!1461))))

(declare-fun bs!94360 () Bool)

(assert (= bs!94360 d!225762))

(declare-fun m!925097 () Bool)

(assert (=> bs!94360 m!925097))

(assert (=> b!659229 d!225762))

(declare-fun e!407744 () Bool)

(declare-fun tp!200967 () Bool)

(declare-fun tp!200966 () Bool)

(declare-fun b!659380 () Bool)

(assert (=> b!659380 (= e!407744 (and (inv!9061 (left!5744 (c!118672 ts!14))) tp!200966 (inv!9061 (right!6074 (c!118672 ts!14))) tp!200967))))

(declare-fun b!659382 () Bool)

(declare-fun e!407743 () Bool)

(declare-fun tp!200968 () Bool)

(assert (=> b!659382 (= e!407743 tp!200968)))

(declare-fun b!659381 () Bool)

(declare-fun inv!9074 (IArray!4983) Bool)

(assert (=> b!659381 (= e!407744 (and (inv!9074 (xs!5140 (c!118672 ts!14))) e!407743))))

(assert (=> b!659226 (= tp!200953 (and (inv!9061 (c!118672 ts!14)) e!407744))))

(assert (= (and b!659226 (is-Node!2491 (c!118672 ts!14))) b!659380))

(assert (= b!659381 b!659382))

(assert (= (and b!659226 (is-Leaf!3721 (c!118672 ts!14))) b!659381))

(declare-fun m!925107 () Bool)

(assert (=> b!659380 m!925107))

(declare-fun m!925109 () Bool)

(assert (=> b!659380 m!925109))

(declare-fun m!925111 () Bool)

(assert (=> b!659381 m!925111))

(assert (=> b!659226 m!924891))

(declare-fun e!407749 () Bool)

(declare-fun tp!200974 () Bool)

(declare-fun tp!200973 () Bool)

(declare-fun b!659389 () Bool)

(assert (=> b!659389 (= e!407749 (and (inv!9058 (left!5742 (c!118669 acc!218))) tp!200973 (inv!9058 (right!6072 (c!118669 acc!218))) tp!200974))))

(declare-fun b!659390 () Bool)

(declare-fun inv!9075 (IArray!4979) Bool)

(assert (=> b!659390 (= e!407749 (inv!9075 (xs!5138 (c!118669 acc!218))))))

(assert (=> b!659221 (= tp!200952 (and (inv!9058 (c!118669 acc!218)) e!407749))))

(assert (= (and b!659221 (is-Node!2489 (c!118669 acc!218))) b!659389))

(assert (= (and b!659221 (is-Leaf!3719 (c!118669 acc!218))) b!659390))

(declare-fun m!925113 () Bool)

(assert (=> b!659389 m!925113))

(declare-fun m!925115 () Bool)

(assert (=> b!659389 m!925115))

(declare-fun m!925117 () Bool)

(assert (=> b!659390 m!925117))

(assert (=> b!659221 m!924893))

(push 1)

(assert (not b!659382))

(assert (not d!225744))

(assert (not b!659346))

(assert (not b!659320))

(assert (not d!225730))

(assert (not b!659270))

(assert (not b!659365))

(assert (not b!659272))

(assert (not d!225736))

(assert (not d!225752))

(assert (not b!659226))

(assert (not b!659390))

(assert (not bm!42545))

(assert (not b!659389))

(assert (not d!225760))

(assert (not b!659368))

(assert (not b!659306))

(assert (not d!225750))

(assert (not b!659301))

(assert (not b!659308))

(assert (not d!225740))

(assert (not d!225718))

(assert (not b!659381))

(assert (not b!659366))

(assert (not b!659307))

(assert (not d!225742))

(assert (not d!225756))

(assert (not d!225748))

(assert (not d!225738))

(assert (not d!225762))

(assert (not b!659323))

(assert (not b!659348))

(assert (not b!659303))

(assert (not b!659221))

(assert (not b!659380))

(assert (not d!225710))

(assert (not d!225758))

(assert (not b!659367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

