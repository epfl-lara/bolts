; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283380 () Bool)

(assert start!283380)

(declare-fun b!2909863 () Bool)

(declare-fun e!1836737 () Bool)

(declare-fun e!1836739 () Bool)

(assert (=> b!2909863 (= e!1836737 e!1836739)))

(declare-fun res!1201346 () Bool)

(assert (=> b!2909863 (=> (not res!1201346) (not e!1836739))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023508 () Int)

(assert (=> b!2909863 (= res!1201346 (and (<= i!1878 lt!1023508) (not (= i!1878 lt!1023508))))))

(declare-datatypes ((C!18062 0))(
  ( (C!18063 (val!11065 Int)) )
))
(declare-datatypes ((List!34791 0))(
  ( (Nil!34667) (Cons!34667 (h!40087 C!18062) (t!233844 List!34791)) )
))
(declare-datatypes ((IArray!21035 0))(
  ( (IArray!21036 (innerList!10575 List!34791)) )
))
(declare-datatypes ((Conc!10515 0))(
  ( (Node!10515 (left!26040 Conc!10515) (right!26370 Conc!10515) (csize!21260 Int) (cheight!10726 Int)) (Leaf!16209 (xs!13633 IArray!21035) (csize!21261 Int)) (Empty!10515) )
))
(declare-datatypes ((BalanceConc!20668 0))(
  ( (BalanceConc!20669 (c!474361 Conc!10515)) )
))
(declare-fun input!3770 () BalanceConc!20668)

(declare-fun size!26411 (BalanceConc!20668) Int)

(assert (=> b!2909863 (= lt!1023508 (size!26411 input!3770))))

(declare-fun b!2909864 () Bool)

(declare-fun e!1836738 () Bool)

(declare-fun tp!934976 () Bool)

(declare-fun inv!46828 (Conc!10515) Bool)

(assert (=> b!2909864 (= e!1836738 (and (inv!46828 (c!474361 input!3770)) tp!934976))))

(declare-fun b!2909865 () Bool)

(declare-fun e!1836740 () Bool)

(declare-fun tp!934978 () Bool)

(assert (=> b!2909865 (= e!1836740 tp!934978)))

(declare-fun b!2909866 () Bool)

(declare-fun e!1836736 () Bool)

(assert (=> b!2909866 (= e!1836739 (not e!1836736))))

(declare-fun res!1201348 () Bool)

(assert (=> b!2909866 (=> res!1201348 e!1836736)))

(declare-fun lt!1023503 () List!34791)

(declare-fun lt!1023504 () List!34791)

(declare-fun lt!1023502 () C!18062)

(declare-fun $colon$colon!612 (List!34791 C!18062) List!34791)

(assert (=> b!2909866 (= res!1201348 (not (= lt!1023503 ($colon$colon!612 lt!1023504 lt!1023502))))))

(declare-fun dropList!1041 (BalanceConc!20668 Int) List!34791)

(assert (=> b!2909866 (= lt!1023503 (dropList!1041 input!3770 i!1878))))

(declare-fun lt!1023505 () List!34791)

(declare-fun lt!1023500 () List!34791)

(declare-fun tail!4681 (List!34791) List!34791)

(declare-fun drop!1825 (List!34791 Int) List!34791)

(assert (=> b!2909866 (= (tail!4681 lt!1023505) (drop!1825 lt!1023500 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48215 0))(
  ( (Unit!48216) )
))
(declare-fun lt!1023501 () Unit!48215)

(declare-fun lemmaDropTail!890 (List!34791 Int) Unit!48215)

(assert (=> b!2909866 (= lt!1023501 (lemmaDropTail!890 lt!1023500 i!1878))))

(declare-fun head!6456 (List!34791) C!18062)

(declare-fun apply!7906 (List!34791 Int) C!18062)

(assert (=> b!2909866 (= (head!6456 lt!1023505) (apply!7906 lt!1023500 i!1878))))

(assert (=> b!2909866 (= lt!1023505 (drop!1825 lt!1023500 i!1878))))

(declare-fun lt!1023509 () Unit!48215)

(declare-fun lemmaDropApply!1004 (List!34791 Int) Unit!48215)

(assert (=> b!2909866 (= lt!1023509 (lemmaDropApply!1004 lt!1023500 i!1878))))

(declare-fun list!12611 (BalanceConc!20668) List!34791)

(assert (=> b!2909866 (= lt!1023500 (list!12611 input!3770))))

(declare-datatypes ((Regex!8940 0))(
  ( (ElementMatch!8940 (c!474362 C!18062)) (Concat!14261 (regOne!18392 Regex!8940) (regTwo!18392 Regex!8940)) (EmptyExpr!8940) (Star!8940 (reg!9269 Regex!8940)) (EmptyLang!8940) (Union!8940 (regOne!18393 Regex!8940) (regTwo!18393 Regex!8940)) )
))
(declare-datatypes ((List!34792 0))(
  ( (Nil!34668) (Cons!34668 (h!40088 Regex!8940) (t!233845 List!34792)) )
))
(declare-datatypes ((Context!5520 0))(
  ( (Context!5521 (exprs!3260 List!34792)) )
))
(declare-fun lt!1023507 () (Set Context!5520))

(declare-fun prefixMatchZipper!376 ((Set Context!5520) List!34791) Bool)

(declare-fun prefixMatchZipperSequence!780 ((Set Context!5520) BalanceConc!20668 Int) Bool)

(assert (=> b!2909866 (= (prefixMatchZipper!376 lt!1023507 lt!1023504) (prefixMatchZipperSequence!780 lt!1023507 input!3770 (+ 1 i!1878)))))

(assert (=> b!2909866 (= lt!1023504 (dropList!1041 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023506 () Unit!48215)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!256 ((Set Context!5520) BalanceConc!20668 Int) Unit!48215)

(assert (=> b!2909866 (= lt!1023506 (lemmaprefixMatchZipperSequenceEquivalent!256 lt!1023507 input!3770 (+ 1 i!1878)))))

(declare-fun z!644 () (Set Context!5520))

(declare-fun derivationStepZipper!520 ((Set Context!5520) C!18062) (Set Context!5520))

(assert (=> b!2909866 (= lt!1023507 (derivationStepZipper!520 z!644 lt!1023502))))

(declare-fun apply!7907 (BalanceConc!20668 Int) C!18062)

(assert (=> b!2909866 (= lt!1023502 (apply!7907 input!3770 i!1878))))

(declare-fun res!1201347 () Bool)

(assert (=> start!283380 (=> (not res!1201347) (not e!1836737))))

(assert (=> start!283380 (= res!1201347 (>= i!1878 0))))

(assert (=> start!283380 e!1836737))

(assert (=> start!283380 true))

(declare-fun inv!46829 (BalanceConc!20668) Bool)

(assert (=> start!283380 (and (inv!46829 input!3770) e!1836738)))

(declare-fun condSetEmpty!25896 () Bool)

(assert (=> start!283380 (= condSetEmpty!25896 (= z!644 (as set.empty (Set Context!5520))))))

(declare-fun setRes!25896 () Bool)

(assert (=> start!283380 setRes!25896))

(declare-fun setIsEmpty!25896 () Bool)

(assert (=> setIsEmpty!25896 setRes!25896))

(declare-fun b!2909867 () Bool)

(assert (=> b!2909867 (= e!1836736 (= (prefixMatchZipper!376 z!644 lt!1023503) (prefixMatchZipperSequence!780 z!644 input!3770 i!1878)))))

(declare-fun setNonEmpty!25896 () Bool)

(declare-fun tp!934977 () Bool)

(declare-fun setElem!25896 () Context!5520)

(declare-fun inv!46830 (Context!5520) Bool)

(assert (=> setNonEmpty!25896 (= setRes!25896 (and tp!934977 (inv!46830 setElem!25896) e!1836740))))

(declare-fun setRest!25896 () (Set Context!5520))

(assert (=> setNonEmpty!25896 (= z!644 (set.union (set.insert setElem!25896 (as set.empty (Set Context!5520))) setRest!25896))))

(assert (= (and start!283380 res!1201347) b!2909863))

(assert (= (and b!2909863 res!1201346) b!2909866))

(assert (= (and b!2909866 (not res!1201348)) b!2909867))

(assert (= start!283380 b!2909864))

(assert (= (and start!283380 condSetEmpty!25896) setIsEmpty!25896))

(assert (= (and start!283380 (not condSetEmpty!25896)) setNonEmpty!25896))

(assert (= setNonEmpty!25896 b!2909865))

(declare-fun m!3311295 () Bool)

(assert (=> b!2909867 m!3311295))

(declare-fun m!3311297 () Bool)

(assert (=> b!2909867 m!3311297))

(declare-fun m!3311299 () Bool)

(assert (=> b!2909863 m!3311299))

(declare-fun m!3311301 () Bool)

(assert (=> start!283380 m!3311301))

(declare-fun m!3311303 () Bool)

(assert (=> b!2909866 m!3311303))

(declare-fun m!3311305 () Bool)

(assert (=> b!2909866 m!3311305))

(declare-fun m!3311307 () Bool)

(assert (=> b!2909866 m!3311307))

(declare-fun m!3311309 () Bool)

(assert (=> b!2909866 m!3311309))

(declare-fun m!3311311 () Bool)

(assert (=> b!2909866 m!3311311))

(declare-fun m!3311313 () Bool)

(assert (=> b!2909866 m!3311313))

(declare-fun m!3311315 () Bool)

(assert (=> b!2909866 m!3311315))

(declare-fun m!3311317 () Bool)

(assert (=> b!2909866 m!3311317))

(declare-fun m!3311319 () Bool)

(assert (=> b!2909866 m!3311319))

(declare-fun m!3311321 () Bool)

(assert (=> b!2909866 m!3311321))

(declare-fun m!3311323 () Bool)

(assert (=> b!2909866 m!3311323))

(declare-fun m!3311325 () Bool)

(assert (=> b!2909866 m!3311325))

(declare-fun m!3311327 () Bool)

(assert (=> b!2909866 m!3311327))

(declare-fun m!3311329 () Bool)

(assert (=> b!2909866 m!3311329))

(declare-fun m!3311331 () Bool)

(assert (=> b!2909866 m!3311331))

(declare-fun m!3311333 () Bool)

(assert (=> b!2909866 m!3311333))

(declare-fun m!3311335 () Bool)

(assert (=> b!2909864 m!3311335))

(declare-fun m!3311337 () Bool)

(assert (=> setNonEmpty!25896 m!3311337))

(push 1)

(assert (not start!283380))

(assert (not b!2909863))

(assert (not setNonEmpty!25896))

(assert (not b!2909867))

(assert (not b!2909864))

(assert (not b!2909866))

(assert (not b!2909865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837172 () Bool)

(declare-fun c!474367 () Bool)

(declare-fun isEmpty!18918 (List!34791) Bool)

(assert (=> d!837172 (= c!474367 (isEmpty!18918 lt!1023503))))

(declare-fun e!1836758 () Bool)

(assert (=> d!837172 (= (prefixMatchZipper!376 z!644 lt!1023503) e!1836758)))

(declare-fun b!2909887 () Bool)

(declare-fun lostCauseZipper!613 ((Set Context!5520)) Bool)

(assert (=> b!2909887 (= e!1836758 (not (lostCauseZipper!613 z!644)))))

(declare-fun b!2909888 () Bool)

(assert (=> b!2909888 (= e!1836758 (prefixMatchZipper!376 (derivationStepZipper!520 z!644 (head!6456 lt!1023503)) (tail!4681 lt!1023503)))))

(assert (= (and d!837172 c!474367) b!2909887))

(assert (= (and d!837172 (not c!474367)) b!2909888))

(declare-fun m!3311383 () Bool)

(assert (=> d!837172 m!3311383))

(declare-fun m!3311385 () Bool)

(assert (=> b!2909887 m!3311385))

(declare-fun m!3311387 () Bool)

(assert (=> b!2909888 m!3311387))

(assert (=> b!2909888 m!3311387))

(declare-fun m!3311389 () Bool)

(assert (=> b!2909888 m!3311389))

(declare-fun m!3311391 () Bool)

(assert (=> b!2909888 m!3311391))

(assert (=> b!2909888 m!3311389))

(assert (=> b!2909888 m!3311391))

(declare-fun m!3311393 () Bool)

(assert (=> b!2909888 m!3311393))

(assert (=> b!2909867 d!837172))

(declare-fun d!837176 () Bool)

(declare-fun c!474370 () Bool)

(assert (=> d!837176 (= c!474370 (= i!1878 (size!26411 input!3770)))))

(declare-fun e!1836761 () Bool)

(assert (=> d!837176 (= (prefixMatchZipperSequence!780 z!644 input!3770 i!1878) e!1836761)))

(declare-fun b!2909893 () Bool)

(assert (=> b!2909893 (= e!1836761 (not (lostCauseZipper!613 z!644)))))

(declare-fun b!2909894 () Bool)

(assert (=> b!2909894 (= e!1836761 (prefixMatchZipperSequence!780 (derivationStepZipper!520 z!644 (apply!7907 input!3770 i!1878)) input!3770 (+ i!1878 1)))))

(assert (= (and d!837176 c!474370) b!2909893))

(assert (= (and d!837176 (not c!474370)) b!2909894))

(assert (=> d!837176 m!3311299))

(assert (=> b!2909893 m!3311385))

(assert (=> b!2909894 m!3311307))

(assert (=> b!2909894 m!3311307))

(declare-fun m!3311395 () Bool)

(assert (=> b!2909894 m!3311395))

(assert (=> b!2909894 m!3311395))

(declare-fun m!3311397 () Bool)

(assert (=> b!2909894 m!3311397))

(assert (=> b!2909867 d!837176))

(declare-fun d!837178 () Bool)

(declare-fun list!12613 (Conc!10515) List!34791)

(assert (=> d!837178 (= (dropList!1041 input!3770 (+ 1 i!1878)) (drop!1825 (list!12613 (c!474361 input!3770)) (+ 1 i!1878)))))

(declare-fun bs!524412 () Bool)

(assert (= bs!524412 d!837178))

(declare-fun m!3311399 () Bool)

(assert (=> bs!524412 m!3311399))

(assert (=> bs!524412 m!3311399))

(declare-fun m!3311401 () Bool)

(assert (=> bs!524412 m!3311401))

(assert (=> b!2909866 d!837178))

(declare-fun d!837180 () Bool)

(declare-fun lt!1023542 () C!18062)

(assert (=> d!837180 (= lt!1023542 (apply!7906 (list!12611 input!3770) i!1878))))

(declare-fun apply!7910 (Conc!10515 Int) C!18062)

(assert (=> d!837180 (= lt!1023542 (apply!7910 (c!474361 input!3770) i!1878))))

(declare-fun e!1836764 () Bool)

(assert (=> d!837180 e!1836764))

(declare-fun res!1201360 () Bool)

(assert (=> d!837180 (=> (not res!1201360) (not e!1836764))))

(assert (=> d!837180 (= res!1201360 (<= 0 i!1878))))

(assert (=> d!837180 (= (apply!7907 input!3770 i!1878) lt!1023542)))

(declare-fun b!2909897 () Bool)

(assert (=> b!2909897 (= e!1836764 (< i!1878 (size!26411 input!3770)))))

(assert (= (and d!837180 res!1201360) b!2909897))

(assert (=> d!837180 m!3311317))

(assert (=> d!837180 m!3311317))

(declare-fun m!3311403 () Bool)

(assert (=> d!837180 m!3311403))

(declare-fun m!3311405 () Bool)

(assert (=> d!837180 m!3311405))

(assert (=> b!2909897 m!3311299))

(assert (=> b!2909866 d!837180))

(declare-fun d!837182 () Bool)

(assert (=> d!837182 (= (tail!4681 lt!1023505) (t!233844 lt!1023505))))

(assert (=> b!2909866 d!837182))

(declare-fun d!837184 () Bool)

(assert (=> d!837184 (= (head!6456 lt!1023505) (h!40087 lt!1023505))))

(assert (=> b!2909866 d!837184))

(declare-fun d!837186 () Bool)

(assert (=> d!837186 (= (list!12611 input!3770) (list!12613 (c!474361 input!3770)))))

(declare-fun bs!524413 () Bool)

(assert (= bs!524413 d!837186))

(assert (=> bs!524413 m!3311399))

(assert (=> b!2909866 d!837186))

(declare-fun d!837188 () Bool)

(assert (=> d!837188 true))

(declare-fun lambda!107982 () Int)

(declare-fun flatMap!247 ((Set Context!5520) Int) (Set Context!5520))

(assert (=> d!837188 (= (derivationStepZipper!520 z!644 lt!1023502) (flatMap!247 z!644 lambda!107982))))

(declare-fun bs!524414 () Bool)

(assert (= bs!524414 d!837188))

(declare-fun m!3311407 () Bool)

(assert (=> bs!524414 m!3311407))

(assert (=> b!2909866 d!837188))

(declare-fun b!2909918 () Bool)

(declare-fun e!1836778 () Bool)

(declare-fun lt!1023545 () List!34791)

(declare-fun e!1836775 () Int)

(declare-fun size!26413 (List!34791) Int)

(assert (=> b!2909918 (= e!1836778 (= (size!26413 lt!1023545) e!1836775))))

(declare-fun c!474381 () Bool)

(assert (=> b!2909918 (= c!474381 (<= i!1878 0))))

(declare-fun d!837190 () Bool)

(assert (=> d!837190 e!1836778))

(declare-fun res!1201363 () Bool)

(assert (=> d!837190 (=> (not res!1201363) (not e!1836778))))

(declare-fun content!4741 (List!34791) (Set C!18062))

(assert (=> d!837190 (= res!1201363 (set.subset (content!4741 lt!1023545) (content!4741 lt!1023500)))))

(declare-fun e!1836777 () List!34791)

(assert (=> d!837190 (= lt!1023545 e!1836777)))

(declare-fun c!474384 () Bool)

(assert (=> d!837190 (= c!474384 (is-Nil!34667 lt!1023500))))

(assert (=> d!837190 (= (drop!1825 lt!1023500 i!1878) lt!1023545)))

(declare-fun bm!189950 () Bool)

(declare-fun call!189955 () Int)

(assert (=> bm!189950 (= call!189955 (size!26413 lt!1023500))))

(declare-fun b!2909919 () Bool)

(declare-fun e!1836779 () Int)

(assert (=> b!2909919 (= e!1836775 e!1836779)))

(declare-fun c!474383 () Bool)

(assert (=> b!2909919 (= c!474383 (>= i!1878 call!189955))))

(declare-fun b!2909920 () Bool)

(assert (=> b!2909920 (= e!1836779 (- call!189955 i!1878))))

(declare-fun b!2909921 () Bool)

(declare-fun e!1836776 () List!34791)

(assert (=> b!2909921 (= e!1836776 (drop!1825 (t!233844 lt!1023500) (- i!1878 1)))))

(declare-fun b!2909922 () Bool)

(assert (=> b!2909922 (= e!1836777 Nil!34667)))

(declare-fun b!2909923 () Bool)

(assert (=> b!2909923 (= e!1836775 call!189955)))

(declare-fun b!2909924 () Bool)

(assert (=> b!2909924 (= e!1836776 lt!1023500)))

(declare-fun b!2909925 () Bool)

(assert (=> b!2909925 (= e!1836779 0)))

(declare-fun b!2909926 () Bool)

(assert (=> b!2909926 (= e!1836777 e!1836776)))

(declare-fun c!474382 () Bool)

(assert (=> b!2909926 (= c!474382 (<= i!1878 0))))

(assert (= (and d!837190 c!474384) b!2909922))

(assert (= (and d!837190 (not c!474384)) b!2909926))

(assert (= (and b!2909926 c!474382) b!2909924))

(assert (= (and b!2909926 (not c!474382)) b!2909921))

(assert (= (and d!837190 res!1201363) b!2909918))

(assert (= (and b!2909918 c!474381) b!2909923))

(assert (= (and b!2909918 (not c!474381)) b!2909919))

(assert (= (and b!2909919 c!474383) b!2909925))

(assert (= (and b!2909919 (not c!474383)) b!2909920))

(assert (= (or b!2909923 b!2909919 b!2909920) bm!189950))

(declare-fun m!3311409 () Bool)

(assert (=> b!2909918 m!3311409))

(declare-fun m!3311411 () Bool)

(assert (=> d!837190 m!3311411))

(declare-fun m!3311413 () Bool)

(assert (=> d!837190 m!3311413))

(declare-fun m!3311415 () Bool)

(assert (=> bm!189950 m!3311415))

(declare-fun m!3311417 () Bool)

(assert (=> b!2909921 m!3311417))

(assert (=> b!2909866 d!837190))

(declare-fun d!837192 () Bool)

(assert (=> d!837192 (= (tail!4681 (drop!1825 lt!1023500 i!1878)) (drop!1825 lt!1023500 (+ i!1878 1)))))

(declare-fun lt!1023548 () Unit!48215)

(declare-fun choose!17106 (List!34791 Int) Unit!48215)

(assert (=> d!837192 (= lt!1023548 (choose!17106 lt!1023500 i!1878))))

(declare-fun e!1836782 () Bool)

(assert (=> d!837192 e!1836782))

(declare-fun res!1201366 () Bool)

(assert (=> d!837192 (=> (not res!1201366) (not e!1836782))))

(assert (=> d!837192 (= res!1201366 (>= i!1878 0))))

(assert (=> d!837192 (= (lemmaDropTail!890 lt!1023500 i!1878) lt!1023548)))

(declare-fun b!2909929 () Bool)

(assert (=> b!2909929 (= e!1836782 (< i!1878 (size!26413 lt!1023500)))))

(assert (= (and d!837192 res!1201366) b!2909929))

(assert (=> d!837192 m!3311311))

(assert (=> d!837192 m!3311311))

(declare-fun m!3311419 () Bool)

(assert (=> d!837192 m!3311419))

(declare-fun m!3311421 () Bool)

(assert (=> d!837192 m!3311421))

(declare-fun m!3311423 () Bool)

(assert (=> d!837192 m!3311423))

(assert (=> b!2909929 m!3311415))

(assert (=> b!2909866 d!837192))

(declare-fun b!2909930 () Bool)

(declare-fun e!1836786 () Bool)

(declare-fun lt!1023549 () List!34791)

(declare-fun e!1836783 () Int)

(assert (=> b!2909930 (= e!1836786 (= (size!26413 lt!1023549) e!1836783))))

(declare-fun c!474385 () Bool)

(assert (=> b!2909930 (= c!474385 (<= (+ 1 i!1878) 0))))

(declare-fun d!837194 () Bool)

(assert (=> d!837194 e!1836786))

(declare-fun res!1201367 () Bool)

(assert (=> d!837194 (=> (not res!1201367) (not e!1836786))))

(assert (=> d!837194 (= res!1201367 (set.subset (content!4741 lt!1023549) (content!4741 lt!1023500)))))

(declare-fun e!1836785 () List!34791)

(assert (=> d!837194 (= lt!1023549 e!1836785)))

(declare-fun c!474388 () Bool)

(assert (=> d!837194 (= c!474388 (is-Nil!34667 lt!1023500))))

(assert (=> d!837194 (= (drop!1825 lt!1023500 (+ 1 i!1878)) lt!1023549)))

(declare-fun bm!189951 () Bool)

(declare-fun call!189956 () Int)

(assert (=> bm!189951 (= call!189956 (size!26413 lt!1023500))))

(declare-fun b!2909931 () Bool)

(declare-fun e!1836787 () Int)

(assert (=> b!2909931 (= e!1836783 e!1836787)))

(declare-fun c!474387 () Bool)

(assert (=> b!2909931 (= c!474387 (>= (+ 1 i!1878) call!189956))))

(declare-fun b!2909932 () Bool)

(assert (=> b!2909932 (= e!1836787 (- call!189956 (+ 1 i!1878)))))

(declare-fun b!2909933 () Bool)

(declare-fun e!1836784 () List!34791)

(assert (=> b!2909933 (= e!1836784 (drop!1825 (t!233844 lt!1023500) (- (+ 1 i!1878) 1)))))

(declare-fun b!2909934 () Bool)

(assert (=> b!2909934 (= e!1836785 Nil!34667)))

(declare-fun b!2909935 () Bool)

(assert (=> b!2909935 (= e!1836783 call!189956)))

(declare-fun b!2909936 () Bool)

(assert (=> b!2909936 (= e!1836784 lt!1023500)))

(declare-fun b!2909937 () Bool)

(assert (=> b!2909937 (= e!1836787 0)))

(declare-fun b!2909938 () Bool)

(assert (=> b!2909938 (= e!1836785 e!1836784)))

(declare-fun c!474386 () Bool)

(assert (=> b!2909938 (= c!474386 (<= (+ 1 i!1878) 0))))

(assert (= (and d!837194 c!474388) b!2909934))

(assert (= (and d!837194 (not c!474388)) b!2909938))

(assert (= (and b!2909938 c!474386) b!2909936))

(assert (= (and b!2909938 (not c!474386)) b!2909933))

(assert (= (and d!837194 res!1201367) b!2909930))

(assert (= (and b!2909930 c!474385) b!2909935))

(assert (= (and b!2909930 (not c!474385)) b!2909931))

(assert (= (and b!2909931 c!474387) b!2909937))

(assert (= (and b!2909931 (not c!474387)) b!2909932))

(assert (= (or b!2909935 b!2909931 b!2909932) bm!189951))

(declare-fun m!3311425 () Bool)

(assert (=> b!2909930 m!3311425))

(declare-fun m!3311427 () Bool)

(assert (=> d!837194 m!3311427))

(assert (=> d!837194 m!3311413))

(assert (=> bm!189951 m!3311415))

(declare-fun m!3311429 () Bool)

(assert (=> b!2909933 m!3311429))

(assert (=> b!2909866 d!837194))

(declare-fun d!837196 () Bool)

(assert (=> d!837196 (= ($colon$colon!612 lt!1023504 lt!1023502) (Cons!34667 lt!1023502 lt!1023504))))

(assert (=> b!2909866 d!837196))

(declare-fun d!837198 () Bool)

(assert (=> d!837198 (= (prefixMatchZipper!376 lt!1023507 (dropList!1041 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!780 lt!1023507 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023552 () Unit!48215)

(declare-fun choose!17107 ((Set Context!5520) BalanceConc!20668 Int) Unit!48215)

(assert (=> d!837198 (= lt!1023552 (choose!17107 lt!1023507 input!3770 (+ 1 i!1878)))))

(declare-fun e!1836790 () Bool)

(assert (=> d!837198 e!1836790))

(declare-fun res!1201370 () Bool)

(assert (=> d!837198 (=> (not res!1201370) (not e!1836790))))

(assert (=> d!837198 (= res!1201370 (>= (+ 1 i!1878) 0))))

(assert (=> d!837198 (= (lemmaprefixMatchZipperSequenceEquivalent!256 lt!1023507 input!3770 (+ 1 i!1878)) lt!1023552)))

(declare-fun b!2909941 () Bool)

(assert (=> b!2909941 (= e!1836790 (<= (+ 1 i!1878) (size!26411 input!3770)))))

(assert (= (and d!837198 res!1201370) b!2909941))

(assert (=> d!837198 m!3311331))

(assert (=> d!837198 m!3311331))

(declare-fun m!3311431 () Bool)

(assert (=> d!837198 m!3311431))

(assert (=> d!837198 m!3311309))

(declare-fun m!3311433 () Bool)

(assert (=> d!837198 m!3311433))

(assert (=> b!2909941 m!3311299))

(assert (=> b!2909866 d!837198))

(declare-fun d!837200 () Bool)

(declare-fun c!474389 () Bool)

(assert (=> d!837200 (= c!474389 (isEmpty!18918 lt!1023504))))

(declare-fun e!1836791 () Bool)

(assert (=> d!837200 (= (prefixMatchZipper!376 lt!1023507 lt!1023504) e!1836791)))

(declare-fun b!2909942 () Bool)

(assert (=> b!2909942 (= e!1836791 (not (lostCauseZipper!613 lt!1023507)))))

(declare-fun b!2909943 () Bool)

(assert (=> b!2909943 (= e!1836791 (prefixMatchZipper!376 (derivationStepZipper!520 lt!1023507 (head!6456 lt!1023504)) (tail!4681 lt!1023504)))))

(assert (= (and d!837200 c!474389) b!2909942))

(assert (= (and d!837200 (not c!474389)) b!2909943))

(declare-fun m!3311435 () Bool)

(assert (=> d!837200 m!3311435))

(declare-fun m!3311437 () Bool)

(assert (=> b!2909942 m!3311437))

(declare-fun m!3311439 () Bool)

(assert (=> b!2909943 m!3311439))

(assert (=> b!2909943 m!3311439))

(declare-fun m!3311441 () Bool)

(assert (=> b!2909943 m!3311441))

(declare-fun m!3311443 () Bool)

(assert (=> b!2909943 m!3311443))

(assert (=> b!2909943 m!3311441))

(assert (=> b!2909943 m!3311443))

(declare-fun m!3311445 () Bool)

(assert (=> b!2909943 m!3311445))

(assert (=> b!2909866 d!837200))

(declare-fun d!837202 () Bool)

(declare-fun lt!1023555 () C!18062)

(declare-fun contains!6130 (List!34791 C!18062) Bool)

(assert (=> d!837202 (contains!6130 lt!1023500 lt!1023555)))

(declare-fun e!1836797 () C!18062)

(assert (=> d!837202 (= lt!1023555 e!1836797)))

(declare-fun c!474392 () Bool)

(assert (=> d!837202 (= c!474392 (= i!1878 0))))

(declare-fun e!1836796 () Bool)

(assert (=> d!837202 e!1836796))

(declare-fun res!1201373 () Bool)

(assert (=> d!837202 (=> (not res!1201373) (not e!1836796))))

(assert (=> d!837202 (= res!1201373 (<= 0 i!1878))))

(assert (=> d!837202 (= (apply!7906 lt!1023500 i!1878) lt!1023555)))

(declare-fun b!2909950 () Bool)

(assert (=> b!2909950 (= e!1836796 (< i!1878 (size!26413 lt!1023500)))))

(declare-fun b!2909951 () Bool)

(assert (=> b!2909951 (= e!1836797 (head!6456 lt!1023500))))

(declare-fun b!2909952 () Bool)

(assert (=> b!2909952 (= e!1836797 (apply!7906 (tail!4681 lt!1023500) (- i!1878 1)))))

(assert (= (and d!837202 res!1201373) b!2909950))

(assert (= (and d!837202 c!474392) b!2909951))

(assert (= (and d!837202 (not c!474392)) b!2909952))

(declare-fun m!3311447 () Bool)

(assert (=> d!837202 m!3311447))

(assert (=> b!2909950 m!3311415))

(declare-fun m!3311449 () Bool)

(assert (=> b!2909951 m!3311449))

(declare-fun m!3311451 () Bool)

(assert (=> b!2909952 m!3311451))

(assert (=> b!2909952 m!3311451))

(declare-fun m!3311453 () Bool)

(assert (=> b!2909952 m!3311453))

(assert (=> b!2909866 d!837202))

(declare-fun d!837204 () Bool)

(declare-fun c!474393 () Bool)

(assert (=> d!837204 (= c!474393 (= (+ 1 i!1878) (size!26411 input!3770)))))

(declare-fun e!1836798 () Bool)

(assert (=> d!837204 (= (prefixMatchZipperSequence!780 lt!1023507 input!3770 (+ 1 i!1878)) e!1836798)))

(declare-fun b!2909953 () Bool)

(assert (=> b!2909953 (= e!1836798 (not (lostCauseZipper!613 lt!1023507)))))

(declare-fun b!2909954 () Bool)

(assert (=> b!2909954 (= e!1836798 (prefixMatchZipperSequence!780 (derivationStepZipper!520 lt!1023507 (apply!7907 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)))))

(assert (= (and d!837204 c!474393) b!2909953))

(assert (= (and d!837204 (not c!474393)) b!2909954))

(assert (=> d!837204 m!3311299))

(assert (=> b!2909953 m!3311437))

(declare-fun m!3311455 () Bool)

(assert (=> b!2909954 m!3311455))

(assert (=> b!2909954 m!3311455))

(declare-fun m!3311457 () Bool)

(assert (=> b!2909954 m!3311457))

(assert (=> b!2909954 m!3311457))

(declare-fun m!3311459 () Bool)

(assert (=> b!2909954 m!3311459))

(assert (=> b!2909866 d!837204))

(declare-fun d!837206 () Bool)

(assert (=> d!837206 (= (dropList!1041 input!3770 i!1878) (drop!1825 (list!12613 (c!474361 input!3770)) i!1878))))

(declare-fun bs!524415 () Bool)

(assert (= bs!524415 d!837206))

(assert (=> bs!524415 m!3311399))

(assert (=> bs!524415 m!3311399))

(declare-fun m!3311461 () Bool)

(assert (=> bs!524415 m!3311461))

(assert (=> b!2909866 d!837206))

(declare-fun d!837208 () Bool)

(assert (=> d!837208 (= (head!6456 (drop!1825 lt!1023500 i!1878)) (apply!7906 lt!1023500 i!1878))))

(declare-fun lt!1023558 () Unit!48215)

(declare-fun choose!17108 (List!34791 Int) Unit!48215)

(assert (=> d!837208 (= lt!1023558 (choose!17108 lt!1023500 i!1878))))

(declare-fun e!1836801 () Bool)

(assert (=> d!837208 e!1836801))

(declare-fun res!1201376 () Bool)

(assert (=> d!837208 (=> (not res!1201376) (not e!1836801))))

(assert (=> d!837208 (= res!1201376 (>= i!1878 0))))

(assert (=> d!837208 (= (lemmaDropApply!1004 lt!1023500 i!1878) lt!1023558)))

(declare-fun b!2909957 () Bool)

(assert (=> b!2909957 (= e!1836801 (< i!1878 (size!26413 lt!1023500)))))

(assert (= (and d!837208 res!1201376) b!2909957))

(assert (=> d!837208 m!3311311))

(assert (=> d!837208 m!3311311))

(declare-fun m!3311463 () Bool)

(assert (=> d!837208 m!3311463))

(assert (=> d!837208 m!3311329))

(declare-fun m!3311465 () Bool)

(assert (=> d!837208 m!3311465))

(assert (=> b!2909957 m!3311415))

(assert (=> b!2909866 d!837208))

(declare-fun d!837210 () Bool)

(declare-fun lt!1023561 () Int)

(assert (=> d!837210 (= lt!1023561 (size!26413 (list!12611 input!3770)))))

(declare-fun size!26414 (Conc!10515) Int)

(assert (=> d!837210 (= lt!1023561 (size!26414 (c!474361 input!3770)))))

(assert (=> d!837210 (= (size!26411 input!3770) lt!1023561)))

(declare-fun bs!524416 () Bool)

(assert (= bs!524416 d!837210))

(assert (=> bs!524416 m!3311317))

(assert (=> bs!524416 m!3311317))

(declare-fun m!3311467 () Bool)

(assert (=> bs!524416 m!3311467))

(declare-fun m!3311469 () Bool)

(assert (=> bs!524416 m!3311469))

(assert (=> b!2909863 d!837210))

(declare-fun d!837212 () Bool)

(declare-fun lambda!107988 () Int)

(declare-fun forall!7130 (List!34792 Int) Bool)

(assert (=> d!837212 (= (inv!46830 setElem!25896) (forall!7130 (exprs!3260 setElem!25896) lambda!107988))))

(declare-fun bs!524418 () Bool)

(assert (= bs!524418 d!837212))

(declare-fun m!3311473 () Bool)

(assert (=> bs!524418 m!3311473))

(assert (=> setNonEmpty!25896 d!837212))

(declare-fun d!837216 () Bool)

(declare-fun isBalanced!3166 (Conc!10515) Bool)

(assert (=> d!837216 (= (inv!46829 input!3770) (isBalanced!3166 (c!474361 input!3770)))))

(declare-fun bs!524419 () Bool)

(assert (= bs!524419 d!837216))

(declare-fun m!3311479 () Bool)

(assert (=> bs!524419 m!3311479))

(assert (=> start!283380 d!837216))

(declare-fun d!837220 () Bool)

(declare-fun c!474401 () Bool)

(assert (=> d!837220 (= c!474401 (is-Node!10515 (c!474361 input!3770)))))

(declare-fun e!1836812 () Bool)

(assert (=> d!837220 (= (inv!46828 (c!474361 input!3770)) e!1836812)))

(declare-fun b!2909973 () Bool)

(declare-fun inv!46834 (Conc!10515) Bool)

(assert (=> b!2909973 (= e!1836812 (inv!46834 (c!474361 input!3770)))))

(declare-fun b!2909974 () Bool)

(declare-fun e!1836813 () Bool)

(assert (=> b!2909974 (= e!1836812 e!1836813)))

(declare-fun res!1201382 () Bool)

(assert (=> b!2909974 (= res!1201382 (not (is-Leaf!16209 (c!474361 input!3770))))))

(assert (=> b!2909974 (=> res!1201382 e!1836813)))

(declare-fun b!2909975 () Bool)

(declare-fun inv!46835 (Conc!10515) Bool)

(assert (=> b!2909975 (= e!1836813 (inv!46835 (c!474361 input!3770)))))

(assert (= (and d!837220 c!474401) b!2909973))

(assert (= (and d!837220 (not c!474401)) b!2909974))

(assert (= (and b!2909974 (not res!1201382)) b!2909975))

(declare-fun m!3311483 () Bool)

(assert (=> b!2909973 m!3311483))

(declare-fun m!3311485 () Bool)

(assert (=> b!2909975 m!3311485))

(assert (=> b!2909864 d!837220))

(declare-fun b!2909982 () Bool)

(declare-fun e!1836816 () Bool)

(declare-fun tp!934992 () Bool)

(declare-fun tp!934993 () Bool)

(assert (=> b!2909982 (= e!1836816 (and tp!934992 tp!934993))))

(assert (=> b!2909865 (= tp!934978 e!1836816)))

(assert (= (and b!2909865 (is-Cons!34668 (exprs!3260 setElem!25896))) b!2909982))

(declare-fun condSetEmpty!25902 () Bool)

(assert (=> setNonEmpty!25896 (= condSetEmpty!25902 (= setRest!25896 (as set.empty (Set Context!5520))))))

(declare-fun setRes!25902 () Bool)

(assert (=> setNonEmpty!25896 (= tp!934977 setRes!25902)))

(declare-fun setIsEmpty!25902 () Bool)

(assert (=> setIsEmpty!25902 setRes!25902))

(declare-fun setNonEmpty!25902 () Bool)

(declare-fun setElem!25902 () Context!5520)

(declare-fun e!1836819 () Bool)

(declare-fun tp!934999 () Bool)

(assert (=> setNonEmpty!25902 (= setRes!25902 (and tp!934999 (inv!46830 setElem!25902) e!1836819))))

(declare-fun setRest!25902 () (Set Context!5520))

(assert (=> setNonEmpty!25902 (= setRest!25896 (set.union (set.insert setElem!25902 (as set.empty (Set Context!5520))) setRest!25902))))

(declare-fun b!2909987 () Bool)

(declare-fun tp!934998 () Bool)

(assert (=> b!2909987 (= e!1836819 tp!934998)))

(assert (= (and setNonEmpty!25896 condSetEmpty!25902) setIsEmpty!25902))

(assert (= (and setNonEmpty!25896 (not condSetEmpty!25902)) setNonEmpty!25902))

(assert (= setNonEmpty!25902 b!2909987))

(declare-fun m!3311489 () Bool)

(assert (=> setNonEmpty!25902 m!3311489))

(declare-fun tp!935008 () Bool)

(declare-fun e!1836824 () Bool)

(declare-fun tp!935007 () Bool)

(declare-fun b!2909996 () Bool)

(assert (=> b!2909996 (= e!1836824 (and (inv!46828 (left!26040 (c!474361 input!3770))) tp!935008 (inv!46828 (right!26370 (c!474361 input!3770))) tp!935007))))

(declare-fun b!2909998 () Bool)

(declare-fun e!1836825 () Bool)

(declare-fun tp!935006 () Bool)

(assert (=> b!2909998 (= e!1836825 tp!935006)))

(declare-fun b!2909997 () Bool)

(declare-fun inv!46836 (IArray!21035) Bool)

(assert (=> b!2909997 (= e!1836824 (and (inv!46836 (xs!13633 (c!474361 input!3770))) e!1836825))))

(assert (=> b!2909864 (= tp!934976 (and (inv!46828 (c!474361 input!3770)) e!1836824))))

(assert (= (and b!2909864 (is-Node!10515 (c!474361 input!3770))) b!2909996))

(assert (= b!2909997 b!2909998))

(assert (= (and b!2909864 (is-Leaf!16209 (c!474361 input!3770))) b!2909997))

(declare-fun m!3311495 () Bool)

(assert (=> b!2909996 m!3311495))

(declare-fun m!3311497 () Bool)

(assert (=> b!2909996 m!3311497))

(declare-fun m!3311499 () Bool)

(assert (=> b!2909997 m!3311499))

(assert (=> b!2909864 m!3311335))

(push 1)

(assert (not b!2909975))

(assert (not d!837198))

(assert (not b!2909929))

(assert (not b!2909897))

(assert (not d!837202))

(assert (not d!837178))

(assert (not b!2909996))

(assert (not d!837212))

(assert (not b!2909952))

(assert (not d!837210))

(assert (not b!2909982))

(assert (not b!2909951))

(assert (not d!837180))

(assert (not setNonEmpty!25902))

(assert (not b!2909987))

(assert (not b!2909893))

(assert (not b!2909998))

(assert (not d!837208))

(assert (not b!2909888))

(assert (not d!837186))

(assert (not b!2909918))

(assert (not d!837206))

(assert (not d!837194))

(assert (not bm!189951))

(assert (not b!2909894))

(assert (not b!2909887))

(assert (not b!2909921))

(assert (not d!837176))

(assert (not b!2909973))

(assert (not b!2909953))

(assert (not b!2909954))

(assert (not b!2909997))

(assert (not d!837190))

(assert (not b!2909864))

(assert (not b!2909943))

(assert (not b!2909950))

(assert (not d!837200))

(assert (not d!837204))

(assert (not bm!189950))

(assert (not d!837216))

(assert (not d!837188))

(assert (not b!2909942))

(assert (not b!2909941))

(assert (not b!2909957))

(assert (not d!837172))

(assert (not b!2909930))

(assert (not b!2909933))

(assert (not d!837192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!837176 d!837210))

(assert (=> b!2909941 d!837210))

(declare-fun b!2910093 () Bool)

(declare-fun e!1836887 () Bool)

(declare-fun lt!1023584 () List!34791)

(declare-fun e!1836884 () Int)

(assert (=> b!2910093 (= e!1836887 (= (size!26413 lt!1023584) e!1836884))))

(declare-fun c!474429 () Bool)

(assert (=> b!2910093 (= c!474429 (<= (+ 1 i!1878) 0))))

(declare-fun d!837260 () Bool)

(assert (=> d!837260 e!1836887))

(declare-fun res!1201402 () Bool)

(assert (=> d!837260 (=> (not res!1201402) (not e!1836887))))

(assert (=> d!837260 (= res!1201402 (set.subset (content!4741 lt!1023584) (content!4741 (list!12613 (c!474361 input!3770)))))))

(declare-fun e!1836886 () List!34791)

(assert (=> d!837260 (= lt!1023584 e!1836886)))

(declare-fun c!474432 () Bool)

(assert (=> d!837260 (= c!474432 (is-Nil!34667 (list!12613 (c!474361 input!3770))))))

(assert (=> d!837260 (= (drop!1825 (list!12613 (c!474361 input!3770)) (+ 1 i!1878)) lt!1023584)))

(declare-fun bm!189956 () Bool)

(declare-fun call!189961 () Int)

(assert (=> bm!189956 (= call!189961 (size!26413 (list!12613 (c!474361 input!3770))))))

(declare-fun b!2910094 () Bool)

(declare-fun e!1836888 () Int)

(assert (=> b!2910094 (= e!1836884 e!1836888)))

(declare-fun c!474431 () Bool)

(assert (=> b!2910094 (= c!474431 (>= (+ 1 i!1878) call!189961))))

(declare-fun b!2910095 () Bool)

(assert (=> b!2910095 (= e!1836888 (- call!189961 (+ 1 i!1878)))))

(declare-fun b!2910096 () Bool)

(declare-fun e!1836885 () List!34791)

(assert (=> b!2910096 (= e!1836885 (drop!1825 (t!233844 (list!12613 (c!474361 input!3770))) (- (+ 1 i!1878) 1)))))

(declare-fun b!2910097 () Bool)

(assert (=> b!2910097 (= e!1836886 Nil!34667)))

(declare-fun b!2910098 () Bool)

(assert (=> b!2910098 (= e!1836884 call!189961)))

(declare-fun b!2910099 () Bool)

(assert (=> b!2910099 (= e!1836885 (list!12613 (c!474361 input!3770)))))

(declare-fun b!2910100 () Bool)

(assert (=> b!2910100 (= e!1836888 0)))

(declare-fun b!2910101 () Bool)

(assert (=> b!2910101 (= e!1836886 e!1836885)))

(declare-fun c!474430 () Bool)

(assert (=> b!2910101 (= c!474430 (<= (+ 1 i!1878) 0))))

(assert (= (and d!837260 c!474432) b!2910097))

(assert (= (and d!837260 (not c!474432)) b!2910101))

(assert (= (and b!2910101 c!474430) b!2910099))

(assert (= (and b!2910101 (not c!474430)) b!2910096))

(assert (= (and d!837260 res!1201402) b!2910093))

(assert (= (and b!2910093 c!474429) b!2910098))

(assert (= (and b!2910093 (not c!474429)) b!2910094))

(assert (= (and b!2910094 c!474431) b!2910100))

(assert (= (and b!2910094 (not c!474431)) b!2910095))

(assert (= (or b!2910098 b!2910094 b!2910095) bm!189956))

(declare-fun m!3311591 () Bool)

(assert (=> b!2910093 m!3311591))

(declare-fun m!3311593 () Bool)

(assert (=> d!837260 m!3311593))

(assert (=> d!837260 m!3311399))

(declare-fun m!3311595 () Bool)

(assert (=> d!837260 m!3311595))

(assert (=> bm!189956 m!3311399))

(declare-fun m!3311597 () Bool)

(assert (=> bm!189956 m!3311597))

(declare-fun m!3311599 () Bool)

(assert (=> b!2910096 m!3311599))

(assert (=> d!837178 d!837260))

(declare-fun b!2910111 () Bool)

(declare-fun e!1836893 () List!34791)

(declare-fun e!1836894 () List!34791)

(assert (=> b!2910111 (= e!1836893 e!1836894)))

(declare-fun c!474438 () Bool)

(assert (=> b!2910111 (= c!474438 (is-Leaf!16209 (c!474361 input!3770)))))

(declare-fun b!2910110 () Bool)

(assert (=> b!2910110 (= e!1836893 Nil!34667)))

(declare-fun b!2910112 () Bool)

(declare-fun list!12615 (IArray!21035) List!34791)

(assert (=> b!2910112 (= e!1836894 (list!12615 (xs!13633 (c!474361 input!3770))))))

(declare-fun d!837262 () Bool)

(declare-fun c!474437 () Bool)

(assert (=> d!837262 (= c!474437 (is-Empty!10515 (c!474361 input!3770)))))

(assert (=> d!837262 (= (list!12613 (c!474361 input!3770)) e!1836893)))

(declare-fun b!2910113 () Bool)

(declare-fun ++!8266 (List!34791 List!34791) List!34791)

(assert (=> b!2910113 (= e!1836894 (++!8266 (list!12613 (left!26040 (c!474361 input!3770))) (list!12613 (right!26370 (c!474361 input!3770)))))))

(assert (= (and d!837262 c!474437) b!2910110))

(assert (= (and d!837262 (not c!474437)) b!2910111))

(assert (= (and b!2910111 c!474438) b!2910112))

(assert (= (and b!2910111 (not c!474438)) b!2910113))

(declare-fun m!3311601 () Bool)

(assert (=> b!2910112 m!3311601))

(declare-fun m!3311603 () Bool)

(assert (=> b!2910113 m!3311603))

(declare-fun m!3311605 () Bool)

(assert (=> b!2910113 m!3311605))

(assert (=> b!2910113 m!3311603))

(assert (=> b!2910113 m!3311605))

(declare-fun m!3311607 () Bool)

(assert (=> b!2910113 m!3311607))

(assert (=> d!837178 d!837262))

(assert (=> d!837186 d!837262))

(assert (=> d!837204 d!837210))

(assert (=> b!2909864 d!837220))

(declare-fun b!2910114 () Bool)

(declare-fun e!1836898 () Bool)

(declare-fun lt!1023585 () List!34791)

(declare-fun e!1836895 () Int)

(assert (=> b!2910114 (= e!1836898 (= (size!26413 lt!1023585) e!1836895))))

(declare-fun c!474439 () Bool)

(assert (=> b!2910114 (= c!474439 (<= (- i!1878 1) 0))))

(declare-fun d!837264 () Bool)

(assert (=> d!837264 e!1836898))

(declare-fun res!1201403 () Bool)

(assert (=> d!837264 (=> (not res!1201403) (not e!1836898))))

(assert (=> d!837264 (= res!1201403 (set.subset (content!4741 lt!1023585) (content!4741 (t!233844 lt!1023500))))))

(declare-fun e!1836897 () List!34791)

(assert (=> d!837264 (= lt!1023585 e!1836897)))

(declare-fun c!474442 () Bool)

(assert (=> d!837264 (= c!474442 (is-Nil!34667 (t!233844 lt!1023500)))))

(assert (=> d!837264 (= (drop!1825 (t!233844 lt!1023500) (- i!1878 1)) lt!1023585)))

(declare-fun bm!189957 () Bool)

(declare-fun call!189962 () Int)

(assert (=> bm!189957 (= call!189962 (size!26413 (t!233844 lt!1023500)))))

(declare-fun b!2910115 () Bool)

(declare-fun e!1836899 () Int)

(assert (=> b!2910115 (= e!1836895 e!1836899)))

(declare-fun c!474441 () Bool)

(assert (=> b!2910115 (= c!474441 (>= (- i!1878 1) call!189962))))

(declare-fun b!2910116 () Bool)

(assert (=> b!2910116 (= e!1836899 (- call!189962 (- i!1878 1)))))

(declare-fun b!2910117 () Bool)

(declare-fun e!1836896 () List!34791)

(assert (=> b!2910117 (= e!1836896 (drop!1825 (t!233844 (t!233844 lt!1023500)) (- (- i!1878 1) 1)))))

(declare-fun b!2910118 () Bool)

(assert (=> b!2910118 (= e!1836897 Nil!34667)))

(declare-fun b!2910119 () Bool)

(assert (=> b!2910119 (= e!1836895 call!189962)))

(declare-fun b!2910120 () Bool)

(assert (=> b!2910120 (= e!1836896 (t!233844 lt!1023500))))

(declare-fun b!2910121 () Bool)

(assert (=> b!2910121 (= e!1836899 0)))

(declare-fun b!2910122 () Bool)

(assert (=> b!2910122 (= e!1836897 e!1836896)))

(declare-fun c!474440 () Bool)

(assert (=> b!2910122 (= c!474440 (<= (- i!1878 1) 0))))

(assert (= (and d!837264 c!474442) b!2910118))

(assert (= (and d!837264 (not c!474442)) b!2910122))

(assert (= (and b!2910122 c!474440) b!2910120))

(assert (= (and b!2910122 (not c!474440)) b!2910117))

(assert (= (and d!837264 res!1201403) b!2910114))

(assert (= (and b!2910114 c!474439) b!2910119))

(assert (= (and b!2910114 (not c!474439)) b!2910115))

(assert (= (and b!2910115 c!474441) b!2910121))

(assert (= (and b!2910115 (not c!474441)) b!2910116))

(assert (= (or b!2910119 b!2910115 b!2910116) bm!189957))

(declare-fun m!3311609 () Bool)

(assert (=> b!2910114 m!3311609))

(declare-fun m!3311611 () Bool)

(assert (=> d!837264 m!3311611))

(declare-fun m!3311613 () Bool)

(assert (=> d!837264 m!3311613))

(declare-fun m!3311615 () Bool)

(assert (=> bm!189957 m!3311615))

(declare-fun m!3311617 () Bool)

(assert (=> b!2910117 m!3311617))

(assert (=> b!2909921 d!837264))

(declare-fun d!837266 () Bool)

(declare-fun c!474443 () Bool)

(assert (=> d!837266 (= c!474443 (= (+ i!1878 1) (size!26411 input!3770)))))

(declare-fun e!1836900 () Bool)

(assert (=> d!837266 (= (prefixMatchZipperSequence!780 (derivationStepZipper!520 z!644 (apply!7907 input!3770 i!1878)) input!3770 (+ i!1878 1)) e!1836900)))

(declare-fun b!2910123 () Bool)

(assert (=> b!2910123 (= e!1836900 (not (lostCauseZipper!613 (derivationStepZipper!520 z!644 (apply!7907 input!3770 i!1878)))))))

(declare-fun b!2910124 () Bool)

(assert (=> b!2910124 (= e!1836900 (prefixMatchZipperSequence!780 (derivationStepZipper!520 (derivationStepZipper!520 z!644 (apply!7907 input!3770 i!1878)) (apply!7907 input!3770 (+ i!1878 1))) input!3770 (+ i!1878 1 1)))))

(assert (= (and d!837266 c!474443) b!2910123))

(assert (= (and d!837266 (not c!474443)) b!2910124))

(assert (=> d!837266 m!3311299))

(assert (=> b!2910123 m!3311395))

(declare-fun m!3311619 () Bool)

(assert (=> b!2910123 m!3311619))

(declare-fun m!3311621 () Bool)

(assert (=> b!2910124 m!3311621))

(assert (=> b!2910124 m!3311395))

(assert (=> b!2910124 m!3311621))

(declare-fun m!3311623 () Bool)

(assert (=> b!2910124 m!3311623))

(assert (=> b!2910124 m!3311623))

(declare-fun m!3311625 () Bool)

(assert (=> b!2910124 m!3311625))

(assert (=> b!2909894 d!837266))

(declare-fun bs!524426 () Bool)

(declare-fun d!837268 () Bool)

(assert (= bs!524426 (and d!837268 d!837188)))

(declare-fun lambda!107992 () Int)

(assert (=> bs!524426 (= (= (apply!7907 input!3770 i!1878) lt!1023502) (= lambda!107992 lambda!107982))))

(assert (=> d!837268 true))

(assert (=> d!837268 (= (derivationStepZipper!520 z!644 (apply!7907 input!3770 i!1878)) (flatMap!247 z!644 lambda!107992))))

(declare-fun bs!524427 () Bool)

(assert (= bs!524427 d!837268))

(declare-fun m!3311627 () Bool)

(assert (=> bs!524427 m!3311627))

(assert (=> b!2909894 d!837268))

(assert (=> b!2909894 d!837180))

(declare-fun d!837270 () Bool)

(declare-fun c!474446 () Bool)

(assert (=> d!837270 (= c!474446 (is-Nil!34667 lt!1023549))))

(declare-fun e!1836903 () (Set C!18062))

(assert (=> d!837270 (= (content!4741 lt!1023549) e!1836903)))

(declare-fun b!2910129 () Bool)

(assert (=> b!2910129 (= e!1836903 (as set.empty (Set C!18062)))))

(declare-fun b!2910130 () Bool)

(assert (=> b!2910130 (= e!1836903 (set.union (set.insert (h!40087 lt!1023549) (as set.empty (Set C!18062))) (content!4741 (t!233844 lt!1023549))))))

(assert (= (and d!837270 c!474446) b!2910129))

(assert (= (and d!837270 (not c!474446)) b!2910130))

(declare-fun m!3311629 () Bool)

(assert (=> b!2910130 m!3311629))

(declare-fun m!3311631 () Bool)

(assert (=> b!2910130 m!3311631))

(assert (=> d!837194 d!837270))

(declare-fun d!837272 () Bool)

(declare-fun c!474447 () Bool)

(assert (=> d!837272 (= c!474447 (is-Nil!34667 lt!1023500))))

(declare-fun e!1836904 () (Set C!18062))

(assert (=> d!837272 (= (content!4741 lt!1023500) e!1836904)))

(declare-fun b!2910131 () Bool)

(assert (=> b!2910131 (= e!1836904 (as set.empty (Set C!18062)))))

(declare-fun b!2910132 () Bool)

(assert (=> b!2910132 (= e!1836904 (set.union (set.insert (h!40087 lt!1023500) (as set.empty (Set C!18062))) (content!4741 (t!233844 lt!1023500))))))

(assert (= (and d!837272 c!474447) b!2910131))

(assert (= (and d!837272 (not c!474447)) b!2910132))

(declare-fun m!3311633 () Bool)

(assert (=> b!2910132 m!3311633))

(assert (=> b!2910132 m!3311613))

(assert (=> d!837194 d!837272))

(declare-fun d!837274 () Bool)

(declare-fun c!474448 () Bool)

(assert (=> d!837274 (= c!474448 (is-Nil!34667 lt!1023545))))

(declare-fun e!1836905 () (Set C!18062))

(assert (=> d!837274 (= (content!4741 lt!1023545) e!1836905)))

(declare-fun b!2910133 () Bool)

(assert (=> b!2910133 (= e!1836905 (as set.empty (Set C!18062)))))

(declare-fun b!2910134 () Bool)

(assert (=> b!2910134 (= e!1836905 (set.union (set.insert (h!40087 lt!1023545) (as set.empty (Set C!18062))) (content!4741 (t!233844 lt!1023545))))))

(assert (= (and d!837274 c!474448) b!2910133))

(assert (= (and d!837274 (not c!474448)) b!2910134))

(declare-fun m!3311635 () Bool)

(assert (=> b!2910134 m!3311635))

(declare-fun m!3311637 () Bool)

(assert (=> b!2910134 m!3311637))

(assert (=> d!837190 d!837274))

(assert (=> d!837190 d!837272))

(declare-fun d!837276 () Bool)

(declare-fun res!1201410 () Bool)

(declare-fun e!1836908 () Bool)

(assert (=> d!837276 (=> (not res!1201410) (not e!1836908))))

(assert (=> d!837276 (= res!1201410 (= (csize!21260 (c!474361 input!3770)) (+ (size!26414 (left!26040 (c!474361 input!3770))) (size!26414 (right!26370 (c!474361 input!3770))))))))

(assert (=> d!837276 (= (inv!46834 (c!474361 input!3770)) e!1836908)))

(declare-fun b!2910141 () Bool)

(declare-fun res!1201411 () Bool)

(assert (=> b!2910141 (=> (not res!1201411) (not e!1836908))))

(assert (=> b!2910141 (= res!1201411 (and (not (= (left!26040 (c!474361 input!3770)) Empty!10515)) (not (= (right!26370 (c!474361 input!3770)) Empty!10515))))))

(declare-fun b!2910142 () Bool)

(declare-fun res!1201412 () Bool)

(assert (=> b!2910142 (=> (not res!1201412) (not e!1836908))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1521 (Conc!10515) Int)

(assert (=> b!2910142 (= res!1201412 (= (cheight!10726 (c!474361 input!3770)) (+ (max!0 (height!1521 (left!26040 (c!474361 input!3770))) (height!1521 (right!26370 (c!474361 input!3770)))) 1)))))

(declare-fun b!2910143 () Bool)

(assert (=> b!2910143 (= e!1836908 (<= 0 (cheight!10726 (c!474361 input!3770))))))

(assert (= (and d!837276 res!1201410) b!2910141))

(assert (= (and b!2910141 res!1201411) b!2910142))

(assert (= (and b!2910142 res!1201412) b!2910143))

(declare-fun m!3311639 () Bool)

(assert (=> d!837276 m!3311639))

(declare-fun m!3311641 () Bool)

(assert (=> d!837276 m!3311641))

(declare-fun m!3311643 () Bool)

(assert (=> b!2910142 m!3311643))

(declare-fun m!3311645 () Bool)

(assert (=> b!2910142 m!3311645))

(assert (=> b!2910142 m!3311643))

(assert (=> b!2910142 m!3311645))

(declare-fun m!3311647 () Bool)

(assert (=> b!2910142 m!3311647))

(assert (=> b!2909973 d!837276))

(declare-fun bs!524428 () Bool)

(declare-fun b!2910148 () Bool)

(declare-fun d!837278 () Bool)

(assert (= bs!524428 (and b!2910148 d!837278)))

(declare-fun lambda!108006 () Int)

(declare-fun lambda!108005 () Int)

(assert (=> bs!524428 (not (= lambda!108006 lambda!108005))))

(declare-fun bs!524429 () Bool)

(declare-fun b!2910149 () Bool)

(assert (= bs!524429 (and b!2910149 d!837278)))

(declare-fun lambda!108007 () Int)

(assert (=> bs!524429 (not (= lambda!108007 lambda!108005))))

(declare-fun bs!524430 () Bool)

(assert (= bs!524430 (and b!2910149 b!2910148)))

(assert (=> bs!524430 (= lambda!108007 lambda!108006)))

(declare-fun e!1836915 () Unit!48215)

(declare-fun Unit!48219 () Unit!48215)

(assert (=> b!2910149 (= e!1836915 Unit!48219)))

(declare-datatypes ((List!34795 0))(
  ( (Nil!34671) (Cons!34671 (h!40091 Context!5520) (t!233855 List!34795)) )
))
(declare-fun lt!1023605 () List!34795)

(declare-fun call!189968 () List!34795)

(assert (=> b!2910149 (= lt!1023605 call!189968)))

(declare-fun lt!1023609 () Unit!48215)

(declare-fun lemmaForallThenNotExists!151 (List!34795 Int) Unit!48215)

(assert (=> b!2910149 (= lt!1023609 (lemmaForallThenNotExists!151 lt!1023605 lambda!108005))))

(declare-fun call!189967 () Bool)

(assert (=> b!2910149 (not call!189967)))

(declare-fun lt!1023608 () Unit!48215)

(assert (=> b!2910149 (= lt!1023608 lt!1023609)))

(declare-fun Unit!48220 () Unit!48215)

(assert (=> b!2910148 (= e!1836915 Unit!48220)))

(declare-fun lt!1023604 () List!34795)

(assert (=> b!2910148 (= lt!1023604 call!189968)))

(declare-fun lt!1023602 () Unit!48215)

(declare-fun lemmaNotForallThenExists!168 (List!34795 Int) Unit!48215)

(assert (=> b!2910148 (= lt!1023602 (lemmaNotForallThenExists!168 lt!1023604 lambda!108005))))

(assert (=> b!2910148 call!189967))

(declare-fun lt!1023607 () Unit!48215)

(assert (=> b!2910148 (= lt!1023607 lt!1023602)))

(declare-fun lt!1023606 () Bool)

(declare-datatypes ((Option!6551 0))(
  ( (None!6550) (Some!6550 (v!34680 List!34791)) )
))
(declare-fun isEmpty!18920 (Option!6551) Bool)

(declare-fun getLanguageWitness!586 ((Set Context!5520)) Option!6551)

(assert (=> d!837278 (= lt!1023606 (isEmpty!18920 (getLanguageWitness!586 z!644)))))

(declare-fun forall!7132 ((Set Context!5520) Int) Bool)

(assert (=> d!837278 (= lt!1023606 (forall!7132 z!644 lambda!108005))))

(declare-fun lt!1023603 () Unit!48215)

(assert (=> d!837278 (= lt!1023603 e!1836915)))

(declare-fun c!474459 () Bool)

(assert (=> d!837278 (= c!474459 (not (forall!7132 z!644 lambda!108005)))))

(assert (=> d!837278 (= (lostCauseZipper!613 z!644) lt!1023606)))

(declare-fun bm!189962 () Bool)

(declare-fun exists!1217 (List!34795 Int) Bool)

(assert (=> bm!189962 (= call!189967 (exists!1217 (ite c!474459 lt!1023604 lt!1023605) (ite c!474459 lambda!108006 lambda!108007)))))

(declare-fun bm!189963 () Bool)

(declare-fun toList!2041 ((Set Context!5520)) List!34795)

(assert (=> bm!189963 (= call!189968 (toList!2041 z!644))))

(assert (= (and d!837278 c!474459) b!2910148))

(assert (= (and d!837278 (not c!474459)) b!2910149))

(assert (= (or b!2910148 b!2910149) bm!189962))

(assert (= (or b!2910148 b!2910149) bm!189963))

(declare-fun m!3311649 () Bool)

(assert (=> bm!189962 m!3311649))

(declare-fun m!3311651 () Bool)

(assert (=> bm!189963 m!3311651))

(declare-fun m!3311653 () Bool)

(assert (=> b!2910149 m!3311653))

(declare-fun m!3311655 () Bool)

(assert (=> b!2910148 m!3311655))

(declare-fun m!3311657 () Bool)

(assert (=> d!837278 m!3311657))

(assert (=> d!837278 m!3311657))

(declare-fun m!3311659 () Bool)

(assert (=> d!837278 m!3311659))

(declare-fun m!3311661 () Bool)

(assert (=> d!837278 m!3311661))

(assert (=> d!837278 m!3311661))

(assert (=> b!2909893 d!837278))

(declare-fun d!837280 () Bool)

(assert (=> d!837280 (= (head!6456 (drop!1825 lt!1023500 i!1878)) (h!40087 (drop!1825 lt!1023500 i!1878)))))

(assert (=> d!837208 d!837280))

(assert (=> d!837208 d!837190))

(assert (=> d!837208 d!837202))

(declare-fun d!837282 () Bool)

(assert (=> d!837282 (= (head!6456 (drop!1825 lt!1023500 i!1878)) (apply!7906 lt!1023500 i!1878))))

(assert (=> d!837282 true))

(declare-fun _$27!861 () Unit!48215)

(assert (=> d!837282 (= (choose!17108 lt!1023500 i!1878) _$27!861)))

(declare-fun bs!524431 () Bool)

(assert (= bs!524431 d!837282))

(assert (=> bs!524431 m!3311311))

(assert (=> bs!524431 m!3311311))

(assert (=> bs!524431 m!3311463))

(assert (=> bs!524431 m!3311329))

(assert (=> d!837208 d!837282))

(declare-fun d!837284 () Bool)

(declare-fun lt!1023612 () Int)

(assert (=> d!837284 (>= lt!1023612 0)))

(declare-fun e!1836918 () Int)

(assert (=> d!837284 (= lt!1023612 e!1836918)))

(declare-fun c!474462 () Bool)

(assert (=> d!837284 (= c!474462 (is-Nil!34667 (list!12611 input!3770)))))

(assert (=> d!837284 (= (size!26413 (list!12611 input!3770)) lt!1023612)))

(declare-fun b!2910154 () Bool)

(assert (=> b!2910154 (= e!1836918 0)))

(declare-fun b!2910155 () Bool)

(assert (=> b!2910155 (= e!1836918 (+ 1 (size!26413 (t!233844 (list!12611 input!3770)))))))

(assert (= (and d!837284 c!474462) b!2910154))

(assert (= (and d!837284 (not c!474462)) b!2910155))

(declare-fun m!3311663 () Bool)

(assert (=> b!2910155 m!3311663))

(assert (=> d!837210 d!837284))

(assert (=> d!837210 d!837186))

(declare-fun d!837286 () Bool)

(declare-fun lt!1023615 () Int)

(assert (=> d!837286 (= lt!1023615 (size!26413 (list!12613 (c!474361 input!3770))))))

(assert (=> d!837286 (= lt!1023615 (ite (is-Empty!10515 (c!474361 input!3770)) 0 (ite (is-Leaf!16209 (c!474361 input!3770)) (csize!21261 (c!474361 input!3770)) (csize!21260 (c!474361 input!3770)))))))

(assert (=> d!837286 (= (size!26414 (c!474361 input!3770)) lt!1023615)))

(declare-fun bs!524432 () Bool)

(assert (= bs!524432 d!837286))

(assert (=> bs!524432 m!3311399))

(assert (=> bs!524432 m!3311399))

(assert (=> bs!524432 m!3311597))

(assert (=> d!837210 d!837286))

(declare-fun d!837288 () Bool)

(declare-fun res!1201417 () Bool)

(declare-fun e!1836921 () Bool)

(assert (=> d!837288 (=> (not res!1201417) (not e!1836921))))

(assert (=> d!837288 (= res!1201417 (<= (size!26413 (list!12615 (xs!13633 (c!474361 input!3770)))) 512))))

(assert (=> d!837288 (= (inv!46835 (c!474361 input!3770)) e!1836921)))

(declare-fun b!2910160 () Bool)

(declare-fun res!1201418 () Bool)

(assert (=> b!2910160 (=> (not res!1201418) (not e!1836921))))

(assert (=> b!2910160 (= res!1201418 (= (csize!21261 (c!474361 input!3770)) (size!26413 (list!12615 (xs!13633 (c!474361 input!3770))))))))

(declare-fun b!2910161 () Bool)

(assert (=> b!2910161 (= e!1836921 (and (> (csize!21261 (c!474361 input!3770)) 0) (<= (csize!21261 (c!474361 input!3770)) 512)))))

(assert (= (and d!837288 res!1201417) b!2910160))

(assert (= (and b!2910160 res!1201418) b!2910161))

(assert (=> d!837288 m!3311601))

(assert (=> d!837288 m!3311601))

(declare-fun m!3311665 () Bool)

(assert (=> d!837288 m!3311665))

(assert (=> b!2910160 m!3311601))

(assert (=> b!2910160 m!3311601))

(assert (=> b!2910160 m!3311665))

(assert (=> b!2909975 d!837288))

(declare-fun d!837290 () Bool)

(declare-fun res!1201423 () Bool)

(declare-fun e!1836926 () Bool)

(assert (=> d!837290 (=> res!1201423 e!1836926)))

(assert (=> d!837290 (= res!1201423 (is-Nil!34668 (exprs!3260 setElem!25896)))))

(assert (=> d!837290 (= (forall!7130 (exprs!3260 setElem!25896) lambda!107988) e!1836926)))

(declare-fun b!2910166 () Bool)

(declare-fun e!1836927 () Bool)

(assert (=> b!2910166 (= e!1836926 e!1836927)))

(declare-fun res!1201424 () Bool)

(assert (=> b!2910166 (=> (not res!1201424) (not e!1836927))))

(declare-fun dynLambda!14353 (Int Regex!8940) Bool)

(assert (=> b!2910166 (= res!1201424 (dynLambda!14353 lambda!107988 (h!40088 (exprs!3260 setElem!25896))))))

(declare-fun b!2910167 () Bool)

(assert (=> b!2910167 (= e!1836927 (forall!7130 (t!233845 (exprs!3260 setElem!25896)) lambda!107988))))

(assert (= (and d!837290 (not res!1201423)) b!2910166))

(assert (= (and b!2910166 res!1201424) b!2910167))

(declare-fun b_lambda!86367 () Bool)

(assert (=> (not b_lambda!86367) (not b!2910166)))

(declare-fun m!3311667 () Bool)

(assert (=> b!2910166 m!3311667))

(declare-fun m!3311669 () Bool)

(assert (=> b!2910167 m!3311669))

(assert (=> d!837212 d!837290))

(declare-fun d!837292 () Bool)

(declare-fun lt!1023616 () Int)

(assert (=> d!837292 (>= lt!1023616 0)))

(declare-fun e!1836928 () Int)

(assert (=> d!837292 (= lt!1023616 e!1836928)))

(declare-fun c!474463 () Bool)

(assert (=> d!837292 (= c!474463 (is-Nil!34667 lt!1023500))))

(assert (=> d!837292 (= (size!26413 lt!1023500) lt!1023616)))

(declare-fun b!2910168 () Bool)

(assert (=> b!2910168 (= e!1836928 0)))

(declare-fun b!2910169 () Bool)

(assert (=> b!2910169 (= e!1836928 (+ 1 (size!26413 (t!233844 lt!1023500))))))

(assert (= (and d!837292 c!474463) b!2910168))

(assert (= (and d!837292 (not c!474463)) b!2910169))

(assert (=> b!2910169 m!3311615))

(assert (=> b!2909950 d!837292))

(declare-fun d!837294 () Bool)

(assert (=> d!837294 (= (inv!46836 (xs!13633 (c!474361 input!3770))) (<= (size!26413 (innerList!10575 (xs!13633 (c!474361 input!3770)))) 2147483647))))

(declare-fun bs!524433 () Bool)

(assert (= bs!524433 d!837294))

(declare-fun m!3311671 () Bool)

(assert (=> bs!524433 m!3311671))

(assert (=> b!2909997 d!837294))

(declare-fun d!837296 () Bool)

(assert (=> d!837296 (= (isEmpty!18918 lt!1023504) (is-Nil!34667 lt!1023504))))

(assert (=> d!837200 d!837296))

(declare-fun b!2910170 () Bool)

(declare-fun e!1836932 () Bool)

(declare-fun lt!1023617 () List!34791)

(declare-fun e!1836929 () Int)

(assert (=> b!2910170 (= e!1836932 (= (size!26413 lt!1023617) e!1836929))))

(declare-fun c!474464 () Bool)

(assert (=> b!2910170 (= c!474464 (<= (- (+ 1 i!1878) 1) 0))))

(declare-fun d!837298 () Bool)

(assert (=> d!837298 e!1836932))

(declare-fun res!1201425 () Bool)

(assert (=> d!837298 (=> (not res!1201425) (not e!1836932))))

(assert (=> d!837298 (= res!1201425 (set.subset (content!4741 lt!1023617) (content!4741 (t!233844 lt!1023500))))))

(declare-fun e!1836931 () List!34791)

(assert (=> d!837298 (= lt!1023617 e!1836931)))

(declare-fun c!474467 () Bool)

(assert (=> d!837298 (= c!474467 (is-Nil!34667 (t!233844 lt!1023500)))))

(assert (=> d!837298 (= (drop!1825 (t!233844 lt!1023500) (- (+ 1 i!1878) 1)) lt!1023617)))

(declare-fun bm!189964 () Bool)

(declare-fun call!189969 () Int)

(assert (=> bm!189964 (= call!189969 (size!26413 (t!233844 lt!1023500)))))

(declare-fun b!2910171 () Bool)

(declare-fun e!1836933 () Int)

(assert (=> b!2910171 (= e!1836929 e!1836933)))

(declare-fun c!474466 () Bool)

(assert (=> b!2910171 (= c!474466 (>= (- (+ 1 i!1878) 1) call!189969))))

(declare-fun b!2910172 () Bool)

(assert (=> b!2910172 (= e!1836933 (- call!189969 (- (+ 1 i!1878) 1)))))

(declare-fun b!2910173 () Bool)

(declare-fun e!1836930 () List!34791)

(assert (=> b!2910173 (= e!1836930 (drop!1825 (t!233844 (t!233844 lt!1023500)) (- (- (+ 1 i!1878) 1) 1)))))

(declare-fun b!2910174 () Bool)

(assert (=> b!2910174 (= e!1836931 Nil!34667)))

(declare-fun b!2910175 () Bool)

(assert (=> b!2910175 (= e!1836929 call!189969)))

(declare-fun b!2910176 () Bool)

(assert (=> b!2910176 (= e!1836930 (t!233844 lt!1023500))))

(declare-fun b!2910177 () Bool)

(assert (=> b!2910177 (= e!1836933 0)))

(declare-fun b!2910178 () Bool)

(assert (=> b!2910178 (= e!1836931 e!1836930)))

(declare-fun c!474465 () Bool)

(assert (=> b!2910178 (= c!474465 (<= (- (+ 1 i!1878) 1) 0))))

(assert (= (and d!837298 c!474467) b!2910174))

(assert (= (and d!837298 (not c!474467)) b!2910178))

(assert (= (and b!2910178 c!474465) b!2910176))

(assert (= (and b!2910178 (not c!474465)) b!2910173))

(assert (= (and d!837298 res!1201425) b!2910170))

(assert (= (and b!2910170 c!474464) b!2910175))

(assert (= (and b!2910170 (not c!474464)) b!2910171))

(assert (= (and b!2910171 c!474466) b!2910177))

(assert (= (and b!2910171 (not c!474466)) b!2910172))

(assert (= (or b!2910175 b!2910171 b!2910172) bm!189964))

(declare-fun m!3311673 () Bool)

(assert (=> b!2910170 m!3311673))

(declare-fun m!3311675 () Bool)

(assert (=> d!837298 m!3311675))

(assert (=> d!837298 m!3311613))

(assert (=> bm!189964 m!3311615))

(declare-fun m!3311677 () Bool)

(assert (=> b!2910173 m!3311677))

(assert (=> b!2909933 d!837298))

(assert (=> b!2909957 d!837292))

(assert (=> bm!189950 d!837292))

(declare-fun b!2910179 () Bool)

(declare-fun e!1836937 () Bool)

(declare-fun lt!1023618 () List!34791)

(declare-fun e!1836934 () Int)

(assert (=> b!2910179 (= e!1836937 (= (size!26413 lt!1023618) e!1836934))))

(declare-fun c!474468 () Bool)

(assert (=> b!2910179 (= c!474468 (<= i!1878 0))))

(declare-fun d!837300 () Bool)

(assert (=> d!837300 e!1836937))

(declare-fun res!1201426 () Bool)

(assert (=> d!837300 (=> (not res!1201426) (not e!1836937))))

(assert (=> d!837300 (= res!1201426 (set.subset (content!4741 lt!1023618) (content!4741 (list!12613 (c!474361 input!3770)))))))

(declare-fun e!1836936 () List!34791)

(assert (=> d!837300 (= lt!1023618 e!1836936)))

(declare-fun c!474471 () Bool)

(assert (=> d!837300 (= c!474471 (is-Nil!34667 (list!12613 (c!474361 input!3770))))))

(assert (=> d!837300 (= (drop!1825 (list!12613 (c!474361 input!3770)) i!1878) lt!1023618)))

(declare-fun bm!189965 () Bool)

(declare-fun call!189970 () Int)

(assert (=> bm!189965 (= call!189970 (size!26413 (list!12613 (c!474361 input!3770))))))

(declare-fun b!2910180 () Bool)

(declare-fun e!1836938 () Int)

(assert (=> b!2910180 (= e!1836934 e!1836938)))

(declare-fun c!474470 () Bool)

(assert (=> b!2910180 (= c!474470 (>= i!1878 call!189970))))

(declare-fun b!2910181 () Bool)

(assert (=> b!2910181 (= e!1836938 (- call!189970 i!1878))))

(declare-fun b!2910182 () Bool)

(declare-fun e!1836935 () List!34791)

(assert (=> b!2910182 (= e!1836935 (drop!1825 (t!233844 (list!12613 (c!474361 input!3770))) (- i!1878 1)))))

(declare-fun b!2910183 () Bool)

(assert (=> b!2910183 (= e!1836936 Nil!34667)))

(declare-fun b!2910184 () Bool)

(assert (=> b!2910184 (= e!1836934 call!189970)))

(declare-fun b!2910185 () Bool)

(assert (=> b!2910185 (= e!1836935 (list!12613 (c!474361 input!3770)))))

(declare-fun b!2910186 () Bool)

(assert (=> b!2910186 (= e!1836938 0)))

(declare-fun b!2910187 () Bool)

(assert (=> b!2910187 (= e!1836936 e!1836935)))

(declare-fun c!474469 () Bool)

(assert (=> b!2910187 (= c!474469 (<= i!1878 0))))

(assert (= (and d!837300 c!474471) b!2910183))

(assert (= (and d!837300 (not c!474471)) b!2910187))

(assert (= (and b!2910187 c!474469) b!2910185))

(assert (= (and b!2910187 (not c!474469)) b!2910182))

(assert (= (and d!837300 res!1201426) b!2910179))

(assert (= (and b!2910179 c!474468) b!2910184))

(assert (= (and b!2910179 (not c!474468)) b!2910180))

(assert (= (and b!2910180 c!474470) b!2910186))

(assert (= (and b!2910180 (not c!474470)) b!2910181))

(assert (= (or b!2910184 b!2910180 b!2910181) bm!189965))

(declare-fun m!3311679 () Bool)

(assert (=> b!2910179 m!3311679))

(declare-fun m!3311681 () Bool)

(assert (=> d!837300 m!3311681))

(assert (=> d!837300 m!3311399))

(assert (=> d!837300 m!3311595))

(assert (=> bm!189965 m!3311399))

(assert (=> bm!189965 m!3311597))

(declare-fun m!3311683 () Bool)

(assert (=> b!2910182 m!3311683))

(assert (=> d!837206 d!837300))

(assert (=> d!837206 d!837262))

(declare-fun d!837302 () Bool)

(declare-fun c!474472 () Bool)

(assert (=> d!837302 (= c!474472 (isEmpty!18918 (tail!4681 lt!1023504)))))

(declare-fun e!1836939 () Bool)

(assert (=> d!837302 (= (prefixMatchZipper!376 (derivationStepZipper!520 lt!1023507 (head!6456 lt!1023504)) (tail!4681 lt!1023504)) e!1836939)))

(declare-fun b!2910188 () Bool)

(assert (=> b!2910188 (= e!1836939 (not (lostCauseZipper!613 (derivationStepZipper!520 lt!1023507 (head!6456 lt!1023504)))))))

(declare-fun b!2910189 () Bool)

(assert (=> b!2910189 (= e!1836939 (prefixMatchZipper!376 (derivationStepZipper!520 (derivationStepZipper!520 lt!1023507 (head!6456 lt!1023504)) (head!6456 (tail!4681 lt!1023504))) (tail!4681 (tail!4681 lt!1023504))))))

(assert (= (and d!837302 c!474472) b!2910188))

(assert (= (and d!837302 (not c!474472)) b!2910189))

(assert (=> d!837302 m!3311443))

(declare-fun m!3311685 () Bool)

(assert (=> d!837302 m!3311685))

(assert (=> b!2910188 m!3311441))

(declare-fun m!3311687 () Bool)

(assert (=> b!2910188 m!3311687))

(assert (=> b!2910189 m!3311443))

(declare-fun m!3311689 () Bool)

(assert (=> b!2910189 m!3311689))

(assert (=> b!2910189 m!3311441))

(assert (=> b!2910189 m!3311689))

(declare-fun m!3311691 () Bool)

(assert (=> b!2910189 m!3311691))

(assert (=> b!2910189 m!3311443))

(declare-fun m!3311693 () Bool)

(assert (=> b!2910189 m!3311693))

(assert (=> b!2910189 m!3311691))

(assert (=> b!2910189 m!3311693))

(declare-fun m!3311695 () Bool)

(assert (=> b!2910189 m!3311695))

(assert (=> b!2909943 d!837302))

(declare-fun bs!524434 () Bool)

(declare-fun d!837304 () Bool)

(assert (= bs!524434 (and d!837304 d!837188)))

(declare-fun lambda!108008 () Int)

(assert (=> bs!524434 (= (= (head!6456 lt!1023504) lt!1023502) (= lambda!108008 lambda!107982))))

(declare-fun bs!524435 () Bool)

(assert (= bs!524435 (and d!837304 d!837268)))

(assert (=> bs!524435 (= (= (head!6456 lt!1023504) (apply!7907 input!3770 i!1878)) (= lambda!108008 lambda!107992))))

(assert (=> d!837304 true))

(assert (=> d!837304 (= (derivationStepZipper!520 lt!1023507 (head!6456 lt!1023504)) (flatMap!247 lt!1023507 lambda!108008))))

(declare-fun bs!524436 () Bool)

(assert (= bs!524436 d!837304))

(declare-fun m!3311697 () Bool)

(assert (=> bs!524436 m!3311697))

(assert (=> b!2909943 d!837304))

(declare-fun d!837306 () Bool)

(assert (=> d!837306 (= (head!6456 lt!1023504) (h!40087 lt!1023504))))

(assert (=> b!2909943 d!837306))

(declare-fun d!837308 () Bool)

(assert (=> d!837308 (= (tail!4681 lt!1023504) (t!233844 lt!1023504))))

(assert (=> b!2909943 d!837308))

(declare-fun b!2910202 () Bool)

(declare-fun res!1201439 () Bool)

(declare-fun e!1836944 () Bool)

(assert (=> b!2910202 (=> (not res!1201439) (not e!1836944))))

(assert (=> b!2910202 (= res!1201439 (<= (- (height!1521 (left!26040 (c!474361 input!3770))) (height!1521 (right!26370 (c!474361 input!3770)))) 1))))

(declare-fun b!2910203 () Bool)

(declare-fun isEmpty!18921 (Conc!10515) Bool)

(assert (=> b!2910203 (= e!1836944 (not (isEmpty!18921 (right!26370 (c!474361 input!3770)))))))

(declare-fun b!2910204 () Bool)

(declare-fun res!1201443 () Bool)

(assert (=> b!2910204 (=> (not res!1201443) (not e!1836944))))

(assert (=> b!2910204 (= res!1201443 (not (isEmpty!18921 (left!26040 (c!474361 input!3770)))))))

(declare-fun b!2910205 () Bool)

(declare-fun res!1201442 () Bool)

(assert (=> b!2910205 (=> (not res!1201442) (not e!1836944))))

(assert (=> b!2910205 (= res!1201442 (isBalanced!3166 (right!26370 (c!474361 input!3770))))))

(declare-fun d!837310 () Bool)

(declare-fun res!1201440 () Bool)

(declare-fun e!1836945 () Bool)

(assert (=> d!837310 (=> res!1201440 e!1836945)))

(assert (=> d!837310 (= res!1201440 (not (is-Node!10515 (c!474361 input!3770))))))

(assert (=> d!837310 (= (isBalanced!3166 (c!474361 input!3770)) e!1836945)))

(declare-fun b!2910206 () Bool)

(declare-fun res!1201441 () Bool)

(assert (=> b!2910206 (=> (not res!1201441) (not e!1836944))))

(assert (=> b!2910206 (= res!1201441 (isBalanced!3166 (left!26040 (c!474361 input!3770))))))

(declare-fun b!2910207 () Bool)

(assert (=> b!2910207 (= e!1836945 e!1836944)))

(declare-fun res!1201444 () Bool)

(assert (=> b!2910207 (=> (not res!1201444) (not e!1836944))))

(assert (=> b!2910207 (= res!1201444 (<= (- 1) (- (height!1521 (left!26040 (c!474361 input!3770))) (height!1521 (right!26370 (c!474361 input!3770))))))))

(assert (= (and d!837310 (not res!1201440)) b!2910207))

(assert (= (and b!2910207 res!1201444) b!2910202))

(assert (= (and b!2910202 res!1201439) b!2910206))

(assert (= (and b!2910206 res!1201441) b!2910205))

(assert (= (and b!2910205 res!1201442) b!2910204))

(assert (= (and b!2910204 res!1201443) b!2910203))

(assert (=> b!2910202 m!3311643))

(assert (=> b!2910202 m!3311645))

(declare-fun m!3311699 () Bool)

(assert (=> b!2910203 m!3311699))

(assert (=> b!2910207 m!3311643))

(assert (=> b!2910207 m!3311645))

(declare-fun m!3311701 () Bool)

(assert (=> b!2910206 m!3311701))

(declare-fun m!3311703 () Bool)

(assert (=> b!2910204 m!3311703))

(declare-fun m!3311705 () Bool)

(assert (=> b!2910205 m!3311705))

(assert (=> d!837216 d!837310))

(declare-fun d!837312 () Bool)

(assert (=> d!837312 (= (head!6456 lt!1023500) (h!40087 lt!1023500))))

(assert (=> b!2909951 d!837312))

(declare-fun d!837314 () Bool)

(assert (=> d!837314 (= (tail!4681 (drop!1825 lt!1023500 i!1878)) (t!233844 (drop!1825 lt!1023500 i!1878)))))

(assert (=> d!837192 d!837314))

(assert (=> d!837192 d!837190))

(declare-fun b!2910208 () Bool)

(declare-fun e!1836949 () Bool)

(declare-fun lt!1023619 () List!34791)

(declare-fun e!1836946 () Int)

(assert (=> b!2910208 (= e!1836949 (= (size!26413 lt!1023619) e!1836946))))

(declare-fun c!474473 () Bool)

(assert (=> b!2910208 (= c!474473 (<= (+ i!1878 1) 0))))

(declare-fun d!837316 () Bool)

(assert (=> d!837316 e!1836949))

(declare-fun res!1201445 () Bool)

(assert (=> d!837316 (=> (not res!1201445) (not e!1836949))))

(assert (=> d!837316 (= res!1201445 (set.subset (content!4741 lt!1023619) (content!4741 lt!1023500)))))

(declare-fun e!1836948 () List!34791)

(assert (=> d!837316 (= lt!1023619 e!1836948)))

(declare-fun c!474476 () Bool)

(assert (=> d!837316 (= c!474476 (is-Nil!34667 lt!1023500))))

(assert (=> d!837316 (= (drop!1825 lt!1023500 (+ i!1878 1)) lt!1023619)))

(declare-fun bm!189966 () Bool)

(declare-fun call!189971 () Int)

(assert (=> bm!189966 (= call!189971 (size!26413 lt!1023500))))

(declare-fun b!2910209 () Bool)

(declare-fun e!1836950 () Int)

(assert (=> b!2910209 (= e!1836946 e!1836950)))

(declare-fun c!474475 () Bool)

(assert (=> b!2910209 (= c!474475 (>= (+ i!1878 1) call!189971))))

(declare-fun b!2910210 () Bool)

(assert (=> b!2910210 (= e!1836950 (- call!189971 (+ i!1878 1)))))

(declare-fun b!2910211 () Bool)

(declare-fun e!1836947 () List!34791)

(assert (=> b!2910211 (= e!1836947 (drop!1825 (t!233844 lt!1023500) (- (+ i!1878 1) 1)))))

(declare-fun b!2910212 () Bool)

(assert (=> b!2910212 (= e!1836948 Nil!34667)))

(declare-fun b!2910213 () Bool)

(assert (=> b!2910213 (= e!1836946 call!189971)))

(declare-fun b!2910214 () Bool)

(assert (=> b!2910214 (= e!1836947 lt!1023500)))

(declare-fun b!2910215 () Bool)

(assert (=> b!2910215 (= e!1836950 0)))

(declare-fun b!2910216 () Bool)

(assert (=> b!2910216 (= e!1836948 e!1836947)))

(declare-fun c!474474 () Bool)

(assert (=> b!2910216 (= c!474474 (<= (+ i!1878 1) 0))))

(assert (= (and d!837316 c!474476) b!2910212))

(assert (= (and d!837316 (not c!474476)) b!2910216))

(assert (= (and b!2910216 c!474474) b!2910214))

(assert (= (and b!2910216 (not c!474474)) b!2910211))

(assert (= (and d!837316 res!1201445) b!2910208))

(assert (= (and b!2910208 c!474473) b!2910213))

(assert (= (and b!2910208 (not c!474473)) b!2910209))

(assert (= (and b!2910209 c!474475) b!2910215))

(assert (= (and b!2910209 (not c!474475)) b!2910210))

(assert (= (or b!2910213 b!2910209 b!2910210) bm!189966))

(declare-fun m!3311707 () Bool)

(assert (=> b!2910208 m!3311707))

(declare-fun m!3311709 () Bool)

(assert (=> d!837316 m!3311709))

(assert (=> d!837316 m!3311413))

(assert (=> bm!189966 m!3311415))

(declare-fun m!3311711 () Bool)

(assert (=> b!2910211 m!3311711))

(assert (=> d!837192 d!837316))

(declare-fun d!837318 () Bool)

(assert (=> d!837318 (= (tail!4681 (drop!1825 lt!1023500 i!1878)) (drop!1825 lt!1023500 (+ i!1878 1)))))

(assert (=> d!837318 true))

(declare-fun _$28!608 () Unit!48215)

(assert (=> d!837318 (= (choose!17106 lt!1023500 i!1878) _$28!608)))

(declare-fun bs!524437 () Bool)

(assert (= bs!524437 d!837318))

(assert (=> bs!524437 m!3311311))

(assert (=> bs!524437 m!3311311))

(assert (=> bs!524437 m!3311419))

(assert (=> bs!524437 m!3311421))

(assert (=> d!837192 d!837318))

(declare-fun d!837320 () Bool)

(declare-fun lt!1023620 () C!18062)

(assert (=> d!837320 (contains!6130 (list!12611 input!3770) lt!1023620)))

(declare-fun e!1836952 () C!18062)

(assert (=> d!837320 (= lt!1023620 e!1836952)))

(declare-fun c!474477 () Bool)

(assert (=> d!837320 (= c!474477 (= i!1878 0))))

(declare-fun e!1836951 () Bool)

(assert (=> d!837320 e!1836951))

(declare-fun res!1201446 () Bool)

(assert (=> d!837320 (=> (not res!1201446) (not e!1836951))))

(assert (=> d!837320 (= res!1201446 (<= 0 i!1878))))

(assert (=> d!837320 (= (apply!7906 (list!12611 input!3770) i!1878) lt!1023620)))

(declare-fun b!2910217 () Bool)

(assert (=> b!2910217 (= e!1836951 (< i!1878 (size!26413 (list!12611 input!3770))))))

(declare-fun b!2910218 () Bool)

(assert (=> b!2910218 (= e!1836952 (head!6456 (list!12611 input!3770)))))

(declare-fun b!2910219 () Bool)

(assert (=> b!2910219 (= e!1836952 (apply!7906 (tail!4681 (list!12611 input!3770)) (- i!1878 1)))))

(assert (= (and d!837320 res!1201446) b!2910217))

(assert (= (and d!837320 c!474477) b!2910218))

(assert (= (and d!837320 (not c!474477)) b!2910219))

(assert (=> d!837320 m!3311317))

(declare-fun m!3311713 () Bool)

(assert (=> d!837320 m!3311713))

(assert (=> b!2910217 m!3311317))

(assert (=> b!2910217 m!3311467))

(assert (=> b!2910218 m!3311317))

(declare-fun m!3311715 () Bool)

(assert (=> b!2910218 m!3311715))

(assert (=> b!2910219 m!3311317))

(declare-fun m!3311717 () Bool)

(assert (=> b!2910219 m!3311717))

(assert (=> b!2910219 m!3311717))

(declare-fun m!3311719 () Bool)

(assert (=> b!2910219 m!3311719))

(assert (=> d!837180 d!837320))

(assert (=> d!837180 d!837186))

(declare-fun b!2910234 () Bool)

(declare-fun e!1836963 () C!18062)

(declare-fun e!1836962 () C!18062)

(assert (=> b!2910234 (= e!1836963 e!1836962)))

(declare-fun lt!1023626 () Bool)

(declare-fun appendIndex!301 (List!34791 List!34791 Int) Bool)

(assert (=> b!2910234 (= lt!1023626 (appendIndex!301 (list!12613 (left!26040 (c!474361 input!3770))) (list!12613 (right!26370 (c!474361 input!3770))) i!1878))))

(declare-fun c!474485 () Bool)

(assert (=> b!2910234 (= c!474485 (< i!1878 (size!26414 (left!26040 (c!474361 input!3770)))))))

(declare-fun b!2910235 () Bool)

(declare-fun e!1836964 () Int)

(assert (=> b!2910235 (= e!1836964 i!1878)))

(declare-fun d!837322 () Bool)

(declare-fun lt!1023625 () C!18062)

(assert (=> d!837322 (= lt!1023625 (apply!7906 (list!12613 (c!474361 input!3770)) i!1878))))

(assert (=> d!837322 (= lt!1023625 e!1836963)))

(declare-fun c!474486 () Bool)

(assert (=> d!837322 (= c!474486 (is-Leaf!16209 (c!474361 input!3770)))))

(declare-fun e!1836961 () Bool)

(assert (=> d!837322 e!1836961))

(declare-fun res!1201449 () Bool)

(assert (=> d!837322 (=> (not res!1201449) (not e!1836961))))

(assert (=> d!837322 (= res!1201449 (<= 0 i!1878))))

(assert (=> d!837322 (= (apply!7910 (c!474361 input!3770) i!1878) lt!1023625)))

(declare-fun b!2910236 () Bool)

(declare-fun apply!7912 (IArray!21035 Int) C!18062)

(assert (=> b!2910236 (= e!1836963 (apply!7912 (xs!13633 (c!474361 input!3770)) i!1878))))

(declare-fun bm!189969 () Bool)

(declare-fun c!474484 () Bool)

(assert (=> bm!189969 (= c!474484 c!474485)))

(declare-fun call!189974 () C!18062)

(assert (=> bm!189969 (= call!189974 (apply!7910 (ite c!474485 (left!26040 (c!474361 input!3770)) (right!26370 (c!474361 input!3770))) e!1836964))))

(declare-fun b!2910237 () Bool)

(assert (=> b!2910237 (= e!1836964 (- i!1878 (size!26414 (left!26040 (c!474361 input!3770)))))))

(declare-fun b!2910238 () Bool)

(assert (=> b!2910238 (= e!1836962 call!189974)))

(declare-fun b!2910239 () Bool)

(assert (=> b!2910239 (= e!1836961 (< i!1878 (size!26414 (c!474361 input!3770))))))

(declare-fun b!2910240 () Bool)

(assert (=> b!2910240 (= e!1836962 call!189974)))

(assert (= (and d!837322 res!1201449) b!2910239))

(assert (= (and d!837322 c!474486) b!2910236))

(assert (= (and d!837322 (not c!474486)) b!2910234))

(assert (= (and b!2910234 c!474485) b!2910240))

(assert (= (and b!2910234 (not c!474485)) b!2910238))

(assert (= (or b!2910240 b!2910238) bm!189969))

(assert (= (and bm!189969 c!474484) b!2910235))

(assert (= (and bm!189969 (not c!474484)) b!2910237))

(assert (=> b!2910237 m!3311639))

(assert (=> d!837322 m!3311399))

(assert (=> d!837322 m!3311399))

(declare-fun m!3311721 () Bool)

(assert (=> d!837322 m!3311721))

(declare-fun m!3311723 () Bool)

(assert (=> bm!189969 m!3311723))

(assert (=> b!2910234 m!3311603))

(assert (=> b!2910234 m!3311605))

(assert (=> b!2910234 m!3311603))

(assert (=> b!2910234 m!3311605))

(declare-fun m!3311725 () Bool)

(assert (=> b!2910234 m!3311725))

(assert (=> b!2910234 m!3311639))

(assert (=> b!2910239 m!3311469))

(declare-fun m!3311727 () Bool)

(assert (=> b!2910236 m!3311727))

(assert (=> d!837180 d!837322))

(declare-fun d!837324 () Bool)

(declare-fun lt!1023627 () Int)

(assert (=> d!837324 (>= lt!1023627 0)))

(declare-fun e!1836965 () Int)

(assert (=> d!837324 (= lt!1023627 e!1836965)))

(declare-fun c!474487 () Bool)

(assert (=> d!837324 (= c!474487 (is-Nil!34667 lt!1023545))))

(assert (=> d!837324 (= (size!26413 lt!1023545) lt!1023627)))

(declare-fun b!2910241 () Bool)

(assert (=> b!2910241 (= e!1836965 0)))

(declare-fun b!2910242 () Bool)

(assert (=> b!2910242 (= e!1836965 (+ 1 (size!26413 (t!233844 lt!1023545))))))

(assert (= (and d!837324 c!474487) b!2910241))

(assert (= (and d!837324 (not c!474487)) b!2910242))

(declare-fun m!3311729 () Bool)

(assert (=> b!2910242 m!3311729))

(assert (=> b!2909918 d!837324))

(declare-fun bs!524438 () Bool)

(declare-fun d!837326 () Bool)

(assert (= bs!524438 (and d!837326 d!837278)))

(declare-fun lambda!108009 () Int)

(assert (=> bs!524438 (= lambda!108009 lambda!108005)))

(declare-fun bs!524439 () Bool)

(assert (= bs!524439 (and d!837326 b!2910148)))

(assert (=> bs!524439 (not (= lambda!108009 lambda!108006))))

(declare-fun bs!524440 () Bool)

(assert (= bs!524440 (and d!837326 b!2910149)))

(assert (=> bs!524440 (not (= lambda!108009 lambda!108007))))

(declare-fun bs!524441 () Bool)

(declare-fun b!2910243 () Bool)

(assert (= bs!524441 (and b!2910243 d!837278)))

(declare-fun lambda!108010 () Int)

(assert (=> bs!524441 (not (= lambda!108010 lambda!108005))))

(declare-fun bs!524442 () Bool)

(assert (= bs!524442 (and b!2910243 b!2910148)))

(assert (=> bs!524442 (= lambda!108010 lambda!108006)))

(declare-fun bs!524443 () Bool)

(assert (= bs!524443 (and b!2910243 b!2910149)))

(assert (=> bs!524443 (= lambda!108010 lambda!108007)))

(declare-fun bs!524444 () Bool)

(assert (= bs!524444 (and b!2910243 d!837326)))

(assert (=> bs!524444 (not (= lambda!108010 lambda!108009))))

(declare-fun bs!524445 () Bool)

(declare-fun b!2910244 () Bool)

(assert (= bs!524445 (and b!2910244 d!837326)))

(declare-fun lambda!108011 () Int)

(assert (=> bs!524445 (not (= lambda!108011 lambda!108009))))

(declare-fun bs!524446 () Bool)

(assert (= bs!524446 (and b!2910244 d!837278)))

(assert (=> bs!524446 (not (= lambda!108011 lambda!108005))))

(declare-fun bs!524447 () Bool)

(assert (= bs!524447 (and b!2910244 b!2910243)))

(assert (=> bs!524447 (= lambda!108011 lambda!108010)))

(declare-fun bs!524448 () Bool)

(assert (= bs!524448 (and b!2910244 b!2910149)))

(assert (=> bs!524448 (= lambda!108011 lambda!108007)))

(declare-fun bs!524449 () Bool)

(assert (= bs!524449 (and b!2910244 b!2910148)))

(assert (=> bs!524449 (= lambda!108011 lambda!108006)))

(declare-fun e!1836966 () Unit!48215)

(declare-fun Unit!48221 () Unit!48215)

(assert (=> b!2910244 (= e!1836966 Unit!48221)))

(declare-fun lt!1023631 () List!34795)

(declare-fun call!189976 () List!34795)

(assert (=> b!2910244 (= lt!1023631 call!189976)))

(declare-fun lt!1023635 () Unit!48215)

(assert (=> b!2910244 (= lt!1023635 (lemmaForallThenNotExists!151 lt!1023631 lambda!108009))))

(declare-fun call!189975 () Bool)

(assert (=> b!2910244 (not call!189975)))

(declare-fun lt!1023634 () Unit!48215)

(assert (=> b!2910244 (= lt!1023634 lt!1023635)))

(declare-fun Unit!48222 () Unit!48215)

(assert (=> b!2910243 (= e!1836966 Unit!48222)))

(declare-fun lt!1023630 () List!34795)

(assert (=> b!2910243 (= lt!1023630 call!189976)))

(declare-fun lt!1023628 () Unit!48215)

(assert (=> b!2910243 (= lt!1023628 (lemmaNotForallThenExists!168 lt!1023630 lambda!108009))))

(assert (=> b!2910243 call!189975))

(declare-fun lt!1023633 () Unit!48215)

(assert (=> b!2910243 (= lt!1023633 lt!1023628)))

(declare-fun lt!1023632 () Bool)

(assert (=> d!837326 (= lt!1023632 (isEmpty!18920 (getLanguageWitness!586 lt!1023507)))))

(assert (=> d!837326 (= lt!1023632 (forall!7132 lt!1023507 lambda!108009))))

(declare-fun lt!1023629 () Unit!48215)

(assert (=> d!837326 (= lt!1023629 e!1836966)))

(declare-fun c!474488 () Bool)

(assert (=> d!837326 (= c!474488 (not (forall!7132 lt!1023507 lambda!108009)))))

(assert (=> d!837326 (= (lostCauseZipper!613 lt!1023507) lt!1023632)))

(declare-fun bm!189970 () Bool)

(assert (=> bm!189970 (= call!189975 (exists!1217 (ite c!474488 lt!1023630 lt!1023631) (ite c!474488 lambda!108010 lambda!108011)))))

(declare-fun bm!189971 () Bool)

(assert (=> bm!189971 (= call!189976 (toList!2041 lt!1023507))))

(assert (= (and d!837326 c!474488) b!2910243))

(assert (= (and d!837326 (not c!474488)) b!2910244))

(assert (= (or b!2910243 b!2910244) bm!189970))

(assert (= (or b!2910243 b!2910244) bm!189971))

(declare-fun m!3311731 () Bool)

(assert (=> bm!189970 m!3311731))

(declare-fun m!3311733 () Bool)

(assert (=> bm!189971 m!3311733))

(declare-fun m!3311735 () Bool)

(assert (=> b!2910244 m!3311735))

(declare-fun m!3311737 () Bool)

(assert (=> b!2910243 m!3311737))

(declare-fun m!3311739 () Bool)

(assert (=> d!837326 m!3311739))

(assert (=> d!837326 m!3311739))

(declare-fun m!3311741 () Bool)

(assert (=> d!837326 m!3311741))

(declare-fun m!3311743 () Bool)

(assert (=> d!837326 m!3311743))

(assert (=> d!837326 m!3311743))

(assert (=> b!2909942 d!837326))

(declare-fun d!837328 () Bool)

(declare-fun lt!1023636 () C!18062)

(assert (=> d!837328 (contains!6130 (tail!4681 lt!1023500) lt!1023636)))

(declare-fun e!1836968 () C!18062)

(assert (=> d!837328 (= lt!1023636 e!1836968)))

(declare-fun c!474489 () Bool)

(assert (=> d!837328 (= c!474489 (= (- i!1878 1) 0))))

(declare-fun e!1836967 () Bool)

(assert (=> d!837328 e!1836967))

(declare-fun res!1201450 () Bool)

(assert (=> d!837328 (=> (not res!1201450) (not e!1836967))))

(assert (=> d!837328 (= res!1201450 (<= 0 (- i!1878 1)))))

(assert (=> d!837328 (= (apply!7906 (tail!4681 lt!1023500) (- i!1878 1)) lt!1023636)))

(declare-fun b!2910245 () Bool)

(assert (=> b!2910245 (= e!1836967 (< (- i!1878 1) (size!26413 (tail!4681 lt!1023500))))))

(declare-fun b!2910246 () Bool)

(assert (=> b!2910246 (= e!1836968 (head!6456 (tail!4681 lt!1023500)))))

(declare-fun b!2910247 () Bool)

(assert (=> b!2910247 (= e!1836968 (apply!7906 (tail!4681 (tail!4681 lt!1023500)) (- (- i!1878 1) 1)))))

(assert (= (and d!837328 res!1201450) b!2910245))

(assert (= (and d!837328 c!474489) b!2910246))

(assert (= (and d!837328 (not c!474489)) b!2910247))

(assert (=> d!837328 m!3311451))

(declare-fun m!3311745 () Bool)

(assert (=> d!837328 m!3311745))

(assert (=> b!2910245 m!3311451))

(declare-fun m!3311747 () Bool)

(assert (=> b!2910245 m!3311747))

(assert (=> b!2910246 m!3311451))

(declare-fun m!3311749 () Bool)

(assert (=> b!2910246 m!3311749))

(assert (=> b!2910247 m!3311451))

(declare-fun m!3311751 () Bool)

(assert (=> b!2910247 m!3311751))

(assert (=> b!2910247 m!3311751))

(declare-fun m!3311753 () Bool)

(assert (=> b!2910247 m!3311753))

(assert (=> b!2909952 d!837328))

(declare-fun d!837330 () Bool)

(assert (=> d!837330 (= (tail!4681 lt!1023500) (t!233844 lt!1023500))))

(assert (=> b!2909952 d!837330))

(declare-fun bs!524450 () Bool)

(declare-fun d!837332 () Bool)

(assert (= bs!524450 (and d!837332 d!837212)))

(declare-fun lambda!108012 () Int)

(assert (=> bs!524450 (= lambda!108012 lambda!107988)))

(assert (=> d!837332 (= (inv!46830 setElem!25902) (forall!7130 (exprs!3260 setElem!25902) lambda!108012))))

(declare-fun bs!524451 () Bool)

(assert (= bs!524451 d!837332))

(declare-fun m!3311755 () Bool)

(assert (=> bs!524451 m!3311755))

(assert (=> setNonEmpty!25902 d!837332))

(declare-fun d!837334 () Bool)

(assert (=> d!837334 (= (isEmpty!18918 lt!1023503) (is-Nil!34667 lt!1023503))))

(assert (=> d!837172 d!837334))

(declare-fun d!837336 () Bool)

(declare-fun c!474490 () Bool)

(assert (=> d!837336 (= c!474490 (= (+ 1 i!1878 1) (size!26411 input!3770)))))

(declare-fun e!1836969 () Bool)

(assert (=> d!837336 (= (prefixMatchZipperSequence!780 (derivationStepZipper!520 lt!1023507 (apply!7907 input!3770 (+ 1 i!1878))) input!3770 (+ 1 i!1878 1)) e!1836969)))

(declare-fun b!2910248 () Bool)

(assert (=> b!2910248 (= e!1836969 (not (lostCauseZipper!613 (derivationStepZipper!520 lt!1023507 (apply!7907 input!3770 (+ 1 i!1878))))))))

(declare-fun b!2910249 () Bool)

(assert (=> b!2910249 (= e!1836969 (prefixMatchZipperSequence!780 (derivationStepZipper!520 (derivationStepZipper!520 lt!1023507 (apply!7907 input!3770 (+ 1 i!1878))) (apply!7907 input!3770 (+ 1 i!1878 1))) input!3770 (+ 1 i!1878 1 1)))))

(assert (= (and d!837336 c!474490) b!2910248))

(assert (= (and d!837336 (not c!474490)) b!2910249))

(assert (=> d!837336 m!3311299))

(assert (=> b!2910248 m!3311457))

(declare-fun m!3311757 () Bool)

(assert (=> b!2910248 m!3311757))

(declare-fun m!3311759 () Bool)

(assert (=> b!2910249 m!3311759))

(assert (=> b!2910249 m!3311457))

(assert (=> b!2910249 m!3311759))

(declare-fun m!3311761 () Bool)

(assert (=> b!2910249 m!3311761))

(assert (=> b!2910249 m!3311761))

(declare-fun m!3311763 () Bool)

(assert (=> b!2910249 m!3311763))

(assert (=> b!2909954 d!837336))

(declare-fun bs!524452 () Bool)

(declare-fun d!837338 () Bool)

(assert (= bs!524452 (and d!837338 d!837188)))

(declare-fun lambda!108013 () Int)

(assert (=> bs!524452 (= (= (apply!7907 input!3770 (+ 1 i!1878)) lt!1023502) (= lambda!108013 lambda!107982))))

(declare-fun bs!524453 () Bool)

(assert (= bs!524453 (and d!837338 d!837268)))

(assert (=> bs!524453 (= (= (apply!7907 input!3770 (+ 1 i!1878)) (apply!7907 input!3770 i!1878)) (= lambda!108013 lambda!107992))))

(declare-fun bs!524454 () Bool)

(assert (= bs!524454 (and d!837338 d!837304)))

(assert (=> bs!524454 (= (= (apply!7907 input!3770 (+ 1 i!1878)) (head!6456 lt!1023504)) (= lambda!108013 lambda!108008))))

(assert (=> d!837338 true))

(assert (=> d!837338 (= (derivationStepZipper!520 lt!1023507 (apply!7907 input!3770 (+ 1 i!1878))) (flatMap!247 lt!1023507 lambda!108013))))

(declare-fun bs!524455 () Bool)

(assert (= bs!524455 d!837338))

(declare-fun m!3311765 () Bool)

(assert (=> bs!524455 m!3311765))

(assert (=> b!2909954 d!837338))

(declare-fun d!837340 () Bool)

(declare-fun lt!1023637 () C!18062)

(assert (=> d!837340 (= lt!1023637 (apply!7906 (list!12611 input!3770) (+ 1 i!1878)))))

(assert (=> d!837340 (= lt!1023637 (apply!7910 (c!474361 input!3770) (+ 1 i!1878)))))

(declare-fun e!1836970 () Bool)

(assert (=> d!837340 e!1836970))

(declare-fun res!1201451 () Bool)

(assert (=> d!837340 (=> (not res!1201451) (not e!1836970))))

(assert (=> d!837340 (= res!1201451 (<= 0 (+ 1 i!1878)))))

(assert (=> d!837340 (= (apply!7907 input!3770 (+ 1 i!1878)) lt!1023637)))

(declare-fun b!2910250 () Bool)

(assert (=> b!2910250 (= e!1836970 (< (+ 1 i!1878) (size!26411 input!3770)))))

(assert (= (and d!837340 res!1201451) b!2910250))

(assert (=> d!837340 m!3311317))

(assert (=> d!837340 m!3311317))

(declare-fun m!3311767 () Bool)

(assert (=> d!837340 m!3311767))

(declare-fun m!3311769 () Bool)

(assert (=> d!837340 m!3311769))

(assert (=> b!2910250 m!3311299))

(assert (=> b!2909954 d!837340))

(assert (=> b!2909887 d!837278))

(declare-fun d!837342 () Bool)

(declare-fun lt!1023640 () Bool)

(assert (=> d!837342 (= lt!1023640 (set.member lt!1023555 (content!4741 lt!1023500)))))

(declare-fun e!1836976 () Bool)

(assert (=> d!837342 (= lt!1023640 e!1836976)))

(declare-fun res!1201456 () Bool)

(assert (=> d!837342 (=> (not res!1201456) (not e!1836976))))

(assert (=> d!837342 (= res!1201456 (is-Cons!34667 lt!1023500))))

(assert (=> d!837342 (= (contains!6130 lt!1023500 lt!1023555) lt!1023640)))

(declare-fun b!2910255 () Bool)

(declare-fun e!1836975 () Bool)

(assert (=> b!2910255 (= e!1836976 e!1836975)))

(declare-fun res!1201457 () Bool)

(assert (=> b!2910255 (=> res!1201457 e!1836975)))

(assert (=> b!2910255 (= res!1201457 (= (h!40087 lt!1023500) lt!1023555))))

(declare-fun b!2910256 () Bool)

(assert (=> b!2910256 (= e!1836975 (contains!6130 (t!233844 lt!1023500) lt!1023555))))

(assert (= (and d!837342 res!1201456) b!2910255))

(assert (= (and b!2910255 (not res!1201457)) b!2910256))

(assert (=> d!837342 m!3311413))

(declare-fun m!3311771 () Bool)

(assert (=> d!837342 m!3311771))

(declare-fun m!3311773 () Bool)

(assert (=> b!2910256 m!3311773))

(assert (=> d!837202 d!837342))

(declare-fun d!837344 () Bool)

(declare-fun lt!1023641 () Int)

(assert (=> d!837344 (>= lt!1023641 0)))

(declare-fun e!1836977 () Int)

(assert (=> d!837344 (= lt!1023641 e!1836977)))

(declare-fun c!474491 () Bool)

(assert (=> d!837344 (= c!474491 (is-Nil!34667 lt!1023549))))

(assert (=> d!837344 (= (size!26413 lt!1023549) lt!1023641)))

(declare-fun b!2910257 () Bool)

(assert (=> b!2910257 (= e!1836977 0)))

(declare-fun b!2910258 () Bool)

(assert (=> b!2910258 (= e!1836977 (+ 1 (size!26413 (t!233844 lt!1023549))))))

(assert (= (and d!837344 c!474491) b!2910257))

(assert (= (and d!837344 (not c!474491)) b!2910258))

(declare-fun m!3311775 () Bool)

(assert (=> b!2910258 m!3311775))

(assert (=> b!2909930 d!837344))

(assert (=> b!2909953 d!837326))

(declare-fun d!837346 () Bool)

(declare-fun c!474492 () Bool)

(assert (=> d!837346 (= c!474492 (isEmpty!18918 (dropList!1041 input!3770 (+ 1 i!1878))))))

(declare-fun e!1836978 () Bool)

(assert (=> d!837346 (= (prefixMatchZipper!376 lt!1023507 (dropList!1041 input!3770 (+ 1 i!1878))) e!1836978)))

(declare-fun b!2910259 () Bool)

(assert (=> b!2910259 (= e!1836978 (not (lostCauseZipper!613 lt!1023507)))))

(declare-fun b!2910260 () Bool)

(assert (=> b!2910260 (= e!1836978 (prefixMatchZipper!376 (derivationStepZipper!520 lt!1023507 (head!6456 (dropList!1041 input!3770 (+ 1 i!1878)))) (tail!4681 (dropList!1041 input!3770 (+ 1 i!1878)))))))

(assert (= (and d!837346 c!474492) b!2910259))

(assert (= (and d!837346 (not c!474492)) b!2910260))

(assert (=> d!837346 m!3311331))

(declare-fun m!3311777 () Bool)

(assert (=> d!837346 m!3311777))

(assert (=> b!2910259 m!3311437))

(assert (=> b!2910260 m!3311331))

(declare-fun m!3311779 () Bool)

(assert (=> b!2910260 m!3311779))

(assert (=> b!2910260 m!3311779))

(declare-fun m!3311781 () Bool)

(assert (=> b!2910260 m!3311781))

(assert (=> b!2910260 m!3311331))

(declare-fun m!3311783 () Bool)

(assert (=> b!2910260 m!3311783))

(assert (=> b!2910260 m!3311781))

(assert (=> b!2910260 m!3311783))

(declare-fun m!3311785 () Bool)

(assert (=> b!2910260 m!3311785))

(assert (=> d!837198 d!837346))

(assert (=> d!837198 d!837178))

(assert (=> d!837198 d!837204))

(declare-fun d!837348 () Bool)

(assert (=> d!837348 (= (prefixMatchZipper!376 lt!1023507 (dropList!1041 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!780 lt!1023507 input!3770 (+ 1 i!1878)))))

(assert (=> d!837348 true))

(declare-fun _$29!439 () Unit!48215)

(assert (=> d!837348 (= (choose!17107 lt!1023507 input!3770 (+ 1 i!1878)) _$29!439)))

(declare-fun bs!524456 () Bool)

(assert (= bs!524456 d!837348))

(assert (=> bs!524456 m!3311331))

(assert (=> bs!524456 m!3311331))

(assert (=> bs!524456 m!3311431))

(assert (=> bs!524456 m!3311309))

(assert (=> d!837198 d!837348))

(declare-fun d!837350 () Bool)

(declare-fun c!474493 () Bool)

(assert (=> d!837350 (= c!474493 (is-Node!10515 (left!26040 (c!474361 input!3770))))))

(declare-fun e!1836979 () Bool)

(assert (=> d!837350 (= (inv!46828 (left!26040 (c!474361 input!3770))) e!1836979)))

(declare-fun b!2910261 () Bool)

(assert (=> b!2910261 (= e!1836979 (inv!46834 (left!26040 (c!474361 input!3770))))))

(declare-fun b!2910262 () Bool)

(declare-fun e!1836980 () Bool)

(assert (=> b!2910262 (= e!1836979 e!1836980)))

(declare-fun res!1201458 () Bool)

(assert (=> b!2910262 (= res!1201458 (not (is-Leaf!16209 (left!26040 (c!474361 input!3770)))))))

(assert (=> b!2910262 (=> res!1201458 e!1836980)))

(declare-fun b!2910263 () Bool)

(assert (=> b!2910263 (= e!1836980 (inv!46835 (left!26040 (c!474361 input!3770))))))

(assert (= (and d!837350 c!474493) b!2910261))

(assert (= (and d!837350 (not c!474493)) b!2910262))

(assert (= (and b!2910262 (not res!1201458)) b!2910263))

(declare-fun m!3311787 () Bool)

(assert (=> b!2910261 m!3311787))

(declare-fun m!3311789 () Bool)

(assert (=> b!2910263 m!3311789))

(assert (=> b!2909996 d!837350))

(declare-fun d!837352 () Bool)

(declare-fun c!474494 () Bool)

(assert (=> d!837352 (= c!474494 (is-Node!10515 (right!26370 (c!474361 input!3770))))))

(declare-fun e!1836981 () Bool)

(assert (=> d!837352 (= (inv!46828 (right!26370 (c!474361 input!3770))) e!1836981)))

(declare-fun b!2910264 () Bool)

(assert (=> b!2910264 (= e!1836981 (inv!46834 (right!26370 (c!474361 input!3770))))))

(declare-fun b!2910265 () Bool)

(declare-fun e!1836982 () Bool)

(assert (=> b!2910265 (= e!1836981 e!1836982)))

(declare-fun res!1201459 () Bool)

(assert (=> b!2910265 (= res!1201459 (not (is-Leaf!16209 (right!26370 (c!474361 input!3770)))))))

(assert (=> b!2910265 (=> res!1201459 e!1836982)))

(declare-fun b!2910266 () Bool)

(assert (=> b!2910266 (= e!1836982 (inv!46835 (right!26370 (c!474361 input!3770))))))

(assert (= (and d!837352 c!474494) b!2910264))

(assert (= (and d!837352 (not c!474494)) b!2910265))

(assert (= (and b!2910265 (not res!1201459)) b!2910266))

(declare-fun m!3311791 () Bool)

(assert (=> b!2910264 m!3311791))

(declare-fun m!3311793 () Bool)

(assert (=> b!2910266 m!3311793))

(assert (=> b!2909996 d!837352))

(assert (=> b!2909929 d!837292))

(assert (=> b!2909897 d!837210))

(declare-fun d!837354 () Bool)

(declare-fun c!474495 () Bool)

(assert (=> d!837354 (= c!474495 (isEmpty!18918 (tail!4681 lt!1023503)))))

(declare-fun e!1836983 () Bool)

(assert (=> d!837354 (= (prefixMatchZipper!376 (derivationStepZipper!520 z!644 (head!6456 lt!1023503)) (tail!4681 lt!1023503)) e!1836983)))

(declare-fun b!2910267 () Bool)

(assert (=> b!2910267 (= e!1836983 (not (lostCauseZipper!613 (derivationStepZipper!520 z!644 (head!6456 lt!1023503)))))))

(declare-fun b!2910268 () Bool)

(assert (=> b!2910268 (= e!1836983 (prefixMatchZipper!376 (derivationStepZipper!520 (derivationStepZipper!520 z!644 (head!6456 lt!1023503)) (head!6456 (tail!4681 lt!1023503))) (tail!4681 (tail!4681 lt!1023503))))))

(assert (= (and d!837354 c!474495) b!2910267))

(assert (= (and d!837354 (not c!474495)) b!2910268))

(assert (=> d!837354 m!3311391))

(declare-fun m!3311795 () Bool)

(assert (=> d!837354 m!3311795))

(assert (=> b!2910267 m!3311389))

(declare-fun m!3311797 () Bool)

(assert (=> b!2910267 m!3311797))

(assert (=> b!2910268 m!3311391))

(declare-fun m!3311799 () Bool)

(assert (=> b!2910268 m!3311799))

(assert (=> b!2910268 m!3311389))

(assert (=> b!2910268 m!3311799))

(declare-fun m!3311801 () Bool)

(assert (=> b!2910268 m!3311801))

(assert (=> b!2910268 m!3311391))

(declare-fun m!3311803 () Bool)

(assert (=> b!2910268 m!3311803))

(assert (=> b!2910268 m!3311801))

(assert (=> b!2910268 m!3311803))

(declare-fun m!3311805 () Bool)

(assert (=> b!2910268 m!3311805))

(assert (=> b!2909888 d!837354))

(declare-fun bs!524457 () Bool)

(declare-fun d!837356 () Bool)

(assert (= bs!524457 (and d!837356 d!837188)))

(declare-fun lambda!108014 () Int)

(assert (=> bs!524457 (= (= (head!6456 lt!1023503) lt!1023502) (= lambda!108014 lambda!107982))))

(declare-fun bs!524458 () Bool)

(assert (= bs!524458 (and d!837356 d!837268)))

(assert (=> bs!524458 (= (= (head!6456 lt!1023503) (apply!7907 input!3770 i!1878)) (= lambda!108014 lambda!107992))))

(declare-fun bs!524459 () Bool)

(assert (= bs!524459 (and d!837356 d!837304)))

(assert (=> bs!524459 (= (= (head!6456 lt!1023503) (head!6456 lt!1023504)) (= lambda!108014 lambda!108008))))

(declare-fun bs!524460 () Bool)

(assert (= bs!524460 (and d!837356 d!837338)))

(assert (=> bs!524460 (= (= (head!6456 lt!1023503) (apply!7907 input!3770 (+ 1 i!1878))) (= lambda!108014 lambda!108013))))

(assert (=> d!837356 true))

(assert (=> d!837356 (= (derivationStepZipper!520 z!644 (head!6456 lt!1023503)) (flatMap!247 z!644 lambda!108014))))

(declare-fun bs!524461 () Bool)

(assert (= bs!524461 d!837356))

(declare-fun m!3311807 () Bool)

(assert (=> bs!524461 m!3311807))

(assert (=> b!2909888 d!837356))

(declare-fun d!837358 () Bool)

(assert (=> d!837358 (= (head!6456 lt!1023503) (h!40087 lt!1023503))))

(assert (=> b!2909888 d!837358))

(declare-fun d!837360 () Bool)

(assert (=> d!837360 (= (tail!4681 lt!1023503) (t!233844 lt!1023503))))

(assert (=> b!2909888 d!837360))

(assert (=> bm!189951 d!837292))

(declare-fun d!837362 () Bool)

(declare-fun choose!17113 ((Set Context!5520) Int) (Set Context!5520))

(assert (=> d!837362 (= (flatMap!247 z!644 lambda!107982) (choose!17113 z!644 lambda!107982))))

(declare-fun bs!524462 () Bool)

(assert (= bs!524462 d!837362))

(declare-fun m!3311809 () Bool)

(assert (=> bs!524462 m!3311809))

(assert (=> d!837188 d!837362))

(declare-fun b!2910279 () Bool)

(declare-fun e!1836986 () Bool)

(declare-fun tp_is_empty!15447 () Bool)

(assert (=> b!2910279 (= e!1836986 tp_is_empty!15447)))

(assert (=> b!2909982 (= tp!934992 e!1836986)))

(declare-fun b!2910280 () Bool)

(declare-fun tp!935041 () Bool)

(declare-fun tp!935044 () Bool)

(assert (=> b!2910280 (= e!1836986 (and tp!935041 tp!935044))))

(declare-fun b!2910282 () Bool)

(declare-fun tp!935043 () Bool)

(declare-fun tp!935040 () Bool)

(assert (=> b!2910282 (= e!1836986 (and tp!935043 tp!935040))))

(declare-fun b!2910281 () Bool)

(declare-fun tp!935042 () Bool)

(assert (=> b!2910281 (= e!1836986 tp!935042)))

(assert (= (and b!2909982 (is-ElementMatch!8940 (h!40088 (exprs!3260 setElem!25896)))) b!2910279))

(assert (= (and b!2909982 (is-Concat!14261 (h!40088 (exprs!3260 setElem!25896)))) b!2910280))

(assert (= (and b!2909982 (is-Star!8940 (h!40088 (exprs!3260 setElem!25896)))) b!2910281))

(assert (= (and b!2909982 (is-Union!8940 (h!40088 (exprs!3260 setElem!25896)))) b!2910282))

(declare-fun b!2910283 () Bool)

(declare-fun e!1836987 () Bool)

(declare-fun tp!935045 () Bool)

(declare-fun tp!935046 () Bool)

(assert (=> b!2910283 (= e!1836987 (and tp!935045 tp!935046))))

(assert (=> b!2909982 (= tp!934993 e!1836987)))

(assert (= (and b!2909982 (is-Cons!34668 (t!233845 (exprs!3260 setElem!25896)))) b!2910283))

(declare-fun b!2910288 () Bool)

(declare-fun e!1836990 () Bool)

(declare-fun tp!935049 () Bool)

(assert (=> b!2910288 (= e!1836990 (and tp_is_empty!15447 tp!935049))))

(assert (=> b!2909998 (= tp!935006 e!1836990)))

(assert (= (and b!2909998 (is-Cons!34667 (innerList!10575 (xs!13633 (c!474361 input!3770))))) b!2910288))

(declare-fun tp!935052 () Bool)

(declare-fun e!1836991 () Bool)

(declare-fun tp!935051 () Bool)

(declare-fun b!2910289 () Bool)

(assert (=> b!2910289 (= e!1836991 (and (inv!46828 (left!26040 (left!26040 (c!474361 input!3770)))) tp!935052 (inv!46828 (right!26370 (left!26040 (c!474361 input!3770)))) tp!935051))))

(declare-fun b!2910291 () Bool)

(declare-fun e!1836992 () Bool)

(declare-fun tp!935050 () Bool)

(assert (=> b!2910291 (= e!1836992 tp!935050)))

(declare-fun b!2910290 () Bool)

(assert (=> b!2910290 (= e!1836991 (and (inv!46836 (xs!13633 (left!26040 (c!474361 input!3770)))) e!1836992))))

(assert (=> b!2909996 (= tp!935008 (and (inv!46828 (left!26040 (c!474361 input!3770))) e!1836991))))

(assert (= (and b!2909996 (is-Node!10515 (left!26040 (c!474361 input!3770)))) b!2910289))

(assert (= b!2910290 b!2910291))

(assert (= (and b!2909996 (is-Leaf!16209 (left!26040 (c!474361 input!3770)))) b!2910290))

(declare-fun m!3311811 () Bool)

(assert (=> b!2910289 m!3311811))

(declare-fun m!3311813 () Bool)

(assert (=> b!2910289 m!3311813))

(declare-fun m!3311815 () Bool)

(assert (=> b!2910290 m!3311815))

(assert (=> b!2909996 m!3311495))

(declare-fun b!2910292 () Bool)

(declare-fun tp!935054 () Bool)

(declare-fun e!1836993 () Bool)

(declare-fun tp!935055 () Bool)

(assert (=> b!2910292 (= e!1836993 (and (inv!46828 (left!26040 (right!26370 (c!474361 input!3770)))) tp!935055 (inv!46828 (right!26370 (right!26370 (c!474361 input!3770)))) tp!935054))))

(declare-fun b!2910294 () Bool)

(declare-fun e!1836994 () Bool)

(declare-fun tp!935053 () Bool)

(assert (=> b!2910294 (= e!1836994 tp!935053)))

(declare-fun b!2910293 () Bool)

(assert (=> b!2910293 (= e!1836993 (and (inv!46836 (xs!13633 (right!26370 (c!474361 input!3770)))) e!1836994))))

(assert (=> b!2909996 (= tp!935007 (and (inv!46828 (right!26370 (c!474361 input!3770))) e!1836993))))

(assert (= (and b!2909996 (is-Node!10515 (right!26370 (c!474361 input!3770)))) b!2910292))

(assert (= b!2910293 b!2910294))

(assert (= (and b!2909996 (is-Leaf!16209 (right!26370 (c!474361 input!3770)))) b!2910293))

(declare-fun m!3311817 () Bool)

(assert (=> b!2910292 m!3311817))

(declare-fun m!3311819 () Bool)

(assert (=> b!2910292 m!3311819))

(declare-fun m!3311821 () Bool)

(assert (=> b!2910293 m!3311821))

(assert (=> b!2909996 m!3311497))

(declare-fun b!2910295 () Bool)

(declare-fun e!1836995 () Bool)

(declare-fun tp!935056 () Bool)

(declare-fun tp!935057 () Bool)

(assert (=> b!2910295 (= e!1836995 (and tp!935056 tp!935057))))

(assert (=> b!2909987 (= tp!934998 e!1836995)))

(assert (= (and b!2909987 (is-Cons!34668 (exprs!3260 setElem!25902))) b!2910295))

(declare-fun condSetEmpty!25906 () Bool)

(assert (=> setNonEmpty!25902 (= condSetEmpty!25906 (= setRest!25902 (as set.empty (Set Context!5520))))))

(declare-fun setRes!25906 () Bool)

(assert (=> setNonEmpty!25902 (= tp!934999 setRes!25906)))

(declare-fun setIsEmpty!25906 () Bool)

(assert (=> setIsEmpty!25906 setRes!25906))

(declare-fun tp!935059 () Bool)

(declare-fun setElem!25906 () Context!5520)

(declare-fun setNonEmpty!25906 () Bool)

(declare-fun e!1836996 () Bool)

(assert (=> setNonEmpty!25906 (= setRes!25906 (and tp!935059 (inv!46830 setElem!25906) e!1836996))))

(declare-fun setRest!25906 () (Set Context!5520))

(assert (=> setNonEmpty!25906 (= setRest!25902 (set.union (set.insert setElem!25906 (as set.empty (Set Context!5520))) setRest!25906))))

(declare-fun b!2910296 () Bool)

(declare-fun tp!935058 () Bool)

(assert (=> b!2910296 (= e!1836996 tp!935058)))

(assert (= (and setNonEmpty!25902 condSetEmpty!25906) setIsEmpty!25906))

(assert (= (and setNonEmpty!25902 (not condSetEmpty!25906)) setNonEmpty!25906))

(assert (= setNonEmpty!25906 b!2910296))

(declare-fun m!3311823 () Bool)

(assert (=> setNonEmpty!25906 m!3311823))

(declare-fun b_lambda!86369 () Bool)

(assert (= b_lambda!86367 (or d!837212 b_lambda!86369)))

(declare-fun bs!524463 () Bool)

(declare-fun d!837364 () Bool)

(assert (= bs!524463 (and d!837364 d!837212)))

(declare-fun validRegex!3680 (Regex!8940) Bool)

(assert (=> bs!524463 (= (dynLambda!14353 lambda!107988 (h!40088 (exprs!3260 setElem!25896))) (validRegex!3680 (h!40088 (exprs!3260 setElem!25896))))))

(declare-fun m!3311825 () Bool)

(assert (=> bs!524463 m!3311825))

(assert (=> b!2910166 d!837364))

(push 1)

(assert (not b!2910243))

(assert (not bm!189956))

(assert (not d!837362))

(assert (not b!2910249))

(assert (not b!2910237))

(assert (not d!837342))

(assert (not d!837268))

(assert (not b!2910283))

(assert (not d!837294))

(assert (not d!837356))

(assert (not b!2910112))

(assert (not b!2910167))

(assert (not b!2910263))

(assert (not b!2910239))

(assert (not bs!524463))

(assert (not b!2910295))

(assert (not d!837318))

(assert (not d!837354))

(assert (not d!837340))

(assert (not b!2910247))

(assert (not b!2910124))

(assert (not b!2910134))

(assert (not b!2910219))

(assert (not b!2910132))

(assert (not d!837320))

(assert (not b!2910173))

(assert (not b!2910288))

(assert (not b!2910236))

(assert (not d!837332))

(assert (not b!2910179))

(assert (not b!2910248))

(assert (not b!2910260))

(assert (not d!837288))

(assert (not bm!189966))

(assert (not bm!189962))

(assert (not b!2910189))

(assert (not d!837336))

(assert (not b!2910093))

(assert (not d!837282))

(assert (not d!837322))

(assert (not b!2910182))

(assert (not d!837316))

(assert (not b!2910281))

(assert (not b!2910123))

(assert (not d!837278))

(assert (not d!837276))

(assert (not d!837260))

(assert (not b!2910280))

(assert (not b!2910250))

(assert (not b!2910282))

(assert (not b!2910291))

(assert (not d!837286))

(assert tp_is_empty!15447)

(assert (not b!2910114))

(assert (not b!2910155))

(assert (not b!2910188))

(assert (not b!2910261))

(assert (not d!837328))

(assert (not b!2910293))

(assert (not d!837326))

(assert (not b!2910113))

(assert (not b!2910207))

(assert (not b!2910246))

(assert (not b!2910204))

(assert (not b!2910292))

(assert (not b!2910217))

(assert (not b!2910256))

(assert (not b!2910142))

(assert (not b!2910170))

(assert (not b!2910149))

(assert (not d!837346))

(assert (not b!2910296))

(assert (not b!2910264))

(assert (not b!2910160))

(assert (not bm!189970))

(assert (not b!2910245))

(assert (not bm!189969))

(assert (not b!2910244))

(assert (not b!2910234))

(assert (not b!2909996))

(assert (not b!2910294))

(assert (not b!2910267))

(assert (not b!2910258))

(assert (not b!2910203))

(assert (not bm!189957))

(assert (not b!2910208))

(assert (not b!2910202))

(assert (not b!2910130))

(assert (not b!2910117))

(assert (not b_lambda!86369))

(assert (not d!837304))

(assert (not bm!189964))

(assert (not b!2910290))

(assert (not b!2910242))

(assert (not d!837300))

(assert (not d!837266))

(assert (not setNonEmpty!25906))

(assert (not d!837298))

(assert (not b!2910259))

(assert (not bm!189963))

(assert (not d!837264))

(assert (not b!2910206))

(assert (not b!2910096))

(assert (not b!2910169))

(assert (not b!2910268))

(assert (not d!837302))

(assert (not b!2910205))

(assert (not d!837348))

(assert (not b!2910266))

(assert (not b!2910211))

(assert (not bm!189971))

(assert (not bm!189965))

(assert (not b!2910289))

(assert (not d!837338))

(assert (not b!2910218))

(assert (not b!2910148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

