; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549386 () Bool)

(assert start!549386)

(declare-fun b!5190022 () Bool)

(assert (=> b!5190022 true))

(declare-fun b!5190004 () Bool)

(declare-fun e!3232862 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29716 0))(
  ( (C!29717 (val!24560 Int)) )
))
(declare-datatypes ((Regex!14723 0))(
  ( (ElementMatch!14723 (c!894562 C!29716)) (Concat!23568 (regOne!29958 Regex!14723) (regTwo!29958 Regex!14723)) (EmptyExpr!14723) (Star!14723 (reg!15052 Regex!14723)) (EmptyLang!14723) (Union!14723 (regOne!29959 Regex!14723) (regTwo!29959 Regex!14723)) )
))
(declare-datatypes ((List!60468 0))(
  ( (Nil!60344) (Cons!60344 (h!66792 Regex!14723) (t!373621 List!60468)) )
))
(declare-datatypes ((Context!8214 0))(
  ( (Context!8215 (exprs!4607 List!60468)) )
))
(declare-fun lt!2137184 () (InoxSet Context!8214))

(declare-datatypes ((List!60469 0))(
  ( (Nil!60345) (Cons!60345 (h!66793 C!29716) (t!373622 List!60469)) )
))
(declare-fun s!2326 () List!60469)

(declare-fun matchZipper!1003 ((InoxSet Context!8214) List!60469) Bool)

(assert (=> b!5190004 (= e!3232862 (matchZipper!1003 lt!2137184 (t!373622 s!2326)))))

(declare-fun b!5190005 () Bool)

(declare-fun e!3232873 () Bool)

(declare-datatypes ((List!60470 0))(
  ( (Nil!60346) (Cons!60346 (h!66794 Context!8214) (t!373623 List!60470)) )
))
(declare-fun zl!343 () List!60470)

(declare-fun tp!1455997 () Bool)

(declare-fun e!3232869 () Bool)

(declare-fun inv!80054 (Context!8214) Bool)

(assert (=> b!5190005 (= e!3232869 (and (inv!80054 (h!66794 zl!343)) e!3232873 tp!1455997))))

(declare-fun b!5190006 () Bool)

(declare-fun res!2204406 () Bool)

(declare-fun e!3232865 () Bool)

(assert (=> b!5190006 (=> res!2204406 e!3232865)))

(declare-fun r!7292 () Regex!14723)

(get-info :version)

(assert (=> b!5190006 (= res!2204406 (or ((_ is EmptyExpr!14723) r!7292) ((_ is EmptyLang!14723) r!7292) ((_ is ElementMatch!14723) r!7292) (not ((_ is Union!14723) r!7292))))))

(declare-fun b!5190007 () Bool)

(declare-fun e!3232870 () Bool)

(declare-fun e!3232871 () Bool)

(assert (=> b!5190007 (= e!3232870 e!3232871)))

(declare-fun res!2204412 () Bool)

(assert (=> b!5190007 (=> res!2204412 e!3232871)))

(declare-fun lt!2137177 () (InoxSet Context!8214))

(declare-fun lt!2137182 () (InoxSet Context!8214))

(assert (=> b!5190007 (= res!2204412 (not (= lt!2137177 lt!2137182)))))

(declare-fun lt!2137183 () Context!8214)

(declare-fun derivationStepZipperDown!192 (Regex!14723 Context!8214 C!29716) (InoxSet Context!8214))

(assert (=> b!5190007 (= lt!2137182 (derivationStepZipperDown!192 r!7292 lt!2137183 (h!66793 s!2326)))))

(assert (=> b!5190007 (= lt!2137183 (Context!8215 Nil!60344))))

(declare-fun derivationStepZipperUp!113 (Context!8214 C!29716) (InoxSet Context!8214))

(assert (=> b!5190007 (= lt!2137177 (derivationStepZipperUp!113 (Context!8215 (Cons!60344 r!7292 Nil!60344)) (h!66793 s!2326)))))

(declare-fun e!3232864 () Bool)

(declare-fun setRes!32752 () Bool)

(declare-fun setElem!32752 () Context!8214)

(declare-fun setNonEmpty!32752 () Bool)

(declare-fun tp!1455998 () Bool)

(assert (=> setNonEmpty!32752 (= setRes!32752 (and tp!1455998 (inv!80054 setElem!32752) e!3232864))))

(declare-fun z!1189 () (InoxSet Context!8214))

(declare-fun setRest!32752 () (InoxSet Context!8214))

(assert (=> setNonEmpty!32752 (= z!1189 ((_ map or) (store ((as const (Array Context!8214 Bool)) false) setElem!32752 true) setRest!32752))))

(declare-fun b!5190008 () Bool)

(declare-fun res!2204409 () Bool)

(declare-fun e!3232868 () Bool)

(assert (=> b!5190008 (=> (not res!2204409) (not e!3232868))))

(declare-fun unfocusZipper!465 (List!60470) Regex!14723)

(assert (=> b!5190008 (= res!2204409 (= r!7292 (unfocusZipper!465 zl!343)))))

(declare-fun b!5190009 () Bool)

(declare-fun res!2204413 () Bool)

(assert (=> b!5190009 (=> res!2204413 e!3232865)))

(declare-fun generalisedConcat!392 (List!60468) Regex!14723)

(assert (=> b!5190009 (= res!2204413 (not (= r!7292 (generalisedConcat!392 (exprs!4607 (h!66794 zl!343))))))))

(declare-fun b!5190010 () Bool)

(declare-fun e!3232867 () Bool)

(declare-fun tp_is_empty!38699 () Bool)

(declare-fun tp!1456001 () Bool)

(assert (=> b!5190010 (= e!3232867 (and tp_is_empty!38699 tp!1456001))))

(declare-fun b!5190011 () Bool)

(declare-fun e!3232872 () Bool)

(assert (=> b!5190011 (= e!3232871 e!3232872)))

(declare-fun res!2204404 () Bool)

(assert (=> b!5190011 (=> res!2204404 e!3232872)))

(declare-fun lt!2137179 () (InoxSet Context!8214))

(assert (=> b!5190011 (= res!2204404 (not (= lt!2137182 lt!2137179)))))

(declare-fun lt!2137187 () (InoxSet Context!8214))

(assert (=> b!5190011 (= lt!2137179 ((_ map or) lt!2137187 lt!2137184))))

(assert (=> b!5190011 (= lt!2137184 (derivationStepZipperDown!192 (regTwo!29959 r!7292) lt!2137183 (h!66793 s!2326)))))

(assert (=> b!5190011 (= lt!2137187 (derivationStepZipperDown!192 (regOne!29959 r!7292) lt!2137183 (h!66793 s!2326)))))

(declare-fun b!5190012 () Bool)

(declare-fun e!3232874 () Bool)

(declare-fun e!3232875 () Bool)

(assert (=> b!5190012 (= e!3232874 e!3232875)))

(declare-fun res!2204414 () Bool)

(assert (=> b!5190012 (=> res!2204414 e!3232875)))

(declare-fun lt!2137191 () Bool)

(declare-fun lt!2137192 () Bool)

(declare-fun lt!2137195 () Bool)

(assert (=> b!5190012 (= res!2204414 (or (not (= lt!2137195 lt!2137192)) (not (= lt!2137195 lt!2137191))))))

(assert (=> b!5190012 (= lt!2137192 lt!2137195)))

(assert (=> b!5190012 (= lt!2137195 e!3232862)))

(declare-fun res!2204401 () Bool)

(assert (=> b!5190012 (=> res!2204401 e!3232862)))

(assert (=> b!5190012 (= res!2204401 (matchZipper!1003 lt!2137187 (t!373622 s!2326)))))

(declare-datatypes ((Unit!152280 0))(
  ( (Unit!152281) )
))
(declare-fun lt!2137181 () Unit!152280)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!2 ((InoxSet Context!8214) (InoxSet Context!8214) List!60469) Unit!152280)

(assert (=> b!5190012 (= lt!2137181 (lemmaZipperConcatMatchesSameAsBothZippers!2 lt!2137187 lt!2137184 (t!373622 s!2326)))))

(declare-fun b!5190013 () Bool)

(declare-fun res!2204407 () Bool)

(assert (=> b!5190013 (=> (not res!2204407) (not e!3232868))))

(declare-fun toList!8507 ((InoxSet Context!8214)) List!60470)

(assert (=> b!5190013 (= res!2204407 (= (toList!8507 z!1189) zl!343))))

(declare-fun b!5190014 () Bool)

(declare-fun tp!1456000 () Bool)

(assert (=> b!5190014 (= e!3232864 tp!1456000)))

(declare-fun b!5190015 () Bool)

(declare-fun tp!1455994 () Bool)

(assert (=> b!5190015 (= e!3232873 tp!1455994)))

(declare-fun res!2204410 () Bool)

(assert (=> start!549386 (=> (not res!2204410) (not e!3232868))))

(declare-fun validRegex!6459 (Regex!14723) Bool)

(assert (=> start!549386 (= res!2204410 (validRegex!6459 r!7292))))

(assert (=> start!549386 e!3232868))

(declare-fun e!3232866 () Bool)

(assert (=> start!549386 e!3232866))

(declare-fun condSetEmpty!32752 () Bool)

(assert (=> start!549386 (= condSetEmpty!32752 (= z!1189 ((as const (Array Context!8214 Bool)) false)))))

(assert (=> start!549386 setRes!32752))

(assert (=> start!549386 e!3232869))

(assert (=> start!549386 e!3232867))

(declare-fun b!5190016 () Bool)

(declare-fun res!2204399 () Bool)

(assert (=> b!5190016 (=> res!2204399 e!3232865)))

(declare-fun isEmpty!32304 (List!60470) Bool)

(assert (=> b!5190016 (= res!2204399 (not (isEmpty!32304 (t!373623 zl!343))))))

(declare-fun b!5190017 () Bool)

(declare-fun tp!1455999 () Bool)

(declare-fun tp!1455992 () Bool)

(assert (=> b!5190017 (= e!3232866 (and tp!1455999 tp!1455992))))

(declare-fun setIsEmpty!32752 () Bool)

(assert (=> setIsEmpty!32752 setRes!32752))

(declare-fun b!5190018 () Bool)

(assert (=> b!5190018 (= e!3232875 true)))

(declare-fun lt!2137189 () (InoxSet Context!8214))

(assert (=> b!5190018 (= lt!2137189 (derivationStepZipperUp!113 (Context!8215 (Cons!60344 (regTwo!29959 r!7292) Nil!60344)) (h!66793 s!2326)))))

(declare-fun lt!2137186 () (InoxSet Context!8214))

(assert (=> b!5190018 (= lt!2137186 (derivationStepZipperUp!113 (Context!8215 (Cons!60344 (regOne!29959 r!7292) Nil!60344)) (h!66793 s!2326)))))

(declare-fun b!5190019 () Bool)

(declare-fun res!2204400 () Bool)

(assert (=> b!5190019 (=> res!2204400 e!3232865)))

(assert (=> b!5190019 (= res!2204400 (not ((_ is Cons!60344) (exprs!4607 (h!66794 zl!343)))))))

(declare-fun b!5190020 () Bool)

(assert (=> b!5190020 (= e!3232868 (not e!3232865))))

(declare-fun res!2204402 () Bool)

(assert (=> b!5190020 (=> res!2204402 e!3232865)))

(assert (=> b!5190020 (= res!2204402 (not ((_ is Cons!60346) zl!343)))))

(declare-fun lt!2137188 () Bool)

(declare-fun matchRSpec!1826 (Regex!14723 List!60469) Bool)

(assert (=> b!5190020 (= lt!2137188 (matchRSpec!1826 r!7292 s!2326))))

(declare-fun matchR!6908 (Regex!14723 List!60469) Bool)

(assert (=> b!5190020 (= lt!2137188 (matchR!6908 r!7292 s!2326))))

(declare-fun lt!2137194 () Unit!152280)

(declare-fun mainMatchTheorem!1826 (Regex!14723 List!60469) Unit!152280)

(assert (=> b!5190020 (= lt!2137194 (mainMatchTheorem!1826 r!7292 s!2326))))

(declare-fun b!5190021 () Bool)

(declare-fun tp!1455993 () Bool)

(assert (=> b!5190021 (= e!3232866 tp!1455993)))

(declare-fun e!3232863 () Bool)

(assert (=> b!5190022 (= e!3232872 e!3232863)))

(declare-fun res!2204408 () Bool)

(assert (=> b!5190022 (=> res!2204408 e!3232863)))

(declare-fun derivationStepZipper!1025 ((InoxSet Context!8214) C!29716) (InoxSet Context!8214))

(assert (=> b!5190022 (= res!2204408 (not (= (derivationStepZipper!1025 z!1189 (h!66793 s!2326)) lt!2137179)))))

(declare-fun lambda!259477 () Int)

(declare-fun flatMap!476 ((InoxSet Context!8214) Int) (InoxSet Context!8214))

(assert (=> b!5190022 (= (flatMap!476 z!1189 lambda!259477) (derivationStepZipperUp!113 (h!66794 zl!343) (h!66793 s!2326)))))

(declare-fun lt!2137185 () Unit!152280)

(declare-fun lemmaFlatMapOnSingletonSet!8 ((InoxSet Context!8214) Context!8214 Int) Unit!152280)

(assert (=> b!5190022 (= lt!2137185 (lemmaFlatMapOnSingletonSet!8 z!1189 (h!66794 zl!343) lambda!259477))))

(declare-fun b!5190023 () Bool)

(assert (=> b!5190023 (= e!3232866 tp_is_empty!38699)))

(declare-fun b!5190024 () Bool)

(declare-fun tp!1455995 () Bool)

(declare-fun tp!1455996 () Bool)

(assert (=> b!5190024 (= e!3232866 (and tp!1455995 tp!1455996))))

(declare-fun b!5190025 () Bool)

(assert (=> b!5190025 (= e!3232863 e!3232874)))

(declare-fun res!2204405 () Bool)

(assert (=> b!5190025 (=> res!2204405 e!3232874)))

(assert (=> b!5190025 (= res!2204405 (not (= lt!2137192 lt!2137191)))))

(assert (=> b!5190025 (= lt!2137191 (matchZipper!1003 z!1189 s!2326))))

(assert (=> b!5190025 (= lt!2137192 (matchZipper!1003 lt!2137179 (t!373622 s!2326)))))

(declare-fun b!5190026 () Bool)

(declare-fun res!2204403 () Bool)

(assert (=> b!5190026 (=> res!2204403 e!3232865)))

(declare-fun generalisedUnion!652 (List!60468) Regex!14723)

(declare-fun unfocusZipperList!165 (List!60470) List!60468)

(assert (=> b!5190026 (= res!2204403 (not (= r!7292 (generalisedUnion!652 (unfocusZipperList!165 zl!343)))))))

(declare-fun b!5190027 () Bool)

(assert (=> b!5190027 (= e!3232865 e!3232870)))

(declare-fun res!2204411 () Bool)

(assert (=> b!5190027 (=> res!2204411 e!3232870)))

(declare-fun lt!2137180 () Bool)

(declare-fun lt!2137190 () Bool)

(assert (=> b!5190027 (= res!2204411 (or (not (= lt!2137188 (or lt!2137190 lt!2137180))) ((_ is Nil!60345) s!2326)))))

(assert (=> b!5190027 (= lt!2137180 (matchRSpec!1826 (regTwo!29959 r!7292) s!2326))))

(assert (=> b!5190027 (= lt!2137180 (matchR!6908 (regTwo!29959 r!7292) s!2326))))

(declare-fun lt!2137193 () Unit!152280)

(assert (=> b!5190027 (= lt!2137193 (mainMatchTheorem!1826 (regTwo!29959 r!7292) s!2326))))

(assert (=> b!5190027 (= lt!2137190 (matchRSpec!1826 (regOne!29959 r!7292) s!2326))))

(assert (=> b!5190027 (= lt!2137190 (matchR!6908 (regOne!29959 r!7292) s!2326))))

(declare-fun lt!2137178 () Unit!152280)

(assert (=> b!5190027 (= lt!2137178 (mainMatchTheorem!1826 (regOne!29959 r!7292) s!2326))))

(assert (= (and start!549386 res!2204410) b!5190013))

(assert (= (and b!5190013 res!2204407) b!5190008))

(assert (= (and b!5190008 res!2204409) b!5190020))

(assert (= (and b!5190020 (not res!2204402)) b!5190016))

(assert (= (and b!5190016 (not res!2204399)) b!5190009))

(assert (= (and b!5190009 (not res!2204413)) b!5190019))

(assert (= (and b!5190019 (not res!2204400)) b!5190026))

(assert (= (and b!5190026 (not res!2204403)) b!5190006))

(assert (= (and b!5190006 (not res!2204406)) b!5190027))

(assert (= (and b!5190027 (not res!2204411)) b!5190007))

(assert (= (and b!5190007 (not res!2204412)) b!5190011))

(assert (= (and b!5190011 (not res!2204404)) b!5190022))

(assert (= (and b!5190022 (not res!2204408)) b!5190025))

(assert (= (and b!5190025 (not res!2204405)) b!5190012))

(assert (= (and b!5190012 (not res!2204401)) b!5190004))

(assert (= (and b!5190012 (not res!2204414)) b!5190018))

(assert (= (and start!549386 ((_ is ElementMatch!14723) r!7292)) b!5190023))

(assert (= (and start!549386 ((_ is Concat!23568) r!7292)) b!5190017))

(assert (= (and start!549386 ((_ is Star!14723) r!7292)) b!5190021))

(assert (= (and start!549386 ((_ is Union!14723) r!7292)) b!5190024))

(assert (= (and start!549386 condSetEmpty!32752) setIsEmpty!32752))

(assert (= (and start!549386 (not condSetEmpty!32752)) setNonEmpty!32752))

(assert (= setNonEmpty!32752 b!5190014))

(assert (= b!5190005 b!5190015))

(assert (= (and start!549386 ((_ is Cons!60346) zl!343)) b!5190005))

(assert (= (and start!549386 ((_ is Cons!60345) s!2326)) b!5190010))

(declare-fun m!6246380 () Bool)

(assert (=> b!5190026 m!6246380))

(assert (=> b!5190026 m!6246380))

(declare-fun m!6246382 () Bool)

(assert (=> b!5190026 m!6246382))

(declare-fun m!6246384 () Bool)

(assert (=> start!549386 m!6246384))

(declare-fun m!6246386 () Bool)

(assert (=> b!5190025 m!6246386))

(declare-fun m!6246388 () Bool)

(assert (=> b!5190025 m!6246388))

(declare-fun m!6246390 () Bool)

(assert (=> b!5190012 m!6246390))

(declare-fun m!6246392 () Bool)

(assert (=> b!5190012 m!6246392))

(declare-fun m!6246394 () Bool)

(assert (=> setNonEmpty!32752 m!6246394))

(declare-fun m!6246396 () Bool)

(assert (=> b!5190011 m!6246396))

(declare-fun m!6246398 () Bool)

(assert (=> b!5190011 m!6246398))

(declare-fun m!6246400 () Bool)

(assert (=> b!5190008 m!6246400))

(declare-fun m!6246402 () Bool)

(assert (=> b!5190005 m!6246402))

(declare-fun m!6246404 () Bool)

(assert (=> b!5190007 m!6246404))

(declare-fun m!6246406 () Bool)

(assert (=> b!5190007 m!6246406))

(declare-fun m!6246408 () Bool)

(assert (=> b!5190020 m!6246408))

(declare-fun m!6246410 () Bool)

(assert (=> b!5190020 m!6246410))

(declare-fun m!6246412 () Bool)

(assert (=> b!5190020 m!6246412))

(declare-fun m!6246414 () Bool)

(assert (=> b!5190022 m!6246414))

(declare-fun m!6246416 () Bool)

(assert (=> b!5190022 m!6246416))

(declare-fun m!6246418 () Bool)

(assert (=> b!5190022 m!6246418))

(declare-fun m!6246420 () Bool)

(assert (=> b!5190022 m!6246420))

(declare-fun m!6246422 () Bool)

(assert (=> b!5190013 m!6246422))

(declare-fun m!6246424 () Bool)

(assert (=> b!5190004 m!6246424))

(declare-fun m!6246426 () Bool)

(assert (=> b!5190018 m!6246426))

(declare-fun m!6246428 () Bool)

(assert (=> b!5190018 m!6246428))

(declare-fun m!6246430 () Bool)

(assert (=> b!5190016 m!6246430))

(declare-fun m!6246432 () Bool)

(assert (=> b!5190027 m!6246432))

(declare-fun m!6246434 () Bool)

(assert (=> b!5190027 m!6246434))

(declare-fun m!6246436 () Bool)

(assert (=> b!5190027 m!6246436))

(declare-fun m!6246438 () Bool)

(assert (=> b!5190027 m!6246438))

(declare-fun m!6246440 () Bool)

(assert (=> b!5190027 m!6246440))

(declare-fun m!6246442 () Bool)

(assert (=> b!5190027 m!6246442))

(declare-fun m!6246444 () Bool)

(assert (=> b!5190009 m!6246444))

(check-sat (not b!5190013) (not b!5190027) (not b!5190008) (not b!5190004) (not b!5190016) (not start!549386) (not b!5190007) (not b!5190026) (not b!5190025) (not b!5190018) (not setNonEmpty!32752) (not b!5190012) (not b!5190011) (not b!5190010) (not b!5190017) (not b!5190009) (not b!5190022) tp_is_empty!38699 (not b!5190015) (not b!5190020) (not b!5190021) (not b!5190014) (not b!5190024) (not b!5190005))
(check-sat)
