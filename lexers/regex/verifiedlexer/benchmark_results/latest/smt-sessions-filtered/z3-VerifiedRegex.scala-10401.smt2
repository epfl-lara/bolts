; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538460 () Bool)

(assert start!538460)

(declare-fun b!5106656 () Bool)

(declare-fun res!2173683 () Bool)

(declare-fun e!3185008 () Bool)

(assert (=> b!5106656 (=> (not res!2173683) (not e!3185008))))

(declare-datatypes ((C!28452 0))(
  ( (C!28453 (val!23878 Int)) )
))
(declare-datatypes ((List!59056 0))(
  ( (Nil!58932) (Cons!58932 (h!65380 C!28452) (t!372057 List!59056)) )
))
(declare-fun bigger!41 () List!59056)

(declare-fun input!5723 () List!59056)

(declare-fun isPrefix!5498 (List!59056 List!59056) Bool)

(assert (=> b!5106656 (= res!2173683 (isPrefix!5498 bigger!41 input!5723))))

(declare-fun b!5106657 () Bool)

(declare-fun e!3185005 () Bool)

(declare-fun tp_is_empty!37459 () Bool)

(declare-fun tp!1424535 () Bool)

(assert (=> b!5106657 (= e!3185005 (and tp_is_empty!37459 tp!1424535))))

(declare-fun res!2173687 () Bool)

(assert (=> start!538460 (=> (not res!2173687) (not e!3185008))))

(declare-fun returnP!41 () List!59056)

(assert (=> start!538460 (= res!2173687 (isPrefix!5498 returnP!41 input!5723))))

(assert (=> start!538460 e!3185008))

(declare-fun e!3185003 () Bool)

(assert (=> start!538460 e!3185003))

(assert (=> start!538460 e!3185005))

(declare-fun e!3185007 () Bool)

(assert (=> start!538460 e!3185007))

(declare-fun condSetEmpty!29404 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14093 0))(
  ( (ElementMatch!14093 (c!877197 C!28452)) (Concat!22938 (regOne!28698 Regex!14093) (regTwo!28698 Regex!14093)) (EmptyExpr!14093) (Star!14093 (reg!14422 Regex!14093)) (EmptyLang!14093) (Union!14093 (regOne!28699 Regex!14093) (regTwo!28699 Regex!14093)) )
))
(declare-datatypes ((List!59057 0))(
  ( (Nil!58933) (Cons!58933 (h!65381 Regex!14093) (t!372058 List!59057)) )
))
(declare-datatypes ((Context!6954 0))(
  ( (Context!6955 (exprs!3977 List!59057)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6954))

(assert (=> start!538460 (= condSetEmpty!29404 (= baseZ!39 ((as const (Array Context!6954 Bool)) false)))))

(declare-fun setRes!29404 () Bool)

(assert (=> start!538460 setRes!29404))

(declare-fun b!5106658 () Bool)

(declare-fun tp!1424538 () Bool)

(assert (=> b!5106658 (= e!3185007 (and tp_is_empty!37459 tp!1424538))))

(declare-fun b!5106659 () Bool)

(declare-fun res!2173681 () Bool)

(declare-fun e!3185006 () Bool)

(assert (=> b!5106659 (=> (not res!2173681) (not e!3185006))))

(declare-fun lt!2102117 () Int)

(declare-fun lt!2102116 () Int)

(assert (=> b!5106659 (= res!2173681 (>= lt!2102117 lt!2102116))))

(declare-fun tp!1424537 () Bool)

(declare-fun setElem!29404 () Context!6954)

(declare-fun setNonEmpty!29404 () Bool)

(declare-fun e!3185009 () Bool)

(declare-fun inv!78413 (Context!6954) Bool)

(assert (=> setNonEmpty!29404 (= setRes!29404 (and tp!1424537 (inv!78413 setElem!29404) e!3185009))))

(declare-fun setRest!29404 () (InoxSet Context!6954))

(assert (=> setNonEmpty!29404 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6954 Bool)) false) setElem!29404 true) setRest!29404))))

(declare-fun b!5106660 () Bool)

(declare-fun res!2173684 () Bool)

(assert (=> b!5106660 (=> (not res!2173684) (not e!3185006))))

(declare-fun lt!2102118 () Int)

(assert (=> b!5106660 (= res!2173684 (not (= lt!2102117 lt!2102118)))))

(declare-fun b!5106661 () Bool)

(declare-fun res!2173685 () Bool)

(assert (=> b!5106661 (=> (not res!2173685) (not e!3185006))))

(declare-fun matchZipper!761 ((InoxSet Context!6954) List!59056) Bool)

(assert (=> b!5106661 (= res!2173685 (matchZipper!761 baseZ!39 bigger!41))))

(declare-fun b!5106662 () Bool)

(declare-fun tp!1424536 () Bool)

(assert (=> b!5106662 (= e!3185003 (and tp_is_empty!37459 tp!1424536))))

(declare-fun b!5106663 () Bool)

(declare-fun e!3185004 () Bool)

(assert (=> b!5106663 (= e!3185004 e!3185006)))

(declare-fun res!2173688 () Bool)

(assert (=> b!5106663 (=> (not res!2173688) (not e!3185006))))

(declare-datatypes ((tuple2!63572 0))(
  ( (tuple2!63573 (_1!35089 List!59056) (_2!35089 List!59056)) )
))
(declare-fun findLongestMatchInnerZipper!167 ((InoxSet Context!6954) List!59056 Int List!59056 List!59056 Int) tuple2!63572)

(declare-fun size!39399 (List!59056) Int)

(assert (=> b!5106663 (= res!2173688 (= (_1!35089 (findLongestMatchInnerZipper!167 baseZ!39 Nil!58932 lt!2102116 input!5723 input!5723 (size!39399 input!5723))) returnP!41))))

(assert (=> b!5106663 (= lt!2102116 (size!39399 Nil!58932))))

(declare-fun b!5106664 () Bool)

(assert (=> b!5106664 (= e!3185008 e!3185004)))

(declare-fun res!2173686 () Bool)

(assert (=> b!5106664 (=> (not res!2173686) (not e!3185004))))

(assert (=> b!5106664 (= res!2173686 (>= lt!2102117 lt!2102118))))

(assert (=> b!5106664 (= lt!2102118 (size!39399 returnP!41))))

(assert (=> b!5106664 (= lt!2102117 (size!39399 bigger!41))))

(declare-fun setIsEmpty!29404 () Bool)

(assert (=> setIsEmpty!29404 setRes!29404))

(declare-fun b!5106665 () Bool)

(declare-fun res!2173682 () Bool)

(assert (=> b!5106665 (=> (not res!2173682) (not e!3185006))))

(assert (=> b!5106665 (= res!2173682 (isPrefix!5498 Nil!58932 input!5723))))

(declare-fun b!5106666 () Bool)

(declare-fun tp!1424539 () Bool)

(assert (=> b!5106666 (= e!3185009 tp!1424539)))

(declare-fun b!5106667 () Bool)

(declare-fun getSuffix!3178 (List!59056 List!59056) List!59056)

(assert (=> b!5106667 (= e!3185006 (not (matchZipper!761 baseZ!39 (getSuffix!3178 bigger!41 Nil!58932))))))

(assert (=> b!5106667 (isPrefix!5498 Nil!58932 bigger!41)))

(declare-datatypes ((Unit!149984 0))(
  ( (Unit!149985) )
))
(declare-fun lt!2102115 () Unit!149984)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!643 (List!59056 List!59056 List!59056) Unit!149984)

(assert (=> b!5106667 (= lt!2102115 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!643 bigger!41 Nil!58932 input!5723))))

(assert (= (and start!538460 res!2173687) b!5106656))

(assert (= (and b!5106656 res!2173683) b!5106664))

(assert (= (and b!5106664 res!2173686) b!5106663))

(assert (= (and b!5106663 res!2173688) b!5106660))

(assert (= (and b!5106660 res!2173684) b!5106661))

(assert (= (and b!5106661 res!2173685) b!5106665))

(assert (= (and b!5106665 res!2173682) b!5106659))

(assert (= (and b!5106659 res!2173681) b!5106667))

(get-info :version)

(assert (= (and start!538460 ((_ is Cons!58932) returnP!41)) b!5106662))

(assert (= (and start!538460 ((_ is Cons!58932) input!5723)) b!5106657))

(assert (= (and start!538460 ((_ is Cons!58932) bigger!41)) b!5106658))

(assert (= (and start!538460 condSetEmpty!29404) setIsEmpty!29404))

(assert (= (and start!538460 (not condSetEmpty!29404)) setNonEmpty!29404))

(assert (= setNonEmpty!29404 b!5106666))

(declare-fun m!6163886 () Bool)

(assert (=> b!5106663 m!6163886))

(assert (=> b!5106663 m!6163886))

(declare-fun m!6163888 () Bool)

(assert (=> b!5106663 m!6163888))

(declare-fun m!6163890 () Bool)

(assert (=> b!5106663 m!6163890))

(declare-fun m!6163892 () Bool)

(assert (=> setNonEmpty!29404 m!6163892))

(declare-fun m!6163894 () Bool)

(assert (=> b!5106656 m!6163894))

(declare-fun m!6163896 () Bool)

(assert (=> b!5106667 m!6163896))

(assert (=> b!5106667 m!6163896))

(declare-fun m!6163898 () Bool)

(assert (=> b!5106667 m!6163898))

(declare-fun m!6163900 () Bool)

(assert (=> b!5106667 m!6163900))

(declare-fun m!6163902 () Bool)

(assert (=> b!5106667 m!6163902))

(declare-fun m!6163904 () Bool)

(assert (=> start!538460 m!6163904))

(declare-fun m!6163906 () Bool)

(assert (=> b!5106664 m!6163906))

(declare-fun m!6163908 () Bool)

(assert (=> b!5106664 m!6163908))

(declare-fun m!6163910 () Bool)

(assert (=> b!5106661 m!6163910))

(declare-fun m!6163912 () Bool)

(assert (=> b!5106665 m!6163912))

(check-sat (not b!5106661) (not start!538460) (not b!5106663) (not b!5106657) (not setNonEmpty!29404) tp_is_empty!37459 (not b!5106666) (not b!5106656) (not b!5106664) (not b!5106665) (not b!5106662) (not b!5106658) (not b!5106667))
(check-sat)
(get-model)

(declare-fun b!5106768 () Bool)

(declare-fun c!877235 () Bool)

(declare-fun call!355999 () Bool)

(assert (=> b!5106768 (= c!877235 call!355999)))

(declare-fun lt!2102263 () Unit!149984)

(declare-fun lt!2102261 () Unit!149984)

(assert (=> b!5106768 (= lt!2102263 lt!2102261)))

(declare-fun lt!2102258 () C!28452)

(declare-fun lt!2102279 () List!59056)

(declare-fun ++!12938 (List!59056 List!59056) List!59056)

(assert (=> b!5106768 (= (++!12938 (++!12938 Nil!58932 (Cons!58932 lt!2102258 Nil!58932)) lt!2102279) input!5723)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1532 (List!59056 C!28452 List!59056 List!59056) Unit!149984)

(assert (=> b!5106768 (= lt!2102261 (lemmaMoveElementToOtherListKeepsConcatEq!1532 Nil!58932 lt!2102258 lt!2102279 input!5723))))

(declare-fun tail!10004 (List!59056) List!59056)

(assert (=> b!5106768 (= lt!2102279 (tail!10004 input!5723))))

(declare-fun head!10849 (List!59056) C!28452)

(assert (=> b!5106768 (= lt!2102258 (head!10849 input!5723))))

(declare-fun lt!2102257 () Unit!149984)

(declare-fun lt!2102266 () Unit!149984)

(assert (=> b!5106768 (= lt!2102257 lt!2102266)))

(assert (=> b!5106768 (isPrefix!5498 (++!12938 Nil!58932 (Cons!58932 (head!10849 (getSuffix!3178 input!5723 Nil!58932)) Nil!58932)) input!5723)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!921 (List!59056 List!59056) Unit!149984)

(assert (=> b!5106768 (= lt!2102266 (lemmaAddHeadSuffixToPrefixStillPrefix!921 Nil!58932 input!5723))))

(declare-fun lt!2102282 () List!59056)

(assert (=> b!5106768 (= lt!2102282 (++!12938 Nil!58932 (Cons!58932 (head!10849 input!5723) Nil!58932)))))

(declare-fun lt!2102274 () Unit!149984)

(declare-fun e!3185073 () Unit!149984)

(assert (=> b!5106768 (= lt!2102274 e!3185073)))

(declare-fun c!877237 () Bool)

(assert (=> b!5106768 (= c!877237 (= (size!39399 Nil!58932) (size!39399 input!5723)))))

(declare-fun lt!2102264 () Unit!149984)

(declare-fun lt!2102278 () Unit!149984)

(assert (=> b!5106768 (= lt!2102264 lt!2102278)))

(assert (=> b!5106768 (<= (size!39399 Nil!58932) (size!39399 input!5723))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!847 (List!59056 List!59056) Unit!149984)

(assert (=> b!5106768 (= lt!2102278 (lemmaIsPrefixThenSmallerEqSize!847 Nil!58932 input!5723))))

(declare-fun e!3185072 () tuple2!63572)

(declare-fun e!3185074 () tuple2!63572)

(assert (=> b!5106768 (= e!3185072 e!3185074)))

(declare-fun b!5106769 () Bool)

(declare-fun e!3185071 () tuple2!63572)

(assert (=> b!5106769 (= e!3185074 e!3185071)))

(declare-fun lt!2102273 () tuple2!63572)

(declare-fun call!355994 () tuple2!63572)

(assert (=> b!5106769 (= lt!2102273 call!355994)))

(declare-fun c!877236 () Bool)

(declare-fun isEmpty!31830 (List!59056) Bool)

(assert (=> b!5106769 (= c!877236 (isEmpty!31830 (_1!35089 lt!2102273)))))

(declare-fun b!5106770 () Bool)

(declare-fun Unit!149989 () Unit!149984)

(assert (=> b!5106770 (= e!3185073 Unit!149989)))

(declare-fun lt!2102267 () Unit!149984)

(declare-fun call!356001 () Unit!149984)

(assert (=> b!5106770 (= lt!2102267 call!356001)))

(declare-fun call!355998 () Bool)

(assert (=> b!5106770 call!355998))

(declare-fun lt!2102280 () Unit!149984)

(assert (=> b!5106770 (= lt!2102280 lt!2102267)))

(declare-fun lt!2102259 () Unit!149984)

(declare-fun call!355995 () Unit!149984)

(assert (=> b!5106770 (= lt!2102259 call!355995)))

(assert (=> b!5106770 (= input!5723 Nil!58932)))

(declare-fun lt!2102268 () Unit!149984)

(assert (=> b!5106770 (= lt!2102268 lt!2102259)))

(assert (=> b!5106770 false))

(declare-fun bm!355989 () Bool)

(declare-fun nullableZipper!972 ((InoxSet Context!6954)) Bool)

(assert (=> bm!355989 (= call!355999 (nullableZipper!972 baseZ!39))))

(declare-fun b!5106771 () Bool)

(declare-fun e!3185075 () tuple2!63572)

(assert (=> b!5106771 (= e!3185075 (tuple2!63573 Nil!58932 input!5723))))

(declare-fun b!5106772 () Bool)

(assert (=> b!5106772 (= e!3185075 (tuple2!63573 Nil!58932 Nil!58932))))

(declare-fun bm!355990 () Bool)

(declare-fun lemmaIsPrefixRefl!3693 (List!59056 List!59056) Unit!149984)

(assert (=> bm!355990 (= call!356001 (lemmaIsPrefixRefl!3693 input!5723 input!5723))))

(declare-fun bm!355992 () Bool)

(declare-fun call!355997 () (InoxSet Context!6954))

(declare-fun call!356000 () C!28452)

(declare-fun derivationStepZipper!760 ((InoxSet Context!6954) C!28452) (InoxSet Context!6954))

(assert (=> bm!355992 (= call!355997 (derivationStepZipper!760 baseZ!39 call!356000))))

(declare-fun b!5106773 () Bool)

(assert (=> b!5106773 (= e!3185071 lt!2102273)))

(declare-fun bm!355993 () Bool)

(assert (=> bm!355993 (= call!355998 (isPrefix!5498 input!5723 input!5723))))

(declare-fun b!5106774 () Bool)

(assert (=> b!5106774 (= e!3185074 call!355994)))

(declare-fun bm!355994 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1323 (List!59056 List!59056 List!59056) Unit!149984)

(assert (=> bm!355994 (= call!355995 (lemmaIsPrefixSameLengthThenSameList!1323 input!5723 Nil!58932 input!5723))))

(declare-fun b!5106775 () Bool)

(declare-fun e!3185069 () tuple2!63572)

(assert (=> b!5106775 (= e!3185069 (tuple2!63573 Nil!58932 input!5723))))

(declare-fun b!5106776 () Bool)

(declare-fun c!877238 () Bool)

(assert (=> b!5106776 (= c!877238 call!355999)))

(declare-fun lt!2102270 () Unit!149984)

(declare-fun lt!2102272 () Unit!149984)

(assert (=> b!5106776 (= lt!2102270 lt!2102272)))

(assert (=> b!5106776 (= input!5723 Nil!58932)))

(assert (=> b!5106776 (= lt!2102272 call!355995)))

(declare-fun lt!2102271 () Unit!149984)

(declare-fun lt!2102276 () Unit!149984)

(assert (=> b!5106776 (= lt!2102271 lt!2102276)))

(assert (=> b!5106776 call!355998))

(assert (=> b!5106776 (= lt!2102276 call!356001)))

(assert (=> b!5106776 (= e!3185072 e!3185075)))

(declare-fun b!5106777 () Bool)

(declare-fun e!3185070 () Bool)

(declare-fun lt!2102281 () tuple2!63572)

(assert (=> b!5106777 (= e!3185070 (>= (size!39399 (_1!35089 lt!2102281)) (size!39399 Nil!58932)))))

(declare-fun bm!355995 () Bool)

(declare-fun call!355996 () List!59056)

(assert (=> bm!355995 (= call!355994 (findLongestMatchInnerZipper!167 call!355997 lt!2102282 (+ lt!2102116 1) call!355996 input!5723 (size!39399 input!5723)))))

(declare-fun b!5106778 () Bool)

(assert (=> b!5106778 (= e!3185071 (tuple2!63573 Nil!58932 input!5723))))

(declare-fun b!5106779 () Bool)

(declare-fun e!3185076 () Bool)

(assert (=> b!5106779 (= e!3185076 e!3185070)))

(declare-fun res!2173715 () Bool)

(assert (=> b!5106779 (=> res!2173715 e!3185070)))

(assert (=> b!5106779 (= res!2173715 (isEmpty!31830 (_1!35089 lt!2102281)))))

(declare-fun b!5106780 () Bool)

(declare-fun Unit!149990 () Unit!149984)

(assert (=> b!5106780 (= e!3185073 Unit!149990)))

(declare-fun b!5106781 () Bool)

(assert (=> b!5106781 (= e!3185069 e!3185072)))

(declare-fun c!877239 () Bool)

(assert (=> b!5106781 (= c!877239 (= lt!2102116 (size!39399 input!5723)))))

(declare-fun bm!355996 () Bool)

(assert (=> bm!355996 (= call!355996 (tail!10004 input!5723))))

(declare-fun d!1650770 () Bool)

(assert (=> d!1650770 e!3185076))

(declare-fun res!2173716 () Bool)

(assert (=> d!1650770 (=> (not res!2173716) (not e!3185076))))

(assert (=> d!1650770 (= res!2173716 (= (++!12938 (_1!35089 lt!2102281) (_2!35089 lt!2102281)) input!5723))))

(assert (=> d!1650770 (= lt!2102281 e!3185069)))

(declare-fun c!877240 () Bool)

(declare-fun lostCauseZipper!987 ((InoxSet Context!6954)) Bool)

(assert (=> d!1650770 (= c!877240 (lostCauseZipper!987 baseZ!39))))

(declare-fun lt!2102277 () Unit!149984)

(declare-fun Unit!149991 () Unit!149984)

(assert (=> d!1650770 (= lt!2102277 Unit!149991)))

(assert (=> d!1650770 (= (getSuffix!3178 input!5723 Nil!58932) input!5723)))

(declare-fun lt!2102262 () Unit!149984)

(declare-fun lt!2102260 () Unit!149984)

(assert (=> d!1650770 (= lt!2102262 lt!2102260)))

(declare-fun lt!2102269 () List!59056)

(assert (=> d!1650770 (= input!5723 lt!2102269)))

(declare-fun lemmaSamePrefixThenSameSuffix!2594 (List!59056 List!59056 List!59056 List!59056 List!59056) Unit!149984)

(assert (=> d!1650770 (= lt!2102260 (lemmaSamePrefixThenSameSuffix!2594 Nil!58932 input!5723 Nil!58932 lt!2102269 input!5723))))

(assert (=> d!1650770 (= lt!2102269 (getSuffix!3178 input!5723 Nil!58932))))

(declare-fun lt!2102275 () Unit!149984)

(declare-fun lt!2102265 () Unit!149984)

(assert (=> d!1650770 (= lt!2102275 lt!2102265)))

(assert (=> d!1650770 (isPrefix!5498 Nil!58932 (++!12938 Nil!58932 input!5723))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3544 (List!59056 List!59056) Unit!149984)

(assert (=> d!1650770 (= lt!2102265 (lemmaConcatTwoListThenFirstIsPrefix!3544 Nil!58932 input!5723))))

(assert (=> d!1650770 (= (++!12938 Nil!58932 input!5723) input!5723)))

(assert (=> d!1650770 (= (findLongestMatchInnerZipper!167 baseZ!39 Nil!58932 lt!2102116 input!5723 input!5723 (size!39399 input!5723)) lt!2102281)))

(declare-fun bm!355991 () Bool)

(assert (=> bm!355991 (= call!356000 (head!10849 input!5723))))

(assert (= (and d!1650770 c!877240) b!5106775))

(assert (= (and d!1650770 (not c!877240)) b!5106781))

(assert (= (and b!5106781 c!877239) b!5106776))

(assert (= (and b!5106781 (not c!877239)) b!5106768))

(assert (= (and b!5106776 c!877238) b!5106772))

(assert (= (and b!5106776 (not c!877238)) b!5106771))

(assert (= (and b!5106768 c!877237) b!5106770))

(assert (= (and b!5106768 (not c!877237)) b!5106780))

(assert (= (and b!5106768 c!877235) b!5106769))

(assert (= (and b!5106768 (not c!877235)) b!5106774))

(assert (= (and b!5106769 c!877236) b!5106778))

(assert (= (and b!5106769 (not c!877236)) b!5106773))

(assert (= (or b!5106769 b!5106774) bm!355991))

(assert (= (or b!5106769 b!5106774) bm!355996))

(assert (= (or b!5106769 b!5106774) bm!355992))

(assert (= (or b!5106769 b!5106774) bm!355995))

(assert (= (or b!5106776 b!5106768) bm!355989))

(assert (= (or b!5106776 b!5106770) bm!355990))

(assert (= (or b!5106776 b!5106770) bm!355993))

(assert (= (or b!5106776 b!5106770) bm!355994))

(assert (= (and d!1650770 res!2173716) b!5106779))

(assert (= (and b!5106779 (not res!2173715)) b!5106777))

(declare-fun m!6163990 () Bool)

(assert (=> bm!355996 m!6163990))

(declare-fun m!6163992 () Bool)

(assert (=> bm!355994 m!6163992))

(declare-fun m!6163994 () Bool)

(assert (=> bm!355989 m!6163994))

(declare-fun m!6163996 () Bool)

(assert (=> bm!355992 m!6163996))

(declare-fun m!6163998 () Bool)

(assert (=> b!5106779 m!6163998))

(declare-fun m!6164000 () Bool)

(assert (=> bm!355990 m!6164000))

(assert (=> bm!355995 m!6163886))

(declare-fun m!6164002 () Bool)

(assert (=> bm!355995 m!6164002))

(declare-fun m!6164004 () Bool)

(assert (=> b!5106777 m!6164004))

(assert (=> b!5106777 m!6163890))

(declare-fun m!6164006 () Bool)

(assert (=> bm!355991 m!6164006))

(declare-fun m!6164008 () Bool)

(assert (=> b!5106769 m!6164008))

(declare-fun m!6164010 () Bool)

(assert (=> d!1650770 m!6164010))

(declare-fun m!6164012 () Bool)

(assert (=> d!1650770 m!6164012))

(declare-fun m!6164014 () Bool)

(assert (=> d!1650770 m!6164014))

(assert (=> d!1650770 m!6164014))

(declare-fun m!6164016 () Bool)

(assert (=> d!1650770 m!6164016))

(declare-fun m!6164018 () Bool)

(assert (=> d!1650770 m!6164018))

(declare-fun m!6164020 () Bool)

(assert (=> d!1650770 m!6164020))

(declare-fun m!6164022 () Bool)

(assert (=> d!1650770 m!6164022))

(declare-fun m!6164024 () Bool)

(assert (=> bm!355993 m!6164024))

(declare-fun m!6164026 () Bool)

(assert (=> b!5106768 m!6164026))

(declare-fun m!6164028 () Bool)

(assert (=> b!5106768 m!6164028))

(declare-fun m!6164030 () Bool)

(assert (=> b!5106768 m!6164030))

(declare-fun m!6164032 () Bool)

(assert (=> b!5106768 m!6164032))

(assert (=> b!5106768 m!6164006))

(assert (=> b!5106768 m!6163990))

(assert (=> b!5106768 m!6163886))

(assert (=> b!5106768 m!6164012))

(declare-fun m!6164034 () Bool)

(assert (=> b!5106768 m!6164034))

(declare-fun m!6164036 () Bool)

(assert (=> b!5106768 m!6164036))

(declare-fun m!6164038 () Bool)

(assert (=> b!5106768 m!6164038))

(assert (=> b!5106768 m!6164012))

(assert (=> b!5106768 m!6164038))

(declare-fun m!6164040 () Bool)

(assert (=> b!5106768 m!6164040))

(assert (=> b!5106768 m!6164028))

(declare-fun m!6164042 () Bool)

(assert (=> b!5106768 m!6164042))

(assert (=> b!5106768 m!6163890))

(assert (=> b!5106663 d!1650770))

(declare-fun d!1650786 () Bool)

(declare-fun lt!2102285 () Int)

(assert (=> d!1650786 (>= lt!2102285 0)))

(declare-fun e!3185079 () Int)

(assert (=> d!1650786 (= lt!2102285 e!3185079)))

(declare-fun c!877243 () Bool)

(assert (=> d!1650786 (= c!877243 ((_ is Nil!58932) input!5723))))

(assert (=> d!1650786 (= (size!39399 input!5723) lt!2102285)))

(declare-fun b!5106786 () Bool)

(assert (=> b!5106786 (= e!3185079 0)))

(declare-fun b!5106787 () Bool)

(assert (=> b!5106787 (= e!3185079 (+ 1 (size!39399 (t!372057 input!5723))))))

(assert (= (and d!1650786 c!877243) b!5106786))

(assert (= (and d!1650786 (not c!877243)) b!5106787))

(declare-fun m!6164044 () Bool)

(assert (=> b!5106787 m!6164044))

(assert (=> b!5106663 d!1650786))

(declare-fun d!1650788 () Bool)

(declare-fun lt!2102286 () Int)

(assert (=> d!1650788 (>= lt!2102286 0)))

(declare-fun e!3185080 () Int)

(assert (=> d!1650788 (= lt!2102286 e!3185080)))

(declare-fun c!877244 () Bool)

(assert (=> d!1650788 (= c!877244 ((_ is Nil!58932) Nil!58932))))

(assert (=> d!1650788 (= (size!39399 Nil!58932) lt!2102286)))

(declare-fun b!5106788 () Bool)

(assert (=> b!5106788 (= e!3185080 0)))

(declare-fun b!5106789 () Bool)

(assert (=> b!5106789 (= e!3185080 (+ 1 (size!39399 (t!372057 Nil!58932))))))

(assert (= (and d!1650788 c!877244) b!5106788))

(assert (= (and d!1650788 (not c!877244)) b!5106789))

(declare-fun m!6164046 () Bool)

(assert (=> b!5106789 m!6164046))

(assert (=> b!5106663 d!1650788))

(declare-fun d!1650790 () Bool)

(declare-fun c!877247 () Bool)

(assert (=> d!1650790 (= c!877247 (isEmpty!31830 (getSuffix!3178 bigger!41 Nil!58932)))))

(declare-fun e!3185083 () Bool)

(assert (=> d!1650790 (= (matchZipper!761 baseZ!39 (getSuffix!3178 bigger!41 Nil!58932)) e!3185083)))

(declare-fun b!5106794 () Bool)

(assert (=> b!5106794 (= e!3185083 (nullableZipper!972 baseZ!39))))

(declare-fun b!5106795 () Bool)

(assert (=> b!5106795 (= e!3185083 (matchZipper!761 (derivationStepZipper!760 baseZ!39 (head!10849 (getSuffix!3178 bigger!41 Nil!58932))) (tail!10004 (getSuffix!3178 bigger!41 Nil!58932))))))

(assert (= (and d!1650790 c!877247) b!5106794))

(assert (= (and d!1650790 (not c!877247)) b!5106795))

(assert (=> d!1650790 m!6163896))

(declare-fun m!6164048 () Bool)

(assert (=> d!1650790 m!6164048))

(assert (=> b!5106794 m!6163994))

(assert (=> b!5106795 m!6163896))

(declare-fun m!6164050 () Bool)

(assert (=> b!5106795 m!6164050))

(assert (=> b!5106795 m!6164050))

(declare-fun m!6164052 () Bool)

(assert (=> b!5106795 m!6164052))

(assert (=> b!5106795 m!6163896))

(declare-fun m!6164054 () Bool)

(assert (=> b!5106795 m!6164054))

(assert (=> b!5106795 m!6164052))

(assert (=> b!5106795 m!6164054))

(declare-fun m!6164056 () Bool)

(assert (=> b!5106795 m!6164056))

(assert (=> b!5106667 d!1650790))

(declare-fun d!1650792 () Bool)

(declare-fun lt!2102289 () List!59056)

(assert (=> d!1650792 (= (++!12938 Nil!58932 lt!2102289) bigger!41)))

(declare-fun e!3185086 () List!59056)

(assert (=> d!1650792 (= lt!2102289 e!3185086)))

(declare-fun c!877250 () Bool)

(assert (=> d!1650792 (= c!877250 ((_ is Cons!58932) Nil!58932))))

(assert (=> d!1650792 (>= (size!39399 bigger!41) (size!39399 Nil!58932))))

(assert (=> d!1650792 (= (getSuffix!3178 bigger!41 Nil!58932) lt!2102289)))

(declare-fun b!5106800 () Bool)

(assert (=> b!5106800 (= e!3185086 (getSuffix!3178 (tail!10004 bigger!41) (t!372057 Nil!58932)))))

(declare-fun b!5106801 () Bool)

(assert (=> b!5106801 (= e!3185086 bigger!41)))

(assert (= (and d!1650792 c!877250) b!5106800))

(assert (= (and d!1650792 (not c!877250)) b!5106801))

(declare-fun m!6164058 () Bool)

(assert (=> d!1650792 m!6164058))

(assert (=> d!1650792 m!6163908))

(assert (=> d!1650792 m!6163890))

(declare-fun m!6164060 () Bool)

(assert (=> b!5106800 m!6164060))

(assert (=> b!5106800 m!6164060))

(declare-fun m!6164062 () Bool)

(assert (=> b!5106800 m!6164062))

(assert (=> b!5106667 d!1650792))

(declare-fun d!1650794 () Bool)

(declare-fun e!3185093 () Bool)

(assert (=> d!1650794 e!3185093))

(declare-fun res!2173726 () Bool)

(assert (=> d!1650794 (=> res!2173726 e!3185093)))

(declare-fun lt!2102292 () Bool)

(assert (=> d!1650794 (= res!2173726 (not lt!2102292))))

(declare-fun e!3185095 () Bool)

(assert (=> d!1650794 (= lt!2102292 e!3185095)))

(declare-fun res!2173725 () Bool)

(assert (=> d!1650794 (=> res!2173725 e!3185095)))

(assert (=> d!1650794 (= res!2173725 ((_ is Nil!58932) Nil!58932))))

(assert (=> d!1650794 (= (isPrefix!5498 Nil!58932 bigger!41) lt!2102292)))

(declare-fun b!5106811 () Bool)

(declare-fun res!2173728 () Bool)

(declare-fun e!3185094 () Bool)

(assert (=> b!5106811 (=> (not res!2173728) (not e!3185094))))

(assert (=> b!5106811 (= res!2173728 (= (head!10849 Nil!58932) (head!10849 bigger!41)))))

(declare-fun b!5106813 () Bool)

(assert (=> b!5106813 (= e!3185093 (>= (size!39399 bigger!41) (size!39399 Nil!58932)))))

(declare-fun b!5106810 () Bool)

(assert (=> b!5106810 (= e!3185095 e!3185094)))

(declare-fun res!2173727 () Bool)

(assert (=> b!5106810 (=> (not res!2173727) (not e!3185094))))

(assert (=> b!5106810 (= res!2173727 (not ((_ is Nil!58932) bigger!41)))))

(declare-fun b!5106812 () Bool)

(assert (=> b!5106812 (= e!3185094 (isPrefix!5498 (tail!10004 Nil!58932) (tail!10004 bigger!41)))))

(assert (= (and d!1650794 (not res!2173725)) b!5106810))

(assert (= (and b!5106810 res!2173727) b!5106811))

(assert (= (and b!5106811 res!2173728) b!5106812))

(assert (= (and d!1650794 (not res!2173726)) b!5106813))

(declare-fun m!6164064 () Bool)

(assert (=> b!5106811 m!6164064))

(declare-fun m!6164066 () Bool)

(assert (=> b!5106811 m!6164066))

(assert (=> b!5106813 m!6163908))

(assert (=> b!5106813 m!6163890))

(declare-fun m!6164068 () Bool)

(assert (=> b!5106812 m!6164068))

(assert (=> b!5106812 m!6164060))

(assert (=> b!5106812 m!6164068))

(assert (=> b!5106812 m!6164060))

(declare-fun m!6164070 () Bool)

(assert (=> b!5106812 m!6164070))

(assert (=> b!5106667 d!1650794))

(declare-fun d!1650796 () Bool)

(assert (=> d!1650796 (isPrefix!5498 Nil!58932 bigger!41)))

(declare-fun lt!2102295 () Unit!149984)

(declare-fun choose!37414 (List!59056 List!59056 List!59056) Unit!149984)

(assert (=> d!1650796 (= lt!2102295 (choose!37414 bigger!41 Nil!58932 input!5723))))

(assert (=> d!1650796 (isPrefix!5498 bigger!41 input!5723)))

(assert (=> d!1650796 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!643 bigger!41 Nil!58932 input!5723) lt!2102295)))

(declare-fun bs!1191654 () Bool)

(assert (= bs!1191654 d!1650796))

(assert (=> bs!1191654 m!6163900))

(declare-fun m!6164072 () Bool)

(assert (=> bs!1191654 m!6164072))

(assert (=> bs!1191654 m!6163894))

(assert (=> b!5106667 d!1650796))

(declare-fun d!1650798 () Bool)

(declare-fun e!3185096 () Bool)

(assert (=> d!1650798 e!3185096))

(declare-fun res!2173730 () Bool)

(assert (=> d!1650798 (=> res!2173730 e!3185096)))

(declare-fun lt!2102296 () Bool)

(assert (=> d!1650798 (= res!2173730 (not lt!2102296))))

(declare-fun e!3185098 () Bool)

(assert (=> d!1650798 (= lt!2102296 e!3185098)))

(declare-fun res!2173729 () Bool)

(assert (=> d!1650798 (=> res!2173729 e!3185098)))

(assert (=> d!1650798 (= res!2173729 ((_ is Nil!58932) returnP!41))))

(assert (=> d!1650798 (= (isPrefix!5498 returnP!41 input!5723) lt!2102296)))

(declare-fun b!5106815 () Bool)

(declare-fun res!2173732 () Bool)

(declare-fun e!3185097 () Bool)

(assert (=> b!5106815 (=> (not res!2173732) (not e!3185097))))

(assert (=> b!5106815 (= res!2173732 (= (head!10849 returnP!41) (head!10849 input!5723)))))

(declare-fun b!5106817 () Bool)

(assert (=> b!5106817 (= e!3185096 (>= (size!39399 input!5723) (size!39399 returnP!41)))))

(declare-fun b!5106814 () Bool)

(assert (=> b!5106814 (= e!3185098 e!3185097)))

(declare-fun res!2173731 () Bool)

(assert (=> b!5106814 (=> (not res!2173731) (not e!3185097))))

(assert (=> b!5106814 (= res!2173731 (not ((_ is Nil!58932) input!5723)))))

(declare-fun b!5106816 () Bool)

(assert (=> b!5106816 (= e!3185097 (isPrefix!5498 (tail!10004 returnP!41) (tail!10004 input!5723)))))

(assert (= (and d!1650798 (not res!2173729)) b!5106814))

(assert (= (and b!5106814 res!2173731) b!5106815))

(assert (= (and b!5106815 res!2173732) b!5106816))

(assert (= (and d!1650798 (not res!2173730)) b!5106817))

(declare-fun m!6164074 () Bool)

(assert (=> b!5106815 m!6164074))

(assert (=> b!5106815 m!6164006))

(assert (=> b!5106817 m!6163886))

(assert (=> b!5106817 m!6163906))

(declare-fun m!6164076 () Bool)

(assert (=> b!5106816 m!6164076))

(assert (=> b!5106816 m!6163990))

(assert (=> b!5106816 m!6164076))

(assert (=> b!5106816 m!6163990))

(declare-fun m!6164078 () Bool)

(assert (=> b!5106816 m!6164078))

(assert (=> start!538460 d!1650798))

(declare-fun d!1650800 () Bool)

(declare-fun c!877251 () Bool)

(assert (=> d!1650800 (= c!877251 (isEmpty!31830 bigger!41))))

(declare-fun e!3185099 () Bool)

(assert (=> d!1650800 (= (matchZipper!761 baseZ!39 bigger!41) e!3185099)))

(declare-fun b!5106818 () Bool)

(assert (=> b!5106818 (= e!3185099 (nullableZipper!972 baseZ!39))))

(declare-fun b!5106819 () Bool)

(assert (=> b!5106819 (= e!3185099 (matchZipper!761 (derivationStepZipper!760 baseZ!39 (head!10849 bigger!41)) (tail!10004 bigger!41)))))

(assert (= (and d!1650800 c!877251) b!5106818))

(assert (= (and d!1650800 (not c!877251)) b!5106819))

(declare-fun m!6164080 () Bool)

(assert (=> d!1650800 m!6164080))

(assert (=> b!5106818 m!6163994))

(assert (=> b!5106819 m!6164066))

(assert (=> b!5106819 m!6164066))

(declare-fun m!6164082 () Bool)

(assert (=> b!5106819 m!6164082))

(assert (=> b!5106819 m!6164060))

(assert (=> b!5106819 m!6164082))

(assert (=> b!5106819 m!6164060))

(declare-fun m!6164084 () Bool)

(assert (=> b!5106819 m!6164084))

(assert (=> b!5106661 d!1650800))

(declare-fun d!1650802 () Bool)

(declare-fun e!3185100 () Bool)

(assert (=> d!1650802 e!3185100))

(declare-fun res!2173734 () Bool)

(assert (=> d!1650802 (=> res!2173734 e!3185100)))

(declare-fun lt!2102297 () Bool)

(assert (=> d!1650802 (= res!2173734 (not lt!2102297))))

(declare-fun e!3185102 () Bool)

(assert (=> d!1650802 (= lt!2102297 e!3185102)))

(declare-fun res!2173733 () Bool)

(assert (=> d!1650802 (=> res!2173733 e!3185102)))

(assert (=> d!1650802 (= res!2173733 ((_ is Nil!58932) Nil!58932))))

(assert (=> d!1650802 (= (isPrefix!5498 Nil!58932 input!5723) lt!2102297)))

(declare-fun b!5106821 () Bool)

(declare-fun res!2173736 () Bool)

(declare-fun e!3185101 () Bool)

(assert (=> b!5106821 (=> (not res!2173736) (not e!3185101))))

(assert (=> b!5106821 (= res!2173736 (= (head!10849 Nil!58932) (head!10849 input!5723)))))

(declare-fun b!5106823 () Bool)

(assert (=> b!5106823 (= e!3185100 (>= (size!39399 input!5723) (size!39399 Nil!58932)))))

(declare-fun b!5106820 () Bool)

(assert (=> b!5106820 (= e!3185102 e!3185101)))

(declare-fun res!2173735 () Bool)

(assert (=> b!5106820 (=> (not res!2173735) (not e!3185101))))

(assert (=> b!5106820 (= res!2173735 (not ((_ is Nil!58932) input!5723)))))

(declare-fun b!5106822 () Bool)

(assert (=> b!5106822 (= e!3185101 (isPrefix!5498 (tail!10004 Nil!58932) (tail!10004 input!5723)))))

(assert (= (and d!1650802 (not res!2173733)) b!5106820))

(assert (= (and b!5106820 res!2173735) b!5106821))

(assert (= (and b!5106821 res!2173736) b!5106822))

(assert (= (and d!1650802 (not res!2173734)) b!5106823))

(assert (=> b!5106821 m!6164064))

(assert (=> b!5106821 m!6164006))

(assert (=> b!5106823 m!6163886))

(assert (=> b!5106823 m!6163890))

(assert (=> b!5106822 m!6164068))

(assert (=> b!5106822 m!6163990))

(assert (=> b!5106822 m!6164068))

(assert (=> b!5106822 m!6163990))

(declare-fun m!6164086 () Bool)

(assert (=> b!5106822 m!6164086))

(assert (=> b!5106665 d!1650802))

(declare-fun d!1650804 () Bool)

(declare-fun e!3185103 () Bool)

(assert (=> d!1650804 e!3185103))

(declare-fun res!2173738 () Bool)

(assert (=> d!1650804 (=> res!2173738 e!3185103)))

(declare-fun lt!2102298 () Bool)

(assert (=> d!1650804 (= res!2173738 (not lt!2102298))))

(declare-fun e!3185105 () Bool)

(assert (=> d!1650804 (= lt!2102298 e!3185105)))

(declare-fun res!2173737 () Bool)

(assert (=> d!1650804 (=> res!2173737 e!3185105)))

(assert (=> d!1650804 (= res!2173737 ((_ is Nil!58932) bigger!41))))

(assert (=> d!1650804 (= (isPrefix!5498 bigger!41 input!5723) lt!2102298)))

(declare-fun b!5106825 () Bool)

(declare-fun res!2173740 () Bool)

(declare-fun e!3185104 () Bool)

(assert (=> b!5106825 (=> (not res!2173740) (not e!3185104))))

(assert (=> b!5106825 (= res!2173740 (= (head!10849 bigger!41) (head!10849 input!5723)))))

(declare-fun b!5106827 () Bool)

(assert (=> b!5106827 (= e!3185103 (>= (size!39399 input!5723) (size!39399 bigger!41)))))

(declare-fun b!5106824 () Bool)

(assert (=> b!5106824 (= e!3185105 e!3185104)))

(declare-fun res!2173739 () Bool)

(assert (=> b!5106824 (=> (not res!2173739) (not e!3185104))))

(assert (=> b!5106824 (= res!2173739 (not ((_ is Nil!58932) input!5723)))))

(declare-fun b!5106826 () Bool)

(assert (=> b!5106826 (= e!3185104 (isPrefix!5498 (tail!10004 bigger!41) (tail!10004 input!5723)))))

(assert (= (and d!1650804 (not res!2173737)) b!5106824))

(assert (= (and b!5106824 res!2173739) b!5106825))

(assert (= (and b!5106825 res!2173740) b!5106826))

(assert (= (and d!1650804 (not res!2173738)) b!5106827))

(assert (=> b!5106825 m!6164066))

(assert (=> b!5106825 m!6164006))

(assert (=> b!5106827 m!6163886))

(assert (=> b!5106827 m!6163908))

(assert (=> b!5106826 m!6164060))

(assert (=> b!5106826 m!6163990))

(assert (=> b!5106826 m!6164060))

(assert (=> b!5106826 m!6163990))

(declare-fun m!6164088 () Bool)

(assert (=> b!5106826 m!6164088))

(assert (=> b!5106656 d!1650804))

(declare-fun d!1650806 () Bool)

(declare-fun lambda!250002 () Int)

(declare-fun forall!13501 (List!59057 Int) Bool)

(assert (=> d!1650806 (= (inv!78413 setElem!29404) (forall!13501 (exprs!3977 setElem!29404) lambda!250002))))

(declare-fun bs!1191657 () Bool)

(assert (= bs!1191657 d!1650806))

(declare-fun m!6164122 () Bool)

(assert (=> bs!1191657 m!6164122))

(assert (=> setNonEmpty!29404 d!1650806))

(declare-fun d!1650822 () Bool)

(declare-fun lt!2102309 () Int)

(assert (=> d!1650822 (>= lt!2102309 0)))

(declare-fun e!3185129 () Int)

(assert (=> d!1650822 (= lt!2102309 e!3185129)))

(declare-fun c!877258 () Bool)

(assert (=> d!1650822 (= c!877258 ((_ is Nil!58932) returnP!41))))

(assert (=> d!1650822 (= (size!39399 returnP!41) lt!2102309)))

(declare-fun b!5106865 () Bool)

(assert (=> b!5106865 (= e!3185129 0)))

(declare-fun b!5106866 () Bool)

(assert (=> b!5106866 (= e!3185129 (+ 1 (size!39399 (t!372057 returnP!41))))))

(assert (= (and d!1650822 c!877258) b!5106865))

(assert (= (and d!1650822 (not c!877258)) b!5106866))

(declare-fun m!6164124 () Bool)

(assert (=> b!5106866 m!6164124))

(assert (=> b!5106664 d!1650822))

(declare-fun d!1650824 () Bool)

(declare-fun lt!2102310 () Int)

(assert (=> d!1650824 (>= lt!2102310 0)))

(declare-fun e!3185130 () Int)

(assert (=> d!1650824 (= lt!2102310 e!3185130)))

(declare-fun c!877259 () Bool)

(assert (=> d!1650824 (= c!877259 ((_ is Nil!58932) bigger!41))))

(assert (=> d!1650824 (= (size!39399 bigger!41) lt!2102310)))

(declare-fun b!5106867 () Bool)

(assert (=> b!5106867 (= e!3185130 0)))

(declare-fun b!5106868 () Bool)

(assert (=> b!5106868 (= e!3185130 (+ 1 (size!39399 (t!372057 bigger!41))))))

(assert (= (and d!1650824 c!877259) b!5106867))

(assert (= (and d!1650824 (not c!877259)) b!5106868))

(declare-fun m!6164126 () Bool)

(assert (=> b!5106868 m!6164126))

(assert (=> b!5106664 d!1650824))

(declare-fun b!5106873 () Bool)

(declare-fun e!3185133 () Bool)

(declare-fun tp!1424559 () Bool)

(assert (=> b!5106873 (= e!3185133 (and tp_is_empty!37459 tp!1424559))))

(assert (=> b!5106658 (= tp!1424538 e!3185133)))

(assert (= (and b!5106658 ((_ is Cons!58932) (t!372057 bigger!41))) b!5106873))

(declare-fun b!5106874 () Bool)

(declare-fun e!3185134 () Bool)

(declare-fun tp!1424560 () Bool)

(assert (=> b!5106874 (= e!3185134 (and tp_is_empty!37459 tp!1424560))))

(assert (=> b!5106662 (= tp!1424536 e!3185134)))

(assert (= (and b!5106662 ((_ is Cons!58932) (t!372057 returnP!41))) b!5106874))

(declare-fun b!5106879 () Bool)

(declare-fun e!3185137 () Bool)

(declare-fun tp!1424565 () Bool)

(declare-fun tp!1424566 () Bool)

(assert (=> b!5106879 (= e!3185137 (and tp!1424565 tp!1424566))))

(assert (=> b!5106666 (= tp!1424539 e!3185137)))

(assert (= (and b!5106666 ((_ is Cons!58933) (exprs!3977 setElem!29404))) b!5106879))

(declare-fun b!5106880 () Bool)

(declare-fun e!3185138 () Bool)

(declare-fun tp!1424567 () Bool)

(assert (=> b!5106880 (= e!3185138 (and tp_is_empty!37459 tp!1424567))))

(assert (=> b!5106657 (= tp!1424535 e!3185138)))

(assert (= (and b!5106657 ((_ is Cons!58932) (t!372057 input!5723))) b!5106880))

(declare-fun condSetEmpty!29410 () Bool)

(assert (=> setNonEmpty!29404 (= condSetEmpty!29410 (= setRest!29404 ((as const (Array Context!6954 Bool)) false)))))

(declare-fun setRes!29410 () Bool)

(assert (=> setNonEmpty!29404 (= tp!1424537 setRes!29410)))

(declare-fun setIsEmpty!29410 () Bool)

(assert (=> setIsEmpty!29410 setRes!29410))

(declare-fun tp!1424572 () Bool)

(declare-fun setNonEmpty!29410 () Bool)

(declare-fun e!3185141 () Bool)

(declare-fun setElem!29410 () Context!6954)

(assert (=> setNonEmpty!29410 (= setRes!29410 (and tp!1424572 (inv!78413 setElem!29410) e!3185141))))

(declare-fun setRest!29410 () (InoxSet Context!6954))

(assert (=> setNonEmpty!29410 (= setRest!29404 ((_ map or) (store ((as const (Array Context!6954 Bool)) false) setElem!29410 true) setRest!29410))))

(declare-fun b!5106885 () Bool)

(declare-fun tp!1424573 () Bool)

(assert (=> b!5106885 (= e!3185141 tp!1424573)))

(assert (= (and setNonEmpty!29404 condSetEmpty!29410) setIsEmpty!29410))

(assert (= (and setNonEmpty!29404 (not condSetEmpty!29410)) setNonEmpty!29410))

(assert (= setNonEmpty!29410 b!5106885))

(declare-fun m!6164128 () Bool)

(assert (=> setNonEmpty!29410 m!6164128))

(check-sat (not b!5106769) (not b!5106827) (not b!5106779) (not d!1650796) (not b!5106777) (not b!5106789) (not bm!355989) tp_is_empty!37459 (not b!5106874) (not b!5106825) (not d!1650800) (not b!5106826) (not b!5106818) (not b!5106815) (not d!1650792) (not b!5106813) (not b!5106880) (not d!1650806) (not b!5106816) (not d!1650770) (not bm!355991) (not bm!355995) (not b!5106873) (not b!5106885) (not b!5106866) (not b!5106794) (not b!5106811) (not bm!355992) (not setNonEmpty!29410) (not b!5106768) (not b!5106879) (not b!5106795) (not d!1650790) (not b!5106822) (not bm!355993) (not b!5106823) (not b!5106787) (not bm!355996) (not bm!355994) (not b!5106800) (not b!5106821) (not b!5106817) (not b!5106819) (not b!5106868) (not bm!355990) (not b!5106812))
(check-sat)
