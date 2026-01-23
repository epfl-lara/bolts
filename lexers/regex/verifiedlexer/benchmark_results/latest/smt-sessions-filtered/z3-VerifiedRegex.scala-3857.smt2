; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213134 () Bool)

(assert start!213134)

(declare-fun b!2196247 () Bool)

(declare-fun res!944246 () Bool)

(declare-fun e!1403603 () Bool)

(assert (=> b!2196247 (=> (not res!944246) (not e!1403603))))

(declare-fun e!1403600 () Bool)

(assert (=> b!2196247 (= res!944246 e!1403600)))

(declare-fun res!944244 () Bool)

(assert (=> b!2196247 (=> res!944244 e!1403600)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12508 0))(
  ( (C!12509 (val!7240 Int)) )
))
(declare-datatypes ((Regex!6181 0))(
  ( (ElementMatch!6181 (c!349746 C!12508)) (Concat!10483 (regOne!12874 Regex!6181) (regTwo!12874 Regex!6181)) (EmptyExpr!6181) (Star!6181 (reg!6510 Regex!6181)) (EmptyLang!6181) (Union!6181 (regOne!12875 Regex!6181) (regTwo!12875 Regex!6181)) )
))
(declare-datatypes ((List!25648 0))(
  ( (Nil!25564) (Cons!25564 (h!30965 Regex!6181) (t!198254 List!25648)) )
))
(declare-datatypes ((Context!3502 0))(
  ( (Context!3503 (exprs!2251 List!25648)) )
))
(declare-fun z!3955 () (InoxSet Context!3502))

(declare-fun nullableZipper!461 ((InoxSet Context!3502)) Bool)

(assert (=> b!2196247 (= res!944244 (not (nullableZipper!461 z!3955)))))

(declare-fun b!2196248 () Bool)

(declare-fun res!944249 () Bool)

(assert (=> b!2196248 (=> (not res!944249) (not e!1403603))))

(declare-fun from!1114 () Int)

(declare-fun lt!821529 () Int)

(assert (=> b!2196248 (= res!944249 (not (= from!1114 lt!821529)))))

(declare-fun b!2196249 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2196249 (= e!1403600 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2196250 () Bool)

(declare-fun res!944248 () Bool)

(assert (=> b!2196250 (=> (not res!944248) (not e!1403603))))

(declare-fun lostCauseZipper!297 ((InoxSet Context!3502)) Bool)

(assert (=> b!2196250 (= res!944248 (not (lostCauseZipper!297 z!3955)))))

(declare-fun b!2196251 () Bool)

(declare-fun e!1403601 () Bool)

(declare-datatypes ((List!25649 0))(
  ( (Nil!25565) (Cons!25565 (h!30966 C!12508) (t!198255 List!25649)) )
))
(declare-datatypes ((IArray!16639 0))(
  ( (IArray!16640 (innerList!8377 List!25649)) )
))
(declare-datatypes ((Conc!8317 0))(
  ( (Node!8317 (left!19626 Conc!8317) (right!19956 Conc!8317) (csize!16864 Int) (cheight!8528 Int)) (Leaf!12175 (xs!11259 IArray!16639) (csize!16865 Int)) (Empty!8317) )
))
(declare-datatypes ((BalanceConc!16396 0))(
  ( (BalanceConc!16397 (c!349747 Conc!8317)) )
))
(declare-fun totalInput!923 () BalanceConc!16396)

(declare-fun size!19928 (List!25649) Int)

(declare-fun list!9829 (BalanceConc!16396) List!25649)

(assert (=> b!2196251 (= e!1403601 (< from!1114 (size!19928 (list!9829 totalInput!923))))))

(declare-fun e!1403596 () Bool)

(declare-fun setElem!18812 () Context!3502)

(declare-fun setRes!18812 () Bool)

(declare-fun setNonEmpty!18812 () Bool)

(declare-fun tp!684074 () Bool)

(declare-fun inv!34252 (Context!3502) Bool)

(assert (=> setNonEmpty!18812 (= setRes!18812 (and tp!684074 (inv!34252 setElem!18812) e!1403596))))

(declare-fun setRest!18812 () (InoxSet Context!3502))

(assert (=> setNonEmpty!18812 (= z!3955 ((_ map or) (store ((as const (Array Context!3502 Bool)) false) setElem!18812 true) setRest!18812))))

(declare-fun b!2196252 () Bool)

(declare-fun lt!821531 () Int)

(declare-fun lt!821526 () (InoxSet Context!3502))

(declare-fun e!1403595 () Bool)

(declare-fun matchZipper!267 ((InoxSet Context!3502) List!25649) Bool)

(declare-fun take!359 (List!25649 Int) List!25649)

(declare-fun drop!1369 (List!25649 Int) List!25649)

(assert (=> b!2196252 (= e!1403595 (matchZipper!267 lt!821526 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531)))))

(declare-fun b!2196253 () Bool)

(declare-fun e!1403597 () Int)

(assert (=> b!2196253 (= e!1403597 lastNullablePos!193)))

(declare-fun b!2196255 () Bool)

(declare-fun e!1403602 () Bool)

(declare-fun tp!684075 () Bool)

(declare-fun inv!34253 (Conc!8317) Bool)

(assert (=> b!2196255 (= e!1403602 (and (inv!34253 (c!349747 totalInput!923)) tp!684075))))

(declare-fun b!2196256 () Bool)

(declare-fun e!1403599 () Bool)

(assert (=> b!2196256 (= e!1403603 e!1403599)))

(declare-fun res!944247 () Bool)

(assert (=> b!2196256 (=> (not res!944247) (not e!1403599))))

(declare-fun lt!821532 () Int)

(declare-fun lt!821530 () Int)

(assert (=> b!2196256 (= res!944247 (= lt!821532 lt!821530))))

(declare-fun lt!821528 () Int)

(declare-fun furthestNullablePosition!349 ((InoxSet Context!3502) Int BalanceConc!16396 Int Int) Int)

(assert (=> b!2196256 (= lt!821530 (furthestNullablePosition!349 lt!821526 (+ 1 from!1114) totalInput!923 lt!821529 lt!821528))))

(assert (=> b!2196256 (= lt!821532 (furthestNullablePosition!349 z!3955 from!1114 totalInput!923 lt!821529 lastNullablePos!193))))

(assert (=> b!2196256 (= lt!821528 e!1403597)))

(declare-fun c!349745 () Bool)

(assert (=> b!2196256 (= c!349745 (nullableZipper!461 lt!821526))))

(declare-fun derivationStepZipper!253 ((InoxSet Context!3502) C!12508) (InoxSet Context!3502))

(declare-fun apply!6249 (BalanceConc!16396 Int) C!12508)

(assert (=> b!2196256 (= lt!821526 (derivationStepZipper!253 z!3955 (apply!6249 totalInput!923 from!1114)))))

(declare-fun b!2196257 () Bool)

(declare-fun tp!684076 () Bool)

(assert (=> b!2196257 (= e!1403596 tp!684076)))

(declare-fun setIsEmpty!18812 () Bool)

(assert (=> setIsEmpty!18812 setRes!18812))

(declare-fun b!2196258 () Bool)

(declare-fun e!1403598 () Bool)

(assert (=> b!2196258 (= e!1403598 e!1403603)))

(declare-fun res!944242 () Bool)

(assert (=> b!2196258 (=> (not res!944242) (not e!1403603))))

(assert (=> b!2196258 (= res!944242 (and (<= from!1114 lt!821529) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19929 (BalanceConc!16396) Int)

(assert (=> b!2196258 (= lt!821529 (size!19929 totalInput!923))))

(declare-fun b!2196259 () Bool)

(assert (=> b!2196259 (= e!1403597 from!1114)))

(declare-fun res!944245 () Bool)

(assert (=> start!213134 (=> (not res!944245) (not e!1403598))))

(assert (=> start!213134 (= res!944245 (>= from!1114 0))))

(assert (=> start!213134 e!1403598))

(assert (=> start!213134 true))

(declare-fun inv!34254 (BalanceConc!16396) Bool)

(assert (=> start!213134 (and (inv!34254 totalInput!923) e!1403602)))

(declare-fun condSetEmpty!18812 () Bool)

(assert (=> start!213134 (= condSetEmpty!18812 (= z!3955 ((as const (Array Context!3502 Bool)) false)))))

(assert (=> start!213134 setRes!18812))

(declare-fun b!2196254 () Bool)

(assert (=> b!2196254 (= e!1403599 (not e!1403601))))

(declare-fun res!944241 () Bool)

(assert (=> b!2196254 (=> res!944241 e!1403601)))

(assert (=> b!2196254 (= res!944241 (or (> lt!821531 0) (> lt!821530 from!1114) (< lt!821530 lt!821528) (< lt!821528 lastNullablePos!193) (> lt!821528 from!1114) (and (not (= lt!821528 from!1114)) (not (= lt!821528 lastNullablePos!193))) (= lt!821528 lastNullablePos!193) (not (= (+ 1 (- lt!821532 from!1114)) 1))))))

(assert (=> b!2196254 e!1403595))

(declare-fun res!944243 () Bool)

(assert (=> b!2196254 (=> res!944243 e!1403595)))

(assert (=> b!2196254 (= res!944243 (<= lt!821531 0))))

(assert (=> b!2196254 (= lt!821531 (+ 1 (- lt!821530 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38673 0))(
  ( (Unit!38674) )
))
(declare-fun lt!821527 () Unit!38673)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!170 ((InoxSet Context!3502) Int BalanceConc!16396 Int) Unit!38673)

(assert (=> b!2196254 (= lt!821527 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!170 lt!821526 (+ 1 from!1114) totalInput!923 lt!821528))))

(assert (= (and start!213134 res!944245) b!2196258))

(assert (= (and b!2196258 res!944242) b!2196247))

(assert (= (and b!2196247 (not res!944244)) b!2196249))

(assert (= (and b!2196247 res!944246) b!2196248))

(assert (= (and b!2196248 res!944249) b!2196250))

(assert (= (and b!2196250 res!944248) b!2196256))

(assert (= (and b!2196256 c!349745) b!2196259))

(assert (= (and b!2196256 (not c!349745)) b!2196253))

(assert (= (and b!2196256 res!944247) b!2196254))

(assert (= (and b!2196254 (not res!944243)) b!2196252))

(assert (= (and b!2196254 (not res!944241)) b!2196251))

(assert (= start!213134 b!2196255))

(assert (= (and start!213134 condSetEmpty!18812) setIsEmpty!18812))

(assert (= (and start!213134 (not condSetEmpty!18812)) setNonEmpty!18812))

(assert (= setNonEmpty!18812 b!2196257))

(declare-fun m!2638673 () Bool)

(assert (=> b!2196251 m!2638673))

(assert (=> b!2196251 m!2638673))

(declare-fun m!2638675 () Bool)

(assert (=> b!2196251 m!2638675))

(assert (=> b!2196252 m!2638673))

(assert (=> b!2196252 m!2638673))

(declare-fun m!2638677 () Bool)

(assert (=> b!2196252 m!2638677))

(assert (=> b!2196252 m!2638677))

(declare-fun m!2638679 () Bool)

(assert (=> b!2196252 m!2638679))

(assert (=> b!2196252 m!2638679))

(declare-fun m!2638681 () Bool)

(assert (=> b!2196252 m!2638681))

(declare-fun m!2638683 () Bool)

(assert (=> b!2196258 m!2638683))

(declare-fun m!2638685 () Bool)

(assert (=> b!2196250 m!2638685))

(declare-fun m!2638687 () Bool)

(assert (=> b!2196255 m!2638687))

(declare-fun m!2638689 () Bool)

(assert (=> b!2196254 m!2638689))

(declare-fun m!2638691 () Bool)

(assert (=> b!2196247 m!2638691))

(declare-fun m!2638693 () Bool)

(assert (=> setNonEmpty!18812 m!2638693))

(declare-fun m!2638695 () Bool)

(assert (=> b!2196256 m!2638695))

(declare-fun m!2638697 () Bool)

(assert (=> b!2196256 m!2638697))

(declare-fun m!2638699 () Bool)

(assert (=> b!2196256 m!2638699))

(declare-fun m!2638701 () Bool)

(assert (=> b!2196256 m!2638701))

(assert (=> b!2196256 m!2638697))

(declare-fun m!2638703 () Bool)

(assert (=> b!2196256 m!2638703))

(declare-fun m!2638705 () Bool)

(assert (=> start!213134 m!2638705))

(check-sat (not b!2196247) (not b!2196257) (not b!2196252) (not b!2196258) (not b!2196254) (not setNonEmpty!18812) (not b!2196250) (not b!2196256) (not b!2196251) (not b!2196255) (not start!213134))
(check-sat)
(get-model)

(declare-fun c!349750 () Bool)

(declare-fun d!656940 () Bool)

(declare-fun isEmpty!14585 (List!25649) Bool)

(assert (=> d!656940 (= c!349750 (isEmpty!14585 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531)))))

(declare-fun e!1403606 () Bool)

(assert (=> d!656940 (= (matchZipper!267 lt!821526 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531)) e!1403606)))

(declare-fun b!2196264 () Bool)

(assert (=> b!2196264 (= e!1403606 (nullableZipper!461 lt!821526))))

(declare-fun b!2196265 () Bool)

(declare-fun head!4686 (List!25649) C!12508)

(declare-fun tail!3158 (List!25649) List!25649)

(assert (=> b!2196265 (= e!1403606 (matchZipper!267 (derivationStepZipper!253 lt!821526 (head!4686 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531))) (tail!3158 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531))))))

(assert (= (and d!656940 c!349750) b!2196264))

(assert (= (and d!656940 (not c!349750)) b!2196265))

(assert (=> d!656940 m!2638679))

(declare-fun m!2638707 () Bool)

(assert (=> d!656940 m!2638707))

(assert (=> b!2196264 m!2638695))

(assert (=> b!2196265 m!2638679))

(declare-fun m!2638709 () Bool)

(assert (=> b!2196265 m!2638709))

(assert (=> b!2196265 m!2638709))

(declare-fun m!2638711 () Bool)

(assert (=> b!2196265 m!2638711))

(assert (=> b!2196265 m!2638679))

(declare-fun m!2638713 () Bool)

(assert (=> b!2196265 m!2638713))

(assert (=> b!2196265 m!2638711))

(assert (=> b!2196265 m!2638713))

(declare-fun m!2638715 () Bool)

(assert (=> b!2196265 m!2638715))

(assert (=> b!2196252 d!656940))

(declare-fun b!2196286 () Bool)

(declare-fun e!1403619 () Int)

(declare-fun e!1403620 () Int)

(assert (=> b!2196286 (= e!1403619 e!1403620)))

(declare-fun c!349761 () Bool)

(assert (=> b!2196286 (= c!349761 (>= lt!821531 (size!19928 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2196287 () Bool)

(assert (=> b!2196287 (= e!1403619 0)))

(declare-fun b!2196288 () Bool)

(assert (=> b!2196288 (= e!1403620 (size!19928 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2196290 () Bool)

(declare-fun e!1403621 () List!25649)

(assert (=> b!2196290 (= e!1403621 (Cons!25565 (h!30966 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114))) (take!359 (t!198255 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114))) (- lt!821531 1))))))

(declare-fun b!2196291 () Bool)

(assert (=> b!2196291 (= e!1403621 Nil!25565)))

(declare-fun b!2196292 () Bool)

(declare-fun e!1403618 () Bool)

(declare-fun lt!821538 () List!25649)

(assert (=> b!2196292 (= e!1403618 (= (size!19928 lt!821538) e!1403619))))

(declare-fun c!349762 () Bool)

(assert (=> b!2196292 (= c!349762 (<= lt!821531 0))))

(declare-fun b!2196289 () Bool)

(assert (=> b!2196289 (= e!1403620 lt!821531)))

(declare-fun d!656942 () Bool)

(assert (=> d!656942 e!1403618))

(declare-fun res!944252 () Bool)

(assert (=> d!656942 (=> (not res!944252) (not e!1403618))))

(declare-fun content!3471 (List!25649) (InoxSet C!12508))

(assert (=> d!656942 (= res!944252 (= ((_ map implies) (content!3471 lt!821538) (content!3471 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12508)) true)))))

(assert (=> d!656942 (= lt!821538 e!1403621)))

(declare-fun c!349760 () Bool)

(get-info :version)

(assert (=> d!656942 (= c!349760 (or ((_ is Nil!25565) (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114))) (<= lt!821531 0)))))

(assert (=> d!656942 (= (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821531) lt!821538)))

(assert (= (and d!656942 c!349760) b!2196291))

(assert (= (and d!656942 (not c!349760)) b!2196290))

(assert (= (and d!656942 res!944252) b!2196292))

(assert (= (and b!2196292 c!349762) b!2196287))

(assert (= (and b!2196292 (not c!349762)) b!2196286))

(assert (= (and b!2196286 c!349761) b!2196288))

(assert (= (and b!2196286 (not c!349761)) b!2196289))

(declare-fun m!2638721 () Bool)

(assert (=> d!656942 m!2638721))

(assert (=> d!656942 m!2638677))

(declare-fun m!2638723 () Bool)

(assert (=> d!656942 m!2638723))

(assert (=> b!2196286 m!2638677))

(declare-fun m!2638725 () Bool)

(assert (=> b!2196286 m!2638725))

(declare-fun m!2638727 () Bool)

(assert (=> b!2196292 m!2638727))

(assert (=> b!2196288 m!2638677))

(assert (=> b!2196288 m!2638725))

(declare-fun m!2638729 () Bool)

(assert (=> b!2196290 m!2638729))

(assert (=> b!2196252 d!656942))

(declare-fun b!2196338 () Bool)

(declare-fun e!1403651 () List!25649)

(assert (=> b!2196338 (= e!1403651 Nil!25565)))

(declare-fun bm!131966 () Bool)

(declare-fun call!131971 () Int)

(assert (=> bm!131966 (= call!131971 (size!19928 (list!9829 totalInput!923)))))

(declare-fun b!2196339 () Bool)

(declare-fun e!1403648 () List!25649)

(assert (=> b!2196339 (= e!1403651 e!1403648)))

(declare-fun c!349784 () Bool)

(assert (=> b!2196339 (= c!349784 (<= (+ 1 from!1114) 0))))

(declare-fun b!2196340 () Bool)

(declare-fun e!1403650 () Bool)

(declare-fun lt!821544 () List!25649)

(declare-fun e!1403649 () Int)

(assert (=> b!2196340 (= e!1403650 (= (size!19928 lt!821544) e!1403649))))

(declare-fun c!349786 () Bool)

(assert (=> b!2196340 (= c!349786 (<= (+ 1 from!1114) 0))))

(declare-fun b!2196341 () Bool)

(declare-fun e!1403647 () Int)

(assert (=> b!2196341 (= e!1403649 e!1403647)))

(declare-fun c!349785 () Bool)

(assert (=> b!2196341 (= c!349785 (>= (+ 1 from!1114) call!131971))))

(declare-fun b!2196342 () Bool)

(assert (=> b!2196342 (= e!1403648 (drop!1369 (t!198255 (list!9829 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2196343 () Bool)

(assert (=> b!2196343 (= e!1403648 (list!9829 totalInput!923))))

(declare-fun d!656950 () Bool)

(assert (=> d!656950 e!1403650))

(declare-fun res!944258 () Bool)

(assert (=> d!656950 (=> (not res!944258) (not e!1403650))))

(assert (=> d!656950 (= res!944258 (= ((_ map implies) (content!3471 lt!821544) (content!3471 (list!9829 totalInput!923))) ((as const (InoxSet C!12508)) true)))))

(assert (=> d!656950 (= lt!821544 e!1403651)))

(declare-fun c!349783 () Bool)

(assert (=> d!656950 (= c!349783 ((_ is Nil!25565) (list!9829 totalInput!923)))))

(assert (=> d!656950 (= (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821544)))

(declare-fun b!2196344 () Bool)

(assert (=> b!2196344 (= e!1403649 call!131971)))

(declare-fun b!2196345 () Bool)

(assert (=> b!2196345 (= e!1403647 0)))

(declare-fun b!2196346 () Bool)

(assert (=> b!2196346 (= e!1403647 (- call!131971 (+ 1 from!1114)))))

(assert (= (and d!656950 c!349783) b!2196338))

(assert (= (and d!656950 (not c!349783)) b!2196339))

(assert (= (and b!2196339 c!349784) b!2196343))

(assert (= (and b!2196339 (not c!349784)) b!2196342))

(assert (= (and d!656950 res!944258) b!2196340))

(assert (= (and b!2196340 c!349786) b!2196344))

(assert (= (and b!2196340 (not c!349786)) b!2196341))

(assert (= (and b!2196341 c!349785) b!2196345))

(assert (= (and b!2196341 (not c!349785)) b!2196346))

(assert (= (or b!2196344 b!2196341 b!2196346) bm!131966))

(assert (=> bm!131966 m!2638673))

(assert (=> bm!131966 m!2638675))

(declare-fun m!2638751 () Bool)

(assert (=> b!2196340 m!2638751))

(declare-fun m!2638753 () Bool)

(assert (=> b!2196342 m!2638753))

(declare-fun m!2638755 () Bool)

(assert (=> d!656950 m!2638755))

(assert (=> d!656950 m!2638673))

(declare-fun m!2638757 () Bool)

(assert (=> d!656950 m!2638757))

(assert (=> b!2196252 d!656950))

(declare-fun d!656956 () Bool)

(declare-fun list!9831 (Conc!8317) List!25649)

(assert (=> d!656956 (= (list!9829 totalInput!923) (list!9831 (c!349747 totalInput!923)))))

(declare-fun bs!448954 () Bool)

(assert (= bs!448954 d!656956))

(declare-fun m!2638759 () Bool)

(assert (=> bs!448954 m!2638759))

(assert (=> b!2196252 d!656956))

(declare-fun d!656958 () Bool)

(declare-fun lambda!82602 () Int)

(declare-fun exists!813 ((InoxSet Context!3502) Int) Bool)

(assert (=> d!656958 (= (nullableZipper!461 z!3955) (exists!813 z!3955 lambda!82602))))

(declare-fun bs!448962 () Bool)

(assert (= bs!448962 d!656958))

(declare-fun m!2638807 () Bool)

(assert (=> bs!448962 m!2638807))

(assert (=> b!2196247 d!656958))

(declare-fun d!656982 () Bool)

(declare-fun lambda!82610 () Int)

(declare-fun forall!5226 (List!25648 Int) Bool)

(assert (=> d!656982 (= (inv!34252 setElem!18812) (forall!5226 (exprs!2251 setElem!18812) lambda!82610))))

(declare-fun bs!448972 () Bool)

(assert (= bs!448972 d!656982))

(declare-fun m!2638823 () Bool)

(assert (=> bs!448972 m!2638823))

(assert (=> setNonEmpty!18812 d!656982))

(declare-fun d!656986 () Bool)

(declare-fun isBalanced!2563 (Conc!8317) Bool)

(assert (=> d!656986 (= (inv!34254 totalInput!923) (isBalanced!2563 (c!349747 totalInput!923)))))

(declare-fun bs!448973 () Bool)

(assert (= bs!448973 d!656986))

(declare-fun m!2638825 () Bool)

(assert (=> bs!448973 m!2638825))

(assert (=> start!213134 d!656986))

(declare-fun bs!448974 () Bool)

(declare-fun d!656988 () Bool)

(assert (= bs!448974 (and d!656988 d!656958)))

(declare-fun lambda!82623 () Int)

(assert (=> bs!448974 (not (= lambda!82623 lambda!82602))))

(declare-fun bs!448975 () Bool)

(declare-fun b!2196445 () Bool)

(assert (= bs!448975 (and b!2196445 d!656958)))

(declare-fun lambda!82624 () Int)

(assert (=> bs!448975 (not (= lambda!82624 lambda!82602))))

(declare-fun bs!448976 () Bool)

(assert (= bs!448976 (and b!2196445 d!656988)))

(assert (=> bs!448976 (not (= lambda!82624 lambda!82623))))

(declare-fun bs!448977 () Bool)

(declare-fun b!2196446 () Bool)

(assert (= bs!448977 (and b!2196446 d!656958)))

(declare-fun lambda!82625 () Int)

(assert (=> bs!448977 (not (= lambda!82625 lambda!82602))))

(declare-fun bs!448978 () Bool)

(assert (= bs!448978 (and b!2196446 d!656988)))

(assert (=> bs!448978 (not (= lambda!82625 lambda!82623))))

(declare-fun bs!448979 () Bool)

(assert (= bs!448979 (and b!2196446 b!2196445)))

(assert (=> bs!448979 (= lambda!82625 lambda!82624)))

(declare-fun e!1403719 () Unit!38673)

(declare-fun Unit!38677 () Unit!38673)

(assert (=> b!2196445 (= e!1403719 Unit!38677)))

(declare-datatypes ((List!25651 0))(
  ( (Nil!25567) (Cons!25567 (h!30968 Context!3502) (t!198257 List!25651)) )
))
(declare-fun lt!821615 () List!25651)

(declare-fun call!131986 () List!25651)

(assert (=> b!2196445 (= lt!821615 call!131986)))

(declare-fun lt!821610 () Unit!38673)

(declare-fun lemmaNotForallThenExists!46 (List!25651 Int) Unit!38673)

(assert (=> b!2196445 (= lt!821610 (lemmaNotForallThenExists!46 lt!821615 lambda!82623))))

(declare-fun call!131985 () Bool)

(assert (=> b!2196445 call!131985))

(declare-fun lt!821613 () Unit!38673)

(assert (=> b!2196445 (= lt!821613 lt!821610)))

(declare-fun bm!131980 () Bool)

(declare-fun c!349837 () Bool)

(declare-fun lt!821614 () List!25651)

(declare-fun exists!814 (List!25651 Int) Bool)

(assert (=> bm!131980 (= call!131985 (exists!814 (ite c!349837 lt!821615 lt!821614) (ite c!349837 lambda!82624 lambda!82625)))))

(declare-fun lt!821609 () Bool)

(declare-datatypes ((Option!5021 0))(
  ( (None!5020) (Some!5020 (v!29415 List!25649)) )
))
(declare-fun isEmpty!14587 (Option!5021) Bool)

(declare-fun getLanguageWitness!140 ((InoxSet Context!3502)) Option!5021)

(assert (=> d!656988 (= lt!821609 (isEmpty!14587 (getLanguageWitness!140 z!3955)))))

(declare-fun forall!5227 ((InoxSet Context!3502) Int) Bool)

(assert (=> d!656988 (= lt!821609 (forall!5227 z!3955 lambda!82623))))

(declare-fun lt!821612 () Unit!38673)

(assert (=> d!656988 (= lt!821612 e!1403719)))

(assert (=> d!656988 (= c!349837 (not (forall!5227 z!3955 lambda!82623)))))

(assert (=> d!656988 (= (lostCauseZipper!297 z!3955) lt!821609)))

(declare-fun Unit!38678 () Unit!38673)

(assert (=> b!2196446 (= e!1403719 Unit!38678)))

(assert (=> b!2196446 (= lt!821614 call!131986)))

(declare-fun lt!821608 () Unit!38673)

(declare-fun lemmaForallThenNotExists!46 (List!25651 Int) Unit!38673)

(assert (=> b!2196446 (= lt!821608 (lemmaForallThenNotExists!46 lt!821614 lambda!82623))))

(assert (=> b!2196446 (not call!131985)))

(declare-fun lt!821611 () Unit!38673)

(assert (=> b!2196446 (= lt!821611 lt!821608)))

(declare-fun bm!131981 () Bool)

(declare-fun toList!1257 ((InoxSet Context!3502)) List!25651)

(assert (=> bm!131981 (= call!131986 (toList!1257 z!3955))))

(assert (= (and d!656988 c!349837) b!2196445))

(assert (= (and d!656988 (not c!349837)) b!2196446))

(assert (= (or b!2196445 b!2196446) bm!131980))

(assert (= (or b!2196445 b!2196446) bm!131981))

(declare-fun m!2638839 () Bool)

(assert (=> d!656988 m!2638839))

(assert (=> d!656988 m!2638839))

(declare-fun m!2638841 () Bool)

(assert (=> d!656988 m!2638841))

(declare-fun m!2638843 () Bool)

(assert (=> d!656988 m!2638843))

(assert (=> d!656988 m!2638843))

(declare-fun m!2638845 () Bool)

(assert (=> bm!131980 m!2638845))

(declare-fun m!2638847 () Bool)

(assert (=> b!2196445 m!2638847))

(declare-fun m!2638849 () Bool)

(assert (=> bm!131981 m!2638849))

(declare-fun m!2638851 () Bool)

(assert (=> b!2196446 m!2638851))

(assert (=> b!2196250 d!656988))

(declare-fun d!656990 () Bool)

(declare-fun e!1403725 () Bool)

(assert (=> d!656990 e!1403725))

(declare-fun res!944282 () Bool)

(assert (=> d!656990 (=> res!944282 e!1403725)))

(declare-fun lt!821620 () Int)

(assert (=> d!656990 (= res!944282 (<= lt!821620 0))))

(assert (=> d!656990 (= lt!821620 (+ (- (furthestNullablePosition!349 lt!821526 (+ 1 from!1114) totalInput!923 (size!19929 totalInput!923) lt!821528) (+ 1 from!1114)) 1))))

(declare-fun lt!821621 () Unit!38673)

(declare-fun choose!12999 ((InoxSet Context!3502) Int BalanceConc!16396 Int) Unit!38673)

(assert (=> d!656990 (= lt!821621 (choose!12999 lt!821526 (+ 1 from!1114) totalInput!923 lt!821528))))

(declare-fun e!1403724 () Bool)

(assert (=> d!656990 e!1403724))

(declare-fun res!944283 () Bool)

(assert (=> d!656990 (=> (not res!944283) (not e!1403724))))

(assert (=> d!656990 (= res!944283 (>= (+ 1 from!1114) 0))))

(assert (=> d!656990 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!170 lt!821526 (+ 1 from!1114) totalInput!923 lt!821528) lt!821621)))

(declare-fun b!2196451 () Bool)

(assert (=> b!2196451 (= e!1403724 (<= (+ 1 from!1114) (size!19929 totalInput!923)))))

(declare-fun b!2196452 () Bool)

(assert (=> b!2196452 (= e!1403725 (matchZipper!267 lt!821526 (take!359 (drop!1369 (list!9829 totalInput!923) (+ 1 from!1114)) lt!821620)))))

(assert (= (and d!656990 res!944283) b!2196451))

(assert (= (and d!656990 (not res!944282)) b!2196452))

(assert (=> d!656990 m!2638683))

(assert (=> d!656990 m!2638683))

(declare-fun m!2638853 () Bool)

(assert (=> d!656990 m!2638853))

(declare-fun m!2638855 () Bool)

(assert (=> d!656990 m!2638855))

(assert (=> b!2196451 m!2638683))

(assert (=> b!2196452 m!2638673))

(assert (=> b!2196452 m!2638673))

(assert (=> b!2196452 m!2638677))

(assert (=> b!2196452 m!2638677))

(declare-fun m!2638857 () Bool)

(assert (=> b!2196452 m!2638857))

(assert (=> b!2196452 m!2638857))

(declare-fun m!2638859 () Bool)

(assert (=> b!2196452 m!2638859))

(assert (=> b!2196254 d!656990))

(declare-fun d!656992 () Bool)

(declare-fun lt!821624 () Int)

(assert (=> d!656992 (= lt!821624 (size!19928 (list!9829 totalInput!923)))))

(declare-fun size!19931 (Conc!8317) Int)

(assert (=> d!656992 (= lt!821624 (size!19931 (c!349747 totalInput!923)))))

(assert (=> d!656992 (= (size!19929 totalInput!923) lt!821624)))

(declare-fun bs!448980 () Bool)

(assert (= bs!448980 d!656992))

(assert (=> bs!448980 m!2638673))

(assert (=> bs!448980 m!2638673))

(assert (=> bs!448980 m!2638675))

(declare-fun m!2638861 () Bool)

(assert (=> bs!448980 m!2638861))

(assert (=> b!2196258 d!656992))

(declare-fun bs!448981 () Bool)

(declare-fun d!656994 () Bool)

(assert (= bs!448981 (and d!656994 d!656958)))

(declare-fun lambda!82626 () Int)

(assert (=> bs!448981 (= lambda!82626 lambda!82602)))

(declare-fun bs!448982 () Bool)

(assert (= bs!448982 (and d!656994 d!656988)))

(assert (=> bs!448982 (not (= lambda!82626 lambda!82623))))

(declare-fun bs!448983 () Bool)

(assert (= bs!448983 (and d!656994 b!2196445)))

(assert (=> bs!448983 (not (= lambda!82626 lambda!82624))))

(declare-fun bs!448984 () Bool)

(assert (= bs!448984 (and d!656994 b!2196446)))

(assert (=> bs!448984 (not (= lambda!82626 lambda!82625))))

(assert (=> d!656994 (= (nullableZipper!461 lt!821526) (exists!813 lt!821526 lambda!82626))))

(declare-fun bs!448985 () Bool)

(assert (= bs!448985 d!656994))

(declare-fun m!2638863 () Bool)

(assert (=> bs!448985 m!2638863))

(assert (=> b!2196256 d!656994))

(declare-fun d!656996 () Bool)

(declare-fun lt!821627 () C!12508)

(declare-fun apply!6252 (List!25649 Int) C!12508)

(assert (=> d!656996 (= lt!821627 (apply!6252 (list!9829 totalInput!923) from!1114))))

(declare-fun apply!6253 (Conc!8317 Int) C!12508)

(assert (=> d!656996 (= lt!821627 (apply!6253 (c!349747 totalInput!923) from!1114))))

(declare-fun e!1403728 () Bool)

(assert (=> d!656996 e!1403728))

(declare-fun res!944286 () Bool)

(assert (=> d!656996 (=> (not res!944286) (not e!1403728))))

(assert (=> d!656996 (= res!944286 (<= 0 from!1114))))

(assert (=> d!656996 (= (apply!6249 totalInput!923 from!1114) lt!821627)))

(declare-fun b!2196455 () Bool)

(assert (=> b!2196455 (= e!1403728 (< from!1114 (size!19929 totalInput!923)))))

(assert (= (and d!656996 res!944286) b!2196455))

(assert (=> d!656996 m!2638673))

(assert (=> d!656996 m!2638673))

(declare-fun m!2638865 () Bool)

(assert (=> d!656996 m!2638865))

(declare-fun m!2638867 () Bool)

(assert (=> d!656996 m!2638867))

(assert (=> b!2196455 m!2638683))

(assert (=> b!2196256 d!656996))

(declare-fun d!656998 () Bool)

(declare-fun lt!821633 () Int)

(assert (=> d!656998 (and (>= lt!821633 (- 1)) (< lt!821633 lt!821529) (>= lt!821633 lastNullablePos!193) (or (= lt!821633 lastNullablePos!193) (>= lt!821633 from!1114)))))

(declare-fun e!1403737 () Int)

(assert (=> d!656998 (= lt!821633 e!1403737)))

(declare-fun c!349843 () Bool)

(declare-fun e!1403736 () Bool)

(assert (=> d!656998 (= c!349843 e!1403736)))

(declare-fun res!944289 () Bool)

(assert (=> d!656998 (=> res!944289 e!1403736)))

(assert (=> d!656998 (= res!944289 (= from!1114 lt!821529))))

(assert (=> d!656998 (and (>= from!1114 0) (<= from!1114 lt!821529))))

(assert (=> d!656998 (= (furthestNullablePosition!349 z!3955 from!1114 totalInput!923 lt!821529 lastNullablePos!193) lt!821633)))

(declare-fun b!2196466 () Bool)

(assert (=> b!2196466 (= e!1403736 (lostCauseZipper!297 z!3955))))

(declare-fun e!1403735 () Int)

(declare-fun lt!821632 () (InoxSet Context!3502))

(declare-fun b!2196467 () Bool)

(assert (=> b!2196467 (= e!1403737 (furthestNullablePosition!349 lt!821632 (+ from!1114 1) totalInput!923 lt!821529 e!1403735))))

(assert (=> b!2196467 (= lt!821632 (derivationStepZipper!253 z!3955 (apply!6249 totalInput!923 from!1114)))))

(declare-fun c!349842 () Bool)

(assert (=> b!2196467 (= c!349842 (nullableZipper!461 lt!821632))))

(declare-fun b!2196468 () Bool)

(assert (=> b!2196468 (= e!1403735 lastNullablePos!193)))

(declare-fun b!2196469 () Bool)

(assert (=> b!2196469 (= e!1403735 from!1114)))

(declare-fun b!2196470 () Bool)

(assert (=> b!2196470 (= e!1403737 lastNullablePos!193)))

(assert (= (and d!656998 (not res!944289)) b!2196466))

(assert (= (and d!656998 c!349843) b!2196470))

(assert (= (and d!656998 (not c!349843)) b!2196467))

(assert (= (and b!2196467 c!349842) b!2196469))

(assert (= (and b!2196467 (not c!349842)) b!2196468))

(assert (=> b!2196466 m!2638685))

(declare-fun m!2638869 () Bool)

(assert (=> b!2196467 m!2638869))

(assert (=> b!2196467 m!2638697))

(assert (=> b!2196467 m!2638697))

(assert (=> b!2196467 m!2638703))

(declare-fun m!2638871 () Bool)

(assert (=> b!2196467 m!2638871))

(assert (=> b!2196256 d!656998))

(declare-fun d!657000 () Bool)

(assert (=> d!657000 true))

(declare-fun lambda!82629 () Int)

(declare-fun flatMap!152 ((InoxSet Context!3502) Int) (InoxSet Context!3502))

(assert (=> d!657000 (= (derivationStepZipper!253 z!3955 (apply!6249 totalInput!923 from!1114)) (flatMap!152 z!3955 lambda!82629))))

(declare-fun bs!448986 () Bool)

(assert (= bs!448986 d!657000))

(declare-fun m!2638873 () Bool)

(assert (=> bs!448986 m!2638873))

(assert (=> b!2196256 d!657000))

(declare-fun lt!821635 () Int)

(declare-fun d!657002 () Bool)

(assert (=> d!657002 (and (>= lt!821635 (- 1)) (< lt!821635 lt!821529) (>= lt!821635 lt!821528) (or (= lt!821635 lt!821528) (>= lt!821635 (+ 1 from!1114))))))

(declare-fun e!1403740 () Int)

(assert (=> d!657002 (= lt!821635 e!1403740)))

(declare-fun c!349847 () Bool)

(declare-fun e!1403739 () Bool)

(assert (=> d!657002 (= c!349847 e!1403739)))

(declare-fun res!944290 () Bool)

(assert (=> d!657002 (=> res!944290 e!1403739)))

(assert (=> d!657002 (= res!944290 (= (+ 1 from!1114) lt!821529))))

(assert (=> d!657002 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821529))))

(assert (=> d!657002 (= (furthestNullablePosition!349 lt!821526 (+ 1 from!1114) totalInput!923 lt!821529 lt!821528) lt!821635)))

(declare-fun b!2196473 () Bool)

(assert (=> b!2196473 (= e!1403739 (lostCauseZipper!297 lt!821526))))

(declare-fun b!2196474 () Bool)

(declare-fun e!1403738 () Int)

(declare-fun lt!821634 () (InoxSet Context!3502))

(assert (=> b!2196474 (= e!1403740 (furthestNullablePosition!349 lt!821634 (+ 1 from!1114 1) totalInput!923 lt!821529 e!1403738))))

(assert (=> b!2196474 (= lt!821634 (derivationStepZipper!253 lt!821526 (apply!6249 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349846 () Bool)

(assert (=> b!2196474 (= c!349846 (nullableZipper!461 lt!821634))))

(declare-fun b!2196475 () Bool)

(assert (=> b!2196475 (= e!1403738 lt!821528)))

(declare-fun b!2196476 () Bool)

(assert (=> b!2196476 (= e!1403738 (+ 1 from!1114))))

(declare-fun b!2196477 () Bool)

(assert (=> b!2196477 (= e!1403740 lt!821528)))

(assert (= (and d!657002 (not res!944290)) b!2196473))

(assert (= (and d!657002 c!349847) b!2196477))

(assert (= (and d!657002 (not c!349847)) b!2196474))

(assert (= (and b!2196474 c!349846) b!2196476))

(assert (= (and b!2196474 (not c!349846)) b!2196475))

(declare-fun m!2638875 () Bool)

(assert (=> b!2196473 m!2638875))

(declare-fun m!2638877 () Bool)

(assert (=> b!2196474 m!2638877))

(declare-fun m!2638879 () Bool)

(assert (=> b!2196474 m!2638879))

(assert (=> b!2196474 m!2638879))

(declare-fun m!2638881 () Bool)

(assert (=> b!2196474 m!2638881))

(declare-fun m!2638883 () Bool)

(assert (=> b!2196474 m!2638883))

(assert (=> b!2196256 d!657002))

(declare-fun d!657004 () Bool)

(declare-fun lt!821638 () Int)

(assert (=> d!657004 (>= lt!821638 0)))

(declare-fun e!1403743 () Int)

(assert (=> d!657004 (= lt!821638 e!1403743)))

(declare-fun c!349850 () Bool)

(assert (=> d!657004 (= c!349850 ((_ is Nil!25565) (list!9829 totalInput!923)))))

(assert (=> d!657004 (= (size!19928 (list!9829 totalInput!923)) lt!821638)))

(declare-fun b!2196482 () Bool)

(assert (=> b!2196482 (= e!1403743 0)))

(declare-fun b!2196483 () Bool)

(assert (=> b!2196483 (= e!1403743 (+ 1 (size!19928 (t!198255 (list!9829 totalInput!923)))))))

(assert (= (and d!657004 c!349850) b!2196482))

(assert (= (and d!657004 (not c!349850)) b!2196483))

(declare-fun m!2638885 () Bool)

(assert (=> b!2196483 m!2638885))

(assert (=> b!2196251 d!657004))

(assert (=> b!2196251 d!656956))

(declare-fun d!657006 () Bool)

(declare-fun c!349853 () Bool)

(assert (=> d!657006 (= c!349853 ((_ is Node!8317) (c!349747 totalInput!923)))))

(declare-fun e!1403748 () Bool)

(assert (=> d!657006 (= (inv!34253 (c!349747 totalInput!923)) e!1403748)))

(declare-fun b!2196490 () Bool)

(declare-fun inv!34258 (Conc!8317) Bool)

(assert (=> b!2196490 (= e!1403748 (inv!34258 (c!349747 totalInput!923)))))

(declare-fun b!2196491 () Bool)

(declare-fun e!1403749 () Bool)

(assert (=> b!2196491 (= e!1403748 e!1403749)))

(declare-fun res!944293 () Bool)

(assert (=> b!2196491 (= res!944293 (not ((_ is Leaf!12175) (c!349747 totalInput!923))))))

(assert (=> b!2196491 (=> res!944293 e!1403749)))

(declare-fun b!2196492 () Bool)

(declare-fun inv!34259 (Conc!8317) Bool)

(assert (=> b!2196492 (= e!1403749 (inv!34259 (c!349747 totalInput!923)))))

(assert (= (and d!657006 c!349853) b!2196490))

(assert (= (and d!657006 (not c!349853)) b!2196491))

(assert (= (and b!2196491 (not res!944293)) b!2196492))

(declare-fun m!2638887 () Bool)

(assert (=> b!2196490 m!2638887))

(declare-fun m!2638889 () Bool)

(assert (=> b!2196492 m!2638889))

(assert (=> b!2196255 d!657006))

(declare-fun b!2196497 () Bool)

(declare-fun e!1403752 () Bool)

(declare-fun tp!684102 () Bool)

(declare-fun tp!684103 () Bool)

(assert (=> b!2196497 (= e!1403752 (and tp!684102 tp!684103))))

(assert (=> b!2196257 (= tp!684076 e!1403752)))

(assert (= (and b!2196257 ((_ is Cons!25564) (exprs!2251 setElem!18812))) b!2196497))

(declare-fun condSetEmpty!18818 () Bool)

(assert (=> setNonEmpty!18812 (= condSetEmpty!18818 (= setRest!18812 ((as const (Array Context!3502 Bool)) false)))))

(declare-fun setRes!18818 () Bool)

(assert (=> setNonEmpty!18812 (= tp!684074 setRes!18818)))

(declare-fun setIsEmpty!18818 () Bool)

(assert (=> setIsEmpty!18818 setRes!18818))

(declare-fun setNonEmpty!18818 () Bool)

(declare-fun setElem!18818 () Context!3502)

(declare-fun e!1403755 () Bool)

(declare-fun tp!684109 () Bool)

(assert (=> setNonEmpty!18818 (= setRes!18818 (and tp!684109 (inv!34252 setElem!18818) e!1403755))))

(declare-fun setRest!18818 () (InoxSet Context!3502))

(assert (=> setNonEmpty!18818 (= setRest!18812 ((_ map or) (store ((as const (Array Context!3502 Bool)) false) setElem!18818 true) setRest!18818))))

(declare-fun b!2196502 () Bool)

(declare-fun tp!684108 () Bool)

(assert (=> b!2196502 (= e!1403755 tp!684108)))

(assert (= (and setNonEmpty!18812 condSetEmpty!18818) setIsEmpty!18818))

(assert (= (and setNonEmpty!18812 (not condSetEmpty!18818)) setNonEmpty!18818))

(assert (= setNonEmpty!18818 b!2196502))

(declare-fun m!2638891 () Bool)

(assert (=> setNonEmpty!18818 m!2638891))

(declare-fun e!1403761 () Bool)

(declare-fun tp!684116 () Bool)

(declare-fun b!2196511 () Bool)

(declare-fun tp!684117 () Bool)

(assert (=> b!2196511 (= e!1403761 (and (inv!34253 (left!19626 (c!349747 totalInput!923))) tp!684117 (inv!34253 (right!19956 (c!349747 totalInput!923))) tp!684116))))

(declare-fun b!2196513 () Bool)

(declare-fun e!1403760 () Bool)

(declare-fun tp!684118 () Bool)

(assert (=> b!2196513 (= e!1403760 tp!684118)))

(declare-fun b!2196512 () Bool)

(declare-fun inv!34260 (IArray!16639) Bool)

(assert (=> b!2196512 (= e!1403761 (and (inv!34260 (xs!11259 (c!349747 totalInput!923))) e!1403760))))

(assert (=> b!2196255 (= tp!684075 (and (inv!34253 (c!349747 totalInput!923)) e!1403761))))

(assert (= (and b!2196255 ((_ is Node!8317) (c!349747 totalInput!923))) b!2196511))

(assert (= b!2196512 b!2196513))

(assert (= (and b!2196255 ((_ is Leaf!12175) (c!349747 totalInput!923))) b!2196512))

(declare-fun m!2638893 () Bool)

(assert (=> b!2196511 m!2638893))

(declare-fun m!2638895 () Bool)

(assert (=> b!2196511 m!2638895))

(declare-fun m!2638897 () Bool)

(assert (=> b!2196512 m!2638897))

(assert (=> b!2196255 m!2638687))

(check-sat (not b!2196286) (not d!656994) (not d!656992) (not b!2196512) (not b!2196455) (not b!2196467) (not b!2196483) (not b!2196497) (not d!656940) (not d!656996) (not b!2196473) (not b!2196511) (not bm!131980) (not b!2196292) (not b!2196255) (not b!2196451) (not b!2196340) (not b!2196342) (not d!656988) (not d!656956) (not b!2196265) (not b!2196452) (not setNonEmpty!18818) (not b!2196288) (not d!656982) (not b!2196513) (not b!2196445) (not b!2196490) (not b!2196502) (not d!656942) (not b!2196492) (not b!2196290) (not d!656950) (not b!2196466) (not b!2196264) (not bm!131966) (not d!656986) (not d!656958) (not b!2196446) (not b!2196474) (not bm!131981) (not d!657000) (not d!656990))
(check-sat)
