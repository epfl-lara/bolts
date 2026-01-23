; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214498 () Bool)

(assert start!214498)

(declare-fun b!2205953 () Bool)

(declare-fun res!948255 () Bool)

(declare-fun e!1409285 () Bool)

(assert (=> b!2205953 (=> (not res!948255) (not e!1409285))))

(declare-fun e!1409289 () Bool)

(assert (=> b!2205953 (= res!948255 e!1409289)))

(declare-fun res!948252 () Bool)

(assert (=> b!2205953 (=> res!948252 e!1409289)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12696 0))(
  ( (C!12697 (val!7334 Int)) )
))
(declare-datatypes ((Regex!6275 0))(
  ( (ElementMatch!6275 (c!352276 C!12696)) (Concat!10577 (regOne!13062 Regex!6275) (regTwo!13062 Regex!6275)) (EmptyExpr!6275) (Star!6275 (reg!6604 Regex!6275)) (EmptyLang!6275) (Union!6275 (regOne!13063 Regex!6275) (regTwo!13063 Regex!6275)) )
))
(declare-datatypes ((List!25854 0))(
  ( (Nil!25770) (Cons!25770 (h!31171 Regex!6275) (t!198498 List!25854)) )
))
(declare-datatypes ((Context!3690 0))(
  ( (Context!3691 (exprs!2345 List!25854)) )
))
(declare-fun z!3888 () (InoxSet Context!3690))

(declare-fun nullableZipper!555 ((InoxSet Context!3690)) Bool)

(assert (=> b!2205953 (= res!948252 (not (nullableZipper!555 z!3888)))))

(declare-fun setIsEmpty!19194 () Bool)

(declare-fun setRes!19194 () Bool)

(assert (=> setIsEmpty!19194 setRes!19194))

(declare-fun b!2205954 () Bool)

(declare-fun res!948253 () Bool)

(assert (=> b!2205954 (=> (not res!948253) (not e!1409285))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2205954 (= res!948253 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205955 () Bool)

(declare-fun e!1409283 () Bool)

(declare-fun tp!685890 () Bool)

(assert (=> b!2205955 (= e!1409283 tp!685890)))

(declare-fun b!2205956 () Bool)

(declare-fun res!948254 () Bool)

(assert (=> b!2205956 (=> (not res!948254) (not e!1409285))))

(declare-fun lostCauseZipper!371 ((InoxSet Context!3690)) Bool)

(assert (=> b!2205956 (= res!948254 (not (lostCauseZipper!371 z!3888)))))

(declare-fun b!2205957 () Bool)

(declare-fun e!1409287 () Bool)

(declare-datatypes ((List!25855 0))(
  ( (Nil!25771) (Cons!25771 (h!31172 C!12696) (t!198499 List!25855)) )
))
(declare-datatypes ((IArray!16827 0))(
  ( (IArray!16828 (innerList!8471 List!25855)) )
))
(declare-datatypes ((Conc!8411 0))(
  ( (Node!8411 (left!19803 Conc!8411) (right!20133 Conc!8411) (csize!17052 Int) (cheight!8622 Int)) (Leaf!12316 (xs!11353 IArray!16827) (csize!17053 Int)) (Empty!8411) )
))
(declare-datatypes ((BalanceConc!16584 0))(
  ( (BalanceConc!16585 (c!352277 Conc!8411)) )
))
(declare-fun totalInput!891 () BalanceConc!16584)

(declare-fun tp!685888 () Bool)

(declare-fun inv!34753 (Conc!8411) Bool)

(assert (=> b!2205957 (= e!1409287 (and (inv!34753 (c!352277 totalInput!891)) tp!685888))))

(declare-fun b!2205958 () Bool)

(declare-fun e!1409284 () Int)

(assert (=> b!2205958 (= e!1409284 lastNullablePos!161)))

(declare-fun b!2205960 () Bool)

(declare-fun e!1409288 () Bool)

(declare-fun e!1409286 () Bool)

(assert (=> b!2205960 (= e!1409288 e!1409286)))

(declare-fun res!948250 () Bool)

(assert (=> b!2205960 (=> (not res!948250) (not e!1409286))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824878 () Int)

(assert (=> b!2205960 (= res!948250 (and (<= from!1082 lt!824878) (>= knownSize!10 0) (<= knownSize!10 (- lt!824878 from!1082))))))

(declare-fun size!20079 (BalanceConc!16584) Int)

(assert (=> b!2205960 (= lt!824878 (size!20079 totalInput!891))))

(declare-fun setElem!19194 () Context!3690)

(declare-fun tp!685889 () Bool)

(declare-fun setNonEmpty!19194 () Bool)

(declare-fun inv!34754 (Context!3690) Bool)

(assert (=> setNonEmpty!19194 (= setRes!19194 (and tp!685889 (inv!34754 setElem!19194) e!1409283))))

(declare-fun setRest!19194 () (InoxSet Context!3690))

(assert (=> setNonEmpty!19194 (= z!3888 ((_ map or) (store ((as const (Array Context!3690 Bool)) false) setElem!19194 true) setRest!19194))))

(declare-fun b!2205961 () Bool)

(declare-fun lt!824875 () List!25855)

(declare-fun size!20080 (List!25855) Int)

(assert (=> b!2205961 (= e!1409285 (>= from!1082 (size!20080 lt!824875)))))

(declare-fun lt!824877 () (InoxSet Context!3690))

(declare-fun lt!824876 () Int)

(declare-fun furthestNullablePosition!409 ((InoxSet Context!3690) Int BalanceConc!16584 Int Int) Int)

(assert (=> b!2205961 (= lt!824876 (furthestNullablePosition!409 lt!824877 (+ 1 from!1082) totalInput!891 lt!824878 e!1409284))))

(declare-fun c!352275 () Bool)

(assert (=> b!2205961 (= c!352275 (nullableZipper!555 lt!824877))))

(declare-fun derivationStepZipper!307 ((InoxSet Context!3690) C!12696) (InoxSet Context!3690))

(declare-fun apply!6349 (BalanceConc!16584 Int) C!12696)

(assert (=> b!2205961 (= lt!824877 (derivationStepZipper!307 z!3888 (apply!6349 totalInput!891 from!1082)))))

(declare-fun b!2205962 () Bool)

(assert (=> b!2205962 (= e!1409284 from!1082)))

(declare-fun b!2205963 () Bool)

(assert (=> b!2205963 (= e!1409289 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2205964 () Bool)

(declare-fun res!948251 () Bool)

(assert (=> b!2205964 (=> (not res!948251) (not e!1409285))))

(assert (=> b!2205964 (= res!948251 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824878))))))

(declare-fun b!2205965 () Bool)

(assert (=> b!2205965 (= e!1409286 e!1409285)))

(declare-fun res!948256 () Bool)

(assert (=> b!2205965 (=> (not res!948256) (not e!1409285))))

(declare-fun matchZipper!361 ((InoxSet Context!3690) List!25855) Bool)

(declare-fun take!453 (List!25855 Int) List!25855)

(declare-fun drop!1463 (List!25855 Int) List!25855)

(assert (=> b!2205965 (= res!948256 (matchZipper!361 z!3888 (take!453 (drop!1463 lt!824875 from!1082) knownSize!10)))))

(declare-fun list!9956 (BalanceConc!16584) List!25855)

(assert (=> b!2205965 (= lt!824875 (list!9956 totalInput!891))))

(declare-fun b!2205959 () Bool)

(declare-fun res!948249 () Bool)

(assert (=> b!2205959 (=> (not res!948249) (not e!1409285))))

(declare-fun isEmpty!14742 (BalanceConc!16584) Bool)

(assert (=> b!2205959 (= res!948249 (not (isEmpty!14742 totalInput!891)))))

(declare-fun res!948257 () Bool)

(assert (=> start!214498 (=> (not res!948257) (not e!1409288))))

(assert (=> start!214498 (= res!948257 (>= from!1082 0))))

(assert (=> start!214498 e!1409288))

(assert (=> start!214498 true))

(declare-fun inv!34755 (BalanceConc!16584) Bool)

(assert (=> start!214498 (and (inv!34755 totalInput!891) e!1409287)))

(declare-fun condSetEmpty!19194 () Bool)

(assert (=> start!214498 (= condSetEmpty!19194 (= z!3888 ((as const (Array Context!3690 Bool)) false)))))

(assert (=> start!214498 setRes!19194))

(assert (= (and start!214498 res!948257) b!2205960))

(assert (= (and b!2205960 res!948250) b!2205965))

(assert (= (and b!2205965 res!948256) b!2205954))

(assert (= (and b!2205954 res!948253) b!2205953))

(assert (= (and b!2205953 (not res!948252)) b!2205963))

(assert (= (and b!2205953 res!948255) b!2205959))

(assert (= (and b!2205959 res!948249) b!2205964))

(assert (= (and b!2205964 res!948251) b!2205956))

(assert (= (and b!2205956 res!948254) b!2205961))

(assert (= (and b!2205961 c!352275) b!2205962))

(assert (= (and b!2205961 (not c!352275)) b!2205958))

(assert (= start!214498 b!2205957))

(assert (= (and start!214498 condSetEmpty!19194) setIsEmpty!19194))

(assert (= (and start!214498 (not condSetEmpty!19194)) setNonEmpty!19194))

(assert (= setNonEmpty!19194 b!2205955))

(declare-fun m!2647683 () Bool)

(assert (=> b!2205965 m!2647683))

(assert (=> b!2205965 m!2647683))

(declare-fun m!2647685 () Bool)

(assert (=> b!2205965 m!2647685))

(assert (=> b!2205965 m!2647685))

(declare-fun m!2647687 () Bool)

(assert (=> b!2205965 m!2647687))

(declare-fun m!2647689 () Bool)

(assert (=> b!2205965 m!2647689))

(declare-fun m!2647691 () Bool)

(assert (=> b!2205960 m!2647691))

(declare-fun m!2647693 () Bool)

(assert (=> b!2205956 m!2647693))

(declare-fun m!2647695 () Bool)

(assert (=> b!2205953 m!2647695))

(declare-fun m!2647697 () Bool)

(assert (=> setNonEmpty!19194 m!2647697))

(declare-fun m!2647699 () Bool)

(assert (=> b!2205961 m!2647699))

(declare-fun m!2647701 () Bool)

(assert (=> b!2205961 m!2647701))

(declare-fun m!2647703 () Bool)

(assert (=> b!2205961 m!2647703))

(declare-fun m!2647705 () Bool)

(assert (=> b!2205961 m!2647705))

(declare-fun m!2647707 () Bool)

(assert (=> b!2205961 m!2647707))

(assert (=> b!2205961 m!2647701))

(declare-fun m!2647709 () Bool)

(assert (=> b!2205957 m!2647709))

(declare-fun m!2647711 () Bool)

(assert (=> start!214498 m!2647711))

(declare-fun m!2647713 () Bool)

(assert (=> b!2205959 m!2647713))

(check-sat (not start!214498) (not b!2205959) (not b!2205955) (not b!2205957) (not b!2205960) (not b!2205953) (not setNonEmpty!19194) (not b!2205956) (not b!2205965) (not b!2205961))
(check-sat)
(get-model)

(declare-fun d!659491 () Bool)

(declare-fun c!352280 () Bool)

(declare-fun isEmpty!14743 (List!25855) Bool)

(assert (=> d!659491 (= c!352280 (isEmpty!14743 (take!453 (drop!1463 lt!824875 from!1082) knownSize!10)))))

(declare-fun e!1409292 () Bool)

(assert (=> d!659491 (= (matchZipper!361 z!3888 (take!453 (drop!1463 lt!824875 from!1082) knownSize!10)) e!1409292)))

(declare-fun b!2205970 () Bool)

(assert (=> b!2205970 (= e!1409292 (nullableZipper!555 z!3888))))

(declare-fun b!2205971 () Bool)

(declare-fun head!4713 (List!25855) C!12696)

(declare-fun tail!3193 (List!25855) List!25855)

(assert (=> b!2205971 (= e!1409292 (matchZipper!361 (derivationStepZipper!307 z!3888 (head!4713 (take!453 (drop!1463 lt!824875 from!1082) knownSize!10))) (tail!3193 (take!453 (drop!1463 lt!824875 from!1082) knownSize!10))))))

(assert (= (and d!659491 c!352280) b!2205970))

(assert (= (and d!659491 (not c!352280)) b!2205971))

(assert (=> d!659491 m!2647685))

(declare-fun m!2647715 () Bool)

(assert (=> d!659491 m!2647715))

(assert (=> b!2205970 m!2647695))

(assert (=> b!2205971 m!2647685))

(declare-fun m!2647717 () Bool)

(assert (=> b!2205971 m!2647717))

(assert (=> b!2205971 m!2647717))

(declare-fun m!2647719 () Bool)

(assert (=> b!2205971 m!2647719))

(assert (=> b!2205971 m!2647685))

(declare-fun m!2647721 () Bool)

(assert (=> b!2205971 m!2647721))

(assert (=> b!2205971 m!2647719))

(assert (=> b!2205971 m!2647721))

(declare-fun m!2647723 () Bool)

(assert (=> b!2205971 m!2647723))

(assert (=> b!2205965 d!659491))

(declare-fun b!2205986 () Bool)

(declare-fun e!1409304 () Int)

(assert (=> b!2205986 (= e!1409304 knownSize!10)))

(declare-fun b!2205987 () Bool)

(declare-fun e!1409301 () List!25855)

(assert (=> b!2205987 (= e!1409301 Nil!25771)))

(declare-fun d!659493 () Bool)

(declare-fun e!1409302 () Bool)

(assert (=> d!659493 e!1409302))

(declare-fun res!948260 () Bool)

(assert (=> d!659493 (=> (not res!948260) (not e!1409302))))

(declare-fun lt!824881 () List!25855)

(declare-fun content!3500 (List!25855) (InoxSet C!12696))

(assert (=> d!659493 (= res!948260 (= ((_ map implies) (content!3500 lt!824881) (content!3500 (drop!1463 lt!824875 from!1082))) ((as const (InoxSet C!12696)) true)))))

(assert (=> d!659493 (= lt!824881 e!1409301)))

(declare-fun c!352289 () Bool)

(get-info :version)

(assert (=> d!659493 (= c!352289 (or ((_ is Nil!25771) (drop!1463 lt!824875 from!1082)) (<= knownSize!10 0)))))

(assert (=> d!659493 (= (take!453 (drop!1463 lt!824875 from!1082) knownSize!10) lt!824881)))

(declare-fun b!2205988 () Bool)

(declare-fun e!1409303 () Int)

(assert (=> b!2205988 (= e!1409303 0)))

(declare-fun b!2205989 () Bool)

(assert (=> b!2205989 (= e!1409304 (size!20080 (drop!1463 lt!824875 from!1082)))))

(declare-fun b!2205990 () Bool)

(assert (=> b!2205990 (= e!1409301 (Cons!25771 (h!31172 (drop!1463 lt!824875 from!1082)) (take!453 (t!198499 (drop!1463 lt!824875 from!1082)) (- knownSize!10 1))))))

(declare-fun b!2205991 () Bool)

(assert (=> b!2205991 (= e!1409302 (= (size!20080 lt!824881) e!1409303))))

(declare-fun c!352287 () Bool)

(assert (=> b!2205991 (= c!352287 (<= knownSize!10 0))))

(declare-fun b!2205992 () Bool)

(assert (=> b!2205992 (= e!1409303 e!1409304)))

(declare-fun c!352288 () Bool)

(assert (=> b!2205992 (= c!352288 (>= knownSize!10 (size!20080 (drop!1463 lt!824875 from!1082))))))

(assert (= (and d!659493 c!352289) b!2205987))

(assert (= (and d!659493 (not c!352289)) b!2205990))

(assert (= (and d!659493 res!948260) b!2205991))

(assert (= (and b!2205991 c!352287) b!2205988))

(assert (= (and b!2205991 (not c!352287)) b!2205992))

(assert (= (and b!2205992 c!352288) b!2205989))

(assert (= (and b!2205992 (not c!352288)) b!2205986))

(assert (=> b!2205989 m!2647683))

(declare-fun m!2647725 () Bool)

(assert (=> b!2205989 m!2647725))

(declare-fun m!2647727 () Bool)

(assert (=> b!2205990 m!2647727))

(declare-fun m!2647729 () Bool)

(assert (=> d!659493 m!2647729))

(assert (=> d!659493 m!2647683))

(declare-fun m!2647731 () Bool)

(assert (=> d!659493 m!2647731))

(declare-fun m!2647733 () Bool)

(assert (=> b!2205991 m!2647733))

(assert (=> b!2205992 m!2647683))

(assert (=> b!2205992 m!2647725))

(assert (=> b!2205965 d!659493))

(declare-fun bm!132242 () Bool)

(declare-fun call!132247 () Int)

(assert (=> bm!132242 (= call!132247 (size!20080 lt!824875))))

(declare-fun b!2206011 () Bool)

(declare-fun e!1409317 () List!25855)

(assert (=> b!2206011 (= e!1409317 Nil!25771)))

(declare-fun b!2206012 () Bool)

(declare-fun e!1409318 () Int)

(assert (=> b!2206012 (= e!1409318 call!132247)))

(declare-fun b!2206013 () Bool)

(declare-fun e!1409319 () Int)

(assert (=> b!2206013 (= e!1409319 0)))

(declare-fun b!2206014 () Bool)

(assert (=> b!2206014 (= e!1409318 e!1409319)))

(declare-fun c!352298 () Bool)

(assert (=> b!2206014 (= c!352298 (>= from!1082 call!132247))))

(declare-fun d!659497 () Bool)

(declare-fun e!1409316 () Bool)

(assert (=> d!659497 e!1409316))

(declare-fun res!948263 () Bool)

(assert (=> d!659497 (=> (not res!948263) (not e!1409316))))

(declare-fun lt!824884 () List!25855)

(assert (=> d!659497 (= res!948263 (= ((_ map implies) (content!3500 lt!824884) (content!3500 lt!824875)) ((as const (InoxSet C!12696)) true)))))

(assert (=> d!659497 (= lt!824884 e!1409317)))

(declare-fun c!352301 () Bool)

(assert (=> d!659497 (= c!352301 ((_ is Nil!25771) lt!824875))))

(assert (=> d!659497 (= (drop!1463 lt!824875 from!1082) lt!824884)))

(declare-fun b!2206015 () Bool)

(assert (=> b!2206015 (= e!1409319 (- call!132247 from!1082))))

(declare-fun b!2206016 () Bool)

(declare-fun e!1409315 () List!25855)

(assert (=> b!2206016 (= e!1409315 lt!824875)))

(declare-fun b!2206017 () Bool)

(assert (=> b!2206017 (= e!1409316 (= (size!20080 lt!824884) e!1409318))))

(declare-fun c!352299 () Bool)

(assert (=> b!2206017 (= c!352299 (<= from!1082 0))))

(declare-fun b!2206018 () Bool)

(assert (=> b!2206018 (= e!1409315 (drop!1463 (t!198499 lt!824875) (- from!1082 1)))))

(declare-fun b!2206019 () Bool)

(assert (=> b!2206019 (= e!1409317 e!1409315)))

(declare-fun c!352300 () Bool)

(assert (=> b!2206019 (= c!352300 (<= from!1082 0))))

(assert (= (and d!659497 c!352301) b!2206011))

(assert (= (and d!659497 (not c!352301)) b!2206019))

(assert (= (and b!2206019 c!352300) b!2206016))

(assert (= (and b!2206019 (not c!352300)) b!2206018))

(assert (= (and d!659497 res!948263) b!2206017))

(assert (= (and b!2206017 c!352299) b!2206012))

(assert (= (and b!2206017 (not c!352299)) b!2206014))

(assert (= (and b!2206014 c!352298) b!2206013))

(assert (= (and b!2206014 (not c!352298)) b!2206015))

(assert (= (or b!2206012 b!2206014 b!2206015) bm!132242))

(assert (=> bm!132242 m!2647705))

(declare-fun m!2647737 () Bool)

(assert (=> d!659497 m!2647737))

(declare-fun m!2647739 () Bool)

(assert (=> d!659497 m!2647739))

(declare-fun m!2647741 () Bool)

(assert (=> b!2206017 m!2647741))

(declare-fun m!2647743 () Bool)

(assert (=> b!2206018 m!2647743))

(assert (=> b!2205965 d!659497))

(declare-fun d!659501 () Bool)

(declare-fun list!9957 (Conc!8411) List!25855)

(assert (=> d!659501 (= (list!9956 totalInput!891) (list!9957 (c!352277 totalInput!891)))))

(declare-fun bs!451016 () Bool)

(assert (= bs!451016 d!659501))

(declare-fun m!2647745 () Bool)

(assert (=> bs!451016 m!2647745))

(assert (=> b!2205965 d!659501))

(declare-fun bs!451017 () Bool)

(declare-fun b!2206024 () Bool)

(declare-fun d!659503 () Bool)

(assert (= bs!451017 (and b!2206024 d!659503)))

(declare-fun lambda!83245 () Int)

(declare-fun lambda!83244 () Int)

(assert (=> bs!451017 (not (= lambda!83245 lambda!83244))))

(declare-fun bs!451018 () Bool)

(declare-fun b!2206025 () Bool)

(assert (= bs!451018 (and b!2206025 d!659503)))

(declare-fun lambda!83246 () Int)

(assert (=> bs!451018 (not (= lambda!83246 lambda!83244))))

(declare-fun bs!451019 () Bool)

(assert (= bs!451019 (and b!2206025 b!2206024)))

(assert (=> bs!451019 (= lambda!83246 lambda!83245)))

(declare-fun lt!824901 () Bool)

(declare-datatypes ((Option!5036 0))(
  ( (None!5035) (Some!5035 (v!29434 List!25855)) )
))
(declare-fun isEmpty!14744 (Option!5036) Bool)

(declare-fun getLanguageWitness!160 ((InoxSet Context!3690)) Option!5036)

(assert (=> d!659503 (= lt!824901 (isEmpty!14744 (getLanguageWitness!160 z!3888)))))

(declare-fun forall!5270 ((InoxSet Context!3690) Int) Bool)

(assert (=> d!659503 (= lt!824901 (forall!5270 z!3888 lambda!83244))))

(declare-datatypes ((Unit!38859 0))(
  ( (Unit!38860) )
))
(declare-fun lt!824907 () Unit!38859)

(declare-fun e!1409326 () Unit!38859)

(assert (=> d!659503 (= lt!824907 e!1409326)))

(declare-fun c!352312 () Bool)

(assert (=> d!659503 (= c!352312 (not (forall!5270 z!3888 lambda!83244)))))

(assert (=> d!659503 (= (lostCauseZipper!371 z!3888) lt!824901)))

(declare-fun bm!132248 () Bool)

(declare-datatypes ((List!25856 0))(
  ( (Nil!25772) (Cons!25772 (h!31173 Context!3690) (t!198500 List!25856)) )
))
(declare-fun call!132252 () List!25856)

(declare-fun toList!1274 ((InoxSet Context!3690)) List!25856)

(assert (=> bm!132248 (= call!132252 (toList!1274 z!3888))))

(declare-fun lt!824908 () List!25856)

(declare-fun bm!132247 () Bool)

(declare-fun call!132253 () Bool)

(declare-fun lt!824902 () List!25856)

(declare-fun exists!857 (List!25856 Int) Bool)

(assert (=> bm!132247 (= call!132253 (exists!857 (ite c!352312 lt!824902 lt!824908) (ite c!352312 lambda!83245 lambda!83246)))))

(declare-fun Unit!38861 () Unit!38859)

(assert (=> b!2206025 (= e!1409326 Unit!38861)))

(assert (=> b!2206025 (= lt!824908 call!132252)))

(declare-fun lt!824905 () Unit!38859)

(declare-fun lemmaForallThenNotExists!61 (List!25856 Int) Unit!38859)

(assert (=> b!2206025 (= lt!824905 (lemmaForallThenNotExists!61 lt!824908 lambda!83244))))

(assert (=> b!2206025 (not call!132253)))

(declare-fun lt!824904 () Unit!38859)

(assert (=> b!2206025 (= lt!824904 lt!824905)))

(declare-fun Unit!38862 () Unit!38859)

(assert (=> b!2206024 (= e!1409326 Unit!38862)))

(assert (=> b!2206024 (= lt!824902 call!132252)))

(declare-fun lt!824906 () Unit!38859)

(declare-fun lemmaNotForallThenExists!61 (List!25856 Int) Unit!38859)

(assert (=> b!2206024 (= lt!824906 (lemmaNotForallThenExists!61 lt!824902 lambda!83244))))

(assert (=> b!2206024 call!132253))

(declare-fun lt!824903 () Unit!38859)

(assert (=> b!2206024 (= lt!824903 lt!824906)))

(assert (= (and d!659503 c!352312) b!2206024))

(assert (= (and d!659503 (not c!352312)) b!2206025))

(assert (= (or b!2206024 b!2206025) bm!132247))

(assert (= (or b!2206024 b!2206025) bm!132248))

(declare-fun m!2647747 () Bool)

(assert (=> d!659503 m!2647747))

(assert (=> d!659503 m!2647747))

(declare-fun m!2647749 () Bool)

(assert (=> d!659503 m!2647749))

(declare-fun m!2647751 () Bool)

(assert (=> d!659503 m!2647751))

(assert (=> d!659503 m!2647751))

(declare-fun m!2647753 () Bool)

(assert (=> b!2206024 m!2647753))

(declare-fun m!2647755 () Bool)

(assert (=> bm!132248 m!2647755))

(declare-fun m!2647757 () Bool)

(assert (=> bm!132247 m!2647757))

(declare-fun m!2647759 () Bool)

(assert (=> b!2206025 m!2647759))

(assert (=> b!2205956 d!659503))

(declare-fun d!659505 () Bool)

(declare-fun lambda!83249 () Int)

(declare-fun forall!5271 (List!25854 Int) Bool)

(assert (=> d!659505 (= (inv!34754 setElem!19194) (forall!5271 (exprs!2345 setElem!19194) lambda!83249))))

(declare-fun bs!451020 () Bool)

(assert (= bs!451020 d!659505))

(declare-fun m!2647761 () Bool)

(assert (=> bs!451020 m!2647761))

(assert (=> setNonEmpty!19194 d!659505))

(declare-fun d!659507 () Bool)

(declare-fun lt!824911 () Bool)

(assert (=> d!659507 (= lt!824911 (isEmpty!14743 (list!9956 totalInput!891)))))

(declare-fun isEmpty!14745 (Conc!8411) Bool)

(assert (=> d!659507 (= lt!824911 (isEmpty!14745 (c!352277 totalInput!891)))))

(assert (=> d!659507 (= (isEmpty!14742 totalInput!891) lt!824911)))

(declare-fun bs!451021 () Bool)

(assert (= bs!451021 d!659507))

(assert (=> bs!451021 m!2647689))

(assert (=> bs!451021 m!2647689))

(declare-fun m!2647763 () Bool)

(assert (=> bs!451021 m!2647763))

(declare-fun m!2647765 () Bool)

(assert (=> bs!451021 m!2647765))

(assert (=> b!2205959 d!659507))

(declare-fun d!659509 () Bool)

(declare-fun lt!824914 () Int)

(assert (=> d!659509 (= lt!824914 (size!20080 (list!9956 totalInput!891)))))

(declare-fun size!20081 (Conc!8411) Int)

(assert (=> d!659509 (= lt!824914 (size!20081 (c!352277 totalInput!891)))))

(assert (=> d!659509 (= (size!20079 totalInput!891) lt!824914)))

(declare-fun bs!451022 () Bool)

(assert (= bs!451022 d!659509))

(assert (=> bs!451022 m!2647689))

(assert (=> bs!451022 m!2647689))

(declare-fun m!2647767 () Bool)

(assert (=> bs!451022 m!2647767))

(declare-fun m!2647769 () Bool)

(assert (=> bs!451022 m!2647769))

(assert (=> b!2205960 d!659509))

(declare-fun d!659511 () Bool)

(declare-fun isBalanced!2587 (Conc!8411) Bool)

(assert (=> d!659511 (= (inv!34755 totalInput!891) (isBalanced!2587 (c!352277 totalInput!891)))))

(declare-fun bs!451023 () Bool)

(assert (= bs!451023 d!659511))

(declare-fun m!2647771 () Bool)

(assert (=> bs!451023 m!2647771))

(assert (=> start!214498 d!659511))

(declare-fun d!659513 () Bool)

(assert (=> d!659513 true))

(declare-fun lambda!83252 () Int)

(declare-fun flatMap!168 ((InoxSet Context!3690) Int) (InoxSet Context!3690))

(assert (=> d!659513 (= (derivationStepZipper!307 z!3888 (apply!6349 totalInput!891 from!1082)) (flatMap!168 z!3888 lambda!83252))))

(declare-fun bs!451024 () Bool)

(assert (= bs!451024 d!659513))

(declare-fun m!2647773 () Bool)

(assert (=> bs!451024 m!2647773))

(assert (=> b!2205961 d!659513))

(declare-fun bs!451025 () Bool)

(declare-fun d!659515 () Bool)

(assert (= bs!451025 (and d!659515 d!659503)))

(declare-fun lambda!83255 () Int)

(assert (=> bs!451025 (not (= lambda!83255 lambda!83244))))

(declare-fun bs!451026 () Bool)

(assert (= bs!451026 (and d!659515 b!2206024)))

(assert (=> bs!451026 (not (= lambda!83255 lambda!83245))))

(declare-fun bs!451027 () Bool)

(assert (= bs!451027 (and d!659515 b!2206025)))

(assert (=> bs!451027 (not (= lambda!83255 lambda!83246))))

(declare-fun exists!858 ((InoxSet Context!3690) Int) Bool)

(assert (=> d!659515 (= (nullableZipper!555 lt!824877) (exists!858 lt!824877 lambda!83255))))

(declare-fun bs!451028 () Bool)

(assert (= bs!451028 d!659515))

(declare-fun m!2647775 () Bool)

(assert (=> bs!451028 m!2647775))

(assert (=> b!2205961 d!659515))

(declare-fun d!659517 () Bool)

(declare-fun lt!824917 () C!12696)

(declare-fun apply!6350 (List!25855 Int) C!12696)

(assert (=> d!659517 (= lt!824917 (apply!6350 (list!9956 totalInput!891) from!1082))))

(declare-fun apply!6351 (Conc!8411 Int) C!12696)

(assert (=> d!659517 (= lt!824917 (apply!6351 (c!352277 totalInput!891) from!1082))))

(declare-fun e!1409329 () Bool)

(assert (=> d!659517 e!1409329))

(declare-fun res!948266 () Bool)

(assert (=> d!659517 (=> (not res!948266) (not e!1409329))))

(assert (=> d!659517 (= res!948266 (<= 0 from!1082))))

(assert (=> d!659517 (= (apply!6349 totalInput!891 from!1082) lt!824917)))

(declare-fun b!2206030 () Bool)

(assert (=> b!2206030 (= e!1409329 (< from!1082 (size!20079 totalInput!891)))))

(assert (= (and d!659517 res!948266) b!2206030))

(assert (=> d!659517 m!2647689))

(assert (=> d!659517 m!2647689))

(declare-fun m!2647777 () Bool)

(assert (=> d!659517 m!2647777))

(declare-fun m!2647779 () Bool)

(assert (=> d!659517 m!2647779))

(assert (=> b!2206030 m!2647691))

(assert (=> b!2205961 d!659517))

(declare-fun lt!824922 () Int)

(declare-fun d!659519 () Bool)

(assert (=> d!659519 (and (>= lt!824922 (- 1)) (< lt!824922 lt!824878) (>= lt!824922 e!1409284) (or (= lt!824922 e!1409284) (>= lt!824922 (+ 1 from!1082))))))

(declare-fun e!1409338 () Int)

(assert (=> d!659519 (= lt!824922 e!1409338)))

(declare-fun c!352322 () Bool)

(declare-fun e!1409336 () Bool)

(assert (=> d!659519 (= c!352322 e!1409336)))

(declare-fun res!948269 () Bool)

(assert (=> d!659519 (=> res!948269 e!1409336)))

(assert (=> d!659519 (= res!948269 (= (+ 1 from!1082) lt!824878))))

(assert (=> d!659519 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!824878))))

(assert (=> d!659519 (= (furthestNullablePosition!409 lt!824877 (+ 1 from!1082) totalInput!891 lt!824878 e!1409284) lt!824922)))

(declare-fun b!2206041 () Bool)

(declare-fun e!1409337 () Int)

(assert (=> b!2206041 (= e!1409337 (+ 1 from!1082))))

(declare-fun b!2206042 () Bool)

(declare-fun lt!824923 () (InoxSet Context!3690))

(assert (=> b!2206042 (= e!1409338 (furthestNullablePosition!409 lt!824923 (+ 1 from!1082 1) totalInput!891 lt!824878 e!1409337))))

(assert (=> b!2206042 (= lt!824923 (derivationStepZipper!307 lt!824877 (apply!6349 totalInput!891 (+ 1 from!1082))))))

(declare-fun c!352321 () Bool)

(assert (=> b!2206042 (= c!352321 (nullableZipper!555 lt!824923))))

(declare-fun b!2206043 () Bool)

(assert (=> b!2206043 (= e!1409337 e!1409284)))

(declare-fun b!2206044 () Bool)

(assert (=> b!2206044 (= e!1409336 (lostCauseZipper!371 lt!824877))))

(declare-fun b!2206045 () Bool)

(assert (=> b!2206045 (= e!1409338 e!1409284)))

(assert (= (and d!659519 (not res!948269)) b!2206044))

(assert (= (and d!659519 c!352322) b!2206045))

(assert (= (and d!659519 (not c!352322)) b!2206042))

(assert (= (and b!2206042 c!352321) b!2206041))

(assert (= (and b!2206042 (not c!352321)) b!2206043))

(declare-fun m!2647781 () Bool)

(assert (=> b!2206042 m!2647781))

(declare-fun m!2647783 () Bool)

(assert (=> b!2206042 m!2647783))

(assert (=> b!2206042 m!2647783))

(declare-fun m!2647785 () Bool)

(assert (=> b!2206042 m!2647785))

(declare-fun m!2647787 () Bool)

(assert (=> b!2206042 m!2647787))

(declare-fun m!2647789 () Bool)

(assert (=> b!2206044 m!2647789))

(assert (=> b!2205961 d!659519))

(declare-fun d!659521 () Bool)

(declare-fun lt!824926 () Int)

(assert (=> d!659521 (>= lt!824926 0)))

(declare-fun e!1409341 () Int)

(assert (=> d!659521 (= lt!824926 e!1409341)))

(declare-fun c!352325 () Bool)

(assert (=> d!659521 (= c!352325 ((_ is Nil!25771) lt!824875))))

(assert (=> d!659521 (= (size!20080 lt!824875) lt!824926)))

(declare-fun b!2206050 () Bool)

(assert (=> b!2206050 (= e!1409341 0)))

(declare-fun b!2206051 () Bool)

(assert (=> b!2206051 (= e!1409341 (+ 1 (size!20080 (t!198499 lt!824875))))))

(assert (= (and d!659521 c!352325) b!2206050))

(assert (= (and d!659521 (not c!352325)) b!2206051))

(declare-fun m!2647791 () Bool)

(assert (=> b!2206051 m!2647791))

(assert (=> b!2205961 d!659521))

(declare-fun bs!451029 () Bool)

(declare-fun d!659523 () Bool)

(assert (= bs!451029 (and d!659523 d!659503)))

(declare-fun lambda!83258 () Int)

(assert (=> bs!451029 (not (= lambda!83258 lambda!83244))))

(declare-fun bs!451030 () Bool)

(assert (= bs!451030 (and d!659523 b!2206024)))

(assert (=> bs!451030 (not (= lambda!83258 lambda!83245))))

(declare-fun bs!451031 () Bool)

(assert (= bs!451031 (and d!659523 b!2206025)))

(assert (=> bs!451031 (not (= lambda!83258 lambda!83246))))

(declare-fun bs!451032 () Bool)

(assert (= bs!451032 (and d!659523 d!659515)))

(assert (=> bs!451032 (= lambda!83258 lambda!83255)))

(assert (=> d!659523 (= (nullableZipper!555 z!3888) (exists!858 z!3888 lambda!83258))))

(declare-fun bs!451033 () Bool)

(assert (= bs!451033 d!659523))

(declare-fun m!2647793 () Bool)

(assert (=> bs!451033 m!2647793))

(assert (=> b!2205953 d!659523))

(declare-fun d!659525 () Bool)

(declare-fun c!352328 () Bool)

(assert (=> d!659525 (= c!352328 ((_ is Node!8411) (c!352277 totalInput!891)))))

(declare-fun e!1409346 () Bool)

(assert (=> d!659525 (= (inv!34753 (c!352277 totalInput!891)) e!1409346)))

(declare-fun b!2206058 () Bool)

(declare-fun inv!34756 (Conc!8411) Bool)

(assert (=> b!2206058 (= e!1409346 (inv!34756 (c!352277 totalInput!891)))))

(declare-fun b!2206059 () Bool)

(declare-fun e!1409347 () Bool)

(assert (=> b!2206059 (= e!1409346 e!1409347)))

(declare-fun res!948272 () Bool)

(assert (=> b!2206059 (= res!948272 (not ((_ is Leaf!12316) (c!352277 totalInput!891))))))

(assert (=> b!2206059 (=> res!948272 e!1409347)))

(declare-fun b!2206060 () Bool)

(declare-fun inv!34757 (Conc!8411) Bool)

(assert (=> b!2206060 (= e!1409347 (inv!34757 (c!352277 totalInput!891)))))

(assert (= (and d!659525 c!352328) b!2206058))

(assert (= (and d!659525 (not c!352328)) b!2206059))

(assert (= (and b!2206059 (not res!948272)) b!2206060))

(declare-fun m!2647801 () Bool)

(assert (=> b!2206058 m!2647801))

(declare-fun m!2647803 () Bool)

(assert (=> b!2206060 m!2647803))

(assert (=> b!2205957 d!659525))

(declare-fun b!2206065 () Bool)

(declare-fun e!1409350 () Bool)

(declare-fun tp!685895 () Bool)

(declare-fun tp!685896 () Bool)

(assert (=> b!2206065 (= e!1409350 (and tp!685895 tp!685896))))

(assert (=> b!2205955 (= tp!685890 e!1409350)))

(assert (= (and b!2205955 ((_ is Cons!25770) (exprs!2345 setElem!19194))) b!2206065))

(declare-fun condSetEmpty!19197 () Bool)

(assert (=> setNonEmpty!19194 (= condSetEmpty!19197 (= setRest!19194 ((as const (Array Context!3690 Bool)) false)))))

(declare-fun setRes!19197 () Bool)

(assert (=> setNonEmpty!19194 (= tp!685889 setRes!19197)))

(declare-fun setIsEmpty!19197 () Bool)

(assert (=> setIsEmpty!19197 setRes!19197))

(declare-fun setNonEmpty!19197 () Bool)

(declare-fun setElem!19197 () Context!3690)

(declare-fun e!1409353 () Bool)

(declare-fun tp!685901 () Bool)

(assert (=> setNonEmpty!19197 (= setRes!19197 (and tp!685901 (inv!34754 setElem!19197) e!1409353))))

(declare-fun setRest!19197 () (InoxSet Context!3690))

(assert (=> setNonEmpty!19197 (= setRest!19194 ((_ map or) (store ((as const (Array Context!3690 Bool)) false) setElem!19197 true) setRest!19197))))

(declare-fun b!2206070 () Bool)

(declare-fun tp!685902 () Bool)

(assert (=> b!2206070 (= e!1409353 tp!685902)))

(assert (= (and setNonEmpty!19194 condSetEmpty!19197) setIsEmpty!19197))

(assert (= (and setNonEmpty!19194 (not condSetEmpty!19197)) setNonEmpty!19197))

(assert (= setNonEmpty!19197 b!2206070))

(declare-fun m!2647805 () Bool)

(assert (=> setNonEmpty!19197 m!2647805))

(declare-fun b!2206083 () Bool)

(declare-fun tp!685911 () Bool)

(declare-fun e!1409361 () Bool)

(declare-fun tp!685909 () Bool)

(assert (=> b!2206083 (= e!1409361 (and (inv!34753 (left!19803 (c!352277 totalInput!891))) tp!685909 (inv!34753 (right!20133 (c!352277 totalInput!891))) tp!685911))))

(declare-fun b!2206085 () Bool)

(declare-fun e!1409360 () Bool)

(declare-fun tp!685910 () Bool)

(assert (=> b!2206085 (= e!1409360 tp!685910)))

(declare-fun b!2206084 () Bool)

(declare-fun inv!34758 (IArray!16827) Bool)

(assert (=> b!2206084 (= e!1409361 (and (inv!34758 (xs!11353 (c!352277 totalInput!891))) e!1409360))))

(assert (=> b!2205957 (= tp!685888 (and (inv!34753 (c!352277 totalInput!891)) e!1409361))))

(assert (= (and b!2205957 ((_ is Node!8411) (c!352277 totalInput!891))) b!2206083))

(assert (= b!2206084 b!2206085))

(assert (= (and b!2205957 ((_ is Leaf!12316) (c!352277 totalInput!891))) b!2206084))

(declare-fun m!2647807 () Bool)

(assert (=> b!2206083 m!2647807))

(declare-fun m!2647809 () Bool)

(assert (=> b!2206083 m!2647809))

(declare-fun m!2647811 () Bool)

(assert (=> b!2206084 m!2647811))

(assert (=> b!2205957 m!2647709))

(check-sat (not b!2206083) (not b!2206058) (not d!659509) (not b!2205970) (not b!2206017) (not d!659497) (not d!659501) (not b!2206024) (not b!2205957) (not d!659507) (not b!2206018) (not setNonEmpty!19197) (not b!2206065) (not d!659505) (not b!2206070) (not d!659517) (not bm!132248) (not b!2205971) (not bm!132247) (not b!2206042) (not b!2206085) (not b!2206025) (not b!2205990) (not b!2206051) (not bm!132242) (not d!659523) (not d!659513) (not b!2205992) (not b!2206044) (not b!2205989) (not d!659491) (not b!2206084) (not d!659503) (not b!2206030) (not d!659515) (not d!659511) (not b!2205991) (not b!2206060) (not d!659493))
(check-sat)
