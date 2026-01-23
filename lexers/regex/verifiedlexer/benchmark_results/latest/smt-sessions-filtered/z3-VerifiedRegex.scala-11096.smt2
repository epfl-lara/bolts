; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573802 () Bool)

(assert start!573802)

(declare-fun b!5489308 () Bool)

(assert (=> b!5489308 true))

(declare-fun b!5489306 () Bool)

(assert (=> b!5489306 true))

(declare-fun bs!1267162 () Bool)

(declare-fun b!5489298 () Bool)

(assert (= bs!1267162 (and b!5489298 b!5489308)))

(declare-fun lambda!293809 () Int)

(declare-fun lambda!293807 () Int)

(assert (=> bs!1267162 (not (= lambda!293809 lambda!293807))))

(declare-fun b!5489290 () Bool)

(declare-fun res!2341198 () Bool)

(declare-fun e!3396599 () Bool)

(assert (=> b!5489290 (=> res!2341198 e!3396599)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31148 0))(
  ( (C!31149 (val!25276 Int)) )
))
(declare-datatypes ((Regex!15439 0))(
  ( (ElementMatch!15439 (c!958623 C!31148)) (Concat!24284 (regOne!31390 Regex!15439) (regTwo!31390 Regex!15439)) (EmptyExpr!15439) (Star!15439 (reg!15768 Regex!15439)) (EmptyLang!15439) (Union!15439 (regOne!31391 Regex!15439) (regTwo!31391 Regex!15439)) )
))
(declare-datatypes ((List!62616 0))(
  ( (Nil!62492) (Cons!62492 (h!68940 Regex!15439) (t!375847 List!62616)) )
))
(declare-datatypes ((Context!9646 0))(
  ( (Context!9647 (exprs!5323 List!62616)) )
))
(declare-fun z!1189 () (InoxSet Context!9646))

(declare-datatypes ((List!62617 0))(
  ( (Nil!62493) (Cons!62493 (h!68941 C!31148) (t!375848 List!62617)) )
))
(declare-fun s!2326 () List!62617)

(declare-fun matchZipper!1623 ((InoxSet Context!9646) List!62617) Bool)

(assert (=> b!5489290 (= res!2341198 (not (matchZipper!1623 z!1189 s!2326)))))

(declare-fun b!5489291 () Bool)

(declare-fun e!3396600 () Bool)

(declare-fun lt!2241869 () Context!9646)

(declare-fun forall!14636 (List!62616 Int) Bool)

(assert (=> b!5489291 (= e!3396600 (forall!14636 (exprs!5323 lt!2241869) lambda!293809))))

(declare-fun b!5489292 () Bool)

(declare-fun e!3396601 () Bool)

(declare-fun tp!1509001 () Bool)

(assert (=> b!5489292 (= e!3396601 tp!1509001)))

(declare-fun b!5489293 () Bool)

(declare-fun e!3396605 () Bool)

(declare-datatypes ((List!62618 0))(
  ( (Nil!62494) (Cons!62494 (h!68942 Context!9646) (t!375849 List!62618)) )
))
(declare-fun zl!343 () List!62618)

(declare-fun isEmpty!34329 (List!62618) Bool)

(assert (=> b!5489293 (= e!3396605 (isEmpty!34329 (t!375849 zl!343)))))

(declare-fun b!5489294 () Bool)

(declare-fun res!2341189 () Bool)

(declare-fun e!3396596 () Bool)

(assert (=> b!5489294 (=> res!2341189 e!3396596)))

(assert (=> b!5489294 (= res!2341189 (isEmpty!34329 (t!375849 zl!343)))))

(declare-fun b!5489295 () Bool)

(declare-fun e!3396598 () Bool)

(assert (=> b!5489295 (= e!3396598 e!3396600)))

(declare-fun res!2341195 () Bool)

(assert (=> b!5489295 (=> res!2341195 e!3396600)))

(declare-fun lt!2241866 () Int)

(declare-fun zipperDepthTotal!204 (List!62618) Int)

(assert (=> b!5489295 (= res!2341195 (<= lt!2241866 (zipperDepthTotal!204 (Cons!62494 lt!2241869 Nil!62494))))))

(declare-fun lt!2241870 () Int)

(assert (=> b!5489295 (< lt!2241870 lt!2241866)))

(assert (=> b!5489295 (= lt!2241866 (zipperDepthTotal!204 zl!343))))

(declare-fun contextDepthTotal!184 (Context!9646) Int)

(assert (=> b!5489295 (= lt!2241870 (contextDepthTotal!184 lt!2241869))))

(declare-datatypes ((Unit!155334 0))(
  ( (Unit!155335) )
))
(declare-fun lt!2241865 () Unit!155334)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!12 (List!62618 Context!9646) Unit!155334)

(assert (=> b!5489295 (= lt!2241865 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!12 zl!343 lt!2241869))))

(declare-fun e!3396606 () Bool)

(declare-fun e!3396603 () Bool)

(declare-fun tp!1509005 () Bool)

(declare-fun b!5489296 () Bool)

(declare-fun inv!81844 (Context!9646) Bool)

(assert (=> b!5489296 (= e!3396603 (and (inv!81844 (h!68942 zl!343)) e!3396606 tp!1509005))))

(declare-fun e!3396602 () Bool)

(assert (=> b!5489298 (= e!3396602 e!3396598)))

(declare-fun res!2341196 () Bool)

(assert (=> b!5489298 (=> res!2341196 e!3396598)))

(assert (=> b!5489298 (= res!2341196 (not (forall!14636 (exprs!5323 lt!2241869) lambda!293809)))))

(assert (=> b!5489298 (forall!14636 (exprs!5323 lt!2241869) lambda!293809)))

(declare-fun lt!2241872 () Unit!155334)

(declare-fun lemmaContextForallValidExprs!44 (Context!9646 List!62616) Unit!155334)

(assert (=> b!5489298 (= lt!2241872 (lemmaContextForallValidExprs!44 lt!2241869 (exprs!5323 lt!2241869)))))

(declare-fun lambda!293808 () Int)

(declare-fun getWitness!900 (List!62618 Int) Context!9646)

(assert (=> b!5489298 (= lt!2241869 (getWitness!900 zl!343 lambda!293808))))

(declare-fun b!5489299 () Bool)

(declare-fun e!3396595 () Bool)

(declare-fun tp_is_empty!40131 () Bool)

(assert (=> b!5489299 (= e!3396595 tp_is_empty!40131)))

(declare-fun b!5489300 () Bool)

(declare-fun tp!1509008 () Bool)

(declare-fun tp!1509000 () Bool)

(assert (=> b!5489300 (= e!3396595 (and tp!1509008 tp!1509000))))

(declare-fun setIsEmpty!36285 () Bool)

(declare-fun setRes!36285 () Bool)

(assert (=> setIsEmpty!36285 setRes!36285))

(declare-fun b!5489301 () Bool)

(declare-fun res!2341190 () Bool)

(declare-fun e!3396604 () Bool)

(assert (=> b!5489301 (=> (not res!2341190) (not e!3396604))))

(declare-fun r!7292 () Regex!15439)

(declare-fun unfocusZipper!1181 (List!62618) Regex!15439)

(assert (=> b!5489301 (= res!2341190 (= r!7292 (unfocusZipper!1181 zl!343)))))

(declare-fun b!5489302 () Bool)

(declare-fun res!2341194 () Bool)

(assert (=> b!5489302 (=> res!2341194 e!3396596)))

(get-info :version)

(assert (=> b!5489302 (= res!2341194 (or (not ((_ is Cons!62494) zl!343)) ((_ is Nil!62493) s!2326) (not (= zl!343 (Cons!62494 (h!68942 zl!343) (t!375849 zl!343))))))))

(declare-fun b!5489303 () Bool)

(declare-fun tp!1509007 () Bool)

(declare-fun tp!1509003 () Bool)

(assert (=> b!5489303 (= e!3396595 (and tp!1509007 tp!1509003))))

(declare-fun setNonEmpty!36285 () Bool)

(declare-fun tp!1509002 () Bool)

(declare-fun setElem!36285 () Context!9646)

(assert (=> setNonEmpty!36285 (= setRes!36285 (and tp!1509002 (inv!81844 setElem!36285) e!3396601))))

(declare-fun setRest!36285 () (InoxSet Context!9646))

(assert (=> setNonEmpty!36285 (= z!1189 ((_ map or) (store ((as const (Array Context!9646 Bool)) false) setElem!36285 true) setRest!36285))))

(declare-fun b!5489304 () Bool)

(assert (=> b!5489304 (= e!3396604 (not e!3396596))))

(declare-fun res!2341199 () Bool)

(assert (=> b!5489304 (=> res!2341199 e!3396596)))

(assert (=> b!5489304 (= res!2341199 e!3396605)))

(declare-fun res!2341200 () Bool)

(assert (=> b!5489304 (=> (not res!2341200) (not e!3396605))))

(assert (=> b!5489304 (= res!2341200 ((_ is Cons!62494) zl!343))))

(declare-fun lt!2241873 () Bool)

(declare-fun matchRSpec!2542 (Regex!15439 List!62617) Bool)

(assert (=> b!5489304 (= lt!2241873 (matchRSpec!2542 r!7292 s!2326))))

(declare-fun matchR!7624 (Regex!15439 List!62617) Bool)

(assert (=> b!5489304 (= lt!2241873 (matchR!7624 r!7292 s!2326))))

(declare-fun lt!2241867 () Unit!155334)

(declare-fun mainMatchTheorem!2542 (Regex!15439 List!62617) Unit!155334)

(assert (=> b!5489304 (= lt!2241867 (mainMatchTheorem!2542 r!7292 s!2326))))

(declare-fun b!5489305 () Bool)

(declare-fun res!2341192 () Bool)

(assert (=> b!5489305 (=> (not res!2341192) (not e!3396604))))

(declare-fun toList!9223 ((InoxSet Context!9646)) List!62618)

(assert (=> b!5489305 (= res!2341192 (= (toList!9223 z!1189) zl!343))))

(assert (=> b!5489306 (= e!3396599 e!3396602)))

(declare-fun res!2341191 () Bool)

(assert (=> b!5489306 (=> res!2341191 e!3396602)))

(declare-fun exists!2102 (List!62618 Int) Bool)

(assert (=> b!5489306 (= res!2341191 (not (exists!2102 zl!343 lambda!293808)))))

(assert (=> b!5489306 (exists!2102 zl!343 lambda!293808)))

(declare-fun lt!2241871 () Unit!155334)

(declare-fun lemmaZipperMatchesExistsMatchingContext!66 (List!62618 List!62617) Unit!155334)

(assert (=> b!5489306 (= lt!2241871 (lemmaZipperMatchesExistsMatchingContext!66 zl!343 s!2326))))

(declare-fun b!5489307 () Bool)

(declare-fun tp!1509004 () Bool)

(assert (=> b!5489307 (= e!3396606 tp!1509004)))

(assert (=> b!5489308 (= e!3396596 e!3396599)))

(declare-fun res!2341193 () Bool)

(assert (=> b!5489308 (=> res!2341193 e!3396599)))

(assert (=> b!5489308 (= res!2341193 lt!2241873)))

(declare-fun lt!2241868 () List!62616)

(declare-fun exists!2103 (List!62616 Int) Bool)

(assert (=> b!5489308 (= lt!2241873 (exists!2103 lt!2241868 lambda!293807))))

(declare-fun lt!2241864 () Unit!155334)

(declare-fun matchRGenUnionSpec!272 (Regex!15439 List!62616 List!62617) Unit!155334)

(assert (=> b!5489308 (= lt!2241864 (matchRGenUnionSpec!272 r!7292 lt!2241868 s!2326))))

(declare-fun unfocusZipperList!871 (List!62618) List!62616)

(assert (=> b!5489308 (= lt!2241868 (unfocusZipperList!871 zl!343))))

(declare-fun b!5489309 () Bool)

(declare-fun res!2341197 () Bool)

(assert (=> b!5489309 (=> res!2341197 e!3396599)))

(assert (=> b!5489309 (= res!2341197 (exists!2103 lt!2241868 lambda!293807))))

(declare-fun b!5489310 () Bool)

(declare-fun e!3396597 () Bool)

(declare-fun tp!1509006 () Bool)

(assert (=> b!5489310 (= e!3396597 (and tp_is_empty!40131 tp!1509006))))

(declare-fun b!5489297 () Bool)

(declare-fun tp!1509009 () Bool)

(assert (=> b!5489297 (= e!3396595 tp!1509009)))

(declare-fun res!2341188 () Bool)

(assert (=> start!573802 (=> (not res!2341188) (not e!3396604))))

(declare-fun validRegex!7175 (Regex!15439) Bool)

(assert (=> start!573802 (= res!2341188 (validRegex!7175 r!7292))))

(assert (=> start!573802 e!3396604))

(assert (=> start!573802 e!3396595))

(declare-fun condSetEmpty!36285 () Bool)

(assert (=> start!573802 (= condSetEmpty!36285 (= z!1189 ((as const (Array Context!9646 Bool)) false)))))

(assert (=> start!573802 setRes!36285))

(assert (=> start!573802 e!3396603))

(assert (=> start!573802 e!3396597))

(assert (= (and start!573802 res!2341188) b!5489305))

(assert (= (and b!5489305 res!2341192) b!5489301))

(assert (= (and b!5489301 res!2341190) b!5489304))

(assert (= (and b!5489304 res!2341200) b!5489293))

(assert (= (and b!5489304 (not res!2341199)) b!5489302))

(assert (= (and b!5489302 (not res!2341194)) b!5489294))

(assert (= (and b!5489294 (not res!2341189)) b!5489308))

(assert (= (and b!5489308 (not res!2341193)) b!5489309))

(assert (= (and b!5489309 (not res!2341197)) b!5489290))

(assert (= (and b!5489290 (not res!2341198)) b!5489306))

(assert (= (and b!5489306 (not res!2341191)) b!5489298))

(assert (= (and b!5489298 (not res!2341196)) b!5489295))

(assert (= (and b!5489295 (not res!2341195)) b!5489291))

(assert (= (and start!573802 ((_ is ElementMatch!15439) r!7292)) b!5489299))

(assert (= (and start!573802 ((_ is Concat!24284) r!7292)) b!5489303))

(assert (= (and start!573802 ((_ is Star!15439) r!7292)) b!5489297))

(assert (= (and start!573802 ((_ is Union!15439) r!7292)) b!5489300))

(assert (= (and start!573802 condSetEmpty!36285) setIsEmpty!36285))

(assert (= (and start!573802 (not condSetEmpty!36285)) setNonEmpty!36285))

(assert (= setNonEmpty!36285 b!5489292))

(assert (= b!5489296 b!5489307))

(assert (= (and start!573802 ((_ is Cons!62494) zl!343)) b!5489296))

(assert (= (and start!573802 ((_ is Cons!62493) s!2326)) b!5489310))

(declare-fun m!6502784 () Bool)

(assert (=> b!5489305 m!6502784))

(declare-fun m!6502786 () Bool)

(assert (=> b!5489301 m!6502786))

(declare-fun m!6502788 () Bool)

(assert (=> b!5489291 m!6502788))

(declare-fun m!6502790 () Bool)

(assert (=> b!5489309 m!6502790))

(declare-fun m!6502792 () Bool)

(assert (=> b!5489295 m!6502792))

(declare-fun m!6502794 () Bool)

(assert (=> b!5489295 m!6502794))

(declare-fun m!6502796 () Bool)

(assert (=> b!5489295 m!6502796))

(declare-fun m!6502798 () Bool)

(assert (=> b!5489295 m!6502798))

(assert (=> b!5489308 m!6502790))

(declare-fun m!6502800 () Bool)

(assert (=> b!5489308 m!6502800))

(declare-fun m!6502802 () Bool)

(assert (=> b!5489308 m!6502802))

(declare-fun m!6502804 () Bool)

(assert (=> b!5489304 m!6502804))

(declare-fun m!6502806 () Bool)

(assert (=> b!5489304 m!6502806))

(declare-fun m!6502808 () Bool)

(assert (=> b!5489304 m!6502808))

(declare-fun m!6502810 () Bool)

(assert (=> b!5489290 m!6502810))

(assert (=> b!5489298 m!6502788))

(assert (=> b!5489298 m!6502788))

(declare-fun m!6502812 () Bool)

(assert (=> b!5489298 m!6502812))

(declare-fun m!6502814 () Bool)

(assert (=> b!5489298 m!6502814))

(declare-fun m!6502816 () Bool)

(assert (=> b!5489296 m!6502816))

(declare-fun m!6502818 () Bool)

(assert (=> b!5489306 m!6502818))

(assert (=> b!5489306 m!6502818))

(declare-fun m!6502820 () Bool)

(assert (=> b!5489306 m!6502820))

(declare-fun m!6502822 () Bool)

(assert (=> setNonEmpty!36285 m!6502822))

(declare-fun m!6502824 () Bool)

(assert (=> b!5489294 m!6502824))

(declare-fun m!6502826 () Bool)

(assert (=> start!573802 m!6502826))

(assert (=> b!5489293 m!6502824))

(check-sat (not b!5489308) (not b!5489309) (not b!5489296) (not b!5489307) (not start!573802) (not b!5489297) tp_is_empty!40131 (not b!5489294) (not b!5489305) (not b!5489291) (not b!5489300) (not b!5489290) (not b!5489306) (not b!5489301) (not b!5489304) (not b!5489295) (not b!5489293) (not setNonEmpty!36285) (not b!5489303) (not b!5489310) (not b!5489292) (not b!5489298))
(check-sat)
