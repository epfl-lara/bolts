; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519712 () Bool)

(assert start!519712)

(declare-fun b!4940186 () Bool)

(declare-fun res!2108266 () Bool)

(declare-fun e!3086722 () Bool)

(assert (=> b!4940186 (=> (not res!2108266) (not e!3086722))))

(declare-fun testedPSize!70 () Int)

(declare-datatypes ((C!27140 0))(
  ( (C!27141 (val!22904 Int)) )
))
(declare-datatypes ((List!57019 0))(
  ( (Nil!56895) (Cons!56895 (h!63343 C!27140) (t!367527 List!57019)) )
))
(declare-fun testedP!110 () List!57019)

(declare-fun size!37707 (List!57019) Int)

(assert (=> b!4940186 (= res!2108266 (= testedPSize!70 (size!37707 testedP!110)))))

(declare-fun b!4940187 () Bool)

(declare-fun e!3086720 () Bool)

(assert (=> b!4940187 (= e!3086722 (not e!3086720))))

(declare-fun res!2108269 () Bool)

(assert (=> b!4940187 (=> res!2108269 e!3086720)))

(declare-fun lt!2036530 () List!57019)

(declare-fun isPrefix!5053 (List!57019 List!57019) Bool)

(assert (=> b!4940187 (= res!2108269 (not (isPrefix!5053 testedP!110 lt!2036530)))))

(declare-fun lt!2036535 () List!57019)

(assert (=> b!4940187 (isPrefix!5053 testedP!110 lt!2036535)))

(declare-datatypes ((Unit!147645 0))(
  ( (Unit!147646) )
))
(declare-fun lt!2036532 () Unit!147645)

(declare-fun testedSuffix!70 () List!57019)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3277 (List!57019 List!57019) Unit!147645)

(assert (=> b!4940187 (= lt!2036532 (lemmaConcatTwoListThenFirstIsPrefix!3277 testedP!110 testedSuffix!70))))

(declare-fun b!4940188 () Bool)

(declare-fun e!3086723 () Bool)

(declare-fun tp!1386170 () Bool)

(assert (=> b!4940188 (= e!3086723 tp!1386170)))

(declare-fun b!4940189 () Bool)

(declare-fun res!2108268 () Bool)

(assert (=> b!4940189 (=> (not res!2108268) (not e!3086722))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29989 0))(
  ( (IArray!29990 (innerList!15052 List!57019)) )
))
(declare-datatypes ((Conc!14964 0))(
  ( (Node!14964 (left!41504 Conc!14964) (right!41834 Conc!14964) (csize!30158 Int) (cheight!15175 Int)) (Leaf!24879 (xs!18288 IArray!29989) (csize!30159 Int)) (Empty!14964) )
))
(declare-datatypes ((BalanceConc!29358 0))(
  ( (BalanceConc!29359 (c!842516 Conc!14964)) )
))
(declare-fun totalInput!685 () BalanceConc!29358)

(declare-fun size!37708 (BalanceConc!29358) Int)

(assert (=> b!4940189 (= res!2108268 (= totalInputSize!132 (size!37708 totalInput!685)))))

(declare-fun tp!1386171 () Bool)

(declare-fun setRes!27902 () Bool)

(declare-fun setNonEmpty!27902 () Bool)

(declare-datatypes ((Regex!13453 0))(
  ( (ElementMatch!13453 (c!842517 C!27140)) (Concat!22026 (regOne!27418 Regex!13453) (regTwo!27418 Regex!13453)) (EmptyExpr!13453) (Star!13453 (reg!13782 Regex!13453)) (EmptyLang!13453) (Union!13453 (regOne!27419 Regex!13453) (regTwo!27419 Regex!13453)) )
))
(declare-datatypes ((List!57020 0))(
  ( (Nil!56896) (Cons!56896 (h!63344 Regex!13453) (t!367528 List!57020)) )
))
(declare-datatypes ((Context!6190 0))(
  ( (Context!6191 (exprs!3595 List!57020)) )
))
(declare-fun setElem!27902 () Context!6190)

(declare-fun inv!73996 (Context!6190) Bool)

(assert (=> setNonEmpty!27902 (= setRes!27902 (and tp!1386171 (inv!73996 setElem!27902) e!3086723))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6190))

(declare-fun setRest!27902 () (InoxSet Context!6190))

(assert (=> setNonEmpty!27902 (= z!3568 ((_ map or) (store ((as const (Array Context!6190 Bool)) false) setElem!27902 true) setRest!27902))))

(declare-fun b!4940190 () Bool)

(declare-fun e!3086726 () Bool)

(declare-datatypes ((tuple2!61432 0))(
  ( (tuple2!61433 (_1!34019 BalanceConc!29358) (_2!34019 BalanceConc!29358)) )
))
(declare-fun lt!2036533 () tuple2!61432)

(assert (=> b!4940190 (= e!3086726 (= (size!37708 (_1!34019 lt!2036533)) testedPSize!70))))

(declare-fun b!4940191 () Bool)

(declare-fun e!3086725 () Bool)

(assert (=> b!4940191 (= e!3086720 e!3086725)))

(declare-fun res!2108267 () Bool)

(assert (=> b!4940191 (=> res!2108267 e!3086725)))

(declare-fun lostCauseZipper!771 ((InoxSet Context!6190)) Bool)

(assert (=> b!4940191 (= res!2108267 (lostCauseZipper!771 z!3568))))

(declare-fun lt!2036531 () List!57019)

(assert (=> b!4940191 (and (= testedSuffix!70 lt!2036531) (= lt!2036531 testedSuffix!70))))

(declare-fun lt!2036534 () Unit!147645)

(declare-fun lemmaSamePrefixThenSameSuffix!2449 (List!57019 List!57019 List!57019 List!57019 List!57019) Unit!147645)

(assert (=> b!4940191 (= lt!2036534 (lemmaSamePrefixThenSameSuffix!2449 testedP!110 testedSuffix!70 testedP!110 lt!2036531 lt!2036530))))

(declare-fun getSuffix!3035 (List!57019 List!57019) List!57019)

(assert (=> b!4940191 (= lt!2036531 (getSuffix!3035 lt!2036530 testedP!110))))

(declare-fun setIsEmpty!27902 () Bool)

(assert (=> setIsEmpty!27902 setRes!27902))

(declare-fun res!2108270 () Bool)

(assert (=> start!519712 (=> (not res!2108270) (not e!3086722))))

(assert (=> start!519712 (= res!2108270 (= lt!2036535 lt!2036530))))

(declare-fun list!18095 (BalanceConc!29358) List!57019)

(assert (=> start!519712 (= lt!2036530 (list!18095 totalInput!685))))

(declare-fun ++!12426 (List!57019 List!57019) List!57019)

(assert (=> start!519712 (= lt!2036535 (++!12426 testedP!110 testedSuffix!70))))

(assert (=> start!519712 e!3086722))

(declare-fun e!3086721 () Bool)

(assert (=> start!519712 e!3086721))

(declare-fun condSetEmpty!27902 () Bool)

(assert (=> start!519712 (= condSetEmpty!27902 (= z!3568 ((as const (Array Context!6190 Bool)) false)))))

(assert (=> start!519712 setRes!27902))

(assert (=> start!519712 true))

(declare-fun e!3086724 () Bool)

(declare-fun inv!73997 (BalanceConc!29358) Bool)

(assert (=> start!519712 (and (inv!73997 totalInput!685) e!3086724)))

(declare-fun e!3086727 () Bool)

(assert (=> start!519712 e!3086727))

(declare-fun b!4940185 () Bool)

(declare-fun tp_is_empty!36087 () Bool)

(declare-fun tp!1386168 () Bool)

(assert (=> b!4940185 (= e!3086721 (and tp_is_empty!36087 tp!1386168))))

(declare-fun b!4940192 () Bool)

(declare-fun res!2108265 () Bool)

(assert (=> b!4940192 (=> res!2108265 e!3086725)))

(assert (=> b!4940192 (= res!2108265 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4940193 () Bool)

(assert (=> b!4940193 (= e!3086725 e!3086726)))

(declare-fun res!2108264 () Bool)

(assert (=> b!4940193 (=> res!2108264 e!3086726)))

(assert (=> b!4940193 (= res!2108264 (not (= (++!12426 (list!18095 (_1!34019 lt!2036533)) (list!18095 (_2!34019 lt!2036533))) lt!2036530)))))

(declare-fun splitAt!366 (BalanceConc!29358 Int) tuple2!61432)

(assert (=> b!4940193 (= lt!2036533 (splitAt!366 totalInput!685 testedPSize!70))))

(declare-fun b!4940194 () Bool)

(declare-fun tp!1386167 () Bool)

(assert (=> b!4940194 (= e!3086727 (and tp_is_empty!36087 tp!1386167))))

(declare-fun b!4940195 () Bool)

(declare-fun tp!1386169 () Bool)

(declare-fun inv!73998 (Conc!14964) Bool)

(assert (=> b!4940195 (= e!3086724 (and (inv!73998 (c!842516 totalInput!685)) tp!1386169))))

(assert (= (and start!519712 res!2108270) b!4940186))

(assert (= (and b!4940186 res!2108266) b!4940189))

(assert (= (and b!4940189 res!2108268) b!4940187))

(assert (= (and b!4940187 (not res!2108269)) b!4940191))

(assert (= (and b!4940191 (not res!2108267)) b!4940192))

(assert (= (and b!4940192 (not res!2108265)) b!4940193))

(assert (= (and b!4940193 (not res!2108264)) b!4940190))

(get-info :version)

(assert (= (and start!519712 ((_ is Cons!56895) testedP!110)) b!4940185))

(assert (= (and start!519712 condSetEmpty!27902) setIsEmpty!27902))

(assert (= (and start!519712 (not condSetEmpty!27902)) setNonEmpty!27902))

(assert (= setNonEmpty!27902 b!4940188))

(assert (= start!519712 b!4940195))

(assert (= (and start!519712 ((_ is Cons!56895) testedSuffix!70)) b!4940194))

(declare-fun m!5962712 () Bool)

(assert (=> b!4940187 m!5962712))

(declare-fun m!5962714 () Bool)

(assert (=> b!4940187 m!5962714))

(declare-fun m!5962716 () Bool)

(assert (=> b!4940187 m!5962716))

(declare-fun m!5962718 () Bool)

(assert (=> start!519712 m!5962718))

(declare-fun m!5962720 () Bool)

(assert (=> start!519712 m!5962720))

(declare-fun m!5962722 () Bool)

(assert (=> start!519712 m!5962722))

(declare-fun m!5962724 () Bool)

(assert (=> b!4940193 m!5962724))

(declare-fun m!5962726 () Bool)

(assert (=> b!4940193 m!5962726))

(assert (=> b!4940193 m!5962724))

(assert (=> b!4940193 m!5962726))

(declare-fun m!5962728 () Bool)

(assert (=> b!4940193 m!5962728))

(declare-fun m!5962730 () Bool)

(assert (=> b!4940193 m!5962730))

(declare-fun m!5962732 () Bool)

(assert (=> b!4940195 m!5962732))

(declare-fun m!5962734 () Bool)

(assert (=> b!4940190 m!5962734))

(declare-fun m!5962736 () Bool)

(assert (=> b!4940189 m!5962736))

(declare-fun m!5962738 () Bool)

(assert (=> b!4940191 m!5962738))

(declare-fun m!5962740 () Bool)

(assert (=> b!4940191 m!5962740))

(declare-fun m!5962742 () Bool)

(assert (=> b!4940191 m!5962742))

(declare-fun m!5962744 () Bool)

(assert (=> b!4940186 m!5962744))

(declare-fun m!5962746 () Bool)

(assert (=> setNonEmpty!27902 m!5962746))

(check-sat (not b!4940186) (not b!4940191) (not start!519712) (not b!4940188) (not b!4940195) (not b!4940187) (not b!4940194) (not b!4940189) (not b!4940185) tp_is_empty!36087 (not b!4940190) (not setNonEmpty!27902) (not b!4940193))
(check-sat)
(get-model)

(declare-fun d!1590489 () Bool)

(declare-fun lambda!246196 () Int)

(declare-fun forall!13220 (List!57020 Int) Bool)

(assert (=> d!1590489 (= (inv!73996 setElem!27902) (forall!13220 (exprs!3595 setElem!27902) lambda!246196))))

(declare-fun bs!1181160 () Bool)

(assert (= bs!1181160 d!1590489))

(declare-fun m!5962790 () Bool)

(assert (=> bs!1181160 m!5962790))

(assert (=> setNonEmpty!27902 d!1590489))

(declare-fun d!1590505 () Bool)

(declare-fun e!3086757 () Bool)

(assert (=> d!1590505 e!3086757))

(declare-fun res!2108287 () Bool)

(assert (=> d!1590505 (=> (not res!2108287) (not e!3086757))))

(declare-fun lt!2036576 () List!57019)

(declare-fun content!10122 (List!57019) (InoxSet C!27140))

(assert (=> d!1590505 (= res!2108287 (= (content!10122 lt!2036576) ((_ map or) (content!10122 (list!18095 (_1!34019 lt!2036533))) (content!10122 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun e!3086756 () List!57019)

(assert (=> d!1590505 (= lt!2036576 e!3086756)))

(declare-fun c!842541 () Bool)

(assert (=> d!1590505 (= c!842541 ((_ is Nil!56895) (list!18095 (_1!34019 lt!2036533))))))

(assert (=> d!1590505 (= (++!12426 (list!18095 (_1!34019 lt!2036533)) (list!18095 (_2!34019 lt!2036533))) lt!2036576)))

(declare-fun b!4940241 () Bool)

(assert (=> b!4940241 (= e!3086756 (list!18095 (_2!34019 lt!2036533)))))

(declare-fun b!4940244 () Bool)

(assert (=> b!4940244 (= e!3086757 (or (not (= (list!18095 (_2!34019 lt!2036533)) Nil!56895)) (= lt!2036576 (list!18095 (_1!34019 lt!2036533)))))))

(declare-fun b!4940243 () Bool)

(declare-fun res!2108286 () Bool)

(assert (=> b!4940243 (=> (not res!2108286) (not e!3086757))))

(assert (=> b!4940243 (= res!2108286 (= (size!37707 lt!2036576) (+ (size!37707 (list!18095 (_1!34019 lt!2036533))) (size!37707 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun b!4940242 () Bool)

(assert (=> b!4940242 (= e!3086756 (Cons!56895 (h!63343 (list!18095 (_1!34019 lt!2036533))) (++!12426 (t!367527 (list!18095 (_1!34019 lt!2036533))) (list!18095 (_2!34019 lt!2036533)))))))

(assert (= (and d!1590505 c!842541) b!4940241))

(assert (= (and d!1590505 (not c!842541)) b!4940242))

(assert (= (and d!1590505 res!2108287) b!4940243))

(assert (= (and b!4940243 res!2108286) b!4940244))

(declare-fun m!5962814 () Bool)

(assert (=> d!1590505 m!5962814))

(assert (=> d!1590505 m!5962724))

(declare-fun m!5962818 () Bool)

(assert (=> d!1590505 m!5962818))

(assert (=> d!1590505 m!5962726))

(declare-fun m!5962820 () Bool)

(assert (=> d!1590505 m!5962820))

(declare-fun m!5962824 () Bool)

(assert (=> b!4940243 m!5962824))

(assert (=> b!4940243 m!5962724))

(declare-fun m!5962826 () Bool)

(assert (=> b!4940243 m!5962826))

(assert (=> b!4940243 m!5962726))

(declare-fun m!5962828 () Bool)

(assert (=> b!4940243 m!5962828))

(assert (=> b!4940242 m!5962726))

(declare-fun m!5962830 () Bool)

(assert (=> b!4940242 m!5962830))

(assert (=> b!4940193 d!1590505))

(declare-fun d!1590517 () Bool)

(declare-fun list!18097 (Conc!14964) List!57019)

(assert (=> d!1590517 (= (list!18095 (_1!34019 lt!2036533)) (list!18097 (c!842516 (_1!34019 lt!2036533))))))

(declare-fun bs!1181164 () Bool)

(assert (= bs!1181164 d!1590517))

(declare-fun m!5962832 () Bool)

(assert (=> bs!1181164 m!5962832))

(assert (=> b!4940193 d!1590517))

(declare-fun d!1590519 () Bool)

(assert (=> d!1590519 (= (list!18095 (_2!34019 lt!2036533)) (list!18097 (c!842516 (_2!34019 lt!2036533))))))

(declare-fun bs!1181165 () Bool)

(assert (= bs!1181165 d!1590519))

(declare-fun m!5962834 () Bool)

(assert (=> bs!1181165 m!5962834))

(assert (=> b!4940193 d!1590519))

(declare-fun d!1590521 () Bool)

(declare-fun e!3086763 () Bool)

(assert (=> d!1590521 e!3086763))

(declare-fun res!2108298 () Bool)

(assert (=> d!1590521 (=> (not res!2108298) (not e!3086763))))

(declare-fun lt!2036588 () tuple2!61432)

(declare-fun isBalanced!4130 (Conc!14964) Bool)

(assert (=> d!1590521 (= res!2108298 (isBalanced!4130 (c!842516 (_1!34019 lt!2036588))))))

(declare-datatypes ((tuple2!61436 0))(
  ( (tuple2!61437 (_1!34021 Conc!14964) (_2!34021 Conc!14964)) )
))
(declare-fun lt!2036587 () tuple2!61436)

(assert (=> d!1590521 (= lt!2036588 (tuple2!61433 (BalanceConc!29359 (_1!34021 lt!2036587)) (BalanceConc!29359 (_2!34021 lt!2036587))))))

(declare-fun splitAt!368 (Conc!14964 Int) tuple2!61436)

(assert (=> d!1590521 (= lt!2036587 (splitAt!368 (c!842516 totalInput!685) testedPSize!70))))

(assert (=> d!1590521 (isBalanced!4130 (c!842516 totalInput!685))))

(assert (=> d!1590521 (= (splitAt!366 totalInput!685 testedPSize!70) lt!2036588)))

(declare-fun b!4940255 () Bool)

(declare-fun res!2108299 () Bool)

(assert (=> b!4940255 (=> (not res!2108299) (not e!3086763))))

(assert (=> b!4940255 (= res!2108299 (isBalanced!4130 (c!842516 (_2!34019 lt!2036588))))))

(declare-fun b!4940256 () Bool)

(declare-datatypes ((tuple2!61440 0))(
  ( (tuple2!61441 (_1!34023 List!57019) (_2!34023 List!57019)) )
))
(declare-fun splitAtIndex!136 (List!57019 Int) tuple2!61440)

(assert (=> b!4940256 (= e!3086763 (= (tuple2!61441 (list!18095 (_1!34019 lt!2036588)) (list!18095 (_2!34019 lt!2036588))) (splitAtIndex!136 (list!18095 totalInput!685) testedPSize!70)))))

(assert (= (and d!1590521 res!2108298) b!4940255))

(assert (= (and b!4940255 res!2108299) b!4940256))

(declare-fun m!5962848 () Bool)

(assert (=> d!1590521 m!5962848))

(declare-fun m!5962850 () Bool)

(assert (=> d!1590521 m!5962850))

(declare-fun m!5962852 () Bool)

(assert (=> d!1590521 m!5962852))

(declare-fun m!5962854 () Bool)

(assert (=> b!4940255 m!5962854))

(declare-fun m!5962856 () Bool)

(assert (=> b!4940256 m!5962856))

(declare-fun m!5962858 () Bool)

(assert (=> b!4940256 m!5962858))

(assert (=> b!4940256 m!5962718))

(assert (=> b!4940256 m!5962718))

(declare-fun m!5962860 () Bool)

(assert (=> b!4940256 m!5962860))

(assert (=> b!4940193 d!1590521))

(declare-fun d!1590525 () Bool)

(declare-fun lt!2036594 () Int)

(assert (=> d!1590525 (>= lt!2036594 0)))

(declare-fun e!3086769 () Int)

(assert (=> d!1590525 (= lt!2036594 e!3086769)))

(declare-fun c!842547 () Bool)

(assert (=> d!1590525 (= c!842547 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590525 (= (size!37707 testedP!110) lt!2036594)))

(declare-fun b!4940267 () Bool)

(assert (=> b!4940267 (= e!3086769 0)))

(declare-fun b!4940268 () Bool)

(assert (=> b!4940268 (= e!3086769 (+ 1 (size!37707 (t!367527 testedP!110))))))

(assert (= (and d!1590525 c!842547) b!4940267))

(assert (= (and d!1590525 (not c!842547)) b!4940268))

(declare-fun m!5962864 () Bool)

(assert (=> b!4940268 m!5962864))

(assert (=> b!4940186 d!1590525))

(declare-fun d!1590529 () Bool)

(declare-fun lt!2036597 () Int)

(assert (=> d!1590529 (= lt!2036597 (size!37707 (list!18095 (_1!34019 lt!2036533))))))

(declare-fun size!37710 (Conc!14964) Int)

(assert (=> d!1590529 (= lt!2036597 (size!37710 (c!842516 (_1!34019 lt!2036533))))))

(assert (=> d!1590529 (= (size!37708 (_1!34019 lt!2036533)) lt!2036597)))

(declare-fun bs!1181166 () Bool)

(assert (= bs!1181166 d!1590529))

(assert (=> bs!1181166 m!5962724))

(assert (=> bs!1181166 m!5962724))

(assert (=> bs!1181166 m!5962826))

(declare-fun m!5962866 () Bool)

(assert (=> bs!1181166 m!5962866))

(assert (=> b!4940190 d!1590529))

(declare-fun bs!1181169 () Bool)

(declare-fun b!4940316 () Bool)

(declare-fun d!1590531 () Bool)

(assert (= bs!1181169 (and b!4940316 d!1590531)))

(declare-fun lambda!246213 () Int)

(declare-fun lambda!246212 () Int)

(assert (=> bs!1181169 (not (= lambda!246213 lambda!246212))))

(declare-fun bs!1181170 () Bool)

(declare-fun b!4940317 () Bool)

(assert (= bs!1181170 (and b!4940317 d!1590531)))

(declare-fun lambda!246214 () Int)

(assert (=> bs!1181170 (not (= lambda!246214 lambda!246212))))

(declare-fun bs!1181171 () Bool)

(assert (= bs!1181171 (and b!4940317 b!4940316)))

(assert (=> bs!1181171 (= lambda!246214 lambda!246213)))

(declare-fun lt!2036626 () Bool)

(declare-datatypes ((Option!14198 0))(
  ( (None!14197) (Some!14197 (v!50171 List!57019)) )
))
(declare-fun isEmpty!30629 (Option!14198) Bool)

(declare-fun getLanguageWitness!662 ((InoxSet Context!6190)) Option!14198)

(assert (=> d!1590531 (= lt!2036626 (isEmpty!30629 (getLanguageWitness!662 z!3568)))))

(declare-fun forall!13222 ((InoxSet Context!6190) Int) Bool)

(assert (=> d!1590531 (= lt!2036626 (forall!13222 z!3568 lambda!246212))))

(declare-fun lt!2036627 () Unit!147645)

(declare-fun e!3086804 () Unit!147645)

(assert (=> d!1590531 (= lt!2036627 e!3086804)))

(declare-fun c!842558 () Bool)

(assert (=> d!1590531 (= c!842558 (not (forall!13222 z!3568 lambda!246212)))))

(assert (=> d!1590531 (= (lostCauseZipper!771 z!3568) lt!2036626)))

(declare-fun bm!344705 () Bool)

(declare-datatypes ((List!57022 0))(
  ( (Nil!56898) (Cons!56898 (h!63346 Context!6190) (t!367530 List!57022)) )
))
(declare-fun call!344709 () List!57022)

(declare-fun toList!7980 ((InoxSet Context!6190)) List!57022)

(assert (=> bm!344705 (= call!344709 (toList!7980 z!3568))))

(declare-fun Unit!147649 () Unit!147645)

(assert (=> b!4940317 (= e!3086804 Unit!147649)))

(declare-fun lt!2036623 () List!57022)

(assert (=> b!4940317 (= lt!2036623 call!344709)))

(declare-fun lt!2036624 () Unit!147645)

(declare-fun lemmaForallThenNotExists!201 (List!57022 Int) Unit!147645)

(assert (=> b!4940317 (= lt!2036624 (lemmaForallThenNotExists!201 lt!2036623 lambda!246212))))

(declare-fun call!344710 () Bool)

(assert (=> b!4940317 (not call!344710)))

(declare-fun lt!2036625 () Unit!147645)

(assert (=> b!4940317 (= lt!2036625 lt!2036624)))

(declare-fun bm!344704 () Bool)

(declare-fun lt!2036628 () List!57022)

(declare-fun exists!1307 (List!57022 Int) Bool)

(assert (=> bm!344704 (= call!344710 (exists!1307 (ite c!842558 lt!2036628 lt!2036623) (ite c!842558 lambda!246213 lambda!246214)))))

(declare-fun Unit!147650 () Unit!147645)

(assert (=> b!4940316 (= e!3086804 Unit!147650)))

(assert (=> b!4940316 (= lt!2036628 call!344709)))

(declare-fun lt!2036622 () Unit!147645)

(declare-fun lemmaNotForallThenExists!218 (List!57022 Int) Unit!147645)

(assert (=> b!4940316 (= lt!2036622 (lemmaNotForallThenExists!218 lt!2036628 lambda!246212))))

(assert (=> b!4940316 call!344710))

(declare-fun lt!2036621 () Unit!147645)

(assert (=> b!4940316 (= lt!2036621 lt!2036622)))

(assert (= (and d!1590531 c!842558) b!4940316))

(assert (= (and d!1590531 (not c!842558)) b!4940317))

(assert (= (or b!4940316 b!4940317) bm!344704))

(assert (= (or b!4940316 b!4940317) bm!344705))

(declare-fun m!5962898 () Bool)

(assert (=> d!1590531 m!5962898))

(assert (=> d!1590531 m!5962898))

(declare-fun m!5962900 () Bool)

(assert (=> d!1590531 m!5962900))

(declare-fun m!5962902 () Bool)

(assert (=> d!1590531 m!5962902))

(assert (=> d!1590531 m!5962902))

(declare-fun m!5962904 () Bool)

(assert (=> b!4940316 m!5962904))

(declare-fun m!5962906 () Bool)

(assert (=> bm!344705 m!5962906))

(declare-fun m!5962908 () Bool)

(assert (=> b!4940317 m!5962908))

(declare-fun m!5962910 () Bool)

(assert (=> bm!344704 m!5962910))

(assert (=> b!4940191 d!1590531))

(declare-fun d!1590539 () Bool)

(assert (=> d!1590539 (= testedSuffix!70 lt!2036531)))

(declare-fun lt!2036631 () Unit!147645)

(declare-fun choose!36375 (List!57019 List!57019 List!57019 List!57019 List!57019) Unit!147645)

(assert (=> d!1590539 (= lt!2036631 (choose!36375 testedP!110 testedSuffix!70 testedP!110 lt!2036531 lt!2036530))))

(assert (=> d!1590539 (isPrefix!5053 testedP!110 lt!2036530)))

(assert (=> d!1590539 (= (lemmaSamePrefixThenSameSuffix!2449 testedP!110 testedSuffix!70 testedP!110 lt!2036531 lt!2036530) lt!2036631)))

(declare-fun bs!1181172 () Bool)

(assert (= bs!1181172 d!1590539))

(declare-fun m!5962912 () Bool)

(assert (=> bs!1181172 m!5962912))

(assert (=> bs!1181172 m!5962712))

(assert (=> b!4940191 d!1590539))

(declare-fun d!1590541 () Bool)

(declare-fun lt!2036634 () List!57019)

(assert (=> d!1590541 (= (++!12426 testedP!110 lt!2036634) lt!2036530)))

(declare-fun e!3086807 () List!57019)

(assert (=> d!1590541 (= lt!2036634 e!3086807)))

(declare-fun c!842561 () Bool)

(assert (=> d!1590541 (= c!842561 ((_ is Cons!56895) testedP!110))))

(assert (=> d!1590541 (>= (size!37707 lt!2036530) (size!37707 testedP!110))))

(assert (=> d!1590541 (= (getSuffix!3035 lt!2036530 testedP!110) lt!2036634)))

(declare-fun b!4940322 () Bool)

(declare-fun tail!9725 (List!57019) List!57019)

(assert (=> b!4940322 (= e!3086807 (getSuffix!3035 (tail!9725 lt!2036530) (t!367527 testedP!110)))))

(declare-fun b!4940323 () Bool)

(assert (=> b!4940323 (= e!3086807 lt!2036530)))

(assert (= (and d!1590541 c!842561) b!4940322))

(assert (= (and d!1590541 (not c!842561)) b!4940323))

(declare-fun m!5962914 () Bool)

(assert (=> d!1590541 m!5962914))

(declare-fun m!5962916 () Bool)

(assert (=> d!1590541 m!5962916))

(assert (=> d!1590541 m!5962744))

(declare-fun m!5962918 () Bool)

(assert (=> b!4940322 m!5962918))

(assert (=> b!4940322 m!5962918))

(declare-fun m!5962920 () Bool)

(assert (=> b!4940322 m!5962920))

(assert (=> b!4940191 d!1590541))

(declare-fun d!1590543 () Bool)

(declare-fun c!842564 () Bool)

(assert (=> d!1590543 (= c!842564 ((_ is Node!14964) (c!842516 totalInput!685)))))

(declare-fun e!3086812 () Bool)

(assert (=> d!1590543 (= (inv!73998 (c!842516 totalInput!685)) e!3086812)))

(declare-fun b!4940330 () Bool)

(declare-fun inv!74002 (Conc!14964) Bool)

(assert (=> b!4940330 (= e!3086812 (inv!74002 (c!842516 totalInput!685)))))

(declare-fun b!4940331 () Bool)

(declare-fun e!3086813 () Bool)

(assert (=> b!4940331 (= e!3086812 e!3086813)))

(declare-fun res!2108318 () Bool)

(assert (=> b!4940331 (= res!2108318 (not ((_ is Leaf!24879) (c!842516 totalInput!685))))))

(assert (=> b!4940331 (=> res!2108318 e!3086813)))

(declare-fun b!4940332 () Bool)

(declare-fun inv!74003 (Conc!14964) Bool)

(assert (=> b!4940332 (= e!3086813 (inv!74003 (c!842516 totalInput!685)))))

(assert (= (and d!1590543 c!842564) b!4940330))

(assert (= (and d!1590543 (not c!842564)) b!4940331))

(assert (= (and b!4940331 (not res!2108318)) b!4940332))

(declare-fun m!5962922 () Bool)

(assert (=> b!4940330 m!5962922))

(declare-fun m!5962924 () Bool)

(assert (=> b!4940332 m!5962924))

(assert (=> b!4940195 d!1590543))

(declare-fun b!4940341 () Bool)

(declare-fun e!3086820 () Bool)

(declare-fun e!3086822 () Bool)

(assert (=> b!4940341 (= e!3086820 e!3086822)))

(declare-fun res!2108328 () Bool)

(assert (=> b!4940341 (=> (not res!2108328) (not e!3086822))))

(assert (=> b!4940341 (= res!2108328 (not ((_ is Nil!56895) lt!2036530)))))

(declare-fun d!1590545 () Bool)

(declare-fun e!3086821 () Bool)

(assert (=> d!1590545 e!3086821))

(declare-fun res!2108330 () Bool)

(assert (=> d!1590545 (=> res!2108330 e!3086821)))

(declare-fun lt!2036637 () Bool)

(assert (=> d!1590545 (= res!2108330 (not lt!2036637))))

(assert (=> d!1590545 (= lt!2036637 e!3086820)))

(declare-fun res!2108329 () Bool)

(assert (=> d!1590545 (=> res!2108329 e!3086820)))

(assert (=> d!1590545 (= res!2108329 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590545 (= (isPrefix!5053 testedP!110 lt!2036530) lt!2036637)))

(declare-fun b!4940344 () Bool)

(assert (=> b!4940344 (= e!3086821 (>= (size!37707 lt!2036530) (size!37707 testedP!110)))))

(declare-fun b!4940342 () Bool)

(declare-fun res!2108327 () Bool)

(assert (=> b!4940342 (=> (not res!2108327) (not e!3086822))))

(declare-fun head!10586 (List!57019) C!27140)

(assert (=> b!4940342 (= res!2108327 (= (head!10586 testedP!110) (head!10586 lt!2036530)))))

(declare-fun b!4940343 () Bool)

(assert (=> b!4940343 (= e!3086822 (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 lt!2036530)))))

(assert (= (and d!1590545 (not res!2108329)) b!4940341))

(assert (= (and b!4940341 res!2108328) b!4940342))

(assert (= (and b!4940342 res!2108327) b!4940343))

(assert (= (and d!1590545 (not res!2108330)) b!4940344))

(assert (=> b!4940344 m!5962916))

(assert (=> b!4940344 m!5962744))

(declare-fun m!5962926 () Bool)

(assert (=> b!4940342 m!5962926))

(declare-fun m!5962928 () Bool)

(assert (=> b!4940342 m!5962928))

(declare-fun m!5962930 () Bool)

(assert (=> b!4940343 m!5962930))

(assert (=> b!4940343 m!5962918))

(assert (=> b!4940343 m!5962930))

(assert (=> b!4940343 m!5962918))

(declare-fun m!5962932 () Bool)

(assert (=> b!4940343 m!5962932))

(assert (=> b!4940187 d!1590545))

(declare-fun b!4940345 () Bool)

(declare-fun e!3086823 () Bool)

(declare-fun e!3086825 () Bool)

(assert (=> b!4940345 (= e!3086823 e!3086825)))

(declare-fun res!2108332 () Bool)

(assert (=> b!4940345 (=> (not res!2108332) (not e!3086825))))

(assert (=> b!4940345 (= res!2108332 (not ((_ is Nil!56895) lt!2036535)))))

(declare-fun d!1590547 () Bool)

(declare-fun e!3086824 () Bool)

(assert (=> d!1590547 e!3086824))

(declare-fun res!2108334 () Bool)

(assert (=> d!1590547 (=> res!2108334 e!3086824)))

(declare-fun lt!2036638 () Bool)

(assert (=> d!1590547 (= res!2108334 (not lt!2036638))))

(assert (=> d!1590547 (= lt!2036638 e!3086823)))

(declare-fun res!2108333 () Bool)

(assert (=> d!1590547 (=> res!2108333 e!3086823)))

(assert (=> d!1590547 (= res!2108333 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590547 (= (isPrefix!5053 testedP!110 lt!2036535) lt!2036638)))

(declare-fun b!4940348 () Bool)

(assert (=> b!4940348 (= e!3086824 (>= (size!37707 lt!2036535) (size!37707 testedP!110)))))

(declare-fun b!4940346 () Bool)

(declare-fun res!2108331 () Bool)

(assert (=> b!4940346 (=> (not res!2108331) (not e!3086825))))

(assert (=> b!4940346 (= res!2108331 (= (head!10586 testedP!110) (head!10586 lt!2036535)))))

(declare-fun b!4940347 () Bool)

(assert (=> b!4940347 (= e!3086825 (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 lt!2036535)))))

(assert (= (and d!1590547 (not res!2108333)) b!4940345))

(assert (= (and b!4940345 res!2108332) b!4940346))

(assert (= (and b!4940346 res!2108331) b!4940347))

(assert (= (and d!1590547 (not res!2108334)) b!4940348))

(declare-fun m!5962934 () Bool)

(assert (=> b!4940348 m!5962934))

(assert (=> b!4940348 m!5962744))

(assert (=> b!4940346 m!5962926))

(declare-fun m!5962936 () Bool)

(assert (=> b!4940346 m!5962936))

(assert (=> b!4940347 m!5962930))

(declare-fun m!5962938 () Bool)

(assert (=> b!4940347 m!5962938))

(assert (=> b!4940347 m!5962930))

(assert (=> b!4940347 m!5962938))

(declare-fun m!5962940 () Bool)

(assert (=> b!4940347 m!5962940))

(assert (=> b!4940187 d!1590547))

(declare-fun d!1590549 () Bool)

(assert (=> d!1590549 (isPrefix!5053 testedP!110 (++!12426 testedP!110 testedSuffix!70))))

(declare-fun lt!2036641 () Unit!147645)

(declare-fun choose!36376 (List!57019 List!57019) Unit!147645)

(assert (=> d!1590549 (= lt!2036641 (choose!36376 testedP!110 testedSuffix!70))))

(assert (=> d!1590549 (= (lemmaConcatTwoListThenFirstIsPrefix!3277 testedP!110 testedSuffix!70) lt!2036641)))

(declare-fun bs!1181173 () Bool)

(assert (= bs!1181173 d!1590549))

(assert (=> bs!1181173 m!5962720))

(assert (=> bs!1181173 m!5962720))

(declare-fun m!5962942 () Bool)

(assert (=> bs!1181173 m!5962942))

(declare-fun m!5962944 () Bool)

(assert (=> bs!1181173 m!5962944))

(assert (=> b!4940187 d!1590549))

(declare-fun d!1590551 () Bool)

(assert (=> d!1590551 (= (list!18095 totalInput!685) (list!18097 (c!842516 totalInput!685)))))

(declare-fun bs!1181174 () Bool)

(assert (= bs!1181174 d!1590551))

(declare-fun m!5962946 () Bool)

(assert (=> bs!1181174 m!5962946))

(assert (=> start!519712 d!1590551))

(declare-fun d!1590553 () Bool)

(declare-fun e!3086827 () Bool)

(assert (=> d!1590553 e!3086827))

(declare-fun res!2108336 () Bool)

(assert (=> d!1590553 (=> (not res!2108336) (not e!3086827))))

(declare-fun lt!2036642 () List!57019)

(assert (=> d!1590553 (= res!2108336 (= (content!10122 lt!2036642) ((_ map or) (content!10122 testedP!110) (content!10122 testedSuffix!70))))))

(declare-fun e!3086826 () List!57019)

(assert (=> d!1590553 (= lt!2036642 e!3086826)))

(declare-fun c!842565 () Bool)

(assert (=> d!1590553 (= c!842565 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590553 (= (++!12426 testedP!110 testedSuffix!70) lt!2036642)))

(declare-fun b!4940349 () Bool)

(assert (=> b!4940349 (= e!3086826 testedSuffix!70)))

(declare-fun b!4940352 () Bool)

(assert (=> b!4940352 (= e!3086827 (or (not (= testedSuffix!70 Nil!56895)) (= lt!2036642 testedP!110)))))

(declare-fun b!4940351 () Bool)

(declare-fun res!2108335 () Bool)

(assert (=> b!4940351 (=> (not res!2108335) (not e!3086827))))

(assert (=> b!4940351 (= res!2108335 (= (size!37707 lt!2036642) (+ (size!37707 testedP!110) (size!37707 testedSuffix!70))))))

(declare-fun b!4940350 () Bool)

(assert (=> b!4940350 (= e!3086826 (Cons!56895 (h!63343 testedP!110) (++!12426 (t!367527 testedP!110) testedSuffix!70)))))

(assert (= (and d!1590553 c!842565) b!4940349))

(assert (= (and d!1590553 (not c!842565)) b!4940350))

(assert (= (and d!1590553 res!2108336) b!4940351))

(assert (= (and b!4940351 res!2108335) b!4940352))

(declare-fun m!5962948 () Bool)

(assert (=> d!1590553 m!5962948))

(declare-fun m!5962950 () Bool)

(assert (=> d!1590553 m!5962950))

(declare-fun m!5962952 () Bool)

(assert (=> d!1590553 m!5962952))

(declare-fun m!5962954 () Bool)

(assert (=> b!4940351 m!5962954))

(assert (=> b!4940351 m!5962744))

(declare-fun m!5962956 () Bool)

(assert (=> b!4940351 m!5962956))

(declare-fun m!5962958 () Bool)

(assert (=> b!4940350 m!5962958))

(assert (=> start!519712 d!1590553))

(declare-fun d!1590555 () Bool)

(assert (=> d!1590555 (= (inv!73997 totalInput!685) (isBalanced!4130 (c!842516 totalInput!685)))))

(declare-fun bs!1181175 () Bool)

(assert (= bs!1181175 d!1590555))

(assert (=> bs!1181175 m!5962852))

(assert (=> start!519712 d!1590555))

(declare-fun d!1590557 () Bool)

(declare-fun lt!2036643 () Int)

(assert (=> d!1590557 (= lt!2036643 (size!37707 (list!18095 totalInput!685)))))

(assert (=> d!1590557 (= lt!2036643 (size!37710 (c!842516 totalInput!685)))))

(assert (=> d!1590557 (= (size!37708 totalInput!685) lt!2036643)))

(declare-fun bs!1181176 () Bool)

(assert (= bs!1181176 d!1590557))

(assert (=> bs!1181176 m!5962718))

(assert (=> bs!1181176 m!5962718))

(declare-fun m!5962960 () Bool)

(assert (=> bs!1181176 m!5962960))

(declare-fun m!5962962 () Bool)

(assert (=> bs!1181176 m!5962962))

(assert (=> b!4940189 d!1590557))

(declare-fun condSetEmpty!27908 () Bool)

(assert (=> setNonEmpty!27902 (= condSetEmpty!27908 (= setRest!27902 ((as const (Array Context!6190 Bool)) false)))))

(declare-fun setRes!27908 () Bool)

(assert (=> setNonEmpty!27902 (= tp!1386171 setRes!27908)))

(declare-fun setIsEmpty!27908 () Bool)

(assert (=> setIsEmpty!27908 setRes!27908))

(declare-fun tp!1386201 () Bool)

(declare-fun setNonEmpty!27908 () Bool)

(declare-fun setElem!27908 () Context!6190)

(declare-fun e!3086830 () Bool)

(assert (=> setNonEmpty!27908 (= setRes!27908 (and tp!1386201 (inv!73996 setElem!27908) e!3086830))))

(declare-fun setRest!27908 () (InoxSet Context!6190))

(assert (=> setNonEmpty!27908 (= setRest!27902 ((_ map or) (store ((as const (Array Context!6190 Bool)) false) setElem!27908 true) setRest!27908))))

(declare-fun b!4940357 () Bool)

(declare-fun tp!1386202 () Bool)

(assert (=> b!4940357 (= e!3086830 tp!1386202)))

(assert (= (and setNonEmpty!27902 condSetEmpty!27908) setIsEmpty!27908))

(assert (= (and setNonEmpty!27902 (not condSetEmpty!27908)) setNonEmpty!27908))

(assert (= setNonEmpty!27908 b!4940357))

(declare-fun m!5962964 () Bool)

(assert (=> setNonEmpty!27908 m!5962964))

(declare-fun b!4940362 () Bool)

(declare-fun e!3086833 () Bool)

(declare-fun tp!1386205 () Bool)

(assert (=> b!4940362 (= e!3086833 (and tp_is_empty!36087 tp!1386205))))

(assert (=> b!4940194 (= tp!1386167 e!3086833)))

(assert (= (and b!4940194 ((_ is Cons!56895) (t!367527 testedSuffix!70))) b!4940362))

(declare-fun b!4940363 () Bool)

(declare-fun e!3086834 () Bool)

(declare-fun tp!1386206 () Bool)

(assert (=> b!4940363 (= e!3086834 (and tp_is_empty!36087 tp!1386206))))

(assert (=> b!4940185 (= tp!1386168 e!3086834)))

(assert (= (and b!4940185 ((_ is Cons!56895) (t!367527 testedP!110))) b!4940363))

(declare-fun e!3086840 () Bool)

(declare-fun b!4940372 () Bool)

(declare-fun tp!1386214 () Bool)

(declare-fun tp!1386215 () Bool)

(assert (=> b!4940372 (= e!3086840 (and (inv!73998 (left!41504 (c!842516 totalInput!685))) tp!1386214 (inv!73998 (right!41834 (c!842516 totalInput!685))) tp!1386215))))

(declare-fun b!4940374 () Bool)

(declare-fun e!3086839 () Bool)

(declare-fun tp!1386213 () Bool)

(assert (=> b!4940374 (= e!3086839 tp!1386213)))

(declare-fun b!4940373 () Bool)

(declare-fun inv!74004 (IArray!29989) Bool)

(assert (=> b!4940373 (= e!3086840 (and (inv!74004 (xs!18288 (c!842516 totalInput!685))) e!3086839))))

(assert (=> b!4940195 (= tp!1386169 (and (inv!73998 (c!842516 totalInput!685)) e!3086840))))

(assert (= (and b!4940195 ((_ is Node!14964) (c!842516 totalInput!685))) b!4940372))

(assert (= b!4940373 b!4940374))

(assert (= (and b!4940195 ((_ is Leaf!24879) (c!842516 totalInput!685))) b!4940373))

(declare-fun m!5962966 () Bool)

(assert (=> b!4940372 m!5962966))

(declare-fun m!5962968 () Bool)

(assert (=> b!4940372 m!5962968))

(declare-fun m!5962970 () Bool)

(assert (=> b!4940373 m!5962970))

(assert (=> b!4940195 m!5962732))

(declare-fun b!4940379 () Bool)

(declare-fun e!3086843 () Bool)

(declare-fun tp!1386220 () Bool)

(declare-fun tp!1386221 () Bool)

(assert (=> b!4940379 (= e!3086843 (and tp!1386220 tp!1386221))))

(assert (=> b!4940188 (= tp!1386170 e!3086843)))

(assert (= (and b!4940188 ((_ is Cons!56896) (exprs!3595 setElem!27902))) b!4940379))

(check-sat (not bm!344705) (not d!1590489) (not bm!344704) (not b!4940373) (not b!4940322) (not b!4940330) (not b!4940343) (not d!1590541) (not d!1590517) (not d!1590555) (not b!4940342) (not b!4940362) (not b!4940363) (not d!1590529) (not b!4940346) (not d!1590551) (not b!4940317) (not b!4940379) (not b!4940347) (not b!4940195) (not b!4940316) (not d!1590549) (not b!4940374) (not d!1590553) (not d!1590505) (not b!4940268) (not d!1590539) (not setNonEmpty!27908) (not b!4940256) (not b!4940243) (not b!4940255) (not d!1590519) (not d!1590521) (not b!4940351) (not b!4940357) tp_is_empty!36087 (not b!4940350) (not d!1590531) (not d!1590557) (not b!4940372) (not b!4940242) (not b!4940344) (not b!4940348) (not b!4940332))
(check-sat)
(get-model)

(declare-fun b!4940380 () Bool)

(declare-fun e!3086844 () Bool)

(declare-fun e!3086846 () Bool)

(assert (=> b!4940380 (= e!3086844 e!3086846)))

(declare-fun res!2108338 () Bool)

(assert (=> b!4940380 (=> (not res!2108338) (not e!3086846))))

(assert (=> b!4940380 (= res!2108338 (not ((_ is Nil!56895) (tail!9725 lt!2036535))))))

(declare-fun d!1590559 () Bool)

(declare-fun e!3086845 () Bool)

(assert (=> d!1590559 e!3086845))

(declare-fun res!2108340 () Bool)

(assert (=> d!1590559 (=> res!2108340 e!3086845)))

(declare-fun lt!2036644 () Bool)

(assert (=> d!1590559 (= res!2108340 (not lt!2036644))))

(assert (=> d!1590559 (= lt!2036644 e!3086844)))

(declare-fun res!2108339 () Bool)

(assert (=> d!1590559 (=> res!2108339 e!3086844)))

(assert (=> d!1590559 (= res!2108339 ((_ is Nil!56895) (tail!9725 testedP!110)))))

(assert (=> d!1590559 (= (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 lt!2036535)) lt!2036644)))

(declare-fun b!4940383 () Bool)

(assert (=> b!4940383 (= e!3086845 (>= (size!37707 (tail!9725 lt!2036535)) (size!37707 (tail!9725 testedP!110))))))

(declare-fun b!4940381 () Bool)

(declare-fun res!2108337 () Bool)

(assert (=> b!4940381 (=> (not res!2108337) (not e!3086846))))

(assert (=> b!4940381 (= res!2108337 (= (head!10586 (tail!9725 testedP!110)) (head!10586 (tail!9725 lt!2036535))))))

(declare-fun b!4940382 () Bool)

(assert (=> b!4940382 (= e!3086846 (isPrefix!5053 (tail!9725 (tail!9725 testedP!110)) (tail!9725 (tail!9725 lt!2036535))))))

(assert (= (and d!1590559 (not res!2108339)) b!4940380))

(assert (= (and b!4940380 res!2108338) b!4940381))

(assert (= (and b!4940381 res!2108337) b!4940382))

(assert (= (and d!1590559 (not res!2108340)) b!4940383))

(assert (=> b!4940383 m!5962938))

(declare-fun m!5962972 () Bool)

(assert (=> b!4940383 m!5962972))

(assert (=> b!4940383 m!5962930))

(declare-fun m!5962974 () Bool)

(assert (=> b!4940383 m!5962974))

(assert (=> b!4940381 m!5962930))

(declare-fun m!5962976 () Bool)

(assert (=> b!4940381 m!5962976))

(assert (=> b!4940381 m!5962938))

(declare-fun m!5962978 () Bool)

(assert (=> b!4940381 m!5962978))

(assert (=> b!4940382 m!5962930))

(declare-fun m!5962980 () Bool)

(assert (=> b!4940382 m!5962980))

(assert (=> b!4940382 m!5962938))

(declare-fun m!5962982 () Bool)

(assert (=> b!4940382 m!5962982))

(assert (=> b!4940382 m!5962980))

(assert (=> b!4940382 m!5962982))

(declare-fun m!5962984 () Bool)

(assert (=> b!4940382 m!5962984))

(assert (=> b!4940347 d!1590559))

(declare-fun d!1590561 () Bool)

(assert (=> d!1590561 (= (tail!9725 testedP!110) (t!367527 testedP!110))))

(assert (=> b!4940347 d!1590561))

(declare-fun d!1590563 () Bool)

(assert (=> d!1590563 (= (tail!9725 lt!2036535) (t!367527 lt!2036535))))

(assert (=> b!4940347 d!1590563))

(declare-fun d!1590565 () Bool)

(declare-fun lt!2036645 () Int)

(assert (=> d!1590565 (>= lt!2036645 0)))

(declare-fun e!3086847 () Int)

(assert (=> d!1590565 (= lt!2036645 e!3086847)))

(declare-fun c!842566 () Bool)

(assert (=> d!1590565 (= c!842566 ((_ is Nil!56895) lt!2036535))))

(assert (=> d!1590565 (= (size!37707 lt!2036535) lt!2036645)))

(declare-fun b!4940384 () Bool)

(assert (=> b!4940384 (= e!3086847 0)))

(declare-fun b!4940385 () Bool)

(assert (=> b!4940385 (= e!3086847 (+ 1 (size!37707 (t!367527 lt!2036535))))))

(assert (= (and d!1590565 c!842566) b!4940384))

(assert (= (and d!1590565 (not c!842566)) b!4940385))

(declare-fun m!5962986 () Bool)

(assert (=> b!4940385 m!5962986))

(assert (=> b!4940348 d!1590565))

(assert (=> b!4940348 d!1590525))

(declare-fun d!1590567 () Bool)

(declare-fun res!2108347 () Bool)

(declare-fun e!3086850 () Bool)

(assert (=> d!1590567 (=> (not res!2108347) (not e!3086850))))

(assert (=> d!1590567 (= res!2108347 (= (csize!30158 (c!842516 totalInput!685)) (+ (size!37710 (left!41504 (c!842516 totalInput!685))) (size!37710 (right!41834 (c!842516 totalInput!685))))))))

(assert (=> d!1590567 (= (inv!74002 (c!842516 totalInput!685)) e!3086850)))

(declare-fun b!4940392 () Bool)

(declare-fun res!2108348 () Bool)

(assert (=> b!4940392 (=> (not res!2108348) (not e!3086850))))

(assert (=> b!4940392 (= res!2108348 (and (not (= (left!41504 (c!842516 totalInput!685)) Empty!14964)) (not (= (right!41834 (c!842516 totalInput!685)) Empty!14964))))))

(declare-fun b!4940393 () Bool)

(declare-fun res!2108349 () Bool)

(assert (=> b!4940393 (=> (not res!2108349) (not e!3086850))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1997 (Conc!14964) Int)

(assert (=> b!4940393 (= res!2108349 (= (cheight!15175 (c!842516 totalInput!685)) (+ (max!0 (height!1997 (left!41504 (c!842516 totalInput!685))) (height!1997 (right!41834 (c!842516 totalInput!685)))) 1)))))

(declare-fun b!4940394 () Bool)

(assert (=> b!4940394 (= e!3086850 (<= 0 (cheight!15175 (c!842516 totalInput!685))))))

(assert (= (and d!1590567 res!2108347) b!4940392))

(assert (= (and b!4940392 res!2108348) b!4940393))

(assert (= (and b!4940393 res!2108349) b!4940394))

(declare-fun m!5962988 () Bool)

(assert (=> d!1590567 m!5962988))

(declare-fun m!5962990 () Bool)

(assert (=> d!1590567 m!5962990))

(declare-fun m!5962992 () Bool)

(assert (=> b!4940393 m!5962992))

(declare-fun m!5962994 () Bool)

(assert (=> b!4940393 m!5962994))

(assert (=> b!4940393 m!5962992))

(assert (=> b!4940393 m!5962994))

(declare-fun m!5962996 () Bool)

(assert (=> b!4940393 m!5962996))

(assert (=> b!4940330 d!1590567))

(declare-fun b!4940406 () Bool)

(declare-fun e!3086856 () List!57019)

(assert (=> b!4940406 (= e!3086856 (++!12426 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533)))) (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533))))))))

(declare-fun b!4940405 () Bool)

(declare-fun list!18098 (IArray!29989) List!57019)

(assert (=> b!4940405 (= e!3086856 (list!18098 (xs!18288 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun d!1590569 () Bool)

(declare-fun c!842571 () Bool)

(assert (=> d!1590569 (= c!842571 ((_ is Empty!14964) (c!842516 (_1!34019 lt!2036533))))))

(declare-fun e!3086855 () List!57019)

(assert (=> d!1590569 (= (list!18097 (c!842516 (_1!34019 lt!2036533))) e!3086855)))

(declare-fun b!4940404 () Bool)

(assert (=> b!4940404 (= e!3086855 e!3086856)))

(declare-fun c!842572 () Bool)

(assert (=> b!4940404 (= c!842572 ((_ is Leaf!24879) (c!842516 (_1!34019 lt!2036533))))))

(declare-fun b!4940403 () Bool)

(assert (=> b!4940403 (= e!3086855 Nil!56895)))

(assert (= (and d!1590569 c!842571) b!4940403))

(assert (= (and d!1590569 (not c!842571)) b!4940404))

(assert (= (and b!4940404 c!842572) b!4940405))

(assert (= (and b!4940404 (not c!842572)) b!4940406))

(declare-fun m!5962998 () Bool)

(assert (=> b!4940406 m!5962998))

(declare-fun m!5963000 () Bool)

(assert (=> b!4940406 m!5963000))

(assert (=> b!4940406 m!5962998))

(assert (=> b!4940406 m!5963000))

(declare-fun m!5963002 () Bool)

(assert (=> b!4940406 m!5963002))

(declare-fun m!5963004 () Bool)

(assert (=> b!4940405 m!5963004))

(assert (=> d!1590517 d!1590569))

(declare-fun d!1590571 () Bool)

(declare-fun c!842575 () Bool)

(assert (=> d!1590571 (= c!842575 ((_ is Nil!56895) lt!2036576))))

(declare-fun e!3086859 () (InoxSet C!27140))

(assert (=> d!1590571 (= (content!10122 lt!2036576) e!3086859)))

(declare-fun b!4940411 () Bool)

(assert (=> b!4940411 (= e!3086859 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940412 () Bool)

(assert (=> b!4940412 (= e!3086859 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036576) true) (content!10122 (t!367527 lt!2036576))))))

(assert (= (and d!1590571 c!842575) b!4940411))

(assert (= (and d!1590571 (not c!842575)) b!4940412))

(declare-fun m!5963006 () Bool)

(assert (=> b!4940412 m!5963006))

(declare-fun m!5963008 () Bool)

(assert (=> b!4940412 m!5963008))

(assert (=> d!1590505 d!1590571))

(declare-fun d!1590573 () Bool)

(declare-fun c!842576 () Bool)

(assert (=> d!1590573 (= c!842576 ((_ is Nil!56895) (list!18095 (_1!34019 lt!2036533))))))

(declare-fun e!3086860 () (InoxSet C!27140))

(assert (=> d!1590573 (= (content!10122 (list!18095 (_1!34019 lt!2036533))) e!3086860)))

(declare-fun b!4940413 () Bool)

(assert (=> b!4940413 (= e!3086860 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940414 () Bool)

(assert (=> b!4940414 (= e!3086860 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (list!18095 (_1!34019 lt!2036533))) true) (content!10122 (t!367527 (list!18095 (_1!34019 lt!2036533))))))))

(assert (= (and d!1590573 c!842576) b!4940413))

(assert (= (and d!1590573 (not c!842576)) b!4940414))

(declare-fun m!5963010 () Bool)

(assert (=> b!4940414 m!5963010))

(declare-fun m!5963012 () Bool)

(assert (=> b!4940414 m!5963012))

(assert (=> d!1590505 d!1590573))

(declare-fun d!1590575 () Bool)

(declare-fun c!842577 () Bool)

(assert (=> d!1590575 (= c!842577 ((_ is Nil!56895) (list!18095 (_2!34019 lt!2036533))))))

(declare-fun e!3086861 () (InoxSet C!27140))

(assert (=> d!1590575 (= (content!10122 (list!18095 (_2!34019 lt!2036533))) e!3086861)))

(declare-fun b!4940415 () Bool)

(assert (=> b!4940415 (= e!3086861 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940416 () Bool)

(assert (=> b!4940416 (= e!3086861 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (list!18095 (_2!34019 lt!2036533))) true) (content!10122 (t!367527 (list!18095 (_2!34019 lt!2036533))))))))

(assert (= (and d!1590575 c!842577) b!4940415))

(assert (= (and d!1590575 (not c!842577)) b!4940416))

(declare-fun m!5963014 () Bool)

(assert (=> b!4940416 m!5963014))

(declare-fun m!5963016 () Bool)

(assert (=> b!4940416 m!5963016))

(assert (=> d!1590505 d!1590575))

(declare-fun d!1590577 () Bool)

(declare-fun e!3086863 () Bool)

(assert (=> d!1590577 e!3086863))

(declare-fun res!2108351 () Bool)

(assert (=> d!1590577 (=> (not res!2108351) (not e!3086863))))

(declare-fun lt!2036646 () List!57019)

(assert (=> d!1590577 (= res!2108351 (= (content!10122 lt!2036646) ((_ map or) (content!10122 (t!367527 (list!18095 (_1!34019 lt!2036533)))) (content!10122 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun e!3086862 () List!57019)

(assert (=> d!1590577 (= lt!2036646 e!3086862)))

(declare-fun c!842578 () Bool)

(assert (=> d!1590577 (= c!842578 ((_ is Nil!56895) (t!367527 (list!18095 (_1!34019 lt!2036533)))))))

(assert (=> d!1590577 (= (++!12426 (t!367527 (list!18095 (_1!34019 lt!2036533))) (list!18095 (_2!34019 lt!2036533))) lt!2036646)))

(declare-fun b!4940417 () Bool)

(assert (=> b!4940417 (= e!3086862 (list!18095 (_2!34019 lt!2036533)))))

(declare-fun b!4940420 () Bool)

(assert (=> b!4940420 (= e!3086863 (or (not (= (list!18095 (_2!34019 lt!2036533)) Nil!56895)) (= lt!2036646 (t!367527 (list!18095 (_1!34019 lt!2036533))))))))

(declare-fun b!4940419 () Bool)

(declare-fun res!2108350 () Bool)

(assert (=> b!4940419 (=> (not res!2108350) (not e!3086863))))

(assert (=> b!4940419 (= res!2108350 (= (size!37707 lt!2036646) (+ (size!37707 (t!367527 (list!18095 (_1!34019 lt!2036533)))) (size!37707 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun b!4940418 () Bool)

(assert (=> b!4940418 (= e!3086862 (Cons!56895 (h!63343 (t!367527 (list!18095 (_1!34019 lt!2036533)))) (++!12426 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533)))) (list!18095 (_2!34019 lt!2036533)))))))

(assert (= (and d!1590577 c!842578) b!4940417))

(assert (= (and d!1590577 (not c!842578)) b!4940418))

(assert (= (and d!1590577 res!2108351) b!4940419))

(assert (= (and b!4940419 res!2108350) b!4940420))

(declare-fun m!5963018 () Bool)

(assert (=> d!1590577 m!5963018))

(assert (=> d!1590577 m!5963012))

(assert (=> d!1590577 m!5962726))

(assert (=> d!1590577 m!5962820))

(declare-fun m!5963020 () Bool)

(assert (=> b!4940419 m!5963020))

(declare-fun m!5963022 () Bool)

(assert (=> b!4940419 m!5963022))

(assert (=> b!4940419 m!5962726))

(assert (=> b!4940419 m!5962828))

(assert (=> b!4940418 m!5962726))

(declare-fun m!5963024 () Bool)

(assert (=> b!4940418 m!5963024))

(assert (=> b!4940242 d!1590577))

(declare-fun d!1590579 () Bool)

(declare-fun res!2108356 () Bool)

(declare-fun e!3086866 () Bool)

(assert (=> d!1590579 (=> (not res!2108356) (not e!3086866))))

(assert (=> d!1590579 (= res!2108356 (<= (size!37707 (list!18098 (xs!18288 (c!842516 totalInput!685)))) 512))))

(assert (=> d!1590579 (= (inv!74003 (c!842516 totalInput!685)) e!3086866)))

(declare-fun b!4940425 () Bool)

(declare-fun res!2108357 () Bool)

(assert (=> b!4940425 (=> (not res!2108357) (not e!3086866))))

(assert (=> b!4940425 (= res!2108357 (= (csize!30159 (c!842516 totalInput!685)) (size!37707 (list!18098 (xs!18288 (c!842516 totalInput!685))))))))

(declare-fun b!4940426 () Bool)

(assert (=> b!4940426 (= e!3086866 (and (> (csize!30159 (c!842516 totalInput!685)) 0) (<= (csize!30159 (c!842516 totalInput!685)) 512)))))

(assert (= (and d!1590579 res!2108356) b!4940425))

(assert (= (and b!4940425 res!2108357) b!4940426))

(declare-fun m!5963026 () Bool)

(assert (=> d!1590579 m!5963026))

(assert (=> d!1590579 m!5963026))

(declare-fun m!5963028 () Bool)

(assert (=> d!1590579 m!5963028))

(assert (=> b!4940425 m!5963026))

(assert (=> b!4940425 m!5963026))

(assert (=> b!4940425 m!5963028))

(assert (=> b!4940332 d!1590579))

(declare-fun d!1590581 () Bool)

(declare-fun lt!2036647 () Int)

(assert (=> d!1590581 (>= lt!2036647 0)))

(declare-fun e!3086867 () Int)

(assert (=> d!1590581 (= lt!2036647 e!3086867)))

(declare-fun c!842579 () Bool)

(assert (=> d!1590581 (= c!842579 ((_ is Nil!56895) lt!2036576))))

(assert (=> d!1590581 (= (size!37707 lt!2036576) lt!2036647)))

(declare-fun b!4940427 () Bool)

(assert (=> b!4940427 (= e!3086867 0)))

(declare-fun b!4940428 () Bool)

(assert (=> b!4940428 (= e!3086867 (+ 1 (size!37707 (t!367527 lt!2036576))))))

(assert (= (and d!1590581 c!842579) b!4940427))

(assert (= (and d!1590581 (not c!842579)) b!4940428))

(declare-fun m!5963030 () Bool)

(assert (=> b!4940428 m!5963030))

(assert (=> b!4940243 d!1590581))

(declare-fun d!1590583 () Bool)

(declare-fun lt!2036648 () Int)

(assert (=> d!1590583 (>= lt!2036648 0)))

(declare-fun e!3086868 () Int)

(assert (=> d!1590583 (= lt!2036648 e!3086868)))

(declare-fun c!842580 () Bool)

(assert (=> d!1590583 (= c!842580 ((_ is Nil!56895) (list!18095 (_1!34019 lt!2036533))))))

(assert (=> d!1590583 (= (size!37707 (list!18095 (_1!34019 lt!2036533))) lt!2036648)))

(declare-fun b!4940429 () Bool)

(assert (=> b!4940429 (= e!3086868 0)))

(declare-fun b!4940430 () Bool)

(assert (=> b!4940430 (= e!3086868 (+ 1 (size!37707 (t!367527 (list!18095 (_1!34019 lt!2036533))))))))

(assert (= (and d!1590583 c!842580) b!4940429))

(assert (= (and d!1590583 (not c!842580)) b!4940430))

(assert (=> b!4940430 m!5963022))

(assert (=> b!4940243 d!1590583))

(declare-fun d!1590585 () Bool)

(declare-fun lt!2036649 () Int)

(assert (=> d!1590585 (>= lt!2036649 0)))

(declare-fun e!3086869 () Int)

(assert (=> d!1590585 (= lt!2036649 e!3086869)))

(declare-fun c!842581 () Bool)

(assert (=> d!1590585 (= c!842581 ((_ is Nil!56895) (list!18095 (_2!34019 lt!2036533))))))

(assert (=> d!1590585 (= (size!37707 (list!18095 (_2!34019 lt!2036533))) lt!2036649)))

(declare-fun b!4940431 () Bool)

(assert (=> b!4940431 (= e!3086869 0)))

(declare-fun b!4940432 () Bool)

(assert (=> b!4940432 (= e!3086869 (+ 1 (size!37707 (t!367527 (list!18095 (_2!34019 lt!2036533))))))))

(assert (= (and d!1590585 c!842581) b!4940431))

(assert (= (and d!1590585 (not c!842581)) b!4940432))

(declare-fun m!5963032 () Bool)

(assert (=> b!4940432 m!5963032))

(assert (=> b!4940243 d!1590585))

(declare-fun d!1590587 () Bool)

(declare-fun res!2108362 () Bool)

(declare-fun e!3086874 () Bool)

(assert (=> d!1590587 (=> res!2108362 e!3086874)))

(assert (=> d!1590587 (= res!2108362 ((_ is Nil!56896) (exprs!3595 setElem!27902)))))

(assert (=> d!1590587 (= (forall!13220 (exprs!3595 setElem!27902) lambda!246196) e!3086874)))

(declare-fun b!4940437 () Bool)

(declare-fun e!3086875 () Bool)

(assert (=> b!4940437 (= e!3086874 e!3086875)))

(declare-fun res!2108363 () Bool)

(assert (=> b!4940437 (=> (not res!2108363) (not e!3086875))))

(declare-fun dynLambda!23026 (Int Regex!13453) Bool)

(assert (=> b!4940437 (= res!2108363 (dynLambda!23026 lambda!246196 (h!63344 (exprs!3595 setElem!27902))))))

(declare-fun b!4940438 () Bool)

(assert (=> b!4940438 (= e!3086875 (forall!13220 (t!367528 (exprs!3595 setElem!27902)) lambda!246196))))

(assert (= (and d!1590587 (not res!2108362)) b!4940437))

(assert (= (and b!4940437 res!2108363) b!4940438))

(declare-fun b_lambda!196345 () Bool)

(assert (=> (not b_lambda!196345) (not b!4940437)))

(declare-fun m!5963034 () Bool)

(assert (=> b!4940437 m!5963034))

(declare-fun m!5963036 () Bool)

(assert (=> b!4940438 m!5963036))

(assert (=> d!1590489 d!1590587))

(declare-fun d!1590589 () Bool)

(declare-fun c!842582 () Bool)

(assert (=> d!1590589 (= c!842582 ((_ is Node!14964) (left!41504 (c!842516 totalInput!685))))))

(declare-fun e!3086876 () Bool)

(assert (=> d!1590589 (= (inv!73998 (left!41504 (c!842516 totalInput!685))) e!3086876)))

(declare-fun b!4940439 () Bool)

(assert (=> b!4940439 (= e!3086876 (inv!74002 (left!41504 (c!842516 totalInput!685))))))

(declare-fun b!4940440 () Bool)

(declare-fun e!3086877 () Bool)

(assert (=> b!4940440 (= e!3086876 e!3086877)))

(declare-fun res!2108364 () Bool)

(assert (=> b!4940440 (= res!2108364 (not ((_ is Leaf!24879) (left!41504 (c!842516 totalInput!685)))))))

(assert (=> b!4940440 (=> res!2108364 e!3086877)))

(declare-fun b!4940441 () Bool)

(assert (=> b!4940441 (= e!3086877 (inv!74003 (left!41504 (c!842516 totalInput!685))))))

(assert (= (and d!1590589 c!842582) b!4940439))

(assert (= (and d!1590589 (not c!842582)) b!4940440))

(assert (= (and b!4940440 (not res!2108364)) b!4940441))

(declare-fun m!5963038 () Bool)

(assert (=> b!4940439 m!5963038))

(declare-fun m!5963040 () Bool)

(assert (=> b!4940441 m!5963040))

(assert (=> b!4940372 d!1590589))

(declare-fun d!1590591 () Bool)

(declare-fun c!842583 () Bool)

(assert (=> d!1590591 (= c!842583 ((_ is Node!14964) (right!41834 (c!842516 totalInput!685))))))

(declare-fun e!3086878 () Bool)

(assert (=> d!1590591 (= (inv!73998 (right!41834 (c!842516 totalInput!685))) e!3086878)))

(declare-fun b!4940442 () Bool)

(assert (=> b!4940442 (= e!3086878 (inv!74002 (right!41834 (c!842516 totalInput!685))))))

(declare-fun b!4940443 () Bool)

(declare-fun e!3086879 () Bool)

(assert (=> b!4940443 (= e!3086878 e!3086879)))

(declare-fun res!2108365 () Bool)

(assert (=> b!4940443 (= res!2108365 (not ((_ is Leaf!24879) (right!41834 (c!842516 totalInput!685)))))))

(assert (=> b!4940443 (=> res!2108365 e!3086879)))

(declare-fun b!4940444 () Bool)

(assert (=> b!4940444 (= e!3086879 (inv!74003 (right!41834 (c!842516 totalInput!685))))))

(assert (= (and d!1590591 c!842583) b!4940442))

(assert (= (and d!1590591 (not c!842583)) b!4940443))

(assert (= (and b!4940443 (not res!2108365)) b!4940444))

(declare-fun m!5963042 () Bool)

(assert (=> b!4940442 m!5963042))

(declare-fun m!5963044 () Bool)

(assert (=> b!4940444 m!5963044))

(assert (=> b!4940372 d!1590591))

(declare-fun d!1590593 () Bool)

(assert (=> d!1590593 (= (inv!74004 (xs!18288 (c!842516 totalInput!685))) (<= (size!37707 (innerList!15052 (xs!18288 (c!842516 totalInput!685)))) 2147483647))))

(declare-fun bs!1181177 () Bool)

(assert (= bs!1181177 d!1590593))

(declare-fun m!5963046 () Bool)

(assert (=> bs!1181177 m!5963046))

(assert (=> b!4940373 d!1590593))

(declare-fun b!4940448 () Bool)

(declare-fun e!3086881 () List!57019)

(assert (=> b!4940448 (= e!3086881 (++!12426 (list!18097 (left!41504 (c!842516 totalInput!685))) (list!18097 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4940447 () Bool)

(assert (=> b!4940447 (= e!3086881 (list!18098 (xs!18288 (c!842516 totalInput!685))))))

(declare-fun d!1590595 () Bool)

(declare-fun c!842584 () Bool)

(assert (=> d!1590595 (= c!842584 ((_ is Empty!14964) (c!842516 totalInput!685)))))

(declare-fun e!3086880 () List!57019)

(assert (=> d!1590595 (= (list!18097 (c!842516 totalInput!685)) e!3086880)))

(declare-fun b!4940446 () Bool)

(assert (=> b!4940446 (= e!3086880 e!3086881)))

(declare-fun c!842585 () Bool)

(assert (=> b!4940446 (= c!842585 ((_ is Leaf!24879) (c!842516 totalInput!685)))))

(declare-fun b!4940445 () Bool)

(assert (=> b!4940445 (= e!3086880 Nil!56895)))

(assert (= (and d!1590595 c!842584) b!4940445))

(assert (= (and d!1590595 (not c!842584)) b!4940446))

(assert (= (and b!4940446 c!842585) b!4940447))

(assert (= (and b!4940446 (not c!842585)) b!4940448))

(declare-fun m!5963048 () Bool)

(assert (=> b!4940448 m!5963048))

(declare-fun m!5963050 () Bool)

(assert (=> b!4940448 m!5963050))

(assert (=> b!4940448 m!5963048))

(assert (=> b!4940448 m!5963050))

(declare-fun m!5963052 () Bool)

(assert (=> b!4940448 m!5963052))

(assert (=> b!4940447 m!5963026))

(assert (=> d!1590551 d!1590595))

(assert (=> b!4940195 d!1590543))

(declare-fun d!1590597 () Bool)

(declare-fun lt!2036650 () Int)

(assert (=> d!1590597 (>= lt!2036650 0)))

(declare-fun e!3086882 () Int)

(assert (=> d!1590597 (= lt!2036650 e!3086882)))

(declare-fun c!842586 () Bool)

(assert (=> d!1590597 (= c!842586 ((_ is Nil!56895) (t!367527 testedP!110)))))

(assert (=> d!1590597 (= (size!37707 (t!367527 testedP!110)) lt!2036650)))

(declare-fun b!4940449 () Bool)

(assert (=> b!4940449 (= e!3086882 0)))

(declare-fun b!4940450 () Bool)

(assert (=> b!4940450 (= e!3086882 (+ 1 (size!37707 (t!367527 (t!367527 testedP!110)))))))

(assert (= (and d!1590597 c!842586) b!4940449))

(assert (= (and d!1590597 (not c!842586)) b!4940450))

(declare-fun m!5963054 () Bool)

(assert (=> b!4940450 m!5963054))

(assert (=> b!4940268 d!1590597))

(declare-fun d!1590599 () Bool)

(declare-fun lt!2036651 () List!57019)

(assert (=> d!1590599 (= (++!12426 (t!367527 testedP!110) lt!2036651) (tail!9725 lt!2036530))))

(declare-fun e!3086883 () List!57019)

(assert (=> d!1590599 (= lt!2036651 e!3086883)))

(declare-fun c!842587 () Bool)

(assert (=> d!1590599 (= c!842587 ((_ is Cons!56895) (t!367527 testedP!110)))))

(assert (=> d!1590599 (>= (size!37707 (tail!9725 lt!2036530)) (size!37707 (t!367527 testedP!110)))))

(assert (=> d!1590599 (= (getSuffix!3035 (tail!9725 lt!2036530) (t!367527 testedP!110)) lt!2036651)))

(declare-fun b!4940451 () Bool)

(assert (=> b!4940451 (= e!3086883 (getSuffix!3035 (tail!9725 (tail!9725 lt!2036530)) (t!367527 (t!367527 testedP!110))))))

(declare-fun b!4940452 () Bool)

(assert (=> b!4940452 (= e!3086883 (tail!9725 lt!2036530))))

(assert (= (and d!1590599 c!842587) b!4940451))

(assert (= (and d!1590599 (not c!842587)) b!4940452))

(declare-fun m!5963056 () Bool)

(assert (=> d!1590599 m!5963056))

(assert (=> d!1590599 m!5962918))

(declare-fun m!5963058 () Bool)

(assert (=> d!1590599 m!5963058))

(assert (=> d!1590599 m!5962864))

(assert (=> b!4940451 m!5962918))

(declare-fun m!5963060 () Bool)

(assert (=> b!4940451 m!5963060))

(assert (=> b!4940451 m!5963060))

(declare-fun m!5963062 () Bool)

(assert (=> b!4940451 m!5963062))

(assert (=> b!4940322 d!1590599))

(declare-fun d!1590601 () Bool)

(assert (=> d!1590601 (= (tail!9725 lt!2036530) (t!367527 lt!2036530))))

(assert (=> b!4940322 d!1590601))

(declare-fun b!4940456 () Bool)

(declare-fun e!3086885 () List!57019)

(assert (=> b!4940456 (= e!3086885 (++!12426 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533)))) (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533))))))))

(declare-fun b!4940455 () Bool)

(assert (=> b!4940455 (= e!3086885 (list!18098 (xs!18288 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun d!1590603 () Bool)

(declare-fun c!842588 () Bool)

(assert (=> d!1590603 (= c!842588 ((_ is Empty!14964) (c!842516 (_2!34019 lt!2036533))))))

(declare-fun e!3086884 () List!57019)

(assert (=> d!1590603 (= (list!18097 (c!842516 (_2!34019 lt!2036533))) e!3086884)))

(declare-fun b!4940454 () Bool)

(assert (=> b!4940454 (= e!3086884 e!3086885)))

(declare-fun c!842589 () Bool)

(assert (=> b!4940454 (= c!842589 ((_ is Leaf!24879) (c!842516 (_2!34019 lt!2036533))))))

(declare-fun b!4940453 () Bool)

(assert (=> b!4940453 (= e!3086884 Nil!56895)))

(assert (= (and d!1590603 c!842588) b!4940453))

(assert (= (and d!1590603 (not c!842588)) b!4940454))

(assert (= (and b!4940454 c!842589) b!4940455))

(assert (= (and b!4940454 (not c!842589)) b!4940456))

(declare-fun m!5963064 () Bool)

(assert (=> b!4940456 m!5963064))

(declare-fun m!5963066 () Bool)

(assert (=> b!4940456 m!5963066))

(assert (=> b!4940456 m!5963064))

(assert (=> b!4940456 m!5963066))

(declare-fun m!5963068 () Bool)

(assert (=> b!4940456 m!5963068))

(declare-fun m!5963070 () Bool)

(assert (=> b!4940455 m!5963070))

(assert (=> d!1590519 d!1590603))

(declare-fun b!4940457 () Bool)

(declare-fun e!3086886 () Bool)

(declare-fun e!3086888 () Bool)

(assert (=> b!4940457 (= e!3086886 e!3086888)))

(declare-fun res!2108367 () Bool)

(assert (=> b!4940457 (=> (not res!2108367) (not e!3086888))))

(assert (=> b!4940457 (= res!2108367 (not ((_ is Nil!56895) (++!12426 testedP!110 testedSuffix!70))))))

(declare-fun d!1590605 () Bool)

(declare-fun e!3086887 () Bool)

(assert (=> d!1590605 e!3086887))

(declare-fun res!2108369 () Bool)

(assert (=> d!1590605 (=> res!2108369 e!3086887)))

(declare-fun lt!2036652 () Bool)

(assert (=> d!1590605 (= res!2108369 (not lt!2036652))))

(assert (=> d!1590605 (= lt!2036652 e!3086886)))

(declare-fun res!2108368 () Bool)

(assert (=> d!1590605 (=> res!2108368 e!3086886)))

(assert (=> d!1590605 (= res!2108368 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590605 (= (isPrefix!5053 testedP!110 (++!12426 testedP!110 testedSuffix!70)) lt!2036652)))

(declare-fun b!4940460 () Bool)

(assert (=> b!4940460 (= e!3086887 (>= (size!37707 (++!12426 testedP!110 testedSuffix!70)) (size!37707 testedP!110)))))

(declare-fun b!4940458 () Bool)

(declare-fun res!2108366 () Bool)

(assert (=> b!4940458 (=> (not res!2108366) (not e!3086888))))

(assert (=> b!4940458 (= res!2108366 (= (head!10586 testedP!110) (head!10586 (++!12426 testedP!110 testedSuffix!70))))))

(declare-fun b!4940459 () Bool)

(assert (=> b!4940459 (= e!3086888 (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 (++!12426 testedP!110 testedSuffix!70))))))

(assert (= (and d!1590605 (not res!2108368)) b!4940457))

(assert (= (and b!4940457 res!2108367) b!4940458))

(assert (= (and b!4940458 res!2108366) b!4940459))

(assert (= (and d!1590605 (not res!2108369)) b!4940460))

(assert (=> b!4940460 m!5962720))

(declare-fun m!5963072 () Bool)

(assert (=> b!4940460 m!5963072))

(assert (=> b!4940460 m!5962744))

(assert (=> b!4940458 m!5962926))

(assert (=> b!4940458 m!5962720))

(declare-fun m!5963074 () Bool)

(assert (=> b!4940458 m!5963074))

(assert (=> b!4940459 m!5962930))

(assert (=> b!4940459 m!5962720))

(declare-fun m!5963076 () Bool)

(assert (=> b!4940459 m!5963076))

(assert (=> b!4940459 m!5962930))

(assert (=> b!4940459 m!5963076))

(declare-fun m!5963078 () Bool)

(assert (=> b!4940459 m!5963078))

(assert (=> d!1590549 d!1590605))

(assert (=> d!1590549 d!1590553))

(declare-fun d!1590607 () Bool)

(assert (=> d!1590607 (isPrefix!5053 testedP!110 (++!12426 testedP!110 testedSuffix!70))))

(assert (=> d!1590607 true))

(declare-fun _$46!1906 () Unit!147645)

(assert (=> d!1590607 (= (choose!36376 testedP!110 testedSuffix!70) _$46!1906)))

(declare-fun bs!1181178 () Bool)

(assert (= bs!1181178 d!1590607))

(assert (=> bs!1181178 m!5962720))

(assert (=> bs!1181178 m!5962720))

(assert (=> bs!1181178 m!5962942))

(assert (=> d!1590549 d!1590607))

(assert (=> d!1590529 d!1590583))

(assert (=> d!1590529 d!1590517))

(declare-fun d!1590609 () Bool)

(declare-fun lt!2036655 () Int)

(assert (=> d!1590609 (= lt!2036655 (size!37707 (list!18097 (c!842516 (_1!34019 lt!2036533)))))))

(assert (=> d!1590609 (= lt!2036655 (ite ((_ is Empty!14964) (c!842516 (_1!34019 lt!2036533))) 0 (ite ((_ is Leaf!24879) (c!842516 (_1!34019 lt!2036533))) (csize!30159 (c!842516 (_1!34019 lt!2036533))) (csize!30158 (c!842516 (_1!34019 lt!2036533))))))))

(assert (=> d!1590609 (= (size!37710 (c!842516 (_1!34019 lt!2036533))) lt!2036655)))

(declare-fun bs!1181179 () Bool)

(assert (= bs!1181179 d!1590609))

(assert (=> bs!1181179 m!5962832))

(assert (=> bs!1181179 m!5962832))

(declare-fun m!5963080 () Bool)

(assert (=> bs!1181179 m!5963080))

(assert (=> d!1590529 d!1590609))

(declare-fun d!1590611 () Bool)

(declare-fun c!842590 () Bool)

(assert (=> d!1590611 (= c!842590 ((_ is Nil!56895) lt!2036642))))

(declare-fun e!3086889 () (InoxSet C!27140))

(assert (=> d!1590611 (= (content!10122 lt!2036642) e!3086889)))

(declare-fun b!4940461 () Bool)

(assert (=> b!4940461 (= e!3086889 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940462 () Bool)

(assert (=> b!4940462 (= e!3086889 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036642) true) (content!10122 (t!367527 lt!2036642))))))

(assert (= (and d!1590611 c!842590) b!4940461))

(assert (= (and d!1590611 (not c!842590)) b!4940462))

(declare-fun m!5963082 () Bool)

(assert (=> b!4940462 m!5963082))

(declare-fun m!5963084 () Bool)

(assert (=> b!4940462 m!5963084))

(assert (=> d!1590553 d!1590611))

(declare-fun d!1590613 () Bool)

(declare-fun c!842591 () Bool)

(assert (=> d!1590613 (= c!842591 ((_ is Nil!56895) testedP!110))))

(declare-fun e!3086890 () (InoxSet C!27140))

(assert (=> d!1590613 (= (content!10122 testedP!110) e!3086890)))

(declare-fun b!4940463 () Bool)

(assert (=> b!4940463 (= e!3086890 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940464 () Bool)

(assert (=> b!4940464 (= e!3086890 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 testedP!110) true) (content!10122 (t!367527 testedP!110))))))

(assert (= (and d!1590613 c!842591) b!4940463))

(assert (= (and d!1590613 (not c!842591)) b!4940464))

(declare-fun m!5963086 () Bool)

(assert (=> b!4940464 m!5963086))

(declare-fun m!5963088 () Bool)

(assert (=> b!4940464 m!5963088))

(assert (=> d!1590553 d!1590613))

(declare-fun d!1590615 () Bool)

(declare-fun c!842592 () Bool)

(assert (=> d!1590615 (= c!842592 ((_ is Nil!56895) testedSuffix!70))))

(declare-fun e!3086891 () (InoxSet C!27140))

(assert (=> d!1590615 (= (content!10122 testedSuffix!70) e!3086891)))

(declare-fun b!4940465 () Bool)

(assert (=> b!4940465 (= e!3086891 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940466 () Bool)

(assert (=> b!4940466 (= e!3086891 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 testedSuffix!70) true) (content!10122 (t!367527 testedSuffix!70))))))

(assert (= (and d!1590615 c!842592) b!4940465))

(assert (= (and d!1590615 (not c!842592)) b!4940466))

(declare-fun m!5963090 () Bool)

(assert (=> b!4940466 m!5963090))

(declare-fun m!5963092 () Bool)

(assert (=> b!4940466 m!5963092))

(assert (=> d!1590553 d!1590615))

(declare-fun d!1590617 () Bool)

(declare-fun e!3086893 () Bool)

(assert (=> d!1590617 e!3086893))

(declare-fun res!2108371 () Bool)

(assert (=> d!1590617 (=> (not res!2108371) (not e!3086893))))

(declare-fun lt!2036656 () List!57019)

(assert (=> d!1590617 (= res!2108371 (= (content!10122 lt!2036656) ((_ map or) (content!10122 testedP!110) (content!10122 lt!2036634))))))

(declare-fun e!3086892 () List!57019)

(assert (=> d!1590617 (= lt!2036656 e!3086892)))

(declare-fun c!842593 () Bool)

(assert (=> d!1590617 (= c!842593 ((_ is Nil!56895) testedP!110))))

(assert (=> d!1590617 (= (++!12426 testedP!110 lt!2036634) lt!2036656)))

(declare-fun b!4940467 () Bool)

(assert (=> b!4940467 (= e!3086892 lt!2036634)))

(declare-fun b!4940470 () Bool)

(assert (=> b!4940470 (= e!3086893 (or (not (= lt!2036634 Nil!56895)) (= lt!2036656 testedP!110)))))

(declare-fun b!4940469 () Bool)

(declare-fun res!2108370 () Bool)

(assert (=> b!4940469 (=> (not res!2108370) (not e!3086893))))

(assert (=> b!4940469 (= res!2108370 (= (size!37707 lt!2036656) (+ (size!37707 testedP!110) (size!37707 lt!2036634))))))

(declare-fun b!4940468 () Bool)

(assert (=> b!4940468 (= e!3086892 (Cons!56895 (h!63343 testedP!110) (++!12426 (t!367527 testedP!110) lt!2036634)))))

(assert (= (and d!1590617 c!842593) b!4940467))

(assert (= (and d!1590617 (not c!842593)) b!4940468))

(assert (= (and d!1590617 res!2108371) b!4940469))

(assert (= (and b!4940469 res!2108370) b!4940470))

(declare-fun m!5963094 () Bool)

(assert (=> d!1590617 m!5963094))

(assert (=> d!1590617 m!5962950))

(declare-fun m!5963096 () Bool)

(assert (=> d!1590617 m!5963096))

(declare-fun m!5963098 () Bool)

(assert (=> b!4940469 m!5963098))

(assert (=> b!4940469 m!5962744))

(declare-fun m!5963100 () Bool)

(assert (=> b!4940469 m!5963100))

(declare-fun m!5963102 () Bool)

(assert (=> b!4940468 m!5963102))

(assert (=> d!1590541 d!1590617))

(declare-fun d!1590619 () Bool)

(declare-fun lt!2036657 () Int)

(assert (=> d!1590619 (>= lt!2036657 0)))

(declare-fun e!3086894 () Int)

(assert (=> d!1590619 (= lt!2036657 e!3086894)))

(declare-fun c!842594 () Bool)

(assert (=> d!1590619 (= c!842594 ((_ is Nil!56895) lt!2036530))))

(assert (=> d!1590619 (= (size!37707 lt!2036530) lt!2036657)))

(declare-fun b!4940471 () Bool)

(assert (=> b!4940471 (= e!3086894 0)))

(declare-fun b!4940472 () Bool)

(assert (=> b!4940472 (= e!3086894 (+ 1 (size!37707 (t!367527 lt!2036530))))))

(assert (= (and d!1590619 c!842594) b!4940471))

(assert (= (and d!1590619 (not c!842594)) b!4940472))

(declare-fun m!5963104 () Bool)

(assert (=> b!4940472 m!5963104))

(assert (=> d!1590541 d!1590619))

(assert (=> d!1590541 d!1590525))

(declare-fun d!1590621 () Bool)

(assert (=> d!1590621 (= (isEmpty!30629 (getLanguageWitness!662 z!3568)) (not ((_ is Some!14197) (getLanguageWitness!662 z!3568))))))

(assert (=> d!1590531 d!1590621))

(declare-fun bs!1181180 () Bool)

(declare-fun d!1590623 () Bool)

(assert (= bs!1181180 (and d!1590623 d!1590531)))

(declare-fun lambda!246221 () Int)

(assert (=> bs!1181180 (not (= lambda!246221 lambda!246212))))

(declare-fun bs!1181181 () Bool)

(assert (= bs!1181181 (and d!1590623 b!4940316)))

(assert (=> bs!1181181 (= lambda!246221 lambda!246213)))

(declare-fun bs!1181182 () Bool)

(assert (= bs!1181182 (and d!1590623 b!4940317)))

(assert (=> bs!1181182 (= lambda!246221 lambda!246214)))

(declare-fun lt!2036660 () Option!14198)

(declare-fun isDefined!11176 (Option!14198) Bool)

(declare-fun exists!1308 ((InoxSet Context!6190) Int) Bool)

(assert (=> d!1590623 (= (isDefined!11176 lt!2036660) (exists!1308 z!3568 lambda!246221))))

(declare-fun e!3086897 () Option!14198)

(assert (=> d!1590623 (= lt!2036660 e!3086897)))

(declare-fun c!842603 () Bool)

(assert (=> d!1590623 (= c!842603 (exists!1308 z!3568 lambda!246221))))

(assert (=> d!1590623 (= (getLanguageWitness!662 z!3568) lt!2036660)))

(declare-fun b!4940477 () Bool)

(declare-fun getLanguageWitness!663 (Context!6190) Option!14198)

(declare-fun getWitness!641 ((InoxSet Context!6190) Int) Context!6190)

(assert (=> b!4940477 (= e!3086897 (getLanguageWitness!663 (getWitness!641 z!3568 lambda!246221)))))

(declare-fun b!4940478 () Bool)

(assert (=> b!4940478 (= e!3086897 None!14197)))

(assert (= (and d!1590623 c!842603) b!4940477))

(assert (= (and d!1590623 (not c!842603)) b!4940478))

(declare-fun m!5963106 () Bool)

(assert (=> d!1590623 m!5963106))

(declare-fun m!5963108 () Bool)

(assert (=> d!1590623 m!5963108))

(assert (=> d!1590623 m!5963108))

(declare-fun m!5963110 () Bool)

(assert (=> b!4940477 m!5963110))

(assert (=> b!4940477 m!5963110))

(declare-fun m!5963112 () Bool)

(assert (=> b!4940477 m!5963112))

(assert (=> d!1590531 d!1590623))

(declare-fun d!1590625 () Bool)

(declare-fun lt!2036663 () Bool)

(declare-fun forall!13223 (List!57022 Int) Bool)

(assert (=> d!1590625 (= lt!2036663 (forall!13223 (toList!7980 z!3568) lambda!246212))))

(declare-fun choose!36377 ((InoxSet Context!6190) Int) Bool)

(assert (=> d!1590625 (= lt!2036663 (choose!36377 z!3568 lambda!246212))))

(assert (=> d!1590625 (= (forall!13222 z!3568 lambda!246212) lt!2036663)))

(declare-fun bs!1181183 () Bool)

(assert (= bs!1181183 d!1590625))

(assert (=> bs!1181183 m!5962906))

(assert (=> bs!1181183 m!5962906))

(declare-fun m!5963114 () Bool)

(assert (=> bs!1181183 m!5963114))

(declare-fun m!5963116 () Bool)

(assert (=> bs!1181183 m!5963116))

(assert (=> d!1590531 d!1590625))

(declare-fun bs!1181185 () Bool)

(declare-fun d!1590629 () Bool)

(assert (= bs!1181185 (and d!1590629 d!1590531)))

(declare-fun lambda!246224 () Int)

(assert (=> bs!1181185 (not (= lambda!246224 lambda!246212))))

(declare-fun bs!1181186 () Bool)

(assert (= bs!1181186 (and d!1590629 b!4940316)))

(assert (=> bs!1181186 (not (= lambda!246224 lambda!246213))))

(declare-fun bs!1181187 () Bool)

(assert (= bs!1181187 (and d!1590629 b!4940317)))

(assert (=> bs!1181187 (not (= lambda!246224 lambda!246214))))

(declare-fun bs!1181188 () Bool)

(assert (= bs!1181188 (and d!1590629 d!1590623)))

(assert (=> bs!1181188 (not (= lambda!246224 lambda!246221))))

(assert (=> d!1590629 true))

(declare-fun order!25995 () Int)

(declare-fun dynLambda!23027 (Int Int) Int)

(assert (=> d!1590629 (< (dynLambda!23027 order!25995 lambda!246212) (dynLambda!23027 order!25995 lambda!246224))))

(assert (=> d!1590629 (exists!1307 lt!2036628 lambda!246224)))

(declare-fun lt!2036667 () Unit!147645)

(declare-fun choose!36378 (List!57022 Int) Unit!147645)

(assert (=> d!1590629 (= lt!2036667 (choose!36378 lt!2036628 lambda!246212))))

(assert (=> d!1590629 (not (forall!13223 lt!2036628 lambda!246212))))

(assert (=> d!1590629 (= (lemmaNotForallThenExists!218 lt!2036628 lambda!246212) lt!2036667)))

(declare-fun bs!1181189 () Bool)

(assert (= bs!1181189 d!1590629))

(declare-fun m!5963138 () Bool)

(assert (=> bs!1181189 m!5963138))

(declare-fun m!5963140 () Bool)

(assert (=> bs!1181189 m!5963140))

(declare-fun m!5963142 () Bool)

(assert (=> bs!1181189 m!5963142))

(assert (=> b!4940316 d!1590629))

(declare-fun bs!1181190 () Bool)

(declare-fun d!1590641 () Bool)

(assert (= bs!1181190 (and d!1590641 b!4940316)))

(declare-fun lambda!246227 () Int)

(assert (=> bs!1181190 (not (= lambda!246227 lambda!246213))))

(declare-fun bs!1181191 () Bool)

(assert (= bs!1181191 (and d!1590641 d!1590629)))

(assert (=> bs!1181191 (= lambda!246227 lambda!246224)))

(declare-fun bs!1181192 () Bool)

(assert (= bs!1181192 (and d!1590641 b!4940317)))

(assert (=> bs!1181192 (not (= lambda!246227 lambda!246214))))

(declare-fun bs!1181193 () Bool)

(assert (= bs!1181193 (and d!1590641 d!1590623)))

(assert (=> bs!1181193 (not (= lambda!246227 lambda!246221))))

(declare-fun bs!1181194 () Bool)

(assert (= bs!1181194 (and d!1590641 d!1590531)))

(assert (=> bs!1181194 (not (= lambda!246227 lambda!246212))))

(assert (=> d!1590641 true))

(assert (=> d!1590641 (< (dynLambda!23027 order!25995 lambda!246212) (dynLambda!23027 order!25995 lambda!246227))))

(assert (=> d!1590641 (not (exists!1307 lt!2036623 lambda!246227))))

(declare-fun lt!2036670 () Unit!147645)

(declare-fun choose!36379 (List!57022 Int) Unit!147645)

(assert (=> d!1590641 (= lt!2036670 (choose!36379 lt!2036623 lambda!246212))))

(assert (=> d!1590641 (forall!13223 lt!2036623 lambda!246212)))

(assert (=> d!1590641 (= (lemmaForallThenNotExists!201 lt!2036623 lambda!246212) lt!2036670)))

(declare-fun bs!1181195 () Bool)

(assert (= bs!1181195 d!1590641))

(declare-fun m!5963152 () Bool)

(assert (=> bs!1181195 m!5963152))

(declare-fun m!5963154 () Bool)

(assert (=> bs!1181195 m!5963154))

(declare-fun m!5963156 () Bool)

(assert (=> bs!1181195 m!5963156))

(assert (=> b!4940317 d!1590641))

(declare-fun b!4940536 () Bool)

(declare-fun res!2108399 () Bool)

(declare-fun e!3086927 () Bool)

(assert (=> b!4940536 (=> (not res!2108399) (not e!3086927))))

(assert (=> b!4940536 (= res!2108399 (isBalanced!4130 (left!41504 (c!842516 (_2!34019 lt!2036588)))))))

(declare-fun d!1590645 () Bool)

(declare-fun res!2108398 () Bool)

(declare-fun e!3086928 () Bool)

(assert (=> d!1590645 (=> res!2108398 e!3086928)))

(assert (=> d!1590645 (= res!2108398 (not ((_ is Node!14964) (c!842516 (_2!34019 lt!2036588)))))))

(assert (=> d!1590645 (= (isBalanced!4130 (c!842516 (_2!34019 lt!2036588))) e!3086928)))

(declare-fun b!4940537 () Bool)

(declare-fun res!2108400 () Bool)

(assert (=> b!4940537 (=> (not res!2108400) (not e!3086927))))

(assert (=> b!4940537 (= res!2108400 (<= (- (height!1997 (left!41504 (c!842516 (_2!34019 lt!2036588)))) (height!1997 (right!41834 (c!842516 (_2!34019 lt!2036588))))) 1))))

(declare-fun b!4940538 () Bool)

(declare-fun res!2108397 () Bool)

(assert (=> b!4940538 (=> (not res!2108397) (not e!3086927))))

(assert (=> b!4940538 (= res!2108397 (isBalanced!4130 (right!41834 (c!842516 (_2!34019 lt!2036588)))))))

(declare-fun b!4940539 () Bool)

(declare-fun isEmpty!30630 (Conc!14964) Bool)

(assert (=> b!4940539 (= e!3086927 (not (isEmpty!30630 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun b!4940540 () Bool)

(assert (=> b!4940540 (= e!3086928 e!3086927)))

(declare-fun res!2108401 () Bool)

(assert (=> b!4940540 (=> (not res!2108401) (not e!3086927))))

(assert (=> b!4940540 (= res!2108401 (<= (- 1) (- (height!1997 (left!41504 (c!842516 (_2!34019 lt!2036588)))) (height!1997 (right!41834 (c!842516 (_2!34019 lt!2036588)))))))))

(declare-fun b!4940541 () Bool)

(declare-fun res!2108402 () Bool)

(assert (=> b!4940541 (=> (not res!2108402) (not e!3086927))))

(assert (=> b!4940541 (= res!2108402 (not (isEmpty!30630 (left!41504 (c!842516 (_2!34019 lt!2036588))))))))

(assert (= (and d!1590645 (not res!2108398)) b!4940540))

(assert (= (and b!4940540 res!2108401) b!4940537))

(assert (= (and b!4940537 res!2108400) b!4940536))

(assert (= (and b!4940536 res!2108399) b!4940538))

(assert (= (and b!4940538 res!2108397) b!4940541))

(assert (= (and b!4940541 res!2108402) b!4940539))

(declare-fun m!5963182 () Bool)

(assert (=> b!4940537 m!5963182))

(declare-fun m!5963184 () Bool)

(assert (=> b!4940537 m!5963184))

(declare-fun m!5963186 () Bool)

(assert (=> b!4940536 m!5963186))

(declare-fun m!5963188 () Bool)

(assert (=> b!4940539 m!5963188))

(declare-fun m!5963190 () Bool)

(assert (=> b!4940541 m!5963190))

(declare-fun m!5963192 () Bool)

(assert (=> b!4940538 m!5963192))

(assert (=> b!4940540 m!5963182))

(assert (=> b!4940540 m!5963184))

(assert (=> b!4940255 d!1590645))

(declare-fun b!4940546 () Bool)

(declare-fun res!2108409 () Bool)

(declare-fun e!3086931 () Bool)

(assert (=> b!4940546 (=> (not res!2108409) (not e!3086931))))

(assert (=> b!4940546 (= res!2108409 (isBalanced!4130 (left!41504 (c!842516 totalInput!685))))))

(declare-fun d!1590657 () Bool)

(declare-fun res!2108408 () Bool)

(declare-fun e!3086932 () Bool)

(assert (=> d!1590657 (=> res!2108408 e!3086932)))

(assert (=> d!1590657 (= res!2108408 (not ((_ is Node!14964) (c!842516 totalInput!685))))))

(assert (=> d!1590657 (= (isBalanced!4130 (c!842516 totalInput!685)) e!3086932)))

(declare-fun b!4940547 () Bool)

(declare-fun res!2108410 () Bool)

(assert (=> b!4940547 (=> (not res!2108410) (not e!3086931))))

(assert (=> b!4940547 (= res!2108410 (<= (- (height!1997 (left!41504 (c!842516 totalInput!685))) (height!1997 (right!41834 (c!842516 totalInput!685)))) 1))))

(declare-fun b!4940548 () Bool)

(declare-fun res!2108407 () Bool)

(assert (=> b!4940548 (=> (not res!2108407) (not e!3086931))))

(assert (=> b!4940548 (= res!2108407 (isBalanced!4130 (right!41834 (c!842516 totalInput!685))))))

(declare-fun b!4940549 () Bool)

(assert (=> b!4940549 (= e!3086931 (not (isEmpty!30630 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4940550 () Bool)

(assert (=> b!4940550 (= e!3086932 e!3086931)))

(declare-fun res!2108411 () Bool)

(assert (=> b!4940550 (=> (not res!2108411) (not e!3086931))))

(assert (=> b!4940550 (= res!2108411 (<= (- 1) (- (height!1997 (left!41504 (c!842516 totalInput!685))) (height!1997 (right!41834 (c!842516 totalInput!685))))))))

(declare-fun b!4940551 () Bool)

(declare-fun res!2108412 () Bool)

(assert (=> b!4940551 (=> (not res!2108412) (not e!3086931))))

(assert (=> b!4940551 (= res!2108412 (not (isEmpty!30630 (left!41504 (c!842516 totalInput!685)))))))

(assert (= (and d!1590657 (not res!2108408)) b!4940550))

(assert (= (and b!4940550 res!2108411) b!4940547))

(assert (= (and b!4940547 res!2108410) b!4940546))

(assert (= (and b!4940546 res!2108409) b!4940548))

(assert (= (and b!4940548 res!2108407) b!4940551))

(assert (= (and b!4940551 res!2108412) b!4940549))

(assert (=> b!4940547 m!5962992))

(assert (=> b!4940547 m!5962994))

(declare-fun m!5963194 () Bool)

(assert (=> b!4940546 m!5963194))

(declare-fun m!5963196 () Bool)

(assert (=> b!4940549 m!5963196))

(declare-fun m!5963198 () Bool)

(assert (=> b!4940551 m!5963198))

(declare-fun m!5963200 () Bool)

(assert (=> b!4940548 m!5963200))

(assert (=> b!4940550 m!5962992))

(assert (=> b!4940550 m!5962994))

(assert (=> d!1590555 d!1590657))

(declare-fun bs!1181198 () Bool)

(declare-fun d!1590659 () Bool)

(assert (= bs!1181198 (and d!1590659 b!4940316)))

(declare-fun lambda!246231 () Int)

(assert (=> bs!1181198 (not (= lambda!246231 lambda!246213))))

(declare-fun bs!1181199 () Bool)

(assert (= bs!1181199 (and d!1590659 d!1590629)))

(assert (=> bs!1181199 (= (= (ite c!842558 lambda!246213 lambda!246214) lambda!246212) (= lambda!246231 lambda!246224))))

(declare-fun bs!1181200 () Bool)

(assert (= bs!1181200 (and d!1590659 b!4940317)))

(assert (=> bs!1181200 (not (= lambda!246231 lambda!246214))))

(declare-fun bs!1181201 () Bool)

(assert (= bs!1181201 (and d!1590659 d!1590641)))

(assert (=> bs!1181201 (= (= (ite c!842558 lambda!246213 lambda!246214) lambda!246212) (= lambda!246231 lambda!246227))))

(declare-fun bs!1181202 () Bool)

(assert (= bs!1181202 (and d!1590659 d!1590623)))

(assert (=> bs!1181202 (not (= lambda!246231 lambda!246221))))

(declare-fun bs!1181203 () Bool)

(assert (= bs!1181203 (and d!1590659 d!1590531)))

(assert (=> bs!1181203 (not (= lambda!246231 lambda!246212))))

(assert (=> d!1590659 true))

(assert (=> d!1590659 (< (dynLambda!23027 order!25995 (ite c!842558 lambda!246213 lambda!246214)) (dynLambda!23027 order!25995 lambda!246231))))

(assert (=> d!1590659 (= (exists!1307 (ite c!842558 lt!2036628 lt!2036623) (ite c!842558 lambda!246213 lambda!246214)) (not (forall!13223 (ite c!842558 lt!2036628 lt!2036623) lambda!246231)))))

(declare-fun bs!1181204 () Bool)

(assert (= bs!1181204 d!1590659))

(declare-fun m!5963208 () Bool)

(assert (=> bs!1181204 m!5963208))

(assert (=> bm!344704 d!1590659))

(declare-fun b!4940554 () Bool)

(declare-fun res!2108417 () Bool)

(declare-fun e!3086934 () Bool)

(assert (=> b!4940554 (=> (not res!2108417) (not e!3086934))))

(assert (=> b!4940554 (= res!2108417 (isBalanced!4130 (left!41504 (c!842516 (_1!34019 lt!2036588)))))))

(declare-fun d!1590665 () Bool)

(declare-fun res!2108416 () Bool)

(declare-fun e!3086935 () Bool)

(assert (=> d!1590665 (=> res!2108416 e!3086935)))

(assert (=> d!1590665 (= res!2108416 (not ((_ is Node!14964) (c!842516 (_1!34019 lt!2036588)))))))

(assert (=> d!1590665 (= (isBalanced!4130 (c!842516 (_1!34019 lt!2036588))) e!3086935)))

(declare-fun b!4940555 () Bool)

(declare-fun res!2108418 () Bool)

(assert (=> b!4940555 (=> (not res!2108418) (not e!3086934))))

(assert (=> b!4940555 (= res!2108418 (<= (- (height!1997 (left!41504 (c!842516 (_1!34019 lt!2036588)))) (height!1997 (right!41834 (c!842516 (_1!34019 lt!2036588))))) 1))))

(declare-fun b!4940556 () Bool)

(declare-fun res!2108415 () Bool)

(assert (=> b!4940556 (=> (not res!2108415) (not e!3086934))))

(assert (=> b!4940556 (= res!2108415 (isBalanced!4130 (right!41834 (c!842516 (_1!34019 lt!2036588)))))))

(declare-fun b!4940557 () Bool)

(assert (=> b!4940557 (= e!3086934 (not (isEmpty!30630 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun b!4940558 () Bool)

(assert (=> b!4940558 (= e!3086935 e!3086934)))

(declare-fun res!2108419 () Bool)

(assert (=> b!4940558 (=> (not res!2108419) (not e!3086934))))

(assert (=> b!4940558 (= res!2108419 (<= (- 1) (- (height!1997 (left!41504 (c!842516 (_1!34019 lt!2036588)))) (height!1997 (right!41834 (c!842516 (_1!34019 lt!2036588)))))))))

(declare-fun b!4940559 () Bool)

(declare-fun res!2108420 () Bool)

(assert (=> b!4940559 (=> (not res!2108420) (not e!3086934))))

(assert (=> b!4940559 (= res!2108420 (not (isEmpty!30630 (left!41504 (c!842516 (_1!34019 lt!2036588))))))))

(assert (= (and d!1590665 (not res!2108416)) b!4940558))

(assert (= (and b!4940558 res!2108419) b!4940555))

(assert (= (and b!4940555 res!2108418) b!4940554))

(assert (= (and b!4940554 res!2108417) b!4940556))

(assert (= (and b!4940556 res!2108415) b!4940559))

(assert (= (and b!4940559 res!2108420) b!4940557))

(declare-fun m!5963210 () Bool)

(assert (=> b!4940555 m!5963210))

(declare-fun m!5963212 () Bool)

(assert (=> b!4940555 m!5963212))

(declare-fun m!5963214 () Bool)

(assert (=> b!4940554 m!5963214))

(declare-fun m!5963216 () Bool)

(assert (=> b!4940557 m!5963216))

(declare-fun m!5963218 () Bool)

(assert (=> b!4940559 m!5963218))

(declare-fun m!5963220 () Bool)

(assert (=> b!4940556 m!5963220))

(assert (=> b!4940558 m!5963210))

(assert (=> b!4940558 m!5963212))

(assert (=> d!1590521 d!1590665))

(declare-fun b!4940677 () Bool)

(declare-fun e!3087006 () tuple2!61436)

(declare-fun e!3087007 () tuple2!61436)

(assert (=> b!4940677 (= e!3087006 e!3087007)))

(declare-fun c!842648 () Bool)

(assert (=> b!4940677 (= c!842648 ((_ is Leaf!24879) (c!842516 totalInput!685)))))

(declare-fun call!344726 () List!57019)

(declare-fun bm!344718 () Bool)

(declare-fun lt!2036717 () List!57019)

(declare-fun lt!2036723 () List!57019)

(declare-fun lt!2036718 () tuple2!61440)

(declare-fun c!842651 () Bool)

(declare-fun lt!2036719 () tuple2!61440)

(assert (=> bm!344718 (= call!344726 (++!12426 (ite c!842651 (_2!34023 lt!2036719) lt!2036723) (ite c!842651 lt!2036717 (_1!34023 lt!2036718))))))

(declare-fun b!4940678 () Bool)

(declare-fun call!344723 () tuple2!61440)

(assert (=> b!4940678 (= lt!2036719 call!344723)))

(declare-fun e!3087001 () tuple2!61440)

(assert (=> b!4940678 (= e!3087001 (tuple2!61441 (_1!34023 lt!2036719) call!344726))))

(declare-fun b!4940679 () Bool)

(declare-fun e!3087009 () List!57019)

(assert (=> b!4940679 (= e!3087009 (list!18098 (xs!18288 (c!842516 totalInput!685))))))

(declare-fun b!4940681 () Bool)

(declare-fun e!3087000 () tuple2!61440)

(assert (=> b!4940681 (= e!3087000 e!3087001)))

(declare-fun call!344724 () Int)

(assert (=> b!4940681 (= c!842651 (< testedPSize!70 call!344724))))

(declare-fun b!4940682 () Bool)

(declare-fun lt!2036715 () tuple2!61436)

(declare-fun call!344727 () tuple2!61436)

(assert (=> b!4940682 (= lt!2036715 call!344727)))

(declare-fun e!3087003 () tuple2!61436)

(declare-fun call!344728 () Conc!14964)

(assert (=> b!4940682 (= e!3087003 (tuple2!61437 (_1!34021 lt!2036715) call!344728))))

(declare-fun e!3087010 () Bool)

(declare-fun lt!2036726 () tuple2!61436)

(declare-fun b!4940683 () Bool)

(assert (=> b!4940683 (= e!3087010 (= (tuple2!61441 (list!18097 (_1!34021 lt!2036726)) (list!18097 (_2!34021 lt!2036726))) (splitAtIndex!136 (list!18097 (c!842516 totalInput!685)) testedPSize!70)))))

(declare-fun b!4940684 () Bool)

(assert (=> b!4940684 (= e!3087006 (tuple2!61437 (c!842516 totalInput!685) (c!842516 totalInput!685)))))

(declare-fun b!4940685 () Bool)

(assert (=> b!4940685 (= e!3087009 (ite c!842651 lt!2036723 lt!2036717))))

(declare-fun b!4940686 () Bool)

(assert (=> b!4940686 (= e!3087000 (tuple2!61441 lt!2036723 lt!2036717))))

(declare-fun bm!344719 () Bool)

(declare-fun lt!2036722 () tuple2!61436)

(declare-fun c!842654 () Bool)

(declare-fun ++!12427 (Conc!14964 Conc!14964) Conc!14964)

(assert (=> bm!344719 (= call!344728 (++!12427 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))

(declare-fun b!4940687 () Bool)

(declare-fun e!3087011 () Int)

(assert (=> b!4940687 (= e!3087011 testedPSize!70)))

(declare-fun b!4940688 () Bool)

(assert (=> b!4940688 (= lt!2036718 call!344723)))

(assert (=> b!4940688 (= e!3087001 (tuple2!61441 call!344726 (_2!34023 lt!2036718)))))

(declare-fun b!4940680 () Bool)

(declare-fun e!3087008 () tuple2!61436)

(assert (=> b!4940680 (= e!3087008 (tuple2!61437 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))

(declare-fun d!1590667 () Bool)

(assert (=> d!1590667 e!3087010))

(declare-fun res!2108478 () Bool)

(assert (=> d!1590667 (=> (not res!2108478) (not e!3087010))))

(assert (=> d!1590667 (= res!2108478 (isBalanced!4130 (_1!34021 lt!2036726)))))

(assert (=> d!1590667 (= lt!2036726 e!3087006)))

(declare-fun c!842650 () Bool)

(assert (=> d!1590667 (= c!842650 ((_ is Empty!14964) (c!842516 totalInput!685)))))

(assert (=> d!1590667 (isBalanced!4130 (c!842516 totalInput!685))))

(assert (=> d!1590667 (= (splitAt!368 (c!842516 totalInput!685) testedPSize!70) lt!2036726)))

(declare-fun b!4940689 () Bool)

(assert (=> b!4940689 (= lt!2036722 call!344727)))

(assert (=> b!4940689 (= e!3087003 (tuple2!61437 call!344728 (_2!34021 lt!2036722)))))

(declare-fun b!4940690 () Bool)

(assert (=> b!4940690 (= e!3087008 e!3087003)))

(assert (=> b!4940690 (= c!842654 (< testedPSize!70 (size!37710 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun b!4940691 () Bool)

(declare-fun e!3087004 () tuple2!61436)

(assert (=> b!4940691 (= e!3087004 (tuple2!61437 (c!842516 totalInput!685) Empty!14964))))

(declare-fun b!4940692 () Bool)

(declare-fun e!3087002 () tuple2!61436)

(assert (=> b!4940692 (= e!3087002 (tuple2!61437 Empty!14964 (c!842516 totalInput!685)))))

(declare-fun b!4940693 () Bool)

(declare-fun e!3087005 () Int)

(assert (=> b!4940693 (= e!3087005 (- testedPSize!70 call!344724))))

(declare-fun b!4940694 () Bool)

(assert (=> b!4940694 (= e!3087002 e!3087004)))

(declare-fun c!842655 () Bool)

(assert (=> b!4940694 (= c!842655 (= testedPSize!70 (csize!30159 (c!842516 totalInput!685))))))

(declare-fun b!4940695 () Bool)

(assert (=> b!4940695 (= e!3087005 testedPSize!70)))

(declare-fun bm!344720 () Bool)

(declare-fun c!842657 () Bool)

(assert (=> bm!344720 (= c!842657 c!842648)))

(declare-fun call!344725 () tuple2!61440)

(assert (=> bm!344720 (= call!344725 (splitAtIndex!136 e!3087009 (ite c!842648 testedPSize!70 e!3087005)))))

(declare-fun b!4940696 () Bool)

(declare-fun c!842658 () Bool)

(assert (=> b!4940696 (= c!842658 (= (size!37710 (left!41504 (c!842516 totalInput!685))) testedPSize!70))))

(declare-fun lt!2036721 () Unit!147645)

(declare-fun lt!2036720 () Unit!147645)

(assert (=> b!4940696 (= lt!2036721 lt!2036720)))

(assert (=> b!4940696 (= (splitAtIndex!136 (++!12426 lt!2036723 lt!2036717) testedPSize!70) e!3087000)))

(declare-fun c!842653 () Bool)

(assert (=> b!4940696 (= c!842653 (= call!344724 testedPSize!70))))

(declare-fun splitAtLemma!37 (List!57019 List!57019 Int) Unit!147645)

(assert (=> b!4940696 (= lt!2036720 (splitAtLemma!37 lt!2036723 lt!2036717 testedPSize!70))))

(assert (=> b!4940696 (= lt!2036717 (list!18097 (right!41834 (c!842516 totalInput!685))))))

(assert (=> b!4940696 (= lt!2036723 (list!18097 (left!41504 (c!842516 totalInput!685))))))

(assert (=> b!4940696 (= e!3087007 e!3087008)))

(declare-fun b!4940697 () Bool)

(assert (=> b!4940697 (= e!3087011 (- testedPSize!70 (size!37710 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun bm!344721 () Bool)

(declare-fun c!842656 () Bool)

(assert (=> bm!344721 (= c!842656 c!842654)))

(assert (=> bm!344721 (= call!344727 (splitAt!368 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))) e!3087011))))

(declare-fun b!4940698 () Bool)

(declare-fun lt!2036725 () Unit!147645)

(declare-fun lt!2036716 () Unit!147645)

(assert (=> b!4940698 (= lt!2036725 lt!2036716)))

(declare-fun lt!2036724 () List!57019)

(declare-fun drop!2279 (List!57019 Int) List!57019)

(declare-fun slice!790 (List!57019 Int Int) List!57019)

(assert (=> b!4940698 (= (drop!2279 lt!2036724 testedPSize!70) (slice!790 lt!2036724 testedPSize!70 call!344724))))

(declare-fun dropLemma!37 (List!57019 Int) Unit!147645)

(assert (=> b!4940698 (= lt!2036716 (dropLemma!37 lt!2036724 testedPSize!70))))

(assert (=> b!4940698 (= lt!2036724 (list!18098 (xs!18288 (c!842516 totalInput!685))))))

(declare-fun lt!2036727 () tuple2!61440)

(assert (=> b!4940698 (= lt!2036727 call!344725)))

(declare-fun slice!791 (IArray!29989 Int Int) IArray!29989)

(assert (=> b!4940698 (= e!3087004 (tuple2!61437 (Leaf!24879 (slice!791 (xs!18288 (c!842516 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24879 (slice!791 (xs!18288 (c!842516 totalInput!685)) testedPSize!70 (csize!30159 (c!842516 totalInput!685))) (- (csize!30159 (c!842516 totalInput!685)) testedPSize!70))))))

(declare-fun b!4940699 () Bool)

(declare-fun res!2108479 () Bool)

(assert (=> b!4940699 (=> (not res!2108479) (not e!3087010))))

(assert (=> b!4940699 (= res!2108479 (isBalanced!4130 (_2!34021 lt!2036726)))))

(declare-fun bm!344722 () Bool)

(declare-fun c!842649 () Bool)

(assert (=> bm!344722 (= c!842649 c!842651)))

(assert (=> bm!344722 (= call!344723 call!344725)))

(declare-fun bm!344723 () Bool)

(assert (=> bm!344723 (= call!344724 (size!37707 (ite c!842648 lt!2036724 lt!2036723)))))

(declare-fun b!4940700 () Bool)

(declare-fun c!842652 () Bool)

(assert (=> b!4940700 (= c!842652 (<= testedPSize!70 0))))

(assert (=> b!4940700 (= e!3087007 e!3087002)))

(assert (= (and d!1590667 c!842650) b!4940684))

(assert (= (and d!1590667 (not c!842650)) b!4940677))

(assert (= (and b!4940677 c!842648) b!4940700))

(assert (= (and b!4940677 (not c!842648)) b!4940696))

(assert (= (and b!4940700 c!842652) b!4940692))

(assert (= (and b!4940700 (not c!842652)) b!4940694))

(assert (= (and b!4940694 c!842655) b!4940691))

(assert (= (and b!4940694 (not c!842655)) b!4940698))

(assert (= (and b!4940696 c!842653) b!4940686))

(assert (= (and b!4940696 (not c!842653)) b!4940681))

(assert (= (and b!4940681 c!842651) b!4940678))

(assert (= (and b!4940681 (not c!842651)) b!4940688))

(assert (= (or b!4940678 b!4940688) bm!344718))

(assert (= (or b!4940678 b!4940688) bm!344722))

(assert (= (and bm!344722 c!842649) b!4940695))

(assert (= (and bm!344722 (not c!842649)) b!4940693))

(assert (= (and b!4940696 c!842658) b!4940680))

(assert (= (and b!4940696 (not c!842658)) b!4940690))

(assert (= (and b!4940690 c!842654) b!4940682))

(assert (= (and b!4940690 (not c!842654)) b!4940689))

(assert (= (or b!4940682 b!4940689) bm!344719))

(assert (= (or b!4940682 b!4940689) bm!344721))

(assert (= (and bm!344721 c!842656) b!4940687))

(assert (= (and bm!344721 (not c!842656)) b!4940697))

(assert (= (or b!4940698 b!4940681 b!4940693 b!4940696) bm!344723))

(assert (= (or b!4940698 bm!344722) bm!344720))

(assert (= (and bm!344720 c!842657) b!4940679))

(assert (= (and bm!344720 (not c!842657)) b!4940685))

(assert (= (and d!1590667 res!2108478) b!4940699))

(assert (= (and b!4940699 res!2108479) b!4940683))

(declare-fun m!5963332 () Bool)

(assert (=> b!4940699 m!5963332))

(assert (=> b!4940696 m!5963048))

(assert (=> b!4940696 m!5963050))

(assert (=> b!4940696 m!5962988))

(declare-fun m!5963334 () Bool)

(assert (=> b!4940696 m!5963334))

(declare-fun m!5963336 () Bool)

(assert (=> b!4940696 m!5963336))

(assert (=> b!4940696 m!5963336))

(declare-fun m!5963338 () Bool)

(assert (=> b!4940696 m!5963338))

(declare-fun m!5963340 () Bool)

(assert (=> d!1590667 m!5963340))

(assert (=> d!1590667 m!5962852))

(declare-fun m!5963342 () Bool)

(assert (=> bm!344718 m!5963342))

(declare-fun m!5963344 () Bool)

(assert (=> b!4940683 m!5963344))

(declare-fun m!5963346 () Bool)

(assert (=> b!4940683 m!5963346))

(assert (=> b!4940683 m!5962946))

(assert (=> b!4940683 m!5962946))

(declare-fun m!5963348 () Bool)

(assert (=> b!4940683 m!5963348))

(assert (=> b!4940679 m!5963026))

(declare-fun m!5963350 () Bool)

(assert (=> b!4940698 m!5963350))

(declare-fun m!5963352 () Bool)

(assert (=> b!4940698 m!5963352))

(declare-fun m!5963354 () Bool)

(assert (=> b!4940698 m!5963354))

(declare-fun m!5963356 () Bool)

(assert (=> b!4940698 m!5963356))

(assert (=> b!4940698 m!5963026))

(declare-fun m!5963358 () Bool)

(assert (=> b!4940698 m!5963358))

(assert (=> b!4940690 m!5962988))

(declare-fun m!5963360 () Bool)

(assert (=> bm!344719 m!5963360))

(declare-fun m!5963362 () Bool)

(assert (=> bm!344720 m!5963362))

(assert (=> b!4940697 m!5962988))

(declare-fun m!5963364 () Bool)

(assert (=> bm!344723 m!5963364))

(declare-fun m!5963366 () Bool)

(assert (=> bm!344721 m!5963366))

(assert (=> d!1590521 d!1590667))

(assert (=> d!1590521 d!1590657))

(declare-fun d!1590717 () Bool)

(assert (=> d!1590717 (= (list!18095 (_1!34019 lt!2036588)) (list!18097 (c!842516 (_1!34019 lt!2036588))))))

(declare-fun bs!1181222 () Bool)

(assert (= bs!1181222 d!1590717))

(declare-fun m!5963368 () Bool)

(assert (=> bs!1181222 m!5963368))

(assert (=> b!4940256 d!1590717))

(declare-fun d!1590719 () Bool)

(assert (=> d!1590719 (= (list!18095 (_2!34019 lt!2036588)) (list!18097 (c!842516 (_2!34019 lt!2036588))))))

(declare-fun bs!1181223 () Bool)

(assert (= bs!1181223 d!1590719))

(declare-fun m!5963370 () Bool)

(assert (=> bs!1181223 m!5963370))

(assert (=> b!4940256 d!1590719))

(declare-fun d!1590721 () Bool)

(declare-fun e!3087019 () Bool)

(assert (=> d!1590721 e!3087019))

(declare-fun res!2108485 () Bool)

(assert (=> d!1590721 (=> (not res!2108485) (not e!3087019))))

(declare-fun lt!2036735 () tuple2!61440)

(assert (=> d!1590721 (= res!2108485 (= (++!12426 (_1!34023 lt!2036735) (_2!34023 lt!2036735)) (list!18095 totalInput!685)))))

(declare-fun e!3087020 () tuple2!61440)

(assert (=> d!1590721 (= lt!2036735 e!3087020)))

(declare-fun c!842664 () Bool)

(assert (=> d!1590721 (= c!842664 ((_ is Nil!56895) (list!18095 totalInput!685)))))

(assert (=> d!1590721 (= (splitAtIndex!136 (list!18095 totalInput!685) testedPSize!70) lt!2036735)))

(declare-fun b!4940715 () Bool)

(declare-fun lt!2036734 () tuple2!61440)

(assert (=> b!4940715 (= lt!2036734 (splitAtIndex!136 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1)))))

(declare-fun e!3087018 () tuple2!61440)

(assert (=> b!4940715 (= e!3087018 (tuple2!61441 (Cons!56895 (h!63343 (list!18095 totalInput!685)) (_1!34023 lt!2036734)) (_2!34023 lt!2036734)))))

(declare-fun b!4940716 () Bool)

(assert (=> b!4940716 (= e!3087018 (tuple2!61441 Nil!56895 (list!18095 totalInput!685)))))

(declare-fun b!4940717 () Bool)

(declare-fun res!2108484 () Bool)

(assert (=> b!4940717 (=> (not res!2108484) (not e!3087019))))

(declare-fun take!587 (List!57019 Int) List!57019)

(assert (=> b!4940717 (= res!2108484 (= (_1!34023 lt!2036735) (take!587 (list!18095 totalInput!685) testedPSize!70)))))

(declare-fun b!4940718 () Bool)

(assert (=> b!4940718 (= e!3087019 (= (_2!34023 lt!2036735) (drop!2279 (list!18095 totalInput!685) testedPSize!70)))))

(declare-fun b!4940719 () Bool)

(assert (=> b!4940719 (= e!3087020 e!3087018)))

(declare-fun c!842663 () Bool)

(assert (=> b!4940719 (= c!842663 (<= testedPSize!70 0))))

(declare-fun b!4940720 () Bool)

(assert (=> b!4940720 (= e!3087020 (tuple2!61441 Nil!56895 Nil!56895))))

(assert (= (and d!1590721 c!842664) b!4940720))

(assert (= (and d!1590721 (not c!842664)) b!4940719))

(assert (= (and b!4940719 c!842663) b!4940716))

(assert (= (and b!4940719 (not c!842663)) b!4940715))

(assert (= (and d!1590721 res!2108485) b!4940717))

(assert (= (and b!4940717 res!2108484) b!4940718))

(declare-fun m!5963372 () Bool)

(assert (=> d!1590721 m!5963372))

(declare-fun m!5963374 () Bool)

(assert (=> b!4940715 m!5963374))

(assert (=> b!4940717 m!5962718))

(declare-fun m!5963376 () Bool)

(assert (=> b!4940717 m!5963376))

(assert (=> b!4940718 m!5962718))

(declare-fun m!5963378 () Bool)

(assert (=> b!4940718 m!5963378))

(assert (=> b!4940256 d!1590721))

(assert (=> b!4940256 d!1590551))

(declare-fun d!1590723 () Bool)

(declare-fun e!3087037 () Bool)

(assert (=> d!1590723 e!3087037))

(declare-fun res!2108488 () Bool)

(assert (=> d!1590723 (=> (not res!2108488) (not e!3087037))))

(declare-fun lt!2036758 () List!57022)

(declare-fun noDuplicate!999 (List!57022) Bool)

(assert (=> d!1590723 (= res!2108488 (noDuplicate!999 lt!2036758))))

(declare-fun choose!36383 ((InoxSet Context!6190)) List!57022)

(assert (=> d!1590723 (= lt!2036758 (choose!36383 z!3568))))

(assert (=> d!1590723 (= (toList!7980 z!3568) lt!2036758)))

(declare-fun b!4940749 () Bool)

(declare-fun content!10124 (List!57022) (InoxSet Context!6190))

(assert (=> b!4940749 (= e!3087037 (= (content!10124 lt!2036758) z!3568))))

(assert (= (and d!1590723 res!2108488) b!4940749))

(declare-fun m!5963380 () Bool)

(assert (=> d!1590723 m!5963380))

(declare-fun m!5963382 () Bool)

(assert (=> d!1590723 m!5963382))

(declare-fun m!5963384 () Bool)

(assert (=> b!4940749 m!5963384))

(assert (=> bm!344705 d!1590723))

(declare-fun d!1590725 () Bool)

(assert (=> d!1590725 (= (head!10586 testedP!110) (h!63343 testedP!110))))

(assert (=> b!4940342 d!1590725))

(declare-fun d!1590727 () Bool)

(assert (=> d!1590727 (= (head!10586 lt!2036530) (h!63343 lt!2036530))))

(assert (=> b!4940342 d!1590727))

(declare-fun d!1590729 () Bool)

(assert (=> d!1590729 (= testedSuffix!70 lt!2036531)))

(assert (=> d!1590729 true))

(declare-fun _$63!1210 () Unit!147645)

(assert (=> d!1590729 (= (choose!36375 testedP!110 testedSuffix!70 testedP!110 lt!2036531 lt!2036530) _$63!1210)))

(assert (=> d!1590539 d!1590729))

(assert (=> d!1590539 d!1590545))

(declare-fun b!4940762 () Bool)

(declare-fun e!3087044 () Bool)

(declare-fun e!3087046 () Bool)

(assert (=> b!4940762 (= e!3087044 e!3087046)))

(declare-fun res!2108490 () Bool)

(assert (=> b!4940762 (=> (not res!2108490) (not e!3087046))))

(assert (=> b!4940762 (= res!2108490 (not ((_ is Nil!56895) (tail!9725 lt!2036530))))))

(declare-fun d!1590731 () Bool)

(declare-fun e!3087045 () Bool)

(assert (=> d!1590731 e!3087045))

(declare-fun res!2108492 () Bool)

(assert (=> d!1590731 (=> res!2108492 e!3087045)))

(declare-fun lt!2036763 () Bool)

(assert (=> d!1590731 (= res!2108492 (not lt!2036763))))

(assert (=> d!1590731 (= lt!2036763 e!3087044)))

(declare-fun res!2108491 () Bool)

(assert (=> d!1590731 (=> res!2108491 e!3087044)))

(assert (=> d!1590731 (= res!2108491 ((_ is Nil!56895) (tail!9725 testedP!110)))))

(assert (=> d!1590731 (= (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 lt!2036530)) lt!2036763)))

(declare-fun b!4940765 () Bool)

(assert (=> b!4940765 (= e!3087045 (>= (size!37707 (tail!9725 lt!2036530)) (size!37707 (tail!9725 testedP!110))))))

(declare-fun b!4940763 () Bool)

(declare-fun res!2108489 () Bool)

(assert (=> b!4940763 (=> (not res!2108489) (not e!3087046))))

(assert (=> b!4940763 (= res!2108489 (= (head!10586 (tail!9725 testedP!110)) (head!10586 (tail!9725 lt!2036530))))))

(declare-fun b!4940764 () Bool)

(assert (=> b!4940764 (= e!3087046 (isPrefix!5053 (tail!9725 (tail!9725 testedP!110)) (tail!9725 (tail!9725 lt!2036530))))))

(assert (= (and d!1590731 (not res!2108491)) b!4940762))

(assert (= (and b!4940762 res!2108490) b!4940763))

(assert (= (and b!4940763 res!2108489) b!4940764))

(assert (= (and d!1590731 (not res!2108492)) b!4940765))

(assert (=> b!4940765 m!5962918))

(assert (=> b!4940765 m!5963058))

(assert (=> b!4940765 m!5962930))

(assert (=> b!4940765 m!5962974))

(assert (=> b!4940763 m!5962930))

(assert (=> b!4940763 m!5962976))

(assert (=> b!4940763 m!5962918))

(declare-fun m!5963386 () Bool)

(assert (=> b!4940763 m!5963386))

(assert (=> b!4940764 m!5962930))

(assert (=> b!4940764 m!5962980))

(assert (=> b!4940764 m!5962918))

(assert (=> b!4940764 m!5963060))

(assert (=> b!4940764 m!5962980))

(assert (=> b!4940764 m!5963060))

(declare-fun m!5963388 () Bool)

(assert (=> b!4940764 m!5963388))

(assert (=> b!4940343 d!1590731))

(assert (=> b!4940343 d!1590561))

(assert (=> b!4940343 d!1590601))

(assert (=> b!4940344 d!1590619))

(assert (=> b!4940344 d!1590525))

(declare-fun d!1590733 () Bool)

(declare-fun e!3087048 () Bool)

(assert (=> d!1590733 e!3087048))

(declare-fun res!2108494 () Bool)

(assert (=> d!1590733 (=> (not res!2108494) (not e!3087048))))

(declare-fun lt!2036764 () List!57019)

(assert (=> d!1590733 (= res!2108494 (= (content!10122 lt!2036764) ((_ map or) (content!10122 (t!367527 testedP!110)) (content!10122 testedSuffix!70))))))

(declare-fun e!3087047 () List!57019)

(assert (=> d!1590733 (= lt!2036764 e!3087047)))

(declare-fun c!842685 () Bool)

(assert (=> d!1590733 (= c!842685 ((_ is Nil!56895) (t!367527 testedP!110)))))

(assert (=> d!1590733 (= (++!12426 (t!367527 testedP!110) testedSuffix!70) lt!2036764)))

(declare-fun b!4940766 () Bool)

(assert (=> b!4940766 (= e!3087047 testedSuffix!70)))

(declare-fun b!4940769 () Bool)

(assert (=> b!4940769 (= e!3087048 (or (not (= testedSuffix!70 Nil!56895)) (= lt!2036764 (t!367527 testedP!110))))))

(declare-fun b!4940768 () Bool)

(declare-fun res!2108493 () Bool)

(assert (=> b!4940768 (=> (not res!2108493) (not e!3087048))))

(assert (=> b!4940768 (= res!2108493 (= (size!37707 lt!2036764) (+ (size!37707 (t!367527 testedP!110)) (size!37707 testedSuffix!70))))))

(declare-fun b!4940767 () Bool)

(assert (=> b!4940767 (= e!3087047 (Cons!56895 (h!63343 (t!367527 testedP!110)) (++!12426 (t!367527 (t!367527 testedP!110)) testedSuffix!70)))))

(assert (= (and d!1590733 c!842685) b!4940766))

(assert (= (and d!1590733 (not c!842685)) b!4940767))

(assert (= (and d!1590733 res!2108494) b!4940768))

(assert (= (and b!4940768 res!2108493) b!4940769))

(declare-fun m!5963390 () Bool)

(assert (=> d!1590733 m!5963390))

(assert (=> d!1590733 m!5963088))

(assert (=> d!1590733 m!5962952))

(declare-fun m!5963392 () Bool)

(assert (=> b!4940768 m!5963392))

(assert (=> b!4940768 m!5962864))

(assert (=> b!4940768 m!5962956))

(declare-fun m!5963394 () Bool)

(assert (=> b!4940767 m!5963394))

(assert (=> b!4940350 d!1590733))

(declare-fun bs!1181224 () Bool)

(declare-fun d!1590735 () Bool)

(assert (= bs!1181224 (and d!1590735 d!1590489)))

(declare-fun lambda!246241 () Int)

(assert (=> bs!1181224 (= lambda!246241 lambda!246196)))

(assert (=> d!1590735 (= (inv!73996 setElem!27908) (forall!13220 (exprs!3595 setElem!27908) lambda!246241))))

(declare-fun bs!1181225 () Bool)

(assert (= bs!1181225 d!1590735))

(declare-fun m!5963396 () Bool)

(assert (=> bs!1181225 m!5963396))

(assert (=> setNonEmpty!27908 d!1590735))

(assert (=> b!4940346 d!1590725))

(declare-fun d!1590737 () Bool)

(assert (=> d!1590737 (= (head!10586 lt!2036535) (h!63343 lt!2036535))))

(assert (=> b!4940346 d!1590737))

(declare-fun d!1590739 () Bool)

(declare-fun lt!2036765 () Int)

(assert (=> d!1590739 (>= lt!2036765 0)))

(declare-fun e!3087049 () Int)

(assert (=> d!1590739 (= lt!2036765 e!3087049)))

(declare-fun c!842686 () Bool)

(assert (=> d!1590739 (= c!842686 ((_ is Nil!56895) (list!18095 totalInput!685)))))

(assert (=> d!1590739 (= (size!37707 (list!18095 totalInput!685)) lt!2036765)))

(declare-fun b!4940770 () Bool)

(assert (=> b!4940770 (= e!3087049 0)))

(declare-fun b!4940771 () Bool)

(assert (=> b!4940771 (= e!3087049 (+ 1 (size!37707 (t!367527 (list!18095 totalInput!685)))))))

(assert (= (and d!1590739 c!842686) b!4940770))

(assert (= (and d!1590739 (not c!842686)) b!4940771))

(declare-fun m!5963398 () Bool)

(assert (=> b!4940771 m!5963398))

(assert (=> d!1590557 d!1590739))

(assert (=> d!1590557 d!1590551))

(declare-fun d!1590741 () Bool)

(declare-fun lt!2036766 () Int)

(assert (=> d!1590741 (= lt!2036766 (size!37707 (list!18097 (c!842516 totalInput!685))))))

(assert (=> d!1590741 (= lt!2036766 (ite ((_ is Empty!14964) (c!842516 totalInput!685)) 0 (ite ((_ is Leaf!24879) (c!842516 totalInput!685)) (csize!30159 (c!842516 totalInput!685)) (csize!30158 (c!842516 totalInput!685)))))))

(assert (=> d!1590741 (= (size!37710 (c!842516 totalInput!685)) lt!2036766)))

(declare-fun bs!1181226 () Bool)

(assert (= bs!1181226 d!1590741))

(assert (=> bs!1181226 m!5962946))

(assert (=> bs!1181226 m!5962946))

(declare-fun m!5963400 () Bool)

(assert (=> bs!1181226 m!5963400))

(assert (=> d!1590557 d!1590741))

(declare-fun d!1590743 () Bool)

(declare-fun lt!2036767 () Int)

(assert (=> d!1590743 (>= lt!2036767 0)))

(declare-fun e!3087050 () Int)

(assert (=> d!1590743 (= lt!2036767 e!3087050)))

(declare-fun c!842687 () Bool)

(assert (=> d!1590743 (= c!842687 ((_ is Nil!56895) lt!2036642))))

(assert (=> d!1590743 (= (size!37707 lt!2036642) lt!2036767)))

(declare-fun b!4940772 () Bool)

(assert (=> b!4940772 (= e!3087050 0)))

(declare-fun b!4940773 () Bool)

(assert (=> b!4940773 (= e!3087050 (+ 1 (size!37707 (t!367527 lt!2036642))))))

(assert (= (and d!1590743 c!842687) b!4940772))

(assert (= (and d!1590743 (not c!842687)) b!4940773))

(declare-fun m!5963402 () Bool)

(assert (=> b!4940773 m!5963402))

(assert (=> b!4940351 d!1590743))

(assert (=> b!4940351 d!1590525))

(declare-fun d!1590745 () Bool)

(declare-fun lt!2036768 () Int)

(assert (=> d!1590745 (>= lt!2036768 0)))

(declare-fun e!3087053 () Int)

(assert (=> d!1590745 (= lt!2036768 e!3087053)))

(declare-fun c!842690 () Bool)

(assert (=> d!1590745 (= c!842690 ((_ is Nil!56895) testedSuffix!70))))

(assert (=> d!1590745 (= (size!37707 testedSuffix!70) lt!2036768)))

(declare-fun b!4940778 () Bool)

(assert (=> b!4940778 (= e!3087053 0)))

(declare-fun b!4940779 () Bool)

(assert (=> b!4940779 (= e!3087053 (+ 1 (size!37707 (t!367527 testedSuffix!70))))))

(assert (= (and d!1590745 c!842690) b!4940778))

(assert (= (and d!1590745 (not c!842690)) b!4940779))

(declare-fun m!5963404 () Bool)

(assert (=> b!4940779 m!5963404))

(assert (=> b!4940351 d!1590745))

(declare-fun b!4940793 () Bool)

(declare-fun e!3087056 () Bool)

(declare-fun tp!1386233 () Bool)

(declare-fun tp!1386232 () Bool)

(assert (=> b!4940793 (= e!3087056 (and tp!1386233 tp!1386232))))

(declare-fun b!4940790 () Bool)

(assert (=> b!4940790 (= e!3087056 tp_is_empty!36087)))

(assert (=> b!4940379 (= tp!1386220 e!3087056)))

(declare-fun b!4940791 () Bool)

(declare-fun tp!1386234 () Bool)

(declare-fun tp!1386236 () Bool)

(assert (=> b!4940791 (= e!3087056 (and tp!1386234 tp!1386236))))

(declare-fun b!4940792 () Bool)

(declare-fun tp!1386235 () Bool)

(assert (=> b!4940792 (= e!3087056 tp!1386235)))

(assert (= (and b!4940379 ((_ is ElementMatch!13453) (h!63344 (exprs!3595 setElem!27902)))) b!4940790))

(assert (= (and b!4940379 ((_ is Concat!22026) (h!63344 (exprs!3595 setElem!27902)))) b!4940791))

(assert (= (and b!4940379 ((_ is Star!13453) (h!63344 (exprs!3595 setElem!27902)))) b!4940792))

(assert (= (and b!4940379 ((_ is Union!13453) (h!63344 (exprs!3595 setElem!27902)))) b!4940793))

(declare-fun b!4940794 () Bool)

(declare-fun e!3087057 () Bool)

(declare-fun tp!1386237 () Bool)

(declare-fun tp!1386238 () Bool)

(assert (=> b!4940794 (= e!3087057 (and tp!1386237 tp!1386238))))

(assert (=> b!4940379 (= tp!1386221 e!3087057)))

(assert (= (and b!4940379 ((_ is Cons!56896) (t!367528 (exprs!3595 setElem!27902)))) b!4940794))

(declare-fun b!4940795 () Bool)

(declare-fun e!3087058 () Bool)

(declare-fun tp!1386239 () Bool)

(assert (=> b!4940795 (= e!3087058 (and tp_is_empty!36087 tp!1386239))))

(assert (=> b!4940362 (= tp!1386205 e!3087058)))

(assert (= (and b!4940362 ((_ is Cons!56895) (t!367527 (t!367527 testedSuffix!70)))) b!4940795))

(declare-fun b!4940796 () Bool)

(declare-fun e!3087059 () Bool)

(declare-fun tp!1386240 () Bool)

(assert (=> b!4940796 (= e!3087059 (and tp_is_empty!36087 tp!1386240))))

(assert (=> b!4940374 (= tp!1386213 e!3087059)))

(assert (= (and b!4940374 ((_ is Cons!56895) (innerList!15052 (xs!18288 (c!842516 totalInput!685))))) b!4940796))

(declare-fun b!4940797 () Bool)

(declare-fun e!3087060 () Bool)

(declare-fun tp!1386241 () Bool)

(assert (=> b!4940797 (= e!3087060 (and tp_is_empty!36087 tp!1386241))))

(assert (=> b!4940363 (= tp!1386206 e!3087060)))

(assert (= (and b!4940363 ((_ is Cons!56895) (t!367527 (t!367527 testedP!110)))) b!4940797))

(declare-fun condSetEmpty!27909 () Bool)

(assert (=> setNonEmpty!27908 (= condSetEmpty!27909 (= setRest!27908 ((as const (Array Context!6190 Bool)) false)))))

(declare-fun setRes!27909 () Bool)

(assert (=> setNonEmpty!27908 (= tp!1386201 setRes!27909)))

(declare-fun setIsEmpty!27909 () Bool)

(assert (=> setIsEmpty!27909 setRes!27909))

(declare-fun tp!1386242 () Bool)

(declare-fun e!3087063 () Bool)

(declare-fun setElem!27909 () Context!6190)

(declare-fun setNonEmpty!27909 () Bool)

(assert (=> setNonEmpty!27909 (= setRes!27909 (and tp!1386242 (inv!73996 setElem!27909) e!3087063))))

(declare-fun setRest!27909 () (InoxSet Context!6190))

(assert (=> setNonEmpty!27909 (= setRest!27908 ((_ map or) (store ((as const (Array Context!6190 Bool)) false) setElem!27909 true) setRest!27909))))

(declare-fun b!4940802 () Bool)

(declare-fun tp!1386243 () Bool)

(assert (=> b!4940802 (= e!3087063 tp!1386243)))

(assert (= (and setNonEmpty!27908 condSetEmpty!27909) setIsEmpty!27909))

(assert (= (and setNonEmpty!27908 (not condSetEmpty!27909)) setNonEmpty!27909))

(assert (= setNonEmpty!27909 b!4940802))

(declare-fun m!5963406 () Bool)

(assert (=> setNonEmpty!27909 m!5963406))

(declare-fun tp!1386246 () Bool)

(declare-fun b!4940803 () Bool)

(declare-fun tp!1386245 () Bool)

(declare-fun e!3087065 () Bool)

(assert (=> b!4940803 (= e!3087065 (and (inv!73998 (left!41504 (left!41504 (c!842516 totalInput!685)))) tp!1386245 (inv!73998 (right!41834 (left!41504 (c!842516 totalInput!685)))) tp!1386246))))

(declare-fun b!4940805 () Bool)

(declare-fun e!3087064 () Bool)

(declare-fun tp!1386244 () Bool)

(assert (=> b!4940805 (= e!3087064 tp!1386244)))

(declare-fun b!4940804 () Bool)

(assert (=> b!4940804 (= e!3087065 (and (inv!74004 (xs!18288 (left!41504 (c!842516 totalInput!685)))) e!3087064))))

(assert (=> b!4940372 (= tp!1386214 (and (inv!73998 (left!41504 (c!842516 totalInput!685))) e!3087065))))

(assert (= (and b!4940372 ((_ is Node!14964) (left!41504 (c!842516 totalInput!685)))) b!4940803))

(assert (= b!4940804 b!4940805))

(assert (= (and b!4940372 ((_ is Leaf!24879) (left!41504 (c!842516 totalInput!685)))) b!4940804))

(declare-fun m!5963408 () Bool)

(assert (=> b!4940803 m!5963408))

(declare-fun m!5963410 () Bool)

(assert (=> b!4940803 m!5963410))

(declare-fun m!5963412 () Bool)

(assert (=> b!4940804 m!5963412))

(assert (=> b!4940372 m!5962966))

(declare-fun e!3087067 () Bool)

(declare-fun tp!1386248 () Bool)

(declare-fun tp!1386249 () Bool)

(declare-fun b!4940806 () Bool)

(assert (=> b!4940806 (= e!3087067 (and (inv!73998 (left!41504 (right!41834 (c!842516 totalInput!685)))) tp!1386248 (inv!73998 (right!41834 (right!41834 (c!842516 totalInput!685)))) tp!1386249))))

(declare-fun b!4940808 () Bool)

(declare-fun e!3087066 () Bool)

(declare-fun tp!1386247 () Bool)

(assert (=> b!4940808 (= e!3087066 tp!1386247)))

(declare-fun b!4940807 () Bool)

(assert (=> b!4940807 (= e!3087067 (and (inv!74004 (xs!18288 (right!41834 (c!842516 totalInput!685)))) e!3087066))))

(assert (=> b!4940372 (= tp!1386215 (and (inv!73998 (right!41834 (c!842516 totalInput!685))) e!3087067))))

(assert (= (and b!4940372 ((_ is Node!14964) (right!41834 (c!842516 totalInput!685)))) b!4940806))

(assert (= b!4940807 b!4940808))

(assert (= (and b!4940372 ((_ is Leaf!24879) (right!41834 (c!842516 totalInput!685)))) b!4940807))

(declare-fun m!5963414 () Bool)

(assert (=> b!4940806 m!5963414))

(declare-fun m!5963416 () Bool)

(assert (=> b!4940806 m!5963416))

(declare-fun m!5963418 () Bool)

(assert (=> b!4940807 m!5963418))

(assert (=> b!4940372 m!5962968))

(declare-fun b!4940809 () Bool)

(declare-fun e!3087068 () Bool)

(declare-fun tp!1386250 () Bool)

(declare-fun tp!1386251 () Bool)

(assert (=> b!4940809 (= e!3087068 (and tp!1386250 tp!1386251))))

(assert (=> b!4940357 (= tp!1386202 e!3087068)))

(assert (= (and b!4940357 ((_ is Cons!56896) (exprs!3595 setElem!27908))) b!4940809))

(declare-fun b_lambda!196349 () Bool)

(assert (= b_lambda!196345 (or d!1590489 b_lambda!196349)))

(declare-fun bs!1181227 () Bool)

(declare-fun d!1590747 () Bool)

(assert (= bs!1181227 (and d!1590747 d!1590489)))

(declare-fun validRegex!5952 (Regex!13453) Bool)

(assert (=> bs!1181227 (= (dynLambda!23026 lambda!246196 (h!63344 (exprs!3595 setElem!27902))) (validRegex!5952 (h!63344 (exprs!3595 setElem!27902))))))

(declare-fun m!5963420 () Bool)

(assert (=> bs!1181227 m!5963420))

(assert (=> b!4940437 d!1590747))

(check-sat (not b!4940450) (not b!4940438) (not d!1590623) (not b!4940697) (not d!1590609) (not b!4940455) (not b!4940802) (not d!1590579) (not setNonEmpty!27909) (not b!4940698) (not b!4940382) (not bs!1181227) (not b!4940385) (not b!4940458) (not b!4940416) (not b!4940793) (not b!4940462) (not b!4940383) (not b!4940792) (not b!4940448) (not b!4940804) (not b!4940451) (not bm!344718) (not b!4940459) (not d!1590741) (not b!4940419) (not b!4940425) (not bm!344721) (not b!4940466) (not b!4940405) (not b!4940393) (not b!4940763) (not b!4940472) (not d!1590659) (not b!4940767) (not b!4940432) (not d!1590719) (not b!4940456) (not b!4940539) (not b!4940717) (not b!4940690) (not b!4940718) (not b!4940418) (not b!4940797) (not b!4940699) (not b!4940381) (not d!1590629) (not d!1590717) (not d!1590607) (not b!4940773) (not d!1590625) (not bm!344723) (not b!4940428) (not b!4940469) (not b_lambda!196349) (not b!4940442) (not b!4940464) (not b!4940765) (not b!4940551) (not b!4940547) (not b!4940477) (not b!4940768) (not b!4940557) (not b!4940696) (not d!1590617) (not b!4940538) (not b!4940540) (not b!4940679) (not b!4940460) (not d!1590667) (not b!4940764) (not b!4940546) (not bm!344720) (not d!1590641) (not b!4940807) (not b!4940555) (not bm!344719) (not b!4940414) (not b!4940550) (not b!4940749) (not b!4940795) (not b!4940406) (not b!4940439) (not b!4940803) (not d!1590721) (not b!4940537) (not d!1590733) (not b!4940548) (not b!4940808) (not d!1590599) (not b!4940806) (not b!4940794) (not b!4940771) (not d!1590735) (not d!1590723) (not d!1590577) tp_is_empty!36087 (not b!4940683) (not d!1590567) (not b!4940536) (not b!4940556) (not b!4940554) (not b!4940430) (not b!4940447) (not b!4940541) (not b!4940372) (not b!4940559) (not b!4940796) (not b!4940549) (not b!4940809) (not b!4940791) (not b!4940715) (not b!4940444) (not b!4940779) (not b!4940441) (not b!4940468) (not b!4940412) (not d!1590593) (not b!4940805) (not b!4940558))
(check-sat)
(get-model)

(declare-fun d!1590787 () Bool)

(declare-fun c!842728 () Bool)

(assert (=> d!1590787 (= c!842728 ((_ is Node!14964) (left!41504 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun e!3087118 () Bool)

(assert (=> d!1590787 (= (inv!73998 (left!41504 (right!41834 (c!842516 totalInput!685)))) e!3087118)))

(declare-fun b!4940908 () Bool)

(assert (=> b!4940908 (= e!3087118 (inv!74002 (left!41504 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4940909 () Bool)

(declare-fun e!3087119 () Bool)

(assert (=> b!4940909 (= e!3087118 e!3087119)))

(declare-fun res!2108509 () Bool)

(assert (=> b!4940909 (= res!2108509 (not ((_ is Leaf!24879) (left!41504 (right!41834 (c!842516 totalInput!685))))))))

(assert (=> b!4940909 (=> res!2108509 e!3087119)))

(declare-fun b!4940910 () Bool)

(assert (=> b!4940910 (= e!3087119 (inv!74003 (left!41504 (right!41834 (c!842516 totalInput!685)))))))

(assert (= (and d!1590787 c!842728) b!4940908))

(assert (= (and d!1590787 (not c!842728)) b!4940909))

(assert (= (and b!4940909 (not res!2108509)) b!4940910))

(declare-fun m!5963536 () Bool)

(assert (=> b!4940908 m!5963536))

(declare-fun m!5963538 () Bool)

(assert (=> b!4940910 m!5963538))

(assert (=> b!4940806 d!1590787))

(declare-fun d!1590789 () Bool)

(declare-fun c!842729 () Bool)

(assert (=> d!1590789 (= c!842729 ((_ is Node!14964) (right!41834 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun e!3087120 () Bool)

(assert (=> d!1590789 (= (inv!73998 (right!41834 (right!41834 (c!842516 totalInput!685)))) e!3087120)))

(declare-fun b!4940911 () Bool)

(assert (=> b!4940911 (= e!3087120 (inv!74002 (right!41834 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4940912 () Bool)

(declare-fun e!3087121 () Bool)

(assert (=> b!4940912 (= e!3087120 e!3087121)))

(declare-fun res!2108510 () Bool)

(assert (=> b!4940912 (= res!2108510 (not ((_ is Leaf!24879) (right!41834 (right!41834 (c!842516 totalInput!685))))))))

(assert (=> b!4940912 (=> res!2108510 e!3087121)))

(declare-fun b!4940913 () Bool)

(assert (=> b!4940913 (= e!3087121 (inv!74003 (right!41834 (right!41834 (c!842516 totalInput!685)))))))

(assert (= (and d!1590789 c!842729) b!4940911))

(assert (= (and d!1590789 (not c!842729)) b!4940912))

(assert (= (and b!4940912 (not res!2108510)) b!4940913))

(declare-fun m!5963540 () Bool)

(assert (=> b!4940911 m!5963540))

(declare-fun m!5963542 () Bool)

(assert (=> b!4940913 m!5963542))

(assert (=> b!4940806 d!1590789))

(declare-fun d!1590791 () Bool)

(assert (=> d!1590791 (= (head!10586 (tail!9725 testedP!110)) (h!63343 (tail!9725 testedP!110)))))

(assert (=> b!4940381 d!1590791))

(declare-fun d!1590793 () Bool)

(assert (=> d!1590793 (= (head!10586 (tail!9725 lt!2036535)) (h!63343 (tail!9725 lt!2036535)))))

(assert (=> b!4940381 d!1590793))

(declare-fun b!4940914 () Bool)

(declare-fun e!3087122 () Bool)

(declare-fun e!3087124 () Bool)

(assert (=> b!4940914 (= e!3087122 e!3087124)))

(declare-fun res!2108512 () Bool)

(assert (=> b!4940914 (=> (not res!2108512) (not e!3087124))))

(assert (=> b!4940914 (= res!2108512 (not ((_ is Nil!56895) (tail!9725 (tail!9725 lt!2036530)))))))

(declare-fun d!1590795 () Bool)

(declare-fun e!3087123 () Bool)

(assert (=> d!1590795 e!3087123))

(declare-fun res!2108514 () Bool)

(assert (=> d!1590795 (=> res!2108514 e!3087123)))

(declare-fun lt!2036804 () Bool)

(assert (=> d!1590795 (= res!2108514 (not lt!2036804))))

(assert (=> d!1590795 (= lt!2036804 e!3087122)))

(declare-fun res!2108513 () Bool)

(assert (=> d!1590795 (=> res!2108513 e!3087122)))

(assert (=> d!1590795 (= res!2108513 ((_ is Nil!56895) (tail!9725 (tail!9725 testedP!110))))))

(assert (=> d!1590795 (= (isPrefix!5053 (tail!9725 (tail!9725 testedP!110)) (tail!9725 (tail!9725 lt!2036530))) lt!2036804)))

(declare-fun b!4940917 () Bool)

(assert (=> b!4940917 (= e!3087123 (>= (size!37707 (tail!9725 (tail!9725 lt!2036530))) (size!37707 (tail!9725 (tail!9725 testedP!110)))))))

(declare-fun b!4940915 () Bool)

(declare-fun res!2108511 () Bool)

(assert (=> b!4940915 (=> (not res!2108511) (not e!3087124))))

(assert (=> b!4940915 (= res!2108511 (= (head!10586 (tail!9725 (tail!9725 testedP!110))) (head!10586 (tail!9725 (tail!9725 lt!2036530)))))))

(declare-fun b!4940916 () Bool)

(assert (=> b!4940916 (= e!3087124 (isPrefix!5053 (tail!9725 (tail!9725 (tail!9725 testedP!110))) (tail!9725 (tail!9725 (tail!9725 lt!2036530)))))))

(assert (= (and d!1590795 (not res!2108513)) b!4940914))

(assert (= (and b!4940914 res!2108512) b!4940915))

(assert (= (and b!4940915 res!2108511) b!4940916))

(assert (= (and d!1590795 (not res!2108514)) b!4940917))

(assert (=> b!4940917 m!5963060))

(declare-fun m!5963544 () Bool)

(assert (=> b!4940917 m!5963544))

(assert (=> b!4940917 m!5962980))

(declare-fun m!5963546 () Bool)

(assert (=> b!4940917 m!5963546))

(assert (=> b!4940915 m!5962980))

(declare-fun m!5963548 () Bool)

(assert (=> b!4940915 m!5963548))

(assert (=> b!4940915 m!5963060))

(declare-fun m!5963550 () Bool)

(assert (=> b!4940915 m!5963550))

(assert (=> b!4940916 m!5962980))

(declare-fun m!5963552 () Bool)

(assert (=> b!4940916 m!5963552))

(assert (=> b!4940916 m!5963060))

(declare-fun m!5963554 () Bool)

(assert (=> b!4940916 m!5963554))

(assert (=> b!4940916 m!5963552))

(assert (=> b!4940916 m!5963554))

(declare-fun m!5963556 () Bool)

(assert (=> b!4940916 m!5963556))

(assert (=> b!4940764 d!1590795))

(declare-fun d!1590797 () Bool)

(assert (=> d!1590797 (= (tail!9725 (tail!9725 testedP!110)) (t!367527 (tail!9725 testedP!110)))))

(assert (=> b!4940764 d!1590797))

(declare-fun d!1590799 () Bool)

(assert (=> d!1590799 (= (tail!9725 (tail!9725 lt!2036530)) (t!367527 (tail!9725 lt!2036530)))))

(assert (=> b!4940764 d!1590799))

(declare-fun d!1590801 () Bool)

(declare-fun lt!2036805 () Int)

(assert (=> d!1590801 (>= lt!2036805 0)))

(declare-fun e!3087125 () Int)

(assert (=> d!1590801 (= lt!2036805 e!3087125)))

(declare-fun c!842730 () Bool)

(assert (=> d!1590801 (= c!842730 ((_ is Nil!56895) (t!367527 lt!2036530)))))

(assert (=> d!1590801 (= (size!37707 (t!367527 lt!2036530)) lt!2036805)))

(declare-fun b!4940918 () Bool)

(assert (=> b!4940918 (= e!3087125 0)))

(declare-fun b!4940919 () Bool)

(assert (=> b!4940919 (= e!3087125 (+ 1 (size!37707 (t!367527 (t!367527 lt!2036530)))))))

(assert (= (and d!1590801 c!842730) b!4940918))

(assert (= (and d!1590801 (not c!842730)) b!4940919))

(declare-fun m!5963558 () Bool)

(assert (=> b!4940919 m!5963558))

(assert (=> b!4940472 d!1590801))

(declare-fun d!1590803 () Bool)

(declare-fun res!2108515 () Bool)

(declare-fun e!3087126 () Bool)

(assert (=> d!1590803 (=> res!2108515 e!3087126)))

(assert (=> d!1590803 (= res!2108515 ((_ is Nil!56896) (t!367528 (exprs!3595 setElem!27902))))))

(assert (=> d!1590803 (= (forall!13220 (t!367528 (exprs!3595 setElem!27902)) lambda!246196) e!3087126)))

(declare-fun b!4940920 () Bool)

(declare-fun e!3087127 () Bool)

(assert (=> b!4940920 (= e!3087126 e!3087127)))

(declare-fun res!2108516 () Bool)

(assert (=> b!4940920 (=> (not res!2108516) (not e!3087127))))

(assert (=> b!4940920 (= res!2108516 (dynLambda!23026 lambda!246196 (h!63344 (t!367528 (exprs!3595 setElem!27902)))))))

(declare-fun b!4940921 () Bool)

(assert (=> b!4940921 (= e!3087127 (forall!13220 (t!367528 (t!367528 (exprs!3595 setElem!27902))) lambda!246196))))

(assert (= (and d!1590803 (not res!2108515)) b!4940920))

(assert (= (and b!4940920 res!2108516) b!4940921))

(declare-fun b_lambda!196353 () Bool)

(assert (=> (not b_lambda!196353) (not b!4940920)))

(declare-fun m!5963560 () Bool)

(assert (=> b!4940920 m!5963560))

(declare-fun m!5963562 () Bool)

(assert (=> b!4940921 m!5963562))

(assert (=> b!4940438 d!1590803))

(declare-fun d!1590805 () Bool)

(declare-fun res!2108529 () Bool)

(declare-fun e!3087142 () Bool)

(assert (=> d!1590805 (=> res!2108529 e!3087142)))

(assert (=> d!1590805 (= res!2108529 ((_ is ElementMatch!13453) (h!63344 (exprs!3595 setElem!27902))))))

(assert (=> d!1590805 (= (validRegex!5952 (h!63344 (exprs!3595 setElem!27902))) e!3087142)))

(declare-fun bm!344748 () Bool)

(declare-fun call!344755 () Bool)

(declare-fun c!842736 () Bool)

(assert (=> bm!344748 (= call!344755 (validRegex!5952 (ite c!842736 (regOne!27419 (h!63344 (exprs!3595 setElem!27902))) (regOne!27418 (h!63344 (exprs!3595 setElem!27902))))))))

(declare-fun b!4940940 () Bool)

(declare-fun e!3087143 () Bool)

(declare-fun e!3087145 () Bool)

(assert (=> b!4940940 (= e!3087143 e!3087145)))

(declare-fun res!2108527 () Bool)

(assert (=> b!4940940 (=> (not res!2108527) (not e!3087145))))

(assert (=> b!4940940 (= res!2108527 call!344755)))

(declare-fun b!4940941 () Bool)

(declare-fun e!3087146 () Bool)

(declare-fun call!344753 () Bool)

(assert (=> b!4940941 (= e!3087146 call!344753)))

(declare-fun bm!344749 () Bool)

(declare-fun call!344754 () Bool)

(assert (=> bm!344749 (= call!344754 call!344753)))

(declare-fun b!4940942 () Bool)

(assert (=> b!4940942 (= e!3087145 call!344754)))

(declare-fun b!4940943 () Bool)

(declare-fun e!3087144 () Bool)

(assert (=> b!4940943 (= e!3087142 e!3087144)))

(declare-fun c!842735 () Bool)

(assert (=> b!4940943 (= c!842735 ((_ is Star!13453) (h!63344 (exprs!3595 setElem!27902))))))

(declare-fun b!4940944 () Bool)

(declare-fun e!3087147 () Bool)

(assert (=> b!4940944 (= e!3087147 call!344754)))

(declare-fun bm!344750 () Bool)

(assert (=> bm!344750 (= call!344753 (validRegex!5952 (ite c!842735 (reg!13782 (h!63344 (exprs!3595 setElem!27902))) (ite c!842736 (regTwo!27419 (h!63344 (exprs!3595 setElem!27902))) (regTwo!27418 (h!63344 (exprs!3595 setElem!27902)))))))))

(declare-fun b!4940945 () Bool)

(assert (=> b!4940945 (= e!3087144 e!3087146)))

(declare-fun res!2108530 () Bool)

(declare-fun nullable!4611 (Regex!13453) Bool)

(assert (=> b!4940945 (= res!2108530 (not (nullable!4611 (reg!13782 (h!63344 (exprs!3595 setElem!27902))))))))

(assert (=> b!4940945 (=> (not res!2108530) (not e!3087146))))

(declare-fun b!4940946 () Bool)

(declare-fun res!2108528 () Bool)

(assert (=> b!4940946 (=> (not res!2108528) (not e!3087147))))

(assert (=> b!4940946 (= res!2108528 call!344755)))

(declare-fun e!3087148 () Bool)

(assert (=> b!4940946 (= e!3087148 e!3087147)))

(declare-fun b!4940947 () Bool)

(assert (=> b!4940947 (= e!3087144 e!3087148)))

(assert (=> b!4940947 (= c!842736 ((_ is Union!13453) (h!63344 (exprs!3595 setElem!27902))))))

(declare-fun b!4940948 () Bool)

(declare-fun res!2108531 () Bool)

(assert (=> b!4940948 (=> res!2108531 e!3087143)))

(assert (=> b!4940948 (= res!2108531 (not ((_ is Concat!22026) (h!63344 (exprs!3595 setElem!27902)))))))

(assert (=> b!4940948 (= e!3087148 e!3087143)))

(assert (= (and d!1590805 (not res!2108529)) b!4940943))

(assert (= (and b!4940943 c!842735) b!4940945))

(assert (= (and b!4940943 (not c!842735)) b!4940947))

(assert (= (and b!4940945 res!2108530) b!4940941))

(assert (= (and b!4940947 c!842736) b!4940946))

(assert (= (and b!4940947 (not c!842736)) b!4940948))

(assert (= (and b!4940946 res!2108528) b!4940944))

(assert (= (and b!4940948 (not res!2108531)) b!4940940))

(assert (= (and b!4940940 res!2108527) b!4940942))

(assert (= (or b!4940946 b!4940940) bm!344748))

(assert (= (or b!4940944 b!4940942) bm!344749))

(assert (= (or b!4940941 bm!344749) bm!344750))

(declare-fun m!5963564 () Bool)

(assert (=> bm!344748 m!5963564))

(declare-fun m!5963566 () Bool)

(assert (=> bm!344750 m!5963566))

(declare-fun m!5963568 () Bool)

(assert (=> b!4940945 m!5963568))

(assert (=> bs!1181227 d!1590805))

(declare-fun d!1590807 () Bool)

(declare-fun lt!2036806 () Int)

(assert (=> d!1590807 (>= lt!2036806 0)))

(declare-fun e!3087149 () Int)

(assert (=> d!1590807 (= lt!2036806 e!3087149)))

(declare-fun c!842737 () Bool)

(assert (=> d!1590807 (= c!842737 ((_ is Nil!56895) (t!367527 lt!2036576)))))

(assert (=> d!1590807 (= (size!37707 (t!367527 lt!2036576)) lt!2036806)))

(declare-fun b!4940949 () Bool)

(assert (=> b!4940949 (= e!3087149 0)))

(declare-fun b!4940950 () Bool)

(assert (=> b!4940950 (= e!3087149 (+ 1 (size!37707 (t!367527 (t!367527 lt!2036576)))))))

(assert (= (and d!1590807 c!842737) b!4940949))

(assert (= (and d!1590807 (not c!842737)) b!4940950))

(declare-fun m!5963570 () Bool)

(assert (=> b!4940950 m!5963570))

(assert (=> b!4940428 d!1590807))

(declare-fun d!1590809 () Bool)

(declare-fun lt!2036807 () Int)

(assert (=> d!1590809 (>= lt!2036807 0)))

(declare-fun e!3087150 () Int)

(assert (=> d!1590809 (= lt!2036807 e!3087150)))

(declare-fun c!842738 () Bool)

(assert (=> d!1590809 (= c!842738 ((_ is Nil!56895) (++!12426 testedP!110 testedSuffix!70)))))

(assert (=> d!1590809 (= (size!37707 (++!12426 testedP!110 testedSuffix!70)) lt!2036807)))

(declare-fun b!4940951 () Bool)

(assert (=> b!4940951 (= e!3087150 0)))

(declare-fun b!4940952 () Bool)

(assert (=> b!4940952 (= e!3087150 (+ 1 (size!37707 (t!367527 (++!12426 testedP!110 testedSuffix!70)))))))

(assert (= (and d!1590809 c!842738) b!4940951))

(assert (= (and d!1590809 (not c!842738)) b!4940952))

(declare-fun m!5963572 () Bool)

(assert (=> b!4940952 m!5963572))

(assert (=> b!4940460 d!1590809))

(assert (=> b!4940460 d!1590525))

(declare-fun d!1590811 () Bool)

(declare-fun lt!2036810 () Bool)

(declare-fun isEmpty!30632 (List!57019) Bool)

(assert (=> d!1590811 (= lt!2036810 (isEmpty!30632 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036588))))))))

(assert (=> d!1590811 (= lt!2036810 (= (size!37710 (left!41504 (c!842516 (_2!34019 lt!2036588)))) 0))))

(assert (=> d!1590811 (= (isEmpty!30630 (left!41504 (c!842516 (_2!34019 lt!2036588)))) lt!2036810)))

(declare-fun bs!1181239 () Bool)

(assert (= bs!1181239 d!1590811))

(declare-fun m!5963574 () Bool)

(assert (=> bs!1181239 m!5963574))

(assert (=> bs!1181239 m!5963574))

(declare-fun m!5963576 () Bool)

(assert (=> bs!1181239 m!5963576))

(declare-fun m!5963578 () Bool)

(assert (=> bs!1181239 m!5963578))

(assert (=> b!4940541 d!1590811))

(declare-fun b!4940956 () Bool)

(declare-fun e!3087152 () List!57019)

(assert (=> b!4940956 (= e!3087152 (++!12426 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036588)))) (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun b!4940955 () Bool)

(assert (=> b!4940955 (= e!3087152 (list!18098 (xs!18288 (c!842516 (_2!34019 lt!2036588)))))))

(declare-fun d!1590813 () Bool)

(declare-fun c!842739 () Bool)

(assert (=> d!1590813 (= c!842739 ((_ is Empty!14964) (c!842516 (_2!34019 lt!2036588))))))

(declare-fun e!3087151 () List!57019)

(assert (=> d!1590813 (= (list!18097 (c!842516 (_2!34019 lt!2036588))) e!3087151)))

(declare-fun b!4940954 () Bool)

(assert (=> b!4940954 (= e!3087151 e!3087152)))

(declare-fun c!842740 () Bool)

(assert (=> b!4940954 (= c!842740 ((_ is Leaf!24879) (c!842516 (_2!34019 lt!2036588))))))

(declare-fun b!4940953 () Bool)

(assert (=> b!4940953 (= e!3087151 Nil!56895)))

(assert (= (and d!1590813 c!842739) b!4940953))

(assert (= (and d!1590813 (not c!842739)) b!4940954))

(assert (= (and b!4940954 c!842740) b!4940955))

(assert (= (and b!4940954 (not c!842740)) b!4940956))

(assert (=> b!4940956 m!5963574))

(declare-fun m!5963580 () Bool)

(assert (=> b!4940956 m!5963580))

(assert (=> b!4940956 m!5963574))

(assert (=> b!4940956 m!5963580))

(declare-fun m!5963582 () Bool)

(assert (=> b!4940956 m!5963582))

(declare-fun m!5963584 () Bool)

(assert (=> b!4940955 m!5963584))

(assert (=> d!1590719 d!1590813))

(declare-fun d!1590815 () Bool)

(assert (=> d!1590815 (= (list!18098 (xs!18288 (c!842516 (_1!34019 lt!2036533)))) (innerList!15052 (xs!18288 (c!842516 (_1!34019 lt!2036533)))))))

(assert (=> b!4940405 d!1590815))

(declare-fun d!1590817 () Bool)

(assert (=> d!1590817 (= (height!1997 (left!41504 (c!842516 (_2!34019 lt!2036588)))) (ite ((_ is Empty!14964) (left!41504 (c!842516 (_2!34019 lt!2036588)))) 0 (ite ((_ is Leaf!24879) (left!41504 (c!842516 (_2!34019 lt!2036588)))) 1 (cheight!15175 (left!41504 (c!842516 (_2!34019 lt!2036588)))))))))

(assert (=> b!4940537 d!1590817))

(declare-fun d!1590819 () Bool)

(assert (=> d!1590819 (= (height!1997 (right!41834 (c!842516 (_2!34019 lt!2036588)))) (ite ((_ is Empty!14964) (right!41834 (c!842516 (_2!34019 lt!2036588)))) 0 (ite ((_ is Leaf!24879) (right!41834 (c!842516 (_2!34019 lt!2036588)))) 1 (cheight!15175 (right!41834 (c!842516 (_2!34019 lt!2036588)))))))))

(assert (=> b!4940537 d!1590819))

(declare-fun b!4940957 () Bool)

(declare-fun res!2108534 () Bool)

(declare-fun e!3087153 () Bool)

(assert (=> b!4940957 (=> (not res!2108534) (not e!3087153))))

(assert (=> b!4940957 (= res!2108534 (isBalanced!4130 (left!41504 (_2!34021 lt!2036726))))))

(declare-fun d!1590821 () Bool)

(declare-fun res!2108533 () Bool)

(declare-fun e!3087154 () Bool)

(assert (=> d!1590821 (=> res!2108533 e!3087154)))

(assert (=> d!1590821 (= res!2108533 (not ((_ is Node!14964) (_2!34021 lt!2036726))))))

(assert (=> d!1590821 (= (isBalanced!4130 (_2!34021 lt!2036726)) e!3087154)))

(declare-fun b!4940958 () Bool)

(declare-fun res!2108535 () Bool)

(assert (=> b!4940958 (=> (not res!2108535) (not e!3087153))))

(assert (=> b!4940958 (= res!2108535 (<= (- (height!1997 (left!41504 (_2!34021 lt!2036726))) (height!1997 (right!41834 (_2!34021 lt!2036726)))) 1))))

(declare-fun b!4940959 () Bool)

(declare-fun res!2108532 () Bool)

(assert (=> b!4940959 (=> (not res!2108532) (not e!3087153))))

(assert (=> b!4940959 (= res!2108532 (isBalanced!4130 (right!41834 (_2!34021 lt!2036726))))))

(declare-fun b!4940960 () Bool)

(assert (=> b!4940960 (= e!3087153 (not (isEmpty!30630 (right!41834 (_2!34021 lt!2036726)))))))

(declare-fun b!4940961 () Bool)

(assert (=> b!4940961 (= e!3087154 e!3087153)))

(declare-fun res!2108536 () Bool)

(assert (=> b!4940961 (=> (not res!2108536) (not e!3087153))))

(assert (=> b!4940961 (= res!2108536 (<= (- 1) (- (height!1997 (left!41504 (_2!34021 lt!2036726))) (height!1997 (right!41834 (_2!34021 lt!2036726))))))))

(declare-fun b!4940962 () Bool)

(declare-fun res!2108537 () Bool)

(assert (=> b!4940962 (=> (not res!2108537) (not e!3087153))))

(assert (=> b!4940962 (= res!2108537 (not (isEmpty!30630 (left!41504 (_2!34021 lt!2036726)))))))

(assert (= (and d!1590821 (not res!2108533)) b!4940961))

(assert (= (and b!4940961 res!2108536) b!4940958))

(assert (= (and b!4940958 res!2108535) b!4940957))

(assert (= (and b!4940957 res!2108534) b!4940959))

(assert (= (and b!4940959 res!2108532) b!4940962))

(assert (= (and b!4940962 res!2108537) b!4940960))

(declare-fun m!5963586 () Bool)

(assert (=> b!4940958 m!5963586))

(declare-fun m!5963588 () Bool)

(assert (=> b!4940958 m!5963588))

(declare-fun m!5963590 () Bool)

(assert (=> b!4940957 m!5963590))

(declare-fun m!5963592 () Bool)

(assert (=> b!4940960 m!5963592))

(declare-fun m!5963594 () Bool)

(assert (=> b!4940962 m!5963594))

(declare-fun m!5963596 () Bool)

(assert (=> b!4940959 m!5963596))

(assert (=> b!4940961 m!5963586))

(assert (=> b!4940961 m!5963588))

(assert (=> b!4940699 d!1590821))

(declare-fun b!4940963 () Bool)

(declare-fun res!2108540 () Bool)

(declare-fun e!3087155 () Bool)

(assert (=> b!4940963 (=> (not res!2108540) (not e!3087155))))

(assert (=> b!4940963 (= res!2108540 (isBalanced!4130 (left!41504 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun d!1590823 () Bool)

(declare-fun res!2108539 () Bool)

(declare-fun e!3087156 () Bool)

(assert (=> d!1590823 (=> res!2108539 e!3087156)))

(assert (=> d!1590823 (= res!2108539 (not ((_ is Node!14964) (right!41834 (c!842516 totalInput!685)))))))

(assert (=> d!1590823 (= (isBalanced!4130 (right!41834 (c!842516 totalInput!685))) e!3087156)))

(declare-fun b!4940964 () Bool)

(declare-fun res!2108541 () Bool)

(assert (=> b!4940964 (=> (not res!2108541) (not e!3087155))))

(assert (=> b!4940964 (= res!2108541 (<= (- (height!1997 (left!41504 (right!41834 (c!842516 totalInput!685)))) (height!1997 (right!41834 (right!41834 (c!842516 totalInput!685))))) 1))))

(declare-fun b!4940965 () Bool)

(declare-fun res!2108538 () Bool)

(assert (=> b!4940965 (=> (not res!2108538) (not e!3087155))))

(assert (=> b!4940965 (= res!2108538 (isBalanced!4130 (right!41834 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4940966 () Bool)

(assert (=> b!4940966 (= e!3087155 (not (isEmpty!30630 (right!41834 (right!41834 (c!842516 totalInput!685))))))))

(declare-fun b!4940967 () Bool)

(assert (=> b!4940967 (= e!3087156 e!3087155)))

(declare-fun res!2108542 () Bool)

(assert (=> b!4940967 (=> (not res!2108542) (not e!3087155))))

(assert (=> b!4940967 (= res!2108542 (<= (- 1) (- (height!1997 (left!41504 (right!41834 (c!842516 totalInput!685)))) (height!1997 (right!41834 (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun b!4940968 () Bool)

(declare-fun res!2108543 () Bool)

(assert (=> b!4940968 (=> (not res!2108543) (not e!3087155))))

(assert (=> b!4940968 (= res!2108543 (not (isEmpty!30630 (left!41504 (right!41834 (c!842516 totalInput!685))))))))

(assert (= (and d!1590823 (not res!2108539)) b!4940967))

(assert (= (and b!4940967 res!2108542) b!4940964))

(assert (= (and b!4940964 res!2108541) b!4940963))

(assert (= (and b!4940963 res!2108540) b!4940965))

(assert (= (and b!4940965 res!2108538) b!4940968))

(assert (= (and b!4940968 res!2108543) b!4940966))

(declare-fun m!5963598 () Bool)

(assert (=> b!4940964 m!5963598))

(declare-fun m!5963600 () Bool)

(assert (=> b!4940964 m!5963600))

(declare-fun m!5963602 () Bool)

(assert (=> b!4940963 m!5963602))

(declare-fun m!5963604 () Bool)

(assert (=> b!4940966 m!5963604))

(declare-fun m!5963606 () Bool)

(assert (=> b!4940968 m!5963606))

(declare-fun m!5963608 () Bool)

(assert (=> b!4940965 m!5963608))

(assert (=> b!4940967 m!5963598))

(assert (=> b!4940967 m!5963600))

(assert (=> b!4940548 d!1590823))

(declare-fun d!1590825 () Bool)

(declare-fun c!842741 () Bool)

(assert (=> d!1590825 (= c!842741 ((_ is Nil!56895) (t!367527 (list!18095 (_2!34019 lt!2036533)))))))

(declare-fun e!3087157 () (InoxSet C!27140))

(assert (=> d!1590825 (= (content!10122 (t!367527 (list!18095 (_2!34019 lt!2036533)))) e!3087157)))

(declare-fun b!4940969 () Bool)

(assert (=> b!4940969 (= e!3087157 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940970 () Bool)

(assert (=> b!4940970 (= e!3087157 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 (list!18095 (_2!34019 lt!2036533)))) true) (content!10122 (t!367527 (t!367527 (list!18095 (_2!34019 lt!2036533)))))))))

(assert (= (and d!1590825 c!842741) b!4940969))

(assert (= (and d!1590825 (not c!842741)) b!4940970))

(declare-fun m!5963610 () Bool)

(assert (=> b!4940970 m!5963610))

(declare-fun m!5963612 () Bool)

(assert (=> b!4940970 m!5963612))

(assert (=> b!4940416 d!1590825))

(declare-fun b!4940985 () Bool)

(declare-fun e!3087168 () List!57019)

(assert (=> b!4940985 (= e!3087168 Nil!56895)))

(declare-fun b!4940986 () Bool)

(declare-fun e!3087167 () Bool)

(declare-fun lt!2036813 () List!57019)

(declare-fun e!3087166 () Int)

(assert (=> b!4940986 (= e!3087167 (= (size!37707 lt!2036813) e!3087166))))

(declare-fun c!842749 () Bool)

(assert (=> b!4940986 (= c!842749 (<= testedPSize!70 0))))

(declare-fun b!4940987 () Bool)

(declare-fun e!3087169 () Int)

(assert (=> b!4940987 (= e!3087169 testedPSize!70)))

(declare-fun b!4940988 () Bool)

(assert (=> b!4940988 (= e!3087168 (Cons!56895 (h!63343 (list!18095 totalInput!685)) (take!587 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1))))))

(declare-fun b!4940989 () Bool)

(assert (=> b!4940989 (= e!3087166 0)))

(declare-fun b!4940990 () Bool)

(assert (=> b!4940990 (= e!3087166 e!3087169)))

(declare-fun c!842748 () Bool)

(assert (=> b!4940990 (= c!842748 (>= testedPSize!70 (size!37707 (list!18095 totalInput!685))))))

(declare-fun b!4940991 () Bool)

(assert (=> b!4940991 (= e!3087169 (size!37707 (list!18095 totalInput!685)))))

(declare-fun d!1590827 () Bool)

(assert (=> d!1590827 e!3087167))

(declare-fun res!2108546 () Bool)

(assert (=> d!1590827 (=> (not res!2108546) (not e!3087167))))

(assert (=> d!1590827 (= res!2108546 (= ((_ map implies) (content!10122 lt!2036813) (content!10122 (list!18095 totalInput!685))) ((as const (InoxSet C!27140)) true)))))

(assert (=> d!1590827 (= lt!2036813 e!3087168)))

(declare-fun c!842750 () Bool)

(assert (=> d!1590827 (= c!842750 (or ((_ is Nil!56895) (list!18095 totalInput!685)) (<= testedPSize!70 0)))))

(assert (=> d!1590827 (= (take!587 (list!18095 totalInput!685) testedPSize!70) lt!2036813)))

(assert (= (and d!1590827 c!842750) b!4940985))

(assert (= (and d!1590827 (not c!842750)) b!4940988))

(assert (= (and d!1590827 res!2108546) b!4940986))

(assert (= (and b!4940986 c!842749) b!4940989))

(assert (= (and b!4940986 (not c!842749)) b!4940990))

(assert (= (and b!4940990 c!842748) b!4940991))

(assert (= (and b!4940990 (not c!842748)) b!4940987))

(assert (=> b!4940991 m!5962718))

(assert (=> b!4940991 m!5962960))

(declare-fun m!5963614 () Bool)

(assert (=> b!4940988 m!5963614))

(declare-fun m!5963616 () Bool)

(assert (=> d!1590827 m!5963616))

(assert (=> d!1590827 m!5962718))

(declare-fun m!5963618 () Bool)

(assert (=> d!1590827 m!5963618))

(assert (=> b!4940990 m!5962718))

(assert (=> b!4940990 m!5962960))

(declare-fun m!5963620 () Bool)

(assert (=> b!4940986 m!5963620))

(assert (=> b!4940717 d!1590827))

(declare-fun d!1590829 () Bool)

(declare-fun c!842751 () Bool)

(assert (=> d!1590829 (= c!842751 ((_ is Nil!56895) (t!367527 testedSuffix!70)))))

(declare-fun e!3087170 () (InoxSet C!27140))

(assert (=> d!1590829 (= (content!10122 (t!367527 testedSuffix!70)) e!3087170)))

(declare-fun b!4940992 () Bool)

(assert (=> b!4940992 (= e!3087170 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4940993 () Bool)

(assert (=> b!4940993 (= e!3087170 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 testedSuffix!70)) true) (content!10122 (t!367527 (t!367527 testedSuffix!70)))))))

(assert (= (and d!1590829 c!842751) b!4940992))

(assert (= (and d!1590829 (not c!842751)) b!4940993))

(declare-fun m!5963622 () Bool)

(assert (=> b!4940993 m!5963622))

(declare-fun m!5963624 () Bool)

(assert (=> b!4940993 m!5963624))

(assert (=> b!4940466 d!1590829))

(declare-fun b!4940994 () Bool)

(declare-fun res!2108549 () Bool)

(declare-fun e!3087171 () Bool)

(assert (=> b!4940994 (=> (not res!2108549) (not e!3087171))))

(assert (=> b!4940994 (= res!2108549 (isBalanced!4130 (left!41504 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun d!1590831 () Bool)

(declare-fun res!2108548 () Bool)

(declare-fun e!3087172 () Bool)

(assert (=> d!1590831 (=> res!2108548 e!3087172)))

(assert (=> d!1590831 (= res!2108548 (not ((_ is Node!14964) (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(assert (=> d!1590831 (= (isBalanced!4130 (right!41834 (c!842516 (_1!34019 lt!2036588)))) e!3087172)))

(declare-fun b!4940995 () Bool)

(declare-fun res!2108550 () Bool)

(assert (=> b!4940995 (=> (not res!2108550) (not e!3087171))))

(assert (=> b!4940995 (= res!2108550 (<= (- (height!1997 (left!41504 (right!41834 (c!842516 (_1!34019 lt!2036588))))) (height!1997 (right!41834 (right!41834 (c!842516 (_1!34019 lt!2036588)))))) 1))))

(declare-fun b!4940996 () Bool)

(declare-fun res!2108547 () Bool)

(assert (=> b!4940996 (=> (not res!2108547) (not e!3087171))))

(assert (=> b!4940996 (= res!2108547 (isBalanced!4130 (right!41834 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun b!4940997 () Bool)

(assert (=> b!4940997 (= e!3087171 (not (isEmpty!30630 (right!41834 (right!41834 (c!842516 (_1!34019 lt!2036588)))))))))

(declare-fun b!4940998 () Bool)

(assert (=> b!4940998 (= e!3087172 e!3087171)))

(declare-fun res!2108551 () Bool)

(assert (=> b!4940998 (=> (not res!2108551) (not e!3087171))))

(assert (=> b!4940998 (= res!2108551 (<= (- 1) (- (height!1997 (left!41504 (right!41834 (c!842516 (_1!34019 lt!2036588))))) (height!1997 (right!41834 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))))

(declare-fun b!4940999 () Bool)

(declare-fun res!2108552 () Bool)

(assert (=> b!4940999 (=> (not res!2108552) (not e!3087171))))

(assert (=> b!4940999 (= res!2108552 (not (isEmpty!30630 (left!41504 (right!41834 (c!842516 (_1!34019 lt!2036588)))))))))

(assert (= (and d!1590831 (not res!2108548)) b!4940998))

(assert (= (and b!4940998 res!2108551) b!4940995))

(assert (= (and b!4940995 res!2108550) b!4940994))

(assert (= (and b!4940994 res!2108549) b!4940996))

(assert (= (and b!4940996 res!2108547) b!4940999))

(assert (= (and b!4940999 res!2108552) b!4940997))

(declare-fun m!5963626 () Bool)

(assert (=> b!4940995 m!5963626))

(declare-fun m!5963628 () Bool)

(assert (=> b!4940995 m!5963628))

(declare-fun m!5963630 () Bool)

(assert (=> b!4940994 m!5963630))

(declare-fun m!5963632 () Bool)

(assert (=> b!4940997 m!5963632))

(declare-fun m!5963634 () Bool)

(assert (=> b!4940999 m!5963634))

(declare-fun m!5963636 () Bool)

(assert (=> b!4940996 m!5963636))

(assert (=> b!4940998 m!5963626))

(assert (=> b!4940998 m!5963628))

(assert (=> b!4940556 d!1590831))

(declare-fun d!1590833 () Bool)

(assert (=> d!1590833 (= (isDefined!11176 lt!2036660) (not (isEmpty!30629 lt!2036660)))))

(declare-fun bs!1181240 () Bool)

(assert (= bs!1181240 d!1590833))

(declare-fun m!5963638 () Bool)

(assert (=> bs!1181240 m!5963638))

(assert (=> d!1590623 d!1590833))

(declare-fun d!1590835 () Bool)

(declare-fun lt!2036816 () Bool)

(assert (=> d!1590835 (= lt!2036816 (exists!1307 (toList!7980 z!3568) lambda!246221))))

(declare-fun choose!36385 ((InoxSet Context!6190) Int) Bool)

(assert (=> d!1590835 (= lt!2036816 (choose!36385 z!3568 lambda!246221))))

(assert (=> d!1590835 (= (exists!1308 z!3568 lambda!246221) lt!2036816)))

(declare-fun bs!1181241 () Bool)

(assert (= bs!1181241 d!1590835))

(assert (=> bs!1181241 m!5962906))

(assert (=> bs!1181241 m!5962906))

(declare-fun m!5963640 () Bool)

(assert (=> bs!1181241 m!5963640))

(declare-fun m!5963642 () Bool)

(assert (=> bs!1181241 m!5963642))

(assert (=> d!1590623 d!1590835))

(declare-fun d!1590837 () Bool)

(declare-fun e!3087174 () Bool)

(assert (=> d!1590837 e!3087174))

(declare-fun res!2108554 () Bool)

(assert (=> d!1590837 (=> (not res!2108554) (not e!3087174))))

(declare-fun lt!2036817 () List!57019)

(assert (=> d!1590837 (= res!2108554 (= (content!10122 lt!2036817) ((_ map or) (content!10122 (ite c!842651 (_2!34023 lt!2036719) lt!2036723)) (content!10122 (ite c!842651 lt!2036717 (_1!34023 lt!2036718))))))))

(declare-fun e!3087173 () List!57019)

(assert (=> d!1590837 (= lt!2036817 e!3087173)))

(declare-fun c!842752 () Bool)

(assert (=> d!1590837 (= c!842752 ((_ is Nil!56895) (ite c!842651 (_2!34023 lt!2036719) lt!2036723)))))

(assert (=> d!1590837 (= (++!12426 (ite c!842651 (_2!34023 lt!2036719) lt!2036723) (ite c!842651 lt!2036717 (_1!34023 lt!2036718))) lt!2036817)))

(declare-fun b!4941000 () Bool)

(assert (=> b!4941000 (= e!3087173 (ite c!842651 lt!2036717 (_1!34023 lt!2036718)))))

(declare-fun b!4941003 () Bool)

(assert (=> b!4941003 (= e!3087174 (or (not (= (ite c!842651 lt!2036717 (_1!34023 lt!2036718)) Nil!56895)) (= lt!2036817 (ite c!842651 (_2!34023 lt!2036719) lt!2036723))))))

(declare-fun b!4941002 () Bool)

(declare-fun res!2108553 () Bool)

(assert (=> b!4941002 (=> (not res!2108553) (not e!3087174))))

(assert (=> b!4941002 (= res!2108553 (= (size!37707 lt!2036817) (+ (size!37707 (ite c!842651 (_2!34023 lt!2036719) lt!2036723)) (size!37707 (ite c!842651 lt!2036717 (_1!34023 lt!2036718))))))))

(declare-fun b!4941001 () Bool)

(assert (=> b!4941001 (= e!3087173 (Cons!56895 (h!63343 (ite c!842651 (_2!34023 lt!2036719) lt!2036723)) (++!12426 (t!367527 (ite c!842651 (_2!34023 lt!2036719) lt!2036723)) (ite c!842651 lt!2036717 (_1!34023 lt!2036718)))))))

(assert (= (and d!1590837 c!842752) b!4941000))

(assert (= (and d!1590837 (not c!842752)) b!4941001))

(assert (= (and d!1590837 res!2108554) b!4941002))

(assert (= (and b!4941002 res!2108553) b!4941003))

(declare-fun m!5963644 () Bool)

(assert (=> d!1590837 m!5963644))

(declare-fun m!5963646 () Bool)

(assert (=> d!1590837 m!5963646))

(declare-fun m!5963648 () Bool)

(assert (=> d!1590837 m!5963648))

(declare-fun m!5963650 () Bool)

(assert (=> b!4941002 m!5963650))

(declare-fun m!5963652 () Bool)

(assert (=> b!4941002 m!5963652))

(declare-fun m!5963654 () Bool)

(assert (=> b!4941002 m!5963654))

(declare-fun m!5963656 () Bool)

(assert (=> b!4941001 m!5963656))

(assert (=> bm!344718 d!1590837))

(declare-fun d!1590839 () Bool)

(declare-fun lt!2036818 () Int)

(assert (=> d!1590839 (= lt!2036818 (size!37707 (list!18097 (left!41504 (c!842516 totalInput!685)))))))

(assert (=> d!1590839 (= lt!2036818 (ite ((_ is Empty!14964) (left!41504 (c!842516 totalInput!685))) 0 (ite ((_ is Leaf!24879) (left!41504 (c!842516 totalInput!685))) (csize!30159 (left!41504 (c!842516 totalInput!685))) (csize!30158 (left!41504 (c!842516 totalInput!685))))))))

(assert (=> d!1590839 (= (size!37710 (left!41504 (c!842516 totalInput!685))) lt!2036818)))

(declare-fun bs!1181242 () Bool)

(assert (= bs!1181242 d!1590839))

(assert (=> bs!1181242 m!5963048))

(assert (=> bs!1181242 m!5963048))

(declare-fun m!5963658 () Bool)

(assert (=> bs!1181242 m!5963658))

(assert (=> b!4940696 d!1590839))

(declare-fun bm!344755 () Bool)

(declare-fun c!842760 () Bool)

(declare-fun c!842761 () Bool)

(assert (=> bm!344755 (= c!842760 c!842761)))

(declare-fun e!3087186 () Int)

(declare-fun call!344761 () tuple2!61440)

(assert (=> bm!344755 (= call!344761 (splitAtIndex!136 (ite c!842761 lt!2036723 lt!2036717) e!3087186))))

(declare-fun bm!344756 () Bool)

(declare-fun lt!2036827 () tuple2!61440)

(declare-fun call!344760 () List!57019)

(declare-fun lt!2036825 () tuple2!61440)

(assert (=> bm!344756 (= call!344760 (++!12426 (ite c!842761 (_2!34023 lt!2036825) lt!2036723) (ite c!842761 lt!2036717 (_1!34023 lt!2036827))))))

(declare-fun b!4941018 () Bool)

(assert (=> b!4941018 (= e!3087186 testedPSize!70)))

(declare-fun b!4941019 () Bool)

(declare-fun e!3087184 () Bool)

(assert (=> b!4941019 (= e!3087184 (<= testedPSize!70 (+ (size!37707 lt!2036723) (size!37707 lt!2036717))))))

(declare-fun b!4941020 () Bool)

(declare-fun e!3087183 () tuple2!61440)

(declare-fun e!3087185 () tuple2!61440)

(assert (=> b!4941020 (= e!3087183 e!3087185)))

(assert (=> b!4941020 (= c!842761 (< testedPSize!70 (size!37707 lt!2036723)))))

(declare-fun b!4941022 () Bool)

(assert (=> b!4941022 (= e!3087186 (- testedPSize!70 (size!37707 lt!2036723)))))

(declare-fun d!1590841 () Bool)

(assert (=> d!1590841 (= (splitAtIndex!136 (++!12426 lt!2036723 lt!2036717) testedPSize!70) e!3087183)))

(declare-fun c!842759 () Bool)

(assert (=> d!1590841 (= c!842759 (= (size!37707 lt!2036723) testedPSize!70))))

(declare-fun lt!2036826 () Unit!147645)

(declare-fun choose!36386 (List!57019 List!57019 Int) Unit!147645)

(assert (=> d!1590841 (= lt!2036826 (choose!36386 lt!2036723 lt!2036717 testedPSize!70))))

(assert (=> d!1590841 e!3087184))

(declare-fun res!2108557 () Bool)

(assert (=> d!1590841 (=> (not res!2108557) (not e!3087184))))

(assert (=> d!1590841 (= res!2108557 (<= 0 testedPSize!70))))

(assert (=> d!1590841 (= (splitAtLemma!37 lt!2036723 lt!2036717 testedPSize!70) lt!2036826)))

(declare-fun b!4941021 () Bool)

(assert (=> b!4941021 (= lt!2036825 call!344761)))

(assert (=> b!4941021 (= e!3087185 (tuple2!61441 (_1!34023 lt!2036825) call!344760))))

(declare-fun b!4941023 () Bool)

(assert (=> b!4941023 (= e!3087183 (tuple2!61441 lt!2036723 lt!2036717))))

(declare-fun b!4941024 () Bool)

(assert (=> b!4941024 (= lt!2036827 call!344761)))

(assert (=> b!4941024 (= e!3087185 (tuple2!61441 call!344760 (_2!34023 lt!2036827)))))

(assert (= (and d!1590841 res!2108557) b!4941019))

(assert (= (and d!1590841 c!842759) b!4941023))

(assert (= (and d!1590841 (not c!842759)) b!4941020))

(assert (= (and b!4941020 c!842761) b!4941021))

(assert (= (and b!4941020 (not c!842761)) b!4941024))

(assert (= (or b!4941021 b!4941024) bm!344756))

(assert (= (or b!4941021 b!4941024) bm!344755))

(assert (= (and bm!344755 c!842760) b!4941018))

(assert (= (and bm!344755 (not c!842760)) b!4941022))

(assert (=> d!1590841 m!5963336))

(assert (=> d!1590841 m!5963336))

(assert (=> d!1590841 m!5963338))

(declare-fun m!5963660 () Bool)

(assert (=> d!1590841 m!5963660))

(declare-fun m!5963662 () Bool)

(assert (=> d!1590841 m!5963662))

(declare-fun m!5963664 () Bool)

(assert (=> bm!344755 m!5963664))

(assert (=> b!4941020 m!5963660))

(assert (=> b!4941019 m!5963660))

(declare-fun m!5963666 () Bool)

(assert (=> b!4941019 m!5963666))

(declare-fun m!5963668 () Bool)

(assert (=> bm!344756 m!5963668))

(assert (=> b!4941022 m!5963660))

(assert (=> b!4940696 d!1590841))

(declare-fun b!4941028 () Bool)

(declare-fun e!3087188 () List!57019)

(assert (=> b!4941028 (= e!3087188 (++!12426 (list!18097 (left!41504 (left!41504 (c!842516 totalInput!685)))) (list!18097 (right!41834 (left!41504 (c!842516 totalInput!685))))))))

(declare-fun b!4941027 () Bool)

(assert (=> b!4941027 (= e!3087188 (list!18098 (xs!18288 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun d!1590843 () Bool)

(declare-fun c!842762 () Bool)

(assert (=> d!1590843 (= c!842762 ((_ is Empty!14964) (left!41504 (c!842516 totalInput!685))))))

(declare-fun e!3087187 () List!57019)

(assert (=> d!1590843 (= (list!18097 (left!41504 (c!842516 totalInput!685))) e!3087187)))

(declare-fun b!4941026 () Bool)

(assert (=> b!4941026 (= e!3087187 e!3087188)))

(declare-fun c!842763 () Bool)

(assert (=> b!4941026 (= c!842763 ((_ is Leaf!24879) (left!41504 (c!842516 totalInput!685))))))

(declare-fun b!4941025 () Bool)

(assert (=> b!4941025 (= e!3087187 Nil!56895)))

(assert (= (and d!1590843 c!842762) b!4941025))

(assert (= (and d!1590843 (not c!842762)) b!4941026))

(assert (= (and b!4941026 c!842763) b!4941027))

(assert (= (and b!4941026 (not c!842763)) b!4941028))

(declare-fun m!5963670 () Bool)

(assert (=> b!4941028 m!5963670))

(declare-fun m!5963672 () Bool)

(assert (=> b!4941028 m!5963672))

(assert (=> b!4941028 m!5963670))

(assert (=> b!4941028 m!5963672))

(declare-fun m!5963674 () Bool)

(assert (=> b!4941028 m!5963674))

(declare-fun m!5963676 () Bool)

(assert (=> b!4941027 m!5963676))

(assert (=> b!4940696 d!1590843))

(declare-fun d!1590845 () Bool)

(declare-fun e!3087190 () Bool)

(assert (=> d!1590845 e!3087190))

(declare-fun res!2108559 () Bool)

(assert (=> d!1590845 (=> (not res!2108559) (not e!3087190))))

(declare-fun lt!2036828 () List!57019)

(assert (=> d!1590845 (= res!2108559 (= (content!10122 lt!2036828) ((_ map or) (content!10122 lt!2036723) (content!10122 lt!2036717))))))

(declare-fun e!3087189 () List!57019)

(assert (=> d!1590845 (= lt!2036828 e!3087189)))

(declare-fun c!842764 () Bool)

(assert (=> d!1590845 (= c!842764 ((_ is Nil!56895) lt!2036723))))

(assert (=> d!1590845 (= (++!12426 lt!2036723 lt!2036717) lt!2036828)))

(declare-fun b!4941029 () Bool)

(assert (=> b!4941029 (= e!3087189 lt!2036717)))

(declare-fun b!4941032 () Bool)

(assert (=> b!4941032 (= e!3087190 (or (not (= lt!2036717 Nil!56895)) (= lt!2036828 lt!2036723)))))

(declare-fun b!4941031 () Bool)

(declare-fun res!2108558 () Bool)

(assert (=> b!4941031 (=> (not res!2108558) (not e!3087190))))

(assert (=> b!4941031 (= res!2108558 (= (size!37707 lt!2036828) (+ (size!37707 lt!2036723) (size!37707 lt!2036717))))))

(declare-fun b!4941030 () Bool)

(assert (=> b!4941030 (= e!3087189 (Cons!56895 (h!63343 lt!2036723) (++!12426 (t!367527 lt!2036723) lt!2036717)))))

(assert (= (and d!1590845 c!842764) b!4941029))

(assert (= (and d!1590845 (not c!842764)) b!4941030))

(assert (= (and d!1590845 res!2108559) b!4941031))

(assert (= (and b!4941031 res!2108558) b!4941032))

(declare-fun m!5963678 () Bool)

(assert (=> d!1590845 m!5963678))

(declare-fun m!5963680 () Bool)

(assert (=> d!1590845 m!5963680))

(declare-fun m!5963682 () Bool)

(assert (=> d!1590845 m!5963682))

(declare-fun m!5963684 () Bool)

(assert (=> b!4941031 m!5963684))

(assert (=> b!4941031 m!5963660))

(assert (=> b!4941031 m!5963666))

(declare-fun m!5963686 () Bool)

(assert (=> b!4941030 m!5963686))

(assert (=> b!4940696 d!1590845))

(declare-fun d!1590847 () Bool)

(declare-fun e!3087192 () Bool)

(assert (=> d!1590847 e!3087192))

(declare-fun res!2108561 () Bool)

(assert (=> d!1590847 (=> (not res!2108561) (not e!3087192))))

(declare-fun lt!2036830 () tuple2!61440)

(assert (=> d!1590847 (= res!2108561 (= (++!12426 (_1!34023 lt!2036830) (_2!34023 lt!2036830)) (++!12426 lt!2036723 lt!2036717)))))

(declare-fun e!3087193 () tuple2!61440)

(assert (=> d!1590847 (= lt!2036830 e!3087193)))

(declare-fun c!842766 () Bool)

(assert (=> d!1590847 (= c!842766 ((_ is Nil!56895) (++!12426 lt!2036723 lt!2036717)))))

(assert (=> d!1590847 (= (splitAtIndex!136 (++!12426 lt!2036723 lt!2036717) testedPSize!70) lt!2036830)))

(declare-fun lt!2036829 () tuple2!61440)

(declare-fun b!4941033 () Bool)

(assert (=> b!4941033 (= lt!2036829 (splitAtIndex!136 (t!367527 (++!12426 lt!2036723 lt!2036717)) (- testedPSize!70 1)))))

(declare-fun e!3087191 () tuple2!61440)

(assert (=> b!4941033 (= e!3087191 (tuple2!61441 (Cons!56895 (h!63343 (++!12426 lt!2036723 lt!2036717)) (_1!34023 lt!2036829)) (_2!34023 lt!2036829)))))

(declare-fun b!4941034 () Bool)

(assert (=> b!4941034 (= e!3087191 (tuple2!61441 Nil!56895 (++!12426 lt!2036723 lt!2036717)))))

(declare-fun b!4941035 () Bool)

(declare-fun res!2108560 () Bool)

(assert (=> b!4941035 (=> (not res!2108560) (not e!3087192))))

(assert (=> b!4941035 (= res!2108560 (= (_1!34023 lt!2036830) (take!587 (++!12426 lt!2036723 lt!2036717) testedPSize!70)))))

(declare-fun b!4941036 () Bool)

(assert (=> b!4941036 (= e!3087192 (= (_2!34023 lt!2036830) (drop!2279 (++!12426 lt!2036723 lt!2036717) testedPSize!70)))))

(declare-fun b!4941037 () Bool)

(assert (=> b!4941037 (= e!3087193 e!3087191)))

(declare-fun c!842765 () Bool)

(assert (=> b!4941037 (= c!842765 (<= testedPSize!70 0))))

(declare-fun b!4941038 () Bool)

(assert (=> b!4941038 (= e!3087193 (tuple2!61441 Nil!56895 Nil!56895))))

(assert (= (and d!1590847 c!842766) b!4941038))

(assert (= (and d!1590847 (not c!842766)) b!4941037))

(assert (= (and b!4941037 c!842765) b!4941034))

(assert (= (and b!4941037 (not c!842765)) b!4941033))

(assert (= (and d!1590847 res!2108561) b!4941035))

(assert (= (and b!4941035 res!2108560) b!4941036))

(declare-fun m!5963688 () Bool)

(assert (=> d!1590847 m!5963688))

(declare-fun m!5963690 () Bool)

(assert (=> b!4941033 m!5963690))

(assert (=> b!4941035 m!5963336))

(declare-fun m!5963692 () Bool)

(assert (=> b!4941035 m!5963692))

(assert (=> b!4941036 m!5963336))

(declare-fun m!5963694 () Bool)

(assert (=> b!4941036 m!5963694))

(assert (=> b!4940696 d!1590847))

(declare-fun b!4941042 () Bool)

(declare-fun e!3087195 () List!57019)

(assert (=> b!4941042 (= e!3087195 (++!12426 (list!18097 (left!41504 (right!41834 (c!842516 totalInput!685)))) (list!18097 (right!41834 (right!41834 (c!842516 totalInput!685))))))))

(declare-fun b!4941041 () Bool)

(assert (=> b!4941041 (= e!3087195 (list!18098 (xs!18288 (right!41834 (c!842516 totalInput!685)))))))

(declare-fun d!1590849 () Bool)

(declare-fun c!842767 () Bool)

(assert (=> d!1590849 (= c!842767 ((_ is Empty!14964) (right!41834 (c!842516 totalInput!685))))))

(declare-fun e!3087194 () List!57019)

(assert (=> d!1590849 (= (list!18097 (right!41834 (c!842516 totalInput!685))) e!3087194)))

(declare-fun b!4941040 () Bool)

(assert (=> b!4941040 (= e!3087194 e!3087195)))

(declare-fun c!842768 () Bool)

(assert (=> b!4941040 (= c!842768 ((_ is Leaf!24879) (right!41834 (c!842516 totalInput!685))))))

(declare-fun b!4941039 () Bool)

(assert (=> b!4941039 (= e!3087194 Nil!56895)))

(assert (= (and d!1590849 c!842767) b!4941039))

(assert (= (and d!1590849 (not c!842767)) b!4941040))

(assert (= (and b!4941040 c!842768) b!4941041))

(assert (= (and b!4941040 (not c!842768)) b!4941042))

(declare-fun m!5963696 () Bool)

(assert (=> b!4941042 m!5963696))

(declare-fun m!5963698 () Bool)

(assert (=> b!4941042 m!5963698))

(assert (=> b!4941042 m!5963696))

(assert (=> b!4941042 m!5963698))

(declare-fun m!5963700 () Bool)

(assert (=> b!4941042 m!5963700))

(declare-fun m!5963702 () Bool)

(assert (=> b!4941041 m!5963702))

(assert (=> b!4940696 d!1590849))

(declare-fun d!1590851 () Bool)

(declare-fun c!842769 () Bool)

(assert (=> d!1590851 (= c!842769 ((_ is Nil!56895) lt!2036646))))

(declare-fun e!3087196 () (InoxSet C!27140))

(assert (=> d!1590851 (= (content!10122 lt!2036646) e!3087196)))

(declare-fun b!4941043 () Bool)

(assert (=> b!4941043 (= e!3087196 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941044 () Bool)

(assert (=> b!4941044 (= e!3087196 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036646) true) (content!10122 (t!367527 lt!2036646))))))

(assert (= (and d!1590851 c!842769) b!4941043))

(assert (= (and d!1590851 (not c!842769)) b!4941044))

(declare-fun m!5963704 () Bool)

(assert (=> b!4941044 m!5963704))

(declare-fun m!5963706 () Bool)

(assert (=> b!4941044 m!5963706))

(assert (=> d!1590577 d!1590851))

(declare-fun d!1590853 () Bool)

(declare-fun c!842770 () Bool)

(assert (=> d!1590853 (= c!842770 ((_ is Nil!56895) (t!367527 (list!18095 (_1!34019 lt!2036533)))))))

(declare-fun e!3087197 () (InoxSet C!27140))

(assert (=> d!1590853 (= (content!10122 (t!367527 (list!18095 (_1!34019 lt!2036533)))) e!3087197)))

(declare-fun b!4941045 () Bool)

(assert (=> b!4941045 (= e!3087197 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941046 () Bool)

(assert (=> b!4941046 (= e!3087197 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 (list!18095 (_1!34019 lt!2036533)))) true) (content!10122 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533)))))))))

(assert (= (and d!1590853 c!842770) b!4941045))

(assert (= (and d!1590853 (not c!842770)) b!4941046))

(declare-fun m!5963708 () Bool)

(assert (=> b!4941046 m!5963708))

(declare-fun m!5963710 () Bool)

(assert (=> b!4941046 m!5963710))

(assert (=> d!1590577 d!1590853))

(assert (=> d!1590577 d!1590575))

(declare-fun d!1590855 () Bool)

(declare-fun lt!2036831 () Int)

(assert (=> d!1590855 (>= lt!2036831 0)))

(declare-fun e!3087198 () Int)

(assert (=> d!1590855 (= lt!2036831 e!3087198)))

(declare-fun c!842771 () Bool)

(assert (=> d!1590855 (= c!842771 ((_ is Nil!56895) lt!2036656))))

(assert (=> d!1590855 (= (size!37707 lt!2036656) lt!2036831)))

(declare-fun b!4941047 () Bool)

(assert (=> b!4941047 (= e!3087198 0)))

(declare-fun b!4941048 () Bool)

(assert (=> b!4941048 (= e!3087198 (+ 1 (size!37707 (t!367527 lt!2036656))))))

(assert (= (and d!1590855 c!842771) b!4941047))

(assert (= (and d!1590855 (not c!842771)) b!4941048))

(declare-fun m!5963712 () Bool)

(assert (=> b!4941048 m!5963712))

(assert (=> b!4940469 d!1590855))

(assert (=> b!4940469 d!1590525))

(declare-fun d!1590857 () Bool)

(declare-fun lt!2036832 () Int)

(assert (=> d!1590857 (>= lt!2036832 0)))

(declare-fun e!3087199 () Int)

(assert (=> d!1590857 (= lt!2036832 e!3087199)))

(declare-fun c!842772 () Bool)

(assert (=> d!1590857 (= c!842772 ((_ is Nil!56895) lt!2036634))))

(assert (=> d!1590857 (= (size!37707 lt!2036634) lt!2036832)))

(declare-fun b!4941049 () Bool)

(assert (=> b!4941049 (= e!3087199 0)))

(declare-fun b!4941050 () Bool)

(assert (=> b!4941050 (= e!3087199 (+ 1 (size!37707 (t!367527 lt!2036634))))))

(assert (= (and d!1590857 c!842772) b!4941049))

(assert (= (and d!1590857 (not c!842772)) b!4941050))

(declare-fun m!5963714 () Bool)

(assert (=> b!4941050 m!5963714))

(assert (=> b!4940469 d!1590857))

(declare-fun b!4941051 () Bool)

(declare-fun e!3087200 () Bool)

(declare-fun e!3087202 () Bool)

(assert (=> b!4941051 (= e!3087200 e!3087202)))

(declare-fun res!2108563 () Bool)

(assert (=> b!4941051 (=> (not res!2108563) (not e!3087202))))

(assert (=> b!4941051 (= res!2108563 (not ((_ is Nil!56895) (tail!9725 (tail!9725 lt!2036535)))))))

(declare-fun d!1590859 () Bool)

(declare-fun e!3087201 () Bool)

(assert (=> d!1590859 e!3087201))

(declare-fun res!2108565 () Bool)

(assert (=> d!1590859 (=> res!2108565 e!3087201)))

(declare-fun lt!2036833 () Bool)

(assert (=> d!1590859 (= res!2108565 (not lt!2036833))))

(assert (=> d!1590859 (= lt!2036833 e!3087200)))

(declare-fun res!2108564 () Bool)

(assert (=> d!1590859 (=> res!2108564 e!3087200)))

(assert (=> d!1590859 (= res!2108564 ((_ is Nil!56895) (tail!9725 (tail!9725 testedP!110))))))

(assert (=> d!1590859 (= (isPrefix!5053 (tail!9725 (tail!9725 testedP!110)) (tail!9725 (tail!9725 lt!2036535))) lt!2036833)))

(declare-fun b!4941054 () Bool)

(assert (=> b!4941054 (= e!3087201 (>= (size!37707 (tail!9725 (tail!9725 lt!2036535))) (size!37707 (tail!9725 (tail!9725 testedP!110)))))))

(declare-fun b!4941052 () Bool)

(declare-fun res!2108562 () Bool)

(assert (=> b!4941052 (=> (not res!2108562) (not e!3087202))))

(assert (=> b!4941052 (= res!2108562 (= (head!10586 (tail!9725 (tail!9725 testedP!110))) (head!10586 (tail!9725 (tail!9725 lt!2036535)))))))

(declare-fun b!4941053 () Bool)

(assert (=> b!4941053 (= e!3087202 (isPrefix!5053 (tail!9725 (tail!9725 (tail!9725 testedP!110))) (tail!9725 (tail!9725 (tail!9725 lt!2036535)))))))

(assert (= (and d!1590859 (not res!2108564)) b!4941051))

(assert (= (and b!4941051 res!2108563) b!4941052))

(assert (= (and b!4941052 res!2108562) b!4941053))

(assert (= (and d!1590859 (not res!2108565)) b!4941054))

(assert (=> b!4941054 m!5962982))

(declare-fun m!5963716 () Bool)

(assert (=> b!4941054 m!5963716))

(assert (=> b!4941054 m!5962980))

(assert (=> b!4941054 m!5963546))

(assert (=> b!4941052 m!5962980))

(assert (=> b!4941052 m!5963548))

(assert (=> b!4941052 m!5962982))

(declare-fun m!5963718 () Bool)

(assert (=> b!4941052 m!5963718))

(assert (=> b!4941053 m!5962980))

(assert (=> b!4941053 m!5963552))

(assert (=> b!4941053 m!5962982))

(declare-fun m!5963720 () Bool)

(assert (=> b!4941053 m!5963720))

(assert (=> b!4941053 m!5963552))

(assert (=> b!4941053 m!5963720))

(declare-fun m!5963722 () Bool)

(assert (=> b!4941053 m!5963722))

(assert (=> b!4940382 d!1590859))

(assert (=> b!4940382 d!1590797))

(declare-fun d!1590861 () Bool)

(assert (=> d!1590861 (= (tail!9725 (tail!9725 lt!2036535)) (t!367527 (tail!9725 lt!2036535)))))

(assert (=> b!4940382 d!1590861))

(assert (=> b!4940763 d!1590791))

(declare-fun d!1590863 () Bool)

(assert (=> d!1590863 (= (head!10586 (tail!9725 lt!2036530)) (h!63343 (tail!9725 lt!2036530)))))

(assert (=> b!4940763 d!1590863))

(assert (=> b!4940372 d!1590589))

(assert (=> b!4940372 d!1590591))

(declare-fun d!1590865 () Bool)

(declare-fun c!842773 () Bool)

(assert (=> d!1590865 (= c!842773 ((_ is Nil!56895) (t!367527 testedP!110)))))

(declare-fun e!3087203 () (InoxSet C!27140))

(assert (=> d!1590865 (= (content!10122 (t!367527 testedP!110)) e!3087203)))

(declare-fun b!4941055 () Bool)

(assert (=> b!4941055 (= e!3087203 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941056 () Bool)

(assert (=> b!4941056 (= e!3087203 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 testedP!110)) true) (content!10122 (t!367527 (t!367527 testedP!110)))))))

(assert (= (and d!1590865 c!842773) b!4941055))

(assert (= (and d!1590865 (not c!842773)) b!4941056))

(declare-fun m!5963724 () Bool)

(assert (=> b!4941056 m!5963724))

(declare-fun m!5963726 () Bool)

(assert (=> b!4941056 m!5963726))

(assert (=> b!4940464 d!1590865))

(declare-fun d!1590867 () Bool)

(declare-fun lt!2036834 () Int)

(assert (=> d!1590867 (>= lt!2036834 0)))

(declare-fun e!3087204 () Int)

(assert (=> d!1590867 (= lt!2036834 e!3087204)))

(declare-fun c!842774 () Bool)

(assert (=> d!1590867 (= c!842774 ((_ is Nil!56895) (t!367527 (list!18095 totalInput!685))))))

(assert (=> d!1590867 (= (size!37707 (t!367527 (list!18095 totalInput!685))) lt!2036834)))

(declare-fun b!4941057 () Bool)

(assert (=> b!4941057 (= e!3087204 0)))

(declare-fun b!4941058 () Bool)

(assert (=> b!4941058 (= e!3087204 (+ 1 (size!37707 (t!367527 (t!367527 (list!18095 totalInput!685))))))))

(assert (= (and d!1590867 c!842774) b!4941057))

(assert (= (and d!1590867 (not c!842774)) b!4941058))

(declare-fun m!5963728 () Bool)

(assert (=> b!4941058 m!5963728))

(assert (=> b!4940771 d!1590867))

(declare-fun d!1590869 () Bool)

(declare-fun e!3087206 () Bool)

(assert (=> d!1590869 e!3087206))

(declare-fun res!2108567 () Bool)

(assert (=> d!1590869 (=> (not res!2108567) (not e!3087206))))

(declare-fun lt!2036835 () List!57019)

(assert (=> d!1590869 (= res!2108567 (= (content!10122 lt!2036835) ((_ map or) (content!10122 (list!18097 (left!41504 (c!842516 totalInput!685)))) (content!10122 (list!18097 (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun e!3087205 () List!57019)

(assert (=> d!1590869 (= lt!2036835 e!3087205)))

(declare-fun c!842775 () Bool)

(assert (=> d!1590869 (= c!842775 ((_ is Nil!56895) (list!18097 (left!41504 (c!842516 totalInput!685)))))))

(assert (=> d!1590869 (= (++!12426 (list!18097 (left!41504 (c!842516 totalInput!685))) (list!18097 (right!41834 (c!842516 totalInput!685)))) lt!2036835)))

(declare-fun b!4941059 () Bool)

(assert (=> b!4941059 (= e!3087205 (list!18097 (right!41834 (c!842516 totalInput!685))))))

(declare-fun b!4941062 () Bool)

(assert (=> b!4941062 (= e!3087206 (or (not (= (list!18097 (right!41834 (c!842516 totalInput!685))) Nil!56895)) (= lt!2036835 (list!18097 (left!41504 (c!842516 totalInput!685))))))))

(declare-fun b!4941061 () Bool)

(declare-fun res!2108566 () Bool)

(assert (=> b!4941061 (=> (not res!2108566) (not e!3087206))))

(assert (=> b!4941061 (= res!2108566 (= (size!37707 lt!2036835) (+ (size!37707 (list!18097 (left!41504 (c!842516 totalInput!685)))) (size!37707 (list!18097 (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun b!4941060 () Bool)

(assert (=> b!4941060 (= e!3087205 (Cons!56895 (h!63343 (list!18097 (left!41504 (c!842516 totalInput!685)))) (++!12426 (t!367527 (list!18097 (left!41504 (c!842516 totalInput!685)))) (list!18097 (right!41834 (c!842516 totalInput!685))))))))

(assert (= (and d!1590869 c!842775) b!4941059))

(assert (= (and d!1590869 (not c!842775)) b!4941060))

(assert (= (and d!1590869 res!2108567) b!4941061))

(assert (= (and b!4941061 res!2108566) b!4941062))

(declare-fun m!5963730 () Bool)

(assert (=> d!1590869 m!5963730))

(assert (=> d!1590869 m!5963048))

(declare-fun m!5963732 () Bool)

(assert (=> d!1590869 m!5963732))

(assert (=> d!1590869 m!5963050))

(declare-fun m!5963734 () Bool)

(assert (=> d!1590869 m!5963734))

(declare-fun m!5963736 () Bool)

(assert (=> b!4941061 m!5963736))

(assert (=> b!4941061 m!5963048))

(assert (=> b!4941061 m!5963658))

(assert (=> b!4941061 m!5963050))

(declare-fun m!5963738 () Bool)

(assert (=> b!4941061 m!5963738))

(assert (=> b!4941060 m!5963050))

(declare-fun m!5963740 () Bool)

(assert (=> b!4941060 m!5963740))

(assert (=> b!4940448 d!1590869))

(assert (=> b!4940448 d!1590843))

(assert (=> b!4940448 d!1590849))

(declare-fun d!1590871 () Bool)

(declare-fun lt!2036836 () List!57019)

(assert (=> d!1590871 (= (++!12426 (t!367527 (t!367527 testedP!110)) lt!2036836) (tail!9725 (tail!9725 lt!2036530)))))

(declare-fun e!3087207 () List!57019)

(assert (=> d!1590871 (= lt!2036836 e!3087207)))

(declare-fun c!842776 () Bool)

(assert (=> d!1590871 (= c!842776 ((_ is Cons!56895) (t!367527 (t!367527 testedP!110))))))

(assert (=> d!1590871 (>= (size!37707 (tail!9725 (tail!9725 lt!2036530))) (size!37707 (t!367527 (t!367527 testedP!110))))))

(assert (=> d!1590871 (= (getSuffix!3035 (tail!9725 (tail!9725 lt!2036530)) (t!367527 (t!367527 testedP!110))) lt!2036836)))

(declare-fun b!4941063 () Bool)

(assert (=> b!4941063 (= e!3087207 (getSuffix!3035 (tail!9725 (tail!9725 (tail!9725 lt!2036530))) (t!367527 (t!367527 (t!367527 testedP!110)))))))

(declare-fun b!4941064 () Bool)

(assert (=> b!4941064 (= e!3087207 (tail!9725 (tail!9725 lt!2036530)))))

(assert (= (and d!1590871 c!842776) b!4941063))

(assert (= (and d!1590871 (not c!842776)) b!4941064))

(declare-fun m!5963742 () Bool)

(assert (=> d!1590871 m!5963742))

(assert (=> d!1590871 m!5963060))

(assert (=> d!1590871 m!5963544))

(assert (=> d!1590871 m!5963054))

(assert (=> b!4941063 m!5963060))

(assert (=> b!4941063 m!5963554))

(assert (=> b!4941063 m!5963554))

(declare-fun m!5963744 () Bool)

(assert (=> b!4941063 m!5963744))

(assert (=> b!4940451 d!1590871))

(assert (=> b!4940451 d!1590799))

(declare-fun d!1590873 () Bool)

(declare-fun e!3087209 () Bool)

(assert (=> d!1590873 e!3087209))

(declare-fun res!2108569 () Bool)

(assert (=> d!1590873 (=> (not res!2108569) (not e!3087209))))

(declare-fun lt!2036837 () List!57019)

(assert (=> d!1590873 (= res!2108569 (= (content!10122 lt!2036837) ((_ map or) (content!10122 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533))))) (content!10122 (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533))))))))))

(declare-fun e!3087208 () List!57019)

(assert (=> d!1590873 (= lt!2036837 e!3087208)))

(declare-fun c!842777 () Bool)

(assert (=> d!1590873 (= c!842777 ((_ is Nil!56895) (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533))))))))

(assert (=> d!1590873 (= (++!12426 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533)))) (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533))))) lt!2036837)))

(declare-fun b!4941065 () Bool)

(assert (=> b!4941065 (= e!3087208 (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun b!4941068 () Bool)

(assert (=> b!4941068 (= e!3087209 (or (not (= (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533)))) Nil!56895)) (= lt!2036837 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533)))))))))

(declare-fun b!4941067 () Bool)

(declare-fun res!2108568 () Bool)

(assert (=> b!4941067 (=> (not res!2108568) (not e!3087209))))

(assert (=> b!4941067 (= res!2108568 (= (size!37707 lt!2036837) (+ (size!37707 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533))))) (size!37707 (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533))))))))))

(declare-fun b!4941066 () Bool)

(assert (=> b!4941066 (= e!3087208 (Cons!56895 (h!63343 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533))))) (++!12426 (t!367527 (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533))))) (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533)))))))))

(assert (= (and d!1590873 c!842777) b!4941065))

(assert (= (and d!1590873 (not c!842777)) b!4941066))

(assert (= (and d!1590873 res!2108569) b!4941067))

(assert (= (and b!4941067 res!2108568) b!4941068))

(declare-fun m!5963746 () Bool)

(assert (=> d!1590873 m!5963746))

(assert (=> d!1590873 m!5963064))

(declare-fun m!5963748 () Bool)

(assert (=> d!1590873 m!5963748))

(assert (=> d!1590873 m!5963066))

(declare-fun m!5963750 () Bool)

(assert (=> d!1590873 m!5963750))

(declare-fun m!5963752 () Bool)

(assert (=> b!4941067 m!5963752))

(assert (=> b!4941067 m!5963064))

(declare-fun m!5963754 () Bool)

(assert (=> b!4941067 m!5963754))

(assert (=> b!4941067 m!5963066))

(declare-fun m!5963756 () Bool)

(assert (=> b!4941067 m!5963756))

(assert (=> b!4941066 m!5963066))

(declare-fun m!5963758 () Bool)

(assert (=> b!4941066 m!5963758))

(assert (=> b!4940456 d!1590873))

(declare-fun b!4941072 () Bool)

(declare-fun e!3087211 () List!57019)

(assert (=> b!4941072 (= e!3087211 (++!12426 (list!18097 (left!41504 (left!41504 (c!842516 (_2!34019 lt!2036533))))) (list!18097 (right!41834 (left!41504 (c!842516 (_2!34019 lt!2036533)))))))))

(declare-fun b!4941071 () Bool)

(assert (=> b!4941071 (= e!3087211 (list!18098 (xs!18288 (left!41504 (c!842516 (_2!34019 lt!2036533))))))))

(declare-fun d!1590875 () Bool)

(declare-fun c!842778 () Bool)

(assert (=> d!1590875 (= c!842778 ((_ is Empty!14964) (left!41504 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun e!3087210 () List!57019)

(assert (=> d!1590875 (= (list!18097 (left!41504 (c!842516 (_2!34019 lt!2036533)))) e!3087210)))

(declare-fun b!4941070 () Bool)

(assert (=> b!4941070 (= e!3087210 e!3087211)))

(declare-fun c!842779 () Bool)

(assert (=> b!4941070 (= c!842779 ((_ is Leaf!24879) (left!41504 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun b!4941069 () Bool)

(assert (=> b!4941069 (= e!3087210 Nil!56895)))

(assert (= (and d!1590875 c!842778) b!4941069))

(assert (= (and d!1590875 (not c!842778)) b!4941070))

(assert (= (and b!4941070 c!842779) b!4941071))

(assert (= (and b!4941070 (not c!842779)) b!4941072))

(declare-fun m!5963760 () Bool)

(assert (=> b!4941072 m!5963760))

(declare-fun m!5963762 () Bool)

(assert (=> b!4941072 m!5963762))

(assert (=> b!4941072 m!5963760))

(assert (=> b!4941072 m!5963762))

(declare-fun m!5963764 () Bool)

(assert (=> b!4941072 m!5963764))

(declare-fun m!5963766 () Bool)

(assert (=> b!4941071 m!5963766))

(assert (=> b!4940456 d!1590875))

(declare-fun b!4941076 () Bool)

(declare-fun e!3087213 () List!57019)

(assert (=> b!4941076 (= e!3087213 (++!12426 (list!18097 (left!41504 (right!41834 (c!842516 (_2!34019 lt!2036533))))) (list!18097 (right!41834 (right!41834 (c!842516 (_2!34019 lt!2036533)))))))))

(declare-fun b!4941075 () Bool)

(assert (=> b!4941075 (= e!3087213 (list!18098 (xs!18288 (right!41834 (c!842516 (_2!34019 lt!2036533))))))))

(declare-fun d!1590877 () Bool)

(declare-fun c!842780 () Bool)

(assert (=> d!1590877 (= c!842780 ((_ is Empty!14964) (right!41834 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun e!3087212 () List!57019)

(assert (=> d!1590877 (= (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036533)))) e!3087212)))

(declare-fun b!4941074 () Bool)

(assert (=> b!4941074 (= e!3087212 e!3087213)))

(declare-fun c!842781 () Bool)

(assert (=> b!4941074 (= c!842781 ((_ is Leaf!24879) (right!41834 (c!842516 (_2!34019 lt!2036533)))))))

(declare-fun b!4941073 () Bool)

(assert (=> b!4941073 (= e!3087212 Nil!56895)))

(assert (= (and d!1590877 c!842780) b!4941073))

(assert (= (and d!1590877 (not c!842780)) b!4941074))

(assert (= (and b!4941074 c!842781) b!4941075))

(assert (= (and b!4941074 (not c!842781)) b!4941076))

(declare-fun m!5963768 () Bool)

(assert (=> b!4941076 m!5963768))

(declare-fun m!5963770 () Bool)

(assert (=> b!4941076 m!5963770))

(assert (=> b!4941076 m!5963768))

(assert (=> b!4941076 m!5963770))

(declare-fun m!5963772 () Bool)

(assert (=> b!4941076 m!5963772))

(declare-fun m!5963774 () Bool)

(assert (=> b!4941075 m!5963774))

(assert (=> b!4940456 d!1590877))

(declare-fun d!1590879 () Bool)

(declare-fun lt!2036838 () Int)

(assert (=> d!1590879 (>= lt!2036838 0)))

(declare-fun e!3087214 () Int)

(assert (=> d!1590879 (= lt!2036838 e!3087214)))

(declare-fun c!842782 () Bool)

(assert (=> d!1590879 (= c!842782 ((_ is Nil!56895) lt!2036764))))

(assert (=> d!1590879 (= (size!37707 lt!2036764) lt!2036838)))

(declare-fun b!4941077 () Bool)

(assert (=> b!4941077 (= e!3087214 0)))

(declare-fun b!4941078 () Bool)

(assert (=> b!4941078 (= e!3087214 (+ 1 (size!37707 (t!367527 lt!2036764))))))

(assert (= (and d!1590879 c!842782) b!4941077))

(assert (= (and d!1590879 (not c!842782)) b!4941078))

(declare-fun m!5963776 () Bool)

(assert (=> b!4941078 m!5963776))

(assert (=> b!4940768 d!1590879))

(assert (=> b!4940768 d!1590597))

(assert (=> b!4940768 d!1590745))

(declare-fun b!4941079 () Bool)

(declare-fun e!3087215 () Bool)

(declare-fun e!3087217 () Bool)

(assert (=> b!4941079 (= e!3087215 e!3087217)))

(declare-fun res!2108571 () Bool)

(assert (=> b!4941079 (=> (not res!2108571) (not e!3087217))))

(assert (=> b!4941079 (= res!2108571 (not ((_ is Nil!56895) (tail!9725 (++!12426 testedP!110 testedSuffix!70)))))))

(declare-fun d!1590881 () Bool)

(declare-fun e!3087216 () Bool)

(assert (=> d!1590881 e!3087216))

(declare-fun res!2108573 () Bool)

(assert (=> d!1590881 (=> res!2108573 e!3087216)))

(declare-fun lt!2036839 () Bool)

(assert (=> d!1590881 (= res!2108573 (not lt!2036839))))

(assert (=> d!1590881 (= lt!2036839 e!3087215)))

(declare-fun res!2108572 () Bool)

(assert (=> d!1590881 (=> res!2108572 e!3087215)))

(assert (=> d!1590881 (= res!2108572 ((_ is Nil!56895) (tail!9725 testedP!110)))))

(assert (=> d!1590881 (= (isPrefix!5053 (tail!9725 testedP!110) (tail!9725 (++!12426 testedP!110 testedSuffix!70))) lt!2036839)))

(declare-fun b!4941082 () Bool)

(assert (=> b!4941082 (= e!3087216 (>= (size!37707 (tail!9725 (++!12426 testedP!110 testedSuffix!70))) (size!37707 (tail!9725 testedP!110))))))

(declare-fun b!4941080 () Bool)

(declare-fun res!2108570 () Bool)

(assert (=> b!4941080 (=> (not res!2108570) (not e!3087217))))

(assert (=> b!4941080 (= res!2108570 (= (head!10586 (tail!9725 testedP!110)) (head!10586 (tail!9725 (++!12426 testedP!110 testedSuffix!70)))))))

(declare-fun b!4941081 () Bool)

(assert (=> b!4941081 (= e!3087217 (isPrefix!5053 (tail!9725 (tail!9725 testedP!110)) (tail!9725 (tail!9725 (++!12426 testedP!110 testedSuffix!70)))))))

(assert (= (and d!1590881 (not res!2108572)) b!4941079))

(assert (= (and b!4941079 res!2108571) b!4941080))

(assert (= (and b!4941080 res!2108570) b!4941081))

(assert (= (and d!1590881 (not res!2108573)) b!4941082))

(assert (=> b!4941082 m!5963076))

(declare-fun m!5963778 () Bool)

(assert (=> b!4941082 m!5963778))

(assert (=> b!4941082 m!5962930))

(assert (=> b!4941082 m!5962974))

(assert (=> b!4941080 m!5962930))

(assert (=> b!4941080 m!5962976))

(assert (=> b!4941080 m!5963076))

(declare-fun m!5963780 () Bool)

(assert (=> b!4941080 m!5963780))

(assert (=> b!4941081 m!5962930))

(assert (=> b!4941081 m!5962980))

(assert (=> b!4941081 m!5963076))

(declare-fun m!5963782 () Bool)

(assert (=> b!4941081 m!5963782))

(assert (=> b!4941081 m!5962980))

(assert (=> b!4941081 m!5963782))

(declare-fun m!5963784 () Bool)

(assert (=> b!4941081 m!5963784))

(assert (=> b!4940459 d!1590881))

(assert (=> b!4940459 d!1590561))

(declare-fun d!1590883 () Bool)

(assert (=> d!1590883 (= (tail!9725 (++!12426 testedP!110 testedSuffix!70)) (t!367527 (++!12426 testedP!110 testedSuffix!70)))))

(assert (=> b!4940459 d!1590883))

(declare-fun d!1590885 () Bool)

(declare-fun e!3087219 () Bool)

(assert (=> d!1590885 e!3087219))

(declare-fun res!2108575 () Bool)

(assert (=> d!1590885 (=> (not res!2108575) (not e!3087219))))

(declare-fun lt!2036840 () List!57019)

(assert (=> d!1590885 (= res!2108575 (= (content!10122 lt!2036840) ((_ map or) (content!10122 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533))))) (content!10122 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun e!3087218 () List!57019)

(assert (=> d!1590885 (= lt!2036840 e!3087218)))

(declare-fun c!842783 () Bool)

(assert (=> d!1590885 (= c!842783 ((_ is Nil!56895) (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533))))))))

(assert (=> d!1590885 (= (++!12426 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533)))) (list!18095 (_2!34019 lt!2036533))) lt!2036840)))

(declare-fun b!4941083 () Bool)

(assert (=> b!4941083 (= e!3087218 (list!18095 (_2!34019 lt!2036533)))))

(declare-fun b!4941086 () Bool)

(assert (=> b!4941086 (= e!3087219 (or (not (= (list!18095 (_2!34019 lt!2036533)) Nil!56895)) (= lt!2036840 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533)))))))))

(declare-fun b!4941085 () Bool)

(declare-fun res!2108574 () Bool)

(assert (=> b!4941085 (=> (not res!2108574) (not e!3087219))))

(assert (=> b!4941085 (= res!2108574 (= (size!37707 lt!2036840) (+ (size!37707 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533))))) (size!37707 (list!18095 (_2!34019 lt!2036533))))))))

(declare-fun b!4941084 () Bool)

(assert (=> b!4941084 (= e!3087218 (Cons!56895 (h!63343 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533))))) (++!12426 (t!367527 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533))))) (list!18095 (_2!34019 lt!2036533)))))))

(assert (= (and d!1590885 c!842783) b!4941083))

(assert (= (and d!1590885 (not c!842783)) b!4941084))

(assert (= (and d!1590885 res!2108575) b!4941085))

(assert (= (and b!4941085 res!2108574) b!4941086))

(declare-fun m!5963786 () Bool)

(assert (=> d!1590885 m!5963786))

(assert (=> d!1590885 m!5963710))

(assert (=> d!1590885 m!5962726))

(assert (=> d!1590885 m!5962820))

(declare-fun m!5963788 () Bool)

(assert (=> b!4941085 m!5963788))

(declare-fun m!5963790 () Bool)

(assert (=> b!4941085 m!5963790))

(assert (=> b!4941085 m!5962726))

(assert (=> b!4941085 m!5962828))

(assert (=> b!4941084 m!5962726))

(declare-fun m!5963792 () Bool)

(assert (=> b!4941084 m!5963792))

(assert (=> b!4940418 d!1590885))

(declare-fun d!1590887 () Bool)

(declare-fun lt!2036841 () Int)

(assert (=> d!1590887 (>= lt!2036841 0)))

(declare-fun e!3087220 () Int)

(assert (=> d!1590887 (= lt!2036841 e!3087220)))

(declare-fun c!842784 () Bool)

(assert (=> d!1590887 (= c!842784 ((_ is Nil!56895) (list!18097 (c!842516 (_1!34019 lt!2036533)))))))

(assert (=> d!1590887 (= (size!37707 (list!18097 (c!842516 (_1!34019 lt!2036533)))) lt!2036841)))

(declare-fun b!4941087 () Bool)

(assert (=> b!4941087 (= e!3087220 0)))

(declare-fun b!4941088 () Bool)

(assert (=> b!4941088 (= e!3087220 (+ 1 (size!37707 (t!367527 (list!18097 (c!842516 (_1!34019 lt!2036533)))))))))

(assert (= (and d!1590887 c!842784) b!4941087))

(assert (= (and d!1590887 (not c!842784)) b!4941088))

(declare-fun m!5963794 () Bool)

(assert (=> b!4941088 m!5963794))

(assert (=> d!1590609 d!1590887))

(assert (=> d!1590609 d!1590569))

(declare-fun b!4941089 () Bool)

(declare-fun res!2108578 () Bool)

(declare-fun e!3087221 () Bool)

(assert (=> b!4941089 (=> (not res!2108578) (not e!3087221))))

(assert (=> b!4941089 (= res!2108578 (isBalanced!4130 (left!41504 (_1!34021 lt!2036726))))))

(declare-fun d!1590889 () Bool)

(declare-fun res!2108577 () Bool)

(declare-fun e!3087222 () Bool)

(assert (=> d!1590889 (=> res!2108577 e!3087222)))

(assert (=> d!1590889 (= res!2108577 (not ((_ is Node!14964) (_1!34021 lt!2036726))))))

(assert (=> d!1590889 (= (isBalanced!4130 (_1!34021 lt!2036726)) e!3087222)))

(declare-fun b!4941090 () Bool)

(declare-fun res!2108579 () Bool)

(assert (=> b!4941090 (=> (not res!2108579) (not e!3087221))))

(assert (=> b!4941090 (= res!2108579 (<= (- (height!1997 (left!41504 (_1!34021 lt!2036726))) (height!1997 (right!41834 (_1!34021 lt!2036726)))) 1))))

(declare-fun b!4941091 () Bool)

(declare-fun res!2108576 () Bool)

(assert (=> b!4941091 (=> (not res!2108576) (not e!3087221))))

(assert (=> b!4941091 (= res!2108576 (isBalanced!4130 (right!41834 (_1!34021 lt!2036726))))))

(declare-fun b!4941092 () Bool)

(assert (=> b!4941092 (= e!3087221 (not (isEmpty!30630 (right!41834 (_1!34021 lt!2036726)))))))

(declare-fun b!4941093 () Bool)

(assert (=> b!4941093 (= e!3087222 e!3087221)))

(declare-fun res!2108580 () Bool)

(assert (=> b!4941093 (=> (not res!2108580) (not e!3087221))))

(assert (=> b!4941093 (= res!2108580 (<= (- 1) (- (height!1997 (left!41504 (_1!34021 lt!2036726))) (height!1997 (right!41834 (_1!34021 lt!2036726))))))))

(declare-fun b!4941094 () Bool)

(declare-fun res!2108581 () Bool)

(assert (=> b!4941094 (=> (not res!2108581) (not e!3087221))))

(assert (=> b!4941094 (= res!2108581 (not (isEmpty!30630 (left!41504 (_1!34021 lt!2036726)))))))

(assert (= (and d!1590889 (not res!2108577)) b!4941093))

(assert (= (and b!4941093 res!2108580) b!4941090))

(assert (= (and b!4941090 res!2108579) b!4941089))

(assert (= (and b!4941089 res!2108578) b!4941091))

(assert (= (and b!4941091 res!2108576) b!4941094))

(assert (= (and b!4941094 res!2108581) b!4941092))

(declare-fun m!5963796 () Bool)

(assert (=> b!4941090 m!5963796))

(declare-fun m!5963798 () Bool)

(assert (=> b!4941090 m!5963798))

(declare-fun m!5963800 () Bool)

(assert (=> b!4941089 m!5963800))

(declare-fun m!5963802 () Bool)

(assert (=> b!4941092 m!5963802))

(declare-fun m!5963804 () Bool)

(assert (=> b!4941094 m!5963804))

(declare-fun m!5963806 () Bool)

(assert (=> b!4941091 m!5963806))

(assert (=> b!4941093 m!5963796))

(assert (=> b!4941093 m!5963798))

(assert (=> d!1590667 d!1590889))

(assert (=> d!1590667 d!1590657))

(declare-fun d!1590891 () Bool)

(declare-fun lt!2036842 () Int)

(assert (=> d!1590891 (>= lt!2036842 0)))

(declare-fun e!3087223 () Int)

(assert (=> d!1590891 (= lt!2036842 e!3087223)))

(declare-fun c!842785 () Bool)

(assert (=> d!1590891 (= c!842785 ((_ is Nil!56895) (t!367527 testedSuffix!70)))))

(assert (=> d!1590891 (= (size!37707 (t!367527 testedSuffix!70)) lt!2036842)))

(declare-fun b!4941095 () Bool)

(assert (=> b!4941095 (= e!3087223 0)))

(declare-fun b!4941096 () Bool)

(assert (=> b!4941096 (= e!3087223 (+ 1 (size!37707 (t!367527 (t!367527 testedSuffix!70)))))))

(assert (= (and d!1590891 c!842785) b!4941095))

(assert (= (and d!1590891 (not c!842785)) b!4941096))

(declare-fun m!5963808 () Bool)

(assert (=> b!4941096 m!5963808))

(assert (=> b!4940779 d!1590891))

(declare-fun d!1590893 () Bool)

(declare-fun lt!2036843 () Int)

(assert (=> d!1590893 (>= lt!2036843 0)))

(declare-fun e!3087224 () Int)

(assert (=> d!1590893 (= lt!2036843 e!3087224)))

(declare-fun c!842786 () Bool)

(assert (=> d!1590893 (= c!842786 ((_ is Nil!56895) (t!367527 lt!2036535)))))

(assert (=> d!1590893 (= (size!37707 (t!367527 lt!2036535)) lt!2036843)))

(declare-fun b!4941097 () Bool)

(assert (=> b!4941097 (= e!3087224 0)))

(declare-fun b!4941098 () Bool)

(assert (=> b!4941098 (= e!3087224 (+ 1 (size!37707 (t!367527 (t!367527 lt!2036535)))))))

(assert (= (and d!1590893 c!842786) b!4941097))

(assert (= (and d!1590893 (not c!842786)) b!4941098))

(declare-fun m!5963810 () Bool)

(assert (=> b!4941098 m!5963810))

(assert (=> b!4940385 d!1590893))

(declare-fun d!1590895 () Bool)

(declare-fun res!2108582 () Bool)

(declare-fun e!3087225 () Bool)

(assert (=> d!1590895 (=> (not res!2108582) (not e!3087225))))

(assert (=> d!1590895 (= res!2108582 (= (csize!30158 (right!41834 (c!842516 totalInput!685))) (+ (size!37710 (left!41504 (right!41834 (c!842516 totalInput!685)))) (size!37710 (right!41834 (right!41834 (c!842516 totalInput!685)))))))))

(assert (=> d!1590895 (= (inv!74002 (right!41834 (c!842516 totalInput!685))) e!3087225)))

(declare-fun b!4941099 () Bool)

(declare-fun res!2108583 () Bool)

(assert (=> b!4941099 (=> (not res!2108583) (not e!3087225))))

(assert (=> b!4941099 (= res!2108583 (and (not (= (left!41504 (right!41834 (c!842516 totalInput!685))) Empty!14964)) (not (= (right!41834 (right!41834 (c!842516 totalInput!685))) Empty!14964))))))

(declare-fun b!4941100 () Bool)

(declare-fun res!2108584 () Bool)

(assert (=> b!4941100 (=> (not res!2108584) (not e!3087225))))

(assert (=> b!4941100 (= res!2108584 (= (cheight!15175 (right!41834 (c!842516 totalInput!685))) (+ (max!0 (height!1997 (left!41504 (right!41834 (c!842516 totalInput!685)))) (height!1997 (right!41834 (right!41834 (c!842516 totalInput!685))))) 1)))))

(declare-fun b!4941101 () Bool)

(assert (=> b!4941101 (= e!3087225 (<= 0 (cheight!15175 (right!41834 (c!842516 totalInput!685)))))))

(assert (= (and d!1590895 res!2108582) b!4941099))

(assert (= (and b!4941099 res!2108583) b!4941100))

(assert (= (and b!4941100 res!2108584) b!4941101))

(declare-fun m!5963812 () Bool)

(assert (=> d!1590895 m!5963812))

(declare-fun m!5963814 () Bool)

(assert (=> d!1590895 m!5963814))

(assert (=> b!4941100 m!5963598))

(assert (=> b!4941100 m!5963600))

(assert (=> b!4941100 m!5963598))

(assert (=> b!4941100 m!5963600))

(declare-fun m!5963816 () Bool)

(assert (=> b!4941100 m!5963816))

(assert (=> b!4940442 d!1590895))

(declare-fun d!1590897 () Bool)

(declare-fun e!3087227 () Bool)

(assert (=> d!1590897 e!3087227))

(declare-fun res!2108586 () Bool)

(assert (=> d!1590897 (=> (not res!2108586) (not e!3087227))))

(declare-fun lt!2036844 () List!57019)

(assert (=> d!1590897 (= res!2108586 (= (content!10122 lt!2036844) ((_ map or) (content!10122 (t!367527 testedP!110)) (content!10122 lt!2036651))))))

(declare-fun e!3087226 () List!57019)

(assert (=> d!1590897 (= lt!2036844 e!3087226)))

(declare-fun c!842787 () Bool)

(assert (=> d!1590897 (= c!842787 ((_ is Nil!56895) (t!367527 testedP!110)))))

(assert (=> d!1590897 (= (++!12426 (t!367527 testedP!110) lt!2036651) lt!2036844)))

(declare-fun b!4941102 () Bool)

(assert (=> b!4941102 (= e!3087226 lt!2036651)))

(declare-fun b!4941105 () Bool)

(assert (=> b!4941105 (= e!3087227 (or (not (= lt!2036651 Nil!56895)) (= lt!2036844 (t!367527 testedP!110))))))

(declare-fun b!4941104 () Bool)

(declare-fun res!2108585 () Bool)

(assert (=> b!4941104 (=> (not res!2108585) (not e!3087227))))

(assert (=> b!4941104 (= res!2108585 (= (size!37707 lt!2036844) (+ (size!37707 (t!367527 testedP!110)) (size!37707 lt!2036651))))))

(declare-fun b!4941103 () Bool)

(assert (=> b!4941103 (= e!3087226 (Cons!56895 (h!63343 (t!367527 testedP!110)) (++!12426 (t!367527 (t!367527 testedP!110)) lt!2036651)))))

(assert (= (and d!1590897 c!842787) b!4941102))

(assert (= (and d!1590897 (not c!842787)) b!4941103))

(assert (= (and d!1590897 res!2108586) b!4941104))

(assert (= (and b!4941104 res!2108585) b!4941105))

(declare-fun m!5963818 () Bool)

(assert (=> d!1590897 m!5963818))

(assert (=> d!1590897 m!5963088))

(declare-fun m!5963820 () Bool)

(assert (=> d!1590897 m!5963820))

(declare-fun m!5963822 () Bool)

(assert (=> b!4941104 m!5963822))

(assert (=> b!4941104 m!5962864))

(declare-fun m!5963824 () Bool)

(assert (=> b!4941104 m!5963824))

(declare-fun m!5963826 () Bool)

(assert (=> b!4941103 m!5963826))

(assert (=> d!1590599 d!1590897))

(declare-fun d!1590899 () Bool)

(declare-fun lt!2036845 () Int)

(assert (=> d!1590899 (>= lt!2036845 0)))

(declare-fun e!3087228 () Int)

(assert (=> d!1590899 (= lt!2036845 e!3087228)))

(declare-fun c!842788 () Bool)

(assert (=> d!1590899 (= c!842788 ((_ is Nil!56895) (tail!9725 lt!2036530)))))

(assert (=> d!1590899 (= (size!37707 (tail!9725 lt!2036530)) lt!2036845)))

(declare-fun b!4941106 () Bool)

(assert (=> b!4941106 (= e!3087228 0)))

(declare-fun b!4941107 () Bool)

(assert (=> b!4941107 (= e!3087228 (+ 1 (size!37707 (t!367527 (tail!9725 lt!2036530)))))))

(assert (= (and d!1590899 c!842788) b!4941106))

(assert (= (and d!1590899 (not c!842788)) b!4941107))

(declare-fun m!5963828 () Bool)

(assert (=> b!4941107 m!5963828))

(assert (=> d!1590599 d!1590899))

(assert (=> d!1590599 d!1590597))

(assert (=> b!4940540 d!1590817))

(assert (=> b!4940540 d!1590819))

(declare-fun d!1590901 () Bool)

(declare-fun lt!2036846 () Bool)

(assert (=> d!1590901 (= lt!2036846 (isEmpty!30632 (list!18097 (left!41504 (c!842516 totalInput!685)))))))

(assert (=> d!1590901 (= lt!2036846 (= (size!37710 (left!41504 (c!842516 totalInput!685))) 0))))

(assert (=> d!1590901 (= (isEmpty!30630 (left!41504 (c!842516 totalInput!685))) lt!2036846)))

(declare-fun bs!1181243 () Bool)

(assert (= bs!1181243 d!1590901))

(assert (=> bs!1181243 m!5963048))

(assert (=> bs!1181243 m!5963048))

(declare-fun m!5963830 () Bool)

(assert (=> bs!1181243 m!5963830))

(assert (=> bs!1181243 m!5962988))

(assert (=> b!4940551 d!1590901))

(declare-fun d!1590903 () Bool)

(declare-fun lt!2036847 () Bool)

(assert (=> d!1590903 (= lt!2036847 (isEmpty!30632 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036588))))))))

(assert (=> d!1590903 (= lt!2036847 (= (size!37710 (left!41504 (c!842516 (_1!34019 lt!2036588)))) 0))))

(assert (=> d!1590903 (= (isEmpty!30630 (left!41504 (c!842516 (_1!34019 lt!2036588)))) lt!2036847)))

(declare-fun bs!1181244 () Bool)

(assert (= bs!1181244 d!1590903))

(declare-fun m!5963832 () Bool)

(assert (=> bs!1181244 m!5963832))

(assert (=> bs!1181244 m!5963832))

(declare-fun m!5963834 () Bool)

(assert (=> bs!1181244 m!5963834))

(declare-fun m!5963836 () Bool)

(assert (=> bs!1181244 m!5963836))

(assert (=> b!4940559 d!1590903))

(declare-fun d!1590905 () Bool)

(declare-fun e!3087230 () Bool)

(assert (=> d!1590905 e!3087230))

(declare-fun res!2108588 () Bool)

(assert (=> d!1590905 (=> (not res!2108588) (not e!3087230))))

(declare-fun lt!2036848 () List!57019)

(assert (=> d!1590905 (= res!2108588 (= (content!10122 lt!2036848) ((_ map or) (content!10122 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533))))) (content!10122 (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533))))))))))

(declare-fun e!3087229 () List!57019)

(assert (=> d!1590905 (= lt!2036848 e!3087229)))

(declare-fun c!842789 () Bool)

(assert (=> d!1590905 (= c!842789 ((_ is Nil!56895) (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533))))))))

(assert (=> d!1590905 (= (++!12426 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533)))) (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533))))) lt!2036848)))

(declare-fun b!4941108 () Bool)

(assert (=> b!4941108 (= e!3087229 (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun b!4941111 () Bool)

(assert (=> b!4941111 (= e!3087230 (or (not (= (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533)))) Nil!56895)) (= lt!2036848 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533)))))))))

(declare-fun b!4941110 () Bool)

(declare-fun res!2108587 () Bool)

(assert (=> b!4941110 (=> (not res!2108587) (not e!3087230))))

(assert (=> b!4941110 (= res!2108587 (= (size!37707 lt!2036848) (+ (size!37707 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533))))) (size!37707 (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533))))))))))

(declare-fun b!4941109 () Bool)

(assert (=> b!4941109 (= e!3087229 (Cons!56895 (h!63343 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533))))) (++!12426 (t!367527 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533))))) (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533)))))))))

(assert (= (and d!1590905 c!842789) b!4941108))

(assert (= (and d!1590905 (not c!842789)) b!4941109))

(assert (= (and d!1590905 res!2108588) b!4941110))

(assert (= (and b!4941110 res!2108587) b!4941111))

(declare-fun m!5963838 () Bool)

(assert (=> d!1590905 m!5963838))

(assert (=> d!1590905 m!5962998))

(declare-fun m!5963840 () Bool)

(assert (=> d!1590905 m!5963840))

(assert (=> d!1590905 m!5963000))

(declare-fun m!5963842 () Bool)

(assert (=> d!1590905 m!5963842))

(declare-fun m!5963844 () Bool)

(assert (=> b!4941110 m!5963844))

(assert (=> b!4941110 m!5962998))

(declare-fun m!5963846 () Bool)

(assert (=> b!4941110 m!5963846))

(assert (=> b!4941110 m!5963000))

(declare-fun m!5963848 () Bool)

(assert (=> b!4941110 m!5963848))

(assert (=> b!4941109 m!5963000))

(declare-fun m!5963850 () Bool)

(assert (=> b!4941109 m!5963850))

(assert (=> b!4940406 d!1590905))

(declare-fun b!4941115 () Bool)

(declare-fun e!3087232 () List!57019)

(assert (=> b!4941115 (= e!3087232 (++!12426 (list!18097 (left!41504 (left!41504 (c!842516 (_1!34019 lt!2036533))))) (list!18097 (right!41834 (left!41504 (c!842516 (_1!34019 lt!2036533)))))))))

(declare-fun b!4941114 () Bool)

(assert (=> b!4941114 (= e!3087232 (list!18098 (xs!18288 (left!41504 (c!842516 (_1!34019 lt!2036533))))))))

(declare-fun d!1590907 () Bool)

(declare-fun c!842790 () Bool)

(assert (=> d!1590907 (= c!842790 ((_ is Empty!14964) (left!41504 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun e!3087231 () List!57019)

(assert (=> d!1590907 (= (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036533)))) e!3087231)))

(declare-fun b!4941113 () Bool)

(assert (=> b!4941113 (= e!3087231 e!3087232)))

(declare-fun c!842791 () Bool)

(assert (=> b!4941113 (= c!842791 ((_ is Leaf!24879) (left!41504 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun b!4941112 () Bool)

(assert (=> b!4941112 (= e!3087231 Nil!56895)))

(assert (= (and d!1590907 c!842790) b!4941112))

(assert (= (and d!1590907 (not c!842790)) b!4941113))

(assert (= (and b!4941113 c!842791) b!4941114))

(assert (= (and b!4941113 (not c!842791)) b!4941115))

(declare-fun m!5963852 () Bool)

(assert (=> b!4941115 m!5963852))

(declare-fun m!5963854 () Bool)

(assert (=> b!4941115 m!5963854))

(assert (=> b!4941115 m!5963852))

(assert (=> b!4941115 m!5963854))

(declare-fun m!5963856 () Bool)

(assert (=> b!4941115 m!5963856))

(declare-fun m!5963858 () Bool)

(assert (=> b!4941114 m!5963858))

(assert (=> b!4940406 d!1590907))

(declare-fun b!4941119 () Bool)

(declare-fun e!3087234 () List!57019)

(assert (=> b!4941119 (= e!3087234 (++!12426 (list!18097 (left!41504 (right!41834 (c!842516 (_1!34019 lt!2036533))))) (list!18097 (right!41834 (right!41834 (c!842516 (_1!34019 lt!2036533)))))))))

(declare-fun b!4941118 () Bool)

(assert (=> b!4941118 (= e!3087234 (list!18098 (xs!18288 (right!41834 (c!842516 (_1!34019 lt!2036533))))))))

(declare-fun d!1590909 () Bool)

(declare-fun c!842792 () Bool)

(assert (=> d!1590909 (= c!842792 ((_ is Empty!14964) (right!41834 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun e!3087233 () List!57019)

(assert (=> d!1590909 (= (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036533)))) e!3087233)))

(declare-fun b!4941117 () Bool)

(assert (=> b!4941117 (= e!3087233 e!3087234)))

(declare-fun c!842793 () Bool)

(assert (=> b!4941117 (= c!842793 ((_ is Leaf!24879) (right!41834 (c!842516 (_1!34019 lt!2036533)))))))

(declare-fun b!4941116 () Bool)

(assert (=> b!4941116 (= e!3087233 Nil!56895)))

(assert (= (and d!1590909 c!842792) b!4941116))

(assert (= (and d!1590909 (not c!842792)) b!4941117))

(assert (= (and b!4941117 c!842793) b!4941118))

(assert (= (and b!4941117 (not c!842793)) b!4941119))

(declare-fun m!5963860 () Bool)

(assert (=> b!4941119 m!5963860))

(declare-fun m!5963862 () Bool)

(assert (=> b!4941119 m!5963862))

(assert (=> b!4941119 m!5963860))

(assert (=> b!4941119 m!5963862))

(declare-fun m!5963864 () Bool)

(assert (=> b!4941119 m!5963864))

(declare-fun m!5963866 () Bool)

(assert (=> b!4941118 m!5963866))

(assert (=> b!4940406 d!1590909))

(assert (=> d!1590567 d!1590839))

(declare-fun d!1590911 () Bool)

(declare-fun lt!2036849 () Int)

(assert (=> d!1590911 (= lt!2036849 (size!37707 (list!18097 (right!41834 (c!842516 totalInput!685)))))))

(assert (=> d!1590911 (= lt!2036849 (ite ((_ is Empty!14964) (right!41834 (c!842516 totalInput!685))) 0 (ite ((_ is Leaf!24879) (right!41834 (c!842516 totalInput!685))) (csize!30159 (right!41834 (c!842516 totalInput!685))) (csize!30158 (right!41834 (c!842516 totalInput!685))))))))

(assert (=> d!1590911 (= (size!37710 (right!41834 (c!842516 totalInput!685))) lt!2036849)))

(declare-fun bs!1181245 () Bool)

(assert (= bs!1181245 d!1590911))

(assert (=> bs!1181245 m!5963050))

(assert (=> bs!1181245 m!5963050))

(assert (=> bs!1181245 m!5963738))

(assert (=> d!1590567 d!1590911))

(declare-fun d!1590913 () Bool)

(assert (=> d!1590913 (= (inv!74004 (xs!18288 (left!41504 (c!842516 totalInput!685)))) (<= (size!37707 (innerList!15052 (xs!18288 (left!41504 (c!842516 totalInput!685))))) 2147483647))))

(declare-fun bs!1181246 () Bool)

(assert (= bs!1181246 d!1590913))

(declare-fun m!5963868 () Bool)

(assert (=> bs!1181246 m!5963868))

(assert (=> b!4940804 d!1590913))

(declare-fun bs!1181247 () Bool)

(declare-fun d!1590915 () Bool)

(assert (= bs!1181247 (and d!1590915 b!4940316)))

(declare-fun lambda!246249 () Int)

(assert (=> bs!1181247 (not (= lambda!246249 lambda!246213))))

(declare-fun bs!1181248 () Bool)

(assert (= bs!1181248 (and d!1590915 d!1590629)))

(assert (=> bs!1181248 (= (= lambda!246224 lambda!246212) (= lambda!246249 lambda!246224))))

(declare-fun bs!1181249 () Bool)

(assert (= bs!1181249 (and d!1590915 b!4940317)))

(assert (=> bs!1181249 (not (= lambda!246249 lambda!246214))))

(declare-fun bs!1181250 () Bool)

(assert (= bs!1181250 (and d!1590915 d!1590659)))

(assert (=> bs!1181250 (= (= lambda!246224 (ite c!842558 lambda!246213 lambda!246214)) (= lambda!246249 lambda!246231))))

(declare-fun bs!1181251 () Bool)

(assert (= bs!1181251 (and d!1590915 d!1590641)))

(assert (=> bs!1181251 (= (= lambda!246224 lambda!246212) (= lambda!246249 lambda!246227))))

(declare-fun bs!1181252 () Bool)

(assert (= bs!1181252 (and d!1590915 d!1590623)))

(assert (=> bs!1181252 (not (= lambda!246249 lambda!246221))))

(declare-fun bs!1181253 () Bool)

(assert (= bs!1181253 (and d!1590915 d!1590531)))

(assert (=> bs!1181253 (not (= lambda!246249 lambda!246212))))

(assert (=> d!1590915 true))

(assert (=> d!1590915 (< (dynLambda!23027 order!25995 lambda!246224) (dynLambda!23027 order!25995 lambda!246249))))

(assert (=> d!1590915 (= (exists!1307 lt!2036628 lambda!246224) (not (forall!13223 lt!2036628 lambda!246249)))))

(declare-fun bs!1181254 () Bool)

(assert (= bs!1181254 d!1590915))

(declare-fun m!5963870 () Bool)

(assert (=> bs!1181254 m!5963870))

(assert (=> d!1590629 d!1590915))

(declare-fun bs!1181255 () Bool)

(declare-fun d!1590917 () Bool)

(assert (= bs!1181255 (and d!1590917 d!1590915)))

(declare-fun lambda!246252 () Int)

(assert (=> bs!1181255 (= (= lambda!246212 lambda!246224) (= lambda!246252 lambda!246249))))

(declare-fun bs!1181256 () Bool)

(assert (= bs!1181256 (and d!1590917 b!4940316)))

(assert (=> bs!1181256 (not (= lambda!246252 lambda!246213))))

(declare-fun bs!1181257 () Bool)

(assert (= bs!1181257 (and d!1590917 d!1590629)))

(assert (=> bs!1181257 (= lambda!246252 lambda!246224)))

(declare-fun bs!1181258 () Bool)

(assert (= bs!1181258 (and d!1590917 b!4940317)))

(assert (=> bs!1181258 (not (= lambda!246252 lambda!246214))))

(declare-fun bs!1181259 () Bool)

(assert (= bs!1181259 (and d!1590917 d!1590659)))

(assert (=> bs!1181259 (= (= lambda!246212 (ite c!842558 lambda!246213 lambda!246214)) (= lambda!246252 lambda!246231))))

(declare-fun bs!1181260 () Bool)

(assert (= bs!1181260 (and d!1590917 d!1590641)))

(assert (=> bs!1181260 (= lambda!246252 lambda!246227)))

(declare-fun bs!1181261 () Bool)

(assert (= bs!1181261 (and d!1590917 d!1590623)))

(assert (=> bs!1181261 (not (= lambda!246252 lambda!246221))))

(declare-fun bs!1181262 () Bool)

(assert (= bs!1181262 (and d!1590917 d!1590531)))

(assert (=> bs!1181262 (not (= lambda!246252 lambda!246212))))

(assert (=> d!1590917 true))

(assert (=> d!1590917 (< (dynLambda!23027 order!25995 lambda!246212) (dynLambda!23027 order!25995 lambda!246252))))

(assert (=> d!1590917 (exists!1307 lt!2036628 lambda!246252)))

(assert (=> d!1590917 true))

(declare-fun _$97!161 () Unit!147645)

(assert (=> d!1590917 (= (choose!36378 lt!2036628 lambda!246212) _$97!161)))

(declare-fun bs!1181263 () Bool)

(assert (= bs!1181263 d!1590917))

(declare-fun m!5963872 () Bool)

(assert (=> bs!1181263 m!5963872))

(assert (=> d!1590629 d!1590917))

(declare-fun d!1590919 () Bool)

(declare-fun res!2108593 () Bool)

(declare-fun e!3087241 () Bool)

(assert (=> d!1590919 (=> res!2108593 e!3087241)))

(assert (=> d!1590919 (= res!2108593 ((_ is Nil!56898) lt!2036628))))

(assert (=> d!1590919 (= (forall!13223 lt!2036628 lambda!246212) e!3087241)))

(declare-fun b!4941124 () Bool)

(declare-fun e!3087242 () Bool)

(assert (=> b!4941124 (= e!3087241 e!3087242)))

(declare-fun res!2108594 () Bool)

(assert (=> b!4941124 (=> (not res!2108594) (not e!3087242))))

(declare-fun dynLambda!23030 (Int Context!6190) Bool)

(assert (=> b!4941124 (= res!2108594 (dynLambda!23030 lambda!246212 (h!63346 lt!2036628)))))

(declare-fun b!4941125 () Bool)

(assert (=> b!4941125 (= e!3087242 (forall!13223 (t!367530 lt!2036628) lambda!246212))))

(assert (= (and d!1590919 (not res!2108593)) b!4941124))

(assert (= (and b!4941124 res!2108594) b!4941125))

(declare-fun b_lambda!196355 () Bool)

(assert (=> (not b_lambda!196355) (not b!4941124)))

(declare-fun m!5963874 () Bool)

(assert (=> b!4941124 m!5963874))

(declare-fun m!5963876 () Bool)

(assert (=> b!4941125 m!5963876))

(assert (=> d!1590629 d!1590919))

(declare-fun d!1590921 () Bool)

(declare-fun lt!2036852 () IArray!29989)

(assert (=> d!1590921 (= lt!2036852 (IArray!29990 (slice!790 (list!18098 (xs!18288 (c!842516 totalInput!685))) testedPSize!70 (csize!30159 (c!842516 totalInput!685)))))))

(declare-fun choose!36387 (IArray!29989 Int Int) IArray!29989)

(assert (=> d!1590921 (= lt!2036852 (choose!36387 (xs!18288 (c!842516 totalInput!685)) testedPSize!70 (csize!30159 (c!842516 totalInput!685))))))

(declare-fun e!3087245 () Bool)

(assert (=> d!1590921 e!3087245))

(declare-fun res!2108597 () Bool)

(assert (=> d!1590921 (=> (not res!2108597) (not e!3087245))))

(assert (=> d!1590921 (= res!2108597 (and (<= 0 testedPSize!70) (<= testedPSize!70 (csize!30159 (c!842516 totalInput!685)))))))

(assert (=> d!1590921 (= (slice!791 (xs!18288 (c!842516 totalInput!685)) testedPSize!70 (csize!30159 (c!842516 totalInput!685))) lt!2036852)))

(declare-fun b!4941128 () Bool)

(declare-fun size!37711 (IArray!29989) Int)

(assert (=> b!4941128 (= e!3087245 (<= (csize!30159 (c!842516 totalInput!685)) (size!37711 (xs!18288 (c!842516 totalInput!685)))))))

(assert (= (and d!1590921 res!2108597) b!4941128))

(assert (=> d!1590921 m!5963026))

(assert (=> d!1590921 m!5963026))

(declare-fun m!5963878 () Bool)

(assert (=> d!1590921 m!5963878))

(declare-fun m!5963880 () Bool)

(assert (=> d!1590921 m!5963880))

(declare-fun m!5963882 () Bool)

(assert (=> b!4941128 m!5963882))

(assert (=> b!4940698 d!1590921))

(declare-fun b!4941147 () Bool)

(declare-fun e!3087257 () Bool)

(declare-fun lt!2036855 () List!57019)

(declare-fun e!3087256 () Int)

(assert (=> b!4941147 (= e!3087257 (= (size!37707 lt!2036855) e!3087256))))

(declare-fun c!842803 () Bool)

(assert (=> b!4941147 (= c!842803 (<= testedPSize!70 0))))

(declare-fun b!4941148 () Bool)

(declare-fun call!344764 () Int)

(assert (=> b!4941148 (= e!3087256 call!344764)))

(declare-fun b!4941150 () Bool)

(declare-fun e!3087259 () List!57019)

(assert (=> b!4941150 (= e!3087259 lt!2036724)))

(declare-fun b!4941151 () Bool)

(declare-fun e!3087258 () Int)

(assert (=> b!4941151 (= e!3087258 (- call!344764 testedPSize!70))))

(declare-fun b!4941152 () Bool)

(declare-fun e!3087260 () List!57019)

(assert (=> b!4941152 (= e!3087260 Nil!56895)))

(declare-fun b!4941153 () Bool)

(assert (=> b!4941153 (= e!3087258 0)))

(declare-fun bm!344759 () Bool)

(assert (=> bm!344759 (= call!344764 (size!37707 lt!2036724))))

(declare-fun d!1590923 () Bool)

(assert (=> d!1590923 e!3087257))

(declare-fun res!2108600 () Bool)

(assert (=> d!1590923 (=> (not res!2108600) (not e!3087257))))

(assert (=> d!1590923 (= res!2108600 (= ((_ map implies) (content!10122 lt!2036855) (content!10122 lt!2036724)) ((as const (InoxSet C!27140)) true)))))

(assert (=> d!1590923 (= lt!2036855 e!3087260)))

(declare-fun c!842805 () Bool)

(assert (=> d!1590923 (= c!842805 ((_ is Nil!56895) lt!2036724))))

(assert (=> d!1590923 (= (drop!2279 lt!2036724 testedPSize!70) lt!2036855)))

(declare-fun b!4941149 () Bool)

(assert (=> b!4941149 (= e!3087256 e!3087258)))

(declare-fun c!842804 () Bool)

(assert (=> b!4941149 (= c!842804 (>= testedPSize!70 call!344764))))

(declare-fun b!4941154 () Bool)

(assert (=> b!4941154 (= e!3087260 e!3087259)))

(declare-fun c!842802 () Bool)

(assert (=> b!4941154 (= c!842802 (<= testedPSize!70 0))))

(declare-fun b!4941155 () Bool)

(assert (=> b!4941155 (= e!3087259 (drop!2279 (t!367527 lt!2036724) (- testedPSize!70 1)))))

(assert (= (and d!1590923 c!842805) b!4941152))

(assert (= (and d!1590923 (not c!842805)) b!4941154))

(assert (= (and b!4941154 c!842802) b!4941150))

(assert (= (and b!4941154 (not c!842802)) b!4941155))

(assert (= (and d!1590923 res!2108600) b!4941147))

(assert (= (and b!4941147 c!842803) b!4941148))

(assert (= (and b!4941147 (not c!842803)) b!4941149))

(assert (= (and b!4941149 c!842804) b!4941153))

(assert (= (and b!4941149 (not c!842804)) b!4941151))

(assert (= (or b!4941148 b!4941149 b!4941151) bm!344759))

(declare-fun m!5963884 () Bool)

(assert (=> b!4941147 m!5963884))

(declare-fun m!5963886 () Bool)

(assert (=> bm!344759 m!5963886))

(declare-fun m!5963888 () Bool)

(assert (=> d!1590923 m!5963888))

(declare-fun m!5963890 () Bool)

(assert (=> d!1590923 m!5963890))

(declare-fun m!5963892 () Bool)

(assert (=> b!4941155 m!5963892))

(assert (=> b!4940698 d!1590923))

(declare-fun d!1590925 () Bool)

(assert (=> d!1590925 (= (slice!790 lt!2036724 testedPSize!70 call!344724) (take!587 (drop!2279 lt!2036724 testedPSize!70) (- call!344724 testedPSize!70)))))

(declare-fun bs!1181264 () Bool)

(assert (= bs!1181264 d!1590925))

(assert (=> bs!1181264 m!5963354))

(assert (=> bs!1181264 m!5963354))

(declare-fun m!5963894 () Bool)

(assert (=> bs!1181264 m!5963894))

(assert (=> b!4940698 d!1590925))

(declare-fun d!1590927 () Bool)

(assert (=> d!1590927 (= (drop!2279 lt!2036724 testedPSize!70) (slice!790 lt!2036724 testedPSize!70 (size!37707 lt!2036724)))))

(declare-fun lt!2036858 () Unit!147645)

(declare-fun choose!36388 (List!57019 Int) Unit!147645)

(assert (=> d!1590927 (= lt!2036858 (choose!36388 lt!2036724 testedPSize!70))))

(declare-fun e!3087263 () Bool)

(assert (=> d!1590927 e!3087263))

(declare-fun res!2108603 () Bool)

(assert (=> d!1590927 (=> (not res!2108603) (not e!3087263))))

(assert (=> d!1590927 (= res!2108603 (<= 0 testedPSize!70))))

(assert (=> d!1590927 (= (dropLemma!37 lt!2036724 testedPSize!70) lt!2036858)))

(declare-fun b!4941158 () Bool)

(assert (=> b!4941158 (= e!3087263 (<= testedPSize!70 (size!37707 lt!2036724)))))

(assert (= (and d!1590927 res!2108603) b!4941158))

(assert (=> d!1590927 m!5963354))

(assert (=> d!1590927 m!5963886))

(assert (=> d!1590927 m!5963886))

(declare-fun m!5963896 () Bool)

(assert (=> d!1590927 m!5963896))

(declare-fun m!5963898 () Bool)

(assert (=> d!1590927 m!5963898))

(assert (=> b!4941158 m!5963886))

(assert (=> b!4940698 d!1590927))

(declare-fun d!1590929 () Bool)

(assert (=> d!1590929 (= (list!18098 (xs!18288 (c!842516 totalInput!685))) (innerList!15052 (xs!18288 (c!842516 totalInput!685))))))

(assert (=> b!4940698 d!1590929))

(declare-fun d!1590931 () Bool)

(declare-fun lt!2036859 () IArray!29989)

(assert (=> d!1590931 (= lt!2036859 (IArray!29990 (slice!790 (list!18098 (xs!18288 (c!842516 totalInput!685))) 0 testedPSize!70)))))

(assert (=> d!1590931 (= lt!2036859 (choose!36387 (xs!18288 (c!842516 totalInput!685)) 0 testedPSize!70))))

(declare-fun e!3087264 () Bool)

(assert (=> d!1590931 e!3087264))

(declare-fun res!2108604 () Bool)

(assert (=> d!1590931 (=> (not res!2108604) (not e!3087264))))

(assert (=> d!1590931 (= res!2108604 (and (<= 0 0) (<= 0 testedPSize!70)))))

(assert (=> d!1590931 (= (slice!791 (xs!18288 (c!842516 totalInput!685)) 0 testedPSize!70) lt!2036859)))

(declare-fun b!4941159 () Bool)

(assert (=> b!4941159 (= e!3087264 (<= testedPSize!70 (size!37711 (xs!18288 (c!842516 totalInput!685)))))))

(assert (= (and d!1590931 res!2108604) b!4941159))

(assert (=> d!1590931 m!5963026))

(assert (=> d!1590931 m!5963026))

(declare-fun m!5963900 () Bool)

(assert (=> d!1590931 m!5963900))

(declare-fun m!5963902 () Bool)

(assert (=> d!1590931 m!5963902))

(assert (=> b!4941159 m!5963882))

(assert (=> b!4940698 d!1590931))

(declare-fun d!1590933 () Bool)

(declare-fun lt!2036860 () Int)

(assert (=> d!1590933 (>= lt!2036860 0)))

(declare-fun e!3087265 () Int)

(assert (=> d!1590933 (= lt!2036860 e!3087265)))

(declare-fun c!842806 () Bool)

(assert (=> d!1590933 (= c!842806 ((_ is Nil!56895) (t!367527 (t!367527 testedP!110))))))

(assert (=> d!1590933 (= (size!37707 (t!367527 (t!367527 testedP!110))) lt!2036860)))

(declare-fun b!4941160 () Bool)

(assert (=> b!4941160 (= e!3087265 0)))

(declare-fun b!4941161 () Bool)

(assert (=> b!4941161 (= e!3087265 (+ 1 (size!37707 (t!367527 (t!367527 (t!367527 testedP!110))))))))

(assert (= (and d!1590933 c!842806) b!4941160))

(assert (= (and d!1590933 (not c!842806)) b!4941161))

(declare-fun m!5963904 () Bool)

(assert (=> b!4941161 m!5963904))

(assert (=> b!4940450 d!1590933))

(declare-fun b!4941162 () Bool)

(declare-fun res!2108607 () Bool)

(declare-fun e!3087266 () Bool)

(assert (=> b!4941162 (=> (not res!2108607) (not e!3087266))))

(assert (=> b!4941162 (= res!2108607 (isBalanced!4130 (left!41504 (left!41504 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun d!1590935 () Bool)

(declare-fun res!2108606 () Bool)

(declare-fun e!3087267 () Bool)

(assert (=> d!1590935 (=> res!2108606 e!3087267)))

(assert (=> d!1590935 (= res!2108606 (not ((_ is Node!14964) (left!41504 (c!842516 (_2!34019 lt!2036588))))))))

(assert (=> d!1590935 (= (isBalanced!4130 (left!41504 (c!842516 (_2!34019 lt!2036588)))) e!3087267)))

(declare-fun b!4941163 () Bool)

(declare-fun res!2108608 () Bool)

(assert (=> b!4941163 (=> (not res!2108608) (not e!3087266))))

(assert (=> b!4941163 (= res!2108608 (<= (- (height!1997 (left!41504 (left!41504 (c!842516 (_2!34019 lt!2036588))))) (height!1997 (right!41834 (left!41504 (c!842516 (_2!34019 lt!2036588)))))) 1))))

(declare-fun b!4941164 () Bool)

(declare-fun res!2108605 () Bool)

(assert (=> b!4941164 (=> (not res!2108605) (not e!3087266))))

(assert (=> b!4941164 (= res!2108605 (isBalanced!4130 (right!41834 (left!41504 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun b!4941165 () Bool)

(assert (=> b!4941165 (= e!3087266 (not (isEmpty!30630 (right!41834 (left!41504 (c!842516 (_2!34019 lt!2036588)))))))))

(declare-fun b!4941166 () Bool)

(assert (=> b!4941166 (= e!3087267 e!3087266)))

(declare-fun res!2108609 () Bool)

(assert (=> b!4941166 (=> (not res!2108609) (not e!3087266))))

(assert (=> b!4941166 (= res!2108609 (<= (- 1) (- (height!1997 (left!41504 (left!41504 (c!842516 (_2!34019 lt!2036588))))) (height!1997 (right!41834 (left!41504 (c!842516 (_2!34019 lt!2036588))))))))))

(declare-fun b!4941167 () Bool)

(declare-fun res!2108610 () Bool)

(assert (=> b!4941167 (=> (not res!2108610) (not e!3087266))))

(assert (=> b!4941167 (= res!2108610 (not (isEmpty!30630 (left!41504 (left!41504 (c!842516 (_2!34019 lt!2036588)))))))))

(assert (= (and d!1590935 (not res!2108606)) b!4941166))

(assert (= (and b!4941166 res!2108609) b!4941163))

(assert (= (and b!4941163 res!2108608) b!4941162))

(assert (= (and b!4941162 res!2108607) b!4941164))

(assert (= (and b!4941164 res!2108605) b!4941167))

(assert (= (and b!4941167 res!2108610) b!4941165))

(declare-fun m!5963906 () Bool)

(assert (=> b!4941163 m!5963906))

(declare-fun m!5963908 () Bool)

(assert (=> b!4941163 m!5963908))

(declare-fun m!5963910 () Bool)

(assert (=> b!4941162 m!5963910))

(declare-fun m!5963912 () Bool)

(assert (=> b!4941165 m!5963912))

(declare-fun m!5963914 () Bool)

(assert (=> b!4941167 m!5963914))

(declare-fun m!5963916 () Bool)

(assert (=> b!4941164 m!5963916))

(assert (=> b!4941166 m!5963906))

(assert (=> b!4941166 m!5963908))

(assert (=> b!4940536 d!1590935))

(declare-fun d!1590937 () Bool)

(declare-fun lt!2036861 () Int)

(assert (=> d!1590937 (>= lt!2036861 0)))

(declare-fun e!3087268 () Int)

(assert (=> d!1590937 (= lt!2036861 e!3087268)))

(declare-fun c!842807 () Bool)

(assert (=> d!1590937 (= c!842807 ((_ is Nil!56895) (t!367527 (list!18095 (_1!34019 lt!2036533)))))))

(assert (=> d!1590937 (= (size!37707 (t!367527 (list!18095 (_1!34019 lt!2036533)))) lt!2036861)))

(declare-fun b!4941168 () Bool)

(assert (=> b!4941168 (= e!3087268 0)))

(declare-fun b!4941169 () Bool)

(assert (=> b!4941169 (= e!3087268 (+ 1 (size!37707 (t!367527 (t!367527 (list!18095 (_1!34019 lt!2036533)))))))))

(assert (= (and d!1590937 c!842807) b!4941168))

(assert (= (and d!1590937 (not c!842807)) b!4941169))

(assert (=> b!4941169 m!5963790))

(assert (=> b!4940430 d!1590937))

(declare-fun b!4941173 () Bool)

(declare-fun e!3087270 () List!57019)

(assert (=> b!4941173 (= e!3087270 (++!12426 (list!18097 (left!41504 (c!842516 (_1!34019 lt!2036588)))) (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun b!4941172 () Bool)

(assert (=> b!4941172 (= e!3087270 (list!18098 (xs!18288 (c!842516 (_1!34019 lt!2036588)))))))

(declare-fun d!1590939 () Bool)

(declare-fun c!842808 () Bool)

(assert (=> d!1590939 (= c!842808 ((_ is Empty!14964) (c!842516 (_1!34019 lt!2036588))))))

(declare-fun e!3087269 () List!57019)

(assert (=> d!1590939 (= (list!18097 (c!842516 (_1!34019 lt!2036588))) e!3087269)))

(declare-fun b!4941171 () Bool)

(assert (=> b!4941171 (= e!3087269 e!3087270)))

(declare-fun c!842809 () Bool)

(assert (=> b!4941171 (= c!842809 ((_ is Leaf!24879) (c!842516 (_1!34019 lt!2036588))))))

(declare-fun b!4941170 () Bool)

(assert (=> b!4941170 (= e!3087269 Nil!56895)))

(assert (= (and d!1590939 c!842808) b!4941170))

(assert (= (and d!1590939 (not c!842808)) b!4941171))

(assert (= (and b!4941171 c!842809) b!4941172))

(assert (= (and b!4941171 (not c!842809)) b!4941173))

(assert (=> b!4941173 m!5963832))

(declare-fun m!5963918 () Bool)

(assert (=> b!4941173 m!5963918))

(assert (=> b!4941173 m!5963832))

(assert (=> b!4941173 m!5963918))

(declare-fun m!5963920 () Bool)

(assert (=> b!4941173 m!5963920))

(declare-fun m!5963922 () Bool)

(assert (=> b!4941172 m!5963922))

(assert (=> d!1590717 d!1590939))

(declare-fun d!1590941 () Bool)

(declare-fun lt!2036862 () Int)

(assert (=> d!1590941 (>= lt!2036862 0)))

(declare-fun e!3087271 () Int)

(assert (=> d!1590941 (= lt!2036862 e!3087271)))

(declare-fun c!842810 () Bool)

(assert (=> d!1590941 (= c!842810 ((_ is Nil!56895) (list!18098 (xs!18288 (c!842516 totalInput!685)))))))

(assert (=> d!1590941 (= (size!37707 (list!18098 (xs!18288 (c!842516 totalInput!685)))) lt!2036862)))

(declare-fun b!4941174 () Bool)

(assert (=> b!4941174 (= e!3087271 0)))

(declare-fun b!4941175 () Bool)

(assert (=> b!4941175 (= e!3087271 (+ 1 (size!37707 (t!367527 (list!18098 (xs!18288 (c!842516 totalInput!685)))))))))

(assert (= (and d!1590941 c!842810) b!4941174))

(assert (= (and d!1590941 (not c!842810)) b!4941175))

(declare-fun m!5963924 () Bool)

(assert (=> b!4941175 m!5963924))

(assert (=> b!4940425 d!1590941))

(assert (=> b!4940425 d!1590929))

(declare-fun d!1590943 () Bool)

(assert (=> d!1590943 (= (height!1997 (left!41504 (c!842516 totalInput!685))) (ite ((_ is Empty!14964) (left!41504 (c!842516 totalInput!685))) 0 (ite ((_ is Leaf!24879) (left!41504 (c!842516 totalInput!685))) 1 (cheight!15175 (left!41504 (c!842516 totalInput!685))))))))

(assert (=> b!4940547 d!1590943))

(declare-fun d!1590945 () Bool)

(assert (=> d!1590945 (= (height!1997 (right!41834 (c!842516 totalInput!685))) (ite ((_ is Empty!14964) (right!41834 (c!842516 totalInput!685))) 0 (ite ((_ is Leaf!24879) (right!41834 (c!842516 totalInput!685))) 1 (cheight!15175 (right!41834 (c!842516 totalInput!685))))))))

(assert (=> b!4940547 d!1590945))

(declare-fun d!1590947 () Bool)

(declare-fun c!842811 () Bool)

(assert (=> d!1590947 (= c!842811 ((_ is Nil!56895) (t!367527 lt!2036576)))))

(declare-fun e!3087272 () (InoxSet C!27140))

(assert (=> d!1590947 (= (content!10122 (t!367527 lt!2036576)) e!3087272)))

(declare-fun b!4941176 () Bool)

(assert (=> b!4941176 (= e!3087272 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941177 () Bool)

(assert (=> b!4941177 (= e!3087272 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 lt!2036576)) true) (content!10122 (t!367527 (t!367527 lt!2036576)))))))

(assert (= (and d!1590947 c!842811) b!4941176))

(assert (= (and d!1590947 (not c!842811)) b!4941177))

(declare-fun m!5963926 () Bool)

(assert (=> b!4941177 m!5963926))

(declare-fun m!5963928 () Bool)

(assert (=> b!4941177 m!5963928))

(assert (=> b!4940412 d!1590947))

(declare-fun d!1590949 () Bool)

(assert (=> d!1590949 (= (height!1997 (left!41504 (c!842516 (_1!34019 lt!2036588)))) (ite ((_ is Empty!14964) (left!41504 (c!842516 (_1!34019 lt!2036588)))) 0 (ite ((_ is Leaf!24879) (left!41504 (c!842516 (_1!34019 lt!2036588)))) 1 (cheight!15175 (left!41504 (c!842516 (_1!34019 lt!2036588)))))))))

(assert (=> b!4940555 d!1590949))

(declare-fun d!1590951 () Bool)

(assert (=> d!1590951 (= (height!1997 (right!41834 (c!842516 (_1!34019 lt!2036588)))) (ite ((_ is Empty!14964) (right!41834 (c!842516 (_1!34019 lt!2036588)))) 0 (ite ((_ is Leaf!24879) (right!41834 (c!842516 (_1!34019 lt!2036588)))) 1 (cheight!15175 (right!41834 (c!842516 (_1!34019 lt!2036588)))))))))

(assert (=> b!4940555 d!1590951))

(declare-fun bs!1181265 () Bool)

(declare-fun d!1590953 () Bool)

(assert (= bs!1181265 (and d!1590953 d!1590489)))

(declare-fun lambda!246255 () Int)

(assert (=> bs!1181265 (not (= lambda!246255 lambda!246196))))

(declare-fun bs!1181266 () Bool)

(assert (= bs!1181266 (and d!1590953 d!1590735)))

(assert (=> bs!1181266 (not (= lambda!246255 lambda!246241))))

(declare-fun lt!2036869 () Option!14198)

(declare-fun exists!1310 (List!57020 Int) Bool)

(assert (=> d!1590953 (= (isEmpty!30629 lt!2036869) (exists!1310 (exprs!3595 (getWitness!641 z!3568 lambda!246221)) lambda!246255))))

(declare-fun e!3087280 () Option!14198)

(assert (=> d!1590953 (= lt!2036869 e!3087280)))

(declare-fun c!842821 () Bool)

(assert (=> d!1590953 (= c!842821 ((_ is Cons!56896) (exprs!3595 (getWitness!641 z!3568 lambda!246221))))))

(assert (=> d!1590953 (= (getLanguageWitness!663 (getWitness!641 z!3568 lambda!246221)) lt!2036869)))

(declare-fun b!4941190 () Bool)

(declare-fun c!842820 () Bool)

(declare-fun lt!2036870 () Option!14198)

(assert (=> b!4941190 (= c!842820 ((_ is Some!14197) lt!2036870))))

(assert (=> b!4941190 (= lt!2036870 (getLanguageWitness!663 (Context!6191 (t!367528 (exprs!3595 (getWitness!641 z!3568 lambda!246221))))))))

(declare-fun e!3087281 () Option!14198)

(declare-fun e!3087279 () Option!14198)

(assert (=> b!4941190 (= e!3087281 e!3087279)))

(declare-fun b!4941191 () Bool)

(assert (=> b!4941191 (= e!3087280 (Some!14197 Nil!56895))))

(declare-fun b!4941192 () Bool)

(assert (=> b!4941192 (= e!3087281 None!14197)))

(declare-fun b!4941193 () Bool)

(declare-fun lt!2036871 () Option!14198)

(assert (=> b!4941193 (= e!3087279 (Some!14197 (++!12426 (v!50171 lt!2036871) (v!50171 lt!2036870))))))

(declare-fun b!4941194 () Bool)

(assert (=> b!4941194 (= e!3087279 None!14197)))

(declare-fun b!4941195 () Bool)

(assert (=> b!4941195 (= e!3087280 e!3087281)))

(declare-fun getLanguageWitness!665 (Regex!13453) Option!14198)

(assert (=> b!4941195 (= lt!2036871 (getLanguageWitness!665 (h!63344 (exprs!3595 (getWitness!641 z!3568 lambda!246221)))))))

(declare-fun c!842819 () Bool)

(assert (=> b!4941195 (= c!842819 ((_ is Some!14197) lt!2036871))))

(assert (= (and d!1590953 c!842821) b!4941195))

(assert (= (and d!1590953 (not c!842821)) b!4941191))

(assert (= (and b!4941195 c!842819) b!4941190))

(assert (= (and b!4941195 (not c!842819)) b!4941192))

(assert (= (and b!4941190 c!842820) b!4941193))

(assert (= (and b!4941190 (not c!842820)) b!4941194))

(declare-fun m!5963930 () Bool)

(assert (=> d!1590953 m!5963930))

(declare-fun m!5963932 () Bool)

(assert (=> d!1590953 m!5963932))

(declare-fun m!5963934 () Bool)

(assert (=> b!4941190 m!5963934))

(declare-fun m!5963936 () Bool)

(assert (=> b!4941193 m!5963936))

(declare-fun m!5963938 () Bool)

(assert (=> b!4941195 m!5963938))

(assert (=> b!4940477 d!1590953))

(declare-fun d!1590955 () Bool)

(declare-fun e!3087284 () Bool)

(assert (=> d!1590955 e!3087284))

(declare-fun res!2108613 () Bool)

(assert (=> d!1590955 (=> (not res!2108613) (not e!3087284))))

(declare-fun lt!2036874 () Context!6190)

(assert (=> d!1590955 (= res!2108613 (dynLambda!23030 lambda!246221 lt!2036874))))

(declare-fun getWitness!643 (List!57022 Int) Context!6190)

(assert (=> d!1590955 (= lt!2036874 (getWitness!643 (toList!7980 z!3568) lambda!246221))))

(assert (=> d!1590955 (exists!1308 z!3568 lambda!246221)))

(assert (=> d!1590955 (= (getWitness!641 z!3568 lambda!246221) lt!2036874)))

(declare-fun b!4941198 () Bool)

(assert (=> b!4941198 (= e!3087284 (select z!3568 lt!2036874))))

(assert (= (and d!1590955 res!2108613) b!4941198))

(declare-fun b_lambda!196357 () Bool)

(assert (=> (not b_lambda!196357) (not d!1590955)))

(declare-fun m!5963940 () Bool)

(assert (=> d!1590955 m!5963940))

(assert (=> d!1590955 m!5962906))

(assert (=> d!1590955 m!5962906))

(declare-fun m!5963942 () Bool)

(assert (=> d!1590955 m!5963942))

(assert (=> d!1590955 m!5963108))

(declare-fun m!5963944 () Bool)

(assert (=> b!4941198 m!5963944))

(assert (=> b!4940477 d!1590955))

(declare-fun d!1590957 () Bool)

(declare-fun lt!2036875 () Int)

(assert (=> d!1590957 (>= lt!2036875 0)))

(declare-fun e!3087285 () Int)

(assert (=> d!1590957 (= lt!2036875 e!3087285)))

(declare-fun c!842822 () Bool)

(assert (=> d!1590957 (= c!842822 ((_ is Nil!56895) (innerList!15052 (xs!18288 (c!842516 totalInput!685)))))))

(assert (=> d!1590957 (= (size!37707 (innerList!15052 (xs!18288 (c!842516 totalInput!685)))) lt!2036875)))

(declare-fun b!4941199 () Bool)

(assert (=> b!4941199 (= e!3087285 0)))

(declare-fun b!4941200 () Bool)

(assert (=> b!4941200 (= e!3087285 (+ 1 (size!37707 (t!367527 (innerList!15052 (xs!18288 (c!842516 totalInput!685)))))))))

(assert (= (and d!1590957 c!842822) b!4941199))

(assert (= (and d!1590957 (not c!842822)) b!4941200))

(declare-fun m!5963946 () Bool)

(assert (=> b!4941200 m!5963946))

(assert (=> d!1590593 d!1590957))

(declare-fun d!1590959 () Bool)

(declare-fun res!2108614 () Bool)

(declare-fun e!3087286 () Bool)

(assert (=> d!1590959 (=> (not res!2108614) (not e!3087286))))

(assert (=> d!1590959 (= res!2108614 (= (csize!30158 (left!41504 (c!842516 totalInput!685))) (+ (size!37710 (left!41504 (left!41504 (c!842516 totalInput!685)))) (size!37710 (right!41834 (left!41504 (c!842516 totalInput!685)))))))))

(assert (=> d!1590959 (= (inv!74002 (left!41504 (c!842516 totalInput!685))) e!3087286)))

(declare-fun b!4941201 () Bool)

(declare-fun res!2108615 () Bool)

(assert (=> b!4941201 (=> (not res!2108615) (not e!3087286))))

(assert (=> b!4941201 (= res!2108615 (and (not (= (left!41504 (left!41504 (c!842516 totalInput!685))) Empty!14964)) (not (= (right!41834 (left!41504 (c!842516 totalInput!685))) Empty!14964))))))

(declare-fun b!4941202 () Bool)

(declare-fun res!2108616 () Bool)

(assert (=> b!4941202 (=> (not res!2108616) (not e!3087286))))

(assert (=> b!4941202 (= res!2108616 (= (cheight!15175 (left!41504 (c!842516 totalInput!685))) (+ (max!0 (height!1997 (left!41504 (left!41504 (c!842516 totalInput!685)))) (height!1997 (right!41834 (left!41504 (c!842516 totalInput!685))))) 1)))))

(declare-fun b!4941203 () Bool)

(assert (=> b!4941203 (= e!3087286 (<= 0 (cheight!15175 (left!41504 (c!842516 totalInput!685)))))))

(assert (= (and d!1590959 res!2108614) b!4941201))

(assert (= (and b!4941201 res!2108615) b!4941202))

(assert (= (and b!4941202 res!2108616) b!4941203))

(declare-fun m!5963948 () Bool)

(assert (=> d!1590959 m!5963948))

(declare-fun m!5963950 () Bool)

(assert (=> d!1590959 m!5963950))

(declare-fun m!5963952 () Bool)

(assert (=> b!4941202 m!5963952))

(declare-fun m!5963954 () Bool)

(assert (=> b!4941202 m!5963954))

(assert (=> b!4941202 m!5963952))

(assert (=> b!4941202 m!5963954))

(declare-fun m!5963956 () Bool)

(assert (=> b!4941202 m!5963956))

(assert (=> b!4940439 d!1590959))

(declare-fun d!1590961 () Bool)

(declare-fun e!3087288 () Bool)

(assert (=> d!1590961 e!3087288))

(declare-fun res!2108618 () Bool)

(assert (=> d!1590961 (=> (not res!2108618) (not e!3087288))))

(declare-fun lt!2036877 () tuple2!61440)

(assert (=> d!1590961 (= res!2108618 (= (++!12426 (_1!34023 lt!2036877) (_2!34023 lt!2036877)) e!3087009))))

(declare-fun e!3087289 () tuple2!61440)

(assert (=> d!1590961 (= lt!2036877 e!3087289)))

(declare-fun c!842824 () Bool)

(assert (=> d!1590961 (= c!842824 ((_ is Nil!56895) e!3087009))))

(assert (=> d!1590961 (= (splitAtIndex!136 e!3087009 (ite c!842648 testedPSize!70 e!3087005)) lt!2036877)))

(declare-fun lt!2036876 () tuple2!61440)

(declare-fun b!4941204 () Bool)

(assert (=> b!4941204 (= lt!2036876 (splitAtIndex!136 (t!367527 e!3087009) (- (ite c!842648 testedPSize!70 e!3087005) 1)))))

(declare-fun e!3087287 () tuple2!61440)

(assert (=> b!4941204 (= e!3087287 (tuple2!61441 (Cons!56895 (h!63343 e!3087009) (_1!34023 lt!2036876)) (_2!34023 lt!2036876)))))

(declare-fun b!4941205 () Bool)

(assert (=> b!4941205 (= e!3087287 (tuple2!61441 Nil!56895 e!3087009))))

(declare-fun b!4941206 () Bool)

(declare-fun res!2108617 () Bool)

(assert (=> b!4941206 (=> (not res!2108617) (not e!3087288))))

(assert (=> b!4941206 (= res!2108617 (= (_1!34023 lt!2036877) (take!587 e!3087009 (ite c!842648 testedPSize!70 e!3087005))))))

(declare-fun b!4941207 () Bool)

(assert (=> b!4941207 (= e!3087288 (= (_2!34023 lt!2036877) (drop!2279 e!3087009 (ite c!842648 testedPSize!70 e!3087005))))))

(declare-fun b!4941208 () Bool)

(assert (=> b!4941208 (= e!3087289 e!3087287)))

(declare-fun c!842823 () Bool)

(assert (=> b!4941208 (= c!842823 (<= (ite c!842648 testedPSize!70 e!3087005) 0))))

(declare-fun b!4941209 () Bool)

(assert (=> b!4941209 (= e!3087289 (tuple2!61441 Nil!56895 Nil!56895))))

(assert (= (and d!1590961 c!842824) b!4941209))

(assert (= (and d!1590961 (not c!842824)) b!4941208))

(assert (= (and b!4941208 c!842823) b!4941205))

(assert (= (and b!4941208 (not c!842823)) b!4941204))

(assert (= (and d!1590961 res!2108618) b!4941206))

(assert (= (and b!4941206 res!2108617) b!4941207))

(declare-fun m!5963958 () Bool)

(assert (=> d!1590961 m!5963958))

(declare-fun m!5963960 () Bool)

(assert (=> b!4941204 m!5963960))

(declare-fun m!5963962 () Bool)

(assert (=> b!4941206 m!5963962))

(declare-fun m!5963964 () Bool)

(assert (=> b!4941207 m!5963964))

(assert (=> bm!344720 d!1590961))

(assert (=> d!1590579 d!1590941))

(assert (=> d!1590579 d!1590929))

(declare-fun d!1590963 () Bool)

(declare-fun res!2108619 () Bool)

(declare-fun e!3087290 () Bool)

(assert (=> d!1590963 (=> res!2108619 e!3087290)))

(assert (=> d!1590963 (= res!2108619 ((_ is Nil!56896) (exprs!3595 setElem!27908)))))

(assert (=> d!1590963 (= (forall!13220 (exprs!3595 setElem!27908) lambda!246241) e!3087290)))

(declare-fun b!4941210 () Bool)

(declare-fun e!3087291 () Bool)

(assert (=> b!4941210 (= e!3087290 e!3087291)))

(declare-fun res!2108620 () Bool)

(assert (=> b!4941210 (=> (not res!2108620) (not e!3087291))))

(assert (=> b!4941210 (= res!2108620 (dynLambda!23026 lambda!246241 (h!63344 (exprs!3595 setElem!27908))))))

(declare-fun b!4941211 () Bool)

(assert (=> b!4941211 (= e!3087291 (forall!13220 (t!367528 (exprs!3595 setElem!27908)) lambda!246241))))

(assert (= (and d!1590963 (not res!2108619)) b!4941210))

(assert (= (and b!4941210 res!2108620) b!4941211))

(declare-fun b_lambda!196359 () Bool)

(assert (=> (not b_lambda!196359) (not b!4941210)))

(declare-fun m!5963966 () Bool)

(assert (=> b!4941210 m!5963966))

(declare-fun m!5963968 () Bool)

(assert (=> b!4941211 m!5963968))

(assert (=> d!1590735 d!1590963))

(declare-fun d!1590965 () Bool)

(declare-fun res!2108621 () Bool)

(declare-fun e!3087292 () Bool)

(assert (=> d!1590965 (=> (not res!2108621) (not e!3087292))))

(assert (=> d!1590965 (= res!2108621 (<= (size!37707 (list!18098 (xs!18288 (left!41504 (c!842516 totalInput!685))))) 512))))

(assert (=> d!1590965 (= (inv!74003 (left!41504 (c!842516 totalInput!685))) e!3087292)))

(declare-fun b!4941212 () Bool)

(declare-fun res!2108622 () Bool)

(assert (=> b!4941212 (=> (not res!2108622) (not e!3087292))))

(assert (=> b!4941212 (= res!2108622 (= (csize!30159 (left!41504 (c!842516 totalInput!685))) (size!37707 (list!18098 (xs!18288 (left!41504 (c!842516 totalInput!685)))))))))

(declare-fun b!4941213 () Bool)

(assert (=> b!4941213 (= e!3087292 (and (> (csize!30159 (left!41504 (c!842516 totalInput!685))) 0) (<= (csize!30159 (left!41504 (c!842516 totalInput!685))) 512)))))

(assert (= (and d!1590965 res!2108621) b!4941212))

(assert (= (and b!4941212 res!2108622) b!4941213))

(assert (=> d!1590965 m!5963676))

(assert (=> d!1590965 m!5963676))

(declare-fun m!5963970 () Bool)

(assert (=> d!1590965 m!5963970))

(assert (=> b!4941212 m!5963676))

(assert (=> b!4941212 m!5963676))

(assert (=> b!4941212 m!5963970))

(assert (=> b!4940441 d!1590965))

(declare-fun d!1590967 () Bool)

(declare-fun e!3087294 () Bool)

(assert (=> d!1590967 e!3087294))

(declare-fun res!2108624 () Bool)

(assert (=> d!1590967 (=> (not res!2108624) (not e!3087294))))

(declare-fun lt!2036878 () List!57019)

(assert (=> d!1590967 (= res!2108624 (= (content!10122 lt!2036878) ((_ map or) (content!10122 (t!367527 testedP!110)) (content!10122 lt!2036634))))))

(declare-fun e!3087293 () List!57019)

(assert (=> d!1590967 (= lt!2036878 e!3087293)))

(declare-fun c!842825 () Bool)

(assert (=> d!1590967 (= c!842825 ((_ is Nil!56895) (t!367527 testedP!110)))))

(assert (=> d!1590967 (= (++!12426 (t!367527 testedP!110) lt!2036634) lt!2036878)))

(declare-fun b!4941214 () Bool)

(assert (=> b!4941214 (= e!3087293 lt!2036634)))

(declare-fun b!4941217 () Bool)

(assert (=> b!4941217 (= e!3087294 (or (not (= lt!2036634 Nil!56895)) (= lt!2036878 (t!367527 testedP!110))))))

(declare-fun b!4941216 () Bool)

(declare-fun res!2108623 () Bool)

(assert (=> b!4941216 (=> (not res!2108623) (not e!3087294))))

(assert (=> b!4941216 (= res!2108623 (= (size!37707 lt!2036878) (+ (size!37707 (t!367527 testedP!110)) (size!37707 lt!2036634))))))

(declare-fun b!4941215 () Bool)

(assert (=> b!4941215 (= e!3087293 (Cons!56895 (h!63343 (t!367527 testedP!110)) (++!12426 (t!367527 (t!367527 testedP!110)) lt!2036634)))))

(assert (= (and d!1590967 c!842825) b!4941214))

(assert (= (and d!1590967 (not c!842825)) b!4941215))

(assert (= (and d!1590967 res!2108624) b!4941216))

(assert (= (and b!4941216 res!2108623) b!4941217))

(declare-fun m!5963972 () Bool)

(assert (=> d!1590967 m!5963972))

(assert (=> d!1590967 m!5963088))

(assert (=> d!1590967 m!5963096))

(declare-fun m!5963974 () Bool)

(assert (=> b!4941216 m!5963974))

(assert (=> b!4941216 m!5962864))

(assert (=> b!4941216 m!5963100))

(declare-fun m!5963976 () Bool)

(assert (=> b!4941215 m!5963976))

(assert (=> b!4940468 d!1590967))

(declare-fun d!1590969 () Bool)

(declare-fun res!2108625 () Bool)

(declare-fun e!3087295 () Bool)

(assert (=> d!1590969 (=> res!2108625 e!3087295)))

(assert (=> d!1590969 (= res!2108625 ((_ is Nil!56898) (toList!7980 z!3568)))))

(assert (=> d!1590969 (= (forall!13223 (toList!7980 z!3568) lambda!246212) e!3087295)))

(declare-fun b!4941218 () Bool)

(declare-fun e!3087296 () Bool)

(assert (=> b!4941218 (= e!3087295 e!3087296)))

(declare-fun res!2108626 () Bool)

(assert (=> b!4941218 (=> (not res!2108626) (not e!3087296))))

(assert (=> b!4941218 (= res!2108626 (dynLambda!23030 lambda!246212 (h!63346 (toList!7980 z!3568))))))

(declare-fun b!4941219 () Bool)

(assert (=> b!4941219 (= e!3087296 (forall!13223 (t!367530 (toList!7980 z!3568)) lambda!246212))))

(assert (= (and d!1590969 (not res!2108625)) b!4941218))

(assert (= (and b!4941218 res!2108626) b!4941219))

(declare-fun b_lambda!196361 () Bool)

(assert (=> (not b_lambda!196361) (not b!4941218)))

(declare-fun m!5963978 () Bool)

(assert (=> b!4941218 m!5963978))

(declare-fun m!5963980 () Bool)

(assert (=> b!4941219 m!5963980))

(assert (=> d!1590625 d!1590969))

(assert (=> d!1590625 d!1590723))

(declare-fun d!1590971 () Bool)

(declare-fun res!2108629 () Bool)

(assert (=> d!1590971 (= res!2108629 (forall!13223 (toList!7980 z!3568) lambda!246212))))

(assert (=> d!1590971 true))

(assert (=> d!1590971 (= (choose!36377 z!3568 lambda!246212) res!2108629)))

(declare-fun bs!1181267 () Bool)

(assert (= bs!1181267 d!1590971))

(assert (=> bs!1181267 m!5962906))

(assert (=> bs!1181267 m!5962906))

(assert (=> bs!1181267 m!5963114))

(assert (=> d!1590625 d!1590971))

(declare-fun bs!1181268 () Bool)

(declare-fun d!1590973 () Bool)

(assert (= bs!1181268 (and d!1590973 d!1590489)))

(declare-fun lambda!246256 () Int)

(assert (=> bs!1181268 (= lambda!246256 lambda!246196)))

(declare-fun bs!1181269 () Bool)

(assert (= bs!1181269 (and d!1590973 d!1590735)))

(assert (=> bs!1181269 (= lambda!246256 lambda!246241)))

(declare-fun bs!1181270 () Bool)

(assert (= bs!1181270 (and d!1590973 d!1590953)))

(assert (=> bs!1181270 (not (= lambda!246256 lambda!246255))))

(assert (=> d!1590973 (= (inv!73996 setElem!27909) (forall!13220 (exprs!3595 setElem!27909) lambda!246256))))

(declare-fun bs!1181271 () Bool)

(assert (= bs!1181271 d!1590973))

(declare-fun m!5963982 () Bool)

(assert (=> bs!1181271 m!5963982))

(assert (=> setNonEmpty!27909 d!1590973))

(declare-fun d!1590975 () Bool)

(declare-fun lt!2036879 () Int)

(assert (=> d!1590975 (>= lt!2036879 0)))

(declare-fun e!3087297 () Int)

(assert (=> d!1590975 (= lt!2036879 e!3087297)))

(declare-fun c!842826 () Bool)

(assert (=> d!1590975 (= c!842826 ((_ is Nil!56895) (tail!9725 lt!2036535)))))

(assert (=> d!1590975 (= (size!37707 (tail!9725 lt!2036535)) lt!2036879)))

(declare-fun b!4941220 () Bool)

(assert (=> b!4941220 (= e!3087297 0)))

(declare-fun b!4941221 () Bool)

(assert (=> b!4941221 (= e!3087297 (+ 1 (size!37707 (t!367527 (tail!9725 lt!2036535)))))))

(assert (= (and d!1590975 c!842826) b!4941220))

(assert (= (and d!1590975 (not c!842826)) b!4941221))

(declare-fun m!5963984 () Bool)

(assert (=> b!4941221 m!5963984))

(assert (=> b!4940383 d!1590975))

(declare-fun d!1590977 () Bool)

(declare-fun lt!2036880 () Int)

(assert (=> d!1590977 (>= lt!2036880 0)))

(declare-fun e!3087298 () Int)

(assert (=> d!1590977 (= lt!2036880 e!3087298)))

(declare-fun c!842827 () Bool)

(assert (=> d!1590977 (= c!842827 ((_ is Nil!56895) (tail!9725 testedP!110)))))

(assert (=> d!1590977 (= (size!37707 (tail!9725 testedP!110)) lt!2036880)))

(declare-fun b!4941222 () Bool)

(assert (=> b!4941222 (= e!3087298 0)))

(declare-fun b!4941223 () Bool)

(assert (=> b!4941223 (= e!3087298 (+ 1 (size!37707 (t!367527 (tail!9725 testedP!110)))))))

(assert (= (and d!1590977 c!842827) b!4941222))

(assert (= (and d!1590977 (not c!842827)) b!4941223))

(declare-fun m!5963986 () Bool)

(assert (=> b!4941223 m!5963986))

(assert (=> b!4940383 d!1590977))

(assert (=> b!4940690 d!1590839))

(assert (=> b!4940414 d!1590853))

(declare-fun b!4941266 () Bool)

(declare-fun e!3087323 () Conc!14964)

(declare-fun call!344810 () Conc!14964)

(assert (=> b!4941266 (= e!3087323 call!344810)))

(declare-fun b!4941267 () Bool)

(declare-fun e!3087328 () Conc!14964)

(declare-fun e!3087320 () Conc!14964)

(assert (=> b!4941267 (= e!3087328 e!3087320)))

(declare-fun lt!2036889 () Conc!14964)

(declare-fun call!344800 () Conc!14964)

(assert (=> b!4941267 (= lt!2036889 call!344800)))

(declare-fun c!842847 () Bool)

(declare-fun call!344803 () Int)

(declare-fun call!344801 () Int)

(assert (=> b!4941267 (= c!842847 (= call!344803 (- call!344801 3)))))

(declare-fun bm!344792 () Bool)

(declare-fun call!344804 () Conc!14964)

(assert (=> bm!344792 (= call!344810 call!344804)))

(declare-fun bm!344793 () Bool)

(declare-fun call!344798 () Conc!14964)

(declare-fun call!344797 () Conc!14964)

(assert (=> bm!344793 (= call!344798 call!344797)))

(declare-fun b!4941268 () Bool)

(declare-fun c!842848 () Bool)

(declare-fun call!344802 () Int)

(declare-fun call!344805 () Int)

(assert (=> b!4941268 (= c!842848 (>= call!344802 call!344805))))

(declare-fun e!3087325 () Conc!14964)

(assert (=> b!4941268 (= e!3087325 e!3087328)))

(declare-fun b!4941269 () Bool)

(declare-fun c!842846 () Bool)

(assert (=> b!4941269 (= c!842846 (>= call!344802 call!344803))))

(assert (=> b!4941269 (= e!3087325 e!3087323)))

(declare-fun d!1590979 () Bool)

(declare-fun e!3087326 () Bool)

(assert (=> d!1590979 e!3087326))

(declare-fun res!2108641 () Bool)

(assert (=> d!1590979 (=> (not res!2108641) (not e!3087326))))

(declare-fun appendAssocInst!894 (Conc!14964 Conc!14964) Bool)

(assert (=> d!1590979 (= res!2108641 (appendAssocInst!894 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))

(declare-fun lt!2036890 () Conc!14964)

(declare-fun e!3087321 () Conc!14964)

(assert (=> d!1590979 (= lt!2036890 e!3087321)))

(declare-fun c!842844 () Bool)

(assert (=> d!1590979 (= c!842844 (= (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) Empty!14964))))

(declare-fun e!3087322 () Bool)

(assert (=> d!1590979 e!3087322))

(declare-fun res!2108643 () Bool)

(assert (=> d!1590979 (=> (not res!2108643) (not e!3087322))))

(assert (=> d!1590979 (= res!2108643 (isBalanced!4130 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))))))

(assert (=> d!1590979 (= (++!12427 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))) lt!2036890)))

(declare-fun b!4941270 () Bool)

(declare-fun e!3087324 () Conc!14964)

(declare-fun call!344807 () Conc!14964)

(assert (=> b!4941270 (= e!3087324 call!344807)))

(declare-fun b!4941271 () Bool)

(declare-fun e!3087327 () Conc!14964)

(declare-fun call!344811 () Conc!14964)

(assert (=> b!4941271 (= e!3087327 call!344811)))

(declare-fun b!4941272 () Bool)

(declare-fun res!2108640 () Bool)

(assert (=> b!4941272 (=> (not res!2108640) (not e!3087326))))

(assert (=> b!4941272 (= res!2108640 (<= (height!1997 lt!2036890) (+ (max!0 (height!1997 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (height!1997 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)))) 1)))))

(declare-fun bm!344794 () Bool)

(declare-fun call!344806 () Conc!14964)

(declare-fun call!344799 () Conc!14964)

(assert (=> bm!344794 (= call!344806 call!344799)))

(declare-fun lt!2036892 () Conc!14964)

(declare-fun c!842850 () Bool)

(declare-fun bm!344795 () Bool)

(assert (=> bm!344795 (= call!344801 (height!1997 (ite c!842850 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) lt!2036892)))))

(declare-fun bm!344796 () Bool)

(declare-fun c!842845 () Bool)

(declare-fun <>!384 (Conc!14964 Conc!14964) Conc!14964)

(assert (=> bm!344796 (= call!344804 (<>!384 (ite c!842850 (ite c!842847 (left!41504 (right!41834 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))))) (left!41504 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))))) (ite c!842846 call!344798 (ite c!842845 lt!2036892 (right!41834 (left!41504 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))) (ite c!842850 (ite c!842847 lt!2036889 (left!41504 (right!41834 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))))) (ite c!842846 (right!41834 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))) (ite c!842845 (right!41834 (left!41504 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)))) (right!41834 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))))

(declare-fun b!4941273 () Bool)

(assert (=> b!4941273 (= e!3087328 call!344799)))

(declare-fun bm!344797 () Bool)

(declare-fun call!344809 () Conc!14964)

(assert (=> bm!344797 (= call!344809 call!344807)))

(declare-fun b!4941274 () Bool)

(assert (=> b!4941274 (= e!3087324 e!3087325)))

(declare-fun lt!2036891 () Int)

(assert (=> b!4941274 (= c!842850 (< lt!2036891 (- 1)))))

(declare-fun bm!344798 () Bool)

(assert (=> bm!344798 (= call!344802 (height!1997 (ite c!842850 (left!41504 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (right!41834 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))

(declare-fun b!4941275 () Bool)

(assert (=> b!4941275 (= e!3087322 (isBalanced!4130 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))

(declare-fun b!4941276 () Bool)

(assert (=> b!4941276 (= e!3087326 (= (list!18097 lt!2036890) (++!12426 (list!18097 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (list!18097 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))

(declare-fun b!4941277 () Bool)

(assert (=> b!4941277 (= e!3087321 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)))))

(declare-fun bm!344799 () Bool)

(assert (=> bm!344799 (= call!344800 call!344797)))

(declare-fun bm!344800 () Bool)

(assert (=> bm!344800 (= call!344811 call!344809)))

(declare-fun bm!344801 () Bool)

(declare-fun call!344808 () Conc!14964)

(assert (=> bm!344801 (= call!344808 call!344804)))

(declare-fun bm!344802 () Bool)

(declare-fun call!344812 () Conc!14964)

(declare-fun c!842849 () Bool)

(assert (=> bm!344802 (= call!344807 (<>!384 (ite c!842849 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))) (ite c!842850 (ite (or c!842848 c!842847) (left!41504 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) call!344808) (ite c!842845 call!344812 lt!2036892))) (ite c!842849 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)) (ite c!842850 (ite c!842848 call!344800 (ite c!842847 call!344808 lt!2036889)) (ite c!842845 (right!41834 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))) call!344812)))))))

(declare-fun b!4941278 () Bool)

(assert (=> b!4941278 (= e!3087320 call!344806)))

(declare-fun bm!344803 () Bool)

(assert (=> bm!344803 (= call!344797 (++!12427 (ite c!842850 (ite c!842848 (right!41834 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (right!41834 (right!41834 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))))) (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (ite c!842850 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)) (ite c!842846 (left!41504 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))) (left!41504 (left!41504 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))))

(declare-fun bm!344804 () Bool)

(assert (=> bm!344804 (= call!344799 call!344809)))

(declare-fun b!4941279 () Bool)

(declare-fun e!3087319 () Conc!14964)

(assert (=> b!4941279 (= e!3087321 e!3087319)))

(declare-fun c!842851 () Bool)

(assert (=> b!4941279 (= c!842851 (= (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)) Empty!14964))))

(declare-fun b!4941280 () Bool)

(assert (=> b!4941280 (= e!3087323 e!3087327)))

(assert (=> b!4941280 (= lt!2036892 call!344798)))

(assert (=> b!4941280 (= c!842845 (= call!344801 (- call!344805 3)))))

(declare-fun b!4941281 () Bool)

(declare-fun res!2108644 () Bool)

(assert (=> b!4941281 (=> (not res!2108644) (not e!3087326))))

(assert (=> b!4941281 (= res!2108644 (>= (height!1997 lt!2036890) (max!0 (height!1997 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (height!1997 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))

(declare-fun bm!344805 () Bool)

(assert (=> bm!344805 (= call!344805 (height!1997 (ite c!842850 (right!41834 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685)))) (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722)))))))

(declare-fun b!4941282 () Bool)

(assert (=> b!4941282 (= e!3087320 call!344806)))

(declare-fun b!4941283 () Bool)

(assert (=> b!4941283 (= e!3087327 call!344811)))

(declare-fun bm!344806 () Bool)

(assert (=> bm!344806 (= call!344812 call!344810)))

(declare-fun bm!344807 () Bool)

(assert (=> bm!344807 (= call!344803 (height!1997 (ite c!842850 lt!2036889 (left!41504 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))))))))

(declare-fun b!4941284 () Bool)

(assert (=> b!4941284 (= c!842849 (and (<= (- 1) lt!2036891) (<= lt!2036891 1)))))

(assert (=> b!4941284 (= lt!2036891 (- (height!1997 (ite c!842654 (right!41834 (c!842516 totalInput!685)) (_1!34021 lt!2036722))) (height!1997 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))))))))

(assert (=> b!4941284 (= e!3087319 e!3087324)))

(declare-fun b!4941285 () Bool)

(assert (=> b!4941285 (= e!3087319 (ite c!842654 (_2!34021 lt!2036715) (left!41504 (c!842516 totalInput!685))))))

(declare-fun b!4941286 () Bool)

(declare-fun res!2108642 () Bool)

(assert (=> b!4941286 (=> (not res!2108642) (not e!3087326))))

(assert (=> b!4941286 (= res!2108642 (isBalanced!4130 lt!2036890))))

(assert (= (and d!1590979 res!2108643) b!4941275))

(assert (= (and d!1590979 c!842844) b!4941277))

(assert (= (and d!1590979 (not c!842844)) b!4941279))

(assert (= (and b!4941279 c!842851) b!4941285))

(assert (= (and b!4941279 (not c!842851)) b!4941284))

(assert (= (and b!4941284 c!842849) b!4941270))

(assert (= (and b!4941284 (not c!842849)) b!4941274))

(assert (= (and b!4941274 c!842850) b!4941268))

(assert (= (and b!4941274 (not c!842850)) b!4941269))

(assert (= (and b!4941268 c!842848) b!4941273))

(assert (= (and b!4941268 (not c!842848)) b!4941267))

(assert (= (and b!4941267 c!842847) b!4941282))

(assert (= (and b!4941267 (not c!842847)) b!4941278))

(assert (= (or b!4941282 b!4941278) bm!344801))

(assert (= (or b!4941282 b!4941278) bm!344794))

(assert (= (or b!4941273 b!4941267) bm!344799))

(assert (= (or b!4941273 bm!344794) bm!344804))

(assert (= (and b!4941269 c!842846) b!4941266))

(assert (= (and b!4941269 (not c!842846)) b!4941280))

(assert (= (and b!4941280 c!842845) b!4941271))

(assert (= (and b!4941280 (not c!842845)) b!4941283))

(assert (= (or b!4941271 b!4941283) bm!344806))

(assert (= (or b!4941271 b!4941283) bm!344800))

(assert (= (or b!4941266 b!4941280) bm!344793))

(assert (= (or b!4941266 bm!344806) bm!344792))

(assert (= (or b!4941268 b!4941269) bm!344798))

(assert (= (or bm!344804 bm!344800) bm!344797))

(assert (= (or b!4941267 b!4941280) bm!344795))

(assert (= (or b!4941267 b!4941269) bm!344807))

(assert (= (or bm!344799 bm!344793) bm!344803))

(assert (= (or b!4941268 b!4941280) bm!344805))

(assert (= (or bm!344801 bm!344792) bm!344796))

(assert (= (or b!4941270 bm!344797) bm!344802))

(assert (= (and d!1590979 res!2108641) b!4941286))

(assert (= (and b!4941286 res!2108642) b!4941272))

(assert (= (and b!4941272 res!2108640) b!4941281))

(assert (= (and b!4941281 res!2108644) b!4941276))

(declare-fun m!5963988 () Bool)

(assert (=> bm!344803 m!5963988))

(declare-fun m!5963990 () Bool)

(assert (=> b!4941286 m!5963990))

(declare-fun m!5963992 () Bool)

(assert (=> bm!344802 m!5963992))

(declare-fun m!5963994 () Bool)

(assert (=> bm!344798 m!5963994))

(declare-fun m!5963996 () Bool)

(assert (=> b!4941275 m!5963996))

(declare-fun m!5963998 () Bool)

(assert (=> b!4941276 m!5963998))

(declare-fun m!5964000 () Bool)

(assert (=> b!4941276 m!5964000))

(declare-fun m!5964002 () Bool)

(assert (=> b!4941276 m!5964002))

(assert (=> b!4941276 m!5964000))

(assert (=> b!4941276 m!5964002))

(declare-fun m!5964004 () Bool)

(assert (=> b!4941276 m!5964004))

(declare-fun m!5964006 () Bool)

(assert (=> b!4941272 m!5964006))

(declare-fun m!5964008 () Bool)

(assert (=> b!4941272 m!5964008))

(declare-fun m!5964010 () Bool)

(assert (=> b!4941272 m!5964010))

(assert (=> b!4941272 m!5964008))

(assert (=> b!4941272 m!5964010))

(declare-fun m!5964012 () Bool)

(assert (=> b!4941272 m!5964012))

(declare-fun m!5964014 () Bool)

(assert (=> bm!344807 m!5964014))

(declare-fun m!5964016 () Bool)

(assert (=> bm!344805 m!5964016))

(assert (=> b!4941284 m!5964010))

(assert (=> b!4941284 m!5964008))

(declare-fun m!5964018 () Bool)

(assert (=> d!1590979 m!5964018))

(declare-fun m!5964020 () Bool)

(assert (=> d!1590979 m!5964020))

(declare-fun m!5964022 () Bool)

(assert (=> bm!344795 m!5964022))

(declare-fun m!5964024 () Bool)

(assert (=> bm!344796 m!5964024))

(assert (=> b!4941281 m!5964006))

(assert (=> b!4941281 m!5964008))

(assert (=> b!4941281 m!5964010))

(assert (=> b!4941281 m!5964008))

(assert (=> b!4941281 m!5964010))

(assert (=> b!4941281 m!5964012))

(assert (=> bm!344719 d!1590979))

(assert (=> b!4940447 d!1590929))

(declare-fun d!1590981 () Bool)

(assert (=> d!1590981 (= (list!18098 (xs!18288 (c!842516 (_2!34019 lt!2036533)))) (innerList!15052 (xs!18288 (c!842516 (_2!34019 lt!2036533)))))))

(assert (=> b!4940455 d!1590981))

(assert (=> b!4940458 d!1590725))

(declare-fun d!1590983 () Bool)

(assert (=> d!1590983 (= (head!10586 (++!12426 testedP!110 testedSuffix!70)) (h!63343 (++!12426 testedP!110 testedSuffix!70)))))

(assert (=> b!4940458 d!1590983))

(declare-fun d!1590985 () Bool)

(declare-fun lt!2036893 () Int)

(assert (=> d!1590985 (>= lt!2036893 0)))

(declare-fun e!3087329 () Int)

(assert (=> d!1590985 (= lt!2036893 e!3087329)))

(declare-fun c!842852 () Bool)

(assert (=> d!1590985 (= c!842852 ((_ is Nil!56895) lt!2036646))))

(assert (=> d!1590985 (= (size!37707 lt!2036646) lt!2036893)))

(declare-fun b!4941287 () Bool)

(assert (=> b!4941287 (= e!3087329 0)))

(declare-fun b!4941288 () Bool)

(assert (=> b!4941288 (= e!3087329 (+ 1 (size!37707 (t!367527 lt!2036646))))))

(assert (= (and d!1590985 c!842852) b!4941287))

(assert (= (and d!1590985 (not c!842852)) b!4941288))

(declare-fun m!5964026 () Bool)

(assert (=> b!4941288 m!5964026))

(assert (=> b!4940419 d!1590985))

(assert (=> b!4940419 d!1590937))

(assert (=> b!4940419 d!1590585))

(declare-fun d!1590987 () Bool)

(declare-fun e!3087331 () Bool)

(assert (=> d!1590987 e!3087331))

(declare-fun res!2108646 () Bool)

(assert (=> d!1590987 (=> (not res!2108646) (not e!3087331))))

(declare-fun lt!2036894 () List!57019)

(assert (=> d!1590987 (= res!2108646 (= (content!10122 lt!2036894) ((_ map or) (content!10122 (t!367527 (t!367527 testedP!110))) (content!10122 testedSuffix!70))))))

(declare-fun e!3087330 () List!57019)

(assert (=> d!1590987 (= lt!2036894 e!3087330)))

(declare-fun c!842853 () Bool)

(assert (=> d!1590987 (= c!842853 ((_ is Nil!56895) (t!367527 (t!367527 testedP!110))))))

(assert (=> d!1590987 (= (++!12426 (t!367527 (t!367527 testedP!110)) testedSuffix!70) lt!2036894)))

(declare-fun b!4941289 () Bool)

(assert (=> b!4941289 (= e!3087330 testedSuffix!70)))

(declare-fun b!4941292 () Bool)

(assert (=> b!4941292 (= e!3087331 (or (not (= testedSuffix!70 Nil!56895)) (= lt!2036894 (t!367527 (t!367527 testedP!110)))))))

(declare-fun b!4941291 () Bool)

(declare-fun res!2108645 () Bool)

(assert (=> b!4941291 (=> (not res!2108645) (not e!3087331))))

(assert (=> b!4941291 (= res!2108645 (= (size!37707 lt!2036894) (+ (size!37707 (t!367527 (t!367527 testedP!110))) (size!37707 testedSuffix!70))))))

(declare-fun b!4941290 () Bool)

(assert (=> b!4941290 (= e!3087330 (Cons!56895 (h!63343 (t!367527 (t!367527 testedP!110))) (++!12426 (t!367527 (t!367527 (t!367527 testedP!110))) testedSuffix!70)))))

(assert (= (and d!1590987 c!842853) b!4941289))

(assert (= (and d!1590987 (not c!842853)) b!4941290))

(assert (= (and d!1590987 res!2108646) b!4941291))

(assert (= (and b!4941291 res!2108645) b!4941292))

(declare-fun m!5964028 () Bool)

(assert (=> d!1590987 m!5964028))

(assert (=> d!1590987 m!5963726))

(assert (=> d!1590987 m!5962952))

(declare-fun m!5964030 () Bool)

(assert (=> b!4941291 m!5964030))

(assert (=> b!4941291 m!5963054))

(assert (=> b!4941291 m!5962956))

(declare-fun m!5964032 () Bool)

(assert (=> b!4941290 m!5964032))

(assert (=> b!4940767 d!1590987))

(declare-fun d!1590989 () Bool)

(declare-fun c!842854 () Bool)

(assert (=> d!1590989 (= c!842854 ((_ is Nil!56895) lt!2036656))))

(declare-fun e!3087332 () (InoxSet C!27140))

(assert (=> d!1590989 (= (content!10122 lt!2036656) e!3087332)))

(declare-fun b!4941293 () Bool)

(assert (=> b!4941293 (= e!3087332 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941294 () Bool)

(assert (=> b!4941294 (= e!3087332 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036656) true) (content!10122 (t!367527 lt!2036656))))))

(assert (= (and d!1590989 c!842854) b!4941293))

(assert (= (and d!1590989 (not c!842854)) b!4941294))

(declare-fun m!5964034 () Bool)

(assert (=> b!4941294 m!5964034))

(declare-fun m!5964036 () Bool)

(assert (=> b!4941294 m!5964036))

(assert (=> d!1590617 d!1590989))

(assert (=> d!1590617 d!1590613))

(declare-fun d!1590991 () Bool)

(declare-fun c!842855 () Bool)

(assert (=> d!1590991 (= c!842855 ((_ is Nil!56895) lt!2036634))))

(declare-fun e!3087333 () (InoxSet C!27140))

(assert (=> d!1590991 (= (content!10122 lt!2036634) e!3087333)))

(declare-fun b!4941295 () Bool)

(assert (=> b!4941295 (= e!3087333 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941296 () Bool)

(assert (=> b!4941296 (= e!3087333 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036634) true) (content!10122 (t!367527 lt!2036634))))))

(assert (= (and d!1590991 c!842855) b!4941295))

(assert (= (and d!1590991 (not c!842855)) b!4941296))

(declare-fun m!5964038 () Bool)

(assert (=> b!4941296 m!5964038))

(declare-fun m!5964040 () Bool)

(assert (=> b!4941296 m!5964040))

(assert (=> d!1590617 d!1590991))

(declare-fun b!4941300 () Bool)

(declare-fun e!3087335 () List!57019)

(assert (=> b!4941300 (= e!3087335 (++!12426 (list!18097 (left!41504 (_1!34021 lt!2036726))) (list!18097 (right!41834 (_1!34021 lt!2036726)))))))

(declare-fun b!4941299 () Bool)

(assert (=> b!4941299 (= e!3087335 (list!18098 (xs!18288 (_1!34021 lt!2036726))))))

(declare-fun d!1590993 () Bool)

(declare-fun c!842856 () Bool)

(assert (=> d!1590993 (= c!842856 ((_ is Empty!14964) (_1!34021 lt!2036726)))))

(declare-fun e!3087334 () List!57019)

(assert (=> d!1590993 (= (list!18097 (_1!34021 lt!2036726)) e!3087334)))

(declare-fun b!4941298 () Bool)

(assert (=> b!4941298 (= e!3087334 e!3087335)))

(declare-fun c!842857 () Bool)

(assert (=> b!4941298 (= c!842857 ((_ is Leaf!24879) (_1!34021 lt!2036726)))))

(declare-fun b!4941297 () Bool)

(assert (=> b!4941297 (= e!3087334 Nil!56895)))

(assert (= (and d!1590993 c!842856) b!4941297))

(assert (= (and d!1590993 (not c!842856)) b!4941298))

(assert (= (and b!4941298 c!842857) b!4941299))

(assert (= (and b!4941298 (not c!842857)) b!4941300))

(declare-fun m!5964042 () Bool)

(assert (=> b!4941300 m!5964042))

(declare-fun m!5964044 () Bool)

(assert (=> b!4941300 m!5964044))

(assert (=> b!4941300 m!5964042))

(assert (=> b!4941300 m!5964044))

(declare-fun m!5964046 () Bool)

(assert (=> b!4941300 m!5964046))

(declare-fun m!5964048 () Bool)

(assert (=> b!4941299 m!5964048))

(assert (=> b!4940683 d!1590993))

(declare-fun b!4941304 () Bool)

(declare-fun e!3087337 () List!57019)

(assert (=> b!4941304 (= e!3087337 (++!12426 (list!18097 (left!41504 (_2!34021 lt!2036726))) (list!18097 (right!41834 (_2!34021 lt!2036726)))))))

(declare-fun b!4941303 () Bool)

(assert (=> b!4941303 (= e!3087337 (list!18098 (xs!18288 (_2!34021 lt!2036726))))))

(declare-fun d!1590995 () Bool)

(declare-fun c!842858 () Bool)

(assert (=> d!1590995 (= c!842858 ((_ is Empty!14964) (_2!34021 lt!2036726)))))

(declare-fun e!3087336 () List!57019)

(assert (=> d!1590995 (= (list!18097 (_2!34021 lt!2036726)) e!3087336)))

(declare-fun b!4941302 () Bool)

(assert (=> b!4941302 (= e!3087336 e!3087337)))

(declare-fun c!842859 () Bool)

(assert (=> b!4941302 (= c!842859 ((_ is Leaf!24879) (_2!34021 lt!2036726)))))

(declare-fun b!4941301 () Bool)

(assert (=> b!4941301 (= e!3087336 Nil!56895)))

(assert (= (and d!1590995 c!842858) b!4941301))

(assert (= (and d!1590995 (not c!842858)) b!4941302))

(assert (= (and b!4941302 c!842859) b!4941303))

(assert (= (and b!4941302 (not c!842859)) b!4941304))

(declare-fun m!5964050 () Bool)

(assert (=> b!4941304 m!5964050))

(declare-fun m!5964052 () Bool)

(assert (=> b!4941304 m!5964052))

(assert (=> b!4941304 m!5964050))

(assert (=> b!4941304 m!5964052))

(declare-fun m!5964054 () Bool)

(assert (=> b!4941304 m!5964054))

(declare-fun m!5964056 () Bool)

(assert (=> b!4941303 m!5964056))

(assert (=> b!4940683 d!1590995))

(declare-fun d!1590997 () Bool)

(declare-fun e!3087339 () Bool)

(assert (=> d!1590997 e!3087339))

(declare-fun res!2108648 () Bool)

(assert (=> d!1590997 (=> (not res!2108648) (not e!3087339))))

(declare-fun lt!2036896 () tuple2!61440)

(assert (=> d!1590997 (= res!2108648 (= (++!12426 (_1!34023 lt!2036896) (_2!34023 lt!2036896)) (list!18097 (c!842516 totalInput!685))))))

(declare-fun e!3087340 () tuple2!61440)

(assert (=> d!1590997 (= lt!2036896 e!3087340)))

(declare-fun c!842861 () Bool)

(assert (=> d!1590997 (= c!842861 ((_ is Nil!56895) (list!18097 (c!842516 totalInput!685))))))

(assert (=> d!1590997 (= (splitAtIndex!136 (list!18097 (c!842516 totalInput!685)) testedPSize!70) lt!2036896)))

(declare-fun b!4941305 () Bool)

(declare-fun lt!2036895 () tuple2!61440)

(assert (=> b!4941305 (= lt!2036895 (splitAtIndex!136 (t!367527 (list!18097 (c!842516 totalInput!685))) (- testedPSize!70 1)))))

(declare-fun e!3087338 () tuple2!61440)

(assert (=> b!4941305 (= e!3087338 (tuple2!61441 (Cons!56895 (h!63343 (list!18097 (c!842516 totalInput!685))) (_1!34023 lt!2036895)) (_2!34023 lt!2036895)))))

(declare-fun b!4941306 () Bool)

(assert (=> b!4941306 (= e!3087338 (tuple2!61441 Nil!56895 (list!18097 (c!842516 totalInput!685))))))

(declare-fun b!4941307 () Bool)

(declare-fun res!2108647 () Bool)

(assert (=> b!4941307 (=> (not res!2108647) (not e!3087339))))

(assert (=> b!4941307 (= res!2108647 (= (_1!34023 lt!2036896) (take!587 (list!18097 (c!842516 totalInput!685)) testedPSize!70)))))

(declare-fun b!4941308 () Bool)

(assert (=> b!4941308 (= e!3087339 (= (_2!34023 lt!2036896) (drop!2279 (list!18097 (c!842516 totalInput!685)) testedPSize!70)))))

(declare-fun b!4941309 () Bool)

(assert (=> b!4941309 (= e!3087340 e!3087338)))

(declare-fun c!842860 () Bool)

(assert (=> b!4941309 (= c!842860 (<= testedPSize!70 0))))

(declare-fun b!4941310 () Bool)

(assert (=> b!4941310 (= e!3087340 (tuple2!61441 Nil!56895 Nil!56895))))

(assert (= (and d!1590997 c!842861) b!4941310))

(assert (= (and d!1590997 (not c!842861)) b!4941309))

(assert (= (and b!4941309 c!842860) b!4941306))

(assert (= (and b!4941309 (not c!842860)) b!4941305))

(assert (= (and d!1590997 res!2108648) b!4941307))

(assert (= (and b!4941307 res!2108647) b!4941308))

(declare-fun m!5964058 () Bool)

(assert (=> d!1590997 m!5964058))

(declare-fun m!5964060 () Bool)

(assert (=> b!4941305 m!5964060))

(assert (=> b!4941307 m!5962946))

(declare-fun m!5964062 () Bool)

(assert (=> b!4941307 m!5964062))

(assert (=> b!4941308 m!5962946))

(declare-fun m!5964064 () Bool)

(assert (=> b!4941308 m!5964064))

(assert (=> b!4940683 d!1590997))

(assert (=> b!4940683 d!1590595))

(declare-fun d!1590999 () Bool)

(declare-fun lt!2036897 () Bool)

(assert (=> d!1590999 (= lt!2036897 (isEmpty!30632 (list!18097 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(assert (=> d!1590999 (= lt!2036897 (= (size!37710 (right!41834 (c!842516 (_2!34019 lt!2036588)))) 0))))

(assert (=> d!1590999 (= (isEmpty!30630 (right!41834 (c!842516 (_2!34019 lt!2036588)))) lt!2036897)))

(declare-fun bs!1181272 () Bool)

(assert (= bs!1181272 d!1590999))

(assert (=> bs!1181272 m!5963580))

(assert (=> bs!1181272 m!5963580))

(declare-fun m!5964066 () Bool)

(assert (=> bs!1181272 m!5964066))

(declare-fun m!5964068 () Bool)

(assert (=> bs!1181272 m!5964068))

(assert (=> b!4940539 d!1590999))

(declare-fun d!1591001 () Bool)

(declare-fun lt!2036898 () Int)

(assert (=> d!1591001 (>= lt!2036898 0)))

(declare-fun e!3087341 () Int)

(assert (=> d!1591001 (= lt!2036898 e!3087341)))

(declare-fun c!842862 () Bool)

(assert (=> d!1591001 (= c!842862 ((_ is Nil!56895) (ite c!842648 lt!2036724 lt!2036723)))))

(assert (=> d!1591001 (= (size!37707 (ite c!842648 lt!2036724 lt!2036723)) lt!2036898)))

(declare-fun b!4941311 () Bool)

(assert (=> b!4941311 (= e!3087341 0)))

(declare-fun b!4941312 () Bool)

(assert (=> b!4941312 (= e!3087341 (+ 1 (size!37707 (t!367527 (ite c!842648 lt!2036724 lt!2036723)))))))

(assert (= (and d!1591001 c!842862) b!4941311))

(assert (= (and d!1591001 (not c!842862)) b!4941312))

(declare-fun m!5964070 () Bool)

(assert (=> b!4941312 m!5964070))

(assert (=> bm!344723 d!1591001))

(assert (=> b!4940550 d!1590943))

(assert (=> b!4940550 d!1590945))

(assert (=> b!4940558 d!1590949))

(assert (=> b!4940558 d!1590951))

(declare-fun d!1591003 () Bool)

(declare-fun c!842863 () Bool)

(assert (=> d!1591003 (= c!842863 ((_ is Node!14964) (left!41504 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun e!3087342 () Bool)

(assert (=> d!1591003 (= (inv!73998 (left!41504 (left!41504 (c!842516 totalInput!685)))) e!3087342)))

(declare-fun b!4941313 () Bool)

(assert (=> b!4941313 (= e!3087342 (inv!74002 (left!41504 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun b!4941314 () Bool)

(declare-fun e!3087343 () Bool)

(assert (=> b!4941314 (= e!3087342 e!3087343)))

(declare-fun res!2108649 () Bool)

(assert (=> b!4941314 (= res!2108649 (not ((_ is Leaf!24879) (left!41504 (left!41504 (c!842516 totalInput!685))))))))

(assert (=> b!4941314 (=> res!2108649 e!3087343)))

(declare-fun b!4941315 () Bool)

(assert (=> b!4941315 (= e!3087343 (inv!74003 (left!41504 (left!41504 (c!842516 totalInput!685)))))))

(assert (= (and d!1591003 c!842863) b!4941313))

(assert (= (and d!1591003 (not c!842863)) b!4941314))

(assert (= (and b!4941314 (not res!2108649)) b!4941315))

(declare-fun m!5964072 () Bool)

(assert (=> b!4941313 m!5964072))

(declare-fun m!5964074 () Bool)

(assert (=> b!4941315 m!5964074))

(assert (=> b!4940803 d!1591003))

(declare-fun d!1591005 () Bool)

(declare-fun c!842864 () Bool)

(assert (=> d!1591005 (= c!842864 ((_ is Node!14964) (right!41834 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun e!3087344 () Bool)

(assert (=> d!1591005 (= (inv!73998 (right!41834 (left!41504 (c!842516 totalInput!685)))) e!3087344)))

(declare-fun b!4941316 () Bool)

(assert (=> b!4941316 (= e!3087344 (inv!74002 (right!41834 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun b!4941317 () Bool)

(declare-fun e!3087345 () Bool)

(assert (=> b!4941317 (= e!3087344 e!3087345)))

(declare-fun res!2108650 () Bool)

(assert (=> b!4941317 (= res!2108650 (not ((_ is Leaf!24879) (right!41834 (left!41504 (c!842516 totalInput!685))))))))

(assert (=> b!4941317 (=> res!2108650 e!3087345)))

(declare-fun b!4941318 () Bool)

(assert (=> b!4941318 (= e!3087345 (inv!74003 (right!41834 (left!41504 (c!842516 totalInput!685)))))))

(assert (= (and d!1591005 c!842864) b!4941316))

(assert (= (and d!1591005 (not c!842864)) b!4941317))

(assert (= (and b!4941317 (not res!2108650)) b!4941318))

(declare-fun m!5964076 () Bool)

(assert (=> b!4941316 m!5964076))

(declare-fun m!5964078 () Bool)

(assert (=> b!4941318 m!5964078))

(assert (=> b!4940803 d!1591005))

(assert (=> b!4940679 d!1590929))

(declare-fun b!4941319 () Bool)

(declare-fun e!3087352 () tuple2!61436)

(declare-fun e!3087353 () tuple2!61436)

(assert (=> b!4941319 (= e!3087352 e!3087353)))

(declare-fun c!842865 () Bool)

(assert (=> b!4941319 (= c!842865 ((_ is Leaf!24879) (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))

(declare-fun c!842868 () Bool)

(declare-fun lt!2036903 () tuple2!61440)

(declare-fun call!344816 () List!57019)

(declare-fun lt!2036907 () List!57019)

(declare-fun lt!2036902 () tuple2!61440)

(declare-fun lt!2036901 () List!57019)

(declare-fun bm!344808 () Bool)

(assert (=> bm!344808 (= call!344816 (++!12426 (ite c!842868 (_2!34023 lt!2036903) lt!2036907) (ite c!842868 lt!2036901 (_1!34023 lt!2036902))))))

(declare-fun b!4941320 () Bool)

(declare-fun call!344813 () tuple2!61440)

(assert (=> b!4941320 (= lt!2036903 call!344813)))

(declare-fun e!3087347 () tuple2!61440)

(assert (=> b!4941320 (= e!3087347 (tuple2!61441 (_1!34023 lt!2036903) call!344816))))

(declare-fun b!4941321 () Bool)

(declare-fun e!3087355 () List!57019)

(assert (=> b!4941321 (= e!3087355 (list!18098 (xs!18288 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(declare-fun b!4941323 () Bool)

(declare-fun e!3087346 () tuple2!61440)

(assert (=> b!4941323 (= e!3087346 e!3087347)))

(declare-fun call!344814 () Int)

(assert (=> b!4941323 (= c!842868 (< e!3087011 call!344814))))

(declare-fun b!4941324 () Bool)

(declare-fun lt!2036899 () tuple2!61436)

(declare-fun call!344817 () tuple2!61436)

(assert (=> b!4941324 (= lt!2036899 call!344817)))

(declare-fun e!3087349 () tuple2!61436)

(declare-fun call!344818 () Conc!14964)

(assert (=> b!4941324 (= e!3087349 (tuple2!61437 (_1!34021 lt!2036899) call!344818))))

(declare-fun lt!2036910 () tuple2!61436)

(declare-fun e!3087356 () Bool)

(declare-fun b!4941325 () Bool)

(assert (=> b!4941325 (= e!3087356 (= (tuple2!61441 (list!18097 (_1!34021 lt!2036910)) (list!18097 (_2!34021 lt!2036910))) (splitAtIndex!136 (list!18097 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) e!3087011)))))

(declare-fun b!4941326 () Bool)

(assert (=> b!4941326 (= e!3087352 (tuple2!61437 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))) (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4941327 () Bool)

(assert (=> b!4941327 (= e!3087355 (ite c!842868 lt!2036907 lt!2036901))))

(declare-fun b!4941328 () Bool)

(assert (=> b!4941328 (= e!3087346 (tuple2!61441 lt!2036907 lt!2036901))))

(declare-fun lt!2036906 () tuple2!61436)

(declare-fun c!842871 () Bool)

(declare-fun bm!344809 () Bool)

(assert (=> bm!344809 (= call!344818 (++!12427 (ite c!842871 (_2!34021 lt!2036899) (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))) (ite c!842871 (right!41834 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) (_1!34021 lt!2036906))))))

(declare-fun b!4941329 () Bool)

(declare-fun e!3087357 () Int)

(assert (=> b!4941329 (= e!3087357 e!3087011)))

(declare-fun b!4941330 () Bool)

(assert (=> b!4941330 (= lt!2036902 call!344813)))

(assert (=> b!4941330 (= e!3087347 (tuple2!61441 call!344816 (_2!34023 lt!2036902)))))

(declare-fun b!4941322 () Bool)

(declare-fun e!3087354 () tuple2!61436)

(assert (=> b!4941322 (= e!3087354 (tuple2!61437 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) (right!41834 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(declare-fun d!1591007 () Bool)

(assert (=> d!1591007 e!3087356))

(declare-fun res!2108651 () Bool)

(assert (=> d!1591007 (=> (not res!2108651) (not e!3087356))))

(assert (=> d!1591007 (= res!2108651 (isBalanced!4130 (_1!34021 lt!2036910)))))

(assert (=> d!1591007 (= lt!2036910 e!3087352)))

(declare-fun c!842867 () Bool)

(assert (=> d!1591007 (= c!842867 ((_ is Empty!14964) (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))

(assert (=> d!1591007 (isBalanced!4130 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))

(assert (=> d!1591007 (= (splitAt!368 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))) e!3087011) lt!2036910)))

(declare-fun b!4941331 () Bool)

(assert (=> b!4941331 (= lt!2036906 call!344817)))

(assert (=> b!4941331 (= e!3087349 (tuple2!61437 call!344818 (_2!34021 lt!2036906)))))

(declare-fun b!4941332 () Bool)

(assert (=> b!4941332 (= e!3087354 e!3087349)))

(assert (=> b!4941332 (= c!842871 (< e!3087011 (size!37710 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun b!4941333 () Bool)

(declare-fun e!3087350 () tuple2!61436)

(assert (=> b!4941333 (= e!3087350 (tuple2!61437 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))) Empty!14964))))

(declare-fun b!4941334 () Bool)

(declare-fun e!3087348 () tuple2!61436)

(assert (=> b!4941334 (= e!3087348 (tuple2!61437 Empty!14964 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))

(declare-fun b!4941335 () Bool)

(declare-fun e!3087351 () Int)

(assert (=> b!4941335 (= e!3087351 (- e!3087011 call!344814))))

(declare-fun b!4941336 () Bool)

(assert (=> b!4941336 (= e!3087348 e!3087350)))

(declare-fun c!842872 () Bool)

(assert (=> b!4941336 (= c!842872 (= e!3087011 (csize!30159 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(declare-fun b!4941337 () Bool)

(assert (=> b!4941337 (= e!3087351 e!3087011)))

(declare-fun bm!344810 () Bool)

(declare-fun c!842874 () Bool)

(assert (=> bm!344810 (= c!842874 c!842865)))

(declare-fun call!344815 () tuple2!61440)

(assert (=> bm!344810 (= call!344815 (splitAtIndex!136 e!3087355 (ite c!842865 e!3087011 e!3087351)))))

(declare-fun c!842875 () Bool)

(declare-fun b!4941338 () Bool)

(assert (=> b!4941338 (= c!842875 (= (size!37710 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))) e!3087011))))

(declare-fun lt!2036905 () Unit!147645)

(declare-fun lt!2036904 () Unit!147645)

(assert (=> b!4941338 (= lt!2036905 lt!2036904)))

(assert (=> b!4941338 (= (splitAtIndex!136 (++!12426 lt!2036907 lt!2036901) e!3087011) e!3087346)))

(declare-fun c!842870 () Bool)

(assert (=> b!4941338 (= c!842870 (= call!344814 e!3087011))))

(assert (=> b!4941338 (= lt!2036904 (splitAtLemma!37 lt!2036907 lt!2036901 e!3087011))))

(assert (=> b!4941338 (= lt!2036901 (list!18097 (right!41834 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(assert (=> b!4941338 (= lt!2036907 (list!18097 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(assert (=> b!4941338 (= e!3087353 e!3087354)))

(declare-fun b!4941339 () Bool)

(assert (=> b!4941339 (= e!3087357 (- e!3087011 (size!37710 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun bm!344811 () Bool)

(declare-fun c!842873 () Bool)

(assert (=> bm!344811 (= c!842873 c!842871)))

(assert (=> bm!344811 (= call!344817 (splitAt!368 (ite c!842871 (left!41504 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) (right!41834 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))) e!3087357))))

(declare-fun b!4941340 () Bool)

(declare-fun lt!2036909 () Unit!147645)

(declare-fun lt!2036900 () Unit!147645)

(assert (=> b!4941340 (= lt!2036909 lt!2036900)))

(declare-fun lt!2036908 () List!57019)

(assert (=> b!4941340 (= (drop!2279 lt!2036908 e!3087011) (slice!790 lt!2036908 e!3087011 call!344814))))

(assert (=> b!4941340 (= lt!2036900 (dropLemma!37 lt!2036908 e!3087011))))

(assert (=> b!4941340 (= lt!2036908 (list!18098 (xs!18288 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))))))

(declare-fun lt!2036911 () tuple2!61440)

(assert (=> b!4941340 (= lt!2036911 call!344815)))

(assert (=> b!4941340 (= e!3087350 (tuple2!61437 (Leaf!24879 (slice!791 (xs!18288 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) 0 e!3087011) e!3087011) (Leaf!24879 (slice!791 (xs!18288 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) e!3087011 (csize!30159 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685))))) (- (csize!30159 (ite c!842654 (left!41504 (c!842516 totalInput!685)) (right!41834 (c!842516 totalInput!685)))) e!3087011))))))

(declare-fun b!4941341 () Bool)

(declare-fun res!2108652 () Bool)

(assert (=> b!4941341 (=> (not res!2108652) (not e!3087356))))

(assert (=> b!4941341 (= res!2108652 (isBalanced!4130 (_2!34021 lt!2036910)))))

(declare-fun bm!344812 () Bool)

(declare-fun c!842866 () Bool)

(assert (=> bm!344812 (= c!842866 c!842868)))

(assert (=> bm!344812 (= call!344813 call!344815)))

(declare-fun bm!344813 () Bool)

(assert (=> bm!344813 (= call!344814 (size!37707 (ite c!842865 lt!2036908 lt!2036907)))))

(declare-fun b!4941342 () Bool)

(declare-fun c!842869 () Bool)

(assert (=> b!4941342 (= c!842869 (<= e!3087011 0))))

(assert (=> b!4941342 (= e!3087353 e!3087348)))

(assert (= (and d!1591007 c!842867) b!4941326))

(assert (= (and d!1591007 (not c!842867)) b!4941319))

(assert (= (and b!4941319 c!842865) b!4941342))

(assert (= (and b!4941319 (not c!842865)) b!4941338))

(assert (= (and b!4941342 c!842869) b!4941334))

(assert (= (and b!4941342 (not c!842869)) b!4941336))

(assert (= (and b!4941336 c!842872) b!4941333))

(assert (= (and b!4941336 (not c!842872)) b!4941340))

(assert (= (and b!4941338 c!842870) b!4941328))

(assert (= (and b!4941338 (not c!842870)) b!4941323))

(assert (= (and b!4941323 c!842868) b!4941320))

(assert (= (and b!4941323 (not c!842868)) b!4941330))

(assert (= (or b!4941320 b!4941330) bm!344808))

(assert (= (or b!4941320 b!4941330) bm!344812))

(assert (= (and bm!344812 c!842866) b!4941337))

(assert (= (and bm!344812 (not c!842866)) b!4941335))

(assert (= (and b!4941338 c!842875) b!4941322))

(assert (= (and b!4941338 (not c!842875)) b!4941332))

(assert (= (and b!4941332 c!842871) b!4941324))

(assert (= (and b!4941332 (not c!842871)) b!4941331))

(assert (= (or b!4941324 b!4941331) bm!344809))

(assert (= (or b!4941324 b!4941331) bm!344811))

(assert (= (and bm!344811 c!842873) b!4941329))

(assert (= (and bm!344811 (not c!842873)) b!4941339))

(assert (= (or b!4941340 b!4941323 b!4941335 b!4941338) bm!344813))

(assert (= (or b!4941340 bm!344812) bm!344810))

(assert (= (and bm!344810 c!842874) b!4941321))

(assert (= (and bm!344810 (not c!842874)) b!4941327))

(assert (= (and d!1591007 res!2108651) b!4941341))

(assert (= (and b!4941341 res!2108652) b!4941325))

(declare-fun m!5964080 () Bool)

(assert (=> b!4941341 m!5964080))

(declare-fun m!5964082 () Bool)

(assert (=> b!4941338 m!5964082))

(declare-fun m!5964084 () Bool)

(assert (=> b!4941338 m!5964084))

(declare-fun m!5964086 () Bool)

(assert (=> b!4941338 m!5964086))

(declare-fun m!5964088 () Bool)

(assert (=> b!4941338 m!5964088))

(declare-fun m!5964090 () Bool)

(assert (=> b!4941338 m!5964090))

(assert (=> b!4941338 m!5964090))

(declare-fun m!5964092 () Bool)

(assert (=> b!4941338 m!5964092))

(declare-fun m!5964094 () Bool)

(assert (=> d!1591007 m!5964094))

(declare-fun m!5964096 () Bool)

(assert (=> d!1591007 m!5964096))

(declare-fun m!5964098 () Bool)

(assert (=> bm!344808 m!5964098))

(declare-fun m!5964100 () Bool)

(assert (=> b!4941325 m!5964100))

(declare-fun m!5964102 () Bool)

(assert (=> b!4941325 m!5964102))

(declare-fun m!5964104 () Bool)

(assert (=> b!4941325 m!5964104))

(assert (=> b!4941325 m!5964104))

(declare-fun m!5964106 () Bool)

(assert (=> b!4941325 m!5964106))

(declare-fun m!5964108 () Bool)

(assert (=> b!4941321 m!5964108))

(declare-fun m!5964110 () Bool)

(assert (=> b!4941340 m!5964110))

(declare-fun m!5964112 () Bool)

(assert (=> b!4941340 m!5964112))

(declare-fun m!5964114 () Bool)

(assert (=> b!4941340 m!5964114))

(declare-fun m!5964116 () Bool)

(assert (=> b!4941340 m!5964116))

(assert (=> b!4941340 m!5964108))

(declare-fun m!5964118 () Bool)

(assert (=> b!4941340 m!5964118))

(assert (=> b!4941332 m!5964086))

(declare-fun m!5964120 () Bool)

(assert (=> bm!344809 m!5964120))

(declare-fun m!5964122 () Bool)

(assert (=> bm!344810 m!5964122))

(assert (=> b!4941339 m!5964086))

(declare-fun m!5964124 () Bool)

(assert (=> bm!344813 m!5964124))

(declare-fun m!5964126 () Bool)

(assert (=> bm!344811 m!5964126))

(assert (=> bm!344721 d!1591007))

(declare-fun b!4941343 () Bool)

(declare-fun res!2108655 () Bool)

(declare-fun e!3087358 () Bool)

(assert (=> b!4941343 (=> (not res!2108655) (not e!3087358))))

(assert (=> b!4941343 (= res!2108655 (isBalanced!4130 (left!41504 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun d!1591009 () Bool)

(declare-fun res!2108654 () Bool)

(declare-fun e!3087359 () Bool)

(assert (=> d!1591009 (=> res!2108654 e!3087359)))

(assert (=> d!1591009 (= res!2108654 (not ((_ is Node!14964) (left!41504 (c!842516 totalInput!685)))))))

(assert (=> d!1591009 (= (isBalanced!4130 (left!41504 (c!842516 totalInput!685))) e!3087359)))

(declare-fun b!4941344 () Bool)

(declare-fun res!2108656 () Bool)

(assert (=> b!4941344 (=> (not res!2108656) (not e!3087358))))

(assert (=> b!4941344 (= res!2108656 (<= (- (height!1997 (left!41504 (left!41504 (c!842516 totalInput!685)))) (height!1997 (right!41834 (left!41504 (c!842516 totalInput!685))))) 1))))

(declare-fun b!4941345 () Bool)

(declare-fun res!2108653 () Bool)

(assert (=> b!4941345 (=> (not res!2108653) (not e!3087358))))

(assert (=> b!4941345 (= res!2108653 (isBalanced!4130 (right!41834 (left!41504 (c!842516 totalInput!685)))))))

(declare-fun b!4941346 () Bool)

(assert (=> b!4941346 (= e!3087358 (not (isEmpty!30630 (right!41834 (left!41504 (c!842516 totalInput!685))))))))

(declare-fun b!4941347 () Bool)

(assert (=> b!4941347 (= e!3087359 e!3087358)))

(declare-fun res!2108657 () Bool)

(assert (=> b!4941347 (=> (not res!2108657) (not e!3087358))))

(assert (=> b!4941347 (= res!2108657 (<= (- 1) (- (height!1997 (left!41504 (left!41504 (c!842516 totalInput!685)))) (height!1997 (right!41834 (left!41504 (c!842516 totalInput!685)))))))))

(declare-fun b!4941348 () Bool)

(declare-fun res!2108658 () Bool)

(assert (=> b!4941348 (=> (not res!2108658) (not e!3087358))))

(assert (=> b!4941348 (= res!2108658 (not (isEmpty!30630 (left!41504 (left!41504 (c!842516 totalInput!685))))))))

(assert (= (and d!1591009 (not res!2108654)) b!4941347))

(assert (= (and b!4941347 res!2108657) b!4941344))

(assert (= (and b!4941344 res!2108656) b!4941343))

(assert (= (and b!4941343 res!2108655) b!4941345))

(assert (= (and b!4941345 res!2108653) b!4941348))

(assert (= (and b!4941348 res!2108658) b!4941346))

(assert (=> b!4941344 m!5963952))

(assert (=> b!4941344 m!5963954))

(declare-fun m!5964128 () Bool)

(assert (=> b!4941343 m!5964128))

(declare-fun m!5964130 () Bool)

(assert (=> b!4941346 m!5964130))

(declare-fun m!5964132 () Bool)

(assert (=> b!4941348 m!5964132))

(declare-fun m!5964134 () Bool)

(assert (=> b!4941345 m!5964134))

(assert (=> b!4941347 m!5963952))

(assert (=> b!4941347 m!5963954))

(assert (=> b!4940546 d!1591009))

(declare-fun d!1591011 () Bool)

(declare-fun c!842876 () Bool)

(assert (=> d!1591011 (= c!842876 ((_ is Nil!56895) lt!2036764))))

(declare-fun e!3087360 () (InoxSet C!27140))

(assert (=> d!1591011 (= (content!10122 lt!2036764) e!3087360)))

(declare-fun b!4941349 () Bool)

(assert (=> b!4941349 (= e!3087360 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941350 () Bool)

(assert (=> b!4941350 (= e!3087360 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 lt!2036764) true) (content!10122 (t!367527 lt!2036764))))))

(assert (= (and d!1591011 c!842876) b!4941349))

(assert (= (and d!1591011 (not c!842876)) b!4941350))

(declare-fun m!5964136 () Bool)

(assert (=> b!4941350 m!5964136))

(declare-fun m!5964138 () Bool)

(assert (=> b!4941350 m!5964138))

(assert (=> d!1590733 d!1591011))

(assert (=> d!1590733 d!1590865))

(assert (=> d!1590733 d!1590615))

(declare-fun d!1591013 () Bool)

(declare-fun e!3087362 () Bool)

(assert (=> d!1591013 e!3087362))

(declare-fun res!2108660 () Bool)

(assert (=> d!1591013 (=> (not res!2108660) (not e!3087362))))

(declare-fun lt!2036913 () tuple2!61440)

(assert (=> d!1591013 (= res!2108660 (= (++!12426 (_1!34023 lt!2036913) (_2!34023 lt!2036913)) (t!367527 (list!18095 totalInput!685))))))

(declare-fun e!3087363 () tuple2!61440)

(assert (=> d!1591013 (= lt!2036913 e!3087363)))

(declare-fun c!842878 () Bool)

(assert (=> d!1591013 (= c!842878 ((_ is Nil!56895) (t!367527 (list!18095 totalInput!685))))))

(assert (=> d!1591013 (= (splitAtIndex!136 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1)) lt!2036913)))

(declare-fun b!4941351 () Bool)

(declare-fun lt!2036912 () tuple2!61440)

(assert (=> b!4941351 (= lt!2036912 (splitAtIndex!136 (t!367527 (t!367527 (list!18095 totalInput!685))) (- (- testedPSize!70 1) 1)))))

(declare-fun e!3087361 () tuple2!61440)

(assert (=> b!4941351 (= e!3087361 (tuple2!61441 (Cons!56895 (h!63343 (t!367527 (list!18095 totalInput!685))) (_1!34023 lt!2036912)) (_2!34023 lt!2036912)))))

(declare-fun b!4941352 () Bool)

(assert (=> b!4941352 (= e!3087361 (tuple2!61441 Nil!56895 (t!367527 (list!18095 totalInput!685))))))

(declare-fun b!4941353 () Bool)

(declare-fun res!2108659 () Bool)

(assert (=> b!4941353 (=> (not res!2108659) (not e!3087362))))

(assert (=> b!4941353 (= res!2108659 (= (_1!34023 lt!2036913) (take!587 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1))))))

(declare-fun b!4941354 () Bool)

(assert (=> b!4941354 (= e!3087362 (= (_2!34023 lt!2036913) (drop!2279 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1))))))

(declare-fun b!4941355 () Bool)

(assert (=> b!4941355 (= e!3087363 e!3087361)))

(declare-fun c!842877 () Bool)

(assert (=> b!4941355 (= c!842877 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4941356 () Bool)

(assert (=> b!4941356 (= e!3087363 (tuple2!61441 Nil!56895 Nil!56895))))

(assert (= (and d!1591013 c!842878) b!4941356))

(assert (= (and d!1591013 (not c!842878)) b!4941355))

(assert (= (and b!4941355 c!842877) b!4941352))

(assert (= (and b!4941355 (not c!842877)) b!4941351))

(assert (= (and d!1591013 res!2108660) b!4941353))

(assert (= (and b!4941353 res!2108659) b!4941354))

(declare-fun m!5964140 () Bool)

(assert (=> d!1591013 m!5964140))

(declare-fun m!5964142 () Bool)

(assert (=> b!4941351 m!5964142))

(assert (=> b!4941353 m!5963614))

(declare-fun m!5964144 () Bool)

(assert (=> b!4941354 m!5964144))

(assert (=> b!4940715 d!1591013))

(declare-fun b!4941357 () Bool)

(declare-fun res!2108663 () Bool)

(declare-fun e!3087364 () Bool)

(assert (=> b!4941357 (=> (not res!2108663) (not e!3087364))))

(assert (=> b!4941357 (= res!2108663 (isBalanced!4130 (left!41504 (left!41504 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun d!1591015 () Bool)

(declare-fun res!2108662 () Bool)

(declare-fun e!3087365 () Bool)

(assert (=> d!1591015 (=> res!2108662 e!3087365)))

(assert (=> d!1591015 (= res!2108662 (not ((_ is Node!14964) (left!41504 (c!842516 (_1!34019 lt!2036588))))))))

(assert (=> d!1591015 (= (isBalanced!4130 (left!41504 (c!842516 (_1!34019 lt!2036588)))) e!3087365)))

(declare-fun b!4941358 () Bool)

(declare-fun res!2108664 () Bool)

(assert (=> b!4941358 (=> (not res!2108664) (not e!3087364))))

(assert (=> b!4941358 (= res!2108664 (<= (- (height!1997 (left!41504 (left!41504 (c!842516 (_1!34019 lt!2036588))))) (height!1997 (right!41834 (left!41504 (c!842516 (_1!34019 lt!2036588)))))) 1))))

(declare-fun b!4941359 () Bool)

(declare-fun res!2108661 () Bool)

(assert (=> b!4941359 (=> (not res!2108661) (not e!3087364))))

(assert (=> b!4941359 (= res!2108661 (isBalanced!4130 (right!41834 (left!41504 (c!842516 (_1!34019 lt!2036588))))))))

(declare-fun b!4941360 () Bool)

(assert (=> b!4941360 (= e!3087364 (not (isEmpty!30630 (right!41834 (left!41504 (c!842516 (_1!34019 lt!2036588)))))))))

(declare-fun b!4941361 () Bool)

(assert (=> b!4941361 (= e!3087365 e!3087364)))

(declare-fun res!2108665 () Bool)

(assert (=> b!4941361 (=> (not res!2108665) (not e!3087364))))

(assert (=> b!4941361 (= res!2108665 (<= (- 1) (- (height!1997 (left!41504 (left!41504 (c!842516 (_1!34019 lt!2036588))))) (height!1997 (right!41834 (left!41504 (c!842516 (_1!34019 lt!2036588))))))))))

(declare-fun b!4941362 () Bool)

(declare-fun res!2108666 () Bool)

(assert (=> b!4941362 (=> (not res!2108666) (not e!3087364))))

(assert (=> b!4941362 (= res!2108666 (not (isEmpty!30630 (left!41504 (left!41504 (c!842516 (_1!34019 lt!2036588)))))))))

(assert (= (and d!1591015 (not res!2108662)) b!4941361))

(assert (= (and b!4941361 res!2108665) b!4941358))

(assert (= (and b!4941358 res!2108664) b!4941357))

(assert (= (and b!4941357 res!2108663) b!4941359))

(assert (= (and b!4941359 res!2108661) b!4941362))

(assert (= (and b!4941362 res!2108666) b!4941360))

(declare-fun m!5964146 () Bool)

(assert (=> b!4941358 m!5964146))

(declare-fun m!5964148 () Bool)

(assert (=> b!4941358 m!5964148))

(declare-fun m!5964150 () Bool)

(assert (=> b!4941357 m!5964150))

(declare-fun m!5964152 () Bool)

(assert (=> b!4941360 m!5964152))

(declare-fun m!5964154 () Bool)

(assert (=> b!4941362 m!5964154))

(declare-fun m!5964156 () Bool)

(assert (=> b!4941359 m!5964156))

(assert (=> b!4941361 m!5964146))

(assert (=> b!4941361 m!5964148))

(assert (=> b!4940554 d!1591015))

(declare-fun d!1591017 () Bool)

(declare-fun lt!2036914 () Int)

(assert (=> d!1591017 (>= lt!2036914 0)))

(declare-fun e!3087366 () Int)

(assert (=> d!1591017 (= lt!2036914 e!3087366)))

(declare-fun c!842879 () Bool)

(assert (=> d!1591017 (= c!842879 ((_ is Nil!56895) (list!18097 (c!842516 totalInput!685))))))

(assert (=> d!1591017 (= (size!37707 (list!18097 (c!842516 totalInput!685))) lt!2036914)))

(declare-fun b!4941363 () Bool)

(assert (=> b!4941363 (= e!3087366 0)))

(declare-fun b!4941364 () Bool)

(assert (=> b!4941364 (= e!3087366 (+ 1 (size!37707 (t!367527 (list!18097 (c!842516 totalInput!685))))))))

(assert (= (and d!1591017 c!842879) b!4941363))

(assert (= (and d!1591017 (not c!842879)) b!4941364))

(declare-fun m!5964158 () Bool)

(assert (=> b!4941364 m!5964158))

(assert (=> d!1590741 d!1591017))

(assert (=> d!1590741 d!1590595))

(declare-fun d!1591019 () Bool)

(assert (=> d!1591019 (= (inv!74004 (xs!18288 (right!41834 (c!842516 totalInput!685)))) (<= (size!37707 (innerList!15052 (xs!18288 (right!41834 (c!842516 totalInput!685))))) 2147483647))))

(declare-fun bs!1181273 () Bool)

(assert (= bs!1181273 d!1591019))

(declare-fun m!5964160 () Bool)

(assert (=> bs!1181273 m!5964160))

(assert (=> b!4940807 d!1591019))

(declare-fun d!1591021 () Bool)

(declare-fun lt!2036915 () Int)

(assert (=> d!1591021 (>= lt!2036915 0)))

(declare-fun e!3087367 () Int)

(assert (=> d!1591021 (= lt!2036915 e!3087367)))

(declare-fun c!842880 () Bool)

(assert (=> d!1591021 (= c!842880 ((_ is Nil!56895) (t!367527 (list!18095 (_2!34019 lt!2036533)))))))

(assert (=> d!1591021 (= (size!37707 (t!367527 (list!18095 (_2!34019 lt!2036533)))) lt!2036915)))

(declare-fun b!4941365 () Bool)

(assert (=> b!4941365 (= e!3087367 0)))

(declare-fun b!4941366 () Bool)

(assert (=> b!4941366 (= e!3087367 (+ 1 (size!37707 (t!367527 (t!367527 (list!18095 (_2!34019 lt!2036533)))))))))

(assert (= (and d!1591021 c!842880) b!4941365))

(assert (= (and d!1591021 (not c!842880)) b!4941366))

(declare-fun m!5964162 () Bool)

(assert (=> b!4941366 m!5964162))

(assert (=> b!4940432 d!1591021))

(assert (=> b!4940765 d!1590899))

(assert (=> b!4940765 d!1590977))

(declare-fun bs!1181274 () Bool)

(declare-fun d!1591023 () Bool)

(assert (= bs!1181274 (and d!1591023 d!1590915)))

(declare-fun lambda!246257 () Int)

(assert (=> bs!1181274 (= (= lambda!246227 lambda!246224) (= lambda!246257 lambda!246249))))

(declare-fun bs!1181275 () Bool)

(assert (= bs!1181275 (and d!1591023 b!4940316)))

(assert (=> bs!1181275 (not (= lambda!246257 lambda!246213))))

(declare-fun bs!1181276 () Bool)

(assert (= bs!1181276 (and d!1591023 d!1590629)))

(assert (=> bs!1181276 (= (= lambda!246227 lambda!246212) (= lambda!246257 lambda!246224))))

(declare-fun bs!1181277 () Bool)

(assert (= bs!1181277 (and d!1591023 b!4940317)))

(assert (=> bs!1181277 (not (= lambda!246257 lambda!246214))))

(declare-fun bs!1181278 () Bool)

(assert (= bs!1181278 (and d!1591023 d!1590659)))

(assert (=> bs!1181278 (= (= lambda!246227 (ite c!842558 lambda!246213 lambda!246214)) (= lambda!246257 lambda!246231))))

(declare-fun bs!1181279 () Bool)

(assert (= bs!1181279 (and d!1591023 d!1590641)))

(assert (=> bs!1181279 (= (= lambda!246227 lambda!246212) (= lambda!246257 lambda!246227))))

(declare-fun bs!1181280 () Bool)

(assert (= bs!1181280 (and d!1591023 d!1590917)))

(assert (=> bs!1181280 (= (= lambda!246227 lambda!246212) (= lambda!246257 lambda!246252))))

(declare-fun bs!1181281 () Bool)

(assert (= bs!1181281 (and d!1591023 d!1590623)))

(assert (=> bs!1181281 (not (= lambda!246257 lambda!246221))))

(declare-fun bs!1181282 () Bool)

(assert (= bs!1181282 (and d!1591023 d!1590531)))

(assert (=> bs!1181282 (not (= lambda!246257 lambda!246212))))

(assert (=> d!1591023 true))

(assert (=> d!1591023 (< (dynLambda!23027 order!25995 lambda!246227) (dynLambda!23027 order!25995 lambda!246257))))

(assert (=> d!1591023 (= (exists!1307 lt!2036623 lambda!246227) (not (forall!13223 lt!2036623 lambda!246257)))))

(declare-fun bs!1181283 () Bool)

(assert (= bs!1181283 d!1591023))

(declare-fun m!5964164 () Bool)

(assert (=> bs!1181283 m!5964164))

(assert (=> d!1590641 d!1591023))

(declare-fun bs!1181284 () Bool)

(declare-fun d!1591025 () Bool)

(assert (= bs!1181284 (and d!1591025 d!1590915)))

(declare-fun lambda!246260 () Int)

(assert (=> bs!1181284 (= (= lambda!246212 lambda!246224) (= lambda!246260 lambda!246249))))

(declare-fun bs!1181285 () Bool)

(assert (= bs!1181285 (and d!1591025 d!1591023)))

(assert (=> bs!1181285 (= (= lambda!246212 lambda!246227) (= lambda!246260 lambda!246257))))

(declare-fun bs!1181286 () Bool)

(assert (= bs!1181286 (and d!1591025 b!4940316)))

(assert (=> bs!1181286 (not (= lambda!246260 lambda!246213))))

(declare-fun bs!1181287 () Bool)

(assert (= bs!1181287 (and d!1591025 d!1590629)))

(assert (=> bs!1181287 (= lambda!246260 lambda!246224)))

(declare-fun bs!1181288 () Bool)

(assert (= bs!1181288 (and d!1591025 b!4940317)))

(assert (=> bs!1181288 (not (= lambda!246260 lambda!246214))))

(declare-fun bs!1181289 () Bool)

(assert (= bs!1181289 (and d!1591025 d!1590659)))

(assert (=> bs!1181289 (= (= lambda!246212 (ite c!842558 lambda!246213 lambda!246214)) (= lambda!246260 lambda!246231))))

(declare-fun bs!1181290 () Bool)

(assert (= bs!1181290 (and d!1591025 d!1590641)))

(assert (=> bs!1181290 (= lambda!246260 lambda!246227)))

(declare-fun bs!1181291 () Bool)

(assert (= bs!1181291 (and d!1591025 d!1590917)))

(assert (=> bs!1181291 (= lambda!246260 lambda!246252)))

(declare-fun bs!1181292 () Bool)

(assert (= bs!1181292 (and d!1591025 d!1590623)))

(assert (=> bs!1181292 (not (= lambda!246260 lambda!246221))))

(declare-fun bs!1181293 () Bool)

(assert (= bs!1181293 (and d!1591025 d!1590531)))

(assert (=> bs!1181293 (not (= lambda!246260 lambda!246212))))

(assert (=> d!1591025 true))

(assert (=> d!1591025 (< (dynLambda!23027 order!25995 lambda!246212) (dynLambda!23027 order!25995 lambda!246260))))

(assert (=> d!1591025 (not (exists!1307 lt!2036623 lambda!246260))))

(assert (=> d!1591025 true))

(declare-fun _$98!216 () Unit!147645)

(assert (=> d!1591025 (= (choose!36379 lt!2036623 lambda!246212) _$98!216)))

(declare-fun bs!1181294 () Bool)

(assert (= bs!1181294 d!1591025))

(declare-fun m!5964166 () Bool)

(assert (=> bs!1181294 m!5964166))

(assert (=> d!1590641 d!1591025))

(declare-fun d!1591027 () Bool)

(declare-fun res!2108667 () Bool)

(declare-fun e!3087370 () Bool)

(assert (=> d!1591027 (=> res!2108667 e!3087370)))

(assert (=> d!1591027 (= res!2108667 ((_ is Nil!56898) lt!2036623))))

(assert (=> d!1591027 (= (forall!13223 lt!2036623 lambda!246212) e!3087370)))

(declare-fun b!4941367 () Bool)

(declare-fun e!3087371 () Bool)

(assert (=> b!4941367 (= e!3087370 e!3087371)))

(declare-fun res!2108668 () Bool)

(assert (=> b!4941367 (=> (not res!2108668) (not e!3087371))))

(assert (=> b!4941367 (= res!2108668 (dynLambda!23030 lambda!246212 (h!63346 lt!2036623)))))

(declare-fun b!4941368 () Bool)

(assert (=> b!4941368 (= e!3087371 (forall!13223 (t!367530 lt!2036623) lambda!246212))))

(assert (= (and d!1591027 (not res!2108667)) b!4941367))

(assert (= (and b!4941367 res!2108668) b!4941368))

(declare-fun b_lambda!196363 () Bool)

(assert (=> (not b_lambda!196363) (not b!4941367)))

(declare-fun m!5964168 () Bool)

(assert (=> b!4941367 m!5964168))

(declare-fun m!5964170 () Bool)

(assert (=> b!4941368 m!5964170))

(assert (=> d!1590641 d!1591027))

(declare-fun d!1591029 () Bool)

(declare-fun e!3087373 () Bool)

(assert (=> d!1591029 e!3087373))

(declare-fun res!2108670 () Bool)

(assert (=> d!1591029 (=> (not res!2108670) (not e!3087373))))

(declare-fun lt!2036916 () List!57019)

(assert (=> d!1591029 (= res!2108670 (= (content!10122 lt!2036916) ((_ map or) (content!10122 (_1!34023 lt!2036735)) (content!10122 (_2!34023 lt!2036735)))))))

(declare-fun e!3087372 () List!57019)

(assert (=> d!1591029 (= lt!2036916 e!3087372)))

(declare-fun c!842881 () Bool)

(assert (=> d!1591029 (= c!842881 ((_ is Nil!56895) (_1!34023 lt!2036735)))))

(assert (=> d!1591029 (= (++!12426 (_1!34023 lt!2036735) (_2!34023 lt!2036735)) lt!2036916)))

(declare-fun b!4941369 () Bool)

(assert (=> b!4941369 (= e!3087372 (_2!34023 lt!2036735))))

(declare-fun b!4941372 () Bool)

(assert (=> b!4941372 (= e!3087373 (or (not (= (_2!34023 lt!2036735) Nil!56895)) (= lt!2036916 (_1!34023 lt!2036735))))))

(declare-fun b!4941371 () Bool)

(declare-fun res!2108669 () Bool)

(assert (=> b!4941371 (=> (not res!2108669) (not e!3087373))))

(assert (=> b!4941371 (= res!2108669 (= (size!37707 lt!2036916) (+ (size!37707 (_1!34023 lt!2036735)) (size!37707 (_2!34023 lt!2036735)))))))

(declare-fun b!4941370 () Bool)

(assert (=> b!4941370 (= e!3087372 (Cons!56895 (h!63343 (_1!34023 lt!2036735)) (++!12426 (t!367527 (_1!34023 lt!2036735)) (_2!34023 lt!2036735))))))

(assert (= (and d!1591029 c!842881) b!4941369))

(assert (= (and d!1591029 (not c!842881)) b!4941370))

(assert (= (and d!1591029 res!2108670) b!4941371))

(assert (= (and b!4941371 res!2108669) b!4941372))

(declare-fun m!5964172 () Bool)

(assert (=> d!1591029 m!5964172))

(declare-fun m!5964174 () Bool)

(assert (=> d!1591029 m!5964174))

(declare-fun m!5964176 () Bool)

(assert (=> d!1591029 m!5964176))

(declare-fun m!5964178 () Bool)

(assert (=> b!4941371 m!5964178))

(declare-fun m!5964180 () Bool)

(assert (=> b!4941371 m!5964180))

(declare-fun m!5964182 () Bool)

(assert (=> b!4941371 m!5964182))

(declare-fun m!5964184 () Bool)

(assert (=> b!4941370 m!5964184))

(assert (=> d!1590721 d!1591029))

(declare-fun d!1591031 () Bool)

(declare-fun lt!2036917 () Int)

(assert (=> d!1591031 (>= lt!2036917 0)))

(declare-fun e!3087374 () Int)

(assert (=> d!1591031 (= lt!2036917 e!3087374)))

(declare-fun c!842882 () Bool)

(assert (=> d!1591031 (= c!842882 ((_ is Nil!56895) (t!367527 lt!2036642)))))

(assert (=> d!1591031 (= (size!37707 (t!367527 lt!2036642)) lt!2036917)))

(declare-fun b!4941373 () Bool)

(assert (=> b!4941373 (= e!3087374 0)))

(declare-fun b!4941374 () Bool)

(assert (=> b!4941374 (= e!3087374 (+ 1 (size!37707 (t!367527 (t!367527 lt!2036642)))))))

(assert (= (and d!1591031 c!842882) b!4941373))

(assert (= (and d!1591031 (not c!842882)) b!4941374))

(declare-fun m!5964186 () Bool)

(assert (=> b!4941374 m!5964186))

(assert (=> b!4940773 d!1591031))

(declare-fun d!1591033 () Bool)

(declare-fun res!2108675 () Bool)

(declare-fun e!3087379 () Bool)

(assert (=> d!1591033 (=> res!2108675 e!3087379)))

(assert (=> d!1591033 (= res!2108675 ((_ is Nil!56898) lt!2036758))))

(assert (=> d!1591033 (= (noDuplicate!999 lt!2036758) e!3087379)))

(declare-fun b!4941379 () Bool)

(declare-fun e!3087380 () Bool)

(assert (=> b!4941379 (= e!3087379 e!3087380)))

(declare-fun res!2108676 () Bool)

(assert (=> b!4941379 (=> (not res!2108676) (not e!3087380))))

(declare-fun contains!19484 (List!57022 Context!6190) Bool)

(assert (=> b!4941379 (= res!2108676 (not (contains!19484 (t!367530 lt!2036758) (h!63346 lt!2036758))))))

(declare-fun b!4941380 () Bool)

(assert (=> b!4941380 (= e!3087380 (noDuplicate!999 (t!367530 lt!2036758)))))

(assert (= (and d!1591033 (not res!2108675)) b!4941379))

(assert (= (and b!4941379 res!2108676) b!4941380))

(declare-fun m!5964188 () Bool)

(assert (=> b!4941379 m!5964188))

(declare-fun m!5964190 () Bool)

(assert (=> b!4941380 m!5964190))

(assert (=> d!1590723 d!1591033))

(declare-fun d!1591035 () Bool)

(declare-fun e!3087388 () Bool)

(assert (=> d!1591035 e!3087388))

(declare-fun res!2108681 () Bool)

(assert (=> d!1591035 (=> (not res!2108681) (not e!3087388))))

(declare-fun res!2108682 () List!57022)

(assert (=> d!1591035 (= res!2108681 (noDuplicate!999 res!2108682))))

(declare-fun e!3087389 () Bool)

(assert (=> d!1591035 e!3087389))

(assert (=> d!1591035 (= (choose!36383 z!3568) res!2108682)))

(declare-fun b!4941388 () Bool)

(declare-fun e!3087387 () Bool)

(declare-fun tp!1386286 () Bool)

(assert (=> b!4941388 (= e!3087387 tp!1386286)))

(declare-fun tp!1386287 () Bool)

(declare-fun b!4941387 () Bool)

(assert (=> b!4941387 (= e!3087389 (and (inv!73996 (h!63346 res!2108682)) e!3087387 tp!1386287))))

(declare-fun b!4941389 () Bool)

(assert (=> b!4941389 (= e!3087388 (= (content!10124 res!2108682) z!3568))))

(assert (= b!4941387 b!4941388))

(assert (= (and d!1591035 ((_ is Cons!56898) res!2108682)) b!4941387))

(assert (= (and d!1591035 res!2108681) b!4941389))

(declare-fun m!5964192 () Bool)

(assert (=> d!1591035 m!5964192))

(declare-fun m!5964194 () Bool)

(assert (=> b!4941387 m!5964194))

(declare-fun m!5964196 () Bool)

(assert (=> b!4941389 m!5964196))

(assert (=> d!1590723 d!1591035))

(declare-fun d!1591037 () Bool)

(declare-fun c!842885 () Bool)

(assert (=> d!1591037 (= c!842885 ((_ is Nil!56898) lt!2036758))))

(declare-fun e!3087392 () (InoxSet Context!6190))

(assert (=> d!1591037 (= (content!10124 lt!2036758) e!3087392)))

(declare-fun b!4941394 () Bool)

(assert (=> b!4941394 (= e!3087392 ((as const (Array Context!6190 Bool)) false))))

(declare-fun b!4941395 () Bool)

(assert (=> b!4941395 (= e!3087392 ((_ map or) (store ((as const (Array Context!6190 Bool)) false) (h!63346 lt!2036758) true) (content!10124 (t!367530 lt!2036758))))))

(assert (= (and d!1591037 c!842885) b!4941394))

(assert (= (and d!1591037 (not c!842885)) b!4941395))

(declare-fun m!5964198 () Bool)

(assert (=> b!4941395 m!5964198))

(declare-fun m!5964200 () Bool)

(assert (=> b!4941395 m!5964200))

(assert (=> b!4940749 d!1591037))

(declare-fun d!1591039 () Bool)

(declare-fun res!2108683 () Bool)

(declare-fun e!3087393 () Bool)

(assert (=> d!1591039 (=> (not res!2108683) (not e!3087393))))

(assert (=> d!1591039 (= res!2108683 (<= (size!37707 (list!18098 (xs!18288 (right!41834 (c!842516 totalInput!685))))) 512))))

(assert (=> d!1591039 (= (inv!74003 (right!41834 (c!842516 totalInput!685))) e!3087393)))

(declare-fun b!4941396 () Bool)

(declare-fun res!2108684 () Bool)

(assert (=> b!4941396 (=> (not res!2108684) (not e!3087393))))

(assert (=> b!4941396 (= res!2108684 (= (csize!30159 (right!41834 (c!842516 totalInput!685))) (size!37707 (list!18098 (xs!18288 (right!41834 (c!842516 totalInput!685)))))))))

(declare-fun b!4941397 () Bool)

(assert (=> b!4941397 (= e!3087393 (and (> (csize!30159 (right!41834 (c!842516 totalInput!685))) 0) (<= (csize!30159 (right!41834 (c!842516 totalInput!685))) 512)))))

(assert (= (and d!1591039 res!2108683) b!4941396))

(assert (= (and b!4941396 res!2108684) b!4941397))

(assert (=> d!1591039 m!5963702))

(assert (=> d!1591039 m!5963702))

(declare-fun m!5964202 () Bool)

(assert (=> d!1591039 m!5964202))

(assert (=> b!4941396 m!5963702))

(assert (=> b!4941396 m!5963702))

(assert (=> b!4941396 m!5964202))

(assert (=> b!4940444 d!1591039))

(declare-fun b!4941398 () Bool)

(declare-fun res!2108687 () Bool)

(declare-fun e!3087394 () Bool)

(assert (=> b!4941398 (=> (not res!2108687) (not e!3087394))))

(assert (=> b!4941398 (= res!2108687 (isBalanced!4130 (left!41504 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun d!1591041 () Bool)

(declare-fun res!2108686 () Bool)

(declare-fun e!3087395 () Bool)

(assert (=> d!1591041 (=> res!2108686 e!3087395)))

(assert (=> d!1591041 (= res!2108686 (not ((_ is Node!14964) (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(assert (=> d!1591041 (= (isBalanced!4130 (right!41834 (c!842516 (_2!34019 lt!2036588)))) e!3087395)))

(declare-fun b!4941399 () Bool)

(declare-fun res!2108688 () Bool)

(assert (=> b!4941399 (=> (not res!2108688) (not e!3087394))))

(assert (=> b!4941399 (= res!2108688 (<= (- (height!1997 (left!41504 (right!41834 (c!842516 (_2!34019 lt!2036588))))) (height!1997 (right!41834 (right!41834 (c!842516 (_2!34019 lt!2036588)))))) 1))))

(declare-fun b!4941400 () Bool)

(declare-fun res!2108685 () Bool)

(assert (=> b!4941400 (=> (not res!2108685) (not e!3087394))))

(assert (=> b!4941400 (= res!2108685 (isBalanced!4130 (right!41834 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))

(declare-fun b!4941401 () Bool)

(assert (=> b!4941401 (= e!3087394 (not (isEmpty!30630 (right!41834 (right!41834 (c!842516 (_2!34019 lt!2036588)))))))))

(declare-fun b!4941402 () Bool)

(assert (=> b!4941402 (= e!3087395 e!3087394)))

(declare-fun res!2108689 () Bool)

(assert (=> b!4941402 (=> (not res!2108689) (not e!3087394))))

(assert (=> b!4941402 (= res!2108689 (<= (- 1) (- (height!1997 (left!41504 (right!41834 (c!842516 (_2!34019 lt!2036588))))) (height!1997 (right!41834 (right!41834 (c!842516 (_2!34019 lt!2036588))))))))))

(declare-fun b!4941403 () Bool)

(declare-fun res!2108690 () Bool)

(assert (=> b!4941403 (=> (not res!2108690) (not e!3087394))))

(assert (=> b!4941403 (= res!2108690 (not (isEmpty!30630 (left!41504 (right!41834 (c!842516 (_2!34019 lt!2036588)))))))))

(assert (= (and d!1591041 (not res!2108686)) b!4941402))

(assert (= (and b!4941402 res!2108689) b!4941399))

(assert (= (and b!4941399 res!2108688) b!4941398))

(assert (= (and b!4941398 res!2108687) b!4941400))

(assert (= (and b!4941400 res!2108685) b!4941403))

(assert (= (and b!4941403 res!2108690) b!4941401))

(declare-fun m!5964204 () Bool)

(assert (=> b!4941399 m!5964204))

(declare-fun m!5964206 () Bool)

(assert (=> b!4941399 m!5964206))

(declare-fun m!5964208 () Bool)

(assert (=> b!4941398 m!5964208))

(declare-fun m!5964210 () Bool)

(assert (=> b!4941401 m!5964210))

(declare-fun m!5964212 () Bool)

(assert (=> b!4941403 m!5964212))

(declare-fun m!5964214 () Bool)

(assert (=> b!4941400 m!5964214))

(assert (=> b!4941402 m!5964204))

(assert (=> b!4941402 m!5964206))

(assert (=> b!4940538 d!1591041))

(declare-fun d!1591043 () Bool)

(declare-fun lt!2036918 () Bool)

(assert (=> d!1591043 (= lt!2036918 (isEmpty!30632 (list!18097 (right!41834 (c!842516 totalInput!685)))))))

(assert (=> d!1591043 (= lt!2036918 (= (size!37710 (right!41834 (c!842516 totalInput!685))) 0))))

(assert (=> d!1591043 (= (isEmpty!30630 (right!41834 (c!842516 totalInput!685))) lt!2036918)))

(declare-fun bs!1181295 () Bool)

(assert (= bs!1181295 d!1591043))

(assert (=> bs!1181295 m!5963050))

(assert (=> bs!1181295 m!5963050))

(declare-fun m!5964216 () Bool)

(assert (=> bs!1181295 m!5964216))

(assert (=> bs!1181295 m!5962990))

(assert (=> b!4940549 d!1591043))

(declare-fun d!1591045 () Bool)

(declare-fun c!842886 () Bool)

(assert (=> d!1591045 (= c!842886 ((_ is Nil!56895) (t!367527 lt!2036642)))))

(declare-fun e!3087396 () (InoxSet C!27140))

(assert (=> d!1591045 (= (content!10122 (t!367527 lt!2036642)) e!3087396)))

(declare-fun b!4941404 () Bool)

(assert (=> b!4941404 (= e!3087396 ((as const (Array C!27140 Bool)) false))))

(declare-fun b!4941405 () Bool)

(assert (=> b!4941405 (= e!3087396 ((_ map or) (store ((as const (Array C!27140 Bool)) false) (h!63343 (t!367527 lt!2036642)) true) (content!10122 (t!367527 (t!367527 lt!2036642)))))))

(assert (= (and d!1591045 c!842886) b!4941404))

(assert (= (and d!1591045 (not c!842886)) b!4941405))

(declare-fun m!5964218 () Bool)

(assert (=> b!4941405 m!5964218))

(declare-fun m!5964220 () Bool)

(assert (=> b!4941405 m!5964220))

(assert (=> b!4940462 d!1591045))

(declare-fun d!1591047 () Bool)

(declare-fun lt!2036919 () Bool)

(assert (=> d!1591047 (= lt!2036919 (isEmpty!30632 (list!18097 (right!41834 (c!842516 (_1!34019 lt!2036588))))))))

(assert (=> d!1591047 (= lt!2036919 (= (size!37710 (right!41834 (c!842516 (_1!34019 lt!2036588)))) 0))))

(assert (=> d!1591047 (= (isEmpty!30630 (right!41834 (c!842516 (_1!34019 lt!2036588)))) lt!2036919)))

(declare-fun bs!1181296 () Bool)

(assert (= bs!1181296 d!1591047))

(assert (=> bs!1181296 m!5963918))

(assert (=> bs!1181296 m!5963918))

(declare-fun m!5964222 () Bool)

(assert (=> bs!1181296 m!5964222))

(declare-fun m!5964224 () Bool)

(assert (=> bs!1181296 m!5964224))

(assert (=> b!4940557 d!1591047))

(declare-fun b!4941406 () Bool)

(declare-fun e!3087398 () Bool)

(declare-fun lt!2036920 () List!57019)

(declare-fun e!3087397 () Int)

(assert (=> b!4941406 (= e!3087398 (= (size!37707 lt!2036920) e!3087397))))

(declare-fun c!842888 () Bool)

(assert (=> b!4941406 (= c!842888 (<= testedPSize!70 0))))

(declare-fun b!4941407 () Bool)

(declare-fun call!344819 () Int)

(assert (=> b!4941407 (= e!3087397 call!344819)))

(declare-fun b!4941409 () Bool)

(declare-fun e!3087400 () List!57019)

(assert (=> b!4941409 (= e!3087400 (list!18095 totalInput!685))))

(declare-fun b!4941410 () Bool)

(declare-fun e!3087399 () Int)

(assert (=> b!4941410 (= e!3087399 (- call!344819 testedPSize!70))))

(declare-fun b!4941411 () Bool)

(declare-fun e!3087401 () List!57019)

(assert (=> b!4941411 (= e!3087401 Nil!56895)))

(declare-fun b!4941412 () Bool)

(assert (=> b!4941412 (= e!3087399 0)))

(declare-fun bm!344814 () Bool)

(assert (=> bm!344814 (= call!344819 (size!37707 (list!18095 totalInput!685)))))

(declare-fun d!1591049 () Bool)

(assert (=> d!1591049 e!3087398))

(declare-fun res!2108691 () Bool)

(assert (=> d!1591049 (=> (not res!2108691) (not e!3087398))))

(assert (=> d!1591049 (= res!2108691 (= ((_ map implies) (content!10122 lt!2036920) (content!10122 (list!18095 totalInput!685))) ((as const (InoxSet C!27140)) true)))))

(assert (=> d!1591049 (= lt!2036920 e!3087401)))

(declare-fun c!842890 () Bool)

(assert (=> d!1591049 (= c!842890 ((_ is Nil!56895) (list!18095 totalInput!685)))))

(assert (=> d!1591049 (= (drop!2279 (list!18095 totalInput!685) testedPSize!70) lt!2036920)))

(declare-fun b!4941408 () Bool)

(assert (=> b!4941408 (= e!3087397 e!3087399)))

(declare-fun c!842889 () Bool)

(assert (=> b!4941408 (= c!842889 (>= testedPSize!70 call!344819))))

(declare-fun b!4941413 () Bool)

(assert (=> b!4941413 (= e!3087401 e!3087400)))

(declare-fun c!842887 () Bool)

(assert (=> b!4941413 (= c!842887 (<= testedPSize!70 0))))

(declare-fun b!4941414 () Bool)

(assert (=> b!4941414 (= e!3087400 (drop!2279 (t!367527 (list!18095 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1591049 c!842890) b!4941411))

(assert (= (and d!1591049 (not c!842890)) b!4941413))

(assert (= (and b!4941413 c!842887) b!4941409))

(assert (= (and b!4941413 (not c!842887)) b!4941414))

(assert (= (and d!1591049 res!2108691) b!4941406))

(assert (= (and b!4941406 c!842888) b!4941407))

(assert (= (and b!4941406 (not c!842888)) b!4941408))

(assert (= (and b!4941408 c!842889) b!4941412))

(assert (= (and b!4941408 (not c!842889)) b!4941410))

(assert (= (or b!4941407 b!4941408 b!4941410) bm!344814))

(declare-fun m!5964226 () Bool)

(assert (=> b!4941406 m!5964226))

(assert (=> bm!344814 m!5962718))

(assert (=> bm!344814 m!5962960))

(declare-fun m!5964228 () Bool)

(assert (=> d!1591049 m!5964228))

(assert (=> d!1591049 m!5962718))

(assert (=> d!1591049 m!5963618))

(assert (=> b!4941414 m!5964144))

(assert (=> b!4940718 d!1591049))

(declare-fun d!1591051 () Bool)

(assert (=> d!1591051 (= (max!0 (height!1997 (left!41504 (c!842516 totalInput!685))) (height!1997 (right!41834 (c!842516 totalInput!685)))) (ite (< (height!1997 (left!41504 (c!842516 totalInput!685))) (height!1997 (right!41834 (c!842516 totalInput!685)))) (height!1997 (right!41834 (c!842516 totalInput!685))) (height!1997 (left!41504 (c!842516 totalInput!685)))))))

(assert (=> b!4940393 d!1591051))

(assert (=> b!4940393 d!1590943))

(assert (=> b!4940393 d!1590945))

(assert (=> b!4940697 d!1590839))

(assert (=> d!1590607 d!1590605))

(assert (=> d!1590607 d!1590553))

(declare-fun d!1591053 () Bool)

(declare-fun res!2108692 () Bool)

(declare-fun e!3087402 () Bool)

(assert (=> d!1591053 (=> res!2108692 e!3087402)))

(assert (=> d!1591053 (= res!2108692 ((_ is Nil!56898) (ite c!842558 lt!2036628 lt!2036623)))))

(assert (=> d!1591053 (= (forall!13223 (ite c!842558 lt!2036628 lt!2036623) lambda!246231) e!3087402)))

(declare-fun b!4941415 () Bool)

(declare-fun e!3087403 () Bool)

(assert (=> b!4941415 (= e!3087402 e!3087403)))

(declare-fun res!2108693 () Bool)

(assert (=> b!4941415 (=> (not res!2108693) (not e!3087403))))

(assert (=> b!4941415 (= res!2108693 (dynLambda!23030 lambda!246231 (h!63346 (ite c!842558 lt!2036628 lt!2036623))))))

(declare-fun b!4941416 () Bool)

(assert (=> b!4941416 (= e!3087403 (forall!13223 (t!367530 (ite c!842558 lt!2036628 lt!2036623)) lambda!246231))))

(assert (= (and d!1591053 (not res!2108692)) b!4941415))

(assert (= (and b!4941415 res!2108693) b!4941416))

(declare-fun b_lambda!196365 () Bool)

(assert (=> (not b_lambda!196365) (not b!4941415)))

(declare-fun m!5964230 () Bool)

(assert (=> b!4941415 m!5964230))

(declare-fun m!5964232 () Bool)

(assert (=> b!4941416 m!5964232))

(assert (=> d!1590659 d!1591053))

(declare-fun b!4941420 () Bool)

(declare-fun e!3087404 () Bool)

(declare-fun tp!1386289 () Bool)

(declare-fun tp!1386288 () Bool)

(assert (=> b!4941420 (= e!3087404 (and tp!1386289 tp!1386288))))

(declare-fun b!4941417 () Bool)

(assert (=> b!4941417 (= e!3087404 tp_is_empty!36087)))

(assert (=> b!4940809 (= tp!1386250 e!3087404)))

(declare-fun b!4941418 () Bool)

(declare-fun tp!1386290 () Bool)

(declare-fun tp!1386292 () Bool)

(assert (=> b!4941418 (= e!3087404 (and tp!1386290 tp!1386292))))

(declare-fun b!4941419 () Bool)

(declare-fun tp!1386291 () Bool)

(assert (=> b!4941419 (= e!3087404 tp!1386291)))

(assert (= (and b!4940809 ((_ is ElementMatch!13453) (h!63344 (exprs!3595 setElem!27908)))) b!4941417))

(assert (= (and b!4940809 ((_ is Concat!22026) (h!63344 (exprs!3595 setElem!27908)))) b!4941418))

(assert (= (and b!4940809 ((_ is Star!13453) (h!63344 (exprs!3595 setElem!27908)))) b!4941419))

(assert (= (and b!4940809 ((_ is Union!13453) (h!63344 (exprs!3595 setElem!27908)))) b!4941420))

(declare-fun b!4941421 () Bool)

(declare-fun e!3087405 () Bool)

(declare-fun tp!1386293 () Bool)

(declare-fun tp!1386294 () Bool)

(assert (=> b!4941421 (= e!3087405 (and tp!1386293 tp!1386294))))

(assert (=> b!4940809 (= tp!1386251 e!3087405)))

(assert (= (and b!4940809 ((_ is Cons!56896) (t!367528 (exprs!3595 setElem!27908)))) b!4941421))

(declare-fun b!4941422 () Bool)

(declare-fun e!3087406 () Bool)

(declare-fun tp!1386295 () Bool)

(assert (=> b!4941422 (= e!3087406 (and tp_is_empty!36087 tp!1386295))))

(assert (=> b!4940797 (= tp!1386241 e!3087406)))

(assert (= (and b!4940797 ((_ is Cons!56895) (t!367527 (t!367527 (t!367527 testedP!110))))) b!4941422))

(declare-fun tp!1386297 () Bool)

(declare-fun e!3087408 () Bool)

(declare-fun b!4941423 () Bool)

(declare-fun tp!1386298 () Bool)

(assert (=> b!4941423 (= e!3087408 (and (inv!73998 (left!41504 (left!41504 (right!41834 (c!842516 totalInput!685))))) tp!1386297 (inv!73998 (right!41834 (left!41504 (right!41834 (c!842516 totalInput!685))))) tp!1386298))))

(declare-fun b!4941425 () Bool)

(declare-fun e!3087407 () Bool)

(declare-fun tp!1386296 () Bool)

(assert (=> b!4941425 (= e!3087407 tp!1386296)))

(declare-fun b!4941424 () Bool)

(assert (=> b!4941424 (= e!3087408 (and (inv!74004 (xs!18288 (left!41504 (right!41834 (c!842516 totalInput!685))))) e!3087407))))

(assert (=> b!4940806 (= tp!1386248 (and (inv!73998 (left!41504 (right!41834 (c!842516 totalInput!685)))) e!3087408))))

(assert (= (and b!4940806 ((_ is Node!14964) (left!41504 (right!41834 (c!842516 totalInput!685))))) b!4941423))

(assert (= b!4941424 b!4941425))

(assert (= (and b!4940806 ((_ is Leaf!24879) (left!41504 (right!41834 (c!842516 totalInput!685))))) b!4941424))

(declare-fun m!5964234 () Bool)

(assert (=> b!4941423 m!5964234))

(declare-fun m!5964236 () Bool)

(assert (=> b!4941423 m!5964236))

(declare-fun m!5964238 () Bool)

(assert (=> b!4941424 m!5964238))

(assert (=> b!4940806 m!5963414))

(declare-fun b!4941426 () Bool)

(declare-fun tp!1386300 () Bool)

(declare-fun e!3087410 () Bool)

(declare-fun tp!1386301 () Bool)

(assert (=> b!4941426 (= e!3087410 (and (inv!73998 (left!41504 (right!41834 (right!41834 (c!842516 totalInput!685))))) tp!1386300 (inv!73998 (right!41834 (right!41834 (right!41834 (c!842516 totalInput!685))))) tp!1386301))))

(declare-fun b!4941428 () Bool)

(declare-fun e!3087409 () Bool)

(declare-fun tp!1386299 () Bool)

(assert (=> b!4941428 (= e!3087409 tp!1386299)))

(declare-fun b!4941427 () Bool)

(assert (=> b!4941427 (= e!3087410 (and (inv!74004 (xs!18288 (right!41834 (right!41834 (c!842516 totalInput!685))))) e!3087409))))

(assert (=> b!4940806 (= tp!1386249 (and (inv!73998 (right!41834 (right!41834 (c!842516 totalInput!685)))) e!3087410))))

(assert (= (and b!4940806 ((_ is Node!14964) (right!41834 (right!41834 (c!842516 totalInput!685))))) b!4941426))

(assert (= b!4941427 b!4941428))

(assert (= (and b!4940806 ((_ is Leaf!24879) (right!41834 (right!41834 (c!842516 totalInput!685))))) b!4941427))

(declare-fun m!5964240 () Bool)

(assert (=> b!4941426 m!5964240))

(declare-fun m!5964242 () Bool)

(assert (=> b!4941426 m!5964242))

(declare-fun m!5964244 () Bool)

(assert (=> b!4941427 m!5964244))

(assert (=> b!4940806 m!5963416))

(declare-fun b!4941429 () Bool)

(declare-fun e!3087411 () Bool)

(declare-fun tp!1386302 () Bool)

(declare-fun tp!1386303 () Bool)

(assert (=> b!4941429 (= e!3087411 (and tp!1386302 tp!1386303))))

(assert (=> b!4940802 (= tp!1386243 e!3087411)))

(assert (= (and b!4940802 ((_ is Cons!56896) (exprs!3595 setElem!27909))) b!4941429))

(declare-fun b!4941430 () Bool)

(declare-fun e!3087412 () Bool)

(declare-fun tp!1386304 () Bool)

(assert (=> b!4941430 (= e!3087412 (and tp_is_empty!36087 tp!1386304))))

(assert (=> b!4940805 (= tp!1386244 e!3087412)))

(assert (= (and b!4940805 ((_ is Cons!56895) (innerList!15052 (xs!18288 (left!41504 (c!842516 totalInput!685)))))) b!4941430))

(declare-fun b!4941434 () Bool)

(declare-fun e!3087413 () Bool)

(declare-fun tp!1386306 () Bool)

(declare-fun tp!1386305 () Bool)

(assert (=> b!4941434 (= e!3087413 (and tp!1386306 tp!1386305))))

(declare-fun b!4941431 () Bool)

(assert (=> b!4941431 (= e!3087413 tp_is_empty!36087)))

(assert (=> b!4940793 (= tp!1386233 e!3087413)))

(declare-fun b!4941432 () Bool)

(declare-fun tp!1386307 () Bool)

(declare-fun tp!1386309 () Bool)

(assert (=> b!4941432 (= e!3087413 (and tp!1386307 tp!1386309))))

(declare-fun b!4941433 () Bool)

(declare-fun tp!1386308 () Bool)

(assert (=> b!4941433 (= e!3087413 tp!1386308)))

(assert (= (and b!4940793 ((_ is ElementMatch!13453) (regOne!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941431))

(assert (= (and b!4940793 ((_ is Concat!22026) (regOne!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941432))

(assert (= (and b!4940793 ((_ is Star!13453) (regOne!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941433))

(assert (= (and b!4940793 ((_ is Union!13453) (regOne!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941434))

(declare-fun b!4941438 () Bool)

(declare-fun e!3087414 () Bool)

(declare-fun tp!1386311 () Bool)

(declare-fun tp!1386310 () Bool)

(assert (=> b!4941438 (= e!3087414 (and tp!1386311 tp!1386310))))

(declare-fun b!4941435 () Bool)

(assert (=> b!4941435 (= e!3087414 tp_is_empty!36087)))

(assert (=> b!4940793 (= tp!1386232 e!3087414)))

(declare-fun b!4941436 () Bool)

(declare-fun tp!1386312 () Bool)

(declare-fun tp!1386314 () Bool)

(assert (=> b!4941436 (= e!3087414 (and tp!1386312 tp!1386314))))

(declare-fun b!4941437 () Bool)

(declare-fun tp!1386313 () Bool)

(assert (=> b!4941437 (= e!3087414 tp!1386313)))

(assert (= (and b!4940793 ((_ is ElementMatch!13453) (regTwo!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941435))

(assert (= (and b!4940793 ((_ is Concat!22026) (regTwo!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941436))

(assert (= (and b!4940793 ((_ is Star!13453) (regTwo!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941437))

(assert (= (and b!4940793 ((_ is Union!13453) (regTwo!27419 (h!63344 (exprs!3595 setElem!27902))))) b!4941438))

(declare-fun condSetEmpty!27911 () Bool)

(assert (=> setNonEmpty!27909 (= condSetEmpty!27911 (= setRest!27909 ((as const (Array Context!6190 Bool)) false)))))

(declare-fun setRes!27911 () Bool)

(assert (=> setNonEmpty!27909 (= tp!1386242 setRes!27911)))

(declare-fun setIsEmpty!27911 () Bool)

(assert (=> setIsEmpty!27911 setRes!27911))

(declare-fun setElem!27911 () Context!6190)

(declare-fun e!3087415 () Bool)

(declare-fun tp!1386315 () Bool)

(declare-fun setNonEmpty!27911 () Bool)

(assert (=> setNonEmpty!27911 (= setRes!27911 (and tp!1386315 (inv!73996 setElem!27911) e!3087415))))

(declare-fun setRest!27911 () (InoxSet Context!6190))

(assert (=> setNonEmpty!27911 (= setRest!27909 ((_ map or) (store ((as const (Array Context!6190 Bool)) false) setElem!27911 true) setRest!27911))))

(declare-fun b!4941439 () Bool)

(declare-fun tp!1386316 () Bool)

(assert (=> b!4941439 (= e!3087415 tp!1386316)))

(assert (= (and setNonEmpty!27909 condSetEmpty!27911) setIsEmpty!27911))

(assert (= (and setNonEmpty!27909 (not condSetEmpty!27911)) setNonEmpty!27911))

(assert (= setNonEmpty!27911 b!4941439))

(declare-fun m!5964246 () Bool)

(assert (=> setNonEmpty!27911 m!5964246))

(declare-fun b!4941443 () Bool)

(declare-fun e!3087416 () Bool)

(declare-fun tp!1386318 () Bool)

(declare-fun tp!1386317 () Bool)

(assert (=> b!4941443 (= e!3087416 (and tp!1386318 tp!1386317))))

(declare-fun b!4941440 () Bool)

(assert (=> b!4941440 (= e!3087416 tp_is_empty!36087)))

(assert (=> b!4940792 (= tp!1386235 e!3087416)))

(declare-fun b!4941441 () Bool)

(declare-fun tp!1386319 () Bool)

(declare-fun tp!1386321 () Bool)

(assert (=> b!4941441 (= e!3087416 (and tp!1386319 tp!1386321))))

(declare-fun b!4941442 () Bool)

(declare-fun tp!1386320 () Bool)

(assert (=> b!4941442 (= e!3087416 tp!1386320)))

(assert (= (and b!4940792 ((_ is ElementMatch!13453) (reg!13782 (h!63344 (exprs!3595 setElem!27902))))) b!4941440))

(assert (= (and b!4940792 ((_ is Concat!22026) (reg!13782 (h!63344 (exprs!3595 setElem!27902))))) b!4941441))

(assert (= (and b!4940792 ((_ is Star!13453) (reg!13782 (h!63344 (exprs!3595 setElem!27902))))) b!4941442))

(assert (= (and b!4940792 ((_ is Union!13453) (reg!13782 (h!63344 (exprs!3595 setElem!27902))))) b!4941443))

(declare-fun b!4941444 () Bool)

(declare-fun e!3087417 () Bool)

(declare-fun tp!1386322 () Bool)

(assert (=> b!4941444 (= e!3087417 (and tp_is_empty!36087 tp!1386322))))

(assert (=> b!4940796 (= tp!1386240 e!3087417)))

(assert (= (and b!4940796 ((_ is Cons!56895) (t!367527 (innerList!15052 (xs!18288 (c!842516 totalInput!685)))))) b!4941444))

(declare-fun e!3087419 () Bool)

(declare-fun tp!1386324 () Bool)

(declare-fun tp!1386325 () Bool)

(declare-fun b!4941445 () Bool)

(assert (=> b!4941445 (= e!3087419 (and (inv!73998 (left!41504 (left!41504 (left!41504 (c!842516 totalInput!685))))) tp!1386324 (inv!73998 (right!41834 (left!41504 (left!41504 (c!842516 totalInput!685))))) tp!1386325))))

(declare-fun b!4941447 () Bool)

(declare-fun e!3087418 () Bool)

(declare-fun tp!1386323 () Bool)

(assert (=> b!4941447 (= e!3087418 tp!1386323)))

(declare-fun b!4941446 () Bool)

(assert (=> b!4941446 (= e!3087419 (and (inv!74004 (xs!18288 (left!41504 (left!41504 (c!842516 totalInput!685))))) e!3087418))))

(assert (=> b!4940803 (= tp!1386245 (and (inv!73998 (left!41504 (left!41504 (c!842516 totalInput!685)))) e!3087419))))

(assert (= (and b!4940803 ((_ is Node!14964) (left!41504 (left!41504 (c!842516 totalInput!685))))) b!4941445))

(assert (= b!4941446 b!4941447))

(assert (= (and b!4940803 ((_ is Leaf!24879) (left!41504 (left!41504 (c!842516 totalInput!685))))) b!4941446))

(declare-fun m!5964248 () Bool)

(assert (=> b!4941445 m!5964248))

(declare-fun m!5964250 () Bool)

(assert (=> b!4941445 m!5964250))

(declare-fun m!5964252 () Bool)

(assert (=> b!4941446 m!5964252))

(assert (=> b!4940803 m!5963408))

(declare-fun tp!1386327 () Bool)

(declare-fun tp!1386328 () Bool)

(declare-fun e!3087421 () Bool)

(declare-fun b!4941448 () Bool)

(assert (=> b!4941448 (= e!3087421 (and (inv!73998 (left!41504 (right!41834 (left!41504 (c!842516 totalInput!685))))) tp!1386327 (inv!73998 (right!41834 (right!41834 (left!41504 (c!842516 totalInput!685))))) tp!1386328))))

(declare-fun b!4941450 () Bool)

(declare-fun e!3087420 () Bool)

(declare-fun tp!1386326 () Bool)

(assert (=> b!4941450 (= e!3087420 tp!1386326)))

(declare-fun b!4941449 () Bool)

(assert (=> b!4941449 (= e!3087421 (and (inv!74004 (xs!18288 (right!41834 (left!41504 (c!842516 totalInput!685))))) e!3087420))))

(assert (=> b!4940803 (= tp!1386246 (and (inv!73998 (right!41834 (left!41504 (c!842516 totalInput!685)))) e!3087421))))

(assert (= (and b!4940803 ((_ is Node!14964) (right!41834 (left!41504 (c!842516 totalInput!685))))) b!4941448))

(assert (= b!4941449 b!4941450))

(assert (= (and b!4940803 ((_ is Leaf!24879) (right!41834 (left!41504 (c!842516 totalInput!685))))) b!4941449))

(declare-fun m!5964254 () Bool)

(assert (=> b!4941448 m!5964254))

(declare-fun m!5964256 () Bool)

(assert (=> b!4941448 m!5964256))

(declare-fun m!5964258 () Bool)

(assert (=> b!4941449 m!5964258))

(assert (=> b!4940803 m!5963410))

(declare-fun b!4941454 () Bool)

(declare-fun e!3087422 () Bool)

(declare-fun tp!1386330 () Bool)

(declare-fun tp!1386329 () Bool)

(assert (=> b!4941454 (= e!3087422 (and tp!1386330 tp!1386329))))

(declare-fun b!4941451 () Bool)

(assert (=> b!4941451 (= e!3087422 tp_is_empty!36087)))

(assert (=> b!4940791 (= tp!1386234 e!3087422)))

(declare-fun b!4941452 () Bool)

(declare-fun tp!1386331 () Bool)

(declare-fun tp!1386333 () Bool)

(assert (=> b!4941452 (= e!3087422 (and tp!1386331 tp!1386333))))

(declare-fun b!4941453 () Bool)

(declare-fun tp!1386332 () Bool)

(assert (=> b!4941453 (= e!3087422 tp!1386332)))

(assert (= (and b!4940791 ((_ is ElementMatch!13453) (regOne!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941451))

(assert (= (and b!4940791 ((_ is Concat!22026) (regOne!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941452))

(assert (= (and b!4940791 ((_ is Star!13453) (regOne!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941453))

(assert (= (and b!4940791 ((_ is Union!13453) (regOne!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941454))

(declare-fun b!4941458 () Bool)

(declare-fun e!3087423 () Bool)

(declare-fun tp!1386335 () Bool)

(declare-fun tp!1386334 () Bool)

(assert (=> b!4941458 (= e!3087423 (and tp!1386335 tp!1386334))))

(declare-fun b!4941455 () Bool)

(assert (=> b!4941455 (= e!3087423 tp_is_empty!36087)))

(assert (=> b!4940791 (= tp!1386236 e!3087423)))

(declare-fun b!4941456 () Bool)

(declare-fun tp!1386336 () Bool)

(declare-fun tp!1386338 () Bool)

(assert (=> b!4941456 (= e!3087423 (and tp!1386336 tp!1386338))))

(declare-fun b!4941457 () Bool)

(declare-fun tp!1386337 () Bool)

(assert (=> b!4941457 (= e!3087423 tp!1386337)))

(assert (= (and b!4940791 ((_ is ElementMatch!13453) (regTwo!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941455))

(assert (= (and b!4940791 ((_ is Concat!22026) (regTwo!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941456))

(assert (= (and b!4940791 ((_ is Star!13453) (regTwo!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941457))

(assert (= (and b!4940791 ((_ is Union!13453) (regTwo!27418 (h!63344 (exprs!3595 setElem!27902))))) b!4941458))

(declare-fun b!4941459 () Bool)

(declare-fun e!3087424 () Bool)

(declare-fun tp!1386339 () Bool)

(assert (=> b!4941459 (= e!3087424 (and tp_is_empty!36087 tp!1386339))))

(assert (=> b!4940795 (= tp!1386239 e!3087424)))

(assert (= (and b!4940795 ((_ is Cons!56895) (t!367527 (t!367527 (t!367527 testedSuffix!70))))) b!4941459))

(declare-fun b!4941460 () Bool)

(declare-fun e!3087425 () Bool)

(declare-fun tp!1386340 () Bool)

(assert (=> b!4941460 (= e!3087425 (and tp_is_empty!36087 tp!1386340))))

(assert (=> b!4940808 (= tp!1386247 e!3087425)))

(assert (= (and b!4940808 ((_ is Cons!56895) (innerList!15052 (xs!18288 (right!41834 (c!842516 totalInput!685)))))) b!4941460))

(declare-fun b!4941464 () Bool)

(declare-fun e!3087426 () Bool)

(declare-fun tp!1386342 () Bool)

(declare-fun tp!1386341 () Bool)

(assert (=> b!4941464 (= e!3087426 (and tp!1386342 tp!1386341))))

(declare-fun b!4941461 () Bool)

(assert (=> b!4941461 (= e!3087426 tp_is_empty!36087)))

(assert (=> b!4940794 (= tp!1386237 e!3087426)))

(declare-fun b!4941462 () Bool)

(declare-fun tp!1386343 () Bool)

(declare-fun tp!1386345 () Bool)

(assert (=> b!4941462 (= e!3087426 (and tp!1386343 tp!1386345))))

(declare-fun b!4941463 () Bool)

(declare-fun tp!1386344 () Bool)

(assert (=> b!4941463 (= e!3087426 tp!1386344)))

(assert (= (and b!4940794 ((_ is ElementMatch!13453) (h!63344 (t!367528 (exprs!3595 setElem!27902))))) b!4941461))

(assert (= (and b!4940794 ((_ is Concat!22026) (h!63344 (t!367528 (exprs!3595 setElem!27902))))) b!4941462))

(assert (= (and b!4940794 ((_ is Star!13453) (h!63344 (t!367528 (exprs!3595 setElem!27902))))) b!4941463))

(assert (= (and b!4940794 ((_ is Union!13453) (h!63344 (t!367528 (exprs!3595 setElem!27902))))) b!4941464))

(declare-fun b!4941465 () Bool)

(declare-fun e!3087427 () Bool)

(declare-fun tp!1386346 () Bool)

(declare-fun tp!1386347 () Bool)

(assert (=> b!4941465 (= e!3087427 (and tp!1386346 tp!1386347))))

(assert (=> b!4940794 (= tp!1386238 e!3087427)))

(assert (= (and b!4940794 ((_ is Cons!56896) (t!367528 (t!367528 (exprs!3595 setElem!27902))))) b!4941465))

(declare-fun b_lambda!196367 () Bool)

(assert (= b_lambda!196361 (or d!1590531 b_lambda!196367)))

(declare-fun bs!1181297 () Bool)

(declare-fun d!1591055 () Bool)

(assert (= bs!1181297 (and d!1591055 d!1590531)))

(declare-fun lostCause!1127 (Context!6190) Bool)

(assert (=> bs!1181297 (= (dynLambda!23030 lambda!246212 (h!63346 (toList!7980 z!3568))) (lostCause!1127 (h!63346 (toList!7980 z!3568))))))

(declare-fun m!5964260 () Bool)

(assert (=> bs!1181297 m!5964260))

(assert (=> b!4941218 d!1591055))

(declare-fun b_lambda!196369 () Bool)

(assert (= b_lambda!196359 (or d!1590735 b_lambda!196369)))

(declare-fun bs!1181298 () Bool)

(declare-fun d!1591057 () Bool)

(assert (= bs!1181298 (and d!1591057 d!1590735)))

(assert (=> bs!1181298 (= (dynLambda!23026 lambda!246241 (h!63344 (exprs!3595 setElem!27908))) (validRegex!5952 (h!63344 (exprs!3595 setElem!27908))))))

(declare-fun m!5964262 () Bool)

(assert (=> bs!1181298 m!5964262))

(assert (=> b!4941210 d!1591057))

(declare-fun b_lambda!196371 () Bool)

(assert (= b_lambda!196363 (or d!1590531 b_lambda!196371)))

(declare-fun bs!1181299 () Bool)

(declare-fun d!1591059 () Bool)

(assert (= bs!1181299 (and d!1591059 d!1590531)))

(assert (=> bs!1181299 (= (dynLambda!23030 lambda!246212 (h!63346 lt!2036623)) (lostCause!1127 (h!63346 lt!2036623)))))

(declare-fun m!5964264 () Bool)

(assert (=> bs!1181299 m!5964264))

(assert (=> b!4941367 d!1591059))

(declare-fun b_lambda!196373 () Bool)

(assert (= b_lambda!196353 (or d!1590489 b_lambda!196373)))

(declare-fun bs!1181300 () Bool)

(declare-fun d!1591061 () Bool)

(assert (= bs!1181300 (and d!1591061 d!1590489)))

(assert (=> bs!1181300 (= (dynLambda!23026 lambda!246196 (h!63344 (t!367528 (exprs!3595 setElem!27902)))) (validRegex!5952 (h!63344 (t!367528 (exprs!3595 setElem!27902)))))))

(declare-fun m!5964266 () Bool)

(assert (=> bs!1181300 m!5964266))

(assert (=> b!4940920 d!1591061))

(declare-fun b_lambda!196375 () Bool)

(assert (= b_lambda!196355 (or d!1590531 b_lambda!196375)))

(declare-fun bs!1181301 () Bool)

(declare-fun d!1591063 () Bool)

(assert (= bs!1181301 (and d!1591063 d!1590531)))

(assert (=> bs!1181301 (= (dynLambda!23030 lambda!246212 (h!63346 lt!2036628)) (lostCause!1127 (h!63346 lt!2036628)))))

(declare-fun m!5964268 () Bool)

(assert (=> bs!1181301 m!5964268))

(assert (=> b!4941124 d!1591063))

(declare-fun b_lambda!196377 () Bool)

(assert (= b_lambda!196357 (or d!1590623 b_lambda!196377)))

(declare-fun bs!1181302 () Bool)

(declare-fun d!1591065 () Bool)

(assert (= bs!1181302 (and d!1591065 d!1590623)))

(assert (=> bs!1181302 (= (dynLambda!23030 lambda!246221 lt!2036874) (not (lostCause!1127 lt!2036874)))))

(declare-fun m!5964270 () Bool)

(assert (=> bs!1181302 m!5964270))

(assert (=> d!1590955 d!1591065))

(declare-fun b_lambda!196379 () Bool)

(assert (= b_lambda!196365 (or d!1590659 b_lambda!196379)))

(declare-fun bs!1181303 () Bool)

(declare-fun d!1591067 () Bool)

(assert (= bs!1181303 (and d!1591067 d!1590659)))

(assert (=> bs!1181303 (= (dynLambda!23030 lambda!246231 (h!63346 (ite c!842558 lt!2036628 lt!2036623))) (not (dynLambda!23030 (ite c!842558 lambda!246213 lambda!246214) (h!63346 (ite c!842558 lt!2036628 lt!2036623)))))))

(declare-fun b_lambda!196381 () Bool)

(assert (=> (not b_lambda!196381) (not bs!1181303)))

(declare-fun m!5964272 () Bool)

(assert (=> bs!1181303 m!5964272))

(assert (=> b!4941415 d!1591067))

(check-sat (not d!1590901) (not b!4941159) (not b!4941088) (not b!4941457) (not d!1590955) (not d!1590961) (not b!4941200) (not b!4941351) (not b!4941164) (not bm!344750) (not b!4941272) (not b!4941315) (not b!4941094) (not b!4941054) (not b!4941072) (not b!4941462) (not b!4941020) (not b!4941439) (not b!4941459) (not b!4941347) (not bm!344798) (not b!4940910) (not b!4941165) (not b!4941063) (not b!4941053) (not b!4941307) (not b!4941294) (not b!4941423) (not d!1590915) (not b!4941103) (not b!4941325) (not b!4941050) (not b!4941430) (not bs!1181299) (not bs!1181301) (not b!4941166) (not b!4941066) (not b!4941030) (not b!4941219) (not b!4940964) (not b!4940950) (not b!4941221) (not b!4941052) (not b!4940952) (not b!4941114) (not b!4941345) (not b!4941093) (not d!1590923) (not d!1591039) (not b_lambda!196377) (not b!4941167) (not bm!344809) (not b!4941125) (not b!4941338) (not d!1590925) (not b!4941048) (not b!4941360) (not b!4941223) (not d!1590871) (not b!4941406) (not b!4940917) (not b!4940915) (not bm!344802) (not bm!344796) (not bm!344814) (not d!1590827) (not b!4941104) (not b!4940919) (not b!4940966) (not b!4941442) (not b_lambda!196375) (not d!1590885) (not b!4941275) (not b!4941100) (not b!4941350) (not b!4941161) (not d!1591023) (not b!4941389) (not b!4941036) (not b!4941321) (not d!1590847) (not b!4941344) (not b_lambda!196373) (not b!4941162) (not b!4941046) (not b!4941288) (not d!1590839) (not bm!344813) (not b!4941359) (not b!4940993) (not b!4941313) (not b!4940916) (not b!4941444) (not b!4941035) (not b!4941422) (not b!4941058) (not b!4941380) (not b!4940956) (not d!1590895) (not b!4941158) (not b!4940995) (not b!4941332) (not bm!344805) (not b!4941284) (not b!4941042) (not b!4941370) (not d!1590971) (not b!4941400) (not b!4940988) (not b!4941163) (not d!1591029) (not b!4941085) (not d!1590911) (not b!4941374) (not b!4941371) (not b!4941418) (not d!1591013) (not b!4941067) (not bm!344759) (not d!1590833) (not b!4941348) (not b!4941193) (not d!1591035) (not b!4941296) (not bs!1181300) (not b!4941060) (not bm!344748) (not b!4941343) (not b!4941362) (not d!1591007) (not b!4940961) (not d!1591043) (not b!4940959) (not d!1590811) (not b!4940999) (not b!4941022) (not b!4940957) (not b!4941175) (not b!4941445) (not d!1590921) (not b!4941447) (not b!4941339) (not b!4940955) (not b!4941080) (not b!4941281) (not b_lambda!196349) (not b!4941084) (not d!1590953) (not b!4940996) (not d!1590903) (not b!4940994) (not b!4941421) (not b!4941212) (not b!4941028) (not b!4941098) (not b!4940911) (not b!4941463) (not bm!344795) (not b!4941195) (not d!1590973) (not b!4941091) (not b!4941276) (not b!4941452) (not b!4941215) (not b!4940958) (not b!4940967) (not b!4941340) (not b!4941443) (not b!4941456) (not d!1591019) (not b!4940998) (not b!4941341) (not b!4941318) (not b!4941118) (not b!4941286) (not b!4941438) (not b!4941027) (not bs!1181302) (not b!4941379) (not bm!344808) (not b!4941424) (not b!4941031) (not b!4941177) (not b!4941396) (not d!1591049) (not b!4941115) (not setNonEmpty!27911) (not b!4941460) (not b!4940968) (not d!1590841) (not d!1590979) (not b!4941368) (not d!1590931) (not b!4941361) (not b!4941204) (not b!4941434) (not bs!1181298) (not b!4941291) (not bm!344756) (not bs!1181297) (not b!4941414) (not b_lambda!196381) (not b!4941081) (not b!4940965) (not b!4941441) (not b!4941211) (not b!4941299) (not b!4941190) (not b_lambda!196379) (not b!4941395) (not b!4941358) (not b!4941207) (not b!4941420) (not b!4941061) (not b!4941300) (not d!1591047) (not b!4941071) (not b!4941041) (not b!4941448) (not d!1590873) (not b!4941458) (not b!4941002) (not b!4941425) (not d!1590917) (not b!4940803) (not b!4941019) (not bm!344811) (not b!4941110) (not b!4941416) (not b!4941173) (not b!4941402) (not d!1590965) (not d!1590987) (not b!4941401) (not d!1590927) (not b!4940997) (not b!4940913) (not b!4941364) (not b!4941346) (not b!4941450) (not b!4941308) (not b!4941312) (not b!4941453) (not b!4941155) (not b!4941399) (not b!4940960) (not b!4941078) (not d!1590913) (not b!4940970) (not b!4941216) (not b!4941082) (not b!4940986) (not b!4940806) (not b!4941107) (not b!4941147) (not d!1590999) (not d!1590869) (not b!4941089) (not b!4941044) (not b_lambda!196367) (not b!4941433) (not b!4941096) (not b_lambda!196371) (not b!4941388) (not b!4941387) (not b!4940963) (not bm!344810) tp_is_empty!36087 (not b!4941427) (not b!4941172) (not d!1591025) (not b!4941454) (not bm!344807) (not b!4941169) (not b!4941428) (not bm!344803) (not b!4941119) (not b!4941432) (not d!1590897) (not b!4941202) (not d!1590967) (not b!4941419) (not b!4940908) (not b!4941075) (not b!4941001) (not d!1590845) (not d!1590835) (not b!4941398) (not b!4940945) (not b!4941464) (not b_lambda!196369) (not b!4941056) (not b!4941357) (not b!4941436) (not b!4941465) (not b!4941305) (not b!4941303) (not b!4940921) (not b!4941092) (not d!1590837) (not b!4941446) (not b!4941429) (not b!4941304) (not b!4941076) (not d!1590959) (not b!4941353) (not b!4940962) (not d!1590905) (not b!4940991) (not b!4941128) (not b!4941437) (not d!1590997) (not b!4941366) (not b!4941403) (not b!4940990) (not b!4941290) (not b!4941206) (not b!4941405) (not b!4941090) (not b!4941426) (not b!4941033) (not b!4941449) (not bm!344755) (not b!4941109) (not b!4941354) (not b!4941316))
(check-sat)
