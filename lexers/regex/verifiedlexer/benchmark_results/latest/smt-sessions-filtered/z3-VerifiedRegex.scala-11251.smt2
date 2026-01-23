; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590608 () Bool)

(assert start!590608)

(declare-fun b!5739810 () Bool)

(assert (=> b!5739810 true))

(assert (=> b!5739810 true))

(declare-fun lambda!311307 () Int)

(declare-fun lambda!311306 () Int)

(assert (=> b!5739810 (not (= lambda!311307 lambda!311306))))

(assert (=> b!5739810 true))

(assert (=> b!5739810 true))

(declare-fun b!5739805 () Bool)

(assert (=> b!5739805 true))

(declare-fun b!5739774 () Bool)

(assert (=> b!5739774 true))

(declare-fun bs!1341662 () Bool)

(declare-fun b!5739811 () Bool)

(assert (= bs!1341662 (and b!5739811 b!5739810)))

(declare-datatypes ((C!31768 0))(
  ( (C!31769 (val!25586 Int)) )
))
(declare-datatypes ((Regex!15749 0))(
  ( (ElementMatch!15749 (c!1013007 C!31768)) (Concat!24594 (regOne!32010 Regex!15749) (regTwo!32010 Regex!15749)) (EmptyExpr!15749) (Star!15749 (reg!16078 Regex!15749)) (EmptyLang!15749) (Union!15749 (regOne!32011 Regex!15749) (regTwo!32011 Regex!15749)) )
))
(declare-fun r!7292 () Regex!15749)

(declare-fun lt!2285206 () Regex!15749)

(declare-fun lambda!311311 () Int)

(assert (=> bs!1341662 (= (= lt!2285206 (regOne!32010 r!7292)) (= lambda!311311 lambda!311306))))

(assert (=> bs!1341662 (not (= lambda!311311 lambda!311307))))

(assert (=> b!5739811 true))

(assert (=> b!5739811 true))

(assert (=> b!5739811 true))

(declare-fun lambda!311312 () Int)

(assert (=> bs!1341662 (not (= lambda!311312 lambda!311306))))

(assert (=> bs!1341662 (= (= lt!2285206 (regOne!32010 r!7292)) (= lambda!311312 lambda!311307))))

(assert (=> b!5739811 (not (= lambda!311312 lambda!311311))))

(assert (=> b!5739811 true))

(assert (=> b!5739811 true))

(assert (=> b!5739811 true))

(declare-fun bs!1341663 () Bool)

(declare-fun b!5739777 () Bool)

(assert (= bs!1341663 (and b!5739777 b!5739810)))

(declare-datatypes ((List!63546 0))(
  ( (Nil!63422) (Cons!63422 (h!69870 C!31768) (t!376874 List!63546)) )
))
(declare-fun s!2326 () List!63546)

(declare-datatypes ((tuple2!65692 0))(
  ( (tuple2!65693 (_1!36149 List!63546) (_2!36149 List!63546)) )
))
(declare-fun lt!2285208 () tuple2!65692)

(declare-fun lt!2285185 () Regex!15749)

(declare-fun lambda!311313 () Int)

(assert (=> bs!1341663 (= (and (= (_1!36149 lt!2285208) s!2326) (= (reg!16078 (regOne!32010 r!7292)) (regOne!32010 r!7292)) (= lt!2285185 (regTwo!32010 r!7292))) (= lambda!311313 lambda!311306))))

(assert (=> bs!1341663 (not (= lambda!311313 lambda!311307))))

(declare-fun bs!1341664 () Bool)

(assert (= bs!1341664 (and b!5739777 b!5739811)))

(assert (=> bs!1341664 (= (and (= (_1!36149 lt!2285208) s!2326) (= (reg!16078 (regOne!32010 r!7292)) lt!2285206) (= lt!2285185 (regTwo!32010 r!7292))) (= lambda!311313 lambda!311311))))

(assert (=> bs!1341664 (not (= lambda!311313 lambda!311312))))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(declare-fun lambda!311314 () Int)

(assert (=> bs!1341664 (= (and (= (_1!36149 lt!2285208) s!2326) (= (reg!16078 (regOne!32010 r!7292)) lt!2285206) (= lt!2285185 (regTwo!32010 r!7292))) (= lambda!311314 lambda!311312))))

(assert (=> bs!1341663 (= (and (= (_1!36149 lt!2285208) s!2326) (= (reg!16078 (regOne!32010 r!7292)) (regOne!32010 r!7292)) (= lt!2285185 (regTwo!32010 r!7292))) (= lambda!311314 lambda!311307))))

(assert (=> bs!1341663 (not (= lambda!311314 lambda!311306))))

(assert (=> b!5739777 (not (= lambda!311314 lambda!311313))))

(assert (=> bs!1341664 (not (= lambda!311314 lambda!311311))))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(declare-fun lambda!311315 () Int)

(assert (=> bs!1341664 (not (= lambda!311315 lambda!311312))))

(assert (=> bs!1341663 (not (= lambda!311315 lambda!311307))))

(assert (=> bs!1341663 (not (= lambda!311315 lambda!311306))))

(assert (=> b!5739777 (not (= lambda!311315 lambda!311314))))

(assert (=> b!5739777 (not (= lambda!311315 lambda!311313))))

(assert (=> bs!1341664 (not (= lambda!311315 lambda!311311))))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(assert (=> b!5739777 true))

(declare-fun b!5739763 () Bool)

(declare-datatypes ((Unit!156528 0))(
  ( (Unit!156529) )
))
(declare-fun e!3528292 () Unit!156528)

(declare-fun Unit!156530 () Unit!156528)

(assert (=> b!5739763 (= e!3528292 Unit!156530)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63547 0))(
  ( (Nil!63423) (Cons!63423 (h!69871 Regex!15749) (t!376875 List!63547)) )
))
(declare-datatypes ((Context!10266 0))(
  ( (Context!10267 (exprs!5633 List!63547)) )
))
(declare-fun lt!2285161 () (InoxSet Context!10266))

(declare-fun lt!2285163 () (InoxSet Context!10266))

(declare-fun lt!2285171 () Unit!156528)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!774 ((InoxSet Context!10266) (InoxSet Context!10266) List!63546) Unit!156528)

(assert (=> b!5739763 (= lt!2285171 (lemmaZipperConcatMatchesSameAsBothZippers!774 lt!2285161 lt!2285163 (t!376874 s!2326)))))

(declare-fun res!2424308 () Bool)

(declare-fun matchZipper!1887 ((InoxSet Context!10266) List!63546) Bool)

(assert (=> b!5739763 (= res!2424308 (matchZipper!1887 lt!2285161 (t!376874 s!2326)))))

(declare-fun e!3528310 () Bool)

(assert (=> b!5739763 (=> res!2424308 e!3528310)))

(assert (=> b!5739763 (= (matchZipper!1887 ((_ map or) lt!2285161 lt!2285163) (t!376874 s!2326)) e!3528310)))

(declare-fun b!5739764 () Bool)

(declare-fun e!3528308 () Bool)

(declare-fun e!3528302 () Bool)

(assert (=> b!5739764 (= e!3528308 e!3528302)))

(declare-fun res!2424287 () Bool)

(assert (=> b!5739764 (=> (not res!2424287) (not e!3528302))))

(declare-fun lt!2285200 () Regex!15749)

(assert (=> b!5739764 (= res!2424287 (= r!7292 lt!2285200))))

(declare-datatypes ((List!63548 0))(
  ( (Nil!63424) (Cons!63424 (h!69872 Context!10266) (t!376876 List!63548)) )
))
(declare-fun zl!343 () List!63548)

(declare-fun unfocusZipper!1491 (List!63548) Regex!15749)

(assert (=> b!5739764 (= lt!2285200 (unfocusZipper!1491 zl!343))))

(declare-fun b!5739765 () Bool)

(declare-fun e!3528315 () Bool)

(declare-fun e!3528314 () Bool)

(assert (=> b!5739765 (= e!3528315 e!3528314)))

(declare-fun res!2424316 () Bool)

(assert (=> b!5739765 (=> res!2424316 e!3528314)))

(declare-fun lt!2285220 () Context!10266)

(declare-fun lt!2285184 () Regex!15749)

(assert (=> b!5739765 (= res!2424316 (not (= (unfocusZipper!1491 (Cons!63424 lt!2285220 Nil!63424)) lt!2285184)))))

(declare-fun lt!2285205 () Regex!15749)

(assert (=> b!5739765 (= lt!2285184 (Concat!24594 (reg!16078 (regOne!32010 r!7292)) lt!2285205))))

(declare-fun b!5739766 () Bool)

(declare-fun e!3528301 () Bool)

(assert (=> b!5739766 (= e!3528301 e!3528315)))

(declare-fun res!2424292 () Bool)

(assert (=> b!5739766 (=> res!2424292 e!3528315)))

(assert (=> b!5739766 (= res!2424292 (not (= r!7292 lt!2285205)))))

(assert (=> b!5739766 (= lt!2285205 (Concat!24594 lt!2285185 (regTwo!32010 r!7292)))))

(declare-fun b!5739767 () Bool)

(declare-fun res!2424297 () Bool)

(declare-fun e!3528297 () Bool)

(assert (=> b!5739767 (=> res!2424297 e!3528297)))

(declare-fun lt!2285203 () (InoxSet Context!10266))

(declare-fun lt!2285211 () tuple2!65692)

(assert (=> b!5739767 (= res!2424297 (not (matchZipper!1887 lt!2285203 (_1!36149 lt!2285211))))))

(declare-fun b!5739769 () Bool)

(declare-fun e!3528311 () Bool)

(declare-fun e!3528299 () Bool)

(assert (=> b!5739769 (= e!3528311 e!3528299)))

(declare-fun res!2424311 () Bool)

(assert (=> b!5739769 (=> res!2424311 e!3528299)))

(declare-fun e!3528303 () Bool)

(assert (=> b!5739769 (= res!2424311 e!3528303)))

(declare-fun res!2424306 () Bool)

(assert (=> b!5739769 (=> (not res!2424306) (not e!3528303))))

(declare-fun lt!2285199 () Bool)

(assert (=> b!5739769 (= res!2424306 (not lt!2285199))))

(assert (=> b!5739769 (= lt!2285199 (matchZipper!1887 lt!2285161 (t!376874 s!2326)))))

(declare-fun b!5739770 () Bool)

(declare-fun res!2424320 () Bool)

(declare-fun e!3528307 () Bool)

(assert (=> b!5739770 (=> res!2424320 e!3528307)))

(declare-fun lt!2285167 () tuple2!65692)

(declare-fun matchR!7934 (Regex!15749 List!63546) Bool)

(assert (=> b!5739770 (= res!2424320 (not (matchR!7934 lt!2285185 (_2!36149 lt!2285167))))))

(declare-fun b!5739771 () Bool)

(declare-fun res!2424293 () Bool)

(declare-fun e!3528318 () Bool)

(assert (=> b!5739771 (=> res!2424293 e!3528318)))

(get-info :version)

(assert (=> b!5739771 (= res!2424293 (or ((_ is Concat!24594) (regOne!32010 r!7292)) (not ((_ is Star!15749) (regOne!32010 r!7292)))))))

(declare-fun b!5739772 () Bool)

(declare-fun e!3528320 () Bool)

(declare-fun e!3528294 () Bool)

(assert (=> b!5739772 (= e!3528320 e!3528294)))

(declare-fun res!2424289 () Bool)

(assert (=> b!5739772 (=> res!2424289 e!3528294)))

(declare-fun lt!2285214 () List!63548)

(assert (=> b!5739772 (= res!2424289 (not (= (unfocusZipper!1491 lt!2285214) lt!2285205)))))

(declare-fun lt!2285178 () Context!10266)

(assert (=> b!5739772 (= lt!2285214 (Cons!63424 lt!2285178 Nil!63424))))

(declare-fun b!5739773 () Bool)

(declare-fun e!3528319 () Bool)

(declare-fun tp_is_empty!40751 () Bool)

(declare-fun tp!1587226 () Bool)

(assert (=> b!5739773 (= e!3528319 (and tp_is_empty!40751 tp!1587226))))

(declare-fun e!3528293 () Bool)

(assert (=> b!5739774 (= e!3528299 e!3528293)))

(declare-fun res!2424294 () Bool)

(assert (=> b!5739774 (=> res!2424294 e!3528293)))

(declare-fun lt!2285201 () (InoxSet Context!10266))

(declare-fun appendTo!128 ((InoxSet Context!10266) Context!10266) (InoxSet Context!10266))

(assert (=> b!5739774 (= res!2424294 (not (= (appendTo!128 lt!2285203 lt!2285178) lt!2285201)))))

(declare-fun lambda!311309 () Int)

(declare-fun lt!2285170 () List!63547)

(declare-fun lt!2285159 () List!63547)

(declare-fun map!14544 ((InoxSet Context!10266) Int) (InoxSet Context!10266))

(declare-fun ++!13970 (List!63547 List!63547) List!63547)

(assert (=> b!5739774 (= (map!14544 lt!2285203 lambda!311309) (store ((as const (Array Context!10266 Bool)) false) (Context!10267 (++!13970 lt!2285170 lt!2285159)) true))))

(declare-fun lt!2285197 () Unit!156528)

(declare-fun lambda!311310 () Int)

(declare-fun lemmaConcatPreservesForall!318 (List!63547 List!63547 Int) Unit!156528)

(assert (=> b!5739774 (= lt!2285197 (lemmaConcatPreservesForall!318 lt!2285170 lt!2285159 lambda!311310))))

(declare-fun lt!2285202 () Context!10266)

(declare-fun lt!2285192 () Unit!156528)

(declare-fun lemmaMapOnSingletonSet!144 ((InoxSet Context!10266) Context!10266 Int) Unit!156528)

(assert (=> b!5739774 (= lt!2285192 (lemmaMapOnSingletonSet!144 lt!2285203 lt!2285202 lambda!311309))))

(declare-fun b!5739775 () Bool)

(declare-fun e!3528300 () Bool)

(assert (=> b!5739775 (= e!3528300 e!3528301)))

(declare-fun res!2424310 () Bool)

(assert (=> b!5739775 (=> res!2424310 e!3528301)))

(declare-fun lt!2285207 () Bool)

(declare-fun lt!2285212 () (InoxSet Context!10266))

(assert (=> b!5739775 (= res!2424310 (not (= lt!2285207 (matchZipper!1887 lt!2285212 (t!376874 s!2326)))))))

(assert (=> b!5739775 (= lt!2285207 (matchZipper!1887 lt!2285201 s!2326))))

(declare-fun b!5739776 () Bool)

(declare-fun e!3528316 () Bool)

(declare-fun tp!1587224 () Bool)

(assert (=> b!5739776 (= e!3528316 tp!1587224)))

(declare-fun e!3528313 () Bool)

(assert (=> b!5739777 (= e!3528313 e!3528307)))

(declare-fun res!2424315 () Bool)

(assert (=> b!5739777 (=> res!2424315 e!3528307)))

(assert (=> b!5739777 (= res!2424315 (not (matchR!7934 (reg!16078 (regOne!32010 r!7292)) (_1!36149 lt!2285167))))))

(declare-fun lt!2285174 () List!63546)

(declare-fun lt!2285216 () List!63546)

(declare-fun ++!13971 (List!63546 List!63546) List!63546)

(assert (=> b!5739777 (= lt!2285174 (++!13971 (_1!36149 lt!2285167) lt!2285216))))

(declare-fun lt!2285182 () List!63546)

(assert (=> b!5739777 (= lt!2285174 (++!13971 lt!2285182 (_2!36149 lt!2285208)))))

(assert (=> b!5739777 (= lt!2285216 (++!13971 (_2!36149 lt!2285167) (_2!36149 lt!2285208)))))

(assert (=> b!5739777 (= lt!2285182 (++!13971 (_1!36149 lt!2285167) (_2!36149 lt!2285167)))))

(declare-fun lt!2285168 () Unit!156528)

(declare-fun lemmaConcatAssociativity!2892 (List!63546 List!63546 List!63546) Unit!156528)

(assert (=> b!5739777 (= lt!2285168 (lemmaConcatAssociativity!2892 (_1!36149 lt!2285167) (_2!36149 lt!2285167) (_2!36149 lt!2285208)))))

(declare-datatypes ((Option!15758 0))(
  ( (None!15757) (Some!15757 (v!51812 tuple2!65692)) )
))
(declare-fun lt!2285195 () Option!15758)

(declare-fun get!21879 (Option!15758) tuple2!65692)

(assert (=> b!5739777 (= lt!2285167 (get!21879 lt!2285195))))

(declare-fun Exists!2849 (Int) Bool)

(assert (=> b!5739777 (= (Exists!2849 lambda!311313) (Exists!2849 lambda!311315))))

(declare-fun lt!2285177 () Unit!156528)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!562 (Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739777 (= lt!2285177 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!562 (reg!16078 (regOne!32010 r!7292)) (_1!36149 lt!2285208)))))

(assert (=> b!5739777 (= (Exists!2849 lambda!311313) (Exists!2849 lambda!311314))))

(declare-fun lt!2285160 () Unit!156528)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1478 (Regex!15749 Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739777 (= lt!2285160 (lemmaExistCutMatchRandMatchRSpecEquivalent!1478 (reg!16078 (regOne!32010 r!7292)) lt!2285185 (_1!36149 lt!2285208)))))

(declare-fun isDefined!12461 (Option!15758) Bool)

(assert (=> b!5739777 (= (isDefined!12461 lt!2285195) (Exists!2849 lambda!311313))))

(declare-fun findConcatSeparation!2172 (Regex!15749 Regex!15749 List!63546 List!63546 List!63546) Option!15758)

(assert (=> b!5739777 (= lt!2285195 (findConcatSeparation!2172 (reg!16078 (regOne!32010 r!7292)) lt!2285185 Nil!63422 (_1!36149 lt!2285208) (_1!36149 lt!2285208)))))

(declare-fun lt!2285198 () Unit!156528)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1936 (Regex!15749 Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739777 (= lt!2285198 (lemmaFindConcatSeparationEquivalentToExists!1936 (reg!16078 (regOne!32010 r!7292)) lt!2285185 (_1!36149 lt!2285208)))))

(declare-fun matchRSpec!2852 (Regex!15749 List!63546) Bool)

(assert (=> b!5739777 (matchRSpec!2852 lt!2285206 (_1!36149 lt!2285208))))

(declare-fun lt!2285153 () Unit!156528)

(declare-fun mainMatchTheorem!2852 (Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739777 (= lt!2285153 (mainMatchTheorem!2852 lt!2285206 (_1!36149 lt!2285208)))))

(declare-fun b!5739778 () Bool)

(declare-fun res!2424309 () Bool)

(assert (=> b!5739778 (=> (not res!2424309) (not e!3528308))))

(declare-fun z!1189 () (InoxSet Context!10266))

(declare-fun toList!9533 ((InoxSet Context!10266)) List!63548)

(assert (=> b!5739778 (= res!2424309 (= (toList!9533 z!1189) zl!343))))

(declare-fun b!5739779 () Bool)

(declare-fun res!2424301 () Bool)

(declare-fun e!3528298 () Bool)

(assert (=> b!5739779 (=> res!2424301 e!3528298)))

(declare-fun isEmpty!35305 (List!63547) Bool)

(assert (=> b!5739779 (= res!2424301 (isEmpty!35305 (t!376875 (exprs!5633 (h!69872 zl!343)))))))

(declare-fun b!5739780 () Bool)

(declare-fun e!3528305 () Bool)

(declare-fun tp!1587217 () Bool)

(assert (=> b!5739780 (= e!3528305 tp!1587217)))

(declare-fun setIsEmpty!38521 () Bool)

(declare-fun setRes!38521 () Bool)

(assert (=> setIsEmpty!38521 setRes!38521))

(declare-fun b!5739781 () Bool)

(declare-fun e!3528312 () Bool)

(assert (=> b!5739781 (= e!3528318 e!3528312)))

(declare-fun res!2424323 () Bool)

(assert (=> b!5739781 (=> res!2424323 e!3528312)))

(declare-fun lt!2285189 () (InoxSet Context!10266))

(assert (=> b!5739781 (= res!2424323 (not (= lt!2285161 lt!2285189)))))

(declare-fun derivationStepZipperDown!1091 (Regex!15749 Context!10266 C!31768) (InoxSet Context!10266))

(assert (=> b!5739781 (= lt!2285189 (derivationStepZipperDown!1091 (reg!16078 (regOne!32010 r!7292)) lt!2285178 (h!69870 s!2326)))))

(assert (=> b!5739781 (= lt!2285178 (Context!10267 lt!2285159))))

(assert (=> b!5739781 (= lt!2285159 (Cons!63423 lt!2285185 (t!376875 (exprs!5633 (h!69872 zl!343)))))))

(assert (=> b!5739781 (= lt!2285185 (Star!15749 (reg!16078 (regOne!32010 r!7292))))))

(declare-fun b!5739782 () Bool)

(declare-fun e!3528317 () Bool)

(declare-fun tp!1587223 () Bool)

(assert (=> b!5739782 (= e!3528317 tp!1587223)))

(declare-fun b!5739783 () Bool)

(declare-fun Unit!156531 () Unit!156528)

(assert (=> b!5739783 (= e!3528292 Unit!156531)))

(declare-fun b!5739784 () Bool)

(declare-fun res!2424303 () Bool)

(assert (=> b!5739784 (=> res!2424303 e!3528318)))

(declare-fun e!3528304 () Bool)

(assert (=> b!5739784 (= res!2424303 e!3528304)))

(declare-fun res!2424288 () Bool)

(assert (=> b!5739784 (=> (not res!2424288) (not e!3528304))))

(assert (=> b!5739784 (= res!2424288 ((_ is Concat!24594) (regOne!32010 r!7292)))))

(declare-fun b!5739785 () Bool)

(declare-fun res!2424317 () Bool)

(assert (=> b!5739785 (=> res!2424317 e!3528311)))

(declare-fun lt!2285204 () Bool)

(assert (=> b!5739785 (= res!2424317 (not lt!2285204))))

(declare-fun b!5739786 () Bool)

(declare-fun e!3528295 () Bool)

(assert (=> b!5739786 (= e!3528295 (not (= s!2326 lt!2285174)))))

(assert (=> b!5739786 (matchR!7934 lt!2285205 lt!2285174)))

(declare-fun lt!2285162 () Unit!156528)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!286 (Regex!15749 Regex!15749 List!63546 List!63546) Unit!156528)

(assert (=> b!5739786 (= lt!2285162 (lemmaTwoRegexMatchThenConcatMatchesConcatString!286 lt!2285185 (regTwo!32010 r!7292) lt!2285182 (_2!36149 lt!2285208)))))

(declare-fun b!5739787 () Bool)

(declare-fun e!3528309 () Bool)

(declare-fun lt!2285190 () Bool)

(assert (=> b!5739787 (= e!3528309 lt!2285190)))

(declare-fun b!5739788 () Bool)

(declare-fun res!2424298 () Bool)

(assert (=> b!5739788 (=> res!2424298 e!3528297)))

(declare-fun lt!2285218 () (InoxSet Context!10266))

(assert (=> b!5739788 (= res!2424298 (not (matchZipper!1887 lt!2285218 (_2!36149 lt!2285211))))))

(declare-fun b!5739789 () Bool)

(declare-fun nullable!5781 (Regex!15749) Bool)

(assert (=> b!5739789 (= e!3528304 (nullable!5781 (regOne!32010 (regOne!32010 r!7292))))))

(declare-fun b!5739790 () Bool)

(declare-fun tp!1587225 () Bool)

(declare-fun tp!1587221 () Bool)

(assert (=> b!5739790 (= e!3528316 (and tp!1587225 tp!1587221))))

(declare-fun b!5739791 () Bool)

(declare-fun res!2424285 () Bool)

(declare-fun e!3528306 () Bool)

(assert (=> b!5739791 (=> res!2424285 e!3528306)))

(declare-fun generalisedUnion!1612 (List!63547) Regex!15749)

(declare-fun unfocusZipperList!1177 (List!63548) List!63547)

(assert (=> b!5739791 (= res!2424285 (not (= r!7292 (generalisedUnion!1612 (unfocusZipperList!1177 zl!343)))))))

(declare-fun res!2424299 () Bool)

(assert (=> start!590608 (=> (not res!2424299) (not e!3528308))))

(declare-fun validRegex!7485 (Regex!15749) Bool)

(assert (=> start!590608 (= res!2424299 (validRegex!7485 r!7292))))

(assert (=> start!590608 e!3528308))

(assert (=> start!590608 e!3528316))

(declare-fun condSetEmpty!38521 () Bool)

(assert (=> start!590608 (= condSetEmpty!38521 (= z!1189 ((as const (Array Context!10266 Bool)) false)))))

(assert (=> start!590608 setRes!38521))

(declare-fun e!3528296 () Bool)

(assert (=> start!590608 e!3528296))

(assert (=> start!590608 e!3528319))

(declare-fun b!5739768 () Bool)

(assert (=> b!5739768 (= e!3528303 (not (matchZipper!1887 lt!2285163 (t!376874 s!2326))))))

(declare-fun b!5739792 () Bool)

(assert (=> b!5739792 (= e!3528307 e!3528295)))

(declare-fun res!2424312 () Bool)

(assert (=> b!5739792 (=> res!2424312 e!3528295)))

(assert (=> b!5739792 (= res!2424312 (not (matchR!7934 (regTwo!32010 r!7292) (_2!36149 lt!2285208))))))

(assert (=> b!5739792 (matchR!7934 lt!2285185 lt!2285182)))

(declare-fun lt!2285156 () Unit!156528)

(declare-fun lemmaStarApp!100 (Regex!15749 List!63546 List!63546) Unit!156528)

(assert (=> b!5739792 (= lt!2285156 (lemmaStarApp!100 (reg!16078 (regOne!32010 r!7292)) (_1!36149 lt!2285167) (_2!36149 lt!2285167)))))

(declare-fun b!5739793 () Bool)

(declare-fun tp!1587220 () Bool)

(declare-fun tp!1587218 () Bool)

(assert (=> b!5739793 (= e!3528316 (and tp!1587220 tp!1587218))))

(declare-fun b!5739794 () Bool)

(declare-fun res!2424290 () Bool)

(assert (=> b!5739794 (=> res!2424290 e!3528306)))

(declare-fun isEmpty!35306 (List!63548) Bool)

(assert (=> b!5739794 (= res!2424290 (not (isEmpty!35306 (t!376876 zl!343))))))

(declare-fun b!5739795 () Bool)

(assert (=> b!5739795 (= e!3528310 (matchZipper!1887 lt!2285163 (t!376874 s!2326)))))

(declare-fun b!5739796 () Bool)

(assert (=> b!5739796 (= e!3528302 (not e!3528306))))

(declare-fun res!2424286 () Bool)

(assert (=> b!5739796 (=> res!2424286 e!3528306)))

(assert (=> b!5739796 (= res!2424286 (not ((_ is Cons!63424) zl!343)))))

(declare-fun lt!2285196 () Bool)

(assert (=> b!5739796 (= lt!2285196 (matchRSpec!2852 r!7292 s!2326))))

(assert (=> b!5739796 (= lt!2285196 (matchR!7934 r!7292 s!2326))))

(declare-fun lt!2285219 () Unit!156528)

(assert (=> b!5739796 (= lt!2285219 (mainMatchTheorem!2852 r!7292 s!2326))))

(declare-fun b!5739797 () Bool)

(assert (=> b!5739797 (= e!3528293 e!3528297)))

(declare-fun res!2424307 () Bool)

(assert (=> b!5739797 (=> res!2424307 e!3528297)))

(declare-fun lt!2285181 () List!63546)

(assert (=> b!5739797 (= res!2424307 (not (= s!2326 lt!2285181)))))

(assert (=> b!5739797 (= lt!2285181 (++!13971 (_1!36149 lt!2285211) (_2!36149 lt!2285211)))))

(declare-fun lt!2285194 () Option!15758)

(assert (=> b!5739797 (= lt!2285211 (get!21879 lt!2285194))))

(assert (=> b!5739797 (isDefined!12461 lt!2285194)))

(declare-fun findConcatSeparationZippers!136 ((InoxSet Context!10266) (InoxSet Context!10266) List!63546 List!63546 List!63546) Option!15758)

(assert (=> b!5739797 (= lt!2285194 (findConcatSeparationZippers!136 lt!2285203 lt!2285218 Nil!63422 s!2326 s!2326))))

(declare-fun lt!2285175 () Unit!156528)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!136 ((InoxSet Context!10266) Context!10266 List!63546) Unit!156528)

(assert (=> b!5739797 (= lt!2285175 (lemmaConcatZipperMatchesStringThenFindConcatDefined!136 lt!2285203 lt!2285178 s!2326))))

(declare-fun b!5739798 () Bool)

(assert (=> b!5739798 (= e!3528314 e!3528320)))

(declare-fun res!2424300 () Bool)

(assert (=> b!5739798 (=> res!2424300 e!3528320)))

(declare-fun lt!2285215 () List!63548)

(assert (=> b!5739798 (= res!2424300 (not (= (unfocusZipper!1491 lt!2285215) (reg!16078 (regOne!32010 r!7292)))))))

(assert (=> b!5739798 (= lt!2285215 (Cons!63424 lt!2285202 Nil!63424))))

(declare-fun lambda!311308 () Int)

(declare-fun flatMap!1362 ((InoxSet Context!10266) Int) (InoxSet Context!10266))

(declare-fun derivationStepZipperUp!1017 (Context!10266 C!31768) (InoxSet Context!10266))

(assert (=> b!5739798 (= (flatMap!1362 lt!2285218 lambda!311308) (derivationStepZipperUp!1017 lt!2285178 (h!69870 s!2326)))))

(declare-fun lt!2285209 () Unit!156528)

(declare-fun lemmaFlatMapOnSingletonSet!894 ((InoxSet Context!10266) Context!10266 Int) Unit!156528)

(assert (=> b!5739798 (= lt!2285209 (lemmaFlatMapOnSingletonSet!894 lt!2285218 lt!2285178 lambda!311308))))

(assert (=> b!5739798 (= (flatMap!1362 lt!2285203 lambda!311308) (derivationStepZipperUp!1017 lt!2285202 (h!69870 s!2326)))))

(declare-fun lt!2285179 () Unit!156528)

(assert (=> b!5739798 (= lt!2285179 (lemmaFlatMapOnSingletonSet!894 lt!2285203 lt!2285202 lambda!311308))))

(declare-fun lt!2285155 () (InoxSet Context!10266))

(assert (=> b!5739798 (= lt!2285155 (derivationStepZipperUp!1017 lt!2285178 (h!69870 s!2326)))))

(declare-fun lt!2285210 () (InoxSet Context!10266))

(assert (=> b!5739798 (= lt!2285210 (derivationStepZipperUp!1017 lt!2285202 (h!69870 s!2326)))))

(assert (=> b!5739798 (= lt!2285218 (store ((as const (Array Context!10266 Bool)) false) lt!2285178 true))))

(assert (=> b!5739798 (= lt!2285203 (store ((as const (Array Context!10266 Bool)) false) lt!2285202 true))))

(assert (=> b!5739798 (= lt!2285202 (Context!10267 lt!2285170))))

(assert (=> b!5739798 (= lt!2285170 (Cons!63423 (reg!16078 (regOne!32010 r!7292)) Nil!63423))))

(declare-fun b!5739799 () Bool)

(declare-fun res!2424322 () Bool)

(assert (=> b!5739799 (=> res!2424322 e!3528301)))

(assert (=> b!5739799 (= res!2424322 (not (= lt!2285200 r!7292)))))

(declare-fun b!5739800 () Bool)

(assert (=> b!5739800 (= e!3528316 tp_is_empty!40751)))

(declare-fun b!5739801 () Bool)

(assert (=> b!5739801 (= e!3528294 e!3528311)))

(declare-fun res!2424295 () Bool)

(assert (=> b!5739801 (=> res!2424295 e!3528311)))

(assert (=> b!5739801 (= res!2424295 lt!2285196)))

(assert (=> b!5739801 (= lt!2285190 (matchRSpec!2852 lt!2285184 s!2326))))

(assert (=> b!5739801 (= lt!2285190 (matchR!7934 lt!2285184 s!2326))))

(declare-fun lt!2285157 () Unit!156528)

(assert (=> b!5739801 (= lt!2285157 (mainMatchTheorem!2852 lt!2285184 s!2326))))

(declare-fun b!5739802 () Bool)

(declare-fun res!2424302 () Bool)

(assert (=> b!5739802 (=> res!2424302 e!3528306)))

(assert (=> b!5739802 (= res!2424302 (not ((_ is Cons!63423) (exprs!5633 (h!69872 zl!343)))))))

(declare-fun b!5739803 () Bool)

(declare-fun res!2424304 () Bool)

(assert (=> b!5739803 (=> res!2424304 e!3528311)))

(assert (=> b!5739803 (= res!2424304 (not (matchZipper!1887 z!1189 s!2326)))))

(declare-fun b!5739804 () Bool)

(declare-fun res!2424321 () Bool)

(assert (=> b!5739804 (=> res!2424321 e!3528306)))

(assert (=> b!5739804 (= res!2424321 (or ((_ is EmptyExpr!15749) r!7292) ((_ is EmptyLang!15749) r!7292) ((_ is ElementMatch!15749) r!7292) ((_ is Union!15749) r!7292) (not ((_ is Concat!24594) r!7292))))))

(assert (=> b!5739805 (= e!3528298 e!3528318)))

(declare-fun res!2424305 () Bool)

(assert (=> b!5739805 (=> res!2424305 e!3528318)))

(assert (=> b!5739805 (= res!2424305 (or (and ((_ is ElementMatch!15749) (regOne!32010 r!7292)) (= (c!1013007 (regOne!32010 r!7292)) (h!69870 s!2326))) ((_ is Union!15749) (regOne!32010 r!7292))))))

(declare-fun lt!2285187 () Unit!156528)

(assert (=> b!5739805 (= lt!2285187 e!3528292)))

(declare-fun c!1013006 () Bool)

(assert (=> b!5739805 (= c!1013006 lt!2285204)))

(assert (=> b!5739805 (= lt!2285204 (nullable!5781 (h!69871 (exprs!5633 (h!69872 zl!343)))))))

(assert (=> b!5739805 (= (flatMap!1362 z!1189 lambda!311308) (derivationStepZipperUp!1017 (h!69872 zl!343) (h!69870 s!2326)))))

(declare-fun lt!2285180 () Unit!156528)

(assert (=> b!5739805 (= lt!2285180 (lemmaFlatMapOnSingletonSet!894 z!1189 (h!69872 zl!343) lambda!311308))))

(declare-fun lt!2285164 () Context!10266)

(assert (=> b!5739805 (= lt!2285163 (derivationStepZipperUp!1017 lt!2285164 (h!69870 s!2326)))))

(assert (=> b!5739805 (= lt!2285161 (derivationStepZipperDown!1091 (h!69871 (exprs!5633 (h!69872 zl!343))) lt!2285164 (h!69870 s!2326)))))

(assert (=> b!5739805 (= lt!2285164 (Context!10267 (t!376875 (exprs!5633 (h!69872 zl!343)))))))

(declare-fun lt!2285165 () (InoxSet Context!10266))

(assert (=> b!5739805 (= lt!2285165 (derivationStepZipperUp!1017 (Context!10267 (Cons!63423 (h!69871 (exprs!5633 (h!69872 zl!343))) (t!376875 (exprs!5633 (h!69872 zl!343))))) (h!69870 s!2326)))))

(declare-fun b!5739806 () Bool)

(declare-fun res!2424313 () Bool)

(assert (=> b!5739806 (=> res!2424313 e!3528306)))

(declare-fun generalisedConcat!1364 (List!63547) Regex!15749)

(assert (=> b!5739806 (= res!2424313 (not (= r!7292 (generalisedConcat!1364 (exprs!5633 (h!69872 zl!343))))))))

(declare-fun setNonEmpty!38521 () Bool)

(declare-fun tp!1587222 () Bool)

(declare-fun setElem!38521 () Context!10266)

(declare-fun inv!82619 (Context!10266) Bool)

(assert (=> setNonEmpty!38521 (= setRes!38521 (and tp!1587222 (inv!82619 setElem!38521) e!3528317))))

(declare-fun setRest!38521 () (InoxSet Context!10266))

(assert (=> setNonEmpty!38521 (= z!1189 ((_ map or) (store ((as const (Array Context!10266 Bool)) false) setElem!38521 true) setRest!38521))))

(declare-fun b!5739807 () Bool)

(assert (=> b!5739807 (= e!3528312 e!3528300)))

(declare-fun res!2424319 () Bool)

(assert (=> b!5739807 (=> res!2424319 e!3528300)))

(assert (=> b!5739807 (= res!2424319 (not (= lt!2285212 lt!2285189)))))

(assert (=> b!5739807 (= (flatMap!1362 lt!2285201 lambda!311308) (derivationStepZipperUp!1017 lt!2285220 (h!69870 s!2326)))))

(declare-fun lt!2285154 () Unit!156528)

(assert (=> b!5739807 (= lt!2285154 (lemmaFlatMapOnSingletonSet!894 lt!2285201 lt!2285220 lambda!311308))))

(declare-fun lt!2285217 () (InoxSet Context!10266))

(assert (=> b!5739807 (= lt!2285217 (derivationStepZipperUp!1017 lt!2285220 (h!69870 s!2326)))))

(declare-fun derivationStepZipper!1832 ((InoxSet Context!10266) C!31768) (InoxSet Context!10266))

(assert (=> b!5739807 (= lt!2285212 (derivationStepZipper!1832 lt!2285201 (h!69870 s!2326)))))

(assert (=> b!5739807 (= lt!2285201 (store ((as const (Array Context!10266 Bool)) false) lt!2285220 true))))

(assert (=> b!5739807 (= lt!2285220 (Context!10267 (Cons!63423 (reg!16078 (regOne!32010 r!7292)) lt!2285159)))))

(declare-fun b!5739808 () Bool)

(declare-fun res!2424296 () Bool)

(assert (=> b!5739808 (=> res!2424296 e!3528299)))

(assert (=> b!5739808 (= res!2424296 (or (not lt!2285199) (not lt!2285207)))))

(declare-fun b!5739809 () Bool)

(declare-fun tp!1587219 () Bool)

(assert (=> b!5739809 (= e!3528296 (and (inv!82619 (h!69872 zl!343)) e!3528305 tp!1587219))))

(assert (=> b!5739810 (= e!3528306 e!3528298)))

(declare-fun res!2424314 () Bool)

(assert (=> b!5739810 (=> res!2424314 e!3528298)))

(declare-fun lt!2285152 () Bool)

(assert (=> b!5739810 (= res!2424314 (or (not (= lt!2285196 lt!2285152)) ((_ is Nil!63422) s!2326)))))

(assert (=> b!5739810 (= (Exists!2849 lambda!311306) (Exists!2849 lambda!311307))))

(declare-fun lt!2285193 () Unit!156528)

(assert (=> b!5739810 (= lt!2285193 (lemmaExistCutMatchRandMatchRSpecEquivalent!1478 (regOne!32010 r!7292) (regTwo!32010 r!7292) s!2326))))

(assert (=> b!5739810 (= lt!2285152 (Exists!2849 lambda!311306))))

(assert (=> b!5739810 (= lt!2285152 (isDefined!12461 (findConcatSeparation!2172 (regOne!32010 r!7292) (regTwo!32010 r!7292) Nil!63422 s!2326 s!2326)))))

(declare-fun lt!2285191 () Unit!156528)

(assert (=> b!5739810 (= lt!2285191 (lemmaFindConcatSeparationEquivalentToExists!1936 (regOne!32010 r!7292) (regTwo!32010 r!7292) s!2326))))

(assert (=> b!5739811 (= e!3528297 e!3528313)))

(declare-fun res!2424291 () Bool)

(assert (=> b!5739811 (=> res!2424291 e!3528313)))

(assert (=> b!5739811 (= res!2424291 (not (matchR!7934 lt!2285206 (_1!36149 lt!2285208))))))

(declare-fun lt!2285166 () Option!15758)

(assert (=> b!5739811 (= lt!2285208 (get!21879 lt!2285166))))

(assert (=> b!5739811 (= (Exists!2849 lambda!311311) (Exists!2849 lambda!311312))))

(declare-fun lt!2285173 () Unit!156528)

(assert (=> b!5739811 (= lt!2285173 (lemmaExistCutMatchRandMatchRSpecEquivalent!1478 lt!2285206 (regTwo!32010 r!7292) s!2326))))

(assert (=> b!5739811 (= (isDefined!12461 lt!2285166) (Exists!2849 lambda!311311))))

(assert (=> b!5739811 (= lt!2285166 (findConcatSeparation!2172 lt!2285206 (regTwo!32010 r!7292) Nil!63422 s!2326 s!2326))))

(declare-fun lt!2285183 () Unit!156528)

(assert (=> b!5739811 (= lt!2285183 (lemmaFindConcatSeparationEquivalentToExists!1936 lt!2285206 (regTwo!32010 r!7292) s!2326))))

(declare-fun lt!2285186 () Regex!15749)

(assert (=> b!5739811 (matchRSpec!2852 lt!2285186 s!2326)))

(declare-fun lt!2285172 () Unit!156528)

(assert (=> b!5739811 (= lt!2285172 (mainMatchTheorem!2852 lt!2285186 s!2326))))

(assert (=> b!5739811 (matchR!7934 lt!2285186 s!2326)))

(assert (=> b!5739811 (= lt!2285186 (Concat!24594 lt!2285206 (regTwo!32010 r!7292)))))

(assert (=> b!5739811 (= lt!2285206 (Concat!24594 (reg!16078 (regOne!32010 r!7292)) lt!2285185))))

(declare-fun lt!2285213 () Unit!156528)

(declare-fun lemmaConcatAssociative!102 (Regex!15749 Regex!15749 Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739811 (= lt!2285213 (lemmaConcatAssociative!102 (reg!16078 (regOne!32010 r!7292)) lt!2285185 (regTwo!32010 r!7292) s!2326))))

(assert (=> b!5739811 e!3528309))

(declare-fun res!2424318 () Bool)

(assert (=> b!5739811 (=> (not res!2424318) (not e!3528309))))

(assert (=> b!5739811 (= res!2424318 (matchR!7934 lt!2285184 lt!2285181))))

(declare-fun lt!2285151 () Unit!156528)

(assert (=> b!5739811 (= lt!2285151 (lemmaTwoRegexMatchThenConcatMatchesConcatString!286 (reg!16078 (regOne!32010 r!7292)) lt!2285205 (_1!36149 lt!2285211) (_2!36149 lt!2285211)))))

(assert (=> b!5739811 (matchR!7934 lt!2285205 (_2!36149 lt!2285211))))

(declare-fun lt!2285188 () Unit!156528)

(declare-fun theoremZipperRegexEquiv!669 ((InoxSet Context!10266) List!63548 Regex!15749 List!63546) Unit!156528)

(assert (=> b!5739811 (= lt!2285188 (theoremZipperRegexEquiv!669 lt!2285218 lt!2285214 lt!2285205 (_2!36149 lt!2285211)))))

(assert (=> b!5739811 (matchR!7934 (reg!16078 (regOne!32010 r!7292)) (_1!36149 lt!2285211))))

(declare-fun lt!2285158 () Unit!156528)

(assert (=> b!5739811 (= lt!2285158 (theoremZipperRegexEquiv!669 lt!2285203 lt!2285215 (reg!16078 (regOne!32010 r!7292)) (_1!36149 lt!2285211)))))

(assert (=> b!5739811 (matchZipper!1887 (store ((as const (Array Context!10266 Bool)) false) (Context!10267 (++!13970 lt!2285170 lt!2285159)) true) lt!2285181)))

(declare-fun lt!2285169 () Unit!156528)

(assert (=> b!5739811 (= lt!2285169 (lemmaConcatPreservesForall!318 lt!2285170 lt!2285159 lambda!311310))))

(declare-fun lt!2285176 () Unit!156528)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!148 (Context!10266 Context!10266 List!63546 List!63546) Unit!156528)

(assert (=> b!5739811 (= lt!2285176 (lemmaConcatenateContextMatchesConcatOfStrings!148 lt!2285202 lt!2285178 (_1!36149 lt!2285211) (_2!36149 lt!2285211)))))

(assert (= (and start!590608 res!2424299) b!5739778))

(assert (= (and b!5739778 res!2424309) b!5739764))

(assert (= (and b!5739764 res!2424287) b!5739796))

(assert (= (and b!5739796 (not res!2424286)) b!5739794))

(assert (= (and b!5739794 (not res!2424290)) b!5739806))

(assert (= (and b!5739806 (not res!2424313)) b!5739802))

(assert (= (and b!5739802 (not res!2424302)) b!5739791))

(assert (= (and b!5739791 (not res!2424285)) b!5739804))

(assert (= (and b!5739804 (not res!2424321)) b!5739810))

(assert (= (and b!5739810 (not res!2424314)) b!5739779))

(assert (= (and b!5739779 (not res!2424301)) b!5739805))

(assert (= (and b!5739805 c!1013006) b!5739763))

(assert (= (and b!5739805 (not c!1013006)) b!5739783))

(assert (= (and b!5739763 (not res!2424308)) b!5739795))

(assert (= (and b!5739805 (not res!2424305)) b!5739784))

(assert (= (and b!5739784 res!2424288) b!5739789))

(assert (= (and b!5739784 (not res!2424303)) b!5739771))

(assert (= (and b!5739771 (not res!2424293)) b!5739781))

(assert (= (and b!5739781 (not res!2424323)) b!5739807))

(assert (= (and b!5739807 (not res!2424319)) b!5739775))

(assert (= (and b!5739775 (not res!2424310)) b!5739799))

(assert (= (and b!5739799 (not res!2424322)) b!5739766))

(assert (= (and b!5739766 (not res!2424292)) b!5739765))

(assert (= (and b!5739765 (not res!2424316)) b!5739798))

(assert (= (and b!5739798 (not res!2424300)) b!5739772))

(assert (= (and b!5739772 (not res!2424289)) b!5739801))

(assert (= (and b!5739801 (not res!2424295)) b!5739803))

(assert (= (and b!5739803 (not res!2424304)) b!5739785))

(assert (= (and b!5739785 (not res!2424317)) b!5739769))

(assert (= (and b!5739769 res!2424306) b!5739768))

(assert (= (and b!5739769 (not res!2424311)) b!5739808))

(assert (= (and b!5739808 (not res!2424296)) b!5739774))

(assert (= (and b!5739774 (not res!2424294)) b!5739797))

(assert (= (and b!5739797 (not res!2424307)) b!5739767))

(assert (= (and b!5739767 (not res!2424297)) b!5739788))

(assert (= (and b!5739788 (not res!2424298)) b!5739811))

(assert (= (and b!5739811 res!2424318) b!5739787))

(assert (= (and b!5739811 (not res!2424291)) b!5739777))

(assert (= (and b!5739777 (not res!2424315)) b!5739770))

(assert (= (and b!5739770 (not res!2424320)) b!5739792))

(assert (= (and b!5739792 (not res!2424312)) b!5739786))

(assert (= (and start!590608 ((_ is ElementMatch!15749) r!7292)) b!5739800))

(assert (= (and start!590608 ((_ is Concat!24594) r!7292)) b!5739790))

(assert (= (and start!590608 ((_ is Star!15749) r!7292)) b!5739776))

(assert (= (and start!590608 ((_ is Union!15749) r!7292)) b!5739793))

(assert (= (and start!590608 condSetEmpty!38521) setIsEmpty!38521))

(assert (= (and start!590608 (not condSetEmpty!38521)) setNonEmpty!38521))

(assert (= setNonEmpty!38521 b!5739782))

(assert (= b!5739809 b!5739780))

(assert (= (and start!590608 ((_ is Cons!63424) zl!343)) b!5739809))

(assert (= (and start!590608 ((_ is Cons!63422) s!2326)) b!5739773))

(declare-fun m!6691870 () Bool)

(assert (=> b!5739795 m!6691870))

(declare-fun m!6691872 () Bool)

(assert (=> b!5739805 m!6691872))

(declare-fun m!6691874 () Bool)

(assert (=> b!5739805 m!6691874))

(declare-fun m!6691876 () Bool)

(assert (=> b!5739805 m!6691876))

(declare-fun m!6691878 () Bool)

(assert (=> b!5739805 m!6691878))

(declare-fun m!6691880 () Bool)

(assert (=> b!5739805 m!6691880))

(declare-fun m!6691882 () Bool)

(assert (=> b!5739805 m!6691882))

(declare-fun m!6691884 () Bool)

(assert (=> b!5739805 m!6691884))

(declare-fun m!6691886 () Bool)

(assert (=> b!5739810 m!6691886))

(declare-fun m!6691888 () Bool)

(assert (=> b!5739810 m!6691888))

(declare-fun m!6691890 () Bool)

(assert (=> b!5739810 m!6691890))

(assert (=> b!5739810 m!6691890))

(declare-fun m!6691892 () Bool)

(assert (=> b!5739810 m!6691892))

(declare-fun m!6691894 () Bool)

(assert (=> b!5739810 m!6691894))

(assert (=> b!5739810 m!6691886))

(declare-fun m!6691896 () Bool)

(assert (=> b!5739810 m!6691896))

(declare-fun m!6691898 () Bool)

(assert (=> b!5739806 m!6691898))

(declare-fun m!6691900 () Bool)

(assert (=> b!5739774 m!6691900))

(declare-fun m!6691902 () Bool)

(assert (=> b!5739774 m!6691902))

(declare-fun m!6691904 () Bool)

(assert (=> b!5739774 m!6691904))

(declare-fun m!6691906 () Bool)

(assert (=> b!5739774 m!6691906))

(declare-fun m!6691908 () Bool)

(assert (=> b!5739774 m!6691908))

(declare-fun m!6691910 () Bool)

(assert (=> b!5739774 m!6691910))

(declare-fun m!6691912 () Bool)

(assert (=> b!5739772 m!6691912))

(declare-fun m!6691914 () Bool)

(assert (=> b!5739779 m!6691914))

(declare-fun m!6691916 () Bool)

(assert (=> b!5739764 m!6691916))

(declare-fun m!6691918 () Bool)

(assert (=> b!5739794 m!6691918))

(declare-fun m!6691920 () Bool)

(assert (=> b!5739791 m!6691920))

(assert (=> b!5739791 m!6691920))

(declare-fun m!6691922 () Bool)

(assert (=> b!5739791 m!6691922))

(declare-fun m!6691924 () Bool)

(assert (=> b!5739769 m!6691924))

(declare-fun m!6691926 () Bool)

(assert (=> b!5739786 m!6691926))

(declare-fun m!6691928 () Bool)

(assert (=> b!5739786 m!6691928))

(declare-fun m!6691930 () Bool)

(assert (=> b!5739797 m!6691930))

(declare-fun m!6691932 () Bool)

(assert (=> b!5739797 m!6691932))

(declare-fun m!6691934 () Bool)

(assert (=> b!5739797 m!6691934))

(declare-fun m!6691936 () Bool)

(assert (=> b!5739797 m!6691936))

(declare-fun m!6691938 () Bool)

(assert (=> b!5739797 m!6691938))

(declare-fun m!6691940 () Bool)

(assert (=> b!5739777 m!6691940))

(declare-fun m!6691942 () Bool)

(assert (=> b!5739777 m!6691942))

(declare-fun m!6691944 () Bool)

(assert (=> b!5739777 m!6691944))

(declare-fun m!6691946 () Bool)

(assert (=> b!5739777 m!6691946))

(declare-fun m!6691948 () Bool)

(assert (=> b!5739777 m!6691948))

(declare-fun m!6691950 () Bool)

(assert (=> b!5739777 m!6691950))

(declare-fun m!6691952 () Bool)

(assert (=> b!5739777 m!6691952))

(declare-fun m!6691954 () Bool)

(assert (=> b!5739777 m!6691954))

(declare-fun m!6691956 () Bool)

(assert (=> b!5739777 m!6691956))

(assert (=> b!5739777 m!6691940))

(declare-fun m!6691958 () Bool)

(assert (=> b!5739777 m!6691958))

(declare-fun m!6691960 () Bool)

(assert (=> b!5739777 m!6691960))

(declare-fun m!6691962 () Bool)

(assert (=> b!5739777 m!6691962))

(declare-fun m!6691964 () Bool)

(assert (=> b!5739777 m!6691964))

(assert (=> b!5739777 m!6691940))

(declare-fun m!6691966 () Bool)

(assert (=> b!5739777 m!6691966))

(declare-fun m!6691968 () Bool)

(assert (=> b!5739777 m!6691968))

(declare-fun m!6691970 () Bool)

(assert (=> b!5739777 m!6691970))

(declare-fun m!6691972 () Bool)

(assert (=> b!5739777 m!6691972))

(declare-fun m!6691974 () Bool)

(assert (=> b!5739781 m!6691974))

(declare-fun m!6691976 () Bool)

(assert (=> b!5739796 m!6691976))

(declare-fun m!6691978 () Bool)

(assert (=> b!5739796 m!6691978))

(declare-fun m!6691980 () Bool)

(assert (=> b!5739796 m!6691980))

(declare-fun m!6691982 () Bool)

(assert (=> b!5739765 m!6691982))

(declare-fun m!6691984 () Bool)

(assert (=> b!5739775 m!6691984))

(declare-fun m!6691986 () Bool)

(assert (=> b!5739775 m!6691986))

(declare-fun m!6691988 () Bool)

(assert (=> b!5739778 m!6691988))

(declare-fun m!6691990 () Bool)

(assert (=> b!5739803 m!6691990))

(declare-fun m!6691992 () Bool)

(assert (=> b!5739788 m!6691992))

(declare-fun m!6691994 () Bool)

(assert (=> b!5739809 m!6691994))

(declare-fun m!6691996 () Bool)

(assert (=> setNonEmpty!38521 m!6691996))

(declare-fun m!6691998 () Bool)

(assert (=> b!5739763 m!6691998))

(assert (=> b!5739763 m!6691924))

(declare-fun m!6692000 () Bool)

(assert (=> b!5739763 m!6692000))

(declare-fun m!6692002 () Bool)

(assert (=> b!5739770 m!6692002))

(declare-fun m!6692004 () Bool)

(assert (=> b!5739798 m!6692004))

(declare-fun m!6692006 () Bool)

(assert (=> b!5739798 m!6692006))

(declare-fun m!6692008 () Bool)

(assert (=> b!5739798 m!6692008))

(declare-fun m!6692010 () Bool)

(assert (=> b!5739798 m!6692010))

(declare-fun m!6692012 () Bool)

(assert (=> b!5739798 m!6692012))

(declare-fun m!6692014 () Bool)

(assert (=> b!5739798 m!6692014))

(declare-fun m!6692016 () Bool)

(assert (=> b!5739798 m!6692016))

(declare-fun m!6692018 () Bool)

(assert (=> b!5739798 m!6692018))

(declare-fun m!6692020 () Bool)

(assert (=> b!5739798 m!6692020))

(declare-fun m!6692022 () Bool)

(assert (=> b!5739801 m!6692022))

(declare-fun m!6692024 () Bool)

(assert (=> b!5739801 m!6692024))

(declare-fun m!6692026 () Bool)

(assert (=> b!5739801 m!6692026))

(declare-fun m!6692028 () Bool)

(assert (=> start!590608 m!6692028))

(assert (=> b!5739768 m!6691870))

(declare-fun m!6692030 () Bool)

(assert (=> b!5739792 m!6692030))

(declare-fun m!6692032 () Bool)

(assert (=> b!5739792 m!6692032))

(declare-fun m!6692034 () Bool)

(assert (=> b!5739792 m!6692034))

(declare-fun m!6692036 () Bool)

(assert (=> b!5739807 m!6692036))

(declare-fun m!6692038 () Bool)

(assert (=> b!5739807 m!6692038))

(declare-fun m!6692040 () Bool)

(assert (=> b!5739807 m!6692040))

(declare-fun m!6692042 () Bool)

(assert (=> b!5739807 m!6692042))

(declare-fun m!6692044 () Bool)

(assert (=> b!5739807 m!6692044))

(declare-fun m!6692046 () Bool)

(assert (=> b!5739789 m!6692046))

(declare-fun m!6692048 () Bool)

(assert (=> b!5739767 m!6692048))

(assert (=> b!5739811 m!6691902))

(declare-fun m!6692050 () Bool)

(assert (=> b!5739811 m!6692050))

(declare-fun m!6692052 () Bool)

(assert (=> b!5739811 m!6692052))

(declare-fun m!6692054 () Bool)

(assert (=> b!5739811 m!6692054))

(declare-fun m!6692056 () Bool)

(assert (=> b!5739811 m!6692056))

(declare-fun m!6692058 () Bool)

(assert (=> b!5739811 m!6692058))

(declare-fun m!6692060 () Bool)

(assert (=> b!5739811 m!6692060))

(declare-fun m!6692062 () Bool)

(assert (=> b!5739811 m!6692062))

(assert (=> b!5739811 m!6692056))

(declare-fun m!6692064 () Bool)

(assert (=> b!5739811 m!6692064))

(declare-fun m!6692066 () Bool)

(assert (=> b!5739811 m!6692066))

(declare-fun m!6692068 () Bool)

(assert (=> b!5739811 m!6692068))

(declare-fun m!6692070 () Bool)

(assert (=> b!5739811 m!6692070))

(assert (=> b!5739811 m!6691900))

(declare-fun m!6692072 () Bool)

(assert (=> b!5739811 m!6692072))

(declare-fun m!6692074 () Bool)

(assert (=> b!5739811 m!6692074))

(declare-fun m!6692076 () Bool)

(assert (=> b!5739811 m!6692076))

(declare-fun m!6692078 () Bool)

(assert (=> b!5739811 m!6692078))

(assert (=> b!5739811 m!6691908))

(declare-fun m!6692080 () Bool)

(assert (=> b!5739811 m!6692080))

(assert (=> b!5739811 m!6691902))

(declare-fun m!6692082 () Bool)

(assert (=> b!5739811 m!6692082))

(declare-fun m!6692084 () Bool)

(assert (=> b!5739811 m!6692084))

(declare-fun m!6692086 () Bool)

(assert (=> b!5739811 m!6692086))

(declare-fun m!6692088 () Bool)

(assert (=> b!5739811 m!6692088))

(check-sat (not b!5739794) (not b!5739768) (not b!5739791) (not b!5739777) (not b!5739773) (not b!5739797) (not b!5739803) (not b!5739790) (not start!590608) (not b!5739765) (not b!5739801) (not b!5739779) (not b!5739792) (not b!5739805) (not b!5739772) (not b!5739781) (not b!5739770) (not b!5739795) (not b!5739763) (not b!5739793) (not b!5739811) (not b!5739780) (not b!5739796) (not b!5739776) (not b!5739809) (not b!5739786) (not b!5739767) tp_is_empty!40751 (not b!5739778) (not b!5739775) (not b!5739810) (not b!5739798) (not b!5739788) (not b!5739806) (not b!5739807) (not b!5739789) (not b!5739764) (not b!5739782) (not b!5739774) (not b!5739769) (not setNonEmpty!38521))
(check-sat)
