; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92878 () Bool)

(assert start!92878)

(declare-fun b!1087881 () Bool)

(assert (=> b!1087881 true))

(declare-fun bs!257678 () Bool)

(declare-fun b!1087885 () Bool)

(assert (= bs!257678 (and b!1087885 b!1087881)))

(declare-fun lambda!40656 () Int)

(declare-fun lambda!40655 () Int)

(assert (=> bs!257678 (not (= lambda!40656 lambda!40655))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6624 0))(
  ( (C!6625 (val!3560 Int)) )
))
(declare-datatypes ((Regex!3027 0))(
  ( (ElementMatch!3027 (c!184205 C!6624)) (Concat!4860 (regOne!6566 Regex!3027) (regTwo!6566 Regex!3027)) (EmptyExpr!3027) (Star!3027 (reg!3356 Regex!3027)) (EmptyLang!3027) (Union!3027 (regOne!6567 Regex!3027) (regTwo!6567 Regex!3027)) )
))
(declare-datatypes ((List!10384 0))(
  ( (Nil!10368) (Cons!10368 (h!15769 Regex!3027) (t!101430 List!10384)) )
))
(declare-datatypes ((Context!1014 0))(
  ( (Context!1015 (exprs!1007 List!10384)) )
))
(declare-fun z!1122 () (InoxSet Context!1014))

(declare-fun e!688174 () Bool)

(declare-datatypes ((List!10385 0))(
  ( (Nil!10369) (Cons!10369 (h!15770 C!6624) (t!101431 List!10385)) )
))
(declare-fun s!2287 () List!10385)

(declare-fun b!1087877 () Bool)

(declare-fun matchZipper!75 ((InoxSet Context!1014) List!10385) Bool)

(declare-fun filter!183 ((InoxSet Context!1014) Int) (InoxSet Context!1014))

(assert (=> b!1087877 (= e!688174 (matchZipper!75 (filter!183 z!1122 lambda!40656) s!2287))))

(declare-fun b!1087878 () Bool)

(declare-fun e!688173 () Bool)

(declare-fun e!688178 () Bool)

(assert (=> b!1087878 (= e!688173 e!688178)))

(declare-fun res!483672 () Bool)

(assert (=> b!1087878 (=> res!483672 e!688178)))

(declare-fun lt!363979 () Context!1014)

(assert (=> b!1087878 (= res!483672 (not (select z!1122 lt!363979)))))

(declare-fun getWitness!101 ((InoxSet Context!1014) Int) Context!1014)

(assert (=> b!1087878 (= lt!363979 (getWitness!101 z!1122 lambda!40655))))

(declare-fun b!1087879 () Bool)

(declare-datatypes ((Unit!15763 0))(
  ( (Unit!15764) )
))
(declare-fun e!688170 () Unit!15763)

(declare-fun Unit!15765 () Unit!15763)

(assert (=> b!1087879 (= e!688170 Unit!15765)))

(declare-fun b!1087880 () Bool)

(declare-fun e!688175 () Bool)

(declare-fun e!688169 () Bool)

(assert (=> b!1087880 (= e!688175 e!688169)))

(declare-fun res!483676 () Bool)

(assert (=> b!1087880 (=> res!483676 e!688169)))

(declare-fun lt!363978 () Bool)

(assert (=> b!1087880 (= res!483676 lt!363978)))

(declare-fun lt!363983 () Unit!15763)

(assert (=> b!1087880 (= lt!363983 e!688170)))

(declare-fun c!184204 () Bool)

(assert (=> b!1087880 (= c!184204 lt!363978)))

(declare-fun lostCause!237 (Context!1014) Bool)

(assert (=> b!1087880 (= lt!363978 (lostCause!237 lt!363979))))

(declare-fun e!688171 () Bool)

(assert (=> b!1087881 (= e!688171 (not e!688173))))

(declare-fun res!483674 () Bool)

(assert (=> b!1087881 (=> res!483674 e!688173)))

(declare-fun exists!196 ((InoxSet Context!1014) Int) Bool)

(assert (=> b!1087881 (= res!483674 (not (exists!196 z!1122 lambda!40655)))))

(declare-datatypes ((List!10386 0))(
  ( (Nil!10370) (Cons!10370 (h!15771 Context!1014) (t!101432 List!10386)) )
))
(declare-fun zl!316 () List!10386)

(declare-fun exists!197 (List!10386 Int) Bool)

(assert (=> b!1087881 (exists!197 zl!316 lambda!40655)))

(declare-fun lt!363987 () Unit!15763)

(declare-fun lemmaZipperMatchesExistsMatchingContext!52 (List!10386 List!10385) Unit!15763)

(assert (=> b!1087881 (= lt!363987 (lemmaZipperMatchesExistsMatchingContext!52 zl!316 s!2287))))

(declare-fun b!1087882 () Bool)

(assert (=> b!1087882 (= e!688178 e!688175)))

(declare-fun res!483679 () Bool)

(assert (=> b!1087882 (=> res!483679 e!688175)))

(declare-fun lt!363986 () (InoxSet Context!1014))

(assert (=> b!1087882 (= res!483679 (not (matchZipper!75 lt!363986 s!2287)))))

(assert (=> b!1087882 (= lt!363986 (store ((as const (Array Context!1014 Bool)) false) lt!363979 true))))

(declare-fun b!1087883 () Bool)

(declare-fun res!483678 () Bool)

(assert (=> b!1087883 (=> (not res!483678) (not e!688171))))

(assert (=> b!1087883 (= res!483678 (matchZipper!75 z!1122 s!2287))))

(declare-fun e!688180 () Bool)

(declare-fun setElem!7678 () Context!1014)

(declare-fun setNonEmpty!7678 () Bool)

(declare-fun setRes!7678 () Bool)

(declare-fun tp!326051 () Bool)

(declare-fun inv!13280 (Context!1014) Bool)

(assert (=> setNonEmpty!7678 (= setRes!7678 (and tp!326051 (inv!13280 setElem!7678) e!688180))))

(declare-fun setRest!7678 () (InoxSet Context!1014))

(assert (=> setNonEmpty!7678 (= z!1122 ((_ map or) (store ((as const (Array Context!1014 Bool)) false) setElem!7678 true) setRest!7678))))

(declare-fun b!1087884 () Bool)

(declare-fun e!688168 () Bool)

(declare-fun e!688176 () Bool)

(assert (=> b!1087884 (= e!688168 e!688176)))

(declare-fun res!483677 () Bool)

(assert (=> b!1087884 (=> res!483677 e!688176)))

(assert (=> b!1087884 (= res!483677 (not (exists!196 (filter!183 z!1122 lambda!40656) lambda!40655)))))

(declare-fun lt!363982 () (InoxSet Context!1014))

(assert (=> b!1087884 (exists!196 lt!363982 lambda!40655)))

(declare-fun lt!363980 () Unit!15763)

(declare-fun lemmaContainsThenExists!33 ((InoxSet Context!1014) Context!1014 Int) Unit!15763)

(assert (=> b!1087884 (= lt!363980 (lemmaContainsThenExists!33 lt!363982 lt!363979 lambda!40655))))

(assert (=> b!1087884 (= lt!363982 (filter!183 z!1122 lambda!40656))))

(assert (=> b!1087885 (= e!688169 e!688168)))

(declare-fun res!483671 () Bool)

(assert (=> b!1087885 (=> res!483671 e!688168)))

(assert (=> b!1087885 (= res!483671 (not (select (filter!183 z!1122 lambda!40656) lt!363979)))))

(declare-fun lt!363981 () Unit!15763)

(declare-fun filterPost!28 ((InoxSet Context!1014) Int Context!1014) Unit!15763)

(assert (=> b!1087885 (= lt!363981 (filterPost!28 z!1122 lambda!40656 lt!363979))))

(declare-fun b!1087886 () Bool)

(declare-fun e!688179 () Bool)

(declare-fun tp!326048 () Bool)

(declare-fun e!688172 () Bool)

(assert (=> b!1087886 (= e!688179 (and (inv!13280 (h!15771 zl!316)) e!688172 tp!326048))))

(declare-fun b!1087887 () Bool)

(declare-fun tp!326049 () Bool)

(assert (=> b!1087887 (= e!688180 tp!326049)))

(declare-fun setIsEmpty!7678 () Bool)

(assert (=> setIsEmpty!7678 setRes!7678))

(declare-fun b!1087889 () Bool)

(declare-fun Unit!15766 () Unit!15763)

(assert (=> b!1087889 (= e!688170 Unit!15766)))

(declare-fun lt!363977 () Unit!15763)

(declare-fun lemmaLostCauseCannotMatch!21 ((InoxSet Context!1014) List!10385) Unit!15763)

(assert (=> b!1087889 (= lt!363977 (lemmaLostCauseCannotMatch!21 lt!363986 s!2287))))

(assert (=> b!1087889 false))

(declare-fun b!1087888 () Bool)

(assert (=> b!1087888 (= e!688176 e!688174)))

(declare-fun res!483673 () Bool)

(assert (=> b!1087888 (=> res!483673 e!688174)))

(assert (=> b!1087888 (= res!483673 (not (matchZipper!75 (filter!183 z!1122 lambda!40656) s!2287)))))

(declare-fun lt!363985 () List!10386)

(declare-fun content!1492 (List!10386) (InoxSet Context!1014))

(assert (=> b!1087888 (matchZipper!75 (content!1492 lt!363985) s!2287)))

(declare-fun lt!363984 () Unit!15763)

(declare-fun lemmaExistsMatchingContextThenMatchingString!8 (List!10386 List!10385) Unit!15763)

(assert (=> b!1087888 (= lt!363984 (lemmaExistsMatchingContextThenMatchingString!8 lt!363985 s!2287))))

(declare-fun toList!645 ((InoxSet Context!1014)) List!10386)

(assert (=> b!1087888 (= lt!363985 (toList!645 (filter!183 z!1122 lambda!40656)))))

(declare-fun res!483675 () Bool)

(assert (=> start!92878 (=> (not res!483675) (not e!688171))))

(assert (=> start!92878 (= res!483675 (= (toList!645 z!1122) zl!316))))

(assert (=> start!92878 e!688171))

(declare-fun condSetEmpty!7678 () Bool)

(assert (=> start!92878 (= condSetEmpty!7678 (= z!1122 ((as const (Array Context!1014 Bool)) false)))))

(assert (=> start!92878 setRes!7678))

(assert (=> start!92878 e!688179))

(declare-fun e!688177 () Bool)

(assert (=> start!92878 e!688177))

(declare-fun b!1087890 () Bool)

(declare-fun tp_is_empty!5685 () Bool)

(declare-fun tp!326052 () Bool)

(assert (=> b!1087890 (= e!688177 (and tp_is_empty!5685 tp!326052))))

(declare-fun b!1087891 () Bool)

(declare-fun tp!326050 () Bool)

(assert (=> b!1087891 (= e!688172 tp!326050)))

(assert (= (and start!92878 res!483675) b!1087883))

(assert (= (and b!1087883 res!483678) b!1087881))

(assert (= (and b!1087881 (not res!483674)) b!1087878))

(assert (= (and b!1087878 (not res!483672)) b!1087882))

(assert (= (and b!1087882 (not res!483679)) b!1087880))

(assert (= (and b!1087880 c!184204) b!1087889))

(assert (= (and b!1087880 (not c!184204)) b!1087879))

(assert (= (and b!1087880 (not res!483676)) b!1087885))

(assert (= (and b!1087885 (not res!483671)) b!1087884))

(assert (= (and b!1087884 (not res!483677)) b!1087888))

(assert (= (and b!1087888 (not res!483673)) b!1087877))

(assert (= (and start!92878 condSetEmpty!7678) setIsEmpty!7678))

(assert (= (and start!92878 (not condSetEmpty!7678)) setNonEmpty!7678))

(assert (= setNonEmpty!7678 b!1087887))

(assert (= b!1087886 b!1087891))

(get-info :version)

(assert (= (and start!92878 ((_ is Cons!10370) zl!316)) b!1087886))

(assert (= (and start!92878 ((_ is Cons!10369) s!2287)) b!1087890))

(declare-fun m!1238203 () Bool)

(assert (=> setNonEmpty!7678 m!1238203))

(declare-fun m!1238205 () Bool)

(assert (=> b!1087880 m!1238205))

(declare-fun m!1238207 () Bool)

(assert (=> b!1087889 m!1238207))

(declare-fun m!1238209 () Bool)

(assert (=> b!1087883 m!1238209))

(declare-fun m!1238211 () Bool)

(assert (=> b!1087881 m!1238211))

(declare-fun m!1238213 () Bool)

(assert (=> b!1087881 m!1238213))

(declare-fun m!1238215 () Bool)

(assert (=> b!1087881 m!1238215))

(declare-fun m!1238217 () Bool)

(assert (=> b!1087878 m!1238217))

(declare-fun m!1238219 () Bool)

(assert (=> b!1087878 m!1238219))

(declare-fun m!1238221 () Bool)

(assert (=> b!1087885 m!1238221))

(declare-fun m!1238223 () Bool)

(assert (=> b!1087885 m!1238223))

(declare-fun m!1238225 () Bool)

(assert (=> b!1087885 m!1238225))

(declare-fun m!1238227 () Bool)

(assert (=> b!1087882 m!1238227))

(declare-fun m!1238229 () Bool)

(assert (=> b!1087882 m!1238229))

(declare-fun m!1238231 () Bool)

(assert (=> b!1087884 m!1238231))

(declare-fun m!1238233 () Bool)

(assert (=> b!1087884 m!1238233))

(assert (=> b!1087884 m!1238221))

(assert (=> b!1087884 m!1238221))

(assert (=> b!1087884 m!1238221))

(declare-fun m!1238235 () Bool)

(assert (=> b!1087884 m!1238235))

(declare-fun m!1238237 () Bool)

(assert (=> start!92878 m!1238237))

(assert (=> b!1087877 m!1238221))

(assert (=> b!1087877 m!1238221))

(declare-fun m!1238239 () Bool)

(assert (=> b!1087877 m!1238239))

(declare-fun m!1238241 () Bool)

(assert (=> b!1087886 m!1238241))

(declare-fun m!1238243 () Bool)

(assert (=> b!1087888 m!1238243))

(declare-fun m!1238245 () Bool)

(assert (=> b!1087888 m!1238245))

(assert (=> b!1087888 m!1238221))

(declare-fun m!1238247 () Bool)

(assert (=> b!1087888 m!1238247))

(assert (=> b!1087888 m!1238243))

(declare-fun m!1238249 () Bool)

(assert (=> b!1087888 m!1238249))

(assert (=> b!1087888 m!1238221))

(assert (=> b!1087888 m!1238221))

(assert (=> b!1087888 m!1238221))

(assert (=> b!1087888 m!1238239))

(check-sat (not start!92878) (not b!1087886) (not b!1087890) (not b!1087883) (not b!1087885) (not b!1087882) tp_is_empty!5685 (not setNonEmpty!7678) (not b!1087888) (not b!1087880) (not b!1087878) (not b!1087891) (not b!1087887) (not b!1087877) (not b!1087889) (not b!1087881) (not b!1087884))
(check-sat)
