; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!548012 () Bool)

(assert start!548012)

(declare-fun b!5174901 () Bool)

(declare-fun e!3224546 () Bool)

(declare-fun e!3224544 () Bool)

(assert (=> b!5174901 (= e!3224546 e!3224544)))

(declare-fun res!2199248 () Bool)

(assert (=> b!5174901 (=> res!2199248 e!3224544)))

(declare-datatypes ((C!29580 0))(
  ( (C!29581 (val!24492 Int)) )
))
(declare-datatypes ((List!60281 0))(
  ( (Nil!60157) (Cons!60157 (h!66605 C!29580) (t!373434 List!60281)) )
))
(declare-fun input!5817 () List!60281)

(declare-fun lt!2131873 () Int)

(declare-fun lt!2131870 () List!60281)

(declare-fun lt!2131877 () Int)

(declare-fun lt!2131871 () List!60281)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14655 0))(
  ( (ElementMatch!14655 (c!891038 C!29580)) (Concat!23500 (regOne!29822 Regex!14655) (regTwo!29822 Regex!14655)) (EmptyExpr!14655) (Star!14655 (reg!14984 Regex!14655)) (EmptyLang!14655) (Union!14655 (regOne!29823 Regex!14655) (regTwo!29823 Regex!14655)) )
))
(declare-datatypes ((List!60282 0))(
  ( (Nil!60158) (Cons!60158 (h!66606 Regex!14655) (t!373435 List!60282)) )
))
(declare-datatypes ((Context!8078 0))(
  ( (Context!8079 (exprs!4539 List!60282)) )
))
(declare-fun lt!2131878 () (InoxSet Context!8078))

(declare-fun isEmpty!32207 (List!60281) Bool)

(declare-datatypes ((tuple2!63860 0))(
  ( (tuple2!63861 (_1!35233 List!60281) (_2!35233 List!60281)) )
))
(declare-fun findLongestMatchInnerZipper!311 ((InoxSet Context!8078) List!60281 Int List!60281 List!60281 Int) tuple2!63860)

(declare-fun tail!10172 (List!60281) List!60281)

(assert (=> b!5174901 (= res!2199248 (isEmpty!32207 (_1!35233 (findLongestMatchInnerZipper!311 lt!2131878 lt!2131870 (+ 1 lt!2131873) (tail!10172 lt!2131871) input!5817 lt!2131877))))))

(declare-fun z!4581 () (InoxSet Context!8078))

(declare-fun lt!2131872 () C!29580)

(declare-fun derivationStepZipper!1001 ((InoxSet Context!8078) C!29580) (InoxSet Context!8078))

(assert (=> b!5174901 (= lt!2131878 (derivationStepZipper!1001 z!4581 lt!2131872))))

(declare-fun b!5174902 () Bool)

(declare-fun res!2199251 () Bool)

(declare-fun e!3224545 () Bool)

(assert (=> b!5174902 (=> (not res!2199251) (not e!3224545))))

(declare-fun testedP!294 () List!60281)

(declare-fun baseZ!62 () (InoxSet Context!8078))

(declare-fun derivationZipper!278 ((InoxSet Context!8078) List!60281) (InoxSet Context!8078))

(assert (=> b!5174902 (= res!2199251 (= (derivationZipper!278 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5174903 () Bool)

(declare-fun e!3224543 () Bool)

(declare-fun tp!1451863 () Bool)

(assert (=> b!5174903 (= e!3224543 tp!1451863)))

(declare-fun b!5174904 () Bool)

(declare-fun e!3224540 () Bool)

(declare-fun tp!1451864 () Bool)

(assert (=> b!5174904 (= e!3224540 tp!1451864)))

(declare-fun b!5174905 () Bool)

(declare-fun res!2199254 () Bool)

(declare-fun e!3224539 () Bool)

(assert (=> b!5174905 (=> (not res!2199254) (not e!3224539))))

(assert (=> b!5174905 (= res!2199254 (not (= testedP!294 input!5817)))))

(declare-fun res!2199253 () Bool)

(assert (=> start!548012 (=> (not res!2199253) (not e!3224545))))

(declare-fun isPrefix!5788 (List!60281 List!60281) Bool)

(assert (=> start!548012 (= res!2199253 (isPrefix!5788 testedP!294 input!5817))))

(assert (=> start!548012 e!3224545))

(declare-fun e!3224537 () Bool)

(assert (=> start!548012 e!3224537))

(declare-fun e!3224542 () Bool)

(assert (=> start!548012 e!3224542))

(declare-fun condSetEmpty!32300 () Bool)

(assert (=> start!548012 (= condSetEmpty!32300 (= baseZ!62 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32300 () Bool)

(assert (=> start!548012 setRes!32300))

(declare-fun condSetEmpty!32299 () Bool)

(assert (=> start!548012 (= condSetEmpty!32299 (= z!4581 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32299 () Bool)

(assert (=> start!548012 setRes!32299))

(declare-fun b!5174906 () Bool)

(declare-datatypes ((Unit!151938 0))(
  ( (Unit!151939) )
))
(declare-fun e!3224541 () Unit!151938)

(declare-fun Unit!151940 () Unit!151938)

(assert (=> b!5174906 (= e!3224541 Unit!151940)))

(declare-fun lt!2131880 () Unit!151938)

(declare-fun lemmaIsPrefixRefl!3793 (List!60281 List!60281) Unit!151938)

(assert (=> b!5174906 (= lt!2131880 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(assert (=> b!5174906 (isPrefix!5788 input!5817 input!5817)))

(declare-fun lt!2131876 () Unit!151938)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1433 (List!60281 List!60281 List!60281) Unit!151938)

(assert (=> b!5174906 (= lt!2131876 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 testedP!294 input!5817))))

(assert (=> b!5174906 false))

(declare-fun b!5174907 () Bool)

(declare-fun e!3224538 () Bool)

(assert (=> b!5174907 (= e!3224539 (not e!3224538))))

(declare-fun res!2199250 () Bool)

(assert (=> b!5174907 (=> res!2199250 e!3224538)))

(assert (=> b!5174907 (= res!2199250 (>= lt!2131873 lt!2131877))))

(declare-fun lt!2131879 () Unit!151938)

(assert (=> b!5174907 (= lt!2131879 e!3224541)))

(declare-fun c!891037 () Bool)

(assert (=> b!5174907 (= c!891037 (= lt!2131873 lt!2131877))))

(assert (=> b!5174907 (<= lt!2131873 lt!2131877)))

(declare-fun lt!2131875 () Unit!151938)

(declare-fun lemmaIsPrefixThenSmallerEqSize!949 (List!60281 List!60281) Unit!151938)

(assert (=> b!5174907 (= lt!2131875 (lemmaIsPrefixThenSmallerEqSize!949 testedP!294 input!5817))))

(declare-fun setIsEmpty!32299 () Bool)

(assert (=> setIsEmpty!32299 setRes!32299))

(declare-fun b!5174908 () Bool)

(declare-fun size!39691 (List!60281) Int)

(assert (=> b!5174908 (= e!3224544 (< (- lt!2131877 (size!39691 lt!2131870)) (- lt!2131877 lt!2131873)))))

(assert (=> b!5174908 (= (derivationZipper!278 baseZ!62 lt!2131870) lt!2131878)))

(declare-fun lt!2131874 () Unit!151938)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!111 ((InoxSet Context!8078) (InoxSet Context!8078) List!60281 C!29580) Unit!151938)

(assert (=> b!5174908 (= lt!2131874 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!111 baseZ!62 z!4581 testedP!294 lt!2131872))))

(declare-fun b!5174909 () Bool)

(declare-fun tp_is_empty!38563 () Bool)

(declare-fun tp!1451865 () Bool)

(assert (=> b!5174909 (= e!3224542 (and tp_is_empty!38563 tp!1451865))))

(declare-fun b!5174910 () Bool)

(assert (=> b!5174910 (= e!3224538 e!3224546)))

(declare-fun res!2199252 () Bool)

(assert (=> b!5174910 (=> res!2199252 e!3224546)))

(declare-fun nullableZipper!1193 ((InoxSet Context!8078)) Bool)

(assert (=> b!5174910 (= res!2199252 (not (nullableZipper!1193 z!4581)))))

(assert (=> b!5174910 (isPrefix!5788 lt!2131870 input!5817)))

(declare-fun lt!2131869 () Unit!151938)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1093 (List!60281 List!60281) Unit!151938)

(assert (=> b!5174910 (= lt!2131869 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 testedP!294 input!5817))))

(declare-fun ++!13171 (List!60281 List!60281) List!60281)

(assert (=> b!5174910 (= lt!2131870 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))))

(declare-fun head!11073 (List!60281) C!29580)

(assert (=> b!5174910 (= lt!2131872 (head!11073 lt!2131871))))

(declare-fun b!5174911 () Bool)

(assert (=> b!5174911 (= e!3224545 e!3224539)))

(declare-fun res!2199249 () Bool)

(assert (=> b!5174911 (=> (not res!2199249) (not e!3224539))))

(assert (=> b!5174911 (= res!2199249 (not (isEmpty!32207 (_1!35233 (findLongestMatchInnerZipper!311 z!4581 testedP!294 lt!2131873 lt!2131871 input!5817 lt!2131877)))))))

(assert (=> b!5174911 (= lt!2131877 (size!39691 input!5817))))

(declare-fun getSuffix!3436 (List!60281 List!60281) List!60281)

(assert (=> b!5174911 (= lt!2131871 (getSuffix!3436 input!5817 testedP!294))))

(assert (=> b!5174911 (= lt!2131873 (size!39691 testedP!294))))

(declare-fun b!5174912 () Bool)

(declare-fun Unit!151941 () Unit!151938)

(assert (=> b!5174912 (= e!3224541 Unit!151941)))

(declare-fun b!5174913 () Bool)

(declare-fun tp!1451866 () Bool)

(assert (=> b!5174913 (= e!3224537 (and tp_is_empty!38563 tp!1451866))))

(declare-fun setNonEmpty!32299 () Bool)

(declare-fun tp!1451867 () Bool)

(declare-fun setElem!32300 () Context!8078)

(declare-fun inv!79884 (Context!8078) Bool)

(assert (=> setNonEmpty!32299 (= setRes!32300 (and tp!1451867 (inv!79884 setElem!32300) e!3224543))))

(declare-fun setRest!32300 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32299 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32300 true) setRest!32300))))

(declare-fun setElem!32299 () Context!8078)

(declare-fun tp!1451862 () Bool)

(declare-fun setNonEmpty!32300 () Bool)

(assert (=> setNonEmpty!32300 (= setRes!32299 (and tp!1451862 (inv!79884 setElem!32299) e!3224540))))

(declare-fun setRest!32299 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32300 (= z!4581 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32299 true) setRest!32299))))

(declare-fun setIsEmpty!32300 () Bool)

(assert (=> setIsEmpty!32300 setRes!32300))

(assert (= (and start!548012 res!2199253) b!5174902))

(assert (= (and b!5174902 res!2199251) b!5174911))

(assert (= (and b!5174911 res!2199249) b!5174905))

(assert (= (and b!5174905 res!2199254) b!5174907))

(assert (= (and b!5174907 c!891037) b!5174906))

(assert (= (and b!5174907 (not c!891037)) b!5174912))

(assert (= (and b!5174907 (not res!2199250)) b!5174910))

(assert (= (and b!5174910 (not res!2199252)) b!5174901))

(assert (= (and b!5174901 (not res!2199248)) b!5174908))

(get-info :version)

(assert (= (and start!548012 ((_ is Cons!60157) testedP!294)) b!5174913))

(assert (= (and start!548012 ((_ is Cons!60157) input!5817)) b!5174909))

(assert (= (and start!548012 condSetEmpty!32300) setIsEmpty!32300))

(assert (= (and start!548012 (not condSetEmpty!32300)) setNonEmpty!32299))

(assert (= setNonEmpty!32299 b!5174903))

(assert (= (and start!548012 condSetEmpty!32299) setIsEmpty!32299))

(assert (= (and start!548012 (not condSetEmpty!32299)) setNonEmpty!32300))

(assert (= setNonEmpty!32300 b!5174904))

(declare-fun m!6228902 () Bool)

(assert (=> start!548012 m!6228902))

(declare-fun m!6228904 () Bool)

(assert (=> b!5174910 m!6228904))

(declare-fun m!6228906 () Bool)

(assert (=> b!5174910 m!6228906))

(declare-fun m!6228908 () Bool)

(assert (=> b!5174910 m!6228908))

(declare-fun m!6228910 () Bool)

(assert (=> b!5174910 m!6228910))

(declare-fun m!6228912 () Bool)

(assert (=> b!5174910 m!6228912))

(declare-fun m!6228914 () Bool)

(assert (=> b!5174902 m!6228914))

(declare-fun m!6228916 () Bool)

(assert (=> setNonEmpty!32300 m!6228916))

(declare-fun m!6228918 () Bool)

(assert (=> setNonEmpty!32299 m!6228918))

(declare-fun m!6228920 () Bool)

(assert (=> b!5174907 m!6228920))

(declare-fun m!6228922 () Bool)

(assert (=> b!5174901 m!6228922))

(assert (=> b!5174901 m!6228922))

(declare-fun m!6228924 () Bool)

(assert (=> b!5174901 m!6228924))

(declare-fun m!6228926 () Bool)

(assert (=> b!5174901 m!6228926))

(declare-fun m!6228928 () Bool)

(assert (=> b!5174901 m!6228928))

(declare-fun m!6228930 () Bool)

(assert (=> b!5174906 m!6228930))

(declare-fun m!6228932 () Bool)

(assert (=> b!5174906 m!6228932))

(declare-fun m!6228934 () Bool)

(assert (=> b!5174906 m!6228934))

(declare-fun m!6228936 () Bool)

(assert (=> b!5174911 m!6228936))

(declare-fun m!6228938 () Bool)

(assert (=> b!5174911 m!6228938))

(declare-fun m!6228940 () Bool)

(assert (=> b!5174911 m!6228940))

(declare-fun m!6228942 () Bool)

(assert (=> b!5174911 m!6228942))

(declare-fun m!6228944 () Bool)

(assert (=> b!5174911 m!6228944))

(declare-fun m!6228946 () Bool)

(assert (=> b!5174908 m!6228946))

(declare-fun m!6228948 () Bool)

(assert (=> b!5174908 m!6228948))

(declare-fun m!6228950 () Bool)

(assert (=> b!5174908 m!6228950))

(check-sat (not start!548012) (not b!5174906) (not b!5174904) (not b!5174911) tp_is_empty!38563 (not b!5174907) (not setNonEmpty!32299) (not b!5174908) (not setNonEmpty!32300) (not b!5174903) (not b!5174913) (not b!5174901) (not b!5174909) (not b!5174902) (not b!5174910))
(check-sat)
(get-model)

(declare-fun d!1670159 () Bool)

(declare-fun lt!2131883 () Int)

(assert (=> d!1670159 (>= lt!2131883 0)))

(declare-fun e!3224549 () Int)

(assert (=> d!1670159 (= lt!2131883 e!3224549)))

(declare-fun c!891041 () Bool)

(assert (=> d!1670159 (= c!891041 ((_ is Nil!60157) input!5817))))

(assert (=> d!1670159 (= (size!39691 input!5817) lt!2131883)))

(declare-fun b!5174918 () Bool)

(assert (=> b!5174918 (= e!3224549 0)))

(declare-fun b!5174919 () Bool)

(assert (=> b!5174919 (= e!3224549 (+ 1 (size!39691 (t!373434 input!5817))))))

(assert (= (and d!1670159 c!891041) b!5174918))

(assert (= (and d!1670159 (not c!891041)) b!5174919))

(declare-fun m!6228952 () Bool)

(assert (=> b!5174919 m!6228952))

(assert (=> b!5174911 d!1670159))

(declare-fun d!1670161 () Bool)

(assert (=> d!1670161 (= (isEmpty!32207 (_1!35233 (findLongestMatchInnerZipper!311 z!4581 testedP!294 lt!2131873 lt!2131871 input!5817 lt!2131877))) ((_ is Nil!60157) (_1!35233 (findLongestMatchInnerZipper!311 z!4581 testedP!294 lt!2131873 lt!2131871 input!5817 lt!2131877))))))

(assert (=> b!5174911 d!1670161))

(declare-fun d!1670163 () Bool)

(declare-fun lt!2131886 () List!60281)

(assert (=> d!1670163 (= (++!13171 testedP!294 lt!2131886) input!5817)))

(declare-fun e!3224552 () List!60281)

(assert (=> d!1670163 (= lt!2131886 e!3224552)))

(declare-fun c!891044 () Bool)

(assert (=> d!1670163 (= c!891044 ((_ is Cons!60157) testedP!294))))

(assert (=> d!1670163 (>= (size!39691 input!5817) (size!39691 testedP!294))))

(assert (=> d!1670163 (= (getSuffix!3436 input!5817 testedP!294) lt!2131886)))

(declare-fun b!5174924 () Bool)

(assert (=> b!5174924 (= e!3224552 (getSuffix!3436 (tail!10172 input!5817) (t!373434 testedP!294)))))

(declare-fun b!5174925 () Bool)

(assert (=> b!5174925 (= e!3224552 input!5817)))

(assert (= (and d!1670163 c!891044) b!5174924))

(assert (= (and d!1670163 (not c!891044)) b!5174925))

(declare-fun m!6228954 () Bool)

(assert (=> d!1670163 m!6228954))

(assert (=> d!1670163 m!6228940))

(assert (=> d!1670163 m!6228936))

(declare-fun m!6228956 () Bool)

(assert (=> b!5174924 m!6228956))

(assert (=> b!5174924 m!6228956))

(declare-fun m!6228958 () Bool)

(assert (=> b!5174924 m!6228958))

(assert (=> b!5174911 d!1670163))

(declare-fun b!5174954 () Bool)

(declare-fun e!3224571 () tuple2!63860)

(assert (=> b!5174954 (= e!3224571 (tuple2!63861 testedP!294 Nil!60157))))

(declare-fun bm!363483 () Bool)

(declare-fun call!363494 () (InoxSet Context!8078))

(declare-fun call!363495 () C!29580)

(assert (=> bm!363483 (= call!363494 (derivationStepZipper!1001 z!4581 call!363495))))

(declare-fun b!5174955 () Bool)

(declare-fun e!3224569 () tuple2!63860)

(declare-fun lt!2131952 () tuple2!63860)

(assert (=> b!5174955 (= e!3224569 lt!2131952)))

(declare-fun b!5174956 () Bool)

(declare-fun e!3224573 () tuple2!63860)

(assert (=> b!5174956 (= e!3224573 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363484 () Bool)

(declare-fun call!363493 () List!60281)

(assert (=> bm!363484 (= call!363493 (tail!10172 lt!2131871))))

(declare-fun b!5174957 () Bool)

(declare-fun e!3224574 () tuple2!63860)

(declare-fun call!363488 () tuple2!63860)

(assert (=> b!5174957 (= e!3224574 call!363488)))

(declare-fun b!5174958 () Bool)

(assert (=> b!5174958 (= e!3224569 (tuple2!63861 testedP!294 lt!2131871))))

(declare-fun bm!363485 () Bool)

(declare-fun call!363491 () Unit!151938)

(assert (=> bm!363485 (= call!363491 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 testedP!294 input!5817))))

(declare-fun b!5174959 () Bool)

(declare-fun c!891057 () Bool)

(declare-fun call!363492 () Bool)

(assert (=> b!5174959 (= c!891057 call!363492)))

(declare-fun lt!2131967 () Unit!151938)

(declare-fun lt!2131945 () Unit!151938)

(assert (=> b!5174959 (= lt!2131967 lt!2131945)))

(assert (=> b!5174959 (= input!5817 testedP!294)))

(assert (=> b!5174959 (= lt!2131945 call!363491)))

(declare-fun lt!2131957 () Unit!151938)

(declare-fun lt!2131954 () Unit!151938)

(assert (=> b!5174959 (= lt!2131957 lt!2131954)))

(declare-fun call!363489 () Bool)

(assert (=> b!5174959 call!363489))

(declare-fun call!363490 () Unit!151938)

(assert (=> b!5174959 (= lt!2131954 call!363490)))

(declare-fun e!3224576 () tuple2!63860)

(assert (=> b!5174959 (= e!3224576 e!3224571)))

(declare-fun b!5174960 () Bool)

(assert (=> b!5174960 (= e!3224574 e!3224569)))

(assert (=> b!5174960 (= lt!2131952 call!363488)))

(declare-fun c!891058 () Bool)

(assert (=> b!5174960 (= c!891058 (isEmpty!32207 (_1!35233 lt!2131952)))))

(declare-fun d!1670165 () Bool)

(declare-fun e!3224575 () Bool)

(assert (=> d!1670165 e!3224575))

(declare-fun res!2199260 () Bool)

(assert (=> d!1670165 (=> (not res!2199260) (not e!3224575))))

(declare-fun lt!2131947 () tuple2!63860)

(assert (=> d!1670165 (= res!2199260 (= (++!13171 (_1!35233 lt!2131947) (_2!35233 lt!2131947)) input!5817))))

(assert (=> d!1670165 (= lt!2131947 e!3224573)))

(declare-fun c!891061 () Bool)

(declare-fun lostCauseZipper!1342 ((InoxSet Context!8078)) Bool)

(assert (=> d!1670165 (= c!891061 (lostCauseZipper!1342 z!4581))))

(declare-fun lt!2131943 () Unit!151938)

(declare-fun Unit!151945 () Unit!151938)

(assert (=> d!1670165 (= lt!2131943 Unit!151945)))

(assert (=> d!1670165 (= (getSuffix!3436 input!5817 testedP!294) lt!2131871)))

(declare-fun lt!2131956 () Unit!151938)

(declare-fun lt!2131948 () Unit!151938)

(assert (=> d!1670165 (= lt!2131956 lt!2131948)))

(declare-fun lt!2131944 () List!60281)

(assert (=> d!1670165 (= lt!2131871 lt!2131944)))

(declare-fun lemmaSamePrefixThenSameSuffix!2709 (List!60281 List!60281 List!60281 List!60281 List!60281) Unit!151938)

(assert (=> d!1670165 (= lt!2131948 (lemmaSamePrefixThenSameSuffix!2709 testedP!294 lt!2131871 testedP!294 lt!2131944 input!5817))))

(assert (=> d!1670165 (= lt!2131944 (getSuffix!3436 input!5817 testedP!294))))

(declare-fun lt!2131965 () Unit!151938)

(declare-fun lt!2131951 () Unit!151938)

(assert (=> d!1670165 (= lt!2131965 lt!2131951)))

(assert (=> d!1670165 (isPrefix!5788 testedP!294 (++!13171 testedP!294 lt!2131871))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3603 (List!60281 List!60281) Unit!151938)

(assert (=> d!1670165 (= lt!2131951 (lemmaConcatTwoListThenFirstIsPrefix!3603 testedP!294 lt!2131871))))

(assert (=> d!1670165 (= (++!13171 testedP!294 lt!2131871) input!5817)))

(assert (=> d!1670165 (= (findLongestMatchInnerZipper!311 z!4581 testedP!294 lt!2131873 lt!2131871 input!5817 lt!2131877) lt!2131947)))

(declare-fun bm!363486 () Bool)

(assert (=> bm!363486 (= call!363492 (nullableZipper!1193 z!4581))))

(declare-fun bm!363487 () Bool)

(assert (=> bm!363487 (= call!363495 (head!11073 lt!2131871))))

(declare-fun b!5174961 () Bool)

(declare-fun e!3224572 () Bool)

(assert (=> b!5174961 (= e!3224572 (>= (size!39691 (_1!35233 lt!2131947)) (size!39691 testedP!294)))))

(declare-fun b!5174962 () Bool)

(assert (=> b!5174962 (= e!3224573 e!3224576)))

(declare-fun c!891060 () Bool)

(assert (=> b!5174962 (= c!891060 (= lt!2131873 lt!2131877))))

(declare-fun bm!363488 () Bool)

(declare-fun lt!2131958 () List!60281)

(assert (=> bm!363488 (= call!363488 (findLongestMatchInnerZipper!311 call!363494 lt!2131958 (+ lt!2131873 1) call!363493 input!5817 lt!2131877))))

(declare-fun b!5174963 () Bool)

(declare-fun e!3224570 () Unit!151938)

(declare-fun Unit!151946 () Unit!151938)

(assert (=> b!5174963 (= e!3224570 Unit!151946)))

(declare-fun lt!2131964 () Unit!151938)

(assert (=> b!5174963 (= lt!2131964 call!363490)))

(assert (=> b!5174963 call!363489))

(declare-fun lt!2131963 () Unit!151938)

(assert (=> b!5174963 (= lt!2131963 lt!2131964)))

(declare-fun lt!2131953 () Unit!151938)

(assert (=> b!5174963 (= lt!2131953 call!363491)))

(assert (=> b!5174963 (= input!5817 testedP!294)))

(declare-fun lt!2131950 () Unit!151938)

(assert (=> b!5174963 (= lt!2131950 lt!2131953)))

(assert (=> b!5174963 false))

(declare-fun bm!363489 () Bool)

(assert (=> bm!363489 (= call!363490 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5174964 () Bool)

(declare-fun c!891062 () Bool)

(assert (=> b!5174964 (= c!891062 call!363492)))

(declare-fun lt!2131955 () Unit!151938)

(declare-fun lt!2131946 () Unit!151938)

(assert (=> b!5174964 (= lt!2131955 lt!2131946)))

(declare-fun lt!2131949 () List!60281)

(declare-fun lt!2131962 () C!29580)

(assert (=> b!5174964 (= (++!13171 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)) lt!2131949) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1590 (List!60281 C!29580 List!60281 List!60281) Unit!151938)

(assert (=> b!5174964 (= lt!2131946 (lemmaMoveElementToOtherListKeepsConcatEq!1590 testedP!294 lt!2131962 lt!2131949 input!5817))))

(assert (=> b!5174964 (= lt!2131949 (tail!10172 lt!2131871))))

(assert (=> b!5174964 (= lt!2131962 (head!11073 lt!2131871))))

(declare-fun lt!2131961 () Unit!151938)

(declare-fun lt!2131942 () Unit!151938)

(assert (=> b!5174964 (= lt!2131961 lt!2131942)))

(assert (=> b!5174964 (isPrefix!5788 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) input!5817)))

(assert (=> b!5174964 (= lt!2131942 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 testedP!294 input!5817))))

(assert (=> b!5174964 (= lt!2131958 (++!13171 testedP!294 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))

(declare-fun lt!2131960 () Unit!151938)

(assert (=> b!5174964 (= lt!2131960 e!3224570)))

(declare-fun c!891059 () Bool)

(assert (=> b!5174964 (= c!891059 (= (size!39691 testedP!294) (size!39691 input!5817)))))

(declare-fun lt!2131959 () Unit!151938)

(declare-fun lt!2131966 () Unit!151938)

(assert (=> b!5174964 (= lt!2131959 lt!2131966)))

(assert (=> b!5174964 (<= (size!39691 testedP!294) (size!39691 input!5817))))

(assert (=> b!5174964 (= lt!2131966 (lemmaIsPrefixThenSmallerEqSize!949 testedP!294 input!5817))))

(assert (=> b!5174964 (= e!3224576 e!3224574)))

(declare-fun b!5174965 () Bool)

(declare-fun Unit!151947 () Unit!151938)

(assert (=> b!5174965 (= e!3224570 Unit!151947)))

(declare-fun b!5174966 () Bool)

(assert (=> b!5174966 (= e!3224571 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363490 () Bool)

(assert (=> bm!363490 (= call!363489 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5174967 () Bool)

(assert (=> b!5174967 (= e!3224575 e!3224572)))

(declare-fun res!2199259 () Bool)

(assert (=> b!5174967 (=> res!2199259 e!3224572)))

(assert (=> b!5174967 (= res!2199259 (isEmpty!32207 (_1!35233 lt!2131947)))))

(assert (= (and d!1670165 c!891061) b!5174956))

(assert (= (and d!1670165 (not c!891061)) b!5174962))

(assert (= (and b!5174962 c!891060) b!5174959))

(assert (= (and b!5174962 (not c!891060)) b!5174964))

(assert (= (and b!5174959 c!891057) b!5174954))

(assert (= (and b!5174959 (not c!891057)) b!5174966))

(assert (= (and b!5174964 c!891059) b!5174963))

(assert (= (and b!5174964 (not c!891059)) b!5174965))

(assert (= (and b!5174964 c!891062) b!5174960))

(assert (= (and b!5174964 (not c!891062)) b!5174957))

(assert (= (and b!5174960 c!891058) b!5174958))

(assert (= (and b!5174960 (not c!891058)) b!5174955))

(assert (= (or b!5174960 b!5174957) bm!363484))

(assert (= (or b!5174960 b!5174957) bm!363487))

(assert (= (or b!5174960 b!5174957) bm!363483))

(assert (= (or b!5174960 b!5174957) bm!363488))

(assert (= (or b!5174959 b!5174963) bm!363489))

(assert (= (or b!5174959 b!5174964) bm!363486))

(assert (= (or b!5174959 b!5174963) bm!363490))

(assert (= (or b!5174959 b!5174963) bm!363485))

(assert (= (and d!1670165 res!2199260) b!5174967))

(assert (= (and b!5174967 (not res!2199259)) b!5174961))

(declare-fun m!6228962 () Bool)

(assert (=> b!5174960 m!6228962))

(assert (=> b!5174964 m!6228938))

(assert (=> b!5174964 m!6228940))

(assert (=> b!5174964 m!6228904))

(declare-fun m!6228964 () Bool)

(assert (=> b!5174964 m!6228964))

(assert (=> b!5174964 m!6228910))

(declare-fun m!6228966 () Bool)

(assert (=> b!5174964 m!6228966))

(assert (=> b!5174964 m!6228964))

(declare-fun m!6228968 () Bool)

(assert (=> b!5174964 m!6228968))

(declare-fun m!6228970 () Bool)

(assert (=> b!5174964 m!6228970))

(declare-fun m!6228972 () Bool)

(assert (=> b!5174964 m!6228972))

(assert (=> b!5174964 m!6228938))

(declare-fun m!6228974 () Bool)

(assert (=> b!5174964 m!6228974))

(assert (=> b!5174964 m!6228922))

(assert (=> b!5174964 m!6228936))

(assert (=> b!5174964 m!6228972))

(declare-fun m!6228976 () Bool)

(assert (=> b!5174964 m!6228976))

(assert (=> b!5174964 m!6228920))

(assert (=> bm!363489 m!6228930))

(assert (=> bm!363487 m!6228910))

(assert (=> bm!363486 m!6228912))

(declare-fun m!6228978 () Bool)

(assert (=> b!5174961 m!6228978))

(assert (=> b!5174961 m!6228936))

(assert (=> bm!363490 m!6228932))

(declare-fun m!6228980 () Bool)

(assert (=> bm!363483 m!6228980))

(assert (=> bm!363484 m!6228922))

(assert (=> d!1670165 m!6228938))

(declare-fun m!6228982 () Bool)

(assert (=> d!1670165 m!6228982))

(declare-fun m!6228984 () Bool)

(assert (=> d!1670165 m!6228984))

(declare-fun m!6228986 () Bool)

(assert (=> d!1670165 m!6228986))

(declare-fun m!6228988 () Bool)

(assert (=> d!1670165 m!6228988))

(declare-fun m!6228990 () Bool)

(assert (=> d!1670165 m!6228990))

(assert (=> d!1670165 m!6228988))

(declare-fun m!6228992 () Bool)

(assert (=> d!1670165 m!6228992))

(declare-fun m!6228994 () Bool)

(assert (=> bm!363488 m!6228994))

(declare-fun m!6228996 () Bool)

(assert (=> b!5174967 m!6228996))

(assert (=> bm!363485 m!6228934))

(assert (=> b!5174911 d!1670165))

(declare-fun d!1670171 () Bool)

(declare-fun lt!2131968 () Int)

(assert (=> d!1670171 (>= lt!2131968 0)))

(declare-fun e!3224577 () Int)

(assert (=> d!1670171 (= lt!2131968 e!3224577)))

(declare-fun c!891063 () Bool)

(assert (=> d!1670171 (= c!891063 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670171 (= (size!39691 testedP!294) lt!2131968)))

(declare-fun b!5174968 () Bool)

(assert (=> b!5174968 (= e!3224577 0)))

(declare-fun b!5174969 () Bool)

(assert (=> b!5174969 (= e!3224577 (+ 1 (size!39691 (t!373434 testedP!294))))))

(assert (= (and d!1670171 c!891063) b!5174968))

(assert (= (and d!1670171 (not c!891063)) b!5174969))

(declare-fun m!6228998 () Bool)

(assert (=> b!5174969 m!6228998))

(assert (=> b!5174911 d!1670171))

(declare-fun d!1670173 () Bool)

(assert (=> d!1670173 (= (isEmpty!32207 (_1!35233 (findLongestMatchInnerZipper!311 lt!2131878 lt!2131870 (+ 1 lt!2131873) (tail!10172 lt!2131871) input!5817 lt!2131877))) ((_ is Nil!60157) (_1!35233 (findLongestMatchInnerZipper!311 lt!2131878 lt!2131870 (+ 1 lt!2131873) (tail!10172 lt!2131871) input!5817 lt!2131877))))))

(assert (=> b!5174901 d!1670173))

(declare-fun b!5174970 () Bool)

(declare-fun e!3224580 () tuple2!63860)

(assert (=> b!5174970 (= e!3224580 (tuple2!63861 lt!2131870 Nil!60157))))

(declare-fun bm!363491 () Bool)

(declare-fun call!363502 () (InoxSet Context!8078))

(declare-fun call!363503 () C!29580)

(assert (=> bm!363491 (= call!363502 (derivationStepZipper!1001 lt!2131878 call!363503))))

(declare-fun b!5174971 () Bool)

(declare-fun e!3224578 () tuple2!63860)

(declare-fun lt!2131979 () tuple2!63860)

(assert (=> b!5174971 (= e!3224578 lt!2131979)))

(declare-fun b!5174972 () Bool)

(declare-fun e!3224582 () tuple2!63860)

(assert (=> b!5174972 (= e!3224582 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363492 () Bool)

(declare-fun call!363501 () List!60281)

(assert (=> bm!363492 (= call!363501 (tail!10172 (tail!10172 lt!2131871)))))

(declare-fun b!5174973 () Bool)

(declare-fun e!3224583 () tuple2!63860)

(declare-fun call!363496 () tuple2!63860)

(assert (=> b!5174973 (= e!3224583 call!363496)))

(declare-fun b!5174974 () Bool)

(assert (=> b!5174974 (= e!3224578 (tuple2!63861 lt!2131870 (tail!10172 lt!2131871)))))

(declare-fun bm!363493 () Bool)

(declare-fun call!363499 () Unit!151938)

(assert (=> bm!363493 (= call!363499 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131870 input!5817))))

(declare-fun b!5174975 () Bool)

(declare-fun c!891064 () Bool)

(declare-fun call!363500 () Bool)

(assert (=> b!5174975 (= c!891064 call!363500)))

(declare-fun lt!2131994 () Unit!151938)

(declare-fun lt!2131972 () Unit!151938)

(assert (=> b!5174975 (= lt!2131994 lt!2131972)))

(assert (=> b!5174975 (= input!5817 lt!2131870)))

(assert (=> b!5174975 (= lt!2131972 call!363499)))

(declare-fun lt!2131984 () Unit!151938)

(declare-fun lt!2131981 () Unit!151938)

(assert (=> b!5174975 (= lt!2131984 lt!2131981)))

(declare-fun call!363497 () Bool)

(assert (=> b!5174975 call!363497))

(declare-fun call!363498 () Unit!151938)

(assert (=> b!5174975 (= lt!2131981 call!363498)))

(declare-fun e!3224585 () tuple2!63860)

(assert (=> b!5174975 (= e!3224585 e!3224580)))

(declare-fun b!5174976 () Bool)

(assert (=> b!5174976 (= e!3224583 e!3224578)))

(assert (=> b!5174976 (= lt!2131979 call!363496)))

(declare-fun c!891065 () Bool)

(assert (=> b!5174976 (= c!891065 (isEmpty!32207 (_1!35233 lt!2131979)))))

(declare-fun d!1670175 () Bool)

(declare-fun e!3224584 () Bool)

(assert (=> d!1670175 e!3224584))

(declare-fun res!2199262 () Bool)

(assert (=> d!1670175 (=> (not res!2199262) (not e!3224584))))

(declare-fun lt!2131974 () tuple2!63860)

(assert (=> d!1670175 (= res!2199262 (= (++!13171 (_1!35233 lt!2131974) (_2!35233 lt!2131974)) input!5817))))

(assert (=> d!1670175 (= lt!2131974 e!3224582)))

(declare-fun c!891068 () Bool)

(assert (=> d!1670175 (= c!891068 (lostCauseZipper!1342 lt!2131878))))

(declare-fun lt!2131970 () Unit!151938)

(declare-fun Unit!151951 () Unit!151938)

(assert (=> d!1670175 (= lt!2131970 Unit!151951)))

(assert (=> d!1670175 (= (getSuffix!3436 input!5817 lt!2131870) (tail!10172 lt!2131871))))

(declare-fun lt!2131983 () Unit!151938)

(declare-fun lt!2131975 () Unit!151938)

(assert (=> d!1670175 (= lt!2131983 lt!2131975)))

(declare-fun lt!2131971 () List!60281)

(assert (=> d!1670175 (= (tail!10172 lt!2131871) lt!2131971)))

(assert (=> d!1670175 (= lt!2131975 (lemmaSamePrefixThenSameSuffix!2709 lt!2131870 (tail!10172 lt!2131871) lt!2131870 lt!2131971 input!5817))))

(assert (=> d!1670175 (= lt!2131971 (getSuffix!3436 input!5817 lt!2131870))))

(declare-fun lt!2131992 () Unit!151938)

(declare-fun lt!2131978 () Unit!151938)

(assert (=> d!1670175 (= lt!2131992 lt!2131978)))

(assert (=> d!1670175 (isPrefix!5788 lt!2131870 (++!13171 lt!2131870 (tail!10172 lt!2131871)))))

(assert (=> d!1670175 (= lt!2131978 (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131870 (tail!10172 lt!2131871)))))

(assert (=> d!1670175 (= (++!13171 lt!2131870 (tail!10172 lt!2131871)) input!5817)))

(assert (=> d!1670175 (= (findLongestMatchInnerZipper!311 lt!2131878 lt!2131870 (+ 1 lt!2131873) (tail!10172 lt!2131871) input!5817 lt!2131877) lt!2131974)))

(declare-fun bm!363494 () Bool)

(assert (=> bm!363494 (= call!363500 (nullableZipper!1193 lt!2131878))))

(declare-fun bm!363495 () Bool)

(assert (=> bm!363495 (= call!363503 (head!11073 (tail!10172 lt!2131871)))))

(declare-fun b!5174977 () Bool)

(declare-fun e!3224581 () Bool)

(assert (=> b!5174977 (= e!3224581 (>= (size!39691 (_1!35233 lt!2131974)) (size!39691 lt!2131870)))))

(declare-fun b!5174978 () Bool)

(assert (=> b!5174978 (= e!3224582 e!3224585)))

(declare-fun c!891067 () Bool)

(assert (=> b!5174978 (= c!891067 (= (+ 1 lt!2131873) lt!2131877))))

(declare-fun bm!363496 () Bool)

(declare-fun lt!2131985 () List!60281)

(assert (=> bm!363496 (= call!363496 (findLongestMatchInnerZipper!311 call!363502 lt!2131985 (+ 1 lt!2131873 1) call!363501 input!5817 lt!2131877))))

(declare-fun b!5174979 () Bool)

(declare-fun e!3224579 () Unit!151938)

(declare-fun Unit!151952 () Unit!151938)

(assert (=> b!5174979 (= e!3224579 Unit!151952)))

(declare-fun lt!2131991 () Unit!151938)

(assert (=> b!5174979 (= lt!2131991 call!363498)))

(assert (=> b!5174979 call!363497))

(declare-fun lt!2131990 () Unit!151938)

(assert (=> b!5174979 (= lt!2131990 lt!2131991)))

(declare-fun lt!2131980 () Unit!151938)

(assert (=> b!5174979 (= lt!2131980 call!363499)))

(assert (=> b!5174979 (= input!5817 lt!2131870)))

(declare-fun lt!2131977 () Unit!151938)

(assert (=> b!5174979 (= lt!2131977 lt!2131980)))

(assert (=> b!5174979 false))

(declare-fun bm!363497 () Bool)

(assert (=> bm!363497 (= call!363498 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5174980 () Bool)

(declare-fun c!891069 () Bool)

(assert (=> b!5174980 (= c!891069 call!363500)))

(declare-fun lt!2131982 () Unit!151938)

(declare-fun lt!2131973 () Unit!151938)

(assert (=> b!5174980 (= lt!2131982 lt!2131973)))

(declare-fun lt!2131976 () List!60281)

(declare-fun lt!2131989 () C!29580)

(assert (=> b!5174980 (= (++!13171 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)) lt!2131976) input!5817)))

(assert (=> b!5174980 (= lt!2131973 (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131870 lt!2131989 lt!2131976 input!5817))))

(assert (=> b!5174980 (= lt!2131976 (tail!10172 (tail!10172 lt!2131871)))))

(assert (=> b!5174980 (= lt!2131989 (head!11073 (tail!10172 lt!2131871)))))

(declare-fun lt!2131988 () Unit!151938)

(declare-fun lt!2131969 () Unit!151938)

(assert (=> b!5174980 (= lt!2131988 lt!2131969)))

(assert (=> b!5174980 (isPrefix!5788 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) input!5817)))

(assert (=> b!5174980 (= lt!2131969 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131870 input!5817))))

(assert (=> b!5174980 (= lt!2131985 (++!13171 lt!2131870 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))

(declare-fun lt!2131987 () Unit!151938)

(assert (=> b!5174980 (= lt!2131987 e!3224579)))

(declare-fun c!891066 () Bool)

(assert (=> b!5174980 (= c!891066 (= (size!39691 lt!2131870) (size!39691 input!5817)))))

(declare-fun lt!2131986 () Unit!151938)

(declare-fun lt!2131993 () Unit!151938)

(assert (=> b!5174980 (= lt!2131986 lt!2131993)))

(assert (=> b!5174980 (<= (size!39691 lt!2131870) (size!39691 input!5817))))

(assert (=> b!5174980 (= lt!2131993 (lemmaIsPrefixThenSmallerEqSize!949 lt!2131870 input!5817))))

(assert (=> b!5174980 (= e!3224585 e!3224583)))

(declare-fun b!5174981 () Bool)

(declare-fun Unit!151953 () Unit!151938)

(assert (=> b!5174981 (= e!3224579 Unit!151953)))

(declare-fun b!5174982 () Bool)

(assert (=> b!5174982 (= e!3224580 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363498 () Bool)

(assert (=> bm!363498 (= call!363497 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5174983 () Bool)

(assert (=> b!5174983 (= e!3224584 e!3224581)))

(declare-fun res!2199261 () Bool)

(assert (=> b!5174983 (=> res!2199261 e!3224581)))

(assert (=> b!5174983 (= res!2199261 (isEmpty!32207 (_1!35233 lt!2131974)))))

(assert (= (and d!1670175 c!891068) b!5174972))

(assert (= (and d!1670175 (not c!891068)) b!5174978))

(assert (= (and b!5174978 c!891067) b!5174975))

(assert (= (and b!5174978 (not c!891067)) b!5174980))

(assert (= (and b!5174975 c!891064) b!5174970))

(assert (= (and b!5174975 (not c!891064)) b!5174982))

(assert (= (and b!5174980 c!891066) b!5174979))

(assert (= (and b!5174980 (not c!891066)) b!5174981))

(assert (= (and b!5174980 c!891069) b!5174976))

(assert (= (and b!5174980 (not c!891069)) b!5174973))

(assert (= (and b!5174976 c!891065) b!5174974))

(assert (= (and b!5174976 (not c!891065)) b!5174971))

(assert (= (or b!5174976 b!5174973) bm!363492))

(assert (= (or b!5174976 b!5174973) bm!363495))

(assert (= (or b!5174976 b!5174973) bm!363491))

(assert (= (or b!5174976 b!5174973) bm!363496))

(assert (= (or b!5174975 b!5174979) bm!363497))

(assert (= (or b!5174975 b!5174980) bm!363494))

(assert (= (or b!5174975 b!5174979) bm!363498))

(assert (= (or b!5174975 b!5174979) bm!363493))

(assert (= (and d!1670175 res!2199262) b!5174983))

(assert (= (and b!5174983 (not res!2199261)) b!5174977))

(declare-fun m!6229000 () Bool)

(assert (=> b!5174976 m!6229000))

(declare-fun m!6229002 () Bool)

(assert (=> b!5174980 m!6229002))

(assert (=> b!5174980 m!6228940))

(declare-fun m!6229004 () Bool)

(assert (=> b!5174980 m!6229004))

(declare-fun m!6229006 () Bool)

(assert (=> b!5174980 m!6229006))

(assert (=> b!5174980 m!6228922))

(declare-fun m!6229008 () Bool)

(assert (=> b!5174980 m!6229008))

(declare-fun m!6229010 () Bool)

(assert (=> b!5174980 m!6229010))

(assert (=> b!5174980 m!6229006))

(declare-fun m!6229012 () Bool)

(assert (=> b!5174980 m!6229012))

(declare-fun m!6229014 () Bool)

(assert (=> b!5174980 m!6229014))

(declare-fun m!6229016 () Bool)

(assert (=> b!5174980 m!6229016))

(assert (=> b!5174980 m!6229002))

(declare-fun m!6229018 () Bool)

(assert (=> b!5174980 m!6229018))

(assert (=> b!5174980 m!6228922))

(declare-fun m!6229020 () Bool)

(assert (=> b!5174980 m!6229020))

(assert (=> b!5174980 m!6228946))

(assert (=> b!5174980 m!6229016))

(declare-fun m!6229022 () Bool)

(assert (=> b!5174980 m!6229022))

(declare-fun m!6229024 () Bool)

(assert (=> b!5174980 m!6229024))

(assert (=> bm!363497 m!6228930))

(assert (=> bm!363495 m!6228922))

(assert (=> bm!363495 m!6229008))

(declare-fun m!6229026 () Bool)

(assert (=> bm!363494 m!6229026))

(declare-fun m!6229028 () Bool)

(assert (=> b!5174977 m!6229028))

(assert (=> b!5174977 m!6228946))

(assert (=> bm!363498 m!6228932))

(declare-fun m!6229030 () Bool)

(assert (=> bm!363491 m!6229030))

(assert (=> bm!363492 m!6228922))

(assert (=> bm!363492 m!6229020))

(assert (=> d!1670175 m!6229002))

(declare-fun m!6229032 () Bool)

(assert (=> d!1670175 m!6229032))

(declare-fun m!6229034 () Bool)

(assert (=> d!1670175 m!6229034))

(assert (=> d!1670175 m!6228922))

(declare-fun m!6229036 () Bool)

(assert (=> d!1670175 m!6229036))

(assert (=> d!1670175 m!6228922))

(declare-fun m!6229038 () Bool)

(assert (=> d!1670175 m!6229038))

(assert (=> d!1670175 m!6228922))

(declare-fun m!6229040 () Bool)

(assert (=> d!1670175 m!6229040))

(assert (=> d!1670175 m!6229038))

(declare-fun m!6229042 () Bool)

(assert (=> d!1670175 m!6229042))

(declare-fun m!6229044 () Bool)

(assert (=> bm!363496 m!6229044))

(declare-fun m!6229046 () Bool)

(assert (=> b!5174983 m!6229046))

(declare-fun m!6229048 () Bool)

(assert (=> bm!363493 m!6229048))

(assert (=> b!5174901 d!1670175))

(declare-fun d!1670177 () Bool)

(assert (=> d!1670177 (= (tail!10172 lt!2131871) (t!373434 lt!2131871))))

(assert (=> b!5174901 d!1670177))

(declare-fun d!1670179 () Bool)

(assert (=> d!1670179 true))

(declare-fun lambda!258448 () Int)

(declare-fun flatMap!458 ((InoxSet Context!8078) Int) (InoxSet Context!8078))

(assert (=> d!1670179 (= (derivationStepZipper!1001 z!4581 lt!2131872) (flatMap!458 z!4581 lambda!258448))))

(declare-fun bs!1203964 () Bool)

(assert (= bs!1203964 d!1670179))

(declare-fun m!6229206 () Bool)

(assert (=> bs!1203964 m!6229206))

(assert (=> b!5174901 d!1670179))

(declare-fun d!1670227 () Bool)

(assert (=> d!1670227 (isPrefix!5788 input!5817 input!5817)))

(declare-fun lt!2132129 () Unit!151938)

(declare-fun choose!38407 (List!60281 List!60281) Unit!151938)

(assert (=> d!1670227 (= lt!2132129 (choose!38407 input!5817 input!5817))))

(assert (=> d!1670227 (= (lemmaIsPrefixRefl!3793 input!5817 input!5817) lt!2132129)))

(declare-fun bs!1203965 () Bool)

(assert (= bs!1203965 d!1670227))

(assert (=> bs!1203965 m!6228932))

(declare-fun m!6229208 () Bool)

(assert (=> bs!1203965 m!6229208))

(assert (=> b!5174906 d!1670227))

(declare-fun d!1670229 () Bool)

(declare-fun e!3224670 () Bool)

(assert (=> d!1670229 e!3224670))

(declare-fun res!2199306 () Bool)

(assert (=> d!1670229 (=> res!2199306 e!3224670)))

(declare-fun lt!2132132 () Bool)

(assert (=> d!1670229 (= res!2199306 (not lt!2132132))))

(declare-fun e!3224671 () Bool)

(assert (=> d!1670229 (= lt!2132132 e!3224671)))

(declare-fun res!2199305 () Bool)

(assert (=> d!1670229 (=> res!2199305 e!3224671)))

(assert (=> d!1670229 (= res!2199305 ((_ is Nil!60157) input!5817))))

(assert (=> d!1670229 (= (isPrefix!5788 input!5817 input!5817) lt!2132132)))

(declare-fun b!5175129 () Bool)

(assert (=> b!5175129 (= e!3224670 (>= (size!39691 input!5817) (size!39691 input!5817)))))

(declare-fun b!5175126 () Bool)

(declare-fun e!3224669 () Bool)

(assert (=> b!5175126 (= e!3224671 e!3224669)))

(declare-fun res!2199307 () Bool)

(assert (=> b!5175126 (=> (not res!2199307) (not e!3224669))))

(assert (=> b!5175126 (= res!2199307 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175128 () Bool)

(assert (=> b!5175128 (= e!3224669 (isPrefix!5788 (tail!10172 input!5817) (tail!10172 input!5817)))))

(declare-fun b!5175127 () Bool)

(declare-fun res!2199308 () Bool)

(assert (=> b!5175127 (=> (not res!2199308) (not e!3224669))))

(assert (=> b!5175127 (= res!2199308 (= (head!11073 input!5817) (head!11073 input!5817)))))

(assert (= (and d!1670229 (not res!2199305)) b!5175126))

(assert (= (and b!5175126 res!2199307) b!5175127))

(assert (= (and b!5175127 res!2199308) b!5175128))

(assert (= (and d!1670229 (not res!2199306)) b!5175129))

(assert (=> b!5175129 m!6228940))

(assert (=> b!5175129 m!6228940))

(assert (=> b!5175128 m!6228956))

(assert (=> b!5175128 m!6228956))

(assert (=> b!5175128 m!6228956))

(assert (=> b!5175128 m!6228956))

(declare-fun m!6229210 () Bool)

(assert (=> b!5175128 m!6229210))

(declare-fun m!6229212 () Bool)

(assert (=> b!5175127 m!6229212))

(assert (=> b!5175127 m!6229212))

(assert (=> b!5174906 d!1670229))

(declare-fun d!1670231 () Bool)

(assert (=> d!1670231 (= input!5817 testedP!294)))

(declare-fun lt!2132135 () Unit!151938)

(declare-fun choose!38409 (List!60281 List!60281 List!60281) Unit!151938)

(assert (=> d!1670231 (= lt!2132135 (choose!38409 input!5817 testedP!294 input!5817))))

(assert (=> d!1670231 (isPrefix!5788 input!5817 input!5817)))

(assert (=> d!1670231 (= (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 testedP!294 input!5817) lt!2132135)))

(declare-fun bs!1203966 () Bool)

(assert (= bs!1203966 d!1670231))

(declare-fun m!6229214 () Bool)

(assert (=> bs!1203966 m!6229214))

(assert (=> bs!1203966 m!6228932))

(assert (=> b!5174906 d!1670231))

(declare-fun b!5175139 () Bool)

(declare-fun e!3224676 () List!60281)

(assert (=> b!5175139 (= e!3224676 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) (Cons!60157 lt!2131872 Nil!60157))))))

(declare-fun b!5175141 () Bool)

(declare-fun lt!2132138 () List!60281)

(declare-fun e!3224677 () Bool)

(assert (=> b!5175141 (= e!3224677 (or (not (= (Cons!60157 lt!2131872 Nil!60157) Nil!60157)) (= lt!2132138 testedP!294)))))

(declare-fun d!1670233 () Bool)

(assert (=> d!1670233 e!3224677))

(declare-fun res!2199314 () Bool)

(assert (=> d!1670233 (=> (not res!2199314) (not e!3224677))))

(declare-fun content!10659 (List!60281) (InoxSet C!29580))

(assert (=> d!1670233 (= res!2199314 (= (content!10659 lt!2132138) ((_ map or) (content!10659 testedP!294) (content!10659 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (=> d!1670233 (= lt!2132138 e!3224676)))

(declare-fun c!891118 () Bool)

(assert (=> d!1670233 (= c!891118 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670233 (= (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)) lt!2132138)))

(declare-fun b!5175140 () Bool)

(declare-fun res!2199313 () Bool)

(assert (=> b!5175140 (=> (not res!2199313) (not e!3224677))))

(assert (=> b!5175140 (= res!2199313 (= (size!39691 lt!2132138) (+ (size!39691 testedP!294) (size!39691 (Cons!60157 lt!2131872 Nil!60157)))))))

(declare-fun b!5175138 () Bool)

(assert (=> b!5175138 (= e!3224676 (Cons!60157 lt!2131872 Nil!60157))))

(assert (= (and d!1670233 c!891118) b!5175138))

(assert (= (and d!1670233 (not c!891118)) b!5175139))

(assert (= (and d!1670233 res!2199314) b!5175140))

(assert (= (and b!5175140 res!2199313) b!5175141))

(declare-fun m!6229216 () Bool)

(assert (=> b!5175139 m!6229216))

(declare-fun m!6229218 () Bool)

(assert (=> d!1670233 m!6229218))

(declare-fun m!6229220 () Bool)

(assert (=> d!1670233 m!6229220))

(declare-fun m!6229222 () Bool)

(assert (=> d!1670233 m!6229222))

(declare-fun m!6229224 () Bool)

(assert (=> b!5175140 m!6229224))

(assert (=> b!5175140 m!6228936))

(declare-fun m!6229226 () Bool)

(assert (=> b!5175140 m!6229226))

(assert (=> b!5174910 d!1670233))

(declare-fun d!1670235 () Bool)

(assert (=> d!1670235 (isPrefix!5788 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) input!5817)))

(declare-fun lt!2132141 () Unit!151938)

(declare-fun choose!38410 (List!60281 List!60281) Unit!151938)

(assert (=> d!1670235 (= lt!2132141 (choose!38410 testedP!294 input!5817))))

(assert (=> d!1670235 (isPrefix!5788 testedP!294 input!5817)))

(assert (=> d!1670235 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1093 testedP!294 input!5817) lt!2132141)))

(declare-fun bs!1203967 () Bool)

(assert (= bs!1203967 d!1670235))

(assert (=> bs!1203967 m!6228938))

(assert (=> bs!1203967 m!6228974))

(assert (=> bs!1203967 m!6228902))

(assert (=> bs!1203967 m!6228938))

(declare-fun m!6229228 () Bool)

(assert (=> bs!1203967 m!6229228))

(assert (=> bs!1203967 m!6228972))

(assert (=> bs!1203967 m!6228976))

(assert (=> bs!1203967 m!6228972))

(assert (=> b!5174910 d!1670235))

(declare-fun d!1670237 () Bool)

(declare-fun lambda!258451 () Int)

(declare-fun exists!1936 ((InoxSet Context!8078) Int) Bool)

(assert (=> d!1670237 (= (nullableZipper!1193 z!4581) (exists!1936 z!4581 lambda!258451))))

(declare-fun bs!1203968 () Bool)

(assert (= bs!1203968 d!1670237))

(declare-fun m!6229230 () Bool)

(assert (=> bs!1203968 m!6229230))

(assert (=> b!5174910 d!1670237))

(declare-fun d!1670239 () Bool)

(assert (=> d!1670239 (= (head!11073 lt!2131871) (h!66605 lt!2131871))))

(assert (=> b!5174910 d!1670239))

(declare-fun d!1670241 () Bool)

(declare-fun e!3224679 () Bool)

(assert (=> d!1670241 e!3224679))

(declare-fun res!2199316 () Bool)

(assert (=> d!1670241 (=> res!2199316 e!3224679)))

(declare-fun lt!2132142 () Bool)

(assert (=> d!1670241 (= res!2199316 (not lt!2132142))))

(declare-fun e!3224680 () Bool)

(assert (=> d!1670241 (= lt!2132142 e!3224680)))

(declare-fun res!2199315 () Bool)

(assert (=> d!1670241 (=> res!2199315 e!3224680)))

(assert (=> d!1670241 (= res!2199315 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670241 (= (isPrefix!5788 lt!2131870 input!5817) lt!2132142)))

(declare-fun b!5175145 () Bool)

(assert (=> b!5175145 (= e!3224679 (>= (size!39691 input!5817) (size!39691 lt!2131870)))))

(declare-fun b!5175142 () Bool)

(declare-fun e!3224678 () Bool)

(assert (=> b!5175142 (= e!3224680 e!3224678)))

(declare-fun res!2199317 () Bool)

(assert (=> b!5175142 (=> (not res!2199317) (not e!3224678))))

(assert (=> b!5175142 (= res!2199317 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175144 () Bool)

(assert (=> b!5175144 (= e!3224678 (isPrefix!5788 (tail!10172 lt!2131870) (tail!10172 input!5817)))))

(declare-fun b!5175143 () Bool)

(declare-fun res!2199318 () Bool)

(assert (=> b!5175143 (=> (not res!2199318) (not e!3224678))))

(assert (=> b!5175143 (= res!2199318 (= (head!11073 lt!2131870) (head!11073 input!5817)))))

(assert (= (and d!1670241 (not res!2199315)) b!5175142))

(assert (= (and b!5175142 res!2199317) b!5175143))

(assert (= (and b!5175143 res!2199318) b!5175144))

(assert (= (and d!1670241 (not res!2199316)) b!5175145))

(assert (=> b!5175145 m!6228940))

(assert (=> b!5175145 m!6228946))

(declare-fun m!6229232 () Bool)

(assert (=> b!5175144 m!6229232))

(assert (=> b!5175144 m!6228956))

(assert (=> b!5175144 m!6229232))

(assert (=> b!5175144 m!6228956))

(declare-fun m!6229234 () Bool)

(assert (=> b!5175144 m!6229234))

(declare-fun m!6229236 () Bool)

(assert (=> b!5175143 m!6229236))

(assert (=> b!5175143 m!6229212))

(assert (=> b!5174910 d!1670241))

(declare-fun d!1670243 () Bool)

(declare-fun e!3224682 () Bool)

(assert (=> d!1670243 e!3224682))

(declare-fun res!2199320 () Bool)

(assert (=> d!1670243 (=> res!2199320 e!3224682)))

(declare-fun lt!2132143 () Bool)

(assert (=> d!1670243 (= res!2199320 (not lt!2132143))))

(declare-fun e!3224683 () Bool)

(assert (=> d!1670243 (= lt!2132143 e!3224683)))

(declare-fun res!2199319 () Bool)

(assert (=> d!1670243 (=> res!2199319 e!3224683)))

(assert (=> d!1670243 (= res!2199319 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670243 (= (isPrefix!5788 testedP!294 input!5817) lt!2132143)))

(declare-fun b!5175149 () Bool)

(assert (=> b!5175149 (= e!3224682 (>= (size!39691 input!5817) (size!39691 testedP!294)))))

(declare-fun b!5175146 () Bool)

(declare-fun e!3224681 () Bool)

(assert (=> b!5175146 (= e!3224683 e!3224681)))

(declare-fun res!2199321 () Bool)

(assert (=> b!5175146 (=> (not res!2199321) (not e!3224681))))

(assert (=> b!5175146 (= res!2199321 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175148 () Bool)

(assert (=> b!5175148 (= e!3224681 (isPrefix!5788 (tail!10172 testedP!294) (tail!10172 input!5817)))))

(declare-fun b!5175147 () Bool)

(declare-fun res!2199322 () Bool)

(assert (=> b!5175147 (=> (not res!2199322) (not e!3224681))))

(assert (=> b!5175147 (= res!2199322 (= (head!11073 testedP!294) (head!11073 input!5817)))))

(assert (= (and d!1670243 (not res!2199319)) b!5175146))

(assert (= (and b!5175146 res!2199321) b!5175147))

(assert (= (and b!5175147 res!2199322) b!5175148))

(assert (= (and d!1670243 (not res!2199320)) b!5175149))

(assert (=> b!5175149 m!6228940))

(assert (=> b!5175149 m!6228936))

(declare-fun m!6229238 () Bool)

(assert (=> b!5175148 m!6229238))

(assert (=> b!5175148 m!6228956))

(assert (=> b!5175148 m!6229238))

(assert (=> b!5175148 m!6228956))

(declare-fun m!6229240 () Bool)

(assert (=> b!5175148 m!6229240))

(declare-fun m!6229242 () Bool)

(assert (=> b!5175147 m!6229242))

(assert (=> b!5175147 m!6229212))

(assert (=> start!548012 d!1670243))

(declare-fun d!1670245 () Bool)

(declare-fun c!891123 () Bool)

(assert (=> d!1670245 (= c!891123 ((_ is Cons!60157) testedP!294))))

(declare-fun e!3224686 () (InoxSet Context!8078))

(assert (=> d!1670245 (= (derivationZipper!278 baseZ!62 testedP!294) e!3224686)))

(declare-fun b!5175154 () Bool)

(assert (=> b!5175154 (= e!3224686 (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (t!373434 testedP!294)))))

(declare-fun b!5175155 () Bool)

(assert (=> b!5175155 (= e!3224686 baseZ!62)))

(assert (= (and d!1670245 c!891123) b!5175154))

(assert (= (and d!1670245 (not c!891123)) b!5175155))

(declare-fun m!6229244 () Bool)

(assert (=> b!5175154 m!6229244))

(assert (=> b!5175154 m!6229244))

(declare-fun m!6229246 () Bool)

(assert (=> b!5175154 m!6229246))

(assert (=> b!5174902 d!1670245))

(declare-fun d!1670247 () Bool)

(assert (=> d!1670247 (<= (size!39691 testedP!294) (size!39691 input!5817))))

(declare-fun lt!2132146 () Unit!151938)

(declare-fun choose!38411 (List!60281 List!60281) Unit!151938)

(assert (=> d!1670247 (= lt!2132146 (choose!38411 testedP!294 input!5817))))

(assert (=> d!1670247 (isPrefix!5788 testedP!294 input!5817)))

(assert (=> d!1670247 (= (lemmaIsPrefixThenSmallerEqSize!949 testedP!294 input!5817) lt!2132146)))

(declare-fun bs!1203969 () Bool)

(assert (= bs!1203969 d!1670247))

(assert (=> bs!1203969 m!6228936))

(assert (=> bs!1203969 m!6228940))

(declare-fun m!6229248 () Bool)

(assert (=> bs!1203969 m!6229248))

(assert (=> bs!1203969 m!6228902))

(assert (=> b!5174907 d!1670247))

(declare-fun d!1670249 () Bool)

(declare-fun lt!2132147 () Int)

(assert (=> d!1670249 (>= lt!2132147 0)))

(declare-fun e!3224687 () Int)

(assert (=> d!1670249 (= lt!2132147 e!3224687)))

(declare-fun c!891124 () Bool)

(assert (=> d!1670249 (= c!891124 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670249 (= (size!39691 lt!2131870) lt!2132147)))

(declare-fun b!5175156 () Bool)

(assert (=> b!5175156 (= e!3224687 0)))

(declare-fun b!5175157 () Bool)

(assert (=> b!5175157 (= e!3224687 (+ 1 (size!39691 (t!373434 lt!2131870))))))

(assert (= (and d!1670249 c!891124) b!5175156))

(assert (= (and d!1670249 (not c!891124)) b!5175157))

(declare-fun m!6229250 () Bool)

(assert (=> b!5175157 m!6229250))

(assert (=> b!5174908 d!1670249))

(declare-fun d!1670251 () Bool)

(declare-fun c!891125 () Bool)

(assert (=> d!1670251 (= c!891125 ((_ is Cons!60157) lt!2131870))))

(declare-fun e!3224688 () (InoxSet Context!8078))

(assert (=> d!1670251 (= (derivationZipper!278 baseZ!62 lt!2131870) e!3224688)))

(declare-fun b!5175158 () Bool)

(assert (=> b!5175158 (= e!3224688 (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (t!373434 lt!2131870)))))

(declare-fun b!5175159 () Bool)

(assert (=> b!5175159 (= e!3224688 baseZ!62)))

(assert (= (and d!1670251 c!891125) b!5175158))

(assert (= (and d!1670251 (not c!891125)) b!5175159))

(declare-fun m!6229252 () Bool)

(assert (=> b!5175158 m!6229252))

(assert (=> b!5175158 m!6229252))

(declare-fun m!6229254 () Bool)

(assert (=> b!5175158 m!6229254))

(assert (=> b!5174908 d!1670251))

(declare-fun d!1670253 () Bool)

(assert (=> d!1670253 (= (derivationZipper!278 baseZ!62 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) (derivationStepZipper!1001 z!4581 lt!2131872))))

(declare-fun lt!2132150 () Unit!151938)

(declare-fun choose!38412 ((InoxSet Context!8078) (InoxSet Context!8078) List!60281 C!29580) Unit!151938)

(assert (=> d!1670253 (= lt!2132150 (choose!38412 baseZ!62 z!4581 testedP!294 lt!2131872))))

(assert (=> d!1670253 (= (derivationZipper!278 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1670253 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!111 baseZ!62 z!4581 testedP!294 lt!2131872) lt!2132150)))

(declare-fun bs!1203970 () Bool)

(assert (= bs!1203970 d!1670253))

(assert (=> bs!1203970 m!6228928))

(declare-fun m!6229256 () Bool)

(assert (=> bs!1203970 m!6229256))

(assert (=> bs!1203970 m!6228914))

(assert (=> bs!1203970 m!6228906))

(declare-fun m!6229258 () Bool)

(assert (=> bs!1203970 m!6229258))

(assert (=> bs!1203970 m!6228906))

(assert (=> b!5174908 d!1670253))

(declare-fun d!1670255 () Bool)

(declare-fun lambda!258454 () Int)

(declare-fun forall!14155 (List!60282 Int) Bool)

(assert (=> d!1670255 (= (inv!79884 setElem!32299) (forall!14155 (exprs!4539 setElem!32299) lambda!258454))))

(declare-fun bs!1203971 () Bool)

(assert (= bs!1203971 d!1670255))

(declare-fun m!6229260 () Bool)

(assert (=> bs!1203971 m!6229260))

(assert (=> setNonEmpty!32300 d!1670255))

(declare-fun bs!1203972 () Bool)

(declare-fun d!1670257 () Bool)

(assert (= bs!1203972 (and d!1670257 d!1670255)))

(declare-fun lambda!258455 () Int)

(assert (=> bs!1203972 (= lambda!258455 lambda!258454)))

(assert (=> d!1670257 (= (inv!79884 setElem!32300) (forall!14155 (exprs!4539 setElem!32300) lambda!258455))))

(declare-fun bs!1203973 () Bool)

(assert (= bs!1203973 d!1670257))

(declare-fun m!6229262 () Bool)

(assert (=> bs!1203973 m!6229262))

(assert (=> setNonEmpty!32299 d!1670257))

(declare-fun b!5175164 () Bool)

(declare-fun e!3224691 () Bool)

(declare-fun tp!1451892 () Bool)

(declare-fun tp!1451893 () Bool)

(assert (=> b!5175164 (= e!3224691 (and tp!1451892 tp!1451893))))

(assert (=> b!5174904 (= tp!1451864 e!3224691)))

(assert (= (and b!5174904 ((_ is Cons!60158) (exprs!4539 setElem!32299))) b!5175164))

(declare-fun b!5175169 () Bool)

(declare-fun e!3224694 () Bool)

(declare-fun tp!1451896 () Bool)

(assert (=> b!5175169 (= e!3224694 (and tp_is_empty!38563 tp!1451896))))

(assert (=> b!5174913 (= tp!1451866 e!3224694)))

(assert (= (and b!5174913 ((_ is Cons!60157) (t!373434 testedP!294))) b!5175169))

(declare-fun b!5175170 () Bool)

(declare-fun e!3224695 () Bool)

(declare-fun tp!1451897 () Bool)

(declare-fun tp!1451898 () Bool)

(assert (=> b!5175170 (= e!3224695 (and tp!1451897 tp!1451898))))

(assert (=> b!5174903 (= tp!1451863 e!3224695)))

(assert (= (and b!5174903 ((_ is Cons!60158) (exprs!4539 setElem!32300))) b!5175170))

(declare-fun condSetEmpty!32307 () Bool)

(assert (=> setNonEmpty!32300 (= condSetEmpty!32307 (= setRest!32299 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32307 () Bool)

(assert (=> setNonEmpty!32300 (= tp!1451862 setRes!32307)))

(declare-fun setIsEmpty!32307 () Bool)

(assert (=> setIsEmpty!32307 setRes!32307))

(declare-fun tp!1451904 () Bool)

(declare-fun setNonEmpty!32307 () Bool)

(declare-fun setElem!32307 () Context!8078)

(declare-fun e!3224698 () Bool)

(assert (=> setNonEmpty!32307 (= setRes!32307 (and tp!1451904 (inv!79884 setElem!32307) e!3224698))))

(declare-fun setRest!32307 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32307 (= setRest!32299 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32307 true) setRest!32307))))

(declare-fun b!5175175 () Bool)

(declare-fun tp!1451903 () Bool)

(assert (=> b!5175175 (= e!3224698 tp!1451903)))

(assert (= (and setNonEmpty!32300 condSetEmpty!32307) setIsEmpty!32307))

(assert (= (and setNonEmpty!32300 (not condSetEmpty!32307)) setNonEmpty!32307))

(assert (= setNonEmpty!32307 b!5175175))

(declare-fun m!6229264 () Bool)

(assert (=> setNonEmpty!32307 m!6229264))

(declare-fun b!5175176 () Bool)

(declare-fun e!3224699 () Bool)

(declare-fun tp!1451905 () Bool)

(assert (=> b!5175176 (= e!3224699 (and tp_is_empty!38563 tp!1451905))))

(assert (=> b!5174909 (= tp!1451865 e!3224699)))

(assert (= (and b!5174909 ((_ is Cons!60157) (t!373434 input!5817))) b!5175176))

(declare-fun condSetEmpty!32308 () Bool)

(assert (=> setNonEmpty!32299 (= condSetEmpty!32308 (= setRest!32300 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32308 () Bool)

(assert (=> setNonEmpty!32299 (= tp!1451867 setRes!32308)))

(declare-fun setIsEmpty!32308 () Bool)

(assert (=> setIsEmpty!32308 setRes!32308))

(declare-fun setElem!32308 () Context!8078)

(declare-fun e!3224700 () Bool)

(declare-fun setNonEmpty!32308 () Bool)

(declare-fun tp!1451907 () Bool)

(assert (=> setNonEmpty!32308 (= setRes!32308 (and tp!1451907 (inv!79884 setElem!32308) e!3224700))))

(declare-fun setRest!32308 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32308 (= setRest!32300 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32308 true) setRest!32308))))

(declare-fun b!5175177 () Bool)

(declare-fun tp!1451906 () Bool)

(assert (=> b!5175177 (= e!3224700 tp!1451906)))

(assert (= (and setNonEmpty!32299 condSetEmpty!32308) setIsEmpty!32308))

(assert (= (and setNonEmpty!32299 (not condSetEmpty!32308)) setNonEmpty!32308))

(assert (= setNonEmpty!32308 b!5175177))

(declare-fun m!6229266 () Bool)

(assert (=> setNonEmpty!32308 m!6229266))

(check-sat (not b!5175157) (not b!5174976) (not d!1670247) (not b!5175176) (not bm!363484) (not b!5174961) (not b!5174967) (not bm!363498) (not b!5175127) (not d!1670231) (not b!5175170) (not bm!363485) (not bm!363496) (not b!5175139) (not b!5175164) (not b!5175177) (not b!5175143) (not b!5175154) (not b!5174977) (not bm!363493) (not b!5175169) (not bm!363487) (not bm!363497) (not b!5175128) (not b!5174919) (not bm!363486) (not d!1670227) (not d!1670237) tp_is_empty!38563 (not d!1670253) (not b!5175158) (not bm!363495) (not d!1670235) (not d!1670165) (not bm!363494) (not d!1670163) (not b!5174960) (not d!1670175) (not b!5174983) (not b!5174964) (not d!1670179) (not b!5175148) (not setNonEmpty!32307) (not d!1670255) (not b!5175140) (not b!5175144) (not d!1670257) (not b!5175175) (not b!5175147) (not b!5174969) (not bm!363489) (not bm!363490) (not b!5175145) (not setNonEmpty!32308) (not bm!363483) (not bm!363491) (not bm!363488) (not b!5175149) (not b!5174924) (not bm!363492) (not b!5175129) (not b!5174980) (not d!1670233))
(check-sat)
(get-model)

(declare-fun bs!1203978 () Bool)

(declare-fun d!1670299 () Bool)

(assert (= bs!1203978 (and d!1670299 d!1670255)))

(declare-fun lambda!258457 () Int)

(assert (=> bs!1203978 (= lambda!258457 lambda!258454)))

(declare-fun bs!1203979 () Bool)

(assert (= bs!1203979 (and d!1670299 d!1670257)))

(assert (=> bs!1203979 (= lambda!258457 lambda!258455)))

(assert (=> d!1670299 (= (inv!79884 setElem!32307) (forall!14155 (exprs!4539 setElem!32307) lambda!258457))))

(declare-fun bs!1203980 () Bool)

(assert (= bs!1203980 d!1670299))

(declare-fun m!6229402 () Bool)

(assert (=> bs!1203980 m!6229402))

(assert (=> setNonEmpty!32307 d!1670299))

(declare-fun d!1670303 () Bool)

(declare-fun choose!38413 ((InoxSet Context!8078) Int) (InoxSet Context!8078))

(assert (=> d!1670303 (= (flatMap!458 z!4581 lambda!258448) (choose!38413 z!4581 lambda!258448))))

(declare-fun bs!1203981 () Bool)

(assert (= bs!1203981 d!1670303))

(declare-fun m!6229404 () Bool)

(assert (=> bs!1203981 m!6229404))

(assert (=> d!1670179 d!1670303))

(assert (=> d!1670247 d!1670171))

(assert (=> d!1670247 d!1670159))

(declare-fun d!1670305 () Bool)

(assert (=> d!1670305 (<= (size!39691 testedP!294) (size!39691 input!5817))))

(assert (=> d!1670305 true))

(declare-fun _$64!706 () Unit!151938)

(assert (=> d!1670305 (= (choose!38411 testedP!294 input!5817) _$64!706)))

(declare-fun bs!1203982 () Bool)

(assert (= bs!1203982 d!1670305))

(assert (=> bs!1203982 m!6228936))

(assert (=> bs!1203982 m!6228940))

(assert (=> d!1670247 d!1670305))

(assert (=> d!1670247 d!1670243))

(declare-fun d!1670307 () Bool)

(assert (=> d!1670307 (= (tail!10172 (tail!10172 lt!2131871)) (t!373434 (tail!10172 lt!2131871)))))

(assert (=> b!5174980 d!1670307))

(declare-fun d!1670309 () Bool)

(assert (=> d!1670309 (= (++!13171 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)) lt!2131976) input!5817)))

(declare-fun lt!2132195 () Unit!151938)

(declare-fun choose!38414 (List!60281 C!29580 List!60281 List!60281) Unit!151938)

(assert (=> d!1670309 (= lt!2132195 (choose!38414 lt!2131870 lt!2131989 lt!2131976 input!5817))))

(assert (=> d!1670309 (= (++!13171 lt!2131870 (Cons!60157 lt!2131989 lt!2131976)) input!5817)))

(assert (=> d!1670309 (= (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131870 lt!2131989 lt!2131976 input!5817) lt!2132195)))

(declare-fun bs!1203984 () Bool)

(assert (= bs!1203984 d!1670309))

(assert (=> bs!1203984 m!6229006))

(assert (=> bs!1203984 m!6229006))

(assert (=> bs!1203984 m!6229012))

(declare-fun m!6229422 () Bool)

(assert (=> bs!1203984 m!6229422))

(declare-fun m!6229424 () Bool)

(assert (=> bs!1203984 m!6229424))

(assert (=> b!5174980 d!1670309))

(declare-fun b!5175241 () Bool)

(declare-fun e!3224740 () List!60281)

(assert (=> b!5175241 (= e!3224740 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) (Cons!60157 lt!2131989 Nil!60157))))))

(declare-fun b!5175243 () Bool)

(declare-fun e!3224741 () Bool)

(declare-fun lt!2132196 () List!60281)

(assert (=> b!5175243 (= e!3224741 (or (not (= (Cons!60157 lt!2131989 Nil!60157) Nil!60157)) (= lt!2132196 lt!2131870)))))

(declare-fun d!1670321 () Bool)

(assert (=> d!1670321 e!3224741))

(declare-fun res!2199356 () Bool)

(assert (=> d!1670321 (=> (not res!2199356) (not e!3224741))))

(assert (=> d!1670321 (= res!2199356 (= (content!10659 lt!2132196) ((_ map or) (content!10659 lt!2131870) (content!10659 (Cons!60157 lt!2131989 Nil!60157)))))))

(assert (=> d!1670321 (= lt!2132196 e!3224740)))

(declare-fun c!891142 () Bool)

(assert (=> d!1670321 (= c!891142 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670321 (= (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)) lt!2132196)))

(declare-fun b!5175242 () Bool)

(declare-fun res!2199355 () Bool)

(assert (=> b!5175242 (=> (not res!2199355) (not e!3224741))))

(assert (=> b!5175242 (= res!2199355 (= (size!39691 lt!2132196) (+ (size!39691 lt!2131870) (size!39691 (Cons!60157 lt!2131989 Nil!60157)))))))

(declare-fun b!5175240 () Bool)

(assert (=> b!5175240 (= e!3224740 (Cons!60157 lt!2131989 Nil!60157))))

(assert (= (and d!1670321 c!891142) b!5175240))

(assert (= (and d!1670321 (not c!891142)) b!5175241))

(assert (= (and d!1670321 res!2199356) b!5175242))

(assert (= (and b!5175242 res!2199355) b!5175243))

(declare-fun m!6229426 () Bool)

(assert (=> b!5175241 m!6229426))

(declare-fun m!6229428 () Bool)

(assert (=> d!1670321 m!6229428))

(declare-fun m!6229430 () Bool)

(assert (=> d!1670321 m!6229430))

(declare-fun m!6229432 () Bool)

(assert (=> d!1670321 m!6229432))

(declare-fun m!6229434 () Bool)

(assert (=> b!5175242 m!6229434))

(assert (=> b!5175242 m!6228946))

(declare-fun m!6229436 () Bool)

(assert (=> b!5175242 m!6229436))

(assert (=> b!5174980 d!1670321))

(declare-fun b!5175245 () Bool)

(declare-fun e!3224742 () List!60281)

(assert (=> b!5175245 (= e!3224742 (Cons!60157 (h!66605 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) (++!13171 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) lt!2131976)))))

(declare-fun lt!2132197 () List!60281)

(declare-fun b!5175247 () Bool)

(declare-fun e!3224743 () Bool)

(assert (=> b!5175247 (= e!3224743 (or (not (= lt!2131976 Nil!60157)) (= lt!2132197 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))))))

(declare-fun d!1670323 () Bool)

(assert (=> d!1670323 e!3224743))

(declare-fun res!2199358 () Bool)

(assert (=> d!1670323 (=> (not res!2199358) (not e!3224743))))

(assert (=> d!1670323 (= res!2199358 (= (content!10659 lt!2132197) ((_ map or) (content!10659 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) (content!10659 lt!2131976))))))

(assert (=> d!1670323 (= lt!2132197 e!3224742)))

(declare-fun c!891143 () Bool)

(assert (=> d!1670323 (= c!891143 ((_ is Nil!60157) (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))

(assert (=> d!1670323 (= (++!13171 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)) lt!2131976) lt!2132197)))

(declare-fun b!5175246 () Bool)

(declare-fun res!2199357 () Bool)

(assert (=> b!5175246 (=> (not res!2199357) (not e!3224743))))

(assert (=> b!5175246 (= res!2199357 (= (size!39691 lt!2132197) (+ (size!39691 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) (size!39691 lt!2131976))))))

(declare-fun b!5175244 () Bool)

(assert (=> b!5175244 (= e!3224742 lt!2131976)))

(assert (= (and d!1670323 c!891143) b!5175244))

(assert (= (and d!1670323 (not c!891143)) b!5175245))

(assert (= (and d!1670323 res!2199358) b!5175246))

(assert (= (and b!5175246 res!2199357) b!5175247))

(declare-fun m!6229438 () Bool)

(assert (=> b!5175245 m!6229438))

(declare-fun m!6229440 () Bool)

(assert (=> d!1670323 m!6229440))

(assert (=> d!1670323 m!6229006))

(declare-fun m!6229442 () Bool)

(assert (=> d!1670323 m!6229442))

(declare-fun m!6229444 () Bool)

(assert (=> d!1670323 m!6229444))

(declare-fun m!6229446 () Bool)

(assert (=> b!5175246 m!6229446))

(assert (=> b!5175246 m!6229006))

(declare-fun m!6229448 () Bool)

(assert (=> b!5175246 m!6229448))

(declare-fun m!6229450 () Bool)

(assert (=> b!5175246 m!6229450))

(assert (=> b!5174980 d!1670323))

(declare-fun b!5175249 () Bool)

(declare-fun e!3224744 () List!60281)

(assert (=> b!5175249 (= e!3224744 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(declare-fun lt!2132198 () List!60281)

(declare-fun b!5175251 () Bool)

(declare-fun e!3224745 () Bool)

(assert (=> b!5175251 (= e!3224745 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157) Nil!60157)) (= lt!2132198 lt!2131870)))))

(declare-fun d!1670325 () Bool)

(assert (=> d!1670325 e!3224745))

(declare-fun res!2199360 () Bool)

(assert (=> d!1670325 (=> (not res!2199360) (not e!3224745))))

(assert (=> d!1670325 (= res!2199360 (= (content!10659 lt!2132198) ((_ map or) (content!10659 lt!2131870) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(assert (=> d!1670325 (= lt!2132198 e!3224744)))

(declare-fun c!891144 () Bool)

(assert (=> d!1670325 (= c!891144 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670325 (= (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) lt!2132198)))

(declare-fun b!5175250 () Bool)

(declare-fun res!2199359 () Bool)

(assert (=> b!5175250 (=> (not res!2199359) (not e!3224745))))

(assert (=> b!5175250 (= res!2199359 (= (size!39691 lt!2132198) (+ (size!39691 lt!2131870) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(declare-fun b!5175248 () Bool)

(assert (=> b!5175248 (= e!3224744 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))

(assert (= (and d!1670325 c!891144) b!5175248))

(assert (= (and d!1670325 (not c!891144)) b!5175249))

(assert (= (and d!1670325 res!2199360) b!5175250))

(assert (= (and b!5175250 res!2199359) b!5175251))

(declare-fun m!6229452 () Bool)

(assert (=> b!5175249 m!6229452))

(declare-fun m!6229454 () Bool)

(assert (=> d!1670325 m!6229454))

(assert (=> d!1670325 m!6229430))

(declare-fun m!6229456 () Bool)

(assert (=> d!1670325 m!6229456))

(declare-fun m!6229458 () Bool)

(assert (=> b!5175250 m!6229458))

(assert (=> b!5175250 m!6228946))

(declare-fun m!6229460 () Bool)

(assert (=> b!5175250 m!6229460))

(assert (=> b!5174980 d!1670325))

(declare-fun d!1670327 () Bool)

(declare-fun lt!2132199 () List!60281)

(assert (=> d!1670327 (= (++!13171 lt!2131870 lt!2132199) input!5817)))

(declare-fun e!3224746 () List!60281)

(assert (=> d!1670327 (= lt!2132199 e!3224746)))

(declare-fun c!891145 () Bool)

(assert (=> d!1670327 (= c!891145 ((_ is Cons!60157) lt!2131870))))

(assert (=> d!1670327 (>= (size!39691 input!5817) (size!39691 lt!2131870))))

(assert (=> d!1670327 (= (getSuffix!3436 input!5817 lt!2131870) lt!2132199)))

(declare-fun b!5175252 () Bool)

(assert (=> b!5175252 (= e!3224746 (getSuffix!3436 (tail!10172 input!5817) (t!373434 lt!2131870)))))

(declare-fun b!5175253 () Bool)

(assert (=> b!5175253 (= e!3224746 input!5817)))

(assert (= (and d!1670327 c!891145) b!5175252))

(assert (= (and d!1670327 (not c!891145)) b!5175253))

(declare-fun m!6229462 () Bool)

(assert (=> d!1670327 m!6229462))

(assert (=> d!1670327 m!6228940))

(assert (=> d!1670327 m!6228946))

(assert (=> b!5175252 m!6228956))

(assert (=> b!5175252 m!6228956))

(declare-fun m!6229464 () Bool)

(assert (=> b!5175252 m!6229464))

(assert (=> b!5174980 d!1670327))

(declare-fun d!1670329 () Bool)

(assert (=> d!1670329 (= (head!11073 (tail!10172 lt!2131871)) (h!66605 (tail!10172 lt!2131871)))))

(assert (=> b!5174980 d!1670329))

(declare-fun d!1670331 () Bool)

(declare-fun e!3224748 () Bool)

(assert (=> d!1670331 e!3224748))

(declare-fun res!2199362 () Bool)

(assert (=> d!1670331 (=> res!2199362 e!3224748)))

(declare-fun lt!2132200 () Bool)

(assert (=> d!1670331 (= res!2199362 (not lt!2132200))))

(declare-fun e!3224749 () Bool)

(assert (=> d!1670331 (= lt!2132200 e!3224749)))

(declare-fun res!2199361 () Bool)

(assert (=> d!1670331 (=> res!2199361 e!3224749)))

(assert (=> d!1670331 (= res!2199361 ((_ is Nil!60157) (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(assert (=> d!1670331 (= (isPrefix!5788 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) input!5817) lt!2132200)))

(declare-fun b!5175257 () Bool)

(assert (=> b!5175257 (= e!3224748 (>= (size!39691 input!5817) (size!39691 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(declare-fun b!5175254 () Bool)

(declare-fun e!3224747 () Bool)

(assert (=> b!5175254 (= e!3224749 e!3224747)))

(declare-fun res!2199363 () Bool)

(assert (=> b!5175254 (=> (not res!2199363) (not e!3224747))))

(assert (=> b!5175254 (= res!2199363 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175256 () Bool)

(assert (=> b!5175256 (= e!3224747 (isPrefix!5788 (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) (tail!10172 input!5817)))))

(declare-fun b!5175255 () Bool)

(declare-fun res!2199364 () Bool)

(assert (=> b!5175255 (=> (not res!2199364) (not e!3224747))))

(assert (=> b!5175255 (= res!2199364 (= (head!11073 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) (head!11073 input!5817)))))

(assert (= (and d!1670331 (not res!2199361)) b!5175254))

(assert (= (and b!5175254 res!2199363) b!5175255))

(assert (= (and b!5175255 res!2199364) b!5175256))

(assert (= (and d!1670331 (not res!2199362)) b!5175257))

(assert (=> b!5175257 m!6228940))

(assert (=> b!5175257 m!6229016))

(declare-fun m!6229466 () Bool)

(assert (=> b!5175257 m!6229466))

(assert (=> b!5175256 m!6229016))

(declare-fun m!6229468 () Bool)

(assert (=> b!5175256 m!6229468))

(assert (=> b!5175256 m!6228956))

(assert (=> b!5175256 m!6229468))

(assert (=> b!5175256 m!6228956))

(declare-fun m!6229470 () Bool)

(assert (=> b!5175256 m!6229470))

(assert (=> b!5175255 m!6229016))

(declare-fun m!6229472 () Bool)

(assert (=> b!5175255 m!6229472))

(assert (=> b!5175255 m!6229212))

(assert (=> b!5174980 d!1670331))

(declare-fun d!1670333 () Bool)

(assert (=> d!1670333 (= (head!11073 (getSuffix!3436 input!5817 lt!2131870)) (h!66605 (getSuffix!3436 input!5817 lt!2131870)))))

(assert (=> b!5174980 d!1670333))

(assert (=> b!5174980 d!1670159))

(assert (=> b!5174980 d!1670249))

(declare-fun d!1670335 () Bool)

(assert (=> d!1670335 (<= (size!39691 lt!2131870) (size!39691 input!5817))))

(declare-fun lt!2132201 () Unit!151938)

(assert (=> d!1670335 (= lt!2132201 (choose!38411 lt!2131870 input!5817))))

(assert (=> d!1670335 (isPrefix!5788 lt!2131870 input!5817)))

(assert (=> d!1670335 (= (lemmaIsPrefixThenSmallerEqSize!949 lt!2131870 input!5817) lt!2132201)))

(declare-fun bs!1203985 () Bool)

(assert (= bs!1203985 d!1670335))

(assert (=> bs!1203985 m!6228946))

(assert (=> bs!1203985 m!6228940))

(declare-fun m!6229474 () Bool)

(assert (=> bs!1203985 m!6229474))

(assert (=> bs!1203985 m!6228908))

(assert (=> b!5174980 d!1670335))

(declare-fun b!5175259 () Bool)

(declare-fun e!3224750 () List!60281)

(assert (=> b!5175259 (= e!3224750 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157))))))

(declare-fun b!5175261 () Bool)

(declare-fun e!3224751 () Bool)

(declare-fun lt!2132202 () List!60281)

(assert (=> b!5175261 (= e!3224751 (or (not (= (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157) Nil!60157)) (= lt!2132202 lt!2131870)))))

(declare-fun d!1670337 () Bool)

(assert (=> d!1670337 e!3224751))

(declare-fun res!2199366 () Bool)

(assert (=> d!1670337 (=> (not res!2199366) (not e!3224751))))

(assert (=> d!1670337 (= res!2199366 (= (content!10659 lt!2132202) ((_ map or) (content!10659 lt!2131870) (content!10659 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(assert (=> d!1670337 (= lt!2132202 e!3224750)))

(declare-fun c!891146 () Bool)

(assert (=> d!1670337 (= c!891146 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670337 (= (++!13171 lt!2131870 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)) lt!2132202)))

(declare-fun b!5175260 () Bool)

(declare-fun res!2199365 () Bool)

(assert (=> b!5175260 (=> (not res!2199365) (not e!3224751))))

(assert (=> b!5175260 (= res!2199365 (= (size!39691 lt!2132202) (+ (size!39691 lt!2131870) (size!39691 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(declare-fun b!5175258 () Bool)

(assert (=> b!5175258 (= e!3224750 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157))))

(assert (= (and d!1670337 c!891146) b!5175258))

(assert (= (and d!1670337 (not c!891146)) b!5175259))

(assert (= (and d!1670337 res!2199366) b!5175260))

(assert (= (and b!5175260 res!2199365) b!5175261))

(declare-fun m!6229476 () Bool)

(assert (=> b!5175259 m!6229476))

(declare-fun m!6229478 () Bool)

(assert (=> d!1670337 m!6229478))

(assert (=> d!1670337 m!6229430))

(declare-fun m!6229480 () Bool)

(assert (=> d!1670337 m!6229480))

(declare-fun m!6229482 () Bool)

(assert (=> b!5175260 m!6229482))

(assert (=> b!5175260 m!6228946))

(declare-fun m!6229484 () Bool)

(assert (=> b!5175260 m!6229484))

(assert (=> b!5174980 d!1670337))

(declare-fun d!1670339 () Bool)

(assert (=> d!1670339 (isPrefix!5788 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) input!5817)))

(declare-fun lt!2132203 () Unit!151938)

(assert (=> d!1670339 (= lt!2132203 (choose!38410 lt!2131870 input!5817))))

(assert (=> d!1670339 (isPrefix!5788 lt!2131870 input!5817)))

(assert (=> d!1670339 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131870 input!5817) lt!2132203)))

(declare-fun bs!1203986 () Bool)

(assert (= bs!1203986 d!1670339))

(assert (=> bs!1203986 m!6229002))

(assert (=> bs!1203986 m!6229018))

(assert (=> bs!1203986 m!6228908))

(assert (=> bs!1203986 m!6229002))

(declare-fun m!6229486 () Bool)

(assert (=> bs!1203986 m!6229486))

(assert (=> bs!1203986 m!6229016))

(assert (=> bs!1203986 m!6229022))

(assert (=> bs!1203986 m!6229016))

(assert (=> b!5174980 d!1670339))

(assert (=> bm!363486 d!1670237))

(declare-fun d!1670341 () Bool)

(declare-fun lt!2132206 () Bool)

(declare-datatypes ((List!60283 0))(
  ( (Nil!60159) (Cons!60159 (h!66607 Context!8078) (t!373436 List!60283)) )
))
(declare-fun exists!1937 (List!60283 Int) Bool)

(declare-fun toList!8456 ((InoxSet Context!8078)) List!60283)

(assert (=> d!1670341 (= lt!2132206 (exists!1937 (toList!8456 z!4581) lambda!258451))))

(declare-fun choose!38416 ((InoxSet Context!8078) Int) Bool)

(assert (=> d!1670341 (= lt!2132206 (choose!38416 z!4581 lambda!258451))))

(assert (=> d!1670341 (= (exists!1936 z!4581 lambda!258451) lt!2132206)))

(declare-fun bs!1203987 () Bool)

(assert (= bs!1203987 d!1670341))

(declare-fun m!6229488 () Bool)

(assert (=> bs!1203987 m!6229488))

(assert (=> bs!1203987 m!6229488))

(declare-fun m!6229490 () Bool)

(assert (=> bs!1203987 m!6229490))

(declare-fun m!6229492 () Bool)

(assert (=> bs!1203987 m!6229492))

(assert (=> d!1670237 d!1670341))

(declare-fun d!1670343 () Bool)

(assert (=> d!1670343 (= (isEmpty!32207 (_1!35233 lt!2131979)) ((_ is Nil!60157) (_1!35233 lt!2131979)))))

(assert (=> b!5174976 d!1670343))

(declare-fun bs!1203988 () Bool)

(declare-fun d!1670345 () Bool)

(assert (= bs!1203988 (and d!1670345 d!1670255)))

(declare-fun lambda!258458 () Int)

(assert (=> bs!1203988 (= lambda!258458 lambda!258454)))

(declare-fun bs!1203989 () Bool)

(assert (= bs!1203989 (and d!1670345 d!1670257)))

(assert (=> bs!1203989 (= lambda!258458 lambda!258455)))

(declare-fun bs!1203990 () Bool)

(assert (= bs!1203990 (and d!1670345 d!1670299)))

(assert (=> bs!1203990 (= lambda!258458 lambda!258457)))

(assert (=> d!1670345 (= (inv!79884 setElem!32308) (forall!14155 (exprs!4539 setElem!32308) lambda!258458))))

(declare-fun bs!1203991 () Bool)

(assert (= bs!1203991 d!1670345))

(declare-fun m!6229494 () Bool)

(assert (=> bs!1203991 m!6229494))

(assert (=> setNonEmpty!32308 d!1670345))

(declare-fun d!1670347 () Bool)

(declare-fun lt!2132211 () List!60281)

(assert (=> d!1670347 (= (++!13171 (t!373434 testedP!294) lt!2132211) (tail!10172 input!5817))))

(declare-fun e!3224752 () List!60281)

(assert (=> d!1670347 (= lt!2132211 e!3224752)))

(declare-fun c!891147 () Bool)

(assert (=> d!1670347 (= c!891147 ((_ is Cons!60157) (t!373434 testedP!294)))))

(assert (=> d!1670347 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (t!373434 testedP!294)))))

(assert (=> d!1670347 (= (getSuffix!3436 (tail!10172 input!5817) (t!373434 testedP!294)) lt!2132211)))

(declare-fun b!5175262 () Bool)

(assert (=> b!5175262 (= e!3224752 (getSuffix!3436 (tail!10172 (tail!10172 input!5817)) (t!373434 (t!373434 testedP!294))))))

(declare-fun b!5175263 () Bool)

(assert (=> b!5175263 (= e!3224752 (tail!10172 input!5817))))

(assert (= (and d!1670347 c!891147) b!5175262))

(assert (= (and d!1670347 (not c!891147)) b!5175263))

(declare-fun m!6229496 () Bool)

(assert (=> d!1670347 m!6229496))

(assert (=> d!1670347 m!6228956))

(declare-fun m!6229498 () Bool)

(assert (=> d!1670347 m!6229498))

(assert (=> d!1670347 m!6228998))

(assert (=> b!5175262 m!6228956))

(declare-fun m!6229500 () Bool)

(assert (=> b!5175262 m!6229500))

(assert (=> b!5175262 m!6229500))

(declare-fun m!6229502 () Bool)

(assert (=> b!5175262 m!6229502))

(assert (=> b!5174924 d!1670347))

(declare-fun d!1670349 () Bool)

(assert (=> d!1670349 (= (tail!10172 input!5817) (t!373434 input!5817))))

(assert (=> b!5174924 d!1670349))

(assert (=> b!5175145 d!1670159))

(assert (=> b!5175145 d!1670249))

(assert (=> bm!363495 d!1670329))

(assert (=> bm!363484 d!1670177))

(assert (=> d!1670227 d!1670229))

(declare-fun d!1670351 () Bool)

(assert (=> d!1670351 (isPrefix!5788 input!5817 input!5817)))

(assert (=> d!1670351 true))

(declare-fun _$45!2359 () Unit!151938)

(assert (=> d!1670351 (= (choose!38407 input!5817 input!5817) _$45!2359)))

(declare-fun bs!1203992 () Bool)

(assert (= bs!1203992 d!1670351))

(assert (=> bs!1203992 m!6228932))

(assert (=> d!1670227 d!1670351))

(declare-fun d!1670353 () Bool)

(declare-fun lt!2132218 () Int)

(assert (=> d!1670353 (>= lt!2132218 0)))

(declare-fun e!3224757 () Int)

(assert (=> d!1670353 (= lt!2132218 e!3224757)))

(declare-fun c!891154 () Bool)

(assert (=> d!1670353 (= c!891154 ((_ is Nil!60157) (t!373434 lt!2131870)))))

(assert (=> d!1670353 (= (size!39691 (t!373434 lt!2131870)) lt!2132218)))

(declare-fun b!5175268 () Bool)

(assert (=> b!5175268 (= e!3224757 0)))

(declare-fun b!5175269 () Bool)

(assert (=> b!5175269 (= e!3224757 (+ 1 (size!39691 (t!373434 (t!373434 lt!2131870)))))))

(assert (= (and d!1670353 c!891154) b!5175268))

(assert (= (and d!1670353 (not c!891154)) b!5175269))

(declare-fun m!6229504 () Bool)

(assert (=> b!5175269 m!6229504))

(assert (=> b!5175157 d!1670353))

(declare-fun d!1670355 () Bool)

(declare-fun lt!2132219 () Int)

(assert (=> d!1670355 (>= lt!2132219 0)))

(declare-fun e!3224758 () Int)

(assert (=> d!1670355 (= lt!2132219 e!3224758)))

(declare-fun c!891155 () Bool)

(assert (=> d!1670355 (= c!891155 ((_ is Nil!60157) lt!2132138))))

(assert (=> d!1670355 (= (size!39691 lt!2132138) lt!2132219)))

(declare-fun b!5175270 () Bool)

(assert (=> b!5175270 (= e!3224758 0)))

(declare-fun b!5175271 () Bool)

(assert (=> b!5175271 (= e!3224758 (+ 1 (size!39691 (t!373434 lt!2132138))))))

(assert (= (and d!1670355 c!891155) b!5175270))

(assert (= (and d!1670355 (not c!891155)) b!5175271))

(declare-fun m!6229506 () Bool)

(assert (=> b!5175271 m!6229506))

(assert (=> b!5175140 d!1670355))

(assert (=> b!5175140 d!1670171))

(declare-fun d!1670357 () Bool)

(declare-fun lt!2132220 () Int)

(assert (=> d!1670357 (>= lt!2132220 0)))

(declare-fun e!3224759 () Int)

(assert (=> d!1670357 (= lt!2132220 e!3224759)))

(declare-fun c!891156 () Bool)

(assert (=> d!1670357 (= c!891156 ((_ is Nil!60157) (Cons!60157 lt!2131872 Nil!60157)))))

(assert (=> d!1670357 (= (size!39691 (Cons!60157 lt!2131872 Nil!60157)) lt!2132220)))

(declare-fun b!5175272 () Bool)

(assert (=> b!5175272 (= e!3224759 0)))

(declare-fun b!5175273 () Bool)

(assert (=> b!5175273 (= e!3224759 (+ 1 (size!39691 (t!373434 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (= (and d!1670357 c!891156) b!5175272))

(assert (= (and d!1670357 (not c!891156)) b!5175273))

(declare-fun m!6229508 () Bool)

(assert (=> b!5175273 m!6229508))

(assert (=> b!5175140 d!1670357))

(assert (=> bm!363492 d!1670307))

(assert (=> d!1670253 d!1670233))

(assert (=> d!1670253 d!1670179))

(declare-fun d!1670359 () Bool)

(declare-fun c!891159 () Bool)

(assert (=> d!1670359 (= c!891159 ((_ is Cons!60157) (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))))))

(declare-fun e!3224760 () (InoxSet Context!8078))

(assert (=> d!1670359 (= (derivationZipper!278 baseZ!62 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) e!3224760)))

(declare-fun b!5175274 () Bool)

(assert (=> b!5175274 (= e!3224760 (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))))))

(declare-fun b!5175275 () Bool)

(assert (=> b!5175275 (= e!3224760 baseZ!62)))

(assert (= (and d!1670359 c!891159) b!5175274))

(assert (= (and d!1670359 (not c!891159)) b!5175275))

(declare-fun m!6229510 () Bool)

(assert (=> b!5175274 m!6229510))

(assert (=> b!5175274 m!6229510))

(declare-fun m!6229512 () Bool)

(assert (=> b!5175274 m!6229512))

(assert (=> d!1670253 d!1670359))

(assert (=> d!1670253 d!1670245))

(declare-fun d!1670361 () Bool)

(assert (=> d!1670361 (= (derivationZipper!278 baseZ!62 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) (derivationStepZipper!1001 z!4581 lt!2131872))))

(assert (=> d!1670361 true))

(declare-fun _$83!275 () Unit!151938)

(assert (=> d!1670361 (= (choose!38412 baseZ!62 z!4581 testedP!294 lt!2131872) _$83!275)))

(declare-fun bs!1203993 () Bool)

(assert (= bs!1203993 d!1670361))

(assert (=> bs!1203993 m!6228906))

(assert (=> bs!1203993 m!6228906))

(assert (=> bs!1203993 m!6229258))

(assert (=> bs!1203993 m!6228928))

(assert (=> d!1670253 d!1670361))

(declare-fun d!1670363 () Bool)

(assert (=> d!1670363 (= (head!11073 testedP!294) (h!66605 testedP!294))))

(assert (=> b!5175147 d!1670363))

(declare-fun d!1670365 () Bool)

(assert (=> d!1670365 (= (head!11073 input!5817) (h!66605 input!5817))))

(assert (=> b!5175147 d!1670365))

(assert (=> bm!363490 d!1670229))

(declare-fun bs!1203994 () Bool)

(declare-fun d!1670367 () Bool)

(assert (= bs!1203994 (and d!1670367 d!1670179)))

(declare-fun lambda!258471 () Int)

(assert (=> bs!1203994 (= (= call!363495 lt!2131872) (= lambda!258471 lambda!258448))))

(assert (=> d!1670367 true))

(assert (=> d!1670367 (= (derivationStepZipper!1001 z!4581 call!363495) (flatMap!458 z!4581 lambda!258471))))

(declare-fun bs!1203995 () Bool)

(assert (= bs!1203995 d!1670367))

(declare-fun m!6229514 () Bool)

(assert (=> bs!1203995 m!6229514))

(assert (=> bm!363483 d!1670367))

(declare-fun d!1670369 () Bool)

(declare-fun lt!2132227 () Int)

(assert (=> d!1670369 (>= lt!2132227 0)))

(declare-fun e!3224763 () Int)

(assert (=> d!1670369 (= lt!2132227 e!3224763)))

(declare-fun c!891163 () Bool)

(assert (=> d!1670369 (= c!891163 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1670369 (= (size!39691 (t!373434 testedP!294)) lt!2132227)))

(declare-fun b!5175276 () Bool)

(assert (=> b!5175276 (= e!3224763 0)))

(declare-fun b!5175277 () Bool)

(assert (=> b!5175277 (= e!3224763 (+ 1 (size!39691 (t!373434 (t!373434 testedP!294)))))))

(assert (= (and d!1670369 c!891163) b!5175276))

(assert (= (and d!1670369 (not c!891163)) b!5175277))

(declare-fun m!6229516 () Bool)

(assert (=> b!5175277 m!6229516))

(assert (=> b!5174969 d!1670369))

(declare-fun d!1670371 () Bool)

(declare-fun lt!2132228 () Int)

(assert (=> d!1670371 (>= lt!2132228 0)))

(declare-fun e!3224764 () Int)

(assert (=> d!1670371 (= lt!2132228 e!3224764)))

(declare-fun c!891164 () Bool)

(assert (=> d!1670371 (= c!891164 ((_ is Nil!60157) (_1!35233 lt!2131947)))))

(assert (=> d!1670371 (= (size!39691 (_1!35233 lt!2131947)) lt!2132228)))

(declare-fun b!5175278 () Bool)

(assert (=> b!5175278 (= e!3224764 0)))

(declare-fun b!5175279 () Bool)

(assert (=> b!5175279 (= e!3224764 (+ 1 (size!39691 (t!373434 (_1!35233 lt!2131947)))))))

(assert (= (and d!1670371 c!891164) b!5175278))

(assert (= (and d!1670371 (not c!891164)) b!5175279))

(declare-fun m!6229518 () Bool)

(assert (=> b!5175279 m!6229518))

(assert (=> b!5174961 d!1670371))

(assert (=> b!5174961 d!1670171))

(declare-fun d!1670373 () Bool)

(assert (=> d!1670373 (= (isEmpty!32207 (_1!35233 lt!2131974)) ((_ is Nil!60157) (_1!35233 lt!2131974)))))

(assert (=> b!5174983 d!1670373))

(declare-fun b!5175282 () Bool)

(declare-fun e!3224768 () tuple2!63860)

(assert (=> b!5175282 (= e!3224768 (tuple2!63861 lt!2131958 Nil!60157))))

(declare-fun bm!363545 () Bool)

(declare-fun call!363556 () (InoxSet Context!8078))

(declare-fun call!363557 () C!29580)

(assert (=> bm!363545 (= call!363556 (derivationStepZipper!1001 call!363494 call!363557))))

(declare-fun b!5175283 () Bool)

(declare-fun e!3224766 () tuple2!63860)

(declare-fun lt!2132247 () tuple2!63860)

(assert (=> b!5175283 (= e!3224766 lt!2132247)))

(declare-fun b!5175284 () Bool)

(declare-fun e!3224770 () tuple2!63860)

(assert (=> b!5175284 (= e!3224770 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363546 () Bool)

(declare-fun call!363555 () List!60281)

(assert (=> bm!363546 (= call!363555 (tail!10172 call!363493))))

(declare-fun b!5175285 () Bool)

(declare-fun e!3224771 () tuple2!63860)

(declare-fun call!363550 () tuple2!63860)

(assert (=> b!5175285 (= e!3224771 call!363550)))

(declare-fun b!5175286 () Bool)

(assert (=> b!5175286 (= e!3224766 (tuple2!63861 lt!2131958 call!363493))))

(declare-fun bm!363547 () Bool)

(declare-fun call!363553 () Unit!151938)

(assert (=> bm!363547 (= call!363553 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131958 input!5817))))

(declare-fun b!5175287 () Bool)

(declare-fun c!891166 () Bool)

(declare-fun call!363554 () Bool)

(assert (=> b!5175287 (= c!891166 call!363554)))

(declare-fun lt!2132262 () Unit!151938)

(declare-fun lt!2132240 () Unit!151938)

(assert (=> b!5175287 (= lt!2132262 lt!2132240)))

(assert (=> b!5175287 (= input!5817 lt!2131958)))

(assert (=> b!5175287 (= lt!2132240 call!363553)))

(declare-fun lt!2132252 () Unit!151938)

(declare-fun lt!2132249 () Unit!151938)

(assert (=> b!5175287 (= lt!2132252 lt!2132249)))

(declare-fun call!363551 () Bool)

(assert (=> b!5175287 call!363551))

(declare-fun call!363552 () Unit!151938)

(assert (=> b!5175287 (= lt!2132249 call!363552)))

(declare-fun e!3224773 () tuple2!63860)

(assert (=> b!5175287 (= e!3224773 e!3224768)))

(declare-fun b!5175288 () Bool)

(assert (=> b!5175288 (= e!3224771 e!3224766)))

(assert (=> b!5175288 (= lt!2132247 call!363550)))

(declare-fun c!891167 () Bool)

(assert (=> b!5175288 (= c!891167 (isEmpty!32207 (_1!35233 lt!2132247)))))

(declare-fun d!1670375 () Bool)

(declare-fun e!3224772 () Bool)

(assert (=> d!1670375 e!3224772))

(declare-fun res!2199368 () Bool)

(assert (=> d!1670375 (=> (not res!2199368) (not e!3224772))))

(declare-fun lt!2132242 () tuple2!63860)

(assert (=> d!1670375 (= res!2199368 (= (++!13171 (_1!35233 lt!2132242) (_2!35233 lt!2132242)) input!5817))))

(assert (=> d!1670375 (= lt!2132242 e!3224770)))

(declare-fun c!891170 () Bool)

(assert (=> d!1670375 (= c!891170 (lostCauseZipper!1342 call!363494))))

(declare-fun lt!2132238 () Unit!151938)

(declare-fun Unit!151957 () Unit!151938)

(assert (=> d!1670375 (= lt!2132238 Unit!151957)))

(assert (=> d!1670375 (= (getSuffix!3436 input!5817 lt!2131958) call!363493)))

(declare-fun lt!2132251 () Unit!151938)

(declare-fun lt!2132243 () Unit!151938)

(assert (=> d!1670375 (= lt!2132251 lt!2132243)))

(declare-fun lt!2132239 () List!60281)

(assert (=> d!1670375 (= call!363493 lt!2132239)))

(assert (=> d!1670375 (= lt!2132243 (lemmaSamePrefixThenSameSuffix!2709 lt!2131958 call!363493 lt!2131958 lt!2132239 input!5817))))

(assert (=> d!1670375 (= lt!2132239 (getSuffix!3436 input!5817 lt!2131958))))

(declare-fun lt!2132260 () Unit!151938)

(declare-fun lt!2132246 () Unit!151938)

(assert (=> d!1670375 (= lt!2132260 lt!2132246)))

(assert (=> d!1670375 (isPrefix!5788 lt!2131958 (++!13171 lt!2131958 call!363493))))

(assert (=> d!1670375 (= lt!2132246 (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131958 call!363493))))

(assert (=> d!1670375 (= (++!13171 lt!2131958 call!363493) input!5817)))

(assert (=> d!1670375 (= (findLongestMatchInnerZipper!311 call!363494 lt!2131958 (+ lt!2131873 1) call!363493 input!5817 lt!2131877) lt!2132242)))

(declare-fun bm!363548 () Bool)

(assert (=> bm!363548 (= call!363554 (nullableZipper!1193 call!363494))))

(declare-fun bm!363549 () Bool)

(assert (=> bm!363549 (= call!363557 (head!11073 call!363493))))

(declare-fun b!5175289 () Bool)

(declare-fun e!3224769 () Bool)

(assert (=> b!5175289 (= e!3224769 (>= (size!39691 (_1!35233 lt!2132242)) (size!39691 lt!2131958)))))

(declare-fun b!5175290 () Bool)

(assert (=> b!5175290 (= e!3224770 e!3224773)))

(declare-fun c!891169 () Bool)

(assert (=> b!5175290 (= c!891169 (= (+ lt!2131873 1) lt!2131877))))

(declare-fun lt!2132253 () List!60281)

(declare-fun bm!363550 () Bool)

(assert (=> bm!363550 (= call!363550 (findLongestMatchInnerZipper!311 call!363556 lt!2132253 (+ lt!2131873 1 1) call!363555 input!5817 lt!2131877))))

(declare-fun b!5175291 () Bool)

(declare-fun e!3224767 () Unit!151938)

(declare-fun Unit!151958 () Unit!151938)

(assert (=> b!5175291 (= e!3224767 Unit!151958)))

(declare-fun lt!2132259 () Unit!151938)

(assert (=> b!5175291 (= lt!2132259 call!363552)))

(assert (=> b!5175291 call!363551))

(declare-fun lt!2132258 () Unit!151938)

(assert (=> b!5175291 (= lt!2132258 lt!2132259)))

(declare-fun lt!2132248 () Unit!151938)

(assert (=> b!5175291 (= lt!2132248 call!363553)))

(assert (=> b!5175291 (= input!5817 lt!2131958)))

(declare-fun lt!2132245 () Unit!151938)

(assert (=> b!5175291 (= lt!2132245 lt!2132248)))

(assert (=> b!5175291 false))

(declare-fun bm!363551 () Bool)

(assert (=> bm!363551 (= call!363552 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5175292 () Bool)

(declare-fun c!891171 () Bool)

(assert (=> b!5175292 (= c!891171 call!363554)))

(declare-fun lt!2132250 () Unit!151938)

(declare-fun lt!2132241 () Unit!151938)

(assert (=> b!5175292 (= lt!2132250 lt!2132241)))

(declare-fun lt!2132244 () List!60281)

(declare-fun lt!2132257 () C!29580)

(assert (=> b!5175292 (= (++!13171 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157)) lt!2132244) input!5817)))

(assert (=> b!5175292 (= lt!2132241 (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131958 lt!2132257 lt!2132244 input!5817))))

(assert (=> b!5175292 (= lt!2132244 (tail!10172 call!363493))))

(assert (=> b!5175292 (= lt!2132257 (head!11073 call!363493))))

(declare-fun lt!2132256 () Unit!151938)

(declare-fun lt!2132237 () Unit!151938)

(assert (=> b!5175292 (= lt!2132256 lt!2132237)))

(assert (=> b!5175292 (isPrefix!5788 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)) input!5817)))

(assert (=> b!5175292 (= lt!2132237 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131958 input!5817))))

(assert (=> b!5175292 (= lt!2132253 (++!13171 lt!2131958 (Cons!60157 (head!11073 call!363493) Nil!60157)))))

(declare-fun lt!2132255 () Unit!151938)

(assert (=> b!5175292 (= lt!2132255 e!3224767)))

(declare-fun c!891168 () Bool)

(assert (=> b!5175292 (= c!891168 (= (size!39691 lt!2131958) (size!39691 input!5817)))))

(declare-fun lt!2132254 () Unit!151938)

(declare-fun lt!2132261 () Unit!151938)

(assert (=> b!5175292 (= lt!2132254 lt!2132261)))

(assert (=> b!5175292 (<= (size!39691 lt!2131958) (size!39691 input!5817))))

(assert (=> b!5175292 (= lt!2132261 (lemmaIsPrefixThenSmallerEqSize!949 lt!2131958 input!5817))))

(assert (=> b!5175292 (= e!3224773 e!3224771)))

(declare-fun b!5175293 () Bool)

(declare-fun Unit!151959 () Unit!151938)

(assert (=> b!5175293 (= e!3224767 Unit!151959)))

(declare-fun b!5175294 () Bool)

(assert (=> b!5175294 (= e!3224768 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363552 () Bool)

(assert (=> bm!363552 (= call!363551 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5175295 () Bool)

(assert (=> b!5175295 (= e!3224772 e!3224769)))

(declare-fun res!2199367 () Bool)

(assert (=> b!5175295 (=> res!2199367 e!3224769)))

(assert (=> b!5175295 (= res!2199367 (isEmpty!32207 (_1!35233 lt!2132242)))))

(assert (= (and d!1670375 c!891170) b!5175284))

(assert (= (and d!1670375 (not c!891170)) b!5175290))

(assert (= (and b!5175290 c!891169) b!5175287))

(assert (= (and b!5175290 (not c!891169)) b!5175292))

(assert (= (and b!5175287 c!891166) b!5175282))

(assert (= (and b!5175287 (not c!891166)) b!5175294))

(assert (= (and b!5175292 c!891168) b!5175291))

(assert (= (and b!5175292 (not c!891168)) b!5175293))

(assert (= (and b!5175292 c!891171) b!5175288))

(assert (= (and b!5175292 (not c!891171)) b!5175285))

(assert (= (and b!5175288 c!891167) b!5175286))

(assert (= (and b!5175288 (not c!891167)) b!5175283))

(assert (= (or b!5175288 b!5175285) bm!363546))

(assert (= (or b!5175288 b!5175285) bm!363549))

(assert (= (or b!5175288 b!5175285) bm!363545))

(assert (= (or b!5175288 b!5175285) bm!363550))

(assert (= (or b!5175287 b!5175291) bm!363551))

(assert (= (or b!5175287 b!5175292) bm!363548))

(assert (= (or b!5175287 b!5175291) bm!363552))

(assert (= (or b!5175287 b!5175291) bm!363547))

(assert (= (and d!1670375 res!2199368) b!5175295))

(assert (= (and b!5175295 (not res!2199367)) b!5175289))

(declare-fun m!6229546 () Bool)

(assert (=> b!5175288 m!6229546))

(declare-fun m!6229548 () Bool)

(assert (=> b!5175292 m!6229548))

(assert (=> b!5175292 m!6228940))

(declare-fun m!6229550 () Bool)

(assert (=> b!5175292 m!6229550))

(declare-fun m!6229552 () Bool)

(assert (=> b!5175292 m!6229552))

(declare-fun m!6229554 () Bool)

(assert (=> b!5175292 m!6229554))

(declare-fun m!6229556 () Bool)

(assert (=> b!5175292 m!6229556))

(assert (=> b!5175292 m!6229552))

(declare-fun m!6229558 () Bool)

(assert (=> b!5175292 m!6229558))

(declare-fun m!6229560 () Bool)

(assert (=> b!5175292 m!6229560))

(declare-fun m!6229562 () Bool)

(assert (=> b!5175292 m!6229562))

(assert (=> b!5175292 m!6229548))

(declare-fun m!6229564 () Bool)

(assert (=> b!5175292 m!6229564))

(declare-fun m!6229566 () Bool)

(assert (=> b!5175292 m!6229566))

(declare-fun m!6229568 () Bool)

(assert (=> b!5175292 m!6229568))

(assert (=> b!5175292 m!6229562))

(declare-fun m!6229570 () Bool)

(assert (=> b!5175292 m!6229570))

(declare-fun m!6229572 () Bool)

(assert (=> b!5175292 m!6229572))

(assert (=> bm!363551 m!6228930))

(assert (=> bm!363549 m!6229554))

(declare-fun m!6229574 () Bool)

(assert (=> bm!363548 m!6229574))

(declare-fun m!6229576 () Bool)

(assert (=> b!5175289 m!6229576))

(assert (=> b!5175289 m!6229568))

(assert (=> bm!363552 m!6228932))

(declare-fun m!6229578 () Bool)

(assert (=> bm!363545 m!6229578))

(assert (=> bm!363546 m!6229566))

(assert (=> d!1670375 m!6229548))

(declare-fun m!6229580 () Bool)

(assert (=> d!1670375 m!6229580))

(declare-fun m!6229582 () Bool)

(assert (=> d!1670375 m!6229582))

(declare-fun m!6229584 () Bool)

(assert (=> d!1670375 m!6229584))

(declare-fun m!6229586 () Bool)

(assert (=> d!1670375 m!6229586))

(declare-fun m!6229588 () Bool)

(assert (=> d!1670375 m!6229588))

(assert (=> d!1670375 m!6229586))

(declare-fun m!6229590 () Bool)

(assert (=> d!1670375 m!6229590))

(declare-fun m!6229592 () Bool)

(assert (=> bm!363550 m!6229592))

(declare-fun m!6229594 () Bool)

(assert (=> b!5175295 m!6229594))

(declare-fun m!6229596 () Bool)

(assert (=> bm!363547 m!6229596))

(assert (=> bm!363488 d!1670375))

(declare-fun d!1670381 () Bool)

(declare-fun c!891175 () Bool)

(assert (=> d!1670381 (= c!891175 ((_ is Nil!60157) lt!2132138))))

(declare-fun e!3224778 () (InoxSet C!29580))

(assert (=> d!1670381 (= (content!10659 lt!2132138) e!3224778)))

(declare-fun b!5175304 () Bool)

(assert (=> b!5175304 (= e!3224778 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175305 () Bool)

(assert (=> b!5175305 (= e!3224778 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132138) true) (content!10659 (t!373434 lt!2132138))))))

(assert (= (and d!1670381 c!891175) b!5175304))

(assert (= (and d!1670381 (not c!891175)) b!5175305))

(declare-fun m!6229600 () Bool)

(assert (=> b!5175305 m!6229600))

(declare-fun m!6229602 () Bool)

(assert (=> b!5175305 m!6229602))

(assert (=> d!1670233 d!1670381))

(declare-fun d!1670385 () Bool)

(declare-fun c!891176 () Bool)

(assert (=> d!1670385 (= c!891176 ((_ is Nil!60157) testedP!294))))

(declare-fun e!3224779 () (InoxSet C!29580))

(assert (=> d!1670385 (= (content!10659 testedP!294) e!3224779)))

(declare-fun b!5175306 () Bool)

(assert (=> b!5175306 (= e!3224779 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175307 () Bool)

(assert (=> b!5175307 (= e!3224779 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 testedP!294) true) (content!10659 (t!373434 testedP!294))))))

(assert (= (and d!1670385 c!891176) b!5175306))

(assert (= (and d!1670385 (not c!891176)) b!5175307))

(declare-fun m!6229604 () Bool)

(assert (=> b!5175307 m!6229604))

(declare-fun m!6229606 () Bool)

(assert (=> b!5175307 m!6229606))

(assert (=> d!1670233 d!1670385))

(declare-fun d!1670387 () Bool)

(declare-fun c!891177 () Bool)

(assert (=> d!1670387 (= c!891177 ((_ is Nil!60157) (Cons!60157 lt!2131872 Nil!60157)))))

(declare-fun e!3224780 () (InoxSet C!29580))

(assert (=> d!1670387 (= (content!10659 (Cons!60157 lt!2131872 Nil!60157)) e!3224780)))

(declare-fun b!5175308 () Bool)

(assert (=> b!5175308 (= e!3224780 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175309 () Bool)

(assert (=> b!5175309 (= e!3224780 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 lt!2131872 Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (= (and d!1670387 c!891177) b!5175308))

(assert (= (and d!1670387 (not c!891177)) b!5175309))

(declare-fun m!6229608 () Bool)

(assert (=> b!5175309 m!6229608))

(declare-fun m!6229610 () Bool)

(assert (=> b!5175309 m!6229610))

(assert (=> d!1670233 d!1670387))

(declare-fun d!1670389 () Bool)

(declare-fun e!3224782 () Bool)

(assert (=> d!1670389 e!3224782))

(declare-fun res!2199372 () Bool)

(assert (=> d!1670389 (=> res!2199372 e!3224782)))

(declare-fun lt!2132269 () Bool)

(assert (=> d!1670389 (= res!2199372 (not lt!2132269))))

(declare-fun e!3224783 () Bool)

(assert (=> d!1670389 (= lt!2132269 e!3224783)))

(declare-fun res!2199371 () Bool)

(assert (=> d!1670389 (=> res!2199371 e!3224783)))

(assert (=> d!1670389 (= res!2199371 ((_ is Nil!60157) (tail!10172 input!5817)))))

(assert (=> d!1670389 (= (isPrefix!5788 (tail!10172 input!5817) (tail!10172 input!5817)) lt!2132269)))

(declare-fun b!5175313 () Bool)

(assert (=> b!5175313 (= e!3224782 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (tail!10172 input!5817))))))

(declare-fun b!5175310 () Bool)

(declare-fun e!3224781 () Bool)

(assert (=> b!5175310 (= e!3224783 e!3224781)))

(declare-fun res!2199373 () Bool)

(assert (=> b!5175310 (=> (not res!2199373) (not e!3224781))))

(assert (=> b!5175310 (= res!2199373 (not ((_ is Nil!60157) (tail!10172 input!5817))))))

(declare-fun b!5175312 () Bool)

(assert (=> b!5175312 (= e!3224781 (isPrefix!5788 (tail!10172 (tail!10172 input!5817)) (tail!10172 (tail!10172 input!5817))))))

(declare-fun b!5175311 () Bool)

(declare-fun res!2199374 () Bool)

(assert (=> b!5175311 (=> (not res!2199374) (not e!3224781))))

(assert (=> b!5175311 (= res!2199374 (= (head!11073 (tail!10172 input!5817)) (head!11073 (tail!10172 input!5817))))))

(assert (= (and d!1670389 (not res!2199371)) b!5175310))

(assert (= (and b!5175310 res!2199373) b!5175311))

(assert (= (and b!5175311 res!2199374) b!5175312))

(assert (= (and d!1670389 (not res!2199372)) b!5175313))

(assert (=> b!5175313 m!6228956))

(assert (=> b!5175313 m!6229498))

(assert (=> b!5175313 m!6228956))

(assert (=> b!5175313 m!6229498))

(assert (=> b!5175312 m!6228956))

(assert (=> b!5175312 m!6229500))

(assert (=> b!5175312 m!6228956))

(assert (=> b!5175312 m!6229500))

(assert (=> b!5175312 m!6229500))

(assert (=> b!5175312 m!6229500))

(declare-fun m!6229612 () Bool)

(assert (=> b!5175312 m!6229612))

(assert (=> b!5175311 m!6228956))

(declare-fun m!6229614 () Bool)

(assert (=> b!5175311 m!6229614))

(assert (=> b!5175311 m!6228956))

(assert (=> b!5175311 m!6229614))

(assert (=> b!5175128 d!1670389))

(assert (=> b!5175128 d!1670349))

(declare-fun d!1670391 () Bool)

(declare-fun res!2199383 () Bool)

(declare-fun e!3224792 () Bool)

(assert (=> d!1670391 (=> res!2199383 e!3224792)))

(assert (=> d!1670391 (= res!2199383 ((_ is Nil!60158) (exprs!4539 setElem!32300)))))

(assert (=> d!1670391 (= (forall!14155 (exprs!4539 setElem!32300) lambda!258455) e!3224792)))

(declare-fun b!5175326 () Bool)

(declare-fun e!3224793 () Bool)

(assert (=> b!5175326 (= e!3224792 e!3224793)))

(declare-fun res!2199384 () Bool)

(assert (=> b!5175326 (=> (not res!2199384) (not e!3224793))))

(declare-fun dynLambda!23878 (Int Regex!14655) Bool)

(assert (=> b!5175326 (= res!2199384 (dynLambda!23878 lambda!258455 (h!66606 (exprs!4539 setElem!32300))))))

(declare-fun b!5175327 () Bool)

(assert (=> b!5175327 (= e!3224793 (forall!14155 (t!373435 (exprs!4539 setElem!32300)) lambda!258455))))

(assert (= (and d!1670391 (not res!2199383)) b!5175326))

(assert (= (and b!5175326 res!2199384) b!5175327))

(declare-fun b_lambda!200931 () Bool)

(assert (=> (not b_lambda!200931) (not b!5175326)))

(declare-fun m!6229644 () Bool)

(assert (=> b!5175326 m!6229644))

(declare-fun m!6229646 () Bool)

(assert (=> b!5175327 m!6229646))

(assert (=> d!1670257 d!1670391))

(assert (=> bm!363489 d!1670227))

(declare-fun b!5175329 () Bool)

(declare-fun e!3224794 () List!60281)

(assert (=> b!5175329 (= e!3224794 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) lt!2131886)))))

(declare-fun e!3224795 () Bool)

(declare-fun b!5175331 () Bool)

(declare-fun lt!2132274 () List!60281)

(assert (=> b!5175331 (= e!3224795 (or (not (= lt!2131886 Nil!60157)) (= lt!2132274 testedP!294)))))

(declare-fun d!1670407 () Bool)

(assert (=> d!1670407 e!3224795))

(declare-fun res!2199386 () Bool)

(assert (=> d!1670407 (=> (not res!2199386) (not e!3224795))))

(assert (=> d!1670407 (= res!2199386 (= (content!10659 lt!2132274) ((_ map or) (content!10659 testedP!294) (content!10659 lt!2131886))))))

(assert (=> d!1670407 (= lt!2132274 e!3224794)))

(declare-fun c!891180 () Bool)

(assert (=> d!1670407 (= c!891180 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670407 (= (++!13171 testedP!294 lt!2131886) lt!2132274)))

(declare-fun b!5175330 () Bool)

(declare-fun res!2199385 () Bool)

(assert (=> b!5175330 (=> (not res!2199385) (not e!3224795))))

(assert (=> b!5175330 (= res!2199385 (= (size!39691 lt!2132274) (+ (size!39691 testedP!294) (size!39691 lt!2131886))))))

(declare-fun b!5175328 () Bool)

(assert (=> b!5175328 (= e!3224794 lt!2131886)))

(assert (= (and d!1670407 c!891180) b!5175328))

(assert (= (and d!1670407 (not c!891180)) b!5175329))

(assert (= (and d!1670407 res!2199386) b!5175330))

(assert (= (and b!5175330 res!2199385) b!5175331))

(declare-fun m!6229652 () Bool)

(assert (=> b!5175329 m!6229652))

(declare-fun m!6229654 () Bool)

(assert (=> d!1670407 m!6229654))

(assert (=> d!1670407 m!6229220))

(declare-fun m!6229656 () Bool)

(assert (=> d!1670407 m!6229656))

(declare-fun m!6229658 () Bool)

(assert (=> b!5175330 m!6229658))

(assert (=> b!5175330 m!6228936))

(declare-fun m!6229660 () Bool)

(assert (=> b!5175330 m!6229660))

(assert (=> d!1670163 d!1670407))

(assert (=> d!1670163 d!1670159))

(assert (=> d!1670163 d!1670171))

(declare-fun b!5175338 () Bool)

(declare-fun e!3224802 () tuple2!63860)

(assert (=> b!5175338 (= e!3224802 (tuple2!63861 lt!2131985 Nil!60157))))

(declare-fun bm!363553 () Bool)

(declare-fun call!363564 () (InoxSet Context!8078))

(declare-fun call!363565 () C!29580)

(assert (=> bm!363553 (= call!363564 (derivationStepZipper!1001 call!363502 call!363565))))

(declare-fun b!5175339 () Bool)

(declare-fun e!3224800 () tuple2!63860)

(declare-fun lt!2132287 () tuple2!63860)

(assert (=> b!5175339 (= e!3224800 lt!2132287)))

(declare-fun b!5175340 () Bool)

(declare-fun e!3224804 () tuple2!63860)

(assert (=> b!5175340 (= e!3224804 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363554 () Bool)

(declare-fun call!363563 () List!60281)

(assert (=> bm!363554 (= call!363563 (tail!10172 call!363501))))

(declare-fun b!5175341 () Bool)

(declare-fun e!3224805 () tuple2!63860)

(declare-fun call!363558 () tuple2!63860)

(assert (=> b!5175341 (= e!3224805 call!363558)))

(declare-fun b!5175342 () Bool)

(assert (=> b!5175342 (= e!3224800 (tuple2!63861 lt!2131985 call!363501))))

(declare-fun bm!363555 () Bool)

(declare-fun call!363561 () Unit!151938)

(assert (=> bm!363555 (= call!363561 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131985 input!5817))))

(declare-fun b!5175343 () Bool)

(declare-fun c!891182 () Bool)

(declare-fun call!363562 () Bool)

(assert (=> b!5175343 (= c!891182 call!363562)))

(declare-fun lt!2132302 () Unit!151938)

(declare-fun lt!2132280 () Unit!151938)

(assert (=> b!5175343 (= lt!2132302 lt!2132280)))

(assert (=> b!5175343 (= input!5817 lt!2131985)))

(assert (=> b!5175343 (= lt!2132280 call!363561)))

(declare-fun lt!2132292 () Unit!151938)

(declare-fun lt!2132289 () Unit!151938)

(assert (=> b!5175343 (= lt!2132292 lt!2132289)))

(declare-fun call!363559 () Bool)

(assert (=> b!5175343 call!363559))

(declare-fun call!363560 () Unit!151938)

(assert (=> b!5175343 (= lt!2132289 call!363560)))

(declare-fun e!3224807 () tuple2!63860)

(assert (=> b!5175343 (= e!3224807 e!3224802)))

(declare-fun b!5175344 () Bool)

(assert (=> b!5175344 (= e!3224805 e!3224800)))

(assert (=> b!5175344 (= lt!2132287 call!363558)))

(declare-fun c!891183 () Bool)

(assert (=> b!5175344 (= c!891183 (isEmpty!32207 (_1!35233 lt!2132287)))))

(declare-fun d!1670413 () Bool)

(declare-fun e!3224806 () Bool)

(assert (=> d!1670413 e!3224806))

(declare-fun res!2199392 () Bool)

(assert (=> d!1670413 (=> (not res!2199392) (not e!3224806))))

(declare-fun lt!2132282 () tuple2!63860)

(assert (=> d!1670413 (= res!2199392 (= (++!13171 (_1!35233 lt!2132282) (_2!35233 lt!2132282)) input!5817))))

(assert (=> d!1670413 (= lt!2132282 e!3224804)))

(declare-fun c!891186 () Bool)

(assert (=> d!1670413 (= c!891186 (lostCauseZipper!1342 call!363502))))

(declare-fun lt!2132278 () Unit!151938)

(declare-fun Unit!151962 () Unit!151938)

(assert (=> d!1670413 (= lt!2132278 Unit!151962)))

(assert (=> d!1670413 (= (getSuffix!3436 input!5817 lt!2131985) call!363501)))

(declare-fun lt!2132291 () Unit!151938)

(declare-fun lt!2132283 () Unit!151938)

(assert (=> d!1670413 (= lt!2132291 lt!2132283)))

(declare-fun lt!2132279 () List!60281)

(assert (=> d!1670413 (= call!363501 lt!2132279)))

(assert (=> d!1670413 (= lt!2132283 (lemmaSamePrefixThenSameSuffix!2709 lt!2131985 call!363501 lt!2131985 lt!2132279 input!5817))))

(assert (=> d!1670413 (= lt!2132279 (getSuffix!3436 input!5817 lt!2131985))))

(declare-fun lt!2132300 () Unit!151938)

(declare-fun lt!2132286 () Unit!151938)

(assert (=> d!1670413 (= lt!2132300 lt!2132286)))

(assert (=> d!1670413 (isPrefix!5788 lt!2131985 (++!13171 lt!2131985 call!363501))))

(assert (=> d!1670413 (= lt!2132286 (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131985 call!363501))))

(assert (=> d!1670413 (= (++!13171 lt!2131985 call!363501) input!5817)))

(assert (=> d!1670413 (= (findLongestMatchInnerZipper!311 call!363502 lt!2131985 (+ 1 lt!2131873 1) call!363501 input!5817 lt!2131877) lt!2132282)))

(declare-fun bm!363556 () Bool)

(assert (=> bm!363556 (= call!363562 (nullableZipper!1193 call!363502))))

(declare-fun bm!363557 () Bool)

(assert (=> bm!363557 (= call!363565 (head!11073 call!363501))))

(declare-fun b!5175345 () Bool)

(declare-fun e!3224803 () Bool)

(assert (=> b!5175345 (= e!3224803 (>= (size!39691 (_1!35233 lt!2132282)) (size!39691 lt!2131985)))))

(declare-fun b!5175346 () Bool)

(assert (=> b!5175346 (= e!3224804 e!3224807)))

(declare-fun c!891185 () Bool)

(assert (=> b!5175346 (= c!891185 (= (+ 1 lt!2131873 1) lt!2131877))))

(declare-fun lt!2132293 () List!60281)

(declare-fun bm!363558 () Bool)

(assert (=> bm!363558 (= call!363558 (findLongestMatchInnerZipper!311 call!363564 lt!2132293 (+ 1 lt!2131873 1 1) call!363563 input!5817 lt!2131877))))

(declare-fun b!5175347 () Bool)

(declare-fun e!3224801 () Unit!151938)

(declare-fun Unit!151963 () Unit!151938)

(assert (=> b!5175347 (= e!3224801 Unit!151963)))

(declare-fun lt!2132299 () Unit!151938)

(assert (=> b!5175347 (= lt!2132299 call!363560)))

(assert (=> b!5175347 call!363559))

(declare-fun lt!2132298 () Unit!151938)

(assert (=> b!5175347 (= lt!2132298 lt!2132299)))

(declare-fun lt!2132288 () Unit!151938)

(assert (=> b!5175347 (= lt!2132288 call!363561)))

(assert (=> b!5175347 (= input!5817 lt!2131985)))

(declare-fun lt!2132285 () Unit!151938)

(assert (=> b!5175347 (= lt!2132285 lt!2132288)))

(assert (=> b!5175347 false))

(declare-fun bm!363559 () Bool)

(assert (=> bm!363559 (= call!363560 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5175348 () Bool)

(declare-fun c!891187 () Bool)

(assert (=> b!5175348 (= c!891187 call!363562)))

(declare-fun lt!2132290 () Unit!151938)

(declare-fun lt!2132281 () Unit!151938)

(assert (=> b!5175348 (= lt!2132290 lt!2132281)))

(declare-fun lt!2132297 () C!29580)

(declare-fun lt!2132284 () List!60281)

(assert (=> b!5175348 (= (++!13171 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157)) lt!2132284) input!5817)))

(assert (=> b!5175348 (= lt!2132281 (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131985 lt!2132297 lt!2132284 input!5817))))

(assert (=> b!5175348 (= lt!2132284 (tail!10172 call!363501))))

(assert (=> b!5175348 (= lt!2132297 (head!11073 call!363501))))

(declare-fun lt!2132296 () Unit!151938)

(declare-fun lt!2132277 () Unit!151938)

(assert (=> b!5175348 (= lt!2132296 lt!2132277)))

(assert (=> b!5175348 (isPrefix!5788 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)) input!5817)))

(assert (=> b!5175348 (= lt!2132277 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131985 input!5817))))

(assert (=> b!5175348 (= lt!2132293 (++!13171 lt!2131985 (Cons!60157 (head!11073 call!363501) Nil!60157)))))

(declare-fun lt!2132295 () Unit!151938)

(assert (=> b!5175348 (= lt!2132295 e!3224801)))

(declare-fun c!891184 () Bool)

(assert (=> b!5175348 (= c!891184 (= (size!39691 lt!2131985) (size!39691 input!5817)))))

(declare-fun lt!2132294 () Unit!151938)

(declare-fun lt!2132301 () Unit!151938)

(assert (=> b!5175348 (= lt!2132294 lt!2132301)))

(assert (=> b!5175348 (<= (size!39691 lt!2131985) (size!39691 input!5817))))

(assert (=> b!5175348 (= lt!2132301 (lemmaIsPrefixThenSmallerEqSize!949 lt!2131985 input!5817))))

(assert (=> b!5175348 (= e!3224807 e!3224805)))

(declare-fun b!5175349 () Bool)

(declare-fun Unit!151964 () Unit!151938)

(assert (=> b!5175349 (= e!3224801 Unit!151964)))

(declare-fun b!5175350 () Bool)

(assert (=> b!5175350 (= e!3224802 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363560 () Bool)

(assert (=> bm!363560 (= call!363559 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5175351 () Bool)

(assert (=> b!5175351 (= e!3224806 e!3224803)))

(declare-fun res!2199391 () Bool)

(assert (=> b!5175351 (=> res!2199391 e!3224803)))

(assert (=> b!5175351 (= res!2199391 (isEmpty!32207 (_1!35233 lt!2132282)))))

(assert (= (and d!1670413 c!891186) b!5175340))

(assert (= (and d!1670413 (not c!891186)) b!5175346))

(assert (= (and b!5175346 c!891185) b!5175343))

(assert (= (and b!5175346 (not c!891185)) b!5175348))

(assert (= (and b!5175343 c!891182) b!5175338))

(assert (= (and b!5175343 (not c!891182)) b!5175350))

(assert (= (and b!5175348 c!891184) b!5175347))

(assert (= (and b!5175348 (not c!891184)) b!5175349))

(assert (= (and b!5175348 c!891187) b!5175344))

(assert (= (and b!5175348 (not c!891187)) b!5175341))

(assert (= (and b!5175344 c!891183) b!5175342))

(assert (= (and b!5175344 (not c!891183)) b!5175339))

(assert (= (or b!5175344 b!5175341) bm!363554))

(assert (= (or b!5175344 b!5175341) bm!363557))

(assert (= (or b!5175344 b!5175341) bm!363553))

(assert (= (or b!5175344 b!5175341) bm!363558))

(assert (= (or b!5175343 b!5175347) bm!363559))

(assert (= (or b!5175343 b!5175348) bm!363556))

(assert (= (or b!5175343 b!5175347) bm!363560))

(assert (= (or b!5175343 b!5175347) bm!363555))

(assert (= (and d!1670413 res!2199392) b!5175351))

(assert (= (and b!5175351 (not res!2199391)) b!5175345))

(declare-fun m!6229670 () Bool)

(assert (=> b!5175344 m!6229670))

(declare-fun m!6229672 () Bool)

(assert (=> b!5175348 m!6229672))

(assert (=> b!5175348 m!6228940))

(declare-fun m!6229674 () Bool)

(assert (=> b!5175348 m!6229674))

(declare-fun m!6229676 () Bool)

(assert (=> b!5175348 m!6229676))

(declare-fun m!6229678 () Bool)

(assert (=> b!5175348 m!6229678))

(declare-fun m!6229680 () Bool)

(assert (=> b!5175348 m!6229680))

(assert (=> b!5175348 m!6229676))

(declare-fun m!6229682 () Bool)

(assert (=> b!5175348 m!6229682))

(declare-fun m!6229684 () Bool)

(assert (=> b!5175348 m!6229684))

(declare-fun m!6229686 () Bool)

(assert (=> b!5175348 m!6229686))

(assert (=> b!5175348 m!6229672))

(declare-fun m!6229688 () Bool)

(assert (=> b!5175348 m!6229688))

(declare-fun m!6229690 () Bool)

(assert (=> b!5175348 m!6229690))

(declare-fun m!6229692 () Bool)

(assert (=> b!5175348 m!6229692))

(assert (=> b!5175348 m!6229686))

(declare-fun m!6229694 () Bool)

(assert (=> b!5175348 m!6229694))

(declare-fun m!6229696 () Bool)

(assert (=> b!5175348 m!6229696))

(assert (=> bm!363559 m!6228930))

(assert (=> bm!363557 m!6229678))

(declare-fun m!6229698 () Bool)

(assert (=> bm!363556 m!6229698))

(declare-fun m!6229700 () Bool)

(assert (=> b!5175345 m!6229700))

(assert (=> b!5175345 m!6229692))

(assert (=> bm!363560 m!6228932))

(declare-fun m!6229702 () Bool)

(assert (=> bm!363553 m!6229702))

(assert (=> bm!363554 m!6229690))

(assert (=> d!1670413 m!6229672))

(declare-fun m!6229704 () Bool)

(assert (=> d!1670413 m!6229704))

(declare-fun m!6229706 () Bool)

(assert (=> d!1670413 m!6229706))

(declare-fun m!6229708 () Bool)

(assert (=> d!1670413 m!6229708))

(declare-fun m!6229710 () Bool)

(assert (=> d!1670413 m!6229710))

(declare-fun m!6229712 () Bool)

(assert (=> d!1670413 m!6229712))

(assert (=> d!1670413 m!6229710))

(declare-fun m!6229714 () Bool)

(assert (=> d!1670413 m!6229714))

(declare-fun m!6229716 () Bool)

(assert (=> bm!363558 m!6229716))

(declare-fun m!6229720 () Bool)

(assert (=> b!5175351 m!6229720))

(declare-fun m!6229724 () Bool)

(assert (=> bm!363555 m!6229724))

(assert (=> bm!363496 d!1670413))

(assert (=> bm!363485 d!1670231))

(assert (=> bm!363497 d!1670227))

(declare-fun d!1670417 () Bool)

(assert (=> d!1670417 (= (isEmpty!32207 (_1!35233 lt!2131952)) ((_ is Nil!60157) (_1!35233 lt!2131952)))))

(assert (=> b!5174960 d!1670417))

(assert (=> bm!363487 d!1670239))

(assert (=> b!5175149 d!1670159))

(assert (=> b!5175149 d!1670171))

(declare-fun d!1670421 () Bool)

(declare-fun e!3224810 () Bool)

(assert (=> d!1670421 e!3224810))

(declare-fun res!2199394 () Bool)

(assert (=> d!1670421 (=> res!2199394 e!3224810)))

(declare-fun lt!2132312 () Bool)

(assert (=> d!1670421 (= res!2199394 (not lt!2132312))))

(declare-fun e!3224811 () Bool)

(assert (=> d!1670421 (= lt!2132312 e!3224811)))

(declare-fun res!2199393 () Bool)

(assert (=> d!1670421 (=> res!2199393 e!3224811)))

(assert (=> d!1670421 (= res!2199393 ((_ is Nil!60157) (tail!10172 lt!2131870)))))

(assert (=> d!1670421 (= (isPrefix!5788 (tail!10172 lt!2131870) (tail!10172 input!5817)) lt!2132312)))

(declare-fun b!5175357 () Bool)

(assert (=> b!5175357 (= e!3224810 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (tail!10172 lt!2131870))))))

(declare-fun b!5175354 () Bool)

(declare-fun e!3224809 () Bool)

(assert (=> b!5175354 (= e!3224811 e!3224809)))

(declare-fun res!2199395 () Bool)

(assert (=> b!5175354 (=> (not res!2199395) (not e!3224809))))

(assert (=> b!5175354 (= res!2199395 (not ((_ is Nil!60157) (tail!10172 input!5817))))))

(declare-fun b!5175356 () Bool)

(assert (=> b!5175356 (= e!3224809 (isPrefix!5788 (tail!10172 (tail!10172 lt!2131870)) (tail!10172 (tail!10172 input!5817))))))

(declare-fun b!5175355 () Bool)

(declare-fun res!2199396 () Bool)

(assert (=> b!5175355 (=> (not res!2199396) (not e!3224809))))

(assert (=> b!5175355 (= res!2199396 (= (head!11073 (tail!10172 lt!2131870)) (head!11073 (tail!10172 input!5817))))))

(assert (= (and d!1670421 (not res!2199393)) b!5175354))

(assert (= (and b!5175354 res!2199395) b!5175355))

(assert (= (and b!5175355 res!2199396) b!5175356))

(assert (= (and d!1670421 (not res!2199394)) b!5175357))

(assert (=> b!5175357 m!6228956))

(assert (=> b!5175357 m!6229498))

(assert (=> b!5175357 m!6229232))

(declare-fun m!6229738 () Bool)

(assert (=> b!5175357 m!6229738))

(assert (=> b!5175356 m!6229232))

(declare-fun m!6229740 () Bool)

(assert (=> b!5175356 m!6229740))

(assert (=> b!5175356 m!6228956))

(assert (=> b!5175356 m!6229500))

(assert (=> b!5175356 m!6229740))

(assert (=> b!5175356 m!6229500))

(declare-fun m!6229742 () Bool)

(assert (=> b!5175356 m!6229742))

(assert (=> b!5175355 m!6229232))

(declare-fun m!6229744 () Bool)

(assert (=> b!5175355 m!6229744))

(assert (=> b!5175355 m!6228956))

(assert (=> b!5175355 m!6229614))

(assert (=> b!5175144 d!1670421))

(declare-fun d!1670425 () Bool)

(assert (=> d!1670425 (= (tail!10172 lt!2131870) (t!373434 lt!2131870))))

(assert (=> b!5175144 d!1670425))

(assert (=> b!5175144 d!1670349))

(declare-fun bs!1204034 () Bool)

(declare-fun d!1670427 () Bool)

(assert (= bs!1204034 (and d!1670427 d!1670237)))

(declare-fun lambda!258480 () Int)

(assert (=> bs!1204034 (= lambda!258480 lambda!258451)))

(assert (=> d!1670427 (= (nullableZipper!1193 lt!2131878) (exists!1936 lt!2131878 lambda!258480))))

(declare-fun bs!1204036 () Bool)

(assert (= bs!1204036 d!1670427))

(declare-fun m!6229760 () Bool)

(assert (=> bs!1204036 m!6229760))

(assert (=> bm!363494 d!1670427))

(declare-fun d!1670433 () Bool)

(declare-fun c!891191 () Bool)

(assert (=> d!1670433 (= c!891191 ((_ is Cons!60157) (t!373434 testedP!294)))))

(declare-fun e!3224816 () (InoxSet Context!8078))

(assert (=> d!1670433 (= (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (t!373434 testedP!294)) e!3224816)))

(declare-fun b!5175366 () Bool)

(assert (=> b!5175366 (= e!3224816 (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (h!66605 (t!373434 testedP!294))) (t!373434 (t!373434 testedP!294))))))

(declare-fun b!5175367 () Bool)

(assert (=> b!5175367 (= e!3224816 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)))))

(assert (= (and d!1670433 c!891191) b!5175366))

(assert (= (and d!1670433 (not c!891191)) b!5175367))

(assert (=> b!5175366 m!6229244))

(declare-fun m!6229762 () Bool)

(assert (=> b!5175366 m!6229762))

(assert (=> b!5175366 m!6229762))

(declare-fun m!6229766 () Bool)

(assert (=> b!5175366 m!6229766))

(assert (=> b!5175154 d!1670433))

(declare-fun bs!1204037 () Bool)

(declare-fun d!1670435 () Bool)

(assert (= bs!1204037 (and d!1670435 d!1670179)))

(declare-fun lambda!258481 () Int)

(assert (=> bs!1204037 (= (= (h!66605 testedP!294) lt!2131872) (= lambda!258481 lambda!258448))))

(declare-fun bs!1204038 () Bool)

(assert (= bs!1204038 (and d!1670435 d!1670367)))

(assert (=> bs!1204038 (= (= (h!66605 testedP!294) call!363495) (= lambda!258481 lambda!258471))))

(assert (=> d!1670435 true))

(assert (=> d!1670435 (= (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (flatMap!458 baseZ!62 lambda!258481))))

(declare-fun bs!1204039 () Bool)

(assert (= bs!1204039 d!1670435))

(declare-fun m!6229776 () Bool)

(assert (=> bs!1204039 m!6229776))

(assert (=> b!5175154 d!1670435))

(declare-fun d!1670441 () Bool)

(declare-fun lt!2132317 () Int)

(assert (=> d!1670441 (>= lt!2132317 0)))

(declare-fun e!3224819 () Int)

(assert (=> d!1670441 (= lt!2132317 e!3224819)))

(declare-fun c!891193 () Bool)

(assert (=> d!1670441 (= c!891193 ((_ is Nil!60157) (_1!35233 lt!2131974)))))

(assert (=> d!1670441 (= (size!39691 (_1!35233 lt!2131974)) lt!2132317)))

(declare-fun b!5175372 () Bool)

(assert (=> b!5175372 (= e!3224819 0)))

(declare-fun b!5175373 () Bool)

(assert (=> b!5175373 (= e!3224819 (+ 1 (size!39691 (t!373434 (_1!35233 lt!2131974)))))))

(assert (= (and d!1670441 c!891193) b!5175372))

(assert (= (and d!1670441 (not c!891193)) b!5175373))

(declare-fun m!6229784 () Bool)

(assert (=> b!5175373 m!6229784))

(assert (=> b!5174977 d!1670441))

(assert (=> b!5174977 d!1670249))

(declare-fun b!5175375 () Bool)

(declare-fun e!3224820 () List!60281)

(assert (=> b!5175375 (= e!3224820 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) (Cons!60157 lt!2131872 Nil!60157))))))

(declare-fun e!3224821 () Bool)

(declare-fun b!5175377 () Bool)

(declare-fun lt!2132318 () List!60281)

(assert (=> b!5175377 (= e!3224821 (or (not (= (Cons!60157 lt!2131872 Nil!60157) Nil!60157)) (= lt!2132318 (t!373434 testedP!294))))))

(declare-fun d!1670443 () Bool)

(assert (=> d!1670443 e!3224821))

(declare-fun res!2199404 () Bool)

(assert (=> d!1670443 (=> (not res!2199404) (not e!3224821))))

(assert (=> d!1670443 (= res!2199404 (= (content!10659 lt!2132318) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (=> d!1670443 (= lt!2132318 e!3224820)))

(declare-fun c!891194 () Bool)

(assert (=> d!1670443 (= c!891194 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1670443 (= (++!13171 (t!373434 testedP!294) (Cons!60157 lt!2131872 Nil!60157)) lt!2132318)))

(declare-fun b!5175376 () Bool)

(declare-fun res!2199403 () Bool)

(assert (=> b!5175376 (=> (not res!2199403) (not e!3224821))))

(assert (=> b!5175376 (= res!2199403 (= (size!39691 lt!2132318) (+ (size!39691 (t!373434 testedP!294)) (size!39691 (Cons!60157 lt!2131872 Nil!60157)))))))

(declare-fun b!5175374 () Bool)

(assert (=> b!5175374 (= e!3224820 (Cons!60157 lt!2131872 Nil!60157))))

(assert (= (and d!1670443 c!891194) b!5175374))

(assert (= (and d!1670443 (not c!891194)) b!5175375))

(assert (= (and d!1670443 res!2199404) b!5175376))

(assert (= (and b!5175376 res!2199403) b!5175377))

(declare-fun m!6229794 () Bool)

(assert (=> b!5175375 m!6229794))

(declare-fun m!6229796 () Bool)

(assert (=> d!1670443 m!6229796))

(assert (=> d!1670443 m!6229606))

(assert (=> d!1670443 m!6229222))

(declare-fun m!6229798 () Bool)

(assert (=> b!5175376 m!6229798))

(assert (=> b!5175376 m!6228998))

(assert (=> b!5175376 m!6229226))

(assert (=> b!5175139 d!1670443))

(declare-fun b!5175383 () Bool)

(declare-fun e!3224825 () List!60281)

(assert (=> b!5175383 (= e!3224825 (Cons!60157 (h!66605 (_1!35233 lt!2131974)) (++!13171 (t!373434 (_1!35233 lt!2131974)) (_2!35233 lt!2131974))))))

(declare-fun b!5175385 () Bool)

(declare-fun e!3224826 () Bool)

(declare-fun lt!2132320 () List!60281)

(assert (=> b!5175385 (= e!3224826 (or (not (= (_2!35233 lt!2131974) Nil!60157)) (= lt!2132320 (_1!35233 lt!2131974))))))

(declare-fun d!1670447 () Bool)

(assert (=> d!1670447 e!3224826))

(declare-fun res!2199410 () Bool)

(assert (=> d!1670447 (=> (not res!2199410) (not e!3224826))))

(assert (=> d!1670447 (= res!2199410 (= (content!10659 lt!2132320) ((_ map or) (content!10659 (_1!35233 lt!2131974)) (content!10659 (_2!35233 lt!2131974)))))))

(assert (=> d!1670447 (= lt!2132320 e!3224825)))

(declare-fun c!891195 () Bool)

(assert (=> d!1670447 (= c!891195 ((_ is Nil!60157) (_1!35233 lt!2131974)))))

(assert (=> d!1670447 (= (++!13171 (_1!35233 lt!2131974) (_2!35233 lt!2131974)) lt!2132320)))

(declare-fun b!5175384 () Bool)

(declare-fun res!2199409 () Bool)

(assert (=> b!5175384 (=> (not res!2199409) (not e!3224826))))

(assert (=> b!5175384 (= res!2199409 (= (size!39691 lt!2132320) (+ (size!39691 (_1!35233 lt!2131974)) (size!39691 (_2!35233 lt!2131974)))))))

(declare-fun b!5175382 () Bool)

(assert (=> b!5175382 (= e!3224825 (_2!35233 lt!2131974))))

(assert (= (and d!1670447 c!891195) b!5175382))

(assert (= (and d!1670447 (not c!891195)) b!5175383))

(assert (= (and d!1670447 res!2199410) b!5175384))

(assert (= (and b!5175384 res!2199409) b!5175385))

(declare-fun m!6229808 () Bool)

(assert (=> b!5175383 m!6229808))

(declare-fun m!6229810 () Bool)

(assert (=> d!1670447 m!6229810))

(declare-fun m!6229812 () Bool)

(assert (=> d!1670447 m!6229812))

(declare-fun m!6229814 () Bool)

(assert (=> d!1670447 m!6229814))

(declare-fun m!6229816 () Bool)

(assert (=> b!5175384 m!6229816))

(assert (=> b!5175384 m!6229028))

(declare-fun m!6229818 () Bool)

(assert (=> b!5175384 m!6229818))

(assert (=> d!1670175 d!1670447))

(declare-fun d!1670451 () Bool)

(declare-fun e!3224830 () Bool)

(assert (=> d!1670451 e!3224830))

(declare-fun res!2199414 () Bool)

(assert (=> d!1670451 (=> res!2199414 e!3224830)))

(declare-fun lt!2132322 () Bool)

(assert (=> d!1670451 (= res!2199414 (not lt!2132322))))

(declare-fun e!3224831 () Bool)

(assert (=> d!1670451 (= lt!2132322 e!3224831)))

(declare-fun res!2199413 () Bool)

(assert (=> d!1670451 (=> res!2199413 e!3224831)))

(assert (=> d!1670451 (= res!2199413 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670451 (= (isPrefix!5788 lt!2131870 (++!13171 lt!2131870 (tail!10172 lt!2131871))) lt!2132322)))

(declare-fun b!5175393 () Bool)

(assert (=> b!5175393 (= e!3224830 (>= (size!39691 (++!13171 lt!2131870 (tail!10172 lt!2131871))) (size!39691 lt!2131870)))))

(declare-fun b!5175390 () Bool)

(declare-fun e!3224829 () Bool)

(assert (=> b!5175390 (= e!3224831 e!3224829)))

(declare-fun res!2199415 () Bool)

(assert (=> b!5175390 (=> (not res!2199415) (not e!3224829))))

(assert (=> b!5175390 (= res!2199415 (not ((_ is Nil!60157) (++!13171 lt!2131870 (tail!10172 lt!2131871)))))))

(declare-fun b!5175392 () Bool)

(assert (=> b!5175392 (= e!3224829 (isPrefix!5788 (tail!10172 lt!2131870) (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871)))))))

(declare-fun b!5175391 () Bool)

(declare-fun res!2199416 () Bool)

(assert (=> b!5175391 (=> (not res!2199416) (not e!3224829))))

(assert (=> b!5175391 (= res!2199416 (= (head!11073 lt!2131870) (head!11073 (++!13171 lt!2131870 (tail!10172 lt!2131871)))))))

(assert (= (and d!1670451 (not res!2199413)) b!5175390))

(assert (= (and b!5175390 res!2199415) b!5175391))

(assert (= (and b!5175391 res!2199416) b!5175392))

(assert (= (and d!1670451 (not res!2199414)) b!5175393))

(assert (=> b!5175393 m!6229038))

(declare-fun m!6229830 () Bool)

(assert (=> b!5175393 m!6229830))

(assert (=> b!5175393 m!6228946))

(assert (=> b!5175392 m!6229232))

(assert (=> b!5175392 m!6229038))

(declare-fun m!6229832 () Bool)

(assert (=> b!5175392 m!6229832))

(assert (=> b!5175392 m!6229232))

(assert (=> b!5175392 m!6229832))

(declare-fun m!6229834 () Bool)

(assert (=> b!5175392 m!6229834))

(assert (=> b!5175391 m!6229236))

(assert (=> b!5175391 m!6229038))

(declare-fun m!6229838 () Bool)

(assert (=> b!5175391 m!6229838))

(assert (=> d!1670175 d!1670451))

(declare-fun d!1670457 () Bool)

(assert (=> d!1670457 (isPrefix!5788 lt!2131870 (++!13171 lt!2131870 (tail!10172 lt!2131871)))))

(declare-fun lt!2132330 () Unit!151938)

(declare-fun choose!38419 (List!60281 List!60281) Unit!151938)

(assert (=> d!1670457 (= lt!2132330 (choose!38419 lt!2131870 (tail!10172 lt!2131871)))))

(assert (=> d!1670457 (= (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131870 (tail!10172 lt!2131871)) lt!2132330)))

(declare-fun bs!1204043 () Bool)

(assert (= bs!1204043 d!1670457))

(assert (=> bs!1204043 m!6228922))

(assert (=> bs!1204043 m!6229038))

(assert (=> bs!1204043 m!6229038))

(assert (=> bs!1204043 m!6229042))

(assert (=> bs!1204043 m!6228922))

(declare-fun m!6229866 () Bool)

(assert (=> bs!1204043 m!6229866))

(assert (=> d!1670175 d!1670457))

(assert (=> d!1670175 d!1670327))

(declare-fun bs!1204061 () Bool)

(declare-fun d!1670469 () Bool)

(assert (= bs!1204061 (and d!1670469 d!1670237)))

(declare-fun lambda!258498 () Int)

(assert (=> bs!1204061 (not (= lambda!258498 lambda!258451))))

(declare-fun bs!1204062 () Bool)

(assert (= bs!1204062 (and d!1670469 d!1670427)))

(assert (=> bs!1204062 (not (= lambda!258498 lambda!258480))))

(declare-fun bs!1204063 () Bool)

(declare-fun b!5175436 () Bool)

(assert (= bs!1204063 (and b!5175436 d!1670237)))

(declare-fun lambda!258499 () Int)

(assert (=> bs!1204063 (not (= lambda!258499 lambda!258451))))

(declare-fun bs!1204064 () Bool)

(assert (= bs!1204064 (and b!5175436 d!1670427)))

(assert (=> bs!1204064 (not (= lambda!258499 lambda!258480))))

(declare-fun bs!1204065 () Bool)

(assert (= bs!1204065 (and b!5175436 d!1670469)))

(assert (=> bs!1204065 (not (= lambda!258499 lambda!258498))))

(declare-fun bs!1204066 () Bool)

(declare-fun b!5175437 () Bool)

(assert (= bs!1204066 (and b!5175437 d!1670237)))

(declare-fun lambda!258500 () Int)

(assert (=> bs!1204066 (not (= lambda!258500 lambda!258451))))

(declare-fun bs!1204067 () Bool)

(assert (= bs!1204067 (and b!5175437 d!1670427)))

(assert (=> bs!1204067 (not (= lambda!258500 lambda!258480))))

(declare-fun bs!1204068 () Bool)

(assert (= bs!1204068 (and b!5175437 d!1670469)))

(assert (=> bs!1204068 (not (= lambda!258500 lambda!258498))))

(declare-fun bs!1204069 () Bool)

(assert (= bs!1204069 (and b!5175437 b!5175436)))

(assert (=> bs!1204069 (= lambda!258500 lambda!258499)))

(declare-fun e!3224859 () Unit!151938)

(declare-fun Unit!151967 () Unit!151938)

(assert (=> b!5175437 (= e!3224859 Unit!151967)))

(declare-fun lt!2132384 () List!60283)

(declare-fun call!363581 () List!60283)

(assert (=> b!5175437 (= lt!2132384 call!363581)))

(declare-fun lt!2132379 () Unit!151938)

(declare-fun lemmaForallThenNotExists!444 (List!60283 Int) Unit!151938)

(assert (=> b!5175437 (= lt!2132379 (lemmaForallThenNotExists!444 lt!2132384 lambda!258498))))

(declare-fun call!363580 () Bool)

(assert (=> b!5175437 (not call!363580)))

(declare-fun lt!2132386 () Unit!151938)

(assert (=> b!5175437 (= lt!2132386 lt!2132379)))

(declare-fun lt!2132383 () List!60283)

(declare-fun c!891221 () Bool)

(declare-fun bm!363576 () Bool)

(assert (=> bm!363576 (= call!363580 (exists!1937 (ite c!891221 lt!2132383 lt!2132384) (ite c!891221 lambda!258499 lambda!258500)))))

(declare-fun Unit!151968 () Unit!151938)

(assert (=> b!5175436 (= e!3224859 Unit!151968)))

(assert (=> b!5175436 (= lt!2132383 call!363581)))

(declare-fun lt!2132385 () Unit!151938)

(declare-fun lemmaNotForallThenExists!477 (List!60283 Int) Unit!151938)

(assert (=> b!5175436 (= lt!2132385 (lemmaNotForallThenExists!477 lt!2132383 lambda!258498))))

(assert (=> b!5175436 call!363580))

(declare-fun lt!2132382 () Unit!151938)

(assert (=> b!5175436 (= lt!2132382 lt!2132385)))

(declare-fun bm!363575 () Bool)

(assert (=> bm!363575 (= call!363581 (toList!8456 lt!2131878))))

(declare-fun lt!2132381 () Bool)

(declare-datatypes ((Option!14842 0))(
  ( (None!14841) (Some!14841 (v!50870 List!60281)) )
))
(declare-fun isEmpty!32209 (Option!14842) Bool)

(declare-fun getLanguageWitness!1013 ((InoxSet Context!8078)) Option!14842)

(assert (=> d!1670469 (= lt!2132381 (isEmpty!32209 (getLanguageWitness!1013 lt!2131878)))))

(declare-fun forall!14157 ((InoxSet Context!8078) Int) Bool)

(assert (=> d!1670469 (= lt!2132381 (forall!14157 lt!2131878 lambda!258498))))

(declare-fun lt!2132380 () Unit!151938)

(assert (=> d!1670469 (= lt!2132380 e!3224859)))

(assert (=> d!1670469 (= c!891221 (not (forall!14157 lt!2131878 lambda!258498)))))

(assert (=> d!1670469 (= (lostCauseZipper!1342 lt!2131878) lt!2132381)))

(assert (= (and d!1670469 c!891221) b!5175436))

(assert (= (and d!1670469 (not c!891221)) b!5175437))

(assert (= (or b!5175436 b!5175437) bm!363575))

(assert (= (or b!5175436 b!5175437) bm!363576))

(declare-fun m!6229972 () Bool)

(assert (=> bm!363575 m!6229972))

(declare-fun m!6229974 () Bool)

(assert (=> b!5175437 m!6229974))

(declare-fun m!6229976 () Bool)

(assert (=> bm!363576 m!6229976))

(declare-fun m!6229978 () Bool)

(assert (=> b!5175436 m!6229978))

(declare-fun m!6229980 () Bool)

(assert (=> d!1670469 m!6229980))

(assert (=> d!1670469 m!6229980))

(declare-fun m!6229982 () Bool)

(assert (=> d!1670469 m!6229982))

(declare-fun m!6229984 () Bool)

(assert (=> d!1670469 m!6229984))

(assert (=> d!1670469 m!6229984))

(assert (=> d!1670175 d!1670469))

(declare-fun d!1670513 () Bool)

(assert (=> d!1670513 (= (tail!10172 lt!2131871) lt!2131971)))

(declare-fun lt!2132390 () Unit!151938)

(declare-fun choose!38420 (List!60281 List!60281 List!60281 List!60281 List!60281) Unit!151938)

(assert (=> d!1670513 (= lt!2132390 (choose!38420 lt!2131870 (tail!10172 lt!2131871) lt!2131870 lt!2131971 input!5817))))

(assert (=> d!1670513 (isPrefix!5788 lt!2131870 input!5817)))

(assert (=> d!1670513 (= (lemmaSamePrefixThenSameSuffix!2709 lt!2131870 (tail!10172 lt!2131871) lt!2131870 lt!2131971 input!5817) lt!2132390)))

(declare-fun bs!1204071 () Bool)

(assert (= bs!1204071 d!1670513))

(assert (=> bs!1204071 m!6228922))

(declare-fun m!6229996 () Bool)

(assert (=> bs!1204071 m!6229996))

(assert (=> bs!1204071 m!6228908))

(assert (=> d!1670175 d!1670513))

(declare-fun b!5175453 () Bool)

(declare-fun e!3224868 () List!60281)

(assert (=> b!5175453 (= e!3224868 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) (tail!10172 lt!2131871))))))

(declare-fun b!5175455 () Bool)

(declare-fun lt!2132391 () List!60281)

(declare-fun e!3224869 () Bool)

(assert (=> b!5175455 (= e!3224869 (or (not (= (tail!10172 lt!2131871) Nil!60157)) (= lt!2132391 lt!2131870)))))

(declare-fun d!1670521 () Bool)

(assert (=> d!1670521 e!3224869))

(declare-fun res!2199432 () Bool)

(assert (=> d!1670521 (=> (not res!2199432) (not e!3224869))))

(assert (=> d!1670521 (= res!2199432 (= (content!10659 lt!2132391) ((_ map or) (content!10659 lt!2131870) (content!10659 (tail!10172 lt!2131871)))))))

(assert (=> d!1670521 (= lt!2132391 e!3224868)))

(declare-fun c!891228 () Bool)

(assert (=> d!1670521 (= c!891228 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670521 (= (++!13171 lt!2131870 (tail!10172 lt!2131871)) lt!2132391)))

(declare-fun b!5175454 () Bool)

(declare-fun res!2199431 () Bool)

(assert (=> b!5175454 (=> (not res!2199431) (not e!3224869))))

(assert (=> b!5175454 (= res!2199431 (= (size!39691 lt!2132391) (+ (size!39691 lt!2131870) (size!39691 (tail!10172 lt!2131871)))))))

(declare-fun b!5175452 () Bool)

(assert (=> b!5175452 (= e!3224868 (tail!10172 lt!2131871))))

(assert (= (and d!1670521 c!891228) b!5175452))

(assert (= (and d!1670521 (not c!891228)) b!5175453))

(assert (= (and d!1670521 res!2199432) b!5175454))

(assert (= (and b!5175454 res!2199431) b!5175455))

(assert (=> b!5175453 m!6228922))

(declare-fun m!6230000 () Bool)

(assert (=> b!5175453 m!6230000))

(declare-fun m!6230002 () Bool)

(assert (=> d!1670521 m!6230002))

(assert (=> d!1670521 m!6229430))

(assert (=> d!1670521 m!6228922))

(declare-fun m!6230004 () Bool)

(assert (=> d!1670521 m!6230004))

(declare-fun m!6230006 () Bool)

(assert (=> b!5175454 m!6230006))

(assert (=> b!5175454 m!6228946))

(assert (=> b!5175454 m!6228922))

(declare-fun m!6230008 () Bool)

(assert (=> b!5175454 m!6230008))

(assert (=> d!1670175 d!1670521))

(declare-fun d!1670525 () Bool)

(declare-fun res!2199433 () Bool)

(declare-fun e!3224871 () Bool)

(assert (=> d!1670525 (=> res!2199433 e!3224871)))

(assert (=> d!1670525 (= res!2199433 ((_ is Nil!60158) (exprs!4539 setElem!32299)))))

(assert (=> d!1670525 (= (forall!14155 (exprs!4539 setElem!32299) lambda!258454) e!3224871)))

(declare-fun b!5175458 () Bool)

(declare-fun e!3224872 () Bool)

(assert (=> b!5175458 (= e!3224871 e!3224872)))

(declare-fun res!2199434 () Bool)

(assert (=> b!5175458 (=> (not res!2199434) (not e!3224872))))

(assert (=> b!5175458 (= res!2199434 (dynLambda!23878 lambda!258454 (h!66606 (exprs!4539 setElem!32299))))))

(declare-fun b!5175459 () Bool)

(assert (=> b!5175459 (= e!3224872 (forall!14155 (t!373435 (exprs!4539 setElem!32299)) lambda!258454))))

(assert (= (and d!1670525 (not res!2199433)) b!5175458))

(assert (= (and b!5175458 res!2199434) b!5175459))

(declare-fun b_lambda!200935 () Bool)

(assert (=> (not b_lambda!200935) (not b!5175458)))

(declare-fun m!6230010 () Bool)

(assert (=> b!5175458 m!6230010))

(declare-fun m!6230012 () Bool)

(assert (=> b!5175459 m!6230012))

(assert (=> d!1670255 d!1670525))

(declare-fun d!1670527 () Bool)

(declare-fun lt!2132393 () Int)

(assert (=> d!1670527 (>= lt!2132393 0)))

(declare-fun e!3224877 () Int)

(assert (=> d!1670527 (= lt!2132393 e!3224877)))

(declare-fun c!891230 () Bool)

(assert (=> d!1670527 (= c!891230 ((_ is Nil!60157) (t!373434 input!5817)))))

(assert (=> d!1670527 (= (size!39691 (t!373434 input!5817)) lt!2132393)))

(declare-fun b!5175468 () Bool)

(assert (=> b!5175468 (= e!3224877 0)))

(declare-fun b!5175469 () Bool)

(assert (=> b!5175469 (= e!3224877 (+ 1 (size!39691 (t!373434 (t!373434 input!5817)))))))

(assert (= (and d!1670527 c!891230) b!5175468))

(assert (= (and d!1670527 (not c!891230)) b!5175469))

(declare-fun m!6230014 () Bool)

(assert (=> b!5175469 m!6230014))

(assert (=> b!5174919 d!1670527))

(declare-fun d!1670529 () Bool)

(assert (=> d!1670529 (= (isEmpty!32207 (_1!35233 lt!2131947)) ((_ is Nil!60157) (_1!35233 lt!2131947)))))

(assert (=> b!5174967 d!1670529))

(assert (=> d!1670235 d!1670163))

(declare-fun d!1670531 () Bool)

(assert (=> d!1670531 (= (head!11073 (getSuffix!3436 input!5817 testedP!294)) (h!66605 (getSuffix!3436 input!5817 testedP!294)))))

(assert (=> d!1670235 d!1670531))

(assert (=> d!1670235 d!1670243))

(declare-fun d!1670533 () Bool)

(declare-fun e!3224879 () Bool)

(assert (=> d!1670533 e!3224879))

(declare-fun res!2199436 () Bool)

(assert (=> d!1670533 (=> res!2199436 e!3224879)))

(declare-fun lt!2132394 () Bool)

(assert (=> d!1670533 (= res!2199436 (not lt!2132394))))

(declare-fun e!3224880 () Bool)

(assert (=> d!1670533 (= lt!2132394 e!3224880)))

(declare-fun res!2199435 () Bool)

(assert (=> d!1670533 (=> res!2199435 e!3224880)))

(assert (=> d!1670533 (= res!2199435 ((_ is Nil!60157) (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(assert (=> d!1670533 (= (isPrefix!5788 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) input!5817) lt!2132394)))

(declare-fun b!5175477 () Bool)

(assert (=> b!5175477 (= e!3224879 (>= (size!39691 input!5817) (size!39691 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(declare-fun b!5175474 () Bool)

(declare-fun e!3224878 () Bool)

(assert (=> b!5175474 (= e!3224880 e!3224878)))

(declare-fun res!2199437 () Bool)

(assert (=> b!5175474 (=> (not res!2199437) (not e!3224878))))

(assert (=> b!5175474 (= res!2199437 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175476 () Bool)

(assert (=> b!5175476 (= e!3224878 (isPrefix!5788 (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) (tail!10172 input!5817)))))

(declare-fun b!5175475 () Bool)

(declare-fun res!2199438 () Bool)

(assert (=> b!5175475 (=> (not res!2199438) (not e!3224878))))

(assert (=> b!5175475 (= res!2199438 (= (head!11073 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) (head!11073 input!5817)))))

(assert (= (and d!1670533 (not res!2199435)) b!5175474))

(assert (= (and b!5175474 res!2199437) b!5175475))

(assert (= (and b!5175475 res!2199438) b!5175476))

(assert (= (and d!1670533 (not res!2199436)) b!5175477))

(assert (=> b!5175477 m!6228940))

(assert (=> b!5175477 m!6228972))

(declare-fun m!6230016 () Bool)

(assert (=> b!5175477 m!6230016))

(assert (=> b!5175476 m!6228972))

(declare-fun m!6230018 () Bool)

(assert (=> b!5175476 m!6230018))

(assert (=> b!5175476 m!6228956))

(assert (=> b!5175476 m!6230018))

(assert (=> b!5175476 m!6228956))

(declare-fun m!6230020 () Bool)

(assert (=> b!5175476 m!6230020))

(assert (=> b!5175475 m!6228972))

(declare-fun m!6230022 () Bool)

(assert (=> b!5175475 m!6230022))

(assert (=> b!5175475 m!6229212))

(assert (=> d!1670235 d!1670533))

(declare-fun d!1670535 () Bool)

(assert (=> d!1670535 (isPrefix!5788 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) input!5817)))

(assert (=> d!1670535 true))

(declare-fun _$65!1826 () Unit!151938)

(assert (=> d!1670535 (= (choose!38410 testedP!294 input!5817) _$65!1826)))

(declare-fun bs!1204074 () Bool)

(assert (= bs!1204074 d!1670535))

(assert (=> bs!1204074 m!6228938))

(assert (=> bs!1204074 m!6228938))

(assert (=> bs!1204074 m!6228974))

(assert (=> bs!1204074 m!6228972))

(assert (=> bs!1204074 m!6228972))

(assert (=> bs!1204074 m!6228976))

(assert (=> d!1670235 d!1670535))

(declare-fun b!5175493 () Bool)

(declare-fun e!3224889 () List!60281)

(assert (=> b!5175493 (= e!3224889 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(declare-fun e!3224890 () Bool)

(declare-fun b!5175495 () Bool)

(declare-fun lt!2132395 () List!60281)

(assert (=> b!5175495 (= e!3224890 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157) Nil!60157)) (= lt!2132395 testedP!294)))))

(declare-fun d!1670541 () Bool)

(assert (=> d!1670541 e!3224890))

(declare-fun res!2199440 () Bool)

(assert (=> d!1670541 (=> (not res!2199440) (not e!3224890))))

(assert (=> d!1670541 (= res!2199440 (= (content!10659 lt!2132395) ((_ map or) (content!10659 testedP!294) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(assert (=> d!1670541 (= lt!2132395 e!3224889)))

(declare-fun c!891231 () Bool)

(assert (=> d!1670541 (= c!891231 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670541 (= (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) lt!2132395)))

(declare-fun b!5175494 () Bool)

(declare-fun res!2199439 () Bool)

(assert (=> b!5175494 (=> (not res!2199439) (not e!3224890))))

(assert (=> b!5175494 (= res!2199439 (= (size!39691 lt!2132395) (+ (size!39691 testedP!294) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(declare-fun b!5175492 () Bool)

(assert (=> b!5175492 (= e!3224889 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))

(assert (= (and d!1670541 c!891231) b!5175492))

(assert (= (and d!1670541 (not c!891231)) b!5175493))

(assert (= (and d!1670541 res!2199440) b!5175494))

(assert (= (and b!5175494 res!2199439) b!5175495))

(declare-fun m!6230032 () Bool)

(assert (=> b!5175493 m!6230032))

(declare-fun m!6230034 () Bool)

(assert (=> d!1670541 m!6230034))

(assert (=> d!1670541 m!6229220))

(declare-fun m!6230036 () Bool)

(assert (=> d!1670541 m!6230036))

(declare-fun m!6230038 () Bool)

(assert (=> b!5175494 m!6230038))

(assert (=> b!5175494 m!6228936))

(declare-fun m!6230040 () Bool)

(assert (=> b!5175494 m!6230040))

(assert (=> d!1670235 d!1670541))

(declare-fun d!1670543 () Bool)

(assert (=> d!1670543 (= (head!11073 lt!2131870) (h!66605 lt!2131870))))

(assert (=> b!5175143 d!1670543))

(assert (=> b!5175143 d!1670365))

(declare-fun d!1670545 () Bool)

(assert (=> d!1670545 (= input!5817 lt!2131870)))

(declare-fun lt!2132396 () Unit!151938)

(assert (=> d!1670545 (= lt!2132396 (choose!38409 input!5817 lt!2131870 input!5817))))

(assert (=> d!1670545 (isPrefix!5788 input!5817 input!5817)))

(assert (=> d!1670545 (= (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131870 input!5817) lt!2132396)))

(declare-fun bs!1204075 () Bool)

(assert (= bs!1204075 d!1670545))

(declare-fun m!6230042 () Bool)

(assert (=> bs!1204075 m!6230042))

(assert (=> bs!1204075 m!6228932))

(assert (=> bm!363493 d!1670545))

(declare-fun d!1670547 () Bool)

(declare-fun e!3224892 () Bool)

(assert (=> d!1670547 e!3224892))

(declare-fun res!2199442 () Bool)

(assert (=> d!1670547 (=> res!2199442 e!3224892)))

(declare-fun lt!2132397 () Bool)

(assert (=> d!1670547 (= res!2199442 (not lt!2132397))))

(declare-fun e!3224893 () Bool)

(assert (=> d!1670547 (= lt!2132397 e!3224893)))

(declare-fun res!2199441 () Bool)

(assert (=> d!1670547 (=> res!2199441 e!3224893)))

(assert (=> d!1670547 (= res!2199441 ((_ is Nil!60157) (tail!10172 testedP!294)))))

(assert (=> d!1670547 (= (isPrefix!5788 (tail!10172 testedP!294) (tail!10172 input!5817)) lt!2132397)))

(declare-fun b!5175499 () Bool)

(assert (=> b!5175499 (= e!3224892 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (tail!10172 testedP!294))))))

(declare-fun b!5175496 () Bool)

(declare-fun e!3224891 () Bool)

(assert (=> b!5175496 (= e!3224893 e!3224891)))

(declare-fun res!2199443 () Bool)

(assert (=> b!5175496 (=> (not res!2199443) (not e!3224891))))

(assert (=> b!5175496 (= res!2199443 (not ((_ is Nil!60157) (tail!10172 input!5817))))))

(declare-fun b!5175498 () Bool)

(assert (=> b!5175498 (= e!3224891 (isPrefix!5788 (tail!10172 (tail!10172 testedP!294)) (tail!10172 (tail!10172 input!5817))))))

(declare-fun b!5175497 () Bool)

(declare-fun res!2199444 () Bool)

(assert (=> b!5175497 (=> (not res!2199444) (not e!3224891))))

(assert (=> b!5175497 (= res!2199444 (= (head!11073 (tail!10172 testedP!294)) (head!11073 (tail!10172 input!5817))))))

(assert (= (and d!1670547 (not res!2199441)) b!5175496))

(assert (= (and b!5175496 res!2199443) b!5175497))

(assert (= (and b!5175497 res!2199444) b!5175498))

(assert (= (and d!1670547 (not res!2199442)) b!5175499))

(assert (=> b!5175499 m!6228956))

(assert (=> b!5175499 m!6229498))

(assert (=> b!5175499 m!6229238))

(declare-fun m!6230044 () Bool)

(assert (=> b!5175499 m!6230044))

(assert (=> b!5175498 m!6229238))

(declare-fun m!6230046 () Bool)

(assert (=> b!5175498 m!6230046))

(assert (=> b!5175498 m!6228956))

(assert (=> b!5175498 m!6229500))

(assert (=> b!5175498 m!6230046))

(assert (=> b!5175498 m!6229500))

(declare-fun m!6230048 () Bool)

(assert (=> b!5175498 m!6230048))

(assert (=> b!5175497 m!6229238))

(declare-fun m!6230050 () Bool)

(assert (=> b!5175497 m!6230050))

(assert (=> b!5175497 m!6228956))

(assert (=> b!5175497 m!6229614))

(assert (=> b!5175148 d!1670547))

(declare-fun d!1670549 () Bool)

(assert (=> d!1670549 (= (tail!10172 testedP!294) (t!373434 testedP!294))))

(assert (=> b!5175148 d!1670549))

(assert (=> b!5175148 d!1670349))

(declare-fun d!1670551 () Bool)

(assert (=> d!1670551 (= input!5817 testedP!294)))

(assert (=> d!1670551 true))

(declare-fun _$60!979 () Unit!151938)

(assert (=> d!1670551 (= (choose!38409 input!5817 testedP!294 input!5817) _$60!979)))

(assert (=> d!1670231 d!1670551))

(assert (=> d!1670231 d!1670229))

(assert (=> bm!363498 d!1670229))

(declare-fun d!1670553 () Bool)

(declare-fun c!891232 () Bool)

(assert (=> d!1670553 (= c!891232 ((_ is Cons!60157) (t!373434 lt!2131870)))))

(declare-fun e!3224894 () (InoxSet Context!8078))

(assert (=> d!1670553 (= (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (t!373434 lt!2131870)) e!3224894)))

(declare-fun b!5175500 () Bool)

(assert (=> b!5175500 (= e!3224894 (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (h!66605 (t!373434 lt!2131870))) (t!373434 (t!373434 lt!2131870))))))

(declare-fun b!5175501 () Bool)

(assert (=> b!5175501 (= e!3224894 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)))))

(assert (= (and d!1670553 c!891232) b!5175500))

(assert (= (and d!1670553 (not c!891232)) b!5175501))

(assert (=> b!5175500 m!6229252))

(declare-fun m!6230052 () Bool)

(assert (=> b!5175500 m!6230052))

(assert (=> b!5175500 m!6230052))

(declare-fun m!6230054 () Bool)

(assert (=> b!5175500 m!6230054))

(assert (=> b!5175158 d!1670553))

(declare-fun bs!1204076 () Bool)

(declare-fun d!1670555 () Bool)

(assert (= bs!1204076 (and d!1670555 d!1670179)))

(declare-fun lambda!258501 () Int)

(assert (=> bs!1204076 (= (= (h!66605 lt!2131870) lt!2131872) (= lambda!258501 lambda!258448))))

(declare-fun bs!1204077 () Bool)

(assert (= bs!1204077 (and d!1670555 d!1670367)))

(assert (=> bs!1204077 (= (= (h!66605 lt!2131870) call!363495) (= lambda!258501 lambda!258471))))

(declare-fun bs!1204078 () Bool)

(assert (= bs!1204078 (and d!1670555 d!1670435)))

(assert (=> bs!1204078 (= (= (h!66605 lt!2131870) (h!66605 testedP!294)) (= lambda!258501 lambda!258481))))

(assert (=> d!1670555 true))

(assert (=> d!1670555 (= (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (flatMap!458 baseZ!62 lambda!258501))))

(declare-fun bs!1204079 () Bool)

(assert (= bs!1204079 d!1670555))

(declare-fun m!6230056 () Bool)

(assert (=> bs!1204079 m!6230056))

(assert (=> b!5175158 d!1670555))

(declare-fun bs!1204080 () Bool)

(declare-fun d!1670557 () Bool)

(assert (= bs!1204080 (and d!1670557 d!1670237)))

(declare-fun lambda!258502 () Int)

(assert (=> bs!1204080 (not (= lambda!258502 lambda!258451))))

(declare-fun bs!1204081 () Bool)

(assert (= bs!1204081 (and d!1670557 b!5175436)))

(assert (=> bs!1204081 (not (= lambda!258502 lambda!258499))))

(declare-fun bs!1204082 () Bool)

(assert (= bs!1204082 (and d!1670557 d!1670469)))

(assert (=> bs!1204082 (= lambda!258502 lambda!258498)))

(declare-fun bs!1204083 () Bool)

(assert (= bs!1204083 (and d!1670557 b!5175437)))

(assert (=> bs!1204083 (not (= lambda!258502 lambda!258500))))

(declare-fun bs!1204084 () Bool)

(assert (= bs!1204084 (and d!1670557 d!1670427)))

(assert (=> bs!1204084 (not (= lambda!258502 lambda!258480))))

(declare-fun bs!1204085 () Bool)

(declare-fun b!5175502 () Bool)

(assert (= bs!1204085 (and b!5175502 d!1670237)))

(declare-fun lambda!258503 () Int)

(assert (=> bs!1204085 (not (= lambda!258503 lambda!258451))))

(declare-fun bs!1204086 () Bool)

(assert (= bs!1204086 (and b!5175502 b!5175436)))

(assert (=> bs!1204086 (= lambda!258503 lambda!258499)))

(declare-fun bs!1204087 () Bool)

(assert (= bs!1204087 (and b!5175502 d!1670469)))

(assert (=> bs!1204087 (not (= lambda!258503 lambda!258498))))

(declare-fun bs!1204088 () Bool)

(assert (= bs!1204088 (and b!5175502 b!5175437)))

(assert (=> bs!1204088 (= lambda!258503 lambda!258500)))

(declare-fun bs!1204089 () Bool)

(assert (= bs!1204089 (and b!5175502 d!1670427)))

(assert (=> bs!1204089 (not (= lambda!258503 lambda!258480))))

(declare-fun bs!1204090 () Bool)

(assert (= bs!1204090 (and b!5175502 d!1670557)))

(assert (=> bs!1204090 (not (= lambda!258503 lambda!258502))))

(declare-fun bs!1204091 () Bool)

(declare-fun b!5175503 () Bool)

(assert (= bs!1204091 (and b!5175503 b!5175502)))

(declare-fun lambda!258504 () Int)

(assert (=> bs!1204091 (= lambda!258504 lambda!258503)))

(declare-fun bs!1204092 () Bool)

(assert (= bs!1204092 (and b!5175503 d!1670237)))

(assert (=> bs!1204092 (not (= lambda!258504 lambda!258451))))

(declare-fun bs!1204093 () Bool)

(assert (= bs!1204093 (and b!5175503 b!5175436)))

(assert (=> bs!1204093 (= lambda!258504 lambda!258499)))

(declare-fun bs!1204094 () Bool)

(assert (= bs!1204094 (and b!5175503 d!1670469)))

(assert (=> bs!1204094 (not (= lambda!258504 lambda!258498))))

(declare-fun bs!1204095 () Bool)

(assert (= bs!1204095 (and b!5175503 b!5175437)))

(assert (=> bs!1204095 (= lambda!258504 lambda!258500)))

(declare-fun bs!1204096 () Bool)

(assert (= bs!1204096 (and b!5175503 d!1670427)))

(assert (=> bs!1204096 (not (= lambda!258504 lambda!258480))))

(declare-fun bs!1204097 () Bool)

(assert (= bs!1204097 (and b!5175503 d!1670557)))

(assert (=> bs!1204097 (not (= lambda!258504 lambda!258502))))

(declare-fun e!3224895 () Unit!151938)

(declare-fun Unit!151972 () Unit!151938)

(assert (=> b!5175503 (= e!3224895 Unit!151972)))

(declare-fun lt!2132403 () List!60283)

(declare-fun call!363583 () List!60283)

(assert (=> b!5175503 (= lt!2132403 call!363583)))

(declare-fun lt!2132398 () Unit!151938)

(assert (=> b!5175503 (= lt!2132398 (lemmaForallThenNotExists!444 lt!2132403 lambda!258502))))

(declare-fun call!363582 () Bool)

(assert (=> b!5175503 (not call!363582)))

(declare-fun lt!2132405 () Unit!151938)

(assert (=> b!5175503 (= lt!2132405 lt!2132398)))

(declare-fun lt!2132402 () List!60283)

(declare-fun bm!363578 () Bool)

(declare-fun c!891233 () Bool)

(assert (=> bm!363578 (= call!363582 (exists!1937 (ite c!891233 lt!2132402 lt!2132403) (ite c!891233 lambda!258503 lambda!258504)))))

(declare-fun Unit!151973 () Unit!151938)

(assert (=> b!5175502 (= e!3224895 Unit!151973)))

(assert (=> b!5175502 (= lt!2132402 call!363583)))

(declare-fun lt!2132404 () Unit!151938)

(assert (=> b!5175502 (= lt!2132404 (lemmaNotForallThenExists!477 lt!2132402 lambda!258502))))

(assert (=> b!5175502 call!363582))

(declare-fun lt!2132401 () Unit!151938)

(assert (=> b!5175502 (= lt!2132401 lt!2132404)))

(declare-fun bm!363577 () Bool)

(assert (=> bm!363577 (= call!363583 (toList!8456 z!4581))))

(declare-fun lt!2132400 () Bool)

(assert (=> d!1670557 (= lt!2132400 (isEmpty!32209 (getLanguageWitness!1013 z!4581)))))

(assert (=> d!1670557 (= lt!2132400 (forall!14157 z!4581 lambda!258502))))

(declare-fun lt!2132399 () Unit!151938)

(assert (=> d!1670557 (= lt!2132399 e!3224895)))

(assert (=> d!1670557 (= c!891233 (not (forall!14157 z!4581 lambda!258502)))))

(assert (=> d!1670557 (= (lostCauseZipper!1342 z!4581) lt!2132400)))

(assert (= (and d!1670557 c!891233) b!5175502))

(assert (= (and d!1670557 (not c!891233)) b!5175503))

(assert (= (or b!5175502 b!5175503) bm!363577))

(assert (= (or b!5175502 b!5175503) bm!363578))

(assert (=> bm!363577 m!6229488))

(declare-fun m!6230058 () Bool)

(assert (=> b!5175503 m!6230058))

(declare-fun m!6230060 () Bool)

(assert (=> bm!363578 m!6230060))

(declare-fun m!6230062 () Bool)

(assert (=> b!5175502 m!6230062))

(declare-fun m!6230064 () Bool)

(assert (=> d!1670557 m!6230064))

(assert (=> d!1670557 m!6230064))

(declare-fun m!6230066 () Bool)

(assert (=> d!1670557 m!6230066))

(declare-fun m!6230068 () Bool)

(assert (=> d!1670557 m!6230068))

(assert (=> d!1670557 m!6230068))

(assert (=> d!1670165 d!1670557))

(declare-fun b!5175505 () Bool)

(declare-fun e!3224896 () List!60281)

(assert (=> b!5175505 (= e!3224896 (Cons!60157 (h!66605 (_1!35233 lt!2131947)) (++!13171 (t!373434 (_1!35233 lt!2131947)) (_2!35233 lt!2131947))))))

(declare-fun b!5175507 () Bool)

(declare-fun e!3224897 () Bool)

(declare-fun lt!2132406 () List!60281)

(assert (=> b!5175507 (= e!3224897 (or (not (= (_2!35233 lt!2131947) Nil!60157)) (= lt!2132406 (_1!35233 lt!2131947))))))

(declare-fun d!1670559 () Bool)

(assert (=> d!1670559 e!3224897))

(declare-fun res!2199446 () Bool)

(assert (=> d!1670559 (=> (not res!2199446) (not e!3224897))))

(assert (=> d!1670559 (= res!2199446 (= (content!10659 lt!2132406) ((_ map or) (content!10659 (_1!35233 lt!2131947)) (content!10659 (_2!35233 lt!2131947)))))))

(assert (=> d!1670559 (= lt!2132406 e!3224896)))

(declare-fun c!891234 () Bool)

(assert (=> d!1670559 (= c!891234 ((_ is Nil!60157) (_1!35233 lt!2131947)))))

(assert (=> d!1670559 (= (++!13171 (_1!35233 lt!2131947) (_2!35233 lt!2131947)) lt!2132406)))

(declare-fun b!5175506 () Bool)

(declare-fun res!2199445 () Bool)

(assert (=> b!5175506 (=> (not res!2199445) (not e!3224897))))

(assert (=> b!5175506 (= res!2199445 (= (size!39691 lt!2132406) (+ (size!39691 (_1!35233 lt!2131947)) (size!39691 (_2!35233 lt!2131947)))))))

(declare-fun b!5175504 () Bool)

(assert (=> b!5175504 (= e!3224896 (_2!35233 lt!2131947))))

(assert (= (and d!1670559 c!891234) b!5175504))

(assert (= (and d!1670559 (not c!891234)) b!5175505))

(assert (= (and d!1670559 res!2199446) b!5175506))

(assert (= (and b!5175506 res!2199445) b!5175507))

(declare-fun m!6230070 () Bool)

(assert (=> b!5175505 m!6230070))

(declare-fun m!6230072 () Bool)

(assert (=> d!1670559 m!6230072))

(declare-fun m!6230074 () Bool)

(assert (=> d!1670559 m!6230074))

(declare-fun m!6230076 () Bool)

(assert (=> d!1670559 m!6230076))

(declare-fun m!6230078 () Bool)

(assert (=> b!5175506 m!6230078))

(assert (=> b!5175506 m!6228978))

(declare-fun m!6230080 () Bool)

(assert (=> b!5175506 m!6230080))

(assert (=> d!1670165 d!1670559))

(assert (=> d!1670165 d!1670163))

(declare-fun b!5175509 () Bool)

(declare-fun e!3224898 () List!60281)

(assert (=> b!5175509 (= e!3224898 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) lt!2131871)))))

(declare-fun lt!2132407 () List!60281)

(declare-fun b!5175511 () Bool)

(declare-fun e!3224899 () Bool)

(assert (=> b!5175511 (= e!3224899 (or (not (= lt!2131871 Nil!60157)) (= lt!2132407 testedP!294)))))

(declare-fun d!1670561 () Bool)

(assert (=> d!1670561 e!3224899))

(declare-fun res!2199448 () Bool)

(assert (=> d!1670561 (=> (not res!2199448) (not e!3224899))))

(assert (=> d!1670561 (= res!2199448 (= (content!10659 lt!2132407) ((_ map or) (content!10659 testedP!294) (content!10659 lt!2131871))))))

(assert (=> d!1670561 (= lt!2132407 e!3224898)))

(declare-fun c!891235 () Bool)

(assert (=> d!1670561 (= c!891235 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670561 (= (++!13171 testedP!294 lt!2131871) lt!2132407)))

(declare-fun b!5175510 () Bool)

(declare-fun res!2199447 () Bool)

(assert (=> b!5175510 (=> (not res!2199447) (not e!3224899))))

(assert (=> b!5175510 (= res!2199447 (= (size!39691 lt!2132407) (+ (size!39691 testedP!294) (size!39691 lt!2131871))))))

(declare-fun b!5175508 () Bool)

(assert (=> b!5175508 (= e!3224898 lt!2131871)))

(assert (= (and d!1670561 c!891235) b!5175508))

(assert (= (and d!1670561 (not c!891235)) b!5175509))

(assert (= (and d!1670561 res!2199448) b!5175510))

(assert (= (and b!5175510 res!2199447) b!5175511))

(declare-fun m!6230082 () Bool)

(assert (=> b!5175509 m!6230082))

(declare-fun m!6230084 () Bool)

(assert (=> d!1670561 m!6230084))

(assert (=> d!1670561 m!6229220))

(declare-fun m!6230086 () Bool)

(assert (=> d!1670561 m!6230086))

(declare-fun m!6230088 () Bool)

(assert (=> b!5175510 m!6230088))

(assert (=> b!5175510 m!6228936))

(declare-fun m!6230090 () Bool)

(assert (=> b!5175510 m!6230090))

(assert (=> d!1670165 d!1670561))

(declare-fun d!1670563 () Bool)

(assert (=> d!1670563 (= lt!2131871 lt!2131944)))

(declare-fun lt!2132408 () Unit!151938)

(assert (=> d!1670563 (= lt!2132408 (choose!38420 testedP!294 lt!2131871 testedP!294 lt!2131944 input!5817))))

(assert (=> d!1670563 (isPrefix!5788 testedP!294 input!5817)))

(assert (=> d!1670563 (= (lemmaSamePrefixThenSameSuffix!2709 testedP!294 lt!2131871 testedP!294 lt!2131944 input!5817) lt!2132408)))

(declare-fun bs!1204098 () Bool)

(assert (= bs!1204098 d!1670563))

(declare-fun m!6230092 () Bool)

(assert (=> bs!1204098 m!6230092))

(assert (=> bs!1204098 m!6228902))

(assert (=> d!1670165 d!1670563))

(declare-fun d!1670565 () Bool)

(assert (=> d!1670565 (isPrefix!5788 testedP!294 (++!13171 testedP!294 lt!2131871))))

(declare-fun lt!2132409 () Unit!151938)

(assert (=> d!1670565 (= lt!2132409 (choose!38419 testedP!294 lt!2131871))))

(assert (=> d!1670565 (= (lemmaConcatTwoListThenFirstIsPrefix!3603 testedP!294 lt!2131871) lt!2132409)))

(declare-fun bs!1204099 () Bool)

(assert (= bs!1204099 d!1670565))

(assert (=> bs!1204099 m!6228988))

(assert (=> bs!1204099 m!6228988))

(assert (=> bs!1204099 m!6228992))

(declare-fun m!6230094 () Bool)

(assert (=> bs!1204099 m!6230094))

(assert (=> d!1670165 d!1670565))

(declare-fun d!1670567 () Bool)

(declare-fun e!3224901 () Bool)

(assert (=> d!1670567 e!3224901))

(declare-fun res!2199450 () Bool)

(assert (=> d!1670567 (=> res!2199450 e!3224901)))

(declare-fun lt!2132410 () Bool)

(assert (=> d!1670567 (= res!2199450 (not lt!2132410))))

(declare-fun e!3224902 () Bool)

(assert (=> d!1670567 (= lt!2132410 e!3224902)))

(declare-fun res!2199449 () Bool)

(assert (=> d!1670567 (=> res!2199449 e!3224902)))

(assert (=> d!1670567 (= res!2199449 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670567 (= (isPrefix!5788 testedP!294 (++!13171 testedP!294 lt!2131871)) lt!2132410)))

(declare-fun b!5175515 () Bool)

(assert (=> b!5175515 (= e!3224901 (>= (size!39691 (++!13171 testedP!294 lt!2131871)) (size!39691 testedP!294)))))

(declare-fun b!5175512 () Bool)

(declare-fun e!3224900 () Bool)

(assert (=> b!5175512 (= e!3224902 e!3224900)))

(declare-fun res!2199451 () Bool)

(assert (=> b!5175512 (=> (not res!2199451) (not e!3224900))))

(assert (=> b!5175512 (= res!2199451 (not ((_ is Nil!60157) (++!13171 testedP!294 lt!2131871))))))

(declare-fun b!5175514 () Bool)

(assert (=> b!5175514 (= e!3224900 (isPrefix!5788 (tail!10172 testedP!294) (tail!10172 (++!13171 testedP!294 lt!2131871))))))

(declare-fun b!5175513 () Bool)

(declare-fun res!2199452 () Bool)

(assert (=> b!5175513 (=> (not res!2199452) (not e!3224900))))

(assert (=> b!5175513 (= res!2199452 (= (head!11073 testedP!294) (head!11073 (++!13171 testedP!294 lt!2131871))))))

(assert (= (and d!1670567 (not res!2199449)) b!5175512))

(assert (= (and b!5175512 res!2199451) b!5175513))

(assert (= (and b!5175513 res!2199452) b!5175514))

(assert (= (and d!1670567 (not res!2199450)) b!5175515))

(assert (=> b!5175515 m!6228988))

(declare-fun m!6230096 () Bool)

(assert (=> b!5175515 m!6230096))

(assert (=> b!5175515 m!6228936))

(assert (=> b!5175514 m!6229238))

(assert (=> b!5175514 m!6228988))

(declare-fun m!6230098 () Bool)

(assert (=> b!5175514 m!6230098))

(assert (=> b!5175514 m!6229238))

(assert (=> b!5175514 m!6230098))

(declare-fun m!6230100 () Bool)

(assert (=> b!5175514 m!6230100))

(assert (=> b!5175513 m!6229242))

(assert (=> b!5175513 m!6228988))

(declare-fun m!6230102 () Bool)

(assert (=> b!5175513 m!6230102))

(assert (=> d!1670165 d!1670567))

(assert (=> b!5175127 d!1670365))

(declare-fun bs!1204100 () Bool)

(declare-fun d!1670569 () Bool)

(assert (= bs!1204100 (and d!1670569 d!1670179)))

(declare-fun lambda!258505 () Int)

(assert (=> bs!1204100 (= (= call!363503 lt!2131872) (= lambda!258505 lambda!258448))))

(declare-fun bs!1204101 () Bool)

(assert (= bs!1204101 (and d!1670569 d!1670367)))

(assert (=> bs!1204101 (= (= call!363503 call!363495) (= lambda!258505 lambda!258471))))

(declare-fun bs!1204102 () Bool)

(assert (= bs!1204102 (and d!1670569 d!1670435)))

(assert (=> bs!1204102 (= (= call!363503 (h!66605 testedP!294)) (= lambda!258505 lambda!258481))))

(declare-fun bs!1204103 () Bool)

(assert (= bs!1204103 (and d!1670569 d!1670555)))

(assert (=> bs!1204103 (= (= call!363503 (h!66605 lt!2131870)) (= lambda!258505 lambda!258501))))

(assert (=> d!1670569 true))

(assert (=> d!1670569 (= (derivationStepZipper!1001 lt!2131878 call!363503) (flatMap!458 lt!2131878 lambda!258505))))

(declare-fun bs!1204104 () Bool)

(assert (= bs!1204104 d!1670569))

(declare-fun m!6230104 () Bool)

(assert (=> bs!1204104 m!6230104))

(assert (=> bm!363491 d!1670569))

(assert (=> b!5175129 d!1670159))

(assert (=> b!5174964 d!1670159))

(assert (=> b!5174964 d!1670541))

(assert (=> b!5174964 d!1670247))

(declare-fun d!1670571 () Bool)

(assert (=> d!1670571 (= (++!13171 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)) lt!2131949) input!5817)))

(declare-fun lt!2132411 () Unit!151938)

(assert (=> d!1670571 (= lt!2132411 (choose!38414 testedP!294 lt!2131962 lt!2131949 input!5817))))

(assert (=> d!1670571 (= (++!13171 testedP!294 (Cons!60157 lt!2131962 lt!2131949)) input!5817)))

(assert (=> d!1670571 (= (lemmaMoveElementToOtherListKeepsConcatEq!1590 testedP!294 lt!2131962 lt!2131949 input!5817) lt!2132411)))

(declare-fun bs!1204105 () Bool)

(assert (= bs!1204105 d!1670571))

(assert (=> bs!1204105 m!6228964))

(assert (=> bs!1204105 m!6228964))

(assert (=> bs!1204105 m!6228968))

(declare-fun m!6230106 () Bool)

(assert (=> bs!1204105 m!6230106))

(declare-fun m!6230108 () Bool)

(assert (=> bs!1204105 m!6230108))

(assert (=> b!5174964 d!1670571))

(assert (=> b!5174964 d!1670163))

(declare-fun e!3224903 () List!60281)

(declare-fun b!5175517 () Bool)

(assert (=> b!5175517 (= e!3224903 (Cons!60157 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) (++!13171 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) lt!2131949)))))

(declare-fun e!3224904 () Bool)

(declare-fun lt!2132412 () List!60281)

(declare-fun b!5175519 () Bool)

(assert (=> b!5175519 (= e!3224904 (or (not (= lt!2131949 Nil!60157)) (= lt!2132412 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))))))

(declare-fun d!1670573 () Bool)

(assert (=> d!1670573 e!3224904))

(declare-fun res!2199454 () Bool)

(assert (=> d!1670573 (=> (not res!2199454) (not e!3224904))))

(assert (=> d!1670573 (= res!2199454 (= (content!10659 lt!2132412) ((_ map or) (content!10659 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) (content!10659 lt!2131949))))))

(assert (=> d!1670573 (= lt!2132412 e!3224903)))

(declare-fun c!891236 () Bool)

(assert (=> d!1670573 (= c!891236 ((_ is Nil!60157) (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))

(assert (=> d!1670573 (= (++!13171 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)) lt!2131949) lt!2132412)))

(declare-fun b!5175518 () Bool)

(declare-fun res!2199453 () Bool)

(assert (=> b!5175518 (=> (not res!2199453) (not e!3224904))))

(assert (=> b!5175518 (= res!2199453 (= (size!39691 lt!2132412) (+ (size!39691 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) (size!39691 lt!2131949))))))

(declare-fun b!5175516 () Bool)

(assert (=> b!5175516 (= e!3224903 lt!2131949)))

(assert (= (and d!1670573 c!891236) b!5175516))

(assert (= (and d!1670573 (not c!891236)) b!5175517))

(assert (= (and d!1670573 res!2199454) b!5175518))

(assert (= (and b!5175518 res!2199453) b!5175519))

(declare-fun m!6230110 () Bool)

(assert (=> b!5175517 m!6230110))

(declare-fun m!6230112 () Bool)

(assert (=> d!1670573 m!6230112))

(assert (=> d!1670573 m!6228964))

(declare-fun m!6230114 () Bool)

(assert (=> d!1670573 m!6230114))

(declare-fun m!6230116 () Bool)

(assert (=> d!1670573 m!6230116))

(declare-fun m!6230118 () Bool)

(assert (=> b!5175518 m!6230118))

(assert (=> b!5175518 m!6228964))

(declare-fun m!6230120 () Bool)

(assert (=> b!5175518 m!6230120))

(declare-fun m!6230122 () Bool)

(assert (=> b!5175518 m!6230122))

(assert (=> b!5174964 d!1670573))

(assert (=> b!5174964 d!1670177))

(assert (=> b!5174964 d!1670239))

(assert (=> b!5174964 d!1670531))

(assert (=> b!5174964 d!1670171))

(assert (=> b!5174964 d!1670235))

(declare-fun b!5175521 () Bool)

(declare-fun e!3224905 () List!60281)

(assert (=> b!5175521 (= e!3224905 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) (Cons!60157 (head!11073 lt!2131871) Nil!60157))))))

(declare-fun b!5175523 () Bool)

(declare-fun e!3224906 () Bool)

(declare-fun lt!2132413 () List!60281)

(assert (=> b!5175523 (= e!3224906 (or (not (= (Cons!60157 (head!11073 lt!2131871) Nil!60157) Nil!60157)) (= lt!2132413 testedP!294)))))

(declare-fun d!1670575 () Bool)

(assert (=> d!1670575 e!3224906))

(declare-fun res!2199456 () Bool)

(assert (=> d!1670575 (=> (not res!2199456) (not e!3224906))))

(assert (=> d!1670575 (= res!2199456 (= (content!10659 lt!2132413) ((_ map or) (content!10659 testedP!294) (content!10659 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(assert (=> d!1670575 (= lt!2132413 e!3224905)))

(declare-fun c!891237 () Bool)

(assert (=> d!1670575 (= c!891237 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670575 (= (++!13171 testedP!294 (Cons!60157 (head!11073 lt!2131871) Nil!60157)) lt!2132413)))

(declare-fun b!5175522 () Bool)

(declare-fun res!2199455 () Bool)

(assert (=> b!5175522 (=> (not res!2199455) (not e!3224906))))

(assert (=> b!5175522 (= res!2199455 (= (size!39691 lt!2132413) (+ (size!39691 testedP!294) (size!39691 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(declare-fun b!5175520 () Bool)

(assert (=> b!5175520 (= e!3224905 (Cons!60157 (head!11073 lt!2131871) Nil!60157))))

(assert (= (and d!1670575 c!891237) b!5175520))

(assert (= (and d!1670575 (not c!891237)) b!5175521))

(assert (= (and d!1670575 res!2199456) b!5175522))

(assert (= (and b!5175522 res!2199455) b!5175523))

(declare-fun m!6230124 () Bool)

(assert (=> b!5175521 m!6230124))

(declare-fun m!6230126 () Bool)

(assert (=> d!1670575 m!6230126))

(assert (=> d!1670575 m!6229220))

(declare-fun m!6230128 () Bool)

(assert (=> d!1670575 m!6230128))

(declare-fun m!6230130 () Bool)

(assert (=> b!5175522 m!6230130))

(assert (=> b!5175522 m!6228936))

(declare-fun m!6230132 () Bool)

(assert (=> b!5175522 m!6230132))

(assert (=> b!5174964 d!1670575))

(assert (=> b!5174964 d!1670533))

(declare-fun b!5175525 () Bool)

(declare-fun e!3224907 () List!60281)

(assert (=> b!5175525 (= e!3224907 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) (Cons!60157 lt!2131962 Nil!60157))))))

(declare-fun e!3224908 () Bool)

(declare-fun b!5175527 () Bool)

(declare-fun lt!2132414 () List!60281)

(assert (=> b!5175527 (= e!3224908 (or (not (= (Cons!60157 lt!2131962 Nil!60157) Nil!60157)) (= lt!2132414 testedP!294)))))

(declare-fun d!1670577 () Bool)

(assert (=> d!1670577 e!3224908))

(declare-fun res!2199458 () Bool)

(assert (=> d!1670577 (=> (not res!2199458) (not e!3224908))))

(assert (=> d!1670577 (= res!2199458 (= (content!10659 lt!2132414) ((_ map or) (content!10659 testedP!294) (content!10659 (Cons!60157 lt!2131962 Nil!60157)))))))

(assert (=> d!1670577 (= lt!2132414 e!3224907)))

(declare-fun c!891238 () Bool)

(assert (=> d!1670577 (= c!891238 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670577 (= (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)) lt!2132414)))

(declare-fun b!5175526 () Bool)

(declare-fun res!2199457 () Bool)

(assert (=> b!5175526 (=> (not res!2199457) (not e!3224908))))

(assert (=> b!5175526 (= res!2199457 (= (size!39691 lt!2132414) (+ (size!39691 testedP!294) (size!39691 (Cons!60157 lt!2131962 Nil!60157)))))))

(declare-fun b!5175524 () Bool)

(assert (=> b!5175524 (= e!3224907 (Cons!60157 lt!2131962 Nil!60157))))

(assert (= (and d!1670577 c!891238) b!5175524))

(assert (= (and d!1670577 (not c!891238)) b!5175525))

(assert (= (and d!1670577 res!2199458) b!5175526))

(assert (= (and b!5175526 res!2199457) b!5175527))

(declare-fun m!6230134 () Bool)

(assert (=> b!5175525 m!6230134))

(declare-fun m!6230136 () Bool)

(assert (=> d!1670577 m!6230136))

(assert (=> d!1670577 m!6229220))

(declare-fun m!6230138 () Bool)

(assert (=> d!1670577 m!6230138))

(declare-fun m!6230140 () Bool)

(assert (=> b!5175526 m!6230140))

(assert (=> b!5175526 m!6228936))

(declare-fun m!6230142 () Bool)

(assert (=> b!5175526 m!6230142))

(assert (=> b!5174964 d!1670577))

(declare-fun b!5175528 () Bool)

(declare-fun e!3224909 () Bool)

(declare-fun tp!1451942 () Bool)

(declare-fun tp!1451943 () Bool)

(assert (=> b!5175528 (= e!3224909 (and tp!1451942 tp!1451943))))

(assert (=> b!5175177 (= tp!1451906 e!3224909)))

(assert (= (and b!5175177 ((_ is Cons!60158) (exprs!4539 setElem!32308))) b!5175528))

(declare-fun condSetEmpty!32311 () Bool)

(assert (=> setNonEmpty!32307 (= condSetEmpty!32311 (= setRest!32307 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32311 () Bool)

(assert (=> setNonEmpty!32307 (= tp!1451904 setRes!32311)))

(declare-fun setIsEmpty!32311 () Bool)

(assert (=> setIsEmpty!32311 setRes!32311))

(declare-fun tp!1451945 () Bool)

(declare-fun setElem!32311 () Context!8078)

(declare-fun setNonEmpty!32311 () Bool)

(declare-fun e!3224910 () Bool)

(assert (=> setNonEmpty!32311 (= setRes!32311 (and tp!1451945 (inv!79884 setElem!32311) e!3224910))))

(declare-fun setRest!32311 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32311 (= setRest!32307 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32311 true) setRest!32311))))

(declare-fun b!5175529 () Bool)

(declare-fun tp!1451944 () Bool)

(assert (=> b!5175529 (= e!3224910 tp!1451944)))

(assert (= (and setNonEmpty!32307 condSetEmpty!32311) setIsEmpty!32311))

(assert (= (and setNonEmpty!32307 (not condSetEmpty!32311)) setNonEmpty!32311))

(assert (= setNonEmpty!32311 b!5175529))

(declare-fun m!6230144 () Bool)

(assert (=> setNonEmpty!32311 m!6230144))

(declare-fun condSetEmpty!32312 () Bool)

(assert (=> setNonEmpty!32308 (= condSetEmpty!32312 (= setRest!32308 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32312 () Bool)

(assert (=> setNonEmpty!32308 (= tp!1451907 setRes!32312)))

(declare-fun setIsEmpty!32312 () Bool)

(assert (=> setIsEmpty!32312 setRes!32312))

(declare-fun tp!1451947 () Bool)

(declare-fun e!3224911 () Bool)

(declare-fun setNonEmpty!32312 () Bool)

(declare-fun setElem!32312 () Context!8078)

(assert (=> setNonEmpty!32312 (= setRes!32312 (and tp!1451947 (inv!79884 setElem!32312) e!3224911))))

(declare-fun setRest!32312 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32312 (= setRest!32308 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32312 true) setRest!32312))))

(declare-fun b!5175530 () Bool)

(declare-fun tp!1451946 () Bool)

(assert (=> b!5175530 (= e!3224911 tp!1451946)))

(assert (= (and setNonEmpty!32308 condSetEmpty!32312) setIsEmpty!32312))

(assert (= (and setNonEmpty!32308 (not condSetEmpty!32312)) setNonEmpty!32312))

(assert (= setNonEmpty!32312 b!5175530))

(declare-fun m!6230146 () Bool)

(assert (=> setNonEmpty!32312 m!6230146))

(declare-fun b!5175531 () Bool)

(declare-fun e!3224912 () Bool)

(declare-fun tp!1451948 () Bool)

(declare-fun tp!1451949 () Bool)

(assert (=> b!5175531 (= e!3224912 (and tp!1451948 tp!1451949))))

(assert (=> b!5175175 (= tp!1451903 e!3224912)))

(assert (= (and b!5175175 ((_ is Cons!60158) (exprs!4539 setElem!32307))) b!5175531))

(declare-fun b!5175543 () Bool)

(declare-fun e!3224915 () Bool)

(declare-fun tp!1451961 () Bool)

(declare-fun tp!1451962 () Bool)

(assert (=> b!5175543 (= e!3224915 (and tp!1451961 tp!1451962))))

(assert (=> b!5175170 (= tp!1451897 e!3224915)))

(declare-fun b!5175542 () Bool)

(assert (=> b!5175542 (= e!3224915 tp_is_empty!38563)))

(declare-fun b!5175544 () Bool)

(declare-fun tp!1451964 () Bool)

(assert (=> b!5175544 (= e!3224915 tp!1451964)))

(declare-fun b!5175545 () Bool)

(declare-fun tp!1451960 () Bool)

(declare-fun tp!1451963 () Bool)

(assert (=> b!5175545 (= e!3224915 (and tp!1451960 tp!1451963))))

(assert (= (and b!5175170 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32300)))) b!5175542))

(assert (= (and b!5175170 ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32300)))) b!5175543))

(assert (= (and b!5175170 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32300)))) b!5175544))

(assert (= (and b!5175170 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32300)))) b!5175545))

(declare-fun b!5175546 () Bool)

(declare-fun e!3224916 () Bool)

(declare-fun tp!1451965 () Bool)

(declare-fun tp!1451966 () Bool)

(assert (=> b!5175546 (= e!3224916 (and tp!1451965 tp!1451966))))

(assert (=> b!5175170 (= tp!1451898 e!3224916)))

(assert (= (and b!5175170 ((_ is Cons!60158) (t!373435 (exprs!4539 setElem!32300)))) b!5175546))

(declare-fun b!5175547 () Bool)

(declare-fun e!3224917 () Bool)

(declare-fun tp!1451967 () Bool)

(assert (=> b!5175547 (= e!3224917 (and tp_is_empty!38563 tp!1451967))))

(assert (=> b!5175176 (= tp!1451905 e!3224917)))

(assert (= (and b!5175176 ((_ is Cons!60157) (t!373434 (t!373434 input!5817)))) b!5175547))

(declare-fun b!5175548 () Bool)

(declare-fun e!3224918 () Bool)

(declare-fun tp!1451968 () Bool)

(assert (=> b!5175548 (= e!3224918 (and tp_is_empty!38563 tp!1451968))))

(assert (=> b!5175169 (= tp!1451896 e!3224918)))

(assert (= (and b!5175169 ((_ is Cons!60157) (t!373434 (t!373434 testedP!294)))) b!5175548))

(declare-fun b!5175550 () Bool)

(declare-fun e!3224919 () Bool)

(declare-fun tp!1451970 () Bool)

(declare-fun tp!1451971 () Bool)

(assert (=> b!5175550 (= e!3224919 (and tp!1451970 tp!1451971))))

(assert (=> b!5175164 (= tp!1451892 e!3224919)))

(declare-fun b!5175549 () Bool)

(assert (=> b!5175549 (= e!3224919 tp_is_empty!38563)))

(declare-fun b!5175551 () Bool)

(declare-fun tp!1451973 () Bool)

(assert (=> b!5175551 (= e!3224919 tp!1451973)))

(declare-fun b!5175552 () Bool)

(declare-fun tp!1451969 () Bool)

(declare-fun tp!1451972 () Bool)

(assert (=> b!5175552 (= e!3224919 (and tp!1451969 tp!1451972))))

(assert (= (and b!5175164 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32299)))) b!5175549))

(assert (= (and b!5175164 ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32299)))) b!5175550))

(assert (= (and b!5175164 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32299)))) b!5175551))

(assert (= (and b!5175164 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32299)))) b!5175552))

(declare-fun b!5175553 () Bool)

(declare-fun e!3224920 () Bool)

(declare-fun tp!1451974 () Bool)

(declare-fun tp!1451975 () Bool)

(assert (=> b!5175553 (= e!3224920 (and tp!1451974 tp!1451975))))

(assert (=> b!5175164 (= tp!1451893 e!3224920)))

(assert (= (and b!5175164 ((_ is Cons!60158) (t!373435 (exprs!4539 setElem!32299)))) b!5175553))

(declare-fun b_lambda!200941 () Bool)

(assert (= b_lambda!200931 (or d!1670257 b_lambda!200941)))

(declare-fun bs!1204106 () Bool)

(declare-fun d!1670579 () Bool)

(assert (= bs!1204106 (and d!1670579 d!1670257)))

(declare-fun validRegex!6405 (Regex!14655) Bool)

(assert (=> bs!1204106 (= (dynLambda!23878 lambda!258455 (h!66606 (exprs!4539 setElem!32300))) (validRegex!6405 (h!66606 (exprs!4539 setElem!32300))))))

(declare-fun m!6230148 () Bool)

(assert (=> bs!1204106 m!6230148))

(assert (=> b!5175326 d!1670579))

(declare-fun b_lambda!200943 () Bool)

(assert (= b_lambda!200935 (or d!1670255 b_lambda!200943)))

(declare-fun bs!1204107 () Bool)

(declare-fun d!1670581 () Bool)

(assert (= bs!1204107 (and d!1670581 d!1670255)))

(assert (=> bs!1204107 (= (dynLambda!23878 lambda!258454 (h!66606 (exprs!4539 setElem!32299))) (validRegex!6405 (h!66606 (exprs!4539 setElem!32299))))))

(declare-fun m!6230150 () Bool)

(assert (=> bs!1204107 m!6230150))

(assert (=> b!5175458 d!1670581))

(check-sat (not b!5175329) (not b!5175391) (not b!5175246) (not b!5175499) (not bs!1204106) (not b!5175271) (not b!5175514) (not d!1670325) (not b!5175307) (not b!5175502) (not d!1670341) (not bm!363576) (not bm!363548) (not b!5175545) (not b!5175384) (not d!1670569) (not b!5175249) (not b!5175305) (not b!5175529) (not b!5175357) (not d!1670443) (not b!5175498) (not b!5175517) (not b!5175393) (not b!5175277) (not b!5175510) (not b!5175437) (not b!5175356) (not b!5175459) (not d!1670563) (not b!5175494) (not b!5175500) (not d!1670435) (not b!5175515) (not bm!363575) (not d!1670447) (not b_lambda!200943) (not d!1670577) (not d!1670339) (not d!1670351) (not b!5175292) (not b!5175245) (not bm!363553) (not b!5175493) (not d!1670513) (not d!1670561) (not b!5175351) (not b!5175436) (not b!5175256) (not d!1670555) (not b!5175344) (not b!5175525) tp_is_empty!38563 (not b!5175241) (not b!5175550) (not b!5175311) (not b!5175255) (not b!5175503) (not bm!363558) (not bs!1204107) (not b!5175375) (not bm!363552) (not d!1670565) (not bm!363551) (not b!5175506) (not d!1670347) (not b!5175546) (not d!1670575) (not b!5175279) (not b!5175531) (not bm!363550) (not d!1670407) (not b!5175526) (not b!5175327) (not b!5175522) (not b!5175475) (not b!5175355) (not d!1670299) (not b!5175309) (not b_lambda!200941) (not b!5175547) (not bm!363555) (not b!5175259) (not b!5175252) (not b!5175288) (not d!1670327) (not d!1670303) (not b!5175548) (not b!5175273) (not b!5175513) (not d!1670427) (not d!1670469) (not b!5175551) (not d!1670361) (not b!5175497) (not b!5175376) (not bm!363545) (not bm!363547) (not b!5175345) (not bm!363549) (not bm!363557) (not d!1670559) (not d!1670321) (not b!5175530) (not d!1670375) (not b!5175295) (not d!1670535) (not d!1670337) (not b!5175274) (not b!5175477) (not b!5175454) (not bm!363546) (not b!5175260) (not b!5175469) (not b!5175366) (not d!1670413) (not bm!363560) (not d!1670335) (not b!5175518) (not bm!363556) (not d!1670305) (not b!5175553) (not b!5175269) (not d!1670309) (not b!5175509) (not d!1670345) (not bm!363577) (not b!5175330) (not d!1670457) (not b!5175289) (not d!1670573) (not b!5175552) (not d!1670557) (not bm!363554) (not b!5175383) (not d!1670541) (not b!5175392) (not bm!363578) (not d!1670571) (not b!5175373) (not b!5175543) (not b!5175505) (not b!5175257) (not d!1670367) (not b!5175476) (not b!5175250) (not b!5175262) (not b!5175313) (not b!5175242) (not bm!363559) (not d!1670545) (not d!1670521) (not b!5175453) (not b!5175348) (not setNonEmpty!32312) (not setNonEmpty!32311) (not b!5175312) (not b!5175528) (not d!1670323) (not b!5175521) (not b!5175544))
(check-sat)
(get-model)

(declare-fun d!1670583 () Bool)

(declare-fun c!891239 () Bool)

(assert (=> d!1670583 (= c!891239 ((_ is Nil!60157) lt!2132413))))

(declare-fun e!3224921 () (InoxSet C!29580))

(assert (=> d!1670583 (= (content!10659 lt!2132413) e!3224921)))

(declare-fun b!5175554 () Bool)

(assert (=> b!5175554 (= e!3224921 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175555 () Bool)

(assert (=> b!5175555 (= e!3224921 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132413) true) (content!10659 (t!373434 lt!2132413))))))

(assert (= (and d!1670583 c!891239) b!5175554))

(assert (= (and d!1670583 (not c!891239)) b!5175555))

(declare-fun m!6230152 () Bool)

(assert (=> b!5175555 m!6230152))

(declare-fun m!6230154 () Bool)

(assert (=> b!5175555 m!6230154))

(assert (=> d!1670575 d!1670583))

(assert (=> d!1670575 d!1670385))

(declare-fun d!1670585 () Bool)

(declare-fun c!891240 () Bool)

(assert (=> d!1670585 (= c!891240 ((_ is Nil!60157) (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))

(declare-fun e!3224922 () (InoxSet C!29580))

(assert (=> d!1670585 (= (content!10659 (Cons!60157 (head!11073 lt!2131871) Nil!60157)) e!3224922)))

(declare-fun b!5175556 () Bool)

(assert (=> b!5175556 (= e!3224922 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175557 () Bool)

(assert (=> b!5175557 (= e!3224922 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 (head!11073 lt!2131871) Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(assert (= (and d!1670585 c!891240) b!5175556))

(assert (= (and d!1670585 (not c!891240)) b!5175557))

(declare-fun m!6230156 () Bool)

(assert (=> b!5175557 m!6230156))

(declare-fun m!6230158 () Bool)

(assert (=> b!5175557 m!6230158))

(assert (=> d!1670575 d!1670585))

(declare-fun d!1670587 () Bool)

(declare-fun c!891241 () Bool)

(assert (=> d!1670587 (= c!891241 ((_ is Nil!60157) (t!373434 (Cons!60157 lt!2131872 Nil!60157))))))

(declare-fun e!3224923 () (InoxSet C!29580))

(assert (=> d!1670587 (= (content!10659 (t!373434 (Cons!60157 lt!2131872 Nil!60157))) e!3224923)))

(declare-fun b!5175558 () Bool)

(assert (=> b!5175558 (= e!3224923 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175559 () Bool)

(assert (=> b!5175559 (= e!3224923 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (t!373434 (Cons!60157 lt!2131872 Nil!60157))) true) (content!10659 (t!373434 (t!373434 (Cons!60157 lt!2131872 Nil!60157))))))))

(assert (= (and d!1670587 c!891241) b!5175558))

(assert (= (and d!1670587 (not c!891241)) b!5175559))

(declare-fun m!6230160 () Bool)

(assert (=> b!5175559 m!6230160))

(declare-fun m!6230162 () Bool)

(assert (=> b!5175559 m!6230162))

(assert (=> b!5175309 d!1670587))

(declare-fun d!1670589 () Bool)

(declare-fun lt!2132415 () Int)

(assert (=> d!1670589 (>= lt!2132415 0)))

(declare-fun e!3224924 () Int)

(assert (=> d!1670589 (= lt!2132415 e!3224924)))

(declare-fun c!891242 () Bool)

(assert (=> d!1670589 (= c!891242 ((_ is Nil!60157) (tail!10172 input!5817)))))

(assert (=> d!1670589 (= (size!39691 (tail!10172 input!5817)) lt!2132415)))

(declare-fun b!5175560 () Bool)

(assert (=> b!5175560 (= e!3224924 0)))

(declare-fun b!5175561 () Bool)

(assert (=> b!5175561 (= e!3224924 (+ 1 (size!39691 (t!373434 (tail!10172 input!5817)))))))

(assert (= (and d!1670589 c!891242) b!5175560))

(assert (= (and d!1670589 (not c!891242)) b!5175561))

(declare-fun m!6230164 () Bool)

(assert (=> b!5175561 m!6230164))

(assert (=> b!5175357 d!1670589))

(declare-fun d!1670591 () Bool)

(declare-fun lt!2132416 () Int)

(assert (=> d!1670591 (>= lt!2132416 0)))

(declare-fun e!3224925 () Int)

(assert (=> d!1670591 (= lt!2132416 e!3224925)))

(declare-fun c!891243 () Bool)

(assert (=> d!1670591 (= c!891243 ((_ is Nil!60157) (tail!10172 lt!2131870)))))

(assert (=> d!1670591 (= (size!39691 (tail!10172 lt!2131870)) lt!2132416)))

(declare-fun b!5175562 () Bool)

(assert (=> b!5175562 (= e!3224925 0)))

(declare-fun b!5175563 () Bool)

(assert (=> b!5175563 (= e!3224925 (+ 1 (size!39691 (t!373434 (tail!10172 lt!2131870)))))))

(assert (= (and d!1670591 c!891243) b!5175562))

(assert (= (and d!1670591 (not c!891243)) b!5175563))

(declare-fun m!6230166 () Bool)

(assert (=> b!5175563 m!6230166))

(assert (=> b!5175357 d!1670591))

(declare-fun d!1670593 () Bool)

(declare-fun lt!2132417 () Int)

(assert (=> d!1670593 (>= lt!2132417 0)))

(declare-fun e!3224926 () Int)

(assert (=> d!1670593 (= lt!2132417 e!3224926)))

(declare-fun c!891244 () Bool)

(assert (=> d!1670593 (= c!891244 ((_ is Nil!60157) lt!2132320))))

(assert (=> d!1670593 (= (size!39691 lt!2132320) lt!2132417)))

(declare-fun b!5175564 () Bool)

(assert (=> b!5175564 (= e!3224926 0)))

(declare-fun b!5175565 () Bool)

(assert (=> b!5175565 (= e!3224926 (+ 1 (size!39691 (t!373434 lt!2132320))))))

(assert (= (and d!1670593 c!891244) b!5175564))

(assert (= (and d!1670593 (not c!891244)) b!5175565))

(declare-fun m!6230168 () Bool)

(assert (=> b!5175565 m!6230168))

(assert (=> b!5175384 d!1670593))

(assert (=> b!5175384 d!1670441))

(declare-fun d!1670595 () Bool)

(declare-fun lt!2132418 () Int)

(assert (=> d!1670595 (>= lt!2132418 0)))

(declare-fun e!3224927 () Int)

(assert (=> d!1670595 (= lt!2132418 e!3224927)))

(declare-fun c!891245 () Bool)

(assert (=> d!1670595 (= c!891245 ((_ is Nil!60157) (_2!35233 lt!2131974)))))

(assert (=> d!1670595 (= (size!39691 (_2!35233 lt!2131974)) lt!2132418)))

(declare-fun b!5175566 () Bool)

(assert (=> b!5175566 (= e!3224927 0)))

(declare-fun b!5175567 () Bool)

(assert (=> b!5175567 (= e!3224927 (+ 1 (size!39691 (t!373434 (_2!35233 lt!2131974)))))))

(assert (= (and d!1670595 c!891245) b!5175566))

(assert (= (and d!1670595 (not c!891245)) b!5175567))

(declare-fun m!6230170 () Bool)

(assert (=> b!5175567 m!6230170))

(assert (=> b!5175384 d!1670595))

(declare-fun d!1670597 () Bool)

(assert (=> d!1670597 (= (tail!10172 lt!2131871) lt!2131971)))

(assert (=> d!1670597 true))

(declare-fun _$63!1290 () Unit!151938)

(assert (=> d!1670597 (= (choose!38420 lt!2131870 (tail!10172 lt!2131871) lt!2131870 lt!2131971 input!5817) _$63!1290)))

(assert (=> d!1670513 d!1670597))

(assert (=> d!1670513 d!1670241))

(declare-fun b!5175569 () Bool)

(declare-fun e!3224928 () List!60281)

(assert (=> b!5175569 (= e!3224928 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) lt!2132199)))))

(declare-fun e!3224929 () Bool)

(declare-fun b!5175571 () Bool)

(declare-fun lt!2132419 () List!60281)

(assert (=> b!5175571 (= e!3224929 (or (not (= lt!2132199 Nil!60157)) (= lt!2132419 lt!2131870)))))

(declare-fun d!1670599 () Bool)

(assert (=> d!1670599 e!3224929))

(declare-fun res!2199460 () Bool)

(assert (=> d!1670599 (=> (not res!2199460) (not e!3224929))))

(assert (=> d!1670599 (= res!2199460 (= (content!10659 lt!2132419) ((_ map or) (content!10659 lt!2131870) (content!10659 lt!2132199))))))

(assert (=> d!1670599 (= lt!2132419 e!3224928)))

(declare-fun c!891246 () Bool)

(assert (=> d!1670599 (= c!891246 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670599 (= (++!13171 lt!2131870 lt!2132199) lt!2132419)))

(declare-fun b!5175570 () Bool)

(declare-fun res!2199459 () Bool)

(assert (=> b!5175570 (=> (not res!2199459) (not e!3224929))))

(assert (=> b!5175570 (= res!2199459 (= (size!39691 lt!2132419) (+ (size!39691 lt!2131870) (size!39691 lt!2132199))))))

(declare-fun b!5175568 () Bool)

(assert (=> b!5175568 (= e!3224928 lt!2132199)))

(assert (= (and d!1670599 c!891246) b!5175568))

(assert (= (and d!1670599 (not c!891246)) b!5175569))

(assert (= (and d!1670599 res!2199460) b!5175570))

(assert (= (and b!5175570 res!2199459) b!5175571))

(declare-fun m!6230172 () Bool)

(assert (=> b!5175569 m!6230172))

(declare-fun m!6230174 () Bool)

(assert (=> d!1670599 m!6230174))

(assert (=> d!1670599 m!6229430))

(declare-fun m!6230176 () Bool)

(assert (=> d!1670599 m!6230176))

(declare-fun m!6230178 () Bool)

(assert (=> b!5175570 m!6230178))

(assert (=> b!5175570 m!6228946))

(declare-fun m!6230180 () Bool)

(assert (=> b!5175570 m!6230180))

(assert (=> d!1670327 d!1670599))

(assert (=> d!1670327 d!1670159))

(assert (=> d!1670327 d!1670249))

(declare-fun d!1670601 () Bool)

(declare-fun e!3224932 () Bool)

(assert (=> d!1670601 e!3224932))

(declare-fun res!2199463 () Bool)

(assert (=> d!1670601 (=> (not res!2199463) (not e!3224932))))

(declare-fun lt!2132422 () List!60283)

(declare-fun noDuplicate!1134 (List!60283) Bool)

(assert (=> d!1670601 (= res!2199463 (noDuplicate!1134 lt!2132422))))

(declare-fun choose!38423 ((InoxSet Context!8078)) List!60283)

(assert (=> d!1670601 (= lt!2132422 (choose!38423 lt!2131878))))

(assert (=> d!1670601 (= (toList!8456 lt!2131878) lt!2132422)))

(declare-fun b!5175574 () Bool)

(declare-fun content!10660 (List!60283) (InoxSet Context!8078))

(assert (=> b!5175574 (= e!3224932 (= (content!10660 lt!2132422) lt!2131878))))

(assert (= (and d!1670601 res!2199463) b!5175574))

(declare-fun m!6230182 () Bool)

(assert (=> d!1670601 m!6230182))

(declare-fun m!6230184 () Bool)

(assert (=> d!1670601 m!6230184))

(declare-fun m!6230186 () Bool)

(assert (=> b!5175574 m!6230186))

(assert (=> bm!363575 d!1670601))

(declare-fun d!1670603 () Bool)

(assert (=> d!1670603 (= (head!11073 (tail!10172 testedP!294)) (h!66605 (tail!10172 testedP!294)))))

(assert (=> b!5175497 d!1670603))

(declare-fun d!1670605 () Bool)

(assert (=> d!1670605 (= (head!11073 (tail!10172 input!5817)) (h!66605 (tail!10172 input!5817)))))

(assert (=> b!5175497 d!1670605))

(declare-fun d!1670607 () Bool)

(declare-fun res!2199464 () Bool)

(declare-fun e!3224933 () Bool)

(assert (=> d!1670607 (=> res!2199464 e!3224933)))

(assert (=> d!1670607 (= res!2199464 ((_ is Nil!60158) (t!373435 (exprs!4539 setElem!32300))))))

(assert (=> d!1670607 (= (forall!14155 (t!373435 (exprs!4539 setElem!32300)) lambda!258455) e!3224933)))

(declare-fun b!5175575 () Bool)

(declare-fun e!3224934 () Bool)

(assert (=> b!5175575 (= e!3224933 e!3224934)))

(declare-fun res!2199465 () Bool)

(assert (=> b!5175575 (=> (not res!2199465) (not e!3224934))))

(assert (=> b!5175575 (= res!2199465 (dynLambda!23878 lambda!258455 (h!66606 (t!373435 (exprs!4539 setElem!32300)))))))

(declare-fun b!5175576 () Bool)

(assert (=> b!5175576 (= e!3224934 (forall!14155 (t!373435 (t!373435 (exprs!4539 setElem!32300))) lambda!258455))))

(assert (= (and d!1670607 (not res!2199464)) b!5175575))

(assert (= (and b!5175575 res!2199465) b!5175576))

(declare-fun b_lambda!200945 () Bool)

(assert (=> (not b_lambda!200945) (not b!5175575)))

(declare-fun m!6230188 () Bool)

(assert (=> b!5175575 m!6230188))

(declare-fun m!6230190 () Bool)

(assert (=> b!5175576 m!6230190))

(assert (=> b!5175327 d!1670607))

(assert (=> d!1670305 d!1670171))

(assert (=> d!1670305 d!1670159))

(declare-fun d!1670609 () Bool)

(declare-fun lt!2132423 () Int)

(assert (=> d!1670609 (>= lt!2132423 0)))

(declare-fun e!3224935 () Int)

(assert (=> d!1670609 (= lt!2132423 e!3224935)))

(declare-fun c!891247 () Bool)

(assert (=> d!1670609 (= c!891247 ((_ is Nil!60157) lt!2132412))))

(assert (=> d!1670609 (= (size!39691 lt!2132412) lt!2132423)))

(declare-fun b!5175577 () Bool)

(assert (=> b!5175577 (= e!3224935 0)))

(declare-fun b!5175578 () Bool)

(assert (=> b!5175578 (= e!3224935 (+ 1 (size!39691 (t!373434 lt!2132412))))))

(assert (= (and d!1670609 c!891247) b!5175577))

(assert (= (and d!1670609 (not c!891247)) b!5175578))

(declare-fun m!6230192 () Bool)

(assert (=> b!5175578 m!6230192))

(assert (=> b!5175518 d!1670609))

(declare-fun d!1670611 () Bool)

(declare-fun lt!2132424 () Int)

(assert (=> d!1670611 (>= lt!2132424 0)))

(declare-fun e!3224936 () Int)

(assert (=> d!1670611 (= lt!2132424 e!3224936)))

(declare-fun c!891248 () Bool)

(assert (=> d!1670611 (= c!891248 ((_ is Nil!60157) (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))

(assert (=> d!1670611 (= (size!39691 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) lt!2132424)))

(declare-fun b!5175579 () Bool)

(assert (=> b!5175579 (= e!3224936 0)))

(declare-fun b!5175580 () Bool)

(assert (=> b!5175580 (= e!3224936 (+ 1 (size!39691 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))))

(assert (= (and d!1670611 c!891248) b!5175579))

(assert (= (and d!1670611 (not c!891248)) b!5175580))

(declare-fun m!6230194 () Bool)

(assert (=> b!5175580 m!6230194))

(assert (=> b!5175518 d!1670611))

(declare-fun d!1670613 () Bool)

(declare-fun lt!2132425 () Int)

(assert (=> d!1670613 (>= lt!2132425 0)))

(declare-fun e!3224937 () Int)

(assert (=> d!1670613 (= lt!2132425 e!3224937)))

(declare-fun c!891249 () Bool)

(assert (=> d!1670613 (= c!891249 ((_ is Nil!60157) lt!2131949))))

(assert (=> d!1670613 (= (size!39691 lt!2131949) lt!2132425)))

(declare-fun b!5175581 () Bool)

(assert (=> b!5175581 (= e!3224937 0)))

(declare-fun b!5175582 () Bool)

(assert (=> b!5175582 (= e!3224937 (+ 1 (size!39691 (t!373434 lt!2131949))))))

(assert (= (and d!1670613 c!891249) b!5175581))

(assert (= (and d!1670613 (not c!891249)) b!5175582))

(declare-fun m!6230196 () Bool)

(assert (=> b!5175582 m!6230196))

(assert (=> b!5175518 d!1670613))

(declare-fun bs!1204108 () Bool)

(declare-fun d!1670615 () Bool)

(assert (= bs!1204108 (and d!1670615 d!1670255)))

(declare-fun lambda!258506 () Int)

(assert (=> bs!1204108 (= lambda!258506 lambda!258454)))

(declare-fun bs!1204109 () Bool)

(assert (= bs!1204109 (and d!1670615 d!1670257)))

(assert (=> bs!1204109 (= lambda!258506 lambda!258455)))

(declare-fun bs!1204110 () Bool)

(assert (= bs!1204110 (and d!1670615 d!1670299)))

(assert (=> bs!1204110 (= lambda!258506 lambda!258457)))

(declare-fun bs!1204111 () Bool)

(assert (= bs!1204111 (and d!1670615 d!1670345)))

(assert (=> bs!1204111 (= lambda!258506 lambda!258458)))

(assert (=> d!1670615 (= (inv!79884 setElem!32312) (forall!14155 (exprs!4539 setElem!32312) lambda!258506))))

(declare-fun bs!1204112 () Bool)

(assert (= bs!1204112 d!1670615))

(declare-fun m!6230198 () Bool)

(assert (=> bs!1204112 m!6230198))

(assert (=> setNonEmpty!32312 d!1670615))

(declare-fun b!5175584 () Bool)

(declare-fun e!3224938 () List!60281)

(assert (=> b!5175584 (= e!3224938 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) lt!2131886)))))

(declare-fun lt!2132426 () List!60281)

(declare-fun e!3224939 () Bool)

(declare-fun b!5175586 () Bool)

(assert (=> b!5175586 (= e!3224939 (or (not (= lt!2131886 Nil!60157)) (= lt!2132426 (t!373434 testedP!294))))))

(declare-fun d!1670617 () Bool)

(assert (=> d!1670617 e!3224939))

(declare-fun res!2199467 () Bool)

(assert (=> d!1670617 (=> (not res!2199467) (not e!3224939))))

(assert (=> d!1670617 (= res!2199467 (= (content!10659 lt!2132426) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 lt!2131886))))))

(assert (=> d!1670617 (= lt!2132426 e!3224938)))

(declare-fun c!891250 () Bool)

(assert (=> d!1670617 (= c!891250 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1670617 (= (++!13171 (t!373434 testedP!294) lt!2131886) lt!2132426)))

(declare-fun b!5175585 () Bool)

(declare-fun res!2199466 () Bool)

(assert (=> b!5175585 (=> (not res!2199466) (not e!3224939))))

(assert (=> b!5175585 (= res!2199466 (= (size!39691 lt!2132426) (+ (size!39691 (t!373434 testedP!294)) (size!39691 lt!2131886))))))

(declare-fun b!5175583 () Bool)

(assert (=> b!5175583 (= e!3224938 lt!2131886)))

(assert (= (and d!1670617 c!891250) b!5175583))

(assert (= (and d!1670617 (not c!891250)) b!5175584))

(assert (= (and d!1670617 res!2199467) b!5175585))

(assert (= (and b!5175585 res!2199466) b!5175586))

(declare-fun m!6230200 () Bool)

(assert (=> b!5175584 m!6230200))

(declare-fun m!6230202 () Bool)

(assert (=> d!1670617 m!6230202))

(assert (=> d!1670617 m!6229606))

(assert (=> d!1670617 m!6229656))

(declare-fun m!6230204 () Bool)

(assert (=> b!5175585 m!6230204))

(assert (=> b!5175585 m!6228998))

(assert (=> b!5175585 m!6229660))

(assert (=> b!5175329 d!1670617))

(assert (=> d!1670351 d!1670229))

(declare-fun d!1670619 () Bool)

(declare-fun e!3224940 () Bool)

(assert (=> d!1670619 e!3224940))

(declare-fun res!2199468 () Bool)

(assert (=> d!1670619 (=> (not res!2199468) (not e!3224940))))

(declare-fun lt!2132427 () List!60283)

(assert (=> d!1670619 (= res!2199468 (noDuplicate!1134 lt!2132427))))

(assert (=> d!1670619 (= lt!2132427 (choose!38423 z!4581))))

(assert (=> d!1670619 (= (toList!8456 z!4581) lt!2132427)))

(declare-fun b!5175587 () Bool)

(assert (=> b!5175587 (= e!3224940 (= (content!10660 lt!2132427) z!4581))))

(assert (= (and d!1670619 res!2199468) b!5175587))

(declare-fun m!6230206 () Bool)

(assert (=> d!1670619 m!6230206))

(declare-fun m!6230208 () Bool)

(assert (=> d!1670619 m!6230208))

(declare-fun m!6230210 () Bool)

(assert (=> b!5175587 m!6230210))

(assert (=> bm!363577 d!1670619))

(declare-fun b!5175588 () Bool)

(declare-fun e!3224943 () tuple2!63860)

(assert (=> b!5175588 (= e!3224943 (tuple2!63861 lt!2132253 Nil!60157))))

(declare-fun bm!363579 () Bool)

(declare-fun call!363590 () (InoxSet Context!8078))

(declare-fun call!363591 () C!29580)

(assert (=> bm!363579 (= call!363590 (derivationStepZipper!1001 call!363556 call!363591))))

(declare-fun b!5175589 () Bool)

(declare-fun e!3224941 () tuple2!63860)

(declare-fun lt!2132438 () tuple2!63860)

(assert (=> b!5175589 (= e!3224941 lt!2132438)))

(declare-fun b!5175590 () Bool)

(declare-fun e!3224945 () tuple2!63860)

(assert (=> b!5175590 (= e!3224945 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363580 () Bool)

(declare-fun call!363589 () List!60281)

(assert (=> bm!363580 (= call!363589 (tail!10172 call!363555))))

(declare-fun b!5175591 () Bool)

(declare-fun e!3224946 () tuple2!63860)

(declare-fun call!363584 () tuple2!63860)

(assert (=> b!5175591 (= e!3224946 call!363584)))

(declare-fun b!5175592 () Bool)

(assert (=> b!5175592 (= e!3224941 (tuple2!63861 lt!2132253 call!363555))))

(declare-fun bm!363581 () Bool)

(declare-fun call!363587 () Unit!151938)

(assert (=> bm!363581 (= call!363587 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2132253 input!5817))))

(declare-fun b!5175593 () Bool)

(declare-fun c!891251 () Bool)

(declare-fun call!363588 () Bool)

(assert (=> b!5175593 (= c!891251 call!363588)))

(declare-fun lt!2132453 () Unit!151938)

(declare-fun lt!2132431 () Unit!151938)

(assert (=> b!5175593 (= lt!2132453 lt!2132431)))

(assert (=> b!5175593 (= input!5817 lt!2132253)))

(assert (=> b!5175593 (= lt!2132431 call!363587)))

(declare-fun lt!2132443 () Unit!151938)

(declare-fun lt!2132440 () Unit!151938)

(assert (=> b!5175593 (= lt!2132443 lt!2132440)))

(declare-fun call!363585 () Bool)

(assert (=> b!5175593 call!363585))

(declare-fun call!363586 () Unit!151938)

(assert (=> b!5175593 (= lt!2132440 call!363586)))

(declare-fun e!3224948 () tuple2!63860)

(assert (=> b!5175593 (= e!3224948 e!3224943)))

(declare-fun b!5175594 () Bool)

(assert (=> b!5175594 (= e!3224946 e!3224941)))

(assert (=> b!5175594 (= lt!2132438 call!363584)))

(declare-fun c!891252 () Bool)

(assert (=> b!5175594 (= c!891252 (isEmpty!32207 (_1!35233 lt!2132438)))))

(declare-fun d!1670621 () Bool)

(declare-fun e!3224947 () Bool)

(assert (=> d!1670621 e!3224947))

(declare-fun res!2199470 () Bool)

(assert (=> d!1670621 (=> (not res!2199470) (not e!3224947))))

(declare-fun lt!2132433 () tuple2!63860)

(assert (=> d!1670621 (= res!2199470 (= (++!13171 (_1!35233 lt!2132433) (_2!35233 lt!2132433)) input!5817))))

(assert (=> d!1670621 (= lt!2132433 e!3224945)))

(declare-fun c!891255 () Bool)

(assert (=> d!1670621 (= c!891255 (lostCauseZipper!1342 call!363556))))

(declare-fun lt!2132429 () Unit!151938)

(declare-fun Unit!151974 () Unit!151938)

(assert (=> d!1670621 (= lt!2132429 Unit!151974)))

(assert (=> d!1670621 (= (getSuffix!3436 input!5817 lt!2132253) call!363555)))

(declare-fun lt!2132442 () Unit!151938)

(declare-fun lt!2132434 () Unit!151938)

(assert (=> d!1670621 (= lt!2132442 lt!2132434)))

(declare-fun lt!2132430 () List!60281)

(assert (=> d!1670621 (= call!363555 lt!2132430)))

(assert (=> d!1670621 (= lt!2132434 (lemmaSamePrefixThenSameSuffix!2709 lt!2132253 call!363555 lt!2132253 lt!2132430 input!5817))))

(assert (=> d!1670621 (= lt!2132430 (getSuffix!3436 input!5817 lt!2132253))))

(declare-fun lt!2132451 () Unit!151938)

(declare-fun lt!2132437 () Unit!151938)

(assert (=> d!1670621 (= lt!2132451 lt!2132437)))

(assert (=> d!1670621 (isPrefix!5788 lt!2132253 (++!13171 lt!2132253 call!363555))))

(assert (=> d!1670621 (= lt!2132437 (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2132253 call!363555))))

(assert (=> d!1670621 (= (++!13171 lt!2132253 call!363555) input!5817)))

(assert (=> d!1670621 (= (findLongestMatchInnerZipper!311 call!363556 lt!2132253 (+ lt!2131873 1 1) call!363555 input!5817 lt!2131877) lt!2132433)))

(declare-fun bm!363582 () Bool)

(assert (=> bm!363582 (= call!363588 (nullableZipper!1193 call!363556))))

(declare-fun bm!363583 () Bool)

(assert (=> bm!363583 (= call!363591 (head!11073 call!363555))))

(declare-fun b!5175595 () Bool)

(declare-fun e!3224944 () Bool)

(assert (=> b!5175595 (= e!3224944 (>= (size!39691 (_1!35233 lt!2132433)) (size!39691 lt!2132253)))))

(declare-fun b!5175596 () Bool)

(assert (=> b!5175596 (= e!3224945 e!3224948)))

(declare-fun c!891254 () Bool)

(assert (=> b!5175596 (= c!891254 (= (+ lt!2131873 1 1) lt!2131877))))

(declare-fun lt!2132444 () List!60281)

(declare-fun bm!363584 () Bool)

(assert (=> bm!363584 (= call!363584 (findLongestMatchInnerZipper!311 call!363590 lt!2132444 (+ lt!2131873 1 1 1) call!363589 input!5817 lt!2131877))))

(declare-fun b!5175597 () Bool)

(declare-fun e!3224942 () Unit!151938)

(declare-fun Unit!151975 () Unit!151938)

(assert (=> b!5175597 (= e!3224942 Unit!151975)))

(declare-fun lt!2132450 () Unit!151938)

(assert (=> b!5175597 (= lt!2132450 call!363586)))

(assert (=> b!5175597 call!363585))

(declare-fun lt!2132449 () Unit!151938)

(assert (=> b!5175597 (= lt!2132449 lt!2132450)))

(declare-fun lt!2132439 () Unit!151938)

(assert (=> b!5175597 (= lt!2132439 call!363587)))

(assert (=> b!5175597 (= input!5817 lt!2132253)))

(declare-fun lt!2132436 () Unit!151938)

(assert (=> b!5175597 (= lt!2132436 lt!2132439)))

(assert (=> b!5175597 false))

(declare-fun bm!363585 () Bool)

(assert (=> bm!363585 (= call!363586 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5175598 () Bool)

(declare-fun c!891256 () Bool)

(assert (=> b!5175598 (= c!891256 call!363588)))

(declare-fun lt!2132441 () Unit!151938)

(declare-fun lt!2132432 () Unit!151938)

(assert (=> b!5175598 (= lt!2132441 lt!2132432)))

(declare-fun lt!2132448 () C!29580)

(declare-fun lt!2132435 () List!60281)

(assert (=> b!5175598 (= (++!13171 (++!13171 lt!2132253 (Cons!60157 lt!2132448 Nil!60157)) lt!2132435) input!5817)))

(assert (=> b!5175598 (= lt!2132432 (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2132253 lt!2132448 lt!2132435 input!5817))))

(assert (=> b!5175598 (= lt!2132435 (tail!10172 call!363555))))

(assert (=> b!5175598 (= lt!2132448 (head!11073 call!363555))))

(declare-fun lt!2132447 () Unit!151938)

(declare-fun lt!2132428 () Unit!151938)

(assert (=> b!5175598 (= lt!2132447 lt!2132428)))

(assert (=> b!5175598 (isPrefix!5788 (++!13171 lt!2132253 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2132253)) Nil!60157)) input!5817)))

(assert (=> b!5175598 (= lt!2132428 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2132253 input!5817))))

(assert (=> b!5175598 (= lt!2132444 (++!13171 lt!2132253 (Cons!60157 (head!11073 call!363555) Nil!60157)))))

(declare-fun lt!2132446 () Unit!151938)

(assert (=> b!5175598 (= lt!2132446 e!3224942)))

(declare-fun c!891253 () Bool)

(assert (=> b!5175598 (= c!891253 (= (size!39691 lt!2132253) (size!39691 input!5817)))))

(declare-fun lt!2132445 () Unit!151938)

(declare-fun lt!2132452 () Unit!151938)

(assert (=> b!5175598 (= lt!2132445 lt!2132452)))

(assert (=> b!5175598 (<= (size!39691 lt!2132253) (size!39691 input!5817))))

(assert (=> b!5175598 (= lt!2132452 (lemmaIsPrefixThenSmallerEqSize!949 lt!2132253 input!5817))))

(assert (=> b!5175598 (= e!3224948 e!3224946)))

(declare-fun b!5175599 () Bool)

(declare-fun Unit!151976 () Unit!151938)

(assert (=> b!5175599 (= e!3224942 Unit!151976)))

(declare-fun b!5175600 () Bool)

(assert (=> b!5175600 (= e!3224943 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363586 () Bool)

(assert (=> bm!363586 (= call!363585 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5175601 () Bool)

(assert (=> b!5175601 (= e!3224947 e!3224944)))

(declare-fun res!2199469 () Bool)

(assert (=> b!5175601 (=> res!2199469 e!3224944)))

(assert (=> b!5175601 (= res!2199469 (isEmpty!32207 (_1!35233 lt!2132433)))))

(assert (= (and d!1670621 c!891255) b!5175590))

(assert (= (and d!1670621 (not c!891255)) b!5175596))

(assert (= (and b!5175596 c!891254) b!5175593))

(assert (= (and b!5175596 (not c!891254)) b!5175598))

(assert (= (and b!5175593 c!891251) b!5175588))

(assert (= (and b!5175593 (not c!891251)) b!5175600))

(assert (= (and b!5175598 c!891253) b!5175597))

(assert (= (and b!5175598 (not c!891253)) b!5175599))

(assert (= (and b!5175598 c!891256) b!5175594))

(assert (= (and b!5175598 (not c!891256)) b!5175591))

(assert (= (and b!5175594 c!891252) b!5175592))

(assert (= (and b!5175594 (not c!891252)) b!5175589))

(assert (= (or b!5175594 b!5175591) bm!363580))

(assert (= (or b!5175594 b!5175591) bm!363583))

(assert (= (or b!5175594 b!5175591) bm!363579))

(assert (= (or b!5175594 b!5175591) bm!363584))

(assert (= (or b!5175593 b!5175597) bm!363585))

(assert (= (or b!5175593 b!5175598) bm!363582))

(assert (= (or b!5175593 b!5175597) bm!363586))

(assert (= (or b!5175593 b!5175597) bm!363581))

(assert (= (and d!1670621 res!2199470) b!5175601))

(assert (= (and b!5175601 (not res!2199469)) b!5175595))

(declare-fun m!6230212 () Bool)

(assert (=> b!5175594 m!6230212))

(declare-fun m!6230214 () Bool)

(assert (=> b!5175598 m!6230214))

(assert (=> b!5175598 m!6228940))

(declare-fun m!6230216 () Bool)

(assert (=> b!5175598 m!6230216))

(declare-fun m!6230218 () Bool)

(assert (=> b!5175598 m!6230218))

(declare-fun m!6230220 () Bool)

(assert (=> b!5175598 m!6230220))

(declare-fun m!6230222 () Bool)

(assert (=> b!5175598 m!6230222))

(assert (=> b!5175598 m!6230218))

(declare-fun m!6230224 () Bool)

(assert (=> b!5175598 m!6230224))

(declare-fun m!6230226 () Bool)

(assert (=> b!5175598 m!6230226))

(declare-fun m!6230228 () Bool)

(assert (=> b!5175598 m!6230228))

(assert (=> b!5175598 m!6230214))

(declare-fun m!6230230 () Bool)

(assert (=> b!5175598 m!6230230))

(declare-fun m!6230232 () Bool)

(assert (=> b!5175598 m!6230232))

(declare-fun m!6230234 () Bool)

(assert (=> b!5175598 m!6230234))

(assert (=> b!5175598 m!6230228))

(declare-fun m!6230236 () Bool)

(assert (=> b!5175598 m!6230236))

(declare-fun m!6230238 () Bool)

(assert (=> b!5175598 m!6230238))

(assert (=> bm!363585 m!6228930))

(assert (=> bm!363583 m!6230220))

(declare-fun m!6230240 () Bool)

(assert (=> bm!363582 m!6230240))

(declare-fun m!6230242 () Bool)

(assert (=> b!5175595 m!6230242))

(assert (=> b!5175595 m!6230234))

(assert (=> bm!363586 m!6228932))

(declare-fun m!6230244 () Bool)

(assert (=> bm!363579 m!6230244))

(assert (=> bm!363580 m!6230232))

(assert (=> d!1670621 m!6230214))

(declare-fun m!6230246 () Bool)

(assert (=> d!1670621 m!6230246))

(declare-fun m!6230248 () Bool)

(assert (=> d!1670621 m!6230248))

(declare-fun m!6230250 () Bool)

(assert (=> d!1670621 m!6230250))

(declare-fun m!6230252 () Bool)

(assert (=> d!1670621 m!6230252))

(declare-fun m!6230254 () Bool)

(assert (=> d!1670621 m!6230254))

(assert (=> d!1670621 m!6230252))

(declare-fun m!6230256 () Bool)

(assert (=> d!1670621 m!6230256))

(declare-fun m!6230258 () Bool)

(assert (=> bm!363584 m!6230258))

(declare-fun m!6230260 () Bool)

(assert (=> b!5175601 m!6230260))

(declare-fun m!6230262 () Bool)

(assert (=> bm!363581 m!6230262))

(assert (=> bm!363550 d!1670621))

(declare-fun d!1670623 () Bool)

(assert (=> d!1670623 (= (head!11073 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) (h!66605 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(assert (=> b!5175475 d!1670623))

(assert (=> b!5175475 d!1670365))

(declare-fun bs!1204113 () Bool)

(declare-fun d!1670625 () Bool)

(assert (= bs!1204113 (and d!1670625 b!5175502)))

(declare-fun lambda!258509 () Int)

(assert (=> bs!1204113 (not (= lambda!258509 lambda!258503))))

(declare-fun bs!1204114 () Bool)

(assert (= bs!1204114 (and d!1670625 d!1670237)))

(assert (=> bs!1204114 (not (= lambda!258509 lambda!258451))))

(declare-fun bs!1204115 () Bool)

(assert (= bs!1204115 (and d!1670625 b!5175503)))

(assert (=> bs!1204115 (not (= lambda!258509 lambda!258504))))

(declare-fun bs!1204116 () Bool)

(assert (= bs!1204116 (and d!1670625 b!5175436)))

(assert (=> bs!1204116 (not (= lambda!258509 lambda!258499))))

(declare-fun bs!1204117 () Bool)

(assert (= bs!1204117 (and d!1670625 d!1670469)))

(assert (=> bs!1204117 (not (= lambda!258509 lambda!258498))))

(declare-fun bs!1204118 () Bool)

(assert (= bs!1204118 (and d!1670625 b!5175437)))

(assert (=> bs!1204118 (not (= lambda!258509 lambda!258500))))

(declare-fun bs!1204119 () Bool)

(assert (= bs!1204119 (and d!1670625 d!1670427)))

(assert (=> bs!1204119 (not (= lambda!258509 lambda!258480))))

(declare-fun bs!1204120 () Bool)

(assert (= bs!1204120 (and d!1670625 d!1670557)))

(assert (=> bs!1204120 (not (= lambda!258509 lambda!258502))))

(assert (=> d!1670625 true))

(declare-fun order!27035 () Int)

(declare-fun dynLambda!23879 (Int Int) Int)

(assert (=> d!1670625 (< (dynLambda!23879 order!27035 lambda!258451) (dynLambda!23879 order!27035 lambda!258509))))

(declare-fun forall!14158 (List!60283 Int) Bool)

(assert (=> d!1670625 (= (exists!1937 (toList!8456 z!4581) lambda!258451) (not (forall!14158 (toList!8456 z!4581) lambda!258509)))))

(declare-fun bs!1204121 () Bool)

(assert (= bs!1204121 d!1670625))

(assert (=> bs!1204121 m!6229488))

(declare-fun m!6230264 () Bool)

(assert (=> bs!1204121 m!6230264))

(assert (=> d!1670341 d!1670625))

(assert (=> d!1670341 d!1670619))

(declare-fun d!1670627 () Bool)

(declare-fun res!2199473 () Bool)

(assert (=> d!1670627 (= res!2199473 (exists!1937 (toList!8456 z!4581) lambda!258451))))

(assert (=> d!1670627 true))

(assert (=> d!1670627 (= (choose!38416 z!4581 lambda!258451) res!2199473)))

(declare-fun bs!1204122 () Bool)

(assert (= bs!1204122 d!1670627))

(assert (=> bs!1204122 m!6229488))

(assert (=> bs!1204122 m!6229488))

(assert (=> bs!1204122 m!6229490))

(assert (=> d!1670341 d!1670627))

(declare-fun d!1670629 () Bool)

(declare-fun e!3224950 () Bool)

(assert (=> d!1670629 e!3224950))

(declare-fun res!2199475 () Bool)

(assert (=> d!1670629 (=> res!2199475 e!3224950)))

(declare-fun lt!2132454 () Bool)

(assert (=> d!1670629 (= res!2199475 (not lt!2132454))))

(declare-fun e!3224951 () Bool)

(assert (=> d!1670629 (= lt!2132454 e!3224951)))

(declare-fun res!2199474 () Bool)

(assert (=> d!1670629 (=> res!2199474 e!3224951)))

(assert (=> d!1670629 (= res!2199474 ((_ is Nil!60157) (tail!10172 testedP!294)))))

(assert (=> d!1670629 (= (isPrefix!5788 (tail!10172 testedP!294) (tail!10172 (++!13171 testedP!294 lt!2131871))) lt!2132454)))

(declare-fun b!5175607 () Bool)

(assert (=> b!5175607 (= e!3224950 (>= (size!39691 (tail!10172 (++!13171 testedP!294 lt!2131871))) (size!39691 (tail!10172 testedP!294))))))

(declare-fun b!5175604 () Bool)

(declare-fun e!3224949 () Bool)

(assert (=> b!5175604 (= e!3224951 e!3224949)))

(declare-fun res!2199476 () Bool)

(assert (=> b!5175604 (=> (not res!2199476) (not e!3224949))))

(assert (=> b!5175604 (= res!2199476 (not ((_ is Nil!60157) (tail!10172 (++!13171 testedP!294 lt!2131871)))))))

(declare-fun b!5175606 () Bool)

(assert (=> b!5175606 (= e!3224949 (isPrefix!5788 (tail!10172 (tail!10172 testedP!294)) (tail!10172 (tail!10172 (++!13171 testedP!294 lt!2131871)))))))

(declare-fun b!5175605 () Bool)

(declare-fun res!2199477 () Bool)

(assert (=> b!5175605 (=> (not res!2199477) (not e!3224949))))

(assert (=> b!5175605 (= res!2199477 (= (head!11073 (tail!10172 testedP!294)) (head!11073 (tail!10172 (++!13171 testedP!294 lt!2131871)))))))

(assert (= (and d!1670629 (not res!2199474)) b!5175604))

(assert (= (and b!5175604 res!2199476) b!5175605))

(assert (= (and b!5175605 res!2199477) b!5175606))

(assert (= (and d!1670629 (not res!2199475)) b!5175607))

(assert (=> b!5175607 m!6230098))

(declare-fun m!6230266 () Bool)

(assert (=> b!5175607 m!6230266))

(assert (=> b!5175607 m!6229238))

(assert (=> b!5175607 m!6230044))

(assert (=> b!5175606 m!6229238))

(assert (=> b!5175606 m!6230046))

(assert (=> b!5175606 m!6230098))

(declare-fun m!6230268 () Bool)

(assert (=> b!5175606 m!6230268))

(assert (=> b!5175606 m!6230046))

(assert (=> b!5175606 m!6230268))

(declare-fun m!6230270 () Bool)

(assert (=> b!5175606 m!6230270))

(assert (=> b!5175605 m!6229238))

(assert (=> b!5175605 m!6230050))

(assert (=> b!5175605 m!6230098))

(declare-fun m!6230272 () Bool)

(assert (=> b!5175605 m!6230272))

(assert (=> b!5175514 d!1670629))

(assert (=> b!5175514 d!1670549))

(declare-fun d!1670631 () Bool)

(assert (=> d!1670631 (= (tail!10172 (++!13171 testedP!294 lt!2131871)) (t!373434 (++!13171 testedP!294 lt!2131871)))))

(assert (=> b!5175514 d!1670631))

(declare-fun d!1670633 () Bool)

(declare-fun lt!2132455 () Int)

(assert (=> d!1670633 (>= lt!2132455 0)))

(declare-fun e!3224952 () Int)

(assert (=> d!1670633 (= lt!2132455 e!3224952)))

(declare-fun c!891257 () Bool)

(assert (=> d!1670633 (= c!891257 ((_ is Nil!60157) lt!2132318))))

(assert (=> d!1670633 (= (size!39691 lt!2132318) lt!2132455)))

(declare-fun b!5175608 () Bool)

(assert (=> b!5175608 (= e!3224952 0)))

(declare-fun b!5175609 () Bool)

(assert (=> b!5175609 (= e!3224952 (+ 1 (size!39691 (t!373434 lt!2132318))))))

(assert (= (and d!1670633 c!891257) b!5175608))

(assert (= (and d!1670633 (not c!891257)) b!5175609))

(declare-fun m!6230274 () Bool)

(assert (=> b!5175609 m!6230274))

(assert (=> b!5175376 d!1670633))

(assert (=> b!5175376 d!1670369))

(assert (=> b!5175376 d!1670357))

(assert (=> d!1670571 d!1670573))

(assert (=> d!1670571 d!1670577))

(declare-fun d!1670635 () Bool)

(assert (=> d!1670635 (= (++!13171 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)) lt!2131949) input!5817)))

(assert (=> d!1670635 true))

(declare-fun _$68!864 () Unit!151938)

(assert (=> d!1670635 (= (choose!38414 testedP!294 lt!2131962 lt!2131949 input!5817) _$68!864)))

(declare-fun bs!1204123 () Bool)

(assert (= bs!1204123 d!1670635))

(assert (=> bs!1204123 m!6228964))

(assert (=> bs!1204123 m!6228964))

(assert (=> bs!1204123 m!6228968))

(assert (=> d!1670571 d!1670635))

(declare-fun e!3224953 () List!60281)

(declare-fun b!5175611 () Bool)

(assert (=> b!5175611 (= e!3224953 (Cons!60157 (h!66605 testedP!294) (++!13171 (t!373434 testedP!294) (Cons!60157 lt!2131962 lt!2131949))))))

(declare-fun e!3224954 () Bool)

(declare-fun b!5175613 () Bool)

(declare-fun lt!2132456 () List!60281)

(assert (=> b!5175613 (= e!3224954 (or (not (= (Cons!60157 lt!2131962 lt!2131949) Nil!60157)) (= lt!2132456 testedP!294)))))

(declare-fun d!1670637 () Bool)

(assert (=> d!1670637 e!3224954))

(declare-fun res!2199479 () Bool)

(assert (=> d!1670637 (=> (not res!2199479) (not e!3224954))))

(assert (=> d!1670637 (= res!2199479 (= (content!10659 lt!2132456) ((_ map or) (content!10659 testedP!294) (content!10659 (Cons!60157 lt!2131962 lt!2131949)))))))

(assert (=> d!1670637 (= lt!2132456 e!3224953)))

(declare-fun c!891258 () Bool)

(assert (=> d!1670637 (= c!891258 ((_ is Nil!60157) testedP!294))))

(assert (=> d!1670637 (= (++!13171 testedP!294 (Cons!60157 lt!2131962 lt!2131949)) lt!2132456)))

(declare-fun b!5175612 () Bool)

(declare-fun res!2199478 () Bool)

(assert (=> b!5175612 (=> (not res!2199478) (not e!3224954))))

(assert (=> b!5175612 (= res!2199478 (= (size!39691 lt!2132456) (+ (size!39691 testedP!294) (size!39691 (Cons!60157 lt!2131962 lt!2131949)))))))

(declare-fun b!5175610 () Bool)

(assert (=> b!5175610 (= e!3224953 (Cons!60157 lt!2131962 lt!2131949))))

(assert (= (and d!1670637 c!891258) b!5175610))

(assert (= (and d!1670637 (not c!891258)) b!5175611))

(assert (= (and d!1670637 res!2199479) b!5175612))

(assert (= (and b!5175612 res!2199478) b!5175613))

(declare-fun m!6230276 () Bool)

(assert (=> b!5175611 m!6230276))

(declare-fun m!6230278 () Bool)

(assert (=> d!1670637 m!6230278))

(assert (=> d!1670637 m!6229220))

(declare-fun m!6230280 () Bool)

(assert (=> d!1670637 m!6230280))

(declare-fun m!6230282 () Bool)

(assert (=> b!5175612 m!6230282))

(assert (=> b!5175612 m!6228936))

(declare-fun m!6230284 () Bool)

(assert (=> b!5175612 m!6230284))

(assert (=> d!1670571 d!1670637))

(declare-fun bs!1204124 () Bool)

(declare-fun d!1670639 () Bool)

(assert (= bs!1204124 (and d!1670639 b!5175502)))

(declare-fun lambda!258510 () Int)

(assert (=> bs!1204124 (not (= lambda!258510 lambda!258503))))

(declare-fun bs!1204125 () Bool)

(assert (= bs!1204125 (and d!1670639 d!1670237)))

(assert (=> bs!1204125 (= lambda!258510 lambda!258451)))

(declare-fun bs!1204126 () Bool)

(assert (= bs!1204126 (and d!1670639 b!5175503)))

(assert (=> bs!1204126 (not (= lambda!258510 lambda!258504))))

(declare-fun bs!1204127 () Bool)

(assert (= bs!1204127 (and d!1670639 b!5175436)))

(assert (=> bs!1204127 (not (= lambda!258510 lambda!258499))))

(declare-fun bs!1204128 () Bool)

(assert (= bs!1204128 (and d!1670639 b!5175437)))

(assert (=> bs!1204128 (not (= lambda!258510 lambda!258500))))

(declare-fun bs!1204129 () Bool)

(assert (= bs!1204129 (and d!1670639 d!1670427)))

(assert (=> bs!1204129 (= lambda!258510 lambda!258480)))

(declare-fun bs!1204130 () Bool)

(assert (= bs!1204130 (and d!1670639 d!1670557)))

(assert (=> bs!1204130 (not (= lambda!258510 lambda!258502))))

(declare-fun bs!1204131 () Bool)

(assert (= bs!1204131 (and d!1670639 d!1670625)))

(assert (=> bs!1204131 (not (= lambda!258510 lambda!258509))))

(declare-fun bs!1204132 () Bool)

(assert (= bs!1204132 (and d!1670639 d!1670469)))

(assert (=> bs!1204132 (not (= lambda!258510 lambda!258498))))

(assert (=> d!1670639 (= (nullableZipper!1193 call!363502) (exists!1936 call!363502 lambda!258510))))

(declare-fun bs!1204133 () Bool)

(assert (= bs!1204133 d!1670639))

(declare-fun m!6230286 () Bool)

(assert (=> bs!1204133 m!6230286))

(assert (=> bm!363556 d!1670639))

(declare-fun d!1670641 () Bool)

(declare-fun lt!2132457 () Int)

(assert (=> d!1670641 (>= lt!2132457 0)))

(declare-fun e!3224955 () Int)

(assert (=> d!1670641 (= lt!2132457 e!3224955)))

(declare-fun c!891259 () Bool)

(assert (=> d!1670641 (= c!891259 ((_ is Nil!60157) lt!2132198))))

(assert (=> d!1670641 (= (size!39691 lt!2132198) lt!2132457)))

(declare-fun b!5175614 () Bool)

(assert (=> b!5175614 (= e!3224955 0)))

(declare-fun b!5175615 () Bool)

(assert (=> b!5175615 (= e!3224955 (+ 1 (size!39691 (t!373434 lt!2132198))))))

(assert (= (and d!1670641 c!891259) b!5175614))

(assert (= (and d!1670641 (not c!891259)) b!5175615))

(declare-fun m!6230288 () Bool)

(assert (=> b!5175615 m!6230288))

(assert (=> b!5175250 d!1670641))

(assert (=> b!5175250 d!1670249))

(declare-fun d!1670643 () Bool)

(declare-fun lt!2132458 () Int)

(assert (=> d!1670643 (>= lt!2132458 0)))

(declare-fun e!3224956 () Int)

(assert (=> d!1670643 (= lt!2132458 e!3224956)))

(declare-fun c!891260 () Bool)

(assert (=> d!1670643 (= c!891260 ((_ is Nil!60157) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))

(assert (=> d!1670643 (= (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) lt!2132458)))

(declare-fun b!5175616 () Bool)

(assert (=> b!5175616 (= e!3224956 0)))

(declare-fun b!5175617 () Bool)

(assert (=> b!5175617 (= e!3224956 (+ 1 (size!39691 (t!373434 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(assert (= (and d!1670643 c!891260) b!5175616))

(assert (= (and d!1670643 (not c!891260)) b!5175617))

(declare-fun m!6230290 () Bool)

(assert (=> b!5175617 m!6230290))

(assert (=> b!5175250 d!1670643))

(declare-fun b!5175619 () Bool)

(declare-fun e!3224957 () List!60281)

(assert (=> b!5175619 (= e!3224957 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) (Cons!60157 (head!11073 lt!2131871) Nil!60157))))))

(declare-fun b!5175621 () Bool)

(declare-fun lt!2132459 () List!60281)

(declare-fun e!3224958 () Bool)

(assert (=> b!5175621 (= e!3224958 (or (not (= (Cons!60157 (head!11073 lt!2131871) Nil!60157) Nil!60157)) (= lt!2132459 (t!373434 testedP!294))))))

(declare-fun d!1670645 () Bool)

(assert (=> d!1670645 e!3224958))

(declare-fun res!2199481 () Bool)

(assert (=> d!1670645 (=> (not res!2199481) (not e!3224958))))

(assert (=> d!1670645 (= res!2199481 (= (content!10659 lt!2132459) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(assert (=> d!1670645 (= lt!2132459 e!3224957)))

(declare-fun c!891261 () Bool)

(assert (=> d!1670645 (= c!891261 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1670645 (= (++!13171 (t!373434 testedP!294) (Cons!60157 (head!11073 lt!2131871) Nil!60157)) lt!2132459)))

(declare-fun b!5175620 () Bool)

(declare-fun res!2199480 () Bool)

(assert (=> b!5175620 (=> (not res!2199480) (not e!3224958))))

(assert (=> b!5175620 (= res!2199480 (= (size!39691 lt!2132459) (+ (size!39691 (t!373434 testedP!294)) (size!39691 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(declare-fun b!5175618 () Bool)

(assert (=> b!5175618 (= e!3224957 (Cons!60157 (head!11073 lt!2131871) Nil!60157))))

(assert (= (and d!1670645 c!891261) b!5175618))

(assert (= (and d!1670645 (not c!891261)) b!5175619))

(assert (= (and d!1670645 res!2199481) b!5175620))

(assert (= (and b!5175620 res!2199480) b!5175621))

(declare-fun m!6230292 () Bool)

(assert (=> b!5175619 m!6230292))

(declare-fun m!6230294 () Bool)

(assert (=> d!1670645 m!6230294))

(assert (=> d!1670645 m!6229606))

(assert (=> d!1670645 m!6230128))

(declare-fun m!6230296 () Bool)

(assert (=> b!5175620 m!6230296))

(assert (=> b!5175620 m!6228998))

(assert (=> b!5175620 m!6230132))

(assert (=> b!5175521 d!1670645))

(declare-fun d!1670647 () Bool)

(declare-fun lt!2132460 () Int)

(assert (=> d!1670647 (>= lt!2132460 0)))

(declare-fun e!3224959 () Int)

(assert (=> d!1670647 (= lt!2132460 e!3224959)))

(declare-fun c!891262 () Bool)

(assert (=> d!1670647 (= c!891262 ((_ is Nil!60157) (t!373434 lt!2132138)))))

(assert (=> d!1670647 (= (size!39691 (t!373434 lt!2132138)) lt!2132460)))

(declare-fun b!5175622 () Bool)

(assert (=> b!5175622 (= e!3224959 0)))

(declare-fun b!5175623 () Bool)

(assert (=> b!5175623 (= e!3224959 (+ 1 (size!39691 (t!373434 (t!373434 lt!2132138)))))))

(assert (= (and d!1670647 c!891262) b!5175622))

(assert (= (and d!1670647 (not c!891262)) b!5175623))

(declare-fun m!6230298 () Bool)

(assert (=> b!5175623 m!6230298))

(assert (=> b!5175271 d!1670647))

(declare-fun d!1670649 () Bool)

(declare-fun c!891263 () Bool)

(assert (=> d!1670649 (= c!891263 ((_ is Cons!60157) (t!373434 (t!373434 testedP!294))))))

(declare-fun e!3224960 () (InoxSet Context!8078))

(assert (=> d!1670649 (= (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (h!66605 (t!373434 testedP!294))) (t!373434 (t!373434 testedP!294))) e!3224960)))

(declare-fun b!5175624 () Bool)

(assert (=> b!5175624 (= e!3224960 (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (h!66605 (t!373434 testedP!294))) (h!66605 (t!373434 (t!373434 testedP!294)))) (t!373434 (t!373434 (t!373434 testedP!294)))))))

(declare-fun b!5175625 () Bool)

(assert (=> b!5175625 (= e!3224960 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (h!66605 (t!373434 testedP!294))))))

(assert (= (and d!1670649 c!891263) b!5175624))

(assert (= (and d!1670649 (not c!891263)) b!5175625))

(assert (=> b!5175624 m!6229762))

(declare-fun m!6230300 () Bool)

(assert (=> b!5175624 m!6230300))

(assert (=> b!5175624 m!6230300))

(declare-fun m!6230302 () Bool)

(assert (=> b!5175624 m!6230302))

(assert (=> b!5175366 d!1670649))

(declare-fun bs!1204134 () Bool)

(declare-fun d!1670651 () Bool)

(assert (= bs!1204134 (and d!1670651 d!1670435)))

(declare-fun lambda!258511 () Int)

(assert (=> bs!1204134 (= (= (h!66605 (t!373434 testedP!294)) (h!66605 testedP!294)) (= lambda!258511 lambda!258481))))

(declare-fun bs!1204135 () Bool)

(assert (= bs!1204135 (and d!1670651 d!1670555)))

(assert (=> bs!1204135 (= (= (h!66605 (t!373434 testedP!294)) (h!66605 lt!2131870)) (= lambda!258511 lambda!258501))))

(declare-fun bs!1204136 () Bool)

(assert (= bs!1204136 (and d!1670651 d!1670367)))

(assert (=> bs!1204136 (= (= (h!66605 (t!373434 testedP!294)) call!363495) (= lambda!258511 lambda!258471))))

(declare-fun bs!1204137 () Bool)

(assert (= bs!1204137 (and d!1670651 d!1670179)))

(assert (=> bs!1204137 (= (= (h!66605 (t!373434 testedP!294)) lt!2131872) (= lambda!258511 lambda!258448))))

(declare-fun bs!1204138 () Bool)

(assert (= bs!1204138 (and d!1670651 d!1670569)))

(assert (=> bs!1204138 (= (= (h!66605 (t!373434 testedP!294)) call!363503) (= lambda!258511 lambda!258505))))

(assert (=> d!1670651 true))

(assert (=> d!1670651 (= (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) (h!66605 (t!373434 testedP!294))) (flatMap!458 (derivationStepZipper!1001 baseZ!62 (h!66605 testedP!294)) lambda!258511))))

(declare-fun bs!1204139 () Bool)

(assert (= bs!1204139 d!1670651))

(assert (=> bs!1204139 m!6229244))

(declare-fun m!6230304 () Bool)

(assert (=> bs!1204139 m!6230304))

(assert (=> b!5175366 d!1670651))

(declare-fun d!1670653 () Bool)

(declare-fun lt!2132461 () Int)

(assert (=> d!1670653 (>= lt!2132461 0)))

(declare-fun e!3224961 () Int)

(assert (=> d!1670653 (= lt!2132461 e!3224961)))

(declare-fun c!891264 () Bool)

(assert (=> d!1670653 (= c!891264 ((_ is Nil!60157) lt!2132196))))

(assert (=> d!1670653 (= (size!39691 lt!2132196) lt!2132461)))

(declare-fun b!5175626 () Bool)

(assert (=> b!5175626 (= e!3224961 0)))

(declare-fun b!5175627 () Bool)

(assert (=> b!5175627 (= e!3224961 (+ 1 (size!39691 (t!373434 lt!2132196))))))

(assert (= (and d!1670653 c!891264) b!5175626))

(assert (= (and d!1670653 (not c!891264)) b!5175627))

(declare-fun m!6230306 () Bool)

(assert (=> b!5175627 m!6230306))

(assert (=> b!5175242 d!1670653))

(assert (=> b!5175242 d!1670249))

(declare-fun d!1670655 () Bool)

(declare-fun lt!2132462 () Int)

(assert (=> d!1670655 (>= lt!2132462 0)))

(declare-fun e!3224962 () Int)

(assert (=> d!1670655 (= lt!2132462 e!3224962)))

(declare-fun c!891265 () Bool)

(assert (=> d!1670655 (= c!891265 ((_ is Nil!60157) (Cons!60157 lt!2131989 Nil!60157)))))

(assert (=> d!1670655 (= (size!39691 (Cons!60157 lt!2131989 Nil!60157)) lt!2132462)))

(declare-fun b!5175628 () Bool)

(assert (=> b!5175628 (= e!3224962 0)))

(declare-fun b!5175629 () Bool)

(assert (=> b!5175629 (= e!3224962 (+ 1 (size!39691 (t!373434 (Cons!60157 lt!2131989 Nil!60157)))))))

(assert (= (and d!1670655 c!891265) b!5175628))

(assert (= (and d!1670655 (not c!891265)) b!5175629))

(declare-fun m!6230308 () Bool)

(assert (=> b!5175629 m!6230308))

(assert (=> b!5175242 d!1670655))

(declare-fun d!1670657 () Bool)

(declare-fun c!891266 () Bool)

(assert (=> d!1670657 (= c!891266 ((_ is Nil!60157) lt!2132274))))

(declare-fun e!3224963 () (InoxSet C!29580))

(assert (=> d!1670657 (= (content!10659 lt!2132274) e!3224963)))

(declare-fun b!5175630 () Bool)

(assert (=> b!5175630 (= e!3224963 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175631 () Bool)

(assert (=> b!5175631 (= e!3224963 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132274) true) (content!10659 (t!373434 lt!2132274))))))

(assert (= (and d!1670657 c!891266) b!5175630))

(assert (= (and d!1670657 (not c!891266)) b!5175631))

(declare-fun m!6230310 () Bool)

(assert (=> b!5175631 m!6230310))

(declare-fun m!6230312 () Bool)

(assert (=> b!5175631 m!6230312))

(assert (=> d!1670407 d!1670657))

(assert (=> d!1670407 d!1670385))

(declare-fun d!1670659 () Bool)

(declare-fun c!891267 () Bool)

(assert (=> d!1670659 (= c!891267 ((_ is Nil!60157) lt!2131886))))

(declare-fun e!3224964 () (InoxSet C!29580))

(assert (=> d!1670659 (= (content!10659 lt!2131886) e!3224964)))

(declare-fun b!5175632 () Bool)

(assert (=> b!5175632 (= e!3224964 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175633 () Bool)

(assert (=> b!5175633 (= e!3224964 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2131886) true) (content!10659 (t!373434 lt!2131886))))))

(assert (= (and d!1670659 c!891267) b!5175632))

(assert (= (and d!1670659 (not c!891267)) b!5175633))

(declare-fun m!6230314 () Bool)

(assert (=> b!5175633 m!6230314))

(declare-fun m!6230316 () Bool)

(assert (=> b!5175633 m!6230316))

(assert (=> d!1670407 d!1670659))

(declare-fun bs!1204140 () Bool)

(declare-fun d!1670661 () Bool)

(assert (= bs!1204140 (and d!1670661 b!5175502)))

(declare-fun lambda!258512 () Int)

(assert (=> bs!1204140 (not (= lambda!258512 lambda!258503))))

(declare-fun bs!1204141 () Bool)

(assert (= bs!1204141 (and d!1670661 d!1670639)))

(assert (=> bs!1204141 (= lambda!258512 lambda!258510)))

(declare-fun bs!1204142 () Bool)

(assert (= bs!1204142 (and d!1670661 d!1670237)))

(assert (=> bs!1204142 (= lambda!258512 lambda!258451)))

(declare-fun bs!1204143 () Bool)

(assert (= bs!1204143 (and d!1670661 b!5175503)))

(assert (=> bs!1204143 (not (= lambda!258512 lambda!258504))))

(declare-fun bs!1204144 () Bool)

(assert (= bs!1204144 (and d!1670661 b!5175436)))

(assert (=> bs!1204144 (not (= lambda!258512 lambda!258499))))

(declare-fun bs!1204145 () Bool)

(assert (= bs!1204145 (and d!1670661 b!5175437)))

(assert (=> bs!1204145 (not (= lambda!258512 lambda!258500))))

(declare-fun bs!1204146 () Bool)

(assert (= bs!1204146 (and d!1670661 d!1670427)))

(assert (=> bs!1204146 (= lambda!258512 lambda!258480)))

(declare-fun bs!1204147 () Bool)

(assert (= bs!1204147 (and d!1670661 d!1670557)))

(assert (=> bs!1204147 (not (= lambda!258512 lambda!258502))))

(declare-fun bs!1204148 () Bool)

(assert (= bs!1204148 (and d!1670661 d!1670625)))

(assert (=> bs!1204148 (not (= lambda!258512 lambda!258509))))

(declare-fun bs!1204149 () Bool)

(assert (= bs!1204149 (and d!1670661 d!1670469)))

(assert (=> bs!1204149 (not (= lambda!258512 lambda!258498))))

(assert (=> d!1670661 (= (nullableZipper!1193 call!363494) (exists!1936 call!363494 lambda!258512))))

(declare-fun bs!1204150 () Bool)

(assert (= bs!1204150 d!1670661))

(declare-fun m!6230318 () Bool)

(assert (=> bs!1204150 m!6230318))

(assert (=> bm!363548 d!1670661))

(declare-fun d!1670663 () Bool)

(declare-fun lt!2132463 () List!60281)

(assert (=> d!1670663 (= (++!13171 (t!373434 (t!373434 testedP!294)) lt!2132463) (tail!10172 (tail!10172 input!5817)))))

(declare-fun e!3224965 () List!60281)

(assert (=> d!1670663 (= lt!2132463 e!3224965)))

(declare-fun c!891268 () Bool)

(assert (=> d!1670663 (= c!891268 ((_ is Cons!60157) (t!373434 (t!373434 testedP!294))))))

(assert (=> d!1670663 (>= (size!39691 (tail!10172 (tail!10172 input!5817))) (size!39691 (t!373434 (t!373434 testedP!294))))))

(assert (=> d!1670663 (= (getSuffix!3436 (tail!10172 (tail!10172 input!5817)) (t!373434 (t!373434 testedP!294))) lt!2132463)))

(declare-fun b!5175634 () Bool)

(assert (=> b!5175634 (= e!3224965 (getSuffix!3436 (tail!10172 (tail!10172 (tail!10172 input!5817))) (t!373434 (t!373434 (t!373434 testedP!294)))))))

(declare-fun b!5175635 () Bool)

(assert (=> b!5175635 (= e!3224965 (tail!10172 (tail!10172 input!5817)))))

(assert (= (and d!1670663 c!891268) b!5175634))

(assert (= (and d!1670663 (not c!891268)) b!5175635))

(declare-fun m!6230320 () Bool)

(assert (=> d!1670663 m!6230320))

(assert (=> d!1670663 m!6229500))

(declare-fun m!6230322 () Bool)

(assert (=> d!1670663 m!6230322))

(assert (=> d!1670663 m!6229516))

(assert (=> b!5175634 m!6229500))

(declare-fun m!6230324 () Bool)

(assert (=> b!5175634 m!6230324))

(assert (=> b!5175634 m!6230324))

(declare-fun m!6230326 () Bool)

(assert (=> b!5175634 m!6230326))

(assert (=> b!5175262 d!1670663))

(declare-fun d!1670665 () Bool)

(assert (=> d!1670665 (= (tail!10172 (tail!10172 input!5817)) (t!373434 (tail!10172 input!5817)))))

(assert (=> b!5175262 d!1670665))

(assert (=> d!1670565 d!1670567))

(assert (=> d!1670565 d!1670561))

(declare-fun d!1670667 () Bool)

(assert (=> d!1670667 (isPrefix!5788 testedP!294 (++!13171 testedP!294 lt!2131871))))

(assert (=> d!1670667 true))

(declare-fun _$46!1986 () Unit!151938)

(assert (=> d!1670667 (= (choose!38419 testedP!294 lt!2131871) _$46!1986)))

(declare-fun bs!1204151 () Bool)

(assert (= bs!1204151 d!1670667))

(assert (=> bs!1204151 m!6228988))

(assert (=> bs!1204151 m!6228988))

(assert (=> bs!1204151 m!6228992))

(assert (=> d!1670565 d!1670667))

(declare-fun d!1670669 () Bool)

(declare-fun lt!2132464 () List!60281)

(assert (=> d!1670669 (= (++!13171 (t!373434 lt!2131870) lt!2132464) (tail!10172 input!5817))))

(declare-fun e!3224966 () List!60281)

(assert (=> d!1670669 (= lt!2132464 e!3224966)))

(declare-fun c!891269 () Bool)

(assert (=> d!1670669 (= c!891269 ((_ is Cons!60157) (t!373434 lt!2131870)))))

(assert (=> d!1670669 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (t!373434 lt!2131870)))))

(assert (=> d!1670669 (= (getSuffix!3436 (tail!10172 input!5817) (t!373434 lt!2131870)) lt!2132464)))

(declare-fun b!5175636 () Bool)

(assert (=> b!5175636 (= e!3224966 (getSuffix!3436 (tail!10172 (tail!10172 input!5817)) (t!373434 (t!373434 lt!2131870))))))

(declare-fun b!5175637 () Bool)

(assert (=> b!5175637 (= e!3224966 (tail!10172 input!5817))))

(assert (= (and d!1670669 c!891269) b!5175636))

(assert (= (and d!1670669 (not c!891269)) b!5175637))

(declare-fun m!6230328 () Bool)

(assert (=> d!1670669 m!6230328))

(assert (=> d!1670669 m!6228956))

(assert (=> d!1670669 m!6229498))

(assert (=> d!1670669 m!6229250))

(assert (=> b!5175636 m!6228956))

(assert (=> b!5175636 m!6229500))

(assert (=> b!5175636 m!6229500))

(declare-fun m!6230330 () Bool)

(assert (=> b!5175636 m!6230330))

(assert (=> b!5175252 d!1670669))

(assert (=> b!5175252 d!1670349))

(assert (=> b!5175257 d!1670159))

(declare-fun d!1670671 () Bool)

(declare-fun lt!2132465 () Int)

(assert (=> d!1670671 (>= lt!2132465 0)))

(declare-fun e!3224967 () Int)

(assert (=> d!1670671 (= lt!2132465 e!3224967)))

(declare-fun c!891270 () Bool)

(assert (=> d!1670671 (= c!891270 ((_ is Nil!60157) (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(assert (=> d!1670671 (= (size!39691 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) lt!2132465)))

(declare-fun b!5175638 () Bool)

(assert (=> b!5175638 (= e!3224967 0)))

(declare-fun b!5175639 () Bool)

(assert (=> b!5175639 (= e!3224967 (+ 1 (size!39691 (t!373434 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))))

(assert (= (and d!1670671 c!891270) b!5175638))

(assert (= (and d!1670671 (not c!891270)) b!5175639))

(declare-fun m!6230332 () Bool)

(assert (=> b!5175639 m!6230332))

(assert (=> b!5175257 d!1670671))

(declare-fun d!1670673 () Bool)

(declare-fun c!891271 () Bool)

(assert (=> d!1670673 (= c!891271 ((_ is Cons!60157) (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))))))

(declare-fun e!3224968 () (InoxSet Context!8078))

(assert (=> d!1670673 (= (derivationZipper!278 (derivationStepZipper!1001 baseZ!62 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) e!3224968)))

(declare-fun b!5175640 () Bool)

(assert (=> b!5175640 (= e!3224968 (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (h!66605 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))))) (t!373434 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))))))))

(declare-fun b!5175641 () Bool)

(assert (=> b!5175641 (= e!3224968 (derivationStepZipper!1001 baseZ!62 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (= (and d!1670673 c!891271) b!5175640))

(assert (= (and d!1670673 (not c!891271)) b!5175641))

(assert (=> b!5175640 m!6229510))

(declare-fun m!6230334 () Bool)

(assert (=> b!5175640 m!6230334))

(assert (=> b!5175640 m!6230334))

(declare-fun m!6230336 () Bool)

(assert (=> b!5175640 m!6230336))

(assert (=> b!5175274 d!1670673))

(declare-fun bs!1204152 () Bool)

(declare-fun d!1670675 () Bool)

(assert (= bs!1204152 (and d!1670675 d!1670651)))

(declare-fun lambda!258513 () Int)

(assert (=> bs!1204152 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) (h!66605 (t!373434 testedP!294))) (= lambda!258513 lambda!258511))))

(declare-fun bs!1204153 () Bool)

(assert (= bs!1204153 (and d!1670675 d!1670435)))

(assert (=> bs!1204153 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) (h!66605 testedP!294)) (= lambda!258513 lambda!258481))))

(declare-fun bs!1204154 () Bool)

(assert (= bs!1204154 (and d!1670675 d!1670555)))

(assert (=> bs!1204154 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) (h!66605 lt!2131870)) (= lambda!258513 lambda!258501))))

(declare-fun bs!1204155 () Bool)

(assert (= bs!1204155 (and d!1670675 d!1670367)))

(assert (=> bs!1204155 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) call!363495) (= lambda!258513 lambda!258471))))

(declare-fun bs!1204156 () Bool)

(assert (= bs!1204156 (and d!1670675 d!1670179)))

(assert (=> bs!1204156 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) lt!2131872) (= lambda!258513 lambda!258448))))

(declare-fun bs!1204157 () Bool)

(assert (= bs!1204157 (and d!1670675 d!1670569)))

(assert (=> bs!1204157 (= (= (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157))) call!363503) (= lambda!258513 lambda!258505))))

(assert (=> d!1670675 true))

(assert (=> d!1670675 (= (derivationStepZipper!1001 baseZ!62 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (flatMap!458 baseZ!62 lambda!258513))))

(declare-fun bs!1204158 () Bool)

(assert (= bs!1204158 d!1670675))

(declare-fun m!6230338 () Bool)

(assert (=> bs!1204158 m!6230338))

(assert (=> b!5175274 d!1670675))

(declare-fun d!1670677 () Bool)

(declare-fun c!891272 () Bool)

(assert (=> d!1670677 (= c!891272 ((_ is Nil!60157) lt!2132318))))

(declare-fun e!3224969 () (InoxSet C!29580))

(assert (=> d!1670677 (= (content!10659 lt!2132318) e!3224969)))

(declare-fun b!5175642 () Bool)

(assert (=> b!5175642 (= e!3224969 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175643 () Bool)

(assert (=> b!5175643 (= e!3224969 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132318) true) (content!10659 (t!373434 lt!2132318))))))

(assert (= (and d!1670677 c!891272) b!5175642))

(assert (= (and d!1670677 (not c!891272)) b!5175643))

(declare-fun m!6230340 () Bool)

(assert (=> b!5175643 m!6230340))

(declare-fun m!6230342 () Bool)

(assert (=> b!5175643 m!6230342))

(assert (=> d!1670443 d!1670677))

(declare-fun d!1670679 () Bool)

(declare-fun c!891273 () Bool)

(assert (=> d!1670679 (= c!891273 ((_ is Nil!60157) (t!373434 testedP!294)))))

(declare-fun e!3224970 () (InoxSet C!29580))

(assert (=> d!1670679 (= (content!10659 (t!373434 testedP!294)) e!3224970)))

(declare-fun b!5175644 () Bool)

(assert (=> b!5175644 (= e!3224970 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175645 () Bool)

(assert (=> b!5175645 (= e!3224970 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (t!373434 testedP!294)) true) (content!10659 (t!373434 (t!373434 testedP!294)))))))

(assert (= (and d!1670679 c!891273) b!5175644))

(assert (= (and d!1670679 (not c!891273)) b!5175645))

(declare-fun m!6230344 () Bool)

(assert (=> b!5175645 m!6230344))

(declare-fun m!6230346 () Bool)

(assert (=> b!5175645 m!6230346))

(assert (=> d!1670443 d!1670679))

(assert (=> d!1670443 d!1670387))

(declare-fun d!1670681 () Bool)

(declare-fun e!3224972 () Bool)

(assert (=> d!1670681 e!3224972))

(declare-fun res!2199483 () Bool)

(assert (=> d!1670681 (=> res!2199483 e!3224972)))

(declare-fun lt!2132466 () Bool)

(assert (=> d!1670681 (= res!2199483 (not lt!2132466))))

(declare-fun e!3224973 () Bool)

(assert (=> d!1670681 (= lt!2132466 e!3224973)))

(declare-fun res!2199482 () Bool)

(assert (=> d!1670681 (=> res!2199482 e!3224973)))

(assert (=> d!1670681 (= res!2199482 ((_ is Nil!60157) (tail!10172 (tail!10172 lt!2131870))))))

(assert (=> d!1670681 (= (isPrefix!5788 (tail!10172 (tail!10172 lt!2131870)) (tail!10172 (tail!10172 input!5817))) lt!2132466)))

(declare-fun b!5175649 () Bool)

(assert (=> b!5175649 (= e!3224972 (>= (size!39691 (tail!10172 (tail!10172 input!5817))) (size!39691 (tail!10172 (tail!10172 lt!2131870)))))))

(declare-fun b!5175646 () Bool)

(declare-fun e!3224971 () Bool)

(assert (=> b!5175646 (= e!3224973 e!3224971)))

(declare-fun res!2199484 () Bool)

(assert (=> b!5175646 (=> (not res!2199484) (not e!3224971))))

(assert (=> b!5175646 (= res!2199484 (not ((_ is Nil!60157) (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5175648 () Bool)

(assert (=> b!5175648 (= e!3224971 (isPrefix!5788 (tail!10172 (tail!10172 (tail!10172 lt!2131870))) (tail!10172 (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5175647 () Bool)

(declare-fun res!2199485 () Bool)

(assert (=> b!5175647 (=> (not res!2199485) (not e!3224971))))

(assert (=> b!5175647 (= res!2199485 (= (head!11073 (tail!10172 (tail!10172 lt!2131870))) (head!11073 (tail!10172 (tail!10172 input!5817)))))))

(assert (= (and d!1670681 (not res!2199482)) b!5175646))

(assert (= (and b!5175646 res!2199484) b!5175647))

(assert (= (and b!5175647 res!2199485) b!5175648))

(assert (= (and d!1670681 (not res!2199483)) b!5175649))

(assert (=> b!5175649 m!6229500))

(assert (=> b!5175649 m!6230322))

(assert (=> b!5175649 m!6229740))

(declare-fun m!6230348 () Bool)

(assert (=> b!5175649 m!6230348))

(assert (=> b!5175648 m!6229740))

(declare-fun m!6230350 () Bool)

(assert (=> b!5175648 m!6230350))

(assert (=> b!5175648 m!6229500))

(assert (=> b!5175648 m!6230324))

(assert (=> b!5175648 m!6230350))

(assert (=> b!5175648 m!6230324))

(declare-fun m!6230352 () Bool)

(assert (=> b!5175648 m!6230352))

(assert (=> b!5175647 m!6229740))

(declare-fun m!6230354 () Bool)

(assert (=> b!5175647 m!6230354))

(assert (=> b!5175647 m!6229500))

(declare-fun m!6230356 () Bool)

(assert (=> b!5175647 m!6230356))

(assert (=> b!5175356 d!1670681))

(declare-fun d!1670683 () Bool)

(assert (=> d!1670683 (= (tail!10172 (tail!10172 lt!2131870)) (t!373434 (tail!10172 lt!2131870)))))

(assert (=> b!5175356 d!1670683))

(assert (=> b!5175356 d!1670665))

(declare-fun b!5175651 () Bool)

(declare-fun e!3224974 () List!60281)

(assert (=> b!5175651 (= e!3224974 (Cons!60157 (h!66605 (t!373434 (_1!35233 lt!2131974))) (++!13171 (t!373434 (t!373434 (_1!35233 lt!2131974))) (_2!35233 lt!2131974))))))

(declare-fun b!5175653 () Bool)

(declare-fun e!3224975 () Bool)

(declare-fun lt!2132467 () List!60281)

(assert (=> b!5175653 (= e!3224975 (or (not (= (_2!35233 lt!2131974) Nil!60157)) (= lt!2132467 (t!373434 (_1!35233 lt!2131974)))))))

(declare-fun d!1670685 () Bool)

(assert (=> d!1670685 e!3224975))

(declare-fun res!2199487 () Bool)

(assert (=> d!1670685 (=> (not res!2199487) (not e!3224975))))

(assert (=> d!1670685 (= res!2199487 (= (content!10659 lt!2132467) ((_ map or) (content!10659 (t!373434 (_1!35233 lt!2131974))) (content!10659 (_2!35233 lt!2131974)))))))

(assert (=> d!1670685 (= lt!2132467 e!3224974)))

(declare-fun c!891274 () Bool)

(assert (=> d!1670685 (= c!891274 ((_ is Nil!60157) (t!373434 (_1!35233 lt!2131974))))))

(assert (=> d!1670685 (= (++!13171 (t!373434 (_1!35233 lt!2131974)) (_2!35233 lt!2131974)) lt!2132467)))

(declare-fun b!5175652 () Bool)

(declare-fun res!2199486 () Bool)

(assert (=> b!5175652 (=> (not res!2199486) (not e!3224975))))

(assert (=> b!5175652 (= res!2199486 (= (size!39691 lt!2132467) (+ (size!39691 (t!373434 (_1!35233 lt!2131974))) (size!39691 (_2!35233 lt!2131974)))))))

(declare-fun b!5175650 () Bool)

(assert (=> b!5175650 (= e!3224974 (_2!35233 lt!2131974))))

(assert (= (and d!1670685 c!891274) b!5175650))

(assert (= (and d!1670685 (not c!891274)) b!5175651))

(assert (= (and d!1670685 res!2199487) b!5175652))

(assert (= (and b!5175652 res!2199486) b!5175653))

(declare-fun m!6230358 () Bool)

(assert (=> b!5175651 m!6230358))

(declare-fun m!6230360 () Bool)

(assert (=> d!1670685 m!6230360))

(declare-fun m!6230362 () Bool)

(assert (=> d!1670685 m!6230362))

(assert (=> d!1670685 m!6229814))

(declare-fun m!6230364 () Bool)

(assert (=> b!5175652 m!6230364))

(assert (=> b!5175652 m!6229784))

(assert (=> b!5175652 m!6229818))

(assert (=> b!5175383 d!1670685))

(assert (=> b!5175313 d!1670589))

(declare-fun bs!1204159 () Bool)

(declare-fun d!1670687 () Bool)

(assert (= bs!1204159 (and d!1670687 d!1670661)))

(declare-fun lambda!258516 () Int)

(assert (=> bs!1204159 (not (= lambda!258516 lambda!258512))))

(declare-fun bs!1204160 () Bool)

(assert (= bs!1204160 (and d!1670687 b!5175502)))

(assert (=> bs!1204160 (not (= lambda!258516 lambda!258503))))

(declare-fun bs!1204161 () Bool)

(assert (= bs!1204161 (and d!1670687 d!1670639)))

(assert (=> bs!1204161 (not (= lambda!258516 lambda!258510))))

(declare-fun bs!1204162 () Bool)

(assert (= bs!1204162 (and d!1670687 d!1670237)))

(assert (=> bs!1204162 (not (= lambda!258516 lambda!258451))))

(declare-fun bs!1204163 () Bool)

(assert (= bs!1204163 (and d!1670687 b!5175503)))

(assert (=> bs!1204163 (not (= lambda!258516 lambda!258504))))

(declare-fun bs!1204164 () Bool)

(assert (= bs!1204164 (and d!1670687 b!5175436)))

(assert (=> bs!1204164 (not (= lambda!258516 lambda!258499))))

(declare-fun bs!1204165 () Bool)

(assert (= bs!1204165 (and d!1670687 b!5175437)))

(assert (=> bs!1204165 (not (= lambda!258516 lambda!258500))))

(declare-fun bs!1204166 () Bool)

(assert (= bs!1204166 (and d!1670687 d!1670427)))

(assert (=> bs!1204166 (not (= lambda!258516 lambda!258480))))

(declare-fun bs!1204167 () Bool)

(assert (= bs!1204167 (and d!1670687 d!1670557)))

(assert (=> bs!1204167 (not (= lambda!258516 lambda!258502))))

(declare-fun bs!1204168 () Bool)

(assert (= bs!1204168 (and d!1670687 d!1670625)))

(assert (=> bs!1204168 (= (= lambda!258498 lambda!258451) (= lambda!258516 lambda!258509))))

(declare-fun bs!1204169 () Bool)

(assert (= bs!1204169 (and d!1670687 d!1670469)))

(assert (=> bs!1204169 (not (= lambda!258516 lambda!258498))))

(assert (=> d!1670687 true))

(assert (=> d!1670687 (< (dynLambda!23879 order!27035 lambda!258498) (dynLambda!23879 order!27035 lambda!258516))))

(assert (=> d!1670687 (not (exists!1937 lt!2132384 lambda!258516))))

(declare-fun lt!2132470 () Unit!151938)

(declare-fun choose!38426 (List!60283 Int) Unit!151938)

(assert (=> d!1670687 (= lt!2132470 (choose!38426 lt!2132384 lambda!258498))))

(assert (=> d!1670687 (forall!14158 lt!2132384 lambda!258498)))

(assert (=> d!1670687 (= (lemmaForallThenNotExists!444 lt!2132384 lambda!258498) lt!2132470)))

(declare-fun bs!1204170 () Bool)

(assert (= bs!1204170 d!1670687))

(declare-fun m!6230366 () Bool)

(assert (=> bs!1204170 m!6230366))

(declare-fun m!6230368 () Bool)

(assert (=> bs!1204170 m!6230368))

(declare-fun m!6230370 () Bool)

(assert (=> bs!1204170 m!6230370))

(assert (=> b!5175437 d!1670687))

(declare-fun b!5175672 () Bool)

(declare-fun e!3224992 () Bool)

(declare-fun call!363600 () Bool)

(assert (=> b!5175672 (= e!3224992 call!363600)))

(declare-fun b!5175673 () Bool)

(declare-fun e!3224995 () Bool)

(declare-fun e!3224996 () Bool)

(assert (=> b!5175673 (= e!3224995 e!3224996)))

(declare-fun res!2199501 () Bool)

(declare-fun nullable!4892 (Regex!14655) Bool)

(assert (=> b!5175673 (= res!2199501 (not (nullable!4892 (reg!14984 (h!66606 (exprs!4539 setElem!32299))))))))

(assert (=> b!5175673 (=> (not res!2199501) (not e!3224996))))

(declare-fun bm!363593 () Bool)

(declare-fun call!363598 () Bool)

(declare-fun c!891280 () Bool)

(assert (=> bm!363593 (= call!363598 (validRegex!6405 (ite c!891280 (regOne!29823 (h!66606 (exprs!4539 setElem!32299))) (regOne!29822 (h!66606 (exprs!4539 setElem!32299))))))))

(declare-fun b!5175674 () Bool)

(declare-fun call!363599 () Bool)

(assert (=> b!5175674 (= e!3224996 call!363599)))

(declare-fun b!5175675 () Bool)

(declare-fun e!3224994 () Bool)

(assert (=> b!5175675 (= e!3224994 e!3224992)))

(declare-fun res!2199498 () Bool)

(assert (=> b!5175675 (=> (not res!2199498) (not e!3224992))))

(assert (=> b!5175675 (= res!2199498 call!363598)))

(declare-fun bm!363594 () Bool)

(declare-fun c!891279 () Bool)

(assert (=> bm!363594 (= call!363599 (validRegex!6405 (ite c!891279 (reg!14984 (h!66606 (exprs!4539 setElem!32299))) (ite c!891280 (regTwo!29823 (h!66606 (exprs!4539 setElem!32299))) (regTwo!29822 (h!66606 (exprs!4539 setElem!32299)))))))))

(declare-fun b!5175676 () Bool)

(declare-fun res!2199502 () Bool)

(assert (=> b!5175676 (=> res!2199502 e!3224994)))

(assert (=> b!5175676 (= res!2199502 (not ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32299)))))))

(declare-fun e!3224993 () Bool)

(assert (=> b!5175676 (= e!3224993 e!3224994)))

(declare-fun b!5175677 () Bool)

(declare-fun e!3224998 () Bool)

(assert (=> b!5175677 (= e!3224998 e!3224995)))

(assert (=> b!5175677 (= c!891279 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32299))))))

(declare-fun bm!363595 () Bool)

(assert (=> bm!363595 (= call!363600 call!363599)))

(declare-fun b!5175679 () Bool)

(declare-fun res!2199500 () Bool)

(declare-fun e!3224997 () Bool)

(assert (=> b!5175679 (=> (not res!2199500) (not e!3224997))))

(assert (=> b!5175679 (= res!2199500 call!363598)))

(assert (=> b!5175679 (= e!3224993 e!3224997)))

(declare-fun b!5175680 () Bool)

(assert (=> b!5175680 (= e!3224995 e!3224993)))

(assert (=> b!5175680 (= c!891280 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32299))))))

(declare-fun d!1670689 () Bool)

(declare-fun res!2199499 () Bool)

(assert (=> d!1670689 (=> res!2199499 e!3224998)))

(assert (=> d!1670689 (= res!2199499 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32299))))))

(assert (=> d!1670689 (= (validRegex!6405 (h!66606 (exprs!4539 setElem!32299))) e!3224998)))

(declare-fun b!5175678 () Bool)

(assert (=> b!5175678 (= e!3224997 call!363600)))

(assert (= (and d!1670689 (not res!2199499)) b!5175677))

(assert (= (and b!5175677 c!891279) b!5175673))

(assert (= (and b!5175677 (not c!891279)) b!5175680))

(assert (= (and b!5175673 res!2199501) b!5175674))

(assert (= (and b!5175680 c!891280) b!5175679))

(assert (= (and b!5175680 (not c!891280)) b!5175676))

(assert (= (and b!5175679 res!2199500) b!5175678))

(assert (= (and b!5175676 (not res!2199502)) b!5175675))

(assert (= (and b!5175675 res!2199498) b!5175672))

(assert (= (or b!5175678 b!5175672) bm!363595))

(assert (= (or b!5175679 b!5175675) bm!363593))

(assert (= (or b!5175674 bm!363595) bm!363594))

(declare-fun m!6230372 () Bool)

(assert (=> b!5175673 m!6230372))

(declare-fun m!6230374 () Bool)

(assert (=> bm!363593 m!6230374))

(declare-fun m!6230376 () Bool)

(assert (=> bm!363594 m!6230376))

(assert (=> bs!1204107 d!1670689))

(declare-fun d!1670691 () Bool)

(declare-fun c!891281 () Bool)

(assert (=> d!1670691 (= c!891281 ((_ is Nil!60157) lt!2132198))))

(declare-fun e!3224999 () (InoxSet C!29580))

(assert (=> d!1670691 (= (content!10659 lt!2132198) e!3224999)))

(declare-fun b!5175681 () Bool)

(assert (=> b!5175681 (= e!3224999 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175682 () Bool)

(assert (=> b!5175682 (= e!3224999 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132198) true) (content!10659 (t!373434 lt!2132198))))))

(assert (= (and d!1670691 c!891281) b!5175681))

(assert (= (and d!1670691 (not c!891281)) b!5175682))

(declare-fun m!6230378 () Bool)

(assert (=> b!5175682 m!6230378))

(declare-fun m!6230380 () Bool)

(assert (=> b!5175682 m!6230380))

(assert (=> d!1670325 d!1670691))

(declare-fun d!1670693 () Bool)

(declare-fun c!891282 () Bool)

(assert (=> d!1670693 (= c!891282 ((_ is Nil!60157) lt!2131870))))

(declare-fun e!3225000 () (InoxSet C!29580))

(assert (=> d!1670693 (= (content!10659 lt!2131870) e!3225000)))

(declare-fun b!5175683 () Bool)

(assert (=> b!5175683 (= e!3225000 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175684 () Bool)

(assert (=> b!5175684 (= e!3225000 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2131870) true) (content!10659 (t!373434 lt!2131870))))))

(assert (= (and d!1670693 c!891282) b!5175683))

(assert (= (and d!1670693 (not c!891282)) b!5175684))

(declare-fun m!6230382 () Bool)

(assert (=> b!5175684 m!6230382))

(declare-fun m!6230384 () Bool)

(assert (=> b!5175684 m!6230384))

(assert (=> d!1670325 d!1670693))

(declare-fun d!1670695 () Bool)

(declare-fun c!891283 () Bool)

(assert (=> d!1670695 (= c!891283 ((_ is Nil!60157) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))

(declare-fun e!3225001 () (InoxSet C!29580))

(assert (=> d!1670695 (= (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) e!3225001)))

(declare-fun b!5175685 () Bool)

(assert (=> b!5175685 (= e!3225001 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175686 () Bool)

(assert (=> b!5175686 (= e!3225001 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(assert (= (and d!1670695 c!891283) b!5175685))

(assert (= (and d!1670695 (not c!891283)) b!5175686))

(declare-fun m!6230386 () Bool)

(assert (=> b!5175686 m!6230386))

(declare-fun m!6230388 () Bool)

(assert (=> b!5175686 m!6230388))

(assert (=> d!1670325 d!1670695))

(declare-fun b!5175688 () Bool)

(declare-fun e!3225002 () List!60281)

(assert (=> b!5175688 (= e!3225002 (Cons!60157 (h!66605 (t!373434 lt!2131870)) (++!13171 (t!373434 (t!373434 lt!2131870)) (Cons!60157 lt!2131989 Nil!60157))))))

(declare-fun e!3225003 () Bool)

(declare-fun b!5175690 () Bool)

(declare-fun lt!2132471 () List!60281)

(assert (=> b!5175690 (= e!3225003 (or (not (= (Cons!60157 lt!2131989 Nil!60157) Nil!60157)) (= lt!2132471 (t!373434 lt!2131870))))))

(declare-fun d!1670697 () Bool)

(assert (=> d!1670697 e!3225003))

(declare-fun res!2199504 () Bool)

(assert (=> d!1670697 (=> (not res!2199504) (not e!3225003))))

(assert (=> d!1670697 (= res!2199504 (= (content!10659 lt!2132471) ((_ map or) (content!10659 (t!373434 lt!2131870)) (content!10659 (Cons!60157 lt!2131989 Nil!60157)))))))

(assert (=> d!1670697 (= lt!2132471 e!3225002)))

(declare-fun c!891284 () Bool)

(assert (=> d!1670697 (= c!891284 ((_ is Nil!60157) (t!373434 lt!2131870)))))

(assert (=> d!1670697 (= (++!13171 (t!373434 lt!2131870) (Cons!60157 lt!2131989 Nil!60157)) lt!2132471)))

(declare-fun b!5175689 () Bool)

(declare-fun res!2199503 () Bool)

(assert (=> b!5175689 (=> (not res!2199503) (not e!3225003))))

(assert (=> b!5175689 (= res!2199503 (= (size!39691 lt!2132471) (+ (size!39691 (t!373434 lt!2131870)) (size!39691 (Cons!60157 lt!2131989 Nil!60157)))))))

(declare-fun b!5175687 () Bool)

(assert (=> b!5175687 (= e!3225002 (Cons!60157 lt!2131989 Nil!60157))))

(assert (= (and d!1670697 c!891284) b!5175687))

(assert (= (and d!1670697 (not c!891284)) b!5175688))

(assert (= (and d!1670697 res!2199504) b!5175689))

(assert (= (and b!5175689 res!2199503) b!5175690))

(declare-fun m!6230390 () Bool)

(assert (=> b!5175688 m!6230390))

(declare-fun m!6230392 () Bool)

(assert (=> d!1670697 m!6230392))

(assert (=> d!1670697 m!6230384))

(assert (=> d!1670697 m!6229432))

(declare-fun m!6230394 () Bool)

(assert (=> b!5175689 m!6230394))

(assert (=> b!5175689 m!6229250))

(assert (=> b!5175689 m!6229436))

(assert (=> b!5175241 d!1670697))

(declare-fun d!1670699 () Bool)

(declare-fun c!891285 () Bool)

(assert (=> d!1670699 (= c!891285 ((_ is Nil!60157) lt!2132412))))

(declare-fun e!3225004 () (InoxSet C!29580))

(assert (=> d!1670699 (= (content!10659 lt!2132412) e!3225004)))

(declare-fun b!5175691 () Bool)

(assert (=> b!5175691 (= e!3225004 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175692 () Bool)

(assert (=> b!5175692 (= e!3225004 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132412) true) (content!10659 (t!373434 lt!2132412))))))

(assert (= (and d!1670699 c!891285) b!5175691))

(assert (= (and d!1670699 (not c!891285)) b!5175692))

(declare-fun m!6230396 () Bool)

(assert (=> b!5175692 m!6230396))

(declare-fun m!6230398 () Bool)

(assert (=> b!5175692 m!6230398))

(assert (=> d!1670573 d!1670699))

(declare-fun d!1670701 () Bool)

(declare-fun c!891286 () Bool)

(assert (=> d!1670701 (= c!891286 ((_ is Nil!60157) (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))

(declare-fun e!3225005 () (InoxSet C!29580))

(assert (=> d!1670701 (= (content!10659 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) e!3225005)))

(declare-fun b!5175693 () Bool)

(assert (=> b!5175693 (= e!3225005 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175694 () Bool)

(assert (=> b!5175694 (= e!3225005 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) true) (content!10659 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))))

(assert (= (and d!1670701 c!891286) b!5175693))

(assert (= (and d!1670701 (not c!891286)) b!5175694))

(declare-fun m!6230400 () Bool)

(assert (=> b!5175694 m!6230400))

(declare-fun m!6230402 () Bool)

(assert (=> b!5175694 m!6230402))

(assert (=> d!1670573 d!1670701))

(declare-fun d!1670703 () Bool)

(declare-fun c!891287 () Bool)

(assert (=> d!1670703 (= c!891287 ((_ is Nil!60157) lt!2131949))))

(declare-fun e!3225006 () (InoxSet C!29580))

(assert (=> d!1670703 (= (content!10659 lt!2131949) e!3225006)))

(declare-fun b!5175695 () Bool)

(assert (=> b!5175695 (= e!3225006 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175696 () Bool)

(assert (=> b!5175696 (= e!3225006 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2131949) true) (content!10659 (t!373434 lt!2131949))))))

(assert (= (and d!1670703 c!891287) b!5175695))

(assert (= (and d!1670703 (not c!891287)) b!5175696))

(declare-fun m!6230404 () Bool)

(assert (=> b!5175696 m!6230404))

(declare-fun m!6230406 () Bool)

(assert (=> b!5175696 m!6230406))

(assert (=> d!1670573 d!1670703))

(declare-fun b!5175697 () Bool)

(declare-fun e!3225009 () tuple2!63860)

(assert (=> b!5175697 (= e!3225009 (tuple2!63861 lt!2132293 Nil!60157))))

(declare-fun bm!363596 () Bool)

(declare-fun call!363607 () (InoxSet Context!8078))

(declare-fun call!363608 () C!29580)

(assert (=> bm!363596 (= call!363607 (derivationStepZipper!1001 call!363564 call!363608))))

(declare-fun b!5175698 () Bool)

(declare-fun e!3225007 () tuple2!63860)

(declare-fun lt!2132482 () tuple2!63860)

(assert (=> b!5175698 (= e!3225007 lt!2132482)))

(declare-fun b!5175699 () Bool)

(declare-fun e!3225011 () tuple2!63860)

(assert (=> b!5175699 (= e!3225011 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363597 () Bool)

(declare-fun call!363606 () List!60281)

(assert (=> bm!363597 (= call!363606 (tail!10172 call!363563))))

(declare-fun b!5175700 () Bool)

(declare-fun e!3225012 () tuple2!63860)

(declare-fun call!363601 () tuple2!63860)

(assert (=> b!5175700 (= e!3225012 call!363601)))

(declare-fun b!5175701 () Bool)

(assert (=> b!5175701 (= e!3225007 (tuple2!63861 lt!2132293 call!363563))))

(declare-fun bm!363598 () Bool)

(declare-fun call!363604 () Unit!151938)

(assert (=> bm!363598 (= call!363604 (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2132293 input!5817))))

(declare-fun b!5175702 () Bool)

(declare-fun c!891288 () Bool)

(declare-fun call!363605 () Bool)

(assert (=> b!5175702 (= c!891288 call!363605)))

(declare-fun lt!2132497 () Unit!151938)

(declare-fun lt!2132475 () Unit!151938)

(assert (=> b!5175702 (= lt!2132497 lt!2132475)))

(assert (=> b!5175702 (= input!5817 lt!2132293)))

(assert (=> b!5175702 (= lt!2132475 call!363604)))

(declare-fun lt!2132487 () Unit!151938)

(declare-fun lt!2132484 () Unit!151938)

(assert (=> b!5175702 (= lt!2132487 lt!2132484)))

(declare-fun call!363602 () Bool)

(assert (=> b!5175702 call!363602))

(declare-fun call!363603 () Unit!151938)

(assert (=> b!5175702 (= lt!2132484 call!363603)))

(declare-fun e!3225014 () tuple2!63860)

(assert (=> b!5175702 (= e!3225014 e!3225009)))

(declare-fun b!5175703 () Bool)

(assert (=> b!5175703 (= e!3225012 e!3225007)))

(assert (=> b!5175703 (= lt!2132482 call!363601)))

(declare-fun c!891289 () Bool)

(assert (=> b!5175703 (= c!891289 (isEmpty!32207 (_1!35233 lt!2132482)))))

(declare-fun d!1670705 () Bool)

(declare-fun e!3225013 () Bool)

(assert (=> d!1670705 e!3225013))

(declare-fun res!2199506 () Bool)

(assert (=> d!1670705 (=> (not res!2199506) (not e!3225013))))

(declare-fun lt!2132477 () tuple2!63860)

(assert (=> d!1670705 (= res!2199506 (= (++!13171 (_1!35233 lt!2132477) (_2!35233 lt!2132477)) input!5817))))

(assert (=> d!1670705 (= lt!2132477 e!3225011)))

(declare-fun c!891292 () Bool)

(assert (=> d!1670705 (= c!891292 (lostCauseZipper!1342 call!363564))))

(declare-fun lt!2132473 () Unit!151938)

(declare-fun Unit!151977 () Unit!151938)

(assert (=> d!1670705 (= lt!2132473 Unit!151977)))

(assert (=> d!1670705 (= (getSuffix!3436 input!5817 lt!2132293) call!363563)))

(declare-fun lt!2132486 () Unit!151938)

(declare-fun lt!2132478 () Unit!151938)

(assert (=> d!1670705 (= lt!2132486 lt!2132478)))

(declare-fun lt!2132474 () List!60281)

(assert (=> d!1670705 (= call!363563 lt!2132474)))

(assert (=> d!1670705 (= lt!2132478 (lemmaSamePrefixThenSameSuffix!2709 lt!2132293 call!363563 lt!2132293 lt!2132474 input!5817))))

(assert (=> d!1670705 (= lt!2132474 (getSuffix!3436 input!5817 lt!2132293))))

(declare-fun lt!2132495 () Unit!151938)

(declare-fun lt!2132481 () Unit!151938)

(assert (=> d!1670705 (= lt!2132495 lt!2132481)))

(assert (=> d!1670705 (isPrefix!5788 lt!2132293 (++!13171 lt!2132293 call!363563))))

(assert (=> d!1670705 (= lt!2132481 (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2132293 call!363563))))

(assert (=> d!1670705 (= (++!13171 lt!2132293 call!363563) input!5817)))

(assert (=> d!1670705 (= (findLongestMatchInnerZipper!311 call!363564 lt!2132293 (+ 1 lt!2131873 1 1) call!363563 input!5817 lt!2131877) lt!2132477)))

(declare-fun bm!363599 () Bool)

(assert (=> bm!363599 (= call!363605 (nullableZipper!1193 call!363564))))

(declare-fun bm!363600 () Bool)

(assert (=> bm!363600 (= call!363608 (head!11073 call!363563))))

(declare-fun b!5175704 () Bool)

(declare-fun e!3225010 () Bool)

(assert (=> b!5175704 (= e!3225010 (>= (size!39691 (_1!35233 lt!2132477)) (size!39691 lt!2132293)))))

(declare-fun b!5175705 () Bool)

(assert (=> b!5175705 (= e!3225011 e!3225014)))

(declare-fun c!891291 () Bool)

(assert (=> b!5175705 (= c!891291 (= (+ 1 lt!2131873 1 1) lt!2131877))))

(declare-fun bm!363601 () Bool)

(declare-fun lt!2132488 () List!60281)

(assert (=> bm!363601 (= call!363601 (findLongestMatchInnerZipper!311 call!363607 lt!2132488 (+ 1 lt!2131873 1 1 1) call!363606 input!5817 lt!2131877))))

(declare-fun b!5175706 () Bool)

(declare-fun e!3225008 () Unit!151938)

(declare-fun Unit!151978 () Unit!151938)

(assert (=> b!5175706 (= e!3225008 Unit!151978)))

(declare-fun lt!2132494 () Unit!151938)

(assert (=> b!5175706 (= lt!2132494 call!363603)))

(assert (=> b!5175706 call!363602))

(declare-fun lt!2132493 () Unit!151938)

(assert (=> b!5175706 (= lt!2132493 lt!2132494)))

(declare-fun lt!2132483 () Unit!151938)

(assert (=> b!5175706 (= lt!2132483 call!363604)))

(assert (=> b!5175706 (= input!5817 lt!2132293)))

(declare-fun lt!2132480 () Unit!151938)

(assert (=> b!5175706 (= lt!2132480 lt!2132483)))

(assert (=> b!5175706 false))

(declare-fun bm!363602 () Bool)

(assert (=> bm!363602 (= call!363603 (lemmaIsPrefixRefl!3793 input!5817 input!5817))))

(declare-fun b!5175707 () Bool)

(declare-fun c!891293 () Bool)

(assert (=> b!5175707 (= c!891293 call!363605)))

(declare-fun lt!2132485 () Unit!151938)

(declare-fun lt!2132476 () Unit!151938)

(assert (=> b!5175707 (= lt!2132485 lt!2132476)))

(declare-fun lt!2132492 () C!29580)

(declare-fun lt!2132479 () List!60281)

(assert (=> b!5175707 (= (++!13171 (++!13171 lt!2132293 (Cons!60157 lt!2132492 Nil!60157)) lt!2132479) input!5817)))

(assert (=> b!5175707 (= lt!2132476 (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2132293 lt!2132492 lt!2132479 input!5817))))

(assert (=> b!5175707 (= lt!2132479 (tail!10172 call!363563))))

(assert (=> b!5175707 (= lt!2132492 (head!11073 call!363563))))

(declare-fun lt!2132491 () Unit!151938)

(declare-fun lt!2132472 () Unit!151938)

(assert (=> b!5175707 (= lt!2132491 lt!2132472)))

(assert (=> b!5175707 (isPrefix!5788 (++!13171 lt!2132293 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2132293)) Nil!60157)) input!5817)))

(assert (=> b!5175707 (= lt!2132472 (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2132293 input!5817))))

(assert (=> b!5175707 (= lt!2132488 (++!13171 lt!2132293 (Cons!60157 (head!11073 call!363563) Nil!60157)))))

(declare-fun lt!2132490 () Unit!151938)

(assert (=> b!5175707 (= lt!2132490 e!3225008)))

(declare-fun c!891290 () Bool)

(assert (=> b!5175707 (= c!891290 (= (size!39691 lt!2132293) (size!39691 input!5817)))))

(declare-fun lt!2132489 () Unit!151938)

(declare-fun lt!2132496 () Unit!151938)

(assert (=> b!5175707 (= lt!2132489 lt!2132496)))

(assert (=> b!5175707 (<= (size!39691 lt!2132293) (size!39691 input!5817))))

(assert (=> b!5175707 (= lt!2132496 (lemmaIsPrefixThenSmallerEqSize!949 lt!2132293 input!5817))))

(assert (=> b!5175707 (= e!3225014 e!3225012)))

(declare-fun b!5175708 () Bool)

(declare-fun Unit!151979 () Unit!151938)

(assert (=> b!5175708 (= e!3225008 Unit!151979)))

(declare-fun b!5175709 () Bool)

(assert (=> b!5175709 (= e!3225009 (tuple2!63861 Nil!60157 input!5817))))

(declare-fun bm!363603 () Bool)

(assert (=> bm!363603 (= call!363602 (isPrefix!5788 input!5817 input!5817))))

(declare-fun b!5175710 () Bool)

(assert (=> b!5175710 (= e!3225013 e!3225010)))

(declare-fun res!2199505 () Bool)

(assert (=> b!5175710 (=> res!2199505 e!3225010)))

(assert (=> b!5175710 (= res!2199505 (isEmpty!32207 (_1!35233 lt!2132477)))))

(assert (= (and d!1670705 c!891292) b!5175699))

(assert (= (and d!1670705 (not c!891292)) b!5175705))

(assert (= (and b!5175705 c!891291) b!5175702))

(assert (= (and b!5175705 (not c!891291)) b!5175707))

(assert (= (and b!5175702 c!891288) b!5175697))

(assert (= (and b!5175702 (not c!891288)) b!5175709))

(assert (= (and b!5175707 c!891290) b!5175706))

(assert (= (and b!5175707 (not c!891290)) b!5175708))

(assert (= (and b!5175707 c!891293) b!5175703))

(assert (= (and b!5175707 (not c!891293)) b!5175700))

(assert (= (and b!5175703 c!891289) b!5175701))

(assert (= (and b!5175703 (not c!891289)) b!5175698))

(assert (= (or b!5175703 b!5175700) bm!363597))

(assert (= (or b!5175703 b!5175700) bm!363600))

(assert (= (or b!5175703 b!5175700) bm!363596))

(assert (= (or b!5175703 b!5175700) bm!363601))

(assert (= (or b!5175702 b!5175706) bm!363602))

(assert (= (or b!5175702 b!5175707) bm!363599))

(assert (= (or b!5175702 b!5175706) bm!363603))

(assert (= (or b!5175702 b!5175706) bm!363598))

(assert (= (and d!1670705 res!2199506) b!5175710))

(assert (= (and b!5175710 (not res!2199505)) b!5175704))

(declare-fun m!6230408 () Bool)

(assert (=> b!5175703 m!6230408))

(declare-fun m!6230410 () Bool)

(assert (=> b!5175707 m!6230410))

(assert (=> b!5175707 m!6228940))

(declare-fun m!6230412 () Bool)

(assert (=> b!5175707 m!6230412))

(declare-fun m!6230414 () Bool)

(assert (=> b!5175707 m!6230414))

(declare-fun m!6230416 () Bool)

(assert (=> b!5175707 m!6230416))

(declare-fun m!6230418 () Bool)

(assert (=> b!5175707 m!6230418))

(assert (=> b!5175707 m!6230414))

(declare-fun m!6230420 () Bool)

(assert (=> b!5175707 m!6230420))

(declare-fun m!6230422 () Bool)

(assert (=> b!5175707 m!6230422))

(declare-fun m!6230424 () Bool)

(assert (=> b!5175707 m!6230424))

(assert (=> b!5175707 m!6230410))

(declare-fun m!6230426 () Bool)

(assert (=> b!5175707 m!6230426))

(declare-fun m!6230428 () Bool)

(assert (=> b!5175707 m!6230428))

(declare-fun m!6230430 () Bool)

(assert (=> b!5175707 m!6230430))

(assert (=> b!5175707 m!6230424))

(declare-fun m!6230432 () Bool)

(assert (=> b!5175707 m!6230432))

(declare-fun m!6230434 () Bool)

(assert (=> b!5175707 m!6230434))

(assert (=> bm!363602 m!6228930))

(assert (=> bm!363600 m!6230416))

(declare-fun m!6230436 () Bool)

(assert (=> bm!363599 m!6230436))

(declare-fun m!6230438 () Bool)

(assert (=> b!5175704 m!6230438))

(assert (=> b!5175704 m!6230430))

(assert (=> bm!363603 m!6228932))

(declare-fun m!6230440 () Bool)

(assert (=> bm!363596 m!6230440))

(assert (=> bm!363597 m!6230428))

(assert (=> d!1670705 m!6230410))

(declare-fun m!6230442 () Bool)

(assert (=> d!1670705 m!6230442))

(declare-fun m!6230444 () Bool)

(assert (=> d!1670705 m!6230444))

(declare-fun m!6230446 () Bool)

(assert (=> d!1670705 m!6230446))

(declare-fun m!6230448 () Bool)

(assert (=> d!1670705 m!6230448))

(declare-fun m!6230450 () Bool)

(assert (=> d!1670705 m!6230450))

(assert (=> d!1670705 m!6230448))

(declare-fun m!6230452 () Bool)

(assert (=> d!1670705 m!6230452))

(declare-fun m!6230454 () Bool)

(assert (=> bm!363601 m!6230454))

(declare-fun m!6230456 () Bool)

(assert (=> b!5175710 m!6230456))

(declare-fun m!6230458 () Bool)

(assert (=> bm!363598 m!6230458))

(assert (=> bm!363558 d!1670705))

(declare-fun d!1670707 () Bool)

(declare-fun c!891294 () Bool)

(assert (=> d!1670707 (= c!891294 ((_ is Nil!60157) lt!2132196))))

(declare-fun e!3225015 () (InoxSet C!29580))

(assert (=> d!1670707 (= (content!10659 lt!2132196) e!3225015)))

(declare-fun b!5175711 () Bool)

(assert (=> b!5175711 (= e!3225015 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175712 () Bool)

(assert (=> b!5175712 (= e!3225015 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132196) true) (content!10659 (t!373434 lt!2132196))))))

(assert (= (and d!1670707 c!891294) b!5175711))

(assert (= (and d!1670707 (not c!891294)) b!5175712))

(declare-fun m!6230460 () Bool)

(assert (=> b!5175712 m!6230460))

(declare-fun m!6230462 () Bool)

(assert (=> b!5175712 m!6230462))

(assert (=> d!1670321 d!1670707))

(assert (=> d!1670321 d!1670693))

(declare-fun d!1670709 () Bool)

(declare-fun c!891295 () Bool)

(assert (=> d!1670709 (= c!891295 ((_ is Nil!60157) (Cons!60157 lt!2131989 Nil!60157)))))

(declare-fun e!3225016 () (InoxSet C!29580))

(assert (=> d!1670709 (= (content!10659 (Cons!60157 lt!2131989 Nil!60157)) e!3225016)))

(declare-fun b!5175713 () Bool)

(assert (=> b!5175713 (= e!3225016 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175714 () Bool)

(assert (=> b!5175714 (= e!3225016 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 lt!2131989 Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 lt!2131989 Nil!60157)))))))

(assert (= (and d!1670709 c!891295) b!5175713))

(assert (= (and d!1670709 (not c!891295)) b!5175714))

(declare-fun m!6230464 () Bool)

(assert (=> b!5175714 m!6230464))

(declare-fun m!6230466 () Bool)

(assert (=> b!5175714 m!6230466))

(assert (=> d!1670321 d!1670709))

(declare-fun b!5175716 () Bool)

(declare-fun e!3225017 () List!60281)

(assert (=> b!5175716 (= e!3225017 (Cons!60157 (h!66605 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))) (++!13171 (t!373434 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))) lt!2131949)))))

(declare-fun e!3225018 () Bool)

(declare-fun lt!2132498 () List!60281)

(declare-fun b!5175718 () Bool)

(assert (=> b!5175718 (= e!3225018 (or (not (= lt!2131949 Nil!60157)) (= lt!2132498 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))))))))

(declare-fun d!1670711 () Bool)

(assert (=> d!1670711 e!3225018))

(declare-fun res!2199508 () Bool)

(assert (=> d!1670711 (=> (not res!2199508) (not e!3225018))))

(assert (=> d!1670711 (= res!2199508 (= (content!10659 lt!2132498) ((_ map or) (content!10659 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))) (content!10659 lt!2131949))))))

(assert (=> d!1670711 (= lt!2132498 e!3225017)))

(declare-fun c!891296 () Bool)

(assert (=> d!1670711 (= c!891296 ((_ is Nil!60157) (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))))))

(assert (=> d!1670711 (= (++!13171 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157))) lt!2131949) lt!2132498)))

(declare-fun b!5175717 () Bool)

(declare-fun res!2199507 () Bool)

(assert (=> b!5175717 (=> (not res!2199507) (not e!3225018))))

(assert (=> b!5175717 (= res!2199507 (= (size!39691 lt!2132498) (+ (size!39691 (t!373434 (++!13171 testedP!294 (Cons!60157 lt!2131962 Nil!60157)))) (size!39691 lt!2131949))))))

(declare-fun b!5175715 () Bool)

(assert (=> b!5175715 (= e!3225017 lt!2131949)))

(assert (= (and d!1670711 c!891296) b!5175715))

(assert (= (and d!1670711 (not c!891296)) b!5175716))

(assert (= (and d!1670711 res!2199508) b!5175717))

(assert (= (and b!5175717 res!2199507) b!5175718))

(declare-fun m!6230468 () Bool)

(assert (=> b!5175716 m!6230468))

(declare-fun m!6230470 () Bool)

(assert (=> d!1670711 m!6230470))

(assert (=> d!1670711 m!6230402))

(assert (=> d!1670711 m!6230116))

(declare-fun m!6230472 () Bool)

(assert (=> b!5175717 m!6230472))

(assert (=> b!5175717 m!6230194))

(assert (=> b!5175717 m!6230122))

(assert (=> b!5175517 d!1670711))

(declare-fun d!1670713 () Bool)

(declare-fun lt!2132499 () Int)

(assert (=> d!1670713 (>= lt!2132499 0)))

(declare-fun e!3225019 () Int)

(assert (=> d!1670713 (= lt!2132499 e!3225019)))

(declare-fun c!891297 () Bool)

(assert (=> d!1670713 (= c!891297 ((_ is Nil!60157) lt!2132391))))

(assert (=> d!1670713 (= (size!39691 lt!2132391) lt!2132499)))

(declare-fun b!5175719 () Bool)

(assert (=> b!5175719 (= e!3225019 0)))

(declare-fun b!5175720 () Bool)

(assert (=> b!5175720 (= e!3225019 (+ 1 (size!39691 (t!373434 lt!2132391))))))

(assert (= (and d!1670713 c!891297) b!5175719))

(assert (= (and d!1670713 (not c!891297)) b!5175720))

(declare-fun m!6230474 () Bool)

(assert (=> b!5175720 m!6230474))

(assert (=> b!5175454 d!1670713))

(assert (=> b!5175454 d!1670249))

(declare-fun d!1670715 () Bool)

(declare-fun lt!2132500 () Int)

(assert (=> d!1670715 (>= lt!2132500 0)))

(declare-fun e!3225020 () Int)

(assert (=> d!1670715 (= lt!2132500 e!3225020)))

(declare-fun c!891298 () Bool)

(assert (=> d!1670715 (= c!891298 ((_ is Nil!60157) (tail!10172 lt!2131871)))))

(assert (=> d!1670715 (= (size!39691 (tail!10172 lt!2131871)) lt!2132500)))

(declare-fun b!5175721 () Bool)

(assert (=> b!5175721 (= e!3225020 0)))

(declare-fun b!5175722 () Bool)

(assert (=> b!5175722 (= e!3225020 (+ 1 (size!39691 (t!373434 (tail!10172 lt!2131871)))))))

(assert (= (and d!1670715 c!891298) b!5175721))

(assert (= (and d!1670715 (not c!891298)) b!5175722))

(declare-fun m!6230476 () Bool)

(assert (=> b!5175722 m!6230476))

(assert (=> b!5175454 d!1670715))

(declare-fun bs!1204171 () Bool)

(declare-fun d!1670717 () Bool)

(assert (= bs!1204171 (and d!1670717 d!1670651)))

(declare-fun lambda!258517 () Int)

(assert (=> bs!1204171 (= (= call!363557 (h!66605 (t!373434 testedP!294))) (= lambda!258517 lambda!258511))))

(declare-fun bs!1204172 () Bool)

(assert (= bs!1204172 (and d!1670717 d!1670435)))

(assert (=> bs!1204172 (= (= call!363557 (h!66605 testedP!294)) (= lambda!258517 lambda!258481))))

(declare-fun bs!1204173 () Bool)

(assert (= bs!1204173 (and d!1670717 d!1670675)))

(assert (=> bs!1204173 (= (= call!363557 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (= lambda!258517 lambda!258513))))

(declare-fun bs!1204174 () Bool)

(assert (= bs!1204174 (and d!1670717 d!1670555)))

(assert (=> bs!1204174 (= (= call!363557 (h!66605 lt!2131870)) (= lambda!258517 lambda!258501))))

(declare-fun bs!1204175 () Bool)

(assert (= bs!1204175 (and d!1670717 d!1670367)))

(assert (=> bs!1204175 (= (= call!363557 call!363495) (= lambda!258517 lambda!258471))))

(declare-fun bs!1204176 () Bool)

(assert (= bs!1204176 (and d!1670717 d!1670179)))

(assert (=> bs!1204176 (= (= call!363557 lt!2131872) (= lambda!258517 lambda!258448))))

(declare-fun bs!1204177 () Bool)

(assert (= bs!1204177 (and d!1670717 d!1670569)))

(assert (=> bs!1204177 (= (= call!363557 call!363503) (= lambda!258517 lambda!258505))))

(assert (=> d!1670717 true))

(assert (=> d!1670717 (= (derivationStepZipper!1001 call!363494 call!363557) (flatMap!458 call!363494 lambda!258517))))

(declare-fun bs!1204178 () Bool)

(assert (= bs!1204178 d!1670717))

(declare-fun m!6230478 () Bool)

(assert (=> bs!1204178 m!6230478))

(assert (=> bm!363545 d!1670717))

(declare-fun d!1670719 () Bool)

(declare-fun lt!2132501 () Int)

(assert (=> d!1670719 (>= lt!2132501 0)))

(declare-fun e!3225021 () Int)

(assert (=> d!1670719 (= lt!2132501 e!3225021)))

(declare-fun c!891299 () Bool)

(assert (=> d!1670719 (= c!891299 ((_ is Nil!60157) (t!373434 (t!373434 input!5817))))))

(assert (=> d!1670719 (= (size!39691 (t!373434 (t!373434 input!5817))) lt!2132501)))

(declare-fun b!5175723 () Bool)

(assert (=> b!5175723 (= e!3225021 0)))

(declare-fun b!5175724 () Bool)

(assert (=> b!5175724 (= e!3225021 (+ 1 (size!39691 (t!373434 (t!373434 (t!373434 input!5817))))))))

(assert (= (and d!1670719 c!891299) b!5175723))

(assert (= (and d!1670719 (not c!891299)) b!5175724))

(declare-fun m!6230480 () Bool)

(assert (=> b!5175724 m!6230480))

(assert (=> b!5175469 d!1670719))

(assert (=> d!1670335 d!1670249))

(assert (=> d!1670335 d!1670159))

(declare-fun d!1670721 () Bool)

(assert (=> d!1670721 (<= (size!39691 lt!2131870) (size!39691 input!5817))))

(assert (=> d!1670721 true))

(declare-fun _$64!710 () Unit!151938)

(assert (=> d!1670721 (= (choose!38411 lt!2131870 input!5817) _$64!710)))

(declare-fun bs!1204179 () Bool)

(assert (= bs!1204179 d!1670721))

(assert (=> bs!1204179 m!6228946))

(assert (=> bs!1204179 m!6228940))

(assert (=> d!1670335 d!1670721))

(assert (=> d!1670335 d!1670241))

(declare-fun b!5175726 () Bool)

(declare-fun e!3225022 () List!60281)

(assert (=> b!5175726 (= e!3225022 (Cons!60157 (h!66605 (t!373434 lt!2131870)) (++!13171 (t!373434 (t!373434 lt!2131870)) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(declare-fun b!5175728 () Bool)

(declare-fun e!3225023 () Bool)

(declare-fun lt!2132502 () List!60281)

(assert (=> b!5175728 (= e!3225023 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157) Nil!60157)) (= lt!2132502 (t!373434 lt!2131870))))))

(declare-fun d!1670725 () Bool)

(assert (=> d!1670725 e!3225023))

(declare-fun res!2199510 () Bool)

(assert (=> d!1670725 (=> (not res!2199510) (not e!3225023))))

(assert (=> d!1670725 (= res!2199510 (= (content!10659 lt!2132502) ((_ map or) (content!10659 (t!373434 lt!2131870)) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(assert (=> d!1670725 (= lt!2132502 e!3225022)))

(declare-fun c!891300 () Bool)

(assert (=> d!1670725 (= c!891300 ((_ is Nil!60157) (t!373434 lt!2131870)))))

(assert (=> d!1670725 (= (++!13171 (t!373434 lt!2131870) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) lt!2132502)))

(declare-fun b!5175727 () Bool)

(declare-fun res!2199509 () Bool)

(assert (=> b!5175727 (=> (not res!2199509) (not e!3225023))))

(assert (=> b!5175727 (= res!2199509 (= (size!39691 lt!2132502) (+ (size!39691 (t!373434 lt!2131870)) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(declare-fun b!5175725 () Bool)

(assert (=> b!5175725 (= e!3225022 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))

(assert (= (and d!1670725 c!891300) b!5175725))

(assert (= (and d!1670725 (not c!891300)) b!5175726))

(assert (= (and d!1670725 res!2199510) b!5175727))

(assert (= (and b!5175727 res!2199509) b!5175728))

(declare-fun m!6230482 () Bool)

(assert (=> b!5175726 m!6230482))

(declare-fun m!6230484 () Bool)

(assert (=> d!1670725 m!6230484))

(assert (=> d!1670725 m!6230384))

(assert (=> d!1670725 m!6229456))

(declare-fun m!6230486 () Bool)

(assert (=> b!5175727 m!6230486))

(assert (=> b!5175727 m!6229250))

(assert (=> b!5175727 m!6229460))

(assert (=> b!5175249 d!1670725))

(declare-fun b!5175734 () Bool)

(declare-fun e!3225026 () List!60281)

(assert (=> b!5175734 (= e!3225026 (Cons!60157 (h!66605 (t!373434 (t!373434 testedP!294))) (++!13171 (t!373434 (t!373434 (t!373434 testedP!294))) (Cons!60157 lt!2131872 Nil!60157))))))

(declare-fun e!3225027 () Bool)

(declare-fun lt!2132504 () List!60281)

(declare-fun b!5175736 () Bool)

(assert (=> b!5175736 (= e!3225027 (or (not (= (Cons!60157 lt!2131872 Nil!60157) Nil!60157)) (= lt!2132504 (t!373434 (t!373434 testedP!294)))))))

(declare-fun d!1670727 () Bool)

(assert (=> d!1670727 e!3225027))

(declare-fun res!2199514 () Bool)

(assert (=> d!1670727 (=> (not res!2199514) (not e!3225027))))

(assert (=> d!1670727 (= res!2199514 (= (content!10659 lt!2132504) ((_ map or) (content!10659 (t!373434 (t!373434 testedP!294))) (content!10659 (Cons!60157 lt!2131872 Nil!60157)))))))

(assert (=> d!1670727 (= lt!2132504 e!3225026)))

(declare-fun c!891302 () Bool)

(assert (=> d!1670727 (= c!891302 ((_ is Nil!60157) (t!373434 (t!373434 testedP!294))))))

(assert (=> d!1670727 (= (++!13171 (t!373434 (t!373434 testedP!294)) (Cons!60157 lt!2131872 Nil!60157)) lt!2132504)))

(declare-fun b!5175735 () Bool)

(declare-fun res!2199513 () Bool)

(assert (=> b!5175735 (=> (not res!2199513) (not e!3225027))))

(assert (=> b!5175735 (= res!2199513 (= (size!39691 lt!2132504) (+ (size!39691 (t!373434 (t!373434 testedP!294))) (size!39691 (Cons!60157 lt!2131872 Nil!60157)))))))

(declare-fun b!5175733 () Bool)

(assert (=> b!5175733 (= e!3225026 (Cons!60157 lt!2131872 Nil!60157))))

(assert (= (and d!1670727 c!891302) b!5175733))

(assert (= (and d!1670727 (not c!891302)) b!5175734))

(assert (= (and d!1670727 res!2199514) b!5175735))

(assert (= (and b!5175735 res!2199513) b!5175736))

(declare-fun m!6230488 () Bool)

(assert (=> b!5175734 m!6230488))

(declare-fun m!6230490 () Bool)

(assert (=> d!1670727 m!6230490))

(assert (=> d!1670727 m!6230346))

(assert (=> d!1670727 m!6229222))

(declare-fun m!6230492 () Bool)

(assert (=> b!5175735 m!6230492))

(assert (=> b!5175735 m!6229516))

(assert (=> b!5175735 m!6229226))

(assert (=> b!5175375 d!1670727))

(declare-fun bs!1204180 () Bool)

(declare-fun d!1670729 () Bool)

(assert (= bs!1204180 (and d!1670729 d!1670687)))

(declare-fun lambda!258518 () Int)

(assert (=> bs!1204180 (= (= lambda!258502 lambda!258498) (= lambda!258518 lambda!258516))))

(declare-fun bs!1204181 () Bool)

(assert (= bs!1204181 (and d!1670729 d!1670661)))

(assert (=> bs!1204181 (not (= lambda!258518 lambda!258512))))

(declare-fun bs!1204182 () Bool)

(assert (= bs!1204182 (and d!1670729 b!5175502)))

(assert (=> bs!1204182 (not (= lambda!258518 lambda!258503))))

(declare-fun bs!1204183 () Bool)

(assert (= bs!1204183 (and d!1670729 d!1670639)))

(assert (=> bs!1204183 (not (= lambda!258518 lambda!258510))))

(declare-fun bs!1204184 () Bool)

(assert (= bs!1204184 (and d!1670729 d!1670237)))

(assert (=> bs!1204184 (not (= lambda!258518 lambda!258451))))

(declare-fun bs!1204185 () Bool)

(assert (= bs!1204185 (and d!1670729 b!5175503)))

(assert (=> bs!1204185 (not (= lambda!258518 lambda!258504))))

(declare-fun bs!1204186 () Bool)

(assert (= bs!1204186 (and d!1670729 b!5175436)))

(assert (=> bs!1204186 (not (= lambda!258518 lambda!258499))))

(declare-fun bs!1204187 () Bool)

(assert (= bs!1204187 (and d!1670729 b!5175437)))

(assert (=> bs!1204187 (not (= lambda!258518 lambda!258500))))

(declare-fun bs!1204188 () Bool)

(assert (= bs!1204188 (and d!1670729 d!1670427)))

(assert (=> bs!1204188 (not (= lambda!258518 lambda!258480))))

(declare-fun bs!1204189 () Bool)

(assert (= bs!1204189 (and d!1670729 d!1670557)))

(assert (=> bs!1204189 (not (= lambda!258518 lambda!258502))))

(declare-fun bs!1204190 () Bool)

(assert (= bs!1204190 (and d!1670729 d!1670625)))

(assert (=> bs!1204190 (= (= lambda!258502 lambda!258451) (= lambda!258518 lambda!258509))))

(declare-fun bs!1204191 () Bool)

(assert (= bs!1204191 (and d!1670729 d!1670469)))

(assert (=> bs!1204191 (not (= lambda!258518 lambda!258498))))

(assert (=> d!1670729 true))

(assert (=> d!1670729 (< (dynLambda!23879 order!27035 lambda!258502) (dynLambda!23879 order!27035 lambda!258518))))

(assert (=> d!1670729 (not (exists!1937 lt!2132403 lambda!258518))))

(declare-fun lt!2132505 () Unit!151938)

(assert (=> d!1670729 (= lt!2132505 (choose!38426 lt!2132403 lambda!258502))))

(assert (=> d!1670729 (forall!14158 lt!2132403 lambda!258502)))

(assert (=> d!1670729 (= (lemmaForallThenNotExists!444 lt!2132403 lambda!258502) lt!2132505)))

(declare-fun bs!1204192 () Bool)

(assert (= bs!1204192 d!1670729))

(declare-fun m!6230502 () Bool)

(assert (=> bs!1204192 m!6230502))

(declare-fun m!6230504 () Bool)

(assert (=> bs!1204192 m!6230504))

(declare-fun m!6230506 () Bool)

(assert (=> bs!1204192 m!6230506))

(assert (=> b!5175503 d!1670729))

(declare-fun d!1670733 () Bool)

(declare-fun res!2199515 () Bool)

(declare-fun e!3225029 () Bool)

(assert (=> d!1670733 (=> res!2199515 e!3225029)))

(assert (=> d!1670733 (= res!2199515 ((_ is Nil!60158) (t!373435 (exprs!4539 setElem!32299))))))

(assert (=> d!1670733 (= (forall!14155 (t!373435 (exprs!4539 setElem!32299)) lambda!258454) e!3225029)))

(declare-fun b!5175739 () Bool)

(declare-fun e!3225030 () Bool)

(assert (=> b!5175739 (= e!3225029 e!3225030)))

(declare-fun res!2199516 () Bool)

(assert (=> b!5175739 (=> (not res!2199516) (not e!3225030))))

(assert (=> b!5175739 (= res!2199516 (dynLambda!23878 lambda!258454 (h!66606 (t!373435 (exprs!4539 setElem!32299)))))))

(declare-fun b!5175740 () Bool)

(assert (=> b!5175740 (= e!3225030 (forall!14155 (t!373435 (t!373435 (exprs!4539 setElem!32299))) lambda!258454))))

(assert (= (and d!1670733 (not res!2199515)) b!5175739))

(assert (= (and b!5175739 res!2199516) b!5175740))

(declare-fun b_lambda!200947 () Bool)

(assert (=> (not b_lambda!200947) (not b!5175739)))

(declare-fun m!6230510 () Bool)

(assert (=> b!5175739 m!6230510))

(declare-fun m!6230512 () Bool)

(assert (=> b!5175740 m!6230512))

(assert (=> b!5175459 d!1670733))

(declare-fun d!1670737 () Bool)

(assert (=> d!1670737 (= (isEmpty!32207 (_1!35233 lt!2132287)) ((_ is Nil!60157) (_1!35233 lt!2132287)))))

(assert (=> b!5175344 d!1670737))

(assert (=> b!5175307 d!1670679))

(assert (=> b!5175513 d!1670363))

(declare-fun d!1670739 () Bool)

(assert (=> d!1670739 (= (head!11073 (++!13171 testedP!294 lt!2131871)) (h!66605 (++!13171 testedP!294 lt!2131871)))))

(assert (=> b!5175513 d!1670739))

(declare-fun d!1670741 () Bool)

(declare-fun lt!2132508 () Int)

(assert (=> d!1670741 (>= lt!2132508 0)))

(declare-fun e!3225032 () Int)

(assert (=> d!1670741 (= lt!2132508 e!3225032)))

(declare-fun c!891305 () Bool)

(assert (=> d!1670741 (= c!891305 ((_ is Nil!60157) lt!2132395))))

(assert (=> d!1670741 (= (size!39691 lt!2132395) lt!2132508)))

(declare-fun b!5175743 () Bool)

(assert (=> b!5175743 (= e!3225032 0)))

(declare-fun b!5175744 () Bool)

(assert (=> b!5175744 (= e!3225032 (+ 1 (size!39691 (t!373434 lt!2132395))))))

(assert (= (and d!1670741 c!891305) b!5175743))

(assert (= (and d!1670741 (not c!891305)) b!5175744))

(declare-fun m!6230514 () Bool)

(assert (=> b!5175744 m!6230514))

(assert (=> b!5175494 d!1670741))

(assert (=> b!5175494 d!1670171))

(declare-fun d!1670743 () Bool)

(declare-fun lt!2132509 () Int)

(assert (=> d!1670743 (>= lt!2132509 0)))

(declare-fun e!3225033 () Int)

(assert (=> d!1670743 (= lt!2132509 e!3225033)))

(declare-fun c!891306 () Bool)

(assert (=> d!1670743 (= c!891306 ((_ is Nil!60157) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))

(assert (=> d!1670743 (= (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) lt!2132509)))

(declare-fun b!5175745 () Bool)

(assert (=> b!5175745 (= e!3225033 0)))

(declare-fun b!5175746 () Bool)

(assert (=> b!5175746 (= e!3225033 (+ 1 (size!39691 (t!373434 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(assert (= (and d!1670743 c!891306) b!5175745))

(assert (= (and d!1670743 (not c!891306)) b!5175746))

(declare-fun m!6230518 () Bool)

(assert (=> b!5175746 m!6230518))

(assert (=> b!5175494 d!1670743))

(assert (=> b!5175292 d!1670159))

(declare-fun d!1670747 () Bool)

(declare-fun lt!2132510 () List!60281)

(assert (=> d!1670747 (= (++!13171 lt!2131958 lt!2132510) input!5817)))

(declare-fun e!3225034 () List!60281)

(assert (=> d!1670747 (= lt!2132510 e!3225034)))

(declare-fun c!891307 () Bool)

(assert (=> d!1670747 (= c!891307 ((_ is Cons!60157) lt!2131958))))

(assert (=> d!1670747 (>= (size!39691 input!5817) (size!39691 lt!2131958))))

(assert (=> d!1670747 (= (getSuffix!3436 input!5817 lt!2131958) lt!2132510)))

(declare-fun b!5175747 () Bool)

(assert (=> b!5175747 (= e!3225034 (getSuffix!3436 (tail!10172 input!5817) (t!373434 lt!2131958)))))

(declare-fun b!5175748 () Bool)

(assert (=> b!5175748 (= e!3225034 input!5817)))

(assert (= (and d!1670747 c!891307) b!5175747))

(assert (= (and d!1670747 (not c!891307)) b!5175748))

(declare-fun m!6230520 () Bool)

(assert (=> d!1670747 m!6230520))

(assert (=> d!1670747 m!6228940))

(assert (=> d!1670747 m!6229568))

(assert (=> b!5175747 m!6228956))

(assert (=> b!5175747 m!6228956))

(declare-fun m!6230522 () Bool)

(assert (=> b!5175747 m!6230522))

(assert (=> b!5175292 d!1670747))

(declare-fun d!1670749 () Bool)

(declare-fun lt!2132511 () Int)

(assert (=> d!1670749 (>= lt!2132511 0)))

(declare-fun e!3225035 () Int)

(assert (=> d!1670749 (= lt!2132511 e!3225035)))

(declare-fun c!891308 () Bool)

(assert (=> d!1670749 (= c!891308 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670749 (= (size!39691 lt!2131958) lt!2132511)))

(declare-fun b!5175749 () Bool)

(assert (=> b!5175749 (= e!3225035 0)))

(declare-fun b!5175750 () Bool)

(assert (=> b!5175750 (= e!3225035 (+ 1 (size!39691 (t!373434 lt!2131958))))))

(assert (= (and d!1670749 c!891308) b!5175749))

(assert (= (and d!1670749 (not c!891308)) b!5175750))

(declare-fun m!6230524 () Bool)

(assert (=> b!5175750 m!6230524))

(assert (=> b!5175292 d!1670749))

(declare-fun d!1670751 () Bool)

(assert (=> d!1670751 (= (head!11073 call!363493) (h!66605 call!363493))))

(assert (=> b!5175292 d!1670751))

(declare-fun b!5175752 () Bool)

(declare-fun e!3225036 () List!60281)

(assert (=> b!5175752 (= e!3225036 (Cons!60157 (h!66605 lt!2131958) (++!13171 (t!373434 lt!2131958) (Cons!60157 lt!2132257 Nil!60157))))))

(declare-fun e!3225037 () Bool)

(declare-fun lt!2132512 () List!60281)

(declare-fun b!5175754 () Bool)

(assert (=> b!5175754 (= e!3225037 (or (not (= (Cons!60157 lt!2132257 Nil!60157) Nil!60157)) (= lt!2132512 lt!2131958)))))

(declare-fun d!1670753 () Bool)

(assert (=> d!1670753 e!3225037))

(declare-fun res!2199518 () Bool)

(assert (=> d!1670753 (=> (not res!2199518) (not e!3225037))))

(assert (=> d!1670753 (= res!2199518 (= (content!10659 lt!2132512) ((_ map or) (content!10659 lt!2131958) (content!10659 (Cons!60157 lt!2132257 Nil!60157)))))))

(assert (=> d!1670753 (= lt!2132512 e!3225036)))

(declare-fun c!891309 () Bool)

(assert (=> d!1670753 (= c!891309 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670753 (= (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157)) lt!2132512)))

(declare-fun b!5175753 () Bool)

(declare-fun res!2199517 () Bool)

(assert (=> b!5175753 (=> (not res!2199517) (not e!3225037))))

(assert (=> b!5175753 (= res!2199517 (= (size!39691 lt!2132512) (+ (size!39691 lt!2131958) (size!39691 (Cons!60157 lt!2132257 Nil!60157)))))))

(declare-fun b!5175751 () Bool)

(assert (=> b!5175751 (= e!3225036 (Cons!60157 lt!2132257 Nil!60157))))

(assert (= (and d!1670753 c!891309) b!5175751))

(assert (= (and d!1670753 (not c!891309)) b!5175752))

(assert (= (and d!1670753 res!2199518) b!5175753))

(assert (= (and b!5175753 res!2199517) b!5175754))

(declare-fun m!6230526 () Bool)

(assert (=> b!5175752 m!6230526))

(declare-fun m!6230528 () Bool)

(assert (=> d!1670753 m!6230528))

(declare-fun m!6230530 () Bool)

(assert (=> d!1670753 m!6230530))

(declare-fun m!6230532 () Bool)

(assert (=> d!1670753 m!6230532))

(declare-fun m!6230534 () Bool)

(assert (=> b!5175753 m!6230534))

(assert (=> b!5175753 m!6229568))

(declare-fun m!6230536 () Bool)

(assert (=> b!5175753 m!6230536))

(assert (=> b!5175292 d!1670753))

(declare-fun b!5175756 () Bool)

(declare-fun e!3225038 () List!60281)

(assert (=> b!5175756 (= e!3225038 (Cons!60157 (h!66605 lt!2131958) (++!13171 (t!373434 lt!2131958) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157))))))

(declare-fun e!3225039 () Bool)

(declare-fun lt!2132513 () List!60281)

(declare-fun b!5175758 () Bool)

(assert (=> b!5175758 (= e!3225039 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157) Nil!60157)) (= lt!2132513 lt!2131958)))))

(declare-fun d!1670755 () Bool)

(assert (=> d!1670755 e!3225039))

(declare-fun res!2199520 () Bool)

(assert (=> d!1670755 (=> (not res!2199520) (not e!3225039))))

(assert (=> d!1670755 (= res!2199520 (= (content!10659 lt!2132513) ((_ map or) (content!10659 lt!2131958) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)))))))

(assert (=> d!1670755 (= lt!2132513 e!3225038)))

(declare-fun c!891310 () Bool)

(assert (=> d!1670755 (= c!891310 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670755 (= (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)) lt!2132513)))

(declare-fun b!5175757 () Bool)

(declare-fun res!2199519 () Bool)

(assert (=> b!5175757 (=> (not res!2199519) (not e!3225039))))

(assert (=> b!5175757 (= res!2199519 (= (size!39691 lt!2132513) (+ (size!39691 lt!2131958) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)))))))

(declare-fun b!5175755 () Bool)

(assert (=> b!5175755 (= e!3225038 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157))))

(assert (= (and d!1670755 c!891310) b!5175755))

(assert (= (and d!1670755 (not c!891310)) b!5175756))

(assert (= (and d!1670755 res!2199520) b!5175757))

(assert (= (and b!5175757 res!2199519) b!5175758))

(declare-fun m!6230538 () Bool)

(assert (=> b!5175756 m!6230538))

(declare-fun m!6230540 () Bool)

(assert (=> d!1670755 m!6230540))

(assert (=> d!1670755 m!6230530))

(declare-fun m!6230542 () Bool)

(assert (=> d!1670755 m!6230542))

(declare-fun m!6230544 () Bool)

(assert (=> b!5175757 m!6230544))

(assert (=> b!5175757 m!6229568))

(declare-fun m!6230546 () Bool)

(assert (=> b!5175757 m!6230546))

(assert (=> b!5175292 d!1670755))

(declare-fun d!1670757 () Bool)

(assert (=> d!1670757 (= (head!11073 (getSuffix!3436 input!5817 lt!2131958)) (h!66605 (getSuffix!3436 input!5817 lt!2131958)))))

(assert (=> b!5175292 d!1670757))

(declare-fun d!1670759 () Bool)

(declare-fun e!3225041 () Bool)

(assert (=> d!1670759 e!3225041))

(declare-fun res!2199522 () Bool)

(assert (=> d!1670759 (=> res!2199522 e!3225041)))

(declare-fun lt!2132514 () Bool)

(assert (=> d!1670759 (= res!2199522 (not lt!2132514))))

(declare-fun e!3225042 () Bool)

(assert (=> d!1670759 (= lt!2132514 e!3225042)))

(declare-fun res!2199521 () Bool)

(assert (=> d!1670759 (=> res!2199521 e!3225042)))

(assert (=> d!1670759 (= res!2199521 ((_ is Nil!60157) (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157))))))

(assert (=> d!1670759 (= (isPrefix!5788 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)) input!5817) lt!2132514)))

(declare-fun b!5175762 () Bool)

(assert (=> b!5175762 (= e!3225041 (>= (size!39691 input!5817) (size!39691 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)))))))

(declare-fun b!5175759 () Bool)

(declare-fun e!3225040 () Bool)

(assert (=> b!5175759 (= e!3225042 e!3225040)))

(declare-fun res!2199523 () Bool)

(assert (=> b!5175759 (=> (not res!2199523) (not e!3225040))))

(assert (=> b!5175759 (= res!2199523 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175761 () Bool)

(assert (=> b!5175761 (= e!3225040 (isPrefix!5788 (tail!10172 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157))) (tail!10172 input!5817)))))

(declare-fun b!5175760 () Bool)

(declare-fun res!2199524 () Bool)

(assert (=> b!5175760 (=> (not res!2199524) (not e!3225040))))

(assert (=> b!5175760 (= res!2199524 (= (head!11073 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157))) (head!11073 input!5817)))))

(assert (= (and d!1670759 (not res!2199521)) b!5175759))

(assert (= (and b!5175759 res!2199523) b!5175760))

(assert (= (and b!5175760 res!2199524) b!5175761))

(assert (= (and d!1670759 (not res!2199522)) b!5175762))

(assert (=> b!5175762 m!6228940))

(assert (=> b!5175762 m!6229562))

(declare-fun m!6230548 () Bool)

(assert (=> b!5175762 m!6230548))

(assert (=> b!5175761 m!6229562))

(declare-fun m!6230550 () Bool)

(assert (=> b!5175761 m!6230550))

(assert (=> b!5175761 m!6228956))

(assert (=> b!5175761 m!6230550))

(assert (=> b!5175761 m!6228956))

(declare-fun m!6230552 () Bool)

(assert (=> b!5175761 m!6230552))

(assert (=> b!5175760 m!6229562))

(declare-fun m!6230554 () Bool)

(assert (=> b!5175760 m!6230554))

(assert (=> b!5175760 m!6229212))

(assert (=> b!5175292 d!1670759))

(declare-fun d!1670761 () Bool)

(assert (=> d!1670761 (isPrefix!5788 (++!13171 lt!2131958 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131958)) Nil!60157)) input!5817)))

(declare-fun lt!2132515 () Unit!151938)

(assert (=> d!1670761 (= lt!2132515 (choose!38410 lt!2131958 input!5817))))

(assert (=> d!1670761 (isPrefix!5788 lt!2131958 input!5817)))

(assert (=> d!1670761 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131958 input!5817) lt!2132515)))

(declare-fun bs!1204193 () Bool)

(assert (= bs!1204193 d!1670761))

(assert (=> bs!1204193 m!6229548))

(assert (=> bs!1204193 m!6229564))

(declare-fun m!6230556 () Bool)

(assert (=> bs!1204193 m!6230556))

(assert (=> bs!1204193 m!6229548))

(declare-fun m!6230558 () Bool)

(assert (=> bs!1204193 m!6230558))

(assert (=> bs!1204193 m!6229562))

(assert (=> bs!1204193 m!6229570))

(assert (=> bs!1204193 m!6229562))

(assert (=> b!5175292 d!1670761))

(declare-fun b!5175764 () Bool)

(declare-fun e!3225043 () List!60281)

(assert (=> b!5175764 (= e!3225043 (Cons!60157 (h!66605 lt!2131958) (++!13171 (t!373434 lt!2131958) (Cons!60157 (head!11073 call!363493) Nil!60157))))))

(declare-fun lt!2132516 () List!60281)

(declare-fun b!5175766 () Bool)

(declare-fun e!3225044 () Bool)

(assert (=> b!5175766 (= e!3225044 (or (not (= (Cons!60157 (head!11073 call!363493) Nil!60157) Nil!60157)) (= lt!2132516 lt!2131958)))))

(declare-fun d!1670763 () Bool)

(assert (=> d!1670763 e!3225044))

(declare-fun res!2199526 () Bool)

(assert (=> d!1670763 (=> (not res!2199526) (not e!3225044))))

(assert (=> d!1670763 (= res!2199526 (= (content!10659 lt!2132516) ((_ map or) (content!10659 lt!2131958) (content!10659 (Cons!60157 (head!11073 call!363493) Nil!60157)))))))

(assert (=> d!1670763 (= lt!2132516 e!3225043)))

(declare-fun c!891311 () Bool)

(assert (=> d!1670763 (= c!891311 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670763 (= (++!13171 lt!2131958 (Cons!60157 (head!11073 call!363493) Nil!60157)) lt!2132516)))

(declare-fun b!5175765 () Bool)

(declare-fun res!2199525 () Bool)

(assert (=> b!5175765 (=> (not res!2199525) (not e!3225044))))

(assert (=> b!5175765 (= res!2199525 (= (size!39691 lt!2132516) (+ (size!39691 lt!2131958) (size!39691 (Cons!60157 (head!11073 call!363493) Nil!60157)))))))

(declare-fun b!5175763 () Bool)

(assert (=> b!5175763 (= e!3225043 (Cons!60157 (head!11073 call!363493) Nil!60157))))

(assert (= (and d!1670763 c!891311) b!5175763))

(assert (= (and d!1670763 (not c!891311)) b!5175764))

(assert (= (and d!1670763 res!2199526) b!5175765))

(assert (= (and b!5175765 res!2199525) b!5175766))

(declare-fun m!6230560 () Bool)

(assert (=> b!5175764 m!6230560))

(declare-fun m!6230562 () Bool)

(assert (=> d!1670763 m!6230562))

(assert (=> d!1670763 m!6230530))

(declare-fun m!6230564 () Bool)

(assert (=> d!1670763 m!6230564))

(declare-fun m!6230566 () Bool)

(assert (=> b!5175765 m!6230566))

(assert (=> b!5175765 m!6229568))

(declare-fun m!6230568 () Bool)

(assert (=> b!5175765 m!6230568))

(assert (=> b!5175292 d!1670763))

(declare-fun d!1670765 () Bool)

(assert (=> d!1670765 (= (++!13171 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157)) lt!2132244) input!5817)))

(declare-fun lt!2132517 () Unit!151938)

(assert (=> d!1670765 (= lt!2132517 (choose!38414 lt!2131958 lt!2132257 lt!2132244 input!5817))))

(assert (=> d!1670765 (= (++!13171 lt!2131958 (Cons!60157 lt!2132257 lt!2132244)) input!5817)))

(assert (=> d!1670765 (= (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131958 lt!2132257 lt!2132244 input!5817) lt!2132517)))

(declare-fun bs!1204194 () Bool)

(assert (= bs!1204194 d!1670765))

(assert (=> bs!1204194 m!6229552))

(assert (=> bs!1204194 m!6229552))

(assert (=> bs!1204194 m!6229558))

(declare-fun m!6230570 () Bool)

(assert (=> bs!1204194 m!6230570))

(declare-fun m!6230572 () Bool)

(assert (=> bs!1204194 m!6230572))

(assert (=> b!5175292 d!1670765))

(declare-fun e!3225045 () List!60281)

(declare-fun b!5175768 () Bool)

(assert (=> b!5175768 (= e!3225045 (Cons!60157 (h!66605 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157))) (++!13171 (t!373434 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157))) lt!2132244)))))

(declare-fun e!3225046 () Bool)

(declare-fun b!5175770 () Bool)

(declare-fun lt!2132518 () List!60281)

(assert (=> b!5175770 (= e!3225046 (or (not (= lt!2132244 Nil!60157)) (= lt!2132518 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157)))))))

(declare-fun d!1670767 () Bool)

(assert (=> d!1670767 e!3225046))

(declare-fun res!2199528 () Bool)

(assert (=> d!1670767 (=> (not res!2199528) (not e!3225046))))

(assert (=> d!1670767 (= res!2199528 (= (content!10659 lt!2132518) ((_ map or) (content!10659 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157))) (content!10659 lt!2132244))))))

(assert (=> d!1670767 (= lt!2132518 e!3225045)))

(declare-fun c!891312 () Bool)

(assert (=> d!1670767 (= c!891312 ((_ is Nil!60157) (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157))))))

(assert (=> d!1670767 (= (++!13171 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157)) lt!2132244) lt!2132518)))

(declare-fun b!5175769 () Bool)

(declare-fun res!2199527 () Bool)

(assert (=> b!5175769 (=> (not res!2199527) (not e!3225046))))

(assert (=> b!5175769 (= res!2199527 (= (size!39691 lt!2132518) (+ (size!39691 (++!13171 lt!2131958 (Cons!60157 lt!2132257 Nil!60157))) (size!39691 lt!2132244))))))

(declare-fun b!5175767 () Bool)

(assert (=> b!5175767 (= e!3225045 lt!2132244)))

(assert (= (and d!1670767 c!891312) b!5175767))

(assert (= (and d!1670767 (not c!891312)) b!5175768))

(assert (= (and d!1670767 res!2199528) b!5175769))

(assert (= (and b!5175769 res!2199527) b!5175770))

(declare-fun m!6230574 () Bool)

(assert (=> b!5175768 m!6230574))

(declare-fun m!6230576 () Bool)

(assert (=> d!1670767 m!6230576))

(assert (=> d!1670767 m!6229552))

(declare-fun m!6230578 () Bool)

(assert (=> d!1670767 m!6230578))

(declare-fun m!6230580 () Bool)

(assert (=> d!1670767 m!6230580))

(declare-fun m!6230582 () Bool)

(assert (=> b!5175769 m!6230582))

(assert (=> b!5175769 m!6229552))

(declare-fun m!6230584 () Bool)

(assert (=> b!5175769 m!6230584))

(declare-fun m!6230586 () Bool)

(assert (=> b!5175769 m!6230586))

(assert (=> b!5175292 d!1670767))

(declare-fun d!1670769 () Bool)

(assert (=> d!1670769 (= (tail!10172 call!363493) (t!373434 call!363493))))

(assert (=> b!5175292 d!1670769))

(declare-fun d!1670771 () Bool)

(assert (=> d!1670771 (<= (size!39691 lt!2131958) (size!39691 input!5817))))

(declare-fun lt!2132521 () Unit!151938)

(assert (=> d!1670771 (= lt!2132521 (choose!38411 lt!2131958 input!5817))))

(assert (=> d!1670771 (isPrefix!5788 lt!2131958 input!5817)))

(assert (=> d!1670771 (= (lemmaIsPrefixThenSmallerEqSize!949 lt!2131958 input!5817) lt!2132521)))

(declare-fun bs!1204195 () Bool)

(assert (= bs!1204195 d!1670771))

(assert (=> bs!1204195 m!6229568))

(assert (=> bs!1204195 m!6228940))

(declare-fun m!6230588 () Bool)

(assert (=> bs!1204195 m!6230588))

(assert (=> bs!1204195 m!6230556))

(assert (=> b!5175292 d!1670771))

(declare-fun d!1670773 () Bool)

(declare-fun res!2199529 () Bool)

(declare-fun e!3225049 () Bool)

(assert (=> d!1670773 (=> res!2199529 e!3225049)))

(assert (=> d!1670773 (= res!2199529 ((_ is Nil!60158) (exprs!4539 setElem!32307)))))

(assert (=> d!1670773 (= (forall!14155 (exprs!4539 setElem!32307) lambda!258457) e!3225049)))

(declare-fun b!5175771 () Bool)

(declare-fun e!3225050 () Bool)

(assert (=> b!5175771 (= e!3225049 e!3225050)))

(declare-fun res!2199530 () Bool)

(assert (=> b!5175771 (=> (not res!2199530) (not e!3225050))))

(assert (=> b!5175771 (= res!2199530 (dynLambda!23878 lambda!258457 (h!66606 (exprs!4539 setElem!32307))))))

(declare-fun b!5175772 () Bool)

(assert (=> b!5175772 (= e!3225050 (forall!14155 (t!373435 (exprs!4539 setElem!32307)) lambda!258457))))

(assert (= (and d!1670773 (not res!2199529)) b!5175771))

(assert (= (and b!5175771 res!2199530) b!5175772))

(declare-fun b_lambda!200949 () Bool)

(assert (=> (not b_lambda!200949) (not b!5175771)))

(declare-fun m!6230590 () Bool)

(assert (=> b!5175771 m!6230590))

(declare-fun m!6230592 () Bool)

(assert (=> b!5175772 m!6230592))

(assert (=> d!1670299 d!1670773))

(declare-fun d!1670775 () Bool)

(declare-fun lt!2132522 () Int)

(assert (=> d!1670775 (>= lt!2132522 0)))

(declare-fun e!3225051 () Int)

(assert (=> d!1670775 (= lt!2132522 e!3225051)))

(declare-fun c!891313 () Bool)

(assert (=> d!1670775 (= c!891313 ((_ is Nil!60157) (++!13171 lt!2131870 (tail!10172 lt!2131871))))))

(assert (=> d!1670775 (= (size!39691 (++!13171 lt!2131870 (tail!10172 lt!2131871))) lt!2132522)))

(declare-fun b!5175773 () Bool)

(assert (=> b!5175773 (= e!3225051 0)))

(declare-fun b!5175774 () Bool)

(assert (=> b!5175774 (= e!3225051 (+ 1 (size!39691 (t!373434 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))))

(assert (= (and d!1670775 c!891313) b!5175773))

(assert (= (and d!1670775 (not c!891313)) b!5175774))

(declare-fun m!6230594 () Bool)

(assert (=> b!5175774 m!6230594))

(assert (=> b!5175393 d!1670775))

(assert (=> b!5175393 d!1670249))

(declare-fun d!1670777 () Bool)

(assert (=> d!1670777 (= (isEmpty!32207 (_1!35233 lt!2132247)) ((_ is Nil!60157) (_1!35233 lt!2132247)))))

(assert (=> b!5175288 d!1670777))

(declare-fun d!1670779 () Bool)

(assert (=> d!1670779 (isPrefix!5788 lt!2131958 (++!13171 lt!2131958 call!363493))))

(declare-fun lt!2132523 () Unit!151938)

(assert (=> d!1670779 (= lt!2132523 (choose!38419 lt!2131958 call!363493))))

(assert (=> d!1670779 (= (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131958 call!363493) lt!2132523)))

(declare-fun bs!1204196 () Bool)

(assert (= bs!1204196 d!1670779))

(assert (=> bs!1204196 m!6229586))

(assert (=> bs!1204196 m!6229586))

(assert (=> bs!1204196 m!6229590))

(declare-fun m!6230596 () Bool)

(assert (=> bs!1204196 m!6230596))

(assert (=> d!1670375 d!1670779))

(assert (=> d!1670375 d!1670747))

(declare-fun d!1670781 () Bool)

(assert (=> d!1670781 (= call!363493 lt!2132239)))

(declare-fun lt!2132524 () Unit!151938)

(assert (=> d!1670781 (= lt!2132524 (choose!38420 lt!2131958 call!363493 lt!2131958 lt!2132239 input!5817))))

(assert (=> d!1670781 (isPrefix!5788 lt!2131958 input!5817)))

(assert (=> d!1670781 (= (lemmaSamePrefixThenSameSuffix!2709 lt!2131958 call!363493 lt!2131958 lt!2132239 input!5817) lt!2132524)))

(declare-fun bs!1204197 () Bool)

(assert (= bs!1204197 d!1670781))

(declare-fun m!6230598 () Bool)

(assert (=> bs!1204197 m!6230598))

(assert (=> bs!1204197 m!6230556))

(assert (=> d!1670375 d!1670781))

(declare-fun d!1670783 () Bool)

(declare-fun e!3225053 () Bool)

(assert (=> d!1670783 e!3225053))

(declare-fun res!2199532 () Bool)

(assert (=> d!1670783 (=> res!2199532 e!3225053)))

(declare-fun lt!2132525 () Bool)

(assert (=> d!1670783 (= res!2199532 (not lt!2132525))))

(declare-fun e!3225054 () Bool)

(assert (=> d!1670783 (= lt!2132525 e!3225054)))

(declare-fun res!2199531 () Bool)

(assert (=> d!1670783 (=> res!2199531 e!3225054)))

(assert (=> d!1670783 (= res!2199531 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670783 (= (isPrefix!5788 lt!2131958 (++!13171 lt!2131958 call!363493)) lt!2132525)))

(declare-fun b!5175778 () Bool)

(assert (=> b!5175778 (= e!3225053 (>= (size!39691 (++!13171 lt!2131958 call!363493)) (size!39691 lt!2131958)))))

(declare-fun b!5175775 () Bool)

(declare-fun e!3225052 () Bool)

(assert (=> b!5175775 (= e!3225054 e!3225052)))

(declare-fun res!2199533 () Bool)

(assert (=> b!5175775 (=> (not res!2199533) (not e!3225052))))

(assert (=> b!5175775 (= res!2199533 (not ((_ is Nil!60157) (++!13171 lt!2131958 call!363493))))))

(declare-fun b!5175777 () Bool)

(assert (=> b!5175777 (= e!3225052 (isPrefix!5788 (tail!10172 lt!2131958) (tail!10172 (++!13171 lt!2131958 call!363493))))))

(declare-fun b!5175776 () Bool)

(declare-fun res!2199534 () Bool)

(assert (=> b!5175776 (=> (not res!2199534) (not e!3225052))))

(assert (=> b!5175776 (= res!2199534 (= (head!11073 lt!2131958) (head!11073 (++!13171 lt!2131958 call!363493))))))

(assert (= (and d!1670783 (not res!2199531)) b!5175775))

(assert (= (and b!5175775 res!2199533) b!5175776))

(assert (= (and b!5175776 res!2199534) b!5175777))

(assert (= (and d!1670783 (not res!2199532)) b!5175778))

(assert (=> b!5175778 m!6229586))

(declare-fun m!6230600 () Bool)

(assert (=> b!5175778 m!6230600))

(assert (=> b!5175778 m!6229568))

(declare-fun m!6230602 () Bool)

(assert (=> b!5175777 m!6230602))

(assert (=> b!5175777 m!6229586))

(declare-fun m!6230604 () Bool)

(assert (=> b!5175777 m!6230604))

(assert (=> b!5175777 m!6230602))

(assert (=> b!5175777 m!6230604))

(declare-fun m!6230606 () Bool)

(assert (=> b!5175777 m!6230606))

(declare-fun m!6230608 () Bool)

(assert (=> b!5175776 m!6230608))

(assert (=> b!5175776 m!6229586))

(declare-fun m!6230610 () Bool)

(assert (=> b!5175776 m!6230610))

(assert (=> d!1670375 d!1670783))

(declare-fun bs!1204198 () Bool)

(declare-fun d!1670785 () Bool)

(assert (= bs!1204198 (and d!1670785 d!1670687)))

(declare-fun lambda!258521 () Int)

(assert (=> bs!1204198 (not (= lambda!258521 lambda!258516))))

(declare-fun bs!1204199 () Bool)

(assert (= bs!1204199 (and d!1670785 d!1670729)))

(assert (=> bs!1204199 (not (= lambda!258521 lambda!258518))))

(declare-fun bs!1204200 () Bool)

(assert (= bs!1204200 (and d!1670785 d!1670661)))

(assert (=> bs!1204200 (not (= lambda!258521 lambda!258512))))

(declare-fun bs!1204201 () Bool)

(assert (= bs!1204201 (and d!1670785 b!5175502)))

(assert (=> bs!1204201 (not (= lambda!258521 lambda!258503))))

(declare-fun bs!1204202 () Bool)

(assert (= bs!1204202 (and d!1670785 d!1670639)))

(assert (=> bs!1204202 (not (= lambda!258521 lambda!258510))))

(declare-fun bs!1204203 () Bool)

(assert (= bs!1204203 (and d!1670785 d!1670237)))

(assert (=> bs!1204203 (not (= lambda!258521 lambda!258451))))

(declare-fun bs!1204204 () Bool)

(assert (= bs!1204204 (and d!1670785 b!5175503)))

(assert (=> bs!1204204 (not (= lambda!258521 lambda!258504))))

(declare-fun bs!1204205 () Bool)

(assert (= bs!1204205 (and d!1670785 b!5175436)))

(assert (=> bs!1204205 (not (= lambda!258521 lambda!258499))))

(declare-fun bs!1204206 () Bool)

(assert (= bs!1204206 (and d!1670785 b!5175437)))

(assert (=> bs!1204206 (not (= lambda!258521 lambda!258500))))

(declare-fun bs!1204207 () Bool)

(assert (= bs!1204207 (and d!1670785 d!1670427)))

(assert (=> bs!1204207 (not (= lambda!258521 lambda!258480))))

(declare-fun bs!1204208 () Bool)

(assert (= bs!1204208 (and d!1670785 d!1670557)))

(assert (=> bs!1204208 (= lambda!258521 lambda!258502)))

(declare-fun bs!1204209 () Bool)

(assert (= bs!1204209 (and d!1670785 d!1670625)))

(assert (=> bs!1204209 (not (= lambda!258521 lambda!258509))))

(declare-fun bs!1204210 () Bool)

(assert (= bs!1204210 (and d!1670785 d!1670469)))

(assert (=> bs!1204210 (= lambda!258521 lambda!258498)))

(declare-fun bs!1204211 () Bool)

(declare-fun b!5175779 () Bool)

(assert (= bs!1204211 (and b!5175779 d!1670687)))

(declare-fun lambda!258523 () Int)

(assert (=> bs!1204211 (not (= lambda!258523 lambda!258516))))

(declare-fun bs!1204213 () Bool)

(assert (= bs!1204213 (and b!5175779 d!1670729)))

(assert (=> bs!1204213 (not (= lambda!258523 lambda!258518))))

(declare-fun bs!1204214 () Bool)

(assert (= bs!1204214 (and b!5175779 d!1670661)))

(assert (=> bs!1204214 (not (= lambda!258523 lambda!258512))))

(declare-fun bs!1204215 () Bool)

(assert (= bs!1204215 (and b!5175779 b!5175502)))

(assert (=> bs!1204215 (= lambda!258523 lambda!258503)))

(declare-fun bs!1204217 () Bool)

(assert (= bs!1204217 (and b!5175779 d!1670639)))

(assert (=> bs!1204217 (not (= lambda!258523 lambda!258510))))

(declare-fun bs!1204218 () Bool)

(assert (= bs!1204218 (and b!5175779 d!1670785)))

(assert (=> bs!1204218 (not (= lambda!258523 lambda!258521))))

(declare-fun bs!1204219 () Bool)

(assert (= bs!1204219 (and b!5175779 d!1670237)))

(assert (=> bs!1204219 (not (= lambda!258523 lambda!258451))))

(declare-fun bs!1204221 () Bool)

(assert (= bs!1204221 (and b!5175779 b!5175503)))

(assert (=> bs!1204221 (= lambda!258523 lambda!258504)))

(declare-fun bs!1204222 () Bool)

(assert (= bs!1204222 (and b!5175779 b!5175436)))

(assert (=> bs!1204222 (= lambda!258523 lambda!258499)))

(declare-fun bs!1204223 () Bool)

(assert (= bs!1204223 (and b!5175779 b!5175437)))

(assert (=> bs!1204223 (= lambda!258523 lambda!258500)))

(declare-fun bs!1204225 () Bool)

(assert (= bs!1204225 (and b!5175779 d!1670427)))

(assert (=> bs!1204225 (not (= lambda!258523 lambda!258480))))

(declare-fun bs!1204226 () Bool)

(assert (= bs!1204226 (and b!5175779 d!1670557)))

(assert (=> bs!1204226 (not (= lambda!258523 lambda!258502))))

(declare-fun bs!1204228 () Bool)

(assert (= bs!1204228 (and b!5175779 d!1670625)))

(assert (=> bs!1204228 (not (= lambda!258523 lambda!258509))))

(declare-fun bs!1204229 () Bool)

(assert (= bs!1204229 (and b!5175779 d!1670469)))

(assert (=> bs!1204229 (not (= lambda!258523 lambda!258498))))

(declare-fun bs!1204232 () Bool)

(declare-fun b!5175780 () Bool)

(assert (= bs!1204232 (and b!5175780 d!1670687)))

(declare-fun lambda!258524 () Int)

(assert (=> bs!1204232 (not (= lambda!258524 lambda!258516))))

(declare-fun bs!1204234 () Bool)

(assert (= bs!1204234 (and b!5175780 b!5175779)))

(assert (=> bs!1204234 (= lambda!258524 lambda!258523)))

(declare-fun bs!1204235 () Bool)

(assert (= bs!1204235 (and b!5175780 d!1670729)))

(assert (=> bs!1204235 (not (= lambda!258524 lambda!258518))))

(declare-fun bs!1204236 () Bool)

(assert (= bs!1204236 (and b!5175780 d!1670661)))

(assert (=> bs!1204236 (not (= lambda!258524 lambda!258512))))

(declare-fun bs!1204237 () Bool)

(assert (= bs!1204237 (and b!5175780 b!5175502)))

(assert (=> bs!1204237 (= lambda!258524 lambda!258503)))

(declare-fun bs!1204238 () Bool)

(assert (= bs!1204238 (and b!5175780 d!1670639)))

(assert (=> bs!1204238 (not (= lambda!258524 lambda!258510))))

(declare-fun bs!1204239 () Bool)

(assert (= bs!1204239 (and b!5175780 d!1670785)))

(assert (=> bs!1204239 (not (= lambda!258524 lambda!258521))))

(declare-fun bs!1204240 () Bool)

(assert (= bs!1204240 (and b!5175780 d!1670237)))

(assert (=> bs!1204240 (not (= lambda!258524 lambda!258451))))

(declare-fun bs!1204241 () Bool)

(assert (= bs!1204241 (and b!5175780 b!5175503)))

(assert (=> bs!1204241 (= lambda!258524 lambda!258504)))

(declare-fun bs!1204243 () Bool)

(assert (= bs!1204243 (and b!5175780 b!5175436)))

(assert (=> bs!1204243 (= lambda!258524 lambda!258499)))

(declare-fun bs!1204244 () Bool)

(assert (= bs!1204244 (and b!5175780 b!5175437)))

(assert (=> bs!1204244 (= lambda!258524 lambda!258500)))

(declare-fun bs!1204245 () Bool)

(assert (= bs!1204245 (and b!5175780 d!1670427)))

(assert (=> bs!1204245 (not (= lambda!258524 lambda!258480))))

(declare-fun bs!1204246 () Bool)

(assert (= bs!1204246 (and b!5175780 d!1670557)))

(assert (=> bs!1204246 (not (= lambda!258524 lambda!258502))))

(declare-fun bs!1204247 () Bool)

(assert (= bs!1204247 (and b!5175780 d!1670625)))

(assert (=> bs!1204247 (not (= lambda!258524 lambda!258509))))

(declare-fun bs!1204248 () Bool)

(assert (= bs!1204248 (and b!5175780 d!1670469)))

(assert (=> bs!1204248 (not (= lambda!258524 lambda!258498))))

(declare-fun e!3225055 () Unit!151938)

(declare-fun Unit!151982 () Unit!151938)

(assert (=> b!5175780 (= e!3225055 Unit!151982)))

(declare-fun lt!2132531 () List!60283)

(declare-fun call!363610 () List!60283)

(assert (=> b!5175780 (= lt!2132531 call!363610)))

(declare-fun lt!2132526 () Unit!151938)

(assert (=> b!5175780 (= lt!2132526 (lemmaForallThenNotExists!444 lt!2132531 lambda!258521))))

(declare-fun call!363609 () Bool)

(assert (=> b!5175780 (not call!363609)))

(declare-fun lt!2132533 () Unit!151938)

(assert (=> b!5175780 (= lt!2132533 lt!2132526)))

(declare-fun bm!363605 () Bool)

(declare-fun lt!2132530 () List!60283)

(declare-fun c!891314 () Bool)

(assert (=> bm!363605 (= call!363609 (exists!1937 (ite c!891314 lt!2132530 lt!2132531) (ite c!891314 lambda!258523 lambda!258524)))))

(declare-fun Unit!151983 () Unit!151938)

(assert (=> b!5175779 (= e!3225055 Unit!151983)))

(assert (=> b!5175779 (= lt!2132530 call!363610)))

(declare-fun lt!2132532 () Unit!151938)

(assert (=> b!5175779 (= lt!2132532 (lemmaNotForallThenExists!477 lt!2132530 lambda!258521))))

(assert (=> b!5175779 call!363609))

(declare-fun lt!2132529 () Unit!151938)

(assert (=> b!5175779 (= lt!2132529 lt!2132532)))

(declare-fun bm!363604 () Bool)

(assert (=> bm!363604 (= call!363610 (toList!8456 call!363494))))

(declare-fun lt!2132528 () Bool)

(assert (=> d!1670785 (= lt!2132528 (isEmpty!32209 (getLanguageWitness!1013 call!363494)))))

(assert (=> d!1670785 (= lt!2132528 (forall!14157 call!363494 lambda!258521))))

(declare-fun lt!2132527 () Unit!151938)

(assert (=> d!1670785 (= lt!2132527 e!3225055)))

(assert (=> d!1670785 (= c!891314 (not (forall!14157 call!363494 lambda!258521)))))

(assert (=> d!1670785 (= (lostCauseZipper!1342 call!363494) lt!2132528)))

(assert (= (and d!1670785 c!891314) b!5175779))

(assert (= (and d!1670785 (not c!891314)) b!5175780))

(assert (= (or b!5175779 b!5175780) bm!363604))

(assert (= (or b!5175779 b!5175780) bm!363605))

(declare-fun m!6230618 () Bool)

(assert (=> bm!363604 m!6230618))

(declare-fun m!6230620 () Bool)

(assert (=> b!5175780 m!6230620))

(declare-fun m!6230622 () Bool)

(assert (=> bm!363605 m!6230622))

(declare-fun m!6230624 () Bool)

(assert (=> b!5175779 m!6230624))

(declare-fun m!6230626 () Bool)

(assert (=> d!1670785 m!6230626))

(assert (=> d!1670785 m!6230626))

(declare-fun m!6230628 () Bool)

(assert (=> d!1670785 m!6230628))

(declare-fun m!6230630 () Bool)

(assert (=> d!1670785 m!6230630))

(assert (=> d!1670785 m!6230630))

(assert (=> d!1670375 d!1670785))

(declare-fun b!5175784 () Bool)

(declare-fun e!3225056 () List!60281)

(assert (=> b!5175784 (= e!3225056 (Cons!60157 (h!66605 lt!2131958) (++!13171 (t!373434 lt!2131958) call!363493)))))

(declare-fun e!3225057 () Bool)

(declare-fun b!5175786 () Bool)

(declare-fun lt!2132535 () List!60281)

(assert (=> b!5175786 (= e!3225057 (or (not (= call!363493 Nil!60157)) (= lt!2132535 lt!2131958)))))

(declare-fun d!1670789 () Bool)

(assert (=> d!1670789 e!3225057))

(declare-fun res!2199536 () Bool)

(assert (=> d!1670789 (=> (not res!2199536) (not e!3225057))))

(assert (=> d!1670789 (= res!2199536 (= (content!10659 lt!2132535) ((_ map or) (content!10659 lt!2131958) (content!10659 call!363493))))))

(assert (=> d!1670789 (= lt!2132535 e!3225056)))

(declare-fun c!891315 () Bool)

(assert (=> d!1670789 (= c!891315 ((_ is Nil!60157) lt!2131958))))

(assert (=> d!1670789 (= (++!13171 lt!2131958 call!363493) lt!2132535)))

(declare-fun b!5175785 () Bool)

(declare-fun res!2199535 () Bool)

(assert (=> b!5175785 (=> (not res!2199535) (not e!3225057))))

(assert (=> b!5175785 (= res!2199535 (= (size!39691 lt!2132535) (+ (size!39691 lt!2131958) (size!39691 call!363493))))))

(declare-fun b!5175783 () Bool)

(assert (=> b!5175783 (= e!3225056 call!363493)))

(assert (= (and d!1670789 c!891315) b!5175783))

(assert (= (and d!1670789 (not c!891315)) b!5175784))

(assert (= (and d!1670789 res!2199536) b!5175785))

(assert (= (and b!5175785 res!2199535) b!5175786))

(declare-fun m!6230632 () Bool)

(assert (=> b!5175784 m!6230632))

(declare-fun m!6230634 () Bool)

(assert (=> d!1670789 m!6230634))

(assert (=> d!1670789 m!6230530))

(declare-fun m!6230636 () Bool)

(assert (=> d!1670789 m!6230636))

(declare-fun m!6230638 () Bool)

(assert (=> b!5175785 m!6230638))

(assert (=> b!5175785 m!6229568))

(declare-fun m!6230640 () Bool)

(assert (=> b!5175785 m!6230640))

(assert (=> d!1670375 d!1670789))

(declare-fun b!5175788 () Bool)

(declare-fun e!3225058 () List!60281)

(assert (=> b!5175788 (= e!3225058 (Cons!60157 (h!66605 (_1!35233 lt!2132242)) (++!13171 (t!373434 (_1!35233 lt!2132242)) (_2!35233 lt!2132242))))))

(declare-fun b!5175790 () Bool)

(declare-fun e!3225059 () Bool)

(declare-fun lt!2132536 () List!60281)

(assert (=> b!5175790 (= e!3225059 (or (not (= (_2!35233 lt!2132242) Nil!60157)) (= lt!2132536 (_1!35233 lt!2132242))))))

(declare-fun d!1670791 () Bool)

(assert (=> d!1670791 e!3225059))

(declare-fun res!2199538 () Bool)

(assert (=> d!1670791 (=> (not res!2199538) (not e!3225059))))

(assert (=> d!1670791 (= res!2199538 (= (content!10659 lt!2132536) ((_ map or) (content!10659 (_1!35233 lt!2132242)) (content!10659 (_2!35233 lt!2132242)))))))

(assert (=> d!1670791 (= lt!2132536 e!3225058)))

(declare-fun c!891316 () Bool)

(assert (=> d!1670791 (= c!891316 ((_ is Nil!60157) (_1!35233 lt!2132242)))))

(assert (=> d!1670791 (= (++!13171 (_1!35233 lt!2132242) (_2!35233 lt!2132242)) lt!2132536)))

(declare-fun b!5175789 () Bool)

(declare-fun res!2199537 () Bool)

(assert (=> b!5175789 (=> (not res!2199537) (not e!3225059))))

(assert (=> b!5175789 (= res!2199537 (= (size!39691 lt!2132536) (+ (size!39691 (_1!35233 lt!2132242)) (size!39691 (_2!35233 lt!2132242)))))))

(declare-fun b!5175787 () Bool)

(assert (=> b!5175787 (= e!3225058 (_2!35233 lt!2132242))))

(assert (= (and d!1670791 c!891316) b!5175787))

(assert (= (and d!1670791 (not c!891316)) b!5175788))

(assert (= (and d!1670791 res!2199538) b!5175789))

(assert (= (and b!5175789 res!2199537) b!5175790))

(declare-fun m!6230642 () Bool)

(assert (=> b!5175788 m!6230642))

(declare-fun m!6230644 () Bool)

(assert (=> d!1670791 m!6230644))

(declare-fun m!6230646 () Bool)

(assert (=> d!1670791 m!6230646))

(declare-fun m!6230648 () Bool)

(assert (=> d!1670791 m!6230648))

(declare-fun m!6230650 () Bool)

(assert (=> b!5175789 m!6230650))

(assert (=> b!5175789 m!6229576))

(declare-fun m!6230652 () Bool)

(assert (=> b!5175789 m!6230652))

(assert (=> d!1670375 d!1670791))

(declare-fun d!1670793 () Bool)

(declare-fun e!3225061 () Bool)

(assert (=> d!1670793 e!3225061))

(declare-fun res!2199540 () Bool)

(assert (=> d!1670793 (=> res!2199540 e!3225061)))

(declare-fun lt!2132537 () Bool)

(assert (=> d!1670793 (= res!2199540 (not lt!2132537))))

(declare-fun e!3225062 () Bool)

(assert (=> d!1670793 (= lt!2132537 e!3225062)))

(declare-fun res!2199539 () Bool)

(assert (=> d!1670793 (=> res!2199539 e!3225062)))

(assert (=> d!1670793 (= res!2199539 ((_ is Nil!60157) (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))))))

(assert (=> d!1670793 (= (isPrefix!5788 (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) (tail!10172 input!5817)) lt!2132537)))

(declare-fun b!5175794 () Bool)

(assert (=> b!5175794 (= e!3225061 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))))

(declare-fun b!5175791 () Bool)

(declare-fun e!3225060 () Bool)

(assert (=> b!5175791 (= e!3225062 e!3225060)))

(declare-fun res!2199541 () Bool)

(assert (=> b!5175791 (=> (not res!2199541) (not e!3225060))))

(assert (=> b!5175791 (= res!2199541 (not ((_ is Nil!60157) (tail!10172 input!5817))))))

(declare-fun b!5175793 () Bool)

(assert (=> b!5175793 (= e!3225060 (isPrefix!5788 (tail!10172 (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))) (tail!10172 (tail!10172 input!5817))))))

(declare-fun b!5175792 () Bool)

(declare-fun res!2199542 () Bool)

(assert (=> b!5175792 (=> (not res!2199542) (not e!3225060))))

(assert (=> b!5175792 (= res!2199542 (= (head!11073 (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)))) (head!11073 (tail!10172 input!5817))))))

(assert (= (and d!1670793 (not res!2199539)) b!5175791))

(assert (= (and b!5175791 res!2199541) b!5175792))

(assert (= (and b!5175792 res!2199542) b!5175793))

(assert (= (and d!1670793 (not res!2199540)) b!5175794))

(assert (=> b!5175794 m!6228956))

(assert (=> b!5175794 m!6229498))

(assert (=> b!5175794 m!6229468))

(declare-fun m!6230654 () Bool)

(assert (=> b!5175794 m!6230654))

(assert (=> b!5175793 m!6229468))

(declare-fun m!6230656 () Bool)

(assert (=> b!5175793 m!6230656))

(assert (=> b!5175793 m!6228956))

(assert (=> b!5175793 m!6229500))

(assert (=> b!5175793 m!6230656))

(assert (=> b!5175793 m!6229500))

(declare-fun m!6230658 () Bool)

(assert (=> b!5175793 m!6230658))

(assert (=> b!5175792 m!6229468))

(declare-fun m!6230660 () Bool)

(assert (=> b!5175792 m!6230660))

(assert (=> b!5175792 m!6228956))

(assert (=> b!5175792 m!6229614))

(assert (=> b!5175256 d!1670793))

(declare-fun d!1670795 () Bool)

(assert (=> d!1670795 (= (tail!10172 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) (t!373434 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(assert (=> b!5175256 d!1670795))

(assert (=> b!5175256 d!1670349))

(declare-fun d!1670797 () Bool)

(declare-fun c!891317 () Bool)

(assert (=> d!1670797 (= c!891317 ((_ is Nil!60157) lt!2132391))))

(declare-fun e!3225065 () (InoxSet C!29580))

(assert (=> d!1670797 (= (content!10659 lt!2132391) e!3225065)))

(declare-fun b!5175797 () Bool)

(assert (=> b!5175797 (= e!3225065 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175798 () Bool)

(assert (=> b!5175798 (= e!3225065 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132391) true) (content!10659 (t!373434 lt!2132391))))))

(assert (= (and d!1670797 c!891317) b!5175797))

(assert (= (and d!1670797 (not c!891317)) b!5175798))

(declare-fun m!6230662 () Bool)

(assert (=> b!5175798 m!6230662))

(declare-fun m!6230664 () Bool)

(assert (=> b!5175798 m!6230664))

(assert (=> d!1670521 d!1670797))

(assert (=> d!1670521 d!1670693))

(declare-fun d!1670799 () Bool)

(declare-fun c!891318 () Bool)

(assert (=> d!1670799 (= c!891318 ((_ is Nil!60157) (tail!10172 lt!2131871)))))

(declare-fun e!3225066 () (InoxSet C!29580))

(assert (=> d!1670799 (= (content!10659 (tail!10172 lt!2131871)) e!3225066)))

(declare-fun b!5175799 () Bool)

(assert (=> b!5175799 (= e!3225066 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175800 () Bool)

(assert (=> b!5175800 (= e!3225066 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (tail!10172 lt!2131871)) true) (content!10659 (t!373434 (tail!10172 lt!2131871)))))))

(assert (= (and d!1670799 c!891318) b!5175799))

(assert (= (and d!1670799 (not c!891318)) b!5175800))

(declare-fun m!6230666 () Bool)

(assert (=> b!5175800 m!6230666))

(declare-fun m!6230668 () Bool)

(assert (=> b!5175800 m!6230668))

(assert (=> d!1670521 d!1670799))

(declare-fun d!1670801 () Bool)

(declare-fun lt!2132540 () Int)

(assert (=> d!1670801 (>= lt!2132540 0)))

(declare-fun e!3225067 () Int)

(assert (=> d!1670801 (= lt!2132540 e!3225067)))

(declare-fun c!891319 () Bool)

(assert (=> d!1670801 (= c!891319 ((_ is Nil!60157) lt!2132406))))

(assert (=> d!1670801 (= (size!39691 lt!2132406) lt!2132540)))

(declare-fun b!5175801 () Bool)

(assert (=> b!5175801 (= e!3225067 0)))

(declare-fun b!5175802 () Bool)

(assert (=> b!5175802 (= e!3225067 (+ 1 (size!39691 (t!373434 lt!2132406))))))

(assert (= (and d!1670801 c!891319) b!5175801))

(assert (= (and d!1670801 (not c!891319)) b!5175802))

(declare-fun m!6230670 () Bool)

(assert (=> b!5175802 m!6230670))

(assert (=> b!5175506 d!1670801))

(assert (=> b!5175506 d!1670371))

(declare-fun d!1670803 () Bool)

(declare-fun lt!2132541 () Int)

(assert (=> d!1670803 (>= lt!2132541 0)))

(declare-fun e!3225068 () Int)

(assert (=> d!1670803 (= lt!2132541 e!3225068)))

(declare-fun c!891320 () Bool)

(assert (=> d!1670803 (= c!891320 ((_ is Nil!60157) (_2!35233 lt!2131947)))))

(assert (=> d!1670803 (= (size!39691 (_2!35233 lt!2131947)) lt!2132541)))

(declare-fun b!5175803 () Bool)

(assert (=> b!5175803 (= e!3225068 0)))

(declare-fun b!5175804 () Bool)

(assert (=> b!5175804 (= e!3225068 (+ 1 (size!39691 (t!373434 (_2!35233 lt!2131947)))))))

(assert (= (and d!1670803 c!891320) b!5175803))

(assert (= (and d!1670803 (not c!891320)) b!5175804))

(declare-fun m!6230672 () Bool)

(assert (=> b!5175804 m!6230672))

(assert (=> b!5175506 d!1670803))

(declare-fun b!5175805 () Bool)

(declare-fun e!3225069 () Bool)

(declare-fun call!363613 () Bool)

(assert (=> b!5175805 (= e!3225069 call!363613)))

(declare-fun b!5175806 () Bool)

(declare-fun e!3225072 () Bool)

(declare-fun e!3225073 () Bool)

(assert (=> b!5175806 (= e!3225072 e!3225073)))

(declare-fun res!2199548 () Bool)

(assert (=> b!5175806 (= res!2199548 (not (nullable!4892 (reg!14984 (h!66606 (exprs!4539 setElem!32300))))))))

(assert (=> b!5175806 (=> (not res!2199548) (not e!3225073))))

(declare-fun bm!363606 () Bool)

(declare-fun call!363611 () Bool)

(declare-fun c!891322 () Bool)

(assert (=> bm!363606 (= call!363611 (validRegex!6405 (ite c!891322 (regOne!29823 (h!66606 (exprs!4539 setElem!32300))) (regOne!29822 (h!66606 (exprs!4539 setElem!32300))))))))

(declare-fun b!5175807 () Bool)

(declare-fun call!363612 () Bool)

(assert (=> b!5175807 (= e!3225073 call!363612)))

(declare-fun b!5175808 () Bool)

(declare-fun e!3225071 () Bool)

(assert (=> b!5175808 (= e!3225071 e!3225069)))

(declare-fun res!2199545 () Bool)

(assert (=> b!5175808 (=> (not res!2199545) (not e!3225069))))

(assert (=> b!5175808 (= res!2199545 call!363611)))

(declare-fun c!891321 () Bool)

(declare-fun bm!363607 () Bool)

(assert (=> bm!363607 (= call!363612 (validRegex!6405 (ite c!891321 (reg!14984 (h!66606 (exprs!4539 setElem!32300))) (ite c!891322 (regTwo!29823 (h!66606 (exprs!4539 setElem!32300))) (regTwo!29822 (h!66606 (exprs!4539 setElem!32300)))))))))

(declare-fun b!5175809 () Bool)

(declare-fun res!2199549 () Bool)

(assert (=> b!5175809 (=> res!2199549 e!3225071)))

(assert (=> b!5175809 (= res!2199549 (not ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32300)))))))

(declare-fun e!3225070 () Bool)

(assert (=> b!5175809 (= e!3225070 e!3225071)))

(declare-fun b!5175810 () Bool)

(declare-fun e!3225075 () Bool)

(assert (=> b!5175810 (= e!3225075 e!3225072)))

(assert (=> b!5175810 (= c!891321 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32300))))))

(declare-fun bm!363608 () Bool)

(assert (=> bm!363608 (= call!363613 call!363612)))

(declare-fun b!5175812 () Bool)

(declare-fun res!2199547 () Bool)

(declare-fun e!3225074 () Bool)

(assert (=> b!5175812 (=> (not res!2199547) (not e!3225074))))

(assert (=> b!5175812 (= res!2199547 call!363611)))

(assert (=> b!5175812 (= e!3225070 e!3225074)))

(declare-fun b!5175813 () Bool)

(assert (=> b!5175813 (= e!3225072 e!3225070)))

(assert (=> b!5175813 (= c!891322 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32300))))))

(declare-fun d!1670805 () Bool)

(declare-fun res!2199546 () Bool)

(assert (=> d!1670805 (=> res!2199546 e!3225075)))

(assert (=> d!1670805 (= res!2199546 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32300))))))

(assert (=> d!1670805 (= (validRegex!6405 (h!66606 (exprs!4539 setElem!32300))) e!3225075)))

(declare-fun b!5175811 () Bool)

(assert (=> b!5175811 (= e!3225074 call!363613)))

(assert (= (and d!1670805 (not res!2199546)) b!5175810))

(assert (= (and b!5175810 c!891321) b!5175806))

(assert (= (and b!5175810 (not c!891321)) b!5175813))

(assert (= (and b!5175806 res!2199548) b!5175807))

(assert (= (and b!5175813 c!891322) b!5175812))

(assert (= (and b!5175813 (not c!891322)) b!5175809))

(assert (= (and b!5175812 res!2199547) b!5175811))

(assert (= (and b!5175809 (not res!2199549)) b!5175808))

(assert (= (and b!5175808 res!2199545) b!5175805))

(assert (= (or b!5175811 b!5175805) bm!363608))

(assert (= (or b!5175812 b!5175808) bm!363606))

(assert (= (or b!5175807 bm!363608) bm!363607))

(declare-fun m!6230674 () Bool)

(assert (=> b!5175806 m!6230674))

(declare-fun m!6230676 () Bool)

(assert (=> bm!363606 m!6230676))

(declare-fun m!6230678 () Bool)

(assert (=> bm!363607 m!6230678))

(assert (=> bs!1204106 d!1670805))

(declare-fun d!1670807 () Bool)

(declare-fun lt!2132543 () Int)

(assert (=> d!1670807 (>= lt!2132543 0)))

(declare-fun e!3225077 () Int)

(assert (=> d!1670807 (= lt!2132543 e!3225077)))

(declare-fun c!891323 () Bool)

(assert (=> d!1670807 (= c!891323 ((_ is Nil!60157) lt!2132197))))

(assert (=> d!1670807 (= (size!39691 lt!2132197) lt!2132543)))

(declare-fun b!5175815 () Bool)

(assert (=> b!5175815 (= e!3225077 0)))

(declare-fun b!5175816 () Bool)

(assert (=> b!5175816 (= e!3225077 (+ 1 (size!39691 (t!373434 lt!2132197))))))

(assert (= (and d!1670807 c!891323) b!5175815))

(assert (= (and d!1670807 (not c!891323)) b!5175816))

(declare-fun m!6230682 () Bool)

(assert (=> b!5175816 m!6230682))

(assert (=> b!5175246 d!1670807))

(declare-fun d!1670809 () Bool)

(declare-fun lt!2132544 () Int)

(assert (=> d!1670809 (>= lt!2132544 0)))

(declare-fun e!3225078 () Int)

(assert (=> d!1670809 (= lt!2132544 e!3225078)))

(declare-fun c!891324 () Bool)

(assert (=> d!1670809 (= c!891324 ((_ is Nil!60157) (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))

(assert (=> d!1670809 (= (size!39691 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) lt!2132544)))

(declare-fun b!5175817 () Bool)

(assert (=> b!5175817 (= e!3225078 0)))

(declare-fun b!5175818 () Bool)

(assert (=> b!5175818 (= e!3225078 (+ 1 (size!39691 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))))

(assert (= (and d!1670809 c!891324) b!5175817))

(assert (= (and d!1670809 (not c!891324)) b!5175818))

(declare-fun m!6230688 () Bool)

(assert (=> b!5175818 m!6230688))

(assert (=> b!5175246 d!1670809))

(declare-fun d!1670813 () Bool)

(declare-fun lt!2132545 () Int)

(assert (=> d!1670813 (>= lt!2132545 0)))

(declare-fun e!3225080 () Int)

(assert (=> d!1670813 (= lt!2132545 e!3225080)))

(declare-fun c!891326 () Bool)

(assert (=> d!1670813 (= c!891326 ((_ is Nil!60157) lt!2131976))))

(assert (=> d!1670813 (= (size!39691 lt!2131976) lt!2132545)))

(declare-fun b!5175821 () Bool)

(assert (=> b!5175821 (= e!3225080 0)))

(declare-fun b!5175822 () Bool)

(assert (=> b!5175822 (= e!3225080 (+ 1 (size!39691 (t!373434 lt!2131976))))))

(assert (= (and d!1670813 c!891326) b!5175821))

(assert (= (and d!1670813 (not c!891326)) b!5175822))

(declare-fun m!6230690 () Bool)

(assert (=> b!5175822 m!6230690))

(assert (=> b!5175246 d!1670813))

(declare-fun d!1670815 () Bool)

(assert (=> d!1670815 (= (isEmpty!32209 (getLanguageWitness!1013 lt!2131878)) (not ((_ is Some!14841) (getLanguageWitness!1013 lt!2131878))))))

(assert (=> d!1670469 d!1670815))

(declare-fun bs!1204250 () Bool)

(declare-fun d!1670819 () Bool)

(assert (= bs!1204250 (and d!1670819 d!1670687)))

(declare-fun lambda!258531 () Int)

(assert (=> bs!1204250 (not (= lambda!258531 lambda!258516))))

(declare-fun bs!1204251 () Bool)

(assert (= bs!1204251 (and d!1670819 b!5175779)))

(assert (=> bs!1204251 (= lambda!258531 lambda!258523)))

(declare-fun bs!1204252 () Bool)

(assert (= bs!1204252 (and d!1670819 d!1670729)))

(assert (=> bs!1204252 (not (= lambda!258531 lambda!258518))))

(declare-fun bs!1204253 () Bool)

(assert (= bs!1204253 (and d!1670819 d!1670661)))

(assert (=> bs!1204253 (not (= lambda!258531 lambda!258512))))

(declare-fun bs!1204254 () Bool)

(assert (= bs!1204254 (and d!1670819 b!5175502)))

(assert (=> bs!1204254 (= lambda!258531 lambda!258503)))

(declare-fun bs!1204255 () Bool)

(assert (= bs!1204255 (and d!1670819 d!1670639)))

(assert (=> bs!1204255 (not (= lambda!258531 lambda!258510))))

(declare-fun bs!1204256 () Bool)

(assert (= bs!1204256 (and d!1670819 d!1670785)))

(assert (=> bs!1204256 (not (= lambda!258531 lambda!258521))))

(declare-fun bs!1204257 () Bool)

(assert (= bs!1204257 (and d!1670819 d!1670237)))

(assert (=> bs!1204257 (not (= lambda!258531 lambda!258451))))

(declare-fun bs!1204258 () Bool)

(assert (= bs!1204258 (and d!1670819 b!5175503)))

(assert (=> bs!1204258 (= lambda!258531 lambda!258504)))

(declare-fun bs!1204259 () Bool)

(assert (= bs!1204259 (and d!1670819 b!5175436)))

(assert (=> bs!1204259 (= lambda!258531 lambda!258499)))

(declare-fun bs!1204260 () Bool)

(assert (= bs!1204260 (and d!1670819 d!1670427)))

(assert (=> bs!1204260 (not (= lambda!258531 lambda!258480))))

(declare-fun bs!1204261 () Bool)

(assert (= bs!1204261 (and d!1670819 d!1670557)))

(assert (=> bs!1204261 (not (= lambda!258531 lambda!258502))))

(declare-fun bs!1204262 () Bool)

(assert (= bs!1204262 (and d!1670819 d!1670625)))

(assert (=> bs!1204262 (not (= lambda!258531 lambda!258509))))

(declare-fun bs!1204263 () Bool)

(assert (= bs!1204263 (and d!1670819 d!1670469)))

(assert (=> bs!1204263 (not (= lambda!258531 lambda!258498))))

(declare-fun bs!1204264 () Bool)

(assert (= bs!1204264 (and d!1670819 b!5175780)))

(assert (=> bs!1204264 (= lambda!258531 lambda!258524)))

(declare-fun bs!1204265 () Bool)

(assert (= bs!1204265 (and d!1670819 b!5175437)))

(assert (=> bs!1204265 (= lambda!258531 lambda!258500)))

(declare-fun lt!2132552 () Option!14842)

(declare-fun isDefined!11546 (Option!14842) Bool)

(assert (=> d!1670819 (= (isDefined!11546 lt!2132552) (exists!1936 lt!2131878 lambda!258531))))

(declare-fun e!3225089 () Option!14842)

(assert (=> d!1670819 (= lt!2132552 e!3225089)))

(declare-fun c!891340 () Bool)

(assert (=> d!1670819 (= c!891340 (exists!1936 lt!2131878 lambda!258531))))

(assert (=> d!1670819 (= (getLanguageWitness!1013 lt!2131878) lt!2132552)))

(declare-fun b!5175839 () Bool)

(declare-fun getLanguageWitness!1015 (Context!8078) Option!14842)

(declare-fun getWitness!855 ((InoxSet Context!8078) Int) Context!8078)

(assert (=> b!5175839 (= e!3225089 (getLanguageWitness!1015 (getWitness!855 lt!2131878 lambda!258531)))))

(declare-fun b!5175840 () Bool)

(assert (=> b!5175840 (= e!3225089 None!14841)))

(assert (= (and d!1670819 c!891340) b!5175839))

(assert (= (and d!1670819 (not c!891340)) b!5175840))

(declare-fun m!6230722 () Bool)

(assert (=> d!1670819 m!6230722))

(declare-fun m!6230724 () Bool)

(assert (=> d!1670819 m!6230724))

(assert (=> d!1670819 m!6230724))

(declare-fun m!6230726 () Bool)

(assert (=> b!5175839 m!6230726))

(assert (=> b!5175839 m!6230726))

(declare-fun m!6230730 () Bool)

(assert (=> b!5175839 m!6230730))

(assert (=> d!1670469 d!1670819))

(declare-fun d!1670837 () Bool)

(declare-fun lt!2132559 () Bool)

(assert (=> d!1670837 (= lt!2132559 (forall!14158 (toList!8456 lt!2131878) lambda!258498))))

(declare-fun choose!38429 ((InoxSet Context!8078) Int) Bool)

(assert (=> d!1670837 (= lt!2132559 (choose!38429 lt!2131878 lambda!258498))))

(assert (=> d!1670837 (= (forall!14157 lt!2131878 lambda!258498) lt!2132559)))

(declare-fun bs!1204267 () Bool)

(assert (= bs!1204267 d!1670837))

(assert (=> bs!1204267 m!6229972))

(assert (=> bs!1204267 m!6229972))

(declare-fun m!6230744 () Bool)

(assert (=> bs!1204267 m!6230744))

(declare-fun m!6230746 () Bool)

(assert (=> bs!1204267 m!6230746))

(assert (=> d!1670469 d!1670837))

(declare-fun d!1670849 () Bool)

(assert (=> d!1670849 (= (head!11073 (tail!10172 lt!2131870)) (h!66605 (tail!10172 lt!2131870)))))

(assert (=> b!5175355 d!1670849))

(assert (=> b!5175355 d!1670605))

(assert (=> bm!363546 d!1670769))

(declare-fun d!1670851 () Bool)

(assert (=> d!1670851 (= (flatMap!458 lt!2131878 lambda!258505) (choose!38413 lt!2131878 lambda!258505))))

(declare-fun bs!1204269 () Bool)

(assert (= bs!1204269 d!1670851))

(declare-fun m!6230748 () Bool)

(assert (=> bs!1204269 m!6230748))

(assert (=> d!1670569 d!1670851))

(declare-fun d!1670853 () Bool)

(declare-fun c!891342 () Bool)

(assert (=> d!1670853 (= c!891342 ((_ is Nil!60157) lt!2132395))))

(declare-fun e!3225094 () (InoxSet C!29580))

(assert (=> d!1670853 (= (content!10659 lt!2132395) e!3225094)))

(declare-fun b!5175847 () Bool)

(assert (=> b!5175847 (= e!3225094 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175848 () Bool)

(assert (=> b!5175848 (= e!3225094 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132395) true) (content!10659 (t!373434 lt!2132395))))))

(assert (= (and d!1670853 c!891342) b!5175847))

(assert (= (and d!1670853 (not c!891342)) b!5175848))

(declare-fun m!6230752 () Bool)

(assert (=> b!5175848 m!6230752))

(declare-fun m!6230754 () Bool)

(assert (=> b!5175848 m!6230754))

(assert (=> d!1670541 d!1670853))

(assert (=> d!1670541 d!1670385))

(declare-fun d!1670855 () Bool)

(declare-fun c!891343 () Bool)

(assert (=> d!1670855 (= c!891343 ((_ is Nil!60157) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))

(declare-fun e!3225095 () (InoxSet C!29580))

(assert (=> d!1670855 (= (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) e!3225095)))

(declare-fun b!5175849 () Bool)

(assert (=> b!5175849 (= e!3225095 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175850 () Bool)

(assert (=> b!5175850 (= e!3225095 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(assert (= (and d!1670855 c!891343) b!5175849))

(assert (= (and d!1670855 (not c!891343)) b!5175850))

(declare-fun m!6230756 () Bool)

(assert (=> b!5175850 m!6230756))

(declare-fun m!6230758 () Bool)

(assert (=> b!5175850 m!6230758))

(assert (=> d!1670541 d!1670855))

(declare-fun d!1670859 () Bool)

(declare-fun e!3225099 () Bool)

(assert (=> d!1670859 e!3225099))

(declare-fun res!2199560 () Bool)

(assert (=> d!1670859 (=> res!2199560 e!3225099)))

(declare-fun lt!2132561 () Bool)

(assert (=> d!1670859 (= res!2199560 (not lt!2132561))))

(declare-fun e!3225100 () Bool)

(assert (=> d!1670859 (= lt!2132561 e!3225100)))

(declare-fun res!2199559 () Bool)

(assert (=> d!1670859 (=> res!2199559 e!3225100)))

(assert (=> d!1670859 (= res!2199559 ((_ is Nil!60157) (tail!10172 (tail!10172 input!5817))))))

(assert (=> d!1670859 (= (isPrefix!5788 (tail!10172 (tail!10172 input!5817)) (tail!10172 (tail!10172 input!5817))) lt!2132561)))

(declare-fun b!5175858 () Bool)

(assert (=> b!5175858 (= e!3225099 (>= (size!39691 (tail!10172 (tail!10172 input!5817))) (size!39691 (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5175855 () Bool)

(declare-fun e!3225098 () Bool)

(assert (=> b!5175855 (= e!3225100 e!3225098)))

(declare-fun res!2199561 () Bool)

(assert (=> b!5175855 (=> (not res!2199561) (not e!3225098))))

(assert (=> b!5175855 (= res!2199561 (not ((_ is Nil!60157) (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5175857 () Bool)

(assert (=> b!5175857 (= e!3225098 (isPrefix!5788 (tail!10172 (tail!10172 (tail!10172 input!5817))) (tail!10172 (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5175856 () Bool)

(declare-fun res!2199562 () Bool)

(assert (=> b!5175856 (=> (not res!2199562) (not e!3225098))))

(assert (=> b!5175856 (= res!2199562 (= (head!11073 (tail!10172 (tail!10172 input!5817))) (head!11073 (tail!10172 (tail!10172 input!5817)))))))

(assert (= (and d!1670859 (not res!2199559)) b!5175855))

(assert (= (and b!5175855 res!2199561) b!5175856))

(assert (= (and b!5175856 res!2199562) b!5175857))

(assert (= (and d!1670859 (not res!2199560)) b!5175858))

(assert (=> b!5175858 m!6229500))

(assert (=> b!5175858 m!6230322))

(assert (=> b!5175858 m!6229500))

(assert (=> b!5175858 m!6230322))

(assert (=> b!5175857 m!6229500))

(assert (=> b!5175857 m!6230324))

(assert (=> b!5175857 m!6229500))

(assert (=> b!5175857 m!6230324))

(assert (=> b!5175857 m!6230324))

(assert (=> b!5175857 m!6230324))

(declare-fun m!6230760 () Bool)

(assert (=> b!5175857 m!6230760))

(assert (=> b!5175856 m!6229500))

(assert (=> b!5175856 m!6230356))

(assert (=> b!5175856 m!6229500))

(assert (=> b!5175856 m!6230356))

(assert (=> b!5175312 d!1670859))

(assert (=> b!5175312 d!1670665))

(declare-fun bs!1204271 () Bool)

(declare-fun d!1670861 () Bool)

(assert (= bs!1204271 (and d!1670861 d!1670687)))

(declare-fun lambda!258534 () Int)

(assert (=> bs!1204271 (= lambda!258534 lambda!258516)))

(declare-fun bs!1204272 () Bool)

(assert (= bs!1204272 (and d!1670861 b!5175779)))

(assert (=> bs!1204272 (not (= lambda!258534 lambda!258523))))

(declare-fun bs!1204273 () Bool)

(assert (= bs!1204273 (and d!1670861 d!1670729)))

(assert (=> bs!1204273 (= (= lambda!258498 lambda!258502) (= lambda!258534 lambda!258518))))

(declare-fun bs!1204274 () Bool)

(assert (= bs!1204274 (and d!1670861 d!1670661)))

(assert (=> bs!1204274 (not (= lambda!258534 lambda!258512))))

(declare-fun bs!1204275 () Bool)

(assert (= bs!1204275 (and d!1670861 b!5175502)))

(assert (=> bs!1204275 (not (= lambda!258534 lambda!258503))))

(declare-fun bs!1204276 () Bool)

(assert (= bs!1204276 (and d!1670861 d!1670639)))

(assert (=> bs!1204276 (not (= lambda!258534 lambda!258510))))

(declare-fun bs!1204277 () Bool)

(assert (= bs!1204277 (and d!1670861 d!1670785)))

(assert (=> bs!1204277 (not (= lambda!258534 lambda!258521))))

(declare-fun bs!1204278 () Bool)

(assert (= bs!1204278 (and d!1670861 d!1670237)))

(assert (=> bs!1204278 (not (= lambda!258534 lambda!258451))))

(declare-fun bs!1204279 () Bool)

(assert (= bs!1204279 (and d!1670861 b!5175503)))

(assert (=> bs!1204279 (not (= lambda!258534 lambda!258504))))

(declare-fun bs!1204280 () Bool)

(assert (= bs!1204280 (and d!1670861 b!5175436)))

(assert (=> bs!1204280 (not (= lambda!258534 lambda!258499))))

(declare-fun bs!1204281 () Bool)

(assert (= bs!1204281 (and d!1670861 d!1670427)))

(assert (=> bs!1204281 (not (= lambda!258534 lambda!258480))))

(declare-fun bs!1204282 () Bool)

(assert (= bs!1204282 (and d!1670861 d!1670557)))

(assert (=> bs!1204282 (not (= lambda!258534 lambda!258502))))

(declare-fun bs!1204283 () Bool)

(assert (= bs!1204283 (and d!1670861 d!1670625)))

(assert (=> bs!1204283 (= (= lambda!258498 lambda!258451) (= lambda!258534 lambda!258509))))

(declare-fun bs!1204284 () Bool)

(assert (= bs!1204284 (and d!1670861 d!1670469)))

(assert (=> bs!1204284 (not (= lambda!258534 lambda!258498))))

(declare-fun bs!1204285 () Bool)

(assert (= bs!1204285 (and d!1670861 b!5175780)))

(assert (=> bs!1204285 (not (= lambda!258534 lambda!258524))))

(declare-fun bs!1204286 () Bool)

(assert (= bs!1204286 (and d!1670861 b!5175437)))

(assert (=> bs!1204286 (not (= lambda!258534 lambda!258500))))

(declare-fun bs!1204287 () Bool)

(assert (= bs!1204287 (and d!1670861 d!1670819)))

(assert (=> bs!1204287 (not (= lambda!258534 lambda!258531))))

(assert (=> d!1670861 true))

(assert (=> d!1670861 (< (dynLambda!23879 order!27035 lambda!258498) (dynLambda!23879 order!27035 lambda!258534))))

(assert (=> d!1670861 (exists!1937 lt!2132383 lambda!258534)))

(declare-fun lt!2132567 () Unit!151938)

(declare-fun choose!38430 (List!60283 Int) Unit!151938)

(assert (=> d!1670861 (= lt!2132567 (choose!38430 lt!2132383 lambda!258498))))

(assert (=> d!1670861 (not (forall!14158 lt!2132383 lambda!258498))))

(assert (=> d!1670861 (= (lemmaNotForallThenExists!477 lt!2132383 lambda!258498) lt!2132567)))

(declare-fun bs!1204288 () Bool)

(assert (= bs!1204288 d!1670861))

(declare-fun m!6230800 () Bool)

(assert (=> bs!1204288 m!6230800))

(declare-fun m!6230802 () Bool)

(assert (=> bs!1204288 m!6230802))

(declare-fun m!6230804 () Bool)

(assert (=> bs!1204288 m!6230804))

(assert (=> b!5175436 d!1670861))

(declare-fun d!1670877 () Bool)

(assert (=> d!1670877 (= (isEmpty!32207 (_1!35233 lt!2132282)) ((_ is Nil!60157) (_1!35233 lt!2132282)))))

(assert (=> b!5175351 d!1670877))

(assert (=> b!5175499 d!1670589))

(declare-fun d!1670879 () Bool)

(declare-fun lt!2132570 () Int)

(assert (=> d!1670879 (>= lt!2132570 0)))

(declare-fun e!3225111 () Int)

(assert (=> d!1670879 (= lt!2132570 e!3225111)))

(declare-fun c!891348 () Bool)

(assert (=> d!1670879 (= c!891348 ((_ is Nil!60157) (tail!10172 testedP!294)))))

(assert (=> d!1670879 (= (size!39691 (tail!10172 testedP!294)) lt!2132570)))

(declare-fun b!5175873 () Bool)

(assert (=> b!5175873 (= e!3225111 0)))

(declare-fun b!5175874 () Bool)

(assert (=> b!5175874 (= e!3225111 (+ 1 (size!39691 (t!373434 (tail!10172 testedP!294)))))))

(assert (= (and d!1670879 c!891348) b!5175873))

(assert (= (and d!1670879 (not c!891348)) b!5175874))

(declare-fun m!6230806 () Bool)

(assert (=> b!5175874 m!6230806))

(assert (=> b!5175499 d!1670879))

(declare-fun d!1670881 () Bool)

(assert (=> d!1670881 (= (flatMap!458 baseZ!62 lambda!258481) (choose!38413 baseZ!62 lambda!258481))))

(declare-fun bs!1204289 () Bool)

(assert (= bs!1204289 d!1670881))

(declare-fun m!6230808 () Bool)

(assert (=> bs!1204289 m!6230808))

(assert (=> d!1670435 d!1670881))

(declare-fun d!1670883 () Bool)

(declare-fun c!891349 () Bool)

(assert (=> d!1670883 (= c!891349 ((_ is Nil!60157) lt!2132406))))

(declare-fun e!3225112 () (InoxSet C!29580))

(assert (=> d!1670883 (= (content!10659 lt!2132406) e!3225112)))

(declare-fun b!5175875 () Bool)

(assert (=> b!5175875 (= e!3225112 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175876 () Bool)

(assert (=> b!5175876 (= e!3225112 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132406) true) (content!10659 (t!373434 lt!2132406))))))

(assert (= (and d!1670883 c!891349) b!5175875))

(assert (= (and d!1670883 (not c!891349)) b!5175876))

(declare-fun m!6230810 () Bool)

(assert (=> b!5175876 m!6230810))

(declare-fun m!6230812 () Bool)

(assert (=> b!5175876 m!6230812))

(assert (=> d!1670559 d!1670883))

(declare-fun d!1670885 () Bool)

(declare-fun c!891350 () Bool)

(assert (=> d!1670885 (= c!891350 ((_ is Nil!60157) (_1!35233 lt!2131947)))))

(declare-fun e!3225113 () (InoxSet C!29580))

(assert (=> d!1670885 (= (content!10659 (_1!35233 lt!2131947)) e!3225113)))

(declare-fun b!5175877 () Bool)

(assert (=> b!5175877 (= e!3225113 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175878 () Bool)

(assert (=> b!5175878 (= e!3225113 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (_1!35233 lt!2131947)) true) (content!10659 (t!373434 (_1!35233 lt!2131947)))))))

(assert (= (and d!1670885 c!891350) b!5175877))

(assert (= (and d!1670885 (not c!891350)) b!5175878))

(declare-fun m!6230814 () Bool)

(assert (=> b!5175878 m!6230814))

(declare-fun m!6230818 () Bool)

(assert (=> b!5175878 m!6230818))

(assert (=> d!1670559 d!1670885))

(declare-fun d!1670887 () Bool)

(declare-fun c!891351 () Bool)

(assert (=> d!1670887 (= c!891351 ((_ is Nil!60157) (_2!35233 lt!2131947)))))

(declare-fun e!3225114 () (InoxSet C!29580))

(assert (=> d!1670887 (= (content!10659 (_2!35233 lt!2131947)) e!3225114)))

(declare-fun b!5175879 () Bool)

(assert (=> b!5175879 (= e!3225114 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175880 () Bool)

(assert (=> b!5175880 (= e!3225114 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (_2!35233 lt!2131947)) true) (content!10659 (t!373434 (_2!35233 lt!2131947)))))))

(assert (= (and d!1670887 c!891351) b!5175879))

(assert (= (and d!1670887 (not c!891351)) b!5175880))

(declare-fun m!6230822 () Bool)

(assert (=> b!5175880 m!6230822))

(declare-fun m!6230824 () Bool)

(assert (=> b!5175880 m!6230824))

(assert (=> d!1670559 d!1670887))

(declare-fun d!1670889 () Bool)

(assert (=> d!1670889 (= (isEmpty!32207 (_1!35233 lt!2132242)) ((_ is Nil!60157) (_1!35233 lt!2132242)))))

(assert (=> b!5175295 d!1670889))

(declare-fun d!1670891 () Bool)

(assert (=> d!1670891 (isPrefix!5788 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)) input!5817)))

(declare-fun lt!2132571 () Unit!151938)

(assert (=> d!1670891 (= lt!2132571 (choose!38410 lt!2131985 input!5817))))

(assert (=> d!1670891 (isPrefix!5788 lt!2131985 input!5817)))

(assert (=> d!1670891 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1093 lt!2131985 input!5817) lt!2132571)))

(declare-fun bs!1204290 () Bool)

(assert (= bs!1204290 d!1670891))

(assert (=> bs!1204290 m!6229672))

(assert (=> bs!1204290 m!6229688))

(declare-fun m!6230830 () Bool)

(assert (=> bs!1204290 m!6230830))

(assert (=> bs!1204290 m!6229672))

(declare-fun m!6230832 () Bool)

(assert (=> bs!1204290 m!6230832))

(assert (=> bs!1204290 m!6229686))

(assert (=> bs!1204290 m!6229694))

(assert (=> bs!1204290 m!6229686))

(assert (=> b!5175348 d!1670891))

(declare-fun d!1670897 () Bool)

(declare-fun lt!2132572 () List!60281)

(assert (=> d!1670897 (= (++!13171 lt!2131985 lt!2132572) input!5817)))

(declare-fun e!3225115 () List!60281)

(assert (=> d!1670897 (= lt!2132572 e!3225115)))

(declare-fun c!891352 () Bool)

(assert (=> d!1670897 (= c!891352 ((_ is Cons!60157) lt!2131985))))

(assert (=> d!1670897 (>= (size!39691 input!5817) (size!39691 lt!2131985))))

(assert (=> d!1670897 (= (getSuffix!3436 input!5817 lt!2131985) lt!2132572)))

(declare-fun b!5175881 () Bool)

(assert (=> b!5175881 (= e!3225115 (getSuffix!3436 (tail!10172 input!5817) (t!373434 lt!2131985)))))

(declare-fun b!5175882 () Bool)

(assert (=> b!5175882 (= e!3225115 input!5817)))

(assert (= (and d!1670897 c!891352) b!5175881))

(assert (= (and d!1670897 (not c!891352)) b!5175882))

(declare-fun m!6230834 () Bool)

(assert (=> d!1670897 m!6230834))

(assert (=> d!1670897 m!6228940))

(assert (=> d!1670897 m!6229692))

(assert (=> b!5175881 m!6228956))

(assert (=> b!5175881 m!6228956))

(declare-fun m!6230836 () Bool)

(assert (=> b!5175881 m!6230836))

(assert (=> b!5175348 d!1670897))

(declare-fun d!1670899 () Bool)

(assert (=> d!1670899 (= (tail!10172 call!363501) (t!373434 call!363501))))

(assert (=> b!5175348 d!1670899))

(declare-fun b!5175888 () Bool)

(declare-fun e!3225118 () List!60281)

(assert (=> b!5175888 (= e!3225118 (Cons!60157 (h!66605 lt!2131985) (++!13171 (t!373434 lt!2131985) (Cons!60157 (head!11073 call!363501) Nil!60157))))))

(declare-fun e!3225119 () Bool)

(declare-fun b!5175890 () Bool)

(declare-fun lt!2132574 () List!60281)

(assert (=> b!5175890 (= e!3225119 (or (not (= (Cons!60157 (head!11073 call!363501) Nil!60157) Nil!60157)) (= lt!2132574 lt!2131985)))))

(declare-fun d!1670901 () Bool)

(assert (=> d!1670901 e!3225119))

(declare-fun res!2199574 () Bool)

(assert (=> d!1670901 (=> (not res!2199574) (not e!3225119))))

(assert (=> d!1670901 (= res!2199574 (= (content!10659 lt!2132574) ((_ map or) (content!10659 lt!2131985) (content!10659 (Cons!60157 (head!11073 call!363501) Nil!60157)))))))

(assert (=> d!1670901 (= lt!2132574 e!3225118)))

(declare-fun c!891354 () Bool)

(assert (=> d!1670901 (= c!891354 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670901 (= (++!13171 lt!2131985 (Cons!60157 (head!11073 call!363501) Nil!60157)) lt!2132574)))

(declare-fun b!5175889 () Bool)

(declare-fun res!2199573 () Bool)

(assert (=> b!5175889 (=> (not res!2199573) (not e!3225119))))

(assert (=> b!5175889 (= res!2199573 (= (size!39691 lt!2132574) (+ (size!39691 lt!2131985) (size!39691 (Cons!60157 (head!11073 call!363501) Nil!60157)))))))

(declare-fun b!5175887 () Bool)

(assert (=> b!5175887 (= e!3225118 (Cons!60157 (head!11073 call!363501) Nil!60157))))

(assert (= (and d!1670901 c!891354) b!5175887))

(assert (= (and d!1670901 (not c!891354)) b!5175888))

(assert (= (and d!1670901 res!2199574) b!5175889))

(assert (= (and b!5175889 res!2199573) b!5175890))

(declare-fun m!6230840 () Bool)

(assert (=> b!5175888 m!6230840))

(declare-fun m!6230842 () Bool)

(assert (=> d!1670901 m!6230842))

(declare-fun m!6230844 () Bool)

(assert (=> d!1670901 m!6230844))

(declare-fun m!6230846 () Bool)

(assert (=> d!1670901 m!6230846))

(declare-fun m!6230848 () Bool)

(assert (=> b!5175889 m!6230848))

(assert (=> b!5175889 m!6229692))

(declare-fun m!6230850 () Bool)

(assert (=> b!5175889 m!6230850))

(assert (=> b!5175348 d!1670901))

(declare-fun d!1670903 () Bool)

(assert (=> d!1670903 (<= (size!39691 lt!2131985) (size!39691 input!5817))))

(declare-fun lt!2132575 () Unit!151938)

(assert (=> d!1670903 (= lt!2132575 (choose!38411 lt!2131985 input!5817))))

(assert (=> d!1670903 (isPrefix!5788 lt!2131985 input!5817)))

(assert (=> d!1670903 (= (lemmaIsPrefixThenSmallerEqSize!949 lt!2131985 input!5817) lt!2132575)))

(declare-fun bs!1204291 () Bool)

(assert (= bs!1204291 d!1670903))

(assert (=> bs!1204291 m!6229692))

(assert (=> bs!1204291 m!6228940))

(declare-fun m!6230860 () Bool)

(assert (=> bs!1204291 m!6230860))

(assert (=> bs!1204291 m!6230830))

(assert (=> b!5175348 d!1670903))

(declare-fun d!1670905 () Bool)

(assert (=> d!1670905 (= (head!11073 call!363501) (h!66605 call!363501))))

(assert (=> b!5175348 d!1670905))

(declare-fun d!1670907 () Bool)

(declare-fun e!3225121 () Bool)

(assert (=> d!1670907 e!3225121))

(declare-fun res!2199576 () Bool)

(assert (=> d!1670907 (=> res!2199576 e!3225121)))

(declare-fun lt!2132576 () Bool)

(assert (=> d!1670907 (= res!2199576 (not lt!2132576))))

(declare-fun e!3225122 () Bool)

(assert (=> d!1670907 (= lt!2132576 e!3225122)))

(declare-fun res!2199575 () Bool)

(assert (=> d!1670907 (=> res!2199575 e!3225122)))

(assert (=> d!1670907 (= res!2199575 ((_ is Nil!60157) (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157))))))

(assert (=> d!1670907 (= (isPrefix!5788 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)) input!5817) lt!2132576)))

(declare-fun b!5175894 () Bool)

(assert (=> b!5175894 (= e!3225121 (>= (size!39691 input!5817) (size!39691 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)))))))

(declare-fun b!5175891 () Bool)

(declare-fun e!3225120 () Bool)

(assert (=> b!5175891 (= e!3225122 e!3225120)))

(declare-fun res!2199577 () Bool)

(assert (=> b!5175891 (=> (not res!2199577) (not e!3225120))))

(assert (=> b!5175891 (= res!2199577 (not ((_ is Nil!60157) input!5817)))))

(declare-fun b!5175893 () Bool)

(assert (=> b!5175893 (= e!3225120 (isPrefix!5788 (tail!10172 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157))) (tail!10172 input!5817)))))

(declare-fun b!5175892 () Bool)

(declare-fun res!2199578 () Bool)

(assert (=> b!5175892 (=> (not res!2199578) (not e!3225120))))

(assert (=> b!5175892 (= res!2199578 (= (head!11073 (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157))) (head!11073 input!5817)))))

(assert (= (and d!1670907 (not res!2199575)) b!5175891))

(assert (= (and b!5175891 res!2199577) b!5175892))

(assert (= (and b!5175892 res!2199578) b!5175893))

(assert (= (and d!1670907 (not res!2199576)) b!5175894))

(assert (=> b!5175894 m!6228940))

(assert (=> b!5175894 m!6229686))

(declare-fun m!6230868 () Bool)

(assert (=> b!5175894 m!6230868))

(assert (=> b!5175893 m!6229686))

(declare-fun m!6230872 () Bool)

(assert (=> b!5175893 m!6230872))

(assert (=> b!5175893 m!6228956))

(assert (=> b!5175893 m!6230872))

(assert (=> b!5175893 m!6228956))

(declare-fun m!6230874 () Bool)

(assert (=> b!5175893 m!6230874))

(assert (=> b!5175892 m!6229686))

(declare-fun m!6230876 () Bool)

(assert (=> b!5175892 m!6230876))

(assert (=> b!5175892 m!6229212))

(assert (=> b!5175348 d!1670907))

(declare-fun b!5175902 () Bool)

(declare-fun e!3225126 () List!60281)

(assert (=> b!5175902 (= e!3225126 (Cons!60157 (h!66605 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157))) (++!13171 (t!373434 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157))) lt!2132284)))))

(declare-fun b!5175904 () Bool)

(declare-fun e!3225127 () Bool)

(declare-fun lt!2132578 () List!60281)

(assert (=> b!5175904 (= e!3225127 (or (not (= lt!2132284 Nil!60157)) (= lt!2132578 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157)))))))

(declare-fun d!1670913 () Bool)

(assert (=> d!1670913 e!3225127))

(declare-fun res!2199582 () Bool)

(assert (=> d!1670913 (=> (not res!2199582) (not e!3225127))))

(assert (=> d!1670913 (= res!2199582 (= (content!10659 lt!2132578) ((_ map or) (content!10659 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157))) (content!10659 lt!2132284))))))

(assert (=> d!1670913 (= lt!2132578 e!3225126)))

(declare-fun c!891357 () Bool)

(assert (=> d!1670913 (= c!891357 ((_ is Nil!60157) (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157))))))

(assert (=> d!1670913 (= (++!13171 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157)) lt!2132284) lt!2132578)))

(declare-fun b!5175903 () Bool)

(declare-fun res!2199581 () Bool)

(assert (=> b!5175903 (=> (not res!2199581) (not e!3225127))))

(assert (=> b!5175903 (= res!2199581 (= (size!39691 lt!2132578) (+ (size!39691 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157))) (size!39691 lt!2132284))))))

(declare-fun b!5175901 () Bool)

(assert (=> b!5175901 (= e!3225126 lt!2132284)))

(assert (= (and d!1670913 c!891357) b!5175901))

(assert (= (and d!1670913 (not c!891357)) b!5175902))

(assert (= (and d!1670913 res!2199582) b!5175903))

(assert (= (and b!5175903 res!2199581) b!5175904))

(declare-fun m!6230878 () Bool)

(assert (=> b!5175902 m!6230878))

(declare-fun m!6230880 () Bool)

(assert (=> d!1670913 m!6230880))

(assert (=> d!1670913 m!6229676))

(declare-fun m!6230882 () Bool)

(assert (=> d!1670913 m!6230882))

(declare-fun m!6230884 () Bool)

(assert (=> d!1670913 m!6230884))

(declare-fun m!6230886 () Bool)

(assert (=> b!5175903 m!6230886))

(assert (=> b!5175903 m!6229676))

(declare-fun m!6230888 () Bool)

(assert (=> b!5175903 m!6230888))

(declare-fun m!6230890 () Bool)

(assert (=> b!5175903 m!6230890))

(assert (=> b!5175348 d!1670913))

(assert (=> b!5175348 d!1670159))

(declare-fun b!5175906 () Bool)

(declare-fun e!3225128 () List!60281)

(assert (=> b!5175906 (= e!3225128 (Cons!60157 (h!66605 lt!2131985) (++!13171 (t!373434 lt!2131985) (Cons!60157 lt!2132297 Nil!60157))))))

(declare-fun b!5175908 () Bool)

(declare-fun lt!2132579 () List!60281)

(declare-fun e!3225129 () Bool)

(assert (=> b!5175908 (= e!3225129 (or (not (= (Cons!60157 lt!2132297 Nil!60157) Nil!60157)) (= lt!2132579 lt!2131985)))))

(declare-fun d!1670915 () Bool)

(assert (=> d!1670915 e!3225129))

(declare-fun res!2199584 () Bool)

(assert (=> d!1670915 (=> (not res!2199584) (not e!3225129))))

(assert (=> d!1670915 (= res!2199584 (= (content!10659 lt!2132579) ((_ map or) (content!10659 lt!2131985) (content!10659 (Cons!60157 lt!2132297 Nil!60157)))))))

(assert (=> d!1670915 (= lt!2132579 e!3225128)))

(declare-fun c!891358 () Bool)

(assert (=> d!1670915 (= c!891358 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670915 (= (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157)) lt!2132579)))

(declare-fun b!5175907 () Bool)

(declare-fun res!2199583 () Bool)

(assert (=> b!5175907 (=> (not res!2199583) (not e!3225129))))

(assert (=> b!5175907 (= res!2199583 (= (size!39691 lt!2132579) (+ (size!39691 lt!2131985) (size!39691 (Cons!60157 lt!2132297 Nil!60157)))))))

(declare-fun b!5175905 () Bool)

(assert (=> b!5175905 (= e!3225128 (Cons!60157 lt!2132297 Nil!60157))))

(assert (= (and d!1670915 c!891358) b!5175905))

(assert (= (and d!1670915 (not c!891358)) b!5175906))

(assert (= (and d!1670915 res!2199584) b!5175907))

(assert (= (and b!5175907 res!2199583) b!5175908))

(declare-fun m!6230900 () Bool)

(assert (=> b!5175906 m!6230900))

(declare-fun m!6230902 () Bool)

(assert (=> d!1670915 m!6230902))

(assert (=> d!1670915 m!6230844))

(declare-fun m!6230904 () Bool)

(assert (=> d!1670915 m!6230904))

(declare-fun m!6230906 () Bool)

(assert (=> b!5175907 m!6230906))

(assert (=> b!5175907 m!6229692))

(declare-fun m!6230908 () Bool)

(assert (=> b!5175907 m!6230908))

(assert (=> b!5175348 d!1670915))

(declare-fun d!1670919 () Bool)

(declare-fun lt!2132580 () Int)

(assert (=> d!1670919 (>= lt!2132580 0)))

(declare-fun e!3225131 () Int)

(assert (=> d!1670919 (= lt!2132580 e!3225131)))

(declare-fun c!891360 () Bool)

(assert (=> d!1670919 (= c!891360 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670919 (= (size!39691 lt!2131985) lt!2132580)))

(declare-fun b!5175911 () Bool)

(assert (=> b!5175911 (= e!3225131 0)))

(declare-fun b!5175912 () Bool)

(assert (=> b!5175912 (= e!3225131 (+ 1 (size!39691 (t!373434 lt!2131985))))))

(assert (= (and d!1670919 c!891360) b!5175911))

(assert (= (and d!1670919 (not c!891360)) b!5175912))

(declare-fun m!6230910 () Bool)

(assert (=> b!5175912 m!6230910))

(assert (=> b!5175348 d!1670919))

(declare-fun b!5175914 () Bool)

(declare-fun e!3225132 () List!60281)

(assert (=> b!5175914 (= e!3225132 (Cons!60157 (h!66605 lt!2131985) (++!13171 (t!373434 lt!2131985) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157))))))

(declare-fun e!3225133 () Bool)

(declare-fun b!5175916 () Bool)

(declare-fun lt!2132581 () List!60281)

(assert (=> b!5175916 (= e!3225133 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157) Nil!60157)) (= lt!2132581 lt!2131985)))))

(declare-fun d!1670921 () Bool)

(assert (=> d!1670921 e!3225133))

(declare-fun res!2199586 () Bool)

(assert (=> d!1670921 (=> (not res!2199586) (not e!3225133))))

(assert (=> d!1670921 (= res!2199586 (= (content!10659 lt!2132581) ((_ map or) (content!10659 lt!2131985) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)))))))

(assert (=> d!1670921 (= lt!2132581 e!3225132)))

(declare-fun c!891361 () Bool)

(assert (=> d!1670921 (= c!891361 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670921 (= (++!13171 lt!2131985 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)) lt!2132581)))

(declare-fun b!5175915 () Bool)

(declare-fun res!2199585 () Bool)

(assert (=> b!5175915 (=> (not res!2199585) (not e!3225133))))

(assert (=> b!5175915 (= res!2199585 (= (size!39691 lt!2132581) (+ (size!39691 lt!2131985) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157)))))))

(declare-fun b!5175913 () Bool)

(assert (=> b!5175913 (= e!3225132 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131985)) Nil!60157))))

(assert (= (and d!1670921 c!891361) b!5175913))

(assert (= (and d!1670921 (not c!891361)) b!5175914))

(assert (= (and d!1670921 res!2199586) b!5175915))

(assert (= (and b!5175915 res!2199585) b!5175916))

(declare-fun m!6230916 () Bool)

(assert (=> b!5175914 m!6230916))

(declare-fun m!6230918 () Bool)

(assert (=> d!1670921 m!6230918))

(assert (=> d!1670921 m!6230844))

(declare-fun m!6230920 () Bool)

(assert (=> d!1670921 m!6230920))

(declare-fun m!6230922 () Bool)

(assert (=> b!5175915 m!6230922))

(assert (=> b!5175915 m!6229692))

(declare-fun m!6230924 () Bool)

(assert (=> b!5175915 m!6230924))

(assert (=> b!5175348 d!1670921))

(declare-fun d!1670925 () Bool)

(assert (=> d!1670925 (= (head!11073 (getSuffix!3436 input!5817 lt!2131985)) (h!66605 (getSuffix!3436 input!5817 lt!2131985)))))

(assert (=> b!5175348 d!1670925))

(declare-fun d!1670929 () Bool)

(assert (=> d!1670929 (= (++!13171 (++!13171 lt!2131985 (Cons!60157 lt!2132297 Nil!60157)) lt!2132284) input!5817)))

(declare-fun lt!2132582 () Unit!151938)

(assert (=> d!1670929 (= lt!2132582 (choose!38414 lt!2131985 lt!2132297 lt!2132284 input!5817))))

(assert (=> d!1670929 (= (++!13171 lt!2131985 (Cons!60157 lt!2132297 lt!2132284)) input!5817)))

(assert (=> d!1670929 (= (lemmaMoveElementToOtherListKeepsConcatEq!1590 lt!2131985 lt!2132297 lt!2132284 input!5817) lt!2132582)))

(declare-fun bs!1204292 () Bool)

(assert (= bs!1204292 d!1670929))

(assert (=> bs!1204292 m!6229676))

(assert (=> bs!1204292 m!6229676))

(assert (=> bs!1204292 m!6229682))

(declare-fun m!6230932 () Bool)

(assert (=> bs!1204292 m!6230932))

(declare-fun m!6230934 () Bool)

(assert (=> bs!1204292 m!6230934))

(assert (=> b!5175348 d!1670929))

(declare-fun d!1670933 () Bool)

(declare-fun c!891364 () Bool)

(assert (=> d!1670933 (= c!891364 ((_ is Nil!60157) lt!2132197))))

(declare-fun e!3225136 () (InoxSet C!29580))

(assert (=> d!1670933 (= (content!10659 lt!2132197) e!3225136)))

(declare-fun b!5175921 () Bool)

(assert (=> b!5175921 (= e!3225136 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175922 () Bool)

(assert (=> b!5175922 (= e!3225136 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132197) true) (content!10659 (t!373434 lt!2132197))))))

(assert (= (and d!1670933 c!891364) b!5175921))

(assert (= (and d!1670933 (not c!891364)) b!5175922))

(declare-fun m!6230936 () Bool)

(assert (=> b!5175922 m!6230936))

(declare-fun m!6230938 () Bool)

(assert (=> b!5175922 m!6230938))

(assert (=> d!1670323 d!1670933))

(declare-fun d!1670935 () Bool)

(declare-fun c!891365 () Bool)

(assert (=> d!1670935 (= c!891365 ((_ is Nil!60157) (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))

(declare-fun e!3225139 () (InoxSet C!29580))

(assert (=> d!1670935 (= (content!10659 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) e!3225139)))

(declare-fun b!5175925 () Bool)

(assert (=> b!5175925 (= e!3225139 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175926 () Bool)

(assert (=> b!5175926 (= e!3225139 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) true) (content!10659 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))))

(assert (= (and d!1670935 c!891365) b!5175925))

(assert (= (and d!1670935 (not c!891365)) b!5175926))

(declare-fun m!6230940 () Bool)

(assert (=> b!5175926 m!6230940))

(declare-fun m!6230942 () Bool)

(assert (=> b!5175926 m!6230942))

(assert (=> d!1670323 d!1670935))

(declare-fun d!1670937 () Bool)

(declare-fun c!891366 () Bool)

(assert (=> d!1670937 (= c!891366 ((_ is Nil!60157) lt!2131976))))

(declare-fun e!3225140 () (InoxSet C!29580))

(assert (=> d!1670937 (= (content!10659 lt!2131976) e!3225140)))

(declare-fun b!5175927 () Bool)

(assert (=> b!5175927 (= e!3225140 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5175928 () Bool)

(assert (=> b!5175928 (= e!3225140 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2131976) true) (content!10659 (t!373434 lt!2131976))))))

(assert (= (and d!1670937 c!891366) b!5175927))

(assert (= (and d!1670937 (not c!891366)) b!5175928))

(declare-fun m!6230946 () Bool)

(assert (=> b!5175928 m!6230946))

(declare-fun m!6230950 () Bool)

(assert (=> b!5175928 m!6230950))

(assert (=> d!1670323 d!1670937))

(declare-fun d!1670941 () Bool)

(declare-fun c!891367 () Bool)

(assert (=> d!1670941 (= c!891367 ((_ is Cons!60157) (t!373434 (t!373434 lt!2131870))))))

(declare-fun e!3225141 () (InoxSet Context!8078))

(assert (=> d!1670941 (= (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (h!66605 (t!373434 lt!2131870))) (t!373434 (t!373434 lt!2131870))) e!3225141)))

(declare-fun b!5175929 () Bool)

(assert (=> b!5175929 (= e!3225141 (derivationZipper!278 (derivationStepZipper!1001 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (h!66605 (t!373434 lt!2131870))) (h!66605 (t!373434 (t!373434 lt!2131870)))) (t!373434 (t!373434 (t!373434 lt!2131870)))))))

(declare-fun b!5175930 () Bool)

(assert (=> b!5175930 (= e!3225141 (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (h!66605 (t!373434 lt!2131870))))))

(assert (= (and d!1670941 c!891367) b!5175929))

(assert (= (and d!1670941 (not c!891367)) b!5175930))

(assert (=> b!5175929 m!6230052))

(declare-fun m!6230954 () Bool)

(assert (=> b!5175929 m!6230954))

(assert (=> b!5175929 m!6230954))

(declare-fun m!6230956 () Bool)

(assert (=> b!5175929 m!6230956))

(assert (=> b!5175500 d!1670941))

(declare-fun bs!1204294 () Bool)

(declare-fun d!1670945 () Bool)

(assert (= bs!1204294 (and d!1670945 d!1670651)))

(declare-fun lambda!258535 () Int)

(assert (=> bs!1204294 (= (= (h!66605 (t!373434 lt!2131870)) (h!66605 (t!373434 testedP!294))) (= lambda!258535 lambda!258511))))

(declare-fun bs!1204295 () Bool)

(assert (= bs!1204295 (and d!1670945 d!1670435)))

(assert (=> bs!1204295 (= (= (h!66605 (t!373434 lt!2131870)) (h!66605 testedP!294)) (= lambda!258535 lambda!258481))))

(declare-fun bs!1204296 () Bool)

(assert (= bs!1204296 (and d!1670945 d!1670675)))

(assert (=> bs!1204296 (= (= (h!66605 (t!373434 lt!2131870)) (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (= lambda!258535 lambda!258513))))

(declare-fun bs!1204297 () Bool)

(assert (= bs!1204297 (and d!1670945 d!1670555)))

(assert (=> bs!1204297 (= (= (h!66605 (t!373434 lt!2131870)) (h!66605 lt!2131870)) (= lambda!258535 lambda!258501))))

(declare-fun bs!1204298 () Bool)

(assert (= bs!1204298 (and d!1670945 d!1670367)))

(assert (=> bs!1204298 (= (= (h!66605 (t!373434 lt!2131870)) call!363495) (= lambda!258535 lambda!258471))))

(declare-fun bs!1204299 () Bool)

(assert (= bs!1204299 (and d!1670945 d!1670179)))

(assert (=> bs!1204299 (= (= (h!66605 (t!373434 lt!2131870)) lt!2131872) (= lambda!258535 lambda!258448))))

(declare-fun bs!1204300 () Bool)

(assert (= bs!1204300 (and d!1670945 d!1670717)))

(assert (=> bs!1204300 (= (= (h!66605 (t!373434 lt!2131870)) call!363557) (= lambda!258535 lambda!258517))))

(declare-fun bs!1204301 () Bool)

(assert (= bs!1204301 (and d!1670945 d!1670569)))

(assert (=> bs!1204301 (= (= (h!66605 (t!373434 lt!2131870)) call!363503) (= lambda!258535 lambda!258505))))

(assert (=> d!1670945 true))

(assert (=> d!1670945 (= (derivationStepZipper!1001 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) (h!66605 (t!373434 lt!2131870))) (flatMap!458 (derivationStepZipper!1001 baseZ!62 (h!66605 lt!2131870)) lambda!258535))))

(declare-fun bs!1204302 () Bool)

(assert (= bs!1204302 d!1670945))

(assert (=> bs!1204302 m!6229252))

(declare-fun m!6230958 () Bool)

(assert (=> bs!1204302 m!6230958))

(assert (=> b!5175500 d!1670945))

(declare-fun b!5175932 () Bool)

(declare-fun e!3225142 () List!60281)

(assert (=> b!5175932 (= e!3225142 (Cons!60157 (h!66605 (t!373434 lt!2131870)) (++!13171 (t!373434 (t!373434 lt!2131870)) (tail!10172 lt!2131871))))))

(declare-fun e!3225143 () Bool)

(declare-fun lt!2132584 () List!60281)

(declare-fun b!5175934 () Bool)

(assert (=> b!5175934 (= e!3225143 (or (not (= (tail!10172 lt!2131871) Nil!60157)) (= lt!2132584 (t!373434 lt!2131870))))))

(declare-fun d!1670953 () Bool)

(assert (=> d!1670953 e!3225143))

(declare-fun res!2199590 () Bool)

(assert (=> d!1670953 (=> (not res!2199590) (not e!3225143))))

(assert (=> d!1670953 (= res!2199590 (= (content!10659 lt!2132584) ((_ map or) (content!10659 (t!373434 lt!2131870)) (content!10659 (tail!10172 lt!2131871)))))))

(assert (=> d!1670953 (= lt!2132584 e!3225142)))

(declare-fun c!891368 () Bool)

(assert (=> d!1670953 (= c!891368 ((_ is Nil!60157) (t!373434 lt!2131870)))))

(assert (=> d!1670953 (= (++!13171 (t!373434 lt!2131870) (tail!10172 lt!2131871)) lt!2132584)))

(declare-fun b!5175933 () Bool)

(declare-fun res!2199589 () Bool)

(assert (=> b!5175933 (=> (not res!2199589) (not e!3225143))))

(assert (=> b!5175933 (= res!2199589 (= (size!39691 lt!2132584) (+ (size!39691 (t!373434 lt!2131870)) (size!39691 (tail!10172 lt!2131871)))))))

(declare-fun b!5175931 () Bool)

(assert (=> b!5175931 (= e!3225142 (tail!10172 lt!2131871))))

(assert (= (and d!1670953 c!891368) b!5175931))

(assert (= (and d!1670953 (not c!891368)) b!5175932))

(assert (= (and d!1670953 res!2199590) b!5175933))

(assert (= (and b!5175933 res!2199589) b!5175934))

(assert (=> b!5175932 m!6228922))

(declare-fun m!6230960 () Bool)

(assert (=> b!5175932 m!6230960))

(declare-fun m!6230962 () Bool)

(assert (=> d!1670953 m!6230962))

(assert (=> d!1670953 m!6230384))

(assert (=> d!1670953 m!6228922))

(assert (=> d!1670953 m!6230004))

(declare-fun m!6230964 () Bool)

(assert (=> b!5175933 m!6230964))

(assert (=> b!5175933 m!6229250))

(assert (=> b!5175933 m!6228922))

(assert (=> b!5175933 m!6230008))

(assert (=> b!5175453 d!1670953))

(declare-fun d!1670955 () Bool)

(declare-fun lt!2132585 () Int)

(assert (=> d!1670955 (>= lt!2132585 0)))

(declare-fun e!3225144 () Int)

(assert (=> d!1670955 (= lt!2132585 e!3225144)))

(declare-fun c!891369 () Bool)

(assert (=> d!1670955 (= c!891369 ((_ is Nil!60157) lt!2132414))))

(assert (=> d!1670955 (= (size!39691 lt!2132414) lt!2132585)))

(declare-fun b!5175935 () Bool)

(assert (=> b!5175935 (= e!3225144 0)))

(declare-fun b!5175936 () Bool)

(assert (=> b!5175936 (= e!3225144 (+ 1 (size!39691 (t!373434 lt!2132414))))))

(assert (= (and d!1670955 c!891369) b!5175935))

(assert (= (and d!1670955 (not c!891369)) b!5175936))

(declare-fun m!6230966 () Bool)

(assert (=> b!5175936 m!6230966))

(assert (=> b!5175526 d!1670955))

(assert (=> b!5175526 d!1670171))

(declare-fun d!1670957 () Bool)

(declare-fun lt!2132586 () Int)

(assert (=> d!1670957 (>= lt!2132586 0)))

(declare-fun e!3225145 () Int)

(assert (=> d!1670957 (= lt!2132586 e!3225145)))

(declare-fun c!891370 () Bool)

(assert (=> d!1670957 (= c!891370 ((_ is Nil!60157) (Cons!60157 lt!2131962 Nil!60157)))))

(assert (=> d!1670957 (= (size!39691 (Cons!60157 lt!2131962 Nil!60157)) lt!2132586)))

(declare-fun b!5175937 () Bool)

(assert (=> b!5175937 (= e!3225145 0)))

(declare-fun b!5175938 () Bool)

(assert (=> b!5175938 (= e!3225145 (+ 1 (size!39691 (t!373434 (Cons!60157 lt!2131962 Nil!60157)))))))

(assert (= (and d!1670957 c!891370) b!5175937))

(assert (= (and d!1670957 (not c!891370)) b!5175938))

(declare-fun m!6230968 () Bool)

(assert (=> b!5175938 m!6230968))

(assert (=> b!5175526 d!1670957))

(declare-fun b!5175940 () Bool)

(declare-fun e!3225146 () List!60281)

(assert (=> b!5175940 (= e!3225146 (Cons!60157 (h!66605 (_1!35233 lt!2132282)) (++!13171 (t!373434 (_1!35233 lt!2132282)) (_2!35233 lt!2132282))))))

(declare-fun b!5175942 () Bool)

(declare-fun e!3225147 () Bool)

(declare-fun lt!2132587 () List!60281)

(assert (=> b!5175942 (= e!3225147 (or (not (= (_2!35233 lt!2132282) Nil!60157)) (= lt!2132587 (_1!35233 lt!2132282))))))

(declare-fun d!1670959 () Bool)

(assert (=> d!1670959 e!3225147))

(declare-fun res!2199592 () Bool)

(assert (=> d!1670959 (=> (not res!2199592) (not e!3225147))))

(assert (=> d!1670959 (= res!2199592 (= (content!10659 lt!2132587) ((_ map or) (content!10659 (_1!35233 lt!2132282)) (content!10659 (_2!35233 lt!2132282)))))))

(assert (=> d!1670959 (= lt!2132587 e!3225146)))

(declare-fun c!891371 () Bool)

(assert (=> d!1670959 (= c!891371 ((_ is Nil!60157) (_1!35233 lt!2132282)))))

(assert (=> d!1670959 (= (++!13171 (_1!35233 lt!2132282) (_2!35233 lt!2132282)) lt!2132587)))

(declare-fun b!5175941 () Bool)

(declare-fun res!2199591 () Bool)

(assert (=> b!5175941 (=> (not res!2199591) (not e!3225147))))

(assert (=> b!5175941 (= res!2199591 (= (size!39691 lt!2132587) (+ (size!39691 (_1!35233 lt!2132282)) (size!39691 (_2!35233 lt!2132282)))))))

(declare-fun b!5175939 () Bool)

(assert (=> b!5175939 (= e!3225146 (_2!35233 lt!2132282))))

(assert (= (and d!1670959 c!891371) b!5175939))

(assert (= (and d!1670959 (not c!891371)) b!5175940))

(assert (= (and d!1670959 res!2199592) b!5175941))

(assert (= (and b!5175941 res!2199591) b!5175942))

(declare-fun m!6230970 () Bool)

(assert (=> b!5175940 m!6230970))

(declare-fun m!6230972 () Bool)

(assert (=> d!1670959 m!6230972))

(declare-fun m!6230974 () Bool)

(assert (=> d!1670959 m!6230974))

(declare-fun m!6230976 () Bool)

(assert (=> d!1670959 m!6230976))

(declare-fun m!6230978 () Bool)

(assert (=> b!5175941 m!6230978))

(assert (=> b!5175941 m!6229700))

(declare-fun m!6230980 () Bool)

(assert (=> b!5175941 m!6230980))

(assert (=> d!1670413 d!1670959))

(assert (=> d!1670413 d!1670897))

(declare-fun d!1670961 () Bool)

(declare-fun e!3225149 () Bool)

(assert (=> d!1670961 e!3225149))

(declare-fun res!2199594 () Bool)

(assert (=> d!1670961 (=> res!2199594 e!3225149)))

(declare-fun lt!2132588 () Bool)

(assert (=> d!1670961 (= res!2199594 (not lt!2132588))))

(declare-fun e!3225150 () Bool)

(assert (=> d!1670961 (= lt!2132588 e!3225150)))

(declare-fun res!2199593 () Bool)

(assert (=> d!1670961 (=> res!2199593 e!3225150)))

(assert (=> d!1670961 (= res!2199593 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670961 (= (isPrefix!5788 lt!2131985 (++!13171 lt!2131985 call!363501)) lt!2132588)))

(declare-fun b!5175946 () Bool)

(assert (=> b!5175946 (= e!3225149 (>= (size!39691 (++!13171 lt!2131985 call!363501)) (size!39691 lt!2131985)))))

(declare-fun b!5175943 () Bool)

(declare-fun e!3225148 () Bool)

(assert (=> b!5175943 (= e!3225150 e!3225148)))

(declare-fun res!2199595 () Bool)

(assert (=> b!5175943 (=> (not res!2199595) (not e!3225148))))

(assert (=> b!5175943 (= res!2199595 (not ((_ is Nil!60157) (++!13171 lt!2131985 call!363501))))))

(declare-fun b!5175945 () Bool)

(assert (=> b!5175945 (= e!3225148 (isPrefix!5788 (tail!10172 lt!2131985) (tail!10172 (++!13171 lt!2131985 call!363501))))))

(declare-fun b!5175944 () Bool)

(declare-fun res!2199596 () Bool)

(assert (=> b!5175944 (=> (not res!2199596) (not e!3225148))))

(assert (=> b!5175944 (= res!2199596 (= (head!11073 lt!2131985) (head!11073 (++!13171 lt!2131985 call!363501))))))

(assert (= (and d!1670961 (not res!2199593)) b!5175943))

(assert (= (and b!5175943 res!2199595) b!5175944))

(assert (= (and b!5175944 res!2199596) b!5175945))

(assert (= (and d!1670961 (not res!2199594)) b!5175946))

(assert (=> b!5175946 m!6229710))

(declare-fun m!6230982 () Bool)

(assert (=> b!5175946 m!6230982))

(assert (=> b!5175946 m!6229692))

(declare-fun m!6230984 () Bool)

(assert (=> b!5175945 m!6230984))

(assert (=> b!5175945 m!6229710))

(declare-fun m!6230986 () Bool)

(assert (=> b!5175945 m!6230986))

(assert (=> b!5175945 m!6230984))

(assert (=> b!5175945 m!6230986))

(declare-fun m!6230988 () Bool)

(assert (=> b!5175945 m!6230988))

(declare-fun m!6230990 () Bool)

(assert (=> b!5175944 m!6230990))

(assert (=> b!5175944 m!6229710))

(declare-fun m!6230992 () Bool)

(assert (=> b!5175944 m!6230992))

(assert (=> d!1670413 d!1670961))

(declare-fun b!5175948 () Bool)

(declare-fun e!3225151 () List!60281)

(assert (=> b!5175948 (= e!3225151 (Cons!60157 (h!66605 lt!2131985) (++!13171 (t!373434 lt!2131985) call!363501)))))

(declare-fun e!3225152 () Bool)

(declare-fun lt!2132589 () List!60281)

(declare-fun b!5175950 () Bool)

(assert (=> b!5175950 (= e!3225152 (or (not (= call!363501 Nil!60157)) (= lt!2132589 lt!2131985)))))

(declare-fun d!1670963 () Bool)

(assert (=> d!1670963 e!3225152))

(declare-fun res!2199598 () Bool)

(assert (=> d!1670963 (=> (not res!2199598) (not e!3225152))))

(assert (=> d!1670963 (= res!2199598 (= (content!10659 lt!2132589) ((_ map or) (content!10659 lt!2131985) (content!10659 call!363501))))))

(assert (=> d!1670963 (= lt!2132589 e!3225151)))

(declare-fun c!891372 () Bool)

(assert (=> d!1670963 (= c!891372 ((_ is Nil!60157) lt!2131985))))

(assert (=> d!1670963 (= (++!13171 lt!2131985 call!363501) lt!2132589)))

(declare-fun b!5175949 () Bool)

(declare-fun res!2199597 () Bool)

(assert (=> b!5175949 (=> (not res!2199597) (not e!3225152))))

(assert (=> b!5175949 (= res!2199597 (= (size!39691 lt!2132589) (+ (size!39691 lt!2131985) (size!39691 call!363501))))))

(declare-fun b!5175947 () Bool)

(assert (=> b!5175947 (= e!3225151 call!363501)))

(assert (= (and d!1670963 c!891372) b!5175947))

(assert (= (and d!1670963 (not c!891372)) b!5175948))

(assert (= (and d!1670963 res!2199598) b!5175949))

(assert (= (and b!5175949 res!2199597) b!5175950))

(declare-fun m!6230994 () Bool)

(assert (=> b!5175948 m!6230994))

(declare-fun m!6230996 () Bool)

(assert (=> d!1670963 m!6230996))

(assert (=> d!1670963 m!6230844))

(declare-fun m!6230998 () Bool)

(assert (=> d!1670963 m!6230998))

(declare-fun m!6231000 () Bool)

(assert (=> b!5175949 m!6231000))

(assert (=> b!5175949 m!6229692))

(declare-fun m!6231002 () Bool)

(assert (=> b!5175949 m!6231002))

(assert (=> d!1670413 d!1670963))

(declare-fun d!1670967 () Bool)

(assert (=> d!1670967 (isPrefix!5788 lt!2131985 (++!13171 lt!2131985 call!363501))))

(declare-fun lt!2132591 () Unit!151938)

(assert (=> d!1670967 (= lt!2132591 (choose!38419 lt!2131985 call!363501))))

(assert (=> d!1670967 (= (lemmaConcatTwoListThenFirstIsPrefix!3603 lt!2131985 call!363501) lt!2132591)))

(declare-fun bs!1204304 () Bool)

(assert (= bs!1204304 d!1670967))

(assert (=> bs!1204304 m!6229710))

(assert (=> bs!1204304 m!6229710))

(assert (=> bs!1204304 m!6229714))

(declare-fun m!6231004 () Bool)

(assert (=> bs!1204304 m!6231004))

(assert (=> d!1670413 d!1670967))

(declare-fun bs!1204305 () Bool)

(declare-fun d!1670969 () Bool)

(assert (= bs!1204305 (and d!1670969 d!1670687)))

(declare-fun lambda!258536 () Int)

(assert (=> bs!1204305 (not (= lambda!258536 lambda!258516))))

(declare-fun bs!1204306 () Bool)

(assert (= bs!1204306 (and d!1670969 b!5175779)))

(assert (=> bs!1204306 (not (= lambda!258536 lambda!258523))))

(declare-fun bs!1204307 () Bool)

(assert (= bs!1204307 (and d!1670969 d!1670729)))

(assert (=> bs!1204307 (not (= lambda!258536 lambda!258518))))

(declare-fun bs!1204308 () Bool)

(assert (= bs!1204308 (and d!1670969 d!1670661)))

(assert (=> bs!1204308 (not (= lambda!258536 lambda!258512))))

(declare-fun bs!1204309 () Bool)

(assert (= bs!1204309 (and d!1670969 b!5175502)))

(assert (=> bs!1204309 (not (= lambda!258536 lambda!258503))))

(declare-fun bs!1204310 () Bool)

(assert (= bs!1204310 (and d!1670969 d!1670639)))

(assert (=> bs!1204310 (not (= lambda!258536 lambda!258510))))

(declare-fun bs!1204311 () Bool)

(assert (= bs!1204311 (and d!1670969 d!1670785)))

(assert (=> bs!1204311 (= lambda!258536 lambda!258521)))

(declare-fun bs!1204312 () Bool)

(assert (= bs!1204312 (and d!1670969 d!1670237)))

(assert (=> bs!1204312 (not (= lambda!258536 lambda!258451))))

(declare-fun bs!1204313 () Bool)

(assert (= bs!1204313 (and d!1670969 b!5175503)))

(assert (=> bs!1204313 (not (= lambda!258536 lambda!258504))))

(declare-fun bs!1204314 () Bool)

(assert (= bs!1204314 (and d!1670969 d!1670861)))

(assert (=> bs!1204314 (not (= lambda!258536 lambda!258534))))

(declare-fun bs!1204315 () Bool)

(assert (= bs!1204315 (and d!1670969 b!5175436)))

(assert (=> bs!1204315 (not (= lambda!258536 lambda!258499))))

(declare-fun bs!1204316 () Bool)

(assert (= bs!1204316 (and d!1670969 d!1670427)))

(assert (=> bs!1204316 (not (= lambda!258536 lambda!258480))))

(declare-fun bs!1204317 () Bool)

(assert (= bs!1204317 (and d!1670969 d!1670557)))

(assert (=> bs!1204317 (= lambda!258536 lambda!258502)))

(declare-fun bs!1204318 () Bool)

(assert (= bs!1204318 (and d!1670969 d!1670625)))

(assert (=> bs!1204318 (not (= lambda!258536 lambda!258509))))

(declare-fun bs!1204319 () Bool)

(assert (= bs!1204319 (and d!1670969 d!1670469)))

(assert (=> bs!1204319 (= lambda!258536 lambda!258498)))

(declare-fun bs!1204320 () Bool)

(assert (= bs!1204320 (and d!1670969 b!5175780)))

(assert (=> bs!1204320 (not (= lambda!258536 lambda!258524))))

(declare-fun bs!1204321 () Bool)

(assert (= bs!1204321 (and d!1670969 b!5175437)))

(assert (=> bs!1204321 (not (= lambda!258536 lambda!258500))))

(declare-fun bs!1204322 () Bool)

(assert (= bs!1204322 (and d!1670969 d!1670819)))

(assert (=> bs!1204322 (not (= lambda!258536 lambda!258531))))

(declare-fun bs!1204323 () Bool)

(declare-fun b!5175955 () Bool)

(assert (= bs!1204323 (and b!5175955 d!1670687)))

(declare-fun lambda!258537 () Int)

(assert (=> bs!1204323 (not (= lambda!258537 lambda!258516))))

(declare-fun bs!1204324 () Bool)

(assert (= bs!1204324 (and b!5175955 b!5175779)))

(assert (=> bs!1204324 (= lambda!258537 lambda!258523)))

(declare-fun bs!1204325 () Bool)

(assert (= bs!1204325 (and b!5175955 d!1670661)))

(assert (=> bs!1204325 (not (= lambda!258537 lambda!258512))))

(declare-fun bs!1204326 () Bool)

(assert (= bs!1204326 (and b!5175955 b!5175502)))

(assert (=> bs!1204326 (= lambda!258537 lambda!258503)))

(declare-fun bs!1204327 () Bool)

(assert (= bs!1204327 (and b!5175955 d!1670639)))

(assert (=> bs!1204327 (not (= lambda!258537 lambda!258510))))

(declare-fun bs!1204328 () Bool)

(assert (= bs!1204328 (and b!5175955 d!1670785)))

(assert (=> bs!1204328 (not (= lambda!258537 lambda!258521))))

(declare-fun bs!1204329 () Bool)

(assert (= bs!1204329 (and b!5175955 d!1670237)))

(assert (=> bs!1204329 (not (= lambda!258537 lambda!258451))))

(declare-fun bs!1204330 () Bool)

(assert (= bs!1204330 (and b!5175955 b!5175503)))

(assert (=> bs!1204330 (= lambda!258537 lambda!258504)))

(declare-fun bs!1204331 () Bool)

(assert (= bs!1204331 (and b!5175955 d!1670861)))

(assert (=> bs!1204331 (not (= lambda!258537 lambda!258534))))

(declare-fun bs!1204332 () Bool)

(assert (= bs!1204332 (and b!5175955 b!5175436)))

(assert (=> bs!1204332 (= lambda!258537 lambda!258499)))

(declare-fun bs!1204333 () Bool)

(assert (= bs!1204333 (and b!5175955 d!1670427)))

(assert (=> bs!1204333 (not (= lambda!258537 lambda!258480))))

(declare-fun bs!1204334 () Bool)

(assert (= bs!1204334 (and b!5175955 d!1670557)))

(assert (=> bs!1204334 (not (= lambda!258537 lambda!258502))))

(declare-fun bs!1204335 () Bool)

(assert (= bs!1204335 (and b!5175955 d!1670729)))

(assert (=> bs!1204335 (not (= lambda!258537 lambda!258518))))

(declare-fun bs!1204336 () Bool)

(assert (= bs!1204336 (and b!5175955 d!1670969)))

(assert (=> bs!1204336 (not (= lambda!258537 lambda!258536))))

(declare-fun bs!1204337 () Bool)

(assert (= bs!1204337 (and b!5175955 d!1670625)))

(assert (=> bs!1204337 (not (= lambda!258537 lambda!258509))))

(declare-fun bs!1204338 () Bool)

(assert (= bs!1204338 (and b!5175955 d!1670469)))

(assert (=> bs!1204338 (not (= lambda!258537 lambda!258498))))

(declare-fun bs!1204339 () Bool)

(assert (= bs!1204339 (and b!5175955 b!5175780)))

(assert (=> bs!1204339 (= lambda!258537 lambda!258524)))

(declare-fun bs!1204340 () Bool)

(assert (= bs!1204340 (and b!5175955 b!5175437)))

(assert (=> bs!1204340 (= lambda!258537 lambda!258500)))

(declare-fun bs!1204341 () Bool)

(assert (= bs!1204341 (and b!5175955 d!1670819)))

(assert (=> bs!1204341 (= lambda!258537 lambda!258531)))

(declare-fun bs!1204342 () Bool)

(declare-fun b!5175956 () Bool)

(assert (= bs!1204342 (and b!5175956 d!1670687)))

(declare-fun lambda!258538 () Int)

(assert (=> bs!1204342 (not (= lambda!258538 lambda!258516))))

(declare-fun bs!1204343 () Bool)

(assert (= bs!1204343 (and b!5175956 d!1670661)))

(assert (=> bs!1204343 (not (= lambda!258538 lambda!258512))))

(declare-fun bs!1204344 () Bool)

(assert (= bs!1204344 (and b!5175956 b!5175502)))

(assert (=> bs!1204344 (= lambda!258538 lambda!258503)))

(declare-fun bs!1204345 () Bool)

(assert (= bs!1204345 (and b!5175956 d!1670639)))

(assert (=> bs!1204345 (not (= lambda!258538 lambda!258510))))

(declare-fun bs!1204346 () Bool)

(assert (= bs!1204346 (and b!5175956 d!1670785)))

(assert (=> bs!1204346 (not (= lambda!258538 lambda!258521))))

(declare-fun bs!1204347 () Bool)

(assert (= bs!1204347 (and b!5175956 d!1670237)))

(assert (=> bs!1204347 (not (= lambda!258538 lambda!258451))))

(declare-fun bs!1204348 () Bool)

(assert (= bs!1204348 (and b!5175956 b!5175503)))

(assert (=> bs!1204348 (= lambda!258538 lambda!258504)))

(declare-fun bs!1204349 () Bool)

(assert (= bs!1204349 (and b!5175956 d!1670861)))

(assert (=> bs!1204349 (not (= lambda!258538 lambda!258534))))

(declare-fun bs!1204350 () Bool)

(assert (= bs!1204350 (and b!5175956 b!5175436)))

(assert (=> bs!1204350 (= lambda!258538 lambda!258499)))

(declare-fun bs!1204351 () Bool)

(assert (= bs!1204351 (and b!5175956 d!1670427)))

(assert (=> bs!1204351 (not (= lambda!258538 lambda!258480))))

(declare-fun bs!1204352 () Bool)

(assert (= bs!1204352 (and b!5175956 d!1670557)))

(assert (=> bs!1204352 (not (= lambda!258538 lambda!258502))))

(declare-fun bs!1204353 () Bool)

(assert (= bs!1204353 (and b!5175956 b!5175779)))

(assert (=> bs!1204353 (= lambda!258538 lambda!258523)))

(declare-fun bs!1204354 () Bool)

(assert (= bs!1204354 (and b!5175956 b!5175955)))

(assert (=> bs!1204354 (= lambda!258538 lambda!258537)))

(declare-fun bs!1204355 () Bool)

(assert (= bs!1204355 (and b!5175956 d!1670729)))

(assert (=> bs!1204355 (not (= lambda!258538 lambda!258518))))

(declare-fun bs!1204356 () Bool)

(assert (= bs!1204356 (and b!5175956 d!1670969)))

(assert (=> bs!1204356 (not (= lambda!258538 lambda!258536))))

(declare-fun bs!1204357 () Bool)

(assert (= bs!1204357 (and b!5175956 d!1670625)))

(assert (=> bs!1204357 (not (= lambda!258538 lambda!258509))))

(declare-fun bs!1204358 () Bool)

(assert (= bs!1204358 (and b!5175956 d!1670469)))

(assert (=> bs!1204358 (not (= lambda!258538 lambda!258498))))

(declare-fun bs!1204359 () Bool)

(assert (= bs!1204359 (and b!5175956 b!5175780)))

(assert (=> bs!1204359 (= lambda!258538 lambda!258524)))

(declare-fun bs!1204360 () Bool)

(assert (= bs!1204360 (and b!5175956 b!5175437)))

(assert (=> bs!1204360 (= lambda!258538 lambda!258500)))

(declare-fun bs!1204361 () Bool)

(assert (= bs!1204361 (and b!5175956 d!1670819)))

(assert (=> bs!1204361 (= lambda!258538 lambda!258531)))

(declare-fun e!3225155 () Unit!151938)

(declare-fun Unit!151989 () Unit!151938)

(assert (=> b!5175956 (= e!3225155 Unit!151989)))

(declare-fun lt!2132597 () List!60283)

(declare-fun call!363615 () List!60283)

(assert (=> b!5175956 (= lt!2132597 call!363615)))

(declare-fun lt!2132592 () Unit!151938)

(assert (=> b!5175956 (= lt!2132592 (lemmaForallThenNotExists!444 lt!2132597 lambda!258536))))

(declare-fun call!363614 () Bool)

(assert (=> b!5175956 (not call!363614)))

(declare-fun lt!2132599 () Unit!151938)

(assert (=> b!5175956 (= lt!2132599 lt!2132592)))

(declare-fun bm!363610 () Bool)

(declare-fun c!891374 () Bool)

(declare-fun lt!2132596 () List!60283)

(assert (=> bm!363610 (= call!363614 (exists!1937 (ite c!891374 lt!2132596 lt!2132597) (ite c!891374 lambda!258537 lambda!258538)))))

(declare-fun Unit!151990 () Unit!151938)

(assert (=> b!5175955 (= e!3225155 Unit!151990)))

(assert (=> b!5175955 (= lt!2132596 call!363615)))

(declare-fun lt!2132598 () Unit!151938)

(assert (=> b!5175955 (= lt!2132598 (lemmaNotForallThenExists!477 lt!2132596 lambda!258536))))

(assert (=> b!5175955 call!363614))

(declare-fun lt!2132595 () Unit!151938)

(assert (=> b!5175955 (= lt!2132595 lt!2132598)))

(declare-fun bm!363609 () Bool)

(assert (=> bm!363609 (= call!363615 (toList!8456 call!363502))))

(declare-fun lt!2132594 () Bool)

(assert (=> d!1670969 (= lt!2132594 (isEmpty!32209 (getLanguageWitness!1013 call!363502)))))

(assert (=> d!1670969 (= lt!2132594 (forall!14157 call!363502 lambda!258536))))

(declare-fun lt!2132593 () Unit!151938)

(assert (=> d!1670969 (= lt!2132593 e!3225155)))

(assert (=> d!1670969 (= c!891374 (not (forall!14157 call!363502 lambda!258536)))))

(assert (=> d!1670969 (= (lostCauseZipper!1342 call!363502) lt!2132594)))

(assert (= (and d!1670969 c!891374) b!5175955))

(assert (= (and d!1670969 (not c!891374)) b!5175956))

(assert (= (or b!5175955 b!5175956) bm!363609))

(assert (= (or b!5175955 b!5175956) bm!363610))

(declare-fun m!6231044 () Bool)

(assert (=> bm!363609 m!6231044))

(declare-fun m!6231046 () Bool)

(assert (=> b!5175956 m!6231046))

(declare-fun m!6231048 () Bool)

(assert (=> bm!363610 m!6231048))

(declare-fun m!6231050 () Bool)

(assert (=> b!5175955 m!6231050))

(declare-fun m!6231052 () Bool)

(assert (=> d!1670969 m!6231052))

(assert (=> d!1670969 m!6231052))

(declare-fun m!6231054 () Bool)

(assert (=> d!1670969 m!6231054))

(declare-fun m!6231056 () Bool)

(assert (=> d!1670969 m!6231056))

(assert (=> d!1670969 m!6231056))

(assert (=> d!1670413 d!1670969))

(declare-fun d!1670989 () Bool)

(assert (=> d!1670989 (= call!363501 lt!2132279)))

(declare-fun lt!2132603 () Unit!151938)

(assert (=> d!1670989 (= lt!2132603 (choose!38420 lt!2131985 call!363501 lt!2131985 lt!2132279 input!5817))))

(assert (=> d!1670989 (isPrefix!5788 lt!2131985 input!5817)))

(assert (=> d!1670989 (= (lemmaSamePrefixThenSameSuffix!2709 lt!2131985 call!363501 lt!2131985 lt!2132279 input!5817) lt!2132603)))

(declare-fun bs!1204362 () Bool)

(assert (= bs!1204362 d!1670989))

(declare-fun m!6231058 () Bool)

(assert (=> bs!1204362 m!6231058))

(assert (=> bs!1204362 m!6230830))

(assert (=> d!1670413 d!1670989))

(declare-fun bs!1204363 () Bool)

(declare-fun d!1670991 () Bool)

(assert (= bs!1204363 (and d!1670991 d!1670687)))

(declare-fun lambda!258539 () Int)

(assert (=> bs!1204363 (= (= lambda!258502 lambda!258498) (= lambda!258539 lambda!258516))))

(declare-fun bs!1204364 () Bool)

(assert (= bs!1204364 (and d!1670991 b!5175502)))

(assert (=> bs!1204364 (not (= lambda!258539 lambda!258503))))

(declare-fun bs!1204365 () Bool)

(assert (= bs!1204365 (and d!1670991 d!1670639)))

(assert (=> bs!1204365 (not (= lambda!258539 lambda!258510))))

(declare-fun bs!1204366 () Bool)

(assert (= bs!1204366 (and d!1670991 d!1670785)))

(assert (=> bs!1204366 (not (= lambda!258539 lambda!258521))))

(declare-fun bs!1204367 () Bool)

(assert (= bs!1204367 (and d!1670991 d!1670237)))

(assert (=> bs!1204367 (not (= lambda!258539 lambda!258451))))

(declare-fun bs!1204368 () Bool)

(assert (= bs!1204368 (and d!1670991 b!5175503)))

(assert (=> bs!1204368 (not (= lambda!258539 lambda!258504))))

(declare-fun bs!1204369 () Bool)

(assert (= bs!1204369 (and d!1670991 d!1670861)))

(assert (=> bs!1204369 (= (= lambda!258502 lambda!258498) (= lambda!258539 lambda!258534))))

(declare-fun bs!1204370 () Bool)

(assert (= bs!1204370 (and d!1670991 b!5175436)))

(assert (=> bs!1204370 (not (= lambda!258539 lambda!258499))))

(declare-fun bs!1204371 () Bool)

(assert (= bs!1204371 (and d!1670991 d!1670427)))

(assert (=> bs!1204371 (not (= lambda!258539 lambda!258480))))

(declare-fun bs!1204372 () Bool)

(assert (= bs!1204372 (and d!1670991 d!1670557)))

(assert (=> bs!1204372 (not (= lambda!258539 lambda!258502))))

(declare-fun bs!1204373 () Bool)

(assert (= bs!1204373 (and d!1670991 b!5175779)))

(assert (=> bs!1204373 (not (= lambda!258539 lambda!258523))))

(declare-fun bs!1204374 () Bool)

(assert (= bs!1204374 (and d!1670991 b!5175955)))

(assert (=> bs!1204374 (not (= lambda!258539 lambda!258537))))

(declare-fun bs!1204375 () Bool)

(assert (= bs!1204375 (and d!1670991 d!1670729)))

(assert (=> bs!1204375 (= lambda!258539 lambda!258518)))

(declare-fun bs!1204376 () Bool)

(assert (= bs!1204376 (and d!1670991 d!1670969)))

(assert (=> bs!1204376 (not (= lambda!258539 lambda!258536))))

(declare-fun bs!1204377 () Bool)

(assert (= bs!1204377 (and d!1670991 d!1670661)))

(assert (=> bs!1204377 (not (= lambda!258539 lambda!258512))))

(declare-fun bs!1204378 () Bool)

(assert (= bs!1204378 (and d!1670991 b!5175956)))

(assert (=> bs!1204378 (not (= lambda!258539 lambda!258538))))

(declare-fun bs!1204379 () Bool)

(assert (= bs!1204379 (and d!1670991 d!1670625)))

(assert (=> bs!1204379 (= (= lambda!258502 lambda!258451) (= lambda!258539 lambda!258509))))

(declare-fun bs!1204380 () Bool)

(assert (= bs!1204380 (and d!1670991 d!1670469)))

(assert (=> bs!1204380 (not (= lambda!258539 lambda!258498))))

(declare-fun bs!1204381 () Bool)

(assert (= bs!1204381 (and d!1670991 b!5175780)))

(assert (=> bs!1204381 (not (= lambda!258539 lambda!258524))))

(declare-fun bs!1204382 () Bool)

(assert (= bs!1204382 (and d!1670991 b!5175437)))

(assert (=> bs!1204382 (not (= lambda!258539 lambda!258500))))

(declare-fun bs!1204383 () Bool)

(assert (= bs!1204383 (and d!1670991 d!1670819)))

(assert (=> bs!1204383 (not (= lambda!258539 lambda!258531))))

(assert (=> d!1670991 true))

(assert (=> d!1670991 (< (dynLambda!23879 order!27035 lambda!258502) (dynLambda!23879 order!27035 lambda!258539))))

(assert (=> d!1670991 (exists!1937 lt!2132402 lambda!258539)))

(declare-fun lt!2132604 () Unit!151938)

(assert (=> d!1670991 (= lt!2132604 (choose!38430 lt!2132402 lambda!258502))))

(assert (=> d!1670991 (not (forall!14158 lt!2132402 lambda!258502))))

(assert (=> d!1670991 (= (lemmaNotForallThenExists!477 lt!2132402 lambda!258502) lt!2132604)))

(declare-fun bs!1204384 () Bool)

(assert (= bs!1204384 d!1670991))

(declare-fun m!6231060 () Bool)

(assert (=> bs!1204384 m!6231060))

(declare-fun m!6231062 () Bool)

(assert (=> bs!1204384 m!6231062))

(declare-fun m!6231064 () Bool)

(assert (=> bs!1204384 m!6231064))

(assert (=> b!5175502 d!1670991))

(assert (=> bm!363551 d!1670227))

(assert (=> d!1670457 d!1670451))

(assert (=> d!1670457 d!1670521))

(declare-fun d!1670993 () Bool)

(assert (=> d!1670993 (isPrefix!5788 lt!2131870 (++!13171 lt!2131870 (tail!10172 lt!2131871)))))

(assert (=> d!1670993 true))

(declare-fun _$46!1990 () Unit!151938)

(assert (=> d!1670993 (= (choose!38419 lt!2131870 (tail!10172 lt!2131871)) _$46!1990)))

(declare-fun bs!1204385 () Bool)

(assert (= bs!1204385 d!1670993))

(assert (=> bs!1204385 m!6228922))

(assert (=> bs!1204385 m!6229038))

(assert (=> bs!1204385 m!6229038))

(assert (=> bs!1204385 m!6229042))

(assert (=> d!1670457 d!1670993))

(assert (=> d!1670309 d!1670323))

(assert (=> d!1670309 d!1670321))

(declare-fun d!1670995 () Bool)

(assert (=> d!1670995 (= (++!13171 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)) lt!2131976) input!5817)))

(assert (=> d!1670995 true))

(declare-fun _$68!868 () Unit!151938)

(assert (=> d!1670995 (= (choose!38414 lt!2131870 lt!2131989 lt!2131976 input!5817) _$68!868)))

(declare-fun bs!1204386 () Bool)

(assert (= bs!1204386 d!1670995))

(assert (=> bs!1204386 m!6229006))

(assert (=> bs!1204386 m!6229006))

(assert (=> bs!1204386 m!6229012))

(assert (=> d!1670309 d!1670995))

(declare-fun b!5175982 () Bool)

(declare-fun e!3225171 () List!60281)

(assert (=> b!5175982 (= e!3225171 (Cons!60157 (h!66605 lt!2131870) (++!13171 (t!373434 lt!2131870) (Cons!60157 lt!2131989 lt!2131976))))))

(declare-fun lt!2132605 () List!60281)

(declare-fun b!5175984 () Bool)

(declare-fun e!3225172 () Bool)

(assert (=> b!5175984 (= e!3225172 (or (not (= (Cons!60157 lt!2131989 lt!2131976) Nil!60157)) (= lt!2132605 lt!2131870)))))

(declare-fun d!1670997 () Bool)

(assert (=> d!1670997 e!3225172))

(declare-fun res!2199610 () Bool)

(assert (=> d!1670997 (=> (not res!2199610) (not e!3225172))))

(assert (=> d!1670997 (= res!2199610 (= (content!10659 lt!2132605) ((_ map or) (content!10659 lt!2131870) (content!10659 (Cons!60157 lt!2131989 lt!2131976)))))))

(assert (=> d!1670997 (= lt!2132605 e!3225171)))

(declare-fun c!891383 () Bool)

(assert (=> d!1670997 (= c!891383 ((_ is Nil!60157) lt!2131870))))

(assert (=> d!1670997 (= (++!13171 lt!2131870 (Cons!60157 lt!2131989 lt!2131976)) lt!2132605)))

(declare-fun b!5175983 () Bool)

(declare-fun res!2199609 () Bool)

(assert (=> b!5175983 (=> (not res!2199609) (not e!3225172))))

(assert (=> b!5175983 (= res!2199609 (= (size!39691 lt!2132605) (+ (size!39691 lt!2131870) (size!39691 (Cons!60157 lt!2131989 lt!2131976)))))))

(declare-fun b!5175981 () Bool)

(assert (=> b!5175981 (= e!3225171 (Cons!60157 lt!2131989 lt!2131976))))

(assert (= (and d!1670997 c!891383) b!5175981))

(assert (= (and d!1670997 (not c!891383)) b!5175982))

(assert (= (and d!1670997 res!2199610) b!5175983))

(assert (= (and b!5175983 res!2199609) b!5175984))

(declare-fun m!6231066 () Bool)

(assert (=> b!5175982 m!6231066))

(declare-fun m!6231068 () Bool)

(assert (=> d!1670997 m!6231068))

(assert (=> d!1670997 m!6229430))

(declare-fun m!6231070 () Bool)

(assert (=> d!1670997 m!6231070))

(declare-fun m!6231072 () Bool)

(assert (=> b!5175983 m!6231072))

(assert (=> b!5175983 m!6228946))

(declare-fun m!6231074 () Bool)

(assert (=> b!5175983 m!6231074))

(assert (=> d!1670309 d!1670997))

(declare-fun d!1670999 () Bool)

(declare-fun lt!2132606 () Int)

(assert (=> d!1670999 (>= lt!2132606 0)))

(declare-fun e!3225181 () Int)

(assert (=> d!1670999 (= lt!2132606 e!3225181)))

(declare-fun c!891386 () Bool)

(assert (=> d!1670999 (= c!891386 ((_ is Nil!60157) lt!2132202))))

(assert (=> d!1670999 (= (size!39691 lt!2132202) lt!2132606)))

(declare-fun b!5175995 () Bool)

(assert (=> b!5175995 (= e!3225181 0)))

(declare-fun b!5175996 () Bool)

(assert (=> b!5175996 (= e!3225181 (+ 1 (size!39691 (t!373434 lt!2132202))))))

(assert (= (and d!1670999 c!891386) b!5175995))

(assert (= (and d!1670999 (not c!891386)) b!5175996))

(declare-fun m!6231076 () Bool)

(assert (=> b!5175996 m!6231076))

(assert (=> b!5175260 d!1670999))

(assert (=> b!5175260 d!1670249))

(declare-fun d!1671001 () Bool)

(declare-fun lt!2132607 () Int)

(assert (=> d!1671001 (>= lt!2132607 0)))

(declare-fun e!3225182 () Int)

(assert (=> d!1671001 (= lt!2132607 e!3225182)))

(declare-fun c!891387 () Bool)

(assert (=> d!1671001 (= c!891387 ((_ is Nil!60157) (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))

(assert (=> d!1671001 (= (size!39691 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)) lt!2132607)))

(declare-fun b!5175997 () Bool)

(assert (=> b!5175997 (= e!3225182 0)))

(declare-fun b!5175998 () Bool)

(assert (=> b!5175998 (= e!3225182 (+ 1 (size!39691 (t!373434 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(assert (= (and d!1671001 c!891387) b!5175997))

(assert (= (and d!1671001 (not c!891387)) b!5175998))

(declare-fun m!6231078 () Bool)

(assert (=> b!5175998 m!6231078))

(assert (=> b!5175260 d!1671001))

(declare-fun d!1671003 () Bool)

(assert (=> d!1671003 (= lt!2131871 lt!2131944)))

(assert (=> d!1671003 true))

(declare-fun _$63!1291 () Unit!151938)

(assert (=> d!1671003 (= (choose!38420 testedP!294 lt!2131871 testedP!294 lt!2131944 input!5817) _$63!1291)))

(assert (=> d!1670563 d!1671003))

(assert (=> d!1670563 d!1670243))

(declare-fun d!1671005 () Bool)

(declare-fun c!891388 () Bool)

(assert (=> d!1671005 (= c!891388 ((_ is Nil!60157) lt!2132320))))

(declare-fun e!3225183 () (InoxSet C!29580))

(assert (=> d!1671005 (= (content!10659 lt!2132320) e!3225183)))

(declare-fun b!5175999 () Bool)

(assert (=> b!5175999 (= e!3225183 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176000 () Bool)

(assert (=> b!5176000 (= e!3225183 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132320) true) (content!10659 (t!373434 lt!2132320))))))

(assert (= (and d!1671005 c!891388) b!5175999))

(assert (= (and d!1671005 (not c!891388)) b!5176000))

(declare-fun m!6231080 () Bool)

(assert (=> b!5176000 m!6231080))

(declare-fun m!6231082 () Bool)

(assert (=> b!5176000 m!6231082))

(assert (=> d!1670447 d!1671005))

(declare-fun d!1671007 () Bool)

(declare-fun c!891389 () Bool)

(assert (=> d!1671007 (= c!891389 ((_ is Nil!60157) (_1!35233 lt!2131974)))))

(declare-fun e!3225184 () (InoxSet C!29580))

(assert (=> d!1671007 (= (content!10659 (_1!35233 lt!2131974)) e!3225184)))

(declare-fun b!5176001 () Bool)

(assert (=> b!5176001 (= e!3225184 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176002 () Bool)

(assert (=> b!5176002 (= e!3225184 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (_1!35233 lt!2131974)) true) (content!10659 (t!373434 (_1!35233 lt!2131974)))))))

(assert (= (and d!1671007 c!891389) b!5176001))

(assert (= (and d!1671007 (not c!891389)) b!5176002))

(declare-fun m!6231084 () Bool)

(assert (=> b!5176002 m!6231084))

(assert (=> b!5176002 m!6230362))

(assert (=> d!1670447 d!1671007))

(declare-fun d!1671009 () Bool)

(declare-fun c!891390 () Bool)

(assert (=> d!1671009 (= c!891390 ((_ is Nil!60157) (_2!35233 lt!2131974)))))

(declare-fun e!3225185 () (InoxSet C!29580))

(assert (=> d!1671009 (= (content!10659 (_2!35233 lt!2131974)) e!3225185)))

(declare-fun b!5176003 () Bool)

(assert (=> b!5176003 (= e!3225185 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176004 () Bool)

(assert (=> b!5176004 (= e!3225185 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (_2!35233 lt!2131974)) true) (content!10659 (t!373434 (_2!35233 lt!2131974)))))))

(assert (= (and d!1671009 c!891390) b!5176003))

(assert (= (and d!1671009 (not c!891390)) b!5176004))

(declare-fun m!6231086 () Bool)

(assert (=> b!5176004 m!6231086))

(declare-fun m!6231088 () Bool)

(assert (=> b!5176004 m!6231088))

(assert (=> d!1670447 d!1671009))

(declare-fun d!1671011 () Bool)

(declare-fun lt!2132608 () Int)

(assert (=> d!1671011 (>= lt!2132608 0)))

(declare-fun e!3225186 () Int)

(assert (=> d!1671011 (= lt!2132608 e!3225186)))

(declare-fun c!891391 () Bool)

(assert (=> d!1671011 (= c!891391 ((_ is Nil!60157) (_1!35233 lt!2132282)))))

(assert (=> d!1671011 (= (size!39691 (_1!35233 lt!2132282)) lt!2132608)))

(declare-fun b!5176005 () Bool)

(assert (=> b!5176005 (= e!3225186 0)))

(declare-fun b!5176006 () Bool)

(assert (=> b!5176006 (= e!3225186 (+ 1 (size!39691 (t!373434 (_1!35233 lt!2132282)))))))

(assert (= (and d!1671011 c!891391) b!5176005))

(assert (= (and d!1671011 (not c!891391)) b!5176006))

(declare-fun m!6231090 () Bool)

(assert (=> b!5176006 m!6231090))

(assert (=> b!5175345 d!1671011))

(assert (=> b!5175345 d!1670919))

(declare-fun b!5176008 () Bool)

(declare-fun e!3225187 () List!60281)

(assert (=> b!5176008 (= e!3225187 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(declare-fun lt!2132609 () List!60281)

(declare-fun b!5176010 () Bool)

(declare-fun e!3225188 () Bool)

(assert (=> b!5176010 (= e!3225188 (or (not (= (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157) Nil!60157)) (= lt!2132609 (t!373434 testedP!294))))))

(declare-fun d!1671013 () Bool)

(assert (=> d!1671013 e!3225188))

(declare-fun res!2199618 () Bool)

(assert (=> d!1671013 (=> (not res!2199618) (not e!3225188))))

(assert (=> d!1671013 (= res!2199618 (= (content!10659 lt!2132609) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(assert (=> d!1671013 (= lt!2132609 e!3225187)))

(declare-fun c!891392 () Bool)

(assert (=> d!1671013 (= c!891392 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1671013 (= (++!13171 (t!373434 testedP!294) (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)) lt!2132609)))

(declare-fun b!5176009 () Bool)

(declare-fun res!2199617 () Bool)

(assert (=> b!5176009 (=> (not res!2199617) (not e!3225188))))

(assert (=> b!5176009 (= res!2199617 (= (size!39691 lt!2132609) (+ (size!39691 (t!373434 testedP!294)) (size!39691 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(declare-fun b!5176007 () Bool)

(assert (=> b!5176007 (= e!3225187 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))

(assert (= (and d!1671013 c!891392) b!5176007))

(assert (= (and d!1671013 (not c!891392)) b!5176008))

(assert (= (and d!1671013 res!2199618) b!5176009))

(assert (= (and b!5176009 res!2199617) b!5176010))

(declare-fun m!6231092 () Bool)

(assert (=> b!5176008 m!6231092))

(declare-fun m!6231094 () Bool)

(assert (=> d!1671013 m!6231094))

(assert (=> d!1671013 m!6229606))

(assert (=> d!1671013 m!6230036))

(declare-fun m!6231096 () Bool)

(assert (=> b!5176009 m!6231096))

(assert (=> b!5176009 m!6228998))

(assert (=> b!5176009 m!6230040))

(assert (=> b!5175493 d!1671013))

(declare-fun d!1671015 () Bool)

(declare-fun e!3225190 () Bool)

(assert (=> d!1671015 e!3225190))

(declare-fun res!2199620 () Bool)

(assert (=> d!1671015 (=> res!2199620 e!3225190)))

(declare-fun lt!2132610 () Bool)

(assert (=> d!1671015 (= res!2199620 (not lt!2132610))))

(declare-fun e!3225191 () Bool)

(assert (=> d!1671015 (= lt!2132610 e!3225191)))

(declare-fun res!2199619 () Bool)

(assert (=> d!1671015 (=> res!2199619 e!3225191)))

(assert (=> d!1671015 (= res!2199619 ((_ is Nil!60157) (tail!10172 lt!2131870)))))

(assert (=> d!1671015 (= (isPrefix!5788 (tail!10172 lt!2131870) (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871)))) lt!2132610)))

(declare-fun b!5176014 () Bool)

(assert (=> b!5176014 (= e!3225190 (>= (size!39691 (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871)))) (size!39691 (tail!10172 lt!2131870))))))

(declare-fun b!5176011 () Bool)

(declare-fun e!3225189 () Bool)

(assert (=> b!5176011 (= e!3225191 e!3225189)))

(declare-fun res!2199621 () Bool)

(assert (=> b!5176011 (=> (not res!2199621) (not e!3225189))))

(assert (=> b!5176011 (= res!2199621 (not ((_ is Nil!60157) (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))))

(declare-fun b!5176013 () Bool)

(assert (=> b!5176013 (= e!3225189 (isPrefix!5788 (tail!10172 (tail!10172 lt!2131870)) (tail!10172 (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))))

(declare-fun b!5176012 () Bool)

(declare-fun res!2199622 () Bool)

(assert (=> b!5176012 (=> (not res!2199622) (not e!3225189))))

(assert (=> b!5176012 (= res!2199622 (= (head!11073 (tail!10172 lt!2131870)) (head!11073 (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))))

(assert (= (and d!1671015 (not res!2199619)) b!5176011))

(assert (= (and b!5176011 res!2199621) b!5176012))

(assert (= (and b!5176012 res!2199622) b!5176013))

(assert (= (and d!1671015 (not res!2199620)) b!5176014))

(assert (=> b!5176014 m!6229832))

(declare-fun m!6231098 () Bool)

(assert (=> b!5176014 m!6231098))

(assert (=> b!5176014 m!6229232))

(assert (=> b!5176014 m!6229738))

(assert (=> b!5176013 m!6229232))

(assert (=> b!5176013 m!6229740))

(assert (=> b!5176013 m!6229832))

(declare-fun m!6231100 () Bool)

(assert (=> b!5176013 m!6231100))

(assert (=> b!5176013 m!6229740))

(assert (=> b!5176013 m!6231100))

(declare-fun m!6231102 () Bool)

(assert (=> b!5176013 m!6231102))

(assert (=> b!5176012 m!6229232))

(assert (=> b!5176012 m!6229744))

(assert (=> b!5176012 m!6229832))

(declare-fun m!6231104 () Bool)

(assert (=> b!5176012 m!6231104))

(assert (=> b!5175392 d!1671015))

(assert (=> b!5175392 d!1670425))

(declare-fun d!1671017 () Bool)

(assert (=> d!1671017 (= (tail!10172 (++!13171 lt!2131870 (tail!10172 lt!2131871))) (t!373434 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))

(assert (=> b!5175392 d!1671017))

(declare-fun d!1671019 () Bool)

(declare-fun lt!2132611 () Int)

(assert (=> d!1671019 (>= lt!2132611 0)))

(declare-fun e!3225192 () Int)

(assert (=> d!1671019 (= lt!2132611 e!3225192)))

(declare-fun c!891393 () Bool)

(assert (=> d!1671019 (= c!891393 ((_ is Nil!60157) lt!2132407))))

(assert (=> d!1671019 (= (size!39691 lt!2132407) lt!2132611)))

(declare-fun b!5176015 () Bool)

(assert (=> b!5176015 (= e!3225192 0)))

(declare-fun b!5176016 () Bool)

(assert (=> b!5176016 (= e!3225192 (+ 1 (size!39691 (t!373434 lt!2132407))))))

(assert (= (and d!1671019 c!891393) b!5176015))

(assert (= (and d!1671019 (not c!891393)) b!5176016))

(declare-fun m!6231106 () Bool)

(assert (=> b!5176016 m!6231106))

(assert (=> b!5175510 d!1671019))

(assert (=> b!5175510 d!1670171))

(declare-fun d!1671021 () Bool)

(declare-fun lt!2132612 () Int)

(assert (=> d!1671021 (>= lt!2132612 0)))

(declare-fun e!3225193 () Int)

(assert (=> d!1671021 (= lt!2132612 e!3225193)))

(declare-fun c!891394 () Bool)

(assert (=> d!1671021 (= c!891394 ((_ is Nil!60157) lt!2131871))))

(assert (=> d!1671021 (= (size!39691 lt!2131871) lt!2132612)))

(declare-fun b!5176017 () Bool)

(assert (=> b!5176017 (= e!3225193 0)))

(declare-fun b!5176018 () Bool)

(assert (=> b!5176018 (= e!3225193 (+ 1 (size!39691 (t!373434 lt!2131871))))))

(assert (= (and d!1671021 c!891394) b!5176017))

(assert (= (and d!1671021 (not c!891394)) b!5176018))

(declare-fun m!6231108 () Bool)

(assert (=> b!5176018 m!6231108))

(assert (=> b!5175510 d!1671021))

(assert (=> d!1670339 d!1670333))

(declare-fun d!1671023 () Bool)

(assert (=> d!1671023 (isPrefix!5788 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157)) input!5817)))

(assert (=> d!1671023 true))

(declare-fun _$65!1827 () Unit!151938)

(assert (=> d!1671023 (= (choose!38410 lt!2131870 input!5817) _$65!1827)))

(declare-fun bs!1204387 () Bool)

(assert (= bs!1204387 d!1671023))

(assert (=> bs!1204387 m!6229002))

(assert (=> bs!1204387 m!6229002))

(assert (=> bs!1204387 m!6229018))

(assert (=> bs!1204387 m!6229016))

(assert (=> bs!1204387 m!6229016))

(assert (=> bs!1204387 m!6229022))

(assert (=> d!1670339 d!1671023))

(assert (=> d!1670339 d!1670327))

(assert (=> d!1670339 d!1670331))

(assert (=> d!1670339 d!1670325))

(assert (=> d!1670339 d!1670241))

(declare-fun d!1671025 () Bool)

(declare-fun lt!2132613 () Int)

(assert (=> d!1671025 (>= lt!2132613 0)))

(declare-fun e!3225194 () Int)

(assert (=> d!1671025 (= lt!2132613 e!3225194)))

(declare-fun c!891395 () Bool)

(assert (=> d!1671025 (= c!891395 ((_ is Nil!60157) (t!373434 (_1!35233 lt!2131947))))))

(assert (=> d!1671025 (= (size!39691 (t!373434 (_1!35233 lt!2131947))) lt!2132613)))

(declare-fun b!5176019 () Bool)

(assert (=> b!5176019 (= e!3225194 0)))

(declare-fun b!5176020 () Bool)

(assert (=> b!5176020 (= e!3225194 (+ 1 (size!39691 (t!373434 (t!373434 (_1!35233 lt!2131947))))))))

(assert (= (and d!1671025 c!891395) b!5176019))

(assert (= (and d!1671025 (not c!891395)) b!5176020))

(declare-fun m!6231110 () Bool)

(assert (=> b!5176020 m!6231110))

(assert (=> b!5175279 d!1671025))

(declare-fun d!1671027 () Bool)

(assert (=> d!1671027 (= (head!11073 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))) (h!66605 (++!13171 lt!2131870 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 lt!2131870)) Nil!60157))))))

(assert (=> b!5175255 d!1671027))

(assert (=> b!5175255 d!1670365))

(declare-fun b!5176022 () Bool)

(declare-fun e!3225195 () List!60281)

(assert (=> b!5176022 (= e!3225195 (Cons!60157 (h!66605 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))) (++!13171 (t!373434 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))) lt!2131976)))))

(declare-fun lt!2132614 () List!60281)

(declare-fun b!5176024 () Bool)

(declare-fun e!3225196 () Bool)

(assert (=> b!5176024 (= e!3225196 (or (not (= lt!2131976 Nil!60157)) (= lt!2132614 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))))))))

(declare-fun d!1671029 () Bool)

(assert (=> d!1671029 e!3225196))

(declare-fun res!2199624 () Bool)

(assert (=> d!1671029 (=> (not res!2199624) (not e!3225196))))

(assert (=> d!1671029 (= res!2199624 (= (content!10659 lt!2132614) ((_ map or) (content!10659 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))) (content!10659 lt!2131976))))))

(assert (=> d!1671029 (= lt!2132614 e!3225195)))

(declare-fun c!891396 () Bool)

(assert (=> d!1671029 (= c!891396 ((_ is Nil!60157) (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))))))

(assert (=> d!1671029 (= (++!13171 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157))) lt!2131976) lt!2132614)))

(declare-fun b!5176023 () Bool)

(declare-fun res!2199623 () Bool)

(assert (=> b!5176023 (=> (not res!2199623) (not e!3225196))))

(assert (=> b!5176023 (= res!2199623 (= (size!39691 lt!2132614) (+ (size!39691 (t!373434 (++!13171 lt!2131870 (Cons!60157 lt!2131989 Nil!60157)))) (size!39691 lt!2131976))))))

(declare-fun b!5176021 () Bool)

(assert (=> b!5176021 (= e!3225195 lt!2131976)))

(assert (= (and d!1671029 c!891396) b!5176021))

(assert (= (and d!1671029 (not c!891396)) b!5176022))

(assert (= (and d!1671029 res!2199624) b!5176023))

(assert (= (and b!5176023 res!2199623) b!5176024))

(declare-fun m!6231112 () Bool)

(assert (=> b!5176022 m!6231112))

(declare-fun m!6231114 () Bool)

(assert (=> d!1671029 m!6231114))

(assert (=> d!1671029 m!6230942))

(assert (=> d!1671029 m!6229444))

(declare-fun m!6231116 () Bool)

(assert (=> b!5176023 m!6231116))

(assert (=> b!5176023 m!6230688))

(assert (=> b!5176023 m!6229450))

(assert (=> b!5175245 d!1671029))

(declare-fun d!1671031 () Bool)

(declare-fun lt!2132615 () Int)

(assert (=> d!1671031 (>= lt!2132615 0)))

(declare-fun e!3225197 () Int)

(assert (=> d!1671031 (= lt!2132615 e!3225197)))

(declare-fun c!891397 () Bool)

(assert (=> d!1671031 (= c!891397 ((_ is Nil!60157) (t!373434 (_1!35233 lt!2131974))))))

(assert (=> d!1671031 (= (size!39691 (t!373434 (_1!35233 lt!2131974))) lt!2132615)))

(declare-fun b!5176025 () Bool)

(assert (=> b!5176025 (= e!3225197 0)))

(declare-fun b!5176026 () Bool)

(assert (=> b!5176026 (= e!3225197 (+ 1 (size!39691 (t!373434 (t!373434 (_1!35233 lt!2131974))))))))

(assert (= (and d!1671031 c!891397) b!5176025))

(assert (= (and d!1671031 (not c!891397)) b!5176026))

(declare-fun m!6231118 () Bool)

(assert (=> b!5176026 m!6231118))

(assert (=> b!5175373 d!1671031))

(assert (=> bm!363554 d!1670899))

(declare-fun d!1671033 () Bool)

(assert (=> d!1671033 (= (flatMap!458 z!4581 lambda!258471) (choose!38413 z!4581 lambda!258471))))

(declare-fun bs!1204388 () Bool)

(assert (= bs!1204388 d!1671033))

(declare-fun m!6231120 () Bool)

(assert (=> bs!1204388 m!6231120))

(assert (=> d!1670367 d!1671033))

(declare-fun d!1671035 () Bool)

(declare-fun lt!2132616 () Bool)

(assert (=> d!1671035 (= lt!2132616 (exists!1937 (toList!8456 lt!2131878) lambda!258480))))

(assert (=> d!1671035 (= lt!2132616 (choose!38416 lt!2131878 lambda!258480))))

(assert (=> d!1671035 (= (exists!1936 lt!2131878 lambda!258480) lt!2132616)))

(declare-fun bs!1204389 () Bool)

(assert (= bs!1204389 d!1671035))

(assert (=> bs!1204389 m!6229972))

(assert (=> bs!1204389 m!6229972))

(declare-fun m!6231122 () Bool)

(assert (=> bs!1204389 m!6231122))

(declare-fun m!6231124 () Bool)

(assert (=> bs!1204389 m!6231124))

(assert (=> d!1670427 d!1671035))

(declare-fun d!1671037 () Bool)

(declare-fun lt!2132617 () Int)

(assert (=> d!1671037 (>= lt!2132617 0)))

(declare-fun e!3225198 () Int)

(assert (=> d!1671037 (= lt!2132617 e!3225198)))

(declare-fun c!891398 () Bool)

(assert (=> d!1671037 (= c!891398 ((_ is Nil!60157) (_1!35233 lt!2132242)))))

(assert (=> d!1671037 (= (size!39691 (_1!35233 lt!2132242)) lt!2132617)))

(declare-fun b!5176027 () Bool)

(assert (=> b!5176027 (= e!3225198 0)))

(declare-fun b!5176028 () Bool)

(assert (=> b!5176028 (= e!3225198 (+ 1 (size!39691 (t!373434 (_1!35233 lt!2132242)))))))

(assert (= (and d!1671037 c!891398) b!5176027))

(assert (= (and d!1671037 (not c!891398)) b!5176028))

(declare-fun m!6231126 () Bool)

(assert (=> b!5176028 m!6231126))

(assert (=> b!5175289 d!1671037))

(assert (=> b!5175289 d!1670749))

(declare-fun b!5176030 () Bool)

(declare-fun e!3225199 () List!60281)

(assert (=> b!5176030 (= e!3225199 (Cons!60157 (h!66605 (t!373434 (_1!35233 lt!2131947))) (++!13171 (t!373434 (t!373434 (_1!35233 lt!2131947))) (_2!35233 lt!2131947))))))

(declare-fun b!5176032 () Bool)

(declare-fun e!3225200 () Bool)

(declare-fun lt!2132618 () List!60281)

(assert (=> b!5176032 (= e!3225200 (or (not (= (_2!35233 lt!2131947) Nil!60157)) (= lt!2132618 (t!373434 (_1!35233 lt!2131947)))))))

(declare-fun d!1671039 () Bool)

(assert (=> d!1671039 e!3225200))

(declare-fun res!2199626 () Bool)

(assert (=> d!1671039 (=> (not res!2199626) (not e!3225200))))

(assert (=> d!1671039 (= res!2199626 (= (content!10659 lt!2132618) ((_ map or) (content!10659 (t!373434 (_1!35233 lt!2131947))) (content!10659 (_2!35233 lt!2131947)))))))

(assert (=> d!1671039 (= lt!2132618 e!3225199)))

(declare-fun c!891399 () Bool)

(assert (=> d!1671039 (= c!891399 ((_ is Nil!60157) (t!373434 (_1!35233 lt!2131947))))))

(assert (=> d!1671039 (= (++!13171 (t!373434 (_1!35233 lt!2131947)) (_2!35233 lt!2131947)) lt!2132618)))

(declare-fun b!5176031 () Bool)

(declare-fun res!2199625 () Bool)

(assert (=> b!5176031 (=> (not res!2199625) (not e!3225200))))

(assert (=> b!5176031 (= res!2199625 (= (size!39691 lt!2132618) (+ (size!39691 (t!373434 (_1!35233 lt!2131947))) (size!39691 (_2!35233 lt!2131947)))))))

(declare-fun b!5176029 () Bool)

(assert (=> b!5176029 (= e!3225199 (_2!35233 lt!2131947))))

(assert (= (and d!1671039 c!891399) b!5176029))

(assert (= (and d!1671039 (not c!891399)) b!5176030))

(assert (= (and d!1671039 res!2199626) b!5176031))

(assert (= (and b!5176031 res!2199625) b!5176032))

(declare-fun m!6231128 () Bool)

(assert (=> b!5176030 m!6231128))

(declare-fun m!6231130 () Bool)

(assert (=> d!1671039 m!6231130))

(assert (=> d!1671039 m!6230818))

(assert (=> d!1671039 m!6230076))

(declare-fun m!6231132 () Bool)

(assert (=> b!5176031 m!6231132))

(assert (=> b!5176031 m!6229518))

(assert (=> b!5176031 m!6230080))

(assert (=> b!5175505 d!1671039))

(assert (=> b!5175477 d!1670159))

(declare-fun d!1671041 () Bool)

(declare-fun lt!2132619 () Int)

(assert (=> d!1671041 (>= lt!2132619 0)))

(declare-fun e!3225201 () Int)

(assert (=> d!1671041 (= lt!2132619 e!3225201)))

(declare-fun c!891400 () Bool)

(assert (=> d!1671041 (= c!891400 ((_ is Nil!60157) (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(assert (=> d!1671041 (= (size!39691 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) lt!2132619)))

(declare-fun b!5176033 () Bool)

(assert (=> b!5176033 (= e!3225201 0)))

(declare-fun b!5176034 () Bool)

(assert (=> b!5176034 (= e!3225201 (+ 1 (size!39691 (t!373434 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))))

(assert (= (and d!1671041 c!891400) b!5176033))

(assert (= (and d!1671041 (not c!891400)) b!5176034))

(declare-fun m!6231134 () Bool)

(assert (=> b!5176034 m!6231134))

(assert (=> b!5175477 d!1671041))

(assert (=> b!5175311 d!1670605))

(declare-fun d!1671043 () Bool)

(declare-fun c!891401 () Bool)

(assert (=> d!1671043 (= c!891401 ((_ is Nil!60157) (t!373434 lt!2132138)))))

(declare-fun e!3225202 () (InoxSet C!29580))

(assert (=> d!1671043 (= (content!10659 (t!373434 lt!2132138)) e!3225202)))

(declare-fun b!5176035 () Bool)

(assert (=> b!5176035 (= e!3225202 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176036 () Bool)

(assert (=> b!5176036 (= e!3225202 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (t!373434 lt!2132138)) true) (content!10659 (t!373434 (t!373434 lt!2132138)))))))

(assert (= (and d!1671043 c!891401) b!5176035))

(assert (= (and d!1671043 (not c!891401)) b!5176036))

(declare-fun m!6231136 () Bool)

(assert (=> b!5176036 m!6231136))

(declare-fun m!6231138 () Bool)

(assert (=> b!5176036 m!6231138))

(assert (=> b!5175305 d!1671043))

(assert (=> bm!363560 d!1670229))

(declare-fun bs!1204390 () Bool)

(declare-fun d!1671045 () Bool)

(assert (= bs!1204390 (and d!1671045 d!1670651)))

(declare-fun lambda!258540 () Int)

(assert (=> bs!1204390 (= (= call!363565 (h!66605 (t!373434 testedP!294))) (= lambda!258540 lambda!258511))))

(declare-fun bs!1204391 () Bool)

(assert (= bs!1204391 (and d!1671045 d!1670435)))

(assert (=> bs!1204391 (= (= call!363565 (h!66605 testedP!294)) (= lambda!258540 lambda!258481))))

(declare-fun bs!1204392 () Bool)

(assert (= bs!1204392 (and d!1671045 d!1670675)))

(assert (=> bs!1204392 (= (= call!363565 (h!66605 (++!13171 testedP!294 (Cons!60157 lt!2131872 Nil!60157)))) (= lambda!258540 lambda!258513))))

(declare-fun bs!1204393 () Bool)

(assert (= bs!1204393 (and d!1671045 d!1670555)))

(assert (=> bs!1204393 (= (= call!363565 (h!66605 lt!2131870)) (= lambda!258540 lambda!258501))))

(declare-fun bs!1204394 () Bool)

(assert (= bs!1204394 (and d!1671045 d!1670367)))

(assert (=> bs!1204394 (= (= call!363565 call!363495) (= lambda!258540 lambda!258471))))

(declare-fun bs!1204395 () Bool)

(assert (= bs!1204395 (and d!1671045 d!1670179)))

(assert (=> bs!1204395 (= (= call!363565 lt!2131872) (= lambda!258540 lambda!258448))))

(declare-fun bs!1204396 () Bool)

(assert (= bs!1204396 (and d!1671045 d!1670717)))

(assert (=> bs!1204396 (= (= call!363565 call!363557) (= lambda!258540 lambda!258517))))

(declare-fun bs!1204397 () Bool)

(assert (= bs!1204397 (and d!1671045 d!1670945)))

(assert (=> bs!1204397 (= (= call!363565 (h!66605 (t!373434 lt!2131870))) (= lambda!258540 lambda!258535))))

(declare-fun bs!1204398 () Bool)

(assert (= bs!1204398 (and d!1671045 d!1670569)))

(assert (=> bs!1204398 (= (= call!363565 call!363503) (= lambda!258540 lambda!258505))))

(assert (=> d!1671045 true))

(assert (=> d!1671045 (= (derivationStepZipper!1001 call!363502 call!363565) (flatMap!458 call!363502 lambda!258540))))

(declare-fun bs!1204399 () Bool)

(assert (= bs!1204399 d!1671045))

(declare-fun m!6231140 () Bool)

(assert (=> bs!1204399 m!6231140))

(assert (=> bm!363553 d!1671045))

(declare-fun d!1671047 () Bool)

(declare-fun e!3225211 () Bool)

(assert (=> d!1671047 e!3225211))

(declare-fun res!2199633 () Bool)

(assert (=> d!1671047 (=> res!2199633 e!3225211)))

(declare-fun lt!2132620 () Bool)

(assert (=> d!1671047 (= res!2199633 (not lt!2132620))))

(declare-fun e!3225212 () Bool)

(assert (=> d!1671047 (= lt!2132620 e!3225212)))

(declare-fun res!2199632 () Bool)

(assert (=> d!1671047 (=> res!2199632 e!3225212)))

(assert (=> d!1671047 (= res!2199632 ((_ is Nil!60157) (tail!10172 (tail!10172 testedP!294))))))

(assert (=> d!1671047 (= (isPrefix!5788 (tail!10172 (tail!10172 testedP!294)) (tail!10172 (tail!10172 input!5817))) lt!2132620)))

(declare-fun b!5176049 () Bool)

(assert (=> b!5176049 (= e!3225211 (>= (size!39691 (tail!10172 (tail!10172 input!5817))) (size!39691 (tail!10172 (tail!10172 testedP!294)))))))

(declare-fun b!5176046 () Bool)

(declare-fun e!3225210 () Bool)

(assert (=> b!5176046 (= e!3225212 e!3225210)))

(declare-fun res!2199634 () Bool)

(assert (=> b!5176046 (=> (not res!2199634) (not e!3225210))))

(assert (=> b!5176046 (= res!2199634 (not ((_ is Nil!60157) (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5176048 () Bool)

(assert (=> b!5176048 (= e!3225210 (isPrefix!5788 (tail!10172 (tail!10172 (tail!10172 testedP!294))) (tail!10172 (tail!10172 (tail!10172 input!5817)))))))

(declare-fun b!5176047 () Bool)

(declare-fun res!2199635 () Bool)

(assert (=> b!5176047 (=> (not res!2199635) (not e!3225210))))

(assert (=> b!5176047 (= res!2199635 (= (head!11073 (tail!10172 (tail!10172 testedP!294))) (head!11073 (tail!10172 (tail!10172 input!5817)))))))

(assert (= (and d!1671047 (not res!2199632)) b!5176046))

(assert (= (and b!5176046 res!2199634) b!5176047))

(assert (= (and b!5176047 res!2199635) b!5176048))

(assert (= (and d!1671047 (not res!2199633)) b!5176049))

(assert (=> b!5176049 m!6229500))

(assert (=> b!5176049 m!6230322))

(assert (=> b!5176049 m!6230046))

(declare-fun m!6231148 () Bool)

(assert (=> b!5176049 m!6231148))

(assert (=> b!5176048 m!6230046))

(declare-fun m!6231150 () Bool)

(assert (=> b!5176048 m!6231150))

(assert (=> b!5176048 m!6229500))

(assert (=> b!5176048 m!6230324))

(assert (=> b!5176048 m!6231150))

(assert (=> b!5176048 m!6230324))

(declare-fun m!6231152 () Bool)

(assert (=> b!5176048 m!6231152))

(assert (=> b!5176047 m!6230046))

(declare-fun m!6231154 () Bool)

(assert (=> b!5176047 m!6231154))

(assert (=> b!5176047 m!6229500))

(assert (=> b!5176047 m!6230356))

(assert (=> b!5175498 d!1671047))

(declare-fun d!1671051 () Bool)

(assert (=> d!1671051 (= (tail!10172 (tail!10172 testedP!294)) (t!373434 (tail!10172 testedP!294)))))

(assert (=> b!5175498 d!1671051))

(assert (=> b!5175498 d!1670665))

(assert (=> b!5175391 d!1670543))

(declare-fun d!1671053 () Bool)

(assert (=> d!1671053 (= (head!11073 (++!13171 lt!2131870 (tail!10172 lt!2131871))) (h!66605 (++!13171 lt!2131870 (tail!10172 lt!2131871))))))

(assert (=> b!5175391 d!1671053))

(declare-fun d!1671055 () Bool)

(assert (=> d!1671055 (= (isEmpty!32209 (getLanguageWitness!1013 z!4581)) (not ((_ is Some!14841) (getLanguageWitness!1013 z!4581))))))

(assert (=> d!1670557 d!1671055))

(declare-fun bs!1204403 () Bool)

(declare-fun d!1671057 () Bool)

(assert (= bs!1204403 (and d!1671057 d!1670687)))

(declare-fun lambda!258542 () Int)

(assert (=> bs!1204403 (not (= lambda!258542 lambda!258516))))

(declare-fun bs!1204405 () Bool)

(assert (= bs!1204405 (and d!1671057 b!5175502)))

(assert (=> bs!1204405 (= lambda!258542 lambda!258503)))

(declare-fun bs!1204406 () Bool)

(assert (= bs!1204406 (and d!1671057 d!1670639)))

(assert (=> bs!1204406 (not (= lambda!258542 lambda!258510))))

(declare-fun bs!1204407 () Bool)

(assert (= bs!1204407 (and d!1671057 d!1670785)))

(assert (=> bs!1204407 (not (= lambda!258542 lambda!258521))))

(declare-fun bs!1204409 () Bool)

(assert (= bs!1204409 (and d!1671057 d!1670237)))

(assert (=> bs!1204409 (not (= lambda!258542 lambda!258451))))

(declare-fun bs!1204410 () Bool)

(assert (= bs!1204410 (and d!1671057 b!5175503)))

(assert (=> bs!1204410 (= lambda!258542 lambda!258504)))

(declare-fun bs!1204412 () Bool)

(assert (= bs!1204412 (and d!1671057 d!1670861)))

(assert (=> bs!1204412 (not (= lambda!258542 lambda!258534))))

(declare-fun bs!1204413 () Bool)

(assert (= bs!1204413 (and d!1671057 d!1670991)))

(assert (=> bs!1204413 (not (= lambda!258542 lambda!258539))))

(declare-fun bs!1204415 () Bool)

(assert (= bs!1204415 (and d!1671057 b!5175436)))

(assert (=> bs!1204415 (= lambda!258542 lambda!258499)))

(declare-fun bs!1204416 () Bool)

(assert (= bs!1204416 (and d!1671057 d!1670427)))

(assert (=> bs!1204416 (not (= lambda!258542 lambda!258480))))

(declare-fun bs!1204418 () Bool)

(assert (= bs!1204418 (and d!1671057 d!1670557)))

(assert (=> bs!1204418 (not (= lambda!258542 lambda!258502))))

(declare-fun bs!1204419 () Bool)

(assert (= bs!1204419 (and d!1671057 b!5175779)))

(assert (=> bs!1204419 (= lambda!258542 lambda!258523)))

(declare-fun bs!1204421 () Bool)

(assert (= bs!1204421 (and d!1671057 b!5175955)))

(assert (=> bs!1204421 (= lambda!258542 lambda!258537)))

(declare-fun bs!1204422 () Bool)

(assert (= bs!1204422 (and d!1671057 d!1670729)))

(assert (=> bs!1204422 (not (= lambda!258542 lambda!258518))))

(declare-fun bs!1204423 () Bool)

(assert (= bs!1204423 (and d!1671057 d!1670969)))

(assert (=> bs!1204423 (not (= lambda!258542 lambda!258536))))

(declare-fun bs!1204424 () Bool)

(assert (= bs!1204424 (and d!1671057 d!1670661)))

(assert (=> bs!1204424 (not (= lambda!258542 lambda!258512))))

(declare-fun bs!1204426 () Bool)

(assert (= bs!1204426 (and d!1671057 b!5175956)))

(assert (=> bs!1204426 (= lambda!258542 lambda!258538)))

(declare-fun bs!1204427 () Bool)

(assert (= bs!1204427 (and d!1671057 d!1670625)))

(assert (=> bs!1204427 (not (= lambda!258542 lambda!258509))))

(declare-fun bs!1204428 () Bool)

(assert (= bs!1204428 (and d!1671057 d!1670469)))

(assert (=> bs!1204428 (not (= lambda!258542 lambda!258498))))

(declare-fun bs!1204429 () Bool)

(assert (= bs!1204429 (and d!1671057 b!5175780)))

(assert (=> bs!1204429 (= lambda!258542 lambda!258524)))

(declare-fun bs!1204430 () Bool)

(assert (= bs!1204430 (and d!1671057 b!5175437)))

(assert (=> bs!1204430 (= lambda!258542 lambda!258500)))

(declare-fun bs!1204432 () Bool)

(assert (= bs!1204432 (and d!1671057 d!1670819)))

(assert (=> bs!1204432 (= lambda!258542 lambda!258531)))

(declare-fun lt!2132621 () Option!14842)

(assert (=> d!1671057 (= (isDefined!11546 lt!2132621) (exists!1936 z!4581 lambda!258542))))

(declare-fun e!3225213 () Option!14842)

(assert (=> d!1671057 (= lt!2132621 e!3225213)))

(declare-fun c!891404 () Bool)

(assert (=> d!1671057 (= c!891404 (exists!1936 z!4581 lambda!258542))))

(assert (=> d!1671057 (= (getLanguageWitness!1013 z!4581) lt!2132621)))

(declare-fun b!5176050 () Bool)

(assert (=> b!5176050 (= e!3225213 (getLanguageWitness!1015 (getWitness!855 z!4581 lambda!258542)))))

(declare-fun b!5176051 () Bool)

(assert (=> b!5176051 (= e!3225213 None!14841)))

(assert (= (and d!1671057 c!891404) b!5176050))

(assert (= (and d!1671057 (not c!891404)) b!5176051))

(declare-fun m!6231160 () Bool)

(assert (=> d!1671057 m!6231160))

(declare-fun m!6231162 () Bool)

(assert (=> d!1671057 m!6231162))

(assert (=> d!1671057 m!6231162))

(declare-fun m!6231164 () Bool)

(assert (=> b!5176050 m!6231164))

(assert (=> b!5176050 m!6231164))

(declare-fun m!6231166 () Bool)

(assert (=> b!5176050 m!6231166))

(assert (=> d!1670557 d!1671057))

(declare-fun d!1671063 () Bool)

(declare-fun lt!2132623 () Bool)

(assert (=> d!1671063 (= lt!2132623 (forall!14158 (toList!8456 z!4581) lambda!258502))))

(assert (=> d!1671063 (= lt!2132623 (choose!38429 z!4581 lambda!258502))))

(assert (=> d!1671063 (= (forall!14157 z!4581 lambda!258502) lt!2132623)))

(declare-fun bs!1204433 () Bool)

(assert (= bs!1204433 d!1671063))

(assert (=> bs!1204433 m!6229488))

(assert (=> bs!1204433 m!6229488))

(declare-fun m!6231170 () Bool)

(assert (=> bs!1204433 m!6231170))

(declare-fun m!6231174 () Bool)

(assert (=> bs!1204433 m!6231174))

(assert (=> d!1670557 d!1671063))

(declare-fun d!1671065 () Bool)

(assert (=> d!1671065 (= input!5817 lt!2131958)))

(declare-fun lt!2132624 () Unit!151938)

(assert (=> d!1671065 (= lt!2132624 (choose!38409 input!5817 lt!2131958 input!5817))))

(assert (=> d!1671065 (isPrefix!5788 input!5817 input!5817)))

(assert (=> d!1671065 (= (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131958 input!5817) lt!2132624)))

(declare-fun bs!1204434 () Bool)

(assert (= bs!1204434 d!1671065))

(declare-fun m!6231182 () Bool)

(assert (=> bs!1204434 m!6231182))

(assert (=> bs!1204434 m!6228932))

(assert (=> bm!363547 d!1671065))

(declare-fun d!1671069 () Bool)

(declare-fun lt!2132626 () Int)

(assert (=> d!1671069 (>= lt!2132626 0)))

(declare-fun e!3225217 () Int)

(assert (=> d!1671069 (= lt!2132626 e!3225217)))

(declare-fun c!891407 () Bool)

(assert (=> d!1671069 (= c!891407 ((_ is Nil!60157) (t!373434 (t!373434 lt!2131870))))))

(assert (=> d!1671069 (= (size!39691 (t!373434 (t!373434 lt!2131870))) lt!2132626)))

(declare-fun b!5176058 () Bool)

(assert (=> b!5176058 (= e!3225217 0)))

(declare-fun b!5176059 () Bool)

(assert (=> b!5176059 (= e!3225217 (+ 1 (size!39691 (t!373434 (t!373434 (t!373434 lt!2131870))))))))

(assert (= (and d!1671069 c!891407) b!5176058))

(assert (= (and d!1671069 (not c!891407)) b!5176059))

(declare-fun m!6231184 () Bool)

(assert (=> b!5176059 m!6231184))

(assert (=> b!5175269 d!1671069))

(assert (=> bm!363552 d!1670229))

(declare-fun b!5176061 () Bool)

(declare-fun e!3225218 () List!60281)

(assert (=> b!5176061 (= e!3225218 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) lt!2132211)))))

(declare-fun b!5176063 () Bool)

(declare-fun lt!2132627 () List!60281)

(declare-fun e!3225219 () Bool)

(assert (=> b!5176063 (= e!3225219 (or (not (= lt!2132211 Nil!60157)) (= lt!2132627 (t!373434 testedP!294))))))

(declare-fun d!1671071 () Bool)

(assert (=> d!1671071 e!3225219))

(declare-fun res!2199639 () Bool)

(assert (=> d!1671071 (=> (not res!2199639) (not e!3225219))))

(assert (=> d!1671071 (= res!2199639 (= (content!10659 lt!2132627) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 lt!2132211))))))

(assert (=> d!1671071 (= lt!2132627 e!3225218)))

(declare-fun c!891408 () Bool)

(assert (=> d!1671071 (= c!891408 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1671071 (= (++!13171 (t!373434 testedP!294) lt!2132211) lt!2132627)))

(declare-fun b!5176062 () Bool)

(declare-fun res!2199638 () Bool)

(assert (=> b!5176062 (=> (not res!2199638) (not e!3225219))))

(assert (=> b!5176062 (= res!2199638 (= (size!39691 lt!2132627) (+ (size!39691 (t!373434 testedP!294)) (size!39691 lt!2132211))))))

(declare-fun b!5176060 () Bool)

(assert (=> b!5176060 (= e!3225218 lt!2132211)))

(assert (= (and d!1671071 c!891408) b!5176060))

(assert (= (and d!1671071 (not c!891408)) b!5176061))

(assert (= (and d!1671071 res!2199639) b!5176062))

(assert (= (and b!5176062 res!2199638) b!5176063))

(declare-fun m!6231188 () Bool)

(assert (=> b!5176061 m!6231188))

(declare-fun m!6231190 () Bool)

(assert (=> d!1671071 m!6231190))

(assert (=> d!1671071 m!6229606))

(declare-fun m!6231192 () Bool)

(assert (=> d!1671071 m!6231192))

(declare-fun m!6231194 () Bool)

(assert (=> b!5176062 m!6231194))

(assert (=> b!5176062 m!6228998))

(declare-fun m!6231196 () Bool)

(assert (=> b!5176062 m!6231196))

(assert (=> d!1670347 d!1671071))

(assert (=> d!1670347 d!1670589))

(assert (=> d!1670347 d!1670369))

(assert (=> bm!363559 d!1670227))

(declare-fun d!1671075 () Bool)

(declare-fun lt!2132629 () Int)

(assert (=> d!1671075 (>= lt!2132629 0)))

(declare-fun e!3225221 () Int)

(assert (=> d!1671075 (= lt!2132629 e!3225221)))

(declare-fun c!891410 () Bool)

(assert (=> d!1671075 (= c!891410 ((_ is Nil!60157) (t!373434 (t!373434 testedP!294))))))

(assert (=> d!1671075 (= (size!39691 (t!373434 (t!373434 testedP!294))) lt!2132629)))

(declare-fun b!5176066 () Bool)

(assert (=> b!5176066 (= e!3225221 0)))

(declare-fun b!5176067 () Bool)

(assert (=> b!5176067 (= e!3225221 (+ 1 (size!39691 (t!373434 (t!373434 (t!373434 testedP!294))))))))

(assert (= (and d!1671075 c!891410) b!5176066))

(assert (= (and d!1671075 (not c!891410)) b!5176067))

(declare-fun m!6231200 () Bool)

(assert (=> b!5176067 m!6231200))

(assert (=> b!5175277 d!1671075))

(assert (=> d!1670361 d!1670359))

(assert (=> d!1670361 d!1670233))

(assert (=> d!1670361 d!1670179))

(declare-fun d!1671079 () Bool)

(declare-fun lt!2132631 () Int)

(assert (=> d!1671079 (>= lt!2132631 0)))

(declare-fun e!3225225 () Int)

(assert (=> d!1671079 (= lt!2132631 e!3225225)))

(declare-fun c!891411 () Bool)

(assert (=> d!1671079 (= c!891411 ((_ is Nil!60157) lt!2132274))))

(assert (=> d!1671079 (= (size!39691 lt!2132274) lt!2132631)))

(declare-fun b!5176072 () Bool)

(assert (=> b!5176072 (= e!3225225 0)))

(declare-fun b!5176073 () Bool)

(assert (=> b!5176073 (= e!3225225 (+ 1 (size!39691 (t!373434 lt!2132274))))))

(assert (= (and d!1671079 c!891411) b!5176072))

(assert (= (and d!1671079 (not c!891411)) b!5176073))

(declare-fun m!6231202 () Bool)

(assert (=> b!5176073 m!6231202))

(assert (=> b!5175330 d!1671079))

(assert (=> b!5175330 d!1670171))

(declare-fun d!1671081 () Bool)

(declare-fun lt!2132632 () Int)

(assert (=> d!1671081 (>= lt!2132632 0)))

(declare-fun e!3225226 () Int)

(assert (=> d!1671081 (= lt!2132632 e!3225226)))

(declare-fun c!891412 () Bool)

(assert (=> d!1671081 (= c!891412 ((_ is Nil!60157) lt!2131886))))

(assert (=> d!1671081 (= (size!39691 lt!2131886) lt!2132632)))

(declare-fun b!5176074 () Bool)

(assert (=> b!5176074 (= e!3225226 0)))

(declare-fun b!5176075 () Bool)

(assert (=> b!5176075 (= e!3225226 (+ 1 (size!39691 (t!373434 lt!2131886))))))

(assert (= (and d!1671081 c!891412) b!5176074))

(assert (= (and d!1671081 (not c!891412)) b!5176075))

(declare-fun m!6231204 () Bool)

(assert (=> b!5176075 m!6231204))

(assert (=> b!5175330 d!1671081))

(declare-fun d!1671083 () Bool)

(assert (=> d!1671083 (= input!5817 lt!2131870)))

(assert (=> d!1671083 true))

(declare-fun _$60!980 () Unit!151938)

(assert (=> d!1671083 (= (choose!38409 input!5817 lt!2131870 input!5817) _$60!980)))

(assert (=> d!1670545 d!1671083))

(assert (=> d!1670545 d!1670229))

(declare-fun d!1671085 () Bool)

(declare-fun c!891413 () Bool)

(assert (=> d!1671085 (= c!891413 ((_ is Nil!60157) lt!2132414))))

(declare-fun e!3225227 () (InoxSet C!29580))

(assert (=> d!1671085 (= (content!10659 lt!2132414) e!3225227)))

(declare-fun b!5176076 () Bool)

(assert (=> b!5176076 (= e!3225227 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176077 () Bool)

(assert (=> b!5176077 (= e!3225227 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132414) true) (content!10659 (t!373434 lt!2132414))))))

(assert (= (and d!1671085 c!891413) b!5176076))

(assert (= (and d!1671085 (not c!891413)) b!5176077))

(declare-fun m!6231206 () Bool)

(assert (=> b!5176077 m!6231206))

(declare-fun m!6231208 () Bool)

(assert (=> b!5176077 m!6231208))

(assert (=> d!1670577 d!1671085))

(assert (=> d!1670577 d!1670385))

(declare-fun d!1671087 () Bool)

(declare-fun c!891414 () Bool)

(assert (=> d!1671087 (= c!891414 ((_ is Nil!60157) (Cons!60157 lt!2131962 Nil!60157)))))

(declare-fun e!3225228 () (InoxSet C!29580))

(assert (=> d!1671087 (= (content!10659 (Cons!60157 lt!2131962 Nil!60157)) e!3225228)))

(declare-fun b!5176078 () Bool)

(assert (=> b!5176078 (= e!3225228 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176079 () Bool)

(assert (=> b!5176079 (= e!3225228 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 lt!2131962 Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 lt!2131962 Nil!60157)))))))

(assert (= (and d!1671087 c!891414) b!5176078))

(assert (= (and d!1671087 (not c!891414)) b!5176079))

(declare-fun m!6231212 () Bool)

(assert (=> b!5176079 m!6231212))

(declare-fun m!6231214 () Bool)

(assert (=> b!5176079 m!6231214))

(assert (=> d!1670577 d!1671087))

(declare-fun d!1671089 () Bool)

(declare-fun e!3225230 () Bool)

(assert (=> d!1671089 e!3225230))

(declare-fun res!2199645 () Bool)

(assert (=> d!1671089 (=> res!2199645 e!3225230)))

(declare-fun lt!2132633 () Bool)

(assert (=> d!1671089 (= res!2199645 (not lt!2132633))))

(declare-fun e!3225231 () Bool)

(assert (=> d!1671089 (= lt!2132633 e!3225231)))

(declare-fun res!2199644 () Bool)

(assert (=> d!1671089 (=> res!2199644 e!3225231)))

(assert (=> d!1671089 (= res!2199644 ((_ is Nil!60157) (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))))))

(assert (=> d!1671089 (= (isPrefix!5788 (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) (tail!10172 input!5817)) lt!2132633)))

(declare-fun b!5176083 () Bool)

(assert (=> b!5176083 (= e!3225230 (>= (size!39691 (tail!10172 input!5817)) (size!39691 (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))))

(declare-fun b!5176080 () Bool)

(declare-fun e!3225229 () Bool)

(assert (=> b!5176080 (= e!3225231 e!3225229)))

(declare-fun res!2199646 () Bool)

(assert (=> b!5176080 (=> (not res!2199646) (not e!3225229))))

(assert (=> b!5176080 (= res!2199646 (not ((_ is Nil!60157) (tail!10172 input!5817))))))

(declare-fun b!5176082 () Bool)

(assert (=> b!5176082 (= e!3225229 (isPrefix!5788 (tail!10172 (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))) (tail!10172 (tail!10172 input!5817))))))

(declare-fun b!5176081 () Bool)

(declare-fun res!2199647 () Bool)

(assert (=> b!5176081 (=> (not res!2199647) (not e!3225229))))

(assert (=> b!5176081 (= res!2199647 (= (head!11073 (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157)))) (head!11073 (tail!10172 input!5817))))))

(assert (= (and d!1671089 (not res!2199644)) b!5176080))

(assert (= (and b!5176080 res!2199646) b!5176081))

(assert (= (and b!5176081 res!2199647) b!5176082))

(assert (= (and d!1671089 (not res!2199645)) b!5176083))

(assert (=> b!5176083 m!6228956))

(assert (=> b!5176083 m!6229498))

(assert (=> b!5176083 m!6230018))

(declare-fun m!6231216 () Bool)

(assert (=> b!5176083 m!6231216))

(assert (=> b!5176082 m!6230018))

(declare-fun m!6231218 () Bool)

(assert (=> b!5176082 m!6231218))

(assert (=> b!5176082 m!6228956))

(assert (=> b!5176082 m!6229500))

(assert (=> b!5176082 m!6231218))

(assert (=> b!5176082 m!6229500))

(declare-fun m!6231222 () Bool)

(assert (=> b!5176082 m!6231222))

(assert (=> b!5176081 m!6230018))

(declare-fun m!6231224 () Bool)

(assert (=> b!5176081 m!6231224))

(assert (=> b!5176081 m!6228956))

(assert (=> b!5176081 m!6229614))

(assert (=> b!5175476 d!1671089))

(declare-fun d!1671093 () Bool)

(assert (=> d!1671093 (= (tail!10172 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))) (t!373434 (++!13171 testedP!294 (Cons!60157 (head!11073 (getSuffix!3436 input!5817 testedP!294)) Nil!60157))))))

(assert (=> b!5175476 d!1671093))

(assert (=> b!5175476 d!1670349))

(assert (=> d!1670535 d!1670533))

(assert (=> d!1670535 d!1670541))

(assert (=> d!1670535 d!1670531))

(assert (=> d!1670535 d!1670163))

(declare-fun d!1671097 () Bool)

(declare-fun lt!2132634 () Int)

(assert (=> d!1671097 (>= lt!2132634 0)))

(declare-fun e!3225233 () Int)

(assert (=> d!1671097 (= lt!2132634 e!3225233)))

(declare-fun c!891416 () Bool)

(assert (=> d!1671097 (= c!891416 ((_ is Nil!60157) (++!13171 testedP!294 lt!2131871)))))

(assert (=> d!1671097 (= (size!39691 (++!13171 testedP!294 lt!2131871)) lt!2132634)))

(declare-fun b!5176086 () Bool)

(assert (=> b!5176086 (= e!3225233 0)))

(declare-fun b!5176087 () Bool)

(assert (=> b!5176087 (= e!3225233 (+ 1 (size!39691 (t!373434 (++!13171 testedP!294 lt!2131871)))))))

(assert (= (and d!1671097 c!891416) b!5176086))

(assert (= (and d!1671097 (not c!891416)) b!5176087))

(declare-fun m!6231228 () Bool)

(assert (=> b!5176087 m!6231228))

(assert (=> b!5175515 d!1671097))

(assert (=> b!5175515 d!1670171))

(declare-fun d!1671099 () Bool)

(assert (=> d!1671099 true))

(declare-fun setRes!32315 () Bool)

(assert (=> d!1671099 setRes!32315))

(declare-fun condSetEmpty!32315 () Bool)

(declare-fun res!2199650 () (InoxSet Context!8078))

(assert (=> d!1671099 (= condSetEmpty!32315 (= res!2199650 ((as const (Array Context!8078 Bool)) false)))))

(assert (=> d!1671099 (= (choose!38413 z!4581 lambda!258448) res!2199650)))

(declare-fun setIsEmpty!32315 () Bool)

(assert (=> setIsEmpty!32315 setRes!32315))

(declare-fun setElem!32315 () Context!8078)

(declare-fun setNonEmpty!32315 () Bool)

(declare-fun tp!1451981 () Bool)

(declare-fun e!3225236 () Bool)

(assert (=> setNonEmpty!32315 (= setRes!32315 (and tp!1451981 (inv!79884 setElem!32315) e!3225236))))

(declare-fun setRest!32315 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32315 (= res!2199650 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32315 true) setRest!32315))))

(declare-fun b!5176090 () Bool)

(declare-fun tp!1451980 () Bool)

(assert (=> b!5176090 (= e!3225236 tp!1451980)))

(assert (= (and d!1671099 condSetEmpty!32315) setIsEmpty!32315))

(assert (= (and d!1671099 (not condSetEmpty!32315)) setNonEmpty!32315))

(assert (= setNonEmpty!32315 b!5176090))

(declare-fun m!6231232 () Bool)

(assert (=> setNonEmpty!32315 m!6231232))

(assert (=> d!1670303 d!1671099))

(declare-fun d!1671105 () Bool)

(declare-fun lt!2132635 () Int)

(assert (=> d!1671105 (>= lt!2132635 0)))

(declare-fun e!3225237 () Int)

(assert (=> d!1671105 (= lt!2132635 e!3225237)))

(declare-fun c!891417 () Bool)

(assert (=> d!1671105 (= c!891417 ((_ is Nil!60157) lt!2132413))))

(assert (=> d!1671105 (= (size!39691 lt!2132413) lt!2132635)))

(declare-fun b!5176091 () Bool)

(assert (=> b!5176091 (= e!3225237 0)))

(declare-fun b!5176092 () Bool)

(assert (=> b!5176092 (= e!3225237 (+ 1 (size!39691 (t!373434 lt!2132413))))))

(assert (= (and d!1671105 c!891417) b!5176091))

(assert (= (and d!1671105 (not c!891417)) b!5176092))

(declare-fun m!6231234 () Bool)

(assert (=> b!5176092 m!6231234))

(assert (=> b!5175522 d!1671105))

(assert (=> b!5175522 d!1670171))

(declare-fun d!1671107 () Bool)

(declare-fun lt!2132636 () Int)

(assert (=> d!1671107 (>= lt!2132636 0)))

(declare-fun e!3225238 () Int)

(assert (=> d!1671107 (= lt!2132636 e!3225238)))

(declare-fun c!891418 () Bool)

(assert (=> d!1671107 (= c!891418 ((_ is Nil!60157) (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))

(assert (=> d!1671107 (= (size!39691 (Cons!60157 (head!11073 lt!2131871) Nil!60157)) lt!2132636)))

(declare-fun b!5176093 () Bool)

(assert (=> b!5176093 (= e!3225238 0)))

(declare-fun b!5176094 () Bool)

(assert (=> b!5176094 (= e!3225238 (+ 1 (size!39691 (t!373434 (Cons!60157 (head!11073 lt!2131871) Nil!60157)))))))

(assert (= (and d!1671107 c!891418) b!5176093))

(assert (= (and d!1671107 (not c!891418)) b!5176094))

(declare-fun m!6231236 () Bool)

(assert (=> b!5176094 m!6231236))

(assert (=> b!5175522 d!1671107))

(declare-fun b!5176096 () Bool)

(declare-fun e!3225239 () List!60281)

(assert (=> b!5176096 (= e!3225239 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) (Cons!60157 lt!2131962 Nil!60157))))))

(declare-fun lt!2132637 () List!60281)

(declare-fun e!3225240 () Bool)

(declare-fun b!5176098 () Bool)

(assert (=> b!5176098 (= e!3225240 (or (not (= (Cons!60157 lt!2131962 Nil!60157) Nil!60157)) (= lt!2132637 (t!373434 testedP!294))))))

(declare-fun d!1671109 () Bool)

(assert (=> d!1671109 e!3225240))

(declare-fun res!2199652 () Bool)

(assert (=> d!1671109 (=> (not res!2199652) (not e!3225240))))

(assert (=> d!1671109 (= res!2199652 (= (content!10659 lt!2132637) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 (Cons!60157 lt!2131962 Nil!60157)))))))

(assert (=> d!1671109 (= lt!2132637 e!3225239)))

(declare-fun c!891419 () Bool)

(assert (=> d!1671109 (= c!891419 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1671109 (= (++!13171 (t!373434 testedP!294) (Cons!60157 lt!2131962 Nil!60157)) lt!2132637)))

(declare-fun b!5176097 () Bool)

(declare-fun res!2199651 () Bool)

(assert (=> b!5176097 (=> (not res!2199651) (not e!3225240))))

(assert (=> b!5176097 (= res!2199651 (= (size!39691 lt!2132637) (+ (size!39691 (t!373434 testedP!294)) (size!39691 (Cons!60157 lt!2131962 Nil!60157)))))))

(declare-fun b!5176095 () Bool)

(assert (=> b!5176095 (= e!3225239 (Cons!60157 lt!2131962 Nil!60157))))

(assert (= (and d!1671109 c!891419) b!5176095))

(assert (= (and d!1671109 (not c!891419)) b!5176096))

(assert (= (and d!1671109 res!2199652) b!5176097))

(assert (= (and b!5176097 res!2199651) b!5176098))

(declare-fun m!6231238 () Bool)

(assert (=> b!5176096 m!6231238))

(declare-fun m!6231240 () Bool)

(assert (=> d!1671109 m!6231240))

(assert (=> d!1671109 m!6229606))

(assert (=> d!1671109 m!6230138))

(declare-fun m!6231242 () Bool)

(assert (=> b!5176097 m!6231242))

(assert (=> b!5176097 m!6228998))

(assert (=> b!5176097 m!6230142))

(assert (=> b!5175525 d!1671109))

(declare-fun b!5176100 () Bool)

(declare-fun e!3225241 () List!60281)

(assert (=> b!5176100 (= e!3225241 (Cons!60157 (h!66605 (t!373434 lt!2131870)) (++!13171 (t!373434 (t!373434 lt!2131870)) (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157))))))

(declare-fun lt!2132638 () List!60281)

(declare-fun e!3225242 () Bool)

(declare-fun b!5176102 () Bool)

(assert (=> b!5176102 (= e!3225242 (or (not (= (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157) Nil!60157)) (= lt!2132638 (t!373434 lt!2131870))))))

(declare-fun d!1671111 () Bool)

(assert (=> d!1671111 e!3225242))

(declare-fun res!2199654 () Bool)

(assert (=> d!1671111 (=> (not res!2199654) (not e!3225242))))

(assert (=> d!1671111 (= res!2199654 (= (content!10659 lt!2132638) ((_ map or) (content!10659 (t!373434 lt!2131870)) (content!10659 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(assert (=> d!1671111 (= lt!2132638 e!3225241)))

(declare-fun c!891420 () Bool)

(assert (=> d!1671111 (= c!891420 ((_ is Nil!60157) (t!373434 lt!2131870)))))

(assert (=> d!1671111 (= (++!13171 (t!373434 lt!2131870) (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)) lt!2132638)))

(declare-fun b!5176101 () Bool)

(declare-fun res!2199653 () Bool)

(assert (=> b!5176101 (=> (not res!2199653) (not e!3225242))))

(assert (=> b!5176101 (= res!2199653 (= (size!39691 lt!2132638) (+ (size!39691 (t!373434 lt!2131870)) (size!39691 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(declare-fun b!5176099 () Bool)

(assert (=> b!5176099 (= e!3225241 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157))))

(assert (= (and d!1671111 c!891420) b!5176099))

(assert (= (and d!1671111 (not c!891420)) b!5176100))

(assert (= (and d!1671111 res!2199654) b!5176101))

(assert (= (and b!5176101 res!2199653) b!5176102))

(declare-fun m!6231244 () Bool)

(assert (=> b!5176100 m!6231244))

(declare-fun m!6231246 () Bool)

(assert (=> d!1671111 m!6231246))

(assert (=> d!1671111 m!6230384))

(assert (=> d!1671111 m!6229480))

(declare-fun m!6231248 () Bool)

(assert (=> b!5176101 m!6231248))

(assert (=> b!5176101 m!6229250))

(assert (=> b!5176101 m!6229484))

(assert (=> b!5175259 d!1671111))

(declare-fun d!1671113 () Bool)

(assert (=> d!1671113 (= (flatMap!458 baseZ!62 lambda!258501) (choose!38413 baseZ!62 lambda!258501))))

(declare-fun bs!1204441 () Bool)

(assert (= bs!1204441 d!1671113))

(declare-fun m!6231250 () Bool)

(assert (=> bs!1204441 m!6231250))

(assert (=> d!1670555 d!1671113))

(assert (=> bm!363557 d!1670905))

(declare-fun d!1671115 () Bool)

(declare-fun c!891421 () Bool)

(assert (=> d!1671115 (= c!891421 ((_ is Nil!60157) lt!2132407))))

(declare-fun e!3225243 () (InoxSet C!29580))

(assert (=> d!1671115 (= (content!10659 lt!2132407) e!3225243)))

(declare-fun b!5176103 () Bool)

(assert (=> b!5176103 (= e!3225243 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176104 () Bool)

(assert (=> b!5176104 (= e!3225243 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132407) true) (content!10659 (t!373434 lt!2132407))))))

(assert (= (and d!1671115 c!891421) b!5176103))

(assert (= (and d!1671115 (not c!891421)) b!5176104))

(declare-fun m!6231252 () Bool)

(assert (=> b!5176104 m!6231252))

(declare-fun m!6231254 () Bool)

(assert (=> b!5176104 m!6231254))

(assert (=> d!1670561 d!1671115))

(assert (=> d!1670561 d!1670385))

(declare-fun d!1671117 () Bool)

(declare-fun c!891422 () Bool)

(assert (=> d!1671117 (= c!891422 ((_ is Nil!60157) lt!2131871))))

(declare-fun e!3225244 () (InoxSet C!29580))

(assert (=> d!1671117 (= (content!10659 lt!2131871) e!3225244)))

(declare-fun b!5176105 () Bool)

(assert (=> b!5176105 (= e!3225244 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176106 () Bool)

(assert (=> b!5176106 (= e!3225244 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2131871) true) (content!10659 (t!373434 lt!2131871))))))

(assert (= (and d!1671117 c!891422) b!5176105))

(assert (= (and d!1671117 (not c!891422)) b!5176106))

(declare-fun m!6231256 () Bool)

(assert (=> b!5176106 m!6231256))

(declare-fun m!6231258 () Bool)

(assert (=> b!5176106 m!6231258))

(assert (=> d!1670561 d!1671117))

(declare-fun d!1671119 () Bool)

(declare-fun lt!2132639 () Int)

(assert (=> d!1671119 (>= lt!2132639 0)))

(declare-fun e!3225245 () Int)

(assert (=> d!1671119 (= lt!2132639 e!3225245)))

(declare-fun c!891423 () Bool)

(assert (=> d!1671119 (= c!891423 ((_ is Nil!60157) (t!373434 (Cons!60157 lt!2131872 Nil!60157))))))

(assert (=> d!1671119 (= (size!39691 (t!373434 (Cons!60157 lt!2131872 Nil!60157))) lt!2132639)))

(declare-fun b!5176107 () Bool)

(assert (=> b!5176107 (= e!3225245 0)))

(declare-fun b!5176108 () Bool)

(assert (=> b!5176108 (= e!3225245 (+ 1 (size!39691 (t!373434 (t!373434 (Cons!60157 lt!2131872 Nil!60157))))))))

(assert (= (and d!1671119 c!891423) b!5176107))

(assert (= (and d!1671119 (not c!891423)) b!5176108))

(declare-fun m!6231260 () Bool)

(assert (=> b!5176108 m!6231260))

(assert (=> b!5175273 d!1671119))

(declare-fun d!1671121 () Bool)

(declare-fun c!891424 () Bool)

(assert (=> d!1671121 (= c!891424 ((_ is Nil!60157) lt!2132202))))

(declare-fun e!3225246 () (InoxSet C!29580))

(assert (=> d!1671121 (= (content!10659 lt!2132202) e!3225246)))

(declare-fun b!5176109 () Bool)

(assert (=> b!5176109 (= e!3225246 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176110 () Bool)

(assert (=> b!5176110 (= e!3225246 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 lt!2132202) true) (content!10659 (t!373434 lt!2132202))))))

(assert (= (and d!1671121 c!891424) b!5176109))

(assert (= (and d!1671121 (not c!891424)) b!5176110))

(declare-fun m!6231262 () Bool)

(assert (=> b!5176110 m!6231262))

(declare-fun m!6231264 () Bool)

(assert (=> b!5176110 m!6231264))

(assert (=> d!1670337 d!1671121))

(assert (=> d!1670337 d!1670693))

(declare-fun d!1671123 () Bool)

(declare-fun c!891425 () Bool)

(assert (=> d!1671123 (= c!891425 ((_ is Nil!60157) (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))

(declare-fun e!3225247 () (InoxSet C!29580))

(assert (=> d!1671123 (= (content!10659 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)) e!3225247)))

(declare-fun b!5176111 () Bool)

(assert (=> b!5176111 (= e!3225247 ((as const (Array C!29580 Bool)) false))))

(declare-fun b!5176112 () Bool)

(assert (=> b!5176112 (= e!3225247 ((_ map or) (store ((as const (Array C!29580 Bool)) false) (h!66605 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)) true) (content!10659 (t!373434 (Cons!60157 (head!11073 (tail!10172 lt!2131871)) Nil!60157)))))))

(assert (= (and d!1671123 c!891425) b!5176111))

(assert (= (and d!1671123 (not c!891425)) b!5176112))

(declare-fun m!6231266 () Bool)

(assert (=> b!5176112 m!6231266))

(declare-fun m!6231268 () Bool)

(assert (=> b!5176112 m!6231268))

(assert (=> d!1670337 d!1671123))

(declare-fun bs!1204442 () Bool)

(declare-fun d!1671125 () Bool)

(assert (= bs!1204442 (and d!1671125 d!1670687)))

(declare-fun lambda!258544 () Int)

(assert (=> bs!1204442 (= (= (ite c!891221 lambda!258499 lambda!258500) lambda!258498) (= lambda!258544 lambda!258516))))

(declare-fun bs!1204443 () Bool)

(assert (= bs!1204443 (and d!1671125 b!5175502)))

(assert (=> bs!1204443 (not (= lambda!258544 lambda!258503))))

(declare-fun bs!1204444 () Bool)

(assert (= bs!1204444 (and d!1671125 d!1670639)))

(assert (=> bs!1204444 (not (= lambda!258544 lambda!258510))))

(declare-fun bs!1204445 () Bool)

(assert (= bs!1204445 (and d!1671125 d!1670785)))

(assert (=> bs!1204445 (not (= lambda!258544 lambda!258521))))

(declare-fun bs!1204446 () Bool)

(assert (= bs!1204446 (and d!1671125 d!1670237)))

(assert (=> bs!1204446 (not (= lambda!258544 lambda!258451))))

(declare-fun bs!1204447 () Bool)

(assert (= bs!1204447 (and d!1671125 b!5175503)))

(assert (=> bs!1204447 (not (= lambda!258544 lambda!258504))))

(declare-fun bs!1204448 () Bool)

(assert (= bs!1204448 (and d!1671125 d!1670861)))

(assert (=> bs!1204448 (= (= (ite c!891221 lambda!258499 lambda!258500) lambda!258498) (= lambda!258544 lambda!258534))))

(declare-fun bs!1204449 () Bool)

(assert (= bs!1204449 (and d!1671125 d!1670991)))

(assert (=> bs!1204449 (= (= (ite c!891221 lambda!258499 lambda!258500) lambda!258502) (= lambda!258544 lambda!258539))))

(declare-fun bs!1204450 () Bool)

(assert (= bs!1204450 (and d!1671125 b!5175436)))

(assert (=> bs!1204450 (not (= lambda!258544 lambda!258499))))

(declare-fun bs!1204451 () Bool)

(assert (= bs!1204451 (and d!1671125 d!1670557)))

(assert (=> bs!1204451 (not (= lambda!258544 lambda!258502))))

(declare-fun bs!1204452 () Bool)

(assert (= bs!1204452 (and d!1671125 b!5175779)))

(assert (=> bs!1204452 (not (= lambda!258544 lambda!258523))))

(declare-fun bs!1204453 () Bool)

(assert (= bs!1204453 (and d!1671125 b!5175955)))

(assert (=> bs!1204453 (not (= lambda!258544 lambda!258537))))

(declare-fun bs!1204454 () Bool)

(assert (= bs!1204454 (and d!1671125 d!1670729)))

(assert (=> bs!1204454 (= (= (ite c!891221 lambda!258499 lambda!258500) lambda!258502) (= lambda!258544 lambda!258518))))

(declare-fun bs!1204455 () Bool)

(assert (= bs!1204455 (and d!1671125 d!1670969)))

(assert (=> bs!1204455 (not (= lambda!258544 lambda!258536))))

(declare-fun bs!1204456 () Bool)

(assert (= bs!1204456 (and d!1671125 d!1670661)))

(assert (=> bs!1204456 (not (= lambda!258544 lambda!258512))))

(declare-fun bs!1204457 () Bool)

(assert (= bs!1204457 (and d!1671125 b!5175956)))

(assert (=> bs!1204457 (not (= lambda!258544 lambda!258538))))

(declare-fun bs!1204458 () Bool)

(assert (= bs!1204458 (and d!1671125 d!1670625)))

(assert (=> bs!1204458 (= (= (ite c!891221 lambda!258499 lambda!258500) lambda!258451) (= lambda!258544 lambda!258509))))

(declare-fun bs!1204459 () Bool)

(assert (= bs!1204459 (and d!1671125 d!1670469)))

(assert (=> bs!1204459 (not (= lambda!258544 lambda!258498))))

(declare-fun bs!1204460 () Bool)

(assert (= bs!1204460 (and d!1671125 b!5175780)))

(assert (=> bs!1204460 (not (= lambda!258544 lambda!258524))))

(declare-fun bs!1204461 () Bool)

(assert (= bs!1204461 (and d!1671125 b!5175437)))

(assert (=> bs!1204461 (not (= lambda!258544 lambda!258500))))

(declare-fun bs!1204462 () Bool)

(assert (= bs!1204462 (and d!1671125 d!1670819)))

(assert (=> bs!1204462 (not (= lambda!258544 lambda!258531))))

(declare-fun bs!1204463 () Bool)

(assert (= bs!1204463 (and d!1671125 d!1671057)))

(assert (=> bs!1204463 (not (= lambda!258544 lambda!258542))))

(declare-fun bs!1204464 () Bool)

(assert (= bs!1204464 (and d!1671125 d!1670427)))

(assert (=> bs!1204464 (not (= lambda!258544 lambda!258480))))

(assert (=> d!1671125 true))

(assert (=> d!1671125 (< (dynLambda!23879 order!27035 (ite c!891221 lambda!258499 lambda!258500)) (dynLambda!23879 order!27035 lambda!258544))))

(assert (=> d!1671125 (= (exists!1937 (ite c!891221 lt!2132383 lt!2132384) (ite c!891221 lambda!258499 lambda!258500)) (not (forall!14158 (ite c!891221 lt!2132383 lt!2132384) lambda!258544)))))

(declare-fun bs!1204465 () Bool)

(assert (= bs!1204465 d!1671125))

(declare-fun m!6231270 () Bool)

(assert (=> bs!1204465 m!6231270))

(assert (=> bm!363576 d!1671125))

(declare-fun b!5176114 () Bool)

(declare-fun e!3225248 () List!60281)

(assert (=> b!5176114 (= e!3225248 (Cons!60157 (h!66605 (t!373434 testedP!294)) (++!13171 (t!373434 (t!373434 testedP!294)) lt!2131871)))))

(declare-fun e!3225249 () Bool)

(declare-fun lt!2132640 () List!60281)

(declare-fun b!5176116 () Bool)

(assert (=> b!5176116 (= e!3225249 (or (not (= lt!2131871 Nil!60157)) (= lt!2132640 (t!373434 testedP!294))))))

(declare-fun d!1671127 () Bool)

(assert (=> d!1671127 e!3225249))

(declare-fun res!2199656 () Bool)

(assert (=> d!1671127 (=> (not res!2199656) (not e!3225249))))

(assert (=> d!1671127 (= res!2199656 (= (content!10659 lt!2132640) ((_ map or) (content!10659 (t!373434 testedP!294)) (content!10659 lt!2131871))))))

(assert (=> d!1671127 (= lt!2132640 e!3225248)))

(declare-fun c!891426 () Bool)

(assert (=> d!1671127 (= c!891426 ((_ is Nil!60157) (t!373434 testedP!294)))))

(assert (=> d!1671127 (= (++!13171 (t!373434 testedP!294) lt!2131871) lt!2132640)))

(declare-fun b!5176115 () Bool)

(declare-fun res!2199655 () Bool)

(assert (=> b!5176115 (=> (not res!2199655) (not e!3225249))))

(assert (=> b!5176115 (= res!2199655 (= (size!39691 lt!2132640) (+ (size!39691 (t!373434 testedP!294)) (size!39691 lt!2131871))))))

(declare-fun b!5176113 () Bool)

(assert (=> b!5176113 (= e!3225248 lt!2131871)))

(assert (= (and d!1671127 c!891426) b!5176113))

(assert (= (and d!1671127 (not c!891426)) b!5176114))

(assert (= (and d!1671127 res!2199656) b!5176115))

(assert (= (and b!5176115 res!2199655) b!5176116))

(declare-fun m!6231272 () Bool)

(assert (=> b!5176114 m!6231272))

(declare-fun m!6231274 () Bool)

(assert (=> d!1671127 m!6231274))

(assert (=> d!1671127 m!6229606))

(assert (=> d!1671127 m!6230086))

(declare-fun m!6231276 () Bool)

(assert (=> b!5176115 m!6231276))

(assert (=> b!5176115 m!6228998))

(assert (=> b!5176115 m!6230090))

(assert (=> b!5175509 d!1671127))

(assert (=> bm!363549 d!1670751))

(declare-fun d!1671129 () Bool)

(declare-fun res!2199657 () Bool)

(declare-fun e!3225252 () Bool)

(assert (=> d!1671129 (=> res!2199657 e!3225252)))

(assert (=> d!1671129 (= res!2199657 ((_ is Nil!60158) (exprs!4539 setElem!32308)))))

(assert (=> d!1671129 (= (forall!14155 (exprs!4539 setElem!32308) lambda!258458) e!3225252)))

(declare-fun b!5176121 () Bool)

(declare-fun e!3225253 () Bool)

(assert (=> b!5176121 (= e!3225252 e!3225253)))

(declare-fun res!2199658 () Bool)

(assert (=> b!5176121 (=> (not res!2199658) (not e!3225253))))

(assert (=> b!5176121 (= res!2199658 (dynLambda!23878 lambda!258458 (h!66606 (exprs!4539 setElem!32308))))))

(declare-fun b!5176122 () Bool)

(assert (=> b!5176122 (= e!3225253 (forall!14155 (t!373435 (exprs!4539 setElem!32308)) lambda!258458))))

(assert (= (and d!1671129 (not res!2199657)) b!5176121))

(assert (= (and b!5176121 res!2199658) b!5176122))

(declare-fun b_lambda!200955 () Bool)

(assert (=> (not b_lambda!200955) (not b!5176121)))

(declare-fun m!6231278 () Bool)

(assert (=> b!5176121 m!6231278))

(declare-fun m!6231280 () Bool)

(assert (=> b!5176122 m!6231280))

(assert (=> d!1670345 d!1671129))

(declare-fun bs!1204466 () Bool)

(declare-fun d!1671131 () Bool)

(assert (= bs!1204466 (and d!1671131 d!1670255)))

(declare-fun lambda!258545 () Int)

(assert (=> bs!1204466 (= lambda!258545 lambda!258454)))

(declare-fun bs!1204467 () Bool)

(assert (= bs!1204467 (and d!1671131 d!1670345)))

(assert (=> bs!1204467 (= lambda!258545 lambda!258458)))

(declare-fun bs!1204468 () Bool)

(assert (= bs!1204468 (and d!1671131 d!1670615)))

(assert (=> bs!1204468 (= lambda!258545 lambda!258506)))

(declare-fun bs!1204469 () Bool)

(assert (= bs!1204469 (and d!1671131 d!1670299)))

(assert (=> bs!1204469 (= lambda!258545 lambda!258457)))

(declare-fun bs!1204470 () Bool)

(assert (= bs!1204470 (and d!1671131 d!1670257)))

(assert (=> bs!1204470 (= lambda!258545 lambda!258455)))

(assert (=> d!1671131 (= (inv!79884 setElem!32311) (forall!14155 (exprs!4539 setElem!32311) lambda!258545))))

(declare-fun bs!1204471 () Bool)

(assert (= bs!1204471 d!1671131))

(declare-fun m!6231282 () Bool)

(assert (=> bs!1204471 m!6231282))

(assert (=> setNonEmpty!32311 d!1671131))

(declare-fun bs!1204472 () Bool)

(declare-fun d!1671133 () Bool)

(assert (= bs!1204472 (and d!1671133 d!1670687)))

(declare-fun lambda!258548 () Int)

(assert (=> bs!1204472 (= (= (ite c!891233 lambda!258503 lambda!258504) lambda!258498) (= lambda!258548 lambda!258516))))

(declare-fun bs!1204473 () Bool)

(assert (= bs!1204473 (and d!1671133 b!5175502)))

(assert (=> bs!1204473 (not (= lambda!258548 lambda!258503))))

(declare-fun bs!1204474 () Bool)

(assert (= bs!1204474 (and d!1671133 d!1670639)))

(assert (=> bs!1204474 (not (= lambda!258548 lambda!258510))))

(declare-fun bs!1204475 () Bool)

(assert (= bs!1204475 (and d!1671133 d!1670237)))

(assert (=> bs!1204475 (not (= lambda!258548 lambda!258451))))

(declare-fun bs!1204476 () Bool)

(assert (= bs!1204476 (and d!1671133 b!5175503)))

(assert (=> bs!1204476 (not (= lambda!258548 lambda!258504))))

(declare-fun bs!1204477 () Bool)

(assert (= bs!1204477 (and d!1671133 d!1670861)))

(assert (=> bs!1204477 (= (= (ite c!891233 lambda!258503 lambda!258504) lambda!258498) (= lambda!258548 lambda!258534))))

(declare-fun bs!1204478 () Bool)

(assert (= bs!1204478 (and d!1671133 d!1670991)))

(assert (=> bs!1204478 (= (= (ite c!891233 lambda!258503 lambda!258504) lambda!258502) (= lambda!258548 lambda!258539))))

(declare-fun bs!1204479 () Bool)

(assert (= bs!1204479 (and d!1671133 b!5175436)))

(assert (=> bs!1204479 (not (= lambda!258548 lambda!258499))))

(declare-fun bs!1204480 () Bool)

(assert (= bs!1204480 (and d!1671133 d!1670557)))

(assert (=> bs!1204480 (not (= lambda!258548 lambda!258502))))

(declare-fun bs!1204481 () Bool)

(assert (= bs!1204481 (and d!1671133 b!5175779)))

(assert (=> bs!1204481 (not (= lambda!258548 lambda!258523))))

(declare-fun bs!1204482 () Bool)

(assert (= bs!1204482 (and d!1671133 b!5175955)))

(assert (=> bs!1204482 (not (= lambda!258548 lambda!258537))))

(declare-fun bs!1204483 () Bool)

(assert (= bs!1204483 (and d!1671133 d!1670729)))

(assert (=> bs!1204483 (= (= (ite c!891233 lambda!258503 lambda!258504) lambda!258502) (= lambda!258548 lambda!258518))))

(declare-fun bs!1204484 () Bool)

(assert (= bs!1204484 (and d!1671133 d!1670969)))

(assert (=> bs!1204484 (not (= lambda!258548 lambda!258536))))

(declare-fun bs!1204485 () Bool)

(assert (= bs!1204485 (and d!1671133 d!1670661)))

(assert (=> bs!1204485 (not (= lambda!258548 lambda!258512))))

(declare-fun bs!1204486 () Bool)

(assert (= bs!1204486 (and d!1671133 b!5175956)))

(assert (=> bs!1204486 (not (= lambda!258548 lambda!258538))))

(declare-fun bs!1204487 () Bool)

(assert (= bs!1204487 (and d!1671133 d!1671125)))

(assert (=> bs!1204487 (= (= (ite c!891233 lambda!258503 lambda!258504) (ite c!891221 lambda!258499 lambda!258500)) (= lambda!258548 lambda!258544))))

(declare-fun bs!1204488 () Bool)

(assert (= bs!1204488 (and d!1671133 d!1670785)))

(assert (=> bs!1204488 (not (= lambda!258548 lambda!258521))))

(declare-fun bs!1204489 () Bool)

(assert (= bs!1204489 (and d!1671133 d!1670625)))

(assert (=> bs!1204489 (= (= (ite c!891233 lambda!258503 lambda!258504) lambda!258451) (= lambda!258548 lambda!258509))))

(declare-fun bs!1204490 () Bool)

(assert (= bs!1204490 (and d!1671133 d!1670469)))

(assert (=> bs!1204490 (not (= lambda!258548 lambda!258498))))

(declare-fun bs!1204491 () Bool)

(assert (= bs!1204491 (and d!1671133 b!5175780)))

(assert (=> bs!1204491 (not (= lambda!258548 lambda!258524))))

(declare-fun bs!1204492 () Bool)

(assert (= bs!1204492 (and d!1671133 b!5175437)))

(assert (=> bs!1204492 (not (= lambda!258548 lambda!258500))))

(declare-fun bs!1204493 () Bool)

(assert (= bs!1204493 (and d!1671133 d!1670819)))

(assert (=> bs!1204493 (not (= lambda!258548 lambda!258531))))

(declare-fun bs!1204494 () Bool)

(assert (= bs!1204494 (and d!1671133 d!1671057)))

(assert (=> bs!1204494 (not (= lambda!258548 lambda!258542))))

(declare-fun bs!1204495 () Bool)

(assert (= bs!1204495 (and d!1671133 d!1670427)))

(assert (=> bs!1204495 (not (= lambda!258548 lambda!258480))))

(assert (=> d!1671133 true))

(assert (=> d!1671133 (< (dynLambda!23879 order!27035 (ite c!891233 lambda!258503 lambda!258504)) (dynLambda!23879 order!27035 lambda!258548))))

(assert (=> d!1671133 (= (exists!1937 (ite c!891233 lt!2132402 lt!2132403) (ite c!891233 lambda!258503 lambda!258504)) (not (forall!14158 (ite c!891233 lt!2132402 lt!2132403) lambda!258548)))))

(declare-fun bs!1204496 () Bool)

(assert (= bs!1204496 d!1671133))

(declare-fun m!6231284 () Bool)

(assert (=> bs!1204496 m!6231284))

(assert (=> bm!363578 d!1671133))

(declare-fun d!1671135 () Bool)

(assert (=> d!1671135 (= input!5817 lt!2131985)))

(declare-fun lt!2132643 () Unit!151938)

(assert (=> d!1671135 (= lt!2132643 (choose!38409 input!5817 lt!2131985 input!5817))))

(assert (=> d!1671135 (isPrefix!5788 input!5817 input!5817)))

(assert (=> d!1671135 (= (lemmaIsPrefixSameLengthThenSameList!1433 input!5817 lt!2131985 input!5817) lt!2132643)))

(declare-fun bs!1204497 () Bool)

(assert (= bs!1204497 d!1671135))

(declare-fun m!6231286 () Bool)

(assert (=> bs!1204497 m!6231286))

(assert (=> bs!1204497 m!6228932))

(assert (=> bm!363555 d!1671135))

(declare-fun b!5176124 () Bool)

(declare-fun e!3225254 () Bool)

(declare-fun tp!1451983 () Bool)

(declare-fun tp!1451984 () Bool)

(assert (=> b!5176124 (= e!3225254 (and tp!1451983 tp!1451984))))

(assert (=> b!5175550 (= tp!1451970 e!3225254)))

(declare-fun b!5176123 () Bool)

(assert (=> b!5176123 (= e!3225254 tp_is_empty!38563)))

(declare-fun b!5176125 () Bool)

(declare-fun tp!1451986 () Bool)

(assert (=> b!5176125 (= e!3225254 tp!1451986)))

(declare-fun b!5176126 () Bool)

(declare-fun tp!1451982 () Bool)

(declare-fun tp!1451985 () Bool)

(assert (=> b!5176126 (= e!3225254 (and tp!1451982 tp!1451985))))

(assert (= (and b!5175550 ((_ is ElementMatch!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176123))

(assert (= (and b!5175550 ((_ is Concat!23500) (regOne!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176124))

(assert (= (and b!5175550 ((_ is Star!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176125))

(assert (= (and b!5175550 ((_ is Union!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176126))

(declare-fun b!5176128 () Bool)

(declare-fun e!3225255 () Bool)

(declare-fun tp!1451988 () Bool)

(declare-fun tp!1451989 () Bool)

(assert (=> b!5176128 (= e!3225255 (and tp!1451988 tp!1451989))))

(assert (=> b!5175550 (= tp!1451971 e!3225255)))

(declare-fun b!5176127 () Bool)

(assert (=> b!5176127 (= e!3225255 tp_is_empty!38563)))

(declare-fun b!5176129 () Bool)

(declare-fun tp!1451991 () Bool)

(assert (=> b!5176129 (= e!3225255 tp!1451991)))

(declare-fun b!5176130 () Bool)

(declare-fun tp!1451987 () Bool)

(declare-fun tp!1451990 () Bool)

(assert (=> b!5176130 (= e!3225255 (and tp!1451987 tp!1451990))))

(assert (= (and b!5175550 ((_ is ElementMatch!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176127))

(assert (= (and b!5175550 ((_ is Concat!23500) (regTwo!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176128))

(assert (= (and b!5175550 ((_ is Star!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176129))

(assert (= (and b!5175550 ((_ is Union!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32299))))) b!5176130))

(declare-fun b!5176131 () Bool)

(declare-fun e!3225256 () Bool)

(declare-fun tp!1451992 () Bool)

(assert (=> b!5176131 (= e!3225256 (and tp_is_empty!38563 tp!1451992))))

(assert (=> b!5175547 (= tp!1451967 e!3225256)))

(assert (= (and b!5175547 ((_ is Cons!60157) (t!373434 (t!373434 (t!373434 input!5817))))) b!5176131))

(declare-fun b!5176133 () Bool)

(declare-fun e!3225257 () Bool)

(declare-fun tp!1451994 () Bool)

(declare-fun tp!1451995 () Bool)

(assert (=> b!5176133 (= e!3225257 (and tp!1451994 tp!1451995))))

(assert (=> b!5175531 (= tp!1451948 e!3225257)))

(declare-fun b!5176132 () Bool)

(assert (=> b!5176132 (= e!3225257 tp_is_empty!38563)))

(declare-fun b!5176134 () Bool)

(declare-fun tp!1451997 () Bool)

(assert (=> b!5176134 (= e!3225257 tp!1451997)))

(declare-fun b!5176135 () Bool)

(declare-fun tp!1451993 () Bool)

(declare-fun tp!1451996 () Bool)

(assert (=> b!5176135 (= e!3225257 (and tp!1451993 tp!1451996))))

(assert (= (and b!5175531 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32307)))) b!5176132))

(assert (= (and b!5175531 ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32307)))) b!5176133))

(assert (= (and b!5175531 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32307)))) b!5176134))

(assert (= (and b!5175531 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32307)))) b!5176135))

(declare-fun b!5176136 () Bool)

(declare-fun e!3225258 () Bool)

(declare-fun tp!1451998 () Bool)

(declare-fun tp!1451999 () Bool)

(assert (=> b!5176136 (= e!3225258 (and tp!1451998 tp!1451999))))

(assert (=> b!5175531 (= tp!1451949 e!3225258)))

(assert (= (and b!5175531 ((_ is Cons!60158) (t!373435 (exprs!4539 setElem!32307)))) b!5176136))

(declare-fun b!5176138 () Bool)

(declare-fun e!3225259 () Bool)

(declare-fun tp!1452001 () Bool)

(declare-fun tp!1452002 () Bool)

(assert (=> b!5176138 (= e!3225259 (and tp!1452001 tp!1452002))))

(assert (=> b!5175546 (= tp!1451965 e!3225259)))

(declare-fun b!5176137 () Bool)

(assert (=> b!5176137 (= e!3225259 tp_is_empty!38563)))

(declare-fun b!5176139 () Bool)

(declare-fun tp!1452004 () Bool)

(assert (=> b!5176139 (= e!3225259 tp!1452004)))

(declare-fun b!5176140 () Bool)

(declare-fun tp!1452000 () Bool)

(declare-fun tp!1452003 () Bool)

(assert (=> b!5176140 (= e!3225259 (and tp!1452000 tp!1452003))))

(assert (= (and b!5175546 ((_ is ElementMatch!14655) (h!66606 (t!373435 (exprs!4539 setElem!32300))))) b!5176137))

(assert (= (and b!5175546 ((_ is Concat!23500) (h!66606 (t!373435 (exprs!4539 setElem!32300))))) b!5176138))

(assert (= (and b!5175546 ((_ is Star!14655) (h!66606 (t!373435 (exprs!4539 setElem!32300))))) b!5176139))

(assert (= (and b!5175546 ((_ is Union!14655) (h!66606 (t!373435 (exprs!4539 setElem!32300))))) b!5176140))

(declare-fun b!5176141 () Bool)

(declare-fun e!3225260 () Bool)

(declare-fun tp!1452005 () Bool)

(declare-fun tp!1452006 () Bool)

(assert (=> b!5176141 (= e!3225260 (and tp!1452005 tp!1452006))))

(assert (=> b!5175546 (= tp!1451966 e!3225260)))

(assert (= (and b!5175546 ((_ is Cons!60158) (t!373435 (t!373435 (exprs!4539 setElem!32300))))) b!5176141))

(declare-fun b!5176143 () Bool)

(declare-fun e!3225261 () Bool)

(declare-fun tp!1452008 () Bool)

(declare-fun tp!1452009 () Bool)

(assert (=> b!5176143 (= e!3225261 (and tp!1452008 tp!1452009))))

(assert (=> b!5175553 (= tp!1451974 e!3225261)))

(declare-fun b!5176142 () Bool)

(assert (=> b!5176142 (= e!3225261 tp_is_empty!38563)))

(declare-fun b!5176144 () Bool)

(declare-fun tp!1452011 () Bool)

(assert (=> b!5176144 (= e!3225261 tp!1452011)))

(declare-fun b!5176145 () Bool)

(declare-fun tp!1452007 () Bool)

(declare-fun tp!1452010 () Bool)

(assert (=> b!5176145 (= e!3225261 (and tp!1452007 tp!1452010))))

(assert (= (and b!5175553 ((_ is ElementMatch!14655) (h!66606 (t!373435 (exprs!4539 setElem!32299))))) b!5176142))

(assert (= (and b!5175553 ((_ is Concat!23500) (h!66606 (t!373435 (exprs!4539 setElem!32299))))) b!5176143))

(assert (= (and b!5175553 ((_ is Star!14655) (h!66606 (t!373435 (exprs!4539 setElem!32299))))) b!5176144))

(assert (= (and b!5175553 ((_ is Union!14655) (h!66606 (t!373435 (exprs!4539 setElem!32299))))) b!5176145))

(declare-fun b!5176146 () Bool)

(declare-fun e!3225262 () Bool)

(declare-fun tp!1452012 () Bool)

(declare-fun tp!1452013 () Bool)

(assert (=> b!5176146 (= e!3225262 (and tp!1452012 tp!1452013))))

(assert (=> b!5175553 (= tp!1451975 e!3225262)))

(assert (= (and b!5175553 ((_ is Cons!60158) (t!373435 (t!373435 (exprs!4539 setElem!32299))))) b!5176146))

(declare-fun b!5176149 () Bool)

(declare-fun e!3225264 () Bool)

(declare-fun tp!1452014 () Bool)

(declare-fun tp!1452015 () Bool)

(assert (=> b!5176149 (= e!3225264 (and tp!1452014 tp!1452015))))

(assert (=> b!5175530 (= tp!1451946 e!3225264)))

(assert (= (and b!5175530 ((_ is Cons!60158) (exprs!4539 setElem!32312))) b!5176149))

(declare-fun b!5176151 () Bool)

(declare-fun e!3225265 () Bool)

(declare-fun tp!1452017 () Bool)

(declare-fun tp!1452018 () Bool)

(assert (=> b!5176151 (= e!3225265 (and tp!1452017 tp!1452018))))

(assert (=> b!5175545 (= tp!1451960 e!3225265)))

(declare-fun b!5176150 () Bool)

(assert (=> b!5176150 (= e!3225265 tp_is_empty!38563)))

(declare-fun b!5176152 () Bool)

(declare-fun tp!1452020 () Bool)

(assert (=> b!5176152 (= e!3225265 tp!1452020)))

(declare-fun b!5176153 () Bool)

(declare-fun tp!1452016 () Bool)

(declare-fun tp!1452019 () Bool)

(assert (=> b!5176153 (= e!3225265 (and tp!1452016 tp!1452019))))

(assert (= (and b!5175545 ((_ is ElementMatch!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176150))

(assert (= (and b!5175545 ((_ is Concat!23500) (regOne!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176151))

(assert (= (and b!5175545 ((_ is Star!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176152))

(assert (= (and b!5175545 ((_ is Union!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176153))

(declare-fun b!5176155 () Bool)

(declare-fun e!3225266 () Bool)

(declare-fun tp!1452022 () Bool)

(declare-fun tp!1452023 () Bool)

(assert (=> b!5176155 (= e!3225266 (and tp!1452022 tp!1452023))))

(assert (=> b!5175545 (= tp!1451963 e!3225266)))

(declare-fun b!5176154 () Bool)

(assert (=> b!5176154 (= e!3225266 tp_is_empty!38563)))

(declare-fun b!5176156 () Bool)

(declare-fun tp!1452025 () Bool)

(assert (=> b!5176156 (= e!3225266 tp!1452025)))

(declare-fun b!5176157 () Bool)

(declare-fun tp!1452021 () Bool)

(declare-fun tp!1452024 () Bool)

(assert (=> b!5176157 (= e!3225266 (and tp!1452021 tp!1452024))))

(assert (= (and b!5175545 ((_ is ElementMatch!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176154))

(assert (= (and b!5175545 ((_ is Concat!23500) (regTwo!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176155))

(assert (= (and b!5175545 ((_ is Star!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176156))

(assert (= (and b!5175545 ((_ is Union!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32300))))) b!5176157))

(declare-fun b!5176159 () Bool)

(declare-fun e!3225267 () Bool)

(declare-fun tp!1452027 () Bool)

(declare-fun tp!1452028 () Bool)

(assert (=> b!5176159 (= e!3225267 (and tp!1452027 tp!1452028))))

(assert (=> b!5175528 (= tp!1451942 e!3225267)))

(declare-fun b!5176158 () Bool)

(assert (=> b!5176158 (= e!3225267 tp_is_empty!38563)))

(declare-fun b!5176160 () Bool)

(declare-fun tp!1452030 () Bool)

(assert (=> b!5176160 (= e!3225267 tp!1452030)))

(declare-fun b!5176161 () Bool)

(declare-fun tp!1452026 () Bool)

(declare-fun tp!1452029 () Bool)

(assert (=> b!5176161 (= e!3225267 (and tp!1452026 tp!1452029))))

(assert (= (and b!5175528 ((_ is ElementMatch!14655) (h!66606 (exprs!4539 setElem!32308)))) b!5176158))

(assert (= (and b!5175528 ((_ is Concat!23500) (h!66606 (exprs!4539 setElem!32308)))) b!5176159))

(assert (= (and b!5175528 ((_ is Star!14655) (h!66606 (exprs!4539 setElem!32308)))) b!5176160))

(assert (= (and b!5175528 ((_ is Union!14655) (h!66606 (exprs!4539 setElem!32308)))) b!5176161))

(declare-fun b!5176162 () Bool)

(declare-fun e!3225268 () Bool)

(declare-fun tp!1452031 () Bool)

(declare-fun tp!1452032 () Bool)

(assert (=> b!5176162 (= e!3225268 (and tp!1452031 tp!1452032))))

(assert (=> b!5175528 (= tp!1451943 e!3225268)))

(assert (= (and b!5175528 ((_ is Cons!60158) (t!373435 (exprs!4539 setElem!32308)))) b!5176162))

(declare-fun condSetEmpty!32316 () Bool)

(assert (=> setNonEmpty!32312 (= condSetEmpty!32316 (= setRest!32312 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32316 () Bool)

(assert (=> setNonEmpty!32312 (= tp!1451947 setRes!32316)))

(declare-fun setIsEmpty!32316 () Bool)

(assert (=> setIsEmpty!32316 setRes!32316))

(declare-fun setElem!32316 () Context!8078)

(declare-fun tp!1452034 () Bool)

(declare-fun e!3225269 () Bool)

(declare-fun setNonEmpty!32316 () Bool)

(assert (=> setNonEmpty!32316 (= setRes!32316 (and tp!1452034 (inv!79884 setElem!32316) e!3225269))))

(declare-fun setRest!32316 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32316 (= setRest!32312 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32316 true) setRest!32316))))

(declare-fun b!5176163 () Bool)

(declare-fun tp!1452033 () Bool)

(assert (=> b!5176163 (= e!3225269 tp!1452033)))

(assert (= (and setNonEmpty!32312 condSetEmpty!32316) setIsEmpty!32316))

(assert (= (and setNonEmpty!32312 (not condSetEmpty!32316)) setNonEmpty!32316))

(assert (= setNonEmpty!32316 b!5176163))

(declare-fun m!6231288 () Bool)

(assert (=> setNonEmpty!32316 m!6231288))

(declare-fun b!5176164 () Bool)

(declare-fun e!3225270 () Bool)

(declare-fun tp!1452035 () Bool)

(assert (=> b!5176164 (= e!3225270 (and tp_is_empty!38563 tp!1452035))))

(assert (=> b!5175548 (= tp!1451968 e!3225270)))

(assert (= (and b!5175548 ((_ is Cons!60157) (t!373434 (t!373434 (t!373434 testedP!294))))) b!5176164))

(declare-fun b!5176165 () Bool)

(declare-fun e!3225271 () Bool)

(declare-fun tp!1452036 () Bool)

(declare-fun tp!1452037 () Bool)

(assert (=> b!5176165 (= e!3225271 (and tp!1452036 tp!1452037))))

(assert (=> b!5175529 (= tp!1451944 e!3225271)))

(assert (= (and b!5175529 ((_ is Cons!60158) (exprs!4539 setElem!32311))) b!5176165))

(declare-fun b!5176167 () Bool)

(declare-fun e!3225272 () Bool)

(declare-fun tp!1452039 () Bool)

(declare-fun tp!1452040 () Bool)

(assert (=> b!5176167 (= e!3225272 (and tp!1452039 tp!1452040))))

(assert (=> b!5175544 (= tp!1451964 e!3225272)))

(declare-fun b!5176166 () Bool)

(assert (=> b!5176166 (= e!3225272 tp_is_empty!38563)))

(declare-fun b!5176168 () Bool)

(declare-fun tp!1452042 () Bool)

(assert (=> b!5176168 (= e!3225272 tp!1452042)))

(declare-fun b!5176169 () Bool)

(declare-fun tp!1452038 () Bool)

(declare-fun tp!1452041 () Bool)

(assert (=> b!5176169 (= e!3225272 (and tp!1452038 tp!1452041))))

(assert (= (and b!5175544 ((_ is ElementMatch!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32300))))) b!5176166))

(assert (= (and b!5175544 ((_ is Concat!23500) (reg!14984 (h!66606 (exprs!4539 setElem!32300))))) b!5176167))

(assert (= (and b!5175544 ((_ is Star!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32300))))) b!5176168))

(assert (= (and b!5175544 ((_ is Union!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32300))))) b!5176169))

(declare-fun b!5176171 () Bool)

(declare-fun e!3225273 () Bool)

(declare-fun tp!1452044 () Bool)

(declare-fun tp!1452045 () Bool)

(assert (=> b!5176171 (= e!3225273 (and tp!1452044 tp!1452045))))

(assert (=> b!5175552 (= tp!1451969 e!3225273)))

(declare-fun b!5176170 () Bool)

(assert (=> b!5176170 (= e!3225273 tp_is_empty!38563)))

(declare-fun b!5176172 () Bool)

(declare-fun tp!1452047 () Bool)

(assert (=> b!5176172 (= e!3225273 tp!1452047)))

(declare-fun b!5176173 () Bool)

(declare-fun tp!1452043 () Bool)

(declare-fun tp!1452046 () Bool)

(assert (=> b!5176173 (= e!3225273 (and tp!1452043 tp!1452046))))

(assert (= (and b!5175552 ((_ is ElementMatch!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176170))

(assert (= (and b!5175552 ((_ is Concat!23500) (regOne!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176171))

(assert (= (and b!5175552 ((_ is Star!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176172))

(assert (= (and b!5175552 ((_ is Union!14655) (regOne!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176173))

(declare-fun b!5176175 () Bool)

(declare-fun e!3225274 () Bool)

(declare-fun tp!1452049 () Bool)

(declare-fun tp!1452050 () Bool)

(assert (=> b!5176175 (= e!3225274 (and tp!1452049 tp!1452050))))

(assert (=> b!5175552 (= tp!1451972 e!3225274)))

(declare-fun b!5176174 () Bool)

(assert (=> b!5176174 (= e!3225274 tp_is_empty!38563)))

(declare-fun b!5176176 () Bool)

(declare-fun tp!1452052 () Bool)

(assert (=> b!5176176 (= e!3225274 tp!1452052)))

(declare-fun b!5176177 () Bool)

(declare-fun tp!1452048 () Bool)

(declare-fun tp!1452051 () Bool)

(assert (=> b!5176177 (= e!3225274 (and tp!1452048 tp!1452051))))

(assert (= (and b!5175552 ((_ is ElementMatch!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176174))

(assert (= (and b!5175552 ((_ is Concat!23500) (regTwo!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176175))

(assert (= (and b!5175552 ((_ is Star!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176176))

(assert (= (and b!5175552 ((_ is Union!14655) (regTwo!29823 (h!66606 (exprs!4539 setElem!32299))))) b!5176177))

(declare-fun condSetEmpty!32317 () Bool)

(assert (=> setNonEmpty!32311 (= condSetEmpty!32317 (= setRest!32311 ((as const (Array Context!8078 Bool)) false)))))

(declare-fun setRes!32317 () Bool)

(assert (=> setNonEmpty!32311 (= tp!1451945 setRes!32317)))

(declare-fun setIsEmpty!32317 () Bool)

(assert (=> setIsEmpty!32317 setRes!32317))

(declare-fun setElem!32317 () Context!8078)

(declare-fun setNonEmpty!32317 () Bool)

(declare-fun e!3225275 () Bool)

(declare-fun tp!1452054 () Bool)

(assert (=> setNonEmpty!32317 (= setRes!32317 (and tp!1452054 (inv!79884 setElem!32317) e!3225275))))

(declare-fun setRest!32317 () (InoxSet Context!8078))

(assert (=> setNonEmpty!32317 (= setRest!32311 ((_ map or) (store ((as const (Array Context!8078 Bool)) false) setElem!32317 true) setRest!32317))))

(declare-fun b!5176178 () Bool)

(declare-fun tp!1452053 () Bool)

(assert (=> b!5176178 (= e!3225275 tp!1452053)))

(assert (= (and setNonEmpty!32311 condSetEmpty!32317) setIsEmpty!32317))

(assert (= (and setNonEmpty!32311 (not condSetEmpty!32317)) setNonEmpty!32317))

(assert (= setNonEmpty!32317 b!5176178))

(declare-fun m!6231290 () Bool)

(assert (=> setNonEmpty!32317 m!6231290))

(declare-fun b!5176180 () Bool)

(declare-fun e!3225276 () Bool)

(declare-fun tp!1452056 () Bool)

(declare-fun tp!1452057 () Bool)

(assert (=> b!5176180 (= e!3225276 (and tp!1452056 tp!1452057))))

(assert (=> b!5175543 (= tp!1451961 e!3225276)))

(declare-fun b!5176179 () Bool)

(assert (=> b!5176179 (= e!3225276 tp_is_empty!38563)))

(declare-fun b!5176181 () Bool)

(declare-fun tp!1452059 () Bool)

(assert (=> b!5176181 (= e!3225276 tp!1452059)))

(declare-fun b!5176182 () Bool)

(declare-fun tp!1452055 () Bool)

(declare-fun tp!1452058 () Bool)

(assert (=> b!5176182 (= e!3225276 (and tp!1452055 tp!1452058))))

(assert (= (and b!5175543 ((_ is ElementMatch!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176179))

(assert (= (and b!5175543 ((_ is Concat!23500) (regOne!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176180))

(assert (= (and b!5175543 ((_ is Star!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176181))

(assert (= (and b!5175543 ((_ is Union!14655) (regOne!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176182))

(declare-fun b!5176184 () Bool)

(declare-fun e!3225277 () Bool)

(declare-fun tp!1452061 () Bool)

(declare-fun tp!1452062 () Bool)

(assert (=> b!5176184 (= e!3225277 (and tp!1452061 tp!1452062))))

(assert (=> b!5175543 (= tp!1451962 e!3225277)))

(declare-fun b!5176183 () Bool)

(assert (=> b!5176183 (= e!3225277 tp_is_empty!38563)))

(declare-fun b!5176185 () Bool)

(declare-fun tp!1452064 () Bool)

(assert (=> b!5176185 (= e!3225277 tp!1452064)))

(declare-fun b!5176186 () Bool)

(declare-fun tp!1452060 () Bool)

(declare-fun tp!1452063 () Bool)

(assert (=> b!5176186 (= e!3225277 (and tp!1452060 tp!1452063))))

(assert (= (and b!5175543 ((_ is ElementMatch!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176183))

(assert (= (and b!5175543 ((_ is Concat!23500) (regTwo!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176184))

(assert (= (and b!5175543 ((_ is Star!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176185))

(assert (= (and b!5175543 ((_ is Union!14655) (regTwo!29822 (h!66606 (exprs!4539 setElem!32300))))) b!5176186))

(declare-fun b!5176188 () Bool)

(declare-fun e!3225278 () Bool)

(declare-fun tp!1452066 () Bool)

(declare-fun tp!1452067 () Bool)

(assert (=> b!5176188 (= e!3225278 (and tp!1452066 tp!1452067))))

(assert (=> b!5175551 (= tp!1451973 e!3225278)))

(declare-fun b!5176187 () Bool)

(assert (=> b!5176187 (= e!3225278 tp_is_empty!38563)))

(declare-fun b!5176189 () Bool)

(declare-fun tp!1452069 () Bool)

(assert (=> b!5176189 (= e!3225278 tp!1452069)))

(declare-fun b!5176190 () Bool)

(declare-fun tp!1452065 () Bool)

(declare-fun tp!1452068 () Bool)

(assert (=> b!5176190 (= e!3225278 (and tp!1452065 tp!1452068))))

(assert (= (and b!5175551 ((_ is ElementMatch!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32299))))) b!5176187))

(assert (= (and b!5175551 ((_ is Concat!23500) (reg!14984 (h!66606 (exprs!4539 setElem!32299))))) b!5176188))

(assert (= (and b!5175551 ((_ is Star!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32299))))) b!5176189))

(assert (= (and b!5175551 ((_ is Union!14655) (reg!14984 (h!66606 (exprs!4539 setElem!32299))))) b!5176190))

(declare-fun b_lambda!200957 () Bool)

(assert (= b_lambda!200945 (or d!1670257 b_lambda!200957)))

(declare-fun bs!1204508 () Bool)

(declare-fun d!1671139 () Bool)

(assert (= bs!1204508 (and d!1671139 d!1670257)))

(assert (=> bs!1204508 (= (dynLambda!23878 lambda!258455 (h!66606 (t!373435 (exprs!4539 setElem!32300)))) (validRegex!6405 (h!66606 (t!373435 (exprs!4539 setElem!32300)))))))

(declare-fun m!6231300 () Bool)

(assert (=> bs!1204508 m!6231300))

(assert (=> b!5175575 d!1671139))

(declare-fun b_lambda!200959 () Bool)

(assert (= b_lambda!200949 (or d!1670299 b_lambda!200959)))

(declare-fun bs!1204509 () Bool)

(declare-fun d!1671141 () Bool)

(assert (= bs!1204509 (and d!1671141 d!1670299)))

(assert (=> bs!1204509 (= (dynLambda!23878 lambda!258457 (h!66606 (exprs!4539 setElem!32307))) (validRegex!6405 (h!66606 (exprs!4539 setElem!32307))))))

(declare-fun m!6231302 () Bool)

(assert (=> bs!1204509 m!6231302))

(assert (=> b!5175771 d!1671141))

(declare-fun b_lambda!200961 () Bool)

(assert (= b_lambda!200947 (or d!1670255 b_lambda!200961)))

(declare-fun bs!1204510 () Bool)

(declare-fun d!1671143 () Bool)

(assert (= bs!1204510 (and d!1671143 d!1670255)))

(assert (=> bs!1204510 (= (dynLambda!23878 lambda!258454 (h!66606 (t!373435 (exprs!4539 setElem!32299)))) (validRegex!6405 (h!66606 (t!373435 (exprs!4539 setElem!32299)))))))

(declare-fun m!6231304 () Bool)

(assert (=> bs!1204510 m!6231304))

(assert (=> b!5175739 d!1671143))

(declare-fun b_lambda!200963 () Bool)

(assert (= b_lambda!200955 (or d!1670345 b_lambda!200963)))

(declare-fun bs!1204511 () Bool)

(declare-fun d!1671145 () Bool)

(assert (= bs!1204511 (and d!1671145 d!1670345)))

(assert (=> bs!1204511 (= (dynLambda!23878 lambda!258458 (h!66606 (exprs!4539 setElem!32308))) (validRegex!6405 (h!66606 (exprs!4539 setElem!32308))))))

(declare-fun m!6231306 () Bool)

(assert (=> bs!1204511 m!6231306))

(assert (=> b!5176121 d!1671145))

(check-sat (not b!5175889) (not b!5176030) (not b!5175611) (not b!5175983) (not b!5175822) (not b!5176081) (not b!5175627) (not d!1670729) (not bm!363599) (not b!5175933) (not d!1670765) (not d!1671125) (not b!5176031) (not b!5175645) (not b!5176048) (not b!5175605) (not b!5175768) (not d!1670615) (not b!5175750) (not b!5175746) (not d!1670967) (not b!5175944) (not d!1670675) (not b!5175734) (not b!5175949) (not b!5176146) (not d!1671063) (not b!5175876) (not b!5176131) (not b!5175634) (not b!5175940) (not b!5175631) (not b!5175633) (not d!1671035) (not b!5176153) (not d!1670897) (not b!5175643) (not b!5175696) (not d!1671109) (not b!5175609) (not b!5176016) (not b!5175848) (not b!5176094) (not d!1670953) (not b!5175567) (not b!5175945) (not b!5176022) (not b!5175880) (not b!5176012) (not b!5176128) (not b!5175710) (not b!5176144) (not b!5176165) (not b!5176020) (not b!5176167) (not b!5175726) (not b!5175640) (not d!1670635) (not b!5175585) (not b!5175607) (not b!5175932) (not b!5175956) (not b!5175582) (not b!5176036) (not b!5176096) (not bm!363603) (not bm!363585) (not b!5176062) (not b!5175623) (not d!1670619) (not d!1670789) (not d!1670771) (not bm!363581) (not b!5175764) (not b_lambda!200961) (not b_lambda!200959) (not b!5175936) (not d!1671065) (not b!5175856) (not b!5176028) (not d!1670881) (not d!1670753) (not b!5175578) (not b!5175780) (not b!5175784) (not b!5176168) (not b!5176157) (not b_lambda!200943) (not d!1670861) (not b!5175798) (not d!1670969) (not b!5175606) (not b!5175694) (not b!5176009) (not d!1670767) (not d!1670755) (not b!5175792) (not b!5175724) (not b!5175789) (not b!5175948) (not b!5175561) (not b!5176023) (not b!5176082) (not b!5175688) (not d!1670717) (not b!5175563) (not d!1670921) (not setNonEmpty!32316) (not b!5176189) (not b!5175800) (not d!1670687) (not d!1670785) (not d!1670997) (not d!1670851) (not b!5175652) (not bm!363602) (not b!5175892) (not b!5175794) (not d!1670993) (not setNonEmpty!32317) (not bm!363586) (not d!1670685) (not b!5175915) (not bs!1204511) (not d!1670639) (not b!5176188) (not b!5176100) (not b!5176049) (not b!5175559) (not b!5175747) (not b!5176124) (not d!1670711) (not bm!363597) (not d!1671113) tp_is_empty!38563 (not b!5176155) (not b!5175816) (not b_lambda!200957) (not b!5176135) (not b!5176171) (not b!5175615) (not b!5175894) (not b!5175903) (not b!5175569) (not b!5175649) (not b!5175818) (not b!5175888) (not b!5176047) (not b!5176075) (not bm!363610) (not b!5175906) (not b!5175601) (not d!1670705) (not b!5176083) (not b!5176079) (not b!5175576) (not d!1671039) (not b!5176087) (not b!5175612) (not b!5176129) (not b!5175941) (not b!5176162) (not b!5176143) (not b!5176140) (not b!5175587) (not bm!363594) (not b!5175648) (not d!1671133) (not d!1670837) (not d!1670645) (not b!5175756) (not d!1670903) (not b!5175772) (not b!5176161) (not b!5176110) (not d!1670945) (not bm!363584) (not setNonEmpty!32315) (not d!1670663) (not b_lambda!200963) (not b!5175878) (not b!5175776) (not b!5176114) (not b!5175757) (not b!5175874) (not d!1670779) (not b!5175907) (not bm!363580) (not b!5175752) (not bm!363609) (not b!5175686) (not b!5176008) (not b!5176156) (not b!5175806) (not b!5175788) (not b!5175765) (not b!5175857) (not d!1670989) (not b!5176134) (not b!5175938) (not b!5175704) (not b!5176104) (not b!5176159) (not b!5176090) (not bm!363605) (not b!5176177) (not b!5175998) (not b!5175617) (not b_lambda!200941) (not b!5175565) (not d!1670915) (not d!1670781) (not b!5176138) (not d!1670791) (not b!5175598) (not b!5175555) (not b!5176050) (not b!5175714) (not b!5175717) (not b!5175804) (not b!5175673) (not b!5175574) (not bm!363607) (not bm!363582) (not b!5175761) (not b!5175580) (not d!1670697) (not b!5176014) (not d!1670963) (not b!5175651) (not bm!363604) (not b!5176077) (not d!1670725) (not b!5176112) (not b!5175684) (not b!5175557) (not b!5175624) (not bm!363583) (not b!5175774) (not b!5176108) (not d!1670637) (not d!1671033) (not d!1670819) (not b!5175802) (not bm!363606) (not b!5176067) (not b!5176186) (not b!5176149) (not b!5175629) (not b!5175996) (not d!1671135) (not b!5175762) (not bm!363596) (not b!5176136) (not b!5175707) (not b!5176172) (not d!1671013) (not d!1670661) (not d!1670601) (not b!5175584) (not b!5175595) (not b!5175712) (not d!1671071) (not d!1670901) (not bs!1204510) (not bm!363601) (not b!5175594) (not b!5176145) (not bm!363593) (not b!5175735) (not b!5176133) (not d!1671045) (not b!5175570) (not b!5176176) (not b!5176004) (not b!5175926) (not d!1671029) (not b!5175740) (not b!5175914) (not b!5176106) (not d!1670617) (not d!1670667) (not b!5175793) (not b!5175639) (not b!5175760) (not d!1670913) (not b!5175850) (not b!5175689) (not b!5175619) (not b!5176122) (not b!5176092) (not b!5175647) (not b!5175928) (not b!5176173) (not d!1670669) (not b!5175620) (not b!5176097) (not b!5176034) (not b!5176013) (not b!5175744) (not b!5175779) (not b!5176182) (not b!5176169) (not b!5175922) (not b!5175753) (not d!1670995) (not b!5175955) (not d!1670891) (not b!5176190) (not bm!363600) (not b!5175858) (not d!1671023) (not b!5176163) (not b!5176126) (not d!1670651) (not d!1671127) (not d!1670621) (not b!5175722) (not b!5175720) (not b!5176000) (not b!5176018) (not d!1670747) (not d!1670929) (not d!1671057) (not b!5175636) (not b!5176160) (not b!5176059) (not b!5176006) (not b!5176152) (not b!5175785) (not bs!1204509) (not d!1670991) (not b!5175727) (not b!5176101) (not b!5176026) (not b!5176184) (not b!5175929) (not b!5175893) (not bs!1204508) (not b!5176164) (not b!5175912) (not b!5176178) (not b!5176125) (not b!5176151) (not bm!363579) (not b!5176139) (not b!5175946) (not b!5175902) (not b!5176115) (not b!5176073) (not d!1670959) (not b!5176180) (not b!5175716) (not d!1671111) (not d!1670763) (not d!1671131) (not b!5175881) (not d!1670721) (not d!1670599) (not d!1670625) (not b!5176141) (not b!5176175) (not d!1670727) (not b!5176061) (not b!5176181) (not b!5175778) (not d!1670627) (not b!5175839) (not bm!363598) (not b!5175769) (not d!1670761) (not b!5175703) (not b!5175682) (not b!5175982) (not b!5176185) (not b!5175692) (not b!5175777) (not b!5176002) (not b!5176130))
(check-sat)
