; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518996 () Bool)

(assert start!518996)

(declare-fun b!4936599 () Bool)

(declare-fun e!3084493 () Bool)

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2034235 () Int)

(assert (=> b!4936599 (= e!3084493 (and (<= 0 testedPSize!70) (< testedPSize!70 lt!2034235)))))

(declare-fun b!4936600 () Bool)

(declare-fun e!3084484 () Bool)

(declare-fun e!3084489 () Bool)

(assert (=> b!4936600 (= e!3084484 e!3084489)))

(declare-fun res!2106818 () Bool)

(assert (=> b!4936600 (=> (not res!2106818) (not e!3084489))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4936600 (= res!2106818 (= totalInputSize!132 lt!2034235))))

(declare-datatypes ((C!27100 0))(
  ( (C!27101 (val!22884 Int)) )
))
(declare-datatypes ((List!56972 0))(
  ( (Nil!56848) (Cons!56848 (h!63296 C!27100) (t!367462 List!56972)) )
))
(declare-datatypes ((IArray!29949 0))(
  ( (IArray!29950 (innerList!15032 List!56972)) )
))
(declare-datatypes ((Conc!14944 0))(
  ( (Node!14944 (left!41462 Conc!14944) (right!41792 Conc!14944) (csize!30118 Int) (cheight!15155 Int)) (Leaf!24849 (xs!18268 IArray!29949) (csize!30119 Int)) (Empty!14944) )
))
(declare-datatypes ((BalanceConc!29318 0))(
  ( (BalanceConc!29319 (c!841600 Conc!14944)) )
))
(declare-fun totalInput!685 () BalanceConc!29318)

(declare-fun size!37658 (BalanceConc!29318) Int)

(assert (=> b!4936600 (= lt!2034235 (size!37658 totalInput!685))))

(declare-fun b!4936601 () Bool)

(declare-fun e!3084494 () Bool)

(declare-fun e!3084495 () Bool)

(assert (=> b!4936601 (= e!3084494 e!3084495)))

(declare-fun res!2106808 () Bool)

(assert (=> b!4936601 (=> res!2106808 e!3084495)))

(declare-fun lt!2034231 () Int)

(assert (=> b!4936601 (= res!2106808 (>= lt!2034231 lt!2034235))))

(declare-datatypes ((Unit!147561 0))(
  ( (Unit!147562) )
))
(declare-fun lt!2034237 () Unit!147561)

(declare-fun e!3084488 () Unit!147561)

(assert (=> b!4936601 (= lt!2034237 e!3084488)))

(declare-fun c!841599 () Bool)

(assert (=> b!4936601 (= c!841599 (= lt!2034231 lt!2034235))))

(declare-fun lt!2034228 () List!56972)

(declare-fun size!37659 (List!56972) Int)

(assert (=> b!4936601 (<= lt!2034231 (size!37659 lt!2034228))))

(declare-fun lt!2034247 () Unit!147561)

(declare-fun testedP!110 () List!56972)

(declare-fun lemmaIsPrefixThenSmallerEqSize!721 (List!56972 List!56972) Unit!147561)

(assert (=> b!4936601 (= lt!2034247 (lemmaIsPrefixThenSmallerEqSize!721 testedP!110 lt!2034228))))

(declare-fun b!4936602 () Bool)

(declare-fun e!3084490 () Bool)

(declare-fun e!3084485 () Bool)

(assert (=> b!4936602 (= e!3084490 e!3084485)))

(declare-fun res!2106811 () Bool)

(assert (=> b!4936602 (=> res!2106811 e!3084485)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13435 0))(
  ( (ElementMatch!13435 (c!841601 C!27100)) (Concat!22008 (regOne!27382 Regex!13435) (regTwo!27382 Regex!13435)) (EmptyExpr!13435) (Star!13435 (reg!13764 Regex!13435)) (EmptyLang!13435) (Union!13435 (regOne!27383 Regex!13435) (regTwo!27383 Regex!13435)) )
))
(declare-datatypes ((List!56973 0))(
  ( (Nil!56849) (Cons!56849 (h!63297 Regex!13435) (t!367463 List!56973)) )
))
(declare-datatypes ((Context!6154 0))(
  ( (Context!6155 (exprs!3577 List!56973)) )
))
(declare-fun z!3568 () (InoxSet Context!6154))

(declare-fun lostCauseZipper!753 ((InoxSet Context!6154)) Bool)

(assert (=> b!4936602 (= res!2106811 (lostCauseZipper!753 z!3568))))

(declare-fun testedSuffix!70 () List!56972)

(declare-fun lt!2034229 () List!56972)

(assert (=> b!4936602 (and (= testedSuffix!70 lt!2034229) (= lt!2034229 testedSuffix!70))))

(declare-fun lt!2034236 () Unit!147561)

(declare-fun lemmaSamePrefixThenSameSuffix!2431 (List!56972 List!56972 List!56972 List!56972 List!56972) Unit!147561)

(assert (=> b!4936602 (= lt!2034236 (lemmaSamePrefixThenSameSuffix!2431 testedP!110 testedSuffix!70 testedP!110 lt!2034229 lt!2034228))))

(declare-fun getSuffix!3017 (List!56972 List!56972) List!56972)

(assert (=> b!4936602 (= lt!2034229 (getSuffix!3017 lt!2034228 testedP!110))))

(declare-fun e!3084486 () Bool)

(declare-fun tp!1385512 () Bool)

(declare-fun setNonEmpty!27814 () Bool)

(declare-fun setElem!27814 () Context!6154)

(declare-fun setRes!27814 () Bool)

(declare-fun inv!73879 (Context!6154) Bool)

(assert (=> setNonEmpty!27814 (= setRes!27814 (and tp!1385512 (inv!73879 setElem!27814) e!3084486))))

(declare-fun setRest!27814 () (InoxSet Context!6154))

(assert (=> setNonEmpty!27814 (= z!3568 ((_ map or) (store ((as const (Array Context!6154 Bool)) false) setElem!27814 true) setRest!27814))))

(declare-fun b!4936603 () Bool)

(declare-fun e!3084491 () Bool)

(declare-fun tp_is_empty!36047 () Bool)

(declare-fun tp!1385510 () Bool)

(assert (=> b!4936603 (= e!3084491 (and tp_is_empty!36047 tp!1385510))))

(declare-fun b!4936604 () Bool)

(declare-fun res!2106815 () Bool)

(declare-fun e!3084482 () Bool)

(assert (=> b!4936604 (=> res!2106815 e!3084482)))

(declare-datatypes ((tuple2!61362 0))(
  ( (tuple2!61363 (_1!33984 BalanceConc!29318) (_2!33984 BalanceConc!29318)) )
))
(declare-fun lt!2034230 () tuple2!61362)

(assert (=> b!4936604 (= res!2106815 (not (= (size!37658 (_1!33984 lt!2034230)) testedPSize!70)))))

(declare-fun b!4936605 () Bool)

(declare-fun res!2106813 () Bool)

(assert (=> b!4936605 (=> res!2106813 e!3084485)))

(assert (=> b!4936605 (= res!2106813 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4936606 () Bool)

(declare-fun tp!1385511 () Bool)

(assert (=> b!4936606 (= e!3084486 tp!1385511)))

(declare-fun res!2106812 () Bool)

(declare-fun e!3084492 () Bool)

(assert (=> start!518996 (=> (not res!2106812) (not e!3084492))))

(declare-fun lt!2034240 () List!56972)

(assert (=> start!518996 (= res!2106812 (= lt!2034240 lt!2034228))))

(declare-fun list!18062 (BalanceConc!29318) List!56972)

(assert (=> start!518996 (= lt!2034228 (list!18062 totalInput!685))))

(declare-fun ++!12402 (List!56972 List!56972) List!56972)

(assert (=> start!518996 (= lt!2034240 (++!12402 testedP!110 testedSuffix!70))))

(assert (=> start!518996 e!3084492))

(declare-fun e!3084487 () Bool)

(assert (=> start!518996 e!3084487))

(declare-fun condSetEmpty!27814 () Bool)

(assert (=> start!518996 (= condSetEmpty!27814 (= z!3568 ((as const (Array Context!6154 Bool)) false)))))

(assert (=> start!518996 setRes!27814))

(assert (=> start!518996 true))

(declare-fun e!3084483 () Bool)

(declare-fun inv!73880 (BalanceConc!29318) Bool)

(assert (=> start!518996 (and (inv!73880 totalInput!685) e!3084483)))

(assert (=> start!518996 e!3084491))

(declare-fun b!4936607 () Bool)

(assert (=> b!4936607 (= e!3084492 e!3084484)))

(declare-fun res!2106814 () Bool)

(assert (=> b!4936607 (=> (not res!2106814) (not e!3084484))))

(assert (=> b!4936607 (= res!2106814 (= testedPSize!70 lt!2034231))))

(assert (=> b!4936607 (= lt!2034231 (size!37659 testedP!110))))

(declare-fun setIsEmpty!27814 () Bool)

(assert (=> setIsEmpty!27814 setRes!27814))

(declare-fun b!4936608 () Bool)

(declare-fun Unit!147563 () Unit!147561)

(assert (=> b!4936608 (= e!3084488 Unit!147563)))

(declare-fun lt!2034245 () Unit!147561)

(declare-fun lemmaIsPrefixRefl!3399 (List!56972 List!56972) Unit!147561)

(assert (=> b!4936608 (= lt!2034245 (lemmaIsPrefixRefl!3399 lt!2034228 lt!2034228))))

(declare-fun isPrefix!5033 (List!56972 List!56972) Bool)

(assert (=> b!4936608 (isPrefix!5033 lt!2034228 lt!2034228)))

(declare-fun lt!2034234 () Unit!147561)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1157 (List!56972 List!56972 List!56972) Unit!147561)

(assert (=> b!4936608 (= lt!2034234 (lemmaIsPrefixSameLengthThenSameList!1157 lt!2034228 testedP!110 lt!2034228))))

(assert (=> b!4936608 false))

(declare-fun b!4936609 () Bool)

(assert (=> b!4936609 (= e!3084482 e!3084494)))

(declare-fun res!2106817 () Bool)

(assert (=> b!4936609 (=> res!2106817 e!3084494)))

(declare-fun lt!2034239 () C!27100)

(declare-fun head!10572 (List!56972) C!27100)

(assert (=> b!4936609 (= res!2106817 (not (= lt!2034239 (head!10572 testedSuffix!70))))))

(declare-fun apply!13760 (BalanceConc!29318 Int) C!27100)

(assert (=> b!4936609 (= lt!2034239 (apply!13760 totalInput!685 testedPSize!70))))

(declare-fun drop!2266 (List!56972 Int) List!56972)

(declare-fun apply!13761 (List!56972 Int) C!27100)

(assert (=> b!4936609 (= (head!10572 (drop!2266 lt!2034228 testedPSize!70)) (apply!13761 lt!2034228 testedPSize!70))))

(declare-fun lt!2034241 () Unit!147561)

(declare-fun lemmaDropApply!1324 (List!56972 Int) Unit!147561)

(assert (=> b!4936609 (= lt!2034241 (lemmaDropApply!1324 lt!2034228 testedPSize!70))))

(declare-fun lt!2034233 () List!56972)

(declare-fun lt!2034246 () List!56972)

(assert (=> b!4936609 (not (or (not (= lt!2034233 testedP!110)) (not (= lt!2034246 testedSuffix!70))))))

(declare-fun lt!2034232 () Unit!147561)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!701 (List!56972 List!56972 List!56972 List!56972) Unit!147561)

(assert (=> b!4936609 (= lt!2034232 (lemmaConcatSameAndSameSizesThenSameLists!701 lt!2034233 lt!2034246 testedP!110 testedSuffix!70))))

(declare-fun b!4936610 () Bool)

(declare-fun tp!1385509 () Bool)

(assert (=> b!4936610 (= e!3084487 (and tp_is_empty!36047 tp!1385509))))

(declare-fun b!4936611 () Bool)

(assert (=> b!4936611 (= e!3084489 (not e!3084490))))

(declare-fun res!2106816 () Bool)

(assert (=> b!4936611 (=> res!2106816 e!3084490)))

(assert (=> b!4936611 (= res!2106816 (not (isPrefix!5033 testedP!110 lt!2034228)))))

(assert (=> b!4936611 (isPrefix!5033 testedP!110 lt!2034240)))

(declare-fun lt!2034243 () Unit!147561)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3257 (List!56972 List!56972) Unit!147561)

(assert (=> b!4936611 (= lt!2034243 (lemmaConcatTwoListThenFirstIsPrefix!3257 testedP!110 testedSuffix!70))))

(declare-fun b!4936612 () Bool)

(declare-fun tp!1385513 () Bool)

(declare-fun inv!73881 (Conc!14944) Bool)

(assert (=> b!4936612 (= e!3084483 (and (inv!73881 (c!841600 totalInput!685)) tp!1385513))))

(declare-fun b!4936613 () Bool)

(assert (=> b!4936613 (= e!3084495 e!3084493)))

(declare-fun res!2106810 () Bool)

(assert (=> b!4936613 (=> res!2106810 e!3084493)))

(declare-fun nullableZipper!840 ((InoxSet Context!6154)) Bool)

(assert (=> b!4936613 (= res!2106810 (nullableZipper!840 z!3568))))

(declare-fun lt!2034242 () List!56972)

(assert (=> b!4936613 (= (++!12402 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848)) lt!2034242) lt!2034228)))

(declare-fun lt!2034244 () Unit!147561)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1415 (List!56972 C!27100 List!56972 List!56972) Unit!147561)

(assert (=> b!4936613 (= lt!2034244 (lemmaMoveElementToOtherListKeepsConcatEq!1415 testedP!110 lt!2034239 lt!2034242 lt!2034228))))

(declare-fun tail!9711 (List!56972) List!56972)

(assert (=> b!4936613 (= lt!2034242 (tail!9711 testedSuffix!70))))

(assert (=> b!4936613 (isPrefix!5033 (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848)) lt!2034228)))

(declare-fun lt!2034238 () Unit!147561)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!803 (List!56972 List!56972) Unit!147561)

(assert (=> b!4936613 (= lt!2034238 (lemmaAddHeadSuffixToPrefixStillPrefix!803 testedP!110 lt!2034228))))

(declare-fun b!4936614 () Bool)

(assert (=> b!4936614 (= e!3084485 e!3084482)))

(declare-fun res!2106809 () Bool)

(assert (=> b!4936614 (=> res!2106809 e!3084482)))

(assert (=> b!4936614 (= res!2106809 (not (= (++!12402 lt!2034233 lt!2034246) lt!2034228)))))

(assert (=> b!4936614 (= lt!2034246 (list!18062 (_2!33984 lt!2034230)))))

(assert (=> b!4936614 (= lt!2034233 (list!18062 (_1!33984 lt!2034230)))))

(declare-fun splitAt!341 (BalanceConc!29318 Int) tuple2!61362)

(assert (=> b!4936614 (= lt!2034230 (splitAt!341 totalInput!685 testedPSize!70))))

(declare-fun b!4936615 () Bool)

(declare-fun Unit!147564 () Unit!147561)

(assert (=> b!4936615 (= e!3084488 Unit!147564)))

(assert (= (and start!518996 res!2106812) b!4936607))

(assert (= (and b!4936607 res!2106814) b!4936600))

(assert (= (and b!4936600 res!2106818) b!4936611))

(assert (= (and b!4936611 (not res!2106816)) b!4936602))

(assert (= (and b!4936602 (not res!2106811)) b!4936605))

(assert (= (and b!4936605 (not res!2106813)) b!4936614))

(assert (= (and b!4936614 (not res!2106809)) b!4936604))

(assert (= (and b!4936604 (not res!2106815)) b!4936609))

(assert (= (and b!4936609 (not res!2106817)) b!4936601))

(assert (= (and b!4936601 c!841599) b!4936608))

(assert (= (and b!4936601 (not c!841599)) b!4936615))

(assert (= (and b!4936601 (not res!2106808)) b!4936613))

(assert (= (and b!4936613 (not res!2106810)) b!4936599))

(get-info :version)

(assert (= (and start!518996 ((_ is Cons!56848) testedP!110)) b!4936610))

(assert (= (and start!518996 condSetEmpty!27814) setIsEmpty!27814))

(assert (= (and start!518996 (not condSetEmpty!27814)) setNonEmpty!27814))

(assert (= setNonEmpty!27814 b!4936606))

(assert (= start!518996 b!4936612))

(assert (= (and start!518996 ((_ is Cons!56848) testedSuffix!70)) b!4936603))

(declare-fun m!5958170 () Bool)

(assert (=> b!4936607 m!5958170))

(declare-fun m!5958172 () Bool)

(assert (=> start!518996 m!5958172))

(declare-fun m!5958174 () Bool)

(assert (=> start!518996 m!5958174))

(declare-fun m!5958176 () Bool)

(assert (=> start!518996 m!5958176))

(declare-fun m!5958178 () Bool)

(assert (=> b!4936611 m!5958178))

(declare-fun m!5958180 () Bool)

(assert (=> b!4936611 m!5958180))

(declare-fun m!5958182 () Bool)

(assert (=> b!4936611 m!5958182))

(declare-fun m!5958184 () Bool)

(assert (=> b!4936614 m!5958184))

(declare-fun m!5958186 () Bool)

(assert (=> b!4936614 m!5958186))

(declare-fun m!5958188 () Bool)

(assert (=> b!4936614 m!5958188))

(declare-fun m!5958190 () Bool)

(assert (=> b!4936614 m!5958190))

(declare-fun m!5958192 () Bool)

(assert (=> setNonEmpty!27814 m!5958192))

(declare-fun m!5958194 () Bool)

(assert (=> b!4936604 m!5958194))

(declare-fun m!5958196 () Bool)

(assert (=> b!4936600 m!5958196))

(declare-fun m!5958198 () Bool)

(assert (=> b!4936612 m!5958198))

(declare-fun m!5958200 () Bool)

(assert (=> b!4936601 m!5958200))

(declare-fun m!5958202 () Bool)

(assert (=> b!4936601 m!5958202))

(declare-fun m!5958204 () Bool)

(assert (=> b!4936608 m!5958204))

(declare-fun m!5958206 () Bool)

(assert (=> b!4936608 m!5958206))

(declare-fun m!5958208 () Bool)

(assert (=> b!4936608 m!5958208))

(declare-fun m!5958210 () Bool)

(assert (=> b!4936613 m!5958210))

(declare-fun m!5958212 () Bool)

(assert (=> b!4936613 m!5958212))

(declare-fun m!5958214 () Bool)

(assert (=> b!4936613 m!5958214))

(declare-fun m!5958216 () Bool)

(assert (=> b!4936613 m!5958216))

(declare-fun m!5958218 () Bool)

(assert (=> b!4936613 m!5958218))

(declare-fun m!5958220 () Bool)

(assert (=> b!4936613 m!5958220))

(declare-fun m!5958222 () Bool)

(assert (=> b!4936613 m!5958222))

(assert (=> b!4936613 m!5958218))

(declare-fun m!5958224 () Bool)

(assert (=> b!4936613 m!5958224))

(assert (=> b!4936613 m!5958214))

(declare-fun m!5958226 () Bool)

(assert (=> b!4936613 m!5958226))

(declare-fun m!5958228 () Bool)

(assert (=> b!4936609 m!5958228))

(declare-fun m!5958230 () Bool)

(assert (=> b!4936609 m!5958230))

(declare-fun m!5958232 () Bool)

(assert (=> b!4936609 m!5958232))

(declare-fun m!5958234 () Bool)

(assert (=> b!4936609 m!5958234))

(declare-fun m!5958236 () Bool)

(assert (=> b!4936609 m!5958236))

(assert (=> b!4936609 m!5958232))

(declare-fun m!5958238 () Bool)

(assert (=> b!4936609 m!5958238))

(declare-fun m!5958240 () Bool)

(assert (=> b!4936609 m!5958240))

(declare-fun m!5958242 () Bool)

(assert (=> b!4936602 m!5958242))

(declare-fun m!5958244 () Bool)

(assert (=> b!4936602 m!5958244))

(declare-fun m!5958246 () Bool)

(assert (=> b!4936602 m!5958246))

(check-sat tp_is_empty!36047 (not b!4936603) (not b!4936614) (not b!4936611) (not b!4936602) (not b!4936613) (not b!4936601) (not b!4936609) (not b!4936604) (not b!4936610) (not b!4936600) (not b!4936608) (not setNonEmpty!27814) (not b!4936607) (not start!518996) (not b!4936612) (not b!4936606))
(check-sat)
(get-model)

(declare-fun d!1589145 () Bool)

(declare-fun lt!2034250 () Int)

(assert (=> d!1589145 (>= lt!2034250 0)))

(declare-fun e!3084498 () Int)

(assert (=> d!1589145 (= lt!2034250 e!3084498)))

(declare-fun c!841604 () Bool)

(assert (=> d!1589145 (= c!841604 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589145 (= (size!37659 testedP!110) lt!2034250)))

(declare-fun b!4936620 () Bool)

(assert (=> b!4936620 (= e!3084498 0)))

(declare-fun b!4936621 () Bool)

(assert (=> b!4936621 (= e!3084498 (+ 1 (size!37659 (t!367462 testedP!110))))))

(assert (= (and d!1589145 c!841604) b!4936620))

(assert (= (and d!1589145 (not c!841604)) b!4936621))

(declare-fun m!5958248 () Bool)

(assert (=> b!4936621 m!5958248))

(assert (=> b!4936607 d!1589145))

(declare-fun d!1589149 () Bool)

(declare-fun lt!2034251 () Int)

(assert (=> d!1589149 (>= lt!2034251 0)))

(declare-fun e!3084499 () Int)

(assert (=> d!1589149 (= lt!2034251 e!3084499)))

(declare-fun c!841605 () Bool)

(assert (=> d!1589149 (= c!841605 ((_ is Nil!56848) lt!2034228))))

(assert (=> d!1589149 (= (size!37659 lt!2034228) lt!2034251)))

(declare-fun b!4936622 () Bool)

(assert (=> b!4936622 (= e!3084499 0)))

(declare-fun b!4936623 () Bool)

(assert (=> b!4936623 (= e!3084499 (+ 1 (size!37659 (t!367462 lt!2034228))))))

(assert (= (and d!1589149 c!841605) b!4936622))

(assert (= (and d!1589149 (not c!841605)) b!4936623))

(declare-fun m!5958250 () Bool)

(assert (=> b!4936623 m!5958250))

(assert (=> b!4936601 d!1589149))

(declare-fun d!1589151 () Bool)

(assert (=> d!1589151 (<= (size!37659 testedP!110) (size!37659 lt!2034228))))

(declare-fun lt!2034254 () Unit!147561)

(declare-fun choose!36290 (List!56972 List!56972) Unit!147561)

(assert (=> d!1589151 (= lt!2034254 (choose!36290 testedP!110 lt!2034228))))

(assert (=> d!1589151 (isPrefix!5033 testedP!110 lt!2034228)))

(assert (=> d!1589151 (= (lemmaIsPrefixThenSmallerEqSize!721 testedP!110 lt!2034228) lt!2034254)))

(declare-fun bs!1180791 () Bool)

(assert (= bs!1180791 d!1589151))

(assert (=> bs!1180791 m!5958170))

(assert (=> bs!1180791 m!5958200))

(declare-fun m!5958252 () Bool)

(assert (=> bs!1180791 m!5958252))

(assert (=> bs!1180791 m!5958178))

(assert (=> b!4936601 d!1589151))

(declare-fun d!1589153 () Bool)

(assert (=> d!1589153 (= (head!10572 (drop!2266 lt!2034228 testedPSize!70)) (h!63296 (drop!2266 lt!2034228 testedPSize!70)))))

(assert (=> b!4936609 d!1589153))

(declare-fun d!1589155 () Bool)

(assert (=> d!1589155 (= (head!10572 testedSuffix!70) (h!63296 testedSuffix!70))))

(assert (=> b!4936609 d!1589155))

(declare-fun d!1589157 () Bool)

(assert (=> d!1589157 (= (head!10572 (drop!2266 lt!2034228 testedPSize!70)) (apply!13761 lt!2034228 testedPSize!70))))

(declare-fun lt!2034261 () Unit!147561)

(declare-fun choose!36291 (List!56972 Int) Unit!147561)

(assert (=> d!1589157 (= lt!2034261 (choose!36291 lt!2034228 testedPSize!70))))

(declare-fun e!3084504 () Bool)

(assert (=> d!1589157 e!3084504))

(declare-fun res!2106821 () Bool)

(assert (=> d!1589157 (=> (not res!2106821) (not e!3084504))))

(assert (=> d!1589157 (= res!2106821 (>= testedPSize!70 0))))

(assert (=> d!1589157 (= (lemmaDropApply!1324 lt!2034228 testedPSize!70) lt!2034261)))

(declare-fun b!4936630 () Bool)

(assert (=> b!4936630 (= e!3084504 (< testedPSize!70 (size!37659 lt!2034228)))))

(assert (= (and d!1589157 res!2106821) b!4936630))

(assert (=> d!1589157 m!5958232))

(assert (=> d!1589157 m!5958232))

(assert (=> d!1589157 m!5958238))

(assert (=> d!1589157 m!5958228))

(declare-fun m!5958254 () Bool)

(assert (=> d!1589157 m!5958254))

(assert (=> b!4936630 m!5958200))

(assert (=> b!4936609 d!1589157))

(declare-fun b!4936649 () Bool)

(declare-fun e!3084515 () List!56972)

(declare-fun e!3084517 () List!56972)

(assert (=> b!4936649 (= e!3084515 e!3084517)))

(declare-fun c!841618 () Bool)

(assert (=> b!4936649 (= c!841618 (<= testedPSize!70 0))))

(declare-fun bm!344472 () Bool)

(declare-fun call!344477 () Int)

(assert (=> bm!344472 (= call!344477 (size!37659 lt!2034228))))

(declare-fun b!4936650 () Bool)

(assert (=> b!4936650 (= e!3084515 Nil!56848)))

(declare-fun b!4936651 () Bool)

(declare-fun e!3084519 () Int)

(assert (=> b!4936651 (= e!3084519 (- call!344477 testedPSize!70))))

(declare-fun b!4936652 () Bool)

(assert (=> b!4936652 (= e!3084519 0)))

(declare-fun b!4936653 () Bool)

(declare-fun e!3084518 () Int)

(assert (=> b!4936653 (= e!3084518 e!3084519)))

(declare-fun c!841619 () Bool)

(assert (=> b!4936653 (= c!841619 (>= testedPSize!70 call!344477))))

(declare-fun b!4936654 () Bool)

(declare-fun e!3084516 () Bool)

(declare-fun lt!2034264 () List!56972)

(assert (=> b!4936654 (= e!3084516 (= (size!37659 lt!2034264) e!3084518))))

(declare-fun c!841620 () Bool)

(assert (=> b!4936654 (= c!841620 (<= testedPSize!70 0))))

(declare-fun b!4936655 () Bool)

(assert (=> b!4936655 (= e!3084517 lt!2034228)))

(declare-fun b!4936656 () Bool)

(assert (=> b!4936656 (= e!3084517 (drop!2266 (t!367462 lt!2034228) (- testedPSize!70 1)))))

(declare-fun b!4936657 () Bool)

(assert (=> b!4936657 (= e!3084518 call!344477)))

(declare-fun d!1589159 () Bool)

(assert (=> d!1589159 e!3084516))

(declare-fun res!2106824 () Bool)

(assert (=> d!1589159 (=> (not res!2106824) (not e!3084516))))

(declare-fun content!10108 (List!56972) (InoxSet C!27100))

(assert (=> d!1589159 (= res!2106824 (= ((_ map implies) (content!10108 lt!2034264) (content!10108 lt!2034228)) ((as const (InoxSet C!27100)) true)))))

(assert (=> d!1589159 (= lt!2034264 e!3084515)))

(declare-fun c!841621 () Bool)

(assert (=> d!1589159 (= c!841621 ((_ is Nil!56848) lt!2034228))))

(assert (=> d!1589159 (= (drop!2266 lt!2034228 testedPSize!70) lt!2034264)))

(assert (= (and d!1589159 c!841621) b!4936650))

(assert (= (and d!1589159 (not c!841621)) b!4936649))

(assert (= (and b!4936649 c!841618) b!4936655))

(assert (= (and b!4936649 (not c!841618)) b!4936656))

(assert (= (and d!1589159 res!2106824) b!4936654))

(assert (= (and b!4936654 c!841620) b!4936657))

(assert (= (and b!4936654 (not c!841620)) b!4936653))

(assert (= (and b!4936653 c!841619) b!4936652))

(assert (= (and b!4936653 (not c!841619)) b!4936651))

(assert (= (or b!4936657 b!4936653 b!4936651) bm!344472))

(assert (=> bm!344472 m!5958200))

(declare-fun m!5958256 () Bool)

(assert (=> b!4936654 m!5958256))

(declare-fun m!5958258 () Bool)

(assert (=> b!4936656 m!5958258))

(declare-fun m!5958260 () Bool)

(assert (=> d!1589159 m!5958260))

(declare-fun m!5958262 () Bool)

(assert (=> d!1589159 m!5958262))

(assert (=> b!4936609 d!1589159))

(declare-fun d!1589161 () Bool)

(declare-fun lt!2034267 () C!27100)

(declare-fun contains!19478 (List!56972 C!27100) Bool)

(assert (=> d!1589161 (contains!19478 lt!2034228 lt!2034267)))

(declare-fun e!3084525 () C!27100)

(assert (=> d!1589161 (= lt!2034267 e!3084525)))

(declare-fun c!841624 () Bool)

(assert (=> d!1589161 (= c!841624 (= testedPSize!70 0))))

(declare-fun e!3084524 () Bool)

(assert (=> d!1589161 e!3084524))

(declare-fun res!2106827 () Bool)

(assert (=> d!1589161 (=> (not res!2106827) (not e!3084524))))

(assert (=> d!1589161 (= res!2106827 (<= 0 testedPSize!70))))

(assert (=> d!1589161 (= (apply!13761 lt!2034228 testedPSize!70) lt!2034267)))

(declare-fun b!4936664 () Bool)

(assert (=> b!4936664 (= e!3084524 (< testedPSize!70 (size!37659 lt!2034228)))))

(declare-fun b!4936665 () Bool)

(assert (=> b!4936665 (= e!3084525 (head!10572 lt!2034228))))

(declare-fun b!4936666 () Bool)

(assert (=> b!4936666 (= e!3084525 (apply!13761 (tail!9711 lt!2034228) (- testedPSize!70 1)))))

(assert (= (and d!1589161 res!2106827) b!4936664))

(assert (= (and d!1589161 c!841624) b!4936665))

(assert (= (and d!1589161 (not c!841624)) b!4936666))

(declare-fun m!5958264 () Bool)

(assert (=> d!1589161 m!5958264))

(assert (=> b!4936664 m!5958200))

(declare-fun m!5958266 () Bool)

(assert (=> b!4936665 m!5958266))

(declare-fun m!5958268 () Bool)

(assert (=> b!4936666 m!5958268))

(assert (=> b!4936666 m!5958268))

(declare-fun m!5958270 () Bool)

(assert (=> b!4936666 m!5958270))

(assert (=> b!4936609 d!1589161))

(declare-fun d!1589163 () Bool)

(declare-fun lt!2034270 () C!27100)

(assert (=> d!1589163 (= lt!2034270 (apply!13761 (list!18062 totalInput!685) testedPSize!70))))

(declare-fun apply!13763 (Conc!14944 Int) C!27100)

(assert (=> d!1589163 (= lt!2034270 (apply!13763 (c!841600 totalInput!685) testedPSize!70))))

(declare-fun e!3084528 () Bool)

(assert (=> d!1589163 e!3084528))

(declare-fun res!2106830 () Bool)

(assert (=> d!1589163 (=> (not res!2106830) (not e!3084528))))

(assert (=> d!1589163 (= res!2106830 (<= 0 testedPSize!70))))

(assert (=> d!1589163 (= (apply!13760 totalInput!685 testedPSize!70) lt!2034270)))

(declare-fun b!4936669 () Bool)

(assert (=> b!4936669 (= e!3084528 (< testedPSize!70 (size!37658 totalInput!685)))))

(assert (= (and d!1589163 res!2106830) b!4936669))

(assert (=> d!1589163 m!5958172))

(assert (=> d!1589163 m!5958172))

(declare-fun m!5958272 () Bool)

(assert (=> d!1589163 m!5958272))

(declare-fun m!5958274 () Bool)

(assert (=> d!1589163 m!5958274))

(assert (=> b!4936669 m!5958196))

(assert (=> b!4936609 d!1589163))

(declare-fun d!1589165 () Bool)

(assert (=> d!1589165 (and (= lt!2034233 testedP!110) (= lt!2034246 testedSuffix!70))))

(declare-fun lt!2034273 () Unit!147561)

(declare-fun choose!36295 (List!56972 List!56972 List!56972 List!56972) Unit!147561)

(assert (=> d!1589165 (= lt!2034273 (choose!36295 lt!2034233 lt!2034246 testedP!110 testedSuffix!70))))

(assert (=> d!1589165 (= (++!12402 lt!2034233 lt!2034246) (++!12402 testedP!110 testedSuffix!70))))

(assert (=> d!1589165 (= (lemmaConcatSameAndSameSizesThenSameLists!701 lt!2034233 lt!2034246 testedP!110 testedSuffix!70) lt!2034273)))

(declare-fun bs!1180792 () Bool)

(assert (= bs!1180792 d!1589165))

(declare-fun m!5958276 () Bool)

(assert (=> bs!1180792 m!5958276))

(assert (=> bs!1180792 m!5958184))

(assert (=> bs!1180792 m!5958174))

(assert (=> b!4936609 d!1589165))

(declare-fun d!1589167 () Bool)

(declare-fun lt!2034276 () Int)

(assert (=> d!1589167 (= lt!2034276 (size!37659 (list!18062 totalInput!685)))))

(declare-fun size!37661 (Conc!14944) Int)

(assert (=> d!1589167 (= lt!2034276 (size!37661 (c!841600 totalInput!685)))))

(assert (=> d!1589167 (= (size!37658 totalInput!685) lt!2034276)))

(declare-fun bs!1180793 () Bool)

(assert (= bs!1180793 d!1589167))

(assert (=> bs!1180793 m!5958172))

(assert (=> bs!1180793 m!5958172))

(declare-fun m!5958278 () Bool)

(assert (=> bs!1180793 m!5958278))

(declare-fun m!5958280 () Bool)

(assert (=> bs!1180793 m!5958280))

(assert (=> b!4936600 d!1589167))

(declare-fun d!1589169 () Bool)

(assert (=> d!1589169 (isPrefix!5033 lt!2034228 lt!2034228)))

(declare-fun lt!2034279 () Unit!147561)

(declare-fun choose!36296 (List!56972 List!56972) Unit!147561)

(assert (=> d!1589169 (= lt!2034279 (choose!36296 lt!2034228 lt!2034228))))

(assert (=> d!1589169 (= (lemmaIsPrefixRefl!3399 lt!2034228 lt!2034228) lt!2034279)))

(declare-fun bs!1180794 () Bool)

(assert (= bs!1180794 d!1589169))

(assert (=> bs!1180794 m!5958206))

(declare-fun m!5958282 () Bool)

(assert (=> bs!1180794 m!5958282))

(assert (=> b!4936608 d!1589169))

(declare-fun b!4936678 () Bool)

(declare-fun e!3084536 () Bool)

(declare-fun e!3084535 () Bool)

(assert (=> b!4936678 (= e!3084536 e!3084535)))

(declare-fun res!2106841 () Bool)

(assert (=> b!4936678 (=> (not res!2106841) (not e!3084535))))

(assert (=> b!4936678 (= res!2106841 (not ((_ is Nil!56848) lt!2034228)))))

(declare-fun b!4936681 () Bool)

(declare-fun e!3084537 () Bool)

(assert (=> b!4936681 (= e!3084537 (>= (size!37659 lt!2034228) (size!37659 lt!2034228)))))

(declare-fun b!4936680 () Bool)

(assert (=> b!4936680 (= e!3084535 (isPrefix!5033 (tail!9711 lt!2034228) (tail!9711 lt!2034228)))))

(declare-fun b!4936679 () Bool)

(declare-fun res!2106842 () Bool)

(assert (=> b!4936679 (=> (not res!2106842) (not e!3084535))))

(assert (=> b!4936679 (= res!2106842 (= (head!10572 lt!2034228) (head!10572 lt!2034228)))))

(declare-fun d!1589171 () Bool)

(assert (=> d!1589171 e!3084537))

(declare-fun res!2106839 () Bool)

(assert (=> d!1589171 (=> res!2106839 e!3084537)))

(declare-fun lt!2034282 () Bool)

(assert (=> d!1589171 (= res!2106839 (not lt!2034282))))

(assert (=> d!1589171 (= lt!2034282 e!3084536)))

(declare-fun res!2106840 () Bool)

(assert (=> d!1589171 (=> res!2106840 e!3084536)))

(assert (=> d!1589171 (= res!2106840 ((_ is Nil!56848) lt!2034228))))

(assert (=> d!1589171 (= (isPrefix!5033 lt!2034228 lt!2034228) lt!2034282)))

(assert (= (and d!1589171 (not res!2106840)) b!4936678))

(assert (= (and b!4936678 res!2106841) b!4936679))

(assert (= (and b!4936679 res!2106842) b!4936680))

(assert (= (and d!1589171 (not res!2106839)) b!4936681))

(assert (=> b!4936681 m!5958200))

(assert (=> b!4936681 m!5958200))

(assert (=> b!4936680 m!5958268))

(assert (=> b!4936680 m!5958268))

(assert (=> b!4936680 m!5958268))

(assert (=> b!4936680 m!5958268))

(declare-fun m!5958284 () Bool)

(assert (=> b!4936680 m!5958284))

(assert (=> b!4936679 m!5958266))

(assert (=> b!4936679 m!5958266))

(assert (=> b!4936608 d!1589171))

(declare-fun d!1589173 () Bool)

(assert (=> d!1589173 (= lt!2034228 testedP!110)))

(declare-fun lt!2034285 () Unit!147561)

(declare-fun choose!36297 (List!56972 List!56972 List!56972) Unit!147561)

(assert (=> d!1589173 (= lt!2034285 (choose!36297 lt!2034228 testedP!110 lt!2034228))))

(assert (=> d!1589173 (isPrefix!5033 lt!2034228 lt!2034228)))

(assert (=> d!1589173 (= (lemmaIsPrefixSameLengthThenSameList!1157 lt!2034228 testedP!110 lt!2034228) lt!2034285)))

(declare-fun bs!1180795 () Bool)

(assert (= bs!1180795 d!1589173))

(declare-fun m!5958286 () Bool)

(assert (=> bs!1180795 m!5958286))

(assert (=> bs!1180795 m!5958206))

(assert (=> b!4936608 d!1589173))

(declare-fun d!1589175 () Bool)

(declare-fun c!841627 () Bool)

(assert (=> d!1589175 (= c!841627 ((_ is Node!14944) (c!841600 totalInput!685)))))

(declare-fun e!3084542 () Bool)

(assert (=> d!1589175 (= (inv!73881 (c!841600 totalInput!685)) e!3084542)))

(declare-fun b!4936688 () Bool)

(declare-fun inv!73885 (Conc!14944) Bool)

(assert (=> b!4936688 (= e!3084542 (inv!73885 (c!841600 totalInput!685)))))

(declare-fun b!4936689 () Bool)

(declare-fun e!3084543 () Bool)

(assert (=> b!4936689 (= e!3084542 e!3084543)))

(declare-fun res!2106845 () Bool)

(assert (=> b!4936689 (= res!2106845 (not ((_ is Leaf!24849) (c!841600 totalInput!685))))))

(assert (=> b!4936689 (=> res!2106845 e!3084543)))

(declare-fun b!4936690 () Bool)

(declare-fun inv!73886 (Conc!14944) Bool)

(assert (=> b!4936690 (= e!3084543 (inv!73886 (c!841600 totalInput!685)))))

(assert (= (and d!1589175 c!841627) b!4936688))

(assert (= (and d!1589175 (not c!841627)) b!4936689))

(assert (= (and b!4936689 (not res!2106845)) b!4936690))

(declare-fun m!5958288 () Bool)

(assert (=> b!4936688 m!5958288))

(declare-fun m!5958290 () Bool)

(assert (=> b!4936690 m!5958290))

(assert (=> b!4936612 d!1589175))

(declare-fun d!1589177 () Bool)

(declare-fun lambda!245924 () Int)

(declare-fun forall!13199 (List!56973 Int) Bool)

(assert (=> d!1589177 (= (inv!73879 setElem!27814) (forall!13199 (exprs!3577 setElem!27814) lambda!245924))))

(declare-fun bs!1180818 () Bool)

(assert (= bs!1180818 d!1589177))

(declare-fun m!5958490 () Bool)

(assert (=> bs!1180818 m!5958490))

(assert (=> setNonEmpty!27814 d!1589177))

(declare-fun b!4936843 () Bool)

(declare-fun e!3084641 () Bool)

(declare-fun e!3084640 () Bool)

(assert (=> b!4936843 (= e!3084641 e!3084640)))

(declare-fun res!2106907 () Bool)

(assert (=> b!4936843 (=> (not res!2106907) (not e!3084640))))

(assert (=> b!4936843 (= res!2106907 (not ((_ is Nil!56848) lt!2034228)))))

(declare-fun b!4936846 () Bool)

(declare-fun e!3084642 () Bool)

(assert (=> b!4936846 (= e!3084642 (>= (size!37659 lt!2034228) (size!37659 testedP!110)))))

(declare-fun b!4936845 () Bool)

(assert (=> b!4936845 (= e!3084640 (isPrefix!5033 (tail!9711 testedP!110) (tail!9711 lt!2034228)))))

(declare-fun b!4936844 () Bool)

(declare-fun res!2106908 () Bool)

(assert (=> b!4936844 (=> (not res!2106908) (not e!3084640))))

(assert (=> b!4936844 (= res!2106908 (= (head!10572 testedP!110) (head!10572 lt!2034228)))))

(declare-fun d!1589255 () Bool)

(assert (=> d!1589255 e!3084642))

(declare-fun res!2106905 () Bool)

(assert (=> d!1589255 (=> res!2106905 e!3084642)))

(declare-fun lt!2034372 () Bool)

(assert (=> d!1589255 (= res!2106905 (not lt!2034372))))

(assert (=> d!1589255 (= lt!2034372 e!3084641)))

(declare-fun res!2106906 () Bool)

(assert (=> d!1589255 (=> res!2106906 e!3084641)))

(assert (=> d!1589255 (= res!2106906 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589255 (= (isPrefix!5033 testedP!110 lt!2034228) lt!2034372)))

(assert (= (and d!1589255 (not res!2106906)) b!4936843))

(assert (= (and b!4936843 res!2106907) b!4936844))

(assert (= (and b!4936844 res!2106908) b!4936845))

(assert (= (and d!1589255 (not res!2106905)) b!4936846))

(assert (=> b!4936846 m!5958200))

(assert (=> b!4936846 m!5958170))

(declare-fun m!5958492 () Bool)

(assert (=> b!4936845 m!5958492))

(assert (=> b!4936845 m!5958268))

(assert (=> b!4936845 m!5958492))

(assert (=> b!4936845 m!5958268))

(declare-fun m!5958494 () Bool)

(assert (=> b!4936845 m!5958494))

(declare-fun m!5958496 () Bool)

(assert (=> b!4936844 m!5958496))

(assert (=> b!4936844 m!5958266))

(assert (=> b!4936611 d!1589255))

(declare-fun b!4936847 () Bool)

(declare-fun e!3084644 () Bool)

(declare-fun e!3084643 () Bool)

(assert (=> b!4936847 (= e!3084644 e!3084643)))

(declare-fun res!2106911 () Bool)

(assert (=> b!4936847 (=> (not res!2106911) (not e!3084643))))

(assert (=> b!4936847 (= res!2106911 (not ((_ is Nil!56848) lt!2034240)))))

(declare-fun b!4936850 () Bool)

(declare-fun e!3084645 () Bool)

(assert (=> b!4936850 (= e!3084645 (>= (size!37659 lt!2034240) (size!37659 testedP!110)))))

(declare-fun b!4936849 () Bool)

(assert (=> b!4936849 (= e!3084643 (isPrefix!5033 (tail!9711 testedP!110) (tail!9711 lt!2034240)))))

(declare-fun b!4936848 () Bool)

(declare-fun res!2106912 () Bool)

(assert (=> b!4936848 (=> (not res!2106912) (not e!3084643))))

(assert (=> b!4936848 (= res!2106912 (= (head!10572 testedP!110) (head!10572 lt!2034240)))))

(declare-fun d!1589257 () Bool)

(assert (=> d!1589257 e!3084645))

(declare-fun res!2106909 () Bool)

(assert (=> d!1589257 (=> res!2106909 e!3084645)))

(declare-fun lt!2034373 () Bool)

(assert (=> d!1589257 (= res!2106909 (not lt!2034373))))

(assert (=> d!1589257 (= lt!2034373 e!3084644)))

(declare-fun res!2106910 () Bool)

(assert (=> d!1589257 (=> res!2106910 e!3084644)))

(assert (=> d!1589257 (= res!2106910 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589257 (= (isPrefix!5033 testedP!110 lt!2034240) lt!2034373)))

(assert (= (and d!1589257 (not res!2106910)) b!4936847))

(assert (= (and b!4936847 res!2106911) b!4936848))

(assert (= (and b!4936848 res!2106912) b!4936849))

(assert (= (and d!1589257 (not res!2106909)) b!4936850))

(declare-fun m!5958498 () Bool)

(assert (=> b!4936850 m!5958498))

(assert (=> b!4936850 m!5958170))

(assert (=> b!4936849 m!5958492))

(declare-fun m!5958500 () Bool)

(assert (=> b!4936849 m!5958500))

(assert (=> b!4936849 m!5958492))

(assert (=> b!4936849 m!5958500))

(declare-fun m!5958502 () Bool)

(assert (=> b!4936849 m!5958502))

(assert (=> b!4936848 m!5958496))

(declare-fun m!5958504 () Bool)

(assert (=> b!4936848 m!5958504))

(assert (=> b!4936611 d!1589257))

(declare-fun d!1589259 () Bool)

(assert (=> d!1589259 (isPrefix!5033 testedP!110 (++!12402 testedP!110 testedSuffix!70))))

(declare-fun lt!2034376 () Unit!147561)

(declare-fun choose!36298 (List!56972 List!56972) Unit!147561)

(assert (=> d!1589259 (= lt!2034376 (choose!36298 testedP!110 testedSuffix!70))))

(assert (=> d!1589259 (= (lemmaConcatTwoListThenFirstIsPrefix!3257 testedP!110 testedSuffix!70) lt!2034376)))

(declare-fun bs!1180819 () Bool)

(assert (= bs!1180819 d!1589259))

(assert (=> bs!1180819 m!5958174))

(assert (=> bs!1180819 m!5958174))

(declare-fun m!5958506 () Bool)

(assert (=> bs!1180819 m!5958506))

(declare-fun m!5958508 () Bool)

(assert (=> bs!1180819 m!5958508))

(assert (=> b!4936611 d!1589259))

(declare-fun bs!1180820 () Bool)

(declare-fun b!4936855 () Bool)

(declare-fun d!1589261 () Bool)

(assert (= bs!1180820 (and b!4936855 d!1589261)))

(declare-fun lambda!245938 () Int)

(declare-fun lambda!245937 () Int)

(assert (=> bs!1180820 (not (= lambda!245938 lambda!245937))))

(declare-fun bs!1180821 () Bool)

(declare-fun b!4936856 () Bool)

(assert (= bs!1180821 (and b!4936856 d!1589261)))

(declare-fun lambda!245939 () Int)

(assert (=> bs!1180821 (not (= lambda!245939 lambda!245937))))

(declare-fun bs!1180822 () Bool)

(assert (= bs!1180822 (and b!4936856 b!4936855)))

(assert (=> bs!1180822 (= lambda!245939 lambda!245938)))

(declare-fun bm!344487 () Bool)

(declare-datatypes ((List!56975 0))(
  ( (Nil!56851) (Cons!56851 (h!63299 Context!6154) (t!367465 List!56975)) )
))
(declare-fun call!344492 () List!56975)

(declare-fun toList!7971 ((InoxSet Context!6154)) List!56975)

(assert (=> bm!344487 (= call!344492 (toList!7971 z!3568))))

(declare-fun lt!2034398 () Bool)

(declare-datatypes ((Option!14189 0))(
  ( (None!14188) (Some!14188 (v!50160 List!56972)) )
))
(declare-fun isEmpty!30616 (Option!14189) Bool)

(declare-fun getLanguageWitness!649 ((InoxSet Context!6154)) Option!14189)

(assert (=> d!1589261 (= lt!2034398 (isEmpty!30616 (getLanguageWitness!649 z!3568)))))

(declare-fun forall!13200 ((InoxSet Context!6154) Int) Bool)

(assert (=> d!1589261 (= lt!2034398 (forall!13200 z!3568 lambda!245937))))

(declare-fun lt!2034396 () Unit!147561)

(declare-fun e!3084652 () Unit!147561)

(assert (=> d!1589261 (= lt!2034396 e!3084652)))

(declare-fun c!841679 () Bool)

(assert (=> d!1589261 (= c!841679 (not (forall!13200 z!3568 lambda!245937)))))

(assert (=> d!1589261 (= (lostCauseZipper!753 z!3568) lt!2034398)))

(declare-fun Unit!147567 () Unit!147561)

(assert (=> b!4936856 (= e!3084652 Unit!147567)))

(declare-fun lt!2034399 () List!56975)

(assert (=> b!4936856 (= lt!2034399 call!344492)))

(declare-fun lt!2034395 () Unit!147561)

(declare-fun lemmaForallThenNotExists!192 (List!56975 Int) Unit!147561)

(assert (=> b!4936856 (= lt!2034395 (lemmaForallThenNotExists!192 lt!2034399 lambda!245937))))

(declare-fun call!344491 () Bool)

(assert (=> b!4936856 (not call!344491)))

(declare-fun lt!2034394 () Unit!147561)

(assert (=> b!4936856 (= lt!2034394 lt!2034395)))

(declare-fun Unit!147568 () Unit!147561)

(assert (=> b!4936855 (= e!3084652 Unit!147568)))

(declare-fun lt!2034393 () List!56975)

(assert (=> b!4936855 (= lt!2034393 call!344492)))

(declare-fun lt!2034400 () Unit!147561)

(declare-fun lemmaNotForallThenExists!209 (List!56975 Int) Unit!147561)

(assert (=> b!4936855 (= lt!2034400 (lemmaNotForallThenExists!209 lt!2034393 lambda!245937))))

(assert (=> b!4936855 call!344491))

(declare-fun lt!2034397 () Unit!147561)

(assert (=> b!4936855 (= lt!2034397 lt!2034400)))

(declare-fun bm!344486 () Bool)

(declare-fun exists!1289 (List!56975 Int) Bool)

(assert (=> bm!344486 (= call!344491 (exists!1289 (ite c!841679 lt!2034393 lt!2034399) (ite c!841679 lambda!245938 lambda!245939)))))

(assert (= (and d!1589261 c!841679) b!4936855))

(assert (= (and d!1589261 (not c!841679)) b!4936856))

(assert (= (or b!4936855 b!4936856) bm!344486))

(assert (= (or b!4936855 b!4936856) bm!344487))

(declare-fun m!5958510 () Bool)

(assert (=> b!4936856 m!5958510))

(declare-fun m!5958512 () Bool)

(assert (=> d!1589261 m!5958512))

(assert (=> d!1589261 m!5958512))

(declare-fun m!5958514 () Bool)

(assert (=> d!1589261 m!5958514))

(declare-fun m!5958516 () Bool)

(assert (=> d!1589261 m!5958516))

(assert (=> d!1589261 m!5958516))

(declare-fun m!5958518 () Bool)

(assert (=> bm!344487 m!5958518))

(declare-fun m!5958520 () Bool)

(assert (=> bm!344486 m!5958520))

(declare-fun m!5958522 () Bool)

(assert (=> b!4936855 m!5958522))

(assert (=> b!4936602 d!1589261))

(declare-fun d!1589263 () Bool)

(assert (=> d!1589263 (= testedSuffix!70 lt!2034229)))

(declare-fun lt!2034403 () Unit!147561)

(declare-fun choose!36299 (List!56972 List!56972 List!56972 List!56972 List!56972) Unit!147561)

(assert (=> d!1589263 (= lt!2034403 (choose!36299 testedP!110 testedSuffix!70 testedP!110 lt!2034229 lt!2034228))))

(assert (=> d!1589263 (isPrefix!5033 testedP!110 lt!2034228)))

(assert (=> d!1589263 (= (lemmaSamePrefixThenSameSuffix!2431 testedP!110 testedSuffix!70 testedP!110 lt!2034229 lt!2034228) lt!2034403)))

(declare-fun bs!1180823 () Bool)

(assert (= bs!1180823 d!1589263))

(declare-fun m!5958524 () Bool)

(assert (=> bs!1180823 m!5958524))

(assert (=> bs!1180823 m!5958178))

(assert (=> b!4936602 d!1589263))

(declare-fun d!1589265 () Bool)

(declare-fun lt!2034406 () List!56972)

(assert (=> d!1589265 (= (++!12402 testedP!110 lt!2034406) lt!2034228)))

(declare-fun e!3084655 () List!56972)

(assert (=> d!1589265 (= lt!2034406 e!3084655)))

(declare-fun c!841682 () Bool)

(assert (=> d!1589265 (= c!841682 ((_ is Cons!56848) testedP!110))))

(assert (=> d!1589265 (>= (size!37659 lt!2034228) (size!37659 testedP!110))))

(assert (=> d!1589265 (= (getSuffix!3017 lt!2034228 testedP!110) lt!2034406)))

(declare-fun b!4936861 () Bool)

(assert (=> b!4936861 (= e!3084655 (getSuffix!3017 (tail!9711 lt!2034228) (t!367462 testedP!110)))))

(declare-fun b!4936862 () Bool)

(assert (=> b!4936862 (= e!3084655 lt!2034228)))

(assert (= (and d!1589265 c!841682) b!4936861))

(assert (= (and d!1589265 (not c!841682)) b!4936862))

(declare-fun m!5958526 () Bool)

(assert (=> d!1589265 m!5958526))

(assert (=> d!1589265 m!5958200))

(assert (=> d!1589265 m!5958170))

(assert (=> b!4936861 m!5958268))

(assert (=> b!4936861 m!5958268))

(declare-fun m!5958528 () Bool)

(assert (=> b!4936861 m!5958528))

(assert (=> b!4936602 d!1589265))

(declare-fun d!1589267 () Bool)

(declare-fun list!18064 (Conc!14944) List!56972)

(assert (=> d!1589267 (= (list!18062 totalInput!685) (list!18064 (c!841600 totalInput!685)))))

(declare-fun bs!1180824 () Bool)

(assert (= bs!1180824 d!1589267))

(declare-fun m!5958530 () Bool)

(assert (=> bs!1180824 m!5958530))

(assert (=> start!518996 d!1589267))

(declare-fun d!1589269 () Bool)

(declare-fun e!3084661 () Bool)

(assert (=> d!1589269 e!3084661))

(declare-fun res!2106918 () Bool)

(assert (=> d!1589269 (=> (not res!2106918) (not e!3084661))))

(declare-fun lt!2034409 () List!56972)

(assert (=> d!1589269 (= res!2106918 (= (content!10108 lt!2034409) ((_ map or) (content!10108 testedP!110) (content!10108 testedSuffix!70))))))

(declare-fun e!3084660 () List!56972)

(assert (=> d!1589269 (= lt!2034409 e!3084660)))

(declare-fun c!841685 () Bool)

(assert (=> d!1589269 (= c!841685 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589269 (= (++!12402 testedP!110 testedSuffix!70) lt!2034409)))

(declare-fun b!4936873 () Bool)

(declare-fun res!2106917 () Bool)

(assert (=> b!4936873 (=> (not res!2106917) (not e!3084661))))

(assert (=> b!4936873 (= res!2106917 (= (size!37659 lt!2034409) (+ (size!37659 testedP!110) (size!37659 testedSuffix!70))))))

(declare-fun b!4936871 () Bool)

(assert (=> b!4936871 (= e!3084660 testedSuffix!70)))

(declare-fun b!4936874 () Bool)

(assert (=> b!4936874 (= e!3084661 (or (not (= testedSuffix!70 Nil!56848)) (= lt!2034409 testedP!110)))))

(declare-fun b!4936872 () Bool)

(assert (=> b!4936872 (= e!3084660 (Cons!56848 (h!63296 testedP!110) (++!12402 (t!367462 testedP!110) testedSuffix!70)))))

(assert (= (and d!1589269 c!841685) b!4936871))

(assert (= (and d!1589269 (not c!841685)) b!4936872))

(assert (= (and d!1589269 res!2106918) b!4936873))

(assert (= (and b!4936873 res!2106917) b!4936874))

(declare-fun m!5958532 () Bool)

(assert (=> d!1589269 m!5958532))

(declare-fun m!5958534 () Bool)

(assert (=> d!1589269 m!5958534))

(declare-fun m!5958536 () Bool)

(assert (=> d!1589269 m!5958536))

(declare-fun m!5958538 () Bool)

(assert (=> b!4936873 m!5958538))

(assert (=> b!4936873 m!5958170))

(declare-fun m!5958540 () Bool)

(assert (=> b!4936873 m!5958540))

(declare-fun m!5958542 () Bool)

(assert (=> b!4936872 m!5958542))

(assert (=> start!518996 d!1589269))

(declare-fun d!1589271 () Bool)

(declare-fun isBalanced!4121 (Conc!14944) Bool)

(assert (=> d!1589271 (= (inv!73880 totalInput!685) (isBalanced!4121 (c!841600 totalInput!685)))))

(declare-fun bs!1180825 () Bool)

(assert (= bs!1180825 d!1589271))

(declare-fun m!5958544 () Bool)

(assert (=> bs!1180825 m!5958544))

(assert (=> start!518996 d!1589271))

(declare-fun d!1589273 () Bool)

(declare-fun e!3084663 () Bool)

(assert (=> d!1589273 e!3084663))

(declare-fun res!2106920 () Bool)

(assert (=> d!1589273 (=> (not res!2106920) (not e!3084663))))

(declare-fun lt!2034410 () List!56972)

(assert (=> d!1589273 (= res!2106920 (= (content!10108 lt!2034410) ((_ map or) (content!10108 lt!2034233) (content!10108 lt!2034246))))))

(declare-fun e!3084662 () List!56972)

(assert (=> d!1589273 (= lt!2034410 e!3084662)))

(declare-fun c!841686 () Bool)

(assert (=> d!1589273 (= c!841686 ((_ is Nil!56848) lt!2034233))))

(assert (=> d!1589273 (= (++!12402 lt!2034233 lt!2034246) lt!2034410)))

(declare-fun b!4936877 () Bool)

(declare-fun res!2106919 () Bool)

(assert (=> b!4936877 (=> (not res!2106919) (not e!3084663))))

(assert (=> b!4936877 (= res!2106919 (= (size!37659 lt!2034410) (+ (size!37659 lt!2034233) (size!37659 lt!2034246))))))

(declare-fun b!4936875 () Bool)

(assert (=> b!4936875 (= e!3084662 lt!2034246)))

(declare-fun b!4936878 () Bool)

(assert (=> b!4936878 (= e!3084663 (or (not (= lt!2034246 Nil!56848)) (= lt!2034410 lt!2034233)))))

(declare-fun b!4936876 () Bool)

(assert (=> b!4936876 (= e!3084662 (Cons!56848 (h!63296 lt!2034233) (++!12402 (t!367462 lt!2034233) lt!2034246)))))

(assert (= (and d!1589273 c!841686) b!4936875))

(assert (= (and d!1589273 (not c!841686)) b!4936876))

(assert (= (and d!1589273 res!2106920) b!4936877))

(assert (= (and b!4936877 res!2106919) b!4936878))

(declare-fun m!5958546 () Bool)

(assert (=> d!1589273 m!5958546))

(declare-fun m!5958548 () Bool)

(assert (=> d!1589273 m!5958548))

(declare-fun m!5958550 () Bool)

(assert (=> d!1589273 m!5958550))

(declare-fun m!5958552 () Bool)

(assert (=> b!4936877 m!5958552))

(declare-fun m!5958554 () Bool)

(assert (=> b!4936877 m!5958554))

(declare-fun m!5958556 () Bool)

(assert (=> b!4936877 m!5958556))

(declare-fun m!5958558 () Bool)

(assert (=> b!4936876 m!5958558))

(assert (=> b!4936614 d!1589273))

(declare-fun d!1589275 () Bool)

(assert (=> d!1589275 (= (list!18062 (_2!33984 lt!2034230)) (list!18064 (c!841600 (_2!33984 lt!2034230))))))

(declare-fun bs!1180826 () Bool)

(assert (= bs!1180826 d!1589275))

(declare-fun m!5958560 () Bool)

(assert (=> bs!1180826 m!5958560))

(assert (=> b!4936614 d!1589275))

(declare-fun d!1589277 () Bool)

(assert (=> d!1589277 (= (list!18062 (_1!33984 lt!2034230)) (list!18064 (c!841600 (_1!33984 lt!2034230))))))

(declare-fun bs!1180827 () Bool)

(assert (= bs!1180827 d!1589277))

(declare-fun m!5958562 () Bool)

(assert (=> bs!1180827 m!5958562))

(assert (=> b!4936614 d!1589277))

(declare-fun d!1589279 () Bool)

(declare-fun e!3084666 () Bool)

(assert (=> d!1589279 e!3084666))

(declare-fun res!2106926 () Bool)

(assert (=> d!1589279 (=> (not res!2106926) (not e!3084666))))

(declare-fun lt!2034416 () tuple2!61362)

(assert (=> d!1589279 (= res!2106926 (isBalanced!4121 (c!841600 (_1!33984 lt!2034416))))))

(declare-datatypes ((tuple2!61368 0))(
  ( (tuple2!61369 (_1!33987 Conc!14944) (_2!33987 Conc!14944)) )
))
(declare-fun lt!2034415 () tuple2!61368)

(assert (=> d!1589279 (= lt!2034416 (tuple2!61363 (BalanceConc!29319 (_1!33987 lt!2034415)) (BalanceConc!29319 (_2!33987 lt!2034415))))))

(declare-fun splitAt!343 (Conc!14944 Int) tuple2!61368)

(assert (=> d!1589279 (= lt!2034415 (splitAt!343 (c!841600 totalInput!685) testedPSize!70))))

(assert (=> d!1589279 (isBalanced!4121 (c!841600 totalInput!685))))

(assert (=> d!1589279 (= (splitAt!341 totalInput!685 testedPSize!70) lt!2034416)))

(declare-fun b!4936883 () Bool)

(declare-fun res!2106925 () Bool)

(assert (=> b!4936883 (=> (not res!2106925) (not e!3084666))))

(assert (=> b!4936883 (= res!2106925 (isBalanced!4121 (c!841600 (_2!33984 lt!2034416))))))

(declare-fun b!4936884 () Bool)

(declare-datatypes ((tuple2!61370 0))(
  ( (tuple2!61371 (_1!33988 List!56972) (_2!33988 List!56972)) )
))
(declare-fun splitAtIndex!127 (List!56972 Int) tuple2!61370)

(assert (=> b!4936884 (= e!3084666 (= (tuple2!61371 (list!18062 (_1!33984 lt!2034416)) (list!18062 (_2!33984 lt!2034416))) (splitAtIndex!127 (list!18062 totalInput!685) testedPSize!70)))))

(assert (= (and d!1589279 res!2106926) b!4936883))

(assert (= (and b!4936883 res!2106925) b!4936884))

(declare-fun m!5958564 () Bool)

(assert (=> d!1589279 m!5958564))

(declare-fun m!5958566 () Bool)

(assert (=> d!1589279 m!5958566))

(assert (=> d!1589279 m!5958544))

(declare-fun m!5958568 () Bool)

(assert (=> b!4936883 m!5958568))

(declare-fun m!5958570 () Bool)

(assert (=> b!4936884 m!5958570))

(declare-fun m!5958572 () Bool)

(assert (=> b!4936884 m!5958572))

(assert (=> b!4936884 m!5958172))

(assert (=> b!4936884 m!5958172))

(declare-fun m!5958574 () Bool)

(assert (=> b!4936884 m!5958574))

(assert (=> b!4936614 d!1589279))

(declare-fun d!1589281 () Bool)

(declare-fun lt!2034417 () Int)

(assert (=> d!1589281 (= lt!2034417 (size!37659 (list!18062 (_1!33984 lt!2034230))))))

(assert (=> d!1589281 (= lt!2034417 (size!37661 (c!841600 (_1!33984 lt!2034230))))))

(assert (=> d!1589281 (= (size!37658 (_1!33984 lt!2034230)) lt!2034417)))

(declare-fun bs!1180828 () Bool)

(assert (= bs!1180828 d!1589281))

(assert (=> bs!1180828 m!5958188))

(assert (=> bs!1180828 m!5958188))

(declare-fun m!5958576 () Bool)

(assert (=> bs!1180828 m!5958576))

(declare-fun m!5958578 () Bool)

(assert (=> bs!1180828 m!5958578))

(assert (=> b!4936604 d!1589281))

(declare-fun d!1589283 () Bool)

(declare-fun e!3084668 () Bool)

(assert (=> d!1589283 e!3084668))

(declare-fun res!2106928 () Bool)

(assert (=> d!1589283 (=> (not res!2106928) (not e!3084668))))

(declare-fun lt!2034418 () List!56972)

(assert (=> d!1589283 (= res!2106928 (= (content!10108 lt!2034418) ((_ map or) (content!10108 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848))) (content!10108 lt!2034242))))))

(declare-fun e!3084667 () List!56972)

(assert (=> d!1589283 (= lt!2034418 e!3084667)))

(declare-fun c!841687 () Bool)

(assert (=> d!1589283 (= c!841687 ((_ is Nil!56848) (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848))))))

(assert (=> d!1589283 (= (++!12402 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848)) lt!2034242) lt!2034418)))

(declare-fun b!4936887 () Bool)

(declare-fun res!2106927 () Bool)

(assert (=> b!4936887 (=> (not res!2106927) (not e!3084668))))

(assert (=> b!4936887 (= res!2106927 (= (size!37659 lt!2034418) (+ (size!37659 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848))) (size!37659 lt!2034242))))))

(declare-fun b!4936885 () Bool)

(assert (=> b!4936885 (= e!3084667 lt!2034242)))

(declare-fun b!4936888 () Bool)

(assert (=> b!4936888 (= e!3084668 (or (not (= lt!2034242 Nil!56848)) (= lt!2034418 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848)))))))

(declare-fun b!4936886 () Bool)

(assert (=> b!4936886 (= e!3084667 (Cons!56848 (h!63296 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848))) (++!12402 (t!367462 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848))) lt!2034242)))))

(assert (= (and d!1589283 c!841687) b!4936885))

(assert (= (and d!1589283 (not c!841687)) b!4936886))

(assert (= (and d!1589283 res!2106928) b!4936887))

(assert (= (and b!4936887 res!2106927) b!4936888))

(declare-fun m!5958580 () Bool)

(assert (=> d!1589283 m!5958580))

(assert (=> d!1589283 m!5958214))

(declare-fun m!5958582 () Bool)

(assert (=> d!1589283 m!5958582))

(declare-fun m!5958584 () Bool)

(assert (=> d!1589283 m!5958584))

(declare-fun m!5958586 () Bool)

(assert (=> b!4936887 m!5958586))

(assert (=> b!4936887 m!5958214))

(declare-fun m!5958588 () Bool)

(assert (=> b!4936887 m!5958588))

(declare-fun m!5958590 () Bool)

(assert (=> b!4936887 m!5958590))

(declare-fun m!5958592 () Bool)

(assert (=> b!4936886 m!5958592))

(assert (=> b!4936613 d!1589283))

(declare-fun bs!1180829 () Bool)

(declare-fun d!1589285 () Bool)

(assert (= bs!1180829 (and d!1589285 d!1589261)))

(declare-fun lambda!245942 () Int)

(assert (=> bs!1180829 (not (= lambda!245942 lambda!245937))))

(declare-fun bs!1180830 () Bool)

(assert (= bs!1180830 (and d!1589285 b!4936855)))

(assert (=> bs!1180830 (not (= lambda!245942 lambda!245938))))

(declare-fun bs!1180831 () Bool)

(assert (= bs!1180831 (and d!1589285 b!4936856)))

(assert (=> bs!1180831 (not (= lambda!245942 lambda!245939))))

(declare-fun exists!1290 ((InoxSet Context!6154) Int) Bool)

(assert (=> d!1589285 (= (nullableZipper!840 z!3568) (exists!1290 z!3568 lambda!245942))))

(declare-fun bs!1180832 () Bool)

(assert (= bs!1180832 d!1589285))

(declare-fun m!5958594 () Bool)

(assert (=> bs!1180832 m!5958594))

(assert (=> b!4936613 d!1589285))

(declare-fun d!1589287 () Bool)

(declare-fun e!3084670 () Bool)

(assert (=> d!1589287 e!3084670))

(declare-fun res!2106930 () Bool)

(assert (=> d!1589287 (=> (not res!2106930) (not e!3084670))))

(declare-fun lt!2034419 () List!56972)

(assert (=> d!1589287 (= res!2106930 (= (content!10108 lt!2034419) ((_ map or) (content!10108 testedP!110) (content!10108 (Cons!56848 (head!10572 lt!2034229) Nil!56848)))))))

(declare-fun e!3084669 () List!56972)

(assert (=> d!1589287 (= lt!2034419 e!3084669)))

(declare-fun c!841690 () Bool)

(assert (=> d!1589287 (= c!841690 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589287 (= (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848)) lt!2034419)))

(declare-fun b!4936891 () Bool)

(declare-fun res!2106929 () Bool)

(assert (=> b!4936891 (=> (not res!2106929) (not e!3084670))))

(assert (=> b!4936891 (= res!2106929 (= (size!37659 lt!2034419) (+ (size!37659 testedP!110) (size!37659 (Cons!56848 (head!10572 lt!2034229) Nil!56848)))))))

(declare-fun b!4936889 () Bool)

(assert (=> b!4936889 (= e!3084669 (Cons!56848 (head!10572 lt!2034229) Nil!56848))))

(declare-fun b!4936892 () Bool)

(assert (=> b!4936892 (= e!3084670 (or (not (= (Cons!56848 (head!10572 lt!2034229) Nil!56848) Nil!56848)) (= lt!2034419 testedP!110)))))

(declare-fun b!4936890 () Bool)

(assert (=> b!4936890 (= e!3084669 (Cons!56848 (h!63296 testedP!110) (++!12402 (t!367462 testedP!110) (Cons!56848 (head!10572 lt!2034229) Nil!56848))))))

(assert (= (and d!1589287 c!841690) b!4936889))

(assert (= (and d!1589287 (not c!841690)) b!4936890))

(assert (= (and d!1589287 res!2106930) b!4936891))

(assert (= (and b!4936891 res!2106929) b!4936892))

(declare-fun m!5958596 () Bool)

(assert (=> d!1589287 m!5958596))

(assert (=> d!1589287 m!5958534))

(declare-fun m!5958598 () Bool)

(assert (=> d!1589287 m!5958598))

(declare-fun m!5958600 () Bool)

(assert (=> b!4936891 m!5958600))

(assert (=> b!4936891 m!5958170))

(declare-fun m!5958602 () Bool)

(assert (=> b!4936891 m!5958602))

(declare-fun m!5958604 () Bool)

(assert (=> b!4936890 m!5958604))

(assert (=> b!4936613 d!1589287))

(declare-fun d!1589289 () Bool)

(assert (=> d!1589289 (= (++!12402 (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848)) lt!2034242) lt!2034228)))

(declare-fun lt!2034422 () Unit!147561)

(declare-fun choose!36300 (List!56972 C!27100 List!56972 List!56972) Unit!147561)

(assert (=> d!1589289 (= lt!2034422 (choose!36300 testedP!110 lt!2034239 lt!2034242 lt!2034228))))

(assert (=> d!1589289 (= (++!12402 testedP!110 (Cons!56848 lt!2034239 lt!2034242)) lt!2034228)))

(assert (=> d!1589289 (= (lemmaMoveElementToOtherListKeepsConcatEq!1415 testedP!110 lt!2034239 lt!2034242 lt!2034228) lt!2034422)))

(declare-fun bs!1180833 () Bool)

(assert (= bs!1180833 d!1589289))

(assert (=> bs!1180833 m!5958214))

(assert (=> bs!1180833 m!5958214))

(assert (=> bs!1180833 m!5958216))

(declare-fun m!5958606 () Bool)

(assert (=> bs!1180833 m!5958606))

(declare-fun m!5958608 () Bool)

(assert (=> bs!1180833 m!5958608))

(assert (=> b!4936613 d!1589289))

(declare-fun d!1589291 () Bool)

(assert (=> d!1589291 (= (head!10572 lt!2034229) (h!63296 lt!2034229))))

(assert (=> b!4936613 d!1589291))

(declare-fun d!1589293 () Bool)

(assert (=> d!1589293 (isPrefix!5033 (++!12402 testedP!110 (Cons!56848 (head!10572 (getSuffix!3017 lt!2034228 testedP!110)) Nil!56848)) lt!2034228)))

(declare-fun lt!2034425 () Unit!147561)

(declare-fun choose!36301 (List!56972 List!56972) Unit!147561)

(assert (=> d!1589293 (= lt!2034425 (choose!36301 testedP!110 lt!2034228))))

(assert (=> d!1589293 (isPrefix!5033 testedP!110 lt!2034228)))

(assert (=> d!1589293 (= (lemmaAddHeadSuffixToPrefixStillPrefix!803 testedP!110 lt!2034228) lt!2034425)))

(declare-fun bs!1180834 () Bool)

(assert (= bs!1180834 d!1589293))

(assert (=> bs!1180834 m!5958246))

(assert (=> bs!1180834 m!5958178))

(assert (=> bs!1180834 m!5958246))

(declare-fun m!5958610 () Bool)

(assert (=> bs!1180834 m!5958610))

(declare-fun m!5958612 () Bool)

(assert (=> bs!1180834 m!5958612))

(declare-fun m!5958614 () Bool)

(assert (=> bs!1180834 m!5958614))

(assert (=> bs!1180834 m!5958612))

(declare-fun m!5958616 () Bool)

(assert (=> bs!1180834 m!5958616))

(assert (=> b!4936613 d!1589293))

(declare-fun d!1589295 () Bool)

(assert (=> d!1589295 (= (tail!9711 testedSuffix!70) (t!367462 testedSuffix!70))))

(assert (=> b!4936613 d!1589295))

(declare-fun d!1589297 () Bool)

(declare-fun e!3084672 () Bool)

(assert (=> d!1589297 e!3084672))

(declare-fun res!2106932 () Bool)

(assert (=> d!1589297 (=> (not res!2106932) (not e!3084672))))

(declare-fun lt!2034426 () List!56972)

(assert (=> d!1589297 (= res!2106932 (= (content!10108 lt!2034426) ((_ map or) (content!10108 testedP!110) (content!10108 (Cons!56848 lt!2034239 Nil!56848)))))))

(declare-fun e!3084671 () List!56972)

(assert (=> d!1589297 (= lt!2034426 e!3084671)))

(declare-fun c!841691 () Bool)

(assert (=> d!1589297 (= c!841691 ((_ is Nil!56848) testedP!110))))

(assert (=> d!1589297 (= (++!12402 testedP!110 (Cons!56848 lt!2034239 Nil!56848)) lt!2034426)))

(declare-fun b!4936895 () Bool)

(declare-fun res!2106931 () Bool)

(assert (=> b!4936895 (=> (not res!2106931) (not e!3084672))))

(assert (=> b!4936895 (= res!2106931 (= (size!37659 lt!2034426) (+ (size!37659 testedP!110) (size!37659 (Cons!56848 lt!2034239 Nil!56848)))))))

(declare-fun b!4936893 () Bool)

(assert (=> b!4936893 (= e!3084671 (Cons!56848 lt!2034239 Nil!56848))))

(declare-fun b!4936896 () Bool)

(assert (=> b!4936896 (= e!3084672 (or (not (= (Cons!56848 lt!2034239 Nil!56848) Nil!56848)) (= lt!2034426 testedP!110)))))

(declare-fun b!4936894 () Bool)

(assert (=> b!4936894 (= e!3084671 (Cons!56848 (h!63296 testedP!110) (++!12402 (t!367462 testedP!110) (Cons!56848 lt!2034239 Nil!56848))))))

(assert (= (and d!1589297 c!841691) b!4936893))

(assert (= (and d!1589297 (not c!841691)) b!4936894))

(assert (= (and d!1589297 res!2106932) b!4936895))

(assert (= (and b!4936895 res!2106931) b!4936896))

(declare-fun m!5958618 () Bool)

(assert (=> d!1589297 m!5958618))

(assert (=> d!1589297 m!5958534))

(declare-fun m!5958620 () Bool)

(assert (=> d!1589297 m!5958620))

(declare-fun m!5958622 () Bool)

(assert (=> b!4936895 m!5958622))

(assert (=> b!4936895 m!5958170))

(declare-fun m!5958624 () Bool)

(assert (=> b!4936895 m!5958624))

(declare-fun m!5958626 () Bool)

(assert (=> b!4936894 m!5958626))

(assert (=> b!4936613 d!1589297))

(declare-fun b!4936897 () Bool)

(declare-fun e!3084674 () Bool)

(declare-fun e!3084673 () Bool)

(assert (=> b!4936897 (= e!3084674 e!3084673)))

(declare-fun res!2106935 () Bool)

(assert (=> b!4936897 (=> (not res!2106935) (not e!3084673))))

(assert (=> b!4936897 (= res!2106935 (not ((_ is Nil!56848) lt!2034228)))))

(declare-fun b!4936900 () Bool)

(declare-fun e!3084675 () Bool)

(assert (=> b!4936900 (= e!3084675 (>= (size!37659 lt!2034228) (size!37659 (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848)))))))

(declare-fun b!4936899 () Bool)

(assert (=> b!4936899 (= e!3084673 (isPrefix!5033 (tail!9711 (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848))) (tail!9711 lt!2034228)))))

(declare-fun b!4936898 () Bool)

(declare-fun res!2106936 () Bool)

(assert (=> b!4936898 (=> (not res!2106936) (not e!3084673))))

(assert (=> b!4936898 (= res!2106936 (= (head!10572 (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848))) (head!10572 lt!2034228)))))

(declare-fun d!1589299 () Bool)

(assert (=> d!1589299 e!3084675))

(declare-fun res!2106933 () Bool)

(assert (=> d!1589299 (=> res!2106933 e!3084675)))

(declare-fun lt!2034427 () Bool)

(assert (=> d!1589299 (= res!2106933 (not lt!2034427))))

(assert (=> d!1589299 (= lt!2034427 e!3084674)))

(declare-fun res!2106934 () Bool)

(assert (=> d!1589299 (=> res!2106934 e!3084674)))

(assert (=> d!1589299 (= res!2106934 ((_ is Nil!56848) (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848))))))

(assert (=> d!1589299 (= (isPrefix!5033 (++!12402 testedP!110 (Cons!56848 (head!10572 lt!2034229) Nil!56848)) lt!2034228) lt!2034427)))

(assert (= (and d!1589299 (not res!2106934)) b!4936897))

(assert (= (and b!4936897 res!2106935) b!4936898))

(assert (= (and b!4936898 res!2106936) b!4936899))

(assert (= (and d!1589299 (not res!2106933)) b!4936900))

(assert (=> b!4936900 m!5958200))

(assert (=> b!4936900 m!5958218))

(declare-fun m!5958628 () Bool)

(assert (=> b!4936900 m!5958628))

(assert (=> b!4936899 m!5958218))

(declare-fun m!5958630 () Bool)

(assert (=> b!4936899 m!5958630))

(assert (=> b!4936899 m!5958268))

(assert (=> b!4936899 m!5958630))

(assert (=> b!4936899 m!5958268))

(declare-fun m!5958632 () Bool)

(assert (=> b!4936899 m!5958632))

(assert (=> b!4936898 m!5958218))

(declare-fun m!5958634 () Bool)

(assert (=> b!4936898 m!5958634))

(assert (=> b!4936898 m!5958266))

(assert (=> b!4936613 d!1589299))

(declare-fun b!4936905 () Bool)

(declare-fun e!3084678 () Bool)

(declare-fun tp!1385541 () Bool)

(assert (=> b!4936905 (= e!3084678 (and tp_is_empty!36047 tp!1385541))))

(assert (=> b!4936603 (= tp!1385510 e!3084678)))

(assert (= (and b!4936603 ((_ is Cons!56848) (t!367462 testedSuffix!70))) b!4936905))

(declare-fun b!4936914 () Bool)

(declare-fun tp!1385550 () Bool)

(declare-fun e!3084683 () Bool)

(declare-fun tp!1385548 () Bool)

(assert (=> b!4936914 (= e!3084683 (and (inv!73881 (left!41462 (c!841600 totalInput!685))) tp!1385550 (inv!73881 (right!41792 (c!841600 totalInput!685))) tp!1385548))))

(declare-fun b!4936916 () Bool)

(declare-fun e!3084684 () Bool)

(declare-fun tp!1385549 () Bool)

(assert (=> b!4936916 (= e!3084684 tp!1385549)))

(declare-fun b!4936915 () Bool)

(declare-fun inv!73887 (IArray!29949) Bool)

(assert (=> b!4936915 (= e!3084683 (and (inv!73887 (xs!18268 (c!841600 totalInput!685))) e!3084684))))

(assert (=> b!4936612 (= tp!1385513 (and (inv!73881 (c!841600 totalInput!685)) e!3084683))))

(assert (= (and b!4936612 ((_ is Node!14944) (c!841600 totalInput!685))) b!4936914))

(assert (= b!4936915 b!4936916))

(assert (= (and b!4936612 ((_ is Leaf!24849) (c!841600 totalInput!685))) b!4936915))

(declare-fun m!5958636 () Bool)

(assert (=> b!4936914 m!5958636))

(declare-fun m!5958638 () Bool)

(assert (=> b!4936914 m!5958638))

(declare-fun m!5958640 () Bool)

(assert (=> b!4936915 m!5958640))

(assert (=> b!4936612 m!5958198))

(declare-fun condSetEmpty!27820 () Bool)

(assert (=> setNonEmpty!27814 (= condSetEmpty!27820 (= setRest!27814 ((as const (Array Context!6154 Bool)) false)))))

(declare-fun setRes!27820 () Bool)

(assert (=> setNonEmpty!27814 (= tp!1385512 setRes!27820)))

(declare-fun setIsEmpty!27820 () Bool)

(assert (=> setIsEmpty!27820 setRes!27820))

(declare-fun setElem!27820 () Context!6154)

(declare-fun e!3084687 () Bool)

(declare-fun tp!1385556 () Bool)

(declare-fun setNonEmpty!27820 () Bool)

(assert (=> setNonEmpty!27820 (= setRes!27820 (and tp!1385556 (inv!73879 setElem!27820) e!3084687))))

(declare-fun setRest!27820 () (InoxSet Context!6154))

(assert (=> setNonEmpty!27820 (= setRest!27814 ((_ map or) (store ((as const (Array Context!6154 Bool)) false) setElem!27820 true) setRest!27820))))

(declare-fun b!4936921 () Bool)

(declare-fun tp!1385555 () Bool)

(assert (=> b!4936921 (= e!3084687 tp!1385555)))

(assert (= (and setNonEmpty!27814 condSetEmpty!27820) setIsEmpty!27820))

(assert (= (and setNonEmpty!27814 (not condSetEmpty!27820)) setNonEmpty!27820))

(assert (= setNonEmpty!27820 b!4936921))

(declare-fun m!5958642 () Bool)

(assert (=> setNonEmpty!27820 m!5958642))

(declare-fun b!4936926 () Bool)

(declare-fun e!3084690 () Bool)

(declare-fun tp!1385561 () Bool)

(declare-fun tp!1385562 () Bool)

(assert (=> b!4936926 (= e!3084690 (and tp!1385561 tp!1385562))))

(assert (=> b!4936606 (= tp!1385511 e!3084690)))

(assert (= (and b!4936606 ((_ is Cons!56849) (exprs!3577 setElem!27814))) b!4936926))

(declare-fun b!4936927 () Bool)

(declare-fun e!3084691 () Bool)

(declare-fun tp!1385563 () Bool)

(assert (=> b!4936927 (= e!3084691 (and tp_is_empty!36047 tp!1385563))))

(assert (=> b!4936610 (= tp!1385509 e!3084691)))

(assert (= (and b!4936610 ((_ is Cons!56848) (t!367462 testedP!110))) b!4936927))

(check-sat (not b!4936915) (not d!1589169) (not d!1589289) (not b!4936887) (not bm!344472) (not b!4936621) (not b!4936855) (not b!4936849) (not setNonEmpty!27820) (not b!4936850) (not bm!344486) tp_is_empty!36047 (not d!1589271) (not b!4936630) (not b!4936679) (not b!4936856) (not b!4936890) (not d!1589165) (not b!4936876) (not b!4936877) (not b!4936895) (not b!4936872) (not b!4936666) (not b!4936848) (not b!4936845) (not b!4936688) (not b!4936883) (not d!1589279) (not b!4936844) (not d!1589283) (not b!4936894) (not d!1589287) (not b!4936656) (not b!4936680) (not d!1589297) (not d!1589173) (not b!4936898) (not d!1589265) (not b!4936886) (not d!1589263) (not d!1589163) (not d!1589267) (not b!4936846) (not b!4936665) (not b!4936884) (not b!4936891) (not d!1589275) (not b!4936914) (not b!4936681) (not b!4936916) (not b!4936664) (not b!4936623) (not b!4936873) (not d!1589259) (not d!1589277) (not d!1589281) (not b!4936899) (not d!1589157) (not b!4936927) (not b!4936900) (not d!1589285) (not d!1589151) (not b!4936669) (not b!4936905) (not b!4936861) (not d!1589177) (not d!1589167) (not b!4936654) (not d!1589293) (not b!4936921) (not b!4936612) (not d!1589161) (not d!1589159) (not d!1589261) (not bm!344487) (not b!4936690) (not d!1589269) (not b!4936926) (not d!1589273))
(check-sat)
