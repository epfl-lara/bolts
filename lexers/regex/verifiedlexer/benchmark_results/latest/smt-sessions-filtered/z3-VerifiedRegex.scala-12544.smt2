; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!696644 () Bool)

(assert start!696644)

(declare-fun b!7144983 () Bool)

(assert (=> b!7144983 true))

(declare-fun bs!1889012 () Bool)

(declare-fun b!7144975 () Bool)

(assert (= bs!1889012 (and b!7144975 b!7144983)))

(declare-fun lambda!435528 () Int)

(declare-fun lambda!435527 () Int)

(assert (=> bs!1889012 (not (= lambda!435528 lambda!435527))))

(declare-fun b!7144973 () Bool)

(declare-fun e!4293804 () Bool)

(declare-fun tp!1970977 () Bool)

(declare-fun tp!1970980 () Bool)

(assert (=> b!7144973 (= e!4293804 (and tp!1970977 tp!1970980))))

(declare-fun b!7144974 () Bool)

(declare-fun tp_is_empty!46031 () Bool)

(assert (=> b!7144974 (= e!4293804 tp_is_empty!46031)))

(declare-fun e!4293805 () Bool)

(declare-fun e!4293799 () Bool)

(assert (=> b!7144975 (= e!4293805 e!4293799)))

(declare-fun res!2915204 () Bool)

(assert (=> b!7144975 (=> res!2915204 e!4293799)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36668 0))(
  ( (C!36669 (val!28282 Int)) )
))
(declare-datatypes ((Regex!18197 0))(
  ( (ElementMatch!18197 (c!1332450 C!36668)) (Concat!27042 (regOne!36906 Regex!18197) (regTwo!36906 Regex!18197)) (EmptyExpr!18197) (Star!18197 (reg!18526 Regex!18197)) (EmptyLang!18197) (Union!18197 (regOne!36907 Regex!18197) (regTwo!36907 Regex!18197)) )
))
(declare-datatypes ((List!69472 0))(
  ( (Nil!69348) (Cons!69348 (h!75796 Regex!18197) (t!383489 List!69472)) )
))
(declare-datatypes ((Context!14382 0))(
  ( (Context!14383 (exprs!7691 List!69472)) )
))
(declare-fun z!3189 () (InoxSet Context!14382))

(declare-fun nullableZipper!2776 ((InoxSet Context!14382)) Bool)

(assert (=> b!7144975 (= res!2915204 (not (nullableZipper!2776 z!3189)))))

(declare-fun exists!4017 ((InoxSet Context!14382) Int) Bool)

(assert (=> b!7144975 (exists!4017 z!3189 lambda!435528)))

(declare-datatypes ((Unit!163261 0))(
  ( (Unit!163262) )
))
(declare-fun lt!2568543 () Unit!163261)

(declare-fun lt!2568544 () Context!14382)

(declare-fun lemmaContainsThenExists!205 ((InoxSet Context!14382) Context!14382 Int) Unit!163261)

(assert (=> b!7144975 (= lt!2568543 (lemmaContainsThenExists!205 z!3189 lt!2568544 lambda!435528))))

(declare-fun b!7144976 () Bool)

(declare-fun res!2915208 () Bool)

(declare-fun e!4293806 () Bool)

(assert (=> b!7144976 (=> res!2915208 e!4293806)))

(declare-fun lt!2568540 () Regex!18197)

(declare-fun nullable!7714 (Regex!18197) Bool)

(assert (=> b!7144976 (= res!2915208 (not (nullable!7714 lt!2568540)))))

(declare-fun b!7144977 () Bool)

(declare-fun e!4293798 () Bool)

(declare-fun e!4293803 () Bool)

(assert (=> b!7144977 (= e!4293798 e!4293803)))

(declare-fun res!2915199 () Bool)

(assert (=> b!7144977 (=> (not res!2915199) (not e!4293803))))

(declare-fun r!11483 () Regex!18197)

(declare-datatypes ((List!69473 0))(
  ( (Nil!69349) (Cons!69349 (h!75797 Context!14382) (t!383490 List!69473)) )
))
(declare-fun lt!2568534 () List!69473)

(declare-fun unfocusZipper!2545 (List!69473) Regex!18197)

(assert (=> b!7144977 (= res!2915199 (= r!11483 (unfocusZipper!2545 lt!2568534)))))

(declare-fun toList!11228 ((InoxSet Context!14382)) List!69473)

(assert (=> b!7144977 (= lt!2568534 (toList!11228 z!3189))))

(declare-fun b!7144978 () Bool)

(declare-fun e!4293802 () Bool)

(declare-fun e!4293807 () Bool)

(assert (=> b!7144978 (= e!4293802 (not e!4293807))))

(declare-fun res!2915200 () Bool)

(assert (=> b!7144978 (=> res!2915200 e!4293807)))

(declare-fun lt!2568538 () List!69472)

(declare-fun lambda!435526 () Int)

(declare-fun lt!2568537 () Bool)

(declare-fun exists!4018 (List!69472 Int) Bool)

(assert (=> b!7144978 (= res!2915200 (not (= lt!2568537 (exists!4018 lt!2568538 lambda!435526))))))

(assert (=> b!7144978 (= lt!2568537 (exists!4018 lt!2568538 lambda!435526))))

(declare-fun lt!2568539 () Regex!18197)

(assert (=> b!7144978 (= lt!2568537 (nullable!7714 lt!2568539))))

(declare-fun lt!2568541 () Unit!163261)

(declare-fun nullableGenUnionSpec!78 (Regex!18197 List!69472) Unit!163261)

(assert (=> b!7144978 (= lt!2568541 (nullableGenUnionSpec!78 lt!2568539 lt!2568538))))

(declare-fun b!7144979 () Bool)

(declare-fun e!4293808 () Bool)

(assert (=> b!7144979 (= e!4293808 e!4293806)))

(declare-fun res!2915206 () Bool)

(assert (=> b!7144979 (=> res!2915206 e!4293806)))

(declare-fun lt!2568536 () Regex!18197)

(assert (=> b!7144979 (= res!2915206 (not (= lt!2568540 lt!2568536)))))

(declare-fun generalisedConcat!2374 (List!69472) Regex!18197)

(assert (=> b!7144979 (= lt!2568540 (generalisedConcat!2374 (exprs!7691 lt!2568544)))))

(declare-fun b!7144980 () Bool)

(declare-fun res!2915201 () Bool)

(declare-fun e!4293800 () Bool)

(assert (=> b!7144980 (=> res!2915201 e!4293800)))

(declare-fun contains!20629 (List!69472 Regex!18197) Bool)

(assert (=> b!7144980 (= res!2915201 (not (contains!20629 lt!2568538 lt!2568536)))))

(declare-fun res!2915198 () Bool)

(assert (=> start!696644 (=> (not res!2915198) (not e!4293798))))

(declare-fun validRegex!9364 (Regex!18197) Bool)

(assert (=> start!696644 (= res!2915198 (validRegex!9364 r!11483))))

(assert (=> start!696644 e!4293798))

(assert (=> start!696644 e!4293804))

(declare-fun condSetEmpty!52699 () Bool)

(assert (=> start!696644 (= condSetEmpty!52699 (= z!3189 ((as const (Array Context!14382 Bool)) false)))))

(declare-fun setRes!52699 () Bool)

(assert (=> start!696644 setRes!52699))

(declare-fun b!7144981 () Bool)

(declare-fun tp!1970981 () Bool)

(assert (=> b!7144981 (= e!4293804 tp!1970981)))

(declare-fun b!7144982 () Bool)

(declare-fun tp!1970979 () Bool)

(declare-fun tp!1970978 () Bool)

(assert (=> b!7144982 (= e!4293804 (and tp!1970979 tp!1970978))))

(declare-fun e!4293797 () Bool)

(assert (=> b!7144983 (= e!4293800 e!4293797)))

(declare-fun res!2915202 () Bool)

(assert (=> b!7144983 (=> res!2915202 e!4293797)))

(assert (=> b!7144983 (= res!2915202 (not (exists!4017 z!3189 lambda!435527)))))

(declare-fun exists!4019 (List!69473 Int) Bool)

(assert (=> b!7144983 (exists!4019 lt!2568534 lambda!435527)))

(declare-fun lt!2568542 () Unit!163261)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!34 (List!69473 Regex!18197) Unit!163261)

(assert (=> b!7144983 (= lt!2568542 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!34 lt!2568534 lt!2568536))))

(declare-fun b!7144984 () Bool)

(assert (=> b!7144984 (= e!4293803 e!4293802)))

(declare-fun res!2915211 () Bool)

(assert (=> b!7144984 (=> (not res!2915211) (not e!4293802))))

(assert (=> b!7144984 (= res!2915211 (= r!11483 lt!2568539))))

(declare-fun generalisedUnion!2702 (List!69472) Regex!18197)

(assert (=> b!7144984 (= lt!2568539 (generalisedUnion!2702 lt!2568538))))

(declare-fun unfocusZipperList!2238 (List!69473) List!69472)

(assert (=> b!7144984 (= lt!2568538 (unfocusZipperList!2238 lt!2568534))))

(declare-fun setIsEmpty!52699 () Bool)

(assert (=> setIsEmpty!52699 setRes!52699))

(declare-fun setElem!52699 () Context!14382)

(declare-fun e!4293801 () Bool)

(declare-fun setNonEmpty!52699 () Bool)

(declare-fun tp!1970975 () Bool)

(declare-fun inv!88556 (Context!14382) Bool)

(assert (=> setNonEmpty!52699 (= setRes!52699 (and tp!1970975 (inv!88556 setElem!52699) e!4293801))))

(declare-fun setRest!52699 () (InoxSet Context!14382))

(assert (=> setNonEmpty!52699 (= z!3189 ((_ map or) (store ((as const (Array Context!14382 Bool)) false) setElem!52699 true) setRest!52699))))

(declare-fun b!7144985 () Bool)

(assert (=> b!7144985 (= e!4293807 e!4293800)))

(declare-fun res!2915207 () Bool)

(assert (=> b!7144985 (=> res!2915207 e!4293800)))

(assert (=> b!7144985 (= res!2915207 (not (nullable!7714 lt!2568536)))))

(declare-fun getWitness!1981 (List!69472 Int) Regex!18197)

(assert (=> b!7144985 (= lt!2568536 (getWitness!1981 lt!2568538 lambda!435526))))

(declare-fun b!7144986 () Bool)

(declare-fun res!2915205 () Bool)

(assert (=> b!7144986 (=> res!2915205 e!4293807)))

(assert (=> b!7144986 (= res!2915205 (not lt!2568537))))

(declare-fun b!7144987 () Bool)

(assert (=> b!7144987 (= e!4293799 (nullable!7714 r!11483))))

(declare-fun b!7144988 () Bool)

(declare-fun res!2915210 () Bool)

(assert (=> b!7144988 (=> res!2915210 e!4293807)))

(assert (=> b!7144988 (= res!2915210 (not (exists!4018 lt!2568538 lambda!435526)))))

(declare-fun b!7144989 () Bool)

(assert (=> b!7144989 (= e!4293797 e!4293808)))

(declare-fun res!2915203 () Bool)

(assert (=> b!7144989 (=> res!2915203 e!4293808)))

(assert (=> b!7144989 (= res!2915203 (not (select z!3189 lt!2568544)))))

(declare-fun getWitness!1982 ((InoxSet Context!14382) Int) Context!14382)

(assert (=> b!7144989 (= lt!2568544 (getWitness!1982 z!3189 lambda!435527))))

(declare-fun b!7144990 () Bool)

(assert (=> b!7144990 (= e!4293806 e!4293805)))

(declare-fun res!2915209 () Bool)

(assert (=> b!7144990 (=> res!2915209 e!4293805)))

(declare-fun nullableContext!162 (Context!14382) Bool)

(assert (=> b!7144990 (= res!2915209 (not (nullableContext!162 lt!2568544)))))

(declare-fun forall!17035 (List!69472 Int) Bool)

(assert (=> b!7144990 (forall!17035 (exprs!7691 lt!2568544) lambda!435526)))

(declare-fun lt!2568535 () Unit!163261)

(declare-fun nullableGenConcatSpec!22 (Regex!18197 List!69472) Unit!163261)

(assert (=> b!7144990 (= lt!2568535 (nullableGenConcatSpec!22 lt!2568536 (exprs!7691 lt!2568544)))))

(declare-fun b!7144991 () Bool)

(declare-fun tp!1970976 () Bool)

(assert (=> b!7144991 (= e!4293801 tp!1970976)))

(assert (= (and start!696644 res!2915198) b!7144977))

(assert (= (and b!7144977 res!2915199) b!7144984))

(assert (= (and b!7144984 res!2915211) b!7144978))

(assert (= (and b!7144978 (not res!2915200)) b!7144986))

(assert (= (and b!7144986 (not res!2915205)) b!7144988))

(assert (= (and b!7144988 (not res!2915210)) b!7144985))

(assert (= (and b!7144985 (not res!2915207)) b!7144980))

(assert (= (and b!7144980 (not res!2915201)) b!7144983))

(assert (= (and b!7144983 (not res!2915202)) b!7144989))

(assert (= (and b!7144989 (not res!2915203)) b!7144979))

(assert (= (and b!7144979 (not res!2915206)) b!7144976))

(assert (= (and b!7144976 (not res!2915208)) b!7144990))

(assert (= (and b!7144990 (not res!2915209)) b!7144975))

(assert (= (and b!7144975 (not res!2915204)) b!7144987))

(get-info :version)

(assert (= (and start!696644 ((_ is ElementMatch!18197) r!11483)) b!7144974))

(assert (= (and start!696644 ((_ is Concat!27042) r!11483)) b!7144982))

(assert (= (and start!696644 ((_ is Star!18197) r!11483)) b!7144981))

(assert (= (and start!696644 ((_ is Union!18197) r!11483)) b!7144973))

(assert (= (and start!696644 condSetEmpty!52699) setIsEmpty!52699))

(assert (= (and start!696644 (not condSetEmpty!52699)) setNonEmpty!52699))

(assert (= setNonEmpty!52699 b!7144991))

(declare-fun m!7858486 () Bool)

(assert (=> b!7144976 m!7858486))

(declare-fun m!7858488 () Bool)

(assert (=> b!7144979 m!7858488))

(declare-fun m!7858490 () Bool)

(assert (=> setNonEmpty!52699 m!7858490))

(declare-fun m!7858492 () Bool)

(assert (=> b!7144989 m!7858492))

(declare-fun m!7858494 () Bool)

(assert (=> b!7144989 m!7858494))

(declare-fun m!7858496 () Bool)

(assert (=> start!696644 m!7858496))

(declare-fun m!7858498 () Bool)

(assert (=> b!7144980 m!7858498))

(declare-fun m!7858500 () Bool)

(assert (=> b!7144978 m!7858500))

(assert (=> b!7144978 m!7858500))

(declare-fun m!7858502 () Bool)

(assert (=> b!7144978 m!7858502))

(declare-fun m!7858504 () Bool)

(assert (=> b!7144978 m!7858504))

(declare-fun m!7858506 () Bool)

(assert (=> b!7144987 m!7858506))

(declare-fun m!7858508 () Bool)

(assert (=> b!7144985 m!7858508))

(declare-fun m!7858510 () Bool)

(assert (=> b!7144985 m!7858510))

(assert (=> b!7144988 m!7858500))

(declare-fun m!7858512 () Bool)

(assert (=> b!7144984 m!7858512))

(declare-fun m!7858514 () Bool)

(assert (=> b!7144984 m!7858514))

(declare-fun m!7858516 () Bool)

(assert (=> b!7144990 m!7858516))

(declare-fun m!7858518 () Bool)

(assert (=> b!7144990 m!7858518))

(declare-fun m!7858520 () Bool)

(assert (=> b!7144990 m!7858520))

(declare-fun m!7858522 () Bool)

(assert (=> b!7144975 m!7858522))

(declare-fun m!7858524 () Bool)

(assert (=> b!7144975 m!7858524))

(declare-fun m!7858526 () Bool)

(assert (=> b!7144975 m!7858526))

(declare-fun m!7858528 () Bool)

(assert (=> b!7144983 m!7858528))

(declare-fun m!7858530 () Bool)

(assert (=> b!7144983 m!7858530))

(declare-fun m!7858532 () Bool)

(assert (=> b!7144983 m!7858532))

(declare-fun m!7858534 () Bool)

(assert (=> b!7144977 m!7858534))

(declare-fun m!7858536 () Bool)

(assert (=> b!7144977 m!7858536))

(check-sat (not b!7144987) (not b!7144991) (not start!696644) (not b!7144985) (not b!7144982) (not b!7144981) (not b!7144973) (not b!7144978) (not b!7144979) (not b!7144977) (not b!7144990) tp_is_empty!46031 (not b!7144983) (not b!7144989) (not b!7144984) (not b!7144976) (not b!7144975) (not setNonEmpty!52699) (not b!7144988) (not b!7144980))
(check-sat)
