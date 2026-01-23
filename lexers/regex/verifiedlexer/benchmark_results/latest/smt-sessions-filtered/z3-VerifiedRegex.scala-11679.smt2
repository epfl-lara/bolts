; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656492 () Bool)

(assert start!656492)

(declare-fun b!6782923 () Bool)

(assert (=> b!6782923 true))

(assert (=> b!6782923 true))

(declare-fun lambda!381848 () Int)

(declare-fun lambda!381847 () Int)

(assert (=> b!6782923 (not (= lambda!381848 lambda!381847))))

(assert (=> b!6782923 true))

(assert (=> b!6782923 true))

(declare-fun lambda!381849 () Int)

(assert (=> b!6782923 (not (= lambda!381849 lambda!381847))))

(assert (=> b!6782923 (not (= lambda!381849 lambda!381848))))

(assert (=> b!6782923 true))

(assert (=> b!6782923 true))

(declare-fun b!6782908 () Bool)

(assert (=> b!6782908 true))

(declare-datatypes ((C!33480 0))(
  ( (C!33481 (val!26442 Int)) )
))
(declare-datatypes ((List!66114 0))(
  ( (Nil!65990) (Cons!65990 (h!72438 C!33480) (t!379831 List!66114)) )
))
(declare-fun s!2326 () List!66114)

(declare-fun e!4094471 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16605 0))(
  ( (ElementMatch!16605 (c!1260145 C!33480)) (Concat!25450 (regOne!33722 Regex!16605) (regTwo!33722 Regex!16605)) (EmptyExpr!16605) (Star!16605 (reg!16934 Regex!16605)) (EmptyLang!16605) (Union!16605 (regOne!33723 Regex!16605) (regTwo!33723 Regex!16605)) )
))
(declare-datatypes ((List!66115 0))(
  ( (Nil!65991) (Cons!65991 (h!72439 Regex!16605) (t!379832 List!66115)) )
))
(declare-datatypes ((Context!11978 0))(
  ( (Context!11979 (exprs!6489 List!66115)) )
))
(declare-fun z!1189 () (InoxSet Context!11978))

(declare-fun b!6782898 () Bool)

(declare-fun lt!2445199 () Bool)

(declare-fun matchZipper!2591 ((InoxSet Context!11978) List!66114) Bool)

(assert (=> b!6782898 (= e!4094471 (= lt!2445199 (matchZipper!2591 z!1189 s!2326)))))

(declare-fun lt!2445175 () List!66115)

(declare-fun lt!2445201 () List!66115)

(declare-fun lt!2445194 () List!66114)

(declare-fun ++!14760 (List!66115 List!66115) List!66115)

(assert (=> b!6782898 (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) lt!2445194)))

(declare-datatypes ((Unit!159901 0))(
  ( (Unit!159902) )
))
(declare-fun lt!2445179 () Unit!159901)

(declare-fun lambda!381851 () Int)

(declare-fun lemmaConcatPreservesForall!438 (List!66115 List!66115 Int) Unit!159901)

(assert (=> b!6782898 (= lt!2445179 (lemmaConcatPreservesForall!438 lt!2445175 lt!2445201 lambda!381851))))

(declare-datatypes ((tuple2!67160 0))(
  ( (tuple2!67161 (_1!36883 List!66114) (_2!36883 List!66114)) )
))
(declare-fun lt!2445168 () tuple2!67160)

(declare-fun lt!2445189 () Unit!159901)

(declare-fun lt!2445169 () Context!11978)

(declare-fun lt!2445187 () Context!11978)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!246 (Context!11978 Context!11978 List!66114 List!66114) Unit!159901)

(assert (=> b!6782898 (= lt!2445189 (lemmaConcatenateContextMatchesConcatOfStrings!246 lt!2445169 lt!2445187 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))

(declare-fun lt!2445172 () (InoxSet Context!11978))

(assert (=> b!6782898 (matchZipper!2591 lt!2445172 (_2!36883 lt!2445168))))

(declare-fun r!7292 () Regex!16605)

(declare-datatypes ((List!66116 0))(
  ( (Nil!65992) (Cons!65992 (h!72440 Context!11978) (t!379833 List!66116)) )
))
(declare-fun lt!2445171 () List!66116)

(declare-fun lt!2445182 () Unit!159901)

(declare-fun theoremZipperRegexEquiv!935 ((InoxSet Context!11978) List!66116 Regex!16605 List!66114) Unit!159901)

(assert (=> b!6782898 (= lt!2445182 (theoremZipperRegexEquiv!935 lt!2445172 lt!2445171 r!7292 (_2!36883 lt!2445168)))))

(declare-fun lt!2445190 () (InoxSet Context!11978))

(assert (=> b!6782898 (matchZipper!2591 lt!2445190 (_1!36883 lt!2445168))))

(declare-fun lt!2445173 () Unit!159901)

(declare-fun lt!2445200 () List!66116)

(assert (=> b!6782898 (= lt!2445173 (theoremZipperRegexEquiv!935 lt!2445190 lt!2445200 (reg!16934 r!7292) (_1!36883 lt!2445168)))))

(declare-fun b!6782899 () Bool)

(declare-fun res!2772578 () Bool)

(declare-fun e!4094484 () Bool)

(assert (=> b!6782899 (=> res!2772578 e!4094484)))

(declare-fun zl!343 () List!66116)

(declare-fun generalisedConcat!2202 (List!66115) Regex!16605)

(assert (=> b!6782899 (= res!2772578 (not (= r!7292 (generalisedConcat!2202 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun b!6782900 () Bool)

(declare-fun e!4094479 () Bool)

(declare-fun tp!1858325 () Bool)

(declare-fun tp!1858320 () Bool)

(assert (=> b!6782900 (= e!4094479 (and tp!1858325 tp!1858320))))

(declare-fun b!6782901 () Bool)

(declare-fun res!2772588 () Bool)

(assert (=> b!6782901 (=> res!2772588 e!4094471)))

(declare-fun matchR!8788 (Regex!16605 List!66114) Bool)

(assert (=> b!6782901 (= res!2772588 (not (matchR!8788 r!7292 (_2!36883 lt!2445168))))))

(declare-fun b!6782902 () Bool)

(declare-fun res!2772582 () Bool)

(assert (=> b!6782902 (=> res!2772582 e!4094471)))

(assert (=> b!6782902 (= res!2772582 (not (matchR!8788 (reg!16934 r!7292) (_1!36883 lt!2445168))))))

(declare-fun b!6782903 () Bool)

(declare-fun e!4094469 () Bool)

(declare-fun e!4094473 () Bool)

(assert (=> b!6782903 (= e!4094469 e!4094473)))

(declare-fun res!2772586 () Bool)

(assert (=> b!6782903 (=> (not res!2772586) (not e!4094473))))

(declare-fun lt!2445185 () Regex!16605)

(assert (=> b!6782903 (= res!2772586 (= r!7292 lt!2445185))))

(declare-fun unfocusZipper!2347 (List!66116) Regex!16605)

(assert (=> b!6782903 (= lt!2445185 (unfocusZipper!2347 zl!343))))

(declare-fun b!6782904 () Bool)

(declare-fun res!2772579 () Bool)

(assert (=> b!6782904 (=> res!2772579 e!4094484)))

(declare-fun isEmpty!38353 (List!66116) Bool)

(assert (=> b!6782904 (= res!2772579 (not (isEmpty!38353 (t!379833 zl!343))))))

(declare-fun b!6782905 () Bool)

(declare-fun res!2772568 () Bool)

(declare-fun e!4094482 () Bool)

(assert (=> b!6782905 (=> res!2772568 e!4094482)))

(declare-fun lt!2445167 () (InoxSet Context!11978))

(declare-fun derivationStepZipper!2549 ((InoxSet Context!11978) C!33480) (InoxSet Context!11978))

(assert (=> b!6782905 (= res!2772568 (not (= (matchZipper!2591 lt!2445167 s!2326) (matchZipper!2591 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (t!379831 s!2326)))))))

(declare-fun b!6782906 () Bool)

(declare-fun e!4094474 () Bool)

(declare-fun lt!2445178 () Bool)

(assert (=> b!6782906 (= e!4094474 lt!2445178)))

(declare-fun b!6782907 () Bool)

(declare-fun tp!1858321 () Bool)

(assert (=> b!6782907 (= e!4094479 tp!1858321)))

(declare-fun e!4094489 () Bool)

(declare-fun e!4094490 () Bool)

(assert (=> b!6782908 (= e!4094489 e!4094490)))

(declare-fun res!2772564 () Bool)

(assert (=> b!6782908 (=> res!2772564 e!4094490)))

(declare-fun lt!2445191 () (InoxSet Context!11978))

(declare-fun lt!2445195 () (InoxSet Context!11978))

(assert (=> b!6782908 (= res!2772564 (not (= lt!2445191 lt!2445195)))))

(declare-fun lambda!381850 () Int)

(declare-fun flatMap!2086 ((InoxSet Context!11978) Int) (InoxSet Context!11978))

(declare-fun derivationStepZipperUp!1759 (Context!11978 C!33480) (InoxSet Context!11978))

(assert (=> b!6782908 (= (flatMap!2086 z!1189 lambda!381850) (derivationStepZipperUp!1759 (h!72440 zl!343) (h!72438 s!2326)))))

(declare-fun lt!2445170 () Unit!159901)

(declare-fun lemmaFlatMapOnSingletonSet!1612 ((InoxSet Context!11978) Context!11978 Int) Unit!159901)

(assert (=> b!6782908 (= lt!2445170 (lemmaFlatMapOnSingletonSet!1612 z!1189 (h!72440 zl!343) lambda!381850))))

(declare-fun res!2772585 () Bool)

(assert (=> start!656492 (=> (not res!2772585) (not e!4094469))))

(declare-fun validRegex!8341 (Regex!16605) Bool)

(assert (=> start!656492 (= res!2772585 (validRegex!8341 r!7292))))

(assert (=> start!656492 e!4094469))

(assert (=> start!656492 e!4094479))

(declare-fun condSetEmpty!46403 () Bool)

(assert (=> start!656492 (= condSetEmpty!46403 (= z!1189 ((as const (Array Context!11978 Bool)) false)))))

(declare-fun setRes!46403 () Bool)

(assert (=> start!656492 setRes!46403))

(declare-fun e!4094480 () Bool)

(assert (=> start!656492 e!4094480))

(declare-fun e!4094483 () Bool)

(assert (=> start!656492 e!4094483))

(declare-fun setElem!46403 () Context!11978)

(declare-fun tp!1858317 () Bool)

(declare-fun setNonEmpty!46403 () Bool)

(declare-fun e!4094470 () Bool)

(declare-fun inv!84759 (Context!11978) Bool)

(assert (=> setNonEmpty!46403 (= setRes!46403 (and tp!1858317 (inv!84759 setElem!46403) e!4094470))))

(declare-fun setRest!46403 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46403 (= z!1189 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46403 true) setRest!46403))))

(declare-fun b!6782909 () Bool)

(declare-fun e!4094472 () Bool)

(declare-fun tp!1858323 () Bool)

(assert (=> b!6782909 (= e!4094472 tp!1858323)))

(declare-fun b!6782910 () Bool)

(assert (=> b!6782910 (= e!4094473 (not e!4094484))))

(declare-fun res!2772584 () Bool)

(assert (=> b!6782910 (=> res!2772584 e!4094484)))

(get-info :version)

(assert (=> b!6782910 (= res!2772584 (not ((_ is Cons!65992) zl!343)))))

(declare-fun matchRSpec!3706 (Regex!16605 List!66114) Bool)

(assert (=> b!6782910 (= lt!2445199 (matchRSpec!3706 r!7292 s!2326))))

(assert (=> b!6782910 (= lt!2445199 (matchR!8788 r!7292 s!2326))))

(declare-fun lt!2445177 () Unit!159901)

(declare-fun mainMatchTheorem!3706 (Regex!16605 List!66114) Unit!159901)

(assert (=> b!6782910 (= lt!2445177 (mainMatchTheorem!3706 r!7292 s!2326))))

(declare-fun b!6782911 () Bool)

(declare-fun e!4094485 () Bool)

(declare-fun e!4094486 () Bool)

(assert (=> b!6782911 (= e!4094485 e!4094486)))

(declare-fun res!2772570 () Bool)

(assert (=> b!6782911 (=> res!2772570 e!4094486)))

(assert (=> b!6782911 (= res!2772570 (not (= lt!2445191 (derivationStepZipper!2549 lt!2445172 (h!72438 s!2326)))))))

(assert (=> b!6782911 (= (flatMap!2086 lt!2445172 lambda!381850) (derivationStepZipperUp!1759 lt!2445187 (h!72438 s!2326)))))

(declare-fun lt!2445193 () Unit!159901)

(assert (=> b!6782911 (= lt!2445193 (lemmaFlatMapOnSingletonSet!1612 lt!2445172 lt!2445187 lambda!381850))))

(assert (=> b!6782911 (= (flatMap!2086 lt!2445190 lambda!381850) (derivationStepZipperUp!1759 lt!2445169 (h!72438 s!2326)))))

(declare-fun lt!2445197 () Unit!159901)

(assert (=> b!6782911 (= lt!2445197 (lemmaFlatMapOnSingletonSet!1612 lt!2445190 lt!2445169 lambda!381850))))

(declare-fun lt!2445180 () (InoxSet Context!11978))

(assert (=> b!6782911 (= lt!2445180 (derivationStepZipperUp!1759 lt!2445187 (h!72438 s!2326)))))

(declare-fun lt!2445186 () (InoxSet Context!11978))

(assert (=> b!6782911 (= lt!2445186 (derivationStepZipperUp!1759 lt!2445169 (h!72438 s!2326)))))

(assert (=> b!6782911 (= lt!2445172 (store ((as const (Array Context!11978 Bool)) false) lt!2445187 true))))

(assert (=> b!6782911 (= lt!2445190 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true))))

(assert (=> b!6782911 (= lt!2445169 (Context!11979 lt!2445175))))

(assert (=> b!6782911 (= lt!2445175 (Cons!65991 (reg!16934 r!7292) Nil!65991))))

(declare-fun b!6782912 () Bool)

(declare-fun tp!1858318 () Bool)

(assert (=> b!6782912 (= e!4094480 (and (inv!84759 (h!72440 zl!343)) e!4094472 tp!1858318))))

(declare-fun b!6782913 () Bool)

(declare-fun e!4094481 () Bool)

(assert (=> b!6782913 (= e!4094486 e!4094481)))

(declare-fun res!2772574 () Bool)

(assert (=> b!6782913 (=> res!2772574 e!4094481)))

(assert (=> b!6782913 (= res!2772574 (not (= (unfocusZipper!2347 lt!2445200) (reg!16934 r!7292))))))

(assert (=> b!6782913 (= lt!2445200 (Cons!65992 lt!2445169 Nil!65992))))

(declare-fun b!6782914 () Bool)

(declare-fun res!2772583 () Bool)

(declare-fun e!4094488 () Bool)

(assert (=> b!6782914 (=> res!2772583 e!4094488)))

(assert (=> b!6782914 (= res!2772583 ((_ is Nil!65990) s!2326))))

(declare-fun b!6782915 () Bool)

(assert (=> b!6782915 (= e!4094482 e!4094485)))

(declare-fun res!2772569 () Bool)

(assert (=> b!6782915 (=> res!2772569 e!4094485)))

(declare-fun lt!2445202 () Context!11978)

(declare-fun lt!2445192 () Regex!16605)

(assert (=> b!6782915 (= res!2772569 (not (= (unfocusZipper!2347 (Cons!65992 lt!2445202 Nil!65992)) lt!2445192)))))

(assert (=> b!6782915 (= lt!2445192 (Concat!25450 (reg!16934 r!7292) r!7292))))

(declare-fun b!6782916 () Bool)

(declare-fun e!4094477 () Bool)

(assert (=> b!6782916 (= e!4094481 e!4094477)))

(declare-fun res!2772575 () Bool)

(assert (=> b!6782916 (=> res!2772575 e!4094477)))

(assert (=> b!6782916 (= res!2772575 (not (= (unfocusZipper!2347 lt!2445171) r!7292)))))

(assert (=> b!6782916 (= lt!2445171 (Cons!65992 lt!2445187 Nil!65992))))

(declare-fun b!6782917 () Bool)

(declare-fun e!4094487 () Bool)

(assert (=> b!6782917 (= e!4094487 e!4094471)))

(declare-fun res!2772566 () Bool)

(assert (=> b!6782917 (=> res!2772566 e!4094471)))

(assert (=> b!6782917 (= res!2772566 (not (= s!2326 lt!2445194)))))

(declare-fun ++!14761 (List!66114 List!66114) List!66114)

(assert (=> b!6782917 (= lt!2445194 (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))

(declare-datatypes ((Option!16492 0))(
  ( (None!16491) (Some!16491 (v!52697 tuple2!67160)) )
))
(declare-fun lt!2445188 () Option!16492)

(declare-fun get!22977 (Option!16492) tuple2!67160)

(assert (=> b!6782917 (= lt!2445168 (get!22977 lt!2445188))))

(declare-fun b!6782918 () Bool)

(assert (=> b!6782918 (= e!4094490 e!4094482)))

(declare-fun res!2772572 () Bool)

(assert (=> b!6782918 (=> res!2772572 e!4094482)))

(declare-fun derivationStepZipperDown!1833 (Regex!16605 Context!11978 C!33480) (InoxSet Context!11978))

(assert (=> b!6782918 (= res!2772572 (not (= lt!2445191 (derivationStepZipperDown!1833 (reg!16934 r!7292) lt!2445187 (h!72438 s!2326)))))))

(assert (=> b!6782918 (= lt!2445187 (Context!11979 lt!2445201))))

(assert (=> b!6782918 (= (flatMap!2086 lt!2445167 lambda!381850) (derivationStepZipperUp!1759 lt!2445202 (h!72438 s!2326)))))

(declare-fun lt!2445176 () Unit!159901)

(assert (=> b!6782918 (= lt!2445176 (lemmaFlatMapOnSingletonSet!1612 lt!2445167 lt!2445202 lambda!381850))))

(declare-fun lt!2445166 () (InoxSet Context!11978))

(assert (=> b!6782918 (= lt!2445166 (derivationStepZipperUp!1759 lt!2445202 (h!72438 s!2326)))))

(assert (=> b!6782918 (= lt!2445167 (store ((as const (Array Context!11978 Bool)) false) lt!2445202 true))))

(assert (=> b!6782918 (= lt!2445202 (Context!11979 (Cons!65991 (reg!16934 r!7292) lt!2445201)))))

(assert (=> b!6782918 (= lt!2445201 (Cons!65991 r!7292 Nil!65991))))

(declare-fun b!6782919 () Bool)

(declare-fun res!2772562 () Bool)

(assert (=> b!6782919 (=> res!2772562 e!4094484)))

(assert (=> b!6782919 (= res!2772562 (or ((_ is EmptyExpr!16605) r!7292) ((_ is EmptyLang!16605) r!7292) ((_ is ElementMatch!16605) r!7292) ((_ is Union!16605) r!7292) ((_ is Concat!25450) r!7292)))))

(declare-fun b!6782920 () Bool)

(declare-fun res!2772563 () Bool)

(assert (=> b!6782920 (=> (not res!2772563) (not e!4094469))))

(declare-fun toList!10389 ((InoxSet Context!11978)) List!66116)

(assert (=> b!6782920 (= res!2772563 (= (toList!10389 z!1189) zl!343))))

(declare-fun b!6782921 () Bool)

(declare-fun res!2772577 () Bool)

(assert (=> b!6782921 (=> res!2772577 e!4094484)))

(assert (=> b!6782921 (= res!2772577 (not ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6782922 () Bool)

(declare-fun e!4094475 () Bool)

(declare-fun e!4094478 () Bool)

(assert (=> b!6782922 (= e!4094475 e!4094478)))

(declare-fun res!2772567 () Bool)

(assert (=> b!6782922 (=> (not res!2772567) (not e!4094478))))

(declare-fun Exists!3673 (Int) Bool)

(assert (=> b!6782922 (= res!2772567 (= (Exists!3673 lambda!381847) (Exists!3673 lambda!381848)))))

(assert (=> b!6782923 (= e!4094484 e!4094488)))

(declare-fun res!2772565 () Bool)

(assert (=> b!6782923 (=> res!2772565 e!4094488)))

(assert (=> b!6782923 (= res!2772565 (not (= lt!2445199 e!4094474)))))

(declare-fun res!2772581 () Bool)

(assert (=> b!6782923 (=> res!2772581 e!4094474)))

(declare-fun isEmpty!38354 (List!66114) Bool)

(assert (=> b!6782923 (= res!2772581 (isEmpty!38354 s!2326))))

(assert (=> b!6782923 (= (Exists!3673 lambda!381847) (Exists!3673 lambda!381849))))

(declare-fun lt!2445174 () Unit!159901)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2200 (Regex!16605 Regex!16605 List!66114) Unit!159901)

(assert (=> b!6782923 (= lt!2445174 (lemmaExistCutMatchRandMatchRSpecEquivalent!2200 (reg!16934 r!7292) r!7292 s!2326))))

(assert (=> b!6782923 (= (Exists!3673 lambda!381847) (Exists!3673 lambda!381848))))

(declare-fun lt!2445198 () Unit!159901)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!764 (Regex!16605 List!66114) Unit!159901)

(assert (=> b!6782923 (= lt!2445198 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!764 (reg!16934 r!7292) s!2326))))

(assert (=> b!6782923 (= lt!2445178 (Exists!3673 lambda!381847))))

(declare-fun isDefined!13195 (Option!16492) Bool)

(assert (=> b!6782923 (= lt!2445178 (isDefined!13195 lt!2445188))))

(declare-fun findConcatSeparation!2906 (Regex!16605 Regex!16605 List!66114 List!66114 List!66114) Option!16492)

(assert (=> b!6782923 (= lt!2445188 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326))))

(declare-fun lt!2445181 () Unit!159901)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2670 (Regex!16605 Regex!16605 List!66114) Unit!159901)

(assert (=> b!6782923 (= lt!2445181 (lemmaFindConcatSeparationEquivalentToExists!2670 (reg!16934 r!7292) r!7292 s!2326))))

(declare-fun b!6782924 () Bool)

(declare-fun tp!1858322 () Bool)

(declare-fun tp!1858324 () Bool)

(assert (=> b!6782924 (= e!4094479 (and tp!1858322 tp!1858324))))

(declare-fun b!6782925 () Bool)

(declare-fun e!4094476 () Bool)

(assert (=> b!6782925 (= e!4094476 e!4094475)))

(declare-fun res!2772587 () Bool)

(assert (=> b!6782925 (=> res!2772587 e!4094475)))

(declare-fun lt!2445196 () Bool)

(assert (=> b!6782925 (= res!2772587 (not lt!2445196))))

(declare-fun b!6782926 () Bool)

(declare-fun res!2772573 () Bool)

(assert (=> b!6782926 (=> res!2772573 e!4094484)))

(declare-fun generalisedUnion!2449 (List!66115) Regex!16605)

(declare-fun unfocusZipperList!2026 (List!66116) List!66115)

(assert (=> b!6782926 (= res!2772573 (not (= r!7292 (generalisedUnion!2449 (unfocusZipperList!2026 zl!343)))))))

(declare-fun b!6782927 () Bool)

(assert (=> b!6782927 (= e!4094477 e!4094487)))

(declare-fun res!2772580 () Bool)

(assert (=> b!6782927 (=> res!2772580 e!4094487)))

(assert (=> b!6782927 (= res!2772580 (not lt!2445196))))

(assert (=> b!6782927 e!4094476))

(declare-fun res!2772561 () Bool)

(assert (=> b!6782927 (=> (not res!2772561) (not e!4094476))))

(assert (=> b!6782927 (= res!2772561 (= lt!2445196 (matchRSpec!3706 lt!2445192 s!2326)))))

(assert (=> b!6782927 (= lt!2445196 (matchR!8788 lt!2445192 s!2326))))

(declare-fun lt!2445183 () Unit!159901)

(assert (=> b!6782927 (= lt!2445183 (mainMatchTheorem!3706 lt!2445192 s!2326))))

(declare-fun b!6782928 () Bool)

(assert (=> b!6782928 (= e!4094488 e!4094489)))

(declare-fun res!2772576 () Bool)

(assert (=> b!6782928 (=> res!2772576 e!4094489)))

(declare-fun lt!2445184 () (InoxSet Context!11978))

(assert (=> b!6782928 (= res!2772576 (not (= lt!2445184 lt!2445195)))))

(assert (=> b!6782928 (= lt!2445195 (derivationStepZipperDown!1833 r!7292 (Context!11979 Nil!65991) (h!72438 s!2326)))))

(assert (=> b!6782928 (= lt!2445184 (derivationStepZipperUp!1759 (Context!11979 (Cons!65991 r!7292 Nil!65991)) (h!72438 s!2326)))))

(assert (=> b!6782928 (= lt!2445191 (derivationStepZipper!2549 z!1189 (h!72438 s!2326)))))

(declare-fun b!6782929 () Bool)

(assert (=> b!6782929 (= e!4094478 (= lt!2445178 (Exists!3673 lambda!381847)))))

(declare-fun b!6782930 () Bool)

(declare-fun tp_is_empty!42463 () Bool)

(assert (=> b!6782930 (= e!4094479 tp_is_empty!42463)))

(declare-fun b!6782931 () Bool)

(declare-fun tp!1858316 () Bool)

(assert (=> b!6782931 (= e!4094483 (and tp_is_empty!42463 tp!1858316))))

(declare-fun b!6782932 () Bool)

(declare-fun res!2772571 () Bool)

(assert (=> b!6782932 (=> res!2772571 e!4094482)))

(assert (=> b!6782932 (= res!2772571 (or (not (= lt!2445185 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6782933 () Bool)

(declare-fun tp!1858319 () Bool)

(assert (=> b!6782933 (= e!4094470 tp!1858319)))

(declare-fun setIsEmpty!46403 () Bool)

(assert (=> setIsEmpty!46403 setRes!46403))

(assert (= (and start!656492 res!2772585) b!6782920))

(assert (= (and b!6782920 res!2772563) b!6782903))

(assert (= (and b!6782903 res!2772586) b!6782910))

(assert (= (and b!6782910 (not res!2772584)) b!6782904))

(assert (= (and b!6782904 (not res!2772579)) b!6782899))

(assert (= (and b!6782899 (not res!2772578)) b!6782921))

(assert (= (and b!6782921 (not res!2772577)) b!6782926))

(assert (= (and b!6782926 (not res!2772573)) b!6782919))

(assert (= (and b!6782919 (not res!2772562)) b!6782923))

(assert (= (and b!6782923 (not res!2772581)) b!6782906))

(assert (= (and b!6782923 (not res!2772565)) b!6782914))

(assert (= (and b!6782914 (not res!2772583)) b!6782928))

(assert (= (and b!6782928 (not res!2772576)) b!6782908))

(assert (= (and b!6782908 (not res!2772564)) b!6782918))

(assert (= (and b!6782918 (not res!2772572)) b!6782905))

(assert (= (and b!6782905 (not res!2772568)) b!6782932))

(assert (= (and b!6782932 (not res!2772571)) b!6782915))

(assert (= (and b!6782915 (not res!2772569)) b!6782911))

(assert (= (and b!6782911 (not res!2772570)) b!6782913))

(assert (= (and b!6782913 (not res!2772574)) b!6782916))

(assert (= (and b!6782916 (not res!2772575)) b!6782927))

(assert (= (and b!6782927 res!2772561) b!6782925))

(assert (= (and b!6782925 (not res!2772587)) b!6782922))

(assert (= (and b!6782922 res!2772567) b!6782929))

(assert (= (and b!6782927 (not res!2772580)) b!6782917))

(assert (= (and b!6782917 (not res!2772566)) b!6782902))

(assert (= (and b!6782902 (not res!2772582)) b!6782901))

(assert (= (and b!6782901 (not res!2772588)) b!6782898))

(assert (= (and start!656492 ((_ is ElementMatch!16605) r!7292)) b!6782930))

(assert (= (and start!656492 ((_ is Concat!25450) r!7292)) b!6782900))

(assert (= (and start!656492 ((_ is Star!16605) r!7292)) b!6782907))

(assert (= (and start!656492 ((_ is Union!16605) r!7292)) b!6782924))

(assert (= (and start!656492 condSetEmpty!46403) setIsEmpty!46403))

(assert (= (and start!656492 (not condSetEmpty!46403)) setNonEmpty!46403))

(assert (= setNonEmpty!46403 b!6782933))

(assert (= b!6782912 b!6782909))

(assert (= (and start!656492 ((_ is Cons!65992) zl!343)) b!6782912))

(assert (= (and start!656492 ((_ is Cons!65990) s!2326)) b!6782931))

(declare-fun m!7531320 () Bool)

(assert (=> b!6782911 m!7531320))

(declare-fun m!7531322 () Bool)

(assert (=> b!6782911 m!7531322))

(declare-fun m!7531324 () Bool)

(assert (=> b!6782911 m!7531324))

(declare-fun m!7531326 () Bool)

(assert (=> b!6782911 m!7531326))

(declare-fun m!7531328 () Bool)

(assert (=> b!6782911 m!7531328))

(declare-fun m!7531330 () Bool)

(assert (=> b!6782911 m!7531330))

(declare-fun m!7531332 () Bool)

(assert (=> b!6782911 m!7531332))

(declare-fun m!7531334 () Bool)

(assert (=> b!6782911 m!7531334))

(declare-fun m!7531336 () Bool)

(assert (=> b!6782911 m!7531336))

(declare-fun m!7531338 () Bool)

(assert (=> b!6782910 m!7531338))

(declare-fun m!7531340 () Bool)

(assert (=> b!6782910 m!7531340))

(declare-fun m!7531342 () Bool)

(assert (=> b!6782910 m!7531342))

(declare-fun m!7531344 () Bool)

(assert (=> b!6782922 m!7531344))

(declare-fun m!7531346 () Bool)

(assert (=> b!6782922 m!7531346))

(declare-fun m!7531348 () Bool)

(assert (=> start!656492 m!7531348))

(declare-fun m!7531350 () Bool)

(assert (=> b!6782904 m!7531350))

(declare-fun m!7531352 () Bool)

(assert (=> b!6782916 m!7531352))

(declare-fun m!7531354 () Bool)

(assert (=> b!6782905 m!7531354))

(declare-fun m!7531356 () Bool)

(assert (=> b!6782905 m!7531356))

(assert (=> b!6782905 m!7531356))

(declare-fun m!7531358 () Bool)

(assert (=> b!6782905 m!7531358))

(declare-fun m!7531360 () Bool)

(assert (=> setNonEmpty!46403 m!7531360))

(declare-fun m!7531362 () Bool)

(assert (=> b!6782903 m!7531362))

(declare-fun m!7531364 () Bool)

(assert (=> b!6782927 m!7531364))

(declare-fun m!7531366 () Bool)

(assert (=> b!6782927 m!7531366))

(declare-fun m!7531368 () Bool)

(assert (=> b!6782927 m!7531368))

(assert (=> b!6782929 m!7531344))

(declare-fun m!7531370 () Bool)

(assert (=> b!6782901 m!7531370))

(declare-fun m!7531372 () Bool)

(assert (=> b!6782908 m!7531372))

(declare-fun m!7531374 () Bool)

(assert (=> b!6782908 m!7531374))

(declare-fun m!7531376 () Bool)

(assert (=> b!6782908 m!7531376))

(declare-fun m!7531378 () Bool)

(assert (=> b!6782918 m!7531378))

(declare-fun m!7531380 () Bool)

(assert (=> b!6782918 m!7531380))

(declare-fun m!7531382 () Bool)

(assert (=> b!6782918 m!7531382))

(declare-fun m!7531384 () Bool)

(assert (=> b!6782918 m!7531384))

(declare-fun m!7531386 () Bool)

(assert (=> b!6782918 m!7531386))

(declare-fun m!7531388 () Bool)

(assert (=> b!6782928 m!7531388))

(declare-fun m!7531390 () Bool)

(assert (=> b!6782928 m!7531390))

(declare-fun m!7531392 () Bool)

(assert (=> b!6782928 m!7531392))

(declare-fun m!7531394 () Bool)

(assert (=> b!6782899 m!7531394))

(declare-fun m!7531396 () Bool)

(assert (=> b!6782926 m!7531396))

(assert (=> b!6782926 m!7531396))

(declare-fun m!7531398 () Bool)

(assert (=> b!6782926 m!7531398))

(declare-fun m!7531400 () Bool)

(assert (=> b!6782917 m!7531400))

(declare-fun m!7531402 () Bool)

(assert (=> b!6782917 m!7531402))

(assert (=> b!6782923 m!7531344))

(declare-fun m!7531404 () Bool)

(assert (=> b!6782923 m!7531404))

(declare-fun m!7531406 () Bool)

(assert (=> b!6782923 m!7531406))

(assert (=> b!6782923 m!7531344))

(declare-fun m!7531408 () Bool)

(assert (=> b!6782923 m!7531408))

(declare-fun m!7531410 () Bool)

(assert (=> b!6782923 m!7531410))

(declare-fun m!7531412 () Bool)

(assert (=> b!6782923 m!7531412))

(assert (=> b!6782923 m!7531346))

(declare-fun m!7531414 () Bool)

(assert (=> b!6782923 m!7531414))

(assert (=> b!6782923 m!7531344))

(declare-fun m!7531416 () Bool)

(assert (=> b!6782923 m!7531416))

(declare-fun m!7531418 () Bool)

(assert (=> b!6782898 m!7531418))

(declare-fun m!7531420 () Bool)

(assert (=> b!6782898 m!7531420))

(declare-fun m!7531422 () Bool)

(assert (=> b!6782898 m!7531422))

(declare-fun m!7531424 () Bool)

(assert (=> b!6782898 m!7531424))

(declare-fun m!7531426 () Bool)

(assert (=> b!6782898 m!7531426))

(declare-fun m!7531428 () Bool)

(assert (=> b!6782898 m!7531428))

(assert (=> b!6782898 m!7531426))

(declare-fun m!7531430 () Bool)

(assert (=> b!6782898 m!7531430))

(declare-fun m!7531432 () Bool)

(assert (=> b!6782898 m!7531432))

(declare-fun m!7531434 () Bool)

(assert (=> b!6782898 m!7531434))

(declare-fun m!7531436 () Bool)

(assert (=> b!6782898 m!7531436))

(declare-fun m!7531438 () Bool)

(assert (=> b!6782920 m!7531438))

(declare-fun m!7531440 () Bool)

(assert (=> b!6782912 m!7531440))

(declare-fun m!7531442 () Bool)

(assert (=> b!6782902 m!7531442))

(declare-fun m!7531444 () Bool)

(assert (=> b!6782913 m!7531444))

(declare-fun m!7531446 () Bool)

(assert (=> b!6782915 m!7531446))

(check-sat (not b!6782902) (not start!656492) (not b!6782912) (not b!6782913) (not b!6782920) (not b!6782927) tp_is_empty!42463 (not b!6782910) (not b!6782922) (not b!6782911) (not b!6782908) (not b!6782903) (not b!6782909) (not b!6782929) (not b!6782900) (not b!6782905) (not b!6782916) (not b!6782923) (not b!6782915) (not b!6782907) (not b!6782899) (not b!6782926) (not b!6782901) (not b!6782918) (not b!6782933) (not setNonEmpty!46403) (not b!6782924) (not b!6782917) (not b!6782898) (not b!6782904) (not b!6782931) (not b!6782928))
(check-sat)
(get-model)

(declare-fun d!2131036 () Bool)

(assert (=> d!2131036 (= (matchR!8788 (reg!16934 r!7292) (_1!36883 lt!2445168)) (matchZipper!2591 lt!2445190 (_1!36883 lt!2445168)))))

(declare-fun lt!2445205 () Unit!159901)

(declare-fun choose!50513 ((InoxSet Context!11978) List!66116 Regex!16605 List!66114) Unit!159901)

(assert (=> d!2131036 (= lt!2445205 (choose!50513 lt!2445190 lt!2445200 (reg!16934 r!7292) (_1!36883 lt!2445168)))))

(assert (=> d!2131036 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131036 (= (theoremZipperRegexEquiv!935 lt!2445190 lt!2445200 (reg!16934 r!7292) (_1!36883 lt!2445168)) lt!2445205)))

(declare-fun bs!1806620 () Bool)

(assert (= bs!1806620 d!2131036))

(assert (=> bs!1806620 m!7531442))

(assert (=> bs!1806620 m!7531434))

(declare-fun m!7531448 () Bool)

(assert (=> bs!1806620 m!7531448))

(declare-fun m!7531450 () Bool)

(assert (=> bs!1806620 m!7531450))

(assert (=> b!6782898 d!2131036))

(declare-fun d!2131038 () Bool)

(declare-fun c!1260148 () Bool)

(assert (=> d!2131038 (= c!1260148 (isEmpty!38354 (_1!36883 lt!2445168)))))

(declare-fun e!4094493 () Bool)

(assert (=> d!2131038 (= (matchZipper!2591 lt!2445190 (_1!36883 lt!2445168)) e!4094493)))

(declare-fun b!6782944 () Bool)

(declare-fun nullableZipper!2312 ((InoxSet Context!11978)) Bool)

(assert (=> b!6782944 (= e!4094493 (nullableZipper!2312 lt!2445190))))

(declare-fun b!6782945 () Bool)

(declare-fun head!13620 (List!66114) C!33480)

(declare-fun tail!12705 (List!66114) List!66114)

(assert (=> b!6782945 (= e!4094493 (matchZipper!2591 (derivationStepZipper!2549 lt!2445190 (head!13620 (_1!36883 lt!2445168))) (tail!12705 (_1!36883 lt!2445168))))))

(assert (= (and d!2131038 c!1260148) b!6782944))

(assert (= (and d!2131038 (not c!1260148)) b!6782945))

(declare-fun m!7531452 () Bool)

(assert (=> d!2131038 m!7531452))

(declare-fun m!7531454 () Bool)

(assert (=> b!6782944 m!7531454))

(declare-fun m!7531456 () Bool)

(assert (=> b!6782945 m!7531456))

(assert (=> b!6782945 m!7531456))

(declare-fun m!7531458 () Bool)

(assert (=> b!6782945 m!7531458))

(declare-fun m!7531460 () Bool)

(assert (=> b!6782945 m!7531460))

(assert (=> b!6782945 m!7531458))

(assert (=> b!6782945 m!7531460))

(declare-fun m!7531462 () Bool)

(assert (=> b!6782945 m!7531462))

(assert (=> b!6782898 d!2131038))

(declare-fun d!2131040 () Bool)

(declare-fun forall!15797 (List!66115 Int) Bool)

(assert (=> d!2131040 (forall!15797 (++!14760 lt!2445175 lt!2445201) lambda!381851)))

(declare-fun lt!2445208 () Unit!159901)

(declare-fun choose!50514 (List!66115 List!66115 Int) Unit!159901)

(assert (=> d!2131040 (= lt!2445208 (choose!50514 lt!2445175 lt!2445201 lambda!381851))))

(assert (=> d!2131040 (forall!15797 lt!2445175 lambda!381851)))

(assert (=> d!2131040 (= (lemmaConcatPreservesForall!438 lt!2445175 lt!2445201 lambda!381851) lt!2445208)))

(declare-fun bs!1806621 () Bool)

(assert (= bs!1806621 d!2131040))

(assert (=> bs!1806621 m!7531424))

(assert (=> bs!1806621 m!7531424))

(declare-fun m!7531464 () Bool)

(assert (=> bs!1806621 m!7531464))

(declare-fun m!7531466 () Bool)

(assert (=> bs!1806621 m!7531466))

(declare-fun m!7531468 () Bool)

(assert (=> bs!1806621 m!7531468))

(assert (=> b!6782898 d!2131040))

(declare-fun d!2131042 () Bool)

(declare-fun c!1260149 () Bool)

(assert (=> d!2131042 (= c!1260149 (isEmpty!38354 s!2326))))

(declare-fun e!4094494 () Bool)

(assert (=> d!2131042 (= (matchZipper!2591 z!1189 s!2326) e!4094494)))

(declare-fun b!6782946 () Bool)

(assert (=> b!6782946 (= e!4094494 (nullableZipper!2312 z!1189))))

(declare-fun b!6782947 () Bool)

(assert (=> b!6782947 (= e!4094494 (matchZipper!2591 (derivationStepZipper!2549 z!1189 (head!13620 s!2326)) (tail!12705 s!2326)))))

(assert (= (and d!2131042 c!1260149) b!6782946))

(assert (= (and d!2131042 (not c!1260149)) b!6782947))

(assert (=> d!2131042 m!7531404))

(declare-fun m!7531470 () Bool)

(assert (=> b!6782946 m!7531470))

(declare-fun m!7531472 () Bool)

(assert (=> b!6782947 m!7531472))

(assert (=> b!6782947 m!7531472))

(declare-fun m!7531474 () Bool)

(assert (=> b!6782947 m!7531474))

(declare-fun m!7531476 () Bool)

(assert (=> b!6782947 m!7531476))

(assert (=> b!6782947 m!7531474))

(assert (=> b!6782947 m!7531476))

(declare-fun m!7531478 () Bool)

(assert (=> b!6782947 m!7531478))

(assert (=> b!6782898 d!2131042))

(declare-fun d!2131044 () Bool)

(declare-fun c!1260150 () Bool)

(assert (=> d!2131044 (= c!1260150 (isEmpty!38354 (_2!36883 lt!2445168)))))

(declare-fun e!4094495 () Bool)

(assert (=> d!2131044 (= (matchZipper!2591 lt!2445172 (_2!36883 lt!2445168)) e!4094495)))

(declare-fun b!6782948 () Bool)

(assert (=> b!6782948 (= e!4094495 (nullableZipper!2312 lt!2445172))))

(declare-fun b!6782949 () Bool)

(assert (=> b!6782949 (= e!4094495 (matchZipper!2591 (derivationStepZipper!2549 lt!2445172 (head!13620 (_2!36883 lt!2445168))) (tail!12705 (_2!36883 lt!2445168))))))

(assert (= (and d!2131044 c!1260150) b!6782948))

(assert (= (and d!2131044 (not c!1260150)) b!6782949))

(declare-fun m!7531480 () Bool)

(assert (=> d!2131044 m!7531480))

(declare-fun m!7531482 () Bool)

(assert (=> b!6782948 m!7531482))

(declare-fun m!7531484 () Bool)

(assert (=> b!6782949 m!7531484))

(assert (=> b!6782949 m!7531484))

(declare-fun m!7531486 () Bool)

(assert (=> b!6782949 m!7531486))

(declare-fun m!7531488 () Bool)

(assert (=> b!6782949 m!7531488))

(assert (=> b!6782949 m!7531486))

(assert (=> b!6782949 m!7531488))

(declare-fun m!7531490 () Bool)

(assert (=> b!6782949 m!7531490))

(assert (=> b!6782898 d!2131044))

(declare-fun b!6782958 () Bool)

(declare-fun e!4094501 () List!66115)

(assert (=> b!6782958 (= e!4094501 lt!2445201)))

(declare-fun b!6782959 () Bool)

(assert (=> b!6782959 (= e!4094501 (Cons!65991 (h!72439 lt!2445175) (++!14760 (t!379832 lt!2445175) lt!2445201)))))

(declare-fun d!2131046 () Bool)

(declare-fun e!4094500 () Bool)

(assert (=> d!2131046 e!4094500))

(declare-fun res!2772593 () Bool)

(assert (=> d!2131046 (=> (not res!2772593) (not e!4094500))))

(declare-fun lt!2445214 () List!66115)

(declare-fun content!12855 (List!66115) (InoxSet Regex!16605))

(assert (=> d!2131046 (= res!2772593 (= (content!12855 lt!2445214) ((_ map or) (content!12855 lt!2445175) (content!12855 lt!2445201))))))

(assert (=> d!2131046 (= lt!2445214 e!4094501)))

(declare-fun c!1260153 () Bool)

(assert (=> d!2131046 (= c!1260153 ((_ is Nil!65991) lt!2445175))))

(assert (=> d!2131046 (= (++!14760 lt!2445175 lt!2445201) lt!2445214)))

(declare-fun b!6782961 () Bool)

(assert (=> b!6782961 (= e!4094500 (or (not (= lt!2445201 Nil!65991)) (= lt!2445214 lt!2445175)))))

(declare-fun b!6782960 () Bool)

(declare-fun res!2772594 () Bool)

(assert (=> b!6782960 (=> (not res!2772594) (not e!4094500))))

(declare-fun size!40639 (List!66115) Int)

(assert (=> b!6782960 (= res!2772594 (= (size!40639 lt!2445214) (+ (size!40639 lt!2445175) (size!40639 lt!2445201))))))

(assert (= (and d!2131046 c!1260153) b!6782958))

(assert (= (and d!2131046 (not c!1260153)) b!6782959))

(assert (= (and d!2131046 res!2772593) b!6782960))

(assert (= (and b!6782960 res!2772594) b!6782961))

(declare-fun m!7531498 () Bool)

(assert (=> b!6782959 m!7531498))

(declare-fun m!7531500 () Bool)

(assert (=> d!2131046 m!7531500))

(declare-fun m!7531502 () Bool)

(assert (=> d!2131046 m!7531502))

(declare-fun m!7531504 () Bool)

(assert (=> d!2131046 m!7531504))

(declare-fun m!7531506 () Bool)

(assert (=> b!6782960 m!7531506))

(declare-fun m!7531508 () Bool)

(assert (=> b!6782960 m!7531508))

(declare-fun m!7531510 () Bool)

(assert (=> b!6782960 m!7531510))

(assert (=> b!6782898 d!2131046))

(declare-fun d!2131054 () Bool)

(assert (=> d!2131054 (= (matchR!8788 r!7292 (_2!36883 lt!2445168)) (matchZipper!2591 lt!2445172 (_2!36883 lt!2445168)))))

(declare-fun lt!2445215 () Unit!159901)

(assert (=> d!2131054 (= lt!2445215 (choose!50513 lt!2445172 lt!2445171 r!7292 (_2!36883 lt!2445168)))))

(assert (=> d!2131054 (validRegex!8341 r!7292)))

(assert (=> d!2131054 (= (theoremZipperRegexEquiv!935 lt!2445172 lt!2445171 r!7292 (_2!36883 lt!2445168)) lt!2445215)))

(declare-fun bs!1806623 () Bool)

(assert (= bs!1806623 d!2131054))

(assert (=> bs!1806623 m!7531370))

(assert (=> bs!1806623 m!7531430))

(declare-fun m!7531512 () Bool)

(assert (=> bs!1806623 m!7531512))

(assert (=> bs!1806623 m!7531348))

(assert (=> b!6782898 d!2131054))

(declare-fun d!2131056 () Bool)

(declare-fun c!1260154 () Bool)

(assert (=> d!2131056 (= c!1260154 (isEmpty!38354 lt!2445194))))

(declare-fun e!4094502 () Bool)

(assert (=> d!2131056 (= (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) lt!2445194) e!4094502)))

(declare-fun b!6782962 () Bool)

(assert (=> b!6782962 (= e!4094502 (nullableZipper!2312 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true)))))

(declare-fun b!6782963 () Bool)

(assert (=> b!6782963 (= e!4094502 (matchZipper!2591 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) (head!13620 lt!2445194)) (tail!12705 lt!2445194)))))

(assert (= (and d!2131056 c!1260154) b!6782962))

(assert (= (and d!2131056 (not c!1260154)) b!6782963))

(declare-fun m!7531514 () Bool)

(assert (=> d!2131056 m!7531514))

(assert (=> b!6782962 m!7531426))

(declare-fun m!7531516 () Bool)

(assert (=> b!6782962 m!7531516))

(declare-fun m!7531518 () Bool)

(assert (=> b!6782963 m!7531518))

(assert (=> b!6782963 m!7531426))

(assert (=> b!6782963 m!7531518))

(declare-fun m!7531520 () Bool)

(assert (=> b!6782963 m!7531520))

(declare-fun m!7531522 () Bool)

(assert (=> b!6782963 m!7531522))

(assert (=> b!6782963 m!7531520))

(assert (=> b!6782963 m!7531522))

(declare-fun m!7531524 () Bool)

(assert (=> b!6782963 m!7531524))

(assert (=> b!6782898 d!2131056))

(declare-fun bs!1806628 () Bool)

(declare-fun d!2131058 () Bool)

(assert (= bs!1806628 (and d!2131058 b!6782898)))

(declare-fun lambda!381857 () Int)

(assert (=> bs!1806628 (= lambda!381857 lambda!381851)))

(assert (=> d!2131058 (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187))) true) (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))

(declare-fun lt!2445233 () Unit!159901)

(assert (=> d!2131058 (= lt!2445233 (lemmaConcatPreservesForall!438 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187) lambda!381857))))

(declare-fun lt!2445232 () Unit!159901)

(declare-fun choose!50515 (Context!11978 Context!11978 List!66114 List!66114) Unit!159901)

(assert (=> d!2131058 (= lt!2445232 (choose!50515 lt!2445169 lt!2445187 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))

(assert (=> d!2131058 (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true) (_1!36883 lt!2445168))))

(assert (=> d!2131058 (= (lemmaConcatenateContextMatchesConcatOfStrings!246 lt!2445169 lt!2445187 (_1!36883 lt!2445168) (_2!36883 lt!2445168)) lt!2445232)))

(declare-fun bs!1806629 () Bool)

(assert (= bs!1806629 d!2131058))

(declare-fun m!7531582 () Bool)

(assert (=> bs!1806629 m!7531582))

(declare-fun m!7531584 () Bool)

(assert (=> bs!1806629 m!7531584))

(declare-fun m!7531588 () Bool)

(assert (=> bs!1806629 m!7531588))

(assert (=> bs!1806629 m!7531588))

(assert (=> bs!1806629 m!7531400))

(declare-fun m!7531600 () Bool)

(assert (=> bs!1806629 m!7531600))

(assert (=> bs!1806629 m!7531400))

(declare-fun m!7531602 () Bool)

(assert (=> bs!1806629 m!7531602))

(assert (=> bs!1806629 m!7531332))

(declare-fun m!7531606 () Bool)

(assert (=> bs!1806629 m!7531606))

(assert (=> bs!1806629 m!7531332))

(assert (=> b!6782898 d!2131058))

(declare-fun b!6783060 () Bool)

(declare-fun e!4094555 () (InoxSet Context!11978))

(declare-fun call!615499 () (InoxSet Context!11978))

(assert (=> b!6783060 (= e!4094555 call!615499)))

(declare-fun b!6783061 () Bool)

(declare-fun e!4094558 () (InoxSet Context!11978))

(assert (=> b!6783061 (= e!4094558 (store ((as const (Array Context!11978 Bool)) false) lt!2445187 true))))

(declare-fun bm!615494 () Bool)

(declare-fun call!615501 () (InoxSet Context!11978))

(assert (=> bm!615494 (= call!615499 call!615501)))

(declare-fun b!6783062 () Bool)

(declare-fun e!4094557 () (InoxSet Context!11978))

(assert (=> b!6783062 (= e!4094557 e!4094555)))

(declare-fun c!1260198 () Bool)

(assert (=> b!6783062 (= c!1260198 ((_ is Concat!25450) (reg!16934 r!7292)))))

(declare-fun b!6783063 () Bool)

(declare-fun c!1260201 () Bool)

(assert (=> b!6783063 (= c!1260201 ((_ is Star!16605) (reg!16934 r!7292)))))

(declare-fun e!4094556 () (InoxSet Context!11978))

(assert (=> b!6783063 (= e!4094555 e!4094556)))

(declare-fun bm!615495 () Bool)

(declare-fun call!615500 () List!66115)

(declare-fun call!615504 () List!66115)

(assert (=> bm!615495 (= call!615500 call!615504)))

(declare-fun bm!615496 () Bool)

(declare-fun call!615503 () (InoxSet Context!11978))

(assert (=> bm!615496 (= call!615501 call!615503)))

(declare-fun b!6783064 () Bool)

(declare-fun call!615502 () (InoxSet Context!11978))

(assert (=> b!6783064 (= e!4094557 ((_ map or) call!615502 call!615501))))

(declare-fun b!6783065 () Bool)

(declare-fun e!4094554 () Bool)

(declare-fun nullable!6584 (Regex!16605) Bool)

(assert (=> b!6783065 (= e!4094554 (nullable!6584 (regOne!33722 (reg!16934 r!7292))))))

(declare-fun bm!615497 () Bool)

(declare-fun c!1260199 () Bool)

(declare-fun $colon$colon!2414 (List!66115 Regex!16605) List!66115)

(assert (=> bm!615497 (= call!615504 ($colon$colon!2414 (exprs!6489 lt!2445187) (ite (or c!1260199 c!1260198) (regTwo!33722 (reg!16934 r!7292)) (reg!16934 r!7292))))))

(declare-fun b!6783066 () Bool)

(assert (=> b!6783066 (= c!1260199 e!4094554)))

(declare-fun res!2772609 () Bool)

(assert (=> b!6783066 (=> (not res!2772609) (not e!4094554))))

(assert (=> b!6783066 (= res!2772609 ((_ is Concat!25450) (reg!16934 r!7292)))))

(declare-fun e!4094559 () (InoxSet Context!11978))

(assert (=> b!6783066 (= e!4094559 e!4094557)))

(declare-fun c!1260200 () Bool)

(declare-fun bm!615498 () Bool)

(assert (=> bm!615498 (= call!615503 (derivationStepZipperDown!1833 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))) (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500)) (h!72438 s!2326)))))

(declare-fun bm!615499 () Bool)

(assert (=> bm!615499 (= call!615502 (derivationStepZipperDown!1833 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))) (ite c!1260200 lt!2445187 (Context!11979 call!615504)) (h!72438 s!2326)))))

(declare-fun b!6783067 () Bool)

(assert (=> b!6783067 (= e!4094558 e!4094559)))

(assert (=> b!6783067 (= c!1260200 ((_ is Union!16605) (reg!16934 r!7292)))))

(declare-fun d!2131076 () Bool)

(declare-fun c!1260197 () Bool)

(assert (=> d!2131076 (= c!1260197 (and ((_ is ElementMatch!16605) (reg!16934 r!7292)) (= (c!1260145 (reg!16934 r!7292)) (h!72438 s!2326))))))

(assert (=> d!2131076 (= (derivationStepZipperDown!1833 (reg!16934 r!7292) lt!2445187 (h!72438 s!2326)) e!4094558)))

(declare-fun b!6783068 () Bool)

(assert (=> b!6783068 (= e!4094559 ((_ map or) call!615502 call!615503))))

(declare-fun b!6783069 () Bool)

(assert (=> b!6783069 (= e!4094556 call!615499)))

(declare-fun b!6783070 () Bool)

(assert (=> b!6783070 (= e!4094556 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131076 c!1260197) b!6783061))

(assert (= (and d!2131076 (not c!1260197)) b!6783067))

(assert (= (and b!6783067 c!1260200) b!6783068))

(assert (= (and b!6783067 (not c!1260200)) b!6783066))

(assert (= (and b!6783066 res!2772609) b!6783065))

(assert (= (and b!6783066 c!1260199) b!6783064))

(assert (= (and b!6783066 (not c!1260199)) b!6783062))

(assert (= (and b!6783062 c!1260198) b!6783060))

(assert (= (and b!6783062 (not c!1260198)) b!6783063))

(assert (= (and b!6783063 c!1260201) b!6783069))

(assert (= (and b!6783063 (not c!1260201)) b!6783070))

(assert (= (or b!6783060 b!6783069) bm!615495))

(assert (= (or b!6783060 b!6783069) bm!615494))

(assert (= (or b!6783064 bm!615495) bm!615497))

(assert (= (or b!6783064 bm!615494) bm!615496))

(assert (= (or b!6783068 bm!615496) bm!615498))

(assert (= (or b!6783068 b!6783064) bm!615499))

(assert (=> b!6783061 m!7531324))

(declare-fun m!7531646 () Bool)

(assert (=> b!6783065 m!7531646))

(declare-fun m!7531648 () Bool)

(assert (=> bm!615498 m!7531648))

(declare-fun m!7531650 () Bool)

(assert (=> bm!615497 m!7531650))

(declare-fun m!7531652 () Bool)

(assert (=> bm!615499 m!7531652))

(assert (=> b!6782918 d!2131076))

(declare-fun d!2131088 () Bool)

(declare-fun choose!50517 ((InoxSet Context!11978) Int) (InoxSet Context!11978))

(assert (=> d!2131088 (= (flatMap!2086 lt!2445167 lambda!381850) (choose!50517 lt!2445167 lambda!381850))))

(declare-fun bs!1806634 () Bool)

(assert (= bs!1806634 d!2131088))

(declare-fun m!7531654 () Bool)

(assert (=> bs!1806634 m!7531654))

(assert (=> b!6782918 d!2131088))

(declare-fun b!6783137 () Bool)

(declare-fun e!4094595 () (InoxSet Context!11978))

(assert (=> b!6783137 (= e!4094595 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615506 () Bool)

(declare-fun call!615511 () (InoxSet Context!11978))

(assert (=> bm!615506 (= call!615511 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445202)) (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (h!72438 s!2326)))))

(declare-fun b!6783138 () Bool)

(declare-fun e!4094596 () Bool)

(assert (=> b!6783138 (= e!4094596 (nullable!6584 (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun d!2131090 () Bool)

(declare-fun c!1260219 () Bool)

(assert (=> d!2131090 (= c!1260219 e!4094596)))

(declare-fun res!2772644 () Bool)

(assert (=> d!2131090 (=> (not res!2772644) (not e!4094596))))

(assert (=> d!2131090 (= res!2772644 ((_ is Cons!65991) (exprs!6489 lt!2445202)))))

(declare-fun e!4094594 () (InoxSet Context!11978))

(assert (=> d!2131090 (= (derivationStepZipperUp!1759 lt!2445202 (h!72438 s!2326)) e!4094594)))

(declare-fun b!6783139 () Bool)

(assert (=> b!6783139 (= e!4094594 ((_ map or) call!615511 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (h!72438 s!2326))))))

(declare-fun b!6783140 () Bool)

(assert (=> b!6783140 (= e!4094595 call!615511)))

(declare-fun b!6783141 () Bool)

(assert (=> b!6783141 (= e!4094594 e!4094595)))

(declare-fun c!1260218 () Bool)

(assert (=> b!6783141 (= c!1260218 ((_ is Cons!65991) (exprs!6489 lt!2445202)))))

(assert (= (and d!2131090 res!2772644) b!6783138))

(assert (= (and d!2131090 c!1260219) b!6783139))

(assert (= (and d!2131090 (not c!1260219)) b!6783141))

(assert (= (and b!6783141 c!1260218) b!6783140))

(assert (= (and b!6783141 (not c!1260218)) b!6783137))

(assert (= (or b!6783139 b!6783140) bm!615506))

(declare-fun m!7531676 () Bool)

(assert (=> bm!615506 m!7531676))

(declare-fun m!7531678 () Bool)

(assert (=> b!6783138 m!7531678))

(declare-fun m!7531680 () Bool)

(assert (=> b!6783139 m!7531680))

(assert (=> b!6782918 d!2131090))

(declare-fun d!2131100 () Bool)

(declare-fun dynLambda!26333 (Int Context!11978) (InoxSet Context!11978))

(assert (=> d!2131100 (= (flatMap!2086 lt!2445167 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445202))))

(declare-fun lt!2445246 () Unit!159901)

(declare-fun choose!50518 ((InoxSet Context!11978) Context!11978 Int) Unit!159901)

(assert (=> d!2131100 (= lt!2445246 (choose!50518 lt!2445167 lt!2445202 lambda!381850))))

(assert (=> d!2131100 (= lt!2445167 (store ((as const (Array Context!11978 Bool)) false) lt!2445202 true))))

(assert (=> d!2131100 (= (lemmaFlatMapOnSingletonSet!1612 lt!2445167 lt!2445202 lambda!381850) lt!2445246)))

(declare-fun b_lambda!255419 () Bool)

(assert (=> (not b_lambda!255419) (not d!2131100)))

(declare-fun bs!1806637 () Bool)

(assert (= bs!1806637 d!2131100))

(assert (=> bs!1806637 m!7531382))

(declare-fun m!7531682 () Bool)

(assert (=> bs!1806637 m!7531682))

(declare-fun m!7531684 () Bool)

(assert (=> bs!1806637 m!7531684))

(assert (=> bs!1806637 m!7531386))

(assert (=> b!6782918 d!2131100))

(declare-fun bs!1806641 () Bool)

(declare-fun d!2131102 () Bool)

(assert (= bs!1806641 (and d!2131102 b!6782898)))

(declare-fun lambda!381869 () Int)

(assert (=> bs!1806641 (= lambda!381869 lambda!381851)))

(declare-fun bs!1806643 () Bool)

(assert (= bs!1806643 (and d!2131102 d!2131058)))

(assert (=> bs!1806643 (= lambda!381869 lambda!381857)))

(declare-fun b!6783219 () Bool)

(declare-fun e!4094646 () Bool)

(declare-fun lt!2445250 () Regex!16605)

(declare-fun head!13621 (List!66115) Regex!16605)

(assert (=> b!6783219 (= e!4094646 (= lt!2445250 (head!13621 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6783220 () Bool)

(declare-fun e!4094645 () Bool)

(assert (=> b!6783220 (= e!4094645 e!4094646)))

(declare-fun c!1260244 () Bool)

(declare-fun isEmpty!38355 (List!66115) Bool)

(declare-fun tail!12706 (List!66115) List!66115)

(assert (=> b!6783220 (= c!1260244 (isEmpty!38355 (tail!12706 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6783222 () Bool)

(declare-fun isConcat!1485 (Regex!16605) Bool)

(assert (=> b!6783222 (= e!4094646 (isConcat!1485 lt!2445250))))

(declare-fun b!6783223 () Bool)

(declare-fun e!4094641 () Regex!16605)

(assert (=> b!6783223 (= e!4094641 EmptyExpr!16605)))

(declare-fun b!6783224 () Bool)

(declare-fun e!4094644 () Bool)

(assert (=> b!6783224 (= e!4094644 e!4094645)))

(declare-fun c!1260246 () Bool)

(assert (=> b!6783224 (= c!1260246 (isEmpty!38355 (exprs!6489 (h!72440 zl!343))))))

(declare-fun b!6783225 () Bool)

(declare-fun e!4094642 () Bool)

(assert (=> b!6783225 (= e!4094642 (isEmpty!38355 (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6783226 () Bool)

(declare-fun e!4094643 () Regex!16605)

(assert (=> b!6783226 (= e!4094643 (h!72439 (exprs!6489 (h!72440 zl!343))))))

(assert (=> d!2131102 e!4094644))

(declare-fun res!2772676 () Bool)

(assert (=> d!2131102 (=> (not res!2772676) (not e!4094644))))

(assert (=> d!2131102 (= res!2772676 (validRegex!8341 lt!2445250))))

(assert (=> d!2131102 (= lt!2445250 e!4094643)))

(declare-fun c!1260243 () Bool)

(assert (=> d!2131102 (= c!1260243 e!4094642)))

(declare-fun res!2772677 () Bool)

(assert (=> d!2131102 (=> (not res!2772677) (not e!4094642))))

(assert (=> d!2131102 (= res!2772677 ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343))))))

(assert (=> d!2131102 (forall!15797 (exprs!6489 (h!72440 zl!343)) lambda!381869)))

(assert (=> d!2131102 (= (generalisedConcat!2202 (exprs!6489 (h!72440 zl!343))) lt!2445250)))

(declare-fun b!6783221 () Bool)

(declare-fun isEmptyExpr!1962 (Regex!16605) Bool)

(assert (=> b!6783221 (= e!4094645 (isEmptyExpr!1962 lt!2445250))))

(declare-fun b!6783227 () Bool)

(assert (=> b!6783227 (= e!4094643 e!4094641)))

(declare-fun c!1260245 () Bool)

(assert (=> b!6783227 (= c!1260245 ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343))))))

(declare-fun b!6783228 () Bool)

(assert (=> b!6783228 (= e!4094641 (Concat!25450 (h!72439 (exprs!6489 (h!72440 zl!343))) (generalisedConcat!2202 (t!379832 (exprs!6489 (h!72440 zl!343))))))))

(assert (= (and d!2131102 res!2772677) b!6783225))

(assert (= (and d!2131102 c!1260243) b!6783226))

(assert (= (and d!2131102 (not c!1260243)) b!6783227))

(assert (= (and b!6783227 c!1260245) b!6783228))

(assert (= (and b!6783227 (not c!1260245)) b!6783223))

(assert (= (and d!2131102 res!2772676) b!6783224))

(assert (= (and b!6783224 c!1260246) b!6783221))

(assert (= (and b!6783224 (not c!1260246)) b!6783220))

(assert (= (and b!6783220 c!1260244) b!6783219))

(assert (= (and b!6783220 (not c!1260244)) b!6783222))

(declare-fun m!7531700 () Bool)

(assert (=> b!6783228 m!7531700))

(declare-fun m!7531704 () Bool)

(assert (=> d!2131102 m!7531704))

(declare-fun m!7531706 () Bool)

(assert (=> d!2131102 m!7531706))

(declare-fun m!7531710 () Bool)

(assert (=> b!6783222 m!7531710))

(declare-fun m!7531714 () Bool)

(assert (=> b!6783220 m!7531714))

(assert (=> b!6783220 m!7531714))

(declare-fun m!7531716 () Bool)

(assert (=> b!6783220 m!7531716))

(declare-fun m!7531720 () Bool)

(assert (=> b!6783225 m!7531720))

(declare-fun m!7531722 () Bool)

(assert (=> b!6783224 m!7531722))

(declare-fun m!7531724 () Bool)

(assert (=> b!6783219 m!7531724))

(declare-fun m!7531726 () Bool)

(assert (=> b!6783221 m!7531726))

(assert (=> b!6782899 d!2131102))

(declare-fun d!2131112 () Bool)

(declare-fun e!4094658 () Bool)

(assert (=> d!2131112 e!4094658))

(declare-fun res!2772682 () Bool)

(assert (=> d!2131112 (=> (not res!2772682) (not e!4094658))))

(declare-fun lt!2445259 () List!66116)

(declare-fun noDuplicate!2389 (List!66116) Bool)

(assert (=> d!2131112 (= res!2772682 (noDuplicate!2389 lt!2445259))))

(declare-fun choose!50519 ((InoxSet Context!11978)) List!66116)

(assert (=> d!2131112 (= lt!2445259 (choose!50519 z!1189))))

(assert (=> d!2131112 (= (toList!10389 z!1189) lt!2445259)))

(declare-fun b!6783247 () Bool)

(declare-fun content!12856 (List!66116) (InoxSet Context!11978))

(assert (=> b!6783247 (= e!4094658 (= (content!12856 lt!2445259) z!1189))))

(assert (= (and d!2131112 res!2772682) b!6783247))

(declare-fun m!7531744 () Bool)

(assert (=> d!2131112 m!7531744))

(declare-fun m!7531746 () Bool)

(assert (=> d!2131112 m!7531746))

(declare-fun m!7531748 () Bool)

(assert (=> b!6783247 m!7531748))

(assert (=> b!6782920 d!2131112))

(declare-fun b!6783288 () Bool)

(declare-fun e!4094683 () Bool)

(declare-fun derivativeStep!5269 (Regex!16605 C!33480) Regex!16605)

(assert (=> b!6783288 (= e!4094683 (matchR!8788 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))) (tail!12705 (_2!36883 lt!2445168))))))

(declare-fun b!6783289 () Bool)

(assert (=> b!6783289 (= e!4094683 (nullable!6584 r!7292))))

(declare-fun b!6783290 () Bool)

(declare-fun e!4094679 () Bool)

(declare-fun lt!2445267 () Bool)

(assert (=> b!6783290 (= e!4094679 (not lt!2445267))))

(declare-fun b!6783291 () Bool)

(declare-fun e!4094680 () Bool)

(assert (=> b!6783291 (= e!4094680 e!4094679)))

(declare-fun c!1260262 () Bool)

(assert (=> b!6783291 (= c!1260262 ((_ is EmptyLang!16605) r!7292))))

(declare-fun b!6783292 () Bool)

(declare-fun res!2772715 () Bool)

(declare-fun e!4094681 () Bool)

(assert (=> b!6783292 (=> (not res!2772715) (not e!4094681))))

(declare-fun call!615528 () Bool)

(assert (=> b!6783292 (= res!2772715 (not call!615528))))

(declare-fun b!6783293 () Bool)

(declare-fun res!2772714 () Bool)

(declare-fun e!4094682 () Bool)

(assert (=> b!6783293 (=> res!2772714 e!4094682)))

(assert (=> b!6783293 (= res!2772714 e!4094681)))

(declare-fun res!2772718 () Bool)

(assert (=> b!6783293 (=> (not res!2772718) (not e!4094681))))

(assert (=> b!6783293 (= res!2772718 lt!2445267)))

(declare-fun b!6783294 () Bool)

(assert (=> b!6783294 (= e!4094680 (= lt!2445267 call!615528))))

(declare-fun b!6783295 () Bool)

(declare-fun e!4094685 () Bool)

(declare-fun e!4094684 () Bool)

(assert (=> b!6783295 (= e!4094685 e!4094684)))

(declare-fun res!2772713 () Bool)

(assert (=> b!6783295 (=> res!2772713 e!4094684)))

(assert (=> b!6783295 (= res!2772713 call!615528)))

(declare-fun b!6783296 () Bool)

(declare-fun res!2772716 () Bool)

(assert (=> b!6783296 (=> res!2772716 e!4094682)))

(assert (=> b!6783296 (= res!2772716 (not ((_ is ElementMatch!16605) r!7292)))))

(assert (=> b!6783296 (= e!4094679 e!4094682)))

(declare-fun b!6783297 () Bool)

(assert (=> b!6783297 (= e!4094684 (not (= (head!13620 (_2!36883 lt!2445168)) (c!1260145 r!7292))))))

(declare-fun b!6783298 () Bool)

(assert (=> b!6783298 (= e!4094681 (= (head!13620 (_2!36883 lt!2445168)) (c!1260145 r!7292)))))

(declare-fun b!6783299 () Bool)

(assert (=> b!6783299 (= e!4094682 e!4094685)))

(declare-fun res!2772717 () Bool)

(assert (=> b!6783299 (=> (not res!2772717) (not e!4094685))))

(assert (=> b!6783299 (= res!2772717 (not lt!2445267))))

(declare-fun bm!615523 () Bool)

(assert (=> bm!615523 (= call!615528 (isEmpty!38354 (_2!36883 lt!2445168)))))

(declare-fun d!2131124 () Bool)

(assert (=> d!2131124 e!4094680))

(declare-fun c!1260260 () Bool)

(assert (=> d!2131124 (= c!1260260 ((_ is EmptyExpr!16605) r!7292))))

(assert (=> d!2131124 (= lt!2445267 e!4094683)))

(declare-fun c!1260261 () Bool)

(assert (=> d!2131124 (= c!1260261 (isEmpty!38354 (_2!36883 lt!2445168)))))

(assert (=> d!2131124 (validRegex!8341 r!7292)))

(assert (=> d!2131124 (= (matchR!8788 r!7292 (_2!36883 lt!2445168)) lt!2445267)))

(declare-fun b!6783300 () Bool)

(declare-fun res!2772711 () Bool)

(assert (=> b!6783300 (=> res!2772711 e!4094684)))

(assert (=> b!6783300 (= res!2772711 (not (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168)))))))

(declare-fun b!6783301 () Bool)

(declare-fun res!2772712 () Bool)

(assert (=> b!6783301 (=> (not res!2772712) (not e!4094681))))

(assert (=> b!6783301 (= res!2772712 (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168))))))

(assert (= (and d!2131124 c!1260261) b!6783289))

(assert (= (and d!2131124 (not c!1260261)) b!6783288))

(assert (= (and d!2131124 c!1260260) b!6783294))

(assert (= (and d!2131124 (not c!1260260)) b!6783291))

(assert (= (and b!6783291 c!1260262) b!6783290))

(assert (= (and b!6783291 (not c!1260262)) b!6783296))

(assert (= (and b!6783296 (not res!2772716)) b!6783293))

(assert (= (and b!6783293 res!2772718) b!6783292))

(assert (= (and b!6783292 res!2772715) b!6783301))

(assert (= (and b!6783301 res!2772712) b!6783298))

(assert (= (and b!6783293 (not res!2772714)) b!6783299))

(assert (= (and b!6783299 res!2772717) b!6783295))

(assert (= (and b!6783295 (not res!2772713)) b!6783300))

(assert (= (and b!6783300 (not res!2772711)) b!6783297))

(assert (= (or b!6783294 b!6783292 b!6783295) bm!615523))

(assert (=> b!6783301 m!7531488))

(assert (=> b!6783301 m!7531488))

(declare-fun m!7531756 () Bool)

(assert (=> b!6783301 m!7531756))

(assert (=> b!6783297 m!7531484))

(assert (=> b!6783300 m!7531488))

(assert (=> b!6783300 m!7531488))

(assert (=> b!6783300 m!7531756))

(assert (=> b!6783288 m!7531484))

(assert (=> b!6783288 m!7531484))

(declare-fun m!7531758 () Bool)

(assert (=> b!6783288 m!7531758))

(assert (=> b!6783288 m!7531488))

(assert (=> b!6783288 m!7531758))

(assert (=> b!6783288 m!7531488))

(declare-fun m!7531760 () Bool)

(assert (=> b!6783288 m!7531760))

(assert (=> d!2131124 m!7531480))

(assert (=> d!2131124 m!7531348))

(declare-fun m!7531762 () Bool)

(assert (=> b!6783289 m!7531762))

(assert (=> bm!615523 m!7531480))

(assert (=> b!6783298 m!7531484))

(assert (=> b!6782901 d!2131124))

(declare-fun b!6783308 () Bool)

(declare-fun e!4094692 () Bool)

(assert (=> b!6783308 (= e!4094692 (matchR!8788 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))) (tail!12705 (_1!36883 lt!2445168))))))

(declare-fun b!6783309 () Bool)

(assert (=> b!6783309 (= e!4094692 (nullable!6584 (reg!16934 r!7292)))))

(declare-fun b!6783310 () Bool)

(declare-fun e!4094688 () Bool)

(declare-fun lt!2445268 () Bool)

(assert (=> b!6783310 (= e!4094688 (not lt!2445268))))

(declare-fun b!6783311 () Bool)

(declare-fun e!4094689 () Bool)

(assert (=> b!6783311 (= e!4094689 e!4094688)))

(declare-fun c!1260265 () Bool)

(assert (=> b!6783311 (= c!1260265 ((_ is EmptyLang!16605) (reg!16934 r!7292)))))

(declare-fun b!6783312 () Bool)

(declare-fun res!2772729 () Bool)

(declare-fun e!4094690 () Bool)

(assert (=> b!6783312 (=> (not res!2772729) (not e!4094690))))

(declare-fun call!615529 () Bool)

(assert (=> b!6783312 (= res!2772729 (not call!615529))))

(declare-fun b!6783313 () Bool)

(declare-fun res!2772728 () Bool)

(declare-fun e!4094691 () Bool)

(assert (=> b!6783313 (=> res!2772728 e!4094691)))

(assert (=> b!6783313 (= res!2772728 e!4094690)))

(declare-fun res!2772732 () Bool)

(assert (=> b!6783313 (=> (not res!2772732) (not e!4094690))))

(assert (=> b!6783313 (= res!2772732 lt!2445268)))

(declare-fun b!6783314 () Bool)

(assert (=> b!6783314 (= e!4094689 (= lt!2445268 call!615529))))

(declare-fun b!6783315 () Bool)

(declare-fun e!4094694 () Bool)

(declare-fun e!4094693 () Bool)

(assert (=> b!6783315 (= e!4094694 e!4094693)))

(declare-fun res!2772727 () Bool)

(assert (=> b!6783315 (=> res!2772727 e!4094693)))

(assert (=> b!6783315 (= res!2772727 call!615529)))

(declare-fun b!6783316 () Bool)

(declare-fun res!2772730 () Bool)

(assert (=> b!6783316 (=> res!2772730 e!4094691)))

(assert (=> b!6783316 (= res!2772730 (not ((_ is ElementMatch!16605) (reg!16934 r!7292))))))

(assert (=> b!6783316 (= e!4094688 e!4094691)))

(declare-fun b!6783317 () Bool)

(assert (=> b!6783317 (= e!4094693 (not (= (head!13620 (_1!36883 lt!2445168)) (c!1260145 (reg!16934 r!7292)))))))

(declare-fun b!6783318 () Bool)

(assert (=> b!6783318 (= e!4094690 (= (head!13620 (_1!36883 lt!2445168)) (c!1260145 (reg!16934 r!7292))))))

(declare-fun b!6783319 () Bool)

(assert (=> b!6783319 (= e!4094691 e!4094694)))

(declare-fun res!2772731 () Bool)

(assert (=> b!6783319 (=> (not res!2772731) (not e!4094694))))

(assert (=> b!6783319 (= res!2772731 (not lt!2445268))))

(declare-fun bm!615524 () Bool)

(assert (=> bm!615524 (= call!615529 (isEmpty!38354 (_1!36883 lt!2445168)))))

(declare-fun d!2131128 () Bool)

(assert (=> d!2131128 e!4094689))

(declare-fun c!1260263 () Bool)

(assert (=> d!2131128 (= c!1260263 ((_ is EmptyExpr!16605) (reg!16934 r!7292)))))

(assert (=> d!2131128 (= lt!2445268 e!4094692)))

(declare-fun c!1260264 () Bool)

(assert (=> d!2131128 (= c!1260264 (isEmpty!38354 (_1!36883 lt!2445168)))))

(assert (=> d!2131128 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131128 (= (matchR!8788 (reg!16934 r!7292) (_1!36883 lt!2445168)) lt!2445268)))

(declare-fun b!6783320 () Bool)

(declare-fun res!2772725 () Bool)

(assert (=> b!6783320 (=> res!2772725 e!4094693)))

(assert (=> b!6783320 (= res!2772725 (not (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168)))))))

(declare-fun b!6783321 () Bool)

(declare-fun res!2772726 () Bool)

(assert (=> b!6783321 (=> (not res!2772726) (not e!4094690))))

(assert (=> b!6783321 (= res!2772726 (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168))))))

(assert (= (and d!2131128 c!1260264) b!6783309))

(assert (= (and d!2131128 (not c!1260264)) b!6783308))

(assert (= (and d!2131128 c!1260263) b!6783314))

(assert (= (and d!2131128 (not c!1260263)) b!6783311))

(assert (= (and b!6783311 c!1260265) b!6783310))

(assert (= (and b!6783311 (not c!1260265)) b!6783316))

(assert (= (and b!6783316 (not res!2772730)) b!6783313))

(assert (= (and b!6783313 res!2772732) b!6783312))

(assert (= (and b!6783312 res!2772729) b!6783321))

(assert (= (and b!6783321 res!2772726) b!6783318))

(assert (= (and b!6783313 (not res!2772728)) b!6783319))

(assert (= (and b!6783319 res!2772731) b!6783315))

(assert (= (and b!6783315 (not res!2772727)) b!6783320))

(assert (= (and b!6783320 (not res!2772725)) b!6783317))

(assert (= (or b!6783314 b!6783312 b!6783315) bm!615524))

(assert (=> b!6783321 m!7531460))

(assert (=> b!6783321 m!7531460))

(declare-fun m!7531764 () Bool)

(assert (=> b!6783321 m!7531764))

(assert (=> b!6783317 m!7531456))

(assert (=> b!6783320 m!7531460))

(assert (=> b!6783320 m!7531460))

(assert (=> b!6783320 m!7531764))

(assert (=> b!6783308 m!7531456))

(assert (=> b!6783308 m!7531456))

(declare-fun m!7531766 () Bool)

(assert (=> b!6783308 m!7531766))

(assert (=> b!6783308 m!7531460))

(assert (=> b!6783308 m!7531766))

(assert (=> b!6783308 m!7531460))

(declare-fun m!7531768 () Bool)

(assert (=> b!6783308 m!7531768))

(assert (=> d!2131128 m!7531452))

(assert (=> d!2131128 m!7531450))

(declare-fun m!7531770 () Bool)

(assert (=> b!6783309 m!7531770))

(assert (=> bm!615524 m!7531452))

(assert (=> b!6783318 m!7531456))

(assert (=> b!6782902 d!2131128))

(declare-fun d!2131130 () Bool)

(declare-fun choose!50521 (Int) Bool)

(assert (=> d!2131130 (= (Exists!3673 lambda!381847) (choose!50521 lambda!381847))))

(declare-fun bs!1806656 () Bool)

(assert (= bs!1806656 d!2131130))

(declare-fun m!7531772 () Bool)

(assert (=> bs!1806656 m!7531772))

(assert (=> b!6782922 d!2131130))

(declare-fun d!2131132 () Bool)

(assert (=> d!2131132 (= (Exists!3673 lambda!381848) (choose!50521 lambda!381848))))

(declare-fun bs!1806657 () Bool)

(assert (= bs!1806657 d!2131132))

(declare-fun m!7531774 () Bool)

(assert (=> bs!1806657 m!7531774))

(assert (=> b!6782922 d!2131132))

(declare-fun bs!1806660 () Bool)

(declare-fun d!2131134 () Bool)

(assert (= bs!1806660 (and d!2131134 b!6782898)))

(declare-fun lambda!381884 () Int)

(assert (=> bs!1806660 (= lambda!381884 lambda!381851)))

(declare-fun bs!1806661 () Bool)

(assert (= bs!1806661 (and d!2131134 d!2131058)))

(assert (=> bs!1806661 (= lambda!381884 lambda!381857)))

(declare-fun bs!1806662 () Bool)

(assert (= bs!1806662 (and d!2131134 d!2131102)))

(assert (=> bs!1806662 (= lambda!381884 lambda!381869)))

(assert (=> d!2131134 (= (inv!84759 (h!72440 zl!343)) (forall!15797 (exprs!6489 (h!72440 zl!343)) lambda!381884))))

(declare-fun bs!1806663 () Bool)

(assert (= bs!1806663 d!2131134))

(declare-fun m!7531784 () Bool)

(assert (=> bs!1806663 m!7531784))

(assert (=> b!6782912 d!2131134))

(declare-fun d!2131142 () Bool)

(declare-fun lt!2445272 () Regex!16605)

(assert (=> d!2131142 (validRegex!8341 lt!2445272)))

(assert (=> d!2131142 (= lt!2445272 (generalisedUnion!2449 (unfocusZipperList!2026 lt!2445200)))))

(assert (=> d!2131142 (= (unfocusZipper!2347 lt!2445200) lt!2445272)))

(declare-fun bs!1806664 () Bool)

(assert (= bs!1806664 d!2131142))

(declare-fun m!7531786 () Bool)

(assert (=> bs!1806664 m!7531786))

(declare-fun m!7531788 () Bool)

(assert (=> bs!1806664 m!7531788))

(assert (=> bs!1806664 m!7531788))

(declare-fun m!7531790 () Bool)

(assert (=> bs!1806664 m!7531790))

(assert (=> b!6782913 d!2131142))

(declare-fun d!2131144 () Bool)

(declare-fun lt!2445273 () Regex!16605)

(assert (=> d!2131144 (validRegex!8341 lt!2445273)))

(assert (=> d!2131144 (= lt!2445273 (generalisedUnion!2449 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))

(assert (=> d!2131144 (= (unfocusZipper!2347 (Cons!65992 lt!2445202 Nil!65992)) lt!2445273)))

(declare-fun bs!1806665 () Bool)

(assert (= bs!1806665 d!2131144))

(declare-fun m!7531792 () Bool)

(assert (=> bs!1806665 m!7531792))

(declare-fun m!7531794 () Bool)

(assert (=> bs!1806665 m!7531794))

(assert (=> bs!1806665 m!7531794))

(declare-fun m!7531796 () Bool)

(assert (=> bs!1806665 m!7531796))

(assert (=> b!6782915 d!2131144))

(declare-fun d!2131146 () Bool)

(declare-fun lt!2445274 () Regex!16605)

(assert (=> d!2131146 (validRegex!8341 lt!2445274)))

(assert (=> d!2131146 (= lt!2445274 (generalisedUnion!2449 (unfocusZipperList!2026 lt!2445171)))))

(assert (=> d!2131146 (= (unfocusZipper!2347 lt!2445171) lt!2445274)))

(declare-fun bs!1806666 () Bool)

(assert (= bs!1806666 d!2131146))

(declare-fun m!7531798 () Bool)

(assert (=> bs!1806666 m!7531798))

(declare-fun m!7531800 () Bool)

(assert (=> bs!1806666 m!7531800))

(assert (=> bs!1806666 m!7531800))

(declare-fun m!7531802 () Bool)

(assert (=> bs!1806666 m!7531802))

(assert (=> b!6782916 d!2131146))

(declare-fun b!6783333 () Bool)

(declare-fun e!4094699 () Bool)

(declare-fun lt!2445277 () List!66114)

(assert (=> b!6783333 (= e!4094699 (or (not (= (_2!36883 lt!2445168) Nil!65990)) (= lt!2445277 (_1!36883 lt!2445168))))))

(declare-fun b!6783331 () Bool)

(declare-fun e!4094700 () List!66114)

(assert (=> b!6783331 (= e!4094700 (Cons!65990 (h!72438 (_1!36883 lt!2445168)) (++!14761 (t!379831 (_1!36883 lt!2445168)) (_2!36883 lt!2445168))))))

(declare-fun b!6783332 () Bool)

(declare-fun res!2772737 () Bool)

(assert (=> b!6783332 (=> (not res!2772737) (not e!4094699))))

(declare-fun size!40640 (List!66114) Int)

(assert (=> b!6783332 (= res!2772737 (= (size!40640 lt!2445277) (+ (size!40640 (_1!36883 lt!2445168)) (size!40640 (_2!36883 lt!2445168)))))))

(declare-fun b!6783330 () Bool)

(assert (=> b!6783330 (= e!4094700 (_2!36883 lt!2445168))))

(declare-fun d!2131148 () Bool)

(assert (=> d!2131148 e!4094699))

(declare-fun res!2772738 () Bool)

(assert (=> d!2131148 (=> (not res!2772738) (not e!4094699))))

(declare-fun content!12857 (List!66114) (InoxSet C!33480))

(assert (=> d!2131148 (= res!2772738 (= (content!12857 lt!2445277) ((_ map or) (content!12857 (_1!36883 lt!2445168)) (content!12857 (_2!36883 lt!2445168)))))))

(assert (=> d!2131148 (= lt!2445277 e!4094700)))

(declare-fun c!1260268 () Bool)

(assert (=> d!2131148 (= c!1260268 ((_ is Nil!65990) (_1!36883 lt!2445168)))))

(assert (=> d!2131148 (= (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)) lt!2445277)))

(assert (= (and d!2131148 c!1260268) b!6783330))

(assert (= (and d!2131148 (not c!1260268)) b!6783331))

(assert (= (and d!2131148 res!2772738) b!6783332))

(assert (= (and b!6783332 res!2772737) b!6783333))

(declare-fun m!7531804 () Bool)

(assert (=> b!6783331 m!7531804))

(declare-fun m!7531806 () Bool)

(assert (=> b!6783332 m!7531806))

(declare-fun m!7531808 () Bool)

(assert (=> b!6783332 m!7531808))

(declare-fun m!7531810 () Bool)

(assert (=> b!6783332 m!7531810))

(declare-fun m!7531812 () Bool)

(assert (=> d!2131148 m!7531812))

(declare-fun m!7531814 () Bool)

(assert (=> d!2131148 m!7531814))

(declare-fun m!7531816 () Bool)

(assert (=> d!2131148 m!7531816))

(assert (=> b!6782917 d!2131148))

(declare-fun d!2131150 () Bool)

(assert (=> d!2131150 (= (get!22977 lt!2445188) (v!52697 lt!2445188))))

(assert (=> b!6782917 d!2131150))

(declare-fun d!2131152 () Bool)

(assert (=> d!2131152 (= (flatMap!2086 z!1189 lambda!381850) (choose!50517 z!1189 lambda!381850))))

(declare-fun bs!1806667 () Bool)

(assert (= bs!1806667 d!2131152))

(declare-fun m!7531818 () Bool)

(assert (=> bs!1806667 m!7531818))

(assert (=> b!6782908 d!2131152))

(declare-fun b!6783344 () Bool)

(declare-fun e!4094708 () (InoxSet Context!11978))

(assert (=> b!6783344 (= e!4094708 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615525 () Bool)

(declare-fun call!615530 () (InoxSet Context!11978))

(assert (=> bm!615525 (= call!615530 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (h!72440 zl!343))) (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (h!72438 s!2326)))))

(declare-fun b!6783345 () Bool)

(declare-fun e!4094709 () Bool)

(assert (=> b!6783345 (= e!4094709 (nullable!6584 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun d!2131154 () Bool)

(declare-fun c!1260274 () Bool)

(assert (=> d!2131154 (= c!1260274 e!4094709)))

(declare-fun res!2772741 () Bool)

(assert (=> d!2131154 (=> (not res!2772741) (not e!4094709))))

(assert (=> d!2131154 (= res!2772741 ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343))))))

(declare-fun e!4094707 () (InoxSet Context!11978))

(assert (=> d!2131154 (= (derivationStepZipperUp!1759 (h!72440 zl!343) (h!72438 s!2326)) e!4094707)))

(declare-fun b!6783346 () Bool)

(assert (=> b!6783346 (= e!4094707 ((_ map or) call!615530 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (h!72438 s!2326))))))

(declare-fun b!6783347 () Bool)

(assert (=> b!6783347 (= e!4094708 call!615530)))

(declare-fun b!6783348 () Bool)

(assert (=> b!6783348 (= e!4094707 e!4094708)))

(declare-fun c!1260273 () Bool)

(assert (=> b!6783348 (= c!1260273 ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343))))))

(assert (= (and d!2131154 res!2772741) b!6783345))

(assert (= (and d!2131154 c!1260274) b!6783346))

(assert (= (and d!2131154 (not c!1260274)) b!6783348))

(assert (= (and b!6783348 c!1260273) b!6783347))

(assert (= (and b!6783348 (not c!1260273)) b!6783344))

(assert (= (or b!6783346 b!6783347) bm!615525))

(declare-fun m!7531820 () Bool)

(assert (=> bm!615525 m!7531820))

(declare-fun m!7531822 () Bool)

(assert (=> b!6783345 m!7531822))

(declare-fun m!7531824 () Bool)

(assert (=> b!6783346 m!7531824))

(assert (=> b!6782908 d!2131154))

(declare-fun d!2131156 () Bool)

(assert (=> d!2131156 (= (flatMap!2086 z!1189 lambda!381850) (dynLambda!26333 lambda!381850 (h!72440 zl!343)))))

(declare-fun lt!2445284 () Unit!159901)

(assert (=> d!2131156 (= lt!2445284 (choose!50518 z!1189 (h!72440 zl!343) lambda!381850))))

(assert (=> d!2131156 (= z!1189 (store ((as const (Array Context!11978 Bool)) false) (h!72440 zl!343) true))))

(assert (=> d!2131156 (= (lemmaFlatMapOnSingletonSet!1612 z!1189 (h!72440 zl!343) lambda!381850) lt!2445284)))

(declare-fun b_lambda!255423 () Bool)

(assert (=> (not b_lambda!255423) (not d!2131156)))

(declare-fun bs!1806668 () Bool)

(assert (= bs!1806668 d!2131156))

(assert (=> bs!1806668 m!7531372))

(declare-fun m!7531826 () Bool)

(assert (=> bs!1806668 m!7531826))

(declare-fun m!7531828 () Bool)

(assert (=> bs!1806668 m!7531828))

(declare-fun m!7531830 () Bool)

(assert (=> bs!1806668 m!7531830))

(assert (=> b!6782908 d!2131156))

(declare-fun b!6783357 () Bool)

(declare-fun e!4094715 () (InoxSet Context!11978))

(declare-fun call!615531 () (InoxSet Context!11978))

(assert (=> b!6783357 (= e!4094715 call!615531)))

(declare-fun b!6783358 () Bool)

(declare-fun e!4094718 () (InoxSet Context!11978))

(assert (=> b!6783358 (= e!4094718 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 Nil!65991) true))))

(declare-fun bm!615526 () Bool)

(declare-fun call!615533 () (InoxSet Context!11978))

(assert (=> bm!615526 (= call!615531 call!615533)))

(declare-fun b!6783359 () Bool)

(declare-fun e!4094717 () (InoxSet Context!11978))

(assert (=> b!6783359 (= e!4094717 e!4094715)))

(declare-fun c!1260276 () Bool)

(assert (=> b!6783359 (= c!1260276 ((_ is Concat!25450) r!7292))))

(declare-fun b!6783360 () Bool)

(declare-fun c!1260279 () Bool)

(assert (=> b!6783360 (= c!1260279 ((_ is Star!16605) r!7292))))

(declare-fun e!4094716 () (InoxSet Context!11978))

(assert (=> b!6783360 (= e!4094715 e!4094716)))

(declare-fun bm!615527 () Bool)

(declare-fun call!615532 () List!66115)

(declare-fun call!615536 () List!66115)

(assert (=> bm!615527 (= call!615532 call!615536)))

(declare-fun bm!615528 () Bool)

(declare-fun call!615535 () (InoxSet Context!11978))

(assert (=> bm!615528 (= call!615533 call!615535)))

(declare-fun b!6783361 () Bool)

(declare-fun call!615534 () (InoxSet Context!11978))

(assert (=> b!6783361 (= e!4094717 ((_ map or) call!615534 call!615533))))

(declare-fun b!6783362 () Bool)

(declare-fun e!4094714 () Bool)

(assert (=> b!6783362 (= e!4094714 (nullable!6584 (regOne!33722 r!7292)))))

(declare-fun bm!615529 () Bool)

(declare-fun c!1260277 () Bool)

(assert (=> bm!615529 (= call!615536 ($colon$colon!2414 (exprs!6489 (Context!11979 Nil!65991)) (ite (or c!1260277 c!1260276) (regTwo!33722 r!7292) r!7292)))))

(declare-fun b!6783363 () Bool)

(assert (=> b!6783363 (= c!1260277 e!4094714)))

(declare-fun res!2772750 () Bool)

(assert (=> b!6783363 (=> (not res!2772750) (not e!4094714))))

(assert (=> b!6783363 (= res!2772750 ((_ is Concat!25450) r!7292))))

(declare-fun e!4094719 () (InoxSet Context!11978))

(assert (=> b!6783363 (= e!4094719 e!4094717)))

(declare-fun bm!615530 () Bool)

(declare-fun c!1260278 () Bool)

(assert (=> bm!615530 (= call!615535 (derivationStepZipperDown!1833 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))) (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532)) (h!72438 s!2326)))))

(declare-fun bm!615531 () Bool)

(assert (=> bm!615531 (= call!615534 (derivationStepZipperDown!1833 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)) (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536)) (h!72438 s!2326)))))

(declare-fun b!6783364 () Bool)

(assert (=> b!6783364 (= e!4094718 e!4094719)))

(assert (=> b!6783364 (= c!1260278 ((_ is Union!16605) r!7292))))

(declare-fun d!2131158 () Bool)

(declare-fun c!1260275 () Bool)

(assert (=> d!2131158 (= c!1260275 (and ((_ is ElementMatch!16605) r!7292) (= (c!1260145 r!7292) (h!72438 s!2326))))))

(assert (=> d!2131158 (= (derivationStepZipperDown!1833 r!7292 (Context!11979 Nil!65991) (h!72438 s!2326)) e!4094718)))

(declare-fun b!6783365 () Bool)

(assert (=> b!6783365 (= e!4094719 ((_ map or) call!615534 call!615535))))

(declare-fun b!6783366 () Bool)

(assert (=> b!6783366 (= e!4094716 call!615531)))

(declare-fun b!6783367 () Bool)

(assert (=> b!6783367 (= e!4094716 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131158 c!1260275) b!6783358))

(assert (= (and d!2131158 (not c!1260275)) b!6783364))

(assert (= (and b!6783364 c!1260278) b!6783365))

(assert (= (and b!6783364 (not c!1260278)) b!6783363))

(assert (= (and b!6783363 res!2772750) b!6783362))

(assert (= (and b!6783363 c!1260277) b!6783361))

(assert (= (and b!6783363 (not c!1260277)) b!6783359))

(assert (= (and b!6783359 c!1260276) b!6783357))

(assert (= (and b!6783359 (not c!1260276)) b!6783360))

(assert (= (and b!6783360 c!1260279) b!6783366))

(assert (= (and b!6783360 (not c!1260279)) b!6783367))

(assert (= (or b!6783357 b!6783366) bm!615527))

(assert (= (or b!6783357 b!6783366) bm!615526))

(assert (= (or b!6783361 bm!615527) bm!615529))

(assert (= (or b!6783361 bm!615526) bm!615528))

(assert (= (or b!6783365 bm!615528) bm!615530))

(assert (= (or b!6783365 b!6783361) bm!615531))

(declare-fun m!7531832 () Bool)

(assert (=> b!6783358 m!7531832))

(declare-fun m!7531834 () Bool)

(assert (=> b!6783362 m!7531834))

(declare-fun m!7531836 () Bool)

(assert (=> bm!615530 m!7531836))

(declare-fun m!7531838 () Bool)

(assert (=> bm!615529 m!7531838))

(declare-fun m!7531840 () Bool)

(assert (=> bm!615531 m!7531840))

(assert (=> b!6782928 d!2131158))

(declare-fun b!6783368 () Bool)

(declare-fun e!4094721 () (InoxSet Context!11978))

(assert (=> b!6783368 (= e!4094721 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615532 () Bool)

(declare-fun call!615537 () (InoxSet Context!11978))

(assert (=> bm!615532 (= call!615537 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72438 s!2326)))))

(declare-fun b!6783369 () Bool)

(declare-fun e!4094722 () Bool)

(assert (=> b!6783369 (= e!4094722 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun d!2131160 () Bool)

(declare-fun c!1260281 () Bool)

(assert (=> d!2131160 (= c!1260281 e!4094722)))

(declare-fun res!2772751 () Bool)

(assert (=> d!2131160 (=> (not res!2772751) (not e!4094722))))

(assert (=> d!2131160 (= res!2772751 ((_ is Cons!65991) (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))

(declare-fun e!4094720 () (InoxSet Context!11978))

(assert (=> d!2131160 (= (derivationStepZipperUp!1759 (Context!11979 (Cons!65991 r!7292 Nil!65991)) (h!72438 s!2326)) e!4094720)))

(declare-fun b!6783370 () Bool)

(assert (=> b!6783370 (= e!4094720 ((_ map or) call!615537 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72438 s!2326))))))

(declare-fun b!6783371 () Bool)

(assert (=> b!6783371 (= e!4094721 call!615537)))

(declare-fun b!6783372 () Bool)

(assert (=> b!6783372 (= e!4094720 e!4094721)))

(declare-fun c!1260280 () Bool)

(assert (=> b!6783372 (= c!1260280 ((_ is Cons!65991) (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))

(assert (= (and d!2131160 res!2772751) b!6783369))

(assert (= (and d!2131160 c!1260281) b!6783370))

(assert (= (and d!2131160 (not c!1260281)) b!6783372))

(assert (= (and b!6783372 c!1260280) b!6783371))

(assert (= (and b!6783372 (not c!1260280)) b!6783368))

(assert (= (or b!6783370 b!6783371) bm!615532))

(declare-fun m!7531842 () Bool)

(assert (=> bm!615532 m!7531842))

(declare-fun m!7531844 () Bool)

(assert (=> b!6783369 m!7531844))

(declare-fun m!7531846 () Bool)

(assert (=> b!6783370 m!7531846))

(assert (=> b!6782928 d!2131160))

(declare-fun bs!1806669 () Bool)

(declare-fun d!2131162 () Bool)

(assert (= bs!1806669 (and d!2131162 b!6782908)))

(declare-fun lambda!381887 () Int)

(assert (=> bs!1806669 (= lambda!381887 lambda!381850)))

(assert (=> d!2131162 true))

(assert (=> d!2131162 (= (derivationStepZipper!2549 z!1189 (h!72438 s!2326)) (flatMap!2086 z!1189 lambda!381887))))

(declare-fun bs!1806670 () Bool)

(assert (= bs!1806670 d!2131162))

(declare-fun m!7531868 () Bool)

(assert (=> bs!1806670 m!7531868))

(assert (=> b!6782928 d!2131162))

(assert (=> b!6782929 d!2131130))

(declare-fun bs!1806671 () Bool)

(declare-fun d!2131166 () Bool)

(assert (= bs!1806671 (and d!2131166 b!6782898)))

(declare-fun lambda!381888 () Int)

(assert (=> bs!1806671 (= lambda!381888 lambda!381851)))

(declare-fun bs!1806672 () Bool)

(assert (= bs!1806672 (and d!2131166 d!2131058)))

(assert (=> bs!1806672 (= lambda!381888 lambda!381857)))

(declare-fun bs!1806673 () Bool)

(assert (= bs!1806673 (and d!2131166 d!2131102)))

(assert (=> bs!1806673 (= lambda!381888 lambda!381869)))

(declare-fun bs!1806674 () Bool)

(assert (= bs!1806674 (and d!2131166 d!2131134)))

(assert (=> bs!1806674 (= lambda!381888 lambda!381884)))

(assert (=> d!2131166 (= (inv!84759 setElem!46403) (forall!15797 (exprs!6489 setElem!46403) lambda!381888))))

(declare-fun bs!1806675 () Bool)

(assert (= bs!1806675 d!2131166))

(declare-fun m!7531870 () Bool)

(assert (=> bs!1806675 m!7531870))

(assert (=> setNonEmpty!46403 d!2131166))

(declare-fun bs!1806688 () Bool)

(declare-fun b!6783436 () Bool)

(assert (= bs!1806688 (and b!6783436 b!6782923)))

(declare-fun lambda!381899 () Int)

(assert (=> bs!1806688 (not (= lambda!381899 lambda!381847))))

(assert (=> bs!1806688 (= lambda!381899 lambda!381848)))

(assert (=> bs!1806688 (not (= lambda!381899 lambda!381849))))

(assert (=> b!6783436 true))

(assert (=> b!6783436 true))

(declare-fun bs!1806695 () Bool)

(declare-fun b!6783428 () Bool)

(assert (= bs!1806695 (and b!6783428 b!6782923)))

(declare-fun lambda!381902 () Int)

(assert (=> bs!1806695 (not (= lambda!381902 lambda!381847))))

(assert (=> bs!1806695 (not (= lambda!381902 lambda!381848))))

(assert (=> bs!1806695 (= (and (= (regOne!33722 r!7292) (reg!16934 r!7292)) (= (regTwo!33722 r!7292) r!7292)) (= lambda!381902 lambda!381849))))

(declare-fun bs!1806697 () Bool)

(assert (= bs!1806697 (and b!6783428 b!6783436)))

(assert (=> bs!1806697 (not (= lambda!381902 lambda!381899))))

(assert (=> b!6783428 true))

(assert (=> b!6783428 true))

(declare-fun e!4094758 () Bool)

(declare-fun call!615543 () Bool)

(assert (=> b!6783428 (= e!4094758 call!615543)))

(declare-fun bm!615538 () Bool)

(declare-fun call!615544 () Bool)

(assert (=> bm!615538 (= call!615544 (isEmpty!38354 s!2326))))

(declare-fun b!6783429 () Bool)

(declare-fun c!1260297 () Bool)

(assert (=> b!6783429 (= c!1260297 ((_ is ElementMatch!16605) r!7292))))

(declare-fun e!4094755 () Bool)

(declare-fun e!4094759 () Bool)

(assert (=> b!6783429 (= e!4094755 e!4094759)))

(declare-fun b!6783430 () Bool)

(declare-fun c!1260298 () Bool)

(assert (=> b!6783430 (= c!1260298 ((_ is Union!16605) r!7292))))

(declare-fun e!4094754 () Bool)

(assert (=> b!6783430 (= e!4094759 e!4094754)))

(declare-fun b!6783431 () Bool)

(declare-fun e!4094760 () Bool)

(assert (=> b!6783431 (= e!4094760 (matchRSpec!3706 (regTwo!33723 r!7292) s!2326))))

(declare-fun b!6783432 () Bool)

(declare-fun e!4094757 () Bool)

(assert (=> b!6783432 (= e!4094757 e!4094755)))

(declare-fun res!2772782 () Bool)

(assert (=> b!6783432 (= res!2772782 (not ((_ is EmptyLang!16605) r!7292)))))

(assert (=> b!6783432 (=> (not res!2772782) (not e!4094755))))

(declare-fun bm!615539 () Bool)

(declare-fun c!1260299 () Bool)

(assert (=> bm!615539 (= call!615543 (Exists!3673 (ite c!1260299 lambda!381899 lambda!381902)))))

(declare-fun b!6783434 () Bool)

(assert (=> b!6783434 (= e!4094759 (= s!2326 (Cons!65990 (c!1260145 r!7292) Nil!65990)))))

(declare-fun b!6783435 () Bool)

(assert (=> b!6783435 (= e!4094754 e!4094758)))

(assert (=> b!6783435 (= c!1260299 ((_ is Star!16605) r!7292))))

(declare-fun e!4094756 () Bool)

(assert (=> b!6783436 (= e!4094756 call!615543)))

(declare-fun d!2131168 () Bool)

(declare-fun c!1260296 () Bool)

(assert (=> d!2131168 (= c!1260296 ((_ is EmptyExpr!16605) r!7292))))

(assert (=> d!2131168 (= (matchRSpec!3706 r!7292 s!2326) e!4094757)))

(declare-fun b!6783433 () Bool)

(declare-fun res!2772783 () Bool)

(assert (=> b!6783433 (=> res!2772783 e!4094756)))

(assert (=> b!6783433 (= res!2772783 call!615544)))

(assert (=> b!6783433 (= e!4094758 e!4094756)))

(declare-fun b!6783437 () Bool)

(assert (=> b!6783437 (= e!4094754 e!4094760)))

(declare-fun res!2772781 () Bool)

(assert (=> b!6783437 (= res!2772781 (matchRSpec!3706 (regOne!33723 r!7292) s!2326))))

(assert (=> b!6783437 (=> res!2772781 e!4094760)))

(declare-fun b!6783438 () Bool)

(assert (=> b!6783438 (= e!4094757 call!615544)))

(assert (= (and d!2131168 c!1260296) b!6783438))

(assert (= (and d!2131168 (not c!1260296)) b!6783432))

(assert (= (and b!6783432 res!2772782) b!6783429))

(assert (= (and b!6783429 c!1260297) b!6783434))

(assert (= (and b!6783429 (not c!1260297)) b!6783430))

(assert (= (and b!6783430 c!1260298) b!6783437))

(assert (= (and b!6783430 (not c!1260298)) b!6783435))

(assert (= (and b!6783437 (not res!2772781)) b!6783431))

(assert (= (and b!6783435 c!1260299) b!6783433))

(assert (= (and b!6783435 (not c!1260299)) b!6783428))

(assert (= (and b!6783433 (not res!2772783)) b!6783436))

(assert (= (or b!6783436 b!6783428) bm!615539))

(assert (= (or b!6783438 b!6783433) bm!615538))

(assert (=> bm!615538 m!7531404))

(declare-fun m!7531928 () Bool)

(assert (=> b!6783431 m!7531928))

(declare-fun m!7531930 () Bool)

(assert (=> bm!615539 m!7531930))

(declare-fun m!7531932 () Bool)

(assert (=> b!6783437 m!7531932))

(assert (=> b!6782910 d!2131168))

(declare-fun b!6783454 () Bool)

(declare-fun e!4094774 () Bool)

(assert (=> b!6783454 (= e!4094774 (matchR!8788 (derivativeStep!5269 r!7292 (head!13620 s!2326)) (tail!12705 s!2326)))))

(declare-fun b!6783455 () Bool)

(assert (=> b!6783455 (= e!4094774 (nullable!6584 r!7292))))

(declare-fun b!6783456 () Bool)

(declare-fun e!4094770 () Bool)

(declare-fun lt!2445296 () Bool)

(assert (=> b!6783456 (= e!4094770 (not lt!2445296))))

(declare-fun b!6783457 () Bool)

(declare-fun e!4094771 () Bool)

(assert (=> b!6783457 (= e!4094771 e!4094770)))

(declare-fun c!1260308 () Bool)

(assert (=> b!6783457 (= c!1260308 ((_ is EmptyLang!16605) r!7292))))

(declare-fun b!6783458 () Bool)

(declare-fun res!2772791 () Bool)

(declare-fun e!4094772 () Bool)

(assert (=> b!6783458 (=> (not res!2772791) (not e!4094772))))

(declare-fun call!615547 () Bool)

(assert (=> b!6783458 (= res!2772791 (not call!615547))))

(declare-fun b!6783459 () Bool)

(declare-fun res!2772790 () Bool)

(declare-fun e!4094773 () Bool)

(assert (=> b!6783459 (=> res!2772790 e!4094773)))

(assert (=> b!6783459 (= res!2772790 e!4094772)))

(declare-fun res!2772794 () Bool)

(assert (=> b!6783459 (=> (not res!2772794) (not e!4094772))))

(assert (=> b!6783459 (= res!2772794 lt!2445296)))

(declare-fun b!6783460 () Bool)

(assert (=> b!6783460 (= e!4094771 (= lt!2445296 call!615547))))

(declare-fun b!6783461 () Bool)

(declare-fun e!4094776 () Bool)

(declare-fun e!4094775 () Bool)

(assert (=> b!6783461 (= e!4094776 e!4094775)))

(declare-fun res!2772789 () Bool)

(assert (=> b!6783461 (=> res!2772789 e!4094775)))

(assert (=> b!6783461 (= res!2772789 call!615547)))

(declare-fun b!6783462 () Bool)

(declare-fun res!2772792 () Bool)

(assert (=> b!6783462 (=> res!2772792 e!4094773)))

(assert (=> b!6783462 (= res!2772792 (not ((_ is ElementMatch!16605) r!7292)))))

(assert (=> b!6783462 (= e!4094770 e!4094773)))

(declare-fun b!6783463 () Bool)

(assert (=> b!6783463 (= e!4094775 (not (= (head!13620 s!2326) (c!1260145 r!7292))))))

(declare-fun b!6783464 () Bool)

(assert (=> b!6783464 (= e!4094772 (= (head!13620 s!2326) (c!1260145 r!7292)))))

(declare-fun b!6783465 () Bool)

(assert (=> b!6783465 (= e!4094773 e!4094776)))

(declare-fun res!2772793 () Bool)

(assert (=> b!6783465 (=> (not res!2772793) (not e!4094776))))

(assert (=> b!6783465 (= res!2772793 (not lt!2445296))))

(declare-fun bm!615542 () Bool)

(assert (=> bm!615542 (= call!615547 (isEmpty!38354 s!2326))))

(declare-fun d!2131192 () Bool)

(assert (=> d!2131192 e!4094771))

(declare-fun c!1260306 () Bool)

(assert (=> d!2131192 (= c!1260306 ((_ is EmptyExpr!16605) r!7292))))

(assert (=> d!2131192 (= lt!2445296 e!4094774)))

(declare-fun c!1260307 () Bool)

(assert (=> d!2131192 (= c!1260307 (isEmpty!38354 s!2326))))

(assert (=> d!2131192 (validRegex!8341 r!7292)))

(assert (=> d!2131192 (= (matchR!8788 r!7292 s!2326) lt!2445296)))

(declare-fun b!6783466 () Bool)

(declare-fun res!2772787 () Bool)

(assert (=> b!6783466 (=> res!2772787 e!4094775)))

(assert (=> b!6783466 (= res!2772787 (not (isEmpty!38354 (tail!12705 s!2326))))))

(declare-fun b!6783467 () Bool)

(declare-fun res!2772788 () Bool)

(assert (=> b!6783467 (=> (not res!2772788) (not e!4094772))))

(assert (=> b!6783467 (= res!2772788 (isEmpty!38354 (tail!12705 s!2326)))))

(assert (= (and d!2131192 c!1260307) b!6783455))

(assert (= (and d!2131192 (not c!1260307)) b!6783454))

(assert (= (and d!2131192 c!1260306) b!6783460))

(assert (= (and d!2131192 (not c!1260306)) b!6783457))

(assert (= (and b!6783457 c!1260308) b!6783456))

(assert (= (and b!6783457 (not c!1260308)) b!6783462))

(assert (= (and b!6783462 (not res!2772792)) b!6783459))

(assert (= (and b!6783459 res!2772794) b!6783458))

(assert (= (and b!6783458 res!2772791) b!6783467))

(assert (= (and b!6783467 res!2772788) b!6783464))

(assert (= (and b!6783459 (not res!2772790)) b!6783465))

(assert (= (and b!6783465 res!2772793) b!6783461))

(assert (= (and b!6783461 (not res!2772789)) b!6783466))

(assert (= (and b!6783466 (not res!2772787)) b!6783463))

(assert (= (or b!6783460 b!6783458 b!6783461) bm!615542))

(assert (=> b!6783467 m!7531476))

(assert (=> b!6783467 m!7531476))

(declare-fun m!7531934 () Bool)

(assert (=> b!6783467 m!7531934))

(assert (=> b!6783463 m!7531472))

(assert (=> b!6783466 m!7531476))

(assert (=> b!6783466 m!7531476))

(assert (=> b!6783466 m!7531934))

(assert (=> b!6783454 m!7531472))

(assert (=> b!6783454 m!7531472))

(declare-fun m!7531936 () Bool)

(assert (=> b!6783454 m!7531936))

(assert (=> b!6783454 m!7531476))

(assert (=> b!6783454 m!7531936))

(assert (=> b!6783454 m!7531476))

(declare-fun m!7531938 () Bool)

(assert (=> b!6783454 m!7531938))

(assert (=> d!2131192 m!7531404))

(assert (=> d!2131192 m!7531348))

(assert (=> b!6783455 m!7531762))

(assert (=> bm!615542 m!7531404))

(assert (=> b!6783464 m!7531472))

(assert (=> b!6782910 d!2131192))

(declare-fun d!2131194 () Bool)

(assert (=> d!2131194 (= (matchR!8788 r!7292 s!2326) (matchRSpec!3706 r!7292 s!2326))))

(declare-fun lt!2445300 () Unit!159901)

(declare-fun choose!50528 (Regex!16605 List!66114) Unit!159901)

(assert (=> d!2131194 (= lt!2445300 (choose!50528 r!7292 s!2326))))

(assert (=> d!2131194 (validRegex!8341 r!7292)))

(assert (=> d!2131194 (= (mainMatchTheorem!3706 r!7292 s!2326) lt!2445300)))

(declare-fun bs!1806711 () Bool)

(assert (= bs!1806711 d!2131194))

(assert (=> bs!1806711 m!7531340))

(assert (=> bs!1806711 m!7531338))

(declare-fun m!7531950 () Bool)

(assert (=> bs!1806711 m!7531950))

(assert (=> bs!1806711 m!7531348))

(assert (=> b!6782910 d!2131194))

(declare-fun b!6783482 () Bool)

(declare-fun e!4094785 () (InoxSet Context!11978))

(assert (=> b!6783482 (= e!4094785 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615544 () Bool)

(declare-fun call!615549 () (InoxSet Context!11978))

(assert (=> bm!615544 (= call!615549 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445169)) (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (h!72438 s!2326)))))

(declare-fun b!6783483 () Bool)

(declare-fun e!4094786 () Bool)

(assert (=> b!6783483 (= e!4094786 (nullable!6584 (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun d!2131198 () Bool)

(declare-fun c!1260313 () Bool)

(assert (=> d!2131198 (= c!1260313 e!4094786)))

(declare-fun res!2772803 () Bool)

(assert (=> d!2131198 (=> (not res!2772803) (not e!4094786))))

(assert (=> d!2131198 (= res!2772803 ((_ is Cons!65991) (exprs!6489 lt!2445169)))))

(declare-fun e!4094784 () (InoxSet Context!11978))

(assert (=> d!2131198 (= (derivationStepZipperUp!1759 lt!2445169 (h!72438 s!2326)) e!4094784)))

(declare-fun b!6783484 () Bool)

(assert (=> b!6783484 (= e!4094784 ((_ map or) call!615549 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (h!72438 s!2326))))))

(declare-fun b!6783485 () Bool)

(assert (=> b!6783485 (= e!4094785 call!615549)))

(declare-fun b!6783486 () Bool)

(assert (=> b!6783486 (= e!4094784 e!4094785)))

(declare-fun c!1260312 () Bool)

(assert (=> b!6783486 (= c!1260312 ((_ is Cons!65991) (exprs!6489 lt!2445169)))))

(assert (= (and d!2131198 res!2772803) b!6783483))

(assert (= (and d!2131198 c!1260313) b!6783484))

(assert (= (and d!2131198 (not c!1260313)) b!6783486))

(assert (= (and b!6783486 c!1260312) b!6783485))

(assert (= (and b!6783486 (not c!1260312)) b!6783482))

(assert (= (or b!6783484 b!6783485) bm!615544))

(declare-fun m!7531958 () Bool)

(assert (=> bm!615544 m!7531958))

(declare-fun m!7531960 () Bool)

(assert (=> b!6783483 m!7531960))

(declare-fun m!7531962 () Bool)

(assert (=> b!6783484 m!7531962))

(assert (=> b!6782911 d!2131198))

(declare-fun d!2131204 () Bool)

(assert (=> d!2131204 (= (flatMap!2086 lt!2445190 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445169))))

(declare-fun lt!2445302 () Unit!159901)

(assert (=> d!2131204 (= lt!2445302 (choose!50518 lt!2445190 lt!2445169 lambda!381850))))

(assert (=> d!2131204 (= lt!2445190 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true))))

(assert (=> d!2131204 (= (lemmaFlatMapOnSingletonSet!1612 lt!2445190 lt!2445169 lambda!381850) lt!2445302)))

(declare-fun b_lambda!255427 () Bool)

(assert (=> (not b_lambda!255427) (not d!2131204)))

(declare-fun bs!1806713 () Bool)

(assert (= bs!1806713 d!2131204))

(assert (=> bs!1806713 m!7531330))

(declare-fun m!7531964 () Bool)

(assert (=> bs!1806713 m!7531964))

(declare-fun m!7531966 () Bool)

(assert (=> bs!1806713 m!7531966))

(assert (=> bs!1806713 m!7531332))

(assert (=> b!6782911 d!2131204))

(declare-fun b!6783487 () Bool)

(declare-fun e!4094788 () (InoxSet Context!11978))

(assert (=> b!6783487 (= e!4094788 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615545 () Bool)

(declare-fun call!615550 () (InoxSet Context!11978))

(assert (=> bm!615545 (= call!615550 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445187)) (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (h!72438 s!2326)))))

(declare-fun b!6783488 () Bool)

(declare-fun e!4094789 () Bool)

(assert (=> b!6783488 (= e!4094789 (nullable!6584 (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun d!2131206 () Bool)

(declare-fun c!1260315 () Bool)

(assert (=> d!2131206 (= c!1260315 e!4094789)))

(declare-fun res!2772804 () Bool)

(assert (=> d!2131206 (=> (not res!2772804) (not e!4094789))))

(assert (=> d!2131206 (= res!2772804 ((_ is Cons!65991) (exprs!6489 lt!2445187)))))

(declare-fun e!4094787 () (InoxSet Context!11978))

(assert (=> d!2131206 (= (derivationStepZipperUp!1759 lt!2445187 (h!72438 s!2326)) e!4094787)))

(declare-fun b!6783489 () Bool)

(assert (=> b!6783489 (= e!4094787 ((_ map or) call!615550 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (h!72438 s!2326))))))

(declare-fun b!6783490 () Bool)

(assert (=> b!6783490 (= e!4094788 call!615550)))

(declare-fun b!6783491 () Bool)

(assert (=> b!6783491 (= e!4094787 e!4094788)))

(declare-fun c!1260314 () Bool)

(assert (=> b!6783491 (= c!1260314 ((_ is Cons!65991) (exprs!6489 lt!2445187)))))

(assert (= (and d!2131206 res!2772804) b!6783488))

(assert (= (and d!2131206 c!1260315) b!6783489))

(assert (= (and d!2131206 (not c!1260315)) b!6783491))

(assert (= (and b!6783491 c!1260314) b!6783490))

(assert (= (and b!6783491 (not c!1260314)) b!6783487))

(assert (= (or b!6783489 b!6783490) bm!615545))

(declare-fun m!7531968 () Bool)

(assert (=> bm!615545 m!7531968))

(declare-fun m!7531970 () Bool)

(assert (=> b!6783488 m!7531970))

(declare-fun m!7531972 () Bool)

(assert (=> b!6783489 m!7531972))

(assert (=> b!6782911 d!2131206))

(declare-fun bs!1806714 () Bool)

(declare-fun d!2131208 () Bool)

(assert (= bs!1806714 (and d!2131208 b!6782908)))

(declare-fun lambda!381905 () Int)

(assert (=> bs!1806714 (= lambda!381905 lambda!381850)))

(declare-fun bs!1806715 () Bool)

(assert (= bs!1806715 (and d!2131208 d!2131162)))

(assert (=> bs!1806715 (= lambda!381905 lambda!381887)))

(assert (=> d!2131208 true))

(assert (=> d!2131208 (= (derivationStepZipper!2549 lt!2445172 (h!72438 s!2326)) (flatMap!2086 lt!2445172 lambda!381905))))

(declare-fun bs!1806716 () Bool)

(assert (= bs!1806716 d!2131208))

(declare-fun m!7531974 () Bool)

(assert (=> bs!1806716 m!7531974))

(assert (=> b!6782911 d!2131208))

(declare-fun d!2131210 () Bool)

(assert (=> d!2131210 (= (flatMap!2086 lt!2445172 lambda!381850) (choose!50517 lt!2445172 lambda!381850))))

(declare-fun bs!1806717 () Bool)

(assert (= bs!1806717 d!2131210))

(declare-fun m!7531976 () Bool)

(assert (=> bs!1806717 m!7531976))

(assert (=> b!6782911 d!2131210))

(declare-fun d!2131212 () Bool)

(assert (=> d!2131212 (= (flatMap!2086 lt!2445190 lambda!381850) (choose!50517 lt!2445190 lambda!381850))))

(declare-fun bs!1806718 () Bool)

(assert (= bs!1806718 d!2131212))

(declare-fun m!7531978 () Bool)

(assert (=> bs!1806718 m!7531978))

(assert (=> b!6782911 d!2131212))

(declare-fun d!2131214 () Bool)

(assert (=> d!2131214 (= (flatMap!2086 lt!2445172 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445187))))

(declare-fun lt!2445303 () Unit!159901)

(assert (=> d!2131214 (= lt!2445303 (choose!50518 lt!2445172 lt!2445187 lambda!381850))))

(assert (=> d!2131214 (= lt!2445172 (store ((as const (Array Context!11978 Bool)) false) lt!2445187 true))))

(assert (=> d!2131214 (= (lemmaFlatMapOnSingletonSet!1612 lt!2445172 lt!2445187 lambda!381850) lt!2445303)))

(declare-fun b_lambda!255429 () Bool)

(assert (=> (not b_lambda!255429) (not d!2131214)))

(declare-fun bs!1806719 () Bool)

(assert (= bs!1806719 d!2131214))

(assert (=> bs!1806719 m!7531322))

(declare-fun m!7531980 () Bool)

(assert (=> bs!1806719 m!7531980))

(declare-fun m!7531982 () Bool)

(assert (=> bs!1806719 m!7531982))

(assert (=> bs!1806719 m!7531324))

(assert (=> b!6782911 d!2131214))

(declare-fun bs!1806720 () Bool)

(declare-fun d!2131216 () Bool)

(assert (= bs!1806720 (and d!2131216 b!6783436)))

(declare-fun lambda!381912 () Int)

(assert (=> bs!1806720 (not (= lambda!381912 lambda!381899))))

(declare-fun bs!1806721 () Bool)

(assert (= bs!1806721 (and d!2131216 b!6783428)))

(assert (=> bs!1806721 (not (= lambda!381912 lambda!381902))))

(declare-fun bs!1806722 () Bool)

(assert (= bs!1806722 (and d!2131216 b!6782923)))

(assert (=> bs!1806722 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!381912 lambda!381847))))

(assert (=> bs!1806722 (not (= lambda!381912 lambda!381849))))

(assert (=> bs!1806722 (not (= lambda!381912 lambda!381848))))

(assert (=> d!2131216 true))

(assert (=> d!2131216 true))

(declare-fun bs!1806723 () Bool)

(assert (= bs!1806723 d!2131216))

(declare-fun lambda!381913 () Int)

(assert (=> bs!1806723 (not (= lambda!381913 lambda!381912))))

(assert (=> bs!1806720 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!381913 lambda!381899))))

(assert (=> bs!1806721 (not (= lambda!381913 lambda!381902))))

(assert (=> bs!1806722 (not (= lambda!381913 lambda!381847))))

(assert (=> bs!1806722 (not (= lambda!381913 lambda!381849))))

(assert (=> bs!1806722 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!381913 lambda!381848))))

(assert (=> d!2131216 true))

(assert (=> d!2131216 true))

(assert (=> d!2131216 (= (Exists!3673 lambda!381912) (Exists!3673 lambda!381913))))

(declare-fun lt!2445308 () Unit!159901)

(declare-fun choose!50529 (Regex!16605 List!66114) Unit!159901)

(assert (=> d!2131216 (= lt!2445308 (choose!50529 (reg!16934 r!7292) s!2326))))

(assert (=> d!2131216 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131216 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!764 (reg!16934 r!7292) s!2326) lt!2445308)))

(declare-fun m!7531988 () Bool)

(assert (=> bs!1806723 m!7531988))

(declare-fun m!7531990 () Bool)

(assert (=> bs!1806723 m!7531990))

(declare-fun m!7531992 () Bool)

(assert (=> bs!1806723 m!7531992))

(assert (=> bs!1806723 m!7531450))

(assert (=> b!6782923 d!2131216))

(declare-fun d!2131220 () Bool)

(assert (=> d!2131220 (= (Exists!3673 lambda!381849) (choose!50521 lambda!381849))))

(declare-fun bs!1806728 () Bool)

(assert (= bs!1806728 d!2131220))

(declare-fun m!7532004 () Bool)

(assert (=> bs!1806728 m!7532004))

(assert (=> b!6782923 d!2131220))

(assert (=> b!6782923 d!2131132))

(declare-fun d!2131222 () Bool)

(assert (=> d!2131222 (= (isEmpty!38354 s!2326) ((_ is Nil!65990) s!2326))))

(assert (=> b!6782923 d!2131222))

(assert (=> b!6782923 d!2131130))

(declare-fun bs!1806737 () Bool)

(declare-fun d!2131228 () Bool)

(assert (= bs!1806737 (and d!2131228 d!2131216)))

(declare-fun lambda!381920 () Int)

(assert (=> bs!1806737 (not (= lambda!381920 lambda!381913))))

(assert (=> bs!1806737 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!381920 lambda!381912))))

(declare-fun bs!1806738 () Bool)

(assert (= bs!1806738 (and d!2131228 b!6783436)))

(assert (=> bs!1806738 (not (= lambda!381920 lambda!381899))))

(declare-fun bs!1806739 () Bool)

(assert (= bs!1806739 (and d!2131228 b!6783428)))

(assert (=> bs!1806739 (not (= lambda!381920 lambda!381902))))

(declare-fun bs!1806740 () Bool)

(assert (= bs!1806740 (and d!2131228 b!6782923)))

(assert (=> bs!1806740 (= lambda!381920 lambda!381847)))

(assert (=> bs!1806740 (not (= lambda!381920 lambda!381849))))

(assert (=> bs!1806740 (not (= lambda!381920 lambda!381848))))

(assert (=> d!2131228 true))

(assert (=> d!2131228 true))

(assert (=> d!2131228 true))

(declare-fun lambda!381921 () Int)

(assert (=> bs!1806737 (not (= lambda!381921 lambda!381913))))

(assert (=> bs!1806737 (not (= lambda!381921 lambda!381912))))

(assert (=> bs!1806738 (not (= lambda!381921 lambda!381899))))

(declare-fun bs!1806741 () Bool)

(assert (= bs!1806741 d!2131228))

(assert (=> bs!1806741 (not (= lambda!381921 lambda!381920))))

(assert (=> bs!1806739 (= (and (= (reg!16934 r!7292) (regOne!33722 r!7292)) (= r!7292 (regTwo!33722 r!7292))) (= lambda!381921 lambda!381902))))

(assert (=> bs!1806740 (not (= lambda!381921 lambda!381847))))

(assert (=> bs!1806740 (= lambda!381921 lambda!381849)))

(assert (=> bs!1806740 (not (= lambda!381921 lambda!381848))))

(assert (=> d!2131228 true))

(assert (=> d!2131228 true))

(assert (=> d!2131228 true))

(assert (=> d!2131228 (= (Exists!3673 lambda!381920) (Exists!3673 lambda!381921))))

(declare-fun lt!2445317 () Unit!159901)

(declare-fun choose!50530 (Regex!16605 Regex!16605 List!66114) Unit!159901)

(assert (=> d!2131228 (= lt!2445317 (choose!50530 (reg!16934 r!7292) r!7292 s!2326))))

(assert (=> d!2131228 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131228 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2200 (reg!16934 r!7292) r!7292 s!2326) lt!2445317)))

(declare-fun m!7532056 () Bool)

(assert (=> bs!1806741 m!7532056))

(declare-fun m!7532058 () Bool)

(assert (=> bs!1806741 m!7532058))

(declare-fun m!7532060 () Bool)

(assert (=> bs!1806741 m!7532060))

(assert (=> bs!1806741 m!7531450))

(assert (=> b!6782923 d!2131228))

(declare-fun d!2131246 () Bool)

(declare-fun isEmpty!38357 (Option!16492) Bool)

(assert (=> d!2131246 (= (isDefined!13195 lt!2445188) (not (isEmpty!38357 lt!2445188)))))

(declare-fun bs!1806742 () Bool)

(assert (= bs!1806742 d!2131246))

(declare-fun m!7532062 () Bool)

(assert (=> bs!1806742 m!7532062))

(assert (=> b!6782923 d!2131246))

(declare-fun b!6783697 () Bool)

(declare-fun e!4094905 () Option!16492)

(assert (=> b!6783697 (= e!4094905 None!16491)))

(declare-fun b!6783698 () Bool)

(declare-fun e!4094906 () Bool)

(assert (=> b!6783698 (= e!4094906 (matchR!8788 r!7292 s!2326))))

(declare-fun b!6783699 () Bool)

(declare-fun e!4094904 () Option!16492)

(assert (=> b!6783699 (= e!4094904 (Some!16491 (tuple2!67161 Nil!65990 s!2326)))))

(declare-fun b!6783700 () Bool)

(declare-fun res!2772871 () Bool)

(declare-fun e!4094907 () Bool)

(assert (=> b!6783700 (=> (not res!2772871) (not e!4094907))))

(declare-fun lt!2445331 () Option!16492)

(assert (=> b!6783700 (= res!2772871 (matchR!8788 r!7292 (_2!36883 (get!22977 lt!2445331))))))

(declare-fun b!6783701 () Bool)

(declare-fun res!2772870 () Bool)

(assert (=> b!6783701 (=> (not res!2772870) (not e!4094907))))

(assert (=> b!6783701 (= res!2772870 (matchR!8788 (reg!16934 r!7292) (_1!36883 (get!22977 lt!2445331))))))

(declare-fun b!6783702 () Bool)

(assert (=> b!6783702 (= e!4094904 e!4094905)))

(declare-fun c!1260360 () Bool)

(assert (=> b!6783702 (= c!1260360 ((_ is Nil!65990) s!2326))))

(declare-fun b!6783703 () Bool)

(declare-fun lt!2445330 () Unit!159901)

(declare-fun lt!2445332 () Unit!159901)

(assert (=> b!6783703 (= lt!2445330 lt!2445332)))

(assert (=> b!6783703 (= (++!14761 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2726 (List!66114 C!33480 List!66114 List!66114) Unit!159901)

(assert (=> b!6783703 (= lt!2445332 (lemmaMoveElementToOtherListKeepsConcatEq!2726 Nil!65990 (h!72438 s!2326) (t!379831 s!2326) s!2326))))

(assert (=> b!6783703 (= e!4094905 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326) s!2326))))

(declare-fun b!6783704 () Bool)

(declare-fun e!4094903 () Bool)

(assert (=> b!6783704 (= e!4094903 (not (isDefined!13195 lt!2445331)))))

(declare-fun d!2131248 () Bool)

(assert (=> d!2131248 e!4094903))

(declare-fun res!2772872 () Bool)

(assert (=> d!2131248 (=> res!2772872 e!4094903)))

(assert (=> d!2131248 (= res!2772872 e!4094907)))

(declare-fun res!2772868 () Bool)

(assert (=> d!2131248 (=> (not res!2772868) (not e!4094907))))

(assert (=> d!2131248 (= res!2772868 (isDefined!13195 lt!2445331))))

(assert (=> d!2131248 (= lt!2445331 e!4094904)))

(declare-fun c!1260361 () Bool)

(assert (=> d!2131248 (= c!1260361 e!4094906)))

(declare-fun res!2772869 () Bool)

(assert (=> d!2131248 (=> (not res!2772869) (not e!4094906))))

(assert (=> d!2131248 (= res!2772869 (matchR!8788 (reg!16934 r!7292) Nil!65990))))

(assert (=> d!2131248 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131248 (= (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326) lt!2445331)))

(declare-fun b!6783705 () Bool)

(assert (=> b!6783705 (= e!4094907 (= (++!14761 (_1!36883 (get!22977 lt!2445331)) (_2!36883 (get!22977 lt!2445331))) s!2326))))

(assert (= (and d!2131248 res!2772869) b!6783698))

(assert (= (and d!2131248 c!1260361) b!6783699))

(assert (= (and d!2131248 (not c!1260361)) b!6783702))

(assert (= (and b!6783702 c!1260360) b!6783697))

(assert (= (and b!6783702 (not c!1260360)) b!6783703))

(assert (= (and d!2131248 res!2772868) b!6783701))

(assert (= (and b!6783701 res!2772870) b!6783700))

(assert (= (and b!6783700 res!2772871) b!6783705))

(assert (= (and d!2131248 (not res!2772872)) b!6783704))

(declare-fun m!7532092 () Bool)

(assert (=> b!6783700 m!7532092))

(declare-fun m!7532094 () Bool)

(assert (=> b!6783700 m!7532094))

(assert (=> b!6783698 m!7531340))

(declare-fun m!7532096 () Bool)

(assert (=> b!6783704 m!7532096))

(assert (=> b!6783705 m!7532092))

(declare-fun m!7532098 () Bool)

(assert (=> b!6783705 m!7532098))

(assert (=> b!6783701 m!7532092))

(declare-fun m!7532100 () Bool)

(assert (=> b!6783701 m!7532100))

(assert (=> d!2131248 m!7532096))

(declare-fun m!7532102 () Bool)

(assert (=> d!2131248 m!7532102))

(assert (=> d!2131248 m!7531450))

(declare-fun m!7532104 () Bool)

(assert (=> b!6783703 m!7532104))

(assert (=> b!6783703 m!7532104))

(declare-fun m!7532106 () Bool)

(assert (=> b!6783703 m!7532106))

(declare-fun m!7532108 () Bool)

(assert (=> b!6783703 m!7532108))

(assert (=> b!6783703 m!7532104))

(declare-fun m!7532110 () Bool)

(assert (=> b!6783703 m!7532110))

(assert (=> b!6782923 d!2131248))

(declare-fun bs!1806758 () Bool)

(declare-fun d!2131260 () Bool)

(assert (= bs!1806758 (and d!2131260 d!2131216)))

(declare-fun lambda!381930 () Int)

(assert (=> bs!1806758 (not (= lambda!381930 lambda!381913))))

(assert (=> bs!1806758 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!381930 lambda!381912))))

(declare-fun bs!1806759 () Bool)

(assert (= bs!1806759 (and d!2131260 b!6783436)))

(assert (=> bs!1806759 (not (= lambda!381930 lambda!381899))))

(declare-fun bs!1806760 () Bool)

(assert (= bs!1806760 (and d!2131260 d!2131228)))

(assert (=> bs!1806760 (= lambda!381930 lambda!381920)))

(declare-fun bs!1806761 () Bool)

(assert (= bs!1806761 (and d!2131260 b!6783428)))

(assert (=> bs!1806761 (not (= lambda!381930 lambda!381902))))

(declare-fun bs!1806762 () Bool)

(assert (= bs!1806762 (and d!2131260 b!6782923)))

(assert (=> bs!1806762 (not (= lambda!381930 lambda!381849))))

(assert (=> bs!1806762 (not (= lambda!381930 lambda!381848))))

(assert (=> bs!1806760 (not (= lambda!381930 lambda!381921))))

(assert (=> bs!1806762 (= lambda!381930 lambda!381847)))

(assert (=> d!2131260 true))

(assert (=> d!2131260 true))

(assert (=> d!2131260 true))

(assert (=> d!2131260 (= (isDefined!13195 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326)) (Exists!3673 lambda!381930))))

(declare-fun lt!2445335 () Unit!159901)

(declare-fun choose!50531 (Regex!16605 Regex!16605 List!66114) Unit!159901)

(assert (=> d!2131260 (= lt!2445335 (choose!50531 (reg!16934 r!7292) r!7292 s!2326))))

(assert (=> d!2131260 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131260 (= (lemmaFindConcatSeparationEquivalentToExists!2670 (reg!16934 r!7292) r!7292 s!2326) lt!2445335)))

(declare-fun bs!1806763 () Bool)

(assert (= bs!1806763 d!2131260))

(assert (=> bs!1806763 m!7531410))

(declare-fun m!7532112 () Bool)

(assert (=> bs!1806763 m!7532112))

(assert (=> bs!1806763 m!7531450))

(declare-fun m!7532114 () Bool)

(assert (=> bs!1806763 m!7532114))

(declare-fun m!7532116 () Bool)

(assert (=> bs!1806763 m!7532116))

(assert (=> bs!1806763 m!7531410))

(assert (=> b!6782923 d!2131260))

(declare-fun d!2131262 () Bool)

(declare-fun lt!2445336 () Regex!16605)

(assert (=> d!2131262 (validRegex!8341 lt!2445336)))

(assert (=> d!2131262 (= lt!2445336 (generalisedUnion!2449 (unfocusZipperList!2026 zl!343)))))

(assert (=> d!2131262 (= (unfocusZipper!2347 zl!343) lt!2445336)))

(declare-fun bs!1806764 () Bool)

(assert (= bs!1806764 d!2131262))

(declare-fun m!7532118 () Bool)

(assert (=> bs!1806764 m!7532118))

(assert (=> bs!1806764 m!7531396))

(assert (=> bs!1806764 m!7531396))

(assert (=> bs!1806764 m!7531398))

(assert (=> b!6782903 d!2131262))

(declare-fun d!2131264 () Bool)

(assert (=> d!2131264 (= (isEmpty!38353 (t!379833 zl!343)) ((_ is Nil!65992) (t!379833 zl!343)))))

(assert (=> b!6782904 d!2131264))

(declare-fun d!2131266 () Bool)

(declare-fun c!1260362 () Bool)

(assert (=> d!2131266 (= c!1260362 (isEmpty!38354 s!2326))))

(declare-fun e!4094910 () Bool)

(assert (=> d!2131266 (= (matchZipper!2591 lt!2445167 s!2326) e!4094910)))

(declare-fun b!6783710 () Bool)

(assert (=> b!6783710 (= e!4094910 (nullableZipper!2312 lt!2445167))))

(declare-fun b!6783711 () Bool)

(assert (=> b!6783711 (= e!4094910 (matchZipper!2591 (derivationStepZipper!2549 lt!2445167 (head!13620 s!2326)) (tail!12705 s!2326)))))

(assert (= (and d!2131266 c!1260362) b!6783710))

(assert (= (and d!2131266 (not c!1260362)) b!6783711))

(assert (=> d!2131266 m!7531404))

(declare-fun m!7532120 () Bool)

(assert (=> b!6783710 m!7532120))

(assert (=> b!6783711 m!7531472))

(assert (=> b!6783711 m!7531472))

(declare-fun m!7532122 () Bool)

(assert (=> b!6783711 m!7532122))

(assert (=> b!6783711 m!7531476))

(assert (=> b!6783711 m!7532122))

(assert (=> b!6783711 m!7531476))

(declare-fun m!7532124 () Bool)

(assert (=> b!6783711 m!7532124))

(assert (=> b!6782905 d!2131266))

(declare-fun d!2131268 () Bool)

(declare-fun c!1260363 () Bool)

(assert (=> d!2131268 (= c!1260363 (isEmpty!38354 (t!379831 s!2326)))))

(declare-fun e!4094911 () Bool)

(assert (=> d!2131268 (= (matchZipper!2591 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (t!379831 s!2326)) e!4094911)))

(declare-fun b!6783712 () Bool)

(assert (=> b!6783712 (= e!4094911 (nullableZipper!2312 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326))))))

(declare-fun b!6783713 () Bool)

(assert (=> b!6783713 (= e!4094911 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (head!13620 (t!379831 s!2326))) (tail!12705 (t!379831 s!2326))))))

(assert (= (and d!2131268 c!1260363) b!6783712))

(assert (= (and d!2131268 (not c!1260363)) b!6783713))

(declare-fun m!7532126 () Bool)

(assert (=> d!2131268 m!7532126))

(assert (=> b!6783712 m!7531356))

(declare-fun m!7532128 () Bool)

(assert (=> b!6783712 m!7532128))

(declare-fun m!7532130 () Bool)

(assert (=> b!6783713 m!7532130))

(assert (=> b!6783713 m!7531356))

(assert (=> b!6783713 m!7532130))

(declare-fun m!7532132 () Bool)

(assert (=> b!6783713 m!7532132))

(declare-fun m!7532134 () Bool)

(assert (=> b!6783713 m!7532134))

(assert (=> b!6783713 m!7532132))

(assert (=> b!6783713 m!7532134))

(declare-fun m!7532136 () Bool)

(assert (=> b!6783713 m!7532136))

(assert (=> b!6782905 d!2131268))

(declare-fun bs!1806765 () Bool)

(declare-fun d!2131270 () Bool)

(assert (= bs!1806765 (and d!2131270 b!6782908)))

(declare-fun lambda!381931 () Int)

(assert (=> bs!1806765 (= lambda!381931 lambda!381850)))

(declare-fun bs!1806766 () Bool)

(assert (= bs!1806766 (and d!2131270 d!2131162)))

(assert (=> bs!1806766 (= lambda!381931 lambda!381887)))

(declare-fun bs!1806767 () Bool)

(assert (= bs!1806767 (and d!2131270 d!2131208)))

(assert (=> bs!1806767 (= lambda!381931 lambda!381905)))

(assert (=> d!2131270 true))

(assert (=> d!2131270 (= (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (flatMap!2086 lt!2445167 lambda!381931))))

(declare-fun bs!1806768 () Bool)

(assert (= bs!1806768 d!2131270))

(declare-fun m!7532138 () Bool)

(assert (=> bs!1806768 m!7532138))

(assert (=> b!6782905 d!2131270))

(declare-fun bs!1806769 () Bool)

(declare-fun d!2131272 () Bool)

(assert (= bs!1806769 (and d!2131272 d!2131134)))

(declare-fun lambda!381934 () Int)

(assert (=> bs!1806769 (= lambda!381934 lambda!381884)))

(declare-fun bs!1806770 () Bool)

(assert (= bs!1806770 (and d!2131272 b!6782898)))

(assert (=> bs!1806770 (= lambda!381934 lambda!381851)))

(declare-fun bs!1806771 () Bool)

(assert (= bs!1806771 (and d!2131272 d!2131102)))

(assert (=> bs!1806771 (= lambda!381934 lambda!381869)))

(declare-fun bs!1806772 () Bool)

(assert (= bs!1806772 (and d!2131272 d!2131058)))

(assert (=> bs!1806772 (= lambda!381934 lambda!381857)))

(declare-fun bs!1806773 () Bool)

(assert (= bs!1806773 (and d!2131272 d!2131166)))

(assert (=> bs!1806773 (= lambda!381934 lambda!381888)))

(declare-fun b!6783734 () Bool)

(declare-fun e!4094926 () Bool)

(declare-fun lt!2445339 () Regex!16605)

(declare-fun isUnion!1400 (Regex!16605) Bool)

(assert (=> b!6783734 (= e!4094926 (isUnion!1400 lt!2445339))))

(declare-fun b!6783735 () Bool)

(declare-fun e!4094924 () Regex!16605)

(declare-fun e!4094928 () Regex!16605)

(assert (=> b!6783735 (= e!4094924 e!4094928)))

(declare-fun c!1260374 () Bool)

(assert (=> b!6783735 (= c!1260374 ((_ is Cons!65991) (unfocusZipperList!2026 zl!343)))))

(declare-fun b!6783736 () Bool)

(declare-fun e!4094927 () Bool)

(assert (=> b!6783736 (= e!4094927 e!4094926)))

(declare-fun c!1260375 () Bool)

(assert (=> b!6783736 (= c!1260375 (isEmpty!38355 (tail!12706 (unfocusZipperList!2026 zl!343))))))

(declare-fun e!4094925 () Bool)

(assert (=> d!2131272 e!4094925))

(declare-fun res!2772882 () Bool)

(assert (=> d!2131272 (=> (not res!2772882) (not e!4094925))))

(assert (=> d!2131272 (= res!2772882 (validRegex!8341 lt!2445339))))

(assert (=> d!2131272 (= lt!2445339 e!4094924)))

(declare-fun c!1260372 () Bool)

(declare-fun e!4094929 () Bool)

(assert (=> d!2131272 (= c!1260372 e!4094929)))

(declare-fun res!2772881 () Bool)

(assert (=> d!2131272 (=> (not res!2772881) (not e!4094929))))

(assert (=> d!2131272 (= res!2772881 ((_ is Cons!65991) (unfocusZipperList!2026 zl!343)))))

(assert (=> d!2131272 (forall!15797 (unfocusZipperList!2026 zl!343) lambda!381934)))

(assert (=> d!2131272 (= (generalisedUnion!2449 (unfocusZipperList!2026 zl!343)) lt!2445339)))

(declare-fun b!6783737 () Bool)

(assert (=> b!6783737 (= e!4094928 (Union!16605 (h!72439 (unfocusZipperList!2026 zl!343)) (generalisedUnion!2449 (t!379832 (unfocusZipperList!2026 zl!343)))))))

(declare-fun b!6783738 () Bool)

(assert (=> b!6783738 (= e!4094926 (= lt!2445339 (head!13621 (unfocusZipperList!2026 zl!343))))))

(declare-fun b!6783739 () Bool)

(assert (=> b!6783739 (= e!4094928 EmptyLang!16605)))

(declare-fun b!6783740 () Bool)

(declare-fun isEmptyLang!1970 (Regex!16605) Bool)

(assert (=> b!6783740 (= e!4094927 (isEmptyLang!1970 lt!2445339))))

(declare-fun b!6783741 () Bool)

(assert (=> b!6783741 (= e!4094929 (isEmpty!38355 (t!379832 (unfocusZipperList!2026 zl!343))))))

(declare-fun b!6783742 () Bool)

(assert (=> b!6783742 (= e!4094925 e!4094927)))

(declare-fun c!1260373 () Bool)

(assert (=> b!6783742 (= c!1260373 (isEmpty!38355 (unfocusZipperList!2026 zl!343)))))

(declare-fun b!6783743 () Bool)

(assert (=> b!6783743 (= e!4094924 (h!72439 (unfocusZipperList!2026 zl!343)))))

(assert (= (and d!2131272 res!2772881) b!6783741))

(assert (= (and d!2131272 c!1260372) b!6783743))

(assert (= (and d!2131272 (not c!1260372)) b!6783735))

(assert (= (and b!6783735 c!1260374) b!6783737))

(assert (= (and b!6783735 (not c!1260374)) b!6783739))

(assert (= (and d!2131272 res!2772882) b!6783742))

(assert (= (and b!6783742 c!1260373) b!6783740))

(assert (= (and b!6783742 (not c!1260373)) b!6783736))

(assert (= (and b!6783736 c!1260375) b!6783738))

(assert (= (and b!6783736 (not c!1260375)) b!6783734))

(declare-fun m!7532140 () Bool)

(assert (=> b!6783734 m!7532140))

(assert (=> b!6783738 m!7531396))

(declare-fun m!7532142 () Bool)

(assert (=> b!6783738 m!7532142))

(assert (=> b!6783736 m!7531396))

(declare-fun m!7532144 () Bool)

(assert (=> b!6783736 m!7532144))

(assert (=> b!6783736 m!7532144))

(declare-fun m!7532146 () Bool)

(assert (=> b!6783736 m!7532146))

(declare-fun m!7532148 () Bool)

(assert (=> b!6783740 m!7532148))

(declare-fun m!7532150 () Bool)

(assert (=> b!6783737 m!7532150))

(declare-fun m!7532152 () Bool)

(assert (=> b!6783741 m!7532152))

(declare-fun m!7532154 () Bool)

(assert (=> d!2131272 m!7532154))

(assert (=> d!2131272 m!7531396))

(declare-fun m!7532156 () Bool)

(assert (=> d!2131272 m!7532156))

(assert (=> b!6783742 m!7531396))

(declare-fun m!7532158 () Bool)

(assert (=> b!6783742 m!7532158))

(assert (=> b!6782926 d!2131272))

(declare-fun bs!1806774 () Bool)

(declare-fun d!2131274 () Bool)

(assert (= bs!1806774 (and d!2131274 d!2131134)))

(declare-fun lambda!381937 () Int)

(assert (=> bs!1806774 (= lambda!381937 lambda!381884)))

(declare-fun bs!1806775 () Bool)

(assert (= bs!1806775 (and d!2131274 b!6782898)))

(assert (=> bs!1806775 (= lambda!381937 lambda!381851)))

(declare-fun bs!1806776 () Bool)

(assert (= bs!1806776 (and d!2131274 d!2131102)))

(assert (=> bs!1806776 (= lambda!381937 lambda!381869)))

(declare-fun bs!1806777 () Bool)

(assert (= bs!1806777 (and d!2131274 d!2131058)))

(assert (=> bs!1806777 (= lambda!381937 lambda!381857)))

(declare-fun bs!1806778 () Bool)

(assert (= bs!1806778 (and d!2131274 d!2131272)))

(assert (=> bs!1806778 (= lambda!381937 lambda!381934)))

(declare-fun bs!1806779 () Bool)

(assert (= bs!1806779 (and d!2131274 d!2131166)))

(assert (=> bs!1806779 (= lambda!381937 lambda!381888)))

(declare-fun lt!2445342 () List!66115)

(assert (=> d!2131274 (forall!15797 lt!2445342 lambda!381937)))

(declare-fun e!4094932 () List!66115)

(assert (=> d!2131274 (= lt!2445342 e!4094932)))

(declare-fun c!1260378 () Bool)

(assert (=> d!2131274 (= c!1260378 ((_ is Cons!65992) zl!343))))

(assert (=> d!2131274 (= (unfocusZipperList!2026 zl!343) lt!2445342)))

(declare-fun b!6783748 () Bool)

(assert (=> b!6783748 (= e!4094932 (Cons!65991 (generalisedConcat!2202 (exprs!6489 (h!72440 zl!343))) (unfocusZipperList!2026 (t!379833 zl!343))))))

(declare-fun b!6783749 () Bool)

(assert (=> b!6783749 (= e!4094932 Nil!65991)))

(assert (= (and d!2131274 c!1260378) b!6783748))

(assert (= (and d!2131274 (not c!1260378)) b!6783749))

(declare-fun m!7532160 () Bool)

(assert (=> d!2131274 m!7532160))

(assert (=> b!6783748 m!7531394))

(declare-fun m!7532162 () Bool)

(assert (=> b!6783748 m!7532162))

(assert (=> b!6782926 d!2131274))

(declare-fun bs!1806780 () Bool)

(declare-fun b!6783758 () Bool)

(assert (= bs!1806780 (and b!6783758 d!2131216)))

(declare-fun lambda!381938 () Int)

(assert (=> bs!1806780 (= (and (= (reg!16934 lt!2445192) (reg!16934 r!7292)) (= lt!2445192 (Star!16605 (reg!16934 r!7292)))) (= lambda!381938 lambda!381913))))

(assert (=> bs!1806780 (not (= lambda!381938 lambda!381912))))

(declare-fun bs!1806781 () Bool)

(assert (= bs!1806781 (and b!6783758 b!6783436)))

(assert (=> bs!1806781 (= (and (= (reg!16934 lt!2445192) (reg!16934 r!7292)) (= lt!2445192 r!7292)) (= lambda!381938 lambda!381899))))

(declare-fun bs!1806782 () Bool)

(assert (= bs!1806782 (and b!6783758 d!2131228)))

(assert (=> bs!1806782 (not (= lambda!381938 lambda!381920))))

(declare-fun bs!1806783 () Bool)

(assert (= bs!1806783 (and b!6783758 b!6783428)))

(assert (=> bs!1806783 (not (= lambda!381938 lambda!381902))))

(declare-fun bs!1806784 () Bool)

(assert (= bs!1806784 (and b!6783758 b!6782923)))

(assert (=> bs!1806784 (not (= lambda!381938 lambda!381849))))

(declare-fun bs!1806785 () Bool)

(assert (= bs!1806785 (and b!6783758 d!2131260)))

(assert (=> bs!1806785 (not (= lambda!381938 lambda!381930))))

(assert (=> bs!1806784 (= (and (= (reg!16934 lt!2445192) (reg!16934 r!7292)) (= lt!2445192 r!7292)) (= lambda!381938 lambda!381848))))

(assert (=> bs!1806782 (not (= lambda!381938 lambda!381921))))

(assert (=> bs!1806784 (not (= lambda!381938 lambda!381847))))

(assert (=> b!6783758 true))

(assert (=> b!6783758 true))

(declare-fun bs!1806786 () Bool)

(declare-fun b!6783750 () Bool)

(assert (= bs!1806786 (and b!6783750 d!2131216)))

(declare-fun lambda!381939 () Int)

(assert (=> bs!1806786 (not (= lambda!381939 lambda!381913))))

(assert (=> bs!1806786 (not (= lambda!381939 lambda!381912))))

(declare-fun bs!1806787 () Bool)

(assert (= bs!1806787 (and b!6783750 b!6783436)))

(assert (=> bs!1806787 (not (= lambda!381939 lambda!381899))))

(declare-fun bs!1806788 () Bool)

(assert (= bs!1806788 (and b!6783750 d!2131228)))

(assert (=> bs!1806788 (not (= lambda!381939 lambda!381920))))

(declare-fun bs!1806789 () Bool)

(assert (= bs!1806789 (and b!6783750 b!6783428)))

(assert (=> bs!1806789 (= (and (= (regOne!33722 lt!2445192) (regOne!33722 r!7292)) (= (regTwo!33722 lt!2445192) (regTwo!33722 r!7292))) (= lambda!381939 lambda!381902))))

(declare-fun bs!1806790 () Bool)

(assert (= bs!1806790 (and b!6783750 b!6783758)))

(assert (=> bs!1806790 (not (= lambda!381939 lambda!381938))))

(declare-fun bs!1806791 () Bool)

(assert (= bs!1806791 (and b!6783750 b!6782923)))

(assert (=> bs!1806791 (= (and (= (regOne!33722 lt!2445192) (reg!16934 r!7292)) (= (regTwo!33722 lt!2445192) r!7292)) (= lambda!381939 lambda!381849))))

(declare-fun bs!1806792 () Bool)

(assert (= bs!1806792 (and b!6783750 d!2131260)))

(assert (=> bs!1806792 (not (= lambda!381939 lambda!381930))))

(assert (=> bs!1806791 (not (= lambda!381939 lambda!381848))))

(assert (=> bs!1806788 (= (and (= (regOne!33722 lt!2445192) (reg!16934 r!7292)) (= (regTwo!33722 lt!2445192) r!7292)) (= lambda!381939 lambda!381921))))

(assert (=> bs!1806791 (not (= lambda!381939 lambda!381847))))

(assert (=> b!6783750 true))

(assert (=> b!6783750 true))

(declare-fun e!4094937 () Bool)

(declare-fun call!615562 () Bool)

(assert (=> b!6783750 (= e!4094937 call!615562)))

(declare-fun bm!615557 () Bool)

(declare-fun call!615563 () Bool)

(assert (=> bm!615557 (= call!615563 (isEmpty!38354 s!2326))))

(declare-fun b!6783751 () Bool)

(declare-fun c!1260380 () Bool)

(assert (=> b!6783751 (= c!1260380 ((_ is ElementMatch!16605) lt!2445192))))

(declare-fun e!4094934 () Bool)

(declare-fun e!4094938 () Bool)

(assert (=> b!6783751 (= e!4094934 e!4094938)))

(declare-fun b!6783752 () Bool)

(declare-fun c!1260381 () Bool)

(assert (=> b!6783752 (= c!1260381 ((_ is Union!16605) lt!2445192))))

(declare-fun e!4094933 () Bool)

(assert (=> b!6783752 (= e!4094938 e!4094933)))

(declare-fun b!6783753 () Bool)

(declare-fun e!4094939 () Bool)

(assert (=> b!6783753 (= e!4094939 (matchRSpec!3706 (regTwo!33723 lt!2445192) s!2326))))

(declare-fun b!6783754 () Bool)

(declare-fun e!4094936 () Bool)

(assert (=> b!6783754 (= e!4094936 e!4094934)))

(declare-fun res!2772884 () Bool)

(assert (=> b!6783754 (= res!2772884 (not ((_ is EmptyLang!16605) lt!2445192)))))

(assert (=> b!6783754 (=> (not res!2772884) (not e!4094934))))

(declare-fun c!1260382 () Bool)

(declare-fun bm!615558 () Bool)

(assert (=> bm!615558 (= call!615562 (Exists!3673 (ite c!1260382 lambda!381938 lambda!381939)))))

(declare-fun b!6783756 () Bool)

(assert (=> b!6783756 (= e!4094938 (= s!2326 (Cons!65990 (c!1260145 lt!2445192) Nil!65990)))))

(declare-fun b!6783757 () Bool)

(assert (=> b!6783757 (= e!4094933 e!4094937)))

(assert (=> b!6783757 (= c!1260382 ((_ is Star!16605) lt!2445192))))

(declare-fun e!4094935 () Bool)

(assert (=> b!6783758 (= e!4094935 call!615562)))

(declare-fun d!2131276 () Bool)

(declare-fun c!1260379 () Bool)

(assert (=> d!2131276 (= c!1260379 ((_ is EmptyExpr!16605) lt!2445192))))

(assert (=> d!2131276 (= (matchRSpec!3706 lt!2445192 s!2326) e!4094936)))

(declare-fun b!6783755 () Bool)

(declare-fun res!2772885 () Bool)

(assert (=> b!6783755 (=> res!2772885 e!4094935)))

(assert (=> b!6783755 (= res!2772885 call!615563)))

(assert (=> b!6783755 (= e!4094937 e!4094935)))

(declare-fun b!6783759 () Bool)

(assert (=> b!6783759 (= e!4094933 e!4094939)))

(declare-fun res!2772883 () Bool)

(assert (=> b!6783759 (= res!2772883 (matchRSpec!3706 (regOne!33723 lt!2445192) s!2326))))

(assert (=> b!6783759 (=> res!2772883 e!4094939)))

(declare-fun b!6783760 () Bool)

(assert (=> b!6783760 (= e!4094936 call!615563)))

(assert (= (and d!2131276 c!1260379) b!6783760))

(assert (= (and d!2131276 (not c!1260379)) b!6783754))

(assert (= (and b!6783754 res!2772884) b!6783751))

(assert (= (and b!6783751 c!1260380) b!6783756))

(assert (= (and b!6783751 (not c!1260380)) b!6783752))

(assert (= (and b!6783752 c!1260381) b!6783759))

(assert (= (and b!6783752 (not c!1260381)) b!6783757))

(assert (= (and b!6783759 (not res!2772883)) b!6783753))

(assert (= (and b!6783757 c!1260382) b!6783755))

(assert (= (and b!6783757 (not c!1260382)) b!6783750))

(assert (= (and b!6783755 (not res!2772885)) b!6783758))

(assert (= (or b!6783758 b!6783750) bm!615558))

(assert (= (or b!6783760 b!6783755) bm!615557))

(assert (=> bm!615557 m!7531404))

(declare-fun m!7532164 () Bool)

(assert (=> b!6783753 m!7532164))

(declare-fun m!7532166 () Bool)

(assert (=> bm!615558 m!7532166))

(declare-fun m!7532168 () Bool)

(assert (=> b!6783759 m!7532168))

(assert (=> b!6782927 d!2131276))

(declare-fun b!6783761 () Bool)

(declare-fun e!4094944 () Bool)

(assert (=> b!6783761 (= e!4094944 (matchR!8788 (derivativeStep!5269 lt!2445192 (head!13620 s!2326)) (tail!12705 s!2326)))))

(declare-fun b!6783762 () Bool)

(assert (=> b!6783762 (= e!4094944 (nullable!6584 lt!2445192))))

(declare-fun b!6783763 () Bool)

(declare-fun e!4094940 () Bool)

(declare-fun lt!2445343 () Bool)

(assert (=> b!6783763 (= e!4094940 (not lt!2445343))))

(declare-fun b!6783764 () Bool)

(declare-fun e!4094941 () Bool)

(assert (=> b!6783764 (= e!4094941 e!4094940)))

(declare-fun c!1260385 () Bool)

(assert (=> b!6783764 (= c!1260385 ((_ is EmptyLang!16605) lt!2445192))))

(declare-fun b!6783765 () Bool)

(declare-fun res!2772890 () Bool)

(declare-fun e!4094942 () Bool)

(assert (=> b!6783765 (=> (not res!2772890) (not e!4094942))))

(declare-fun call!615564 () Bool)

(assert (=> b!6783765 (= res!2772890 (not call!615564))))

(declare-fun b!6783766 () Bool)

(declare-fun res!2772889 () Bool)

(declare-fun e!4094943 () Bool)

(assert (=> b!6783766 (=> res!2772889 e!4094943)))

(assert (=> b!6783766 (= res!2772889 e!4094942)))

(declare-fun res!2772893 () Bool)

(assert (=> b!6783766 (=> (not res!2772893) (not e!4094942))))

(assert (=> b!6783766 (= res!2772893 lt!2445343)))

(declare-fun b!6783767 () Bool)

(assert (=> b!6783767 (= e!4094941 (= lt!2445343 call!615564))))

(declare-fun b!6783768 () Bool)

(declare-fun e!4094946 () Bool)

(declare-fun e!4094945 () Bool)

(assert (=> b!6783768 (= e!4094946 e!4094945)))

(declare-fun res!2772888 () Bool)

(assert (=> b!6783768 (=> res!2772888 e!4094945)))

(assert (=> b!6783768 (= res!2772888 call!615564)))

(declare-fun b!6783769 () Bool)

(declare-fun res!2772891 () Bool)

(assert (=> b!6783769 (=> res!2772891 e!4094943)))

(assert (=> b!6783769 (= res!2772891 (not ((_ is ElementMatch!16605) lt!2445192)))))

(assert (=> b!6783769 (= e!4094940 e!4094943)))

(declare-fun b!6783770 () Bool)

(assert (=> b!6783770 (= e!4094945 (not (= (head!13620 s!2326) (c!1260145 lt!2445192))))))

(declare-fun b!6783771 () Bool)

(assert (=> b!6783771 (= e!4094942 (= (head!13620 s!2326) (c!1260145 lt!2445192)))))

(declare-fun b!6783772 () Bool)

(assert (=> b!6783772 (= e!4094943 e!4094946)))

(declare-fun res!2772892 () Bool)

(assert (=> b!6783772 (=> (not res!2772892) (not e!4094946))))

(assert (=> b!6783772 (= res!2772892 (not lt!2445343))))

(declare-fun bm!615559 () Bool)

(assert (=> bm!615559 (= call!615564 (isEmpty!38354 s!2326))))

(declare-fun d!2131278 () Bool)

(assert (=> d!2131278 e!4094941))

(declare-fun c!1260383 () Bool)

(assert (=> d!2131278 (= c!1260383 ((_ is EmptyExpr!16605) lt!2445192))))

(assert (=> d!2131278 (= lt!2445343 e!4094944)))

(declare-fun c!1260384 () Bool)

(assert (=> d!2131278 (= c!1260384 (isEmpty!38354 s!2326))))

(assert (=> d!2131278 (validRegex!8341 lt!2445192)))

(assert (=> d!2131278 (= (matchR!8788 lt!2445192 s!2326) lt!2445343)))

(declare-fun b!6783773 () Bool)

(declare-fun res!2772886 () Bool)

(assert (=> b!6783773 (=> res!2772886 e!4094945)))

(assert (=> b!6783773 (= res!2772886 (not (isEmpty!38354 (tail!12705 s!2326))))))

(declare-fun b!6783774 () Bool)

(declare-fun res!2772887 () Bool)

(assert (=> b!6783774 (=> (not res!2772887) (not e!4094942))))

(assert (=> b!6783774 (= res!2772887 (isEmpty!38354 (tail!12705 s!2326)))))

(assert (= (and d!2131278 c!1260384) b!6783762))

(assert (= (and d!2131278 (not c!1260384)) b!6783761))

(assert (= (and d!2131278 c!1260383) b!6783767))

(assert (= (and d!2131278 (not c!1260383)) b!6783764))

(assert (= (and b!6783764 c!1260385) b!6783763))

(assert (= (and b!6783764 (not c!1260385)) b!6783769))

(assert (= (and b!6783769 (not res!2772891)) b!6783766))

(assert (= (and b!6783766 res!2772893) b!6783765))

(assert (= (and b!6783765 res!2772890) b!6783774))

(assert (= (and b!6783774 res!2772887) b!6783771))

(assert (= (and b!6783766 (not res!2772889)) b!6783772))

(assert (= (and b!6783772 res!2772892) b!6783768))

(assert (= (and b!6783768 (not res!2772888)) b!6783773))

(assert (= (and b!6783773 (not res!2772886)) b!6783770))

(assert (= (or b!6783767 b!6783765 b!6783768) bm!615559))

(assert (=> b!6783774 m!7531476))

(assert (=> b!6783774 m!7531476))

(assert (=> b!6783774 m!7531934))

(assert (=> b!6783770 m!7531472))

(assert (=> b!6783773 m!7531476))

(assert (=> b!6783773 m!7531476))

(assert (=> b!6783773 m!7531934))

(assert (=> b!6783761 m!7531472))

(assert (=> b!6783761 m!7531472))

(declare-fun m!7532170 () Bool)

(assert (=> b!6783761 m!7532170))

(assert (=> b!6783761 m!7531476))

(assert (=> b!6783761 m!7532170))

(assert (=> b!6783761 m!7531476))

(declare-fun m!7532172 () Bool)

(assert (=> b!6783761 m!7532172))

(assert (=> d!2131278 m!7531404))

(declare-fun m!7532174 () Bool)

(assert (=> d!2131278 m!7532174))

(declare-fun m!7532176 () Bool)

(assert (=> b!6783762 m!7532176))

(assert (=> bm!615559 m!7531404))

(assert (=> b!6783771 m!7531472))

(assert (=> b!6782927 d!2131278))

(declare-fun d!2131280 () Bool)

(assert (=> d!2131280 (= (matchR!8788 lt!2445192 s!2326) (matchRSpec!3706 lt!2445192 s!2326))))

(declare-fun lt!2445344 () Unit!159901)

(assert (=> d!2131280 (= lt!2445344 (choose!50528 lt!2445192 s!2326))))

(assert (=> d!2131280 (validRegex!8341 lt!2445192)))

(assert (=> d!2131280 (= (mainMatchTheorem!3706 lt!2445192 s!2326) lt!2445344)))

(declare-fun bs!1806793 () Bool)

(assert (= bs!1806793 d!2131280))

(assert (=> bs!1806793 m!7531366))

(assert (=> bs!1806793 m!7531364))

(declare-fun m!7532178 () Bool)

(assert (=> bs!1806793 m!7532178))

(assert (=> bs!1806793 m!7532174))

(assert (=> b!6782927 d!2131280))

(declare-fun d!2131282 () Bool)

(declare-fun res!2772908 () Bool)

(declare-fun e!4094966 () Bool)

(assert (=> d!2131282 (=> res!2772908 e!4094966)))

(assert (=> d!2131282 (= res!2772908 ((_ is ElementMatch!16605) r!7292))))

(assert (=> d!2131282 (= (validRegex!8341 r!7292) e!4094966)))

(declare-fun b!6783793 () Bool)

(declare-fun e!4094967 () Bool)

(assert (=> b!6783793 (= e!4094966 e!4094967)))

(declare-fun c!1260390 () Bool)

(assert (=> b!6783793 (= c!1260390 ((_ is Star!16605) r!7292))))

(declare-fun bm!615566 () Bool)

(declare-fun call!615571 () Bool)

(declare-fun c!1260391 () Bool)

(assert (=> bm!615566 (= call!615571 (validRegex!8341 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))

(declare-fun b!6783794 () Bool)

(declare-fun e!4094962 () Bool)

(declare-fun call!615573 () Bool)

(assert (=> b!6783794 (= e!4094962 call!615573)))

(declare-fun bm!615567 () Bool)

(assert (=> bm!615567 (= call!615573 (validRegex!8341 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(declare-fun b!6783795 () Bool)

(declare-fun e!4094964 () Bool)

(declare-fun e!4094965 () Bool)

(assert (=> b!6783795 (= e!4094964 e!4094965)))

(declare-fun res!2772905 () Bool)

(assert (=> b!6783795 (=> (not res!2772905) (not e!4094965))))

(declare-fun call!615572 () Bool)

(assert (=> b!6783795 (= res!2772905 call!615572)))

(declare-fun b!6783796 () Bool)

(declare-fun res!2772904 () Bool)

(declare-fun e!4094963 () Bool)

(assert (=> b!6783796 (=> (not res!2772904) (not e!4094963))))

(assert (=> b!6783796 (= res!2772904 call!615572)))

(declare-fun e!4094961 () Bool)

(assert (=> b!6783796 (= e!4094961 e!4094963)))

(declare-fun b!6783797 () Bool)

(assert (=> b!6783797 (= e!4094967 e!4094961)))

(assert (=> b!6783797 (= c!1260391 ((_ is Union!16605) r!7292))))

(declare-fun b!6783798 () Bool)

(assert (=> b!6783798 (= e!4094965 call!615571)))

(declare-fun bm!615568 () Bool)

(assert (=> bm!615568 (= call!615572 call!615573)))

(declare-fun b!6783799 () Bool)

(declare-fun res!2772906 () Bool)

(assert (=> b!6783799 (=> res!2772906 e!4094964)))

(assert (=> b!6783799 (= res!2772906 (not ((_ is Concat!25450) r!7292)))))

(assert (=> b!6783799 (= e!4094961 e!4094964)))

(declare-fun b!6783800 () Bool)

(assert (=> b!6783800 (= e!4094963 call!615571)))

(declare-fun b!6783801 () Bool)

(assert (=> b!6783801 (= e!4094967 e!4094962)))

(declare-fun res!2772907 () Bool)

(assert (=> b!6783801 (= res!2772907 (not (nullable!6584 (reg!16934 r!7292))))))

(assert (=> b!6783801 (=> (not res!2772907) (not e!4094962))))

(assert (= (and d!2131282 (not res!2772908)) b!6783793))

(assert (= (and b!6783793 c!1260390) b!6783801))

(assert (= (and b!6783793 (not c!1260390)) b!6783797))

(assert (= (and b!6783801 res!2772907) b!6783794))

(assert (= (and b!6783797 c!1260391) b!6783796))

(assert (= (and b!6783797 (not c!1260391)) b!6783799))

(assert (= (and b!6783796 res!2772904) b!6783800))

(assert (= (and b!6783799 (not res!2772906)) b!6783795))

(assert (= (and b!6783795 res!2772905) b!6783798))

(assert (= (or b!6783800 b!6783798) bm!615566))

(assert (= (or b!6783796 b!6783795) bm!615568))

(assert (= (or b!6783794 bm!615568) bm!615567))

(declare-fun m!7532180 () Bool)

(assert (=> bm!615566 m!7532180))

(declare-fun m!7532182 () Bool)

(assert (=> bm!615567 m!7532182))

(assert (=> b!6783801 m!7531770))

(assert (=> start!656492 d!2131282))

(declare-fun b!6783809 () Bool)

(declare-fun e!4094973 () Bool)

(declare-fun tp!1858388 () Bool)

(assert (=> b!6783809 (= e!4094973 tp!1858388)))

(declare-fun b!6783808 () Bool)

(declare-fun e!4094972 () Bool)

(declare-fun tp!1858389 () Bool)

(assert (=> b!6783808 (= e!4094972 (and (inv!84759 (h!72440 (t!379833 zl!343))) e!4094973 tp!1858389))))

(assert (=> b!6782912 (= tp!1858318 e!4094972)))

(assert (= b!6783808 b!6783809))

(assert (= (and b!6782912 ((_ is Cons!65992) (t!379833 zl!343))) b!6783808))

(declare-fun m!7532184 () Bool)

(assert (=> b!6783808 m!7532184))

(declare-fun condSetEmpty!46409 () Bool)

(assert (=> setNonEmpty!46403 (= condSetEmpty!46409 (= setRest!46403 ((as const (Array Context!11978 Bool)) false)))))

(declare-fun setRes!46409 () Bool)

(assert (=> setNonEmpty!46403 (= tp!1858317 setRes!46409)))

(declare-fun setIsEmpty!46409 () Bool)

(assert (=> setIsEmpty!46409 setRes!46409))

(declare-fun tp!1858394 () Bool)

(declare-fun e!4094976 () Bool)

(declare-fun setElem!46409 () Context!11978)

(declare-fun setNonEmpty!46409 () Bool)

(assert (=> setNonEmpty!46409 (= setRes!46409 (and tp!1858394 (inv!84759 setElem!46409) e!4094976))))

(declare-fun setRest!46409 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46409 (= setRest!46403 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46409 true) setRest!46409))))

(declare-fun b!6783814 () Bool)

(declare-fun tp!1858395 () Bool)

(assert (=> b!6783814 (= e!4094976 tp!1858395)))

(assert (= (and setNonEmpty!46403 condSetEmpty!46409) setIsEmpty!46409))

(assert (= (and setNonEmpty!46403 (not condSetEmpty!46409)) setNonEmpty!46409))

(assert (= setNonEmpty!46409 b!6783814))

(declare-fun m!7532186 () Bool)

(assert (=> setNonEmpty!46409 m!7532186))

(declare-fun e!4094979 () Bool)

(assert (=> b!6782924 (= tp!1858322 e!4094979)))

(declare-fun b!6783826 () Bool)

(declare-fun tp!1858408 () Bool)

(declare-fun tp!1858410 () Bool)

(assert (=> b!6783826 (= e!4094979 (and tp!1858408 tp!1858410))))

(declare-fun b!6783827 () Bool)

(declare-fun tp!1858409 () Bool)

(assert (=> b!6783827 (= e!4094979 tp!1858409)))

(declare-fun b!6783825 () Bool)

(assert (=> b!6783825 (= e!4094979 tp_is_empty!42463)))

(declare-fun b!6783828 () Bool)

(declare-fun tp!1858406 () Bool)

(declare-fun tp!1858407 () Bool)

(assert (=> b!6783828 (= e!4094979 (and tp!1858406 tp!1858407))))

(assert (= (and b!6782924 ((_ is ElementMatch!16605) (regOne!33723 r!7292))) b!6783825))

(assert (= (and b!6782924 ((_ is Concat!25450) (regOne!33723 r!7292))) b!6783826))

(assert (= (and b!6782924 ((_ is Star!16605) (regOne!33723 r!7292))) b!6783827))

(assert (= (and b!6782924 ((_ is Union!16605) (regOne!33723 r!7292))) b!6783828))

(declare-fun e!4094980 () Bool)

(assert (=> b!6782924 (= tp!1858324 e!4094980)))

(declare-fun b!6783830 () Bool)

(declare-fun tp!1858413 () Bool)

(declare-fun tp!1858415 () Bool)

(assert (=> b!6783830 (= e!4094980 (and tp!1858413 tp!1858415))))

(declare-fun b!6783831 () Bool)

(declare-fun tp!1858414 () Bool)

(assert (=> b!6783831 (= e!4094980 tp!1858414)))

(declare-fun b!6783829 () Bool)

(assert (=> b!6783829 (= e!4094980 tp_is_empty!42463)))

(declare-fun b!6783832 () Bool)

(declare-fun tp!1858411 () Bool)

(declare-fun tp!1858412 () Bool)

(assert (=> b!6783832 (= e!4094980 (and tp!1858411 tp!1858412))))

(assert (= (and b!6782924 ((_ is ElementMatch!16605) (regTwo!33723 r!7292))) b!6783829))

(assert (= (and b!6782924 ((_ is Concat!25450) (regTwo!33723 r!7292))) b!6783830))

(assert (= (and b!6782924 ((_ is Star!16605) (regTwo!33723 r!7292))) b!6783831))

(assert (= (and b!6782924 ((_ is Union!16605) (regTwo!33723 r!7292))) b!6783832))

(declare-fun b!6783837 () Bool)

(declare-fun e!4094983 () Bool)

(declare-fun tp!1858420 () Bool)

(declare-fun tp!1858421 () Bool)

(assert (=> b!6783837 (= e!4094983 (and tp!1858420 tp!1858421))))

(assert (=> b!6782909 (= tp!1858323 e!4094983)))

(assert (= (and b!6782909 ((_ is Cons!65991) (exprs!6489 (h!72440 zl!343)))) b!6783837))

(declare-fun e!4094984 () Bool)

(assert (=> b!6782900 (= tp!1858325 e!4094984)))

(declare-fun b!6783839 () Bool)

(declare-fun tp!1858424 () Bool)

(declare-fun tp!1858426 () Bool)

(assert (=> b!6783839 (= e!4094984 (and tp!1858424 tp!1858426))))

(declare-fun b!6783840 () Bool)

(declare-fun tp!1858425 () Bool)

(assert (=> b!6783840 (= e!4094984 tp!1858425)))

(declare-fun b!6783838 () Bool)

(assert (=> b!6783838 (= e!4094984 tp_is_empty!42463)))

(declare-fun b!6783841 () Bool)

(declare-fun tp!1858422 () Bool)

(declare-fun tp!1858423 () Bool)

(assert (=> b!6783841 (= e!4094984 (and tp!1858422 tp!1858423))))

(assert (= (and b!6782900 ((_ is ElementMatch!16605) (regOne!33722 r!7292))) b!6783838))

(assert (= (and b!6782900 ((_ is Concat!25450) (regOne!33722 r!7292))) b!6783839))

(assert (= (and b!6782900 ((_ is Star!16605) (regOne!33722 r!7292))) b!6783840))

(assert (= (and b!6782900 ((_ is Union!16605) (regOne!33722 r!7292))) b!6783841))

(declare-fun e!4094985 () Bool)

(assert (=> b!6782900 (= tp!1858320 e!4094985)))

(declare-fun b!6783843 () Bool)

(declare-fun tp!1858429 () Bool)

(declare-fun tp!1858431 () Bool)

(assert (=> b!6783843 (= e!4094985 (and tp!1858429 tp!1858431))))

(declare-fun b!6783844 () Bool)

(declare-fun tp!1858430 () Bool)

(assert (=> b!6783844 (= e!4094985 tp!1858430)))

(declare-fun b!6783842 () Bool)

(assert (=> b!6783842 (= e!4094985 tp_is_empty!42463)))

(declare-fun b!6783845 () Bool)

(declare-fun tp!1858427 () Bool)

(declare-fun tp!1858428 () Bool)

(assert (=> b!6783845 (= e!4094985 (and tp!1858427 tp!1858428))))

(assert (= (and b!6782900 ((_ is ElementMatch!16605) (regTwo!33722 r!7292))) b!6783842))

(assert (= (and b!6782900 ((_ is Concat!25450) (regTwo!33722 r!7292))) b!6783843))

(assert (= (and b!6782900 ((_ is Star!16605) (regTwo!33722 r!7292))) b!6783844))

(assert (= (and b!6782900 ((_ is Union!16605) (regTwo!33722 r!7292))) b!6783845))

(declare-fun b!6783850 () Bool)

(declare-fun e!4094988 () Bool)

(declare-fun tp!1858434 () Bool)

(assert (=> b!6783850 (= e!4094988 (and tp_is_empty!42463 tp!1858434))))

(assert (=> b!6782931 (= tp!1858316 e!4094988)))

(assert (= (and b!6782931 ((_ is Cons!65990) (t!379831 s!2326))) b!6783850))

(declare-fun b!6783851 () Bool)

(declare-fun e!4094989 () Bool)

(declare-fun tp!1858435 () Bool)

(declare-fun tp!1858436 () Bool)

(assert (=> b!6783851 (= e!4094989 (and tp!1858435 tp!1858436))))

(assert (=> b!6782933 (= tp!1858319 e!4094989)))

(assert (= (and b!6782933 ((_ is Cons!65991) (exprs!6489 setElem!46403))) b!6783851))

(declare-fun e!4094990 () Bool)

(assert (=> b!6782907 (= tp!1858321 e!4094990)))

(declare-fun b!6783853 () Bool)

(declare-fun tp!1858439 () Bool)

(declare-fun tp!1858441 () Bool)

(assert (=> b!6783853 (= e!4094990 (and tp!1858439 tp!1858441))))

(declare-fun b!6783854 () Bool)

(declare-fun tp!1858440 () Bool)

(assert (=> b!6783854 (= e!4094990 tp!1858440)))

(declare-fun b!6783852 () Bool)

(assert (=> b!6783852 (= e!4094990 tp_is_empty!42463)))

(declare-fun b!6783855 () Bool)

(declare-fun tp!1858437 () Bool)

(declare-fun tp!1858438 () Bool)

(assert (=> b!6783855 (= e!4094990 (and tp!1858437 tp!1858438))))

(assert (= (and b!6782907 ((_ is ElementMatch!16605) (reg!16934 r!7292))) b!6783852))

(assert (= (and b!6782907 ((_ is Concat!25450) (reg!16934 r!7292))) b!6783853))

(assert (= (and b!6782907 ((_ is Star!16605) (reg!16934 r!7292))) b!6783854))

(assert (= (and b!6782907 ((_ is Union!16605) (reg!16934 r!7292))) b!6783855))

(declare-fun b_lambda!255443 () Bool)

(assert (= b_lambda!255419 (or b!6782908 b_lambda!255443)))

(declare-fun bs!1806794 () Bool)

(declare-fun d!2131284 () Bool)

(assert (= bs!1806794 (and d!2131284 b!6782908)))

(assert (=> bs!1806794 (= (dynLambda!26333 lambda!381850 lt!2445202) (derivationStepZipperUp!1759 lt!2445202 (h!72438 s!2326)))))

(assert (=> bs!1806794 m!7531378))

(assert (=> d!2131100 d!2131284))

(declare-fun b_lambda!255445 () Bool)

(assert (= b_lambda!255423 (or b!6782908 b_lambda!255445)))

(declare-fun bs!1806795 () Bool)

(declare-fun d!2131286 () Bool)

(assert (= bs!1806795 (and d!2131286 b!6782908)))

(assert (=> bs!1806795 (= (dynLambda!26333 lambda!381850 (h!72440 zl!343)) (derivationStepZipperUp!1759 (h!72440 zl!343) (h!72438 s!2326)))))

(assert (=> bs!1806795 m!7531374))

(assert (=> d!2131156 d!2131286))

(declare-fun b_lambda!255447 () Bool)

(assert (= b_lambda!255427 (or b!6782908 b_lambda!255447)))

(declare-fun bs!1806796 () Bool)

(declare-fun d!2131288 () Bool)

(assert (= bs!1806796 (and d!2131288 b!6782908)))

(assert (=> bs!1806796 (= (dynLambda!26333 lambda!381850 lt!2445169) (derivationStepZipperUp!1759 lt!2445169 (h!72438 s!2326)))))

(assert (=> bs!1806796 m!7531336))

(assert (=> d!2131204 d!2131288))

(declare-fun b_lambda!255449 () Bool)

(assert (= b_lambda!255429 (or b!6782908 b_lambda!255449)))

(declare-fun bs!1806797 () Bool)

(declare-fun d!2131290 () Bool)

(assert (= bs!1806797 (and d!2131290 b!6782908)))

(assert (=> bs!1806797 (= (dynLambda!26333 lambda!381850 lt!2445187) (derivationStepZipperUp!1759 lt!2445187 (h!72438 s!2326)))))

(assert (=> bs!1806797 m!7531328))

(assert (=> d!2131214 d!2131290))

(check-sat (not d!2131210) (not b_lambda!255443) (not b!6783704) (not d!2131058) (not b!6783830) (not b!6783300) (not b!6783701) (not d!2131278) (not b!6783831) (not b!6782947) (not b!6783827) (not b!6783467) (not d!2131216) (not b!6783139) (not bm!615523) (not b_lambda!255449) (not b!6783753) (not b!6783844) (not b!6783761) (not b_lambda!255445) (not b!6783346) (not b!6783483) (not d!2131112) (not bm!615532) (not d!2131038) (not b!6783737) (not b!6783224) (not d!2131142) (not b!6783464) (not d!2131166) (not b!6783466) (not b!6783700) (not bm!615542) (not d!2131156) (not b_lambda!255447) (not d!2131220) (not d!2131212) (not d!2131134) (not b!6783742) (not b!6783437) (not b!6782946) (not b!6783138) (not d!2131054) (not bm!615506) (not bm!615539) (not b!6783247) (not b!6783228) (not b!6783370) (not b!6782948) (not d!2131208) (not d!2131046) (not d!2131042) (not d!2131130) (not b!6783221) (not bs!1806797) (not d!2131044) (not b!6783484) (not b!6783301) (not bm!615531) (not d!2131266) (not b!6783843) (not b!6783841) (not b!6783736) (not bm!615558) (not d!2131102) (not b!6783703) (not b!6783808) (not b!6783762) (not d!2131040) (not b!6783712) (not b!6783318) (not b!6783773) (not b!6783298) (not d!2131088) (not b!6783771) (not b!6783219) (not b!6783734) (not b!6783308) (not b!6783748) (not bm!615544) (not bm!615557) (not bm!615559) (not b!6783774) (not d!2131270) (not b!6783320) (not b!6783222) (not setNonEmpty!46409) (not bm!615497) (not d!2131194) (not b!6783463) (not b!6783740) (not d!2131128) (not d!2131262) (not d!2131228) (not b!6783854) (not b!6783741) (not b!6783801) (not b!6783711) (not d!2131272) (not bm!615499) (not b!6783853) (not bm!615525) (not b!6783454) (not b!6783317) (not d!2131260) (not b!6783845) tp_is_empty!42463 (not b!6783839) (not b!6782944) (not d!2131246) (not d!2131214) (not b!6783369) (not b!6783225) (not bm!615567) (not bm!615530) (not d!2131204) (not d!2131056) (not d!2131100) (not d!2131132) (not d!2131124) (not bm!615529) (not b!6782949) (not b!6783738) (not b!6783345) (not b!6783826) (not d!2131274) (not b!6783770) (not b!6783828) (not b!6782962) (not b!6783710) (not b!6783065) (not b!6783288) (not b!6783814) (not bm!615545) (not d!2131148) (not b!6783850) (not d!2131152) (not b!6783455) (not bm!615566) (not b!6783362) (not d!2131036) (not d!2131146) (not b!6783759) (not b!6783297) (not b!6783837) (not bm!615538) (not b!6783332) (not b!6783855) (not bs!1806794) (not b!6783705) (not d!2131162) (not b!6783489) (not b!6782963) (not b!6783309) (not b!6782959) (not d!2131192) (not bs!1806796) (not d!2131144) (not b!6782945) (not b!6783832) (not b!6782960) (not d!2131248) (not b!6783840) (not d!2131280) (not b!6783809) (not b!6783713) (not b!6783698) (not b!6783488) (not b!6783431) (not b!6783321) (not bm!615498) (not b!6783331) (not b!6783220) (not d!2131268) (not bs!1806795) (not b!6783851) (not bm!615524) (not b!6783289))
(check-sat)
(get-model)

(declare-fun d!2131662 () Bool)

(assert (=> d!2131662 (= (isConcat!1485 lt!2445250) ((_ is Concat!25450) lt!2445250))))

(assert (=> b!6783222 d!2131662))

(declare-fun bs!1807203 () Bool)

(declare-fun d!2131664 () Bool)

(assert (= bs!1807203 (and d!2131664 d!2131134)))

(declare-fun lambda!381991 () Int)

(assert (=> bs!1807203 (= lambda!381991 lambda!381884)))

(declare-fun bs!1807204 () Bool)

(assert (= bs!1807204 (and d!2131664 b!6782898)))

(assert (=> bs!1807204 (= lambda!381991 lambda!381851)))

(declare-fun bs!1807205 () Bool)

(assert (= bs!1807205 (and d!2131664 d!2131102)))

(assert (=> bs!1807205 (= lambda!381991 lambda!381869)))

(declare-fun bs!1807206 () Bool)

(assert (= bs!1807206 (and d!2131664 d!2131058)))

(assert (=> bs!1807206 (= lambda!381991 lambda!381857)))

(declare-fun bs!1807207 () Bool)

(assert (= bs!1807207 (and d!2131664 d!2131272)))

(assert (=> bs!1807207 (= lambda!381991 lambda!381934)))

(declare-fun bs!1807208 () Bool)

(assert (= bs!1807208 (and d!2131664 d!2131166)))

(assert (=> bs!1807208 (= lambda!381991 lambda!381888)))

(declare-fun bs!1807209 () Bool)

(assert (= bs!1807209 (and d!2131664 d!2131274)))

(assert (=> bs!1807209 (= lambda!381991 lambda!381937)))

(assert (=> d!2131664 (= (inv!84759 setElem!46409) (forall!15797 (exprs!6489 setElem!46409) lambda!381991))))

(declare-fun bs!1807210 () Bool)

(assert (= bs!1807210 d!2131664))

(declare-fun m!7532976 () Bool)

(assert (=> bs!1807210 m!7532976))

(assert (=> setNonEmpty!46409 d!2131664))

(declare-fun d!2131666 () Bool)

(declare-fun res!2773135 () Bool)

(declare-fun e!4095407 () Bool)

(assert (=> d!2131666 (=> res!2773135 e!4095407)))

(assert (=> d!2131666 (= res!2773135 ((_ is Nil!65991) (exprs!6489 setElem!46403)))))

(assert (=> d!2131666 (= (forall!15797 (exprs!6489 setElem!46403) lambda!381888) e!4095407)))

(declare-fun b!6784606 () Bool)

(declare-fun e!4095408 () Bool)

(assert (=> b!6784606 (= e!4095407 e!4095408)))

(declare-fun res!2773136 () Bool)

(assert (=> b!6784606 (=> (not res!2773136) (not e!4095408))))

(declare-fun dynLambda!26336 (Int Regex!16605) Bool)

(assert (=> b!6784606 (= res!2773136 (dynLambda!26336 lambda!381888 (h!72439 (exprs!6489 setElem!46403))))))

(declare-fun b!6784607 () Bool)

(assert (=> b!6784607 (= e!4095408 (forall!15797 (t!379832 (exprs!6489 setElem!46403)) lambda!381888))))

(assert (= (and d!2131666 (not res!2773135)) b!6784606))

(assert (= (and b!6784606 res!2773136) b!6784607))

(declare-fun b_lambda!255495 () Bool)

(assert (=> (not b_lambda!255495) (not b!6784606)))

(declare-fun m!7532978 () Bool)

(assert (=> b!6784606 m!7532978))

(declare-fun m!7532980 () Bool)

(assert (=> b!6784607 m!7532980))

(assert (=> d!2131166 d!2131666))

(declare-fun bs!1807211 () Bool)

(declare-fun b!6784616 () Bool)

(assert (= bs!1807211 (and b!6784616 d!2131216)))

(declare-fun lambda!381992 () Int)

(assert (=> bs!1807211 (= (and (= (reg!16934 (regOne!33723 r!7292)) (reg!16934 r!7292)) (= (regOne!33723 r!7292) (Star!16605 (reg!16934 r!7292)))) (= lambda!381992 lambda!381913))))

(declare-fun bs!1807212 () Bool)

(assert (= bs!1807212 (and b!6784616 b!6783750)))

(assert (=> bs!1807212 (not (= lambda!381992 lambda!381939))))

(assert (=> bs!1807211 (not (= lambda!381992 lambda!381912))))

(declare-fun bs!1807213 () Bool)

(assert (= bs!1807213 (and b!6784616 b!6783436)))

(assert (=> bs!1807213 (= (and (= (reg!16934 (regOne!33723 r!7292)) (reg!16934 r!7292)) (= (regOne!33723 r!7292) r!7292)) (= lambda!381992 lambda!381899))))

(declare-fun bs!1807214 () Bool)

(assert (= bs!1807214 (and b!6784616 d!2131228)))

(assert (=> bs!1807214 (not (= lambda!381992 lambda!381920))))

(declare-fun bs!1807215 () Bool)

(assert (= bs!1807215 (and b!6784616 b!6783428)))

(assert (=> bs!1807215 (not (= lambda!381992 lambda!381902))))

(declare-fun bs!1807216 () Bool)

(assert (= bs!1807216 (and b!6784616 b!6783758)))

(assert (=> bs!1807216 (= (and (= (reg!16934 (regOne!33723 r!7292)) (reg!16934 lt!2445192)) (= (regOne!33723 r!7292) lt!2445192)) (= lambda!381992 lambda!381938))))

(declare-fun bs!1807217 () Bool)

(assert (= bs!1807217 (and b!6784616 b!6782923)))

(assert (=> bs!1807217 (not (= lambda!381992 lambda!381849))))

(declare-fun bs!1807218 () Bool)

(assert (= bs!1807218 (and b!6784616 d!2131260)))

(assert (=> bs!1807218 (not (= lambda!381992 lambda!381930))))

(assert (=> bs!1807217 (= (and (= (reg!16934 (regOne!33723 r!7292)) (reg!16934 r!7292)) (= (regOne!33723 r!7292) r!7292)) (= lambda!381992 lambda!381848))))

(assert (=> bs!1807214 (not (= lambda!381992 lambda!381921))))

(assert (=> bs!1807217 (not (= lambda!381992 lambda!381847))))

(assert (=> b!6784616 true))

(assert (=> b!6784616 true))

(declare-fun bs!1807219 () Bool)

(declare-fun b!6784608 () Bool)

(assert (= bs!1807219 (and b!6784608 d!2131216)))

(declare-fun lambda!381993 () Int)

(assert (=> bs!1807219 (not (= lambda!381993 lambda!381913))))

(assert (=> bs!1807219 (not (= lambda!381993 lambda!381912))))

(declare-fun bs!1807220 () Bool)

(assert (= bs!1807220 (and b!6784608 b!6783436)))

(assert (=> bs!1807220 (not (= lambda!381993 lambda!381899))))

(declare-fun bs!1807221 () Bool)

(assert (= bs!1807221 (and b!6784608 d!2131228)))

(assert (=> bs!1807221 (not (= lambda!381993 lambda!381920))))

(declare-fun bs!1807222 () Bool)

(assert (= bs!1807222 (and b!6784608 b!6783428)))

(assert (=> bs!1807222 (= (and (= (regOne!33722 (regOne!33723 r!7292)) (regOne!33722 r!7292)) (= (regTwo!33722 (regOne!33723 r!7292)) (regTwo!33722 r!7292))) (= lambda!381993 lambda!381902))))

(declare-fun bs!1807223 () Bool)

(assert (= bs!1807223 (and b!6784608 b!6783758)))

(assert (=> bs!1807223 (not (= lambda!381993 lambda!381938))))

(declare-fun bs!1807224 () Bool)

(assert (= bs!1807224 (and b!6784608 b!6782923)))

(assert (=> bs!1807224 (= (and (= (regOne!33722 (regOne!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33722 (regOne!33723 r!7292)) r!7292)) (= lambda!381993 lambda!381849))))

(declare-fun bs!1807225 () Bool)

(assert (= bs!1807225 (and b!6784608 d!2131260)))

(assert (=> bs!1807225 (not (= lambda!381993 lambda!381930))))

(assert (=> bs!1807224 (not (= lambda!381993 lambda!381848))))

(declare-fun bs!1807226 () Bool)

(assert (= bs!1807226 (and b!6784608 b!6784616)))

(assert (=> bs!1807226 (not (= lambda!381993 lambda!381992))))

(declare-fun bs!1807227 () Bool)

(assert (= bs!1807227 (and b!6784608 b!6783750)))

(assert (=> bs!1807227 (= (and (= (regOne!33722 (regOne!33723 r!7292)) (regOne!33722 lt!2445192)) (= (regTwo!33722 (regOne!33723 r!7292)) (regTwo!33722 lt!2445192))) (= lambda!381993 lambda!381939))))

(assert (=> bs!1807221 (= (and (= (regOne!33722 (regOne!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33722 (regOne!33723 r!7292)) r!7292)) (= lambda!381993 lambda!381921))))

(assert (=> bs!1807224 (not (= lambda!381993 lambda!381847))))

(assert (=> b!6784608 true))

(assert (=> b!6784608 true))

(declare-fun e!4095413 () Bool)

(declare-fun call!615702 () Bool)

(assert (=> b!6784608 (= e!4095413 call!615702)))

(declare-fun bm!615697 () Bool)

(declare-fun call!615703 () Bool)

(assert (=> bm!615697 (= call!615703 (isEmpty!38354 s!2326))))

(declare-fun b!6784609 () Bool)

(declare-fun c!1260600 () Bool)

(assert (=> b!6784609 (= c!1260600 ((_ is ElementMatch!16605) (regOne!33723 r!7292)))))

(declare-fun e!4095410 () Bool)

(declare-fun e!4095414 () Bool)

(assert (=> b!6784609 (= e!4095410 e!4095414)))

(declare-fun b!6784610 () Bool)

(declare-fun c!1260601 () Bool)

(assert (=> b!6784610 (= c!1260601 ((_ is Union!16605) (regOne!33723 r!7292)))))

(declare-fun e!4095409 () Bool)

(assert (=> b!6784610 (= e!4095414 e!4095409)))

(declare-fun b!6784611 () Bool)

(declare-fun e!4095415 () Bool)

(assert (=> b!6784611 (= e!4095415 (matchRSpec!3706 (regTwo!33723 (regOne!33723 r!7292)) s!2326))))

(declare-fun b!6784612 () Bool)

(declare-fun e!4095412 () Bool)

(assert (=> b!6784612 (= e!4095412 e!4095410)))

(declare-fun res!2773138 () Bool)

(assert (=> b!6784612 (= res!2773138 (not ((_ is EmptyLang!16605) (regOne!33723 r!7292))))))

(assert (=> b!6784612 (=> (not res!2773138) (not e!4095410))))

(declare-fun bm!615698 () Bool)

(declare-fun c!1260602 () Bool)

(assert (=> bm!615698 (= call!615702 (Exists!3673 (ite c!1260602 lambda!381992 lambda!381993)))))

(declare-fun b!6784614 () Bool)

(assert (=> b!6784614 (= e!4095414 (= s!2326 (Cons!65990 (c!1260145 (regOne!33723 r!7292)) Nil!65990)))))

(declare-fun b!6784615 () Bool)

(assert (=> b!6784615 (= e!4095409 e!4095413)))

(assert (=> b!6784615 (= c!1260602 ((_ is Star!16605) (regOne!33723 r!7292)))))

(declare-fun e!4095411 () Bool)

(assert (=> b!6784616 (= e!4095411 call!615702)))

(declare-fun d!2131668 () Bool)

(declare-fun c!1260599 () Bool)

(assert (=> d!2131668 (= c!1260599 ((_ is EmptyExpr!16605) (regOne!33723 r!7292)))))

(assert (=> d!2131668 (= (matchRSpec!3706 (regOne!33723 r!7292) s!2326) e!4095412)))

(declare-fun b!6784613 () Bool)

(declare-fun res!2773139 () Bool)

(assert (=> b!6784613 (=> res!2773139 e!4095411)))

(assert (=> b!6784613 (= res!2773139 call!615703)))

(assert (=> b!6784613 (= e!4095413 e!4095411)))

(declare-fun b!6784617 () Bool)

(assert (=> b!6784617 (= e!4095409 e!4095415)))

(declare-fun res!2773137 () Bool)

(assert (=> b!6784617 (= res!2773137 (matchRSpec!3706 (regOne!33723 (regOne!33723 r!7292)) s!2326))))

(assert (=> b!6784617 (=> res!2773137 e!4095415)))

(declare-fun b!6784618 () Bool)

(assert (=> b!6784618 (= e!4095412 call!615703)))

(assert (= (and d!2131668 c!1260599) b!6784618))

(assert (= (and d!2131668 (not c!1260599)) b!6784612))

(assert (= (and b!6784612 res!2773138) b!6784609))

(assert (= (and b!6784609 c!1260600) b!6784614))

(assert (= (and b!6784609 (not c!1260600)) b!6784610))

(assert (= (and b!6784610 c!1260601) b!6784617))

(assert (= (and b!6784610 (not c!1260601)) b!6784615))

(assert (= (and b!6784617 (not res!2773137)) b!6784611))

(assert (= (and b!6784615 c!1260602) b!6784613))

(assert (= (and b!6784615 (not c!1260602)) b!6784608))

(assert (= (and b!6784613 (not res!2773139)) b!6784616))

(assert (= (or b!6784616 b!6784608) bm!615698))

(assert (= (or b!6784618 b!6784613) bm!615697))

(assert (=> bm!615697 m!7531404))

(declare-fun m!7532982 () Bool)

(assert (=> b!6784611 m!7532982))

(declare-fun m!7532984 () Bool)

(assert (=> bm!615698 m!7532984))

(declare-fun m!7532986 () Bool)

(assert (=> b!6784617 m!7532986))

(assert (=> b!6783437 d!2131668))

(declare-fun b!6784619 () Bool)

(declare-fun e!4095420 () Bool)

(assert (=> b!6784619 (= e!4095420 (matchR!8788 (derivativeStep!5269 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))) (head!13620 (tail!12705 (_2!36883 lt!2445168)))) (tail!12705 (tail!12705 (_2!36883 lt!2445168)))))))

(declare-fun b!6784620 () Bool)

(assert (=> b!6784620 (= e!4095420 (nullable!6584 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168)))))))

(declare-fun b!6784621 () Bool)

(declare-fun e!4095416 () Bool)

(declare-fun lt!2445393 () Bool)

(assert (=> b!6784621 (= e!4095416 (not lt!2445393))))

(declare-fun b!6784622 () Bool)

(declare-fun e!4095417 () Bool)

(assert (=> b!6784622 (= e!4095417 e!4095416)))

(declare-fun c!1260605 () Bool)

(assert (=> b!6784622 (= c!1260605 ((_ is EmptyLang!16605) (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168)))))))

(declare-fun b!6784623 () Bool)

(declare-fun res!2773144 () Bool)

(declare-fun e!4095418 () Bool)

(assert (=> b!6784623 (=> (not res!2773144) (not e!4095418))))

(declare-fun call!615704 () Bool)

(assert (=> b!6784623 (= res!2773144 (not call!615704))))

(declare-fun b!6784624 () Bool)

(declare-fun res!2773143 () Bool)

(declare-fun e!4095419 () Bool)

(assert (=> b!6784624 (=> res!2773143 e!4095419)))

(assert (=> b!6784624 (= res!2773143 e!4095418)))

(declare-fun res!2773147 () Bool)

(assert (=> b!6784624 (=> (not res!2773147) (not e!4095418))))

(assert (=> b!6784624 (= res!2773147 lt!2445393)))

(declare-fun b!6784625 () Bool)

(assert (=> b!6784625 (= e!4095417 (= lt!2445393 call!615704))))

(declare-fun b!6784626 () Bool)

(declare-fun e!4095422 () Bool)

(declare-fun e!4095421 () Bool)

(assert (=> b!6784626 (= e!4095422 e!4095421)))

(declare-fun res!2773142 () Bool)

(assert (=> b!6784626 (=> res!2773142 e!4095421)))

(assert (=> b!6784626 (= res!2773142 call!615704)))

(declare-fun b!6784627 () Bool)

(declare-fun res!2773145 () Bool)

(assert (=> b!6784627 (=> res!2773145 e!4095419)))

(assert (=> b!6784627 (= res!2773145 (not ((_ is ElementMatch!16605) (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))))))))

(assert (=> b!6784627 (= e!4095416 e!4095419)))

(declare-fun b!6784628 () Bool)

(assert (=> b!6784628 (= e!4095421 (not (= (head!13620 (tail!12705 (_2!36883 lt!2445168))) (c!1260145 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168)))))))))

(declare-fun b!6784629 () Bool)

(assert (=> b!6784629 (= e!4095418 (= (head!13620 (tail!12705 (_2!36883 lt!2445168))) (c!1260145 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))))))))

(declare-fun b!6784630 () Bool)

(assert (=> b!6784630 (= e!4095419 e!4095422)))

(declare-fun res!2773146 () Bool)

(assert (=> b!6784630 (=> (not res!2773146) (not e!4095422))))

(assert (=> b!6784630 (= res!2773146 (not lt!2445393))))

(declare-fun bm!615699 () Bool)

(assert (=> bm!615699 (= call!615704 (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168))))))

(declare-fun d!2131670 () Bool)

(assert (=> d!2131670 e!4095417))

(declare-fun c!1260603 () Bool)

(assert (=> d!2131670 (= c!1260603 ((_ is EmptyExpr!16605) (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168)))))))

(assert (=> d!2131670 (= lt!2445393 e!4095420)))

(declare-fun c!1260604 () Bool)

(assert (=> d!2131670 (= c!1260604 (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168))))))

(assert (=> d!2131670 (validRegex!8341 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))))))

(assert (=> d!2131670 (= (matchR!8788 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))) (tail!12705 (_2!36883 lt!2445168))) lt!2445393)))

(declare-fun b!6784631 () Bool)

(declare-fun res!2773140 () Bool)

(assert (=> b!6784631 (=> res!2773140 e!4095421)))

(assert (=> b!6784631 (= res!2773140 (not (isEmpty!38354 (tail!12705 (tail!12705 (_2!36883 lt!2445168))))))))

(declare-fun b!6784632 () Bool)

(declare-fun res!2773141 () Bool)

(assert (=> b!6784632 (=> (not res!2773141) (not e!4095418))))

(assert (=> b!6784632 (= res!2773141 (isEmpty!38354 (tail!12705 (tail!12705 (_2!36883 lt!2445168)))))))

(assert (= (and d!2131670 c!1260604) b!6784620))

(assert (= (and d!2131670 (not c!1260604)) b!6784619))

(assert (= (and d!2131670 c!1260603) b!6784625))

(assert (= (and d!2131670 (not c!1260603)) b!6784622))

(assert (= (and b!6784622 c!1260605) b!6784621))

(assert (= (and b!6784622 (not c!1260605)) b!6784627))

(assert (= (and b!6784627 (not res!2773145)) b!6784624))

(assert (= (and b!6784624 res!2773147) b!6784623))

(assert (= (and b!6784623 res!2773144) b!6784632))

(assert (= (and b!6784632 res!2773141) b!6784629))

(assert (= (and b!6784624 (not res!2773143)) b!6784630))

(assert (= (and b!6784630 res!2773146) b!6784626))

(assert (= (and b!6784626 (not res!2773142)) b!6784631))

(assert (= (and b!6784631 (not res!2773140)) b!6784628))

(assert (= (or b!6784625 b!6784623 b!6784626) bm!615699))

(assert (=> b!6784632 m!7531488))

(declare-fun m!7532988 () Bool)

(assert (=> b!6784632 m!7532988))

(assert (=> b!6784632 m!7532988))

(declare-fun m!7532990 () Bool)

(assert (=> b!6784632 m!7532990))

(assert (=> b!6784628 m!7531488))

(declare-fun m!7532992 () Bool)

(assert (=> b!6784628 m!7532992))

(assert (=> b!6784631 m!7531488))

(assert (=> b!6784631 m!7532988))

(assert (=> b!6784631 m!7532988))

(assert (=> b!6784631 m!7532990))

(assert (=> b!6784619 m!7531488))

(assert (=> b!6784619 m!7532992))

(assert (=> b!6784619 m!7531758))

(assert (=> b!6784619 m!7532992))

(declare-fun m!7532994 () Bool)

(assert (=> b!6784619 m!7532994))

(assert (=> b!6784619 m!7531488))

(assert (=> b!6784619 m!7532988))

(assert (=> b!6784619 m!7532994))

(assert (=> b!6784619 m!7532988))

(declare-fun m!7532996 () Bool)

(assert (=> b!6784619 m!7532996))

(assert (=> d!2131670 m!7531488))

(assert (=> d!2131670 m!7531756))

(assert (=> d!2131670 m!7531758))

(declare-fun m!7532998 () Bool)

(assert (=> d!2131670 m!7532998))

(assert (=> b!6784620 m!7531758))

(declare-fun m!7533000 () Bool)

(assert (=> b!6784620 m!7533000))

(assert (=> bm!615699 m!7531488))

(assert (=> bm!615699 m!7531756))

(assert (=> b!6784629 m!7531488))

(assert (=> b!6784629 m!7532992))

(assert (=> b!6783288 d!2131670))

(declare-fun b!6784653 () Bool)

(declare-fun e!4095435 () Regex!16605)

(declare-fun e!4095434 () Regex!16605)

(assert (=> b!6784653 (= e!4095435 e!4095434)))

(declare-fun c!1260617 () Bool)

(assert (=> b!6784653 (= c!1260617 ((_ is Star!16605) r!7292))))

(declare-fun b!6784654 () Bool)

(declare-fun c!1260619 () Bool)

(assert (=> b!6784654 (= c!1260619 (nullable!6584 (regOne!33722 r!7292)))))

(declare-fun e!4095433 () Regex!16605)

(assert (=> b!6784654 (= e!4095434 e!4095433)))

(declare-fun b!6784655 () Bool)

(declare-fun call!615715 () Regex!16605)

(assert (=> b!6784655 (= e!4095434 (Concat!25450 call!615715 r!7292))))

(declare-fun bm!615708 () Bool)

(declare-fun call!615714 () Regex!16605)

(assert (=> bm!615708 (= call!615714 call!615715)))

(declare-fun call!615713 () Regex!16605)

(declare-fun b!6784656 () Bool)

(assert (=> b!6784656 (= e!4095433 (Union!16605 (Concat!25450 call!615713 (regTwo!33722 r!7292)) call!615714))))

(declare-fun c!1260620 () Bool)

(declare-fun call!615716 () Regex!16605)

(declare-fun bm!615709 () Bool)

(assert (=> bm!615709 (= call!615716 (derivativeStep!5269 (ite c!1260620 (regTwo!33723 r!7292) (ite c!1260617 (reg!16934 r!7292) (ite c!1260619 (regTwo!33722 r!7292) (regOne!33722 r!7292)))) (head!13620 (_2!36883 lt!2445168))))))

(declare-fun b!6784657 () Bool)

(assert (=> b!6784657 (= e!4095435 (Union!16605 call!615713 call!615716))))

(declare-fun b!6784658 () Bool)

(assert (=> b!6784658 (= c!1260620 ((_ is Union!16605) r!7292))))

(declare-fun e!4095437 () Regex!16605)

(assert (=> b!6784658 (= e!4095437 e!4095435)))

(declare-fun d!2131672 () Bool)

(declare-fun lt!2445396 () Regex!16605)

(assert (=> d!2131672 (validRegex!8341 lt!2445396)))

(declare-fun e!4095436 () Regex!16605)

(assert (=> d!2131672 (= lt!2445396 e!4095436)))

(declare-fun c!1260616 () Bool)

(assert (=> d!2131672 (= c!1260616 (or ((_ is EmptyExpr!16605) r!7292) ((_ is EmptyLang!16605) r!7292)))))

(assert (=> d!2131672 (validRegex!8341 r!7292)))

(assert (=> d!2131672 (= (derivativeStep!5269 r!7292 (head!13620 (_2!36883 lt!2445168))) lt!2445396)))

(declare-fun bm!615710 () Bool)

(assert (=> bm!615710 (= call!615715 call!615716)))

(declare-fun b!6784659 () Bool)

(assert (=> b!6784659 (= e!4095437 (ite (= (head!13620 (_2!36883 lt!2445168)) (c!1260145 r!7292)) EmptyExpr!16605 EmptyLang!16605))))

(declare-fun b!6784660 () Bool)

(assert (=> b!6784660 (= e!4095436 EmptyLang!16605)))

(declare-fun b!6784661 () Bool)

(assert (=> b!6784661 (= e!4095436 e!4095437)))

(declare-fun c!1260618 () Bool)

(assert (=> b!6784661 (= c!1260618 ((_ is ElementMatch!16605) r!7292))))

(declare-fun b!6784662 () Bool)

(assert (=> b!6784662 (= e!4095433 (Union!16605 (Concat!25450 call!615714 (regTwo!33722 r!7292)) EmptyLang!16605))))

(declare-fun bm!615711 () Bool)

(assert (=> bm!615711 (= call!615713 (derivativeStep!5269 (ite c!1260620 (regOne!33723 r!7292) (regOne!33722 r!7292)) (head!13620 (_2!36883 lt!2445168))))))

(assert (= (and d!2131672 c!1260616) b!6784660))

(assert (= (and d!2131672 (not c!1260616)) b!6784661))

(assert (= (and b!6784661 c!1260618) b!6784659))

(assert (= (and b!6784661 (not c!1260618)) b!6784658))

(assert (= (and b!6784658 c!1260620) b!6784657))

(assert (= (and b!6784658 (not c!1260620)) b!6784653))

(assert (= (and b!6784653 c!1260617) b!6784655))

(assert (= (and b!6784653 (not c!1260617)) b!6784654))

(assert (= (and b!6784654 c!1260619) b!6784656))

(assert (= (and b!6784654 (not c!1260619)) b!6784662))

(assert (= (or b!6784656 b!6784662) bm!615708))

(assert (= (or b!6784655 bm!615708) bm!615710))

(assert (= (or b!6784657 bm!615710) bm!615709))

(assert (= (or b!6784657 b!6784656) bm!615711))

(assert (=> b!6784654 m!7531834))

(assert (=> bm!615709 m!7531484))

(declare-fun m!7533002 () Bool)

(assert (=> bm!615709 m!7533002))

(declare-fun m!7533004 () Bool)

(assert (=> d!2131672 m!7533004))

(assert (=> d!2131672 m!7531348))

(assert (=> bm!615711 m!7531484))

(declare-fun m!7533006 () Bool)

(assert (=> bm!615711 m!7533006))

(assert (=> b!6783288 d!2131672))

(declare-fun d!2131674 () Bool)

(assert (=> d!2131674 (= (head!13620 (_2!36883 lt!2445168)) (h!72438 (_2!36883 lt!2445168)))))

(assert (=> b!6783288 d!2131674))

(declare-fun d!2131676 () Bool)

(assert (=> d!2131676 (= (tail!12705 (_2!36883 lt!2445168)) (t!379831 (_2!36883 lt!2445168)))))

(assert (=> b!6783288 d!2131676))

(declare-fun d!2131678 () Bool)

(assert (=> d!2131678 (= (isEmpty!38354 (t!379831 s!2326)) ((_ is Nil!65990) (t!379831 s!2326)))))

(assert (=> d!2131268 d!2131678))

(assert (=> d!2131156 d!2131152))

(declare-fun d!2131680 () Bool)

(assert (=> d!2131680 (= (flatMap!2086 z!1189 lambda!381850) (dynLambda!26333 lambda!381850 (h!72440 zl!343)))))

(assert (=> d!2131680 true))

(declare-fun _$13!4202 () Unit!159901)

(assert (=> d!2131680 (= (choose!50518 z!1189 (h!72440 zl!343) lambda!381850) _$13!4202)))

(declare-fun b_lambda!255497 () Bool)

(assert (=> (not b_lambda!255497) (not d!2131680)))

(declare-fun bs!1807228 () Bool)

(assert (= bs!1807228 d!2131680))

(assert (=> bs!1807228 m!7531372))

(assert (=> bs!1807228 m!7531826))

(assert (=> d!2131156 d!2131680))

(declare-fun d!2131682 () Bool)

(assert (=> d!2131682 (= ($colon$colon!2414 (exprs!6489 lt!2445187) (ite (or c!1260199 c!1260198) (regTwo!33722 (reg!16934 r!7292)) (reg!16934 r!7292))) (Cons!65991 (ite (or c!1260199 c!1260198) (regTwo!33722 (reg!16934 r!7292)) (reg!16934 r!7292)) (exprs!6489 lt!2445187)))))

(assert (=> bm!615497 d!2131682))

(declare-fun d!2131684 () Bool)

(assert (=> d!2131684 true))

(assert (=> d!2131684 true))

(declare-fun res!2773150 () Bool)

(assert (=> d!2131684 (= (choose!50521 lambda!381848) res!2773150)))

(assert (=> d!2131132 d!2131684))

(declare-fun d!2131686 () Bool)

(declare-fun nullableFct!2490 (Regex!16605) Bool)

(assert (=> d!2131686 (= (nullable!6584 (regOne!33722 r!7292)) (nullableFct!2490 (regOne!33722 r!7292)))))

(declare-fun bs!1807229 () Bool)

(assert (= bs!1807229 d!2131686))

(declare-fun m!7533008 () Bool)

(assert (=> bs!1807229 m!7533008))

(assert (=> b!6783362 d!2131686))

(declare-fun d!2131688 () Bool)

(declare-fun res!2773155 () Bool)

(declare-fun e!4095443 () Bool)

(assert (=> d!2131688 (=> res!2773155 e!4095443)))

(assert (=> d!2131688 (= res!2773155 ((_ is ElementMatch!16605) lt!2445336))))

(assert (=> d!2131688 (= (validRegex!8341 lt!2445336) e!4095443)))

(declare-fun b!6784663 () Bool)

(declare-fun e!4095444 () Bool)

(assert (=> b!6784663 (= e!4095443 e!4095444)))

(declare-fun c!1260621 () Bool)

(assert (=> b!6784663 (= c!1260621 ((_ is Star!16605) lt!2445336))))

(declare-fun bm!615712 () Bool)

(declare-fun call!615717 () Bool)

(declare-fun c!1260622 () Bool)

(assert (=> bm!615712 (= call!615717 (validRegex!8341 (ite c!1260622 (regTwo!33723 lt!2445336) (regTwo!33722 lt!2445336))))))

(declare-fun b!6784664 () Bool)

(declare-fun e!4095439 () Bool)

(declare-fun call!615719 () Bool)

(assert (=> b!6784664 (= e!4095439 call!615719)))

(declare-fun bm!615713 () Bool)

(assert (=> bm!615713 (= call!615719 (validRegex!8341 (ite c!1260621 (reg!16934 lt!2445336) (ite c!1260622 (regOne!33723 lt!2445336) (regOne!33722 lt!2445336)))))))

(declare-fun b!6784665 () Bool)

(declare-fun e!4095441 () Bool)

(declare-fun e!4095442 () Bool)

(assert (=> b!6784665 (= e!4095441 e!4095442)))

(declare-fun res!2773152 () Bool)

(assert (=> b!6784665 (=> (not res!2773152) (not e!4095442))))

(declare-fun call!615718 () Bool)

(assert (=> b!6784665 (= res!2773152 call!615718)))

(declare-fun b!6784666 () Bool)

(declare-fun res!2773151 () Bool)

(declare-fun e!4095440 () Bool)

(assert (=> b!6784666 (=> (not res!2773151) (not e!4095440))))

(assert (=> b!6784666 (= res!2773151 call!615718)))

(declare-fun e!4095438 () Bool)

(assert (=> b!6784666 (= e!4095438 e!4095440)))

(declare-fun b!6784667 () Bool)

(assert (=> b!6784667 (= e!4095444 e!4095438)))

(assert (=> b!6784667 (= c!1260622 ((_ is Union!16605) lt!2445336))))

(declare-fun b!6784668 () Bool)

(assert (=> b!6784668 (= e!4095442 call!615717)))

(declare-fun bm!615714 () Bool)

(assert (=> bm!615714 (= call!615718 call!615719)))

(declare-fun b!6784669 () Bool)

(declare-fun res!2773153 () Bool)

(assert (=> b!6784669 (=> res!2773153 e!4095441)))

(assert (=> b!6784669 (= res!2773153 (not ((_ is Concat!25450) lt!2445336)))))

(assert (=> b!6784669 (= e!4095438 e!4095441)))

(declare-fun b!6784670 () Bool)

(assert (=> b!6784670 (= e!4095440 call!615717)))

(declare-fun b!6784671 () Bool)

(assert (=> b!6784671 (= e!4095444 e!4095439)))

(declare-fun res!2773154 () Bool)

(assert (=> b!6784671 (= res!2773154 (not (nullable!6584 (reg!16934 lt!2445336))))))

(assert (=> b!6784671 (=> (not res!2773154) (not e!4095439))))

(assert (= (and d!2131688 (not res!2773155)) b!6784663))

(assert (= (and b!6784663 c!1260621) b!6784671))

(assert (= (and b!6784663 (not c!1260621)) b!6784667))

(assert (= (and b!6784671 res!2773154) b!6784664))

(assert (= (and b!6784667 c!1260622) b!6784666))

(assert (= (and b!6784667 (not c!1260622)) b!6784669))

(assert (= (and b!6784666 res!2773151) b!6784670))

(assert (= (and b!6784669 (not res!2773153)) b!6784665))

(assert (= (and b!6784665 res!2773152) b!6784668))

(assert (= (or b!6784670 b!6784668) bm!615712))

(assert (= (or b!6784666 b!6784665) bm!615714))

(assert (= (or b!6784664 bm!615714) bm!615713))

(declare-fun m!7533010 () Bool)

(assert (=> bm!615712 m!7533010))

(declare-fun m!7533012 () Bool)

(assert (=> bm!615713 m!7533012))

(declare-fun m!7533014 () Bool)

(assert (=> b!6784671 m!7533014))

(assert (=> d!2131262 d!2131688))

(assert (=> d!2131262 d!2131272))

(assert (=> d!2131262 d!2131274))

(declare-fun d!2131690 () Bool)

(assert (=> d!2131690 (= (isEmpty!38355 (tail!12706 (exprs!6489 (h!72440 zl!343)))) ((_ is Nil!65991) (tail!12706 (exprs!6489 (h!72440 zl!343)))))))

(assert (=> b!6783220 d!2131690))

(declare-fun d!2131692 () Bool)

(assert (=> d!2131692 (= (tail!12706 (exprs!6489 (h!72440 zl!343))) (t!379832 (exprs!6489 (h!72440 zl!343))))))

(assert (=> b!6783220 d!2131692))

(declare-fun b!6784672 () Bool)

(declare-fun e!4095446 () (InoxSet Context!11978))

(declare-fun call!615720 () (InoxSet Context!11978))

(assert (=> b!6784672 (= e!4095446 call!615720)))

(declare-fun b!6784673 () Bool)

(declare-fun e!4095449 () (InoxSet Context!11978))

(assert (=> b!6784673 (= e!4095449 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (t!379832 (exprs!6489 lt!2445169))) true))))

(declare-fun bm!615715 () Bool)

(declare-fun call!615722 () (InoxSet Context!11978))

(assert (=> bm!615715 (= call!615720 call!615722)))

(declare-fun b!6784674 () Bool)

(declare-fun e!4095448 () (InoxSet Context!11978))

(assert (=> b!6784674 (= e!4095448 e!4095446)))

(declare-fun c!1260624 () Bool)

(assert (=> b!6784674 (= c!1260624 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun b!6784675 () Bool)

(declare-fun c!1260627 () Bool)

(assert (=> b!6784675 (= c!1260627 ((_ is Star!16605) (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun e!4095447 () (InoxSet Context!11978))

(assert (=> b!6784675 (= e!4095446 e!4095447)))

(declare-fun bm!615716 () Bool)

(declare-fun call!615721 () List!66115)

(declare-fun call!615725 () List!66115)

(assert (=> bm!615716 (= call!615721 call!615725)))

(declare-fun bm!615717 () Bool)

(declare-fun call!615724 () (InoxSet Context!11978))

(assert (=> bm!615717 (= call!615722 call!615724)))

(declare-fun b!6784676 () Bool)

(declare-fun call!615723 () (InoxSet Context!11978))

(assert (=> b!6784676 (= e!4095448 ((_ map or) call!615723 call!615722))))

(declare-fun b!6784677 () Bool)

(declare-fun e!4095445 () Bool)

(assert (=> b!6784677 (= e!4095445 (nullable!6584 (regOne!33722 (h!72439 (exprs!6489 lt!2445169)))))))

(declare-fun bm!615718 () Bool)

(declare-fun c!1260625 () Bool)

(assert (=> bm!615718 (= call!615725 ($colon$colon!2414 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169)))) (ite (or c!1260625 c!1260624) (regTwo!33722 (h!72439 (exprs!6489 lt!2445169))) (h!72439 (exprs!6489 lt!2445169)))))))

(declare-fun b!6784678 () Bool)

(assert (=> b!6784678 (= c!1260625 e!4095445)))

(declare-fun res!2773156 () Bool)

(assert (=> b!6784678 (=> (not res!2773156) (not e!4095445))))

(assert (=> b!6784678 (= res!2773156 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun e!4095450 () (InoxSet Context!11978))

(assert (=> b!6784678 (= e!4095450 e!4095448)))

(declare-fun c!1260626 () Bool)

(declare-fun bm!615719 () Bool)

(assert (=> bm!615719 (= call!615724 (derivationStepZipperDown!1833 (ite c!1260626 (regTwo!33723 (h!72439 (exprs!6489 lt!2445169))) (ite c!1260625 (regTwo!33722 (h!72439 (exprs!6489 lt!2445169))) (ite c!1260624 (regOne!33722 (h!72439 (exprs!6489 lt!2445169))) (reg!16934 (h!72439 (exprs!6489 lt!2445169)))))) (ite (or c!1260626 c!1260625) (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (Context!11979 call!615721)) (h!72438 s!2326)))))

(declare-fun bm!615720 () Bool)

(assert (=> bm!615720 (= call!615723 (derivationStepZipperDown!1833 (ite c!1260626 (regOne!33723 (h!72439 (exprs!6489 lt!2445169))) (regOne!33722 (h!72439 (exprs!6489 lt!2445169)))) (ite c!1260626 (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (Context!11979 call!615725)) (h!72438 s!2326)))))

(declare-fun b!6784679 () Bool)

(assert (=> b!6784679 (= e!4095449 e!4095450)))

(assert (=> b!6784679 (= c!1260626 ((_ is Union!16605) (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun d!2131694 () Bool)

(declare-fun c!1260623 () Bool)

(assert (=> d!2131694 (= c!1260623 (and ((_ is ElementMatch!16605) (h!72439 (exprs!6489 lt!2445169))) (= (c!1260145 (h!72439 (exprs!6489 lt!2445169))) (h!72438 s!2326))))))

(assert (=> d!2131694 (= (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445169)) (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (h!72438 s!2326)) e!4095449)))

(declare-fun b!6784680 () Bool)

(assert (=> b!6784680 (= e!4095450 ((_ map or) call!615723 call!615724))))

(declare-fun b!6784681 () Bool)

(assert (=> b!6784681 (= e!4095447 call!615720)))

(declare-fun b!6784682 () Bool)

(assert (=> b!6784682 (= e!4095447 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131694 c!1260623) b!6784673))

(assert (= (and d!2131694 (not c!1260623)) b!6784679))

(assert (= (and b!6784679 c!1260626) b!6784680))

(assert (= (and b!6784679 (not c!1260626)) b!6784678))

(assert (= (and b!6784678 res!2773156) b!6784677))

(assert (= (and b!6784678 c!1260625) b!6784676))

(assert (= (and b!6784678 (not c!1260625)) b!6784674))

(assert (= (and b!6784674 c!1260624) b!6784672))

(assert (= (and b!6784674 (not c!1260624)) b!6784675))

(assert (= (and b!6784675 c!1260627) b!6784681))

(assert (= (and b!6784675 (not c!1260627)) b!6784682))

(assert (= (or b!6784672 b!6784681) bm!615716))

(assert (= (or b!6784672 b!6784681) bm!615715))

(assert (= (or b!6784676 bm!615716) bm!615718))

(assert (= (or b!6784676 bm!615715) bm!615717))

(assert (= (or b!6784680 bm!615717) bm!615719))

(assert (= (or b!6784680 b!6784676) bm!615720))

(declare-fun m!7533016 () Bool)

(assert (=> b!6784673 m!7533016))

(declare-fun m!7533018 () Bool)

(assert (=> b!6784677 m!7533018))

(declare-fun m!7533020 () Bool)

(assert (=> bm!615719 m!7533020))

(declare-fun m!7533022 () Bool)

(assert (=> bm!615718 m!7533022))

(declare-fun m!7533024 () Bool)

(assert (=> bm!615720 m!7533024))

(assert (=> bm!615544 d!2131694))

(declare-fun bs!1807230 () Bool)

(declare-fun d!2131696 () Bool)

(assert (= bs!1807230 (and d!2131696 d!2131134)))

(declare-fun lambda!381994 () Int)

(assert (=> bs!1807230 (= lambda!381994 lambda!381884)))

(declare-fun bs!1807231 () Bool)

(assert (= bs!1807231 (and d!2131696 b!6782898)))

(assert (=> bs!1807231 (= lambda!381994 lambda!381851)))

(declare-fun bs!1807232 () Bool)

(assert (= bs!1807232 (and d!2131696 d!2131102)))

(assert (=> bs!1807232 (= lambda!381994 lambda!381869)))

(declare-fun bs!1807233 () Bool)

(assert (= bs!1807233 (and d!2131696 d!2131664)))

(assert (=> bs!1807233 (= lambda!381994 lambda!381991)))

(declare-fun bs!1807234 () Bool)

(assert (= bs!1807234 (and d!2131696 d!2131058)))

(assert (=> bs!1807234 (= lambda!381994 lambda!381857)))

(declare-fun bs!1807235 () Bool)

(assert (= bs!1807235 (and d!2131696 d!2131272)))

(assert (=> bs!1807235 (= lambda!381994 lambda!381934)))

(declare-fun bs!1807236 () Bool)

(assert (= bs!1807236 (and d!2131696 d!2131166)))

(assert (=> bs!1807236 (= lambda!381994 lambda!381888)))

(declare-fun bs!1807237 () Bool)

(assert (= bs!1807237 (and d!2131696 d!2131274)))

(assert (=> bs!1807237 (= lambda!381994 lambda!381937)))

(assert (=> d!2131696 (= (inv!84759 (h!72440 (t!379833 zl!343))) (forall!15797 (exprs!6489 (h!72440 (t!379833 zl!343))) lambda!381994))))

(declare-fun bs!1807238 () Bool)

(assert (= bs!1807238 d!2131696))

(declare-fun m!7533026 () Bool)

(assert (=> bs!1807238 m!7533026))

(assert (=> b!6783808 d!2131696))

(declare-fun b!6784683 () Bool)

(declare-fun e!4095455 () Bool)

(assert (=> b!6784683 (= e!4095455 (matchR!8788 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 (get!22977 lt!2445331)))) (tail!12705 (_1!36883 (get!22977 lt!2445331)))))))

(declare-fun b!6784684 () Bool)

(assert (=> b!6784684 (= e!4095455 (nullable!6584 (reg!16934 r!7292)))))

(declare-fun b!6784685 () Bool)

(declare-fun e!4095451 () Bool)

(declare-fun lt!2445397 () Bool)

(assert (=> b!6784685 (= e!4095451 (not lt!2445397))))

(declare-fun b!6784686 () Bool)

(declare-fun e!4095452 () Bool)

(assert (=> b!6784686 (= e!4095452 e!4095451)))

(declare-fun c!1260630 () Bool)

(assert (=> b!6784686 (= c!1260630 ((_ is EmptyLang!16605) (reg!16934 r!7292)))))

(declare-fun b!6784687 () Bool)

(declare-fun res!2773161 () Bool)

(declare-fun e!4095453 () Bool)

(assert (=> b!6784687 (=> (not res!2773161) (not e!4095453))))

(declare-fun call!615726 () Bool)

(assert (=> b!6784687 (= res!2773161 (not call!615726))))

(declare-fun b!6784688 () Bool)

(declare-fun res!2773160 () Bool)

(declare-fun e!4095454 () Bool)

(assert (=> b!6784688 (=> res!2773160 e!4095454)))

(assert (=> b!6784688 (= res!2773160 e!4095453)))

(declare-fun res!2773164 () Bool)

(assert (=> b!6784688 (=> (not res!2773164) (not e!4095453))))

(assert (=> b!6784688 (= res!2773164 lt!2445397)))

(declare-fun b!6784689 () Bool)

(assert (=> b!6784689 (= e!4095452 (= lt!2445397 call!615726))))

(declare-fun b!6784690 () Bool)

(declare-fun e!4095457 () Bool)

(declare-fun e!4095456 () Bool)

(assert (=> b!6784690 (= e!4095457 e!4095456)))

(declare-fun res!2773159 () Bool)

(assert (=> b!6784690 (=> res!2773159 e!4095456)))

(assert (=> b!6784690 (= res!2773159 call!615726)))

(declare-fun b!6784691 () Bool)

(declare-fun res!2773162 () Bool)

(assert (=> b!6784691 (=> res!2773162 e!4095454)))

(assert (=> b!6784691 (= res!2773162 (not ((_ is ElementMatch!16605) (reg!16934 r!7292))))))

(assert (=> b!6784691 (= e!4095451 e!4095454)))

(declare-fun b!6784692 () Bool)

(assert (=> b!6784692 (= e!4095456 (not (= (head!13620 (_1!36883 (get!22977 lt!2445331))) (c!1260145 (reg!16934 r!7292)))))))

(declare-fun b!6784693 () Bool)

(assert (=> b!6784693 (= e!4095453 (= (head!13620 (_1!36883 (get!22977 lt!2445331))) (c!1260145 (reg!16934 r!7292))))))

(declare-fun b!6784694 () Bool)

(assert (=> b!6784694 (= e!4095454 e!4095457)))

(declare-fun res!2773163 () Bool)

(assert (=> b!6784694 (=> (not res!2773163) (not e!4095457))))

(assert (=> b!6784694 (= res!2773163 (not lt!2445397))))

(declare-fun bm!615721 () Bool)

(assert (=> bm!615721 (= call!615726 (isEmpty!38354 (_1!36883 (get!22977 lt!2445331))))))

(declare-fun d!2131698 () Bool)

(assert (=> d!2131698 e!4095452))

(declare-fun c!1260628 () Bool)

(assert (=> d!2131698 (= c!1260628 ((_ is EmptyExpr!16605) (reg!16934 r!7292)))))

(assert (=> d!2131698 (= lt!2445397 e!4095455)))

(declare-fun c!1260629 () Bool)

(assert (=> d!2131698 (= c!1260629 (isEmpty!38354 (_1!36883 (get!22977 lt!2445331))))))

(assert (=> d!2131698 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131698 (= (matchR!8788 (reg!16934 r!7292) (_1!36883 (get!22977 lt!2445331))) lt!2445397)))

(declare-fun b!6784695 () Bool)

(declare-fun res!2773157 () Bool)

(assert (=> b!6784695 (=> res!2773157 e!4095456)))

(assert (=> b!6784695 (= res!2773157 (not (isEmpty!38354 (tail!12705 (_1!36883 (get!22977 lt!2445331))))))))

(declare-fun b!6784696 () Bool)

(declare-fun res!2773158 () Bool)

(assert (=> b!6784696 (=> (not res!2773158) (not e!4095453))))

(assert (=> b!6784696 (= res!2773158 (isEmpty!38354 (tail!12705 (_1!36883 (get!22977 lt!2445331)))))))

(assert (= (and d!2131698 c!1260629) b!6784684))

(assert (= (and d!2131698 (not c!1260629)) b!6784683))

(assert (= (and d!2131698 c!1260628) b!6784689))

(assert (= (and d!2131698 (not c!1260628)) b!6784686))

(assert (= (and b!6784686 c!1260630) b!6784685))

(assert (= (and b!6784686 (not c!1260630)) b!6784691))

(assert (= (and b!6784691 (not res!2773162)) b!6784688))

(assert (= (and b!6784688 res!2773164) b!6784687))

(assert (= (and b!6784687 res!2773161) b!6784696))

(assert (= (and b!6784696 res!2773158) b!6784693))

(assert (= (and b!6784688 (not res!2773160)) b!6784694))

(assert (= (and b!6784694 res!2773163) b!6784690))

(assert (= (and b!6784690 (not res!2773159)) b!6784695))

(assert (= (and b!6784695 (not res!2773157)) b!6784692))

(assert (= (or b!6784689 b!6784687 b!6784690) bm!615721))

(declare-fun m!7533028 () Bool)

(assert (=> b!6784696 m!7533028))

(assert (=> b!6784696 m!7533028))

(declare-fun m!7533030 () Bool)

(assert (=> b!6784696 m!7533030))

(declare-fun m!7533032 () Bool)

(assert (=> b!6784692 m!7533032))

(assert (=> b!6784695 m!7533028))

(assert (=> b!6784695 m!7533028))

(assert (=> b!6784695 m!7533030))

(assert (=> b!6784683 m!7533032))

(assert (=> b!6784683 m!7533032))

(declare-fun m!7533034 () Bool)

(assert (=> b!6784683 m!7533034))

(assert (=> b!6784683 m!7533028))

(assert (=> b!6784683 m!7533034))

(assert (=> b!6784683 m!7533028))

(declare-fun m!7533036 () Bool)

(assert (=> b!6784683 m!7533036))

(declare-fun m!7533038 () Bool)

(assert (=> d!2131698 m!7533038))

(assert (=> d!2131698 m!7531450))

(assert (=> b!6784684 m!7531770))

(assert (=> bm!615721 m!7533038))

(assert (=> b!6784693 m!7533032))

(assert (=> b!6783701 d!2131698))

(declare-fun d!2131700 () Bool)

(assert (=> d!2131700 (= (get!22977 lt!2445331) (v!52697 lt!2445331))))

(assert (=> b!6783701 d!2131700))

(declare-fun d!2131702 () Bool)

(declare-fun c!1260631 () Bool)

(assert (=> d!2131702 (= c!1260631 (isEmpty!38354 (tail!12705 lt!2445194)))))

(declare-fun e!4095458 () Bool)

(assert (=> d!2131702 (= (matchZipper!2591 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) (head!13620 lt!2445194)) (tail!12705 lt!2445194)) e!4095458)))

(declare-fun b!6784697 () Bool)

(assert (=> b!6784697 (= e!4095458 (nullableZipper!2312 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) (head!13620 lt!2445194))))))

(declare-fun b!6784698 () Bool)

(assert (=> b!6784698 (= e!4095458 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) (head!13620 lt!2445194)) (head!13620 (tail!12705 lt!2445194))) (tail!12705 (tail!12705 lt!2445194))))))

(assert (= (and d!2131702 c!1260631) b!6784697))

(assert (= (and d!2131702 (not c!1260631)) b!6784698))

(assert (=> d!2131702 m!7531522))

(declare-fun m!7533040 () Bool)

(assert (=> d!2131702 m!7533040))

(assert (=> b!6784697 m!7531520))

(declare-fun m!7533042 () Bool)

(assert (=> b!6784697 m!7533042))

(assert (=> b!6784698 m!7531522))

(declare-fun m!7533044 () Bool)

(assert (=> b!6784698 m!7533044))

(assert (=> b!6784698 m!7531520))

(assert (=> b!6784698 m!7533044))

(declare-fun m!7533046 () Bool)

(assert (=> b!6784698 m!7533046))

(assert (=> b!6784698 m!7531522))

(declare-fun m!7533048 () Bool)

(assert (=> b!6784698 m!7533048))

(assert (=> b!6784698 m!7533046))

(assert (=> b!6784698 m!7533048))

(declare-fun m!7533050 () Bool)

(assert (=> b!6784698 m!7533050))

(assert (=> b!6782963 d!2131702))

(declare-fun bs!1807239 () Bool)

(declare-fun d!2131704 () Bool)

(assert (= bs!1807239 (and d!2131704 b!6782908)))

(declare-fun lambda!381995 () Int)

(assert (=> bs!1807239 (= (= (head!13620 lt!2445194) (h!72438 s!2326)) (= lambda!381995 lambda!381850))))

(declare-fun bs!1807240 () Bool)

(assert (= bs!1807240 (and d!2131704 d!2131162)))

(assert (=> bs!1807240 (= (= (head!13620 lt!2445194) (h!72438 s!2326)) (= lambda!381995 lambda!381887))))

(declare-fun bs!1807241 () Bool)

(assert (= bs!1807241 (and d!2131704 d!2131208)))

(assert (=> bs!1807241 (= (= (head!13620 lt!2445194) (h!72438 s!2326)) (= lambda!381995 lambda!381905))))

(declare-fun bs!1807242 () Bool)

(assert (= bs!1807242 (and d!2131704 d!2131270)))

(assert (=> bs!1807242 (= (= (head!13620 lt!2445194) (h!72438 s!2326)) (= lambda!381995 lambda!381931))))

(assert (=> d!2131704 true))

(assert (=> d!2131704 (= (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) (head!13620 lt!2445194)) (flatMap!2086 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) lambda!381995))))

(declare-fun bs!1807243 () Bool)

(assert (= bs!1807243 d!2131704))

(assert (=> bs!1807243 m!7531426))

(declare-fun m!7533052 () Bool)

(assert (=> bs!1807243 m!7533052))

(assert (=> b!6782963 d!2131704))

(declare-fun d!2131706 () Bool)

(assert (=> d!2131706 (= (head!13620 lt!2445194) (h!72438 lt!2445194))))

(assert (=> b!6782963 d!2131706))

(declare-fun d!2131708 () Bool)

(assert (=> d!2131708 (= (tail!12705 lt!2445194) (t!379831 lt!2445194))))

(assert (=> b!6782963 d!2131708))

(declare-fun b!6784699 () Bool)

(declare-fun e!4095460 () (InoxSet Context!11978))

(declare-fun call!615727 () (InoxSet Context!11978))

(assert (=> b!6784699 (= e!4095460 call!615727)))

(declare-fun b!6784700 () Bool)

(declare-fun e!4095463 () (InoxSet Context!11978))

(assert (=> b!6784700 (= e!4095463 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) true))))

(declare-fun bm!615722 () Bool)

(declare-fun call!615729 () (InoxSet Context!11978))

(assert (=> bm!615722 (= call!615727 call!615729)))

(declare-fun b!6784701 () Bool)

(declare-fun e!4095462 () (InoxSet Context!11978))

(assert (=> b!6784701 (= e!4095462 e!4095460)))

(declare-fun c!1260633 () Bool)

(assert (=> b!6784701 (= c!1260633 ((_ is Concat!25450) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun b!6784702 () Bool)

(declare-fun c!1260636 () Bool)

(assert (=> b!6784702 (= c!1260636 ((_ is Star!16605) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun e!4095461 () (InoxSet Context!11978))

(assert (=> b!6784702 (= e!4095460 e!4095461)))

(declare-fun bm!615723 () Bool)

(declare-fun call!615728 () List!66115)

(declare-fun call!615732 () List!66115)

(assert (=> bm!615723 (= call!615728 call!615732)))

(declare-fun bm!615724 () Bool)

(declare-fun call!615731 () (InoxSet Context!11978))

(assert (=> bm!615724 (= call!615729 call!615731)))

(declare-fun b!6784703 () Bool)

(declare-fun call!615730 () (InoxSet Context!11978))

(assert (=> b!6784703 (= e!4095462 ((_ map or) call!615730 call!615729))))

(declare-fun b!6784704 () Bool)

(declare-fun e!4095459 () Bool)

(assert (=> b!6784704 (= e!4095459 (nullable!6584 (regOne!33722 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))))

(declare-fun bm!615725 () Bool)

(declare-fun c!1260634 () Bool)

(assert (=> bm!615725 (= call!615732 ($colon$colon!2414 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))) (ite (or c!1260634 c!1260633) (regTwo!33722 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))))

(declare-fun b!6784705 () Bool)

(assert (=> b!6784705 (= c!1260634 e!4095459)))

(declare-fun res!2773165 () Bool)

(assert (=> b!6784705 (=> (not res!2773165) (not e!4095459))))

(assert (=> b!6784705 (= res!2773165 ((_ is Concat!25450) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun e!4095464 () (InoxSet Context!11978))

(assert (=> b!6784705 (= e!4095464 e!4095462)))

(declare-fun bm!615726 () Bool)

(declare-fun c!1260635 () Bool)

(assert (=> bm!615726 (= call!615731 (derivationStepZipperDown!1833 (ite c!1260635 (regTwo!33723 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (ite c!1260634 (regTwo!33722 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (ite c!1260633 (regOne!33722 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (reg!16934 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))) (ite (or c!1260635 c!1260634) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (Context!11979 call!615728)) (h!72438 s!2326)))))

(declare-fun bm!615727 () Bool)

(assert (=> bm!615727 (= call!615730 (derivationStepZipperDown!1833 (ite c!1260635 (regOne!33723 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (regOne!33722 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))) (ite c!1260635 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (Context!11979 call!615732)) (h!72438 s!2326)))))

(declare-fun b!6784706 () Bool)

(assert (=> b!6784706 (= e!4095463 e!4095464)))

(assert (=> b!6784706 (= c!1260635 ((_ is Union!16605) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun d!2131710 () Bool)

(declare-fun c!1260632 () Bool)

(assert (=> d!2131710 (= c!1260632 (and ((_ is ElementMatch!16605) (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (= (c!1260145 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72438 s!2326))))))

(assert (=> d!2131710 (= (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72438 s!2326)) e!4095463)))

(declare-fun b!6784707 () Bool)

(assert (=> b!6784707 (= e!4095464 ((_ map or) call!615730 call!615731))))

(declare-fun b!6784708 () Bool)

(assert (=> b!6784708 (= e!4095461 call!615727)))

(declare-fun b!6784709 () Bool)

(assert (=> b!6784709 (= e!4095461 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131710 c!1260632) b!6784700))

(assert (= (and d!2131710 (not c!1260632)) b!6784706))

(assert (= (and b!6784706 c!1260635) b!6784707))

(assert (= (and b!6784706 (not c!1260635)) b!6784705))

(assert (= (and b!6784705 res!2773165) b!6784704))

(assert (= (and b!6784705 c!1260634) b!6784703))

(assert (= (and b!6784705 (not c!1260634)) b!6784701))

(assert (= (and b!6784701 c!1260633) b!6784699))

(assert (= (and b!6784701 (not c!1260633)) b!6784702))

(assert (= (and b!6784702 c!1260636) b!6784708))

(assert (= (and b!6784702 (not c!1260636)) b!6784709))

(assert (= (or b!6784699 b!6784708) bm!615723))

(assert (= (or b!6784699 b!6784708) bm!615722))

(assert (= (or b!6784703 bm!615723) bm!615725))

(assert (= (or b!6784703 bm!615722) bm!615724))

(assert (= (or b!6784707 bm!615724) bm!615726))

(assert (= (or b!6784707 b!6784703) bm!615727))

(declare-fun m!7533054 () Bool)

(assert (=> b!6784700 m!7533054))

(declare-fun m!7533056 () Bool)

(assert (=> b!6784704 m!7533056))

(declare-fun m!7533058 () Bool)

(assert (=> bm!615726 m!7533058))

(declare-fun m!7533060 () Bool)

(assert (=> bm!615725 m!7533060))

(declare-fun m!7533062 () Bool)

(assert (=> bm!615727 m!7533062))

(assert (=> bm!615532 d!2131710))

(declare-fun d!2131712 () Bool)

(assert (=> d!2131712 (= (isEmpty!38355 (exprs!6489 (h!72440 zl!343))) ((_ is Nil!65991) (exprs!6489 (h!72440 zl!343))))))

(assert (=> b!6783224 d!2131712))

(declare-fun d!2131714 () Bool)

(declare-fun lambda!381998 () Int)

(declare-fun exists!2727 ((InoxSet Context!11978) Int) Bool)

(assert (=> d!2131714 (= (nullableZipper!2312 lt!2445172) (exists!2727 lt!2445172 lambda!381998))))

(declare-fun bs!1807244 () Bool)

(assert (= bs!1807244 d!2131714))

(declare-fun m!7533064 () Bool)

(assert (=> bs!1807244 m!7533064))

(assert (=> b!6782948 d!2131714))

(declare-fun d!2131716 () Bool)

(declare-fun c!1260639 () Bool)

(assert (=> d!2131716 (= c!1260639 (isEmpty!38354 (tail!12705 (t!379831 s!2326))))))

(declare-fun e!4095465 () Bool)

(assert (=> d!2131716 (= (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (head!13620 (t!379831 s!2326))) (tail!12705 (t!379831 s!2326))) e!4095465)))

(declare-fun b!6784710 () Bool)

(assert (=> b!6784710 (= e!4095465 (nullableZipper!2312 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (head!13620 (t!379831 s!2326)))))))

(declare-fun b!6784711 () Bool)

(assert (=> b!6784711 (= e!4095465 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (head!13620 (t!379831 s!2326))) (head!13620 (tail!12705 (t!379831 s!2326)))) (tail!12705 (tail!12705 (t!379831 s!2326)))))))

(assert (= (and d!2131716 c!1260639) b!6784710))

(assert (= (and d!2131716 (not c!1260639)) b!6784711))

(assert (=> d!2131716 m!7532134))

(declare-fun m!7533066 () Bool)

(assert (=> d!2131716 m!7533066))

(assert (=> b!6784710 m!7532132))

(declare-fun m!7533068 () Bool)

(assert (=> b!6784710 m!7533068))

(assert (=> b!6784711 m!7532134))

(declare-fun m!7533070 () Bool)

(assert (=> b!6784711 m!7533070))

(assert (=> b!6784711 m!7532132))

(assert (=> b!6784711 m!7533070))

(declare-fun m!7533072 () Bool)

(assert (=> b!6784711 m!7533072))

(assert (=> b!6784711 m!7532134))

(declare-fun m!7533074 () Bool)

(assert (=> b!6784711 m!7533074))

(assert (=> b!6784711 m!7533072))

(assert (=> b!6784711 m!7533074))

(declare-fun m!7533076 () Bool)

(assert (=> b!6784711 m!7533076))

(assert (=> b!6783713 d!2131716))

(declare-fun bs!1807245 () Bool)

(declare-fun d!2131718 () Bool)

(assert (= bs!1807245 (and d!2131718 b!6782908)))

(declare-fun lambda!381999 () Int)

(assert (=> bs!1807245 (= (= (head!13620 (t!379831 s!2326)) (h!72438 s!2326)) (= lambda!381999 lambda!381850))))

(declare-fun bs!1807246 () Bool)

(assert (= bs!1807246 (and d!2131718 d!2131704)))

(assert (=> bs!1807246 (= (= (head!13620 (t!379831 s!2326)) (head!13620 lt!2445194)) (= lambda!381999 lambda!381995))))

(declare-fun bs!1807247 () Bool)

(assert (= bs!1807247 (and d!2131718 d!2131270)))

(assert (=> bs!1807247 (= (= (head!13620 (t!379831 s!2326)) (h!72438 s!2326)) (= lambda!381999 lambda!381931))))

(declare-fun bs!1807248 () Bool)

(assert (= bs!1807248 (and d!2131718 d!2131208)))

(assert (=> bs!1807248 (= (= (head!13620 (t!379831 s!2326)) (h!72438 s!2326)) (= lambda!381999 lambda!381905))))

(declare-fun bs!1807249 () Bool)

(assert (= bs!1807249 (and d!2131718 d!2131162)))

(assert (=> bs!1807249 (= (= (head!13620 (t!379831 s!2326)) (h!72438 s!2326)) (= lambda!381999 lambda!381887))))

(assert (=> d!2131718 true))

(assert (=> d!2131718 (= (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) (head!13620 (t!379831 s!2326))) (flatMap!2086 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) lambda!381999))))

(declare-fun bs!1807250 () Bool)

(assert (= bs!1807250 d!2131718))

(assert (=> bs!1807250 m!7531356))

(declare-fun m!7533078 () Bool)

(assert (=> bs!1807250 m!7533078))

(assert (=> b!6783713 d!2131718))

(declare-fun d!2131720 () Bool)

(assert (=> d!2131720 (= (head!13620 (t!379831 s!2326)) (h!72438 (t!379831 s!2326)))))

(assert (=> b!6783713 d!2131720))

(declare-fun d!2131722 () Bool)

(assert (=> d!2131722 (= (tail!12705 (t!379831 s!2326)) (t!379831 (t!379831 s!2326)))))

(assert (=> b!6783713 d!2131722))

(declare-fun bs!1807251 () Bool)

(declare-fun d!2131724 () Bool)

(assert (= bs!1807251 (and d!2131724 d!2131714)))

(declare-fun lambda!382000 () Int)

(assert (=> bs!1807251 (= lambda!382000 lambda!381998)))

(assert (=> d!2131724 (= (nullableZipper!2312 lt!2445190) (exists!2727 lt!2445190 lambda!382000))))

(declare-fun bs!1807252 () Bool)

(assert (= bs!1807252 d!2131724))

(declare-fun m!7533080 () Bool)

(assert (=> bs!1807252 m!7533080))

(assert (=> b!6782944 d!2131724))

(declare-fun d!2131726 () Bool)

(assert (=> d!2131726 true))

(declare-fun setRes!46419 () Bool)

(assert (=> d!2131726 setRes!46419))

(declare-fun condSetEmpty!46419 () Bool)

(declare-fun res!2773168 () (InoxSet Context!11978))

(assert (=> d!2131726 (= condSetEmpty!46419 (= res!2773168 ((as const (Array Context!11978 Bool)) false)))))

(assert (=> d!2131726 (= (choose!50517 lt!2445167 lambda!381850) res!2773168)))

(declare-fun setIsEmpty!46419 () Bool)

(assert (=> setIsEmpty!46419 setRes!46419))

(declare-fun setNonEmpty!46419 () Bool)

(declare-fun setElem!46419 () Context!11978)

(declare-fun tp!1858613 () Bool)

(declare-fun e!4095468 () Bool)

(assert (=> setNonEmpty!46419 (= setRes!46419 (and tp!1858613 (inv!84759 setElem!46419) e!4095468))))

(declare-fun setRest!46419 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46419 (= res!2773168 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46419 true) setRest!46419))))

(declare-fun b!6784714 () Bool)

(declare-fun tp!1858612 () Bool)

(assert (=> b!6784714 (= e!4095468 tp!1858612)))

(assert (= (and d!2131726 condSetEmpty!46419) setIsEmpty!46419))

(assert (= (and d!2131726 (not condSetEmpty!46419)) setNonEmpty!46419))

(assert (= setNonEmpty!46419 b!6784714))

(declare-fun m!7533082 () Bool)

(assert (=> setNonEmpty!46419 m!7533082))

(assert (=> d!2131088 d!2131726))

(declare-fun d!2131728 () Bool)

(assert (=> d!2131728 (= (nullable!6584 (reg!16934 r!7292)) (nullableFct!2490 (reg!16934 r!7292)))))

(declare-fun bs!1807253 () Bool)

(assert (= bs!1807253 d!2131728))

(declare-fun m!7533084 () Bool)

(assert (=> bs!1807253 m!7533084))

(assert (=> b!6783309 d!2131728))

(declare-fun b!6784715 () Bool)

(declare-fun e!4095470 () (InoxSet Context!11978))

(declare-fun call!615733 () (InoxSet Context!11978))

(assert (=> b!6784715 (= e!4095470 call!615733)))

(declare-fun b!6784716 () Bool)

(declare-fun e!4095473 () (InoxSet Context!11978))

(assert (=> b!6784716 (= e!4095473 (store ((as const (Array Context!11978 Bool)) false) (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536)) true))))

(declare-fun bm!615728 () Bool)

(declare-fun call!615735 () (InoxSet Context!11978))

(assert (=> bm!615728 (= call!615733 call!615735)))

(declare-fun b!6784717 () Bool)

(declare-fun e!4095472 () (InoxSet Context!11978))

(assert (=> b!6784717 (= e!4095472 e!4095470)))

(declare-fun c!1260641 () Bool)

(assert (=> b!6784717 (= c!1260641 ((_ is Concat!25450) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))))))

(declare-fun b!6784718 () Bool)

(declare-fun c!1260644 () Bool)

(assert (=> b!6784718 (= c!1260644 ((_ is Star!16605) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))))))

(declare-fun e!4095471 () (InoxSet Context!11978))

(assert (=> b!6784718 (= e!4095470 e!4095471)))

(declare-fun bm!615729 () Bool)

(declare-fun call!615734 () List!66115)

(declare-fun call!615738 () List!66115)

(assert (=> bm!615729 (= call!615734 call!615738)))

(declare-fun bm!615730 () Bool)

(declare-fun call!615737 () (InoxSet Context!11978))

(assert (=> bm!615730 (= call!615735 call!615737)))

(declare-fun b!6784719 () Bool)

(declare-fun call!615736 () (InoxSet Context!11978))

(assert (=> b!6784719 (= e!4095472 ((_ map or) call!615736 call!615735))))

(declare-fun b!6784720 () Bool)

(declare-fun e!4095469 () Bool)

(assert (=> b!6784720 (= e!4095469 (nullable!6584 (regOne!33722 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(declare-fun bm!615731 () Bool)

(declare-fun c!1260642 () Bool)

(assert (=> bm!615731 (= call!615738 ($colon$colon!2414 (exprs!6489 (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536))) (ite (or c!1260642 c!1260641) (regTwo!33722 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(declare-fun b!6784721 () Bool)

(assert (=> b!6784721 (= c!1260642 e!4095469)))

(declare-fun res!2773169 () Bool)

(assert (=> b!6784721 (=> (not res!2773169) (not e!4095469))))

(assert (=> b!6784721 (= res!2773169 ((_ is Concat!25450) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))))))

(declare-fun e!4095474 () (InoxSet Context!11978))

(assert (=> b!6784721 (= e!4095474 e!4095472)))

(declare-fun bm!615732 () Bool)

(declare-fun c!1260643 () Bool)

(assert (=> bm!615732 (= call!615737 (derivationStepZipperDown!1833 (ite c!1260643 (regTwo!33723 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (ite c!1260642 (regTwo!33722 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (ite c!1260641 (regOne!33722 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (reg!16934 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)))))) (ite (or c!1260643 c!1260642) (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536)) (Context!11979 call!615734)) (h!72438 s!2326)))))

(declare-fun bm!615733 () Bool)

(assert (=> bm!615733 (= call!615736 (derivationStepZipperDown!1833 (ite c!1260643 (regOne!33723 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (regOne!33722 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)))) (ite c!1260643 (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536)) (Context!11979 call!615738)) (h!72438 s!2326)))))

(declare-fun b!6784722 () Bool)

(assert (=> b!6784722 (= e!4095473 e!4095474)))

(assert (=> b!6784722 (= c!1260643 ((_ is Union!16605) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))))))

(declare-fun d!2131730 () Bool)

(declare-fun c!1260640 () Bool)

(assert (=> d!2131730 (= c!1260640 (and ((_ is ElementMatch!16605) (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (= (c!1260145 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292))) (h!72438 s!2326))))))

(assert (=> d!2131730 (= (derivationStepZipperDown!1833 (ite c!1260278 (regOne!33723 r!7292) (regOne!33722 r!7292)) (ite c!1260278 (Context!11979 Nil!65991) (Context!11979 call!615536)) (h!72438 s!2326)) e!4095473)))

(declare-fun b!6784723 () Bool)

(assert (=> b!6784723 (= e!4095474 ((_ map or) call!615736 call!615737))))

(declare-fun b!6784724 () Bool)

(assert (=> b!6784724 (= e!4095471 call!615733)))

(declare-fun b!6784725 () Bool)

(assert (=> b!6784725 (= e!4095471 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131730 c!1260640) b!6784716))

(assert (= (and d!2131730 (not c!1260640)) b!6784722))

(assert (= (and b!6784722 c!1260643) b!6784723))

(assert (= (and b!6784722 (not c!1260643)) b!6784721))

(assert (= (and b!6784721 res!2773169) b!6784720))

(assert (= (and b!6784721 c!1260642) b!6784719))

(assert (= (and b!6784721 (not c!1260642)) b!6784717))

(assert (= (and b!6784717 c!1260641) b!6784715))

(assert (= (and b!6784717 (not c!1260641)) b!6784718))

(assert (= (and b!6784718 c!1260644) b!6784724))

(assert (= (and b!6784718 (not c!1260644)) b!6784725))

(assert (= (or b!6784715 b!6784724) bm!615729))

(assert (= (or b!6784715 b!6784724) bm!615728))

(assert (= (or b!6784719 bm!615729) bm!615731))

(assert (= (or b!6784719 bm!615728) bm!615730))

(assert (= (or b!6784723 bm!615730) bm!615732))

(assert (= (or b!6784723 b!6784719) bm!615733))

(declare-fun m!7533086 () Bool)

(assert (=> b!6784716 m!7533086))

(declare-fun m!7533088 () Bool)

(assert (=> b!6784720 m!7533088))

(declare-fun m!7533090 () Bool)

(assert (=> bm!615732 m!7533090))

(declare-fun m!7533092 () Bool)

(assert (=> bm!615731 m!7533092))

(declare-fun m!7533094 () Bool)

(assert (=> bm!615733 m!7533094))

(assert (=> bm!615531 d!2131730))

(declare-fun d!2131732 () Bool)

(assert (=> d!2131732 (= (head!13620 (_1!36883 lt!2445168)) (h!72438 (_1!36883 lt!2445168)))))

(assert (=> b!6783318 d!2131732))

(declare-fun d!2131734 () Bool)

(declare-fun res!2773174 () Bool)

(declare-fun e!4095480 () Bool)

(assert (=> d!2131734 (=> res!2773174 e!4095480)))

(assert (=> d!2131734 (= res!2773174 ((_ is ElementMatch!16605) (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))

(assert (=> d!2131734 (= (validRegex!8341 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))) e!4095480)))

(declare-fun b!6784726 () Bool)

(declare-fun e!4095481 () Bool)

(assert (=> b!6784726 (= e!4095480 e!4095481)))

(declare-fun c!1260645 () Bool)

(assert (=> b!6784726 (= c!1260645 ((_ is Star!16605) (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))

(declare-fun call!615739 () Bool)

(declare-fun bm!615734 () Bool)

(declare-fun c!1260646 () Bool)

(assert (=> bm!615734 (= call!615739 (validRegex!8341 (ite c!1260646 (regTwo!33723 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))) (regTwo!33722 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))))

(declare-fun b!6784727 () Bool)

(declare-fun e!4095476 () Bool)

(declare-fun call!615741 () Bool)

(assert (=> b!6784727 (= e!4095476 call!615741)))

(declare-fun bm!615735 () Bool)

(assert (=> bm!615735 (= call!615741 (validRegex!8341 (ite c!1260645 (reg!16934 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))) (ite c!1260646 (regOne!33723 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))) (regOne!33722 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292)))))))))

(declare-fun b!6784728 () Bool)

(declare-fun e!4095478 () Bool)

(declare-fun e!4095479 () Bool)

(assert (=> b!6784728 (= e!4095478 e!4095479)))

(declare-fun res!2773171 () Bool)

(assert (=> b!6784728 (=> (not res!2773171) (not e!4095479))))

(declare-fun call!615740 () Bool)

(assert (=> b!6784728 (= res!2773171 call!615740)))

(declare-fun b!6784729 () Bool)

(declare-fun res!2773170 () Bool)

(declare-fun e!4095477 () Bool)

(assert (=> b!6784729 (=> (not res!2773170) (not e!4095477))))

(assert (=> b!6784729 (= res!2773170 call!615740)))

(declare-fun e!4095475 () Bool)

(assert (=> b!6784729 (= e!4095475 e!4095477)))

(declare-fun b!6784730 () Bool)

(assert (=> b!6784730 (= e!4095481 e!4095475)))

(assert (=> b!6784730 (= c!1260646 ((_ is Union!16605) (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))

(declare-fun b!6784731 () Bool)

(assert (=> b!6784731 (= e!4095479 call!615739)))

(declare-fun bm!615736 () Bool)

(assert (=> bm!615736 (= call!615740 call!615741)))

(declare-fun b!6784732 () Bool)

(declare-fun res!2773172 () Bool)

(assert (=> b!6784732 (=> res!2773172 e!4095478)))

(assert (=> b!6784732 (= res!2773172 (not ((_ is Concat!25450) (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292)))))))

(assert (=> b!6784732 (= e!4095475 e!4095478)))

(declare-fun b!6784733 () Bool)

(assert (=> b!6784733 (= e!4095477 call!615739)))

(declare-fun b!6784734 () Bool)

(assert (=> b!6784734 (= e!4095481 e!4095476)))

(declare-fun res!2773173 () Bool)

(assert (=> b!6784734 (= res!2773173 (not (nullable!6584 (reg!16934 (ite c!1260391 (regTwo!33723 r!7292) (regTwo!33722 r!7292))))))))

(assert (=> b!6784734 (=> (not res!2773173) (not e!4095476))))

(assert (= (and d!2131734 (not res!2773174)) b!6784726))

(assert (= (and b!6784726 c!1260645) b!6784734))

(assert (= (and b!6784726 (not c!1260645)) b!6784730))

(assert (= (and b!6784734 res!2773173) b!6784727))

(assert (= (and b!6784730 c!1260646) b!6784729))

(assert (= (and b!6784730 (not c!1260646)) b!6784732))

(assert (= (and b!6784729 res!2773170) b!6784733))

(assert (= (and b!6784732 (not res!2773172)) b!6784728))

(assert (= (and b!6784728 res!2773171) b!6784731))

(assert (= (or b!6784733 b!6784731) bm!615734))

(assert (= (or b!6784729 b!6784728) bm!615736))

(assert (= (or b!6784727 bm!615736) bm!615735))

(declare-fun m!7533096 () Bool)

(assert (=> bm!615734 m!7533096))

(declare-fun m!7533098 () Bool)

(assert (=> bm!615735 m!7533098))

(declare-fun m!7533100 () Bool)

(assert (=> b!6784734 m!7533100))

(assert (=> bm!615566 d!2131734))

(declare-fun d!2131736 () Bool)

(assert (=> d!2131736 (= (isEmpty!38355 (tail!12706 (unfocusZipperList!2026 zl!343))) ((_ is Nil!65991) (tail!12706 (unfocusZipperList!2026 zl!343))))))

(assert (=> b!6783736 d!2131736))

(declare-fun d!2131738 () Bool)

(assert (=> d!2131738 (= (tail!12706 (unfocusZipperList!2026 zl!343)) (t!379832 (unfocusZipperList!2026 zl!343)))))

(assert (=> b!6783736 d!2131738))

(declare-fun d!2131740 () Bool)

(assert (=> d!2131740 (= (nullable!6584 (h!72439 (exprs!6489 lt!2445202))) (nullableFct!2490 (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun bs!1807254 () Bool)

(assert (= bs!1807254 d!2131740))

(declare-fun m!7533102 () Bool)

(assert (=> bs!1807254 m!7533102))

(assert (=> b!6783138 d!2131740))

(declare-fun d!2131742 () Bool)

(assert (=> d!2131742 (= (isEmpty!38354 lt!2445194) ((_ is Nil!65990) lt!2445194))))

(assert (=> d!2131056 d!2131742))

(assert (=> d!2131266 d!2131222))

(assert (=> b!6783297 d!2131674))

(assert (=> bm!615542 d!2131222))

(declare-fun d!2131744 () Bool)

(assert (=> d!2131744 true))

(declare-fun setRes!46420 () Bool)

(assert (=> d!2131744 setRes!46420))

(declare-fun condSetEmpty!46420 () Bool)

(declare-fun res!2773175 () (InoxSet Context!11978))

(assert (=> d!2131744 (= condSetEmpty!46420 (= res!2773175 ((as const (Array Context!11978 Bool)) false)))))

(assert (=> d!2131744 (= (choose!50517 z!1189 lambda!381850) res!2773175)))

(declare-fun setIsEmpty!46420 () Bool)

(assert (=> setIsEmpty!46420 setRes!46420))

(declare-fun setNonEmpty!46420 () Bool)

(declare-fun tp!1858615 () Bool)

(declare-fun e!4095482 () Bool)

(declare-fun setElem!46420 () Context!11978)

(assert (=> setNonEmpty!46420 (= setRes!46420 (and tp!1858615 (inv!84759 setElem!46420) e!4095482))))

(declare-fun setRest!46420 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46420 (= res!2773175 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46420 true) setRest!46420))))

(declare-fun b!6784735 () Bool)

(declare-fun tp!1858614 () Bool)

(assert (=> b!6784735 (= e!4095482 tp!1858614)))

(assert (= (and d!2131744 condSetEmpty!46420) setIsEmpty!46420))

(assert (= (and d!2131744 (not condSetEmpty!46420)) setNonEmpty!46420))

(assert (= setNonEmpty!46420 b!6784735))

(declare-fun m!7533104 () Bool)

(assert (=> setNonEmpty!46420 m!7533104))

(assert (=> d!2131152 d!2131744))

(declare-fun d!2131746 () Bool)

(assert (=> d!2131746 (= (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168))) ((_ is Nil!65990) (tail!12705 (_1!36883 lt!2445168))))))

(assert (=> b!6783321 d!2131746))

(declare-fun d!2131748 () Bool)

(assert (=> d!2131748 (= (tail!12705 (_1!36883 lt!2445168)) (t!379831 (_1!36883 lt!2445168)))))

(assert (=> b!6783321 d!2131748))

(declare-fun d!2131750 () Bool)

(assert (=> d!2131750 (= (isEmptyLang!1970 lt!2445339) ((_ is EmptyLang!16605) lt!2445339))))

(assert (=> b!6783740 d!2131750))

(assert (=> bm!615557 d!2131222))

(declare-fun b!6784736 () Bool)

(declare-fun e!4095484 () (InoxSet Context!11978))

(assert (=> b!6784736 (= e!4095484 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615737 () Bool)

(declare-fun call!615742 () (InoxSet Context!11978))

(assert (=> bm!615737 (= call!615742 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187))))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187)))))) (h!72438 s!2326)))))

(declare-fun b!6784737 () Bool)

(declare-fun e!4095485 () Bool)

(assert (=> b!6784737 (= e!4095485 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187)))))))))

(declare-fun d!2131752 () Bool)

(declare-fun c!1260648 () Bool)

(assert (=> d!2131752 (= c!1260648 e!4095485)))

(declare-fun res!2773176 () Bool)

(assert (=> d!2131752 (=> (not res!2773176) (not e!4095485))))

(assert (=> d!2131752 (= res!2773176 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187))))))))

(declare-fun e!4095483 () (InoxSet Context!11978))

(assert (=> d!2131752 (= (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (h!72438 s!2326)) e!4095483)))

(declare-fun b!6784738 () Bool)

(assert (=> b!6784738 (= e!4095483 ((_ map or) call!615742 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187)))))) (h!72438 s!2326))))))

(declare-fun b!6784739 () Bool)

(assert (=> b!6784739 (= e!4095484 call!615742)))

(declare-fun b!6784740 () Bool)

(assert (=> b!6784740 (= e!4095483 e!4095484)))

(declare-fun c!1260647 () Bool)

(assert (=> b!6784740 (= c!1260647 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187))))))))

(assert (= (and d!2131752 res!2773176) b!6784737))

(assert (= (and d!2131752 c!1260648) b!6784738))

(assert (= (and d!2131752 (not c!1260648)) b!6784740))

(assert (= (and b!6784740 c!1260647) b!6784739))

(assert (= (and b!6784740 (not c!1260647)) b!6784736))

(assert (= (or b!6784738 b!6784739) bm!615737))

(declare-fun m!7533106 () Bool)

(assert (=> bm!615737 m!7533106))

(declare-fun m!7533108 () Bool)

(assert (=> b!6784737 m!7533108))

(declare-fun m!7533110 () Bool)

(assert (=> b!6784738 m!7533110))

(assert (=> b!6783489 d!2131752))

(declare-fun d!2131754 () Bool)

(declare-fun lt!2445400 () Int)

(assert (=> d!2131754 (>= lt!2445400 0)))

(declare-fun e!4095488 () Int)

(assert (=> d!2131754 (= lt!2445400 e!4095488)))

(declare-fun c!1260651 () Bool)

(assert (=> d!2131754 (= c!1260651 ((_ is Nil!65991) lt!2445214))))

(assert (=> d!2131754 (= (size!40639 lt!2445214) lt!2445400)))

(declare-fun b!6784745 () Bool)

(assert (=> b!6784745 (= e!4095488 0)))

(declare-fun b!6784746 () Bool)

(assert (=> b!6784746 (= e!4095488 (+ 1 (size!40639 (t!379832 lt!2445214))))))

(assert (= (and d!2131754 c!1260651) b!6784745))

(assert (= (and d!2131754 (not c!1260651)) b!6784746))

(declare-fun m!7533112 () Bool)

(assert (=> b!6784746 m!7533112))

(assert (=> b!6782960 d!2131754))

(declare-fun d!2131756 () Bool)

(declare-fun lt!2445401 () Int)

(assert (=> d!2131756 (>= lt!2445401 0)))

(declare-fun e!4095489 () Int)

(assert (=> d!2131756 (= lt!2445401 e!4095489)))

(declare-fun c!1260652 () Bool)

(assert (=> d!2131756 (= c!1260652 ((_ is Nil!65991) lt!2445175))))

(assert (=> d!2131756 (= (size!40639 lt!2445175) lt!2445401)))

(declare-fun b!6784747 () Bool)

(assert (=> b!6784747 (= e!4095489 0)))

(declare-fun b!6784748 () Bool)

(assert (=> b!6784748 (= e!4095489 (+ 1 (size!40639 (t!379832 lt!2445175))))))

(assert (= (and d!2131756 c!1260652) b!6784747))

(assert (= (and d!2131756 (not c!1260652)) b!6784748))

(declare-fun m!7533114 () Bool)

(assert (=> b!6784748 m!7533114))

(assert (=> b!6782960 d!2131756))

(declare-fun d!2131758 () Bool)

(declare-fun lt!2445402 () Int)

(assert (=> d!2131758 (>= lt!2445402 0)))

(declare-fun e!4095490 () Int)

(assert (=> d!2131758 (= lt!2445402 e!4095490)))

(declare-fun c!1260653 () Bool)

(assert (=> d!2131758 (= c!1260653 ((_ is Nil!65991) lt!2445201))))

(assert (=> d!2131758 (= (size!40639 lt!2445201) lt!2445402)))

(declare-fun b!6784749 () Bool)

(assert (=> b!6784749 (= e!4095490 0)))

(declare-fun b!6784750 () Bool)

(assert (=> b!6784750 (= e!4095490 (+ 1 (size!40639 (t!379832 lt!2445201))))))

(assert (= (and d!2131758 c!1260653) b!6784749))

(assert (= (and d!2131758 (not c!1260653)) b!6784750))

(declare-fun m!7533116 () Bool)

(assert (=> b!6784750 m!7533116))

(assert (=> b!6782960 d!2131758))

(declare-fun d!2131760 () Bool)

(declare-fun res!2773181 () Bool)

(declare-fun e!4095496 () Bool)

(assert (=> d!2131760 (=> res!2773181 e!4095496)))

(assert (=> d!2131760 (= res!2773181 ((_ is ElementMatch!16605) lt!2445250))))

(assert (=> d!2131760 (= (validRegex!8341 lt!2445250) e!4095496)))

(declare-fun b!6784751 () Bool)

(declare-fun e!4095497 () Bool)

(assert (=> b!6784751 (= e!4095496 e!4095497)))

(declare-fun c!1260654 () Bool)

(assert (=> b!6784751 (= c!1260654 ((_ is Star!16605) lt!2445250))))

(declare-fun bm!615738 () Bool)

(declare-fun call!615743 () Bool)

(declare-fun c!1260655 () Bool)

(assert (=> bm!615738 (= call!615743 (validRegex!8341 (ite c!1260655 (regTwo!33723 lt!2445250) (regTwo!33722 lt!2445250))))))

(declare-fun b!6784752 () Bool)

(declare-fun e!4095492 () Bool)

(declare-fun call!615745 () Bool)

(assert (=> b!6784752 (= e!4095492 call!615745)))

(declare-fun bm!615739 () Bool)

(assert (=> bm!615739 (= call!615745 (validRegex!8341 (ite c!1260654 (reg!16934 lt!2445250) (ite c!1260655 (regOne!33723 lt!2445250) (regOne!33722 lt!2445250)))))))

(declare-fun b!6784753 () Bool)

(declare-fun e!4095494 () Bool)

(declare-fun e!4095495 () Bool)

(assert (=> b!6784753 (= e!4095494 e!4095495)))

(declare-fun res!2773178 () Bool)

(assert (=> b!6784753 (=> (not res!2773178) (not e!4095495))))

(declare-fun call!615744 () Bool)

(assert (=> b!6784753 (= res!2773178 call!615744)))

(declare-fun b!6784754 () Bool)

(declare-fun res!2773177 () Bool)

(declare-fun e!4095493 () Bool)

(assert (=> b!6784754 (=> (not res!2773177) (not e!4095493))))

(assert (=> b!6784754 (= res!2773177 call!615744)))

(declare-fun e!4095491 () Bool)

(assert (=> b!6784754 (= e!4095491 e!4095493)))

(declare-fun b!6784755 () Bool)

(assert (=> b!6784755 (= e!4095497 e!4095491)))

(assert (=> b!6784755 (= c!1260655 ((_ is Union!16605) lt!2445250))))

(declare-fun b!6784756 () Bool)

(assert (=> b!6784756 (= e!4095495 call!615743)))

(declare-fun bm!615740 () Bool)

(assert (=> bm!615740 (= call!615744 call!615745)))

(declare-fun b!6784757 () Bool)

(declare-fun res!2773179 () Bool)

(assert (=> b!6784757 (=> res!2773179 e!4095494)))

(assert (=> b!6784757 (= res!2773179 (not ((_ is Concat!25450) lt!2445250)))))

(assert (=> b!6784757 (= e!4095491 e!4095494)))

(declare-fun b!6784758 () Bool)

(assert (=> b!6784758 (= e!4095493 call!615743)))

(declare-fun b!6784759 () Bool)

(assert (=> b!6784759 (= e!4095497 e!4095492)))

(declare-fun res!2773180 () Bool)

(assert (=> b!6784759 (= res!2773180 (not (nullable!6584 (reg!16934 lt!2445250))))))

(assert (=> b!6784759 (=> (not res!2773180) (not e!4095492))))

(assert (= (and d!2131760 (not res!2773181)) b!6784751))

(assert (= (and b!6784751 c!1260654) b!6784759))

(assert (= (and b!6784751 (not c!1260654)) b!6784755))

(assert (= (and b!6784759 res!2773180) b!6784752))

(assert (= (and b!6784755 c!1260655) b!6784754))

(assert (= (and b!6784755 (not c!1260655)) b!6784757))

(assert (= (and b!6784754 res!2773177) b!6784758))

(assert (= (and b!6784757 (not res!2773179)) b!6784753))

(assert (= (and b!6784753 res!2773178) b!6784756))

(assert (= (or b!6784758 b!6784756) bm!615738))

(assert (= (or b!6784754 b!6784753) bm!615740))

(assert (= (or b!6784752 bm!615740) bm!615739))

(declare-fun m!7533118 () Bool)

(assert (=> bm!615738 m!7533118))

(declare-fun m!7533120 () Bool)

(assert (=> bm!615739 m!7533120))

(declare-fun m!7533122 () Bool)

(assert (=> b!6784759 m!7533122))

(assert (=> d!2131102 d!2131760))

(declare-fun d!2131762 () Bool)

(declare-fun res!2773182 () Bool)

(declare-fun e!4095498 () Bool)

(assert (=> d!2131762 (=> res!2773182 e!4095498)))

(assert (=> d!2131762 (= res!2773182 ((_ is Nil!65991) (exprs!6489 (h!72440 zl!343))))))

(assert (=> d!2131762 (= (forall!15797 (exprs!6489 (h!72440 zl!343)) lambda!381869) e!4095498)))

(declare-fun b!6784760 () Bool)

(declare-fun e!4095499 () Bool)

(assert (=> b!6784760 (= e!4095498 e!4095499)))

(declare-fun res!2773183 () Bool)

(assert (=> b!6784760 (=> (not res!2773183) (not e!4095499))))

(assert (=> b!6784760 (= res!2773183 (dynLambda!26336 lambda!381869 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6784761 () Bool)

(assert (=> b!6784761 (= e!4095499 (forall!15797 (t!379832 (exprs!6489 (h!72440 zl!343))) lambda!381869))))

(assert (= (and d!2131762 (not res!2773182)) b!6784760))

(assert (= (and b!6784760 res!2773183) b!6784761))

(declare-fun b_lambda!255499 () Bool)

(assert (=> (not b_lambda!255499) (not b!6784760)))

(declare-fun m!7533124 () Bool)

(assert (=> b!6784760 m!7533124))

(declare-fun m!7533126 () Bool)

(assert (=> b!6784761 m!7533126))

(assert (=> d!2131102 d!2131762))

(assert (=> d!2131204 d!2131212))

(declare-fun d!2131764 () Bool)

(assert (=> d!2131764 (= (flatMap!2086 lt!2445190 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445169))))

(assert (=> d!2131764 true))

(declare-fun _$13!4203 () Unit!159901)

(assert (=> d!2131764 (= (choose!50518 lt!2445190 lt!2445169 lambda!381850) _$13!4203)))

(declare-fun b_lambda!255501 () Bool)

(assert (=> (not b_lambda!255501) (not d!2131764)))

(declare-fun bs!1807255 () Bool)

(assert (= bs!1807255 d!2131764))

(assert (=> bs!1807255 m!7531330))

(assert (=> bs!1807255 m!7531964))

(assert (=> d!2131204 d!2131764))

(declare-fun d!2131766 () Bool)

(declare-fun c!1260656 () Bool)

(assert (=> d!2131766 (= c!1260656 (isEmpty!38354 (tail!12705 s!2326)))))

(declare-fun e!4095500 () Bool)

(assert (=> d!2131766 (= (matchZipper!2591 (derivationStepZipper!2549 lt!2445167 (head!13620 s!2326)) (tail!12705 s!2326)) e!4095500)))

(declare-fun b!6784762 () Bool)

(assert (=> b!6784762 (= e!4095500 (nullableZipper!2312 (derivationStepZipper!2549 lt!2445167 (head!13620 s!2326))))))

(declare-fun b!6784763 () Bool)

(assert (=> b!6784763 (= e!4095500 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445167 (head!13620 s!2326)) (head!13620 (tail!12705 s!2326))) (tail!12705 (tail!12705 s!2326))))))

(assert (= (and d!2131766 c!1260656) b!6784762))

(assert (= (and d!2131766 (not c!1260656)) b!6784763))

(assert (=> d!2131766 m!7531476))

(assert (=> d!2131766 m!7531934))

(assert (=> b!6784762 m!7532122))

(declare-fun m!7533128 () Bool)

(assert (=> b!6784762 m!7533128))

(assert (=> b!6784763 m!7531476))

(declare-fun m!7533130 () Bool)

(assert (=> b!6784763 m!7533130))

(assert (=> b!6784763 m!7532122))

(assert (=> b!6784763 m!7533130))

(declare-fun m!7533132 () Bool)

(assert (=> b!6784763 m!7533132))

(assert (=> b!6784763 m!7531476))

(declare-fun m!7533134 () Bool)

(assert (=> b!6784763 m!7533134))

(assert (=> b!6784763 m!7533132))

(assert (=> b!6784763 m!7533134))

(declare-fun m!7533136 () Bool)

(assert (=> b!6784763 m!7533136))

(assert (=> b!6783711 d!2131766))

(declare-fun bs!1807256 () Bool)

(declare-fun d!2131768 () Bool)

(assert (= bs!1807256 (and d!2131768 b!6782908)))

(declare-fun lambda!382001 () Int)

(assert (=> bs!1807256 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382001 lambda!381850))))

(declare-fun bs!1807257 () Bool)

(assert (= bs!1807257 (and d!2131768 d!2131704)))

(assert (=> bs!1807257 (= (= (head!13620 s!2326) (head!13620 lt!2445194)) (= lambda!382001 lambda!381995))))

(declare-fun bs!1807258 () Bool)

(assert (= bs!1807258 (and d!2131768 d!2131270)))

(assert (=> bs!1807258 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382001 lambda!381931))))

(declare-fun bs!1807259 () Bool)

(assert (= bs!1807259 (and d!2131768 d!2131208)))

(assert (=> bs!1807259 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382001 lambda!381905))))

(declare-fun bs!1807260 () Bool)

(assert (= bs!1807260 (and d!2131768 d!2131718)))

(assert (=> bs!1807260 (= (= (head!13620 s!2326) (head!13620 (t!379831 s!2326))) (= lambda!382001 lambda!381999))))

(declare-fun bs!1807261 () Bool)

(assert (= bs!1807261 (and d!2131768 d!2131162)))

(assert (=> bs!1807261 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382001 lambda!381887))))

(assert (=> d!2131768 true))

(assert (=> d!2131768 (= (derivationStepZipper!2549 lt!2445167 (head!13620 s!2326)) (flatMap!2086 lt!2445167 lambda!382001))))

(declare-fun bs!1807262 () Bool)

(assert (= bs!1807262 d!2131768))

(declare-fun m!7533138 () Bool)

(assert (=> bs!1807262 m!7533138))

(assert (=> b!6783711 d!2131768))

(declare-fun d!2131770 () Bool)

(assert (=> d!2131770 (= (head!13620 s!2326) (h!72438 s!2326))))

(assert (=> b!6783711 d!2131770))

(declare-fun d!2131772 () Bool)

(assert (=> d!2131772 (= (tail!12705 s!2326) (t!379831 s!2326))))

(assert (=> b!6783711 d!2131772))

(declare-fun d!2131774 () Bool)

(assert (=> d!2131774 (= (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168))) ((_ is Nil!65990) (tail!12705 (_2!36883 lt!2445168))))))

(assert (=> b!6783300 d!2131774))

(assert (=> b!6783300 d!2131676))

(declare-fun b!6784764 () Bool)

(declare-fun e!4095505 () Bool)

(assert (=> b!6784764 (= e!4095505 (matchR!8788 (derivativeStep!5269 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))) (head!13620 (tail!12705 (_1!36883 lt!2445168)))) (tail!12705 (tail!12705 (_1!36883 lt!2445168)))))))

(declare-fun b!6784765 () Bool)

(assert (=> b!6784765 (= e!4095505 (nullable!6584 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168)))))))

(declare-fun b!6784766 () Bool)

(declare-fun e!4095501 () Bool)

(declare-fun lt!2445403 () Bool)

(assert (=> b!6784766 (= e!4095501 (not lt!2445403))))

(declare-fun b!6784767 () Bool)

(declare-fun e!4095502 () Bool)

(assert (=> b!6784767 (= e!4095502 e!4095501)))

(declare-fun c!1260659 () Bool)

(assert (=> b!6784767 (= c!1260659 ((_ is EmptyLang!16605) (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168)))))))

(declare-fun b!6784768 () Bool)

(declare-fun res!2773188 () Bool)

(declare-fun e!4095503 () Bool)

(assert (=> b!6784768 (=> (not res!2773188) (not e!4095503))))

(declare-fun call!615746 () Bool)

(assert (=> b!6784768 (= res!2773188 (not call!615746))))

(declare-fun b!6784769 () Bool)

(declare-fun res!2773187 () Bool)

(declare-fun e!4095504 () Bool)

(assert (=> b!6784769 (=> res!2773187 e!4095504)))

(assert (=> b!6784769 (= res!2773187 e!4095503)))

(declare-fun res!2773191 () Bool)

(assert (=> b!6784769 (=> (not res!2773191) (not e!4095503))))

(assert (=> b!6784769 (= res!2773191 lt!2445403)))

(declare-fun b!6784770 () Bool)

(assert (=> b!6784770 (= e!4095502 (= lt!2445403 call!615746))))

(declare-fun b!6784771 () Bool)

(declare-fun e!4095507 () Bool)

(declare-fun e!4095506 () Bool)

(assert (=> b!6784771 (= e!4095507 e!4095506)))

(declare-fun res!2773186 () Bool)

(assert (=> b!6784771 (=> res!2773186 e!4095506)))

(assert (=> b!6784771 (= res!2773186 call!615746)))

(declare-fun b!6784772 () Bool)

(declare-fun res!2773189 () Bool)

(assert (=> b!6784772 (=> res!2773189 e!4095504)))

(assert (=> b!6784772 (= res!2773189 (not ((_ is ElementMatch!16605) (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))))))))

(assert (=> b!6784772 (= e!4095501 e!4095504)))

(declare-fun b!6784773 () Bool)

(assert (=> b!6784773 (= e!4095506 (not (= (head!13620 (tail!12705 (_1!36883 lt!2445168))) (c!1260145 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168)))))))))

(declare-fun b!6784774 () Bool)

(assert (=> b!6784774 (= e!4095503 (= (head!13620 (tail!12705 (_1!36883 lt!2445168))) (c!1260145 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))))))))

(declare-fun b!6784775 () Bool)

(assert (=> b!6784775 (= e!4095504 e!4095507)))

(declare-fun res!2773190 () Bool)

(assert (=> b!6784775 (=> (not res!2773190) (not e!4095507))))

(assert (=> b!6784775 (= res!2773190 (not lt!2445403))))

(declare-fun bm!615741 () Bool)

(assert (=> bm!615741 (= call!615746 (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168))))))

(declare-fun d!2131776 () Bool)

(assert (=> d!2131776 e!4095502))

(declare-fun c!1260657 () Bool)

(assert (=> d!2131776 (= c!1260657 ((_ is EmptyExpr!16605) (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168)))))))

(assert (=> d!2131776 (= lt!2445403 e!4095505)))

(declare-fun c!1260658 () Bool)

(assert (=> d!2131776 (= c!1260658 (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168))))))

(assert (=> d!2131776 (validRegex!8341 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))))))

(assert (=> d!2131776 (= (matchR!8788 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))) (tail!12705 (_1!36883 lt!2445168))) lt!2445403)))

(declare-fun b!6784776 () Bool)

(declare-fun res!2773184 () Bool)

(assert (=> b!6784776 (=> res!2773184 e!4095506)))

(assert (=> b!6784776 (= res!2773184 (not (isEmpty!38354 (tail!12705 (tail!12705 (_1!36883 lt!2445168))))))))

(declare-fun b!6784777 () Bool)

(declare-fun res!2773185 () Bool)

(assert (=> b!6784777 (=> (not res!2773185) (not e!4095503))))

(assert (=> b!6784777 (= res!2773185 (isEmpty!38354 (tail!12705 (tail!12705 (_1!36883 lt!2445168)))))))

(assert (= (and d!2131776 c!1260658) b!6784765))

(assert (= (and d!2131776 (not c!1260658)) b!6784764))

(assert (= (and d!2131776 c!1260657) b!6784770))

(assert (= (and d!2131776 (not c!1260657)) b!6784767))

(assert (= (and b!6784767 c!1260659) b!6784766))

(assert (= (and b!6784767 (not c!1260659)) b!6784772))

(assert (= (and b!6784772 (not res!2773189)) b!6784769))

(assert (= (and b!6784769 res!2773191) b!6784768))

(assert (= (and b!6784768 res!2773188) b!6784777))

(assert (= (and b!6784777 res!2773185) b!6784774))

(assert (= (and b!6784769 (not res!2773187)) b!6784775))

(assert (= (and b!6784775 res!2773190) b!6784771))

(assert (= (and b!6784771 (not res!2773186)) b!6784776))

(assert (= (and b!6784776 (not res!2773184)) b!6784773))

(assert (= (or b!6784770 b!6784768 b!6784771) bm!615741))

(assert (=> b!6784777 m!7531460))

(declare-fun m!7533140 () Bool)

(assert (=> b!6784777 m!7533140))

(assert (=> b!6784777 m!7533140))

(declare-fun m!7533142 () Bool)

(assert (=> b!6784777 m!7533142))

(assert (=> b!6784773 m!7531460))

(declare-fun m!7533144 () Bool)

(assert (=> b!6784773 m!7533144))

(assert (=> b!6784776 m!7531460))

(assert (=> b!6784776 m!7533140))

(assert (=> b!6784776 m!7533140))

(assert (=> b!6784776 m!7533142))

(assert (=> b!6784764 m!7531460))

(assert (=> b!6784764 m!7533144))

(assert (=> b!6784764 m!7531766))

(assert (=> b!6784764 m!7533144))

(declare-fun m!7533146 () Bool)

(assert (=> b!6784764 m!7533146))

(assert (=> b!6784764 m!7531460))

(assert (=> b!6784764 m!7533140))

(assert (=> b!6784764 m!7533146))

(assert (=> b!6784764 m!7533140))

(declare-fun m!7533148 () Bool)

(assert (=> b!6784764 m!7533148))

(assert (=> d!2131776 m!7531460))

(assert (=> d!2131776 m!7531764))

(assert (=> d!2131776 m!7531766))

(declare-fun m!7533150 () Bool)

(assert (=> d!2131776 m!7533150))

(assert (=> b!6784765 m!7531766))

(declare-fun m!7533152 () Bool)

(assert (=> b!6784765 m!7533152))

(assert (=> bm!615741 m!7531460))

(assert (=> bm!615741 m!7531764))

(assert (=> b!6784774 m!7531460))

(assert (=> b!6784774 m!7533144))

(assert (=> b!6783308 d!2131776))

(declare-fun b!6784778 () Bool)

(declare-fun e!4095510 () Regex!16605)

(declare-fun e!4095509 () Regex!16605)

(assert (=> b!6784778 (= e!4095510 e!4095509)))

(declare-fun c!1260661 () Bool)

(assert (=> b!6784778 (= c!1260661 ((_ is Star!16605) (reg!16934 r!7292)))))

(declare-fun b!6784779 () Bool)

(declare-fun c!1260663 () Bool)

(assert (=> b!6784779 (= c!1260663 (nullable!6584 (regOne!33722 (reg!16934 r!7292))))))

(declare-fun e!4095508 () Regex!16605)

(assert (=> b!6784779 (= e!4095509 e!4095508)))

(declare-fun b!6784780 () Bool)

(declare-fun call!615749 () Regex!16605)

(assert (=> b!6784780 (= e!4095509 (Concat!25450 call!615749 (reg!16934 r!7292)))))

(declare-fun bm!615742 () Bool)

(declare-fun call!615748 () Regex!16605)

(assert (=> bm!615742 (= call!615748 call!615749)))

(declare-fun call!615747 () Regex!16605)

(declare-fun b!6784781 () Bool)

(assert (=> b!6784781 (= e!4095508 (Union!16605 (Concat!25450 call!615747 (regTwo!33722 (reg!16934 r!7292))) call!615748))))

(declare-fun c!1260664 () Bool)

(declare-fun call!615750 () Regex!16605)

(declare-fun bm!615743 () Bool)

(assert (=> bm!615743 (= call!615750 (derivativeStep!5269 (ite c!1260664 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260661 (reg!16934 (reg!16934 r!7292)) (ite c!1260663 (regTwo!33722 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))) (head!13620 (_1!36883 lt!2445168))))))

(declare-fun b!6784782 () Bool)

(assert (=> b!6784782 (= e!4095510 (Union!16605 call!615747 call!615750))))

(declare-fun b!6784783 () Bool)

(assert (=> b!6784783 (= c!1260664 ((_ is Union!16605) (reg!16934 r!7292)))))

(declare-fun e!4095512 () Regex!16605)

(assert (=> b!6784783 (= e!4095512 e!4095510)))

(declare-fun d!2131778 () Bool)

(declare-fun lt!2445404 () Regex!16605)

(assert (=> d!2131778 (validRegex!8341 lt!2445404)))

(declare-fun e!4095511 () Regex!16605)

(assert (=> d!2131778 (= lt!2445404 e!4095511)))

(declare-fun c!1260660 () Bool)

(assert (=> d!2131778 (= c!1260660 (or ((_ is EmptyExpr!16605) (reg!16934 r!7292)) ((_ is EmptyLang!16605) (reg!16934 r!7292))))))

(assert (=> d!2131778 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131778 (= (derivativeStep!5269 (reg!16934 r!7292) (head!13620 (_1!36883 lt!2445168))) lt!2445404)))

(declare-fun bm!615744 () Bool)

(assert (=> bm!615744 (= call!615749 call!615750)))

(declare-fun b!6784784 () Bool)

(assert (=> b!6784784 (= e!4095512 (ite (= (head!13620 (_1!36883 lt!2445168)) (c!1260145 (reg!16934 r!7292))) EmptyExpr!16605 EmptyLang!16605))))

(declare-fun b!6784785 () Bool)

(assert (=> b!6784785 (= e!4095511 EmptyLang!16605)))

(declare-fun b!6784786 () Bool)

(assert (=> b!6784786 (= e!4095511 e!4095512)))

(declare-fun c!1260662 () Bool)

(assert (=> b!6784786 (= c!1260662 ((_ is ElementMatch!16605) (reg!16934 r!7292)))))

(declare-fun b!6784787 () Bool)

(assert (=> b!6784787 (= e!4095508 (Union!16605 (Concat!25450 call!615748 (regTwo!33722 (reg!16934 r!7292))) EmptyLang!16605))))

(declare-fun bm!615745 () Bool)

(assert (=> bm!615745 (= call!615747 (derivativeStep!5269 (ite c!1260664 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))) (head!13620 (_1!36883 lt!2445168))))))

(assert (= (and d!2131778 c!1260660) b!6784785))

(assert (= (and d!2131778 (not c!1260660)) b!6784786))

(assert (= (and b!6784786 c!1260662) b!6784784))

(assert (= (and b!6784786 (not c!1260662)) b!6784783))

(assert (= (and b!6784783 c!1260664) b!6784782))

(assert (= (and b!6784783 (not c!1260664)) b!6784778))

(assert (= (and b!6784778 c!1260661) b!6784780))

(assert (= (and b!6784778 (not c!1260661)) b!6784779))

(assert (= (and b!6784779 c!1260663) b!6784781))

(assert (= (and b!6784779 (not c!1260663)) b!6784787))

(assert (= (or b!6784781 b!6784787) bm!615742))

(assert (= (or b!6784780 bm!615742) bm!615744))

(assert (= (or b!6784782 bm!615744) bm!615743))

(assert (= (or b!6784782 b!6784781) bm!615745))

(assert (=> b!6784779 m!7531646))

(assert (=> bm!615743 m!7531456))

(declare-fun m!7533154 () Bool)

(assert (=> bm!615743 m!7533154))

(declare-fun m!7533156 () Bool)

(assert (=> d!2131778 m!7533156))

(assert (=> d!2131778 m!7531450))

(assert (=> bm!615745 m!7531456))

(declare-fun m!7533158 () Bool)

(assert (=> bm!615745 m!7533158))

(assert (=> b!6783308 d!2131778))

(assert (=> b!6783308 d!2131732))

(assert (=> b!6783308 d!2131748))

(declare-fun b!6784788 () Bool)

(declare-fun e!4095514 () (InoxSet Context!11978))

(declare-fun call!615751 () (InoxSet Context!11978))

(assert (=> b!6784788 (= e!4095514 call!615751)))

(declare-fun b!6784789 () Bool)

(declare-fun e!4095517 () (InoxSet Context!11978))

(assert (=> b!6784789 (= e!4095517 (store ((as const (Array Context!11978 Bool)) false) (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532)) true))))

(declare-fun bm!615746 () Bool)

(declare-fun call!615753 () (InoxSet Context!11978))

(assert (=> bm!615746 (= call!615751 call!615753)))

(declare-fun b!6784790 () Bool)

(declare-fun e!4095516 () (InoxSet Context!11978))

(assert (=> b!6784790 (= e!4095516 e!4095514)))

(declare-fun c!1260666 () Bool)

(assert (=> b!6784790 (= c!1260666 ((_ is Concat!25450) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))))))

(declare-fun b!6784791 () Bool)

(declare-fun c!1260669 () Bool)

(assert (=> b!6784791 (= c!1260669 ((_ is Star!16605) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))))))

(declare-fun e!4095515 () (InoxSet Context!11978))

(assert (=> b!6784791 (= e!4095514 e!4095515)))

(declare-fun bm!615747 () Bool)

(declare-fun call!615752 () List!66115)

(declare-fun call!615756 () List!66115)

(assert (=> bm!615747 (= call!615752 call!615756)))

(declare-fun bm!615748 () Bool)

(declare-fun call!615755 () (InoxSet Context!11978))

(assert (=> bm!615748 (= call!615753 call!615755)))

(declare-fun b!6784792 () Bool)

(declare-fun call!615754 () (InoxSet Context!11978))

(assert (=> b!6784792 (= e!4095516 ((_ map or) call!615754 call!615753))))

(declare-fun e!4095513 () Bool)

(declare-fun b!6784793 () Bool)

(assert (=> b!6784793 (= e!4095513 (nullable!6584 (regOne!33722 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))))))))

(declare-fun c!1260667 () Bool)

(declare-fun bm!615749 () Bool)

(assert (=> bm!615749 (= call!615756 ($colon$colon!2414 (exprs!6489 (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532))) (ite (or c!1260667 c!1260666) (regTwo!33722 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))))))))

(declare-fun b!6784794 () Bool)

(assert (=> b!6784794 (= c!1260667 e!4095513)))

(declare-fun res!2773192 () Bool)

(assert (=> b!6784794 (=> (not res!2773192) (not e!4095513))))

(assert (=> b!6784794 (= res!2773192 ((_ is Concat!25450) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))))))

(declare-fun e!4095518 () (InoxSet Context!11978))

(assert (=> b!6784794 (= e!4095518 e!4095516)))

(declare-fun bm!615750 () Bool)

(declare-fun c!1260668 () Bool)

(assert (=> bm!615750 (= call!615755 (derivationStepZipperDown!1833 (ite c!1260668 (regTwo!33723 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (ite c!1260667 (regTwo!33722 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (ite c!1260666 (regOne!33722 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (reg!16934 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))))))) (ite (or c!1260668 c!1260667) (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532)) (Context!11979 call!615752)) (h!72438 s!2326)))))

(declare-fun bm!615751 () Bool)

(assert (=> bm!615751 (= call!615754 (derivationStepZipperDown!1833 (ite c!1260668 (regOne!33723 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (regOne!33722 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))))) (ite c!1260668 (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532)) (Context!11979 call!615756)) (h!72438 s!2326)))))

(declare-fun b!6784795 () Bool)

(assert (=> b!6784795 (= e!4095517 e!4095518)))

(assert (=> b!6784795 (= c!1260668 ((_ is Union!16605) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))))))

(declare-fun c!1260665 () Bool)

(declare-fun d!2131780 () Bool)

(assert (=> d!2131780 (= c!1260665 (and ((_ is ElementMatch!16605) (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (= (c!1260145 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292))))) (h!72438 s!2326))))))

(assert (=> d!2131780 (= (derivationStepZipperDown!1833 (ite c!1260278 (regTwo!33723 r!7292) (ite c!1260277 (regTwo!33722 r!7292) (ite c!1260276 (regOne!33722 r!7292) (reg!16934 r!7292)))) (ite (or c!1260278 c!1260277) (Context!11979 Nil!65991) (Context!11979 call!615532)) (h!72438 s!2326)) e!4095517)))

(declare-fun b!6784796 () Bool)

(assert (=> b!6784796 (= e!4095518 ((_ map or) call!615754 call!615755))))

(declare-fun b!6784797 () Bool)

(assert (=> b!6784797 (= e!4095515 call!615751)))

(declare-fun b!6784798 () Bool)

(assert (=> b!6784798 (= e!4095515 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131780 c!1260665) b!6784789))

(assert (= (and d!2131780 (not c!1260665)) b!6784795))

(assert (= (and b!6784795 c!1260668) b!6784796))

(assert (= (and b!6784795 (not c!1260668)) b!6784794))

(assert (= (and b!6784794 res!2773192) b!6784793))

(assert (= (and b!6784794 c!1260667) b!6784792))

(assert (= (and b!6784794 (not c!1260667)) b!6784790))

(assert (= (and b!6784790 c!1260666) b!6784788))

(assert (= (and b!6784790 (not c!1260666)) b!6784791))

(assert (= (and b!6784791 c!1260669) b!6784797))

(assert (= (and b!6784791 (not c!1260669)) b!6784798))

(assert (= (or b!6784788 b!6784797) bm!615747))

(assert (= (or b!6784788 b!6784797) bm!615746))

(assert (= (or b!6784792 bm!615747) bm!615749))

(assert (= (or b!6784792 bm!615746) bm!615748))

(assert (= (or b!6784796 bm!615748) bm!615750))

(assert (= (or b!6784796 b!6784792) bm!615751))

(declare-fun m!7533160 () Bool)

(assert (=> b!6784789 m!7533160))

(declare-fun m!7533162 () Bool)

(assert (=> b!6784793 m!7533162))

(declare-fun m!7533164 () Bool)

(assert (=> bm!615750 m!7533164))

(declare-fun m!7533166 () Bool)

(assert (=> bm!615749 m!7533166))

(declare-fun m!7533168 () Bool)

(assert (=> bm!615751 m!7533168))

(assert (=> bm!615530 d!2131780))

(declare-fun d!2131782 () Bool)

(assert (=> d!2131782 (= (isEmpty!38354 (tail!12705 s!2326)) ((_ is Nil!65990) (tail!12705 s!2326)))))

(assert (=> b!6783774 d!2131782))

(assert (=> b!6783774 d!2131772))

(declare-fun d!2131784 () Bool)

(assert (=> d!2131784 (= (nullable!6584 (regOne!33722 (reg!16934 r!7292))) (nullableFct!2490 (regOne!33722 (reg!16934 r!7292))))))

(declare-fun bs!1807263 () Bool)

(assert (= bs!1807263 d!2131784))

(declare-fun m!7533170 () Bool)

(assert (=> bs!1807263 m!7533170))

(assert (=> b!6783065 d!2131784))

(assert (=> d!2131100 d!2131088))

(declare-fun d!2131786 () Bool)

(assert (=> d!2131786 (= (flatMap!2086 lt!2445167 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445202))))

(assert (=> d!2131786 true))

(declare-fun _$13!4204 () Unit!159901)

(assert (=> d!2131786 (= (choose!50518 lt!2445167 lt!2445202 lambda!381850) _$13!4204)))

(declare-fun b_lambda!255503 () Bool)

(assert (=> (not b_lambda!255503) (not d!2131786)))

(declare-fun bs!1807264 () Bool)

(assert (= bs!1807264 d!2131786))

(assert (=> bs!1807264 m!7531382))

(assert (=> bs!1807264 m!7531682))

(assert (=> d!2131100 d!2131786))

(declare-fun bs!1807265 () Bool)

(declare-fun d!2131788 () Bool)

(assert (= bs!1807265 (and d!2131788 d!2131714)))

(declare-fun lambda!382002 () Int)

(assert (=> bs!1807265 (= lambda!382002 lambda!381998)))

(declare-fun bs!1807266 () Bool)

(assert (= bs!1807266 (and d!2131788 d!2131724)))

(assert (=> bs!1807266 (= lambda!382002 lambda!382000)))

(assert (=> d!2131788 (= (nullableZipper!2312 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true)) (exists!2727 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 lt!2445175 lt!2445201)) true) lambda!382002))))

(declare-fun bs!1807267 () Bool)

(assert (= bs!1807267 d!2131788))

(assert (=> bs!1807267 m!7531426))

(declare-fun m!7533172 () Bool)

(assert (=> bs!1807267 m!7533172))

(assert (=> b!6782962 d!2131788))

(assert (=> b!6783464 d!2131770))

(declare-fun b!6784799 () Bool)

(declare-fun e!4095523 () Bool)

(assert (=> b!6784799 (= e!4095523 (matchR!8788 (derivativeStep!5269 r!7292 (head!13620 (_2!36883 (get!22977 lt!2445331)))) (tail!12705 (_2!36883 (get!22977 lt!2445331)))))))

(declare-fun b!6784800 () Bool)

(assert (=> b!6784800 (= e!4095523 (nullable!6584 r!7292))))

(declare-fun b!6784801 () Bool)

(declare-fun e!4095519 () Bool)

(declare-fun lt!2445405 () Bool)

(assert (=> b!6784801 (= e!4095519 (not lt!2445405))))

(declare-fun b!6784802 () Bool)

(declare-fun e!4095520 () Bool)

(assert (=> b!6784802 (= e!4095520 e!4095519)))

(declare-fun c!1260672 () Bool)

(assert (=> b!6784802 (= c!1260672 ((_ is EmptyLang!16605) r!7292))))

(declare-fun b!6784803 () Bool)

(declare-fun res!2773197 () Bool)

(declare-fun e!4095521 () Bool)

(assert (=> b!6784803 (=> (not res!2773197) (not e!4095521))))

(declare-fun call!615757 () Bool)

(assert (=> b!6784803 (= res!2773197 (not call!615757))))

(declare-fun b!6784804 () Bool)

(declare-fun res!2773196 () Bool)

(declare-fun e!4095522 () Bool)

(assert (=> b!6784804 (=> res!2773196 e!4095522)))

(assert (=> b!6784804 (= res!2773196 e!4095521)))

(declare-fun res!2773200 () Bool)

(assert (=> b!6784804 (=> (not res!2773200) (not e!4095521))))

(assert (=> b!6784804 (= res!2773200 lt!2445405)))

(declare-fun b!6784805 () Bool)

(assert (=> b!6784805 (= e!4095520 (= lt!2445405 call!615757))))

(declare-fun b!6784806 () Bool)

(declare-fun e!4095525 () Bool)

(declare-fun e!4095524 () Bool)

(assert (=> b!6784806 (= e!4095525 e!4095524)))

(declare-fun res!2773195 () Bool)

(assert (=> b!6784806 (=> res!2773195 e!4095524)))

(assert (=> b!6784806 (= res!2773195 call!615757)))

(declare-fun b!6784807 () Bool)

(declare-fun res!2773198 () Bool)

(assert (=> b!6784807 (=> res!2773198 e!4095522)))

(assert (=> b!6784807 (= res!2773198 (not ((_ is ElementMatch!16605) r!7292)))))

(assert (=> b!6784807 (= e!4095519 e!4095522)))

(declare-fun b!6784808 () Bool)

(assert (=> b!6784808 (= e!4095524 (not (= (head!13620 (_2!36883 (get!22977 lt!2445331))) (c!1260145 r!7292))))))

(declare-fun b!6784809 () Bool)

(assert (=> b!6784809 (= e!4095521 (= (head!13620 (_2!36883 (get!22977 lt!2445331))) (c!1260145 r!7292)))))

(declare-fun b!6784810 () Bool)

(assert (=> b!6784810 (= e!4095522 e!4095525)))

(declare-fun res!2773199 () Bool)

(assert (=> b!6784810 (=> (not res!2773199) (not e!4095525))))

(assert (=> b!6784810 (= res!2773199 (not lt!2445405))))

(declare-fun bm!615752 () Bool)

(assert (=> bm!615752 (= call!615757 (isEmpty!38354 (_2!36883 (get!22977 lt!2445331))))))

(declare-fun d!2131790 () Bool)

(assert (=> d!2131790 e!4095520))

(declare-fun c!1260670 () Bool)

(assert (=> d!2131790 (= c!1260670 ((_ is EmptyExpr!16605) r!7292))))

(assert (=> d!2131790 (= lt!2445405 e!4095523)))

(declare-fun c!1260671 () Bool)

(assert (=> d!2131790 (= c!1260671 (isEmpty!38354 (_2!36883 (get!22977 lt!2445331))))))

(assert (=> d!2131790 (validRegex!8341 r!7292)))

(assert (=> d!2131790 (= (matchR!8788 r!7292 (_2!36883 (get!22977 lt!2445331))) lt!2445405)))

(declare-fun b!6784811 () Bool)

(declare-fun res!2773193 () Bool)

(assert (=> b!6784811 (=> res!2773193 e!4095524)))

(assert (=> b!6784811 (= res!2773193 (not (isEmpty!38354 (tail!12705 (_2!36883 (get!22977 lt!2445331))))))))

(declare-fun b!6784812 () Bool)

(declare-fun res!2773194 () Bool)

(assert (=> b!6784812 (=> (not res!2773194) (not e!4095521))))

(assert (=> b!6784812 (= res!2773194 (isEmpty!38354 (tail!12705 (_2!36883 (get!22977 lt!2445331)))))))

(assert (= (and d!2131790 c!1260671) b!6784800))

(assert (= (and d!2131790 (not c!1260671)) b!6784799))

(assert (= (and d!2131790 c!1260670) b!6784805))

(assert (= (and d!2131790 (not c!1260670)) b!6784802))

(assert (= (and b!6784802 c!1260672) b!6784801))

(assert (= (and b!6784802 (not c!1260672)) b!6784807))

(assert (= (and b!6784807 (not res!2773198)) b!6784804))

(assert (= (and b!6784804 res!2773200) b!6784803))

(assert (= (and b!6784803 res!2773197) b!6784812))

(assert (= (and b!6784812 res!2773194) b!6784809))

(assert (= (and b!6784804 (not res!2773196)) b!6784810))

(assert (= (and b!6784810 res!2773199) b!6784806))

(assert (= (and b!6784806 (not res!2773195)) b!6784811))

(assert (= (and b!6784811 (not res!2773193)) b!6784808))

(assert (= (or b!6784805 b!6784803 b!6784806) bm!615752))

(declare-fun m!7533174 () Bool)

(assert (=> b!6784812 m!7533174))

(assert (=> b!6784812 m!7533174))

(declare-fun m!7533176 () Bool)

(assert (=> b!6784812 m!7533176))

(declare-fun m!7533178 () Bool)

(assert (=> b!6784808 m!7533178))

(assert (=> b!6784811 m!7533174))

(assert (=> b!6784811 m!7533174))

(assert (=> b!6784811 m!7533176))

(assert (=> b!6784799 m!7533178))

(assert (=> b!6784799 m!7533178))

(declare-fun m!7533180 () Bool)

(assert (=> b!6784799 m!7533180))

(assert (=> b!6784799 m!7533174))

(assert (=> b!6784799 m!7533180))

(assert (=> b!6784799 m!7533174))

(declare-fun m!7533182 () Bool)

(assert (=> b!6784799 m!7533182))

(declare-fun m!7533184 () Bool)

(assert (=> d!2131790 m!7533184))

(assert (=> d!2131790 m!7531348))

(assert (=> b!6784800 m!7531762))

(assert (=> bm!615752 m!7533184))

(assert (=> b!6784809 m!7533178))

(assert (=> b!6783700 d!2131790))

(assert (=> b!6783700 d!2131700))

(declare-fun bs!1807268 () Bool)

(declare-fun d!2131792 () Bool)

(assert (= bs!1807268 (and d!2131792 d!2131714)))

(declare-fun lambda!382003 () Int)

(assert (=> bs!1807268 (= lambda!382003 lambda!381998)))

(declare-fun bs!1807269 () Bool)

(assert (= bs!1807269 (and d!2131792 d!2131724)))

(assert (=> bs!1807269 (= lambda!382003 lambda!382000)))

(declare-fun bs!1807270 () Bool)

(assert (= bs!1807270 (and d!2131792 d!2131788)))

(assert (=> bs!1807270 (= lambda!382003 lambda!382002)))

(assert (=> d!2131792 (= (nullableZipper!2312 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326))) (exists!2727 (derivationStepZipper!2549 lt!2445167 (h!72438 s!2326)) lambda!382003))))

(declare-fun bs!1807271 () Bool)

(assert (= bs!1807271 d!2131792))

(assert (=> bs!1807271 m!7531356))

(declare-fun m!7533186 () Bool)

(assert (=> bs!1807271 m!7533186))

(assert (=> b!6783712 d!2131792))

(declare-fun d!2131794 () Bool)

(assert (=> d!2131794 true))

(declare-fun setRes!46421 () Bool)

(assert (=> d!2131794 setRes!46421))

(declare-fun condSetEmpty!46421 () Bool)

(declare-fun res!2773201 () (InoxSet Context!11978))

(assert (=> d!2131794 (= condSetEmpty!46421 (= res!2773201 ((as const (Array Context!11978 Bool)) false)))))

(assert (=> d!2131794 (= (choose!50517 lt!2445190 lambda!381850) res!2773201)))

(declare-fun setIsEmpty!46421 () Bool)

(assert (=> setIsEmpty!46421 setRes!46421))

(declare-fun tp!1858617 () Bool)

(declare-fun setNonEmpty!46421 () Bool)

(declare-fun setElem!46421 () Context!11978)

(declare-fun e!4095526 () Bool)

(assert (=> setNonEmpty!46421 (= setRes!46421 (and tp!1858617 (inv!84759 setElem!46421) e!4095526))))

(declare-fun setRest!46421 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46421 (= res!2773201 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46421 true) setRest!46421))))

(declare-fun b!6784813 () Bool)

(declare-fun tp!1858616 () Bool)

(assert (=> b!6784813 (= e!4095526 tp!1858616)))

(assert (= (and d!2131794 condSetEmpty!46421) setIsEmpty!46421))

(assert (= (and d!2131794 (not condSetEmpty!46421)) setNonEmpty!46421))

(assert (= setNonEmpty!46421 b!6784813))

(declare-fun m!7533188 () Bool)

(assert (=> setNonEmpty!46421 m!7533188))

(assert (=> d!2131212 d!2131794))

(declare-fun d!2131796 () Bool)

(assert (=> d!2131796 (= (isEmpty!38354 (_1!36883 lt!2445168)) ((_ is Nil!65990) (_1!36883 lt!2445168)))))

(assert (=> d!2131128 d!2131796))

(declare-fun d!2131798 () Bool)

(declare-fun res!2773206 () Bool)

(declare-fun e!4095532 () Bool)

(assert (=> d!2131798 (=> res!2773206 e!4095532)))

(assert (=> d!2131798 (= res!2773206 ((_ is ElementMatch!16605) (reg!16934 r!7292)))))

(assert (=> d!2131798 (= (validRegex!8341 (reg!16934 r!7292)) e!4095532)))

(declare-fun b!6784814 () Bool)

(declare-fun e!4095533 () Bool)

(assert (=> b!6784814 (= e!4095532 e!4095533)))

(declare-fun c!1260673 () Bool)

(assert (=> b!6784814 (= c!1260673 ((_ is Star!16605) (reg!16934 r!7292)))))

(declare-fun bm!615753 () Bool)

(declare-fun call!615758 () Bool)

(declare-fun c!1260674 () Bool)

(assert (=> bm!615753 (= call!615758 (validRegex!8341 (ite c!1260674 (regTwo!33723 (reg!16934 r!7292)) (regTwo!33722 (reg!16934 r!7292)))))))

(declare-fun b!6784815 () Bool)

(declare-fun e!4095528 () Bool)

(declare-fun call!615760 () Bool)

(assert (=> b!6784815 (= e!4095528 call!615760)))

(declare-fun bm!615754 () Bool)

(assert (=> bm!615754 (= call!615760 (validRegex!8341 (ite c!1260673 (reg!16934 (reg!16934 r!7292)) (ite c!1260674 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))))))

(declare-fun b!6784816 () Bool)

(declare-fun e!4095530 () Bool)

(declare-fun e!4095531 () Bool)

(assert (=> b!6784816 (= e!4095530 e!4095531)))

(declare-fun res!2773203 () Bool)

(assert (=> b!6784816 (=> (not res!2773203) (not e!4095531))))

(declare-fun call!615759 () Bool)

(assert (=> b!6784816 (= res!2773203 call!615759)))

(declare-fun b!6784817 () Bool)

(declare-fun res!2773202 () Bool)

(declare-fun e!4095529 () Bool)

(assert (=> b!6784817 (=> (not res!2773202) (not e!4095529))))

(assert (=> b!6784817 (= res!2773202 call!615759)))

(declare-fun e!4095527 () Bool)

(assert (=> b!6784817 (= e!4095527 e!4095529)))

(declare-fun b!6784818 () Bool)

(assert (=> b!6784818 (= e!4095533 e!4095527)))

(assert (=> b!6784818 (= c!1260674 ((_ is Union!16605) (reg!16934 r!7292)))))

(declare-fun b!6784819 () Bool)

(assert (=> b!6784819 (= e!4095531 call!615758)))

(declare-fun bm!615755 () Bool)

(assert (=> bm!615755 (= call!615759 call!615760)))

(declare-fun b!6784820 () Bool)

(declare-fun res!2773204 () Bool)

(assert (=> b!6784820 (=> res!2773204 e!4095530)))

(assert (=> b!6784820 (= res!2773204 (not ((_ is Concat!25450) (reg!16934 r!7292))))))

(assert (=> b!6784820 (= e!4095527 e!4095530)))

(declare-fun b!6784821 () Bool)

(assert (=> b!6784821 (= e!4095529 call!615758)))

(declare-fun b!6784822 () Bool)

(assert (=> b!6784822 (= e!4095533 e!4095528)))

(declare-fun res!2773205 () Bool)

(assert (=> b!6784822 (= res!2773205 (not (nullable!6584 (reg!16934 (reg!16934 r!7292)))))))

(assert (=> b!6784822 (=> (not res!2773205) (not e!4095528))))

(assert (= (and d!2131798 (not res!2773206)) b!6784814))

(assert (= (and b!6784814 c!1260673) b!6784822))

(assert (= (and b!6784814 (not c!1260673)) b!6784818))

(assert (= (and b!6784822 res!2773205) b!6784815))

(assert (= (and b!6784818 c!1260674) b!6784817))

(assert (= (and b!6784818 (not c!1260674)) b!6784820))

(assert (= (and b!6784817 res!2773202) b!6784821))

(assert (= (and b!6784820 (not res!2773204)) b!6784816))

(assert (= (and b!6784816 res!2773203) b!6784819))

(assert (= (or b!6784821 b!6784819) bm!615753))

(assert (= (or b!6784817 b!6784816) bm!615755))

(assert (= (or b!6784815 bm!615755) bm!615754))

(declare-fun m!7533190 () Bool)

(assert (=> bm!615753 m!7533190))

(declare-fun m!7533192 () Bool)

(assert (=> bm!615754 m!7533192))

(declare-fun m!7533194 () Bool)

(assert (=> b!6784822 m!7533194))

(assert (=> d!2131128 d!2131798))

(declare-fun d!2131800 () Bool)

(assert (=> d!2131800 (= (nullable!6584 (h!72439 (exprs!6489 lt!2445187))) (nullableFct!2490 (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun bs!1807272 () Bool)

(assert (= bs!1807272 d!2131800))

(declare-fun m!7533196 () Bool)

(assert (=> bs!1807272 m!7533196))

(assert (=> b!6783488 d!2131800))

(declare-fun d!2131802 () Bool)

(assert (=> d!2131802 (= (isEmpty!38354 (_2!36883 lt!2445168)) ((_ is Nil!65990) (_2!36883 lt!2445168)))))

(assert (=> bm!615523 d!2131802))

(declare-fun b!6784823 () Bool)

(declare-fun e!4095535 () (InoxSet Context!11978))

(declare-fun call!615761 () (InoxSet Context!11978))

(assert (=> b!6784823 (= e!4095535 call!615761)))

(declare-fun b!6784824 () Bool)

(declare-fun e!4095538 () (InoxSet Context!11978))

(assert (=> b!6784824 (= e!4095538 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (t!379832 (exprs!6489 lt!2445202))) true))))

(declare-fun bm!615756 () Bool)

(declare-fun call!615763 () (InoxSet Context!11978))

(assert (=> bm!615756 (= call!615761 call!615763)))

(declare-fun b!6784825 () Bool)

(declare-fun e!4095537 () (InoxSet Context!11978))

(assert (=> b!6784825 (= e!4095537 e!4095535)))

(declare-fun c!1260676 () Bool)

(assert (=> b!6784825 (= c!1260676 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun b!6784826 () Bool)

(declare-fun c!1260679 () Bool)

(assert (=> b!6784826 (= c!1260679 ((_ is Star!16605) (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun e!4095536 () (InoxSet Context!11978))

(assert (=> b!6784826 (= e!4095535 e!4095536)))

(declare-fun bm!615757 () Bool)

(declare-fun call!615762 () List!66115)

(declare-fun call!615766 () List!66115)

(assert (=> bm!615757 (= call!615762 call!615766)))

(declare-fun bm!615758 () Bool)

(declare-fun call!615765 () (InoxSet Context!11978))

(assert (=> bm!615758 (= call!615763 call!615765)))

(declare-fun b!6784827 () Bool)

(declare-fun call!615764 () (InoxSet Context!11978))

(assert (=> b!6784827 (= e!4095537 ((_ map or) call!615764 call!615763))))

(declare-fun b!6784828 () Bool)

(declare-fun e!4095534 () Bool)

(assert (=> b!6784828 (= e!4095534 (nullable!6584 (regOne!33722 (h!72439 (exprs!6489 lt!2445202)))))))

(declare-fun bm!615759 () Bool)

(declare-fun c!1260677 () Bool)

(assert (=> bm!615759 (= call!615766 ($colon$colon!2414 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202)))) (ite (or c!1260677 c!1260676) (regTwo!33722 (h!72439 (exprs!6489 lt!2445202))) (h!72439 (exprs!6489 lt!2445202)))))))

(declare-fun b!6784829 () Bool)

(assert (=> b!6784829 (= c!1260677 e!4095534)))

(declare-fun res!2773207 () Bool)

(assert (=> b!6784829 (=> (not res!2773207) (not e!4095534))))

(assert (=> b!6784829 (= res!2773207 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun e!4095539 () (InoxSet Context!11978))

(assert (=> b!6784829 (= e!4095539 e!4095537)))

(declare-fun c!1260678 () Bool)

(declare-fun bm!615760 () Bool)

(assert (=> bm!615760 (= call!615765 (derivationStepZipperDown!1833 (ite c!1260678 (regTwo!33723 (h!72439 (exprs!6489 lt!2445202))) (ite c!1260677 (regTwo!33722 (h!72439 (exprs!6489 lt!2445202))) (ite c!1260676 (regOne!33722 (h!72439 (exprs!6489 lt!2445202))) (reg!16934 (h!72439 (exprs!6489 lt!2445202)))))) (ite (or c!1260678 c!1260677) (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (Context!11979 call!615762)) (h!72438 s!2326)))))

(declare-fun bm!615761 () Bool)

(assert (=> bm!615761 (= call!615764 (derivationStepZipperDown!1833 (ite c!1260678 (regOne!33723 (h!72439 (exprs!6489 lt!2445202))) (regOne!33722 (h!72439 (exprs!6489 lt!2445202)))) (ite c!1260678 (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (Context!11979 call!615766)) (h!72438 s!2326)))))

(declare-fun b!6784830 () Bool)

(assert (=> b!6784830 (= e!4095538 e!4095539)))

(assert (=> b!6784830 (= c!1260678 ((_ is Union!16605) (h!72439 (exprs!6489 lt!2445202))))))

(declare-fun d!2131804 () Bool)

(declare-fun c!1260675 () Bool)

(assert (=> d!2131804 (= c!1260675 (and ((_ is ElementMatch!16605) (h!72439 (exprs!6489 lt!2445202))) (= (c!1260145 (h!72439 (exprs!6489 lt!2445202))) (h!72438 s!2326))))))

(assert (=> d!2131804 (= (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445202)) (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (h!72438 s!2326)) e!4095538)))

(declare-fun b!6784831 () Bool)

(assert (=> b!6784831 (= e!4095539 ((_ map or) call!615764 call!615765))))

(declare-fun b!6784832 () Bool)

(assert (=> b!6784832 (= e!4095536 call!615761)))

(declare-fun b!6784833 () Bool)

(assert (=> b!6784833 (= e!4095536 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131804 c!1260675) b!6784824))

(assert (= (and d!2131804 (not c!1260675)) b!6784830))

(assert (= (and b!6784830 c!1260678) b!6784831))

(assert (= (and b!6784830 (not c!1260678)) b!6784829))

(assert (= (and b!6784829 res!2773207) b!6784828))

(assert (= (and b!6784829 c!1260677) b!6784827))

(assert (= (and b!6784829 (not c!1260677)) b!6784825))

(assert (= (and b!6784825 c!1260676) b!6784823))

(assert (= (and b!6784825 (not c!1260676)) b!6784826))

(assert (= (and b!6784826 c!1260679) b!6784832))

(assert (= (and b!6784826 (not c!1260679)) b!6784833))

(assert (= (or b!6784823 b!6784832) bm!615757))

(assert (= (or b!6784823 b!6784832) bm!615756))

(assert (= (or b!6784827 bm!615757) bm!615759))

(assert (= (or b!6784827 bm!615756) bm!615758))

(assert (= (or b!6784831 bm!615758) bm!615760))

(assert (= (or b!6784831 b!6784827) bm!615761))

(declare-fun m!7533198 () Bool)

(assert (=> b!6784824 m!7533198))

(declare-fun m!7533200 () Bool)

(assert (=> b!6784828 m!7533200))

(declare-fun m!7533202 () Bool)

(assert (=> bm!615760 m!7533202))

(declare-fun m!7533204 () Bool)

(assert (=> bm!615759 m!7533204))

(declare-fun m!7533206 () Bool)

(assert (=> bm!615761 m!7533206))

(assert (=> bm!615506 d!2131804))

(declare-fun b!6784834 () Bool)

(declare-fun e!4095541 () (InoxSet Context!11978))

(assert (=> b!6784834 (= e!4095541 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615762 () Bool)

(declare-fun call!615767 () (InoxSet Context!11978))

(assert (=> bm!615762 (= call!615767 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343))))))) (h!72438 s!2326)))))

(declare-fun b!6784835 () Bool)

(declare-fun e!4095542 () Bool)

(assert (=> b!6784835 (= e!4095542 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343))))))))))

(declare-fun d!2131806 () Bool)

(declare-fun c!1260681 () Bool)

(assert (=> d!2131806 (= c!1260681 e!4095542)))

(declare-fun res!2773208 () Bool)

(assert (=> d!2131806 (=> (not res!2773208) (not e!4095542))))

(assert (=> d!2131806 (= res!2773208 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))))))))

(declare-fun e!4095540 () (InoxSet Context!11978))

(assert (=> d!2131806 (= (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (h!72438 s!2326)) e!4095540)))

(declare-fun b!6784836 () Bool)

(assert (=> b!6784836 (= e!4095540 ((_ map or) call!615767 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343))))))) (h!72438 s!2326))))))

(declare-fun b!6784837 () Bool)

(assert (=> b!6784837 (= e!4095541 call!615767)))

(declare-fun b!6784838 () Bool)

(assert (=> b!6784838 (= e!4095540 e!4095541)))

(declare-fun c!1260680 () Bool)

(assert (=> b!6784838 (= c!1260680 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))))))))

(assert (= (and d!2131806 res!2773208) b!6784835))

(assert (= (and d!2131806 c!1260681) b!6784836))

(assert (= (and d!2131806 (not c!1260681)) b!6784838))

(assert (= (and b!6784838 c!1260680) b!6784837))

(assert (= (and b!6784838 (not c!1260680)) b!6784834))

(assert (= (or b!6784836 b!6784837) bm!615762))

(declare-fun m!7533208 () Bool)

(assert (=> bm!615762 m!7533208))

(declare-fun m!7533210 () Bool)

(assert (=> b!6784835 m!7533210))

(declare-fun m!7533212 () Bool)

(assert (=> b!6784836 m!7533212))

(assert (=> b!6783346 d!2131806))

(assert (=> b!6783317 d!2131732))

(declare-fun b!6784842 () Bool)

(declare-fun e!4095543 () Bool)

(declare-fun lt!2445406 () List!66114)

(assert (=> b!6784842 (= e!4095543 (or (not (= (_2!36883 (get!22977 lt!2445331)) Nil!65990)) (= lt!2445406 (_1!36883 (get!22977 lt!2445331)))))))

(declare-fun b!6784840 () Bool)

(declare-fun e!4095544 () List!66114)

(assert (=> b!6784840 (= e!4095544 (Cons!65990 (h!72438 (_1!36883 (get!22977 lt!2445331))) (++!14761 (t!379831 (_1!36883 (get!22977 lt!2445331))) (_2!36883 (get!22977 lt!2445331)))))))

(declare-fun b!6784841 () Bool)

(declare-fun res!2773209 () Bool)

(assert (=> b!6784841 (=> (not res!2773209) (not e!4095543))))

(assert (=> b!6784841 (= res!2773209 (= (size!40640 lt!2445406) (+ (size!40640 (_1!36883 (get!22977 lt!2445331))) (size!40640 (_2!36883 (get!22977 lt!2445331))))))))

(declare-fun b!6784839 () Bool)

(assert (=> b!6784839 (= e!4095544 (_2!36883 (get!22977 lt!2445331)))))

(declare-fun d!2131808 () Bool)

(assert (=> d!2131808 e!4095543))

(declare-fun res!2773210 () Bool)

(assert (=> d!2131808 (=> (not res!2773210) (not e!4095543))))

(assert (=> d!2131808 (= res!2773210 (= (content!12857 lt!2445406) ((_ map or) (content!12857 (_1!36883 (get!22977 lt!2445331))) (content!12857 (_2!36883 (get!22977 lt!2445331))))))))

(assert (=> d!2131808 (= lt!2445406 e!4095544)))

(declare-fun c!1260682 () Bool)

(assert (=> d!2131808 (= c!1260682 ((_ is Nil!65990) (_1!36883 (get!22977 lt!2445331))))))

(assert (=> d!2131808 (= (++!14761 (_1!36883 (get!22977 lt!2445331)) (_2!36883 (get!22977 lt!2445331))) lt!2445406)))

(assert (= (and d!2131808 c!1260682) b!6784839))

(assert (= (and d!2131808 (not c!1260682)) b!6784840))

(assert (= (and d!2131808 res!2773210) b!6784841))

(assert (= (and b!6784841 res!2773209) b!6784842))

(declare-fun m!7533214 () Bool)

(assert (=> b!6784840 m!7533214))

(declare-fun m!7533216 () Bool)

(assert (=> b!6784841 m!7533216))

(declare-fun m!7533218 () Bool)

(assert (=> b!6784841 m!7533218))

(declare-fun m!7533220 () Bool)

(assert (=> b!6784841 m!7533220))

(declare-fun m!7533222 () Bool)

(assert (=> d!2131808 m!7533222))

(declare-fun m!7533224 () Bool)

(assert (=> d!2131808 m!7533224))

(declare-fun m!7533226 () Bool)

(assert (=> d!2131808 m!7533226))

(assert (=> b!6783705 d!2131808))

(assert (=> b!6783705 d!2131700))

(declare-fun bs!1807273 () Bool)

(declare-fun d!2131810 () Bool)

(assert (= bs!1807273 (and d!2131810 d!2131134)))

(declare-fun lambda!382004 () Int)

(assert (=> bs!1807273 (= lambda!382004 lambda!381884)))

(declare-fun bs!1807274 () Bool)

(assert (= bs!1807274 (and d!2131810 b!6782898)))

(assert (=> bs!1807274 (= lambda!382004 lambda!381851)))

(declare-fun bs!1807275 () Bool)

(assert (= bs!1807275 (and d!2131810 d!2131696)))

(assert (=> bs!1807275 (= lambda!382004 lambda!381994)))

(declare-fun bs!1807276 () Bool)

(assert (= bs!1807276 (and d!2131810 d!2131102)))

(assert (=> bs!1807276 (= lambda!382004 lambda!381869)))

(declare-fun bs!1807277 () Bool)

(assert (= bs!1807277 (and d!2131810 d!2131664)))

(assert (=> bs!1807277 (= lambda!382004 lambda!381991)))

(declare-fun bs!1807278 () Bool)

(assert (= bs!1807278 (and d!2131810 d!2131058)))

(assert (=> bs!1807278 (= lambda!382004 lambda!381857)))

(declare-fun bs!1807279 () Bool)

(assert (= bs!1807279 (and d!2131810 d!2131272)))

(assert (=> bs!1807279 (= lambda!382004 lambda!381934)))

(declare-fun bs!1807280 () Bool)

(assert (= bs!1807280 (and d!2131810 d!2131166)))

(assert (=> bs!1807280 (= lambda!382004 lambda!381888)))

(declare-fun bs!1807281 () Bool)

(assert (= bs!1807281 (and d!2131810 d!2131274)))

(assert (=> bs!1807281 (= lambda!382004 lambda!381937)))

(declare-fun b!6784843 () Bool)

(declare-fun e!4095550 () Bool)

(declare-fun lt!2445407 () Regex!16605)

(assert (=> b!6784843 (= e!4095550 (= lt!2445407 (head!13621 (t!379832 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun b!6784844 () Bool)

(declare-fun e!4095549 () Bool)

(assert (=> b!6784844 (= e!4095549 e!4095550)))

(declare-fun c!1260684 () Bool)

(assert (=> b!6784844 (= c!1260684 (isEmpty!38355 (tail!12706 (t!379832 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun b!6784846 () Bool)

(assert (=> b!6784846 (= e!4095550 (isConcat!1485 lt!2445407))))

(declare-fun b!6784847 () Bool)

(declare-fun e!4095545 () Regex!16605)

(assert (=> b!6784847 (= e!4095545 EmptyExpr!16605)))

(declare-fun b!6784848 () Bool)

(declare-fun e!4095548 () Bool)

(assert (=> b!6784848 (= e!4095548 e!4095549)))

(declare-fun c!1260686 () Bool)

(assert (=> b!6784848 (= c!1260686 (isEmpty!38355 (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6784849 () Bool)

(declare-fun e!4095546 () Bool)

(assert (=> b!6784849 (= e!4095546 (isEmpty!38355 (t!379832 (t!379832 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun b!6784850 () Bool)

(declare-fun e!4095547 () Regex!16605)

(assert (=> b!6784850 (= e!4095547 (h!72439 (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(assert (=> d!2131810 e!4095548))

(declare-fun res!2773211 () Bool)

(assert (=> d!2131810 (=> (not res!2773211) (not e!4095548))))

(assert (=> d!2131810 (= res!2773211 (validRegex!8341 lt!2445407))))

(assert (=> d!2131810 (= lt!2445407 e!4095547)))

(declare-fun c!1260683 () Bool)

(assert (=> d!2131810 (= c!1260683 e!4095546)))

(declare-fun res!2773212 () Bool)

(assert (=> d!2131810 (=> (not res!2773212) (not e!4095546))))

(assert (=> d!2131810 (= res!2773212 ((_ is Cons!65991) (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(assert (=> d!2131810 (forall!15797 (t!379832 (exprs!6489 (h!72440 zl!343))) lambda!382004)))

(assert (=> d!2131810 (= (generalisedConcat!2202 (t!379832 (exprs!6489 (h!72440 zl!343)))) lt!2445407)))

(declare-fun b!6784845 () Bool)

(assert (=> b!6784845 (= e!4095549 (isEmptyExpr!1962 lt!2445407))))

(declare-fun b!6784851 () Bool)

(assert (=> b!6784851 (= e!4095547 e!4095545)))

(declare-fun c!1260685 () Bool)

(assert (=> b!6784851 (= c!1260685 ((_ is Cons!65991) (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6784852 () Bool)

(assert (=> b!6784852 (= e!4095545 (Concat!25450 (h!72439 (t!379832 (exprs!6489 (h!72440 zl!343)))) (generalisedConcat!2202 (t!379832 (t!379832 (exprs!6489 (h!72440 zl!343)))))))))

(assert (= (and d!2131810 res!2773212) b!6784849))

(assert (= (and d!2131810 c!1260683) b!6784850))

(assert (= (and d!2131810 (not c!1260683)) b!6784851))

(assert (= (and b!6784851 c!1260685) b!6784852))

(assert (= (and b!6784851 (not c!1260685)) b!6784847))

(assert (= (and d!2131810 res!2773211) b!6784848))

(assert (= (and b!6784848 c!1260686) b!6784845))

(assert (= (and b!6784848 (not c!1260686)) b!6784844))

(assert (= (and b!6784844 c!1260684) b!6784843))

(assert (= (and b!6784844 (not c!1260684)) b!6784846))

(declare-fun m!7533228 () Bool)

(assert (=> b!6784852 m!7533228))

(declare-fun m!7533230 () Bool)

(assert (=> d!2131810 m!7533230))

(declare-fun m!7533232 () Bool)

(assert (=> d!2131810 m!7533232))

(declare-fun m!7533234 () Bool)

(assert (=> b!6784846 m!7533234))

(declare-fun m!7533236 () Bool)

(assert (=> b!6784844 m!7533236))

(assert (=> b!6784844 m!7533236))

(declare-fun m!7533238 () Bool)

(assert (=> b!6784844 m!7533238))

(declare-fun m!7533240 () Bool)

(assert (=> b!6784849 m!7533240))

(assert (=> b!6784848 m!7531720))

(declare-fun m!7533242 () Bool)

(assert (=> b!6784843 m!7533242))

(declare-fun m!7533244 () Bool)

(assert (=> b!6784845 m!7533244))

(assert (=> b!6783228 d!2131810))

(assert (=> bs!1806796 d!2131198))

(declare-fun d!2131812 () Bool)

(assert (=> d!2131812 (= (flatMap!2086 z!1189 lambda!381887) (choose!50517 z!1189 lambda!381887))))

(declare-fun bs!1807282 () Bool)

(assert (= bs!1807282 d!2131812))

(declare-fun m!7533246 () Bool)

(assert (=> bs!1807282 m!7533246))

(assert (=> d!2131162 d!2131812))

(declare-fun d!2131814 () Bool)

(assert (=> d!2131814 (= (head!13621 (exprs!6489 (h!72440 zl!343))) (h!72439 (exprs!6489 (h!72440 zl!343))))))

(assert (=> b!6783219 d!2131814))

(assert (=> b!6783771 d!2131770))

(declare-fun d!2131816 () Bool)

(assert (=> d!2131816 (= (Exists!3673 (ite c!1260299 lambda!381899 lambda!381902)) (choose!50521 (ite c!1260299 lambda!381899 lambda!381902)))))

(declare-fun bs!1807283 () Bool)

(assert (= bs!1807283 d!2131816))

(declare-fun m!7533248 () Bool)

(assert (=> bs!1807283 m!7533248))

(assert (=> bm!615539 d!2131816))

(declare-fun bs!1807284 () Bool)

(declare-fun b!6784861 () Bool)

(assert (= bs!1807284 (and b!6784861 d!2131216)))

(declare-fun lambda!382005 () Int)

(assert (=> bs!1807284 (= (and (= (reg!16934 (regTwo!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33723 lt!2445192) (Star!16605 (reg!16934 r!7292)))) (= lambda!382005 lambda!381913))))

(assert (=> bs!1807284 (not (= lambda!382005 lambda!381912))))

(declare-fun bs!1807285 () Bool)

(assert (= bs!1807285 (and b!6784861 b!6783436)))

(assert (=> bs!1807285 (= (and (= (reg!16934 (regTwo!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33723 lt!2445192) r!7292)) (= lambda!382005 lambda!381899))))

(declare-fun bs!1807286 () Bool)

(assert (= bs!1807286 (and b!6784861 d!2131228)))

(assert (=> bs!1807286 (not (= lambda!382005 lambda!381920))))

(declare-fun bs!1807287 () Bool)

(assert (= bs!1807287 (and b!6784861 b!6783428)))

(assert (=> bs!1807287 (not (= lambda!382005 lambda!381902))))

(declare-fun bs!1807288 () Bool)

(assert (= bs!1807288 (and b!6784861 b!6784608)))

(assert (=> bs!1807288 (not (= lambda!382005 lambda!381993))))

(declare-fun bs!1807289 () Bool)

(assert (= bs!1807289 (and b!6784861 b!6783758)))

(assert (=> bs!1807289 (= (and (= (reg!16934 (regTwo!33723 lt!2445192)) (reg!16934 lt!2445192)) (= (regTwo!33723 lt!2445192) lt!2445192)) (= lambda!382005 lambda!381938))))

(declare-fun bs!1807290 () Bool)

(assert (= bs!1807290 (and b!6784861 b!6782923)))

(assert (=> bs!1807290 (not (= lambda!382005 lambda!381849))))

(declare-fun bs!1807291 () Bool)

(assert (= bs!1807291 (and b!6784861 d!2131260)))

(assert (=> bs!1807291 (not (= lambda!382005 lambda!381930))))

(assert (=> bs!1807290 (= (and (= (reg!16934 (regTwo!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33723 lt!2445192) r!7292)) (= lambda!382005 lambda!381848))))

(declare-fun bs!1807292 () Bool)

(assert (= bs!1807292 (and b!6784861 b!6784616)))

(assert (=> bs!1807292 (= (and (= (reg!16934 (regTwo!33723 lt!2445192)) (reg!16934 (regOne!33723 r!7292))) (= (regTwo!33723 lt!2445192) (regOne!33723 r!7292))) (= lambda!382005 lambda!381992))))

(declare-fun bs!1807293 () Bool)

(assert (= bs!1807293 (and b!6784861 b!6783750)))

(assert (=> bs!1807293 (not (= lambda!382005 lambda!381939))))

(assert (=> bs!1807286 (not (= lambda!382005 lambda!381921))))

(assert (=> bs!1807290 (not (= lambda!382005 lambda!381847))))

(assert (=> b!6784861 true))

(assert (=> b!6784861 true))

(declare-fun bs!1807294 () Bool)

(declare-fun b!6784853 () Bool)

(assert (= bs!1807294 (and b!6784853 d!2131216)))

(declare-fun lambda!382006 () Int)

(assert (=> bs!1807294 (not (= lambda!382006 lambda!381913))))

(assert (=> bs!1807294 (not (= lambda!382006 lambda!381912))))

(declare-fun bs!1807295 () Bool)

(assert (= bs!1807295 (and b!6784853 b!6783436)))

(assert (=> bs!1807295 (not (= lambda!382006 lambda!381899))))

(declare-fun bs!1807296 () Bool)

(assert (= bs!1807296 (and b!6784853 d!2131228)))

(assert (=> bs!1807296 (not (= lambda!382006 lambda!381920))))

(declare-fun bs!1807297 () Bool)

(assert (= bs!1807297 (and b!6784853 b!6784861)))

(assert (=> bs!1807297 (not (= lambda!382006 lambda!382005))))

(declare-fun bs!1807298 () Bool)

(assert (= bs!1807298 (and b!6784853 b!6783428)))

(assert (=> bs!1807298 (= (and (= (regOne!33722 (regTwo!33723 lt!2445192)) (regOne!33722 r!7292)) (= (regTwo!33722 (regTwo!33723 lt!2445192)) (regTwo!33722 r!7292))) (= lambda!382006 lambda!381902))))

(declare-fun bs!1807299 () Bool)

(assert (= bs!1807299 (and b!6784853 b!6784608)))

(assert (=> bs!1807299 (= (and (= (regOne!33722 (regTwo!33723 lt!2445192)) (regOne!33722 (regOne!33723 r!7292))) (= (regTwo!33722 (regTwo!33723 lt!2445192)) (regTwo!33722 (regOne!33723 r!7292)))) (= lambda!382006 lambda!381993))))

(declare-fun bs!1807300 () Bool)

(assert (= bs!1807300 (and b!6784853 b!6783758)))

(assert (=> bs!1807300 (not (= lambda!382006 lambda!381938))))

(declare-fun bs!1807301 () Bool)

(assert (= bs!1807301 (and b!6784853 b!6782923)))

(assert (=> bs!1807301 (= (and (= (regOne!33722 (regTwo!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33722 (regTwo!33723 lt!2445192)) r!7292)) (= lambda!382006 lambda!381849))))

(declare-fun bs!1807302 () Bool)

(assert (= bs!1807302 (and b!6784853 d!2131260)))

(assert (=> bs!1807302 (not (= lambda!382006 lambda!381930))))

(assert (=> bs!1807301 (not (= lambda!382006 lambda!381848))))

(declare-fun bs!1807303 () Bool)

(assert (= bs!1807303 (and b!6784853 b!6784616)))

(assert (=> bs!1807303 (not (= lambda!382006 lambda!381992))))

(declare-fun bs!1807304 () Bool)

(assert (= bs!1807304 (and b!6784853 b!6783750)))

(assert (=> bs!1807304 (= (and (= (regOne!33722 (regTwo!33723 lt!2445192)) (regOne!33722 lt!2445192)) (= (regTwo!33722 (regTwo!33723 lt!2445192)) (regTwo!33722 lt!2445192))) (= lambda!382006 lambda!381939))))

(assert (=> bs!1807296 (= (and (= (regOne!33722 (regTwo!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33722 (regTwo!33723 lt!2445192)) r!7292)) (= lambda!382006 lambda!381921))))

(assert (=> bs!1807301 (not (= lambda!382006 lambda!381847))))

(assert (=> b!6784853 true))

(assert (=> b!6784853 true))

(declare-fun e!4095555 () Bool)

(declare-fun call!615768 () Bool)

(assert (=> b!6784853 (= e!4095555 call!615768)))

(declare-fun bm!615763 () Bool)

(declare-fun call!615769 () Bool)

(assert (=> bm!615763 (= call!615769 (isEmpty!38354 s!2326))))

(declare-fun b!6784854 () Bool)

(declare-fun c!1260688 () Bool)

(assert (=> b!6784854 (= c!1260688 ((_ is ElementMatch!16605) (regTwo!33723 lt!2445192)))))

(declare-fun e!4095552 () Bool)

(declare-fun e!4095556 () Bool)

(assert (=> b!6784854 (= e!4095552 e!4095556)))

(declare-fun b!6784855 () Bool)

(declare-fun c!1260689 () Bool)

(assert (=> b!6784855 (= c!1260689 ((_ is Union!16605) (regTwo!33723 lt!2445192)))))

(declare-fun e!4095551 () Bool)

(assert (=> b!6784855 (= e!4095556 e!4095551)))

(declare-fun b!6784856 () Bool)

(declare-fun e!4095557 () Bool)

(assert (=> b!6784856 (= e!4095557 (matchRSpec!3706 (regTwo!33723 (regTwo!33723 lt!2445192)) s!2326))))

(declare-fun b!6784857 () Bool)

(declare-fun e!4095554 () Bool)

(assert (=> b!6784857 (= e!4095554 e!4095552)))

(declare-fun res!2773214 () Bool)

(assert (=> b!6784857 (= res!2773214 (not ((_ is EmptyLang!16605) (regTwo!33723 lt!2445192))))))

(assert (=> b!6784857 (=> (not res!2773214) (not e!4095552))))

(declare-fun bm!615764 () Bool)

(declare-fun c!1260690 () Bool)

(assert (=> bm!615764 (= call!615768 (Exists!3673 (ite c!1260690 lambda!382005 lambda!382006)))))

(declare-fun b!6784859 () Bool)

(assert (=> b!6784859 (= e!4095556 (= s!2326 (Cons!65990 (c!1260145 (regTwo!33723 lt!2445192)) Nil!65990)))))

(declare-fun b!6784860 () Bool)

(assert (=> b!6784860 (= e!4095551 e!4095555)))

(assert (=> b!6784860 (= c!1260690 ((_ is Star!16605) (regTwo!33723 lt!2445192)))))

(declare-fun e!4095553 () Bool)

(assert (=> b!6784861 (= e!4095553 call!615768)))

(declare-fun d!2131818 () Bool)

(declare-fun c!1260687 () Bool)

(assert (=> d!2131818 (= c!1260687 ((_ is EmptyExpr!16605) (regTwo!33723 lt!2445192)))))

(assert (=> d!2131818 (= (matchRSpec!3706 (regTwo!33723 lt!2445192) s!2326) e!4095554)))

(declare-fun b!6784858 () Bool)

(declare-fun res!2773215 () Bool)

(assert (=> b!6784858 (=> res!2773215 e!4095553)))

(assert (=> b!6784858 (= res!2773215 call!615769)))

(assert (=> b!6784858 (= e!4095555 e!4095553)))

(declare-fun b!6784862 () Bool)

(assert (=> b!6784862 (= e!4095551 e!4095557)))

(declare-fun res!2773213 () Bool)

(assert (=> b!6784862 (= res!2773213 (matchRSpec!3706 (regOne!33723 (regTwo!33723 lt!2445192)) s!2326))))

(assert (=> b!6784862 (=> res!2773213 e!4095557)))

(declare-fun b!6784863 () Bool)

(assert (=> b!6784863 (= e!4095554 call!615769)))

(assert (= (and d!2131818 c!1260687) b!6784863))

(assert (= (and d!2131818 (not c!1260687)) b!6784857))

(assert (= (and b!6784857 res!2773214) b!6784854))

(assert (= (and b!6784854 c!1260688) b!6784859))

(assert (= (and b!6784854 (not c!1260688)) b!6784855))

(assert (= (and b!6784855 c!1260689) b!6784862))

(assert (= (and b!6784855 (not c!1260689)) b!6784860))

(assert (= (and b!6784862 (not res!2773213)) b!6784856))

(assert (= (and b!6784860 c!1260690) b!6784858))

(assert (= (and b!6784860 (not c!1260690)) b!6784853))

(assert (= (and b!6784858 (not res!2773215)) b!6784861))

(assert (= (or b!6784861 b!6784853) bm!615764))

(assert (= (or b!6784863 b!6784858) bm!615763))

(assert (=> bm!615763 m!7531404))

(declare-fun m!7533250 () Bool)

(assert (=> b!6784856 m!7533250))

(declare-fun m!7533252 () Bool)

(assert (=> bm!615764 m!7533252))

(declare-fun m!7533254 () Bool)

(assert (=> b!6784862 m!7533254))

(assert (=> b!6783753 d!2131818))

(assert (=> d!2131214 d!2131210))

(declare-fun d!2131820 () Bool)

(assert (=> d!2131820 (= (flatMap!2086 lt!2445172 lambda!381850) (dynLambda!26333 lambda!381850 lt!2445187))))

(assert (=> d!2131820 true))

(declare-fun _$13!4205 () Unit!159901)

(assert (=> d!2131820 (= (choose!50518 lt!2445172 lt!2445187 lambda!381850) _$13!4205)))

(declare-fun b_lambda!255505 () Bool)

(assert (=> (not b_lambda!255505) (not d!2131820)))

(declare-fun bs!1807305 () Bool)

(assert (= bs!1807305 d!2131820))

(assert (=> bs!1807305 m!7531322))

(assert (=> bs!1807305 m!7531980))

(assert (=> d!2131214 d!2131820))

(declare-fun d!2131822 () Bool)

(declare-fun c!1260693 () Bool)

(assert (=> d!2131822 (= c!1260693 ((_ is Nil!65992) lt!2445259))))

(declare-fun e!4095560 () (InoxSet Context!11978))

(assert (=> d!2131822 (= (content!12856 lt!2445259) e!4095560)))

(declare-fun b!6784868 () Bool)

(assert (=> b!6784868 (= e!4095560 ((as const (Array Context!11978 Bool)) false))))

(declare-fun b!6784869 () Bool)

(assert (=> b!6784869 (= e!4095560 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) (h!72440 lt!2445259) true) (content!12856 (t!379833 lt!2445259))))))

(assert (= (and d!2131822 c!1260693) b!6784868))

(assert (= (and d!2131822 (not c!1260693)) b!6784869))

(declare-fun m!7533256 () Bool)

(assert (=> b!6784869 m!7533256))

(declare-fun m!7533258 () Bool)

(assert (=> b!6784869 m!7533258))

(assert (=> b!6783247 d!2131822))

(assert (=> b!6783320 d!2131746))

(assert (=> b!6783320 d!2131748))

(declare-fun d!2131824 () Bool)

(assert (=> d!2131824 (= (Exists!3673 lambda!381912) (choose!50521 lambda!381912))))

(declare-fun bs!1807306 () Bool)

(assert (= bs!1807306 d!2131824))

(declare-fun m!7533260 () Bool)

(assert (=> bs!1807306 m!7533260))

(assert (=> d!2131216 d!2131824))

(declare-fun d!2131826 () Bool)

(assert (=> d!2131826 (= (Exists!3673 lambda!381913) (choose!50521 lambda!381913))))

(declare-fun bs!1807307 () Bool)

(assert (= bs!1807307 d!2131826))

(declare-fun m!7533262 () Bool)

(assert (=> bs!1807307 m!7533262))

(assert (=> d!2131216 d!2131826))

(declare-fun bs!1807308 () Bool)

(declare-fun d!2131828 () Bool)

(assert (= bs!1807308 (and d!2131828 d!2131216)))

(declare-fun lambda!382011 () Int)

(assert (=> bs!1807308 (not (= lambda!382011 lambda!381913))))

(assert (=> bs!1807308 (= lambda!382011 lambda!381912)))

(declare-fun bs!1807309 () Bool)

(assert (= bs!1807309 (and d!2131828 b!6783436)))

(assert (=> bs!1807309 (not (= lambda!382011 lambda!381899))))

(declare-fun bs!1807310 () Bool)

(assert (= bs!1807310 (and d!2131828 d!2131228)))

(assert (=> bs!1807310 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!382011 lambda!381920))))

(declare-fun bs!1807311 () Bool)

(assert (= bs!1807311 (and d!2131828 b!6784861)))

(assert (=> bs!1807311 (not (= lambda!382011 lambda!382005))))

(declare-fun bs!1807312 () Bool)

(assert (= bs!1807312 (and d!2131828 b!6783428)))

(assert (=> bs!1807312 (not (= lambda!382011 lambda!381902))))

(declare-fun bs!1807313 () Bool)

(assert (= bs!1807313 (and d!2131828 b!6784608)))

(assert (=> bs!1807313 (not (= lambda!382011 lambda!381993))))

(declare-fun bs!1807314 () Bool)

(assert (= bs!1807314 (and d!2131828 b!6783758)))

(assert (=> bs!1807314 (not (= lambda!382011 lambda!381938))))

(declare-fun bs!1807315 () Bool)

(assert (= bs!1807315 (and d!2131828 b!6782923)))

(assert (=> bs!1807315 (not (= lambda!382011 lambda!381849))))

(declare-fun bs!1807316 () Bool)

(assert (= bs!1807316 (and d!2131828 d!2131260)))

(assert (=> bs!1807316 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!382011 lambda!381930))))

(assert (=> bs!1807315 (not (= lambda!382011 lambda!381848))))

(declare-fun bs!1807317 () Bool)

(assert (= bs!1807317 (and d!2131828 b!6784853)))

(assert (=> bs!1807317 (not (= lambda!382011 lambda!382006))))

(declare-fun bs!1807318 () Bool)

(assert (= bs!1807318 (and d!2131828 b!6784616)))

(assert (=> bs!1807318 (not (= lambda!382011 lambda!381992))))

(declare-fun bs!1807319 () Bool)

(assert (= bs!1807319 (and d!2131828 b!6783750)))

(assert (=> bs!1807319 (not (= lambda!382011 lambda!381939))))

(assert (=> bs!1807310 (not (= lambda!382011 lambda!381921))))

(assert (=> bs!1807315 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!382011 lambda!381847))))

(assert (=> d!2131828 true))

(assert (=> d!2131828 true))

(declare-fun lambda!382012 () Int)

(assert (=> bs!1807308 (= lambda!382012 lambda!381913)))

(assert (=> bs!1807308 (not (= lambda!382012 lambda!381912))))

(assert (=> bs!1807309 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!382012 lambda!381899))))

(assert (=> bs!1807310 (not (= lambda!382012 lambda!381920))))

(declare-fun bs!1807320 () Bool)

(assert (= bs!1807320 d!2131828))

(assert (=> bs!1807320 (not (= lambda!382012 lambda!382011))))

(assert (=> bs!1807311 (= (and (= (reg!16934 r!7292) (reg!16934 (regTwo!33723 lt!2445192))) (= (Star!16605 (reg!16934 r!7292)) (regTwo!33723 lt!2445192))) (= lambda!382012 lambda!382005))))

(assert (=> bs!1807312 (not (= lambda!382012 lambda!381902))))

(assert (=> bs!1807313 (not (= lambda!382012 lambda!381993))))

(assert (=> bs!1807314 (= (and (= (reg!16934 r!7292) (reg!16934 lt!2445192)) (= (Star!16605 (reg!16934 r!7292)) lt!2445192)) (= lambda!382012 lambda!381938))))

(assert (=> bs!1807315 (not (= lambda!382012 lambda!381849))))

(assert (=> bs!1807316 (not (= lambda!382012 lambda!381930))))

(assert (=> bs!1807315 (= (= (Star!16605 (reg!16934 r!7292)) r!7292) (= lambda!382012 lambda!381848))))

(assert (=> bs!1807317 (not (= lambda!382012 lambda!382006))))

(assert (=> bs!1807318 (= (and (= (reg!16934 r!7292) (reg!16934 (regOne!33723 r!7292))) (= (Star!16605 (reg!16934 r!7292)) (regOne!33723 r!7292))) (= lambda!382012 lambda!381992))))

(assert (=> bs!1807319 (not (= lambda!382012 lambda!381939))))

(assert (=> bs!1807310 (not (= lambda!382012 lambda!381921))))

(assert (=> bs!1807315 (not (= lambda!382012 lambda!381847))))

(assert (=> d!2131828 true))

(assert (=> d!2131828 true))

(assert (=> d!2131828 (= (Exists!3673 lambda!382011) (Exists!3673 lambda!382012))))

(assert (=> d!2131828 true))

(declare-fun _$91!782 () Unit!159901)

(assert (=> d!2131828 (= (choose!50529 (reg!16934 r!7292) s!2326) _$91!782)))

(declare-fun m!7533264 () Bool)

(assert (=> bs!1807320 m!7533264))

(declare-fun m!7533266 () Bool)

(assert (=> bs!1807320 m!7533266))

(assert (=> d!2131216 d!2131828))

(assert (=> d!2131216 d!2131798))

(declare-fun b!6784880 () Bool)

(declare-fun e!4095566 () List!66115)

(assert (=> b!6784880 (= e!4095566 lt!2445201)))

(declare-fun b!6784881 () Bool)

(assert (=> b!6784881 (= e!4095566 (Cons!65991 (h!72439 (t!379832 lt!2445175)) (++!14760 (t!379832 (t!379832 lt!2445175)) lt!2445201)))))

(declare-fun d!2131830 () Bool)

(declare-fun e!4095565 () Bool)

(assert (=> d!2131830 e!4095565))

(declare-fun res!2773226 () Bool)

(assert (=> d!2131830 (=> (not res!2773226) (not e!4095565))))

(declare-fun lt!2445408 () List!66115)

(assert (=> d!2131830 (= res!2773226 (= (content!12855 lt!2445408) ((_ map or) (content!12855 (t!379832 lt!2445175)) (content!12855 lt!2445201))))))

(assert (=> d!2131830 (= lt!2445408 e!4095566)))

(declare-fun c!1260694 () Bool)

(assert (=> d!2131830 (= c!1260694 ((_ is Nil!65991) (t!379832 lt!2445175)))))

(assert (=> d!2131830 (= (++!14760 (t!379832 lt!2445175) lt!2445201) lt!2445408)))

(declare-fun b!6784883 () Bool)

(assert (=> b!6784883 (= e!4095565 (or (not (= lt!2445201 Nil!65991)) (= lt!2445408 (t!379832 lt!2445175))))))

(declare-fun b!6784882 () Bool)

(declare-fun res!2773227 () Bool)

(assert (=> b!6784882 (=> (not res!2773227) (not e!4095565))))

(assert (=> b!6784882 (= res!2773227 (= (size!40639 lt!2445408) (+ (size!40639 (t!379832 lt!2445175)) (size!40639 lt!2445201))))))

(assert (= (and d!2131830 c!1260694) b!6784880))

(assert (= (and d!2131830 (not c!1260694)) b!6784881))

(assert (= (and d!2131830 res!2773226) b!6784882))

(assert (= (and b!6784882 res!2773227) b!6784883))

(declare-fun m!7533268 () Bool)

(assert (=> b!6784881 m!7533268))

(declare-fun m!7533270 () Bool)

(assert (=> d!2131830 m!7533270))

(declare-fun m!7533272 () Bool)

(assert (=> d!2131830 m!7533272))

(assert (=> d!2131830 m!7531504))

(declare-fun m!7533274 () Bool)

(assert (=> b!6784882 m!7533274))

(assert (=> b!6784882 m!7533114))

(assert (=> b!6784882 m!7531510))

(assert (=> b!6782959 d!2131830))

(declare-fun d!2131832 () Bool)

(declare-fun res!2773232 () Bool)

(declare-fun e!4095572 () Bool)

(assert (=> d!2131832 (=> res!2773232 e!4095572)))

(assert (=> d!2131832 (= res!2773232 ((_ is ElementMatch!16605) lt!2445273))))

(assert (=> d!2131832 (= (validRegex!8341 lt!2445273) e!4095572)))

(declare-fun b!6784884 () Bool)

(declare-fun e!4095573 () Bool)

(assert (=> b!6784884 (= e!4095572 e!4095573)))

(declare-fun c!1260695 () Bool)

(assert (=> b!6784884 (= c!1260695 ((_ is Star!16605) lt!2445273))))

(declare-fun bm!615765 () Bool)

(declare-fun call!615770 () Bool)

(declare-fun c!1260696 () Bool)

(assert (=> bm!615765 (= call!615770 (validRegex!8341 (ite c!1260696 (regTwo!33723 lt!2445273) (regTwo!33722 lt!2445273))))))

(declare-fun b!6784885 () Bool)

(declare-fun e!4095568 () Bool)

(declare-fun call!615772 () Bool)

(assert (=> b!6784885 (= e!4095568 call!615772)))

(declare-fun bm!615766 () Bool)

(assert (=> bm!615766 (= call!615772 (validRegex!8341 (ite c!1260695 (reg!16934 lt!2445273) (ite c!1260696 (regOne!33723 lt!2445273) (regOne!33722 lt!2445273)))))))

(declare-fun b!6784886 () Bool)

(declare-fun e!4095570 () Bool)

(declare-fun e!4095571 () Bool)

(assert (=> b!6784886 (= e!4095570 e!4095571)))

(declare-fun res!2773229 () Bool)

(assert (=> b!6784886 (=> (not res!2773229) (not e!4095571))))

(declare-fun call!615771 () Bool)

(assert (=> b!6784886 (= res!2773229 call!615771)))

(declare-fun b!6784887 () Bool)

(declare-fun res!2773228 () Bool)

(declare-fun e!4095569 () Bool)

(assert (=> b!6784887 (=> (not res!2773228) (not e!4095569))))

(assert (=> b!6784887 (= res!2773228 call!615771)))

(declare-fun e!4095567 () Bool)

(assert (=> b!6784887 (= e!4095567 e!4095569)))

(declare-fun b!6784888 () Bool)

(assert (=> b!6784888 (= e!4095573 e!4095567)))

(assert (=> b!6784888 (= c!1260696 ((_ is Union!16605) lt!2445273))))

(declare-fun b!6784889 () Bool)

(assert (=> b!6784889 (= e!4095571 call!615770)))

(declare-fun bm!615767 () Bool)

(assert (=> bm!615767 (= call!615771 call!615772)))

(declare-fun b!6784890 () Bool)

(declare-fun res!2773230 () Bool)

(assert (=> b!6784890 (=> res!2773230 e!4095570)))

(assert (=> b!6784890 (= res!2773230 (not ((_ is Concat!25450) lt!2445273)))))

(assert (=> b!6784890 (= e!4095567 e!4095570)))

(declare-fun b!6784891 () Bool)

(assert (=> b!6784891 (= e!4095569 call!615770)))

(declare-fun b!6784892 () Bool)

(assert (=> b!6784892 (= e!4095573 e!4095568)))

(declare-fun res!2773231 () Bool)

(assert (=> b!6784892 (= res!2773231 (not (nullable!6584 (reg!16934 lt!2445273))))))

(assert (=> b!6784892 (=> (not res!2773231) (not e!4095568))))

(assert (= (and d!2131832 (not res!2773232)) b!6784884))

(assert (= (and b!6784884 c!1260695) b!6784892))

(assert (= (and b!6784884 (not c!1260695)) b!6784888))

(assert (= (and b!6784892 res!2773231) b!6784885))

(assert (= (and b!6784888 c!1260696) b!6784887))

(assert (= (and b!6784888 (not c!1260696)) b!6784890))

(assert (= (and b!6784887 res!2773228) b!6784891))

(assert (= (and b!6784890 (not res!2773230)) b!6784886))

(assert (= (and b!6784886 res!2773229) b!6784889))

(assert (= (or b!6784891 b!6784889) bm!615765))

(assert (= (or b!6784887 b!6784886) bm!615767))

(assert (= (or b!6784885 bm!615767) bm!615766))

(declare-fun m!7533276 () Bool)

(assert (=> bm!615765 m!7533276))

(declare-fun m!7533278 () Bool)

(assert (=> bm!615766 m!7533278))

(declare-fun m!7533280 () Bool)

(assert (=> b!6784892 m!7533280))

(assert (=> d!2131144 d!2131832))

(declare-fun bs!1807321 () Bool)

(declare-fun d!2131834 () Bool)

(assert (= bs!1807321 (and d!2131834 d!2131134)))

(declare-fun lambda!382013 () Int)

(assert (=> bs!1807321 (= lambda!382013 lambda!381884)))

(declare-fun bs!1807322 () Bool)

(assert (= bs!1807322 (and d!2131834 b!6782898)))

(assert (=> bs!1807322 (= lambda!382013 lambda!381851)))

(declare-fun bs!1807323 () Bool)

(assert (= bs!1807323 (and d!2131834 d!2131696)))

(assert (=> bs!1807323 (= lambda!382013 lambda!381994)))

(declare-fun bs!1807324 () Bool)

(assert (= bs!1807324 (and d!2131834 d!2131102)))

(assert (=> bs!1807324 (= lambda!382013 lambda!381869)))

(declare-fun bs!1807325 () Bool)

(assert (= bs!1807325 (and d!2131834 d!2131664)))

(assert (=> bs!1807325 (= lambda!382013 lambda!381991)))

(declare-fun bs!1807326 () Bool)

(assert (= bs!1807326 (and d!2131834 d!2131058)))

(assert (=> bs!1807326 (= lambda!382013 lambda!381857)))

(declare-fun bs!1807327 () Bool)

(assert (= bs!1807327 (and d!2131834 d!2131272)))

(assert (=> bs!1807327 (= lambda!382013 lambda!381934)))

(declare-fun bs!1807328 () Bool)

(assert (= bs!1807328 (and d!2131834 d!2131166)))

(assert (=> bs!1807328 (= lambda!382013 lambda!381888)))

(declare-fun bs!1807329 () Bool)

(assert (= bs!1807329 (and d!2131834 d!2131274)))

(assert (=> bs!1807329 (= lambda!382013 lambda!381937)))

(declare-fun bs!1807330 () Bool)

(assert (= bs!1807330 (and d!2131834 d!2131810)))

(assert (=> bs!1807330 (= lambda!382013 lambda!382004)))

(declare-fun b!6784893 () Bool)

(declare-fun e!4095576 () Bool)

(declare-fun lt!2445409 () Regex!16605)

(assert (=> b!6784893 (= e!4095576 (isUnion!1400 lt!2445409))))

(declare-fun b!6784894 () Bool)

(declare-fun e!4095574 () Regex!16605)

(declare-fun e!4095578 () Regex!16605)

(assert (=> b!6784894 (= e!4095574 e!4095578)))

(declare-fun c!1260699 () Bool)

(assert (=> b!6784894 (= c!1260699 ((_ is Cons!65991) (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))

(declare-fun b!6784895 () Bool)

(declare-fun e!4095577 () Bool)

(assert (=> b!6784895 (= e!4095577 e!4095576)))

(declare-fun c!1260700 () Bool)

(assert (=> b!6784895 (= c!1260700 (isEmpty!38355 (tail!12706 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992)))))))

(declare-fun e!4095575 () Bool)

(assert (=> d!2131834 e!4095575))

(declare-fun res!2773234 () Bool)

(assert (=> d!2131834 (=> (not res!2773234) (not e!4095575))))

(assert (=> d!2131834 (= res!2773234 (validRegex!8341 lt!2445409))))

(assert (=> d!2131834 (= lt!2445409 e!4095574)))

(declare-fun c!1260697 () Bool)

(declare-fun e!4095579 () Bool)

(assert (=> d!2131834 (= c!1260697 e!4095579)))

(declare-fun res!2773233 () Bool)

(assert (=> d!2131834 (=> (not res!2773233) (not e!4095579))))

(assert (=> d!2131834 (= res!2773233 ((_ is Cons!65991) (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))

(assert (=> d!2131834 (forall!15797 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992)) lambda!382013)))

(assert (=> d!2131834 (= (generalisedUnion!2449 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))) lt!2445409)))

(declare-fun b!6784896 () Bool)

(assert (=> b!6784896 (= e!4095578 (Union!16605 (h!72439 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))) (generalisedUnion!2449 (t!379832 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))))

(declare-fun b!6784897 () Bool)

(assert (=> b!6784897 (= e!4095576 (= lt!2445409 (head!13621 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992)))))))

(declare-fun b!6784898 () Bool)

(assert (=> b!6784898 (= e!4095578 EmptyLang!16605)))

(declare-fun b!6784899 () Bool)

(assert (=> b!6784899 (= e!4095577 (isEmptyLang!1970 lt!2445409))))

(declare-fun b!6784900 () Bool)

(assert (=> b!6784900 (= e!4095579 (isEmpty!38355 (t!379832 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992)))))))

(declare-fun b!6784901 () Bool)

(assert (=> b!6784901 (= e!4095575 e!4095577)))

(declare-fun c!1260698 () Bool)

(assert (=> b!6784901 (= c!1260698 (isEmpty!38355 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))

(declare-fun b!6784902 () Bool)

(assert (=> b!6784902 (= e!4095574 (h!72439 (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992))))))

(assert (= (and d!2131834 res!2773233) b!6784900))

(assert (= (and d!2131834 c!1260697) b!6784902))

(assert (= (and d!2131834 (not c!1260697)) b!6784894))

(assert (= (and b!6784894 c!1260699) b!6784896))

(assert (= (and b!6784894 (not c!1260699)) b!6784898))

(assert (= (and d!2131834 res!2773234) b!6784901))

(assert (= (and b!6784901 c!1260698) b!6784899))

(assert (= (and b!6784901 (not c!1260698)) b!6784895))

(assert (= (and b!6784895 c!1260700) b!6784897))

(assert (= (and b!6784895 (not c!1260700)) b!6784893))

(declare-fun m!7533282 () Bool)

(assert (=> b!6784893 m!7533282))

(assert (=> b!6784897 m!7531794))

(declare-fun m!7533284 () Bool)

(assert (=> b!6784897 m!7533284))

(assert (=> b!6784895 m!7531794))

(declare-fun m!7533286 () Bool)

(assert (=> b!6784895 m!7533286))

(assert (=> b!6784895 m!7533286))

(declare-fun m!7533288 () Bool)

(assert (=> b!6784895 m!7533288))

(declare-fun m!7533290 () Bool)

(assert (=> b!6784899 m!7533290))

(declare-fun m!7533292 () Bool)

(assert (=> b!6784896 m!7533292))

(declare-fun m!7533294 () Bool)

(assert (=> b!6784900 m!7533294))

(declare-fun m!7533296 () Bool)

(assert (=> d!2131834 m!7533296))

(assert (=> d!2131834 m!7531794))

(declare-fun m!7533298 () Bool)

(assert (=> d!2131834 m!7533298))

(assert (=> b!6784901 m!7531794))

(declare-fun m!7533300 () Bool)

(assert (=> b!6784901 m!7533300))

(assert (=> d!2131144 d!2131834))

(declare-fun bs!1807331 () Bool)

(declare-fun d!2131836 () Bool)

(assert (= bs!1807331 (and d!2131836 d!2131134)))

(declare-fun lambda!382014 () Int)

(assert (=> bs!1807331 (= lambda!382014 lambda!381884)))

(declare-fun bs!1807332 () Bool)

(assert (= bs!1807332 (and d!2131836 b!6782898)))

(assert (=> bs!1807332 (= lambda!382014 lambda!381851)))

(declare-fun bs!1807333 () Bool)

(assert (= bs!1807333 (and d!2131836 d!2131696)))

(assert (=> bs!1807333 (= lambda!382014 lambda!381994)))

(declare-fun bs!1807334 () Bool)

(assert (= bs!1807334 (and d!2131836 d!2131102)))

(assert (=> bs!1807334 (= lambda!382014 lambda!381869)))

(declare-fun bs!1807335 () Bool)

(assert (= bs!1807335 (and d!2131836 d!2131664)))

(assert (=> bs!1807335 (= lambda!382014 lambda!381991)))

(declare-fun bs!1807336 () Bool)

(assert (= bs!1807336 (and d!2131836 d!2131058)))

(assert (=> bs!1807336 (= lambda!382014 lambda!381857)))

(declare-fun bs!1807337 () Bool)

(assert (= bs!1807337 (and d!2131836 d!2131272)))

(assert (=> bs!1807337 (= lambda!382014 lambda!381934)))

(declare-fun bs!1807338 () Bool)

(assert (= bs!1807338 (and d!2131836 d!2131166)))

(assert (=> bs!1807338 (= lambda!382014 lambda!381888)))

(declare-fun bs!1807339 () Bool)

(assert (= bs!1807339 (and d!2131836 d!2131834)))

(assert (=> bs!1807339 (= lambda!382014 lambda!382013)))

(declare-fun bs!1807340 () Bool)

(assert (= bs!1807340 (and d!2131836 d!2131274)))

(assert (=> bs!1807340 (= lambda!382014 lambda!381937)))

(declare-fun bs!1807341 () Bool)

(assert (= bs!1807341 (and d!2131836 d!2131810)))

(assert (=> bs!1807341 (= lambda!382014 lambda!382004)))

(declare-fun lt!2445410 () List!66115)

(assert (=> d!2131836 (forall!15797 lt!2445410 lambda!382014)))

(declare-fun e!4095580 () List!66115)

(assert (=> d!2131836 (= lt!2445410 e!4095580)))

(declare-fun c!1260701 () Bool)

(assert (=> d!2131836 (= c!1260701 ((_ is Cons!65992) (Cons!65992 lt!2445202 Nil!65992)))))

(assert (=> d!2131836 (= (unfocusZipperList!2026 (Cons!65992 lt!2445202 Nil!65992)) lt!2445410)))

(declare-fun b!6784903 () Bool)

(assert (=> b!6784903 (= e!4095580 (Cons!65991 (generalisedConcat!2202 (exprs!6489 (h!72440 (Cons!65992 lt!2445202 Nil!65992)))) (unfocusZipperList!2026 (t!379833 (Cons!65992 lt!2445202 Nil!65992)))))))

(declare-fun b!6784904 () Bool)

(assert (=> b!6784904 (= e!4095580 Nil!65991)))

(assert (= (and d!2131836 c!1260701) b!6784903))

(assert (= (and d!2131836 (not c!1260701)) b!6784904))

(declare-fun m!7533302 () Bool)

(assert (=> d!2131836 m!7533302))

(declare-fun m!7533304 () Bool)

(assert (=> b!6784903 m!7533304))

(declare-fun m!7533306 () Bool)

(assert (=> b!6784903 m!7533306))

(assert (=> d!2131144 d!2131836))

(declare-fun bs!1807342 () Bool)

(declare-fun d!2131838 () Bool)

(assert (= bs!1807342 (and d!2131838 d!2131714)))

(declare-fun lambda!382015 () Int)

(assert (=> bs!1807342 (= lambda!382015 lambda!381998)))

(declare-fun bs!1807343 () Bool)

(assert (= bs!1807343 (and d!2131838 d!2131724)))

(assert (=> bs!1807343 (= lambda!382015 lambda!382000)))

(declare-fun bs!1807344 () Bool)

(assert (= bs!1807344 (and d!2131838 d!2131788)))

(assert (=> bs!1807344 (= lambda!382015 lambda!382002)))

(declare-fun bs!1807345 () Bool)

(assert (= bs!1807345 (and d!2131838 d!2131792)))

(assert (=> bs!1807345 (= lambda!382015 lambda!382003)))

(assert (=> d!2131838 (= (nullableZipper!2312 lt!2445167) (exists!2727 lt!2445167 lambda!382015))))

(declare-fun bs!1807346 () Bool)

(assert (= bs!1807346 d!2131838))

(declare-fun m!7533308 () Bool)

(assert (=> bs!1807346 m!7533308))

(assert (=> b!6783710 d!2131838))

(declare-fun d!2131840 () Bool)

(declare-fun res!2773239 () Bool)

(declare-fun e!4095585 () Bool)

(assert (=> d!2131840 (=> res!2773239 e!4095585)))

(assert (=> d!2131840 (= res!2773239 ((_ is Nil!65992) lt!2445259))))

(assert (=> d!2131840 (= (noDuplicate!2389 lt!2445259) e!4095585)))

(declare-fun b!6784909 () Bool)

(declare-fun e!4095586 () Bool)

(assert (=> b!6784909 (= e!4095585 e!4095586)))

(declare-fun res!2773240 () Bool)

(assert (=> b!6784909 (=> (not res!2773240) (not e!4095586))))

(declare-fun contains!20285 (List!66116 Context!11978) Bool)

(assert (=> b!6784909 (= res!2773240 (not (contains!20285 (t!379833 lt!2445259) (h!72440 lt!2445259))))))

(declare-fun b!6784910 () Bool)

(assert (=> b!6784910 (= e!4095586 (noDuplicate!2389 (t!379833 lt!2445259)))))

(assert (= (and d!2131840 (not res!2773239)) b!6784909))

(assert (= (and b!6784909 res!2773240) b!6784910))

(declare-fun m!7533310 () Bool)

(assert (=> b!6784909 m!7533310))

(declare-fun m!7533312 () Bool)

(assert (=> b!6784910 m!7533312))

(assert (=> d!2131112 d!2131840))

(declare-fun d!2131842 () Bool)

(declare-fun e!4095595 () Bool)

(assert (=> d!2131842 e!4095595))

(declare-fun res!2773245 () Bool)

(assert (=> d!2131842 (=> (not res!2773245) (not e!4095595))))

(declare-fun res!2773246 () List!66116)

(assert (=> d!2131842 (= res!2773245 (noDuplicate!2389 res!2773246))))

(declare-fun e!4095594 () Bool)

(assert (=> d!2131842 e!4095594))

(assert (=> d!2131842 (= (choose!50519 z!1189) res!2773246)))

(declare-fun b!6784918 () Bool)

(declare-fun e!4095593 () Bool)

(declare-fun tp!1858622 () Bool)

(assert (=> b!6784918 (= e!4095593 tp!1858622)))

(declare-fun b!6784917 () Bool)

(declare-fun tp!1858623 () Bool)

(assert (=> b!6784917 (= e!4095594 (and (inv!84759 (h!72440 res!2773246)) e!4095593 tp!1858623))))

(declare-fun b!6784919 () Bool)

(assert (=> b!6784919 (= e!4095595 (= (content!12856 res!2773246) z!1189))))

(assert (= b!6784917 b!6784918))

(assert (= (and d!2131842 ((_ is Cons!65992) res!2773246)) b!6784917))

(assert (= (and d!2131842 res!2773245) b!6784919))

(declare-fun m!7533314 () Bool)

(assert (=> d!2131842 m!7533314))

(declare-fun m!7533316 () Bool)

(assert (=> b!6784917 m!7533316))

(declare-fun m!7533318 () Bool)

(assert (=> b!6784919 m!7533318))

(assert (=> d!2131112 d!2131842))

(assert (=> b!6783801 d!2131728))

(assert (=> bs!1806794 d!2131090))

(declare-fun b!6784920 () Bool)

(declare-fun e!4095597 () (InoxSet Context!11978))

(assert (=> b!6784920 (= e!4095597 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615768 () Bool)

(declare-fun call!615773 () (InoxSet Context!11978))

(assert (=> bm!615768 (= call!615773 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169))))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169)))))) (h!72438 s!2326)))))

(declare-fun b!6784921 () Bool)

(declare-fun e!4095598 () Bool)

(assert (=> b!6784921 (= e!4095598 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169)))))))))

(declare-fun d!2131844 () Bool)

(declare-fun c!1260703 () Bool)

(assert (=> d!2131844 (= c!1260703 e!4095598)))

(declare-fun res!2773247 () Bool)

(assert (=> d!2131844 (=> (not res!2773247) (not e!4095598))))

(assert (=> d!2131844 (= res!2773247 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169))))))))

(declare-fun e!4095596 () (InoxSet Context!11978))

(assert (=> d!2131844 (= (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445169))) (h!72438 s!2326)) e!4095596)))

(declare-fun b!6784922 () Bool)

(assert (=> b!6784922 (= e!4095596 ((_ map or) call!615773 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169)))))) (h!72438 s!2326))))))

(declare-fun b!6784923 () Bool)

(assert (=> b!6784923 (= e!4095597 call!615773)))

(declare-fun b!6784924 () Bool)

(assert (=> b!6784924 (= e!4095596 e!4095597)))

(declare-fun c!1260702 () Bool)

(assert (=> b!6784924 (= c!1260702 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445169))))))))

(assert (= (and d!2131844 res!2773247) b!6784921))

(assert (= (and d!2131844 c!1260703) b!6784922))

(assert (= (and d!2131844 (not c!1260703)) b!6784924))

(assert (= (and b!6784924 c!1260702) b!6784923))

(assert (= (and b!6784924 (not c!1260702)) b!6784920))

(assert (= (or b!6784922 b!6784923) bm!615768))

(declare-fun m!7533320 () Bool)

(assert (=> bm!615768 m!7533320))

(declare-fun m!7533322 () Bool)

(assert (=> b!6784921 m!7533322))

(declare-fun m!7533324 () Bool)

(assert (=> b!6784922 m!7533324))

(assert (=> b!6783484 d!2131844))

(assert (=> b!6783773 d!2131782))

(assert (=> b!6783773 d!2131772))

(declare-fun d!2131846 () Bool)

(assert (=> d!2131846 (= (isDefined!13195 lt!2445331) (not (isEmpty!38357 lt!2445331)))))

(declare-fun bs!1807347 () Bool)

(assert (= bs!1807347 d!2131846))

(declare-fun m!7533326 () Bool)

(assert (=> bs!1807347 m!7533326))

(assert (=> d!2131248 d!2131846))

(declare-fun b!6784925 () Bool)

(declare-fun e!4095603 () Bool)

(assert (=> b!6784925 (= e!4095603 (matchR!8788 (derivativeStep!5269 (reg!16934 r!7292) (head!13620 Nil!65990)) (tail!12705 Nil!65990)))))

(declare-fun b!6784926 () Bool)

(assert (=> b!6784926 (= e!4095603 (nullable!6584 (reg!16934 r!7292)))))

(declare-fun b!6784927 () Bool)

(declare-fun e!4095599 () Bool)

(declare-fun lt!2445411 () Bool)

(assert (=> b!6784927 (= e!4095599 (not lt!2445411))))

(declare-fun b!6784928 () Bool)

(declare-fun e!4095600 () Bool)

(assert (=> b!6784928 (= e!4095600 e!4095599)))

(declare-fun c!1260706 () Bool)

(assert (=> b!6784928 (= c!1260706 ((_ is EmptyLang!16605) (reg!16934 r!7292)))))

(declare-fun b!6784929 () Bool)

(declare-fun res!2773252 () Bool)

(declare-fun e!4095601 () Bool)

(assert (=> b!6784929 (=> (not res!2773252) (not e!4095601))))

(declare-fun call!615774 () Bool)

(assert (=> b!6784929 (= res!2773252 (not call!615774))))

(declare-fun b!6784930 () Bool)

(declare-fun res!2773251 () Bool)

(declare-fun e!4095602 () Bool)

(assert (=> b!6784930 (=> res!2773251 e!4095602)))

(assert (=> b!6784930 (= res!2773251 e!4095601)))

(declare-fun res!2773255 () Bool)

(assert (=> b!6784930 (=> (not res!2773255) (not e!4095601))))

(assert (=> b!6784930 (= res!2773255 lt!2445411)))

(declare-fun b!6784931 () Bool)

(assert (=> b!6784931 (= e!4095600 (= lt!2445411 call!615774))))

(declare-fun b!6784932 () Bool)

(declare-fun e!4095605 () Bool)

(declare-fun e!4095604 () Bool)

(assert (=> b!6784932 (= e!4095605 e!4095604)))

(declare-fun res!2773250 () Bool)

(assert (=> b!6784932 (=> res!2773250 e!4095604)))

(assert (=> b!6784932 (= res!2773250 call!615774)))

(declare-fun b!6784933 () Bool)

(declare-fun res!2773253 () Bool)

(assert (=> b!6784933 (=> res!2773253 e!4095602)))

(assert (=> b!6784933 (= res!2773253 (not ((_ is ElementMatch!16605) (reg!16934 r!7292))))))

(assert (=> b!6784933 (= e!4095599 e!4095602)))

(declare-fun b!6784934 () Bool)

(assert (=> b!6784934 (= e!4095604 (not (= (head!13620 Nil!65990) (c!1260145 (reg!16934 r!7292)))))))

(declare-fun b!6784935 () Bool)

(assert (=> b!6784935 (= e!4095601 (= (head!13620 Nil!65990) (c!1260145 (reg!16934 r!7292))))))

(declare-fun b!6784936 () Bool)

(assert (=> b!6784936 (= e!4095602 e!4095605)))

(declare-fun res!2773254 () Bool)

(assert (=> b!6784936 (=> (not res!2773254) (not e!4095605))))

(assert (=> b!6784936 (= res!2773254 (not lt!2445411))))

(declare-fun bm!615769 () Bool)

(assert (=> bm!615769 (= call!615774 (isEmpty!38354 Nil!65990))))

(declare-fun d!2131848 () Bool)

(assert (=> d!2131848 e!4095600))

(declare-fun c!1260704 () Bool)

(assert (=> d!2131848 (= c!1260704 ((_ is EmptyExpr!16605) (reg!16934 r!7292)))))

(assert (=> d!2131848 (= lt!2445411 e!4095603)))

(declare-fun c!1260705 () Bool)

(assert (=> d!2131848 (= c!1260705 (isEmpty!38354 Nil!65990))))

(assert (=> d!2131848 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131848 (= (matchR!8788 (reg!16934 r!7292) Nil!65990) lt!2445411)))

(declare-fun b!6784937 () Bool)

(declare-fun res!2773248 () Bool)

(assert (=> b!6784937 (=> res!2773248 e!4095604)))

(assert (=> b!6784937 (= res!2773248 (not (isEmpty!38354 (tail!12705 Nil!65990))))))

(declare-fun b!6784938 () Bool)

(declare-fun res!2773249 () Bool)

(assert (=> b!6784938 (=> (not res!2773249) (not e!4095601))))

(assert (=> b!6784938 (= res!2773249 (isEmpty!38354 (tail!12705 Nil!65990)))))

(assert (= (and d!2131848 c!1260705) b!6784926))

(assert (= (and d!2131848 (not c!1260705)) b!6784925))

(assert (= (and d!2131848 c!1260704) b!6784931))

(assert (= (and d!2131848 (not c!1260704)) b!6784928))

(assert (= (and b!6784928 c!1260706) b!6784927))

(assert (= (and b!6784928 (not c!1260706)) b!6784933))

(assert (= (and b!6784933 (not res!2773253)) b!6784930))

(assert (= (and b!6784930 res!2773255) b!6784929))

(assert (= (and b!6784929 res!2773252) b!6784938))

(assert (= (and b!6784938 res!2773249) b!6784935))

(assert (= (and b!6784930 (not res!2773251)) b!6784936))

(assert (= (and b!6784936 res!2773254) b!6784932))

(assert (= (and b!6784932 (not res!2773250)) b!6784937))

(assert (= (and b!6784937 (not res!2773248)) b!6784934))

(assert (= (or b!6784931 b!6784929 b!6784932) bm!615769))

(declare-fun m!7533328 () Bool)

(assert (=> b!6784938 m!7533328))

(assert (=> b!6784938 m!7533328))

(declare-fun m!7533330 () Bool)

(assert (=> b!6784938 m!7533330))

(declare-fun m!7533332 () Bool)

(assert (=> b!6784934 m!7533332))

(assert (=> b!6784937 m!7533328))

(assert (=> b!6784937 m!7533328))

(assert (=> b!6784937 m!7533330))

(assert (=> b!6784925 m!7533332))

(assert (=> b!6784925 m!7533332))

(declare-fun m!7533334 () Bool)

(assert (=> b!6784925 m!7533334))

(assert (=> b!6784925 m!7533328))

(assert (=> b!6784925 m!7533334))

(assert (=> b!6784925 m!7533328))

(declare-fun m!7533336 () Bool)

(assert (=> b!6784925 m!7533336))

(declare-fun m!7533338 () Bool)

(assert (=> d!2131848 m!7533338))

(assert (=> d!2131848 m!7531450))

(assert (=> b!6784926 m!7531770))

(assert (=> bm!615769 m!7533338))

(assert (=> b!6784935 m!7533332))

(assert (=> d!2131248 d!2131848))

(assert (=> d!2131248 d!2131798))

(declare-fun d!2131850 () Bool)

(assert (=> d!2131850 (= (isEmpty!38355 (unfocusZipperList!2026 zl!343)) ((_ is Nil!65991) (unfocusZipperList!2026 zl!343)))))

(assert (=> b!6783742 d!2131850))

(assert (=> d!2131038 d!2131796))

(declare-fun d!2131852 () Bool)

(declare-fun res!2773260 () Bool)

(declare-fun e!4095611 () Bool)

(assert (=> d!2131852 (=> res!2773260 e!4095611)))

(assert (=> d!2131852 (= res!2773260 ((_ is ElementMatch!16605) lt!2445339))))

(assert (=> d!2131852 (= (validRegex!8341 lt!2445339) e!4095611)))

(declare-fun b!6784939 () Bool)

(declare-fun e!4095612 () Bool)

(assert (=> b!6784939 (= e!4095611 e!4095612)))

(declare-fun c!1260707 () Bool)

(assert (=> b!6784939 (= c!1260707 ((_ is Star!16605) lt!2445339))))

(declare-fun bm!615770 () Bool)

(declare-fun call!615775 () Bool)

(declare-fun c!1260708 () Bool)

(assert (=> bm!615770 (= call!615775 (validRegex!8341 (ite c!1260708 (regTwo!33723 lt!2445339) (regTwo!33722 lt!2445339))))))

(declare-fun b!6784940 () Bool)

(declare-fun e!4095607 () Bool)

(declare-fun call!615777 () Bool)

(assert (=> b!6784940 (= e!4095607 call!615777)))

(declare-fun bm!615771 () Bool)

(assert (=> bm!615771 (= call!615777 (validRegex!8341 (ite c!1260707 (reg!16934 lt!2445339) (ite c!1260708 (regOne!33723 lt!2445339) (regOne!33722 lt!2445339)))))))

(declare-fun b!6784941 () Bool)

(declare-fun e!4095609 () Bool)

(declare-fun e!4095610 () Bool)

(assert (=> b!6784941 (= e!4095609 e!4095610)))

(declare-fun res!2773257 () Bool)

(assert (=> b!6784941 (=> (not res!2773257) (not e!4095610))))

(declare-fun call!615776 () Bool)

(assert (=> b!6784941 (= res!2773257 call!615776)))

(declare-fun b!6784942 () Bool)

(declare-fun res!2773256 () Bool)

(declare-fun e!4095608 () Bool)

(assert (=> b!6784942 (=> (not res!2773256) (not e!4095608))))

(assert (=> b!6784942 (= res!2773256 call!615776)))

(declare-fun e!4095606 () Bool)

(assert (=> b!6784942 (= e!4095606 e!4095608)))

(declare-fun b!6784943 () Bool)

(assert (=> b!6784943 (= e!4095612 e!4095606)))

(assert (=> b!6784943 (= c!1260708 ((_ is Union!16605) lt!2445339))))

(declare-fun b!6784944 () Bool)

(assert (=> b!6784944 (= e!4095610 call!615775)))

(declare-fun bm!615772 () Bool)

(assert (=> bm!615772 (= call!615776 call!615777)))

(declare-fun b!6784945 () Bool)

(declare-fun res!2773258 () Bool)

(assert (=> b!6784945 (=> res!2773258 e!4095609)))

(assert (=> b!6784945 (= res!2773258 (not ((_ is Concat!25450) lt!2445339)))))

(assert (=> b!6784945 (= e!4095606 e!4095609)))

(declare-fun b!6784946 () Bool)

(assert (=> b!6784946 (= e!4095608 call!615775)))

(declare-fun b!6784947 () Bool)

(assert (=> b!6784947 (= e!4095612 e!4095607)))

(declare-fun res!2773259 () Bool)

(assert (=> b!6784947 (= res!2773259 (not (nullable!6584 (reg!16934 lt!2445339))))))

(assert (=> b!6784947 (=> (not res!2773259) (not e!4095607))))

(assert (= (and d!2131852 (not res!2773260)) b!6784939))

(assert (= (and b!6784939 c!1260707) b!6784947))

(assert (= (and b!6784939 (not c!1260707)) b!6784943))

(assert (= (and b!6784947 res!2773259) b!6784940))

(assert (= (and b!6784943 c!1260708) b!6784942))

(assert (= (and b!6784943 (not c!1260708)) b!6784945))

(assert (= (and b!6784942 res!2773256) b!6784946))

(assert (= (and b!6784945 (not res!2773258)) b!6784941))

(assert (= (and b!6784941 res!2773257) b!6784944))

(assert (= (or b!6784946 b!6784944) bm!615770))

(assert (= (or b!6784942 b!6784941) bm!615772))

(assert (= (or b!6784940 bm!615772) bm!615771))

(declare-fun m!7533340 () Bool)

(assert (=> bm!615770 m!7533340))

(declare-fun m!7533342 () Bool)

(assert (=> bm!615771 m!7533342))

(declare-fun m!7533344 () Bool)

(assert (=> b!6784947 m!7533344))

(assert (=> d!2131272 d!2131852))

(declare-fun d!2131854 () Bool)

(declare-fun res!2773261 () Bool)

(declare-fun e!4095613 () Bool)

(assert (=> d!2131854 (=> res!2773261 e!4095613)))

(assert (=> d!2131854 (= res!2773261 ((_ is Nil!65991) (unfocusZipperList!2026 zl!343)))))

(assert (=> d!2131854 (= (forall!15797 (unfocusZipperList!2026 zl!343) lambda!381934) e!4095613)))

(declare-fun b!6784948 () Bool)

(declare-fun e!4095614 () Bool)

(assert (=> b!6784948 (= e!4095613 e!4095614)))

(declare-fun res!2773262 () Bool)

(assert (=> b!6784948 (=> (not res!2773262) (not e!4095614))))

(assert (=> b!6784948 (= res!2773262 (dynLambda!26336 lambda!381934 (h!72439 (unfocusZipperList!2026 zl!343))))))

(declare-fun b!6784949 () Bool)

(assert (=> b!6784949 (= e!4095614 (forall!15797 (t!379832 (unfocusZipperList!2026 zl!343)) lambda!381934))))

(assert (= (and d!2131854 (not res!2773261)) b!6784948))

(assert (= (and b!6784948 res!2773262) b!6784949))

(declare-fun b_lambda!255507 () Bool)

(assert (=> (not b_lambda!255507) (not b!6784948)))

(declare-fun m!7533346 () Bool)

(assert (=> b!6784948 m!7533346))

(declare-fun m!7533348 () Bool)

(assert (=> b!6784949 m!7533348))

(assert (=> d!2131272 d!2131854))

(declare-fun d!2131856 () Bool)

(declare-fun c!1260711 () Bool)

(assert (=> d!2131856 (= c!1260711 ((_ is Nil!65991) lt!2445214))))

(declare-fun e!4095617 () (InoxSet Regex!16605))

(assert (=> d!2131856 (= (content!12855 lt!2445214) e!4095617)))

(declare-fun b!6784954 () Bool)

(assert (=> b!6784954 (= e!4095617 ((as const (Array Regex!16605 Bool)) false))))

(declare-fun b!6784955 () Bool)

(assert (=> b!6784955 (= e!4095617 ((_ map or) (store ((as const (Array Regex!16605 Bool)) false) (h!72439 lt!2445214) true) (content!12855 (t!379832 lt!2445214))))))

(assert (= (and d!2131856 c!1260711) b!6784954))

(assert (= (and d!2131856 (not c!1260711)) b!6784955))

(declare-fun m!7533350 () Bool)

(assert (=> b!6784955 m!7533350))

(declare-fun m!7533352 () Bool)

(assert (=> b!6784955 m!7533352))

(assert (=> d!2131046 d!2131856))

(declare-fun d!2131858 () Bool)

(declare-fun c!1260712 () Bool)

(assert (=> d!2131858 (= c!1260712 ((_ is Nil!65991) lt!2445175))))

(declare-fun e!4095618 () (InoxSet Regex!16605))

(assert (=> d!2131858 (= (content!12855 lt!2445175) e!4095618)))

(declare-fun b!6784956 () Bool)

(assert (=> b!6784956 (= e!4095618 ((as const (Array Regex!16605 Bool)) false))))

(declare-fun b!6784957 () Bool)

(assert (=> b!6784957 (= e!4095618 ((_ map or) (store ((as const (Array Regex!16605 Bool)) false) (h!72439 lt!2445175) true) (content!12855 (t!379832 lt!2445175))))))

(assert (= (and d!2131858 c!1260712) b!6784956))

(assert (= (and d!2131858 (not c!1260712)) b!6784957))

(declare-fun m!7533354 () Bool)

(assert (=> b!6784957 m!7533354))

(assert (=> b!6784957 m!7533272))

(assert (=> d!2131046 d!2131858))

(declare-fun d!2131860 () Bool)

(declare-fun c!1260713 () Bool)

(assert (=> d!2131860 (= c!1260713 ((_ is Nil!65991) lt!2445201))))

(declare-fun e!4095619 () (InoxSet Regex!16605))

(assert (=> d!2131860 (= (content!12855 lt!2445201) e!4095619)))

(declare-fun b!6784958 () Bool)

(assert (=> b!6784958 (= e!4095619 ((as const (Array Regex!16605 Bool)) false))))

(declare-fun b!6784959 () Bool)

(assert (=> b!6784959 (= e!4095619 ((_ map or) (store ((as const (Array Regex!16605 Bool)) false) (h!72439 lt!2445201) true) (content!12855 (t!379832 lt!2445201))))))

(assert (= (and d!2131860 c!1260713) b!6784958))

(assert (= (and d!2131860 (not c!1260713)) b!6784959))

(declare-fun m!7533356 () Bool)

(assert (=> b!6784959 m!7533356))

(declare-fun m!7533358 () Bool)

(assert (=> b!6784959 m!7533358))

(assert (=> d!2131046 d!2131860))

(assert (=> d!2131278 d!2131222))

(declare-fun d!2131862 () Bool)

(declare-fun res!2773267 () Bool)

(declare-fun e!4095625 () Bool)

(assert (=> d!2131862 (=> res!2773267 e!4095625)))

(assert (=> d!2131862 (= res!2773267 ((_ is ElementMatch!16605) lt!2445192))))

(assert (=> d!2131862 (= (validRegex!8341 lt!2445192) e!4095625)))

(declare-fun b!6784960 () Bool)

(declare-fun e!4095626 () Bool)

(assert (=> b!6784960 (= e!4095625 e!4095626)))

(declare-fun c!1260714 () Bool)

(assert (=> b!6784960 (= c!1260714 ((_ is Star!16605) lt!2445192))))

(declare-fun bm!615773 () Bool)

(declare-fun call!615778 () Bool)

(declare-fun c!1260715 () Bool)

(assert (=> bm!615773 (= call!615778 (validRegex!8341 (ite c!1260715 (regTwo!33723 lt!2445192) (regTwo!33722 lt!2445192))))))

(declare-fun b!6784961 () Bool)

(declare-fun e!4095621 () Bool)

(declare-fun call!615780 () Bool)

(assert (=> b!6784961 (= e!4095621 call!615780)))

(declare-fun bm!615774 () Bool)

(assert (=> bm!615774 (= call!615780 (validRegex!8341 (ite c!1260714 (reg!16934 lt!2445192) (ite c!1260715 (regOne!33723 lt!2445192) (regOne!33722 lt!2445192)))))))

(declare-fun b!6784962 () Bool)

(declare-fun e!4095623 () Bool)

(declare-fun e!4095624 () Bool)

(assert (=> b!6784962 (= e!4095623 e!4095624)))

(declare-fun res!2773264 () Bool)

(assert (=> b!6784962 (=> (not res!2773264) (not e!4095624))))

(declare-fun call!615779 () Bool)

(assert (=> b!6784962 (= res!2773264 call!615779)))

(declare-fun b!6784963 () Bool)

(declare-fun res!2773263 () Bool)

(declare-fun e!4095622 () Bool)

(assert (=> b!6784963 (=> (not res!2773263) (not e!4095622))))

(assert (=> b!6784963 (= res!2773263 call!615779)))

(declare-fun e!4095620 () Bool)

(assert (=> b!6784963 (= e!4095620 e!4095622)))

(declare-fun b!6784964 () Bool)

(assert (=> b!6784964 (= e!4095626 e!4095620)))

(assert (=> b!6784964 (= c!1260715 ((_ is Union!16605) lt!2445192))))

(declare-fun b!6784965 () Bool)

(assert (=> b!6784965 (= e!4095624 call!615778)))

(declare-fun bm!615775 () Bool)

(assert (=> bm!615775 (= call!615779 call!615780)))

(declare-fun b!6784966 () Bool)

(declare-fun res!2773265 () Bool)

(assert (=> b!6784966 (=> res!2773265 e!4095623)))

(assert (=> b!6784966 (= res!2773265 (not ((_ is Concat!25450) lt!2445192)))))

(assert (=> b!6784966 (= e!4095620 e!4095623)))

(declare-fun b!6784967 () Bool)

(assert (=> b!6784967 (= e!4095622 call!615778)))

(declare-fun b!6784968 () Bool)

(assert (=> b!6784968 (= e!4095626 e!4095621)))

(declare-fun res!2773266 () Bool)

(assert (=> b!6784968 (= res!2773266 (not (nullable!6584 (reg!16934 lt!2445192))))))

(assert (=> b!6784968 (=> (not res!2773266) (not e!4095621))))

(assert (= (and d!2131862 (not res!2773267)) b!6784960))

(assert (= (and b!6784960 c!1260714) b!6784968))

(assert (= (and b!6784960 (not c!1260714)) b!6784964))

(assert (= (and b!6784968 res!2773266) b!6784961))

(assert (= (and b!6784964 c!1260715) b!6784963))

(assert (= (and b!6784964 (not c!1260715)) b!6784966))

(assert (= (and b!6784963 res!2773263) b!6784967))

(assert (= (and b!6784966 (not res!2773265)) b!6784962))

(assert (= (and b!6784962 res!2773264) b!6784965))

(assert (= (or b!6784967 b!6784965) bm!615773))

(assert (= (or b!6784963 b!6784962) bm!615775))

(assert (= (or b!6784961 bm!615775) bm!615774))

(declare-fun m!7533360 () Bool)

(assert (=> bm!615773 m!7533360))

(declare-fun m!7533362 () Bool)

(assert (=> bm!615774 m!7533362))

(declare-fun m!7533364 () Bool)

(assert (=> b!6784968 m!7533364))

(assert (=> d!2131278 d!2131862))

(declare-fun b!6784969 () Bool)

(declare-fun e!4095631 () Bool)

(assert (=> b!6784969 (= e!4095631 (matchR!8788 (derivativeStep!5269 (derivativeStep!5269 lt!2445192 (head!13620 s!2326)) (head!13620 (tail!12705 s!2326))) (tail!12705 (tail!12705 s!2326))))))

(declare-fun b!6784970 () Bool)

(assert (=> b!6784970 (= e!4095631 (nullable!6584 (derivativeStep!5269 lt!2445192 (head!13620 s!2326))))))

(declare-fun b!6784971 () Bool)

(declare-fun e!4095627 () Bool)

(declare-fun lt!2445412 () Bool)

(assert (=> b!6784971 (= e!4095627 (not lt!2445412))))

(declare-fun b!6784972 () Bool)

(declare-fun e!4095628 () Bool)

(assert (=> b!6784972 (= e!4095628 e!4095627)))

(declare-fun c!1260718 () Bool)

(assert (=> b!6784972 (= c!1260718 ((_ is EmptyLang!16605) (derivativeStep!5269 lt!2445192 (head!13620 s!2326))))))

(declare-fun b!6784973 () Bool)

(declare-fun res!2773272 () Bool)

(declare-fun e!4095629 () Bool)

(assert (=> b!6784973 (=> (not res!2773272) (not e!4095629))))

(declare-fun call!615781 () Bool)

(assert (=> b!6784973 (= res!2773272 (not call!615781))))

(declare-fun b!6784974 () Bool)

(declare-fun res!2773271 () Bool)

(declare-fun e!4095630 () Bool)

(assert (=> b!6784974 (=> res!2773271 e!4095630)))

(assert (=> b!6784974 (= res!2773271 e!4095629)))

(declare-fun res!2773275 () Bool)

(assert (=> b!6784974 (=> (not res!2773275) (not e!4095629))))

(assert (=> b!6784974 (= res!2773275 lt!2445412)))

(declare-fun b!6784975 () Bool)

(assert (=> b!6784975 (= e!4095628 (= lt!2445412 call!615781))))

(declare-fun b!6784976 () Bool)

(declare-fun e!4095633 () Bool)

(declare-fun e!4095632 () Bool)

(assert (=> b!6784976 (= e!4095633 e!4095632)))

(declare-fun res!2773270 () Bool)

(assert (=> b!6784976 (=> res!2773270 e!4095632)))

(assert (=> b!6784976 (= res!2773270 call!615781)))

(declare-fun b!6784977 () Bool)

(declare-fun res!2773273 () Bool)

(assert (=> b!6784977 (=> res!2773273 e!4095630)))

(assert (=> b!6784977 (= res!2773273 (not ((_ is ElementMatch!16605) (derivativeStep!5269 lt!2445192 (head!13620 s!2326)))))))

(assert (=> b!6784977 (= e!4095627 e!4095630)))

(declare-fun b!6784978 () Bool)

(assert (=> b!6784978 (= e!4095632 (not (= (head!13620 (tail!12705 s!2326)) (c!1260145 (derivativeStep!5269 lt!2445192 (head!13620 s!2326))))))))

(declare-fun b!6784979 () Bool)

(assert (=> b!6784979 (= e!4095629 (= (head!13620 (tail!12705 s!2326)) (c!1260145 (derivativeStep!5269 lt!2445192 (head!13620 s!2326)))))))

(declare-fun b!6784980 () Bool)

(assert (=> b!6784980 (= e!4095630 e!4095633)))

(declare-fun res!2773274 () Bool)

(assert (=> b!6784980 (=> (not res!2773274) (not e!4095633))))

(assert (=> b!6784980 (= res!2773274 (not lt!2445412))))

(declare-fun bm!615776 () Bool)

(assert (=> bm!615776 (= call!615781 (isEmpty!38354 (tail!12705 s!2326)))))

(declare-fun d!2131864 () Bool)

(assert (=> d!2131864 e!4095628))

(declare-fun c!1260716 () Bool)

(assert (=> d!2131864 (= c!1260716 ((_ is EmptyExpr!16605) (derivativeStep!5269 lt!2445192 (head!13620 s!2326))))))

(assert (=> d!2131864 (= lt!2445412 e!4095631)))

(declare-fun c!1260717 () Bool)

(assert (=> d!2131864 (= c!1260717 (isEmpty!38354 (tail!12705 s!2326)))))

(assert (=> d!2131864 (validRegex!8341 (derivativeStep!5269 lt!2445192 (head!13620 s!2326)))))

(assert (=> d!2131864 (= (matchR!8788 (derivativeStep!5269 lt!2445192 (head!13620 s!2326)) (tail!12705 s!2326)) lt!2445412)))

(declare-fun b!6784981 () Bool)

(declare-fun res!2773268 () Bool)

(assert (=> b!6784981 (=> res!2773268 e!4095632)))

(assert (=> b!6784981 (= res!2773268 (not (isEmpty!38354 (tail!12705 (tail!12705 s!2326)))))))

(declare-fun b!6784982 () Bool)

(declare-fun res!2773269 () Bool)

(assert (=> b!6784982 (=> (not res!2773269) (not e!4095629))))

(assert (=> b!6784982 (= res!2773269 (isEmpty!38354 (tail!12705 (tail!12705 s!2326))))))

(assert (= (and d!2131864 c!1260717) b!6784970))

(assert (= (and d!2131864 (not c!1260717)) b!6784969))

(assert (= (and d!2131864 c!1260716) b!6784975))

(assert (= (and d!2131864 (not c!1260716)) b!6784972))

(assert (= (and b!6784972 c!1260718) b!6784971))

(assert (= (and b!6784972 (not c!1260718)) b!6784977))

(assert (= (and b!6784977 (not res!2773273)) b!6784974))

(assert (= (and b!6784974 res!2773275) b!6784973))

(assert (= (and b!6784973 res!2773272) b!6784982))

(assert (= (and b!6784982 res!2773269) b!6784979))

(assert (= (and b!6784974 (not res!2773271)) b!6784980))

(assert (= (and b!6784980 res!2773274) b!6784976))

(assert (= (and b!6784976 (not res!2773270)) b!6784981))

(assert (= (and b!6784981 (not res!2773268)) b!6784978))

(assert (= (or b!6784975 b!6784973 b!6784976) bm!615776))

(assert (=> b!6784982 m!7531476))

(assert (=> b!6784982 m!7533134))

(assert (=> b!6784982 m!7533134))

(declare-fun m!7533366 () Bool)

(assert (=> b!6784982 m!7533366))

(assert (=> b!6784978 m!7531476))

(assert (=> b!6784978 m!7533130))

(assert (=> b!6784981 m!7531476))

(assert (=> b!6784981 m!7533134))

(assert (=> b!6784981 m!7533134))

(assert (=> b!6784981 m!7533366))

(assert (=> b!6784969 m!7531476))

(assert (=> b!6784969 m!7533130))

(assert (=> b!6784969 m!7532170))

(assert (=> b!6784969 m!7533130))

(declare-fun m!7533368 () Bool)

(assert (=> b!6784969 m!7533368))

(assert (=> b!6784969 m!7531476))

(assert (=> b!6784969 m!7533134))

(assert (=> b!6784969 m!7533368))

(assert (=> b!6784969 m!7533134))

(declare-fun m!7533370 () Bool)

(assert (=> b!6784969 m!7533370))

(assert (=> d!2131864 m!7531476))

(assert (=> d!2131864 m!7531934))

(assert (=> d!2131864 m!7532170))

(declare-fun m!7533372 () Bool)

(assert (=> d!2131864 m!7533372))

(assert (=> b!6784970 m!7532170))

(declare-fun m!7533374 () Bool)

(assert (=> b!6784970 m!7533374))

(assert (=> bm!615776 m!7531476))

(assert (=> bm!615776 m!7531934))

(assert (=> b!6784979 m!7531476))

(assert (=> b!6784979 m!7533130))

(assert (=> b!6783761 d!2131864))

(declare-fun b!6784983 () Bool)

(declare-fun e!4095636 () Regex!16605)

(declare-fun e!4095635 () Regex!16605)

(assert (=> b!6784983 (= e!4095636 e!4095635)))

(declare-fun c!1260720 () Bool)

(assert (=> b!6784983 (= c!1260720 ((_ is Star!16605) lt!2445192))))

(declare-fun b!6784984 () Bool)

(declare-fun c!1260722 () Bool)

(assert (=> b!6784984 (= c!1260722 (nullable!6584 (regOne!33722 lt!2445192)))))

(declare-fun e!4095634 () Regex!16605)

(assert (=> b!6784984 (= e!4095635 e!4095634)))

(declare-fun b!6784985 () Bool)

(declare-fun call!615784 () Regex!16605)

(assert (=> b!6784985 (= e!4095635 (Concat!25450 call!615784 lt!2445192))))

(declare-fun bm!615777 () Bool)

(declare-fun call!615783 () Regex!16605)

(assert (=> bm!615777 (= call!615783 call!615784)))

(declare-fun b!6784986 () Bool)

(declare-fun call!615782 () Regex!16605)

(assert (=> b!6784986 (= e!4095634 (Union!16605 (Concat!25450 call!615782 (regTwo!33722 lt!2445192)) call!615783))))

(declare-fun c!1260723 () Bool)

(declare-fun bm!615778 () Bool)

(declare-fun call!615785 () Regex!16605)

(assert (=> bm!615778 (= call!615785 (derivativeStep!5269 (ite c!1260723 (regTwo!33723 lt!2445192) (ite c!1260720 (reg!16934 lt!2445192) (ite c!1260722 (regTwo!33722 lt!2445192) (regOne!33722 lt!2445192)))) (head!13620 s!2326)))))

(declare-fun b!6784987 () Bool)

(assert (=> b!6784987 (= e!4095636 (Union!16605 call!615782 call!615785))))

(declare-fun b!6784988 () Bool)

(assert (=> b!6784988 (= c!1260723 ((_ is Union!16605) lt!2445192))))

(declare-fun e!4095638 () Regex!16605)

(assert (=> b!6784988 (= e!4095638 e!4095636)))

(declare-fun d!2131866 () Bool)

(declare-fun lt!2445413 () Regex!16605)

(assert (=> d!2131866 (validRegex!8341 lt!2445413)))

(declare-fun e!4095637 () Regex!16605)

(assert (=> d!2131866 (= lt!2445413 e!4095637)))

(declare-fun c!1260719 () Bool)

(assert (=> d!2131866 (= c!1260719 (or ((_ is EmptyExpr!16605) lt!2445192) ((_ is EmptyLang!16605) lt!2445192)))))

(assert (=> d!2131866 (validRegex!8341 lt!2445192)))

(assert (=> d!2131866 (= (derivativeStep!5269 lt!2445192 (head!13620 s!2326)) lt!2445413)))

(declare-fun bm!615779 () Bool)

(assert (=> bm!615779 (= call!615784 call!615785)))

(declare-fun b!6784989 () Bool)

(assert (=> b!6784989 (= e!4095638 (ite (= (head!13620 s!2326) (c!1260145 lt!2445192)) EmptyExpr!16605 EmptyLang!16605))))

(declare-fun b!6784990 () Bool)

(assert (=> b!6784990 (= e!4095637 EmptyLang!16605)))

(declare-fun b!6784991 () Bool)

(assert (=> b!6784991 (= e!4095637 e!4095638)))

(declare-fun c!1260721 () Bool)

(assert (=> b!6784991 (= c!1260721 ((_ is ElementMatch!16605) lt!2445192))))

(declare-fun b!6784992 () Bool)

(assert (=> b!6784992 (= e!4095634 (Union!16605 (Concat!25450 call!615783 (regTwo!33722 lt!2445192)) EmptyLang!16605))))

(declare-fun bm!615780 () Bool)

(assert (=> bm!615780 (= call!615782 (derivativeStep!5269 (ite c!1260723 (regOne!33723 lt!2445192) (regOne!33722 lt!2445192)) (head!13620 s!2326)))))

(assert (= (and d!2131866 c!1260719) b!6784990))

(assert (= (and d!2131866 (not c!1260719)) b!6784991))

(assert (= (and b!6784991 c!1260721) b!6784989))

(assert (= (and b!6784991 (not c!1260721)) b!6784988))

(assert (= (and b!6784988 c!1260723) b!6784987))

(assert (= (and b!6784988 (not c!1260723)) b!6784983))

(assert (= (and b!6784983 c!1260720) b!6784985))

(assert (= (and b!6784983 (not c!1260720)) b!6784984))

(assert (= (and b!6784984 c!1260722) b!6784986))

(assert (= (and b!6784984 (not c!1260722)) b!6784992))

(assert (= (or b!6784986 b!6784992) bm!615777))

(assert (= (or b!6784985 bm!615777) bm!615779))

(assert (= (or b!6784987 bm!615779) bm!615778))

(assert (= (or b!6784987 b!6784986) bm!615780))

(declare-fun m!7533376 () Bool)

(assert (=> b!6784984 m!7533376))

(assert (=> bm!615778 m!7531472))

(declare-fun m!7533378 () Bool)

(assert (=> bm!615778 m!7533378))

(declare-fun m!7533380 () Bool)

(assert (=> d!2131866 m!7533380))

(assert (=> d!2131866 m!7532174))

(assert (=> bm!615780 m!7531472))

(declare-fun m!7533382 () Bool)

(assert (=> bm!615780 m!7533382))

(assert (=> b!6783761 d!2131866))

(assert (=> b!6783761 d!2131770))

(assert (=> b!6783761 d!2131772))

(declare-fun d!2131868 () Bool)

(declare-fun c!1260724 () Bool)

(assert (=> d!2131868 (= c!1260724 (isEmpty!38354 (tail!12705 s!2326)))))

(declare-fun e!4095639 () Bool)

(assert (=> d!2131868 (= (matchZipper!2591 (derivationStepZipper!2549 z!1189 (head!13620 s!2326)) (tail!12705 s!2326)) e!4095639)))

(declare-fun b!6784993 () Bool)

(assert (=> b!6784993 (= e!4095639 (nullableZipper!2312 (derivationStepZipper!2549 z!1189 (head!13620 s!2326))))))

(declare-fun b!6784994 () Bool)

(assert (=> b!6784994 (= e!4095639 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 z!1189 (head!13620 s!2326)) (head!13620 (tail!12705 s!2326))) (tail!12705 (tail!12705 s!2326))))))

(assert (= (and d!2131868 c!1260724) b!6784993))

(assert (= (and d!2131868 (not c!1260724)) b!6784994))

(assert (=> d!2131868 m!7531476))

(assert (=> d!2131868 m!7531934))

(assert (=> b!6784993 m!7531474))

(declare-fun m!7533384 () Bool)

(assert (=> b!6784993 m!7533384))

(assert (=> b!6784994 m!7531476))

(assert (=> b!6784994 m!7533130))

(assert (=> b!6784994 m!7531474))

(assert (=> b!6784994 m!7533130))

(declare-fun m!7533386 () Bool)

(assert (=> b!6784994 m!7533386))

(assert (=> b!6784994 m!7531476))

(assert (=> b!6784994 m!7533134))

(assert (=> b!6784994 m!7533386))

(assert (=> b!6784994 m!7533134))

(declare-fun m!7533388 () Bool)

(assert (=> b!6784994 m!7533388))

(assert (=> b!6782947 d!2131868))

(declare-fun bs!1807348 () Bool)

(declare-fun d!2131870 () Bool)

(assert (= bs!1807348 (and d!2131870 b!6782908)))

(declare-fun lambda!382016 () Int)

(assert (=> bs!1807348 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382016 lambda!381850))))

(declare-fun bs!1807349 () Bool)

(assert (= bs!1807349 (and d!2131870 d!2131704)))

(assert (=> bs!1807349 (= (= (head!13620 s!2326) (head!13620 lt!2445194)) (= lambda!382016 lambda!381995))))

(declare-fun bs!1807350 () Bool)

(assert (= bs!1807350 (and d!2131870 d!2131768)))

(assert (=> bs!1807350 (= lambda!382016 lambda!382001)))

(declare-fun bs!1807351 () Bool)

(assert (= bs!1807351 (and d!2131870 d!2131270)))

(assert (=> bs!1807351 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382016 lambda!381931))))

(declare-fun bs!1807352 () Bool)

(assert (= bs!1807352 (and d!2131870 d!2131208)))

(assert (=> bs!1807352 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382016 lambda!381905))))

(declare-fun bs!1807353 () Bool)

(assert (= bs!1807353 (and d!2131870 d!2131718)))

(assert (=> bs!1807353 (= (= (head!13620 s!2326) (head!13620 (t!379831 s!2326))) (= lambda!382016 lambda!381999))))

(declare-fun bs!1807354 () Bool)

(assert (= bs!1807354 (and d!2131870 d!2131162)))

(assert (=> bs!1807354 (= (= (head!13620 s!2326) (h!72438 s!2326)) (= lambda!382016 lambda!381887))))

(assert (=> d!2131870 true))

(assert (=> d!2131870 (= (derivationStepZipper!2549 z!1189 (head!13620 s!2326)) (flatMap!2086 z!1189 lambda!382016))))

(declare-fun bs!1807355 () Bool)

(assert (= bs!1807355 d!2131870))

(declare-fun m!7533390 () Bool)

(assert (=> bs!1807355 m!7533390))

(assert (=> b!6782947 d!2131870))

(assert (=> b!6782947 d!2131770))

(assert (=> b!6782947 d!2131772))

(assert (=> b!6783463 d!2131770))

(declare-fun bs!1807356 () Bool)

(declare-fun b!6785003 () Bool)

(assert (= bs!1807356 (and b!6785003 d!2131216)))

(declare-fun lambda!382017 () Int)

(assert (=> bs!1807356 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regOne!33723 lt!2445192) (Star!16605 (reg!16934 r!7292)))) (= lambda!382017 lambda!381913))))

(assert (=> bs!1807356 (not (= lambda!382017 lambda!381912))))

(declare-fun bs!1807357 () Bool)

(assert (= bs!1807357 (and b!6785003 b!6783436)))

(assert (=> bs!1807357 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regOne!33723 lt!2445192) r!7292)) (= lambda!382017 lambda!381899))))

(declare-fun bs!1807358 () Bool)

(assert (= bs!1807358 (and b!6785003 d!2131228)))

(assert (=> bs!1807358 (not (= lambda!382017 lambda!381920))))

(declare-fun bs!1807359 () Bool)

(assert (= bs!1807359 (and b!6785003 d!2131828)))

(assert (=> bs!1807359 (not (= lambda!382017 lambda!382011))))

(declare-fun bs!1807360 () Bool)

(assert (= bs!1807360 (and b!6785003 b!6784861)))

(assert (=> bs!1807360 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 (regTwo!33723 lt!2445192))) (= (regOne!33723 lt!2445192) (regTwo!33723 lt!2445192))) (= lambda!382017 lambda!382005))))

(declare-fun bs!1807361 () Bool)

(assert (= bs!1807361 (and b!6785003 b!6783428)))

(assert (=> bs!1807361 (not (= lambda!382017 lambda!381902))))

(declare-fun bs!1807362 () Bool)

(assert (= bs!1807362 (and b!6785003 b!6784608)))

(assert (=> bs!1807362 (not (= lambda!382017 lambda!381993))))

(declare-fun bs!1807363 () Bool)

(assert (= bs!1807363 (and b!6785003 b!6783758)))

(assert (=> bs!1807363 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 lt!2445192)) (= (regOne!33723 lt!2445192) lt!2445192)) (= lambda!382017 lambda!381938))))

(declare-fun bs!1807364 () Bool)

(assert (= bs!1807364 (and b!6785003 b!6782923)))

(assert (=> bs!1807364 (not (= lambda!382017 lambda!381849))))

(assert (=> bs!1807364 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regOne!33723 lt!2445192) r!7292)) (= lambda!382017 lambda!381848))))

(declare-fun bs!1807365 () Bool)

(assert (= bs!1807365 (and b!6785003 b!6784853)))

(assert (=> bs!1807365 (not (= lambda!382017 lambda!382006))))

(declare-fun bs!1807366 () Bool)

(assert (= bs!1807366 (and b!6785003 b!6784616)))

(assert (=> bs!1807366 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 (regOne!33723 r!7292))) (= (regOne!33723 lt!2445192) (regOne!33723 r!7292))) (= lambda!382017 lambda!381992))))

(declare-fun bs!1807367 () Bool)

(assert (= bs!1807367 (and b!6785003 b!6783750)))

(assert (=> bs!1807367 (not (= lambda!382017 lambda!381939))))

(assert (=> bs!1807358 (not (= lambda!382017 lambda!381921))))

(assert (=> bs!1807364 (not (= lambda!382017 lambda!381847))))

(assert (=> bs!1807359 (= (and (= (reg!16934 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regOne!33723 lt!2445192) (Star!16605 (reg!16934 r!7292)))) (= lambda!382017 lambda!382012))))

(declare-fun bs!1807368 () Bool)

(assert (= bs!1807368 (and b!6785003 d!2131260)))

(assert (=> bs!1807368 (not (= lambda!382017 lambda!381930))))

(assert (=> b!6785003 true))

(assert (=> b!6785003 true))

(declare-fun bs!1807369 () Bool)

(declare-fun b!6784995 () Bool)

(assert (= bs!1807369 (and b!6784995 d!2131216)))

(declare-fun lambda!382018 () Int)

(assert (=> bs!1807369 (not (= lambda!382018 lambda!381913))))

(declare-fun bs!1807370 () Bool)

(assert (= bs!1807370 (and b!6784995 b!6783436)))

(assert (=> bs!1807370 (not (= lambda!382018 lambda!381899))))

(declare-fun bs!1807371 () Bool)

(assert (= bs!1807371 (and b!6784995 d!2131228)))

(assert (=> bs!1807371 (not (= lambda!382018 lambda!381920))))

(declare-fun bs!1807372 () Bool)

(assert (= bs!1807372 (and b!6784995 d!2131828)))

(assert (=> bs!1807372 (not (= lambda!382018 lambda!382011))))

(declare-fun bs!1807373 () Bool)

(assert (= bs!1807373 (and b!6784995 b!6784861)))

(assert (=> bs!1807373 (not (= lambda!382018 lambda!382005))))

(declare-fun bs!1807374 () Bool)

(assert (= bs!1807374 (and b!6784995 b!6783428)))

(assert (=> bs!1807374 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (regOne!33722 r!7292)) (= (regTwo!33722 (regOne!33723 lt!2445192)) (regTwo!33722 r!7292))) (= lambda!382018 lambda!381902))))

(declare-fun bs!1807375 () Bool)

(assert (= bs!1807375 (and b!6784995 b!6784608)))

(assert (=> bs!1807375 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (regOne!33722 (regOne!33723 r!7292))) (= (regTwo!33722 (regOne!33723 lt!2445192)) (regTwo!33722 (regOne!33723 r!7292)))) (= lambda!382018 lambda!381993))))

(declare-fun bs!1807376 () Bool)

(assert (= bs!1807376 (and b!6784995 b!6783758)))

(assert (=> bs!1807376 (not (= lambda!382018 lambda!381938))))

(declare-fun bs!1807377 () Bool)

(assert (= bs!1807377 (and b!6784995 b!6782923)))

(assert (=> bs!1807377 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33722 (regOne!33723 lt!2445192)) r!7292)) (= lambda!382018 lambda!381849))))

(assert (=> bs!1807377 (not (= lambda!382018 lambda!381848))))

(declare-fun bs!1807378 () Bool)

(assert (= bs!1807378 (and b!6784995 b!6784853)))

(assert (=> bs!1807378 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (regOne!33722 (regTwo!33723 lt!2445192))) (= (regTwo!33722 (regOne!33723 lt!2445192)) (regTwo!33722 (regTwo!33723 lt!2445192)))) (= lambda!382018 lambda!382006))))

(declare-fun bs!1807379 () Bool)

(assert (= bs!1807379 (and b!6784995 b!6784616)))

(assert (=> bs!1807379 (not (= lambda!382018 lambda!381992))))

(declare-fun bs!1807380 () Bool)

(assert (= bs!1807380 (and b!6784995 b!6783750)))

(assert (=> bs!1807380 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (regOne!33722 lt!2445192)) (= (regTwo!33722 (regOne!33723 lt!2445192)) (regTwo!33722 lt!2445192))) (= lambda!382018 lambda!381939))))

(declare-fun bs!1807381 () Bool)

(assert (= bs!1807381 (and b!6784995 b!6785003)))

(assert (=> bs!1807381 (not (= lambda!382018 lambda!382017))))

(assert (=> bs!1807369 (not (= lambda!382018 lambda!381912))))

(assert (=> bs!1807371 (= (and (= (regOne!33722 (regOne!33723 lt!2445192)) (reg!16934 r!7292)) (= (regTwo!33722 (regOne!33723 lt!2445192)) r!7292)) (= lambda!382018 lambda!381921))))

(assert (=> bs!1807377 (not (= lambda!382018 lambda!381847))))

(assert (=> bs!1807372 (not (= lambda!382018 lambda!382012))))

(declare-fun bs!1807382 () Bool)

(assert (= bs!1807382 (and b!6784995 d!2131260)))

(assert (=> bs!1807382 (not (= lambda!382018 lambda!381930))))

(assert (=> b!6784995 true))

(assert (=> b!6784995 true))

(declare-fun e!4095644 () Bool)

(declare-fun call!615786 () Bool)

(assert (=> b!6784995 (= e!4095644 call!615786)))

(declare-fun bm!615781 () Bool)

(declare-fun call!615787 () Bool)

(assert (=> bm!615781 (= call!615787 (isEmpty!38354 s!2326))))

(declare-fun b!6784996 () Bool)

(declare-fun c!1260726 () Bool)

(assert (=> b!6784996 (= c!1260726 ((_ is ElementMatch!16605) (regOne!33723 lt!2445192)))))

(declare-fun e!4095641 () Bool)

(declare-fun e!4095645 () Bool)

(assert (=> b!6784996 (= e!4095641 e!4095645)))

(declare-fun b!6784997 () Bool)

(declare-fun c!1260727 () Bool)

(assert (=> b!6784997 (= c!1260727 ((_ is Union!16605) (regOne!33723 lt!2445192)))))

(declare-fun e!4095640 () Bool)

(assert (=> b!6784997 (= e!4095645 e!4095640)))

(declare-fun b!6784998 () Bool)

(declare-fun e!4095646 () Bool)

(assert (=> b!6784998 (= e!4095646 (matchRSpec!3706 (regTwo!33723 (regOne!33723 lt!2445192)) s!2326))))

(declare-fun b!6784999 () Bool)

(declare-fun e!4095643 () Bool)

(assert (=> b!6784999 (= e!4095643 e!4095641)))

(declare-fun res!2773277 () Bool)

(assert (=> b!6784999 (= res!2773277 (not ((_ is EmptyLang!16605) (regOne!33723 lt!2445192))))))

(assert (=> b!6784999 (=> (not res!2773277) (not e!4095641))))

(declare-fun c!1260728 () Bool)

(declare-fun bm!615782 () Bool)

(assert (=> bm!615782 (= call!615786 (Exists!3673 (ite c!1260728 lambda!382017 lambda!382018)))))

(declare-fun b!6785001 () Bool)

(assert (=> b!6785001 (= e!4095645 (= s!2326 (Cons!65990 (c!1260145 (regOne!33723 lt!2445192)) Nil!65990)))))

(declare-fun b!6785002 () Bool)

(assert (=> b!6785002 (= e!4095640 e!4095644)))

(assert (=> b!6785002 (= c!1260728 ((_ is Star!16605) (regOne!33723 lt!2445192)))))

(declare-fun e!4095642 () Bool)

(assert (=> b!6785003 (= e!4095642 call!615786)))

(declare-fun d!2131872 () Bool)

(declare-fun c!1260725 () Bool)

(assert (=> d!2131872 (= c!1260725 ((_ is EmptyExpr!16605) (regOne!33723 lt!2445192)))))

(assert (=> d!2131872 (= (matchRSpec!3706 (regOne!33723 lt!2445192) s!2326) e!4095643)))

(declare-fun b!6785000 () Bool)

(declare-fun res!2773278 () Bool)

(assert (=> b!6785000 (=> res!2773278 e!4095642)))

(assert (=> b!6785000 (= res!2773278 call!615787)))

(assert (=> b!6785000 (= e!4095644 e!4095642)))

(declare-fun b!6785004 () Bool)

(assert (=> b!6785004 (= e!4095640 e!4095646)))

(declare-fun res!2773276 () Bool)

(assert (=> b!6785004 (= res!2773276 (matchRSpec!3706 (regOne!33723 (regOne!33723 lt!2445192)) s!2326))))

(assert (=> b!6785004 (=> res!2773276 e!4095646)))

(declare-fun b!6785005 () Bool)

(assert (=> b!6785005 (= e!4095643 call!615787)))

(assert (= (and d!2131872 c!1260725) b!6785005))

(assert (= (and d!2131872 (not c!1260725)) b!6784999))

(assert (= (and b!6784999 res!2773277) b!6784996))

(assert (= (and b!6784996 c!1260726) b!6785001))

(assert (= (and b!6784996 (not c!1260726)) b!6784997))

(assert (= (and b!6784997 c!1260727) b!6785004))

(assert (= (and b!6784997 (not c!1260727)) b!6785002))

(assert (= (and b!6785004 (not res!2773276)) b!6784998))

(assert (= (and b!6785002 c!1260728) b!6785000))

(assert (= (and b!6785002 (not c!1260728)) b!6784995))

(assert (= (and b!6785000 (not res!2773278)) b!6785003))

(assert (= (or b!6785003 b!6784995) bm!615782))

(assert (= (or b!6785005 b!6785000) bm!615781))

(assert (=> bm!615781 m!7531404))

(declare-fun m!7533392 () Bool)

(assert (=> b!6784998 m!7533392))

(declare-fun m!7533394 () Bool)

(assert (=> bm!615782 m!7533394))

(declare-fun m!7533396 () Bool)

(assert (=> b!6785004 m!7533396))

(assert (=> b!6783759 d!2131872))

(declare-fun d!2131874 () Bool)

(declare-fun res!2773279 () Bool)

(declare-fun e!4095647 () Bool)

(assert (=> d!2131874 (=> res!2773279 e!4095647)))

(assert (=> d!2131874 (= res!2773279 ((_ is Nil!65991) lt!2445342))))

(assert (=> d!2131874 (= (forall!15797 lt!2445342 lambda!381937) e!4095647)))

(declare-fun b!6785006 () Bool)

(declare-fun e!4095648 () Bool)

(assert (=> b!6785006 (= e!4095647 e!4095648)))

(declare-fun res!2773280 () Bool)

(assert (=> b!6785006 (=> (not res!2773280) (not e!4095648))))

(assert (=> b!6785006 (= res!2773280 (dynLambda!26336 lambda!381937 (h!72439 lt!2445342)))))

(declare-fun b!6785007 () Bool)

(assert (=> b!6785007 (= e!4095648 (forall!15797 (t!379832 lt!2445342) lambda!381937))))

(assert (= (and d!2131874 (not res!2773279)) b!6785006))

(assert (= (and b!6785006 res!2773280) b!6785007))

(declare-fun b_lambda!255509 () Bool)

(assert (=> (not b_lambda!255509) (not b!6785006)))

(declare-fun m!7533398 () Bool)

(assert (=> b!6785006 m!7533398))

(declare-fun m!7533400 () Bool)

(assert (=> b!6785007 m!7533400))

(assert (=> d!2131274 d!2131874))

(assert (=> b!6783748 d!2131102))

(declare-fun bs!1807383 () Bool)

(declare-fun d!2131876 () Bool)

(assert (= bs!1807383 (and d!2131876 d!2131134)))

(declare-fun lambda!382019 () Int)

(assert (=> bs!1807383 (= lambda!382019 lambda!381884)))

(declare-fun bs!1807384 () Bool)

(assert (= bs!1807384 (and d!2131876 b!6782898)))

(assert (=> bs!1807384 (= lambda!382019 lambda!381851)))

(declare-fun bs!1807385 () Bool)

(assert (= bs!1807385 (and d!2131876 d!2131696)))

(assert (=> bs!1807385 (= lambda!382019 lambda!381994)))

(declare-fun bs!1807386 () Bool)

(assert (= bs!1807386 (and d!2131876 d!2131102)))

(assert (=> bs!1807386 (= lambda!382019 lambda!381869)))

(declare-fun bs!1807387 () Bool)

(assert (= bs!1807387 (and d!2131876 d!2131664)))

(assert (=> bs!1807387 (= lambda!382019 lambda!381991)))

(declare-fun bs!1807388 () Bool)

(assert (= bs!1807388 (and d!2131876 d!2131058)))

(assert (=> bs!1807388 (= lambda!382019 lambda!381857)))

(declare-fun bs!1807389 () Bool)

(assert (= bs!1807389 (and d!2131876 d!2131272)))

(assert (=> bs!1807389 (= lambda!382019 lambda!381934)))

(declare-fun bs!1807390 () Bool)

(assert (= bs!1807390 (and d!2131876 d!2131834)))

(assert (=> bs!1807390 (= lambda!382019 lambda!382013)))

(declare-fun bs!1807391 () Bool)

(assert (= bs!1807391 (and d!2131876 d!2131274)))

(assert (=> bs!1807391 (= lambda!382019 lambda!381937)))

(declare-fun bs!1807392 () Bool)

(assert (= bs!1807392 (and d!2131876 d!2131810)))

(assert (=> bs!1807392 (= lambda!382019 lambda!382004)))

(declare-fun bs!1807393 () Bool)

(assert (= bs!1807393 (and d!2131876 d!2131836)))

(assert (=> bs!1807393 (= lambda!382019 lambda!382014)))

(declare-fun bs!1807394 () Bool)

(assert (= bs!1807394 (and d!2131876 d!2131166)))

(assert (=> bs!1807394 (= lambda!382019 lambda!381888)))

(declare-fun lt!2445414 () List!66115)

(assert (=> d!2131876 (forall!15797 lt!2445414 lambda!382019)))

(declare-fun e!4095649 () List!66115)

(assert (=> d!2131876 (= lt!2445414 e!4095649)))

(declare-fun c!1260729 () Bool)

(assert (=> d!2131876 (= c!1260729 ((_ is Cons!65992) (t!379833 zl!343)))))

(assert (=> d!2131876 (= (unfocusZipperList!2026 (t!379833 zl!343)) lt!2445414)))

(declare-fun b!6785008 () Bool)

(assert (=> b!6785008 (= e!4095649 (Cons!65991 (generalisedConcat!2202 (exprs!6489 (h!72440 (t!379833 zl!343)))) (unfocusZipperList!2026 (t!379833 (t!379833 zl!343)))))))

(declare-fun b!6785009 () Bool)

(assert (=> b!6785009 (= e!4095649 Nil!65991)))

(assert (= (and d!2131876 c!1260729) b!6785008))

(assert (= (and d!2131876 (not c!1260729)) b!6785009))

(declare-fun m!7533402 () Bool)

(assert (=> d!2131876 m!7533402))

(declare-fun m!7533404 () Bool)

(assert (=> b!6785008 m!7533404))

(declare-fun m!7533406 () Bool)

(assert (=> b!6785008 m!7533406))

(assert (=> b!6783748 d!2131876))

(declare-fun d!2131878 () Bool)

(declare-fun lt!2445417 () Int)

(assert (=> d!2131878 (>= lt!2445417 0)))

(declare-fun e!4095652 () Int)

(assert (=> d!2131878 (= lt!2445417 e!4095652)))

(declare-fun c!1260732 () Bool)

(assert (=> d!2131878 (= c!1260732 ((_ is Nil!65990) lt!2445277))))

(assert (=> d!2131878 (= (size!40640 lt!2445277) lt!2445417)))

(declare-fun b!6785014 () Bool)

(assert (=> b!6785014 (= e!4095652 0)))

(declare-fun b!6785015 () Bool)

(assert (=> b!6785015 (= e!4095652 (+ 1 (size!40640 (t!379831 lt!2445277))))))

(assert (= (and d!2131878 c!1260732) b!6785014))

(assert (= (and d!2131878 (not c!1260732)) b!6785015))

(declare-fun m!7533408 () Bool)

(assert (=> b!6785015 m!7533408))

(assert (=> b!6783332 d!2131878))

(declare-fun d!2131880 () Bool)

(declare-fun lt!2445418 () Int)

(assert (=> d!2131880 (>= lt!2445418 0)))

(declare-fun e!4095653 () Int)

(assert (=> d!2131880 (= lt!2445418 e!4095653)))

(declare-fun c!1260733 () Bool)

(assert (=> d!2131880 (= c!1260733 ((_ is Nil!65990) (_1!36883 lt!2445168)))))

(assert (=> d!2131880 (= (size!40640 (_1!36883 lt!2445168)) lt!2445418)))

(declare-fun b!6785016 () Bool)

(assert (=> b!6785016 (= e!4095653 0)))

(declare-fun b!6785017 () Bool)

(assert (=> b!6785017 (= e!4095653 (+ 1 (size!40640 (t!379831 (_1!36883 lt!2445168)))))))

(assert (= (and d!2131880 c!1260733) b!6785016))

(assert (= (and d!2131880 (not c!1260733)) b!6785017))

(declare-fun m!7533410 () Bool)

(assert (=> b!6785017 m!7533410))

(assert (=> b!6783332 d!2131880))

(declare-fun d!2131882 () Bool)

(declare-fun lt!2445419 () Int)

(assert (=> d!2131882 (>= lt!2445419 0)))

(declare-fun e!4095654 () Int)

(assert (=> d!2131882 (= lt!2445419 e!4095654)))

(declare-fun c!1260734 () Bool)

(assert (=> d!2131882 (= c!1260734 ((_ is Nil!65990) (_2!36883 lt!2445168)))))

(assert (=> d!2131882 (= (size!40640 (_2!36883 lt!2445168)) lt!2445419)))

(declare-fun b!6785018 () Bool)

(assert (=> b!6785018 (= e!4095654 0)))

(declare-fun b!6785019 () Bool)

(assert (=> b!6785019 (= e!4095654 (+ 1 (size!40640 (t!379831 (_2!36883 lt!2445168)))))))

(assert (= (and d!2131882 c!1260734) b!6785018))

(assert (= (and d!2131882 (not c!1260734)) b!6785019))

(declare-fun m!7533412 () Bool)

(assert (=> b!6785019 m!7533412))

(assert (=> b!6783332 d!2131882))

(declare-fun d!2131884 () Bool)

(assert (=> d!2131884 (= (flatMap!2086 lt!2445172 lambda!381905) (choose!50517 lt!2445172 lambda!381905))))

(declare-fun bs!1807395 () Bool)

(assert (= bs!1807395 d!2131884))

(declare-fun m!7533414 () Bool)

(assert (=> bs!1807395 m!7533414))

(assert (=> d!2131208 d!2131884))

(declare-fun d!2131886 () Bool)

(declare-fun c!1260737 () Bool)

(assert (=> d!2131886 (= c!1260737 ((_ is Nil!65990) lt!2445277))))

(declare-fun e!4095657 () (InoxSet C!33480))

(assert (=> d!2131886 (= (content!12857 lt!2445277) e!4095657)))

(declare-fun b!6785024 () Bool)

(assert (=> b!6785024 (= e!4095657 ((as const (Array C!33480 Bool)) false))))

(declare-fun b!6785025 () Bool)

(assert (=> b!6785025 (= e!4095657 ((_ map or) (store ((as const (Array C!33480 Bool)) false) (h!72438 lt!2445277) true) (content!12857 (t!379831 lt!2445277))))))

(assert (= (and d!2131886 c!1260737) b!6785024))

(assert (= (and d!2131886 (not c!1260737)) b!6785025))

(declare-fun m!7533416 () Bool)

(assert (=> b!6785025 m!7533416))

(declare-fun m!7533418 () Bool)

(assert (=> b!6785025 m!7533418))

(assert (=> d!2131148 d!2131886))

(declare-fun d!2131888 () Bool)

(declare-fun c!1260738 () Bool)

(assert (=> d!2131888 (= c!1260738 ((_ is Nil!65990) (_1!36883 lt!2445168)))))

(declare-fun e!4095658 () (InoxSet C!33480))

(assert (=> d!2131888 (= (content!12857 (_1!36883 lt!2445168)) e!4095658)))

(declare-fun b!6785026 () Bool)

(assert (=> b!6785026 (= e!4095658 ((as const (Array C!33480 Bool)) false))))

(declare-fun b!6785027 () Bool)

(assert (=> b!6785027 (= e!4095658 ((_ map or) (store ((as const (Array C!33480 Bool)) false) (h!72438 (_1!36883 lt!2445168)) true) (content!12857 (t!379831 (_1!36883 lt!2445168)))))))

(assert (= (and d!2131888 c!1260738) b!6785026))

(assert (= (and d!2131888 (not c!1260738)) b!6785027))

(declare-fun m!7533420 () Bool)

(assert (=> b!6785027 m!7533420))

(declare-fun m!7533422 () Bool)

(assert (=> b!6785027 m!7533422))

(assert (=> d!2131148 d!2131888))

(declare-fun d!2131890 () Bool)

(declare-fun c!1260739 () Bool)

(assert (=> d!2131890 (= c!1260739 ((_ is Nil!65990) (_2!36883 lt!2445168)))))

(declare-fun e!4095659 () (InoxSet C!33480))

(assert (=> d!2131890 (= (content!12857 (_2!36883 lt!2445168)) e!4095659)))

(declare-fun b!6785028 () Bool)

(assert (=> b!6785028 (= e!4095659 ((as const (Array C!33480 Bool)) false))))

(declare-fun b!6785029 () Bool)

(assert (=> b!6785029 (= e!4095659 ((_ map or) (store ((as const (Array C!33480 Bool)) false) (h!72438 (_2!36883 lt!2445168)) true) (content!12857 (t!379831 (_2!36883 lt!2445168)))))))

(assert (= (and d!2131890 c!1260739) b!6785028))

(assert (= (and d!2131890 (not c!1260739)) b!6785029))

(declare-fun m!7533424 () Bool)

(assert (=> b!6785029 m!7533424))

(declare-fun m!7533426 () Bool)

(assert (=> b!6785029 m!7533426))

(assert (=> d!2131148 d!2131890))

(declare-fun b!6785030 () Bool)

(declare-fun e!4095661 () (InoxSet Context!11978))

(declare-fun call!615788 () (InoxSet Context!11978))

(assert (=> b!6785030 (= e!4095661 call!615788)))

(declare-fun b!6785031 () Bool)

(declare-fun e!4095664 () (InoxSet Context!11978))

(assert (=> b!6785031 (= e!4095664 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (t!379832 (exprs!6489 lt!2445187))) true))))

(declare-fun bm!615783 () Bool)

(declare-fun call!615790 () (InoxSet Context!11978))

(assert (=> bm!615783 (= call!615788 call!615790)))

(declare-fun b!6785032 () Bool)

(declare-fun e!4095663 () (InoxSet Context!11978))

(assert (=> b!6785032 (= e!4095663 e!4095661)))

(declare-fun c!1260741 () Bool)

(assert (=> b!6785032 (= c!1260741 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun b!6785033 () Bool)

(declare-fun c!1260744 () Bool)

(assert (=> b!6785033 (= c!1260744 ((_ is Star!16605) (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun e!4095662 () (InoxSet Context!11978))

(assert (=> b!6785033 (= e!4095661 e!4095662)))

(declare-fun bm!615784 () Bool)

(declare-fun call!615789 () List!66115)

(declare-fun call!615793 () List!66115)

(assert (=> bm!615784 (= call!615789 call!615793)))

(declare-fun bm!615785 () Bool)

(declare-fun call!615792 () (InoxSet Context!11978))

(assert (=> bm!615785 (= call!615790 call!615792)))

(declare-fun b!6785034 () Bool)

(declare-fun call!615791 () (InoxSet Context!11978))

(assert (=> b!6785034 (= e!4095663 ((_ map or) call!615791 call!615790))))

(declare-fun b!6785035 () Bool)

(declare-fun e!4095660 () Bool)

(assert (=> b!6785035 (= e!4095660 (nullable!6584 (regOne!33722 (h!72439 (exprs!6489 lt!2445187)))))))

(declare-fun c!1260742 () Bool)

(declare-fun bm!615786 () Bool)

(assert (=> bm!615786 (= call!615793 ($colon$colon!2414 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445187)))) (ite (or c!1260742 c!1260741) (regTwo!33722 (h!72439 (exprs!6489 lt!2445187))) (h!72439 (exprs!6489 lt!2445187)))))))

(declare-fun b!6785036 () Bool)

(assert (=> b!6785036 (= c!1260742 e!4095660)))

(declare-fun res!2773281 () Bool)

(assert (=> b!6785036 (=> (not res!2773281) (not e!4095660))))

(assert (=> b!6785036 (= res!2773281 ((_ is Concat!25450) (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun e!4095665 () (InoxSet Context!11978))

(assert (=> b!6785036 (= e!4095665 e!4095663)))

(declare-fun c!1260743 () Bool)

(declare-fun bm!615787 () Bool)

(assert (=> bm!615787 (= call!615792 (derivationStepZipperDown!1833 (ite c!1260743 (regTwo!33723 (h!72439 (exprs!6489 lt!2445187))) (ite c!1260742 (regTwo!33722 (h!72439 (exprs!6489 lt!2445187))) (ite c!1260741 (regOne!33722 (h!72439 (exprs!6489 lt!2445187))) (reg!16934 (h!72439 (exprs!6489 lt!2445187)))))) (ite (or c!1260743 c!1260742) (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (Context!11979 call!615789)) (h!72438 s!2326)))))

(declare-fun bm!615788 () Bool)

(assert (=> bm!615788 (= call!615791 (derivationStepZipperDown!1833 (ite c!1260743 (regOne!33723 (h!72439 (exprs!6489 lt!2445187))) (regOne!33722 (h!72439 (exprs!6489 lt!2445187)))) (ite c!1260743 (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (Context!11979 call!615793)) (h!72438 s!2326)))))

(declare-fun b!6785037 () Bool)

(assert (=> b!6785037 (= e!4095664 e!4095665)))

(assert (=> b!6785037 (= c!1260743 ((_ is Union!16605) (h!72439 (exprs!6489 lt!2445187))))))

(declare-fun d!2131892 () Bool)

(declare-fun c!1260740 () Bool)

(assert (=> d!2131892 (= c!1260740 (and ((_ is ElementMatch!16605) (h!72439 (exprs!6489 lt!2445187))) (= (c!1260145 (h!72439 (exprs!6489 lt!2445187))) (h!72438 s!2326))))))

(assert (=> d!2131892 (= (derivationStepZipperDown!1833 (h!72439 (exprs!6489 lt!2445187)) (Context!11979 (t!379832 (exprs!6489 lt!2445187))) (h!72438 s!2326)) e!4095664)))

(declare-fun b!6785038 () Bool)

(assert (=> b!6785038 (= e!4095665 ((_ map or) call!615791 call!615792))))

(declare-fun b!6785039 () Bool)

(assert (=> b!6785039 (= e!4095662 call!615788)))

(declare-fun b!6785040 () Bool)

(assert (=> b!6785040 (= e!4095662 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131892 c!1260740) b!6785031))

(assert (= (and d!2131892 (not c!1260740)) b!6785037))

(assert (= (and b!6785037 c!1260743) b!6785038))

(assert (= (and b!6785037 (not c!1260743)) b!6785036))

(assert (= (and b!6785036 res!2773281) b!6785035))

(assert (= (and b!6785036 c!1260742) b!6785034))

(assert (= (and b!6785036 (not c!1260742)) b!6785032))

(assert (= (and b!6785032 c!1260741) b!6785030))

(assert (= (and b!6785032 (not c!1260741)) b!6785033))

(assert (= (and b!6785033 c!1260744) b!6785039))

(assert (= (and b!6785033 (not c!1260744)) b!6785040))

(assert (= (or b!6785030 b!6785039) bm!615784))

(assert (= (or b!6785030 b!6785039) bm!615783))

(assert (= (or b!6785034 bm!615784) bm!615786))

(assert (= (or b!6785034 bm!615783) bm!615785))

(assert (= (or b!6785038 bm!615785) bm!615787))

(assert (= (or b!6785038 b!6785034) bm!615788))

(declare-fun m!7533428 () Bool)

(assert (=> b!6785031 m!7533428))

(declare-fun m!7533430 () Bool)

(assert (=> b!6785035 m!7533430))

(declare-fun m!7533432 () Bool)

(assert (=> bm!615787 m!7533432))

(declare-fun m!7533434 () Bool)

(assert (=> bm!615786 m!7533434))

(declare-fun m!7533436 () Bool)

(assert (=> bm!615788 m!7533436))

(assert (=> bm!615545 d!2131892))

(assert (=> bm!615538 d!2131222))

(declare-fun d!2131894 () Bool)

(assert (=> d!2131894 (= (isUnion!1400 lt!2445339) ((_ is Union!16605) lt!2445339))))

(assert (=> b!6783734 d!2131894))

(declare-fun d!2131896 () Bool)

(assert (=> d!2131896 (= (nullable!6584 (h!72439 (exprs!6489 (h!72440 zl!343)))) (nullableFct!2490 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun bs!1807396 () Bool)

(assert (= bs!1807396 d!2131896))

(declare-fun m!7533438 () Bool)

(assert (=> bs!1807396 m!7533438))

(assert (=> b!6783345 d!2131896))

(assert (=> bs!1806797 d!2131206))

(assert (=> d!2131042 d!2131222))

(assert (=> b!6783467 d!2131782))

(assert (=> b!6783467 d!2131772))

(assert (=> b!6783704 d!2131846))

(declare-fun d!2131898 () Bool)

(declare-fun res!2773282 () Bool)

(declare-fun e!4095666 () Bool)

(assert (=> d!2131898 (=> res!2773282 e!4095666)))

(assert (=> d!2131898 (= res!2773282 ((_ is Nil!65991) (++!14760 lt!2445175 lt!2445201)))))

(assert (=> d!2131898 (= (forall!15797 (++!14760 lt!2445175 lt!2445201) lambda!381851) e!4095666)))

(declare-fun b!6785041 () Bool)

(declare-fun e!4095667 () Bool)

(assert (=> b!6785041 (= e!4095666 e!4095667)))

(declare-fun res!2773283 () Bool)

(assert (=> b!6785041 (=> (not res!2773283) (not e!4095667))))

(assert (=> b!6785041 (= res!2773283 (dynLambda!26336 lambda!381851 (h!72439 (++!14760 lt!2445175 lt!2445201))))))

(declare-fun b!6785042 () Bool)

(assert (=> b!6785042 (= e!4095667 (forall!15797 (t!379832 (++!14760 lt!2445175 lt!2445201)) lambda!381851))))

(assert (= (and d!2131898 (not res!2773282)) b!6785041))

(assert (= (and b!6785041 res!2773283) b!6785042))

(declare-fun b_lambda!255511 () Bool)

(assert (=> (not b_lambda!255511) (not b!6785041)))

(declare-fun m!7533440 () Bool)

(assert (=> b!6785041 m!7533440))

(declare-fun m!7533442 () Bool)

(assert (=> b!6785042 m!7533442))

(assert (=> d!2131040 d!2131898))

(assert (=> d!2131040 d!2131046))

(declare-fun d!2131900 () Bool)

(assert (=> d!2131900 (forall!15797 (++!14760 lt!2445175 lt!2445201) lambda!381851)))

(assert (=> d!2131900 true))

(declare-fun _$78!390 () Unit!159901)

(assert (=> d!2131900 (= (choose!50514 lt!2445175 lt!2445201 lambda!381851) _$78!390)))

(declare-fun bs!1807397 () Bool)

(assert (= bs!1807397 d!2131900))

(assert (=> bs!1807397 m!7531424))

(assert (=> bs!1807397 m!7531424))

(assert (=> bs!1807397 m!7531464))

(assert (=> d!2131040 d!2131900))

(declare-fun d!2131902 () Bool)

(declare-fun res!2773284 () Bool)

(declare-fun e!4095668 () Bool)

(assert (=> d!2131902 (=> res!2773284 e!4095668)))

(assert (=> d!2131902 (= res!2773284 ((_ is Nil!65991) lt!2445175))))

(assert (=> d!2131902 (= (forall!15797 lt!2445175 lambda!381851) e!4095668)))

(declare-fun b!6785043 () Bool)

(declare-fun e!4095669 () Bool)

(assert (=> b!6785043 (= e!4095668 e!4095669)))

(declare-fun res!2773285 () Bool)

(assert (=> b!6785043 (=> (not res!2773285) (not e!4095669))))

(assert (=> b!6785043 (= res!2773285 (dynLambda!26336 lambda!381851 (h!72439 lt!2445175)))))

(declare-fun b!6785044 () Bool)

(assert (=> b!6785044 (= e!4095669 (forall!15797 (t!379832 lt!2445175) lambda!381851))))

(assert (= (and d!2131902 (not res!2773284)) b!6785043))

(assert (= (and b!6785043 res!2773285) b!6785044))

(declare-fun b_lambda!255513 () Bool)

(assert (=> (not b_lambda!255513) (not b!6785043)))

(declare-fun m!7533444 () Bool)

(assert (=> b!6785043 m!7533444))

(declare-fun m!7533446 () Bool)

(assert (=> b!6785044 m!7533446))

(assert (=> d!2131040 d!2131902))

(declare-fun d!2131904 () Bool)

(assert (=> d!2131904 true))

(assert (=> d!2131904 true))

(declare-fun res!2773286 () Bool)

(assert (=> d!2131904 (= (choose!50521 lambda!381847) res!2773286)))

(assert (=> d!2131130 d!2131904))

(declare-fun d!2131906 () Bool)

(assert (=> d!2131906 (= (nullable!6584 lt!2445192) (nullableFct!2490 lt!2445192))))

(declare-fun bs!1807398 () Bool)

(assert (= bs!1807398 d!2131906))

(declare-fun m!7533448 () Bool)

(assert (=> bs!1807398 m!7533448))

(assert (=> b!6783762 d!2131906))

(assert (=> d!2131124 d!2131802))

(assert (=> d!2131124 d!2131282))

(declare-fun d!2131908 () Bool)

(assert (=> d!2131908 (= (nullable!6584 r!7292) (nullableFct!2490 r!7292))))

(declare-fun bs!1807399 () Bool)

(assert (= bs!1807399 d!2131908))

(declare-fun m!7533450 () Bool)

(assert (=> bs!1807399 m!7533450))

(assert (=> b!6783455 d!2131908))

(declare-fun d!2131910 () Bool)

(assert (=> d!2131910 (= (isDefined!13195 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326)) (not (isEmpty!38357 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326))))))

(declare-fun bs!1807400 () Bool)

(assert (= bs!1807400 d!2131910))

(assert (=> bs!1807400 m!7531410))

(declare-fun m!7533452 () Bool)

(assert (=> bs!1807400 m!7533452))

(assert (=> d!2131260 d!2131910))

(declare-fun d!2131912 () Bool)

(assert (=> d!2131912 (= (Exists!3673 lambda!381930) (choose!50521 lambda!381930))))

(declare-fun bs!1807401 () Bool)

(assert (= bs!1807401 d!2131912))

(declare-fun m!7533454 () Bool)

(assert (=> bs!1807401 m!7533454))

(assert (=> d!2131260 d!2131912))

(declare-fun bs!1807402 () Bool)

(declare-fun d!2131914 () Bool)

(assert (= bs!1807402 (and d!2131914 d!2131216)))

(declare-fun lambda!382022 () Int)

(assert (=> bs!1807402 (not (= lambda!382022 lambda!381913))))

(declare-fun bs!1807403 () Bool)

(assert (= bs!1807403 (and d!2131914 b!6783436)))

(assert (=> bs!1807403 (not (= lambda!382022 lambda!381899))))

(declare-fun bs!1807404 () Bool)

(assert (= bs!1807404 (and d!2131914 d!2131228)))

(assert (=> bs!1807404 (= lambda!382022 lambda!381920)))

(declare-fun bs!1807405 () Bool)

(assert (= bs!1807405 (and d!2131914 d!2131828)))

(assert (=> bs!1807405 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!382022 lambda!382011))))

(declare-fun bs!1807406 () Bool)

(assert (= bs!1807406 (and d!2131914 b!6784861)))

(assert (=> bs!1807406 (not (= lambda!382022 lambda!382005))))

(declare-fun bs!1807407 () Bool)

(assert (= bs!1807407 (and d!2131914 b!6783428)))

(assert (=> bs!1807407 (not (= lambda!382022 lambda!381902))))

(declare-fun bs!1807408 () Bool)

(assert (= bs!1807408 (and d!2131914 b!6784995)))

(assert (=> bs!1807408 (not (= lambda!382022 lambda!382018))))

(declare-fun bs!1807409 () Bool)

(assert (= bs!1807409 (and d!2131914 b!6784608)))

(assert (=> bs!1807409 (not (= lambda!382022 lambda!381993))))

(declare-fun bs!1807410 () Bool)

(assert (= bs!1807410 (and d!2131914 b!6783758)))

(assert (=> bs!1807410 (not (= lambda!382022 lambda!381938))))

(declare-fun bs!1807411 () Bool)

(assert (= bs!1807411 (and d!2131914 b!6782923)))

(assert (=> bs!1807411 (not (= lambda!382022 lambda!381849))))

(assert (=> bs!1807411 (not (= lambda!382022 lambda!381848))))

(declare-fun bs!1807412 () Bool)

(assert (= bs!1807412 (and d!2131914 b!6784853)))

(assert (=> bs!1807412 (not (= lambda!382022 lambda!382006))))

(declare-fun bs!1807413 () Bool)

(assert (= bs!1807413 (and d!2131914 b!6784616)))

(assert (=> bs!1807413 (not (= lambda!382022 lambda!381992))))

(declare-fun bs!1807414 () Bool)

(assert (= bs!1807414 (and d!2131914 b!6783750)))

(assert (=> bs!1807414 (not (= lambda!382022 lambda!381939))))

(declare-fun bs!1807415 () Bool)

(assert (= bs!1807415 (and d!2131914 b!6785003)))

(assert (=> bs!1807415 (not (= lambda!382022 lambda!382017))))

(assert (=> bs!1807402 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!382022 lambda!381912))))

(assert (=> bs!1807404 (not (= lambda!382022 lambda!381921))))

(assert (=> bs!1807411 (= lambda!382022 lambda!381847)))

(assert (=> bs!1807405 (not (= lambda!382022 lambda!382012))))

(declare-fun bs!1807416 () Bool)

(assert (= bs!1807416 (and d!2131914 d!2131260)))

(assert (=> bs!1807416 (= lambda!382022 lambda!381930)))

(assert (=> d!2131914 true))

(assert (=> d!2131914 true))

(assert (=> d!2131914 true))

(assert (=> d!2131914 (= (isDefined!13195 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 Nil!65990 s!2326 s!2326)) (Exists!3673 lambda!382022))))

(assert (=> d!2131914 true))

(declare-fun _$89!3040 () Unit!159901)

(assert (=> d!2131914 (= (choose!50531 (reg!16934 r!7292) r!7292 s!2326) _$89!3040)))

(declare-fun bs!1807417 () Bool)

(assert (= bs!1807417 d!2131914))

(assert (=> bs!1807417 m!7531410))

(assert (=> bs!1807417 m!7531410))

(assert (=> bs!1807417 m!7532112))

(declare-fun m!7533456 () Bool)

(assert (=> bs!1807417 m!7533456))

(assert (=> d!2131260 d!2131914))

(assert (=> d!2131260 d!2131248))

(assert (=> d!2131260 d!2131798))

(declare-fun b!6785049 () Bool)

(declare-fun e!4095673 () (InoxSet Context!11978))

(declare-fun call!615794 () (InoxSet Context!11978))

(assert (=> b!6785049 (= e!4095673 call!615794)))

(declare-fun b!6785050 () Bool)

(declare-fun e!4095676 () (InoxSet Context!11978))

(assert (=> b!6785050 (= e!4095676 (store ((as const (Array Context!11978 Bool)) false) (ite c!1260200 lt!2445187 (Context!11979 call!615504)) true))))

(declare-fun bm!615789 () Bool)

(declare-fun call!615796 () (InoxSet Context!11978))

(assert (=> bm!615789 (= call!615794 call!615796)))

(declare-fun b!6785051 () Bool)

(declare-fun e!4095675 () (InoxSet Context!11978))

(assert (=> b!6785051 (= e!4095675 e!4095673)))

(declare-fun c!1260746 () Bool)

(assert (=> b!6785051 (= c!1260746 ((_ is Concat!25450) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))))))

(declare-fun b!6785052 () Bool)

(declare-fun c!1260749 () Bool)

(assert (=> b!6785052 (= c!1260749 ((_ is Star!16605) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))))))

(declare-fun e!4095674 () (InoxSet Context!11978))

(assert (=> b!6785052 (= e!4095673 e!4095674)))

(declare-fun bm!615790 () Bool)

(declare-fun call!615795 () List!66115)

(declare-fun call!615799 () List!66115)

(assert (=> bm!615790 (= call!615795 call!615799)))

(declare-fun bm!615791 () Bool)

(declare-fun call!615798 () (InoxSet Context!11978))

(assert (=> bm!615791 (= call!615796 call!615798)))

(declare-fun b!6785053 () Bool)

(declare-fun call!615797 () (InoxSet Context!11978))

(assert (=> b!6785053 (= e!4095675 ((_ map or) call!615797 call!615796))))

(declare-fun b!6785054 () Bool)

(declare-fun e!4095672 () Bool)

(assert (=> b!6785054 (= e!4095672 (nullable!6584 (regOne!33722 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))))))

(declare-fun c!1260747 () Bool)

(declare-fun bm!615792 () Bool)

(assert (=> bm!615792 (= call!615799 ($colon$colon!2414 (exprs!6489 (ite c!1260200 lt!2445187 (Context!11979 call!615504))) (ite (or c!1260747 c!1260746) (regTwo!33722 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))))))

(declare-fun b!6785055 () Bool)

(assert (=> b!6785055 (= c!1260747 e!4095672)))

(declare-fun res!2773291 () Bool)

(assert (=> b!6785055 (=> (not res!2773291) (not e!4095672))))

(assert (=> b!6785055 (= res!2773291 ((_ is Concat!25450) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))))))

(declare-fun e!4095677 () (InoxSet Context!11978))

(assert (=> b!6785055 (= e!4095677 e!4095675)))

(declare-fun c!1260748 () Bool)

(declare-fun bm!615793 () Bool)

(assert (=> bm!615793 (= call!615798 (derivationStepZipperDown!1833 (ite c!1260748 (regTwo!33723 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (ite c!1260747 (regTwo!33722 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (ite c!1260746 (regOne!33722 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (reg!16934 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))))) (ite (or c!1260748 c!1260747) (ite c!1260200 lt!2445187 (Context!11979 call!615504)) (Context!11979 call!615795)) (h!72438 s!2326)))))

(declare-fun bm!615794 () Bool)

(assert (=> bm!615794 (= call!615797 (derivationStepZipperDown!1833 (ite c!1260748 (regOne!33723 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (regOne!33722 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))))) (ite c!1260748 (ite c!1260200 lt!2445187 (Context!11979 call!615504)) (Context!11979 call!615799)) (h!72438 s!2326)))))

(declare-fun b!6785056 () Bool)

(assert (=> b!6785056 (= e!4095676 e!4095677)))

(assert (=> b!6785056 (= c!1260748 ((_ is Union!16605) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))))))

(declare-fun d!2131916 () Bool)

(declare-fun c!1260745 () Bool)

(assert (=> d!2131916 (= c!1260745 (and ((_ is ElementMatch!16605) (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (= (c!1260145 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292)))) (h!72438 s!2326))))))

(assert (=> d!2131916 (= (derivationStepZipperDown!1833 (ite c!1260200 (regOne!33723 (reg!16934 r!7292)) (regOne!33722 (reg!16934 r!7292))) (ite c!1260200 lt!2445187 (Context!11979 call!615504)) (h!72438 s!2326)) e!4095676)))

(declare-fun b!6785057 () Bool)

(assert (=> b!6785057 (= e!4095677 ((_ map or) call!615797 call!615798))))

(declare-fun b!6785058 () Bool)

(assert (=> b!6785058 (= e!4095674 call!615794)))

(declare-fun b!6785059 () Bool)

(assert (=> b!6785059 (= e!4095674 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131916 c!1260745) b!6785050))

(assert (= (and d!2131916 (not c!1260745)) b!6785056))

(assert (= (and b!6785056 c!1260748) b!6785057))

(assert (= (and b!6785056 (not c!1260748)) b!6785055))

(assert (= (and b!6785055 res!2773291) b!6785054))

(assert (= (and b!6785055 c!1260747) b!6785053))

(assert (= (and b!6785055 (not c!1260747)) b!6785051))

(assert (= (and b!6785051 c!1260746) b!6785049))

(assert (= (and b!6785051 (not c!1260746)) b!6785052))

(assert (= (and b!6785052 c!1260749) b!6785058))

(assert (= (and b!6785052 (not c!1260749)) b!6785059))

(assert (= (or b!6785049 b!6785058) bm!615790))

(assert (= (or b!6785049 b!6785058) bm!615789))

(assert (= (or b!6785053 bm!615790) bm!615792))

(assert (= (or b!6785053 bm!615789) bm!615791))

(assert (= (or b!6785057 bm!615791) bm!615793))

(assert (= (or b!6785057 b!6785053) bm!615794))

(declare-fun m!7533458 () Bool)

(assert (=> b!6785050 m!7533458))

(declare-fun m!7533460 () Bool)

(assert (=> b!6785054 m!7533460))

(declare-fun m!7533462 () Bool)

(assert (=> bm!615793 m!7533462))

(declare-fun m!7533464 () Bool)

(assert (=> bm!615792 m!7533464))

(declare-fun m!7533466 () Bool)

(assert (=> bm!615794 m!7533466))

(assert (=> bm!615499 d!2131916))

(assert (=> b!6783770 d!2131770))

(assert (=> d!2131054 d!2131124))

(assert (=> d!2131054 d!2131044))

(declare-fun d!2131918 () Bool)

(assert (=> d!2131918 (= (matchR!8788 r!7292 (_2!36883 lt!2445168)) (matchZipper!2591 lt!2445172 (_2!36883 lt!2445168)))))

(assert (=> d!2131918 true))

(declare-fun _$44!1783 () Unit!159901)

(assert (=> d!2131918 (= (choose!50513 lt!2445172 lt!2445171 r!7292 (_2!36883 lt!2445168)) _$44!1783)))

(declare-fun bs!1807418 () Bool)

(assert (= bs!1807418 d!2131918))

(assert (=> bs!1807418 m!7531370))

(assert (=> bs!1807418 m!7531430))

(assert (=> d!2131054 d!2131918))

(assert (=> d!2131054 d!2131282))

(declare-fun d!2131920 () Bool)

(declare-fun res!2773296 () Bool)

(declare-fun e!4095683 () Bool)

(assert (=> d!2131920 (=> res!2773296 e!4095683)))

(assert (=> d!2131920 (= res!2773296 ((_ is ElementMatch!16605) (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(assert (=> d!2131920 (= (validRegex!8341 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))) e!4095683)))

(declare-fun b!6785060 () Bool)

(declare-fun e!4095684 () Bool)

(assert (=> b!6785060 (= e!4095683 e!4095684)))

(declare-fun c!1260750 () Bool)

(assert (=> b!6785060 (= c!1260750 ((_ is Star!16605) (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(declare-fun call!615800 () Bool)

(declare-fun bm!615795 () Bool)

(declare-fun c!1260751 () Bool)

(assert (=> bm!615795 (= call!615800 (validRegex!8341 (ite c!1260751 (regTwo!33723 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))) (regTwo!33722 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))))

(declare-fun b!6785061 () Bool)

(declare-fun e!4095679 () Bool)

(declare-fun call!615802 () Bool)

(assert (=> b!6785061 (= e!4095679 call!615802)))

(declare-fun bm!615796 () Bool)

(assert (=> bm!615796 (= call!615802 (validRegex!8341 (ite c!1260750 (reg!16934 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))) (ite c!1260751 (regOne!33723 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))) (regOne!33722 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292))))))))))

(declare-fun b!6785062 () Bool)

(declare-fun e!4095681 () Bool)

(declare-fun e!4095682 () Bool)

(assert (=> b!6785062 (= e!4095681 e!4095682)))

(declare-fun res!2773293 () Bool)

(assert (=> b!6785062 (=> (not res!2773293) (not e!4095682))))

(declare-fun call!615801 () Bool)

(assert (=> b!6785062 (= res!2773293 call!615801)))

(declare-fun b!6785063 () Bool)

(declare-fun res!2773292 () Bool)

(declare-fun e!4095680 () Bool)

(assert (=> b!6785063 (=> (not res!2773292) (not e!4095680))))

(assert (=> b!6785063 (= res!2773292 call!615801)))

(declare-fun e!4095678 () Bool)

(assert (=> b!6785063 (= e!4095678 e!4095680)))

(declare-fun b!6785064 () Bool)

(assert (=> b!6785064 (= e!4095684 e!4095678)))

(assert (=> b!6785064 (= c!1260751 ((_ is Union!16605) (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))

(declare-fun b!6785065 () Bool)

(assert (=> b!6785065 (= e!4095682 call!615800)))

(declare-fun bm!615797 () Bool)

(assert (=> bm!615797 (= call!615801 call!615802)))

(declare-fun b!6785066 () Bool)

(declare-fun res!2773294 () Bool)

(assert (=> b!6785066 (=> res!2773294 e!4095681)))

(assert (=> b!6785066 (= res!2773294 (not ((_ is Concat!25450) (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292))))))))

(assert (=> b!6785066 (= e!4095678 e!4095681)))

(declare-fun b!6785067 () Bool)

(assert (=> b!6785067 (= e!4095680 call!615800)))

(declare-fun b!6785068 () Bool)

(assert (=> b!6785068 (= e!4095684 e!4095679)))

(declare-fun res!2773295 () Bool)

(assert (=> b!6785068 (= res!2773295 (not (nullable!6584 (reg!16934 (ite c!1260390 (reg!16934 r!7292) (ite c!1260391 (regOne!33723 r!7292) (regOne!33722 r!7292)))))))))

(assert (=> b!6785068 (=> (not res!2773295) (not e!4095679))))

(assert (= (and d!2131920 (not res!2773296)) b!6785060))

(assert (= (and b!6785060 c!1260750) b!6785068))

(assert (= (and b!6785060 (not c!1260750)) b!6785064))

(assert (= (and b!6785068 res!2773295) b!6785061))

(assert (= (and b!6785064 c!1260751) b!6785063))

(assert (= (and b!6785064 (not c!1260751)) b!6785066))

(assert (= (and b!6785063 res!2773292) b!6785067))

(assert (= (and b!6785066 (not res!2773294)) b!6785062))

(assert (= (and b!6785062 res!2773293) b!6785065))

(assert (= (or b!6785067 b!6785065) bm!615795))

(assert (= (or b!6785063 b!6785062) bm!615797))

(assert (= (or b!6785061 bm!615797) bm!615796))

(declare-fun m!7533468 () Bool)

(assert (=> bm!615795 m!7533468))

(declare-fun m!7533470 () Bool)

(assert (=> bm!615796 m!7533470))

(declare-fun m!7533472 () Bool)

(assert (=> b!6785068 m!7533472))

(assert (=> bm!615567 d!2131920))

(declare-fun d!2131922 () Bool)

(assert (=> d!2131922 (= (head!13621 (unfocusZipperList!2026 zl!343)) (h!72439 (unfocusZipperList!2026 zl!343)))))

(assert (=> b!6783738 d!2131922))

(assert (=> bm!615524 d!2131796))

(assert (=> d!2131036 d!2131128))

(assert (=> d!2131036 d!2131038))

(declare-fun d!2131924 () Bool)

(assert (=> d!2131924 (= (matchR!8788 (reg!16934 r!7292) (_1!36883 lt!2445168)) (matchZipper!2591 lt!2445190 (_1!36883 lt!2445168)))))

(assert (=> d!2131924 true))

(declare-fun _$44!1784 () Unit!159901)

(assert (=> d!2131924 (= (choose!50513 lt!2445190 lt!2445200 (reg!16934 r!7292) (_1!36883 lt!2445168)) _$44!1784)))

(declare-fun bs!1807419 () Bool)

(assert (= bs!1807419 d!2131924))

(assert (=> bs!1807419 m!7531442))

(assert (=> bs!1807419 m!7531434))

(assert (=> d!2131036 d!2131924))

(assert (=> d!2131036 d!2131798))

(declare-fun b!6785072 () Bool)

(declare-fun e!4095685 () Bool)

(declare-fun lt!2445420 () List!66114)

(assert (=> b!6785072 (= e!4095685 (or (not (= (_2!36883 lt!2445168) Nil!65990)) (= lt!2445420 (t!379831 (_1!36883 lt!2445168)))))))

(declare-fun b!6785070 () Bool)

(declare-fun e!4095686 () List!66114)

(assert (=> b!6785070 (= e!4095686 (Cons!65990 (h!72438 (t!379831 (_1!36883 lt!2445168))) (++!14761 (t!379831 (t!379831 (_1!36883 lt!2445168))) (_2!36883 lt!2445168))))))

(declare-fun b!6785071 () Bool)

(declare-fun res!2773297 () Bool)

(assert (=> b!6785071 (=> (not res!2773297) (not e!4095685))))

(assert (=> b!6785071 (= res!2773297 (= (size!40640 lt!2445420) (+ (size!40640 (t!379831 (_1!36883 lt!2445168))) (size!40640 (_2!36883 lt!2445168)))))))

(declare-fun b!6785069 () Bool)

(assert (=> b!6785069 (= e!4095686 (_2!36883 lt!2445168))))

(declare-fun d!2131926 () Bool)

(assert (=> d!2131926 e!4095685))

(declare-fun res!2773298 () Bool)

(assert (=> d!2131926 (=> (not res!2773298) (not e!4095685))))

(assert (=> d!2131926 (= res!2773298 (= (content!12857 lt!2445420) ((_ map or) (content!12857 (t!379831 (_1!36883 lt!2445168))) (content!12857 (_2!36883 lt!2445168)))))))

(assert (=> d!2131926 (= lt!2445420 e!4095686)))

(declare-fun c!1260752 () Bool)

(assert (=> d!2131926 (= c!1260752 ((_ is Nil!65990) (t!379831 (_1!36883 lt!2445168))))))

(assert (=> d!2131926 (= (++!14761 (t!379831 (_1!36883 lt!2445168)) (_2!36883 lt!2445168)) lt!2445420)))

(assert (= (and d!2131926 c!1260752) b!6785069))

(assert (= (and d!2131926 (not c!1260752)) b!6785070))

(assert (= (and d!2131926 res!2773298) b!6785071))

(assert (= (and b!6785071 res!2773297) b!6785072))

(declare-fun m!7533474 () Bool)

(assert (=> b!6785070 m!7533474))

(declare-fun m!7533476 () Bool)

(assert (=> b!6785071 m!7533476))

(assert (=> b!6785071 m!7533410))

(assert (=> b!6785071 m!7531810))

(declare-fun m!7533478 () Bool)

(assert (=> d!2131926 m!7533478))

(assert (=> d!2131926 m!7533422))

(assert (=> d!2131926 m!7531816))

(assert (=> b!6783331 d!2131926))

(declare-fun b!6785073 () Bool)

(declare-fun e!4095688 () List!66115)

(assert (=> b!6785073 (= e!4095688 (exprs!6489 lt!2445187))))

(declare-fun b!6785074 () Bool)

(assert (=> b!6785074 (= e!4095688 (Cons!65991 (h!72439 (exprs!6489 lt!2445169)) (++!14760 (t!379832 (exprs!6489 lt!2445169)) (exprs!6489 lt!2445187))))))

(declare-fun d!2131928 () Bool)

(declare-fun e!4095687 () Bool)

(assert (=> d!2131928 e!4095687))

(declare-fun res!2773299 () Bool)

(assert (=> d!2131928 (=> (not res!2773299) (not e!4095687))))

(declare-fun lt!2445421 () List!66115)

(assert (=> d!2131928 (= res!2773299 (= (content!12855 lt!2445421) ((_ map or) (content!12855 (exprs!6489 lt!2445169)) (content!12855 (exprs!6489 lt!2445187)))))))

(assert (=> d!2131928 (= lt!2445421 e!4095688)))

(declare-fun c!1260753 () Bool)

(assert (=> d!2131928 (= c!1260753 ((_ is Nil!65991) (exprs!6489 lt!2445169)))))

(assert (=> d!2131928 (= (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187)) lt!2445421)))

(declare-fun b!6785076 () Bool)

(assert (=> b!6785076 (= e!4095687 (or (not (= (exprs!6489 lt!2445187) Nil!65991)) (= lt!2445421 (exprs!6489 lt!2445169))))))

(declare-fun b!6785075 () Bool)

(declare-fun res!2773300 () Bool)

(assert (=> b!6785075 (=> (not res!2773300) (not e!4095687))))

(assert (=> b!6785075 (= res!2773300 (= (size!40639 lt!2445421) (+ (size!40639 (exprs!6489 lt!2445169)) (size!40639 (exprs!6489 lt!2445187)))))))

(assert (= (and d!2131928 c!1260753) b!6785073))

(assert (= (and d!2131928 (not c!1260753)) b!6785074))

(assert (= (and d!2131928 res!2773299) b!6785075))

(assert (= (and b!6785075 res!2773300) b!6785076))

(declare-fun m!7533480 () Bool)

(assert (=> b!6785074 m!7533480))

(declare-fun m!7533482 () Bool)

(assert (=> d!2131928 m!7533482))

(declare-fun m!7533484 () Bool)

(assert (=> d!2131928 m!7533484))

(declare-fun m!7533486 () Bool)

(assert (=> d!2131928 m!7533486))

(declare-fun m!7533488 () Bool)

(assert (=> b!6785075 m!7533488))

(declare-fun m!7533490 () Bool)

(assert (=> b!6785075 m!7533490))

(declare-fun m!7533492 () Bool)

(assert (=> b!6785075 m!7533492))

(assert (=> d!2131058 d!2131928))

(declare-fun d!2131930 () Bool)

(declare-fun c!1260754 () Bool)

(assert (=> d!2131930 (= c!1260754 (isEmpty!38354 (_1!36883 lt!2445168)))))

(declare-fun e!4095689 () Bool)

(assert (=> d!2131930 (= (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true) (_1!36883 lt!2445168)) e!4095689)))

(declare-fun b!6785077 () Bool)

(assert (=> b!6785077 (= e!4095689 (nullableZipper!2312 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true)))))

(declare-fun b!6785078 () Bool)

(assert (=> b!6785078 (= e!4095689 (matchZipper!2591 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) lt!2445169 true) (head!13620 (_1!36883 lt!2445168))) (tail!12705 (_1!36883 lt!2445168))))))

(assert (= (and d!2131930 c!1260754) b!6785077))

(assert (= (and d!2131930 (not c!1260754)) b!6785078))

(assert (=> d!2131930 m!7531452))

(assert (=> b!6785077 m!7531332))

(declare-fun m!7533494 () Bool)

(assert (=> b!6785077 m!7533494))

(assert (=> b!6785078 m!7531456))

(assert (=> b!6785078 m!7531332))

(assert (=> b!6785078 m!7531456))

(declare-fun m!7533496 () Bool)

(assert (=> b!6785078 m!7533496))

(assert (=> b!6785078 m!7531460))

(assert (=> b!6785078 m!7533496))

(assert (=> b!6785078 m!7531460))

(declare-fun m!7533498 () Bool)

(assert (=> b!6785078 m!7533498))

(assert (=> d!2131058 d!2131930))

(declare-fun bs!1807420 () Bool)

(declare-fun d!2131932 () Bool)

(assert (= bs!1807420 (and d!2131932 d!2131134)))

(declare-fun lambda!382025 () Int)

(assert (=> bs!1807420 (= lambda!382025 lambda!381884)))

(declare-fun bs!1807421 () Bool)

(assert (= bs!1807421 (and d!2131932 d!2131696)))

(assert (=> bs!1807421 (= lambda!382025 lambda!381994)))

(declare-fun bs!1807422 () Bool)

(assert (= bs!1807422 (and d!2131932 d!2131102)))

(assert (=> bs!1807422 (= lambda!382025 lambda!381869)))

(declare-fun bs!1807423 () Bool)

(assert (= bs!1807423 (and d!2131932 d!2131664)))

(assert (=> bs!1807423 (= lambda!382025 lambda!381991)))

(declare-fun bs!1807424 () Bool)

(assert (= bs!1807424 (and d!2131932 d!2131058)))

(assert (=> bs!1807424 (= lambda!382025 lambda!381857)))

(declare-fun bs!1807425 () Bool)

(assert (= bs!1807425 (and d!2131932 d!2131272)))

(assert (=> bs!1807425 (= lambda!382025 lambda!381934)))

(declare-fun bs!1807426 () Bool)

(assert (= bs!1807426 (and d!2131932 d!2131834)))

(assert (=> bs!1807426 (= lambda!382025 lambda!382013)))

(declare-fun bs!1807427 () Bool)

(assert (= bs!1807427 (and d!2131932 d!2131274)))

(assert (=> bs!1807427 (= lambda!382025 lambda!381937)))

(declare-fun bs!1807428 () Bool)

(assert (= bs!1807428 (and d!2131932 d!2131810)))

(assert (=> bs!1807428 (= lambda!382025 lambda!382004)))

(declare-fun bs!1807429 () Bool)

(assert (= bs!1807429 (and d!2131932 d!2131876)))

(assert (=> bs!1807429 (= lambda!382025 lambda!382019)))

(declare-fun bs!1807430 () Bool)

(assert (= bs!1807430 (and d!2131932 b!6782898)))

(assert (=> bs!1807430 (= lambda!382025 lambda!381851)))

(declare-fun bs!1807431 () Bool)

(assert (= bs!1807431 (and d!2131932 d!2131836)))

(assert (=> bs!1807431 (= lambda!382025 lambda!382014)))

(declare-fun bs!1807432 () Bool)

(assert (= bs!1807432 (and d!2131932 d!2131166)))

(assert (=> bs!1807432 (= lambda!382025 lambda!381888)))

(assert (=> d!2131932 (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187))) true) (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))

(declare-fun lt!2445424 () Unit!159901)

(assert (=> d!2131932 (= lt!2445424 (lemmaConcatPreservesForall!438 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187) lambda!382025))))

(assert (=> d!2131932 true))

(declare-fun _$56!446 () Unit!159901)

(assert (=> d!2131932 (= (choose!50515 lt!2445169 lt!2445187 (_1!36883 lt!2445168) (_2!36883 lt!2445168)) _$56!446)))

(declare-fun bs!1807433 () Bool)

(assert (= bs!1807433 d!2131932))

(assert (=> bs!1807433 m!7531400))

(assert (=> bs!1807433 m!7531588))

(assert (=> bs!1807433 m!7531400))

(assert (=> bs!1807433 m!7531600))

(declare-fun m!7533500 () Bool)

(assert (=> bs!1807433 m!7533500))

(assert (=> bs!1807433 m!7531582))

(assert (=> bs!1807433 m!7531588))

(assert (=> d!2131058 d!2131932))

(declare-fun d!2131934 () Bool)

(declare-fun c!1260755 () Bool)

(assert (=> d!2131934 (= c!1260755 (isEmpty!38354 (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168))))))

(declare-fun e!4095690 () Bool)

(assert (=> d!2131934 (= (matchZipper!2591 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187))) true) (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168))) e!4095690)))

(declare-fun b!6785079 () Bool)

(assert (=> b!6785079 (= e!4095690 (nullableZipper!2312 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187))) true)))))

(declare-fun b!6785080 () Bool)

(assert (=> b!6785080 (= e!4095690 (matchZipper!2591 (derivationStepZipper!2549 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187))) true) (head!13620 (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))) (tail!12705 (++!14761 (_1!36883 lt!2445168) (_2!36883 lt!2445168)))))))

(assert (= (and d!2131934 c!1260755) b!6785079))

(assert (= (and d!2131934 (not c!1260755)) b!6785080))

(assert (=> d!2131934 m!7531400))

(declare-fun m!7533502 () Bool)

(assert (=> d!2131934 m!7533502))

(assert (=> b!6785079 m!7531588))

(declare-fun m!7533504 () Bool)

(assert (=> b!6785079 m!7533504))

(assert (=> b!6785080 m!7531400))

(declare-fun m!7533506 () Bool)

(assert (=> b!6785080 m!7533506))

(assert (=> b!6785080 m!7531588))

(assert (=> b!6785080 m!7533506))

(declare-fun m!7533508 () Bool)

(assert (=> b!6785080 m!7533508))

(assert (=> b!6785080 m!7531400))

(declare-fun m!7533510 () Bool)

(assert (=> b!6785080 m!7533510))

(assert (=> b!6785080 m!7533508))

(assert (=> b!6785080 m!7533510))

(declare-fun m!7533512 () Bool)

(assert (=> b!6785080 m!7533512))

(assert (=> d!2131058 d!2131934))

(declare-fun d!2131936 () Bool)

(assert (=> d!2131936 (forall!15797 (++!14760 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187)) lambda!381857)))

(declare-fun lt!2445425 () Unit!159901)

(assert (=> d!2131936 (= lt!2445425 (choose!50514 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187) lambda!381857))))

(assert (=> d!2131936 (forall!15797 (exprs!6489 lt!2445169) lambda!381857)))

(assert (=> d!2131936 (= (lemmaConcatPreservesForall!438 (exprs!6489 lt!2445169) (exprs!6489 lt!2445187) lambda!381857) lt!2445425)))

(declare-fun bs!1807434 () Bool)

(assert (= bs!1807434 d!2131936))

(assert (=> bs!1807434 m!7531582))

(assert (=> bs!1807434 m!7531582))

(declare-fun m!7533514 () Bool)

(assert (=> bs!1807434 m!7533514))

(declare-fun m!7533516 () Bool)

(assert (=> bs!1807434 m!7533516))

(declare-fun m!7533518 () Bool)

(assert (=> bs!1807434 m!7533518))

(assert (=> d!2131058 d!2131936))

(assert (=> d!2131058 d!2131148))

(assert (=> b!6783289 d!2131908))

(declare-fun d!2131938 () Bool)

(assert (=> d!2131938 (= ($colon$colon!2414 (exprs!6489 (Context!11979 Nil!65991)) (ite (or c!1260277 c!1260276) (regTwo!33722 r!7292) r!7292)) (Cons!65991 (ite (or c!1260277 c!1260276) (regTwo!33722 r!7292) r!7292) (exprs!6489 (Context!11979 Nil!65991))))))

(assert (=> bm!615529 d!2131938))

(declare-fun d!2131940 () Bool)

(assert (=> d!2131940 (= (Exists!3673 (ite c!1260382 lambda!381938 lambda!381939)) (choose!50521 (ite c!1260382 lambda!381938 lambda!381939)))))

(declare-fun bs!1807435 () Bool)

(assert (= bs!1807435 d!2131940))

(declare-fun m!7533520 () Bool)

(assert (=> bs!1807435 m!7533520))

(assert (=> bm!615558 d!2131940))

(assert (=> d!2131194 d!2131192))

(assert (=> d!2131194 d!2131168))

(declare-fun d!2131942 () Bool)

(assert (=> d!2131942 (= (matchR!8788 r!7292 s!2326) (matchRSpec!3706 r!7292 s!2326))))

(assert (=> d!2131942 true))

(declare-fun _$88!5581 () Unit!159901)

(assert (=> d!2131942 (= (choose!50528 r!7292 s!2326) _$88!5581)))

(declare-fun bs!1807436 () Bool)

(assert (= bs!1807436 d!2131942))

(assert (=> bs!1807436 m!7531340))

(assert (=> bs!1807436 m!7531338))

(assert (=> d!2131194 d!2131942))

(assert (=> d!2131194 d!2131282))

(declare-fun d!2131944 () Bool)

(declare-fun res!2773305 () Bool)

(declare-fun e!4095696 () Bool)

(assert (=> d!2131944 (=> res!2773305 e!4095696)))

(assert (=> d!2131944 (= res!2773305 ((_ is ElementMatch!16605) lt!2445272))))

(assert (=> d!2131944 (= (validRegex!8341 lt!2445272) e!4095696)))

(declare-fun b!6785081 () Bool)

(declare-fun e!4095697 () Bool)

(assert (=> b!6785081 (= e!4095696 e!4095697)))

(declare-fun c!1260756 () Bool)

(assert (=> b!6785081 (= c!1260756 ((_ is Star!16605) lt!2445272))))

(declare-fun bm!615798 () Bool)

(declare-fun call!615803 () Bool)

(declare-fun c!1260757 () Bool)

(assert (=> bm!615798 (= call!615803 (validRegex!8341 (ite c!1260757 (regTwo!33723 lt!2445272) (regTwo!33722 lt!2445272))))))

(declare-fun b!6785082 () Bool)

(declare-fun e!4095692 () Bool)

(declare-fun call!615805 () Bool)

(assert (=> b!6785082 (= e!4095692 call!615805)))

(declare-fun bm!615799 () Bool)

(assert (=> bm!615799 (= call!615805 (validRegex!8341 (ite c!1260756 (reg!16934 lt!2445272) (ite c!1260757 (regOne!33723 lt!2445272) (regOne!33722 lt!2445272)))))))

(declare-fun b!6785083 () Bool)

(declare-fun e!4095694 () Bool)

(declare-fun e!4095695 () Bool)

(assert (=> b!6785083 (= e!4095694 e!4095695)))

(declare-fun res!2773302 () Bool)

(assert (=> b!6785083 (=> (not res!2773302) (not e!4095695))))

(declare-fun call!615804 () Bool)

(assert (=> b!6785083 (= res!2773302 call!615804)))

(declare-fun b!6785084 () Bool)

(declare-fun res!2773301 () Bool)

(declare-fun e!4095693 () Bool)

(assert (=> b!6785084 (=> (not res!2773301) (not e!4095693))))

(assert (=> b!6785084 (= res!2773301 call!615804)))

(declare-fun e!4095691 () Bool)

(assert (=> b!6785084 (= e!4095691 e!4095693)))

(declare-fun b!6785085 () Bool)

(assert (=> b!6785085 (= e!4095697 e!4095691)))

(assert (=> b!6785085 (= c!1260757 ((_ is Union!16605) lt!2445272))))

(declare-fun b!6785086 () Bool)

(assert (=> b!6785086 (= e!4095695 call!615803)))

(declare-fun bm!615800 () Bool)

(assert (=> bm!615800 (= call!615804 call!615805)))

(declare-fun b!6785087 () Bool)

(declare-fun res!2773303 () Bool)

(assert (=> b!6785087 (=> res!2773303 e!4095694)))

(assert (=> b!6785087 (= res!2773303 (not ((_ is Concat!25450) lt!2445272)))))

(assert (=> b!6785087 (= e!4095691 e!4095694)))

(declare-fun b!6785088 () Bool)

(assert (=> b!6785088 (= e!4095693 call!615803)))

(declare-fun b!6785089 () Bool)

(assert (=> b!6785089 (= e!4095697 e!4095692)))

(declare-fun res!2773304 () Bool)

(assert (=> b!6785089 (= res!2773304 (not (nullable!6584 (reg!16934 lt!2445272))))))

(assert (=> b!6785089 (=> (not res!2773304) (not e!4095692))))

(assert (= (and d!2131944 (not res!2773305)) b!6785081))

(assert (= (and b!6785081 c!1260756) b!6785089))

(assert (= (and b!6785081 (not c!1260756)) b!6785085))

(assert (= (and b!6785089 res!2773304) b!6785082))

(assert (= (and b!6785085 c!1260757) b!6785084))

(assert (= (and b!6785085 (not c!1260757)) b!6785087))

(assert (= (and b!6785084 res!2773301) b!6785088))

(assert (= (and b!6785087 (not res!2773303)) b!6785083))

(assert (= (and b!6785083 res!2773302) b!6785086))

(assert (= (or b!6785088 b!6785086) bm!615798))

(assert (= (or b!6785084 b!6785083) bm!615800))

(assert (= (or b!6785082 bm!615800) bm!615799))

(declare-fun m!7533522 () Bool)

(assert (=> bm!615798 m!7533522))

(declare-fun m!7533524 () Bool)

(assert (=> bm!615799 m!7533524))

(declare-fun m!7533526 () Bool)

(assert (=> b!6785089 m!7533526))

(assert (=> d!2131142 d!2131944))

(declare-fun bs!1807437 () Bool)

(declare-fun d!2131946 () Bool)

(assert (= bs!1807437 (and d!2131946 d!2131134)))

(declare-fun lambda!382026 () Int)

(assert (=> bs!1807437 (= lambda!382026 lambda!381884)))

(declare-fun bs!1807438 () Bool)

(assert (= bs!1807438 (and d!2131946 d!2131696)))

(assert (=> bs!1807438 (= lambda!382026 lambda!381994)))

(declare-fun bs!1807439 () Bool)

(assert (= bs!1807439 (and d!2131946 d!2131102)))

(assert (=> bs!1807439 (= lambda!382026 lambda!381869)))

(declare-fun bs!1807440 () Bool)

(assert (= bs!1807440 (and d!2131946 d!2131664)))

(assert (=> bs!1807440 (= lambda!382026 lambda!381991)))

(declare-fun bs!1807441 () Bool)

(assert (= bs!1807441 (and d!2131946 d!2131058)))

(assert (=> bs!1807441 (= lambda!382026 lambda!381857)))

(declare-fun bs!1807442 () Bool)

(assert (= bs!1807442 (and d!2131946 d!2131272)))

(assert (=> bs!1807442 (= lambda!382026 lambda!381934)))

(declare-fun bs!1807443 () Bool)

(assert (= bs!1807443 (and d!2131946 d!2131932)))

(assert (=> bs!1807443 (= lambda!382026 lambda!382025)))

(declare-fun bs!1807444 () Bool)

(assert (= bs!1807444 (and d!2131946 d!2131834)))

(assert (=> bs!1807444 (= lambda!382026 lambda!382013)))

(declare-fun bs!1807445 () Bool)

(assert (= bs!1807445 (and d!2131946 d!2131274)))

(assert (=> bs!1807445 (= lambda!382026 lambda!381937)))

(declare-fun bs!1807446 () Bool)

(assert (= bs!1807446 (and d!2131946 d!2131810)))

(assert (=> bs!1807446 (= lambda!382026 lambda!382004)))

(declare-fun bs!1807447 () Bool)

(assert (= bs!1807447 (and d!2131946 d!2131876)))

(assert (=> bs!1807447 (= lambda!382026 lambda!382019)))

(declare-fun bs!1807448 () Bool)

(assert (= bs!1807448 (and d!2131946 b!6782898)))

(assert (=> bs!1807448 (= lambda!382026 lambda!381851)))

(declare-fun bs!1807449 () Bool)

(assert (= bs!1807449 (and d!2131946 d!2131836)))

(assert (=> bs!1807449 (= lambda!382026 lambda!382014)))

(declare-fun bs!1807450 () Bool)

(assert (= bs!1807450 (and d!2131946 d!2131166)))

(assert (=> bs!1807450 (= lambda!382026 lambda!381888)))

(declare-fun b!6785090 () Bool)

(declare-fun e!4095700 () Bool)

(declare-fun lt!2445426 () Regex!16605)

(assert (=> b!6785090 (= e!4095700 (isUnion!1400 lt!2445426))))

(declare-fun b!6785091 () Bool)

(declare-fun e!4095698 () Regex!16605)

(declare-fun e!4095702 () Regex!16605)

(assert (=> b!6785091 (= e!4095698 e!4095702)))

(declare-fun c!1260760 () Bool)

(assert (=> b!6785091 (= c!1260760 ((_ is Cons!65991) (unfocusZipperList!2026 lt!2445200)))))

(declare-fun b!6785092 () Bool)

(declare-fun e!4095701 () Bool)

(assert (=> b!6785092 (= e!4095701 e!4095700)))

(declare-fun c!1260761 () Bool)

(assert (=> b!6785092 (= c!1260761 (isEmpty!38355 (tail!12706 (unfocusZipperList!2026 lt!2445200))))))

(declare-fun e!4095699 () Bool)

(assert (=> d!2131946 e!4095699))

(declare-fun res!2773307 () Bool)

(assert (=> d!2131946 (=> (not res!2773307) (not e!4095699))))

(assert (=> d!2131946 (= res!2773307 (validRegex!8341 lt!2445426))))

(assert (=> d!2131946 (= lt!2445426 e!4095698)))

(declare-fun c!1260758 () Bool)

(declare-fun e!4095703 () Bool)

(assert (=> d!2131946 (= c!1260758 e!4095703)))

(declare-fun res!2773306 () Bool)

(assert (=> d!2131946 (=> (not res!2773306) (not e!4095703))))

(assert (=> d!2131946 (= res!2773306 ((_ is Cons!65991) (unfocusZipperList!2026 lt!2445200)))))

(assert (=> d!2131946 (forall!15797 (unfocusZipperList!2026 lt!2445200) lambda!382026)))

(assert (=> d!2131946 (= (generalisedUnion!2449 (unfocusZipperList!2026 lt!2445200)) lt!2445426)))

(declare-fun b!6785093 () Bool)

(assert (=> b!6785093 (= e!4095702 (Union!16605 (h!72439 (unfocusZipperList!2026 lt!2445200)) (generalisedUnion!2449 (t!379832 (unfocusZipperList!2026 lt!2445200)))))))

(declare-fun b!6785094 () Bool)

(assert (=> b!6785094 (= e!4095700 (= lt!2445426 (head!13621 (unfocusZipperList!2026 lt!2445200))))))

(declare-fun b!6785095 () Bool)

(assert (=> b!6785095 (= e!4095702 EmptyLang!16605)))

(declare-fun b!6785096 () Bool)

(assert (=> b!6785096 (= e!4095701 (isEmptyLang!1970 lt!2445426))))

(declare-fun b!6785097 () Bool)

(assert (=> b!6785097 (= e!4095703 (isEmpty!38355 (t!379832 (unfocusZipperList!2026 lt!2445200))))))

(declare-fun b!6785098 () Bool)

(assert (=> b!6785098 (= e!4095699 e!4095701)))

(declare-fun c!1260759 () Bool)

(assert (=> b!6785098 (= c!1260759 (isEmpty!38355 (unfocusZipperList!2026 lt!2445200)))))

(declare-fun b!6785099 () Bool)

(assert (=> b!6785099 (= e!4095698 (h!72439 (unfocusZipperList!2026 lt!2445200)))))

(assert (= (and d!2131946 res!2773306) b!6785097))

(assert (= (and d!2131946 c!1260758) b!6785099))

(assert (= (and d!2131946 (not c!1260758)) b!6785091))

(assert (= (and b!6785091 c!1260760) b!6785093))

(assert (= (and b!6785091 (not c!1260760)) b!6785095))

(assert (= (and d!2131946 res!2773307) b!6785098))

(assert (= (and b!6785098 c!1260759) b!6785096))

(assert (= (and b!6785098 (not c!1260759)) b!6785092))

(assert (= (and b!6785092 c!1260761) b!6785094))

(assert (= (and b!6785092 (not c!1260761)) b!6785090))

(declare-fun m!7533528 () Bool)

(assert (=> b!6785090 m!7533528))

(assert (=> b!6785094 m!7531788))

(declare-fun m!7533530 () Bool)

(assert (=> b!6785094 m!7533530))

(assert (=> b!6785092 m!7531788))

(declare-fun m!7533532 () Bool)

(assert (=> b!6785092 m!7533532))

(assert (=> b!6785092 m!7533532))

(declare-fun m!7533534 () Bool)

(assert (=> b!6785092 m!7533534))

(declare-fun m!7533536 () Bool)

(assert (=> b!6785096 m!7533536))

(declare-fun m!7533538 () Bool)

(assert (=> b!6785093 m!7533538))

(declare-fun m!7533540 () Bool)

(assert (=> b!6785097 m!7533540))

(declare-fun m!7533542 () Bool)

(assert (=> d!2131946 m!7533542))

(assert (=> d!2131946 m!7531788))

(declare-fun m!7533544 () Bool)

(assert (=> d!2131946 m!7533544))

(assert (=> b!6785098 m!7531788))

(declare-fun m!7533546 () Bool)

(assert (=> b!6785098 m!7533546))

(assert (=> d!2131142 d!2131946))

(declare-fun bs!1807451 () Bool)

(declare-fun d!2131948 () Bool)

(assert (= bs!1807451 (and d!2131948 d!2131696)))

(declare-fun lambda!382027 () Int)

(assert (=> bs!1807451 (= lambda!382027 lambda!381994)))

(declare-fun bs!1807452 () Bool)

(assert (= bs!1807452 (and d!2131948 d!2131102)))

(assert (=> bs!1807452 (= lambda!382027 lambda!381869)))

(declare-fun bs!1807453 () Bool)

(assert (= bs!1807453 (and d!2131948 d!2131664)))

(assert (=> bs!1807453 (= lambda!382027 lambda!381991)))

(declare-fun bs!1807454 () Bool)

(assert (= bs!1807454 (and d!2131948 d!2131058)))

(assert (=> bs!1807454 (= lambda!382027 lambda!381857)))

(declare-fun bs!1807455 () Bool)

(assert (= bs!1807455 (and d!2131948 d!2131272)))

(assert (=> bs!1807455 (= lambda!382027 lambda!381934)))

(declare-fun bs!1807456 () Bool)

(assert (= bs!1807456 (and d!2131948 d!2131932)))

(assert (=> bs!1807456 (= lambda!382027 lambda!382025)))

(declare-fun bs!1807457 () Bool)

(assert (= bs!1807457 (and d!2131948 d!2131834)))

(assert (=> bs!1807457 (= lambda!382027 lambda!382013)))

(declare-fun bs!1807458 () Bool)

(assert (= bs!1807458 (and d!2131948 d!2131274)))

(assert (=> bs!1807458 (= lambda!382027 lambda!381937)))

(declare-fun bs!1807459 () Bool)

(assert (= bs!1807459 (and d!2131948 d!2131810)))

(assert (=> bs!1807459 (= lambda!382027 lambda!382004)))

(declare-fun bs!1807460 () Bool)

(assert (= bs!1807460 (and d!2131948 d!2131134)))

(assert (=> bs!1807460 (= lambda!382027 lambda!381884)))

(declare-fun bs!1807461 () Bool)

(assert (= bs!1807461 (and d!2131948 d!2131946)))

(assert (=> bs!1807461 (= lambda!382027 lambda!382026)))

(declare-fun bs!1807462 () Bool)

(assert (= bs!1807462 (and d!2131948 d!2131876)))

(assert (=> bs!1807462 (= lambda!382027 lambda!382019)))

(declare-fun bs!1807463 () Bool)

(assert (= bs!1807463 (and d!2131948 b!6782898)))

(assert (=> bs!1807463 (= lambda!382027 lambda!381851)))

(declare-fun bs!1807464 () Bool)

(assert (= bs!1807464 (and d!2131948 d!2131836)))

(assert (=> bs!1807464 (= lambda!382027 lambda!382014)))

(declare-fun bs!1807465 () Bool)

(assert (= bs!1807465 (and d!2131948 d!2131166)))

(assert (=> bs!1807465 (= lambda!382027 lambda!381888)))

(declare-fun lt!2445427 () List!66115)

(assert (=> d!2131948 (forall!15797 lt!2445427 lambda!382027)))

(declare-fun e!4095704 () List!66115)

(assert (=> d!2131948 (= lt!2445427 e!4095704)))

(declare-fun c!1260762 () Bool)

(assert (=> d!2131948 (= c!1260762 ((_ is Cons!65992) lt!2445200))))

(assert (=> d!2131948 (= (unfocusZipperList!2026 lt!2445200) lt!2445427)))

(declare-fun b!6785100 () Bool)

(assert (=> b!6785100 (= e!4095704 (Cons!65991 (generalisedConcat!2202 (exprs!6489 (h!72440 lt!2445200))) (unfocusZipperList!2026 (t!379833 lt!2445200))))))

(declare-fun b!6785101 () Bool)

(assert (=> b!6785101 (= e!4095704 Nil!65991)))

(assert (= (and d!2131948 c!1260762) b!6785100))

(assert (= (and d!2131948 (not c!1260762)) b!6785101))

(declare-fun m!7533548 () Bool)

(assert (=> d!2131948 m!7533548))

(declare-fun m!7533550 () Bool)

(assert (=> b!6785100 m!7533550))

(declare-fun m!7533552 () Bool)

(assert (=> b!6785100 m!7533552))

(assert (=> d!2131142 d!2131948))

(declare-fun d!2131950 () Bool)

(assert (=> d!2131950 (= (isEmptyExpr!1962 lt!2445250) ((_ is EmptyExpr!16605) lt!2445250))))

(assert (=> b!6783221 d!2131950))

(declare-fun d!2131952 () Bool)

(assert (=> d!2131952 (= (flatMap!2086 lt!2445167 lambda!381931) (choose!50517 lt!2445167 lambda!381931))))

(declare-fun bs!1807466 () Bool)

(assert (= bs!1807466 d!2131952))

(declare-fun m!7533554 () Bool)

(assert (=> bs!1807466 m!7533554))

(assert (=> d!2131270 d!2131952))

(declare-fun d!2131954 () Bool)

(assert (=> d!2131954 (= (nullable!6584 (h!72439 (exprs!6489 lt!2445169))) (nullableFct!2490 (h!72439 (exprs!6489 lt!2445169))))))

(declare-fun bs!1807467 () Bool)

(assert (= bs!1807467 d!2131954))

(declare-fun m!7533556 () Bool)

(assert (=> bs!1807467 m!7533556))

(assert (=> b!6783483 d!2131954))

(assert (=> bm!615559 d!2131222))

(assert (=> d!2131044 d!2131802))

(declare-fun bs!1807468 () Bool)

(declare-fun d!2131956 () Bool)

(assert (= bs!1807468 (and d!2131956 d!2131724)))

(declare-fun lambda!382028 () Int)

(assert (=> bs!1807468 (= lambda!382028 lambda!382000)))

(declare-fun bs!1807469 () Bool)

(assert (= bs!1807469 (and d!2131956 d!2131792)))

(assert (=> bs!1807469 (= lambda!382028 lambda!382003)))

(declare-fun bs!1807470 () Bool)

(assert (= bs!1807470 (and d!2131956 d!2131714)))

(assert (=> bs!1807470 (= lambda!382028 lambda!381998)))

(declare-fun bs!1807471 () Bool)

(assert (= bs!1807471 (and d!2131956 d!2131838)))

(assert (=> bs!1807471 (= lambda!382028 lambda!382015)))

(declare-fun bs!1807472 () Bool)

(assert (= bs!1807472 (and d!2131956 d!2131788)))

(assert (=> bs!1807472 (= lambda!382028 lambda!382002)))

(assert (=> d!2131956 (= (nullableZipper!2312 z!1189) (exists!2727 z!1189 lambda!382028))))

(declare-fun bs!1807473 () Bool)

(assert (= bs!1807473 d!2131956))

(declare-fun m!7533558 () Bool)

(assert (=> bs!1807473 m!7533558))

(assert (=> b!6782946 d!2131956))

(declare-fun d!2131958 () Bool)

(assert (=> d!2131958 (= (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (nullableFct!2490 (h!72439 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))

(declare-fun bs!1807474 () Bool)

(assert (= bs!1807474 d!2131958))

(declare-fun m!7533560 () Bool)

(assert (=> bs!1807474 m!7533560))

(assert (=> b!6783369 d!2131958))

(declare-fun d!2131960 () Bool)

(assert (=> d!2131960 (= (isEmpty!38355 (t!379832 (exprs!6489 (h!72440 zl!343)))) ((_ is Nil!65991) (t!379832 (exprs!6489 (h!72440 zl!343)))))))

(assert (=> b!6783225 d!2131960))

(assert (=> bs!1806795 d!2131154))

(declare-fun d!2131962 () Bool)

(declare-fun c!1260763 () Bool)

(assert (=> d!2131962 (= c!1260763 (isEmpty!38354 (tail!12705 (_2!36883 lt!2445168))))))

(declare-fun e!4095705 () Bool)

(assert (=> d!2131962 (= (matchZipper!2591 (derivationStepZipper!2549 lt!2445172 (head!13620 (_2!36883 lt!2445168))) (tail!12705 (_2!36883 lt!2445168))) e!4095705)))

(declare-fun b!6785102 () Bool)

(assert (=> b!6785102 (= e!4095705 (nullableZipper!2312 (derivationStepZipper!2549 lt!2445172 (head!13620 (_2!36883 lt!2445168)))))))

(declare-fun b!6785103 () Bool)

(assert (=> b!6785103 (= e!4095705 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445172 (head!13620 (_2!36883 lt!2445168))) (head!13620 (tail!12705 (_2!36883 lt!2445168)))) (tail!12705 (tail!12705 (_2!36883 lt!2445168)))))))

(assert (= (and d!2131962 c!1260763) b!6785102))

(assert (= (and d!2131962 (not c!1260763)) b!6785103))

(assert (=> d!2131962 m!7531488))

(assert (=> d!2131962 m!7531756))

(assert (=> b!6785102 m!7531486))

(declare-fun m!7533562 () Bool)

(assert (=> b!6785102 m!7533562))

(assert (=> b!6785103 m!7531488))

(assert (=> b!6785103 m!7532992))

(assert (=> b!6785103 m!7531486))

(assert (=> b!6785103 m!7532992))

(declare-fun m!7533564 () Bool)

(assert (=> b!6785103 m!7533564))

(assert (=> b!6785103 m!7531488))

(assert (=> b!6785103 m!7532988))

(assert (=> b!6785103 m!7533564))

(assert (=> b!6785103 m!7532988))

(declare-fun m!7533566 () Bool)

(assert (=> b!6785103 m!7533566))

(assert (=> b!6782949 d!2131962))

(declare-fun bs!1807475 () Bool)

(declare-fun d!2131964 () Bool)

(assert (= bs!1807475 (and d!2131964 b!6782908)))

(declare-fun lambda!382029 () Int)

(assert (=> bs!1807475 (= (= (head!13620 (_2!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382029 lambda!381850))))

(declare-fun bs!1807476 () Bool)

(assert (= bs!1807476 (and d!2131964 d!2131870)))

(assert (=> bs!1807476 (= (= (head!13620 (_2!36883 lt!2445168)) (head!13620 s!2326)) (= lambda!382029 lambda!382016))))

(declare-fun bs!1807477 () Bool)

(assert (= bs!1807477 (and d!2131964 d!2131704)))

(assert (=> bs!1807477 (= (= (head!13620 (_2!36883 lt!2445168)) (head!13620 lt!2445194)) (= lambda!382029 lambda!381995))))

(declare-fun bs!1807478 () Bool)

(assert (= bs!1807478 (and d!2131964 d!2131768)))

(assert (=> bs!1807478 (= (= (head!13620 (_2!36883 lt!2445168)) (head!13620 s!2326)) (= lambda!382029 lambda!382001))))

(declare-fun bs!1807479 () Bool)

(assert (= bs!1807479 (and d!2131964 d!2131270)))

(assert (=> bs!1807479 (= (= (head!13620 (_2!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382029 lambda!381931))))

(declare-fun bs!1807480 () Bool)

(assert (= bs!1807480 (and d!2131964 d!2131208)))

(assert (=> bs!1807480 (= (= (head!13620 (_2!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382029 lambda!381905))))

(declare-fun bs!1807481 () Bool)

(assert (= bs!1807481 (and d!2131964 d!2131718)))

(assert (=> bs!1807481 (= (= (head!13620 (_2!36883 lt!2445168)) (head!13620 (t!379831 s!2326))) (= lambda!382029 lambda!381999))))

(declare-fun bs!1807482 () Bool)

(assert (= bs!1807482 (and d!2131964 d!2131162)))

(assert (=> bs!1807482 (= (= (head!13620 (_2!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382029 lambda!381887))))

(assert (=> d!2131964 true))

(assert (=> d!2131964 (= (derivationStepZipper!2549 lt!2445172 (head!13620 (_2!36883 lt!2445168))) (flatMap!2086 lt!2445172 lambda!382029))))

(declare-fun bs!1807483 () Bool)

(assert (= bs!1807483 d!2131964))

(declare-fun m!7533568 () Bool)

(assert (=> bs!1807483 m!7533568))

(assert (=> b!6782949 d!2131964))

(assert (=> b!6782949 d!2131674))

(assert (=> b!6782949 d!2131676))

(declare-fun d!2131966 () Bool)

(declare-fun res!2773308 () Bool)

(declare-fun e!4095706 () Bool)

(assert (=> d!2131966 (=> res!2773308 e!4095706)))

(assert (=> d!2131966 (= res!2773308 ((_ is Nil!65991) (exprs!6489 (h!72440 zl!343))))))

(assert (=> d!2131966 (= (forall!15797 (exprs!6489 (h!72440 zl!343)) lambda!381884) e!4095706)))

(declare-fun b!6785104 () Bool)

(declare-fun e!4095707 () Bool)

(assert (=> b!6785104 (= e!4095706 e!4095707)))

(declare-fun res!2773309 () Bool)

(assert (=> b!6785104 (=> (not res!2773309) (not e!4095707))))

(assert (=> b!6785104 (= res!2773309 (dynLambda!26336 lambda!381884 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6785105 () Bool)

(assert (=> b!6785105 (= e!4095707 (forall!15797 (t!379832 (exprs!6489 (h!72440 zl!343))) lambda!381884))))

(assert (= (and d!2131966 (not res!2773308)) b!6785104))

(assert (= (and b!6785104 res!2773309) b!6785105))

(declare-fun b_lambda!255515 () Bool)

(assert (=> (not b_lambda!255515) (not b!6785104)))

(declare-fun m!7533570 () Bool)

(assert (=> b!6785104 m!7533570))

(declare-fun m!7533572 () Bool)

(assert (=> b!6785105 m!7533572))

(assert (=> d!2131134 d!2131966))

(assert (=> b!6783698 d!2131192))

(declare-fun d!2131968 () Bool)

(declare-fun c!1260764 () Bool)

(assert (=> d!2131968 (= c!1260764 (isEmpty!38354 (tail!12705 (_1!36883 lt!2445168))))))

(declare-fun e!4095708 () Bool)

(assert (=> d!2131968 (= (matchZipper!2591 (derivationStepZipper!2549 lt!2445190 (head!13620 (_1!36883 lt!2445168))) (tail!12705 (_1!36883 lt!2445168))) e!4095708)))

(declare-fun b!6785106 () Bool)

(assert (=> b!6785106 (= e!4095708 (nullableZipper!2312 (derivationStepZipper!2549 lt!2445190 (head!13620 (_1!36883 lt!2445168)))))))

(declare-fun b!6785107 () Bool)

(assert (=> b!6785107 (= e!4095708 (matchZipper!2591 (derivationStepZipper!2549 (derivationStepZipper!2549 lt!2445190 (head!13620 (_1!36883 lt!2445168))) (head!13620 (tail!12705 (_1!36883 lt!2445168)))) (tail!12705 (tail!12705 (_1!36883 lt!2445168)))))))

(assert (= (and d!2131968 c!1260764) b!6785106))

(assert (= (and d!2131968 (not c!1260764)) b!6785107))

(assert (=> d!2131968 m!7531460))

(assert (=> d!2131968 m!7531764))

(assert (=> b!6785106 m!7531458))

(declare-fun m!7533574 () Bool)

(assert (=> b!6785106 m!7533574))

(assert (=> b!6785107 m!7531460))

(assert (=> b!6785107 m!7533144))

(assert (=> b!6785107 m!7531458))

(assert (=> b!6785107 m!7533144))

(declare-fun m!7533576 () Bool)

(assert (=> b!6785107 m!7533576))

(assert (=> b!6785107 m!7531460))

(assert (=> b!6785107 m!7533140))

(assert (=> b!6785107 m!7533576))

(assert (=> b!6785107 m!7533140))

(declare-fun m!7533578 () Bool)

(assert (=> b!6785107 m!7533578))

(assert (=> b!6782945 d!2131968))

(declare-fun bs!1807484 () Bool)

(declare-fun d!2131970 () Bool)

(assert (= bs!1807484 (and d!2131970 b!6782908)))

(declare-fun lambda!382030 () Int)

(assert (=> bs!1807484 (= (= (head!13620 (_1!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382030 lambda!381850))))

(declare-fun bs!1807485 () Bool)

(assert (= bs!1807485 (and d!2131970 d!2131964)))

(assert (=> bs!1807485 (= (= (head!13620 (_1!36883 lt!2445168)) (head!13620 (_2!36883 lt!2445168))) (= lambda!382030 lambda!382029))))

(declare-fun bs!1807486 () Bool)

(assert (= bs!1807486 (and d!2131970 d!2131870)))

(assert (=> bs!1807486 (= (= (head!13620 (_1!36883 lt!2445168)) (head!13620 s!2326)) (= lambda!382030 lambda!382016))))

(declare-fun bs!1807487 () Bool)

(assert (= bs!1807487 (and d!2131970 d!2131704)))

(assert (=> bs!1807487 (= (= (head!13620 (_1!36883 lt!2445168)) (head!13620 lt!2445194)) (= lambda!382030 lambda!381995))))

(declare-fun bs!1807488 () Bool)

(assert (= bs!1807488 (and d!2131970 d!2131768)))

(assert (=> bs!1807488 (= (= (head!13620 (_1!36883 lt!2445168)) (head!13620 s!2326)) (= lambda!382030 lambda!382001))))

(declare-fun bs!1807489 () Bool)

(assert (= bs!1807489 (and d!2131970 d!2131270)))

(assert (=> bs!1807489 (= (= (head!13620 (_1!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382030 lambda!381931))))

(declare-fun bs!1807490 () Bool)

(assert (= bs!1807490 (and d!2131970 d!2131208)))

(assert (=> bs!1807490 (= (= (head!13620 (_1!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382030 lambda!381905))))

(declare-fun bs!1807491 () Bool)

(assert (= bs!1807491 (and d!2131970 d!2131718)))

(assert (=> bs!1807491 (= (= (head!13620 (_1!36883 lt!2445168)) (head!13620 (t!379831 s!2326))) (= lambda!382030 lambda!381999))))

(declare-fun bs!1807492 () Bool)

(assert (= bs!1807492 (and d!2131970 d!2131162)))

(assert (=> bs!1807492 (= (= (head!13620 (_1!36883 lt!2445168)) (h!72438 s!2326)) (= lambda!382030 lambda!381887))))

(assert (=> d!2131970 true))

(assert (=> d!2131970 (= (derivationStepZipper!2549 lt!2445190 (head!13620 (_1!36883 lt!2445168))) (flatMap!2086 lt!2445190 lambda!382030))))

(declare-fun bs!1807493 () Bool)

(assert (= bs!1807493 d!2131970))

(declare-fun m!7533580 () Bool)

(assert (=> bs!1807493 m!7533580))

(assert (=> b!6782945 d!2131970))

(assert (=> b!6782945 d!2131732))

(assert (=> b!6782945 d!2131748))

(declare-fun d!2131972 () Bool)

(declare-fun res!2773314 () Bool)

(declare-fun e!4095714 () Bool)

(assert (=> d!2131972 (=> res!2773314 e!4095714)))

(assert (=> d!2131972 (= res!2773314 ((_ is ElementMatch!16605) lt!2445274))))

(assert (=> d!2131972 (= (validRegex!8341 lt!2445274) e!4095714)))

(declare-fun b!6785108 () Bool)

(declare-fun e!4095715 () Bool)

(assert (=> b!6785108 (= e!4095714 e!4095715)))

(declare-fun c!1260765 () Bool)

(assert (=> b!6785108 (= c!1260765 ((_ is Star!16605) lt!2445274))))

(declare-fun bm!615801 () Bool)

(declare-fun call!615806 () Bool)

(declare-fun c!1260766 () Bool)

(assert (=> bm!615801 (= call!615806 (validRegex!8341 (ite c!1260766 (regTwo!33723 lt!2445274) (regTwo!33722 lt!2445274))))))

(declare-fun b!6785109 () Bool)

(declare-fun e!4095710 () Bool)

(declare-fun call!615808 () Bool)

(assert (=> b!6785109 (= e!4095710 call!615808)))

(declare-fun bm!615802 () Bool)

(assert (=> bm!615802 (= call!615808 (validRegex!8341 (ite c!1260765 (reg!16934 lt!2445274) (ite c!1260766 (regOne!33723 lt!2445274) (regOne!33722 lt!2445274)))))))

(declare-fun b!6785110 () Bool)

(declare-fun e!4095712 () Bool)

(declare-fun e!4095713 () Bool)

(assert (=> b!6785110 (= e!4095712 e!4095713)))

(declare-fun res!2773311 () Bool)

(assert (=> b!6785110 (=> (not res!2773311) (not e!4095713))))

(declare-fun call!615807 () Bool)

(assert (=> b!6785110 (= res!2773311 call!615807)))

(declare-fun b!6785111 () Bool)

(declare-fun res!2773310 () Bool)

(declare-fun e!4095711 () Bool)

(assert (=> b!6785111 (=> (not res!2773310) (not e!4095711))))

(assert (=> b!6785111 (= res!2773310 call!615807)))

(declare-fun e!4095709 () Bool)

(assert (=> b!6785111 (= e!4095709 e!4095711)))

(declare-fun b!6785112 () Bool)

(assert (=> b!6785112 (= e!4095715 e!4095709)))

(assert (=> b!6785112 (= c!1260766 ((_ is Union!16605) lt!2445274))))

(declare-fun b!6785113 () Bool)

(assert (=> b!6785113 (= e!4095713 call!615806)))

(declare-fun bm!615803 () Bool)

(assert (=> bm!615803 (= call!615807 call!615808)))

(declare-fun b!6785114 () Bool)

(declare-fun res!2773312 () Bool)

(assert (=> b!6785114 (=> res!2773312 e!4095712)))

(assert (=> b!6785114 (= res!2773312 (not ((_ is Concat!25450) lt!2445274)))))

(assert (=> b!6785114 (= e!4095709 e!4095712)))

(declare-fun b!6785115 () Bool)

(assert (=> b!6785115 (= e!4095711 call!615806)))

(declare-fun b!6785116 () Bool)

(assert (=> b!6785116 (= e!4095715 e!4095710)))

(declare-fun res!2773313 () Bool)

(assert (=> b!6785116 (= res!2773313 (not (nullable!6584 (reg!16934 lt!2445274))))))

(assert (=> b!6785116 (=> (not res!2773313) (not e!4095710))))

(assert (= (and d!2131972 (not res!2773314)) b!6785108))

(assert (= (and b!6785108 c!1260765) b!6785116))

(assert (= (and b!6785108 (not c!1260765)) b!6785112))

(assert (= (and b!6785116 res!2773313) b!6785109))

(assert (= (and b!6785112 c!1260766) b!6785111))

(assert (= (and b!6785112 (not c!1260766)) b!6785114))

(assert (= (and b!6785111 res!2773310) b!6785115))

(assert (= (and b!6785114 (not res!2773312)) b!6785110))

(assert (= (and b!6785110 res!2773311) b!6785113))

(assert (= (or b!6785115 b!6785113) bm!615801))

(assert (= (or b!6785111 b!6785110) bm!615803))

(assert (= (or b!6785109 bm!615803) bm!615802))

(declare-fun m!7533582 () Bool)

(assert (=> bm!615801 m!7533582))

(declare-fun m!7533584 () Bool)

(assert (=> bm!615802 m!7533584))

(declare-fun m!7533586 () Bool)

(assert (=> b!6785116 m!7533586))

(assert (=> d!2131146 d!2131972))

(declare-fun bs!1807494 () Bool)

(declare-fun d!2131974 () Bool)

(assert (= bs!1807494 (and d!2131974 d!2131696)))

(declare-fun lambda!382031 () Int)

(assert (=> bs!1807494 (= lambda!382031 lambda!381994)))

(declare-fun bs!1807495 () Bool)

(assert (= bs!1807495 (and d!2131974 d!2131102)))

(assert (=> bs!1807495 (= lambda!382031 lambda!381869)))

(declare-fun bs!1807496 () Bool)

(assert (= bs!1807496 (and d!2131974 d!2131664)))

(assert (=> bs!1807496 (= lambda!382031 lambda!381991)))

(declare-fun bs!1807497 () Bool)

(assert (= bs!1807497 (and d!2131974 d!2131272)))

(assert (=> bs!1807497 (= lambda!382031 lambda!381934)))

(declare-fun bs!1807498 () Bool)

(assert (= bs!1807498 (and d!2131974 d!2131932)))

(assert (=> bs!1807498 (= lambda!382031 lambda!382025)))

(declare-fun bs!1807499 () Bool)

(assert (= bs!1807499 (and d!2131974 d!2131834)))

(assert (=> bs!1807499 (= lambda!382031 lambda!382013)))

(declare-fun bs!1807500 () Bool)

(assert (= bs!1807500 (and d!2131974 d!2131274)))

(assert (=> bs!1807500 (= lambda!382031 lambda!381937)))

(declare-fun bs!1807501 () Bool)

(assert (= bs!1807501 (and d!2131974 d!2131810)))

(assert (=> bs!1807501 (= lambda!382031 lambda!382004)))

(declare-fun bs!1807502 () Bool)

(assert (= bs!1807502 (and d!2131974 d!2131134)))

(assert (=> bs!1807502 (= lambda!382031 lambda!381884)))

(declare-fun bs!1807503 () Bool)

(assert (= bs!1807503 (and d!2131974 d!2131946)))

(assert (=> bs!1807503 (= lambda!382031 lambda!382026)))

(declare-fun bs!1807504 () Bool)

(assert (= bs!1807504 (and d!2131974 d!2131876)))

(assert (=> bs!1807504 (= lambda!382031 lambda!382019)))

(declare-fun bs!1807505 () Bool)

(assert (= bs!1807505 (and d!2131974 b!6782898)))

(assert (=> bs!1807505 (= lambda!382031 lambda!381851)))

(declare-fun bs!1807506 () Bool)

(assert (= bs!1807506 (and d!2131974 d!2131058)))

(assert (=> bs!1807506 (= lambda!382031 lambda!381857)))

(declare-fun bs!1807507 () Bool)

(assert (= bs!1807507 (and d!2131974 d!2131948)))

(assert (=> bs!1807507 (= lambda!382031 lambda!382027)))

(declare-fun bs!1807508 () Bool)

(assert (= bs!1807508 (and d!2131974 d!2131836)))

(assert (=> bs!1807508 (= lambda!382031 lambda!382014)))

(declare-fun bs!1807509 () Bool)

(assert (= bs!1807509 (and d!2131974 d!2131166)))

(assert (=> bs!1807509 (= lambda!382031 lambda!381888)))

(declare-fun b!6785117 () Bool)

(declare-fun e!4095718 () Bool)

(declare-fun lt!2445428 () Regex!16605)

(assert (=> b!6785117 (= e!4095718 (isUnion!1400 lt!2445428))))

(declare-fun b!6785118 () Bool)

(declare-fun e!4095716 () Regex!16605)

(declare-fun e!4095720 () Regex!16605)

(assert (=> b!6785118 (= e!4095716 e!4095720)))

(declare-fun c!1260769 () Bool)

(assert (=> b!6785118 (= c!1260769 ((_ is Cons!65991) (unfocusZipperList!2026 lt!2445171)))))

(declare-fun b!6785119 () Bool)

(declare-fun e!4095719 () Bool)

(assert (=> b!6785119 (= e!4095719 e!4095718)))

(declare-fun c!1260770 () Bool)

(assert (=> b!6785119 (= c!1260770 (isEmpty!38355 (tail!12706 (unfocusZipperList!2026 lt!2445171))))))

(declare-fun e!4095717 () Bool)

(assert (=> d!2131974 e!4095717))

(declare-fun res!2773316 () Bool)

(assert (=> d!2131974 (=> (not res!2773316) (not e!4095717))))

(assert (=> d!2131974 (= res!2773316 (validRegex!8341 lt!2445428))))

(assert (=> d!2131974 (= lt!2445428 e!4095716)))

(declare-fun c!1260767 () Bool)

(declare-fun e!4095721 () Bool)

(assert (=> d!2131974 (= c!1260767 e!4095721)))

(declare-fun res!2773315 () Bool)

(assert (=> d!2131974 (=> (not res!2773315) (not e!4095721))))

(assert (=> d!2131974 (= res!2773315 ((_ is Cons!65991) (unfocusZipperList!2026 lt!2445171)))))

(assert (=> d!2131974 (forall!15797 (unfocusZipperList!2026 lt!2445171) lambda!382031)))

(assert (=> d!2131974 (= (generalisedUnion!2449 (unfocusZipperList!2026 lt!2445171)) lt!2445428)))

(declare-fun b!6785120 () Bool)

(assert (=> b!6785120 (= e!4095720 (Union!16605 (h!72439 (unfocusZipperList!2026 lt!2445171)) (generalisedUnion!2449 (t!379832 (unfocusZipperList!2026 lt!2445171)))))))

(declare-fun b!6785121 () Bool)

(assert (=> b!6785121 (= e!4095718 (= lt!2445428 (head!13621 (unfocusZipperList!2026 lt!2445171))))))

(declare-fun b!6785122 () Bool)

(assert (=> b!6785122 (= e!4095720 EmptyLang!16605)))

(declare-fun b!6785123 () Bool)

(assert (=> b!6785123 (= e!4095719 (isEmptyLang!1970 lt!2445428))))

(declare-fun b!6785124 () Bool)

(assert (=> b!6785124 (= e!4095721 (isEmpty!38355 (t!379832 (unfocusZipperList!2026 lt!2445171))))))

(declare-fun b!6785125 () Bool)

(assert (=> b!6785125 (= e!4095717 e!4095719)))

(declare-fun c!1260768 () Bool)

(assert (=> b!6785125 (= c!1260768 (isEmpty!38355 (unfocusZipperList!2026 lt!2445171)))))

(declare-fun b!6785126 () Bool)

(assert (=> b!6785126 (= e!4095716 (h!72439 (unfocusZipperList!2026 lt!2445171)))))

(assert (= (and d!2131974 res!2773315) b!6785124))

(assert (= (and d!2131974 c!1260767) b!6785126))

(assert (= (and d!2131974 (not c!1260767)) b!6785118))

(assert (= (and b!6785118 c!1260769) b!6785120))

(assert (= (and b!6785118 (not c!1260769)) b!6785122))

(assert (= (and d!2131974 res!2773316) b!6785125))

(assert (= (and b!6785125 c!1260768) b!6785123))

(assert (= (and b!6785125 (not c!1260768)) b!6785119))

(assert (= (and b!6785119 c!1260770) b!6785121))

(assert (= (and b!6785119 (not c!1260770)) b!6785117))

(declare-fun m!7533588 () Bool)

(assert (=> b!6785117 m!7533588))

(assert (=> b!6785121 m!7531800))

(declare-fun m!7533590 () Bool)

(assert (=> b!6785121 m!7533590))

(assert (=> b!6785119 m!7531800))

(declare-fun m!7533592 () Bool)

(assert (=> b!6785119 m!7533592))

(assert (=> b!6785119 m!7533592))

(declare-fun m!7533594 () Bool)

(assert (=> b!6785119 m!7533594))

(declare-fun m!7533596 () Bool)

(assert (=> b!6785123 m!7533596))

(declare-fun m!7533598 () Bool)

(assert (=> b!6785120 m!7533598))

(declare-fun m!7533600 () Bool)

(assert (=> b!6785124 m!7533600))

(declare-fun m!7533602 () Bool)

(assert (=> d!2131974 m!7533602))

(assert (=> d!2131974 m!7531800))

(declare-fun m!7533604 () Bool)

(assert (=> d!2131974 m!7533604))

(assert (=> b!6785125 m!7531800))

(declare-fun m!7533606 () Bool)

(assert (=> b!6785125 m!7533606))

(assert (=> d!2131146 d!2131974))

(declare-fun bs!1807510 () Bool)

(declare-fun d!2131976 () Bool)

(assert (= bs!1807510 (and d!2131976 d!2131696)))

(declare-fun lambda!382032 () Int)

(assert (=> bs!1807510 (= lambda!382032 lambda!381994)))

(declare-fun bs!1807511 () Bool)

(assert (= bs!1807511 (and d!2131976 d!2131102)))

(assert (=> bs!1807511 (= lambda!382032 lambda!381869)))

(declare-fun bs!1807512 () Bool)

(assert (= bs!1807512 (and d!2131976 d!2131664)))

(assert (=> bs!1807512 (= lambda!382032 lambda!381991)))

(declare-fun bs!1807513 () Bool)

(assert (= bs!1807513 (and d!2131976 d!2131272)))

(assert (=> bs!1807513 (= lambda!382032 lambda!381934)))

(declare-fun bs!1807514 () Bool)

(assert (= bs!1807514 (and d!2131976 d!2131974)))

(assert (=> bs!1807514 (= lambda!382032 lambda!382031)))

(declare-fun bs!1807515 () Bool)

(assert (= bs!1807515 (and d!2131976 d!2131932)))

(assert (=> bs!1807515 (= lambda!382032 lambda!382025)))

(declare-fun bs!1807516 () Bool)

(assert (= bs!1807516 (and d!2131976 d!2131834)))

(assert (=> bs!1807516 (= lambda!382032 lambda!382013)))

(declare-fun bs!1807517 () Bool)

(assert (= bs!1807517 (and d!2131976 d!2131274)))

(assert (=> bs!1807517 (= lambda!382032 lambda!381937)))

(declare-fun bs!1807518 () Bool)

(assert (= bs!1807518 (and d!2131976 d!2131810)))

(assert (=> bs!1807518 (= lambda!382032 lambda!382004)))

(declare-fun bs!1807519 () Bool)

(assert (= bs!1807519 (and d!2131976 d!2131134)))

(assert (=> bs!1807519 (= lambda!382032 lambda!381884)))

(declare-fun bs!1807520 () Bool)

(assert (= bs!1807520 (and d!2131976 d!2131946)))

(assert (=> bs!1807520 (= lambda!382032 lambda!382026)))

(declare-fun bs!1807521 () Bool)

(assert (= bs!1807521 (and d!2131976 d!2131876)))

(assert (=> bs!1807521 (= lambda!382032 lambda!382019)))

(declare-fun bs!1807522 () Bool)

(assert (= bs!1807522 (and d!2131976 b!6782898)))

(assert (=> bs!1807522 (= lambda!382032 lambda!381851)))

(declare-fun bs!1807523 () Bool)

(assert (= bs!1807523 (and d!2131976 d!2131058)))

(assert (=> bs!1807523 (= lambda!382032 lambda!381857)))

(declare-fun bs!1807524 () Bool)

(assert (= bs!1807524 (and d!2131976 d!2131948)))

(assert (=> bs!1807524 (= lambda!382032 lambda!382027)))

(declare-fun bs!1807525 () Bool)

(assert (= bs!1807525 (and d!2131976 d!2131836)))

(assert (=> bs!1807525 (= lambda!382032 lambda!382014)))

(declare-fun bs!1807526 () Bool)

(assert (= bs!1807526 (and d!2131976 d!2131166)))

(assert (=> bs!1807526 (= lambda!382032 lambda!381888)))

(declare-fun lt!2445429 () List!66115)

(assert (=> d!2131976 (forall!15797 lt!2445429 lambda!382032)))

(declare-fun e!4095722 () List!66115)

(assert (=> d!2131976 (= lt!2445429 e!4095722)))

(declare-fun c!1260771 () Bool)

(assert (=> d!2131976 (= c!1260771 ((_ is Cons!65992) lt!2445171))))

(assert (=> d!2131976 (= (unfocusZipperList!2026 lt!2445171) lt!2445429)))

(declare-fun b!6785127 () Bool)

(assert (=> b!6785127 (= e!4095722 (Cons!65991 (generalisedConcat!2202 (exprs!6489 (h!72440 lt!2445171))) (unfocusZipperList!2026 (t!379833 lt!2445171))))))

(declare-fun b!6785128 () Bool)

(assert (=> b!6785128 (= e!4095722 Nil!65991)))

(assert (= (and d!2131976 c!1260771) b!6785127))

(assert (= (and d!2131976 (not c!1260771)) b!6785128))

(declare-fun m!7533608 () Bool)

(assert (=> d!2131976 m!7533608))

(declare-fun m!7533610 () Bool)

(assert (=> b!6785127 m!7533610))

(declare-fun m!7533612 () Bool)

(assert (=> b!6785127 m!7533612))

(assert (=> d!2131146 d!2131976))

(assert (=> d!2131280 d!2131278))

(assert (=> d!2131280 d!2131276))

(declare-fun d!2131978 () Bool)

(assert (=> d!2131978 (= (matchR!8788 lt!2445192 s!2326) (matchRSpec!3706 lt!2445192 s!2326))))

(assert (=> d!2131978 true))

(declare-fun _$88!5582 () Unit!159901)

(assert (=> d!2131978 (= (choose!50528 lt!2445192 s!2326) _$88!5582)))

(declare-fun bs!1807527 () Bool)

(assert (= bs!1807527 d!2131978))

(assert (=> bs!1807527 m!7531366))

(assert (=> bs!1807527 m!7531364))

(assert (=> d!2131280 d!2131978))

(assert (=> d!2131280 d!2131862))

(declare-fun d!2131980 () Bool)

(assert (=> d!2131980 true))

(assert (=> d!2131980 true))

(declare-fun res!2773317 () Bool)

(assert (=> d!2131980 (= (choose!50521 lambda!381849) res!2773317)))

(assert (=> d!2131220 d!2131980))

(declare-fun d!2131982 () Bool)

(assert (=> d!2131982 (= (isEmpty!38357 lt!2445188) (not ((_ is Some!16491) lt!2445188)))))

(assert (=> d!2131246 d!2131982))

(declare-fun d!2131984 () Bool)

(assert (=> d!2131984 true))

(declare-fun setRes!46422 () Bool)

(assert (=> d!2131984 setRes!46422))

(declare-fun condSetEmpty!46422 () Bool)

(declare-fun res!2773318 () (InoxSet Context!11978))

(assert (=> d!2131984 (= condSetEmpty!46422 (= res!2773318 ((as const (Array Context!11978 Bool)) false)))))

(assert (=> d!2131984 (= (choose!50517 lt!2445172 lambda!381850) res!2773318)))

(declare-fun setIsEmpty!46422 () Bool)

(assert (=> setIsEmpty!46422 setRes!46422))

(declare-fun e!4095723 () Bool)

(declare-fun tp!1858625 () Bool)

(declare-fun setElem!46422 () Context!11978)

(declare-fun setNonEmpty!46422 () Bool)

(assert (=> setNonEmpty!46422 (= setRes!46422 (and tp!1858625 (inv!84759 setElem!46422) e!4095723))))

(declare-fun setRest!46422 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46422 (= res!2773318 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46422 true) setRest!46422))))

(declare-fun b!6785129 () Bool)

(declare-fun tp!1858624 () Bool)

(assert (=> b!6785129 (= e!4095723 tp!1858624)))

(assert (= (and d!2131984 condSetEmpty!46422) setIsEmpty!46422))

(assert (= (and d!2131984 (not condSetEmpty!46422)) setNonEmpty!46422))

(assert (= setNonEmpty!46422 b!6785129))

(declare-fun m!7533614 () Bool)

(assert (=> setNonEmpty!46422 m!7533614))

(assert (=> d!2131210 d!2131984))

(assert (=> b!6783298 d!2131674))

(declare-fun b!6785130 () Bool)

(declare-fun e!4095725 () (InoxSet Context!11978))

(assert (=> b!6785130 (= e!4095725 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615804 () Bool)

(declare-fun call!615809 () (InoxSet Context!11978))

(assert (=> bm!615804 (= call!615809 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202))))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202)))))) (h!72438 s!2326)))))

(declare-fun b!6785131 () Bool)

(declare-fun e!4095726 () Bool)

(assert (=> b!6785131 (= e!4095726 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202)))))))))

(declare-fun d!2131986 () Bool)

(declare-fun c!1260773 () Bool)

(assert (=> d!2131986 (= c!1260773 e!4095726)))

(declare-fun res!2773319 () Bool)

(assert (=> d!2131986 (=> (not res!2773319) (not e!4095726))))

(assert (=> d!2131986 (= res!2773319 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202))))))))

(declare-fun e!4095724 () (InoxSet Context!11978))

(assert (=> d!2131986 (= (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 lt!2445202))) (h!72438 s!2326)) e!4095724)))

(declare-fun b!6785132 () Bool)

(assert (=> b!6785132 (= e!4095724 ((_ map or) call!615809 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202)))))) (h!72438 s!2326))))))

(declare-fun b!6785133 () Bool)

(assert (=> b!6785133 (= e!4095725 call!615809)))

(declare-fun b!6785134 () Bool)

(assert (=> b!6785134 (= e!4095724 e!4095725)))

(declare-fun c!1260772 () Bool)

(assert (=> b!6785134 (= c!1260772 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 lt!2445202))))))))

(assert (= (and d!2131986 res!2773319) b!6785131))

(assert (= (and d!2131986 c!1260773) b!6785132))

(assert (= (and d!2131986 (not c!1260773)) b!6785134))

(assert (= (and b!6785134 c!1260772) b!6785133))

(assert (= (and b!6785134 (not c!1260772)) b!6785130))

(assert (= (or b!6785132 b!6785133) bm!615804))

(declare-fun m!7533616 () Bool)

(assert (=> bm!615804 m!7533616))

(declare-fun m!7533618 () Bool)

(assert (=> b!6785131 m!7533618))

(declare-fun m!7533620 () Bool)

(assert (=> b!6785132 m!7533620))

(assert (=> b!6783139 d!2131986))

(declare-fun b!6785135 () Bool)

(declare-fun e!4095728 () (InoxSet Context!11978))

(declare-fun call!615810 () (InoxSet Context!11978))

(assert (=> b!6785135 (= e!4095728 call!615810)))

(declare-fun b!6785136 () Bool)

(declare-fun e!4095731 () (InoxSet Context!11978))

(assert (=> b!6785136 (= e!4095731 (store ((as const (Array Context!11978 Bool)) false) (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) true))))

(declare-fun bm!615805 () Bool)

(declare-fun call!615812 () (InoxSet Context!11978))

(assert (=> bm!615805 (= call!615810 call!615812)))

(declare-fun b!6785137 () Bool)

(declare-fun e!4095730 () (InoxSet Context!11978))

(assert (=> b!6785137 (= e!4095730 e!4095728)))

(declare-fun c!1260775 () Bool)

(assert (=> b!6785137 (= c!1260775 ((_ is Concat!25450) (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun b!6785138 () Bool)

(declare-fun c!1260778 () Bool)

(assert (=> b!6785138 (= c!1260778 ((_ is Star!16605) (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun e!4095729 () (InoxSet Context!11978))

(assert (=> b!6785138 (= e!4095728 e!4095729)))

(declare-fun bm!615806 () Bool)

(declare-fun call!615811 () List!66115)

(declare-fun call!615815 () List!66115)

(assert (=> bm!615806 (= call!615811 call!615815)))

(declare-fun bm!615807 () Bool)

(declare-fun call!615814 () (InoxSet Context!11978))

(assert (=> bm!615807 (= call!615812 call!615814)))

(declare-fun b!6785139 () Bool)

(declare-fun call!615813 () (InoxSet Context!11978))

(assert (=> b!6785139 (= e!4095730 ((_ map or) call!615813 call!615812))))

(declare-fun b!6785140 () Bool)

(declare-fun e!4095727 () Bool)

(assert (=> b!6785140 (= e!4095727 (nullable!6584 (regOne!33722 (h!72439 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun c!1260776 () Bool)

(declare-fun bm!615808 () Bool)

(assert (=> bm!615808 (= call!615815 ($colon$colon!2414 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343))))) (ite (or c!1260776 c!1260775) (regTwo!33722 (h!72439 (exprs!6489 (h!72440 zl!343)))) (h!72439 (exprs!6489 (h!72440 zl!343))))))))

(declare-fun b!6785141 () Bool)

(assert (=> b!6785141 (= c!1260776 e!4095727)))

(declare-fun res!2773320 () Bool)

(assert (=> b!6785141 (=> (not res!2773320) (not e!4095727))))

(assert (=> b!6785141 (= res!2773320 ((_ is Concat!25450) (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun e!4095732 () (InoxSet Context!11978))

(assert (=> b!6785141 (= e!4095732 e!4095730)))

(declare-fun c!1260777 () Bool)

(declare-fun bm!615809 () Bool)

(assert (=> bm!615809 (= call!615814 (derivationStepZipperDown!1833 (ite c!1260777 (regTwo!33723 (h!72439 (exprs!6489 (h!72440 zl!343)))) (ite c!1260776 (regTwo!33722 (h!72439 (exprs!6489 (h!72440 zl!343)))) (ite c!1260775 (regOne!33722 (h!72439 (exprs!6489 (h!72440 zl!343)))) (reg!16934 (h!72439 (exprs!6489 (h!72440 zl!343))))))) (ite (or c!1260777 c!1260776) (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (Context!11979 call!615811)) (h!72438 s!2326)))))

(declare-fun bm!615810 () Bool)

(assert (=> bm!615810 (= call!615813 (derivationStepZipperDown!1833 (ite c!1260777 (regOne!33723 (h!72439 (exprs!6489 (h!72440 zl!343)))) (regOne!33722 (h!72439 (exprs!6489 (h!72440 zl!343))))) (ite c!1260777 (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (Context!11979 call!615815)) (h!72438 s!2326)))))

(declare-fun b!6785142 () Bool)

(assert (=> b!6785142 (= e!4095731 e!4095732)))

(assert (=> b!6785142 (= c!1260777 ((_ is Union!16605) (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun d!2131988 () Bool)

(declare-fun c!1260774 () Bool)

(assert (=> d!2131988 (= c!1260774 (and ((_ is ElementMatch!16605) (h!72439 (exprs!6489 (h!72440 zl!343)))) (= (c!1260145 (h!72439 (exprs!6489 (h!72440 zl!343)))) (h!72438 s!2326))))))

(assert (=> d!2131988 (= (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (h!72440 zl!343))) (Context!11979 (t!379832 (exprs!6489 (h!72440 zl!343)))) (h!72438 s!2326)) e!4095731)))

(declare-fun b!6785143 () Bool)

(assert (=> b!6785143 (= e!4095732 ((_ map or) call!615813 call!615814))))

(declare-fun b!6785144 () Bool)

(assert (=> b!6785144 (= e!4095729 call!615810)))

(declare-fun b!6785145 () Bool)

(assert (=> b!6785145 (= e!4095729 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2131988 c!1260774) b!6785136))

(assert (= (and d!2131988 (not c!1260774)) b!6785142))

(assert (= (and b!6785142 c!1260777) b!6785143))

(assert (= (and b!6785142 (not c!1260777)) b!6785141))

(assert (= (and b!6785141 res!2773320) b!6785140))

(assert (= (and b!6785141 c!1260776) b!6785139))

(assert (= (and b!6785141 (not c!1260776)) b!6785137))

(assert (= (and b!6785137 c!1260775) b!6785135))

(assert (= (and b!6785137 (not c!1260775)) b!6785138))

(assert (= (and b!6785138 c!1260778) b!6785144))

(assert (= (and b!6785138 (not c!1260778)) b!6785145))

(assert (= (or b!6785135 b!6785144) bm!615806))

(assert (= (or b!6785135 b!6785144) bm!615805))

(assert (= (or b!6785139 bm!615806) bm!615808))

(assert (= (or b!6785139 bm!615805) bm!615807))

(assert (= (or b!6785143 bm!615807) bm!615809))

(assert (= (or b!6785143 b!6785139) bm!615810))

(declare-fun m!7533622 () Bool)

(assert (=> b!6785136 m!7533622))

(declare-fun m!7533624 () Bool)

(assert (=> b!6785140 m!7533624))

(declare-fun m!7533626 () Bool)

(assert (=> bm!615809 m!7533626))

(declare-fun m!7533628 () Bool)

(assert (=> bm!615808 m!7533628))

(declare-fun m!7533630 () Bool)

(assert (=> bm!615810 m!7533630))

(assert (=> bm!615525 d!2131988))

(assert (=> b!6783466 d!2131782))

(assert (=> b!6783466 d!2131772))

(declare-fun b!6785146 () Bool)

(declare-fun e!4095734 () (InoxSet Context!11978))

(assert (=> b!6785146 (= e!4095734 ((as const (Array Context!11978 Bool)) false))))

(declare-fun bm!615811 () Bool)

(declare-fun call!615816 () (InoxSet Context!11978))

(assert (=> bm!615811 (= call!615816 (derivationStepZipperDown!1833 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))) (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))) (h!72438 s!2326)))))

(declare-fun b!6785147 () Bool)

(declare-fun e!4095735 () Bool)

(assert (=> b!6785147 (= e!4095735 (nullable!6584 (h!72439 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))))))

(declare-fun d!2131990 () Bool)

(declare-fun c!1260780 () Bool)

(assert (=> d!2131990 (= c!1260780 e!4095735)))

(declare-fun res!2773321 () Bool)

(assert (=> d!2131990 (=> (not res!2773321) (not e!4095735))))

(assert (=> d!2131990 (= res!2773321 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))))

(declare-fun e!4095733 () (InoxSet Context!11978))

(assert (=> d!2131990 (= (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))) (h!72438 s!2326)) e!4095733)))

(declare-fun b!6785148 () Bool)

(assert (=> b!6785148 (= e!4095733 ((_ map or) call!615816 (derivationStepZipperUp!1759 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991)))))))) (h!72438 s!2326))))))

(declare-fun b!6785149 () Bool)

(assert (=> b!6785149 (= e!4095734 call!615816)))

(declare-fun b!6785150 () Bool)

(assert (=> b!6785150 (= e!4095733 e!4095734)))

(declare-fun c!1260779 () Bool)

(assert (=> b!6785150 (= c!1260779 ((_ is Cons!65991) (exprs!6489 (Context!11979 (t!379832 (exprs!6489 (Context!11979 (Cons!65991 r!7292 Nil!65991))))))))))

(assert (= (and d!2131990 res!2773321) b!6785147))

(assert (= (and d!2131990 c!1260780) b!6785148))

(assert (= (and d!2131990 (not c!1260780)) b!6785150))

(assert (= (and b!6785150 c!1260779) b!6785149))

(assert (= (and b!6785150 (not c!1260779)) b!6785146))

(assert (= (or b!6785148 b!6785149) bm!615811))

(declare-fun m!7533632 () Bool)

(assert (=> bm!615811 m!7533632))

(declare-fun m!7533634 () Bool)

(assert (=> b!6785147 m!7533634))

(declare-fun m!7533636 () Bool)

(assert (=> b!6785148 m!7533636))

(assert (=> b!6783370 d!2131990))

(declare-fun b!6785154 () Bool)

(declare-fun e!4095736 () Bool)

(declare-fun lt!2445430 () List!66114)

(assert (=> b!6785154 (= e!4095736 (or (not (= (t!379831 s!2326) Nil!65990)) (= lt!2445430 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)))))))

(declare-fun b!6785152 () Bool)

(declare-fun e!4095737 () List!66114)

(assert (=> b!6785152 (= e!4095737 (Cons!65990 (h!72438 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))) (++!14761 (t!379831 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))) (t!379831 s!2326))))))

(declare-fun b!6785153 () Bool)

(declare-fun res!2773322 () Bool)

(assert (=> b!6785153 (=> (not res!2773322) (not e!4095736))))

(assert (=> b!6785153 (= res!2773322 (= (size!40640 lt!2445430) (+ (size!40640 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))) (size!40640 (t!379831 s!2326)))))))

(declare-fun b!6785151 () Bool)

(assert (=> b!6785151 (= e!4095737 (t!379831 s!2326))))

(declare-fun d!2131992 () Bool)

(assert (=> d!2131992 e!4095736))

(declare-fun res!2773323 () Bool)

(assert (=> d!2131992 (=> (not res!2773323) (not e!4095736))))

(assert (=> d!2131992 (= res!2773323 (= (content!12857 lt!2445430) ((_ map or) (content!12857 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))) (content!12857 (t!379831 s!2326)))))))

(assert (=> d!2131992 (= lt!2445430 e!4095737)))

(declare-fun c!1260781 () Bool)

(assert (=> d!2131992 (= c!1260781 ((_ is Nil!65990) (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))))))

(assert (=> d!2131992 (= (++!14761 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326)) lt!2445430)))

(assert (= (and d!2131992 c!1260781) b!6785151))

(assert (= (and d!2131992 (not c!1260781)) b!6785152))

(assert (= (and d!2131992 res!2773323) b!6785153))

(assert (= (and b!6785153 res!2773322) b!6785154))

(declare-fun m!7533638 () Bool)

(assert (=> b!6785152 m!7533638))

(declare-fun m!7533640 () Bool)

(assert (=> b!6785153 m!7533640))

(assert (=> b!6785153 m!7532104))

(declare-fun m!7533642 () Bool)

(assert (=> b!6785153 m!7533642))

(declare-fun m!7533644 () Bool)

(assert (=> b!6785153 m!7533644))

(declare-fun m!7533646 () Bool)

(assert (=> d!2131992 m!7533646))

(assert (=> d!2131992 m!7532104))

(declare-fun m!7533648 () Bool)

(assert (=> d!2131992 m!7533648))

(declare-fun m!7533650 () Bool)

(assert (=> d!2131992 m!7533650))

(assert (=> b!6783703 d!2131992))

(declare-fun b!6785158 () Bool)

(declare-fun e!4095738 () Bool)

(declare-fun lt!2445431 () List!66114)

(assert (=> b!6785158 (= e!4095738 (or (not (= (Cons!65990 (h!72438 s!2326) Nil!65990) Nil!65990)) (= lt!2445431 Nil!65990)))))

(declare-fun b!6785156 () Bool)

(declare-fun e!4095739 () List!66114)

(assert (=> b!6785156 (= e!4095739 (Cons!65990 (h!72438 Nil!65990) (++!14761 (t!379831 Nil!65990) (Cons!65990 (h!72438 s!2326) Nil!65990))))))

(declare-fun b!6785157 () Bool)

(declare-fun res!2773324 () Bool)

(assert (=> b!6785157 (=> (not res!2773324) (not e!4095738))))

(assert (=> b!6785157 (= res!2773324 (= (size!40640 lt!2445431) (+ (size!40640 Nil!65990) (size!40640 (Cons!65990 (h!72438 s!2326) Nil!65990)))))))

(declare-fun b!6785155 () Bool)

(assert (=> b!6785155 (= e!4095739 (Cons!65990 (h!72438 s!2326) Nil!65990))))

(declare-fun d!2131994 () Bool)

(assert (=> d!2131994 e!4095738))

(declare-fun res!2773325 () Bool)

(assert (=> d!2131994 (=> (not res!2773325) (not e!4095738))))

(assert (=> d!2131994 (= res!2773325 (= (content!12857 lt!2445431) ((_ map or) (content!12857 Nil!65990) (content!12857 (Cons!65990 (h!72438 s!2326) Nil!65990)))))))

(assert (=> d!2131994 (= lt!2445431 e!4095739)))

(declare-fun c!1260782 () Bool)

(assert (=> d!2131994 (= c!1260782 ((_ is Nil!65990) Nil!65990))))

(assert (=> d!2131994 (= (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) lt!2445431)))

(assert (= (and d!2131994 c!1260782) b!6785155))

(assert (= (and d!2131994 (not c!1260782)) b!6785156))

(assert (= (and d!2131994 res!2773325) b!6785157))

(assert (= (and b!6785157 res!2773324) b!6785158))

(declare-fun m!7533652 () Bool)

(assert (=> b!6785156 m!7533652))

(declare-fun m!7533654 () Bool)

(assert (=> b!6785157 m!7533654))

(declare-fun m!7533656 () Bool)

(assert (=> b!6785157 m!7533656))

(declare-fun m!7533658 () Bool)

(assert (=> b!6785157 m!7533658))

(declare-fun m!7533660 () Bool)

(assert (=> d!2131994 m!7533660))

(declare-fun m!7533662 () Bool)

(assert (=> d!2131994 m!7533662))

(declare-fun m!7533664 () Bool)

(assert (=> d!2131994 m!7533664))

(assert (=> b!6783703 d!2131994))

(declare-fun d!2131996 () Bool)

(assert (=> d!2131996 (= (++!14761 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326)) s!2326)))

(declare-fun lt!2445434 () Unit!159901)

(declare-fun choose!50533 (List!66114 C!33480 List!66114 List!66114) Unit!159901)

(assert (=> d!2131996 (= lt!2445434 (choose!50533 Nil!65990 (h!72438 s!2326) (t!379831 s!2326) s!2326))))

(assert (=> d!2131996 (= (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) (t!379831 s!2326))) s!2326)))

(assert (=> d!2131996 (= (lemmaMoveElementToOtherListKeepsConcatEq!2726 Nil!65990 (h!72438 s!2326) (t!379831 s!2326) s!2326) lt!2445434)))

(declare-fun bs!1807528 () Bool)

(assert (= bs!1807528 d!2131996))

(assert (=> bs!1807528 m!7532104))

(assert (=> bs!1807528 m!7532104))

(assert (=> bs!1807528 m!7532106))

(declare-fun m!7533666 () Bool)

(assert (=> bs!1807528 m!7533666))

(declare-fun m!7533668 () Bool)

(assert (=> bs!1807528 m!7533668))

(assert (=> b!6783703 d!2131996))

(declare-fun b!6785159 () Bool)

(declare-fun e!4095742 () Option!16492)

(assert (=> b!6785159 (= e!4095742 None!16491)))

(declare-fun b!6785160 () Bool)

(declare-fun e!4095743 () Bool)

(assert (=> b!6785160 (= e!4095743 (matchR!8788 r!7292 (t!379831 s!2326)))))

(declare-fun b!6785161 () Bool)

(declare-fun e!4095741 () Option!16492)

(assert (=> b!6785161 (= e!4095741 (Some!16491 (tuple2!67161 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326))))))

(declare-fun b!6785162 () Bool)

(declare-fun res!2773329 () Bool)

(declare-fun e!4095744 () Bool)

(assert (=> b!6785162 (=> (not res!2773329) (not e!4095744))))

(declare-fun lt!2445436 () Option!16492)

(assert (=> b!6785162 (= res!2773329 (matchR!8788 r!7292 (_2!36883 (get!22977 lt!2445436))))))

(declare-fun b!6785163 () Bool)

(declare-fun res!2773328 () Bool)

(assert (=> b!6785163 (=> (not res!2773328) (not e!4095744))))

(assert (=> b!6785163 (= res!2773328 (matchR!8788 (reg!16934 r!7292) (_1!36883 (get!22977 lt!2445436))))))

(declare-fun b!6785164 () Bool)

(assert (=> b!6785164 (= e!4095741 e!4095742)))

(declare-fun c!1260783 () Bool)

(assert (=> b!6785164 (= c!1260783 ((_ is Nil!65990) (t!379831 s!2326)))))

(declare-fun b!6785165 () Bool)

(declare-fun lt!2445435 () Unit!159901)

(declare-fun lt!2445437 () Unit!159901)

(assert (=> b!6785165 (= lt!2445435 lt!2445437)))

(assert (=> b!6785165 (= (++!14761 (++!14761 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (Cons!65990 (h!72438 (t!379831 s!2326)) Nil!65990)) (t!379831 (t!379831 s!2326))) s!2326)))

(assert (=> b!6785165 (= lt!2445437 (lemmaMoveElementToOtherListKeepsConcatEq!2726 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (h!72438 (t!379831 s!2326)) (t!379831 (t!379831 s!2326)) s!2326))))

(assert (=> b!6785165 (= e!4095742 (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 (++!14761 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (Cons!65990 (h!72438 (t!379831 s!2326)) Nil!65990)) (t!379831 (t!379831 s!2326)) s!2326))))

(declare-fun b!6785166 () Bool)

(declare-fun e!4095740 () Bool)

(assert (=> b!6785166 (= e!4095740 (not (isDefined!13195 lt!2445436)))))

(declare-fun d!2131998 () Bool)

(assert (=> d!2131998 e!4095740))

(declare-fun res!2773330 () Bool)

(assert (=> d!2131998 (=> res!2773330 e!4095740)))

(assert (=> d!2131998 (= res!2773330 e!4095744)))

(declare-fun res!2773326 () Bool)

(assert (=> d!2131998 (=> (not res!2773326) (not e!4095744))))

(assert (=> d!2131998 (= res!2773326 (isDefined!13195 lt!2445436))))

(assert (=> d!2131998 (= lt!2445436 e!4095741)))

(declare-fun c!1260784 () Bool)

(assert (=> d!2131998 (= c!1260784 e!4095743)))

(declare-fun res!2773327 () Bool)

(assert (=> d!2131998 (=> (not res!2773327) (not e!4095743))))

(assert (=> d!2131998 (= res!2773327 (matchR!8788 (reg!16934 r!7292) (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990))))))

(assert (=> d!2131998 (validRegex!8341 (reg!16934 r!7292))))

(assert (=> d!2131998 (= (findConcatSeparation!2906 (reg!16934 r!7292) r!7292 (++!14761 Nil!65990 (Cons!65990 (h!72438 s!2326) Nil!65990)) (t!379831 s!2326) s!2326) lt!2445436)))

(declare-fun b!6785167 () Bool)

(assert (=> b!6785167 (= e!4095744 (= (++!14761 (_1!36883 (get!22977 lt!2445436)) (_2!36883 (get!22977 lt!2445436))) s!2326))))

(assert (= (and d!2131998 res!2773327) b!6785160))

(assert (= (and d!2131998 c!1260784) b!6785161))

(assert (= (and d!2131998 (not c!1260784)) b!6785164))

(assert (= (and b!6785164 c!1260783) b!6785159))

(assert (= (and b!6785164 (not c!1260783)) b!6785165))

(assert (= (and d!2131998 res!2773326) b!6785163))

(assert (= (and b!6785163 res!2773328) b!6785162))

(assert (= (and b!6785162 res!2773329) b!6785167))

(assert (= (and d!2131998 (not res!2773330)) b!6785166))

(declare-fun m!7533670 () Bool)

(assert (=> b!6785162 m!7533670))

(declare-fun m!7533672 () Bool)

(assert (=> b!6785162 m!7533672))

(declare-fun m!7533674 () Bool)

(assert (=> b!6785160 m!7533674))

(declare-fun m!7533676 () Bool)

(assert (=> b!6785166 m!7533676))

(assert (=> b!6785167 m!7533670))

(declare-fun m!7533678 () Bool)

(assert (=> b!6785167 m!7533678))

(assert (=> b!6785163 m!7533670))

(declare-fun m!7533680 () Bool)

(assert (=> b!6785163 m!7533680))

(assert (=> d!2131998 m!7533676))

(assert (=> d!2131998 m!7532104))

(declare-fun m!7533682 () Bool)

(assert (=> d!2131998 m!7533682))

(assert (=> d!2131998 m!7531450))

(assert (=> b!6785165 m!7532104))

(declare-fun m!7533684 () Bool)

(assert (=> b!6785165 m!7533684))

(assert (=> b!6785165 m!7533684))

(declare-fun m!7533686 () Bool)

(assert (=> b!6785165 m!7533686))

(assert (=> b!6785165 m!7532104))

(declare-fun m!7533688 () Bool)

(assert (=> b!6785165 m!7533688))

(assert (=> b!6785165 m!7533684))

(declare-fun m!7533690 () Bool)

(assert (=> b!6785165 m!7533690))

(assert (=> b!6783703 d!2131998))

(declare-fun b!6785168 () Bool)

(declare-fun e!4095746 () (InoxSet Context!11978))

(declare-fun call!615817 () (InoxSet Context!11978))

(assert (=> b!6785168 (= e!4095746 call!615817)))

(declare-fun b!6785169 () Bool)

(declare-fun e!4095749 () (InoxSet Context!11978))

(assert (=> b!6785169 (= e!4095749 (store ((as const (Array Context!11978 Bool)) false) (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500)) true))))

(declare-fun bm!615812 () Bool)

(declare-fun call!615819 () (InoxSet Context!11978))

(assert (=> bm!615812 (= call!615817 call!615819)))

(declare-fun b!6785170 () Bool)

(declare-fun e!4095748 () (InoxSet Context!11978))

(assert (=> b!6785170 (= e!4095748 e!4095746)))

(declare-fun c!1260786 () Bool)

(assert (=> b!6785170 (= c!1260786 ((_ is Concat!25450) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))))))

(declare-fun b!6785171 () Bool)

(declare-fun c!1260789 () Bool)

(assert (=> b!6785171 (= c!1260789 ((_ is Star!16605) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))))))

(declare-fun e!4095747 () (InoxSet Context!11978))

(assert (=> b!6785171 (= e!4095746 e!4095747)))

(declare-fun bm!615813 () Bool)

(declare-fun call!615818 () List!66115)

(declare-fun call!615822 () List!66115)

(assert (=> bm!615813 (= call!615818 call!615822)))

(declare-fun bm!615814 () Bool)

(declare-fun call!615821 () (InoxSet Context!11978))

(assert (=> bm!615814 (= call!615819 call!615821)))

(declare-fun b!6785172 () Bool)

(declare-fun call!615820 () (InoxSet Context!11978))

(assert (=> b!6785172 (= e!4095748 ((_ map or) call!615820 call!615819))))

(declare-fun b!6785173 () Bool)

(declare-fun e!4095745 () Bool)

(assert (=> b!6785173 (= e!4095745 (nullable!6584 (regOne!33722 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))))))))

(declare-fun bm!615815 () Bool)

(declare-fun c!1260787 () Bool)

(assert (=> bm!615815 (= call!615822 ($colon$colon!2414 (exprs!6489 (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500))) (ite (or c!1260787 c!1260786) (regTwo!33722 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))))))))

(declare-fun b!6785174 () Bool)

(assert (=> b!6785174 (= c!1260787 e!4095745)))

(declare-fun res!2773331 () Bool)

(assert (=> b!6785174 (=> (not res!2773331) (not e!4095745))))

(assert (=> b!6785174 (= res!2773331 ((_ is Concat!25450) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))))))

(declare-fun e!4095750 () (InoxSet Context!11978))

(assert (=> b!6785174 (= e!4095750 e!4095748)))

(declare-fun bm!615816 () Bool)

(declare-fun c!1260788 () Bool)

(assert (=> bm!615816 (= call!615821 (derivationStepZipperDown!1833 (ite c!1260788 (regTwo!33723 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (ite c!1260787 (regTwo!33722 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (ite c!1260786 (regOne!33722 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (reg!16934 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))))))) (ite (or c!1260788 c!1260787) (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500)) (Context!11979 call!615818)) (h!72438 s!2326)))))

(declare-fun bm!615817 () Bool)

(assert (=> bm!615817 (= call!615820 (derivationStepZipperDown!1833 (ite c!1260788 (regOne!33723 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (regOne!33722 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))))) (ite c!1260788 (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500)) (Context!11979 call!615822)) (h!72438 s!2326)))))

(declare-fun b!6785175 () Bool)

(assert (=> b!6785175 (= e!4095749 e!4095750)))

(assert (=> b!6785175 (= c!1260788 ((_ is Union!16605) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))))))

(declare-fun d!2132000 () Bool)

(declare-fun c!1260785 () Bool)

(assert (=> d!2132000 (= c!1260785 (and ((_ is ElementMatch!16605) (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (= (c!1260145 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292)))))) (h!72438 s!2326))))))

(assert (=> d!2132000 (= (derivationStepZipperDown!1833 (ite c!1260200 (regTwo!33723 (reg!16934 r!7292)) (ite c!1260199 (regTwo!33722 (reg!16934 r!7292)) (ite c!1260198 (regOne!33722 (reg!16934 r!7292)) (reg!16934 (reg!16934 r!7292))))) (ite (or c!1260200 c!1260199) lt!2445187 (Context!11979 call!615500)) (h!72438 s!2326)) e!4095749)))

(declare-fun b!6785176 () Bool)

(assert (=> b!6785176 (= e!4095750 ((_ map or) call!615820 call!615821))))

(declare-fun b!6785177 () Bool)

(assert (=> b!6785177 (= e!4095747 call!615817)))

(declare-fun b!6785178 () Bool)

(assert (=> b!6785178 (= e!4095747 ((as const (Array Context!11978 Bool)) false))))

(assert (= (and d!2132000 c!1260785) b!6785169))

(assert (= (and d!2132000 (not c!1260785)) b!6785175))

(assert (= (and b!6785175 c!1260788) b!6785176))

(assert (= (and b!6785175 (not c!1260788)) b!6785174))

(assert (= (and b!6785174 res!2773331) b!6785173))

(assert (= (and b!6785174 c!1260787) b!6785172))

(assert (= (and b!6785174 (not c!1260787)) b!6785170))

(assert (= (and b!6785170 c!1260786) b!6785168))

(assert (= (and b!6785170 (not c!1260786)) b!6785171))

(assert (= (and b!6785171 c!1260789) b!6785177))

(assert (= (and b!6785171 (not c!1260789)) b!6785178))

(assert (= (or b!6785168 b!6785177) bm!615813))

(assert (= (or b!6785168 b!6785177) bm!615812))

(assert (= (or b!6785172 bm!615813) bm!615815))

(assert (= (or b!6785172 bm!615812) bm!615814))

(assert (= (or b!6785176 bm!615814) bm!615816))

(assert (= (or b!6785176 b!6785172) bm!615817))

(declare-fun m!7533692 () Bool)

(assert (=> b!6785169 m!7533692))

(declare-fun m!7533694 () Bool)

(assert (=> b!6785173 m!7533694))

(declare-fun m!7533696 () Bool)

(assert (=> bm!615816 m!7533696))

(declare-fun m!7533698 () Bool)

(assert (=> bm!615815 m!7533698))

(declare-fun m!7533700 () Bool)

(assert (=> bm!615817 m!7533700))

(assert (=> bm!615498 d!2132000))

(declare-fun d!2132002 () Bool)

(assert (=> d!2132002 (= (Exists!3673 lambda!381920) (choose!50521 lambda!381920))))

(declare-fun bs!1807529 () Bool)

(assert (= bs!1807529 d!2132002))

(declare-fun m!7533702 () Bool)

(assert (=> bs!1807529 m!7533702))

(assert (=> d!2131228 d!2132002))

(declare-fun d!2132004 () Bool)

(assert (=> d!2132004 (= (Exists!3673 lambda!381921) (choose!50521 lambda!381921))))

(declare-fun bs!1807530 () Bool)

(assert (= bs!1807530 d!2132004))

(declare-fun m!7533704 () Bool)

(assert (=> bs!1807530 m!7533704))

(assert (=> d!2131228 d!2132004))

(declare-fun bs!1807531 () Bool)

(declare-fun d!2132006 () Bool)

(assert (= bs!1807531 (and d!2132006 d!2131216)))

(declare-fun lambda!382037 () Int)

(assert (=> bs!1807531 (not (= lambda!382037 lambda!381913))))

(declare-fun bs!1807532 () Bool)

(assert (= bs!1807532 (and d!2132006 b!6783436)))

(assert (=> bs!1807532 (not (= lambda!382037 lambda!381899))))

(declare-fun bs!1807533 () Bool)

(assert (= bs!1807533 (and d!2132006 d!2131228)))

(assert (=> bs!1807533 (= lambda!382037 lambda!381920)))

(declare-fun bs!1807534 () Bool)

(assert (= bs!1807534 (and d!2132006 d!2131828)))

(assert (=> bs!1807534 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!382037 lambda!382011))))

(declare-fun bs!1807535 () Bool)

(assert (= bs!1807535 (and d!2132006 b!6783428)))

(assert (=> bs!1807535 (not (= lambda!382037 lambda!381902))))

(declare-fun bs!1807536 () Bool)

(assert (= bs!1807536 (and d!2132006 b!6784995)))

(assert (=> bs!1807536 (not (= lambda!382037 lambda!382018))))

(declare-fun bs!1807537 () Bool)

(assert (= bs!1807537 (and d!2132006 b!6784608)))

(assert (=> bs!1807537 (not (= lambda!382037 lambda!381993))))

(declare-fun bs!1807538 () Bool)

(assert (= bs!1807538 (and d!2132006 b!6783758)))

(assert (=> bs!1807538 (not (= lambda!382037 lambda!381938))))

(declare-fun bs!1807539 () Bool)

(assert (= bs!1807539 (and d!2132006 b!6782923)))

(assert (=> bs!1807539 (not (= lambda!382037 lambda!381849))))

(assert (=> bs!1807539 (not (= lambda!382037 lambda!381848))))

(declare-fun bs!1807540 () Bool)

(assert (= bs!1807540 (and d!2132006 b!6784853)))

(assert (=> bs!1807540 (not (= lambda!382037 lambda!382006))))

(declare-fun bs!1807541 () Bool)

(assert (= bs!1807541 (and d!2132006 b!6784616)))

(assert (=> bs!1807541 (not (= lambda!382037 lambda!381992))))

(declare-fun bs!1807542 () Bool)

(assert (= bs!1807542 (and d!2132006 b!6783750)))

(assert (=> bs!1807542 (not (= lambda!382037 lambda!381939))))

(declare-fun bs!1807543 () Bool)

(assert (= bs!1807543 (and d!2132006 b!6785003)))

(assert (=> bs!1807543 (not (= lambda!382037 lambda!382017))))

(assert (=> bs!1807531 (= (= r!7292 (Star!16605 (reg!16934 r!7292))) (= lambda!382037 lambda!381912))))

(declare-fun bs!1807544 () Bool)

(assert (= bs!1807544 (and d!2132006 b!6784861)))

(assert (=> bs!1807544 (not (= lambda!382037 lambda!382005))))

(declare-fun bs!1807545 () Bool)

(assert (= bs!1807545 (and d!2132006 d!2131914)))

(assert (=> bs!1807545 (= lambda!382037 lambda!382022)))

(assert (=> bs!1807533 (not (= lambda!382037 lambda!381921))))

(assert (=> bs!1807539 (= lambda!382037 lambda!381847)))

(assert (=> bs!1807534 (not (= lambda!382037 lambda!382012))))

(declare-fun bs!1807546 () Bool)

(assert (= bs!1807546 (and d!2132006 d!2131260)))

(assert (=> bs!1807546 (= lambda!382037 lambda!381930)))

(assert (=> d!2132006 true))

(assert (=> d!2132006 true))

(assert (=> d!2132006 true))

(declare-fun lambda!382038 () Int)

(assert (=> bs!1807531 (not (= lambda!382038 lambda!381913))))

(assert (=> bs!1807532 (not (= lambda!382038 lambda!381899))))

(assert (=> bs!1807533 (not (= lambda!382038 lambda!381920))))

(declare-fun bs!1807547 () Bool)

(assert (= bs!1807547 d!2132006))

(assert (=> bs!1807547 (not (= lambda!382038 lambda!382037))))

(assert (=> bs!1807534 (not (= lambda!382038 lambda!382011))))

(assert (=> bs!1807535 (= (and (= (reg!16934 r!7292) (regOne!33722 r!7292)) (= r!7292 (regTwo!33722 r!7292))) (= lambda!382038 lambda!381902))))

(assert (=> bs!1807536 (= (and (= (reg!16934 r!7292) (regOne!33722 (regOne!33723 lt!2445192))) (= r!7292 (regTwo!33722 (regOne!33723 lt!2445192)))) (= lambda!382038 lambda!382018))))

(assert (=> bs!1807537 (= (and (= (reg!16934 r!7292) (regOne!33722 (regOne!33723 r!7292))) (= r!7292 (regTwo!33722 (regOne!33723 r!7292)))) (= lambda!382038 lambda!381993))))

(assert (=> bs!1807538 (not (= lambda!382038 lambda!381938))))

(assert (=> bs!1807539 (= lambda!382038 lambda!381849)))

(assert (=> bs!1807539 (not (= lambda!382038 lambda!381848))))

(assert (=> bs!1807540 (= (and (= (reg!16934 r!7292) (regOne!33722 (regTwo!33723 lt!2445192))) (= r!7292 (regTwo!33722 (regTwo!33723 lt!2445192)))) (= lambda!382038 lambda!382006))))

(assert (=> bs!1807541 (not (= lambda!382038 lambda!381992))))

(assert (=> bs!1807542 (= (and (= (reg!16934 r!7292) (regOne!33722 lt!2445192)) (= r!7292 (regTwo!33722 lt!2445192))) (= lambda!382038 lambda!381939))))

(assert (=> bs!1807543 (not (= lambda!382038 lambda!382017))))

(assert (=> bs!1807531 (not (= lambda!382038 lambda!381912))))

(assert (=> bs!1807544 (not (= lambda!382038 lambda!382005))))

(assert (=> bs!1807545 (not (= lambda!382038 lambda!382022))))

(assert (=> bs!1807533 (= lambda!382038 lambda!381921)))

(assert (=> bs!1807539 (not (= lambda!382038 lambda!381847))))

(assert (=> bs!1807534 (not (= lambda!382038 lambda!382012))))

(assert (=> bs!1807546 (not (= lambda!382038 lambda!381930))))

(assert (=> d!2132006 true))

(assert (=> d!2132006 true))

(assert (=> d!2132006 true))

(assert (=> d!2132006 (= (Exists!3673 lambda!382037) (Exists!3673 lambda!382038))))

(assert (=> d!2132006 true))

(declare-fun _$90!2662 () Unit!159901)

(assert (=> d!2132006 (= (choose!50530 (reg!16934 r!7292) r!7292 s!2326) _$90!2662)))

(declare-fun m!7533706 () Bool)

(assert (=> bs!1807547 m!7533706))

(declare-fun m!7533708 () Bool)

(assert (=> bs!1807547 m!7533708))

(assert (=> d!2131228 d!2132006))

(assert (=> d!2131228 d!2131798))

(declare-fun d!2132008 () Bool)

(assert (=> d!2132008 (= (isEmpty!38355 (t!379832 (unfocusZipperList!2026 zl!343))) ((_ is Nil!65991) (t!379832 (unfocusZipperList!2026 zl!343))))))

(assert (=> b!6783741 d!2132008))

(declare-fun b!6785187 () Bool)

(declare-fun e!4095759 () Bool)

(assert (=> b!6785187 (= e!4095759 (matchR!8788 (derivativeStep!5269 (derivativeStep!5269 r!7292 (head!13620 s!2326)) (head!13620 (tail!12705 s!2326))) (tail!12705 (tail!12705 s!2326))))))

(declare-fun b!6785188 () Bool)

(assert (=> b!6785188 (= e!4095759 (nullable!6584 (derivativeStep!5269 r!7292 (head!13620 s!2326))))))

(declare-fun b!6785189 () Bool)

(declare-fun e!4095755 () Bool)

(declare-fun lt!2445438 () Bool)

(assert (=> b!6785189 (= e!4095755 (not lt!2445438))))

(declare-fun b!6785190 () Bool)

(declare-fun e!4095756 () Bool)

(assert (=> b!6785190 (= e!4095756 e!4095755)))

(declare-fun c!1260792 () Bool)

(assert (=> b!6785190 (= c!1260792 ((_ is EmptyLang!16605) (derivativeStep!5269 r!7292 (head!13620 s!2326))))))

(declare-fun b!6785191 () Bool)

(declare-fun res!2773344 () Bool)

(declare-fun e!4095757 () Bool)

(assert (=> b!6785191 (=> (not res!2773344) (not e!4095757))))

(declare-fun call!615823 () Bool)

(assert (=> b!6785191 (= res!2773344 (not call!615823))))

(declare-fun b!6785192 () Bool)

(declare-fun res!2773343 () Bool)

(declare-fun e!4095758 () Bool)

(assert (=> b!6785192 (=> res!2773343 e!4095758)))

(assert (=> b!6785192 (= res!2773343 e!4095757)))

(declare-fun res!2773347 () Bool)

(assert (=> b!6785192 (=> (not res!2773347) (not e!4095757))))

(assert (=> b!6785192 (= res!2773347 lt!2445438)))

(declare-fun b!6785193 () Bool)

(assert (=> b!6785193 (= e!4095756 (= lt!2445438 call!615823))))

(declare-fun b!6785194 () Bool)

(declare-fun e!4095761 () Bool)

(declare-fun e!4095760 () Bool)

(assert (=> b!6785194 (= e!4095761 e!4095760)))

(declare-fun res!2773342 () Bool)

(assert (=> b!6785194 (=> res!2773342 e!4095760)))

(assert (=> b!6785194 (= res!2773342 call!615823)))

(declare-fun b!6785195 () Bool)

(declare-fun res!2773345 () Bool)

(assert (=> b!6785195 (=> res!2773345 e!4095758)))

(assert (=> b!6785195 (= res!2773345 (not ((_ is ElementMatch!16605) (derivativeStep!5269 r!7292 (head!13620 s!2326)))))))

(assert (=> b!6785195 (= e!4095755 e!4095758)))

(declare-fun b!6785196 () Bool)

(assert (=> b!6785196 (= e!4095760 (not (= (head!13620 (tail!12705 s!2326)) (c!1260145 (derivativeStep!5269 r!7292 (head!13620 s!2326))))))))

(declare-fun b!6785197 () Bool)

(assert (=> b!6785197 (= e!4095757 (= (head!13620 (tail!12705 s!2326)) (c!1260145 (derivativeStep!5269 r!7292 (head!13620 s!2326)))))))

(declare-fun b!6785198 () Bool)

(assert (=> b!6785198 (= e!4095758 e!4095761)))

(declare-fun res!2773346 () Bool)

(assert (=> b!6785198 (=> (not res!2773346) (not e!4095761))))

(assert (=> b!6785198 (= res!2773346 (not lt!2445438))))

(declare-fun bm!615818 () Bool)

(assert (=> bm!615818 (= call!615823 (isEmpty!38354 (tail!12705 s!2326)))))

(declare-fun d!2132010 () Bool)

(assert (=> d!2132010 e!4095756))

(declare-fun c!1260790 () Bool)

(assert (=> d!2132010 (= c!1260790 ((_ is EmptyExpr!16605) (derivativeStep!5269 r!7292 (head!13620 s!2326))))))

(assert (=> d!2132010 (= lt!2445438 e!4095759)))

(declare-fun c!1260791 () Bool)

(assert (=> d!2132010 (= c!1260791 (isEmpty!38354 (tail!12705 s!2326)))))

(assert (=> d!2132010 (validRegex!8341 (derivativeStep!5269 r!7292 (head!13620 s!2326)))))

(assert (=> d!2132010 (= (matchR!8788 (derivativeStep!5269 r!7292 (head!13620 s!2326)) (tail!12705 s!2326)) lt!2445438)))

(declare-fun b!6785199 () Bool)

(declare-fun res!2773340 () Bool)

(assert (=> b!6785199 (=> res!2773340 e!4095760)))

(assert (=> b!6785199 (= res!2773340 (not (isEmpty!38354 (tail!12705 (tail!12705 s!2326)))))))

(declare-fun b!6785200 () Bool)

(declare-fun res!2773341 () Bool)

(assert (=> b!6785200 (=> (not res!2773341) (not e!4095757))))

(assert (=> b!6785200 (= res!2773341 (isEmpty!38354 (tail!12705 (tail!12705 s!2326))))))

(assert (= (and d!2132010 c!1260791) b!6785188))

(assert (= (and d!2132010 (not c!1260791)) b!6785187))

(assert (= (and d!2132010 c!1260790) b!6785193))

(assert (= (and d!2132010 (not c!1260790)) b!6785190))

(assert (= (and b!6785190 c!1260792) b!6785189))

(assert (= (and b!6785190 (not c!1260792)) b!6785195))

(assert (= (and b!6785195 (not res!2773345)) b!6785192))

(assert (= (and b!6785192 res!2773347) b!6785191))

(assert (= (and b!6785191 res!2773344) b!6785200))

(assert (= (and b!6785200 res!2773341) b!6785197))

(assert (= (and b!6785192 (not res!2773343)) b!6785198))

(assert (= (and b!6785198 res!2773346) b!6785194))

(assert (= (and b!6785194 (not res!2773342)) b!6785199))

(assert (= (and b!6785199 (not res!2773340)) b!6785196))

(assert (= (or b!6785193 b!6785191 b!6785194) bm!615818))

(assert (=> b!6785200 m!7531476))

(assert (=> b!6785200 m!7533134))

(assert (=> b!6785200 m!7533134))

(assert (=> b!6785200 m!7533366))

(assert (=> b!6785196 m!7531476))

(assert (=> b!6785196 m!7533130))

(assert (=> b!6785199 m!7531476))

(assert (=> b!6785199 m!7533134))

(assert (=> b!6785199 m!7533134))

(assert (=> b!6785199 m!7533366))

(assert (=> b!6785187 m!7531476))

(assert (=> b!6785187 m!7533130))

(assert (=> b!6785187 m!7531936))

(assert (=> b!6785187 m!7533130))

(declare-fun m!7533710 () Bool)

(assert (=> b!6785187 m!7533710))

(assert (=> b!6785187 m!7531476))

(assert (=> b!6785187 m!7533134))

(assert (=> b!6785187 m!7533710))

(assert (=> b!6785187 m!7533134))

(declare-fun m!7533712 () Bool)

(assert (=> b!6785187 m!7533712))

(assert (=> d!2132010 m!7531476))

(assert (=> d!2132010 m!7531934))

(assert (=> d!2132010 m!7531936))

(declare-fun m!7533714 () Bool)

(assert (=> d!2132010 m!7533714))

(assert (=> b!6785188 m!7531936))

(declare-fun m!7533716 () Bool)

(assert (=> b!6785188 m!7533716))

(assert (=> bm!615818 m!7531476))

(assert (=> bm!615818 m!7531934))

(assert (=> b!6785197 m!7531476))

(assert (=> b!6785197 m!7533130))

(assert (=> b!6783454 d!2132010))

(declare-fun b!6785201 () Bool)

(declare-fun e!4095764 () Regex!16605)

(declare-fun e!4095763 () Regex!16605)

(assert (=> b!6785201 (= e!4095764 e!4095763)))

(declare-fun c!1260794 () Bool)

(assert (=> b!6785201 (= c!1260794 ((_ is Star!16605) r!7292))))

(declare-fun b!6785202 () Bool)

(declare-fun c!1260796 () Bool)

(assert (=> b!6785202 (= c!1260796 (nullable!6584 (regOne!33722 r!7292)))))

(declare-fun e!4095762 () Regex!16605)

(assert (=> b!6785202 (= e!4095763 e!4095762)))

(declare-fun b!6785203 () Bool)

(declare-fun call!615826 () Regex!16605)

(assert (=> b!6785203 (= e!4095763 (Concat!25450 call!615826 r!7292))))

(declare-fun bm!615819 () Bool)

(declare-fun call!615825 () Regex!16605)

(assert (=> bm!615819 (= call!615825 call!615826)))

(declare-fun call!615824 () Regex!16605)

(declare-fun b!6785204 () Bool)

(assert (=> b!6785204 (= e!4095762 (Union!16605 (Concat!25450 call!615824 (regTwo!33722 r!7292)) call!615825))))

(declare-fun c!1260797 () Bool)

(declare-fun call!615827 () Regex!16605)

(declare-fun bm!615820 () Bool)

(assert (=> bm!615820 (= call!615827 (derivativeStep!5269 (ite c!1260797 (regTwo!33723 r!7292) (ite c!1260794 (reg!16934 r!7292) (ite c!1260796 (regTwo!33722 r!7292) (regOne!33722 r!7292)))) (head!13620 s!2326)))))

(declare-fun b!6785205 () Bool)

(assert (=> b!6785205 (= e!4095764 (Union!16605 call!615824 call!615827))))

(declare-fun b!6785206 () Bool)

(assert (=> b!6785206 (= c!1260797 ((_ is Union!16605) r!7292))))

(declare-fun e!4095766 () Regex!16605)

(assert (=> b!6785206 (= e!4095766 e!4095764)))

(declare-fun d!2132012 () Bool)

(declare-fun lt!2445439 () Regex!16605)

(assert (=> d!2132012 (validRegex!8341 lt!2445439)))

(declare-fun e!4095765 () Regex!16605)

(assert (=> d!2132012 (= lt!2445439 e!4095765)))

(declare-fun c!1260793 () Bool)

(assert (=> d!2132012 (= c!1260793 (or ((_ is EmptyExpr!16605) r!7292) ((_ is EmptyLang!16605) r!7292)))))

(assert (=> d!2132012 (validRegex!8341 r!7292)))

(assert (=> d!2132012 (= (derivativeStep!5269 r!7292 (head!13620 s!2326)) lt!2445439)))

(declare-fun bm!615821 () Bool)

(assert (=> bm!615821 (= call!615826 call!615827)))

(declare-fun b!6785207 () Bool)

(assert (=> b!6785207 (= e!4095766 (ite (= (head!13620 s!2326) (c!1260145 r!7292)) EmptyExpr!16605 EmptyLang!16605))))

(declare-fun b!6785208 () Bool)

(assert (=> b!6785208 (= e!4095765 EmptyLang!16605)))

(declare-fun b!6785209 () Bool)

(assert (=> b!6785209 (= e!4095765 e!4095766)))

(declare-fun c!1260795 () Bool)

(assert (=> b!6785209 (= c!1260795 ((_ is ElementMatch!16605) r!7292))))

(declare-fun b!6785210 () Bool)

(assert (=> b!6785210 (= e!4095762 (Union!16605 (Concat!25450 call!615825 (regTwo!33722 r!7292)) EmptyLang!16605))))

(declare-fun bm!615822 () Bool)

(assert (=> bm!615822 (= call!615824 (derivativeStep!5269 (ite c!1260797 (regOne!33723 r!7292) (regOne!33722 r!7292)) (head!13620 s!2326)))))

(assert (= (and d!2132012 c!1260793) b!6785208))

(assert (= (and d!2132012 (not c!1260793)) b!6785209))

(assert (= (and b!6785209 c!1260795) b!6785207))

(assert (= (and b!6785209 (not c!1260795)) b!6785206))

(assert (= (and b!6785206 c!1260797) b!6785205))

(assert (= (and b!6785206 (not c!1260797)) b!6785201))

(assert (= (and b!6785201 c!1260794) b!6785203))

(assert (= (and b!6785201 (not c!1260794)) b!6785202))

(assert (= (and b!6785202 c!1260796) b!6785204))

(assert (= (and b!6785202 (not c!1260796)) b!6785210))

(assert (= (or b!6785204 b!6785210) bm!615819))

(assert (= (or b!6785203 bm!615819) bm!615821))

(assert (= (or b!6785205 bm!615821) bm!615820))

(assert (= (or b!6785205 b!6785204) bm!615822))

(assert (=> b!6785202 m!7531834))

(assert (=> bm!615820 m!7531472))

(declare-fun m!7533718 () Bool)

(assert (=> bm!615820 m!7533718))

(declare-fun m!7533720 () Bool)

(assert (=> d!2132012 m!7533720))

(assert (=> d!2132012 m!7531348))

(assert (=> bm!615822 m!7531472))

(declare-fun m!7533722 () Bool)

(assert (=> bm!615822 m!7533722))

(assert (=> b!6783454 d!2132012))

(assert (=> b!6783454 d!2131770))

(assert (=> b!6783454 d!2131772))

(assert (=> d!2131192 d!2131222))

(assert (=> d!2131192 d!2131282))

(declare-fun bs!1807548 () Bool)

(declare-fun b!6785219 () Bool)

(assert (= bs!1807548 (and b!6785219 d!2131216)))

(declare-fun lambda!382039 () Int)

(assert (=> bs!1807548 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33723 r!7292) (Star!16605 (reg!16934 r!7292)))) (= lambda!382039 lambda!381913))))

(declare-fun bs!1807549 () Bool)

(assert (= bs!1807549 (and b!6785219 b!6783436)))

(assert (=> bs!1807549 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33723 r!7292) r!7292)) (= lambda!382039 lambda!381899))))

(declare-fun bs!1807550 () Bool)

(assert (= bs!1807550 (and b!6785219 d!2131228)))

(assert (=> bs!1807550 (not (= lambda!382039 lambda!381920))))

(declare-fun bs!1807551 () Bool)

(assert (= bs!1807551 (and b!6785219 d!2132006)))

(assert (=> bs!1807551 (not (= lambda!382039 lambda!382037))))

(declare-fun bs!1807552 () Bool)

(assert (= bs!1807552 (and b!6785219 d!2131828)))

(assert (=> bs!1807552 (not (= lambda!382039 lambda!382011))))

(declare-fun bs!1807553 () Bool)

(assert (= bs!1807553 (and b!6785219 b!6783428)))

(assert (=> bs!1807553 (not (= lambda!382039 lambda!381902))))

(declare-fun bs!1807554 () Bool)

(assert (= bs!1807554 (and b!6785219 b!6784995)))

(assert (=> bs!1807554 (not (= lambda!382039 lambda!382018))))

(declare-fun bs!1807555 () Bool)

(assert (= bs!1807555 (and b!6785219 b!6784608)))

(assert (=> bs!1807555 (not (= lambda!382039 lambda!381993))))

(assert (=> bs!1807551 (not (= lambda!382039 lambda!382038))))

(declare-fun bs!1807556 () Bool)

(assert (= bs!1807556 (and b!6785219 b!6783758)))

(assert (=> bs!1807556 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 lt!2445192)) (= (regTwo!33723 r!7292) lt!2445192)) (= lambda!382039 lambda!381938))))

(declare-fun bs!1807557 () Bool)

(assert (= bs!1807557 (and b!6785219 b!6782923)))

(assert (=> bs!1807557 (not (= lambda!382039 lambda!381849))))

(assert (=> bs!1807557 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33723 r!7292) r!7292)) (= lambda!382039 lambda!381848))))

(declare-fun bs!1807558 () Bool)

(assert (= bs!1807558 (and b!6785219 b!6784853)))

(assert (=> bs!1807558 (not (= lambda!382039 lambda!382006))))

(declare-fun bs!1807559 () Bool)

(assert (= bs!1807559 (and b!6785219 b!6784616)))

(assert (=> bs!1807559 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 (regOne!33723 r!7292))) (= (regTwo!33723 r!7292) (regOne!33723 r!7292))) (= lambda!382039 lambda!381992))))

(declare-fun bs!1807560 () Bool)

(assert (= bs!1807560 (and b!6785219 b!6783750)))

(assert (=> bs!1807560 (not (= lambda!382039 lambda!381939))))

(declare-fun bs!1807561 () Bool)

(assert (= bs!1807561 (and b!6785219 b!6785003)))

(assert (=> bs!1807561 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 (regOne!33723 lt!2445192))) (= (regTwo!33723 r!7292) (regOne!33723 lt!2445192))) (= lambda!382039 lambda!382017))))

(assert (=> bs!1807548 (not (= lambda!382039 lambda!381912))))

(declare-fun bs!1807562 () Bool)

(assert (= bs!1807562 (and b!6785219 b!6784861)))

(assert (=> bs!1807562 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 (regTwo!33723 lt!2445192))) (= (regTwo!33723 r!7292) (regTwo!33723 lt!2445192))) (= lambda!382039 lambda!382005))))

(declare-fun bs!1807563 () Bool)

(assert (= bs!1807563 (and b!6785219 d!2131914)))

(assert (=> bs!1807563 (not (= lambda!382039 lambda!382022))))

(assert (=> bs!1807550 (not (= lambda!382039 lambda!381921))))

(assert (=> bs!1807557 (not (= lambda!382039 lambda!381847))))

(assert (=> bs!1807552 (= (and (= (reg!16934 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33723 r!7292) (Star!16605 (reg!16934 r!7292)))) (= lambda!382039 lambda!382012))))

(declare-fun bs!1807564 () Bool)

(assert (= bs!1807564 (and b!6785219 d!2131260)))

(assert (=> bs!1807564 (not (= lambda!382039 lambda!381930))))

(assert (=> b!6785219 true))

(assert (=> b!6785219 true))

(declare-fun bs!1807565 () Bool)

(declare-fun b!6785211 () Bool)

(assert (= bs!1807565 (and b!6785211 b!6783436)))

(declare-fun lambda!382040 () Int)

(assert (=> bs!1807565 (not (= lambda!382040 lambda!381899))))

(declare-fun bs!1807566 () Bool)

(assert (= bs!1807566 (and b!6785211 d!2131228)))

(assert (=> bs!1807566 (not (= lambda!382040 lambda!381920))))

(declare-fun bs!1807567 () Bool)

(assert (= bs!1807567 (and b!6785211 d!2132006)))

(assert (=> bs!1807567 (not (= lambda!382040 lambda!382037))))

(declare-fun bs!1807568 () Bool)

(assert (= bs!1807568 (and b!6785211 d!2131828)))

(assert (=> bs!1807568 (not (= lambda!382040 lambda!382011))))

(declare-fun bs!1807569 () Bool)

(assert (= bs!1807569 (and b!6785211 b!6783428)))

(assert (=> bs!1807569 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (regOne!33722 r!7292)) (= (regTwo!33722 (regTwo!33723 r!7292)) (regTwo!33722 r!7292))) (= lambda!382040 lambda!381902))))

(declare-fun bs!1807570 () Bool)

(assert (= bs!1807570 (and b!6785211 b!6784995)))

(assert (=> bs!1807570 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (regOne!33722 (regOne!33723 lt!2445192))) (= (regTwo!33722 (regTwo!33723 r!7292)) (regTwo!33722 (regOne!33723 lt!2445192)))) (= lambda!382040 lambda!382018))))

(declare-fun bs!1807571 () Bool)

(assert (= bs!1807571 (and b!6785211 b!6784608)))

(assert (=> bs!1807571 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (regOne!33722 (regOne!33723 r!7292))) (= (regTwo!33722 (regTwo!33723 r!7292)) (regTwo!33722 (regOne!33723 r!7292)))) (= lambda!382040 lambda!381993))))

(assert (=> bs!1807567 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33722 (regTwo!33723 r!7292)) r!7292)) (= lambda!382040 lambda!382038))))

(declare-fun bs!1807572 () Bool)

(assert (= bs!1807572 (and b!6785211 b!6783758)))

(assert (=> bs!1807572 (not (= lambda!382040 lambda!381938))))

(declare-fun bs!1807573 () Bool)

(assert (= bs!1807573 (and b!6785211 b!6782923)))

(assert (=> bs!1807573 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33722 (regTwo!33723 r!7292)) r!7292)) (= lambda!382040 lambda!381849))))

(assert (=> bs!1807573 (not (= lambda!382040 lambda!381848))))

(declare-fun bs!1807574 () Bool)

(assert (= bs!1807574 (and b!6785211 b!6784853)))

(assert (=> bs!1807574 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (regOne!33722 (regTwo!33723 lt!2445192))) (= (regTwo!33722 (regTwo!33723 r!7292)) (regTwo!33722 (regTwo!33723 lt!2445192)))) (= lambda!382040 lambda!382006))))

(declare-fun bs!1807575 () Bool)

(assert (= bs!1807575 (and b!6785211 d!2131216)))

(assert (=> bs!1807575 (not (= lambda!382040 lambda!381913))))

(declare-fun bs!1807576 () Bool)

(assert (= bs!1807576 (and b!6785211 b!6785219)))

(assert (=> bs!1807576 (not (= lambda!382040 lambda!382039))))

(declare-fun bs!1807577 () Bool)

(assert (= bs!1807577 (and b!6785211 b!6784616)))

(assert (=> bs!1807577 (not (= lambda!382040 lambda!381992))))

(declare-fun bs!1807578 () Bool)

(assert (= bs!1807578 (and b!6785211 b!6783750)))

(assert (=> bs!1807578 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (regOne!33722 lt!2445192)) (= (regTwo!33722 (regTwo!33723 r!7292)) (regTwo!33722 lt!2445192))) (= lambda!382040 lambda!381939))))

(declare-fun bs!1807579 () Bool)

(assert (= bs!1807579 (and b!6785211 b!6785003)))

(assert (=> bs!1807579 (not (= lambda!382040 lambda!382017))))

(assert (=> bs!1807575 (not (= lambda!382040 lambda!381912))))

(declare-fun bs!1807580 () Bool)

(assert (= bs!1807580 (and b!6785211 b!6784861)))

(assert (=> bs!1807580 (not (= lambda!382040 lambda!382005))))

(declare-fun bs!1807581 () Bool)

(assert (= bs!1807581 (and b!6785211 d!2131914)))

(assert (=> bs!1807581 (not (= lambda!382040 lambda!382022))))

(assert (=> bs!1807566 (= (and (= (regOne!33722 (regTwo!33723 r!7292)) (reg!16934 r!7292)) (= (regTwo!33722 (regTwo!33723 r!7292)) r!7292)) (= lambda!382040 lambda!381921))))

(assert (=> bs!1807573 (not (= lambda!382040 lambda!381847))))

(assert (=> bs!1807568 (not (= lambda!382040 lambda!382012))))

(declare-fun bs!1807582 () Bool)

(assert (= bs!1807582 (and b!6785211 d!2131260)))

(assert (=> bs!1807582 (not (= lambda!382040 lambda!381930))))

(assert (=> b!6785211 true))

(assert (=> b!6785211 true))

(declare-fun e!4095771 () Bool)

(declare-fun call!615828 () Bool)

(assert (=> b!6785211 (= e!4095771 call!615828)))

(declare-fun bm!615823 () Bool)

(declare-fun call!615829 () Bool)

(assert (=> bm!615823 (= call!615829 (isEmpty!38354 s!2326))))

(declare-fun b!6785212 () Bool)

(declare-fun c!1260799 () Bool)

(assert (=> b!6785212 (= c!1260799 ((_ is ElementMatch!16605) (regTwo!33723 r!7292)))))

(declare-fun e!4095768 () Bool)

(declare-fun e!4095772 () Bool)

(assert (=> b!6785212 (= e!4095768 e!4095772)))

(declare-fun b!6785213 () Bool)

(declare-fun c!1260800 () Bool)

(assert (=> b!6785213 (= c!1260800 ((_ is Union!16605) (regTwo!33723 r!7292)))))

(declare-fun e!4095767 () Bool)

(assert (=> b!6785213 (= e!4095772 e!4095767)))

(declare-fun b!6785214 () Bool)

(declare-fun e!4095773 () Bool)

(assert (=> b!6785214 (= e!4095773 (matchRSpec!3706 (regTwo!33723 (regTwo!33723 r!7292)) s!2326))))

(declare-fun b!6785215 () Bool)

(declare-fun e!4095770 () Bool)

(assert (=> b!6785215 (= e!4095770 e!4095768)))

(declare-fun res!2773349 () Bool)

(assert (=> b!6785215 (= res!2773349 (not ((_ is EmptyLang!16605) (regTwo!33723 r!7292))))))

(assert (=> b!6785215 (=> (not res!2773349) (not e!4095768))))

(declare-fun bm!615824 () Bool)

(declare-fun c!1260801 () Bool)

(assert (=> bm!615824 (= call!615828 (Exists!3673 (ite c!1260801 lambda!382039 lambda!382040)))))

(declare-fun b!6785217 () Bool)

(assert (=> b!6785217 (= e!4095772 (= s!2326 (Cons!65990 (c!1260145 (regTwo!33723 r!7292)) Nil!65990)))))

(declare-fun b!6785218 () Bool)

(assert (=> b!6785218 (= e!4095767 e!4095771)))

(assert (=> b!6785218 (= c!1260801 ((_ is Star!16605) (regTwo!33723 r!7292)))))

(declare-fun e!4095769 () Bool)

(assert (=> b!6785219 (= e!4095769 call!615828)))

(declare-fun d!2132014 () Bool)

(declare-fun c!1260798 () Bool)

(assert (=> d!2132014 (= c!1260798 ((_ is EmptyExpr!16605) (regTwo!33723 r!7292)))))

(assert (=> d!2132014 (= (matchRSpec!3706 (regTwo!33723 r!7292) s!2326) e!4095770)))

(declare-fun b!6785216 () Bool)

(declare-fun res!2773350 () Bool)

(assert (=> b!6785216 (=> res!2773350 e!4095769)))

(assert (=> b!6785216 (= res!2773350 call!615829)))

(assert (=> b!6785216 (= e!4095771 e!4095769)))

(declare-fun b!6785220 () Bool)

(assert (=> b!6785220 (= e!4095767 e!4095773)))

(declare-fun res!2773348 () Bool)

(assert (=> b!6785220 (= res!2773348 (matchRSpec!3706 (regOne!33723 (regTwo!33723 r!7292)) s!2326))))

(assert (=> b!6785220 (=> res!2773348 e!4095773)))

(declare-fun b!6785221 () Bool)

(assert (=> b!6785221 (= e!4095770 call!615829)))

(assert (= (and d!2132014 c!1260798) b!6785221))

(assert (= (and d!2132014 (not c!1260798)) b!6785215))

(assert (= (and b!6785215 res!2773349) b!6785212))

(assert (= (and b!6785212 c!1260799) b!6785217))

(assert (= (and b!6785212 (not c!1260799)) b!6785213))

(assert (= (and b!6785213 c!1260800) b!6785220))

(assert (= (and b!6785213 (not c!1260800)) b!6785218))

(assert (= (and b!6785220 (not res!2773348)) b!6785214))

(assert (= (and b!6785218 c!1260801) b!6785216))

(assert (= (and b!6785218 (not c!1260801)) b!6785211))

(assert (= (and b!6785216 (not res!2773350)) b!6785219))

(assert (= (or b!6785219 b!6785211) bm!615824))

(assert (= (or b!6785221 b!6785216) bm!615823))

(assert (=> bm!615823 m!7531404))

(declare-fun m!7533724 () Bool)

(assert (=> b!6785214 m!7533724))

(declare-fun m!7533726 () Bool)

(assert (=> bm!615824 m!7533726))

(declare-fun m!7533728 () Bool)

(assert (=> b!6785220 m!7533728))

(assert (=> b!6783431 d!2132014))

(assert (=> b!6783301 d!2131774))

(assert (=> b!6783301 d!2131676))

(declare-fun bs!1807583 () Bool)

(declare-fun d!2132016 () Bool)

(assert (= bs!1807583 (and d!2132016 d!2131696)))

(declare-fun lambda!382041 () Int)

(assert (=> bs!1807583 (= lambda!382041 lambda!381994)))

(declare-fun bs!1807584 () Bool)

(assert (= bs!1807584 (and d!2132016 d!2131102)))

(assert (=> bs!1807584 (= lambda!382041 lambda!381869)))

(declare-fun bs!1807585 () Bool)

(assert (= bs!1807585 (and d!2132016 d!2131664)))

(assert (=> bs!1807585 (= lambda!382041 lambda!381991)))

(declare-fun bs!1807586 () Bool)

(assert (= bs!1807586 (and d!2132016 d!2131272)))

(assert (=> bs!1807586 (= lambda!382041 lambda!381934)))

(declare-fun bs!1807587 () Bool)

(assert (= bs!1807587 (and d!2132016 d!2131974)))

(assert (=> bs!1807587 (= lambda!382041 lambda!382031)))

(declare-fun bs!1807588 () Bool)

(assert (= bs!1807588 (and d!2132016 d!2131932)))

(assert (=> bs!1807588 (= lambda!382041 lambda!382025)))

(declare-fun bs!1807589 () Bool)

(assert (= bs!1807589 (and d!2132016 d!2131834)))

(assert (=> bs!1807589 (= lambda!382041 lambda!382013)))

(declare-fun bs!1807590 () Bool)

(assert (= bs!1807590 (and d!2132016 d!2131274)))

(assert (=> bs!1807590 (= lambda!382041 lambda!381937)))

(declare-fun bs!1807591 () Bool)

(assert (= bs!1807591 (and d!2132016 d!2131976)))

(assert (=> bs!1807591 (= lambda!382041 lambda!382032)))

(declare-fun bs!1807592 () Bool)

(assert (= bs!1807592 (and d!2132016 d!2131810)))

(assert (=> bs!1807592 (= lambda!382041 lambda!382004)))

(declare-fun bs!1807593 () Bool)

(assert (= bs!1807593 (and d!2132016 d!2131134)))

(assert (=> bs!1807593 (= lambda!382041 lambda!381884)))

(declare-fun bs!1807594 () Bool)

(assert (= bs!1807594 (and d!2132016 d!2131946)))

(assert (=> bs!1807594 (= lambda!382041 lambda!382026)))

(declare-fun bs!1807595 () Bool)

(assert (= bs!1807595 (and d!2132016 d!2131876)))

(assert (=> bs!1807595 (= lambda!382041 lambda!382019)))

(declare-fun bs!1807596 () Bool)

(assert (= bs!1807596 (and d!2132016 b!6782898)))

(assert (=> bs!1807596 (= lambda!382041 lambda!381851)))

(declare-fun bs!1807597 () Bool)

(assert (= bs!1807597 (and d!2132016 d!2131058)))

(assert (=> bs!1807597 (= lambda!382041 lambda!381857)))

(declare-fun bs!1807598 () Bool)

(assert (= bs!1807598 (and d!2132016 d!2131948)))

(assert (=> bs!1807598 (= lambda!382041 lambda!382027)))

(declare-fun bs!1807599 () Bool)

(assert (= bs!1807599 (and d!2132016 d!2131836)))

(assert (=> bs!1807599 (= lambda!382041 lambda!382014)))

(declare-fun bs!1807600 () Bool)

(assert (= bs!1807600 (and d!2132016 d!2131166)))

(assert (=> bs!1807600 (= lambda!382041 lambda!381888)))

(declare-fun b!6785222 () Bool)

(declare-fun e!4095776 () Bool)

(declare-fun lt!2445440 () Regex!16605)

(assert (=> b!6785222 (= e!4095776 (isUnion!1400 lt!2445440))))

(declare-fun b!6785223 () Bool)

(declare-fun e!4095774 () Regex!16605)

(declare-fun e!4095778 () Regex!16605)

(assert (=> b!6785223 (= e!4095774 e!4095778)))

(declare-fun c!1260804 () Bool)

(assert (=> b!6785223 (= c!1260804 ((_ is Cons!65991) (t!379832 (unfocusZipperList!2026 zl!343))))))

(declare-fun b!6785224 () Bool)

(declare-fun e!4095777 () Bool)

(assert (=> b!6785224 (= e!4095777 e!4095776)))

(declare-fun c!1260805 () Bool)

(assert (=> b!6785224 (= c!1260805 (isEmpty!38355 (tail!12706 (t!379832 (unfocusZipperList!2026 zl!343)))))))

(declare-fun e!4095775 () Bool)

(assert (=> d!2132016 e!4095775))

(declare-fun res!2773352 () Bool)

(assert (=> d!2132016 (=> (not res!2773352) (not e!4095775))))

(assert (=> d!2132016 (= res!2773352 (validRegex!8341 lt!2445440))))

(assert (=> d!2132016 (= lt!2445440 e!4095774)))

(declare-fun c!1260802 () Bool)

(declare-fun e!4095779 () Bool)

(assert (=> d!2132016 (= c!1260802 e!4095779)))

(declare-fun res!2773351 () Bool)

(assert (=> d!2132016 (=> (not res!2773351) (not e!4095779))))

(assert (=> d!2132016 (= res!2773351 ((_ is Cons!65991) (t!379832 (unfocusZipperList!2026 zl!343))))))

(assert (=> d!2132016 (forall!15797 (t!379832 (unfocusZipperList!2026 zl!343)) lambda!382041)))

(assert (=> d!2132016 (= (generalisedUnion!2449 (t!379832 (unfocusZipperList!2026 zl!343))) lt!2445440)))

(declare-fun b!6785225 () Bool)

(assert (=> b!6785225 (= e!4095778 (Union!16605 (h!72439 (t!379832 (unfocusZipperList!2026 zl!343))) (generalisedUnion!2449 (t!379832 (t!379832 (unfocusZipperList!2026 zl!343))))))))

(declare-fun b!6785226 () Bool)

(assert (=> b!6785226 (= e!4095776 (= lt!2445440 (head!13621 (t!379832 (unfocusZipperList!2026 zl!343)))))))

(declare-fun b!6785227 () Bool)

(assert (=> b!6785227 (= e!4095778 EmptyLang!16605)))

(declare-fun b!6785228 () Bool)

(assert (=> b!6785228 (= e!4095777 (isEmptyLang!1970 lt!2445440))))

(declare-fun b!6785229 () Bool)

(assert (=> b!6785229 (= e!4095779 (isEmpty!38355 (t!379832 (t!379832 (unfocusZipperList!2026 zl!343)))))))

(declare-fun b!6785230 () Bool)

(assert (=> b!6785230 (= e!4095775 e!4095777)))

(declare-fun c!1260803 () Bool)

(assert (=> b!6785230 (= c!1260803 (isEmpty!38355 (t!379832 (unfocusZipperList!2026 zl!343))))))

(declare-fun b!6785231 () Bool)

(assert (=> b!6785231 (= e!4095774 (h!72439 (t!379832 (unfocusZipperList!2026 zl!343))))))

(assert (= (and d!2132016 res!2773351) b!6785229))

(assert (= (and d!2132016 c!1260802) b!6785231))

(assert (= (and d!2132016 (not c!1260802)) b!6785223))

(assert (= (and b!6785223 c!1260804) b!6785225))

(assert (= (and b!6785223 (not c!1260804)) b!6785227))

(assert (= (and d!2132016 res!2773352) b!6785230))

(assert (= (and b!6785230 c!1260803) b!6785228))

(assert (= (and b!6785230 (not c!1260803)) b!6785224))

(assert (= (and b!6785224 c!1260805) b!6785226))

(assert (= (and b!6785224 (not c!1260805)) b!6785222))

(declare-fun m!7533730 () Bool)

(assert (=> b!6785222 m!7533730))

(declare-fun m!7533732 () Bool)

(assert (=> b!6785226 m!7533732))

(declare-fun m!7533734 () Bool)

(assert (=> b!6785224 m!7533734))

(assert (=> b!6785224 m!7533734))

(declare-fun m!7533736 () Bool)

(assert (=> b!6785224 m!7533736))

(declare-fun m!7533738 () Bool)

(assert (=> b!6785228 m!7533738))

(declare-fun m!7533740 () Bool)

(assert (=> b!6785225 m!7533740))

(declare-fun m!7533742 () Bool)

(assert (=> b!6785229 m!7533742))

(declare-fun m!7533744 () Bool)

(assert (=> d!2132016 m!7533744))

(declare-fun m!7533746 () Bool)

(assert (=> d!2132016 m!7533746))

(assert (=> b!6785230 m!7532152))

(assert (=> b!6783737 d!2132016))

(declare-fun condSetEmpty!46423 () Bool)

(assert (=> setNonEmpty!46409 (= condSetEmpty!46423 (= setRest!46409 ((as const (Array Context!11978 Bool)) false)))))

(declare-fun setRes!46423 () Bool)

(assert (=> setNonEmpty!46409 (= tp!1858394 setRes!46423)))

(declare-fun setIsEmpty!46423 () Bool)

(assert (=> setIsEmpty!46423 setRes!46423))

(declare-fun setElem!46423 () Context!11978)

(declare-fun setNonEmpty!46423 () Bool)

(declare-fun tp!1858626 () Bool)

(declare-fun e!4095780 () Bool)

(assert (=> setNonEmpty!46423 (= setRes!46423 (and tp!1858626 (inv!84759 setElem!46423) e!4095780))))

(declare-fun setRest!46423 () (InoxSet Context!11978))

(assert (=> setNonEmpty!46423 (= setRest!46409 ((_ map or) (store ((as const (Array Context!11978 Bool)) false) setElem!46423 true) setRest!46423))))

(declare-fun b!6785232 () Bool)

(declare-fun tp!1858627 () Bool)

(assert (=> b!6785232 (= e!4095780 tp!1858627)))

(assert (= (and setNonEmpty!46409 condSetEmpty!46423) setIsEmpty!46423))

(assert (= (and setNonEmpty!46409 (not condSetEmpty!46423)) setNonEmpty!46423))

(assert (= setNonEmpty!46423 b!6785232))

(declare-fun m!7533748 () Bool)

(assert (=> setNonEmpty!46423 m!7533748))

(declare-fun e!4095781 () Bool)

(assert (=> b!6783843 (= tp!1858429 e!4095781)))

(declare-fun b!6785234 () Bool)

(declare-fun tp!1858630 () Bool)

(declare-fun tp!1858632 () Bool)

(assert (=> b!6785234 (= e!4095781 (and tp!1858630 tp!1858632))))

(declare-fun b!6785235 () Bool)

(declare-fun tp!1858631 () Bool)

(assert (=> b!6785235 (= e!4095781 tp!1858631)))

(declare-fun b!6785233 () Bool)

(assert (=> b!6785233 (= e!4095781 tp_is_empty!42463)))

(declare-fun b!6785236 () Bool)

(declare-fun tp!1858628 () Bool)

(declare-fun tp!1858629 () Bool)

(assert (=> b!6785236 (= e!4095781 (and tp!1858628 tp!1858629))))

(assert (= (and b!6783843 ((_ is ElementMatch!16605) (regOne!33722 (regTwo!33722 r!7292)))) b!6785233))

(assert (= (and b!6783843 ((_ is Concat!25450) (regOne!33722 (regTwo!33722 r!7292)))) b!6785234))

(assert (= (and b!6783843 ((_ is Star!16605) (regOne!33722 (regTwo!33722 r!7292)))) b!6785235))

(assert (= (and b!6783843 ((_ is Union!16605) (regOne!33722 (regTwo!33722 r!7292)))) b!6785236))

(declare-fun e!4095782 () Bool)

(assert (=> b!6783843 (= tp!1858431 e!4095782)))

(declare-fun b!6785238 () Bool)

(declare-fun tp!1858635 () Bool)

(declare-fun tp!1858637 () Bool)

(assert (=> b!6785238 (= e!4095782 (and tp!1858635 tp!1858637))))

(declare-fun b!6785239 () Bool)

(declare-fun tp!1858636 () Bool)

(assert (=> b!6785239 (= e!4095782 tp!1858636)))

(declare-fun b!6785237 () Bool)

(assert (=> b!6785237 (= e!4095782 tp_is_empty!42463)))

(declare-fun b!6785240 () Bool)

(declare-fun tp!1858633 () Bool)

(declare-fun tp!1858634 () Bool)

(assert (=> b!6785240 (= e!4095782 (and tp!1858633 tp!1858634))))

(assert (= (and b!6783843 ((_ is ElementMatch!16605) (regTwo!33722 (regTwo!33722 r!7292)))) b!6785237))

(assert (= (and b!6783843 ((_ is Concat!25450) (regTwo!33722 (regTwo!33722 r!7292)))) b!6785238))

(assert (= (and b!6783843 ((_ is Star!16605) (regTwo!33722 (regTwo!33722 r!7292)))) b!6785239))

(assert (= (and b!6783843 ((_ is Union!16605) (regTwo!33722 (regTwo!33722 r!7292)))) b!6785240))

(declare-fun e!4095783 () Bool)

(assert (=> b!6783828 (= tp!1858406 e!4095783)))

(declare-fun b!6785242 () Bool)

(declare-fun tp!1858640 () Bool)

(declare-fun tp!1858642 () Bool)

(assert (=> b!6785242 (= e!4095783 (and tp!1858640 tp!1858642))))

(declare-fun b!6785243 () Bool)

(declare-fun tp!1858641 () Bool)

(assert (=> b!6785243 (= e!4095783 tp!1858641)))

(declare-fun b!6785241 () Bool)

(assert (=> b!6785241 (= e!4095783 tp_is_empty!42463)))

(declare-fun b!6785244 () Bool)

(declare-fun tp!1858638 () Bool)

(declare-fun tp!1858639 () Bool)

(assert (=> b!6785244 (= e!4095783 (and tp!1858638 tp!1858639))))

(assert (= (and b!6783828 ((_ is ElementMatch!16605) (regOne!33723 (regOne!33723 r!7292)))) b!6785241))

(assert (= (and b!6783828 ((_ is Concat!25450) (regOne!33723 (regOne!33723 r!7292)))) b!6785242))

(assert (= (and b!6783828 ((_ is Star!16605) (regOne!33723 (regOne!33723 r!7292)))) b!6785243))

(assert (= (and b!6783828 ((_ is Union!16605) (regOne!33723 (regOne!33723 r!7292)))) b!6785244))

(declare-fun e!4095784 () Bool)

(assert (=> b!6783828 (= tp!1858407 e!4095784)))

(declare-fun b!6785246 () Bool)

(declare-fun tp!1858645 () Bool)

(declare-fun tp!1858647 () Bool)

(assert (=> b!6785246 (= e!4095784 (and tp!1858645 tp!1858647))))

(declare-fun b!6785247 () Bool)

(declare-fun tp!1858646 () Bool)

(assert (=> b!6785247 (= e!4095784 tp!1858646)))

(declare-fun b!6785245 () Bool)

(assert (=> b!6785245 (= e!4095784 tp_is_empty!42463)))

(declare-fun b!6785248 () Bool)

(declare-fun tp!1858643 () Bool)

(declare-fun tp!1858644 () Bool)

(assert (=> b!6785248 (= e!4095784 (and tp!1858643 tp!1858644))))

(assert (= (and b!6783828 ((_ is ElementMatch!16605) (regTwo!33723 (regOne!33723 r!7292)))) b!6785245))

(assert (= (and b!6783828 ((_ is Concat!25450) (regTwo!33723 (regOne!33723 r!7292)))) b!6785246))

(assert (= (and b!6783828 ((_ is Star!16605) (regTwo!33723 (regOne!33723 r!7292)))) b!6785247))

(assert (= (and b!6783828 ((_ is Union!16605) (regTwo!33723 (regOne!33723 r!7292)))) b!6785248))

(declare-fun b!6785249 () Bool)

(declare-fun e!4095785 () Bool)

(declare-fun tp!1858648 () Bool)

(assert (=> b!6785249 (= e!4095785 (and tp_is_empty!42463 tp!1858648))))

(assert (=> b!6783850 (= tp!1858434 e!4095785)))

(assert (= (and b!6783850 ((_ is Cons!65990) (t!379831 (t!379831 s!2326)))) b!6785249))

(declare-fun e!4095786 () Bool)

(assert (=> b!6783827 (= tp!1858409 e!4095786)))

(declare-fun b!6785251 () Bool)

(declare-fun tp!1858651 () Bool)

(declare-fun tp!1858653 () Bool)

(assert (=> b!6785251 (= e!4095786 (and tp!1858651 tp!1858653))))

(declare-fun b!6785252 () Bool)

(declare-fun tp!1858652 () Bool)

(assert (=> b!6785252 (= e!4095786 tp!1858652)))

(declare-fun b!6785250 () Bool)

(assert (=> b!6785250 (= e!4095786 tp_is_empty!42463)))

(declare-fun b!6785253 () Bool)

(declare-fun tp!1858649 () Bool)

(declare-fun tp!1858650 () Bool)

(assert (=> b!6785253 (= e!4095786 (and tp!1858649 tp!1858650))))

(assert (= (and b!6783827 ((_ is ElementMatch!16605) (reg!16934 (regOne!33723 r!7292)))) b!6785250))

(assert (= (and b!6783827 ((_ is Concat!25450) (reg!16934 (regOne!33723 r!7292)))) b!6785251))

(assert (= (and b!6783827 ((_ is Star!16605) (reg!16934 (regOne!33723 r!7292)))) b!6785252))

(assert (= (and b!6783827 ((_ is Union!16605) (reg!16934 (regOne!33723 r!7292)))) b!6785253))

(declare-fun b!6785255 () Bool)

(declare-fun e!4095788 () Bool)

(declare-fun tp!1858654 () Bool)

(assert (=> b!6785255 (= e!4095788 tp!1858654)))

(declare-fun tp!1858655 () Bool)

(declare-fun e!4095787 () Bool)

(declare-fun b!6785254 () Bool)

(assert (=> b!6785254 (= e!4095787 (and (inv!84759 (h!72440 (t!379833 (t!379833 zl!343)))) e!4095788 tp!1858655))))

(assert (=> b!6783808 (= tp!1858389 e!4095787)))

(assert (= b!6785254 b!6785255))

(assert (= (and b!6783808 ((_ is Cons!65992) (t!379833 (t!379833 zl!343)))) b!6785254))

(declare-fun m!7533750 () Bool)

(assert (=> b!6785254 m!7533750))

(declare-fun e!4095789 () Bool)

(assert (=> b!6783830 (= tp!1858413 e!4095789)))

(declare-fun b!6785257 () Bool)

(declare-fun tp!1858658 () Bool)

(declare-fun tp!1858660 () Bool)

(assert (=> b!6785257 (= e!4095789 (and tp!1858658 tp!1858660))))

(declare-fun b!6785258 () Bool)

(declare-fun tp!1858659 () Bool)

(assert (=> b!6785258 (= e!4095789 tp!1858659)))

(declare-fun b!6785256 () Bool)

(assert (=> b!6785256 (= e!4095789 tp_is_empty!42463)))

(declare-fun b!6785259 () Bool)

(declare-fun tp!1858656 () Bool)

(declare-fun tp!1858657 () Bool)

(assert (=> b!6785259 (= e!4095789 (and tp!1858656 tp!1858657))))

(assert (= (and b!6783830 ((_ is ElementMatch!16605) (regOne!33722 (regTwo!33723 r!7292)))) b!6785256))

(assert (= (and b!6783830 ((_ is Concat!25450) (regOne!33722 (regTwo!33723 r!7292)))) b!6785257))

(assert (= (and b!6783830 ((_ is Star!16605) (regOne!33722 (regTwo!33723 r!7292)))) b!6785258))

(assert (= (and b!6783830 ((_ is Union!16605) (regOne!33722 (regTwo!33723 r!7292)))) b!6785259))

(declare-fun e!4095790 () Bool)

(assert (=> b!6783830 (= tp!1858415 e!4095790)))

(declare-fun b!6785261 () Bool)

(declare-fun tp!1858663 () Bool)

(declare-fun tp!1858665 () Bool)

(assert (=> b!6785261 (= e!4095790 (and tp!1858663 tp!1858665))))

(declare-fun b!6785262 () Bool)

(declare-fun tp!1858664 () Bool)

(assert (=> b!6785262 (= e!4095790 tp!1858664)))

(declare-fun b!6785260 () Bool)

(assert (=> b!6785260 (= e!4095790 tp_is_empty!42463)))

(declare-fun b!6785263 () Bool)

(declare-fun tp!1858661 () Bool)

(declare-fun tp!1858662 () Bool)

(assert (=> b!6785263 (= e!4095790 (and tp!1858661 tp!1858662))))

(assert (= (and b!6783830 ((_ is ElementMatch!16605) (regTwo!33722 (regTwo!33723 r!7292)))) b!6785260))

(assert (= (and b!6783830 ((_ is Concat!25450) (regTwo!33722 (regTwo!33723 r!7292)))) b!6785261))

(assert (= (and b!6783830 ((_ is Star!16605) (regTwo!33722 (regTwo!33723 r!7292)))) b!6785262))

(assert (= (and b!6783830 ((_ is Union!16605) (regTwo!33722 (regTwo!33723 r!7292)))) b!6785263))

(declare-fun e!4095791 () Bool)

(assert (=> b!6783831 (= tp!1858414 e!4095791)))

(declare-fun b!6785265 () Bool)

(declare-fun tp!1858668 () Bool)

(declare-fun tp!1858670 () Bool)

(assert (=> b!6785265 (= e!4095791 (and tp!1858668 tp!1858670))))

(declare-fun b!6785266 () Bool)

(declare-fun tp!1858669 () Bool)

(assert (=> b!6785266 (= e!4095791 tp!1858669)))

(declare-fun b!6785264 () Bool)

(assert (=> b!6785264 (= e!4095791 tp_is_empty!42463)))

(declare-fun b!6785267 () Bool)

(declare-fun tp!1858666 () Bool)

(declare-fun tp!1858667 () Bool)

(assert (=> b!6785267 (= e!4095791 (and tp!1858666 tp!1858667))))

(assert (= (and b!6783831 ((_ is ElementMatch!16605) (reg!16934 (regTwo!33723 r!7292)))) b!6785264))

(assert (= (and b!6783831 ((_ is Concat!25450) (reg!16934 (regTwo!33723 r!7292)))) b!6785265))

(assert (= (and b!6783831 ((_ is Star!16605) (reg!16934 (regTwo!33723 r!7292)))) b!6785266))

(assert (= (and b!6783831 ((_ is Union!16605) (reg!16934 (regTwo!33723 r!7292)))) b!6785267))

(declare-fun e!4095792 () Bool)

(assert (=> b!6783837 (= tp!1858420 e!4095792)))

(declare-fun b!6785269 () Bool)

(declare-fun tp!1858673 () Bool)

(declare-fun tp!1858675 () Bool)

(assert (=> b!6785269 (= e!4095792 (and tp!1858673 tp!1858675))))

(declare-fun b!6785270 () Bool)

(declare-fun tp!1858674 () Bool)

(assert (=> b!6785270 (= e!4095792 tp!1858674)))

(declare-fun b!6785268 () Bool)

(assert (=> b!6785268 (= e!4095792 tp_is_empty!42463)))

(declare-fun b!6785271 () Bool)

(declare-fun tp!1858671 () Bool)

(declare-fun tp!1858672 () Bool)

(assert (=> b!6785271 (= e!4095792 (and tp!1858671 tp!1858672))))

(assert (= (and b!6783837 ((_ is ElementMatch!16605) (h!72439 (exprs!6489 (h!72440 zl!343))))) b!6785268))

(assert (= (and b!6783837 ((_ is Concat!25450) (h!72439 (exprs!6489 (h!72440 zl!343))))) b!6785269))

(assert (= (and b!6783837 ((_ is Star!16605) (h!72439 (exprs!6489 (h!72440 zl!343))))) b!6785270))

(assert (= (and b!6783837 ((_ is Union!16605) (h!72439 (exprs!6489 (h!72440 zl!343))))) b!6785271))

(declare-fun b!6785272 () Bool)

(declare-fun e!4095793 () Bool)

(declare-fun tp!1858676 () Bool)

(declare-fun tp!1858677 () Bool)

(assert (=> b!6785272 (= e!4095793 (and tp!1858676 tp!1858677))))

(assert (=> b!6783837 (= tp!1858421 e!4095793)))

(assert (= (and b!6783837 ((_ is Cons!65991) (t!379832 (exprs!6489 (h!72440 zl!343))))) b!6785272))

(declare-fun e!4095794 () Bool)

(assert (=> b!6783845 (= tp!1858427 e!4095794)))

(declare-fun b!6785274 () Bool)

(declare-fun tp!1858680 () Bool)

(declare-fun tp!1858682 () Bool)

(assert (=> b!6785274 (= e!4095794 (and tp!1858680 tp!1858682))))

(declare-fun b!6785275 () Bool)

(declare-fun tp!1858681 () Bool)

(assert (=> b!6785275 (= e!4095794 tp!1858681)))

(declare-fun b!6785273 () Bool)

(assert (=> b!6785273 (= e!4095794 tp_is_empty!42463)))

(declare-fun b!6785276 () Bool)

(declare-fun tp!1858678 () Bool)

(declare-fun tp!1858679 () Bool)

(assert (=> b!6785276 (= e!4095794 (and tp!1858678 tp!1858679))))

(assert (= (and b!6783845 ((_ is ElementMatch!16605) (regOne!33723 (regTwo!33722 r!7292)))) b!6785273))

(assert (= (and b!6783845 ((_ is Concat!25450) (regOne!33723 (regTwo!33722 r!7292)))) b!6785274))

(assert (= (and b!6783845 ((_ is Star!16605) (regOne!33723 (regTwo!33722 r!7292)))) b!6785275))

(assert (= (and b!6783845 ((_ is Union!16605) (regOne!33723 (regTwo!33722 r!7292)))) b!6785276))

(declare-fun e!4095795 () Bool)

(assert (=> b!6783845 (= tp!1858428 e!4095795)))

(declare-fun b!6785278 () Bool)

(declare-fun tp!1858685 () Bool)

(declare-fun tp!1858687 () Bool)

(assert (=> b!6785278 (= e!4095795 (and tp!1858685 tp!1858687))))

(declare-fun b!6785279 () Bool)

(declare-fun tp!1858686 () Bool)

(assert (=> b!6785279 (= e!4095795 tp!1858686)))

(declare-fun b!6785277 () Bool)

(assert (=> b!6785277 (= e!4095795 tp_is_empty!42463)))

(declare-fun b!6785280 () Bool)

(declare-fun tp!1858683 () Bool)

(declare-fun tp!1858684 () Bool)

(assert (=> b!6785280 (= e!4095795 (and tp!1858683 tp!1858684))))

(assert (= (and b!6783845 ((_ is ElementMatch!16605) (regTwo!33723 (regTwo!33722 r!7292)))) b!6785277))

(assert (= (and b!6783845 ((_ is Concat!25450) (regTwo!33723 (regTwo!33722 r!7292)))) b!6785278))

(assert (= (and b!6783845 ((_ is Star!16605) (regTwo!33723 (regTwo!33722 r!7292)))) b!6785279))

(assert (= (and b!6783845 ((_ is Union!16605) (regTwo!33723 (regTwo!33722 r!7292)))) b!6785280))

(declare-fun e!4095796 () Bool)

(assert (=> b!6783844 (= tp!1858430 e!4095796)))

(declare-fun b!6785282 () Bool)

(declare-fun tp!1858690 () Bool)

(declare-fun tp!1858692 () Bool)

(assert (=> b!6785282 (= e!4095796 (and tp!1858690 tp!1858692))))

(declare-fun b!6785283 () Bool)

(declare-fun tp!1858691 () Bool)

(assert (=> b!6785283 (= e!4095796 tp!1858691)))

(declare-fun b!6785281 () Bool)

(assert (=> b!6785281 (= e!4095796 tp_is_empty!42463)))

(declare-fun b!6785284 () Bool)

(declare-fun tp!1858688 () Bool)

(declare-fun tp!1858689 () Bool)

(assert (=> b!6785284 (= e!4095796 (and tp!1858688 tp!1858689))))

(assert (= (and b!6783844 ((_ is ElementMatch!16605) (reg!16934 (regTwo!33722 r!7292)))) b!6785281))

(assert (= (and b!6783844 ((_ is Concat!25450) (reg!16934 (regTwo!33722 r!7292)))) b!6785282))

(assert (= (and b!6783844 ((_ is Star!16605) (reg!16934 (regTwo!33722 r!7292)))) b!6785283))

(assert (= (and b!6783844 ((_ is Union!16605) (reg!16934 (regTwo!33722 r!7292)))) b!6785284))

(declare-fun e!4095797 () Bool)

(assert (=> b!6783851 (= tp!1858435 e!4095797)))

(declare-fun b!6785286 () Bool)

(declare-fun tp!1858695 () Bool)

(declare-fun tp!1858697 () Bool)

(assert (=> b!6785286 (= e!4095797 (and tp!1858695 tp!1858697))))

(declare-fun b!6785287 () Bool)

(declare-fun tp!1858696 () Bool)

(assert (=> b!6785287 (= e!4095797 tp!1858696)))

(declare-fun b!6785285 () Bool)

(assert (=> b!6785285 (= e!4095797 tp_is_empty!42463)))

(declare-fun b!6785288 () Bool)

(declare-fun tp!1858693 () Bool)

(declare-fun tp!1858694 () Bool)

(assert (=> b!6785288 (= e!4095797 (and tp!1858693 tp!1858694))))

(assert (= (and b!6783851 ((_ is ElementMatch!16605) (h!72439 (exprs!6489 setElem!46403)))) b!6785285))

(assert (= (and b!6783851 ((_ is Concat!25450) (h!72439 (exprs!6489 setElem!46403)))) b!6785286))

(assert (= (and b!6783851 ((_ is Star!16605) (h!72439 (exprs!6489 setElem!46403)))) b!6785287))

(assert (= (and b!6783851 ((_ is Union!16605) (h!72439 (exprs!6489 setElem!46403)))) b!6785288))

(declare-fun b!6785289 () Bool)

(declare-fun e!4095798 () Bool)

(declare-fun tp!1858698 () Bool)

(declare-fun tp!1858699 () Bool)

(assert (=> b!6785289 (= e!4095798 (and tp!1858698 tp!1858699))))

(assert (=> b!6783851 (= tp!1858436 e!4095798)))

(assert (= (and b!6783851 ((_ is Cons!65991) (t!379832 (exprs!6489 setElem!46403)))) b!6785289))

(declare-fun b!6785290 () Bool)

(declare-fun e!4095799 () Bool)

(declare-fun tp!1858700 () Bool)

(declare-fun tp!1858701 () Bool)

(assert (=> b!6785290 (= e!4095799 (and tp!1858700 tp!1858701))))

(assert (=> b!6783814 (= tp!1858395 e!4095799)))

(assert (= (and b!6783814 ((_ is Cons!65991) (exprs!6489 setElem!46409))) b!6785290))

(declare-fun e!4095800 () Bool)

(assert (=> b!6783855 (= tp!1858437 e!4095800)))

(declare-fun b!6785292 () Bool)

(declare-fun tp!1858704 () Bool)

(declare-fun tp!1858706 () Bool)

(assert (=> b!6785292 (= e!4095800 (and tp!1858704 tp!1858706))))

(declare-fun b!6785293 () Bool)

(declare-fun tp!1858705 () Bool)

(assert (=> b!6785293 (= e!4095800 tp!1858705)))

(declare-fun b!6785291 () Bool)

(assert (=> b!6785291 (= e!4095800 tp_is_empty!42463)))

(declare-fun b!6785294 () Bool)

(declare-fun tp!1858702 () Bool)

(declare-fun tp!1858703 () Bool)

(assert (=> b!6785294 (= e!4095800 (and tp!1858702 tp!1858703))))

(assert (= (and b!6783855 ((_ is ElementMatch!16605) (regOne!33723 (reg!16934 r!7292)))) b!6785291))

(assert (= (and b!6783855 ((_ is Concat!25450) (regOne!33723 (reg!16934 r!7292)))) b!6785292))

(assert (= (and b!6783855 ((_ is Star!16605) (regOne!33723 (reg!16934 r!7292)))) b!6785293))

(assert (= (and b!6783855 ((_ is Union!16605) (regOne!33723 (reg!16934 r!7292)))) b!6785294))

(declare-fun e!4095801 () Bool)

(assert (=> b!6783855 (= tp!1858438 e!4095801)))

(declare-fun b!6785296 () Bool)

(declare-fun tp!1858709 () Bool)

(declare-fun tp!1858711 () Bool)

(assert (=> b!6785296 (= e!4095801 (and tp!1858709 tp!1858711))))

(declare-fun b!6785297 () Bool)

(declare-fun tp!1858710 () Bool)

(assert (=> b!6785297 (= e!4095801 tp!1858710)))

(declare-fun b!6785295 () Bool)

(assert (=> b!6785295 (= e!4095801 tp_is_empty!42463)))

(declare-fun b!6785298 () Bool)

(declare-fun tp!1858707 () Bool)

(declare-fun tp!1858708 () Bool)

(assert (=> b!6785298 (= e!4095801 (and tp!1858707 tp!1858708))))

(assert (= (and b!6783855 ((_ is ElementMatch!16605) (regTwo!33723 (reg!16934 r!7292)))) b!6785295))

(assert (= (and b!6783855 ((_ is Concat!25450) (regTwo!33723 (reg!16934 r!7292)))) b!6785296))

(assert (= (and b!6783855 ((_ is Star!16605) (regTwo!33723 (reg!16934 r!7292)))) b!6785297))

(assert (= (and b!6783855 ((_ is Union!16605) (regTwo!33723 (reg!16934 r!7292)))) b!6785298))

(declare-fun e!4095802 () Bool)

(assert (=> b!6783853 (= tp!1858439 e!4095802)))

(declare-fun b!6785300 () Bool)

(declare-fun tp!1858714 () Bool)

(declare-fun tp!1858716 () Bool)

(assert (=> b!6785300 (= e!4095802 (and tp!1858714 tp!1858716))))

(declare-fun b!6785301 () Bool)

(declare-fun tp!1858715 () Bool)

(assert (=> b!6785301 (= e!4095802 tp!1858715)))

(declare-fun b!6785299 () Bool)

(assert (=> b!6785299 (= e!4095802 tp_is_empty!42463)))

(declare-fun b!6785302 () Bool)

(declare-fun tp!1858712 () Bool)

(declare-fun tp!1858713 () Bool)

(assert (=> b!6785302 (= e!4095802 (and tp!1858712 tp!1858713))))

(assert (= (and b!6783853 ((_ is ElementMatch!16605) (regOne!33722 (reg!16934 r!7292)))) b!6785299))

(assert (= (and b!6783853 ((_ is Concat!25450) (regOne!33722 (reg!16934 r!7292)))) b!6785300))

(assert (= (and b!6783853 ((_ is Star!16605) (regOne!33722 (reg!16934 r!7292)))) b!6785301))

(assert (= (and b!6783853 ((_ is Union!16605) (regOne!33722 (reg!16934 r!7292)))) b!6785302))

(declare-fun e!4095803 () Bool)

(assert (=> b!6783853 (= tp!1858441 e!4095803)))

(declare-fun b!6785304 () Bool)

(declare-fun tp!1858719 () Bool)

(declare-fun tp!1858721 () Bool)

(assert (=> b!6785304 (= e!4095803 (and tp!1858719 tp!1858721))))

(declare-fun b!6785305 () Bool)

(declare-fun tp!1858720 () Bool)

(assert (=> b!6785305 (= e!4095803 tp!1858720)))

(declare-fun b!6785303 () Bool)

(assert (=> b!6785303 (= e!4095803 tp_is_empty!42463)))

(declare-fun b!6785306 () Bool)

(declare-fun tp!1858717 () Bool)

(declare-fun tp!1858718 () Bool)

(assert (=> b!6785306 (= e!4095803 (and tp!1858717 tp!1858718))))

(assert (= (and b!6783853 ((_ is ElementMatch!16605) (regTwo!33722 (reg!16934 r!7292)))) b!6785303))

(assert (= (and b!6783853 ((_ is Concat!25450) (regTwo!33722 (reg!16934 r!7292)))) b!6785304))

(assert (= (and b!6783853 ((_ is Star!16605) (regTwo!33722 (reg!16934 r!7292)))) b!6785305))

(assert (= (and b!6783853 ((_ is Union!16605) (regTwo!33722 (reg!16934 r!7292)))) b!6785306))

(declare-fun e!4095804 () Bool)

(assert (=> b!6783854 (= tp!1858440 e!4095804)))

(declare-fun b!6785308 () Bool)

(declare-fun tp!1858724 () Bool)

(declare-fun tp!1858726 () Bool)

(assert (=> b!6785308 (= e!4095804 (and tp!1858724 tp!1858726))))

(declare-fun b!6785309 () Bool)

(declare-fun tp!1858725 () Bool)

(assert (=> b!6785309 (= e!4095804 tp!1858725)))

(declare-fun b!6785307 () Bool)

(assert (=> b!6785307 (= e!4095804 tp_is_empty!42463)))

(declare-fun b!6785310 () Bool)

(declare-fun tp!1858722 () Bool)

(declare-fun tp!1858723 () Bool)

(assert (=> b!6785310 (= e!4095804 (and tp!1858722 tp!1858723))))

(assert (= (and b!6783854 ((_ is ElementMatch!16605) (reg!16934 (reg!16934 r!7292)))) b!6785307))

(assert (= (and b!6783854 ((_ is Concat!25450) (reg!16934 (reg!16934 r!7292)))) b!6785308))

(assert (= (and b!6783854 ((_ is Star!16605) (reg!16934 (reg!16934 r!7292)))) b!6785309))

(assert (= (and b!6783854 ((_ is Union!16605) (reg!16934 (reg!16934 r!7292)))) b!6785310))

(declare-fun b!6785311 () Bool)

(declare-fun e!4095805 () Bool)

(declare-fun tp!1858727 () Bool)

(declare-fun tp!1858728 () Bool)

(assert (=> b!6785311 (= e!4095805 (and tp!1858727 tp!1858728))))

(assert (=> b!6783809 (= tp!1858388 e!4095805)))

(assert (= (and b!6783809 ((_ is Cons!65991) (exprs!6489 (h!72440 (t!379833 zl!343))))) b!6785311))

(declare-fun e!4095806 () Bool)

(assert (=> b!6783832 (= tp!1858411 e!4095806)))

(declare-fun b!6785313 () Bool)

(declare-fun tp!1858731 () Bool)

(declare-fun tp!1858733 () Bool)

(assert (=> b!6785313 (= e!4095806 (and tp!1858731 tp!1858733))))

(declare-fun b!6785314 () Bool)

(declare-fun tp!1858732 () Bool)

(assert (=> b!6785314 (= e!4095806 tp!1858732)))

(declare-fun b!6785312 () Bool)

(assert (=> b!6785312 (= e!4095806 tp_is_empty!42463)))

(declare-fun b!6785315 () Bool)

(declare-fun tp!1858729 () Bool)

(declare-fun tp!1858730 () Bool)

(assert (=> b!6785315 (= e!4095806 (and tp!1858729 tp!1858730))))

(assert (= (and b!6783832 ((_ is ElementMatch!16605) (regOne!33723 (regTwo!33723 r!7292)))) b!6785312))

(assert (= (and b!6783832 ((_ is Concat!25450) (regOne!33723 (regTwo!33723 r!7292)))) b!6785313))

(assert (= (and b!6783832 ((_ is Star!16605) (regOne!33723 (regTwo!33723 r!7292)))) b!6785314))

(assert (= (and b!6783832 ((_ is Union!16605) (regOne!33723 (regTwo!33723 r!7292)))) b!6785315))

(declare-fun e!4095807 () Bool)

(assert (=> b!6783832 (= tp!1858412 e!4095807)))

(declare-fun b!6785317 () Bool)

(declare-fun tp!1858736 () Bool)

(declare-fun tp!1858738 () Bool)

(assert (=> b!6785317 (= e!4095807 (and tp!1858736 tp!1858738))))

(declare-fun b!6785318 () Bool)

(declare-fun tp!1858737 () Bool)

(assert (=> b!6785318 (= e!4095807 tp!1858737)))

(declare-fun b!6785316 () Bool)

(assert (=> b!6785316 (= e!4095807 tp_is_empty!42463)))

(declare-fun b!6785319 () Bool)

(declare-fun tp!1858734 () Bool)

(declare-fun tp!1858735 () Bool)

(assert (=> b!6785319 (= e!4095807 (and tp!1858734 tp!1858735))))

(assert (= (and b!6783832 ((_ is ElementMatch!16605) (regTwo!33723 (regTwo!33723 r!7292)))) b!6785316))

(assert (= (and b!6783832 ((_ is Concat!25450) (regTwo!33723 (regTwo!33723 r!7292)))) b!6785317))

(assert (= (and b!6783832 ((_ is Star!16605) (regTwo!33723 (regTwo!33723 r!7292)))) b!6785318))

(assert (= (and b!6783832 ((_ is Union!16605) (regTwo!33723 (regTwo!33723 r!7292)))) b!6785319))

(declare-fun e!4095808 () Bool)

(assert (=> b!6783826 (= tp!1858408 e!4095808)))

(declare-fun b!6785321 () Bool)

(declare-fun tp!1858741 () Bool)

(declare-fun tp!1858743 () Bool)

(assert (=> b!6785321 (= e!4095808 (and tp!1858741 tp!1858743))))

(declare-fun b!6785322 () Bool)

(declare-fun tp!1858742 () Bool)

(assert (=> b!6785322 (= e!4095808 tp!1858742)))

(declare-fun b!6785320 () Bool)

(assert (=> b!6785320 (= e!4095808 tp_is_empty!42463)))

(declare-fun b!6785323 () Bool)

(declare-fun tp!1858739 () Bool)

(declare-fun tp!1858740 () Bool)

(assert (=> b!6785323 (= e!4095808 (and tp!1858739 tp!1858740))))

(assert (= (and b!6783826 ((_ is ElementMatch!16605) (regOne!33722 (regOne!33723 r!7292)))) b!6785320))

(assert (= (and b!6783826 ((_ is Concat!25450) (regOne!33722 (regOne!33723 r!7292)))) b!6785321))

(assert (= (and b!6783826 ((_ is Star!16605) (regOne!33722 (regOne!33723 r!7292)))) b!6785322))

(assert (= (and b!6783826 ((_ is Union!16605) (regOne!33722 (regOne!33723 r!7292)))) b!6785323))

(declare-fun e!4095809 () Bool)

(assert (=> b!6783826 (= tp!1858410 e!4095809)))

(declare-fun b!6785325 () Bool)

(declare-fun tp!1858746 () Bool)

(declare-fun tp!1858748 () Bool)

(assert (=> b!6785325 (= e!4095809 (and tp!1858746 tp!1858748))))

(declare-fun b!6785326 () Bool)

(declare-fun tp!1858747 () Bool)

(assert (=> b!6785326 (= e!4095809 tp!1858747)))

(declare-fun b!6785324 () Bool)

(assert (=> b!6785324 (= e!4095809 tp_is_empty!42463)))

(declare-fun b!6785327 () Bool)

(declare-fun tp!1858744 () Bool)

(declare-fun tp!1858745 () Bool)

(assert (=> b!6785327 (= e!4095809 (and tp!1858744 tp!1858745))))

(assert (= (and b!6783826 ((_ is ElementMatch!16605) (regTwo!33722 (regOne!33723 r!7292)))) b!6785324))

(assert (= (and b!6783826 ((_ is Concat!25450) (regTwo!33722 (regOne!33723 r!7292)))) b!6785325))

(assert (= (and b!6783826 ((_ is Star!16605) (regTwo!33722 (regOne!33723 r!7292)))) b!6785326))

(assert (= (and b!6783826 ((_ is Union!16605) (regTwo!33722 (regOne!33723 r!7292)))) b!6785327))

(declare-fun e!4095810 () Bool)

(assert (=> b!6783841 (= tp!1858422 e!4095810)))

(declare-fun b!6785329 () Bool)

(declare-fun tp!1858751 () Bool)

(declare-fun tp!1858753 () Bool)

(assert (=> b!6785329 (= e!4095810 (and tp!1858751 tp!1858753))))

(declare-fun b!6785330 () Bool)

(declare-fun tp!1858752 () Bool)

(assert (=> b!6785330 (= e!4095810 tp!1858752)))

(declare-fun b!6785328 () Bool)

(assert (=> b!6785328 (= e!4095810 tp_is_empty!42463)))

(declare-fun b!6785331 () Bool)

(declare-fun tp!1858749 () Bool)

(declare-fun tp!1858750 () Bool)

(assert (=> b!6785331 (= e!4095810 (and tp!1858749 tp!1858750))))

(assert (= (and b!6783841 ((_ is ElementMatch!16605) (regOne!33723 (regOne!33722 r!7292)))) b!6785328))

(assert (= (and b!6783841 ((_ is Concat!25450) (regOne!33723 (regOne!33722 r!7292)))) b!6785329))

(assert (= (and b!6783841 ((_ is Star!16605) (regOne!33723 (regOne!33722 r!7292)))) b!6785330))

(assert (= (and b!6783841 ((_ is Union!16605) (regOne!33723 (regOne!33722 r!7292)))) b!6785331))

(declare-fun e!4095811 () Bool)

(assert (=> b!6783841 (= tp!1858423 e!4095811)))

(declare-fun b!6785333 () Bool)

(declare-fun tp!1858756 () Bool)

(declare-fun tp!1858758 () Bool)

(assert (=> b!6785333 (= e!4095811 (and tp!1858756 tp!1858758))))

(declare-fun b!6785334 () Bool)

(declare-fun tp!1858757 () Bool)

(assert (=> b!6785334 (= e!4095811 tp!1858757)))

(declare-fun b!6785332 () Bool)

(assert (=> b!6785332 (= e!4095811 tp_is_empty!42463)))

(declare-fun b!6785335 () Bool)

(declare-fun tp!1858754 () Bool)

(declare-fun tp!1858755 () Bool)

(assert (=> b!6785335 (= e!4095811 (and tp!1858754 tp!1858755))))

(assert (= (and b!6783841 ((_ is ElementMatch!16605) (regTwo!33723 (regOne!33722 r!7292)))) b!6785332))

(assert (= (and b!6783841 ((_ is Concat!25450) (regTwo!33723 (regOne!33722 r!7292)))) b!6785333))

(assert (= (and b!6783841 ((_ is Star!16605) (regTwo!33723 (regOne!33722 r!7292)))) b!6785334))

(assert (= (and b!6783841 ((_ is Union!16605) (regTwo!33723 (regOne!33722 r!7292)))) b!6785335))

(declare-fun e!4095812 () Bool)

(assert (=> b!6783839 (= tp!1858424 e!4095812)))

(declare-fun b!6785337 () Bool)

(declare-fun tp!1858761 () Bool)

(declare-fun tp!1858763 () Bool)

(assert (=> b!6785337 (= e!4095812 (and tp!1858761 tp!1858763))))

(declare-fun b!6785338 () Bool)

(declare-fun tp!1858762 () Bool)

(assert (=> b!6785338 (= e!4095812 tp!1858762)))

(declare-fun b!6785336 () Bool)

(assert (=> b!6785336 (= e!4095812 tp_is_empty!42463)))

(declare-fun b!6785339 () Bool)

(declare-fun tp!1858759 () Bool)

(declare-fun tp!1858760 () Bool)

(assert (=> b!6785339 (= e!4095812 (and tp!1858759 tp!1858760))))

(assert (= (and b!6783839 ((_ is ElementMatch!16605) (regOne!33722 (regOne!33722 r!7292)))) b!6785336))

(assert (= (and b!6783839 ((_ is Concat!25450) (regOne!33722 (regOne!33722 r!7292)))) b!6785337))

(assert (= (and b!6783839 ((_ is Star!16605) (regOne!33722 (regOne!33722 r!7292)))) b!6785338))

(assert (= (and b!6783839 ((_ is Union!16605) (regOne!33722 (regOne!33722 r!7292)))) b!6785339))

(declare-fun e!4095813 () Bool)

(assert (=> b!6783839 (= tp!1858426 e!4095813)))

(declare-fun b!6785341 () Bool)

(declare-fun tp!1858766 () Bool)

(declare-fun tp!1858768 () Bool)

(assert (=> b!6785341 (= e!4095813 (and tp!1858766 tp!1858768))))

(declare-fun b!6785342 () Bool)

(declare-fun tp!1858767 () Bool)

(assert (=> b!6785342 (= e!4095813 tp!1858767)))

(declare-fun b!6785340 () Bool)

(assert (=> b!6785340 (= e!4095813 tp_is_empty!42463)))

(declare-fun b!6785343 () Bool)

(declare-fun tp!1858764 () Bool)

(declare-fun tp!1858765 () Bool)

(assert (=> b!6785343 (= e!4095813 (and tp!1858764 tp!1858765))))

(assert (= (and b!6783839 ((_ is ElementMatch!16605) (regTwo!33722 (regOne!33722 r!7292)))) b!6785340))

(assert (= (and b!6783839 ((_ is Concat!25450) (regTwo!33722 (regOne!33722 r!7292)))) b!6785341))

(assert (= (and b!6783839 ((_ is Star!16605) (regTwo!33722 (regOne!33722 r!7292)))) b!6785342))

(assert (= (and b!6783839 ((_ is Union!16605) (regTwo!33722 (regOne!33722 r!7292)))) b!6785343))

(declare-fun e!4095814 () Bool)

(assert (=> b!6783840 (= tp!1858425 e!4095814)))

(declare-fun b!6785345 () Bool)

(declare-fun tp!1858771 () Bool)

(declare-fun tp!1858773 () Bool)

(assert (=> b!6785345 (= e!4095814 (and tp!1858771 tp!1858773))))

(declare-fun b!6785346 () Bool)

(declare-fun tp!1858772 () Bool)

(assert (=> b!6785346 (= e!4095814 tp!1858772)))

(declare-fun b!6785344 () Bool)

(assert (=> b!6785344 (= e!4095814 tp_is_empty!42463)))

(declare-fun b!6785347 () Bool)

(declare-fun tp!1858769 () Bool)

(declare-fun tp!1858770 () Bool)

(assert (=> b!6785347 (= e!4095814 (and tp!1858769 tp!1858770))))

(assert (= (and b!6783840 ((_ is ElementMatch!16605) (reg!16934 (regOne!33722 r!7292)))) b!6785344))

(assert (= (and b!6783840 ((_ is Concat!25450) (reg!16934 (regOne!33722 r!7292)))) b!6785345))

(assert (= (and b!6783840 ((_ is Star!16605) (reg!16934 (regOne!33722 r!7292)))) b!6785346))

(assert (= (and b!6783840 ((_ is Union!16605) (reg!16934 (regOne!33722 r!7292)))) b!6785347))

(declare-fun b_lambda!255517 () Bool)

(assert (= b_lambda!255505 (or b!6782908 b_lambda!255517)))

(assert (=> d!2131820 d!2131290))

(declare-fun b_lambda!255519 () Bool)

(assert (= b_lambda!255513 (or b!6782898 b_lambda!255519)))

(declare-fun bs!1807601 () Bool)

(declare-fun d!2132018 () Bool)

(assert (= bs!1807601 (and d!2132018 b!6782898)))

(assert (=> bs!1807601 (= (dynLambda!26336 lambda!381851 (h!72439 lt!2445175)) (validRegex!8341 (h!72439 lt!2445175)))))

(declare-fun m!7533752 () Bool)

(assert (=> bs!1807601 m!7533752))

(assert (=> b!6785043 d!2132018))

(declare-fun b_lambda!255521 () Bool)

(assert (= b_lambda!255509 (or d!2131274 b_lambda!255521)))

(declare-fun bs!1807602 () Bool)

(declare-fun d!2132020 () Bool)

(assert (= bs!1807602 (and d!2132020 d!2131274)))

(assert (=> bs!1807602 (= (dynLambda!26336 lambda!381937 (h!72439 lt!2445342)) (validRegex!8341 (h!72439 lt!2445342)))))

(declare-fun m!7533754 () Bool)

(assert (=> bs!1807602 m!7533754))

(assert (=> b!6785006 d!2132020))

(declare-fun b_lambda!255523 () Bool)

(assert (= b_lambda!255507 (or d!2131272 b_lambda!255523)))

(declare-fun bs!1807603 () Bool)

(declare-fun d!2132022 () Bool)

(assert (= bs!1807603 (and d!2132022 d!2131272)))

(assert (=> bs!1807603 (= (dynLambda!26336 lambda!381934 (h!72439 (unfocusZipperList!2026 zl!343))) (validRegex!8341 (h!72439 (unfocusZipperList!2026 zl!343))))))

(declare-fun m!7533756 () Bool)

(assert (=> bs!1807603 m!7533756))

(assert (=> b!6784948 d!2132022))

(declare-fun b_lambda!255525 () Bool)

(assert (= b_lambda!255499 (or d!2131102 b_lambda!255525)))

(declare-fun bs!1807604 () Bool)

(declare-fun d!2132024 () Bool)

(assert (= bs!1807604 (and d!2132024 d!2131102)))

(assert (=> bs!1807604 (= (dynLambda!26336 lambda!381869 (h!72439 (exprs!6489 (h!72440 zl!343)))) (validRegex!8341 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(declare-fun m!7533758 () Bool)

(assert (=> bs!1807604 m!7533758))

(assert (=> b!6784760 d!2132024))

(declare-fun b_lambda!255527 () Bool)

(assert (= b_lambda!255497 (or b!6782908 b_lambda!255527)))

(assert (=> d!2131680 d!2131286))

(declare-fun b_lambda!255529 () Bool)

(assert (= b_lambda!255511 (or b!6782898 b_lambda!255529)))

(declare-fun bs!1807605 () Bool)

(declare-fun d!2132026 () Bool)

(assert (= bs!1807605 (and d!2132026 b!6782898)))

(assert (=> bs!1807605 (= (dynLambda!26336 lambda!381851 (h!72439 (++!14760 lt!2445175 lt!2445201))) (validRegex!8341 (h!72439 (++!14760 lt!2445175 lt!2445201))))))

(declare-fun m!7533760 () Bool)

(assert (=> bs!1807605 m!7533760))

(assert (=> b!6785041 d!2132026))

(declare-fun b_lambda!255531 () Bool)

(assert (= b_lambda!255495 (or d!2131166 b_lambda!255531)))

(declare-fun bs!1807606 () Bool)

(declare-fun d!2132028 () Bool)

(assert (= bs!1807606 (and d!2132028 d!2131166)))

(assert (=> bs!1807606 (= (dynLambda!26336 lambda!381888 (h!72439 (exprs!6489 setElem!46403))) (validRegex!8341 (h!72439 (exprs!6489 setElem!46403))))))

(declare-fun m!7533762 () Bool)

(assert (=> bs!1807606 m!7533762))

(assert (=> b!6784606 d!2132028))

(declare-fun b_lambda!255533 () Bool)

(assert (= b_lambda!255515 (or d!2131134 b_lambda!255533)))

(declare-fun bs!1807607 () Bool)

(declare-fun d!2132030 () Bool)

(assert (= bs!1807607 (and d!2132030 d!2131134)))

(assert (=> bs!1807607 (= (dynLambda!26336 lambda!381884 (h!72439 (exprs!6489 (h!72440 zl!343)))) (validRegex!8341 (h!72439 (exprs!6489 (h!72440 zl!343)))))))

(assert (=> bs!1807607 m!7533758))

(assert (=> b!6785104 d!2132030))

(declare-fun b_lambda!255535 () Bool)

(assert (= b_lambda!255503 (or b!6782908 b_lambda!255535)))

(assert (=> d!2131786 d!2131284))

(declare-fun b_lambda!255537 () Bool)

(assert (= b_lambda!255501 (or b!6782908 b_lambda!255537)))

(assert (=> d!2131764 d!2131288))

(check-sat (not b!6784959) (not b!6785015) (not b!6785196) (not b!6784813) (not b_lambda!255517) (not b!6784695) (not b!6785103) (not bm!615809) (not b_lambda!255443) (not b!6785124) (not b!6784901) (not b!6785284) (not d!2131826) (not b_lambda!255523) (not d!2131974) (not d!2131716) (not b!6785200) (not bm!615737) (not d!2131946) (not b_lambda!255531) (not bm!615786) (not b!6785242) (not b!6785075) (not b!6785249) (not d!2131936) (not bm!615745) (not bm!615817) (not b!6785106) (not b!6785027) (not b!6785272) (not b!6784835) (not b!6785248) (not b!6785025) (not b_lambda!255529) (not b!6785294) (not b!6784763) (not b!6785162) (not d!2131994) (not d!2131664) (not b!6785288) (not b_lambda!255449) (not bm!615712) (not b!6785280) (not bm!615810) (not b!6784909) (not bs!1807605) (not b!6785289) (not d!2131808) (not d!2131926) (not b!6784848) (not d!2131842) (not b!6785278) (not b!6784836) (not b!6784918) (not b_lambda!255445) (not d!2131970) (not d!2131954) (not b!6785229) (not b!6784738) (not b!6785311) (not d!2131908) (not b!6785234) (not b!6785054) (not b!6785314) (not bs!1807603) (not bs!1807606) (not b!6785225) (not b!6785263) (not b!6785253) (not b!6784910) (not b!6784822) (not d!2131870) (not b!6784746) (not b!6784619) (not b!6784970) (not b!6784628) (not d!2131968) (not bm!615759) (not b!6785300) (not bm!615773) (not setNonEmpty!46421) (not b!6785123) (not d!2131928) (not b!6784978) (not b_lambda!255447) (not bm!615766) (not b!6785070) (not b!6785266) (not d!2131934) (not b!6785074) (not b!6784849) (not bm!615787) (not d!2131948) (not b!6784845) (not b!6784843) (not b!6784692) (not b!6784969) (not b!6784852) (not b!6784734) (not b!6785321) (not b!6784903) (not d!2131866) (not bm!615743) (not d!2131728) (not b!6784844) (not b!6785131) (not bm!615718) (not b!6785282) (not d!2131864) (not bm!615802) (not b!6784750) (not b!6784698) (not b!6785270) (not b!6785262) (not b!6784809) (not bm!615824) (not b!6785160) (not bm!615753) (not b!6784882) (not bm!615795) (not bm!615749) (not b!6785244) (not b!6785089) (not b!6785254) (not b!6785004) (not bm!615752) (not bm!615761) (not b!6784808) (not b!6785226) (not d!2131930) (not b!6784761) (not b!6784919) (not bm!615815) (not b!6784856) (not bm!615811) (not b!6784654) (not b!6785255) (not b!6784617) (not b!6784759) (not b!6785102) (not b!6785331) (not b!6785298) (not b!6785090) (not b!6785202) (not b!6785157) (not bm!615739) (not bm!615763) (not b!6785129) (not d!2131906) (not setNonEmpty!46422) (not b!6784897) (not b!6784611) (not d!2132004) (not b!6785220) (not d!2131768) (not b!6784892) (not b!6785116) (not b!6785329) (not bm!615697) (not b_lambda!255535) (not b!6784896) (not b!6785243) (not b!6784693) (not b!6785008) (not b!6785096) (not setNonEmpty!46420) (not b!6784777) (not b!6784982) (not b!6784900) (not d!2131670) (not b!6785279) (not d!2131766) (not d!2131914) (not b!6784893) (not b!6784607) (not d!2131816) (not b!6784800) (not b!6784632) (not b!6784620) (not b!6785345) (not bs!1807601) (not d!2131868) (not b!6784922) (not b!6784774) (not b!6784812) (not d!2131996) (not b!6785097) (not b!6785222) (not b!6785287) (not b!6784828) (not b!6785240) (not bm!615711) (not b!6784714) (not b!6785119) (not bm!615726) (not b!6784704) (not d!2131940) (not b!6785305) (not b!6785319) (not b!6784979) (not b!6785338) (not b_lambda!255525) (not b!6784947) (not b!6785301) (not b!6784955) (not b!6784765) (not b!6785098) (not bm!615801) (not bm!615781) (not bm!615799) (not b!6784981) (not bm!615725) (not b!6784629) (not bm!615816) (not b!6785258) (not b!6785232) (not d!2131820) (not bm!615792) (not d!2131958) (not b!6785342) (not b!6785337) (not bm!615734) (not bm!615776) (not d!2131698) (not b!6785121) (not b!6785235) (not bm!615798) (not b!6784925) (not d!2131672) (not b!6785035) (not b!6784984) (not d!2131724) (not d!2131830) (not b!6785247) (not d!2131786) (not b!6785092) (not bm!615808) (not d!2131790) (not b_lambda!255537) (not bm!615769) (not d!2131714) (not b!6785286) (not b!6784776) (not b!6784949) (not b!6785269) (not b!6785308) (not bm!615794) (not d!2131740) (not b!6785078) (not b!6784677) (not d!2132012) (not bm!615721) (not b!6784862) (not b!6785327) (not b!6785339) (not d!2131810) (not d!2131792) (not b!6785334) (not b!6784764) (not d!2131778) (not b!6785148) (not b!6785199) (not b!6784684) (not d!2132010) (not b!6785297) (not d!2131824) (not b!6785265) (not b!6784998) (not setNonEmpty!46419) (not bm!615760) (not d!2131696) (not b!6785080) (not b!6784631) (not b!6784841) (not b!6784711) (not b!6784968) (not d!2131704) (not d!2131686) (not bm!615719) (not b!6784671) (not d!2131978) (not b!6785317) (not bm!615771) (not bm!615741) (not b!6784869) (not b!6785165) (not b!6785029) tp_is_empty!42463 (not d!2131764) (not b!6785236) (not d!2132016) (not bm!615774) (not b!6784735) (not bm!615727) (not b!6785335) (not d!2131910) (not b!6785259) (not b!6785044) (not b!6785071) (not d!2131912) (not b!6784899) (not bs!1807607) (not bm!615709) (not b!6785239) (not b!6785322) (not d!2131956) (not d!2131962) (not bm!615768) (not b!6785257) (not d!2131848) (not d!2131680) (not b!6785019) (not b!6784846) (not d!2131942) (not b!6785167) (not b!6785140) (not d!2131838) (not b!6785252) (not bm!615699) (not b!6785120) (not b!6785105) (not bm!615733) (not b!6785296) (not b!6785267) (not b!6785188) (not b!6785224) (not b!6784881) (not d!2131836) (not b!6785214) (not bm!615778) (not d!2131964) (not b!6784840) (not d!2131828) (not b!6785310) (not b!6784993) (not b!6785309) (not bm!615762) (not b!6785304) (not b_lambda!255521) (not bm!615751) (not b!6785153) (not b!6785094) (not b!6785125) (not bm!615764) (not b!6785230) (not b!6785302) (not b!6785333) (not bm!615804) (not b!6785290) (not b!6785077) (not b!6784779) (not b!6785276) (not d!2131702) (not b!6785007) (not bm!615731) (not bm!615788) (not b!6784683) (not bm!615754) (not b!6785166) (not b!6785292) (not bs!1807604) (not b!6785238) (not d!2131800) (not d!2132002) (not bm!615780) (not b!6785117) (not b!6785079) (not b_lambda!255519) (not d!2131932) (not b!6785197) (not b!6785173) (not b!6785187) (not b!6785275) (not d!2131952) (not bm!615732) (not d!2131992) (not bm!615735) (not d!2131784) (not d!2132006) (not b!6785163) (not b!6785315) (not b!6784811) (not bm!615765) (not b!6785228) (not bm!615698) (not b!6784938) (not b!6785341) (not b!6785271) (not b!6785346) (not d!2131896) (not b!6784934) (not d!2131876) (not b!6785274) (not b!6785323) (not b!6784917) (not b!6785326) (not bm!615796) (not b!6784994) (not b!6784921) (not bm!615818) (not bm!615738) (not b!6785306) (not b!6785156) (not b!6785107) (not b!6785127) (not b!6784720) (not d!2131976) (not bm!615823) (not bm!615782) (not d!2131788) (not bm!615750) (not d!2131834) (not b!6785343) (not b!6785152) (not b!6785068) (not d!2131924) (not b_lambda!255533) (not bm!615822) (not b!6784926) (not b!6785325) (not d!2131846) (not d!2131998) (not b!6785251) (not bm!615770) (not b!6784793) (not b!6784895) (not b!6784696) (not b!6785293) (not b!6785246) (not bs!1807602) (not b!6784762) (not d!2131918) (not d!2131776) (not d!2131884) (not b!6784935) (not bm!615820) (not setNonEmpty!46423) (not b!6784697) (not d!2131718) (not b!6785261) (not b!6785318) (not b!6785132) (not b!6784737) (not b_lambda!255527) (not b!6785042) (not b!6785017) (not b!6785347) (not b!6784799) (not b!6785283) (not b!6785330) (not b!6784710) (not d!2131900) (not b!6785147) (not bm!615720) (not b!6784957) (not bm!615713) (not b!6785093) (not b!6785100) (not d!2131812) (not b!6784937) (not bm!615793) (not b!6784773) (not b!6785313) (not b!6784748))
(check-sat)
