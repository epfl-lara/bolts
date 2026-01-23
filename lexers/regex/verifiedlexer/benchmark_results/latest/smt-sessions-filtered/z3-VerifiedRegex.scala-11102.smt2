; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573826 () Bool)

(assert start!573826)

(declare-fun b!5490182 () Bool)

(assert (=> b!5490182 true))

(declare-fun b!5490173 () Bool)

(assert (=> b!5490173 true))

(declare-fun bs!1267186 () Bool)

(assert (= bs!1267186 (and b!5490173 b!5490182)))

(declare-fun lambda!294013 () Int)

(declare-fun lambda!294011 () Int)

(assert (=> bs!1267186 (not (= lambda!294013 lambda!294011))))

(declare-fun b!5490172 () Bool)

(declare-datatypes ((Unit!155360 0))(
  ( (Unit!155361) )
))
(declare-fun e!3397081 () Unit!155360)

(declare-fun Unit!155362 () Unit!155360)

(assert (=> b!5490172 (= e!3397081 Unit!155362)))

(declare-fun setIsEmpty!36321 () Bool)

(declare-fun setRes!36321 () Bool)

(assert (=> setIsEmpty!36321 setRes!36321))

(declare-fun Unit!155363 () Unit!155360)

(assert (=> b!5490173 (= e!3397081 Unit!155363)))

(declare-fun lt!2242392 () Unit!155360)

(declare-datatypes ((C!31172 0))(
  ( (C!31173 (val!25288 Int)) )
))
(declare-datatypes ((Regex!15451 0))(
  ( (ElementMatch!15451 (c!958665 C!31172)) (Concat!24296 (regOne!31414 Regex!15451) (regTwo!31414 Regex!15451)) (EmptyExpr!15451) (Star!15451 (reg!15780 Regex!15451)) (EmptyLang!15451) (Union!15451 (regOne!31415 Regex!15451) (regTwo!31415 Regex!15451)) )
))
(declare-datatypes ((List!62652 0))(
  ( (Nil!62528) (Cons!62528 (h!68976 Regex!15451) (t!375883 List!62652)) )
))
(declare-datatypes ((Context!9670 0))(
  ( (Context!9671 (exprs!5335 List!62652)) )
))
(declare-datatypes ((List!62653 0))(
  ( (Nil!62529) (Cons!62529 (h!68977 Context!9670) (t!375884 List!62653)) )
))
(declare-fun zl!343 () List!62653)

(declare-datatypes ((List!62654 0))(
  ( (Nil!62530) (Cons!62530 (h!68978 C!31172) (t!375885 List!62654)) )
))
(declare-fun s!2326 () List!62654)

(declare-fun lemmaZipperMatchesExistsMatchingContext!78 (List!62653 List!62654) Unit!155360)

(assert (=> b!5490173 (= lt!2242392 (lemmaZipperMatchesExistsMatchingContext!78 zl!343 s!2326))))

(declare-fun lambda!294012 () Int)

(declare-fun exists!2126 (List!62653 Int) Bool)

(assert (=> b!5490173 (exists!2126 zl!343 lambda!294012)))

(declare-fun lt!2242390 () Context!9670)

(declare-fun getWitness!912 (List!62653 Int) Context!9670)

(assert (=> b!5490173 (= lt!2242390 (getWitness!912 zl!343 lambda!294012))))

(declare-fun lt!2242386 () Unit!155360)

(declare-fun lemmaContextForallValidExprs!56 (Context!9670 List!62652) Unit!155360)

(assert (=> b!5490173 (= lt!2242386 (lemmaContextForallValidExprs!56 lt!2242390 (exprs!5335 lt!2242390)))))

(declare-fun forall!14648 (List!62652 Int) Bool)

(assert (=> b!5490173 (forall!14648 (exprs!5335 lt!2242390) lambda!294013)))

(declare-fun lt!2242389 () Unit!155360)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!24 (List!62653 Context!9670) Unit!155360)

(assert (=> b!5490173 (= lt!2242389 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!24 zl!343 lt!2242390))))

(declare-fun contextDepthTotal!196 (Context!9670) Int)

(declare-fun zipperDepthTotal!216 (List!62653) Int)

(assert (=> b!5490173 (< (contextDepthTotal!196 lt!2242390) (zipperDepthTotal!216 zl!343))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2242383 () (InoxSet Context!9670))

(assert (=> b!5490173 (= lt!2242383 (store ((as const (Array Context!9670 Bool)) false) lt!2242390 true))))

(declare-fun lt!2242391 () Regex!15451)

(declare-fun generalisedConcat!1070 (List!62652) Regex!15451)

(assert (=> b!5490173 (= lt!2242391 (generalisedConcat!1070 (exprs!5335 lt!2242390)))))

(declare-fun lt!2242385 () Unit!155360)

(declare-fun theoremZipperRegexEquiv!609 ((InoxSet Context!9670) List!62653 Regex!15451 List!62654) Unit!155360)

(assert (=> b!5490173 (= lt!2242385 (theoremZipperRegexEquiv!609 lt!2242383 (Cons!62529 lt!2242390 Nil!62529) lt!2242391 s!2326))))

(declare-fun matchR!7636 (Regex!15451 List!62654) Bool)

(declare-fun matchZipper!1635 ((InoxSet Context!9670) List!62654) Bool)

(assert (=> b!5490173 (= (matchR!7636 lt!2242391 s!2326) (matchZipper!1635 lt!2242383 s!2326))))

(declare-fun lt!2242394 () Unit!155360)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!8 (List!62653 Context!9670) Unit!155360)

(assert (=> b!5490173 (= lt!2242394 (lemmaZipperContainsContextUnfocusListContainsConcat!8 zl!343 lt!2242390))))

(declare-fun lt!2242382 () List!62652)

(declare-fun contains!19763 (List!62652 Regex!15451) Bool)

(assert (=> b!5490173 (contains!19763 lt!2242382 lt!2242391)))

(declare-fun lt!2242393 () Unit!155360)

(declare-fun lemmaContainsThenExists!71 (List!62652 Regex!15451 Int) Unit!155360)

(assert (=> b!5490173 (= lt!2242393 (lemmaContainsThenExists!71 lt!2242382 lt!2242391 lambda!294011))))

(assert (=> b!5490173 false))

(declare-fun b!5490174 () Bool)

(declare-fun e!3397084 () Bool)

(declare-fun tp_is_empty!40155 () Bool)

(declare-fun tp!1509398 () Bool)

(assert (=> b!5490174 (= e!3397084 (and tp_is_empty!40155 tp!1509398))))

(declare-fun b!5490175 () Bool)

(declare-fun e!3397083 () Bool)

(declare-fun tp!1509394 () Bool)

(declare-fun tp!1509393 () Bool)

(assert (=> b!5490175 (= e!3397083 (and tp!1509394 tp!1509393))))

(declare-fun res!2341703 () Bool)

(declare-fun e!3397082 () Bool)

(assert (=> start!573826 (=> (not res!2341703) (not e!3397082))))

(declare-fun r!7292 () Regex!15451)

(declare-fun validRegex!7187 (Regex!15451) Bool)

(assert (=> start!573826 (= res!2341703 (validRegex!7187 r!7292))))

(assert (=> start!573826 e!3397082))

(assert (=> start!573826 e!3397083))

(declare-fun condSetEmpty!36321 () Bool)

(declare-fun z!1189 () (InoxSet Context!9670))

(assert (=> start!573826 (= condSetEmpty!36321 (= z!1189 ((as const (Array Context!9670 Bool)) false)))))

(assert (=> start!573826 setRes!36321))

(declare-fun e!3397076 () Bool)

(assert (=> start!573826 e!3397076))

(assert (=> start!573826 e!3397084))

(declare-fun b!5490176 () Bool)

(declare-fun res!2341705 () Bool)

(assert (=> b!5490176 (=> (not res!2341705) (not e!3397082))))

(declare-fun unfocusZipper!1193 (List!62653) Regex!15451)

(assert (=> b!5490176 (= res!2341705 (= r!7292 (unfocusZipper!1193 zl!343)))))

(declare-fun b!5490177 () Bool)

(assert (=> b!5490177 (= e!3397083 tp_is_empty!40155)))

(declare-fun b!5490178 () Bool)

(declare-fun res!2341700 () Bool)

(declare-fun e!3397079 () Bool)

(assert (=> b!5490178 (=> res!2341700 e!3397079)))

(declare-fun exists!2127 (List!62652 Int) Bool)

(assert (=> b!5490178 (= res!2341700 (exists!2127 lt!2242382 lambda!294011))))

(declare-fun b!5490179 () Bool)

(declare-fun e!3397080 () Bool)

(declare-fun tp!1509395 () Bool)

(assert (=> b!5490179 (= e!3397080 tp!1509395)))

(declare-fun b!5490180 () Bool)

(declare-fun e!3397075 () Bool)

(declare-fun isEmpty!34341 (List!62653) Bool)

(assert (=> b!5490180 (= e!3397075 (isEmpty!34341 (t!375884 zl!343)))))

(declare-fun b!5490181 () Bool)

(declare-fun res!2341701 () Bool)

(declare-fun e!3397078 () Bool)

(assert (=> b!5490181 (=> res!2341701 e!3397078)))

(get-info :version)

(assert (=> b!5490181 (= res!2341701 (or (not ((_ is Cons!62529) zl!343)) ((_ is Nil!62530) s!2326) (not (= zl!343 (Cons!62529 (h!68977 zl!343) (t!375884 zl!343))))))))

(assert (=> b!5490182 (= e!3397078 e!3397079)))

(declare-fun res!2341706 () Bool)

(assert (=> b!5490182 (=> res!2341706 e!3397079)))

(declare-fun lt!2242395 () Bool)

(assert (=> b!5490182 (= res!2341706 lt!2242395)))

(assert (=> b!5490182 (= lt!2242395 (exists!2127 lt!2242382 lambda!294011))))

(declare-fun lt!2242388 () Unit!155360)

(declare-fun matchRGenUnionSpec!284 (Regex!15451 List!62652 List!62654) Unit!155360)

(assert (=> b!5490182 (= lt!2242388 (matchRGenUnionSpec!284 r!7292 lt!2242382 s!2326))))

(declare-fun unfocusZipperList!883 (List!62653) List!62652)

(assert (=> b!5490182 (= lt!2242382 (unfocusZipperList!883 zl!343))))

(declare-fun b!5490183 () Bool)

(declare-fun tp!1509390 () Bool)

(assert (=> b!5490183 (= e!3397083 tp!1509390)))

(declare-fun b!5490184 () Bool)

(declare-fun tp!1509396 () Bool)

(declare-fun tp!1509399 () Bool)

(assert (=> b!5490184 (= e!3397083 (and tp!1509396 tp!1509399))))

(declare-fun tp!1509391 () Bool)

(declare-fun setNonEmpty!36321 () Bool)

(declare-fun setElem!36321 () Context!9670)

(declare-fun inv!81874 (Context!9670) Bool)

(assert (=> setNonEmpty!36321 (= setRes!36321 (and tp!1509391 (inv!81874 setElem!36321) e!3397080))))

(declare-fun setRest!36321 () (InoxSet Context!9670))

(assert (=> setNonEmpty!36321 (= z!1189 ((_ map or) (store ((as const (Array Context!9670 Bool)) false) setElem!36321 true) setRest!36321))))

(declare-fun b!5490185 () Bool)

(declare-fun res!2341708 () Bool)

(assert (=> b!5490185 (=> (not res!2341708) (not e!3397082))))

(declare-fun toList!9235 ((InoxSet Context!9670)) List!62653)

(assert (=> b!5490185 (= res!2341708 (= (toList!9235 z!1189) zl!343))))

(declare-fun b!5490186 () Bool)

(declare-fun e!3397077 () Bool)

(declare-fun tp!1509392 () Bool)

(assert (=> b!5490186 (= e!3397077 tp!1509392)))

(declare-fun b!5490187 () Bool)

(assert (=> b!5490187 (= e!3397079 true)))

(declare-fun lt!2242387 () Bool)

(assert (=> b!5490187 (not lt!2242387)))

(declare-fun lt!2242384 () Unit!155360)

(assert (=> b!5490187 (= lt!2242384 e!3397081)))

(declare-fun c!958664 () Bool)

(assert (=> b!5490187 (= c!958664 lt!2242387)))

(assert (=> b!5490187 (= lt!2242387 (matchZipper!1635 z!1189 s!2326))))

(declare-fun b!5490188 () Bool)

(assert (=> b!5490188 (= e!3397082 (not e!3397078))))

(declare-fun res!2341702 () Bool)

(assert (=> b!5490188 (=> res!2341702 e!3397078)))

(assert (=> b!5490188 (= res!2341702 e!3397075)))

(declare-fun res!2341707 () Bool)

(assert (=> b!5490188 (=> (not res!2341707) (not e!3397075))))

(assert (=> b!5490188 (= res!2341707 ((_ is Cons!62529) zl!343))))

(declare-fun matchRSpec!2554 (Regex!15451 List!62654) Bool)

(assert (=> b!5490188 (= lt!2242395 (matchRSpec!2554 r!7292 s!2326))))

(assert (=> b!5490188 (= lt!2242395 (matchR!7636 r!7292 s!2326))))

(declare-fun lt!2242381 () Unit!155360)

(declare-fun mainMatchTheorem!2554 (Regex!15451 List!62654) Unit!155360)

(assert (=> b!5490188 (= lt!2242381 (mainMatchTheorem!2554 r!7292 s!2326))))

(declare-fun tp!1509397 () Bool)

(declare-fun b!5490189 () Bool)

(assert (=> b!5490189 (= e!3397076 (and (inv!81874 (h!68977 zl!343)) e!3397077 tp!1509397))))

(declare-fun b!5490190 () Bool)

(declare-fun res!2341704 () Bool)

(assert (=> b!5490190 (=> res!2341704 e!3397078)))

(assert (=> b!5490190 (= res!2341704 (isEmpty!34341 (t!375884 zl!343)))))

(assert (= (and start!573826 res!2341703) b!5490185))

(assert (= (and b!5490185 res!2341708) b!5490176))

(assert (= (and b!5490176 res!2341705) b!5490188))

(assert (= (and b!5490188 res!2341707) b!5490180))

(assert (= (and b!5490188 (not res!2341702)) b!5490181))

(assert (= (and b!5490181 (not res!2341701)) b!5490190))

(assert (= (and b!5490190 (not res!2341704)) b!5490182))

(assert (= (and b!5490182 (not res!2341706)) b!5490178))

(assert (= (and b!5490178 (not res!2341700)) b!5490187))

(assert (= (and b!5490187 c!958664) b!5490173))

(assert (= (and b!5490187 (not c!958664)) b!5490172))

(assert (= (and start!573826 ((_ is ElementMatch!15451) r!7292)) b!5490177))

(assert (= (and start!573826 ((_ is Concat!24296) r!7292)) b!5490184))

(assert (= (and start!573826 ((_ is Star!15451) r!7292)) b!5490183))

(assert (= (and start!573826 ((_ is Union!15451) r!7292)) b!5490175))

(assert (= (and start!573826 condSetEmpty!36321) setIsEmpty!36321))

(assert (= (and start!573826 (not condSetEmpty!36321)) setNonEmpty!36321))

(assert (= setNonEmpty!36321 b!5490179))

(assert (= b!5490189 b!5490186))

(assert (= (and start!573826 ((_ is Cons!62529) zl!343)) b!5490189))

(assert (= (and start!573826 ((_ is Cons!62530) s!2326)) b!5490174))

(declare-fun m!6503454 () Bool)

(assert (=> b!5490190 m!6503454))

(declare-fun m!6503456 () Bool)

(assert (=> b!5490176 m!6503456))

(declare-fun m!6503458 () Bool)

(assert (=> b!5490187 m!6503458))

(declare-fun m!6503460 () Bool)

(assert (=> b!5490178 m!6503460))

(declare-fun m!6503462 () Bool)

(assert (=> b!5490185 m!6503462))

(assert (=> b!5490180 m!6503454))

(declare-fun m!6503464 () Bool)

(assert (=> setNonEmpty!36321 m!6503464))

(declare-fun m!6503466 () Bool)

(assert (=> start!573826 m!6503466))

(declare-fun m!6503468 () Bool)

(assert (=> b!5490189 m!6503468))

(declare-fun m!6503470 () Bool)

(assert (=> b!5490173 m!6503470))

(declare-fun m!6503472 () Bool)

(assert (=> b!5490173 m!6503472))

(declare-fun m!6503474 () Bool)

(assert (=> b!5490173 m!6503474))

(declare-fun m!6503476 () Bool)

(assert (=> b!5490173 m!6503476))

(declare-fun m!6503478 () Bool)

(assert (=> b!5490173 m!6503478))

(declare-fun m!6503480 () Bool)

(assert (=> b!5490173 m!6503480))

(declare-fun m!6503482 () Bool)

(assert (=> b!5490173 m!6503482))

(declare-fun m!6503484 () Bool)

(assert (=> b!5490173 m!6503484))

(declare-fun m!6503486 () Bool)

(assert (=> b!5490173 m!6503486))

(declare-fun m!6503488 () Bool)

(assert (=> b!5490173 m!6503488))

(declare-fun m!6503490 () Bool)

(assert (=> b!5490173 m!6503490))

(declare-fun m!6503492 () Bool)

(assert (=> b!5490173 m!6503492))

(declare-fun m!6503494 () Bool)

(assert (=> b!5490173 m!6503494))

(declare-fun m!6503496 () Bool)

(assert (=> b!5490173 m!6503496))

(declare-fun m!6503498 () Bool)

(assert (=> b!5490173 m!6503498))

(declare-fun m!6503500 () Bool)

(assert (=> b!5490173 m!6503500))

(assert (=> b!5490182 m!6503460))

(declare-fun m!6503502 () Bool)

(assert (=> b!5490182 m!6503502))

(declare-fun m!6503504 () Bool)

(assert (=> b!5490182 m!6503504))

(declare-fun m!6503506 () Bool)

(assert (=> b!5490188 m!6503506))

(declare-fun m!6503508 () Bool)

(assert (=> b!5490188 m!6503508))

(declare-fun m!6503510 () Bool)

(assert (=> b!5490188 m!6503510))

(check-sat (not b!5490180) tp_is_empty!40155 (not b!5490187) (not b!5490189) (not b!5490185) (not b!5490174) (not setNonEmpty!36321) (not b!5490176) (not b!5490186) (not b!5490175) (not start!573826) (not b!5490184) (not b!5490188) (not b!5490173) (not b!5490190) (not b!5490183) (not b!5490178) (not b!5490182) (not b!5490179))
(check-sat)
