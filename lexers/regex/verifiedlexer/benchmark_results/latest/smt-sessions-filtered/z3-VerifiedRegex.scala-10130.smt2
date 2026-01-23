; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530274 () Bool)

(assert start!530274)

(declare-fun b!5018971 () Bool)

(declare-fun e!3135431 () Bool)

(declare-fun tp!1407488 () Bool)

(assert (=> b!5018971 (= e!3135431 tp!1407488)))

(declare-fun setIsEmpty!28612 () Bool)

(declare-fun setRes!28612 () Bool)

(assert (=> setIsEmpty!28612 setRes!28612))

(declare-fun setNonEmpty!28612 () Bool)

(declare-fun tp!1407486 () Bool)

(declare-datatypes ((C!27940 0))(
  ( (C!27941 (val!23336 Int)) )
))
(declare-datatypes ((Regex!13845 0))(
  ( (ElementMatch!13845 (c!857545 C!27940)) (Concat!22638 (regOne!28202 Regex!13845) (regTwo!28202 Regex!13845)) (EmptyExpr!13845) (Star!13845 (reg!14174 Regex!13845)) (EmptyLang!13845) (Union!13845 (regOne!28203 Regex!13845) (regTwo!28203 Regex!13845)) )
))
(declare-datatypes ((List!58114 0))(
  ( (Nil!57990) (Cons!57990 (h!64438 Regex!13845) (t!370490 List!58114)) )
))
(declare-datatypes ((Context!6540 0))(
  ( (Context!6541 (exprs!3770 List!58114)) )
))
(declare-fun setElem!28612 () Context!6540)

(declare-fun inv!76296 (Context!6540) Bool)

(assert (=> setNonEmpty!28612 (= setRes!28612 (and tp!1407486 (inv!76296 setElem!28612) e!3135431))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4710 () (InoxSet Context!6540))

(declare-fun setRest!28612 () (InoxSet Context!6540))

(assert (=> setNonEmpty!28612 (= z!4710 ((_ map or) (store ((as const (Array Context!6540 Bool)) false) setElem!28612 true) setRest!28612))))

(declare-fun b!5018972 () Bool)

(declare-datatypes ((List!58115 0))(
  ( (Nil!57991) (Cons!57991 (h!64439 C!27940) (t!370491 List!58115)) )
))
(declare-datatypes ((IArray!30789 0))(
  ( (IArray!30790 (innerList!15452 List!58115)) )
))
(declare-datatypes ((Conc!15364 0))(
  ( (Node!15364 (left!42392 Conc!15364) (right!42722 Conc!15364) (csize!30958 Int) (cheight!15575 Int)) (Leaf!25495 (xs!18690 IArray!30789) (csize!30959 Int)) (Empty!15364) )
))
(declare-datatypes ((BalanceConc!30158 0))(
  ( (BalanceConc!30159 (c!857546 Conc!15364)) )
))
(declare-fun totalInput!1125 () BalanceConc!30158)

(declare-fun knownSize!24 () Int)

(declare-fun e!3135432 () Bool)

(declare-fun from!1212 () Int)

(declare-fun lt!2077236 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!169 ((InoxSet Context!6540) Int BalanceConc!30158 Int) Int)

(assert (=> b!5018972 (= e!3135432 (< (findLongestMatchInnerZipperFastV2!169 z!4710 from!1212 totalInput!1125 lt!2077236) knownSize!24))))

(declare-fun res!2140269 () Bool)

(declare-fun e!3135430 () Bool)

(assert (=> start!530274 (=> (not res!2140269) (not e!3135430))))

(assert (=> start!530274 (= res!2140269 (>= from!1212 0))))

(assert (=> start!530274 e!3135430))

(assert (=> start!530274 true))

(declare-fun e!3135433 () Bool)

(declare-fun inv!76297 (BalanceConc!30158) Bool)

(assert (=> start!530274 (and (inv!76297 totalInput!1125) e!3135433)))

(declare-fun condSetEmpty!28612 () Bool)

(assert (=> start!530274 (= condSetEmpty!28612 (= z!4710 ((as const (Array Context!6540 Bool)) false)))))

(assert (=> start!530274 setRes!28612))

(declare-fun b!5018973 () Bool)

(declare-fun tp!1407487 () Bool)

(declare-fun inv!76298 (Conc!15364) Bool)

(assert (=> b!5018973 (= e!3135433 (and (inv!76298 (c!857546 totalInput!1125)) tp!1407487))))

(declare-fun b!5018974 () Bool)

(assert (=> b!5018974 (= e!3135430 e!3135432)))

(declare-fun res!2140267 () Bool)

(assert (=> b!5018974 (=> (not res!2140267) (not e!3135432))))

(assert (=> b!5018974 (= res!2140267 (and (<= from!1212 lt!2077236) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077236 from!1212))))))

(declare-fun size!38573 (BalanceConc!30158) Int)

(assert (=> b!5018974 (= lt!2077236 (size!38573 totalInput!1125))))

(declare-fun b!5018975 () Bool)

(declare-fun res!2140268 () Bool)

(assert (=> b!5018975 (=> (not res!2140268) (not e!3135432))))

(declare-fun matchZipper!613 ((InoxSet Context!6540) List!58115) Bool)

(declare-fun take!704 (List!58115 Int) List!58115)

(declare-fun drop!2508 (List!58115 Int) List!58115)

(declare-fun list!18694 (BalanceConc!30158) List!58115)

(assert (=> b!5018975 (= res!2140268 (matchZipper!613 z!4710 (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24)))))

(declare-fun b!5018976 () Bool)

(declare-fun res!2140266 () Bool)

(assert (=> b!5018976 (=> (not res!2140266) (not e!3135432))))

(assert (=> b!5018976 (= res!2140266 (= knownSize!24 0))))

(assert (= (and start!530274 res!2140269) b!5018974))

(assert (= (and b!5018974 res!2140267) b!5018975))

(assert (= (and b!5018975 res!2140268) b!5018976))

(assert (= (and b!5018976 res!2140266) b!5018972))

(assert (= start!530274 b!5018973))

(assert (= (and start!530274 condSetEmpty!28612) setIsEmpty!28612))

(assert (= (and start!530274 (not condSetEmpty!28612)) setNonEmpty!28612))

(assert (= setNonEmpty!28612 b!5018971))

(declare-fun m!6054228 () Bool)

(assert (=> b!5018972 m!6054228))

(declare-fun m!6054230 () Bool)

(assert (=> b!5018975 m!6054230))

(assert (=> b!5018975 m!6054230))

(declare-fun m!6054232 () Bool)

(assert (=> b!5018975 m!6054232))

(assert (=> b!5018975 m!6054232))

(declare-fun m!6054234 () Bool)

(assert (=> b!5018975 m!6054234))

(assert (=> b!5018975 m!6054234))

(declare-fun m!6054236 () Bool)

(assert (=> b!5018975 m!6054236))

(declare-fun m!6054238 () Bool)

(assert (=> b!5018973 m!6054238))

(declare-fun m!6054240 () Bool)

(assert (=> start!530274 m!6054240))

(declare-fun m!6054242 () Bool)

(assert (=> b!5018974 m!6054242))

(declare-fun m!6054244 () Bool)

(assert (=> setNonEmpty!28612 m!6054244))

(check-sat (not b!5018975) (not start!530274) (not b!5018971) (not b!5018974) (not b!5018972) (not setNonEmpty!28612) (not b!5018973))
(check-sat)
(get-model)

(declare-fun d!1615719 () Bool)

(declare-fun isBalanced!4285 (Conc!15364) Bool)

(assert (=> d!1615719 (= (inv!76297 totalInput!1125) (isBalanced!4285 (c!857546 totalInput!1125)))))

(declare-fun bs!1187107 () Bool)

(assert (= bs!1187107 d!1615719))

(declare-fun m!6054246 () Bool)

(assert (=> bs!1187107 m!6054246))

(assert (=> start!530274 d!1615719))

(declare-fun d!1615723 () Bool)

(declare-fun c!857549 () Bool)

(get-info :version)

(assert (=> d!1615723 (= c!857549 ((_ is Node!15364) (c!857546 totalInput!1125)))))

(declare-fun e!3135438 () Bool)

(assert (=> d!1615723 (= (inv!76298 (c!857546 totalInput!1125)) e!3135438)))

(declare-fun b!5018983 () Bool)

(declare-fun inv!76299 (Conc!15364) Bool)

(assert (=> b!5018983 (= e!3135438 (inv!76299 (c!857546 totalInput!1125)))))

(declare-fun b!5018984 () Bool)

(declare-fun e!3135439 () Bool)

(assert (=> b!5018984 (= e!3135438 e!3135439)))

(declare-fun res!2140272 () Bool)

(assert (=> b!5018984 (= res!2140272 (not ((_ is Leaf!25495) (c!857546 totalInput!1125))))))

(assert (=> b!5018984 (=> res!2140272 e!3135439)))

(declare-fun b!5018985 () Bool)

(declare-fun inv!76300 (Conc!15364) Bool)

(assert (=> b!5018985 (= e!3135439 (inv!76300 (c!857546 totalInput!1125)))))

(assert (= (and d!1615723 c!857549) b!5018983))

(assert (= (and d!1615723 (not c!857549)) b!5018984))

(assert (= (and b!5018984 (not res!2140272)) b!5018985))

(declare-fun m!6054252 () Bool)

(assert (=> b!5018983 m!6054252))

(declare-fun m!6054254 () Bool)

(assert (=> b!5018985 m!6054254))

(assert (=> b!5018973 d!1615723))

(declare-fun b!5019002 () Bool)

(declare-fun c!857557 () Bool)

(declare-fun lt!2077247 () (InoxSet Context!6540))

(declare-fun nullableZipper!897 ((InoxSet Context!6540)) Bool)

(assert (=> b!5019002 (= c!857557 (nullableZipper!897 lt!2077247))))

(declare-fun e!3135453 () Int)

(declare-fun e!3135451 () Int)

(assert (=> b!5019002 (= e!3135453 e!3135451)))

(declare-fun d!1615727 () Bool)

(declare-fun lt!2077246 () Int)

(assert (=> d!1615727 (and (>= lt!2077246 0) (<= lt!2077246 (- lt!2077236 from!1212)))))

(declare-fun e!3135452 () Int)

(assert (=> d!1615727 (= lt!2077246 e!3135452)))

(declare-fun c!857558 () Bool)

(declare-fun e!3135454 () Bool)

(assert (=> d!1615727 (= c!857558 e!3135454)))

(declare-fun res!2140277 () Bool)

(assert (=> d!1615727 (=> res!2140277 e!3135454)))

(assert (=> d!1615727 (= res!2140277 (= from!1212 lt!2077236))))

(declare-fun e!3135450 () Bool)

(assert (=> d!1615727 e!3135450))

(declare-fun res!2140278 () Bool)

(assert (=> d!1615727 (=> (not res!2140278) (not e!3135450))))

(assert (=> d!1615727 (= res!2140278 (>= from!1212 0))))

(assert (=> d!1615727 (= (findLongestMatchInnerZipperFastV2!169 z!4710 from!1212 totalInput!1125 lt!2077236) lt!2077246)))

(declare-fun b!5019003 () Bool)

(assert (=> b!5019003 (= e!3135451 0)))

(declare-fun b!5019004 () Bool)

(assert (=> b!5019004 (= e!3135450 (<= from!1212 (size!38573 totalInput!1125)))))

(declare-fun b!5019005 () Bool)

(declare-fun lt!2077248 () Int)

(assert (=> b!5019005 (= e!3135453 (+ 1 lt!2077248))))

(declare-fun b!5019006 () Bool)

(declare-fun lostCauseZipper!859 ((InoxSet Context!6540)) Bool)

(assert (=> b!5019006 (= e!3135454 (lostCauseZipper!859 z!4710))))

(declare-fun b!5019007 () Bool)

(assert (=> b!5019007 (= e!3135452 e!3135453)))

(declare-fun derivationStepZipper!654 ((InoxSet Context!6540) C!27940) (InoxSet Context!6540))

(declare-fun apply!14033 (BalanceConc!30158 Int) C!27940)

(assert (=> b!5019007 (= lt!2077247 (derivationStepZipper!654 z!4710 (apply!14033 totalInput!1125 from!1212)))))

(assert (=> b!5019007 (= lt!2077248 (findLongestMatchInnerZipperFastV2!169 lt!2077247 (+ from!1212 1) totalInput!1125 lt!2077236))))

(declare-fun c!857556 () Bool)

(assert (=> b!5019007 (= c!857556 (> lt!2077248 0))))

(declare-fun b!5019008 () Bool)

(assert (=> b!5019008 (= e!3135451 1)))

(declare-fun b!5019009 () Bool)

(assert (=> b!5019009 (= e!3135452 0)))

(assert (= (and d!1615727 res!2140278) b!5019004))

(assert (= (and d!1615727 (not res!2140277)) b!5019006))

(assert (= (and d!1615727 c!857558) b!5019009))

(assert (= (and d!1615727 (not c!857558)) b!5019007))

(assert (= (and b!5019007 c!857556) b!5019005))

(assert (= (and b!5019007 (not c!857556)) b!5019002))

(assert (= (and b!5019002 c!857557) b!5019008))

(assert (= (and b!5019002 (not c!857557)) b!5019003))

(declare-fun m!6054256 () Bool)

(assert (=> b!5019002 m!6054256))

(assert (=> b!5019004 m!6054242))

(declare-fun m!6054258 () Bool)

(assert (=> b!5019006 m!6054258))

(declare-fun m!6054260 () Bool)

(assert (=> b!5019007 m!6054260))

(assert (=> b!5019007 m!6054260))

(declare-fun m!6054262 () Bool)

(assert (=> b!5019007 m!6054262))

(declare-fun m!6054264 () Bool)

(assert (=> b!5019007 m!6054264))

(assert (=> b!5018972 d!1615727))

(declare-fun d!1615729 () Bool)

(declare-fun lambda!248681 () Int)

(declare-fun forall!13385 (List!58114 Int) Bool)

(assert (=> d!1615729 (= (inv!76296 setElem!28612) (forall!13385 (exprs!3770 setElem!28612) lambda!248681))))

(declare-fun bs!1187109 () Bool)

(assert (= bs!1187109 d!1615729))

(declare-fun m!6054266 () Bool)

(assert (=> bs!1187109 m!6054266))

(assert (=> setNonEmpty!28612 d!1615729))

(declare-fun d!1615731 () Bool)

(declare-fun c!857561 () Bool)

(declare-fun isEmpty!31407 (List!58115) Bool)

(assert (=> d!1615731 (= c!857561 (isEmpty!31407 (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24)))))

(declare-fun e!3135457 () Bool)

(assert (=> d!1615731 (= (matchZipper!613 z!4710 (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24)) e!3135457)))

(declare-fun b!5019014 () Bool)

(assert (=> b!5019014 (= e!3135457 (nullableZipper!897 z!4710))))

(declare-fun b!5019015 () Bool)

(declare-fun head!10752 (List!58115) C!27940)

(declare-fun tail!9885 (List!58115) List!58115)

(assert (=> b!5019015 (= e!3135457 (matchZipper!613 (derivationStepZipper!654 z!4710 (head!10752 (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24))) (tail!9885 (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24))))))

(assert (= (and d!1615731 c!857561) b!5019014))

(assert (= (and d!1615731 (not c!857561)) b!5019015))

(assert (=> d!1615731 m!6054234))

(declare-fun m!6054268 () Bool)

(assert (=> d!1615731 m!6054268))

(declare-fun m!6054270 () Bool)

(assert (=> b!5019014 m!6054270))

(assert (=> b!5019015 m!6054234))

(declare-fun m!6054272 () Bool)

(assert (=> b!5019015 m!6054272))

(assert (=> b!5019015 m!6054272))

(declare-fun m!6054274 () Bool)

(assert (=> b!5019015 m!6054274))

(assert (=> b!5019015 m!6054234))

(declare-fun m!6054276 () Bool)

(assert (=> b!5019015 m!6054276))

(assert (=> b!5019015 m!6054274))

(assert (=> b!5019015 m!6054276))

(declare-fun m!6054278 () Bool)

(assert (=> b!5019015 m!6054278))

(assert (=> b!5018975 d!1615731))

(declare-fun b!5019030 () Bool)

(declare-fun e!3135466 () List!58115)

(assert (=> b!5019030 (= e!3135466 Nil!57991)))

(declare-fun b!5019031 () Bool)

(assert (=> b!5019031 (= e!3135466 (Cons!57991 (h!64439 (drop!2508 (list!18694 totalInput!1125) from!1212)) (take!704 (t!370491 (drop!2508 (list!18694 totalInput!1125) from!1212)) (- knownSize!24 1))))))

(declare-fun b!5019032 () Bool)

(declare-fun e!3135467 () Int)

(assert (=> b!5019032 (= e!3135467 0)))

(declare-fun d!1615733 () Bool)

(declare-fun e!3135469 () Bool)

(assert (=> d!1615733 e!3135469))

(declare-fun res!2140281 () Bool)

(assert (=> d!1615733 (=> (not res!2140281) (not e!3135469))))

(declare-fun lt!2077251 () List!58115)

(declare-fun content!10276 (List!58115) (InoxSet C!27940))

(assert (=> d!1615733 (= res!2140281 (= ((_ map implies) (content!10276 lt!2077251) (content!10276 (drop!2508 (list!18694 totalInput!1125) from!1212))) ((as const (InoxSet C!27940)) true)))))

(assert (=> d!1615733 (= lt!2077251 e!3135466)))

(declare-fun c!857570 () Bool)

(assert (=> d!1615733 (= c!857570 (or ((_ is Nil!57991) (drop!2508 (list!18694 totalInput!1125) from!1212)) (<= knownSize!24 0)))))

(assert (=> d!1615733 (= (take!704 (drop!2508 (list!18694 totalInput!1125) from!1212) knownSize!24) lt!2077251)))

(declare-fun b!5019033 () Bool)

(declare-fun e!3135468 () Int)

(declare-fun size!38574 (List!58115) Int)

(assert (=> b!5019033 (= e!3135468 (size!38574 (drop!2508 (list!18694 totalInput!1125) from!1212)))))

(declare-fun b!5019034 () Bool)

(assert (=> b!5019034 (= e!3135469 (= (size!38574 lt!2077251) e!3135467))))

(declare-fun c!857569 () Bool)

(assert (=> b!5019034 (= c!857569 (<= knownSize!24 0))))

(declare-fun b!5019035 () Bool)

(assert (=> b!5019035 (= e!3135468 knownSize!24)))

(declare-fun b!5019036 () Bool)

(assert (=> b!5019036 (= e!3135467 e!3135468)))

(declare-fun c!857568 () Bool)

(assert (=> b!5019036 (= c!857568 (>= knownSize!24 (size!38574 (drop!2508 (list!18694 totalInput!1125) from!1212))))))

(assert (= (and d!1615733 c!857570) b!5019030))

(assert (= (and d!1615733 (not c!857570)) b!5019031))

(assert (= (and d!1615733 res!2140281) b!5019034))

(assert (= (and b!5019034 c!857569) b!5019032))

(assert (= (and b!5019034 (not c!857569)) b!5019036))

(assert (= (and b!5019036 c!857568) b!5019033))

(assert (= (and b!5019036 (not c!857568)) b!5019035))

(assert (=> b!5019036 m!6054232))

(declare-fun m!6054282 () Bool)

(assert (=> b!5019036 m!6054282))

(declare-fun m!6054284 () Bool)

(assert (=> d!1615733 m!6054284))

(assert (=> d!1615733 m!6054232))

(declare-fun m!6054286 () Bool)

(assert (=> d!1615733 m!6054286))

(declare-fun m!6054288 () Bool)

(assert (=> b!5019034 m!6054288))

(declare-fun m!6054290 () Bool)

(assert (=> b!5019031 m!6054290))

(assert (=> b!5019033 m!6054232))

(assert (=> b!5019033 m!6054282))

(assert (=> b!5018975 d!1615733))

(declare-fun b!5019065 () Bool)

(declare-fun e!3135487 () Int)

(declare-fun call!350516 () Int)

(assert (=> b!5019065 (= e!3135487 (- call!350516 from!1212))))

(declare-fun bm!350511 () Bool)

(assert (=> bm!350511 (= call!350516 (size!38574 (list!18694 totalInput!1125)))))

(declare-fun b!5019066 () Bool)

(declare-fun e!3135488 () List!58115)

(declare-fun e!3135489 () List!58115)

(assert (=> b!5019066 (= e!3135488 e!3135489)))

(declare-fun c!857585 () Bool)

(assert (=> b!5019066 (= c!857585 (<= from!1212 0))))

(declare-fun b!5019067 () Bool)

(assert (=> b!5019067 (= e!3135488 Nil!57991)))

(declare-fun b!5019068 () Bool)

(declare-fun e!3135490 () Int)

(assert (=> b!5019068 (= e!3135490 call!350516)))

(declare-fun b!5019069 () Bool)

(assert (=> b!5019069 (= e!3135490 e!3135487)))

(declare-fun c!857584 () Bool)

(assert (=> b!5019069 (= c!857584 (>= from!1212 call!350516))))

(declare-fun b!5019070 () Bool)

(declare-fun e!3135486 () Bool)

(declare-fun lt!2077254 () List!58115)

(assert (=> b!5019070 (= e!3135486 (= (size!38574 lt!2077254) e!3135490))))

(declare-fun c!857582 () Bool)

(assert (=> b!5019070 (= c!857582 (<= from!1212 0))))

(declare-fun d!1615737 () Bool)

(assert (=> d!1615737 e!3135486))

(declare-fun res!2140287 () Bool)

(assert (=> d!1615737 (=> (not res!2140287) (not e!3135486))))

(assert (=> d!1615737 (= res!2140287 (= ((_ map implies) (content!10276 lt!2077254) (content!10276 (list!18694 totalInput!1125))) ((as const (InoxSet C!27940)) true)))))

(assert (=> d!1615737 (= lt!2077254 e!3135488)))

(declare-fun c!857583 () Bool)

(assert (=> d!1615737 (= c!857583 ((_ is Nil!57991) (list!18694 totalInput!1125)))))

(assert (=> d!1615737 (= (drop!2508 (list!18694 totalInput!1125) from!1212) lt!2077254)))

(declare-fun b!5019064 () Bool)

(assert (=> b!5019064 (= e!3135489 (list!18694 totalInput!1125))))

(declare-fun b!5019071 () Bool)

(assert (=> b!5019071 (= e!3135489 (drop!2508 (t!370491 (list!18694 totalInput!1125)) (- from!1212 1)))))

(declare-fun b!5019072 () Bool)

(assert (=> b!5019072 (= e!3135487 0)))

(assert (= (and d!1615737 c!857583) b!5019067))

(assert (= (and d!1615737 (not c!857583)) b!5019066))

(assert (= (and b!5019066 c!857585) b!5019064))

(assert (= (and b!5019066 (not c!857585)) b!5019071))

(assert (= (and d!1615737 res!2140287) b!5019070))

(assert (= (and b!5019070 c!857582) b!5019068))

(assert (= (and b!5019070 (not c!857582)) b!5019069))

(assert (= (and b!5019069 c!857584) b!5019072))

(assert (= (and b!5019069 (not c!857584)) b!5019065))

(assert (= (or b!5019068 b!5019069 b!5019065) bm!350511))

(assert (=> bm!350511 m!6054230))

(declare-fun m!6054298 () Bool)

(assert (=> bm!350511 m!6054298))

(declare-fun m!6054300 () Bool)

(assert (=> b!5019070 m!6054300))

(declare-fun m!6054302 () Bool)

(assert (=> d!1615737 m!6054302))

(assert (=> d!1615737 m!6054230))

(declare-fun m!6054304 () Bool)

(assert (=> d!1615737 m!6054304))

(declare-fun m!6054306 () Bool)

(assert (=> b!5019071 m!6054306))

(assert (=> b!5018975 d!1615737))

(declare-fun d!1615743 () Bool)

(declare-fun list!18695 (Conc!15364) List!58115)

(assert (=> d!1615743 (= (list!18694 totalInput!1125) (list!18695 (c!857546 totalInput!1125)))))

(declare-fun bs!1187112 () Bool)

(assert (= bs!1187112 d!1615743))

(declare-fun m!6054320 () Bool)

(assert (=> bs!1187112 m!6054320))

(assert (=> b!5018975 d!1615743))

(declare-fun d!1615747 () Bool)

(declare-fun lt!2077257 () Int)

(assert (=> d!1615747 (= lt!2077257 (size!38574 (list!18694 totalInput!1125)))))

(declare-fun size!38575 (Conc!15364) Int)

(assert (=> d!1615747 (= lt!2077257 (size!38575 (c!857546 totalInput!1125)))))

(assert (=> d!1615747 (= (size!38573 totalInput!1125) lt!2077257)))

(declare-fun bs!1187113 () Bool)

(assert (= bs!1187113 d!1615747))

(assert (=> bs!1187113 m!6054230))

(assert (=> bs!1187113 m!6054230))

(assert (=> bs!1187113 m!6054298))

(declare-fun m!6054322 () Bool)

(assert (=> bs!1187113 m!6054322))

(assert (=> b!5018974 d!1615747))

(declare-fun tp!1407496 () Bool)

(declare-fun e!3135498 () Bool)

(declare-fun b!5019087 () Bool)

(declare-fun tp!1407497 () Bool)

(assert (=> b!5019087 (= e!3135498 (and (inv!76298 (left!42392 (c!857546 totalInput!1125))) tp!1407497 (inv!76298 (right!42722 (c!857546 totalInput!1125))) tp!1407496))))

(declare-fun b!5019089 () Bool)

(declare-fun e!3135499 () Bool)

(declare-fun tp!1407495 () Bool)

(assert (=> b!5019089 (= e!3135499 tp!1407495)))

(declare-fun b!5019088 () Bool)

(declare-fun inv!76301 (IArray!30789) Bool)

(assert (=> b!5019088 (= e!3135498 (and (inv!76301 (xs!18690 (c!857546 totalInput!1125))) e!3135499))))

(assert (=> b!5018973 (= tp!1407487 (and (inv!76298 (c!857546 totalInput!1125)) e!3135498))))

(assert (= (and b!5018973 ((_ is Node!15364) (c!857546 totalInput!1125))) b!5019087))

(assert (= b!5019088 b!5019089))

(assert (= (and b!5018973 ((_ is Leaf!25495) (c!857546 totalInput!1125))) b!5019088))

(declare-fun m!6054324 () Bool)

(assert (=> b!5019087 m!6054324))

(declare-fun m!6054326 () Bool)

(assert (=> b!5019087 m!6054326))

(declare-fun m!6054328 () Bool)

(assert (=> b!5019088 m!6054328))

(assert (=> b!5018973 m!6054238))

(declare-fun condSetEmpty!28615 () Bool)

(assert (=> setNonEmpty!28612 (= condSetEmpty!28615 (= setRest!28612 ((as const (Array Context!6540 Bool)) false)))))

(declare-fun setRes!28615 () Bool)

(assert (=> setNonEmpty!28612 (= tp!1407486 setRes!28615)))

(declare-fun setIsEmpty!28615 () Bool)

(assert (=> setIsEmpty!28615 setRes!28615))

(declare-fun setElem!28615 () Context!6540)

(declare-fun e!3135510 () Bool)

(declare-fun setNonEmpty!28615 () Bool)

(declare-fun tp!1407503 () Bool)

(assert (=> setNonEmpty!28615 (= setRes!28615 (and tp!1407503 (inv!76296 setElem!28615) e!3135510))))

(declare-fun setRest!28615 () (InoxSet Context!6540))

(assert (=> setNonEmpty!28615 (= setRest!28612 ((_ map or) (store ((as const (Array Context!6540 Bool)) false) setElem!28615 true) setRest!28615))))

(declare-fun b!5019108 () Bool)

(declare-fun tp!1407502 () Bool)

(assert (=> b!5019108 (= e!3135510 tp!1407502)))

(assert (= (and setNonEmpty!28612 condSetEmpty!28615) setIsEmpty!28615))

(assert (= (and setNonEmpty!28612 (not condSetEmpty!28615)) setNonEmpty!28615))

(assert (= setNonEmpty!28615 b!5019108))

(declare-fun m!6054330 () Bool)

(assert (=> setNonEmpty!28615 m!6054330))

(declare-fun b!5019113 () Bool)

(declare-fun e!3135513 () Bool)

(declare-fun tp!1407508 () Bool)

(declare-fun tp!1407509 () Bool)

(assert (=> b!5019113 (= e!3135513 (and tp!1407508 tp!1407509))))

(assert (=> b!5018971 (= tp!1407488 e!3135513)))

(assert (= (and b!5018971 ((_ is Cons!57990) (exprs!3770 setElem!28612))) b!5019113))

(check-sat (not d!1615719) (not b!5019088) (not d!1615733) (not b!5019033) (not b!5019089) (not setNonEmpty!28615) (not d!1615743) (not b!5019006) (not b!5018983) (not b!5019002) (not d!1615747) (not b!5019015) (not b!5019034) (not d!1615729) (not b!5019004) (not b!5019070) (not d!1615737) (not b!5018985) (not b!5019014) (not d!1615731) (not b!5019007) (not b!5019031) (not b!5019071) (not b!5018973) (not b!5019108) (not bm!350511) (not b!5019087) (not b!5019036) (not b!5019113))
(check-sat)
