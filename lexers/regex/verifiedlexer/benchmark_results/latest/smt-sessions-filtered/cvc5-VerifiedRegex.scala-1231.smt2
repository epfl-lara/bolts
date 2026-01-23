; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64468 () Bool)

(assert start!64468)

(declare-fun b!659491 () Bool)

(assert (=> b!659491 true))

(declare-fun b!659490 () Bool)

(declare-fun e!407807 () Bool)

(declare-fun e!407808 () Bool)

(assert (=> b!659490 (= e!407807 e!407808)))

(declare-fun res!292815 () Bool)

(assert (=> b!659490 (=> (not res!292815) (not e!407808))))

(declare-datatypes ((List!7129 0))(
  ( (Nil!7115) (Cons!7115 (h!12516 (_ BitVec 16)) (t!86110 List!7129)) )
))
(declare-datatypes ((TokenValue!1465 0))(
  ( (FloatLiteralValue!2930 (text!10700 List!7129)) (TokenValueExt!1464 (__x!5041 Int)) (Broken!7325 (value!45910 List!7129)) (Object!1478) (End!1465) (Def!1465) (Underscore!1465) (Match!1465) (Else!1465) (Error!1465) (Case!1465) (If!1465) (Extends!1465) (Abstract!1465) (Class!1465) (Val!1465) (DelimiterValue!2930 (del!1525 List!7129)) (KeywordValue!1471 (value!45911 List!7129)) (CommentValue!2930 (value!45912 List!7129)) (WhitespaceValue!2930 (value!45913 List!7129)) (IndentationValue!1465 (value!45914 List!7129)) (String!9064) (Int32!1465) (Broken!7326 (value!45915 List!7129)) (Boolean!1466) (Unit!12323) (OperatorValue!1468 (op!1525 List!7129)) (IdentifierValue!2930 (value!45916 List!7129)) (IdentifierValue!2931 (value!45917 List!7129)) (WhitespaceValue!2931 (value!45918 List!7129)) (True!2930) (False!2930) (Broken!7327 (value!45919 List!7129)) (Broken!7328 (value!45920 List!7129)) (True!2931) (RightBrace!1465) (RightBracket!1465) (Colon!1465) (Null!1465) (Comma!1465) (LeftBracket!1465) (False!2931) (LeftBrace!1465) (ImaginaryLiteralValue!1465 (text!10701 List!7129)) (StringLiteralValue!4395 (value!45921 List!7129)) (EOFValue!1465 (value!45922 List!7129)) (IdentValue!1465 (value!45923 List!7129)) (DelimiterValue!2931 (value!45924 List!7129)) (DedentValue!1465 (value!45925 List!7129)) (NewLineValue!1465 (value!45926 List!7129)) (IntegerValue!4395 (value!45927 (_ BitVec 32)) (text!10702 List!7129)) (IntegerValue!4396 (value!45928 Int) (text!10703 List!7129)) (Times!1465) (Or!1465) (Equal!1465) (Minus!1465) (Broken!7329 (value!45929 List!7129)) (And!1465) (Div!1465) (LessEqual!1465) (Mod!1465) (Concat!3231) (Not!1465) (Plus!1465) (SpaceValue!1465 (value!45930 List!7129)) (IntegerValue!4397 (value!45931 Int) (text!10704 List!7129)) (StringLiteralValue!4396 (text!10705 List!7129)) (FloatLiteralValue!2931 (text!10706 List!7129)) (BytesLiteralValue!1465 (value!45932 List!7129)) (CommentValue!2931 (value!45933 List!7129)) (StringLiteralValue!4397 (value!45934 List!7129)) (ErrorTokenValue!1465 (msg!1526 List!7129)) )
))
(declare-datatypes ((Regex!1766 0))(
  ( (ElementMatch!1766 (c!118724 (_ BitVec 16))) (Concat!3232 (regOne!4044 Regex!1766) (regTwo!4044 Regex!1766)) (EmptyExpr!1766) (Star!1766 (reg!2095 Regex!1766)) (EmptyLang!1766) (Union!1766 (regOne!4045 Regex!1766) (regTwo!4045 Regex!1766)) )
))
(declare-datatypes ((String!9065 0))(
  ( (String!9066 (value!45935 String)) )
))
(declare-datatypes ((IArray!5003 0))(
  ( (IArray!5004 (innerList!2559 List!7129)) )
))
(declare-datatypes ((Conc!2501 0))(
  ( (Node!2501 (left!5764 Conc!2501) (right!6094 Conc!2501) (csize!5232 Int) (cheight!2712 Int)) (Leaf!3733 (xs!5150 IArray!5003) (csize!5233 Int)) (Empty!2501) )
))
(declare-datatypes ((BalanceConc!5014 0))(
  ( (BalanceConc!5015 (c!118725 Conc!2501)) )
))
(declare-datatypes ((TokenValueInjection!2682 0))(
  ( (TokenValueInjection!2683 (toValue!2372 Int) (toChars!2231 Int)) )
))
(declare-datatypes ((Rule!2662 0))(
  ( (Rule!2663 (regex!1431 Regex!1766) (tag!1693 String!9065) (isSeparator!1431 Bool) (transformation!1431 TokenValueInjection!2682)) )
))
(declare-datatypes ((Token!2584 0))(
  ( (Token!2585 (value!45936 TokenValue!1465) (rule!2226 Rule!2662) (size!5662 Int) (originalCharacters!1463 List!7129)) )
))
(declare-fun lt!280591 () Token!2584)

(declare-fun isKeywordValue!0 (Token!2584 TokenValue!1465) Bool)

(assert (=> b!659490 (= res!292815 (not (isKeywordValue!0 lt!280591 LeftBrace!1465)))))

(declare-datatypes ((List!7130 0))(
  ( (Nil!7116) (Cons!7116 (h!12517 Token!2584) (t!86111 List!7130)) )
))
(declare-datatypes ((IArray!5005 0))(
  ( (IArray!5006 (innerList!2560 List!7130)) )
))
(declare-datatypes ((Conc!2502 0))(
  ( (Node!2502 (left!5765 Conc!2502) (right!6095 Conc!2502) (csize!5234 Int) (cheight!2713 Int)) (Leaf!3734 (xs!5151 IArray!5005) (csize!5235 Int)) (Empty!2502) )
))
(declare-datatypes ((BalanceConc!5016 0))(
  ( (BalanceConc!5017 (c!118726 Conc!2502)) )
))
(declare-fun ts!14 () BalanceConc!5016)

(declare-fun from!502 () Int)

(declare-fun apply!1732 (BalanceConc!5016 Int) Token!2584)

(assert (=> b!659490 (= lt!280591 (apply!1732 ts!14 from!502))))

(declare-fun res!292813 () Bool)

(assert (=> b!659491 (=> (not res!292813) (not e!407807))))

(declare-datatypes ((List!7131 0))(
  ( (Nil!7117) (Cons!7117 (h!12518 Int) (t!86112 List!7131)) )
))
(declare-datatypes ((IArray!5007 0))(
  ( (IArray!5008 (innerList!2561 List!7131)) )
))
(declare-datatypes ((Conc!2503 0))(
  ( (Node!2503 (left!5766 Conc!2503) (right!6096 Conc!2503) (csize!5236 Int) (cheight!2714 Int)) (Leaf!3735 (xs!5152 IArray!5007) (csize!5237 Int)) (Empty!2503) )
))
(declare-datatypes ((BalanceConc!5018 0))(
  ( (BalanceConc!5019 (c!118727 Conc!2503)) )
))
(declare-fun acc!218 () BalanceConc!5018)

(declare-fun lambda!20456 () Int)

(declare-fun forall!1897 (BalanceConc!5018 Int) Bool)

(assert (=> b!659491 (= res!292813 (forall!1897 acc!218 lambda!20456))))

(declare-fun b!659492 () Bool)

(declare-fun e!407809 () Bool)

(declare-fun tp!201006 () Bool)

(declare-fun inv!9090 (Conc!2503) Bool)

(assert (=> b!659492 (= e!407809 (and (inv!9090 (c!118727 acc!218)) tp!201006))))

(declare-fun size!101 () Int)

(declare-fun b!659493 () Bool)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!5016 Int Int BalanceConc!5018) BalanceConc!5018)

(assert (=> b!659493 (= e!407808 (not (forall!1897 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) acc!218) lambda!20456)))))

(declare-fun b!659494 () Bool)

(declare-fun res!292811 () Bool)

(assert (=> b!659494 (=> (not res!292811) (not e!407808))))

(assert (=> b!659494 (= res!292811 (not (isKeywordValue!0 lt!280591 RightBrace!1465)))))

(declare-fun b!659496 () Bool)

(declare-fun res!292812 () Bool)

(assert (=> b!659496 (=> (not res!292812) (not e!407807))))

(declare-fun lt!280592 () Int)

(assert (=> b!659496 (= res!292812 (< from!502 lt!280592))))

(declare-fun b!659497 () Bool)

(declare-fun e!407810 () Bool)

(declare-fun tp!201007 () Bool)

(declare-fun inv!9091 (Conc!2502) Bool)

(assert (=> b!659497 (= e!407810 (and (inv!9091 (c!118726 ts!14)) tp!201007))))

(declare-fun res!292814 () Bool)

(declare-fun e!407806 () Bool)

(assert (=> start!64468 (=> (not res!292814) (not e!407806))))

(assert (=> start!64468 (= res!292814 (>= from!502 0))))

(assert (=> start!64468 e!407806))

(assert (=> start!64468 true))

(declare-fun inv!9092 (BalanceConc!5018) Bool)

(assert (=> start!64468 (and (inv!9092 acc!218) e!407809)))

(declare-fun inv!9093 (BalanceConc!5016) Bool)

(assert (=> start!64468 (and (inv!9093 ts!14) e!407810)))

(declare-fun b!659495 () Bool)

(assert (=> b!659495 (= e!407806 e!407807)))

(declare-fun res!292816 () Bool)

(assert (=> b!659495 (=> (not res!292816) (not e!407807))))

(assert (=> b!659495 (= res!292816 (and (<= from!502 lt!280592) (= lt!280592 size!101)))))

(declare-fun size!5663 (BalanceConc!5016) Int)

(assert (=> b!659495 (= lt!280592 (size!5663 ts!14))))

(assert (= (and start!64468 res!292814) b!659495))

(assert (= (and b!659495 res!292816) b!659491))

(assert (= (and b!659491 res!292813) b!659496))

(assert (= (and b!659496 res!292812) b!659490))

(assert (= (and b!659490 res!292815) b!659494))

(assert (= (and b!659494 res!292811) b!659493))

(assert (= start!64468 b!659492))

(assert (= start!64468 b!659497))

(declare-fun m!925203 () Bool)

(assert (=> b!659492 m!925203))

(declare-fun m!925205 () Bool)

(assert (=> b!659491 m!925205))

(declare-fun m!925207 () Bool)

(assert (=> b!659495 m!925207))

(declare-fun m!925209 () Bool)

(assert (=> b!659497 m!925209))

(declare-fun m!925211 () Bool)

(assert (=> start!64468 m!925211))

(declare-fun m!925213 () Bool)

(assert (=> start!64468 m!925213))

(declare-fun m!925215 () Bool)

(assert (=> b!659494 m!925215))

(declare-fun m!925217 () Bool)

(assert (=> b!659493 m!925217))

(assert (=> b!659493 m!925217))

(declare-fun m!925219 () Bool)

(assert (=> b!659493 m!925219))

(declare-fun m!925221 () Bool)

(assert (=> b!659490 m!925221))

(declare-fun m!925223 () Bool)

(assert (=> b!659490 m!925223))

(push 1)

(assert (not b!659497))

(assert (not b!659494))

(assert (not b!659493))

(assert (not b!659490))

(assert (not b!659495))

(assert (not b!659492))

(assert (not start!64468))

(assert (not b!659491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225776 () Bool)

(declare-fun c!118734 () Bool)

(assert (=> d!225776 (= c!118734 (is-Node!2502 (c!118726 ts!14)))))

(declare-fun e!407830 () Bool)

(assert (=> d!225776 (= (inv!9091 (c!118726 ts!14)) e!407830)))

(declare-fun b!659532 () Bool)

(declare-fun inv!9098 (Conc!2502) Bool)

(assert (=> b!659532 (= e!407830 (inv!9098 (c!118726 ts!14)))))

(declare-fun b!659533 () Bool)

(declare-fun e!407831 () Bool)

(assert (=> b!659533 (= e!407830 e!407831)))

(declare-fun res!292840 () Bool)

(assert (=> b!659533 (= res!292840 (not (is-Leaf!3734 (c!118726 ts!14))))))

(assert (=> b!659533 (=> res!292840 e!407831)))

(declare-fun b!659534 () Bool)

(declare-fun inv!9099 (Conc!2502) Bool)

(assert (=> b!659534 (= e!407831 (inv!9099 (c!118726 ts!14)))))

(assert (= (and d!225776 c!118734) b!659532))

(assert (= (and d!225776 (not c!118734)) b!659533))

(assert (= (and b!659533 (not res!292840)) b!659534))

(declare-fun m!925247 () Bool)

(assert (=> b!659532 m!925247))

(declare-fun m!925249 () Bool)

(assert (=> b!659534 m!925249))

(assert (=> b!659497 d!225776))

(declare-fun d!225778 () Bool)

(declare-fun c!118737 () Bool)

(assert (=> d!225778 (= c!118737 (is-Node!2503 (c!118727 acc!218)))))

(declare-fun e!407836 () Bool)

(assert (=> d!225778 (= (inv!9090 (c!118727 acc!218)) e!407836)))

(declare-fun b!659541 () Bool)

(declare-fun inv!9100 (Conc!2503) Bool)

(assert (=> b!659541 (= e!407836 (inv!9100 (c!118727 acc!218)))))

(declare-fun b!659542 () Bool)

(declare-fun e!407837 () Bool)

(assert (=> b!659542 (= e!407836 e!407837)))

(declare-fun res!292843 () Bool)

(assert (=> b!659542 (= res!292843 (not (is-Leaf!3735 (c!118727 acc!218))))))

(assert (=> b!659542 (=> res!292843 e!407837)))

(declare-fun b!659543 () Bool)

(declare-fun inv!9101 (Conc!2503) Bool)

(assert (=> b!659543 (= e!407837 (inv!9101 (c!118727 acc!218)))))

(assert (= (and d!225778 c!118737) b!659541))

(assert (= (and d!225778 (not c!118737)) b!659542))

(assert (= (and b!659542 (not res!292843)) b!659543))

(declare-fun m!925251 () Bool)

(assert (=> b!659541 m!925251))

(declare-fun m!925253 () Bool)

(assert (=> b!659543 m!925253))

(assert (=> b!659492 d!225778))

(declare-fun d!225780 () Bool)

(declare-fun lt!280601 () Bool)

(declare-fun forall!1899 (List!7131 Int) Bool)

(declare-fun list!3040 (BalanceConc!5018) List!7131)

(assert (=> d!225780 (= lt!280601 (forall!1899 (list!3040 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) acc!218)) lambda!20456))))

(declare-fun forall!1900 (Conc!2503 Int) Bool)

(assert (=> d!225780 (= lt!280601 (forall!1900 (c!118727 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) acc!218)) lambda!20456))))

(assert (=> d!225780 (= (forall!1897 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) acc!218) lambda!20456) lt!280601)))

(declare-fun bs!94369 () Bool)

(assert (= bs!94369 d!225780))

(assert (=> bs!94369 m!925217))

(declare-fun m!925255 () Bool)

(assert (=> bs!94369 m!925255))

(assert (=> bs!94369 m!925255))

(declare-fun m!925257 () Bool)

(assert (=> bs!94369 m!925257))

(declare-fun m!925259 () Bool)

(assert (=> bs!94369 m!925259))

(assert (=> b!659493 d!225780))

(declare-fun bs!94370 () Bool)

(declare-fun b!659564 () Bool)

(assert (= bs!94370 (and b!659564 b!659491)))

(declare-fun lambda!20466 () Int)

(assert (=> bs!94370 (= lambda!20466 lambda!20456)))

(assert (=> b!659564 true))

(declare-fun bs!94371 () Bool)

(declare-fun d!225782 () Bool)

(assert (= bs!94371 (and d!225782 b!659491)))

(declare-fun lambda!20467 () Int)

(assert (=> bs!94371 (= lambda!20467 lambda!20456)))

(declare-fun bs!94372 () Bool)

(assert (= bs!94372 (and d!225782 b!659564)))

(assert (=> bs!94372 (= lambda!20467 lambda!20466)))

(assert (=> d!225782 true))

(declare-fun b!659560 () Bool)

(declare-fun e!407851 () Bool)

(declare-fun lt!280609 () Token!2584)

(assert (=> b!659560 (= e!407851 (isKeywordValue!0 lt!280609 RightBrace!1465))))

(declare-fun b!659561 () Bool)

(declare-fun e!407852 () BalanceConc!5018)

(declare-fun append!258 (BalanceConc!5018 Int) BalanceConc!5018)

(assert (=> b!659561 (= e!407852 (append!258 acc!218 (+ 1 from!502)))))

(declare-fun b!659562 () Bool)

(declare-fun e!407848 () BalanceConc!5018)

(declare-fun e!407850 () BalanceConc!5018)

(assert (=> b!659562 (= e!407848 e!407850)))

(assert (=> b!659562 (= lt!280609 (apply!1732 ts!14 (+ 1 from!502)))))

(declare-fun res!292849 () Bool)

(assert (=> b!659562 (= res!292849 (isKeywordValue!0 lt!280609 LeftBrace!1465))))

(assert (=> b!659562 (=> res!292849 e!407851)))

(declare-fun c!118744 () Bool)

(assert (=> b!659562 (= c!118744 e!407851)))

(declare-fun b!659563 () Bool)

(declare-fun e!407849 () Bool)

(assert (=> b!659563 (= e!407849 (<= (+ 1 from!502) (size!5663 ts!14)))))

(declare-fun bm!42551 () Bool)

(declare-fun c!118746 () Bool)

(assert (=> bm!42551 (= c!118746 c!118744)))

(declare-fun call!42556 () BalanceConc!5018)

(assert (=> bm!42551 (= call!42556 (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502 1) e!407852))))

(declare-fun lt!280608 () BalanceConc!5018)

(assert (=> d!225782 (forall!1897 lt!280608 lambda!20467)))

(assert (=> d!225782 (= lt!280608 e!407848)))

(declare-fun c!118745 () Bool)

(assert (=> d!225782 (= c!118745 (>= (+ 1 from!502) (size!5663 ts!14)))))

(assert (=> d!225782 e!407849))

(declare-fun res!292848 () Bool)

(assert (=> d!225782 (=> (not res!292848) (not e!407849))))

(assert (=> d!225782 (= res!292848 (>= (+ 1 from!502) 0))))

(assert (=> d!225782 (= (indicesOfOpenBraces!0 ts!14 size!101 (+ 1 from!502) acc!218) lt!280608)))

(declare-datatypes ((Unit!12325 0))(
  ( (Unit!12326) )
))
(declare-fun lt!280610 () Unit!12325)

(declare-fun lemmaConcatPreservesForall!78 (List!7131 List!7131 Int) Unit!12325)

(assert (=> b!659564 (= lt!280610 (lemmaConcatPreservesForall!78 (list!3040 acc!218) (Cons!7117 (+ 1 from!502) Nil!7117) lambda!20466))))

(assert (=> b!659564 (= e!407850 call!42556)))

(declare-fun b!659565 () Bool)

(assert (=> b!659565 (= e!407852 acc!218)))

(declare-fun b!659566 () Bool)

(assert (=> b!659566 (= e!407850 call!42556)))

(declare-fun b!659567 () Bool)

(assert (=> b!659567 (= e!407848 acc!218)))

(assert (= (and d!225782 res!292848) b!659563))

(assert (= (and d!225782 c!118745) b!659567))

(assert (= (and d!225782 (not c!118745)) b!659562))

(assert (= (and b!659562 (not res!292849)) b!659560))

(assert (= (and b!659562 c!118744) b!659564))

(assert (= (and b!659562 (not c!118744)) b!659566))

(assert (= (or b!659564 b!659566) bm!42551))

(assert (= (and bm!42551 c!118746) b!659561))

(assert (= (and bm!42551 (not c!118746)) b!659565))

(declare-fun m!925261 () Bool)

(assert (=> b!659561 m!925261))

(declare-fun m!925263 () Bool)

(assert (=> d!225782 m!925263))

(assert (=> d!225782 m!925207))

(declare-fun m!925265 () Bool)

(assert (=> b!659564 m!925265))

(assert (=> b!659564 m!925265))

(declare-fun m!925267 () Bool)

(assert (=> b!659564 m!925267))

(declare-fun m!925269 () Bool)

(assert (=> bm!42551 m!925269))

(assert (=> b!659563 m!925207))

(declare-fun m!925271 () Bool)

(assert (=> b!659562 m!925271))

(declare-fun m!925273 () Bool)

(assert (=> b!659562 m!925273))

(declare-fun m!925275 () Bool)

(assert (=> b!659560 m!925275))

(assert (=> b!659493 d!225782))

(declare-fun d!225784 () Bool)

(declare-fun choose!511 (Token!2584 TokenValue!1465) Bool)

(assert (=> d!225784 (= (isKeywordValue!0 lt!280591 RightBrace!1465) (choose!511 lt!280591 RightBrace!1465))))

(declare-fun bs!94373 () Bool)

(assert (= bs!94373 d!225784))

(declare-fun m!925277 () Bool)

(assert (=> bs!94373 m!925277))

(assert (=> b!659494 d!225784))

(declare-fun d!225786 () Bool)

(declare-fun lt!280613 () Int)

(declare-fun size!5667 (List!7130) Int)

(declare-fun list!3041 (BalanceConc!5016) List!7130)

(assert (=> d!225786 (= lt!280613 (size!5667 (list!3041 ts!14)))))

(declare-fun size!5668 (Conc!2502) Int)

(assert (=> d!225786 (= lt!280613 (size!5668 (c!118726 ts!14)))))

(assert (=> d!225786 (= (size!5663 ts!14) lt!280613)))

(declare-fun bs!94374 () Bool)

(assert (= bs!94374 d!225786))

(declare-fun m!925279 () Bool)

(assert (=> bs!94374 m!925279))

(assert (=> bs!94374 m!925279))

(declare-fun m!925281 () Bool)

(assert (=> bs!94374 m!925281))

(declare-fun m!925283 () Bool)

(assert (=> bs!94374 m!925283))

(assert (=> b!659495 d!225786))

(declare-fun d!225788 () Bool)

(assert (=> d!225788 (= (isKeywordValue!0 lt!280591 LeftBrace!1465) (choose!511 lt!280591 LeftBrace!1465))))

(declare-fun bs!94375 () Bool)

(assert (= bs!94375 d!225788))

(declare-fun m!925285 () Bool)

(assert (=> bs!94375 m!925285))

(assert (=> b!659490 d!225788))

(declare-fun d!225790 () Bool)

(declare-fun lt!280616 () Token!2584)

(declare-fun apply!1734 (List!7130 Int) Token!2584)

(assert (=> d!225790 (= lt!280616 (apply!1734 (list!3041 ts!14) from!502))))

(declare-fun apply!1735 (Conc!2502 Int) Token!2584)

(assert (=> d!225790 (= lt!280616 (apply!1735 (c!118726 ts!14) from!502))))

(declare-fun e!407855 () Bool)

(assert (=> d!225790 e!407855))

(declare-fun res!292852 () Bool)

(assert (=> d!225790 (=> (not res!292852) (not e!407855))))

(assert (=> d!225790 (= res!292852 (<= 0 from!502))))

(assert (=> d!225790 (= (apply!1732 ts!14 from!502) lt!280616)))

(declare-fun b!659570 () Bool)

(assert (=> b!659570 (= e!407855 (< from!502 (size!5663 ts!14)))))

(assert (= (and d!225790 res!292852) b!659570))

(assert (=> d!225790 m!925279))

(assert (=> d!225790 m!925279))

(declare-fun m!925287 () Bool)

(assert (=> d!225790 m!925287))

(declare-fun m!925289 () Bool)

(assert (=> d!225790 m!925289))

(assert (=> b!659570 m!925207))

(assert (=> b!659490 d!225790))

(declare-fun d!225792 () Bool)

(declare-fun isBalanced!657 (Conc!2503) Bool)

(assert (=> d!225792 (= (inv!9092 acc!218) (isBalanced!657 (c!118727 acc!218)))))

(declare-fun bs!94376 () Bool)

(assert (= bs!94376 d!225792))

(declare-fun m!925291 () Bool)

(assert (=> bs!94376 m!925291))

(assert (=> start!64468 d!225792))

(declare-fun d!225794 () Bool)

(declare-fun isBalanced!658 (Conc!2502) Bool)

(assert (=> d!225794 (= (inv!9093 ts!14) (isBalanced!658 (c!118726 ts!14)))))

(declare-fun bs!94377 () Bool)

(assert (= bs!94377 d!225794))

(declare-fun m!925293 () Bool)

(assert (=> bs!94377 m!925293))

(assert (=> start!64468 d!225794))

(declare-fun d!225796 () Bool)

(declare-fun lt!280617 () Bool)

(assert (=> d!225796 (= lt!280617 (forall!1899 (list!3040 acc!218) lambda!20456))))

(assert (=> d!225796 (= lt!280617 (forall!1900 (c!118727 acc!218) lambda!20456))))

(assert (=> d!225796 (= (forall!1897 acc!218 lambda!20456) lt!280617)))

(declare-fun bs!94378 () Bool)

(assert (= bs!94378 d!225796))

(assert (=> bs!94378 m!925265))

(assert (=> bs!94378 m!925265))

(declare-fun m!925295 () Bool)

(assert (=> bs!94378 m!925295))

(declare-fun m!925297 () Bool)

(assert (=> bs!94378 m!925297))

(assert (=> b!659491 d!225796))

(declare-fun b!659579 () Bool)

(declare-fun e!407860 () Bool)

(declare-fun tp!201020 () Bool)

(declare-fun tp!201021 () Bool)

(assert (=> b!659579 (= e!407860 (and (inv!9091 (left!5765 (c!118726 ts!14))) tp!201021 (inv!9091 (right!6095 (c!118726 ts!14))) tp!201020))))

(declare-fun b!659581 () Bool)

(declare-fun e!407861 () Bool)

(declare-fun tp!201022 () Bool)

(assert (=> b!659581 (= e!407861 tp!201022)))

(declare-fun b!659580 () Bool)

(declare-fun inv!9102 (IArray!5005) Bool)

(assert (=> b!659580 (= e!407860 (and (inv!9102 (xs!5151 (c!118726 ts!14))) e!407861))))

(assert (=> b!659497 (= tp!201007 (and (inv!9091 (c!118726 ts!14)) e!407860))))

(assert (= (and b!659497 (is-Node!2502 (c!118726 ts!14))) b!659579))

(assert (= b!659580 b!659581))

(assert (= (and b!659497 (is-Leaf!3734 (c!118726 ts!14))) b!659580))

(declare-fun m!925299 () Bool)

(assert (=> b!659579 m!925299))

(declare-fun m!925301 () Bool)

(assert (=> b!659579 m!925301))

(declare-fun m!925303 () Bool)

(assert (=> b!659580 m!925303))

(assert (=> b!659497 m!925209))

(declare-fun e!407866 () Bool)

(declare-fun b!659588 () Bool)

(declare-fun tp!201027 () Bool)

(declare-fun tp!201028 () Bool)

(assert (=> b!659588 (= e!407866 (and (inv!9090 (left!5766 (c!118727 acc!218))) tp!201027 (inv!9090 (right!6096 (c!118727 acc!218))) tp!201028))))

(declare-fun b!659589 () Bool)

(declare-fun inv!9103 (IArray!5007) Bool)

(assert (=> b!659589 (= e!407866 (inv!9103 (xs!5152 (c!118727 acc!218))))))

(assert (=> b!659492 (= tp!201006 (and (inv!9090 (c!118727 acc!218)) e!407866))))

(assert (= (and b!659492 (is-Node!2503 (c!118727 acc!218))) b!659588))

(assert (= (and b!659492 (is-Leaf!3735 (c!118727 acc!218))) b!659589))

(declare-fun m!925305 () Bool)

(assert (=> b!659588 m!925305))

(declare-fun m!925307 () Bool)

(assert (=> b!659588 m!925307))

(declare-fun m!925309 () Bool)

(assert (=> b!659589 m!925309))

(assert (=> b!659492 m!925203))

(push 1)

(assert (not b!659580))

(assert (not d!225796))

(assert (not b!659589))

(assert (not b!659564))

(assert (not b!659532))

(assert (not b!659543))

(assert (not d!225782))

(assert (not b!659563))

(assert (not b!659497))

(assert (not d!225788))

(assert (not b!659562))

(assert (not b!659579))

(assert (not b!659492))

(assert (not bm!42551))

(assert (not d!225792))

(assert (not b!659581))

(assert (not d!225794))

(assert (not d!225780))

(assert (not b!659570))

(assert (not d!225790))

(assert (not d!225786))

(assert (not d!225784))

(assert (not b!659534))

(assert (not b!659560))

(assert (not b!659541))

(assert (not b!659588))

(assert (not b!659561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

