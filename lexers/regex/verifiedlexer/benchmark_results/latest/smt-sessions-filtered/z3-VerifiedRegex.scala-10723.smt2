; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549030 () Bool)

(assert start!549030)

(declare-fun setRes!32626 () Bool)

(declare-fun tp!1454401 () Bool)

(declare-datatypes ((C!29656 0))(
  ( (C!29657 (val!24530 Int)) )
))
(declare-datatypes ((Regex!14693 0))(
  ( (ElementMatch!14693 (c!893478 C!29656)) (Concat!23538 (regOne!29898 Regex!14693) (regTwo!29898 Regex!14693)) (EmptyExpr!14693) (Star!14693 (reg!15022 Regex!14693)) (EmptyLang!14693) (Union!14693 (regOne!29899 Regex!14693) (regTwo!29899 Regex!14693)) )
))
(declare-datatypes ((List!60378 0))(
  ( (Nil!60254) (Cons!60254 (h!66702 Regex!14693) (t!373531 List!60378)) )
))
(declare-datatypes ((Context!8154 0))(
  ( (Context!8155 (exprs!4577 List!60378)) )
))
(declare-fun setElem!32626 () Context!8154)

(declare-fun e!3229840 () Bool)

(declare-fun setNonEmpty!32626 () Bool)

(declare-fun inv!79979 (Context!8154) Bool)

(assert (=> setNonEmpty!32626 (= setRes!32626 (and tp!1454401 (inv!79979 setElem!32626) e!3229840))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8154))

(declare-fun setRest!32626 () (InoxSet Context!8154))

(assert (=> setNonEmpty!32626 (= z!1189 ((_ map or) (store ((as const (Array Context!8154 Bool)) false) setElem!32626 true) setRest!32626))))

(declare-fun b!5184284 () Bool)

(declare-fun res!2202193 () Bool)

(declare-fun e!3229845 () Bool)

(assert (=> b!5184284 (=> res!2202193 e!3229845)))

(declare-datatypes ((List!60379 0))(
  ( (Nil!60255) (Cons!60255 (h!66703 Context!8154) (t!373532 List!60379)) )
))
(declare-fun zl!343 () List!60379)

(get-info :version)

(assert (=> b!5184284 (= res!2202193 (not ((_ is Cons!60254) (exprs!4577 (h!66703 zl!343)))))))

(declare-fun b!5184285 () Bool)

(declare-fun res!2202200 () Bool)

(assert (=> b!5184285 (=> res!2202200 e!3229845)))

(declare-fun r!7292 () Regex!14693)

(declare-fun generalisedConcat!362 (List!60378) Regex!14693)

(assert (=> b!5184285 (= res!2202200 (not (= r!7292 (generalisedConcat!362 (exprs!4577 (h!66703 zl!343))))))))

(declare-fun b!5184286 () Bool)

(declare-fun res!2202201 () Bool)

(declare-fun e!3229838 () Bool)

(assert (=> b!5184286 (=> res!2202201 e!3229838)))

(declare-fun lt!2136273 () List!60378)

(declare-fun isEmpty!32249 (List!60378) Bool)

(declare-fun tail!10189 (List!60378) List!60378)

(assert (=> b!5184286 (= res!2202201 (not (isEmpty!32249 (tail!10189 lt!2136273))))))

(declare-fun b!5184287 () Bool)

(declare-fun e!3229842 () Bool)

(declare-fun tp!1454405 () Bool)

(assert (=> b!5184287 (= e!3229842 tp!1454405)))

(declare-fun b!5184288 () Bool)

(assert (=> b!5184288 (= e!3229838 true)))

(declare-datatypes ((List!60380 0))(
  ( (Nil!60256) (Cons!60256 (h!66704 C!29656) (t!373533 List!60380)) )
))
(declare-fun s!2326 () List!60380)

(declare-fun matchZipper!999 ((InoxSet Context!8154) List!60380) Bool)

(assert (=> b!5184288 (= (matchZipper!999 z!1189 s!2326) (= s!2326 (Cons!60256 (c!893478 r!7292) Nil!60256)))))

(declare-datatypes ((Unit!152220 0))(
  ( (Unit!152221) )
))
(declare-fun lt!2136274 () Unit!152220)

(declare-fun lt!2136275 () Context!8154)

(declare-fun lemmaElementMatchZipperAcceptsOnlyThisChar!2 ((InoxSet Context!8154) Context!8154 C!29656 List!60380) Unit!152220)

(assert (=> b!5184288 (= lt!2136274 (lemmaElementMatchZipperAcceptsOnlyThisChar!2 z!1189 lt!2136275 (c!893478 r!7292) s!2326))))

(declare-fun b!5184289 () Bool)

(assert (=> b!5184289 (= e!3229845 e!3229838)))

(declare-fun res!2202195 () Bool)

(assert (=> b!5184289 (=> res!2202195 e!3229838)))

(assert (=> b!5184289 (= res!2202195 (not (= z!1189 (store ((as const (Array Context!8154 Bool)) false) lt!2136275 true))))))

(assert (=> b!5184289 (= lt!2136275 (Context!8155 lt!2136273))))

(declare-fun lt!2136277 () Regex!14693)

(assert (=> b!5184289 (= lt!2136273 (Cons!60254 lt!2136277 Nil!60254))))

(assert (=> b!5184289 (= lt!2136277 (ElementMatch!14693 (c!893478 r!7292)))))

(declare-fun b!5184290 () Bool)

(declare-fun e!3229843 () Bool)

(declare-fun tp!1454403 () Bool)

(declare-fun tp!1454396 () Bool)

(assert (=> b!5184290 (= e!3229843 (and tp!1454403 tp!1454396))))

(declare-fun b!5184291 () Bool)

(declare-fun tp!1454402 () Bool)

(assert (=> b!5184291 (= e!3229840 tp!1454402)))

(declare-fun b!5184292 () Bool)

(declare-fun tp!1454397 () Bool)

(assert (=> b!5184292 (= e!3229843 tp!1454397)))

(declare-fun b!5184293 () Bool)

(declare-fun tp!1454404 () Bool)

(declare-fun tp!1454398 () Bool)

(assert (=> b!5184293 (= e!3229843 (and tp!1454404 tp!1454398))))

(declare-fun b!5184294 () Bool)

(declare-fun res!2202204 () Bool)

(declare-fun e!3229844 () Bool)

(assert (=> b!5184294 (=> (not res!2202204) (not e!3229844))))

(declare-fun unfocusZipper!435 (List!60379) Regex!14693)

(assert (=> b!5184294 (= res!2202204 (= r!7292 (unfocusZipper!435 zl!343)))))

(declare-fun b!5184295 () Bool)

(declare-fun res!2202197 () Bool)

(assert (=> b!5184295 (=> res!2202197 e!3229845)))

(declare-fun generalisedUnion!622 (List!60378) Regex!14693)

(declare-fun unfocusZipperList!135 (List!60379) List!60378)

(assert (=> b!5184295 (= res!2202197 (not (= r!7292 (generalisedUnion!622 (unfocusZipperList!135 zl!343)))))))

(declare-fun setIsEmpty!32626 () Bool)

(assert (=> setIsEmpty!32626 setRes!32626))

(declare-fun res!2202192 () Bool)

(assert (=> start!549030 (=> (not res!2202192) (not e!3229844))))

(declare-fun validRegex!6429 (Regex!14693) Bool)

(assert (=> start!549030 (= res!2202192 (validRegex!6429 r!7292))))

(assert (=> start!549030 e!3229844))

(assert (=> start!549030 e!3229843))

(declare-fun condSetEmpty!32626 () Bool)

(assert (=> start!549030 (= condSetEmpty!32626 (= z!1189 ((as const (Array Context!8154 Bool)) false)))))

(assert (=> start!549030 setRes!32626))

(declare-fun e!3229841 () Bool)

(assert (=> start!549030 e!3229841))

(declare-fun e!3229839 () Bool)

(assert (=> start!549030 e!3229839))

(declare-fun b!5184283 () Bool)

(declare-fun res!2202196 () Bool)

(assert (=> b!5184283 (=> (not res!2202196) (not e!3229844))))

(declare-fun toList!8477 ((InoxSet Context!8154)) List!60379)

(assert (=> b!5184283 (= res!2202196 (= (toList!8477 z!1189) zl!343))))

(declare-fun b!5184296 () Bool)

(declare-fun res!2202202 () Bool)

(assert (=> b!5184296 (=> res!2202202 e!3229838)))

(declare-fun head!11092 (List!60378) Regex!14693)

(assert (=> b!5184296 (= res!2202202 (not (= (head!11092 lt!2136273) lt!2136277)))))

(declare-fun b!5184297 () Bool)

(declare-fun tp_is_empty!38639 () Bool)

(assert (=> b!5184297 (= e!3229843 tp_is_empty!38639)))

(declare-fun b!5184298 () Bool)

(declare-fun tp!1454400 () Bool)

(assert (=> b!5184298 (= e!3229839 (and tp_is_empty!38639 tp!1454400))))

(declare-fun b!5184299 () Bool)

(assert (=> b!5184299 (= e!3229844 (not e!3229845))))

(declare-fun res!2202198 () Bool)

(assert (=> b!5184299 (=> res!2202198 e!3229845)))

(assert (=> b!5184299 (= res!2202198 (not ((_ is Cons!60255) zl!343)))))

(declare-fun matchR!6878 (Regex!14693 List!60380) Bool)

(declare-fun matchRSpec!1796 (Regex!14693 List!60380) Bool)

(assert (=> b!5184299 (= (matchR!6878 r!7292 s!2326) (matchRSpec!1796 r!7292 s!2326))))

(declare-fun lt!2136276 () Unit!152220)

(declare-fun mainMatchTheorem!1796 (Regex!14693 List!60380) Unit!152220)

(assert (=> b!5184299 (= lt!2136276 (mainMatchTheorem!1796 r!7292 s!2326))))

(declare-fun b!5184300 () Bool)

(declare-fun res!2202194 () Bool)

(assert (=> b!5184300 (=> res!2202194 e!3229838)))

(assert (=> b!5184300 (= res!2202194 (isEmpty!32249 lt!2136273))))

(declare-fun b!5184301 () Bool)

(declare-fun res!2202199 () Bool)

(assert (=> b!5184301 (=> res!2202199 e!3229845)))

(assert (=> b!5184301 (= res!2202199 (or ((_ is EmptyExpr!14693) r!7292) ((_ is EmptyLang!14693) r!7292) (not ((_ is ElementMatch!14693) r!7292))))))

(declare-fun tp!1454399 () Bool)

(declare-fun b!5184302 () Bool)

(assert (=> b!5184302 (= e!3229841 (and (inv!79979 (h!66703 zl!343)) e!3229842 tp!1454399))))

(declare-fun b!5184303 () Bool)

(declare-fun res!2202203 () Bool)

(assert (=> b!5184303 (=> res!2202203 e!3229845)))

(declare-fun isEmpty!32250 (List!60379) Bool)

(assert (=> b!5184303 (= res!2202203 (not (isEmpty!32250 (t!373532 zl!343))))))

(assert (= (and start!549030 res!2202192) b!5184283))

(assert (= (and b!5184283 res!2202196) b!5184294))

(assert (= (and b!5184294 res!2202204) b!5184299))

(assert (= (and b!5184299 (not res!2202198)) b!5184303))

(assert (= (and b!5184303 (not res!2202203)) b!5184285))

(assert (= (and b!5184285 (not res!2202200)) b!5184284))

(assert (= (and b!5184284 (not res!2202193)) b!5184295))

(assert (= (and b!5184295 (not res!2202197)) b!5184301))

(assert (= (and b!5184301 (not res!2202199)) b!5184289))

(assert (= (and b!5184289 (not res!2202195)) b!5184300))

(assert (= (and b!5184300 (not res!2202194)) b!5184296))

(assert (= (and b!5184296 (not res!2202202)) b!5184286))

(assert (= (and b!5184286 (not res!2202201)) b!5184288))

(assert (= (and start!549030 ((_ is ElementMatch!14693) r!7292)) b!5184297))

(assert (= (and start!549030 ((_ is Concat!23538) r!7292)) b!5184293))

(assert (= (and start!549030 ((_ is Star!14693) r!7292)) b!5184292))

(assert (= (and start!549030 ((_ is Union!14693) r!7292)) b!5184290))

(assert (= (and start!549030 condSetEmpty!32626) setIsEmpty!32626))

(assert (= (and start!549030 (not condSetEmpty!32626)) setNonEmpty!32626))

(assert (= setNonEmpty!32626 b!5184291))

(assert (= b!5184302 b!5184287))

(assert (= (and start!549030 ((_ is Cons!60255) zl!343)) b!5184302))

(assert (= (and start!549030 ((_ is Cons!60256) s!2326)) b!5184298))

(declare-fun m!6243548 () Bool)

(assert (=> b!5184283 m!6243548))

(declare-fun m!6243550 () Bool)

(assert (=> setNonEmpty!32626 m!6243550))

(declare-fun m!6243552 () Bool)

(assert (=> b!5184289 m!6243552))

(declare-fun m!6243554 () Bool)

(assert (=> b!5184288 m!6243554))

(declare-fun m!6243556 () Bool)

(assert (=> b!5184288 m!6243556))

(declare-fun m!6243558 () Bool)

(assert (=> b!5184285 m!6243558))

(declare-fun m!6243560 () Bool)

(assert (=> b!5184299 m!6243560))

(declare-fun m!6243562 () Bool)

(assert (=> b!5184299 m!6243562))

(declare-fun m!6243564 () Bool)

(assert (=> b!5184299 m!6243564))

(declare-fun m!6243566 () Bool)

(assert (=> b!5184286 m!6243566))

(assert (=> b!5184286 m!6243566))

(declare-fun m!6243568 () Bool)

(assert (=> b!5184286 m!6243568))

(declare-fun m!6243570 () Bool)

(assert (=> b!5184296 m!6243570))

(declare-fun m!6243572 () Bool)

(assert (=> b!5184303 m!6243572))

(declare-fun m!6243574 () Bool)

(assert (=> start!549030 m!6243574))

(declare-fun m!6243576 () Bool)

(assert (=> b!5184300 m!6243576))

(declare-fun m!6243578 () Bool)

(assert (=> b!5184302 m!6243578))

(declare-fun m!6243580 () Bool)

(assert (=> b!5184294 m!6243580))

(declare-fun m!6243582 () Bool)

(assert (=> b!5184295 m!6243582))

(assert (=> b!5184295 m!6243582))

(declare-fun m!6243584 () Bool)

(assert (=> b!5184295 m!6243584))

(check-sat (not b!5184302) (not b!5184303) (not b!5184291) (not b!5184295) (not b!5184300) (not setNonEmpty!32626) (not b!5184299) (not b!5184286) (not start!549030) (not b!5184294) (not b!5184296) (not b!5184290) tp_is_empty!38639 (not b!5184288) (not b!5184292) (not b!5184293) (not b!5184287) (not b!5184283) (not b!5184298) (not b!5184285))
(check-sat)
