; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531672 () Bool)

(assert start!531672)

(declare-fun b!5028119 () Bool)

(declare-fun e!3141055 () Bool)

(declare-fun e!3141056 () Bool)

(assert (=> b!5028119 (= e!3141055 e!3141056)))

(declare-fun res!2143351 () Bool)

(assert (=> b!5028119 (=> res!2143351 e!3141056)))

(declare-datatypes ((C!28108 0))(
  ( (C!28109 (val!23430 Int)) )
))
(declare-datatypes ((List!58317 0))(
  ( (Nil!58193) (Cons!58193 (h!64641 C!28108) (t!370725 List!58317)) )
))
(declare-fun lt!2081025 () List!58317)

(declare-fun lt!2081015 () List!58317)

(assert (=> b!5028119 (= res!2143351 (not (= lt!2081025 lt!2081015)))))

(declare-fun lt!2081019 () C!28108)

(declare-fun lt!2081018 () List!58317)

(assert (=> b!5028119 (= lt!2081015 (Cons!58193 lt!2081019 lt!2081018))))

(declare-fun lt!2081022 () List!58317)

(declare-fun from!1228 () Int)

(declare-fun apply!14183 (List!58317 Int) C!28108)

(assert (=> b!5028119 (= (Cons!58193 (apply!14183 lt!2081022 from!1228) lt!2081018) lt!2081025)))

(declare-datatypes ((Unit!149387 0))(
  ( (Unit!149388) )
))
(declare-fun lt!2081014 () Unit!149387)

(declare-fun lt!2081024 () Int)

(declare-fun lemmaDropTakeAddOneLeft!98 (List!58317 Int Int) Unit!149387)

(assert (=> b!5028119 (= lt!2081014 (lemmaDropTakeAddOneLeft!98 lt!2081022 from!1228 lt!2081024))))

(declare-fun lt!2081023 () List!58317)

(declare-fun take!776 (List!58317 Int) List!58317)

(assert (=> b!5028119 (= lt!2081025 (take!776 lt!2081023 (+ 1 lt!2081024)))))

(declare-fun drop!2576 (List!58317 Int) List!58317)

(assert (=> b!5028119 (= lt!2081023 (drop!2576 lt!2081022 from!1228))))

(declare-fun b!5028121 () Bool)

(declare-fun e!3141061 () Bool)

(assert (=> b!5028121 (= e!3141056 e!3141061)))

(declare-fun res!2143353 () Bool)

(assert (=> b!5028121 (=> res!2143353 e!3141061)))

(declare-fun lt!2081020 () Int)

(assert (=> b!5028121 (= res!2143353 (= lt!2081020 0))))

(declare-datatypes ((IArray!30957 0))(
  ( (IArray!30958 (innerList!15536 List!58317)) )
))
(declare-datatypes ((Conc!15448 0))(
  ( (Node!15448 (left!42571 Conc!15448) (right!42901 Conc!15448) (csize!31126 Int) (cheight!15659 Int)) (Leaf!25626 (xs!18774 IArray!30957) (csize!31127 Int)) (Empty!15448) )
))
(declare-datatypes ((BalanceConc!30326 0))(
  ( (BalanceConc!30327 (c!860351 Conc!15448)) )
))
(declare-fun totalInput!1141 () BalanceConc!30326)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13929 0))(
  ( (ElementMatch!13929 (c!860352 C!28108)) (Concat!22722 (regOne!28370 Regex!13929) (regTwo!28370 Regex!13929)) (EmptyExpr!13929) (Star!13929 (reg!14258 Regex!13929)) (EmptyLang!13929) (Union!13929 (regOne!28371 Regex!13929) (regTwo!28371 Regex!13929)) )
))
(declare-datatypes ((List!58318 0))(
  ( (Nil!58194) (Cons!58194 (h!64642 Regex!13929) (t!370726 List!58318)) )
))
(declare-datatypes ((Context!6708 0))(
  ( (Context!6709 (exprs!3854 List!58318)) )
))
(declare-fun z!4747 () (InoxSet Context!6708))

(declare-fun lt!2081021 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!243 ((InoxSet Context!6708) Int BalanceConc!30326 Int) Int)

(assert (=> b!5028121 (= lt!2081020 (findLongestMatchInnerZipperFastV2!243 z!4747 from!1228 totalInput!1141 lt!2081021))))

(declare-fun b!5028122 () Bool)

(declare-fun res!2143349 () Bool)

(assert (=> b!5028122 (=> res!2143349 e!3141056)))

(declare-fun matchZipper!679 ((InoxSet Context!6708) List!58317) Bool)

(assert (=> b!5028122 (= res!2143349 (not (matchZipper!679 z!4747 lt!2081015)))))

(declare-fun b!5028123 () Bool)

(declare-fun e!3141058 () Bool)

(declare-fun tp!1409120 () Bool)

(assert (=> b!5028123 (= e!3141058 tp!1409120)))

(declare-fun setElem!28956 () Context!6708)

(declare-fun tp!1409121 () Bool)

(declare-fun setNonEmpty!28956 () Bool)

(declare-fun setRes!28956 () Bool)

(declare-fun inv!76767 (Context!6708) Bool)

(assert (=> setNonEmpty!28956 (= setRes!28956 (and tp!1409121 (inv!76767 setElem!28956) e!3141058))))

(declare-fun setRest!28956 () (InoxSet Context!6708))

(assert (=> setNonEmpty!28956 (= z!4747 ((_ map or) (store ((as const (Array Context!6708 Bool)) false) setElem!28956 true) setRest!28956))))

(declare-fun b!5028124 () Bool)

(declare-fun e!3141060 () Bool)

(assert (=> b!5028124 (= e!3141060 (not e!3141055))))

(declare-fun res!2143352 () Bool)

(assert (=> b!5028124 (=> res!2143352 e!3141055)))

(assert (=> b!5028124 (= res!2143352 (<= lt!2081024 0))))

(assert (=> b!5028124 (= lt!2081018 (take!776 (drop!2576 lt!2081022 (+ 1 from!1228)) lt!2081024))))

(declare-fun list!18795 (BalanceConc!30326) List!58317)

(assert (=> b!5028124 (= lt!2081022 (list!18795 totalInput!1141))))

(declare-fun e!3141054 () Bool)

(assert (=> b!5028124 e!3141054))

(declare-fun res!2143350 () Bool)

(assert (=> b!5028124 (=> res!2143350 e!3141054)))

(assert (=> b!5028124 (= res!2143350 (= lt!2081024 0))))

(declare-fun lt!2081016 () (InoxSet Context!6708))

(declare-fun lt!2081017 () Unit!149387)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!120 ((InoxSet Context!6708) Int BalanceConc!30326) Unit!149387)

(assert (=> b!5028124 (= lt!2081017 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!120 lt!2081016 (+ 1 from!1228) totalInput!1141))))

(assert (=> b!5028124 (= lt!2081024 (findLongestMatchInnerZipperFastV2!243 lt!2081016 (+ 1 from!1228) totalInput!1141 lt!2081021))))

(declare-fun derivationStepZipper!724 ((InoxSet Context!6708) C!28108) (InoxSet Context!6708))

(assert (=> b!5028124 (= lt!2081016 (derivationStepZipper!724 z!4747 lt!2081019))))

(declare-fun apply!14184 (BalanceConc!30326 Int) C!28108)

(assert (=> b!5028124 (= lt!2081019 (apply!14184 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28956 () Bool)

(assert (=> setIsEmpty!28956 setRes!28956))

(declare-fun b!5028125 () Bool)

(assert (=> b!5028125 (= e!3141061 (matchZipper!679 z!4747 (take!776 lt!2081023 lt!2081020)))))

(declare-fun b!5028126 () Bool)

(declare-fun res!2143344 () Bool)

(assert (=> b!5028126 (=> (not res!2143344) (not e!3141060))))

(assert (=> b!5028126 (= res!2143344 (not (= from!1228 lt!2081021)))))

(declare-fun b!5028120 () Bool)

(declare-fun res!2143346 () Bool)

(assert (=> b!5028120 (=> (not res!2143346) (not e!3141060))))

(declare-fun lostCauseZipper!943 ((InoxSet Context!6708)) Bool)

(assert (=> b!5028120 (= res!2143346 (not (lostCauseZipper!943 z!4747)))))

(declare-fun res!2143348 () Bool)

(declare-fun e!3141057 () Bool)

(assert (=> start!531672 (=> (not res!2143348) (not e!3141057))))

(assert (=> start!531672 (= res!2143348 (>= from!1228 0))))

(assert (=> start!531672 e!3141057))

(assert (=> start!531672 true))

(declare-fun e!3141059 () Bool)

(declare-fun inv!76768 (BalanceConc!30326) Bool)

(assert (=> start!531672 (and (inv!76768 totalInput!1141) e!3141059)))

(declare-fun condSetEmpty!28956 () Bool)

(assert (=> start!531672 (= condSetEmpty!28956 (= z!4747 ((as const (Array Context!6708 Bool)) false)))))

(assert (=> start!531672 setRes!28956))

(declare-fun b!5028127 () Bool)

(assert (=> b!5028127 (= e!3141054 (matchZipper!679 lt!2081016 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024)))))

(declare-fun b!5028128 () Bool)

(declare-fun tp!1409122 () Bool)

(declare-fun inv!76769 (Conc!15448) Bool)

(assert (=> b!5028128 (= e!3141059 (and (inv!76769 (c!860351 totalInput!1141)) tp!1409122))))

(declare-fun b!5028129 () Bool)

(assert (=> b!5028129 (= e!3141057 e!3141060)))

(declare-fun res!2143347 () Bool)

(assert (=> b!5028129 (=> (not res!2143347) (not e!3141060))))

(assert (=> b!5028129 (= res!2143347 (<= from!1228 lt!2081021))))

(declare-fun size!38730 (BalanceConc!30326) Int)

(assert (=> b!5028129 (= lt!2081021 (size!38730 totalInput!1141))))

(declare-fun b!5028130 () Bool)

(declare-fun res!2143345 () Bool)

(assert (=> b!5028130 (=> res!2143345 e!3141056)))

(assert (=> b!5028130 (= res!2143345 (not (matchZipper!679 lt!2081016 lt!2081018)))))

(assert (= (and start!531672 res!2143348) b!5028129))

(assert (= (and b!5028129 res!2143347) b!5028120))

(assert (= (and b!5028120 res!2143346) b!5028126))

(assert (= (and b!5028126 res!2143344) b!5028124))

(assert (= (and b!5028124 (not res!2143350)) b!5028127))

(assert (= (and b!5028124 (not res!2143352)) b!5028119))

(assert (= (and b!5028119 (not res!2143351)) b!5028130))

(assert (= (and b!5028130 (not res!2143345)) b!5028122))

(assert (= (and b!5028122 (not res!2143349)) b!5028121))

(assert (= (and b!5028121 (not res!2143353)) b!5028125))

(assert (= start!531672 b!5028128))

(assert (= (and start!531672 condSetEmpty!28956) setIsEmpty!28956))

(assert (= (and start!531672 (not condSetEmpty!28956)) setNonEmpty!28956))

(assert (= setNonEmpty!28956 b!5028123))

(declare-fun m!6063378 () Bool)

(assert (=> b!5028120 m!6063378))

(declare-fun m!6063380 () Bool)

(assert (=> start!531672 m!6063380))

(declare-fun m!6063382 () Bool)

(assert (=> b!5028124 m!6063382))

(declare-fun m!6063384 () Bool)

(assert (=> b!5028124 m!6063384))

(declare-fun m!6063386 () Bool)

(assert (=> b!5028124 m!6063386))

(declare-fun m!6063388 () Bool)

(assert (=> b!5028124 m!6063388))

(declare-fun m!6063390 () Bool)

(assert (=> b!5028124 m!6063390))

(declare-fun m!6063392 () Bool)

(assert (=> b!5028124 m!6063392))

(assert (=> b!5028124 m!6063390))

(declare-fun m!6063394 () Bool)

(assert (=> b!5028124 m!6063394))

(declare-fun m!6063396 () Bool)

(assert (=> b!5028119 m!6063396))

(declare-fun m!6063398 () Bool)

(assert (=> b!5028119 m!6063398))

(declare-fun m!6063400 () Bool)

(assert (=> b!5028119 m!6063400))

(declare-fun m!6063402 () Bool)

(assert (=> b!5028119 m!6063402))

(assert (=> b!5028127 m!6063386))

(assert (=> b!5028127 m!6063386))

(declare-fun m!6063404 () Bool)

(assert (=> b!5028127 m!6063404))

(assert (=> b!5028127 m!6063404))

(declare-fun m!6063406 () Bool)

(assert (=> b!5028127 m!6063406))

(assert (=> b!5028127 m!6063406))

(declare-fun m!6063408 () Bool)

(assert (=> b!5028127 m!6063408))

(declare-fun m!6063410 () Bool)

(assert (=> b!5028129 m!6063410))

(declare-fun m!6063412 () Bool)

(assert (=> b!5028130 m!6063412))

(declare-fun m!6063414 () Bool)

(assert (=> b!5028121 m!6063414))

(declare-fun m!6063416 () Bool)

(assert (=> b!5028122 m!6063416))

(declare-fun m!6063418 () Bool)

(assert (=> b!5028125 m!6063418))

(assert (=> b!5028125 m!6063418))

(declare-fun m!6063420 () Bool)

(assert (=> b!5028125 m!6063420))

(declare-fun m!6063422 () Bool)

(assert (=> b!5028128 m!6063422))

(declare-fun m!6063424 () Bool)

(assert (=> setNonEmpty!28956 m!6063424))

(check-sat (not b!5028129) (not b!5028130) (not b!5028119) (not setNonEmpty!28956) (not b!5028128) (not b!5028125) (not b!5028127) (not start!531672) (not b!5028123) (not b!5028122) (not b!5028120) (not b!5028121) (not b!5028124))
(check-sat)
(get-model)

(declare-fun b!5028145 () Bool)

(declare-fun e!3141072 () Int)

(declare-fun size!38731 (List!58317) Int)

(assert (=> b!5028145 (= e!3141072 (size!38731 (drop!2576 lt!2081022 (+ 1 from!1228))))))

(declare-fun e!3141073 () List!58317)

(declare-fun b!5028146 () Bool)

(assert (=> b!5028146 (= e!3141073 (Cons!58193 (h!64641 (drop!2576 lt!2081022 (+ 1 from!1228))) (take!776 (t!370725 (drop!2576 lt!2081022 (+ 1 from!1228))) (- lt!2081024 1))))))

(declare-fun b!5028147 () Bool)

(declare-fun e!3141071 () Bool)

(declare-fun lt!2081028 () List!58317)

(declare-fun e!3141070 () Int)

(assert (=> b!5028147 (= e!3141071 (= (size!38731 lt!2081028) e!3141070))))

(declare-fun c!860361 () Bool)

(assert (=> b!5028147 (= c!860361 (<= lt!2081024 0))))

(declare-fun d!1618172 () Bool)

(assert (=> d!1618172 e!3141071))

(declare-fun res!2143356 () Bool)

(assert (=> d!1618172 (=> (not res!2143356) (not e!3141071))))

(declare-fun content!10315 (List!58317) (InoxSet C!28108))

(assert (=> d!1618172 (= res!2143356 (= ((_ map implies) (content!10315 lt!2081028) (content!10315 (drop!2576 lt!2081022 (+ 1 from!1228)))) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618172 (= lt!2081028 e!3141073)))

(declare-fun c!860359 () Bool)

(get-info :version)

(assert (=> d!1618172 (= c!860359 (or ((_ is Nil!58193) (drop!2576 lt!2081022 (+ 1 from!1228))) (<= lt!2081024 0)))))

(assert (=> d!1618172 (= (take!776 (drop!2576 lt!2081022 (+ 1 from!1228)) lt!2081024) lt!2081028)))

(declare-fun b!5028148 () Bool)

(assert (=> b!5028148 (= e!3141072 lt!2081024)))

(declare-fun b!5028149 () Bool)

(assert (=> b!5028149 (= e!3141070 e!3141072)))

(declare-fun c!860360 () Bool)

(assert (=> b!5028149 (= c!860360 (>= lt!2081024 (size!38731 (drop!2576 lt!2081022 (+ 1 from!1228)))))))

(declare-fun b!5028150 () Bool)

(assert (=> b!5028150 (= e!3141073 Nil!58193)))

(declare-fun b!5028151 () Bool)

(assert (=> b!5028151 (= e!3141070 0)))

(assert (= (and d!1618172 c!860359) b!5028150))

(assert (= (and d!1618172 (not c!860359)) b!5028146))

(assert (= (and d!1618172 res!2143356) b!5028147))

(assert (= (and b!5028147 c!860361) b!5028151))

(assert (= (and b!5028147 (not c!860361)) b!5028149))

(assert (= (and b!5028149 c!860360) b!5028145))

(assert (= (and b!5028149 (not c!860360)) b!5028148))

(assert (=> b!5028149 m!6063390))

(declare-fun m!6063426 () Bool)

(assert (=> b!5028149 m!6063426))

(assert (=> b!5028145 m!6063390))

(assert (=> b!5028145 m!6063426))

(declare-fun m!6063428 () Bool)

(assert (=> b!5028147 m!6063428))

(declare-fun m!6063430 () Bool)

(assert (=> b!5028146 m!6063430))

(declare-fun m!6063432 () Bool)

(assert (=> d!1618172 m!6063432))

(assert (=> d!1618172 m!6063390))

(declare-fun m!6063434 () Bool)

(assert (=> d!1618172 m!6063434))

(assert (=> b!5028124 d!1618172))

(declare-fun d!1618174 () Bool)

(assert (=> d!1618174 true))

(declare-fun lambda!249457 () Int)

(declare-fun flatMap!309 ((InoxSet Context!6708) Int) (InoxSet Context!6708))

(assert (=> d!1618174 (= (derivationStepZipper!724 z!4747 lt!2081019) (flatMap!309 z!4747 lambda!249457))))

(declare-fun bs!1188222 () Bool)

(assert (= bs!1188222 d!1618174))

(declare-fun m!6063498 () Bool)

(assert (=> bs!1188222 m!6063498))

(assert (=> b!5028124 d!1618174))

(declare-fun d!1618194 () Bool)

(declare-fun list!18796 (Conc!15448) List!58317)

(assert (=> d!1618194 (= (list!18795 totalInput!1141) (list!18796 (c!860351 totalInput!1141)))))

(declare-fun bs!1188223 () Bool)

(assert (= bs!1188223 d!1618194))

(declare-fun m!6063500 () Bool)

(assert (=> bs!1188223 m!6063500))

(assert (=> b!5028124 d!1618194))

(declare-fun bm!350851 () Bool)

(declare-fun call!350856 () Int)

(assert (=> bm!350851 (= call!350856 (size!38731 lt!2081022))))

(declare-fun b!5028271 () Bool)

(declare-fun e!3141144 () List!58317)

(declare-fun e!3141145 () List!58317)

(assert (=> b!5028271 (= e!3141144 e!3141145)))

(declare-fun c!860416 () Bool)

(assert (=> b!5028271 (= c!860416 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028272 () Bool)

(declare-fun e!3141148 () Int)

(assert (=> b!5028272 (= e!3141148 0)))

(declare-fun b!5028273 () Bool)

(declare-fun e!3141146 () Bool)

(declare-fun lt!2081055 () List!58317)

(declare-fun e!3141147 () Int)

(assert (=> b!5028273 (= e!3141146 (= (size!38731 lt!2081055) e!3141147))))

(declare-fun c!860415 () Bool)

(assert (=> b!5028273 (= c!860415 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028274 () Bool)

(assert (=> b!5028274 (= e!3141147 call!350856)))

(declare-fun b!5028275 () Bool)

(assert (=> b!5028275 (= e!3141147 e!3141148)))

(declare-fun c!860414 () Bool)

(assert (=> b!5028275 (= c!860414 (>= (+ 1 from!1228) call!350856))))

(declare-fun b!5028276 () Bool)

(assert (=> b!5028276 (= e!3141144 Nil!58193)))

(declare-fun b!5028277 () Bool)

(assert (=> b!5028277 (= e!3141148 (- call!350856 (+ 1 from!1228)))))

(declare-fun d!1618196 () Bool)

(assert (=> d!1618196 e!3141146))

(declare-fun res!2143380 () Bool)

(assert (=> d!1618196 (=> (not res!2143380) (not e!3141146))))

(assert (=> d!1618196 (= res!2143380 (= ((_ map implies) (content!10315 lt!2081055) (content!10315 lt!2081022)) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618196 (= lt!2081055 e!3141144)))

(declare-fun c!860413 () Bool)

(assert (=> d!1618196 (= c!860413 ((_ is Nil!58193) lt!2081022))))

(assert (=> d!1618196 (= (drop!2576 lt!2081022 (+ 1 from!1228)) lt!2081055)))

(declare-fun b!5028278 () Bool)

(assert (=> b!5028278 (= e!3141145 (drop!2576 (t!370725 lt!2081022) (- (+ 1 from!1228) 1)))))

(declare-fun b!5028279 () Bool)

(assert (=> b!5028279 (= e!3141145 lt!2081022)))

(assert (= (and d!1618196 c!860413) b!5028276))

(assert (= (and d!1618196 (not c!860413)) b!5028271))

(assert (= (and b!5028271 c!860416) b!5028279))

(assert (= (and b!5028271 (not c!860416)) b!5028278))

(assert (= (and d!1618196 res!2143380) b!5028273))

(assert (= (and b!5028273 c!860415) b!5028274))

(assert (= (and b!5028273 (not c!860415)) b!5028275))

(assert (= (and b!5028275 c!860414) b!5028272))

(assert (= (and b!5028275 (not c!860414)) b!5028277))

(assert (= (or b!5028274 b!5028275 b!5028277) bm!350851))

(declare-fun m!6063502 () Bool)

(assert (=> bm!350851 m!6063502))

(declare-fun m!6063504 () Bool)

(assert (=> b!5028273 m!6063504))

(declare-fun m!6063506 () Bool)

(assert (=> d!1618196 m!6063506))

(declare-fun m!6063508 () Bool)

(assert (=> d!1618196 m!6063508))

(declare-fun m!6063510 () Bool)

(assert (=> b!5028278 m!6063510))

(assert (=> b!5028124 d!1618196))

(declare-fun d!1618198 () Bool)

(declare-fun lt!2081058 () C!28108)

(assert (=> d!1618198 (= lt!2081058 (apply!14183 (list!18795 totalInput!1141) from!1228))))

(declare-fun apply!14185 (Conc!15448 Int) C!28108)

(assert (=> d!1618198 (= lt!2081058 (apply!14185 (c!860351 totalInput!1141) from!1228))))

(declare-fun e!3141151 () Bool)

(assert (=> d!1618198 e!3141151))

(declare-fun res!2143383 () Bool)

(assert (=> d!1618198 (=> (not res!2143383) (not e!3141151))))

(assert (=> d!1618198 (= res!2143383 (<= 0 from!1228))))

(assert (=> d!1618198 (= (apply!14184 totalInput!1141 from!1228) lt!2081058)))

(declare-fun b!5028282 () Bool)

(assert (=> b!5028282 (= e!3141151 (< from!1228 (size!38730 totalInput!1141)))))

(assert (= (and d!1618198 res!2143383) b!5028282))

(assert (=> d!1618198 m!6063386))

(assert (=> d!1618198 m!6063386))

(declare-fun m!6063512 () Bool)

(assert (=> d!1618198 m!6063512))

(declare-fun m!6063514 () Bool)

(assert (=> d!1618198 m!6063514))

(assert (=> b!5028282 m!6063410))

(assert (=> b!5028124 d!1618198))

(declare-fun d!1618200 () Bool)

(declare-fun e!3141157 () Bool)

(assert (=> d!1618200 e!3141157))

(declare-fun res!2143388 () Bool)

(assert (=> d!1618200 (=> res!2143388 e!3141157)))

(assert (=> d!1618200 (= res!2143388 (= (findLongestMatchInnerZipperFastV2!243 lt!2081016 (+ 1 from!1228) totalInput!1141 (size!38730 totalInput!1141)) 0))))

(declare-fun lt!2081061 () Unit!149387)

(declare-fun choose!37206 ((InoxSet Context!6708) Int BalanceConc!30326) Unit!149387)

(assert (=> d!1618200 (= lt!2081061 (choose!37206 lt!2081016 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3141156 () Bool)

(assert (=> d!1618200 e!3141156))

(declare-fun res!2143389 () Bool)

(assert (=> d!1618200 (=> (not res!2143389) (not e!3141156))))

(assert (=> d!1618200 (= res!2143389 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618200 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!120 lt!2081016 (+ 1 from!1228) totalInput!1141) lt!2081061)))

(declare-fun b!5028287 () Bool)

(assert (=> b!5028287 (= e!3141156 (<= (+ 1 from!1228) (size!38730 totalInput!1141)))))

(declare-fun b!5028288 () Bool)

(assert (=> b!5028288 (= e!3141157 (matchZipper!679 lt!2081016 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!243 lt!2081016 (+ 1 from!1228) totalInput!1141 (size!38730 totalInput!1141)))))))

(assert (= (and d!1618200 res!2143389) b!5028287))

(assert (= (and d!1618200 (not res!2143388)) b!5028288))

(assert (=> d!1618200 m!6063410))

(assert (=> d!1618200 m!6063410))

(declare-fun m!6063516 () Bool)

(assert (=> d!1618200 m!6063516))

(declare-fun m!6063518 () Bool)

(assert (=> d!1618200 m!6063518))

(assert (=> b!5028287 m!6063410))

(assert (=> b!5028288 m!6063386))

(assert (=> b!5028288 m!6063404))

(assert (=> b!5028288 m!6063410))

(assert (=> b!5028288 m!6063404))

(assert (=> b!5028288 m!6063516))

(declare-fun m!6063520 () Bool)

(assert (=> b!5028288 m!6063520))

(assert (=> b!5028288 m!6063386))

(assert (=> b!5028288 m!6063410))

(assert (=> b!5028288 m!6063516))

(assert (=> b!5028288 m!6063520))

(declare-fun m!6063522 () Bool)

(assert (=> b!5028288 m!6063522))

(assert (=> b!5028124 d!1618200))

(declare-fun b!5028305 () Bool)

(declare-fun e!3141171 () Int)

(assert (=> b!5028305 (= e!3141171 0)))

(declare-fun b!5028306 () Bool)

(declare-fun e!3141172 () Int)

(assert (=> b!5028306 (= e!3141171 e!3141172)))

(declare-fun lt!2081068 () (InoxSet Context!6708))

(assert (=> b!5028306 (= lt!2081068 (derivationStepZipper!724 lt!2081016 (apply!14184 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2081070 () Int)

(assert (=> b!5028306 (= lt!2081070 (findLongestMatchInnerZipperFastV2!243 lt!2081068 (+ 1 from!1228 1) totalInput!1141 lt!2081021))))

(declare-fun c!860425 () Bool)

(assert (=> b!5028306 (= c!860425 (> lt!2081070 0))))

(declare-fun b!5028307 () Bool)

(declare-fun e!3141170 () Bool)

(assert (=> b!5028307 (= e!3141170 (<= (+ 1 from!1228) (size!38730 totalInput!1141)))))

(declare-fun b!5028308 () Bool)

(declare-fun c!860424 () Bool)

(declare-fun nullableZipper!936 ((InoxSet Context!6708)) Bool)

(assert (=> b!5028308 (= c!860424 (nullableZipper!936 lt!2081068))))

(declare-fun e!3141168 () Int)

(assert (=> b!5028308 (= e!3141172 e!3141168)))

(declare-fun d!1618202 () Bool)

(declare-fun lt!2081069 () Int)

(assert (=> d!1618202 (and (>= lt!2081069 0) (<= lt!2081069 (- lt!2081021 (+ 1 from!1228))))))

(assert (=> d!1618202 (= lt!2081069 e!3141171)))

(declare-fun c!860423 () Bool)

(declare-fun e!3141169 () Bool)

(assert (=> d!1618202 (= c!860423 e!3141169)))

(declare-fun res!2143394 () Bool)

(assert (=> d!1618202 (=> res!2143394 e!3141169)))

(assert (=> d!1618202 (= res!2143394 (= (+ 1 from!1228) lt!2081021))))

(assert (=> d!1618202 e!3141170))

(declare-fun res!2143395 () Bool)

(assert (=> d!1618202 (=> (not res!2143395) (not e!3141170))))

(assert (=> d!1618202 (= res!2143395 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618202 (= (findLongestMatchInnerZipperFastV2!243 lt!2081016 (+ 1 from!1228) totalInput!1141 lt!2081021) lt!2081069)))

(declare-fun b!5028309 () Bool)

(assert (=> b!5028309 (= e!3141172 (+ 1 lt!2081070))))

(declare-fun b!5028310 () Bool)

(assert (=> b!5028310 (= e!3141169 (lostCauseZipper!943 lt!2081016))))

(declare-fun b!5028311 () Bool)

(assert (=> b!5028311 (= e!3141168 0)))

(declare-fun b!5028312 () Bool)

(assert (=> b!5028312 (= e!3141168 1)))

(assert (= (and d!1618202 res!2143395) b!5028307))

(assert (= (and d!1618202 (not res!2143394)) b!5028310))

(assert (= (and d!1618202 c!860423) b!5028305))

(assert (= (and d!1618202 (not c!860423)) b!5028306))

(assert (= (and b!5028306 c!860425) b!5028309))

(assert (= (and b!5028306 (not c!860425)) b!5028308))

(assert (= (and b!5028308 c!860424) b!5028312))

(assert (= (and b!5028308 (not c!860424)) b!5028311))

(declare-fun m!6063524 () Bool)

(assert (=> b!5028306 m!6063524))

(assert (=> b!5028306 m!6063524))

(declare-fun m!6063526 () Bool)

(assert (=> b!5028306 m!6063526))

(declare-fun m!6063528 () Bool)

(assert (=> b!5028306 m!6063528))

(assert (=> b!5028307 m!6063410))

(declare-fun m!6063530 () Bool)

(assert (=> b!5028308 m!6063530))

(declare-fun m!6063532 () Bool)

(assert (=> b!5028310 m!6063532))

(assert (=> b!5028124 d!1618202))

(declare-fun d!1618204 () Bool)

(declare-fun c!860428 () Bool)

(declare-fun isEmpty!31467 (List!58317) Bool)

(assert (=> d!1618204 (= c!860428 (isEmpty!31467 (take!776 lt!2081023 lt!2081020)))))

(declare-fun e!3141175 () Bool)

(assert (=> d!1618204 (= (matchZipper!679 z!4747 (take!776 lt!2081023 lt!2081020)) e!3141175)))

(declare-fun b!5028317 () Bool)

(assert (=> b!5028317 (= e!3141175 (nullableZipper!936 z!4747))))

(declare-fun b!5028318 () Bool)

(declare-fun head!10784 (List!58317) C!28108)

(declare-fun tail!9917 (List!58317) List!58317)

(assert (=> b!5028318 (= e!3141175 (matchZipper!679 (derivationStepZipper!724 z!4747 (head!10784 (take!776 lt!2081023 lt!2081020))) (tail!9917 (take!776 lt!2081023 lt!2081020))))))

(assert (= (and d!1618204 c!860428) b!5028317))

(assert (= (and d!1618204 (not c!860428)) b!5028318))

(assert (=> d!1618204 m!6063418))

(declare-fun m!6063534 () Bool)

(assert (=> d!1618204 m!6063534))

(declare-fun m!6063536 () Bool)

(assert (=> b!5028317 m!6063536))

(assert (=> b!5028318 m!6063418))

(declare-fun m!6063538 () Bool)

(assert (=> b!5028318 m!6063538))

(assert (=> b!5028318 m!6063538))

(declare-fun m!6063540 () Bool)

(assert (=> b!5028318 m!6063540))

(assert (=> b!5028318 m!6063418))

(declare-fun m!6063542 () Bool)

(assert (=> b!5028318 m!6063542))

(assert (=> b!5028318 m!6063540))

(assert (=> b!5028318 m!6063542))

(declare-fun m!6063544 () Bool)

(assert (=> b!5028318 m!6063544))

(assert (=> b!5028125 d!1618204))

(declare-fun b!5028319 () Bool)

(declare-fun e!3141178 () Int)

(assert (=> b!5028319 (= e!3141178 (size!38731 lt!2081023))))

(declare-fun b!5028320 () Bool)

(declare-fun e!3141179 () List!58317)

(assert (=> b!5028320 (= e!3141179 (Cons!58193 (h!64641 lt!2081023) (take!776 (t!370725 lt!2081023) (- lt!2081020 1))))))

(declare-fun b!5028321 () Bool)

(declare-fun e!3141177 () Bool)

(declare-fun lt!2081071 () List!58317)

(declare-fun e!3141176 () Int)

(assert (=> b!5028321 (= e!3141177 (= (size!38731 lt!2081071) e!3141176))))

(declare-fun c!860431 () Bool)

(assert (=> b!5028321 (= c!860431 (<= lt!2081020 0))))

(declare-fun d!1618206 () Bool)

(assert (=> d!1618206 e!3141177))

(declare-fun res!2143396 () Bool)

(assert (=> d!1618206 (=> (not res!2143396) (not e!3141177))))

(assert (=> d!1618206 (= res!2143396 (= ((_ map implies) (content!10315 lt!2081071) (content!10315 lt!2081023)) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618206 (= lt!2081071 e!3141179)))

(declare-fun c!860429 () Bool)

(assert (=> d!1618206 (= c!860429 (or ((_ is Nil!58193) lt!2081023) (<= lt!2081020 0)))))

(assert (=> d!1618206 (= (take!776 lt!2081023 lt!2081020) lt!2081071)))

(declare-fun b!5028322 () Bool)

(assert (=> b!5028322 (= e!3141178 lt!2081020)))

(declare-fun b!5028323 () Bool)

(assert (=> b!5028323 (= e!3141176 e!3141178)))

(declare-fun c!860430 () Bool)

(assert (=> b!5028323 (= c!860430 (>= lt!2081020 (size!38731 lt!2081023)))))

(declare-fun b!5028324 () Bool)

(assert (=> b!5028324 (= e!3141179 Nil!58193)))

(declare-fun b!5028325 () Bool)

(assert (=> b!5028325 (= e!3141176 0)))

(assert (= (and d!1618206 c!860429) b!5028324))

(assert (= (and d!1618206 (not c!860429)) b!5028320))

(assert (= (and d!1618206 res!2143396) b!5028321))

(assert (= (and b!5028321 c!860431) b!5028325))

(assert (= (and b!5028321 (not c!860431)) b!5028323))

(assert (= (and b!5028323 c!860430) b!5028319))

(assert (= (and b!5028323 (not c!860430)) b!5028322))

(declare-fun m!6063546 () Bool)

(assert (=> b!5028323 m!6063546))

(assert (=> b!5028319 m!6063546))

(declare-fun m!6063548 () Bool)

(assert (=> b!5028321 m!6063548))

(declare-fun m!6063550 () Bool)

(assert (=> b!5028320 m!6063550))

(declare-fun m!6063552 () Bool)

(assert (=> d!1618206 m!6063552))

(declare-fun m!6063554 () Bool)

(assert (=> d!1618206 m!6063554))

(assert (=> b!5028125 d!1618206))

(declare-fun d!1618208 () Bool)

(declare-fun c!860432 () Bool)

(assert (=> d!1618208 (= c!860432 (isEmpty!31467 lt!2081015))))

(declare-fun e!3141180 () Bool)

(assert (=> d!1618208 (= (matchZipper!679 z!4747 lt!2081015) e!3141180)))

(declare-fun b!5028326 () Bool)

(assert (=> b!5028326 (= e!3141180 (nullableZipper!936 z!4747))))

(declare-fun b!5028327 () Bool)

(assert (=> b!5028327 (= e!3141180 (matchZipper!679 (derivationStepZipper!724 z!4747 (head!10784 lt!2081015)) (tail!9917 lt!2081015)))))

(assert (= (and d!1618208 c!860432) b!5028326))

(assert (= (and d!1618208 (not c!860432)) b!5028327))

(declare-fun m!6063556 () Bool)

(assert (=> d!1618208 m!6063556))

(assert (=> b!5028326 m!6063536))

(declare-fun m!6063558 () Bool)

(assert (=> b!5028327 m!6063558))

(assert (=> b!5028327 m!6063558))

(declare-fun m!6063560 () Bool)

(assert (=> b!5028327 m!6063560))

(declare-fun m!6063562 () Bool)

(assert (=> b!5028327 m!6063562))

(assert (=> b!5028327 m!6063560))

(assert (=> b!5028327 m!6063562))

(declare-fun m!6063564 () Bool)

(assert (=> b!5028327 m!6063564))

(assert (=> b!5028122 d!1618208))

(declare-fun d!1618210 () Bool)

(declare-fun lambda!249460 () Int)

(declare-fun forall!13444 (List!58318 Int) Bool)

(assert (=> d!1618210 (= (inv!76767 setElem!28956) (forall!13444 (exprs!3854 setElem!28956) lambda!249460))))

(declare-fun bs!1188224 () Bool)

(assert (= bs!1188224 d!1618210))

(declare-fun m!6063566 () Bool)

(assert (=> bs!1188224 m!6063566))

(assert (=> setNonEmpty!28956 d!1618210))

(declare-fun d!1618212 () Bool)

(declare-fun lt!2081074 () Int)

(assert (=> d!1618212 (= lt!2081074 (size!38731 (list!18795 totalInput!1141)))))

(declare-fun size!38732 (Conc!15448) Int)

(assert (=> d!1618212 (= lt!2081074 (size!38732 (c!860351 totalInput!1141)))))

(assert (=> d!1618212 (= (size!38730 totalInput!1141) lt!2081074)))

(declare-fun bs!1188225 () Bool)

(assert (= bs!1188225 d!1618212))

(assert (=> bs!1188225 m!6063386))

(assert (=> bs!1188225 m!6063386))

(declare-fun m!6063568 () Bool)

(assert (=> bs!1188225 m!6063568))

(declare-fun m!6063570 () Bool)

(assert (=> bs!1188225 m!6063570))

(assert (=> b!5028129 d!1618212))

(declare-fun bs!1188226 () Bool)

(declare-fun b!5028332 () Bool)

(declare-fun d!1618214 () Bool)

(assert (= bs!1188226 (and b!5028332 d!1618214)))

(declare-fun lambda!249474 () Int)

(declare-fun lambda!249473 () Int)

(assert (=> bs!1188226 (not (= lambda!249474 lambda!249473))))

(declare-fun bs!1188227 () Bool)

(declare-fun b!5028333 () Bool)

(assert (= bs!1188227 (and b!5028333 d!1618214)))

(declare-fun lambda!249475 () Int)

(assert (=> bs!1188227 (not (= lambda!249475 lambda!249473))))

(declare-fun bs!1188228 () Bool)

(assert (= bs!1188228 (and b!5028333 b!5028332)))

(assert (=> bs!1188228 (= lambda!249475 lambda!249474)))

(declare-fun e!3141187 () Unit!149387)

(declare-fun Unit!149389 () Unit!149387)

(assert (=> b!5028332 (= e!3141187 Unit!149389)))

(declare-datatypes ((List!58319 0))(
  ( (Nil!58195) (Cons!58195 (h!64643 Context!6708) (t!370727 List!58319)) )
))
(declare-fun lt!2081094 () List!58319)

(declare-fun call!350861 () List!58319)

(assert (=> b!5028332 (= lt!2081094 call!350861)))

(declare-fun lt!2081091 () Unit!149387)

(declare-fun lemmaNotForallThenExists!279 (List!58319 Int) Unit!149387)

(assert (=> b!5028332 (= lt!2081091 (lemmaNotForallThenExists!279 lt!2081094 lambda!249473))))

(declare-fun call!350862 () Bool)

(assert (=> b!5028332 call!350862))

(declare-fun lt!2081093 () Unit!149387)

(assert (=> b!5028332 (= lt!2081093 lt!2081091)))

(declare-fun lt!2081097 () Bool)

(declare-datatypes ((Option!14609 0))(
  ( (None!14608) (Some!14608 (v!50617 List!58317)) )
))
(declare-fun isEmpty!31468 (Option!14609) Bool)

(declare-fun getLanguageWitness!750 ((InoxSet Context!6708)) Option!14609)

(assert (=> d!1618214 (= lt!2081097 (isEmpty!31468 (getLanguageWitness!750 z!4747)))))

(declare-fun forall!13445 ((InoxSet Context!6708) Int) Bool)

(assert (=> d!1618214 (= lt!2081097 (forall!13445 z!4747 lambda!249473))))

(declare-fun lt!2081096 () Unit!149387)

(assert (=> d!1618214 (= lt!2081096 e!3141187)))

(declare-fun c!860443 () Bool)

(assert (=> d!1618214 (= c!860443 (not (forall!13445 z!4747 lambda!249473)))))

(assert (=> d!1618214 (= (lostCauseZipper!943 z!4747) lt!2081097)))

(declare-fun bm!350857 () Bool)

(declare-fun lt!2081092 () List!58319)

(declare-fun exists!1405 (List!58319 Int) Bool)

(assert (=> bm!350857 (= call!350862 (exists!1405 (ite c!860443 lt!2081094 lt!2081092) (ite c!860443 lambda!249474 lambda!249475)))))

(declare-fun bm!350856 () Bool)

(declare-fun toList!8130 ((InoxSet Context!6708)) List!58319)

(assert (=> bm!350856 (= call!350861 (toList!8130 z!4747))))

(declare-fun Unit!149390 () Unit!149387)

(assert (=> b!5028333 (= e!3141187 Unit!149390)))

(assert (=> b!5028333 (= lt!2081092 call!350861)))

(declare-fun lt!2081098 () Unit!149387)

(declare-fun lemmaForallThenNotExists!262 (List!58319 Int) Unit!149387)

(assert (=> b!5028333 (= lt!2081098 (lemmaForallThenNotExists!262 lt!2081092 lambda!249473))))

(assert (=> b!5028333 (not call!350862)))

(declare-fun lt!2081095 () Unit!149387)

(assert (=> b!5028333 (= lt!2081095 lt!2081098)))

(assert (= (and d!1618214 c!860443) b!5028332))

(assert (= (and d!1618214 (not c!860443)) b!5028333))

(assert (= (or b!5028332 b!5028333) bm!350856))

(assert (= (or b!5028332 b!5028333) bm!350857))

(declare-fun m!6063572 () Bool)

(assert (=> b!5028333 m!6063572))

(declare-fun m!6063574 () Bool)

(assert (=> bm!350856 m!6063574))

(declare-fun m!6063576 () Bool)

(assert (=> bm!350857 m!6063576))

(declare-fun m!6063578 () Bool)

(assert (=> d!1618214 m!6063578))

(assert (=> d!1618214 m!6063578))

(declare-fun m!6063580 () Bool)

(assert (=> d!1618214 m!6063580))

(declare-fun m!6063582 () Bool)

(assert (=> d!1618214 m!6063582))

(assert (=> d!1618214 m!6063582))

(declare-fun m!6063584 () Bool)

(assert (=> b!5028332 m!6063584))

(assert (=> b!5028120 d!1618214))

(declare-fun d!1618216 () Bool)

(declare-fun c!860446 () Bool)

(assert (=> d!1618216 (= c!860446 ((_ is Node!15448) (c!860351 totalInput!1141)))))

(declare-fun e!3141192 () Bool)

(assert (=> d!1618216 (= (inv!76769 (c!860351 totalInput!1141)) e!3141192)))

(declare-fun b!5028340 () Bool)

(declare-fun inv!76770 (Conc!15448) Bool)

(assert (=> b!5028340 (= e!3141192 (inv!76770 (c!860351 totalInput!1141)))))

(declare-fun b!5028341 () Bool)

(declare-fun e!3141193 () Bool)

(assert (=> b!5028341 (= e!3141192 e!3141193)))

(declare-fun res!2143399 () Bool)

(assert (=> b!5028341 (= res!2143399 (not ((_ is Leaf!25626) (c!860351 totalInput!1141))))))

(assert (=> b!5028341 (=> res!2143399 e!3141193)))

(declare-fun b!5028342 () Bool)

(declare-fun inv!76771 (Conc!15448) Bool)

(assert (=> b!5028342 (= e!3141193 (inv!76771 (c!860351 totalInput!1141)))))

(assert (= (and d!1618216 c!860446) b!5028340))

(assert (= (and d!1618216 (not c!860446)) b!5028341))

(assert (= (and b!5028341 (not res!2143399)) b!5028342))

(declare-fun m!6063586 () Bool)

(assert (=> b!5028340 m!6063586))

(declare-fun m!6063588 () Bool)

(assert (=> b!5028342 m!6063588))

(assert (=> b!5028128 d!1618216))

(declare-fun d!1618218 () Bool)

(declare-fun c!860447 () Bool)

(assert (=> d!1618218 (= c!860447 (isEmpty!31467 lt!2081018))))

(declare-fun e!3141194 () Bool)

(assert (=> d!1618218 (= (matchZipper!679 lt!2081016 lt!2081018) e!3141194)))

(declare-fun b!5028343 () Bool)

(assert (=> b!5028343 (= e!3141194 (nullableZipper!936 lt!2081016))))

(declare-fun b!5028344 () Bool)

(assert (=> b!5028344 (= e!3141194 (matchZipper!679 (derivationStepZipper!724 lt!2081016 (head!10784 lt!2081018)) (tail!9917 lt!2081018)))))

(assert (= (and d!1618218 c!860447) b!5028343))

(assert (= (and d!1618218 (not c!860447)) b!5028344))

(declare-fun m!6063590 () Bool)

(assert (=> d!1618218 m!6063590))

(declare-fun m!6063592 () Bool)

(assert (=> b!5028343 m!6063592))

(declare-fun m!6063594 () Bool)

(assert (=> b!5028344 m!6063594))

(assert (=> b!5028344 m!6063594))

(declare-fun m!6063596 () Bool)

(assert (=> b!5028344 m!6063596))

(declare-fun m!6063598 () Bool)

(assert (=> b!5028344 m!6063598))

(assert (=> b!5028344 m!6063596))

(assert (=> b!5028344 m!6063598))

(declare-fun m!6063600 () Bool)

(assert (=> b!5028344 m!6063600))

(assert (=> b!5028130 d!1618218))

(declare-fun b!5028345 () Bool)

(declare-fun e!3141198 () Int)

(assert (=> b!5028345 (= e!3141198 0)))

(declare-fun b!5028346 () Bool)

(declare-fun e!3141199 () Int)

(assert (=> b!5028346 (= e!3141198 e!3141199)))

(declare-fun lt!2081099 () (InoxSet Context!6708))

(assert (=> b!5028346 (= lt!2081099 (derivationStepZipper!724 z!4747 (apply!14184 totalInput!1141 from!1228)))))

(declare-fun lt!2081101 () Int)

(assert (=> b!5028346 (= lt!2081101 (findLongestMatchInnerZipperFastV2!243 lt!2081099 (+ from!1228 1) totalInput!1141 lt!2081021))))

(declare-fun c!860450 () Bool)

(assert (=> b!5028346 (= c!860450 (> lt!2081101 0))))

(declare-fun b!5028347 () Bool)

(declare-fun e!3141197 () Bool)

(assert (=> b!5028347 (= e!3141197 (<= from!1228 (size!38730 totalInput!1141)))))

(declare-fun b!5028348 () Bool)

(declare-fun c!860449 () Bool)

(assert (=> b!5028348 (= c!860449 (nullableZipper!936 lt!2081099))))

(declare-fun e!3141195 () Int)

(assert (=> b!5028348 (= e!3141199 e!3141195)))

(declare-fun d!1618220 () Bool)

(declare-fun lt!2081100 () Int)

(assert (=> d!1618220 (and (>= lt!2081100 0) (<= lt!2081100 (- lt!2081021 from!1228)))))

(assert (=> d!1618220 (= lt!2081100 e!3141198)))

(declare-fun c!860448 () Bool)

(declare-fun e!3141196 () Bool)

(assert (=> d!1618220 (= c!860448 e!3141196)))

(declare-fun res!2143400 () Bool)

(assert (=> d!1618220 (=> res!2143400 e!3141196)))

(assert (=> d!1618220 (= res!2143400 (= from!1228 lt!2081021))))

(assert (=> d!1618220 e!3141197))

(declare-fun res!2143401 () Bool)

(assert (=> d!1618220 (=> (not res!2143401) (not e!3141197))))

(assert (=> d!1618220 (= res!2143401 (>= from!1228 0))))

(assert (=> d!1618220 (= (findLongestMatchInnerZipperFastV2!243 z!4747 from!1228 totalInput!1141 lt!2081021) lt!2081100)))

(declare-fun b!5028349 () Bool)

(assert (=> b!5028349 (= e!3141199 (+ 1 lt!2081101))))

(declare-fun b!5028350 () Bool)

(assert (=> b!5028350 (= e!3141196 (lostCauseZipper!943 z!4747))))

(declare-fun b!5028351 () Bool)

(assert (=> b!5028351 (= e!3141195 0)))

(declare-fun b!5028352 () Bool)

(assert (=> b!5028352 (= e!3141195 1)))

(assert (= (and d!1618220 res!2143401) b!5028347))

(assert (= (and d!1618220 (not res!2143400)) b!5028350))

(assert (= (and d!1618220 c!860448) b!5028345))

(assert (= (and d!1618220 (not c!860448)) b!5028346))

(assert (= (and b!5028346 c!860450) b!5028349))

(assert (= (and b!5028346 (not c!860450)) b!5028348))

(assert (= (and b!5028348 c!860449) b!5028352))

(assert (= (and b!5028348 (not c!860449)) b!5028351))

(assert (=> b!5028346 m!6063388))

(assert (=> b!5028346 m!6063388))

(declare-fun m!6063602 () Bool)

(assert (=> b!5028346 m!6063602))

(declare-fun m!6063604 () Bool)

(assert (=> b!5028346 m!6063604))

(assert (=> b!5028347 m!6063410))

(declare-fun m!6063606 () Bool)

(assert (=> b!5028348 m!6063606))

(assert (=> b!5028350 m!6063378))

(assert (=> b!5028121 d!1618220))

(declare-fun d!1618222 () Bool)

(declare-fun lt!2081104 () C!28108)

(declare-fun contains!19577 (List!58317 C!28108) Bool)

(assert (=> d!1618222 (contains!19577 lt!2081022 lt!2081104)))

(declare-fun e!3141204 () C!28108)

(assert (=> d!1618222 (= lt!2081104 e!3141204)))

(declare-fun c!860453 () Bool)

(assert (=> d!1618222 (= c!860453 (= from!1228 0))))

(declare-fun e!3141205 () Bool)

(assert (=> d!1618222 e!3141205))

(declare-fun res!2143404 () Bool)

(assert (=> d!1618222 (=> (not res!2143404) (not e!3141205))))

(assert (=> d!1618222 (= res!2143404 (<= 0 from!1228))))

(assert (=> d!1618222 (= (apply!14183 lt!2081022 from!1228) lt!2081104)))

(declare-fun b!5028359 () Bool)

(assert (=> b!5028359 (= e!3141205 (< from!1228 (size!38731 lt!2081022)))))

(declare-fun b!5028360 () Bool)

(assert (=> b!5028360 (= e!3141204 (head!10784 lt!2081022))))

(declare-fun b!5028361 () Bool)

(assert (=> b!5028361 (= e!3141204 (apply!14183 (tail!9917 lt!2081022) (- from!1228 1)))))

(assert (= (and d!1618222 res!2143404) b!5028359))

(assert (= (and d!1618222 c!860453) b!5028360))

(assert (= (and d!1618222 (not c!860453)) b!5028361))

(declare-fun m!6063608 () Bool)

(assert (=> d!1618222 m!6063608))

(assert (=> b!5028359 m!6063502))

(declare-fun m!6063610 () Bool)

(assert (=> b!5028360 m!6063610))

(declare-fun m!6063612 () Bool)

(assert (=> b!5028361 m!6063612))

(assert (=> b!5028361 m!6063612))

(declare-fun m!6063614 () Bool)

(assert (=> b!5028361 m!6063614))

(assert (=> b!5028119 d!1618222))

(declare-fun d!1618224 () Bool)

(assert (=> d!1618224 (= (Cons!58193 (apply!14183 lt!2081022 from!1228) (take!776 (drop!2576 lt!2081022 (+ from!1228 1)) lt!2081024)) (take!776 (drop!2576 lt!2081022 from!1228) (+ lt!2081024 1)))))

(declare-fun lt!2081107 () Unit!149387)

(declare-fun choose!37207 (List!58317 Int Int) Unit!149387)

(assert (=> d!1618224 (= lt!2081107 (choose!37207 lt!2081022 from!1228 lt!2081024))))

(declare-fun e!3141208 () Bool)

(assert (=> d!1618224 e!3141208))

(declare-fun res!2143407 () Bool)

(assert (=> d!1618224 (=> (not res!2143407) (not e!3141208))))

(assert (=> d!1618224 (= res!2143407 (>= from!1228 0))))

(assert (=> d!1618224 (= (lemmaDropTakeAddOneLeft!98 lt!2081022 from!1228 lt!2081024) lt!2081107)))

(declare-fun b!5028364 () Bool)

(assert (=> b!5028364 (= e!3141208 (< from!1228 (size!38731 lt!2081022)))))

(assert (= (and d!1618224 res!2143407) b!5028364))

(assert (=> d!1618224 m!6063402))

(declare-fun m!6063616 () Bool)

(assert (=> d!1618224 m!6063616))

(declare-fun m!6063618 () Bool)

(assert (=> d!1618224 m!6063618))

(declare-fun m!6063620 () Bool)

(assert (=> d!1618224 m!6063620))

(declare-fun m!6063622 () Bool)

(assert (=> d!1618224 m!6063622))

(assert (=> d!1618224 m!6063402))

(assert (=> d!1618224 m!6063396))

(assert (=> d!1618224 m!6063618))

(assert (=> b!5028364 m!6063502))

(assert (=> b!5028119 d!1618224))

(declare-fun b!5028365 () Bool)

(declare-fun e!3141211 () Int)

(assert (=> b!5028365 (= e!3141211 (size!38731 lt!2081023))))

(declare-fun b!5028366 () Bool)

(declare-fun e!3141212 () List!58317)

(assert (=> b!5028366 (= e!3141212 (Cons!58193 (h!64641 lt!2081023) (take!776 (t!370725 lt!2081023) (- (+ 1 lt!2081024) 1))))))

(declare-fun b!5028367 () Bool)

(declare-fun e!3141210 () Bool)

(declare-fun lt!2081108 () List!58317)

(declare-fun e!3141209 () Int)

(assert (=> b!5028367 (= e!3141210 (= (size!38731 lt!2081108) e!3141209))))

(declare-fun c!860456 () Bool)

(assert (=> b!5028367 (= c!860456 (<= (+ 1 lt!2081024) 0))))

(declare-fun d!1618226 () Bool)

(assert (=> d!1618226 e!3141210))

(declare-fun res!2143408 () Bool)

(assert (=> d!1618226 (=> (not res!2143408) (not e!3141210))))

(assert (=> d!1618226 (= res!2143408 (= ((_ map implies) (content!10315 lt!2081108) (content!10315 lt!2081023)) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618226 (= lt!2081108 e!3141212)))

(declare-fun c!860454 () Bool)

(assert (=> d!1618226 (= c!860454 (or ((_ is Nil!58193) lt!2081023) (<= (+ 1 lt!2081024) 0)))))

(assert (=> d!1618226 (= (take!776 lt!2081023 (+ 1 lt!2081024)) lt!2081108)))

(declare-fun b!5028368 () Bool)

(assert (=> b!5028368 (= e!3141211 (+ 1 lt!2081024))))

(declare-fun b!5028369 () Bool)

(assert (=> b!5028369 (= e!3141209 e!3141211)))

(declare-fun c!860455 () Bool)

(assert (=> b!5028369 (= c!860455 (>= (+ 1 lt!2081024) (size!38731 lt!2081023)))))

(declare-fun b!5028370 () Bool)

(assert (=> b!5028370 (= e!3141212 Nil!58193)))

(declare-fun b!5028371 () Bool)

(assert (=> b!5028371 (= e!3141209 0)))

(assert (= (and d!1618226 c!860454) b!5028370))

(assert (= (and d!1618226 (not c!860454)) b!5028366))

(assert (= (and d!1618226 res!2143408) b!5028367))

(assert (= (and b!5028367 c!860456) b!5028371))

(assert (= (and b!5028367 (not c!860456)) b!5028369))

(assert (= (and b!5028369 c!860455) b!5028365))

(assert (= (and b!5028369 (not c!860455)) b!5028368))

(assert (=> b!5028369 m!6063546))

(assert (=> b!5028365 m!6063546))

(declare-fun m!6063624 () Bool)

(assert (=> b!5028367 m!6063624))

(declare-fun m!6063626 () Bool)

(assert (=> b!5028366 m!6063626))

(declare-fun m!6063628 () Bool)

(assert (=> d!1618226 m!6063628))

(assert (=> d!1618226 m!6063554))

(assert (=> b!5028119 d!1618226))

(declare-fun bm!350858 () Bool)

(declare-fun call!350863 () Int)

(assert (=> bm!350858 (= call!350863 (size!38731 lt!2081022))))

(declare-fun b!5028372 () Bool)

(declare-fun e!3141213 () List!58317)

(declare-fun e!3141214 () List!58317)

(assert (=> b!5028372 (= e!3141213 e!3141214)))

(declare-fun c!860460 () Bool)

(assert (=> b!5028372 (= c!860460 (<= from!1228 0))))

(declare-fun b!5028373 () Bool)

(declare-fun e!3141217 () Int)

(assert (=> b!5028373 (= e!3141217 0)))

(declare-fun b!5028374 () Bool)

(declare-fun e!3141215 () Bool)

(declare-fun lt!2081109 () List!58317)

(declare-fun e!3141216 () Int)

(assert (=> b!5028374 (= e!3141215 (= (size!38731 lt!2081109) e!3141216))))

(declare-fun c!860459 () Bool)

(assert (=> b!5028374 (= c!860459 (<= from!1228 0))))

(declare-fun b!5028375 () Bool)

(assert (=> b!5028375 (= e!3141216 call!350863)))

(declare-fun b!5028376 () Bool)

(assert (=> b!5028376 (= e!3141216 e!3141217)))

(declare-fun c!860458 () Bool)

(assert (=> b!5028376 (= c!860458 (>= from!1228 call!350863))))

(declare-fun b!5028377 () Bool)

(assert (=> b!5028377 (= e!3141213 Nil!58193)))

(declare-fun b!5028378 () Bool)

(assert (=> b!5028378 (= e!3141217 (- call!350863 from!1228))))

(declare-fun d!1618228 () Bool)

(assert (=> d!1618228 e!3141215))

(declare-fun res!2143409 () Bool)

(assert (=> d!1618228 (=> (not res!2143409) (not e!3141215))))

(assert (=> d!1618228 (= res!2143409 (= ((_ map implies) (content!10315 lt!2081109) (content!10315 lt!2081022)) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618228 (= lt!2081109 e!3141213)))

(declare-fun c!860457 () Bool)

(assert (=> d!1618228 (= c!860457 ((_ is Nil!58193) lt!2081022))))

(assert (=> d!1618228 (= (drop!2576 lt!2081022 from!1228) lt!2081109)))

(declare-fun b!5028379 () Bool)

(assert (=> b!5028379 (= e!3141214 (drop!2576 (t!370725 lt!2081022) (- from!1228 1)))))

(declare-fun b!5028380 () Bool)

(assert (=> b!5028380 (= e!3141214 lt!2081022)))

(assert (= (and d!1618228 c!860457) b!5028377))

(assert (= (and d!1618228 (not c!860457)) b!5028372))

(assert (= (and b!5028372 c!860460) b!5028380))

(assert (= (and b!5028372 (not c!860460)) b!5028379))

(assert (= (and d!1618228 res!2143409) b!5028374))

(assert (= (and b!5028374 c!860459) b!5028375))

(assert (= (and b!5028374 (not c!860459)) b!5028376))

(assert (= (and b!5028376 c!860458) b!5028373))

(assert (= (and b!5028376 (not c!860458)) b!5028378))

(assert (= (or b!5028375 b!5028376 b!5028378) bm!350858))

(assert (=> bm!350858 m!6063502))

(declare-fun m!6063630 () Bool)

(assert (=> b!5028374 m!6063630))

(declare-fun m!6063632 () Bool)

(assert (=> d!1618228 m!6063632))

(assert (=> d!1618228 m!6063508))

(declare-fun m!6063634 () Bool)

(assert (=> b!5028379 m!6063634))

(assert (=> b!5028119 d!1618228))

(declare-fun c!860461 () Bool)

(declare-fun d!1618230 () Bool)

(assert (=> d!1618230 (= c!860461 (isEmpty!31467 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024)))))

(declare-fun e!3141218 () Bool)

(assert (=> d!1618230 (= (matchZipper!679 lt!2081016 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024)) e!3141218)))

(declare-fun b!5028381 () Bool)

(assert (=> b!5028381 (= e!3141218 (nullableZipper!936 lt!2081016))))

(declare-fun b!5028382 () Bool)

(assert (=> b!5028382 (= e!3141218 (matchZipper!679 (derivationStepZipper!724 lt!2081016 (head!10784 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024))) (tail!9917 (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024))))))

(assert (= (and d!1618230 c!860461) b!5028381))

(assert (= (and d!1618230 (not c!860461)) b!5028382))

(assert (=> d!1618230 m!6063406))

(declare-fun m!6063636 () Bool)

(assert (=> d!1618230 m!6063636))

(assert (=> b!5028381 m!6063592))

(assert (=> b!5028382 m!6063406))

(declare-fun m!6063638 () Bool)

(assert (=> b!5028382 m!6063638))

(assert (=> b!5028382 m!6063638))

(declare-fun m!6063640 () Bool)

(assert (=> b!5028382 m!6063640))

(assert (=> b!5028382 m!6063406))

(declare-fun m!6063642 () Bool)

(assert (=> b!5028382 m!6063642))

(assert (=> b!5028382 m!6063640))

(assert (=> b!5028382 m!6063642))

(declare-fun m!6063644 () Bool)

(assert (=> b!5028382 m!6063644))

(assert (=> b!5028127 d!1618230))

(declare-fun b!5028383 () Bool)

(declare-fun e!3141221 () Int)

(assert (=> b!5028383 (= e!3141221 (size!38731 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5028384 () Bool)

(declare-fun e!3141222 () List!58317)

(assert (=> b!5028384 (= e!3141222 (Cons!58193 (h!64641 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228))) (take!776 (t!370725 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228))) (- lt!2081024 1))))))

(declare-fun b!5028385 () Bool)

(declare-fun e!3141220 () Bool)

(declare-fun lt!2081110 () List!58317)

(declare-fun e!3141219 () Int)

(assert (=> b!5028385 (= e!3141220 (= (size!38731 lt!2081110) e!3141219))))

(declare-fun c!860464 () Bool)

(assert (=> b!5028385 (= c!860464 (<= lt!2081024 0))))

(declare-fun d!1618232 () Bool)

(assert (=> d!1618232 e!3141220))

(declare-fun res!2143410 () Bool)

(assert (=> d!1618232 (=> (not res!2143410) (not e!3141220))))

(assert (=> d!1618232 (= res!2143410 (= ((_ map implies) (content!10315 lt!2081110) (content!10315 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618232 (= lt!2081110 e!3141222)))

(declare-fun c!860462 () Bool)

(assert (=> d!1618232 (= c!860462 (or ((_ is Nil!58193) (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228))) (<= lt!2081024 0)))))

(assert (=> d!1618232 (= (take!776 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081024) lt!2081110)))

(declare-fun b!5028386 () Bool)

(assert (=> b!5028386 (= e!3141221 lt!2081024)))

(declare-fun b!5028387 () Bool)

(assert (=> b!5028387 (= e!3141219 e!3141221)))

(declare-fun c!860463 () Bool)

(assert (=> b!5028387 (= c!860463 (>= lt!2081024 (size!38731 (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5028388 () Bool)

(assert (=> b!5028388 (= e!3141222 Nil!58193)))

(declare-fun b!5028389 () Bool)

(assert (=> b!5028389 (= e!3141219 0)))

(assert (= (and d!1618232 c!860462) b!5028388))

(assert (= (and d!1618232 (not c!860462)) b!5028384))

(assert (= (and d!1618232 res!2143410) b!5028385))

(assert (= (and b!5028385 c!860464) b!5028389))

(assert (= (and b!5028385 (not c!860464)) b!5028387))

(assert (= (and b!5028387 c!860463) b!5028383))

(assert (= (and b!5028387 (not c!860463)) b!5028386))

(assert (=> b!5028387 m!6063404))

(declare-fun m!6063646 () Bool)

(assert (=> b!5028387 m!6063646))

(assert (=> b!5028383 m!6063404))

(assert (=> b!5028383 m!6063646))

(declare-fun m!6063648 () Bool)

(assert (=> b!5028385 m!6063648))

(declare-fun m!6063650 () Bool)

(assert (=> b!5028384 m!6063650))

(declare-fun m!6063652 () Bool)

(assert (=> d!1618232 m!6063652))

(assert (=> d!1618232 m!6063404))

(declare-fun m!6063654 () Bool)

(assert (=> d!1618232 m!6063654))

(assert (=> b!5028127 d!1618232))

(declare-fun bm!350859 () Bool)

(declare-fun call!350864 () Int)

(assert (=> bm!350859 (= call!350864 (size!38731 (list!18795 totalInput!1141)))))

(declare-fun b!5028390 () Bool)

(declare-fun e!3141223 () List!58317)

(declare-fun e!3141224 () List!58317)

(assert (=> b!5028390 (= e!3141223 e!3141224)))

(declare-fun c!860468 () Bool)

(assert (=> b!5028390 (= c!860468 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028391 () Bool)

(declare-fun e!3141227 () Int)

(assert (=> b!5028391 (= e!3141227 0)))

(declare-fun b!5028392 () Bool)

(declare-fun e!3141225 () Bool)

(declare-fun lt!2081111 () List!58317)

(declare-fun e!3141226 () Int)

(assert (=> b!5028392 (= e!3141225 (= (size!38731 lt!2081111) e!3141226))))

(declare-fun c!860467 () Bool)

(assert (=> b!5028392 (= c!860467 (<= (+ 1 from!1228) 0))))

(declare-fun b!5028393 () Bool)

(assert (=> b!5028393 (= e!3141226 call!350864)))

(declare-fun b!5028394 () Bool)

(assert (=> b!5028394 (= e!3141226 e!3141227)))

(declare-fun c!860466 () Bool)

(assert (=> b!5028394 (= c!860466 (>= (+ 1 from!1228) call!350864))))

(declare-fun b!5028395 () Bool)

(assert (=> b!5028395 (= e!3141223 Nil!58193)))

(declare-fun b!5028396 () Bool)

(assert (=> b!5028396 (= e!3141227 (- call!350864 (+ 1 from!1228)))))

(declare-fun d!1618234 () Bool)

(assert (=> d!1618234 e!3141225))

(declare-fun res!2143411 () Bool)

(assert (=> d!1618234 (=> (not res!2143411) (not e!3141225))))

(assert (=> d!1618234 (= res!2143411 (= ((_ map implies) (content!10315 lt!2081111) (content!10315 (list!18795 totalInput!1141))) ((as const (InoxSet C!28108)) true)))))

(assert (=> d!1618234 (= lt!2081111 e!3141223)))

(declare-fun c!860465 () Bool)

(assert (=> d!1618234 (= c!860465 ((_ is Nil!58193) (list!18795 totalInput!1141)))))

(assert (=> d!1618234 (= (drop!2576 (list!18795 totalInput!1141) (+ 1 from!1228)) lt!2081111)))

(declare-fun b!5028397 () Bool)

(assert (=> b!5028397 (= e!3141224 (drop!2576 (t!370725 (list!18795 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5028398 () Bool)

(assert (=> b!5028398 (= e!3141224 (list!18795 totalInput!1141))))

(assert (= (and d!1618234 c!860465) b!5028395))

(assert (= (and d!1618234 (not c!860465)) b!5028390))

(assert (= (and b!5028390 c!860468) b!5028398))

(assert (= (and b!5028390 (not c!860468)) b!5028397))

(assert (= (and d!1618234 res!2143411) b!5028392))

(assert (= (and b!5028392 c!860467) b!5028393))

(assert (= (and b!5028392 (not c!860467)) b!5028394))

(assert (= (and b!5028394 c!860466) b!5028391))

(assert (= (and b!5028394 (not c!860466)) b!5028396))

(assert (= (or b!5028393 b!5028394 b!5028396) bm!350859))

(assert (=> bm!350859 m!6063386))

(assert (=> bm!350859 m!6063568))

(declare-fun m!6063656 () Bool)

(assert (=> b!5028392 m!6063656))

(declare-fun m!6063658 () Bool)

(assert (=> d!1618234 m!6063658))

(assert (=> d!1618234 m!6063386))

(declare-fun m!6063660 () Bool)

(assert (=> d!1618234 m!6063660))

(declare-fun m!6063662 () Bool)

(assert (=> b!5028397 m!6063662))

(assert (=> b!5028127 d!1618234))

(assert (=> b!5028127 d!1618194))

(declare-fun d!1618236 () Bool)

(declare-fun isBalanced!4312 (Conc!15448) Bool)

(assert (=> d!1618236 (= (inv!76768 totalInput!1141) (isBalanced!4312 (c!860351 totalInput!1141)))))

(declare-fun bs!1188229 () Bool)

(assert (= bs!1188229 d!1618236))

(declare-fun m!6063664 () Bool)

(assert (=> bs!1188229 m!6063664))

(assert (=> start!531672 d!1618236))

(declare-fun e!3141232 () Bool)

(declare-fun tp!1409129 () Bool)

(declare-fun b!5028407 () Bool)

(declare-fun tp!1409130 () Bool)

(assert (=> b!5028407 (= e!3141232 (and (inv!76769 (left!42571 (c!860351 totalInput!1141))) tp!1409130 (inv!76769 (right!42901 (c!860351 totalInput!1141))) tp!1409129))))

(declare-fun b!5028409 () Bool)

(declare-fun e!3141233 () Bool)

(declare-fun tp!1409131 () Bool)

(assert (=> b!5028409 (= e!3141233 tp!1409131)))

(declare-fun b!5028408 () Bool)

(declare-fun inv!76774 (IArray!30957) Bool)

(assert (=> b!5028408 (= e!3141232 (and (inv!76774 (xs!18774 (c!860351 totalInput!1141))) e!3141233))))

(assert (=> b!5028128 (= tp!1409122 (and (inv!76769 (c!860351 totalInput!1141)) e!3141232))))

(assert (= (and b!5028128 ((_ is Node!15448) (c!860351 totalInput!1141))) b!5028407))

(assert (= b!5028408 b!5028409))

(assert (= (and b!5028128 ((_ is Leaf!25626) (c!860351 totalInput!1141))) b!5028408))

(declare-fun m!6063666 () Bool)

(assert (=> b!5028407 m!6063666))

(declare-fun m!6063668 () Bool)

(assert (=> b!5028407 m!6063668))

(declare-fun m!6063670 () Bool)

(assert (=> b!5028408 m!6063670))

(assert (=> b!5028128 m!6063422))

(declare-fun b!5028414 () Bool)

(declare-fun e!3141236 () Bool)

(declare-fun tp!1409136 () Bool)

(declare-fun tp!1409137 () Bool)

(assert (=> b!5028414 (= e!3141236 (and tp!1409136 tp!1409137))))

(assert (=> b!5028123 (= tp!1409120 e!3141236)))

(assert (= (and b!5028123 ((_ is Cons!58194) (exprs!3854 setElem!28956))) b!5028414))

(declare-fun condSetEmpty!28959 () Bool)

(assert (=> setNonEmpty!28956 (= condSetEmpty!28959 (= setRest!28956 ((as const (Array Context!6708 Bool)) false)))))

(declare-fun setRes!28959 () Bool)

(assert (=> setNonEmpty!28956 (= tp!1409121 setRes!28959)))

(declare-fun setIsEmpty!28959 () Bool)

(assert (=> setIsEmpty!28959 setRes!28959))

(declare-fun setNonEmpty!28959 () Bool)

(declare-fun e!3141239 () Bool)

(declare-fun tp!1409143 () Bool)

(declare-fun setElem!28959 () Context!6708)

(assert (=> setNonEmpty!28959 (= setRes!28959 (and tp!1409143 (inv!76767 setElem!28959) e!3141239))))

(declare-fun setRest!28959 () (InoxSet Context!6708))

(assert (=> setNonEmpty!28959 (= setRest!28956 ((_ map or) (store ((as const (Array Context!6708 Bool)) false) setElem!28959 true) setRest!28959))))

(declare-fun b!5028419 () Bool)

(declare-fun tp!1409142 () Bool)

(assert (=> b!5028419 (= e!3141239 tp!1409142)))

(assert (= (and setNonEmpty!28956 condSetEmpty!28959) setIsEmpty!28959))

(assert (= (and setNonEmpty!28956 (not condSetEmpty!28959)) setNonEmpty!28959))

(assert (= setNonEmpty!28959 b!5028419))

(declare-fun m!6063672 () Bool)

(assert (=> setNonEmpty!28959 m!6063672))

(check-sat (not d!1618206) (not b!5028320) (not b!5028346) (not b!5028344) (not b!5028409) (not b!5028361) (not d!1618208) (not b!5028360) (not b!5028381) (not b!5028318) (not b!5028414) (not b!5028146) (not b!5028333) (not b!5028149) (not d!1618226) (not d!1618200) (not bm!350857) (not b!5028347) (not b!5028397) (not b!5028383) (not b!5028147) (not d!1618228) (not b!5028408) (not b!5028145) (not b!5028332) (not b!5028321) (not d!1618172) (not b!5028319) (not d!1618230) (not d!1618224) (not bm!350851) (not b!5028282) (not b!5028379) (not b!5028392) (not d!1618198) (not bm!350858) (not b!5028278) (not b!5028306) (not d!1618232) (not b!5028308) (not d!1618222) (not b!5028288) (not b!5028382) (not b!5028374) (not b!5028369) (not d!1618212) (not b!5028387) (not b!5028419) (not b!5028343) (not b!5028128) (not b!5028385) (not b!5028348) (not b!5028326) (not bm!350859) (not b!5028350) (not d!1618214) (not b!5028359) (not d!1618196) (not b!5028366) (not b!5028273) (not b!5028367) (not b!5028307) (not b!5028323) (not bm!350856) (not d!1618210) (not b!5028407) (not d!1618194) (not d!1618236) (not d!1618204) (not b!5028342) (not b!5028365) (not b!5028317) (not b!5028310) (not b!5028364) (not d!1618174) (not b!5028384) (not setNonEmpty!28959) (not b!5028287) (not b!5028327) (not b!5028340) (not d!1618234) (not d!1618218))
(check-sat)
