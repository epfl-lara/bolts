; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531510 () Bool)

(assert start!531510)

(declare-fun e!3140380 () Bool)

(declare-fun setNonEmpty!28908 () Bool)

(declare-fun tp!1408905 () Bool)

(declare-fun setRes!28908 () Bool)

(declare-datatypes ((C!28088 0))(
  ( (C!28089 (val!23420 Int)) )
))
(declare-datatypes ((Regex!13919 0))(
  ( (ElementMatch!13919 (c!859997 C!28088)) (Concat!22712 (regOne!28350 Regex!13919) (regTwo!28350 Regex!13919)) (EmptyExpr!13919) (Star!13919 (reg!14248 Regex!13919)) (EmptyLang!13919) (Union!13919 (regOne!28351 Regex!13919) (regTwo!28351 Regex!13919)) )
))
(declare-datatypes ((List!58292 0))(
  ( (Nil!58168) (Cons!58168 (h!64616 Regex!13919) (t!370700 List!58292)) )
))
(declare-datatypes ((Context!6688 0))(
  ( (Context!6689 (exprs!3844 List!58292)) )
))
(declare-fun setElem!28908 () Context!6688)

(declare-fun inv!76707 (Context!6688) Bool)

(assert (=> setNonEmpty!28908 (= setRes!28908 (and tp!1408905 (inv!76707 setElem!28908) e!3140380))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6688))

(declare-fun setRest!28908 () (InoxSet Context!6688))

(assert (=> setNonEmpty!28908 (= z!4747 ((_ map or) (store ((as const (Array Context!6688 Bool)) false) setElem!28908 true) setRest!28908))))

(declare-fun b!5027058 () Bool)

(declare-fun res!2143034 () Bool)

(declare-fun e!3140379 () Bool)

(assert (=> b!5027058 (=> (not res!2143034) (not e!3140379))))

(declare-fun e!3140383 () Bool)

(assert (=> b!5027058 (= res!2143034 e!3140383)))

(declare-fun res!2143033 () Bool)

(assert (=> b!5027058 (=> res!2143033 e!3140383)))

(declare-fun lostCauseZipper!933 ((InoxSet Context!6688)) Bool)

(assert (=> b!5027058 (= res!2143033 (lostCauseZipper!933 z!4747))))

(declare-fun b!5027059 () Bool)

(declare-fun e!3140381 () Bool)

(assert (=> b!5027059 (= e!3140379 e!3140381)))

(declare-fun res!2143037 () Bool)

(assert (=> b!5027059 (=> (not res!2143037) (not e!3140381))))

(declare-fun lt!2080543 () Int)

(assert (=> b!5027059 (= res!2143037 (not (= lt!2080543 0)))))

(declare-datatypes ((List!58293 0))(
  ( (Nil!58169) (Cons!58169 (h!64617 C!28088) (t!370701 List!58293)) )
))
(declare-datatypes ((IArray!30937 0))(
  ( (IArray!30938 (innerList!15526 List!58293)) )
))
(declare-datatypes ((Conc!15438 0))(
  ( (Node!15438 (left!42548 Conc!15438) (right!42878 Conc!15438) (csize!31106 Int) (cheight!15649 Int)) (Leaf!25611 (xs!18764 IArray!30937) (csize!31107 Int)) (Empty!15438) )
))
(declare-datatypes ((BalanceConc!30306 0))(
  ( (BalanceConc!30307 (c!859998 Conc!15438)) )
))
(declare-fun totalInput!1141 () BalanceConc!30306)

(declare-fun from!1228 () Int)

(declare-fun lt!2080544 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!233 ((InoxSet Context!6688) Int BalanceConc!30306 Int) Int)

(assert (=> b!5027059 (= lt!2080543 (findLongestMatchInnerZipperFastV2!233 z!4747 from!1228 totalInput!1141 lt!2080544))))

(declare-fun res!2143036 () Bool)

(declare-fun e!3140382 () Bool)

(assert (=> start!531510 (=> (not res!2143036) (not e!3140382))))

(assert (=> start!531510 (= res!2143036 (>= from!1228 0))))

(assert (=> start!531510 e!3140382))

(assert (=> start!531510 true))

(declare-fun e!3140378 () Bool)

(declare-fun inv!76708 (BalanceConc!30306) Bool)

(assert (=> start!531510 (and (inv!76708 totalInput!1141) e!3140378)))

(declare-fun condSetEmpty!28908 () Bool)

(assert (=> start!531510 (= condSetEmpty!28908 (= z!4747 ((as const (Array Context!6688 Bool)) false)))))

(assert (=> start!531510 setRes!28908))

(declare-fun b!5027060 () Bool)

(declare-fun matchZipper!673 ((InoxSet Context!6688) List!58293) Bool)

(declare-fun take!770 (List!58293 Int) List!58293)

(declare-fun drop!2570 (List!58293 Int) List!58293)

(declare-fun list!18784 (BalanceConc!30306) List!58293)

(assert (=> b!5027060 (= e!3140381 (not (matchZipper!673 z!4747 (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543))))))

(declare-fun b!5027061 () Bool)

(declare-fun tp!1408906 () Bool)

(assert (=> b!5027061 (= e!3140380 tp!1408906)))

(declare-fun b!5027062 () Bool)

(declare-fun tp!1408904 () Bool)

(declare-fun inv!76709 (Conc!15438) Bool)

(assert (=> b!5027062 (= e!3140378 (and (inv!76709 (c!859998 totalInput!1141)) tp!1408904))))

(declare-fun setIsEmpty!28908 () Bool)

(assert (=> setIsEmpty!28908 setRes!28908))

(declare-fun b!5027063 () Bool)

(assert (=> b!5027063 (= e!3140382 e!3140379)))

(declare-fun res!2143035 () Bool)

(assert (=> b!5027063 (=> (not res!2143035) (not e!3140379))))

(assert (=> b!5027063 (= res!2143035 (<= from!1228 lt!2080544))))

(declare-fun size!38710 (BalanceConc!30306) Int)

(assert (=> b!5027063 (= lt!2080544 (size!38710 totalInput!1141))))

(declare-fun b!5027064 () Bool)

(assert (=> b!5027064 (= e!3140383 (= from!1228 lt!2080544))))

(assert (= (and start!531510 res!2143036) b!5027063))

(assert (= (and b!5027063 res!2143035) b!5027058))

(assert (= (and b!5027058 (not res!2143033)) b!5027064))

(assert (= (and b!5027058 res!2143034) b!5027059))

(assert (= (and b!5027059 res!2143037) b!5027060))

(assert (= start!531510 b!5027062))

(assert (= (and start!531510 condSetEmpty!28908) setIsEmpty!28908))

(assert (= (and start!531510 (not condSetEmpty!28908)) setNonEmpty!28908))

(assert (= setNonEmpty!28908 b!5027061))

(declare-fun m!6062502 () Bool)

(assert (=> start!531510 m!6062502))

(declare-fun m!6062504 () Bool)

(assert (=> setNonEmpty!28908 m!6062504))

(declare-fun m!6062506 () Bool)

(assert (=> b!5027063 m!6062506))

(declare-fun m!6062508 () Bool)

(assert (=> b!5027059 m!6062508))

(declare-fun m!6062510 () Bool)

(assert (=> b!5027062 m!6062510))

(declare-fun m!6062512 () Bool)

(assert (=> b!5027060 m!6062512))

(assert (=> b!5027060 m!6062512))

(declare-fun m!6062514 () Bool)

(assert (=> b!5027060 m!6062514))

(assert (=> b!5027060 m!6062514))

(declare-fun m!6062516 () Bool)

(assert (=> b!5027060 m!6062516))

(assert (=> b!5027060 m!6062516))

(declare-fun m!6062518 () Bool)

(assert (=> b!5027060 m!6062518))

(declare-fun m!6062520 () Bool)

(assert (=> b!5027058 m!6062520))

(check-sat (not b!5027063) (not b!5027062) (not setNonEmpty!28908) (not start!531510) (not b!5027058) (not b!5027059) (not b!5027060) (not b!5027061))
(check-sat)
(get-model)

(declare-fun d!1617993 () Bool)

(declare-fun isBalanced!4307 (Conc!15438) Bool)

(assert (=> d!1617993 (= (inv!76708 totalInput!1141) (isBalanced!4307 (c!859998 totalInput!1141)))))

(declare-fun bs!1188167 () Bool)

(assert (= bs!1188167 d!1617993))

(declare-fun m!6062522 () Bool)

(assert (=> bs!1188167 m!6062522))

(assert (=> start!531510 d!1617993))

(declare-fun bs!1188168 () Bool)

(declare-fun b!5027069 () Bool)

(declare-fun d!1617995 () Bool)

(assert (= bs!1188168 (and b!5027069 d!1617995)))

(declare-fun lambda!249348 () Int)

(declare-fun lambda!249347 () Int)

(assert (=> bs!1188168 (not (= lambda!249348 lambda!249347))))

(declare-fun bs!1188169 () Bool)

(declare-fun b!5027070 () Bool)

(assert (= bs!1188169 (and b!5027070 d!1617995)))

(declare-fun lambda!249349 () Int)

(assert (=> bs!1188169 (not (= lambda!249349 lambda!249347))))

(declare-fun bs!1188170 () Bool)

(assert (= bs!1188170 (and b!5027070 b!5027069)))

(assert (=> bs!1188170 (= lambda!249349 lambda!249348)))

(declare-datatypes ((Unit!149365 0))(
  ( (Unit!149366) )
))
(declare-fun e!3140390 () Unit!149365)

(declare-fun Unit!149367 () Unit!149365)

(assert (=> b!5027069 (= e!3140390 Unit!149367)))

(declare-datatypes ((List!58294 0))(
  ( (Nil!58170) (Cons!58170 (h!64618 Context!6688) (t!370702 List!58294)) )
))
(declare-fun lt!2080563 () List!58294)

(declare-fun call!350796 () List!58294)

(assert (=> b!5027069 (= lt!2080563 call!350796)))

(declare-fun lt!2080566 () Unit!149365)

(declare-fun lemmaNotForallThenExists!274 (List!58294 Int) Unit!149365)

(assert (=> b!5027069 (= lt!2080566 (lemmaNotForallThenExists!274 lt!2080563 lambda!249347))))

(declare-fun call!350797 () Bool)

(assert (=> b!5027069 call!350797))

(declare-fun lt!2080561 () Unit!149365)

(assert (=> b!5027069 (= lt!2080561 lt!2080566)))

(declare-fun bm!350791 () Bool)

(declare-fun toList!8125 ((InoxSet Context!6688)) List!58294)

(assert (=> bm!350791 (= call!350796 (toList!8125 z!4747))))

(declare-fun Unit!149368 () Unit!149365)

(assert (=> b!5027070 (= e!3140390 Unit!149368)))

(declare-fun lt!2080564 () List!58294)

(assert (=> b!5027070 (= lt!2080564 call!350796)))

(declare-fun lt!2080562 () Unit!149365)

(declare-fun lemmaForallThenNotExists!257 (List!58294 Int) Unit!149365)

(assert (=> b!5027070 (= lt!2080562 (lemmaForallThenNotExists!257 lt!2080564 lambda!249347))))

(assert (=> b!5027070 (not call!350797)))

(declare-fun lt!2080565 () Unit!149365)

(assert (=> b!5027070 (= lt!2080565 lt!2080562)))

(declare-fun lt!2080567 () Bool)

(declare-datatypes ((Option!14604 0))(
  ( (None!14603) (Some!14603 (v!50612 List!58293)) )
))
(declare-fun isEmpty!31457 (Option!14604) Bool)

(declare-fun getLanguageWitness!745 ((InoxSet Context!6688)) Option!14604)

(assert (=> d!1617995 (= lt!2080567 (isEmpty!31457 (getLanguageWitness!745 z!4747)))))

(declare-fun forall!13434 ((InoxSet Context!6688) Int) Bool)

(assert (=> d!1617995 (= lt!2080567 (forall!13434 z!4747 lambda!249347))))

(declare-fun lt!2080568 () Unit!149365)

(assert (=> d!1617995 (= lt!2080568 e!3140390)))

(declare-fun c!860009 () Bool)

(assert (=> d!1617995 (= c!860009 (not (forall!13434 z!4747 lambda!249347)))))

(assert (=> d!1617995 (= (lostCauseZipper!933 z!4747) lt!2080567)))

(declare-fun bm!350792 () Bool)

(declare-fun exists!1400 (List!58294 Int) Bool)

(assert (=> bm!350792 (= call!350797 (exists!1400 (ite c!860009 lt!2080563 lt!2080564) (ite c!860009 lambda!249348 lambda!249349)))))

(assert (= (and d!1617995 c!860009) b!5027069))

(assert (= (and d!1617995 (not c!860009)) b!5027070))

(assert (= (or b!5027069 b!5027070) bm!350791))

(assert (= (or b!5027069 b!5027070) bm!350792))

(declare-fun m!6062524 () Bool)

(assert (=> bm!350792 m!6062524))

(declare-fun m!6062526 () Bool)

(assert (=> bm!350791 m!6062526))

(declare-fun m!6062528 () Bool)

(assert (=> d!1617995 m!6062528))

(assert (=> d!1617995 m!6062528))

(declare-fun m!6062530 () Bool)

(assert (=> d!1617995 m!6062530))

(declare-fun m!6062532 () Bool)

(assert (=> d!1617995 m!6062532))

(assert (=> d!1617995 m!6062532))

(declare-fun m!6062534 () Bool)

(assert (=> b!5027070 m!6062534))

(declare-fun m!6062536 () Bool)

(assert (=> b!5027069 m!6062536))

(assert (=> b!5027058 d!1617995))

(declare-fun d!1617999 () Bool)

(declare-fun lt!2080571 () Int)

(declare-fun size!38711 (List!58293) Int)

(assert (=> d!1617999 (= lt!2080571 (size!38711 (list!18784 totalInput!1141)))))

(declare-fun size!38712 (Conc!15438) Int)

(assert (=> d!1617999 (= lt!2080571 (size!38712 (c!859998 totalInput!1141)))))

(assert (=> d!1617999 (= (size!38710 totalInput!1141) lt!2080571)))

(declare-fun bs!1188171 () Bool)

(assert (= bs!1188171 d!1617999))

(assert (=> bs!1188171 m!6062512))

(assert (=> bs!1188171 m!6062512))

(declare-fun m!6062538 () Bool)

(assert (=> bs!1188171 m!6062538))

(declare-fun m!6062540 () Bool)

(assert (=> bs!1188171 m!6062540))

(assert (=> b!5027063 d!1617999))

(declare-fun b!5027087 () Bool)

(declare-fun e!3140405 () Int)

(assert (=> b!5027087 (= e!3140405 0)))

(declare-fun b!5027088 () Bool)

(declare-fun e!3140404 () Int)

(assert (=> b!5027088 (= e!3140404 1)))

(declare-fun b!5027089 () Bool)

(declare-fun e!3140401 () Int)

(declare-fun lt!2080580 () Int)

(assert (=> b!5027089 (= e!3140401 (+ 1 lt!2080580))))

(declare-fun b!5027090 () Bool)

(assert (=> b!5027090 (= e!3140404 0)))

(declare-fun b!5027091 () Bool)

(declare-fun e!3140403 () Bool)

(assert (=> b!5027091 (= e!3140403 (<= from!1228 (size!38710 totalInput!1141)))))

(declare-fun d!1618001 () Bool)

(declare-fun lt!2080579 () Int)

(assert (=> d!1618001 (and (>= lt!2080579 0) (<= lt!2080579 (- lt!2080544 from!1228)))))

(assert (=> d!1618001 (= lt!2080579 e!3140405)))

(declare-fun c!860016 () Bool)

(declare-fun e!3140402 () Bool)

(assert (=> d!1618001 (= c!860016 e!3140402)))

(declare-fun res!2143043 () Bool)

(assert (=> d!1618001 (=> res!2143043 e!3140402)))

(assert (=> d!1618001 (= res!2143043 (= from!1228 lt!2080544))))

(assert (=> d!1618001 e!3140403))

(declare-fun res!2143042 () Bool)

(assert (=> d!1618001 (=> (not res!2143042) (not e!3140403))))

(assert (=> d!1618001 (= res!2143042 (>= from!1228 0))))

(assert (=> d!1618001 (= (findLongestMatchInnerZipperFastV2!233 z!4747 from!1228 totalInput!1141 lt!2080544) lt!2080579)))

(declare-fun b!5027092 () Bool)

(assert (=> b!5027092 (= e!3140405 e!3140401)))

(declare-fun lt!2080578 () (InoxSet Context!6688))

(declare-fun derivationStepZipper!714 ((InoxSet Context!6688) C!28088) (InoxSet Context!6688))

(declare-fun apply!14164 (BalanceConc!30306 Int) C!28088)

(assert (=> b!5027092 (= lt!2080578 (derivationStepZipper!714 z!4747 (apply!14164 totalInput!1141 from!1228)))))

(assert (=> b!5027092 (= lt!2080580 (findLongestMatchInnerZipperFastV2!233 lt!2080578 (+ from!1228 1) totalInput!1141 lt!2080544))))

(declare-fun c!860018 () Bool)

(assert (=> b!5027092 (= c!860018 (> lt!2080580 0))))

(declare-fun b!5027093 () Bool)

(declare-fun c!860017 () Bool)

(declare-fun nullableZipper!931 ((InoxSet Context!6688)) Bool)

(assert (=> b!5027093 (= c!860017 (nullableZipper!931 lt!2080578))))

(assert (=> b!5027093 (= e!3140401 e!3140404)))

(declare-fun b!5027094 () Bool)

(assert (=> b!5027094 (= e!3140402 (lostCauseZipper!933 z!4747))))

(assert (= (and d!1618001 res!2143042) b!5027091))

(assert (= (and d!1618001 (not res!2143043)) b!5027094))

(assert (= (and d!1618001 c!860016) b!5027087))

(assert (= (and d!1618001 (not c!860016)) b!5027092))

(assert (= (and b!5027092 c!860018) b!5027089))

(assert (= (and b!5027092 (not c!860018)) b!5027093))

(assert (= (and b!5027093 c!860017) b!5027088))

(assert (= (and b!5027093 (not c!860017)) b!5027090))

(assert (=> b!5027091 m!6062506))

(declare-fun m!6062542 () Bool)

(assert (=> b!5027092 m!6062542))

(assert (=> b!5027092 m!6062542))

(declare-fun m!6062544 () Bool)

(assert (=> b!5027092 m!6062544))

(declare-fun m!6062546 () Bool)

(assert (=> b!5027092 m!6062546))

(declare-fun m!6062548 () Bool)

(assert (=> b!5027093 m!6062548))

(assert (=> b!5027094 m!6062520))

(assert (=> b!5027059 d!1618001))

(declare-fun d!1618003 () Bool)

(declare-fun c!860021 () Bool)

(declare-fun isEmpty!31458 (List!58293) Bool)

(assert (=> d!1618003 (= c!860021 (isEmpty!31458 (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543)))))

(declare-fun e!3140408 () Bool)

(assert (=> d!1618003 (= (matchZipper!673 z!4747 (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543)) e!3140408)))

(declare-fun b!5027099 () Bool)

(assert (=> b!5027099 (= e!3140408 (nullableZipper!931 z!4747))))

(declare-fun b!5027100 () Bool)

(declare-fun head!10779 (List!58293) C!28088)

(declare-fun tail!9912 (List!58293) List!58293)

(assert (=> b!5027100 (= e!3140408 (matchZipper!673 (derivationStepZipper!714 z!4747 (head!10779 (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543))) (tail!9912 (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543))))))

(assert (= (and d!1618003 c!860021) b!5027099))

(assert (= (and d!1618003 (not c!860021)) b!5027100))

(assert (=> d!1618003 m!6062516))

(declare-fun m!6062550 () Bool)

(assert (=> d!1618003 m!6062550))

(declare-fun m!6062552 () Bool)

(assert (=> b!5027099 m!6062552))

(assert (=> b!5027100 m!6062516))

(declare-fun m!6062554 () Bool)

(assert (=> b!5027100 m!6062554))

(assert (=> b!5027100 m!6062554))

(declare-fun m!6062556 () Bool)

(assert (=> b!5027100 m!6062556))

(assert (=> b!5027100 m!6062516))

(declare-fun m!6062558 () Bool)

(assert (=> b!5027100 m!6062558))

(assert (=> b!5027100 m!6062556))

(assert (=> b!5027100 m!6062558))

(declare-fun m!6062560 () Bool)

(assert (=> b!5027100 m!6062560))

(assert (=> b!5027060 d!1618003))

(declare-fun d!1618005 () Bool)

(declare-fun e!3140418 () Bool)

(assert (=> d!1618005 e!3140418))

(declare-fun res!2143046 () Bool)

(assert (=> d!1618005 (=> (not res!2143046) (not e!3140418))))

(declare-fun lt!2080583 () List!58293)

(declare-fun content!10310 (List!58293) (InoxSet C!28088))

(assert (=> d!1618005 (= res!2143046 (= ((_ map implies) (content!10310 lt!2080583) (content!10310 (drop!2570 (list!18784 totalInput!1141) from!1228))) ((as const (InoxSet C!28088)) true)))))

(declare-fun e!3140420 () List!58293)

(assert (=> d!1618005 (= lt!2080583 e!3140420)))

(declare-fun c!860028 () Bool)

(get-info :version)

(assert (=> d!1618005 (= c!860028 (or ((_ is Nil!58169) (drop!2570 (list!18784 totalInput!1141) from!1228)) (<= lt!2080543 0)))))

(assert (=> d!1618005 (= (take!770 (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080543) lt!2080583)))

(declare-fun b!5027115 () Bool)

(declare-fun e!3140417 () Int)

(declare-fun e!3140419 () Int)

(assert (=> b!5027115 (= e!3140417 e!3140419)))

(declare-fun c!860030 () Bool)

(assert (=> b!5027115 (= c!860030 (>= lt!2080543 (size!38711 (drop!2570 (list!18784 totalInput!1141) from!1228))))))

(declare-fun b!5027116 () Bool)

(assert (=> b!5027116 (= e!3140417 0)))

(declare-fun b!5027117 () Bool)

(assert (=> b!5027117 (= e!3140420 Nil!58169)))

(declare-fun b!5027118 () Bool)

(assert (=> b!5027118 (= e!3140419 (size!38711 (drop!2570 (list!18784 totalInput!1141) from!1228)))))

(declare-fun b!5027119 () Bool)

(assert (=> b!5027119 (= e!3140420 (Cons!58169 (h!64617 (drop!2570 (list!18784 totalInput!1141) from!1228)) (take!770 (t!370701 (drop!2570 (list!18784 totalInput!1141) from!1228)) (- lt!2080543 1))))))

(declare-fun b!5027120 () Bool)

(assert (=> b!5027120 (= e!3140418 (= (size!38711 lt!2080583) e!3140417))))

(declare-fun c!860029 () Bool)

(assert (=> b!5027120 (= c!860029 (<= lt!2080543 0))))

(declare-fun b!5027121 () Bool)

(assert (=> b!5027121 (= e!3140419 lt!2080543)))

(assert (= (and d!1618005 c!860028) b!5027117))

(assert (= (and d!1618005 (not c!860028)) b!5027119))

(assert (= (and d!1618005 res!2143046) b!5027120))

(assert (= (and b!5027120 c!860029) b!5027116))

(assert (= (and b!5027120 (not c!860029)) b!5027115))

(assert (= (and b!5027115 c!860030) b!5027118))

(assert (= (and b!5027115 (not c!860030)) b!5027121))

(assert (=> b!5027118 m!6062514))

(declare-fun m!6062562 () Bool)

(assert (=> b!5027118 m!6062562))

(declare-fun m!6062564 () Bool)

(assert (=> b!5027120 m!6062564))

(declare-fun m!6062566 () Bool)

(assert (=> d!1618005 m!6062566))

(assert (=> d!1618005 m!6062514))

(declare-fun m!6062568 () Bool)

(assert (=> d!1618005 m!6062568))

(assert (=> b!5027115 m!6062514))

(assert (=> b!5027115 m!6062562))

(declare-fun m!6062570 () Bool)

(assert (=> b!5027119 m!6062570))

(assert (=> b!5027060 d!1618005))

(declare-fun b!5027140 () Bool)

(declare-fun e!3140435 () Bool)

(declare-fun lt!2080586 () List!58293)

(declare-fun e!3140433 () Int)

(assert (=> b!5027140 (= e!3140435 (= (size!38711 lt!2080586) e!3140433))))

(declare-fun c!860040 () Bool)

(assert (=> b!5027140 (= c!860040 (<= from!1228 0))))

(declare-fun b!5027141 () Bool)

(declare-fun e!3140431 () List!58293)

(assert (=> b!5027141 (= e!3140431 (list!18784 totalInput!1141))))

(declare-fun b!5027142 () Bool)

(declare-fun e!3140434 () List!58293)

(assert (=> b!5027142 (= e!3140434 e!3140431)))

(declare-fun c!860039 () Bool)

(assert (=> b!5027142 (= c!860039 (<= from!1228 0))))

(declare-fun b!5027143 () Bool)

(assert (=> b!5027143 (= e!3140431 (drop!2570 (t!370701 (list!18784 totalInput!1141)) (- from!1228 1)))))

(declare-fun bm!350795 () Bool)

(declare-fun call!350800 () Int)

(assert (=> bm!350795 (= call!350800 (size!38711 (list!18784 totalInput!1141)))))

(declare-fun b!5027144 () Bool)

(assert (=> b!5027144 (= e!3140434 Nil!58169)))

(declare-fun d!1618007 () Bool)

(assert (=> d!1618007 e!3140435))

(declare-fun res!2143049 () Bool)

(assert (=> d!1618007 (=> (not res!2143049) (not e!3140435))))

(assert (=> d!1618007 (= res!2143049 (= ((_ map implies) (content!10310 lt!2080586) (content!10310 (list!18784 totalInput!1141))) ((as const (InoxSet C!28088)) true)))))

(assert (=> d!1618007 (= lt!2080586 e!3140434)))

(declare-fun c!860042 () Bool)

(assert (=> d!1618007 (= c!860042 ((_ is Nil!58169) (list!18784 totalInput!1141)))))

(assert (=> d!1618007 (= (drop!2570 (list!18784 totalInput!1141) from!1228) lt!2080586)))

(declare-fun b!5027145 () Bool)

(declare-fun e!3140432 () Int)

(assert (=> b!5027145 (= e!3140432 (- call!350800 from!1228))))

(declare-fun b!5027146 () Bool)

(assert (=> b!5027146 (= e!3140433 call!350800)))

(declare-fun b!5027147 () Bool)

(assert (=> b!5027147 (= e!3140432 0)))

(declare-fun b!5027148 () Bool)

(assert (=> b!5027148 (= e!3140433 e!3140432)))

(declare-fun c!860041 () Bool)

(assert (=> b!5027148 (= c!860041 (>= from!1228 call!350800))))

(assert (= (and d!1618007 c!860042) b!5027144))

(assert (= (and d!1618007 (not c!860042)) b!5027142))

(assert (= (and b!5027142 c!860039) b!5027141))

(assert (= (and b!5027142 (not c!860039)) b!5027143))

(assert (= (and d!1618007 res!2143049) b!5027140))

(assert (= (and b!5027140 c!860040) b!5027146))

(assert (= (and b!5027140 (not c!860040)) b!5027148))

(assert (= (and b!5027148 c!860041) b!5027147))

(assert (= (and b!5027148 (not c!860041)) b!5027145))

(assert (= (or b!5027146 b!5027148 b!5027145) bm!350795))

(declare-fun m!6062572 () Bool)

(assert (=> b!5027140 m!6062572))

(declare-fun m!6062574 () Bool)

(assert (=> b!5027143 m!6062574))

(assert (=> bm!350795 m!6062512))

(assert (=> bm!350795 m!6062538))

(declare-fun m!6062576 () Bool)

(assert (=> d!1618007 m!6062576))

(assert (=> d!1618007 m!6062512))

(declare-fun m!6062578 () Bool)

(assert (=> d!1618007 m!6062578))

(assert (=> b!5027060 d!1618007))

(declare-fun d!1618009 () Bool)

(declare-fun list!18785 (Conc!15438) List!58293)

(assert (=> d!1618009 (= (list!18784 totalInput!1141) (list!18785 (c!859998 totalInput!1141)))))

(declare-fun bs!1188172 () Bool)

(assert (= bs!1188172 d!1618009))

(declare-fun m!6062580 () Bool)

(assert (=> bs!1188172 m!6062580))

(assert (=> b!5027060 d!1618009))

(declare-fun d!1618011 () Bool)

(declare-fun c!860045 () Bool)

(assert (=> d!1618011 (= c!860045 ((_ is Node!15438) (c!859998 totalInput!1141)))))

(declare-fun e!3140440 () Bool)

(assert (=> d!1618011 (= (inv!76709 (c!859998 totalInput!1141)) e!3140440)))

(declare-fun b!5027155 () Bool)

(declare-fun inv!76710 (Conc!15438) Bool)

(assert (=> b!5027155 (= e!3140440 (inv!76710 (c!859998 totalInput!1141)))))

(declare-fun b!5027156 () Bool)

(declare-fun e!3140441 () Bool)

(assert (=> b!5027156 (= e!3140440 e!3140441)))

(declare-fun res!2143052 () Bool)

(assert (=> b!5027156 (= res!2143052 (not ((_ is Leaf!25611) (c!859998 totalInput!1141))))))

(assert (=> b!5027156 (=> res!2143052 e!3140441)))

(declare-fun b!5027157 () Bool)

(declare-fun inv!76711 (Conc!15438) Bool)

(assert (=> b!5027157 (= e!3140441 (inv!76711 (c!859998 totalInput!1141)))))

(assert (= (and d!1618011 c!860045) b!5027155))

(assert (= (and d!1618011 (not c!860045)) b!5027156))

(assert (= (and b!5027156 (not res!2143052)) b!5027157))

(declare-fun m!6062582 () Bool)

(assert (=> b!5027155 m!6062582))

(declare-fun m!6062584 () Bool)

(assert (=> b!5027157 m!6062584))

(assert (=> b!5027062 d!1618011))

(declare-fun d!1618013 () Bool)

(declare-fun lambda!249352 () Int)

(declare-fun forall!13435 (List!58292 Int) Bool)

(assert (=> d!1618013 (= (inv!76707 setElem!28908) (forall!13435 (exprs!3844 setElem!28908) lambda!249352))))

(declare-fun bs!1188173 () Bool)

(assert (= bs!1188173 d!1618013))

(declare-fun m!6062586 () Bool)

(assert (=> bs!1188173 m!6062586))

(assert (=> setNonEmpty!28908 d!1618013))

(declare-fun b!5027162 () Bool)

(declare-fun e!3140444 () Bool)

(declare-fun tp!1408911 () Bool)

(declare-fun tp!1408912 () Bool)

(assert (=> b!5027162 (= e!3140444 (and tp!1408911 tp!1408912))))

(assert (=> b!5027061 (= tp!1408906 e!3140444)))

(assert (= (and b!5027061 ((_ is Cons!58168) (exprs!3844 setElem!28908))) b!5027162))

(declare-fun e!3140449 () Bool)

(declare-fun b!5027171 () Bool)

(declare-fun tp!1408920 () Bool)

(declare-fun tp!1408919 () Bool)

(assert (=> b!5027171 (= e!3140449 (and (inv!76709 (left!42548 (c!859998 totalInput!1141))) tp!1408920 (inv!76709 (right!42878 (c!859998 totalInput!1141))) tp!1408919))))

(declare-fun b!5027173 () Bool)

(declare-fun e!3140450 () Bool)

(declare-fun tp!1408921 () Bool)

(assert (=> b!5027173 (= e!3140450 tp!1408921)))

(declare-fun b!5027172 () Bool)

(declare-fun inv!76712 (IArray!30937) Bool)

(assert (=> b!5027172 (= e!3140449 (and (inv!76712 (xs!18764 (c!859998 totalInput!1141))) e!3140450))))

(assert (=> b!5027062 (= tp!1408904 (and (inv!76709 (c!859998 totalInput!1141)) e!3140449))))

(assert (= (and b!5027062 ((_ is Node!15438) (c!859998 totalInput!1141))) b!5027171))

(assert (= b!5027172 b!5027173))

(assert (= (and b!5027062 ((_ is Leaf!25611) (c!859998 totalInput!1141))) b!5027172))

(declare-fun m!6062588 () Bool)

(assert (=> b!5027171 m!6062588))

(declare-fun m!6062590 () Bool)

(assert (=> b!5027171 m!6062590))

(declare-fun m!6062592 () Bool)

(assert (=> b!5027172 m!6062592))

(assert (=> b!5027062 m!6062510))

(declare-fun condSetEmpty!28911 () Bool)

(assert (=> setNonEmpty!28908 (= condSetEmpty!28911 (= setRest!28908 ((as const (Array Context!6688 Bool)) false)))))

(declare-fun setRes!28911 () Bool)

(assert (=> setNonEmpty!28908 (= tp!1408905 setRes!28911)))

(declare-fun setIsEmpty!28911 () Bool)

(assert (=> setIsEmpty!28911 setRes!28911))

(declare-fun tp!1408927 () Bool)

(declare-fun e!3140453 () Bool)

(declare-fun setElem!28911 () Context!6688)

(declare-fun setNonEmpty!28911 () Bool)

(assert (=> setNonEmpty!28911 (= setRes!28911 (and tp!1408927 (inv!76707 setElem!28911) e!3140453))))

(declare-fun setRest!28911 () (InoxSet Context!6688))

(assert (=> setNonEmpty!28911 (= setRest!28908 ((_ map or) (store ((as const (Array Context!6688 Bool)) false) setElem!28911 true) setRest!28911))))

(declare-fun b!5027178 () Bool)

(declare-fun tp!1408926 () Bool)

(assert (=> b!5027178 (= e!3140453 tp!1408926)))

(assert (= (and setNonEmpty!28908 condSetEmpty!28911) setIsEmpty!28911))

(assert (= (and setNonEmpty!28908 (not condSetEmpty!28911)) setNonEmpty!28911))

(assert (= setNonEmpty!28911 b!5027178))

(declare-fun m!6062594 () Bool)

(assert (=> setNonEmpty!28911 m!6062594))

(check-sat (not d!1618005) (not b!5027094) (not b!5027069) (not b!5027118) (not bm!350792) (not b!5027171) (not d!1618007) (not setNonEmpty!28911) (not d!1618003) (not d!1617995) (not b!5027093) (not b!5027120) (not b!5027178) (not b!5027091) (not b!5027100) (not b!5027140) (not b!5027143) (not b!5027155) (not d!1617999) (not bm!350791) (not b!5027062) (not b!5027157) (not b!5027173) (not b!5027162) (not b!5027099) (not b!5027172) (not d!1617993) (not d!1618009) (not b!5027070) (not d!1618013) (not b!5027119) (not b!5027115) (not bm!350795) (not b!5027092))
(check-sat)
