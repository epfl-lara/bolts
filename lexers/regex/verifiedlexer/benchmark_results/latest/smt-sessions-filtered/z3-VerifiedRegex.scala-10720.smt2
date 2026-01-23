; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549018 () Bool)

(assert start!549018)

(declare-fun b!5183950 () Bool)

(declare-fun res!2202012 () Bool)

(declare-fun e!3229707 () Bool)

(assert (=> b!5183950 (=> res!2202012 e!3229707)))

(declare-datatypes ((C!29644 0))(
  ( (C!29645 (val!24524 Int)) )
))
(declare-datatypes ((Regex!14687 0))(
  ( (ElementMatch!14687 (c!893472 C!29644)) (Concat!23532 (regOne!29886 Regex!14687) (regTwo!29886 Regex!14687)) (EmptyExpr!14687) (Star!14687 (reg!15016 Regex!14687)) (EmptyLang!14687) (Union!14687 (regOne!29887 Regex!14687) (regTwo!29887 Regex!14687)) )
))
(declare-fun r!7292 () Regex!14687)

(declare-datatypes ((List!60360 0))(
  ( (Nil!60236) (Cons!60236 (h!66684 Regex!14687) (t!373513 List!60360)) )
))
(declare-datatypes ((Context!8142 0))(
  ( (Context!8143 (exprs!4571 List!60360)) )
))
(declare-datatypes ((List!60361 0))(
  ( (Nil!60237) (Cons!60237 (h!66685 Context!8142) (t!373514 List!60361)) )
))
(declare-fun zl!343 () List!60361)

(declare-fun generalisedConcat!356 (List!60360) Regex!14687)

(assert (=> b!5183950 (= res!2202012 (not (= r!7292 (generalisedConcat!356 (exprs!4571 (h!66685 zl!343))))))))

(declare-fun b!5183951 () Bool)

(declare-fun res!2202011 () Bool)

(assert (=> b!5183951 (=> res!2202011 e!3229707)))

(declare-fun generalisedUnion!616 (List!60360) Regex!14687)

(declare-fun unfocusZipperList!129 (List!60361) List!60360)

(assert (=> b!5183951 (= res!2202011 (not (= r!7292 (generalisedUnion!616 (unfocusZipperList!129 zl!343)))))))

(declare-fun res!2202005 () Bool)

(declare-fun e!3229706 () Bool)

(assert (=> start!549018 (=> (not res!2202005) (not e!3229706))))

(declare-fun validRegex!6423 (Regex!14687) Bool)

(assert (=> start!549018 (= res!2202005 (validRegex!6423 r!7292))))

(assert (=> start!549018 e!3229706))

(declare-fun e!3229701 () Bool)

(assert (=> start!549018 e!3229701))

(declare-fun e!3229703 () Bool)

(assert (=> start!549018 e!3229703))

(declare-fun condSetEmpty!32608 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8142))

(assert (=> start!549018 (= condSetEmpty!32608 (= z!1189 ((as const (Array Context!8142 Bool)) false)))))

(declare-fun setRes!32608 () Bool)

(assert (=> start!549018 setRes!32608))

(declare-fun e!3229702 () Bool)

(assert (=> start!549018 e!3229702))

(declare-fun b!5183952 () Bool)

(declare-fun tp!1454216 () Bool)

(declare-fun tp!1454221 () Bool)

(assert (=> b!5183952 (= e!3229701 (and tp!1454216 tp!1454221))))

(declare-fun b!5183953 () Bool)

(declare-fun tp!1454219 () Bool)

(declare-fun tp!1454224 () Bool)

(assert (=> b!5183953 (= e!3229701 (and tp!1454219 tp!1454224))))

(declare-fun b!5183954 () Bool)

(declare-fun e!3229705 () Bool)

(declare-fun tp!1454222 () Bool)

(assert (=> b!5183954 (= e!3229705 tp!1454222)))

(declare-fun b!5183955 () Bool)

(declare-fun tp_is_empty!38627 () Bool)

(assert (=> b!5183955 (= e!3229701 tp_is_empty!38627)))

(declare-fun setIsEmpty!32608 () Bool)

(assert (=> setIsEmpty!32608 setRes!32608))

(declare-fun b!5183956 () Bool)

(declare-fun res!2202008 () Bool)

(assert (=> b!5183956 (=> res!2202008 e!3229707)))

(declare-fun isEmpty!32239 (List!60361) Bool)

(assert (=> b!5183956 (= res!2202008 (not (isEmpty!32239 (t!373514 zl!343))))))

(declare-fun b!5183957 () Bool)

(declare-fun res!2202003 () Bool)

(assert (=> b!5183957 (=> res!2202003 e!3229707)))

(get-info :version)

(assert (=> b!5183957 (= res!2202003 (not ((_ is Cons!60236) (exprs!4571 (h!66685 zl!343)))))))

(declare-fun b!5183958 () Bool)

(assert (=> b!5183958 (= e!3229707 true)))

(declare-datatypes ((List!60362 0))(
  ( (Nil!60238) (Cons!60238 (h!66686 C!29644) (t!373515 List!60362)) )
))
(declare-fun s!2326 () List!60362)

(declare-fun matchZipper!995 ((InoxSet Context!8142) List!60362) Bool)

(declare-fun isEmpty!32240 (List!60362) Bool)

(assert (=> b!5183958 (= (matchZipper!995 z!1189 s!2326) (isEmpty!32240 s!2326))))

(declare-datatypes ((Unit!152208 0))(
  ( (Unit!152209) )
))
(declare-fun lt!2136209 () Unit!152208)

(declare-fun lemmaZipperOfEmptyExprMatchesOnlyEmptyString!2 ((InoxSet Context!8142) List!60362) Unit!152208)

(assert (=> b!5183958 (= lt!2136209 (lemmaZipperOfEmptyExprMatchesOnlyEmptyString!2 z!1189 s!2326))))

(declare-fun b!5183959 () Bool)

(declare-fun tp!1454217 () Bool)

(assert (=> b!5183959 (= e!3229703 (and tp_is_empty!38627 tp!1454217))))

(declare-fun b!5183960 () Bool)

(declare-fun e!3229704 () Bool)

(declare-fun tp!1454225 () Bool)

(assert (=> b!5183960 (= e!3229704 tp!1454225)))

(declare-fun b!5183961 () Bool)

(declare-fun e!3229700 () Bool)

(assert (=> b!5183961 (= e!3229700 (not e!3229707))))

(declare-fun res!2202009 () Bool)

(assert (=> b!5183961 (=> res!2202009 e!3229707)))

(assert (=> b!5183961 (= res!2202009 (not ((_ is Cons!60237) zl!343)))))

(declare-fun matchR!6872 (Regex!14687 List!60362) Bool)

(declare-fun matchRSpec!1790 (Regex!14687 List!60362) Bool)

(assert (=> b!5183961 (= (matchR!6872 r!7292 s!2326) (matchRSpec!1790 r!7292 s!2326))))

(declare-fun lt!2136211 () Unit!152208)

(declare-fun mainMatchTheorem!1790 (Regex!14687 List!60362) Unit!152208)

(assert (=> b!5183961 (= lt!2136211 (mainMatchTheorem!1790 r!7292 s!2326))))

(declare-fun b!5183962 () Bool)

(declare-fun res!2202010 () Bool)

(assert (=> b!5183962 (=> res!2202010 e!3229707)))

(declare-fun lt!2136210 () List!60361)

(declare-fun unfocusZipper!429 (List!60361) Regex!14687)

(assert (=> b!5183962 (= res!2202010 (not (= (unfocusZipper!429 lt!2136210) EmptyExpr!14687)))))

(declare-fun b!5183963 () Bool)

(declare-fun tp!1454223 () Bool)

(assert (=> b!5183963 (= e!3229701 tp!1454223)))

(declare-fun b!5183964 () Bool)

(declare-fun res!2202006 () Bool)

(assert (=> b!5183964 (=> res!2202006 e!3229707)))

(assert (=> b!5183964 (= res!2202006 (not ((_ is EmptyExpr!14687) r!7292)))))

(declare-fun b!5183965 () Bool)

(assert (=> b!5183965 (= e!3229706 e!3229700)))

(declare-fun res!2202004 () Bool)

(assert (=> b!5183965 (=> (not res!2202004) (not e!3229700))))

(assert (=> b!5183965 (= res!2202004 (= lt!2136210 zl!343))))

(declare-fun toList!8471 ((InoxSet Context!8142)) List!60361)

(assert (=> b!5183965 (= lt!2136210 (toList!8471 z!1189))))

(declare-fun tp!1454220 () Bool)

(declare-fun b!5183966 () Bool)

(declare-fun inv!79964 (Context!8142) Bool)

(assert (=> b!5183966 (= e!3229702 (and (inv!79964 (h!66685 zl!343)) e!3229704 tp!1454220))))

(declare-fun b!5183967 () Bool)

(declare-fun res!2202007 () Bool)

(assert (=> b!5183967 (=> (not res!2202007) (not e!3229700))))

(assert (=> b!5183967 (= res!2202007 (= r!7292 (unfocusZipper!429 zl!343)))))

(declare-fun tp!1454218 () Bool)

(declare-fun setElem!32608 () Context!8142)

(declare-fun setNonEmpty!32608 () Bool)

(assert (=> setNonEmpty!32608 (= setRes!32608 (and tp!1454218 (inv!79964 setElem!32608) e!3229705))))

(declare-fun setRest!32608 () (InoxSet Context!8142))

(assert (=> setNonEmpty!32608 (= z!1189 ((_ map or) (store ((as const (Array Context!8142 Bool)) false) setElem!32608 true) setRest!32608))))

(assert (= (and start!549018 res!2202005) b!5183965))

(assert (= (and b!5183965 res!2202004) b!5183967))

(assert (= (and b!5183967 res!2202007) b!5183961))

(assert (= (and b!5183961 (not res!2202009)) b!5183956))

(assert (= (and b!5183956 (not res!2202008)) b!5183950))

(assert (= (and b!5183950 (not res!2202012)) b!5183957))

(assert (= (and b!5183957 (not res!2202003)) b!5183951))

(assert (= (and b!5183951 (not res!2202011)) b!5183964))

(assert (= (and b!5183964 (not res!2202006)) b!5183962))

(assert (= (and b!5183962 (not res!2202010)) b!5183958))

(assert (= (and start!549018 ((_ is ElementMatch!14687) r!7292)) b!5183955))

(assert (= (and start!549018 ((_ is Concat!23532) r!7292)) b!5183952))

(assert (= (and start!549018 ((_ is Star!14687) r!7292)) b!5183963))

(assert (= (and start!549018 ((_ is Union!14687) r!7292)) b!5183953))

(assert (= (and start!549018 ((_ is Cons!60238) s!2326)) b!5183959))

(assert (= (and start!549018 condSetEmpty!32608) setIsEmpty!32608))

(assert (= (and start!549018 (not condSetEmpty!32608)) setNonEmpty!32608))

(assert (= setNonEmpty!32608 b!5183954))

(assert (= b!5183966 b!5183960))

(assert (= (and start!549018 ((_ is Cons!60237) zl!343)) b!5183966))

(declare-fun m!6243362 () Bool)

(assert (=> start!549018 m!6243362))

(declare-fun m!6243364 () Bool)

(assert (=> b!5183956 m!6243364))

(declare-fun m!6243366 () Bool)

(assert (=> b!5183951 m!6243366))

(assert (=> b!5183951 m!6243366))

(declare-fun m!6243368 () Bool)

(assert (=> b!5183951 m!6243368))

(declare-fun m!6243370 () Bool)

(assert (=> b!5183966 m!6243370))

(declare-fun m!6243372 () Bool)

(assert (=> b!5183962 m!6243372))

(declare-fun m!6243374 () Bool)

(assert (=> setNonEmpty!32608 m!6243374))

(declare-fun m!6243376 () Bool)

(assert (=> b!5183958 m!6243376))

(declare-fun m!6243378 () Bool)

(assert (=> b!5183958 m!6243378))

(declare-fun m!6243380 () Bool)

(assert (=> b!5183958 m!6243380))

(declare-fun m!6243382 () Bool)

(assert (=> b!5183967 m!6243382))

(declare-fun m!6243384 () Bool)

(assert (=> b!5183950 m!6243384))

(declare-fun m!6243386 () Bool)

(assert (=> b!5183965 m!6243386))

(declare-fun m!6243388 () Bool)

(assert (=> b!5183961 m!6243388))

(declare-fun m!6243390 () Bool)

(assert (=> b!5183961 m!6243390))

(declare-fun m!6243392 () Bool)

(assert (=> b!5183961 m!6243392))

(check-sat (not start!549018) tp_is_empty!38627 (not b!5183954) (not b!5183958) (not b!5183960) (not b!5183956) (not b!5183967) (not b!5183953) (not b!5183959) (not b!5183961) (not b!5183951) (not b!5183952) (not b!5183962) (not b!5183965) (not setNonEmpty!32608) (not b!5183966) (not b!5183950) (not b!5183963))
(check-sat)
