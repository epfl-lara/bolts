; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632090 () Bool)

(assert start!632090)

(declare-fun b!6380204 () Bool)

(assert (=> b!6380204 true))

(assert (=> b!6380204 true))

(declare-fun lambda!351906 () Int)

(declare-fun lambda!351905 () Int)

(assert (=> b!6380204 (not (= lambda!351906 lambda!351905))))

(assert (=> b!6380204 true))

(assert (=> b!6380204 true))

(declare-fun b!6380195 () Bool)

(assert (=> b!6380195 true))

(declare-fun b!6380173 () Bool)

(declare-datatypes ((Unit!158511 0))(
  ( (Unit!158512) )
))
(declare-fun e!3873063 () Unit!158511)

(declare-fun Unit!158513 () Unit!158511)

(assert (=> b!6380173 (= e!3873063 Unit!158513)))

(declare-datatypes ((C!32860 0))(
  ( (C!32861 (val!26132 Int)) )
))
(declare-datatypes ((List!65184 0))(
  ( (Nil!65060) (Cons!65060 (h!71508 C!32860) (t!378788 List!65184)) )
))
(declare-fun s!2326 () List!65184)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16295 0))(
  ( (ElementMatch!16295 (c!1162404 C!32860)) (Concat!25140 (regOne!33102 Regex!16295) (regTwo!33102 Regex!16295)) (EmptyExpr!16295) (Star!16295 (reg!16624 Regex!16295)) (EmptyLang!16295) (Union!16295 (regOne!33103 Regex!16295) (regTwo!33103 Regex!16295)) )
))
(declare-datatypes ((List!65185 0))(
  ( (Nil!65061) (Cons!65061 (h!71509 Regex!16295) (t!378789 List!65185)) )
))
(declare-datatypes ((Context!11358 0))(
  ( (Context!11359 (exprs!6179 List!65185)) )
))
(declare-fun lt!2370240 () (InoxSet Context!11358))

(declare-fun lt!2370230 () Unit!158511)

(declare-fun lt!2370229 () (InoxSet Context!11358))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1126 ((InoxSet Context!11358) (InoxSet Context!11358) List!65184) Unit!158511)

(assert (=> b!6380173 (= lt!2370230 (lemmaZipperConcatMatchesSameAsBothZippers!1126 lt!2370229 lt!2370240 (t!378788 s!2326)))))

(declare-fun res!2624461 () Bool)

(declare-fun matchZipper!2307 ((InoxSet Context!11358) List!65184) Bool)

(assert (=> b!6380173 (= res!2624461 (matchZipper!2307 lt!2370229 (t!378788 s!2326)))))

(declare-fun e!3873062 () Bool)

(assert (=> b!6380173 (=> res!2624461 e!3873062)))

(assert (=> b!6380173 (= (matchZipper!2307 ((_ map or) lt!2370229 lt!2370240) (t!378788 s!2326)) e!3873062)))

(declare-fun b!6380174 () Bool)

(declare-fun e!3873051 () Bool)

(declare-fun e!3873059 () Bool)

(assert (=> b!6380174 (= e!3873051 e!3873059)))

(declare-fun res!2624454 () Bool)

(assert (=> b!6380174 (=> res!2624454 e!3873059)))

(declare-fun lt!2370219 () (InoxSet Context!11358))

(assert (=> b!6380174 (= res!2624454 (not (= lt!2370229 lt!2370219)))))

(declare-fun r!7292 () Regex!16295)

(declare-fun lt!2370227 () Context!11358)

(declare-fun derivationStepZipperDown!1543 (Regex!16295 Context!11358 C!32860) (InoxSet Context!11358))

(assert (=> b!6380174 (= lt!2370219 (derivationStepZipperDown!1543 (reg!16624 (regOne!33102 r!7292)) lt!2370227 (h!71508 s!2326)))))

(declare-fun lt!2370234 () List!65185)

(assert (=> b!6380174 (= lt!2370227 (Context!11359 lt!2370234))))

(declare-fun lt!2370220 () Regex!16295)

(declare-datatypes ((List!65186 0))(
  ( (Nil!65062) (Cons!65062 (h!71510 Context!11358) (t!378790 List!65186)) )
))
(declare-fun zl!343 () List!65186)

(assert (=> b!6380174 (= lt!2370234 (Cons!65061 lt!2370220 (t!378789 (exprs!6179 (h!71510 zl!343)))))))

(assert (=> b!6380174 (= lt!2370220 (Star!16295 (reg!16624 (regOne!33102 r!7292))))))

(declare-fun b!6380175 () Bool)

(declare-fun res!2624447 () Bool)

(declare-fun e!3873068 () Bool)

(assert (=> b!6380175 (=> res!2624447 e!3873068)))

(declare-fun lt!2370224 () (InoxSet Context!11358))

(declare-fun lt!2370216 () (InoxSet Context!11358))

(assert (=> b!6380175 (= res!2624447 (not (= (matchZipper!2307 lt!2370216 s!2326) (matchZipper!2307 lt!2370224 (t!378788 s!2326)))))))

(declare-fun b!6380176 () Bool)

(declare-fun e!3873060 () Bool)

(declare-fun e!3873065 () Bool)

(assert (=> b!6380176 (= e!3873060 e!3873065)))

(declare-fun res!2624460 () Bool)

(assert (=> b!6380176 (=> res!2624460 e!3873065)))

(declare-fun lt!2370221 () Context!11358)

(declare-fun unfocusZipper!2037 (List!65186) Regex!16295)

(assert (=> b!6380176 (= res!2624460 (not (= (unfocusZipper!2037 (Cons!65062 lt!2370221 Nil!65062)) (reg!16624 (regOne!33102 r!7292)))))))

(declare-fun lt!2370214 () (InoxSet Context!11358))

(declare-fun lambda!351907 () Int)

(declare-fun flatMap!1800 ((InoxSet Context!11358) Int) (InoxSet Context!11358))

(declare-fun derivationStepZipperUp!1469 (Context!11358 C!32860) (InoxSet Context!11358))

(assert (=> b!6380176 (= (flatMap!1800 lt!2370214 lambda!351907) (derivationStepZipperUp!1469 lt!2370227 (h!71508 s!2326)))))

(declare-fun lt!2370222 () Unit!158511)

(declare-fun lemmaFlatMapOnSingletonSet!1326 ((InoxSet Context!11358) Context!11358 Int) Unit!158511)

(assert (=> b!6380176 (= lt!2370222 (lemmaFlatMapOnSingletonSet!1326 lt!2370214 lt!2370227 lambda!351907))))

(declare-fun lt!2370238 () (InoxSet Context!11358))

(assert (=> b!6380176 (= (flatMap!1800 lt!2370238 lambda!351907) (derivationStepZipperUp!1469 lt!2370221 (h!71508 s!2326)))))

(declare-fun lt!2370210 () Unit!158511)

(assert (=> b!6380176 (= lt!2370210 (lemmaFlatMapOnSingletonSet!1326 lt!2370238 lt!2370221 lambda!351907))))

(declare-fun lt!2370237 () (InoxSet Context!11358))

(assert (=> b!6380176 (= lt!2370237 (derivationStepZipperUp!1469 lt!2370227 (h!71508 s!2326)))))

(declare-fun lt!2370232 () (InoxSet Context!11358))

(assert (=> b!6380176 (= lt!2370232 (derivationStepZipperUp!1469 lt!2370221 (h!71508 s!2326)))))

(assert (=> b!6380176 (= lt!2370214 (store ((as const (Array Context!11358 Bool)) false) lt!2370227 true))))

(assert (=> b!6380176 (= lt!2370238 (store ((as const (Array Context!11358 Bool)) false) lt!2370221 true))))

(assert (=> b!6380176 (= lt!2370221 (Context!11359 (Cons!65061 (reg!16624 (regOne!33102 r!7292)) Nil!65061)))))

(declare-fun b!6380177 () Bool)

(declare-fun res!2624450 () Bool)

(assert (=> b!6380177 (=> res!2624450 e!3873051)))

(get-info :version)

(assert (=> b!6380177 (= res!2624450 (or ((_ is Concat!25140) (regOne!33102 r!7292)) (not ((_ is Star!16295) (regOne!33102 r!7292)))))))

(declare-fun b!6380178 () Bool)

(declare-fun e!3873054 () Bool)

(declare-fun tp_is_empty!41843 () Bool)

(assert (=> b!6380178 (= e!3873054 tp_is_empty!41843)))

(declare-fun b!6380179 () Bool)

(declare-fun res!2624449 () Bool)

(declare-fun e!3873064 () Bool)

(assert (=> b!6380179 (=> res!2624449 e!3873064)))

(declare-fun validRegex!8031 (Regex!16295) Bool)

(assert (=> b!6380179 (= res!2624449 (not (validRegex!8031 lt!2370220)))))

(declare-fun b!6380180 () Bool)

(declare-fun res!2624464 () Bool)

(declare-fun e!3873052 () Bool)

(assert (=> b!6380180 (=> res!2624464 e!3873052)))

(declare-fun isEmpty!37187 (List!65186) Bool)

(assert (=> b!6380180 (= res!2624464 (not (isEmpty!37187 (t!378790 zl!343))))))

(declare-fun b!6380181 () Bool)

(declare-fun res!2624452 () Bool)

(assert (=> b!6380181 (=> res!2624452 e!3873052)))

(declare-fun generalisedConcat!1892 (List!65185) Regex!16295)

(assert (=> b!6380181 (= res!2624452 (not (= r!7292 (generalisedConcat!1892 (exprs!6179 (h!71510 zl!343))))))))

(declare-fun res!2624459 () Bool)

(declare-fun e!3873056 () Bool)

(assert (=> start!632090 (=> (not res!2624459) (not e!3873056))))

(assert (=> start!632090 (= res!2624459 (validRegex!8031 r!7292))))

(assert (=> start!632090 e!3873056))

(assert (=> start!632090 e!3873054))

(declare-fun condSetEmpty!43544 () Bool)

(declare-fun z!1189 () (InoxSet Context!11358))

(assert (=> start!632090 (= condSetEmpty!43544 (= z!1189 ((as const (Array Context!11358 Bool)) false)))))

(declare-fun setRes!43544 () Bool)

(assert (=> start!632090 setRes!43544))

(declare-fun e!3873050 () Bool)

(assert (=> start!632090 e!3873050))

(declare-fun e!3873067 () Bool)

(assert (=> start!632090 e!3873067))

(declare-fun b!6380182 () Bool)

(declare-fun e!3873066 () Bool)

(declare-fun nullable!6288 (Regex!16295) Bool)

(assert (=> b!6380182 (= e!3873066 (nullable!6288 (regOne!33102 (regOne!33102 r!7292))))))

(declare-fun b!6380183 () Bool)

(declare-fun tp!1775608 () Bool)

(assert (=> b!6380183 (= e!3873067 (and tp_is_empty!41843 tp!1775608))))

(declare-fun b!6380184 () Bool)

(declare-fun e!3873053 () Bool)

(declare-fun lt!2370239 () Bool)

(declare-fun lt!2370209 () Bool)

(assert (=> b!6380184 (= e!3873053 (or (not lt!2370239) lt!2370209))))

(declare-fun b!6380185 () Bool)

(assert (=> b!6380185 (= e!3873064 (validRegex!8031 (regTwo!33102 r!7292)))))

(declare-fun b!6380186 () Bool)

(declare-fun tp!1775607 () Bool)

(assert (=> b!6380186 (= e!3873054 tp!1775607)))

(declare-fun b!6380187 () Bool)

(declare-fun res!2624443 () Bool)

(assert (=> b!6380187 (=> res!2624443 e!3873051)))

(assert (=> b!6380187 (= res!2624443 e!3873066)))

(declare-fun res!2624466 () Bool)

(assert (=> b!6380187 (=> (not res!2624466) (not e!3873066))))

(assert (=> b!6380187 (= res!2624466 ((_ is Concat!25140) (regOne!33102 r!7292)))))

(declare-fun b!6380188 () Bool)

(declare-fun e!3873058 () Bool)

(assert (=> b!6380188 (= e!3873068 e!3873058)))

(declare-fun res!2624451 () Bool)

(assert (=> b!6380188 (=> res!2624451 e!3873058)))

(declare-fun lt!2370223 () Regex!16295)

(assert (=> b!6380188 (= res!2624451 (not (= r!7292 lt!2370223)))))

(assert (=> b!6380188 (= lt!2370223 (Concat!25140 lt!2370220 (regTwo!33102 r!7292)))))

(declare-fun tp!1775614 () Bool)

(declare-fun setNonEmpty!43544 () Bool)

(declare-fun e!3873061 () Bool)

(declare-fun setElem!43544 () Context!11358)

(declare-fun inv!83984 (Context!11358) Bool)

(assert (=> setNonEmpty!43544 (= setRes!43544 (and tp!1775614 (inv!83984 setElem!43544) e!3873061))))

(declare-fun setRest!43544 () (InoxSet Context!11358))

(assert (=> setNonEmpty!43544 (= z!1189 ((_ map or) (store ((as const (Array Context!11358 Bool)) false) setElem!43544 true) setRest!43544))))

(declare-fun b!6380189 () Bool)

(declare-fun tp!1775611 () Bool)

(assert (=> b!6380189 (= e!3873061 tp!1775611)))

(declare-fun b!6380190 () Bool)

(declare-fun Unit!158514 () Unit!158511)

(assert (=> b!6380190 (= e!3873063 Unit!158514)))

(declare-fun b!6380191 () Bool)

(declare-fun tp!1775606 () Bool)

(declare-fun e!3873049 () Bool)

(assert (=> b!6380191 (= e!3873050 (and (inv!83984 (h!71510 zl!343)) e!3873049 tp!1775606))))

(declare-fun b!6380192 () Bool)

(declare-fun res!2624453 () Bool)

(assert (=> b!6380192 (=> res!2624453 e!3873065)))

(assert (=> b!6380192 (= res!2624453 (not (= (unfocusZipper!2037 (Cons!65062 lt!2370227 Nil!65062)) lt!2370223)))))

(declare-fun b!6380193 () Bool)

(declare-fun res!2624458 () Bool)

(assert (=> b!6380193 (=> res!2624458 e!3873052)))

(assert (=> b!6380193 (= res!2624458 (or ((_ is EmptyExpr!16295) r!7292) ((_ is EmptyLang!16295) r!7292) ((_ is ElementMatch!16295) r!7292) ((_ is Union!16295) r!7292) (not ((_ is Concat!25140) r!7292))))))

(declare-fun b!6380194 () Bool)

(declare-fun e!3873055 () Bool)

(assert (=> b!6380194 (= e!3873056 e!3873055)))

(declare-fun res!2624446 () Bool)

(assert (=> b!6380194 (=> (not res!2624446) (not e!3873055))))

(declare-fun lt!2370235 () Regex!16295)

(assert (=> b!6380194 (= res!2624446 (= r!7292 lt!2370235))))

(assert (=> b!6380194 (= lt!2370235 (unfocusZipper!2037 zl!343))))

(declare-fun e!3873057 () Bool)

(assert (=> b!6380195 (= e!3873057 e!3873051)))

(declare-fun res!2624445 () Bool)

(assert (=> b!6380195 (=> res!2624445 e!3873051)))

(assert (=> b!6380195 (= res!2624445 (or (and ((_ is ElementMatch!16295) (regOne!33102 r!7292)) (= (c!1162404 (regOne!33102 r!7292)) (h!71508 s!2326))) ((_ is Union!16295) (regOne!33102 r!7292))))))

(declare-fun lt!2370236 () Unit!158511)

(assert (=> b!6380195 (= lt!2370236 e!3873063)))

(declare-fun c!1162403 () Bool)

(assert (=> b!6380195 (= c!1162403 (nullable!6288 (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(assert (=> b!6380195 (= (flatMap!1800 z!1189 lambda!351907) (derivationStepZipperUp!1469 (h!71510 zl!343) (h!71508 s!2326)))))

(declare-fun lt!2370226 () Unit!158511)

(assert (=> b!6380195 (= lt!2370226 (lemmaFlatMapOnSingletonSet!1326 z!1189 (h!71510 zl!343) lambda!351907))))

(declare-fun lt!2370208 () Context!11358)

(assert (=> b!6380195 (= lt!2370240 (derivationStepZipperUp!1469 lt!2370208 (h!71508 s!2326)))))

(assert (=> b!6380195 (= lt!2370229 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 (h!71510 zl!343))) lt!2370208 (h!71508 s!2326)))))

(assert (=> b!6380195 (= lt!2370208 (Context!11359 (t!378789 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun lt!2370212 () (InoxSet Context!11358))

(assert (=> b!6380195 (= lt!2370212 (derivationStepZipperUp!1469 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343))))) (h!71508 s!2326)))))

(declare-fun setIsEmpty!43544 () Bool)

(assert (=> setIsEmpty!43544 setRes!43544))

(declare-fun b!6380196 () Bool)

(declare-fun res!2624444 () Bool)

(assert (=> b!6380196 (=> (not res!2624444) (not e!3873056))))

(declare-fun toList!10079 ((InoxSet Context!11358)) List!65186)

(assert (=> b!6380196 (= res!2624444 (= (toList!10079 z!1189) zl!343))))

(declare-fun b!6380197 () Bool)

(assert (=> b!6380197 (= e!3873065 e!3873064)))

(declare-fun res!2624448 () Bool)

(assert (=> b!6380197 (=> res!2624448 e!3873064)))

(assert (=> b!6380197 (= res!2624448 (not lt!2370239))))

(assert (=> b!6380197 e!3873053))

(declare-fun res!2624465 () Bool)

(assert (=> b!6380197 (=> (not res!2624465) (not e!3873053))))

(declare-fun lt!2370211 () Regex!16295)

(declare-fun matchR!8478 (Regex!16295 List!65184) Bool)

(declare-fun matchRSpec!3396 (Regex!16295 List!65184) Bool)

(assert (=> b!6380197 (= res!2624465 (= (matchR!8478 lt!2370211 s!2326) (matchRSpec!3396 lt!2370211 s!2326)))))

(declare-fun lt!2370215 () Unit!158511)

(declare-fun mainMatchTheorem!3396 (Regex!16295 List!65184) Unit!158511)

(assert (=> b!6380197 (= lt!2370215 (mainMatchTheorem!3396 lt!2370211 s!2326))))

(declare-fun b!6380198 () Bool)

(assert (=> b!6380198 (= e!3873058 e!3873060)))

(declare-fun res!2624463 () Bool)

(assert (=> b!6380198 (=> res!2624463 e!3873060)))

(declare-fun lt!2370225 () Context!11358)

(assert (=> b!6380198 (= res!2624463 (not (= (unfocusZipper!2037 (Cons!65062 lt!2370225 Nil!65062)) lt!2370211)))))

(assert (=> b!6380198 (= lt!2370211 (Concat!25140 (reg!16624 (regOne!33102 r!7292)) lt!2370223))))

(declare-fun b!6380199 () Bool)

(declare-fun res!2624441 () Bool)

(assert (=> b!6380199 (=> res!2624441 e!3873068)))

(assert (=> b!6380199 (= res!2624441 (not (= lt!2370235 r!7292)))))

(declare-fun b!6380200 () Bool)

(declare-fun res!2624442 () Bool)

(assert (=> b!6380200 (=> res!2624442 e!3873052)))

(assert (=> b!6380200 (= res!2624442 (not ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380201 () Bool)

(declare-fun res!2624455 () Bool)

(assert (=> b!6380201 (=> res!2624455 e!3873057)))

(declare-fun isEmpty!37188 (List!65185) Bool)

(assert (=> b!6380201 (= res!2624455 (isEmpty!37188 (t!378789 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380202 () Bool)

(declare-fun tp!1775610 () Bool)

(declare-fun tp!1775612 () Bool)

(assert (=> b!6380202 (= e!3873054 (and tp!1775610 tp!1775612))))

(declare-fun b!6380203 () Bool)

(assert (=> b!6380203 (= e!3873059 e!3873068)))

(declare-fun res!2624462 () Bool)

(assert (=> b!6380203 (=> res!2624462 e!3873068)))

(assert (=> b!6380203 (= res!2624462 (not (= lt!2370224 lt!2370219)))))

(assert (=> b!6380203 (= (flatMap!1800 lt!2370216 lambda!351907) (derivationStepZipperUp!1469 lt!2370225 (h!71508 s!2326)))))

(declare-fun lt!2370233 () Unit!158511)

(assert (=> b!6380203 (= lt!2370233 (lemmaFlatMapOnSingletonSet!1326 lt!2370216 lt!2370225 lambda!351907))))

(declare-fun lt!2370231 () (InoxSet Context!11358))

(assert (=> b!6380203 (= lt!2370231 (derivationStepZipperUp!1469 lt!2370225 (h!71508 s!2326)))))

(declare-fun derivationStepZipper!2261 ((InoxSet Context!11358) C!32860) (InoxSet Context!11358))

(assert (=> b!6380203 (= lt!2370224 (derivationStepZipper!2261 lt!2370216 (h!71508 s!2326)))))

(assert (=> b!6380203 (= lt!2370216 (store ((as const (Array Context!11358 Bool)) false) lt!2370225 true))))

(assert (=> b!6380203 (= lt!2370225 (Context!11359 (Cons!65061 (reg!16624 (regOne!33102 r!7292)) lt!2370234)))))

(assert (=> b!6380204 (= e!3873052 e!3873057)))

(declare-fun res!2624456 () Bool)

(assert (=> b!6380204 (=> res!2624456 e!3873057)))

(declare-fun lt!2370213 () Bool)

(assert (=> b!6380204 (= res!2624456 (or (not (= lt!2370239 lt!2370213)) ((_ is Nil!65060) s!2326)))))

(declare-fun Exists!3365 (Int) Bool)

(assert (=> b!6380204 (= (Exists!3365 lambda!351905) (Exists!3365 lambda!351906))))

(declare-fun lt!2370228 () Unit!158511)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1902 (Regex!16295 Regex!16295 List!65184) Unit!158511)

(assert (=> b!6380204 (= lt!2370228 (lemmaExistCutMatchRandMatchRSpecEquivalent!1902 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326))))

(assert (=> b!6380204 (= lt!2370213 (Exists!3365 lambda!351905))))

(declare-datatypes ((tuple2!66548 0))(
  ( (tuple2!66549 (_1!36577 List!65184) (_2!36577 List!65184)) )
))
(declare-datatypes ((Option!16186 0))(
  ( (None!16185) (Some!16185 (v!52354 tuple2!66548)) )
))
(declare-fun isDefined!12889 (Option!16186) Bool)

(declare-fun findConcatSeparation!2600 (Regex!16295 Regex!16295 List!65184 List!65184 List!65184) Option!16186)

(assert (=> b!6380204 (= lt!2370213 (isDefined!12889 (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) Nil!65060 s!2326 s!2326)))))

(declare-fun lt!2370217 () Unit!158511)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2364 (Regex!16295 Regex!16295 List!65184) Unit!158511)

(assert (=> b!6380204 (= lt!2370217 (lemmaFindConcatSeparationEquivalentToExists!2364 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326))))

(declare-fun b!6380205 () Bool)

(declare-fun tp!1775613 () Bool)

(assert (=> b!6380205 (= e!3873049 tp!1775613)))

(declare-fun b!6380206 () Bool)

(assert (=> b!6380206 (= e!3873055 (not e!3873052))))

(declare-fun res!2624457 () Bool)

(assert (=> b!6380206 (=> res!2624457 e!3873052)))

(assert (=> b!6380206 (= res!2624457 (not ((_ is Cons!65062) zl!343)))))

(assert (=> b!6380206 (= lt!2370239 lt!2370209)))

(assert (=> b!6380206 (= lt!2370209 (matchRSpec!3396 r!7292 s!2326))))

(assert (=> b!6380206 (= lt!2370239 (matchR!8478 r!7292 s!2326))))

(declare-fun lt!2370218 () Unit!158511)

(assert (=> b!6380206 (= lt!2370218 (mainMatchTheorem!3396 r!7292 s!2326))))

(declare-fun b!6380207 () Bool)

(assert (=> b!6380207 (= e!3873062 (matchZipper!2307 lt!2370240 (t!378788 s!2326)))))

(declare-fun b!6380208 () Bool)

(declare-fun res!2624440 () Bool)

(assert (=> b!6380208 (=> res!2624440 e!3873052)))

(declare-fun generalisedUnion!2139 (List!65185) Regex!16295)

(declare-fun unfocusZipperList!1716 (List!65186) List!65185)

(assert (=> b!6380208 (= res!2624440 (not (= r!7292 (generalisedUnion!2139 (unfocusZipperList!1716 zl!343)))))))

(declare-fun b!6380209 () Bool)

(declare-fun tp!1775609 () Bool)

(declare-fun tp!1775605 () Bool)

(assert (=> b!6380209 (= e!3873054 (and tp!1775609 tp!1775605))))

(assert (= (and start!632090 res!2624459) b!6380196))

(assert (= (and b!6380196 res!2624444) b!6380194))

(assert (= (and b!6380194 res!2624446) b!6380206))

(assert (= (and b!6380206 (not res!2624457)) b!6380180))

(assert (= (and b!6380180 (not res!2624464)) b!6380181))

(assert (= (and b!6380181 (not res!2624452)) b!6380200))

(assert (= (and b!6380200 (not res!2624442)) b!6380208))

(assert (= (and b!6380208 (not res!2624440)) b!6380193))

(assert (= (and b!6380193 (not res!2624458)) b!6380204))

(assert (= (and b!6380204 (not res!2624456)) b!6380201))

(assert (= (and b!6380201 (not res!2624455)) b!6380195))

(assert (= (and b!6380195 c!1162403) b!6380173))

(assert (= (and b!6380195 (not c!1162403)) b!6380190))

(assert (= (and b!6380173 (not res!2624461)) b!6380207))

(assert (= (and b!6380195 (not res!2624445)) b!6380187))

(assert (= (and b!6380187 res!2624466) b!6380182))

(assert (= (and b!6380187 (not res!2624443)) b!6380177))

(assert (= (and b!6380177 (not res!2624450)) b!6380174))

(assert (= (and b!6380174 (not res!2624454)) b!6380203))

(assert (= (and b!6380203 (not res!2624462)) b!6380175))

(assert (= (and b!6380175 (not res!2624447)) b!6380199))

(assert (= (and b!6380199 (not res!2624441)) b!6380188))

(assert (= (and b!6380188 (not res!2624451)) b!6380198))

(assert (= (and b!6380198 (not res!2624463)) b!6380176))

(assert (= (and b!6380176 (not res!2624460)) b!6380192))

(assert (= (and b!6380192 (not res!2624453)) b!6380197))

(assert (= (and b!6380197 res!2624465) b!6380184))

(assert (= (and b!6380197 (not res!2624448)) b!6380179))

(assert (= (and b!6380179 (not res!2624449)) b!6380185))

(assert (= (and start!632090 ((_ is ElementMatch!16295) r!7292)) b!6380178))

(assert (= (and start!632090 ((_ is Concat!25140) r!7292)) b!6380202))

(assert (= (and start!632090 ((_ is Star!16295) r!7292)) b!6380186))

(assert (= (and start!632090 ((_ is Union!16295) r!7292)) b!6380209))

(assert (= (and start!632090 condSetEmpty!43544) setIsEmpty!43544))

(assert (= (and start!632090 (not condSetEmpty!43544)) setNonEmpty!43544))

(assert (= setNonEmpty!43544 b!6380189))

(assert (= b!6380191 b!6380205))

(assert (= (and start!632090 ((_ is Cons!65062) zl!343)) b!6380191))

(assert (= (and start!632090 ((_ is Cons!65060) s!2326)) b!6380183))

(declare-fun m!7180778 () Bool)

(assert (=> b!6380208 m!7180778))

(assert (=> b!6380208 m!7180778))

(declare-fun m!7180780 () Bool)

(assert (=> b!6380208 m!7180780))

(declare-fun m!7180782 () Bool)

(assert (=> b!6380173 m!7180782))

(declare-fun m!7180784 () Bool)

(assert (=> b!6380173 m!7180784))

(declare-fun m!7180786 () Bool)

(assert (=> b!6380173 m!7180786))

(declare-fun m!7180788 () Bool)

(assert (=> b!6380207 m!7180788))

(declare-fun m!7180790 () Bool)

(assert (=> b!6380198 m!7180790))

(declare-fun m!7180792 () Bool)

(assert (=> b!6380204 m!7180792))

(declare-fun m!7180794 () Bool)

(assert (=> b!6380204 m!7180794))

(declare-fun m!7180796 () Bool)

(assert (=> b!6380204 m!7180796))

(declare-fun m!7180798 () Bool)

(assert (=> b!6380204 m!7180798))

(declare-fun m!7180800 () Bool)

(assert (=> b!6380204 m!7180800))

(assert (=> b!6380204 m!7180794))

(assert (=> b!6380204 m!7180798))

(declare-fun m!7180802 () Bool)

(assert (=> b!6380204 m!7180802))

(declare-fun m!7180804 () Bool)

(assert (=> b!6380194 m!7180804))

(declare-fun m!7180806 () Bool)

(assert (=> b!6380182 m!7180806))

(declare-fun m!7180808 () Bool)

(assert (=> b!6380201 m!7180808))

(declare-fun m!7180810 () Bool)

(assert (=> b!6380191 m!7180810))

(declare-fun m!7180812 () Bool)

(assert (=> b!6380179 m!7180812))

(declare-fun m!7180814 () Bool)

(assert (=> b!6380175 m!7180814))

(declare-fun m!7180816 () Bool)

(assert (=> b!6380175 m!7180816))

(declare-fun m!7180818 () Bool)

(assert (=> b!6380181 m!7180818))

(declare-fun m!7180820 () Bool)

(assert (=> b!6380180 m!7180820))

(declare-fun m!7180822 () Bool)

(assert (=> b!6380197 m!7180822))

(declare-fun m!7180824 () Bool)

(assert (=> b!6380197 m!7180824))

(declare-fun m!7180826 () Bool)

(assert (=> b!6380197 m!7180826))

(declare-fun m!7180828 () Bool)

(assert (=> setNonEmpty!43544 m!7180828))

(declare-fun m!7180830 () Bool)

(assert (=> start!632090 m!7180830))

(declare-fun m!7180832 () Bool)

(assert (=> b!6380192 m!7180832))

(declare-fun m!7180834 () Bool)

(assert (=> b!6380176 m!7180834))

(declare-fun m!7180836 () Bool)

(assert (=> b!6380176 m!7180836))

(declare-fun m!7180838 () Bool)

(assert (=> b!6380176 m!7180838))

(declare-fun m!7180840 () Bool)

(assert (=> b!6380176 m!7180840))

(declare-fun m!7180842 () Bool)

(assert (=> b!6380176 m!7180842))

(declare-fun m!7180844 () Bool)

(assert (=> b!6380176 m!7180844))

(declare-fun m!7180846 () Bool)

(assert (=> b!6380176 m!7180846))

(declare-fun m!7180848 () Bool)

(assert (=> b!6380176 m!7180848))

(declare-fun m!7180850 () Bool)

(assert (=> b!6380176 m!7180850))

(declare-fun m!7180852 () Bool)

(assert (=> b!6380196 m!7180852))

(declare-fun m!7180854 () Bool)

(assert (=> b!6380195 m!7180854))

(declare-fun m!7180856 () Bool)

(assert (=> b!6380195 m!7180856))

(declare-fun m!7180858 () Bool)

(assert (=> b!6380195 m!7180858))

(declare-fun m!7180860 () Bool)

(assert (=> b!6380195 m!7180860))

(declare-fun m!7180862 () Bool)

(assert (=> b!6380195 m!7180862))

(declare-fun m!7180864 () Bool)

(assert (=> b!6380195 m!7180864))

(declare-fun m!7180866 () Bool)

(assert (=> b!6380195 m!7180866))

(declare-fun m!7180868 () Bool)

(assert (=> b!6380174 m!7180868))

(declare-fun m!7180870 () Bool)

(assert (=> b!6380203 m!7180870))

(declare-fun m!7180872 () Bool)

(assert (=> b!6380203 m!7180872))

(declare-fun m!7180874 () Bool)

(assert (=> b!6380203 m!7180874))

(declare-fun m!7180876 () Bool)

(assert (=> b!6380203 m!7180876))

(declare-fun m!7180878 () Bool)

(assert (=> b!6380203 m!7180878))

(declare-fun m!7180880 () Bool)

(assert (=> b!6380206 m!7180880))

(declare-fun m!7180882 () Bool)

(assert (=> b!6380206 m!7180882))

(declare-fun m!7180884 () Bool)

(assert (=> b!6380206 m!7180884))

(declare-fun m!7180886 () Bool)

(assert (=> b!6380185 m!7180886))

(check-sat (not b!6380174) (not b!6380196) (not b!6380183) (not b!6380206) (not start!632090) (not b!6380189) (not b!6380176) (not b!6380192) (not b!6380207) (not b!6380201) (not b!6380191) tp_is_empty!41843 (not b!6380180) (not b!6380182) (not b!6380202) (not b!6380181) (not setNonEmpty!43544) (not b!6380209) (not b!6380197) (not b!6380179) (not b!6380205) (not b!6380208) (not b!6380173) (not b!6380195) (not b!6380185) (not b!6380186) (not b!6380194) (not b!6380203) (not b!6380198) (not b!6380175) (not b!6380204))
(check-sat)
(get-model)

(declare-fun d!2000511 () Bool)

(assert (=> d!2000511 (= (isEmpty!37187 (t!378790 zl!343)) ((_ is Nil!65062) (t!378790 zl!343)))))

(assert (=> b!6380180 d!2000511))

(declare-fun d!2000515 () Bool)

(declare-fun lt!2370246 () Regex!16295)

(assert (=> d!2000515 (validRegex!8031 lt!2370246)))

(assert (=> d!2000515 (= lt!2370246 (generalisedUnion!2139 (unfocusZipperList!1716 (Cons!65062 lt!2370225 Nil!65062))))))

(assert (=> d!2000515 (= (unfocusZipper!2037 (Cons!65062 lt!2370225 Nil!65062)) lt!2370246)))

(declare-fun bs!1597055 () Bool)

(assert (= bs!1597055 d!2000515))

(declare-fun m!7180896 () Bool)

(assert (=> bs!1597055 m!7180896))

(declare-fun m!7180898 () Bool)

(assert (=> bs!1597055 m!7180898))

(assert (=> bs!1597055 m!7180898))

(declare-fun m!7180900 () Bool)

(assert (=> bs!1597055 m!7180900))

(assert (=> b!6380198 d!2000515))

(declare-fun c!1162416 () Bool)

(declare-fun bm!545172 () Bool)

(declare-fun c!1162415 () Bool)

(declare-fun call!545177 () Bool)

(assert (=> bm!545172 (= call!545177 (validRegex!8031 (ite c!1162416 (reg!16624 lt!2370220) (ite c!1162415 (regOne!33103 lt!2370220) (regOne!33102 lt!2370220)))))))

(declare-fun b!6380264 () Bool)

(declare-fun res!2624499 () Bool)

(declare-fun e!3873101 () Bool)

(assert (=> b!6380264 (=> res!2624499 e!3873101)))

(assert (=> b!6380264 (= res!2624499 (not ((_ is Concat!25140) lt!2370220)))))

(declare-fun e!3873106 () Bool)

(assert (=> b!6380264 (= e!3873106 e!3873101)))

(declare-fun b!6380265 () Bool)

(declare-fun res!2624496 () Bool)

(declare-fun e!3873103 () Bool)

(assert (=> b!6380265 (=> (not res!2624496) (not e!3873103))))

(declare-fun call!545179 () Bool)

(assert (=> b!6380265 (= res!2624496 call!545179)))

(assert (=> b!6380265 (= e!3873106 e!3873103)))

(declare-fun b!6380266 () Bool)

(declare-fun e!3873107 () Bool)

(declare-fun e!3873105 () Bool)

(assert (=> b!6380266 (= e!3873107 e!3873105)))

(declare-fun res!2624497 () Bool)

(assert (=> b!6380266 (= res!2624497 (not (nullable!6288 (reg!16624 lt!2370220))))))

(assert (=> b!6380266 (=> (not res!2624497) (not e!3873105))))

(declare-fun b!6380267 () Bool)

(declare-fun e!3873102 () Bool)

(declare-fun call!545178 () Bool)

(assert (=> b!6380267 (= e!3873102 call!545178)))

(declare-fun b!6380268 () Bool)

(assert (=> b!6380268 (= e!3873105 call!545177)))

(declare-fun b!6380269 () Bool)

(assert (=> b!6380269 (= e!3873107 e!3873106)))

(assert (=> b!6380269 (= c!1162415 ((_ is Union!16295) lt!2370220))))

(declare-fun b!6380270 () Bool)

(declare-fun e!3873104 () Bool)

(assert (=> b!6380270 (= e!3873104 e!3873107)))

(assert (=> b!6380270 (= c!1162416 ((_ is Star!16295) lt!2370220))))

(declare-fun bm!545174 () Bool)

(assert (=> bm!545174 (= call!545178 (validRegex!8031 (ite c!1162415 (regTwo!33103 lt!2370220) (regTwo!33102 lt!2370220))))))

(declare-fun b!6380271 () Bool)

(assert (=> b!6380271 (= e!3873103 call!545178)))

(declare-fun b!6380272 () Bool)

(assert (=> b!6380272 (= e!3873101 e!3873102)))

(declare-fun res!2624498 () Bool)

(assert (=> b!6380272 (=> (not res!2624498) (not e!3873102))))

(assert (=> b!6380272 (= res!2624498 call!545179)))

(declare-fun d!2000519 () Bool)

(declare-fun res!2624495 () Bool)

(assert (=> d!2000519 (=> res!2624495 e!3873104)))

(assert (=> d!2000519 (= res!2624495 ((_ is ElementMatch!16295) lt!2370220))))

(assert (=> d!2000519 (= (validRegex!8031 lt!2370220) e!3873104)))

(declare-fun bm!545173 () Bool)

(assert (=> bm!545173 (= call!545179 call!545177)))

(assert (= (and d!2000519 (not res!2624495)) b!6380270))

(assert (= (and b!6380270 c!1162416) b!6380266))

(assert (= (and b!6380270 (not c!1162416)) b!6380269))

(assert (= (and b!6380266 res!2624497) b!6380268))

(assert (= (and b!6380269 c!1162415) b!6380265))

(assert (= (and b!6380269 (not c!1162415)) b!6380264))

(assert (= (and b!6380265 res!2624496) b!6380271))

(assert (= (and b!6380264 (not res!2624499)) b!6380272))

(assert (= (and b!6380272 res!2624498) b!6380267))

(assert (= (or b!6380271 b!6380267) bm!545174))

(assert (= (or b!6380265 b!6380272) bm!545173))

(assert (= (or b!6380268 bm!545173) bm!545172))

(declare-fun m!7180930 () Bool)

(assert (=> bm!545172 m!7180930))

(declare-fun m!7180932 () Bool)

(assert (=> b!6380266 m!7180932))

(declare-fun m!7180934 () Bool)

(assert (=> bm!545174 m!7180934))

(assert (=> b!6380179 d!2000519))

(declare-fun b!6380324 () Bool)

(declare-fun res!2624535 () Bool)

(declare-fun e!3873137 () Bool)

(assert (=> b!6380324 (=> res!2624535 e!3873137)))

(assert (=> b!6380324 (= res!2624535 (not ((_ is ElementMatch!16295) lt!2370211)))))

(declare-fun e!3873139 () Bool)

(assert (=> b!6380324 (= e!3873139 e!3873137)))

(declare-fun b!6380325 () Bool)

(declare-fun e!3873138 () Bool)

(declare-fun e!3873140 () Bool)

(assert (=> b!6380325 (= e!3873138 e!3873140)))

(declare-fun res!2624534 () Bool)

(assert (=> b!6380325 (=> res!2624534 e!3873140)))

(declare-fun call!545182 () Bool)

(assert (=> b!6380325 (= res!2624534 call!545182)))

(declare-fun b!6380326 () Bool)

(declare-fun head!13081 (List!65184) C!32860)

(assert (=> b!6380326 (= e!3873140 (not (= (head!13081 s!2326) (c!1162404 lt!2370211))))))

(declare-fun b!6380327 () Bool)

(declare-fun res!2624538 () Bool)

(declare-fun e!3873136 () Bool)

(assert (=> b!6380327 (=> (not res!2624538) (not e!3873136))))

(declare-fun isEmpty!37191 (List!65184) Bool)

(declare-fun tail!12166 (List!65184) List!65184)

(assert (=> b!6380327 (= res!2624538 (isEmpty!37191 (tail!12166 s!2326)))))

(declare-fun b!6380328 () Bool)

(declare-fun res!2624537 () Bool)

(assert (=> b!6380328 (=> res!2624537 e!3873140)))

(assert (=> b!6380328 (= res!2624537 (not (isEmpty!37191 (tail!12166 s!2326))))))

(declare-fun b!6380329 () Bool)

(assert (=> b!6380329 (= e!3873136 (= (head!13081 s!2326) (c!1162404 lt!2370211)))))

(declare-fun b!6380330 () Bool)

(declare-fun e!3873135 () Bool)

(assert (=> b!6380330 (= e!3873135 (nullable!6288 lt!2370211))))

(declare-fun d!2000527 () Bool)

(declare-fun e!3873141 () Bool)

(assert (=> d!2000527 e!3873141))

(declare-fun c!1162427 () Bool)

(assert (=> d!2000527 (= c!1162427 ((_ is EmptyExpr!16295) lt!2370211))))

(declare-fun lt!2370271 () Bool)

(assert (=> d!2000527 (= lt!2370271 e!3873135)))

(declare-fun c!1162429 () Bool)

(assert (=> d!2000527 (= c!1162429 (isEmpty!37191 s!2326))))

(assert (=> d!2000527 (validRegex!8031 lt!2370211)))

(assert (=> d!2000527 (= (matchR!8478 lt!2370211 s!2326) lt!2370271)))

(declare-fun b!6380331 () Bool)

(declare-fun res!2624533 () Bool)

(assert (=> b!6380331 (=> (not res!2624533) (not e!3873136))))

(assert (=> b!6380331 (= res!2624533 (not call!545182))))

(declare-fun b!6380332 () Bool)

(declare-fun res!2624532 () Bool)

(assert (=> b!6380332 (=> res!2624532 e!3873137)))

(assert (=> b!6380332 (= res!2624532 e!3873136)))

(declare-fun res!2624536 () Bool)

(assert (=> b!6380332 (=> (not res!2624536) (not e!3873136))))

(assert (=> b!6380332 (= res!2624536 lt!2370271)))

(declare-fun b!6380333 () Bool)

(assert (=> b!6380333 (= e!3873141 (= lt!2370271 call!545182))))

(declare-fun b!6380334 () Bool)

(declare-fun derivativeStep!4999 (Regex!16295 C!32860) Regex!16295)

(assert (=> b!6380334 (= e!3873135 (matchR!8478 (derivativeStep!4999 lt!2370211 (head!13081 s!2326)) (tail!12166 s!2326)))))

(declare-fun b!6380335 () Bool)

(assert (=> b!6380335 (= e!3873141 e!3873139)))

(declare-fun c!1162428 () Bool)

(assert (=> b!6380335 (= c!1162428 ((_ is EmptyLang!16295) lt!2370211))))

(declare-fun b!6380336 () Bool)

(assert (=> b!6380336 (= e!3873137 e!3873138)))

(declare-fun res!2624531 () Bool)

(assert (=> b!6380336 (=> (not res!2624531) (not e!3873138))))

(assert (=> b!6380336 (= res!2624531 (not lt!2370271))))

(declare-fun bm!545177 () Bool)

(assert (=> bm!545177 (= call!545182 (isEmpty!37191 s!2326))))

(declare-fun b!6380337 () Bool)

(assert (=> b!6380337 (= e!3873139 (not lt!2370271))))

(assert (= (and d!2000527 c!1162429) b!6380330))

(assert (= (and d!2000527 (not c!1162429)) b!6380334))

(assert (= (and d!2000527 c!1162427) b!6380333))

(assert (= (and d!2000527 (not c!1162427)) b!6380335))

(assert (= (and b!6380335 c!1162428) b!6380337))

(assert (= (and b!6380335 (not c!1162428)) b!6380324))

(assert (= (and b!6380324 (not res!2624535)) b!6380332))

(assert (= (and b!6380332 res!2624536) b!6380331))

(assert (= (and b!6380331 res!2624533) b!6380327))

(assert (= (and b!6380327 res!2624538) b!6380329))

(assert (= (and b!6380332 (not res!2624532)) b!6380336))

(assert (= (and b!6380336 res!2624531) b!6380325))

(assert (= (and b!6380325 (not res!2624534)) b!6380328))

(assert (= (and b!6380328 (not res!2624537)) b!6380326))

(assert (= (or b!6380333 b!6380325 b!6380331) bm!545177))

(declare-fun m!7180982 () Bool)

(assert (=> bm!545177 m!7180982))

(declare-fun m!7180984 () Bool)

(assert (=> b!6380329 m!7180984))

(declare-fun m!7180986 () Bool)

(assert (=> b!6380330 m!7180986))

(declare-fun m!7180988 () Bool)

(assert (=> b!6380328 m!7180988))

(assert (=> b!6380328 m!7180988))

(declare-fun m!7180990 () Bool)

(assert (=> b!6380328 m!7180990))

(assert (=> b!6380334 m!7180984))

(assert (=> b!6380334 m!7180984))

(declare-fun m!7180992 () Bool)

(assert (=> b!6380334 m!7180992))

(assert (=> b!6380334 m!7180988))

(assert (=> b!6380334 m!7180992))

(assert (=> b!6380334 m!7180988))

(declare-fun m!7180994 () Bool)

(assert (=> b!6380334 m!7180994))

(assert (=> b!6380327 m!7180988))

(assert (=> b!6380327 m!7180988))

(assert (=> b!6380327 m!7180990))

(assert (=> d!2000527 m!7180982))

(declare-fun m!7180996 () Bool)

(assert (=> d!2000527 m!7180996))

(assert (=> b!6380326 m!7180984))

(assert (=> b!6380197 d!2000527))

(declare-fun bs!1597074 () Bool)

(declare-fun b!6380474 () Bool)

(assert (= bs!1597074 (and b!6380474 b!6380204)))

(declare-fun lambda!351933 () Int)

(assert (=> bs!1597074 (not (= lambda!351933 lambda!351905))))

(assert (=> bs!1597074 (not (= lambda!351933 lambda!351906))))

(assert (=> b!6380474 true))

(assert (=> b!6380474 true))

(declare-fun bs!1597078 () Bool)

(declare-fun b!6380478 () Bool)

(assert (= bs!1597078 (and b!6380478 b!6380204)))

(declare-fun lambda!351934 () Int)

(assert (=> bs!1597078 (not (= lambda!351934 lambda!351905))))

(assert (=> bs!1597078 (= (and (= (regOne!33102 lt!2370211) (regOne!33102 r!7292)) (= (regTwo!33102 lt!2370211) (regTwo!33102 r!7292))) (= lambda!351934 lambda!351906))))

(declare-fun bs!1597079 () Bool)

(assert (= bs!1597079 (and b!6380478 b!6380474)))

(assert (=> bs!1597079 (not (= lambda!351934 lambda!351933))))

(assert (=> b!6380478 true))

(assert (=> b!6380478 true))

(declare-fun b!6380472 () Bool)

(declare-fun e!3873229 () Bool)

(assert (=> b!6380472 (= e!3873229 (matchRSpec!3396 (regTwo!33103 lt!2370211) s!2326))))

(declare-fun b!6380473 () Bool)

(declare-fun e!3873226 () Bool)

(assert (=> b!6380473 (= e!3873226 (= s!2326 (Cons!65060 (c!1162404 lt!2370211) Nil!65060)))))

(declare-fun bm!545206 () Bool)

(declare-fun c!1162477 () Bool)

(declare-fun call!545212 () Bool)

(assert (=> bm!545206 (= call!545212 (Exists!3365 (ite c!1162477 lambda!351933 lambda!351934)))))

(declare-fun e!3873228 () Bool)

(assert (=> b!6380474 (= e!3873228 call!545212)))

(declare-fun b!6380475 () Bool)

(declare-fun c!1162480 () Bool)

(assert (=> b!6380475 (= c!1162480 ((_ is ElementMatch!16295) lt!2370211))))

(declare-fun e!3873223 () Bool)

(assert (=> b!6380475 (= e!3873223 e!3873226)))

(declare-fun b!6380476 () Bool)

(declare-fun c!1162479 () Bool)

(assert (=> b!6380476 (= c!1162479 ((_ is Union!16295) lt!2370211))))

(declare-fun e!3873227 () Bool)

(assert (=> b!6380476 (= e!3873226 e!3873227)))

(declare-fun b!6380477 () Bool)

(declare-fun e!3873225 () Bool)

(declare-fun call!545211 () Bool)

(assert (=> b!6380477 (= e!3873225 call!545211)))

(declare-fun d!2000547 () Bool)

(declare-fun c!1162478 () Bool)

(assert (=> d!2000547 (= c!1162478 ((_ is EmptyExpr!16295) lt!2370211))))

(assert (=> d!2000547 (= (matchRSpec!3396 lt!2370211 s!2326) e!3873225)))

(declare-fun e!3873224 () Bool)

(assert (=> b!6380478 (= e!3873224 call!545212)))

(declare-fun b!6380479 () Bool)

(assert (=> b!6380479 (= e!3873227 e!3873229)))

(declare-fun res!2624581 () Bool)

(assert (=> b!6380479 (= res!2624581 (matchRSpec!3396 (regOne!33103 lt!2370211) s!2326))))

(assert (=> b!6380479 (=> res!2624581 e!3873229)))

(declare-fun b!6380480 () Bool)

(declare-fun res!2624583 () Bool)

(assert (=> b!6380480 (=> res!2624583 e!3873228)))

(assert (=> b!6380480 (= res!2624583 call!545211)))

(assert (=> b!6380480 (= e!3873224 e!3873228)))

(declare-fun bm!545207 () Bool)

(assert (=> bm!545207 (= call!545211 (isEmpty!37191 s!2326))))

(declare-fun b!6380481 () Bool)

(assert (=> b!6380481 (= e!3873225 e!3873223)))

(declare-fun res!2624582 () Bool)

(assert (=> b!6380481 (= res!2624582 (not ((_ is EmptyLang!16295) lt!2370211)))))

(assert (=> b!6380481 (=> (not res!2624582) (not e!3873223))))

(declare-fun b!6380482 () Bool)

(assert (=> b!6380482 (= e!3873227 e!3873224)))

(assert (=> b!6380482 (= c!1162477 ((_ is Star!16295) lt!2370211))))

(assert (= (and d!2000547 c!1162478) b!6380477))

(assert (= (and d!2000547 (not c!1162478)) b!6380481))

(assert (= (and b!6380481 res!2624582) b!6380475))

(assert (= (and b!6380475 c!1162480) b!6380473))

(assert (= (and b!6380475 (not c!1162480)) b!6380476))

(assert (= (and b!6380476 c!1162479) b!6380479))

(assert (= (and b!6380476 (not c!1162479)) b!6380482))

(assert (= (and b!6380479 (not res!2624581)) b!6380472))

(assert (= (and b!6380482 c!1162477) b!6380480))

(assert (= (and b!6380482 (not c!1162477)) b!6380478))

(assert (= (and b!6380480 (not res!2624583)) b!6380474))

(assert (= (or b!6380474 b!6380478) bm!545206))

(assert (= (or b!6380477 b!6380480) bm!545207))

(declare-fun m!7181090 () Bool)

(assert (=> b!6380472 m!7181090))

(declare-fun m!7181092 () Bool)

(assert (=> bm!545206 m!7181092))

(declare-fun m!7181094 () Bool)

(assert (=> b!6380479 m!7181094))

(assert (=> bm!545207 m!7180982))

(assert (=> b!6380197 d!2000547))

(declare-fun d!2000585 () Bool)

(assert (=> d!2000585 (= (matchR!8478 lt!2370211 s!2326) (matchRSpec!3396 lt!2370211 s!2326))))

(declare-fun lt!2370286 () Unit!158511)

(declare-fun choose!47455 (Regex!16295 List!65184) Unit!158511)

(assert (=> d!2000585 (= lt!2370286 (choose!47455 lt!2370211 s!2326))))

(assert (=> d!2000585 (validRegex!8031 lt!2370211)))

(assert (=> d!2000585 (= (mainMatchTheorem!3396 lt!2370211 s!2326) lt!2370286)))

(declare-fun bs!1597080 () Bool)

(assert (= bs!1597080 d!2000585))

(assert (=> bs!1597080 m!7180822))

(assert (=> bs!1597080 m!7180824))

(declare-fun m!7181096 () Bool)

(assert (=> bs!1597080 m!7181096))

(assert (=> bs!1597080 m!7180996))

(assert (=> b!6380197 d!2000585))

(declare-fun b!6380600 () Bool)

(declare-fun e!3873298 () (InoxSet Context!11358))

(declare-fun call!545230 () (InoxSet Context!11358))

(assert (=> b!6380600 (= e!3873298 call!545230)))

(declare-fun bm!545225 () Bool)

(assert (=> bm!545225 (= call!545230 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 lt!2370221)) (Context!11359 (t!378789 (exprs!6179 lt!2370221))) (h!71508 s!2326)))))

(declare-fun b!6380601 () Bool)

(assert (=> b!6380601 (= e!3873298 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000587 () Bool)

(declare-fun c!1162517 () Bool)

(declare-fun e!3873297 () Bool)

(assert (=> d!2000587 (= c!1162517 e!3873297)))

(declare-fun res!2624631 () Bool)

(assert (=> d!2000587 (=> (not res!2624631) (not e!3873297))))

(assert (=> d!2000587 (= res!2624631 ((_ is Cons!65061) (exprs!6179 lt!2370221)))))

(declare-fun e!3873296 () (InoxSet Context!11358))

(assert (=> d!2000587 (= (derivationStepZipperUp!1469 lt!2370221 (h!71508 s!2326)) e!3873296)))

(declare-fun b!6380602 () Bool)

(assert (=> b!6380602 (= e!3873296 e!3873298)))

(declare-fun c!1162516 () Bool)

(assert (=> b!6380602 (= c!1162516 ((_ is Cons!65061) (exprs!6179 lt!2370221)))))

(declare-fun b!6380603 () Bool)

(assert (=> b!6380603 (= e!3873297 (nullable!6288 (h!71509 (exprs!6179 lt!2370221))))))

(declare-fun b!6380604 () Bool)

(assert (=> b!6380604 (= e!3873296 ((_ map or) call!545230 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 lt!2370221))) (h!71508 s!2326))))))

(assert (= (and d!2000587 res!2624631) b!6380603))

(assert (= (and d!2000587 c!1162517) b!6380604))

(assert (= (and d!2000587 (not c!1162517)) b!6380602))

(assert (= (and b!6380602 c!1162516) b!6380600))

(assert (= (and b!6380602 (not c!1162516)) b!6380601))

(assert (= (or b!6380604 b!6380600) bm!545225))

(declare-fun m!7181114 () Bool)

(assert (=> bm!545225 m!7181114))

(declare-fun m!7181116 () Bool)

(assert (=> b!6380603 m!7181116))

(declare-fun m!7181118 () Bool)

(assert (=> b!6380604 m!7181118))

(assert (=> b!6380176 d!2000587))

(declare-fun d!2000591 () Bool)

(declare-fun choose!47456 ((InoxSet Context!11358) Int) (InoxSet Context!11358))

(assert (=> d!2000591 (= (flatMap!1800 lt!2370214 lambda!351907) (choose!47456 lt!2370214 lambda!351907))))

(declare-fun bs!1597081 () Bool)

(assert (= bs!1597081 d!2000591))

(declare-fun m!7181120 () Bool)

(assert (=> bs!1597081 m!7181120))

(assert (=> b!6380176 d!2000591))

(declare-fun d!2000593 () Bool)

(declare-fun dynLambda!25813 (Int Context!11358) (InoxSet Context!11358))

(assert (=> d!2000593 (= (flatMap!1800 lt!2370238 lambda!351907) (dynLambda!25813 lambda!351907 lt!2370221))))

(declare-fun lt!2370290 () Unit!158511)

(declare-fun choose!47457 ((InoxSet Context!11358) Context!11358 Int) Unit!158511)

(assert (=> d!2000593 (= lt!2370290 (choose!47457 lt!2370238 lt!2370221 lambda!351907))))

(assert (=> d!2000593 (= lt!2370238 (store ((as const (Array Context!11358 Bool)) false) lt!2370221 true))))

(assert (=> d!2000593 (= (lemmaFlatMapOnSingletonSet!1326 lt!2370238 lt!2370221 lambda!351907) lt!2370290)))

(declare-fun b_lambda!242457 () Bool)

(assert (=> (not b_lambda!242457) (not d!2000593)))

(declare-fun bs!1597084 () Bool)

(assert (= bs!1597084 d!2000593))

(assert (=> bs!1597084 m!7180850))

(declare-fun m!7181122 () Bool)

(assert (=> bs!1597084 m!7181122))

(declare-fun m!7181124 () Bool)

(assert (=> bs!1597084 m!7181124))

(assert (=> bs!1597084 m!7180844))

(assert (=> b!6380176 d!2000593))

(declare-fun d!2000595 () Bool)

(declare-fun lt!2370291 () Regex!16295)

(assert (=> d!2000595 (validRegex!8031 lt!2370291)))

(assert (=> d!2000595 (= lt!2370291 (generalisedUnion!2139 (unfocusZipperList!1716 (Cons!65062 lt!2370221 Nil!65062))))))

(assert (=> d!2000595 (= (unfocusZipper!2037 (Cons!65062 lt!2370221 Nil!65062)) lt!2370291)))

(declare-fun bs!1597086 () Bool)

(assert (= bs!1597086 d!2000595))

(declare-fun m!7181126 () Bool)

(assert (=> bs!1597086 m!7181126))

(declare-fun m!7181128 () Bool)

(assert (=> bs!1597086 m!7181128))

(assert (=> bs!1597086 m!7181128))

(declare-fun m!7181130 () Bool)

(assert (=> bs!1597086 m!7181130))

(assert (=> b!6380176 d!2000595))

(declare-fun d!2000597 () Bool)

(assert (=> d!2000597 (= (flatMap!1800 lt!2370214 lambda!351907) (dynLambda!25813 lambda!351907 lt!2370227))))

(declare-fun lt!2370292 () Unit!158511)

(assert (=> d!2000597 (= lt!2370292 (choose!47457 lt!2370214 lt!2370227 lambda!351907))))

(assert (=> d!2000597 (= lt!2370214 (store ((as const (Array Context!11358 Bool)) false) lt!2370227 true))))

(assert (=> d!2000597 (= (lemmaFlatMapOnSingletonSet!1326 lt!2370214 lt!2370227 lambda!351907) lt!2370292)))

(declare-fun b_lambda!242459 () Bool)

(assert (=> (not b_lambda!242459) (not d!2000597)))

(declare-fun bs!1597089 () Bool)

(assert (= bs!1597089 d!2000597))

(assert (=> bs!1597089 m!7180836))

(declare-fun m!7181132 () Bool)

(assert (=> bs!1597089 m!7181132))

(declare-fun m!7181134 () Bool)

(assert (=> bs!1597089 m!7181134))

(assert (=> bs!1597089 m!7180842))

(assert (=> b!6380176 d!2000597))

(declare-fun d!2000599 () Bool)

(assert (=> d!2000599 (= (flatMap!1800 lt!2370238 lambda!351907) (choose!47456 lt!2370238 lambda!351907))))

(declare-fun bs!1597092 () Bool)

(assert (= bs!1597092 d!2000599))

(declare-fun m!7181136 () Bool)

(assert (=> bs!1597092 m!7181136))

(assert (=> b!6380176 d!2000599))

(declare-fun b!6380620 () Bool)

(declare-fun e!3873310 () (InoxSet Context!11358))

(declare-fun call!545237 () (InoxSet Context!11358))

(assert (=> b!6380620 (= e!3873310 call!545237)))

(declare-fun bm!545232 () Bool)

(assert (=> bm!545232 (= call!545237 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 lt!2370227)) (Context!11359 (t!378789 (exprs!6179 lt!2370227))) (h!71508 s!2326)))))

(declare-fun b!6380621 () Bool)

(assert (=> b!6380621 (= e!3873310 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000601 () Bool)

(declare-fun c!1162523 () Bool)

(declare-fun e!3873309 () Bool)

(assert (=> d!2000601 (= c!1162523 e!3873309)))

(declare-fun res!2624639 () Bool)

(assert (=> d!2000601 (=> (not res!2624639) (not e!3873309))))

(assert (=> d!2000601 (= res!2624639 ((_ is Cons!65061) (exprs!6179 lt!2370227)))))

(declare-fun e!3873308 () (InoxSet Context!11358))

(assert (=> d!2000601 (= (derivationStepZipperUp!1469 lt!2370227 (h!71508 s!2326)) e!3873308)))

(declare-fun b!6380622 () Bool)

(assert (=> b!6380622 (= e!3873308 e!3873310)))

(declare-fun c!1162522 () Bool)

(assert (=> b!6380622 (= c!1162522 ((_ is Cons!65061) (exprs!6179 lt!2370227)))))

(declare-fun b!6380623 () Bool)

(assert (=> b!6380623 (= e!3873309 (nullable!6288 (h!71509 (exprs!6179 lt!2370227))))))

(declare-fun b!6380624 () Bool)

(assert (=> b!6380624 (= e!3873308 ((_ map or) call!545237 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 lt!2370227))) (h!71508 s!2326))))))

(assert (= (and d!2000601 res!2624639) b!6380623))

(assert (= (and d!2000601 c!1162523) b!6380624))

(assert (= (and d!2000601 (not c!1162523)) b!6380622))

(assert (= (and b!6380622 c!1162522) b!6380620))

(assert (= (and b!6380622 (not c!1162522)) b!6380621))

(assert (= (or b!6380624 b!6380620) bm!545232))

(declare-fun m!7181144 () Bool)

(assert (=> bm!545232 m!7181144))

(declare-fun m!7181146 () Bool)

(assert (=> b!6380623 m!7181146))

(declare-fun m!7181148 () Bool)

(assert (=> b!6380624 m!7181148))

(assert (=> b!6380176 d!2000601))

(declare-fun d!2000605 () Bool)

(declare-fun e!3873313 () Bool)

(assert (=> d!2000605 e!3873313))

(declare-fun res!2624642 () Bool)

(assert (=> d!2000605 (=> (not res!2624642) (not e!3873313))))

(declare-fun lt!2370298 () List!65186)

(declare-fun noDuplicate!2124 (List!65186) Bool)

(assert (=> d!2000605 (= res!2624642 (noDuplicate!2124 lt!2370298))))

(declare-fun choose!47458 ((InoxSet Context!11358)) List!65186)

(assert (=> d!2000605 (= lt!2370298 (choose!47458 z!1189))))

(assert (=> d!2000605 (= (toList!10079 z!1189) lt!2370298)))

(declare-fun b!6380627 () Bool)

(declare-fun content!12309 (List!65186) (InoxSet Context!11358))

(assert (=> b!6380627 (= e!3873313 (= (content!12309 lt!2370298) z!1189))))

(assert (= (and d!2000605 res!2624642) b!6380627))

(declare-fun m!7181152 () Bool)

(assert (=> d!2000605 m!7181152))

(declare-fun m!7181154 () Bool)

(assert (=> d!2000605 m!7181154))

(declare-fun m!7181156 () Bool)

(assert (=> b!6380627 m!7181156))

(assert (=> b!6380196 d!2000605))

(declare-fun call!545238 () Bool)

(declare-fun c!1162525 () Bool)

(declare-fun c!1162524 () Bool)

(declare-fun bm!545233 () Bool)

(assert (=> bm!545233 (= call!545238 (validRegex!8031 (ite c!1162525 (reg!16624 (regTwo!33102 r!7292)) (ite c!1162524 (regOne!33103 (regTwo!33102 r!7292)) (regOne!33102 (regTwo!33102 r!7292))))))))

(declare-fun b!6380628 () Bool)

(declare-fun res!2624647 () Bool)

(declare-fun e!3873314 () Bool)

(assert (=> b!6380628 (=> res!2624647 e!3873314)))

(assert (=> b!6380628 (= res!2624647 (not ((_ is Concat!25140) (regTwo!33102 r!7292))))))

(declare-fun e!3873319 () Bool)

(assert (=> b!6380628 (= e!3873319 e!3873314)))

(declare-fun b!6380629 () Bool)

(declare-fun res!2624644 () Bool)

(declare-fun e!3873316 () Bool)

(assert (=> b!6380629 (=> (not res!2624644) (not e!3873316))))

(declare-fun call!545240 () Bool)

(assert (=> b!6380629 (= res!2624644 call!545240)))

(assert (=> b!6380629 (= e!3873319 e!3873316)))

(declare-fun b!6380630 () Bool)

(declare-fun e!3873320 () Bool)

(declare-fun e!3873318 () Bool)

(assert (=> b!6380630 (= e!3873320 e!3873318)))

(declare-fun res!2624645 () Bool)

(assert (=> b!6380630 (= res!2624645 (not (nullable!6288 (reg!16624 (regTwo!33102 r!7292)))))))

(assert (=> b!6380630 (=> (not res!2624645) (not e!3873318))))

(declare-fun b!6380631 () Bool)

(declare-fun e!3873315 () Bool)

(declare-fun call!545239 () Bool)

(assert (=> b!6380631 (= e!3873315 call!545239)))

(declare-fun b!6380632 () Bool)

(assert (=> b!6380632 (= e!3873318 call!545238)))

(declare-fun b!6380633 () Bool)

(assert (=> b!6380633 (= e!3873320 e!3873319)))

(assert (=> b!6380633 (= c!1162524 ((_ is Union!16295) (regTwo!33102 r!7292)))))

(declare-fun b!6380634 () Bool)

(declare-fun e!3873317 () Bool)

(assert (=> b!6380634 (= e!3873317 e!3873320)))

(assert (=> b!6380634 (= c!1162525 ((_ is Star!16295) (regTwo!33102 r!7292)))))

(declare-fun bm!545235 () Bool)

(assert (=> bm!545235 (= call!545239 (validRegex!8031 (ite c!1162524 (regTwo!33103 (regTwo!33102 r!7292)) (regTwo!33102 (regTwo!33102 r!7292)))))))

(declare-fun b!6380635 () Bool)

(assert (=> b!6380635 (= e!3873316 call!545239)))

(declare-fun b!6380636 () Bool)

(assert (=> b!6380636 (= e!3873314 e!3873315)))

(declare-fun res!2624646 () Bool)

(assert (=> b!6380636 (=> (not res!2624646) (not e!3873315))))

(assert (=> b!6380636 (= res!2624646 call!545240)))

(declare-fun d!2000609 () Bool)

(declare-fun res!2624643 () Bool)

(assert (=> d!2000609 (=> res!2624643 e!3873317)))

(assert (=> d!2000609 (= res!2624643 ((_ is ElementMatch!16295) (regTwo!33102 r!7292)))))

(assert (=> d!2000609 (= (validRegex!8031 (regTwo!33102 r!7292)) e!3873317)))

(declare-fun bm!545234 () Bool)

(assert (=> bm!545234 (= call!545240 call!545238)))

(assert (= (and d!2000609 (not res!2624643)) b!6380634))

(assert (= (and b!6380634 c!1162525) b!6380630))

(assert (= (and b!6380634 (not c!1162525)) b!6380633))

(assert (= (and b!6380630 res!2624645) b!6380632))

(assert (= (and b!6380633 c!1162524) b!6380629))

(assert (= (and b!6380633 (not c!1162524)) b!6380628))

(assert (= (and b!6380629 res!2624644) b!6380635))

(assert (= (and b!6380628 (not res!2624647)) b!6380636))

(assert (= (and b!6380636 res!2624646) b!6380631))

(assert (= (or b!6380635 b!6380631) bm!545235))

(assert (= (or b!6380629 b!6380636) bm!545234))

(assert (= (or b!6380632 bm!545234) bm!545233))

(declare-fun m!7181158 () Bool)

(assert (=> bm!545233 m!7181158))

(declare-fun m!7181160 () Bool)

(assert (=> b!6380630 m!7181160))

(declare-fun m!7181162 () Bool)

(assert (=> bm!545235 m!7181162))

(assert (=> b!6380185 d!2000609))

(declare-fun d!2000611 () Bool)

(assert (=> d!2000611 (= (flatMap!1800 lt!2370216 lambda!351907) (choose!47456 lt!2370216 lambda!351907))))

(declare-fun bs!1597094 () Bool)

(assert (= bs!1597094 d!2000611))

(declare-fun m!7181164 () Bool)

(assert (=> bs!1597094 m!7181164))

(assert (=> b!6380203 d!2000611))

(declare-fun b!6380637 () Bool)

(declare-fun e!3873323 () (InoxSet Context!11358))

(declare-fun call!545241 () (InoxSet Context!11358))

(assert (=> b!6380637 (= e!3873323 call!545241)))

(declare-fun bm!545236 () Bool)

(assert (=> bm!545236 (= call!545241 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 lt!2370225)) (Context!11359 (t!378789 (exprs!6179 lt!2370225))) (h!71508 s!2326)))))

(declare-fun b!6380638 () Bool)

(assert (=> b!6380638 (= e!3873323 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000613 () Bool)

(declare-fun c!1162527 () Bool)

(declare-fun e!3873322 () Bool)

(assert (=> d!2000613 (= c!1162527 e!3873322)))

(declare-fun res!2624648 () Bool)

(assert (=> d!2000613 (=> (not res!2624648) (not e!3873322))))

(assert (=> d!2000613 (= res!2624648 ((_ is Cons!65061) (exprs!6179 lt!2370225)))))

(declare-fun e!3873321 () (InoxSet Context!11358))

(assert (=> d!2000613 (= (derivationStepZipperUp!1469 lt!2370225 (h!71508 s!2326)) e!3873321)))

(declare-fun b!6380639 () Bool)

(assert (=> b!6380639 (= e!3873321 e!3873323)))

(declare-fun c!1162526 () Bool)

(assert (=> b!6380639 (= c!1162526 ((_ is Cons!65061) (exprs!6179 lt!2370225)))))

(declare-fun b!6380640 () Bool)

(assert (=> b!6380640 (= e!3873322 (nullable!6288 (h!71509 (exprs!6179 lt!2370225))))))

(declare-fun b!6380641 () Bool)

(assert (=> b!6380641 (= e!3873321 ((_ map or) call!545241 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 lt!2370225))) (h!71508 s!2326))))))

(assert (= (and d!2000613 res!2624648) b!6380640))

(assert (= (and d!2000613 c!1162527) b!6380641))

(assert (= (and d!2000613 (not c!1162527)) b!6380639))

(assert (= (and b!6380639 c!1162526) b!6380637))

(assert (= (and b!6380639 (not c!1162526)) b!6380638))

(assert (= (or b!6380641 b!6380637) bm!545236))

(declare-fun m!7181166 () Bool)

(assert (=> bm!545236 m!7181166))

(declare-fun m!7181168 () Bool)

(assert (=> b!6380640 m!7181168))

(declare-fun m!7181170 () Bool)

(assert (=> b!6380641 m!7181170))

(assert (=> b!6380203 d!2000613))

(declare-fun d!2000615 () Bool)

(assert (=> d!2000615 (= (flatMap!1800 lt!2370216 lambda!351907) (dynLambda!25813 lambda!351907 lt!2370225))))

(declare-fun lt!2370299 () Unit!158511)

(assert (=> d!2000615 (= lt!2370299 (choose!47457 lt!2370216 lt!2370225 lambda!351907))))

(assert (=> d!2000615 (= lt!2370216 (store ((as const (Array Context!11358 Bool)) false) lt!2370225 true))))

(assert (=> d!2000615 (= (lemmaFlatMapOnSingletonSet!1326 lt!2370216 lt!2370225 lambda!351907) lt!2370299)))

(declare-fun b_lambda!242461 () Bool)

(assert (=> (not b_lambda!242461) (not d!2000615)))

(declare-fun bs!1597095 () Bool)

(assert (= bs!1597095 d!2000615))

(assert (=> bs!1597095 m!7180876))

(declare-fun m!7181172 () Bool)

(assert (=> bs!1597095 m!7181172))

(declare-fun m!7181174 () Bool)

(assert (=> bs!1597095 m!7181174))

(assert (=> bs!1597095 m!7180872))

(assert (=> b!6380203 d!2000615))

(declare-fun bs!1597096 () Bool)

(declare-fun d!2000617 () Bool)

(assert (= bs!1597096 (and d!2000617 b!6380195)))

(declare-fun lambda!351945 () Int)

(assert (=> bs!1597096 (= lambda!351945 lambda!351907)))

(assert (=> d!2000617 true))

(assert (=> d!2000617 (= (derivationStepZipper!2261 lt!2370216 (h!71508 s!2326)) (flatMap!1800 lt!2370216 lambda!351945))))

(declare-fun bs!1597097 () Bool)

(assert (= bs!1597097 d!2000617))

(declare-fun m!7181176 () Bool)

(assert (=> bs!1597097 m!7181176))

(assert (=> b!6380203 d!2000617))

(declare-fun b!6380805 () Bool)

(declare-fun e!3873410 () Bool)

(assert (=> b!6380805 (= e!3873410 (matchR!8478 (regTwo!33102 r!7292) s!2326))))

(declare-fun b!6380806 () Bool)

(declare-fun e!3873411 () Option!16186)

(declare-fun e!3873414 () Option!16186)

(assert (=> b!6380806 (= e!3873411 e!3873414)))

(declare-fun c!1162566 () Bool)

(assert (=> b!6380806 (= c!1162566 ((_ is Nil!65060) s!2326))))

(declare-fun b!6380807 () Bool)

(assert (=> b!6380807 (= e!3873414 None!16185)))

(declare-fun b!6380808 () Bool)

(declare-fun res!2624688 () Bool)

(declare-fun e!3873413 () Bool)

(assert (=> b!6380808 (=> (not res!2624688) (not e!3873413))))

(declare-fun lt!2370316 () Option!16186)

(declare-fun get!22526 (Option!16186) tuple2!66548)

(assert (=> b!6380808 (= res!2624688 (matchR!8478 (regOne!33102 r!7292) (_1!36577 (get!22526 lt!2370316))))))

(declare-fun b!6380809 () Bool)

(declare-fun e!3873412 () Bool)

(assert (=> b!6380809 (= e!3873412 (not (isDefined!12889 lt!2370316)))))

(declare-fun b!6380810 () Bool)

(declare-fun lt!2370317 () Unit!158511)

(declare-fun lt!2370315 () Unit!158511)

(assert (=> b!6380810 (= lt!2370317 lt!2370315)))

(declare-fun ++!14363 (List!65184 List!65184) List!65184)

(assert (=> b!6380810 (= (++!14363 (++!14363 Nil!65060 (Cons!65060 (h!71508 s!2326) Nil!65060)) (t!378788 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2458 (List!65184 C!32860 List!65184 List!65184) Unit!158511)

(assert (=> b!6380810 (= lt!2370315 (lemmaMoveElementToOtherListKeepsConcatEq!2458 Nil!65060 (h!71508 s!2326) (t!378788 s!2326) s!2326))))

(assert (=> b!6380810 (= e!3873414 (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) (++!14363 Nil!65060 (Cons!65060 (h!71508 s!2326) Nil!65060)) (t!378788 s!2326) s!2326))))

(declare-fun b!6380811 () Bool)

(declare-fun res!2624687 () Bool)

(assert (=> b!6380811 (=> (not res!2624687) (not e!3873413))))

(assert (=> b!6380811 (= res!2624687 (matchR!8478 (regTwo!33102 r!7292) (_2!36577 (get!22526 lt!2370316))))))

(declare-fun b!6380812 () Bool)

(assert (=> b!6380812 (= e!3873411 (Some!16185 (tuple2!66549 Nil!65060 s!2326)))))

(declare-fun d!2000619 () Bool)

(assert (=> d!2000619 e!3873412))

(declare-fun res!2624686 () Bool)

(assert (=> d!2000619 (=> res!2624686 e!3873412)))

(assert (=> d!2000619 (= res!2624686 e!3873413)))

(declare-fun res!2624684 () Bool)

(assert (=> d!2000619 (=> (not res!2624684) (not e!3873413))))

(assert (=> d!2000619 (= res!2624684 (isDefined!12889 lt!2370316))))

(assert (=> d!2000619 (= lt!2370316 e!3873411)))

(declare-fun c!1162567 () Bool)

(assert (=> d!2000619 (= c!1162567 e!3873410)))

(declare-fun res!2624685 () Bool)

(assert (=> d!2000619 (=> (not res!2624685) (not e!3873410))))

(assert (=> d!2000619 (= res!2624685 (matchR!8478 (regOne!33102 r!7292) Nil!65060))))

(assert (=> d!2000619 (validRegex!8031 (regOne!33102 r!7292))))

(assert (=> d!2000619 (= (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) Nil!65060 s!2326 s!2326) lt!2370316)))

(declare-fun b!6380813 () Bool)

(assert (=> b!6380813 (= e!3873413 (= (++!14363 (_1!36577 (get!22526 lt!2370316)) (_2!36577 (get!22526 lt!2370316))) s!2326))))

(assert (= (and d!2000619 res!2624685) b!6380805))

(assert (= (and d!2000619 c!1162567) b!6380812))

(assert (= (and d!2000619 (not c!1162567)) b!6380806))

(assert (= (and b!6380806 c!1162566) b!6380807))

(assert (= (and b!6380806 (not c!1162566)) b!6380810))

(assert (= (and d!2000619 res!2624684) b!6380808))

(assert (= (and b!6380808 res!2624688) b!6380811))

(assert (= (and b!6380811 res!2624687) b!6380813))

(assert (= (and d!2000619 (not res!2624686)) b!6380809))

(declare-fun m!7181274 () Bool)

(assert (=> d!2000619 m!7181274))

(declare-fun m!7181276 () Bool)

(assert (=> d!2000619 m!7181276))

(declare-fun m!7181278 () Bool)

(assert (=> d!2000619 m!7181278))

(declare-fun m!7181280 () Bool)

(assert (=> b!6380810 m!7181280))

(assert (=> b!6380810 m!7181280))

(declare-fun m!7181282 () Bool)

(assert (=> b!6380810 m!7181282))

(declare-fun m!7181284 () Bool)

(assert (=> b!6380810 m!7181284))

(assert (=> b!6380810 m!7181280))

(declare-fun m!7181286 () Bool)

(assert (=> b!6380810 m!7181286))

(declare-fun m!7181288 () Bool)

(assert (=> b!6380808 m!7181288))

(declare-fun m!7181290 () Bool)

(assert (=> b!6380808 m!7181290))

(assert (=> b!6380813 m!7181288))

(declare-fun m!7181292 () Bool)

(assert (=> b!6380813 m!7181292))

(declare-fun m!7181294 () Bool)

(assert (=> b!6380805 m!7181294))

(assert (=> b!6380809 m!7181274))

(assert (=> b!6380811 m!7181288))

(declare-fun m!7181296 () Bool)

(assert (=> b!6380811 m!7181296))

(assert (=> b!6380204 d!2000619))

(declare-fun d!2000661 () Bool)

(declare-fun choose!47459 (Int) Bool)

(assert (=> d!2000661 (= (Exists!3365 lambda!351906) (choose!47459 lambda!351906))))

(declare-fun bs!1597128 () Bool)

(assert (= bs!1597128 d!2000661))

(declare-fun m!7181298 () Bool)

(assert (=> bs!1597128 m!7181298))

(assert (=> b!6380204 d!2000661))

(declare-fun d!2000663 () Bool)

(assert (=> d!2000663 (= (Exists!3365 lambda!351905) (choose!47459 lambda!351905))))

(declare-fun bs!1597129 () Bool)

(assert (= bs!1597129 d!2000663))

(declare-fun m!7181300 () Bool)

(assert (=> bs!1597129 m!7181300))

(assert (=> b!6380204 d!2000663))

(declare-fun bs!1597130 () Bool)

(declare-fun d!2000665 () Bool)

(assert (= bs!1597130 (and d!2000665 b!6380204)))

(declare-fun lambda!351952 () Int)

(assert (=> bs!1597130 (= lambda!351952 lambda!351905)))

(assert (=> bs!1597130 (not (= lambda!351952 lambda!351906))))

(declare-fun bs!1597131 () Bool)

(assert (= bs!1597131 (and d!2000665 b!6380474)))

(assert (=> bs!1597131 (not (= lambda!351952 lambda!351933))))

(declare-fun bs!1597132 () Bool)

(assert (= bs!1597132 (and d!2000665 b!6380478)))

(assert (=> bs!1597132 (not (= lambda!351952 lambda!351934))))

(assert (=> d!2000665 true))

(assert (=> d!2000665 true))

(assert (=> d!2000665 true))

(assert (=> d!2000665 (= (isDefined!12889 (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) Nil!65060 s!2326 s!2326)) (Exists!3365 lambda!351952))))

(declare-fun lt!2370320 () Unit!158511)

(declare-fun choose!47460 (Regex!16295 Regex!16295 List!65184) Unit!158511)

(assert (=> d!2000665 (= lt!2370320 (choose!47460 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326))))

(assert (=> d!2000665 (validRegex!8031 (regOne!33102 r!7292))))

(assert (=> d!2000665 (= (lemmaFindConcatSeparationEquivalentToExists!2364 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326) lt!2370320)))

(declare-fun bs!1597133 () Bool)

(assert (= bs!1597133 d!2000665))

(assert (=> bs!1597133 m!7180798))

(assert (=> bs!1597133 m!7180798))

(assert (=> bs!1597133 m!7180800))

(assert (=> bs!1597133 m!7181278))

(declare-fun m!7181302 () Bool)

(assert (=> bs!1597133 m!7181302))

(declare-fun m!7181304 () Bool)

(assert (=> bs!1597133 m!7181304))

(assert (=> b!6380204 d!2000665))

(declare-fun bs!1597134 () Bool)

(declare-fun d!2000667 () Bool)

(assert (= bs!1597134 (and d!2000667 b!6380204)))

(declare-fun lambda!351957 () Int)

(assert (=> bs!1597134 (not (= lambda!351957 lambda!351906))))

(declare-fun bs!1597135 () Bool)

(assert (= bs!1597135 (and d!2000667 b!6380478)))

(assert (=> bs!1597135 (not (= lambda!351957 lambda!351934))))

(declare-fun bs!1597136 () Bool)

(assert (= bs!1597136 (and d!2000667 d!2000665)))

(assert (=> bs!1597136 (= lambda!351957 lambda!351952)))

(assert (=> bs!1597134 (= lambda!351957 lambda!351905)))

(declare-fun bs!1597137 () Bool)

(assert (= bs!1597137 (and d!2000667 b!6380474)))

(assert (=> bs!1597137 (not (= lambda!351957 lambda!351933))))

(assert (=> d!2000667 true))

(assert (=> d!2000667 true))

(assert (=> d!2000667 true))

(declare-fun lambda!351958 () Int)

(assert (=> bs!1597134 (= lambda!351958 lambda!351906)))

(assert (=> bs!1597135 (= (and (= (regOne!33102 r!7292) (regOne!33102 lt!2370211)) (= (regTwo!33102 r!7292) (regTwo!33102 lt!2370211))) (= lambda!351958 lambda!351934))))

(declare-fun bs!1597138 () Bool)

(assert (= bs!1597138 d!2000667))

(assert (=> bs!1597138 (not (= lambda!351958 lambda!351957))))

(assert (=> bs!1597136 (not (= lambda!351958 lambda!351952))))

(assert (=> bs!1597134 (not (= lambda!351958 lambda!351905))))

(assert (=> bs!1597137 (not (= lambda!351958 lambda!351933))))

(assert (=> d!2000667 true))

(assert (=> d!2000667 true))

(assert (=> d!2000667 true))

(assert (=> d!2000667 (= (Exists!3365 lambda!351957) (Exists!3365 lambda!351958))))

(declare-fun lt!2370323 () Unit!158511)

(declare-fun choose!47461 (Regex!16295 Regex!16295 List!65184) Unit!158511)

(assert (=> d!2000667 (= lt!2370323 (choose!47461 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326))))

(assert (=> d!2000667 (validRegex!8031 (regOne!33102 r!7292))))

(assert (=> d!2000667 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1902 (regOne!33102 r!7292) (regTwo!33102 r!7292) s!2326) lt!2370323)))

(declare-fun m!7181306 () Bool)

(assert (=> bs!1597138 m!7181306))

(declare-fun m!7181308 () Bool)

(assert (=> bs!1597138 m!7181308))

(declare-fun m!7181310 () Bool)

(assert (=> bs!1597138 m!7181310))

(assert (=> bs!1597138 m!7181278))

(assert (=> b!6380204 d!2000667))

(declare-fun d!2000669 () Bool)

(declare-fun isEmpty!37192 (Option!16186) Bool)

(assert (=> d!2000669 (= (isDefined!12889 (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) Nil!65060 s!2326 s!2326)) (not (isEmpty!37192 (findConcatSeparation!2600 (regOne!33102 r!7292) (regTwo!33102 r!7292) Nil!65060 s!2326 s!2326))))))

(declare-fun bs!1597139 () Bool)

(assert (= bs!1597139 d!2000669))

(assert (=> bs!1597139 m!7180798))

(declare-fun m!7181312 () Bool)

(assert (=> bs!1597139 m!7181312))

(assert (=> b!6380204 d!2000669))

(declare-fun b!6380846 () Bool)

(declare-fun e!3873433 () Bool)

(declare-fun e!3873434 () Bool)

(assert (=> b!6380846 (= e!3873433 e!3873434)))

(declare-fun c!1162579 () Bool)

(assert (=> b!6380846 (= c!1162579 (isEmpty!37188 (exprs!6179 (h!71510 zl!343))))))

(declare-fun b!6380847 () Bool)

(declare-fun e!3873436 () Bool)

(assert (=> b!6380847 (= e!3873434 e!3873436)))

(declare-fun c!1162576 () Bool)

(declare-fun tail!12167 (List!65185) List!65185)

(assert (=> b!6380847 (= c!1162576 (isEmpty!37188 (tail!12167 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun d!2000671 () Bool)

(assert (=> d!2000671 e!3873433))

(declare-fun res!2624705 () Bool)

(assert (=> d!2000671 (=> (not res!2624705) (not e!3873433))))

(declare-fun lt!2370326 () Regex!16295)

(assert (=> d!2000671 (= res!2624705 (validRegex!8031 lt!2370326))))

(declare-fun e!3873438 () Regex!16295)

(assert (=> d!2000671 (= lt!2370326 e!3873438)))

(declare-fun c!1162578 () Bool)

(declare-fun e!3873435 () Bool)

(assert (=> d!2000671 (= c!1162578 e!3873435)))

(declare-fun res!2624706 () Bool)

(assert (=> d!2000671 (=> (not res!2624706) (not e!3873435))))

(assert (=> d!2000671 (= res!2624706 ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343))))))

(declare-fun lambda!351961 () Int)

(declare-fun forall!15473 (List!65185 Int) Bool)

(assert (=> d!2000671 (forall!15473 (exprs!6179 (h!71510 zl!343)) lambda!351961)))

(assert (=> d!2000671 (= (generalisedConcat!1892 (exprs!6179 (h!71510 zl!343))) lt!2370326)))

(declare-fun b!6380848 () Bool)

(declare-fun e!3873437 () Regex!16295)

(assert (=> b!6380848 (= e!3873438 e!3873437)))

(declare-fun c!1162577 () Bool)

(assert (=> b!6380848 (= c!1162577 ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343))))))

(declare-fun b!6380849 () Bool)

(declare-fun head!13082 (List!65185) Regex!16295)

(assert (=> b!6380849 (= e!3873436 (= lt!2370326 (head!13082 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380850 () Bool)

(assert (=> b!6380850 (= e!3873438 (h!71509 (exprs!6179 (h!71510 zl!343))))))

(declare-fun b!6380851 () Bool)

(assert (=> b!6380851 (= e!3873437 (Concat!25140 (h!71509 (exprs!6179 (h!71510 zl!343))) (generalisedConcat!1892 (t!378789 (exprs!6179 (h!71510 zl!343))))))))

(declare-fun b!6380852 () Bool)

(assert (=> b!6380852 (= e!3873437 EmptyExpr!16295)))

(declare-fun b!6380853 () Bool)

(declare-fun isEmptyExpr!1696 (Regex!16295) Bool)

(assert (=> b!6380853 (= e!3873434 (isEmptyExpr!1696 lt!2370326))))

(declare-fun b!6380854 () Bool)

(assert (=> b!6380854 (= e!3873435 (isEmpty!37188 (t!378789 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380855 () Bool)

(declare-fun isConcat!1219 (Regex!16295) Bool)

(assert (=> b!6380855 (= e!3873436 (isConcat!1219 lt!2370326))))

(assert (= (and d!2000671 res!2624706) b!6380854))

(assert (= (and d!2000671 c!1162578) b!6380850))

(assert (= (and d!2000671 (not c!1162578)) b!6380848))

(assert (= (and b!6380848 c!1162577) b!6380851))

(assert (= (and b!6380848 (not c!1162577)) b!6380852))

(assert (= (and d!2000671 res!2624705) b!6380846))

(assert (= (and b!6380846 c!1162579) b!6380853))

(assert (= (and b!6380846 (not c!1162579)) b!6380847))

(assert (= (and b!6380847 c!1162576) b!6380849))

(assert (= (and b!6380847 (not c!1162576)) b!6380855))

(declare-fun m!7181314 () Bool)

(assert (=> b!6380853 m!7181314))

(declare-fun m!7181316 () Bool)

(assert (=> b!6380846 m!7181316))

(declare-fun m!7181318 () Bool)

(assert (=> d!2000671 m!7181318))

(declare-fun m!7181320 () Bool)

(assert (=> d!2000671 m!7181320))

(declare-fun m!7181322 () Bool)

(assert (=> b!6380855 m!7181322))

(declare-fun m!7181324 () Bool)

(assert (=> b!6380849 m!7181324))

(declare-fun m!7181326 () Bool)

(assert (=> b!6380847 m!7181326))

(assert (=> b!6380847 m!7181326))

(declare-fun m!7181328 () Bool)

(assert (=> b!6380847 m!7181328))

(assert (=> b!6380854 m!7180808))

(declare-fun m!7181330 () Bool)

(assert (=> b!6380851 m!7181330))

(assert (=> b!6380181 d!2000671))

(declare-fun d!2000673 () Bool)

(declare-fun nullableFct!2234 (Regex!16295) Bool)

(assert (=> d!2000673 (= (nullable!6288 (regOne!33102 (regOne!33102 r!7292))) (nullableFct!2234 (regOne!33102 (regOne!33102 r!7292))))))

(declare-fun bs!1597140 () Bool)

(assert (= bs!1597140 d!2000673))

(declare-fun m!7181332 () Bool)

(assert (=> bs!1597140 m!7181332))

(assert (=> b!6380182 d!2000673))

(declare-fun d!2000675 () Bool)

(assert (=> d!2000675 (= (isEmpty!37188 (t!378789 (exprs!6179 (h!71510 zl!343)))) ((_ is Nil!65061) (t!378789 (exprs!6179 (h!71510 zl!343)))))))

(assert (=> b!6380201 d!2000675))

(declare-fun bs!1597141 () Bool)

(declare-fun d!2000677 () Bool)

(assert (= bs!1597141 (and d!2000677 d!2000671)))

(declare-fun lambda!351964 () Int)

(assert (=> bs!1597141 (= lambda!351964 lambda!351961)))

(assert (=> d!2000677 (= (inv!83984 setElem!43544) (forall!15473 (exprs!6179 setElem!43544) lambda!351964))))

(declare-fun bs!1597142 () Bool)

(assert (= bs!1597142 d!2000677))

(declare-fun m!7181334 () Bool)

(assert (=> bs!1597142 m!7181334))

(assert (=> setNonEmpty!43544 d!2000677))

(declare-fun d!2000679 () Bool)

(declare-fun c!1162582 () Bool)

(assert (=> d!2000679 (= c!1162582 (isEmpty!37191 (t!378788 s!2326)))))

(declare-fun e!3873441 () Bool)

(assert (=> d!2000679 (= (matchZipper!2307 lt!2370240 (t!378788 s!2326)) e!3873441)))

(declare-fun b!6380860 () Bool)

(declare-fun nullableZipper!2060 ((InoxSet Context!11358)) Bool)

(assert (=> b!6380860 (= e!3873441 (nullableZipper!2060 lt!2370240))))

(declare-fun b!6380861 () Bool)

(assert (=> b!6380861 (= e!3873441 (matchZipper!2307 (derivationStepZipper!2261 lt!2370240 (head!13081 (t!378788 s!2326))) (tail!12166 (t!378788 s!2326))))))

(assert (= (and d!2000679 c!1162582) b!6380860))

(assert (= (and d!2000679 (not c!1162582)) b!6380861))

(declare-fun m!7181336 () Bool)

(assert (=> d!2000679 m!7181336))

(declare-fun m!7181338 () Bool)

(assert (=> b!6380860 m!7181338))

(declare-fun m!7181340 () Bool)

(assert (=> b!6380861 m!7181340))

(assert (=> b!6380861 m!7181340))

(declare-fun m!7181342 () Bool)

(assert (=> b!6380861 m!7181342))

(declare-fun m!7181344 () Bool)

(assert (=> b!6380861 m!7181344))

(assert (=> b!6380861 m!7181342))

(assert (=> b!6380861 m!7181344))

(declare-fun m!7181346 () Bool)

(assert (=> b!6380861 m!7181346))

(assert (=> b!6380207 d!2000679))

(declare-fun bs!1597143 () Bool)

(declare-fun d!2000681 () Bool)

(assert (= bs!1597143 (and d!2000681 d!2000671)))

(declare-fun lambda!351967 () Int)

(assert (=> bs!1597143 (= lambda!351967 lambda!351961)))

(declare-fun bs!1597144 () Bool)

(assert (= bs!1597144 (and d!2000681 d!2000677)))

(assert (=> bs!1597144 (= lambda!351967 lambda!351964)))

(declare-fun b!6380882 () Bool)

(declare-fun e!3873454 () Regex!16295)

(assert (=> b!6380882 (= e!3873454 EmptyLang!16295)))

(declare-fun b!6380883 () Bool)

(declare-fun e!3873455 () Regex!16295)

(assert (=> b!6380883 (= e!3873455 e!3873454)))

(declare-fun c!1162593 () Bool)

(assert (=> b!6380883 (= c!1162593 ((_ is Cons!65061) (unfocusZipperList!1716 zl!343)))))

(declare-fun b!6380884 () Bool)

(declare-fun e!3873456 () Bool)

(assert (=> b!6380884 (= e!3873456 (isEmpty!37188 (t!378789 (unfocusZipperList!1716 zl!343))))))

(declare-fun b!6380885 () Bool)

(declare-fun e!3873459 () Bool)

(declare-fun lt!2370329 () Regex!16295)

(assert (=> b!6380885 (= e!3873459 (= lt!2370329 (head!13082 (unfocusZipperList!1716 zl!343))))))

(declare-fun b!6380886 () Bool)

(assert (=> b!6380886 (= e!3873454 (Union!16295 (h!71509 (unfocusZipperList!1716 zl!343)) (generalisedUnion!2139 (t!378789 (unfocusZipperList!1716 zl!343)))))))

(declare-fun b!6380887 () Bool)

(declare-fun isUnion!1133 (Regex!16295) Bool)

(assert (=> b!6380887 (= e!3873459 (isUnion!1133 lt!2370329))))

(declare-fun e!3873458 () Bool)

(assert (=> d!2000681 e!3873458))

(declare-fun res!2624712 () Bool)

(assert (=> d!2000681 (=> (not res!2624712) (not e!3873458))))

(assert (=> d!2000681 (= res!2624712 (validRegex!8031 lt!2370329))))

(assert (=> d!2000681 (= lt!2370329 e!3873455)))

(declare-fun c!1162592 () Bool)

(assert (=> d!2000681 (= c!1162592 e!3873456)))

(declare-fun res!2624711 () Bool)

(assert (=> d!2000681 (=> (not res!2624711) (not e!3873456))))

(assert (=> d!2000681 (= res!2624711 ((_ is Cons!65061) (unfocusZipperList!1716 zl!343)))))

(assert (=> d!2000681 (forall!15473 (unfocusZipperList!1716 zl!343) lambda!351967)))

(assert (=> d!2000681 (= (generalisedUnion!2139 (unfocusZipperList!1716 zl!343)) lt!2370329)))

(declare-fun b!6380888 () Bool)

(assert (=> b!6380888 (= e!3873455 (h!71509 (unfocusZipperList!1716 zl!343)))))

(declare-fun b!6380889 () Bool)

(declare-fun e!3873457 () Bool)

(assert (=> b!6380889 (= e!3873457 e!3873459)))

(declare-fun c!1162591 () Bool)

(assert (=> b!6380889 (= c!1162591 (isEmpty!37188 (tail!12167 (unfocusZipperList!1716 zl!343))))))

(declare-fun b!6380890 () Bool)

(declare-fun isEmptyLang!1703 (Regex!16295) Bool)

(assert (=> b!6380890 (= e!3873457 (isEmptyLang!1703 lt!2370329))))

(declare-fun b!6380891 () Bool)

(assert (=> b!6380891 (= e!3873458 e!3873457)))

(declare-fun c!1162594 () Bool)

(assert (=> b!6380891 (= c!1162594 (isEmpty!37188 (unfocusZipperList!1716 zl!343)))))

(assert (= (and d!2000681 res!2624711) b!6380884))

(assert (= (and d!2000681 c!1162592) b!6380888))

(assert (= (and d!2000681 (not c!1162592)) b!6380883))

(assert (= (and b!6380883 c!1162593) b!6380886))

(assert (= (and b!6380883 (not c!1162593)) b!6380882))

(assert (= (and d!2000681 res!2624712) b!6380891))

(assert (= (and b!6380891 c!1162594) b!6380890))

(assert (= (and b!6380891 (not c!1162594)) b!6380889))

(assert (= (and b!6380889 c!1162591) b!6380885))

(assert (= (and b!6380889 (not c!1162591)) b!6380887))

(declare-fun m!7181348 () Bool)

(assert (=> b!6380890 m!7181348))

(declare-fun m!7181350 () Bool)

(assert (=> b!6380886 m!7181350))

(assert (=> b!6380889 m!7180778))

(declare-fun m!7181352 () Bool)

(assert (=> b!6380889 m!7181352))

(assert (=> b!6380889 m!7181352))

(declare-fun m!7181354 () Bool)

(assert (=> b!6380889 m!7181354))

(declare-fun m!7181356 () Bool)

(assert (=> d!2000681 m!7181356))

(assert (=> d!2000681 m!7180778))

(declare-fun m!7181358 () Bool)

(assert (=> d!2000681 m!7181358))

(assert (=> b!6380885 m!7180778))

(declare-fun m!7181360 () Bool)

(assert (=> b!6380885 m!7181360))

(declare-fun m!7181362 () Bool)

(assert (=> b!6380887 m!7181362))

(assert (=> b!6380891 m!7180778))

(declare-fun m!7181364 () Bool)

(assert (=> b!6380891 m!7181364))

(declare-fun m!7181366 () Bool)

(assert (=> b!6380884 m!7181366))

(assert (=> b!6380208 d!2000681))

(declare-fun bs!1597145 () Bool)

(declare-fun d!2000683 () Bool)

(assert (= bs!1597145 (and d!2000683 d!2000671)))

(declare-fun lambda!351970 () Int)

(assert (=> bs!1597145 (= lambda!351970 lambda!351961)))

(declare-fun bs!1597146 () Bool)

(assert (= bs!1597146 (and d!2000683 d!2000677)))

(assert (=> bs!1597146 (= lambda!351970 lambda!351964)))

(declare-fun bs!1597147 () Bool)

(assert (= bs!1597147 (and d!2000683 d!2000681)))

(assert (=> bs!1597147 (= lambda!351970 lambda!351967)))

(declare-fun lt!2370332 () List!65185)

(assert (=> d!2000683 (forall!15473 lt!2370332 lambda!351970)))

(declare-fun e!3873462 () List!65185)

(assert (=> d!2000683 (= lt!2370332 e!3873462)))

(declare-fun c!1162597 () Bool)

(assert (=> d!2000683 (= c!1162597 ((_ is Cons!65062) zl!343))))

(assert (=> d!2000683 (= (unfocusZipperList!1716 zl!343) lt!2370332)))

(declare-fun b!6380896 () Bool)

(assert (=> b!6380896 (= e!3873462 (Cons!65061 (generalisedConcat!1892 (exprs!6179 (h!71510 zl!343))) (unfocusZipperList!1716 (t!378790 zl!343))))))

(declare-fun b!6380897 () Bool)

(assert (=> b!6380897 (= e!3873462 Nil!65061)))

(assert (= (and d!2000683 c!1162597) b!6380896))

(assert (= (and d!2000683 (not c!1162597)) b!6380897))

(declare-fun m!7181368 () Bool)

(assert (=> d!2000683 m!7181368))

(assert (=> b!6380896 m!7180818))

(declare-fun m!7181370 () Bool)

(assert (=> b!6380896 m!7181370))

(assert (=> b!6380208 d!2000683))

(declare-fun bs!1597148 () Bool)

(declare-fun b!6380900 () Bool)

(assert (= bs!1597148 (and b!6380900 b!6380204)))

(declare-fun lambda!351971 () Int)

(assert (=> bs!1597148 (not (= lambda!351971 lambda!351906))))

(declare-fun bs!1597149 () Bool)

(assert (= bs!1597149 (and b!6380900 d!2000667)))

(assert (=> bs!1597149 (not (= lambda!351971 lambda!351957))))

(declare-fun bs!1597150 () Bool)

(assert (= bs!1597150 (and b!6380900 d!2000665)))

(assert (=> bs!1597150 (not (= lambda!351971 lambda!351952))))

(assert (=> bs!1597148 (not (= lambda!351971 lambda!351905))))

(declare-fun bs!1597151 () Bool)

(assert (= bs!1597151 (and b!6380900 b!6380474)))

(assert (=> bs!1597151 (= (and (= (reg!16624 r!7292) (reg!16624 lt!2370211)) (= r!7292 lt!2370211)) (= lambda!351971 lambda!351933))))

(declare-fun bs!1597152 () Bool)

(assert (= bs!1597152 (and b!6380900 b!6380478)))

(assert (=> bs!1597152 (not (= lambda!351971 lambda!351934))))

(assert (=> bs!1597149 (not (= lambda!351971 lambda!351958))))

(assert (=> b!6380900 true))

(assert (=> b!6380900 true))

(declare-fun bs!1597153 () Bool)

(declare-fun b!6380904 () Bool)

(assert (= bs!1597153 (and b!6380904 b!6380204)))

(declare-fun lambda!351972 () Int)

(assert (=> bs!1597153 (= lambda!351972 lambda!351906)))

(declare-fun bs!1597154 () Bool)

(assert (= bs!1597154 (and b!6380904 d!2000667)))

(assert (=> bs!1597154 (not (= lambda!351972 lambda!351957))))

(declare-fun bs!1597155 () Bool)

(assert (= bs!1597155 (and b!6380904 d!2000665)))

(assert (=> bs!1597155 (not (= lambda!351972 lambda!351952))))

(declare-fun bs!1597156 () Bool)

(assert (= bs!1597156 (and b!6380904 b!6380900)))

(assert (=> bs!1597156 (not (= lambda!351972 lambda!351971))))

(assert (=> bs!1597153 (not (= lambda!351972 lambda!351905))))

(declare-fun bs!1597157 () Bool)

(assert (= bs!1597157 (and b!6380904 b!6380474)))

(assert (=> bs!1597157 (not (= lambda!351972 lambda!351933))))

(declare-fun bs!1597158 () Bool)

(assert (= bs!1597158 (and b!6380904 b!6380478)))

(assert (=> bs!1597158 (= (and (= (regOne!33102 r!7292) (regOne!33102 lt!2370211)) (= (regTwo!33102 r!7292) (regTwo!33102 lt!2370211))) (= lambda!351972 lambda!351934))))

(assert (=> bs!1597154 (= lambda!351972 lambda!351958)))

(assert (=> b!6380904 true))

(assert (=> b!6380904 true))

(declare-fun b!6380898 () Bool)

(declare-fun e!3873469 () Bool)

(assert (=> b!6380898 (= e!3873469 (matchRSpec!3396 (regTwo!33103 r!7292) s!2326))))

(declare-fun b!6380899 () Bool)

(declare-fun e!3873466 () Bool)

(assert (=> b!6380899 (= e!3873466 (= s!2326 (Cons!65060 (c!1162404 r!7292) Nil!65060)))))

(declare-fun c!1162598 () Bool)

(declare-fun call!545257 () Bool)

(declare-fun bm!545251 () Bool)

(assert (=> bm!545251 (= call!545257 (Exists!3365 (ite c!1162598 lambda!351971 lambda!351972)))))

(declare-fun e!3873468 () Bool)

(assert (=> b!6380900 (= e!3873468 call!545257)))

(declare-fun b!6380901 () Bool)

(declare-fun c!1162601 () Bool)

(assert (=> b!6380901 (= c!1162601 ((_ is ElementMatch!16295) r!7292))))

(declare-fun e!3873463 () Bool)

(assert (=> b!6380901 (= e!3873463 e!3873466)))

(declare-fun b!6380902 () Bool)

(declare-fun c!1162600 () Bool)

(assert (=> b!6380902 (= c!1162600 ((_ is Union!16295) r!7292))))

(declare-fun e!3873467 () Bool)

(assert (=> b!6380902 (= e!3873466 e!3873467)))

(declare-fun b!6380903 () Bool)

(declare-fun e!3873465 () Bool)

(declare-fun call!545256 () Bool)

(assert (=> b!6380903 (= e!3873465 call!545256)))

(declare-fun d!2000685 () Bool)

(declare-fun c!1162599 () Bool)

(assert (=> d!2000685 (= c!1162599 ((_ is EmptyExpr!16295) r!7292))))

(assert (=> d!2000685 (= (matchRSpec!3396 r!7292 s!2326) e!3873465)))

(declare-fun e!3873464 () Bool)

(assert (=> b!6380904 (= e!3873464 call!545257)))

(declare-fun b!6380905 () Bool)

(assert (=> b!6380905 (= e!3873467 e!3873469)))

(declare-fun res!2624713 () Bool)

(assert (=> b!6380905 (= res!2624713 (matchRSpec!3396 (regOne!33103 r!7292) s!2326))))

(assert (=> b!6380905 (=> res!2624713 e!3873469)))

(declare-fun b!6380906 () Bool)

(declare-fun res!2624715 () Bool)

(assert (=> b!6380906 (=> res!2624715 e!3873468)))

(assert (=> b!6380906 (= res!2624715 call!545256)))

(assert (=> b!6380906 (= e!3873464 e!3873468)))

(declare-fun bm!545252 () Bool)

(assert (=> bm!545252 (= call!545256 (isEmpty!37191 s!2326))))

(declare-fun b!6380907 () Bool)

(assert (=> b!6380907 (= e!3873465 e!3873463)))

(declare-fun res!2624714 () Bool)

(assert (=> b!6380907 (= res!2624714 (not ((_ is EmptyLang!16295) r!7292)))))

(assert (=> b!6380907 (=> (not res!2624714) (not e!3873463))))

(declare-fun b!6380908 () Bool)

(assert (=> b!6380908 (= e!3873467 e!3873464)))

(assert (=> b!6380908 (= c!1162598 ((_ is Star!16295) r!7292))))

(assert (= (and d!2000685 c!1162599) b!6380903))

(assert (= (and d!2000685 (not c!1162599)) b!6380907))

(assert (= (and b!6380907 res!2624714) b!6380901))

(assert (= (and b!6380901 c!1162601) b!6380899))

(assert (= (and b!6380901 (not c!1162601)) b!6380902))

(assert (= (and b!6380902 c!1162600) b!6380905))

(assert (= (and b!6380902 (not c!1162600)) b!6380908))

(assert (= (and b!6380905 (not res!2624713)) b!6380898))

(assert (= (and b!6380908 c!1162598) b!6380906))

(assert (= (and b!6380908 (not c!1162598)) b!6380904))

(assert (= (and b!6380906 (not res!2624715)) b!6380900))

(assert (= (or b!6380900 b!6380904) bm!545251))

(assert (= (or b!6380903 b!6380906) bm!545252))

(declare-fun m!7181372 () Bool)

(assert (=> b!6380898 m!7181372))

(declare-fun m!7181374 () Bool)

(assert (=> bm!545251 m!7181374))

(declare-fun m!7181376 () Bool)

(assert (=> b!6380905 m!7181376))

(assert (=> bm!545252 m!7180982))

(assert (=> b!6380206 d!2000685))

(declare-fun b!6380909 () Bool)

(declare-fun res!2624720 () Bool)

(declare-fun e!3873472 () Bool)

(assert (=> b!6380909 (=> res!2624720 e!3873472)))

(assert (=> b!6380909 (= res!2624720 (not ((_ is ElementMatch!16295) r!7292)))))

(declare-fun e!3873474 () Bool)

(assert (=> b!6380909 (= e!3873474 e!3873472)))

(declare-fun b!6380910 () Bool)

(declare-fun e!3873473 () Bool)

(declare-fun e!3873475 () Bool)

(assert (=> b!6380910 (= e!3873473 e!3873475)))

(declare-fun res!2624719 () Bool)

(assert (=> b!6380910 (=> res!2624719 e!3873475)))

(declare-fun call!545258 () Bool)

(assert (=> b!6380910 (= res!2624719 call!545258)))

(declare-fun b!6380911 () Bool)

(assert (=> b!6380911 (= e!3873475 (not (= (head!13081 s!2326) (c!1162404 r!7292))))))

(declare-fun b!6380912 () Bool)

(declare-fun res!2624723 () Bool)

(declare-fun e!3873471 () Bool)

(assert (=> b!6380912 (=> (not res!2624723) (not e!3873471))))

(assert (=> b!6380912 (= res!2624723 (isEmpty!37191 (tail!12166 s!2326)))))

(declare-fun b!6380913 () Bool)

(declare-fun res!2624722 () Bool)

(assert (=> b!6380913 (=> res!2624722 e!3873475)))

(assert (=> b!6380913 (= res!2624722 (not (isEmpty!37191 (tail!12166 s!2326))))))

(declare-fun b!6380914 () Bool)

(assert (=> b!6380914 (= e!3873471 (= (head!13081 s!2326) (c!1162404 r!7292)))))

(declare-fun b!6380915 () Bool)

(declare-fun e!3873470 () Bool)

(assert (=> b!6380915 (= e!3873470 (nullable!6288 r!7292))))

(declare-fun d!2000687 () Bool)

(declare-fun e!3873476 () Bool)

(assert (=> d!2000687 e!3873476))

(declare-fun c!1162602 () Bool)

(assert (=> d!2000687 (= c!1162602 ((_ is EmptyExpr!16295) r!7292))))

(declare-fun lt!2370333 () Bool)

(assert (=> d!2000687 (= lt!2370333 e!3873470)))

(declare-fun c!1162604 () Bool)

(assert (=> d!2000687 (= c!1162604 (isEmpty!37191 s!2326))))

(assert (=> d!2000687 (validRegex!8031 r!7292)))

(assert (=> d!2000687 (= (matchR!8478 r!7292 s!2326) lt!2370333)))

(declare-fun b!6380916 () Bool)

(declare-fun res!2624718 () Bool)

(assert (=> b!6380916 (=> (not res!2624718) (not e!3873471))))

(assert (=> b!6380916 (= res!2624718 (not call!545258))))

(declare-fun b!6380917 () Bool)

(declare-fun res!2624717 () Bool)

(assert (=> b!6380917 (=> res!2624717 e!3873472)))

(assert (=> b!6380917 (= res!2624717 e!3873471)))

(declare-fun res!2624721 () Bool)

(assert (=> b!6380917 (=> (not res!2624721) (not e!3873471))))

(assert (=> b!6380917 (= res!2624721 lt!2370333)))

(declare-fun b!6380918 () Bool)

(assert (=> b!6380918 (= e!3873476 (= lt!2370333 call!545258))))

(declare-fun b!6380919 () Bool)

(assert (=> b!6380919 (= e!3873470 (matchR!8478 (derivativeStep!4999 r!7292 (head!13081 s!2326)) (tail!12166 s!2326)))))

(declare-fun b!6380920 () Bool)

(assert (=> b!6380920 (= e!3873476 e!3873474)))

(declare-fun c!1162603 () Bool)

(assert (=> b!6380920 (= c!1162603 ((_ is EmptyLang!16295) r!7292))))

(declare-fun b!6380921 () Bool)

(assert (=> b!6380921 (= e!3873472 e!3873473)))

(declare-fun res!2624716 () Bool)

(assert (=> b!6380921 (=> (not res!2624716) (not e!3873473))))

(assert (=> b!6380921 (= res!2624716 (not lt!2370333))))

(declare-fun bm!545253 () Bool)

(assert (=> bm!545253 (= call!545258 (isEmpty!37191 s!2326))))

(declare-fun b!6380922 () Bool)

(assert (=> b!6380922 (= e!3873474 (not lt!2370333))))

(assert (= (and d!2000687 c!1162604) b!6380915))

(assert (= (and d!2000687 (not c!1162604)) b!6380919))

(assert (= (and d!2000687 c!1162602) b!6380918))

(assert (= (and d!2000687 (not c!1162602)) b!6380920))

(assert (= (and b!6380920 c!1162603) b!6380922))

(assert (= (and b!6380920 (not c!1162603)) b!6380909))

(assert (= (and b!6380909 (not res!2624720)) b!6380917))

(assert (= (and b!6380917 res!2624721) b!6380916))

(assert (= (and b!6380916 res!2624718) b!6380912))

(assert (= (and b!6380912 res!2624723) b!6380914))

(assert (= (and b!6380917 (not res!2624717)) b!6380921))

(assert (= (and b!6380921 res!2624716) b!6380910))

(assert (= (and b!6380910 (not res!2624719)) b!6380913))

(assert (= (and b!6380913 (not res!2624722)) b!6380911))

(assert (= (or b!6380918 b!6380910 b!6380916) bm!545253))

(assert (=> bm!545253 m!7180982))

(assert (=> b!6380914 m!7180984))

(declare-fun m!7181378 () Bool)

(assert (=> b!6380915 m!7181378))

(assert (=> b!6380913 m!7180988))

(assert (=> b!6380913 m!7180988))

(assert (=> b!6380913 m!7180990))

(assert (=> b!6380919 m!7180984))

(assert (=> b!6380919 m!7180984))

(declare-fun m!7181380 () Bool)

(assert (=> b!6380919 m!7181380))

(assert (=> b!6380919 m!7180988))

(assert (=> b!6380919 m!7181380))

(assert (=> b!6380919 m!7180988))

(declare-fun m!7181382 () Bool)

(assert (=> b!6380919 m!7181382))

(assert (=> b!6380912 m!7180988))

(assert (=> b!6380912 m!7180988))

(assert (=> b!6380912 m!7180990))

(assert (=> d!2000687 m!7180982))

(assert (=> d!2000687 m!7180830))

(assert (=> b!6380911 m!7180984))

(assert (=> b!6380206 d!2000687))

(declare-fun d!2000689 () Bool)

(assert (=> d!2000689 (= (matchR!8478 r!7292 s!2326) (matchRSpec!3396 r!7292 s!2326))))

(declare-fun lt!2370334 () Unit!158511)

(assert (=> d!2000689 (= lt!2370334 (choose!47455 r!7292 s!2326))))

(assert (=> d!2000689 (validRegex!8031 r!7292)))

(assert (=> d!2000689 (= (mainMatchTheorem!3396 r!7292 s!2326) lt!2370334)))

(declare-fun bs!1597159 () Bool)

(assert (= bs!1597159 d!2000689))

(assert (=> bs!1597159 m!7180882))

(assert (=> bs!1597159 m!7180880))

(declare-fun m!7181384 () Bool)

(assert (=> bs!1597159 m!7181384))

(assert (=> bs!1597159 m!7180830))

(assert (=> b!6380206 d!2000689))

(declare-fun bm!545254 () Bool)

(declare-fun c!1162605 () Bool)

(declare-fun c!1162606 () Bool)

(declare-fun call!545259 () Bool)

(assert (=> bm!545254 (= call!545259 (validRegex!8031 (ite c!1162606 (reg!16624 r!7292) (ite c!1162605 (regOne!33103 r!7292) (regOne!33102 r!7292)))))))

(declare-fun b!6380923 () Bool)

(declare-fun res!2624728 () Bool)

(declare-fun e!3873477 () Bool)

(assert (=> b!6380923 (=> res!2624728 e!3873477)))

(assert (=> b!6380923 (= res!2624728 (not ((_ is Concat!25140) r!7292)))))

(declare-fun e!3873482 () Bool)

(assert (=> b!6380923 (= e!3873482 e!3873477)))

(declare-fun b!6380924 () Bool)

(declare-fun res!2624725 () Bool)

(declare-fun e!3873479 () Bool)

(assert (=> b!6380924 (=> (not res!2624725) (not e!3873479))))

(declare-fun call!545261 () Bool)

(assert (=> b!6380924 (= res!2624725 call!545261)))

(assert (=> b!6380924 (= e!3873482 e!3873479)))

(declare-fun b!6380925 () Bool)

(declare-fun e!3873483 () Bool)

(declare-fun e!3873481 () Bool)

(assert (=> b!6380925 (= e!3873483 e!3873481)))

(declare-fun res!2624726 () Bool)

(assert (=> b!6380925 (= res!2624726 (not (nullable!6288 (reg!16624 r!7292))))))

(assert (=> b!6380925 (=> (not res!2624726) (not e!3873481))))

(declare-fun b!6380926 () Bool)

(declare-fun e!3873478 () Bool)

(declare-fun call!545260 () Bool)

(assert (=> b!6380926 (= e!3873478 call!545260)))

(declare-fun b!6380927 () Bool)

(assert (=> b!6380927 (= e!3873481 call!545259)))

(declare-fun b!6380928 () Bool)

(assert (=> b!6380928 (= e!3873483 e!3873482)))

(assert (=> b!6380928 (= c!1162605 ((_ is Union!16295) r!7292))))

(declare-fun b!6380929 () Bool)

(declare-fun e!3873480 () Bool)

(assert (=> b!6380929 (= e!3873480 e!3873483)))

(assert (=> b!6380929 (= c!1162606 ((_ is Star!16295) r!7292))))

(declare-fun bm!545256 () Bool)

(assert (=> bm!545256 (= call!545260 (validRegex!8031 (ite c!1162605 (regTwo!33103 r!7292) (regTwo!33102 r!7292))))))

(declare-fun b!6380930 () Bool)

(assert (=> b!6380930 (= e!3873479 call!545260)))

(declare-fun b!6380931 () Bool)

(assert (=> b!6380931 (= e!3873477 e!3873478)))

(declare-fun res!2624727 () Bool)

(assert (=> b!6380931 (=> (not res!2624727) (not e!3873478))))

(assert (=> b!6380931 (= res!2624727 call!545261)))

(declare-fun d!2000691 () Bool)

(declare-fun res!2624724 () Bool)

(assert (=> d!2000691 (=> res!2624724 e!3873480)))

(assert (=> d!2000691 (= res!2624724 ((_ is ElementMatch!16295) r!7292))))

(assert (=> d!2000691 (= (validRegex!8031 r!7292) e!3873480)))

(declare-fun bm!545255 () Bool)

(assert (=> bm!545255 (= call!545261 call!545259)))

(assert (= (and d!2000691 (not res!2624724)) b!6380929))

(assert (= (and b!6380929 c!1162606) b!6380925))

(assert (= (and b!6380929 (not c!1162606)) b!6380928))

(assert (= (and b!6380925 res!2624726) b!6380927))

(assert (= (and b!6380928 c!1162605) b!6380924))

(assert (= (and b!6380928 (not c!1162605)) b!6380923))

(assert (= (and b!6380924 res!2624725) b!6380930))

(assert (= (and b!6380923 (not res!2624728)) b!6380931))

(assert (= (and b!6380931 res!2624727) b!6380926))

(assert (= (or b!6380930 b!6380926) bm!545256))

(assert (= (or b!6380924 b!6380931) bm!545255))

(assert (= (or b!6380927 bm!545255) bm!545254))

(declare-fun m!7181386 () Bool)

(assert (=> bm!545254 m!7181386))

(declare-fun m!7181388 () Bool)

(assert (=> b!6380925 m!7181388))

(declare-fun m!7181390 () Bool)

(assert (=> bm!545256 m!7181390))

(assert (=> start!632090 d!2000691))

(declare-fun d!2000693 () Bool)

(assert (=> d!2000693 (= (flatMap!1800 z!1189 lambda!351907) (dynLambda!25813 lambda!351907 (h!71510 zl!343)))))

(declare-fun lt!2370335 () Unit!158511)

(assert (=> d!2000693 (= lt!2370335 (choose!47457 z!1189 (h!71510 zl!343) lambda!351907))))

(assert (=> d!2000693 (= z!1189 (store ((as const (Array Context!11358 Bool)) false) (h!71510 zl!343) true))))

(assert (=> d!2000693 (= (lemmaFlatMapOnSingletonSet!1326 z!1189 (h!71510 zl!343) lambda!351907) lt!2370335)))

(declare-fun b_lambda!242475 () Bool)

(assert (=> (not b_lambda!242475) (not d!2000693)))

(declare-fun bs!1597160 () Bool)

(assert (= bs!1597160 d!2000693))

(assert (=> bs!1597160 m!7180858))

(declare-fun m!7181392 () Bool)

(assert (=> bs!1597160 m!7181392))

(declare-fun m!7181394 () Bool)

(assert (=> bs!1597160 m!7181394))

(declare-fun m!7181396 () Bool)

(assert (=> bs!1597160 m!7181396))

(assert (=> b!6380195 d!2000693))

(declare-fun d!2000695 () Bool)

(assert (=> d!2000695 (= (nullable!6288 (h!71509 (exprs!6179 (h!71510 zl!343)))) (nullableFct!2234 (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun bs!1597161 () Bool)

(assert (= bs!1597161 d!2000695))

(declare-fun m!7181398 () Bool)

(assert (=> bs!1597161 m!7181398))

(assert (=> b!6380195 d!2000695))

(declare-fun b!6380932 () Bool)

(declare-fun e!3873486 () (InoxSet Context!11358))

(declare-fun call!545262 () (InoxSet Context!11358))

(assert (=> b!6380932 (= e!3873486 call!545262)))

(declare-fun bm!545257 () Bool)

(assert (=> bm!545257 (= call!545262 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343))))))) (Context!11359 (t!378789 (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343)))))))) (h!71508 s!2326)))))

(declare-fun b!6380933 () Bool)

(assert (=> b!6380933 (= e!3873486 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000697 () Bool)

(declare-fun c!1162608 () Bool)

(declare-fun e!3873485 () Bool)

(assert (=> d!2000697 (= c!1162608 e!3873485)))

(declare-fun res!2624729 () Bool)

(assert (=> d!2000697 (=> (not res!2624729) (not e!3873485))))

(assert (=> d!2000697 (= res!2624729 ((_ is Cons!65061) (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343))))))))))

(declare-fun e!3873484 () (InoxSet Context!11358))

(assert (=> d!2000697 (= (derivationStepZipperUp!1469 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343))))) (h!71508 s!2326)) e!3873484)))

(declare-fun b!6380934 () Bool)

(assert (=> b!6380934 (= e!3873484 e!3873486)))

(declare-fun c!1162607 () Bool)

(assert (=> b!6380934 (= c!1162607 ((_ is Cons!65061) (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343))))))))))

(declare-fun b!6380935 () Bool)

(assert (=> b!6380935 (= e!3873485 (nullable!6288 (h!71509 (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343)))))))))))

(declare-fun b!6380936 () Bool)

(assert (=> b!6380936 (= e!3873484 ((_ map or) call!545262 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 (Context!11359 (Cons!65061 (h!71509 (exprs!6179 (h!71510 zl!343))) (t!378789 (exprs!6179 (h!71510 zl!343)))))))) (h!71508 s!2326))))))

(assert (= (and d!2000697 res!2624729) b!6380935))

(assert (= (and d!2000697 c!1162608) b!6380936))

(assert (= (and d!2000697 (not c!1162608)) b!6380934))

(assert (= (and b!6380934 c!1162607) b!6380932))

(assert (= (and b!6380934 (not c!1162607)) b!6380933))

(assert (= (or b!6380936 b!6380932) bm!545257))

(declare-fun m!7181400 () Bool)

(assert (=> bm!545257 m!7181400))

(declare-fun m!7181402 () Bool)

(assert (=> b!6380935 m!7181402))

(declare-fun m!7181404 () Bool)

(assert (=> b!6380936 m!7181404))

(assert (=> b!6380195 d!2000697))

(declare-fun d!2000699 () Bool)

(assert (=> d!2000699 (= (flatMap!1800 z!1189 lambda!351907) (choose!47456 z!1189 lambda!351907))))

(declare-fun bs!1597162 () Bool)

(assert (= bs!1597162 d!2000699))

(declare-fun m!7181406 () Bool)

(assert (=> bs!1597162 m!7181406))

(assert (=> b!6380195 d!2000699))

(declare-fun b!6380937 () Bool)

(declare-fun e!3873489 () (InoxSet Context!11358))

(declare-fun call!545263 () (InoxSet Context!11358))

(assert (=> b!6380937 (= e!3873489 call!545263)))

(declare-fun bm!545258 () Bool)

(assert (=> bm!545258 (= call!545263 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 (h!71510 zl!343))) (Context!11359 (t!378789 (exprs!6179 (h!71510 zl!343)))) (h!71508 s!2326)))))

(declare-fun b!6380938 () Bool)

(assert (=> b!6380938 (= e!3873489 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000701 () Bool)

(declare-fun c!1162610 () Bool)

(declare-fun e!3873488 () Bool)

(assert (=> d!2000701 (= c!1162610 e!3873488)))

(declare-fun res!2624730 () Bool)

(assert (=> d!2000701 (=> (not res!2624730) (not e!3873488))))

(assert (=> d!2000701 (= res!2624730 ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343))))))

(declare-fun e!3873487 () (InoxSet Context!11358))

(assert (=> d!2000701 (= (derivationStepZipperUp!1469 (h!71510 zl!343) (h!71508 s!2326)) e!3873487)))

(declare-fun b!6380939 () Bool)

(assert (=> b!6380939 (= e!3873487 e!3873489)))

(declare-fun c!1162609 () Bool)

(assert (=> b!6380939 (= c!1162609 ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343))))))

(declare-fun b!6380940 () Bool)

(assert (=> b!6380940 (= e!3873488 (nullable!6288 (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380941 () Bool)

(assert (=> b!6380941 (= e!3873487 ((_ map or) call!545263 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 (h!71510 zl!343)))) (h!71508 s!2326))))))

(assert (= (and d!2000701 res!2624730) b!6380940))

(assert (= (and d!2000701 c!1162610) b!6380941))

(assert (= (and d!2000701 (not c!1162610)) b!6380939))

(assert (= (and b!6380939 c!1162609) b!6380937))

(assert (= (and b!6380939 (not c!1162609)) b!6380938))

(assert (= (or b!6380941 b!6380937) bm!545258))

(declare-fun m!7181408 () Bool)

(assert (=> bm!545258 m!7181408))

(assert (=> b!6380940 m!7180860))

(declare-fun m!7181410 () Bool)

(assert (=> b!6380941 m!7181410))

(assert (=> b!6380195 d!2000701))

(declare-fun b!6380942 () Bool)

(declare-fun e!3873492 () (InoxSet Context!11358))

(declare-fun call!545264 () (InoxSet Context!11358))

(assert (=> b!6380942 (= e!3873492 call!545264)))

(declare-fun bm!545259 () Bool)

(assert (=> bm!545259 (= call!545264 (derivationStepZipperDown!1543 (h!71509 (exprs!6179 lt!2370208)) (Context!11359 (t!378789 (exprs!6179 lt!2370208))) (h!71508 s!2326)))))

(declare-fun b!6380943 () Bool)

(assert (=> b!6380943 (= e!3873492 ((as const (Array Context!11358 Bool)) false))))

(declare-fun d!2000703 () Bool)

(declare-fun c!1162612 () Bool)

(declare-fun e!3873491 () Bool)

(assert (=> d!2000703 (= c!1162612 e!3873491)))

(declare-fun res!2624731 () Bool)

(assert (=> d!2000703 (=> (not res!2624731) (not e!3873491))))

(assert (=> d!2000703 (= res!2624731 ((_ is Cons!65061) (exprs!6179 lt!2370208)))))

(declare-fun e!3873490 () (InoxSet Context!11358))

(assert (=> d!2000703 (= (derivationStepZipperUp!1469 lt!2370208 (h!71508 s!2326)) e!3873490)))

(declare-fun b!6380944 () Bool)

(assert (=> b!6380944 (= e!3873490 e!3873492)))

(declare-fun c!1162611 () Bool)

(assert (=> b!6380944 (= c!1162611 ((_ is Cons!65061) (exprs!6179 lt!2370208)))))

(declare-fun b!6380945 () Bool)

(assert (=> b!6380945 (= e!3873491 (nullable!6288 (h!71509 (exprs!6179 lt!2370208))))))

(declare-fun b!6380946 () Bool)

(assert (=> b!6380946 (= e!3873490 ((_ map or) call!545264 (derivationStepZipperUp!1469 (Context!11359 (t!378789 (exprs!6179 lt!2370208))) (h!71508 s!2326))))))

(assert (= (and d!2000703 res!2624731) b!6380945))

(assert (= (and d!2000703 c!1162612) b!6380946))

(assert (= (and d!2000703 (not c!1162612)) b!6380944))

(assert (= (and b!6380944 c!1162611) b!6380942))

(assert (= (and b!6380944 (not c!1162611)) b!6380943))

(assert (= (or b!6380946 b!6380942) bm!545259))

(declare-fun m!7181412 () Bool)

(assert (=> bm!545259 m!7181412))

(declare-fun m!7181414 () Bool)

(assert (=> b!6380945 m!7181414))

(declare-fun m!7181416 () Bool)

(assert (=> b!6380946 m!7181416))

(assert (=> b!6380195 d!2000703))

(declare-fun b!6380969 () Bool)

(declare-fun e!3873510 () (InoxSet Context!11358))

(declare-fun e!3873509 () (InoxSet Context!11358))

(assert (=> b!6380969 (= e!3873510 e!3873509)))

(declare-fun c!1162627 () Bool)

(assert (=> b!6380969 (= c!1162627 ((_ is Concat!25140) (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun call!545277 () List!65185)

(declare-fun bm!545272 () Bool)

(declare-fun c!1162624 () Bool)

(declare-fun call!545281 () (InoxSet Context!11358))

(assert (=> bm!545272 (= call!545281 (derivationStepZipperDown!1543 (ite c!1162624 (regOne!33103 (h!71509 (exprs!6179 (h!71510 zl!343)))) (regOne!33102 (h!71509 (exprs!6179 (h!71510 zl!343))))) (ite c!1162624 lt!2370208 (Context!11359 call!545277)) (h!71508 s!2326)))))

(declare-fun d!2000705 () Bool)

(declare-fun c!1162623 () Bool)

(assert (=> d!2000705 (= c!1162623 (and ((_ is ElementMatch!16295) (h!71509 (exprs!6179 (h!71510 zl!343)))) (= (c!1162404 (h!71509 (exprs!6179 (h!71510 zl!343)))) (h!71508 s!2326))))))

(declare-fun e!3873506 () (InoxSet Context!11358))

(assert (=> d!2000705 (= (derivationStepZipperDown!1543 (h!71509 (exprs!6179 (h!71510 zl!343))) lt!2370208 (h!71508 s!2326)) e!3873506)))

(declare-fun bm!545273 () Bool)

(declare-fun call!545282 () List!65185)

(assert (=> bm!545273 (= call!545282 call!545277)))

(declare-fun b!6380970 () Bool)

(declare-fun call!545279 () (InoxSet Context!11358))

(assert (=> b!6380970 (= e!3873510 ((_ map or) call!545281 call!545279))))

(declare-fun b!6380971 () Bool)

(assert (=> b!6380971 (= e!3873506 (store ((as const (Array Context!11358 Bool)) false) lt!2370208 true))))

(declare-fun b!6380972 () Bool)

(declare-fun call!545280 () (InoxSet Context!11358))

(assert (=> b!6380972 (= e!3873509 call!545280)))

(declare-fun bm!545274 () Bool)

(declare-fun call!545278 () (InoxSet Context!11358))

(assert (=> bm!545274 (= call!545279 call!545278)))

(declare-fun b!6380973 () Bool)

(declare-fun e!3873508 () (InoxSet Context!11358))

(assert (=> b!6380973 (= e!3873508 call!545280)))

(declare-fun b!6380974 () Bool)

(declare-fun e!3873507 () (InoxSet Context!11358))

(assert (=> b!6380974 (= e!3873506 e!3873507)))

(assert (=> b!6380974 (= c!1162624 ((_ is Union!16295) (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(declare-fun b!6380975 () Bool)

(assert (=> b!6380975 (= e!3873508 ((as const (Array Context!11358 Bool)) false))))

(declare-fun b!6380976 () Bool)

(assert (=> b!6380976 (= e!3873507 ((_ map or) call!545281 call!545278))))

(declare-fun bm!545275 () Bool)

(assert (=> bm!545275 (= call!545280 call!545279)))

(declare-fun c!1162625 () Bool)

(declare-fun bm!545276 () Bool)

(assert (=> bm!545276 (= call!545278 (derivationStepZipperDown!1543 (ite c!1162624 (regTwo!33103 (h!71509 (exprs!6179 (h!71510 zl!343)))) (ite c!1162625 (regTwo!33102 (h!71509 (exprs!6179 (h!71510 zl!343)))) (ite c!1162627 (regOne!33102 (h!71509 (exprs!6179 (h!71510 zl!343)))) (reg!16624 (h!71509 (exprs!6179 (h!71510 zl!343))))))) (ite (or c!1162624 c!1162625) lt!2370208 (Context!11359 call!545282)) (h!71508 s!2326)))))

(declare-fun b!6380977 () Bool)

(declare-fun e!3873505 () Bool)

(assert (=> b!6380977 (= c!1162625 e!3873505)))

(declare-fun res!2624734 () Bool)

(assert (=> b!6380977 (=> (not res!2624734) (not e!3873505))))

(assert (=> b!6380977 (= res!2624734 ((_ is Concat!25140) (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(assert (=> b!6380977 (= e!3873507 e!3873510)))

(declare-fun b!6380978 () Bool)

(declare-fun c!1162626 () Bool)

(assert (=> b!6380978 (= c!1162626 ((_ is Star!16295) (h!71509 (exprs!6179 (h!71510 zl!343)))))))

(assert (=> b!6380978 (= e!3873509 e!3873508)))

(declare-fun b!6380979 () Bool)

(assert (=> b!6380979 (= e!3873505 (nullable!6288 (regOne!33102 (h!71509 (exprs!6179 (h!71510 zl!343))))))))

(declare-fun bm!545277 () Bool)

(declare-fun $colon$colon!2156 (List!65185 Regex!16295) List!65185)

(assert (=> bm!545277 (= call!545277 ($colon$colon!2156 (exprs!6179 lt!2370208) (ite (or c!1162625 c!1162627) (regTwo!33102 (h!71509 (exprs!6179 (h!71510 zl!343)))) (h!71509 (exprs!6179 (h!71510 zl!343))))))))

(assert (= (and d!2000705 c!1162623) b!6380971))

(assert (= (and d!2000705 (not c!1162623)) b!6380974))

(assert (= (and b!6380974 c!1162624) b!6380976))

(assert (= (and b!6380974 (not c!1162624)) b!6380977))

(assert (= (and b!6380977 res!2624734) b!6380979))

(assert (= (and b!6380977 c!1162625) b!6380970))

(assert (= (and b!6380977 (not c!1162625)) b!6380969))

(assert (= (and b!6380969 c!1162627) b!6380972))

(assert (= (and b!6380969 (not c!1162627)) b!6380978))

(assert (= (and b!6380978 c!1162626) b!6380973))

(assert (= (and b!6380978 (not c!1162626)) b!6380975))

(assert (= (or b!6380972 b!6380973) bm!545273))

(assert (= (or b!6380972 b!6380973) bm!545275))

(assert (= (or b!6380970 bm!545273) bm!545277))

(assert (= (or b!6380970 bm!545275) bm!545274))

(assert (= (or b!6380976 bm!545274) bm!545276))

(assert (= (or b!6380976 b!6380970) bm!545272))

(declare-fun m!7181418 () Bool)

(assert (=> bm!545272 m!7181418))

(declare-fun m!7181420 () Bool)

(assert (=> bm!545276 m!7181420))

(declare-fun m!7181422 () Bool)

(assert (=> bm!545277 m!7181422))

(declare-fun m!7181424 () Bool)

(assert (=> b!6380979 m!7181424))

(declare-fun m!7181426 () Bool)

(assert (=> b!6380971 m!7181426))

(assert (=> b!6380195 d!2000705))

(declare-fun d!2000707 () Bool)

(declare-fun c!1162628 () Bool)

(assert (=> d!2000707 (= c!1162628 (isEmpty!37191 s!2326))))

(declare-fun e!3873511 () Bool)

(assert (=> d!2000707 (= (matchZipper!2307 lt!2370216 s!2326) e!3873511)))

(declare-fun b!6380980 () Bool)

(assert (=> b!6380980 (= e!3873511 (nullableZipper!2060 lt!2370216))))

(declare-fun b!6380981 () Bool)

(assert (=> b!6380981 (= e!3873511 (matchZipper!2307 (derivationStepZipper!2261 lt!2370216 (head!13081 s!2326)) (tail!12166 s!2326)))))

(assert (= (and d!2000707 c!1162628) b!6380980))

(assert (= (and d!2000707 (not c!1162628)) b!6380981))

(assert (=> d!2000707 m!7180982))

(declare-fun m!7181428 () Bool)

(assert (=> b!6380980 m!7181428))

(assert (=> b!6380981 m!7180984))

(assert (=> b!6380981 m!7180984))

(declare-fun m!7181430 () Bool)

(assert (=> b!6380981 m!7181430))

(assert (=> b!6380981 m!7180988))

(assert (=> b!6380981 m!7181430))

(assert (=> b!6380981 m!7180988))

(declare-fun m!7181432 () Bool)

(assert (=> b!6380981 m!7181432))

(assert (=> b!6380175 d!2000707))

(declare-fun d!2000709 () Bool)

(declare-fun c!1162629 () Bool)

(assert (=> d!2000709 (= c!1162629 (isEmpty!37191 (t!378788 s!2326)))))

(declare-fun e!3873512 () Bool)

(assert (=> d!2000709 (= (matchZipper!2307 lt!2370224 (t!378788 s!2326)) e!3873512)))

(declare-fun b!6380982 () Bool)

(assert (=> b!6380982 (= e!3873512 (nullableZipper!2060 lt!2370224))))

(declare-fun b!6380983 () Bool)

(assert (=> b!6380983 (= e!3873512 (matchZipper!2307 (derivationStepZipper!2261 lt!2370224 (head!13081 (t!378788 s!2326))) (tail!12166 (t!378788 s!2326))))))

(assert (= (and d!2000709 c!1162629) b!6380982))

(assert (= (and d!2000709 (not c!1162629)) b!6380983))

(assert (=> d!2000709 m!7181336))

(declare-fun m!7181434 () Bool)

(assert (=> b!6380982 m!7181434))

(assert (=> b!6380983 m!7181340))

(assert (=> b!6380983 m!7181340))

(declare-fun m!7181436 () Bool)

(assert (=> b!6380983 m!7181436))

(assert (=> b!6380983 m!7181344))

(assert (=> b!6380983 m!7181436))

(assert (=> b!6380983 m!7181344))

(declare-fun m!7181438 () Bool)

(assert (=> b!6380983 m!7181438))

(assert (=> b!6380175 d!2000709))

(declare-fun d!2000711 () Bool)

(declare-fun e!3873515 () Bool)

(assert (=> d!2000711 (= (matchZipper!2307 ((_ map or) lt!2370229 lt!2370240) (t!378788 s!2326)) e!3873515)))

(declare-fun res!2624737 () Bool)

(assert (=> d!2000711 (=> res!2624737 e!3873515)))

(assert (=> d!2000711 (= res!2624737 (matchZipper!2307 lt!2370229 (t!378788 s!2326)))))

(declare-fun lt!2370338 () Unit!158511)

(declare-fun choose!47462 ((InoxSet Context!11358) (InoxSet Context!11358) List!65184) Unit!158511)

(assert (=> d!2000711 (= lt!2370338 (choose!47462 lt!2370229 lt!2370240 (t!378788 s!2326)))))

(assert (=> d!2000711 (= (lemmaZipperConcatMatchesSameAsBothZippers!1126 lt!2370229 lt!2370240 (t!378788 s!2326)) lt!2370338)))

(declare-fun b!6380986 () Bool)

(assert (=> b!6380986 (= e!3873515 (matchZipper!2307 lt!2370240 (t!378788 s!2326)))))

(assert (= (and d!2000711 (not res!2624737)) b!6380986))

(assert (=> d!2000711 m!7180786))

(assert (=> d!2000711 m!7180784))

(declare-fun m!7181440 () Bool)

(assert (=> d!2000711 m!7181440))

(assert (=> b!6380986 m!7180788))

(assert (=> b!6380173 d!2000711))

(declare-fun d!2000713 () Bool)

(declare-fun c!1162630 () Bool)

(assert (=> d!2000713 (= c!1162630 (isEmpty!37191 (t!378788 s!2326)))))

(declare-fun e!3873516 () Bool)

(assert (=> d!2000713 (= (matchZipper!2307 lt!2370229 (t!378788 s!2326)) e!3873516)))

(declare-fun b!6380987 () Bool)

(assert (=> b!6380987 (= e!3873516 (nullableZipper!2060 lt!2370229))))

(declare-fun b!6380988 () Bool)

(assert (=> b!6380988 (= e!3873516 (matchZipper!2307 (derivationStepZipper!2261 lt!2370229 (head!13081 (t!378788 s!2326))) (tail!12166 (t!378788 s!2326))))))

(assert (= (and d!2000713 c!1162630) b!6380987))

(assert (= (and d!2000713 (not c!1162630)) b!6380988))

(assert (=> d!2000713 m!7181336))

(declare-fun m!7181442 () Bool)

(assert (=> b!6380987 m!7181442))

(assert (=> b!6380988 m!7181340))

(assert (=> b!6380988 m!7181340))

(declare-fun m!7181444 () Bool)

(assert (=> b!6380988 m!7181444))

(assert (=> b!6380988 m!7181344))

(assert (=> b!6380988 m!7181444))

(assert (=> b!6380988 m!7181344))

(declare-fun m!7181446 () Bool)

(assert (=> b!6380988 m!7181446))

(assert (=> b!6380173 d!2000713))

(declare-fun d!2000715 () Bool)

(declare-fun c!1162631 () Bool)

(assert (=> d!2000715 (= c!1162631 (isEmpty!37191 (t!378788 s!2326)))))

(declare-fun e!3873517 () Bool)

(assert (=> d!2000715 (= (matchZipper!2307 ((_ map or) lt!2370229 lt!2370240) (t!378788 s!2326)) e!3873517)))

(declare-fun b!6380989 () Bool)

(assert (=> b!6380989 (= e!3873517 (nullableZipper!2060 ((_ map or) lt!2370229 lt!2370240)))))

(declare-fun b!6380990 () Bool)

(assert (=> b!6380990 (= e!3873517 (matchZipper!2307 (derivationStepZipper!2261 ((_ map or) lt!2370229 lt!2370240) (head!13081 (t!378788 s!2326))) (tail!12166 (t!378788 s!2326))))))

(assert (= (and d!2000715 c!1162631) b!6380989))

(assert (= (and d!2000715 (not c!1162631)) b!6380990))

(assert (=> d!2000715 m!7181336))

(declare-fun m!7181448 () Bool)

(assert (=> b!6380989 m!7181448))

(assert (=> b!6380990 m!7181340))

(assert (=> b!6380990 m!7181340))

(declare-fun m!7181450 () Bool)

(assert (=> b!6380990 m!7181450))

(assert (=> b!6380990 m!7181344))

(assert (=> b!6380990 m!7181450))

(assert (=> b!6380990 m!7181344))

(declare-fun m!7181452 () Bool)

(assert (=> b!6380990 m!7181452))

(assert (=> b!6380173 d!2000715))

(declare-fun b!6380991 () Bool)

(declare-fun e!3873523 () (InoxSet Context!11358))

(declare-fun e!3873522 () (InoxSet Context!11358))

(assert (=> b!6380991 (= e!3873523 e!3873522)))

(declare-fun c!1162636 () Bool)

(assert (=> b!6380991 (= c!1162636 ((_ is Concat!25140) (reg!16624 (regOne!33102 r!7292))))))

(declare-fun call!545287 () (InoxSet Context!11358))

(declare-fun bm!545278 () Bool)

(declare-fun c!1162633 () Bool)

(declare-fun call!545283 () List!65185)

(assert (=> bm!545278 (= call!545287 (derivationStepZipperDown!1543 (ite c!1162633 (regOne!33103 (reg!16624 (regOne!33102 r!7292))) (regOne!33102 (reg!16624 (regOne!33102 r!7292)))) (ite c!1162633 lt!2370227 (Context!11359 call!545283)) (h!71508 s!2326)))))

(declare-fun d!2000717 () Bool)

(declare-fun c!1162632 () Bool)

(assert (=> d!2000717 (= c!1162632 (and ((_ is ElementMatch!16295) (reg!16624 (regOne!33102 r!7292))) (= (c!1162404 (reg!16624 (regOne!33102 r!7292))) (h!71508 s!2326))))))

(declare-fun e!3873519 () (InoxSet Context!11358))

(assert (=> d!2000717 (= (derivationStepZipperDown!1543 (reg!16624 (regOne!33102 r!7292)) lt!2370227 (h!71508 s!2326)) e!3873519)))

(declare-fun bm!545279 () Bool)

(declare-fun call!545288 () List!65185)

(assert (=> bm!545279 (= call!545288 call!545283)))

(declare-fun b!6380992 () Bool)

(declare-fun call!545285 () (InoxSet Context!11358))

(assert (=> b!6380992 (= e!3873523 ((_ map or) call!545287 call!545285))))

(declare-fun b!6380993 () Bool)

(assert (=> b!6380993 (= e!3873519 (store ((as const (Array Context!11358 Bool)) false) lt!2370227 true))))

(declare-fun b!6380994 () Bool)

(declare-fun call!545286 () (InoxSet Context!11358))

(assert (=> b!6380994 (= e!3873522 call!545286)))

(declare-fun bm!545280 () Bool)

(declare-fun call!545284 () (InoxSet Context!11358))

(assert (=> bm!545280 (= call!545285 call!545284)))

(declare-fun b!6380995 () Bool)

(declare-fun e!3873521 () (InoxSet Context!11358))

(assert (=> b!6380995 (= e!3873521 call!545286)))

(declare-fun b!6380996 () Bool)

(declare-fun e!3873520 () (InoxSet Context!11358))

(assert (=> b!6380996 (= e!3873519 e!3873520)))

(assert (=> b!6380996 (= c!1162633 ((_ is Union!16295) (reg!16624 (regOne!33102 r!7292))))))

(declare-fun b!6380997 () Bool)

(assert (=> b!6380997 (= e!3873521 ((as const (Array Context!11358 Bool)) false))))

(declare-fun b!6380998 () Bool)

(assert (=> b!6380998 (= e!3873520 ((_ map or) call!545287 call!545284))))

(declare-fun bm!545281 () Bool)

(assert (=> bm!545281 (= call!545286 call!545285)))

(declare-fun bm!545282 () Bool)

(declare-fun c!1162634 () Bool)

(assert (=> bm!545282 (= call!545284 (derivationStepZipperDown!1543 (ite c!1162633 (regTwo!33103 (reg!16624 (regOne!33102 r!7292))) (ite c!1162634 (regTwo!33102 (reg!16624 (regOne!33102 r!7292))) (ite c!1162636 (regOne!33102 (reg!16624 (regOne!33102 r!7292))) (reg!16624 (reg!16624 (regOne!33102 r!7292)))))) (ite (or c!1162633 c!1162634) lt!2370227 (Context!11359 call!545288)) (h!71508 s!2326)))))

(declare-fun b!6380999 () Bool)

(declare-fun e!3873518 () Bool)

(assert (=> b!6380999 (= c!1162634 e!3873518)))

(declare-fun res!2624738 () Bool)

(assert (=> b!6380999 (=> (not res!2624738) (not e!3873518))))

(assert (=> b!6380999 (= res!2624738 ((_ is Concat!25140) (reg!16624 (regOne!33102 r!7292))))))

(assert (=> b!6380999 (= e!3873520 e!3873523)))

(declare-fun b!6381000 () Bool)

(declare-fun c!1162635 () Bool)

(assert (=> b!6381000 (= c!1162635 ((_ is Star!16295) (reg!16624 (regOne!33102 r!7292))))))

(assert (=> b!6381000 (= e!3873522 e!3873521)))

(declare-fun b!6381001 () Bool)

(assert (=> b!6381001 (= e!3873518 (nullable!6288 (regOne!33102 (reg!16624 (regOne!33102 r!7292)))))))

(declare-fun bm!545283 () Bool)

(assert (=> bm!545283 (= call!545283 ($colon$colon!2156 (exprs!6179 lt!2370227) (ite (or c!1162634 c!1162636) (regTwo!33102 (reg!16624 (regOne!33102 r!7292))) (reg!16624 (regOne!33102 r!7292)))))))

(assert (= (and d!2000717 c!1162632) b!6380993))

(assert (= (and d!2000717 (not c!1162632)) b!6380996))

(assert (= (and b!6380996 c!1162633) b!6380998))

(assert (= (and b!6380996 (not c!1162633)) b!6380999))

(assert (= (and b!6380999 res!2624738) b!6381001))

(assert (= (and b!6380999 c!1162634) b!6380992))

(assert (= (and b!6380999 (not c!1162634)) b!6380991))

(assert (= (and b!6380991 c!1162636) b!6380994))

(assert (= (and b!6380991 (not c!1162636)) b!6381000))

(assert (= (and b!6381000 c!1162635) b!6380995))

(assert (= (and b!6381000 (not c!1162635)) b!6380997))

(assert (= (or b!6380994 b!6380995) bm!545279))

(assert (= (or b!6380994 b!6380995) bm!545281))

(assert (= (or b!6380992 bm!545279) bm!545283))

(assert (= (or b!6380992 bm!545281) bm!545280))

(assert (= (or b!6380998 bm!545280) bm!545282))

(assert (= (or b!6380998 b!6380992) bm!545278))

(declare-fun m!7181454 () Bool)

(assert (=> bm!545278 m!7181454))

(declare-fun m!7181456 () Bool)

(assert (=> bm!545282 m!7181456))

(declare-fun m!7181458 () Bool)

(assert (=> bm!545283 m!7181458))

(declare-fun m!7181460 () Bool)

(assert (=> b!6381001 m!7181460))

(assert (=> b!6380993 m!7180842))

(assert (=> b!6380174 d!2000717))

(declare-fun d!2000719 () Bool)

(declare-fun lt!2370339 () Regex!16295)

(assert (=> d!2000719 (validRegex!8031 lt!2370339)))

(assert (=> d!2000719 (= lt!2370339 (generalisedUnion!2139 (unfocusZipperList!1716 zl!343)))))

(assert (=> d!2000719 (= (unfocusZipper!2037 zl!343) lt!2370339)))

(declare-fun bs!1597163 () Bool)

(assert (= bs!1597163 d!2000719))

(declare-fun m!7181462 () Bool)

(assert (=> bs!1597163 m!7181462))

(assert (=> bs!1597163 m!7180778))

(assert (=> bs!1597163 m!7180778))

(assert (=> bs!1597163 m!7180780))

(assert (=> b!6380194 d!2000719))

(declare-fun d!2000721 () Bool)

(declare-fun lt!2370340 () Regex!16295)

(assert (=> d!2000721 (validRegex!8031 lt!2370340)))

(assert (=> d!2000721 (= lt!2370340 (generalisedUnion!2139 (unfocusZipperList!1716 (Cons!65062 lt!2370227 Nil!65062))))))

(assert (=> d!2000721 (= (unfocusZipper!2037 (Cons!65062 lt!2370227 Nil!65062)) lt!2370340)))

(declare-fun bs!1597164 () Bool)

(assert (= bs!1597164 d!2000721))

(declare-fun m!7181464 () Bool)

(assert (=> bs!1597164 m!7181464))

(declare-fun m!7181466 () Bool)

(assert (=> bs!1597164 m!7181466))

(assert (=> bs!1597164 m!7181466))

(declare-fun m!7181468 () Bool)

(assert (=> bs!1597164 m!7181468))

(assert (=> b!6380192 d!2000721))

(declare-fun bs!1597165 () Bool)

(declare-fun d!2000723 () Bool)

(assert (= bs!1597165 (and d!2000723 d!2000671)))

(declare-fun lambda!351973 () Int)

(assert (=> bs!1597165 (= lambda!351973 lambda!351961)))

(declare-fun bs!1597166 () Bool)

(assert (= bs!1597166 (and d!2000723 d!2000677)))

(assert (=> bs!1597166 (= lambda!351973 lambda!351964)))

(declare-fun bs!1597167 () Bool)

(assert (= bs!1597167 (and d!2000723 d!2000681)))

(assert (=> bs!1597167 (= lambda!351973 lambda!351967)))

(declare-fun bs!1597168 () Bool)

(assert (= bs!1597168 (and d!2000723 d!2000683)))

(assert (=> bs!1597168 (= lambda!351973 lambda!351970)))

(assert (=> d!2000723 (= (inv!83984 (h!71510 zl!343)) (forall!15473 (exprs!6179 (h!71510 zl!343)) lambda!351973))))

(declare-fun bs!1597169 () Bool)

(assert (= bs!1597169 d!2000723))

(declare-fun m!7181470 () Bool)

(assert (=> bs!1597169 m!7181470))

(assert (=> b!6380191 d!2000723))

(declare-fun b!6381014 () Bool)

(declare-fun e!3873526 () Bool)

(declare-fun tp!1775686 () Bool)

(assert (=> b!6381014 (= e!3873526 tp!1775686)))

(declare-fun b!6381013 () Bool)

(declare-fun tp!1775685 () Bool)

(declare-fun tp!1775687 () Bool)

(assert (=> b!6381013 (= e!3873526 (and tp!1775685 tp!1775687))))

(declare-fun b!6381015 () Bool)

(declare-fun tp!1775684 () Bool)

(declare-fun tp!1775683 () Bool)

(assert (=> b!6381015 (= e!3873526 (and tp!1775684 tp!1775683))))

(declare-fun b!6381012 () Bool)

(assert (=> b!6381012 (= e!3873526 tp_is_empty!41843)))

(assert (=> b!6380186 (= tp!1775607 e!3873526)))

(assert (= (and b!6380186 ((_ is ElementMatch!16295) (reg!16624 r!7292))) b!6381012))

(assert (= (and b!6380186 ((_ is Concat!25140) (reg!16624 r!7292))) b!6381013))

(assert (= (and b!6380186 ((_ is Star!16295) (reg!16624 r!7292))) b!6381014))

(assert (= (and b!6380186 ((_ is Union!16295) (reg!16624 r!7292))) b!6381015))

(declare-fun b!6381020 () Bool)

(declare-fun e!3873529 () Bool)

(declare-fun tp!1775692 () Bool)

(declare-fun tp!1775693 () Bool)

(assert (=> b!6381020 (= e!3873529 (and tp!1775692 tp!1775693))))

(assert (=> b!6380205 (= tp!1775613 e!3873529)))

(assert (= (and b!6380205 ((_ is Cons!65061) (exprs!6179 (h!71510 zl!343)))) b!6381020))

(declare-fun condSetEmpty!43550 () Bool)

(assert (=> setNonEmpty!43544 (= condSetEmpty!43550 (= setRest!43544 ((as const (Array Context!11358 Bool)) false)))))

(declare-fun setRes!43550 () Bool)

(assert (=> setNonEmpty!43544 (= tp!1775614 setRes!43550)))

(declare-fun setIsEmpty!43550 () Bool)

(assert (=> setIsEmpty!43550 setRes!43550))

(declare-fun setElem!43550 () Context!11358)

(declare-fun setNonEmpty!43550 () Bool)

(declare-fun tp!1775699 () Bool)

(declare-fun e!3873532 () Bool)

(assert (=> setNonEmpty!43550 (= setRes!43550 (and tp!1775699 (inv!83984 setElem!43550) e!3873532))))

(declare-fun setRest!43550 () (InoxSet Context!11358))

(assert (=> setNonEmpty!43550 (= setRest!43544 ((_ map or) (store ((as const (Array Context!11358 Bool)) false) setElem!43550 true) setRest!43550))))

(declare-fun b!6381025 () Bool)

(declare-fun tp!1775698 () Bool)

(assert (=> b!6381025 (= e!3873532 tp!1775698)))

(assert (= (and setNonEmpty!43544 condSetEmpty!43550) setIsEmpty!43550))

(assert (= (and setNonEmpty!43544 (not condSetEmpty!43550)) setNonEmpty!43550))

(assert (= setNonEmpty!43550 b!6381025))

(declare-fun m!7181472 () Bool)

(assert (=> setNonEmpty!43550 m!7181472))

(declare-fun b!6381026 () Bool)

(declare-fun e!3873533 () Bool)

(declare-fun tp!1775700 () Bool)

(declare-fun tp!1775701 () Bool)

(assert (=> b!6381026 (= e!3873533 (and tp!1775700 tp!1775701))))

(assert (=> b!6380189 (= tp!1775611 e!3873533)))

(assert (= (and b!6380189 ((_ is Cons!65061) (exprs!6179 setElem!43544))) b!6381026))

(declare-fun b!6381029 () Bool)

(declare-fun e!3873534 () Bool)

(declare-fun tp!1775705 () Bool)

(assert (=> b!6381029 (= e!3873534 tp!1775705)))

(declare-fun b!6381028 () Bool)

(declare-fun tp!1775704 () Bool)

(declare-fun tp!1775706 () Bool)

(assert (=> b!6381028 (= e!3873534 (and tp!1775704 tp!1775706))))

(declare-fun b!6381030 () Bool)

(declare-fun tp!1775703 () Bool)

(declare-fun tp!1775702 () Bool)

(assert (=> b!6381030 (= e!3873534 (and tp!1775703 tp!1775702))))

(declare-fun b!6381027 () Bool)

(assert (=> b!6381027 (= e!3873534 tp_is_empty!41843)))

(assert (=> b!6380209 (= tp!1775609 e!3873534)))

(assert (= (and b!6380209 ((_ is ElementMatch!16295) (regOne!33103 r!7292))) b!6381027))

(assert (= (and b!6380209 ((_ is Concat!25140) (regOne!33103 r!7292))) b!6381028))

(assert (= (and b!6380209 ((_ is Star!16295) (regOne!33103 r!7292))) b!6381029))

(assert (= (and b!6380209 ((_ is Union!16295) (regOne!33103 r!7292))) b!6381030))

(declare-fun b!6381033 () Bool)

(declare-fun e!3873535 () Bool)

(declare-fun tp!1775710 () Bool)

(assert (=> b!6381033 (= e!3873535 tp!1775710)))

(declare-fun b!6381032 () Bool)

(declare-fun tp!1775709 () Bool)

(declare-fun tp!1775711 () Bool)

(assert (=> b!6381032 (= e!3873535 (and tp!1775709 tp!1775711))))

(declare-fun b!6381034 () Bool)

(declare-fun tp!1775708 () Bool)

(declare-fun tp!1775707 () Bool)

(assert (=> b!6381034 (= e!3873535 (and tp!1775708 tp!1775707))))

(declare-fun b!6381031 () Bool)

(assert (=> b!6381031 (= e!3873535 tp_is_empty!41843)))

(assert (=> b!6380209 (= tp!1775605 e!3873535)))

(assert (= (and b!6380209 ((_ is ElementMatch!16295) (regTwo!33103 r!7292))) b!6381031))

(assert (= (and b!6380209 ((_ is Concat!25140) (regTwo!33103 r!7292))) b!6381032))

(assert (= (and b!6380209 ((_ is Star!16295) (regTwo!33103 r!7292))) b!6381033))

(assert (= (and b!6380209 ((_ is Union!16295) (regTwo!33103 r!7292))) b!6381034))

(declare-fun b!6381037 () Bool)

(declare-fun e!3873536 () Bool)

(declare-fun tp!1775715 () Bool)

(assert (=> b!6381037 (= e!3873536 tp!1775715)))

(declare-fun b!6381036 () Bool)

(declare-fun tp!1775714 () Bool)

(declare-fun tp!1775716 () Bool)

(assert (=> b!6381036 (= e!3873536 (and tp!1775714 tp!1775716))))

(declare-fun b!6381038 () Bool)

(declare-fun tp!1775713 () Bool)

(declare-fun tp!1775712 () Bool)

(assert (=> b!6381038 (= e!3873536 (and tp!1775713 tp!1775712))))

(declare-fun b!6381035 () Bool)

(assert (=> b!6381035 (= e!3873536 tp_is_empty!41843)))

(assert (=> b!6380202 (= tp!1775610 e!3873536)))

(assert (= (and b!6380202 ((_ is ElementMatch!16295) (regOne!33102 r!7292))) b!6381035))

(assert (= (and b!6380202 ((_ is Concat!25140) (regOne!33102 r!7292))) b!6381036))

(assert (= (and b!6380202 ((_ is Star!16295) (regOne!33102 r!7292))) b!6381037))

(assert (= (and b!6380202 ((_ is Union!16295) (regOne!33102 r!7292))) b!6381038))

(declare-fun b!6381041 () Bool)

(declare-fun e!3873537 () Bool)

(declare-fun tp!1775720 () Bool)

(assert (=> b!6381041 (= e!3873537 tp!1775720)))

(declare-fun b!6381040 () Bool)

(declare-fun tp!1775719 () Bool)

(declare-fun tp!1775721 () Bool)

(assert (=> b!6381040 (= e!3873537 (and tp!1775719 tp!1775721))))

(declare-fun b!6381042 () Bool)

(declare-fun tp!1775718 () Bool)

(declare-fun tp!1775717 () Bool)

(assert (=> b!6381042 (= e!3873537 (and tp!1775718 tp!1775717))))

(declare-fun b!6381039 () Bool)

(assert (=> b!6381039 (= e!3873537 tp_is_empty!41843)))

(assert (=> b!6380202 (= tp!1775612 e!3873537)))

(assert (= (and b!6380202 ((_ is ElementMatch!16295) (regTwo!33102 r!7292))) b!6381039))

(assert (= (and b!6380202 ((_ is Concat!25140) (regTwo!33102 r!7292))) b!6381040))

(assert (= (and b!6380202 ((_ is Star!16295) (regTwo!33102 r!7292))) b!6381041))

(assert (= (and b!6380202 ((_ is Union!16295) (regTwo!33102 r!7292))) b!6381042))

(declare-fun b!6381047 () Bool)

(declare-fun e!3873540 () Bool)

(declare-fun tp!1775724 () Bool)

(assert (=> b!6381047 (= e!3873540 (and tp_is_empty!41843 tp!1775724))))

(assert (=> b!6380183 (= tp!1775608 e!3873540)))

(assert (= (and b!6380183 ((_ is Cons!65060) (t!378788 s!2326))) b!6381047))

(declare-fun b!6381055 () Bool)

(declare-fun e!3873546 () Bool)

(declare-fun tp!1775729 () Bool)

(assert (=> b!6381055 (= e!3873546 tp!1775729)))

(declare-fun e!3873545 () Bool)

(declare-fun tp!1775730 () Bool)

(declare-fun b!6381054 () Bool)

(assert (=> b!6381054 (= e!3873545 (and (inv!83984 (h!71510 (t!378790 zl!343))) e!3873546 tp!1775730))))

(assert (=> b!6380191 (= tp!1775606 e!3873545)))

(assert (= b!6381054 b!6381055))

(assert (= (and b!6380191 ((_ is Cons!65062) (t!378790 zl!343))) b!6381054))

(declare-fun m!7181474 () Bool)

(assert (=> b!6381054 m!7181474))

(declare-fun b_lambda!242477 () Bool)

(assert (= b_lambda!242461 (or b!6380195 b_lambda!242477)))

(declare-fun bs!1597170 () Bool)

(declare-fun d!2000725 () Bool)

(assert (= bs!1597170 (and d!2000725 b!6380195)))

(assert (=> bs!1597170 (= (dynLambda!25813 lambda!351907 lt!2370225) (derivationStepZipperUp!1469 lt!2370225 (h!71508 s!2326)))))

(assert (=> bs!1597170 m!7180878))

(assert (=> d!2000615 d!2000725))

(declare-fun b_lambda!242479 () Bool)

(assert (= b_lambda!242457 (or b!6380195 b_lambda!242479)))

(declare-fun bs!1597171 () Bool)

(declare-fun d!2000727 () Bool)

(assert (= bs!1597171 (and d!2000727 b!6380195)))

(assert (=> bs!1597171 (= (dynLambda!25813 lambda!351907 lt!2370221) (derivationStepZipperUp!1469 lt!2370221 (h!71508 s!2326)))))

(assert (=> bs!1597171 m!7180848))

(assert (=> d!2000593 d!2000727))

(declare-fun b_lambda!242481 () Bool)

(assert (= b_lambda!242475 (or b!6380195 b_lambda!242481)))

(declare-fun bs!1597172 () Bool)

(declare-fun d!2000729 () Bool)

(assert (= bs!1597172 (and d!2000729 b!6380195)))

(assert (=> bs!1597172 (= (dynLambda!25813 lambda!351907 (h!71510 zl!343)) (derivationStepZipperUp!1469 (h!71510 zl!343) (h!71508 s!2326)))))

(assert (=> bs!1597172 m!7180856))

(assert (=> d!2000693 d!2000729))

(declare-fun b_lambda!242483 () Bool)

(assert (= b_lambda!242459 (or b!6380195 b_lambda!242483)))

(declare-fun bs!1597173 () Bool)

(declare-fun d!2000731 () Bool)

(assert (= bs!1597173 (and d!2000731 b!6380195)))

(assert (=> bs!1597173 (= (dynLambda!25813 lambda!351907 lt!2370227) (derivationStepZipperUp!1469 lt!2370227 (h!71508 s!2326)))))

(assert (=> bs!1597173 m!7180838))

(assert (=> d!2000597 d!2000731))

(check-sat (not b!6380989) (not b!6381015) (not b!6380889) (not bm!545235) (not b!6380941) (not bm!545256) (not b_lambda!242477) (not d!2000721) (not bm!545272) (not b!6380990) (not d!2000593) (not d!2000585) (not b!6380946) (not d!2000617) (not b!6380809) (not b!6380810) (not setNonEmpty!43550) (not bm!545258) (not b!6381036) (not bm!545174) (not b!6380860) (not b!6380849) (not b!6381038) (not b!6381030) (not b!6380641) (not b!6380853) (not b!6380630) (not b!6380898) (not bs!1597171) (not b!6381047) (not d!2000681) (not d!2000677) (not d!2000673) (not b!6380330) (not d!2000667) (not b!6380914) (not b!6381028) (not b!6380855) (not d!2000515) (not d!2000709) (not b!6380905) (not d!2000693) (not b!6380940) (not d!2000605) (not d!2000679) (not b!6380627) (not b!6381033) (not bm!545207) (not b!6380847) (not b!6380912) (not b!6381014) (not b!6381034) (not d!2000719) (not bm!545177) (not b!6380980) (not bs!1597173) (not d!2000707) (not b!6380886) (not d!2000711) (not b!6380328) (not b!6380987) (not d!2000683) (not b!6381026) (not b!6380327) (not b!6380854) (not b!6380326) (not b!6380982) (not d!2000663) (not d!2000695) (not b!6381054) (not b!6380911) (not b!6380891) (not bm!545225) (not d!2000687) (not d!2000591) (not bm!545276) (not b!6381013) (not b!6381020) (not b!6380887) (not b_lambda!242479) (not b!6380890) (not b!6380813) (not bm!545257) (not b!6380945) (not b!6380472) (not b!6381001) (not b!6380640) (not d!2000599) (not bs!1597170) (not b!6380884) (not b!6380604) (not b!6380623) (not bm!545232) (not b!6381041) (not d!2000665) (not b!6381037) (not d!2000619) (not b!6380915) (not b!6381040) (not b!6380913) (not b!6380851) (not b!6381055) (not d!2000713) (not b!6380861) (not b!6380979) (not d!2000595) (not d!2000669) (not bm!545282) (not b!6380925) (not bm!545252) (not d!2000689) (not b!6380329) (not b!6381025) (not b!6380808) (not b!6381032) (not bm!545283) (not b!6380479) (not d!2000715) (not b!6380603) (not b!6380885) (not d!2000699) (not b!6381029) (not b!6380266) (not bm!545236) (not bm!545172) (not b!6380983) (not b!6380986) (not b!6380981) (not b!6380935) (not b!6380936) (not b!6380334) (not d!2000671) (not bm!545278) (not b!6380846) (not d!2000597) (not bm!545259) (not bm!545253) (not b!6380896) (not b!6380919) (not d!2000615) (not bm!545277) (not d!2000723) (not bm!545206) (not bm!545254) (not d!2000611) tp_is_empty!41843 (not d!2000527) (not d!2000661) (not b_lambda!242483) (not b!6380811) (not bm!545233) (not b!6380988) (not bs!1597172) (not b!6380805) (not b!6380624) (not b_lambda!242481) (not b!6381042) (not bm!545251))
(check-sat)
