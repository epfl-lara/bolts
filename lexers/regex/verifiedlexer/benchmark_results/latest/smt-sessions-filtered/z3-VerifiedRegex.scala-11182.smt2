; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582596 () Bool)

(assert start!582596)

(declare-fun b!5623161 () Bool)

(assert (=> b!5623161 true))

(assert (=> b!5623161 true))

(declare-fun lambda!301959 () Int)

(declare-fun lambda!301958 () Int)

(assert (=> b!5623161 (not (= lambda!301959 lambda!301958))))

(assert (=> b!5623161 true))

(assert (=> b!5623161 true))

(declare-fun b!5623168 () Bool)

(assert (=> b!5623168 true))

(declare-fun b!5623157 () Bool)

(declare-fun res!2381769 () Bool)

(declare-fun e!3466276 () Bool)

(assert (=> b!5623157 (=> res!2381769 e!3466276)))

(declare-datatypes ((C!31492 0))(
  ( (C!31493 (val!25448 Int)) )
))
(declare-datatypes ((Regex!15611 0))(
  ( (ElementMatch!15611 (c!986945 C!31492)) (Concat!24456 (regOne!31734 Regex!15611) (regTwo!31734 Regex!15611)) (EmptyExpr!15611) (Star!15611 (reg!15940 Regex!15611)) (EmptyLang!15611) (Union!15611 (regOne!31735 Regex!15611) (regTwo!31735 Regex!15611)) )
))
(declare-fun r!7292 () Regex!15611)

(get-info :version)

(assert (=> b!5623157 (= res!2381769 (or ((_ is EmptyExpr!15611) r!7292) ((_ is EmptyLang!15611) r!7292) ((_ is ElementMatch!15611) r!7292) ((_ is Union!15611) r!7292) (not ((_ is Concat!24456) r!7292))))))

(declare-fun b!5623158 () Bool)

(declare-fun e!3466280 () Bool)

(declare-fun tp_is_empty!40475 () Bool)

(declare-fun tp!1557039 () Bool)

(assert (=> b!5623158 (= e!3466280 (and tp_is_empty!40475 tp!1557039))))

(declare-fun b!5623159 () Bool)

(declare-fun res!2381779 () Bool)

(declare-fun e!3466277 () Bool)

(assert (=> b!5623159 (=> (not res!2381779) (not e!3466277))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63132 0))(
  ( (Nil!63008) (Cons!63008 (h!69456 Regex!15611) (t!376422 List!63132)) )
))
(declare-datatypes ((Context!9990 0))(
  ( (Context!9991 (exprs!5495 List!63132)) )
))
(declare-fun z!1189 () (InoxSet Context!9990))

(declare-datatypes ((List!63133 0))(
  ( (Nil!63009) (Cons!63009 (h!69457 Context!9990) (t!376423 List!63133)) )
))
(declare-fun zl!343 () List!63133)

(declare-fun toList!9395 ((InoxSet Context!9990)) List!63133)

(assert (=> b!5623159 (= res!2381779 (= (toList!9395 z!1189) zl!343))))

(declare-fun tp!1557032 () Bool)

(declare-fun setElem!37526 () Context!9990)

(declare-fun setRes!37526 () Bool)

(declare-fun setNonEmpty!37526 () Bool)

(declare-fun e!3466278 () Bool)

(declare-fun inv!82274 (Context!9990) Bool)

(assert (=> setNonEmpty!37526 (= setRes!37526 (and tp!1557032 (inv!82274 setElem!37526) e!3466278))))

(declare-fun setRest!37526 () (InoxSet Context!9990))

(assert (=> setNonEmpty!37526 (= z!1189 ((_ map or) (store ((as const (Array Context!9990 Bool)) false) setElem!37526 true) setRest!37526))))

(declare-fun b!5623160 () Bool)

(declare-fun e!3466279 () Bool)

(declare-fun tp!1557037 () Bool)

(declare-fun tp!1557036 () Bool)

(assert (=> b!5623160 (= e!3466279 (and tp!1557037 tp!1557036))))

(declare-fun e!3466274 () Bool)

(assert (=> b!5623161 (= e!3466276 e!3466274)))

(declare-fun res!2381780 () Bool)

(assert (=> b!5623161 (=> res!2381780 e!3466274)))

(declare-datatypes ((List!63134 0))(
  ( (Nil!63010) (Cons!63010 (h!69458 C!31492) (t!376424 List!63134)) )
))
(declare-fun s!2326 () List!63134)

(declare-fun lt!2260970 () Bool)

(declare-fun lt!2260975 () Bool)

(assert (=> b!5623161 (= res!2381780 (or (not (= lt!2260975 lt!2260970)) ((_ is Nil!63010) s!2326)))))

(declare-fun Exists!2711 (Int) Bool)

(assert (=> b!5623161 (= (Exists!2711 lambda!301958) (Exists!2711 lambda!301959))))

(declare-datatypes ((Unit!155976 0))(
  ( (Unit!155977) )
))
(declare-fun lt!2260972 () Unit!155976)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1340 (Regex!15611 Regex!15611 List!63134) Unit!155976)

(assert (=> b!5623161 (= lt!2260972 (lemmaExistCutMatchRandMatchRSpecEquivalent!1340 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326))))

(assert (=> b!5623161 (= lt!2260970 (Exists!2711 lambda!301958))))

(declare-datatypes ((tuple2!65416 0))(
  ( (tuple2!65417 (_1!36011 List!63134) (_2!36011 List!63134)) )
))
(declare-datatypes ((Option!15620 0))(
  ( (None!15619) (Some!15619 (v!51664 tuple2!65416)) )
))
(declare-fun isDefined!12323 (Option!15620) Bool)

(declare-fun findConcatSeparation!2034 (Regex!15611 Regex!15611 List!63134 List!63134 List!63134) Option!15620)

(assert (=> b!5623161 (= lt!2260970 (isDefined!12323 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326)))))

(declare-fun lt!2260976 () Unit!155976)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1798 (Regex!15611 Regex!15611 List!63134) Unit!155976)

(assert (=> b!5623161 (= lt!2260976 (lemmaFindConcatSeparationEquivalentToExists!1798 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326))))

(declare-fun b!5623163 () Bool)

(declare-fun tp!1557034 () Bool)

(assert (=> b!5623163 (= e!3466279 tp!1557034)))

(declare-fun b!5623164 () Bool)

(declare-fun res!2381782 () Bool)

(assert (=> b!5623164 (=> res!2381782 e!3466276)))

(declare-fun isEmpty!34838 (List!63133) Bool)

(assert (=> b!5623164 (= res!2381782 (not (isEmpty!34838 (t!376423 zl!343))))))

(declare-fun b!5623165 () Bool)

(declare-fun e!3466283 () Unit!155976)

(declare-fun Unit!155978 () Unit!155976)

(assert (=> b!5623165 (= e!3466283 Unit!155978)))

(declare-fun b!5623166 () Bool)

(declare-fun e!3466281 () Bool)

(declare-fun e!3466282 () Bool)

(declare-fun tp!1557031 () Bool)

(assert (=> b!5623166 (= e!3466282 (and (inv!82274 (h!69457 zl!343)) e!3466281 tp!1557031))))

(declare-fun b!5623167 () Bool)

(declare-fun res!2381776 () Bool)

(declare-fun e!3466275 () Bool)

(assert (=> b!5623167 (=> res!2381776 e!3466275)))

(declare-fun nullable!5643 (Regex!15611) Bool)

(assert (=> b!5623167 (= res!2381776 (not (nullable!5643 (regOne!31734 (regOne!31734 r!7292)))))))

(assert (=> b!5623168 (= e!3466274 e!3466275)))

(declare-fun res!2381770 () Bool)

(assert (=> b!5623168 (=> res!2381770 e!3466275)))

(assert (=> b!5623168 (= res!2381770 (or (and ((_ is ElementMatch!15611) (regOne!31734 r!7292)) (= (c!986945 (regOne!31734 r!7292)) (h!69458 s!2326))) ((_ is Union!15611) (regOne!31734 r!7292)) (not ((_ is Concat!24456) (regOne!31734 r!7292)))))))

(declare-fun lt!2260971 () Unit!155976)

(assert (=> b!5623168 (= lt!2260971 e!3466283)))

(declare-fun c!986944 () Bool)

(assert (=> b!5623168 (= c!986944 (nullable!5643 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun lambda!301960 () Int)

(declare-fun flatMap!1224 ((InoxSet Context!9990) Int) (InoxSet Context!9990))

(declare-fun derivationStepZipperUp!879 (Context!9990 C!31492) (InoxSet Context!9990))

(assert (=> b!5623168 (= (flatMap!1224 z!1189 lambda!301960) (derivationStepZipperUp!879 (h!69457 zl!343) (h!69458 s!2326)))))

(declare-fun lt!2260974 () Unit!155976)

(declare-fun lemmaFlatMapOnSingletonSet!756 ((InoxSet Context!9990) Context!9990 Int) Unit!155976)

(assert (=> b!5623168 (= lt!2260974 (lemmaFlatMapOnSingletonSet!756 z!1189 (h!69457 zl!343) lambda!301960))))

(declare-fun lt!2260967 () (InoxSet Context!9990))

(declare-fun lt!2260973 () Context!9990)

(assert (=> b!5623168 (= lt!2260967 (derivationStepZipperUp!879 lt!2260973 (h!69458 s!2326)))))

(declare-fun lt!2260968 () (InoxSet Context!9990))

(declare-fun derivationStepZipperDown!953 (Regex!15611 Context!9990 C!31492) (InoxSet Context!9990))

(assert (=> b!5623168 (= lt!2260968 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (h!69457 zl!343))) lt!2260973 (h!69458 s!2326)))))

(assert (=> b!5623168 (= lt!2260973 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun lt!2260977 () (InoxSet Context!9990))

(assert (=> b!5623168 (= lt!2260977 (derivationStepZipperUp!879 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))) (h!69458 s!2326)))))

(declare-fun b!5623169 () Bool)

(declare-fun res!2381772 () Bool)

(assert (=> b!5623169 (=> (not res!2381772) (not e!3466277))))

(declare-fun unfocusZipper!1353 (List!63133) Regex!15611)

(assert (=> b!5623169 (= res!2381772 (= r!7292 (unfocusZipper!1353 zl!343)))))

(declare-fun b!5623170 () Bool)

(declare-fun res!2381774 () Bool)

(assert (=> b!5623170 (=> res!2381774 e!3466276)))

(declare-fun generalisedUnion!1474 (List!63132) Regex!15611)

(declare-fun unfocusZipperList!1039 (List!63133) List!63132)

(assert (=> b!5623170 (= res!2381774 (not (= r!7292 (generalisedUnion!1474 (unfocusZipperList!1039 zl!343)))))))

(declare-fun b!5623171 () Bool)

(assert (=> b!5623171 (= e!3466279 tp_is_empty!40475)))

(declare-fun setIsEmpty!37526 () Bool)

(assert (=> setIsEmpty!37526 setRes!37526))

(declare-fun b!5623172 () Bool)

(declare-fun res!2381771 () Bool)

(assert (=> b!5623172 (=> res!2381771 e!3466276)))

(assert (=> b!5623172 (= res!2381771 (not ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623173 () Bool)

(declare-fun res!2381778 () Bool)

(assert (=> b!5623173 (=> res!2381778 e!3466276)))

(declare-fun generalisedConcat!1226 (List!63132) Regex!15611)

(assert (=> b!5623173 (= res!2381778 (not (= r!7292 (generalisedConcat!1226 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623174 () Bool)

(declare-fun e!3466284 () Bool)

(declare-fun matchZipper!1749 ((InoxSet Context!9990) List!63134) Bool)

(assert (=> b!5623174 (= e!3466284 (matchZipper!1749 lt!2260967 (t!376424 s!2326)))))

(declare-fun b!5623175 () Bool)

(declare-fun Unit!155979 () Unit!155976)

(assert (=> b!5623175 (= e!3466283 Unit!155979)))

(declare-fun lt!2260978 () Unit!155976)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!636 ((InoxSet Context!9990) (InoxSet Context!9990) List!63134) Unit!155976)

(assert (=> b!5623175 (= lt!2260978 (lemmaZipperConcatMatchesSameAsBothZippers!636 lt!2260968 lt!2260967 (t!376424 s!2326)))))

(declare-fun res!2381781 () Bool)

(assert (=> b!5623175 (= res!2381781 (matchZipper!1749 lt!2260968 (t!376424 s!2326)))))

(assert (=> b!5623175 (=> res!2381781 e!3466284)))

(assert (=> b!5623175 (= (matchZipper!1749 ((_ map or) lt!2260968 lt!2260967) (t!376424 s!2326)) e!3466284)))

(declare-fun b!5623176 () Bool)

(assert (=> b!5623176 (= e!3466275 (= lt!2260968 ((_ map or) (derivationStepZipperDown!953 (regOne!31734 (regOne!31734 r!7292)) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (h!69458 s!2326)) (derivationStepZipperDown!953 (regTwo!31734 (regOne!31734 r!7292)) lt!2260973 (h!69458 s!2326)))))))

(declare-fun b!5623177 () Bool)

(declare-fun tp!1557030 () Bool)

(declare-fun tp!1557033 () Bool)

(assert (=> b!5623177 (= e!3466279 (and tp!1557030 tp!1557033))))

(declare-fun b!5623178 () Bool)

(declare-fun tp!1557038 () Bool)

(assert (=> b!5623178 (= e!3466278 tp!1557038)))

(declare-fun b!5623162 () Bool)

(assert (=> b!5623162 (= e!3466277 (not e!3466276))))

(declare-fun res!2381777 () Bool)

(assert (=> b!5623162 (=> res!2381777 e!3466276)))

(assert (=> b!5623162 (= res!2381777 (not ((_ is Cons!63009) zl!343)))))

(declare-fun matchRSpec!2714 (Regex!15611 List!63134) Bool)

(assert (=> b!5623162 (= lt!2260975 (matchRSpec!2714 r!7292 s!2326))))

(declare-fun matchR!7796 (Regex!15611 List!63134) Bool)

(assert (=> b!5623162 (= lt!2260975 (matchR!7796 r!7292 s!2326))))

(declare-fun lt!2260969 () Unit!155976)

(declare-fun mainMatchTheorem!2714 (Regex!15611 List!63134) Unit!155976)

(assert (=> b!5623162 (= lt!2260969 (mainMatchTheorem!2714 r!7292 s!2326))))

(declare-fun res!2381773 () Bool)

(assert (=> start!582596 (=> (not res!2381773) (not e!3466277))))

(declare-fun validRegex!7347 (Regex!15611) Bool)

(assert (=> start!582596 (= res!2381773 (validRegex!7347 r!7292))))

(assert (=> start!582596 e!3466277))

(assert (=> start!582596 e!3466279))

(declare-fun condSetEmpty!37526 () Bool)

(assert (=> start!582596 (= condSetEmpty!37526 (= z!1189 ((as const (Array Context!9990 Bool)) false)))))

(assert (=> start!582596 setRes!37526))

(assert (=> start!582596 e!3466282))

(assert (=> start!582596 e!3466280))

(declare-fun b!5623179 () Bool)

(declare-fun tp!1557035 () Bool)

(assert (=> b!5623179 (= e!3466281 tp!1557035)))

(declare-fun b!5623180 () Bool)

(declare-fun res!2381775 () Bool)

(assert (=> b!5623180 (=> res!2381775 e!3466274)))

(declare-fun isEmpty!34839 (List!63132) Bool)

(assert (=> b!5623180 (= res!2381775 (isEmpty!34839 (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(assert (= (and start!582596 res!2381773) b!5623159))

(assert (= (and b!5623159 res!2381779) b!5623169))

(assert (= (and b!5623169 res!2381772) b!5623162))

(assert (= (and b!5623162 (not res!2381777)) b!5623164))

(assert (= (and b!5623164 (not res!2381782)) b!5623173))

(assert (= (and b!5623173 (not res!2381778)) b!5623172))

(assert (= (and b!5623172 (not res!2381771)) b!5623170))

(assert (= (and b!5623170 (not res!2381774)) b!5623157))

(assert (= (and b!5623157 (not res!2381769)) b!5623161))

(assert (= (and b!5623161 (not res!2381780)) b!5623180))

(assert (= (and b!5623180 (not res!2381775)) b!5623168))

(assert (= (and b!5623168 c!986944) b!5623175))

(assert (= (and b!5623168 (not c!986944)) b!5623165))

(assert (= (and b!5623175 (not res!2381781)) b!5623174))

(assert (= (and b!5623168 (not res!2381770)) b!5623167))

(assert (= (and b!5623167 (not res!2381776)) b!5623176))

(assert (= (and start!582596 ((_ is ElementMatch!15611) r!7292)) b!5623171))

(assert (= (and start!582596 ((_ is Concat!24456) r!7292)) b!5623177))

(assert (= (and start!582596 ((_ is Star!15611) r!7292)) b!5623163))

(assert (= (and start!582596 ((_ is Union!15611) r!7292)) b!5623160))

(assert (= (and start!582596 condSetEmpty!37526) setIsEmpty!37526))

(assert (= (and start!582596 (not condSetEmpty!37526)) setNonEmpty!37526))

(assert (= setNonEmpty!37526 b!5623178))

(assert (= b!5623166 b!5623179))

(assert (= (and start!582596 ((_ is Cons!63009) zl!343)) b!5623166))

(assert (= (and start!582596 ((_ is Cons!63010) s!2326)) b!5623158))

(declare-fun m!6596246 () Bool)

(assert (=> b!5623174 m!6596246))

(declare-fun m!6596248 () Bool)

(assert (=> b!5623164 m!6596248))

(declare-fun m!6596250 () Bool)

(assert (=> b!5623175 m!6596250))

(declare-fun m!6596252 () Bool)

(assert (=> b!5623175 m!6596252))

(declare-fun m!6596254 () Bool)

(assert (=> b!5623175 m!6596254))

(declare-fun m!6596256 () Bool)

(assert (=> b!5623173 m!6596256))

(declare-fun m!6596258 () Bool)

(assert (=> b!5623159 m!6596258))

(declare-fun m!6596260 () Bool)

(assert (=> start!582596 m!6596260))

(declare-fun m!6596262 () Bool)

(assert (=> b!5623167 m!6596262))

(declare-fun m!6596264 () Bool)

(assert (=> b!5623166 m!6596264))

(declare-fun m!6596266 () Bool)

(assert (=> b!5623162 m!6596266))

(declare-fun m!6596268 () Bool)

(assert (=> b!5623162 m!6596268))

(declare-fun m!6596270 () Bool)

(assert (=> b!5623162 m!6596270))

(declare-fun m!6596272 () Bool)

(assert (=> b!5623176 m!6596272))

(declare-fun m!6596274 () Bool)

(assert (=> b!5623176 m!6596274))

(declare-fun m!6596276 () Bool)

(assert (=> b!5623161 m!6596276))

(declare-fun m!6596278 () Bool)

(assert (=> b!5623161 m!6596278))

(declare-fun m!6596280 () Bool)

(assert (=> b!5623161 m!6596280))

(declare-fun m!6596282 () Bool)

(assert (=> b!5623161 m!6596282))

(declare-fun m!6596284 () Bool)

(assert (=> b!5623161 m!6596284))

(assert (=> b!5623161 m!6596276))

(assert (=> b!5623161 m!6596278))

(declare-fun m!6596286 () Bool)

(assert (=> b!5623161 m!6596286))

(declare-fun m!6596288 () Bool)

(assert (=> b!5623170 m!6596288))

(assert (=> b!5623170 m!6596288))

(declare-fun m!6596290 () Bool)

(assert (=> b!5623170 m!6596290))

(declare-fun m!6596292 () Bool)

(assert (=> b!5623180 m!6596292))

(declare-fun m!6596294 () Bool)

(assert (=> b!5623169 m!6596294))

(declare-fun m!6596296 () Bool)

(assert (=> setNonEmpty!37526 m!6596296))

(declare-fun m!6596298 () Bool)

(assert (=> b!5623168 m!6596298))

(declare-fun m!6596300 () Bool)

(assert (=> b!5623168 m!6596300))

(declare-fun m!6596302 () Bool)

(assert (=> b!5623168 m!6596302))

(declare-fun m!6596304 () Bool)

(assert (=> b!5623168 m!6596304))

(declare-fun m!6596306 () Bool)

(assert (=> b!5623168 m!6596306))

(declare-fun m!6596308 () Bool)

(assert (=> b!5623168 m!6596308))

(declare-fun m!6596310 () Bool)

(assert (=> b!5623168 m!6596310))

(check-sat (not b!5623170) (not b!5623168) (not b!5623158) (not b!5623164) (not b!5623167) (not setNonEmpty!37526) (not b!5623159) (not b!5623174) (not b!5623179) (not b!5623175) (not b!5623177) (not b!5623160) (not b!5623162) (not b!5623163) (not b!5623169) tp_is_empty!40475 (not b!5623173) (not b!5623161) (not b!5623180) (not b!5623166) (not b!5623178) (not b!5623176) (not start!582596))
(check-sat)
(get-model)

(declare-fun bs!1301958 () Bool)

(declare-fun b!5623254 () Bool)

(assert (= bs!1301958 (and b!5623254 b!5623161)))

(declare-fun lambda!301965 () Int)

(assert (=> bs!1301958 (not (= lambda!301965 lambda!301958))))

(assert (=> bs!1301958 (not (= lambda!301965 lambda!301959))))

(assert (=> b!5623254 true))

(assert (=> b!5623254 true))

(declare-fun bs!1301959 () Bool)

(declare-fun b!5623253 () Bool)

(assert (= bs!1301959 (and b!5623253 b!5623161)))

(declare-fun lambda!301966 () Int)

(assert (=> bs!1301959 (not (= lambda!301966 lambda!301958))))

(assert (=> bs!1301959 (= lambda!301966 lambda!301959)))

(declare-fun bs!1301960 () Bool)

(assert (= bs!1301960 (and b!5623253 b!5623254)))

(assert (=> bs!1301960 (not (= lambda!301966 lambda!301965))))

(assert (=> b!5623253 true))

(assert (=> b!5623253 true))

(declare-fun b!5623246 () Bool)

(declare-fun e!3466321 () Bool)

(declare-fun call!423425 () Bool)

(assert (=> b!5623246 (= e!3466321 call!423425)))

(declare-fun b!5623247 () Bool)

(declare-fun res!2381816 () Bool)

(declare-fun e!3466318 () Bool)

(assert (=> b!5623247 (=> res!2381816 e!3466318)))

(assert (=> b!5623247 (= res!2381816 call!423425)))

(declare-fun e!3466324 () Bool)

(assert (=> b!5623247 (= e!3466324 e!3466318)))

(declare-fun b!5623248 () Bool)

(declare-fun e!3466323 () Bool)

(assert (=> b!5623248 (= e!3466323 e!3466324)))

(declare-fun c!986961 () Bool)

(assert (=> b!5623248 (= c!986961 ((_ is Star!15611) r!7292))))

(declare-fun bm!423419 () Bool)

(declare-fun isEmpty!34840 (List!63134) Bool)

(assert (=> bm!423419 (= call!423425 (isEmpty!34840 s!2326))))

(declare-fun bm!423420 () Bool)

(declare-fun call!423424 () Bool)

(assert (=> bm!423420 (= call!423424 (Exists!2711 (ite c!986961 lambda!301965 lambda!301966)))))

(declare-fun b!5623250 () Bool)

(declare-fun e!3466320 () Bool)

(assert (=> b!5623250 (= e!3466321 e!3466320)))

(declare-fun res!2381815 () Bool)

(assert (=> b!5623250 (= res!2381815 (not ((_ is EmptyLang!15611) r!7292)))))

(assert (=> b!5623250 (=> (not res!2381815) (not e!3466320))))

(declare-fun b!5623251 () Bool)

(declare-fun e!3466319 () Bool)

(assert (=> b!5623251 (= e!3466323 e!3466319)))

(declare-fun res!2381814 () Bool)

(assert (=> b!5623251 (= res!2381814 (matchRSpec!2714 (regOne!31735 r!7292) s!2326))))

(assert (=> b!5623251 (=> res!2381814 e!3466319)))

(declare-fun b!5623252 () Bool)

(declare-fun c!986960 () Bool)

(assert (=> b!5623252 (= c!986960 ((_ is Union!15611) r!7292))))

(declare-fun e!3466322 () Bool)

(assert (=> b!5623252 (= e!3466322 e!3466323)))

(assert (=> b!5623253 (= e!3466324 call!423424)))

(assert (=> b!5623254 (= e!3466318 call!423424)))

(declare-fun b!5623249 () Bool)

(declare-fun c!986963 () Bool)

(assert (=> b!5623249 (= c!986963 ((_ is ElementMatch!15611) r!7292))))

(assert (=> b!5623249 (= e!3466320 e!3466322)))

(declare-fun d!1776651 () Bool)

(declare-fun c!986962 () Bool)

(assert (=> d!1776651 (= c!986962 ((_ is EmptyExpr!15611) r!7292))))

(assert (=> d!1776651 (= (matchRSpec!2714 r!7292 s!2326) e!3466321)))

(declare-fun b!5623255 () Bool)

(assert (=> b!5623255 (= e!3466319 (matchRSpec!2714 (regTwo!31735 r!7292) s!2326))))

(declare-fun b!5623256 () Bool)

(assert (=> b!5623256 (= e!3466322 (= s!2326 (Cons!63010 (c!986945 r!7292) Nil!63010)))))

(assert (= (and d!1776651 c!986962) b!5623246))

(assert (= (and d!1776651 (not c!986962)) b!5623250))

(assert (= (and b!5623250 res!2381815) b!5623249))

(assert (= (and b!5623249 c!986963) b!5623256))

(assert (= (and b!5623249 (not c!986963)) b!5623252))

(assert (= (and b!5623252 c!986960) b!5623251))

(assert (= (and b!5623252 (not c!986960)) b!5623248))

(assert (= (and b!5623251 (not res!2381814)) b!5623255))

(assert (= (and b!5623248 c!986961) b!5623247))

(assert (= (and b!5623248 (not c!986961)) b!5623253))

(assert (= (and b!5623247 (not res!2381816)) b!5623254))

(assert (= (or b!5623254 b!5623253) bm!423420))

(assert (= (or b!5623246 b!5623247) bm!423419))

(declare-fun m!6596336 () Bool)

(assert (=> bm!423419 m!6596336))

(declare-fun m!6596338 () Bool)

(assert (=> bm!423420 m!6596338))

(declare-fun m!6596340 () Bool)

(assert (=> b!5623251 m!6596340))

(declare-fun m!6596342 () Bool)

(assert (=> b!5623255 m!6596342))

(assert (=> b!5623162 d!1776651))

(declare-fun b!5623289 () Bool)

(declare-fun res!2381837 () Bool)

(declare-fun e!3466342 () Bool)

(assert (=> b!5623289 (=> res!2381837 e!3466342)))

(declare-fun tail!11064 (List!63134) List!63134)

(assert (=> b!5623289 (= res!2381837 (not (isEmpty!34840 (tail!11064 s!2326))))))

(declare-fun b!5623290 () Bool)

(declare-fun res!2381839 () Bool)

(declare-fun e!3466347 () Bool)

(assert (=> b!5623290 (=> (not res!2381839) (not e!3466347))))

(declare-fun call!423428 () Bool)

(assert (=> b!5623290 (= res!2381839 (not call!423428))))

(declare-fun b!5623292 () Bool)

(declare-fun res!2381840 () Bool)

(declare-fun e!3466341 () Bool)

(assert (=> b!5623292 (=> res!2381840 e!3466341)))

(assert (=> b!5623292 (= res!2381840 e!3466347)))

(declare-fun res!2381843 () Bool)

(assert (=> b!5623292 (=> (not res!2381843) (not e!3466347))))

(declare-fun lt!2260995 () Bool)

(assert (=> b!5623292 (= res!2381843 lt!2260995)))

(declare-fun b!5623293 () Bool)

(declare-fun e!3466346 () Bool)

(assert (=> b!5623293 (= e!3466346 e!3466342)))

(declare-fun res!2381841 () Bool)

(assert (=> b!5623293 (=> res!2381841 e!3466342)))

(assert (=> b!5623293 (= res!2381841 call!423428)))

(declare-fun b!5623294 () Bool)

(declare-fun e!3466344 () Bool)

(assert (=> b!5623294 (= e!3466344 (nullable!5643 r!7292))))

(declare-fun b!5623295 () Bool)

(assert (=> b!5623295 (= e!3466341 e!3466346)))

(declare-fun res!2381844 () Bool)

(assert (=> b!5623295 (=> (not res!2381844) (not e!3466346))))

(assert (=> b!5623295 (= res!2381844 (not lt!2260995))))

(declare-fun b!5623296 () Bool)

(declare-fun e!3466345 () Bool)

(assert (=> b!5623296 (= e!3466345 (= lt!2260995 call!423428))))

(declare-fun b!5623297 () Bool)

(declare-fun res!2381842 () Bool)

(assert (=> b!5623297 (=> res!2381842 e!3466341)))

(assert (=> b!5623297 (= res!2381842 (not ((_ is ElementMatch!15611) r!7292)))))

(declare-fun e!3466343 () Bool)

(assert (=> b!5623297 (= e!3466343 e!3466341)))

(declare-fun b!5623298 () Bool)

(declare-fun res!2381838 () Bool)

(assert (=> b!5623298 (=> (not res!2381838) (not e!3466347))))

(assert (=> b!5623298 (= res!2381838 (isEmpty!34840 (tail!11064 s!2326)))))

(declare-fun b!5623299 () Bool)

(declare-fun head!11969 (List!63134) C!31492)

(assert (=> b!5623299 (= e!3466342 (not (= (head!11969 s!2326) (c!986945 r!7292))))))

(declare-fun d!1776655 () Bool)

(assert (=> d!1776655 e!3466345))

(declare-fun c!986971 () Bool)

(assert (=> d!1776655 (= c!986971 ((_ is EmptyExpr!15611) r!7292))))

(assert (=> d!1776655 (= lt!2260995 e!3466344)))

(declare-fun c!986970 () Bool)

(assert (=> d!1776655 (= c!986970 (isEmpty!34840 s!2326))))

(assert (=> d!1776655 (validRegex!7347 r!7292)))

(assert (=> d!1776655 (= (matchR!7796 r!7292 s!2326) lt!2260995)))

(declare-fun b!5623291 () Bool)

(assert (=> b!5623291 (= e!3466345 e!3466343)))

(declare-fun c!986972 () Bool)

(assert (=> b!5623291 (= c!986972 ((_ is EmptyLang!15611) r!7292))))

(declare-fun bm!423423 () Bool)

(assert (=> bm!423423 (= call!423428 (isEmpty!34840 s!2326))))

(declare-fun b!5623300 () Bool)

(declare-fun derivativeStep!4448 (Regex!15611 C!31492) Regex!15611)

(assert (=> b!5623300 (= e!3466344 (matchR!7796 (derivativeStep!4448 r!7292 (head!11969 s!2326)) (tail!11064 s!2326)))))

(declare-fun b!5623301 () Bool)

(assert (=> b!5623301 (= e!3466343 (not lt!2260995))))

(declare-fun b!5623302 () Bool)

(assert (=> b!5623302 (= e!3466347 (= (head!11969 s!2326) (c!986945 r!7292)))))

(assert (= (and d!1776655 c!986970) b!5623294))

(assert (= (and d!1776655 (not c!986970)) b!5623300))

(assert (= (and d!1776655 c!986971) b!5623296))

(assert (= (and d!1776655 (not c!986971)) b!5623291))

(assert (= (and b!5623291 c!986972) b!5623301))

(assert (= (and b!5623291 (not c!986972)) b!5623297))

(assert (= (and b!5623297 (not res!2381842)) b!5623292))

(assert (= (and b!5623292 res!2381843) b!5623290))

(assert (= (and b!5623290 res!2381839) b!5623298))

(assert (= (and b!5623298 res!2381838) b!5623302))

(assert (= (and b!5623292 (not res!2381840)) b!5623295))

(assert (= (and b!5623295 res!2381844) b!5623293))

(assert (= (and b!5623293 (not res!2381841)) b!5623289))

(assert (= (and b!5623289 (not res!2381837)) b!5623299))

(assert (= (or b!5623296 b!5623290 b!5623293) bm!423423))

(declare-fun m!6596348 () Bool)

(assert (=> b!5623294 m!6596348))

(assert (=> bm!423423 m!6596336))

(declare-fun m!6596350 () Bool)

(assert (=> b!5623302 m!6596350))

(declare-fun m!6596352 () Bool)

(assert (=> b!5623289 m!6596352))

(assert (=> b!5623289 m!6596352))

(declare-fun m!6596354 () Bool)

(assert (=> b!5623289 m!6596354))

(assert (=> b!5623299 m!6596350))

(assert (=> b!5623298 m!6596352))

(assert (=> b!5623298 m!6596352))

(assert (=> b!5623298 m!6596354))

(assert (=> b!5623300 m!6596350))

(assert (=> b!5623300 m!6596350))

(declare-fun m!6596356 () Bool)

(assert (=> b!5623300 m!6596356))

(assert (=> b!5623300 m!6596352))

(assert (=> b!5623300 m!6596356))

(assert (=> b!5623300 m!6596352))

(declare-fun m!6596358 () Bool)

(assert (=> b!5623300 m!6596358))

(assert (=> d!1776655 m!6596336))

(assert (=> d!1776655 m!6596260))

(assert (=> b!5623162 d!1776655))

(declare-fun d!1776659 () Bool)

(assert (=> d!1776659 (= (matchR!7796 r!7292 s!2326) (matchRSpec!2714 r!7292 s!2326))))

(declare-fun lt!2260999 () Unit!155976)

(declare-fun choose!42597 (Regex!15611 List!63134) Unit!155976)

(assert (=> d!1776659 (= lt!2260999 (choose!42597 r!7292 s!2326))))

(assert (=> d!1776659 (validRegex!7347 r!7292)))

(assert (=> d!1776659 (= (mainMatchTheorem!2714 r!7292 s!2326) lt!2260999)))

(declare-fun bs!1301963 () Bool)

(assert (= bs!1301963 d!1776659))

(assert (=> bs!1301963 m!6596268))

(assert (=> bs!1301963 m!6596266))

(declare-fun m!6596360 () Bool)

(assert (=> bs!1301963 m!6596360))

(assert (=> bs!1301963 m!6596260))

(assert (=> b!5623162 d!1776659))

(declare-fun b!5623358 () Bool)

(declare-fun e!3466383 () Bool)

(declare-fun lt!2261009 () Option!15620)

(declare-fun ++!13830 (List!63134 List!63134) List!63134)

(declare-fun get!21703 (Option!15620) tuple2!65416)

(assert (=> b!5623358 (= e!3466383 (= (++!13830 (_1!36011 (get!21703 lt!2261009)) (_2!36011 (get!21703 lt!2261009))) s!2326))))

(declare-fun b!5623359 () Bool)

(declare-fun e!3466384 () Option!15620)

(assert (=> b!5623359 (= e!3466384 (Some!15619 (tuple2!65417 Nil!63010 s!2326)))))

(declare-fun b!5623360 () Bool)

(declare-fun res!2381878 () Bool)

(assert (=> b!5623360 (=> (not res!2381878) (not e!3466383))))

(assert (=> b!5623360 (= res!2381878 (matchR!7796 (regTwo!31734 r!7292) (_2!36011 (get!21703 lt!2261009))))))

(declare-fun b!5623361 () Bool)

(declare-fun e!3466385 () Bool)

(assert (=> b!5623361 (= e!3466385 (matchR!7796 (regTwo!31734 r!7292) s!2326))))

(declare-fun b!5623362 () Bool)

(declare-fun lt!2261008 () Unit!155976)

(declare-fun lt!2261010 () Unit!155976)

(assert (=> b!5623362 (= lt!2261008 lt!2261010)))

(assert (=> b!5623362 (= (++!13830 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1999 (List!63134 C!31492 List!63134 List!63134) Unit!155976)

(assert (=> b!5623362 (= lt!2261010 (lemmaMoveElementToOtherListKeepsConcatEq!1999 Nil!63010 (h!69458 s!2326) (t!376424 s!2326) s!2326))))

(declare-fun e!3466386 () Option!15620)

(assert (=> b!5623362 (= e!3466386 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326) s!2326))))

(declare-fun b!5623363 () Bool)

(assert (=> b!5623363 (= e!3466386 None!15619)))

(declare-fun b!5623365 () Bool)

(assert (=> b!5623365 (= e!3466384 e!3466386)))

(declare-fun c!986983 () Bool)

(assert (=> b!5623365 (= c!986983 ((_ is Nil!63010) s!2326))))

(declare-fun d!1776661 () Bool)

(declare-fun e!3466387 () Bool)

(assert (=> d!1776661 e!3466387))

(declare-fun res!2381882 () Bool)

(assert (=> d!1776661 (=> res!2381882 e!3466387)))

(assert (=> d!1776661 (= res!2381882 e!3466383)))

(declare-fun res!2381881 () Bool)

(assert (=> d!1776661 (=> (not res!2381881) (not e!3466383))))

(assert (=> d!1776661 (= res!2381881 (isDefined!12323 lt!2261009))))

(assert (=> d!1776661 (= lt!2261009 e!3466384)))

(declare-fun c!986984 () Bool)

(assert (=> d!1776661 (= c!986984 e!3466385)))

(declare-fun res!2381880 () Bool)

(assert (=> d!1776661 (=> (not res!2381880) (not e!3466385))))

(assert (=> d!1776661 (= res!2381880 (matchR!7796 (regOne!31734 r!7292) Nil!63010))))

(assert (=> d!1776661 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776661 (= (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326) lt!2261009)))

(declare-fun b!5623367 () Bool)

(declare-fun res!2381879 () Bool)

(assert (=> b!5623367 (=> (not res!2381879) (not e!3466383))))

(assert (=> b!5623367 (= res!2381879 (matchR!7796 (regOne!31734 r!7292) (_1!36011 (get!21703 lt!2261009))))))

(declare-fun b!5623368 () Bool)

(assert (=> b!5623368 (= e!3466387 (not (isDefined!12323 lt!2261009)))))

(assert (= (and d!1776661 res!2381880) b!5623361))

(assert (= (and d!1776661 c!986984) b!5623359))

(assert (= (and d!1776661 (not c!986984)) b!5623365))

(assert (= (and b!5623365 c!986983) b!5623363))

(assert (= (and b!5623365 (not c!986983)) b!5623362))

(assert (= (and d!1776661 res!2381881) b!5623367))

(assert (= (and b!5623367 res!2381879) b!5623360))

(assert (= (and b!5623360 res!2381878) b!5623358))

(assert (= (and d!1776661 (not res!2381882)) b!5623368))

(declare-fun m!6596380 () Bool)

(assert (=> b!5623358 m!6596380))

(declare-fun m!6596382 () Bool)

(assert (=> b!5623358 m!6596382))

(declare-fun m!6596384 () Bool)

(assert (=> b!5623362 m!6596384))

(assert (=> b!5623362 m!6596384))

(declare-fun m!6596386 () Bool)

(assert (=> b!5623362 m!6596386))

(declare-fun m!6596388 () Bool)

(assert (=> b!5623362 m!6596388))

(assert (=> b!5623362 m!6596384))

(declare-fun m!6596390 () Bool)

(assert (=> b!5623362 m!6596390))

(assert (=> b!5623360 m!6596380))

(declare-fun m!6596392 () Bool)

(assert (=> b!5623360 m!6596392))

(declare-fun m!6596394 () Bool)

(assert (=> b!5623368 m!6596394))

(assert (=> d!1776661 m!6596394))

(declare-fun m!6596396 () Bool)

(assert (=> d!1776661 m!6596396))

(declare-fun m!6596398 () Bool)

(assert (=> d!1776661 m!6596398))

(assert (=> b!5623367 m!6596380))

(declare-fun m!6596400 () Bool)

(assert (=> b!5623367 m!6596400))

(declare-fun m!6596402 () Bool)

(assert (=> b!5623361 m!6596402))

(assert (=> b!5623161 d!1776661))

(declare-fun d!1776673 () Bool)

(declare-fun choose!42598 (Int) Bool)

(assert (=> d!1776673 (= (Exists!2711 lambda!301958) (choose!42598 lambda!301958))))

(declare-fun bs!1301970 () Bool)

(assert (= bs!1301970 d!1776673))

(declare-fun m!6596404 () Bool)

(assert (=> bs!1301970 m!6596404))

(assert (=> b!5623161 d!1776673))

(declare-fun d!1776675 () Bool)

(assert (=> d!1776675 (= (Exists!2711 lambda!301959) (choose!42598 lambda!301959))))

(declare-fun bs!1301971 () Bool)

(assert (= bs!1301971 d!1776675))

(declare-fun m!6596406 () Bool)

(assert (=> bs!1301971 m!6596406))

(assert (=> b!5623161 d!1776675))

(declare-fun bs!1301972 () Bool)

(declare-fun d!1776677 () Bool)

(assert (= bs!1301972 (and d!1776677 b!5623161)))

(declare-fun lambda!301981 () Int)

(assert (=> bs!1301972 (= lambda!301981 lambda!301958)))

(assert (=> bs!1301972 (not (= lambda!301981 lambda!301959))))

(declare-fun bs!1301973 () Bool)

(assert (= bs!1301973 (and d!1776677 b!5623254)))

(assert (=> bs!1301973 (not (= lambda!301981 lambda!301965))))

(declare-fun bs!1301974 () Bool)

(assert (= bs!1301974 (and d!1776677 b!5623253)))

(assert (=> bs!1301974 (not (= lambda!301981 lambda!301966))))

(assert (=> d!1776677 true))

(assert (=> d!1776677 true))

(assert (=> d!1776677 true))

(assert (=> d!1776677 (= (isDefined!12323 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326)) (Exists!2711 lambda!301981))))

(declare-fun lt!2261014 () Unit!155976)

(declare-fun choose!42599 (Regex!15611 Regex!15611 List!63134) Unit!155976)

(assert (=> d!1776677 (= lt!2261014 (choose!42599 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326))))

(assert (=> d!1776677 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776677 (= (lemmaFindConcatSeparationEquivalentToExists!1798 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326) lt!2261014)))

(declare-fun bs!1301975 () Bool)

(assert (= bs!1301975 d!1776677))

(declare-fun m!6596426 () Bool)

(assert (=> bs!1301975 m!6596426))

(assert (=> bs!1301975 m!6596398))

(assert (=> bs!1301975 m!6596278))

(assert (=> bs!1301975 m!6596280))

(assert (=> bs!1301975 m!6596278))

(declare-fun m!6596428 () Bool)

(assert (=> bs!1301975 m!6596428))

(assert (=> b!5623161 d!1776677))

(declare-fun bs!1301983 () Bool)

(declare-fun d!1776681 () Bool)

(assert (= bs!1301983 (and d!1776681 b!5623161)))

(declare-fun lambda!301992 () Int)

(assert (=> bs!1301983 (not (= lambda!301992 lambda!301959))))

(assert (=> bs!1301983 (= lambda!301992 lambda!301958)))

(declare-fun bs!1301984 () Bool)

(assert (= bs!1301984 (and d!1776681 d!1776677)))

(assert (=> bs!1301984 (= lambda!301992 lambda!301981)))

(declare-fun bs!1301985 () Bool)

(assert (= bs!1301985 (and d!1776681 b!5623254)))

(assert (=> bs!1301985 (not (= lambda!301992 lambda!301965))))

(declare-fun bs!1301986 () Bool)

(assert (= bs!1301986 (and d!1776681 b!5623253)))

(assert (=> bs!1301986 (not (= lambda!301992 lambda!301966))))

(assert (=> d!1776681 true))

(assert (=> d!1776681 true))

(assert (=> d!1776681 true))

(declare-fun lambda!301993 () Int)

(assert (=> bs!1301983 (= lambda!301993 lambda!301959)))

(assert (=> bs!1301983 (not (= lambda!301993 lambda!301958))))

(declare-fun bs!1301987 () Bool)

(assert (= bs!1301987 d!1776681))

(assert (=> bs!1301987 (not (= lambda!301993 lambda!301992))))

(assert (=> bs!1301984 (not (= lambda!301993 lambda!301981))))

(assert (=> bs!1301985 (not (= lambda!301993 lambda!301965))))

(assert (=> bs!1301986 (= lambda!301993 lambda!301966)))

(assert (=> d!1776681 true))

(assert (=> d!1776681 true))

(assert (=> d!1776681 true))

(assert (=> d!1776681 (= (Exists!2711 lambda!301992) (Exists!2711 lambda!301993))))

(declare-fun lt!2261017 () Unit!155976)

(declare-fun choose!42600 (Regex!15611 Regex!15611 List!63134) Unit!155976)

(assert (=> d!1776681 (= lt!2261017 (choose!42600 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326))))

(assert (=> d!1776681 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776681 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1340 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326) lt!2261017)))

(declare-fun m!6596438 () Bool)

(assert (=> bs!1301987 m!6596438))

(declare-fun m!6596440 () Bool)

(assert (=> bs!1301987 m!6596440))

(declare-fun m!6596442 () Bool)

(assert (=> bs!1301987 m!6596442))

(assert (=> bs!1301987 m!6596398))

(assert (=> b!5623161 d!1776681))

(declare-fun d!1776685 () Bool)

(declare-fun isEmpty!34843 (Option!15620) Bool)

(assert (=> d!1776685 (= (isDefined!12323 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326)) (not (isEmpty!34843 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326))))))

(declare-fun bs!1301988 () Bool)

(assert (= bs!1301988 d!1776685))

(assert (=> bs!1301988 m!6596278))

(declare-fun m!6596444 () Bool)

(assert (=> bs!1301988 m!6596444))

(assert (=> b!5623161 d!1776685))

(declare-fun b!5623512 () Bool)

(declare-fun e!3466473 () Regex!15611)

(assert (=> b!5623512 (= e!3466473 EmptyLang!15611)))

(declare-fun b!5623513 () Bool)

(declare-fun e!3466475 () Regex!15611)

(assert (=> b!5623513 (= e!3466475 (h!69456 (unfocusZipperList!1039 zl!343)))))

(declare-fun b!5623514 () Bool)

(assert (=> b!5623514 (= e!3466473 (Union!15611 (h!69456 (unfocusZipperList!1039 zl!343)) (generalisedUnion!1474 (t!376422 (unfocusZipperList!1039 zl!343)))))))

(declare-fun b!5623515 () Bool)

(declare-fun e!3466470 () Bool)

(declare-fun lt!2261023 () Regex!15611)

(declare-fun isEmptyLang!1164 (Regex!15611) Bool)

(assert (=> b!5623515 (= e!3466470 (isEmptyLang!1164 lt!2261023))))

(declare-fun b!5623516 () Bool)

(declare-fun e!3466471 () Bool)

(declare-fun isUnion!594 (Regex!15611) Bool)

(assert (=> b!5623516 (= e!3466471 (isUnion!594 lt!2261023))))

(declare-fun b!5623517 () Bool)

(declare-fun e!3466474 () Bool)

(assert (=> b!5623517 (= e!3466474 (isEmpty!34839 (t!376422 (unfocusZipperList!1039 zl!343))))))

(declare-fun d!1776687 () Bool)

(declare-fun e!3466472 () Bool)

(assert (=> d!1776687 e!3466472))

(declare-fun res!2381949 () Bool)

(assert (=> d!1776687 (=> (not res!2381949) (not e!3466472))))

(assert (=> d!1776687 (= res!2381949 (validRegex!7347 lt!2261023))))

(assert (=> d!1776687 (= lt!2261023 e!3466475)))

(declare-fun c!987029 () Bool)

(assert (=> d!1776687 (= c!987029 e!3466474)))

(declare-fun res!2381948 () Bool)

(assert (=> d!1776687 (=> (not res!2381948) (not e!3466474))))

(assert (=> d!1776687 (= res!2381948 ((_ is Cons!63008) (unfocusZipperList!1039 zl!343)))))

(declare-fun lambda!301996 () Int)

(declare-fun forall!14768 (List!63132 Int) Bool)

(assert (=> d!1776687 (forall!14768 (unfocusZipperList!1039 zl!343) lambda!301996)))

(assert (=> d!1776687 (= (generalisedUnion!1474 (unfocusZipperList!1039 zl!343)) lt!2261023)))

(declare-fun b!5623518 () Bool)

(assert (=> b!5623518 (= e!3466470 e!3466471)))

(declare-fun c!987027 () Bool)

(declare-fun tail!11066 (List!63132) List!63132)

(assert (=> b!5623518 (= c!987027 (isEmpty!34839 (tail!11066 (unfocusZipperList!1039 zl!343))))))

(declare-fun b!5623519 () Bool)

(declare-fun head!11971 (List!63132) Regex!15611)

(assert (=> b!5623519 (= e!3466471 (= lt!2261023 (head!11971 (unfocusZipperList!1039 zl!343))))))

(declare-fun b!5623520 () Bool)

(assert (=> b!5623520 (= e!3466475 e!3466473)))

(declare-fun c!987026 () Bool)

(assert (=> b!5623520 (= c!987026 ((_ is Cons!63008) (unfocusZipperList!1039 zl!343)))))

(declare-fun b!5623521 () Bool)

(assert (=> b!5623521 (= e!3466472 e!3466470)))

(declare-fun c!987028 () Bool)

(assert (=> b!5623521 (= c!987028 (isEmpty!34839 (unfocusZipperList!1039 zl!343)))))

(assert (= (and d!1776687 res!2381948) b!5623517))

(assert (= (and d!1776687 c!987029) b!5623513))

(assert (= (and d!1776687 (not c!987029)) b!5623520))

(assert (= (and b!5623520 c!987026) b!5623514))

(assert (= (and b!5623520 (not c!987026)) b!5623512))

(assert (= (and d!1776687 res!2381949) b!5623521))

(assert (= (and b!5623521 c!987028) b!5623515))

(assert (= (and b!5623521 (not c!987028)) b!5623518))

(assert (= (and b!5623518 c!987027) b!5623519))

(assert (= (and b!5623518 (not c!987027)) b!5623516))

(declare-fun m!6596448 () Bool)

(assert (=> b!5623515 m!6596448))

(declare-fun m!6596450 () Bool)

(assert (=> b!5623517 m!6596450))

(assert (=> b!5623518 m!6596288))

(declare-fun m!6596452 () Bool)

(assert (=> b!5623518 m!6596452))

(assert (=> b!5623518 m!6596452))

(declare-fun m!6596458 () Bool)

(assert (=> b!5623518 m!6596458))

(assert (=> b!5623521 m!6596288))

(declare-fun m!6596462 () Bool)

(assert (=> b!5623521 m!6596462))

(declare-fun m!6596464 () Bool)

(assert (=> d!1776687 m!6596464))

(assert (=> d!1776687 m!6596288))

(declare-fun m!6596466 () Bool)

(assert (=> d!1776687 m!6596466))

(declare-fun m!6596470 () Bool)

(assert (=> b!5623516 m!6596470))

(assert (=> b!5623519 m!6596288))

(declare-fun m!6596472 () Bool)

(assert (=> b!5623519 m!6596472))

(declare-fun m!6596474 () Bool)

(assert (=> b!5623514 m!6596474))

(assert (=> b!5623170 d!1776687))

(declare-fun bs!1301990 () Bool)

(declare-fun d!1776689 () Bool)

(assert (= bs!1301990 (and d!1776689 d!1776687)))

(declare-fun lambda!301999 () Int)

(assert (=> bs!1301990 (= lambda!301999 lambda!301996)))

(declare-fun lt!2261029 () List!63132)

(assert (=> d!1776689 (forall!14768 lt!2261029 lambda!301999)))

(declare-fun e!3466478 () List!63132)

(assert (=> d!1776689 (= lt!2261029 e!3466478)))

(declare-fun c!987032 () Bool)

(assert (=> d!1776689 (= c!987032 ((_ is Cons!63009) zl!343))))

(assert (=> d!1776689 (= (unfocusZipperList!1039 zl!343) lt!2261029)))

(declare-fun b!5623526 () Bool)

(assert (=> b!5623526 (= e!3466478 (Cons!63008 (generalisedConcat!1226 (exprs!5495 (h!69457 zl!343))) (unfocusZipperList!1039 (t!376423 zl!343))))))

(declare-fun b!5623527 () Bool)

(assert (=> b!5623527 (= e!3466478 Nil!63008)))

(assert (= (and d!1776689 c!987032) b!5623526))

(assert (= (and d!1776689 (not c!987032)) b!5623527))

(declare-fun m!6596480 () Bool)

(assert (=> d!1776689 m!6596480))

(assert (=> b!5623526 m!6596256))

(declare-fun m!6596482 () Bool)

(assert (=> b!5623526 m!6596482))

(assert (=> b!5623170 d!1776689))

(declare-fun d!1776695 () Bool)

(assert (=> d!1776695 (= (isEmpty!34839 (t!376422 (exprs!5495 (h!69457 zl!343)))) ((_ is Nil!63008) (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> b!5623180 d!1776695))

(declare-fun bs!1301991 () Bool)

(declare-fun d!1776697 () Bool)

(assert (= bs!1301991 (and d!1776697 d!1776687)))

(declare-fun lambda!302002 () Int)

(assert (=> bs!1301991 (= lambda!302002 lambda!301996)))

(declare-fun bs!1301992 () Bool)

(assert (= bs!1301992 (and d!1776697 d!1776689)))

(assert (=> bs!1301992 (= lambda!302002 lambda!301999)))

(assert (=> d!1776697 (= (inv!82274 setElem!37526) (forall!14768 (exprs!5495 setElem!37526) lambda!302002))))

(declare-fun bs!1301993 () Bool)

(assert (= bs!1301993 d!1776697))

(declare-fun m!6596490 () Bool)

(assert (=> bs!1301993 m!6596490))

(assert (=> setNonEmpty!37526 d!1776697))

(declare-fun d!1776701 () Bool)

(declare-fun e!3466486 () Bool)

(assert (=> d!1776701 e!3466486))

(declare-fun res!2381955 () Bool)

(assert (=> d!1776701 (=> (not res!2381955) (not e!3466486))))

(declare-fun lt!2261035 () List!63133)

(declare-fun noDuplicate!1576 (List!63133) Bool)

(assert (=> d!1776701 (= res!2381955 (noDuplicate!1576 lt!2261035))))

(declare-fun choose!42601 ((InoxSet Context!9990)) List!63133)

(assert (=> d!1776701 (= lt!2261035 (choose!42601 z!1189))))

(assert (=> d!1776701 (= (toList!9395 z!1189) lt!2261035)))

(declare-fun b!5623537 () Bool)

(declare-fun content!11385 (List!63133) (InoxSet Context!9990))

(assert (=> b!5623537 (= e!3466486 (= (content!11385 lt!2261035) z!1189))))

(assert (= (and d!1776701 res!2381955) b!5623537))

(declare-fun m!6596492 () Bool)

(assert (=> d!1776701 m!6596492))

(declare-fun m!6596494 () Bool)

(assert (=> d!1776701 m!6596494))

(declare-fun m!6596496 () Bool)

(assert (=> b!5623537 m!6596496))

(assert (=> b!5623159 d!1776701))

(declare-fun d!1776703 () Bool)

(declare-fun lt!2261038 () Regex!15611)

(assert (=> d!1776703 (validRegex!7347 lt!2261038)))

(assert (=> d!1776703 (= lt!2261038 (generalisedUnion!1474 (unfocusZipperList!1039 zl!343)))))

(assert (=> d!1776703 (= (unfocusZipper!1353 zl!343) lt!2261038)))

(declare-fun bs!1301994 () Bool)

(assert (= bs!1301994 d!1776703))

(declare-fun m!6596510 () Bool)

(assert (=> bs!1301994 m!6596510))

(assert (=> bs!1301994 m!6596288))

(assert (=> bs!1301994 m!6596288))

(assert (=> bs!1301994 m!6596290))

(assert (=> b!5623169 d!1776703))

(declare-fun b!5623552 () Bool)

(declare-fun e!3466498 () (InoxSet Context!9990))

(declare-fun e!3466496 () (InoxSet Context!9990))

(assert (=> b!5623552 (= e!3466498 e!3466496)))

(declare-fun c!987041 () Bool)

(assert (=> b!5623552 (= c!987041 ((_ is Cons!63008) (exprs!5495 lt!2260973)))))

(declare-fun b!5623553 () Bool)

(declare-fun e!3466497 () Bool)

(assert (=> b!5623553 (= e!3466497 (nullable!5643 (h!69456 (exprs!5495 lt!2260973))))))

(declare-fun call!423449 () (InoxSet Context!9990))

(declare-fun b!5623554 () Bool)

(assert (=> b!5623554 (= e!3466498 ((_ map or) call!423449 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (h!69458 s!2326))))))

(declare-fun b!5623555 () Bool)

(assert (=> b!5623555 (= e!3466496 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423444 () Bool)

(assert (=> bm!423444 (= call!423449 (derivationStepZipperDown!953 (h!69456 (exprs!5495 lt!2260973)) (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (h!69458 s!2326)))))

(declare-fun b!5623556 () Bool)

(assert (=> b!5623556 (= e!3466496 call!423449)))

(declare-fun d!1776707 () Bool)

(declare-fun c!987040 () Bool)

(assert (=> d!1776707 (= c!987040 e!3466497)))

(declare-fun res!2381960 () Bool)

(assert (=> d!1776707 (=> (not res!2381960) (not e!3466497))))

(assert (=> d!1776707 (= res!2381960 ((_ is Cons!63008) (exprs!5495 lt!2260973)))))

(assert (=> d!1776707 (= (derivationStepZipperUp!879 lt!2260973 (h!69458 s!2326)) e!3466498)))

(assert (= (and d!1776707 res!2381960) b!5623553))

(assert (= (and d!1776707 c!987040) b!5623554))

(assert (= (and d!1776707 (not c!987040)) b!5623552))

(assert (= (and b!5623552 c!987041) b!5623556))

(assert (= (and b!5623552 (not c!987041)) b!5623555))

(assert (= (or b!5623554 b!5623556) bm!423444))

(declare-fun m!6596514 () Bool)

(assert (=> b!5623553 m!6596514))

(declare-fun m!6596516 () Bool)

(assert (=> b!5623554 m!6596516))

(declare-fun m!6596518 () Bool)

(assert (=> bm!423444 m!6596518))

(assert (=> b!5623168 d!1776707))

(declare-fun d!1776711 () Bool)

(declare-fun dynLambda!24639 (Int Context!9990) (InoxSet Context!9990))

(assert (=> d!1776711 (= (flatMap!1224 z!1189 lambda!301960) (dynLambda!24639 lambda!301960 (h!69457 zl!343)))))

(declare-fun lt!2261047 () Unit!155976)

(declare-fun choose!42604 ((InoxSet Context!9990) Context!9990 Int) Unit!155976)

(assert (=> d!1776711 (= lt!2261047 (choose!42604 z!1189 (h!69457 zl!343) lambda!301960))))

(assert (=> d!1776711 (= z!1189 (store ((as const (Array Context!9990 Bool)) false) (h!69457 zl!343) true))))

(assert (=> d!1776711 (= (lemmaFlatMapOnSingletonSet!756 z!1189 (h!69457 zl!343) lambda!301960) lt!2261047)))

(declare-fun b_lambda!212739 () Bool)

(assert (=> (not b_lambda!212739) (not d!1776711)))

(declare-fun bs!1301996 () Bool)

(assert (= bs!1301996 d!1776711))

(assert (=> bs!1301996 m!6596308))

(declare-fun m!6596534 () Bool)

(assert (=> bs!1301996 m!6596534))

(declare-fun m!6596536 () Bool)

(assert (=> bs!1301996 m!6596536))

(declare-fun m!6596538 () Bool)

(assert (=> bs!1301996 m!6596538))

(assert (=> b!5623168 d!1776711))

(declare-fun d!1776719 () Bool)

(declare-fun nullableFct!1741 (Regex!15611) Bool)

(assert (=> d!1776719 (= (nullable!5643 (h!69456 (exprs!5495 (h!69457 zl!343)))) (nullableFct!1741 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun bs!1301997 () Bool)

(assert (= bs!1301997 d!1776719))

(declare-fun m!6596540 () Bool)

(assert (=> bs!1301997 m!6596540))

(assert (=> b!5623168 d!1776719))

(declare-fun b!5623562 () Bool)

(declare-fun e!3466504 () (InoxSet Context!9990))

(declare-fun e!3466502 () (InoxSet Context!9990))

(assert (=> b!5623562 (= e!3466504 e!3466502)))

(declare-fun c!987045 () Bool)

(assert (=> b!5623562 (= c!987045 ((_ is Cons!63008) (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))

(declare-fun b!5623563 () Bool)

(declare-fun e!3466503 () Bool)

(assert (=> b!5623563 (= e!3466503 (nullable!5643 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun b!5623564 () Bool)

(declare-fun call!423450 () (InoxSet Context!9990))

(assert (=> b!5623564 (= e!3466504 ((_ map or) call!423450 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326))))))

(declare-fun b!5623565 () Bool)

(assert (=> b!5623565 (= e!3466502 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423445 () Bool)

(assert (=> bm!423445 (= call!423450 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326)))))

(declare-fun b!5623566 () Bool)

(assert (=> b!5623566 (= e!3466502 call!423450)))

(declare-fun d!1776721 () Bool)

(declare-fun c!987044 () Bool)

(assert (=> d!1776721 (= c!987044 e!3466503)))

(declare-fun res!2381962 () Bool)

(assert (=> d!1776721 (=> (not res!2381962) (not e!3466503))))

(assert (=> d!1776721 (= res!2381962 ((_ is Cons!63008) (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))

(assert (=> d!1776721 (= (derivationStepZipperUp!879 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))) (h!69458 s!2326)) e!3466504)))

(assert (= (and d!1776721 res!2381962) b!5623563))

(assert (= (and d!1776721 c!987044) b!5623564))

(assert (= (and d!1776721 (not c!987044)) b!5623562))

(assert (= (and b!5623562 c!987045) b!5623566))

(assert (= (and b!5623562 (not c!987045)) b!5623565))

(assert (= (or b!5623564 b!5623566) bm!423445))

(declare-fun m!6596542 () Bool)

(assert (=> b!5623563 m!6596542))

(declare-fun m!6596544 () Bool)

(assert (=> b!5623564 m!6596544))

(declare-fun m!6596546 () Bool)

(assert (=> bm!423445 m!6596546))

(assert (=> b!5623168 d!1776721))

(declare-fun call!423463 () List!63132)

(declare-fun call!423465 () (InoxSet Context!9990))

(declare-fun bm!423458 () Bool)

(declare-fun c!987073 () Bool)

(assert (=> bm!423458 (= call!423465 (derivationStepZipperDown!953 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))) (ite c!987073 lt!2260973 (Context!9991 call!423463)) (h!69458 s!2326)))))

(declare-fun b!5623625 () Bool)

(declare-fun e!3466542 () (InoxSet Context!9990))

(declare-fun call!423468 () (InoxSet Context!9990))

(assert (=> b!5623625 (= e!3466542 ((_ map or) call!423465 call!423468))))

(declare-fun bm!423459 () Bool)

(declare-fun call!423466 () (InoxSet Context!9990))

(assert (=> bm!423459 (= call!423468 call!423466)))

(declare-fun b!5623626 () Bool)

(declare-fun e!3466538 () Bool)

(assert (=> b!5623626 (= e!3466538 (nullable!5643 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun bm!423460 () Bool)

(declare-fun call!423464 () List!63132)

(assert (=> bm!423460 (= call!423464 call!423463)))

(declare-fun b!5623628 () Bool)

(declare-fun e!3466540 () (InoxSet Context!9990))

(assert (=> b!5623628 (= e!3466540 (store ((as const (Array Context!9990 Bool)) false) lt!2260973 true))))

(declare-fun b!5623629 () Bool)

(declare-fun c!987075 () Bool)

(assert (=> b!5623629 (= c!987075 ((_ is Star!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun e!3466543 () (InoxSet Context!9990))

(declare-fun e!3466541 () (InoxSet Context!9990))

(assert (=> b!5623629 (= e!3466543 e!3466541)))

(declare-fun b!5623630 () Bool)

(assert (=> b!5623630 (= e!3466541 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987072 () Bool)

(declare-fun c!987074 () Bool)

(declare-fun bm!423461 () Bool)

(declare-fun $colon$colon!1663 (List!63132 Regex!15611) List!63132)

(assert (=> bm!423461 (= call!423463 ($colon$colon!1663 (exprs!5495 lt!2260973) (ite (or c!987072 c!987074) (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69456 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623631 () Bool)

(declare-fun call!423467 () (InoxSet Context!9990))

(assert (=> b!5623631 (= e!3466541 call!423467)))

(declare-fun b!5623632 () Bool)

(assert (=> b!5623632 (= e!3466543 call!423467)))

(declare-fun b!5623633 () Bool)

(assert (=> b!5623633 (= e!3466542 e!3466543)))

(assert (=> b!5623633 (= c!987074 ((_ is Concat!24456) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun d!1776723 () Bool)

(declare-fun c!987071 () Bool)

(assert (=> d!1776723 (= c!987071 (and ((_ is ElementMatch!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))) (= (c!986945 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326))))))

(assert (=> d!1776723 (= (derivationStepZipperDown!953 (h!69456 (exprs!5495 (h!69457 zl!343))) lt!2260973 (h!69458 s!2326)) e!3466540)))

(declare-fun b!5623627 () Bool)

(declare-fun e!3466539 () (InoxSet Context!9990))

(assert (=> b!5623627 (= e!3466540 e!3466539)))

(assert (=> b!5623627 (= c!987073 ((_ is Union!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun bm!423462 () Bool)

(assert (=> bm!423462 (= call!423467 call!423468)))

(declare-fun b!5623634 () Bool)

(assert (=> b!5623634 (= e!3466539 ((_ map or) call!423466 call!423465))))

(declare-fun b!5623635 () Bool)

(assert (=> b!5623635 (= c!987072 e!3466538)))

(declare-fun res!2381971 () Bool)

(assert (=> b!5623635 (=> (not res!2381971) (not e!3466538))))

(assert (=> b!5623635 (= res!2381971 ((_ is Concat!24456) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> b!5623635 (= e!3466539 e!3466542)))

(declare-fun bm!423463 () Bool)

(assert (=> bm!423463 (= call!423466 (derivationStepZipperDown!953 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))) (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464)) (h!69458 s!2326)))))

(assert (= (and d!1776723 c!987071) b!5623628))

(assert (= (and d!1776723 (not c!987071)) b!5623627))

(assert (= (and b!5623627 c!987073) b!5623634))

(assert (= (and b!5623627 (not c!987073)) b!5623635))

(assert (= (and b!5623635 res!2381971) b!5623626))

(assert (= (and b!5623635 c!987072) b!5623625))

(assert (= (and b!5623635 (not c!987072)) b!5623633))

(assert (= (and b!5623633 c!987074) b!5623632))

(assert (= (and b!5623633 (not c!987074)) b!5623629))

(assert (= (and b!5623629 c!987075) b!5623631))

(assert (= (and b!5623629 (not c!987075)) b!5623630))

(assert (= (or b!5623632 b!5623631) bm!423460))

(assert (= (or b!5623632 b!5623631) bm!423462))

(assert (= (or b!5623625 bm!423460) bm!423461))

(assert (= (or b!5623625 bm!423462) bm!423459))

(assert (= (or b!5623634 b!5623625) bm!423458))

(assert (= (or b!5623634 bm!423459) bm!423463))

(declare-fun m!6596574 () Bool)

(assert (=> b!5623626 m!6596574))

(declare-fun m!6596576 () Bool)

(assert (=> bm!423463 m!6596576))

(declare-fun m!6596578 () Bool)

(assert (=> bm!423458 m!6596578))

(declare-fun m!6596580 () Bool)

(assert (=> b!5623628 m!6596580))

(declare-fun m!6596582 () Bool)

(assert (=> bm!423461 m!6596582))

(assert (=> b!5623168 d!1776723))

(declare-fun d!1776731 () Bool)

(declare-fun choose!42606 ((InoxSet Context!9990) Int) (InoxSet Context!9990))

(assert (=> d!1776731 (= (flatMap!1224 z!1189 lambda!301960) (choose!42606 z!1189 lambda!301960))))

(declare-fun bs!1302007 () Bool)

(assert (= bs!1302007 d!1776731))

(declare-fun m!6596584 () Bool)

(assert (=> bs!1302007 m!6596584))

(assert (=> b!5623168 d!1776731))

(declare-fun b!5623636 () Bool)

(declare-fun e!3466546 () (InoxSet Context!9990))

(declare-fun e!3466544 () (InoxSet Context!9990))

(assert (=> b!5623636 (= e!3466546 e!3466544)))

(declare-fun c!987077 () Bool)

(assert (=> b!5623636 (= c!987077 ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343))))))

(declare-fun b!5623637 () Bool)

(declare-fun e!3466545 () Bool)

(assert (=> b!5623637 (= e!3466545 (nullable!5643 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun call!423469 () (InoxSet Context!9990))

(declare-fun b!5623638 () Bool)

(assert (=> b!5623638 (= e!3466546 ((_ map or) call!423469 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326))))))

(declare-fun b!5623639 () Bool)

(assert (=> b!5623639 (= e!3466544 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423464 () Bool)

(assert (=> bm!423464 (= call!423469 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (h!69457 zl!343))) (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326)))))

(declare-fun b!5623640 () Bool)

(assert (=> b!5623640 (= e!3466544 call!423469)))

(declare-fun d!1776737 () Bool)

(declare-fun c!987076 () Bool)

(assert (=> d!1776737 (= c!987076 e!3466545)))

(declare-fun res!2381972 () Bool)

(assert (=> d!1776737 (=> (not res!2381972) (not e!3466545))))

(assert (=> d!1776737 (= res!2381972 ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343))))))

(assert (=> d!1776737 (= (derivationStepZipperUp!879 (h!69457 zl!343) (h!69458 s!2326)) e!3466546)))

(assert (= (and d!1776737 res!2381972) b!5623637))

(assert (= (and d!1776737 c!987076) b!5623638))

(assert (= (and d!1776737 (not c!987076)) b!5623636))

(assert (= (and b!5623636 c!987077) b!5623640))

(assert (= (and b!5623636 (not c!987077)) b!5623639))

(assert (= (or b!5623638 b!5623640) bm!423464))

(assert (=> b!5623637 m!6596302))

(declare-fun m!6596588 () Bool)

(assert (=> b!5623638 m!6596588))

(declare-fun m!6596590 () Bool)

(assert (=> bm!423464 m!6596590))

(assert (=> b!5623168 d!1776737))

(declare-fun d!1776741 () Bool)

(declare-fun res!2381986 () Bool)

(declare-fun e!3466576 () Bool)

(assert (=> d!1776741 (=> res!2381986 e!3466576)))

(assert (=> d!1776741 (= res!2381986 ((_ is ElementMatch!15611) r!7292))))

(assert (=> d!1776741 (= (validRegex!7347 r!7292) e!3466576)))

(declare-fun b!5623681 () Bool)

(declare-fun e!3466578 () Bool)

(declare-fun e!3466575 () Bool)

(assert (=> b!5623681 (= e!3466578 e!3466575)))

(declare-fun res!2381988 () Bool)

(assert (=> b!5623681 (= res!2381988 (not (nullable!5643 (reg!15940 r!7292))))))

(assert (=> b!5623681 (=> (not res!2381988) (not e!3466575))))

(declare-fun b!5623682 () Bool)

(declare-fun e!3466577 () Bool)

(assert (=> b!5623682 (= e!3466578 e!3466577)))

(declare-fun c!987092 () Bool)

(assert (=> b!5623682 (= c!987092 ((_ is Union!15611) r!7292))))

(declare-fun c!987093 () Bool)

(declare-fun call!423486 () Bool)

(declare-fun bm!423479 () Bool)

(assert (=> bm!423479 (= call!423486 (validRegex!7347 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))

(declare-fun b!5623683 () Bool)

(assert (=> b!5623683 (= e!3466575 call!423486)))

(declare-fun b!5623684 () Bool)

(declare-fun e!3466579 () Bool)

(declare-fun e!3466574 () Bool)

(assert (=> b!5623684 (= e!3466579 e!3466574)))

(declare-fun res!2381985 () Bool)

(assert (=> b!5623684 (=> (not res!2381985) (not e!3466574))))

(declare-fun call!423485 () Bool)

(assert (=> b!5623684 (= res!2381985 call!423485)))

(declare-fun bm!423480 () Bool)

(assert (=> bm!423480 (= call!423485 call!423486)))

(declare-fun b!5623685 () Bool)

(declare-fun call!423484 () Bool)

(assert (=> b!5623685 (= e!3466574 call!423484)))

(declare-fun b!5623686 () Bool)

(declare-fun res!2381987 () Bool)

(declare-fun e!3466573 () Bool)

(assert (=> b!5623686 (=> (not res!2381987) (not e!3466573))))

(assert (=> b!5623686 (= res!2381987 call!423485)))

(assert (=> b!5623686 (= e!3466577 e!3466573)))

(declare-fun b!5623687 () Bool)

(declare-fun res!2381989 () Bool)

(assert (=> b!5623687 (=> res!2381989 e!3466579)))

(assert (=> b!5623687 (= res!2381989 (not ((_ is Concat!24456) r!7292)))))

(assert (=> b!5623687 (= e!3466577 e!3466579)))

(declare-fun b!5623688 () Bool)

(assert (=> b!5623688 (= e!3466573 call!423484)))

(declare-fun b!5623689 () Bool)

(assert (=> b!5623689 (= e!3466576 e!3466578)))

(assert (=> b!5623689 (= c!987093 ((_ is Star!15611) r!7292))))

(declare-fun bm!423481 () Bool)

(assert (=> bm!423481 (= call!423484 (validRegex!7347 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))

(assert (= (and d!1776741 (not res!2381986)) b!5623689))

(assert (= (and b!5623689 c!987093) b!5623681))

(assert (= (and b!5623689 (not c!987093)) b!5623682))

(assert (= (and b!5623681 res!2381988) b!5623683))

(assert (= (and b!5623682 c!987092) b!5623686))

(assert (= (and b!5623682 (not c!987092)) b!5623687))

(assert (= (and b!5623686 res!2381987) b!5623688))

(assert (= (and b!5623687 (not res!2381989)) b!5623684))

(assert (= (and b!5623684 res!2381985) b!5623685))

(assert (= (or b!5623688 b!5623685) bm!423481))

(assert (= (or b!5623686 b!5623684) bm!423480))

(assert (= (or b!5623683 bm!423480) bm!423479))

(declare-fun m!6596592 () Bool)

(assert (=> b!5623681 m!6596592))

(declare-fun m!6596594 () Bool)

(assert (=> bm!423479 m!6596594))

(declare-fun m!6596596 () Bool)

(assert (=> bm!423481 m!6596596))

(assert (=> start!582596 d!1776741))

(declare-fun d!1776743 () Bool)

(assert (=> d!1776743 (= (nullable!5643 (regOne!31734 (regOne!31734 r!7292))) (nullableFct!1741 (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun bs!1302011 () Bool)

(assert (= bs!1302011 d!1776743))

(declare-fun m!6596598 () Bool)

(assert (=> bs!1302011 m!6596598))

(assert (=> b!5623167 d!1776743))

(declare-fun bs!1302012 () Bool)

(declare-fun d!1776745 () Bool)

(assert (= bs!1302012 (and d!1776745 d!1776687)))

(declare-fun lambda!302013 () Int)

(assert (=> bs!1302012 (= lambda!302013 lambda!301996)))

(declare-fun bs!1302013 () Bool)

(assert (= bs!1302013 (and d!1776745 d!1776689)))

(assert (=> bs!1302013 (= lambda!302013 lambda!301999)))

(declare-fun bs!1302014 () Bool)

(assert (= bs!1302014 (and d!1776745 d!1776697)))

(assert (=> bs!1302014 (= lambda!302013 lambda!302002)))

(assert (=> d!1776745 (= (inv!82274 (h!69457 zl!343)) (forall!14768 (exprs!5495 (h!69457 zl!343)) lambda!302013))))

(declare-fun bs!1302015 () Bool)

(assert (= bs!1302015 d!1776745))

(declare-fun m!6596600 () Bool)

(assert (=> bs!1302015 m!6596600))

(assert (=> b!5623166 d!1776745))

(declare-fun call!423491 () List!63132)

(declare-fun call!423493 () (InoxSet Context!9990))

(declare-fun bm!423486 () Bool)

(declare-fun c!987096 () Bool)

(assert (=> bm!423486 (= call!423493 (derivationStepZipperDown!953 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))) (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491)) (h!69458 s!2326)))))

(declare-fun b!5623690 () Bool)

(declare-fun e!3466584 () (InoxSet Context!9990))

(declare-fun call!423496 () (InoxSet Context!9990))

(assert (=> b!5623690 (= e!3466584 ((_ map or) call!423493 call!423496))))

(declare-fun bm!423487 () Bool)

(declare-fun call!423494 () (InoxSet Context!9990))

(assert (=> bm!423487 (= call!423496 call!423494)))

(declare-fun b!5623691 () Bool)

(declare-fun e!3466580 () Bool)

(assert (=> b!5623691 (= e!3466580 (nullable!5643 (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))))

(declare-fun bm!423488 () Bool)

(declare-fun call!423492 () List!63132)

(assert (=> bm!423488 (= call!423492 call!423491)))

(declare-fun b!5623693 () Bool)

(declare-fun e!3466582 () (InoxSet Context!9990))

(assert (=> b!5623693 (= e!3466582 (store ((as const (Array Context!9990 Bool)) false) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) true))))

(declare-fun b!5623694 () Bool)

(declare-fun c!987098 () Bool)

(assert (=> b!5623694 (= c!987098 ((_ is Star!15611) (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun e!3466585 () (InoxSet Context!9990))

(declare-fun e!3466583 () (InoxSet Context!9990))

(assert (=> b!5623694 (= e!3466585 e!3466583)))

(declare-fun b!5623695 () Bool)

(assert (=> b!5623695 (= e!3466583 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987097 () Bool)

(declare-fun bm!423489 () Bool)

(declare-fun c!987095 () Bool)

(assert (=> bm!423489 (= call!423491 ($colon$colon!1663 (exprs!5495 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343)))))) (ite (or c!987095 c!987097) (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 r!7292)))))))

(declare-fun b!5623696 () Bool)

(declare-fun call!423495 () (InoxSet Context!9990))

(assert (=> b!5623696 (= e!3466583 call!423495)))

(declare-fun b!5623697 () Bool)

(assert (=> b!5623697 (= e!3466585 call!423495)))

(declare-fun b!5623698 () Bool)

(assert (=> b!5623698 (= e!3466584 e!3466585)))

(assert (=> b!5623698 (= c!987097 ((_ is Concat!24456) (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun d!1776747 () Bool)

(declare-fun c!987094 () Bool)

(assert (=> d!1776747 (= c!987094 (and ((_ is ElementMatch!15611) (regOne!31734 (regOne!31734 r!7292))) (= (c!986945 (regOne!31734 (regOne!31734 r!7292))) (h!69458 s!2326))))))

(assert (=> d!1776747 (= (derivationStepZipperDown!953 (regOne!31734 (regOne!31734 r!7292)) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (h!69458 s!2326)) e!3466582)))

(declare-fun b!5623692 () Bool)

(declare-fun e!3466581 () (InoxSet Context!9990))

(assert (=> b!5623692 (= e!3466582 e!3466581)))

(assert (=> b!5623692 (= c!987096 ((_ is Union!15611) (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun bm!423490 () Bool)

(assert (=> bm!423490 (= call!423495 call!423496)))

(declare-fun b!5623699 () Bool)

(assert (=> b!5623699 (= e!3466581 ((_ map or) call!423494 call!423493))))

(declare-fun b!5623700 () Bool)

(assert (=> b!5623700 (= c!987095 e!3466580)))

(declare-fun res!2381990 () Bool)

(assert (=> b!5623700 (=> (not res!2381990) (not e!3466580))))

(assert (=> b!5623700 (= res!2381990 ((_ is Concat!24456) (regOne!31734 (regOne!31734 r!7292))))))

(assert (=> b!5623700 (= e!3466581 e!3466584)))

(declare-fun bm!423491 () Bool)

(assert (=> bm!423491 (= call!423494 (derivationStepZipperDown!953 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))) (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492)) (h!69458 s!2326)))))

(assert (= (and d!1776747 c!987094) b!5623693))

(assert (= (and d!1776747 (not c!987094)) b!5623692))

(assert (= (and b!5623692 c!987096) b!5623699))

(assert (= (and b!5623692 (not c!987096)) b!5623700))

(assert (= (and b!5623700 res!2381990) b!5623691))

(assert (= (and b!5623700 c!987095) b!5623690))

(assert (= (and b!5623700 (not c!987095)) b!5623698))

(assert (= (and b!5623698 c!987097) b!5623697))

(assert (= (and b!5623698 (not c!987097)) b!5623694))

(assert (= (and b!5623694 c!987098) b!5623696))

(assert (= (and b!5623694 (not c!987098)) b!5623695))

(assert (= (or b!5623697 b!5623696) bm!423488))

(assert (= (or b!5623697 b!5623696) bm!423490))

(assert (= (or b!5623690 bm!423488) bm!423489))

(assert (= (or b!5623690 bm!423490) bm!423487))

(assert (= (or b!5623699 b!5623690) bm!423486))

(assert (= (or b!5623699 bm!423487) bm!423491))

(declare-fun m!6596602 () Bool)

(assert (=> b!5623691 m!6596602))

(declare-fun m!6596604 () Bool)

(assert (=> bm!423491 m!6596604))

(declare-fun m!6596606 () Bool)

(assert (=> bm!423486 m!6596606))

(declare-fun m!6596608 () Bool)

(assert (=> b!5623693 m!6596608))

(declare-fun m!6596610 () Bool)

(assert (=> bm!423489 m!6596610))

(assert (=> b!5623176 d!1776747))

(declare-fun call!423497 () List!63132)

(declare-fun c!987101 () Bool)

(declare-fun call!423499 () (InoxSet Context!9990))

(declare-fun bm!423492 () Bool)

(assert (=> bm!423492 (= call!423499 (derivationStepZipperDown!953 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))) (ite c!987101 lt!2260973 (Context!9991 call!423497)) (h!69458 s!2326)))))

(declare-fun b!5623701 () Bool)

(declare-fun e!3466590 () (InoxSet Context!9990))

(declare-fun call!423502 () (InoxSet Context!9990))

(assert (=> b!5623701 (= e!3466590 ((_ map or) call!423499 call!423502))))

(declare-fun bm!423493 () Bool)

(declare-fun call!423500 () (InoxSet Context!9990))

(assert (=> bm!423493 (= call!423502 call!423500)))

(declare-fun b!5623702 () Bool)

(declare-fun e!3466586 () Bool)

(assert (=> b!5623702 (= e!3466586 (nullable!5643 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))))

(declare-fun bm!423494 () Bool)

(declare-fun call!423498 () List!63132)

(assert (=> bm!423494 (= call!423498 call!423497)))

(declare-fun b!5623704 () Bool)

(declare-fun e!3466588 () (InoxSet Context!9990))

(assert (=> b!5623704 (= e!3466588 (store ((as const (Array Context!9990 Bool)) false) lt!2260973 true))))

(declare-fun b!5623705 () Bool)

(declare-fun c!987103 () Bool)

(assert (=> b!5623705 (= c!987103 ((_ is Star!15611) (regTwo!31734 (regOne!31734 r!7292))))))

(declare-fun e!3466591 () (InoxSet Context!9990))

(declare-fun e!3466589 () (InoxSet Context!9990))

(assert (=> b!5623705 (= e!3466591 e!3466589)))

(declare-fun b!5623706 () Bool)

(assert (=> b!5623706 (= e!3466589 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987102 () Bool)

(declare-fun bm!423495 () Bool)

(declare-fun c!987100 () Bool)

(assert (=> bm!423495 (= call!423497 ($colon$colon!1663 (exprs!5495 lt!2260973) (ite (or c!987100 c!987102) (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (regTwo!31734 (regOne!31734 r!7292)))))))

(declare-fun b!5623707 () Bool)

(declare-fun call!423501 () (InoxSet Context!9990))

(assert (=> b!5623707 (= e!3466589 call!423501)))

(declare-fun b!5623708 () Bool)

(assert (=> b!5623708 (= e!3466591 call!423501)))

(declare-fun b!5623709 () Bool)

(assert (=> b!5623709 (= e!3466590 e!3466591)))

(assert (=> b!5623709 (= c!987102 ((_ is Concat!24456) (regTwo!31734 (regOne!31734 r!7292))))))

(declare-fun d!1776749 () Bool)

(declare-fun c!987099 () Bool)

(assert (=> d!1776749 (= c!987099 (and ((_ is ElementMatch!15611) (regTwo!31734 (regOne!31734 r!7292))) (= (c!986945 (regTwo!31734 (regOne!31734 r!7292))) (h!69458 s!2326))))))

(assert (=> d!1776749 (= (derivationStepZipperDown!953 (regTwo!31734 (regOne!31734 r!7292)) lt!2260973 (h!69458 s!2326)) e!3466588)))

(declare-fun b!5623703 () Bool)

(declare-fun e!3466587 () (InoxSet Context!9990))

(assert (=> b!5623703 (= e!3466588 e!3466587)))

(assert (=> b!5623703 (= c!987101 ((_ is Union!15611) (regTwo!31734 (regOne!31734 r!7292))))))

(declare-fun bm!423496 () Bool)

(assert (=> bm!423496 (= call!423501 call!423502)))

(declare-fun b!5623710 () Bool)

(assert (=> b!5623710 (= e!3466587 ((_ map or) call!423500 call!423499))))

(declare-fun b!5623711 () Bool)

(assert (=> b!5623711 (= c!987100 e!3466586)))

(declare-fun res!2381991 () Bool)

(assert (=> b!5623711 (=> (not res!2381991) (not e!3466586))))

(assert (=> b!5623711 (= res!2381991 ((_ is Concat!24456) (regTwo!31734 (regOne!31734 r!7292))))))

(assert (=> b!5623711 (= e!3466587 e!3466590)))

(declare-fun bm!423497 () Bool)

(assert (=> bm!423497 (= call!423500 (derivationStepZipperDown!953 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))) (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498)) (h!69458 s!2326)))))

(assert (= (and d!1776749 c!987099) b!5623704))

(assert (= (and d!1776749 (not c!987099)) b!5623703))

(assert (= (and b!5623703 c!987101) b!5623710))

(assert (= (and b!5623703 (not c!987101)) b!5623711))

(assert (= (and b!5623711 res!2381991) b!5623702))

(assert (= (and b!5623711 c!987100) b!5623701))

(assert (= (and b!5623711 (not c!987100)) b!5623709))

(assert (= (and b!5623709 c!987102) b!5623708))

(assert (= (and b!5623709 (not c!987102)) b!5623705))

(assert (= (and b!5623705 c!987103) b!5623707))

(assert (= (and b!5623705 (not c!987103)) b!5623706))

(assert (= (or b!5623708 b!5623707) bm!423494))

(assert (= (or b!5623708 b!5623707) bm!423496))

(assert (= (or b!5623701 bm!423494) bm!423495))

(assert (= (or b!5623701 bm!423496) bm!423493))

(assert (= (or b!5623710 b!5623701) bm!423492))

(assert (= (or b!5623710 bm!423493) bm!423497))

(declare-fun m!6596612 () Bool)

(assert (=> b!5623702 m!6596612))

(declare-fun m!6596614 () Bool)

(assert (=> bm!423497 m!6596614))

(declare-fun m!6596616 () Bool)

(assert (=> bm!423492 m!6596616))

(assert (=> b!5623704 m!6596580))

(declare-fun m!6596618 () Bool)

(assert (=> bm!423495 m!6596618))

(assert (=> b!5623176 d!1776749))

(declare-fun e!3466606 () Bool)

(declare-fun d!1776751 () Bool)

(assert (=> d!1776751 (= (matchZipper!1749 ((_ map or) lt!2260968 lt!2260967) (t!376424 s!2326)) e!3466606)))

(declare-fun res!2381996 () Bool)

(assert (=> d!1776751 (=> res!2381996 e!3466606)))

(assert (=> d!1776751 (= res!2381996 (matchZipper!1749 lt!2260968 (t!376424 s!2326)))))

(declare-fun lt!2261056 () Unit!155976)

(declare-fun choose!42607 ((InoxSet Context!9990) (InoxSet Context!9990) List!63134) Unit!155976)

(assert (=> d!1776751 (= lt!2261056 (choose!42607 lt!2260968 lt!2260967 (t!376424 s!2326)))))

(assert (=> d!1776751 (= (lemmaZipperConcatMatchesSameAsBothZippers!636 lt!2260968 lt!2260967 (t!376424 s!2326)) lt!2261056)))

(declare-fun b!5623736 () Bool)

(assert (=> b!5623736 (= e!3466606 (matchZipper!1749 lt!2260967 (t!376424 s!2326)))))

(assert (= (and d!1776751 (not res!2381996)) b!5623736))

(assert (=> d!1776751 m!6596254))

(assert (=> d!1776751 m!6596252))

(declare-fun m!6596640 () Bool)

(assert (=> d!1776751 m!6596640))

(assert (=> b!5623736 m!6596246))

(assert (=> b!5623175 d!1776751))

(declare-fun d!1776757 () Bool)

(declare-fun c!987122 () Bool)

(assert (=> d!1776757 (= c!987122 (isEmpty!34840 (t!376424 s!2326)))))

(declare-fun e!3466616 () Bool)

(assert (=> d!1776757 (= (matchZipper!1749 lt!2260968 (t!376424 s!2326)) e!3466616)))

(declare-fun b!5623751 () Bool)

(declare-fun nullableZipper!1596 ((InoxSet Context!9990)) Bool)

(assert (=> b!5623751 (= e!3466616 (nullableZipper!1596 lt!2260968))))

(declare-fun b!5623752 () Bool)

(declare-fun derivationStepZipper!1700 ((InoxSet Context!9990) C!31492) (InoxSet Context!9990))

(assert (=> b!5623752 (= e!3466616 (matchZipper!1749 (derivationStepZipper!1700 lt!2260968 (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))))))

(assert (= (and d!1776757 c!987122) b!5623751))

(assert (= (and d!1776757 (not c!987122)) b!5623752))

(declare-fun m!6596642 () Bool)

(assert (=> d!1776757 m!6596642))

(declare-fun m!6596644 () Bool)

(assert (=> b!5623751 m!6596644))

(declare-fun m!6596646 () Bool)

(assert (=> b!5623752 m!6596646))

(assert (=> b!5623752 m!6596646))

(declare-fun m!6596648 () Bool)

(assert (=> b!5623752 m!6596648))

(declare-fun m!6596650 () Bool)

(assert (=> b!5623752 m!6596650))

(assert (=> b!5623752 m!6596648))

(assert (=> b!5623752 m!6596650))

(declare-fun m!6596652 () Bool)

(assert (=> b!5623752 m!6596652))

(assert (=> b!5623175 d!1776757))

(declare-fun d!1776759 () Bool)

(declare-fun c!987123 () Bool)

(assert (=> d!1776759 (= c!987123 (isEmpty!34840 (t!376424 s!2326)))))

(declare-fun e!3466619 () Bool)

(assert (=> d!1776759 (= (matchZipper!1749 ((_ map or) lt!2260968 lt!2260967) (t!376424 s!2326)) e!3466619)))

(declare-fun b!5623758 () Bool)

(assert (=> b!5623758 (= e!3466619 (nullableZipper!1596 ((_ map or) lt!2260968 lt!2260967)))))

(declare-fun b!5623759 () Bool)

(assert (=> b!5623759 (= e!3466619 (matchZipper!1749 (derivationStepZipper!1700 ((_ map or) lt!2260968 lt!2260967) (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))))))

(assert (= (and d!1776759 c!987123) b!5623758))

(assert (= (and d!1776759 (not c!987123)) b!5623759))

(assert (=> d!1776759 m!6596642))

(declare-fun m!6596660 () Bool)

(assert (=> b!5623758 m!6596660))

(assert (=> b!5623759 m!6596646))

(assert (=> b!5623759 m!6596646))

(declare-fun m!6596662 () Bool)

(assert (=> b!5623759 m!6596662))

(assert (=> b!5623759 m!6596650))

(assert (=> b!5623759 m!6596662))

(assert (=> b!5623759 m!6596650))

(declare-fun m!6596664 () Bool)

(assert (=> b!5623759 m!6596664))

(assert (=> b!5623175 d!1776759))

(declare-fun d!1776763 () Bool)

(assert (=> d!1776763 (= (isEmpty!34838 (t!376423 zl!343)) ((_ is Nil!63009) (t!376423 zl!343)))))

(assert (=> b!5623164 d!1776763))

(declare-fun d!1776767 () Bool)

(declare-fun c!987126 () Bool)

(assert (=> d!1776767 (= c!987126 (isEmpty!34840 (t!376424 s!2326)))))

(declare-fun e!3466623 () Bool)

(assert (=> d!1776767 (= (matchZipper!1749 lt!2260967 (t!376424 s!2326)) e!3466623)))

(declare-fun b!5623765 () Bool)

(assert (=> b!5623765 (= e!3466623 (nullableZipper!1596 lt!2260967))))

(declare-fun b!5623766 () Bool)

(assert (=> b!5623766 (= e!3466623 (matchZipper!1749 (derivationStepZipper!1700 lt!2260967 (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))))))

(assert (= (and d!1776767 c!987126) b!5623765))

(assert (= (and d!1776767 (not c!987126)) b!5623766))

(assert (=> d!1776767 m!6596642))

(declare-fun m!6596668 () Bool)

(assert (=> b!5623765 m!6596668))

(assert (=> b!5623766 m!6596646))

(assert (=> b!5623766 m!6596646))

(declare-fun m!6596670 () Bool)

(assert (=> b!5623766 m!6596670))

(assert (=> b!5623766 m!6596650))

(assert (=> b!5623766 m!6596670))

(assert (=> b!5623766 m!6596650))

(declare-fun m!6596672 () Bool)

(assert (=> b!5623766 m!6596672))

(assert (=> b!5623174 d!1776767))

(declare-fun bs!1302020 () Bool)

(declare-fun d!1776769 () Bool)

(assert (= bs!1302020 (and d!1776769 d!1776687)))

(declare-fun lambda!302016 () Int)

(assert (=> bs!1302020 (= lambda!302016 lambda!301996)))

(declare-fun bs!1302021 () Bool)

(assert (= bs!1302021 (and d!1776769 d!1776689)))

(assert (=> bs!1302021 (= lambda!302016 lambda!301999)))

(declare-fun bs!1302022 () Bool)

(assert (= bs!1302022 (and d!1776769 d!1776697)))

(assert (=> bs!1302022 (= lambda!302016 lambda!302002)))

(declare-fun bs!1302023 () Bool)

(assert (= bs!1302023 (and d!1776769 d!1776745)))

(assert (=> bs!1302023 (= lambda!302016 lambda!302013)))

(declare-fun b!5623831 () Bool)

(declare-fun e!3466661 () Regex!15611)

(declare-fun e!3466663 () Regex!15611)

(assert (=> b!5623831 (= e!3466661 e!3466663)))

(declare-fun c!987144 () Bool)

(assert (=> b!5623831 (= c!987144 ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343))))))

(declare-fun b!5623832 () Bool)

(assert (=> b!5623832 (= e!3466661 (h!69456 (exprs!5495 (h!69457 zl!343))))))

(declare-fun b!5623833 () Bool)

(assert (=> b!5623833 (= e!3466663 (Concat!24456 (h!69456 (exprs!5495 (h!69457 zl!343))) (generalisedConcat!1226 (t!376422 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623834 () Bool)

(assert (=> b!5623834 (= e!3466663 EmptyExpr!15611)))

(declare-fun b!5623835 () Bool)

(declare-fun e!3466662 () Bool)

(declare-fun lt!2261062 () Regex!15611)

(declare-fun isEmptyExpr!1155 (Regex!15611) Bool)

(assert (=> b!5623835 (= e!3466662 (isEmptyExpr!1155 lt!2261062))))

(declare-fun e!3466660 () Bool)

(assert (=> d!1776769 e!3466660))

(declare-fun res!2382008 () Bool)

(assert (=> d!1776769 (=> (not res!2382008) (not e!3466660))))

(assert (=> d!1776769 (= res!2382008 (validRegex!7347 lt!2261062))))

(assert (=> d!1776769 (= lt!2261062 e!3466661)))

(declare-fun c!987143 () Bool)

(declare-fun e!3466664 () Bool)

(assert (=> d!1776769 (= c!987143 e!3466664)))

(declare-fun res!2382007 () Bool)

(assert (=> d!1776769 (=> (not res!2382007) (not e!3466664))))

(assert (=> d!1776769 (= res!2382007 ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343))))))

(assert (=> d!1776769 (forall!14768 (exprs!5495 (h!69457 zl!343)) lambda!302016)))

(assert (=> d!1776769 (= (generalisedConcat!1226 (exprs!5495 (h!69457 zl!343))) lt!2261062)))

(declare-fun b!5623836 () Bool)

(declare-fun e!3466659 () Bool)

(assert (=> b!5623836 (= e!3466662 e!3466659)))

(declare-fun c!987142 () Bool)

(assert (=> b!5623836 (= c!987142 (isEmpty!34839 (tail!11066 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623837 () Bool)

(assert (=> b!5623837 (= e!3466664 (isEmpty!34839 (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623838 () Bool)

(declare-fun isConcat!678 (Regex!15611) Bool)

(assert (=> b!5623838 (= e!3466659 (isConcat!678 lt!2261062))))

(declare-fun b!5623839 () Bool)

(assert (=> b!5623839 (= e!3466659 (= lt!2261062 (head!11971 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623840 () Bool)

(assert (=> b!5623840 (= e!3466660 e!3466662)))

(declare-fun c!987145 () Bool)

(assert (=> b!5623840 (= c!987145 (isEmpty!34839 (exprs!5495 (h!69457 zl!343))))))

(assert (= (and d!1776769 res!2382007) b!5623837))

(assert (= (and d!1776769 c!987143) b!5623832))

(assert (= (and d!1776769 (not c!987143)) b!5623831))

(assert (= (and b!5623831 c!987144) b!5623833))

(assert (= (and b!5623831 (not c!987144)) b!5623834))

(assert (= (and d!1776769 res!2382008) b!5623840))

(assert (= (and b!5623840 c!987145) b!5623835))

(assert (= (and b!5623840 (not c!987145)) b!5623836))

(assert (= (and b!5623836 c!987142) b!5623839))

(assert (= (and b!5623836 (not c!987142)) b!5623838))

(declare-fun m!6596704 () Bool)

(assert (=> b!5623839 m!6596704))

(declare-fun m!6596706 () Bool)

(assert (=> d!1776769 m!6596706))

(declare-fun m!6596708 () Bool)

(assert (=> d!1776769 m!6596708))

(declare-fun m!6596710 () Bool)

(assert (=> b!5623833 m!6596710))

(declare-fun m!6596712 () Bool)

(assert (=> b!5623835 m!6596712))

(assert (=> b!5623837 m!6596292))

(declare-fun m!6596714 () Bool)

(assert (=> b!5623836 m!6596714))

(assert (=> b!5623836 m!6596714))

(declare-fun m!6596716 () Bool)

(assert (=> b!5623836 m!6596716))

(declare-fun m!6596718 () Bool)

(assert (=> b!5623840 m!6596718))

(declare-fun m!6596720 () Bool)

(assert (=> b!5623838 m!6596720))

(assert (=> b!5623173 d!1776769))

(declare-fun b!5623870 () Bool)

(declare-fun e!3466675 () Bool)

(declare-fun tp!1557100 () Bool)

(declare-fun tp!1557101 () Bool)

(assert (=> b!5623870 (= e!3466675 (and tp!1557100 tp!1557101))))

(assert (=> b!5623178 (= tp!1557038 e!3466675)))

(assert (= (and b!5623178 ((_ is Cons!63008) (exprs!5495 setElem!37526))) b!5623870))

(declare-fun b!5623884 () Bool)

(declare-fun e!3466679 () Bool)

(declare-fun tp!1557117 () Bool)

(assert (=> b!5623884 (= e!3466679 tp!1557117)))

(declare-fun b!5623885 () Bool)

(declare-fun tp!1557114 () Bool)

(declare-fun tp!1557118 () Bool)

(assert (=> b!5623885 (= e!3466679 (and tp!1557114 tp!1557118))))

(declare-fun b!5623882 () Bool)

(assert (=> b!5623882 (= e!3466679 tp_is_empty!40475)))

(assert (=> b!5623163 (= tp!1557034 e!3466679)))

(declare-fun b!5623883 () Bool)

(declare-fun tp!1557115 () Bool)

(declare-fun tp!1557116 () Bool)

(assert (=> b!5623883 (= e!3466679 (and tp!1557115 tp!1557116))))

(assert (= (and b!5623163 ((_ is ElementMatch!15611) (reg!15940 r!7292))) b!5623882))

(assert (= (and b!5623163 ((_ is Concat!24456) (reg!15940 r!7292))) b!5623883))

(assert (= (and b!5623163 ((_ is Star!15611) (reg!15940 r!7292))) b!5623884))

(assert (= (and b!5623163 ((_ is Union!15611) (reg!15940 r!7292))) b!5623885))

(declare-fun b!5623888 () Bool)

(declare-fun e!3466680 () Bool)

(declare-fun tp!1557122 () Bool)

(assert (=> b!5623888 (= e!3466680 tp!1557122)))

(declare-fun b!5623889 () Bool)

(declare-fun tp!1557119 () Bool)

(declare-fun tp!1557123 () Bool)

(assert (=> b!5623889 (= e!3466680 (and tp!1557119 tp!1557123))))

(declare-fun b!5623886 () Bool)

(assert (=> b!5623886 (= e!3466680 tp_is_empty!40475)))

(assert (=> b!5623177 (= tp!1557030 e!3466680)))

(declare-fun b!5623887 () Bool)

(declare-fun tp!1557120 () Bool)

(declare-fun tp!1557121 () Bool)

(assert (=> b!5623887 (= e!3466680 (and tp!1557120 tp!1557121))))

(assert (= (and b!5623177 ((_ is ElementMatch!15611) (regOne!31734 r!7292))) b!5623886))

(assert (= (and b!5623177 ((_ is Concat!24456) (regOne!31734 r!7292))) b!5623887))

(assert (= (and b!5623177 ((_ is Star!15611) (regOne!31734 r!7292))) b!5623888))

(assert (= (and b!5623177 ((_ is Union!15611) (regOne!31734 r!7292))) b!5623889))

(declare-fun b!5623892 () Bool)

(declare-fun e!3466681 () Bool)

(declare-fun tp!1557127 () Bool)

(assert (=> b!5623892 (= e!3466681 tp!1557127)))

(declare-fun b!5623893 () Bool)

(declare-fun tp!1557124 () Bool)

(declare-fun tp!1557128 () Bool)

(assert (=> b!5623893 (= e!3466681 (and tp!1557124 tp!1557128))))

(declare-fun b!5623890 () Bool)

(assert (=> b!5623890 (= e!3466681 tp_is_empty!40475)))

(assert (=> b!5623177 (= tp!1557033 e!3466681)))

(declare-fun b!5623891 () Bool)

(declare-fun tp!1557125 () Bool)

(declare-fun tp!1557126 () Bool)

(assert (=> b!5623891 (= e!3466681 (and tp!1557125 tp!1557126))))

(assert (= (and b!5623177 ((_ is ElementMatch!15611) (regTwo!31734 r!7292))) b!5623890))

(assert (= (and b!5623177 ((_ is Concat!24456) (regTwo!31734 r!7292))) b!5623891))

(assert (= (and b!5623177 ((_ is Star!15611) (regTwo!31734 r!7292))) b!5623892))

(assert (= (and b!5623177 ((_ is Union!15611) (regTwo!31734 r!7292))) b!5623893))

(declare-fun b!5623898 () Bool)

(declare-fun e!3466684 () Bool)

(declare-fun tp!1557131 () Bool)

(assert (=> b!5623898 (= e!3466684 (and tp_is_empty!40475 tp!1557131))))

(assert (=> b!5623158 (= tp!1557039 e!3466684)))

(assert (= (and b!5623158 ((_ is Cons!63010) (t!376424 s!2326))) b!5623898))

(declare-fun b!5623906 () Bool)

(declare-fun e!3466690 () Bool)

(declare-fun tp!1557136 () Bool)

(assert (=> b!5623906 (= e!3466690 tp!1557136)))

(declare-fun e!3466689 () Bool)

(declare-fun b!5623905 () Bool)

(declare-fun tp!1557137 () Bool)

(assert (=> b!5623905 (= e!3466689 (and (inv!82274 (h!69457 (t!376423 zl!343))) e!3466690 tp!1557137))))

(assert (=> b!5623166 (= tp!1557031 e!3466689)))

(assert (= b!5623905 b!5623906))

(assert (= (and b!5623166 ((_ is Cons!63009) (t!376423 zl!343))) b!5623905))

(declare-fun m!6596724 () Bool)

(assert (=> b!5623905 m!6596724))

(declare-fun b!5623909 () Bool)

(declare-fun e!3466691 () Bool)

(declare-fun tp!1557141 () Bool)

(assert (=> b!5623909 (= e!3466691 tp!1557141)))

(declare-fun b!5623910 () Bool)

(declare-fun tp!1557138 () Bool)

(declare-fun tp!1557142 () Bool)

(assert (=> b!5623910 (= e!3466691 (and tp!1557138 tp!1557142))))

(declare-fun b!5623907 () Bool)

(assert (=> b!5623907 (= e!3466691 tp_is_empty!40475)))

(assert (=> b!5623160 (= tp!1557037 e!3466691)))

(declare-fun b!5623908 () Bool)

(declare-fun tp!1557139 () Bool)

(declare-fun tp!1557140 () Bool)

(assert (=> b!5623908 (= e!3466691 (and tp!1557139 tp!1557140))))

(assert (= (and b!5623160 ((_ is ElementMatch!15611) (regOne!31735 r!7292))) b!5623907))

(assert (= (and b!5623160 ((_ is Concat!24456) (regOne!31735 r!7292))) b!5623908))

(assert (= (and b!5623160 ((_ is Star!15611) (regOne!31735 r!7292))) b!5623909))

(assert (= (and b!5623160 ((_ is Union!15611) (regOne!31735 r!7292))) b!5623910))

(declare-fun b!5623913 () Bool)

(declare-fun e!3466692 () Bool)

(declare-fun tp!1557146 () Bool)

(assert (=> b!5623913 (= e!3466692 tp!1557146)))

(declare-fun b!5623914 () Bool)

(declare-fun tp!1557143 () Bool)

(declare-fun tp!1557147 () Bool)

(assert (=> b!5623914 (= e!3466692 (and tp!1557143 tp!1557147))))

(declare-fun b!5623911 () Bool)

(assert (=> b!5623911 (= e!3466692 tp_is_empty!40475)))

(assert (=> b!5623160 (= tp!1557036 e!3466692)))

(declare-fun b!5623912 () Bool)

(declare-fun tp!1557144 () Bool)

(declare-fun tp!1557145 () Bool)

(assert (=> b!5623912 (= e!3466692 (and tp!1557144 tp!1557145))))

(assert (= (and b!5623160 ((_ is ElementMatch!15611) (regTwo!31735 r!7292))) b!5623911))

(assert (= (and b!5623160 ((_ is Concat!24456) (regTwo!31735 r!7292))) b!5623912))

(assert (= (and b!5623160 ((_ is Star!15611) (regTwo!31735 r!7292))) b!5623913))

(assert (= (and b!5623160 ((_ is Union!15611) (regTwo!31735 r!7292))) b!5623914))

(declare-fun b!5623915 () Bool)

(declare-fun e!3466693 () Bool)

(declare-fun tp!1557148 () Bool)

(declare-fun tp!1557149 () Bool)

(assert (=> b!5623915 (= e!3466693 (and tp!1557148 tp!1557149))))

(assert (=> b!5623179 (= tp!1557035 e!3466693)))

(assert (= (and b!5623179 ((_ is Cons!63008) (exprs!5495 (h!69457 zl!343)))) b!5623915))

(declare-fun condSetEmpty!37532 () Bool)

(assert (=> setNonEmpty!37526 (= condSetEmpty!37532 (= setRest!37526 ((as const (Array Context!9990 Bool)) false)))))

(declare-fun setRes!37532 () Bool)

(assert (=> setNonEmpty!37526 (= tp!1557032 setRes!37532)))

(declare-fun setIsEmpty!37532 () Bool)

(assert (=> setIsEmpty!37532 setRes!37532))

(declare-fun setElem!37532 () Context!9990)

(declare-fun setNonEmpty!37532 () Bool)

(declare-fun tp!1557154 () Bool)

(declare-fun e!3466696 () Bool)

(assert (=> setNonEmpty!37532 (= setRes!37532 (and tp!1557154 (inv!82274 setElem!37532) e!3466696))))

(declare-fun setRest!37532 () (InoxSet Context!9990))

(assert (=> setNonEmpty!37532 (= setRest!37526 ((_ map or) (store ((as const (Array Context!9990 Bool)) false) setElem!37532 true) setRest!37532))))

(declare-fun b!5623920 () Bool)

(declare-fun tp!1557155 () Bool)

(assert (=> b!5623920 (= e!3466696 tp!1557155)))

(assert (= (and setNonEmpty!37526 condSetEmpty!37532) setIsEmpty!37532))

(assert (= (and setNonEmpty!37526 (not condSetEmpty!37532)) setNonEmpty!37532))

(assert (= setNonEmpty!37532 b!5623920))

(declare-fun m!6596726 () Bool)

(assert (=> setNonEmpty!37532 m!6596726))

(declare-fun b_lambda!212745 () Bool)

(assert (= b_lambda!212739 (or b!5623168 b_lambda!212745)))

(declare-fun bs!1302025 () Bool)

(declare-fun d!1776783 () Bool)

(assert (= bs!1302025 (and d!1776783 b!5623168)))

(assert (=> bs!1302025 (= (dynLambda!24639 lambda!301960 (h!69457 zl!343)) (derivationStepZipperUp!879 (h!69457 zl!343) (h!69458 s!2326)))))

(assert (=> bs!1302025 m!6596298))

(assert (=> d!1776711 d!1776783))

(check-sat (not d!1776661) (not b!5623367) (not b!5623898) (not bm!423444) (not b!5623906) (not bm!423495) (not b!5623521) (not bm!423464) (not setNonEmpty!37532) (not b!5623833) (not b!5623884) (not d!1776719) (not d!1776701) (not b!5623358) (not d!1776673) (not d!1776751) (not d!1776687) (not b_lambda!212745) (not b!5623255) (not b!5623361) (not bm!423491) (not bm!423497) (not b!5623638) (not b!5623526) (not bm!423489) (not d!1776767) (not b!5623563) tp_is_empty!40475 (not b!5623516) (not b!5623298) (not d!1776759) (not b!5623360) (not b!5623766) (not d!1776769) (not d!1776743) (not b!5623905) (not d!1776757) (not b!5623758) (not b!5623909) (not b!5623891) (not b!5623893) (not b!5623838) (not b!5623888) (not b!5623840) (not bm!423479) (not b!5623885) (not b!5623517) (not d!1776745) (not d!1776659) (not b!5623537) (not b!5623514) (not b!5623515) (not b!5623251) (not b!5623892) (not b!5623759) (not d!1776731) (not b!5623294) (not b!5623920) (not bm!423481) (not b!5623912) (not b!5623839) (not d!1776675) (not b!5623553) (not b!5623518) (not b!5623368) (not b!5623915) (not d!1776711) (not bm!423458) (not b!5623302) (not b!5623751) (not b!5623910) (not b!5623289) (not b!5623691) (not b!5623837) (not bm!423419) (not b!5623300) (not b!5623736) (not bm!423486) (not bm!423492) (not b!5623836) (not d!1776689) (not bm!423463) (not b!5623870) (not b!5623681) (not b!5623889) (not b!5623564) (not bm!423445) (not b!5623835) (not b!5623883) (not b!5623637) (not b!5623765) (not b!5623299) (not b!5623554) (not b!5623362) (not b!5623702) (not b!5623752) (not d!1776697) (not b!5623908) (not d!1776655) (not bm!423423) (not bm!423420) (not d!1776703) (not b!5623913) (not d!1776681) (not d!1776685) (not b!5623887) (not bs!1302025) (not b!5623914) (not d!1776677) (not b!5623626) (not b!5623519) (not bm!423461))
(check-sat)
(get-model)

(declare-fun d!1776785 () Bool)

(assert (=> d!1776785 (= (nullable!5643 (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))) (nullableFct!1741 (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))))

(declare-fun bs!1302026 () Bool)

(assert (= bs!1302026 d!1776785))

(declare-fun m!6596728 () Bool)

(assert (=> bs!1302026 m!6596728))

(assert (=> b!5623691 d!1776785))

(declare-fun d!1776787 () Bool)

(declare-fun lambda!302019 () Int)

(declare-fun exists!2183 ((InoxSet Context!9990) Int) Bool)

(assert (=> d!1776787 (= (nullableZipper!1596 lt!2260968) (exists!2183 lt!2260968 lambda!302019))))

(declare-fun bs!1302027 () Bool)

(assert (= bs!1302027 d!1776787))

(declare-fun m!6596730 () Bool)

(assert (=> bs!1302027 m!6596730))

(assert (=> b!5623751 d!1776787))

(declare-fun d!1776789 () Bool)

(assert (=> d!1776789 (= (Exists!2711 lambda!301992) (choose!42598 lambda!301992))))

(declare-fun bs!1302028 () Bool)

(assert (= bs!1302028 d!1776789))

(declare-fun m!6596732 () Bool)

(assert (=> bs!1302028 m!6596732))

(assert (=> d!1776681 d!1776789))

(declare-fun d!1776791 () Bool)

(assert (=> d!1776791 (= (Exists!2711 lambda!301993) (choose!42598 lambda!301993))))

(declare-fun bs!1302029 () Bool)

(assert (= bs!1302029 d!1776791))

(declare-fun m!6596734 () Bool)

(assert (=> bs!1302029 m!6596734))

(assert (=> d!1776681 d!1776791))

(declare-fun bs!1302030 () Bool)

(declare-fun d!1776793 () Bool)

(assert (= bs!1302030 (and d!1776793 b!5623161)))

(declare-fun lambda!302024 () Int)

(assert (=> bs!1302030 (not (= lambda!302024 lambda!301959))))

(declare-fun bs!1302031 () Bool)

(assert (= bs!1302031 (and d!1776793 d!1776681)))

(assert (=> bs!1302031 (not (= lambda!302024 lambda!301993))))

(assert (=> bs!1302030 (= lambda!302024 lambda!301958)))

(assert (=> bs!1302031 (= lambda!302024 lambda!301992)))

(declare-fun bs!1302032 () Bool)

(assert (= bs!1302032 (and d!1776793 d!1776677)))

(assert (=> bs!1302032 (= lambda!302024 lambda!301981)))

(declare-fun bs!1302033 () Bool)

(assert (= bs!1302033 (and d!1776793 b!5623254)))

(assert (=> bs!1302033 (not (= lambda!302024 lambda!301965))))

(declare-fun bs!1302034 () Bool)

(assert (= bs!1302034 (and d!1776793 b!5623253)))

(assert (=> bs!1302034 (not (= lambda!302024 lambda!301966))))

(assert (=> d!1776793 true))

(assert (=> d!1776793 true))

(assert (=> d!1776793 true))

(declare-fun lambda!302025 () Int)

(assert (=> bs!1302030 (= lambda!302025 lambda!301959)))

(assert (=> bs!1302031 (= lambda!302025 lambda!301993)))

(declare-fun bs!1302035 () Bool)

(assert (= bs!1302035 d!1776793))

(assert (=> bs!1302035 (not (= lambda!302025 lambda!302024))))

(assert (=> bs!1302030 (not (= lambda!302025 lambda!301958))))

(assert (=> bs!1302031 (not (= lambda!302025 lambda!301992))))

(assert (=> bs!1302032 (not (= lambda!302025 lambda!301981))))

(assert (=> bs!1302033 (not (= lambda!302025 lambda!301965))))

(assert (=> bs!1302034 (= lambda!302025 lambda!301966)))

(assert (=> d!1776793 true))

(assert (=> d!1776793 true))

(assert (=> d!1776793 true))

(assert (=> d!1776793 (= (Exists!2711 lambda!302024) (Exists!2711 lambda!302025))))

(assert (=> d!1776793 true))

(declare-fun _$90!1358 () Unit!155976)

(assert (=> d!1776793 (= (choose!42600 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326) _$90!1358)))

(declare-fun m!6596736 () Bool)

(assert (=> bs!1302035 m!6596736))

(declare-fun m!6596738 () Bool)

(assert (=> bs!1302035 m!6596738))

(assert (=> d!1776681 d!1776793))

(declare-fun d!1776795 () Bool)

(declare-fun res!2382018 () Bool)

(declare-fun e!3466704 () Bool)

(assert (=> d!1776795 (=> res!2382018 e!3466704)))

(assert (=> d!1776795 (= res!2382018 ((_ is ElementMatch!15611) (regOne!31734 r!7292)))))

(assert (=> d!1776795 (= (validRegex!7347 (regOne!31734 r!7292)) e!3466704)))

(declare-fun b!5623929 () Bool)

(declare-fun e!3466706 () Bool)

(declare-fun e!3466703 () Bool)

(assert (=> b!5623929 (= e!3466706 e!3466703)))

(declare-fun res!2382020 () Bool)

(assert (=> b!5623929 (= res!2382020 (not (nullable!5643 (reg!15940 (regOne!31734 r!7292)))))))

(assert (=> b!5623929 (=> (not res!2382020) (not e!3466703))))

(declare-fun b!5623930 () Bool)

(declare-fun e!3466705 () Bool)

(assert (=> b!5623930 (= e!3466706 e!3466705)))

(declare-fun c!987148 () Bool)

(assert (=> b!5623930 (= c!987148 ((_ is Union!15611) (regOne!31734 r!7292)))))

(declare-fun bm!423521 () Bool)

(declare-fun c!987149 () Bool)

(declare-fun call!423528 () Bool)

(assert (=> bm!423521 (= call!423528 (validRegex!7347 (ite c!987149 (reg!15940 (regOne!31734 r!7292)) (ite c!987148 (regOne!31735 (regOne!31734 r!7292)) (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun b!5623931 () Bool)

(assert (=> b!5623931 (= e!3466703 call!423528)))

(declare-fun b!5623932 () Bool)

(declare-fun e!3466707 () Bool)

(declare-fun e!3466702 () Bool)

(assert (=> b!5623932 (= e!3466707 e!3466702)))

(declare-fun res!2382017 () Bool)

(assert (=> b!5623932 (=> (not res!2382017) (not e!3466702))))

(declare-fun call!423527 () Bool)

(assert (=> b!5623932 (= res!2382017 call!423527)))

(declare-fun bm!423522 () Bool)

(assert (=> bm!423522 (= call!423527 call!423528)))

(declare-fun b!5623933 () Bool)

(declare-fun call!423526 () Bool)

(assert (=> b!5623933 (= e!3466702 call!423526)))

(declare-fun b!5623934 () Bool)

(declare-fun res!2382019 () Bool)

(declare-fun e!3466701 () Bool)

(assert (=> b!5623934 (=> (not res!2382019) (not e!3466701))))

(assert (=> b!5623934 (= res!2382019 call!423527)))

(assert (=> b!5623934 (= e!3466705 e!3466701)))

(declare-fun b!5623935 () Bool)

(declare-fun res!2382021 () Bool)

(assert (=> b!5623935 (=> res!2382021 e!3466707)))

(assert (=> b!5623935 (= res!2382021 (not ((_ is Concat!24456) (regOne!31734 r!7292))))))

(assert (=> b!5623935 (= e!3466705 e!3466707)))

(declare-fun b!5623936 () Bool)

(assert (=> b!5623936 (= e!3466701 call!423526)))

(declare-fun b!5623937 () Bool)

(assert (=> b!5623937 (= e!3466704 e!3466706)))

(assert (=> b!5623937 (= c!987149 ((_ is Star!15611) (regOne!31734 r!7292)))))

(declare-fun bm!423523 () Bool)

(assert (=> bm!423523 (= call!423526 (validRegex!7347 (ite c!987148 (regTwo!31735 (regOne!31734 r!7292)) (regTwo!31734 (regOne!31734 r!7292)))))))

(assert (= (and d!1776795 (not res!2382018)) b!5623937))

(assert (= (and b!5623937 c!987149) b!5623929))

(assert (= (and b!5623937 (not c!987149)) b!5623930))

(assert (= (and b!5623929 res!2382020) b!5623931))

(assert (= (and b!5623930 c!987148) b!5623934))

(assert (= (and b!5623930 (not c!987148)) b!5623935))

(assert (= (and b!5623934 res!2382019) b!5623936))

(assert (= (and b!5623935 (not res!2382021)) b!5623932))

(assert (= (and b!5623932 res!2382017) b!5623933))

(assert (= (or b!5623936 b!5623933) bm!423523))

(assert (= (or b!5623934 b!5623932) bm!423522))

(assert (= (or b!5623931 bm!423522) bm!423521))

(declare-fun m!6596740 () Bool)

(assert (=> b!5623929 m!6596740))

(declare-fun m!6596742 () Bool)

(assert (=> bm!423521 m!6596742))

(declare-fun m!6596744 () Bool)

(assert (=> bm!423523 m!6596744))

(assert (=> d!1776681 d!1776795))

(declare-fun d!1776797 () Bool)

(assert (=> d!1776797 (= (nullable!5643 (reg!15940 r!7292)) (nullableFct!1741 (reg!15940 r!7292)))))

(declare-fun bs!1302036 () Bool)

(assert (= bs!1302036 d!1776797))

(declare-fun m!6596746 () Bool)

(assert (=> bs!1302036 m!6596746))

(assert (=> b!5623681 d!1776797))

(assert (=> b!5623837 d!1776695))

(declare-fun d!1776799 () Bool)

(assert (=> d!1776799 (= (isEmptyExpr!1155 lt!2261062) ((_ is EmptyExpr!15611) lt!2261062))))

(assert (=> b!5623835 d!1776799))

(declare-fun d!1776801 () Bool)

(assert (=> d!1776801 (= (isEmpty!34840 (t!376424 s!2326)) ((_ is Nil!63010) (t!376424 s!2326)))))

(assert (=> d!1776767 d!1776801))

(declare-fun d!1776803 () Bool)

(assert (=> d!1776803 (= (isEmpty!34840 (tail!11064 s!2326)) ((_ is Nil!63010) (tail!11064 s!2326)))))

(assert (=> b!5623289 d!1776803))

(declare-fun d!1776805 () Bool)

(assert (=> d!1776805 (= (tail!11064 s!2326) (t!376424 s!2326))))

(assert (=> b!5623289 d!1776805))

(assert (=> d!1776711 d!1776731))

(declare-fun d!1776807 () Bool)

(assert (=> d!1776807 (= (flatMap!1224 z!1189 lambda!301960) (dynLambda!24639 lambda!301960 (h!69457 zl!343)))))

(assert (=> d!1776807 true))

(declare-fun _$13!2246 () Unit!155976)

(assert (=> d!1776807 (= (choose!42604 z!1189 (h!69457 zl!343) lambda!301960) _$13!2246)))

(declare-fun b_lambda!212747 () Bool)

(assert (=> (not b_lambda!212747) (not d!1776807)))

(declare-fun bs!1302037 () Bool)

(assert (= bs!1302037 d!1776807))

(assert (=> bs!1302037 m!6596308))

(assert (=> bs!1302037 m!6596534))

(assert (=> d!1776711 d!1776807))

(declare-fun call!423529 () List!63132)

(declare-fun call!423531 () (InoxSet Context!9990))

(declare-fun c!987152 () Bool)

(declare-fun bm!423524 () Bool)

(assert (=> bm!423524 (= call!423531 (derivationStepZipperDown!953 (ite c!987152 (regTwo!31735 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (regOne!31734 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))) (ite c!987152 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (Context!9991 call!423529)) (h!69458 s!2326)))))

(declare-fun b!5623938 () Bool)

(declare-fun e!3466712 () (InoxSet Context!9990))

(declare-fun call!423534 () (InoxSet Context!9990))

(assert (=> b!5623938 (= e!3466712 ((_ map or) call!423531 call!423534))))

(declare-fun bm!423525 () Bool)

(declare-fun call!423532 () (InoxSet Context!9990))

(assert (=> bm!423525 (= call!423534 call!423532)))

(declare-fun b!5623939 () Bool)

(declare-fun e!3466708 () Bool)

(assert (=> b!5623939 (= e!3466708 (nullable!5643 (regOne!31734 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))))

(declare-fun bm!423526 () Bool)

(declare-fun call!423530 () List!63132)

(assert (=> bm!423526 (= call!423530 call!423529)))

(declare-fun b!5623941 () Bool)

(declare-fun e!3466710 () (InoxSet Context!9990))

(assert (=> b!5623941 (= e!3466710 (store ((as const (Array Context!9990 Bool)) false) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) true))))

(declare-fun b!5623942 () Bool)

(declare-fun c!987154 () Bool)

(assert (=> b!5623942 (= c!987154 ((_ is Star!15611) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun e!3466713 () (InoxSet Context!9990))

(declare-fun e!3466711 () (InoxSet Context!9990))

(assert (=> b!5623942 (= e!3466713 e!3466711)))

(declare-fun b!5623943 () Bool)

(assert (=> b!5623943 (= e!3466711 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423527 () Bool)

(declare-fun c!987151 () Bool)

(declare-fun c!987153 () Bool)

(assert (=> bm!423527 (= call!423529 ($colon$colon!1663 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))) (ite (or c!987151 c!987153) (regTwo!31734 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))))

(declare-fun b!5623944 () Bool)

(declare-fun call!423533 () (InoxSet Context!9990))

(assert (=> b!5623944 (= e!3466711 call!423533)))

(declare-fun b!5623945 () Bool)

(assert (=> b!5623945 (= e!3466713 call!423533)))

(declare-fun b!5623946 () Bool)

(assert (=> b!5623946 (= e!3466712 e!3466713)))

(assert (=> b!5623946 (= c!987153 ((_ is Concat!24456) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun d!1776809 () Bool)

(declare-fun c!987150 () Bool)

(assert (=> d!1776809 (= c!987150 (and ((_ is ElementMatch!15611) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (= (c!986945 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326))))))

(assert (=> d!1776809 (= (derivationStepZipperDown!953 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326)) e!3466710)))

(declare-fun b!5623940 () Bool)

(declare-fun e!3466709 () (InoxSet Context!9990))

(assert (=> b!5623940 (= e!3466710 e!3466709)))

(assert (=> b!5623940 (= c!987152 ((_ is Union!15611) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun bm!423528 () Bool)

(assert (=> bm!423528 (= call!423533 call!423534)))

(declare-fun b!5623947 () Bool)

(assert (=> b!5623947 (= e!3466709 ((_ map or) call!423532 call!423531))))

(declare-fun b!5623948 () Bool)

(assert (=> b!5623948 (= c!987151 e!3466708)))

(declare-fun res!2382022 () Bool)

(assert (=> b!5623948 (=> (not res!2382022) (not e!3466708))))

(assert (=> b!5623948 (= res!2382022 ((_ is Concat!24456) (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(assert (=> b!5623948 (= e!3466709 e!3466712)))

(declare-fun bm!423529 () Bool)

(assert (=> bm!423529 (= call!423532 (derivationStepZipperDown!953 (ite c!987152 (regOne!31735 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (ite c!987151 (regTwo!31734 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (ite c!987153 (regOne!31734 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (reg!15940 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))) (ite (or c!987152 c!987151) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (Context!9991 call!423530)) (h!69458 s!2326)))))

(assert (= (and d!1776809 c!987150) b!5623941))

(assert (= (and d!1776809 (not c!987150)) b!5623940))

(assert (= (and b!5623940 c!987152) b!5623947))

(assert (= (and b!5623940 (not c!987152)) b!5623948))

(assert (= (and b!5623948 res!2382022) b!5623939))

(assert (= (and b!5623948 c!987151) b!5623938))

(assert (= (and b!5623948 (not c!987151)) b!5623946))

(assert (= (and b!5623946 c!987153) b!5623945))

(assert (= (and b!5623946 (not c!987153)) b!5623942))

(assert (= (and b!5623942 c!987154) b!5623944))

(assert (= (and b!5623942 (not c!987154)) b!5623943))

(assert (= (or b!5623945 b!5623944) bm!423526))

(assert (= (or b!5623945 b!5623944) bm!423528))

(assert (= (or b!5623938 bm!423526) bm!423527))

(assert (= (or b!5623938 bm!423528) bm!423525))

(assert (= (or b!5623947 b!5623938) bm!423524))

(assert (= (or b!5623947 bm!423525) bm!423529))

(declare-fun m!6596748 () Bool)

(assert (=> b!5623939 m!6596748))

(declare-fun m!6596750 () Bool)

(assert (=> bm!423529 m!6596750))

(declare-fun m!6596752 () Bool)

(assert (=> bm!423524 m!6596752))

(declare-fun m!6596754 () Bool)

(assert (=> b!5623941 m!6596754))

(declare-fun m!6596756 () Bool)

(assert (=> bm!423527 m!6596756))

(assert (=> bm!423445 d!1776809))

(declare-fun b!5623949 () Bool)

(declare-fun e!3466716 () (InoxSet Context!9990))

(declare-fun e!3466714 () (InoxSet Context!9990))

(assert (=> b!5623949 (= e!3466716 e!3466714)))

(declare-fun c!987156 () Bool)

(assert (=> b!5623949 (= c!987156 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))))

(declare-fun b!5623950 () Bool)

(declare-fun e!3466715 () Bool)

(assert (=> b!5623950 (= e!3466715 (nullable!5643 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))))))

(declare-fun call!423535 () (InoxSet Context!9990))

(declare-fun b!5623951 () Bool)

(assert (=> b!5623951 (= e!3466716 ((_ map or) call!423535 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))) (h!69458 s!2326))))))

(declare-fun b!5623952 () Bool)

(assert (=> b!5623952 (= e!3466714 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423530 () Bool)

(assert (=> bm!423530 (= call!423535 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))) (h!69458 s!2326)))))

(declare-fun b!5623953 () Bool)

(assert (=> b!5623953 (= e!3466714 call!423535)))

(declare-fun d!1776811 () Bool)

(declare-fun c!987155 () Bool)

(assert (=> d!1776811 (= c!987155 e!3466715)))

(declare-fun res!2382023 () Bool)

(assert (=> d!1776811 (=> (not res!2382023) (not e!3466715))))

(assert (=> d!1776811 (= res!2382023 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))))

(assert (=> d!1776811 (= (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326)) e!3466716)))

(assert (= (and d!1776811 res!2382023) b!5623950))

(assert (= (and d!1776811 c!987155) b!5623951))

(assert (= (and d!1776811 (not c!987155)) b!5623949))

(assert (= (and b!5623949 c!987156) b!5623953))

(assert (= (and b!5623949 (not c!987156)) b!5623952))

(assert (= (or b!5623951 b!5623953) bm!423530))

(declare-fun m!6596758 () Bool)

(assert (=> b!5623950 m!6596758))

(declare-fun m!6596760 () Bool)

(assert (=> b!5623951 m!6596760))

(declare-fun m!6596762 () Bool)

(assert (=> bm!423530 m!6596762))

(assert (=> b!5623564 d!1776811))

(declare-fun d!1776813 () Bool)

(declare-fun res!2382028 () Bool)

(declare-fun e!3466721 () Bool)

(assert (=> d!1776813 (=> res!2382028 e!3466721)))

(assert (=> d!1776813 (= res!2382028 ((_ is Nil!63008) (exprs!5495 setElem!37526)))))

(assert (=> d!1776813 (= (forall!14768 (exprs!5495 setElem!37526) lambda!302002) e!3466721)))

(declare-fun b!5623958 () Bool)

(declare-fun e!3466722 () Bool)

(assert (=> b!5623958 (= e!3466721 e!3466722)))

(declare-fun res!2382029 () Bool)

(assert (=> b!5623958 (=> (not res!2382029) (not e!3466722))))

(declare-fun dynLambda!24641 (Int Regex!15611) Bool)

(assert (=> b!5623958 (= res!2382029 (dynLambda!24641 lambda!302002 (h!69456 (exprs!5495 setElem!37526))))))

(declare-fun b!5623959 () Bool)

(assert (=> b!5623959 (= e!3466722 (forall!14768 (t!376422 (exprs!5495 setElem!37526)) lambda!302002))))

(assert (= (and d!1776813 (not res!2382028)) b!5623958))

(assert (= (and b!5623958 res!2382029) b!5623959))

(declare-fun b_lambda!212749 () Bool)

(assert (=> (not b_lambda!212749) (not b!5623958)))

(declare-fun m!6596764 () Bool)

(assert (=> b!5623958 m!6596764))

(declare-fun m!6596766 () Bool)

(assert (=> b!5623959 m!6596766))

(assert (=> d!1776697 d!1776813))

(declare-fun bs!1302038 () Bool)

(declare-fun d!1776815 () Bool)

(assert (= bs!1302038 (and d!1776815 d!1776687)))

(declare-fun lambda!302026 () Int)

(assert (=> bs!1302038 (= lambda!302026 lambda!301996)))

(declare-fun bs!1302039 () Bool)

(assert (= bs!1302039 (and d!1776815 d!1776745)))

(assert (=> bs!1302039 (= lambda!302026 lambda!302013)))

(declare-fun bs!1302040 () Bool)

(assert (= bs!1302040 (and d!1776815 d!1776769)))

(assert (=> bs!1302040 (= lambda!302026 lambda!302016)))

(declare-fun bs!1302041 () Bool)

(assert (= bs!1302041 (and d!1776815 d!1776697)))

(assert (=> bs!1302041 (= lambda!302026 lambda!302002)))

(declare-fun bs!1302042 () Bool)

(assert (= bs!1302042 (and d!1776815 d!1776689)))

(assert (=> bs!1302042 (= lambda!302026 lambda!301999)))

(declare-fun b!5623960 () Bool)

(declare-fun e!3466725 () Regex!15611)

(declare-fun e!3466727 () Regex!15611)

(assert (=> b!5623960 (= e!3466725 e!3466727)))

(declare-fun c!987159 () Bool)

(assert (=> b!5623960 (= c!987159 ((_ is Cons!63008) (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623961 () Bool)

(assert (=> b!5623961 (= e!3466725 (h!69456 (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5623962 () Bool)

(assert (=> b!5623962 (= e!3466727 (Concat!24456 (h!69456 (t!376422 (exprs!5495 (h!69457 zl!343)))) (generalisedConcat!1226 (t!376422 (t!376422 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun b!5623963 () Bool)

(assert (=> b!5623963 (= e!3466727 EmptyExpr!15611)))

(declare-fun b!5623964 () Bool)

(declare-fun e!3466726 () Bool)

(declare-fun lt!2261063 () Regex!15611)

(assert (=> b!5623964 (= e!3466726 (isEmptyExpr!1155 lt!2261063))))

(declare-fun e!3466724 () Bool)

(assert (=> d!1776815 e!3466724))

(declare-fun res!2382031 () Bool)

(assert (=> d!1776815 (=> (not res!2382031) (not e!3466724))))

(assert (=> d!1776815 (= res!2382031 (validRegex!7347 lt!2261063))))

(assert (=> d!1776815 (= lt!2261063 e!3466725)))

(declare-fun c!987158 () Bool)

(declare-fun e!3466728 () Bool)

(assert (=> d!1776815 (= c!987158 e!3466728)))

(declare-fun res!2382030 () Bool)

(assert (=> d!1776815 (=> (not res!2382030) (not e!3466728))))

(assert (=> d!1776815 (= res!2382030 ((_ is Cons!63008) (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> d!1776815 (forall!14768 (t!376422 (exprs!5495 (h!69457 zl!343))) lambda!302026)))

(assert (=> d!1776815 (= (generalisedConcat!1226 (t!376422 (exprs!5495 (h!69457 zl!343)))) lt!2261063)))

(declare-fun b!5623965 () Bool)

(declare-fun e!3466723 () Bool)

(assert (=> b!5623965 (= e!3466726 e!3466723)))

(declare-fun c!987157 () Bool)

(assert (=> b!5623965 (= c!987157 (isEmpty!34839 (tail!11066 (t!376422 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623966 () Bool)

(assert (=> b!5623966 (= e!3466728 (isEmpty!34839 (t!376422 (t!376422 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623967 () Bool)

(assert (=> b!5623967 (= e!3466723 (isConcat!678 lt!2261063))))

(declare-fun b!5623968 () Bool)

(assert (=> b!5623968 (= e!3466723 (= lt!2261063 (head!11971 (t!376422 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5623969 () Bool)

(assert (=> b!5623969 (= e!3466724 e!3466726)))

(declare-fun c!987160 () Bool)

(assert (=> b!5623969 (= c!987160 (isEmpty!34839 (t!376422 (exprs!5495 (h!69457 zl!343)))))))

(assert (= (and d!1776815 res!2382030) b!5623966))

(assert (= (and d!1776815 c!987158) b!5623961))

(assert (= (and d!1776815 (not c!987158)) b!5623960))

(assert (= (and b!5623960 c!987159) b!5623962))

(assert (= (and b!5623960 (not c!987159)) b!5623963))

(assert (= (and d!1776815 res!2382031) b!5623969))

(assert (= (and b!5623969 c!987160) b!5623964))

(assert (= (and b!5623969 (not c!987160)) b!5623965))

(assert (= (and b!5623965 c!987157) b!5623968))

(assert (= (and b!5623965 (not c!987157)) b!5623967))

(declare-fun m!6596768 () Bool)

(assert (=> b!5623968 m!6596768))

(declare-fun m!6596770 () Bool)

(assert (=> d!1776815 m!6596770))

(declare-fun m!6596772 () Bool)

(assert (=> d!1776815 m!6596772))

(declare-fun m!6596774 () Bool)

(assert (=> b!5623962 m!6596774))

(declare-fun m!6596776 () Bool)

(assert (=> b!5623964 m!6596776))

(declare-fun m!6596778 () Bool)

(assert (=> b!5623966 m!6596778))

(declare-fun m!6596780 () Bool)

(assert (=> b!5623965 m!6596780))

(assert (=> b!5623965 m!6596780))

(declare-fun m!6596782 () Bool)

(assert (=> b!5623965 m!6596782))

(assert (=> b!5623969 m!6596292))

(declare-fun m!6596784 () Bool)

(assert (=> b!5623967 m!6596784))

(assert (=> b!5623833 d!1776815))

(assert (=> d!1776677 d!1776661))

(assert (=> d!1776677 d!1776795))

(assert (=> d!1776677 d!1776685))

(declare-fun d!1776817 () Bool)

(assert (=> d!1776817 (= (Exists!2711 lambda!301981) (choose!42598 lambda!301981))))

(declare-fun bs!1302043 () Bool)

(assert (= bs!1302043 d!1776817))

(declare-fun m!6596786 () Bool)

(assert (=> bs!1302043 m!6596786))

(assert (=> d!1776677 d!1776817))

(declare-fun bs!1302044 () Bool)

(declare-fun d!1776819 () Bool)

(assert (= bs!1302044 (and d!1776819 b!5623161)))

(declare-fun lambda!302029 () Int)

(assert (=> bs!1302044 (not (= lambda!302029 lambda!301959))))

(declare-fun bs!1302045 () Bool)

(assert (= bs!1302045 (and d!1776819 d!1776681)))

(assert (=> bs!1302045 (not (= lambda!302029 lambda!301993))))

(declare-fun bs!1302046 () Bool)

(assert (= bs!1302046 (and d!1776819 d!1776793)))

(assert (=> bs!1302046 (= lambda!302029 lambda!302024)))

(assert (=> bs!1302044 (= lambda!302029 lambda!301958)))

(assert (=> bs!1302045 (= lambda!302029 lambda!301992)))

(declare-fun bs!1302047 () Bool)

(assert (= bs!1302047 (and d!1776819 d!1776677)))

(assert (=> bs!1302047 (= lambda!302029 lambda!301981)))

(declare-fun bs!1302048 () Bool)

(assert (= bs!1302048 (and d!1776819 b!5623254)))

(assert (=> bs!1302048 (not (= lambda!302029 lambda!301965))))

(assert (=> bs!1302046 (not (= lambda!302029 lambda!302025))))

(declare-fun bs!1302049 () Bool)

(assert (= bs!1302049 (and d!1776819 b!5623253)))

(assert (=> bs!1302049 (not (= lambda!302029 lambda!301966))))

(assert (=> d!1776819 true))

(assert (=> d!1776819 true))

(assert (=> d!1776819 true))

(assert (=> d!1776819 (= (isDefined!12323 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326)) (Exists!2711 lambda!302029))))

(assert (=> d!1776819 true))

(declare-fun _$89!1734 () Unit!155976)

(assert (=> d!1776819 (= (choose!42599 (regOne!31734 r!7292) (regTwo!31734 r!7292) s!2326) _$89!1734)))

(declare-fun bs!1302050 () Bool)

(assert (= bs!1302050 d!1776819))

(assert (=> bs!1302050 m!6596278))

(assert (=> bs!1302050 m!6596278))

(assert (=> bs!1302050 m!6596280))

(declare-fun m!6596788 () Bool)

(assert (=> bs!1302050 m!6596788))

(assert (=> d!1776677 d!1776819))

(declare-fun b!5623974 () Bool)

(declare-fun res!2382036 () Bool)

(declare-fun e!3466732 () Bool)

(assert (=> b!5623974 (=> res!2382036 e!3466732)))

(assert (=> b!5623974 (= res!2382036 (not (isEmpty!34840 (tail!11064 s!2326))))))

(declare-fun b!5623975 () Bool)

(declare-fun res!2382038 () Bool)

(declare-fun e!3466737 () Bool)

(assert (=> b!5623975 (=> (not res!2382038) (not e!3466737))))

(declare-fun call!423536 () Bool)

(assert (=> b!5623975 (= res!2382038 (not call!423536))))

(declare-fun b!5623977 () Bool)

(declare-fun res!2382039 () Bool)

(declare-fun e!3466731 () Bool)

(assert (=> b!5623977 (=> res!2382039 e!3466731)))

(assert (=> b!5623977 (= res!2382039 e!3466737)))

(declare-fun res!2382042 () Bool)

(assert (=> b!5623977 (=> (not res!2382042) (not e!3466737))))

(declare-fun lt!2261064 () Bool)

(assert (=> b!5623977 (= res!2382042 lt!2261064)))

(declare-fun b!5623978 () Bool)

(declare-fun e!3466736 () Bool)

(assert (=> b!5623978 (= e!3466736 e!3466732)))

(declare-fun res!2382040 () Bool)

(assert (=> b!5623978 (=> res!2382040 e!3466732)))

(assert (=> b!5623978 (= res!2382040 call!423536)))

(declare-fun b!5623979 () Bool)

(declare-fun e!3466734 () Bool)

(assert (=> b!5623979 (= e!3466734 (nullable!5643 (regTwo!31734 r!7292)))))

(declare-fun b!5623980 () Bool)

(assert (=> b!5623980 (= e!3466731 e!3466736)))

(declare-fun res!2382043 () Bool)

(assert (=> b!5623980 (=> (not res!2382043) (not e!3466736))))

(assert (=> b!5623980 (= res!2382043 (not lt!2261064))))

(declare-fun b!5623981 () Bool)

(declare-fun e!3466735 () Bool)

(assert (=> b!5623981 (= e!3466735 (= lt!2261064 call!423536))))

(declare-fun b!5623982 () Bool)

(declare-fun res!2382041 () Bool)

(assert (=> b!5623982 (=> res!2382041 e!3466731)))

(assert (=> b!5623982 (= res!2382041 (not ((_ is ElementMatch!15611) (regTwo!31734 r!7292))))))

(declare-fun e!3466733 () Bool)

(assert (=> b!5623982 (= e!3466733 e!3466731)))

(declare-fun b!5623983 () Bool)

(declare-fun res!2382037 () Bool)

(assert (=> b!5623983 (=> (not res!2382037) (not e!3466737))))

(assert (=> b!5623983 (= res!2382037 (isEmpty!34840 (tail!11064 s!2326)))))

(declare-fun b!5623984 () Bool)

(assert (=> b!5623984 (= e!3466732 (not (= (head!11969 s!2326) (c!986945 (regTwo!31734 r!7292)))))))

(declare-fun d!1776821 () Bool)

(assert (=> d!1776821 e!3466735))

(declare-fun c!987162 () Bool)

(assert (=> d!1776821 (= c!987162 ((_ is EmptyExpr!15611) (regTwo!31734 r!7292)))))

(assert (=> d!1776821 (= lt!2261064 e!3466734)))

(declare-fun c!987161 () Bool)

(assert (=> d!1776821 (= c!987161 (isEmpty!34840 s!2326))))

(assert (=> d!1776821 (validRegex!7347 (regTwo!31734 r!7292))))

(assert (=> d!1776821 (= (matchR!7796 (regTwo!31734 r!7292) s!2326) lt!2261064)))

(declare-fun b!5623976 () Bool)

(assert (=> b!5623976 (= e!3466735 e!3466733)))

(declare-fun c!987163 () Bool)

(assert (=> b!5623976 (= c!987163 ((_ is EmptyLang!15611) (regTwo!31734 r!7292)))))

(declare-fun bm!423531 () Bool)

(assert (=> bm!423531 (= call!423536 (isEmpty!34840 s!2326))))

(declare-fun b!5623985 () Bool)

(assert (=> b!5623985 (= e!3466734 (matchR!7796 (derivativeStep!4448 (regTwo!31734 r!7292) (head!11969 s!2326)) (tail!11064 s!2326)))))

(declare-fun b!5623986 () Bool)

(assert (=> b!5623986 (= e!3466733 (not lt!2261064))))

(declare-fun b!5623987 () Bool)

(assert (=> b!5623987 (= e!3466737 (= (head!11969 s!2326) (c!986945 (regTwo!31734 r!7292))))))

(assert (= (and d!1776821 c!987161) b!5623979))

(assert (= (and d!1776821 (not c!987161)) b!5623985))

(assert (= (and d!1776821 c!987162) b!5623981))

(assert (= (and d!1776821 (not c!987162)) b!5623976))

(assert (= (and b!5623976 c!987163) b!5623986))

(assert (= (and b!5623976 (not c!987163)) b!5623982))

(assert (= (and b!5623982 (not res!2382041)) b!5623977))

(assert (= (and b!5623977 res!2382042) b!5623975))

(assert (= (and b!5623975 res!2382038) b!5623983))

(assert (= (and b!5623983 res!2382037) b!5623987))

(assert (= (and b!5623977 (not res!2382039)) b!5623980))

(assert (= (and b!5623980 res!2382043) b!5623978))

(assert (= (and b!5623978 (not res!2382040)) b!5623974))

(assert (= (and b!5623974 (not res!2382036)) b!5623984))

(assert (= (or b!5623981 b!5623975 b!5623978) bm!423531))

(declare-fun m!6596790 () Bool)

(assert (=> b!5623979 m!6596790))

(assert (=> bm!423531 m!6596336))

(assert (=> b!5623987 m!6596350))

(assert (=> b!5623974 m!6596352))

(assert (=> b!5623974 m!6596352))

(assert (=> b!5623974 m!6596354))

(assert (=> b!5623984 m!6596350))

(assert (=> b!5623983 m!6596352))

(assert (=> b!5623983 m!6596352))

(assert (=> b!5623983 m!6596354))

(assert (=> b!5623985 m!6596350))

(assert (=> b!5623985 m!6596350))

(declare-fun m!6596792 () Bool)

(assert (=> b!5623985 m!6596792))

(assert (=> b!5623985 m!6596352))

(assert (=> b!5623985 m!6596792))

(assert (=> b!5623985 m!6596352))

(declare-fun m!6596794 () Bool)

(assert (=> b!5623985 m!6596794))

(assert (=> d!1776821 m!6596336))

(declare-fun m!6596796 () Bool)

(assert (=> d!1776821 m!6596796))

(assert (=> b!5623361 d!1776821))

(assert (=> b!5623526 d!1776769))

(declare-fun bs!1302051 () Bool)

(declare-fun d!1776823 () Bool)

(assert (= bs!1302051 (and d!1776823 d!1776687)))

(declare-fun lambda!302030 () Int)

(assert (=> bs!1302051 (= lambda!302030 lambda!301996)))

(declare-fun bs!1302052 () Bool)

(assert (= bs!1302052 (and d!1776823 d!1776745)))

(assert (=> bs!1302052 (= lambda!302030 lambda!302013)))

(declare-fun bs!1302053 () Bool)

(assert (= bs!1302053 (and d!1776823 d!1776815)))

(assert (=> bs!1302053 (= lambda!302030 lambda!302026)))

(declare-fun bs!1302054 () Bool)

(assert (= bs!1302054 (and d!1776823 d!1776769)))

(assert (=> bs!1302054 (= lambda!302030 lambda!302016)))

(declare-fun bs!1302055 () Bool)

(assert (= bs!1302055 (and d!1776823 d!1776697)))

(assert (=> bs!1302055 (= lambda!302030 lambda!302002)))

(declare-fun bs!1302056 () Bool)

(assert (= bs!1302056 (and d!1776823 d!1776689)))

(assert (=> bs!1302056 (= lambda!302030 lambda!301999)))

(declare-fun lt!2261065 () List!63132)

(assert (=> d!1776823 (forall!14768 lt!2261065 lambda!302030)))

(declare-fun e!3466738 () List!63132)

(assert (=> d!1776823 (= lt!2261065 e!3466738)))

(declare-fun c!987164 () Bool)

(assert (=> d!1776823 (= c!987164 ((_ is Cons!63009) (t!376423 zl!343)))))

(assert (=> d!1776823 (= (unfocusZipperList!1039 (t!376423 zl!343)) lt!2261065)))

(declare-fun b!5623988 () Bool)

(assert (=> b!5623988 (= e!3466738 (Cons!63008 (generalisedConcat!1226 (exprs!5495 (h!69457 (t!376423 zl!343)))) (unfocusZipperList!1039 (t!376423 (t!376423 zl!343)))))))

(declare-fun b!5623989 () Bool)

(assert (=> b!5623989 (= e!3466738 Nil!63008)))

(assert (= (and d!1776823 c!987164) b!5623988))

(assert (= (and d!1776823 (not c!987164)) b!5623989))

(declare-fun m!6596798 () Bool)

(assert (=> d!1776823 m!6596798))

(declare-fun m!6596800 () Bool)

(assert (=> b!5623988 m!6596800))

(declare-fun m!6596802 () Bool)

(assert (=> b!5623988 m!6596802))

(assert (=> b!5623526 d!1776823))

(declare-fun d!1776825 () Bool)

(assert (=> d!1776825 (= ($colon$colon!1663 (exprs!5495 lt!2260973) (ite (or c!987072 c!987074) (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69456 (exprs!5495 (h!69457 zl!343))))) (Cons!63008 (ite (or c!987072 c!987074) (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69456 (exprs!5495 (h!69457 zl!343)))) (exprs!5495 lt!2260973)))))

(assert (=> bm!423461 d!1776825))

(assert (=> d!1776757 d!1776801))

(declare-fun d!1776827 () Bool)

(declare-fun res!2382045 () Bool)

(declare-fun e!3466742 () Bool)

(assert (=> d!1776827 (=> res!2382045 e!3466742)))

(assert (=> d!1776827 (= res!2382045 ((_ is ElementMatch!15611) (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))

(assert (=> d!1776827 (= (validRegex!7347 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))) e!3466742)))

(declare-fun b!5623990 () Bool)

(declare-fun e!3466744 () Bool)

(declare-fun e!3466741 () Bool)

(assert (=> b!5623990 (= e!3466744 e!3466741)))

(declare-fun res!2382047 () Bool)

(assert (=> b!5623990 (= res!2382047 (not (nullable!5643 (reg!15940 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))))

(assert (=> b!5623990 (=> (not res!2382047) (not e!3466741))))

(declare-fun b!5623991 () Bool)

(declare-fun e!3466743 () Bool)

(assert (=> b!5623991 (= e!3466744 e!3466743)))

(declare-fun c!987165 () Bool)

(assert (=> b!5623991 (= c!987165 ((_ is Union!15611) (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))

(declare-fun bm!423532 () Bool)

(declare-fun c!987166 () Bool)

(declare-fun call!423539 () Bool)

(assert (=> bm!423532 (= call!423539 (validRegex!7347 (ite c!987166 (reg!15940 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))) (ite c!987165 (regOne!31735 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))) (regOne!31734 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292)))))))))

(declare-fun b!5623992 () Bool)

(assert (=> b!5623992 (= e!3466741 call!423539)))

(declare-fun b!5623993 () Bool)

(declare-fun e!3466745 () Bool)

(declare-fun e!3466740 () Bool)

(assert (=> b!5623993 (= e!3466745 e!3466740)))

(declare-fun res!2382044 () Bool)

(assert (=> b!5623993 (=> (not res!2382044) (not e!3466740))))

(declare-fun call!423538 () Bool)

(assert (=> b!5623993 (= res!2382044 call!423538)))

(declare-fun bm!423533 () Bool)

(assert (=> bm!423533 (= call!423538 call!423539)))

(declare-fun b!5623994 () Bool)

(declare-fun call!423537 () Bool)

(assert (=> b!5623994 (= e!3466740 call!423537)))

(declare-fun b!5623995 () Bool)

(declare-fun res!2382046 () Bool)

(declare-fun e!3466739 () Bool)

(assert (=> b!5623995 (=> (not res!2382046) (not e!3466739))))

(assert (=> b!5623995 (= res!2382046 call!423538)))

(assert (=> b!5623995 (= e!3466743 e!3466739)))

(declare-fun b!5623996 () Bool)

(declare-fun res!2382048 () Bool)

(assert (=> b!5623996 (=> res!2382048 e!3466745)))

(assert (=> b!5623996 (= res!2382048 (not ((_ is Concat!24456) (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292)))))))

(assert (=> b!5623996 (= e!3466743 e!3466745)))

(declare-fun b!5623997 () Bool)

(assert (=> b!5623997 (= e!3466739 call!423537)))

(declare-fun b!5623998 () Bool)

(assert (=> b!5623998 (= e!3466742 e!3466744)))

(assert (=> b!5623998 (= c!987166 ((_ is Star!15611) (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))

(declare-fun bm!423534 () Bool)

(assert (=> bm!423534 (= call!423537 (validRegex!7347 (ite c!987165 (regTwo!31735 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))) (regTwo!31734 (ite c!987092 (regTwo!31735 r!7292) (regTwo!31734 r!7292))))))))

(assert (= (and d!1776827 (not res!2382045)) b!5623998))

(assert (= (and b!5623998 c!987166) b!5623990))

(assert (= (and b!5623998 (not c!987166)) b!5623991))

(assert (= (and b!5623990 res!2382047) b!5623992))

(assert (= (and b!5623991 c!987165) b!5623995))

(assert (= (and b!5623991 (not c!987165)) b!5623996))

(assert (= (and b!5623995 res!2382046) b!5623997))

(assert (= (and b!5623996 (not res!2382048)) b!5623993))

(assert (= (and b!5623993 res!2382044) b!5623994))

(assert (= (or b!5623997 b!5623994) bm!423534))

(assert (= (or b!5623995 b!5623993) bm!423533))

(assert (= (or b!5623992 bm!423533) bm!423532))

(declare-fun m!6596804 () Bool)

(assert (=> b!5623990 m!6596804))

(declare-fun m!6596806 () Bool)

(assert (=> bm!423532 m!6596806))

(declare-fun m!6596808 () Bool)

(assert (=> bm!423534 m!6596808))

(assert (=> bm!423481 d!1776827))

(declare-fun call!423542 () (InoxSet Context!9990))

(declare-fun call!423540 () List!63132)

(declare-fun bm!423535 () Bool)

(declare-fun c!987169 () Bool)

(assert (=> bm!423535 (= call!423542 (derivationStepZipperDown!953 (ite c!987169 (regTwo!31735 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (regOne!31734 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))))) (ite c!987169 (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492)) (Context!9991 call!423540)) (h!69458 s!2326)))))

(declare-fun b!5623999 () Bool)

(declare-fun e!3466750 () (InoxSet Context!9990))

(declare-fun call!423545 () (InoxSet Context!9990))

(assert (=> b!5623999 (= e!3466750 ((_ map or) call!423542 call!423545))))

(declare-fun bm!423536 () Bool)

(declare-fun call!423543 () (InoxSet Context!9990))

(assert (=> bm!423536 (= call!423545 call!423543)))

(declare-fun e!3466746 () Bool)

(declare-fun b!5624000 () Bool)

(assert (=> b!5624000 (= e!3466746 (nullable!5643 (regOne!31734 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))))))))

(declare-fun bm!423537 () Bool)

(declare-fun call!423541 () List!63132)

(assert (=> bm!423537 (= call!423541 call!423540)))

(declare-fun b!5624002 () Bool)

(declare-fun e!3466748 () (InoxSet Context!9990))

(assert (=> b!5624002 (= e!3466748 (store ((as const (Array Context!9990 Bool)) false) (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492)) true))))

(declare-fun c!987171 () Bool)

(declare-fun b!5624003 () Bool)

(assert (=> b!5624003 (= c!987171 ((_ is Star!15611) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))))))

(declare-fun e!3466751 () (InoxSet Context!9990))

(declare-fun e!3466749 () (InoxSet Context!9990))

(assert (=> b!5624003 (= e!3466751 e!3466749)))

(declare-fun b!5624004 () Bool)

(assert (=> b!5624004 (= e!3466749 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987170 () Bool)

(declare-fun bm!423538 () Bool)

(declare-fun c!987168 () Bool)

(assert (=> bm!423538 (= call!423540 ($colon$colon!1663 (exprs!5495 (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492))) (ite (or c!987168 c!987170) (regTwo!31734 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))))))))

(declare-fun b!5624005 () Bool)

(declare-fun call!423544 () (InoxSet Context!9990))

(assert (=> b!5624005 (= e!3466749 call!423544)))

(declare-fun b!5624006 () Bool)

(assert (=> b!5624006 (= e!3466751 call!423544)))

(declare-fun b!5624007 () Bool)

(assert (=> b!5624007 (= e!3466750 e!3466751)))

(assert (=> b!5624007 (= c!987170 ((_ is Concat!24456) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))))))

(declare-fun c!987167 () Bool)

(declare-fun d!1776829 () Bool)

(assert (=> d!1776829 (= c!987167 (and ((_ is ElementMatch!15611) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (= (c!986945 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (h!69458 s!2326))))))

(assert (=> d!1776829 (= (derivationStepZipperDown!953 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))) (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492)) (h!69458 s!2326)) e!3466748)))

(declare-fun b!5624001 () Bool)

(declare-fun e!3466747 () (InoxSet Context!9990))

(assert (=> b!5624001 (= e!3466748 e!3466747)))

(assert (=> b!5624001 (= c!987169 ((_ is Union!15611) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))))))

(declare-fun bm!423539 () Bool)

(assert (=> bm!423539 (= call!423544 call!423545)))

(declare-fun b!5624008 () Bool)

(assert (=> b!5624008 (= e!3466747 ((_ map or) call!423543 call!423542))))

(declare-fun b!5624009 () Bool)

(assert (=> b!5624009 (= c!987168 e!3466746)))

(declare-fun res!2382049 () Bool)

(assert (=> b!5624009 (=> (not res!2382049) (not e!3466746))))

(assert (=> b!5624009 (= res!2382049 ((_ is Concat!24456) (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))))))

(assert (=> b!5624009 (= e!3466747 e!3466750)))

(declare-fun bm!423540 () Bool)

(assert (=> bm!423540 (= call!423543 (derivationStepZipperDown!953 (ite c!987169 (regOne!31735 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (ite c!987168 (regTwo!31734 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (ite c!987170 (regOne!31734 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292))))))) (reg!15940 (ite c!987096 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (ite c!987095 (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (ite c!987097 (regOne!31734 (regOne!31734 (regOne!31734 r!7292))) (reg!15940 (regOne!31734 (regOne!31734 r!7292)))))))))) (ite (or c!987169 c!987168) (ite (or c!987096 c!987095) (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423492)) (Context!9991 call!423541)) (h!69458 s!2326)))))

(assert (= (and d!1776829 c!987167) b!5624002))

(assert (= (and d!1776829 (not c!987167)) b!5624001))

(assert (= (and b!5624001 c!987169) b!5624008))

(assert (= (and b!5624001 (not c!987169)) b!5624009))

(assert (= (and b!5624009 res!2382049) b!5624000))

(assert (= (and b!5624009 c!987168) b!5623999))

(assert (= (and b!5624009 (not c!987168)) b!5624007))

(assert (= (and b!5624007 c!987170) b!5624006))

(assert (= (and b!5624007 (not c!987170)) b!5624003))

(assert (= (and b!5624003 c!987171) b!5624005))

(assert (= (and b!5624003 (not c!987171)) b!5624004))

(assert (= (or b!5624006 b!5624005) bm!423537))

(assert (= (or b!5624006 b!5624005) bm!423539))

(assert (= (or b!5623999 bm!423537) bm!423538))

(assert (= (or b!5623999 bm!423539) bm!423536))

(assert (= (or b!5624008 b!5623999) bm!423535))

(assert (= (or b!5624008 bm!423536) bm!423540))

(declare-fun m!6596810 () Bool)

(assert (=> b!5624000 m!6596810))

(declare-fun m!6596812 () Bool)

(assert (=> bm!423540 m!6596812))

(declare-fun m!6596814 () Bool)

(assert (=> bm!423535 m!6596814))

(declare-fun m!6596816 () Bool)

(assert (=> b!5624002 m!6596816))

(declare-fun m!6596818 () Bool)

(assert (=> bm!423538 m!6596818))

(assert (=> bm!423491 d!1776829))

(assert (=> b!5623637 d!1776719))

(declare-fun d!1776831 () Bool)

(declare-fun res!2382050 () Bool)

(declare-fun e!3466752 () Bool)

(assert (=> d!1776831 (=> res!2382050 e!3466752)))

(assert (=> d!1776831 (= res!2382050 ((_ is Nil!63008) (exprs!5495 (h!69457 zl!343))))))

(assert (=> d!1776831 (= (forall!14768 (exprs!5495 (h!69457 zl!343)) lambda!302013) e!3466752)))

(declare-fun b!5624010 () Bool)

(declare-fun e!3466753 () Bool)

(assert (=> b!5624010 (= e!3466752 e!3466753)))

(declare-fun res!2382051 () Bool)

(assert (=> b!5624010 (=> (not res!2382051) (not e!3466753))))

(assert (=> b!5624010 (= res!2382051 (dynLambda!24641 lambda!302013 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5624011 () Bool)

(assert (=> b!5624011 (= e!3466753 (forall!14768 (t!376422 (exprs!5495 (h!69457 zl!343))) lambda!302013))))

(assert (= (and d!1776831 (not res!2382050)) b!5624010))

(assert (= (and b!5624010 res!2382051) b!5624011))

(declare-fun b_lambda!212751 () Bool)

(assert (=> (not b_lambda!212751) (not b!5624010)))

(declare-fun m!6596820 () Bool)

(assert (=> b!5624010 m!6596820))

(declare-fun m!6596822 () Bool)

(assert (=> b!5624011 m!6596822))

(assert (=> d!1776745 d!1776831))

(declare-fun d!1776833 () Bool)

(assert (=> d!1776833 (= (isEmpty!34840 s!2326) ((_ is Nil!63010) s!2326))))

(assert (=> bm!423423 d!1776833))

(assert (=> d!1776655 d!1776833))

(assert (=> d!1776655 d!1776741))

(assert (=> b!5623736 d!1776767))

(declare-fun d!1776835 () Bool)

(assert (=> d!1776835 (= ($colon$colon!1663 (exprs!5495 lt!2260973) (ite (or c!987100 c!987102) (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (regTwo!31734 (regOne!31734 r!7292)))) (Cons!63008 (ite (or c!987100 c!987102) (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (regTwo!31734 (regOne!31734 r!7292))) (exprs!5495 lt!2260973)))))

(assert (=> bm!423495 d!1776835))

(declare-fun d!1776837 () Bool)

(assert (=> d!1776837 (= (Exists!2711 (ite c!986961 lambda!301965 lambda!301966)) (choose!42598 (ite c!986961 lambda!301965 lambda!301966)))))

(declare-fun bs!1302057 () Bool)

(assert (= bs!1302057 d!1776837))

(declare-fun m!6596824 () Bool)

(assert (=> bs!1302057 m!6596824))

(assert (=> bm!423420 d!1776837))

(declare-fun bs!1302058 () Bool)

(declare-fun d!1776839 () Bool)

(assert (= bs!1302058 (and d!1776839 d!1776787)))

(declare-fun lambda!302031 () Int)

(assert (=> bs!1302058 (= lambda!302031 lambda!302019)))

(assert (=> d!1776839 (= (nullableZipper!1596 lt!2260967) (exists!2183 lt!2260967 lambda!302031))))

(declare-fun bs!1302059 () Bool)

(assert (= bs!1302059 d!1776839))

(declare-fun m!6596826 () Bool)

(assert (=> bs!1302059 m!6596826))

(assert (=> b!5623765 d!1776839))

(assert (=> bs!1302025 d!1776737))

(assert (=> b!5623298 d!1776803))

(assert (=> b!5623298 d!1776805))

(declare-fun bs!1302060 () Bool)

(declare-fun d!1776841 () Bool)

(assert (= bs!1302060 (and d!1776841 d!1776787)))

(declare-fun lambda!302032 () Int)

(assert (=> bs!1302060 (= lambda!302032 lambda!302019)))

(declare-fun bs!1302061 () Bool)

(assert (= bs!1302061 (and d!1776841 d!1776839)))

(assert (=> bs!1302061 (= lambda!302032 lambda!302031)))

(assert (=> d!1776841 (= (nullableZipper!1596 ((_ map or) lt!2260968 lt!2260967)) (exists!2183 ((_ map or) lt!2260968 lt!2260967) lambda!302032))))

(declare-fun bs!1302062 () Bool)

(assert (= bs!1302062 d!1776841))

(declare-fun m!6596828 () Bool)

(assert (=> bs!1302062 m!6596828))

(assert (=> b!5623758 d!1776841))

(declare-fun d!1776843 () Bool)

(assert (=> d!1776843 (= (nullable!5643 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))) (nullableFct!1741 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun bs!1302063 () Bool)

(assert (= bs!1302063 d!1776843))

(declare-fun m!6596830 () Bool)

(assert (=> bs!1302063 m!6596830))

(assert (=> b!5623626 d!1776843))

(assert (=> d!1776751 d!1776759))

(assert (=> d!1776751 d!1776757))

(declare-fun e!3466756 () Bool)

(declare-fun d!1776845 () Bool)

(assert (=> d!1776845 (= (matchZipper!1749 ((_ map or) lt!2260968 lt!2260967) (t!376424 s!2326)) e!3466756)))

(declare-fun res!2382054 () Bool)

(assert (=> d!1776845 (=> res!2382054 e!3466756)))

(assert (=> d!1776845 (= res!2382054 (matchZipper!1749 lt!2260968 (t!376424 s!2326)))))

(assert (=> d!1776845 true))

(declare-fun _$48!1238 () Unit!155976)

(assert (=> d!1776845 (= (choose!42607 lt!2260968 lt!2260967 (t!376424 s!2326)) _$48!1238)))

(declare-fun b!5624014 () Bool)

(assert (=> b!5624014 (= e!3466756 (matchZipper!1749 lt!2260967 (t!376424 s!2326)))))

(assert (= (and d!1776845 (not res!2382054)) b!5624014))

(assert (=> d!1776845 m!6596254))

(assert (=> d!1776845 m!6596252))

(assert (=> b!5624014 m!6596246))

(assert (=> d!1776751 d!1776845))

(declare-fun d!1776847 () Bool)

(assert (=> d!1776847 (= (isEmpty!34839 (exprs!5495 (h!69457 zl!343))) ((_ is Nil!63008) (exprs!5495 (h!69457 zl!343))))))

(assert (=> b!5623840 d!1776847))

(declare-fun d!1776849 () Bool)

(assert (=> d!1776849 (= (nullable!5643 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))) (nullableFct!1741 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))))

(declare-fun bs!1302064 () Bool)

(assert (= bs!1302064 d!1776849))

(declare-fun m!6596832 () Bool)

(assert (=> bs!1302064 m!6596832))

(assert (=> b!5623702 d!1776849))

(declare-fun d!1776851 () Bool)

(assert (=> d!1776851 (= (nullable!5643 r!7292) (nullableFct!1741 r!7292))))

(declare-fun bs!1302065 () Bool)

(assert (= bs!1302065 d!1776851))

(declare-fun m!6596834 () Bool)

(assert (=> bs!1302065 m!6596834))

(assert (=> b!5623294 d!1776851))

(declare-fun d!1776853 () Bool)

(assert (=> d!1776853 (= (isEmpty!34839 (tail!11066 (unfocusZipperList!1039 zl!343))) ((_ is Nil!63008) (tail!11066 (unfocusZipperList!1039 zl!343))))))

(assert (=> b!5623518 d!1776853))

(declare-fun d!1776855 () Bool)

(assert (=> d!1776855 (= (tail!11066 (unfocusZipperList!1039 zl!343)) (t!376422 (unfocusZipperList!1039 zl!343)))))

(assert (=> b!5623518 d!1776855))

(declare-fun d!1776857 () Bool)

(assert (=> d!1776857 (= (isUnion!594 lt!2261023) ((_ is Union!15611) lt!2261023))))

(assert (=> b!5623516 d!1776857))

(declare-fun d!1776859 () Bool)

(assert (=> d!1776859 (= (isConcat!678 lt!2261062) ((_ is Concat!24456) lt!2261062))))

(assert (=> b!5623838 d!1776859))

(declare-fun d!1776861 () Bool)

(assert (=> d!1776861 (= (isEmpty!34839 (tail!11066 (exprs!5495 (h!69457 zl!343)))) ((_ is Nil!63008) (tail!11066 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> b!5623836 d!1776861))

(declare-fun d!1776863 () Bool)

(assert (=> d!1776863 (= (tail!11066 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343))))))

(assert (=> b!5623836 d!1776863))

(declare-fun d!1776865 () Bool)

(declare-fun res!2382055 () Bool)

(declare-fun e!3466757 () Bool)

(assert (=> d!1776865 (=> res!2382055 e!3466757)))

(assert (=> d!1776865 (= res!2382055 ((_ is Nil!63008) lt!2261029))))

(assert (=> d!1776865 (= (forall!14768 lt!2261029 lambda!301999) e!3466757)))

(declare-fun b!5624015 () Bool)

(declare-fun e!3466758 () Bool)

(assert (=> b!5624015 (= e!3466757 e!3466758)))

(declare-fun res!2382056 () Bool)

(assert (=> b!5624015 (=> (not res!2382056) (not e!3466758))))

(assert (=> b!5624015 (= res!2382056 (dynLambda!24641 lambda!301999 (h!69456 lt!2261029)))))

(declare-fun b!5624016 () Bool)

(assert (=> b!5624016 (= e!3466758 (forall!14768 (t!376422 lt!2261029) lambda!301999))))

(assert (= (and d!1776865 (not res!2382055)) b!5624015))

(assert (= (and b!5624015 res!2382056) b!5624016))

(declare-fun b_lambda!212753 () Bool)

(assert (=> (not b_lambda!212753) (not b!5624015)))

(declare-fun m!6596836 () Bool)

(assert (=> b!5624015 m!6596836))

(declare-fun m!6596838 () Bool)

(assert (=> b!5624016 m!6596838))

(assert (=> d!1776689 d!1776865))

(declare-fun bs!1302066 () Bool)

(declare-fun d!1776867 () Bool)

(assert (= bs!1302066 (and d!1776867 d!1776823)))

(declare-fun lambda!302033 () Int)

(assert (=> bs!1302066 (= lambda!302033 lambda!302030)))

(declare-fun bs!1302067 () Bool)

(assert (= bs!1302067 (and d!1776867 d!1776687)))

(assert (=> bs!1302067 (= lambda!302033 lambda!301996)))

(declare-fun bs!1302068 () Bool)

(assert (= bs!1302068 (and d!1776867 d!1776745)))

(assert (=> bs!1302068 (= lambda!302033 lambda!302013)))

(declare-fun bs!1302069 () Bool)

(assert (= bs!1302069 (and d!1776867 d!1776815)))

(assert (=> bs!1302069 (= lambda!302033 lambda!302026)))

(declare-fun bs!1302070 () Bool)

(assert (= bs!1302070 (and d!1776867 d!1776769)))

(assert (=> bs!1302070 (= lambda!302033 lambda!302016)))

(declare-fun bs!1302071 () Bool)

(assert (= bs!1302071 (and d!1776867 d!1776697)))

(assert (=> bs!1302071 (= lambda!302033 lambda!302002)))

(declare-fun bs!1302072 () Bool)

(assert (= bs!1302072 (and d!1776867 d!1776689)))

(assert (=> bs!1302072 (= lambda!302033 lambda!301999)))

(assert (=> d!1776867 (= (inv!82274 setElem!37532) (forall!14768 (exprs!5495 setElem!37532) lambda!302033))))

(declare-fun bs!1302073 () Bool)

(assert (= bs!1302073 d!1776867))

(declare-fun m!6596840 () Bool)

(assert (=> bs!1302073 m!6596840))

(assert (=> setNonEmpty!37532 d!1776867))

(declare-fun bs!1302074 () Bool)

(declare-fun d!1776869 () Bool)

(assert (= bs!1302074 (and d!1776869 d!1776823)))

(declare-fun lambda!302034 () Int)

(assert (=> bs!1302074 (= lambda!302034 lambda!302030)))

(declare-fun bs!1302075 () Bool)

(assert (= bs!1302075 (and d!1776869 d!1776687)))

(assert (=> bs!1302075 (= lambda!302034 lambda!301996)))

(declare-fun bs!1302076 () Bool)

(assert (= bs!1302076 (and d!1776869 d!1776867)))

(assert (=> bs!1302076 (= lambda!302034 lambda!302033)))

(declare-fun bs!1302077 () Bool)

(assert (= bs!1302077 (and d!1776869 d!1776745)))

(assert (=> bs!1302077 (= lambda!302034 lambda!302013)))

(declare-fun bs!1302078 () Bool)

(assert (= bs!1302078 (and d!1776869 d!1776815)))

(assert (=> bs!1302078 (= lambda!302034 lambda!302026)))

(declare-fun bs!1302079 () Bool)

(assert (= bs!1302079 (and d!1776869 d!1776769)))

(assert (=> bs!1302079 (= lambda!302034 lambda!302016)))

(declare-fun bs!1302080 () Bool)

(assert (= bs!1302080 (and d!1776869 d!1776697)))

(assert (=> bs!1302080 (= lambda!302034 lambda!302002)))

(declare-fun bs!1302081 () Bool)

(assert (= bs!1302081 (and d!1776869 d!1776689)))

(assert (=> bs!1302081 (= lambda!302034 lambda!301999)))

(declare-fun b!5624017 () Bool)

(declare-fun e!3466762 () Regex!15611)

(assert (=> b!5624017 (= e!3466762 EmptyLang!15611)))

(declare-fun b!5624018 () Bool)

(declare-fun e!3466764 () Regex!15611)

(assert (=> b!5624018 (= e!3466764 (h!69456 (t!376422 (unfocusZipperList!1039 zl!343))))))

(declare-fun b!5624019 () Bool)

(assert (=> b!5624019 (= e!3466762 (Union!15611 (h!69456 (t!376422 (unfocusZipperList!1039 zl!343))) (generalisedUnion!1474 (t!376422 (t!376422 (unfocusZipperList!1039 zl!343))))))))

(declare-fun b!5624020 () Bool)

(declare-fun e!3466759 () Bool)

(declare-fun lt!2261066 () Regex!15611)

(assert (=> b!5624020 (= e!3466759 (isEmptyLang!1164 lt!2261066))))

(declare-fun b!5624021 () Bool)

(declare-fun e!3466760 () Bool)

(assert (=> b!5624021 (= e!3466760 (isUnion!594 lt!2261066))))

(declare-fun b!5624022 () Bool)

(declare-fun e!3466763 () Bool)

(assert (=> b!5624022 (= e!3466763 (isEmpty!34839 (t!376422 (t!376422 (unfocusZipperList!1039 zl!343)))))))

(declare-fun e!3466761 () Bool)

(assert (=> d!1776869 e!3466761))

(declare-fun res!2382058 () Bool)

(assert (=> d!1776869 (=> (not res!2382058) (not e!3466761))))

(assert (=> d!1776869 (= res!2382058 (validRegex!7347 lt!2261066))))

(assert (=> d!1776869 (= lt!2261066 e!3466764)))

(declare-fun c!987175 () Bool)

(assert (=> d!1776869 (= c!987175 e!3466763)))

(declare-fun res!2382057 () Bool)

(assert (=> d!1776869 (=> (not res!2382057) (not e!3466763))))

(assert (=> d!1776869 (= res!2382057 ((_ is Cons!63008) (t!376422 (unfocusZipperList!1039 zl!343))))))

(assert (=> d!1776869 (forall!14768 (t!376422 (unfocusZipperList!1039 zl!343)) lambda!302034)))

(assert (=> d!1776869 (= (generalisedUnion!1474 (t!376422 (unfocusZipperList!1039 zl!343))) lt!2261066)))

(declare-fun b!5624023 () Bool)

(assert (=> b!5624023 (= e!3466759 e!3466760)))

(declare-fun c!987173 () Bool)

(assert (=> b!5624023 (= c!987173 (isEmpty!34839 (tail!11066 (t!376422 (unfocusZipperList!1039 zl!343)))))))

(declare-fun b!5624024 () Bool)

(assert (=> b!5624024 (= e!3466760 (= lt!2261066 (head!11971 (t!376422 (unfocusZipperList!1039 zl!343)))))))

(declare-fun b!5624025 () Bool)

(assert (=> b!5624025 (= e!3466764 e!3466762)))

(declare-fun c!987172 () Bool)

(assert (=> b!5624025 (= c!987172 ((_ is Cons!63008) (t!376422 (unfocusZipperList!1039 zl!343))))))

(declare-fun b!5624026 () Bool)

(assert (=> b!5624026 (= e!3466761 e!3466759)))

(declare-fun c!987174 () Bool)

(assert (=> b!5624026 (= c!987174 (isEmpty!34839 (t!376422 (unfocusZipperList!1039 zl!343))))))

(assert (= (and d!1776869 res!2382057) b!5624022))

(assert (= (and d!1776869 c!987175) b!5624018))

(assert (= (and d!1776869 (not c!987175)) b!5624025))

(assert (= (and b!5624025 c!987172) b!5624019))

(assert (= (and b!5624025 (not c!987172)) b!5624017))

(assert (= (and d!1776869 res!2382058) b!5624026))

(assert (= (and b!5624026 c!987174) b!5624020))

(assert (= (and b!5624026 (not c!987174)) b!5624023))

(assert (= (and b!5624023 c!987173) b!5624024))

(assert (= (and b!5624023 (not c!987173)) b!5624021))

(declare-fun m!6596842 () Bool)

(assert (=> b!5624020 m!6596842))

(declare-fun m!6596844 () Bool)

(assert (=> b!5624022 m!6596844))

(declare-fun m!6596846 () Bool)

(assert (=> b!5624023 m!6596846))

(assert (=> b!5624023 m!6596846))

(declare-fun m!6596848 () Bool)

(assert (=> b!5624023 m!6596848))

(assert (=> b!5624026 m!6596450))

(declare-fun m!6596850 () Bool)

(assert (=> d!1776869 m!6596850))

(declare-fun m!6596852 () Bool)

(assert (=> d!1776869 m!6596852))

(declare-fun m!6596854 () Bool)

(assert (=> b!5624021 m!6596854))

(declare-fun m!6596856 () Bool)

(assert (=> b!5624024 m!6596856))

(declare-fun m!6596858 () Bool)

(assert (=> b!5624019 m!6596858))

(assert (=> b!5623514 d!1776869))

(declare-fun d!1776871 () Bool)

(assert (=> d!1776871 (= (nullable!5643 (h!69456 (exprs!5495 lt!2260973))) (nullableFct!1741 (h!69456 (exprs!5495 lt!2260973))))))

(declare-fun bs!1302082 () Bool)

(assert (= bs!1302082 d!1776871))

(declare-fun m!6596860 () Bool)

(assert (=> bs!1302082 m!6596860))

(assert (=> b!5623553 d!1776871))

(assert (=> d!1776659 d!1776655))

(assert (=> d!1776659 d!1776651))

(declare-fun d!1776873 () Bool)

(assert (=> d!1776873 (= (matchR!7796 r!7292 s!2326) (matchRSpec!2714 r!7292 s!2326))))

(assert (=> d!1776873 true))

(declare-fun _$88!3904 () Unit!155976)

(assert (=> d!1776873 (= (choose!42597 r!7292 s!2326) _$88!3904)))

(declare-fun bs!1302083 () Bool)

(assert (= bs!1302083 d!1776873))

(assert (=> bs!1302083 m!6596268))

(assert (=> bs!1302083 m!6596266))

(assert (=> d!1776659 d!1776873))

(assert (=> d!1776659 d!1776741))

(declare-fun b!5624041 () Bool)

(declare-fun e!3466780 () Bool)

(declare-fun call!423551 () Bool)

(assert (=> b!5624041 (= e!3466780 call!423551)))

(declare-fun b!5624042 () Bool)

(declare-fun e!3466779 () Bool)

(assert (=> b!5624042 (= e!3466779 e!3466780)))

(declare-fun res!2382073 () Bool)

(declare-fun call!423550 () Bool)

(assert (=> b!5624042 (= res!2382073 call!423550)))

(assert (=> b!5624042 (=> res!2382073 e!3466780)))

(declare-fun b!5624043 () Bool)

(declare-fun e!3466777 () Bool)

(declare-fun e!3466782 () Bool)

(assert (=> b!5624043 (= e!3466777 e!3466782)))

(declare-fun res!2382070 () Bool)

(assert (=> b!5624043 (=> res!2382070 e!3466782)))

(assert (=> b!5624043 (= res!2382070 ((_ is Star!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5624044 () Bool)

(declare-fun e!3466781 () Bool)

(assert (=> b!5624044 (= e!3466781 e!3466777)))

(declare-fun res!2382072 () Bool)

(assert (=> b!5624044 (=> (not res!2382072) (not e!3466777))))

(assert (=> b!5624044 (= res!2382072 (and (not ((_ is EmptyLang!15611) (h!69456 (exprs!5495 (h!69457 zl!343))))) (not ((_ is ElementMatch!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun b!5624045 () Bool)

(declare-fun e!3466778 () Bool)

(assert (=> b!5624045 (= e!3466778 call!423551)))

(declare-fun bm!423545 () Bool)

(declare-fun c!987178 () Bool)

(assert (=> bm!423545 (= call!423550 (nullable!5643 (ite c!987178 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun bm!423546 () Bool)

(assert (=> bm!423546 (= call!423551 (nullable!5643 (ite c!987178 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun b!5624047 () Bool)

(assert (=> b!5624047 (= e!3466779 e!3466778)))

(declare-fun res!2382069 () Bool)

(assert (=> b!5624047 (= res!2382069 call!423550)))

(assert (=> b!5624047 (=> (not res!2382069) (not e!3466778))))

(declare-fun b!5624046 () Bool)

(assert (=> b!5624046 (= e!3466782 e!3466779)))

(assert (=> b!5624046 (= c!987178 ((_ is Union!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun d!1776875 () Bool)

(declare-fun res!2382071 () Bool)

(assert (=> d!1776875 (=> res!2382071 e!3466781)))

(assert (=> d!1776875 (= res!2382071 ((_ is EmptyExpr!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> d!1776875 (= (nullableFct!1741 (h!69456 (exprs!5495 (h!69457 zl!343)))) e!3466781)))

(assert (= (and d!1776875 (not res!2382071)) b!5624044))

(assert (= (and b!5624044 res!2382072) b!5624043))

(assert (= (and b!5624043 (not res!2382070)) b!5624046))

(assert (= (and b!5624046 c!987178) b!5624042))

(assert (= (and b!5624046 (not c!987178)) b!5624047))

(assert (= (and b!5624042 (not res!2382073)) b!5624041))

(assert (= (and b!5624047 res!2382069) b!5624045))

(assert (= (or b!5624041 b!5624045) bm!423546))

(assert (= (or b!5624042 b!5624047) bm!423545))

(declare-fun m!6596862 () Bool)

(assert (=> bm!423545 m!6596862))

(declare-fun m!6596864 () Bool)

(assert (=> bm!423546 m!6596864))

(assert (=> d!1776719 d!1776875))

(declare-fun call!423552 () List!63132)

(declare-fun c!987181 () Bool)

(declare-fun bm!423547 () Bool)

(declare-fun call!423554 () (InoxSet Context!9990))

(assert (=> bm!423547 (= call!423554 (derivationStepZipperDown!953 (ite c!987181 (regTwo!31735 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (regOne!31734 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))))) (ite c!987181 (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464)) (Context!9991 call!423552)) (h!69458 s!2326)))))

(declare-fun b!5624048 () Bool)

(declare-fun e!3466787 () (InoxSet Context!9990))

(declare-fun call!423557 () (InoxSet Context!9990))

(assert (=> b!5624048 (= e!3466787 ((_ map or) call!423554 call!423557))))

(declare-fun bm!423548 () Bool)

(declare-fun call!423555 () (InoxSet Context!9990))

(assert (=> bm!423548 (= call!423557 call!423555)))

(declare-fun b!5624049 () Bool)

(declare-fun e!3466783 () Bool)

(assert (=> b!5624049 (= e!3466783 (nullable!5643 (regOne!31734 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))))))))

(declare-fun bm!423549 () Bool)

(declare-fun call!423553 () List!63132)

(assert (=> bm!423549 (= call!423553 call!423552)))

(declare-fun e!3466785 () (InoxSet Context!9990))

(declare-fun b!5624051 () Bool)

(assert (=> b!5624051 (= e!3466785 (store ((as const (Array Context!9990 Bool)) false) (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464)) true))))

(declare-fun c!987183 () Bool)

(declare-fun b!5624052 () Bool)

(assert (=> b!5624052 (= c!987183 ((_ is Star!15611) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun e!3466788 () (InoxSet Context!9990))

(declare-fun e!3466786 () (InoxSet Context!9990))

(assert (=> b!5624052 (= e!3466788 e!3466786)))

(declare-fun b!5624053 () Bool)

(assert (=> b!5624053 (= e!3466786 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987180 () Bool)

(declare-fun bm!423550 () Bool)

(declare-fun c!987182 () Bool)

(assert (=> bm!423550 (= call!423552 ($colon$colon!1663 (exprs!5495 (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464))) (ite (or c!987180 c!987182) (regTwo!31734 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))))))))

(declare-fun b!5624054 () Bool)

(declare-fun call!423556 () (InoxSet Context!9990))

(assert (=> b!5624054 (= e!3466786 call!423556)))

(declare-fun b!5624055 () Bool)

(assert (=> b!5624055 (= e!3466788 call!423556)))

(declare-fun b!5624056 () Bool)

(assert (=> b!5624056 (= e!3466787 e!3466788)))

(assert (=> b!5624056 (= c!987182 ((_ is Concat!24456) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun c!987179 () Bool)

(declare-fun d!1776877 () Bool)

(assert (=> d!1776877 (= c!987179 (and ((_ is ElementMatch!15611) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (= (c!986945 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (h!69458 s!2326))))))

(assert (=> d!1776877 (= (derivationStepZipperDown!953 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))) (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464)) (h!69458 s!2326)) e!3466785)))

(declare-fun b!5624050 () Bool)

(declare-fun e!3466784 () (InoxSet Context!9990))

(assert (=> b!5624050 (= e!3466785 e!3466784)))

(assert (=> b!5624050 (= c!987181 ((_ is Union!15611) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun bm!423551 () Bool)

(assert (=> bm!423551 (= call!423556 call!423557)))

(declare-fun b!5624057 () Bool)

(assert (=> b!5624057 (= e!3466784 ((_ map or) call!423555 call!423554))))

(declare-fun b!5624058 () Bool)

(assert (=> b!5624058 (= c!987180 e!3466783)))

(declare-fun res!2382074 () Bool)

(assert (=> b!5624058 (=> (not res!2382074) (not e!3466783))))

(assert (=> b!5624058 (= res!2382074 ((_ is Concat!24456) (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))))

(assert (=> b!5624058 (= e!3466784 e!3466787)))

(declare-fun bm!423552 () Bool)

(assert (=> bm!423552 (= call!423555 (derivationStepZipperDown!953 (ite c!987181 (regOne!31735 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (ite c!987180 (regTwo!31734 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (ite c!987182 (regOne!31734 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343)))))))) (reg!15940 (ite c!987073 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987072 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987074 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))))))) (ite (or c!987181 c!987180) (ite (or c!987073 c!987072) lt!2260973 (Context!9991 call!423464)) (Context!9991 call!423553)) (h!69458 s!2326)))))

(assert (= (and d!1776877 c!987179) b!5624051))

(assert (= (and d!1776877 (not c!987179)) b!5624050))

(assert (= (and b!5624050 c!987181) b!5624057))

(assert (= (and b!5624050 (not c!987181)) b!5624058))

(assert (= (and b!5624058 res!2382074) b!5624049))

(assert (= (and b!5624058 c!987180) b!5624048))

(assert (= (and b!5624058 (not c!987180)) b!5624056))

(assert (= (and b!5624056 c!987182) b!5624055))

(assert (= (and b!5624056 (not c!987182)) b!5624052))

(assert (= (and b!5624052 c!987183) b!5624054))

(assert (= (and b!5624052 (not c!987183)) b!5624053))

(assert (= (or b!5624055 b!5624054) bm!423549))

(assert (= (or b!5624055 b!5624054) bm!423551))

(assert (= (or b!5624048 bm!423549) bm!423550))

(assert (= (or b!5624048 bm!423551) bm!423548))

(assert (= (or b!5624057 b!5624048) bm!423547))

(assert (= (or b!5624057 bm!423548) bm!423552))

(declare-fun m!6596866 () Bool)

(assert (=> b!5624049 m!6596866))

(declare-fun m!6596868 () Bool)

(assert (=> bm!423552 m!6596868))

(declare-fun m!6596870 () Bool)

(assert (=> bm!423547 m!6596870))

(declare-fun m!6596872 () Bool)

(assert (=> b!5624051 m!6596872))

(declare-fun m!6596874 () Bool)

(assert (=> bm!423550 m!6596874))

(assert (=> bm!423463 d!1776877))

(declare-fun bm!423553 () Bool)

(declare-fun c!987186 () Bool)

(declare-fun call!423558 () List!63132)

(declare-fun call!423560 () (InoxSet Context!9990))

(assert (=> bm!423553 (= call!423560 (derivationStepZipperDown!953 (ite c!987186 (regTwo!31735 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (regOne!31734 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))))) (ite c!987186 (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498)) (Context!9991 call!423558)) (h!69458 s!2326)))))

(declare-fun b!5624059 () Bool)

(declare-fun e!3466793 () (InoxSet Context!9990))

(declare-fun call!423563 () (InoxSet Context!9990))

(assert (=> b!5624059 (= e!3466793 ((_ map or) call!423560 call!423563))))

(declare-fun bm!423554 () Bool)

(declare-fun call!423561 () (InoxSet Context!9990))

(assert (=> bm!423554 (= call!423563 call!423561)))

(declare-fun e!3466789 () Bool)

(declare-fun b!5624060 () Bool)

(assert (=> b!5624060 (= e!3466789 (nullable!5643 (regOne!31734 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))))))))

(declare-fun bm!423555 () Bool)

(declare-fun call!423559 () List!63132)

(assert (=> bm!423555 (= call!423559 call!423558)))

(declare-fun b!5624062 () Bool)

(declare-fun e!3466791 () (InoxSet Context!9990))

(assert (=> b!5624062 (= e!3466791 (store ((as const (Array Context!9990 Bool)) false) (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498)) true))))

(declare-fun c!987188 () Bool)

(declare-fun b!5624063 () Bool)

(assert (=> b!5624063 (= c!987188 ((_ is Star!15611) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))))))

(declare-fun e!3466794 () (InoxSet Context!9990))

(declare-fun e!3466792 () (InoxSet Context!9990))

(assert (=> b!5624063 (= e!3466794 e!3466792)))

(declare-fun b!5624064 () Bool)

(assert (=> b!5624064 (= e!3466792 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987187 () Bool)

(declare-fun c!987185 () Bool)

(declare-fun bm!423556 () Bool)

(assert (=> bm!423556 (= call!423558 ($colon$colon!1663 (exprs!5495 (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498))) (ite (or c!987185 c!987187) (regTwo!31734 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))))))))

(declare-fun b!5624065 () Bool)

(declare-fun call!423562 () (InoxSet Context!9990))

(assert (=> b!5624065 (= e!3466792 call!423562)))

(declare-fun b!5624066 () Bool)

(assert (=> b!5624066 (= e!3466794 call!423562)))

(declare-fun b!5624067 () Bool)

(assert (=> b!5624067 (= e!3466793 e!3466794)))

(assert (=> b!5624067 (= c!987187 ((_ is Concat!24456) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))))))

(declare-fun d!1776879 () Bool)

(declare-fun c!987184 () Bool)

(assert (=> d!1776879 (= c!987184 (and ((_ is ElementMatch!15611) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (= (c!986945 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (h!69458 s!2326))))))

(assert (=> d!1776879 (= (derivationStepZipperDown!953 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))) (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498)) (h!69458 s!2326)) e!3466791)))

(declare-fun b!5624061 () Bool)

(declare-fun e!3466790 () (InoxSet Context!9990))

(assert (=> b!5624061 (= e!3466791 e!3466790)))

(assert (=> b!5624061 (= c!987186 ((_ is Union!15611) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))))))

(declare-fun bm!423557 () Bool)

(assert (=> bm!423557 (= call!423562 call!423563)))

(declare-fun b!5624068 () Bool)

(assert (=> b!5624068 (= e!3466790 ((_ map or) call!423561 call!423560))))

(declare-fun b!5624069 () Bool)

(assert (=> b!5624069 (= c!987185 e!3466789)))

(declare-fun res!2382075 () Bool)

(assert (=> b!5624069 (=> (not res!2382075) (not e!3466789))))

(assert (=> b!5624069 (= res!2382075 ((_ is Concat!24456) (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))))))

(assert (=> b!5624069 (= e!3466790 e!3466793)))

(declare-fun bm!423558 () Bool)

(assert (=> bm!423558 (= call!423561 (derivationStepZipperDown!953 (ite c!987186 (regOne!31735 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (ite c!987185 (regTwo!31734 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (ite c!987187 (regOne!31734 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292))))))) (reg!15940 (ite c!987101 (regOne!31735 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987100 (regTwo!31734 (regTwo!31734 (regOne!31734 r!7292))) (ite c!987102 (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))) (reg!15940 (regTwo!31734 (regOne!31734 r!7292)))))))))) (ite (or c!987186 c!987185) (ite (or c!987101 c!987100) lt!2260973 (Context!9991 call!423498)) (Context!9991 call!423559)) (h!69458 s!2326)))))

(assert (= (and d!1776879 c!987184) b!5624062))

(assert (= (and d!1776879 (not c!987184)) b!5624061))

(assert (= (and b!5624061 c!987186) b!5624068))

(assert (= (and b!5624061 (not c!987186)) b!5624069))

(assert (= (and b!5624069 res!2382075) b!5624060))

(assert (= (and b!5624069 c!987185) b!5624059))

(assert (= (and b!5624069 (not c!987185)) b!5624067))

(assert (= (and b!5624067 c!987187) b!5624066))

(assert (= (and b!5624067 (not c!987187)) b!5624063))

(assert (= (and b!5624063 c!987188) b!5624065))

(assert (= (and b!5624063 (not c!987188)) b!5624064))

(assert (= (or b!5624066 b!5624065) bm!423555))

(assert (= (or b!5624066 b!5624065) bm!423557))

(assert (= (or b!5624059 bm!423555) bm!423556))

(assert (= (or b!5624059 bm!423557) bm!423554))

(assert (= (or b!5624068 b!5624059) bm!423553))

(assert (= (or b!5624068 bm!423554) bm!423558))

(declare-fun m!6596876 () Bool)

(assert (=> b!5624060 m!6596876))

(declare-fun m!6596878 () Bool)

(assert (=> bm!423558 m!6596878))

(declare-fun m!6596880 () Bool)

(assert (=> bm!423553 m!6596880))

(declare-fun m!6596882 () Bool)

(assert (=> b!5624062 m!6596882))

(declare-fun m!6596884 () Bool)

(assert (=> bm!423556 m!6596884))

(assert (=> bm!423497 d!1776879))

(declare-fun d!1776881 () Bool)

(declare-fun res!2382077 () Bool)

(declare-fun e!3466798 () Bool)

(assert (=> d!1776881 (=> res!2382077 e!3466798)))

(assert (=> d!1776881 (= res!2382077 ((_ is ElementMatch!15611) lt!2261062))))

(assert (=> d!1776881 (= (validRegex!7347 lt!2261062) e!3466798)))

(declare-fun b!5624070 () Bool)

(declare-fun e!3466800 () Bool)

(declare-fun e!3466797 () Bool)

(assert (=> b!5624070 (= e!3466800 e!3466797)))

(declare-fun res!2382079 () Bool)

(assert (=> b!5624070 (= res!2382079 (not (nullable!5643 (reg!15940 lt!2261062))))))

(assert (=> b!5624070 (=> (not res!2382079) (not e!3466797))))

(declare-fun b!5624071 () Bool)

(declare-fun e!3466799 () Bool)

(assert (=> b!5624071 (= e!3466800 e!3466799)))

(declare-fun c!987189 () Bool)

(assert (=> b!5624071 (= c!987189 ((_ is Union!15611) lt!2261062))))

(declare-fun c!987190 () Bool)

(declare-fun call!423566 () Bool)

(declare-fun bm!423559 () Bool)

(assert (=> bm!423559 (= call!423566 (validRegex!7347 (ite c!987190 (reg!15940 lt!2261062) (ite c!987189 (regOne!31735 lt!2261062) (regOne!31734 lt!2261062)))))))

(declare-fun b!5624072 () Bool)

(assert (=> b!5624072 (= e!3466797 call!423566)))

(declare-fun b!5624073 () Bool)

(declare-fun e!3466801 () Bool)

(declare-fun e!3466796 () Bool)

(assert (=> b!5624073 (= e!3466801 e!3466796)))

(declare-fun res!2382076 () Bool)

(assert (=> b!5624073 (=> (not res!2382076) (not e!3466796))))

(declare-fun call!423565 () Bool)

(assert (=> b!5624073 (= res!2382076 call!423565)))

(declare-fun bm!423560 () Bool)

(assert (=> bm!423560 (= call!423565 call!423566)))

(declare-fun b!5624074 () Bool)

(declare-fun call!423564 () Bool)

(assert (=> b!5624074 (= e!3466796 call!423564)))

(declare-fun b!5624075 () Bool)

(declare-fun res!2382078 () Bool)

(declare-fun e!3466795 () Bool)

(assert (=> b!5624075 (=> (not res!2382078) (not e!3466795))))

(assert (=> b!5624075 (= res!2382078 call!423565)))

(assert (=> b!5624075 (= e!3466799 e!3466795)))

(declare-fun b!5624076 () Bool)

(declare-fun res!2382080 () Bool)

(assert (=> b!5624076 (=> res!2382080 e!3466801)))

(assert (=> b!5624076 (= res!2382080 (not ((_ is Concat!24456) lt!2261062)))))

(assert (=> b!5624076 (= e!3466799 e!3466801)))

(declare-fun b!5624077 () Bool)

(assert (=> b!5624077 (= e!3466795 call!423564)))

(declare-fun b!5624078 () Bool)

(assert (=> b!5624078 (= e!3466798 e!3466800)))

(assert (=> b!5624078 (= c!987190 ((_ is Star!15611) lt!2261062))))

(declare-fun bm!423561 () Bool)

(assert (=> bm!423561 (= call!423564 (validRegex!7347 (ite c!987189 (regTwo!31735 lt!2261062) (regTwo!31734 lt!2261062))))))

(assert (= (and d!1776881 (not res!2382077)) b!5624078))

(assert (= (and b!5624078 c!987190) b!5624070))

(assert (= (and b!5624078 (not c!987190)) b!5624071))

(assert (= (and b!5624070 res!2382079) b!5624072))

(assert (= (and b!5624071 c!987189) b!5624075))

(assert (= (and b!5624071 (not c!987189)) b!5624076))

(assert (= (and b!5624075 res!2382078) b!5624077))

(assert (= (and b!5624076 (not res!2382080)) b!5624073))

(assert (= (and b!5624073 res!2382076) b!5624074))

(assert (= (or b!5624077 b!5624074) bm!423561))

(assert (= (or b!5624075 b!5624073) bm!423560))

(assert (= (or b!5624072 bm!423560) bm!423559))

(declare-fun m!6596886 () Bool)

(assert (=> b!5624070 m!6596886))

(declare-fun m!6596888 () Bool)

(assert (=> bm!423559 m!6596888))

(declare-fun m!6596890 () Bool)

(assert (=> bm!423561 m!6596890))

(assert (=> d!1776769 d!1776881))

(declare-fun d!1776883 () Bool)

(declare-fun res!2382081 () Bool)

(declare-fun e!3466802 () Bool)

(assert (=> d!1776883 (=> res!2382081 e!3466802)))

(assert (=> d!1776883 (= res!2382081 ((_ is Nil!63008) (exprs!5495 (h!69457 zl!343))))))

(assert (=> d!1776883 (= (forall!14768 (exprs!5495 (h!69457 zl!343)) lambda!302016) e!3466802)))

(declare-fun b!5624079 () Bool)

(declare-fun e!3466803 () Bool)

(assert (=> b!5624079 (= e!3466802 e!3466803)))

(declare-fun res!2382082 () Bool)

(assert (=> b!5624079 (=> (not res!2382082) (not e!3466803))))

(assert (=> b!5624079 (= res!2382082 (dynLambda!24641 lambda!302016 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun b!5624080 () Bool)

(assert (=> b!5624080 (= e!3466803 (forall!14768 (t!376422 (exprs!5495 (h!69457 zl!343))) lambda!302016))))

(assert (= (and d!1776883 (not res!2382081)) b!5624079))

(assert (= (and b!5624079 res!2382082) b!5624080))

(declare-fun b_lambda!212755 () Bool)

(assert (=> (not b_lambda!212755) (not b!5624079)))

(declare-fun m!6596892 () Bool)

(assert (=> b!5624079 m!6596892))

(declare-fun m!6596894 () Bool)

(assert (=> b!5624080 m!6596894))

(assert (=> d!1776769 d!1776883))

(declare-fun call!423567 () List!63132)

(declare-fun bm!423562 () Bool)

(declare-fun c!987193 () Bool)

(declare-fun call!423569 () (InoxSet Context!9990))

(assert (=> bm!423562 (= call!423569 (derivationStepZipperDown!953 (ite c!987193 (regTwo!31735 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (regOne!31734 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))) (ite c!987193 (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491)) (Context!9991 call!423567)) (h!69458 s!2326)))))

(declare-fun b!5624081 () Bool)

(declare-fun e!3466808 () (InoxSet Context!9990))

(declare-fun call!423572 () (InoxSet Context!9990))

(assert (=> b!5624081 (= e!3466808 ((_ map or) call!423569 call!423572))))

(declare-fun bm!423563 () Bool)

(declare-fun call!423570 () (InoxSet Context!9990))

(assert (=> bm!423563 (= call!423572 call!423570)))

(declare-fun b!5624082 () Bool)

(declare-fun e!3466804 () Bool)

(assert (=> b!5624082 (= e!3466804 (nullable!5643 (regOne!31734 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))))))

(declare-fun bm!423564 () Bool)

(declare-fun call!423568 () List!63132)

(assert (=> bm!423564 (= call!423568 call!423567)))

(declare-fun b!5624084 () Bool)

(declare-fun e!3466806 () (InoxSet Context!9990))

(assert (=> b!5624084 (= e!3466806 (store ((as const (Array Context!9990 Bool)) false) (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491)) true))))

(declare-fun b!5624085 () Bool)

(declare-fun c!987195 () Bool)

(assert (=> b!5624085 (= c!987195 ((_ is Star!15611) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun e!3466809 () (InoxSet Context!9990))

(declare-fun e!3466807 () (InoxSet Context!9990))

(assert (=> b!5624085 (= e!3466809 e!3466807)))

(declare-fun b!5624086 () Bool)

(assert (=> b!5624086 (= e!3466807 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423565 () Bool)

(declare-fun c!987192 () Bool)

(declare-fun c!987194 () Bool)

(assert (=> bm!423565 (= call!423567 ($colon$colon!1663 (exprs!5495 (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491))) (ite (or c!987192 c!987194) (regTwo!31734 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))))))

(declare-fun b!5624087 () Bool)

(declare-fun call!423571 () (InoxSet Context!9990))

(assert (=> b!5624087 (= e!3466807 call!423571)))

(declare-fun b!5624088 () Bool)

(assert (=> b!5624088 (= e!3466809 call!423571)))

(declare-fun b!5624089 () Bool)

(assert (=> b!5624089 (= e!3466808 e!3466809)))

(assert (=> b!5624089 (= c!987194 ((_ is Concat!24456) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun c!987191 () Bool)

(declare-fun d!1776885 () Bool)

(assert (=> d!1776885 (= c!987191 (and ((_ is ElementMatch!15611) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (= (c!986945 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (h!69458 s!2326))))))

(assert (=> d!1776885 (= (derivationStepZipperDown!953 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))) (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491)) (h!69458 s!2326)) e!3466806)))

(declare-fun b!5624083 () Bool)

(declare-fun e!3466805 () (InoxSet Context!9990))

(assert (=> b!5624083 (= e!3466806 e!3466805)))

(assert (=> b!5624083 (= c!987193 ((_ is Union!15611) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun bm!423566 () Bool)

(assert (=> bm!423566 (= call!423571 call!423572)))

(declare-fun b!5624090 () Bool)

(assert (=> b!5624090 (= e!3466805 ((_ map or) call!423570 call!423569))))

(declare-fun b!5624091 () Bool)

(assert (=> b!5624091 (= c!987192 e!3466804)))

(declare-fun res!2382083 () Bool)

(assert (=> b!5624091 (=> (not res!2382083) (not e!3466804))))

(assert (=> b!5624091 (= res!2382083 ((_ is Concat!24456) (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(assert (=> b!5624091 (= e!3466805 e!3466808)))

(declare-fun bm!423567 () Bool)

(assert (=> bm!423567 (= call!423570 (derivationStepZipperDown!953 (ite c!987193 (regOne!31735 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (ite c!987192 (regTwo!31734 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (ite c!987194 (regOne!31734 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))) (reg!15940 (ite c!987096 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292)))))))) (ite (or c!987193 c!987192) (ite c!987096 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))) (Context!9991 call!423491)) (Context!9991 call!423568)) (h!69458 s!2326)))))

(assert (= (and d!1776885 c!987191) b!5624084))

(assert (= (and d!1776885 (not c!987191)) b!5624083))

(assert (= (and b!5624083 c!987193) b!5624090))

(assert (= (and b!5624083 (not c!987193)) b!5624091))

(assert (= (and b!5624091 res!2382083) b!5624082))

(assert (= (and b!5624091 c!987192) b!5624081))

(assert (= (and b!5624091 (not c!987192)) b!5624089))

(assert (= (and b!5624089 c!987194) b!5624088))

(assert (= (and b!5624089 (not c!987194)) b!5624085))

(assert (= (and b!5624085 c!987195) b!5624087))

(assert (= (and b!5624085 (not c!987195)) b!5624086))

(assert (= (or b!5624088 b!5624087) bm!423564))

(assert (= (or b!5624088 b!5624087) bm!423566))

(assert (= (or b!5624081 bm!423564) bm!423565))

(assert (= (or b!5624081 bm!423566) bm!423563))

(assert (= (or b!5624090 b!5624081) bm!423562))

(assert (= (or b!5624090 bm!423563) bm!423567))

(declare-fun m!6596896 () Bool)

(assert (=> b!5624082 m!6596896))

(declare-fun m!6596898 () Bool)

(assert (=> bm!423567 m!6596898))

(declare-fun m!6596900 () Bool)

(assert (=> bm!423562 m!6596900))

(declare-fun m!6596902 () Bool)

(assert (=> b!5624084 m!6596902))

(declare-fun m!6596904 () Bool)

(assert (=> bm!423565 m!6596904))

(assert (=> bm!423486 d!1776885))

(declare-fun b!5624101 () Bool)

(declare-fun e!3466814 () List!63134)

(assert (=> b!5624101 (= e!3466814 (Cons!63010 (h!69458 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))) (++!13830 (t!376424 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))) (t!376424 s!2326))))))

(declare-fun b!5624100 () Bool)

(assert (=> b!5624100 (= e!3466814 (t!376424 s!2326))))

(declare-fun b!5624102 () Bool)

(declare-fun res!2382089 () Bool)

(declare-fun e!3466815 () Bool)

(assert (=> b!5624102 (=> (not res!2382089) (not e!3466815))))

(declare-fun lt!2261069 () List!63134)

(declare-fun size!39977 (List!63134) Int)

(assert (=> b!5624102 (= res!2382089 (= (size!39977 lt!2261069) (+ (size!39977 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))) (size!39977 (t!376424 s!2326)))))))

(declare-fun b!5624103 () Bool)

(assert (=> b!5624103 (= e!3466815 (or (not (= (t!376424 s!2326) Nil!63010)) (= lt!2261069 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)))))))

(declare-fun d!1776887 () Bool)

(assert (=> d!1776887 e!3466815))

(declare-fun res!2382088 () Bool)

(assert (=> d!1776887 (=> (not res!2382088) (not e!3466815))))

(declare-fun content!11388 (List!63134) (InoxSet C!31492))

(assert (=> d!1776887 (= res!2382088 (= (content!11388 lt!2261069) ((_ map or) (content!11388 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))) (content!11388 (t!376424 s!2326)))))))

(assert (=> d!1776887 (= lt!2261069 e!3466814)))

(declare-fun c!987198 () Bool)

(assert (=> d!1776887 (= c!987198 ((_ is Nil!63010) (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))))))

(assert (=> d!1776887 (= (++!13830 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326)) lt!2261069)))

(assert (= (and d!1776887 c!987198) b!5624100))

(assert (= (and d!1776887 (not c!987198)) b!5624101))

(assert (= (and d!1776887 res!2382088) b!5624102))

(assert (= (and b!5624102 res!2382089) b!5624103))

(declare-fun m!6596906 () Bool)

(assert (=> b!5624101 m!6596906))

(declare-fun m!6596908 () Bool)

(assert (=> b!5624102 m!6596908))

(assert (=> b!5624102 m!6596384))

(declare-fun m!6596910 () Bool)

(assert (=> b!5624102 m!6596910))

(declare-fun m!6596912 () Bool)

(assert (=> b!5624102 m!6596912))

(declare-fun m!6596914 () Bool)

(assert (=> d!1776887 m!6596914))

(assert (=> d!1776887 m!6596384))

(declare-fun m!6596916 () Bool)

(assert (=> d!1776887 m!6596916))

(declare-fun m!6596918 () Bool)

(assert (=> d!1776887 m!6596918))

(assert (=> b!5623362 d!1776887))

(declare-fun b!5624105 () Bool)

(declare-fun e!3466816 () List!63134)

(assert (=> b!5624105 (= e!3466816 (Cons!63010 (h!69458 Nil!63010) (++!13830 (t!376424 Nil!63010) (Cons!63010 (h!69458 s!2326) Nil!63010))))))

(declare-fun b!5624104 () Bool)

(assert (=> b!5624104 (= e!3466816 (Cons!63010 (h!69458 s!2326) Nil!63010))))

(declare-fun b!5624106 () Bool)

(declare-fun res!2382091 () Bool)

(declare-fun e!3466817 () Bool)

(assert (=> b!5624106 (=> (not res!2382091) (not e!3466817))))

(declare-fun lt!2261070 () List!63134)

(assert (=> b!5624106 (= res!2382091 (= (size!39977 lt!2261070) (+ (size!39977 Nil!63010) (size!39977 (Cons!63010 (h!69458 s!2326) Nil!63010)))))))

(declare-fun b!5624107 () Bool)

(assert (=> b!5624107 (= e!3466817 (or (not (= (Cons!63010 (h!69458 s!2326) Nil!63010) Nil!63010)) (= lt!2261070 Nil!63010)))))

(declare-fun d!1776889 () Bool)

(assert (=> d!1776889 e!3466817))

(declare-fun res!2382090 () Bool)

(assert (=> d!1776889 (=> (not res!2382090) (not e!3466817))))

(assert (=> d!1776889 (= res!2382090 (= (content!11388 lt!2261070) ((_ map or) (content!11388 Nil!63010) (content!11388 (Cons!63010 (h!69458 s!2326) Nil!63010)))))))

(assert (=> d!1776889 (= lt!2261070 e!3466816)))

(declare-fun c!987199 () Bool)

(assert (=> d!1776889 (= c!987199 ((_ is Nil!63010) Nil!63010))))

(assert (=> d!1776889 (= (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) lt!2261070)))

(assert (= (and d!1776889 c!987199) b!5624104))

(assert (= (and d!1776889 (not c!987199)) b!5624105))

(assert (= (and d!1776889 res!2382090) b!5624106))

(assert (= (and b!5624106 res!2382091) b!5624107))

(declare-fun m!6596920 () Bool)

(assert (=> b!5624105 m!6596920))

(declare-fun m!6596922 () Bool)

(assert (=> b!5624106 m!6596922))

(declare-fun m!6596924 () Bool)

(assert (=> b!5624106 m!6596924))

(declare-fun m!6596926 () Bool)

(assert (=> b!5624106 m!6596926))

(declare-fun m!6596928 () Bool)

(assert (=> d!1776889 m!6596928))

(declare-fun m!6596930 () Bool)

(assert (=> d!1776889 m!6596930))

(declare-fun m!6596932 () Bool)

(assert (=> d!1776889 m!6596932))

(assert (=> b!5623362 d!1776889))

(declare-fun d!1776891 () Bool)

(assert (=> d!1776891 (= (++!13830 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326)) s!2326)))

(declare-fun lt!2261073 () Unit!155976)

(declare-fun choose!42610 (List!63134 C!31492 List!63134 List!63134) Unit!155976)

(assert (=> d!1776891 (= lt!2261073 (choose!42610 Nil!63010 (h!69458 s!2326) (t!376424 s!2326) s!2326))))

(assert (=> d!1776891 (= (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) (t!376424 s!2326))) s!2326)))

(assert (=> d!1776891 (= (lemmaMoveElementToOtherListKeepsConcatEq!1999 Nil!63010 (h!69458 s!2326) (t!376424 s!2326) s!2326) lt!2261073)))

(declare-fun bs!1302084 () Bool)

(assert (= bs!1302084 d!1776891))

(assert (=> bs!1302084 m!6596384))

(assert (=> bs!1302084 m!6596384))

(assert (=> bs!1302084 m!6596386))

(declare-fun m!6596934 () Bool)

(assert (=> bs!1302084 m!6596934))

(declare-fun m!6596936 () Bool)

(assert (=> bs!1302084 m!6596936))

(assert (=> b!5623362 d!1776891))

(declare-fun b!5624108 () Bool)

(declare-fun e!3466818 () Bool)

(declare-fun lt!2261075 () Option!15620)

(assert (=> b!5624108 (= e!3466818 (= (++!13830 (_1!36011 (get!21703 lt!2261075)) (_2!36011 (get!21703 lt!2261075))) s!2326))))

(declare-fun b!5624109 () Bool)

(declare-fun e!3466819 () Option!15620)

(assert (=> b!5624109 (= e!3466819 (Some!15619 (tuple2!65417 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326))))))

(declare-fun b!5624110 () Bool)

(declare-fun res!2382092 () Bool)

(assert (=> b!5624110 (=> (not res!2382092) (not e!3466818))))

(assert (=> b!5624110 (= res!2382092 (matchR!7796 (regTwo!31734 r!7292) (_2!36011 (get!21703 lt!2261075))))))

(declare-fun b!5624111 () Bool)

(declare-fun e!3466820 () Bool)

(assert (=> b!5624111 (= e!3466820 (matchR!7796 (regTwo!31734 r!7292) (t!376424 s!2326)))))

(declare-fun b!5624112 () Bool)

(declare-fun lt!2261074 () Unit!155976)

(declare-fun lt!2261076 () Unit!155976)

(assert (=> b!5624112 (= lt!2261074 lt!2261076)))

(assert (=> b!5624112 (= (++!13830 (++!13830 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (Cons!63010 (h!69458 (t!376424 s!2326)) Nil!63010)) (t!376424 (t!376424 s!2326))) s!2326)))

(assert (=> b!5624112 (= lt!2261076 (lemmaMoveElementToOtherListKeepsConcatEq!1999 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (h!69458 (t!376424 s!2326)) (t!376424 (t!376424 s!2326)) s!2326))))

(declare-fun e!3466821 () Option!15620)

(assert (=> b!5624112 (= e!3466821 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) (++!13830 (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (Cons!63010 (h!69458 (t!376424 s!2326)) Nil!63010)) (t!376424 (t!376424 s!2326)) s!2326))))

(declare-fun b!5624113 () Bool)

(assert (=> b!5624113 (= e!3466821 None!15619)))

(declare-fun b!5624114 () Bool)

(assert (=> b!5624114 (= e!3466819 e!3466821)))

(declare-fun c!987200 () Bool)

(assert (=> b!5624114 (= c!987200 ((_ is Nil!63010) (t!376424 s!2326)))))

(declare-fun d!1776893 () Bool)

(declare-fun e!3466822 () Bool)

(assert (=> d!1776893 e!3466822))

(declare-fun res!2382096 () Bool)

(assert (=> d!1776893 (=> res!2382096 e!3466822)))

(assert (=> d!1776893 (= res!2382096 e!3466818)))

(declare-fun res!2382095 () Bool)

(assert (=> d!1776893 (=> (not res!2382095) (not e!3466818))))

(assert (=> d!1776893 (= res!2382095 (isDefined!12323 lt!2261075))))

(assert (=> d!1776893 (= lt!2261075 e!3466819)))

(declare-fun c!987201 () Bool)

(assert (=> d!1776893 (= c!987201 e!3466820)))

(declare-fun res!2382094 () Bool)

(assert (=> d!1776893 (=> (not res!2382094) (not e!3466820))))

(assert (=> d!1776893 (= res!2382094 (matchR!7796 (regOne!31734 r!7292) (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010))))))

(assert (=> d!1776893 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776893 (= (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) (++!13830 Nil!63010 (Cons!63010 (h!69458 s!2326) Nil!63010)) (t!376424 s!2326) s!2326) lt!2261075)))

(declare-fun b!5624115 () Bool)

(declare-fun res!2382093 () Bool)

(assert (=> b!5624115 (=> (not res!2382093) (not e!3466818))))

(assert (=> b!5624115 (= res!2382093 (matchR!7796 (regOne!31734 r!7292) (_1!36011 (get!21703 lt!2261075))))))

(declare-fun b!5624116 () Bool)

(assert (=> b!5624116 (= e!3466822 (not (isDefined!12323 lt!2261075)))))

(assert (= (and d!1776893 res!2382094) b!5624111))

(assert (= (and d!1776893 c!987201) b!5624109))

(assert (= (and d!1776893 (not c!987201)) b!5624114))

(assert (= (and b!5624114 c!987200) b!5624113))

(assert (= (and b!5624114 (not c!987200)) b!5624112))

(assert (= (and d!1776893 res!2382095) b!5624115))

(assert (= (and b!5624115 res!2382093) b!5624110))

(assert (= (and b!5624110 res!2382092) b!5624108))

(assert (= (and d!1776893 (not res!2382096)) b!5624116))

(declare-fun m!6596938 () Bool)

(assert (=> b!5624108 m!6596938))

(declare-fun m!6596940 () Bool)

(assert (=> b!5624108 m!6596940))

(assert (=> b!5624112 m!6596384))

(declare-fun m!6596942 () Bool)

(assert (=> b!5624112 m!6596942))

(assert (=> b!5624112 m!6596942))

(declare-fun m!6596944 () Bool)

(assert (=> b!5624112 m!6596944))

(assert (=> b!5624112 m!6596384))

(declare-fun m!6596946 () Bool)

(assert (=> b!5624112 m!6596946))

(assert (=> b!5624112 m!6596942))

(declare-fun m!6596948 () Bool)

(assert (=> b!5624112 m!6596948))

(assert (=> b!5624110 m!6596938))

(declare-fun m!6596950 () Bool)

(assert (=> b!5624110 m!6596950))

(declare-fun m!6596952 () Bool)

(assert (=> b!5624116 m!6596952))

(assert (=> d!1776893 m!6596952))

(assert (=> d!1776893 m!6596384))

(declare-fun m!6596954 () Bool)

(assert (=> d!1776893 m!6596954))

(assert (=> d!1776893 m!6596398))

(assert (=> b!5624115 m!6596938))

(declare-fun m!6596956 () Bool)

(assert (=> b!5624115 m!6596956))

(declare-fun m!6596958 () Bool)

(assert (=> b!5624111 m!6596958))

(assert (=> b!5623362 d!1776893))

(declare-fun d!1776895 () Bool)

(assert (=> d!1776895 (= (nullable!5643 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))) (nullableFct!1741 (h!69456 (exprs!5495 (Context!9991 (Cons!63008 (h!69456 (exprs!5495 (h!69457 zl!343))) (t!376422 (exprs!5495 (h!69457 zl!343)))))))))))

(declare-fun bs!1302085 () Bool)

(assert (= bs!1302085 d!1776895))

(declare-fun m!6596960 () Bool)

(assert (=> bs!1302085 m!6596960))

(assert (=> b!5623563 d!1776895))

(declare-fun bs!1302086 () Bool)

(declare-fun b!5624125 () Bool)

(assert (= bs!1302086 (and b!5624125 d!1776819)))

(declare-fun lambda!302035 () Int)

(assert (=> bs!1302086 (not (= lambda!302035 lambda!302029))))

(declare-fun bs!1302087 () Bool)

(assert (= bs!1302087 (and b!5624125 b!5623161)))

(assert (=> bs!1302087 (not (= lambda!302035 lambda!301959))))

(declare-fun bs!1302088 () Bool)

(assert (= bs!1302088 (and b!5624125 d!1776681)))

(assert (=> bs!1302088 (not (= lambda!302035 lambda!301993))))

(declare-fun bs!1302089 () Bool)

(assert (= bs!1302089 (and b!5624125 d!1776793)))

(assert (=> bs!1302089 (not (= lambda!302035 lambda!302024))))

(assert (=> bs!1302087 (not (= lambda!302035 lambda!301958))))

(assert (=> bs!1302088 (not (= lambda!302035 lambda!301992))))

(declare-fun bs!1302090 () Bool)

(assert (= bs!1302090 (and b!5624125 d!1776677)))

(assert (=> bs!1302090 (not (= lambda!302035 lambda!301981))))

(declare-fun bs!1302091 () Bool)

(assert (= bs!1302091 (and b!5624125 b!5623254)))

(assert (=> bs!1302091 (= (and (= (reg!15940 (regTwo!31735 r!7292)) (reg!15940 r!7292)) (= (regTwo!31735 r!7292) r!7292)) (= lambda!302035 lambda!301965))))

(assert (=> bs!1302089 (not (= lambda!302035 lambda!302025))))

(declare-fun bs!1302092 () Bool)

(assert (= bs!1302092 (and b!5624125 b!5623253)))

(assert (=> bs!1302092 (not (= lambda!302035 lambda!301966))))

(assert (=> b!5624125 true))

(assert (=> b!5624125 true))

(declare-fun bs!1302093 () Bool)

(declare-fun b!5624124 () Bool)

(assert (= bs!1302093 (and b!5624124 d!1776819)))

(declare-fun lambda!302036 () Int)

(assert (=> bs!1302093 (not (= lambda!302036 lambda!302029))))

(declare-fun bs!1302094 () Bool)

(assert (= bs!1302094 (and b!5624124 b!5623161)))

(assert (=> bs!1302094 (= (and (= (regOne!31734 (regTwo!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regTwo!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302036 lambda!301959))))

(declare-fun bs!1302095 () Bool)

(assert (= bs!1302095 (and b!5624124 b!5624125)))

(assert (=> bs!1302095 (not (= lambda!302036 lambda!302035))))

(declare-fun bs!1302096 () Bool)

(assert (= bs!1302096 (and b!5624124 d!1776681)))

(assert (=> bs!1302096 (= (and (= (regOne!31734 (regTwo!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regTwo!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302036 lambda!301993))))

(declare-fun bs!1302097 () Bool)

(assert (= bs!1302097 (and b!5624124 d!1776793)))

(assert (=> bs!1302097 (not (= lambda!302036 lambda!302024))))

(assert (=> bs!1302094 (not (= lambda!302036 lambda!301958))))

(assert (=> bs!1302096 (not (= lambda!302036 lambda!301992))))

(declare-fun bs!1302098 () Bool)

(assert (= bs!1302098 (and b!5624124 d!1776677)))

(assert (=> bs!1302098 (not (= lambda!302036 lambda!301981))))

(declare-fun bs!1302099 () Bool)

(assert (= bs!1302099 (and b!5624124 b!5623254)))

(assert (=> bs!1302099 (not (= lambda!302036 lambda!301965))))

(assert (=> bs!1302097 (= (and (= (regOne!31734 (regTwo!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regTwo!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302036 lambda!302025))))

(declare-fun bs!1302100 () Bool)

(assert (= bs!1302100 (and b!5624124 b!5623253)))

(assert (=> bs!1302100 (= (and (= (regOne!31734 (regTwo!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regTwo!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302036 lambda!301966))))

(assert (=> b!5624124 true))

(assert (=> b!5624124 true))

(declare-fun b!5624117 () Bool)

(declare-fun e!3466826 () Bool)

(declare-fun call!423574 () Bool)

(assert (=> b!5624117 (= e!3466826 call!423574)))

(declare-fun b!5624118 () Bool)

(declare-fun res!2382099 () Bool)

(declare-fun e!3466823 () Bool)

(assert (=> b!5624118 (=> res!2382099 e!3466823)))

(assert (=> b!5624118 (= res!2382099 call!423574)))

(declare-fun e!3466829 () Bool)

(assert (=> b!5624118 (= e!3466829 e!3466823)))

(declare-fun b!5624119 () Bool)

(declare-fun e!3466828 () Bool)

(assert (=> b!5624119 (= e!3466828 e!3466829)))

(declare-fun c!987203 () Bool)

(assert (=> b!5624119 (= c!987203 ((_ is Star!15611) (regTwo!31735 r!7292)))))

(declare-fun bm!423568 () Bool)

(assert (=> bm!423568 (= call!423574 (isEmpty!34840 s!2326))))

(declare-fun call!423573 () Bool)

(declare-fun bm!423569 () Bool)

(assert (=> bm!423569 (= call!423573 (Exists!2711 (ite c!987203 lambda!302035 lambda!302036)))))

(declare-fun b!5624121 () Bool)

(declare-fun e!3466825 () Bool)

(assert (=> b!5624121 (= e!3466826 e!3466825)))

(declare-fun res!2382098 () Bool)

(assert (=> b!5624121 (= res!2382098 (not ((_ is EmptyLang!15611) (regTwo!31735 r!7292))))))

(assert (=> b!5624121 (=> (not res!2382098) (not e!3466825))))

(declare-fun b!5624122 () Bool)

(declare-fun e!3466824 () Bool)

(assert (=> b!5624122 (= e!3466828 e!3466824)))

(declare-fun res!2382097 () Bool)

(assert (=> b!5624122 (= res!2382097 (matchRSpec!2714 (regOne!31735 (regTwo!31735 r!7292)) s!2326))))

(assert (=> b!5624122 (=> res!2382097 e!3466824)))

(declare-fun b!5624123 () Bool)

(declare-fun c!987202 () Bool)

(assert (=> b!5624123 (= c!987202 ((_ is Union!15611) (regTwo!31735 r!7292)))))

(declare-fun e!3466827 () Bool)

(assert (=> b!5624123 (= e!3466827 e!3466828)))

(assert (=> b!5624124 (= e!3466829 call!423573)))

(assert (=> b!5624125 (= e!3466823 call!423573)))

(declare-fun b!5624120 () Bool)

(declare-fun c!987205 () Bool)

(assert (=> b!5624120 (= c!987205 ((_ is ElementMatch!15611) (regTwo!31735 r!7292)))))

(assert (=> b!5624120 (= e!3466825 e!3466827)))

(declare-fun d!1776897 () Bool)

(declare-fun c!987204 () Bool)

(assert (=> d!1776897 (= c!987204 ((_ is EmptyExpr!15611) (regTwo!31735 r!7292)))))

(assert (=> d!1776897 (= (matchRSpec!2714 (regTwo!31735 r!7292) s!2326) e!3466826)))

(declare-fun b!5624126 () Bool)

(assert (=> b!5624126 (= e!3466824 (matchRSpec!2714 (regTwo!31735 (regTwo!31735 r!7292)) s!2326))))

(declare-fun b!5624127 () Bool)

(assert (=> b!5624127 (= e!3466827 (= s!2326 (Cons!63010 (c!986945 (regTwo!31735 r!7292)) Nil!63010)))))

(assert (= (and d!1776897 c!987204) b!5624117))

(assert (= (and d!1776897 (not c!987204)) b!5624121))

(assert (= (and b!5624121 res!2382098) b!5624120))

(assert (= (and b!5624120 c!987205) b!5624127))

(assert (= (and b!5624120 (not c!987205)) b!5624123))

(assert (= (and b!5624123 c!987202) b!5624122))

(assert (= (and b!5624123 (not c!987202)) b!5624119))

(assert (= (and b!5624122 (not res!2382097)) b!5624126))

(assert (= (and b!5624119 c!987203) b!5624118))

(assert (= (and b!5624119 (not c!987203)) b!5624124))

(assert (= (and b!5624118 (not res!2382099)) b!5624125))

(assert (= (or b!5624125 b!5624124) bm!423569))

(assert (= (or b!5624117 b!5624118) bm!423568))

(assert (=> bm!423568 m!6596336))

(declare-fun m!6596962 () Bool)

(assert (=> bm!423569 m!6596962))

(declare-fun m!6596964 () Bool)

(assert (=> b!5624122 m!6596964))

(declare-fun m!6596966 () Bool)

(assert (=> b!5624126 m!6596966))

(assert (=> b!5623255 d!1776897))

(declare-fun b!5624128 () Bool)

(declare-fun res!2382100 () Bool)

(declare-fun e!3466831 () Bool)

(assert (=> b!5624128 (=> res!2382100 e!3466831)))

(assert (=> b!5624128 (= res!2382100 (not (isEmpty!34840 (tail!11064 (_2!36011 (get!21703 lt!2261009))))))))

(declare-fun b!5624129 () Bool)

(declare-fun res!2382102 () Bool)

(declare-fun e!3466836 () Bool)

(assert (=> b!5624129 (=> (not res!2382102) (not e!3466836))))

(declare-fun call!423575 () Bool)

(assert (=> b!5624129 (= res!2382102 (not call!423575))))

(declare-fun b!5624131 () Bool)

(declare-fun res!2382103 () Bool)

(declare-fun e!3466830 () Bool)

(assert (=> b!5624131 (=> res!2382103 e!3466830)))

(assert (=> b!5624131 (= res!2382103 e!3466836)))

(declare-fun res!2382106 () Bool)

(assert (=> b!5624131 (=> (not res!2382106) (not e!3466836))))

(declare-fun lt!2261077 () Bool)

(assert (=> b!5624131 (= res!2382106 lt!2261077)))

(declare-fun b!5624132 () Bool)

(declare-fun e!3466835 () Bool)

(assert (=> b!5624132 (= e!3466835 e!3466831)))

(declare-fun res!2382104 () Bool)

(assert (=> b!5624132 (=> res!2382104 e!3466831)))

(assert (=> b!5624132 (= res!2382104 call!423575)))

(declare-fun b!5624133 () Bool)

(declare-fun e!3466833 () Bool)

(assert (=> b!5624133 (= e!3466833 (nullable!5643 (regTwo!31734 r!7292)))))

(declare-fun b!5624134 () Bool)

(assert (=> b!5624134 (= e!3466830 e!3466835)))

(declare-fun res!2382107 () Bool)

(assert (=> b!5624134 (=> (not res!2382107) (not e!3466835))))

(assert (=> b!5624134 (= res!2382107 (not lt!2261077))))

(declare-fun b!5624135 () Bool)

(declare-fun e!3466834 () Bool)

(assert (=> b!5624135 (= e!3466834 (= lt!2261077 call!423575))))

(declare-fun b!5624136 () Bool)

(declare-fun res!2382105 () Bool)

(assert (=> b!5624136 (=> res!2382105 e!3466830)))

(assert (=> b!5624136 (= res!2382105 (not ((_ is ElementMatch!15611) (regTwo!31734 r!7292))))))

(declare-fun e!3466832 () Bool)

(assert (=> b!5624136 (= e!3466832 e!3466830)))

(declare-fun b!5624137 () Bool)

(declare-fun res!2382101 () Bool)

(assert (=> b!5624137 (=> (not res!2382101) (not e!3466836))))

(assert (=> b!5624137 (= res!2382101 (isEmpty!34840 (tail!11064 (_2!36011 (get!21703 lt!2261009)))))))

(declare-fun b!5624138 () Bool)

(assert (=> b!5624138 (= e!3466831 (not (= (head!11969 (_2!36011 (get!21703 lt!2261009))) (c!986945 (regTwo!31734 r!7292)))))))

(declare-fun d!1776899 () Bool)

(assert (=> d!1776899 e!3466834))

(declare-fun c!987207 () Bool)

(assert (=> d!1776899 (= c!987207 ((_ is EmptyExpr!15611) (regTwo!31734 r!7292)))))

(assert (=> d!1776899 (= lt!2261077 e!3466833)))

(declare-fun c!987206 () Bool)

(assert (=> d!1776899 (= c!987206 (isEmpty!34840 (_2!36011 (get!21703 lt!2261009))))))

(assert (=> d!1776899 (validRegex!7347 (regTwo!31734 r!7292))))

(assert (=> d!1776899 (= (matchR!7796 (regTwo!31734 r!7292) (_2!36011 (get!21703 lt!2261009))) lt!2261077)))

(declare-fun b!5624130 () Bool)

(assert (=> b!5624130 (= e!3466834 e!3466832)))

(declare-fun c!987208 () Bool)

(assert (=> b!5624130 (= c!987208 ((_ is EmptyLang!15611) (regTwo!31734 r!7292)))))

(declare-fun bm!423570 () Bool)

(assert (=> bm!423570 (= call!423575 (isEmpty!34840 (_2!36011 (get!21703 lt!2261009))))))

(declare-fun b!5624139 () Bool)

(assert (=> b!5624139 (= e!3466833 (matchR!7796 (derivativeStep!4448 (regTwo!31734 r!7292) (head!11969 (_2!36011 (get!21703 lt!2261009)))) (tail!11064 (_2!36011 (get!21703 lt!2261009)))))))

(declare-fun b!5624140 () Bool)

(assert (=> b!5624140 (= e!3466832 (not lt!2261077))))

(declare-fun b!5624141 () Bool)

(assert (=> b!5624141 (= e!3466836 (= (head!11969 (_2!36011 (get!21703 lt!2261009))) (c!986945 (regTwo!31734 r!7292))))))

(assert (= (and d!1776899 c!987206) b!5624133))

(assert (= (and d!1776899 (not c!987206)) b!5624139))

(assert (= (and d!1776899 c!987207) b!5624135))

(assert (= (and d!1776899 (not c!987207)) b!5624130))

(assert (= (and b!5624130 c!987208) b!5624140))

(assert (= (and b!5624130 (not c!987208)) b!5624136))

(assert (= (and b!5624136 (not res!2382105)) b!5624131))

(assert (= (and b!5624131 res!2382106) b!5624129))

(assert (= (and b!5624129 res!2382102) b!5624137))

(assert (= (and b!5624137 res!2382101) b!5624141))

(assert (= (and b!5624131 (not res!2382103)) b!5624134))

(assert (= (and b!5624134 res!2382107) b!5624132))

(assert (= (and b!5624132 (not res!2382104)) b!5624128))

(assert (= (and b!5624128 (not res!2382100)) b!5624138))

(assert (= (or b!5624135 b!5624129 b!5624132) bm!423570))

(assert (=> b!5624133 m!6596790))

(declare-fun m!6596968 () Bool)

(assert (=> bm!423570 m!6596968))

(declare-fun m!6596970 () Bool)

(assert (=> b!5624141 m!6596970))

(declare-fun m!6596972 () Bool)

(assert (=> b!5624128 m!6596972))

(assert (=> b!5624128 m!6596972))

(declare-fun m!6596974 () Bool)

(assert (=> b!5624128 m!6596974))

(assert (=> b!5624138 m!6596970))

(assert (=> b!5624137 m!6596972))

(assert (=> b!5624137 m!6596972))

(assert (=> b!5624137 m!6596974))

(assert (=> b!5624139 m!6596970))

(assert (=> b!5624139 m!6596970))

(declare-fun m!6596976 () Bool)

(assert (=> b!5624139 m!6596976))

(assert (=> b!5624139 m!6596972))

(assert (=> b!5624139 m!6596976))

(assert (=> b!5624139 m!6596972))

(declare-fun m!6596978 () Bool)

(assert (=> b!5624139 m!6596978))

(assert (=> d!1776899 m!6596968))

(assert (=> d!1776899 m!6596796))

(assert (=> b!5623360 d!1776899))

(declare-fun d!1776901 () Bool)

(assert (=> d!1776901 (= (get!21703 lt!2261009) (v!51664 lt!2261009))))

(assert (=> b!5623360 d!1776901))

(declare-fun d!1776903 () Bool)

(declare-fun res!2382109 () Bool)

(declare-fun e!3466840 () Bool)

(assert (=> d!1776903 (=> res!2382109 e!3466840)))

(assert (=> d!1776903 (= res!2382109 ((_ is ElementMatch!15611) lt!2261038))))

(assert (=> d!1776903 (= (validRegex!7347 lt!2261038) e!3466840)))

(declare-fun b!5624142 () Bool)

(declare-fun e!3466842 () Bool)

(declare-fun e!3466839 () Bool)

(assert (=> b!5624142 (= e!3466842 e!3466839)))

(declare-fun res!2382111 () Bool)

(assert (=> b!5624142 (= res!2382111 (not (nullable!5643 (reg!15940 lt!2261038))))))

(assert (=> b!5624142 (=> (not res!2382111) (not e!3466839))))

(declare-fun b!5624143 () Bool)

(declare-fun e!3466841 () Bool)

(assert (=> b!5624143 (= e!3466842 e!3466841)))

(declare-fun c!987209 () Bool)

(assert (=> b!5624143 (= c!987209 ((_ is Union!15611) lt!2261038))))

(declare-fun c!987210 () Bool)

(declare-fun bm!423571 () Bool)

(declare-fun call!423578 () Bool)

(assert (=> bm!423571 (= call!423578 (validRegex!7347 (ite c!987210 (reg!15940 lt!2261038) (ite c!987209 (regOne!31735 lt!2261038) (regOne!31734 lt!2261038)))))))

(declare-fun b!5624144 () Bool)

(assert (=> b!5624144 (= e!3466839 call!423578)))

(declare-fun b!5624145 () Bool)

(declare-fun e!3466843 () Bool)

(declare-fun e!3466838 () Bool)

(assert (=> b!5624145 (= e!3466843 e!3466838)))

(declare-fun res!2382108 () Bool)

(assert (=> b!5624145 (=> (not res!2382108) (not e!3466838))))

(declare-fun call!423577 () Bool)

(assert (=> b!5624145 (= res!2382108 call!423577)))

(declare-fun bm!423572 () Bool)

(assert (=> bm!423572 (= call!423577 call!423578)))

(declare-fun b!5624146 () Bool)

(declare-fun call!423576 () Bool)

(assert (=> b!5624146 (= e!3466838 call!423576)))

(declare-fun b!5624147 () Bool)

(declare-fun res!2382110 () Bool)

(declare-fun e!3466837 () Bool)

(assert (=> b!5624147 (=> (not res!2382110) (not e!3466837))))

(assert (=> b!5624147 (= res!2382110 call!423577)))

(assert (=> b!5624147 (= e!3466841 e!3466837)))

(declare-fun b!5624148 () Bool)

(declare-fun res!2382112 () Bool)

(assert (=> b!5624148 (=> res!2382112 e!3466843)))

(assert (=> b!5624148 (= res!2382112 (not ((_ is Concat!24456) lt!2261038)))))

(assert (=> b!5624148 (= e!3466841 e!3466843)))

(declare-fun b!5624149 () Bool)

(assert (=> b!5624149 (= e!3466837 call!423576)))

(declare-fun b!5624150 () Bool)

(assert (=> b!5624150 (= e!3466840 e!3466842)))

(assert (=> b!5624150 (= c!987210 ((_ is Star!15611) lt!2261038))))

(declare-fun bm!423573 () Bool)

(assert (=> bm!423573 (= call!423576 (validRegex!7347 (ite c!987209 (regTwo!31735 lt!2261038) (regTwo!31734 lt!2261038))))))

(assert (= (and d!1776903 (not res!2382109)) b!5624150))

(assert (= (and b!5624150 c!987210) b!5624142))

(assert (= (and b!5624150 (not c!987210)) b!5624143))

(assert (= (and b!5624142 res!2382111) b!5624144))

(assert (= (and b!5624143 c!987209) b!5624147))

(assert (= (and b!5624143 (not c!987209)) b!5624148))

(assert (= (and b!5624147 res!2382110) b!5624149))

(assert (= (and b!5624148 (not res!2382112)) b!5624145))

(assert (= (and b!5624145 res!2382108) b!5624146))

(assert (= (or b!5624149 b!5624146) bm!423573))

(assert (= (or b!5624147 b!5624145) bm!423572))

(assert (= (or b!5624144 bm!423572) bm!423571))

(declare-fun m!6596980 () Bool)

(assert (=> b!5624142 m!6596980))

(declare-fun m!6596982 () Bool)

(assert (=> bm!423571 m!6596982))

(declare-fun m!6596984 () Bool)

(assert (=> bm!423573 m!6596984))

(assert (=> d!1776703 d!1776903))

(assert (=> d!1776703 d!1776687))

(assert (=> d!1776703 d!1776689))

(declare-fun call!423581 () (InoxSet Context!9990))

(declare-fun bm!423574 () Bool)

(declare-fun call!423579 () List!63132)

(declare-fun c!987213 () Bool)

(assert (=> bm!423574 (= call!423581 (derivationStepZipperDown!953 (ite c!987213 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))) (ite c!987213 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (Context!9991 call!423579)) (h!69458 s!2326)))))

(declare-fun b!5624151 () Bool)

(declare-fun e!3466848 () (InoxSet Context!9990))

(declare-fun call!423584 () (InoxSet Context!9990))

(assert (=> b!5624151 (= e!3466848 ((_ map or) call!423581 call!423584))))

(declare-fun bm!423575 () Bool)

(declare-fun call!423582 () (InoxSet Context!9990))

(assert (=> bm!423575 (= call!423584 call!423582)))

(declare-fun b!5624152 () Bool)

(declare-fun e!3466844 () Bool)

(assert (=> b!5624152 (= e!3466844 (nullable!5643 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun bm!423576 () Bool)

(declare-fun call!423580 () List!63132)

(assert (=> bm!423576 (= call!423580 call!423579)))

(declare-fun b!5624154 () Bool)

(declare-fun e!3466846 () (InoxSet Context!9990))

(assert (=> b!5624154 (= e!3466846 (store ((as const (Array Context!9990 Bool)) false) (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) true))))

(declare-fun b!5624155 () Bool)

(declare-fun c!987215 () Bool)

(assert (=> b!5624155 (= c!987215 ((_ is Star!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun e!3466849 () (InoxSet Context!9990))

(declare-fun e!3466847 () (InoxSet Context!9990))

(assert (=> b!5624155 (= e!3466849 e!3466847)))

(declare-fun b!5624156 () Bool)

(assert (=> b!5624156 (= e!3466847 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987212 () Bool)

(declare-fun bm!423577 () Bool)

(declare-fun c!987214 () Bool)

(assert (=> bm!423577 (= call!423579 ($colon$colon!1663 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343))))) (ite (or c!987212 c!987214) (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69456 (exprs!5495 (h!69457 zl!343))))))))

(declare-fun b!5624157 () Bool)

(declare-fun call!423583 () (InoxSet Context!9990))

(assert (=> b!5624157 (= e!3466847 call!423583)))

(declare-fun b!5624158 () Bool)

(assert (=> b!5624158 (= e!3466849 call!423583)))

(declare-fun b!5624159 () Bool)

(assert (=> b!5624159 (= e!3466848 e!3466849)))

(assert (=> b!5624159 (= c!987214 ((_ is Concat!24456) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun d!1776905 () Bool)

(declare-fun c!987211 () Bool)

(assert (=> d!1776905 (= c!987211 (and ((_ is ElementMatch!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))) (= (c!986945 (h!69456 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326))))))

(assert (=> d!1776905 (= (derivationStepZipperDown!953 (h!69456 (exprs!5495 (h!69457 zl!343))) (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326)) e!3466846)))

(declare-fun b!5624153 () Bool)

(declare-fun e!3466845 () (InoxSet Context!9990))

(assert (=> b!5624153 (= e!3466846 e!3466845)))

(assert (=> b!5624153 (= c!987213 ((_ is Union!15611) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun bm!423578 () Bool)

(assert (=> bm!423578 (= call!423583 call!423584)))

(declare-fun b!5624160 () Bool)

(assert (=> b!5624160 (= e!3466845 ((_ map or) call!423582 call!423581))))

(declare-fun b!5624161 () Bool)

(assert (=> b!5624161 (= c!987212 e!3466844)))

(declare-fun res!2382113 () Bool)

(assert (=> b!5624161 (=> (not res!2382113) (not e!3466844))))

(assert (=> b!5624161 (= res!2382113 ((_ is Concat!24456) (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> b!5624161 (= e!3466845 e!3466848)))

(declare-fun bm!423579 () Bool)

(assert (=> bm!423579 (= call!423582 (derivationStepZipperDown!953 (ite c!987213 (regOne!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987212 (regTwo!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (ite c!987214 (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))) (reg!15940 (h!69456 (exprs!5495 (h!69457 zl!343))))))) (ite (or c!987213 c!987212) (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (Context!9991 call!423580)) (h!69458 s!2326)))))

(assert (= (and d!1776905 c!987211) b!5624154))

(assert (= (and d!1776905 (not c!987211)) b!5624153))

(assert (= (and b!5624153 c!987213) b!5624160))

(assert (= (and b!5624153 (not c!987213)) b!5624161))

(assert (= (and b!5624161 res!2382113) b!5624152))

(assert (= (and b!5624161 c!987212) b!5624151))

(assert (= (and b!5624161 (not c!987212)) b!5624159))

(assert (= (and b!5624159 c!987214) b!5624158))

(assert (= (and b!5624159 (not c!987214)) b!5624155))

(assert (= (and b!5624155 c!987215) b!5624157))

(assert (= (and b!5624155 (not c!987215)) b!5624156))

(assert (= (or b!5624158 b!5624157) bm!423576))

(assert (= (or b!5624158 b!5624157) bm!423578))

(assert (= (or b!5624151 bm!423576) bm!423577))

(assert (= (or b!5624151 bm!423578) bm!423575))

(assert (= (or b!5624160 b!5624151) bm!423574))

(assert (= (or b!5624160 bm!423575) bm!423579))

(assert (=> b!5624152 m!6596574))

(declare-fun m!6596986 () Bool)

(assert (=> bm!423579 m!6596986))

(declare-fun m!6596988 () Bool)

(assert (=> bm!423574 m!6596988))

(declare-fun m!6596990 () Bool)

(assert (=> b!5624154 m!6596990))

(declare-fun m!6596992 () Bool)

(assert (=> bm!423577 m!6596992))

(assert (=> bm!423464 d!1776905))

(declare-fun b!5624163 () Bool)

(declare-fun e!3466850 () List!63134)

(assert (=> b!5624163 (= e!3466850 (Cons!63010 (h!69458 (_1!36011 (get!21703 lt!2261009))) (++!13830 (t!376424 (_1!36011 (get!21703 lt!2261009))) (_2!36011 (get!21703 lt!2261009)))))))

(declare-fun b!5624162 () Bool)

(assert (=> b!5624162 (= e!3466850 (_2!36011 (get!21703 lt!2261009)))))

(declare-fun b!5624164 () Bool)

(declare-fun res!2382115 () Bool)

(declare-fun e!3466851 () Bool)

(assert (=> b!5624164 (=> (not res!2382115) (not e!3466851))))

(declare-fun lt!2261078 () List!63134)

(assert (=> b!5624164 (= res!2382115 (= (size!39977 lt!2261078) (+ (size!39977 (_1!36011 (get!21703 lt!2261009))) (size!39977 (_2!36011 (get!21703 lt!2261009))))))))

(declare-fun b!5624165 () Bool)

(assert (=> b!5624165 (= e!3466851 (or (not (= (_2!36011 (get!21703 lt!2261009)) Nil!63010)) (= lt!2261078 (_1!36011 (get!21703 lt!2261009)))))))

(declare-fun d!1776907 () Bool)

(assert (=> d!1776907 e!3466851))

(declare-fun res!2382114 () Bool)

(assert (=> d!1776907 (=> (not res!2382114) (not e!3466851))))

(assert (=> d!1776907 (= res!2382114 (= (content!11388 lt!2261078) ((_ map or) (content!11388 (_1!36011 (get!21703 lt!2261009))) (content!11388 (_2!36011 (get!21703 lt!2261009))))))))

(assert (=> d!1776907 (= lt!2261078 e!3466850)))

(declare-fun c!987216 () Bool)

(assert (=> d!1776907 (= c!987216 ((_ is Nil!63010) (_1!36011 (get!21703 lt!2261009))))))

(assert (=> d!1776907 (= (++!13830 (_1!36011 (get!21703 lt!2261009)) (_2!36011 (get!21703 lt!2261009))) lt!2261078)))

(assert (= (and d!1776907 c!987216) b!5624162))

(assert (= (and d!1776907 (not c!987216)) b!5624163))

(assert (= (and d!1776907 res!2382114) b!5624164))

(assert (= (and b!5624164 res!2382115) b!5624165))

(declare-fun m!6596994 () Bool)

(assert (=> b!5624163 m!6596994))

(declare-fun m!6596996 () Bool)

(assert (=> b!5624164 m!6596996))

(declare-fun m!6596998 () Bool)

(assert (=> b!5624164 m!6596998))

(declare-fun m!6597000 () Bool)

(assert (=> b!5624164 m!6597000))

(declare-fun m!6597002 () Bool)

(assert (=> d!1776907 m!6597002))

(declare-fun m!6597004 () Bool)

(assert (=> d!1776907 m!6597004))

(declare-fun m!6597006 () Bool)

(assert (=> d!1776907 m!6597006))

(assert (=> b!5623358 d!1776907))

(assert (=> b!5623358 d!1776901))

(declare-fun d!1776909 () Bool)

(assert (=> d!1776909 (= (head!11969 s!2326) (h!69458 s!2326))))

(assert (=> b!5623302 d!1776909))

(declare-fun bs!1302101 () Bool)

(declare-fun b!5624174 () Bool)

(assert (= bs!1302101 (and b!5624174 d!1776819)))

(declare-fun lambda!302037 () Int)

(assert (=> bs!1302101 (not (= lambda!302037 lambda!302029))))

(declare-fun bs!1302102 () Bool)

(assert (= bs!1302102 (and b!5624174 b!5623161)))

(assert (=> bs!1302102 (not (= lambda!302037 lambda!301959))))

(declare-fun bs!1302103 () Bool)

(assert (= bs!1302103 (and b!5624174 b!5624125)))

(assert (=> bs!1302103 (= (and (= (reg!15940 (regOne!31735 r!7292)) (reg!15940 (regTwo!31735 r!7292))) (= (regOne!31735 r!7292) (regTwo!31735 r!7292))) (= lambda!302037 lambda!302035))))

(declare-fun bs!1302104 () Bool)

(assert (= bs!1302104 (and b!5624174 d!1776793)))

(assert (=> bs!1302104 (not (= lambda!302037 lambda!302024))))

(assert (=> bs!1302102 (not (= lambda!302037 lambda!301958))))

(declare-fun bs!1302105 () Bool)

(assert (= bs!1302105 (and b!5624174 d!1776681)))

(assert (=> bs!1302105 (not (= lambda!302037 lambda!301992))))

(declare-fun bs!1302106 () Bool)

(assert (= bs!1302106 (and b!5624174 d!1776677)))

(assert (=> bs!1302106 (not (= lambda!302037 lambda!301981))))

(declare-fun bs!1302107 () Bool)

(assert (= bs!1302107 (and b!5624174 b!5623254)))

(assert (=> bs!1302107 (= (and (= (reg!15940 (regOne!31735 r!7292)) (reg!15940 r!7292)) (= (regOne!31735 r!7292) r!7292)) (= lambda!302037 lambda!301965))))

(assert (=> bs!1302104 (not (= lambda!302037 lambda!302025))))

(declare-fun bs!1302108 () Bool)

(assert (= bs!1302108 (and b!5624174 b!5623253)))

(assert (=> bs!1302108 (not (= lambda!302037 lambda!301966))))

(assert (=> bs!1302105 (not (= lambda!302037 lambda!301993))))

(declare-fun bs!1302109 () Bool)

(assert (= bs!1302109 (and b!5624174 b!5624124)))

(assert (=> bs!1302109 (not (= lambda!302037 lambda!302036))))

(assert (=> b!5624174 true))

(assert (=> b!5624174 true))

(declare-fun bs!1302110 () Bool)

(declare-fun b!5624173 () Bool)

(assert (= bs!1302110 (and b!5624173 d!1776819)))

(declare-fun lambda!302038 () Int)

(assert (=> bs!1302110 (not (= lambda!302038 lambda!302029))))

(declare-fun bs!1302111 () Bool)

(assert (= bs!1302111 (and b!5624173 b!5623161)))

(assert (=> bs!1302111 (= (and (= (regOne!31734 (regOne!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regOne!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302038 lambda!301959))))

(declare-fun bs!1302112 () Bool)

(assert (= bs!1302112 (and b!5624173 b!5624125)))

(assert (=> bs!1302112 (not (= lambda!302038 lambda!302035))))

(assert (=> bs!1302111 (not (= lambda!302038 lambda!301958))))

(declare-fun bs!1302113 () Bool)

(assert (= bs!1302113 (and b!5624173 d!1776681)))

(assert (=> bs!1302113 (not (= lambda!302038 lambda!301992))))

(declare-fun bs!1302114 () Bool)

(assert (= bs!1302114 (and b!5624173 d!1776677)))

(assert (=> bs!1302114 (not (= lambda!302038 lambda!301981))))

(declare-fun bs!1302115 () Bool)

(assert (= bs!1302115 (and b!5624173 b!5623254)))

(assert (=> bs!1302115 (not (= lambda!302038 lambda!301965))))

(declare-fun bs!1302116 () Bool)

(assert (= bs!1302116 (and b!5624173 d!1776793)))

(assert (=> bs!1302116 (= (and (= (regOne!31734 (regOne!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regOne!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302038 lambda!302025))))

(declare-fun bs!1302117 () Bool)

(assert (= bs!1302117 (and b!5624173 b!5623253)))

(assert (=> bs!1302117 (= (and (= (regOne!31734 (regOne!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regOne!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302038 lambda!301966))))

(assert (=> bs!1302113 (= (and (= (regOne!31734 (regOne!31735 r!7292)) (regOne!31734 r!7292)) (= (regTwo!31734 (regOne!31735 r!7292)) (regTwo!31734 r!7292))) (= lambda!302038 lambda!301993))))

(declare-fun bs!1302118 () Bool)

(assert (= bs!1302118 (and b!5624173 b!5624124)))

(assert (=> bs!1302118 (= (and (= (regOne!31734 (regOne!31735 r!7292)) (regOne!31734 (regTwo!31735 r!7292))) (= (regTwo!31734 (regOne!31735 r!7292)) (regTwo!31734 (regTwo!31735 r!7292)))) (= lambda!302038 lambda!302036))))

(declare-fun bs!1302119 () Bool)

(assert (= bs!1302119 (and b!5624173 b!5624174)))

(assert (=> bs!1302119 (not (= lambda!302038 lambda!302037))))

(assert (=> bs!1302116 (not (= lambda!302038 lambda!302024))))

(assert (=> b!5624173 true))

(assert (=> b!5624173 true))

(declare-fun b!5624166 () Bool)

(declare-fun e!3466855 () Bool)

(declare-fun call!423586 () Bool)

(assert (=> b!5624166 (= e!3466855 call!423586)))

(declare-fun b!5624167 () Bool)

(declare-fun res!2382118 () Bool)

(declare-fun e!3466852 () Bool)

(assert (=> b!5624167 (=> res!2382118 e!3466852)))

(assert (=> b!5624167 (= res!2382118 call!423586)))

(declare-fun e!3466858 () Bool)

(assert (=> b!5624167 (= e!3466858 e!3466852)))

(declare-fun b!5624168 () Bool)

(declare-fun e!3466857 () Bool)

(assert (=> b!5624168 (= e!3466857 e!3466858)))

(declare-fun c!987218 () Bool)

(assert (=> b!5624168 (= c!987218 ((_ is Star!15611) (regOne!31735 r!7292)))))

(declare-fun bm!423580 () Bool)

(assert (=> bm!423580 (= call!423586 (isEmpty!34840 s!2326))))

(declare-fun bm!423581 () Bool)

(declare-fun call!423585 () Bool)

(assert (=> bm!423581 (= call!423585 (Exists!2711 (ite c!987218 lambda!302037 lambda!302038)))))

(declare-fun b!5624170 () Bool)

(declare-fun e!3466854 () Bool)

(assert (=> b!5624170 (= e!3466855 e!3466854)))

(declare-fun res!2382117 () Bool)

(assert (=> b!5624170 (= res!2382117 (not ((_ is EmptyLang!15611) (regOne!31735 r!7292))))))

(assert (=> b!5624170 (=> (not res!2382117) (not e!3466854))))

(declare-fun b!5624171 () Bool)

(declare-fun e!3466853 () Bool)

(assert (=> b!5624171 (= e!3466857 e!3466853)))

(declare-fun res!2382116 () Bool)

(assert (=> b!5624171 (= res!2382116 (matchRSpec!2714 (regOne!31735 (regOne!31735 r!7292)) s!2326))))

(assert (=> b!5624171 (=> res!2382116 e!3466853)))

(declare-fun b!5624172 () Bool)

(declare-fun c!987217 () Bool)

(assert (=> b!5624172 (= c!987217 ((_ is Union!15611) (regOne!31735 r!7292)))))

(declare-fun e!3466856 () Bool)

(assert (=> b!5624172 (= e!3466856 e!3466857)))

(assert (=> b!5624173 (= e!3466858 call!423585)))

(assert (=> b!5624174 (= e!3466852 call!423585)))

(declare-fun b!5624169 () Bool)

(declare-fun c!987220 () Bool)

(assert (=> b!5624169 (= c!987220 ((_ is ElementMatch!15611) (regOne!31735 r!7292)))))

(assert (=> b!5624169 (= e!3466854 e!3466856)))

(declare-fun d!1776911 () Bool)

(declare-fun c!987219 () Bool)

(assert (=> d!1776911 (= c!987219 ((_ is EmptyExpr!15611) (regOne!31735 r!7292)))))

(assert (=> d!1776911 (= (matchRSpec!2714 (regOne!31735 r!7292) s!2326) e!3466855)))

(declare-fun b!5624175 () Bool)

(assert (=> b!5624175 (= e!3466853 (matchRSpec!2714 (regTwo!31735 (regOne!31735 r!7292)) s!2326))))

(declare-fun b!5624176 () Bool)

(assert (=> b!5624176 (= e!3466856 (= s!2326 (Cons!63010 (c!986945 (regOne!31735 r!7292)) Nil!63010)))))

(assert (= (and d!1776911 c!987219) b!5624166))

(assert (= (and d!1776911 (not c!987219)) b!5624170))

(assert (= (and b!5624170 res!2382117) b!5624169))

(assert (= (and b!5624169 c!987220) b!5624176))

(assert (= (and b!5624169 (not c!987220)) b!5624172))

(assert (= (and b!5624172 c!987217) b!5624171))

(assert (= (and b!5624172 (not c!987217)) b!5624168))

(assert (= (and b!5624171 (not res!2382116)) b!5624175))

(assert (= (and b!5624168 c!987218) b!5624167))

(assert (= (and b!5624168 (not c!987218)) b!5624173))

(assert (= (and b!5624167 (not res!2382118)) b!5624174))

(assert (= (or b!5624174 b!5624173) bm!423581))

(assert (= (or b!5624166 b!5624167) bm!423580))

(assert (=> bm!423580 m!6596336))

(declare-fun m!6597008 () Bool)

(assert (=> bm!423581 m!6597008))

(declare-fun m!6597010 () Bool)

(assert (=> b!5624171 m!6597010))

(declare-fun m!6597012 () Bool)

(assert (=> b!5624175 m!6597012))

(assert (=> b!5623251 d!1776911))

(declare-fun d!1776913 () Bool)

(declare-fun res!2382120 () Bool)

(declare-fun e!3466862 () Bool)

(assert (=> d!1776913 (=> res!2382120 e!3466862)))

(assert (=> d!1776913 (= res!2382120 ((_ is ElementMatch!15611) lt!2261023))))

(assert (=> d!1776913 (= (validRegex!7347 lt!2261023) e!3466862)))

(declare-fun b!5624177 () Bool)

(declare-fun e!3466864 () Bool)

(declare-fun e!3466861 () Bool)

(assert (=> b!5624177 (= e!3466864 e!3466861)))

(declare-fun res!2382122 () Bool)

(assert (=> b!5624177 (= res!2382122 (not (nullable!5643 (reg!15940 lt!2261023))))))

(assert (=> b!5624177 (=> (not res!2382122) (not e!3466861))))

(declare-fun b!5624178 () Bool)

(declare-fun e!3466863 () Bool)

(assert (=> b!5624178 (= e!3466864 e!3466863)))

(declare-fun c!987221 () Bool)

(assert (=> b!5624178 (= c!987221 ((_ is Union!15611) lt!2261023))))

(declare-fun c!987222 () Bool)

(declare-fun call!423589 () Bool)

(declare-fun bm!423582 () Bool)

(assert (=> bm!423582 (= call!423589 (validRegex!7347 (ite c!987222 (reg!15940 lt!2261023) (ite c!987221 (regOne!31735 lt!2261023) (regOne!31734 lt!2261023)))))))

(declare-fun b!5624179 () Bool)

(assert (=> b!5624179 (= e!3466861 call!423589)))

(declare-fun b!5624180 () Bool)

(declare-fun e!3466865 () Bool)

(declare-fun e!3466860 () Bool)

(assert (=> b!5624180 (= e!3466865 e!3466860)))

(declare-fun res!2382119 () Bool)

(assert (=> b!5624180 (=> (not res!2382119) (not e!3466860))))

(declare-fun call!423588 () Bool)

(assert (=> b!5624180 (= res!2382119 call!423588)))

(declare-fun bm!423583 () Bool)

(assert (=> bm!423583 (= call!423588 call!423589)))

(declare-fun b!5624181 () Bool)

(declare-fun call!423587 () Bool)

(assert (=> b!5624181 (= e!3466860 call!423587)))

(declare-fun b!5624182 () Bool)

(declare-fun res!2382121 () Bool)

(declare-fun e!3466859 () Bool)

(assert (=> b!5624182 (=> (not res!2382121) (not e!3466859))))

(assert (=> b!5624182 (= res!2382121 call!423588)))

(assert (=> b!5624182 (= e!3466863 e!3466859)))

(declare-fun b!5624183 () Bool)

(declare-fun res!2382123 () Bool)

(assert (=> b!5624183 (=> res!2382123 e!3466865)))

(assert (=> b!5624183 (= res!2382123 (not ((_ is Concat!24456) lt!2261023)))))

(assert (=> b!5624183 (= e!3466863 e!3466865)))

(declare-fun b!5624184 () Bool)

(assert (=> b!5624184 (= e!3466859 call!423587)))

(declare-fun b!5624185 () Bool)

(assert (=> b!5624185 (= e!3466862 e!3466864)))

(assert (=> b!5624185 (= c!987222 ((_ is Star!15611) lt!2261023))))

(declare-fun bm!423584 () Bool)

(assert (=> bm!423584 (= call!423587 (validRegex!7347 (ite c!987221 (regTwo!31735 lt!2261023) (regTwo!31734 lt!2261023))))))

(assert (= (and d!1776913 (not res!2382120)) b!5624185))

(assert (= (and b!5624185 c!987222) b!5624177))

(assert (= (and b!5624185 (not c!987222)) b!5624178))

(assert (= (and b!5624177 res!2382122) b!5624179))

(assert (= (and b!5624178 c!987221) b!5624182))

(assert (= (and b!5624178 (not c!987221)) b!5624183))

(assert (= (and b!5624182 res!2382121) b!5624184))

(assert (= (and b!5624183 (not res!2382123)) b!5624180))

(assert (= (and b!5624180 res!2382119) b!5624181))

(assert (= (or b!5624184 b!5624181) bm!423584))

(assert (= (or b!5624182 b!5624180) bm!423583))

(assert (= (or b!5624179 bm!423583) bm!423582))

(declare-fun m!6597014 () Bool)

(assert (=> b!5624177 m!6597014))

(declare-fun m!6597016 () Bool)

(assert (=> bm!423582 m!6597016))

(declare-fun m!6597018 () Bool)

(assert (=> bm!423584 m!6597018))

(assert (=> d!1776687 d!1776913))

(declare-fun d!1776915 () Bool)

(declare-fun res!2382124 () Bool)

(declare-fun e!3466866 () Bool)

(assert (=> d!1776915 (=> res!2382124 e!3466866)))

(assert (=> d!1776915 (= res!2382124 ((_ is Nil!63008) (unfocusZipperList!1039 zl!343)))))

(assert (=> d!1776915 (= (forall!14768 (unfocusZipperList!1039 zl!343) lambda!301996) e!3466866)))

(declare-fun b!5624186 () Bool)

(declare-fun e!3466867 () Bool)

(assert (=> b!5624186 (= e!3466866 e!3466867)))

(declare-fun res!2382125 () Bool)

(assert (=> b!5624186 (=> (not res!2382125) (not e!3466867))))

(assert (=> b!5624186 (= res!2382125 (dynLambda!24641 lambda!301996 (h!69456 (unfocusZipperList!1039 zl!343))))))

(declare-fun b!5624187 () Bool)

(assert (=> b!5624187 (= e!3466867 (forall!14768 (t!376422 (unfocusZipperList!1039 zl!343)) lambda!301996))))

(assert (= (and d!1776915 (not res!2382124)) b!5624186))

(assert (= (and b!5624186 res!2382125) b!5624187))

(declare-fun b_lambda!212757 () Bool)

(assert (=> (not b_lambda!212757) (not b!5624186)))

(declare-fun m!6597020 () Bool)

(assert (=> b!5624186 m!6597020))

(declare-fun m!6597022 () Bool)

(assert (=> b!5624187 m!6597022))

(assert (=> d!1776687 d!1776915))

(declare-fun b!5624188 () Bool)

(declare-fun res!2382126 () Bool)

(declare-fun e!3466869 () Bool)

(assert (=> b!5624188 (=> res!2382126 e!3466869)))

(assert (=> b!5624188 (= res!2382126 (not (isEmpty!34840 (tail!11064 (tail!11064 s!2326)))))))

(declare-fun b!5624189 () Bool)

(declare-fun res!2382128 () Bool)

(declare-fun e!3466874 () Bool)

(assert (=> b!5624189 (=> (not res!2382128) (not e!3466874))))

(declare-fun call!423590 () Bool)

(assert (=> b!5624189 (= res!2382128 (not call!423590))))

(declare-fun b!5624191 () Bool)

(declare-fun res!2382129 () Bool)

(declare-fun e!3466868 () Bool)

(assert (=> b!5624191 (=> res!2382129 e!3466868)))

(assert (=> b!5624191 (= res!2382129 e!3466874)))

(declare-fun res!2382132 () Bool)

(assert (=> b!5624191 (=> (not res!2382132) (not e!3466874))))

(declare-fun lt!2261079 () Bool)

(assert (=> b!5624191 (= res!2382132 lt!2261079)))

(declare-fun b!5624192 () Bool)

(declare-fun e!3466873 () Bool)

(assert (=> b!5624192 (= e!3466873 e!3466869)))

(declare-fun res!2382130 () Bool)

(assert (=> b!5624192 (=> res!2382130 e!3466869)))

(assert (=> b!5624192 (= res!2382130 call!423590)))

(declare-fun b!5624193 () Bool)

(declare-fun e!3466871 () Bool)

(assert (=> b!5624193 (= e!3466871 (nullable!5643 (derivativeStep!4448 r!7292 (head!11969 s!2326))))))

(declare-fun b!5624194 () Bool)

(assert (=> b!5624194 (= e!3466868 e!3466873)))

(declare-fun res!2382133 () Bool)

(assert (=> b!5624194 (=> (not res!2382133) (not e!3466873))))

(assert (=> b!5624194 (= res!2382133 (not lt!2261079))))

(declare-fun b!5624195 () Bool)

(declare-fun e!3466872 () Bool)

(assert (=> b!5624195 (= e!3466872 (= lt!2261079 call!423590))))

(declare-fun b!5624196 () Bool)

(declare-fun res!2382131 () Bool)

(assert (=> b!5624196 (=> res!2382131 e!3466868)))

(assert (=> b!5624196 (= res!2382131 (not ((_ is ElementMatch!15611) (derivativeStep!4448 r!7292 (head!11969 s!2326)))))))

(declare-fun e!3466870 () Bool)

(assert (=> b!5624196 (= e!3466870 e!3466868)))

(declare-fun b!5624197 () Bool)

(declare-fun res!2382127 () Bool)

(assert (=> b!5624197 (=> (not res!2382127) (not e!3466874))))

(assert (=> b!5624197 (= res!2382127 (isEmpty!34840 (tail!11064 (tail!11064 s!2326))))))

(declare-fun b!5624198 () Bool)

(assert (=> b!5624198 (= e!3466869 (not (= (head!11969 (tail!11064 s!2326)) (c!986945 (derivativeStep!4448 r!7292 (head!11969 s!2326))))))))

(declare-fun d!1776917 () Bool)

(assert (=> d!1776917 e!3466872))

(declare-fun c!987224 () Bool)

(assert (=> d!1776917 (= c!987224 ((_ is EmptyExpr!15611) (derivativeStep!4448 r!7292 (head!11969 s!2326))))))

(assert (=> d!1776917 (= lt!2261079 e!3466871)))

(declare-fun c!987223 () Bool)

(assert (=> d!1776917 (= c!987223 (isEmpty!34840 (tail!11064 s!2326)))))

(assert (=> d!1776917 (validRegex!7347 (derivativeStep!4448 r!7292 (head!11969 s!2326)))))

(assert (=> d!1776917 (= (matchR!7796 (derivativeStep!4448 r!7292 (head!11969 s!2326)) (tail!11064 s!2326)) lt!2261079)))

(declare-fun b!5624190 () Bool)

(assert (=> b!5624190 (= e!3466872 e!3466870)))

(declare-fun c!987225 () Bool)

(assert (=> b!5624190 (= c!987225 ((_ is EmptyLang!15611) (derivativeStep!4448 r!7292 (head!11969 s!2326))))))

(declare-fun bm!423585 () Bool)

(assert (=> bm!423585 (= call!423590 (isEmpty!34840 (tail!11064 s!2326)))))

(declare-fun b!5624199 () Bool)

(assert (=> b!5624199 (= e!3466871 (matchR!7796 (derivativeStep!4448 (derivativeStep!4448 r!7292 (head!11969 s!2326)) (head!11969 (tail!11064 s!2326))) (tail!11064 (tail!11064 s!2326))))))

(declare-fun b!5624200 () Bool)

(assert (=> b!5624200 (= e!3466870 (not lt!2261079))))

(declare-fun b!5624201 () Bool)

(assert (=> b!5624201 (= e!3466874 (= (head!11969 (tail!11064 s!2326)) (c!986945 (derivativeStep!4448 r!7292 (head!11969 s!2326)))))))

(assert (= (and d!1776917 c!987223) b!5624193))

(assert (= (and d!1776917 (not c!987223)) b!5624199))

(assert (= (and d!1776917 c!987224) b!5624195))

(assert (= (and d!1776917 (not c!987224)) b!5624190))

(assert (= (and b!5624190 c!987225) b!5624200))

(assert (= (and b!5624190 (not c!987225)) b!5624196))

(assert (= (and b!5624196 (not res!2382131)) b!5624191))

(assert (= (and b!5624191 res!2382132) b!5624189))

(assert (= (and b!5624189 res!2382128) b!5624197))

(assert (= (and b!5624197 res!2382127) b!5624201))

(assert (= (and b!5624191 (not res!2382129)) b!5624194))

(assert (= (and b!5624194 res!2382133) b!5624192))

(assert (= (and b!5624192 (not res!2382130)) b!5624188))

(assert (= (and b!5624188 (not res!2382126)) b!5624198))

(assert (= (or b!5624195 b!5624189 b!5624192) bm!423585))

(assert (=> b!5624193 m!6596356))

(declare-fun m!6597024 () Bool)

(assert (=> b!5624193 m!6597024))

(assert (=> bm!423585 m!6596352))

(assert (=> bm!423585 m!6596354))

(assert (=> b!5624201 m!6596352))

(declare-fun m!6597026 () Bool)

(assert (=> b!5624201 m!6597026))

(assert (=> b!5624188 m!6596352))

(declare-fun m!6597028 () Bool)

(assert (=> b!5624188 m!6597028))

(assert (=> b!5624188 m!6597028))

(declare-fun m!6597030 () Bool)

(assert (=> b!5624188 m!6597030))

(assert (=> b!5624198 m!6596352))

(assert (=> b!5624198 m!6597026))

(assert (=> b!5624197 m!6596352))

(assert (=> b!5624197 m!6597028))

(assert (=> b!5624197 m!6597028))

(assert (=> b!5624197 m!6597030))

(assert (=> b!5624199 m!6596352))

(assert (=> b!5624199 m!6597026))

(assert (=> b!5624199 m!6596356))

(assert (=> b!5624199 m!6597026))

(declare-fun m!6597032 () Bool)

(assert (=> b!5624199 m!6597032))

(assert (=> b!5624199 m!6596352))

(assert (=> b!5624199 m!6597028))

(assert (=> b!5624199 m!6597032))

(assert (=> b!5624199 m!6597028))

(declare-fun m!6597034 () Bool)

(assert (=> b!5624199 m!6597034))

(assert (=> d!1776917 m!6596352))

(assert (=> d!1776917 m!6596354))

(assert (=> d!1776917 m!6596356))

(declare-fun m!6597036 () Bool)

(assert (=> d!1776917 m!6597036))

(assert (=> b!5623300 d!1776917))

(declare-fun d!1776919 () Bool)

(declare-fun lt!2261082 () Regex!15611)

(assert (=> d!1776919 (validRegex!7347 lt!2261082)))

(declare-fun e!3466887 () Regex!15611)

(assert (=> d!1776919 (= lt!2261082 e!3466887)))

(declare-fun c!987236 () Bool)

(assert (=> d!1776919 (= c!987236 (or ((_ is EmptyExpr!15611) r!7292) ((_ is EmptyLang!15611) r!7292)))))

(assert (=> d!1776919 (validRegex!7347 r!7292)))

(assert (=> d!1776919 (= (derivativeStep!4448 r!7292 (head!11969 s!2326)) lt!2261082)))

(declare-fun call!423599 () Regex!15611)

(declare-fun b!5624222 () Bool)

(declare-fun call!423600 () Regex!15611)

(declare-fun e!3466886 () Regex!15611)

(assert (=> b!5624222 (= e!3466886 (Union!15611 (Concat!24456 call!423599 (regTwo!31734 r!7292)) call!423600))))

(declare-fun bm!423594 () Bool)

(declare-fun call!423601 () Regex!15611)

(declare-fun call!423602 () Regex!15611)

(assert (=> bm!423594 (= call!423601 call!423602)))

(declare-fun b!5624223 () Bool)

(assert (=> b!5624223 (= e!3466887 EmptyLang!15611)))

(declare-fun bm!423595 () Bool)

(declare-fun c!987239 () Bool)

(declare-fun c!987238 () Bool)

(declare-fun c!987237 () Bool)

(assert (=> bm!423595 (= call!423602 (derivativeStep!4448 (ite c!987239 (regTwo!31735 r!7292) (ite c!987238 (reg!15940 r!7292) (ite c!987237 (regTwo!31734 r!7292) (regOne!31734 r!7292)))) (head!11969 s!2326)))))

(declare-fun b!5624224 () Bool)

(declare-fun e!3466885 () Regex!15611)

(assert (=> b!5624224 (= e!3466885 (Concat!24456 call!423601 r!7292))))

(declare-fun b!5624225 () Bool)

(declare-fun e!3466889 () Regex!15611)

(assert (=> b!5624225 (= e!3466887 e!3466889)))

(declare-fun c!987240 () Bool)

(assert (=> b!5624225 (= c!987240 ((_ is ElementMatch!15611) r!7292))))

(declare-fun b!5624226 () Bool)

(declare-fun e!3466888 () Regex!15611)

(assert (=> b!5624226 (= e!3466888 e!3466885)))

(assert (=> b!5624226 (= c!987238 ((_ is Star!15611) r!7292))))

(declare-fun b!5624227 () Bool)

(assert (=> b!5624227 (= e!3466889 (ite (= (head!11969 s!2326) (c!986945 r!7292)) EmptyExpr!15611 EmptyLang!15611))))

(declare-fun bm!423596 () Bool)

(assert (=> bm!423596 (= call!423600 call!423601)))

(declare-fun b!5624228 () Bool)

(assert (=> b!5624228 (= c!987237 (nullable!5643 (regOne!31734 r!7292)))))

(assert (=> b!5624228 (= e!3466885 e!3466886)))

(declare-fun b!5624229 () Bool)

(assert (=> b!5624229 (= c!987239 ((_ is Union!15611) r!7292))))

(assert (=> b!5624229 (= e!3466889 e!3466888)))

(declare-fun b!5624230 () Bool)

(assert (=> b!5624230 (= e!3466886 (Union!15611 (Concat!24456 call!423600 (regTwo!31734 r!7292)) EmptyLang!15611))))

(declare-fun bm!423597 () Bool)

(assert (=> bm!423597 (= call!423599 (derivativeStep!4448 (ite c!987239 (regOne!31735 r!7292) (regOne!31734 r!7292)) (head!11969 s!2326)))))

(declare-fun b!5624231 () Bool)

(assert (=> b!5624231 (= e!3466888 (Union!15611 call!423599 call!423602))))

(assert (= (and d!1776919 c!987236) b!5624223))

(assert (= (and d!1776919 (not c!987236)) b!5624225))

(assert (= (and b!5624225 c!987240) b!5624227))

(assert (= (and b!5624225 (not c!987240)) b!5624229))

(assert (= (and b!5624229 c!987239) b!5624231))

(assert (= (and b!5624229 (not c!987239)) b!5624226))

(assert (= (and b!5624226 c!987238) b!5624224))

(assert (= (and b!5624226 (not c!987238)) b!5624228))

(assert (= (and b!5624228 c!987237) b!5624222))

(assert (= (and b!5624228 (not c!987237)) b!5624230))

(assert (= (or b!5624222 b!5624230) bm!423596))

(assert (= (or b!5624224 bm!423596) bm!423594))

(assert (= (or b!5624231 bm!423594) bm!423595))

(assert (= (or b!5624231 b!5624222) bm!423597))

(declare-fun m!6597038 () Bool)

(assert (=> d!1776919 m!6597038))

(assert (=> d!1776919 m!6596260))

(assert (=> bm!423595 m!6596350))

(declare-fun m!6597040 () Bool)

(assert (=> bm!423595 m!6597040))

(declare-fun m!6597042 () Bool)

(assert (=> b!5624228 m!6597042))

(assert (=> bm!423597 m!6596350))

(declare-fun m!6597044 () Bool)

(assert (=> bm!423597 m!6597044))

(assert (=> b!5623300 d!1776919))

(assert (=> b!5623300 d!1776909))

(assert (=> b!5623300 d!1776805))

(declare-fun d!1776921 () Bool)

(assert (=> d!1776921 true))

(assert (=> d!1776921 true))

(declare-fun res!2382136 () Bool)

(assert (=> d!1776921 (= (choose!42598 lambda!301959) res!2382136)))

(assert (=> d!1776675 d!1776921))

(declare-fun b!5624232 () Bool)

(declare-fun e!3466892 () (InoxSet Context!9990))

(declare-fun e!3466890 () (InoxSet Context!9990))

(assert (=> b!5624232 (= e!3466892 e!3466890)))

(declare-fun c!987242 () Bool)

(assert (=> b!5624232 (= c!987242 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun b!5624233 () Bool)

(declare-fun e!3466891 () Bool)

(assert (=> b!5624233 (= e!3466891 (nullable!5643 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343))))))))))

(declare-fun b!5624234 () Bool)

(declare-fun call!423603 () (InoxSet Context!9990))

(assert (=> b!5624234 (= e!3466892 ((_ map or) call!423603 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343))))))) (h!69458 s!2326))))))

(declare-fun b!5624235 () Bool)

(assert (=> b!5624235 (= e!3466890 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423598 () Bool)

(assert (=> bm!423598 (= call!423603 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))))) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343))))))) (h!69458 s!2326)))))

(declare-fun b!5624236 () Bool)

(assert (=> b!5624236 (= e!3466890 call!423603)))

(declare-fun d!1776923 () Bool)

(declare-fun c!987241 () Bool)

(assert (=> d!1776923 (= c!987241 e!3466891)))

(declare-fun res!2382137 () Bool)

(assert (=> d!1776923 (=> (not res!2382137) (not e!3466891))))

(assert (=> d!1776923 (= res!2382137 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))))))))

(assert (=> d!1776923 (= (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (h!69457 zl!343)))) (h!69458 s!2326)) e!3466892)))

(assert (= (and d!1776923 res!2382137) b!5624233))

(assert (= (and d!1776923 c!987241) b!5624234))

(assert (= (and d!1776923 (not c!987241)) b!5624232))

(assert (= (and b!5624232 c!987242) b!5624236))

(assert (= (and b!5624232 (not c!987242)) b!5624235))

(assert (= (or b!5624234 b!5624236) bm!423598))

(declare-fun m!6597046 () Bool)

(assert (=> b!5624233 m!6597046))

(declare-fun m!6597048 () Bool)

(assert (=> b!5624234 m!6597048))

(declare-fun m!6597050 () Bool)

(assert (=> bm!423598 m!6597050))

(assert (=> b!5623638 d!1776923))

(declare-fun d!1776925 () Bool)

(assert (=> d!1776925 (= (isDefined!12323 lt!2261009) (not (isEmpty!34843 lt!2261009)))))

(declare-fun bs!1302120 () Bool)

(assert (= bs!1302120 d!1776925))

(declare-fun m!6597052 () Bool)

(assert (=> bs!1302120 m!6597052))

(assert (=> d!1776661 d!1776925))

(declare-fun b!5624237 () Bool)

(declare-fun res!2382138 () Bool)

(declare-fun e!3466894 () Bool)

(assert (=> b!5624237 (=> res!2382138 e!3466894)))

(assert (=> b!5624237 (= res!2382138 (not (isEmpty!34840 (tail!11064 Nil!63010))))))

(declare-fun b!5624238 () Bool)

(declare-fun res!2382140 () Bool)

(declare-fun e!3466899 () Bool)

(assert (=> b!5624238 (=> (not res!2382140) (not e!3466899))))

(declare-fun call!423604 () Bool)

(assert (=> b!5624238 (= res!2382140 (not call!423604))))

(declare-fun b!5624240 () Bool)

(declare-fun res!2382141 () Bool)

(declare-fun e!3466893 () Bool)

(assert (=> b!5624240 (=> res!2382141 e!3466893)))

(assert (=> b!5624240 (= res!2382141 e!3466899)))

(declare-fun res!2382144 () Bool)

(assert (=> b!5624240 (=> (not res!2382144) (not e!3466899))))

(declare-fun lt!2261083 () Bool)

(assert (=> b!5624240 (= res!2382144 lt!2261083)))

(declare-fun b!5624241 () Bool)

(declare-fun e!3466898 () Bool)

(assert (=> b!5624241 (= e!3466898 e!3466894)))

(declare-fun res!2382142 () Bool)

(assert (=> b!5624241 (=> res!2382142 e!3466894)))

(assert (=> b!5624241 (= res!2382142 call!423604)))

(declare-fun b!5624242 () Bool)

(declare-fun e!3466896 () Bool)

(assert (=> b!5624242 (= e!3466896 (nullable!5643 (regOne!31734 r!7292)))))

(declare-fun b!5624243 () Bool)

(assert (=> b!5624243 (= e!3466893 e!3466898)))

(declare-fun res!2382145 () Bool)

(assert (=> b!5624243 (=> (not res!2382145) (not e!3466898))))

(assert (=> b!5624243 (= res!2382145 (not lt!2261083))))

(declare-fun b!5624244 () Bool)

(declare-fun e!3466897 () Bool)

(assert (=> b!5624244 (= e!3466897 (= lt!2261083 call!423604))))

(declare-fun b!5624245 () Bool)

(declare-fun res!2382143 () Bool)

(assert (=> b!5624245 (=> res!2382143 e!3466893)))

(assert (=> b!5624245 (= res!2382143 (not ((_ is ElementMatch!15611) (regOne!31734 r!7292))))))

(declare-fun e!3466895 () Bool)

(assert (=> b!5624245 (= e!3466895 e!3466893)))

(declare-fun b!5624246 () Bool)

(declare-fun res!2382139 () Bool)

(assert (=> b!5624246 (=> (not res!2382139) (not e!3466899))))

(assert (=> b!5624246 (= res!2382139 (isEmpty!34840 (tail!11064 Nil!63010)))))

(declare-fun b!5624247 () Bool)

(assert (=> b!5624247 (= e!3466894 (not (= (head!11969 Nil!63010) (c!986945 (regOne!31734 r!7292)))))))

(declare-fun d!1776927 () Bool)

(assert (=> d!1776927 e!3466897))

(declare-fun c!987244 () Bool)

(assert (=> d!1776927 (= c!987244 ((_ is EmptyExpr!15611) (regOne!31734 r!7292)))))

(assert (=> d!1776927 (= lt!2261083 e!3466896)))

(declare-fun c!987243 () Bool)

(assert (=> d!1776927 (= c!987243 (isEmpty!34840 Nil!63010))))

(assert (=> d!1776927 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776927 (= (matchR!7796 (regOne!31734 r!7292) Nil!63010) lt!2261083)))

(declare-fun b!5624239 () Bool)

(assert (=> b!5624239 (= e!3466897 e!3466895)))

(declare-fun c!987245 () Bool)

(assert (=> b!5624239 (= c!987245 ((_ is EmptyLang!15611) (regOne!31734 r!7292)))))

(declare-fun bm!423599 () Bool)

(assert (=> bm!423599 (= call!423604 (isEmpty!34840 Nil!63010))))

(declare-fun b!5624248 () Bool)

(assert (=> b!5624248 (= e!3466896 (matchR!7796 (derivativeStep!4448 (regOne!31734 r!7292) (head!11969 Nil!63010)) (tail!11064 Nil!63010)))))

(declare-fun b!5624249 () Bool)

(assert (=> b!5624249 (= e!3466895 (not lt!2261083))))

(declare-fun b!5624250 () Bool)

(assert (=> b!5624250 (= e!3466899 (= (head!11969 Nil!63010) (c!986945 (regOne!31734 r!7292))))))

(assert (= (and d!1776927 c!987243) b!5624242))

(assert (= (and d!1776927 (not c!987243)) b!5624248))

(assert (= (and d!1776927 c!987244) b!5624244))

(assert (= (and d!1776927 (not c!987244)) b!5624239))

(assert (= (and b!5624239 c!987245) b!5624249))

(assert (= (and b!5624239 (not c!987245)) b!5624245))

(assert (= (and b!5624245 (not res!2382143)) b!5624240))

(assert (= (and b!5624240 res!2382144) b!5624238))

(assert (= (and b!5624238 res!2382140) b!5624246))

(assert (= (and b!5624246 res!2382139) b!5624250))

(assert (= (and b!5624240 (not res!2382141)) b!5624243))

(assert (= (and b!5624243 res!2382145) b!5624241))

(assert (= (and b!5624241 (not res!2382142)) b!5624237))

(assert (= (and b!5624237 (not res!2382138)) b!5624247))

(assert (= (or b!5624244 b!5624238 b!5624241) bm!423599))

(assert (=> b!5624242 m!6597042))

(declare-fun m!6597054 () Bool)

(assert (=> bm!423599 m!6597054))

(declare-fun m!6597056 () Bool)

(assert (=> b!5624250 m!6597056))

(declare-fun m!6597058 () Bool)

(assert (=> b!5624237 m!6597058))

(assert (=> b!5624237 m!6597058))

(declare-fun m!6597060 () Bool)

(assert (=> b!5624237 m!6597060))

(assert (=> b!5624247 m!6597056))

(assert (=> b!5624246 m!6597058))

(assert (=> b!5624246 m!6597058))

(assert (=> b!5624246 m!6597060))

(assert (=> b!5624248 m!6597056))

(assert (=> b!5624248 m!6597056))

(declare-fun m!6597062 () Bool)

(assert (=> b!5624248 m!6597062))

(assert (=> b!5624248 m!6597058))

(assert (=> b!5624248 m!6597062))

(assert (=> b!5624248 m!6597058))

(declare-fun m!6597064 () Bool)

(assert (=> b!5624248 m!6597064))

(assert (=> d!1776927 m!6597054))

(assert (=> d!1776927 m!6596398))

(assert (=> d!1776661 d!1776927))

(assert (=> d!1776661 d!1776795))

(declare-fun d!1776929 () Bool)

(declare-fun c!987246 () Bool)

(assert (=> d!1776929 (= c!987246 (isEmpty!34840 (tail!11064 (t!376424 s!2326))))))

(declare-fun e!3466900 () Bool)

(assert (=> d!1776929 (= (matchZipper!1749 (derivationStepZipper!1700 lt!2260967 (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))) e!3466900)))

(declare-fun b!5624251 () Bool)

(assert (=> b!5624251 (= e!3466900 (nullableZipper!1596 (derivationStepZipper!1700 lt!2260967 (head!11969 (t!376424 s!2326)))))))

(declare-fun b!5624252 () Bool)

(assert (=> b!5624252 (= e!3466900 (matchZipper!1749 (derivationStepZipper!1700 (derivationStepZipper!1700 lt!2260967 (head!11969 (t!376424 s!2326))) (head!11969 (tail!11064 (t!376424 s!2326)))) (tail!11064 (tail!11064 (t!376424 s!2326)))))))

(assert (= (and d!1776929 c!987246) b!5624251))

(assert (= (and d!1776929 (not c!987246)) b!5624252))

(assert (=> d!1776929 m!6596650))

(declare-fun m!6597066 () Bool)

(assert (=> d!1776929 m!6597066))

(assert (=> b!5624251 m!6596670))

(declare-fun m!6597068 () Bool)

(assert (=> b!5624251 m!6597068))

(assert (=> b!5624252 m!6596650))

(declare-fun m!6597070 () Bool)

(assert (=> b!5624252 m!6597070))

(assert (=> b!5624252 m!6596670))

(assert (=> b!5624252 m!6597070))

(declare-fun m!6597072 () Bool)

(assert (=> b!5624252 m!6597072))

(assert (=> b!5624252 m!6596650))

(declare-fun m!6597074 () Bool)

(assert (=> b!5624252 m!6597074))

(assert (=> b!5624252 m!6597072))

(assert (=> b!5624252 m!6597074))

(declare-fun m!6597076 () Bool)

(assert (=> b!5624252 m!6597076))

(assert (=> b!5623766 d!1776929))

(declare-fun bs!1302121 () Bool)

(declare-fun d!1776931 () Bool)

(assert (= bs!1302121 (and d!1776931 b!5623168)))

(declare-fun lambda!302041 () Int)

(assert (=> bs!1302121 (= (= (head!11969 (t!376424 s!2326)) (h!69458 s!2326)) (= lambda!302041 lambda!301960))))

(assert (=> d!1776931 true))

(assert (=> d!1776931 (= (derivationStepZipper!1700 lt!2260967 (head!11969 (t!376424 s!2326))) (flatMap!1224 lt!2260967 lambda!302041))))

(declare-fun bs!1302122 () Bool)

(assert (= bs!1302122 d!1776931))

(declare-fun m!6597078 () Bool)

(assert (=> bs!1302122 m!6597078))

(assert (=> b!5623766 d!1776931))

(declare-fun d!1776933 () Bool)

(assert (=> d!1776933 (= (head!11969 (t!376424 s!2326)) (h!69458 (t!376424 s!2326)))))

(assert (=> b!5623766 d!1776933))

(declare-fun d!1776935 () Bool)

(assert (=> d!1776935 (= (tail!11064 (t!376424 s!2326)) (t!376424 (t!376424 s!2326)))))

(assert (=> b!5623766 d!1776935))

(declare-fun d!1776937 () Bool)

(declare-fun c!987249 () Bool)

(assert (=> d!1776937 (= c!987249 (isEmpty!34840 (tail!11064 (t!376424 s!2326))))))

(declare-fun e!3466901 () Bool)

(assert (=> d!1776937 (= (matchZipper!1749 (derivationStepZipper!1700 ((_ map or) lt!2260968 lt!2260967) (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))) e!3466901)))

(declare-fun b!5624255 () Bool)

(assert (=> b!5624255 (= e!3466901 (nullableZipper!1596 (derivationStepZipper!1700 ((_ map or) lt!2260968 lt!2260967) (head!11969 (t!376424 s!2326)))))))

(declare-fun b!5624256 () Bool)

(assert (=> b!5624256 (= e!3466901 (matchZipper!1749 (derivationStepZipper!1700 (derivationStepZipper!1700 ((_ map or) lt!2260968 lt!2260967) (head!11969 (t!376424 s!2326))) (head!11969 (tail!11064 (t!376424 s!2326)))) (tail!11064 (tail!11064 (t!376424 s!2326)))))))

(assert (= (and d!1776937 c!987249) b!5624255))

(assert (= (and d!1776937 (not c!987249)) b!5624256))

(assert (=> d!1776937 m!6596650))

(assert (=> d!1776937 m!6597066))

(assert (=> b!5624255 m!6596662))

(declare-fun m!6597080 () Bool)

(assert (=> b!5624255 m!6597080))

(assert (=> b!5624256 m!6596650))

(assert (=> b!5624256 m!6597070))

(assert (=> b!5624256 m!6596662))

(assert (=> b!5624256 m!6597070))

(declare-fun m!6597082 () Bool)

(assert (=> b!5624256 m!6597082))

(assert (=> b!5624256 m!6596650))

(assert (=> b!5624256 m!6597074))

(assert (=> b!5624256 m!6597082))

(assert (=> b!5624256 m!6597074))

(declare-fun m!6597084 () Bool)

(assert (=> b!5624256 m!6597084))

(assert (=> b!5623759 d!1776937))

(declare-fun bs!1302123 () Bool)

(declare-fun d!1776939 () Bool)

(assert (= bs!1302123 (and d!1776939 b!5623168)))

(declare-fun lambda!302042 () Int)

(assert (=> bs!1302123 (= (= (head!11969 (t!376424 s!2326)) (h!69458 s!2326)) (= lambda!302042 lambda!301960))))

(declare-fun bs!1302124 () Bool)

(assert (= bs!1302124 (and d!1776939 d!1776931)))

(assert (=> bs!1302124 (= lambda!302042 lambda!302041)))

(assert (=> d!1776939 true))

(assert (=> d!1776939 (= (derivationStepZipper!1700 ((_ map or) lt!2260968 lt!2260967) (head!11969 (t!376424 s!2326))) (flatMap!1224 ((_ map or) lt!2260968 lt!2260967) lambda!302042))))

(declare-fun bs!1302125 () Bool)

(assert (= bs!1302125 d!1776939))

(declare-fun m!6597086 () Bool)

(assert (=> bs!1302125 m!6597086))

(assert (=> b!5623759 d!1776939))

(assert (=> b!5623759 d!1776933))

(assert (=> b!5623759 d!1776935))

(assert (=> b!5623299 d!1776909))

(declare-fun b!5624257 () Bool)

(declare-fun e!3466905 () Bool)

(declare-fun call!423606 () Bool)

(assert (=> b!5624257 (= e!3466905 call!423606)))

(declare-fun b!5624258 () Bool)

(declare-fun e!3466904 () Bool)

(assert (=> b!5624258 (= e!3466904 e!3466905)))

(declare-fun res!2382150 () Bool)

(declare-fun call!423605 () Bool)

(assert (=> b!5624258 (= res!2382150 call!423605)))

(assert (=> b!5624258 (=> res!2382150 e!3466905)))

(declare-fun b!5624259 () Bool)

(declare-fun e!3466902 () Bool)

(declare-fun e!3466907 () Bool)

(assert (=> b!5624259 (= e!3466902 e!3466907)))

(declare-fun res!2382147 () Bool)

(assert (=> b!5624259 (=> res!2382147 e!3466907)))

(assert (=> b!5624259 (= res!2382147 ((_ is Star!15611) (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun b!5624260 () Bool)

(declare-fun e!3466906 () Bool)

(assert (=> b!5624260 (= e!3466906 e!3466902)))

(declare-fun res!2382149 () Bool)

(assert (=> b!5624260 (=> (not res!2382149) (not e!3466902))))

(assert (=> b!5624260 (= res!2382149 (and (not ((_ is EmptyLang!15611) (regOne!31734 (regOne!31734 r!7292)))) (not ((_ is ElementMatch!15611) (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun b!5624261 () Bool)

(declare-fun e!3466903 () Bool)

(assert (=> b!5624261 (= e!3466903 call!423606)))

(declare-fun bm!423600 () Bool)

(declare-fun c!987250 () Bool)

(assert (=> bm!423600 (= call!423605 (nullable!5643 (ite c!987250 (regOne!31735 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun bm!423601 () Bool)

(assert (=> bm!423601 (= call!423606 (nullable!5643 (ite c!987250 (regTwo!31735 (regOne!31734 (regOne!31734 r!7292))) (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))))))))

(declare-fun b!5624263 () Bool)

(assert (=> b!5624263 (= e!3466904 e!3466903)))

(declare-fun res!2382146 () Bool)

(assert (=> b!5624263 (= res!2382146 call!423605)))

(assert (=> b!5624263 (=> (not res!2382146) (not e!3466903))))

(declare-fun b!5624262 () Bool)

(assert (=> b!5624262 (= e!3466907 e!3466904)))

(assert (=> b!5624262 (= c!987250 ((_ is Union!15611) (regOne!31734 (regOne!31734 r!7292))))))

(declare-fun d!1776941 () Bool)

(declare-fun res!2382148 () Bool)

(assert (=> d!1776941 (=> res!2382148 e!3466906)))

(assert (=> d!1776941 (= res!2382148 ((_ is EmptyExpr!15611) (regOne!31734 (regOne!31734 r!7292))))))

(assert (=> d!1776941 (= (nullableFct!1741 (regOne!31734 (regOne!31734 r!7292))) e!3466906)))

(assert (= (and d!1776941 (not res!2382148)) b!5624260))

(assert (= (and b!5624260 res!2382149) b!5624259))

(assert (= (and b!5624259 (not res!2382147)) b!5624262))

(assert (= (and b!5624262 c!987250) b!5624258))

(assert (= (and b!5624262 (not c!987250)) b!5624263))

(assert (= (and b!5624258 (not res!2382150)) b!5624257))

(assert (= (and b!5624263 res!2382146) b!5624261))

(assert (= (or b!5624257 b!5624261) bm!423601))

(assert (= (or b!5624258 b!5624263) bm!423600))

(declare-fun m!6597088 () Bool)

(assert (=> bm!423600 m!6597088))

(declare-fun m!6597090 () Bool)

(assert (=> bm!423601 m!6597090))

(assert (=> d!1776743 d!1776941))

(assert (=> bm!423419 d!1776833))

(declare-fun d!1776943 () Bool)

(assert (=> d!1776943 (= (isEmpty!34839 (unfocusZipperList!1039 zl!343)) ((_ is Nil!63008) (unfocusZipperList!1039 zl!343)))))

(assert (=> b!5623521 d!1776943))

(declare-fun d!1776945 () Bool)

(declare-fun c!987253 () Bool)

(assert (=> d!1776945 (= c!987253 ((_ is Nil!63009) lt!2261035))))

(declare-fun e!3466910 () (InoxSet Context!9990))

(assert (=> d!1776945 (= (content!11385 lt!2261035) e!3466910)))

(declare-fun b!5624268 () Bool)

(assert (=> b!5624268 (= e!3466910 ((as const (Array Context!9990 Bool)) false))))

(declare-fun b!5624269 () Bool)

(assert (=> b!5624269 (= e!3466910 ((_ map or) (store ((as const (Array Context!9990 Bool)) false) (h!69457 lt!2261035) true) (content!11385 (t!376423 lt!2261035))))))

(assert (= (and d!1776945 c!987253) b!5624268))

(assert (= (and d!1776945 (not c!987253)) b!5624269))

(declare-fun m!6597092 () Bool)

(assert (=> b!5624269 m!6597092))

(declare-fun m!6597094 () Bool)

(assert (=> b!5624269 m!6597094))

(assert (=> b!5623537 d!1776945))

(declare-fun d!1776947 () Bool)

(assert (=> d!1776947 (= (head!11971 (unfocusZipperList!1039 zl!343)) (h!69456 (unfocusZipperList!1039 zl!343)))))

(assert (=> b!5623519 d!1776947))

(declare-fun d!1776949 () Bool)

(assert (=> d!1776949 (= ($colon$colon!1663 (exprs!5495 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343)))))) (ite (or c!987095 c!987097) (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 r!7292)))) (Cons!63008 (ite (or c!987095 c!987097) (regTwo!31734 (regOne!31734 (regOne!31734 r!7292))) (regOne!31734 (regOne!31734 r!7292))) (exprs!5495 (Context!9991 (Cons!63008 (regTwo!31734 (regOne!31734 r!7292)) (t!376422 (exprs!5495 (h!69457 zl!343))))))))))

(assert (=> bm!423489 d!1776949))

(declare-fun c!987256 () Bool)

(declare-fun call!423607 () List!63132)

(declare-fun call!423609 () (InoxSet Context!9990))

(declare-fun bm!423602 () Bool)

(assert (=> bm!423602 (= call!423609 (derivationStepZipperDown!953 (ite c!987256 (regTwo!31735 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (regOne!31734 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))) (ite c!987256 (ite c!987073 lt!2260973 (Context!9991 call!423463)) (Context!9991 call!423607)) (h!69458 s!2326)))))

(declare-fun b!5624270 () Bool)

(declare-fun e!3466915 () (InoxSet Context!9990))

(declare-fun call!423612 () (InoxSet Context!9990))

(assert (=> b!5624270 (= e!3466915 ((_ map or) call!423609 call!423612))))

(declare-fun bm!423603 () Bool)

(declare-fun call!423610 () (InoxSet Context!9990))

(assert (=> bm!423603 (= call!423612 call!423610)))

(declare-fun b!5624271 () Bool)

(declare-fun e!3466911 () Bool)

(assert (=> b!5624271 (= e!3466911 (nullable!5643 (regOne!31734 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))))

(declare-fun bm!423604 () Bool)

(declare-fun call!423608 () List!63132)

(assert (=> bm!423604 (= call!423608 call!423607)))

(declare-fun e!3466913 () (InoxSet Context!9990))

(declare-fun b!5624273 () Bool)

(assert (=> b!5624273 (= e!3466913 (store ((as const (Array Context!9990 Bool)) false) (ite c!987073 lt!2260973 (Context!9991 call!423463)) true))))

(declare-fun b!5624274 () Bool)

(declare-fun c!987258 () Bool)

(assert (=> b!5624274 (= c!987258 ((_ is Star!15611) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun e!3466916 () (InoxSet Context!9990))

(declare-fun e!3466914 () (InoxSet Context!9990))

(assert (=> b!5624274 (= e!3466916 e!3466914)))

(declare-fun b!5624275 () Bool)

(assert (=> b!5624275 (= e!3466914 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987255 () Bool)

(declare-fun c!987257 () Bool)

(declare-fun bm!423605 () Bool)

(assert (=> bm!423605 (= call!423607 ($colon$colon!1663 (exprs!5495 (ite c!987073 lt!2260973 (Context!9991 call!423463))) (ite (or c!987255 c!987257) (regTwo!31734 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))))

(declare-fun b!5624276 () Bool)

(declare-fun call!423611 () (InoxSet Context!9990))

(assert (=> b!5624276 (= e!3466914 call!423611)))

(declare-fun b!5624277 () Bool)

(assert (=> b!5624277 (= e!3466916 call!423611)))

(declare-fun b!5624278 () Bool)

(assert (=> b!5624278 (= e!3466915 e!3466916)))

(assert (=> b!5624278 (= c!987257 ((_ is Concat!24456) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun d!1776951 () Bool)

(declare-fun c!987254 () Bool)

(assert (=> d!1776951 (= c!987254 (and ((_ is ElementMatch!15611) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (= (c!986945 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (h!69458 s!2326))))))

(assert (=> d!1776951 (= (derivationStepZipperDown!953 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))) (ite c!987073 lt!2260973 (Context!9991 call!423463)) (h!69458 s!2326)) e!3466913)))

(declare-fun b!5624272 () Bool)

(declare-fun e!3466912 () (InoxSet Context!9990))

(assert (=> b!5624272 (= e!3466913 e!3466912)))

(assert (=> b!5624272 (= c!987256 ((_ is Union!15611) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(declare-fun bm!423606 () Bool)

(assert (=> bm!423606 (= call!423611 call!423612)))

(declare-fun b!5624279 () Bool)

(assert (=> b!5624279 (= e!3466912 ((_ map or) call!423610 call!423609))))

(declare-fun b!5624280 () Bool)

(assert (=> b!5624280 (= c!987255 e!3466911)))

(declare-fun res!2382151 () Bool)

(assert (=> b!5624280 (=> (not res!2382151) (not e!3466911))))

(assert (=> b!5624280 (= res!2382151 ((_ is Concat!24456) (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))))))

(assert (=> b!5624280 (= e!3466912 e!3466915)))

(declare-fun bm!423607 () Bool)

(assert (=> bm!423607 (= call!423610 (derivationStepZipperDown!953 (ite c!987256 (regOne!31735 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (ite c!987255 (regTwo!31734 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (ite c!987257 (regOne!31734 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343)))))) (reg!15940 (ite c!987073 (regTwo!31735 (h!69456 (exprs!5495 (h!69457 zl!343)))) (regOne!31734 (h!69456 (exprs!5495 (h!69457 zl!343))))))))) (ite (or c!987256 c!987255) (ite c!987073 lt!2260973 (Context!9991 call!423463)) (Context!9991 call!423608)) (h!69458 s!2326)))))

(assert (= (and d!1776951 c!987254) b!5624273))

(assert (= (and d!1776951 (not c!987254)) b!5624272))

(assert (= (and b!5624272 c!987256) b!5624279))

(assert (= (and b!5624272 (not c!987256)) b!5624280))

(assert (= (and b!5624280 res!2382151) b!5624271))

(assert (= (and b!5624280 c!987255) b!5624270))

(assert (= (and b!5624280 (not c!987255)) b!5624278))

(assert (= (and b!5624278 c!987257) b!5624277))

(assert (= (and b!5624278 (not c!987257)) b!5624274))

(assert (= (and b!5624274 c!987258) b!5624276))

(assert (= (and b!5624274 (not c!987258)) b!5624275))

(assert (= (or b!5624277 b!5624276) bm!423604))

(assert (= (or b!5624277 b!5624276) bm!423606))

(assert (= (or b!5624270 bm!423604) bm!423605))

(assert (= (or b!5624270 bm!423606) bm!423603))

(assert (= (or b!5624279 b!5624270) bm!423602))

(assert (= (or b!5624279 bm!423603) bm!423607))

(declare-fun m!6597096 () Bool)

(assert (=> b!5624271 m!6597096))

(declare-fun m!6597098 () Bool)

(assert (=> bm!423607 m!6597098))

(declare-fun m!6597100 () Bool)

(assert (=> bm!423602 m!6597100))

(declare-fun m!6597102 () Bool)

(assert (=> b!5624273 m!6597102))

(declare-fun m!6597104 () Bool)

(assert (=> bm!423605 m!6597104))

(assert (=> bm!423458 d!1776951))

(assert (=> b!5623368 d!1776925))

(declare-fun d!1776953 () Bool)

(assert (=> d!1776953 (= (isEmpty!34843 (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326)) (not ((_ is Some!15619) (findConcatSeparation!2034 (regOne!31734 r!7292) (regTwo!31734 r!7292) Nil!63010 s!2326 s!2326))))))

(assert (=> d!1776685 d!1776953))

(declare-fun d!1776955 () Bool)

(declare-fun res!2382153 () Bool)

(declare-fun e!3466920 () Bool)

(assert (=> d!1776955 (=> res!2382153 e!3466920)))

(assert (=> d!1776955 (= res!2382153 ((_ is ElementMatch!15611) (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))

(assert (=> d!1776955 (= (validRegex!7347 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))) e!3466920)))

(declare-fun b!5624281 () Bool)

(declare-fun e!3466922 () Bool)

(declare-fun e!3466919 () Bool)

(assert (=> b!5624281 (= e!3466922 e!3466919)))

(declare-fun res!2382155 () Bool)

(assert (=> b!5624281 (= res!2382155 (not (nullable!5643 (reg!15940 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))))

(assert (=> b!5624281 (=> (not res!2382155) (not e!3466919))))

(declare-fun b!5624282 () Bool)

(declare-fun e!3466921 () Bool)

(assert (=> b!5624282 (= e!3466922 e!3466921)))

(declare-fun c!987259 () Bool)

(assert (=> b!5624282 (= c!987259 ((_ is Union!15611) (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))

(declare-fun call!423615 () Bool)

(declare-fun bm!423608 () Bool)

(declare-fun c!987260 () Bool)

(assert (=> bm!423608 (= call!423615 (validRegex!7347 (ite c!987260 (reg!15940 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))) (ite c!987259 (regOne!31735 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))) (regOne!31734 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292))))))))))

(declare-fun b!5624283 () Bool)

(assert (=> b!5624283 (= e!3466919 call!423615)))

(declare-fun b!5624284 () Bool)

(declare-fun e!3466923 () Bool)

(declare-fun e!3466918 () Bool)

(assert (=> b!5624284 (= e!3466923 e!3466918)))

(declare-fun res!2382152 () Bool)

(assert (=> b!5624284 (=> (not res!2382152) (not e!3466918))))

(declare-fun call!423614 () Bool)

(assert (=> b!5624284 (= res!2382152 call!423614)))

(declare-fun bm!423609 () Bool)

(assert (=> bm!423609 (= call!423614 call!423615)))

(declare-fun b!5624285 () Bool)

(declare-fun call!423613 () Bool)

(assert (=> b!5624285 (= e!3466918 call!423613)))

(declare-fun b!5624286 () Bool)

(declare-fun res!2382154 () Bool)

(declare-fun e!3466917 () Bool)

(assert (=> b!5624286 (=> (not res!2382154) (not e!3466917))))

(assert (=> b!5624286 (= res!2382154 call!423614)))

(assert (=> b!5624286 (= e!3466921 e!3466917)))

(declare-fun b!5624287 () Bool)

(declare-fun res!2382156 () Bool)

(assert (=> b!5624287 (=> res!2382156 e!3466923)))

(assert (=> b!5624287 (= res!2382156 (not ((_ is Concat!24456) (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292))))))))

(assert (=> b!5624287 (= e!3466921 e!3466923)))

(declare-fun b!5624288 () Bool)

(assert (=> b!5624288 (= e!3466917 call!423613)))

(declare-fun b!5624289 () Bool)

(assert (=> b!5624289 (= e!3466920 e!3466922)))

(assert (=> b!5624289 (= c!987260 ((_ is Star!15611) (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))

(declare-fun bm!423610 () Bool)

(assert (=> bm!423610 (= call!423613 (validRegex!7347 (ite c!987259 (regTwo!31735 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))) (regTwo!31734 (ite c!987093 (reg!15940 r!7292) (ite c!987092 (regOne!31735 r!7292) (regOne!31734 r!7292)))))))))

(assert (= (and d!1776955 (not res!2382153)) b!5624289))

(assert (= (and b!5624289 c!987260) b!5624281))

(assert (= (and b!5624289 (not c!987260)) b!5624282))

(assert (= (and b!5624281 res!2382155) b!5624283))

(assert (= (and b!5624282 c!987259) b!5624286))

(assert (= (and b!5624282 (not c!987259)) b!5624287))

(assert (= (and b!5624286 res!2382154) b!5624288))

(assert (= (and b!5624287 (not res!2382156)) b!5624284))

(assert (= (and b!5624284 res!2382152) b!5624285))

(assert (= (or b!5624288 b!5624285) bm!423610))

(assert (= (or b!5624286 b!5624284) bm!423609))

(assert (= (or b!5624283 bm!423609) bm!423608))

(declare-fun m!6597106 () Bool)

(assert (=> b!5624281 m!6597106))

(declare-fun m!6597108 () Bool)

(assert (=> bm!423608 m!6597108))

(declare-fun m!6597110 () Bool)

(assert (=> bm!423610 m!6597110))

(assert (=> bm!423479 d!1776955))

(declare-fun d!1776957 () Bool)

(assert (=> d!1776957 (= (head!11971 (exprs!5495 (h!69457 zl!343))) (h!69456 (exprs!5495 (h!69457 zl!343))))))

(assert (=> b!5623839 d!1776957))

(declare-fun d!1776959 () Bool)

(assert (=> d!1776959 (= (isEmpty!34839 (t!376422 (unfocusZipperList!1039 zl!343))) ((_ is Nil!63008) (t!376422 (unfocusZipperList!1039 zl!343))))))

(assert (=> b!5623517 d!1776959))

(declare-fun call!423618 () (InoxSet Context!9990))

(declare-fun c!987263 () Bool)

(declare-fun bm!423611 () Bool)

(declare-fun call!423616 () List!63132)

(assert (=> bm!423611 (= call!423618 (derivationStepZipperDown!953 (ite c!987263 (regTwo!31735 (h!69456 (exprs!5495 lt!2260973))) (regOne!31734 (h!69456 (exprs!5495 lt!2260973)))) (ite c!987263 (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (Context!9991 call!423616)) (h!69458 s!2326)))))

(declare-fun b!5624290 () Bool)

(declare-fun e!3466928 () (InoxSet Context!9990))

(declare-fun call!423621 () (InoxSet Context!9990))

(assert (=> b!5624290 (= e!3466928 ((_ map or) call!423618 call!423621))))

(declare-fun bm!423612 () Bool)

(declare-fun call!423619 () (InoxSet Context!9990))

(assert (=> bm!423612 (= call!423621 call!423619)))

(declare-fun b!5624291 () Bool)

(declare-fun e!3466924 () Bool)

(assert (=> b!5624291 (= e!3466924 (nullable!5643 (regOne!31734 (h!69456 (exprs!5495 lt!2260973)))))))

(declare-fun bm!423613 () Bool)

(declare-fun call!423617 () List!63132)

(assert (=> bm!423613 (= call!423617 call!423616)))

(declare-fun b!5624293 () Bool)

(declare-fun e!3466926 () (InoxSet Context!9990))

(assert (=> b!5624293 (= e!3466926 (store ((as const (Array Context!9990 Bool)) false) (Context!9991 (t!376422 (exprs!5495 lt!2260973))) true))))

(declare-fun b!5624294 () Bool)

(declare-fun c!987265 () Bool)

(assert (=> b!5624294 (= c!987265 ((_ is Star!15611) (h!69456 (exprs!5495 lt!2260973))))))

(declare-fun e!3466929 () (InoxSet Context!9990))

(declare-fun e!3466927 () (InoxSet Context!9990))

(assert (=> b!5624294 (= e!3466929 e!3466927)))

(declare-fun b!5624295 () Bool)

(assert (=> b!5624295 (= e!3466927 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987264 () Bool)

(declare-fun c!987262 () Bool)

(declare-fun bm!423614 () Bool)

(assert (=> bm!423614 (= call!423616 ($colon$colon!1663 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973)))) (ite (or c!987262 c!987264) (regTwo!31734 (h!69456 (exprs!5495 lt!2260973))) (h!69456 (exprs!5495 lt!2260973)))))))

(declare-fun b!5624296 () Bool)

(declare-fun call!423620 () (InoxSet Context!9990))

(assert (=> b!5624296 (= e!3466927 call!423620)))

(declare-fun b!5624297 () Bool)

(assert (=> b!5624297 (= e!3466929 call!423620)))

(declare-fun b!5624298 () Bool)

(assert (=> b!5624298 (= e!3466928 e!3466929)))

(assert (=> b!5624298 (= c!987264 ((_ is Concat!24456) (h!69456 (exprs!5495 lt!2260973))))))

(declare-fun d!1776961 () Bool)

(declare-fun c!987261 () Bool)

(assert (=> d!1776961 (= c!987261 (and ((_ is ElementMatch!15611) (h!69456 (exprs!5495 lt!2260973))) (= (c!986945 (h!69456 (exprs!5495 lt!2260973))) (h!69458 s!2326))))))

(assert (=> d!1776961 (= (derivationStepZipperDown!953 (h!69456 (exprs!5495 lt!2260973)) (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (h!69458 s!2326)) e!3466926)))

(declare-fun b!5624292 () Bool)

(declare-fun e!3466925 () (InoxSet Context!9990))

(assert (=> b!5624292 (= e!3466926 e!3466925)))

(assert (=> b!5624292 (= c!987263 ((_ is Union!15611) (h!69456 (exprs!5495 lt!2260973))))))

(declare-fun bm!423615 () Bool)

(assert (=> bm!423615 (= call!423620 call!423621)))

(declare-fun b!5624299 () Bool)

(assert (=> b!5624299 (= e!3466925 ((_ map or) call!423619 call!423618))))

(declare-fun b!5624300 () Bool)

(assert (=> b!5624300 (= c!987262 e!3466924)))

(declare-fun res!2382157 () Bool)

(assert (=> b!5624300 (=> (not res!2382157) (not e!3466924))))

(assert (=> b!5624300 (= res!2382157 ((_ is Concat!24456) (h!69456 (exprs!5495 lt!2260973))))))

(assert (=> b!5624300 (= e!3466925 e!3466928)))

(declare-fun bm!423616 () Bool)

(assert (=> bm!423616 (= call!423619 (derivationStepZipperDown!953 (ite c!987263 (regOne!31735 (h!69456 (exprs!5495 lt!2260973))) (ite c!987262 (regTwo!31734 (h!69456 (exprs!5495 lt!2260973))) (ite c!987264 (regOne!31734 (h!69456 (exprs!5495 lt!2260973))) (reg!15940 (h!69456 (exprs!5495 lt!2260973)))))) (ite (or c!987263 c!987262) (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (Context!9991 call!423617)) (h!69458 s!2326)))))

(assert (= (and d!1776961 c!987261) b!5624293))

(assert (= (and d!1776961 (not c!987261)) b!5624292))

(assert (= (and b!5624292 c!987263) b!5624299))

(assert (= (and b!5624292 (not c!987263)) b!5624300))

(assert (= (and b!5624300 res!2382157) b!5624291))

(assert (= (and b!5624300 c!987262) b!5624290))

(assert (= (and b!5624300 (not c!987262)) b!5624298))

(assert (= (and b!5624298 c!987264) b!5624297))

(assert (= (and b!5624298 (not c!987264)) b!5624294))

(assert (= (and b!5624294 c!987265) b!5624296))

(assert (= (and b!5624294 (not c!987265)) b!5624295))

(assert (= (or b!5624297 b!5624296) bm!423613))

(assert (= (or b!5624297 b!5624296) bm!423615))

(assert (= (or b!5624290 bm!423613) bm!423614))

(assert (= (or b!5624290 bm!423615) bm!423612))

(assert (= (or b!5624299 b!5624290) bm!423611))

(assert (= (or b!5624299 bm!423612) bm!423616))

(declare-fun m!6597112 () Bool)

(assert (=> b!5624291 m!6597112))

(declare-fun m!6597114 () Bool)

(assert (=> bm!423616 m!6597114))

(declare-fun m!6597116 () Bool)

(assert (=> bm!423611 m!6597116))

(declare-fun m!6597118 () Bool)

(assert (=> b!5624293 m!6597118))

(declare-fun m!6597120 () Bool)

(assert (=> bm!423614 m!6597120))

(assert (=> bm!423444 d!1776961))

(declare-fun d!1776963 () Bool)

(assert (=> d!1776963 true))

(assert (=> d!1776963 true))

(declare-fun res!2382158 () Bool)

(assert (=> d!1776963 (= (choose!42598 lambda!301958) res!2382158)))

(assert (=> d!1776673 d!1776963))

(declare-fun bs!1302126 () Bool)

(declare-fun d!1776965 () Bool)

(assert (= bs!1302126 (and d!1776965 d!1776823)))

(declare-fun lambda!302043 () Int)

(assert (=> bs!1302126 (= lambda!302043 lambda!302030)))

(declare-fun bs!1302127 () Bool)

(assert (= bs!1302127 (and d!1776965 d!1776687)))

(assert (=> bs!1302127 (= lambda!302043 lambda!301996)))

(declare-fun bs!1302128 () Bool)

(assert (= bs!1302128 (and d!1776965 d!1776867)))

(assert (=> bs!1302128 (= lambda!302043 lambda!302033)))

(declare-fun bs!1302129 () Bool)

(assert (= bs!1302129 (and d!1776965 d!1776869)))

(assert (=> bs!1302129 (= lambda!302043 lambda!302034)))

(declare-fun bs!1302130 () Bool)

(assert (= bs!1302130 (and d!1776965 d!1776745)))

(assert (=> bs!1302130 (= lambda!302043 lambda!302013)))

(declare-fun bs!1302131 () Bool)

(assert (= bs!1302131 (and d!1776965 d!1776815)))

(assert (=> bs!1302131 (= lambda!302043 lambda!302026)))

(declare-fun bs!1302132 () Bool)

(assert (= bs!1302132 (and d!1776965 d!1776769)))

(assert (=> bs!1302132 (= lambda!302043 lambda!302016)))

(declare-fun bs!1302133 () Bool)

(assert (= bs!1302133 (and d!1776965 d!1776697)))

(assert (=> bs!1302133 (= lambda!302043 lambda!302002)))

(declare-fun bs!1302134 () Bool)

(assert (= bs!1302134 (and d!1776965 d!1776689)))

(assert (=> bs!1302134 (= lambda!302043 lambda!301999)))

(assert (=> d!1776965 (= (inv!82274 (h!69457 (t!376423 zl!343))) (forall!14768 (exprs!5495 (h!69457 (t!376423 zl!343))) lambda!302043))))

(declare-fun bs!1302135 () Bool)

(assert (= bs!1302135 d!1776965))

(declare-fun m!6597122 () Bool)

(assert (=> bs!1302135 m!6597122))

(assert (=> b!5623905 d!1776965))

(declare-fun d!1776967 () Bool)

(assert (=> d!1776967 (= (isEmptyLang!1164 lt!2261023) ((_ is EmptyLang!15611) lt!2261023))))

(assert (=> b!5623515 d!1776967))

(declare-fun b!5624301 () Bool)

(declare-fun e!3466932 () (InoxSet Context!9990))

(declare-fun e!3466930 () (InoxSet Context!9990))

(assert (=> b!5624301 (= e!3466932 e!3466930)))

(declare-fun c!987267 () Bool)

(assert (=> b!5624301 (= c!987267 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973))))))))

(declare-fun b!5624302 () Bool)

(declare-fun e!3466931 () Bool)

(assert (=> b!5624302 (= e!3466931 (nullable!5643 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973)))))))))

(declare-fun b!5624303 () Bool)

(declare-fun call!423622 () (InoxSet Context!9990))

(assert (=> b!5624303 (= e!3466932 ((_ map or) call!423622 (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973)))))) (h!69458 s!2326))))))

(declare-fun b!5624304 () Bool)

(assert (=> b!5624304 (= e!3466930 ((as const (Array Context!9990 Bool)) false))))

(declare-fun bm!423617 () Bool)

(assert (=> bm!423617 (= call!423622 (derivationStepZipperDown!953 (h!69456 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973))))) (Context!9991 (t!376422 (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973)))))) (h!69458 s!2326)))))

(declare-fun b!5624305 () Bool)

(assert (=> b!5624305 (= e!3466930 call!423622)))

(declare-fun d!1776969 () Bool)

(declare-fun c!987266 () Bool)

(assert (=> d!1776969 (= c!987266 e!3466931)))

(declare-fun res!2382159 () Bool)

(assert (=> d!1776969 (=> (not res!2382159) (not e!3466931))))

(assert (=> d!1776969 (= res!2382159 ((_ is Cons!63008) (exprs!5495 (Context!9991 (t!376422 (exprs!5495 lt!2260973))))))))

(assert (=> d!1776969 (= (derivationStepZipperUp!879 (Context!9991 (t!376422 (exprs!5495 lt!2260973))) (h!69458 s!2326)) e!3466932)))

(assert (= (and d!1776969 res!2382159) b!5624302))

(assert (= (and d!1776969 c!987266) b!5624303))

(assert (= (and d!1776969 (not c!987266)) b!5624301))

(assert (= (and b!5624301 c!987267) b!5624305))

(assert (= (and b!5624301 (not c!987267)) b!5624304))

(assert (= (or b!5624303 b!5624305) bm!423617))

(declare-fun m!6597124 () Bool)

(assert (=> b!5624302 m!6597124))

(declare-fun m!6597126 () Bool)

(assert (=> b!5624303 m!6597126))

(declare-fun m!6597128 () Bool)

(assert (=> bm!423617 m!6597128))

(assert (=> b!5623554 d!1776969))

(declare-fun d!1776971 () Bool)

(declare-fun res!2382164 () Bool)

(declare-fun e!3466937 () Bool)

(assert (=> d!1776971 (=> res!2382164 e!3466937)))

(assert (=> d!1776971 (= res!2382164 ((_ is Nil!63009) lt!2261035))))

(assert (=> d!1776971 (= (noDuplicate!1576 lt!2261035) e!3466937)))

(declare-fun b!5624310 () Bool)

(declare-fun e!3466938 () Bool)

(assert (=> b!5624310 (= e!3466937 e!3466938)))

(declare-fun res!2382165 () Bool)

(assert (=> b!5624310 (=> (not res!2382165) (not e!3466938))))

(declare-fun contains!19824 (List!63133 Context!9990) Bool)

(assert (=> b!5624310 (= res!2382165 (not (contains!19824 (t!376423 lt!2261035) (h!69457 lt!2261035))))))

(declare-fun b!5624311 () Bool)

(assert (=> b!5624311 (= e!3466938 (noDuplicate!1576 (t!376423 lt!2261035)))))

(assert (= (and d!1776971 (not res!2382164)) b!5624310))

(assert (= (and b!5624310 res!2382165) b!5624311))

(declare-fun m!6597130 () Bool)

(assert (=> b!5624310 m!6597130))

(declare-fun m!6597132 () Bool)

(assert (=> b!5624311 m!6597132))

(assert (=> d!1776701 d!1776971))

(declare-fun d!1776973 () Bool)

(declare-fun e!3466946 () Bool)

(assert (=> d!1776973 e!3466946))

(declare-fun res!2382171 () Bool)

(assert (=> d!1776973 (=> (not res!2382171) (not e!3466946))))

(declare-fun res!2382170 () List!63133)

(assert (=> d!1776973 (= res!2382171 (noDuplicate!1576 res!2382170))))

(declare-fun e!3466945 () Bool)

(assert (=> d!1776973 e!3466945))

(assert (=> d!1776973 (= (choose!42601 z!1189) res!2382170)))

(declare-fun b!5624319 () Bool)

(declare-fun e!3466947 () Bool)

(declare-fun tp!1557161 () Bool)

(assert (=> b!5624319 (= e!3466947 tp!1557161)))

(declare-fun b!5624318 () Bool)

(declare-fun tp!1557160 () Bool)

(assert (=> b!5624318 (= e!3466945 (and (inv!82274 (h!69457 res!2382170)) e!3466947 tp!1557160))))

(declare-fun b!5624320 () Bool)

(assert (=> b!5624320 (= e!3466946 (= (content!11385 res!2382170) z!1189))))

(assert (= b!5624318 b!5624319))

(assert (= (and d!1776973 ((_ is Cons!63009) res!2382170)) b!5624318))

(assert (= (and d!1776973 res!2382171) b!5624320))

(declare-fun m!6597134 () Bool)

(assert (=> d!1776973 m!6597134))

(declare-fun m!6597136 () Bool)

(assert (=> b!5624318 m!6597136))

(declare-fun m!6597138 () Bool)

(assert (=> b!5624320 m!6597138))

(assert (=> d!1776701 d!1776973))

(declare-fun call!423625 () (InoxSet Context!9990))

(declare-fun call!423623 () List!63132)

(declare-fun c!987270 () Bool)

(declare-fun bm!423618 () Bool)

(assert (=> bm!423618 (= call!423625 (derivationStepZipperDown!953 (ite c!987270 (regTwo!31735 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (regOne!31734 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))) (ite c!987270 (ite c!987101 lt!2260973 (Context!9991 call!423497)) (Context!9991 call!423623)) (h!69458 s!2326)))))

(declare-fun b!5624321 () Bool)

(declare-fun e!3466952 () (InoxSet Context!9990))

(declare-fun call!423628 () (InoxSet Context!9990))

(assert (=> b!5624321 (= e!3466952 ((_ map or) call!423625 call!423628))))

(declare-fun bm!423619 () Bool)

(declare-fun call!423626 () (InoxSet Context!9990))

(assert (=> bm!423619 (= call!423628 call!423626)))

(declare-fun b!5624322 () Bool)

(declare-fun e!3466948 () Bool)

(assert (=> b!5624322 (= e!3466948 (nullable!5643 (regOne!31734 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))))))

(declare-fun bm!423620 () Bool)

(declare-fun call!423624 () List!63132)

(assert (=> bm!423620 (= call!423624 call!423623)))

(declare-fun b!5624324 () Bool)

(declare-fun e!3466950 () (InoxSet Context!9990))

(assert (=> b!5624324 (= e!3466950 (store ((as const (Array Context!9990 Bool)) false) (ite c!987101 lt!2260973 (Context!9991 call!423497)) true))))

(declare-fun b!5624325 () Bool)

(declare-fun c!987272 () Bool)

(assert (=> b!5624325 (= c!987272 ((_ is Star!15611) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))))))

(declare-fun e!3466953 () (InoxSet Context!9990))

(declare-fun e!3466951 () (InoxSet Context!9990))

(assert (=> b!5624325 (= e!3466953 e!3466951)))

(declare-fun b!5624326 () Bool)

(assert (=> b!5624326 (= e!3466951 ((as const (Array Context!9990 Bool)) false))))

(declare-fun c!987271 () Bool)

(declare-fun bm!423621 () Bool)

(declare-fun c!987269 () Bool)

(assert (=> bm!423621 (= call!423623 ($colon$colon!1663 (exprs!5495 (ite c!987101 lt!2260973 (Context!9991 call!423497))) (ite (or c!987269 c!987271) (regTwo!31734 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))))))

(declare-fun b!5624327 () Bool)

(declare-fun call!423627 () (InoxSet Context!9990))

(assert (=> b!5624327 (= e!3466951 call!423627)))

(declare-fun b!5624328 () Bool)

(assert (=> b!5624328 (= e!3466953 call!423627)))

(declare-fun b!5624329 () Bool)

(assert (=> b!5624329 (= e!3466952 e!3466953)))

(assert (=> b!5624329 (= c!987271 ((_ is Concat!24456) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))))))

(declare-fun c!987268 () Bool)

(declare-fun d!1776975 () Bool)

(assert (=> d!1776975 (= c!987268 (and ((_ is ElementMatch!15611) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (= (c!986945 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (h!69458 s!2326))))))

(assert (=> d!1776975 (= (derivationStepZipperDown!953 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))) (ite c!987101 lt!2260973 (Context!9991 call!423497)) (h!69458 s!2326)) e!3466950)))

(declare-fun b!5624323 () Bool)

(declare-fun e!3466949 () (InoxSet Context!9990))

(assert (=> b!5624323 (= e!3466950 e!3466949)))

(assert (=> b!5624323 (= c!987270 ((_ is Union!15611) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))))))

(declare-fun bm!423622 () Bool)

(assert (=> bm!423622 (= call!423627 call!423628)))

(declare-fun b!5624330 () Bool)

(assert (=> b!5624330 (= e!3466949 ((_ map or) call!423626 call!423625))))

(declare-fun b!5624331 () Bool)

(assert (=> b!5624331 (= c!987269 e!3466948)))

(declare-fun res!2382172 () Bool)

(assert (=> b!5624331 (=> (not res!2382172) (not e!3466948))))

(assert (=> b!5624331 (= res!2382172 ((_ is Concat!24456) (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))))))

(assert (=> b!5624331 (= e!3466949 e!3466952)))

(declare-fun bm!423623 () Bool)

(assert (=> bm!423623 (= call!423626 (derivationStepZipperDown!953 (ite c!987270 (regOne!31735 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (ite c!987269 (regTwo!31734 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (ite c!987271 (regOne!31734 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292))))) (reg!15940 (ite c!987101 (regTwo!31735 (regTwo!31734 (regOne!31734 r!7292))) (regOne!31734 (regTwo!31734 (regOne!31734 r!7292)))))))) (ite (or c!987270 c!987269) (ite c!987101 lt!2260973 (Context!9991 call!423497)) (Context!9991 call!423624)) (h!69458 s!2326)))))

(assert (= (and d!1776975 c!987268) b!5624324))

(assert (= (and d!1776975 (not c!987268)) b!5624323))

(assert (= (and b!5624323 c!987270) b!5624330))

(assert (= (and b!5624323 (not c!987270)) b!5624331))

(assert (= (and b!5624331 res!2382172) b!5624322))

(assert (= (and b!5624331 c!987269) b!5624321))

(assert (= (and b!5624331 (not c!987269)) b!5624329))

(assert (= (and b!5624329 c!987271) b!5624328))

(assert (= (and b!5624329 (not c!987271)) b!5624325))

(assert (= (and b!5624325 c!987272) b!5624327))

(assert (= (and b!5624325 (not c!987272)) b!5624326))

(assert (= (or b!5624328 b!5624327) bm!423620))

(assert (= (or b!5624328 b!5624327) bm!423622))

(assert (= (or b!5624321 bm!423620) bm!423621))

(assert (= (or b!5624321 bm!423622) bm!423619))

(assert (= (or b!5624330 b!5624321) bm!423618))

(assert (= (or b!5624330 bm!423619) bm!423623))

(declare-fun m!6597140 () Bool)

(assert (=> b!5624322 m!6597140))

(declare-fun m!6597142 () Bool)

(assert (=> bm!423623 m!6597142))

(declare-fun m!6597144 () Bool)

(assert (=> bm!423618 m!6597144))

(declare-fun m!6597146 () Bool)

(assert (=> b!5624324 m!6597146))

(declare-fun m!6597148 () Bool)

(assert (=> bm!423621 m!6597148))

(assert (=> bm!423492 d!1776975))

(declare-fun b!5624332 () Bool)

(declare-fun res!2382173 () Bool)

(declare-fun e!3466955 () Bool)

(assert (=> b!5624332 (=> res!2382173 e!3466955)))

(assert (=> b!5624332 (= res!2382173 (not (isEmpty!34840 (tail!11064 (_1!36011 (get!21703 lt!2261009))))))))

(declare-fun b!5624333 () Bool)

(declare-fun res!2382175 () Bool)

(declare-fun e!3466960 () Bool)

(assert (=> b!5624333 (=> (not res!2382175) (not e!3466960))))

(declare-fun call!423629 () Bool)

(assert (=> b!5624333 (= res!2382175 (not call!423629))))

(declare-fun b!5624335 () Bool)

(declare-fun res!2382176 () Bool)

(declare-fun e!3466954 () Bool)

(assert (=> b!5624335 (=> res!2382176 e!3466954)))

(assert (=> b!5624335 (= res!2382176 e!3466960)))

(declare-fun res!2382179 () Bool)

(assert (=> b!5624335 (=> (not res!2382179) (not e!3466960))))

(declare-fun lt!2261084 () Bool)

(assert (=> b!5624335 (= res!2382179 lt!2261084)))

(declare-fun b!5624336 () Bool)

(declare-fun e!3466959 () Bool)

(assert (=> b!5624336 (= e!3466959 e!3466955)))

(declare-fun res!2382177 () Bool)

(assert (=> b!5624336 (=> res!2382177 e!3466955)))

(assert (=> b!5624336 (= res!2382177 call!423629)))

(declare-fun b!5624337 () Bool)

(declare-fun e!3466957 () Bool)

(assert (=> b!5624337 (= e!3466957 (nullable!5643 (regOne!31734 r!7292)))))

(declare-fun b!5624338 () Bool)

(assert (=> b!5624338 (= e!3466954 e!3466959)))

(declare-fun res!2382180 () Bool)

(assert (=> b!5624338 (=> (not res!2382180) (not e!3466959))))

(assert (=> b!5624338 (= res!2382180 (not lt!2261084))))

(declare-fun b!5624339 () Bool)

(declare-fun e!3466958 () Bool)

(assert (=> b!5624339 (= e!3466958 (= lt!2261084 call!423629))))

(declare-fun b!5624340 () Bool)

(declare-fun res!2382178 () Bool)

(assert (=> b!5624340 (=> res!2382178 e!3466954)))

(assert (=> b!5624340 (= res!2382178 (not ((_ is ElementMatch!15611) (regOne!31734 r!7292))))))

(declare-fun e!3466956 () Bool)

(assert (=> b!5624340 (= e!3466956 e!3466954)))

(declare-fun b!5624341 () Bool)

(declare-fun res!2382174 () Bool)

(assert (=> b!5624341 (=> (not res!2382174) (not e!3466960))))

(assert (=> b!5624341 (= res!2382174 (isEmpty!34840 (tail!11064 (_1!36011 (get!21703 lt!2261009)))))))

(declare-fun b!5624342 () Bool)

(assert (=> b!5624342 (= e!3466955 (not (= (head!11969 (_1!36011 (get!21703 lt!2261009))) (c!986945 (regOne!31734 r!7292)))))))

(declare-fun d!1776977 () Bool)

(assert (=> d!1776977 e!3466958))

(declare-fun c!987274 () Bool)

(assert (=> d!1776977 (= c!987274 ((_ is EmptyExpr!15611) (regOne!31734 r!7292)))))

(assert (=> d!1776977 (= lt!2261084 e!3466957)))

(declare-fun c!987273 () Bool)

(assert (=> d!1776977 (= c!987273 (isEmpty!34840 (_1!36011 (get!21703 lt!2261009))))))

(assert (=> d!1776977 (validRegex!7347 (regOne!31734 r!7292))))

(assert (=> d!1776977 (= (matchR!7796 (regOne!31734 r!7292) (_1!36011 (get!21703 lt!2261009))) lt!2261084)))

(declare-fun b!5624334 () Bool)

(assert (=> b!5624334 (= e!3466958 e!3466956)))

(declare-fun c!987275 () Bool)

(assert (=> b!5624334 (= c!987275 ((_ is EmptyLang!15611) (regOne!31734 r!7292)))))

(declare-fun bm!423624 () Bool)

(assert (=> bm!423624 (= call!423629 (isEmpty!34840 (_1!36011 (get!21703 lt!2261009))))))

(declare-fun b!5624343 () Bool)

(assert (=> b!5624343 (= e!3466957 (matchR!7796 (derivativeStep!4448 (regOne!31734 r!7292) (head!11969 (_1!36011 (get!21703 lt!2261009)))) (tail!11064 (_1!36011 (get!21703 lt!2261009)))))))

(declare-fun b!5624344 () Bool)

(assert (=> b!5624344 (= e!3466956 (not lt!2261084))))

(declare-fun b!5624345 () Bool)

(assert (=> b!5624345 (= e!3466960 (= (head!11969 (_1!36011 (get!21703 lt!2261009))) (c!986945 (regOne!31734 r!7292))))))

(assert (= (and d!1776977 c!987273) b!5624337))

(assert (= (and d!1776977 (not c!987273)) b!5624343))

(assert (= (and d!1776977 c!987274) b!5624339))

(assert (= (and d!1776977 (not c!987274)) b!5624334))

(assert (= (and b!5624334 c!987275) b!5624344))

(assert (= (and b!5624334 (not c!987275)) b!5624340))

(assert (= (and b!5624340 (not res!2382178)) b!5624335))

(assert (= (and b!5624335 res!2382179) b!5624333))

(assert (= (and b!5624333 res!2382175) b!5624341))

(assert (= (and b!5624341 res!2382174) b!5624345))

(assert (= (and b!5624335 (not res!2382176)) b!5624338))

(assert (= (and b!5624338 res!2382180) b!5624336))

(assert (= (and b!5624336 (not res!2382177)) b!5624332))

(assert (= (and b!5624332 (not res!2382173)) b!5624342))

(assert (= (or b!5624339 b!5624333 b!5624336) bm!423624))

(assert (=> b!5624337 m!6597042))

(declare-fun m!6597150 () Bool)

(assert (=> bm!423624 m!6597150))

(declare-fun m!6597152 () Bool)

(assert (=> b!5624345 m!6597152))

(declare-fun m!6597154 () Bool)

(assert (=> b!5624332 m!6597154))

(assert (=> b!5624332 m!6597154))

(declare-fun m!6597156 () Bool)

(assert (=> b!5624332 m!6597156))

(assert (=> b!5624342 m!6597152))

(assert (=> b!5624341 m!6597154))

(assert (=> b!5624341 m!6597154))

(assert (=> b!5624341 m!6597156))

(assert (=> b!5624343 m!6597152))

(assert (=> b!5624343 m!6597152))

(declare-fun m!6597158 () Bool)

(assert (=> b!5624343 m!6597158))

(assert (=> b!5624343 m!6597154))

(assert (=> b!5624343 m!6597158))

(assert (=> b!5624343 m!6597154))

(declare-fun m!6597160 () Bool)

(assert (=> b!5624343 m!6597160))

(assert (=> d!1776977 m!6597150))

(assert (=> d!1776977 m!6596398))

(assert (=> b!5623367 d!1776977))

(assert (=> b!5623367 d!1776901))

(declare-fun d!1776979 () Bool)

(assert (=> d!1776979 true))

(declare-fun setRes!37535 () Bool)

(assert (=> d!1776979 setRes!37535))

(declare-fun condSetEmpty!37535 () Bool)

(declare-fun res!2382183 () (InoxSet Context!9990))

(assert (=> d!1776979 (= condSetEmpty!37535 (= res!2382183 ((as const (Array Context!9990 Bool)) false)))))

(assert (=> d!1776979 (= (choose!42606 z!1189 lambda!301960) res!2382183)))

(declare-fun setIsEmpty!37535 () Bool)

(assert (=> setIsEmpty!37535 setRes!37535))

(declare-fun setElem!37535 () Context!9990)

(declare-fun setNonEmpty!37535 () Bool)

(declare-fun e!3466963 () Bool)

(declare-fun tp!1557166 () Bool)

(assert (=> setNonEmpty!37535 (= setRes!37535 (and tp!1557166 (inv!82274 setElem!37535) e!3466963))))

(declare-fun setRest!37535 () (InoxSet Context!9990))

(assert (=> setNonEmpty!37535 (= res!2382183 ((_ map or) (store ((as const (Array Context!9990 Bool)) false) setElem!37535 true) setRest!37535))))

(declare-fun b!5624348 () Bool)

(declare-fun tp!1557167 () Bool)

(assert (=> b!5624348 (= e!3466963 tp!1557167)))

(assert (= (and d!1776979 condSetEmpty!37535) setIsEmpty!37535))

(assert (= (and d!1776979 (not condSetEmpty!37535)) setNonEmpty!37535))

(assert (= setNonEmpty!37535 b!5624348))

(declare-fun m!6597162 () Bool)

(assert (=> setNonEmpty!37535 m!6597162))

(assert (=> d!1776731 d!1776979))

(assert (=> d!1776759 d!1776801))

(declare-fun d!1776981 () Bool)

(declare-fun c!987276 () Bool)

(assert (=> d!1776981 (= c!987276 (isEmpty!34840 (tail!11064 (t!376424 s!2326))))))

(declare-fun e!3466964 () Bool)

(assert (=> d!1776981 (= (matchZipper!1749 (derivationStepZipper!1700 lt!2260968 (head!11969 (t!376424 s!2326))) (tail!11064 (t!376424 s!2326))) e!3466964)))

(declare-fun b!5624349 () Bool)

(assert (=> b!5624349 (= e!3466964 (nullableZipper!1596 (derivationStepZipper!1700 lt!2260968 (head!11969 (t!376424 s!2326)))))))

(declare-fun b!5624350 () Bool)

(assert (=> b!5624350 (= e!3466964 (matchZipper!1749 (derivationStepZipper!1700 (derivationStepZipper!1700 lt!2260968 (head!11969 (t!376424 s!2326))) (head!11969 (tail!11064 (t!376424 s!2326)))) (tail!11064 (tail!11064 (t!376424 s!2326)))))))

(assert (= (and d!1776981 c!987276) b!5624349))

(assert (= (and d!1776981 (not c!987276)) b!5624350))

(assert (=> d!1776981 m!6596650))

(assert (=> d!1776981 m!6597066))

(assert (=> b!5624349 m!6596648))

(declare-fun m!6597164 () Bool)

(assert (=> b!5624349 m!6597164))

(assert (=> b!5624350 m!6596650))

(assert (=> b!5624350 m!6597070))

(assert (=> b!5624350 m!6596648))

(assert (=> b!5624350 m!6597070))

(declare-fun m!6597166 () Bool)

(assert (=> b!5624350 m!6597166))

(assert (=> b!5624350 m!6596650))

(assert (=> b!5624350 m!6597074))

(assert (=> b!5624350 m!6597166))

(assert (=> b!5624350 m!6597074))

(declare-fun m!6597168 () Bool)

(assert (=> b!5624350 m!6597168))

(assert (=> b!5623752 d!1776981))

(declare-fun bs!1302136 () Bool)

(declare-fun d!1776983 () Bool)

(assert (= bs!1302136 (and d!1776983 b!5623168)))

(declare-fun lambda!302044 () Int)

(assert (=> bs!1302136 (= (= (head!11969 (t!376424 s!2326)) (h!69458 s!2326)) (= lambda!302044 lambda!301960))))

(declare-fun bs!1302137 () Bool)

(assert (= bs!1302137 (and d!1776983 d!1776931)))

(assert (=> bs!1302137 (= lambda!302044 lambda!302041)))

(declare-fun bs!1302138 () Bool)

(assert (= bs!1302138 (and d!1776983 d!1776939)))

(assert (=> bs!1302138 (= lambda!302044 lambda!302042)))

(assert (=> d!1776983 true))

(assert (=> d!1776983 (= (derivationStepZipper!1700 lt!2260968 (head!11969 (t!376424 s!2326))) (flatMap!1224 lt!2260968 lambda!302044))))

(declare-fun bs!1302139 () Bool)

(assert (= bs!1302139 d!1776983))

(declare-fun m!6597170 () Bool)

(assert (=> bs!1302139 m!6597170))

(assert (=> b!5623752 d!1776983))

(assert (=> b!5623752 d!1776933))

(assert (=> b!5623752 d!1776935))

(declare-fun b!5624351 () Bool)

(declare-fun e!3466965 () Bool)

(declare-fun tp!1557168 () Bool)

(assert (=> b!5624351 (= e!3466965 (and tp_is_empty!40475 tp!1557168))))

(assert (=> b!5623898 (= tp!1557131 e!3466965)))

(assert (= (and b!5623898 ((_ is Cons!63010) (t!376424 (t!376424 s!2326)))) b!5624351))

(declare-fun condSetEmpty!37536 () Bool)

(assert (=> setNonEmpty!37532 (= condSetEmpty!37536 (= setRest!37532 ((as const (Array Context!9990 Bool)) false)))))

(declare-fun setRes!37536 () Bool)

(assert (=> setNonEmpty!37532 (= tp!1557154 setRes!37536)))

(declare-fun setIsEmpty!37536 () Bool)

(assert (=> setIsEmpty!37536 setRes!37536))

(declare-fun e!3466966 () Bool)

(declare-fun setNonEmpty!37536 () Bool)

(declare-fun tp!1557169 () Bool)

(declare-fun setElem!37536 () Context!9990)

(assert (=> setNonEmpty!37536 (= setRes!37536 (and tp!1557169 (inv!82274 setElem!37536) e!3466966))))

(declare-fun setRest!37536 () (InoxSet Context!9990))

(assert (=> setNonEmpty!37536 (= setRest!37532 ((_ map or) (store ((as const (Array Context!9990 Bool)) false) setElem!37536 true) setRest!37536))))

(declare-fun b!5624352 () Bool)

(declare-fun tp!1557170 () Bool)

(assert (=> b!5624352 (= e!3466966 tp!1557170)))

(assert (= (and setNonEmpty!37532 condSetEmpty!37536) setIsEmpty!37536))

(assert (= (and setNonEmpty!37532 (not condSetEmpty!37536)) setNonEmpty!37536))

(assert (= setNonEmpty!37536 b!5624352))

(declare-fun m!6597172 () Bool)

(assert (=> setNonEmpty!37536 m!6597172))

(declare-fun b!5624355 () Bool)

(declare-fun e!3466967 () Bool)

(declare-fun tp!1557174 () Bool)

(assert (=> b!5624355 (= e!3466967 tp!1557174)))

(declare-fun b!5624356 () Bool)

(declare-fun tp!1557171 () Bool)

(declare-fun tp!1557175 () Bool)

(assert (=> b!5624356 (= e!3466967 (and tp!1557171 tp!1557175))))

(declare-fun b!5624353 () Bool)

(assert (=> b!5624353 (= e!3466967 tp_is_empty!40475)))

(assert (=> b!5623912 (= tp!1557144 e!3466967)))

(declare-fun b!5624354 () Bool)

(declare-fun tp!1557172 () Bool)

(declare-fun tp!1557173 () Bool)

(assert (=> b!5624354 (= e!3466967 (and tp!1557172 tp!1557173))))

(assert (= (and b!5623912 ((_ is ElementMatch!15611) (regOne!31734 (regTwo!31735 r!7292)))) b!5624353))

(assert (= (and b!5623912 ((_ is Concat!24456) (regOne!31734 (regTwo!31735 r!7292)))) b!5624354))

(assert (= (and b!5623912 ((_ is Star!15611) (regOne!31734 (regTwo!31735 r!7292)))) b!5624355))

(assert (= (and b!5623912 ((_ is Union!15611) (regOne!31734 (regTwo!31735 r!7292)))) b!5624356))

(declare-fun b!5624359 () Bool)

(declare-fun e!3466968 () Bool)

(declare-fun tp!1557179 () Bool)

(assert (=> b!5624359 (= e!3466968 tp!1557179)))

(declare-fun b!5624360 () Bool)

(declare-fun tp!1557176 () Bool)

(declare-fun tp!1557180 () Bool)

(assert (=> b!5624360 (= e!3466968 (and tp!1557176 tp!1557180))))

(declare-fun b!5624357 () Bool)

(assert (=> b!5624357 (= e!3466968 tp_is_empty!40475)))

(assert (=> b!5623912 (= tp!1557145 e!3466968)))

(declare-fun b!5624358 () Bool)

(declare-fun tp!1557177 () Bool)

(declare-fun tp!1557178 () Bool)

(assert (=> b!5624358 (= e!3466968 (and tp!1557177 tp!1557178))))

(assert (= (and b!5623912 ((_ is ElementMatch!15611) (regTwo!31734 (regTwo!31735 r!7292)))) b!5624357))

(assert (= (and b!5623912 ((_ is Concat!24456) (regTwo!31734 (regTwo!31735 r!7292)))) b!5624358))

(assert (= (and b!5623912 ((_ is Star!15611) (regTwo!31734 (regTwo!31735 r!7292)))) b!5624359))

(assert (= (and b!5623912 ((_ is Union!15611) (regTwo!31734 (regTwo!31735 r!7292)))) b!5624360))

(declare-fun b!5624361 () Bool)

(declare-fun e!3466969 () Bool)

(declare-fun tp!1557181 () Bool)

(declare-fun tp!1557182 () Bool)

(assert (=> b!5624361 (= e!3466969 (and tp!1557181 tp!1557182))))

(assert (=> b!5623920 (= tp!1557155 e!3466969)))

(assert (= (and b!5623920 ((_ is Cons!63008) (exprs!5495 setElem!37532))) b!5624361))

(declare-fun b!5624364 () Bool)

(declare-fun e!3466970 () Bool)

(declare-fun tp!1557186 () Bool)

(assert (=> b!5624364 (= e!3466970 tp!1557186)))

(declare-fun b!5624365 () Bool)

(declare-fun tp!1557183 () Bool)

(declare-fun tp!1557187 () Bool)

(assert (=> b!5624365 (= e!3466970 (and tp!1557183 tp!1557187))))

(declare-fun b!5624362 () Bool)

(assert (=> b!5624362 (= e!3466970 tp_is_empty!40475)))

(assert (=> b!5623889 (= tp!1557119 e!3466970)))

(declare-fun b!5624363 () Bool)

(declare-fun tp!1557184 () Bool)

(declare-fun tp!1557185 () Bool)

(assert (=> b!5624363 (= e!3466970 (and tp!1557184 tp!1557185))))

(assert (= (and b!5623889 ((_ is ElementMatch!15611) (regOne!31735 (regOne!31734 r!7292)))) b!5624362))

(assert (= (and b!5623889 ((_ is Concat!24456) (regOne!31735 (regOne!31734 r!7292)))) b!5624363))

(assert (= (and b!5623889 ((_ is Star!15611) (regOne!31735 (regOne!31734 r!7292)))) b!5624364))

(assert (= (and b!5623889 ((_ is Union!15611) (regOne!31735 (regOne!31734 r!7292)))) b!5624365))

(declare-fun b!5624368 () Bool)

(declare-fun e!3466971 () Bool)

(declare-fun tp!1557191 () Bool)

(assert (=> b!5624368 (= e!3466971 tp!1557191)))

(declare-fun b!5624369 () Bool)

(declare-fun tp!1557188 () Bool)

(declare-fun tp!1557192 () Bool)

(assert (=> b!5624369 (= e!3466971 (and tp!1557188 tp!1557192))))

(declare-fun b!5624366 () Bool)

(assert (=> b!5624366 (= e!3466971 tp_is_empty!40475)))

(assert (=> b!5623889 (= tp!1557123 e!3466971)))

(declare-fun b!5624367 () Bool)

(declare-fun tp!1557189 () Bool)

(declare-fun tp!1557190 () Bool)

(assert (=> b!5624367 (= e!3466971 (and tp!1557189 tp!1557190))))

(assert (= (and b!5623889 ((_ is ElementMatch!15611) (regTwo!31735 (regOne!31734 r!7292)))) b!5624366))

(assert (= (and b!5623889 ((_ is Concat!24456) (regTwo!31735 (regOne!31734 r!7292)))) b!5624367))

(assert (= (and b!5623889 ((_ is Star!15611) (regTwo!31735 (regOne!31734 r!7292)))) b!5624368))

(assert (= (and b!5623889 ((_ is Union!15611) (regTwo!31735 (regOne!31734 r!7292)))) b!5624369))

(declare-fun b!5624372 () Bool)

(declare-fun e!3466972 () Bool)

(declare-fun tp!1557196 () Bool)

(assert (=> b!5624372 (= e!3466972 tp!1557196)))

(declare-fun b!5624373 () Bool)

(declare-fun tp!1557193 () Bool)

(declare-fun tp!1557197 () Bool)

(assert (=> b!5624373 (= e!3466972 (and tp!1557193 tp!1557197))))

(declare-fun b!5624370 () Bool)

(assert (=> b!5624370 (= e!3466972 tp_is_empty!40475)))

(assert (=> b!5623870 (= tp!1557100 e!3466972)))

(declare-fun b!5624371 () Bool)

(declare-fun tp!1557194 () Bool)

(declare-fun tp!1557195 () Bool)

(assert (=> b!5624371 (= e!3466972 (and tp!1557194 tp!1557195))))

(assert (= (and b!5623870 ((_ is ElementMatch!15611) (h!69456 (exprs!5495 setElem!37526)))) b!5624370))

(assert (= (and b!5623870 ((_ is Concat!24456) (h!69456 (exprs!5495 setElem!37526)))) b!5624371))

(assert (= (and b!5623870 ((_ is Star!15611) (h!69456 (exprs!5495 setElem!37526)))) b!5624372))

(assert (= (and b!5623870 ((_ is Union!15611) (h!69456 (exprs!5495 setElem!37526)))) b!5624373))

(declare-fun b!5624374 () Bool)

(declare-fun e!3466973 () Bool)

(declare-fun tp!1557198 () Bool)

(declare-fun tp!1557199 () Bool)

(assert (=> b!5624374 (= e!3466973 (and tp!1557198 tp!1557199))))

(assert (=> b!5623870 (= tp!1557101 e!3466973)))

(assert (= (and b!5623870 ((_ is Cons!63008) (t!376422 (exprs!5495 setElem!37526)))) b!5624374))

(declare-fun b!5624377 () Bool)

(declare-fun e!3466974 () Bool)

(declare-fun tp!1557203 () Bool)

(assert (=> b!5624377 (= e!3466974 tp!1557203)))

(declare-fun b!5624378 () Bool)

(declare-fun tp!1557200 () Bool)

(declare-fun tp!1557204 () Bool)

(assert (=> b!5624378 (= e!3466974 (and tp!1557200 tp!1557204))))

(declare-fun b!5624375 () Bool)

(assert (=> b!5624375 (= e!3466974 tp_is_empty!40475)))

(assert (=> b!5623887 (= tp!1557120 e!3466974)))

(declare-fun b!5624376 () Bool)

(declare-fun tp!1557201 () Bool)

(declare-fun tp!1557202 () Bool)

(assert (=> b!5624376 (= e!3466974 (and tp!1557201 tp!1557202))))

(assert (= (and b!5623887 ((_ is ElementMatch!15611) (regOne!31734 (regOne!31734 r!7292)))) b!5624375))

(assert (= (and b!5623887 ((_ is Concat!24456) (regOne!31734 (regOne!31734 r!7292)))) b!5624376))

(assert (= (and b!5623887 ((_ is Star!15611) (regOne!31734 (regOne!31734 r!7292)))) b!5624377))

(assert (= (and b!5623887 ((_ is Union!15611) (regOne!31734 (regOne!31734 r!7292)))) b!5624378))

(declare-fun b!5624381 () Bool)

(declare-fun e!3466975 () Bool)

(declare-fun tp!1557208 () Bool)

(assert (=> b!5624381 (= e!3466975 tp!1557208)))

(declare-fun b!5624382 () Bool)

(declare-fun tp!1557205 () Bool)

(declare-fun tp!1557209 () Bool)

(assert (=> b!5624382 (= e!3466975 (and tp!1557205 tp!1557209))))

(declare-fun b!5624379 () Bool)

(assert (=> b!5624379 (= e!3466975 tp_is_empty!40475)))

(assert (=> b!5623887 (= tp!1557121 e!3466975)))

(declare-fun b!5624380 () Bool)

(declare-fun tp!1557206 () Bool)

(declare-fun tp!1557207 () Bool)

(assert (=> b!5624380 (= e!3466975 (and tp!1557206 tp!1557207))))

(assert (= (and b!5623887 ((_ is ElementMatch!15611) (regTwo!31734 (regOne!31734 r!7292)))) b!5624379))

(assert (= (and b!5623887 ((_ is Concat!24456) (regTwo!31734 (regOne!31734 r!7292)))) b!5624380))

(assert (= (and b!5623887 ((_ is Star!15611) (regTwo!31734 (regOne!31734 r!7292)))) b!5624381))

(assert (= (and b!5623887 ((_ is Union!15611) (regTwo!31734 (regOne!31734 r!7292)))) b!5624382))

(declare-fun b!5624385 () Bool)

(declare-fun e!3466976 () Bool)

(declare-fun tp!1557213 () Bool)

(assert (=> b!5624385 (= e!3466976 tp!1557213)))

(declare-fun b!5624386 () Bool)

(declare-fun tp!1557210 () Bool)

(declare-fun tp!1557214 () Bool)

(assert (=> b!5624386 (= e!3466976 (and tp!1557210 tp!1557214))))

(declare-fun b!5624383 () Bool)

(assert (=> b!5624383 (= e!3466976 tp_is_empty!40475)))

(assert (=> b!5623888 (= tp!1557122 e!3466976)))

(declare-fun b!5624384 () Bool)

(declare-fun tp!1557211 () Bool)

(declare-fun tp!1557212 () Bool)

(assert (=> b!5624384 (= e!3466976 (and tp!1557211 tp!1557212))))

(assert (= (and b!5623888 ((_ is ElementMatch!15611) (reg!15940 (regOne!31734 r!7292)))) b!5624383))

(assert (= (and b!5623888 ((_ is Concat!24456) (reg!15940 (regOne!31734 r!7292)))) b!5624384))

(assert (= (and b!5623888 ((_ is Star!15611) (reg!15940 (regOne!31734 r!7292)))) b!5624385))

(assert (= (and b!5623888 ((_ is Union!15611) (reg!15940 (regOne!31734 r!7292)))) b!5624386))

(declare-fun b!5624389 () Bool)

(declare-fun e!3466977 () Bool)

(declare-fun tp!1557218 () Bool)

(assert (=> b!5624389 (= e!3466977 tp!1557218)))

(declare-fun b!5624390 () Bool)

(declare-fun tp!1557215 () Bool)

(declare-fun tp!1557219 () Bool)

(assert (=> b!5624390 (= e!3466977 (and tp!1557215 tp!1557219))))

(declare-fun b!5624387 () Bool)

(assert (=> b!5624387 (= e!3466977 tp_is_empty!40475)))

(assert (=> b!5623908 (= tp!1557139 e!3466977)))

(declare-fun b!5624388 () Bool)

(declare-fun tp!1557216 () Bool)

(declare-fun tp!1557217 () Bool)

(assert (=> b!5624388 (= e!3466977 (and tp!1557216 tp!1557217))))

(assert (= (and b!5623908 ((_ is ElementMatch!15611) (regOne!31734 (regOne!31735 r!7292)))) b!5624387))

(assert (= (and b!5623908 ((_ is Concat!24456) (regOne!31734 (regOne!31735 r!7292)))) b!5624388))

(assert (= (and b!5623908 ((_ is Star!15611) (regOne!31734 (regOne!31735 r!7292)))) b!5624389))

(assert (= (and b!5623908 ((_ is Union!15611) (regOne!31734 (regOne!31735 r!7292)))) b!5624390))

(declare-fun b!5624393 () Bool)

(declare-fun e!3466978 () Bool)

(declare-fun tp!1557223 () Bool)

(assert (=> b!5624393 (= e!3466978 tp!1557223)))

(declare-fun b!5624394 () Bool)

(declare-fun tp!1557220 () Bool)

(declare-fun tp!1557224 () Bool)

(assert (=> b!5624394 (= e!3466978 (and tp!1557220 tp!1557224))))

(declare-fun b!5624391 () Bool)

(assert (=> b!5624391 (= e!3466978 tp_is_empty!40475)))

(assert (=> b!5623908 (= tp!1557140 e!3466978)))

(declare-fun b!5624392 () Bool)

(declare-fun tp!1557221 () Bool)

(declare-fun tp!1557222 () Bool)

(assert (=> b!5624392 (= e!3466978 (and tp!1557221 tp!1557222))))

(assert (= (and b!5623908 ((_ is ElementMatch!15611) (regTwo!31734 (regOne!31735 r!7292)))) b!5624391))

(assert (= (and b!5623908 ((_ is Concat!24456) (regTwo!31734 (regOne!31735 r!7292)))) b!5624392))

(assert (= (and b!5623908 ((_ is Star!15611) (regTwo!31734 (regOne!31735 r!7292)))) b!5624393))

(assert (= (and b!5623908 ((_ is Union!15611) (regTwo!31734 (regOne!31735 r!7292)))) b!5624394))

(declare-fun b!5624397 () Bool)

(declare-fun e!3466979 () Bool)

(declare-fun tp!1557228 () Bool)

(assert (=> b!5624397 (= e!3466979 tp!1557228)))

(declare-fun b!5624398 () Bool)

(declare-fun tp!1557225 () Bool)

(declare-fun tp!1557229 () Bool)

(assert (=> b!5624398 (= e!3466979 (and tp!1557225 tp!1557229))))

(declare-fun b!5624395 () Bool)

(assert (=> b!5624395 (= e!3466979 tp_is_empty!40475)))

(assert (=> b!5623910 (= tp!1557138 e!3466979)))

(declare-fun b!5624396 () Bool)

(declare-fun tp!1557226 () Bool)

(declare-fun tp!1557227 () Bool)

(assert (=> b!5624396 (= e!3466979 (and tp!1557226 tp!1557227))))

(assert (= (and b!5623910 ((_ is ElementMatch!15611) (regOne!31735 (regOne!31735 r!7292)))) b!5624395))

(assert (= (and b!5623910 ((_ is Concat!24456) (regOne!31735 (regOne!31735 r!7292)))) b!5624396))

(assert (= (and b!5623910 ((_ is Star!15611) (regOne!31735 (regOne!31735 r!7292)))) b!5624397))

(assert (= (and b!5623910 ((_ is Union!15611) (regOne!31735 (regOne!31735 r!7292)))) b!5624398))

(declare-fun b!5624401 () Bool)

(declare-fun e!3466980 () Bool)

(declare-fun tp!1557233 () Bool)

(assert (=> b!5624401 (= e!3466980 tp!1557233)))

(declare-fun b!5624402 () Bool)

(declare-fun tp!1557230 () Bool)

(declare-fun tp!1557234 () Bool)

(assert (=> b!5624402 (= e!3466980 (and tp!1557230 tp!1557234))))

(declare-fun b!5624399 () Bool)

(assert (=> b!5624399 (= e!3466980 tp_is_empty!40475)))

(assert (=> b!5623910 (= tp!1557142 e!3466980)))

(declare-fun b!5624400 () Bool)

(declare-fun tp!1557231 () Bool)

(declare-fun tp!1557232 () Bool)

(assert (=> b!5624400 (= e!3466980 (and tp!1557231 tp!1557232))))

(assert (= (and b!5623910 ((_ is ElementMatch!15611) (regTwo!31735 (regOne!31735 r!7292)))) b!5624399))

(assert (= (and b!5623910 ((_ is Concat!24456) (regTwo!31735 (regOne!31735 r!7292)))) b!5624400))

(assert (= (and b!5623910 ((_ is Star!15611) (regTwo!31735 (regOne!31735 r!7292)))) b!5624401))

(assert (= (and b!5623910 ((_ is Union!15611) (regTwo!31735 (regOne!31735 r!7292)))) b!5624402))

(declare-fun b!5624405 () Bool)

(declare-fun e!3466981 () Bool)

(declare-fun tp!1557238 () Bool)

(assert (=> b!5624405 (= e!3466981 tp!1557238)))

(declare-fun b!5624406 () Bool)

(declare-fun tp!1557235 () Bool)

(declare-fun tp!1557239 () Bool)

(assert (=> b!5624406 (= e!3466981 (and tp!1557235 tp!1557239))))

(declare-fun b!5624403 () Bool)

(assert (=> b!5624403 (= e!3466981 tp_is_empty!40475)))

(assert (=> b!5623909 (= tp!1557141 e!3466981)))

(declare-fun b!5624404 () Bool)

(declare-fun tp!1557236 () Bool)

(declare-fun tp!1557237 () Bool)

(assert (=> b!5624404 (= e!3466981 (and tp!1557236 tp!1557237))))

(assert (= (and b!5623909 ((_ is ElementMatch!15611) (reg!15940 (regOne!31735 r!7292)))) b!5624403))

(assert (= (and b!5623909 ((_ is Concat!24456) (reg!15940 (regOne!31735 r!7292)))) b!5624404))

(assert (= (and b!5623909 ((_ is Star!15611) (reg!15940 (regOne!31735 r!7292)))) b!5624405))

(assert (= (and b!5623909 ((_ is Union!15611) (reg!15940 (regOne!31735 r!7292)))) b!5624406))

(declare-fun b!5624409 () Bool)

(declare-fun e!3466982 () Bool)

(declare-fun tp!1557243 () Bool)

(assert (=> b!5624409 (= e!3466982 tp!1557243)))

(declare-fun b!5624410 () Bool)

(declare-fun tp!1557240 () Bool)

(declare-fun tp!1557244 () Bool)

(assert (=> b!5624410 (= e!3466982 (and tp!1557240 tp!1557244))))

(declare-fun b!5624407 () Bool)

(assert (=> b!5624407 (= e!3466982 tp_is_empty!40475)))

(assert (=> b!5623885 (= tp!1557114 e!3466982)))

(declare-fun b!5624408 () Bool)

(declare-fun tp!1557241 () Bool)

(declare-fun tp!1557242 () Bool)

(assert (=> b!5624408 (= e!3466982 (and tp!1557241 tp!1557242))))

(assert (= (and b!5623885 ((_ is ElementMatch!15611) (regOne!31735 (reg!15940 r!7292)))) b!5624407))

(assert (= (and b!5623885 ((_ is Concat!24456) (regOne!31735 (reg!15940 r!7292)))) b!5624408))

(assert (= (and b!5623885 ((_ is Star!15611) (regOne!31735 (reg!15940 r!7292)))) b!5624409))

(assert (= (and b!5623885 ((_ is Union!15611) (regOne!31735 (reg!15940 r!7292)))) b!5624410))

(declare-fun b!5624413 () Bool)

(declare-fun e!3466983 () Bool)

(declare-fun tp!1557248 () Bool)

(assert (=> b!5624413 (= e!3466983 tp!1557248)))

(declare-fun b!5624414 () Bool)

(declare-fun tp!1557245 () Bool)

(declare-fun tp!1557249 () Bool)

(assert (=> b!5624414 (= e!3466983 (and tp!1557245 tp!1557249))))

(declare-fun b!5624411 () Bool)

(assert (=> b!5624411 (= e!3466983 tp_is_empty!40475)))

(assert (=> b!5623885 (= tp!1557118 e!3466983)))

(declare-fun b!5624412 () Bool)

(declare-fun tp!1557246 () Bool)

(declare-fun tp!1557247 () Bool)

(assert (=> b!5624412 (= e!3466983 (and tp!1557246 tp!1557247))))

(assert (= (and b!5623885 ((_ is ElementMatch!15611) (regTwo!31735 (reg!15940 r!7292)))) b!5624411))

(assert (= (and b!5623885 ((_ is Concat!24456) (regTwo!31735 (reg!15940 r!7292)))) b!5624412))

(assert (= (and b!5623885 ((_ is Star!15611) (regTwo!31735 (reg!15940 r!7292)))) b!5624413))

(assert (= (and b!5623885 ((_ is Union!15611) (regTwo!31735 (reg!15940 r!7292)))) b!5624414))

(declare-fun b!5624417 () Bool)

(declare-fun e!3466984 () Bool)

(declare-fun tp!1557253 () Bool)

(assert (=> b!5624417 (= e!3466984 tp!1557253)))

(declare-fun b!5624418 () Bool)

(declare-fun tp!1557250 () Bool)

(declare-fun tp!1557254 () Bool)

(assert (=> b!5624418 (= e!3466984 (and tp!1557250 tp!1557254))))

(declare-fun b!5624415 () Bool)

(assert (=> b!5624415 (= e!3466984 tp_is_empty!40475)))

(assert (=> b!5623915 (= tp!1557148 e!3466984)))

(declare-fun b!5624416 () Bool)

(declare-fun tp!1557251 () Bool)

(declare-fun tp!1557252 () Bool)

(assert (=> b!5624416 (= e!3466984 (and tp!1557251 tp!1557252))))

(assert (= (and b!5623915 ((_ is ElementMatch!15611) (h!69456 (exprs!5495 (h!69457 zl!343))))) b!5624415))

(assert (= (and b!5623915 ((_ is Concat!24456) (h!69456 (exprs!5495 (h!69457 zl!343))))) b!5624416))

(assert (= (and b!5623915 ((_ is Star!15611) (h!69456 (exprs!5495 (h!69457 zl!343))))) b!5624417))

(assert (= (and b!5623915 ((_ is Union!15611) (h!69456 (exprs!5495 (h!69457 zl!343))))) b!5624418))

(declare-fun b!5624419 () Bool)

(declare-fun e!3466985 () Bool)

(declare-fun tp!1557255 () Bool)

(declare-fun tp!1557256 () Bool)

(assert (=> b!5624419 (= e!3466985 (and tp!1557255 tp!1557256))))

(assert (=> b!5623915 (= tp!1557149 e!3466985)))

(assert (= (and b!5623915 ((_ is Cons!63008) (t!376422 (exprs!5495 (h!69457 zl!343))))) b!5624419))

(declare-fun b!5624422 () Bool)

(declare-fun e!3466986 () Bool)

(declare-fun tp!1557260 () Bool)

(assert (=> b!5624422 (= e!3466986 tp!1557260)))

(declare-fun b!5624423 () Bool)

(declare-fun tp!1557257 () Bool)

(declare-fun tp!1557261 () Bool)

(assert (=> b!5624423 (= e!3466986 (and tp!1557257 tp!1557261))))

(declare-fun b!5624420 () Bool)

(assert (=> b!5624420 (= e!3466986 tp_is_empty!40475)))

(assert (=> b!5623892 (= tp!1557127 e!3466986)))

(declare-fun b!5624421 () Bool)

(declare-fun tp!1557258 () Bool)

(declare-fun tp!1557259 () Bool)

(assert (=> b!5624421 (= e!3466986 (and tp!1557258 tp!1557259))))

(assert (= (and b!5623892 ((_ is ElementMatch!15611) (reg!15940 (regTwo!31734 r!7292)))) b!5624420))

(assert (= (and b!5623892 ((_ is Concat!24456) (reg!15940 (regTwo!31734 r!7292)))) b!5624421))

(assert (= (and b!5623892 ((_ is Star!15611) (reg!15940 (regTwo!31734 r!7292)))) b!5624422))

(assert (= (and b!5623892 ((_ is Union!15611) (reg!15940 (regTwo!31734 r!7292)))) b!5624423))

(declare-fun b!5624426 () Bool)

(declare-fun e!3466987 () Bool)

(declare-fun tp!1557265 () Bool)

(assert (=> b!5624426 (= e!3466987 tp!1557265)))

(declare-fun b!5624427 () Bool)

(declare-fun tp!1557262 () Bool)

(declare-fun tp!1557266 () Bool)

(assert (=> b!5624427 (= e!3466987 (and tp!1557262 tp!1557266))))

(declare-fun b!5624424 () Bool)

(assert (=> b!5624424 (= e!3466987 tp_is_empty!40475)))

(assert (=> b!5623891 (= tp!1557125 e!3466987)))

(declare-fun b!5624425 () Bool)

(declare-fun tp!1557263 () Bool)

(declare-fun tp!1557264 () Bool)

(assert (=> b!5624425 (= e!3466987 (and tp!1557263 tp!1557264))))

(assert (= (and b!5623891 ((_ is ElementMatch!15611) (regOne!31734 (regTwo!31734 r!7292)))) b!5624424))

(assert (= (and b!5623891 ((_ is Concat!24456) (regOne!31734 (regTwo!31734 r!7292)))) b!5624425))

(assert (= (and b!5623891 ((_ is Star!15611) (regOne!31734 (regTwo!31734 r!7292)))) b!5624426))

(assert (= (and b!5623891 ((_ is Union!15611) (regOne!31734 (regTwo!31734 r!7292)))) b!5624427))

(declare-fun b!5624430 () Bool)

(declare-fun e!3466988 () Bool)

(declare-fun tp!1557270 () Bool)

(assert (=> b!5624430 (= e!3466988 tp!1557270)))

(declare-fun b!5624431 () Bool)

(declare-fun tp!1557267 () Bool)

(declare-fun tp!1557271 () Bool)

(assert (=> b!5624431 (= e!3466988 (and tp!1557267 tp!1557271))))

(declare-fun b!5624428 () Bool)

(assert (=> b!5624428 (= e!3466988 tp_is_empty!40475)))

(assert (=> b!5623891 (= tp!1557126 e!3466988)))

(declare-fun b!5624429 () Bool)

(declare-fun tp!1557268 () Bool)

(declare-fun tp!1557269 () Bool)

(assert (=> b!5624429 (= e!3466988 (and tp!1557268 tp!1557269))))

(assert (= (and b!5623891 ((_ is ElementMatch!15611) (regTwo!31734 (regTwo!31734 r!7292)))) b!5624428))

(assert (= (and b!5623891 ((_ is Concat!24456) (regTwo!31734 (regTwo!31734 r!7292)))) b!5624429))

(assert (= (and b!5623891 ((_ is Star!15611) (regTwo!31734 (regTwo!31734 r!7292)))) b!5624430))

(assert (= (and b!5623891 ((_ is Union!15611) (regTwo!31734 (regTwo!31734 r!7292)))) b!5624431))

(declare-fun b!5624434 () Bool)

(declare-fun e!3466989 () Bool)

(declare-fun tp!1557275 () Bool)

(assert (=> b!5624434 (= e!3466989 tp!1557275)))

(declare-fun b!5624435 () Bool)

(declare-fun tp!1557272 () Bool)

(declare-fun tp!1557276 () Bool)

(assert (=> b!5624435 (= e!3466989 (and tp!1557272 tp!1557276))))

(declare-fun b!5624432 () Bool)

(assert (=> b!5624432 (= e!3466989 tp_is_empty!40475)))

(assert (=> b!5623884 (= tp!1557117 e!3466989)))

(declare-fun b!5624433 () Bool)

(declare-fun tp!1557273 () Bool)

(declare-fun tp!1557274 () Bool)

(assert (=> b!5624433 (= e!3466989 (and tp!1557273 tp!1557274))))

(assert (= (and b!5623884 ((_ is ElementMatch!15611) (reg!15940 (reg!15940 r!7292)))) b!5624432))

(assert (= (and b!5623884 ((_ is Concat!24456) (reg!15940 (reg!15940 r!7292)))) b!5624433))

(assert (= (and b!5623884 ((_ is Star!15611) (reg!15940 (reg!15940 r!7292)))) b!5624434))

(assert (= (and b!5623884 ((_ is Union!15611) (reg!15940 (reg!15940 r!7292)))) b!5624435))

(declare-fun b!5624438 () Bool)

(declare-fun e!3466990 () Bool)

(declare-fun tp!1557280 () Bool)

(assert (=> b!5624438 (= e!3466990 tp!1557280)))

(declare-fun b!5624439 () Bool)

(declare-fun tp!1557277 () Bool)

(declare-fun tp!1557281 () Bool)

(assert (=> b!5624439 (= e!3466990 (and tp!1557277 tp!1557281))))

(declare-fun b!5624436 () Bool)

(assert (=> b!5624436 (= e!3466990 tp_is_empty!40475)))

(assert (=> b!5623893 (= tp!1557124 e!3466990)))

(declare-fun b!5624437 () Bool)

(declare-fun tp!1557278 () Bool)

(declare-fun tp!1557279 () Bool)

(assert (=> b!5624437 (= e!3466990 (and tp!1557278 tp!1557279))))

(assert (= (and b!5623893 ((_ is ElementMatch!15611) (regOne!31735 (regTwo!31734 r!7292)))) b!5624436))

(assert (= (and b!5623893 ((_ is Concat!24456) (regOne!31735 (regTwo!31734 r!7292)))) b!5624437))

(assert (= (and b!5623893 ((_ is Star!15611) (regOne!31735 (regTwo!31734 r!7292)))) b!5624438))

(assert (= (and b!5623893 ((_ is Union!15611) (regOne!31735 (regTwo!31734 r!7292)))) b!5624439))

(declare-fun b!5624442 () Bool)

(declare-fun e!3466991 () Bool)

(declare-fun tp!1557285 () Bool)

(assert (=> b!5624442 (= e!3466991 tp!1557285)))

(declare-fun b!5624443 () Bool)

(declare-fun tp!1557282 () Bool)

(declare-fun tp!1557286 () Bool)

(assert (=> b!5624443 (= e!3466991 (and tp!1557282 tp!1557286))))

(declare-fun b!5624440 () Bool)

(assert (=> b!5624440 (= e!3466991 tp_is_empty!40475)))

(assert (=> b!5623893 (= tp!1557128 e!3466991)))

(declare-fun b!5624441 () Bool)

(declare-fun tp!1557283 () Bool)

(declare-fun tp!1557284 () Bool)

(assert (=> b!5624441 (= e!3466991 (and tp!1557283 tp!1557284))))

(assert (= (and b!5623893 ((_ is ElementMatch!15611) (regTwo!31735 (regTwo!31734 r!7292)))) b!5624440))

(assert (= (and b!5623893 ((_ is Concat!24456) (regTwo!31735 (regTwo!31734 r!7292)))) b!5624441))

(assert (= (and b!5623893 ((_ is Star!15611) (regTwo!31735 (regTwo!31734 r!7292)))) b!5624442))

(assert (= (and b!5623893 ((_ is Union!15611) (regTwo!31735 (regTwo!31734 r!7292)))) b!5624443))

(declare-fun b!5624446 () Bool)

(declare-fun e!3466992 () Bool)

(declare-fun tp!1557290 () Bool)

(assert (=> b!5624446 (= e!3466992 tp!1557290)))

(declare-fun b!5624447 () Bool)

(declare-fun tp!1557287 () Bool)

(declare-fun tp!1557291 () Bool)

(assert (=> b!5624447 (= e!3466992 (and tp!1557287 tp!1557291))))

(declare-fun b!5624444 () Bool)

(assert (=> b!5624444 (= e!3466992 tp_is_empty!40475)))

(assert (=> b!5623883 (= tp!1557115 e!3466992)))

(declare-fun b!5624445 () Bool)

(declare-fun tp!1557288 () Bool)

(declare-fun tp!1557289 () Bool)

(assert (=> b!5624445 (= e!3466992 (and tp!1557288 tp!1557289))))

(assert (= (and b!5623883 ((_ is ElementMatch!15611) (regOne!31734 (reg!15940 r!7292)))) b!5624444))

(assert (= (and b!5623883 ((_ is Concat!24456) (regOne!31734 (reg!15940 r!7292)))) b!5624445))

(assert (= (and b!5623883 ((_ is Star!15611) (regOne!31734 (reg!15940 r!7292)))) b!5624446))

(assert (= (and b!5623883 ((_ is Union!15611) (regOne!31734 (reg!15940 r!7292)))) b!5624447))

(declare-fun b!5624450 () Bool)

(declare-fun e!3466993 () Bool)

(declare-fun tp!1557295 () Bool)

(assert (=> b!5624450 (= e!3466993 tp!1557295)))

(declare-fun b!5624451 () Bool)

(declare-fun tp!1557292 () Bool)

(declare-fun tp!1557296 () Bool)

(assert (=> b!5624451 (= e!3466993 (and tp!1557292 tp!1557296))))

(declare-fun b!5624448 () Bool)

(assert (=> b!5624448 (= e!3466993 tp_is_empty!40475)))

(assert (=> b!5623883 (= tp!1557116 e!3466993)))

(declare-fun b!5624449 () Bool)

(declare-fun tp!1557293 () Bool)

(declare-fun tp!1557294 () Bool)

(assert (=> b!5624449 (= e!3466993 (and tp!1557293 tp!1557294))))

(assert (= (and b!5623883 ((_ is ElementMatch!15611) (regTwo!31734 (reg!15940 r!7292)))) b!5624448))

(assert (= (and b!5623883 ((_ is Concat!24456) (regTwo!31734 (reg!15940 r!7292)))) b!5624449))

(assert (= (and b!5623883 ((_ is Star!15611) (regTwo!31734 (reg!15940 r!7292)))) b!5624450))

(assert (= (and b!5623883 ((_ is Union!15611) (regTwo!31734 (reg!15940 r!7292)))) b!5624451))

(declare-fun b!5624452 () Bool)

(declare-fun e!3466994 () Bool)

(declare-fun tp!1557297 () Bool)

(declare-fun tp!1557298 () Bool)

(assert (=> b!5624452 (= e!3466994 (and tp!1557297 tp!1557298))))

(assert (=> b!5623906 (= tp!1557136 e!3466994)))

(assert (= (and b!5623906 ((_ is Cons!63008) (exprs!5495 (h!69457 (t!376423 zl!343))))) b!5624452))

(declare-fun b!5624455 () Bool)

(declare-fun e!3466995 () Bool)

(declare-fun tp!1557302 () Bool)

(assert (=> b!5624455 (= e!3466995 tp!1557302)))

(declare-fun b!5624456 () Bool)

(declare-fun tp!1557299 () Bool)

(declare-fun tp!1557303 () Bool)

(assert (=> b!5624456 (= e!3466995 (and tp!1557299 tp!1557303))))

(declare-fun b!5624453 () Bool)

(assert (=> b!5624453 (= e!3466995 tp_is_empty!40475)))

(assert (=> b!5623913 (= tp!1557146 e!3466995)))

(declare-fun b!5624454 () Bool)

(declare-fun tp!1557300 () Bool)

(declare-fun tp!1557301 () Bool)

(assert (=> b!5624454 (= e!3466995 (and tp!1557300 tp!1557301))))

(assert (= (and b!5623913 ((_ is ElementMatch!15611) (reg!15940 (regTwo!31735 r!7292)))) b!5624453))

(assert (= (and b!5623913 ((_ is Concat!24456) (reg!15940 (regTwo!31735 r!7292)))) b!5624454))

(assert (= (and b!5623913 ((_ is Star!15611) (reg!15940 (regTwo!31735 r!7292)))) b!5624455))

(assert (= (and b!5623913 ((_ is Union!15611) (reg!15940 (regTwo!31735 r!7292)))) b!5624456))

(declare-fun b!5624458 () Bool)

(declare-fun e!3466997 () Bool)

(declare-fun tp!1557304 () Bool)

(assert (=> b!5624458 (= e!3466997 tp!1557304)))

(declare-fun tp!1557305 () Bool)

(declare-fun b!5624457 () Bool)

(declare-fun e!3466996 () Bool)

(assert (=> b!5624457 (= e!3466996 (and (inv!82274 (h!69457 (t!376423 (t!376423 zl!343)))) e!3466997 tp!1557305))))

(assert (=> b!5623905 (= tp!1557137 e!3466996)))

(assert (= b!5624457 b!5624458))

(assert (= (and b!5623905 ((_ is Cons!63009) (t!376423 (t!376423 zl!343)))) b!5624457))

(declare-fun m!6597174 () Bool)

(assert (=> b!5624457 m!6597174))

(declare-fun b!5624461 () Bool)

(declare-fun e!3466998 () Bool)

(declare-fun tp!1557309 () Bool)

(assert (=> b!5624461 (= e!3466998 tp!1557309)))

(declare-fun b!5624462 () Bool)

(declare-fun tp!1557306 () Bool)

(declare-fun tp!1557310 () Bool)

(assert (=> b!5624462 (= e!3466998 (and tp!1557306 tp!1557310))))

(declare-fun b!5624459 () Bool)

(assert (=> b!5624459 (= e!3466998 tp_is_empty!40475)))

(assert (=> b!5623914 (= tp!1557143 e!3466998)))

(declare-fun b!5624460 () Bool)

(declare-fun tp!1557307 () Bool)

(declare-fun tp!1557308 () Bool)

(assert (=> b!5624460 (= e!3466998 (and tp!1557307 tp!1557308))))

(assert (= (and b!5623914 ((_ is ElementMatch!15611) (regOne!31735 (regTwo!31735 r!7292)))) b!5624459))

(assert (= (and b!5623914 ((_ is Concat!24456) (regOne!31735 (regTwo!31735 r!7292)))) b!5624460))

(assert (= (and b!5623914 ((_ is Star!15611) (regOne!31735 (regTwo!31735 r!7292)))) b!5624461))

(assert (= (and b!5623914 ((_ is Union!15611) (regOne!31735 (regTwo!31735 r!7292)))) b!5624462))

(declare-fun b!5624465 () Bool)

(declare-fun e!3466999 () Bool)

(declare-fun tp!1557314 () Bool)

(assert (=> b!5624465 (= e!3466999 tp!1557314)))

(declare-fun b!5624466 () Bool)

(declare-fun tp!1557311 () Bool)

(declare-fun tp!1557315 () Bool)

(assert (=> b!5624466 (= e!3466999 (and tp!1557311 tp!1557315))))

(declare-fun b!5624463 () Bool)

(assert (=> b!5624463 (= e!3466999 tp_is_empty!40475)))

(assert (=> b!5623914 (= tp!1557147 e!3466999)))

(declare-fun b!5624464 () Bool)

(declare-fun tp!1557312 () Bool)

(declare-fun tp!1557313 () Bool)

(assert (=> b!5624464 (= e!3466999 (and tp!1557312 tp!1557313))))

(assert (= (and b!5623914 ((_ is ElementMatch!15611) (regTwo!31735 (regTwo!31735 r!7292)))) b!5624463))

(assert (= (and b!5623914 ((_ is Concat!24456) (regTwo!31735 (regTwo!31735 r!7292)))) b!5624464))

(assert (= (and b!5623914 ((_ is Star!15611) (regTwo!31735 (regTwo!31735 r!7292)))) b!5624465))

(assert (= (and b!5623914 ((_ is Union!15611) (regTwo!31735 (regTwo!31735 r!7292)))) b!5624466))

(declare-fun b_lambda!212759 () Bool)

(assert (= b_lambda!212755 (or d!1776769 b_lambda!212759)))

(declare-fun bs!1302140 () Bool)

(declare-fun d!1776985 () Bool)

(assert (= bs!1302140 (and d!1776985 d!1776769)))

(assert (=> bs!1302140 (= (dynLambda!24641 lambda!302016 (h!69456 (exprs!5495 (h!69457 zl!343)))) (validRegex!7347 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(declare-fun m!6597176 () Bool)

(assert (=> bs!1302140 m!6597176))

(assert (=> b!5624079 d!1776985))

(declare-fun b_lambda!212761 () Bool)

(assert (= b_lambda!212747 (or b!5623168 b_lambda!212761)))

(assert (=> d!1776807 d!1776783))

(declare-fun b_lambda!212763 () Bool)

(assert (= b_lambda!212757 (or d!1776687 b_lambda!212763)))

(declare-fun bs!1302141 () Bool)

(declare-fun d!1776987 () Bool)

(assert (= bs!1302141 (and d!1776987 d!1776687)))

(assert (=> bs!1302141 (= (dynLambda!24641 lambda!301996 (h!69456 (unfocusZipperList!1039 zl!343))) (validRegex!7347 (h!69456 (unfocusZipperList!1039 zl!343))))))

(declare-fun m!6597178 () Bool)

(assert (=> bs!1302141 m!6597178))

(assert (=> b!5624186 d!1776987))

(declare-fun b_lambda!212765 () Bool)

(assert (= b_lambda!212749 (or d!1776697 b_lambda!212765)))

(declare-fun bs!1302142 () Bool)

(declare-fun d!1776989 () Bool)

(assert (= bs!1302142 (and d!1776989 d!1776697)))

(assert (=> bs!1302142 (= (dynLambda!24641 lambda!302002 (h!69456 (exprs!5495 setElem!37526))) (validRegex!7347 (h!69456 (exprs!5495 setElem!37526))))))

(declare-fun m!6597180 () Bool)

(assert (=> bs!1302142 m!6597180))

(assert (=> b!5623958 d!1776989))

(declare-fun b_lambda!212767 () Bool)

(assert (= b_lambda!212751 (or d!1776745 b_lambda!212767)))

(declare-fun bs!1302143 () Bool)

(declare-fun d!1776991 () Bool)

(assert (= bs!1302143 (and d!1776991 d!1776745)))

(assert (=> bs!1302143 (= (dynLambda!24641 lambda!302013 (h!69456 (exprs!5495 (h!69457 zl!343)))) (validRegex!7347 (h!69456 (exprs!5495 (h!69457 zl!343)))))))

(assert (=> bs!1302143 m!6597176))

(assert (=> b!5624010 d!1776991))

(declare-fun b_lambda!212769 () Bool)

(assert (= b_lambda!212753 (or d!1776689 b_lambda!212769)))

(declare-fun bs!1302144 () Bool)

(declare-fun d!1776993 () Bool)

(assert (= bs!1302144 (and d!1776993 d!1776689)))

(assert (=> bs!1302144 (= (dynLambda!24641 lambda!301999 (h!69456 lt!2261029)) (validRegex!7347 (h!69456 lt!2261029)))))

(declare-fun m!6597182 () Bool)

(assert (=> bs!1302144 m!6597182))

(assert (=> b!5624015 d!1776993))

(check-sat (not bm!423521) (not bm!423616) (not bm!423623) (not b!5624360) (not bm!423602) (not b!5624247) (not b!5624111) (not b!5624369) (not b!5624364) (not b!5624341) (not b!5624465) (not bm!423577) (not b!5624445) (not d!1776871) (not d!1776917) (not d!1776869) (not b!5624141) (not b!5624080) (not b!5624406) (not b!5624389) (not b!5624350) (not b!5624343) (not bm!423546) (not b!5624345) (not b!5624376) (not b!5624106) (not b_lambda!212759) (not d!1776817) (not b!5624255) (not b!5624443) (not b!5624455) (not b!5624457) (not bm!423527) (not d!1776919) (not bm!423562) (not b!5624441) (not d!1776823) (not b!5624070) (not b!5624422) (not b!5624352) (not b!5624394) (not d!1776983) (not b!5624451) (not b!5624302) (not b!5624000) (not b!5624464) (not b!5624248) (not b_lambda!212745) (not bm!423558) (not b!5624363) (not d!1776787) (not d!1776821) (not d!1776981) (not setNonEmpty!37535) (not b!5624442) (not b!5623966) (not b!5624412) (not b!5624354) (not b!5624023) (not b!5624419) (not b!5624237) (not b!5624382) (not b!5624242) (not d!1776925) (not b!5624201) (not b!5624060) tp_is_empty!40475 (not d!1776815) (not d!1776843) (not bm!423571) (not b!5624251) (not b!5624437) (not b!5624177) (not b!5624404) (not d!1776851) (not b!5624427) (not bs!1302142) (not bm!423567) (not b!5624014) (not bm!423574) (not d!1776845) (not b!5624122) (not bm!423530) (not bm!423534) (not bs!1302141) (not d!1776793) (not b_lambda!212763) (not b!5624397) (not b!5624337) (not b!5624303) (not b!5624116) (not b!5624024) (not setNonEmpty!37536) (not b!5624446) (not b!5624163) (not b!5624398) (not b!5624318) (not d!1776887) (not bm!423618) (not bm!423529) (not b!5624108) (not bs!1302140) (not b!5624110) (not b!5623967) (not b!5624433) (not b!5624438) (not bm!423582) (not d!1776937) (not bm!423559) (not bm!423553) (not b!5624373) (not bm!423599) (not b!5624342) (not b!5624133) (not bm!423569) (not b!5623983) (not b!5624319) (not b!5624374) (not d!1776939) (not bm!423595) (not b!5624461) (not bm!423605) (not b!5624409) (not b!5624271) (not bm!423611) (not b!5624359) (not b_lambda!212761) (not bm!423600) (not b!5624410) (not bm!423585) (not bm!423597) (not b!5624431) (not b!5624105) (not b!5624311) (not bm!423598) (not bm!423601) (not b!5624322) (not b!5623968) (not b_lambda!212765) (not b!5624193) (not b!5624372) (not b!5624128) (not b!5624456) (not b!5624426) (not bm!423561) (not b!5624355) (not b!5624418) (not b!5624320) (not bm!423535) (not b!5624466) (not b!5624019) (not b!5624188) (not b!5624393) (not bs!1302144) (not b!5624175) (not b!5624460) (not b!5624197) (not bm!423540) (not bm!423524) (not bm!423545) (not bm!423621) (not b!5624425) (not b!5624449) (not b!5624381) (not b!5624256) (not d!1776841) (not bm!423573) (not b!5624198) (not d!1776839) (not b!5624139) (not b!5624021) (not bm!423552) (not d!1776867) (not b!5624228) (not bm!423614) (not d!1776929) (not b!5624234) (not b!5624454) (not bm!423531) (not bm!423624) (not b!5624138) (not b!5624142) (not d!1776789) (not b!5624392) (not b!5624112) (not b!5623979) (not bm!423579) (not b!5624115) (not b!5624452) (not b!5624462) (not bm!423565) (not b!5624378) (not b!5624250) (not bm!423584) (not d!1776927) (not b!5624349) (not d!1776819) (not b!5624368) (not b!5624233) (not b!5624351) (not b!5624390) (not b!5624016) (not b!5623974) (not b!5624377) (not bm!423550) (not b!5624386) (not b!5624164) (not b!5623984) (not b!5624252) (not b!5624358) (not b!5624026) (not b!5623985) (not b!5624400) (not b!5623987) (not b!5624417) (not d!1776965) (not b!5624101) (not b!5624365) (not d!1776907) (not b!5623964) (not b!5624102) (not b!5623959) (not b!5624371) (not b!5624405) (not b!5624126) (not d!1776931) (not b!5624421) (not b!5623929) (not b!5624429) (not bm!423532) (not bm!423538) (not b!5624435) (not b_lambda!212767) (not b!5624388) (not b!5624011) (not d!1776891) (not bm!423570) (not bm!423581) (not b!5624385) (not b!5624199) (not b!5624361) (not d!1776797) (not bm!423556) (not d!1776807) (not b!5624396) (not b!5624152) (not b!5623965) (not b!5624367) (not bm!423610) (not b!5623969) (not bm!423568) (not b!5624348) (not b!5623939) (not b!5624310) (not bm!423580) (not b!5624450) (not b!5624384) (not b!5624447) (not bm!423607) (not d!1776977) (not bm!423608) (not b!5624356) (not b!5624022) (not bs!1302143) (not b!5624049) (not d!1776893) (not b!5624401) (not b!5624332) (not b!5623990) (not d!1776899) (not d!1776973) (not b!5623962) (not bm!423523) (not b!5624413) (not b!5624402) (not b!5624291) (not d!1776791) (not bm!423617) (not d!1776895) (not b!5624430) (not b!5624269) (not b!5624187) (not b!5624434) (not b!5624380) (not b!5624416) (not b!5624408) (not d!1776785) (not d!1776873) (not d!1776889) (not b!5624439) (not b!5624423) (not b!5623988) (not bm!423547) (not b!5623951) (not b!5624414) (not b!5624020) (not b!5624137) (not d!1776837) (not b!5623950) (not b_lambda!212769) (not b!5624246) (not b!5624082) (not b!5624281) (not d!1776849) (not b!5624171) (not b!5624458))
(check-sat)
