; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546832 () Bool)

(assert start!546832)

(declare-fun b!5167457 () Bool)

(declare-fun res!2196593 () Bool)

(declare-fun e!3219834 () Bool)

(assert (=> b!5167457 (=> (not res!2196593) (not e!3219834))))

(declare-datatypes ((C!29464 0))(
  ( (C!29465 (val!24434 Int)) )
))
(declare-datatypes ((List!60153 0))(
  ( (Nil!60029) (Cons!60029 (h!66477 C!29464) (t!373306 List!60153)) )
))
(declare-fun testedP!294 () List!60153)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14597 0))(
  ( (ElementMatch!14597 (c!889188 C!29464)) (Concat!23442 (regOne!29706 Regex!14597) (regTwo!29706 Regex!14597)) (EmptyExpr!14597) (Star!14597 (reg!14926 Regex!14597)) (EmptyLang!14597) (Union!14597 (regOne!29707 Regex!14597) (regTwo!29707 Regex!14597)) )
))
(declare-datatypes ((List!60154 0))(
  ( (Nil!60030) (Cons!60030 (h!66478 Regex!14597) (t!373307 List!60154)) )
))
(declare-datatypes ((Context!7962 0))(
  ( (Context!7963 (exprs!4481 List!60154)) )
))
(declare-fun z!4581 () (InoxSet Context!7962))

(declare-fun baseZ!62 () (InoxSet Context!7962))

(declare-fun derivationZipper!220 ((InoxSet Context!7962) List!60153) (InoxSet Context!7962))

(assert (=> b!5167457 (= res!2196593 (= (derivationZipper!220 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5167458 () Bool)

(declare-fun e!3219828 () Bool)

(assert (=> b!5167458 (= e!3219834 e!3219828)))

(declare-fun res!2196591 () Bool)

(assert (=> b!5167458 (=> (not res!2196591) (not e!3219828))))

(declare-fun lt!2125926 () Int)

(declare-fun lt!2125927 () Int)

(declare-fun lt!2125929 () List!60153)

(declare-fun input!5817 () List!60153)

(declare-fun isEmpty!32139 (List!60153) Bool)

(declare-datatypes ((tuple2!63748 0))(
  ( (tuple2!63749 (_1!35177 List!60153) (_2!35177 List!60153)) )
))
(declare-fun findLongestMatchInnerZipper!255 ((InoxSet Context!7962) List!60153 Int List!60153 List!60153 Int) tuple2!63748)

(assert (=> b!5167458 (= res!2196591 (not (isEmpty!32139 (_1!35177 (findLongestMatchInnerZipper!255 z!4581 testedP!294 lt!2125926 lt!2125929 input!5817 lt!2125927)))))))

(declare-fun size!39633 (List!60153) Int)

(assert (=> b!5167458 (= lt!2125927 (size!39633 input!5817))))

(declare-fun getSuffix!3380 (List!60153 List!60153) List!60153)

(assert (=> b!5167458 (= lt!2125929 (getSuffix!3380 input!5817 testedP!294))))

(assert (=> b!5167458 (= lt!2125926 (size!39633 testedP!294))))

(declare-fun b!5167459 () Bool)

(declare-fun e!3219826 () Bool)

(assert (=> b!5167459 (= e!3219828 (not e!3219826))))

(declare-fun res!2196592 () Bool)

(assert (=> b!5167459 (=> res!2196592 e!3219826)))

(assert (=> b!5167459 (= res!2196592 (>= lt!2125926 lt!2125927))))

(declare-datatypes ((Unit!151532 0))(
  ( (Unit!151533) )
))
(declare-fun lt!2125922 () Unit!151532)

(declare-fun e!3219833 () Unit!151532)

(assert (=> b!5167459 (= lt!2125922 e!3219833)))

(declare-fun c!889187 () Bool)

(assert (=> b!5167459 (= c!889187 (= lt!2125926 lt!2125927))))

(assert (=> b!5167459 (<= lt!2125926 lt!2125927)))

(declare-fun lt!2125930 () Unit!151532)

(declare-fun lemmaIsPrefixThenSmallerEqSize!893 (List!60153 List!60153) Unit!151532)

(assert (=> b!5167459 (= lt!2125930 (lemmaIsPrefixThenSmallerEqSize!893 testedP!294 input!5817))))

(declare-fun b!5167460 () Bool)

(declare-fun e!3219830 () Bool)

(assert (=> b!5167460 (= e!3219826 e!3219830)))

(declare-fun res!2196590 () Bool)

(assert (=> b!5167460 (=> res!2196590 e!3219830)))

(declare-fun nullableZipper!1143 ((InoxSet Context!7962)) Bool)

(assert (=> b!5167460 (= res!2196590 (not (nullableZipper!1143 z!4581)))))

(declare-fun lt!2125923 () List!60153)

(declare-fun isPrefix!5730 (List!60153 List!60153) Bool)

(assert (=> b!5167460 (isPrefix!5730 lt!2125923 input!5817)))

(declare-fun lt!2125924 () Unit!151532)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1043 (List!60153 List!60153) Unit!151532)

(assert (=> b!5167460 (= lt!2125924 (lemmaAddHeadSuffixToPrefixStillPrefix!1043 testedP!294 input!5817))))

(declare-fun ++!13121 (List!60153 List!60153) List!60153)

(declare-fun head!11021 (List!60153) C!29464)

(assert (=> b!5167460 (= lt!2125923 (++!13121 testedP!294 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))

(declare-fun setNonEmpty!31827 () Bool)

(declare-fun e!3219832 () Bool)

(declare-fun setRes!31827 () Bool)

(declare-fun tp!1449759 () Bool)

(declare-fun setElem!31827 () Context!7962)

(declare-fun inv!79739 (Context!7962) Bool)

(assert (=> setNonEmpty!31827 (= setRes!31827 (and tp!1449759 (inv!79739 setElem!31827) e!3219832))))

(declare-fun setRest!31828 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31827 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31827 true) setRest!31828))))

(declare-fun b!5167461 () Bool)

(assert (=> b!5167461 (= e!3219830 (= (+ 1 lt!2125926) (size!39633 lt!2125923)))))

(declare-fun setIsEmpty!31827 () Bool)

(declare-fun setRes!31828 () Bool)

(assert (=> setIsEmpty!31827 setRes!31828))

(declare-fun setIsEmpty!31828 () Bool)

(assert (=> setIsEmpty!31828 setRes!31827))

(declare-fun b!5167462 () Bool)

(declare-fun e!3219831 () Bool)

(declare-fun tp_is_empty!38447 () Bool)

(declare-fun tp!1449756 () Bool)

(assert (=> b!5167462 (= e!3219831 (and tp_is_empty!38447 tp!1449756))))

(declare-fun b!5167463 () Bool)

(declare-fun tp!1449757 () Bool)

(assert (=> b!5167463 (= e!3219832 tp!1449757)))

(declare-fun b!5167464 () Bool)

(declare-fun res!2196596 () Bool)

(assert (=> b!5167464 (=> res!2196596 e!3219830)))

(declare-fun tail!10130 (List!60153) List!60153)

(assert (=> b!5167464 (= res!2196596 (not (= (++!13121 lt!2125923 (tail!10130 lt!2125929)) input!5817)))))

(declare-fun b!5167465 () Bool)

(declare-fun Unit!151534 () Unit!151532)

(assert (=> b!5167465 (= e!3219833 Unit!151534)))

(declare-fun lt!2125928 () Unit!151532)

(declare-fun lemmaIsPrefixRefl!3737 (List!60153 List!60153) Unit!151532)

(assert (=> b!5167465 (= lt!2125928 (lemmaIsPrefixRefl!3737 input!5817 input!5817))))

(assert (=> b!5167465 (isPrefix!5730 input!5817 input!5817)))

(declare-fun lt!2125925 () Unit!151532)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1379 (List!60153 List!60153 List!60153) Unit!151532)

(assert (=> b!5167465 (= lt!2125925 (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 testedP!294 input!5817))))

(assert (=> b!5167465 false))

(declare-fun tp!1449754 () Bool)

(declare-fun setNonEmpty!31828 () Bool)

(declare-fun e!3219829 () Bool)

(declare-fun setElem!31828 () Context!7962)

(assert (=> setNonEmpty!31828 (= setRes!31828 (and tp!1449754 (inv!79739 setElem!31828) e!3219829))))

(declare-fun setRest!31827 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31828 (= z!4581 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31828 true) setRest!31827))))

(declare-fun b!5167466 () Bool)

(declare-fun res!2196595 () Bool)

(assert (=> b!5167466 (=> (not res!2196595) (not e!3219828))))

(assert (=> b!5167466 (= res!2196595 (not (= testedP!294 input!5817)))))

(declare-fun b!5167467 () Bool)

(declare-fun e!3219827 () Bool)

(declare-fun tp!1449755 () Bool)

(assert (=> b!5167467 (= e!3219827 (and tp_is_empty!38447 tp!1449755))))

(declare-fun res!2196594 () Bool)

(assert (=> start!546832 (=> (not res!2196594) (not e!3219834))))

(assert (=> start!546832 (= res!2196594 (isPrefix!5730 testedP!294 input!5817))))

(assert (=> start!546832 e!3219834))

(assert (=> start!546832 e!3219827))

(assert (=> start!546832 e!3219831))

(declare-fun condSetEmpty!31828 () Bool)

(assert (=> start!546832 (= condSetEmpty!31828 (= baseZ!62 ((as const (Array Context!7962 Bool)) false)))))

(assert (=> start!546832 setRes!31827))

(declare-fun condSetEmpty!31827 () Bool)

(assert (=> start!546832 (= condSetEmpty!31827 (= z!4581 ((as const (Array Context!7962 Bool)) false)))))

(assert (=> start!546832 setRes!31828))

(declare-fun b!5167468 () Bool)

(declare-fun Unit!151535 () Unit!151532)

(assert (=> b!5167468 (= e!3219833 Unit!151535)))

(declare-fun b!5167469 () Bool)

(declare-fun tp!1449758 () Bool)

(assert (=> b!5167469 (= e!3219829 tp!1449758)))

(assert (= (and start!546832 res!2196594) b!5167457))

(assert (= (and b!5167457 res!2196593) b!5167458))

(assert (= (and b!5167458 res!2196591) b!5167466))

(assert (= (and b!5167466 res!2196595) b!5167459))

(assert (= (and b!5167459 c!889187) b!5167465))

(assert (= (and b!5167459 (not c!889187)) b!5167468))

(assert (= (and b!5167459 (not res!2196592)) b!5167460))

(assert (= (and b!5167460 (not res!2196590)) b!5167464))

(assert (= (and b!5167464 (not res!2196596)) b!5167461))

(get-info :version)

(assert (= (and start!546832 ((_ is Cons!60029) testedP!294)) b!5167467))

(assert (= (and start!546832 ((_ is Cons!60029) input!5817)) b!5167462))

(assert (= (and start!546832 condSetEmpty!31828) setIsEmpty!31828))

(assert (= (and start!546832 (not condSetEmpty!31828)) setNonEmpty!31827))

(assert (= setNonEmpty!31827 b!5167463))

(assert (= (and start!546832 condSetEmpty!31827) setIsEmpty!31827))

(assert (= (and start!546832 (not condSetEmpty!31827)) setNonEmpty!31828))

(assert (= setNonEmpty!31828 b!5167469))

(declare-fun m!6218234 () Bool)

(assert (=> b!5167458 m!6218234))

(declare-fun m!6218236 () Bool)

(assert (=> b!5167458 m!6218236))

(declare-fun m!6218238 () Bool)

(assert (=> b!5167458 m!6218238))

(declare-fun m!6218240 () Bool)

(assert (=> b!5167458 m!6218240))

(declare-fun m!6218242 () Bool)

(assert (=> b!5167458 m!6218242))

(declare-fun m!6218244 () Bool)

(assert (=> b!5167459 m!6218244))

(declare-fun m!6218246 () Bool)

(assert (=> setNonEmpty!31828 m!6218246))

(declare-fun m!6218248 () Bool)

(assert (=> b!5167465 m!6218248))

(declare-fun m!6218250 () Bool)

(assert (=> b!5167465 m!6218250))

(declare-fun m!6218252 () Bool)

(assert (=> b!5167465 m!6218252))

(declare-fun m!6218254 () Bool)

(assert (=> b!5167461 m!6218254))

(declare-fun m!6218256 () Bool)

(assert (=> b!5167457 m!6218256))

(declare-fun m!6218258 () Bool)

(assert (=> setNonEmpty!31827 m!6218258))

(declare-fun m!6218260 () Bool)

(assert (=> start!546832 m!6218260))

(declare-fun m!6218262 () Bool)

(assert (=> b!5167464 m!6218262))

(assert (=> b!5167464 m!6218262))

(declare-fun m!6218264 () Bool)

(assert (=> b!5167464 m!6218264))

(declare-fun m!6218266 () Bool)

(assert (=> b!5167460 m!6218266))

(declare-fun m!6218268 () Bool)

(assert (=> b!5167460 m!6218268))

(declare-fun m!6218270 () Bool)

(assert (=> b!5167460 m!6218270))

(declare-fun m!6218272 () Bool)

(assert (=> b!5167460 m!6218272))

(declare-fun m!6218274 () Bool)

(assert (=> b!5167460 m!6218274))

(check-sat (not b!5167462) (not b!5167463) (not b!5167465) (not setNonEmpty!31827) (not b!5167457) (not b!5167458) (not start!546832) (not b!5167460) tp_is_empty!38447 (not b!5167469) (not b!5167464) (not b!5167467) (not b!5167461) (not setNonEmpty!31828) (not b!5167459))
(check-sat)
(get-model)

(declare-fun b!5167491 () Bool)

(declare-fun e!3219845 () List!60153)

(assert (=> b!5167491 (= e!3219845 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))

(declare-fun b!5167493 () Bool)

(declare-fun e!3219846 () Bool)

(declare-fun lt!2125936 () List!60153)

(assert (=> b!5167493 (= e!3219846 (or (not (= (Cons!60029 (head!11021 lt!2125929) Nil!60029) Nil!60029)) (= lt!2125936 testedP!294)))))

(declare-fun b!5167492 () Bool)

(declare-fun res!2196602 () Bool)

(assert (=> b!5167492 (=> (not res!2196602) (not e!3219846))))

(assert (=> b!5167492 (= res!2196602 (= (size!39633 lt!2125936) (+ (size!39633 testedP!294) (size!39633 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(declare-fun d!1667102 () Bool)

(assert (=> d!1667102 e!3219846))

(declare-fun res!2196601 () Bool)

(assert (=> d!1667102 (=> (not res!2196601) (not e!3219846))))

(declare-fun content!10637 (List!60153) (InoxSet C!29464))

(assert (=> d!1667102 (= res!2196601 (= (content!10637 lt!2125936) ((_ map or) (content!10637 testedP!294) (content!10637 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(assert (=> d!1667102 (= lt!2125936 e!3219845)))

(declare-fun c!889197 () Bool)

(assert (=> d!1667102 (= c!889197 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667102 (= (++!13121 testedP!294 (Cons!60029 (head!11021 lt!2125929) Nil!60029)) lt!2125936)))

(declare-fun b!5167490 () Bool)

(assert (=> b!5167490 (= e!3219845 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))

(assert (= (and d!1667102 c!889197) b!5167490))

(assert (= (and d!1667102 (not c!889197)) b!5167491))

(assert (= (and d!1667102 res!2196601) b!5167492))

(assert (= (and b!5167492 res!2196602) b!5167493))

(declare-fun m!6218284 () Bool)

(assert (=> b!5167491 m!6218284))

(declare-fun m!6218286 () Bool)

(assert (=> b!5167492 m!6218286))

(assert (=> b!5167492 m!6218234))

(declare-fun m!6218288 () Bool)

(assert (=> b!5167492 m!6218288))

(declare-fun m!6218290 () Bool)

(assert (=> d!1667102 m!6218290))

(declare-fun m!6218292 () Bool)

(assert (=> d!1667102 m!6218292))

(declare-fun m!6218294 () Bool)

(assert (=> d!1667102 m!6218294))

(assert (=> b!5167460 d!1667102))

(declare-fun b!5167505 () Bool)

(declare-fun res!2196611 () Bool)

(declare-fun e!3219855 () Bool)

(assert (=> b!5167505 (=> (not res!2196611) (not e!3219855))))

(assert (=> b!5167505 (= res!2196611 (= (head!11021 lt!2125923) (head!11021 input!5817)))))

(declare-fun b!5167504 () Bool)

(declare-fun e!3219854 () Bool)

(assert (=> b!5167504 (= e!3219854 e!3219855)))

(declare-fun res!2196613 () Bool)

(assert (=> b!5167504 (=> (not res!2196613) (not e!3219855))))

(assert (=> b!5167504 (= res!2196613 (not ((_ is Nil!60029) input!5817)))))

(declare-fun b!5167506 () Bool)

(assert (=> b!5167506 (= e!3219855 (isPrefix!5730 (tail!10130 lt!2125923) (tail!10130 input!5817)))))

(declare-fun d!1667112 () Bool)

(declare-fun e!3219856 () Bool)

(assert (=> d!1667112 e!3219856))

(declare-fun res!2196614 () Bool)

(assert (=> d!1667112 (=> res!2196614 e!3219856)))

(declare-fun lt!2125940 () Bool)

(assert (=> d!1667112 (= res!2196614 (not lt!2125940))))

(assert (=> d!1667112 (= lt!2125940 e!3219854)))

(declare-fun res!2196612 () Bool)

(assert (=> d!1667112 (=> res!2196612 e!3219854)))

(assert (=> d!1667112 (= res!2196612 ((_ is Nil!60029) lt!2125923))))

(assert (=> d!1667112 (= (isPrefix!5730 lt!2125923 input!5817) lt!2125940)))

(declare-fun b!5167507 () Bool)

(assert (=> b!5167507 (= e!3219856 (>= (size!39633 input!5817) (size!39633 lt!2125923)))))

(assert (= (and d!1667112 (not res!2196612)) b!5167504))

(assert (= (and b!5167504 res!2196613) b!5167505))

(assert (= (and b!5167505 res!2196611) b!5167506))

(assert (= (and d!1667112 (not res!2196614)) b!5167507))

(declare-fun m!6218296 () Bool)

(assert (=> b!5167505 m!6218296))

(declare-fun m!6218298 () Bool)

(assert (=> b!5167505 m!6218298))

(declare-fun m!6218300 () Bool)

(assert (=> b!5167506 m!6218300))

(declare-fun m!6218302 () Bool)

(assert (=> b!5167506 m!6218302))

(assert (=> b!5167506 m!6218300))

(assert (=> b!5167506 m!6218302))

(declare-fun m!6218304 () Bool)

(assert (=> b!5167506 m!6218304))

(assert (=> b!5167507 m!6218236))

(assert (=> b!5167507 m!6218254))

(assert (=> b!5167460 d!1667112))

(declare-fun d!1667114 () Bool)

(assert (=> d!1667114 (isPrefix!5730 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) input!5817)))

(declare-fun lt!2125943 () Unit!151532)

(declare-fun choose!38242 (List!60153 List!60153) Unit!151532)

(assert (=> d!1667114 (= lt!2125943 (choose!38242 testedP!294 input!5817))))

(assert (=> d!1667114 (isPrefix!5730 testedP!294 input!5817)))

(assert (=> d!1667114 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1043 testedP!294 input!5817) lt!2125943)))

(declare-fun bs!1202968 () Bool)

(assert (= bs!1202968 d!1667114))

(assert (=> bs!1202968 m!6218240))

(declare-fun m!6218306 () Bool)

(assert (=> bs!1202968 m!6218306))

(declare-fun m!6218308 () Bool)

(assert (=> bs!1202968 m!6218308))

(assert (=> bs!1202968 m!6218308))

(declare-fun m!6218310 () Bool)

(assert (=> bs!1202968 m!6218310))

(declare-fun m!6218312 () Bool)

(assert (=> bs!1202968 m!6218312))

(assert (=> bs!1202968 m!6218240))

(assert (=> bs!1202968 m!6218260))

(assert (=> b!5167460 d!1667114))

(declare-fun d!1667116 () Bool)

(declare-fun lambda!257912 () Int)

(declare-fun exists!1902 ((InoxSet Context!7962) Int) Bool)

(assert (=> d!1667116 (= (nullableZipper!1143 z!4581) (exists!1902 z!4581 lambda!257912))))

(declare-fun bs!1202969 () Bool)

(assert (= bs!1202969 d!1667116))

(declare-fun m!6218356 () Bool)

(assert (=> bs!1202969 m!6218356))

(assert (=> b!5167460 d!1667116))

(declare-fun d!1667128 () Bool)

(assert (=> d!1667128 (= (head!11021 lt!2125929) (h!66477 lt!2125929))))

(assert (=> b!5167460 d!1667128))

(declare-fun b!5167559 () Bool)

(declare-fun res!2196621 () Bool)

(declare-fun e!3219886 () Bool)

(assert (=> b!5167559 (=> (not res!2196621) (not e!3219886))))

(assert (=> b!5167559 (= res!2196621 (= (head!11021 testedP!294) (head!11021 input!5817)))))

(declare-fun b!5167558 () Bool)

(declare-fun e!3219885 () Bool)

(assert (=> b!5167558 (= e!3219885 e!3219886)))

(declare-fun res!2196623 () Bool)

(assert (=> b!5167558 (=> (not res!2196623) (not e!3219886))))

(assert (=> b!5167558 (= res!2196623 (not ((_ is Nil!60029) input!5817)))))

(declare-fun b!5167560 () Bool)

(assert (=> b!5167560 (= e!3219886 (isPrefix!5730 (tail!10130 testedP!294) (tail!10130 input!5817)))))

(declare-fun d!1667130 () Bool)

(declare-fun e!3219887 () Bool)

(assert (=> d!1667130 e!3219887))

(declare-fun res!2196624 () Bool)

(assert (=> d!1667130 (=> res!2196624 e!3219887)))

(declare-fun lt!2126026 () Bool)

(assert (=> d!1667130 (= res!2196624 (not lt!2126026))))

(assert (=> d!1667130 (= lt!2126026 e!3219885)))

(declare-fun res!2196622 () Bool)

(assert (=> d!1667130 (=> res!2196622 e!3219885)))

(assert (=> d!1667130 (= res!2196622 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667130 (= (isPrefix!5730 testedP!294 input!5817) lt!2126026)))

(declare-fun b!5167561 () Bool)

(assert (=> b!5167561 (= e!3219887 (>= (size!39633 input!5817) (size!39633 testedP!294)))))

(assert (= (and d!1667130 (not res!2196622)) b!5167558))

(assert (= (and b!5167558 res!2196623) b!5167559))

(assert (= (and b!5167559 res!2196621) b!5167560))

(assert (= (and d!1667130 (not res!2196624)) b!5167561))

(declare-fun m!6218358 () Bool)

(assert (=> b!5167559 m!6218358))

(assert (=> b!5167559 m!6218298))

(declare-fun m!6218360 () Bool)

(assert (=> b!5167560 m!6218360))

(assert (=> b!5167560 m!6218302))

(assert (=> b!5167560 m!6218360))

(assert (=> b!5167560 m!6218302))

(declare-fun m!6218362 () Bool)

(assert (=> b!5167560 m!6218362))

(assert (=> b!5167561 m!6218236))

(assert (=> b!5167561 m!6218234))

(assert (=> start!546832 d!1667130))

(declare-fun d!1667132 () Bool)

(assert (=> d!1667132 (<= (size!39633 testedP!294) (size!39633 input!5817))))

(declare-fun lt!2126029 () Unit!151532)

(declare-fun choose!38244 (List!60153 List!60153) Unit!151532)

(assert (=> d!1667132 (= lt!2126029 (choose!38244 testedP!294 input!5817))))

(assert (=> d!1667132 (isPrefix!5730 testedP!294 input!5817)))

(assert (=> d!1667132 (= (lemmaIsPrefixThenSmallerEqSize!893 testedP!294 input!5817) lt!2126029)))

(declare-fun bs!1202970 () Bool)

(assert (= bs!1202970 d!1667132))

(assert (=> bs!1202970 m!6218234))

(assert (=> bs!1202970 m!6218236))

(declare-fun m!6218364 () Bool)

(assert (=> bs!1202970 m!6218364))

(assert (=> bs!1202970 m!6218260))

(assert (=> b!5167459 d!1667132))

(declare-fun d!1667134 () Bool)

(declare-fun lambda!257918 () Int)

(declare-fun forall!14116 (List!60154 Int) Bool)

(assert (=> d!1667134 (= (inv!79739 setElem!31828) (forall!14116 (exprs!4481 setElem!31828) lambda!257918))))

(declare-fun bs!1202972 () Bool)

(assert (= bs!1202972 d!1667134))

(declare-fun m!6218368 () Bool)

(assert (=> bs!1202972 m!6218368))

(assert (=> setNonEmpty!31828 d!1667134))

(declare-fun d!1667138 () Bool)

(declare-fun lt!2126032 () Int)

(assert (=> d!1667138 (>= lt!2126032 0)))

(declare-fun e!3219890 () Int)

(assert (=> d!1667138 (= lt!2126032 e!3219890)))

(declare-fun c!889227 () Bool)

(assert (=> d!1667138 (= c!889227 ((_ is Nil!60029) input!5817))))

(assert (=> d!1667138 (= (size!39633 input!5817) lt!2126032)))

(declare-fun b!5167566 () Bool)

(assert (=> b!5167566 (= e!3219890 0)))

(declare-fun b!5167567 () Bool)

(assert (=> b!5167567 (= e!3219890 (+ 1 (size!39633 (t!373306 input!5817))))))

(assert (= (and d!1667138 c!889227) b!5167566))

(assert (= (and d!1667138 (not c!889227)) b!5167567))

(declare-fun m!6218370 () Bool)

(assert (=> b!5167567 m!6218370))

(assert (=> b!5167458 d!1667138))

(declare-fun d!1667140 () Bool)

(declare-fun lt!2126038 () List!60153)

(assert (=> d!1667140 (= (++!13121 testedP!294 lt!2126038) input!5817)))

(declare-fun e!3219899 () List!60153)

(assert (=> d!1667140 (= lt!2126038 e!3219899)))

(declare-fun c!889233 () Bool)

(assert (=> d!1667140 (= c!889233 ((_ is Cons!60029) testedP!294))))

(assert (=> d!1667140 (>= (size!39633 input!5817) (size!39633 testedP!294))))

(assert (=> d!1667140 (= (getSuffix!3380 input!5817 testedP!294) lt!2126038)))

(declare-fun b!5167584 () Bool)

(assert (=> b!5167584 (= e!3219899 (getSuffix!3380 (tail!10130 input!5817) (t!373306 testedP!294)))))

(declare-fun b!5167585 () Bool)

(assert (=> b!5167585 (= e!3219899 input!5817)))

(assert (= (and d!1667140 c!889233) b!5167584))

(assert (= (and d!1667140 (not c!889233)) b!5167585))

(declare-fun m!6218378 () Bool)

(assert (=> d!1667140 m!6218378))

(assert (=> d!1667140 m!6218236))

(assert (=> d!1667140 m!6218234))

(assert (=> b!5167584 m!6218302))

(assert (=> b!5167584 m!6218302))

(declare-fun m!6218386 () Bool)

(assert (=> b!5167584 m!6218386))

(assert (=> b!5167458 d!1667140))

(declare-fun bm!362615 () Bool)

(declare-fun call!362625 () C!29464)

(assert (=> bm!362615 (= call!362625 (head!11021 lt!2125929))))

(declare-fun b!5167656 () Bool)

(declare-fun e!3219949 () tuple2!63748)

(assert (=> b!5167656 (= e!3219949 (tuple2!63749 testedP!294 Nil!60029))))

(declare-fun b!5167657 () Bool)

(declare-fun e!3219945 () Bool)

(declare-fun lt!2126109 () tuple2!63748)

(assert (=> b!5167657 (= e!3219945 (>= (size!39633 (_1!35177 lt!2126109)) (size!39633 testedP!294)))))

(declare-fun b!5167658 () Bool)

(declare-fun e!3219951 () tuple2!63748)

(assert (=> b!5167658 (= e!3219951 (tuple2!63749 testedP!294 lt!2125929))))

(declare-fun bm!362616 () Bool)

(declare-fun call!362626 () Bool)

(assert (=> bm!362616 (= call!362626 (nullableZipper!1143 z!4581))))

(declare-fun b!5167659 () Bool)

(declare-fun e!3219947 () Unit!151532)

(declare-fun Unit!151539 () Unit!151532)

(assert (=> b!5167659 (= e!3219947 Unit!151539)))

(declare-fun b!5167660 () Bool)

(declare-fun e!3219946 () tuple2!63748)

(assert (=> b!5167660 (= e!3219946 e!3219951)))

(declare-fun lt!2126127 () tuple2!63748)

(declare-fun call!362620 () tuple2!63748)

(assert (=> b!5167660 (= lt!2126127 call!362620)))

(declare-fun c!889250 () Bool)

(assert (=> b!5167660 (= c!889250 (isEmpty!32139 (_1!35177 lt!2126127)))))

(declare-fun b!5167661 () Bool)

(declare-fun c!889249 () Bool)

(assert (=> b!5167661 (= c!889249 call!362626)))

(declare-fun lt!2126111 () Unit!151532)

(declare-fun lt!2126120 () Unit!151532)

(assert (=> b!5167661 (= lt!2126111 lt!2126120)))

(declare-fun lt!2126122 () List!60153)

(declare-fun lt!2126119 () C!29464)

(assert (=> b!5167661 (= (++!13121 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)) lt!2126122) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1568 (List!60153 C!29464 List!60153 List!60153) Unit!151532)

(assert (=> b!5167661 (= lt!2126120 (lemmaMoveElementToOtherListKeepsConcatEq!1568 testedP!294 lt!2126119 lt!2126122 input!5817))))

(assert (=> b!5167661 (= lt!2126122 (tail!10130 lt!2125929))))

(assert (=> b!5167661 (= lt!2126119 (head!11021 lt!2125929))))

(declare-fun lt!2126124 () Unit!151532)

(declare-fun lt!2126121 () Unit!151532)

(assert (=> b!5167661 (= lt!2126124 lt!2126121)))

(assert (=> b!5167661 (isPrefix!5730 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) input!5817)))

(assert (=> b!5167661 (= lt!2126121 (lemmaAddHeadSuffixToPrefixStillPrefix!1043 testedP!294 input!5817))))

(declare-fun lt!2126132 () List!60153)

(assert (=> b!5167661 (= lt!2126132 (++!13121 testedP!294 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))

(declare-fun lt!2126118 () Unit!151532)

(assert (=> b!5167661 (= lt!2126118 e!3219947)))

(declare-fun c!889252 () Bool)

(assert (=> b!5167661 (= c!889252 (= (size!39633 testedP!294) (size!39633 input!5817)))))

(declare-fun lt!2126129 () Unit!151532)

(declare-fun lt!2126131 () Unit!151532)

(assert (=> b!5167661 (= lt!2126129 lt!2126131)))

(assert (=> b!5167661 (<= (size!39633 testedP!294) (size!39633 input!5817))))

(assert (=> b!5167661 (= lt!2126131 (lemmaIsPrefixThenSmallerEqSize!893 testedP!294 input!5817))))

(declare-fun e!3219950 () tuple2!63748)

(assert (=> b!5167661 (= e!3219950 e!3219946)))

(declare-fun b!5167662 () Bool)

(declare-fun Unit!151540 () Unit!151532)

(assert (=> b!5167662 (= e!3219947 Unit!151540)))

(declare-fun lt!2126133 () Unit!151532)

(declare-fun call!362623 () Unit!151532)

(assert (=> b!5167662 (= lt!2126133 call!362623)))

(declare-fun call!362621 () Bool)

(assert (=> b!5167662 call!362621))

(declare-fun lt!2126117 () Unit!151532)

(assert (=> b!5167662 (= lt!2126117 lt!2126133)))

(declare-fun lt!2126125 () Unit!151532)

(declare-fun call!362622 () Unit!151532)

(assert (=> b!5167662 (= lt!2126125 call!362622)))

(assert (=> b!5167662 (= input!5817 testedP!294)))

(declare-fun lt!2126116 () Unit!151532)

(assert (=> b!5167662 (= lt!2126116 lt!2126125)))

(assert (=> b!5167662 false))

(declare-fun b!5167663 () Bool)

(declare-fun c!889251 () Bool)

(assert (=> b!5167663 (= c!889251 call!362626)))

(declare-fun lt!2126113 () Unit!151532)

(declare-fun lt!2126128 () Unit!151532)

(assert (=> b!5167663 (= lt!2126113 lt!2126128)))

(assert (=> b!5167663 (= input!5817 testedP!294)))

(assert (=> b!5167663 (= lt!2126128 call!362622)))

(declare-fun lt!2126115 () Unit!151532)

(declare-fun lt!2126112 () Unit!151532)

(assert (=> b!5167663 (= lt!2126115 lt!2126112)))

(assert (=> b!5167663 call!362621))

(assert (=> b!5167663 (= lt!2126112 call!362623)))

(assert (=> b!5167663 (= e!3219950 e!3219949)))

(declare-fun bm!362617 () Bool)

(declare-fun call!362624 () (InoxSet Context!7962))

(declare-fun derivationStepZipper!953 ((InoxSet Context!7962) C!29464) (InoxSet Context!7962))

(assert (=> bm!362617 (= call!362624 (derivationStepZipper!953 z!4581 call!362625))))

(declare-fun b!5167664 () Bool)

(assert (=> b!5167664 (= e!3219949 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun bm!362618 () Bool)

(assert (=> bm!362618 (= call!362622 (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 testedP!294 input!5817))))

(declare-fun bm!362619 () Bool)

(assert (=> bm!362619 (= call!362623 (lemmaIsPrefixRefl!3737 input!5817 input!5817))))

(declare-fun b!5167665 () Bool)

(declare-fun e!3219952 () tuple2!63748)

(assert (=> b!5167665 (= e!3219952 e!3219950)))

(declare-fun c!889248 () Bool)

(assert (=> b!5167665 (= c!889248 (= lt!2125926 lt!2125927))))

(declare-fun b!5167666 () Bool)

(assert (=> b!5167666 (= e!3219946 call!362620)))

(declare-fun b!5167667 () Bool)

(declare-fun e!3219948 () Bool)

(assert (=> b!5167667 (= e!3219948 e!3219945)))

(declare-fun res!2196657 () Bool)

(assert (=> b!5167667 (=> res!2196657 e!3219945)))

(assert (=> b!5167667 (= res!2196657 (isEmpty!32139 (_1!35177 lt!2126109)))))

(declare-fun b!5167668 () Bool)

(assert (=> b!5167668 (= e!3219952 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun b!5167669 () Bool)

(assert (=> b!5167669 (= e!3219951 lt!2126127)))

(declare-fun bm!362620 () Bool)

(assert (=> bm!362620 (= call!362621 (isPrefix!5730 input!5817 input!5817))))

(declare-fun call!362627 () List!60153)

(declare-fun bm!362621 () Bool)

(assert (=> bm!362621 (= call!362620 (findLongestMatchInnerZipper!255 call!362624 lt!2126132 (+ lt!2125926 1) call!362627 input!5817 lt!2125927))))

(declare-fun d!1667144 () Bool)

(assert (=> d!1667144 e!3219948))

(declare-fun res!2196658 () Bool)

(assert (=> d!1667144 (=> (not res!2196658) (not e!3219948))))

(assert (=> d!1667144 (= res!2196658 (= (++!13121 (_1!35177 lt!2126109) (_2!35177 lt!2126109)) input!5817))))

(assert (=> d!1667144 (= lt!2126109 e!3219952)))

(declare-fun c!889247 () Bool)

(declare-fun lostCauseZipper!1320 ((InoxSet Context!7962)) Bool)

(assert (=> d!1667144 (= c!889247 (lostCauseZipper!1320 z!4581))))

(declare-fun lt!2126126 () Unit!151532)

(declare-fun Unit!151541 () Unit!151532)

(assert (=> d!1667144 (= lt!2126126 Unit!151541)))

(assert (=> d!1667144 (= (getSuffix!3380 input!5817 testedP!294) lt!2125929)))

(declare-fun lt!2126123 () Unit!151532)

(declare-fun lt!2126130 () Unit!151532)

(assert (=> d!1667144 (= lt!2126123 lt!2126130)))

(declare-fun lt!2126134 () List!60153)

(assert (=> d!1667144 (= lt!2125929 lt!2126134)))

(declare-fun lemmaSamePrefixThenSameSuffix!2687 (List!60153 List!60153 List!60153 List!60153 List!60153) Unit!151532)

(assert (=> d!1667144 (= lt!2126130 (lemmaSamePrefixThenSameSuffix!2687 testedP!294 lt!2125929 testedP!294 lt!2126134 input!5817))))

(assert (=> d!1667144 (= lt!2126134 (getSuffix!3380 input!5817 testedP!294))))

(declare-fun lt!2126114 () Unit!151532)

(declare-fun lt!2126110 () Unit!151532)

(assert (=> d!1667144 (= lt!2126114 lt!2126110)))

(assert (=> d!1667144 (isPrefix!5730 testedP!294 (++!13121 testedP!294 lt!2125929))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3581 (List!60153 List!60153) Unit!151532)

(assert (=> d!1667144 (= lt!2126110 (lemmaConcatTwoListThenFirstIsPrefix!3581 testedP!294 lt!2125929))))

(assert (=> d!1667144 (= (++!13121 testedP!294 lt!2125929) input!5817)))

(assert (=> d!1667144 (= (findLongestMatchInnerZipper!255 z!4581 testedP!294 lt!2125926 lt!2125929 input!5817 lt!2125927) lt!2126109)))

(declare-fun bm!362622 () Bool)

(assert (=> bm!362622 (= call!362627 (tail!10130 lt!2125929))))

(assert (= (and d!1667144 c!889247) b!5167668))

(assert (= (and d!1667144 (not c!889247)) b!5167665))

(assert (= (and b!5167665 c!889248) b!5167663))

(assert (= (and b!5167665 (not c!889248)) b!5167661))

(assert (= (and b!5167663 c!889251) b!5167656))

(assert (= (and b!5167663 (not c!889251)) b!5167664))

(assert (= (and b!5167661 c!889252) b!5167662))

(assert (= (and b!5167661 (not c!889252)) b!5167659))

(assert (= (and b!5167661 c!889249) b!5167660))

(assert (= (and b!5167661 (not c!889249)) b!5167666))

(assert (= (and b!5167660 c!889250) b!5167658))

(assert (= (and b!5167660 (not c!889250)) b!5167669))

(assert (= (or b!5167660 b!5167666) bm!362622))

(assert (= (or b!5167660 b!5167666) bm!362615))

(assert (= (or b!5167660 b!5167666) bm!362617))

(assert (= (or b!5167660 b!5167666) bm!362621))

(assert (= (or b!5167663 b!5167662) bm!362619))

(assert (= (or b!5167663 b!5167661) bm!362616))

(assert (= (or b!5167663 b!5167662) bm!362620))

(assert (= (or b!5167663 b!5167662) bm!362618))

(assert (= (and d!1667144 res!2196658) b!5167667))

(assert (= (and b!5167667 (not res!2196657)) b!5167657))

(assert (=> d!1667144 m!6218240))

(declare-fun m!6218432 () Bool)

(assert (=> d!1667144 m!6218432))

(declare-fun m!6218434 () Bool)

(assert (=> d!1667144 m!6218434))

(declare-fun m!6218436 () Bool)

(assert (=> d!1667144 m!6218436))

(declare-fun m!6218438 () Bool)

(assert (=> d!1667144 m!6218438))

(assert (=> d!1667144 m!6218432))

(declare-fun m!6218440 () Bool)

(assert (=> d!1667144 m!6218440))

(declare-fun m!6218442 () Bool)

(assert (=> d!1667144 m!6218442))

(declare-fun m!6218444 () Bool)

(assert (=> b!5167657 m!6218444))

(assert (=> b!5167657 m!6218234))

(assert (=> bm!362618 m!6218252))

(assert (=> bm!362616 m!6218274))

(declare-fun m!6218446 () Bool)

(assert (=> bm!362621 m!6218446))

(assert (=> bm!362615 m!6218272))

(declare-fun m!6218448 () Bool)

(assert (=> bm!362617 m!6218448))

(assert (=> b!5167661 m!6218266))

(assert (=> b!5167661 m!6218240))

(assert (=> b!5167661 m!6218306))

(declare-fun m!6218450 () Bool)

(assert (=> b!5167661 m!6218450))

(assert (=> b!5167661 m!6218272))

(assert (=> b!5167661 m!6218268))

(assert (=> b!5167661 m!6218244))

(assert (=> b!5167661 m!6218308))

(assert (=> b!5167661 m!6218310))

(declare-fun m!6218452 () Bool)

(assert (=> b!5167661 m!6218452))

(assert (=> b!5167661 m!6218240))

(assert (=> b!5167661 m!6218262))

(assert (=> b!5167661 m!6218236))

(assert (=> b!5167661 m!6218234))

(assert (=> b!5167661 m!6218308))

(assert (=> b!5167661 m!6218450))

(declare-fun m!6218454 () Bool)

(assert (=> b!5167661 m!6218454))

(assert (=> bm!362619 m!6218248))

(declare-fun m!6218456 () Bool)

(assert (=> b!5167667 m!6218456))

(assert (=> bm!362620 m!6218250))

(declare-fun m!6218458 () Bool)

(assert (=> b!5167660 m!6218458))

(assert (=> bm!362622 m!6218262))

(assert (=> b!5167458 d!1667144))

(declare-fun d!1667166 () Bool)

(declare-fun lt!2126135 () Int)

(assert (=> d!1667166 (>= lt!2126135 0)))

(declare-fun e!3219953 () Int)

(assert (=> d!1667166 (= lt!2126135 e!3219953)))

(declare-fun c!889253 () Bool)

(assert (=> d!1667166 (= c!889253 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667166 (= (size!39633 testedP!294) lt!2126135)))

(declare-fun b!5167670 () Bool)

(assert (=> b!5167670 (= e!3219953 0)))

(declare-fun b!5167671 () Bool)

(assert (=> b!5167671 (= e!3219953 (+ 1 (size!39633 (t!373306 testedP!294))))))

(assert (= (and d!1667166 c!889253) b!5167670))

(assert (= (and d!1667166 (not c!889253)) b!5167671))

(declare-fun m!6218460 () Bool)

(assert (=> b!5167671 m!6218460))

(assert (=> b!5167458 d!1667166))

(declare-fun d!1667168 () Bool)

(assert (=> d!1667168 (= (isEmpty!32139 (_1!35177 (findLongestMatchInnerZipper!255 z!4581 testedP!294 lt!2125926 lt!2125929 input!5817 lt!2125927))) ((_ is Nil!60029) (_1!35177 (findLongestMatchInnerZipper!255 z!4581 testedP!294 lt!2125926 lt!2125929 input!5817 lt!2125927))))))

(assert (=> b!5167458 d!1667168))

(declare-fun d!1667170 () Bool)

(declare-fun c!889256 () Bool)

(assert (=> d!1667170 (= c!889256 ((_ is Cons!60029) testedP!294))))

(declare-fun e!3219956 () (InoxSet Context!7962))

(assert (=> d!1667170 (= (derivationZipper!220 baseZ!62 testedP!294) e!3219956)))

(declare-fun b!5167676 () Bool)

(assert (=> b!5167676 (= e!3219956 (derivationZipper!220 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (t!373306 testedP!294)))))

(declare-fun b!5167677 () Bool)

(assert (=> b!5167677 (= e!3219956 baseZ!62)))

(assert (= (and d!1667170 c!889256) b!5167676))

(assert (= (and d!1667170 (not c!889256)) b!5167677))

(declare-fun m!6218462 () Bool)

(assert (=> b!5167676 m!6218462))

(assert (=> b!5167676 m!6218462))

(declare-fun m!6218464 () Bool)

(assert (=> b!5167676 m!6218464))

(assert (=> b!5167457 d!1667170))

(declare-fun d!1667172 () Bool)

(assert (=> d!1667172 (isPrefix!5730 input!5817 input!5817)))

(declare-fun lt!2126138 () Unit!151532)

(declare-fun choose!38247 (List!60153 List!60153) Unit!151532)

(assert (=> d!1667172 (= lt!2126138 (choose!38247 input!5817 input!5817))))

(assert (=> d!1667172 (= (lemmaIsPrefixRefl!3737 input!5817 input!5817) lt!2126138)))

(declare-fun bs!1202980 () Bool)

(assert (= bs!1202980 d!1667172))

(assert (=> bs!1202980 m!6218250))

(declare-fun m!6218466 () Bool)

(assert (=> bs!1202980 m!6218466))

(assert (=> b!5167465 d!1667172))

(declare-fun b!5167679 () Bool)

(declare-fun res!2196659 () Bool)

(declare-fun e!3219958 () Bool)

(assert (=> b!5167679 (=> (not res!2196659) (not e!3219958))))

(assert (=> b!5167679 (= res!2196659 (= (head!11021 input!5817) (head!11021 input!5817)))))

(declare-fun b!5167678 () Bool)

(declare-fun e!3219957 () Bool)

(assert (=> b!5167678 (= e!3219957 e!3219958)))

(declare-fun res!2196661 () Bool)

(assert (=> b!5167678 (=> (not res!2196661) (not e!3219958))))

(assert (=> b!5167678 (= res!2196661 (not ((_ is Nil!60029) input!5817)))))

(declare-fun b!5167680 () Bool)

(assert (=> b!5167680 (= e!3219958 (isPrefix!5730 (tail!10130 input!5817) (tail!10130 input!5817)))))

(declare-fun d!1667174 () Bool)

(declare-fun e!3219959 () Bool)

(assert (=> d!1667174 e!3219959))

(declare-fun res!2196662 () Bool)

(assert (=> d!1667174 (=> res!2196662 e!3219959)))

(declare-fun lt!2126139 () Bool)

(assert (=> d!1667174 (= res!2196662 (not lt!2126139))))

(assert (=> d!1667174 (= lt!2126139 e!3219957)))

(declare-fun res!2196660 () Bool)

(assert (=> d!1667174 (=> res!2196660 e!3219957)))

(assert (=> d!1667174 (= res!2196660 ((_ is Nil!60029) input!5817))))

(assert (=> d!1667174 (= (isPrefix!5730 input!5817 input!5817) lt!2126139)))

(declare-fun b!5167681 () Bool)

(assert (=> b!5167681 (= e!3219959 (>= (size!39633 input!5817) (size!39633 input!5817)))))

(assert (= (and d!1667174 (not res!2196660)) b!5167678))

(assert (= (and b!5167678 res!2196661) b!5167679))

(assert (= (and b!5167679 res!2196659) b!5167680))

(assert (= (and d!1667174 (not res!2196662)) b!5167681))

(assert (=> b!5167679 m!6218298))

(assert (=> b!5167679 m!6218298))

(assert (=> b!5167680 m!6218302))

(assert (=> b!5167680 m!6218302))

(assert (=> b!5167680 m!6218302))

(assert (=> b!5167680 m!6218302))

(declare-fun m!6218468 () Bool)

(assert (=> b!5167680 m!6218468))

(assert (=> b!5167681 m!6218236))

(assert (=> b!5167681 m!6218236))

(assert (=> b!5167465 d!1667174))

(declare-fun d!1667176 () Bool)

(assert (=> d!1667176 (= input!5817 testedP!294)))

(declare-fun lt!2126142 () Unit!151532)

(declare-fun choose!38248 (List!60153 List!60153 List!60153) Unit!151532)

(assert (=> d!1667176 (= lt!2126142 (choose!38248 input!5817 testedP!294 input!5817))))

(assert (=> d!1667176 (isPrefix!5730 input!5817 input!5817)))

(assert (=> d!1667176 (= (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 testedP!294 input!5817) lt!2126142)))

(declare-fun bs!1202981 () Bool)

(assert (= bs!1202981 d!1667176))

(declare-fun m!6218470 () Bool)

(assert (=> bs!1202981 m!6218470))

(assert (=> bs!1202981 m!6218250))

(assert (=> b!5167465 d!1667176))

(declare-fun b!5167683 () Bool)

(declare-fun e!3219960 () List!60153)

(assert (=> b!5167683 (= e!3219960 (Cons!60029 (h!66477 lt!2125923) (++!13121 (t!373306 lt!2125923) (tail!10130 lt!2125929))))))

(declare-fun b!5167685 () Bool)

(declare-fun lt!2126143 () List!60153)

(declare-fun e!3219961 () Bool)

(assert (=> b!5167685 (= e!3219961 (or (not (= (tail!10130 lt!2125929) Nil!60029)) (= lt!2126143 lt!2125923)))))

(declare-fun b!5167684 () Bool)

(declare-fun res!2196664 () Bool)

(assert (=> b!5167684 (=> (not res!2196664) (not e!3219961))))

(assert (=> b!5167684 (= res!2196664 (= (size!39633 lt!2126143) (+ (size!39633 lt!2125923) (size!39633 (tail!10130 lt!2125929)))))))

(declare-fun d!1667178 () Bool)

(assert (=> d!1667178 e!3219961))

(declare-fun res!2196663 () Bool)

(assert (=> d!1667178 (=> (not res!2196663) (not e!3219961))))

(assert (=> d!1667178 (= res!2196663 (= (content!10637 lt!2126143) ((_ map or) (content!10637 lt!2125923) (content!10637 (tail!10130 lt!2125929)))))))

(assert (=> d!1667178 (= lt!2126143 e!3219960)))

(declare-fun c!889257 () Bool)

(assert (=> d!1667178 (= c!889257 ((_ is Nil!60029) lt!2125923))))

(assert (=> d!1667178 (= (++!13121 lt!2125923 (tail!10130 lt!2125929)) lt!2126143)))

(declare-fun b!5167682 () Bool)

(assert (=> b!5167682 (= e!3219960 (tail!10130 lt!2125929))))

(assert (= (and d!1667178 c!889257) b!5167682))

(assert (= (and d!1667178 (not c!889257)) b!5167683))

(assert (= (and d!1667178 res!2196663) b!5167684))

(assert (= (and b!5167684 res!2196664) b!5167685))

(assert (=> b!5167683 m!6218262))

(declare-fun m!6218472 () Bool)

(assert (=> b!5167683 m!6218472))

(declare-fun m!6218474 () Bool)

(assert (=> b!5167684 m!6218474))

(assert (=> b!5167684 m!6218254))

(assert (=> b!5167684 m!6218262))

(declare-fun m!6218476 () Bool)

(assert (=> b!5167684 m!6218476))

(declare-fun m!6218478 () Bool)

(assert (=> d!1667178 m!6218478))

(declare-fun m!6218480 () Bool)

(assert (=> d!1667178 m!6218480))

(assert (=> d!1667178 m!6218262))

(declare-fun m!6218482 () Bool)

(assert (=> d!1667178 m!6218482))

(assert (=> b!5167464 d!1667178))

(declare-fun d!1667180 () Bool)

(assert (=> d!1667180 (= (tail!10130 lt!2125929) (t!373306 lt!2125929))))

(assert (=> b!5167464 d!1667180))

(declare-fun d!1667182 () Bool)

(declare-fun lt!2126144 () Int)

(assert (=> d!1667182 (>= lt!2126144 0)))

(declare-fun e!3219962 () Int)

(assert (=> d!1667182 (= lt!2126144 e!3219962)))

(declare-fun c!889258 () Bool)

(assert (=> d!1667182 (= c!889258 ((_ is Nil!60029) lt!2125923))))

(assert (=> d!1667182 (= (size!39633 lt!2125923) lt!2126144)))

(declare-fun b!5167686 () Bool)

(assert (=> b!5167686 (= e!3219962 0)))

(declare-fun b!5167687 () Bool)

(assert (=> b!5167687 (= e!3219962 (+ 1 (size!39633 (t!373306 lt!2125923))))))

(assert (= (and d!1667182 c!889258) b!5167686))

(assert (= (and d!1667182 (not c!889258)) b!5167687))

(declare-fun m!6218484 () Bool)

(assert (=> b!5167687 m!6218484))

(assert (=> b!5167461 d!1667182))

(declare-fun bs!1202982 () Bool)

(declare-fun d!1667184 () Bool)

(assert (= bs!1202982 (and d!1667184 d!1667134)))

(declare-fun lambda!257923 () Int)

(assert (=> bs!1202982 (= lambda!257923 lambda!257918)))

(assert (=> d!1667184 (= (inv!79739 setElem!31827) (forall!14116 (exprs!4481 setElem!31827) lambda!257923))))

(declare-fun bs!1202983 () Bool)

(assert (= bs!1202983 d!1667184))

(declare-fun m!6218486 () Bool)

(assert (=> bs!1202983 m!6218486))

(assert (=> setNonEmpty!31827 d!1667184))

(declare-fun b!5167692 () Bool)

(declare-fun e!3219965 () Bool)

(declare-fun tp!1449782 () Bool)

(assert (=> b!5167692 (= e!3219965 (and tp_is_empty!38447 tp!1449782))))

(assert (=> b!5167462 (= tp!1449756 e!3219965)))

(assert (= (and b!5167462 ((_ is Cons!60029) (t!373306 input!5817))) b!5167692))

(declare-fun condSetEmpty!31835 () Bool)

(assert (=> setNonEmpty!31828 (= condSetEmpty!31835 (= setRest!31827 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31835 () Bool)

(assert (=> setNonEmpty!31828 (= tp!1449754 setRes!31835)))

(declare-fun setIsEmpty!31835 () Bool)

(assert (=> setIsEmpty!31835 setRes!31835))

(declare-fun tp!1449788 () Bool)

(declare-fun e!3219968 () Bool)

(declare-fun setElem!31835 () Context!7962)

(declare-fun setNonEmpty!31835 () Bool)

(assert (=> setNonEmpty!31835 (= setRes!31835 (and tp!1449788 (inv!79739 setElem!31835) e!3219968))))

(declare-fun setRest!31835 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31835 (= setRest!31827 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31835 true) setRest!31835))))

(declare-fun b!5167697 () Bool)

(declare-fun tp!1449787 () Bool)

(assert (=> b!5167697 (= e!3219968 tp!1449787)))

(assert (= (and setNonEmpty!31828 condSetEmpty!31835) setIsEmpty!31835))

(assert (= (and setNonEmpty!31828 (not condSetEmpty!31835)) setNonEmpty!31835))

(assert (= setNonEmpty!31835 b!5167697))

(declare-fun m!6218488 () Bool)

(assert (=> setNonEmpty!31835 m!6218488))

(declare-fun b!5167702 () Bool)

(declare-fun e!3219971 () Bool)

(declare-fun tp!1449793 () Bool)

(declare-fun tp!1449794 () Bool)

(assert (=> b!5167702 (= e!3219971 (and tp!1449793 tp!1449794))))

(assert (=> b!5167469 (= tp!1449758 e!3219971)))

(assert (= (and b!5167469 ((_ is Cons!60030) (exprs!4481 setElem!31828))) b!5167702))

(declare-fun condSetEmpty!31836 () Bool)

(assert (=> setNonEmpty!31827 (= condSetEmpty!31836 (= setRest!31828 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31836 () Bool)

(assert (=> setNonEmpty!31827 (= tp!1449759 setRes!31836)))

(declare-fun setIsEmpty!31836 () Bool)

(assert (=> setIsEmpty!31836 setRes!31836))

(declare-fun setNonEmpty!31836 () Bool)

(declare-fun tp!1449796 () Bool)

(declare-fun setElem!31836 () Context!7962)

(declare-fun e!3219972 () Bool)

(assert (=> setNonEmpty!31836 (= setRes!31836 (and tp!1449796 (inv!79739 setElem!31836) e!3219972))))

(declare-fun setRest!31836 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31836 (= setRest!31828 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31836 true) setRest!31836))))

(declare-fun b!5167703 () Bool)

(declare-fun tp!1449795 () Bool)

(assert (=> b!5167703 (= e!3219972 tp!1449795)))

(assert (= (and setNonEmpty!31827 condSetEmpty!31836) setIsEmpty!31836))

(assert (= (and setNonEmpty!31827 (not condSetEmpty!31836)) setNonEmpty!31836))

(assert (= setNonEmpty!31836 b!5167703))

(declare-fun m!6218490 () Bool)

(assert (=> setNonEmpty!31836 m!6218490))

(declare-fun b!5167704 () Bool)

(declare-fun e!3219973 () Bool)

(declare-fun tp!1449797 () Bool)

(assert (=> b!5167704 (= e!3219973 (and tp_is_empty!38447 tp!1449797))))

(assert (=> b!5167467 (= tp!1449755 e!3219973)))

(assert (= (and b!5167467 ((_ is Cons!60029) (t!373306 testedP!294))) b!5167704))

(declare-fun b!5167705 () Bool)

(declare-fun e!3219974 () Bool)

(declare-fun tp!1449798 () Bool)

(declare-fun tp!1449799 () Bool)

(assert (=> b!5167705 (= e!3219974 (and tp!1449798 tp!1449799))))

(assert (=> b!5167463 (= tp!1449757 e!3219974)))

(assert (= (and b!5167463 ((_ is Cons!60030) (exprs!4481 setElem!31827))) b!5167705))

(check-sat (not b!5167561) (not b!5167491) (not d!1667132) (not b!5167492) (not b!5167506) (not setNonEmpty!31836) (not b!5167704) (not d!1667114) (not b!5167661) (not bm!362615) (not d!1667140) (not b!5167671) (not bm!362616) (not b!5167559) (not d!1667116) (not b!5167684) (not b!5167667) (not b!5167676) (not b!5167683) (not b!5167505) (not b!5167560) (not b!5167567) (not d!1667144) (not b!5167507) (not bm!362617) (not b!5167680) (not b!5167679) (not bm!362621) (not d!1667172) (not d!1667178) (not d!1667184) (not b!5167681) (not b!5167657) (not b!5167697) (not bm!362622) (not d!1667134) (not setNonEmpty!31835) (not b!5167703) (not b!5167692) (not b!5167584) (not d!1667176) (not bm!362618) tp_is_empty!38447 (not b!5167687) (not bm!362620) (not b!5167660) (not b!5167705) (not d!1667102) (not bm!362619) (not b!5167702))
(check-sat)
(get-model)

(declare-fun bs!1202993 () Bool)

(declare-fun d!1667274 () Bool)

(assert (= bs!1202993 (and d!1667274 d!1667134)))

(declare-fun lambda!257929 () Int)

(assert (=> bs!1202993 (= lambda!257929 lambda!257918)))

(declare-fun bs!1202994 () Bool)

(assert (= bs!1202994 (and d!1667274 d!1667184)))

(assert (=> bs!1202994 (= lambda!257929 lambda!257923)))

(assert (=> d!1667274 (= (inv!79739 setElem!31835) (forall!14116 (exprs!4481 setElem!31835) lambda!257929))))

(declare-fun bs!1202996 () Bool)

(assert (= bs!1202996 d!1667274))

(declare-fun m!6218700 () Bool)

(assert (=> bs!1202996 m!6218700))

(assert (=> setNonEmpty!31835 d!1667274))

(declare-fun d!1667280 () Bool)

(assert (=> d!1667280 (= input!5817 testedP!294)))

(assert (=> d!1667280 true))

(declare-fun _$60!949 () Unit!151532)

(assert (=> d!1667280 (= (choose!38248 input!5817 testedP!294 input!5817) _$60!949)))

(assert (=> d!1667176 d!1667280))

(assert (=> d!1667176 d!1667174))

(declare-fun d!1667286 () Bool)

(declare-fun lt!2126196 () Int)

(assert (=> d!1667286 (>= lt!2126196 0)))

(declare-fun e!3220033 () Int)

(assert (=> d!1667286 (= lt!2126196 e!3220033)))

(declare-fun c!889291 () Bool)

(assert (=> d!1667286 (= c!889291 ((_ is Nil!60029) lt!2126143))))

(assert (=> d!1667286 (= (size!39633 lt!2126143) lt!2126196)))

(declare-fun b!5167806 () Bool)

(assert (=> b!5167806 (= e!3220033 0)))

(declare-fun b!5167807 () Bool)

(assert (=> b!5167807 (= e!3220033 (+ 1 (size!39633 (t!373306 lt!2126143))))))

(assert (= (and d!1667286 c!889291) b!5167806))

(assert (= (and d!1667286 (not c!889291)) b!5167807))

(declare-fun m!6218708 () Bool)

(assert (=> b!5167807 m!6218708))

(assert (=> b!5167684 d!1667286))

(assert (=> b!5167684 d!1667182))

(declare-fun d!1667290 () Bool)

(declare-fun lt!2126197 () Int)

(assert (=> d!1667290 (>= lt!2126197 0)))

(declare-fun e!3220034 () Int)

(assert (=> d!1667290 (= lt!2126197 e!3220034)))

(declare-fun c!889292 () Bool)

(assert (=> d!1667290 (= c!889292 ((_ is Nil!60029) (tail!10130 lt!2125929)))))

(assert (=> d!1667290 (= (size!39633 (tail!10130 lt!2125929)) lt!2126197)))

(declare-fun b!5167808 () Bool)

(assert (=> b!5167808 (= e!3220034 0)))

(declare-fun b!5167809 () Bool)

(assert (=> b!5167809 (= e!3220034 (+ 1 (size!39633 (t!373306 (tail!10130 lt!2125929)))))))

(assert (= (and d!1667290 c!889292) b!5167808))

(assert (= (and d!1667290 (not c!889292)) b!5167809))

(declare-fun m!6218710 () Bool)

(assert (=> b!5167809 m!6218710))

(assert (=> b!5167684 d!1667290))

(assert (=> b!5167561 d!1667138))

(assert (=> b!5167561 d!1667166))

(declare-fun b!5167811 () Bool)

(declare-fun e!3220035 () List!60153)

(assert (=> b!5167811 (= e!3220035 (Cons!60029 (h!66477 (t!373306 lt!2125923)) (++!13121 (t!373306 (t!373306 lt!2125923)) (tail!10130 lt!2125929))))))

(declare-fun e!3220036 () Bool)

(declare-fun b!5167813 () Bool)

(declare-fun lt!2126198 () List!60153)

(assert (=> b!5167813 (= e!3220036 (or (not (= (tail!10130 lt!2125929) Nil!60029)) (= lt!2126198 (t!373306 lt!2125923))))))

(declare-fun b!5167812 () Bool)

(declare-fun res!2196704 () Bool)

(assert (=> b!5167812 (=> (not res!2196704) (not e!3220036))))

(assert (=> b!5167812 (= res!2196704 (= (size!39633 lt!2126198) (+ (size!39633 (t!373306 lt!2125923)) (size!39633 (tail!10130 lt!2125929)))))))

(declare-fun d!1667292 () Bool)

(assert (=> d!1667292 e!3220036))

(declare-fun res!2196703 () Bool)

(assert (=> d!1667292 (=> (not res!2196703) (not e!3220036))))

(assert (=> d!1667292 (= res!2196703 (= (content!10637 lt!2126198) ((_ map or) (content!10637 (t!373306 lt!2125923)) (content!10637 (tail!10130 lt!2125929)))))))

(assert (=> d!1667292 (= lt!2126198 e!3220035)))

(declare-fun c!889293 () Bool)

(assert (=> d!1667292 (= c!889293 ((_ is Nil!60029) (t!373306 lt!2125923)))))

(assert (=> d!1667292 (= (++!13121 (t!373306 lt!2125923) (tail!10130 lt!2125929)) lt!2126198)))

(declare-fun b!5167810 () Bool)

(assert (=> b!5167810 (= e!3220035 (tail!10130 lt!2125929))))

(assert (= (and d!1667292 c!889293) b!5167810))

(assert (= (and d!1667292 (not c!889293)) b!5167811))

(assert (= (and d!1667292 res!2196703) b!5167812))

(assert (= (and b!5167812 res!2196704) b!5167813))

(assert (=> b!5167811 m!6218262))

(declare-fun m!6218712 () Bool)

(assert (=> b!5167811 m!6218712))

(declare-fun m!6218714 () Bool)

(assert (=> b!5167812 m!6218714))

(assert (=> b!5167812 m!6218484))

(assert (=> b!5167812 m!6218262))

(assert (=> b!5167812 m!6218476))

(declare-fun m!6218716 () Bool)

(assert (=> d!1667292 m!6218716))

(declare-fun m!6218718 () Bool)

(assert (=> d!1667292 m!6218718))

(assert (=> d!1667292 m!6218262))

(assert (=> d!1667292 m!6218482))

(assert (=> b!5167683 d!1667292))

(declare-fun d!1667294 () Bool)

(assert (=> d!1667294 true))

(declare-fun lambda!257933 () Int)

(declare-fun flatMap!437 ((InoxSet Context!7962) Int) (InoxSet Context!7962))

(assert (=> d!1667294 (= (derivationStepZipper!953 z!4581 call!362625) (flatMap!437 z!4581 lambda!257933))))

(declare-fun bs!1203002 () Bool)

(assert (= bs!1203002 d!1667294))

(declare-fun m!6218720 () Bool)

(assert (=> bs!1203002 m!6218720))

(assert (=> bm!362617 d!1667294))

(declare-fun d!1667296 () Bool)

(declare-fun lt!2126199 () Int)

(assert (=> d!1667296 (>= lt!2126199 0)))

(declare-fun e!3220037 () Int)

(assert (=> d!1667296 (= lt!2126199 e!3220037)))

(declare-fun c!889296 () Bool)

(assert (=> d!1667296 (= c!889296 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667296 (= (size!39633 (t!373306 testedP!294)) lt!2126199)))

(declare-fun b!5167816 () Bool)

(assert (=> b!5167816 (= e!3220037 0)))

(declare-fun b!5167817 () Bool)

(assert (=> b!5167817 (= e!3220037 (+ 1 (size!39633 (t!373306 (t!373306 testedP!294)))))))

(assert (= (and d!1667296 c!889296) b!5167816))

(assert (= (and d!1667296 (not c!889296)) b!5167817))

(declare-fun m!6218722 () Bool)

(assert (=> b!5167817 m!6218722))

(assert (=> b!5167671 d!1667296))

(assert (=> bm!362619 d!1667172))

(assert (=> bm!362618 d!1667176))

(declare-fun d!1667298 () Bool)

(declare-fun lt!2126200 () Int)

(assert (=> d!1667298 (>= lt!2126200 0)))

(declare-fun e!3220038 () Int)

(assert (=> d!1667298 (= lt!2126200 e!3220038)))

(declare-fun c!889297 () Bool)

(assert (=> d!1667298 (= c!889297 ((_ is Nil!60029) (t!373306 input!5817)))))

(assert (=> d!1667298 (= (size!39633 (t!373306 input!5817)) lt!2126200)))

(declare-fun b!5167818 () Bool)

(assert (=> b!5167818 (= e!3220038 0)))

(declare-fun b!5167819 () Bool)

(assert (=> b!5167819 (= e!3220038 (+ 1 (size!39633 (t!373306 (t!373306 input!5817)))))))

(assert (= (and d!1667298 c!889297) b!5167818))

(assert (= (and d!1667298 (not c!889297)) b!5167819))

(declare-fun m!6218724 () Bool)

(assert (=> b!5167819 m!6218724))

(assert (=> b!5167567 d!1667298))

(declare-fun d!1667300 () Bool)

(assert (=> d!1667300 (= (isEmpty!32139 (_1!35177 lt!2126109)) ((_ is Nil!60029) (_1!35177 lt!2126109)))))

(assert (=> b!5167667 d!1667300))

(declare-fun d!1667302 () Bool)

(assert (=> d!1667302 (= (head!11021 lt!2125923) (h!66477 lt!2125923))))

(assert (=> b!5167505 d!1667302))

(declare-fun d!1667304 () Bool)

(assert (=> d!1667304 (= (head!11021 input!5817) (h!66477 input!5817))))

(assert (=> b!5167505 d!1667304))

(declare-fun d!1667306 () Bool)

(declare-fun lt!2126205 () Int)

(assert (=> d!1667306 (>= lt!2126205 0)))

(declare-fun e!3220040 () Int)

(assert (=> d!1667306 (= lt!2126205 e!3220040)))

(declare-fun c!889299 () Bool)

(assert (=> d!1667306 (= c!889299 ((_ is Nil!60029) lt!2125936))))

(assert (=> d!1667306 (= (size!39633 lt!2125936) lt!2126205)))

(declare-fun b!5167824 () Bool)

(assert (=> b!5167824 (= e!3220040 0)))

(declare-fun b!5167825 () Bool)

(assert (=> b!5167825 (= e!3220040 (+ 1 (size!39633 (t!373306 lt!2125936))))))

(assert (= (and d!1667306 c!889299) b!5167824))

(assert (= (and d!1667306 (not c!889299)) b!5167825))

(declare-fun m!6218726 () Bool)

(assert (=> b!5167825 m!6218726))

(assert (=> b!5167492 d!1667306))

(assert (=> b!5167492 d!1667166))

(declare-fun d!1667308 () Bool)

(declare-fun lt!2126206 () Int)

(assert (=> d!1667308 (>= lt!2126206 0)))

(declare-fun e!3220042 () Int)

(assert (=> d!1667308 (= lt!2126206 e!3220042)))

(declare-fun c!889303 () Bool)

(assert (=> d!1667308 (= c!889303 ((_ is Nil!60029) (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))

(assert (=> d!1667308 (= (size!39633 (Cons!60029 (head!11021 lt!2125929) Nil!60029)) lt!2126206)))

(declare-fun b!5167826 () Bool)

(assert (=> b!5167826 (= e!3220042 0)))

(declare-fun b!5167827 () Bool)

(assert (=> b!5167827 (= e!3220042 (+ 1 (size!39633 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(assert (= (and d!1667308 c!889303) b!5167826))

(assert (= (and d!1667308 (not c!889303)) b!5167827))

(declare-fun m!6218728 () Bool)

(assert (=> b!5167827 m!6218728))

(assert (=> b!5167492 d!1667308))

(declare-fun b!5167829 () Bool)

(declare-fun e!3220043 () List!60153)

(assert (=> b!5167829 (= e!3220043 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) lt!2126038)))))

(declare-fun e!3220044 () Bool)

(declare-fun lt!2126207 () List!60153)

(declare-fun b!5167831 () Bool)

(assert (=> b!5167831 (= e!3220044 (or (not (= lt!2126038 Nil!60029)) (= lt!2126207 testedP!294)))))

(declare-fun b!5167830 () Bool)

(declare-fun res!2196706 () Bool)

(assert (=> b!5167830 (=> (not res!2196706) (not e!3220044))))

(assert (=> b!5167830 (= res!2196706 (= (size!39633 lt!2126207) (+ (size!39633 testedP!294) (size!39633 lt!2126038))))))

(declare-fun d!1667310 () Bool)

(assert (=> d!1667310 e!3220044))

(declare-fun res!2196705 () Bool)

(assert (=> d!1667310 (=> (not res!2196705) (not e!3220044))))

(assert (=> d!1667310 (= res!2196705 (= (content!10637 lt!2126207) ((_ map or) (content!10637 testedP!294) (content!10637 lt!2126038))))))

(assert (=> d!1667310 (= lt!2126207 e!3220043)))

(declare-fun c!889304 () Bool)

(assert (=> d!1667310 (= c!889304 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667310 (= (++!13121 testedP!294 lt!2126038) lt!2126207)))

(declare-fun b!5167828 () Bool)

(assert (=> b!5167828 (= e!3220043 lt!2126038)))

(assert (= (and d!1667310 c!889304) b!5167828))

(assert (= (and d!1667310 (not c!889304)) b!5167829))

(assert (= (and d!1667310 res!2196705) b!5167830))

(assert (= (and b!5167830 res!2196706) b!5167831))

(declare-fun m!6218730 () Bool)

(assert (=> b!5167829 m!6218730))

(declare-fun m!6218732 () Bool)

(assert (=> b!5167830 m!6218732))

(assert (=> b!5167830 m!6218234))

(declare-fun m!6218734 () Bool)

(assert (=> b!5167830 m!6218734))

(declare-fun m!6218736 () Bool)

(assert (=> d!1667310 m!6218736))

(assert (=> d!1667310 m!6218292))

(declare-fun m!6218738 () Bool)

(assert (=> d!1667310 m!6218738))

(assert (=> d!1667140 d!1667310))

(assert (=> d!1667140 d!1667138))

(assert (=> d!1667140 d!1667166))

(declare-fun b!5167833 () Bool)

(declare-fun e!3220047 () List!60153)

(assert (=> b!5167833 (= e!3220047 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))

(declare-fun e!3220048 () Bool)

(declare-fun b!5167835 () Bool)

(declare-fun lt!2126214 () List!60153)

(assert (=> b!5167835 (= e!3220048 (or (not (= (Cons!60029 (head!11021 lt!2125929) Nil!60029) Nil!60029)) (= lt!2126214 (t!373306 testedP!294))))))

(declare-fun b!5167834 () Bool)

(declare-fun res!2196708 () Bool)

(assert (=> b!5167834 (=> (not res!2196708) (not e!3220048))))

(assert (=> b!5167834 (= res!2196708 (= (size!39633 lt!2126214) (+ (size!39633 (t!373306 testedP!294)) (size!39633 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(declare-fun d!1667312 () Bool)

(assert (=> d!1667312 e!3220048))

(declare-fun res!2196707 () Bool)

(assert (=> d!1667312 (=> (not res!2196707) (not e!3220048))))

(assert (=> d!1667312 (= res!2196707 (= (content!10637 lt!2126214) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(assert (=> d!1667312 (= lt!2126214 e!3220047)))

(declare-fun c!889307 () Bool)

(assert (=> d!1667312 (= c!889307 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667312 (= (++!13121 (t!373306 testedP!294) (Cons!60029 (head!11021 lt!2125929) Nil!60029)) lt!2126214)))

(declare-fun b!5167832 () Bool)

(assert (=> b!5167832 (= e!3220047 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))

(assert (= (and d!1667312 c!889307) b!5167832))

(assert (= (and d!1667312 (not c!889307)) b!5167833))

(assert (= (and d!1667312 res!2196707) b!5167834))

(assert (= (and b!5167834 res!2196708) b!5167835))

(declare-fun m!6218740 () Bool)

(assert (=> b!5167833 m!6218740))

(declare-fun m!6218742 () Bool)

(assert (=> b!5167834 m!6218742))

(assert (=> b!5167834 m!6218460))

(assert (=> b!5167834 m!6218288))

(declare-fun m!6218744 () Bool)

(assert (=> d!1667312 m!6218744))

(declare-fun m!6218746 () Bool)

(assert (=> d!1667312 m!6218746))

(assert (=> d!1667312 m!6218294))

(assert (=> b!5167491 d!1667312))

(declare-fun d!1667314 () Bool)

(declare-fun lt!2126221 () Int)

(assert (=> d!1667314 (>= lt!2126221 0)))

(declare-fun e!3220051 () Int)

(assert (=> d!1667314 (= lt!2126221 e!3220051)))

(declare-fun c!889310 () Bool)

(assert (=> d!1667314 (= c!889310 ((_ is Nil!60029) (t!373306 lt!2125923)))))

(assert (=> d!1667314 (= (size!39633 (t!373306 lt!2125923)) lt!2126221)))

(declare-fun b!5167836 () Bool)

(assert (=> b!5167836 (= e!3220051 0)))

(declare-fun b!5167837 () Bool)

(assert (=> b!5167837 (= e!3220051 (+ 1 (size!39633 (t!373306 (t!373306 lt!2125923)))))))

(assert (= (and d!1667314 c!889310) b!5167836))

(assert (= (and d!1667314 (not c!889310)) b!5167837))

(declare-fun m!6218748 () Bool)

(assert (=> b!5167837 m!6218748))

(assert (=> b!5167687 d!1667314))

(declare-fun d!1667316 () Bool)

(declare-fun res!2196713 () Bool)

(declare-fun e!3220057 () Bool)

(assert (=> d!1667316 (=> res!2196713 e!3220057)))

(assert (=> d!1667316 (= res!2196713 ((_ is Nil!60030) (exprs!4481 setElem!31827)))))

(assert (=> d!1667316 (= (forall!14116 (exprs!4481 setElem!31827) lambda!257923) e!3220057)))

(declare-fun b!5167844 () Bool)

(declare-fun e!3220058 () Bool)

(assert (=> b!5167844 (= e!3220057 e!3220058)))

(declare-fun res!2196714 () Bool)

(assert (=> b!5167844 (=> (not res!2196714) (not e!3220058))))

(declare-fun dynLambda!23864 (Int Regex!14597) Bool)

(assert (=> b!5167844 (= res!2196714 (dynLambda!23864 lambda!257923 (h!66478 (exprs!4481 setElem!31827))))))

(declare-fun b!5167845 () Bool)

(assert (=> b!5167845 (= e!3220058 (forall!14116 (t!373307 (exprs!4481 setElem!31827)) lambda!257923))))

(assert (= (and d!1667316 (not res!2196713)) b!5167844))

(assert (= (and b!5167844 res!2196714) b!5167845))

(declare-fun b_lambda!200805 () Bool)

(assert (=> (not b_lambda!200805) (not b!5167844)))

(declare-fun m!6218750 () Bool)

(assert (=> b!5167844 m!6218750))

(declare-fun m!6218752 () Bool)

(assert (=> b!5167845 m!6218752))

(assert (=> d!1667184 d!1667316))

(declare-fun bs!1203009 () Bool)

(declare-fun d!1667318 () Bool)

(assert (= bs!1203009 (and d!1667318 d!1667134)))

(declare-fun lambda!257949 () Int)

(assert (=> bs!1203009 (= lambda!257949 lambda!257918)))

(declare-fun bs!1203010 () Bool)

(assert (= bs!1203010 (and d!1667318 d!1667184)))

(assert (=> bs!1203010 (= lambda!257949 lambda!257923)))

(declare-fun bs!1203011 () Bool)

(assert (= bs!1203011 (and d!1667318 d!1667274)))

(assert (=> bs!1203011 (= lambda!257949 lambda!257929)))

(assert (=> d!1667318 (= (inv!79739 setElem!31836) (forall!14116 (exprs!4481 setElem!31836) lambda!257949))))

(declare-fun bs!1203012 () Bool)

(assert (= bs!1203012 d!1667318))

(declare-fun m!6218766 () Bool)

(assert (=> bs!1203012 m!6218766))

(assert (=> setNonEmpty!31836 d!1667318))

(assert (=> bm!362620 d!1667174))

(assert (=> b!5167507 d!1667138))

(assert (=> b!5167507 d!1667182))

(declare-fun d!1667322 () Bool)

(declare-fun c!889315 () Bool)

(assert (=> d!1667322 (= c!889315 ((_ is Cons!60029) (t!373306 testedP!294)))))

(declare-fun e!3220061 () (InoxSet Context!7962))

(assert (=> d!1667322 (= (derivationZipper!220 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (t!373306 testedP!294)) e!3220061)))

(declare-fun b!5167850 () Bool)

(assert (=> b!5167850 (= e!3220061 (derivationZipper!220 (derivationStepZipper!953 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (h!66477 (t!373306 testedP!294))) (t!373306 (t!373306 testedP!294))))))

(declare-fun b!5167851 () Bool)

(assert (=> b!5167851 (= e!3220061 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)))))

(assert (= (and d!1667322 c!889315) b!5167850))

(assert (= (and d!1667322 (not c!889315)) b!5167851))

(assert (=> b!5167850 m!6218462))

(declare-fun m!6218776 () Bool)

(assert (=> b!5167850 m!6218776))

(assert (=> b!5167850 m!6218776))

(declare-fun m!6218782 () Bool)

(assert (=> b!5167850 m!6218782))

(assert (=> b!5167676 d!1667322))

(declare-fun bs!1203013 () Bool)

(declare-fun d!1667326 () Bool)

(assert (= bs!1203013 (and d!1667326 d!1667294)))

(declare-fun lambda!257950 () Int)

(assert (=> bs!1203013 (= (= (h!66477 testedP!294) call!362625) (= lambda!257950 lambda!257933))))

(assert (=> d!1667326 true))

(assert (=> d!1667326 (= (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (flatMap!437 baseZ!62 lambda!257950))))

(declare-fun bs!1203014 () Bool)

(assert (= bs!1203014 d!1667326))

(declare-fun m!6218784 () Bool)

(assert (=> bs!1203014 m!6218784))

(assert (=> b!5167676 d!1667326))

(declare-fun b!5167853 () Bool)

(declare-fun res!2196717 () Bool)

(declare-fun e!3220063 () Bool)

(assert (=> b!5167853 (=> (not res!2196717) (not e!3220063))))

(assert (=> b!5167853 (= res!2196717 (= (head!11021 (tail!10130 lt!2125923)) (head!11021 (tail!10130 input!5817))))))

(declare-fun b!5167852 () Bool)

(declare-fun e!3220062 () Bool)

(assert (=> b!5167852 (= e!3220062 e!3220063)))

(declare-fun res!2196719 () Bool)

(assert (=> b!5167852 (=> (not res!2196719) (not e!3220063))))

(assert (=> b!5167852 (= res!2196719 (not ((_ is Nil!60029) (tail!10130 input!5817))))))

(declare-fun b!5167854 () Bool)

(assert (=> b!5167854 (= e!3220063 (isPrefix!5730 (tail!10130 (tail!10130 lt!2125923)) (tail!10130 (tail!10130 input!5817))))))

(declare-fun d!1667328 () Bool)

(declare-fun e!3220064 () Bool)

(assert (=> d!1667328 e!3220064))

(declare-fun res!2196720 () Bool)

(assert (=> d!1667328 (=> res!2196720 e!3220064)))

(declare-fun lt!2126231 () Bool)

(assert (=> d!1667328 (= res!2196720 (not lt!2126231))))

(assert (=> d!1667328 (= lt!2126231 e!3220062)))

(declare-fun res!2196718 () Bool)

(assert (=> d!1667328 (=> res!2196718 e!3220062)))

(assert (=> d!1667328 (= res!2196718 ((_ is Nil!60029) (tail!10130 lt!2125923)))))

(assert (=> d!1667328 (= (isPrefix!5730 (tail!10130 lt!2125923) (tail!10130 input!5817)) lt!2126231)))

(declare-fun b!5167855 () Bool)

(assert (=> b!5167855 (= e!3220064 (>= (size!39633 (tail!10130 input!5817)) (size!39633 (tail!10130 lt!2125923))))))

(assert (= (and d!1667328 (not res!2196718)) b!5167852))

(assert (= (and b!5167852 res!2196719) b!5167853))

(assert (= (and b!5167853 res!2196717) b!5167854))

(assert (= (and d!1667328 (not res!2196720)) b!5167855))

(assert (=> b!5167853 m!6218300))

(declare-fun m!6218786 () Bool)

(assert (=> b!5167853 m!6218786))

(assert (=> b!5167853 m!6218302))

(declare-fun m!6218788 () Bool)

(assert (=> b!5167853 m!6218788))

(assert (=> b!5167854 m!6218300))

(declare-fun m!6218790 () Bool)

(assert (=> b!5167854 m!6218790))

(assert (=> b!5167854 m!6218302))

(declare-fun m!6218792 () Bool)

(assert (=> b!5167854 m!6218792))

(assert (=> b!5167854 m!6218790))

(assert (=> b!5167854 m!6218792))

(declare-fun m!6218794 () Bool)

(assert (=> b!5167854 m!6218794))

(assert (=> b!5167855 m!6218302))

(declare-fun m!6218796 () Bool)

(assert (=> b!5167855 m!6218796))

(assert (=> b!5167855 m!6218300))

(declare-fun m!6218798 () Bool)

(assert (=> b!5167855 m!6218798))

(assert (=> b!5167506 d!1667328))

(declare-fun d!1667330 () Bool)

(assert (=> d!1667330 (= (tail!10130 lt!2125923) (t!373306 lt!2125923))))

(assert (=> b!5167506 d!1667330))

(declare-fun d!1667332 () Bool)

(assert (=> d!1667332 (= (tail!10130 input!5817) (t!373306 input!5817))))

(assert (=> b!5167506 d!1667332))

(assert (=> d!1667132 d!1667166))

(assert (=> d!1667132 d!1667138))

(declare-fun d!1667334 () Bool)

(assert (=> d!1667334 (<= (size!39633 testedP!294) (size!39633 input!5817))))

(assert (=> d!1667334 true))

(declare-fun _$64!679 () Unit!151532)

(assert (=> d!1667334 (= (choose!38244 testedP!294 input!5817) _$64!679)))

(declare-fun bs!1203016 () Bool)

(assert (= bs!1203016 d!1667334))

(assert (=> bs!1203016 m!6218234))

(assert (=> bs!1203016 m!6218236))

(assert (=> d!1667132 d!1667334))

(assert (=> d!1667132 d!1667130))

(assert (=> bm!362615 d!1667128))

(assert (=> bm!362622 d!1667180))

(declare-fun bm!362637 () Bool)

(declare-fun call!362647 () C!29464)

(assert (=> bm!362637 (= call!362647 (head!11021 call!362627))))

(declare-fun b!5167860 () Bool)

(declare-fun e!3220071 () tuple2!63748)

(assert (=> b!5167860 (= e!3220071 (tuple2!63749 lt!2126132 Nil!60029))))

(declare-fun b!5167861 () Bool)

(declare-fun e!3220067 () Bool)

(declare-fun lt!2126236 () tuple2!63748)

(assert (=> b!5167861 (= e!3220067 (>= (size!39633 (_1!35177 lt!2126236)) (size!39633 lt!2126132)))))

(declare-fun b!5167862 () Bool)

(declare-fun e!3220073 () tuple2!63748)

(assert (=> b!5167862 (= e!3220073 (tuple2!63749 lt!2126132 call!362627))))

(declare-fun bm!362638 () Bool)

(declare-fun call!362648 () Bool)

(assert (=> bm!362638 (= call!362648 (nullableZipper!1143 call!362624))))

(declare-fun b!5167863 () Bool)

(declare-fun e!3220069 () Unit!151532)

(declare-fun Unit!151542 () Unit!151532)

(assert (=> b!5167863 (= e!3220069 Unit!151542)))

(declare-fun b!5167864 () Bool)

(declare-fun e!3220068 () tuple2!63748)

(assert (=> b!5167864 (= e!3220068 e!3220073)))

(declare-fun lt!2126254 () tuple2!63748)

(declare-fun call!362642 () tuple2!63748)

(assert (=> b!5167864 (= lt!2126254 call!362642)))

(declare-fun c!889320 () Bool)

(assert (=> b!5167864 (= c!889320 (isEmpty!32139 (_1!35177 lt!2126254)))))

(declare-fun b!5167865 () Bool)

(declare-fun c!889319 () Bool)

(assert (=> b!5167865 (= c!889319 call!362648)))

(declare-fun lt!2126238 () Unit!151532)

(declare-fun lt!2126247 () Unit!151532)

(assert (=> b!5167865 (= lt!2126238 lt!2126247)))

(declare-fun lt!2126246 () C!29464)

(declare-fun lt!2126249 () List!60153)

(assert (=> b!5167865 (= (++!13121 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029)) lt!2126249) input!5817)))

(assert (=> b!5167865 (= lt!2126247 (lemmaMoveElementToOtherListKeepsConcatEq!1568 lt!2126132 lt!2126246 lt!2126249 input!5817))))

(assert (=> b!5167865 (= lt!2126249 (tail!10130 call!362627))))

(assert (=> b!5167865 (= lt!2126246 (head!11021 call!362627))))

(declare-fun lt!2126251 () Unit!151532)

(declare-fun lt!2126248 () Unit!151532)

(assert (=> b!5167865 (= lt!2126251 lt!2126248)))

(assert (=> b!5167865 (isPrefix!5730 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)) input!5817)))

(assert (=> b!5167865 (= lt!2126248 (lemmaAddHeadSuffixToPrefixStillPrefix!1043 lt!2126132 input!5817))))

(declare-fun lt!2126259 () List!60153)

(assert (=> b!5167865 (= lt!2126259 (++!13121 lt!2126132 (Cons!60029 (head!11021 call!362627) Nil!60029)))))

(declare-fun lt!2126245 () Unit!151532)

(assert (=> b!5167865 (= lt!2126245 e!3220069)))

(declare-fun c!889322 () Bool)

(assert (=> b!5167865 (= c!889322 (= (size!39633 lt!2126132) (size!39633 input!5817)))))

(declare-fun lt!2126256 () Unit!151532)

(declare-fun lt!2126258 () Unit!151532)

(assert (=> b!5167865 (= lt!2126256 lt!2126258)))

(assert (=> b!5167865 (<= (size!39633 lt!2126132) (size!39633 input!5817))))

(assert (=> b!5167865 (= lt!2126258 (lemmaIsPrefixThenSmallerEqSize!893 lt!2126132 input!5817))))

(declare-fun e!3220072 () tuple2!63748)

(assert (=> b!5167865 (= e!3220072 e!3220068)))

(declare-fun b!5167866 () Bool)

(declare-fun Unit!151543 () Unit!151532)

(assert (=> b!5167866 (= e!3220069 Unit!151543)))

(declare-fun lt!2126260 () Unit!151532)

(declare-fun call!362645 () Unit!151532)

(assert (=> b!5167866 (= lt!2126260 call!362645)))

(declare-fun call!362643 () Bool)

(assert (=> b!5167866 call!362643))

(declare-fun lt!2126244 () Unit!151532)

(assert (=> b!5167866 (= lt!2126244 lt!2126260)))

(declare-fun lt!2126252 () Unit!151532)

(declare-fun call!362644 () Unit!151532)

(assert (=> b!5167866 (= lt!2126252 call!362644)))

(assert (=> b!5167866 (= input!5817 lt!2126132)))

(declare-fun lt!2126243 () Unit!151532)

(assert (=> b!5167866 (= lt!2126243 lt!2126252)))

(assert (=> b!5167866 false))

(declare-fun b!5167867 () Bool)

(declare-fun c!889321 () Bool)

(assert (=> b!5167867 (= c!889321 call!362648)))

(declare-fun lt!2126240 () Unit!151532)

(declare-fun lt!2126255 () Unit!151532)

(assert (=> b!5167867 (= lt!2126240 lt!2126255)))

(assert (=> b!5167867 (= input!5817 lt!2126132)))

(assert (=> b!5167867 (= lt!2126255 call!362644)))

(declare-fun lt!2126242 () Unit!151532)

(declare-fun lt!2126239 () Unit!151532)

(assert (=> b!5167867 (= lt!2126242 lt!2126239)))

(assert (=> b!5167867 call!362643))

(assert (=> b!5167867 (= lt!2126239 call!362645)))

(assert (=> b!5167867 (= e!3220072 e!3220071)))

(declare-fun bm!362639 () Bool)

(declare-fun call!362646 () (InoxSet Context!7962))

(assert (=> bm!362639 (= call!362646 (derivationStepZipper!953 call!362624 call!362647))))

(declare-fun b!5167868 () Bool)

(assert (=> b!5167868 (= e!3220071 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun bm!362640 () Bool)

(assert (=> bm!362640 (= call!362644 (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 lt!2126132 input!5817))))

(declare-fun bm!362641 () Bool)

(assert (=> bm!362641 (= call!362645 (lemmaIsPrefixRefl!3737 input!5817 input!5817))))

(declare-fun b!5167869 () Bool)

(declare-fun e!3220074 () tuple2!63748)

(assert (=> b!5167869 (= e!3220074 e!3220072)))

(declare-fun c!889318 () Bool)

(assert (=> b!5167869 (= c!889318 (= (+ lt!2125926 1) lt!2125927))))

(declare-fun b!5167870 () Bool)

(assert (=> b!5167870 (= e!3220068 call!362642)))

(declare-fun b!5167871 () Bool)

(declare-fun e!3220070 () Bool)

(assert (=> b!5167871 (= e!3220070 e!3220067)))

(declare-fun res!2196723 () Bool)

(assert (=> b!5167871 (=> res!2196723 e!3220067)))

(assert (=> b!5167871 (= res!2196723 (isEmpty!32139 (_1!35177 lt!2126236)))))

(declare-fun b!5167872 () Bool)

(assert (=> b!5167872 (= e!3220074 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun b!5167873 () Bool)

(assert (=> b!5167873 (= e!3220073 lt!2126254)))

(declare-fun bm!362642 () Bool)

(assert (=> bm!362642 (= call!362643 (isPrefix!5730 input!5817 input!5817))))

(declare-fun call!362649 () List!60153)

(declare-fun bm!362643 () Bool)

(assert (=> bm!362643 (= call!362642 (findLongestMatchInnerZipper!255 call!362646 lt!2126259 (+ lt!2125926 1 1) call!362649 input!5817 lt!2125927))))

(declare-fun d!1667338 () Bool)

(assert (=> d!1667338 e!3220070))

(declare-fun res!2196724 () Bool)

(assert (=> d!1667338 (=> (not res!2196724) (not e!3220070))))

(assert (=> d!1667338 (= res!2196724 (= (++!13121 (_1!35177 lt!2126236) (_2!35177 lt!2126236)) input!5817))))

(assert (=> d!1667338 (= lt!2126236 e!3220074)))

(declare-fun c!889317 () Bool)

(assert (=> d!1667338 (= c!889317 (lostCauseZipper!1320 call!362624))))

(declare-fun lt!2126253 () Unit!151532)

(declare-fun Unit!151544 () Unit!151532)

(assert (=> d!1667338 (= lt!2126253 Unit!151544)))

(assert (=> d!1667338 (= (getSuffix!3380 input!5817 lt!2126132) call!362627)))

(declare-fun lt!2126250 () Unit!151532)

(declare-fun lt!2126257 () Unit!151532)

(assert (=> d!1667338 (= lt!2126250 lt!2126257)))

(declare-fun lt!2126261 () List!60153)

(assert (=> d!1667338 (= call!362627 lt!2126261)))

(assert (=> d!1667338 (= lt!2126257 (lemmaSamePrefixThenSameSuffix!2687 lt!2126132 call!362627 lt!2126132 lt!2126261 input!5817))))

(assert (=> d!1667338 (= lt!2126261 (getSuffix!3380 input!5817 lt!2126132))))

(declare-fun lt!2126241 () Unit!151532)

(declare-fun lt!2126237 () Unit!151532)

(assert (=> d!1667338 (= lt!2126241 lt!2126237)))

(assert (=> d!1667338 (isPrefix!5730 lt!2126132 (++!13121 lt!2126132 call!362627))))

(assert (=> d!1667338 (= lt!2126237 (lemmaConcatTwoListThenFirstIsPrefix!3581 lt!2126132 call!362627))))

(assert (=> d!1667338 (= (++!13121 lt!2126132 call!362627) input!5817)))

(assert (=> d!1667338 (= (findLongestMatchInnerZipper!255 call!362624 lt!2126132 (+ lt!2125926 1) call!362627 input!5817 lt!2125927) lt!2126236)))

(declare-fun bm!362644 () Bool)

(assert (=> bm!362644 (= call!362649 (tail!10130 call!362627))))

(assert (= (and d!1667338 c!889317) b!5167872))

(assert (= (and d!1667338 (not c!889317)) b!5167869))

(assert (= (and b!5167869 c!889318) b!5167867))

(assert (= (and b!5167869 (not c!889318)) b!5167865))

(assert (= (and b!5167867 c!889321) b!5167860))

(assert (= (and b!5167867 (not c!889321)) b!5167868))

(assert (= (and b!5167865 c!889322) b!5167866))

(assert (= (and b!5167865 (not c!889322)) b!5167863))

(assert (= (and b!5167865 c!889319) b!5167864))

(assert (= (and b!5167865 (not c!889319)) b!5167870))

(assert (= (and b!5167864 c!889320) b!5167862))

(assert (= (and b!5167864 (not c!889320)) b!5167873))

(assert (= (or b!5167864 b!5167870) bm!362644))

(assert (= (or b!5167864 b!5167870) bm!362637))

(assert (= (or b!5167864 b!5167870) bm!362639))

(assert (= (or b!5167864 b!5167870) bm!362643))

(assert (= (or b!5167867 b!5167866) bm!362641))

(assert (= (or b!5167867 b!5167865) bm!362638))

(assert (= (or b!5167867 b!5167866) bm!362642))

(assert (= (or b!5167867 b!5167866) bm!362640))

(assert (= (and d!1667338 res!2196724) b!5167871))

(assert (= (and b!5167871 (not res!2196723)) b!5167861))

(declare-fun m!6218814 () Bool)

(assert (=> d!1667338 m!6218814))

(declare-fun m!6218816 () Bool)

(assert (=> d!1667338 m!6218816))

(declare-fun m!6218818 () Bool)

(assert (=> d!1667338 m!6218818))

(declare-fun m!6218820 () Bool)

(assert (=> d!1667338 m!6218820))

(declare-fun m!6218822 () Bool)

(assert (=> d!1667338 m!6218822))

(assert (=> d!1667338 m!6218816))

(declare-fun m!6218824 () Bool)

(assert (=> d!1667338 m!6218824))

(declare-fun m!6218826 () Bool)

(assert (=> d!1667338 m!6218826))

(declare-fun m!6218828 () Bool)

(assert (=> b!5167861 m!6218828))

(declare-fun m!6218830 () Bool)

(assert (=> b!5167861 m!6218830))

(declare-fun m!6218832 () Bool)

(assert (=> bm!362640 m!6218832))

(declare-fun m!6218834 () Bool)

(assert (=> bm!362638 m!6218834))

(declare-fun m!6218836 () Bool)

(assert (=> bm!362643 m!6218836))

(declare-fun m!6218838 () Bool)

(assert (=> bm!362637 m!6218838))

(declare-fun m!6218840 () Bool)

(assert (=> bm!362639 m!6218840))

(declare-fun m!6218842 () Bool)

(assert (=> b!5167865 m!6218842))

(assert (=> b!5167865 m!6218814))

(declare-fun m!6218846 () Bool)

(assert (=> b!5167865 m!6218846))

(declare-fun m!6218848 () Bool)

(assert (=> b!5167865 m!6218848))

(assert (=> b!5167865 m!6218838))

(declare-fun m!6218852 () Bool)

(assert (=> b!5167865 m!6218852))

(declare-fun m!6218856 () Bool)

(assert (=> b!5167865 m!6218856))

(declare-fun m!6218860 () Bool)

(assert (=> b!5167865 m!6218860))

(declare-fun m!6218862 () Bool)

(assert (=> b!5167865 m!6218862))

(declare-fun m!6218864 () Bool)

(assert (=> b!5167865 m!6218864))

(assert (=> b!5167865 m!6218814))

(declare-fun m!6218866 () Bool)

(assert (=> b!5167865 m!6218866))

(assert (=> b!5167865 m!6218236))

(assert (=> b!5167865 m!6218830))

(assert (=> b!5167865 m!6218860))

(assert (=> b!5167865 m!6218848))

(declare-fun m!6218868 () Bool)

(assert (=> b!5167865 m!6218868))

(assert (=> bm!362641 m!6218248))

(declare-fun m!6218870 () Bool)

(assert (=> b!5167871 m!6218870))

(assert (=> bm!362642 m!6218250))

(declare-fun m!6218872 () Bool)

(assert (=> b!5167864 m!6218872))

(assert (=> bm!362644 m!6218866))

(assert (=> bm!362621 d!1667338))

(declare-fun d!1667344 () Bool)

(declare-fun c!889325 () Bool)

(assert (=> d!1667344 (= c!889325 ((_ is Nil!60029) lt!2125936))))

(declare-fun e!3220087 () (InoxSet C!29464))

(assert (=> d!1667344 (= (content!10637 lt!2125936) e!3220087)))

(declare-fun b!5167900 () Bool)

(assert (=> b!5167900 (= e!3220087 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167901 () Bool)

(assert (=> b!5167901 (= e!3220087 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2125936) true) (content!10637 (t!373306 lt!2125936))))))

(assert (= (and d!1667344 c!889325) b!5167900))

(assert (= (and d!1667344 (not c!889325)) b!5167901))

(declare-fun m!6218878 () Bool)

(assert (=> b!5167901 m!6218878))

(declare-fun m!6218880 () Bool)

(assert (=> b!5167901 m!6218880))

(assert (=> d!1667102 d!1667344))

(declare-fun d!1667346 () Bool)

(declare-fun c!889326 () Bool)

(assert (=> d!1667346 (= c!889326 ((_ is Nil!60029) testedP!294))))

(declare-fun e!3220090 () (InoxSet C!29464))

(assert (=> d!1667346 (= (content!10637 testedP!294) e!3220090)))

(declare-fun b!5167907 () Bool)

(assert (=> b!5167907 (= e!3220090 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167908 () Bool)

(assert (=> b!5167908 (= e!3220090 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 testedP!294) true) (content!10637 (t!373306 testedP!294))))))

(assert (= (and d!1667346 c!889326) b!5167907))

(assert (= (and d!1667346 (not c!889326)) b!5167908))

(declare-fun m!6218882 () Bool)

(assert (=> b!5167908 m!6218882))

(assert (=> b!5167908 m!6218746))

(assert (=> d!1667102 d!1667346))

(declare-fun d!1667348 () Bool)

(declare-fun c!889327 () Bool)

(assert (=> d!1667348 (= c!889327 ((_ is Nil!60029) (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))

(declare-fun e!3220092 () (InoxSet C!29464))

(assert (=> d!1667348 (= (content!10637 (Cons!60029 (head!11021 lt!2125929) Nil!60029)) e!3220092)))

(declare-fun b!5167910 () Bool)

(assert (=> b!5167910 (= e!3220092 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167912 () Bool)

(assert (=> b!5167912 (= e!3220092 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (Cons!60029 (head!11021 lt!2125929) Nil!60029)) true) (content!10637 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(assert (= (and d!1667348 c!889327) b!5167910))

(assert (= (and d!1667348 (not c!889327)) b!5167912))

(declare-fun m!6218884 () Bool)

(assert (=> b!5167912 m!6218884))

(declare-fun m!6218886 () Bool)

(assert (=> b!5167912 m!6218886))

(assert (=> d!1667102 d!1667348))

(assert (=> d!1667172 d!1667174))

(declare-fun d!1667350 () Bool)

(assert (=> d!1667350 (isPrefix!5730 input!5817 input!5817)))

(assert (=> d!1667350 true))

(declare-fun _$45!2329 () Unit!151532)

(assert (=> d!1667350 (= (choose!38247 input!5817 input!5817) _$45!2329)))

(declare-fun bs!1203020 () Bool)

(assert (= bs!1203020 d!1667350))

(assert (=> bs!1203020 m!6218250))

(assert (=> d!1667172 d!1667350))

(declare-fun d!1667356 () Bool)

(declare-fun c!889328 () Bool)

(assert (=> d!1667356 (= c!889328 ((_ is Nil!60029) lt!2126143))))

(declare-fun e!3220095 () (InoxSet C!29464))

(assert (=> d!1667356 (= (content!10637 lt!2126143) e!3220095)))

(declare-fun b!5167914 () Bool)

(assert (=> b!5167914 (= e!3220095 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167915 () Bool)

(assert (=> b!5167915 (= e!3220095 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126143) true) (content!10637 (t!373306 lt!2126143))))))

(assert (= (and d!1667356 c!889328) b!5167914))

(assert (= (and d!1667356 (not c!889328)) b!5167915))

(declare-fun m!6218892 () Bool)

(assert (=> b!5167915 m!6218892))

(declare-fun m!6218894 () Bool)

(assert (=> b!5167915 m!6218894))

(assert (=> d!1667178 d!1667356))

(declare-fun d!1667358 () Bool)

(declare-fun c!889329 () Bool)

(assert (=> d!1667358 (= c!889329 ((_ is Nil!60029) lt!2125923))))

(declare-fun e!3220096 () (InoxSet C!29464))

(assert (=> d!1667358 (= (content!10637 lt!2125923) e!3220096)))

(declare-fun b!5167916 () Bool)

(assert (=> b!5167916 (= e!3220096 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167917 () Bool)

(assert (=> b!5167917 (= e!3220096 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2125923) true) (content!10637 (t!373306 lt!2125923))))))

(assert (= (and d!1667358 c!889329) b!5167916))

(assert (= (and d!1667358 (not c!889329)) b!5167917))

(declare-fun m!6218896 () Bool)

(assert (=> b!5167917 m!6218896))

(assert (=> b!5167917 m!6218718))

(assert (=> d!1667178 d!1667358))

(declare-fun d!1667360 () Bool)

(declare-fun c!889330 () Bool)

(assert (=> d!1667360 (= c!889330 ((_ is Nil!60029) (tail!10130 lt!2125929)))))

(declare-fun e!3220097 () (InoxSet C!29464))

(assert (=> d!1667360 (= (content!10637 (tail!10130 lt!2125929)) e!3220097)))

(declare-fun b!5167918 () Bool)

(assert (=> b!5167918 (= e!3220097 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167919 () Bool)

(assert (=> b!5167919 (= e!3220097 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (tail!10130 lt!2125929)) true) (content!10637 (t!373306 (tail!10130 lt!2125929)))))))

(assert (= (and d!1667360 c!889330) b!5167918))

(assert (= (and d!1667360 (not c!889330)) b!5167919))

(declare-fun m!6218898 () Bool)

(assert (=> b!5167919 m!6218898))

(declare-fun m!6218900 () Bool)

(assert (=> b!5167919 m!6218900))

(assert (=> d!1667178 d!1667360))

(declare-fun d!1667362 () Bool)

(declare-fun lt!2126266 () Int)

(assert (=> d!1667362 (>= lt!2126266 0)))

(declare-fun e!3220098 () Int)

(assert (=> d!1667362 (= lt!2126266 e!3220098)))

(declare-fun c!889331 () Bool)

(assert (=> d!1667362 (= c!889331 ((_ is Nil!60029) (_1!35177 lt!2126109)))))

(assert (=> d!1667362 (= (size!39633 (_1!35177 lt!2126109)) lt!2126266)))

(declare-fun b!5167920 () Bool)

(assert (=> b!5167920 (= e!3220098 0)))

(declare-fun b!5167921 () Bool)

(assert (=> b!5167921 (= e!3220098 (+ 1 (size!39633 (t!373306 (_1!35177 lt!2126109)))))))

(assert (= (and d!1667362 c!889331) b!5167920))

(assert (= (and d!1667362 (not c!889331)) b!5167921))

(declare-fun m!6218902 () Bool)

(assert (=> b!5167921 m!6218902))

(assert (=> b!5167657 d!1667362))

(assert (=> b!5167657 d!1667166))

(declare-fun b!5167923 () Bool)

(declare-fun res!2196729 () Bool)

(declare-fun e!3220100 () Bool)

(assert (=> b!5167923 (=> (not res!2196729) (not e!3220100))))

(assert (=> b!5167923 (= res!2196729 (= (head!11021 (tail!10130 input!5817)) (head!11021 (tail!10130 input!5817))))))

(declare-fun b!5167922 () Bool)

(declare-fun e!3220099 () Bool)

(assert (=> b!5167922 (= e!3220099 e!3220100)))

(declare-fun res!2196731 () Bool)

(assert (=> b!5167922 (=> (not res!2196731) (not e!3220100))))

(assert (=> b!5167922 (= res!2196731 (not ((_ is Nil!60029) (tail!10130 input!5817))))))

(declare-fun b!5167924 () Bool)

(assert (=> b!5167924 (= e!3220100 (isPrefix!5730 (tail!10130 (tail!10130 input!5817)) (tail!10130 (tail!10130 input!5817))))))

(declare-fun d!1667364 () Bool)

(declare-fun e!3220101 () Bool)

(assert (=> d!1667364 e!3220101))

(declare-fun res!2196732 () Bool)

(assert (=> d!1667364 (=> res!2196732 e!3220101)))

(declare-fun lt!2126267 () Bool)

(assert (=> d!1667364 (= res!2196732 (not lt!2126267))))

(assert (=> d!1667364 (= lt!2126267 e!3220099)))

(declare-fun res!2196730 () Bool)

(assert (=> d!1667364 (=> res!2196730 e!3220099)))

(assert (=> d!1667364 (= res!2196730 ((_ is Nil!60029) (tail!10130 input!5817)))))

(assert (=> d!1667364 (= (isPrefix!5730 (tail!10130 input!5817) (tail!10130 input!5817)) lt!2126267)))

(declare-fun b!5167925 () Bool)

(assert (=> b!5167925 (= e!3220101 (>= (size!39633 (tail!10130 input!5817)) (size!39633 (tail!10130 input!5817))))))

(assert (= (and d!1667364 (not res!2196730)) b!5167922))

(assert (= (and b!5167922 res!2196731) b!5167923))

(assert (= (and b!5167923 res!2196729) b!5167924))

(assert (= (and d!1667364 (not res!2196732)) b!5167925))

(assert (=> b!5167923 m!6218302))

(assert (=> b!5167923 m!6218788))

(assert (=> b!5167923 m!6218302))

(assert (=> b!5167923 m!6218788))

(assert (=> b!5167924 m!6218302))

(assert (=> b!5167924 m!6218792))

(assert (=> b!5167924 m!6218302))

(assert (=> b!5167924 m!6218792))

(assert (=> b!5167924 m!6218792))

(assert (=> b!5167924 m!6218792))

(declare-fun m!6218904 () Bool)

(assert (=> b!5167924 m!6218904))

(assert (=> b!5167925 m!6218302))

(assert (=> b!5167925 m!6218796))

(assert (=> b!5167925 m!6218302))

(assert (=> b!5167925 m!6218796))

(assert (=> b!5167680 d!1667364))

(assert (=> b!5167680 d!1667332))

(declare-fun d!1667366 () Bool)

(assert (=> d!1667366 (= (isEmpty!32139 (_1!35177 lt!2126127)) ((_ is Nil!60029) (_1!35177 lt!2126127)))))

(assert (=> b!5167660 d!1667366))

(declare-fun d!1667368 () Bool)

(declare-fun lt!2126270 () Bool)

(declare-datatypes ((List!60156 0))(
  ( (Nil!60032) (Cons!60032 (h!66480 Context!7962) (t!373309 List!60156)) )
))
(declare-fun exists!1904 (List!60156 Int) Bool)

(declare-fun toList!8445 ((InoxSet Context!7962)) List!60156)

(assert (=> d!1667368 (= lt!2126270 (exists!1904 (toList!8445 z!4581) lambda!257912))))

(declare-fun choose!38251 ((InoxSet Context!7962) Int) Bool)

(assert (=> d!1667368 (= lt!2126270 (choose!38251 z!4581 lambda!257912))))

(assert (=> d!1667368 (= (exists!1902 z!4581 lambda!257912) lt!2126270)))

(declare-fun bs!1203021 () Bool)

(assert (= bs!1203021 d!1667368))

(declare-fun m!6218906 () Bool)

(assert (=> bs!1203021 m!6218906))

(assert (=> bs!1203021 m!6218906))

(declare-fun m!6218908 () Bool)

(assert (=> bs!1203021 m!6218908))

(declare-fun m!6218910 () Bool)

(assert (=> bs!1203021 m!6218910))

(assert (=> d!1667116 d!1667368))

(assert (=> bm!362616 d!1667116))

(declare-fun b!5167927 () Bool)

(declare-fun res!2196733 () Bool)

(declare-fun e!3220103 () Bool)

(assert (=> b!5167927 (=> (not res!2196733) (not e!3220103))))

(assert (=> b!5167927 (= res!2196733 (= (head!11021 testedP!294) (head!11021 (++!13121 testedP!294 lt!2125929))))))

(declare-fun b!5167926 () Bool)

(declare-fun e!3220102 () Bool)

(assert (=> b!5167926 (= e!3220102 e!3220103)))

(declare-fun res!2196735 () Bool)

(assert (=> b!5167926 (=> (not res!2196735) (not e!3220103))))

(assert (=> b!5167926 (= res!2196735 (not ((_ is Nil!60029) (++!13121 testedP!294 lt!2125929))))))

(declare-fun b!5167928 () Bool)

(assert (=> b!5167928 (= e!3220103 (isPrefix!5730 (tail!10130 testedP!294) (tail!10130 (++!13121 testedP!294 lt!2125929))))))

(declare-fun d!1667370 () Bool)

(declare-fun e!3220104 () Bool)

(assert (=> d!1667370 e!3220104))

(declare-fun res!2196736 () Bool)

(assert (=> d!1667370 (=> res!2196736 e!3220104)))

(declare-fun lt!2126271 () Bool)

(assert (=> d!1667370 (= res!2196736 (not lt!2126271))))

(assert (=> d!1667370 (= lt!2126271 e!3220102)))

(declare-fun res!2196734 () Bool)

(assert (=> d!1667370 (=> res!2196734 e!3220102)))

(assert (=> d!1667370 (= res!2196734 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667370 (= (isPrefix!5730 testedP!294 (++!13121 testedP!294 lt!2125929)) lt!2126271)))

(declare-fun b!5167929 () Bool)

(assert (=> b!5167929 (= e!3220104 (>= (size!39633 (++!13121 testedP!294 lt!2125929)) (size!39633 testedP!294)))))

(assert (= (and d!1667370 (not res!2196734)) b!5167926))

(assert (= (and b!5167926 res!2196735) b!5167927))

(assert (= (and b!5167927 res!2196733) b!5167928))

(assert (= (and d!1667370 (not res!2196736)) b!5167929))

(assert (=> b!5167927 m!6218358))

(assert (=> b!5167927 m!6218432))

(declare-fun m!6218912 () Bool)

(assert (=> b!5167927 m!6218912))

(assert (=> b!5167928 m!6218360))

(assert (=> b!5167928 m!6218432))

(declare-fun m!6218914 () Bool)

(assert (=> b!5167928 m!6218914))

(assert (=> b!5167928 m!6218360))

(assert (=> b!5167928 m!6218914))

(declare-fun m!6218916 () Bool)

(assert (=> b!5167928 m!6218916))

(assert (=> b!5167929 m!6218432))

(declare-fun m!6218918 () Bool)

(assert (=> b!5167929 m!6218918))

(assert (=> b!5167929 m!6218234))

(assert (=> d!1667144 d!1667370))

(declare-fun bs!1203022 () Bool)

(declare-fun d!1667372 () Bool)

(assert (= bs!1203022 (and d!1667372 d!1667116)))

(declare-fun lambda!257963 () Int)

(assert (=> bs!1203022 (not (= lambda!257963 lambda!257912))))

(declare-fun bs!1203023 () Bool)

(declare-fun b!5167934 () Bool)

(assert (= bs!1203023 (and b!5167934 d!1667116)))

(declare-fun lambda!257964 () Int)

(assert (=> bs!1203023 (not (= lambda!257964 lambda!257912))))

(declare-fun bs!1203024 () Bool)

(assert (= bs!1203024 (and b!5167934 d!1667372)))

(assert (=> bs!1203024 (not (= lambda!257964 lambda!257963))))

(declare-fun bs!1203025 () Bool)

(declare-fun b!5167935 () Bool)

(assert (= bs!1203025 (and b!5167935 d!1667116)))

(declare-fun lambda!257965 () Int)

(assert (=> bs!1203025 (not (= lambda!257965 lambda!257912))))

(declare-fun bs!1203026 () Bool)

(assert (= bs!1203026 (and b!5167935 d!1667372)))

(assert (=> bs!1203026 (not (= lambda!257965 lambda!257963))))

(declare-fun bs!1203027 () Bool)

(assert (= bs!1203027 (and b!5167935 b!5167934)))

(assert (=> bs!1203027 (= lambda!257965 lambda!257964)))

(declare-fun call!362655 () Bool)

(declare-fun c!889342 () Bool)

(declare-fun lt!2126295 () List!60156)

(declare-fun lt!2126293 () List!60156)

(declare-fun bm!362650 () Bool)

(assert (=> bm!362650 (= call!362655 (exists!1904 (ite c!889342 lt!2126295 lt!2126293) (ite c!889342 lambda!257964 lambda!257965)))))

(declare-fun lt!2126288 () Bool)

(declare-datatypes ((Option!14829 0))(
  ( (None!14828) (Some!14828 (v!50857 List!60153)) )
))
(declare-fun isEmpty!32140 (Option!14829) Bool)

(declare-fun getLanguageWitness!998 ((InoxSet Context!7962)) Option!14829)

(assert (=> d!1667372 (= lt!2126288 (isEmpty!32140 (getLanguageWitness!998 z!4581)))))

(declare-fun forall!14118 ((InoxSet Context!7962) Int) Bool)

(assert (=> d!1667372 (= lt!2126288 (forall!14118 z!4581 lambda!257963))))

(declare-fun lt!2126294 () Unit!151532)

(declare-fun e!3220111 () Unit!151532)

(assert (=> d!1667372 (= lt!2126294 e!3220111)))

(assert (=> d!1667372 (= c!889342 (not (forall!14118 z!4581 lambda!257963)))))

(assert (=> d!1667372 (= (lostCauseZipper!1320 z!4581) lt!2126288)))

(declare-fun Unit!151548 () Unit!151532)

(assert (=> b!5167934 (= e!3220111 Unit!151548)))

(declare-fun call!362654 () List!60156)

(assert (=> b!5167934 (= lt!2126295 call!362654)))

(declare-fun lt!2126289 () Unit!151532)

(declare-fun lemmaNotForallThenExists!464 (List!60156 Int) Unit!151532)

(assert (=> b!5167934 (= lt!2126289 (lemmaNotForallThenExists!464 lt!2126295 lambda!257963))))

(assert (=> b!5167934 call!362655))

(declare-fun lt!2126290 () Unit!151532)

(assert (=> b!5167934 (= lt!2126290 lt!2126289)))

(declare-fun bm!362649 () Bool)

(assert (=> bm!362649 (= call!362654 (toList!8445 z!4581))))

(declare-fun Unit!151549 () Unit!151532)

(assert (=> b!5167935 (= e!3220111 Unit!151549)))

(assert (=> b!5167935 (= lt!2126293 call!362654)))

(declare-fun lt!2126292 () Unit!151532)

(declare-fun lemmaForallThenNotExists!431 (List!60156 Int) Unit!151532)

(assert (=> b!5167935 (= lt!2126292 (lemmaForallThenNotExists!431 lt!2126293 lambda!257963))))

(assert (=> b!5167935 (not call!362655)))

(declare-fun lt!2126291 () Unit!151532)

(assert (=> b!5167935 (= lt!2126291 lt!2126292)))

(assert (= (and d!1667372 c!889342) b!5167934))

(assert (= (and d!1667372 (not c!889342)) b!5167935))

(assert (= (or b!5167934 b!5167935) bm!362649))

(assert (= (or b!5167934 b!5167935) bm!362650))

(declare-fun m!6218920 () Bool)

(assert (=> bm!362650 m!6218920))

(declare-fun m!6218922 () Bool)

(assert (=> b!5167935 m!6218922))

(assert (=> bm!362649 m!6218906))

(declare-fun m!6218924 () Bool)

(assert (=> b!5167934 m!6218924))

(declare-fun m!6218926 () Bool)

(assert (=> d!1667372 m!6218926))

(assert (=> d!1667372 m!6218926))

(declare-fun m!6218928 () Bool)

(assert (=> d!1667372 m!6218928))

(declare-fun m!6218930 () Bool)

(assert (=> d!1667372 m!6218930))

(assert (=> d!1667372 m!6218930))

(assert (=> d!1667144 d!1667372))

(assert (=> d!1667144 d!1667140))

(declare-fun d!1667374 () Bool)

(assert (=> d!1667374 (= lt!2125929 lt!2126134)))

(declare-fun lt!2126298 () Unit!151532)

(declare-fun choose!38252 (List!60153 List!60153 List!60153 List!60153 List!60153) Unit!151532)

(assert (=> d!1667374 (= lt!2126298 (choose!38252 testedP!294 lt!2125929 testedP!294 lt!2126134 input!5817))))

(assert (=> d!1667374 (isPrefix!5730 testedP!294 input!5817)))

(assert (=> d!1667374 (= (lemmaSamePrefixThenSameSuffix!2687 testedP!294 lt!2125929 testedP!294 lt!2126134 input!5817) lt!2126298)))

(declare-fun bs!1203028 () Bool)

(assert (= bs!1203028 d!1667374))

(declare-fun m!6218932 () Bool)

(assert (=> bs!1203028 m!6218932))

(assert (=> bs!1203028 m!6218260))

(assert (=> d!1667144 d!1667374))

(declare-fun b!5167937 () Bool)

(declare-fun e!3220112 () List!60153)

(assert (=> b!5167937 (= e!3220112 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) lt!2125929)))))

(declare-fun b!5167939 () Bool)

(declare-fun e!3220113 () Bool)

(declare-fun lt!2126299 () List!60153)

(assert (=> b!5167939 (= e!3220113 (or (not (= lt!2125929 Nil!60029)) (= lt!2126299 testedP!294)))))

(declare-fun b!5167938 () Bool)

(declare-fun res!2196738 () Bool)

(assert (=> b!5167938 (=> (not res!2196738) (not e!3220113))))

(assert (=> b!5167938 (= res!2196738 (= (size!39633 lt!2126299) (+ (size!39633 testedP!294) (size!39633 lt!2125929))))))

(declare-fun d!1667376 () Bool)

(assert (=> d!1667376 e!3220113))

(declare-fun res!2196737 () Bool)

(assert (=> d!1667376 (=> (not res!2196737) (not e!3220113))))

(assert (=> d!1667376 (= res!2196737 (= (content!10637 lt!2126299) ((_ map or) (content!10637 testedP!294) (content!10637 lt!2125929))))))

(assert (=> d!1667376 (= lt!2126299 e!3220112)))

(declare-fun c!889343 () Bool)

(assert (=> d!1667376 (= c!889343 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667376 (= (++!13121 testedP!294 lt!2125929) lt!2126299)))

(declare-fun b!5167936 () Bool)

(assert (=> b!5167936 (= e!3220112 lt!2125929)))

(assert (= (and d!1667376 c!889343) b!5167936))

(assert (= (and d!1667376 (not c!889343)) b!5167937))

(assert (= (and d!1667376 res!2196737) b!5167938))

(assert (= (and b!5167938 res!2196738) b!5167939))

(declare-fun m!6218934 () Bool)

(assert (=> b!5167937 m!6218934))

(declare-fun m!6218936 () Bool)

(assert (=> b!5167938 m!6218936))

(assert (=> b!5167938 m!6218234))

(declare-fun m!6218938 () Bool)

(assert (=> b!5167938 m!6218938))

(declare-fun m!6218940 () Bool)

(assert (=> d!1667376 m!6218940))

(assert (=> d!1667376 m!6218292))

(declare-fun m!6218942 () Bool)

(assert (=> d!1667376 m!6218942))

(assert (=> d!1667144 d!1667376))

(declare-fun d!1667378 () Bool)

(assert (=> d!1667378 (isPrefix!5730 testedP!294 (++!13121 testedP!294 lt!2125929))))

(declare-fun lt!2126302 () Unit!151532)

(declare-fun choose!38253 (List!60153 List!60153) Unit!151532)

(assert (=> d!1667378 (= lt!2126302 (choose!38253 testedP!294 lt!2125929))))

(assert (=> d!1667378 (= (lemmaConcatTwoListThenFirstIsPrefix!3581 testedP!294 lt!2125929) lt!2126302)))

(declare-fun bs!1203029 () Bool)

(assert (= bs!1203029 d!1667378))

(assert (=> bs!1203029 m!6218432))

(assert (=> bs!1203029 m!6218432))

(assert (=> bs!1203029 m!6218434))

(declare-fun m!6218944 () Bool)

(assert (=> bs!1203029 m!6218944))

(assert (=> d!1667144 d!1667378))

(declare-fun b!5167941 () Bool)

(declare-fun e!3220114 () List!60153)

(assert (=> b!5167941 (= e!3220114 (Cons!60029 (h!66477 (_1!35177 lt!2126109)) (++!13121 (t!373306 (_1!35177 lt!2126109)) (_2!35177 lt!2126109))))))

(declare-fun b!5167943 () Bool)

(declare-fun e!3220115 () Bool)

(declare-fun lt!2126303 () List!60153)

(assert (=> b!5167943 (= e!3220115 (or (not (= (_2!35177 lt!2126109) Nil!60029)) (= lt!2126303 (_1!35177 lt!2126109))))))

(declare-fun b!5167942 () Bool)

(declare-fun res!2196740 () Bool)

(assert (=> b!5167942 (=> (not res!2196740) (not e!3220115))))

(assert (=> b!5167942 (= res!2196740 (= (size!39633 lt!2126303) (+ (size!39633 (_1!35177 lt!2126109)) (size!39633 (_2!35177 lt!2126109)))))))

(declare-fun d!1667380 () Bool)

(assert (=> d!1667380 e!3220115))

(declare-fun res!2196739 () Bool)

(assert (=> d!1667380 (=> (not res!2196739) (not e!3220115))))

(assert (=> d!1667380 (= res!2196739 (= (content!10637 lt!2126303) ((_ map or) (content!10637 (_1!35177 lt!2126109)) (content!10637 (_2!35177 lt!2126109)))))))

(assert (=> d!1667380 (= lt!2126303 e!3220114)))

(declare-fun c!889344 () Bool)

(assert (=> d!1667380 (= c!889344 ((_ is Nil!60029) (_1!35177 lt!2126109)))))

(assert (=> d!1667380 (= (++!13121 (_1!35177 lt!2126109) (_2!35177 lt!2126109)) lt!2126303)))

(declare-fun b!5167940 () Bool)

(assert (=> b!5167940 (= e!3220114 (_2!35177 lt!2126109))))

(assert (= (and d!1667380 c!889344) b!5167940))

(assert (= (and d!1667380 (not c!889344)) b!5167941))

(assert (= (and d!1667380 res!2196739) b!5167942))

(assert (= (and b!5167942 res!2196740) b!5167943))

(declare-fun m!6218946 () Bool)

(assert (=> b!5167941 m!6218946))

(declare-fun m!6218948 () Bool)

(assert (=> b!5167942 m!6218948))

(assert (=> b!5167942 m!6218444))

(declare-fun m!6218950 () Bool)

(assert (=> b!5167942 m!6218950))

(declare-fun m!6218952 () Bool)

(assert (=> d!1667380 m!6218952))

(declare-fun m!6218954 () Bool)

(assert (=> d!1667380 m!6218954))

(declare-fun m!6218956 () Bool)

(assert (=> d!1667380 m!6218956))

(assert (=> d!1667144 d!1667380))

(declare-fun d!1667382 () Bool)

(declare-fun lt!2126304 () List!60153)

(assert (=> d!1667382 (= (++!13121 (t!373306 testedP!294) lt!2126304) (tail!10130 input!5817))))

(declare-fun e!3220116 () List!60153)

(assert (=> d!1667382 (= lt!2126304 e!3220116)))

(declare-fun c!889345 () Bool)

(assert (=> d!1667382 (= c!889345 ((_ is Cons!60029) (t!373306 testedP!294)))))

(assert (=> d!1667382 (>= (size!39633 (tail!10130 input!5817)) (size!39633 (t!373306 testedP!294)))))

(assert (=> d!1667382 (= (getSuffix!3380 (tail!10130 input!5817) (t!373306 testedP!294)) lt!2126304)))

(declare-fun b!5167944 () Bool)

(assert (=> b!5167944 (= e!3220116 (getSuffix!3380 (tail!10130 (tail!10130 input!5817)) (t!373306 (t!373306 testedP!294))))))

(declare-fun b!5167945 () Bool)

(assert (=> b!5167945 (= e!3220116 (tail!10130 input!5817))))

(assert (= (and d!1667382 c!889345) b!5167944))

(assert (= (and d!1667382 (not c!889345)) b!5167945))

(declare-fun m!6218958 () Bool)

(assert (=> d!1667382 m!6218958))

(assert (=> d!1667382 m!6218302))

(assert (=> d!1667382 m!6218796))

(assert (=> d!1667382 m!6218460))

(assert (=> b!5167944 m!6218302))

(assert (=> b!5167944 m!6218792))

(assert (=> b!5167944 m!6218792))

(declare-fun m!6218960 () Bool)

(assert (=> b!5167944 m!6218960))

(assert (=> b!5167584 d!1667382))

(assert (=> b!5167584 d!1667332))

(assert (=> b!5167679 d!1667304))

(assert (=> d!1667114 d!1667140))

(declare-fun d!1667384 () Bool)

(assert (=> d!1667384 (= (head!11021 (getSuffix!3380 input!5817 testedP!294)) (h!66477 (getSuffix!3380 input!5817 testedP!294)))))

(assert (=> d!1667114 d!1667384))

(assert (=> d!1667114 d!1667130))

(declare-fun b!5167947 () Bool)

(declare-fun res!2196741 () Bool)

(declare-fun e!3220118 () Bool)

(assert (=> b!5167947 (=> (not res!2196741) (not e!3220118))))

(assert (=> b!5167947 (= res!2196741 (= (head!11021 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) (head!11021 input!5817)))))

(declare-fun b!5167946 () Bool)

(declare-fun e!3220117 () Bool)

(assert (=> b!5167946 (= e!3220117 e!3220118)))

(declare-fun res!2196743 () Bool)

(assert (=> b!5167946 (=> (not res!2196743) (not e!3220118))))

(assert (=> b!5167946 (= res!2196743 (not ((_ is Nil!60029) input!5817)))))

(declare-fun b!5167948 () Bool)

(assert (=> b!5167948 (= e!3220118 (isPrefix!5730 (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) (tail!10130 input!5817)))))

(declare-fun d!1667386 () Bool)

(declare-fun e!3220119 () Bool)

(assert (=> d!1667386 e!3220119))

(declare-fun res!2196744 () Bool)

(assert (=> d!1667386 (=> res!2196744 e!3220119)))

(declare-fun lt!2126305 () Bool)

(assert (=> d!1667386 (= res!2196744 (not lt!2126305))))

(assert (=> d!1667386 (= lt!2126305 e!3220117)))

(declare-fun res!2196742 () Bool)

(assert (=> d!1667386 (=> res!2196742 e!3220117)))

(assert (=> d!1667386 (= res!2196742 ((_ is Nil!60029) (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(assert (=> d!1667386 (= (isPrefix!5730 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) input!5817) lt!2126305)))

(declare-fun b!5167949 () Bool)

(assert (=> b!5167949 (= e!3220119 (>= (size!39633 input!5817) (size!39633 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (= (and d!1667386 (not res!2196742)) b!5167946))

(assert (= (and b!5167946 res!2196743) b!5167947))

(assert (= (and b!5167947 res!2196741) b!5167948))

(assert (= (and d!1667386 (not res!2196744)) b!5167949))

(assert (=> b!5167947 m!6218308))

(declare-fun m!6218962 () Bool)

(assert (=> b!5167947 m!6218962))

(assert (=> b!5167947 m!6218298))

(assert (=> b!5167948 m!6218308))

(declare-fun m!6218964 () Bool)

(assert (=> b!5167948 m!6218964))

(assert (=> b!5167948 m!6218302))

(assert (=> b!5167948 m!6218964))

(assert (=> b!5167948 m!6218302))

(declare-fun m!6218966 () Bool)

(assert (=> b!5167948 m!6218966))

(assert (=> b!5167949 m!6218236))

(assert (=> b!5167949 m!6218308))

(declare-fun m!6218968 () Bool)

(assert (=> b!5167949 m!6218968))

(assert (=> d!1667114 d!1667386))

(declare-fun d!1667388 () Bool)

(assert (=> d!1667388 (isPrefix!5730 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) input!5817)))

(assert (=> d!1667388 true))

(declare-fun _$65!1796 () Unit!151532)

(assert (=> d!1667388 (= (choose!38242 testedP!294 input!5817) _$65!1796)))

(declare-fun bs!1203030 () Bool)

(assert (= bs!1203030 d!1667388))

(assert (=> bs!1203030 m!6218240))

(assert (=> bs!1203030 m!6218240))

(assert (=> bs!1203030 m!6218306))

(assert (=> bs!1203030 m!6218308))

(assert (=> bs!1203030 m!6218308))

(assert (=> bs!1203030 m!6218310))

(assert (=> d!1667114 d!1667388))

(declare-fun b!5167951 () Bool)

(declare-fun e!3220120 () List!60153)

(assert (=> b!5167951 (= e!3220120 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(declare-fun b!5167953 () Bool)

(declare-fun lt!2126306 () List!60153)

(declare-fun e!3220121 () Bool)

(assert (=> b!5167953 (= e!3220121 (or (not (= (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029) Nil!60029)) (= lt!2126306 testedP!294)))))

(declare-fun b!5167952 () Bool)

(declare-fun res!2196746 () Bool)

(assert (=> b!5167952 (=> (not res!2196746) (not e!3220121))))

(assert (=> b!5167952 (= res!2196746 (= (size!39633 lt!2126306) (+ (size!39633 testedP!294) (size!39633 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(declare-fun d!1667390 () Bool)

(assert (=> d!1667390 e!3220121))

(declare-fun res!2196745 () Bool)

(assert (=> d!1667390 (=> (not res!2196745) (not e!3220121))))

(assert (=> d!1667390 (= res!2196745 (= (content!10637 lt!2126306) ((_ map or) (content!10637 testedP!294) (content!10637 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (=> d!1667390 (= lt!2126306 e!3220120)))

(declare-fun c!889346 () Bool)

(assert (=> d!1667390 (= c!889346 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667390 (= (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) lt!2126306)))

(declare-fun b!5167950 () Bool)

(assert (=> b!5167950 (= e!3220120 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))

(assert (= (and d!1667390 c!889346) b!5167950))

(assert (= (and d!1667390 (not c!889346)) b!5167951))

(assert (= (and d!1667390 res!2196745) b!5167952))

(assert (= (and b!5167952 res!2196746) b!5167953))

(declare-fun m!6218970 () Bool)

(assert (=> b!5167951 m!6218970))

(declare-fun m!6218972 () Bool)

(assert (=> b!5167952 m!6218972))

(assert (=> b!5167952 m!6218234))

(declare-fun m!6218974 () Bool)

(assert (=> b!5167952 m!6218974))

(declare-fun m!6218976 () Bool)

(assert (=> d!1667390 m!6218976))

(assert (=> d!1667390 m!6218292))

(declare-fun m!6218978 () Bool)

(assert (=> d!1667390 m!6218978))

(assert (=> d!1667114 d!1667390))

(declare-fun d!1667392 () Bool)

(declare-fun res!2196747 () Bool)

(declare-fun e!3220122 () Bool)

(assert (=> d!1667392 (=> res!2196747 e!3220122)))

(assert (=> d!1667392 (= res!2196747 ((_ is Nil!60030) (exprs!4481 setElem!31828)))))

(assert (=> d!1667392 (= (forall!14116 (exprs!4481 setElem!31828) lambda!257918) e!3220122)))

(declare-fun b!5167954 () Bool)

(declare-fun e!3220123 () Bool)

(assert (=> b!5167954 (= e!3220122 e!3220123)))

(declare-fun res!2196748 () Bool)

(assert (=> b!5167954 (=> (not res!2196748) (not e!3220123))))

(assert (=> b!5167954 (= res!2196748 (dynLambda!23864 lambda!257918 (h!66478 (exprs!4481 setElem!31828))))))

(declare-fun b!5167955 () Bool)

(assert (=> b!5167955 (= e!3220123 (forall!14116 (t!373307 (exprs!4481 setElem!31828)) lambda!257918))))

(assert (= (and d!1667392 (not res!2196747)) b!5167954))

(assert (= (and b!5167954 res!2196748) b!5167955))

(declare-fun b_lambda!200811 () Bool)

(assert (=> (not b_lambda!200811) (not b!5167954)))

(declare-fun m!6218980 () Bool)

(assert (=> b!5167954 m!6218980))

(declare-fun m!6218982 () Bool)

(assert (=> b!5167955 m!6218982))

(assert (=> d!1667134 d!1667392))

(declare-fun b!5167957 () Bool)

(declare-fun res!2196749 () Bool)

(declare-fun e!3220125 () Bool)

(assert (=> b!5167957 (=> (not res!2196749) (not e!3220125))))

(assert (=> b!5167957 (= res!2196749 (= (head!11021 (tail!10130 testedP!294)) (head!11021 (tail!10130 input!5817))))))

(declare-fun b!5167956 () Bool)

(declare-fun e!3220124 () Bool)

(assert (=> b!5167956 (= e!3220124 e!3220125)))

(declare-fun res!2196751 () Bool)

(assert (=> b!5167956 (=> (not res!2196751) (not e!3220125))))

(assert (=> b!5167956 (= res!2196751 (not ((_ is Nil!60029) (tail!10130 input!5817))))))

(declare-fun b!5167958 () Bool)

(assert (=> b!5167958 (= e!3220125 (isPrefix!5730 (tail!10130 (tail!10130 testedP!294)) (tail!10130 (tail!10130 input!5817))))))

(declare-fun d!1667394 () Bool)

(declare-fun e!3220126 () Bool)

(assert (=> d!1667394 e!3220126))

(declare-fun res!2196752 () Bool)

(assert (=> d!1667394 (=> res!2196752 e!3220126)))

(declare-fun lt!2126307 () Bool)

(assert (=> d!1667394 (= res!2196752 (not lt!2126307))))

(assert (=> d!1667394 (= lt!2126307 e!3220124)))

(declare-fun res!2196750 () Bool)

(assert (=> d!1667394 (=> res!2196750 e!3220124)))

(assert (=> d!1667394 (= res!2196750 ((_ is Nil!60029) (tail!10130 testedP!294)))))

(assert (=> d!1667394 (= (isPrefix!5730 (tail!10130 testedP!294) (tail!10130 input!5817)) lt!2126307)))

(declare-fun b!5167959 () Bool)

(assert (=> b!5167959 (= e!3220126 (>= (size!39633 (tail!10130 input!5817)) (size!39633 (tail!10130 testedP!294))))))

(assert (= (and d!1667394 (not res!2196750)) b!5167956))

(assert (= (and b!5167956 res!2196751) b!5167957))

(assert (= (and b!5167957 res!2196749) b!5167958))

(assert (= (and d!1667394 (not res!2196752)) b!5167959))

(assert (=> b!5167957 m!6218360))

(declare-fun m!6218984 () Bool)

(assert (=> b!5167957 m!6218984))

(assert (=> b!5167957 m!6218302))

(assert (=> b!5167957 m!6218788))

(assert (=> b!5167958 m!6218360))

(declare-fun m!6218986 () Bool)

(assert (=> b!5167958 m!6218986))

(assert (=> b!5167958 m!6218302))

(assert (=> b!5167958 m!6218792))

(assert (=> b!5167958 m!6218986))

(assert (=> b!5167958 m!6218792))

(declare-fun m!6218988 () Bool)

(assert (=> b!5167958 m!6218988))

(assert (=> b!5167959 m!6218302))

(assert (=> b!5167959 m!6218796))

(assert (=> b!5167959 m!6218360))

(declare-fun m!6218990 () Bool)

(assert (=> b!5167959 m!6218990))

(assert (=> b!5167560 d!1667394))

(declare-fun d!1667396 () Bool)

(assert (=> d!1667396 (= (tail!10130 testedP!294) (t!373306 testedP!294))))

(assert (=> b!5167560 d!1667396))

(assert (=> b!5167560 d!1667332))

(declare-fun d!1667398 () Bool)

(assert (=> d!1667398 (= (head!11021 testedP!294) (h!66477 testedP!294))))

(assert (=> b!5167559 d!1667398))

(assert (=> b!5167559 d!1667304))

(assert (=> b!5167681 d!1667138))

(assert (=> b!5167661 d!1667138))

(assert (=> b!5167661 d!1667390))

(assert (=> b!5167661 d!1667132))

(assert (=> b!5167661 d!1667140))

(declare-fun e!3220127 () List!60153)

(declare-fun b!5167961 () Bool)

(assert (=> b!5167961 (= e!3220127 (Cons!60029 (h!66477 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) (++!13121 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) lt!2126122)))))

(declare-fun lt!2126308 () List!60153)

(declare-fun e!3220128 () Bool)

(declare-fun b!5167963 () Bool)

(assert (=> b!5167963 (= e!3220128 (or (not (= lt!2126122 Nil!60029)) (= lt!2126308 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))))))

(declare-fun b!5167962 () Bool)

(declare-fun res!2196754 () Bool)

(assert (=> b!5167962 (=> (not res!2196754) (not e!3220128))))

(assert (=> b!5167962 (= res!2196754 (= (size!39633 lt!2126308) (+ (size!39633 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) (size!39633 lt!2126122))))))

(declare-fun d!1667400 () Bool)

(assert (=> d!1667400 e!3220128))

(declare-fun res!2196753 () Bool)

(assert (=> d!1667400 (=> (not res!2196753) (not e!3220128))))

(assert (=> d!1667400 (= res!2196753 (= (content!10637 lt!2126308) ((_ map or) (content!10637 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) (content!10637 lt!2126122))))))

(assert (=> d!1667400 (= lt!2126308 e!3220127)))

(declare-fun c!889347 () Bool)

(assert (=> d!1667400 (= c!889347 ((_ is Nil!60029) (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))

(assert (=> d!1667400 (= (++!13121 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)) lt!2126122) lt!2126308)))

(declare-fun b!5167960 () Bool)

(assert (=> b!5167960 (= e!3220127 lt!2126122)))

(assert (= (and d!1667400 c!889347) b!5167960))

(assert (= (and d!1667400 (not c!889347)) b!5167961))

(assert (= (and d!1667400 res!2196753) b!5167962))

(assert (= (and b!5167962 res!2196754) b!5167963))

(declare-fun m!6218992 () Bool)

(assert (=> b!5167961 m!6218992))

(declare-fun m!6218994 () Bool)

(assert (=> b!5167962 m!6218994))

(assert (=> b!5167962 m!6218450))

(declare-fun m!6218996 () Bool)

(assert (=> b!5167962 m!6218996))

(declare-fun m!6218998 () Bool)

(assert (=> b!5167962 m!6218998))

(declare-fun m!6219000 () Bool)

(assert (=> d!1667400 m!6219000))

(assert (=> d!1667400 m!6218450))

(declare-fun m!6219002 () Bool)

(assert (=> d!1667400 m!6219002))

(declare-fun m!6219004 () Bool)

(assert (=> d!1667400 m!6219004))

(assert (=> b!5167661 d!1667400))

(declare-fun b!5167965 () Bool)

(declare-fun e!3220129 () List!60153)

(assert (=> b!5167965 (= e!3220129 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) (Cons!60029 lt!2126119 Nil!60029))))))

(declare-fun e!3220130 () Bool)

(declare-fun lt!2126309 () List!60153)

(declare-fun b!5167967 () Bool)

(assert (=> b!5167967 (= e!3220130 (or (not (= (Cons!60029 lt!2126119 Nil!60029) Nil!60029)) (= lt!2126309 testedP!294)))))

(declare-fun b!5167966 () Bool)

(declare-fun res!2196756 () Bool)

(assert (=> b!5167966 (=> (not res!2196756) (not e!3220130))))

(assert (=> b!5167966 (= res!2196756 (= (size!39633 lt!2126309) (+ (size!39633 testedP!294) (size!39633 (Cons!60029 lt!2126119 Nil!60029)))))))

(declare-fun d!1667402 () Bool)

(assert (=> d!1667402 e!3220130))

(declare-fun res!2196755 () Bool)

(assert (=> d!1667402 (=> (not res!2196755) (not e!3220130))))

(assert (=> d!1667402 (= res!2196755 (= (content!10637 lt!2126309) ((_ map or) (content!10637 testedP!294) (content!10637 (Cons!60029 lt!2126119 Nil!60029)))))))

(assert (=> d!1667402 (= lt!2126309 e!3220129)))

(declare-fun c!889348 () Bool)

(assert (=> d!1667402 (= c!889348 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667402 (= (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)) lt!2126309)))

(declare-fun b!5167964 () Bool)

(assert (=> b!5167964 (= e!3220129 (Cons!60029 lt!2126119 Nil!60029))))

(assert (= (and d!1667402 c!889348) b!5167964))

(assert (= (and d!1667402 (not c!889348)) b!5167965))

(assert (= (and d!1667402 res!2196755) b!5167966))

(assert (= (and b!5167966 res!2196756) b!5167967))

(declare-fun m!6219006 () Bool)

(assert (=> b!5167965 m!6219006))

(declare-fun m!6219008 () Bool)

(assert (=> b!5167966 m!6219008))

(assert (=> b!5167966 m!6218234))

(declare-fun m!6219010 () Bool)

(assert (=> b!5167966 m!6219010))

(declare-fun m!6219012 () Bool)

(assert (=> d!1667402 m!6219012))

(assert (=> d!1667402 m!6218292))

(declare-fun m!6219014 () Bool)

(assert (=> d!1667402 m!6219014))

(assert (=> b!5167661 d!1667402))

(assert (=> b!5167661 d!1667384))

(assert (=> b!5167661 d!1667166))

(assert (=> b!5167661 d!1667128))

(assert (=> b!5167661 d!1667386))

(assert (=> b!5167661 d!1667102))

(declare-fun d!1667404 () Bool)

(assert (=> d!1667404 (= (++!13121 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)) lt!2126122) input!5817)))

(declare-fun lt!2126312 () Unit!151532)

(declare-fun choose!38256 (List!60153 C!29464 List!60153 List!60153) Unit!151532)

(assert (=> d!1667404 (= lt!2126312 (choose!38256 testedP!294 lt!2126119 lt!2126122 input!5817))))

(assert (=> d!1667404 (= (++!13121 testedP!294 (Cons!60029 lt!2126119 lt!2126122)) input!5817)))

(assert (=> d!1667404 (= (lemmaMoveElementToOtherListKeepsConcatEq!1568 testedP!294 lt!2126119 lt!2126122 input!5817) lt!2126312)))

(declare-fun bs!1203031 () Bool)

(assert (= bs!1203031 d!1667404))

(assert (=> bs!1203031 m!6218450))

(assert (=> bs!1203031 m!6218450))

(assert (=> bs!1203031 m!6218454))

(declare-fun m!6219016 () Bool)

(assert (=> bs!1203031 m!6219016))

(declare-fun m!6219018 () Bool)

(assert (=> bs!1203031 m!6219018))

(assert (=> b!5167661 d!1667404))

(assert (=> b!5167661 d!1667114))

(assert (=> b!5167661 d!1667180))

(declare-fun condSetEmpty!31839 () Bool)

(assert (=> setNonEmpty!31835 (= condSetEmpty!31839 (= setRest!31835 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31839 () Bool)

(assert (=> setNonEmpty!31835 (= tp!1449788 setRes!31839)))

(declare-fun setIsEmpty!31839 () Bool)

(assert (=> setIsEmpty!31839 setRes!31839))

(declare-fun setElem!31839 () Context!7962)

(declare-fun e!3220131 () Bool)

(declare-fun tp!1449835 () Bool)

(declare-fun setNonEmpty!31839 () Bool)

(assert (=> setNonEmpty!31839 (= setRes!31839 (and tp!1449835 (inv!79739 setElem!31839) e!3220131))))

(declare-fun setRest!31839 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31839 (= setRest!31835 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31839 true) setRest!31839))))

(declare-fun b!5167968 () Bool)

(declare-fun tp!1449834 () Bool)

(assert (=> b!5167968 (= e!3220131 tp!1449834)))

(assert (= (and setNonEmpty!31835 condSetEmpty!31839) setIsEmpty!31839))

(assert (= (and setNonEmpty!31835 (not condSetEmpty!31839)) setNonEmpty!31839))

(assert (= setNonEmpty!31839 b!5167968))

(declare-fun m!6219020 () Bool)

(assert (=> setNonEmpty!31839 m!6219020))

(declare-fun b!5167981 () Bool)

(declare-fun e!3220134 () Bool)

(declare-fun tp!1449846 () Bool)

(assert (=> b!5167981 (= e!3220134 tp!1449846)))

(declare-fun b!5167982 () Bool)

(declare-fun tp!1449850 () Bool)

(declare-fun tp!1449848 () Bool)

(assert (=> b!5167982 (= e!3220134 (and tp!1449850 tp!1449848))))

(declare-fun b!5167979 () Bool)

(assert (=> b!5167979 (= e!3220134 tp_is_empty!38447)))

(assert (=> b!5167702 (= tp!1449793 e!3220134)))

(declare-fun b!5167980 () Bool)

(declare-fun tp!1449849 () Bool)

(declare-fun tp!1449847 () Bool)

(assert (=> b!5167980 (= e!3220134 (and tp!1449849 tp!1449847))))

(assert (= (and b!5167702 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31828)))) b!5167979))

(assert (= (and b!5167702 ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31828)))) b!5167980))

(assert (= (and b!5167702 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31828)))) b!5167981))

(assert (= (and b!5167702 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31828)))) b!5167982))

(declare-fun b!5167983 () Bool)

(declare-fun e!3220135 () Bool)

(declare-fun tp!1449851 () Bool)

(declare-fun tp!1449852 () Bool)

(assert (=> b!5167983 (= e!3220135 (and tp!1449851 tp!1449852))))

(assert (=> b!5167702 (= tp!1449794 e!3220135)))

(assert (= (and b!5167702 ((_ is Cons!60030) (t!373307 (exprs!4481 setElem!31828)))) b!5167983))

(declare-fun b!5167984 () Bool)

(declare-fun e!3220136 () Bool)

(declare-fun tp!1449853 () Bool)

(assert (=> b!5167984 (= e!3220136 (and tp_is_empty!38447 tp!1449853))))

(assert (=> b!5167704 (= tp!1449797 e!3220136)))

(assert (= (and b!5167704 ((_ is Cons!60029) (t!373306 (t!373306 testedP!294)))) b!5167984))

(declare-fun b!5167985 () Bool)

(declare-fun e!3220137 () Bool)

(declare-fun tp!1449854 () Bool)

(declare-fun tp!1449855 () Bool)

(assert (=> b!5167985 (= e!3220137 (and tp!1449854 tp!1449855))))

(assert (=> b!5167703 (= tp!1449795 e!3220137)))

(assert (= (and b!5167703 ((_ is Cons!60030) (exprs!4481 setElem!31836))) b!5167985))

(declare-fun b!5167988 () Bool)

(declare-fun e!3220138 () Bool)

(declare-fun tp!1449856 () Bool)

(assert (=> b!5167988 (= e!3220138 tp!1449856)))

(declare-fun b!5167989 () Bool)

(declare-fun tp!1449860 () Bool)

(declare-fun tp!1449858 () Bool)

(assert (=> b!5167989 (= e!3220138 (and tp!1449860 tp!1449858))))

(declare-fun b!5167986 () Bool)

(assert (=> b!5167986 (= e!3220138 tp_is_empty!38447)))

(assert (=> b!5167705 (= tp!1449798 e!3220138)))

(declare-fun b!5167987 () Bool)

(declare-fun tp!1449859 () Bool)

(declare-fun tp!1449857 () Bool)

(assert (=> b!5167987 (= e!3220138 (and tp!1449859 tp!1449857))))

(assert (= (and b!5167705 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31827)))) b!5167986))

(assert (= (and b!5167705 ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31827)))) b!5167987))

(assert (= (and b!5167705 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31827)))) b!5167988))

(assert (= (and b!5167705 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31827)))) b!5167989))

(declare-fun b!5167990 () Bool)

(declare-fun e!3220139 () Bool)

(declare-fun tp!1449861 () Bool)

(declare-fun tp!1449862 () Bool)

(assert (=> b!5167990 (= e!3220139 (and tp!1449861 tp!1449862))))

(assert (=> b!5167705 (= tp!1449799 e!3220139)))

(assert (= (and b!5167705 ((_ is Cons!60030) (t!373307 (exprs!4481 setElem!31827)))) b!5167990))

(declare-fun condSetEmpty!31840 () Bool)

(assert (=> setNonEmpty!31836 (= condSetEmpty!31840 (= setRest!31836 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31840 () Bool)

(assert (=> setNonEmpty!31836 (= tp!1449796 setRes!31840)))

(declare-fun setIsEmpty!31840 () Bool)

(assert (=> setIsEmpty!31840 setRes!31840))

(declare-fun setElem!31840 () Context!7962)

(declare-fun tp!1449864 () Bool)

(declare-fun setNonEmpty!31840 () Bool)

(declare-fun e!3220140 () Bool)

(assert (=> setNonEmpty!31840 (= setRes!31840 (and tp!1449864 (inv!79739 setElem!31840) e!3220140))))

(declare-fun setRest!31840 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31840 (= setRest!31836 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31840 true) setRest!31840))))

(declare-fun b!5167991 () Bool)

(declare-fun tp!1449863 () Bool)

(assert (=> b!5167991 (= e!3220140 tp!1449863)))

(assert (= (and setNonEmpty!31836 condSetEmpty!31840) setIsEmpty!31840))

(assert (= (and setNonEmpty!31836 (not condSetEmpty!31840)) setNonEmpty!31840))

(assert (= setNonEmpty!31840 b!5167991))

(declare-fun m!6219022 () Bool)

(assert (=> setNonEmpty!31840 m!6219022))

(declare-fun b!5167992 () Bool)

(declare-fun e!3220141 () Bool)

(declare-fun tp!1449865 () Bool)

(assert (=> b!5167992 (= e!3220141 (and tp_is_empty!38447 tp!1449865))))

(assert (=> b!5167692 (= tp!1449782 e!3220141)))

(assert (= (and b!5167692 ((_ is Cons!60029) (t!373306 (t!373306 input!5817)))) b!5167992))

(declare-fun b!5167993 () Bool)

(declare-fun e!3220142 () Bool)

(declare-fun tp!1449866 () Bool)

(declare-fun tp!1449867 () Bool)

(assert (=> b!5167993 (= e!3220142 (and tp!1449866 tp!1449867))))

(assert (=> b!5167697 (= tp!1449787 e!3220142)))

(assert (= (and b!5167697 ((_ is Cons!60030) (exprs!4481 setElem!31835))) b!5167993))

(declare-fun b_lambda!200813 () Bool)

(assert (= b_lambda!200805 (or d!1667184 b_lambda!200813)))

(declare-fun bs!1203032 () Bool)

(declare-fun d!1667406 () Bool)

(assert (= bs!1203032 (and d!1667406 d!1667184)))

(declare-fun validRegex!6394 (Regex!14597) Bool)

(assert (=> bs!1203032 (= (dynLambda!23864 lambda!257923 (h!66478 (exprs!4481 setElem!31827))) (validRegex!6394 (h!66478 (exprs!4481 setElem!31827))))))

(declare-fun m!6219024 () Bool)

(assert (=> bs!1203032 m!6219024))

(assert (=> b!5167844 d!1667406))

(declare-fun b_lambda!200815 () Bool)

(assert (= b_lambda!200811 (or d!1667134 b_lambda!200815)))

(declare-fun bs!1203033 () Bool)

(declare-fun d!1667408 () Bool)

(assert (= bs!1203033 (and d!1667408 d!1667134)))

(assert (=> bs!1203033 (= (dynLambda!23864 lambda!257918 (h!66478 (exprs!4481 setElem!31828))) (validRegex!6394 (h!66478 (exprs!4481 setElem!31828))))))

(declare-fun m!6219026 () Bool)

(assert (=> bs!1203033 m!6219026))

(assert (=> b!5167954 d!1667408))

(check-sat (not b!5167829) (not b!5167901) (not b!5167919) (not b!5167928) (not b!5167961) (not b!5167925) (not d!1667390) (not d!1667274) (not bs!1203033) (not b!5167827) (not b!5167850) (not bs!1203032) (not b!5167944) (not b_lambda!200815) (not b!5167923) (not b!5167854) (not b!5167915) (not d!1667388) (not b!5167837) (not b!5167990) (not d!1667368) (not bm!362650) (not d!1667376) (not d!1667334) (not b!5167830) (not bm!362640) (not d!1667404) (not b!5167845) (not b!5167834) (not b!5167935) (not bm!362643) (not b!5167921) (not d!1667380) (not b!5167942) (not b!5167988) (not d!1667402) (not b!5167938) (not setNonEmpty!31839) (not b!5167980) (not d!1667318) (not b!5167833) (not b!5167871) (not b!5167991) (not b!5167957) (not b!5167853) (not d!1667350) (not b!5167952) (not b!5167908) (not b_lambda!200813) (not d!1667292) (not d!1667338) (not bm!362642) (not b!5167924) (not b!5167861) (not b!5167929) (not bm!362649) (not b!5167817) (not d!1667310) (not b!5167937) (not b!5167934) (not b!5167865) (not b!5167811) (not d!1667374) (not b!5167855) (not b!5167912) (not b!5167948) (not b!5167927) (not d!1667372) (not b!5167982) (not b!5167941) tp_is_empty!38447 (not b!5167987) (not d!1667378) (not b!5167812) (not b!5167864) (not b!5167949) (not b!5167958) (not bm!362639) (not b!5167993) (not b!5167984) (not bm!362641) (not b!5167917) (not b!5167965) (not b!5167809) (not bm!362637) (not d!1667400) (not d!1667294) (not setNonEmpty!31840) (not b!5167981) (not b!5167819) (not b!5167985) (not b!5167992) (not bm!362638) (not d!1667382) (not b!5167983) (not b!5167955) (not b!5167966) (not bm!362644) (not d!1667312) (not b!5167951) (not b!5167959) (not b!5167962) (not b!5167947) (not b!5167968) (not b!5167825) (not d!1667326) (not b!5167989) (not b!5167807))
(check-sat)
(get-model)

(declare-fun d!1667410 () Bool)

(declare-fun c!889349 () Bool)

(assert (=> d!1667410 (= c!889349 ((_ is Nil!60029) (t!373306 lt!2126143)))))

(declare-fun e!3220143 () (InoxSet C!29464))

(assert (=> d!1667410 (= (content!10637 (t!373306 lt!2126143)) e!3220143)))

(declare-fun b!5167994 () Bool)

(assert (=> b!5167994 (= e!3220143 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5167995 () Bool)

(assert (=> b!5167995 (= e!3220143 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 lt!2126143)) true) (content!10637 (t!373306 (t!373306 lt!2126143)))))))

(assert (= (and d!1667410 c!889349) b!5167994))

(assert (= (and d!1667410 (not c!889349)) b!5167995))

(declare-fun m!6219028 () Bool)

(assert (=> b!5167995 m!6219028))

(declare-fun m!6219030 () Bool)

(assert (=> b!5167995 m!6219030))

(assert (=> b!5167915 d!1667410))

(declare-fun d!1667412 () Bool)

(declare-fun lt!2126313 () Int)

(assert (=> d!1667412 (>= lt!2126313 0)))

(declare-fun e!3220144 () Int)

(assert (=> d!1667412 (= lt!2126313 e!3220144)))

(declare-fun c!889350 () Bool)

(assert (=> d!1667412 (= c!889350 ((_ is Nil!60029) (tail!10130 input!5817)))))

(assert (=> d!1667412 (= (size!39633 (tail!10130 input!5817)) lt!2126313)))

(declare-fun b!5167996 () Bool)

(assert (=> b!5167996 (= e!3220144 0)))

(declare-fun b!5167997 () Bool)

(assert (=> b!5167997 (= e!3220144 (+ 1 (size!39633 (t!373306 (tail!10130 input!5817)))))))

(assert (= (and d!1667412 c!889350) b!5167996))

(assert (= (and d!1667412 (not c!889350)) b!5167997))

(declare-fun m!6219032 () Bool)

(assert (=> b!5167997 m!6219032))

(assert (=> b!5167855 d!1667412))

(declare-fun d!1667414 () Bool)

(declare-fun lt!2126314 () Int)

(assert (=> d!1667414 (>= lt!2126314 0)))

(declare-fun e!3220145 () Int)

(assert (=> d!1667414 (= lt!2126314 e!3220145)))

(declare-fun c!889351 () Bool)

(assert (=> d!1667414 (= c!889351 ((_ is Nil!60029) (tail!10130 lt!2125923)))))

(assert (=> d!1667414 (= (size!39633 (tail!10130 lt!2125923)) lt!2126314)))

(declare-fun b!5167998 () Bool)

(assert (=> b!5167998 (= e!3220145 0)))

(declare-fun b!5167999 () Bool)

(assert (=> b!5167999 (= e!3220145 (+ 1 (size!39633 (t!373306 (tail!10130 lt!2125923)))))))

(assert (= (and d!1667414 c!889351) b!5167998))

(assert (= (and d!1667414 (not c!889351)) b!5167999))

(declare-fun m!6219034 () Bool)

(assert (=> b!5167999 m!6219034))

(assert (=> b!5167855 d!1667414))

(declare-fun d!1667416 () Bool)

(declare-fun lt!2126315 () Int)

(assert (=> d!1667416 (>= lt!2126315 0)))

(declare-fun e!3220146 () Int)

(assert (=> d!1667416 (= lt!2126315 e!3220146)))

(declare-fun c!889352 () Bool)

(assert (=> d!1667416 (= c!889352 ((_ is Nil!60029) (t!373306 (t!373306 lt!2125923))))))

(assert (=> d!1667416 (= (size!39633 (t!373306 (t!373306 lt!2125923))) lt!2126315)))

(declare-fun b!5168000 () Bool)

(assert (=> b!5168000 (= e!3220146 0)))

(declare-fun b!5168001 () Bool)

(assert (=> b!5168001 (= e!3220146 (+ 1 (size!39633 (t!373306 (t!373306 (t!373306 lt!2125923))))))))

(assert (= (and d!1667416 c!889352) b!5168000))

(assert (= (and d!1667416 (not c!889352)) b!5168001))

(declare-fun m!6219036 () Bool)

(assert (=> b!5168001 m!6219036))

(assert (=> b!5167837 d!1667416))

(declare-fun bs!1203034 () Bool)

(declare-fun d!1667418 () Bool)

(assert (= bs!1203034 (and d!1667418 d!1667134)))

(declare-fun lambda!257966 () Int)

(assert (=> bs!1203034 (= lambda!257966 lambda!257918)))

(declare-fun bs!1203035 () Bool)

(assert (= bs!1203035 (and d!1667418 d!1667184)))

(assert (=> bs!1203035 (= lambda!257966 lambda!257923)))

(declare-fun bs!1203036 () Bool)

(assert (= bs!1203036 (and d!1667418 d!1667274)))

(assert (=> bs!1203036 (= lambda!257966 lambda!257929)))

(declare-fun bs!1203037 () Bool)

(assert (= bs!1203037 (and d!1667418 d!1667318)))

(assert (=> bs!1203037 (= lambda!257966 lambda!257949)))

(assert (=> d!1667418 (= (inv!79739 setElem!31840) (forall!14116 (exprs!4481 setElem!31840) lambda!257966))))

(declare-fun bs!1203038 () Bool)

(assert (= bs!1203038 d!1667418))

(declare-fun m!6219038 () Bool)

(assert (=> bs!1203038 m!6219038))

(assert (=> setNonEmpty!31840 d!1667418))

(declare-fun d!1667420 () Bool)

(declare-fun choose!38257 ((InoxSet Context!7962) Int) (InoxSet Context!7962))

(assert (=> d!1667420 (= (flatMap!437 baseZ!62 lambda!257950) (choose!38257 baseZ!62 lambda!257950))))

(declare-fun bs!1203039 () Bool)

(assert (= bs!1203039 d!1667420))

(declare-fun m!6219040 () Bool)

(assert (=> bs!1203039 m!6219040))

(assert (=> d!1667326 d!1667420))

(declare-fun d!1667422 () Bool)

(declare-fun c!889353 () Bool)

(assert (=> d!1667422 (= c!889353 ((_ is Cons!60029) (t!373306 (t!373306 testedP!294))))))

(declare-fun e!3220147 () (InoxSet Context!7962))

(assert (=> d!1667422 (= (derivationZipper!220 (derivationStepZipper!953 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (h!66477 (t!373306 testedP!294))) (t!373306 (t!373306 testedP!294))) e!3220147)))

(declare-fun b!5168002 () Bool)

(assert (=> b!5168002 (= e!3220147 (derivationZipper!220 (derivationStepZipper!953 (derivationStepZipper!953 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (h!66477 (t!373306 testedP!294))) (h!66477 (t!373306 (t!373306 testedP!294)))) (t!373306 (t!373306 (t!373306 testedP!294)))))))

(declare-fun b!5168003 () Bool)

(assert (=> b!5168003 (= e!3220147 (derivationStepZipper!953 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (h!66477 (t!373306 testedP!294))))))

(assert (= (and d!1667422 c!889353) b!5168002))

(assert (= (and d!1667422 (not c!889353)) b!5168003))

(assert (=> b!5168002 m!6218776))

(declare-fun m!6219042 () Bool)

(assert (=> b!5168002 m!6219042))

(assert (=> b!5168002 m!6219042))

(declare-fun m!6219044 () Bool)

(assert (=> b!5168002 m!6219044))

(assert (=> b!5167850 d!1667422))

(declare-fun bs!1203040 () Bool)

(declare-fun d!1667424 () Bool)

(assert (= bs!1203040 (and d!1667424 d!1667294)))

(declare-fun lambda!257967 () Int)

(assert (=> bs!1203040 (= (= (h!66477 (t!373306 testedP!294)) call!362625) (= lambda!257967 lambda!257933))))

(declare-fun bs!1203041 () Bool)

(assert (= bs!1203041 (and d!1667424 d!1667326)))

(assert (=> bs!1203041 (= (= (h!66477 (t!373306 testedP!294)) (h!66477 testedP!294)) (= lambda!257967 lambda!257950))))

(assert (=> d!1667424 true))

(assert (=> d!1667424 (= (derivationStepZipper!953 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) (h!66477 (t!373306 testedP!294))) (flatMap!437 (derivationStepZipper!953 baseZ!62 (h!66477 testedP!294)) lambda!257967))))

(declare-fun bs!1203042 () Bool)

(assert (= bs!1203042 d!1667424))

(assert (=> bs!1203042 m!6218462))

(declare-fun m!6219046 () Bool)

(assert (=> bs!1203042 m!6219046))

(assert (=> b!5167850 d!1667424))

(declare-fun b!5168005 () Bool)

(declare-fun res!2196757 () Bool)

(declare-fun e!3220149 () Bool)

(assert (=> b!5168005 (=> (not res!2196757) (not e!3220149))))

(assert (=> b!5168005 (= res!2196757 (= (head!11021 (tail!10130 (tail!10130 input!5817))) (head!11021 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168004 () Bool)

(declare-fun e!3220148 () Bool)

(assert (=> b!5168004 (= e!3220148 e!3220149)))

(declare-fun res!2196759 () Bool)

(assert (=> b!5168004 (=> (not res!2196759) (not e!3220149))))

(assert (=> b!5168004 (= res!2196759 (not ((_ is Nil!60029) (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168006 () Bool)

(assert (=> b!5168006 (= e!3220149 (isPrefix!5730 (tail!10130 (tail!10130 (tail!10130 input!5817))) (tail!10130 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun d!1667426 () Bool)

(declare-fun e!3220150 () Bool)

(assert (=> d!1667426 e!3220150))

(declare-fun res!2196760 () Bool)

(assert (=> d!1667426 (=> res!2196760 e!3220150)))

(declare-fun lt!2126316 () Bool)

(assert (=> d!1667426 (= res!2196760 (not lt!2126316))))

(assert (=> d!1667426 (= lt!2126316 e!3220148)))

(declare-fun res!2196758 () Bool)

(assert (=> d!1667426 (=> res!2196758 e!3220148)))

(assert (=> d!1667426 (= res!2196758 ((_ is Nil!60029) (tail!10130 (tail!10130 input!5817))))))

(assert (=> d!1667426 (= (isPrefix!5730 (tail!10130 (tail!10130 input!5817)) (tail!10130 (tail!10130 input!5817))) lt!2126316)))

(declare-fun b!5168007 () Bool)

(assert (=> b!5168007 (= e!3220150 (>= (size!39633 (tail!10130 (tail!10130 input!5817))) (size!39633 (tail!10130 (tail!10130 input!5817)))))))

(assert (= (and d!1667426 (not res!2196758)) b!5168004))

(assert (= (and b!5168004 res!2196759) b!5168005))

(assert (= (and b!5168005 res!2196757) b!5168006))

(assert (= (and d!1667426 (not res!2196760)) b!5168007))

(assert (=> b!5168005 m!6218792))

(declare-fun m!6219048 () Bool)

(assert (=> b!5168005 m!6219048))

(assert (=> b!5168005 m!6218792))

(assert (=> b!5168005 m!6219048))

(assert (=> b!5168006 m!6218792))

(declare-fun m!6219050 () Bool)

(assert (=> b!5168006 m!6219050))

(assert (=> b!5168006 m!6218792))

(assert (=> b!5168006 m!6219050))

(assert (=> b!5168006 m!6219050))

(assert (=> b!5168006 m!6219050))

(declare-fun m!6219052 () Bool)

(assert (=> b!5168006 m!6219052))

(assert (=> b!5168007 m!6218792))

(declare-fun m!6219054 () Bool)

(assert (=> b!5168007 m!6219054))

(assert (=> b!5168007 m!6218792))

(assert (=> b!5168007 m!6219054))

(assert (=> b!5167924 d!1667426))

(declare-fun d!1667428 () Bool)

(assert (=> d!1667428 (= (tail!10130 (tail!10130 input!5817)) (t!373306 (tail!10130 input!5817)))))

(assert (=> b!5167924 d!1667428))

(declare-fun d!1667430 () Bool)

(declare-fun lt!2126317 () Int)

(assert (=> d!1667430 (>= lt!2126317 0)))

(declare-fun e!3220151 () Int)

(assert (=> d!1667430 (= lt!2126317 e!3220151)))

(declare-fun c!889354 () Bool)

(assert (=> d!1667430 (= c!889354 ((_ is Nil!60029) lt!2126207))))

(assert (=> d!1667430 (= (size!39633 lt!2126207) lt!2126317)))

(declare-fun b!5168008 () Bool)

(assert (=> b!5168008 (= e!3220151 0)))

(declare-fun b!5168009 () Bool)

(assert (=> b!5168009 (= e!3220151 (+ 1 (size!39633 (t!373306 lt!2126207))))))

(assert (= (and d!1667430 c!889354) b!5168008))

(assert (= (and d!1667430 (not c!889354)) b!5168009))

(declare-fun m!6219056 () Bool)

(assert (=> b!5168009 m!6219056))

(assert (=> b!5167830 d!1667430))

(assert (=> b!5167830 d!1667166))

(declare-fun d!1667432 () Bool)

(declare-fun lt!2126318 () Int)

(assert (=> d!1667432 (>= lt!2126318 0)))

(declare-fun e!3220152 () Int)

(assert (=> d!1667432 (= lt!2126318 e!3220152)))

(declare-fun c!889355 () Bool)

(assert (=> d!1667432 (= c!889355 ((_ is Nil!60029) lt!2126038))))

(assert (=> d!1667432 (= (size!39633 lt!2126038) lt!2126318)))

(declare-fun b!5168010 () Bool)

(assert (=> b!5168010 (= e!3220152 0)))

(declare-fun b!5168011 () Bool)

(assert (=> b!5168011 (= e!3220152 (+ 1 (size!39633 (t!373306 lt!2126038))))))

(assert (= (and d!1667432 c!889355) b!5168010))

(assert (= (and d!1667432 (not c!889355)) b!5168011))

(declare-fun m!6219058 () Bool)

(assert (=> b!5168011 m!6219058))

(assert (=> b!5167830 d!1667432))

(declare-fun b!5168013 () Bool)

(declare-fun e!3220153 () List!60153)

(assert (=> b!5168013 (= e!3220153 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) lt!2126038)))))

(declare-fun e!3220154 () Bool)

(declare-fun lt!2126319 () List!60153)

(declare-fun b!5168015 () Bool)

(assert (=> b!5168015 (= e!3220154 (or (not (= lt!2126038 Nil!60029)) (= lt!2126319 (t!373306 testedP!294))))))

(declare-fun b!5168014 () Bool)

(declare-fun res!2196762 () Bool)

(assert (=> b!5168014 (=> (not res!2196762) (not e!3220154))))

(assert (=> b!5168014 (= res!2196762 (= (size!39633 lt!2126319) (+ (size!39633 (t!373306 testedP!294)) (size!39633 lt!2126038))))))

(declare-fun d!1667434 () Bool)

(assert (=> d!1667434 e!3220154))

(declare-fun res!2196761 () Bool)

(assert (=> d!1667434 (=> (not res!2196761) (not e!3220154))))

(assert (=> d!1667434 (= res!2196761 (= (content!10637 lt!2126319) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 lt!2126038))))))

(assert (=> d!1667434 (= lt!2126319 e!3220153)))

(declare-fun c!889356 () Bool)

(assert (=> d!1667434 (= c!889356 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667434 (= (++!13121 (t!373306 testedP!294) lt!2126038) lt!2126319)))

(declare-fun b!5168012 () Bool)

(assert (=> b!5168012 (= e!3220153 lt!2126038)))

(assert (= (and d!1667434 c!889356) b!5168012))

(assert (= (and d!1667434 (not c!889356)) b!5168013))

(assert (= (and d!1667434 res!2196761) b!5168014))

(assert (= (and b!5168014 res!2196762) b!5168015))

(declare-fun m!6219060 () Bool)

(assert (=> b!5168013 m!6219060))

(declare-fun m!6219062 () Bool)

(assert (=> b!5168014 m!6219062))

(assert (=> b!5168014 m!6218460))

(assert (=> b!5168014 m!6218734))

(declare-fun m!6219064 () Bool)

(assert (=> d!1667434 m!6219064))

(assert (=> d!1667434 m!6218746))

(assert (=> d!1667434 m!6218738))

(assert (=> b!5167829 d!1667434))

(declare-fun d!1667436 () Bool)

(declare-fun lt!2126320 () Int)

(assert (=> d!1667436 (>= lt!2126320 0)))

(declare-fun e!3220155 () Int)

(assert (=> d!1667436 (= lt!2126320 e!3220155)))

(declare-fun c!889357 () Bool)

(assert (=> d!1667436 (= c!889357 ((_ is Nil!60029) (t!373306 (tail!10130 lt!2125929))))))

(assert (=> d!1667436 (= (size!39633 (t!373306 (tail!10130 lt!2125929))) lt!2126320)))

(declare-fun b!5168016 () Bool)

(assert (=> b!5168016 (= e!3220155 0)))

(declare-fun b!5168017 () Bool)

(assert (=> b!5168017 (= e!3220155 (+ 1 (size!39633 (t!373306 (t!373306 (tail!10130 lt!2125929))))))))

(assert (= (and d!1667436 c!889357) b!5168016))

(assert (= (and d!1667436 (not c!889357)) b!5168017))

(declare-fun m!6219066 () Bool)

(assert (=> b!5168017 m!6219066))

(assert (=> b!5167809 d!1667436))

(declare-fun d!1667438 () Bool)

(declare-fun c!889358 () Bool)

(assert (=> d!1667438 (= c!889358 ((_ is Nil!60029) lt!2126308))))

(declare-fun e!3220156 () (InoxSet C!29464))

(assert (=> d!1667438 (= (content!10637 lt!2126308) e!3220156)))

(declare-fun b!5168018 () Bool)

(assert (=> b!5168018 (= e!3220156 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168019 () Bool)

(assert (=> b!5168019 (= e!3220156 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126308) true) (content!10637 (t!373306 lt!2126308))))))

(assert (= (and d!1667438 c!889358) b!5168018))

(assert (= (and d!1667438 (not c!889358)) b!5168019))

(declare-fun m!6219068 () Bool)

(assert (=> b!5168019 m!6219068))

(declare-fun m!6219070 () Bool)

(assert (=> b!5168019 m!6219070))

(assert (=> d!1667400 d!1667438))

(declare-fun d!1667440 () Bool)

(declare-fun c!889359 () Bool)

(assert (=> d!1667440 (= c!889359 ((_ is Nil!60029) (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))

(declare-fun e!3220157 () (InoxSet C!29464))

(assert (=> d!1667440 (= (content!10637 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) e!3220157)))

(declare-fun b!5168020 () Bool)

(assert (=> b!5168020 (= e!3220157 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168021 () Bool)

(assert (=> b!5168021 (= e!3220157 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) true) (content!10637 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))))

(assert (= (and d!1667440 c!889359) b!5168020))

(assert (= (and d!1667440 (not c!889359)) b!5168021))

(declare-fun m!6219072 () Bool)

(assert (=> b!5168021 m!6219072))

(declare-fun m!6219074 () Bool)

(assert (=> b!5168021 m!6219074))

(assert (=> d!1667400 d!1667440))

(declare-fun d!1667442 () Bool)

(declare-fun c!889360 () Bool)

(assert (=> d!1667442 (= c!889360 ((_ is Nil!60029) lt!2126122))))

(declare-fun e!3220158 () (InoxSet C!29464))

(assert (=> d!1667442 (= (content!10637 lt!2126122) e!3220158)))

(declare-fun b!5168022 () Bool)

(assert (=> b!5168022 (= e!3220158 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168023 () Bool)

(assert (=> b!5168023 (= e!3220158 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126122) true) (content!10637 (t!373306 lt!2126122))))))

(assert (= (and d!1667442 c!889360) b!5168022))

(assert (= (and d!1667442 (not c!889360)) b!5168023))

(declare-fun m!6219076 () Bool)

(assert (=> b!5168023 m!6219076))

(declare-fun m!6219078 () Bool)

(assert (=> b!5168023 m!6219078))

(assert (=> d!1667400 d!1667442))

(declare-fun b!5168025 () Bool)

(declare-fun e!3220159 () List!60153)

(assert (=> b!5168025 (= e!3220159 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) lt!2126304)))))

(declare-fun b!5168027 () Bool)

(declare-fun lt!2126321 () List!60153)

(declare-fun e!3220160 () Bool)

(assert (=> b!5168027 (= e!3220160 (or (not (= lt!2126304 Nil!60029)) (= lt!2126321 (t!373306 testedP!294))))))

(declare-fun b!5168026 () Bool)

(declare-fun res!2196764 () Bool)

(assert (=> b!5168026 (=> (not res!2196764) (not e!3220160))))

(assert (=> b!5168026 (= res!2196764 (= (size!39633 lt!2126321) (+ (size!39633 (t!373306 testedP!294)) (size!39633 lt!2126304))))))

(declare-fun d!1667444 () Bool)

(assert (=> d!1667444 e!3220160))

(declare-fun res!2196763 () Bool)

(assert (=> d!1667444 (=> (not res!2196763) (not e!3220160))))

(assert (=> d!1667444 (= res!2196763 (= (content!10637 lt!2126321) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 lt!2126304))))))

(assert (=> d!1667444 (= lt!2126321 e!3220159)))

(declare-fun c!889361 () Bool)

(assert (=> d!1667444 (= c!889361 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667444 (= (++!13121 (t!373306 testedP!294) lt!2126304) lt!2126321)))

(declare-fun b!5168024 () Bool)

(assert (=> b!5168024 (= e!3220159 lt!2126304)))

(assert (= (and d!1667444 c!889361) b!5168024))

(assert (= (and d!1667444 (not c!889361)) b!5168025))

(assert (= (and d!1667444 res!2196763) b!5168026))

(assert (= (and b!5168026 res!2196764) b!5168027))

(declare-fun m!6219080 () Bool)

(assert (=> b!5168025 m!6219080))

(declare-fun m!6219082 () Bool)

(assert (=> b!5168026 m!6219082))

(assert (=> b!5168026 m!6218460))

(declare-fun m!6219084 () Bool)

(assert (=> b!5168026 m!6219084))

(declare-fun m!6219086 () Bool)

(assert (=> d!1667444 m!6219086))

(assert (=> d!1667444 m!6218746))

(declare-fun m!6219088 () Bool)

(assert (=> d!1667444 m!6219088))

(assert (=> d!1667382 d!1667444))

(assert (=> d!1667382 d!1667412))

(assert (=> d!1667382 d!1667296))

(declare-fun d!1667446 () Bool)

(assert (=> d!1667446 (= (head!11021 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) (h!66477 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(assert (=> b!5167947 d!1667446))

(assert (=> b!5167947 d!1667304))

(declare-fun d!1667448 () Bool)

(declare-fun c!889362 () Bool)

(assert (=> d!1667448 (= c!889362 ((_ is Nil!60029) (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))

(declare-fun e!3220161 () (InoxSet C!29464))

(assert (=> d!1667448 (= (content!10637 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))) e!3220161)))

(declare-fun b!5168028 () Bool)

(assert (=> b!5168028 (= e!3220161 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168029 () Bool)

(assert (=> b!5168029 (= e!3220161 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))) true) (content!10637 (t!373306 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))))

(assert (= (and d!1667448 c!889362) b!5168028))

(assert (= (and d!1667448 (not c!889362)) b!5168029))

(declare-fun m!6219090 () Bool)

(assert (=> b!5168029 m!6219090))

(declare-fun m!6219092 () Bool)

(assert (=> b!5168029 m!6219092))

(assert (=> b!5167912 d!1667448))

(declare-fun d!1667450 () Bool)

(declare-fun lt!2126322 () Int)

(assert (=> d!1667450 (>= lt!2126322 0)))

(declare-fun e!3220162 () Int)

(assert (=> d!1667450 (= lt!2126322 e!3220162)))

(declare-fun c!889363 () Bool)

(assert (=> d!1667450 (= c!889363 ((_ is Nil!60029) (t!373306 (t!373306 input!5817))))))

(assert (=> d!1667450 (= (size!39633 (t!373306 (t!373306 input!5817))) lt!2126322)))

(declare-fun b!5168030 () Bool)

(assert (=> b!5168030 (= e!3220162 0)))

(declare-fun b!5168031 () Bool)

(assert (=> b!5168031 (= e!3220162 (+ 1 (size!39633 (t!373306 (t!373306 (t!373306 input!5817))))))))

(assert (= (and d!1667450 c!889363) b!5168030))

(assert (= (and d!1667450 (not c!889363)) b!5168031))

(declare-fun m!6219094 () Bool)

(assert (=> b!5168031 m!6219094))

(assert (=> b!5167819 d!1667450))

(declare-fun b!5168033 () Bool)

(declare-fun e!3220163 () List!60153)

(assert (=> b!5168033 (= e!3220163 (Cons!60029 (h!66477 lt!2126132) (++!13121 (t!373306 lt!2126132) (Cons!60029 lt!2126246 Nil!60029))))))

(declare-fun e!3220164 () Bool)

(declare-fun lt!2126323 () List!60153)

(declare-fun b!5168035 () Bool)

(assert (=> b!5168035 (= e!3220164 (or (not (= (Cons!60029 lt!2126246 Nil!60029) Nil!60029)) (= lt!2126323 lt!2126132)))))

(declare-fun b!5168034 () Bool)

(declare-fun res!2196766 () Bool)

(assert (=> b!5168034 (=> (not res!2196766) (not e!3220164))))

(assert (=> b!5168034 (= res!2196766 (= (size!39633 lt!2126323) (+ (size!39633 lt!2126132) (size!39633 (Cons!60029 lt!2126246 Nil!60029)))))))

(declare-fun d!1667452 () Bool)

(assert (=> d!1667452 e!3220164))

(declare-fun res!2196765 () Bool)

(assert (=> d!1667452 (=> (not res!2196765) (not e!3220164))))

(assert (=> d!1667452 (= res!2196765 (= (content!10637 lt!2126323) ((_ map or) (content!10637 lt!2126132) (content!10637 (Cons!60029 lt!2126246 Nil!60029)))))))

(assert (=> d!1667452 (= lt!2126323 e!3220163)))

(declare-fun c!889364 () Bool)

(assert (=> d!1667452 (= c!889364 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667452 (= (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029)) lt!2126323)))

(declare-fun b!5168032 () Bool)

(assert (=> b!5168032 (= e!3220163 (Cons!60029 lt!2126246 Nil!60029))))

(assert (= (and d!1667452 c!889364) b!5168032))

(assert (= (and d!1667452 (not c!889364)) b!5168033))

(assert (= (and d!1667452 res!2196765) b!5168034))

(assert (= (and b!5168034 res!2196766) b!5168035))

(declare-fun m!6219096 () Bool)

(assert (=> b!5168033 m!6219096))

(declare-fun m!6219098 () Bool)

(assert (=> b!5168034 m!6219098))

(assert (=> b!5168034 m!6218830))

(declare-fun m!6219100 () Bool)

(assert (=> b!5168034 m!6219100))

(declare-fun m!6219102 () Bool)

(assert (=> d!1667452 m!6219102))

(declare-fun m!6219104 () Bool)

(assert (=> d!1667452 m!6219104))

(declare-fun m!6219106 () Bool)

(assert (=> d!1667452 m!6219106))

(assert (=> b!5167865 d!1667452))

(declare-fun d!1667454 () Bool)

(assert (=> d!1667454 (= (tail!10130 call!362627) (t!373306 call!362627))))

(assert (=> b!5167865 d!1667454))

(declare-fun d!1667456 () Bool)

(assert (=> d!1667456 (= (head!11021 call!362627) (h!66477 call!362627))))

(assert (=> b!5167865 d!1667456))

(declare-fun d!1667458 () Bool)

(assert (=> d!1667458 (<= (size!39633 lt!2126132) (size!39633 input!5817))))

(declare-fun lt!2126324 () Unit!151532)

(assert (=> d!1667458 (= lt!2126324 (choose!38244 lt!2126132 input!5817))))

(assert (=> d!1667458 (isPrefix!5730 lt!2126132 input!5817)))

(assert (=> d!1667458 (= (lemmaIsPrefixThenSmallerEqSize!893 lt!2126132 input!5817) lt!2126324)))

(declare-fun bs!1203043 () Bool)

(assert (= bs!1203043 d!1667458))

(assert (=> bs!1203043 m!6218830))

(assert (=> bs!1203043 m!6218236))

(declare-fun m!6219108 () Bool)

(assert (=> bs!1203043 m!6219108))

(declare-fun m!6219110 () Bool)

(assert (=> bs!1203043 m!6219110))

(assert (=> b!5167865 d!1667458))

(declare-fun d!1667460 () Bool)

(assert (=> d!1667460 (isPrefix!5730 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)) input!5817)))

(declare-fun lt!2126325 () Unit!151532)

(assert (=> d!1667460 (= lt!2126325 (choose!38242 lt!2126132 input!5817))))

(assert (=> d!1667460 (isPrefix!5730 lt!2126132 input!5817)))

(assert (=> d!1667460 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1043 lt!2126132 input!5817) lt!2126325)))

(declare-fun bs!1203044 () Bool)

(assert (= bs!1203044 d!1667460))

(assert (=> bs!1203044 m!6218814))

(assert (=> bs!1203044 m!6218846))

(assert (=> bs!1203044 m!6218860))

(assert (=> bs!1203044 m!6218860))

(assert (=> bs!1203044 m!6218862))

(declare-fun m!6219112 () Bool)

(assert (=> bs!1203044 m!6219112))

(assert (=> bs!1203044 m!6218814))

(assert (=> bs!1203044 m!6219110))

(assert (=> b!5167865 d!1667460))

(declare-fun b!5168037 () Bool)

(declare-fun e!3220165 () List!60153)

(assert (=> b!5168037 (= e!3220165 (Cons!60029 (h!66477 lt!2126132) (++!13121 (t!373306 lt!2126132) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029))))))

(declare-fun b!5168039 () Bool)

(declare-fun e!3220166 () Bool)

(declare-fun lt!2126326 () List!60153)

(assert (=> b!5168039 (= e!3220166 (or (not (= (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029) Nil!60029)) (= lt!2126326 lt!2126132)))))

(declare-fun b!5168038 () Bool)

(declare-fun res!2196768 () Bool)

(assert (=> b!5168038 (=> (not res!2196768) (not e!3220166))))

(assert (=> b!5168038 (= res!2196768 (= (size!39633 lt!2126326) (+ (size!39633 lt!2126132) (size!39633 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)))))))

(declare-fun d!1667462 () Bool)

(assert (=> d!1667462 e!3220166))

(declare-fun res!2196767 () Bool)

(assert (=> d!1667462 (=> (not res!2196767) (not e!3220166))))

(assert (=> d!1667462 (= res!2196767 (= (content!10637 lt!2126326) ((_ map or) (content!10637 lt!2126132) (content!10637 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)))))))

(assert (=> d!1667462 (= lt!2126326 e!3220165)))

(declare-fun c!889365 () Bool)

(assert (=> d!1667462 (= c!889365 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667462 (= (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)) lt!2126326)))

(declare-fun b!5168036 () Bool)

(assert (=> b!5168036 (= e!3220165 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029))))

(assert (= (and d!1667462 c!889365) b!5168036))

(assert (= (and d!1667462 (not c!889365)) b!5168037))

(assert (= (and d!1667462 res!2196767) b!5168038))

(assert (= (and b!5168038 res!2196768) b!5168039))

(declare-fun m!6219114 () Bool)

(assert (=> b!5168037 m!6219114))

(declare-fun m!6219116 () Bool)

(assert (=> b!5168038 m!6219116))

(assert (=> b!5168038 m!6218830))

(declare-fun m!6219118 () Bool)

(assert (=> b!5168038 m!6219118))

(declare-fun m!6219120 () Bool)

(assert (=> d!1667462 m!6219120))

(assert (=> d!1667462 m!6219104))

(declare-fun m!6219122 () Bool)

(assert (=> d!1667462 m!6219122))

(assert (=> b!5167865 d!1667462))

(declare-fun b!5168041 () Bool)

(declare-fun res!2196769 () Bool)

(declare-fun e!3220168 () Bool)

(assert (=> b!5168041 (=> (not res!2196769) (not e!3220168))))

(assert (=> b!5168041 (= res!2196769 (= (head!11021 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029))) (head!11021 input!5817)))))

(declare-fun b!5168040 () Bool)

(declare-fun e!3220167 () Bool)

(assert (=> b!5168040 (= e!3220167 e!3220168)))

(declare-fun res!2196771 () Bool)

(assert (=> b!5168040 (=> (not res!2196771) (not e!3220168))))

(assert (=> b!5168040 (= res!2196771 (not ((_ is Nil!60029) input!5817)))))

(declare-fun b!5168042 () Bool)

(assert (=> b!5168042 (= e!3220168 (isPrefix!5730 (tail!10130 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029))) (tail!10130 input!5817)))))

(declare-fun d!1667464 () Bool)

(declare-fun e!3220169 () Bool)

(assert (=> d!1667464 e!3220169))

(declare-fun res!2196772 () Bool)

(assert (=> d!1667464 (=> res!2196772 e!3220169)))

(declare-fun lt!2126327 () Bool)

(assert (=> d!1667464 (= res!2196772 (not lt!2126327))))

(assert (=> d!1667464 (= lt!2126327 e!3220167)))

(declare-fun res!2196770 () Bool)

(assert (=> d!1667464 (=> res!2196770 e!3220167)))

(assert (=> d!1667464 (= res!2196770 ((_ is Nil!60029) (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029))))))

(assert (=> d!1667464 (= (isPrefix!5730 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)) input!5817) lt!2126327)))

(declare-fun b!5168043 () Bool)

(assert (=> b!5168043 (= e!3220169 (>= (size!39633 input!5817) (size!39633 (++!13121 lt!2126132 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126132)) Nil!60029)))))))

(assert (= (and d!1667464 (not res!2196770)) b!5168040))

(assert (= (and b!5168040 res!2196771) b!5168041))

(assert (= (and b!5168041 res!2196769) b!5168042))

(assert (= (and d!1667464 (not res!2196772)) b!5168043))

(assert (=> b!5168041 m!6218860))

(declare-fun m!6219124 () Bool)

(assert (=> b!5168041 m!6219124))

(assert (=> b!5168041 m!6218298))

(assert (=> b!5168042 m!6218860))

(declare-fun m!6219126 () Bool)

(assert (=> b!5168042 m!6219126))

(assert (=> b!5168042 m!6218302))

(assert (=> b!5168042 m!6219126))

(assert (=> b!5168042 m!6218302))

(declare-fun m!6219128 () Bool)

(assert (=> b!5168042 m!6219128))

(assert (=> b!5168043 m!6218236))

(assert (=> b!5168043 m!6218860))

(declare-fun m!6219130 () Bool)

(assert (=> b!5168043 m!6219130))

(assert (=> b!5167865 d!1667464))

(declare-fun d!1667466 () Bool)

(assert (=> d!1667466 (= (++!13121 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029)) lt!2126249) input!5817)))

(declare-fun lt!2126328 () Unit!151532)

(assert (=> d!1667466 (= lt!2126328 (choose!38256 lt!2126132 lt!2126246 lt!2126249 input!5817))))

(assert (=> d!1667466 (= (++!13121 lt!2126132 (Cons!60029 lt!2126246 lt!2126249)) input!5817)))

(assert (=> d!1667466 (= (lemmaMoveElementToOtherListKeepsConcatEq!1568 lt!2126132 lt!2126246 lt!2126249 input!5817) lt!2126328)))

(declare-fun bs!1203045 () Bool)

(assert (= bs!1203045 d!1667466))

(assert (=> bs!1203045 m!6218848))

(assert (=> bs!1203045 m!6218848))

(assert (=> bs!1203045 m!6218868))

(declare-fun m!6219132 () Bool)

(assert (=> bs!1203045 m!6219132))

(declare-fun m!6219134 () Bool)

(assert (=> bs!1203045 m!6219134))

(assert (=> b!5167865 d!1667466))

(declare-fun d!1667468 () Bool)

(assert (=> d!1667468 (= (head!11021 (getSuffix!3380 input!5817 lt!2126132)) (h!66477 (getSuffix!3380 input!5817 lt!2126132)))))

(assert (=> b!5167865 d!1667468))

(declare-fun b!5168045 () Bool)

(declare-fun e!3220170 () List!60153)

(assert (=> b!5168045 (= e!3220170 (Cons!60029 (h!66477 lt!2126132) (++!13121 (t!373306 lt!2126132) (Cons!60029 (head!11021 call!362627) Nil!60029))))))

(declare-fun b!5168047 () Bool)

(declare-fun e!3220171 () Bool)

(declare-fun lt!2126329 () List!60153)

(assert (=> b!5168047 (= e!3220171 (or (not (= (Cons!60029 (head!11021 call!362627) Nil!60029) Nil!60029)) (= lt!2126329 lt!2126132)))))

(declare-fun b!5168046 () Bool)

(declare-fun res!2196774 () Bool)

(assert (=> b!5168046 (=> (not res!2196774) (not e!3220171))))

(assert (=> b!5168046 (= res!2196774 (= (size!39633 lt!2126329) (+ (size!39633 lt!2126132) (size!39633 (Cons!60029 (head!11021 call!362627) Nil!60029)))))))

(declare-fun d!1667470 () Bool)

(assert (=> d!1667470 e!3220171))

(declare-fun res!2196773 () Bool)

(assert (=> d!1667470 (=> (not res!2196773) (not e!3220171))))

(assert (=> d!1667470 (= res!2196773 (= (content!10637 lt!2126329) ((_ map or) (content!10637 lt!2126132) (content!10637 (Cons!60029 (head!11021 call!362627) Nil!60029)))))))

(assert (=> d!1667470 (= lt!2126329 e!3220170)))

(declare-fun c!889366 () Bool)

(assert (=> d!1667470 (= c!889366 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667470 (= (++!13121 lt!2126132 (Cons!60029 (head!11021 call!362627) Nil!60029)) lt!2126329)))

(declare-fun b!5168044 () Bool)

(assert (=> b!5168044 (= e!3220170 (Cons!60029 (head!11021 call!362627) Nil!60029))))

(assert (= (and d!1667470 c!889366) b!5168044))

(assert (= (and d!1667470 (not c!889366)) b!5168045))

(assert (= (and d!1667470 res!2196773) b!5168046))

(assert (= (and b!5168046 res!2196774) b!5168047))

(declare-fun m!6219136 () Bool)

(assert (=> b!5168045 m!6219136))

(declare-fun m!6219138 () Bool)

(assert (=> b!5168046 m!6219138))

(assert (=> b!5168046 m!6218830))

(declare-fun m!6219140 () Bool)

(assert (=> b!5168046 m!6219140))

(declare-fun m!6219142 () Bool)

(assert (=> d!1667470 m!6219142))

(assert (=> d!1667470 m!6219104))

(declare-fun m!6219144 () Bool)

(assert (=> d!1667470 m!6219144))

(assert (=> b!5167865 d!1667470))

(assert (=> b!5167865 d!1667138))

(declare-fun e!3220172 () List!60153)

(declare-fun b!5168049 () Bool)

(assert (=> b!5168049 (= e!3220172 (Cons!60029 (h!66477 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029))) (++!13121 (t!373306 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029))) lt!2126249)))))

(declare-fun lt!2126330 () List!60153)

(declare-fun b!5168051 () Bool)

(declare-fun e!3220173 () Bool)

(assert (=> b!5168051 (= e!3220173 (or (not (= lt!2126249 Nil!60029)) (= lt!2126330 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029)))))))

(declare-fun b!5168050 () Bool)

(declare-fun res!2196776 () Bool)

(assert (=> b!5168050 (=> (not res!2196776) (not e!3220173))))

(assert (=> b!5168050 (= res!2196776 (= (size!39633 lt!2126330) (+ (size!39633 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029))) (size!39633 lt!2126249))))))

(declare-fun d!1667472 () Bool)

(assert (=> d!1667472 e!3220173))

(declare-fun res!2196775 () Bool)

(assert (=> d!1667472 (=> (not res!2196775) (not e!3220173))))

(assert (=> d!1667472 (= res!2196775 (= (content!10637 lt!2126330) ((_ map or) (content!10637 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029))) (content!10637 lt!2126249))))))

(assert (=> d!1667472 (= lt!2126330 e!3220172)))

(declare-fun c!889367 () Bool)

(assert (=> d!1667472 (= c!889367 ((_ is Nil!60029) (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029))))))

(assert (=> d!1667472 (= (++!13121 (++!13121 lt!2126132 (Cons!60029 lt!2126246 Nil!60029)) lt!2126249) lt!2126330)))

(declare-fun b!5168048 () Bool)

(assert (=> b!5168048 (= e!3220172 lt!2126249)))

(assert (= (and d!1667472 c!889367) b!5168048))

(assert (= (and d!1667472 (not c!889367)) b!5168049))

(assert (= (and d!1667472 res!2196775) b!5168050))

(assert (= (and b!5168050 res!2196776) b!5168051))

(declare-fun m!6219146 () Bool)

(assert (=> b!5168049 m!6219146))

(declare-fun m!6219148 () Bool)

(assert (=> b!5168050 m!6219148))

(assert (=> b!5168050 m!6218848))

(declare-fun m!6219150 () Bool)

(assert (=> b!5168050 m!6219150))

(declare-fun m!6219152 () Bool)

(assert (=> b!5168050 m!6219152))

(declare-fun m!6219154 () Bool)

(assert (=> d!1667472 m!6219154))

(assert (=> d!1667472 m!6218848))

(declare-fun m!6219156 () Bool)

(assert (=> d!1667472 m!6219156))

(declare-fun m!6219158 () Bool)

(assert (=> d!1667472 m!6219158))

(assert (=> b!5167865 d!1667472))

(declare-fun d!1667474 () Bool)

(declare-fun lt!2126331 () List!60153)

(assert (=> d!1667474 (= (++!13121 lt!2126132 lt!2126331) input!5817)))

(declare-fun e!3220174 () List!60153)

(assert (=> d!1667474 (= lt!2126331 e!3220174)))

(declare-fun c!889368 () Bool)

(assert (=> d!1667474 (= c!889368 ((_ is Cons!60029) lt!2126132))))

(assert (=> d!1667474 (>= (size!39633 input!5817) (size!39633 lt!2126132))))

(assert (=> d!1667474 (= (getSuffix!3380 input!5817 lt!2126132) lt!2126331)))

(declare-fun b!5168052 () Bool)

(assert (=> b!5168052 (= e!3220174 (getSuffix!3380 (tail!10130 input!5817) (t!373306 lt!2126132)))))

(declare-fun b!5168053 () Bool)

(assert (=> b!5168053 (= e!3220174 input!5817)))

(assert (= (and d!1667474 c!889368) b!5168052))

(assert (= (and d!1667474 (not c!889368)) b!5168053))

(declare-fun m!6219160 () Bool)

(assert (=> d!1667474 m!6219160))

(assert (=> d!1667474 m!6218236))

(assert (=> d!1667474 m!6218830))

(assert (=> b!5168052 m!6218302))

(assert (=> b!5168052 m!6218302))

(declare-fun m!6219162 () Bool)

(assert (=> b!5168052 m!6219162))

(assert (=> b!5167865 d!1667474))

(declare-fun d!1667476 () Bool)

(declare-fun lt!2126332 () Int)

(assert (=> d!1667476 (>= lt!2126332 0)))

(declare-fun e!3220175 () Int)

(assert (=> d!1667476 (= lt!2126332 e!3220175)))

(declare-fun c!889369 () Bool)

(assert (=> d!1667476 (= c!889369 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667476 (= (size!39633 lt!2126132) lt!2126332)))

(declare-fun b!5168054 () Bool)

(assert (=> b!5168054 (= e!3220175 0)))

(declare-fun b!5168055 () Bool)

(assert (=> b!5168055 (= e!3220175 (+ 1 (size!39633 (t!373306 lt!2126132))))))

(assert (= (and d!1667476 c!889369) b!5168054))

(assert (= (and d!1667476 (not c!889369)) b!5168055))

(declare-fun m!6219164 () Bool)

(assert (=> b!5168055 m!6219164))

(assert (=> b!5167865 d!1667476))

(declare-fun d!1667478 () Bool)

(declare-fun res!2196777 () Bool)

(declare-fun e!3220176 () Bool)

(assert (=> d!1667478 (=> res!2196777 e!3220176)))

(assert (=> d!1667478 (= res!2196777 ((_ is Nil!60030) (exprs!4481 setElem!31835)))))

(assert (=> d!1667478 (= (forall!14116 (exprs!4481 setElem!31835) lambda!257929) e!3220176)))

(declare-fun b!5168056 () Bool)

(declare-fun e!3220177 () Bool)

(assert (=> b!5168056 (= e!3220176 e!3220177)))

(declare-fun res!2196778 () Bool)

(assert (=> b!5168056 (=> (not res!2196778) (not e!3220177))))

(assert (=> b!5168056 (= res!2196778 (dynLambda!23864 lambda!257929 (h!66478 (exprs!4481 setElem!31835))))))

(declare-fun b!5168057 () Bool)

(assert (=> b!5168057 (= e!3220177 (forall!14116 (t!373307 (exprs!4481 setElem!31835)) lambda!257929))))

(assert (= (and d!1667478 (not res!2196777)) b!5168056))

(assert (= (and b!5168056 res!2196778) b!5168057))

(declare-fun b_lambda!200817 () Bool)

(assert (=> (not b_lambda!200817) (not b!5168056)))

(declare-fun m!6219166 () Bool)

(assert (=> b!5168056 m!6219166))

(declare-fun m!6219168 () Bool)

(assert (=> b!5168057 m!6219168))

(assert (=> d!1667274 d!1667478))

(declare-fun d!1667480 () Bool)

(declare-fun lt!2126333 () List!60153)

(assert (=> d!1667480 (= (++!13121 (t!373306 (t!373306 testedP!294)) lt!2126333) (tail!10130 (tail!10130 input!5817)))))

(declare-fun e!3220178 () List!60153)

(assert (=> d!1667480 (= lt!2126333 e!3220178)))

(declare-fun c!889370 () Bool)

(assert (=> d!1667480 (= c!889370 ((_ is Cons!60029) (t!373306 (t!373306 testedP!294))))))

(assert (=> d!1667480 (>= (size!39633 (tail!10130 (tail!10130 input!5817))) (size!39633 (t!373306 (t!373306 testedP!294))))))

(assert (=> d!1667480 (= (getSuffix!3380 (tail!10130 (tail!10130 input!5817)) (t!373306 (t!373306 testedP!294))) lt!2126333)))

(declare-fun b!5168058 () Bool)

(assert (=> b!5168058 (= e!3220178 (getSuffix!3380 (tail!10130 (tail!10130 (tail!10130 input!5817))) (t!373306 (t!373306 (t!373306 testedP!294)))))))

(declare-fun b!5168059 () Bool)

(assert (=> b!5168059 (= e!3220178 (tail!10130 (tail!10130 input!5817)))))

(assert (= (and d!1667480 c!889370) b!5168058))

(assert (= (and d!1667480 (not c!889370)) b!5168059))

(declare-fun m!6219170 () Bool)

(assert (=> d!1667480 m!6219170))

(assert (=> d!1667480 m!6218792))

(assert (=> d!1667480 m!6219054))

(assert (=> d!1667480 m!6218722))

(assert (=> b!5168058 m!6218792))

(assert (=> b!5168058 m!6219050))

(assert (=> b!5168058 m!6219050))

(declare-fun m!6219172 () Bool)

(assert (=> b!5168058 m!6219172))

(assert (=> b!5167944 d!1667480))

(assert (=> b!5167944 d!1667428))

(assert (=> b!5167949 d!1667138))

(declare-fun d!1667482 () Bool)

(declare-fun lt!2126334 () Int)

(assert (=> d!1667482 (>= lt!2126334 0)))

(declare-fun e!3220179 () Int)

(assert (=> d!1667482 (= lt!2126334 e!3220179)))

(declare-fun c!889371 () Bool)

(assert (=> d!1667482 (= c!889371 ((_ is Nil!60029) (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(assert (=> d!1667482 (= (size!39633 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) lt!2126334)))

(declare-fun b!5168060 () Bool)

(assert (=> b!5168060 (= e!3220179 0)))

(declare-fun b!5168061 () Bool)

(assert (=> b!5168061 (= e!3220179 (+ 1 (size!39633 (t!373306 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))))

(assert (= (and d!1667482 c!889371) b!5168060))

(assert (= (and d!1667482 (not c!889371)) b!5168061))

(declare-fun m!6219174 () Bool)

(assert (=> b!5168061 m!6219174))

(assert (=> b!5167949 d!1667482))

(declare-fun d!1667484 () Bool)

(declare-fun lt!2126335 () Int)

(assert (=> d!1667484 (>= lt!2126335 0)))

(declare-fun e!3220180 () Int)

(assert (=> d!1667484 (= lt!2126335 e!3220180)))

(declare-fun c!889372 () Bool)

(assert (=> d!1667484 (= c!889372 ((_ is Nil!60029) (t!373306 (_1!35177 lt!2126109))))))

(assert (=> d!1667484 (= (size!39633 (t!373306 (_1!35177 lt!2126109))) lt!2126335)))

(declare-fun b!5168062 () Bool)

(assert (=> b!5168062 (= e!3220180 0)))

(declare-fun b!5168063 () Bool)

(assert (=> b!5168063 (= e!3220180 (+ 1 (size!39633 (t!373306 (t!373306 (_1!35177 lt!2126109))))))))

(assert (= (and d!1667484 c!889372) b!5168062))

(assert (= (and d!1667484 (not c!889372)) b!5168063))

(declare-fun m!6219176 () Bool)

(assert (=> b!5168063 m!6219176))

(assert (=> b!5167921 d!1667484))

(declare-fun d!1667486 () Bool)

(declare-fun c!889373 () Bool)

(assert (=> d!1667486 (= c!889373 ((_ is Nil!60029) (t!373306 lt!2125923)))))

(declare-fun e!3220181 () (InoxSet C!29464))

(assert (=> d!1667486 (= (content!10637 (t!373306 lt!2125923)) e!3220181)))

(declare-fun b!5168064 () Bool)

(assert (=> b!5168064 (= e!3220181 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168065 () Bool)

(assert (=> b!5168065 (= e!3220181 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 lt!2125923)) true) (content!10637 (t!373306 (t!373306 lt!2125923)))))))

(assert (= (and d!1667486 c!889373) b!5168064))

(assert (= (and d!1667486 (not c!889373)) b!5168065))

(declare-fun m!6219178 () Bool)

(assert (=> b!5168065 m!6219178))

(declare-fun m!6219180 () Bool)

(assert (=> b!5168065 m!6219180))

(assert (=> b!5167917 d!1667486))

(assert (=> d!1667404 d!1667400))

(assert (=> d!1667404 d!1667402))

(declare-fun d!1667488 () Bool)

(assert (=> d!1667488 (= (++!13121 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)) lt!2126122) input!5817)))

(assert (=> d!1667488 true))

(declare-fun _$68!858 () Unit!151532)

(assert (=> d!1667488 (= (choose!38256 testedP!294 lt!2126119 lt!2126122 input!5817) _$68!858)))

(declare-fun bs!1203046 () Bool)

(assert (= bs!1203046 d!1667488))

(assert (=> bs!1203046 m!6218450))

(assert (=> bs!1203046 m!6218450))

(assert (=> bs!1203046 m!6218454))

(assert (=> d!1667404 d!1667488))

(declare-fun e!3220182 () List!60153)

(declare-fun b!5168067 () Bool)

(assert (=> b!5168067 (= e!3220182 (Cons!60029 (h!66477 testedP!294) (++!13121 (t!373306 testedP!294) (Cons!60029 lt!2126119 lt!2126122))))))

(declare-fun lt!2126336 () List!60153)

(declare-fun b!5168069 () Bool)

(declare-fun e!3220183 () Bool)

(assert (=> b!5168069 (= e!3220183 (or (not (= (Cons!60029 lt!2126119 lt!2126122) Nil!60029)) (= lt!2126336 testedP!294)))))

(declare-fun b!5168068 () Bool)

(declare-fun res!2196780 () Bool)

(assert (=> b!5168068 (=> (not res!2196780) (not e!3220183))))

(assert (=> b!5168068 (= res!2196780 (= (size!39633 lt!2126336) (+ (size!39633 testedP!294) (size!39633 (Cons!60029 lt!2126119 lt!2126122)))))))

(declare-fun d!1667490 () Bool)

(assert (=> d!1667490 e!3220183))

(declare-fun res!2196779 () Bool)

(assert (=> d!1667490 (=> (not res!2196779) (not e!3220183))))

(assert (=> d!1667490 (= res!2196779 (= (content!10637 lt!2126336) ((_ map or) (content!10637 testedP!294) (content!10637 (Cons!60029 lt!2126119 lt!2126122)))))))

(assert (=> d!1667490 (= lt!2126336 e!3220182)))

(declare-fun c!889374 () Bool)

(assert (=> d!1667490 (= c!889374 ((_ is Nil!60029) testedP!294))))

(assert (=> d!1667490 (= (++!13121 testedP!294 (Cons!60029 lt!2126119 lt!2126122)) lt!2126336)))

(declare-fun b!5168066 () Bool)

(assert (=> b!5168066 (= e!3220182 (Cons!60029 lt!2126119 lt!2126122))))

(assert (= (and d!1667490 c!889374) b!5168066))

(assert (= (and d!1667490 (not c!889374)) b!5168067))

(assert (= (and d!1667490 res!2196779) b!5168068))

(assert (= (and b!5168068 res!2196780) b!5168069))

(declare-fun m!6219182 () Bool)

(assert (=> b!5168067 m!6219182))

(declare-fun m!6219184 () Bool)

(assert (=> b!5168068 m!6219184))

(assert (=> b!5168068 m!6218234))

(declare-fun m!6219186 () Bool)

(assert (=> b!5168068 m!6219186))

(declare-fun m!6219188 () Bool)

(assert (=> d!1667490 m!6219188))

(assert (=> d!1667490 m!6218292))

(declare-fun m!6219190 () Bool)

(assert (=> d!1667490 m!6219190))

(assert (=> d!1667404 d!1667490))

(declare-fun d!1667492 () Bool)

(declare-fun c!889375 () Bool)

(assert (=> d!1667492 (= c!889375 ((_ is Nil!60029) (t!373306 testedP!294)))))

(declare-fun e!3220184 () (InoxSet C!29464))

(assert (=> d!1667492 (= (content!10637 (t!373306 testedP!294)) e!3220184)))

(declare-fun b!5168070 () Bool)

(assert (=> b!5168070 (= e!3220184 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168071 () Bool)

(assert (=> b!5168071 (= e!3220184 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 testedP!294)) true) (content!10637 (t!373306 (t!373306 testedP!294)))))))

(assert (= (and d!1667492 c!889375) b!5168070))

(assert (= (and d!1667492 (not c!889375)) b!5168071))

(declare-fun m!6219192 () Bool)

(assert (=> b!5168071 m!6219192))

(declare-fun m!6219194 () Bool)

(assert (=> b!5168071 m!6219194))

(assert (=> b!5167908 d!1667492))

(declare-fun bs!1203047 () Bool)

(declare-fun d!1667494 () Bool)

(assert (= bs!1203047 (and d!1667494 d!1667184)))

(declare-fun lambda!257968 () Int)

(assert (=> bs!1203047 (= lambda!257968 lambda!257923)))

(declare-fun bs!1203048 () Bool)

(assert (= bs!1203048 (and d!1667494 d!1667134)))

(assert (=> bs!1203048 (= lambda!257968 lambda!257918)))

(declare-fun bs!1203049 () Bool)

(assert (= bs!1203049 (and d!1667494 d!1667418)))

(assert (=> bs!1203049 (= lambda!257968 lambda!257966)))

(declare-fun bs!1203050 () Bool)

(assert (= bs!1203050 (and d!1667494 d!1667274)))

(assert (=> bs!1203050 (= lambda!257968 lambda!257929)))

(declare-fun bs!1203051 () Bool)

(assert (= bs!1203051 (and d!1667494 d!1667318)))

(assert (=> bs!1203051 (= lambda!257968 lambda!257949)))

(assert (=> d!1667494 (= (inv!79739 setElem!31839) (forall!14116 (exprs!4481 setElem!31839) lambda!257968))))

(declare-fun bs!1203052 () Bool)

(assert (= bs!1203052 d!1667494))

(declare-fun m!6219196 () Bool)

(assert (=> bs!1203052 m!6219196))

(assert (=> setNonEmpty!31839 d!1667494))

(declare-fun d!1667496 () Bool)

(declare-fun c!889376 () Bool)

(assert (=> d!1667496 (= c!889376 ((_ is Nil!60029) lt!2126198))))

(declare-fun e!3220185 () (InoxSet C!29464))

(assert (=> d!1667496 (= (content!10637 lt!2126198) e!3220185)))

(declare-fun b!5168072 () Bool)

(assert (=> b!5168072 (= e!3220185 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168073 () Bool)

(assert (=> b!5168073 (= e!3220185 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126198) true) (content!10637 (t!373306 lt!2126198))))))

(assert (= (and d!1667496 c!889376) b!5168072))

(assert (= (and d!1667496 (not c!889376)) b!5168073))

(declare-fun m!6219198 () Bool)

(assert (=> b!5168073 m!6219198))

(declare-fun m!6219200 () Bool)

(assert (=> b!5168073 m!6219200))

(assert (=> d!1667292 d!1667496))

(assert (=> d!1667292 d!1667486))

(assert (=> d!1667292 d!1667360))

(declare-fun d!1667498 () Bool)

(declare-fun res!2196781 () Bool)

(declare-fun e!3220186 () Bool)

(assert (=> d!1667498 (=> res!2196781 e!3220186)))

(assert (=> d!1667498 (= res!2196781 ((_ is Nil!60030) (exprs!4481 setElem!31836)))))

(assert (=> d!1667498 (= (forall!14116 (exprs!4481 setElem!31836) lambda!257949) e!3220186)))

(declare-fun b!5168074 () Bool)

(declare-fun e!3220187 () Bool)

(assert (=> b!5168074 (= e!3220186 e!3220187)))

(declare-fun res!2196782 () Bool)

(assert (=> b!5168074 (=> (not res!2196782) (not e!3220187))))

(assert (=> b!5168074 (= res!2196782 (dynLambda!23864 lambda!257949 (h!66478 (exprs!4481 setElem!31836))))))

(declare-fun b!5168075 () Bool)

(assert (=> b!5168075 (= e!3220187 (forall!14116 (t!373307 (exprs!4481 setElem!31836)) lambda!257949))))

(assert (= (and d!1667498 (not res!2196781)) b!5168074))

(assert (= (and b!5168074 res!2196782) b!5168075))

(declare-fun b_lambda!200819 () Bool)

(assert (=> (not b_lambda!200819) (not b!5168074)))

(declare-fun m!6219202 () Bool)

(assert (=> b!5168074 m!6219202))

(declare-fun m!6219204 () Bool)

(assert (=> b!5168075 m!6219204))

(assert (=> d!1667318 d!1667498))

(declare-fun d!1667500 () Bool)

(declare-fun lt!2126337 () Int)

(assert (=> d!1667500 (>= lt!2126337 0)))

(declare-fun e!3220188 () Int)

(assert (=> d!1667500 (= lt!2126337 e!3220188)))

(declare-fun c!889377 () Bool)

(assert (=> d!1667500 (= c!889377 ((_ is Nil!60029) (t!373306 lt!2126143)))))

(assert (=> d!1667500 (= (size!39633 (t!373306 lt!2126143)) lt!2126337)))

(declare-fun b!5168076 () Bool)

(assert (=> b!5168076 (= e!3220188 0)))

(declare-fun b!5168077 () Bool)

(assert (=> b!5168077 (= e!3220188 (+ 1 (size!39633 (t!373306 (t!373306 lt!2126143)))))))

(assert (= (and d!1667500 c!889377) b!5168076))

(assert (= (and d!1667500 (not c!889377)) b!5168077))

(declare-fun m!6219206 () Bool)

(assert (=> b!5168077 m!6219206))

(assert (=> b!5167807 d!1667500))

(declare-fun b!5168079 () Bool)

(declare-fun res!2196783 () Bool)

(declare-fun e!3220190 () Bool)

(assert (=> b!5168079 (=> (not res!2196783) (not e!3220190))))

(assert (=> b!5168079 (= res!2196783 (= (head!11021 (tail!10130 (tail!10130 testedP!294))) (head!11021 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168078 () Bool)

(declare-fun e!3220189 () Bool)

(assert (=> b!5168078 (= e!3220189 e!3220190)))

(declare-fun res!2196785 () Bool)

(assert (=> b!5168078 (=> (not res!2196785) (not e!3220190))))

(assert (=> b!5168078 (= res!2196785 (not ((_ is Nil!60029) (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168080 () Bool)

(assert (=> b!5168080 (= e!3220190 (isPrefix!5730 (tail!10130 (tail!10130 (tail!10130 testedP!294))) (tail!10130 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun d!1667502 () Bool)

(declare-fun e!3220191 () Bool)

(assert (=> d!1667502 e!3220191))

(declare-fun res!2196786 () Bool)

(assert (=> d!1667502 (=> res!2196786 e!3220191)))

(declare-fun lt!2126338 () Bool)

(assert (=> d!1667502 (= res!2196786 (not lt!2126338))))

(assert (=> d!1667502 (= lt!2126338 e!3220189)))

(declare-fun res!2196784 () Bool)

(assert (=> d!1667502 (=> res!2196784 e!3220189)))

(assert (=> d!1667502 (= res!2196784 ((_ is Nil!60029) (tail!10130 (tail!10130 testedP!294))))))

(assert (=> d!1667502 (= (isPrefix!5730 (tail!10130 (tail!10130 testedP!294)) (tail!10130 (tail!10130 input!5817))) lt!2126338)))

(declare-fun b!5168081 () Bool)

(assert (=> b!5168081 (= e!3220191 (>= (size!39633 (tail!10130 (tail!10130 input!5817))) (size!39633 (tail!10130 (tail!10130 testedP!294)))))))

(assert (= (and d!1667502 (not res!2196784)) b!5168078))

(assert (= (and b!5168078 res!2196785) b!5168079))

(assert (= (and b!5168079 res!2196783) b!5168080))

(assert (= (and d!1667502 (not res!2196786)) b!5168081))

(assert (=> b!5168079 m!6218986))

(declare-fun m!6219208 () Bool)

(assert (=> b!5168079 m!6219208))

(assert (=> b!5168079 m!6218792))

(assert (=> b!5168079 m!6219048))

(assert (=> b!5168080 m!6218986))

(declare-fun m!6219210 () Bool)

(assert (=> b!5168080 m!6219210))

(assert (=> b!5168080 m!6218792))

(assert (=> b!5168080 m!6219050))

(assert (=> b!5168080 m!6219210))

(assert (=> b!5168080 m!6219050))

(declare-fun m!6219212 () Bool)

(assert (=> b!5168080 m!6219212))

(assert (=> b!5168081 m!6218792))

(assert (=> b!5168081 m!6219054))

(assert (=> b!5168081 m!6218986))

(declare-fun m!6219214 () Bool)

(assert (=> b!5168081 m!6219214))

(assert (=> b!5167958 d!1667502))

(declare-fun d!1667504 () Bool)

(assert (=> d!1667504 (= (tail!10130 (tail!10130 testedP!294)) (t!373306 (tail!10130 testedP!294)))))

(assert (=> b!5167958 d!1667504))

(assert (=> b!5167958 d!1667428))

(assert (=> d!1667378 d!1667370))

(assert (=> d!1667378 d!1667376))

(declare-fun d!1667506 () Bool)

(assert (=> d!1667506 (isPrefix!5730 testedP!294 (++!13121 testedP!294 lt!2125929))))

(assert (=> d!1667506 true))

(declare-fun _$46!1980 () Unit!151532)

(assert (=> d!1667506 (= (choose!38253 testedP!294 lt!2125929) _$46!1980)))

(declare-fun bs!1203053 () Bool)

(assert (= bs!1203053 d!1667506))

(assert (=> bs!1203053 m!6218432))

(assert (=> bs!1203053 m!6218432))

(assert (=> bs!1203053 m!6218434))

(assert (=> d!1667378 d!1667506))

(declare-fun d!1667508 () Bool)

(declare-fun lt!2126339 () Int)

(assert (=> d!1667508 (>= lt!2126339 0)))

(declare-fun e!3220192 () Int)

(assert (=> d!1667508 (= lt!2126339 e!3220192)))

(declare-fun c!889378 () Bool)

(assert (=> d!1667508 (= c!889378 ((_ is Nil!60029) lt!2126303))))

(assert (=> d!1667508 (= (size!39633 lt!2126303) lt!2126339)))

(declare-fun b!5168082 () Bool)

(assert (=> b!5168082 (= e!3220192 0)))

(declare-fun b!5168083 () Bool)

(assert (=> b!5168083 (= e!3220192 (+ 1 (size!39633 (t!373306 lt!2126303))))))

(assert (= (and d!1667508 c!889378) b!5168082))

(assert (= (and d!1667508 (not c!889378)) b!5168083))

(declare-fun m!6219216 () Bool)

(assert (=> b!5168083 m!6219216))

(assert (=> b!5167942 d!1667508))

(assert (=> b!5167942 d!1667362))

(declare-fun d!1667510 () Bool)

(declare-fun lt!2126340 () Int)

(assert (=> d!1667510 (>= lt!2126340 0)))

(declare-fun e!3220193 () Int)

(assert (=> d!1667510 (= lt!2126340 e!3220193)))

(declare-fun c!889379 () Bool)

(assert (=> d!1667510 (= c!889379 ((_ is Nil!60029) (_2!35177 lt!2126109)))))

(assert (=> d!1667510 (= (size!39633 (_2!35177 lt!2126109)) lt!2126340)))

(declare-fun b!5168084 () Bool)

(assert (=> b!5168084 (= e!3220193 0)))

(declare-fun b!5168085 () Bool)

(assert (=> b!5168085 (= e!3220193 (+ 1 (size!39633 (t!373306 (_2!35177 lt!2126109)))))))

(assert (= (and d!1667510 c!889379) b!5168084))

(assert (= (and d!1667510 (not c!889379)) b!5168085))

(declare-fun m!6219218 () Bool)

(assert (=> b!5168085 m!6219218))

(assert (=> b!5167942 d!1667510))

(declare-fun e!3220194 () List!60153)

(declare-fun b!5168087 () Bool)

(assert (=> b!5168087 (= e!3220194 (Cons!60029 (h!66477 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))) (++!13121 (t!373306 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))) lt!2126122)))))

(declare-fun e!3220195 () Bool)

(declare-fun b!5168089 () Bool)

(declare-fun lt!2126341 () List!60153)

(assert (=> b!5168089 (= e!3220195 (or (not (= lt!2126122 Nil!60029)) (= lt!2126341 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))))

(declare-fun b!5168088 () Bool)

(declare-fun res!2196788 () Bool)

(assert (=> b!5168088 (=> (not res!2196788) (not e!3220195))))

(assert (=> b!5168088 (= res!2196788 (= (size!39633 lt!2126341) (+ (size!39633 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))) (size!39633 lt!2126122))))))

(declare-fun d!1667512 () Bool)

(assert (=> d!1667512 e!3220195))

(declare-fun res!2196787 () Bool)

(assert (=> d!1667512 (=> (not res!2196787) (not e!3220195))))

(assert (=> d!1667512 (= res!2196787 (= (content!10637 lt!2126341) ((_ map or) (content!10637 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))) (content!10637 lt!2126122))))))

(assert (=> d!1667512 (= lt!2126341 e!3220194)))

(declare-fun c!889380 () Bool)

(assert (=> d!1667512 (= c!889380 ((_ is Nil!60029) (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029)))))))

(assert (=> d!1667512 (= (++!13121 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) lt!2126122) lt!2126341)))

(declare-fun b!5168086 () Bool)

(assert (=> b!5168086 (= e!3220194 lt!2126122)))

(assert (= (and d!1667512 c!889380) b!5168086))

(assert (= (and d!1667512 (not c!889380)) b!5168087))

(assert (= (and d!1667512 res!2196787) b!5168088))

(assert (= (and b!5168088 res!2196788) b!5168089))

(declare-fun m!6219220 () Bool)

(assert (=> b!5168087 m!6219220))

(declare-fun m!6219222 () Bool)

(assert (=> b!5168088 m!6219222))

(declare-fun m!6219224 () Bool)

(assert (=> b!5168088 m!6219224))

(assert (=> b!5168088 m!6218998))

(declare-fun m!6219226 () Bool)

(assert (=> d!1667512 m!6219226))

(assert (=> d!1667512 m!6219074))

(assert (=> d!1667512 m!6219004))

(assert (=> b!5167961 d!1667512))

(declare-fun bs!1203054 () Bool)

(declare-fun d!1667514 () Bool)

(assert (= bs!1203054 (and d!1667514 d!1667116)))

(declare-fun lambda!257971 () Int)

(assert (=> bs!1203054 (not (= lambda!257971 lambda!257912))))

(declare-fun bs!1203055 () Bool)

(assert (= bs!1203055 (and d!1667514 d!1667372)))

(assert (=> bs!1203055 (not (= lambda!257971 lambda!257963))))

(declare-fun bs!1203056 () Bool)

(assert (= bs!1203056 (and d!1667514 b!5167934)))

(assert (=> bs!1203056 (not (= lambda!257971 lambda!257964))))

(declare-fun bs!1203057 () Bool)

(assert (= bs!1203057 (and d!1667514 b!5167935)))

(assert (=> bs!1203057 (not (= lambda!257971 lambda!257965))))

(assert (=> d!1667514 true))

(declare-fun order!27031 () Int)

(declare-fun dynLambda!23865 (Int Int) Int)

(assert (=> d!1667514 (< (dynLambda!23865 order!27031 lambda!257963) (dynLambda!23865 order!27031 lambda!257971))))

(assert (=> d!1667514 (exists!1904 lt!2126295 lambda!257971)))

(declare-fun lt!2126344 () Unit!151532)

(declare-fun choose!38258 (List!60156 Int) Unit!151532)

(assert (=> d!1667514 (= lt!2126344 (choose!38258 lt!2126295 lambda!257963))))

(declare-fun forall!14120 (List!60156 Int) Bool)

(assert (=> d!1667514 (not (forall!14120 lt!2126295 lambda!257963))))

(assert (=> d!1667514 (= (lemmaNotForallThenExists!464 lt!2126295 lambda!257963) lt!2126344)))

(declare-fun bs!1203058 () Bool)

(assert (= bs!1203058 d!1667514))

(declare-fun m!6219228 () Bool)

(assert (=> bs!1203058 m!6219228))

(declare-fun m!6219230 () Bool)

(assert (=> bs!1203058 m!6219230))

(declare-fun m!6219232 () Bool)

(assert (=> bs!1203058 m!6219232))

(assert (=> b!5167934 d!1667514))

(declare-fun d!1667516 () Bool)

(declare-fun e!3220200 () Bool)

(assert (=> d!1667516 e!3220200))

(declare-fun res!2196791 () Bool)

(assert (=> d!1667516 (=> (not res!2196791) (not e!3220200))))

(declare-fun lt!2126347 () List!60156)

(declare-fun noDuplicate!1132 (List!60156) Bool)

(assert (=> d!1667516 (= res!2196791 (noDuplicate!1132 lt!2126347))))

(declare-fun choose!38259 ((InoxSet Context!7962)) List!60156)

(assert (=> d!1667516 (= lt!2126347 (choose!38259 z!4581))))

(assert (=> d!1667516 (= (toList!8445 z!4581) lt!2126347)))

(declare-fun b!5168094 () Bool)

(declare-fun content!10638 (List!60156) (InoxSet Context!7962))

(assert (=> b!5168094 (= e!3220200 (= (content!10638 lt!2126347) z!4581))))

(assert (= (and d!1667516 res!2196791) b!5168094))

(declare-fun m!6219234 () Bool)

(assert (=> d!1667516 m!6219234))

(declare-fun m!6219236 () Bool)

(assert (=> d!1667516 m!6219236))

(declare-fun m!6219238 () Bool)

(assert (=> b!5168094 m!6219238))

(assert (=> bm!362649 d!1667516))

(assert (=> bm!362641 d!1667172))

(declare-fun d!1667518 () Bool)

(declare-fun res!2196792 () Bool)

(declare-fun e!3220201 () Bool)

(assert (=> d!1667518 (=> res!2196792 e!3220201)))

(assert (=> d!1667518 (= res!2196792 ((_ is Nil!60030) (t!373307 (exprs!4481 setElem!31828))))))

(assert (=> d!1667518 (= (forall!14116 (t!373307 (exprs!4481 setElem!31828)) lambda!257918) e!3220201)))

(declare-fun b!5168095 () Bool)

(declare-fun e!3220202 () Bool)

(assert (=> b!5168095 (= e!3220201 e!3220202)))

(declare-fun res!2196793 () Bool)

(assert (=> b!5168095 (=> (not res!2196793) (not e!3220202))))

(assert (=> b!5168095 (= res!2196793 (dynLambda!23864 lambda!257918 (h!66478 (t!373307 (exprs!4481 setElem!31828)))))))

(declare-fun b!5168096 () Bool)

(assert (=> b!5168096 (= e!3220202 (forall!14116 (t!373307 (t!373307 (exprs!4481 setElem!31828))) lambda!257918))))

(assert (= (and d!1667518 (not res!2196792)) b!5168095))

(assert (= (and b!5168095 res!2196793) b!5168096))

(declare-fun b_lambda!200821 () Bool)

(assert (=> (not b_lambda!200821) (not b!5168095)))

(declare-fun m!6219240 () Bool)

(assert (=> b!5168095 m!6219240))

(declare-fun m!6219242 () Bool)

(assert (=> b!5168096 m!6219242))

(assert (=> b!5167955 d!1667518))

(assert (=> b!5167927 d!1667398))

(declare-fun d!1667520 () Bool)

(assert (=> d!1667520 (= (head!11021 (++!13121 testedP!294 lt!2125929)) (h!66477 (++!13121 testedP!294 lt!2125929)))))

(assert (=> b!5167927 d!1667520))

(declare-fun d!1667522 () Bool)

(declare-fun res!2196794 () Bool)

(declare-fun e!3220203 () Bool)

(assert (=> d!1667522 (=> res!2196794 e!3220203)))

(assert (=> d!1667522 (= res!2196794 ((_ is Nil!60030) (t!373307 (exprs!4481 setElem!31827))))))

(assert (=> d!1667522 (= (forall!14116 (t!373307 (exprs!4481 setElem!31827)) lambda!257923) e!3220203)))

(declare-fun b!5168097 () Bool)

(declare-fun e!3220204 () Bool)

(assert (=> b!5168097 (= e!3220203 e!3220204)))

(declare-fun res!2196795 () Bool)

(assert (=> b!5168097 (=> (not res!2196795) (not e!3220204))))

(assert (=> b!5168097 (= res!2196795 (dynLambda!23864 lambda!257923 (h!66478 (t!373307 (exprs!4481 setElem!31827)))))))

(declare-fun b!5168098 () Bool)

(assert (=> b!5168098 (= e!3220204 (forall!14116 (t!373307 (t!373307 (exprs!4481 setElem!31827))) lambda!257923))))

(assert (= (and d!1667522 (not res!2196794)) b!5168097))

(assert (= (and b!5168097 res!2196795) b!5168098))

(declare-fun b_lambda!200823 () Bool)

(assert (=> (not b_lambda!200823) (not b!5168097)))

(declare-fun m!6219244 () Bool)

(assert (=> b!5168097 m!6219244))

(declare-fun m!6219246 () Bool)

(assert (=> b!5168098 m!6219246))

(assert (=> b!5167845 d!1667522))

(declare-fun d!1667524 () Bool)

(declare-fun lt!2126348 () Int)

(assert (=> d!1667524 (>= lt!2126348 0)))

(declare-fun e!3220205 () Int)

(assert (=> d!1667524 (= lt!2126348 e!3220205)))

(declare-fun c!889381 () Bool)

(assert (=> d!1667524 (= c!889381 ((_ is Nil!60029) lt!2126306))))

(assert (=> d!1667524 (= (size!39633 lt!2126306) lt!2126348)))

(declare-fun b!5168099 () Bool)

(assert (=> b!5168099 (= e!3220205 0)))

(declare-fun b!5168100 () Bool)

(assert (=> b!5168100 (= e!3220205 (+ 1 (size!39633 (t!373306 lt!2126306))))))

(assert (= (and d!1667524 c!889381) b!5168099))

(assert (= (and d!1667524 (not c!889381)) b!5168100))

(declare-fun m!6219248 () Bool)

(assert (=> b!5168100 m!6219248))

(assert (=> b!5167952 d!1667524))

(assert (=> b!5167952 d!1667166))

(declare-fun d!1667526 () Bool)

(declare-fun lt!2126349 () Int)

(assert (=> d!1667526 (>= lt!2126349 0)))

(declare-fun e!3220206 () Int)

(assert (=> d!1667526 (= lt!2126349 e!3220206)))

(declare-fun c!889382 () Bool)

(assert (=> d!1667526 (= c!889382 ((_ is Nil!60029) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))

(assert (=> d!1667526 (= (size!39633 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) lt!2126349)))

(declare-fun b!5168101 () Bool)

(assert (=> b!5168101 (= e!3220206 0)))

(declare-fun b!5168102 () Bool)

(assert (=> b!5168102 (= e!3220206 (+ 1 (size!39633 (t!373306 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (= (and d!1667526 c!889382) b!5168101))

(assert (= (and d!1667526 (not c!889382)) b!5168102))

(declare-fun m!6219250 () Bool)

(assert (=> b!5168102 m!6219250))

(assert (=> b!5167952 d!1667526))

(declare-fun d!1667528 () Bool)

(declare-fun lt!2126350 () Int)

(assert (=> d!1667528 (>= lt!2126350 0)))

(declare-fun e!3220207 () Int)

(assert (=> d!1667528 (= lt!2126350 e!3220207)))

(declare-fun c!889383 () Bool)

(assert (=> d!1667528 (= c!889383 ((_ is Nil!60029) (++!13121 testedP!294 lt!2125929)))))

(assert (=> d!1667528 (= (size!39633 (++!13121 testedP!294 lt!2125929)) lt!2126350)))

(declare-fun b!5168103 () Bool)

(assert (=> b!5168103 (= e!3220207 0)))

(declare-fun b!5168104 () Bool)

(assert (=> b!5168104 (= e!3220207 (+ 1 (size!39633 (t!373306 (++!13121 testedP!294 lt!2125929)))))))

(assert (= (and d!1667528 c!889383) b!5168103))

(assert (= (and d!1667528 (not c!889383)) b!5168104))

(declare-fun m!6219252 () Bool)

(assert (=> b!5168104 m!6219252))

(assert (=> b!5167929 d!1667528))

(assert (=> b!5167929 d!1667166))

(assert (=> d!1667350 d!1667174))

(declare-fun d!1667530 () Bool)

(declare-fun lt!2126351 () Int)

(assert (=> d!1667530 (>= lt!2126351 0)))

(declare-fun e!3220208 () Int)

(assert (=> d!1667530 (= lt!2126351 e!3220208)))

(declare-fun c!889384 () Bool)

(assert (=> d!1667530 (= c!889384 ((_ is Nil!60029) lt!2126214))))

(assert (=> d!1667530 (= (size!39633 lt!2126214) lt!2126351)))

(declare-fun b!5168105 () Bool)

(assert (=> b!5168105 (= e!3220208 0)))

(declare-fun b!5168106 () Bool)

(assert (=> b!5168106 (= e!3220208 (+ 1 (size!39633 (t!373306 lt!2126214))))))

(assert (= (and d!1667530 c!889384) b!5168105))

(assert (= (and d!1667530 (not c!889384)) b!5168106))

(declare-fun m!6219254 () Bool)

(assert (=> b!5168106 m!6219254))

(assert (=> b!5167834 d!1667530))

(assert (=> b!5167834 d!1667296))

(assert (=> b!5167834 d!1667308))

(assert (=> bm!362642 d!1667174))

(declare-fun d!1667532 () Bool)

(declare-fun lt!2126352 () Int)

(assert (=> d!1667532 (>= lt!2126352 0)))

(declare-fun e!3220209 () Int)

(assert (=> d!1667532 (= lt!2126352 e!3220209)))

(declare-fun c!889385 () Bool)

(assert (=> d!1667532 (= c!889385 ((_ is Nil!60029) lt!2126309))))

(assert (=> d!1667532 (= (size!39633 lt!2126309) lt!2126352)))

(declare-fun b!5168107 () Bool)

(assert (=> b!5168107 (= e!3220209 0)))

(declare-fun b!5168108 () Bool)

(assert (=> b!5168108 (= e!3220209 (+ 1 (size!39633 (t!373306 lt!2126309))))))

(assert (= (and d!1667532 c!889385) b!5168107))

(assert (= (and d!1667532 (not c!889385)) b!5168108))

(declare-fun m!6219256 () Bool)

(assert (=> b!5168108 m!6219256))

(assert (=> b!5167966 d!1667532))

(assert (=> b!5167966 d!1667166))

(declare-fun d!1667534 () Bool)

(declare-fun lt!2126353 () Int)

(assert (=> d!1667534 (>= lt!2126353 0)))

(declare-fun e!3220210 () Int)

(assert (=> d!1667534 (= lt!2126353 e!3220210)))

(declare-fun c!889386 () Bool)

(assert (=> d!1667534 (= c!889386 ((_ is Nil!60029) (Cons!60029 lt!2126119 Nil!60029)))))

(assert (=> d!1667534 (= (size!39633 (Cons!60029 lt!2126119 Nil!60029)) lt!2126353)))

(declare-fun b!5168109 () Bool)

(assert (=> b!5168109 (= e!3220210 0)))

(declare-fun b!5168110 () Bool)

(assert (=> b!5168110 (= e!3220210 (+ 1 (size!39633 (t!373306 (Cons!60029 lt!2126119 Nil!60029)))))))

(assert (= (and d!1667534 c!889386) b!5168109))

(assert (= (and d!1667534 (not c!889386)) b!5168110))

(declare-fun m!6219258 () Bool)

(assert (=> b!5168110 m!6219258))

(assert (=> b!5167966 d!1667534))

(declare-fun d!1667536 () Bool)

(declare-fun c!889387 () Bool)

(assert (=> d!1667536 (= c!889387 ((_ is Nil!60029) (t!373306 (tail!10130 lt!2125929))))))

(declare-fun e!3220211 () (InoxSet C!29464))

(assert (=> d!1667536 (= (content!10637 (t!373306 (tail!10130 lt!2125929))) e!3220211)))

(declare-fun b!5168111 () Bool)

(assert (=> b!5168111 (= e!3220211 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168112 () Bool)

(assert (=> b!5168112 (= e!3220211 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 (tail!10130 lt!2125929))) true) (content!10637 (t!373306 (t!373306 (tail!10130 lt!2125929))))))))

(assert (= (and d!1667536 c!889387) b!5168111))

(assert (= (and d!1667536 (not c!889387)) b!5168112))

(declare-fun m!6219260 () Bool)

(assert (=> b!5168112 m!6219260))

(declare-fun m!6219262 () Bool)

(assert (=> b!5168112 m!6219262))

(assert (=> b!5167919 d!1667536))

(assert (=> d!1667388 d!1667386))

(assert (=> d!1667388 d!1667390))

(assert (=> d!1667388 d!1667384))

(assert (=> d!1667388 d!1667140))

(declare-fun b!5168114 () Bool)

(declare-fun e!3220212 () List!60153)

(assert (=> b!5168114 (= e!3220212 (Cons!60029 (h!66477 (t!373306 (t!373306 lt!2125923))) (++!13121 (t!373306 (t!373306 (t!373306 lt!2125923))) (tail!10130 lt!2125929))))))

(declare-fun b!5168116 () Bool)

(declare-fun e!3220213 () Bool)

(declare-fun lt!2126354 () List!60153)

(assert (=> b!5168116 (= e!3220213 (or (not (= (tail!10130 lt!2125929) Nil!60029)) (= lt!2126354 (t!373306 (t!373306 lt!2125923)))))))

(declare-fun b!5168115 () Bool)

(declare-fun res!2196797 () Bool)

(assert (=> b!5168115 (=> (not res!2196797) (not e!3220213))))

(assert (=> b!5168115 (= res!2196797 (= (size!39633 lt!2126354) (+ (size!39633 (t!373306 (t!373306 lt!2125923))) (size!39633 (tail!10130 lt!2125929)))))))

(declare-fun d!1667538 () Bool)

(assert (=> d!1667538 e!3220213))

(declare-fun res!2196796 () Bool)

(assert (=> d!1667538 (=> (not res!2196796) (not e!3220213))))

(assert (=> d!1667538 (= res!2196796 (= (content!10637 lt!2126354) ((_ map or) (content!10637 (t!373306 (t!373306 lt!2125923))) (content!10637 (tail!10130 lt!2125929)))))))

(assert (=> d!1667538 (= lt!2126354 e!3220212)))

(declare-fun c!889388 () Bool)

(assert (=> d!1667538 (= c!889388 ((_ is Nil!60029) (t!373306 (t!373306 lt!2125923))))))

(assert (=> d!1667538 (= (++!13121 (t!373306 (t!373306 lt!2125923)) (tail!10130 lt!2125929)) lt!2126354)))

(declare-fun b!5168113 () Bool)

(assert (=> b!5168113 (= e!3220212 (tail!10130 lt!2125929))))

(assert (= (and d!1667538 c!889388) b!5168113))

(assert (= (and d!1667538 (not c!889388)) b!5168114))

(assert (= (and d!1667538 res!2196796) b!5168115))

(assert (= (and b!5168115 res!2196797) b!5168116))

(assert (=> b!5168114 m!6218262))

(declare-fun m!6219264 () Bool)

(assert (=> b!5168114 m!6219264))

(declare-fun m!6219266 () Bool)

(assert (=> b!5168115 m!6219266))

(assert (=> b!5168115 m!6218748))

(assert (=> b!5168115 m!6218262))

(assert (=> b!5168115 m!6218476))

(declare-fun m!6219268 () Bool)

(assert (=> d!1667538 m!6219268))

(assert (=> d!1667538 m!6219180))

(assert (=> d!1667538 m!6218262))

(assert (=> d!1667538 m!6218482))

(assert (=> b!5167811 d!1667538))

(declare-fun d!1667540 () Bool)

(declare-fun lt!2126355 () Int)

(assert (=> d!1667540 (>= lt!2126355 0)))

(declare-fun e!3220214 () Int)

(assert (=> d!1667540 (= lt!2126355 e!3220214)))

(declare-fun c!889389 () Bool)

(assert (=> d!1667540 (= c!889389 ((_ is Nil!60029) lt!2126299))))

(assert (=> d!1667540 (= (size!39633 lt!2126299) lt!2126355)))

(declare-fun b!5168117 () Bool)

(assert (=> b!5168117 (= e!3220214 0)))

(declare-fun b!5168118 () Bool)

(assert (=> b!5168118 (= e!3220214 (+ 1 (size!39633 (t!373306 lt!2126299))))))

(assert (= (and d!1667540 c!889389) b!5168117))

(assert (= (and d!1667540 (not c!889389)) b!5168118))

(declare-fun m!6219270 () Bool)

(assert (=> b!5168118 m!6219270))

(assert (=> b!5167938 d!1667540))

(assert (=> b!5167938 d!1667166))

(declare-fun d!1667542 () Bool)

(declare-fun lt!2126356 () Int)

(assert (=> d!1667542 (>= lt!2126356 0)))

(declare-fun e!3220215 () Int)

(assert (=> d!1667542 (= lt!2126356 e!3220215)))

(declare-fun c!889390 () Bool)

(assert (=> d!1667542 (= c!889390 ((_ is Nil!60029) lt!2125929))))

(assert (=> d!1667542 (= (size!39633 lt!2125929) lt!2126356)))

(declare-fun b!5168119 () Bool)

(assert (=> b!5168119 (= e!3220215 0)))

(declare-fun b!5168120 () Bool)

(assert (=> b!5168120 (= e!3220215 (+ 1 (size!39633 (t!373306 lt!2125929))))))

(assert (= (and d!1667542 c!889390) b!5168119))

(assert (= (and d!1667542 (not c!889390)) b!5168120))

(declare-fun m!6219272 () Bool)

(assert (=> b!5168120 m!6219272))

(assert (=> b!5167938 d!1667542))

(declare-fun b!5168139 () Bool)

(declare-fun res!2196809 () Bool)

(declare-fun e!3220233 () Bool)

(assert (=> b!5168139 (=> res!2196809 e!3220233)))

(assert (=> b!5168139 (= res!2196809 (not ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31828)))))))

(declare-fun e!3220236 () Bool)

(assert (=> b!5168139 (= e!3220236 e!3220233)))

(declare-fun call!362664 () Bool)

(declare-fun c!889395 () Bool)

(declare-fun c!889396 () Bool)

(declare-fun bm!362657 () Bool)

(assert (=> bm!362657 (= call!362664 (validRegex!6394 (ite c!889395 (reg!14926 (h!66478 (exprs!4481 setElem!31828))) (ite c!889396 (regTwo!29707 (h!66478 (exprs!4481 setElem!31828))) (regTwo!29706 (h!66478 (exprs!4481 setElem!31828)))))))))

(declare-fun b!5168140 () Bool)

(declare-fun e!3220235 () Bool)

(declare-fun call!362663 () Bool)

(assert (=> b!5168140 (= e!3220235 call!362663)))

(declare-fun b!5168141 () Bool)

(declare-fun e!3220232 () Bool)

(declare-fun e!3220234 () Bool)

(assert (=> b!5168141 (= e!3220232 e!3220234)))

(declare-fun res!2196811 () Bool)

(declare-fun nullable!4891 (Regex!14597) Bool)

(assert (=> b!5168141 (= res!2196811 (not (nullable!4891 (reg!14926 (h!66478 (exprs!4481 setElem!31828))))))))

(assert (=> b!5168141 (=> (not res!2196811) (not e!3220234))))

(declare-fun bm!362658 () Bool)

(declare-fun call!362662 () Bool)

(assert (=> bm!362658 (= call!362662 (validRegex!6394 (ite c!889396 (regOne!29707 (h!66478 (exprs!4481 setElem!31828))) (regOne!29706 (h!66478 (exprs!4481 setElem!31828))))))))

(declare-fun b!5168143 () Bool)

(declare-fun e!3220231 () Bool)

(assert (=> b!5168143 (= e!3220231 call!362663)))

(declare-fun b!5168144 () Bool)

(assert (=> b!5168144 (= e!3220234 call!362664)))

(declare-fun b!5168145 () Bool)

(assert (=> b!5168145 (= e!3220232 e!3220236)))

(assert (=> b!5168145 (= c!889396 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31828))))))

(declare-fun bm!362659 () Bool)

(assert (=> bm!362659 (= call!362663 call!362664)))

(declare-fun b!5168146 () Bool)

(declare-fun e!3220230 () Bool)

(assert (=> b!5168146 (= e!3220230 e!3220232)))

(assert (=> b!5168146 (= c!889395 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31828))))))

(declare-fun b!5168147 () Bool)

(declare-fun res!2196810 () Bool)

(assert (=> b!5168147 (=> (not res!2196810) (not e!3220231))))

(assert (=> b!5168147 (= res!2196810 call!362662)))

(assert (=> b!5168147 (= e!3220236 e!3220231)))

(declare-fun d!1667544 () Bool)

(declare-fun res!2196808 () Bool)

(assert (=> d!1667544 (=> res!2196808 e!3220230)))

(assert (=> d!1667544 (= res!2196808 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31828))))))

(assert (=> d!1667544 (= (validRegex!6394 (h!66478 (exprs!4481 setElem!31828))) e!3220230)))

(declare-fun b!5168142 () Bool)

(assert (=> b!5168142 (= e!3220233 e!3220235)))

(declare-fun res!2196812 () Bool)

(assert (=> b!5168142 (=> (not res!2196812) (not e!3220235))))

(assert (=> b!5168142 (= res!2196812 call!362662)))

(assert (= (and d!1667544 (not res!2196808)) b!5168146))

(assert (= (and b!5168146 c!889395) b!5168141))

(assert (= (and b!5168146 (not c!889395)) b!5168145))

(assert (= (and b!5168141 res!2196811) b!5168144))

(assert (= (and b!5168145 c!889396) b!5168147))

(assert (= (and b!5168145 (not c!889396)) b!5168139))

(assert (= (and b!5168147 res!2196810) b!5168143))

(assert (= (and b!5168139 (not res!2196809)) b!5168142))

(assert (= (and b!5168142 res!2196812) b!5168140))

(assert (= (or b!5168143 b!5168140) bm!362659))

(assert (= (or b!5168147 b!5168142) bm!362658))

(assert (= (or b!5168144 bm!362659) bm!362657))

(declare-fun m!6219274 () Bool)

(assert (=> bm!362657 m!6219274))

(declare-fun m!6219276 () Bool)

(assert (=> b!5168141 m!6219276))

(declare-fun m!6219278 () Bool)

(assert (=> bm!362658 m!6219278))

(assert (=> bs!1203033 d!1667544))

(assert (=> d!1667334 d!1667166))

(assert (=> d!1667334 d!1667138))

(declare-fun d!1667546 () Bool)

(assert (=> d!1667546 (= (head!11021 (tail!10130 input!5817)) (h!66477 (tail!10130 input!5817)))))

(assert (=> b!5167923 d!1667546))

(assert (=> bm!362644 d!1667454))

(declare-fun b!5168149 () Bool)

(declare-fun res!2196813 () Bool)

(declare-fun e!3220238 () Bool)

(assert (=> b!5168149 (=> (not res!2196813) (not e!3220238))))

(assert (=> b!5168149 (= res!2196813 (= (head!11021 (tail!10130 (tail!10130 lt!2125923))) (head!11021 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168148 () Bool)

(declare-fun e!3220237 () Bool)

(assert (=> b!5168148 (= e!3220237 e!3220238)))

(declare-fun res!2196815 () Bool)

(assert (=> b!5168148 (=> (not res!2196815) (not e!3220238))))

(assert (=> b!5168148 (= res!2196815 (not ((_ is Nil!60029) (tail!10130 (tail!10130 input!5817)))))))

(declare-fun b!5168150 () Bool)

(assert (=> b!5168150 (= e!3220238 (isPrefix!5730 (tail!10130 (tail!10130 (tail!10130 lt!2125923))) (tail!10130 (tail!10130 (tail!10130 input!5817)))))))

(declare-fun d!1667548 () Bool)

(declare-fun e!3220239 () Bool)

(assert (=> d!1667548 e!3220239))

(declare-fun res!2196816 () Bool)

(assert (=> d!1667548 (=> res!2196816 e!3220239)))

(declare-fun lt!2126357 () Bool)

(assert (=> d!1667548 (= res!2196816 (not lt!2126357))))

(assert (=> d!1667548 (= lt!2126357 e!3220237)))

(declare-fun res!2196814 () Bool)

(assert (=> d!1667548 (=> res!2196814 e!3220237)))

(assert (=> d!1667548 (= res!2196814 ((_ is Nil!60029) (tail!10130 (tail!10130 lt!2125923))))))

(assert (=> d!1667548 (= (isPrefix!5730 (tail!10130 (tail!10130 lt!2125923)) (tail!10130 (tail!10130 input!5817))) lt!2126357)))

(declare-fun b!5168151 () Bool)

(assert (=> b!5168151 (= e!3220239 (>= (size!39633 (tail!10130 (tail!10130 input!5817))) (size!39633 (tail!10130 (tail!10130 lt!2125923)))))))

(assert (= (and d!1667548 (not res!2196814)) b!5168148))

(assert (= (and b!5168148 res!2196815) b!5168149))

(assert (= (and b!5168149 res!2196813) b!5168150))

(assert (= (and d!1667548 (not res!2196816)) b!5168151))

(assert (=> b!5168149 m!6218790))

(declare-fun m!6219280 () Bool)

(assert (=> b!5168149 m!6219280))

(assert (=> b!5168149 m!6218792))

(assert (=> b!5168149 m!6219048))

(assert (=> b!5168150 m!6218790))

(declare-fun m!6219282 () Bool)

(assert (=> b!5168150 m!6219282))

(assert (=> b!5168150 m!6218792))

(assert (=> b!5168150 m!6219050))

(assert (=> b!5168150 m!6219282))

(assert (=> b!5168150 m!6219050))

(declare-fun m!6219284 () Bool)

(assert (=> b!5168150 m!6219284))

(assert (=> b!5168151 m!6218792))

(assert (=> b!5168151 m!6219054))

(assert (=> b!5168151 m!6218790))

(declare-fun m!6219286 () Bool)

(assert (=> b!5168151 m!6219286))

(assert (=> b!5167854 d!1667548))

(declare-fun d!1667550 () Bool)

(assert (=> d!1667550 (= (tail!10130 (tail!10130 lt!2125923)) (t!373306 (tail!10130 lt!2125923)))))

(assert (=> b!5167854 d!1667550))

(assert (=> b!5167854 d!1667428))

(declare-fun d!1667552 () Bool)

(declare-fun lt!2126358 () Int)

(assert (=> d!1667552 (>= lt!2126358 0)))

(declare-fun e!3220240 () Int)

(assert (=> d!1667552 (= lt!2126358 e!3220240)))

(declare-fun c!889397 () Bool)

(assert (=> d!1667552 (= c!889397 ((_ is Nil!60029) (t!373306 (t!373306 testedP!294))))))

(assert (=> d!1667552 (= (size!39633 (t!373306 (t!373306 testedP!294))) lt!2126358)))

(declare-fun b!5168152 () Bool)

(assert (=> b!5168152 (= e!3220240 0)))

(declare-fun b!5168153 () Bool)

(assert (=> b!5168153 (= e!3220240 (+ 1 (size!39633 (t!373306 (t!373306 (t!373306 testedP!294))))))))

(assert (= (and d!1667552 c!889397) b!5168152))

(assert (= (and d!1667552 (not c!889397)) b!5168153))

(declare-fun m!6219288 () Bool)

(assert (=> b!5168153 m!6219288))

(assert (=> b!5167817 d!1667552))

(assert (=> bm!362637 d!1667456))

(declare-fun d!1667554 () Bool)

(declare-fun c!889398 () Bool)

(assert (=> d!1667554 (= c!889398 ((_ is Nil!60029) lt!2126303))))

(declare-fun e!3220241 () (InoxSet C!29464))

(assert (=> d!1667554 (= (content!10637 lt!2126303) e!3220241)))

(declare-fun b!5168154 () Bool)

(assert (=> b!5168154 (= e!3220241 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168155 () Bool)

(assert (=> b!5168155 (= e!3220241 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126303) true) (content!10637 (t!373306 lt!2126303))))))

(assert (= (and d!1667554 c!889398) b!5168154))

(assert (= (and d!1667554 (not c!889398)) b!5168155))

(declare-fun m!6219290 () Bool)

(assert (=> b!5168155 m!6219290))

(declare-fun m!6219292 () Bool)

(assert (=> b!5168155 m!6219292))

(assert (=> d!1667380 d!1667554))

(declare-fun d!1667556 () Bool)

(declare-fun c!889399 () Bool)

(assert (=> d!1667556 (= c!889399 ((_ is Nil!60029) (_1!35177 lt!2126109)))))

(declare-fun e!3220242 () (InoxSet C!29464))

(assert (=> d!1667556 (= (content!10637 (_1!35177 lt!2126109)) e!3220242)))

(declare-fun b!5168156 () Bool)

(assert (=> b!5168156 (= e!3220242 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168157 () Bool)

(assert (=> b!5168157 (= e!3220242 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (_1!35177 lt!2126109)) true) (content!10637 (t!373306 (_1!35177 lt!2126109)))))))

(assert (= (and d!1667556 c!889399) b!5168156))

(assert (= (and d!1667556 (not c!889399)) b!5168157))

(declare-fun m!6219294 () Bool)

(assert (=> b!5168157 m!6219294))

(declare-fun m!6219296 () Bool)

(assert (=> b!5168157 m!6219296))

(assert (=> d!1667380 d!1667556))

(declare-fun d!1667558 () Bool)

(declare-fun c!889400 () Bool)

(assert (=> d!1667558 (= c!889400 ((_ is Nil!60029) (_2!35177 lt!2126109)))))

(declare-fun e!3220243 () (InoxSet C!29464))

(assert (=> d!1667558 (= (content!10637 (_2!35177 lt!2126109)) e!3220243)))

(declare-fun b!5168158 () Bool)

(assert (=> b!5168158 (= e!3220243 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168159 () Bool)

(assert (=> b!5168159 (= e!3220243 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (_2!35177 lt!2126109)) true) (content!10637 (t!373306 (_2!35177 lt!2126109)))))))

(assert (= (and d!1667558 c!889400) b!5168158))

(assert (= (and d!1667558 (not c!889400)) b!5168159))

(declare-fun m!6219298 () Bool)

(assert (=> b!5168159 m!6219298))

(declare-fun m!6219300 () Bool)

(assert (=> b!5168159 m!6219300))

(assert (=> d!1667380 d!1667558))

(declare-fun bs!1203059 () Bool)

(declare-fun d!1667560 () Bool)

(assert (= bs!1203059 (and d!1667560 d!1667514)))

(declare-fun lambda!257972 () Int)

(assert (=> bs!1203059 (not (= lambda!257972 lambda!257971))))

(declare-fun bs!1203060 () Bool)

(assert (= bs!1203060 (and d!1667560 d!1667372)))

(assert (=> bs!1203060 (not (= lambda!257972 lambda!257963))))

(declare-fun bs!1203061 () Bool)

(assert (= bs!1203061 (and d!1667560 d!1667116)))

(assert (=> bs!1203061 (= lambda!257972 lambda!257912)))

(declare-fun bs!1203062 () Bool)

(assert (= bs!1203062 (and d!1667560 b!5167935)))

(assert (=> bs!1203062 (not (= lambda!257972 lambda!257965))))

(declare-fun bs!1203063 () Bool)

(assert (= bs!1203063 (and d!1667560 b!5167934)))

(assert (=> bs!1203063 (not (= lambda!257972 lambda!257964))))

(assert (=> d!1667560 (= (nullableZipper!1143 call!362624) (exists!1902 call!362624 lambda!257972))))

(declare-fun bs!1203064 () Bool)

(assert (= bs!1203064 d!1667560))

(declare-fun m!6219302 () Bool)

(assert (=> bs!1203064 m!6219302))

(assert (=> bm!362638 d!1667560))

(declare-fun d!1667562 () Bool)

(declare-fun lt!2126359 () Int)

(assert (=> d!1667562 (>= lt!2126359 0)))

(declare-fun e!3220244 () Int)

(assert (=> d!1667562 (= lt!2126359 e!3220244)))

(declare-fun c!889401 () Bool)

(assert (=> d!1667562 (= c!889401 ((_ is Nil!60029) (_1!35177 lt!2126236)))))

(assert (=> d!1667562 (= (size!39633 (_1!35177 lt!2126236)) lt!2126359)))

(declare-fun b!5168160 () Bool)

(assert (=> b!5168160 (= e!3220244 0)))

(declare-fun b!5168161 () Bool)

(assert (=> b!5168161 (= e!3220244 (+ 1 (size!39633 (t!373306 (_1!35177 lt!2126236)))))))

(assert (= (and d!1667562 c!889401) b!5168160))

(assert (= (and d!1667562 (not c!889401)) b!5168161))

(declare-fun m!6219304 () Bool)

(assert (=> b!5168161 m!6219304))

(assert (=> b!5167861 d!1667562))

(assert (=> b!5167861 d!1667476))

(assert (=> b!5167925 d!1667412))

(declare-fun d!1667564 () Bool)

(assert (=> d!1667564 (= (isEmpty!32139 (_1!35177 lt!2126254)) ((_ is Nil!60029) (_1!35177 lt!2126254)))))

(assert (=> b!5167864 d!1667564))

(declare-fun d!1667566 () Bool)

(assert (=> d!1667566 (= (isEmpty!32140 (getLanguageWitness!998 z!4581)) (not ((_ is Some!14828) (getLanguageWitness!998 z!4581))))))

(assert (=> d!1667372 d!1667566))

(declare-fun bs!1203065 () Bool)

(declare-fun d!1667568 () Bool)

(assert (= bs!1203065 (and d!1667568 d!1667560)))

(declare-fun lambda!257979 () Int)

(assert (=> bs!1203065 (not (= lambda!257979 lambda!257972))))

(declare-fun bs!1203066 () Bool)

(assert (= bs!1203066 (and d!1667568 d!1667514)))

(assert (=> bs!1203066 (not (= lambda!257979 lambda!257971))))

(declare-fun bs!1203067 () Bool)

(assert (= bs!1203067 (and d!1667568 d!1667372)))

(assert (=> bs!1203067 (not (= lambda!257979 lambda!257963))))

(declare-fun bs!1203068 () Bool)

(assert (= bs!1203068 (and d!1667568 d!1667116)))

(assert (=> bs!1203068 (not (= lambda!257979 lambda!257912))))

(declare-fun bs!1203069 () Bool)

(assert (= bs!1203069 (and d!1667568 b!5167935)))

(assert (=> bs!1203069 (= lambda!257979 lambda!257965)))

(declare-fun bs!1203070 () Bool)

(assert (= bs!1203070 (and d!1667568 b!5167934)))

(assert (=> bs!1203070 (= lambda!257979 lambda!257964)))

(declare-fun lt!2126362 () Option!14829)

(declare-fun isDefined!11543 (Option!14829) Bool)

(assert (=> d!1667568 (= (isDefined!11543 lt!2126362) (exists!1902 z!4581 lambda!257979))))

(declare-fun e!3220247 () Option!14829)

(assert (=> d!1667568 (= lt!2126362 e!3220247)))

(declare-fun c!889410 () Bool)

(assert (=> d!1667568 (= c!889410 (exists!1902 z!4581 lambda!257979))))

(assert (=> d!1667568 (= (getLanguageWitness!998 z!4581) lt!2126362)))

(declare-fun b!5168166 () Bool)

(declare-fun getLanguageWitness!1000 (Context!7962) Option!14829)

(declare-fun getWitness!852 ((InoxSet Context!7962) Int) Context!7962)

(assert (=> b!5168166 (= e!3220247 (getLanguageWitness!1000 (getWitness!852 z!4581 lambda!257979)))))

(declare-fun b!5168167 () Bool)

(assert (=> b!5168167 (= e!3220247 None!14828)))

(assert (= (and d!1667568 c!889410) b!5168166))

(assert (= (and d!1667568 (not c!889410)) b!5168167))

(declare-fun m!6219306 () Bool)

(assert (=> d!1667568 m!6219306))

(declare-fun m!6219308 () Bool)

(assert (=> d!1667568 m!6219308))

(assert (=> d!1667568 m!6219308))

(declare-fun m!6219310 () Bool)

(assert (=> b!5168166 m!6219310))

(assert (=> b!5168166 m!6219310))

(declare-fun m!6219312 () Bool)

(assert (=> b!5168166 m!6219312))

(assert (=> d!1667372 d!1667568))

(declare-fun d!1667570 () Bool)

(declare-fun lt!2126365 () Bool)

(assert (=> d!1667570 (= lt!2126365 (forall!14120 (toList!8445 z!4581) lambda!257963))))

(declare-fun choose!38263 ((InoxSet Context!7962) Int) Bool)

(assert (=> d!1667570 (= lt!2126365 (choose!38263 z!4581 lambda!257963))))

(assert (=> d!1667570 (= (forall!14118 z!4581 lambda!257963) lt!2126365)))

(declare-fun bs!1203071 () Bool)

(assert (= bs!1203071 d!1667570))

(assert (=> bs!1203071 m!6218906))

(assert (=> bs!1203071 m!6218906))

(declare-fun m!6219314 () Bool)

(assert (=> bs!1203071 m!6219314))

(declare-fun m!6219316 () Bool)

(assert (=> bs!1203071 m!6219316))

(assert (=> d!1667372 d!1667570))

(declare-fun d!1667572 () Bool)

(declare-fun c!889411 () Bool)

(assert (=> d!1667572 (= c!889411 ((_ is Nil!60029) lt!2126214))))

(declare-fun e!3220248 () (InoxSet C!29464))

(assert (=> d!1667572 (= (content!10637 lt!2126214) e!3220248)))

(declare-fun b!5168168 () Bool)

(assert (=> b!5168168 (= e!3220248 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168169 () Bool)

(assert (=> b!5168169 (= e!3220248 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126214) true) (content!10637 (t!373306 lt!2126214))))))

(assert (= (and d!1667572 c!889411) b!5168168))

(assert (= (and d!1667572 (not c!889411)) b!5168169))

(declare-fun m!6219318 () Bool)

(assert (=> b!5168169 m!6219318))

(declare-fun m!6219320 () Bool)

(assert (=> b!5168169 m!6219320))

(assert (=> d!1667312 d!1667572))

(assert (=> d!1667312 d!1667492))

(assert (=> d!1667312 d!1667348))

(declare-fun d!1667574 () Bool)

(assert (=> d!1667574 (= (flatMap!437 z!4581 lambda!257933) (choose!38257 z!4581 lambda!257933))))

(declare-fun bs!1203072 () Bool)

(assert (= bs!1203072 d!1667574))

(declare-fun m!6219322 () Bool)

(assert (=> bs!1203072 m!6219322))

(assert (=> d!1667294 d!1667574))

(declare-fun d!1667576 () Bool)

(declare-fun c!889412 () Bool)

(assert (=> d!1667576 (= c!889412 ((_ is Nil!60029) (t!373306 lt!2125936)))))

(declare-fun e!3220249 () (InoxSet C!29464))

(assert (=> d!1667576 (= (content!10637 (t!373306 lt!2125936)) e!3220249)))

(declare-fun b!5168170 () Bool)

(assert (=> b!5168170 (= e!3220249 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168171 () Bool)

(assert (=> b!5168171 (= e!3220249 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (t!373306 lt!2125936)) true) (content!10637 (t!373306 (t!373306 lt!2125936)))))))

(assert (= (and d!1667576 c!889412) b!5168170))

(assert (= (and d!1667576 (not c!889412)) b!5168171))

(declare-fun m!6219324 () Bool)

(assert (=> b!5168171 m!6219324))

(declare-fun m!6219326 () Bool)

(assert (=> b!5168171 m!6219326))

(assert (=> b!5167901 d!1667576))

(declare-fun b!5168173 () Bool)

(declare-fun res!2196817 () Bool)

(declare-fun e!3220251 () Bool)

(assert (=> b!5168173 (=> (not res!2196817) (not e!3220251))))

(assert (=> b!5168173 (= res!2196817 (= (head!11021 (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))) (head!11021 (tail!10130 input!5817))))))

(declare-fun b!5168172 () Bool)

(declare-fun e!3220250 () Bool)

(assert (=> b!5168172 (= e!3220250 e!3220251)))

(declare-fun res!2196819 () Bool)

(assert (=> b!5168172 (=> (not res!2196819) (not e!3220251))))

(assert (=> b!5168172 (= res!2196819 (not ((_ is Nil!60029) (tail!10130 input!5817))))))

(declare-fun b!5168174 () Bool)

(assert (=> b!5168174 (= e!3220251 (isPrefix!5730 (tail!10130 (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))) (tail!10130 (tail!10130 input!5817))))))

(declare-fun d!1667578 () Bool)

(declare-fun e!3220252 () Bool)

(assert (=> d!1667578 e!3220252))

(declare-fun res!2196820 () Bool)

(assert (=> d!1667578 (=> res!2196820 e!3220252)))

(declare-fun lt!2126366 () Bool)

(assert (=> d!1667578 (= res!2196820 (not lt!2126366))))

(assert (=> d!1667578 (= lt!2126366 e!3220250)))

(declare-fun res!2196818 () Bool)

(assert (=> d!1667578 (=> res!2196818 e!3220250)))

(assert (=> d!1667578 (= res!2196818 ((_ is Nil!60029) (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (=> d!1667578 (= (isPrefix!5730 (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) (tail!10130 input!5817)) lt!2126366)))

(declare-fun b!5168175 () Bool)

(assert (=> b!5168175 (= e!3220252 (>= (size!39633 (tail!10130 input!5817)) (size!39633 (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))))

(assert (= (and d!1667578 (not res!2196818)) b!5168172))

(assert (= (and b!5168172 res!2196819) b!5168173))

(assert (= (and b!5168173 res!2196817) b!5168174))

(assert (= (and d!1667578 (not res!2196820)) b!5168175))

(assert (=> b!5168173 m!6218964))

(declare-fun m!6219328 () Bool)

(assert (=> b!5168173 m!6219328))

(assert (=> b!5168173 m!6218302))

(assert (=> b!5168173 m!6218788))

(assert (=> b!5168174 m!6218964))

(declare-fun m!6219330 () Bool)

(assert (=> b!5168174 m!6219330))

(assert (=> b!5168174 m!6218302))

(assert (=> b!5168174 m!6218792))

(assert (=> b!5168174 m!6219330))

(assert (=> b!5168174 m!6218792))

(declare-fun m!6219332 () Bool)

(assert (=> b!5168174 m!6219332))

(assert (=> b!5168175 m!6218302))

(assert (=> b!5168175 m!6218796))

(assert (=> b!5168175 m!6218964))

(declare-fun m!6219334 () Bool)

(assert (=> b!5168175 m!6219334))

(assert (=> b!5167948 d!1667578))

(declare-fun d!1667580 () Bool)

(assert (=> d!1667580 (= (tail!10130 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))) (t!373306 (++!13121 testedP!294 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(assert (=> b!5167948 d!1667580))

(assert (=> b!5167948 d!1667332))

(declare-fun d!1667582 () Bool)

(declare-fun lt!2126367 () Int)

(assert (=> d!1667582 (>= lt!2126367 0)))

(declare-fun e!3220253 () Int)

(assert (=> d!1667582 (= lt!2126367 e!3220253)))

(declare-fun c!889413 () Bool)

(assert (=> d!1667582 (= c!889413 ((_ is Nil!60029) (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))

(assert (=> d!1667582 (= (size!39633 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))) lt!2126367)))

(declare-fun b!5168176 () Bool)

(assert (=> b!5168176 (= e!3220253 0)))

(declare-fun b!5168177 () Bool)

(assert (=> b!5168177 (= e!3220253 (+ 1 (size!39633 (t!373306 (t!373306 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))))

(assert (= (and d!1667582 c!889413) b!5168176))

(assert (= (and d!1667582 (not c!889413)) b!5168177))

(declare-fun m!6219336 () Bool)

(assert (=> b!5168177 m!6219336))

(assert (=> b!5167827 d!1667582))

(declare-fun d!1667584 () Bool)

(declare-fun c!889414 () Bool)

(assert (=> d!1667584 (= c!889414 ((_ is Nil!60029) lt!2126306))))

(declare-fun e!3220254 () (InoxSet C!29464))

(assert (=> d!1667584 (= (content!10637 lt!2126306) e!3220254)))

(declare-fun b!5168178 () Bool)

(assert (=> b!5168178 (= e!3220254 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168179 () Bool)

(assert (=> b!5168179 (= e!3220254 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126306) true) (content!10637 (t!373306 lt!2126306))))))

(assert (= (and d!1667584 c!889414) b!5168178))

(assert (= (and d!1667584 (not c!889414)) b!5168179))

(declare-fun m!6219338 () Bool)

(assert (=> b!5168179 m!6219338))

(declare-fun m!6219340 () Bool)

(assert (=> b!5168179 m!6219340))

(assert (=> d!1667390 d!1667584))

(assert (=> d!1667390 d!1667346))

(declare-fun d!1667586 () Bool)

(declare-fun c!889415 () Bool)

(assert (=> d!1667586 (= c!889415 ((_ is Nil!60029) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))

(declare-fun e!3220255 () (InoxSet C!29464))

(assert (=> d!1667586 (= (content!10637 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) e!3220255)))

(declare-fun b!5168180 () Bool)

(assert (=> b!5168180 (= e!3220255 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168181 () Bool)

(assert (=> b!5168181 (= e!3220255 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) true) (content!10637 (t!373306 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (= (and d!1667586 c!889415) b!5168180))

(assert (= (and d!1667586 (not c!889415)) b!5168181))

(declare-fun m!6219342 () Bool)

(assert (=> b!5168181 m!6219342))

(declare-fun m!6219344 () Bool)

(assert (=> b!5168181 m!6219344))

(assert (=> d!1667390 d!1667586))

(declare-fun bs!1203073 () Bool)

(declare-fun d!1667588 () Bool)

(assert (= bs!1203073 (and d!1667588 d!1667560)))

(declare-fun lambda!257982 () Int)

(assert (=> bs!1203073 (not (= lambda!257982 lambda!257972))))

(declare-fun bs!1203074 () Bool)

(assert (= bs!1203074 (and d!1667588 d!1667568)))

(assert (=> bs!1203074 (not (= lambda!257982 lambda!257979))))

(declare-fun bs!1203075 () Bool)

(assert (= bs!1203075 (and d!1667588 d!1667514)))

(assert (=> bs!1203075 (= (= lambda!257912 lambda!257963) (= lambda!257982 lambda!257971))))

(declare-fun bs!1203076 () Bool)

(assert (= bs!1203076 (and d!1667588 d!1667372)))

(assert (=> bs!1203076 (not (= lambda!257982 lambda!257963))))

(declare-fun bs!1203077 () Bool)

(assert (= bs!1203077 (and d!1667588 d!1667116)))

(assert (=> bs!1203077 (not (= lambda!257982 lambda!257912))))

(declare-fun bs!1203078 () Bool)

(assert (= bs!1203078 (and d!1667588 b!5167935)))

(assert (=> bs!1203078 (not (= lambda!257982 lambda!257965))))

(declare-fun bs!1203079 () Bool)

(assert (= bs!1203079 (and d!1667588 b!5167934)))

(assert (=> bs!1203079 (not (= lambda!257982 lambda!257964))))

(assert (=> d!1667588 true))

(assert (=> d!1667588 (< (dynLambda!23865 order!27031 lambda!257912) (dynLambda!23865 order!27031 lambda!257982))))

(assert (=> d!1667588 (= (exists!1904 (toList!8445 z!4581) lambda!257912) (not (forall!14120 (toList!8445 z!4581) lambda!257982)))))

(declare-fun bs!1203080 () Bool)

(assert (= bs!1203080 d!1667588))

(assert (=> bs!1203080 m!6218906))

(declare-fun m!6219346 () Bool)

(assert (=> bs!1203080 m!6219346))

(assert (=> d!1667368 d!1667588))

(assert (=> d!1667368 d!1667516))

(declare-fun d!1667590 () Bool)

(declare-fun res!2196823 () Bool)

(assert (=> d!1667590 (= res!2196823 (exists!1904 (toList!8445 z!4581) lambda!257912))))

(assert (=> d!1667590 true))

(assert (=> d!1667590 (= (choose!38251 z!4581 lambda!257912) res!2196823)))

(declare-fun bs!1203081 () Bool)

(assert (= bs!1203081 d!1667590))

(assert (=> bs!1203081 m!6218906))

(assert (=> bs!1203081 m!6218906))

(assert (=> bs!1203081 m!6218908))

(assert (=> d!1667368 d!1667590))

(declare-fun d!1667592 () Bool)

(declare-fun c!889416 () Bool)

(assert (=> d!1667592 (= c!889416 ((_ is Nil!60029) lt!2126299))))

(declare-fun e!3220256 () (InoxSet C!29464))

(assert (=> d!1667592 (= (content!10637 lt!2126299) e!3220256)))

(declare-fun b!5168182 () Bool)

(assert (=> b!5168182 (= e!3220256 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168183 () Bool)

(assert (=> b!5168183 (= e!3220256 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126299) true) (content!10637 (t!373306 lt!2126299))))))

(assert (= (and d!1667592 c!889416) b!5168182))

(assert (= (and d!1667592 (not c!889416)) b!5168183))

(declare-fun m!6219348 () Bool)

(assert (=> b!5168183 m!6219348))

(declare-fun m!6219350 () Bool)

(assert (=> b!5168183 m!6219350))

(assert (=> d!1667376 d!1667592))

(assert (=> d!1667376 d!1667346))

(declare-fun d!1667594 () Bool)

(declare-fun c!889417 () Bool)

(assert (=> d!1667594 (= c!889417 ((_ is Nil!60029) lt!2125929))))

(declare-fun e!3220257 () (InoxSet C!29464))

(assert (=> d!1667594 (= (content!10637 lt!2125929) e!3220257)))

(declare-fun b!5168184 () Bool)

(assert (=> b!5168184 (= e!3220257 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168185 () Bool)

(assert (=> b!5168185 (= e!3220257 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2125929) true) (content!10637 (t!373306 lt!2125929))))))

(assert (= (and d!1667594 c!889417) b!5168184))

(assert (= (and d!1667594 (not c!889417)) b!5168185))

(declare-fun m!6219352 () Bool)

(assert (=> b!5168185 m!6219352))

(declare-fun m!6219354 () Bool)

(assert (=> b!5168185 m!6219354))

(assert (=> d!1667376 d!1667594))

(declare-fun d!1667596 () Bool)

(assert (=> d!1667596 (= (head!11021 (tail!10130 testedP!294)) (h!66477 (tail!10130 testedP!294)))))

(assert (=> b!5167957 d!1667596))

(assert (=> b!5167957 d!1667546))

(declare-fun b!5168187 () Bool)

(declare-fun e!3220258 () List!60153)

(assert (=> b!5168187 (= e!3220258 (Cons!60029 (h!66477 (t!373306 (_1!35177 lt!2126109))) (++!13121 (t!373306 (t!373306 (_1!35177 lt!2126109))) (_2!35177 lt!2126109))))))

(declare-fun b!5168189 () Bool)

(declare-fun e!3220259 () Bool)

(declare-fun lt!2126368 () List!60153)

(assert (=> b!5168189 (= e!3220259 (or (not (= (_2!35177 lt!2126109) Nil!60029)) (= lt!2126368 (t!373306 (_1!35177 lt!2126109)))))))

(declare-fun b!5168188 () Bool)

(declare-fun res!2196825 () Bool)

(assert (=> b!5168188 (=> (not res!2196825) (not e!3220259))))

(assert (=> b!5168188 (= res!2196825 (= (size!39633 lt!2126368) (+ (size!39633 (t!373306 (_1!35177 lt!2126109))) (size!39633 (_2!35177 lt!2126109)))))))

(declare-fun d!1667598 () Bool)

(assert (=> d!1667598 e!3220259))

(declare-fun res!2196824 () Bool)

(assert (=> d!1667598 (=> (not res!2196824) (not e!3220259))))

(assert (=> d!1667598 (= res!2196824 (= (content!10637 lt!2126368) ((_ map or) (content!10637 (t!373306 (_1!35177 lt!2126109))) (content!10637 (_2!35177 lt!2126109)))))))

(assert (=> d!1667598 (= lt!2126368 e!3220258)))

(declare-fun c!889418 () Bool)

(assert (=> d!1667598 (= c!889418 ((_ is Nil!60029) (t!373306 (_1!35177 lt!2126109))))))

(assert (=> d!1667598 (= (++!13121 (t!373306 (_1!35177 lt!2126109)) (_2!35177 lt!2126109)) lt!2126368)))

(declare-fun b!5168186 () Bool)

(assert (=> b!5168186 (= e!3220258 (_2!35177 lt!2126109))))

(assert (= (and d!1667598 c!889418) b!5168186))

(assert (= (and d!1667598 (not c!889418)) b!5168187))

(assert (= (and d!1667598 res!2196824) b!5168188))

(assert (= (and b!5168188 res!2196825) b!5168189))

(declare-fun m!6219356 () Bool)

(assert (=> b!5168187 m!6219356))

(declare-fun m!6219358 () Bool)

(assert (=> b!5168188 m!6219358))

(assert (=> b!5168188 m!6218902))

(assert (=> b!5168188 m!6218950))

(declare-fun m!6219360 () Bool)

(assert (=> d!1667598 m!6219360))

(assert (=> d!1667598 m!6219296))

(assert (=> d!1667598 m!6218956))

(assert (=> b!5167941 d!1667598))

(declare-fun d!1667600 () Bool)

(assert (=> d!1667600 (= input!5817 lt!2126132)))

(declare-fun lt!2126369 () Unit!151532)

(assert (=> d!1667600 (= lt!2126369 (choose!38248 input!5817 lt!2126132 input!5817))))

(assert (=> d!1667600 (isPrefix!5730 input!5817 input!5817)))

(assert (=> d!1667600 (= (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 lt!2126132 input!5817) lt!2126369)))

(declare-fun bs!1203082 () Bool)

(assert (= bs!1203082 d!1667600))

(declare-fun m!6219362 () Bool)

(assert (=> bs!1203082 m!6219362))

(assert (=> bs!1203082 m!6218250))

(assert (=> bm!362640 d!1667600))

(declare-fun d!1667602 () Bool)

(declare-fun c!889419 () Bool)

(assert (=> d!1667602 (= c!889419 ((_ is Nil!60029) lt!2126309))))

(declare-fun e!3220260 () (InoxSet C!29464))

(assert (=> d!1667602 (= (content!10637 lt!2126309) e!3220260)))

(declare-fun b!5168190 () Bool)

(assert (=> b!5168190 (= e!3220260 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168191 () Bool)

(assert (=> b!5168191 (= e!3220260 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126309) true) (content!10637 (t!373306 lt!2126309))))))

(assert (= (and d!1667602 c!889419) b!5168190))

(assert (= (and d!1667602 (not c!889419)) b!5168191))

(declare-fun m!6219364 () Bool)

(assert (=> b!5168191 m!6219364))

(declare-fun m!6219366 () Bool)

(assert (=> b!5168191 m!6219366))

(assert (=> d!1667402 d!1667602))

(assert (=> d!1667402 d!1667346))

(declare-fun d!1667604 () Bool)

(declare-fun c!889420 () Bool)

(assert (=> d!1667604 (= c!889420 ((_ is Nil!60029) (Cons!60029 lt!2126119 Nil!60029)))))

(declare-fun e!3220261 () (InoxSet C!29464))

(assert (=> d!1667604 (= (content!10637 (Cons!60029 lt!2126119 Nil!60029)) e!3220261)))

(declare-fun b!5168192 () Bool)

(assert (=> b!5168192 (= e!3220261 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168193 () Bool)

(assert (=> b!5168193 (= e!3220261 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 (Cons!60029 lt!2126119 Nil!60029)) true) (content!10637 (t!373306 (Cons!60029 lt!2126119 Nil!60029)))))))

(assert (= (and d!1667604 c!889420) b!5168192))

(assert (= (and d!1667604 (not c!889420)) b!5168193))

(declare-fun m!6219368 () Bool)

(assert (=> b!5168193 m!6219368))

(declare-fun m!6219370 () Bool)

(assert (=> b!5168193 m!6219370))

(assert (=> d!1667402 d!1667604))

(declare-fun bs!1203083 () Bool)

(declare-fun d!1667606 () Bool)

(assert (= bs!1203083 (and d!1667606 d!1667294)))

(declare-fun lambda!257983 () Int)

(assert (=> bs!1203083 (= (= call!362647 call!362625) (= lambda!257983 lambda!257933))))

(declare-fun bs!1203084 () Bool)

(assert (= bs!1203084 (and d!1667606 d!1667326)))

(assert (=> bs!1203084 (= (= call!362647 (h!66477 testedP!294)) (= lambda!257983 lambda!257950))))

(declare-fun bs!1203085 () Bool)

(assert (= bs!1203085 (and d!1667606 d!1667424)))

(assert (=> bs!1203085 (= (= call!362647 (h!66477 (t!373306 testedP!294))) (= lambda!257983 lambda!257967))))

(assert (=> d!1667606 true))

(assert (=> d!1667606 (= (derivationStepZipper!953 call!362624 call!362647) (flatMap!437 call!362624 lambda!257983))))

(declare-fun bs!1203086 () Bool)

(assert (= bs!1203086 d!1667606))

(declare-fun m!6219372 () Bool)

(assert (=> bs!1203086 m!6219372))

(assert (=> bm!362639 d!1667606))

(declare-fun bs!1203087 () Bool)

(declare-fun d!1667608 () Bool)

(assert (= bs!1203087 (and d!1667608 d!1667588)))

(declare-fun lambda!257986 () Int)

(assert (=> bs!1203087 (= (= lambda!257963 lambda!257912) (= lambda!257986 lambda!257982))))

(declare-fun bs!1203088 () Bool)

(assert (= bs!1203088 (and d!1667608 d!1667560)))

(assert (=> bs!1203088 (not (= lambda!257986 lambda!257972))))

(declare-fun bs!1203089 () Bool)

(assert (= bs!1203089 (and d!1667608 d!1667568)))

(assert (=> bs!1203089 (not (= lambda!257986 lambda!257979))))

(declare-fun bs!1203090 () Bool)

(assert (= bs!1203090 (and d!1667608 d!1667514)))

(assert (=> bs!1203090 (= lambda!257986 lambda!257971)))

(declare-fun bs!1203091 () Bool)

(assert (= bs!1203091 (and d!1667608 d!1667372)))

(assert (=> bs!1203091 (not (= lambda!257986 lambda!257963))))

(declare-fun bs!1203092 () Bool)

(assert (= bs!1203092 (and d!1667608 d!1667116)))

(assert (=> bs!1203092 (not (= lambda!257986 lambda!257912))))

(declare-fun bs!1203093 () Bool)

(assert (= bs!1203093 (and d!1667608 b!5167935)))

(assert (=> bs!1203093 (not (= lambda!257986 lambda!257965))))

(declare-fun bs!1203094 () Bool)

(assert (= bs!1203094 (and d!1667608 b!5167934)))

(assert (=> bs!1203094 (not (= lambda!257986 lambda!257964))))

(assert (=> d!1667608 true))

(assert (=> d!1667608 (< (dynLambda!23865 order!27031 lambda!257963) (dynLambda!23865 order!27031 lambda!257986))))

(assert (=> d!1667608 (not (exists!1904 lt!2126293 lambda!257986))))

(declare-fun lt!2126372 () Unit!151532)

(declare-fun choose!38264 (List!60156 Int) Unit!151532)

(assert (=> d!1667608 (= lt!2126372 (choose!38264 lt!2126293 lambda!257963))))

(assert (=> d!1667608 (forall!14120 lt!2126293 lambda!257963)))

(assert (=> d!1667608 (= (lemmaForallThenNotExists!431 lt!2126293 lambda!257963) lt!2126372)))

(declare-fun bs!1203095 () Bool)

(assert (= bs!1203095 d!1667608))

(declare-fun m!6219374 () Bool)

(assert (=> bs!1203095 m!6219374))

(declare-fun m!6219376 () Bool)

(assert (=> bs!1203095 m!6219376))

(declare-fun m!6219378 () Bool)

(assert (=> bs!1203095 m!6219378))

(assert (=> b!5167935 d!1667608))

(declare-fun b!5168195 () Bool)

(declare-fun e!3220264 () List!60153)

(assert (=> b!5168195 (= e!3220264 (Cons!60029 (h!66477 (t!373306 (t!373306 testedP!294))) (++!13121 (t!373306 (t!373306 (t!373306 testedP!294))) (Cons!60029 (head!11021 lt!2125929) Nil!60029))))))

(declare-fun lt!2126373 () List!60153)

(declare-fun b!5168197 () Bool)

(declare-fun e!3220265 () Bool)

(assert (=> b!5168197 (= e!3220265 (or (not (= (Cons!60029 (head!11021 lt!2125929) Nil!60029) Nil!60029)) (= lt!2126373 (t!373306 (t!373306 testedP!294)))))))

(declare-fun b!5168196 () Bool)

(declare-fun res!2196827 () Bool)

(assert (=> b!5168196 (=> (not res!2196827) (not e!3220265))))

(assert (=> b!5168196 (= res!2196827 (= (size!39633 lt!2126373) (+ (size!39633 (t!373306 (t!373306 testedP!294))) (size!39633 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(declare-fun d!1667610 () Bool)

(assert (=> d!1667610 e!3220265))

(declare-fun res!2196826 () Bool)

(assert (=> d!1667610 (=> (not res!2196826) (not e!3220265))))

(assert (=> d!1667610 (= res!2196826 (= (content!10637 lt!2126373) ((_ map or) (content!10637 (t!373306 (t!373306 testedP!294))) (content!10637 (Cons!60029 (head!11021 lt!2125929) Nil!60029)))))))

(assert (=> d!1667610 (= lt!2126373 e!3220264)))

(declare-fun c!889421 () Bool)

(assert (=> d!1667610 (= c!889421 ((_ is Nil!60029) (t!373306 (t!373306 testedP!294))))))

(assert (=> d!1667610 (= (++!13121 (t!373306 (t!373306 testedP!294)) (Cons!60029 (head!11021 lt!2125929) Nil!60029)) lt!2126373)))

(declare-fun b!5168194 () Bool)

(assert (=> b!5168194 (= e!3220264 (Cons!60029 (head!11021 lt!2125929) Nil!60029))))

(assert (= (and d!1667610 c!889421) b!5168194))

(assert (= (and d!1667610 (not c!889421)) b!5168195))

(assert (= (and d!1667610 res!2196826) b!5168196))

(assert (= (and b!5168196 res!2196827) b!5168197))

(declare-fun m!6219380 () Bool)

(assert (=> b!5168195 m!6219380))

(declare-fun m!6219382 () Bool)

(assert (=> b!5168196 m!6219382))

(assert (=> b!5168196 m!6218722))

(assert (=> b!5168196 m!6218288))

(declare-fun m!6219384 () Bool)

(assert (=> d!1667610 m!6219384))

(assert (=> d!1667610 m!6219194))

(assert (=> d!1667610 m!6218294))

(assert (=> b!5167833 d!1667610))

(assert (=> b!5167959 d!1667412))

(declare-fun d!1667612 () Bool)

(declare-fun lt!2126374 () Int)

(assert (=> d!1667612 (>= lt!2126374 0)))

(declare-fun e!3220266 () Int)

(assert (=> d!1667612 (= lt!2126374 e!3220266)))

(declare-fun c!889422 () Bool)

(assert (=> d!1667612 (= c!889422 ((_ is Nil!60029) (tail!10130 testedP!294)))))

(assert (=> d!1667612 (= (size!39633 (tail!10130 testedP!294)) lt!2126374)))

(declare-fun b!5168198 () Bool)

(assert (=> b!5168198 (= e!3220266 0)))

(declare-fun b!5168199 () Bool)

(assert (=> b!5168199 (= e!3220266 (+ 1 (size!39633 (t!373306 (tail!10130 testedP!294)))))))

(assert (= (and d!1667612 c!889422) b!5168198))

(assert (= (and d!1667612 (not c!889422)) b!5168199))

(declare-fun m!6219386 () Bool)

(assert (=> b!5168199 m!6219386))

(assert (=> b!5167959 d!1667612))

(declare-fun b!5168201 () Bool)

(declare-fun res!2196828 () Bool)

(declare-fun e!3220268 () Bool)

(assert (=> b!5168201 (=> (not res!2196828) (not e!3220268))))

(assert (=> b!5168201 (= res!2196828 (= (head!11021 (tail!10130 testedP!294)) (head!11021 (tail!10130 (++!13121 testedP!294 lt!2125929)))))))

(declare-fun b!5168200 () Bool)

(declare-fun e!3220267 () Bool)

(assert (=> b!5168200 (= e!3220267 e!3220268)))

(declare-fun res!2196830 () Bool)

(assert (=> b!5168200 (=> (not res!2196830) (not e!3220268))))

(assert (=> b!5168200 (= res!2196830 (not ((_ is Nil!60029) (tail!10130 (++!13121 testedP!294 lt!2125929)))))))

(declare-fun b!5168202 () Bool)

(assert (=> b!5168202 (= e!3220268 (isPrefix!5730 (tail!10130 (tail!10130 testedP!294)) (tail!10130 (tail!10130 (++!13121 testedP!294 lt!2125929)))))))

(declare-fun d!1667614 () Bool)

(declare-fun e!3220269 () Bool)

(assert (=> d!1667614 e!3220269))

(declare-fun res!2196831 () Bool)

(assert (=> d!1667614 (=> res!2196831 e!3220269)))

(declare-fun lt!2126375 () Bool)

(assert (=> d!1667614 (= res!2196831 (not lt!2126375))))

(assert (=> d!1667614 (= lt!2126375 e!3220267)))

(declare-fun res!2196829 () Bool)

(assert (=> d!1667614 (=> res!2196829 e!3220267)))

(assert (=> d!1667614 (= res!2196829 ((_ is Nil!60029) (tail!10130 testedP!294)))))

(assert (=> d!1667614 (= (isPrefix!5730 (tail!10130 testedP!294) (tail!10130 (++!13121 testedP!294 lt!2125929))) lt!2126375)))

(declare-fun b!5168203 () Bool)

(assert (=> b!5168203 (= e!3220269 (>= (size!39633 (tail!10130 (++!13121 testedP!294 lt!2125929))) (size!39633 (tail!10130 testedP!294))))))

(assert (= (and d!1667614 (not res!2196829)) b!5168200))

(assert (= (and b!5168200 res!2196830) b!5168201))

(assert (= (and b!5168201 res!2196828) b!5168202))

(assert (= (and d!1667614 (not res!2196831)) b!5168203))

(assert (=> b!5168201 m!6218360))

(assert (=> b!5168201 m!6218984))

(assert (=> b!5168201 m!6218914))

(declare-fun m!6219388 () Bool)

(assert (=> b!5168201 m!6219388))

(assert (=> b!5168202 m!6218360))

(assert (=> b!5168202 m!6218986))

(assert (=> b!5168202 m!6218914))

(declare-fun m!6219390 () Bool)

(assert (=> b!5168202 m!6219390))

(assert (=> b!5168202 m!6218986))

(assert (=> b!5168202 m!6219390))

(declare-fun m!6219392 () Bool)

(assert (=> b!5168202 m!6219392))

(assert (=> b!5168203 m!6218914))

(declare-fun m!6219394 () Bool)

(assert (=> b!5168203 m!6219394))

(assert (=> b!5168203 m!6218360))

(assert (=> b!5168203 m!6218990))

(assert (=> b!5167928 d!1667614))

(assert (=> b!5167928 d!1667396))

(declare-fun d!1667616 () Bool)

(assert (=> d!1667616 (= (tail!10130 (++!13121 testedP!294 lt!2125929)) (t!373306 (++!13121 testedP!294 lt!2125929)))))

(assert (=> b!5167928 d!1667616))

(declare-fun bs!1203096 () Bool)

(declare-fun d!1667618 () Bool)

(assert (= bs!1203096 (and d!1667618 d!1667588)))

(declare-fun lambda!257987 () Int)

(assert (=> bs!1203096 (not (= lambda!257987 lambda!257982))))

(declare-fun bs!1203097 () Bool)

(assert (= bs!1203097 (and d!1667618 d!1667560)))

(assert (=> bs!1203097 (not (= lambda!257987 lambda!257972))))

(declare-fun bs!1203098 () Bool)

(assert (= bs!1203098 (and d!1667618 d!1667568)))

(assert (=> bs!1203098 (not (= lambda!257987 lambda!257979))))

(declare-fun bs!1203099 () Bool)

(assert (= bs!1203099 (and d!1667618 d!1667514)))

(assert (=> bs!1203099 (not (= lambda!257987 lambda!257971))))

(declare-fun bs!1203100 () Bool)

(assert (= bs!1203100 (and d!1667618 d!1667116)))

(assert (=> bs!1203100 (not (= lambda!257987 lambda!257912))))

(declare-fun bs!1203101 () Bool)

(assert (= bs!1203101 (and d!1667618 b!5167935)))

(assert (=> bs!1203101 (not (= lambda!257987 lambda!257965))))

(declare-fun bs!1203102 () Bool)

(assert (= bs!1203102 (and d!1667618 b!5167934)))

(assert (=> bs!1203102 (not (= lambda!257987 lambda!257964))))

(declare-fun bs!1203103 () Bool)

(assert (= bs!1203103 (and d!1667618 d!1667372)))

(assert (=> bs!1203103 (= lambda!257987 lambda!257963)))

(declare-fun bs!1203104 () Bool)

(assert (= bs!1203104 (and d!1667618 d!1667608)))

(assert (=> bs!1203104 (not (= lambda!257987 lambda!257986))))

(declare-fun bs!1203105 () Bool)

(declare-fun b!5168204 () Bool)

(assert (= bs!1203105 (and b!5168204 d!1667588)))

(declare-fun lambda!257988 () Int)

(assert (=> bs!1203105 (not (= lambda!257988 lambda!257982))))

(declare-fun bs!1203106 () Bool)

(assert (= bs!1203106 (and b!5168204 d!1667560)))

(assert (=> bs!1203106 (not (= lambda!257988 lambda!257972))))

(declare-fun bs!1203107 () Bool)

(assert (= bs!1203107 (and b!5168204 d!1667568)))

(assert (=> bs!1203107 (= lambda!257988 lambda!257979)))

(declare-fun bs!1203108 () Bool)

(assert (= bs!1203108 (and b!5168204 d!1667514)))

(assert (=> bs!1203108 (not (= lambda!257988 lambda!257971))))

(declare-fun bs!1203109 () Bool)

(assert (= bs!1203109 (and b!5168204 d!1667116)))

(assert (=> bs!1203109 (not (= lambda!257988 lambda!257912))))

(declare-fun bs!1203110 () Bool)

(assert (= bs!1203110 (and b!5168204 d!1667618)))

(assert (=> bs!1203110 (not (= lambda!257988 lambda!257987))))

(declare-fun bs!1203111 () Bool)

(assert (= bs!1203111 (and b!5168204 b!5167935)))

(assert (=> bs!1203111 (= lambda!257988 lambda!257965)))

(declare-fun bs!1203112 () Bool)

(assert (= bs!1203112 (and b!5168204 b!5167934)))

(assert (=> bs!1203112 (= lambda!257988 lambda!257964)))

(declare-fun bs!1203113 () Bool)

(assert (= bs!1203113 (and b!5168204 d!1667372)))

(assert (=> bs!1203113 (not (= lambda!257988 lambda!257963))))

(declare-fun bs!1203114 () Bool)

(assert (= bs!1203114 (and b!5168204 d!1667608)))

(assert (=> bs!1203114 (not (= lambda!257988 lambda!257986))))

(declare-fun bs!1203115 () Bool)

(declare-fun b!5168205 () Bool)

(assert (= bs!1203115 (and b!5168205 d!1667588)))

(declare-fun lambda!257989 () Int)

(assert (=> bs!1203115 (not (= lambda!257989 lambda!257982))))

(declare-fun bs!1203116 () Bool)

(assert (= bs!1203116 (and b!5168205 b!5168204)))

(assert (=> bs!1203116 (= lambda!257989 lambda!257988)))

(declare-fun bs!1203117 () Bool)

(assert (= bs!1203117 (and b!5168205 d!1667560)))

(assert (=> bs!1203117 (not (= lambda!257989 lambda!257972))))

(declare-fun bs!1203118 () Bool)

(assert (= bs!1203118 (and b!5168205 d!1667568)))

(assert (=> bs!1203118 (= lambda!257989 lambda!257979)))

(declare-fun bs!1203119 () Bool)

(assert (= bs!1203119 (and b!5168205 d!1667514)))

(assert (=> bs!1203119 (not (= lambda!257989 lambda!257971))))

(declare-fun bs!1203120 () Bool)

(assert (= bs!1203120 (and b!5168205 d!1667116)))

(assert (=> bs!1203120 (not (= lambda!257989 lambda!257912))))

(declare-fun bs!1203121 () Bool)

(assert (= bs!1203121 (and b!5168205 d!1667618)))

(assert (=> bs!1203121 (not (= lambda!257989 lambda!257987))))

(declare-fun bs!1203122 () Bool)

(assert (= bs!1203122 (and b!5168205 b!5167935)))

(assert (=> bs!1203122 (= lambda!257989 lambda!257965)))

(declare-fun bs!1203123 () Bool)

(assert (= bs!1203123 (and b!5168205 b!5167934)))

(assert (=> bs!1203123 (= lambda!257989 lambda!257964)))

(declare-fun bs!1203124 () Bool)

(assert (= bs!1203124 (and b!5168205 d!1667372)))

(assert (=> bs!1203124 (not (= lambda!257989 lambda!257963))))

(declare-fun bs!1203125 () Bool)

(assert (= bs!1203125 (and b!5168205 d!1667608)))

(assert (=> bs!1203125 (not (= lambda!257989 lambda!257986))))

(declare-fun call!362666 () Bool)

(declare-fun bm!362661 () Bool)

(declare-fun lt!2126383 () List!60156)

(declare-fun lt!2126381 () List!60156)

(declare-fun c!889423 () Bool)

(assert (=> bm!362661 (= call!362666 (exists!1904 (ite c!889423 lt!2126383 lt!2126381) (ite c!889423 lambda!257988 lambda!257989)))))

(declare-fun lt!2126376 () Bool)

(assert (=> d!1667618 (= lt!2126376 (isEmpty!32140 (getLanguageWitness!998 call!362624)))))

(assert (=> d!1667618 (= lt!2126376 (forall!14118 call!362624 lambda!257987))))

(declare-fun lt!2126382 () Unit!151532)

(declare-fun e!3220270 () Unit!151532)

(assert (=> d!1667618 (= lt!2126382 e!3220270)))

(assert (=> d!1667618 (= c!889423 (not (forall!14118 call!362624 lambda!257987)))))

(assert (=> d!1667618 (= (lostCauseZipper!1320 call!362624) lt!2126376)))

(declare-fun Unit!151554 () Unit!151532)

(assert (=> b!5168204 (= e!3220270 Unit!151554)))

(declare-fun call!362665 () List!60156)

(assert (=> b!5168204 (= lt!2126383 call!362665)))

(declare-fun lt!2126377 () Unit!151532)

(assert (=> b!5168204 (= lt!2126377 (lemmaNotForallThenExists!464 lt!2126383 lambda!257987))))

(assert (=> b!5168204 call!362666))

(declare-fun lt!2126378 () Unit!151532)

(assert (=> b!5168204 (= lt!2126378 lt!2126377)))

(declare-fun bm!362660 () Bool)

(assert (=> bm!362660 (= call!362665 (toList!8445 call!362624))))

(declare-fun Unit!151555 () Unit!151532)

(assert (=> b!5168205 (= e!3220270 Unit!151555)))

(assert (=> b!5168205 (= lt!2126381 call!362665)))

(declare-fun lt!2126380 () Unit!151532)

(assert (=> b!5168205 (= lt!2126380 (lemmaForallThenNotExists!431 lt!2126381 lambda!257987))))

(assert (=> b!5168205 (not call!362666)))

(declare-fun lt!2126379 () Unit!151532)

(assert (=> b!5168205 (= lt!2126379 lt!2126380)))

(assert (= (and d!1667618 c!889423) b!5168204))

(assert (= (and d!1667618 (not c!889423)) b!5168205))

(assert (= (or b!5168204 b!5168205) bm!362660))

(assert (= (or b!5168204 b!5168205) bm!362661))

(declare-fun m!6219396 () Bool)

(assert (=> bm!362661 m!6219396))

(declare-fun m!6219398 () Bool)

(assert (=> b!5168205 m!6219398))

(declare-fun m!6219400 () Bool)

(assert (=> bm!362660 m!6219400))

(declare-fun m!6219402 () Bool)

(assert (=> b!5168204 m!6219402))

(declare-fun m!6219404 () Bool)

(assert (=> d!1667618 m!6219404))

(assert (=> d!1667618 m!6219404))

(declare-fun m!6219406 () Bool)

(assert (=> d!1667618 m!6219406))

(declare-fun m!6219408 () Bool)

(assert (=> d!1667618 m!6219408))

(assert (=> d!1667618 m!6219408))

(assert (=> d!1667338 d!1667618))

(assert (=> d!1667338 d!1667474))

(declare-fun b!5168207 () Bool)

(declare-fun e!3220271 () List!60153)

(assert (=> b!5168207 (= e!3220271 (Cons!60029 (h!66477 lt!2126132) (++!13121 (t!373306 lt!2126132) call!362627)))))

(declare-fun lt!2126384 () List!60153)

(declare-fun b!5168209 () Bool)

(declare-fun e!3220272 () Bool)

(assert (=> b!5168209 (= e!3220272 (or (not (= call!362627 Nil!60029)) (= lt!2126384 lt!2126132)))))

(declare-fun b!5168208 () Bool)

(declare-fun res!2196833 () Bool)

(assert (=> b!5168208 (=> (not res!2196833) (not e!3220272))))

(assert (=> b!5168208 (= res!2196833 (= (size!39633 lt!2126384) (+ (size!39633 lt!2126132) (size!39633 call!362627))))))

(declare-fun d!1667620 () Bool)

(assert (=> d!1667620 e!3220272))

(declare-fun res!2196832 () Bool)

(assert (=> d!1667620 (=> (not res!2196832) (not e!3220272))))

(assert (=> d!1667620 (= res!2196832 (= (content!10637 lt!2126384) ((_ map or) (content!10637 lt!2126132) (content!10637 call!362627))))))

(assert (=> d!1667620 (= lt!2126384 e!3220271)))

(declare-fun c!889424 () Bool)

(assert (=> d!1667620 (= c!889424 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667620 (= (++!13121 lt!2126132 call!362627) lt!2126384)))

(declare-fun b!5168206 () Bool)

(assert (=> b!5168206 (= e!3220271 call!362627)))

(assert (= (and d!1667620 c!889424) b!5168206))

(assert (= (and d!1667620 (not c!889424)) b!5168207))

(assert (= (and d!1667620 res!2196832) b!5168208))

(assert (= (and b!5168208 res!2196833) b!5168209))

(declare-fun m!6219410 () Bool)

(assert (=> b!5168207 m!6219410))

(declare-fun m!6219412 () Bool)

(assert (=> b!5168208 m!6219412))

(assert (=> b!5168208 m!6218830))

(declare-fun m!6219414 () Bool)

(assert (=> b!5168208 m!6219414))

(declare-fun m!6219416 () Bool)

(assert (=> d!1667620 m!6219416))

(assert (=> d!1667620 m!6219104))

(declare-fun m!6219418 () Bool)

(assert (=> d!1667620 m!6219418))

(assert (=> d!1667338 d!1667620))

(declare-fun d!1667622 () Bool)

(assert (=> d!1667622 (= call!362627 lt!2126261)))

(declare-fun lt!2126385 () Unit!151532)

(assert (=> d!1667622 (= lt!2126385 (choose!38252 lt!2126132 call!362627 lt!2126132 lt!2126261 input!5817))))

(assert (=> d!1667622 (isPrefix!5730 lt!2126132 input!5817)))

(assert (=> d!1667622 (= (lemmaSamePrefixThenSameSuffix!2687 lt!2126132 call!362627 lt!2126132 lt!2126261 input!5817) lt!2126385)))

(declare-fun bs!1203126 () Bool)

(assert (= bs!1203126 d!1667622))

(declare-fun m!6219420 () Bool)

(assert (=> bs!1203126 m!6219420))

(assert (=> bs!1203126 m!6219110))

(assert (=> d!1667338 d!1667622))

(declare-fun d!1667624 () Bool)

(assert (=> d!1667624 (isPrefix!5730 lt!2126132 (++!13121 lt!2126132 call!362627))))

(declare-fun lt!2126386 () Unit!151532)

(assert (=> d!1667624 (= lt!2126386 (choose!38253 lt!2126132 call!362627))))

(assert (=> d!1667624 (= (lemmaConcatTwoListThenFirstIsPrefix!3581 lt!2126132 call!362627) lt!2126386)))

(declare-fun bs!1203127 () Bool)

(assert (= bs!1203127 d!1667624))

(assert (=> bs!1203127 m!6218816))

(assert (=> bs!1203127 m!6218816))

(assert (=> bs!1203127 m!6218818))

(declare-fun m!6219422 () Bool)

(assert (=> bs!1203127 m!6219422))

(assert (=> d!1667338 d!1667624))

(declare-fun b!5168211 () Bool)

(declare-fun e!3220273 () List!60153)

(assert (=> b!5168211 (= e!3220273 (Cons!60029 (h!66477 (_1!35177 lt!2126236)) (++!13121 (t!373306 (_1!35177 lt!2126236)) (_2!35177 lt!2126236))))))

(declare-fun b!5168213 () Bool)

(declare-fun e!3220274 () Bool)

(declare-fun lt!2126387 () List!60153)

(assert (=> b!5168213 (= e!3220274 (or (not (= (_2!35177 lt!2126236) Nil!60029)) (= lt!2126387 (_1!35177 lt!2126236))))))

(declare-fun b!5168212 () Bool)

(declare-fun res!2196835 () Bool)

(assert (=> b!5168212 (=> (not res!2196835) (not e!3220274))))

(assert (=> b!5168212 (= res!2196835 (= (size!39633 lt!2126387) (+ (size!39633 (_1!35177 lt!2126236)) (size!39633 (_2!35177 lt!2126236)))))))

(declare-fun d!1667626 () Bool)

(assert (=> d!1667626 e!3220274))

(declare-fun res!2196834 () Bool)

(assert (=> d!1667626 (=> (not res!2196834) (not e!3220274))))

(assert (=> d!1667626 (= res!2196834 (= (content!10637 lt!2126387) ((_ map or) (content!10637 (_1!35177 lt!2126236)) (content!10637 (_2!35177 lt!2126236)))))))

(assert (=> d!1667626 (= lt!2126387 e!3220273)))

(declare-fun c!889425 () Bool)

(assert (=> d!1667626 (= c!889425 ((_ is Nil!60029) (_1!35177 lt!2126236)))))

(assert (=> d!1667626 (= (++!13121 (_1!35177 lt!2126236) (_2!35177 lt!2126236)) lt!2126387)))

(declare-fun b!5168210 () Bool)

(assert (=> b!5168210 (= e!3220273 (_2!35177 lt!2126236))))

(assert (= (and d!1667626 c!889425) b!5168210))

(assert (= (and d!1667626 (not c!889425)) b!5168211))

(assert (= (and d!1667626 res!2196834) b!5168212))

(assert (= (and b!5168212 res!2196835) b!5168213))

(declare-fun m!6219424 () Bool)

(assert (=> b!5168211 m!6219424))

(declare-fun m!6219426 () Bool)

(assert (=> b!5168212 m!6219426))

(assert (=> b!5168212 m!6218828))

(declare-fun m!6219428 () Bool)

(assert (=> b!5168212 m!6219428))

(declare-fun m!6219430 () Bool)

(assert (=> d!1667626 m!6219430))

(declare-fun m!6219432 () Bool)

(assert (=> d!1667626 m!6219432))

(declare-fun m!6219434 () Bool)

(assert (=> d!1667626 m!6219434))

(assert (=> d!1667338 d!1667626))

(declare-fun b!5168215 () Bool)

(declare-fun res!2196836 () Bool)

(declare-fun e!3220276 () Bool)

(assert (=> b!5168215 (=> (not res!2196836) (not e!3220276))))

(assert (=> b!5168215 (= res!2196836 (= (head!11021 lt!2126132) (head!11021 (++!13121 lt!2126132 call!362627))))))

(declare-fun b!5168214 () Bool)

(declare-fun e!3220275 () Bool)

(assert (=> b!5168214 (= e!3220275 e!3220276)))

(declare-fun res!2196838 () Bool)

(assert (=> b!5168214 (=> (not res!2196838) (not e!3220276))))

(assert (=> b!5168214 (= res!2196838 (not ((_ is Nil!60029) (++!13121 lt!2126132 call!362627))))))

(declare-fun b!5168216 () Bool)

(assert (=> b!5168216 (= e!3220276 (isPrefix!5730 (tail!10130 lt!2126132) (tail!10130 (++!13121 lt!2126132 call!362627))))))

(declare-fun d!1667628 () Bool)

(declare-fun e!3220277 () Bool)

(assert (=> d!1667628 e!3220277))

(declare-fun res!2196839 () Bool)

(assert (=> d!1667628 (=> res!2196839 e!3220277)))

(declare-fun lt!2126388 () Bool)

(assert (=> d!1667628 (= res!2196839 (not lt!2126388))))

(assert (=> d!1667628 (= lt!2126388 e!3220275)))

(declare-fun res!2196837 () Bool)

(assert (=> d!1667628 (=> res!2196837 e!3220275)))

(assert (=> d!1667628 (= res!2196837 ((_ is Nil!60029) lt!2126132))))

(assert (=> d!1667628 (= (isPrefix!5730 lt!2126132 (++!13121 lt!2126132 call!362627)) lt!2126388)))

(declare-fun b!5168217 () Bool)

(assert (=> b!5168217 (= e!3220277 (>= (size!39633 (++!13121 lt!2126132 call!362627)) (size!39633 lt!2126132)))))

(assert (= (and d!1667628 (not res!2196837)) b!5168214))

(assert (= (and b!5168214 res!2196838) b!5168215))

(assert (= (and b!5168215 res!2196836) b!5168216))

(assert (= (and d!1667628 (not res!2196839)) b!5168217))

(declare-fun m!6219436 () Bool)

(assert (=> b!5168215 m!6219436))

(assert (=> b!5168215 m!6218816))

(declare-fun m!6219438 () Bool)

(assert (=> b!5168215 m!6219438))

(declare-fun m!6219440 () Bool)

(assert (=> b!5168216 m!6219440))

(assert (=> b!5168216 m!6218816))

(declare-fun m!6219442 () Bool)

(assert (=> b!5168216 m!6219442))

(assert (=> b!5168216 m!6219440))

(assert (=> b!5168216 m!6219442))

(declare-fun m!6219444 () Bool)

(assert (=> b!5168216 m!6219444))

(assert (=> b!5168217 m!6218816))

(declare-fun m!6219446 () Bool)

(assert (=> b!5168217 m!6219446))

(assert (=> b!5168217 m!6218830))

(assert (=> d!1667338 d!1667628))

(declare-fun d!1667630 () Bool)

(declare-fun lt!2126389 () Int)

(assert (=> d!1667630 (>= lt!2126389 0)))

(declare-fun e!3220278 () Int)

(assert (=> d!1667630 (= lt!2126389 e!3220278)))

(declare-fun c!889426 () Bool)

(assert (=> d!1667630 (= c!889426 ((_ is Nil!60029) lt!2126308))))

(assert (=> d!1667630 (= (size!39633 lt!2126308) lt!2126389)))

(declare-fun b!5168218 () Bool)

(assert (=> b!5168218 (= e!3220278 0)))

(declare-fun b!5168219 () Bool)

(assert (=> b!5168219 (= e!3220278 (+ 1 (size!39633 (t!373306 lt!2126308))))))

(assert (= (and d!1667630 c!889426) b!5168218))

(assert (= (and d!1667630 (not c!889426)) b!5168219))

(declare-fun m!6219448 () Bool)

(assert (=> b!5168219 m!6219448))

(assert (=> b!5167962 d!1667630))

(declare-fun d!1667632 () Bool)

(declare-fun lt!2126390 () Int)

(assert (=> d!1667632 (>= lt!2126390 0)))

(declare-fun e!3220279 () Int)

(assert (=> d!1667632 (= lt!2126390 e!3220279)))

(declare-fun c!889427 () Bool)

(assert (=> d!1667632 (= c!889427 ((_ is Nil!60029) (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))

(assert (=> d!1667632 (= (size!39633 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))) lt!2126390)))

(declare-fun b!5168220 () Bool)

(assert (=> b!5168220 (= e!3220279 0)))

(declare-fun b!5168221 () Bool)

(assert (=> b!5168221 (= e!3220279 (+ 1 (size!39633 (t!373306 (++!13121 testedP!294 (Cons!60029 lt!2126119 Nil!60029))))))))

(assert (= (and d!1667632 c!889427) b!5168220))

(assert (= (and d!1667632 (not c!889427)) b!5168221))

(assert (=> b!5168221 m!6219224))

(assert (=> b!5167962 d!1667632))

(declare-fun d!1667634 () Bool)

(declare-fun lt!2126391 () Int)

(assert (=> d!1667634 (>= lt!2126391 0)))

(declare-fun e!3220280 () Int)

(assert (=> d!1667634 (= lt!2126391 e!3220280)))

(declare-fun c!889428 () Bool)

(assert (=> d!1667634 (= c!889428 ((_ is Nil!60029) lt!2126122))))

(assert (=> d!1667634 (= (size!39633 lt!2126122) lt!2126391)))

(declare-fun b!5168222 () Bool)

(assert (=> b!5168222 (= e!3220280 0)))

(declare-fun b!5168223 () Bool)

(assert (=> b!5168223 (= e!3220280 (+ 1 (size!39633 (t!373306 lt!2126122))))))

(assert (= (and d!1667634 c!889428) b!5168222))

(assert (= (and d!1667634 (not c!889428)) b!5168223))

(declare-fun m!6219450 () Bool)

(assert (=> b!5168223 m!6219450))

(assert (=> b!5167962 d!1667634))

(declare-fun d!1667636 () Bool)

(declare-fun c!889429 () Bool)

(assert (=> d!1667636 (= c!889429 ((_ is Nil!60029) lt!2126207))))

(declare-fun e!3220281 () (InoxSet C!29464))

(assert (=> d!1667636 (= (content!10637 lt!2126207) e!3220281)))

(declare-fun b!5168224 () Bool)

(assert (=> b!5168224 (= e!3220281 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168225 () Bool)

(assert (=> b!5168225 (= e!3220281 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126207) true) (content!10637 (t!373306 lt!2126207))))))

(assert (= (and d!1667636 c!889429) b!5168224))

(assert (= (and d!1667636 (not c!889429)) b!5168225))

(declare-fun m!6219452 () Bool)

(assert (=> b!5168225 m!6219452))

(declare-fun m!6219454 () Bool)

(assert (=> b!5168225 m!6219454))

(assert (=> d!1667310 d!1667636))

(assert (=> d!1667310 d!1667346))

(declare-fun d!1667638 () Bool)

(declare-fun c!889430 () Bool)

(assert (=> d!1667638 (= c!889430 ((_ is Nil!60029) lt!2126038))))

(declare-fun e!3220282 () (InoxSet C!29464))

(assert (=> d!1667638 (= (content!10637 lt!2126038) e!3220282)))

(declare-fun b!5168226 () Bool)

(assert (=> b!5168226 (= e!3220282 ((as const (Array C!29464 Bool)) false))))

(declare-fun b!5168227 () Bool)

(assert (=> b!5168227 (= e!3220282 ((_ map or) (store ((as const (Array C!29464 Bool)) false) (h!66477 lt!2126038) true) (content!10637 (t!373306 lt!2126038))))))

(assert (= (and d!1667638 c!889430) b!5168226))

(assert (= (and d!1667638 (not c!889430)) b!5168227))

(declare-fun m!6219456 () Bool)

(assert (=> b!5168227 m!6219456))

(declare-fun m!6219458 () Bool)

(assert (=> b!5168227 m!6219458))

(assert (=> d!1667310 d!1667638))

(declare-fun bs!1203128 () Bool)

(declare-fun d!1667640 () Bool)

(assert (= bs!1203128 (and d!1667640 d!1667588)))

(declare-fun lambda!257990 () Int)

(assert (=> bs!1203128 (= (= (ite c!889342 lambda!257964 lambda!257965) lambda!257912) (= lambda!257990 lambda!257982))))

(declare-fun bs!1203129 () Bool)

(assert (= bs!1203129 (and d!1667640 b!5168205)))

(assert (=> bs!1203129 (not (= lambda!257990 lambda!257989))))

(declare-fun bs!1203130 () Bool)

(assert (= bs!1203130 (and d!1667640 b!5168204)))

(assert (=> bs!1203130 (not (= lambda!257990 lambda!257988))))

(declare-fun bs!1203131 () Bool)

(assert (= bs!1203131 (and d!1667640 d!1667560)))

(assert (=> bs!1203131 (not (= lambda!257990 lambda!257972))))

(declare-fun bs!1203132 () Bool)

(assert (= bs!1203132 (and d!1667640 d!1667568)))

(assert (=> bs!1203132 (not (= lambda!257990 lambda!257979))))

(declare-fun bs!1203133 () Bool)

(assert (= bs!1203133 (and d!1667640 d!1667514)))

(assert (=> bs!1203133 (= (= (ite c!889342 lambda!257964 lambda!257965) lambda!257963) (= lambda!257990 lambda!257971))))

(declare-fun bs!1203134 () Bool)

(assert (= bs!1203134 (and d!1667640 d!1667116)))

(assert (=> bs!1203134 (not (= lambda!257990 lambda!257912))))

(declare-fun bs!1203135 () Bool)

(assert (= bs!1203135 (and d!1667640 d!1667618)))

(assert (=> bs!1203135 (not (= lambda!257990 lambda!257987))))

(declare-fun bs!1203136 () Bool)

(assert (= bs!1203136 (and d!1667640 b!5167935)))

(assert (=> bs!1203136 (not (= lambda!257990 lambda!257965))))

(declare-fun bs!1203137 () Bool)

(assert (= bs!1203137 (and d!1667640 b!5167934)))

(assert (=> bs!1203137 (not (= lambda!257990 lambda!257964))))

(declare-fun bs!1203138 () Bool)

(assert (= bs!1203138 (and d!1667640 d!1667372)))

(assert (=> bs!1203138 (not (= lambda!257990 lambda!257963))))

(declare-fun bs!1203139 () Bool)

(assert (= bs!1203139 (and d!1667640 d!1667608)))

(assert (=> bs!1203139 (= (= (ite c!889342 lambda!257964 lambda!257965) lambda!257963) (= lambda!257990 lambda!257986))))

(assert (=> d!1667640 true))

(assert (=> d!1667640 (< (dynLambda!23865 order!27031 (ite c!889342 lambda!257964 lambda!257965)) (dynLambda!23865 order!27031 lambda!257990))))

(assert (=> d!1667640 (= (exists!1904 (ite c!889342 lt!2126295 lt!2126293) (ite c!889342 lambda!257964 lambda!257965)) (not (forall!14120 (ite c!889342 lt!2126295 lt!2126293) lambda!257990)))))

(declare-fun bs!1203140 () Bool)

(assert (= bs!1203140 d!1667640))

(declare-fun m!6219460 () Bool)

(assert (=> bs!1203140 m!6219460))

(assert (=> bm!362650 d!1667640))

(declare-fun b!5168229 () Bool)

(declare-fun e!3220283 () List!60153)

(assert (=> b!5168229 (= e!3220283 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))))

(declare-fun lt!2126392 () List!60153)

(declare-fun e!3220284 () Bool)

(declare-fun b!5168231 () Bool)

(assert (=> b!5168231 (= e!3220284 (or (not (= (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029) Nil!60029)) (= lt!2126392 (t!373306 testedP!294))))))

(declare-fun b!5168230 () Bool)

(declare-fun res!2196841 () Bool)

(assert (=> b!5168230 (=> (not res!2196841) (not e!3220284))))

(assert (=> b!5168230 (= res!2196841 (= (size!39633 lt!2126392) (+ (size!39633 (t!373306 testedP!294)) (size!39633 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(declare-fun d!1667642 () Bool)

(assert (=> d!1667642 e!3220284))

(declare-fun res!2196840 () Bool)

(assert (=> d!1667642 (=> (not res!2196840) (not e!3220284))))

(assert (=> d!1667642 (= res!2196840 (= (content!10637 lt!2126392) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)))))))

(assert (=> d!1667642 (= lt!2126392 e!3220283)))

(declare-fun c!889431 () Bool)

(assert (=> d!1667642 (= c!889431 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667642 (= (++!13121 (t!373306 testedP!294) (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029)) lt!2126392)))

(declare-fun b!5168228 () Bool)

(assert (=> b!5168228 (= e!3220283 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 testedP!294)) Nil!60029))))

(assert (= (and d!1667642 c!889431) b!5168228))

(assert (= (and d!1667642 (not c!889431)) b!5168229))

(assert (= (and d!1667642 res!2196840) b!5168230))

(assert (= (and b!5168230 res!2196841) b!5168231))

(declare-fun m!6219462 () Bool)

(assert (=> b!5168229 m!6219462))

(declare-fun m!6219464 () Bool)

(assert (=> b!5168230 m!6219464))

(assert (=> b!5168230 m!6218460))

(assert (=> b!5168230 m!6218974))

(declare-fun m!6219466 () Bool)

(assert (=> d!1667642 m!6219466))

(assert (=> d!1667642 m!6218746))

(assert (=> d!1667642 m!6218978))

(assert (=> b!5167951 d!1667642))

(declare-fun d!1667644 () Bool)

(assert (=> d!1667644 (= lt!2125929 lt!2126134)))

(assert (=> d!1667644 true))

(declare-fun _$63!1284 () Unit!151532)

(assert (=> d!1667644 (= (choose!38252 testedP!294 lt!2125929 testedP!294 lt!2126134 input!5817) _$63!1284)))

(assert (=> d!1667374 d!1667644))

(assert (=> d!1667374 d!1667130))

(declare-fun d!1667646 () Bool)

(assert (=> d!1667646 (= (isEmpty!32139 (_1!35177 lt!2126236)) ((_ is Nil!60029) (_1!35177 lt!2126236)))))

(assert (=> b!5167871 d!1667646))

(declare-fun d!1667648 () Bool)

(declare-fun lt!2126393 () Int)

(assert (=> d!1667648 (>= lt!2126393 0)))

(declare-fun e!3220285 () Int)

(assert (=> d!1667648 (= lt!2126393 e!3220285)))

(declare-fun c!889432 () Bool)

(assert (=> d!1667648 (= c!889432 ((_ is Nil!60029) lt!2126198))))

(assert (=> d!1667648 (= (size!39633 lt!2126198) lt!2126393)))

(declare-fun b!5168232 () Bool)

(assert (=> b!5168232 (= e!3220285 0)))

(declare-fun b!5168233 () Bool)

(assert (=> b!5168233 (= e!3220285 (+ 1 (size!39633 (t!373306 lt!2126198))))))

(assert (= (and d!1667648 c!889432) b!5168232))

(assert (= (and d!1667648 (not c!889432)) b!5168233))

(declare-fun m!6219468 () Bool)

(assert (=> b!5168233 m!6219468))

(assert (=> b!5167812 d!1667648))

(assert (=> b!5167812 d!1667314))

(assert (=> b!5167812 d!1667290))

(declare-fun b!5168235 () Bool)

(declare-fun e!3220286 () List!60153)

(assert (=> b!5168235 (= e!3220286 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) lt!2125929)))))

(declare-fun lt!2126394 () List!60153)

(declare-fun e!3220287 () Bool)

(declare-fun b!5168237 () Bool)

(assert (=> b!5168237 (= e!3220287 (or (not (= lt!2125929 Nil!60029)) (= lt!2126394 (t!373306 testedP!294))))))

(declare-fun b!5168236 () Bool)

(declare-fun res!2196843 () Bool)

(assert (=> b!5168236 (=> (not res!2196843) (not e!3220287))))

(assert (=> b!5168236 (= res!2196843 (= (size!39633 lt!2126394) (+ (size!39633 (t!373306 testedP!294)) (size!39633 lt!2125929))))))

(declare-fun d!1667650 () Bool)

(assert (=> d!1667650 e!3220287))

(declare-fun res!2196842 () Bool)

(assert (=> d!1667650 (=> (not res!2196842) (not e!3220287))))

(assert (=> d!1667650 (= res!2196842 (= (content!10637 lt!2126394) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 lt!2125929))))))

(assert (=> d!1667650 (= lt!2126394 e!3220286)))

(declare-fun c!889433 () Bool)

(assert (=> d!1667650 (= c!889433 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667650 (= (++!13121 (t!373306 testedP!294) lt!2125929) lt!2126394)))

(declare-fun b!5168234 () Bool)

(assert (=> b!5168234 (= e!3220286 lt!2125929)))

(assert (= (and d!1667650 c!889433) b!5168234))

(assert (= (and d!1667650 (not c!889433)) b!5168235))

(assert (= (and d!1667650 res!2196842) b!5168236))

(assert (= (and b!5168236 res!2196843) b!5168237))

(declare-fun m!6219470 () Bool)

(assert (=> b!5168235 m!6219470))

(declare-fun m!6219472 () Bool)

(assert (=> b!5168236 m!6219472))

(assert (=> b!5168236 m!6218460))

(assert (=> b!5168236 m!6218938))

(declare-fun m!6219474 () Bool)

(assert (=> d!1667650 m!6219474))

(assert (=> d!1667650 m!6218746))

(assert (=> d!1667650 m!6218942))

(assert (=> b!5167937 d!1667650))

(declare-fun bm!362662 () Bool)

(declare-fun call!362672 () C!29464)

(assert (=> bm!362662 (= call!362672 (head!11021 call!362649))))

(declare-fun b!5168238 () Bool)

(declare-fun e!3220292 () tuple2!63748)

(assert (=> b!5168238 (= e!3220292 (tuple2!63749 lt!2126259 Nil!60029))))

(declare-fun b!5168239 () Bool)

(declare-fun e!3220288 () Bool)

(declare-fun lt!2126395 () tuple2!63748)

(assert (=> b!5168239 (= e!3220288 (>= (size!39633 (_1!35177 lt!2126395)) (size!39633 lt!2126259)))))

(declare-fun b!5168240 () Bool)

(declare-fun e!3220294 () tuple2!63748)

(assert (=> b!5168240 (= e!3220294 (tuple2!63749 lt!2126259 call!362649))))

(declare-fun bm!362663 () Bool)

(declare-fun call!362673 () Bool)

(assert (=> bm!362663 (= call!362673 (nullableZipper!1143 call!362646))))

(declare-fun b!5168241 () Bool)

(declare-fun e!3220290 () Unit!151532)

(declare-fun Unit!151556 () Unit!151532)

(assert (=> b!5168241 (= e!3220290 Unit!151556)))

(declare-fun b!5168242 () Bool)

(declare-fun e!3220289 () tuple2!63748)

(assert (=> b!5168242 (= e!3220289 e!3220294)))

(declare-fun lt!2126413 () tuple2!63748)

(declare-fun call!362667 () tuple2!63748)

(assert (=> b!5168242 (= lt!2126413 call!362667)))

(declare-fun c!889437 () Bool)

(assert (=> b!5168242 (= c!889437 (isEmpty!32139 (_1!35177 lt!2126413)))))

(declare-fun b!5168243 () Bool)

(declare-fun c!889436 () Bool)

(assert (=> b!5168243 (= c!889436 call!362673)))

(declare-fun lt!2126397 () Unit!151532)

(declare-fun lt!2126406 () Unit!151532)

(assert (=> b!5168243 (= lt!2126397 lt!2126406)))

(declare-fun lt!2126405 () C!29464)

(declare-fun lt!2126408 () List!60153)

(assert (=> b!5168243 (= (++!13121 (++!13121 lt!2126259 (Cons!60029 lt!2126405 Nil!60029)) lt!2126408) input!5817)))

(assert (=> b!5168243 (= lt!2126406 (lemmaMoveElementToOtherListKeepsConcatEq!1568 lt!2126259 lt!2126405 lt!2126408 input!5817))))

(assert (=> b!5168243 (= lt!2126408 (tail!10130 call!362649))))

(assert (=> b!5168243 (= lt!2126405 (head!11021 call!362649))))

(declare-fun lt!2126410 () Unit!151532)

(declare-fun lt!2126407 () Unit!151532)

(assert (=> b!5168243 (= lt!2126410 lt!2126407)))

(assert (=> b!5168243 (isPrefix!5730 (++!13121 lt!2126259 (Cons!60029 (head!11021 (getSuffix!3380 input!5817 lt!2126259)) Nil!60029)) input!5817)))

(assert (=> b!5168243 (= lt!2126407 (lemmaAddHeadSuffixToPrefixStillPrefix!1043 lt!2126259 input!5817))))

(declare-fun lt!2126418 () List!60153)

(assert (=> b!5168243 (= lt!2126418 (++!13121 lt!2126259 (Cons!60029 (head!11021 call!362649) Nil!60029)))))

(declare-fun lt!2126404 () Unit!151532)

(assert (=> b!5168243 (= lt!2126404 e!3220290)))

(declare-fun c!889439 () Bool)

(assert (=> b!5168243 (= c!889439 (= (size!39633 lt!2126259) (size!39633 input!5817)))))

(declare-fun lt!2126415 () Unit!151532)

(declare-fun lt!2126417 () Unit!151532)

(assert (=> b!5168243 (= lt!2126415 lt!2126417)))

(assert (=> b!5168243 (<= (size!39633 lt!2126259) (size!39633 input!5817))))

(assert (=> b!5168243 (= lt!2126417 (lemmaIsPrefixThenSmallerEqSize!893 lt!2126259 input!5817))))

(declare-fun e!3220293 () tuple2!63748)

(assert (=> b!5168243 (= e!3220293 e!3220289)))

(declare-fun b!5168244 () Bool)

(declare-fun Unit!151557 () Unit!151532)

(assert (=> b!5168244 (= e!3220290 Unit!151557)))

(declare-fun lt!2126419 () Unit!151532)

(declare-fun call!362670 () Unit!151532)

(assert (=> b!5168244 (= lt!2126419 call!362670)))

(declare-fun call!362668 () Bool)

(assert (=> b!5168244 call!362668))

(declare-fun lt!2126403 () Unit!151532)

(assert (=> b!5168244 (= lt!2126403 lt!2126419)))

(declare-fun lt!2126411 () Unit!151532)

(declare-fun call!362669 () Unit!151532)

(assert (=> b!5168244 (= lt!2126411 call!362669)))

(assert (=> b!5168244 (= input!5817 lt!2126259)))

(declare-fun lt!2126402 () Unit!151532)

(assert (=> b!5168244 (= lt!2126402 lt!2126411)))

(assert (=> b!5168244 false))

(declare-fun b!5168245 () Bool)

(declare-fun c!889438 () Bool)

(assert (=> b!5168245 (= c!889438 call!362673)))

(declare-fun lt!2126399 () Unit!151532)

(declare-fun lt!2126414 () Unit!151532)

(assert (=> b!5168245 (= lt!2126399 lt!2126414)))

(assert (=> b!5168245 (= input!5817 lt!2126259)))

(assert (=> b!5168245 (= lt!2126414 call!362669)))

(declare-fun lt!2126401 () Unit!151532)

(declare-fun lt!2126398 () Unit!151532)

(assert (=> b!5168245 (= lt!2126401 lt!2126398)))

(assert (=> b!5168245 call!362668))

(assert (=> b!5168245 (= lt!2126398 call!362670)))

(assert (=> b!5168245 (= e!3220293 e!3220292)))

(declare-fun bm!362664 () Bool)

(declare-fun call!362671 () (InoxSet Context!7962))

(assert (=> bm!362664 (= call!362671 (derivationStepZipper!953 call!362646 call!362672))))

(declare-fun b!5168246 () Bool)

(assert (=> b!5168246 (= e!3220292 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun bm!362665 () Bool)

(assert (=> bm!362665 (= call!362669 (lemmaIsPrefixSameLengthThenSameList!1379 input!5817 lt!2126259 input!5817))))

(declare-fun bm!362666 () Bool)

(assert (=> bm!362666 (= call!362670 (lemmaIsPrefixRefl!3737 input!5817 input!5817))))

(declare-fun b!5168247 () Bool)

(declare-fun e!3220295 () tuple2!63748)

(assert (=> b!5168247 (= e!3220295 e!3220293)))

(declare-fun c!889435 () Bool)

(assert (=> b!5168247 (= c!889435 (= (+ lt!2125926 1 1) lt!2125927))))

(declare-fun b!5168248 () Bool)

(assert (=> b!5168248 (= e!3220289 call!362667)))

(declare-fun b!5168249 () Bool)

(declare-fun e!3220291 () Bool)

(assert (=> b!5168249 (= e!3220291 e!3220288)))

(declare-fun res!2196844 () Bool)

(assert (=> b!5168249 (=> res!2196844 e!3220288)))

(assert (=> b!5168249 (= res!2196844 (isEmpty!32139 (_1!35177 lt!2126395)))))

(declare-fun b!5168250 () Bool)

(assert (=> b!5168250 (= e!3220295 (tuple2!63749 Nil!60029 input!5817))))

(declare-fun b!5168251 () Bool)

(assert (=> b!5168251 (= e!3220294 lt!2126413)))

(declare-fun bm!362667 () Bool)

(assert (=> bm!362667 (= call!362668 (isPrefix!5730 input!5817 input!5817))))

(declare-fun call!362674 () List!60153)

(declare-fun bm!362668 () Bool)

(assert (=> bm!362668 (= call!362667 (findLongestMatchInnerZipper!255 call!362671 lt!2126418 (+ lt!2125926 1 1 1) call!362674 input!5817 lt!2125927))))

(declare-fun d!1667652 () Bool)

(assert (=> d!1667652 e!3220291))

(declare-fun res!2196845 () Bool)

(assert (=> d!1667652 (=> (not res!2196845) (not e!3220291))))

(assert (=> d!1667652 (= res!2196845 (= (++!13121 (_1!35177 lt!2126395) (_2!35177 lt!2126395)) input!5817))))

(assert (=> d!1667652 (= lt!2126395 e!3220295)))

(declare-fun c!889434 () Bool)

(assert (=> d!1667652 (= c!889434 (lostCauseZipper!1320 call!362646))))

(declare-fun lt!2126412 () Unit!151532)

(declare-fun Unit!151558 () Unit!151532)

(assert (=> d!1667652 (= lt!2126412 Unit!151558)))

(assert (=> d!1667652 (= (getSuffix!3380 input!5817 lt!2126259) call!362649)))

(declare-fun lt!2126409 () Unit!151532)

(declare-fun lt!2126416 () Unit!151532)

(assert (=> d!1667652 (= lt!2126409 lt!2126416)))

(declare-fun lt!2126420 () List!60153)

(assert (=> d!1667652 (= call!362649 lt!2126420)))

(assert (=> d!1667652 (= lt!2126416 (lemmaSamePrefixThenSameSuffix!2687 lt!2126259 call!362649 lt!2126259 lt!2126420 input!5817))))

(assert (=> d!1667652 (= lt!2126420 (getSuffix!3380 input!5817 lt!2126259))))

(declare-fun lt!2126400 () Unit!151532)

(declare-fun lt!2126396 () Unit!151532)

(assert (=> d!1667652 (= lt!2126400 lt!2126396)))

(assert (=> d!1667652 (isPrefix!5730 lt!2126259 (++!13121 lt!2126259 call!362649))))

(assert (=> d!1667652 (= lt!2126396 (lemmaConcatTwoListThenFirstIsPrefix!3581 lt!2126259 call!362649))))

(assert (=> d!1667652 (= (++!13121 lt!2126259 call!362649) input!5817)))

(assert (=> d!1667652 (= (findLongestMatchInnerZipper!255 call!362646 lt!2126259 (+ lt!2125926 1 1) call!362649 input!5817 lt!2125927) lt!2126395)))

(declare-fun bm!362669 () Bool)

(assert (=> bm!362669 (= call!362674 (tail!10130 call!362649))))

(assert (= (and d!1667652 c!889434) b!5168250))

(assert (= (and d!1667652 (not c!889434)) b!5168247))

(assert (= (and b!5168247 c!889435) b!5168245))

(assert (= (and b!5168247 (not c!889435)) b!5168243))

(assert (= (and b!5168245 c!889438) b!5168238))

(assert (= (and b!5168245 (not c!889438)) b!5168246))

(assert (= (and b!5168243 c!889439) b!5168244))

(assert (= (and b!5168243 (not c!889439)) b!5168241))

(assert (= (and b!5168243 c!889436) b!5168242))

(assert (= (and b!5168243 (not c!889436)) b!5168248))

(assert (= (and b!5168242 c!889437) b!5168240))

(assert (= (and b!5168242 (not c!889437)) b!5168251))

(assert (= (or b!5168242 b!5168248) bm!362669))

(assert (= (or b!5168242 b!5168248) bm!362662))

(assert (= (or b!5168242 b!5168248) bm!362664))

(assert (= (or b!5168242 b!5168248) bm!362668))

(assert (= (or b!5168245 b!5168244) bm!362666))

(assert (= (or b!5168245 b!5168243) bm!362663))

(assert (= (or b!5168245 b!5168244) bm!362667))

(assert (= (or b!5168245 b!5168244) bm!362665))

(assert (= (and d!1667652 res!2196845) b!5168249))

(assert (= (and b!5168249 (not res!2196844)) b!5168239))

(declare-fun m!6219476 () Bool)

(assert (=> d!1667652 m!6219476))

(declare-fun m!6219478 () Bool)

(assert (=> d!1667652 m!6219478))

(declare-fun m!6219480 () Bool)

(assert (=> d!1667652 m!6219480))

(declare-fun m!6219482 () Bool)

(assert (=> d!1667652 m!6219482))

(declare-fun m!6219484 () Bool)

(assert (=> d!1667652 m!6219484))

(assert (=> d!1667652 m!6219478))

(declare-fun m!6219486 () Bool)

(assert (=> d!1667652 m!6219486))

(declare-fun m!6219488 () Bool)

(assert (=> d!1667652 m!6219488))

(declare-fun m!6219490 () Bool)

(assert (=> b!5168239 m!6219490))

(declare-fun m!6219492 () Bool)

(assert (=> b!5168239 m!6219492))

(declare-fun m!6219494 () Bool)

(assert (=> bm!362665 m!6219494))

(declare-fun m!6219496 () Bool)

(assert (=> bm!362663 m!6219496))

(declare-fun m!6219498 () Bool)

(assert (=> bm!362668 m!6219498))

(declare-fun m!6219500 () Bool)

(assert (=> bm!362662 m!6219500))

(declare-fun m!6219502 () Bool)

(assert (=> bm!362664 m!6219502))

(declare-fun m!6219504 () Bool)

(assert (=> b!5168243 m!6219504))

(assert (=> b!5168243 m!6219476))

(declare-fun m!6219506 () Bool)

(assert (=> b!5168243 m!6219506))

(declare-fun m!6219508 () Bool)

(assert (=> b!5168243 m!6219508))

(assert (=> b!5168243 m!6219500))

(declare-fun m!6219510 () Bool)

(assert (=> b!5168243 m!6219510))

(declare-fun m!6219512 () Bool)

(assert (=> b!5168243 m!6219512))

(declare-fun m!6219514 () Bool)

(assert (=> b!5168243 m!6219514))

(declare-fun m!6219516 () Bool)

(assert (=> b!5168243 m!6219516))

(declare-fun m!6219518 () Bool)

(assert (=> b!5168243 m!6219518))

(assert (=> b!5168243 m!6219476))

(declare-fun m!6219520 () Bool)

(assert (=> b!5168243 m!6219520))

(assert (=> b!5168243 m!6218236))

(assert (=> b!5168243 m!6219492))

(assert (=> b!5168243 m!6219514))

(assert (=> b!5168243 m!6219508))

(declare-fun m!6219522 () Bool)

(assert (=> b!5168243 m!6219522))

(assert (=> bm!362666 m!6218248))

(declare-fun m!6219524 () Bool)

(assert (=> b!5168249 m!6219524))

(assert (=> bm!362667 m!6218250))

(declare-fun m!6219526 () Bool)

(assert (=> b!5168242 m!6219526))

(assert (=> bm!362669 m!6219520))

(assert (=> bm!362643 d!1667652))

(declare-fun d!1667654 () Bool)

(assert (=> d!1667654 (= (head!11021 (tail!10130 lt!2125923)) (h!66477 (tail!10130 lt!2125923)))))

(assert (=> b!5167853 d!1667654))

(assert (=> b!5167853 d!1667546))

(declare-fun b!5168252 () Bool)

(declare-fun res!2196847 () Bool)

(declare-fun e!3220299 () Bool)

(assert (=> b!5168252 (=> res!2196847 e!3220299)))

(assert (=> b!5168252 (= res!2196847 (not ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31827)))))))

(declare-fun e!3220302 () Bool)

(assert (=> b!5168252 (= e!3220302 e!3220299)))

(declare-fun c!889440 () Bool)

(declare-fun call!362677 () Bool)

(declare-fun c!889441 () Bool)

(declare-fun bm!362670 () Bool)

(assert (=> bm!362670 (= call!362677 (validRegex!6394 (ite c!889440 (reg!14926 (h!66478 (exprs!4481 setElem!31827))) (ite c!889441 (regTwo!29707 (h!66478 (exprs!4481 setElem!31827))) (regTwo!29706 (h!66478 (exprs!4481 setElem!31827)))))))))

(declare-fun b!5168253 () Bool)

(declare-fun e!3220301 () Bool)

(declare-fun call!362676 () Bool)

(assert (=> b!5168253 (= e!3220301 call!362676)))

(declare-fun b!5168254 () Bool)

(declare-fun e!3220298 () Bool)

(declare-fun e!3220300 () Bool)

(assert (=> b!5168254 (= e!3220298 e!3220300)))

(declare-fun res!2196849 () Bool)

(assert (=> b!5168254 (= res!2196849 (not (nullable!4891 (reg!14926 (h!66478 (exprs!4481 setElem!31827))))))))

(assert (=> b!5168254 (=> (not res!2196849) (not e!3220300))))

(declare-fun bm!362671 () Bool)

(declare-fun call!362675 () Bool)

(assert (=> bm!362671 (= call!362675 (validRegex!6394 (ite c!889441 (regOne!29707 (h!66478 (exprs!4481 setElem!31827))) (regOne!29706 (h!66478 (exprs!4481 setElem!31827))))))))

(declare-fun b!5168256 () Bool)

(declare-fun e!3220297 () Bool)

(assert (=> b!5168256 (= e!3220297 call!362676)))

(declare-fun b!5168257 () Bool)

(assert (=> b!5168257 (= e!3220300 call!362677)))

(declare-fun b!5168258 () Bool)

(assert (=> b!5168258 (= e!3220298 e!3220302)))

(assert (=> b!5168258 (= c!889441 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31827))))))

(declare-fun bm!362672 () Bool)

(assert (=> bm!362672 (= call!362676 call!362677)))

(declare-fun b!5168259 () Bool)

(declare-fun e!3220296 () Bool)

(assert (=> b!5168259 (= e!3220296 e!3220298)))

(assert (=> b!5168259 (= c!889440 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31827))))))

(declare-fun b!5168260 () Bool)

(declare-fun res!2196848 () Bool)

(assert (=> b!5168260 (=> (not res!2196848) (not e!3220297))))

(assert (=> b!5168260 (= res!2196848 call!362675)))

(assert (=> b!5168260 (= e!3220302 e!3220297)))

(declare-fun d!1667656 () Bool)

(declare-fun res!2196846 () Bool)

(assert (=> d!1667656 (=> res!2196846 e!3220296)))

(assert (=> d!1667656 (= res!2196846 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31827))))))

(assert (=> d!1667656 (= (validRegex!6394 (h!66478 (exprs!4481 setElem!31827))) e!3220296)))

(declare-fun b!5168255 () Bool)

(assert (=> b!5168255 (= e!3220299 e!3220301)))

(declare-fun res!2196850 () Bool)

(assert (=> b!5168255 (=> (not res!2196850) (not e!3220301))))

(assert (=> b!5168255 (= res!2196850 call!362675)))

(assert (= (and d!1667656 (not res!2196846)) b!5168259))

(assert (= (and b!5168259 c!889440) b!5168254))

(assert (= (and b!5168259 (not c!889440)) b!5168258))

(assert (= (and b!5168254 res!2196849) b!5168257))

(assert (= (and b!5168258 c!889441) b!5168260))

(assert (= (and b!5168258 (not c!889441)) b!5168252))

(assert (= (and b!5168260 res!2196848) b!5168256))

(assert (= (and b!5168252 (not res!2196847)) b!5168255))

(assert (= (and b!5168255 res!2196850) b!5168253))

(assert (= (or b!5168256 b!5168253) bm!362672))

(assert (= (or b!5168260 b!5168255) bm!362671))

(assert (= (or b!5168257 bm!362672) bm!362670))

(declare-fun m!6219528 () Bool)

(assert (=> bm!362670 m!6219528))

(declare-fun m!6219530 () Bool)

(assert (=> b!5168254 m!6219530))

(declare-fun m!6219532 () Bool)

(assert (=> bm!362671 m!6219532))

(assert (=> bs!1203032 d!1667656))

(declare-fun b!5168262 () Bool)

(declare-fun e!3220303 () List!60153)

(assert (=> b!5168262 (= e!3220303 (Cons!60029 (h!66477 (t!373306 testedP!294)) (++!13121 (t!373306 (t!373306 testedP!294)) (Cons!60029 lt!2126119 Nil!60029))))))

(declare-fun b!5168264 () Bool)

(declare-fun lt!2126421 () List!60153)

(declare-fun e!3220304 () Bool)

(assert (=> b!5168264 (= e!3220304 (or (not (= (Cons!60029 lt!2126119 Nil!60029) Nil!60029)) (= lt!2126421 (t!373306 testedP!294))))))

(declare-fun b!5168263 () Bool)

(declare-fun res!2196852 () Bool)

(assert (=> b!5168263 (=> (not res!2196852) (not e!3220304))))

(assert (=> b!5168263 (= res!2196852 (= (size!39633 lt!2126421) (+ (size!39633 (t!373306 testedP!294)) (size!39633 (Cons!60029 lt!2126119 Nil!60029)))))))

(declare-fun d!1667658 () Bool)

(assert (=> d!1667658 e!3220304))

(declare-fun res!2196851 () Bool)

(assert (=> d!1667658 (=> (not res!2196851) (not e!3220304))))

(assert (=> d!1667658 (= res!2196851 (= (content!10637 lt!2126421) ((_ map or) (content!10637 (t!373306 testedP!294)) (content!10637 (Cons!60029 lt!2126119 Nil!60029)))))))

(assert (=> d!1667658 (= lt!2126421 e!3220303)))

(declare-fun c!889442 () Bool)

(assert (=> d!1667658 (= c!889442 ((_ is Nil!60029) (t!373306 testedP!294)))))

(assert (=> d!1667658 (= (++!13121 (t!373306 testedP!294) (Cons!60029 lt!2126119 Nil!60029)) lt!2126421)))

(declare-fun b!5168261 () Bool)

(assert (=> b!5168261 (= e!3220303 (Cons!60029 lt!2126119 Nil!60029))))

(assert (= (and d!1667658 c!889442) b!5168261))

(assert (= (and d!1667658 (not c!889442)) b!5168262))

(assert (= (and d!1667658 res!2196851) b!5168263))

(assert (= (and b!5168263 res!2196852) b!5168264))

(declare-fun m!6219534 () Bool)

(assert (=> b!5168262 m!6219534))

(declare-fun m!6219536 () Bool)

(assert (=> b!5168263 m!6219536))

(assert (=> b!5168263 m!6218460))

(assert (=> b!5168263 m!6219010))

(declare-fun m!6219538 () Bool)

(assert (=> d!1667658 m!6219538))

(assert (=> d!1667658 m!6218746))

(assert (=> d!1667658 m!6219014))

(assert (=> b!5167965 d!1667658))

(declare-fun d!1667660 () Bool)

(declare-fun lt!2126422 () Int)

(assert (=> d!1667660 (>= lt!2126422 0)))

(declare-fun e!3220305 () Int)

(assert (=> d!1667660 (= lt!2126422 e!3220305)))

(declare-fun c!889443 () Bool)

(assert (=> d!1667660 (= c!889443 ((_ is Nil!60029) (t!373306 lt!2125936)))))

(assert (=> d!1667660 (= (size!39633 (t!373306 lt!2125936)) lt!2126422)))

(declare-fun b!5168265 () Bool)

(assert (=> b!5168265 (= e!3220305 0)))

(declare-fun b!5168266 () Bool)

(assert (=> b!5168266 (= e!3220305 (+ 1 (size!39633 (t!373306 (t!373306 lt!2125936)))))))

(assert (= (and d!1667660 c!889443) b!5168265))

(assert (= (and d!1667660 (not c!889443)) b!5168266))

(declare-fun m!6219540 () Bool)

(assert (=> b!5168266 m!6219540))

(assert (=> b!5167825 d!1667660))

(declare-fun b!5168269 () Bool)

(declare-fun e!3220306 () Bool)

(declare-fun tp!1449868 () Bool)

(assert (=> b!5168269 (= e!3220306 tp!1449868)))

(declare-fun b!5168270 () Bool)

(declare-fun tp!1449872 () Bool)

(declare-fun tp!1449870 () Bool)

(assert (=> b!5168270 (= e!3220306 (and tp!1449872 tp!1449870))))

(declare-fun b!5168267 () Bool)

(assert (=> b!5168267 (= e!3220306 tp_is_empty!38447)))

(assert (=> b!5167993 (= tp!1449866 e!3220306)))

(declare-fun b!5168268 () Bool)

(declare-fun tp!1449871 () Bool)

(declare-fun tp!1449869 () Bool)

(assert (=> b!5168268 (= e!3220306 (and tp!1449871 tp!1449869))))

(assert (= (and b!5167993 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31835)))) b!5168267))

(assert (= (and b!5167993 ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31835)))) b!5168268))

(assert (= (and b!5167993 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31835)))) b!5168269))

(assert (= (and b!5167993 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31835)))) b!5168270))

(declare-fun b!5168271 () Bool)

(declare-fun e!3220307 () Bool)

(declare-fun tp!1449873 () Bool)

(declare-fun tp!1449874 () Bool)

(assert (=> b!5168271 (= e!3220307 (and tp!1449873 tp!1449874))))

(assert (=> b!5167993 (= tp!1449867 e!3220307)))

(assert (= (and b!5167993 ((_ is Cons!60030) (t!373307 (exprs!4481 setElem!31835)))) b!5168271))

(declare-fun condSetEmpty!31841 () Bool)

(assert (=> setNonEmpty!31839 (= condSetEmpty!31841 (= setRest!31839 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31841 () Bool)

(assert (=> setNonEmpty!31839 (= tp!1449835 setRes!31841)))

(declare-fun setIsEmpty!31841 () Bool)

(assert (=> setIsEmpty!31841 setRes!31841))

(declare-fun setNonEmpty!31841 () Bool)

(declare-fun setElem!31841 () Context!7962)

(declare-fun e!3220308 () Bool)

(declare-fun tp!1449876 () Bool)

(assert (=> setNonEmpty!31841 (= setRes!31841 (and tp!1449876 (inv!79739 setElem!31841) e!3220308))))

(declare-fun setRest!31841 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31841 (= setRest!31839 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31841 true) setRest!31841))))

(declare-fun b!5168272 () Bool)

(declare-fun tp!1449875 () Bool)

(assert (=> b!5168272 (= e!3220308 tp!1449875)))

(assert (= (and setNonEmpty!31839 condSetEmpty!31841) setIsEmpty!31841))

(assert (= (and setNonEmpty!31839 (not condSetEmpty!31841)) setNonEmpty!31841))

(assert (= setNonEmpty!31841 b!5168272))

(declare-fun m!6219542 () Bool)

(assert (=> setNonEmpty!31841 m!6219542))

(declare-fun condSetEmpty!31842 () Bool)

(assert (=> setNonEmpty!31840 (= condSetEmpty!31842 (= setRest!31840 ((as const (Array Context!7962 Bool)) false)))))

(declare-fun setRes!31842 () Bool)

(assert (=> setNonEmpty!31840 (= tp!1449864 setRes!31842)))

(declare-fun setIsEmpty!31842 () Bool)

(assert (=> setIsEmpty!31842 setRes!31842))

(declare-fun setNonEmpty!31842 () Bool)

(declare-fun e!3220309 () Bool)

(declare-fun tp!1449878 () Bool)

(declare-fun setElem!31842 () Context!7962)

(assert (=> setNonEmpty!31842 (= setRes!31842 (and tp!1449878 (inv!79739 setElem!31842) e!3220309))))

(declare-fun setRest!31842 () (InoxSet Context!7962))

(assert (=> setNonEmpty!31842 (= setRest!31840 ((_ map or) (store ((as const (Array Context!7962 Bool)) false) setElem!31842 true) setRest!31842))))

(declare-fun b!5168273 () Bool)

(declare-fun tp!1449877 () Bool)

(assert (=> b!5168273 (= e!3220309 tp!1449877)))

(assert (= (and setNonEmpty!31840 condSetEmpty!31842) setIsEmpty!31842))

(assert (= (and setNonEmpty!31840 (not condSetEmpty!31842)) setNonEmpty!31842))

(assert (= setNonEmpty!31842 b!5168273))

(declare-fun m!6219544 () Bool)

(assert (=> setNonEmpty!31842 m!6219544))

(declare-fun b!5168274 () Bool)

(declare-fun e!3220310 () Bool)

(declare-fun tp!1449879 () Bool)

(declare-fun tp!1449880 () Bool)

(assert (=> b!5168274 (= e!3220310 (and tp!1449879 tp!1449880))))

(assert (=> b!5167968 (= tp!1449834 e!3220310)))

(assert (= (and b!5167968 ((_ is Cons!60030) (exprs!4481 setElem!31839))) b!5168274))

(declare-fun b!5168277 () Bool)

(declare-fun e!3220311 () Bool)

(declare-fun tp!1449881 () Bool)

(assert (=> b!5168277 (= e!3220311 tp!1449881)))

(declare-fun b!5168278 () Bool)

(declare-fun tp!1449885 () Bool)

(declare-fun tp!1449883 () Bool)

(assert (=> b!5168278 (= e!3220311 (and tp!1449885 tp!1449883))))

(declare-fun b!5168275 () Bool)

(assert (=> b!5168275 (= e!3220311 tp_is_empty!38447)))

(assert (=> b!5167990 (= tp!1449861 e!3220311)))

(declare-fun b!5168276 () Bool)

(declare-fun tp!1449884 () Bool)

(declare-fun tp!1449882 () Bool)

(assert (=> b!5168276 (= e!3220311 (and tp!1449884 tp!1449882))))

(assert (= (and b!5167990 ((_ is ElementMatch!14597) (h!66478 (t!373307 (exprs!4481 setElem!31827))))) b!5168275))

(assert (= (and b!5167990 ((_ is Concat!23442) (h!66478 (t!373307 (exprs!4481 setElem!31827))))) b!5168276))

(assert (= (and b!5167990 ((_ is Star!14597) (h!66478 (t!373307 (exprs!4481 setElem!31827))))) b!5168277))

(assert (= (and b!5167990 ((_ is Union!14597) (h!66478 (t!373307 (exprs!4481 setElem!31827))))) b!5168278))

(declare-fun b!5168279 () Bool)

(declare-fun e!3220312 () Bool)

(declare-fun tp!1449886 () Bool)

(declare-fun tp!1449887 () Bool)

(assert (=> b!5168279 (= e!3220312 (and tp!1449886 tp!1449887))))

(assert (=> b!5167990 (= tp!1449862 e!3220312)))

(assert (= (and b!5167990 ((_ is Cons!60030) (t!373307 (t!373307 (exprs!4481 setElem!31827))))) b!5168279))

(declare-fun b!5168282 () Bool)

(declare-fun e!3220313 () Bool)

(declare-fun tp!1449888 () Bool)

(assert (=> b!5168282 (= e!3220313 tp!1449888)))

(declare-fun b!5168283 () Bool)

(declare-fun tp!1449892 () Bool)

(declare-fun tp!1449890 () Bool)

(assert (=> b!5168283 (= e!3220313 (and tp!1449892 tp!1449890))))

(declare-fun b!5168280 () Bool)

(assert (=> b!5168280 (= e!3220313 tp_is_empty!38447)))

(assert (=> b!5167983 (= tp!1449851 e!3220313)))

(declare-fun b!5168281 () Bool)

(declare-fun tp!1449891 () Bool)

(declare-fun tp!1449889 () Bool)

(assert (=> b!5168281 (= e!3220313 (and tp!1449891 tp!1449889))))

(assert (= (and b!5167983 ((_ is ElementMatch!14597) (h!66478 (t!373307 (exprs!4481 setElem!31828))))) b!5168280))

(assert (= (and b!5167983 ((_ is Concat!23442) (h!66478 (t!373307 (exprs!4481 setElem!31828))))) b!5168281))

(assert (= (and b!5167983 ((_ is Star!14597) (h!66478 (t!373307 (exprs!4481 setElem!31828))))) b!5168282))

(assert (= (and b!5167983 ((_ is Union!14597) (h!66478 (t!373307 (exprs!4481 setElem!31828))))) b!5168283))

(declare-fun b!5168284 () Bool)

(declare-fun e!3220314 () Bool)

(declare-fun tp!1449893 () Bool)

(declare-fun tp!1449894 () Bool)

(assert (=> b!5168284 (= e!3220314 (and tp!1449893 tp!1449894))))

(assert (=> b!5167983 (= tp!1449852 e!3220314)))

(assert (= (and b!5167983 ((_ is Cons!60030) (t!373307 (t!373307 (exprs!4481 setElem!31828))))) b!5168284))

(declare-fun b!5168285 () Bool)

(declare-fun e!3220315 () Bool)

(declare-fun tp!1449895 () Bool)

(declare-fun tp!1449896 () Bool)

(assert (=> b!5168285 (= e!3220315 (and tp!1449895 tp!1449896))))

(assert (=> b!5167991 (= tp!1449863 e!3220315)))

(assert (= (and b!5167991 ((_ is Cons!60030) (exprs!4481 setElem!31840))) b!5168285))

(declare-fun b!5168286 () Bool)

(declare-fun e!3220316 () Bool)

(declare-fun tp!1449897 () Bool)

(assert (=> b!5168286 (= e!3220316 (and tp_is_empty!38447 tp!1449897))))

(assert (=> b!5167984 (= tp!1449853 e!3220316)))

(assert (= (and b!5167984 ((_ is Cons!60029) (t!373306 (t!373306 (t!373306 testedP!294))))) b!5168286))

(declare-fun b!5168287 () Bool)

(declare-fun e!3220317 () Bool)

(declare-fun tp!1449898 () Bool)

(assert (=> b!5168287 (= e!3220317 (and tp_is_empty!38447 tp!1449898))))

(assert (=> b!5167992 (= tp!1449865 e!3220317)))

(assert (= (and b!5167992 ((_ is Cons!60029) (t!373306 (t!373306 (t!373306 input!5817))))) b!5168287))

(declare-fun b!5168290 () Bool)

(declare-fun e!3220318 () Bool)

(declare-fun tp!1449899 () Bool)

(assert (=> b!5168290 (= e!3220318 tp!1449899)))

(declare-fun b!5168291 () Bool)

(declare-fun tp!1449903 () Bool)

(declare-fun tp!1449901 () Bool)

(assert (=> b!5168291 (= e!3220318 (and tp!1449903 tp!1449901))))

(declare-fun b!5168288 () Bool)

(assert (=> b!5168288 (= e!3220318 tp_is_empty!38447)))

(assert (=> b!5167980 (= tp!1449849 e!3220318)))

(declare-fun b!5168289 () Bool)

(declare-fun tp!1449902 () Bool)

(declare-fun tp!1449900 () Bool)

(assert (=> b!5168289 (= e!3220318 (and tp!1449902 tp!1449900))))

(assert (= (and b!5167980 ((_ is ElementMatch!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168288))

(assert (= (and b!5167980 ((_ is Concat!23442) (regOne!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168289))

(assert (= (and b!5167980 ((_ is Star!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168290))

(assert (= (and b!5167980 ((_ is Union!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168291))

(declare-fun b!5168294 () Bool)

(declare-fun e!3220319 () Bool)

(declare-fun tp!1449904 () Bool)

(assert (=> b!5168294 (= e!3220319 tp!1449904)))

(declare-fun b!5168295 () Bool)

(declare-fun tp!1449908 () Bool)

(declare-fun tp!1449906 () Bool)

(assert (=> b!5168295 (= e!3220319 (and tp!1449908 tp!1449906))))

(declare-fun b!5168292 () Bool)

(assert (=> b!5168292 (= e!3220319 tp_is_empty!38447)))

(assert (=> b!5167980 (= tp!1449847 e!3220319)))

(declare-fun b!5168293 () Bool)

(declare-fun tp!1449907 () Bool)

(declare-fun tp!1449905 () Bool)

(assert (=> b!5168293 (= e!3220319 (and tp!1449907 tp!1449905))))

(assert (= (and b!5167980 ((_ is ElementMatch!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168292))

(assert (= (and b!5167980 ((_ is Concat!23442) (regTwo!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168293))

(assert (= (and b!5167980 ((_ is Star!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168294))

(assert (= (and b!5167980 ((_ is Union!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31828))))) b!5168295))

(declare-fun b!5168298 () Bool)

(declare-fun e!3220320 () Bool)

(declare-fun tp!1449909 () Bool)

(assert (=> b!5168298 (= e!3220320 tp!1449909)))

(declare-fun b!5168299 () Bool)

(declare-fun tp!1449913 () Bool)

(declare-fun tp!1449911 () Bool)

(assert (=> b!5168299 (= e!3220320 (and tp!1449913 tp!1449911))))

(declare-fun b!5168296 () Bool)

(assert (=> b!5168296 (= e!3220320 tp_is_empty!38447)))

(assert (=> b!5167987 (= tp!1449859 e!3220320)))

(declare-fun b!5168297 () Bool)

(declare-fun tp!1449912 () Bool)

(declare-fun tp!1449910 () Bool)

(assert (=> b!5168297 (= e!3220320 (and tp!1449912 tp!1449910))))

(assert (= (and b!5167987 ((_ is ElementMatch!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168296))

(assert (= (and b!5167987 ((_ is Concat!23442) (regOne!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168297))

(assert (= (and b!5167987 ((_ is Star!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168298))

(assert (= (and b!5167987 ((_ is Union!14597) (regOne!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168299))

(declare-fun b!5168302 () Bool)

(declare-fun e!3220321 () Bool)

(declare-fun tp!1449914 () Bool)

(assert (=> b!5168302 (= e!3220321 tp!1449914)))

(declare-fun b!5168303 () Bool)

(declare-fun tp!1449918 () Bool)

(declare-fun tp!1449916 () Bool)

(assert (=> b!5168303 (= e!3220321 (and tp!1449918 tp!1449916))))

(declare-fun b!5168300 () Bool)

(assert (=> b!5168300 (= e!3220321 tp_is_empty!38447)))

(assert (=> b!5167987 (= tp!1449857 e!3220321)))

(declare-fun b!5168301 () Bool)

(declare-fun tp!1449917 () Bool)

(declare-fun tp!1449915 () Bool)

(assert (=> b!5168301 (= e!3220321 (and tp!1449917 tp!1449915))))

(assert (= (and b!5167987 ((_ is ElementMatch!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168300))

(assert (= (and b!5167987 ((_ is Concat!23442) (regTwo!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168301))

(assert (= (and b!5167987 ((_ is Star!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168302))

(assert (= (and b!5167987 ((_ is Union!14597) (regTwo!29706 (h!66478 (exprs!4481 setElem!31827))))) b!5168303))

(declare-fun b!5168306 () Bool)

(declare-fun e!3220322 () Bool)

(declare-fun tp!1449919 () Bool)

(assert (=> b!5168306 (= e!3220322 tp!1449919)))

(declare-fun b!5168307 () Bool)

(declare-fun tp!1449923 () Bool)

(declare-fun tp!1449921 () Bool)

(assert (=> b!5168307 (= e!3220322 (and tp!1449923 tp!1449921))))

(declare-fun b!5168304 () Bool)

(assert (=> b!5168304 (= e!3220322 tp_is_empty!38447)))

(assert (=> b!5167989 (= tp!1449860 e!3220322)))

(declare-fun b!5168305 () Bool)

(declare-fun tp!1449922 () Bool)

(declare-fun tp!1449920 () Bool)

(assert (=> b!5168305 (= e!3220322 (and tp!1449922 tp!1449920))))

(assert (= (and b!5167989 ((_ is ElementMatch!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168304))

(assert (= (and b!5167989 ((_ is Concat!23442) (regOne!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168305))

(assert (= (and b!5167989 ((_ is Star!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168306))

(assert (= (and b!5167989 ((_ is Union!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168307))

(declare-fun b!5168314 () Bool)

(declare-fun e!3220326 () Bool)

(declare-fun tp!1449924 () Bool)

(assert (=> b!5168314 (= e!3220326 tp!1449924)))

(declare-fun b!5168315 () Bool)

(declare-fun tp!1449928 () Bool)

(declare-fun tp!1449926 () Bool)

(assert (=> b!5168315 (= e!3220326 (and tp!1449928 tp!1449926))))

(declare-fun b!5168312 () Bool)

(assert (=> b!5168312 (= e!3220326 tp_is_empty!38447)))

(assert (=> b!5167989 (= tp!1449858 e!3220326)))

(declare-fun b!5168313 () Bool)

(declare-fun tp!1449927 () Bool)

(declare-fun tp!1449925 () Bool)

(assert (=> b!5168313 (= e!3220326 (and tp!1449927 tp!1449925))))

(assert (= (and b!5167989 ((_ is ElementMatch!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168312))

(assert (= (and b!5167989 ((_ is Concat!23442) (regTwo!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168313))

(assert (= (and b!5167989 ((_ is Star!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168314))

(assert (= (and b!5167989 ((_ is Union!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31827))))) b!5168315))

(declare-fun b!5168318 () Bool)

(declare-fun e!3220327 () Bool)

(declare-fun tp!1449929 () Bool)

(assert (=> b!5168318 (= e!3220327 tp!1449929)))

(declare-fun b!5168319 () Bool)

(declare-fun tp!1449933 () Bool)

(declare-fun tp!1449931 () Bool)

(assert (=> b!5168319 (= e!3220327 (and tp!1449933 tp!1449931))))

(declare-fun b!5168316 () Bool)

(assert (=> b!5168316 (= e!3220327 tp_is_empty!38447)))

(assert (=> b!5167981 (= tp!1449846 e!3220327)))

(declare-fun b!5168317 () Bool)

(declare-fun tp!1449932 () Bool)

(declare-fun tp!1449930 () Bool)

(assert (=> b!5168317 (= e!3220327 (and tp!1449932 tp!1449930))))

(assert (= (and b!5167981 ((_ is ElementMatch!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31828))))) b!5168316))

(assert (= (and b!5167981 ((_ is Concat!23442) (reg!14926 (h!66478 (exprs!4481 setElem!31828))))) b!5168317))

(assert (= (and b!5167981 ((_ is Star!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31828))))) b!5168318))

(assert (= (and b!5167981 ((_ is Union!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31828))))) b!5168319))

(declare-fun b!5168322 () Bool)

(declare-fun e!3220328 () Bool)

(declare-fun tp!1449934 () Bool)

(assert (=> b!5168322 (= e!3220328 tp!1449934)))

(declare-fun b!5168323 () Bool)

(declare-fun tp!1449938 () Bool)

(declare-fun tp!1449936 () Bool)

(assert (=> b!5168323 (= e!3220328 (and tp!1449938 tp!1449936))))

(declare-fun b!5168320 () Bool)

(assert (=> b!5168320 (= e!3220328 tp_is_empty!38447)))

(assert (=> b!5167988 (= tp!1449856 e!3220328)))

(declare-fun b!5168321 () Bool)

(declare-fun tp!1449937 () Bool)

(declare-fun tp!1449935 () Bool)

(assert (=> b!5168321 (= e!3220328 (and tp!1449937 tp!1449935))))

(assert (= (and b!5167988 ((_ is ElementMatch!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31827))))) b!5168320))

(assert (= (and b!5167988 ((_ is Concat!23442) (reg!14926 (h!66478 (exprs!4481 setElem!31827))))) b!5168321))

(assert (= (and b!5167988 ((_ is Star!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31827))))) b!5168322))

(assert (= (and b!5167988 ((_ is Union!14597) (reg!14926 (h!66478 (exprs!4481 setElem!31827))))) b!5168323))

(declare-fun b!5168326 () Bool)

(declare-fun e!3220329 () Bool)

(declare-fun tp!1449939 () Bool)

(assert (=> b!5168326 (= e!3220329 tp!1449939)))

(declare-fun b!5168327 () Bool)

(declare-fun tp!1449943 () Bool)

(declare-fun tp!1449941 () Bool)

(assert (=> b!5168327 (= e!3220329 (and tp!1449943 tp!1449941))))

(declare-fun b!5168324 () Bool)

(assert (=> b!5168324 (= e!3220329 tp_is_empty!38447)))

(assert (=> b!5167985 (= tp!1449854 e!3220329)))

(declare-fun b!5168325 () Bool)

(declare-fun tp!1449942 () Bool)

(declare-fun tp!1449940 () Bool)

(assert (=> b!5168325 (= e!3220329 (and tp!1449942 tp!1449940))))

(assert (= (and b!5167985 ((_ is ElementMatch!14597) (h!66478 (exprs!4481 setElem!31836)))) b!5168324))

(assert (= (and b!5167985 ((_ is Concat!23442) (h!66478 (exprs!4481 setElem!31836)))) b!5168325))

(assert (= (and b!5167985 ((_ is Star!14597) (h!66478 (exprs!4481 setElem!31836)))) b!5168326))

(assert (= (and b!5167985 ((_ is Union!14597) (h!66478 (exprs!4481 setElem!31836)))) b!5168327))

(declare-fun b!5168328 () Bool)

(declare-fun e!3220330 () Bool)

(declare-fun tp!1449944 () Bool)

(declare-fun tp!1449945 () Bool)

(assert (=> b!5168328 (= e!3220330 (and tp!1449944 tp!1449945))))

(assert (=> b!5167985 (= tp!1449855 e!3220330)))

(assert (= (and b!5167985 ((_ is Cons!60030) (t!373307 (exprs!4481 setElem!31836)))) b!5168328))

(declare-fun b!5168331 () Bool)

(declare-fun e!3220331 () Bool)

(declare-fun tp!1449946 () Bool)

(assert (=> b!5168331 (= e!3220331 tp!1449946)))

(declare-fun b!5168332 () Bool)

(declare-fun tp!1449950 () Bool)

(declare-fun tp!1449948 () Bool)

(assert (=> b!5168332 (= e!3220331 (and tp!1449950 tp!1449948))))

(declare-fun b!5168329 () Bool)

(assert (=> b!5168329 (= e!3220331 tp_is_empty!38447)))

(assert (=> b!5167982 (= tp!1449850 e!3220331)))

(declare-fun b!5168330 () Bool)

(declare-fun tp!1449949 () Bool)

(declare-fun tp!1449947 () Bool)

(assert (=> b!5168330 (= e!3220331 (and tp!1449949 tp!1449947))))

(assert (= (and b!5167982 ((_ is ElementMatch!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168329))

(assert (= (and b!5167982 ((_ is Concat!23442) (regOne!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168330))

(assert (= (and b!5167982 ((_ is Star!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168331))

(assert (= (and b!5167982 ((_ is Union!14597) (regOne!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168332))

(declare-fun b!5168335 () Bool)

(declare-fun e!3220332 () Bool)

(declare-fun tp!1449951 () Bool)

(assert (=> b!5168335 (= e!3220332 tp!1449951)))

(declare-fun b!5168336 () Bool)

(declare-fun tp!1449955 () Bool)

(declare-fun tp!1449953 () Bool)

(assert (=> b!5168336 (= e!3220332 (and tp!1449955 tp!1449953))))

(declare-fun b!5168333 () Bool)

(assert (=> b!5168333 (= e!3220332 tp_is_empty!38447)))

(assert (=> b!5167982 (= tp!1449848 e!3220332)))

(declare-fun b!5168334 () Bool)

(declare-fun tp!1449954 () Bool)

(declare-fun tp!1449952 () Bool)

(assert (=> b!5168334 (= e!3220332 (and tp!1449954 tp!1449952))))

(assert (= (and b!5167982 ((_ is ElementMatch!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168333))

(assert (= (and b!5167982 ((_ is Concat!23442) (regTwo!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168334))

(assert (= (and b!5167982 ((_ is Star!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168335))

(assert (= (and b!5167982 ((_ is Union!14597) (regTwo!29707 (h!66478 (exprs!4481 setElem!31828))))) b!5168336))

(declare-fun b_lambda!200825 () Bool)

(assert (= b_lambda!200817 (or d!1667274 b_lambda!200825)))

(declare-fun bs!1203141 () Bool)

(declare-fun d!1667664 () Bool)

(assert (= bs!1203141 (and d!1667664 d!1667274)))

(assert (=> bs!1203141 (= (dynLambda!23864 lambda!257929 (h!66478 (exprs!4481 setElem!31835))) (validRegex!6394 (h!66478 (exprs!4481 setElem!31835))))))

(declare-fun m!6219554 () Bool)

(assert (=> bs!1203141 m!6219554))

(assert (=> b!5168056 d!1667664))

(declare-fun b_lambda!200827 () Bool)

(assert (= b_lambda!200823 (or d!1667184 b_lambda!200827)))

(declare-fun bs!1203142 () Bool)

(declare-fun d!1667666 () Bool)

(assert (= bs!1203142 (and d!1667666 d!1667184)))

(assert (=> bs!1203142 (= (dynLambda!23864 lambda!257923 (h!66478 (t!373307 (exprs!4481 setElem!31827)))) (validRegex!6394 (h!66478 (t!373307 (exprs!4481 setElem!31827)))))))

(declare-fun m!6219560 () Bool)

(assert (=> bs!1203142 m!6219560))

(assert (=> b!5168097 d!1667666))

(declare-fun b_lambda!200829 () Bool)

(assert (= b_lambda!200821 (or d!1667134 b_lambda!200829)))

(declare-fun bs!1203143 () Bool)

(declare-fun d!1667668 () Bool)

(assert (= bs!1203143 (and d!1667668 d!1667134)))

(assert (=> bs!1203143 (= (dynLambda!23864 lambda!257918 (h!66478 (t!373307 (exprs!4481 setElem!31828)))) (validRegex!6394 (h!66478 (t!373307 (exprs!4481 setElem!31828)))))))

(declare-fun m!6219564 () Bool)

(assert (=> bs!1203143 m!6219564))

(assert (=> b!5168095 d!1667668))

(declare-fun b_lambda!200831 () Bool)

(assert (= b_lambda!200819 (or d!1667318 b_lambda!200831)))

(declare-fun bs!1203144 () Bool)

(declare-fun d!1667672 () Bool)

(assert (= bs!1203144 (and d!1667672 d!1667318)))

(assert (=> bs!1203144 (= (dynLambda!23864 lambda!257949 (h!66478 (exprs!4481 setElem!31836))) (validRegex!6394 (h!66478 (exprs!4481 setElem!31836))))))

(declare-fun m!6219566 () Bool)

(assert (=> bs!1203144 m!6219566))

(assert (=> b!5168074 d!1667672))

(check-sat (not b!5168321) (not b!5168326) (not b!5168207) (not bs!1203143) (not b!5168108) (not b!5168290) (not b!5168328) (not b!5168325) (not b!5168203) (not b!5168001) (not d!1667472) (not d!1667626) (not d!1667514) (not b!5168029) (not b!5168118) (not b!5168061) (not b!5168098) (not bs!1203142) (not b!5168289) (not b_lambda!200815) (not b!5168205) (not b!5168243) (not b!5168052) (not b!5168215) (not d!1667620) (not b!5168033) (not b!5168085) (not d!1667570) (not b!5168283) (not b!5168301) (not b!5168306) (not b!5168235) (not b!5168079) (not b!5168014) (not bm!362670) (not b!5168201) (not b!5168330) (not b!5168049) (not b!5168007) (not b!5168021) (not b!5167997) (not b!5168239) (not b!5168065) (not d!1667650) (not b!5168331) (not b!5168323) (not b!5168227) (not b!5168038) (not b!5168217) (not b_lambda!200829) (not b!5168063) (not b!5168159) (not d!1667494) (not b!5168193) (not b!5168336) (not b!5168161) (not b!5168088) (not bm!362666) (not b!5168002) (not b!5168075) (not b!5168009) (not b!5168155) (not b!5168229) (not b!5168298) (not d!1667434) (not b!5168080) (not b!5168173) (not d!1667462) (not b!5168057) (not b!5168196) (not b!5168317) (not d!1667418) (not b!5168191) (not b!5167999) (not b!5168254) (not b!5168282) (not b!5168175) (not b!5168262) (not b!5168169) (not b!5168013) (not b!5168174) (not b!5168314) (not d!1667640) (not b!5168216) (not b!5168141) (not d!1667474) (not b!5168100) (not b!5168005) (not b!5168120) (not b!5168284) (not b!5168211) (not b!5168307) (not b!5168114) (not b!5168286) (not b!5168279) (not b!5168094) (not b!5168104) (not b!5168017) (not b!5168112) (not b_lambda!200813) (not d!1667618) (not b!5168208) (not b!5168073) (not b!5168199) (not b!5168281) (not setNonEmpty!31842) (not b!5168271) (not bs!1203144) (not b!5168212) (not b!5168031) (not b!5168277) (not b!5168315) (not b!5168115) (not b!5168302) (not d!1667622) (not d!1667458) (not bm!362665) (not b!5168319) (not b!5168055) (not d!1667452) (not b!5168334) (not b!5168236) (not bm!362668) (not b!5168269) (not d!1667606) (not b!5168303) (not b!5168242) (not b!5168185) (not b!5168181) (not b!5168249) (not b!5168291) (not b!5168272) (not d!1667568) (not b!5168270) (not b!5168204) (not d!1667420) (not b!5168263) (not b!5168058) (not b!5168043) (not d!1667642) (not d!1667538) (not b!5168179) (not bs!1203141) (not b!5168221) (not bm!362669) (not b!5168026) (not bm!362664) (not b!5168034) (not bm!362657) (not b!5168188) (not b!5168071) (not b!5168019) (not d!1667490) (not b!5168151) (not b!5168225) (not b!5168150) (not d!1667588) (not b!5168067) (not bm!362658) (not b!5168322) tp_is_empty!38447 (not b!5168294) (not b!5168046) (not d!1667598) (not b!5168332) (not b!5168327) (not d!1667460) (not b!5168096) (not b!5168195) (not b!5168171) (not b!5168318) (not b!5168041) (not bm!362662) (not b!5168278) (not b!5168102) (not b!5167995) (not b!5168305) (not d!1667470) (not b!5168077) (not b!5168087) (not b!5168042) (not b!5168157) (not d!1667516) (not d!1667574) (not b!5168233) (not b!5168268) (not bm!362660) (not b!5168106) (not b!5168153) (not b!5168313) (not bm!362663) (not b!5168166) (not d!1667600) (not b_lambda!200827) (not b_lambda!200831) (not b!5168110) (not b!5168187) (not b!5168050) (not b!5168274) (not bm!362661) (not d!1667506) (not b!5168011) (not d!1667466) (not d!1667560) (not b!5168081) (not b!5168285) (not d!1667512) (not b!5168219) (not b!5168083) (not d!1667590) (not b!5168037) (not b!5168297) (not d!1667624) (not d!1667488) (not b!5168273) (not b!5168023) (not b!5168295) (not d!1667610) (not b!5168177) (not b!5168276) (not b!5168299) (not setNonEmpty!31841) (not b_lambda!200825) (not b!5168335) (not d!1667652) (not d!1667608) (not b!5168183) (not d!1667444) (not b!5168202) (not b!5168149) (not bm!362671) (not b!5168230) (not b!5168006) (not b!5168068) (not bm!362667) (not b!5168223) (not b!5168287) (not d!1667658) (not b!5168293) (not b!5168266) (not d!1667480) (not d!1667424) (not b!5168045) (not b!5168025))
(check-sat)
