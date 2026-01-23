; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559922 () Bool)

(assert start!559922)

(declare-fun b!5310250 () Bool)

(assert (=> b!5310250 true))

(assert (=> b!5310250 true))

(declare-fun lambda!270466 () Int)

(declare-fun lambda!270465 () Int)

(assert (=> b!5310250 (not (= lambda!270466 lambda!270465))))

(assert (=> b!5310250 true))

(assert (=> b!5310250 true))

(declare-fun b!5310260 () Bool)

(assert (=> b!5310260 true))

(declare-fun bs!1231256 () Bool)

(declare-fun b!5310248 () Bool)

(assert (= bs!1231256 (and b!5310248 b!5310250)))

(declare-datatypes ((C!30196 0))(
  ( (C!30197 (val!24800 Int)) )
))
(declare-datatypes ((Regex!14963 0))(
  ( (ElementMatch!14963 (c!922305 C!30196)) (Concat!23808 (regOne!30438 Regex!14963) (regTwo!30438 Regex!14963)) (EmptyExpr!14963) (Star!14963 (reg!15292 Regex!14963)) (EmptyLang!14963) (Union!14963 (regOne!30439 Regex!14963) (regTwo!30439 Regex!14963)) )
))
(declare-fun r!7292 () Regex!14963)

(declare-fun lt!2169855 () Regex!14963)

(declare-fun lambda!270468 () Int)

(assert (=> bs!1231256 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169855 (regTwo!30438 r!7292))) (= lambda!270468 lambda!270465))))

(assert (=> bs!1231256 (not (= lambda!270468 lambda!270466))))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(declare-fun lambda!270469 () Int)

(assert (=> bs!1231256 (not (= lambda!270469 lambda!270465))))

(assert (=> bs!1231256 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169855 (regTwo!30438 r!7292))) (= lambda!270469 lambda!270466))))

(assert (=> b!5310248 (not (= lambda!270469 lambda!270468))))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(declare-fun lambda!270470 () Int)

(declare-fun lt!2169860 () Regex!14963)

(assert (=> bs!1231256 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169860 (regTwo!30438 r!7292))) (= lambda!270470 lambda!270465))))

(assert (=> bs!1231256 (not (= lambda!270470 lambda!270466))))

(assert (=> b!5310248 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270470 lambda!270468))))

(assert (=> b!5310248 (not (= lambda!270470 lambda!270469))))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(declare-fun lambda!270471 () Int)

(assert (=> b!5310248 (not (= lambda!270471 lambda!270468))))

(assert (=> bs!1231256 (not (= lambda!270471 lambda!270465))))

(assert (=> b!5310248 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270471 lambda!270469))))

(assert (=> b!5310248 (not (= lambda!270471 lambda!270470))))

(assert (=> bs!1231256 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169860 (regTwo!30438 r!7292))) (= lambda!270471 lambda!270466))))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(assert (=> b!5310248 true))

(declare-fun e!3299862 () Bool)

(declare-fun e!3299872 () Bool)

(assert (=> b!5310248 (= e!3299862 e!3299872)))

(declare-fun res!2252789 () Bool)

(assert (=> b!5310248 (=> res!2252789 e!3299872)))

(declare-fun lt!2169823 () Bool)

(declare-fun lt!2169826 () Bool)

(declare-fun lt!2169853 () Bool)

(declare-fun lt!2169859 () Bool)

(declare-fun lt!2169856 () Bool)

(assert (=> b!5310248 (= res!2252789 (or (not (= lt!2169856 (or lt!2169853 lt!2169823))) (not (= lt!2169856 (or lt!2169826 lt!2169859)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61188 0))(
  ( (Nil!61064) (Cons!61064 (h!67512 Regex!14963) (t!374393 List!61188)) )
))
(declare-datatypes ((Context!8694 0))(
  ( (Context!8695 (exprs!4847 List!61188)) )
))
(declare-fun z!1189 () (InoxSet Context!8694))

(declare-datatypes ((List!61189 0))(
  ( (Nil!61065) (Cons!61065 (h!67513 C!30196) (t!374394 List!61189)) )
))
(declare-fun s!2326 () List!61189)

(declare-fun matchZipper!1207 ((InoxSet Context!8694) List!61189) Bool)

(assert (=> b!5310248 (= lt!2169856 (matchZipper!1207 z!1189 s!2326))))

(declare-fun Exists!2144 (Int) Bool)

(assert (=> b!5310248 (= (Exists!2144 lambda!270470) (Exists!2144 lambda!270471))))

(declare-datatypes ((Unit!153370 0))(
  ( (Unit!153371) )
))
(declare-fun lt!2169832 () Unit!153370)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!798 (Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> b!5310248 (= lt!2169832 (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(declare-datatypes ((tuple2!64324 0))(
  ( (tuple2!64325 (_1!35465 List!61189) (_2!35465 List!61189)) )
))
(declare-datatypes ((Option!15074 0))(
  ( (None!15073) (Some!15073 (v!51102 tuple2!64324)) )
))
(declare-fun isDefined!11777 (Option!15074) Bool)

(declare-fun findConcatSeparation!1488 (Regex!14963 Regex!14963 List!61189 List!61189 List!61189) Option!15074)

(assert (=> b!5310248 (= (isDefined!11777 (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 Nil!61065 s!2326 s!2326)) (Exists!2144 lambda!270470))))

(declare-fun lt!2169827 () Unit!153370)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1252 (Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> b!5310248 (= lt!2169827 (lemmaFindConcatSeparationEquivalentToExists!1252 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(declare-datatypes ((List!61190 0))(
  ( (Nil!61066) (Cons!61066 (h!67514 Context!8694) (t!374395 List!61190)) )
))
(declare-fun zl!343 () List!61190)

(declare-fun generalisedConcat!632 (List!61188) Regex!14963)

(assert (=> b!5310248 (= lt!2169860 (generalisedConcat!632 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun matchRSpec!2066 (Regex!14963 List!61189) Bool)

(assert (=> b!5310248 (= lt!2169859 (matchRSpec!2066 lt!2169855 s!2326))))

(declare-fun lt!2169869 () Unit!153370)

(declare-fun mainMatchTheorem!2066 (Regex!14963 List!61189) Unit!153370)

(assert (=> b!5310248 (= lt!2169869 (mainMatchTheorem!2066 lt!2169855 s!2326))))

(assert (=> b!5310248 (= (Exists!2144 lambda!270468) (Exists!2144 lambda!270469))))

(declare-fun lt!2169870 () Unit!153370)

(assert (=> b!5310248 (= lt!2169870 (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326))))

(assert (=> b!5310248 (= (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 Nil!61065 s!2326 s!2326)) (Exists!2144 lambda!270468))))

(declare-fun lt!2169857 () Unit!153370)

(assert (=> b!5310248 (= lt!2169857 (lemmaFindConcatSeparationEquivalentToExists!1252 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326))))

(declare-fun lt!2169848 () Regex!14963)

(assert (=> b!5310248 (= lt!2169826 (matchRSpec!2066 lt!2169848 s!2326))))

(declare-fun lt!2169865 () Unit!153370)

(assert (=> b!5310248 (= lt!2169865 (mainMatchTheorem!2066 lt!2169848 s!2326))))

(assert (=> b!5310248 (= lt!2169859 lt!2169823)))

(declare-fun lt!2169864 () (InoxSet Context!8694))

(assert (=> b!5310248 (= lt!2169823 (matchZipper!1207 lt!2169864 s!2326))))

(declare-fun matchR!7148 (Regex!14963 List!61189) Bool)

(assert (=> b!5310248 (= lt!2169859 (matchR!7148 lt!2169855 s!2326))))

(declare-fun lt!2169845 () Unit!153370)

(declare-fun lt!2169844 () Context!8694)

(declare-fun theoremZipperRegexEquiv!373 ((InoxSet Context!8694) List!61190 Regex!14963 List!61189) Unit!153370)

(assert (=> b!5310248 (= lt!2169845 (theoremZipperRegexEquiv!373 lt!2169864 (Cons!61066 lt!2169844 Nil!61066) lt!2169855 s!2326))))

(declare-fun lt!2169866 () List!61188)

(assert (=> b!5310248 (= lt!2169855 (generalisedConcat!632 lt!2169866))))

(assert (=> b!5310248 (= lt!2169826 lt!2169853)))

(declare-fun lt!2169831 () (InoxSet Context!8694))

(assert (=> b!5310248 (= lt!2169853 (matchZipper!1207 lt!2169831 s!2326))))

(assert (=> b!5310248 (= lt!2169826 (matchR!7148 lt!2169848 s!2326))))

(declare-fun lt!2169838 () Unit!153370)

(declare-fun lt!2169843 () List!61190)

(assert (=> b!5310248 (= lt!2169838 (theoremZipperRegexEquiv!373 lt!2169831 lt!2169843 lt!2169848 s!2326))))

(declare-fun lt!2169842 () List!61188)

(assert (=> b!5310248 (= lt!2169848 (generalisedConcat!632 lt!2169842))))

(declare-fun b!5310249 () Bool)

(declare-fun e!3299850 () Bool)

(declare-fun lt!2169830 () (InoxSet Context!8694))

(assert (=> b!5310249 (= e!3299850 (matchZipper!1207 lt!2169830 (t!374394 s!2326)))))

(declare-fun e!3299854 () Bool)

(declare-fun e!3299867 () Bool)

(assert (=> b!5310250 (= e!3299854 e!3299867)))

(declare-fun res!2252795 () Bool)

(assert (=> b!5310250 (=> res!2252795 e!3299867)))

(declare-fun lt!2169852 () Bool)

(declare-fun lt!2169849 () Bool)

(get-info :version)

(assert (=> b!5310250 (= res!2252795 (or (not (= lt!2169849 lt!2169852)) ((_ is Nil!61065) s!2326)))))

(assert (=> b!5310250 (= (Exists!2144 lambda!270465) (Exists!2144 lambda!270466))))

(declare-fun lt!2169837 () Unit!153370)

(assert (=> b!5310250 (= lt!2169837 (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326))))

(assert (=> b!5310250 (= lt!2169852 (Exists!2144 lambda!270465))))

(assert (=> b!5310250 (= lt!2169852 (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) Nil!61065 s!2326 s!2326)))))

(declare-fun lt!2169840 () Unit!153370)

(assert (=> b!5310250 (= lt!2169840 (lemmaFindConcatSeparationEquivalentToExists!1252 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326))))

(declare-fun b!5310251 () Bool)

(declare-fun e!3299865 () Unit!153370)

(declare-fun Unit!153372 () Unit!153370)

(assert (=> b!5310251 (= e!3299865 Unit!153372)))

(declare-fun b!5310252 () Bool)

(declare-fun e!3299869 () Bool)

(declare-fun e!3299866 () Bool)

(assert (=> b!5310252 (= e!3299869 e!3299866)))

(declare-fun res!2252794 () Bool)

(assert (=> b!5310252 (=> res!2252794 e!3299866)))

(declare-fun lt!2169858 () (InoxSet Context!8694))

(declare-fun lt!2169835 () (InoxSet Context!8694))

(assert (=> b!5310252 (= res!2252794 (not (= lt!2169858 lt!2169835)))))

(declare-fun lt!2169821 () (InoxSet Context!8694))

(assert (=> b!5310252 (= lt!2169835 ((_ map or) lt!2169821 lt!2169830))))

(declare-fun derivationStepZipperUp!335 (Context!8694 C!30196) (InoxSet Context!8694))

(assert (=> b!5310252 (= lt!2169830 (derivationStepZipperUp!335 lt!2169844 (h!67513 s!2326)))))

(declare-fun lambda!270467 () Int)

(declare-fun lt!2169872 () Context!8694)

(declare-fun flatMap!690 ((InoxSet Context!8694) Int) (InoxSet Context!8694))

(assert (=> b!5310252 (= (flatMap!690 lt!2169831 lambda!270467) (derivationStepZipperUp!335 lt!2169872 (h!67513 s!2326)))))

(declare-fun lt!2169863 () Unit!153370)

(declare-fun lemmaFlatMapOnSingletonSet!222 ((InoxSet Context!8694) Context!8694 Int) Unit!153370)

(assert (=> b!5310252 (= lt!2169863 (lemmaFlatMapOnSingletonSet!222 lt!2169831 lt!2169872 lambda!270467))))

(declare-fun lt!2169854 () (InoxSet Context!8694))

(assert (=> b!5310252 (= lt!2169854 (derivationStepZipperUp!335 lt!2169872 (h!67513 s!2326)))))

(declare-fun derivationStepZipper!1206 ((InoxSet Context!8694) C!30196) (InoxSet Context!8694))

(assert (=> b!5310252 (= lt!2169858 (derivationStepZipper!1206 lt!2169831 (h!67513 s!2326)))))

(assert (=> b!5310252 (= lt!2169864 (store ((as const (Array Context!8694 Bool)) false) lt!2169844 true))))

(assert (=> b!5310252 (= lt!2169831 (store ((as const (Array Context!8694 Bool)) false) lt!2169872 true))))

(assert (=> b!5310252 (= lt!2169872 (Context!8695 lt!2169842))))

(assert (=> b!5310252 (= lt!2169842 (Cons!61064 (regOne!30438 (regOne!30438 r!7292)) lt!2169866))))

(declare-fun res!2252786 () Bool)

(declare-fun e!3299871 () Bool)

(assert (=> start!559922 (=> (not res!2252786) (not e!3299871))))

(declare-fun validRegex!6699 (Regex!14963) Bool)

(assert (=> start!559922 (= res!2252786 (validRegex!6699 r!7292))))

(assert (=> start!559922 e!3299871))

(declare-fun e!3299858 () Bool)

(assert (=> start!559922 e!3299858))

(declare-fun condSetEmpty!34145 () Bool)

(assert (=> start!559922 (= condSetEmpty!34145 (= z!1189 ((as const (Array Context!8694 Bool)) false)))))

(declare-fun setRes!34145 () Bool)

(assert (=> start!559922 setRes!34145))

(declare-fun e!3299853 () Bool)

(assert (=> start!559922 e!3299853))

(declare-fun e!3299851 () Bool)

(assert (=> start!559922 e!3299851))

(declare-fun b!5310253 () Bool)

(declare-fun e!3299857 () Bool)

(declare-fun tp!1479517 () Bool)

(assert (=> b!5310253 (= e!3299857 tp!1479517)))

(declare-fun b!5310254 () Bool)

(declare-fun res!2252797 () Bool)

(assert (=> b!5310254 (=> res!2252797 e!3299862)))

(declare-fun zipperDepth!80 (List!61190) Int)

(assert (=> b!5310254 (= res!2252797 (> (zipperDepth!80 lt!2169843) (zipperDepth!80 zl!343)))))

(declare-fun b!5310255 () Bool)

(declare-fun e!3299864 () Bool)

(assert (=> b!5310255 (= e!3299864 e!3299862)))

(declare-fun res!2252806 () Bool)

(assert (=> b!5310255 (=> res!2252806 e!3299862)))

(declare-fun zipperDepthTotal!124 (List!61190) Int)

(assert (=> b!5310255 (= res!2252806 (>= (zipperDepthTotal!124 lt!2169843) (zipperDepthTotal!124 zl!343)))))

(assert (=> b!5310255 (= lt!2169843 (Cons!61066 lt!2169872 Nil!61066))))

(declare-fun b!5310256 () Bool)

(declare-fun res!2252798 () Bool)

(assert (=> b!5310256 (=> (not res!2252798) (not e!3299871))))

(declare-fun unfocusZipper!705 (List!61190) Regex!14963)

(assert (=> b!5310256 (= res!2252798 (= r!7292 (unfocusZipper!705 zl!343)))))

(declare-fun b!5310257 () Bool)

(declare-fun e!3299861 () Bool)

(declare-fun lt!2169834 () (InoxSet Context!8694))

(assert (=> b!5310257 (= e!3299861 (matchZipper!1207 lt!2169834 (t!374394 s!2326)))))

(declare-fun b!5310258 () Bool)

(declare-fun res!2252804 () Bool)

(assert (=> b!5310258 (=> res!2252804 e!3299854)))

(assert (=> b!5310258 (= res!2252804 (not ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310259 () Bool)

(declare-fun tp_is_empty!39179 () Bool)

(declare-fun tp!1479514 () Bool)

(assert (=> b!5310259 (= e!3299851 (and tp_is_empty!39179 tp!1479514))))

(declare-fun e!3299870 () Bool)

(assert (=> b!5310260 (= e!3299867 e!3299870)))

(declare-fun res!2252802 () Bool)

(assert (=> b!5310260 (=> res!2252802 e!3299870)))

(assert (=> b!5310260 (= res!2252802 (or (and ((_ is ElementMatch!14963) (regOne!30438 r!7292)) (= (c!922305 (regOne!30438 r!7292)) (h!67513 s!2326))) ((_ is Union!14963) (regOne!30438 r!7292)) (not ((_ is Concat!23808) (regOne!30438 r!7292)))))))

(declare-fun lt!2169850 () Unit!153370)

(assert (=> b!5310260 (= lt!2169850 e!3299865)))

(declare-fun c!922304 () Bool)

(declare-fun nullable!5132 (Regex!14963) Bool)

(assert (=> b!5310260 (= c!922304 (nullable!5132 (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(assert (=> b!5310260 (= (flatMap!690 z!1189 lambda!270467) (derivationStepZipperUp!335 (h!67514 zl!343) (h!67513 s!2326)))))

(declare-fun lt!2169861 () Unit!153370)

(assert (=> b!5310260 (= lt!2169861 (lemmaFlatMapOnSingletonSet!222 z!1189 (h!67514 zl!343) lambda!270467))))

(declare-fun lt!2169828 () (InoxSet Context!8694))

(declare-fun lt!2169868 () Context!8694)

(assert (=> b!5310260 (= lt!2169828 (derivationStepZipperUp!335 lt!2169868 (h!67513 s!2326)))))

(declare-fun lt!2169829 () (InoxSet Context!8694))

(declare-fun derivationStepZipperDown!411 (Regex!14963 Context!8694 C!30196) (InoxSet Context!8694))

(assert (=> b!5310260 (= lt!2169829 (derivationStepZipperDown!411 (h!67512 (exprs!4847 (h!67514 zl!343))) lt!2169868 (h!67513 s!2326)))))

(assert (=> b!5310260 (= lt!2169868 (Context!8695 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun lt!2169867 () (InoxSet Context!8694))

(assert (=> b!5310260 (= lt!2169867 (derivationStepZipperUp!335 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343))))) (h!67513 s!2326)))))

(declare-fun b!5310261 () Bool)

(declare-fun res!2252796 () Bool)

(assert (=> b!5310261 (=> res!2252796 e!3299854)))

(declare-fun generalisedUnion!892 (List!61188) Regex!14963)

(declare-fun unfocusZipperList!405 (List!61190) List!61188)

(assert (=> b!5310261 (= res!2252796 (not (= r!7292 (generalisedUnion!892 (unfocusZipperList!405 zl!343)))))))

(declare-fun b!5310262 () Bool)

(declare-fun e!3299856 () Bool)

(assert (=> b!5310262 (= e!3299856 e!3299864)))

(declare-fun res!2252809 () Bool)

(assert (=> b!5310262 (=> res!2252809 e!3299864)))

(declare-fun lt!2169847 () Regex!14963)

(assert (=> b!5310262 (= res!2252809 (not (= (exprs!4847 (h!67514 zl!343)) (Cons!61064 lt!2169847 (t!374393 (exprs!4847 (h!67514 zl!343)))))))))

(assert (=> b!5310262 (= lt!2169847 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))))))

(declare-fun b!5310263 () Bool)

(assert (=> b!5310263 (= e!3299866 e!3299856)))

(declare-fun res!2252813 () Bool)

(assert (=> b!5310263 (=> res!2252813 e!3299856)))

(declare-fun e!3299860 () Bool)

(assert (=> b!5310263 (= res!2252813 e!3299860)))

(declare-fun res!2252805 () Bool)

(assert (=> b!5310263 (=> (not res!2252805) (not e!3299860))))

(declare-fun lt!2169871 () Bool)

(assert (=> b!5310263 (= res!2252805 (not (= lt!2169871 (matchZipper!1207 lt!2169858 (t!374394 s!2326)))))))

(assert (=> b!5310263 (= (matchZipper!1207 lt!2169835 (t!374394 s!2326)) e!3299850)))

(declare-fun res!2252785 () Bool)

(assert (=> b!5310263 (=> res!2252785 e!3299850)))

(declare-fun lt!2169862 () Bool)

(assert (=> b!5310263 (= res!2252785 lt!2169862)))

(declare-fun lt!2169839 () Unit!153370)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!200 ((InoxSet Context!8694) (InoxSet Context!8694) List!61189) Unit!153370)

(assert (=> b!5310263 (= lt!2169839 (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169821 lt!2169830 (t!374394 s!2326)))))

(assert (=> b!5310263 (= (flatMap!690 lt!2169864 lambda!270467) (derivationStepZipperUp!335 lt!2169844 (h!67513 s!2326)))))

(declare-fun lt!2169833 () Unit!153370)

(assert (=> b!5310263 (= lt!2169833 (lemmaFlatMapOnSingletonSet!222 lt!2169864 lt!2169844 lambda!270467))))

(declare-fun b!5310264 () Bool)

(declare-fun tp!1479509 () Bool)

(declare-fun tp!1479510 () Bool)

(assert (=> b!5310264 (= e!3299858 (and tp!1479509 tp!1479510))))

(declare-fun b!5310265 () Bool)

(declare-fun res!2252801 () Bool)

(assert (=> b!5310265 (=> res!2252801 e!3299854)))

(assert (=> b!5310265 (= res!2252801 (or ((_ is EmptyExpr!14963) r!7292) ((_ is EmptyLang!14963) r!7292) ((_ is ElementMatch!14963) r!7292) ((_ is Union!14963) r!7292) (not ((_ is Concat!23808) r!7292))))))

(declare-fun b!5310266 () Bool)

(declare-fun e!3299859 () Bool)

(assert (=> b!5310266 (= e!3299872 e!3299859)))

(declare-fun res!2252787 () Bool)

(assert (=> b!5310266 (=> res!2252787 e!3299859)))

(declare-fun lt!2169851 () Bool)

(assert (=> b!5310266 (= res!2252787 (not (= lt!2169849 lt!2169851)))))

(declare-fun lt!2169825 () Regex!14963)

(assert (=> b!5310266 (= lt!2169851 (matchR!7148 lt!2169825 s!2326))))

(assert (=> b!5310266 (= lt!2169825 (Concat!23808 lt!2169847 lt!2169860))))

(declare-fun b!5310267 () Bool)

(assert (=> b!5310267 (= e!3299871 (not e!3299854))))

(declare-fun res!2252807 () Bool)

(assert (=> b!5310267 (=> res!2252807 e!3299854)))

(assert (=> b!5310267 (= res!2252807 (not ((_ is Cons!61066) zl!343)))))

(assert (=> b!5310267 (= lt!2169849 (matchRSpec!2066 r!7292 s!2326))))

(assert (=> b!5310267 (= lt!2169849 (matchR!7148 r!7292 s!2326))))

(declare-fun lt!2169836 () Unit!153370)

(assert (=> b!5310267 (= lt!2169836 (mainMatchTheorem!2066 r!7292 s!2326))))

(declare-fun setIsEmpty!34145 () Bool)

(assert (=> setIsEmpty!34145 setRes!34145))

(declare-fun e!3299868 () Bool)

(declare-fun tp!1479513 () Bool)

(declare-fun setNonEmpty!34145 () Bool)

(declare-fun setElem!34145 () Context!8694)

(declare-fun inv!80654 (Context!8694) Bool)

(assert (=> setNonEmpty!34145 (= setRes!34145 (and tp!1479513 (inv!80654 setElem!34145) e!3299868))))

(declare-fun setRest!34145 () (InoxSet Context!8694))

(assert (=> setNonEmpty!34145 (= z!1189 ((_ map or) (store ((as const (Array Context!8694 Bool)) false) setElem!34145 true) setRest!34145))))

(declare-fun b!5310268 () Bool)

(declare-fun res!2252790 () Bool)

(assert (=> b!5310268 (=> res!2252790 e!3299854)))

(assert (=> b!5310268 (= res!2252790 (not (= r!7292 (generalisedConcat!632 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun b!5310269 () Bool)

(declare-fun res!2252792 () Bool)

(assert (=> b!5310269 (=> res!2252792 e!3299872)))

(assert (=> b!5310269 (= res!2252792 (not (= lt!2169849 (matchR!7148 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)) s!2326))))))

(declare-fun b!5310270 () Bool)

(declare-fun res!2252784 () Bool)

(assert (=> b!5310270 (=> res!2252784 e!3299854)))

(declare-fun isEmpty!33027 (List!61190) Bool)

(assert (=> b!5310270 (= res!2252784 (not (isEmpty!33027 (t!374395 zl!343))))))

(declare-fun b!5310271 () Bool)

(assert (=> b!5310271 (= e!3299858 tp_is_empty!39179)))

(declare-fun b!5310272 () Bool)

(declare-fun tp!1479508 () Bool)

(assert (=> b!5310272 (= e!3299858 tp!1479508)))

(declare-fun b!5310273 () Bool)

(declare-fun e!3299863 () Bool)

(assert (=> b!5310273 (= e!3299870 e!3299863)))

(declare-fun res!2252800 () Bool)

(assert (=> b!5310273 (=> res!2252800 e!3299863)))

(declare-fun lt!2169824 () (InoxSet Context!8694))

(assert (=> b!5310273 (= res!2252800 (not (= lt!2169829 lt!2169824)))))

(assert (=> b!5310273 (= lt!2169824 ((_ map or) lt!2169821 lt!2169834))))

(assert (=> b!5310273 (= lt!2169834 (derivationStepZipperDown!411 (regTwo!30438 (regOne!30438 r!7292)) lt!2169868 (h!67513 s!2326)))))

(assert (=> b!5310273 (= lt!2169821 (derivationStepZipperDown!411 (regOne!30438 (regOne!30438 r!7292)) lt!2169844 (h!67513 s!2326)))))

(assert (=> b!5310273 (= lt!2169844 (Context!8695 lt!2169866))))

(assert (=> b!5310273 (= lt!2169866 (Cons!61064 (regTwo!30438 (regOne!30438 r!7292)) (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310274 () Bool)

(declare-fun res!2252791 () Bool)

(assert (=> b!5310274 (=> (not res!2252791) (not e!3299871))))

(declare-fun toList!8747 ((InoxSet Context!8694)) List!61190)

(assert (=> b!5310274 (= res!2252791 (= (toList!8747 z!1189) zl!343))))

(declare-fun b!5310275 () Bool)

(declare-fun e!3299855 () Bool)

(assert (=> b!5310275 (= e!3299855 (not (matchZipper!1207 lt!2169834 (t!374394 s!2326))))))

(declare-fun b!5310276 () Bool)

(declare-fun tp!1479511 () Bool)

(declare-fun tp!1479515 () Bool)

(assert (=> b!5310276 (= e!3299858 (and tp!1479511 tp!1479515))))

(declare-fun b!5310277 () Bool)

(declare-fun e!3299852 () Bool)

(assert (=> b!5310277 (= e!3299852 (matchZipper!1207 lt!2169828 (t!374394 s!2326)))))

(declare-fun b!5310278 () Bool)

(assert (=> b!5310278 (= e!3299863 e!3299869)))

(declare-fun res!2252810 () Bool)

(assert (=> b!5310278 (=> res!2252810 e!3299869)))

(assert (=> b!5310278 (= res!2252810 e!3299855)))

(declare-fun res!2252799 () Bool)

(assert (=> b!5310278 (=> (not res!2252799) (not e!3299855))))

(assert (=> b!5310278 (= res!2252799 (not (= lt!2169871 lt!2169862)))))

(assert (=> b!5310278 (= lt!2169871 (matchZipper!1207 lt!2169829 (t!374394 s!2326)))))

(assert (=> b!5310278 (= (matchZipper!1207 lt!2169824 (t!374394 s!2326)) e!3299861)))

(declare-fun res!2252811 () Bool)

(assert (=> b!5310278 (=> res!2252811 e!3299861)))

(assert (=> b!5310278 (= res!2252811 lt!2169862)))

(assert (=> b!5310278 (= lt!2169862 (matchZipper!1207 lt!2169821 (t!374394 s!2326)))))

(declare-fun lt!2169846 () Unit!153370)

(assert (=> b!5310278 (= lt!2169846 (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169821 lt!2169834 (t!374394 s!2326)))))

(declare-fun b!5310279 () Bool)

(declare-fun res!2252788 () Bool)

(assert (=> b!5310279 (=> res!2252788 e!3299870)))

(assert (=> b!5310279 (= res!2252788 (not (nullable!5132 (regOne!30438 (regOne!30438 r!7292)))))))

(declare-fun b!5310280 () Bool)

(declare-fun res!2252808 () Bool)

(assert (=> b!5310280 (=> res!2252808 e!3299864)))

(declare-fun contextDepthTotal!104 (Context!8694) Int)

(assert (=> b!5310280 (= res!2252808 (>= (contextDepthTotal!104 lt!2169872) (contextDepthTotal!104 (h!67514 zl!343))))))

(declare-fun b!5310281 () Bool)

(declare-fun tp!1479516 () Bool)

(assert (=> b!5310281 (= e!3299853 (and (inv!80654 (h!67514 zl!343)) e!3299857 tp!1479516))))

(declare-fun b!5310282 () Bool)

(assert (=> b!5310282 (= e!3299860 (not (matchZipper!1207 (derivationStepZipper!1206 lt!2169864 (h!67513 s!2326)) (t!374394 s!2326))))))

(declare-fun b!5310283 () Bool)

(declare-fun Unit!153373 () Unit!153370)

(assert (=> b!5310283 (= e!3299865 Unit!153373)))

(declare-fun lt!2169841 () Unit!153370)

(assert (=> b!5310283 (= lt!2169841 (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169829 lt!2169828 (t!374394 s!2326)))))

(declare-fun res!2252793 () Bool)

(assert (=> b!5310283 (= res!2252793 (matchZipper!1207 lt!2169829 (t!374394 s!2326)))))

(assert (=> b!5310283 (=> res!2252793 e!3299852)))

(assert (=> b!5310283 (= (matchZipper!1207 ((_ map or) lt!2169829 lt!2169828) (t!374394 s!2326)) e!3299852)))

(declare-fun b!5310284 () Bool)

(declare-fun res!2252812 () Bool)

(assert (=> b!5310284 (=> res!2252812 e!3299867)))

(declare-fun isEmpty!33028 (List!61188) Bool)

(assert (=> b!5310284 (= res!2252812 (isEmpty!33028 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310285 () Bool)

(declare-fun res!2252803 () Bool)

(assert (=> b!5310285 (=> res!2252803 e!3299872)))

(assert (=> b!5310285 (= res!2252803 (not (= lt!2169849 (matchR!7148 (Concat!23808 lt!2169847 (regTwo!30438 r!7292)) s!2326))))))

(declare-fun b!5310286 () Bool)

(declare-fun tp!1479512 () Bool)

(assert (=> b!5310286 (= e!3299868 tp!1479512)))

(declare-fun b!5310287 () Bool)

(assert (=> b!5310287 (= e!3299859 (validRegex!6699 lt!2169825))))

(assert (=> b!5310287 (= lt!2169851 (matchR!7148 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)) s!2326))))

(declare-fun lt!2169822 () Unit!153370)

(declare-fun lemmaConcatAssociative!4 (Regex!14963 Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> b!5310287 (= lt!2169822 (lemmaConcatAssociative!4 (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(assert (= (and start!559922 res!2252786) b!5310274))

(assert (= (and b!5310274 res!2252791) b!5310256))

(assert (= (and b!5310256 res!2252798) b!5310267))

(assert (= (and b!5310267 (not res!2252807)) b!5310270))

(assert (= (and b!5310270 (not res!2252784)) b!5310268))

(assert (= (and b!5310268 (not res!2252790)) b!5310258))

(assert (= (and b!5310258 (not res!2252804)) b!5310261))

(assert (= (and b!5310261 (not res!2252796)) b!5310265))

(assert (= (and b!5310265 (not res!2252801)) b!5310250))

(assert (= (and b!5310250 (not res!2252795)) b!5310284))

(assert (= (and b!5310284 (not res!2252812)) b!5310260))

(assert (= (and b!5310260 c!922304) b!5310283))

(assert (= (and b!5310260 (not c!922304)) b!5310251))

(assert (= (and b!5310283 (not res!2252793)) b!5310277))

(assert (= (and b!5310260 (not res!2252802)) b!5310279))

(assert (= (and b!5310279 (not res!2252788)) b!5310273))

(assert (= (and b!5310273 (not res!2252800)) b!5310278))

(assert (= (and b!5310278 (not res!2252811)) b!5310257))

(assert (= (and b!5310278 res!2252799) b!5310275))

(assert (= (and b!5310278 (not res!2252810)) b!5310252))

(assert (= (and b!5310252 (not res!2252794)) b!5310263))

(assert (= (and b!5310263 (not res!2252785)) b!5310249))

(assert (= (and b!5310263 res!2252805) b!5310282))

(assert (= (and b!5310263 (not res!2252813)) b!5310262))

(assert (= (and b!5310262 (not res!2252809)) b!5310280))

(assert (= (and b!5310280 (not res!2252808)) b!5310255))

(assert (= (and b!5310255 (not res!2252806)) b!5310254))

(assert (= (and b!5310254 (not res!2252797)) b!5310248))

(assert (= (and b!5310248 (not res!2252789)) b!5310269))

(assert (= (and b!5310269 (not res!2252792)) b!5310285))

(assert (= (and b!5310285 (not res!2252803)) b!5310266))

(assert (= (and b!5310266 (not res!2252787)) b!5310287))

(assert (= (and start!559922 ((_ is ElementMatch!14963) r!7292)) b!5310271))

(assert (= (and start!559922 ((_ is Concat!23808) r!7292)) b!5310264))

(assert (= (and start!559922 ((_ is Star!14963) r!7292)) b!5310272))

(assert (= (and start!559922 ((_ is Union!14963) r!7292)) b!5310276))

(assert (= (and start!559922 condSetEmpty!34145) setIsEmpty!34145))

(assert (= (and start!559922 (not condSetEmpty!34145)) setNonEmpty!34145))

(assert (= setNonEmpty!34145 b!5310286))

(assert (= b!5310281 b!5310253))

(assert (= (and start!559922 ((_ is Cons!61066) zl!343)) b!5310281))

(assert (= (and start!559922 ((_ is Cons!61065) s!2326)) b!5310259))

(declare-fun m!6347332 () Bool)

(assert (=> b!5310277 m!6347332))

(declare-fun m!6347334 () Bool)

(assert (=> b!5310267 m!6347334))

(declare-fun m!6347336 () Bool)

(assert (=> b!5310267 m!6347336))

(declare-fun m!6347338 () Bool)

(assert (=> b!5310267 m!6347338))

(declare-fun m!6347340 () Bool)

(assert (=> b!5310252 m!6347340))

(declare-fun m!6347342 () Bool)

(assert (=> b!5310252 m!6347342))

(declare-fun m!6347344 () Bool)

(assert (=> b!5310252 m!6347344))

(declare-fun m!6347346 () Bool)

(assert (=> b!5310252 m!6347346))

(declare-fun m!6347348 () Bool)

(assert (=> b!5310252 m!6347348))

(declare-fun m!6347350 () Bool)

(assert (=> b!5310252 m!6347350))

(declare-fun m!6347352 () Bool)

(assert (=> b!5310252 m!6347352))

(declare-fun m!6347354 () Bool)

(assert (=> b!5310250 m!6347354))

(declare-fun m!6347356 () Bool)

(assert (=> b!5310250 m!6347356))

(declare-fun m!6347358 () Bool)

(assert (=> b!5310250 m!6347358))

(assert (=> b!5310250 m!6347354))

(declare-fun m!6347360 () Bool)

(assert (=> b!5310250 m!6347360))

(declare-fun m!6347362 () Bool)

(assert (=> b!5310250 m!6347362))

(assert (=> b!5310250 m!6347356))

(declare-fun m!6347364 () Bool)

(assert (=> b!5310250 m!6347364))

(declare-fun m!6347366 () Bool)

(assert (=> b!5310275 m!6347366))

(declare-fun m!6347368 () Bool)

(assert (=> b!5310256 m!6347368))

(declare-fun m!6347370 () Bool)

(assert (=> b!5310248 m!6347370))

(declare-fun m!6347372 () Bool)

(assert (=> b!5310248 m!6347372))

(declare-fun m!6347374 () Bool)

(assert (=> b!5310248 m!6347374))

(declare-fun m!6347376 () Bool)

(assert (=> b!5310248 m!6347376))

(declare-fun m!6347378 () Bool)

(assert (=> b!5310248 m!6347378))

(declare-fun m!6347380 () Bool)

(assert (=> b!5310248 m!6347380))

(declare-fun m!6347382 () Bool)

(assert (=> b!5310248 m!6347382))

(declare-fun m!6347384 () Bool)

(assert (=> b!5310248 m!6347384))

(assert (=> b!5310248 m!6347372))

(declare-fun m!6347386 () Bool)

(assert (=> b!5310248 m!6347386))

(declare-fun m!6347388 () Bool)

(assert (=> b!5310248 m!6347388))

(assert (=> b!5310248 m!6347374))

(assert (=> b!5310248 m!6347382))

(declare-fun m!6347390 () Bool)

(assert (=> b!5310248 m!6347390))

(declare-fun m!6347392 () Bool)

(assert (=> b!5310248 m!6347392))

(declare-fun m!6347394 () Bool)

(assert (=> b!5310248 m!6347394))

(declare-fun m!6347396 () Bool)

(assert (=> b!5310248 m!6347396))

(declare-fun m!6347398 () Bool)

(assert (=> b!5310248 m!6347398))

(declare-fun m!6347400 () Bool)

(assert (=> b!5310248 m!6347400))

(declare-fun m!6347402 () Bool)

(assert (=> b!5310248 m!6347402))

(declare-fun m!6347404 () Bool)

(assert (=> b!5310248 m!6347404))

(assert (=> b!5310248 m!6347400))

(declare-fun m!6347406 () Bool)

(assert (=> b!5310248 m!6347406))

(declare-fun m!6347408 () Bool)

(assert (=> b!5310248 m!6347408))

(declare-fun m!6347410 () Bool)

(assert (=> b!5310248 m!6347410))

(declare-fun m!6347412 () Bool)

(assert (=> b!5310248 m!6347412))

(declare-fun m!6347414 () Bool)

(assert (=> b!5310248 m!6347414))

(declare-fun m!6347416 () Bool)

(assert (=> b!5310248 m!6347416))

(declare-fun m!6347418 () Bool)

(assert (=> b!5310248 m!6347418))

(declare-fun m!6347420 () Bool)

(assert (=> b!5310248 m!6347420))

(declare-fun m!6347422 () Bool)

(assert (=> b!5310273 m!6347422))

(declare-fun m!6347424 () Bool)

(assert (=> b!5310273 m!6347424))

(declare-fun m!6347426 () Bool)

(assert (=> b!5310283 m!6347426))

(declare-fun m!6347428 () Bool)

(assert (=> b!5310283 m!6347428))

(declare-fun m!6347430 () Bool)

(assert (=> b!5310283 m!6347430))

(declare-fun m!6347432 () Bool)

(assert (=> b!5310261 m!6347432))

(assert (=> b!5310261 m!6347432))

(declare-fun m!6347434 () Bool)

(assert (=> b!5310261 m!6347434))

(assert (=> b!5310278 m!6347428))

(declare-fun m!6347436 () Bool)

(assert (=> b!5310278 m!6347436))

(declare-fun m!6347438 () Bool)

(assert (=> b!5310278 m!6347438))

(declare-fun m!6347440 () Bool)

(assert (=> b!5310278 m!6347440))

(declare-fun m!6347442 () Bool)

(assert (=> b!5310268 m!6347442))

(declare-fun m!6347444 () Bool)

(assert (=> b!5310260 m!6347444))

(declare-fun m!6347446 () Bool)

(assert (=> b!5310260 m!6347446))

(declare-fun m!6347448 () Bool)

(assert (=> b!5310260 m!6347448))

(declare-fun m!6347450 () Bool)

(assert (=> b!5310260 m!6347450))

(declare-fun m!6347452 () Bool)

(assert (=> b!5310260 m!6347452))

(declare-fun m!6347454 () Bool)

(assert (=> b!5310260 m!6347454))

(declare-fun m!6347456 () Bool)

(assert (=> b!5310260 m!6347456))

(assert (=> b!5310257 m!6347366))

(declare-fun m!6347458 () Bool)

(assert (=> b!5310270 m!6347458))

(declare-fun m!6347460 () Bool)

(assert (=> b!5310266 m!6347460))

(declare-fun m!6347462 () Bool)

(assert (=> b!5310287 m!6347462))

(declare-fun m!6347464 () Bool)

(assert (=> b!5310287 m!6347464))

(declare-fun m!6347466 () Bool)

(assert (=> b!5310287 m!6347466))

(declare-fun m!6347468 () Bool)

(assert (=> b!5310284 m!6347468))

(declare-fun m!6347470 () Bool)

(assert (=> b!5310280 m!6347470))

(declare-fun m!6347472 () Bool)

(assert (=> b!5310280 m!6347472))

(declare-fun m!6347474 () Bool)

(assert (=> start!559922 m!6347474))

(declare-fun m!6347476 () Bool)

(assert (=> b!5310255 m!6347476))

(declare-fun m!6347478 () Bool)

(assert (=> b!5310255 m!6347478))

(declare-fun m!6347480 () Bool)

(assert (=> b!5310249 m!6347480))

(declare-fun m!6347482 () Bool)

(assert (=> b!5310282 m!6347482))

(assert (=> b!5310282 m!6347482))

(declare-fun m!6347484 () Bool)

(assert (=> b!5310282 m!6347484))

(declare-fun m!6347486 () Bool)

(assert (=> setNonEmpty!34145 m!6347486))

(declare-fun m!6347488 () Bool)

(assert (=> b!5310263 m!6347488))

(assert (=> b!5310263 m!6347340))

(declare-fun m!6347490 () Bool)

(assert (=> b!5310263 m!6347490))

(declare-fun m!6347492 () Bool)

(assert (=> b!5310263 m!6347492))

(declare-fun m!6347494 () Bool)

(assert (=> b!5310263 m!6347494))

(declare-fun m!6347496 () Bool)

(assert (=> b!5310263 m!6347496))

(declare-fun m!6347498 () Bool)

(assert (=> b!5310269 m!6347498))

(declare-fun m!6347500 () Bool)

(assert (=> b!5310254 m!6347500))

(declare-fun m!6347502 () Bool)

(assert (=> b!5310254 m!6347502))

(declare-fun m!6347504 () Bool)

(assert (=> b!5310281 m!6347504))

(declare-fun m!6347506 () Bool)

(assert (=> b!5310285 m!6347506))

(declare-fun m!6347508 () Bool)

(assert (=> b!5310274 m!6347508))

(declare-fun m!6347510 () Bool)

(assert (=> b!5310279 m!6347510))

(check-sat (not b!5310252) (not b!5310261) (not b!5310282) (not b!5310256) (not b!5310266) (not b!5310259) (not b!5310248) (not start!559922) (not b!5310281) (not b!5310277) (not b!5310283) (not b!5310268) (not b!5310274) (not b!5310253) (not b!5310257) (not b!5310267) (not b!5310284) (not b!5310254) (not setNonEmpty!34145) (not b!5310260) (not b!5310279) (not b!5310275) (not b!5310249) (not b!5310285) (not b!5310280) (not b!5310273) (not b!5310287) (not b!5310278) (not b!5310263) (not b!5310276) (not b!5310269) (not b!5310270) (not b!5310272) tp_is_empty!39179 (not b!5310250) (not b!5310255) (not b!5310286) (not b!5310264))
(check-sat)
(get-model)

(declare-fun d!1706409 () Bool)

(declare-fun choose!39721 ((InoxSet Context!8694) Int) (InoxSet Context!8694))

(assert (=> d!1706409 (= (flatMap!690 lt!2169864 lambda!270467) (choose!39721 lt!2169864 lambda!270467))))

(declare-fun bs!1231257 () Bool)

(assert (= bs!1231257 d!1706409))

(declare-fun m!6347512 () Bool)

(assert (=> bs!1231257 m!6347512))

(assert (=> b!5310263 d!1706409))

(declare-fun d!1706413 () Bool)

(declare-fun c!922311 () Bool)

(declare-fun isEmpty!33031 (List!61189) Bool)

(assert (=> d!1706413 (= c!922311 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3299878 () Bool)

(assert (=> d!1706413 (= (matchZipper!1207 lt!2169858 (t!374394 s!2326)) e!3299878)))

(declare-fun b!5310304 () Bool)

(declare-fun nullableZipper!1334 ((InoxSet Context!8694)) Bool)

(assert (=> b!5310304 (= e!3299878 (nullableZipper!1334 lt!2169858))))

(declare-fun b!5310305 () Bool)

(declare-fun head!11385 (List!61189) C!30196)

(declare-fun tail!10482 (List!61189) List!61189)

(assert (=> b!5310305 (= e!3299878 (matchZipper!1207 (derivationStepZipper!1206 lt!2169858 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706413 c!922311) b!5310304))

(assert (= (and d!1706413 (not c!922311)) b!5310305))

(declare-fun m!6347528 () Bool)

(assert (=> d!1706413 m!6347528))

(declare-fun m!6347530 () Bool)

(assert (=> b!5310304 m!6347530))

(declare-fun m!6347532 () Bool)

(assert (=> b!5310305 m!6347532))

(assert (=> b!5310305 m!6347532))

(declare-fun m!6347534 () Bool)

(assert (=> b!5310305 m!6347534))

(declare-fun m!6347536 () Bool)

(assert (=> b!5310305 m!6347536))

(assert (=> b!5310305 m!6347534))

(assert (=> b!5310305 m!6347536))

(declare-fun m!6347538 () Bool)

(assert (=> b!5310305 m!6347538))

(assert (=> b!5310263 d!1706413))

(declare-fun d!1706419 () Bool)

(declare-fun c!922312 () Bool)

(assert (=> d!1706419 (= c!922312 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3299879 () Bool)

(assert (=> d!1706419 (= (matchZipper!1207 lt!2169835 (t!374394 s!2326)) e!3299879)))

(declare-fun b!5310306 () Bool)

(assert (=> b!5310306 (= e!3299879 (nullableZipper!1334 lt!2169835))))

(declare-fun b!5310307 () Bool)

(assert (=> b!5310307 (= e!3299879 (matchZipper!1207 (derivationStepZipper!1206 lt!2169835 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706419 c!922312) b!5310306))

(assert (= (and d!1706419 (not c!922312)) b!5310307))

(assert (=> d!1706419 m!6347528))

(declare-fun m!6347540 () Bool)

(assert (=> b!5310306 m!6347540))

(assert (=> b!5310307 m!6347532))

(assert (=> b!5310307 m!6347532))

(declare-fun m!6347542 () Bool)

(assert (=> b!5310307 m!6347542))

(assert (=> b!5310307 m!6347536))

(assert (=> b!5310307 m!6347542))

(assert (=> b!5310307 m!6347536))

(declare-fun m!6347544 () Bool)

(assert (=> b!5310307 m!6347544))

(assert (=> b!5310263 d!1706419))

(declare-fun d!1706421 () Bool)

(declare-fun e!3299897 () Bool)

(assert (=> d!1706421 (= (matchZipper!1207 ((_ map or) lt!2169821 lt!2169830) (t!374394 s!2326)) e!3299897)))

(declare-fun res!2252831 () Bool)

(assert (=> d!1706421 (=> res!2252831 e!3299897)))

(assert (=> d!1706421 (= res!2252831 (matchZipper!1207 lt!2169821 (t!374394 s!2326)))))

(declare-fun lt!2169884 () Unit!153370)

(declare-fun choose!39722 ((InoxSet Context!8694) (InoxSet Context!8694) List!61189) Unit!153370)

(assert (=> d!1706421 (= lt!2169884 (choose!39722 lt!2169821 lt!2169830 (t!374394 s!2326)))))

(assert (=> d!1706421 (= (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169821 lt!2169830 (t!374394 s!2326)) lt!2169884)))

(declare-fun b!5310337 () Bool)

(assert (=> b!5310337 (= e!3299897 (matchZipper!1207 lt!2169830 (t!374394 s!2326)))))

(assert (= (and d!1706421 (not res!2252831)) b!5310337))

(declare-fun m!6347546 () Bool)

(assert (=> d!1706421 m!6347546))

(assert (=> d!1706421 m!6347438))

(declare-fun m!6347548 () Bool)

(assert (=> d!1706421 m!6347548))

(assert (=> b!5310337 m!6347480))

(assert (=> b!5310263 d!1706421))

(declare-fun d!1706423 () Bool)

(declare-fun dynLambda!24136 (Int Context!8694) (InoxSet Context!8694))

(assert (=> d!1706423 (= (flatMap!690 lt!2169864 lambda!270467) (dynLambda!24136 lambda!270467 lt!2169844))))

(declare-fun lt!2169889 () Unit!153370)

(declare-fun choose!39723 ((InoxSet Context!8694) Context!8694 Int) Unit!153370)

(assert (=> d!1706423 (= lt!2169889 (choose!39723 lt!2169864 lt!2169844 lambda!270467))))

(assert (=> d!1706423 (= lt!2169864 (store ((as const (Array Context!8694 Bool)) false) lt!2169844 true))))

(assert (=> d!1706423 (= (lemmaFlatMapOnSingletonSet!222 lt!2169864 lt!2169844 lambda!270467) lt!2169889)))

(declare-fun b_lambda!204405 () Bool)

(assert (=> (not b_lambda!204405) (not d!1706423)))

(declare-fun bs!1231260 () Bool)

(assert (= bs!1231260 d!1706423))

(assert (=> bs!1231260 m!6347494))

(declare-fun m!6347576 () Bool)

(assert (=> bs!1231260 m!6347576))

(declare-fun m!6347578 () Bool)

(assert (=> bs!1231260 m!6347578))

(assert (=> bs!1231260 m!6347350))

(assert (=> b!5310263 d!1706423))

(declare-fun b!5310352 () Bool)

(declare-fun e!3299908 () (InoxSet Context!8694))

(declare-fun e!3299907 () (InoxSet Context!8694))

(assert (=> b!5310352 (= e!3299908 e!3299907)))

(declare-fun c!922324 () Bool)

(assert (=> b!5310352 (= c!922324 ((_ is Cons!61064) (exprs!4847 lt!2169844)))))

(declare-fun d!1706429 () Bool)

(declare-fun c!922323 () Bool)

(declare-fun e!3299906 () Bool)

(assert (=> d!1706429 (= c!922323 e!3299906)))

(declare-fun res!2252838 () Bool)

(assert (=> d!1706429 (=> (not res!2252838) (not e!3299906))))

(assert (=> d!1706429 (= res!2252838 ((_ is Cons!61064) (exprs!4847 lt!2169844)))))

(assert (=> d!1706429 (= (derivationStepZipperUp!335 lt!2169844 (h!67513 s!2326)) e!3299908)))

(declare-fun bm!378594 () Bool)

(declare-fun call!378599 () (InoxSet Context!8694))

(assert (=> bm!378594 (= call!378599 (derivationStepZipperDown!411 (h!67512 (exprs!4847 lt!2169844)) (Context!8695 (t!374393 (exprs!4847 lt!2169844))) (h!67513 s!2326)))))

(declare-fun b!5310353 () Bool)

(assert (=> b!5310353 (= e!3299908 ((_ map or) call!378599 (derivationStepZipperUp!335 (Context!8695 (t!374393 (exprs!4847 lt!2169844))) (h!67513 s!2326))))))

(declare-fun b!5310354 () Bool)

(assert (=> b!5310354 (= e!3299907 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5310355 () Bool)

(assert (=> b!5310355 (= e!3299906 (nullable!5132 (h!67512 (exprs!4847 lt!2169844))))))

(declare-fun b!5310356 () Bool)

(assert (=> b!5310356 (= e!3299907 call!378599)))

(assert (= (and d!1706429 res!2252838) b!5310355))

(assert (= (and d!1706429 c!922323) b!5310353))

(assert (= (and d!1706429 (not c!922323)) b!5310352))

(assert (= (and b!5310352 c!922324) b!5310356))

(assert (= (and b!5310352 (not c!922324)) b!5310354))

(assert (= (or b!5310353 b!5310356) bm!378594))

(declare-fun m!6347584 () Bool)

(assert (=> bm!378594 m!6347584))

(declare-fun m!6347586 () Bool)

(assert (=> b!5310353 m!6347586))

(declare-fun m!6347588 () Bool)

(assert (=> b!5310355 m!6347588))

(assert (=> b!5310263 d!1706429))

(declare-fun b!5310383 () Bool)

(declare-fun e!3299932 () Bool)

(declare-fun call!378607 () Bool)

(assert (=> b!5310383 (= e!3299932 call!378607)))

(declare-fun b!5310384 () Bool)

(declare-fun res!2252861 () Bool)

(declare-fun e!3299928 () Bool)

(assert (=> b!5310384 (=> res!2252861 e!3299928)))

(assert (=> b!5310384 (= res!2252861 (not ((_ is Concat!23808) r!7292)))))

(declare-fun e!3299931 () Bool)

(assert (=> b!5310384 (= e!3299931 e!3299928)))

(declare-fun bm!378601 () Bool)

(declare-fun call!378608 () Bool)

(declare-fun c!922330 () Bool)

(assert (=> bm!378601 (= call!378608 (validRegex!6699 (ite c!922330 (regOne!30439 r!7292) (regOne!30438 r!7292))))))

(declare-fun b!5310385 () Bool)

(declare-fun e!3299927 () Bool)

(assert (=> b!5310385 (= e!3299928 e!3299927)))

(declare-fun res!2252859 () Bool)

(assert (=> b!5310385 (=> (not res!2252859) (not e!3299927))))

(assert (=> b!5310385 (= res!2252859 call!378608)))

(declare-fun b!5310386 () Bool)

(declare-fun call!378606 () Bool)

(assert (=> b!5310386 (= e!3299927 call!378606)))

(declare-fun b!5310387 () Bool)

(declare-fun e!3299933 () Bool)

(assert (=> b!5310387 (= e!3299933 e!3299931)))

(assert (=> b!5310387 (= c!922330 ((_ is Union!14963) r!7292))))

(declare-fun b!5310388 () Bool)

(assert (=> b!5310388 (= e!3299933 e!3299932)))

(declare-fun res!2252860 () Bool)

(assert (=> b!5310388 (= res!2252860 (not (nullable!5132 (reg!15292 r!7292))))))

(assert (=> b!5310388 (=> (not res!2252860) (not e!3299932))))

(declare-fun c!922329 () Bool)

(declare-fun bm!378602 () Bool)

(assert (=> bm!378602 (= call!378607 (validRegex!6699 (ite c!922329 (reg!15292 r!7292) (ite c!922330 (regTwo!30439 r!7292) (regTwo!30438 r!7292)))))))

(declare-fun bm!378603 () Bool)

(assert (=> bm!378603 (= call!378606 call!378607)))

(declare-fun b!5310389 () Bool)

(declare-fun res!2252857 () Bool)

(declare-fun e!3299930 () Bool)

(assert (=> b!5310389 (=> (not res!2252857) (not e!3299930))))

(assert (=> b!5310389 (= res!2252857 call!378608)))

(assert (=> b!5310389 (= e!3299931 e!3299930)))

(declare-fun d!1706433 () Bool)

(declare-fun res!2252858 () Bool)

(declare-fun e!3299929 () Bool)

(assert (=> d!1706433 (=> res!2252858 e!3299929)))

(assert (=> d!1706433 (= res!2252858 ((_ is ElementMatch!14963) r!7292))))

(assert (=> d!1706433 (= (validRegex!6699 r!7292) e!3299929)))

(declare-fun b!5310390 () Bool)

(assert (=> b!5310390 (= e!3299930 call!378606)))

(declare-fun b!5310391 () Bool)

(assert (=> b!5310391 (= e!3299929 e!3299933)))

(assert (=> b!5310391 (= c!922329 ((_ is Star!14963) r!7292))))

(assert (= (and d!1706433 (not res!2252858)) b!5310391))

(assert (= (and b!5310391 c!922329) b!5310388))

(assert (= (and b!5310391 (not c!922329)) b!5310387))

(assert (= (and b!5310388 res!2252860) b!5310383))

(assert (= (and b!5310387 c!922330) b!5310389))

(assert (= (and b!5310387 (not c!922330)) b!5310384))

(assert (= (and b!5310389 res!2252857) b!5310390))

(assert (= (and b!5310384 (not res!2252861)) b!5310385))

(assert (= (and b!5310385 res!2252859) b!5310386))

(assert (= (or b!5310390 b!5310386) bm!378603))

(assert (= (or b!5310389 b!5310385) bm!378601))

(assert (= (or b!5310383 bm!378603) bm!378602))

(declare-fun m!6347598 () Bool)

(assert (=> bm!378601 m!6347598))

(declare-fun m!6347600 () Bool)

(assert (=> b!5310388 m!6347600))

(declare-fun m!6347602 () Bool)

(assert (=> bm!378602 m!6347602))

(assert (=> start!559922 d!1706433))

(declare-fun e!3299934 () Bool)

(declare-fun d!1706439 () Bool)

(assert (=> d!1706439 (= (matchZipper!1207 ((_ map or) lt!2169829 lt!2169828) (t!374394 s!2326)) e!3299934)))

(declare-fun res!2252862 () Bool)

(assert (=> d!1706439 (=> res!2252862 e!3299934)))

(assert (=> d!1706439 (= res!2252862 (matchZipper!1207 lt!2169829 (t!374394 s!2326)))))

(declare-fun lt!2169894 () Unit!153370)

(assert (=> d!1706439 (= lt!2169894 (choose!39722 lt!2169829 lt!2169828 (t!374394 s!2326)))))

(assert (=> d!1706439 (= (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169829 lt!2169828 (t!374394 s!2326)) lt!2169894)))

(declare-fun b!5310392 () Bool)

(assert (=> b!5310392 (= e!3299934 (matchZipper!1207 lt!2169828 (t!374394 s!2326)))))

(assert (= (and d!1706439 (not res!2252862)) b!5310392))

(assert (=> d!1706439 m!6347430))

(assert (=> d!1706439 m!6347428))

(declare-fun m!6347604 () Bool)

(assert (=> d!1706439 m!6347604))

(assert (=> b!5310392 m!6347332))

(assert (=> b!5310283 d!1706439))

(declare-fun d!1706441 () Bool)

(declare-fun c!922333 () Bool)

(assert (=> d!1706441 (= c!922333 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3299937 () Bool)

(assert (=> d!1706441 (= (matchZipper!1207 lt!2169829 (t!374394 s!2326)) e!3299937)))

(declare-fun b!5310397 () Bool)

(assert (=> b!5310397 (= e!3299937 (nullableZipper!1334 lt!2169829))))

(declare-fun b!5310398 () Bool)

(assert (=> b!5310398 (= e!3299937 (matchZipper!1207 (derivationStepZipper!1206 lt!2169829 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706441 c!922333) b!5310397))

(assert (= (and d!1706441 (not c!922333)) b!5310398))

(assert (=> d!1706441 m!6347528))

(declare-fun m!6347606 () Bool)

(assert (=> b!5310397 m!6347606))

(assert (=> b!5310398 m!6347532))

(assert (=> b!5310398 m!6347532))

(declare-fun m!6347608 () Bool)

(assert (=> b!5310398 m!6347608))

(assert (=> b!5310398 m!6347536))

(assert (=> b!5310398 m!6347608))

(assert (=> b!5310398 m!6347536))

(declare-fun m!6347610 () Bool)

(assert (=> b!5310398 m!6347610))

(assert (=> b!5310283 d!1706441))

(declare-fun d!1706443 () Bool)

(declare-fun c!922338 () Bool)

(assert (=> d!1706443 (= c!922338 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3299950 () Bool)

(assert (=> d!1706443 (= (matchZipper!1207 ((_ map or) lt!2169829 lt!2169828) (t!374394 s!2326)) e!3299950)))

(declare-fun b!5310423 () Bool)

(assert (=> b!5310423 (= e!3299950 (nullableZipper!1334 ((_ map or) lt!2169829 lt!2169828)))))

(declare-fun b!5310424 () Bool)

(assert (=> b!5310424 (= e!3299950 (matchZipper!1207 (derivationStepZipper!1206 ((_ map or) lt!2169829 lt!2169828) (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706443 c!922338) b!5310423))

(assert (= (and d!1706443 (not c!922338)) b!5310424))

(assert (=> d!1706443 m!6347528))

(declare-fun m!6347612 () Bool)

(assert (=> b!5310423 m!6347612))

(assert (=> b!5310424 m!6347532))

(assert (=> b!5310424 m!6347532))

(declare-fun m!6347614 () Bool)

(assert (=> b!5310424 m!6347614))

(assert (=> b!5310424 m!6347536))

(assert (=> b!5310424 m!6347614))

(assert (=> b!5310424 m!6347536))

(declare-fun m!6347616 () Bool)

(assert (=> b!5310424 m!6347616))

(assert (=> b!5310283 d!1706443))

(declare-fun d!1706445 () Bool)

(declare-fun lambda!270483 () Int)

(declare-fun forall!14380 (List!61188 Int) Bool)

(assert (=> d!1706445 (= (inv!80654 (h!67514 zl!343)) (forall!14380 (exprs!4847 (h!67514 zl!343)) lambda!270483))))

(declare-fun bs!1231269 () Bool)

(assert (= bs!1231269 d!1706445))

(declare-fun m!6347618 () Bool)

(assert (=> bs!1231269 m!6347618))

(assert (=> b!5310281 d!1706445))

(declare-fun d!1706447 () Bool)

(declare-fun c!922339 () Bool)

(assert (=> d!1706447 (= c!922339 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3299951 () Bool)

(assert (=> d!1706447 (= (matchZipper!1207 (derivationStepZipper!1206 lt!2169864 (h!67513 s!2326)) (t!374394 s!2326)) e!3299951)))

(declare-fun b!5310425 () Bool)

(assert (=> b!5310425 (= e!3299951 (nullableZipper!1334 (derivationStepZipper!1206 lt!2169864 (h!67513 s!2326))))))

(declare-fun b!5310426 () Bool)

(assert (=> b!5310426 (= e!3299951 (matchZipper!1207 (derivationStepZipper!1206 (derivationStepZipper!1206 lt!2169864 (h!67513 s!2326)) (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706447 c!922339) b!5310425))

(assert (= (and d!1706447 (not c!922339)) b!5310426))

(assert (=> d!1706447 m!6347528))

(assert (=> b!5310425 m!6347482))

(declare-fun m!6347620 () Bool)

(assert (=> b!5310425 m!6347620))

(assert (=> b!5310426 m!6347532))

(assert (=> b!5310426 m!6347482))

(assert (=> b!5310426 m!6347532))

(declare-fun m!6347622 () Bool)

(assert (=> b!5310426 m!6347622))

(assert (=> b!5310426 m!6347536))

(assert (=> b!5310426 m!6347622))

(assert (=> b!5310426 m!6347536))

(declare-fun m!6347624 () Bool)

(assert (=> b!5310426 m!6347624))

(assert (=> b!5310282 d!1706447))

(declare-fun bs!1231272 () Bool)

(declare-fun d!1706449 () Bool)

(assert (= bs!1231272 (and d!1706449 b!5310260)))

(declare-fun lambda!270486 () Int)

(assert (=> bs!1231272 (= lambda!270486 lambda!270467)))

(assert (=> d!1706449 true))

(assert (=> d!1706449 (= (derivationStepZipper!1206 lt!2169864 (h!67513 s!2326)) (flatMap!690 lt!2169864 lambda!270486))))

(declare-fun bs!1231273 () Bool)

(assert (= bs!1231273 d!1706449))

(declare-fun m!6347668 () Bool)

(assert (=> bs!1231273 m!6347668))

(assert (=> b!5310282 d!1706449))

(declare-fun d!1706461 () Bool)

(declare-fun lt!2169908 () Int)

(assert (=> d!1706461 (>= lt!2169908 0)))

(declare-fun e!3299980 () Int)

(assert (=> d!1706461 (= lt!2169908 e!3299980)))

(declare-fun c!922357 () Bool)

(assert (=> d!1706461 (= c!922357 ((_ is Cons!61064) (exprs!4847 lt!2169872)))))

(assert (=> d!1706461 (= (contextDepthTotal!104 lt!2169872) lt!2169908)))

(declare-fun b!5310483 () Bool)

(declare-fun regexDepthTotal!44 (Regex!14963) Int)

(assert (=> b!5310483 (= e!3299980 (+ (regexDepthTotal!44 (h!67512 (exprs!4847 lt!2169872))) (contextDepthTotal!104 (Context!8695 (t!374393 (exprs!4847 lt!2169872))))))))

(declare-fun b!5310484 () Bool)

(assert (=> b!5310484 (= e!3299980 1)))

(assert (= (and d!1706461 c!922357) b!5310483))

(assert (= (and d!1706461 (not c!922357)) b!5310484))

(declare-fun m!6347706 () Bool)

(assert (=> b!5310483 m!6347706))

(declare-fun m!6347708 () Bool)

(assert (=> b!5310483 m!6347708))

(assert (=> b!5310280 d!1706461))

(declare-fun d!1706471 () Bool)

(declare-fun lt!2169910 () Int)

(assert (=> d!1706471 (>= lt!2169910 0)))

(declare-fun e!3299981 () Int)

(assert (=> d!1706471 (= lt!2169910 e!3299981)))

(declare-fun c!922358 () Bool)

(assert (=> d!1706471 (= c!922358 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343))))))

(assert (=> d!1706471 (= (contextDepthTotal!104 (h!67514 zl!343)) lt!2169910)))

(declare-fun b!5310485 () Bool)

(assert (=> b!5310485 (= e!3299981 (+ (regexDepthTotal!44 (h!67512 (exprs!4847 (h!67514 zl!343)))) (contextDepthTotal!104 (Context!8695 (t!374393 (exprs!4847 (h!67514 zl!343)))))))))

(declare-fun b!5310486 () Bool)

(assert (=> b!5310486 (= e!3299981 1)))

(assert (= (and d!1706471 c!922358) b!5310485))

(assert (= (and d!1706471 (not c!922358)) b!5310486))

(declare-fun m!6347710 () Bool)

(assert (=> b!5310485 m!6347710))

(declare-fun m!6347712 () Bool)

(assert (=> b!5310485 m!6347712))

(assert (=> b!5310280 d!1706471))

(declare-fun bs!1231285 () Bool)

(declare-fun d!1706473 () Bool)

(assert (= bs!1231285 (and d!1706473 d!1706445)))

(declare-fun lambda!270496 () Int)

(assert (=> bs!1231285 (= lambda!270496 lambda!270483)))

(declare-fun b!5310539 () Bool)

(declare-fun e!3300012 () Bool)

(declare-fun lt!2169913 () Regex!14963)

(declare-fun head!11386 (List!61188) Regex!14963)

(assert (=> b!5310539 (= e!3300012 (= lt!2169913 (head!11386 (unfocusZipperList!405 zl!343))))))

(declare-fun b!5310540 () Bool)

(declare-fun e!3300014 () Bool)

(assert (=> b!5310540 (= e!3300014 (isEmpty!33028 (t!374393 (unfocusZipperList!405 zl!343))))))

(declare-fun b!5310541 () Bool)

(declare-fun e!3300013 () Bool)

(declare-fun e!3300015 () Bool)

(assert (=> b!5310541 (= e!3300013 e!3300015)))

(declare-fun c!922378 () Bool)

(assert (=> b!5310541 (= c!922378 (isEmpty!33028 (unfocusZipperList!405 zl!343)))))

(declare-fun b!5310542 () Bool)

(declare-fun e!3300016 () Regex!14963)

(assert (=> b!5310542 (= e!3300016 EmptyLang!14963)))

(assert (=> d!1706473 e!3300013))

(declare-fun res!2252925 () Bool)

(assert (=> d!1706473 (=> (not res!2252925) (not e!3300013))))

(assert (=> d!1706473 (= res!2252925 (validRegex!6699 lt!2169913))))

(declare-fun e!3300017 () Regex!14963)

(assert (=> d!1706473 (= lt!2169913 e!3300017)))

(declare-fun c!922375 () Bool)

(assert (=> d!1706473 (= c!922375 e!3300014)))

(declare-fun res!2252926 () Bool)

(assert (=> d!1706473 (=> (not res!2252926) (not e!3300014))))

(assert (=> d!1706473 (= res!2252926 ((_ is Cons!61064) (unfocusZipperList!405 zl!343)))))

(assert (=> d!1706473 (forall!14380 (unfocusZipperList!405 zl!343) lambda!270496)))

(assert (=> d!1706473 (= (generalisedUnion!892 (unfocusZipperList!405 zl!343)) lt!2169913)))

(declare-fun b!5310543 () Bool)

(assert (=> b!5310543 (= e!3300015 e!3300012)))

(declare-fun c!922376 () Bool)

(declare-fun tail!10483 (List!61188) List!61188)

(assert (=> b!5310543 (= c!922376 (isEmpty!33028 (tail!10483 (unfocusZipperList!405 zl!343))))))

(declare-fun b!5310544 () Bool)

(assert (=> b!5310544 (= e!3300017 e!3300016)))

(declare-fun c!922377 () Bool)

(assert (=> b!5310544 (= c!922377 ((_ is Cons!61064) (unfocusZipperList!405 zl!343)))))

(declare-fun b!5310545 () Bool)

(declare-fun isEmptyLang!876 (Regex!14963) Bool)

(assert (=> b!5310545 (= e!3300015 (isEmptyLang!876 lt!2169913))))

(declare-fun b!5310546 () Bool)

(assert (=> b!5310546 (= e!3300017 (h!67512 (unfocusZipperList!405 zl!343)))))

(declare-fun b!5310547 () Bool)

(declare-fun isUnion!308 (Regex!14963) Bool)

(assert (=> b!5310547 (= e!3300012 (isUnion!308 lt!2169913))))

(declare-fun b!5310548 () Bool)

(assert (=> b!5310548 (= e!3300016 (Union!14963 (h!67512 (unfocusZipperList!405 zl!343)) (generalisedUnion!892 (t!374393 (unfocusZipperList!405 zl!343)))))))

(assert (= (and d!1706473 res!2252926) b!5310540))

(assert (= (and d!1706473 c!922375) b!5310546))

(assert (= (and d!1706473 (not c!922375)) b!5310544))

(assert (= (and b!5310544 c!922377) b!5310548))

(assert (= (and b!5310544 (not c!922377)) b!5310542))

(assert (= (and d!1706473 res!2252925) b!5310541))

(assert (= (and b!5310541 c!922378) b!5310545))

(assert (= (and b!5310541 (not c!922378)) b!5310543))

(assert (= (and b!5310543 c!922376) b!5310539))

(assert (= (and b!5310543 (not c!922376)) b!5310547))

(declare-fun m!6347718 () Bool)

(assert (=> b!5310547 m!6347718))

(assert (=> b!5310541 m!6347432))

(declare-fun m!6347720 () Bool)

(assert (=> b!5310541 m!6347720))

(declare-fun m!6347722 () Bool)

(assert (=> b!5310548 m!6347722))

(assert (=> b!5310543 m!6347432))

(declare-fun m!6347724 () Bool)

(assert (=> b!5310543 m!6347724))

(assert (=> b!5310543 m!6347724))

(declare-fun m!6347726 () Bool)

(assert (=> b!5310543 m!6347726))

(declare-fun m!6347728 () Bool)

(assert (=> b!5310540 m!6347728))

(assert (=> b!5310539 m!6347432))

(declare-fun m!6347730 () Bool)

(assert (=> b!5310539 m!6347730))

(declare-fun m!6347732 () Bool)

(assert (=> d!1706473 m!6347732))

(assert (=> d!1706473 m!6347432))

(declare-fun m!6347734 () Bool)

(assert (=> d!1706473 m!6347734))

(declare-fun m!6347736 () Bool)

(assert (=> b!5310545 m!6347736))

(assert (=> b!5310261 d!1706473))

(declare-fun bs!1231292 () Bool)

(declare-fun d!1706477 () Bool)

(assert (= bs!1231292 (and d!1706477 d!1706445)))

(declare-fun lambda!270500 () Int)

(assert (=> bs!1231292 (= lambda!270500 lambda!270483)))

(declare-fun bs!1231293 () Bool)

(assert (= bs!1231293 (and d!1706477 d!1706473)))

(assert (=> bs!1231293 (= lambda!270500 lambda!270496)))

(declare-fun lt!2169916 () List!61188)

(assert (=> d!1706477 (forall!14380 lt!2169916 lambda!270500)))

(declare-fun e!3300027 () List!61188)

(assert (=> d!1706477 (= lt!2169916 e!3300027)))

(declare-fun c!922385 () Bool)

(assert (=> d!1706477 (= c!922385 ((_ is Cons!61066) zl!343))))

(assert (=> d!1706477 (= (unfocusZipperList!405 zl!343) lt!2169916)))

(declare-fun b!5310564 () Bool)

(assert (=> b!5310564 (= e!3300027 (Cons!61064 (generalisedConcat!632 (exprs!4847 (h!67514 zl!343))) (unfocusZipperList!405 (t!374395 zl!343))))))

(declare-fun b!5310565 () Bool)

(assert (=> b!5310565 (= e!3300027 Nil!61064)))

(assert (= (and d!1706477 c!922385) b!5310564))

(assert (= (and d!1706477 (not c!922385)) b!5310565))

(declare-fun m!6347738 () Bool)

(assert (=> d!1706477 m!6347738))

(assert (=> b!5310564 m!6347442))

(declare-fun m!6347740 () Bool)

(assert (=> b!5310564 m!6347740))

(assert (=> b!5310261 d!1706477))

(declare-fun b!5310566 () Bool)

(declare-fun e!3300030 () (InoxSet Context!8694))

(declare-fun e!3300029 () (InoxSet Context!8694))

(assert (=> b!5310566 (= e!3300030 e!3300029)))

(declare-fun c!922387 () Bool)

(assert (=> b!5310566 (= c!922387 ((_ is Cons!61064) (exprs!4847 lt!2169868)))))

(declare-fun d!1706479 () Bool)

(declare-fun c!922386 () Bool)

(declare-fun e!3300028 () Bool)

(assert (=> d!1706479 (= c!922386 e!3300028)))

(declare-fun res!2252930 () Bool)

(assert (=> d!1706479 (=> (not res!2252930) (not e!3300028))))

(assert (=> d!1706479 (= res!2252930 ((_ is Cons!61064) (exprs!4847 lt!2169868)))))

(assert (=> d!1706479 (= (derivationStepZipperUp!335 lt!2169868 (h!67513 s!2326)) e!3300030)))

(declare-fun bm!378614 () Bool)

(declare-fun call!378619 () (InoxSet Context!8694))

(assert (=> bm!378614 (= call!378619 (derivationStepZipperDown!411 (h!67512 (exprs!4847 lt!2169868)) (Context!8695 (t!374393 (exprs!4847 lt!2169868))) (h!67513 s!2326)))))

(declare-fun b!5310567 () Bool)

(assert (=> b!5310567 (= e!3300030 ((_ map or) call!378619 (derivationStepZipperUp!335 (Context!8695 (t!374393 (exprs!4847 lt!2169868))) (h!67513 s!2326))))))

(declare-fun b!5310568 () Bool)

(assert (=> b!5310568 (= e!3300029 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5310569 () Bool)

(assert (=> b!5310569 (= e!3300028 (nullable!5132 (h!67512 (exprs!4847 lt!2169868))))))

(declare-fun b!5310570 () Bool)

(assert (=> b!5310570 (= e!3300029 call!378619)))

(assert (= (and d!1706479 res!2252930) b!5310569))

(assert (= (and d!1706479 c!922386) b!5310567))

(assert (= (and d!1706479 (not c!922386)) b!5310566))

(assert (= (and b!5310566 c!922387) b!5310570))

(assert (= (and b!5310566 (not c!922387)) b!5310568))

(assert (= (or b!5310567 b!5310570) bm!378614))

(declare-fun m!6347742 () Bool)

(assert (=> bm!378614 m!6347742))

(declare-fun m!6347744 () Bool)

(assert (=> b!5310567 m!6347744))

(declare-fun m!6347746 () Bool)

(assert (=> b!5310569 m!6347746))

(assert (=> b!5310260 d!1706479))

(declare-fun d!1706481 () Bool)

(declare-fun nullableFct!1485 (Regex!14963) Bool)

(assert (=> d!1706481 (= (nullable!5132 (h!67512 (exprs!4847 (h!67514 zl!343)))) (nullableFct!1485 (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun bs!1231298 () Bool)

(assert (= bs!1231298 d!1706481))

(declare-fun m!6347748 () Bool)

(assert (=> bs!1231298 m!6347748))

(assert (=> b!5310260 d!1706481))

(declare-fun b!5310571 () Bool)

(declare-fun e!3300033 () (InoxSet Context!8694))

(declare-fun e!3300032 () (InoxSet Context!8694))

(assert (=> b!5310571 (= e!3300033 e!3300032)))

(declare-fun c!922389 () Bool)

(assert (=> b!5310571 (= c!922389 ((_ is Cons!61064) (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343))))))))))

(declare-fun d!1706483 () Bool)

(declare-fun c!922388 () Bool)

(declare-fun e!3300031 () Bool)

(assert (=> d!1706483 (= c!922388 e!3300031)))

(declare-fun res!2252931 () Bool)

(assert (=> d!1706483 (=> (not res!2252931) (not e!3300031))))

(assert (=> d!1706483 (= res!2252931 ((_ is Cons!61064) (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343))))))))))

(assert (=> d!1706483 (= (derivationStepZipperUp!335 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343))))) (h!67513 s!2326)) e!3300033)))

(declare-fun bm!378615 () Bool)

(declare-fun call!378620 () (InoxSet Context!8694))

(assert (=> bm!378615 (= call!378620 (derivationStepZipperDown!411 (h!67512 (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343))))))) (Context!8695 (t!374393 (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343)))))))) (h!67513 s!2326)))))

(declare-fun b!5310572 () Bool)

(assert (=> b!5310572 (= e!3300033 ((_ map or) call!378620 (derivationStepZipperUp!335 (Context!8695 (t!374393 (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343)))))))) (h!67513 s!2326))))))

(declare-fun b!5310573 () Bool)

(assert (=> b!5310573 (= e!3300032 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5310574 () Bool)

(assert (=> b!5310574 (= e!3300031 (nullable!5132 (h!67512 (exprs!4847 (Context!8695 (Cons!61064 (h!67512 (exprs!4847 (h!67514 zl!343))) (t!374393 (exprs!4847 (h!67514 zl!343)))))))))))

(declare-fun b!5310575 () Bool)

(assert (=> b!5310575 (= e!3300032 call!378620)))

(assert (= (and d!1706483 res!2252931) b!5310574))

(assert (= (and d!1706483 c!922388) b!5310572))

(assert (= (and d!1706483 (not c!922388)) b!5310571))

(assert (= (and b!5310571 c!922389) b!5310575))

(assert (= (and b!5310571 (not c!922389)) b!5310573))

(assert (= (or b!5310572 b!5310575) bm!378615))

(declare-fun m!6347750 () Bool)

(assert (=> bm!378615 m!6347750))

(declare-fun m!6347752 () Bool)

(assert (=> b!5310572 m!6347752))

(declare-fun m!6347754 () Bool)

(assert (=> b!5310574 m!6347754))

(assert (=> b!5310260 d!1706483))

(declare-fun b!5310576 () Bool)

(declare-fun e!3300036 () (InoxSet Context!8694))

(declare-fun e!3300035 () (InoxSet Context!8694))

(assert (=> b!5310576 (= e!3300036 e!3300035)))

(declare-fun c!922391 () Bool)

(assert (=> b!5310576 (= c!922391 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343))))))

(declare-fun d!1706485 () Bool)

(declare-fun c!922390 () Bool)

(declare-fun e!3300034 () Bool)

(assert (=> d!1706485 (= c!922390 e!3300034)))

(declare-fun res!2252932 () Bool)

(assert (=> d!1706485 (=> (not res!2252932) (not e!3300034))))

(assert (=> d!1706485 (= res!2252932 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343))))))

(assert (=> d!1706485 (= (derivationStepZipperUp!335 (h!67514 zl!343) (h!67513 s!2326)) e!3300036)))

(declare-fun bm!378616 () Bool)

(declare-fun call!378621 () (InoxSet Context!8694))

(assert (=> bm!378616 (= call!378621 (derivationStepZipperDown!411 (h!67512 (exprs!4847 (h!67514 zl!343))) (Context!8695 (t!374393 (exprs!4847 (h!67514 zl!343)))) (h!67513 s!2326)))))

(declare-fun b!5310577 () Bool)

(assert (=> b!5310577 (= e!3300036 ((_ map or) call!378621 (derivationStepZipperUp!335 (Context!8695 (t!374393 (exprs!4847 (h!67514 zl!343)))) (h!67513 s!2326))))))

(declare-fun b!5310578 () Bool)

(assert (=> b!5310578 (= e!3300035 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5310579 () Bool)

(assert (=> b!5310579 (= e!3300034 (nullable!5132 (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310580 () Bool)

(assert (=> b!5310580 (= e!3300035 call!378621)))

(assert (= (and d!1706485 res!2252932) b!5310579))

(assert (= (and d!1706485 c!922390) b!5310577))

(assert (= (and d!1706485 (not c!922390)) b!5310576))

(assert (= (and b!5310576 c!922391) b!5310580))

(assert (= (and b!5310576 (not c!922391)) b!5310578))

(assert (= (or b!5310577 b!5310580) bm!378616))

(declare-fun m!6347756 () Bool)

(assert (=> bm!378616 m!6347756))

(declare-fun m!6347758 () Bool)

(assert (=> b!5310577 m!6347758))

(assert (=> b!5310579 m!6347450))

(assert (=> b!5310260 d!1706485))

(declare-fun bm!378630 () Bool)

(declare-fun call!378638 () (InoxSet Context!8694))

(declare-fun call!378640 () (InoxSet Context!8694))

(assert (=> bm!378630 (= call!378638 call!378640)))

(declare-fun b!5310617 () Bool)

(declare-fun e!3300060 () (InoxSet Context!8694))

(declare-fun e!3300061 () (InoxSet Context!8694))

(assert (=> b!5310617 (= e!3300060 e!3300061)))

(declare-fun c!922406 () Bool)

(assert (=> b!5310617 (= c!922406 ((_ is Concat!23808) (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun bm!378631 () Bool)

(declare-fun call!378637 () (InoxSet Context!8694))

(declare-fun c!922408 () Bool)

(declare-fun call!378639 () List!61188)

(assert (=> bm!378631 (= call!378637 (derivationStepZipperDown!411 (ite c!922408 (regTwo!30439 (h!67512 (exprs!4847 (h!67514 zl!343)))) (regOne!30438 (h!67512 (exprs!4847 (h!67514 zl!343))))) (ite c!922408 lt!2169868 (Context!8695 call!378639)) (h!67513 s!2326)))))

(declare-fun bm!378632 () Bool)

(declare-fun call!378635 () (InoxSet Context!8694))

(assert (=> bm!378632 (= call!378635 call!378638)))

(declare-fun b!5310618 () Bool)

(declare-fun e!3300058 () (InoxSet Context!8694))

(assert (=> b!5310618 (= e!3300058 call!378635)))

(declare-fun b!5310619 () Bool)

(declare-fun e!3300057 () (InoxSet Context!8694))

(assert (=> b!5310619 (= e!3300057 (store ((as const (Array Context!8694 Bool)) false) lt!2169868 true))))

(declare-fun bm!378633 () Bool)

(declare-fun c!922407 () Bool)

(declare-fun $colon$colon!1383 (List!61188 Regex!14963) List!61188)

(assert (=> bm!378633 (= call!378639 ($colon$colon!1383 (exprs!4847 lt!2169868) (ite (or c!922407 c!922406) (regTwo!30438 (h!67512 (exprs!4847 (h!67514 zl!343)))) (h!67512 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun d!1706487 () Bool)

(declare-fun c!922405 () Bool)

(assert (=> d!1706487 (= c!922405 (and ((_ is ElementMatch!14963) (h!67512 (exprs!4847 (h!67514 zl!343)))) (= (c!922305 (h!67512 (exprs!4847 (h!67514 zl!343)))) (h!67513 s!2326))))))

(assert (=> d!1706487 (= (derivationStepZipperDown!411 (h!67512 (exprs!4847 (h!67514 zl!343))) lt!2169868 (h!67513 s!2326)) e!3300057)))

(declare-fun call!378636 () List!61188)

(declare-fun bm!378634 () Bool)

(assert (=> bm!378634 (= call!378640 (derivationStepZipperDown!411 (ite c!922408 (regOne!30439 (h!67512 (exprs!4847 (h!67514 zl!343)))) (ite c!922407 (regTwo!30438 (h!67512 (exprs!4847 (h!67514 zl!343)))) (ite c!922406 (regOne!30438 (h!67512 (exprs!4847 (h!67514 zl!343)))) (reg!15292 (h!67512 (exprs!4847 (h!67514 zl!343))))))) (ite (or c!922408 c!922407) lt!2169868 (Context!8695 call!378636)) (h!67513 s!2326)))))

(declare-fun bm!378635 () Bool)

(assert (=> bm!378635 (= call!378636 call!378639)))

(declare-fun b!5310620 () Bool)

(declare-fun c!922409 () Bool)

(assert (=> b!5310620 (= c!922409 ((_ is Star!14963) (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(assert (=> b!5310620 (= e!3300061 e!3300058)))

(declare-fun b!5310621 () Bool)

(declare-fun e!3300059 () Bool)

(assert (=> b!5310621 (= e!3300059 (nullable!5132 (regOne!30438 (h!67512 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun b!5310622 () Bool)

(assert (=> b!5310622 (= e!3300058 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5310623 () Bool)

(assert (=> b!5310623 (= c!922407 e!3300059)))

(declare-fun res!2252943 () Bool)

(assert (=> b!5310623 (=> (not res!2252943) (not e!3300059))))

(assert (=> b!5310623 (= res!2252943 ((_ is Concat!23808) (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun e!3300056 () (InoxSet Context!8694))

(assert (=> b!5310623 (= e!3300056 e!3300060)))

(declare-fun b!5310624 () Bool)

(assert (=> b!5310624 (= e!3300057 e!3300056)))

(assert (=> b!5310624 (= c!922408 ((_ is Union!14963) (h!67512 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310625 () Bool)

(assert (=> b!5310625 (= e!3300061 call!378635)))

(declare-fun b!5310626 () Bool)

(assert (=> b!5310626 (= e!3300056 ((_ map or) call!378640 call!378637))))

(declare-fun b!5310627 () Bool)

(assert (=> b!5310627 (= e!3300060 ((_ map or) call!378637 call!378638))))

(assert (= (and d!1706487 c!922405) b!5310619))

(assert (= (and d!1706487 (not c!922405)) b!5310624))

(assert (= (and b!5310624 c!922408) b!5310626))

(assert (= (and b!5310624 (not c!922408)) b!5310623))

(assert (= (and b!5310623 res!2252943) b!5310621))

(assert (= (and b!5310623 c!922407) b!5310627))

(assert (= (and b!5310623 (not c!922407)) b!5310617))

(assert (= (and b!5310617 c!922406) b!5310625))

(assert (= (and b!5310617 (not c!922406)) b!5310620))

(assert (= (and b!5310620 c!922409) b!5310618))

(assert (= (and b!5310620 (not c!922409)) b!5310622))

(assert (= (or b!5310625 b!5310618) bm!378635))

(assert (= (or b!5310625 b!5310618) bm!378632))

(assert (= (or b!5310627 bm!378635) bm!378633))

(assert (= (or b!5310627 bm!378632) bm!378630))

(assert (= (or b!5310626 b!5310627) bm!378631))

(assert (= (or b!5310626 bm!378630) bm!378634))

(declare-fun m!6347782 () Bool)

(assert (=> b!5310621 m!6347782))

(declare-fun m!6347784 () Bool)

(assert (=> bm!378633 m!6347784))

(declare-fun m!6347786 () Bool)

(assert (=> bm!378634 m!6347786))

(declare-fun m!6347788 () Bool)

(assert (=> bm!378631 m!6347788))

(declare-fun m!6347790 () Bool)

(assert (=> b!5310619 m!6347790))

(assert (=> b!5310260 d!1706487))

(declare-fun d!1706501 () Bool)

(assert (=> d!1706501 (= (flatMap!690 z!1189 lambda!270467) (choose!39721 z!1189 lambda!270467))))

(declare-fun bs!1231313 () Bool)

(assert (= bs!1231313 d!1706501))

(declare-fun m!6347792 () Bool)

(assert (=> bs!1231313 m!6347792))

(assert (=> b!5310260 d!1706501))

(declare-fun d!1706503 () Bool)

(assert (=> d!1706503 (= (flatMap!690 z!1189 lambda!270467) (dynLambda!24136 lambda!270467 (h!67514 zl!343)))))

(declare-fun lt!2169925 () Unit!153370)

(assert (=> d!1706503 (= lt!2169925 (choose!39723 z!1189 (h!67514 zl!343) lambda!270467))))

(assert (=> d!1706503 (= z!1189 (store ((as const (Array Context!8694 Bool)) false) (h!67514 zl!343) true))))

(assert (=> d!1706503 (= (lemmaFlatMapOnSingletonSet!222 z!1189 (h!67514 zl!343) lambda!270467) lt!2169925)))

(declare-fun b_lambda!204407 () Bool)

(assert (=> (not b_lambda!204407) (not d!1706503)))

(declare-fun bs!1231315 () Bool)

(assert (= bs!1231315 d!1706503))

(assert (=> bs!1231315 m!6347456))

(declare-fun m!6347794 () Bool)

(assert (=> bs!1231315 m!6347794))

(declare-fun m!6347796 () Bool)

(assert (=> bs!1231315 m!6347796))

(declare-fun m!6347798 () Bool)

(assert (=> bs!1231315 m!6347798))

(assert (=> b!5310260 d!1706503))

(declare-fun d!1706505 () Bool)

(assert (=> d!1706505 (= (nullable!5132 (regOne!30438 (regOne!30438 r!7292))) (nullableFct!1485 (regOne!30438 (regOne!30438 r!7292))))))

(declare-fun bs!1231316 () Bool)

(assert (= bs!1231316 d!1706505))

(declare-fun m!6347800 () Bool)

(assert (=> bs!1231316 m!6347800))

(assert (=> b!5310279 d!1706505))

(declare-fun bs!1231318 () Bool)

(declare-fun d!1706507 () Bool)

(assert (= bs!1231318 (and d!1706507 d!1706445)))

(declare-fun lambda!270507 () Int)

(assert (=> bs!1231318 (= lambda!270507 lambda!270483)))

(declare-fun bs!1231319 () Bool)

(assert (= bs!1231319 (and d!1706507 d!1706473)))

(assert (=> bs!1231319 (= lambda!270507 lambda!270496)))

(declare-fun bs!1231320 () Bool)

(assert (= bs!1231320 (and d!1706507 d!1706477)))

(assert (=> bs!1231320 (= lambda!270507 lambda!270500)))

(declare-fun b!5310668 () Bool)

(declare-fun e!3300090 () Regex!14963)

(declare-fun e!3300091 () Regex!14963)

(assert (=> b!5310668 (= e!3300090 e!3300091)))

(declare-fun c!922427 () Bool)

(assert (=> b!5310668 (= c!922427 ((_ is Cons!61064) lt!2169866))))

(declare-fun b!5310669 () Bool)

(declare-fun e!3300088 () Bool)

(declare-fun lt!2169930 () Regex!14963)

(assert (=> b!5310669 (= e!3300088 (= lt!2169930 (head!11386 lt!2169866)))))

(declare-fun b!5310670 () Bool)

(assert (=> b!5310670 (= e!3300091 EmptyExpr!14963)))

(declare-fun e!3300087 () Bool)

(assert (=> d!1706507 e!3300087))

(declare-fun res!2252953 () Bool)

(assert (=> d!1706507 (=> (not res!2252953) (not e!3300087))))

(assert (=> d!1706507 (= res!2252953 (validRegex!6699 lt!2169930))))

(assert (=> d!1706507 (= lt!2169930 e!3300090)))

(declare-fun c!922428 () Bool)

(declare-fun e!3300089 () Bool)

(assert (=> d!1706507 (= c!922428 e!3300089)))

(declare-fun res!2252952 () Bool)

(assert (=> d!1706507 (=> (not res!2252952) (not e!3300089))))

(assert (=> d!1706507 (= res!2252952 ((_ is Cons!61064) lt!2169866))))

(assert (=> d!1706507 (forall!14380 lt!2169866 lambda!270507)))

(assert (=> d!1706507 (= (generalisedConcat!632 lt!2169866) lt!2169930)))

(declare-fun b!5310671 () Bool)

(assert (=> b!5310671 (= e!3300091 (Concat!23808 (h!67512 lt!2169866) (generalisedConcat!632 (t!374393 lt!2169866))))))

(declare-fun b!5310672 () Bool)

(declare-fun e!3300086 () Bool)

(declare-fun isEmptyExpr!868 (Regex!14963) Bool)

(assert (=> b!5310672 (= e!3300086 (isEmptyExpr!868 lt!2169930))))

(declare-fun b!5310673 () Bool)

(declare-fun isConcat!391 (Regex!14963) Bool)

(assert (=> b!5310673 (= e!3300088 (isConcat!391 lt!2169930))))

(declare-fun b!5310674 () Bool)

(assert (=> b!5310674 (= e!3300087 e!3300086)))

(declare-fun c!922429 () Bool)

(assert (=> b!5310674 (= c!922429 (isEmpty!33028 lt!2169866))))

(declare-fun b!5310675 () Bool)

(assert (=> b!5310675 (= e!3300089 (isEmpty!33028 (t!374393 lt!2169866)))))

(declare-fun b!5310676 () Bool)

(assert (=> b!5310676 (= e!3300090 (h!67512 lt!2169866))))

(declare-fun b!5310677 () Bool)

(assert (=> b!5310677 (= e!3300086 e!3300088)))

(declare-fun c!922426 () Bool)

(assert (=> b!5310677 (= c!922426 (isEmpty!33028 (tail!10483 lt!2169866)))))

(assert (= (and d!1706507 res!2252952) b!5310675))

(assert (= (and d!1706507 c!922428) b!5310676))

(assert (= (and d!1706507 (not c!922428)) b!5310668))

(assert (= (and b!5310668 c!922427) b!5310671))

(assert (= (and b!5310668 (not c!922427)) b!5310670))

(assert (= (and d!1706507 res!2252953) b!5310674))

(assert (= (and b!5310674 c!922429) b!5310672))

(assert (= (and b!5310674 (not c!922429)) b!5310677))

(assert (= (and b!5310677 c!922426) b!5310669))

(assert (= (and b!5310677 (not c!922426)) b!5310673))

(declare-fun m!6347806 () Bool)

(assert (=> b!5310675 m!6347806))

(declare-fun m!6347808 () Bool)

(assert (=> b!5310672 m!6347808))

(declare-fun m!6347810 () Bool)

(assert (=> b!5310669 m!6347810))

(declare-fun m!6347812 () Bool)

(assert (=> b!5310674 m!6347812))

(declare-fun m!6347814 () Bool)

(assert (=> b!5310671 m!6347814))

(declare-fun m!6347816 () Bool)

(assert (=> d!1706507 m!6347816))

(declare-fun m!6347818 () Bool)

(assert (=> d!1706507 m!6347818))

(declare-fun m!6347820 () Bool)

(assert (=> b!5310677 m!6347820))

(assert (=> b!5310677 m!6347820))

(declare-fun m!6347822 () Bool)

(assert (=> b!5310677 m!6347822))

(declare-fun m!6347824 () Bool)

(assert (=> b!5310673 m!6347824))

(assert (=> b!5310248 d!1706507))

(declare-fun bs!1231321 () Bool)

(declare-fun d!1706511 () Bool)

(assert (= bs!1231321 (and d!1706511 d!1706445)))

(declare-fun lambda!270508 () Int)

(assert (=> bs!1231321 (= lambda!270508 lambda!270483)))

(declare-fun bs!1231322 () Bool)

(assert (= bs!1231322 (and d!1706511 d!1706473)))

(assert (=> bs!1231322 (= lambda!270508 lambda!270496)))

(declare-fun bs!1231323 () Bool)

(assert (= bs!1231323 (and d!1706511 d!1706477)))

(assert (=> bs!1231323 (= lambda!270508 lambda!270500)))

(declare-fun bs!1231324 () Bool)

(assert (= bs!1231324 (and d!1706511 d!1706507)))

(assert (=> bs!1231324 (= lambda!270508 lambda!270507)))

(declare-fun b!5310678 () Bool)

(declare-fun e!3300096 () Regex!14963)

(declare-fun e!3300097 () Regex!14963)

(assert (=> b!5310678 (= e!3300096 e!3300097)))

(declare-fun c!922431 () Bool)

(assert (=> b!5310678 (= c!922431 ((_ is Cons!61064) (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310679 () Bool)

(declare-fun e!3300094 () Bool)

(declare-fun lt!2169931 () Regex!14963)

(assert (=> b!5310679 (= e!3300094 (= lt!2169931 (head!11386 (t!374393 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun b!5310680 () Bool)

(assert (=> b!5310680 (= e!3300097 EmptyExpr!14963)))

(declare-fun e!3300093 () Bool)

(assert (=> d!1706511 e!3300093))

(declare-fun res!2252955 () Bool)

(assert (=> d!1706511 (=> (not res!2252955) (not e!3300093))))

(assert (=> d!1706511 (= res!2252955 (validRegex!6699 lt!2169931))))

(assert (=> d!1706511 (= lt!2169931 e!3300096)))

(declare-fun c!922432 () Bool)

(declare-fun e!3300095 () Bool)

(assert (=> d!1706511 (= c!922432 e!3300095)))

(declare-fun res!2252954 () Bool)

(assert (=> d!1706511 (=> (not res!2252954) (not e!3300095))))

(assert (=> d!1706511 (= res!2252954 ((_ is Cons!61064) (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(assert (=> d!1706511 (forall!14380 (t!374393 (exprs!4847 (h!67514 zl!343))) lambda!270508)))

(assert (=> d!1706511 (= (generalisedConcat!632 (t!374393 (exprs!4847 (h!67514 zl!343)))) lt!2169931)))

(declare-fun b!5310681 () Bool)

(assert (=> b!5310681 (= e!3300097 (Concat!23808 (h!67512 (t!374393 (exprs!4847 (h!67514 zl!343)))) (generalisedConcat!632 (t!374393 (t!374393 (exprs!4847 (h!67514 zl!343)))))))))

(declare-fun b!5310682 () Bool)

(declare-fun e!3300092 () Bool)

(assert (=> b!5310682 (= e!3300092 (isEmptyExpr!868 lt!2169931))))

(declare-fun b!5310683 () Bool)

(assert (=> b!5310683 (= e!3300094 (isConcat!391 lt!2169931))))

(declare-fun b!5310684 () Bool)

(assert (=> b!5310684 (= e!3300093 e!3300092)))

(declare-fun c!922433 () Bool)

(assert (=> b!5310684 (= c!922433 (isEmpty!33028 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310685 () Bool)

(assert (=> b!5310685 (= e!3300095 (isEmpty!33028 (t!374393 (t!374393 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun b!5310686 () Bool)

(assert (=> b!5310686 (= e!3300096 (h!67512 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5310687 () Bool)

(assert (=> b!5310687 (= e!3300092 e!3300094)))

(declare-fun c!922430 () Bool)

(assert (=> b!5310687 (= c!922430 (isEmpty!33028 (tail!10483 (t!374393 (exprs!4847 (h!67514 zl!343))))))))

(assert (= (and d!1706511 res!2252954) b!5310685))

(assert (= (and d!1706511 c!922432) b!5310686))

(assert (= (and d!1706511 (not c!922432)) b!5310678))

(assert (= (and b!5310678 c!922431) b!5310681))

(assert (= (and b!5310678 (not c!922431)) b!5310680))

(assert (= (and d!1706511 res!2252955) b!5310684))

(assert (= (and b!5310684 c!922433) b!5310682))

(assert (= (and b!5310684 (not c!922433)) b!5310687))

(assert (= (and b!5310687 c!922430) b!5310679))

(assert (= (and b!5310687 (not c!922430)) b!5310683))

(declare-fun m!6347826 () Bool)

(assert (=> b!5310685 m!6347826))

(declare-fun m!6347828 () Bool)

(assert (=> b!5310682 m!6347828))

(declare-fun m!6347830 () Bool)

(assert (=> b!5310679 m!6347830))

(assert (=> b!5310684 m!6347468))

(declare-fun m!6347832 () Bool)

(assert (=> b!5310681 m!6347832))

(declare-fun m!6347834 () Bool)

(assert (=> d!1706511 m!6347834))

(declare-fun m!6347836 () Bool)

(assert (=> d!1706511 m!6347836))

(declare-fun m!6347838 () Bool)

(assert (=> b!5310687 m!6347838))

(assert (=> b!5310687 m!6347838))

(declare-fun m!6347840 () Bool)

(assert (=> b!5310687 m!6347840))

(declare-fun m!6347842 () Bool)

(assert (=> b!5310683 m!6347842))

(assert (=> b!5310248 d!1706511))

(declare-fun d!1706513 () Bool)

(declare-fun c!922438 () Bool)

(assert (=> d!1706513 (= c!922438 (isEmpty!33031 s!2326))))

(declare-fun e!3300104 () Bool)

(assert (=> d!1706513 (= (matchZipper!1207 z!1189 s!2326) e!3300104)))

(declare-fun b!5310698 () Bool)

(assert (=> b!5310698 (= e!3300104 (nullableZipper!1334 z!1189))))

(declare-fun b!5310699 () Bool)

(assert (=> b!5310699 (= e!3300104 (matchZipper!1207 (derivationStepZipper!1206 z!1189 (head!11385 s!2326)) (tail!10482 s!2326)))))

(assert (= (and d!1706513 c!922438) b!5310698))

(assert (= (and d!1706513 (not c!922438)) b!5310699))

(declare-fun m!6347856 () Bool)

(assert (=> d!1706513 m!6347856))

(declare-fun m!6347860 () Bool)

(assert (=> b!5310698 m!6347860))

(declare-fun m!6347863 () Bool)

(assert (=> b!5310699 m!6347863))

(assert (=> b!5310699 m!6347863))

(declare-fun m!6347868 () Bool)

(assert (=> b!5310699 m!6347868))

(declare-fun m!6347870 () Bool)

(assert (=> b!5310699 m!6347870))

(assert (=> b!5310699 m!6347868))

(assert (=> b!5310699 m!6347870))

(declare-fun m!6347872 () Bool)

(assert (=> b!5310699 m!6347872))

(assert (=> b!5310248 d!1706513))

(declare-fun d!1706517 () Bool)

(declare-fun c!922440 () Bool)

(assert (=> d!1706517 (= c!922440 (isEmpty!33031 s!2326))))

(declare-fun e!3300106 () Bool)

(assert (=> d!1706517 (= (matchZipper!1207 lt!2169831 s!2326) e!3300106)))

(declare-fun b!5310702 () Bool)

(assert (=> b!5310702 (= e!3300106 (nullableZipper!1334 lt!2169831))))

(declare-fun b!5310703 () Bool)

(assert (=> b!5310703 (= e!3300106 (matchZipper!1207 (derivationStepZipper!1206 lt!2169831 (head!11385 s!2326)) (tail!10482 s!2326)))))

(assert (= (and d!1706517 c!922440) b!5310702))

(assert (= (and d!1706517 (not c!922440)) b!5310703))

(assert (=> d!1706517 m!6347856))

(declare-fun m!6347876 () Bool)

(assert (=> b!5310702 m!6347876))

(assert (=> b!5310703 m!6347863))

(assert (=> b!5310703 m!6347863))

(declare-fun m!6347880 () Bool)

(assert (=> b!5310703 m!6347880))

(assert (=> b!5310703 m!6347870))

(assert (=> b!5310703 m!6347880))

(assert (=> b!5310703 m!6347870))

(declare-fun m!6347884 () Bool)

(assert (=> b!5310703 m!6347884))

(assert (=> b!5310248 d!1706517))

(declare-fun d!1706521 () Bool)

(declare-fun isEmpty!33032 (Option!15074) Bool)

(assert (=> d!1706521 (= (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 Nil!61065 s!2326 s!2326)) (not (isEmpty!33032 (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 Nil!61065 s!2326 s!2326))))))

(declare-fun bs!1231328 () Bool)

(assert (= bs!1231328 d!1706521))

(assert (=> bs!1231328 m!6347382))

(declare-fun m!6347890 () Bool)

(assert (=> bs!1231328 m!6347890))

(assert (=> b!5310248 d!1706521))

(declare-fun bm!378640 () Bool)

(declare-fun call!378645 () Bool)

(assert (=> bm!378640 (= call!378645 (isEmpty!33031 s!2326))))

(declare-fun b!5310763 () Bool)

(declare-fun res!2252988 () Bool)

(declare-fun e!3300141 () Bool)

(assert (=> b!5310763 (=> res!2252988 e!3300141)))

(assert (=> b!5310763 (= res!2252988 (not ((_ is ElementMatch!14963) lt!2169848)))))

(declare-fun e!3300146 () Bool)

(assert (=> b!5310763 (= e!3300146 e!3300141)))

(declare-fun b!5310764 () Bool)

(declare-fun res!2252982 () Bool)

(declare-fun e!3300142 () Bool)

(assert (=> b!5310764 (=> res!2252982 e!3300142)))

(assert (=> b!5310764 (= res!2252982 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5310765 () Bool)

(declare-fun e!3300143 () Bool)

(assert (=> b!5310765 (= e!3300143 (nullable!5132 lt!2169848))))

(declare-fun d!1706527 () Bool)

(declare-fun e!3300140 () Bool)

(assert (=> d!1706527 e!3300140))

(declare-fun c!922459 () Bool)

(assert (=> d!1706527 (= c!922459 ((_ is EmptyExpr!14963) lt!2169848))))

(declare-fun lt!2169940 () Bool)

(assert (=> d!1706527 (= lt!2169940 e!3300143)))

(declare-fun c!922460 () Bool)

(assert (=> d!1706527 (= c!922460 (isEmpty!33031 s!2326))))

(assert (=> d!1706527 (validRegex!6699 lt!2169848)))

(assert (=> d!1706527 (= (matchR!7148 lt!2169848 s!2326) lt!2169940)))

(declare-fun b!5310766 () Bool)

(assert (=> b!5310766 (= e!3300146 (not lt!2169940))))

(declare-fun b!5310767 () Bool)

(declare-fun e!3300144 () Bool)

(assert (=> b!5310767 (= e!3300141 e!3300144)))

(declare-fun res!2252984 () Bool)

(assert (=> b!5310767 (=> (not res!2252984) (not e!3300144))))

(assert (=> b!5310767 (= res!2252984 (not lt!2169940))))

(declare-fun b!5310768 () Bool)

(declare-fun res!2252985 () Bool)

(declare-fun e!3300145 () Bool)

(assert (=> b!5310768 (=> (not res!2252985) (not e!3300145))))

(assert (=> b!5310768 (= res!2252985 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5310769 () Bool)

(declare-fun res!2252983 () Bool)

(assert (=> b!5310769 (=> (not res!2252983) (not e!3300145))))

(assert (=> b!5310769 (= res!2252983 (not call!378645))))

(declare-fun b!5310770 () Bool)

(assert (=> b!5310770 (= e!3300144 e!3300142)))

(declare-fun res!2252981 () Bool)

(assert (=> b!5310770 (=> res!2252981 e!3300142)))

(assert (=> b!5310770 (= res!2252981 call!378645)))

(declare-fun b!5310771 () Bool)

(assert (=> b!5310771 (= e!3300142 (not (= (head!11385 s!2326) (c!922305 lt!2169848))))))

(declare-fun b!5310772 () Bool)

(assert (=> b!5310772 (= e!3300140 (= lt!2169940 call!378645))))

(declare-fun b!5310773 () Bool)

(declare-fun derivativeStep!4155 (Regex!14963 C!30196) Regex!14963)

(assert (=> b!5310773 (= e!3300143 (matchR!7148 (derivativeStep!4155 lt!2169848 (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5310774 () Bool)

(declare-fun res!2252987 () Bool)

(assert (=> b!5310774 (=> res!2252987 e!3300141)))

(assert (=> b!5310774 (= res!2252987 e!3300145)))

(declare-fun res!2252986 () Bool)

(assert (=> b!5310774 (=> (not res!2252986) (not e!3300145))))

(assert (=> b!5310774 (= res!2252986 lt!2169940)))

(declare-fun b!5310775 () Bool)

(assert (=> b!5310775 (= e!3300140 e!3300146)))

(declare-fun c!922461 () Bool)

(assert (=> b!5310775 (= c!922461 ((_ is EmptyLang!14963) lt!2169848))))

(declare-fun b!5310776 () Bool)

(assert (=> b!5310776 (= e!3300145 (= (head!11385 s!2326) (c!922305 lt!2169848)))))

(assert (= (and d!1706527 c!922460) b!5310765))

(assert (= (and d!1706527 (not c!922460)) b!5310773))

(assert (= (and d!1706527 c!922459) b!5310772))

(assert (= (and d!1706527 (not c!922459)) b!5310775))

(assert (= (and b!5310775 c!922461) b!5310766))

(assert (= (and b!5310775 (not c!922461)) b!5310763))

(assert (= (and b!5310763 (not res!2252988)) b!5310774))

(assert (= (and b!5310774 res!2252986) b!5310769))

(assert (= (and b!5310769 res!2252983) b!5310768))

(assert (= (and b!5310768 res!2252985) b!5310776))

(assert (= (and b!5310774 (not res!2252987)) b!5310767))

(assert (= (and b!5310767 res!2252984) b!5310770))

(assert (= (and b!5310770 (not res!2252981)) b!5310764))

(assert (= (and b!5310764 (not res!2252982)) b!5310771))

(assert (= (or b!5310772 b!5310769 b!5310770) bm!378640))

(assert (=> b!5310776 m!6347863))

(assert (=> b!5310764 m!6347870))

(assert (=> b!5310764 m!6347870))

(declare-fun m!6347942 () Bool)

(assert (=> b!5310764 m!6347942))

(assert (=> b!5310773 m!6347863))

(assert (=> b!5310773 m!6347863))

(declare-fun m!6347944 () Bool)

(assert (=> b!5310773 m!6347944))

(assert (=> b!5310773 m!6347870))

(assert (=> b!5310773 m!6347944))

(assert (=> b!5310773 m!6347870))

(declare-fun m!6347946 () Bool)

(assert (=> b!5310773 m!6347946))

(assert (=> d!1706527 m!6347856))

(declare-fun m!6347948 () Bool)

(assert (=> d!1706527 m!6347948))

(assert (=> b!5310771 m!6347863))

(assert (=> b!5310768 m!6347870))

(assert (=> b!5310768 m!6347870))

(assert (=> b!5310768 m!6347942))

(assert (=> bm!378640 m!6347856))

(declare-fun m!6347950 () Bool)

(assert (=> b!5310765 m!6347950))

(assert (=> b!5310248 d!1706527))

(declare-fun bs!1231373 () Bool)

(declare-fun b!5310836 () Bool)

(assert (= bs!1231373 (and b!5310836 b!5310248)))

(declare-fun lambda!270524 () Int)

(assert (=> bs!1231373 (not (= lambda!270524 lambda!270468))))

(declare-fun bs!1231374 () Bool)

(assert (= bs!1231374 (and b!5310836 b!5310250)))

(assert (=> bs!1231374 (not (= lambda!270524 lambda!270465))))

(assert (=> bs!1231373 (not (= lambda!270524 lambda!270471))))

(assert (=> bs!1231373 (not (= lambda!270524 lambda!270469))))

(assert (=> bs!1231373 (not (= lambda!270524 lambda!270470))))

(assert (=> bs!1231374 (not (= lambda!270524 lambda!270466))))

(assert (=> b!5310836 true))

(assert (=> b!5310836 true))

(declare-fun bs!1231375 () Bool)

(declare-fun b!5310838 () Bool)

(assert (= bs!1231375 (and b!5310838 b!5310248)))

(declare-fun lambda!270525 () Int)

(assert (=> bs!1231375 (not (= lambda!270525 lambda!270468))))

(declare-fun bs!1231376 () Bool)

(assert (= bs!1231376 (and b!5310838 b!5310250)))

(assert (=> bs!1231376 (not (= lambda!270525 lambda!270465))))

(assert (=> bs!1231375 (= (and (= (regOne!30438 lt!2169855) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 lt!2169855) lt!2169860)) (= lambda!270525 lambda!270471))))

(assert (=> bs!1231375 (= (and (= (regOne!30438 lt!2169855) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 lt!2169855) lt!2169855)) (= lambda!270525 lambda!270469))))

(assert (=> bs!1231375 (not (= lambda!270525 lambda!270470))))

(assert (=> bs!1231376 (= (and (= (regOne!30438 lt!2169855) (regOne!30438 r!7292)) (= (regTwo!30438 lt!2169855) (regTwo!30438 r!7292))) (= lambda!270525 lambda!270466))))

(declare-fun bs!1231377 () Bool)

(assert (= bs!1231377 (and b!5310838 b!5310836)))

(assert (=> bs!1231377 (not (= lambda!270525 lambda!270524))))

(assert (=> b!5310838 true))

(assert (=> b!5310838 true))

(declare-fun b!5310828 () Bool)

(declare-fun c!922478 () Bool)

(assert (=> b!5310828 (= c!922478 ((_ is ElementMatch!14963) lt!2169855))))

(declare-fun e!3300177 () Bool)

(declare-fun e!3300179 () Bool)

(assert (=> b!5310828 (= e!3300177 e!3300179)))

(declare-fun b!5310829 () Bool)

(declare-fun e!3300181 () Bool)

(assert (=> b!5310829 (= e!3300181 (matchRSpec!2066 (regTwo!30439 lt!2169855) s!2326))))

(declare-fun d!1706539 () Bool)

(declare-fun c!922480 () Bool)

(assert (=> d!1706539 (= c!922480 ((_ is EmptyExpr!14963) lt!2169855))))

(declare-fun e!3300180 () Bool)

(assert (=> d!1706539 (= (matchRSpec!2066 lt!2169855 s!2326) e!3300180)))

(declare-fun b!5310830 () Bool)

(assert (=> b!5310830 (= e!3300180 e!3300177)))

(declare-fun res!2253010 () Bool)

(assert (=> b!5310830 (= res!2253010 (not ((_ is EmptyLang!14963) lt!2169855)))))

(assert (=> b!5310830 (=> (not res!2253010) (not e!3300177))))

(declare-fun b!5310831 () Bool)

(declare-fun c!922477 () Bool)

(assert (=> b!5310831 (= c!922477 ((_ is Union!14963) lt!2169855))))

(declare-fun e!3300182 () Bool)

(assert (=> b!5310831 (= e!3300179 e!3300182)))

(declare-fun b!5310832 () Bool)

(assert (=> b!5310832 (= e!3300179 (= s!2326 (Cons!61065 (c!922305 lt!2169855) Nil!61065)))))

(declare-fun b!5310833 () Bool)

(declare-fun e!3300178 () Bool)

(assert (=> b!5310833 (= e!3300182 e!3300178)))

(declare-fun c!922479 () Bool)

(assert (=> b!5310833 (= c!922479 ((_ is Star!14963) lt!2169855))))

(declare-fun b!5310834 () Bool)

(declare-fun call!378651 () Bool)

(assert (=> b!5310834 (= e!3300180 call!378651)))

(declare-fun b!5310835 () Bool)

(declare-fun res!2253012 () Bool)

(declare-fun e!3300183 () Bool)

(assert (=> b!5310835 (=> res!2253012 e!3300183)))

(assert (=> b!5310835 (= res!2253012 call!378651)))

(assert (=> b!5310835 (= e!3300178 e!3300183)))

(declare-fun call!378650 () Bool)

(assert (=> b!5310836 (= e!3300183 call!378650)))

(declare-fun b!5310837 () Bool)

(assert (=> b!5310837 (= e!3300182 e!3300181)))

(declare-fun res!2253011 () Bool)

(assert (=> b!5310837 (= res!2253011 (matchRSpec!2066 (regOne!30439 lt!2169855) s!2326))))

(assert (=> b!5310837 (=> res!2253011 e!3300181)))

(declare-fun bm!378645 () Bool)

(assert (=> bm!378645 (= call!378651 (isEmpty!33031 s!2326))))

(assert (=> b!5310838 (= e!3300178 call!378650)))

(declare-fun bm!378646 () Bool)

(assert (=> bm!378646 (= call!378650 (Exists!2144 (ite c!922479 lambda!270524 lambda!270525)))))

(assert (= (and d!1706539 c!922480) b!5310834))

(assert (= (and d!1706539 (not c!922480)) b!5310830))

(assert (= (and b!5310830 res!2253010) b!5310828))

(assert (= (and b!5310828 c!922478) b!5310832))

(assert (= (and b!5310828 (not c!922478)) b!5310831))

(assert (= (and b!5310831 c!922477) b!5310837))

(assert (= (and b!5310831 (not c!922477)) b!5310833))

(assert (= (and b!5310837 (not res!2253011)) b!5310829))

(assert (= (and b!5310833 c!922479) b!5310835))

(assert (= (and b!5310833 (not c!922479)) b!5310838))

(assert (= (and b!5310835 (not res!2253012)) b!5310836))

(assert (= (or b!5310836 b!5310838) bm!378646))

(assert (= (or b!5310834 b!5310835) bm!378645))

(declare-fun m!6348016 () Bool)

(assert (=> b!5310829 m!6348016))

(declare-fun m!6348020 () Bool)

(assert (=> b!5310837 m!6348020))

(assert (=> bm!378645 m!6347856))

(declare-fun m!6348022 () Bool)

(assert (=> bm!378646 m!6348022))

(assert (=> b!5310248 d!1706539))

(declare-fun bm!378647 () Bool)

(declare-fun call!378652 () Bool)

(assert (=> bm!378647 (= call!378652 (isEmpty!33031 s!2326))))

(declare-fun b!5310852 () Bool)

(declare-fun res!2253023 () Bool)

(declare-fun e!3300193 () Bool)

(assert (=> b!5310852 (=> res!2253023 e!3300193)))

(assert (=> b!5310852 (= res!2253023 (not ((_ is ElementMatch!14963) lt!2169855)))))

(declare-fun e!3300198 () Bool)

(assert (=> b!5310852 (= e!3300198 e!3300193)))

(declare-fun b!5310853 () Bool)

(declare-fun res!2253017 () Bool)

(declare-fun e!3300194 () Bool)

(assert (=> b!5310853 (=> res!2253017 e!3300194)))

(assert (=> b!5310853 (= res!2253017 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5310854 () Bool)

(declare-fun e!3300195 () Bool)

(assert (=> b!5310854 (= e!3300195 (nullable!5132 lt!2169855))))

(declare-fun d!1706565 () Bool)

(declare-fun e!3300192 () Bool)

(assert (=> d!1706565 e!3300192))

(declare-fun c!922486 () Bool)

(assert (=> d!1706565 (= c!922486 ((_ is EmptyExpr!14963) lt!2169855))))

(declare-fun lt!2169952 () Bool)

(assert (=> d!1706565 (= lt!2169952 e!3300195)))

(declare-fun c!922487 () Bool)

(assert (=> d!1706565 (= c!922487 (isEmpty!33031 s!2326))))

(assert (=> d!1706565 (validRegex!6699 lt!2169855)))

(assert (=> d!1706565 (= (matchR!7148 lt!2169855 s!2326) lt!2169952)))

(declare-fun b!5310855 () Bool)

(assert (=> b!5310855 (= e!3300198 (not lt!2169952))))

(declare-fun b!5310856 () Bool)

(declare-fun e!3300196 () Bool)

(assert (=> b!5310856 (= e!3300193 e!3300196)))

(declare-fun res!2253019 () Bool)

(assert (=> b!5310856 (=> (not res!2253019) (not e!3300196))))

(assert (=> b!5310856 (= res!2253019 (not lt!2169952))))

(declare-fun b!5310857 () Bool)

(declare-fun res!2253020 () Bool)

(declare-fun e!3300197 () Bool)

(assert (=> b!5310857 (=> (not res!2253020) (not e!3300197))))

(assert (=> b!5310857 (= res!2253020 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5310858 () Bool)

(declare-fun res!2253018 () Bool)

(assert (=> b!5310858 (=> (not res!2253018) (not e!3300197))))

(assert (=> b!5310858 (= res!2253018 (not call!378652))))

(declare-fun b!5310859 () Bool)

(assert (=> b!5310859 (= e!3300196 e!3300194)))

(declare-fun res!2253016 () Bool)

(assert (=> b!5310859 (=> res!2253016 e!3300194)))

(assert (=> b!5310859 (= res!2253016 call!378652)))

(declare-fun b!5310860 () Bool)

(assert (=> b!5310860 (= e!3300194 (not (= (head!11385 s!2326) (c!922305 lt!2169855))))))

(declare-fun b!5310861 () Bool)

(assert (=> b!5310861 (= e!3300192 (= lt!2169952 call!378652))))

(declare-fun b!5310862 () Bool)

(assert (=> b!5310862 (= e!3300195 (matchR!7148 (derivativeStep!4155 lt!2169855 (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5310863 () Bool)

(declare-fun res!2253022 () Bool)

(assert (=> b!5310863 (=> res!2253022 e!3300193)))

(assert (=> b!5310863 (= res!2253022 e!3300197)))

(declare-fun res!2253021 () Bool)

(assert (=> b!5310863 (=> (not res!2253021) (not e!3300197))))

(assert (=> b!5310863 (= res!2253021 lt!2169952)))

(declare-fun b!5310864 () Bool)

(assert (=> b!5310864 (= e!3300192 e!3300198)))

(declare-fun c!922488 () Bool)

(assert (=> b!5310864 (= c!922488 ((_ is EmptyLang!14963) lt!2169855))))

(declare-fun b!5310865 () Bool)

(assert (=> b!5310865 (= e!3300197 (= (head!11385 s!2326) (c!922305 lt!2169855)))))

(assert (= (and d!1706565 c!922487) b!5310854))

(assert (= (and d!1706565 (not c!922487)) b!5310862))

(assert (= (and d!1706565 c!922486) b!5310861))

(assert (= (and d!1706565 (not c!922486)) b!5310864))

(assert (= (and b!5310864 c!922488) b!5310855))

(assert (= (and b!5310864 (not c!922488)) b!5310852))

(assert (= (and b!5310852 (not res!2253023)) b!5310863))

(assert (= (and b!5310863 res!2253021) b!5310858))

(assert (= (and b!5310858 res!2253018) b!5310857))

(assert (= (and b!5310857 res!2253020) b!5310865))

(assert (= (and b!5310863 (not res!2253022)) b!5310856))

(assert (= (and b!5310856 res!2253019) b!5310859))

(assert (= (and b!5310859 (not res!2253016)) b!5310853))

(assert (= (and b!5310853 (not res!2253017)) b!5310860))

(assert (= (or b!5310861 b!5310858 b!5310859) bm!378647))

(assert (=> b!5310865 m!6347863))

(assert (=> b!5310853 m!6347870))

(assert (=> b!5310853 m!6347870))

(assert (=> b!5310853 m!6347942))

(assert (=> b!5310862 m!6347863))

(assert (=> b!5310862 m!6347863))

(declare-fun m!6348024 () Bool)

(assert (=> b!5310862 m!6348024))

(assert (=> b!5310862 m!6347870))

(assert (=> b!5310862 m!6348024))

(assert (=> b!5310862 m!6347870))

(declare-fun m!6348026 () Bool)

(assert (=> b!5310862 m!6348026))

(assert (=> d!1706565 m!6347856))

(declare-fun m!6348028 () Bool)

(assert (=> d!1706565 m!6348028))

(assert (=> b!5310860 m!6347863))

(assert (=> b!5310857 m!6347870))

(assert (=> b!5310857 m!6347870))

(assert (=> b!5310857 m!6347942))

(assert (=> bm!378647 m!6347856))

(declare-fun m!6348030 () Bool)

(assert (=> b!5310854 m!6348030))

(assert (=> b!5310248 d!1706565))

(declare-fun d!1706567 () Bool)

(declare-fun choose!39726 (Int) Bool)

(assert (=> d!1706567 (= (Exists!2144 lambda!270468) (choose!39726 lambda!270468))))

(declare-fun bs!1231378 () Bool)

(assert (= bs!1231378 d!1706567))

(declare-fun m!6348032 () Bool)

(assert (=> bs!1231378 m!6348032))

(assert (=> b!5310248 d!1706567))

(declare-fun d!1706569 () Bool)

(assert (=> d!1706569 (= (matchR!7148 lt!2169855 s!2326) (matchZipper!1207 lt!2169864 s!2326))))

(declare-fun lt!2169957 () Unit!153370)

(declare-fun choose!39727 ((InoxSet Context!8694) List!61190 Regex!14963 List!61189) Unit!153370)

(assert (=> d!1706569 (= lt!2169957 (choose!39727 lt!2169864 (Cons!61066 lt!2169844 Nil!61066) lt!2169855 s!2326))))

(assert (=> d!1706569 (validRegex!6699 lt!2169855)))

(assert (=> d!1706569 (= (theoremZipperRegexEquiv!373 lt!2169864 (Cons!61066 lt!2169844 Nil!61066) lt!2169855 s!2326) lt!2169957)))

(declare-fun bs!1231379 () Bool)

(assert (= bs!1231379 d!1706569))

(assert (=> bs!1231379 m!6347388))

(assert (=> bs!1231379 m!6347386))

(declare-fun m!6348046 () Bool)

(assert (=> bs!1231379 m!6348046))

(assert (=> bs!1231379 m!6348028))

(assert (=> b!5310248 d!1706569))

(declare-fun bs!1231381 () Bool)

(declare-fun b!5310894 () Bool)

(assert (= bs!1231381 (and b!5310894 b!5310248)))

(declare-fun lambda!270526 () Int)

(assert (=> bs!1231381 (not (= lambda!270526 lambda!270468))))

(assert (=> bs!1231381 (not (= lambda!270526 lambda!270471))))

(assert (=> bs!1231381 (not (= lambda!270526 lambda!270469))))

(assert (=> bs!1231381 (not (= lambda!270526 lambda!270470))))

(declare-fun bs!1231382 () Bool)

(assert (= bs!1231382 (and b!5310894 b!5310250)))

(assert (=> bs!1231382 (not (= lambda!270526 lambda!270466))))

(declare-fun bs!1231383 () Bool)

(assert (= bs!1231383 (and b!5310894 b!5310836)))

(assert (=> bs!1231383 (= (and (= (reg!15292 lt!2169848) (reg!15292 lt!2169855)) (= lt!2169848 lt!2169855)) (= lambda!270526 lambda!270524))))

(assert (=> bs!1231382 (not (= lambda!270526 lambda!270465))))

(declare-fun bs!1231384 () Bool)

(assert (= bs!1231384 (and b!5310894 b!5310838)))

(assert (=> bs!1231384 (not (= lambda!270526 lambda!270525))))

(assert (=> b!5310894 true))

(assert (=> b!5310894 true))

(declare-fun bs!1231387 () Bool)

(declare-fun b!5310896 () Bool)

(assert (= bs!1231387 (and b!5310896 b!5310894)))

(declare-fun lambda!270530 () Int)

(assert (=> bs!1231387 (not (= lambda!270530 lambda!270526))))

(declare-fun bs!1231388 () Bool)

(assert (= bs!1231388 (and b!5310896 b!5310248)))

(assert (=> bs!1231388 (not (= lambda!270530 lambda!270468))))

(assert (=> bs!1231388 (= (and (= (regOne!30438 lt!2169848) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 lt!2169848) lt!2169860)) (= lambda!270530 lambda!270471))))

(assert (=> bs!1231388 (= (and (= (regOne!30438 lt!2169848) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 lt!2169848) lt!2169855)) (= lambda!270530 lambda!270469))))

(assert (=> bs!1231388 (not (= lambda!270530 lambda!270470))))

(declare-fun bs!1231390 () Bool)

(assert (= bs!1231390 (and b!5310896 b!5310250)))

(assert (=> bs!1231390 (= (and (= (regOne!30438 lt!2169848) (regOne!30438 r!7292)) (= (regTwo!30438 lt!2169848) (regTwo!30438 r!7292))) (= lambda!270530 lambda!270466))))

(declare-fun bs!1231391 () Bool)

(assert (= bs!1231391 (and b!5310896 b!5310836)))

(assert (=> bs!1231391 (not (= lambda!270530 lambda!270524))))

(assert (=> bs!1231390 (not (= lambda!270530 lambda!270465))))

(declare-fun bs!1231392 () Bool)

(assert (= bs!1231392 (and b!5310896 b!5310838)))

(assert (=> bs!1231392 (= (and (= (regOne!30438 lt!2169848) (regOne!30438 lt!2169855)) (= (regTwo!30438 lt!2169848) (regTwo!30438 lt!2169855))) (= lambda!270530 lambda!270525))))

(assert (=> b!5310896 true))

(assert (=> b!5310896 true))

(declare-fun b!5310886 () Bool)

(declare-fun c!922498 () Bool)

(assert (=> b!5310886 (= c!922498 ((_ is ElementMatch!14963) lt!2169848))))

(declare-fun e!3300211 () Bool)

(declare-fun e!3300213 () Bool)

(assert (=> b!5310886 (= e!3300211 e!3300213)))

(declare-fun b!5310887 () Bool)

(declare-fun e!3300215 () Bool)

(assert (=> b!5310887 (= e!3300215 (matchRSpec!2066 (regTwo!30439 lt!2169848) s!2326))))

(declare-fun d!1706575 () Bool)

(declare-fun c!922500 () Bool)

(assert (=> d!1706575 (= c!922500 ((_ is EmptyExpr!14963) lt!2169848))))

(declare-fun e!3300214 () Bool)

(assert (=> d!1706575 (= (matchRSpec!2066 lt!2169848 s!2326) e!3300214)))

(declare-fun b!5310888 () Bool)

(assert (=> b!5310888 (= e!3300214 e!3300211)))

(declare-fun res!2253028 () Bool)

(assert (=> b!5310888 (= res!2253028 (not ((_ is EmptyLang!14963) lt!2169848)))))

(assert (=> b!5310888 (=> (not res!2253028) (not e!3300211))))

(declare-fun b!5310889 () Bool)

(declare-fun c!922497 () Bool)

(assert (=> b!5310889 (= c!922497 ((_ is Union!14963) lt!2169848))))

(declare-fun e!3300216 () Bool)

(assert (=> b!5310889 (= e!3300213 e!3300216)))

(declare-fun b!5310890 () Bool)

(assert (=> b!5310890 (= e!3300213 (= s!2326 (Cons!61065 (c!922305 lt!2169848) Nil!61065)))))

(declare-fun b!5310891 () Bool)

(declare-fun e!3300212 () Bool)

(assert (=> b!5310891 (= e!3300216 e!3300212)))

(declare-fun c!922499 () Bool)

(assert (=> b!5310891 (= c!922499 ((_ is Star!14963) lt!2169848))))

(declare-fun b!5310892 () Bool)

(declare-fun call!378658 () Bool)

(assert (=> b!5310892 (= e!3300214 call!378658)))

(declare-fun b!5310893 () Bool)

(declare-fun res!2253030 () Bool)

(declare-fun e!3300217 () Bool)

(assert (=> b!5310893 (=> res!2253030 e!3300217)))

(assert (=> b!5310893 (= res!2253030 call!378658)))

(assert (=> b!5310893 (= e!3300212 e!3300217)))

(declare-fun call!378657 () Bool)

(assert (=> b!5310894 (= e!3300217 call!378657)))

(declare-fun b!5310895 () Bool)

(assert (=> b!5310895 (= e!3300216 e!3300215)))

(declare-fun res!2253029 () Bool)

(assert (=> b!5310895 (= res!2253029 (matchRSpec!2066 (regOne!30439 lt!2169848) s!2326))))

(assert (=> b!5310895 (=> res!2253029 e!3300215)))

(declare-fun bm!378652 () Bool)

(assert (=> bm!378652 (= call!378658 (isEmpty!33031 s!2326))))

(assert (=> b!5310896 (= e!3300212 call!378657)))

(declare-fun bm!378653 () Bool)

(assert (=> bm!378653 (= call!378657 (Exists!2144 (ite c!922499 lambda!270526 lambda!270530)))))

(assert (= (and d!1706575 c!922500) b!5310892))

(assert (= (and d!1706575 (not c!922500)) b!5310888))

(assert (= (and b!5310888 res!2253028) b!5310886))

(assert (= (and b!5310886 c!922498) b!5310890))

(assert (= (and b!5310886 (not c!922498)) b!5310889))

(assert (= (and b!5310889 c!922497) b!5310895))

(assert (= (and b!5310889 (not c!922497)) b!5310891))

(assert (= (and b!5310895 (not res!2253029)) b!5310887))

(assert (= (and b!5310891 c!922499) b!5310893))

(assert (= (and b!5310891 (not c!922499)) b!5310896))

(assert (= (and b!5310893 (not res!2253030)) b!5310894))

(assert (= (or b!5310894 b!5310896) bm!378653))

(assert (= (or b!5310892 b!5310893) bm!378652))

(declare-fun m!6348070 () Bool)

(assert (=> b!5310887 m!6348070))

(declare-fun m!6348072 () Bool)

(assert (=> b!5310895 m!6348072))

(assert (=> bm!378652 m!6347856))

(declare-fun m!6348074 () Bool)

(assert (=> bm!378653 m!6348074))

(assert (=> b!5310248 d!1706575))

(declare-fun bs!1231394 () Bool)

(declare-fun d!1706589 () Bool)

(assert (= bs!1231394 (and d!1706589 d!1706477)))

(declare-fun lambda!270532 () Int)

(assert (=> bs!1231394 (= lambda!270532 lambda!270500)))

(declare-fun bs!1231395 () Bool)

(assert (= bs!1231395 (and d!1706589 d!1706511)))

(assert (=> bs!1231395 (= lambda!270532 lambda!270508)))

(declare-fun bs!1231397 () Bool)

(assert (= bs!1231397 (and d!1706589 d!1706473)))

(assert (=> bs!1231397 (= lambda!270532 lambda!270496)))

(declare-fun bs!1231398 () Bool)

(assert (= bs!1231398 (and d!1706589 d!1706445)))

(assert (=> bs!1231398 (= lambda!270532 lambda!270483)))

(declare-fun bs!1231400 () Bool)

(assert (= bs!1231400 (and d!1706589 d!1706507)))

(assert (=> bs!1231400 (= lambda!270532 lambda!270507)))

(declare-fun b!5310915 () Bool)

(declare-fun e!3300232 () Regex!14963)

(declare-fun e!3300233 () Regex!14963)

(assert (=> b!5310915 (= e!3300232 e!3300233)))

(declare-fun c!922510 () Bool)

(assert (=> b!5310915 (= c!922510 ((_ is Cons!61064) lt!2169842))))

(declare-fun b!5310916 () Bool)

(declare-fun e!3300230 () Bool)

(declare-fun lt!2169960 () Regex!14963)

(assert (=> b!5310916 (= e!3300230 (= lt!2169960 (head!11386 lt!2169842)))))

(declare-fun b!5310917 () Bool)

(assert (=> b!5310917 (= e!3300233 EmptyExpr!14963)))

(declare-fun e!3300229 () Bool)

(assert (=> d!1706589 e!3300229))

(declare-fun res!2253036 () Bool)

(assert (=> d!1706589 (=> (not res!2253036) (not e!3300229))))

(assert (=> d!1706589 (= res!2253036 (validRegex!6699 lt!2169960))))

(assert (=> d!1706589 (= lt!2169960 e!3300232)))

(declare-fun c!922511 () Bool)

(declare-fun e!3300231 () Bool)

(assert (=> d!1706589 (= c!922511 e!3300231)))

(declare-fun res!2253035 () Bool)

(assert (=> d!1706589 (=> (not res!2253035) (not e!3300231))))

(assert (=> d!1706589 (= res!2253035 ((_ is Cons!61064) lt!2169842))))

(assert (=> d!1706589 (forall!14380 lt!2169842 lambda!270532)))

(assert (=> d!1706589 (= (generalisedConcat!632 lt!2169842) lt!2169960)))

(declare-fun b!5310918 () Bool)

(assert (=> b!5310918 (= e!3300233 (Concat!23808 (h!67512 lt!2169842) (generalisedConcat!632 (t!374393 lt!2169842))))))

(declare-fun b!5310919 () Bool)

(declare-fun e!3300228 () Bool)

(assert (=> b!5310919 (= e!3300228 (isEmptyExpr!868 lt!2169960))))

(declare-fun b!5310920 () Bool)

(assert (=> b!5310920 (= e!3300230 (isConcat!391 lt!2169960))))

(declare-fun b!5310921 () Bool)

(assert (=> b!5310921 (= e!3300229 e!3300228)))

(declare-fun c!922512 () Bool)

(assert (=> b!5310921 (= c!922512 (isEmpty!33028 lt!2169842))))

(declare-fun b!5310922 () Bool)

(assert (=> b!5310922 (= e!3300231 (isEmpty!33028 (t!374393 lt!2169842)))))

(declare-fun b!5310923 () Bool)

(assert (=> b!5310923 (= e!3300232 (h!67512 lt!2169842))))

(declare-fun b!5310924 () Bool)

(assert (=> b!5310924 (= e!3300228 e!3300230)))

(declare-fun c!922509 () Bool)

(assert (=> b!5310924 (= c!922509 (isEmpty!33028 (tail!10483 lt!2169842)))))

(assert (= (and d!1706589 res!2253035) b!5310922))

(assert (= (and d!1706589 c!922511) b!5310923))

(assert (= (and d!1706589 (not c!922511)) b!5310915))

(assert (= (and b!5310915 c!922510) b!5310918))

(assert (= (and b!5310915 (not c!922510)) b!5310917))

(assert (= (and d!1706589 res!2253036) b!5310921))

(assert (= (and b!5310921 c!922512) b!5310919))

(assert (= (and b!5310921 (not c!922512)) b!5310924))

(assert (= (and b!5310924 c!922509) b!5310916))

(assert (= (and b!5310924 (not c!922509)) b!5310920))

(declare-fun m!6348076 () Bool)

(assert (=> b!5310922 m!6348076))

(declare-fun m!6348078 () Bool)

(assert (=> b!5310919 m!6348078))

(declare-fun m!6348080 () Bool)

(assert (=> b!5310916 m!6348080))

(declare-fun m!6348082 () Bool)

(assert (=> b!5310921 m!6348082))

(declare-fun m!6348084 () Bool)

(assert (=> b!5310918 m!6348084))

(declare-fun m!6348086 () Bool)

(assert (=> d!1706589 m!6348086))

(declare-fun m!6348088 () Bool)

(assert (=> d!1706589 m!6348088))

(declare-fun m!6348090 () Bool)

(assert (=> b!5310924 m!6348090))

(assert (=> b!5310924 m!6348090))

(declare-fun m!6348092 () Bool)

(assert (=> b!5310924 m!6348092))

(declare-fun m!6348094 () Bool)

(assert (=> b!5310920 m!6348094))

(assert (=> b!5310248 d!1706589))

(declare-fun bs!1231428 () Bool)

(declare-fun d!1706591 () Bool)

(assert (= bs!1231428 (and d!1706591 b!5310894)))

(declare-fun lambda!270537 () Int)

(assert (=> bs!1231428 (not (= lambda!270537 lambda!270526))))

(declare-fun bs!1231431 () Bool)

(assert (= bs!1231431 (and d!1706591 b!5310248)))

(assert (=> bs!1231431 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270537 lambda!270468))))

(assert (=> bs!1231431 (not (= lambda!270537 lambda!270471))))

(declare-fun bs!1231434 () Bool)

(assert (= bs!1231434 (and d!1706591 b!5310896)))

(assert (=> bs!1231434 (not (= lambda!270537 lambda!270530))))

(assert (=> bs!1231431 (not (= lambda!270537 lambda!270469))))

(assert (=> bs!1231431 (= lambda!270537 lambda!270470)))

(declare-fun bs!1231437 () Bool)

(assert (= bs!1231437 (and d!1706591 b!5310250)))

(assert (=> bs!1231437 (not (= lambda!270537 lambda!270466))))

(declare-fun bs!1231438 () Bool)

(assert (= bs!1231438 (and d!1706591 b!5310836)))

(assert (=> bs!1231438 (not (= lambda!270537 lambda!270524))))

(assert (=> bs!1231437 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169860 (regTwo!30438 r!7292))) (= lambda!270537 lambda!270465))))

(declare-fun bs!1231439 () Bool)

(assert (= bs!1231439 (and d!1706591 b!5310838)))

(assert (=> bs!1231439 (not (= lambda!270537 lambda!270525))))

(assert (=> d!1706591 true))

(assert (=> d!1706591 true))

(assert (=> d!1706591 true))

(assert (=> d!1706591 (= (isDefined!11777 (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 Nil!61065 s!2326 s!2326)) (Exists!2144 lambda!270537))))

(declare-fun lt!2169965 () Unit!153370)

(declare-fun choose!39729 (Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> d!1706591 (= lt!2169965 (choose!39729 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(assert (=> d!1706591 (validRegex!6699 (regTwo!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706591 (= (lemmaFindConcatSeparationEquivalentToExists!1252 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326) lt!2169965)))

(declare-fun bs!1231440 () Bool)

(assert (= bs!1231440 d!1706591))

(assert (=> bs!1231440 m!6347374))

(assert (=> bs!1231440 m!6347376))

(assert (=> bs!1231440 m!6347374))

(declare-fun m!6348122 () Bool)

(assert (=> bs!1231440 m!6348122))

(declare-fun m!6348124 () Bool)

(assert (=> bs!1231440 m!6348124))

(declare-fun m!6348126 () Bool)

(assert (=> bs!1231440 m!6348126))

(assert (=> b!5310248 d!1706591))

(declare-fun d!1706607 () Bool)

(assert (=> d!1706607 (= (Exists!2144 lambda!270471) (choose!39726 lambda!270471))))

(declare-fun bs!1231441 () Bool)

(assert (= bs!1231441 d!1706607))

(declare-fun m!6348128 () Bool)

(assert (=> bs!1231441 m!6348128))

(assert (=> b!5310248 d!1706607))

(declare-fun d!1706609 () Bool)

(declare-fun c!922517 () Bool)

(assert (=> d!1706609 (= c!922517 (isEmpty!33031 s!2326))))

(declare-fun e!3300244 () Bool)

(assert (=> d!1706609 (= (matchZipper!1207 lt!2169864 s!2326) e!3300244)))

(declare-fun b!5310945 () Bool)

(assert (=> b!5310945 (= e!3300244 (nullableZipper!1334 lt!2169864))))

(declare-fun b!5310946 () Bool)

(assert (=> b!5310946 (= e!3300244 (matchZipper!1207 (derivationStepZipper!1206 lt!2169864 (head!11385 s!2326)) (tail!10482 s!2326)))))

(assert (= (and d!1706609 c!922517) b!5310945))

(assert (= (and d!1706609 (not c!922517)) b!5310946))

(assert (=> d!1706609 m!6347856))

(declare-fun m!6348130 () Bool)

(assert (=> b!5310945 m!6348130))

(assert (=> b!5310946 m!6347863))

(assert (=> b!5310946 m!6347863))

(declare-fun m!6348132 () Bool)

(assert (=> b!5310946 m!6348132))

(assert (=> b!5310946 m!6347870))

(assert (=> b!5310946 m!6348132))

(assert (=> b!5310946 m!6347870))

(declare-fun m!6348134 () Bool)

(assert (=> b!5310946 m!6348134))

(assert (=> b!5310248 d!1706609))

(declare-fun d!1706611 () Bool)

(assert (=> d!1706611 (= (Exists!2144 lambda!270470) (choose!39726 lambda!270470))))

(declare-fun bs!1231442 () Bool)

(assert (= bs!1231442 d!1706611))

(declare-fun m!6348136 () Bool)

(assert (=> bs!1231442 m!6348136))

(assert (=> b!5310248 d!1706611))

(declare-fun bs!1231443 () Bool)

(declare-fun d!1706613 () Bool)

(assert (= bs!1231443 (and d!1706613 b!5310894)))

(declare-fun lambda!270543 () Int)

(assert (=> bs!1231443 (not (= lambda!270543 lambda!270526))))

(declare-fun bs!1231444 () Bool)

(assert (= bs!1231444 (and d!1706613 b!5310248)))

(assert (=> bs!1231444 (= lambda!270543 lambda!270468)))

(assert (=> bs!1231444 (not (= lambda!270543 lambda!270471))))

(declare-fun bs!1231446 () Bool)

(assert (= bs!1231446 (and d!1706613 b!5310896)))

(assert (=> bs!1231446 (not (= lambda!270543 lambda!270530))))

(declare-fun bs!1231447 () Bool)

(assert (= bs!1231447 (and d!1706613 d!1706591)))

(assert (=> bs!1231447 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) (= lt!2169855 lt!2169860)) (= lambda!270543 lambda!270537))))

(assert (=> bs!1231444 (not (= lambda!270543 lambda!270469))))

(assert (=> bs!1231444 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) (= lt!2169855 lt!2169860)) (= lambda!270543 lambda!270470))))

(declare-fun bs!1231448 () Bool)

(assert (= bs!1231448 (and d!1706613 b!5310250)))

(assert (=> bs!1231448 (not (= lambda!270543 lambda!270466))))

(declare-fun bs!1231449 () Bool)

(assert (= bs!1231449 (and d!1706613 b!5310836)))

(assert (=> bs!1231449 (not (= lambda!270543 lambda!270524))))

(assert (=> bs!1231448 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169855 (regTwo!30438 r!7292))) (= lambda!270543 lambda!270465))))

(declare-fun bs!1231450 () Bool)

(assert (= bs!1231450 (and d!1706613 b!5310838)))

(assert (=> bs!1231450 (not (= lambda!270543 lambda!270525))))

(assert (=> d!1706613 true))

(assert (=> d!1706613 true))

(assert (=> d!1706613 true))

(declare-fun lambda!270544 () Int)

(assert (=> bs!1231443 (not (= lambda!270544 lambda!270526))))

(assert (=> bs!1231444 (not (= lambda!270544 lambda!270468))))

(assert (=> bs!1231444 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) (= lt!2169855 lt!2169860)) (= lambda!270544 lambda!270471))))

(assert (=> bs!1231447 (not (= lambda!270544 lambda!270537))))

(assert (=> bs!1231444 (= lambda!270544 lambda!270469)))

(assert (=> bs!1231444 (not (= lambda!270544 lambda!270470))))

(assert (=> bs!1231448 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169855 (regTwo!30438 r!7292))) (= lambda!270544 lambda!270466))))

(assert (=> bs!1231449 (not (= lambda!270544 lambda!270524))))

(assert (=> bs!1231448 (not (= lambda!270544 lambda!270465))))

(assert (=> bs!1231450 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 lt!2169855)) (= lt!2169855 (regTwo!30438 lt!2169855))) (= lambda!270544 lambda!270525))))

(declare-fun bs!1231452 () Bool)

(assert (= bs!1231452 d!1706613))

(assert (=> bs!1231452 (not (= lambda!270544 lambda!270543))))

(assert (=> bs!1231446 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 lt!2169848)) (= lt!2169855 (regTwo!30438 lt!2169848))) (= lambda!270544 lambda!270530))))

(assert (=> d!1706613 true))

(assert (=> d!1706613 true))

(assert (=> d!1706613 true))

(assert (=> d!1706613 (= (Exists!2144 lambda!270543) (Exists!2144 lambda!270544))))

(declare-fun lt!2169968 () Unit!153370)

(declare-fun choose!39731 (Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> d!1706613 (= lt!2169968 (choose!39731 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326))))

(assert (=> d!1706613 (validRegex!6699 (regOne!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706613 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326) lt!2169968)))

(declare-fun m!6348172 () Bool)

(assert (=> bs!1231452 m!6348172))

(declare-fun m!6348174 () Bool)

(assert (=> bs!1231452 m!6348174))

(declare-fun m!6348176 () Bool)

(assert (=> bs!1231452 m!6348176))

(declare-fun m!6348178 () Bool)

(assert (=> bs!1231452 m!6348178))

(assert (=> b!5310248 d!1706613))

(declare-fun d!1706627 () Bool)

(assert (=> d!1706627 (= (Exists!2144 lambda!270469) (choose!39726 lambda!270469))))

(declare-fun bs!1231453 () Bool)

(assert (= bs!1231453 d!1706627))

(declare-fun m!6348180 () Bool)

(assert (=> bs!1231453 m!6348180))

(assert (=> b!5310248 d!1706627))

(declare-fun d!1706629 () Bool)

(assert (=> d!1706629 (= (matchR!7148 lt!2169855 s!2326) (matchRSpec!2066 lt!2169855 s!2326))))

(declare-fun lt!2169974 () Unit!153370)

(declare-fun choose!39732 (Regex!14963 List!61189) Unit!153370)

(assert (=> d!1706629 (= lt!2169974 (choose!39732 lt!2169855 s!2326))))

(assert (=> d!1706629 (validRegex!6699 lt!2169855)))

(assert (=> d!1706629 (= (mainMatchTheorem!2066 lt!2169855 s!2326) lt!2169974)))

(declare-fun bs!1231454 () Bool)

(assert (= bs!1231454 d!1706629))

(assert (=> bs!1231454 m!6347388))

(assert (=> bs!1231454 m!6347378))

(declare-fun m!6348182 () Bool)

(assert (=> bs!1231454 m!6348182))

(assert (=> bs!1231454 m!6348028))

(assert (=> b!5310248 d!1706629))

(declare-fun bs!1231455 () Bool)

(declare-fun d!1706631 () Bool)

(assert (= bs!1231455 (and d!1706631 b!5310894)))

(declare-fun lambda!270547 () Int)

(assert (=> bs!1231455 (not (= lambda!270547 lambda!270526))))

(declare-fun bs!1231456 () Bool)

(assert (= bs!1231456 (and d!1706631 b!5310248)))

(assert (=> bs!1231456 (= lambda!270547 lambda!270468)))

(assert (=> bs!1231456 (not (= lambda!270547 lambda!270471))))

(declare-fun bs!1231457 () Bool)

(assert (= bs!1231457 (and d!1706631 d!1706591)))

(assert (=> bs!1231457 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) (= lt!2169855 lt!2169860)) (= lambda!270547 lambda!270537))))

(assert (=> bs!1231456 (not (= lambda!270547 lambda!270469))))

(assert (=> bs!1231456 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) (= lt!2169855 lt!2169860)) (= lambda!270547 lambda!270470))))

(declare-fun bs!1231458 () Bool)

(assert (= bs!1231458 (and d!1706631 b!5310250)))

(assert (=> bs!1231458 (not (= lambda!270547 lambda!270466))))

(assert (=> bs!1231458 (= (and (= (regOne!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169855 (regTwo!30438 r!7292))) (= lambda!270547 lambda!270465))))

(declare-fun bs!1231459 () Bool)

(assert (= bs!1231459 (and d!1706631 b!5310838)))

(assert (=> bs!1231459 (not (= lambda!270547 lambda!270525))))

(declare-fun bs!1231460 () Bool)

(assert (= bs!1231460 (and d!1706631 d!1706613)))

(assert (=> bs!1231460 (= lambda!270547 lambda!270543)))

(declare-fun bs!1231461 () Bool)

(assert (= bs!1231461 (and d!1706631 b!5310896)))

(assert (=> bs!1231461 (not (= lambda!270547 lambda!270530))))

(assert (=> bs!1231460 (not (= lambda!270547 lambda!270544))))

(declare-fun bs!1231462 () Bool)

(assert (= bs!1231462 (and d!1706631 b!5310836)))

(assert (=> bs!1231462 (not (= lambda!270547 lambda!270524))))

(assert (=> d!1706631 true))

(assert (=> d!1706631 true))

(assert (=> d!1706631 true))

(assert (=> d!1706631 (= (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 Nil!61065 s!2326 s!2326)) (Exists!2144 lambda!270547))))

(declare-fun lt!2169975 () Unit!153370)

(assert (=> d!1706631 (= lt!2169975 (choose!39729 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326))))

(assert (=> d!1706631 (validRegex!6699 (regOne!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706631 (= (lemmaFindConcatSeparationEquivalentToExists!1252 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 s!2326) lt!2169975)))

(declare-fun bs!1231463 () Bool)

(assert (= bs!1231463 d!1706631))

(assert (=> bs!1231463 m!6347382))

(assert (=> bs!1231463 m!6347384))

(assert (=> bs!1231463 m!6347382))

(declare-fun m!6348184 () Bool)

(assert (=> bs!1231463 m!6348184))

(declare-fun m!6348186 () Bool)

(assert (=> bs!1231463 m!6348186))

(assert (=> bs!1231463 m!6348178))

(assert (=> b!5310248 d!1706631))

(declare-fun b!5311098 () Bool)

(declare-fun lt!2169988 () Unit!153370)

(declare-fun lt!2169989 () Unit!153370)

(assert (=> b!5311098 (= lt!2169988 lt!2169989)))

(declare-fun ++!13314 (List!61189 List!61189) List!61189)

(assert (=> b!5311098 (= (++!13314 (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1729 (List!61189 C!30196 List!61189 List!61189) Unit!153370)

(assert (=> b!5311098 (= lt!2169989 (lemmaMoveElementToOtherListKeepsConcatEq!1729 Nil!61065 (h!67513 s!2326) (t!374394 s!2326) s!2326))))

(declare-fun e!3300337 () Option!15074)

(assert (=> b!5311098 (= e!3300337 (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326) s!2326))))

(declare-fun b!5311099 () Bool)

(declare-fun e!3300335 () Bool)

(declare-fun lt!2169987 () Option!15074)

(assert (=> b!5311099 (= e!3300335 (not (isDefined!11777 lt!2169987)))))

(declare-fun b!5311100 () Bool)

(declare-fun e!3300336 () Bool)

(assert (=> b!5311100 (= e!3300336 (matchR!7148 lt!2169860 s!2326))))

(declare-fun b!5311101 () Bool)

(declare-fun e!3300339 () Option!15074)

(assert (=> b!5311101 (= e!3300339 (Some!15073 (tuple2!64325 Nil!61065 s!2326)))))

(declare-fun b!5311102 () Bool)

(assert (=> b!5311102 (= e!3300337 None!15073)))

(declare-fun b!5311103 () Bool)

(declare-fun res!2253103 () Bool)

(declare-fun e!3300338 () Bool)

(assert (=> b!5311103 (=> (not res!2253103) (not e!3300338))))

(declare-fun get!21001 (Option!15074) tuple2!64324)

(assert (=> b!5311103 (= res!2253103 (matchR!7148 lt!2169860 (_2!35465 (get!21001 lt!2169987))))))

(declare-fun b!5311104 () Bool)

(assert (=> b!5311104 (= e!3300338 (= (++!13314 (_1!35465 (get!21001 lt!2169987)) (_2!35465 (get!21001 lt!2169987))) s!2326))))

(declare-fun b!5311105 () Bool)

(assert (=> b!5311105 (= e!3300339 e!3300337)))

(declare-fun c!922568 () Bool)

(assert (=> b!5311105 (= c!922568 ((_ is Nil!61065) s!2326))))

(declare-fun d!1706633 () Bool)

(assert (=> d!1706633 e!3300335))

(declare-fun res!2253104 () Bool)

(assert (=> d!1706633 (=> res!2253104 e!3300335)))

(assert (=> d!1706633 (= res!2253104 e!3300338)))

(declare-fun res!2253106 () Bool)

(assert (=> d!1706633 (=> (not res!2253106) (not e!3300338))))

(assert (=> d!1706633 (= res!2253106 (isDefined!11777 lt!2169987))))

(assert (=> d!1706633 (= lt!2169987 e!3300339)))

(declare-fun c!922567 () Bool)

(assert (=> d!1706633 (= c!922567 e!3300336)))

(declare-fun res!2253105 () Bool)

(assert (=> d!1706633 (=> (not res!2253105) (not e!3300336))))

(assert (=> d!1706633 (= res!2253105 (matchR!7148 (regTwo!30438 (regOne!30438 r!7292)) Nil!61065))))

(assert (=> d!1706633 (validRegex!6699 (regTwo!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706633 (= (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 Nil!61065 s!2326 s!2326) lt!2169987)))

(declare-fun b!5311106 () Bool)

(declare-fun res!2253102 () Bool)

(assert (=> b!5311106 (=> (not res!2253102) (not e!3300338))))

(assert (=> b!5311106 (= res!2253102 (matchR!7148 (regTwo!30438 (regOne!30438 r!7292)) (_1!35465 (get!21001 lt!2169987))))))

(assert (= (and d!1706633 res!2253105) b!5311100))

(assert (= (and d!1706633 c!922567) b!5311101))

(assert (= (and d!1706633 (not c!922567)) b!5311105))

(assert (= (and b!5311105 c!922568) b!5311102))

(assert (= (and b!5311105 (not c!922568)) b!5311098))

(assert (= (and d!1706633 res!2253106) b!5311106))

(assert (= (and b!5311106 res!2253102) b!5311103))

(assert (= (and b!5311103 res!2253103) b!5311104))

(assert (= (and d!1706633 (not res!2253104)) b!5311099))

(declare-fun m!6348226 () Bool)

(assert (=> b!5311106 m!6348226))

(declare-fun m!6348228 () Bool)

(assert (=> b!5311106 m!6348228))

(declare-fun m!6348230 () Bool)

(assert (=> b!5311099 m!6348230))

(assert (=> b!5311103 m!6348226))

(declare-fun m!6348232 () Bool)

(assert (=> b!5311103 m!6348232))

(declare-fun m!6348234 () Bool)

(assert (=> b!5311098 m!6348234))

(assert (=> b!5311098 m!6348234))

(declare-fun m!6348236 () Bool)

(assert (=> b!5311098 m!6348236))

(declare-fun m!6348238 () Bool)

(assert (=> b!5311098 m!6348238))

(assert (=> b!5311098 m!6348234))

(declare-fun m!6348240 () Bool)

(assert (=> b!5311098 m!6348240))

(assert (=> d!1706633 m!6348230))

(declare-fun m!6348242 () Bool)

(assert (=> d!1706633 m!6348242))

(assert (=> d!1706633 m!6348126))

(declare-fun m!6348244 () Bool)

(assert (=> b!5311100 m!6348244))

(assert (=> b!5311104 m!6348226))

(declare-fun m!6348246 () Bool)

(assert (=> b!5311104 m!6348246))

(assert (=> b!5310248 d!1706633))

(declare-fun d!1706647 () Bool)

(assert (=> d!1706647 (= (matchR!7148 lt!2169848 s!2326) (matchZipper!1207 lt!2169831 s!2326))))

(declare-fun lt!2169990 () Unit!153370)

(assert (=> d!1706647 (= lt!2169990 (choose!39727 lt!2169831 lt!2169843 lt!2169848 s!2326))))

(assert (=> d!1706647 (validRegex!6699 lt!2169848)))

(assert (=> d!1706647 (= (theoremZipperRegexEquiv!373 lt!2169831 lt!2169843 lt!2169848 s!2326) lt!2169990)))

(declare-fun bs!1231477 () Bool)

(assert (= bs!1231477 d!1706647))

(assert (=> bs!1231477 m!6347402))

(assert (=> bs!1231477 m!6347394))

(declare-fun m!6348248 () Bool)

(assert (=> bs!1231477 m!6348248))

(assert (=> bs!1231477 m!6347948))

(assert (=> b!5310248 d!1706647))

(declare-fun d!1706649 () Bool)

(assert (=> d!1706649 (= (isDefined!11777 (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 Nil!61065 s!2326 s!2326)) (not (isEmpty!33032 (findConcatSeparation!1488 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 Nil!61065 s!2326 s!2326))))))

(declare-fun bs!1231478 () Bool)

(assert (= bs!1231478 d!1706649))

(assert (=> bs!1231478 m!6347374))

(declare-fun m!6348250 () Bool)

(assert (=> bs!1231478 m!6348250))

(assert (=> b!5310248 d!1706649))

(declare-fun b!5311107 () Bool)

(declare-fun lt!2169992 () Unit!153370)

(declare-fun lt!2169995 () Unit!153370)

(assert (=> b!5311107 (= lt!2169992 lt!2169995)))

(assert (=> b!5311107 (= (++!13314 (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326)) s!2326)))

(assert (=> b!5311107 (= lt!2169995 (lemmaMoveElementToOtherListKeepsConcatEq!1729 Nil!61065 (h!67513 s!2326) (t!374394 s!2326) s!2326))))

(declare-fun e!3300342 () Option!15074)

(assert (=> b!5311107 (= e!3300342 (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326) s!2326))))

(declare-fun b!5311108 () Bool)

(declare-fun e!3300340 () Bool)

(declare-fun lt!2169991 () Option!15074)

(assert (=> b!5311108 (= e!3300340 (not (isDefined!11777 lt!2169991)))))

(declare-fun b!5311109 () Bool)

(declare-fun e!3300341 () Bool)

(assert (=> b!5311109 (= e!3300341 (matchR!7148 lt!2169855 s!2326))))

(declare-fun b!5311110 () Bool)

(declare-fun e!3300344 () Option!15074)

(assert (=> b!5311110 (= e!3300344 (Some!15073 (tuple2!64325 Nil!61065 s!2326)))))

(declare-fun b!5311111 () Bool)

(assert (=> b!5311111 (= e!3300342 None!15073)))

(declare-fun b!5311112 () Bool)

(declare-fun res!2253108 () Bool)

(declare-fun e!3300343 () Bool)

(assert (=> b!5311112 (=> (not res!2253108) (not e!3300343))))

(assert (=> b!5311112 (= res!2253108 (matchR!7148 lt!2169855 (_2!35465 (get!21001 lt!2169991))))))

(declare-fun b!5311113 () Bool)

(assert (=> b!5311113 (= e!3300343 (= (++!13314 (_1!35465 (get!21001 lt!2169991)) (_2!35465 (get!21001 lt!2169991))) s!2326))))

(declare-fun b!5311114 () Bool)

(assert (=> b!5311114 (= e!3300344 e!3300342)))

(declare-fun c!922570 () Bool)

(assert (=> b!5311114 (= c!922570 ((_ is Nil!61065) s!2326))))

(declare-fun d!1706651 () Bool)

(assert (=> d!1706651 e!3300340))

(declare-fun res!2253109 () Bool)

(assert (=> d!1706651 (=> res!2253109 e!3300340)))

(assert (=> d!1706651 (= res!2253109 e!3300343)))

(declare-fun res!2253111 () Bool)

(assert (=> d!1706651 (=> (not res!2253111) (not e!3300343))))

(assert (=> d!1706651 (= res!2253111 (isDefined!11777 lt!2169991))))

(assert (=> d!1706651 (= lt!2169991 e!3300344)))

(declare-fun c!922569 () Bool)

(assert (=> d!1706651 (= c!922569 e!3300341)))

(declare-fun res!2253110 () Bool)

(assert (=> d!1706651 (=> (not res!2253110) (not e!3300341))))

(assert (=> d!1706651 (= res!2253110 (matchR!7148 (regOne!30438 (regOne!30438 r!7292)) Nil!61065))))

(assert (=> d!1706651 (validRegex!6699 (regOne!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706651 (= (findConcatSeparation!1488 (regOne!30438 (regOne!30438 r!7292)) lt!2169855 Nil!61065 s!2326 s!2326) lt!2169991)))

(declare-fun b!5311115 () Bool)

(declare-fun res!2253107 () Bool)

(assert (=> b!5311115 (=> (not res!2253107) (not e!3300343))))

(assert (=> b!5311115 (= res!2253107 (matchR!7148 (regOne!30438 (regOne!30438 r!7292)) (_1!35465 (get!21001 lt!2169991))))))

(assert (= (and d!1706651 res!2253110) b!5311109))

(assert (= (and d!1706651 c!922569) b!5311110))

(assert (= (and d!1706651 (not c!922569)) b!5311114))

(assert (= (and b!5311114 c!922570) b!5311111))

(assert (= (and b!5311114 (not c!922570)) b!5311107))

(assert (= (and d!1706651 res!2253111) b!5311115))

(assert (= (and b!5311115 res!2253107) b!5311112))

(assert (= (and b!5311112 res!2253108) b!5311113))

(assert (= (and d!1706651 (not res!2253109)) b!5311108))

(declare-fun m!6348254 () Bool)

(assert (=> b!5311115 m!6348254))

(declare-fun m!6348256 () Bool)

(assert (=> b!5311115 m!6348256))

(declare-fun m!6348258 () Bool)

(assert (=> b!5311108 m!6348258))

(assert (=> b!5311112 m!6348254))

(declare-fun m!6348260 () Bool)

(assert (=> b!5311112 m!6348260))

(assert (=> b!5311107 m!6348234))

(assert (=> b!5311107 m!6348234))

(assert (=> b!5311107 m!6348236))

(assert (=> b!5311107 m!6348238))

(assert (=> b!5311107 m!6348234))

(declare-fun m!6348262 () Bool)

(assert (=> b!5311107 m!6348262))

(assert (=> d!1706651 m!6348258))

(declare-fun m!6348264 () Bool)

(assert (=> d!1706651 m!6348264))

(assert (=> d!1706651 m!6348178))

(assert (=> b!5311109 m!6347388))

(assert (=> b!5311113 m!6348254))

(declare-fun m!6348266 () Bool)

(assert (=> b!5311113 m!6348266))

(assert (=> b!5310248 d!1706651))

(declare-fun bs!1231480 () Bool)

(declare-fun d!1706655 () Bool)

(assert (= bs!1231480 (and d!1706655 b!5310894)))

(declare-fun lambda!270552 () Int)

(assert (=> bs!1231480 (not (= lambda!270552 lambda!270526))))

(declare-fun bs!1231481 () Bool)

(assert (= bs!1231481 (and d!1706655 d!1706631)))

(assert (=> bs!1231481 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270552 lambda!270547))))

(declare-fun bs!1231482 () Bool)

(assert (= bs!1231482 (and d!1706655 b!5310248)))

(assert (=> bs!1231482 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270552 lambda!270468))))

(assert (=> bs!1231482 (not (= lambda!270552 lambda!270471))))

(declare-fun bs!1231483 () Bool)

(assert (= bs!1231483 (and d!1706655 d!1706591)))

(assert (=> bs!1231483 (= lambda!270552 lambda!270537)))

(assert (=> bs!1231482 (not (= lambda!270552 lambda!270469))))

(assert (=> bs!1231482 (= lambda!270552 lambda!270470)))

(declare-fun bs!1231484 () Bool)

(assert (= bs!1231484 (and d!1706655 b!5310250)))

(assert (=> bs!1231484 (not (= lambda!270552 lambda!270466))))

(assert (=> bs!1231484 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169860 (regTwo!30438 r!7292))) (= lambda!270552 lambda!270465))))

(declare-fun bs!1231485 () Bool)

(assert (= bs!1231485 (and d!1706655 b!5310838)))

(assert (=> bs!1231485 (not (= lambda!270552 lambda!270525))))

(declare-fun bs!1231486 () Bool)

(assert (= bs!1231486 (and d!1706655 d!1706613)))

(assert (=> bs!1231486 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270552 lambda!270543))))

(declare-fun bs!1231487 () Bool)

(assert (= bs!1231487 (and d!1706655 b!5310896)))

(assert (=> bs!1231487 (not (= lambda!270552 lambda!270530))))

(assert (=> bs!1231486 (not (= lambda!270552 lambda!270544))))

(declare-fun bs!1231488 () Bool)

(assert (= bs!1231488 (and d!1706655 b!5310836)))

(assert (=> bs!1231488 (not (= lambda!270552 lambda!270524))))

(assert (=> d!1706655 true))

(assert (=> d!1706655 true))

(assert (=> d!1706655 true))

(declare-fun lambda!270553 () Int)

(assert (=> bs!1231480 (not (= lambda!270553 lambda!270526))))

(assert (=> bs!1231481 (not (= lambda!270553 lambda!270547))))

(assert (=> bs!1231482 (not (= lambda!270553 lambda!270468))))

(assert (=> bs!1231482 (= lambda!270553 lambda!270471)))

(assert (=> bs!1231483 (not (= lambda!270553 lambda!270537))))

(assert (=> bs!1231482 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270553 lambda!270469))))

(declare-fun bs!1231489 () Bool)

(assert (= bs!1231489 d!1706655))

(assert (=> bs!1231489 (not (= lambda!270553 lambda!270552))))

(assert (=> bs!1231482 (not (= lambda!270553 lambda!270470))))

(assert (=> bs!1231484 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 r!7292)) (= lt!2169860 (regTwo!30438 r!7292))) (= lambda!270553 lambda!270466))))

(assert (=> bs!1231484 (not (= lambda!270553 lambda!270465))))

(assert (=> bs!1231485 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 lt!2169855)) (= lt!2169860 (regTwo!30438 lt!2169855))) (= lambda!270553 lambda!270525))))

(assert (=> bs!1231486 (not (= lambda!270553 lambda!270543))))

(assert (=> bs!1231487 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 lt!2169848)) (= lt!2169860 (regTwo!30438 lt!2169848))) (= lambda!270553 lambda!270530))))

(assert (=> bs!1231486 (= (and (= (regTwo!30438 (regOne!30438 r!7292)) (regOne!30438 (regOne!30438 r!7292))) (= lt!2169860 lt!2169855)) (= lambda!270553 lambda!270544))))

(assert (=> bs!1231488 (not (= lambda!270553 lambda!270524))))

(assert (=> d!1706655 true))

(assert (=> d!1706655 true))

(assert (=> d!1706655 true))

(assert (=> d!1706655 (= (Exists!2144 lambda!270552) (Exists!2144 lambda!270553))))

(declare-fun lt!2169997 () Unit!153370)

(assert (=> d!1706655 (= lt!2169997 (choose!39731 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(assert (=> d!1706655 (validRegex!6699 (regTwo!30438 (regOne!30438 r!7292)))))

(assert (=> d!1706655 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326) lt!2169997)))

(declare-fun m!6348268 () Bool)

(assert (=> bs!1231489 m!6348268))

(declare-fun m!6348270 () Bool)

(assert (=> bs!1231489 m!6348270))

(declare-fun m!6348272 () Bool)

(assert (=> bs!1231489 m!6348272))

(assert (=> bs!1231489 m!6348126))

(assert (=> b!5310248 d!1706655))

(declare-fun d!1706657 () Bool)

(assert (=> d!1706657 (= (matchR!7148 lt!2169848 s!2326) (matchRSpec!2066 lt!2169848 s!2326))))

(declare-fun lt!2170006 () Unit!153370)

(assert (=> d!1706657 (= lt!2170006 (choose!39732 lt!2169848 s!2326))))

(assert (=> d!1706657 (validRegex!6699 lt!2169848)))

(assert (=> d!1706657 (= (mainMatchTheorem!2066 lt!2169848 s!2326) lt!2170006)))

(declare-fun bs!1231490 () Bool)

(assert (= bs!1231490 d!1706657))

(assert (=> bs!1231490 m!6347402))

(assert (=> bs!1231490 m!6347420))

(declare-fun m!6348274 () Bool)

(assert (=> bs!1231490 m!6348274))

(assert (=> bs!1231490 m!6347948))

(assert (=> b!5310248 d!1706657))

(declare-fun bs!1231491 () Bool)

(declare-fun d!1706659 () Bool)

(assert (= bs!1231491 (and d!1706659 d!1706477)))

(declare-fun lambda!270556 () Int)

(assert (=> bs!1231491 (= lambda!270556 lambda!270500)))

(declare-fun bs!1231492 () Bool)

(assert (= bs!1231492 (and d!1706659 d!1706589)))

(assert (=> bs!1231492 (= lambda!270556 lambda!270532)))

(declare-fun bs!1231493 () Bool)

(assert (= bs!1231493 (and d!1706659 d!1706511)))

(assert (=> bs!1231493 (= lambda!270556 lambda!270508)))

(declare-fun bs!1231494 () Bool)

(assert (= bs!1231494 (and d!1706659 d!1706473)))

(assert (=> bs!1231494 (= lambda!270556 lambda!270496)))

(declare-fun bs!1231495 () Bool)

(assert (= bs!1231495 (and d!1706659 d!1706445)))

(assert (=> bs!1231495 (= lambda!270556 lambda!270483)))

(declare-fun bs!1231496 () Bool)

(assert (= bs!1231496 (and d!1706659 d!1706507)))

(assert (=> bs!1231496 (= lambda!270556 lambda!270507)))

(assert (=> d!1706659 (= (inv!80654 setElem!34145) (forall!14380 (exprs!4847 setElem!34145) lambda!270556))))

(declare-fun bs!1231497 () Bool)

(assert (= bs!1231497 d!1706659))

(declare-fun m!6348276 () Bool)

(assert (=> bs!1231497 m!6348276))

(assert (=> setNonEmpty!34145 d!1706659))

(declare-fun bs!1231498 () Bool)

(declare-fun b!5311128 () Bool)

(assert (= bs!1231498 (and b!5311128 b!5310894)))

(declare-fun lambda!270559 () Int)

(assert (=> bs!1231498 (= (and (= (reg!15292 r!7292) (reg!15292 lt!2169848)) (= r!7292 lt!2169848)) (= lambda!270559 lambda!270526))))

(declare-fun bs!1231499 () Bool)

(assert (= bs!1231499 (and b!5311128 d!1706631)))

(assert (=> bs!1231499 (not (= lambda!270559 lambda!270547))))

(declare-fun bs!1231500 () Bool)

(assert (= bs!1231500 (and b!5311128 b!5310248)))

(assert (=> bs!1231500 (not (= lambda!270559 lambda!270468))))

(assert (=> bs!1231500 (not (= lambda!270559 lambda!270471))))

(assert (=> bs!1231500 (not (= lambda!270559 lambda!270469))))

(declare-fun bs!1231501 () Bool)

(assert (= bs!1231501 (and b!5311128 d!1706655)))

(assert (=> bs!1231501 (not (= lambda!270559 lambda!270552))))

(assert (=> bs!1231500 (not (= lambda!270559 lambda!270470))))

(declare-fun bs!1231502 () Bool)

(assert (= bs!1231502 (and b!5311128 b!5310250)))

(assert (=> bs!1231502 (not (= lambda!270559 lambda!270466))))

(assert (=> bs!1231502 (not (= lambda!270559 lambda!270465))))

(declare-fun bs!1231503 () Bool)

(assert (= bs!1231503 (and b!5311128 b!5310838)))

(assert (=> bs!1231503 (not (= lambda!270559 lambda!270525))))

(declare-fun bs!1231504 () Bool)

(assert (= bs!1231504 (and b!5311128 d!1706613)))

(assert (=> bs!1231504 (not (= lambda!270559 lambda!270543))))

(declare-fun bs!1231505 () Bool)

(assert (= bs!1231505 (and b!5311128 b!5310896)))

(assert (=> bs!1231505 (not (= lambda!270559 lambda!270530))))

(declare-fun bs!1231506 () Bool)

(assert (= bs!1231506 (and b!5311128 d!1706591)))

(assert (=> bs!1231506 (not (= lambda!270559 lambda!270537))))

(assert (=> bs!1231501 (not (= lambda!270559 lambda!270553))))

(assert (=> bs!1231504 (not (= lambda!270559 lambda!270544))))

(declare-fun bs!1231507 () Bool)

(assert (= bs!1231507 (and b!5311128 b!5310836)))

(assert (=> bs!1231507 (= (and (= (reg!15292 r!7292) (reg!15292 lt!2169855)) (= r!7292 lt!2169855)) (= lambda!270559 lambda!270524))))

(assert (=> b!5311128 true))

(assert (=> b!5311128 true))

(declare-fun bs!1231508 () Bool)

(declare-fun b!5311130 () Bool)

(assert (= bs!1231508 (and b!5311130 b!5310894)))

(declare-fun lambda!270564 () Int)

(assert (=> bs!1231508 (not (= lambda!270564 lambda!270526))))

(declare-fun bs!1231509 () Bool)

(assert (= bs!1231509 (and b!5311130 d!1706631)))

(assert (=> bs!1231509 (not (= lambda!270564 lambda!270547))))

(declare-fun bs!1231510 () Bool)

(assert (= bs!1231510 (and b!5311130 b!5310248)))

(assert (=> bs!1231510 (not (= lambda!270564 lambda!270468))))

(assert (=> bs!1231510 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270564 lambda!270471))))

(assert (=> bs!1231510 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270564 lambda!270469))))

(declare-fun bs!1231512 () Bool)

(assert (= bs!1231512 (and b!5311130 d!1706655)))

(assert (=> bs!1231512 (not (= lambda!270564 lambda!270552))))

(assert (=> bs!1231510 (not (= lambda!270564 lambda!270470))))

(declare-fun bs!1231513 () Bool)

(assert (= bs!1231513 (and b!5311130 b!5310250)))

(assert (=> bs!1231513 (= lambda!270564 lambda!270466)))

(assert (=> bs!1231513 (not (= lambda!270564 lambda!270465))))

(declare-fun bs!1231515 () Bool)

(assert (= bs!1231515 (and b!5311130 b!5310838)))

(assert (=> bs!1231515 (= (and (= (regOne!30438 r!7292) (regOne!30438 lt!2169855)) (= (regTwo!30438 r!7292) (regTwo!30438 lt!2169855))) (= lambda!270564 lambda!270525))))

(declare-fun bs!1231516 () Bool)

(assert (= bs!1231516 (and b!5311130 d!1706613)))

(assert (=> bs!1231516 (not (= lambda!270564 lambda!270543))))

(declare-fun bs!1231518 () Bool)

(assert (= bs!1231518 (and b!5311130 b!5310896)))

(assert (=> bs!1231518 (= (and (= (regOne!30438 r!7292) (regOne!30438 lt!2169848)) (= (regTwo!30438 r!7292) (regTwo!30438 lt!2169848))) (= lambda!270564 lambda!270530))))

(declare-fun bs!1231519 () Bool)

(assert (= bs!1231519 (and b!5311130 d!1706591)))

(assert (=> bs!1231519 (not (= lambda!270564 lambda!270537))))

(assert (=> bs!1231512 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270564 lambda!270553))))

(assert (=> bs!1231516 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270564 lambda!270544))))

(declare-fun bs!1231523 () Bool)

(assert (= bs!1231523 (and b!5311130 b!5311128)))

(assert (=> bs!1231523 (not (= lambda!270564 lambda!270559))))

(declare-fun bs!1231524 () Bool)

(assert (= bs!1231524 (and b!5311130 b!5310836)))

(assert (=> bs!1231524 (not (= lambda!270564 lambda!270524))))

(assert (=> b!5311130 true))

(assert (=> b!5311130 true))

(declare-fun b!5311120 () Bool)

(declare-fun c!922578 () Bool)

(assert (=> b!5311120 (= c!922578 ((_ is ElementMatch!14963) r!7292))))

(declare-fun e!3300347 () Bool)

(declare-fun e!3300349 () Bool)

(assert (=> b!5311120 (= e!3300347 e!3300349)))

(declare-fun b!5311121 () Bool)

(declare-fun e!3300351 () Bool)

(assert (=> b!5311121 (= e!3300351 (matchRSpec!2066 (regTwo!30439 r!7292) s!2326))))

(declare-fun d!1706661 () Bool)

(declare-fun c!922580 () Bool)

(assert (=> d!1706661 (= c!922580 ((_ is EmptyExpr!14963) r!7292))))

(declare-fun e!3300350 () Bool)

(assert (=> d!1706661 (= (matchRSpec!2066 r!7292 s!2326) e!3300350)))

(declare-fun b!5311122 () Bool)

(assert (=> b!5311122 (= e!3300350 e!3300347)))

(declare-fun res!2253112 () Bool)

(assert (=> b!5311122 (= res!2253112 (not ((_ is EmptyLang!14963) r!7292)))))

(assert (=> b!5311122 (=> (not res!2253112) (not e!3300347))))

(declare-fun b!5311123 () Bool)

(declare-fun c!922577 () Bool)

(assert (=> b!5311123 (= c!922577 ((_ is Union!14963) r!7292))))

(declare-fun e!3300352 () Bool)

(assert (=> b!5311123 (= e!3300349 e!3300352)))

(declare-fun b!5311124 () Bool)

(assert (=> b!5311124 (= e!3300349 (= s!2326 (Cons!61065 (c!922305 r!7292) Nil!61065)))))

(declare-fun b!5311125 () Bool)

(declare-fun e!3300348 () Bool)

(assert (=> b!5311125 (= e!3300352 e!3300348)))

(declare-fun c!922579 () Bool)

(assert (=> b!5311125 (= c!922579 ((_ is Star!14963) r!7292))))

(declare-fun b!5311126 () Bool)

(declare-fun call!378694 () Bool)

(assert (=> b!5311126 (= e!3300350 call!378694)))

(declare-fun b!5311127 () Bool)

(declare-fun res!2253114 () Bool)

(declare-fun e!3300353 () Bool)

(assert (=> b!5311127 (=> res!2253114 e!3300353)))

(assert (=> b!5311127 (= res!2253114 call!378694)))

(assert (=> b!5311127 (= e!3300348 e!3300353)))

(declare-fun call!378693 () Bool)

(assert (=> b!5311128 (= e!3300353 call!378693)))

(declare-fun b!5311129 () Bool)

(assert (=> b!5311129 (= e!3300352 e!3300351)))

(declare-fun res!2253113 () Bool)

(assert (=> b!5311129 (= res!2253113 (matchRSpec!2066 (regOne!30439 r!7292) s!2326))))

(assert (=> b!5311129 (=> res!2253113 e!3300351)))

(declare-fun bm!378688 () Bool)

(assert (=> bm!378688 (= call!378694 (isEmpty!33031 s!2326))))

(assert (=> b!5311130 (= e!3300348 call!378693)))

(declare-fun bm!378689 () Bool)

(assert (=> bm!378689 (= call!378693 (Exists!2144 (ite c!922579 lambda!270559 lambda!270564)))))

(assert (= (and d!1706661 c!922580) b!5311126))

(assert (= (and d!1706661 (not c!922580)) b!5311122))

(assert (= (and b!5311122 res!2253112) b!5311120))

(assert (= (and b!5311120 c!922578) b!5311124))

(assert (= (and b!5311120 (not c!922578)) b!5311123))

(assert (= (and b!5311123 c!922577) b!5311129))

(assert (= (and b!5311123 (not c!922577)) b!5311125))

(assert (= (and b!5311129 (not res!2253113)) b!5311121))

(assert (= (and b!5311125 c!922579) b!5311127))

(assert (= (and b!5311125 (not c!922579)) b!5311130))

(assert (= (and b!5311127 (not res!2253114)) b!5311128))

(assert (= (or b!5311128 b!5311130) bm!378689))

(assert (= (or b!5311126 b!5311127) bm!378688))

(declare-fun m!6348304 () Bool)

(assert (=> b!5311121 m!6348304))

(declare-fun m!6348306 () Bool)

(assert (=> b!5311129 m!6348306))

(assert (=> bm!378688 m!6347856))

(declare-fun m!6348308 () Bool)

(assert (=> bm!378689 m!6348308))

(assert (=> b!5310267 d!1706661))

(declare-fun bm!378690 () Bool)

(declare-fun call!378695 () Bool)

(assert (=> bm!378690 (= call!378695 (isEmpty!33031 s!2326))))

(declare-fun b!5311141 () Bool)

(declare-fun res!2253126 () Bool)

(declare-fun e!3300361 () Bool)

(assert (=> b!5311141 (=> res!2253126 e!3300361)))

(assert (=> b!5311141 (= res!2253126 (not ((_ is ElementMatch!14963) r!7292)))))

(declare-fun e!3300366 () Bool)

(assert (=> b!5311141 (= e!3300366 e!3300361)))

(declare-fun b!5311142 () Bool)

(declare-fun res!2253120 () Bool)

(declare-fun e!3300362 () Bool)

(assert (=> b!5311142 (=> res!2253120 e!3300362)))

(assert (=> b!5311142 (= res!2253120 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5311143 () Bool)

(declare-fun e!3300363 () Bool)

(assert (=> b!5311143 (= e!3300363 (nullable!5132 r!7292))))

(declare-fun d!1706669 () Bool)

(declare-fun e!3300360 () Bool)

(assert (=> d!1706669 e!3300360))

(declare-fun c!922585 () Bool)

(assert (=> d!1706669 (= c!922585 ((_ is EmptyExpr!14963) r!7292))))

(declare-fun lt!2170016 () Bool)

(assert (=> d!1706669 (= lt!2170016 e!3300363)))

(declare-fun c!922586 () Bool)

(assert (=> d!1706669 (= c!922586 (isEmpty!33031 s!2326))))

(assert (=> d!1706669 (validRegex!6699 r!7292)))

(assert (=> d!1706669 (= (matchR!7148 r!7292 s!2326) lt!2170016)))

(declare-fun b!5311144 () Bool)

(assert (=> b!5311144 (= e!3300366 (not lt!2170016))))

(declare-fun b!5311145 () Bool)

(declare-fun e!3300364 () Bool)

(assert (=> b!5311145 (= e!3300361 e!3300364)))

(declare-fun res!2253122 () Bool)

(assert (=> b!5311145 (=> (not res!2253122) (not e!3300364))))

(assert (=> b!5311145 (= res!2253122 (not lt!2170016))))

(declare-fun b!5311146 () Bool)

(declare-fun res!2253123 () Bool)

(declare-fun e!3300365 () Bool)

(assert (=> b!5311146 (=> (not res!2253123) (not e!3300365))))

(assert (=> b!5311146 (= res!2253123 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5311147 () Bool)

(declare-fun res!2253121 () Bool)

(assert (=> b!5311147 (=> (not res!2253121) (not e!3300365))))

(assert (=> b!5311147 (= res!2253121 (not call!378695))))

(declare-fun b!5311148 () Bool)

(assert (=> b!5311148 (= e!3300364 e!3300362)))

(declare-fun res!2253119 () Bool)

(assert (=> b!5311148 (=> res!2253119 e!3300362)))

(assert (=> b!5311148 (= res!2253119 call!378695)))

(declare-fun b!5311149 () Bool)

(assert (=> b!5311149 (= e!3300362 (not (= (head!11385 s!2326) (c!922305 r!7292))))))

(declare-fun b!5311150 () Bool)

(assert (=> b!5311150 (= e!3300360 (= lt!2170016 call!378695))))

(declare-fun b!5311151 () Bool)

(assert (=> b!5311151 (= e!3300363 (matchR!7148 (derivativeStep!4155 r!7292 (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5311152 () Bool)

(declare-fun res!2253125 () Bool)

(assert (=> b!5311152 (=> res!2253125 e!3300361)))

(assert (=> b!5311152 (= res!2253125 e!3300365)))

(declare-fun res!2253124 () Bool)

(assert (=> b!5311152 (=> (not res!2253124) (not e!3300365))))

(assert (=> b!5311152 (= res!2253124 lt!2170016)))

(declare-fun b!5311153 () Bool)

(assert (=> b!5311153 (= e!3300360 e!3300366)))

(declare-fun c!922587 () Bool)

(assert (=> b!5311153 (= c!922587 ((_ is EmptyLang!14963) r!7292))))

(declare-fun b!5311154 () Bool)

(assert (=> b!5311154 (= e!3300365 (= (head!11385 s!2326) (c!922305 r!7292)))))

(assert (= (and d!1706669 c!922586) b!5311143))

(assert (= (and d!1706669 (not c!922586)) b!5311151))

(assert (= (and d!1706669 c!922585) b!5311150))

(assert (= (and d!1706669 (not c!922585)) b!5311153))

(assert (= (and b!5311153 c!922587) b!5311144))

(assert (= (and b!5311153 (not c!922587)) b!5311141))

(assert (= (and b!5311141 (not res!2253126)) b!5311152))

(assert (= (and b!5311152 res!2253124) b!5311147))

(assert (= (and b!5311147 res!2253121) b!5311146))

(assert (= (and b!5311146 res!2253123) b!5311154))

(assert (= (and b!5311152 (not res!2253125)) b!5311145))

(assert (= (and b!5311145 res!2253122) b!5311148))

(assert (= (and b!5311148 (not res!2253119)) b!5311142))

(assert (= (and b!5311142 (not res!2253120)) b!5311149))

(assert (= (or b!5311150 b!5311147 b!5311148) bm!378690))

(assert (=> b!5311154 m!6347863))

(assert (=> b!5311142 m!6347870))

(assert (=> b!5311142 m!6347870))

(assert (=> b!5311142 m!6347942))

(assert (=> b!5311151 m!6347863))

(assert (=> b!5311151 m!6347863))

(declare-fun m!6348324 () Bool)

(assert (=> b!5311151 m!6348324))

(assert (=> b!5311151 m!6347870))

(assert (=> b!5311151 m!6348324))

(assert (=> b!5311151 m!6347870))

(declare-fun m!6348326 () Bool)

(assert (=> b!5311151 m!6348326))

(assert (=> d!1706669 m!6347856))

(assert (=> d!1706669 m!6347474))

(assert (=> b!5311149 m!6347863))

(assert (=> b!5311146 m!6347870))

(assert (=> b!5311146 m!6347870))

(assert (=> b!5311146 m!6347942))

(assert (=> bm!378690 m!6347856))

(declare-fun m!6348328 () Bool)

(assert (=> b!5311143 m!6348328))

(assert (=> b!5310267 d!1706669))

(declare-fun d!1706677 () Bool)

(assert (=> d!1706677 (= (matchR!7148 r!7292 s!2326) (matchRSpec!2066 r!7292 s!2326))))

(declare-fun lt!2170018 () Unit!153370)

(assert (=> d!1706677 (= lt!2170018 (choose!39732 r!7292 s!2326))))

(assert (=> d!1706677 (validRegex!6699 r!7292)))

(assert (=> d!1706677 (= (mainMatchTheorem!2066 r!7292 s!2326) lt!2170018)))

(declare-fun bs!1231527 () Bool)

(assert (= bs!1231527 d!1706677))

(assert (=> bs!1231527 m!6347336))

(assert (=> bs!1231527 m!6347334))

(declare-fun m!6348336 () Bool)

(assert (=> bs!1231527 m!6348336))

(assert (=> bs!1231527 m!6347474))

(assert (=> b!5310267 d!1706677))

(declare-fun b!5311160 () Bool)

(declare-fun e!3300376 () Bool)

(declare-fun call!378698 () Bool)

(assert (=> b!5311160 (= e!3300376 call!378698)))

(declare-fun b!5311161 () Bool)

(declare-fun res!2253135 () Bool)

(declare-fun e!3300371 () Bool)

(assert (=> b!5311161 (=> res!2253135 e!3300371)))

(assert (=> b!5311161 (= res!2253135 (not ((_ is Concat!23808) lt!2169825)))))

(declare-fun e!3300375 () Bool)

(assert (=> b!5311161 (= e!3300375 e!3300371)))

(declare-fun bm!378691 () Bool)

(declare-fun call!378699 () Bool)

(declare-fun c!922593 () Bool)

(assert (=> bm!378691 (= call!378699 (validRegex!6699 (ite c!922593 (regOne!30439 lt!2169825) (regOne!30438 lt!2169825))))))

(declare-fun b!5311162 () Bool)

(declare-fun e!3300370 () Bool)

(assert (=> b!5311162 (= e!3300371 e!3300370)))

(declare-fun res!2253130 () Bool)

(assert (=> b!5311162 (=> (not res!2253130) (not e!3300370))))

(assert (=> b!5311162 (= res!2253130 call!378699)))

(declare-fun b!5311163 () Bool)

(declare-fun call!378696 () Bool)

(assert (=> b!5311163 (= e!3300370 call!378696)))

(declare-fun b!5311164 () Bool)

(declare-fun e!3300377 () Bool)

(assert (=> b!5311164 (= e!3300377 e!3300375)))

(assert (=> b!5311164 (= c!922593 ((_ is Union!14963) lt!2169825))))

(declare-fun b!5311165 () Bool)

(assert (=> b!5311165 (= e!3300377 e!3300376)))

(declare-fun res!2253133 () Bool)

(assert (=> b!5311165 (= res!2253133 (not (nullable!5132 (reg!15292 lt!2169825))))))

(assert (=> b!5311165 (=> (not res!2253133) (not e!3300376))))

(declare-fun c!922590 () Bool)

(declare-fun bm!378692 () Bool)

(assert (=> bm!378692 (= call!378698 (validRegex!6699 (ite c!922590 (reg!15292 lt!2169825) (ite c!922593 (regTwo!30439 lt!2169825) (regTwo!30438 lt!2169825)))))))

(declare-fun bm!378693 () Bool)

(assert (=> bm!378693 (= call!378696 call!378698)))

(declare-fun b!5311166 () Bool)

(declare-fun res!2253128 () Bool)

(declare-fun e!3300373 () Bool)

(assert (=> b!5311166 (=> (not res!2253128) (not e!3300373))))

(assert (=> b!5311166 (= res!2253128 call!378699)))

(assert (=> b!5311166 (= e!3300375 e!3300373)))

(declare-fun d!1706681 () Bool)

(declare-fun res!2253129 () Bool)

(declare-fun e!3300372 () Bool)

(assert (=> d!1706681 (=> res!2253129 e!3300372)))

(assert (=> d!1706681 (= res!2253129 ((_ is ElementMatch!14963) lt!2169825))))

(assert (=> d!1706681 (= (validRegex!6699 lt!2169825) e!3300372)))

(declare-fun b!5311168 () Bool)

(assert (=> b!5311168 (= e!3300373 call!378696)))

(declare-fun b!5311170 () Bool)

(assert (=> b!5311170 (= e!3300372 e!3300377)))

(assert (=> b!5311170 (= c!922590 ((_ is Star!14963) lt!2169825))))

(assert (= (and d!1706681 (not res!2253129)) b!5311170))

(assert (= (and b!5311170 c!922590) b!5311165))

(assert (= (and b!5311170 (not c!922590)) b!5311164))

(assert (= (and b!5311165 res!2253133) b!5311160))

(assert (= (and b!5311164 c!922593) b!5311166))

(assert (= (and b!5311164 (not c!922593)) b!5311161))

(assert (= (and b!5311166 res!2253128) b!5311168))

(assert (= (and b!5311161 (not res!2253135)) b!5311162))

(assert (= (and b!5311162 res!2253130) b!5311163))

(assert (= (or b!5311168 b!5311163) bm!378693))

(assert (= (or b!5311166 b!5311162) bm!378691))

(assert (= (or b!5311160 bm!378693) bm!378692))

(declare-fun m!6348338 () Bool)

(assert (=> bm!378691 m!6348338))

(declare-fun m!6348340 () Bool)

(assert (=> b!5311165 m!6348340))

(declare-fun m!6348342 () Bool)

(assert (=> bm!378692 m!6348342))

(assert (=> b!5310287 d!1706681))

(declare-fun bm!378695 () Bool)

(declare-fun call!378700 () Bool)

(assert (=> bm!378695 (= call!378700 (isEmpty!33031 s!2326))))

(declare-fun b!5311183 () Bool)

(declare-fun res!2253148 () Bool)

(declare-fun e!3300385 () Bool)

(assert (=> b!5311183 (=> res!2253148 e!3300385)))

(assert (=> b!5311183 (= res!2253148 (not ((_ is ElementMatch!14963) (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)))))))

(declare-fun e!3300390 () Bool)

(assert (=> b!5311183 (= e!3300390 e!3300385)))

(declare-fun b!5311184 () Bool)

(declare-fun res!2253142 () Bool)

(declare-fun e!3300386 () Bool)

(assert (=> b!5311184 (=> res!2253142 e!3300386)))

(assert (=> b!5311184 (= res!2253142 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5311185 () Bool)

(declare-fun e!3300387 () Bool)

(assert (=> b!5311185 (= e!3300387 (nullable!5132 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860))))))

(declare-fun d!1706683 () Bool)

(declare-fun e!3300384 () Bool)

(assert (=> d!1706683 e!3300384))

(declare-fun c!922595 () Bool)

(assert (=> d!1706683 (= c!922595 ((_ is EmptyExpr!14963) (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860))))))

(declare-fun lt!2170020 () Bool)

(assert (=> d!1706683 (= lt!2170020 e!3300387)))

(declare-fun c!922596 () Bool)

(assert (=> d!1706683 (= c!922596 (isEmpty!33031 s!2326))))

(assert (=> d!1706683 (validRegex!6699 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)))))

(assert (=> d!1706683 (= (matchR!7148 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)) s!2326) lt!2170020)))

(declare-fun b!5311186 () Bool)

(assert (=> b!5311186 (= e!3300390 (not lt!2170020))))

(declare-fun b!5311187 () Bool)

(declare-fun e!3300388 () Bool)

(assert (=> b!5311187 (= e!3300385 e!3300388)))

(declare-fun res!2253144 () Bool)

(assert (=> b!5311187 (=> (not res!2253144) (not e!3300388))))

(assert (=> b!5311187 (= res!2253144 (not lt!2170020))))

(declare-fun b!5311188 () Bool)

(declare-fun res!2253145 () Bool)

(declare-fun e!3300389 () Bool)

(assert (=> b!5311188 (=> (not res!2253145) (not e!3300389))))

(assert (=> b!5311188 (= res!2253145 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5311189 () Bool)

(declare-fun res!2253143 () Bool)

(assert (=> b!5311189 (=> (not res!2253143) (not e!3300389))))

(assert (=> b!5311189 (= res!2253143 (not call!378700))))

(declare-fun b!5311190 () Bool)

(assert (=> b!5311190 (= e!3300388 e!3300386)))

(declare-fun res!2253141 () Bool)

(assert (=> b!5311190 (=> res!2253141 e!3300386)))

(assert (=> b!5311190 (= res!2253141 call!378700)))

(declare-fun b!5311191 () Bool)

(assert (=> b!5311191 (= e!3300386 (not (= (head!11385 s!2326) (c!922305 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860))))))))

(declare-fun b!5311192 () Bool)

(assert (=> b!5311192 (= e!3300384 (= lt!2170020 call!378700))))

(declare-fun b!5311193 () Bool)

(assert (=> b!5311193 (= e!3300387 (matchR!7148 (derivativeStep!4155 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)) (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5311194 () Bool)

(declare-fun res!2253147 () Bool)

(assert (=> b!5311194 (=> res!2253147 e!3300385)))

(assert (=> b!5311194 (= res!2253147 e!3300389)))

(declare-fun res!2253146 () Bool)

(assert (=> b!5311194 (=> (not res!2253146) (not e!3300389))))

(assert (=> b!5311194 (= res!2253146 lt!2170020)))

(declare-fun b!5311195 () Bool)

(assert (=> b!5311195 (= e!3300384 e!3300390)))

(declare-fun c!922597 () Bool)

(assert (=> b!5311195 (= c!922597 ((_ is EmptyLang!14963) (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860))))))

(declare-fun b!5311196 () Bool)

(assert (=> b!5311196 (= e!3300389 (= (head!11385 s!2326) (c!922305 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)))))))

(assert (= (and d!1706683 c!922596) b!5311185))

(assert (= (and d!1706683 (not c!922596)) b!5311193))

(assert (= (and d!1706683 c!922595) b!5311192))

(assert (= (and d!1706683 (not c!922595)) b!5311195))

(assert (= (and b!5311195 c!922597) b!5311186))

(assert (= (and b!5311195 (not c!922597)) b!5311183))

(assert (= (and b!5311183 (not res!2253148)) b!5311194))

(assert (= (and b!5311194 res!2253146) b!5311189))

(assert (= (and b!5311189 res!2253143) b!5311188))

(assert (= (and b!5311188 res!2253145) b!5311196))

(assert (= (and b!5311194 (not res!2253147)) b!5311187))

(assert (= (and b!5311187 res!2253144) b!5311190))

(assert (= (and b!5311190 (not res!2253141)) b!5311184))

(assert (= (and b!5311184 (not res!2253142)) b!5311191))

(assert (= (or b!5311192 b!5311189 b!5311190) bm!378695))

(assert (=> b!5311196 m!6347863))

(assert (=> b!5311184 m!6347870))

(assert (=> b!5311184 m!6347870))

(assert (=> b!5311184 m!6347942))

(assert (=> b!5311193 m!6347863))

(assert (=> b!5311193 m!6347863))

(declare-fun m!6348352 () Bool)

(assert (=> b!5311193 m!6348352))

(assert (=> b!5311193 m!6347870))

(assert (=> b!5311193 m!6348352))

(assert (=> b!5311193 m!6347870))

(declare-fun m!6348354 () Bool)

(assert (=> b!5311193 m!6348354))

(assert (=> d!1706683 m!6347856))

(declare-fun m!6348356 () Bool)

(assert (=> d!1706683 m!6348356))

(assert (=> b!5311191 m!6347863))

(assert (=> b!5311188 m!6347870))

(assert (=> b!5311188 m!6347870))

(assert (=> b!5311188 m!6347942))

(assert (=> bm!378695 m!6347856))

(declare-fun m!6348358 () Bool)

(assert (=> b!5311185 m!6348358))

(assert (=> b!5310287 d!1706683))

(declare-fun d!1706687 () Bool)

(assert (=> d!1706687 (= (matchR!7148 (Concat!23808 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292))) lt!2169860) s!2326) (matchR!7148 (Concat!23808 (regOne!30438 (regOne!30438 r!7292)) (Concat!23808 (regTwo!30438 (regOne!30438 r!7292)) lt!2169860)) s!2326))))

(declare-fun lt!2170027 () Unit!153370)

(declare-fun choose!39735 (Regex!14963 Regex!14963 Regex!14963 List!61189) Unit!153370)

(assert (=> d!1706687 (= lt!2170027 (choose!39735 (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326))))

(declare-fun e!3300407 () Bool)

(assert (=> d!1706687 e!3300407))

(declare-fun res!2253155 () Bool)

(assert (=> d!1706687 (=> (not res!2253155) (not e!3300407))))

(assert (=> d!1706687 (= res!2253155 (validRegex!6699 (regOne!30438 (regOne!30438 r!7292))))))

(assert (=> d!1706687 (= (lemmaConcatAssociative!4 (regOne!30438 (regOne!30438 r!7292)) (regTwo!30438 (regOne!30438 r!7292)) lt!2169860 s!2326) lt!2170027)))

(declare-fun b!5311221 () Bool)

(declare-fun res!2253156 () Bool)

(assert (=> b!5311221 (=> (not res!2253156) (not e!3300407))))

(assert (=> b!5311221 (= res!2253156 (validRegex!6699 (regTwo!30438 (regOne!30438 r!7292))))))

(declare-fun b!5311223 () Bool)

(assert (=> b!5311223 (= e!3300407 (validRegex!6699 lt!2169860))))

(assert (= (and d!1706687 res!2253155) b!5311221))

(assert (= (and b!5311221 res!2253156) b!5311223))

(declare-fun m!6348376 () Bool)

(assert (=> d!1706687 m!6348376))

(assert (=> d!1706687 m!6347464))

(declare-fun m!6348378 () Bool)

(assert (=> d!1706687 m!6348378))

(assert (=> d!1706687 m!6348178))

(assert (=> b!5311221 m!6348126))

(declare-fun m!6348380 () Bool)

(assert (=> b!5311223 m!6348380))

(assert (=> b!5310287 d!1706687))

(declare-fun bm!378708 () Bool)

(declare-fun call!378713 () Bool)

(assert (=> bm!378708 (= call!378713 (isEmpty!33031 s!2326))))

(declare-fun b!5311233 () Bool)

(declare-fun res!2253164 () Bool)

(declare-fun e!3300411 () Bool)

(assert (=> b!5311233 (=> res!2253164 e!3300411)))

(assert (=> b!5311233 (= res!2253164 (not ((_ is ElementMatch!14963) lt!2169825)))))

(declare-fun e!3300416 () Bool)

(assert (=> b!5311233 (= e!3300416 e!3300411)))

(declare-fun b!5311234 () Bool)

(declare-fun res!2253158 () Bool)

(declare-fun e!3300412 () Bool)

(assert (=> b!5311234 (=> res!2253158 e!3300412)))

(assert (=> b!5311234 (= res!2253158 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5311235 () Bool)

(declare-fun e!3300413 () Bool)

(assert (=> b!5311235 (= e!3300413 (nullable!5132 lt!2169825))))

(declare-fun d!1706695 () Bool)

(declare-fun e!3300410 () Bool)

(assert (=> d!1706695 e!3300410))

(declare-fun c!922613 () Bool)

(assert (=> d!1706695 (= c!922613 ((_ is EmptyExpr!14963) lt!2169825))))

(declare-fun lt!2170028 () Bool)

(assert (=> d!1706695 (= lt!2170028 e!3300413)))

(declare-fun c!922614 () Bool)

(assert (=> d!1706695 (= c!922614 (isEmpty!33031 s!2326))))

(assert (=> d!1706695 (validRegex!6699 lt!2169825)))

(assert (=> d!1706695 (= (matchR!7148 lt!2169825 s!2326) lt!2170028)))

(declare-fun b!5311236 () Bool)

(assert (=> b!5311236 (= e!3300416 (not lt!2170028))))

(declare-fun b!5311237 () Bool)

(declare-fun e!3300414 () Bool)

(assert (=> b!5311237 (= e!3300411 e!3300414)))

(declare-fun res!2253160 () Bool)

(assert (=> b!5311237 (=> (not res!2253160) (not e!3300414))))

(assert (=> b!5311237 (= res!2253160 (not lt!2170028))))

(declare-fun b!5311238 () Bool)

(declare-fun res!2253161 () Bool)

(declare-fun e!3300415 () Bool)

(assert (=> b!5311238 (=> (not res!2253161) (not e!3300415))))

(assert (=> b!5311238 (= res!2253161 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5311239 () Bool)

(declare-fun res!2253159 () Bool)

(assert (=> b!5311239 (=> (not res!2253159) (not e!3300415))))

(assert (=> b!5311239 (= res!2253159 (not call!378713))))

(declare-fun b!5311240 () Bool)

(assert (=> b!5311240 (= e!3300414 e!3300412)))

(declare-fun res!2253157 () Bool)

(assert (=> b!5311240 (=> res!2253157 e!3300412)))

(assert (=> b!5311240 (= res!2253157 call!378713)))

(declare-fun b!5311241 () Bool)

(assert (=> b!5311241 (= e!3300412 (not (= (head!11385 s!2326) (c!922305 lt!2169825))))))

(declare-fun b!5311242 () Bool)

(assert (=> b!5311242 (= e!3300410 (= lt!2170028 call!378713))))

(declare-fun b!5311243 () Bool)

(assert (=> b!5311243 (= e!3300413 (matchR!7148 (derivativeStep!4155 lt!2169825 (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5311244 () Bool)

(declare-fun res!2253163 () Bool)

(assert (=> b!5311244 (=> res!2253163 e!3300411)))

(assert (=> b!5311244 (= res!2253163 e!3300415)))

(declare-fun res!2253162 () Bool)

(assert (=> b!5311244 (=> (not res!2253162) (not e!3300415))))

(assert (=> b!5311244 (= res!2253162 lt!2170028)))

(declare-fun b!5311245 () Bool)

(assert (=> b!5311245 (= e!3300410 e!3300416)))

(declare-fun c!922615 () Bool)

(assert (=> b!5311245 (= c!922615 ((_ is EmptyLang!14963) lt!2169825))))

(declare-fun b!5311246 () Bool)

(assert (=> b!5311246 (= e!3300415 (= (head!11385 s!2326) (c!922305 lt!2169825)))))

(assert (= (and d!1706695 c!922614) b!5311235))

(assert (= (and d!1706695 (not c!922614)) b!5311243))

(assert (= (and d!1706695 c!922613) b!5311242))

(assert (= (and d!1706695 (not c!922613)) b!5311245))

(assert (= (and b!5311245 c!922615) b!5311236))

(assert (= (and b!5311245 (not c!922615)) b!5311233))

(assert (= (and b!5311233 (not res!2253164)) b!5311244))

(assert (= (and b!5311244 res!2253162) b!5311239))

(assert (= (and b!5311239 res!2253159) b!5311238))

(assert (= (and b!5311238 res!2253161) b!5311246))

(assert (= (and b!5311244 (not res!2253163)) b!5311237))

(assert (= (and b!5311237 res!2253160) b!5311240))

(assert (= (and b!5311240 (not res!2253157)) b!5311234))

(assert (= (and b!5311234 (not res!2253158)) b!5311241))

(assert (= (or b!5311242 b!5311239 b!5311240) bm!378708))

(assert (=> b!5311246 m!6347863))

(assert (=> b!5311234 m!6347870))

(assert (=> b!5311234 m!6347870))

(assert (=> b!5311234 m!6347942))

(assert (=> b!5311243 m!6347863))

(assert (=> b!5311243 m!6347863))

(declare-fun m!6348390 () Bool)

(assert (=> b!5311243 m!6348390))

(assert (=> b!5311243 m!6347870))

(assert (=> b!5311243 m!6348390))

(assert (=> b!5311243 m!6347870))

(declare-fun m!6348392 () Bool)

(assert (=> b!5311243 m!6348392))

(assert (=> d!1706695 m!6347856))

(assert (=> d!1706695 m!6347462))

(assert (=> b!5311241 m!6347863))

(assert (=> b!5311238 m!6347870))

(assert (=> b!5311238 m!6347870))

(assert (=> b!5311238 m!6347942))

(assert (=> bm!378708 m!6347856))

(declare-fun m!6348394 () Bool)

(assert (=> b!5311235 m!6348394))

(assert (=> b!5310266 d!1706695))

(declare-fun bm!378712 () Bool)

(declare-fun call!378717 () Bool)

(assert (=> bm!378712 (= call!378717 (isEmpty!33031 s!2326))))

(declare-fun b!5311256 () Bool)

(declare-fun res!2253177 () Bool)

(declare-fun e!3300425 () Bool)

(assert (=> b!5311256 (=> res!2253177 e!3300425)))

(assert (=> b!5311256 (= res!2253177 (not ((_ is ElementMatch!14963) (Concat!23808 lt!2169847 (regTwo!30438 r!7292)))))))

(declare-fun e!3300430 () Bool)

(assert (=> b!5311256 (= e!3300430 e!3300425)))

(declare-fun b!5311257 () Bool)

(declare-fun res!2253171 () Bool)

(declare-fun e!3300426 () Bool)

(assert (=> b!5311257 (=> res!2253171 e!3300426)))

(assert (=> b!5311257 (= res!2253171 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5311258 () Bool)

(declare-fun e!3300427 () Bool)

(assert (=> b!5311258 (= e!3300427 (nullable!5132 (Concat!23808 lt!2169847 (regTwo!30438 r!7292))))))

(declare-fun d!1706699 () Bool)

(declare-fun e!3300424 () Bool)

(assert (=> d!1706699 e!3300424))

(declare-fun c!922618 () Bool)

(assert (=> d!1706699 (= c!922618 ((_ is EmptyExpr!14963) (Concat!23808 lt!2169847 (regTwo!30438 r!7292))))))

(declare-fun lt!2170029 () Bool)

(assert (=> d!1706699 (= lt!2170029 e!3300427)))

(declare-fun c!922619 () Bool)

(assert (=> d!1706699 (= c!922619 (isEmpty!33031 s!2326))))

(assert (=> d!1706699 (validRegex!6699 (Concat!23808 lt!2169847 (regTwo!30438 r!7292)))))

(assert (=> d!1706699 (= (matchR!7148 (Concat!23808 lt!2169847 (regTwo!30438 r!7292)) s!2326) lt!2170029)))

(declare-fun b!5311259 () Bool)

(assert (=> b!5311259 (= e!3300430 (not lt!2170029))))

(declare-fun b!5311260 () Bool)

(declare-fun e!3300428 () Bool)

(assert (=> b!5311260 (= e!3300425 e!3300428)))

(declare-fun res!2253173 () Bool)

(assert (=> b!5311260 (=> (not res!2253173) (not e!3300428))))

(assert (=> b!5311260 (= res!2253173 (not lt!2170029))))

(declare-fun b!5311261 () Bool)

(declare-fun res!2253174 () Bool)

(declare-fun e!3300429 () Bool)

(assert (=> b!5311261 (=> (not res!2253174) (not e!3300429))))

(assert (=> b!5311261 (= res!2253174 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5311262 () Bool)

(declare-fun res!2253172 () Bool)

(assert (=> b!5311262 (=> (not res!2253172) (not e!3300429))))

(assert (=> b!5311262 (= res!2253172 (not call!378717))))

(declare-fun b!5311263 () Bool)

(assert (=> b!5311263 (= e!3300428 e!3300426)))

(declare-fun res!2253170 () Bool)

(assert (=> b!5311263 (=> res!2253170 e!3300426)))

(assert (=> b!5311263 (= res!2253170 call!378717)))

(declare-fun b!5311264 () Bool)

(assert (=> b!5311264 (= e!3300426 (not (= (head!11385 s!2326) (c!922305 (Concat!23808 lt!2169847 (regTwo!30438 r!7292))))))))

(declare-fun b!5311265 () Bool)

(assert (=> b!5311265 (= e!3300424 (= lt!2170029 call!378717))))

(declare-fun b!5311266 () Bool)

(assert (=> b!5311266 (= e!3300427 (matchR!7148 (derivativeStep!4155 (Concat!23808 lt!2169847 (regTwo!30438 r!7292)) (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5311267 () Bool)

(declare-fun res!2253176 () Bool)

(assert (=> b!5311267 (=> res!2253176 e!3300425)))

(assert (=> b!5311267 (= res!2253176 e!3300429)))

(declare-fun res!2253175 () Bool)

(assert (=> b!5311267 (=> (not res!2253175) (not e!3300429))))

(assert (=> b!5311267 (= res!2253175 lt!2170029)))

(declare-fun b!5311268 () Bool)

(assert (=> b!5311268 (= e!3300424 e!3300430)))

(declare-fun c!922620 () Bool)

(assert (=> b!5311268 (= c!922620 ((_ is EmptyLang!14963) (Concat!23808 lt!2169847 (regTwo!30438 r!7292))))))

(declare-fun b!5311269 () Bool)

(assert (=> b!5311269 (= e!3300429 (= (head!11385 s!2326) (c!922305 (Concat!23808 lt!2169847 (regTwo!30438 r!7292)))))))

(assert (= (and d!1706699 c!922619) b!5311258))

(assert (= (and d!1706699 (not c!922619)) b!5311266))

(assert (= (and d!1706699 c!922618) b!5311265))

(assert (= (and d!1706699 (not c!922618)) b!5311268))

(assert (= (and b!5311268 c!922620) b!5311259))

(assert (= (and b!5311268 (not c!922620)) b!5311256))

(assert (= (and b!5311256 (not res!2253177)) b!5311267))

(assert (= (and b!5311267 res!2253175) b!5311262))

(assert (= (and b!5311262 res!2253172) b!5311261))

(assert (= (and b!5311261 res!2253174) b!5311269))

(assert (= (and b!5311267 (not res!2253176)) b!5311260))

(assert (= (and b!5311260 res!2253173) b!5311263))

(assert (= (and b!5311263 (not res!2253170)) b!5311257))

(assert (= (and b!5311257 (not res!2253171)) b!5311264))

(assert (= (or b!5311265 b!5311262 b!5311263) bm!378712))

(assert (=> b!5311269 m!6347863))

(assert (=> b!5311257 m!6347870))

(assert (=> b!5311257 m!6347870))

(assert (=> b!5311257 m!6347942))

(assert (=> b!5311266 m!6347863))

(assert (=> b!5311266 m!6347863))

(declare-fun m!6348402 () Bool)

(assert (=> b!5311266 m!6348402))

(assert (=> b!5311266 m!6347870))

(assert (=> b!5311266 m!6348402))

(assert (=> b!5311266 m!6347870))

(declare-fun m!6348404 () Bool)

(assert (=> b!5311266 m!6348404))

(assert (=> d!1706699 m!6347856))

(declare-fun m!6348406 () Bool)

(assert (=> d!1706699 m!6348406))

(assert (=> b!5311264 m!6347863))

(assert (=> b!5311261 m!6347870))

(assert (=> b!5311261 m!6347870))

(assert (=> b!5311261 m!6347942))

(assert (=> bm!378712 m!6347856))

(declare-fun m!6348408 () Bool)

(assert (=> b!5311258 m!6348408))

(assert (=> b!5310285 d!1706699))

(declare-fun d!1706703 () Bool)

(assert (=> d!1706703 (= (isEmpty!33028 (t!374393 (exprs!4847 (h!67514 zl!343)))) ((_ is Nil!61064) (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(assert (=> b!5310284 d!1706703))

(declare-fun d!1706707 () Bool)

(assert (=> d!1706707 (= (flatMap!690 lt!2169831 lambda!270467) (choose!39721 lt!2169831 lambda!270467))))

(declare-fun bs!1231528 () Bool)

(assert (= bs!1231528 d!1706707))

(declare-fun m!6348418 () Bool)

(assert (=> bs!1231528 m!6348418))

(assert (=> b!5310252 d!1706707))

(declare-fun d!1706709 () Bool)

(assert (=> d!1706709 (= (flatMap!690 lt!2169831 lambda!270467) (dynLambda!24136 lambda!270467 lt!2169872))))

(declare-fun lt!2170031 () Unit!153370)

(assert (=> d!1706709 (= lt!2170031 (choose!39723 lt!2169831 lt!2169872 lambda!270467))))

(assert (=> d!1706709 (= lt!2169831 (store ((as const (Array Context!8694 Bool)) false) lt!2169872 true))))

(assert (=> d!1706709 (= (lemmaFlatMapOnSingletonSet!222 lt!2169831 lt!2169872 lambda!270467) lt!2170031)))

(declare-fun b_lambda!204415 () Bool)

(assert (=> (not b_lambda!204415) (not d!1706709)))

(declare-fun bs!1231529 () Bool)

(assert (= bs!1231529 d!1706709))

(assert (=> bs!1231529 m!6347346))

(declare-fun m!6348420 () Bool)

(assert (=> bs!1231529 m!6348420))

(declare-fun m!6348422 () Bool)

(assert (=> bs!1231529 m!6348422))

(assert (=> bs!1231529 m!6347344))

(assert (=> b!5310252 d!1706709))

(assert (=> b!5310252 d!1706429))

(declare-fun b!5311284 () Bool)

(declare-fun e!3300440 () (InoxSet Context!8694))

(declare-fun e!3300439 () (InoxSet Context!8694))

(assert (=> b!5311284 (= e!3300440 e!3300439)))

(declare-fun c!922625 () Bool)

(assert (=> b!5311284 (= c!922625 ((_ is Cons!61064) (exprs!4847 lt!2169872)))))

(declare-fun d!1706711 () Bool)

(declare-fun c!922624 () Bool)

(declare-fun e!3300438 () Bool)

(assert (=> d!1706711 (= c!922624 e!3300438)))

(declare-fun res!2253186 () Bool)

(assert (=> d!1706711 (=> (not res!2253186) (not e!3300438))))

(assert (=> d!1706711 (= res!2253186 ((_ is Cons!61064) (exprs!4847 lt!2169872)))))

(assert (=> d!1706711 (= (derivationStepZipperUp!335 lt!2169872 (h!67513 s!2326)) e!3300440)))

(declare-fun bm!378714 () Bool)

(declare-fun call!378719 () (InoxSet Context!8694))

(assert (=> bm!378714 (= call!378719 (derivationStepZipperDown!411 (h!67512 (exprs!4847 lt!2169872)) (Context!8695 (t!374393 (exprs!4847 lt!2169872))) (h!67513 s!2326)))))

(declare-fun b!5311285 () Bool)

(assert (=> b!5311285 (= e!3300440 ((_ map or) call!378719 (derivationStepZipperUp!335 (Context!8695 (t!374393 (exprs!4847 lt!2169872))) (h!67513 s!2326))))))

(declare-fun b!5311286 () Bool)

(assert (=> b!5311286 (= e!3300439 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5311287 () Bool)

(assert (=> b!5311287 (= e!3300438 (nullable!5132 (h!67512 (exprs!4847 lt!2169872))))))

(declare-fun b!5311288 () Bool)

(assert (=> b!5311288 (= e!3300439 call!378719)))

(assert (= (and d!1706711 res!2253186) b!5311287))

(assert (= (and d!1706711 c!922624) b!5311285))

(assert (= (and d!1706711 (not c!922624)) b!5311284))

(assert (= (and b!5311284 c!922625) b!5311288))

(assert (= (and b!5311284 (not c!922625)) b!5311286))

(assert (= (or b!5311285 b!5311288) bm!378714))

(declare-fun m!6348424 () Bool)

(assert (=> bm!378714 m!6348424))

(declare-fun m!6348426 () Bool)

(assert (=> b!5311285 m!6348426))

(declare-fun m!6348428 () Bool)

(assert (=> b!5311287 m!6348428))

(assert (=> b!5310252 d!1706711))

(declare-fun bs!1231530 () Bool)

(declare-fun d!1706713 () Bool)

(assert (= bs!1231530 (and d!1706713 b!5310260)))

(declare-fun lambda!270569 () Int)

(assert (=> bs!1231530 (= lambda!270569 lambda!270467)))

(declare-fun bs!1231531 () Bool)

(assert (= bs!1231531 (and d!1706713 d!1706449)))

(assert (=> bs!1231531 (= lambda!270569 lambda!270486)))

(assert (=> d!1706713 true))

(assert (=> d!1706713 (= (derivationStepZipper!1206 lt!2169831 (h!67513 s!2326)) (flatMap!690 lt!2169831 lambda!270569))))

(declare-fun bs!1231532 () Bool)

(assert (= bs!1231532 d!1706713))

(declare-fun m!6348430 () Bool)

(assert (=> bs!1231532 m!6348430))

(assert (=> b!5310252 d!1706713))

(declare-fun b!5311289 () Bool)

(declare-fun lt!2170033 () Unit!153370)

(declare-fun lt!2170034 () Unit!153370)

(assert (=> b!5311289 (= lt!2170033 lt!2170034)))

(assert (=> b!5311289 (= (++!13314 (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326)) s!2326)))

(assert (=> b!5311289 (= lt!2170034 (lemmaMoveElementToOtherListKeepsConcatEq!1729 Nil!61065 (h!67513 s!2326) (t!374394 s!2326) s!2326))))

(declare-fun e!3300443 () Option!15074)

(assert (=> b!5311289 (= e!3300443 (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) (++!13314 Nil!61065 (Cons!61065 (h!67513 s!2326) Nil!61065)) (t!374394 s!2326) s!2326))))

(declare-fun b!5311290 () Bool)

(declare-fun e!3300441 () Bool)

(declare-fun lt!2170032 () Option!15074)

(assert (=> b!5311290 (= e!3300441 (not (isDefined!11777 lt!2170032)))))

(declare-fun b!5311291 () Bool)

(declare-fun e!3300442 () Bool)

(assert (=> b!5311291 (= e!3300442 (matchR!7148 (regTwo!30438 r!7292) s!2326))))

(declare-fun b!5311292 () Bool)

(declare-fun e!3300445 () Option!15074)

(assert (=> b!5311292 (= e!3300445 (Some!15073 (tuple2!64325 Nil!61065 s!2326)))))

(declare-fun b!5311293 () Bool)

(assert (=> b!5311293 (= e!3300443 None!15073)))

(declare-fun b!5311294 () Bool)

(declare-fun res!2253188 () Bool)

(declare-fun e!3300444 () Bool)

(assert (=> b!5311294 (=> (not res!2253188) (not e!3300444))))

(assert (=> b!5311294 (= res!2253188 (matchR!7148 (regTwo!30438 r!7292) (_2!35465 (get!21001 lt!2170032))))))

(declare-fun b!5311295 () Bool)

(assert (=> b!5311295 (= e!3300444 (= (++!13314 (_1!35465 (get!21001 lt!2170032)) (_2!35465 (get!21001 lt!2170032))) s!2326))))

(declare-fun b!5311296 () Bool)

(assert (=> b!5311296 (= e!3300445 e!3300443)))

(declare-fun c!922627 () Bool)

(assert (=> b!5311296 (= c!922627 ((_ is Nil!61065) s!2326))))

(declare-fun d!1706715 () Bool)

(assert (=> d!1706715 e!3300441))

(declare-fun res!2253189 () Bool)

(assert (=> d!1706715 (=> res!2253189 e!3300441)))

(assert (=> d!1706715 (= res!2253189 e!3300444)))

(declare-fun res!2253191 () Bool)

(assert (=> d!1706715 (=> (not res!2253191) (not e!3300444))))

(assert (=> d!1706715 (= res!2253191 (isDefined!11777 lt!2170032))))

(assert (=> d!1706715 (= lt!2170032 e!3300445)))

(declare-fun c!922626 () Bool)

(assert (=> d!1706715 (= c!922626 e!3300442)))

(declare-fun res!2253190 () Bool)

(assert (=> d!1706715 (=> (not res!2253190) (not e!3300442))))

(assert (=> d!1706715 (= res!2253190 (matchR!7148 (regOne!30438 r!7292) Nil!61065))))

(assert (=> d!1706715 (validRegex!6699 (regOne!30438 r!7292))))

(assert (=> d!1706715 (= (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) Nil!61065 s!2326 s!2326) lt!2170032)))

(declare-fun b!5311297 () Bool)

(declare-fun res!2253187 () Bool)

(assert (=> b!5311297 (=> (not res!2253187) (not e!3300444))))

(assert (=> b!5311297 (= res!2253187 (matchR!7148 (regOne!30438 r!7292) (_1!35465 (get!21001 lt!2170032))))))

(assert (= (and d!1706715 res!2253190) b!5311291))

(assert (= (and d!1706715 c!922626) b!5311292))

(assert (= (and d!1706715 (not c!922626)) b!5311296))

(assert (= (and b!5311296 c!922627) b!5311293))

(assert (= (and b!5311296 (not c!922627)) b!5311289))

(assert (= (and d!1706715 res!2253191) b!5311297))

(assert (= (and b!5311297 res!2253187) b!5311294))

(assert (= (and b!5311294 res!2253188) b!5311295))

(assert (= (and d!1706715 (not res!2253189)) b!5311290))

(declare-fun m!6348432 () Bool)

(assert (=> b!5311297 m!6348432))

(declare-fun m!6348434 () Bool)

(assert (=> b!5311297 m!6348434))

(declare-fun m!6348436 () Bool)

(assert (=> b!5311290 m!6348436))

(assert (=> b!5311294 m!6348432))

(declare-fun m!6348438 () Bool)

(assert (=> b!5311294 m!6348438))

(assert (=> b!5311289 m!6348234))

(assert (=> b!5311289 m!6348234))

(assert (=> b!5311289 m!6348236))

(assert (=> b!5311289 m!6348238))

(assert (=> b!5311289 m!6348234))

(declare-fun m!6348440 () Bool)

(assert (=> b!5311289 m!6348440))

(assert (=> d!1706715 m!6348436))

(declare-fun m!6348442 () Bool)

(assert (=> d!1706715 m!6348442))

(declare-fun m!6348444 () Bool)

(assert (=> d!1706715 m!6348444))

(declare-fun m!6348446 () Bool)

(assert (=> b!5311291 m!6348446))

(assert (=> b!5311295 m!6348432))

(declare-fun m!6348448 () Bool)

(assert (=> b!5311295 m!6348448))

(assert (=> b!5310250 d!1706715))

(declare-fun d!1706717 () Bool)

(assert (=> d!1706717 (= (Exists!2144 lambda!270465) (choose!39726 lambda!270465))))

(declare-fun bs!1231533 () Bool)

(assert (= bs!1231533 d!1706717))

(declare-fun m!6348450 () Bool)

(assert (=> bs!1231533 m!6348450))

(assert (=> b!5310250 d!1706717))

(declare-fun d!1706719 () Bool)

(assert (=> d!1706719 (= (Exists!2144 lambda!270466) (choose!39726 lambda!270466))))

(declare-fun bs!1231534 () Bool)

(assert (= bs!1231534 d!1706719))

(declare-fun m!6348452 () Bool)

(assert (=> bs!1231534 m!6348452))

(assert (=> b!5310250 d!1706719))

(declare-fun bs!1231535 () Bool)

(declare-fun d!1706721 () Bool)

(assert (= bs!1231535 (and d!1706721 b!5310894)))

(declare-fun lambda!270570 () Int)

(assert (=> bs!1231535 (not (= lambda!270570 lambda!270526))))

(declare-fun bs!1231536 () Bool)

(assert (= bs!1231536 (and d!1706721 d!1706631)))

(assert (=> bs!1231536 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270570 lambda!270547))))

(declare-fun bs!1231537 () Bool)

(assert (= bs!1231537 (and d!1706721 b!5310248)))

(assert (=> bs!1231537 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270570 lambda!270468))))

(assert (=> bs!1231537 (not (= lambda!270570 lambda!270471))))

(assert (=> bs!1231537 (not (= lambda!270570 lambda!270469))))

(declare-fun bs!1231538 () Bool)

(assert (= bs!1231538 (and d!1706721 d!1706655)))

(assert (=> bs!1231538 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270570 lambda!270552))))

(assert (=> bs!1231537 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270570 lambda!270470))))

(declare-fun bs!1231539 () Bool)

(assert (= bs!1231539 (and d!1706721 b!5310250)))

(assert (=> bs!1231539 (not (= lambda!270570 lambda!270466))))

(assert (=> bs!1231539 (= lambda!270570 lambda!270465)))

(declare-fun bs!1231540 () Bool)

(assert (= bs!1231540 (and d!1706721 b!5310838)))

(assert (=> bs!1231540 (not (= lambda!270570 lambda!270525))))

(declare-fun bs!1231541 () Bool)

(assert (= bs!1231541 (and d!1706721 d!1706613)))

(assert (=> bs!1231541 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270570 lambda!270543))))

(declare-fun bs!1231542 () Bool)

(assert (= bs!1231542 (and d!1706721 b!5311130)))

(assert (=> bs!1231542 (not (= lambda!270570 lambda!270564))))

(declare-fun bs!1231543 () Bool)

(assert (= bs!1231543 (and d!1706721 b!5310896)))

(assert (=> bs!1231543 (not (= lambda!270570 lambda!270530))))

(declare-fun bs!1231544 () Bool)

(assert (= bs!1231544 (and d!1706721 d!1706591)))

(assert (=> bs!1231544 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270570 lambda!270537))))

(assert (=> bs!1231538 (not (= lambda!270570 lambda!270553))))

(assert (=> bs!1231541 (not (= lambda!270570 lambda!270544))))

(declare-fun bs!1231545 () Bool)

(assert (= bs!1231545 (and d!1706721 b!5311128)))

(assert (=> bs!1231545 (not (= lambda!270570 lambda!270559))))

(declare-fun bs!1231546 () Bool)

(assert (= bs!1231546 (and d!1706721 b!5310836)))

(assert (=> bs!1231546 (not (= lambda!270570 lambda!270524))))

(assert (=> d!1706721 true))

(assert (=> d!1706721 true))

(assert (=> d!1706721 true))

(assert (=> d!1706721 (= (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) Nil!61065 s!2326 s!2326)) (Exists!2144 lambda!270570))))

(declare-fun lt!2170037 () Unit!153370)

(assert (=> d!1706721 (= lt!2170037 (choose!39729 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326))))

(assert (=> d!1706721 (validRegex!6699 (regOne!30438 r!7292))))

(assert (=> d!1706721 (= (lemmaFindConcatSeparationEquivalentToExists!1252 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326) lt!2170037)))

(declare-fun bs!1231547 () Bool)

(assert (= bs!1231547 d!1706721))

(assert (=> bs!1231547 m!6347356))

(assert (=> bs!1231547 m!6347358))

(assert (=> bs!1231547 m!6347356))

(declare-fun m!6348462 () Bool)

(assert (=> bs!1231547 m!6348462))

(declare-fun m!6348464 () Bool)

(assert (=> bs!1231547 m!6348464))

(assert (=> bs!1231547 m!6348444))

(assert (=> b!5310250 d!1706721))

(declare-fun bs!1231548 () Bool)

(declare-fun d!1706723 () Bool)

(assert (= bs!1231548 (and d!1706723 b!5310894)))

(declare-fun lambda!270571 () Int)

(assert (=> bs!1231548 (not (= lambda!270571 lambda!270526))))

(declare-fun bs!1231549 () Bool)

(assert (= bs!1231549 (and d!1706723 d!1706631)))

(assert (=> bs!1231549 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270571 lambda!270547))))

(declare-fun bs!1231550 () Bool)

(assert (= bs!1231550 (and d!1706723 b!5310248)))

(assert (=> bs!1231550 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270571 lambda!270468))))

(assert (=> bs!1231550 (not (= lambda!270571 lambda!270471))))

(assert (=> bs!1231550 (not (= lambda!270571 lambda!270469))))

(declare-fun bs!1231551 () Bool)

(assert (= bs!1231551 (and d!1706723 d!1706655)))

(assert (=> bs!1231551 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270571 lambda!270552))))

(assert (=> bs!1231550 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270571 lambda!270470))))

(declare-fun bs!1231552 () Bool)

(assert (= bs!1231552 (and d!1706723 d!1706721)))

(assert (=> bs!1231552 (= lambda!270571 lambda!270570)))

(declare-fun bs!1231553 () Bool)

(assert (= bs!1231553 (and d!1706723 b!5310250)))

(assert (=> bs!1231553 (not (= lambda!270571 lambda!270466))))

(assert (=> bs!1231553 (= lambda!270571 lambda!270465)))

(declare-fun bs!1231554 () Bool)

(assert (= bs!1231554 (and d!1706723 b!5310838)))

(assert (=> bs!1231554 (not (= lambda!270571 lambda!270525))))

(declare-fun bs!1231555 () Bool)

(assert (= bs!1231555 (and d!1706723 d!1706613)))

(assert (=> bs!1231555 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270571 lambda!270543))))

(declare-fun bs!1231556 () Bool)

(assert (= bs!1231556 (and d!1706723 b!5311130)))

(assert (=> bs!1231556 (not (= lambda!270571 lambda!270564))))

(declare-fun bs!1231557 () Bool)

(assert (= bs!1231557 (and d!1706723 b!5310896)))

(assert (=> bs!1231557 (not (= lambda!270571 lambda!270530))))

(declare-fun bs!1231558 () Bool)

(assert (= bs!1231558 (and d!1706723 d!1706591)))

(assert (=> bs!1231558 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270571 lambda!270537))))

(assert (=> bs!1231551 (not (= lambda!270571 lambda!270553))))

(assert (=> bs!1231555 (not (= lambda!270571 lambda!270544))))

(declare-fun bs!1231559 () Bool)

(assert (= bs!1231559 (and d!1706723 b!5311128)))

(assert (=> bs!1231559 (not (= lambda!270571 lambda!270559))))

(declare-fun bs!1231560 () Bool)

(assert (= bs!1231560 (and d!1706723 b!5310836)))

(assert (=> bs!1231560 (not (= lambda!270571 lambda!270524))))

(assert (=> d!1706723 true))

(assert (=> d!1706723 true))

(assert (=> d!1706723 true))

(declare-fun lambda!270572 () Int)

(assert (=> bs!1231548 (not (= lambda!270572 lambda!270526))))

(assert (=> bs!1231549 (not (= lambda!270572 lambda!270547))))

(assert (=> bs!1231550 (not (= lambda!270572 lambda!270468))))

(assert (=> bs!1231550 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270572 lambda!270471))))

(assert (=> bs!1231550 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270572 lambda!270469))))

(assert (=> bs!1231551 (not (= lambda!270572 lambda!270552))))

(assert (=> bs!1231550 (not (= lambda!270572 lambda!270470))))

(assert (=> bs!1231552 (not (= lambda!270572 lambda!270570))))

(assert (=> bs!1231553 (= lambda!270572 lambda!270466)))

(declare-fun bs!1231564 () Bool)

(assert (= bs!1231564 d!1706723))

(assert (=> bs!1231564 (not (= lambda!270572 lambda!270571))))

(assert (=> bs!1231553 (not (= lambda!270572 lambda!270465))))

(assert (=> bs!1231554 (= (and (= (regOne!30438 r!7292) (regOne!30438 lt!2169855)) (= (regTwo!30438 r!7292) (regTwo!30438 lt!2169855))) (= lambda!270572 lambda!270525))))

(assert (=> bs!1231555 (not (= lambda!270572 lambda!270543))))

(assert (=> bs!1231556 (= lambda!270572 lambda!270564)))

(assert (=> bs!1231557 (= (and (= (regOne!30438 r!7292) (regOne!30438 lt!2169848)) (= (regTwo!30438 r!7292) (regTwo!30438 lt!2169848))) (= lambda!270572 lambda!270530))))

(assert (=> bs!1231558 (not (= lambda!270572 lambda!270537))))

(assert (=> bs!1231551 (= (and (= (regOne!30438 r!7292) (regTwo!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169860)) (= lambda!270572 lambda!270553))))

(assert (=> bs!1231555 (= (and (= (regOne!30438 r!7292) (regOne!30438 (regOne!30438 r!7292))) (= (regTwo!30438 r!7292) lt!2169855)) (= lambda!270572 lambda!270544))))

(assert (=> bs!1231559 (not (= lambda!270572 lambda!270559))))

(assert (=> bs!1231560 (not (= lambda!270572 lambda!270524))))

(assert (=> d!1706723 true))

(assert (=> d!1706723 true))

(assert (=> d!1706723 true))

(assert (=> d!1706723 (= (Exists!2144 lambda!270571) (Exists!2144 lambda!270572))))

(declare-fun lt!2170039 () Unit!153370)

(assert (=> d!1706723 (= lt!2170039 (choose!39731 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326))))

(assert (=> d!1706723 (validRegex!6699 (regOne!30438 r!7292))))

(assert (=> d!1706723 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!798 (regOne!30438 r!7292) (regTwo!30438 r!7292) s!2326) lt!2170039)))

(declare-fun m!6348468 () Bool)

(assert (=> bs!1231564 m!6348468))

(declare-fun m!6348470 () Bool)

(assert (=> bs!1231564 m!6348470))

(declare-fun m!6348472 () Bool)

(assert (=> bs!1231564 m!6348472))

(assert (=> bs!1231564 m!6348444))

(assert (=> b!5310250 d!1706723))

(declare-fun d!1706731 () Bool)

(assert (=> d!1706731 (= (isDefined!11777 (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) Nil!61065 s!2326 s!2326)) (not (isEmpty!33032 (findConcatSeparation!1488 (regOne!30438 r!7292) (regTwo!30438 r!7292) Nil!61065 s!2326 s!2326))))))

(declare-fun bs!1231565 () Bool)

(assert (= bs!1231565 d!1706731))

(assert (=> bs!1231565 m!6347356))

(declare-fun m!6348474 () Bool)

(assert (=> bs!1231565 m!6348474))

(assert (=> b!5310250 d!1706731))

(declare-fun bm!378715 () Bool)

(declare-fun call!378720 () Bool)

(assert (=> bm!378715 (= call!378720 (isEmpty!33031 s!2326))))

(declare-fun b!5311358 () Bool)

(declare-fun res!2253205 () Bool)

(declare-fun e!3300473 () Bool)

(assert (=> b!5311358 (=> res!2253205 e!3300473)))

(assert (=> b!5311358 (= res!2253205 (not ((_ is ElementMatch!14963) (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)))))))

(declare-fun e!3300478 () Bool)

(assert (=> b!5311358 (= e!3300478 e!3300473)))

(declare-fun b!5311359 () Bool)

(declare-fun res!2253199 () Bool)

(declare-fun e!3300474 () Bool)

(assert (=> b!5311359 (=> res!2253199 e!3300474)))

(assert (=> b!5311359 (= res!2253199 (not (isEmpty!33031 (tail!10482 s!2326))))))

(declare-fun b!5311360 () Bool)

(declare-fun e!3300475 () Bool)

(assert (=> b!5311360 (= e!3300475 (nullable!5132 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292))))))

(declare-fun d!1706733 () Bool)

(declare-fun e!3300472 () Bool)

(assert (=> d!1706733 e!3300472))

(declare-fun c!922628 () Bool)

(assert (=> d!1706733 (= c!922628 ((_ is EmptyExpr!14963) (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292))))))

(declare-fun lt!2170040 () Bool)

(assert (=> d!1706733 (= lt!2170040 e!3300475)))

(declare-fun c!922629 () Bool)

(assert (=> d!1706733 (= c!922629 (isEmpty!33031 s!2326))))

(assert (=> d!1706733 (validRegex!6699 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)))))

(assert (=> d!1706733 (= (matchR!7148 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)) s!2326) lt!2170040)))

(declare-fun b!5311361 () Bool)

(assert (=> b!5311361 (= e!3300478 (not lt!2170040))))

(declare-fun b!5311362 () Bool)

(declare-fun e!3300476 () Bool)

(assert (=> b!5311362 (= e!3300473 e!3300476)))

(declare-fun res!2253201 () Bool)

(assert (=> b!5311362 (=> (not res!2253201) (not e!3300476))))

(assert (=> b!5311362 (= res!2253201 (not lt!2170040))))

(declare-fun b!5311363 () Bool)

(declare-fun res!2253202 () Bool)

(declare-fun e!3300477 () Bool)

(assert (=> b!5311363 (=> (not res!2253202) (not e!3300477))))

(assert (=> b!5311363 (= res!2253202 (isEmpty!33031 (tail!10482 s!2326)))))

(declare-fun b!5311364 () Bool)

(declare-fun res!2253200 () Bool)

(assert (=> b!5311364 (=> (not res!2253200) (not e!3300477))))

(assert (=> b!5311364 (= res!2253200 (not call!378720))))

(declare-fun b!5311365 () Bool)

(assert (=> b!5311365 (= e!3300476 e!3300474)))

(declare-fun res!2253198 () Bool)

(assert (=> b!5311365 (=> res!2253198 e!3300474)))

(assert (=> b!5311365 (= res!2253198 call!378720)))

(declare-fun b!5311366 () Bool)

(assert (=> b!5311366 (= e!3300474 (not (= (head!11385 s!2326) (c!922305 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292))))))))

(declare-fun b!5311367 () Bool)

(assert (=> b!5311367 (= e!3300472 (= lt!2170040 call!378720))))

(declare-fun b!5311368 () Bool)

(assert (=> b!5311368 (= e!3300475 (matchR!7148 (derivativeStep!4155 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)) (head!11385 s!2326)) (tail!10482 s!2326)))))

(declare-fun b!5311369 () Bool)

(declare-fun res!2253204 () Bool)

(assert (=> b!5311369 (=> res!2253204 e!3300473)))

(assert (=> b!5311369 (= res!2253204 e!3300477)))

(declare-fun res!2253203 () Bool)

(assert (=> b!5311369 (=> (not res!2253203) (not e!3300477))))

(assert (=> b!5311369 (= res!2253203 lt!2170040)))

(declare-fun b!5311370 () Bool)

(assert (=> b!5311370 (= e!3300472 e!3300478)))

(declare-fun c!922630 () Bool)

(assert (=> b!5311370 (= c!922630 ((_ is EmptyLang!14963) (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292))))))

(declare-fun b!5311371 () Bool)

(assert (=> b!5311371 (= e!3300477 (= (head!11385 s!2326) (c!922305 (Concat!23808 (regOne!30438 r!7292) (regTwo!30438 r!7292)))))))

(assert (= (and d!1706733 c!922629) b!5311360))

(assert (= (and d!1706733 (not c!922629)) b!5311368))

(assert (= (and d!1706733 c!922628) b!5311367))

(assert (= (and d!1706733 (not c!922628)) b!5311370))

(assert (= (and b!5311370 c!922630) b!5311361))

(assert (= (and b!5311370 (not c!922630)) b!5311358))

(assert (= (and b!5311358 (not res!2253205)) b!5311369))

(assert (= (and b!5311369 res!2253203) b!5311364))

(assert (= (and b!5311364 res!2253200) b!5311363))

(assert (= (and b!5311363 res!2253202) b!5311371))

(assert (= (and b!5311369 (not res!2253204)) b!5311362))

(assert (= (and b!5311362 res!2253201) b!5311365))

(assert (= (and b!5311365 (not res!2253198)) b!5311359))

(assert (= (and b!5311359 (not res!2253199)) b!5311366))

(assert (= (or b!5311367 b!5311364 b!5311365) bm!378715))

(assert (=> b!5311371 m!6347863))

(assert (=> b!5311359 m!6347870))

(assert (=> b!5311359 m!6347870))

(assert (=> b!5311359 m!6347942))

(assert (=> b!5311368 m!6347863))

(assert (=> b!5311368 m!6347863))

(declare-fun m!6348476 () Bool)

(assert (=> b!5311368 m!6348476))

(assert (=> b!5311368 m!6347870))

(assert (=> b!5311368 m!6348476))

(assert (=> b!5311368 m!6347870))

(declare-fun m!6348478 () Bool)

(assert (=> b!5311368 m!6348478))

(assert (=> d!1706733 m!6347856))

(declare-fun m!6348480 () Bool)

(assert (=> d!1706733 m!6348480))

(assert (=> b!5311366 m!6347863))

(assert (=> b!5311363 m!6347870))

(assert (=> b!5311363 m!6347870))

(assert (=> b!5311363 m!6347942))

(assert (=> bm!378715 m!6347856))

(declare-fun m!6348482 () Bool)

(assert (=> b!5311360 m!6348482))

(assert (=> b!5310269 d!1706733))

(declare-fun d!1706735 () Bool)

(assert (=> d!1706735 (= (isEmpty!33027 (t!374395 zl!343)) ((_ is Nil!61066) (t!374395 zl!343)))))

(assert (=> b!5310270 d!1706735))

(declare-fun bs!1231566 () Bool)

(declare-fun d!1706737 () Bool)

(assert (= bs!1231566 (and d!1706737 d!1706477)))

(declare-fun lambda!270573 () Int)

(assert (=> bs!1231566 (= lambda!270573 lambda!270500)))

(declare-fun bs!1231567 () Bool)

(assert (= bs!1231567 (and d!1706737 d!1706589)))

(assert (=> bs!1231567 (= lambda!270573 lambda!270532)))

(declare-fun bs!1231568 () Bool)

(assert (= bs!1231568 (and d!1706737 d!1706511)))

(assert (=> bs!1231568 (= lambda!270573 lambda!270508)))

(declare-fun bs!1231569 () Bool)

(assert (= bs!1231569 (and d!1706737 d!1706473)))

(assert (=> bs!1231569 (= lambda!270573 lambda!270496)))

(declare-fun bs!1231570 () Bool)

(assert (= bs!1231570 (and d!1706737 d!1706659)))

(assert (=> bs!1231570 (= lambda!270573 lambda!270556)))

(declare-fun bs!1231571 () Bool)

(assert (= bs!1231571 (and d!1706737 d!1706445)))

(assert (=> bs!1231571 (= lambda!270573 lambda!270483)))

(declare-fun bs!1231572 () Bool)

(assert (= bs!1231572 (and d!1706737 d!1706507)))

(assert (=> bs!1231572 (= lambda!270573 lambda!270507)))

(declare-fun b!5311372 () Bool)

(declare-fun e!3300483 () Regex!14963)

(declare-fun e!3300484 () Regex!14963)

(assert (=> b!5311372 (= e!3300483 e!3300484)))

(declare-fun c!922632 () Bool)

(assert (=> b!5311372 (= c!922632 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343))))))

(declare-fun b!5311373 () Bool)

(declare-fun e!3300481 () Bool)

(declare-fun lt!2170041 () Regex!14963)

(assert (=> b!5311373 (= e!3300481 (= lt!2170041 (head!11386 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5311374 () Bool)

(assert (=> b!5311374 (= e!3300484 EmptyExpr!14963)))

(declare-fun e!3300480 () Bool)

(assert (=> d!1706737 e!3300480))

(declare-fun res!2253207 () Bool)

(assert (=> d!1706737 (=> (not res!2253207) (not e!3300480))))

(assert (=> d!1706737 (= res!2253207 (validRegex!6699 lt!2170041))))

(assert (=> d!1706737 (= lt!2170041 e!3300483)))

(declare-fun c!922633 () Bool)

(declare-fun e!3300482 () Bool)

(assert (=> d!1706737 (= c!922633 e!3300482)))

(declare-fun res!2253206 () Bool)

(assert (=> d!1706737 (=> (not res!2253206) (not e!3300482))))

(assert (=> d!1706737 (= res!2253206 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343))))))

(assert (=> d!1706737 (forall!14380 (exprs!4847 (h!67514 zl!343)) lambda!270573)))

(assert (=> d!1706737 (= (generalisedConcat!632 (exprs!4847 (h!67514 zl!343))) lt!2170041)))

(declare-fun b!5311375 () Bool)

(assert (=> b!5311375 (= e!3300484 (Concat!23808 (h!67512 (exprs!4847 (h!67514 zl!343))) (generalisedConcat!632 (t!374393 (exprs!4847 (h!67514 zl!343))))))))

(declare-fun b!5311376 () Bool)

(declare-fun e!3300479 () Bool)

(assert (=> b!5311376 (= e!3300479 (isEmptyExpr!868 lt!2170041))))

(declare-fun b!5311377 () Bool)

(assert (=> b!5311377 (= e!3300481 (isConcat!391 lt!2170041))))

(declare-fun b!5311378 () Bool)

(assert (=> b!5311378 (= e!3300480 e!3300479)))

(declare-fun c!922634 () Bool)

(assert (=> b!5311378 (= c!922634 (isEmpty!33028 (exprs!4847 (h!67514 zl!343))))))

(declare-fun b!5311379 () Bool)

(assert (=> b!5311379 (= e!3300482 (isEmpty!33028 (t!374393 (exprs!4847 (h!67514 zl!343)))))))

(declare-fun b!5311380 () Bool)

(assert (=> b!5311380 (= e!3300483 (h!67512 (exprs!4847 (h!67514 zl!343))))))

(declare-fun b!5311381 () Bool)

(assert (=> b!5311381 (= e!3300479 e!3300481)))

(declare-fun c!922631 () Bool)

(assert (=> b!5311381 (= c!922631 (isEmpty!33028 (tail!10483 (exprs!4847 (h!67514 zl!343)))))))

(assert (= (and d!1706737 res!2253206) b!5311379))

(assert (= (and d!1706737 c!922633) b!5311380))

(assert (= (and d!1706737 (not c!922633)) b!5311372))

(assert (= (and b!5311372 c!922632) b!5311375))

(assert (= (and b!5311372 (not c!922632)) b!5311374))

(assert (= (and d!1706737 res!2253207) b!5311378))

(assert (= (and b!5311378 c!922634) b!5311376))

(assert (= (and b!5311378 (not c!922634)) b!5311381))

(assert (= (and b!5311381 c!922631) b!5311373))

(assert (= (and b!5311381 (not c!922631)) b!5311377))

(assert (=> b!5311379 m!6347468))

(declare-fun m!6348484 () Bool)

(assert (=> b!5311376 m!6348484))

(declare-fun m!6348486 () Bool)

(assert (=> b!5311373 m!6348486))

(declare-fun m!6348488 () Bool)

(assert (=> b!5311378 m!6348488))

(assert (=> b!5311375 m!6347412))

(declare-fun m!6348490 () Bool)

(assert (=> d!1706737 m!6348490))

(declare-fun m!6348492 () Bool)

(assert (=> d!1706737 m!6348492))

(declare-fun m!6348494 () Bool)

(assert (=> b!5311381 m!6348494))

(assert (=> b!5311381 m!6348494))

(declare-fun m!6348496 () Bool)

(assert (=> b!5311381 m!6348496))

(declare-fun m!6348498 () Bool)

(assert (=> b!5311377 m!6348498))

(assert (=> b!5310268 d!1706737))

(declare-fun d!1706739 () Bool)

(declare-fun c!922635 () Bool)

(assert (=> d!1706739 (= c!922635 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3300485 () Bool)

(assert (=> d!1706739 (= (matchZipper!1207 lt!2169830 (t!374394 s!2326)) e!3300485)))

(declare-fun b!5311382 () Bool)

(assert (=> b!5311382 (= e!3300485 (nullableZipper!1334 lt!2169830))))

(declare-fun b!5311383 () Bool)

(assert (=> b!5311383 (= e!3300485 (matchZipper!1207 (derivationStepZipper!1206 lt!2169830 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706739 c!922635) b!5311382))

(assert (= (and d!1706739 (not c!922635)) b!5311383))

(assert (=> d!1706739 m!6347528))

(declare-fun m!6348500 () Bool)

(assert (=> b!5311382 m!6348500))

(assert (=> b!5311383 m!6347532))

(assert (=> b!5311383 m!6347532))

(declare-fun m!6348502 () Bool)

(assert (=> b!5311383 m!6348502))

(assert (=> b!5311383 m!6347536))

(assert (=> b!5311383 m!6348502))

(assert (=> b!5311383 m!6347536))

(declare-fun m!6348504 () Bool)

(assert (=> b!5311383 m!6348504))

(assert (=> b!5310249 d!1706739))

(declare-fun d!1706741 () Bool)

(declare-fun c!922636 () Bool)

(assert (=> d!1706741 (= c!922636 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3300486 () Bool)

(assert (=> d!1706741 (= (matchZipper!1207 lt!2169828 (t!374394 s!2326)) e!3300486)))

(declare-fun b!5311384 () Bool)

(assert (=> b!5311384 (= e!3300486 (nullableZipper!1334 lt!2169828))))

(declare-fun b!5311385 () Bool)

(assert (=> b!5311385 (= e!3300486 (matchZipper!1207 (derivationStepZipper!1206 lt!2169828 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706741 c!922636) b!5311384))

(assert (= (and d!1706741 (not c!922636)) b!5311385))

(assert (=> d!1706741 m!6347528))

(declare-fun m!6348506 () Bool)

(assert (=> b!5311384 m!6348506))

(assert (=> b!5311385 m!6347532))

(assert (=> b!5311385 m!6347532))

(declare-fun m!6348508 () Bool)

(assert (=> b!5311385 m!6348508))

(assert (=> b!5311385 m!6347536))

(assert (=> b!5311385 m!6348508))

(assert (=> b!5311385 m!6347536))

(declare-fun m!6348510 () Bool)

(assert (=> b!5311385 m!6348510))

(assert (=> b!5310277 d!1706741))

(assert (=> b!5310278 d!1706441))

(declare-fun d!1706743 () Bool)

(declare-fun c!922637 () Bool)

(assert (=> d!1706743 (= c!922637 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3300487 () Bool)

(assert (=> d!1706743 (= (matchZipper!1207 lt!2169824 (t!374394 s!2326)) e!3300487)))

(declare-fun b!5311386 () Bool)

(assert (=> b!5311386 (= e!3300487 (nullableZipper!1334 lt!2169824))))

(declare-fun b!5311387 () Bool)

(assert (=> b!5311387 (= e!3300487 (matchZipper!1207 (derivationStepZipper!1206 lt!2169824 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706743 c!922637) b!5311386))

(assert (= (and d!1706743 (not c!922637)) b!5311387))

(assert (=> d!1706743 m!6347528))

(declare-fun m!6348512 () Bool)

(assert (=> b!5311386 m!6348512))

(assert (=> b!5311387 m!6347532))

(assert (=> b!5311387 m!6347532))

(declare-fun m!6348514 () Bool)

(assert (=> b!5311387 m!6348514))

(assert (=> b!5311387 m!6347536))

(assert (=> b!5311387 m!6348514))

(assert (=> b!5311387 m!6347536))

(declare-fun m!6348516 () Bool)

(assert (=> b!5311387 m!6348516))

(assert (=> b!5310278 d!1706743))

(declare-fun d!1706745 () Bool)

(declare-fun c!922638 () Bool)

(assert (=> d!1706745 (= c!922638 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3300488 () Bool)

(assert (=> d!1706745 (= (matchZipper!1207 lt!2169821 (t!374394 s!2326)) e!3300488)))

(declare-fun b!5311388 () Bool)

(assert (=> b!5311388 (= e!3300488 (nullableZipper!1334 lt!2169821))))

(declare-fun b!5311389 () Bool)

(assert (=> b!5311389 (= e!3300488 (matchZipper!1207 (derivationStepZipper!1206 lt!2169821 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706745 c!922638) b!5311388))

(assert (= (and d!1706745 (not c!922638)) b!5311389))

(assert (=> d!1706745 m!6347528))

(declare-fun m!6348518 () Bool)

(assert (=> b!5311388 m!6348518))

(assert (=> b!5311389 m!6347532))

(assert (=> b!5311389 m!6347532))

(declare-fun m!6348520 () Bool)

(assert (=> b!5311389 m!6348520))

(assert (=> b!5311389 m!6347536))

(assert (=> b!5311389 m!6348520))

(assert (=> b!5311389 m!6347536))

(declare-fun m!6348522 () Bool)

(assert (=> b!5311389 m!6348522))

(assert (=> b!5310278 d!1706745))

(declare-fun d!1706747 () Bool)

(declare-fun e!3300489 () Bool)

(assert (=> d!1706747 (= (matchZipper!1207 ((_ map or) lt!2169821 lt!2169834) (t!374394 s!2326)) e!3300489)))

(declare-fun res!2253208 () Bool)

(assert (=> d!1706747 (=> res!2253208 e!3300489)))

(assert (=> d!1706747 (= res!2253208 (matchZipper!1207 lt!2169821 (t!374394 s!2326)))))

(declare-fun lt!2170042 () Unit!153370)

(assert (=> d!1706747 (= lt!2170042 (choose!39722 lt!2169821 lt!2169834 (t!374394 s!2326)))))

(assert (=> d!1706747 (= (lemmaZipperConcatMatchesSameAsBothZippers!200 lt!2169821 lt!2169834 (t!374394 s!2326)) lt!2170042)))

(declare-fun b!5311390 () Bool)

(assert (=> b!5311390 (= e!3300489 (matchZipper!1207 lt!2169834 (t!374394 s!2326)))))

(assert (= (and d!1706747 (not res!2253208)) b!5311390))

(declare-fun m!6348524 () Bool)

(assert (=> d!1706747 m!6348524))

(assert (=> d!1706747 m!6347438))

(declare-fun m!6348526 () Bool)

(assert (=> d!1706747 m!6348526))

(assert (=> b!5311390 m!6347366))

(assert (=> b!5310278 d!1706747))

(declare-fun d!1706749 () Bool)

(declare-fun c!922639 () Bool)

(assert (=> d!1706749 (= c!922639 (isEmpty!33031 (t!374394 s!2326)))))

(declare-fun e!3300490 () Bool)

(assert (=> d!1706749 (= (matchZipper!1207 lt!2169834 (t!374394 s!2326)) e!3300490)))

(declare-fun b!5311391 () Bool)

(assert (=> b!5311391 (= e!3300490 (nullableZipper!1334 lt!2169834))))

(declare-fun b!5311392 () Bool)

(assert (=> b!5311392 (= e!3300490 (matchZipper!1207 (derivationStepZipper!1206 lt!2169834 (head!11385 (t!374394 s!2326))) (tail!10482 (t!374394 s!2326))))))

(assert (= (and d!1706749 c!922639) b!5311391))

(assert (= (and d!1706749 (not c!922639)) b!5311392))

(assert (=> d!1706749 m!6347528))

(declare-fun m!6348528 () Bool)

(assert (=> b!5311391 m!6348528))

(assert (=> b!5311392 m!6347532))

(assert (=> b!5311392 m!6347532))

(declare-fun m!6348530 () Bool)

(assert (=> b!5311392 m!6348530))

(assert (=> b!5311392 m!6347536))

(assert (=> b!5311392 m!6348530))

(assert (=> b!5311392 m!6347536))

(declare-fun m!6348532 () Bool)

(assert (=> b!5311392 m!6348532))

(assert (=> b!5310257 d!1706749))

(declare-fun d!1706751 () Bool)

(declare-fun lt!2170045 () Int)

(assert (=> d!1706751 (>= lt!2170045 0)))

(declare-fun e!3300493 () Int)

(assert (=> d!1706751 (= lt!2170045 e!3300493)))

(declare-fun c!922642 () Bool)

(assert (=> d!1706751 (= c!922642 ((_ is Cons!61066) lt!2169843))))

(assert (=> d!1706751 (= (zipperDepthTotal!124 lt!2169843) lt!2170045)))

(declare-fun b!5311397 () Bool)

(assert (=> b!5311397 (= e!3300493 (+ (contextDepthTotal!104 (h!67514 lt!2169843)) (zipperDepthTotal!124 (t!374395 lt!2169843))))))

(declare-fun b!5311398 () Bool)

(assert (=> b!5311398 (= e!3300493 0)))

(assert (= (and d!1706751 c!922642) b!5311397))

(assert (= (and d!1706751 (not c!922642)) b!5311398))

(declare-fun m!6348534 () Bool)

(assert (=> b!5311397 m!6348534))

(declare-fun m!6348536 () Bool)

(assert (=> b!5311397 m!6348536))

(assert (=> b!5310255 d!1706751))

(declare-fun d!1706753 () Bool)

(declare-fun lt!2170046 () Int)

(assert (=> d!1706753 (>= lt!2170046 0)))

(declare-fun e!3300494 () Int)

(assert (=> d!1706753 (= lt!2170046 e!3300494)))

(declare-fun c!922643 () Bool)

(assert (=> d!1706753 (= c!922643 ((_ is Cons!61066) zl!343))))

(assert (=> d!1706753 (= (zipperDepthTotal!124 zl!343) lt!2170046)))

(declare-fun b!5311399 () Bool)

(assert (=> b!5311399 (= e!3300494 (+ (contextDepthTotal!104 (h!67514 zl!343)) (zipperDepthTotal!124 (t!374395 zl!343))))))

(declare-fun b!5311400 () Bool)

(assert (=> b!5311400 (= e!3300494 0)))

(assert (= (and d!1706753 c!922643) b!5311399))

(assert (= (and d!1706753 (not c!922643)) b!5311400))

(assert (=> b!5311399 m!6347472))

(declare-fun m!6348538 () Bool)

(assert (=> b!5311399 m!6348538))

(assert (=> b!5310255 d!1706753))

(declare-fun d!1706755 () Bool)

(declare-fun lt!2170049 () Regex!14963)

(assert (=> d!1706755 (validRegex!6699 lt!2170049)))

(assert (=> d!1706755 (= lt!2170049 (generalisedUnion!892 (unfocusZipperList!405 zl!343)))))

(assert (=> d!1706755 (= (unfocusZipper!705 zl!343) lt!2170049)))

(declare-fun bs!1231573 () Bool)

(assert (= bs!1231573 d!1706755))

(declare-fun m!6348540 () Bool)

(assert (=> bs!1231573 m!6348540))

(assert (=> bs!1231573 m!6347432))

(assert (=> bs!1231573 m!6347432))

(assert (=> bs!1231573 m!6347434))

(assert (=> b!5310256 d!1706755))

(assert (=> b!5310275 d!1706749))

(declare-fun b!5311407 () Bool)

(assert (=> b!5311407 true))

(declare-fun bs!1231574 () Bool)

(declare-fun b!5311409 () Bool)

(assert (= bs!1231574 (and b!5311409 b!5311407)))

(declare-fun lambda!270581 () Int)

(declare-fun lt!2170060 () Int)

(declare-fun lambda!270582 () Int)

(declare-fun lt!2170061 () Int)

(assert (=> bs!1231574 (= (= lt!2170061 lt!2170060) (= lambda!270582 lambda!270581))))

(assert (=> b!5311409 true))

(declare-fun d!1706757 () Bool)

(declare-fun e!3300500 () Bool)

(assert (=> d!1706757 e!3300500))

(declare-fun res!2253211 () Bool)

(assert (=> d!1706757 (=> (not res!2253211) (not e!3300500))))

(assert (=> d!1706757 (= res!2253211 (>= lt!2170061 0))))

(declare-fun e!3300499 () Int)

(assert (=> d!1706757 (= lt!2170061 e!3300499)))

(declare-fun c!922652 () Bool)

(assert (=> d!1706757 (= c!922652 ((_ is Cons!61066) lt!2169843))))

(assert (=> d!1706757 (= (zipperDepth!80 lt!2169843) lt!2170061)))

(assert (=> b!5311407 (= e!3300499 lt!2170060)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!46 (Context!8694) Int)

(assert (=> b!5311407 (= lt!2170060 (maxBigInt!0 (contextDepth!46 (h!67514 lt!2169843)) (zipperDepth!80 (t!374395 lt!2169843))))))

(declare-fun lambda!270580 () Int)

(declare-fun lt!2170058 () Unit!153370)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!40 (List!61190 Int Int Int) Unit!153370)

(assert (=> b!5311407 (= lt!2170058 (lemmaForallContextDepthBiggerThanTransitive!40 (t!374395 lt!2169843) lt!2170060 (zipperDepth!80 (t!374395 lt!2169843)) lambda!270580))))

(declare-fun forall!14383 (List!61190 Int) Bool)

(assert (=> b!5311407 (forall!14383 (t!374395 lt!2169843) lambda!270581)))

(declare-fun lt!2170059 () Unit!153370)

(assert (=> b!5311407 (= lt!2170059 lt!2170058)))

(declare-fun b!5311408 () Bool)

(assert (=> b!5311408 (= e!3300499 0)))

(assert (=> b!5311409 (= e!3300500 (forall!14383 lt!2169843 lambda!270582))))

(assert (= (and d!1706757 c!922652) b!5311407))

(assert (= (and d!1706757 (not c!922652)) b!5311408))

(assert (= (and d!1706757 res!2253211) b!5311409))

(declare-fun m!6348542 () Bool)

(assert (=> b!5311407 m!6348542))

(declare-fun m!6348544 () Bool)

(assert (=> b!5311407 m!6348544))

(declare-fun m!6348546 () Bool)

(assert (=> b!5311407 m!6348546))

(declare-fun m!6348548 () Bool)

(assert (=> b!5311407 m!6348548))

(assert (=> b!5311407 m!6348542))

(assert (=> b!5311407 m!6348546))

(assert (=> b!5311407 m!6348542))

(declare-fun m!6348550 () Bool)

(assert (=> b!5311407 m!6348550))

(declare-fun m!6348552 () Bool)

(assert (=> b!5311409 m!6348552))

(assert (=> b!5310254 d!1706757))

(declare-fun bs!1231575 () Bool)

(declare-fun b!5311412 () Bool)

(assert (= bs!1231575 (and b!5311412 b!5311407)))

(declare-fun lambda!270583 () Int)

(assert (=> bs!1231575 (= lambda!270583 lambda!270580)))

(declare-fun lambda!270584 () Int)

(declare-fun lt!2170064 () Int)

(assert (=> bs!1231575 (= (= lt!2170064 lt!2170060) (= lambda!270584 lambda!270581))))

(declare-fun bs!1231576 () Bool)

(assert (= bs!1231576 (and b!5311412 b!5311409)))

(assert (=> bs!1231576 (= (= lt!2170064 lt!2170061) (= lambda!270584 lambda!270582))))

(assert (=> b!5311412 true))

(declare-fun bs!1231577 () Bool)

(declare-fun b!5311414 () Bool)

(assert (= bs!1231577 (and b!5311414 b!5311407)))

(declare-fun lambda!270585 () Int)

(declare-fun lt!2170065 () Int)

(assert (=> bs!1231577 (= (= lt!2170065 lt!2170060) (= lambda!270585 lambda!270581))))

(declare-fun bs!1231578 () Bool)

(assert (= bs!1231578 (and b!5311414 b!5311409)))

(assert (=> bs!1231578 (= (= lt!2170065 lt!2170061) (= lambda!270585 lambda!270582))))

(declare-fun bs!1231579 () Bool)

(assert (= bs!1231579 (and b!5311414 b!5311412)))

(assert (=> bs!1231579 (= (= lt!2170065 lt!2170064) (= lambda!270585 lambda!270584))))

(assert (=> b!5311414 true))

(declare-fun d!1706759 () Bool)

(declare-fun e!3300502 () Bool)

(assert (=> d!1706759 e!3300502))

(declare-fun res!2253212 () Bool)

(assert (=> d!1706759 (=> (not res!2253212) (not e!3300502))))

(assert (=> d!1706759 (= res!2253212 (>= lt!2170065 0))))

(declare-fun e!3300501 () Int)

(assert (=> d!1706759 (= lt!2170065 e!3300501)))

(declare-fun c!922653 () Bool)

(assert (=> d!1706759 (= c!922653 ((_ is Cons!61066) zl!343))))

(assert (=> d!1706759 (= (zipperDepth!80 zl!343) lt!2170065)))

(assert (=> b!5311412 (= e!3300501 lt!2170064)))

(assert (=> b!5311412 (= lt!2170064 (maxBigInt!0 (contextDepth!46 (h!67514 zl!343)) (zipperDepth!80 (t!374395 zl!343))))))

(declare-fun lt!2170062 () Unit!153370)

(assert (=> b!5311412 (= lt!2170062 (lemmaForallContextDepthBiggerThanTransitive!40 (t!374395 zl!343) lt!2170064 (zipperDepth!80 (t!374395 zl!343)) lambda!270583))))

(assert (=> b!5311412 (forall!14383 (t!374395 zl!343) lambda!270584)))

(declare-fun lt!2170063 () Unit!153370)

(assert (=> b!5311412 (= lt!2170063 lt!2170062)))

(declare-fun b!5311413 () Bool)

(assert (=> b!5311413 (= e!3300501 0)))

(assert (=> b!5311414 (= e!3300502 (forall!14383 zl!343 lambda!270585))))

(assert (= (and d!1706759 c!922653) b!5311412))

(assert (= (and d!1706759 (not c!922653)) b!5311413))

(assert (= (and d!1706759 res!2253212) b!5311414))

(declare-fun m!6348554 () Bool)

(assert (=> b!5311412 m!6348554))

(declare-fun m!6348556 () Bool)

(assert (=> b!5311412 m!6348556))

(declare-fun m!6348558 () Bool)

(assert (=> b!5311412 m!6348558))

(declare-fun m!6348560 () Bool)

(assert (=> b!5311412 m!6348560))

(assert (=> b!5311412 m!6348554))

(assert (=> b!5311412 m!6348558))

(assert (=> b!5311412 m!6348554))

(declare-fun m!6348562 () Bool)

(assert (=> b!5311412 m!6348562))

(declare-fun m!6348564 () Bool)

(assert (=> b!5311414 m!6348564))

(assert (=> b!5310254 d!1706759))

(declare-fun bm!378716 () Bool)

(declare-fun call!378724 () (InoxSet Context!8694))

(declare-fun call!378726 () (InoxSet Context!8694))

(assert (=> bm!378716 (= call!378724 call!378726)))

(declare-fun b!5311415 () Bool)

(declare-fun e!3300507 () (InoxSet Context!8694))

(declare-fun e!3300508 () (InoxSet Context!8694))

(assert (=> b!5311415 (= e!3300507 e!3300508)))

(declare-fun c!922655 () Bool)

(assert (=> b!5311415 (= c!922655 ((_ is Concat!23808) (regTwo!30438 (regOne!30438 r!7292))))))

(declare-fun c!922657 () Bool)

(declare-fun bm!378717 () Bool)

(declare-fun call!378725 () List!61188)

(declare-fun call!378723 () (InoxSet Context!8694))

(assert (=> bm!378717 (= call!378723 (derivationStepZipperDown!411 (ite c!922657 (regTwo!30439 (regTwo!30438 (regOne!30438 r!7292))) (regOne!30438 (regTwo!30438 (regOne!30438 r!7292)))) (ite c!922657 lt!2169868 (Context!8695 call!378725)) (h!67513 s!2326)))))

(declare-fun bm!378718 () Bool)

(declare-fun call!378721 () (InoxSet Context!8694))

(assert (=> bm!378718 (= call!378721 call!378724)))

(declare-fun b!5311416 () Bool)

(declare-fun e!3300505 () (InoxSet Context!8694))

(assert (=> b!5311416 (= e!3300505 call!378721)))

(declare-fun b!5311417 () Bool)

(declare-fun e!3300504 () (InoxSet Context!8694))

(assert (=> b!5311417 (= e!3300504 (store ((as const (Array Context!8694 Bool)) false) lt!2169868 true))))

(declare-fun bm!378719 () Bool)

(declare-fun c!922656 () Bool)

(assert (=> bm!378719 (= call!378725 ($colon$colon!1383 (exprs!4847 lt!2169868) (ite (or c!922656 c!922655) (regTwo!30438 (regTwo!30438 (regOne!30438 r!7292))) (regTwo!30438 (regOne!30438 r!7292)))))))

(declare-fun d!1706761 () Bool)

(declare-fun c!922654 () Bool)

(assert (=> d!1706761 (= c!922654 (and ((_ is ElementMatch!14963) (regTwo!30438 (regOne!30438 r!7292))) (= (c!922305 (regTwo!30438 (regOne!30438 r!7292))) (h!67513 s!2326))))))

(assert (=> d!1706761 (= (derivationStepZipperDown!411 (regTwo!30438 (regOne!30438 r!7292)) lt!2169868 (h!67513 s!2326)) e!3300504)))

(declare-fun bm!378720 () Bool)

(declare-fun call!378722 () List!61188)

(assert (=> bm!378720 (= call!378726 (derivationStepZipperDown!411 (ite c!922657 (regOne!30439 (regTwo!30438 (regOne!30438 r!7292))) (ite c!922656 (regTwo!30438 (regTwo!30438 (regOne!30438 r!7292))) (ite c!922655 (regOne!30438 (regTwo!30438 (regOne!30438 r!7292))) (reg!15292 (regTwo!30438 (regOne!30438 r!7292)))))) (ite (or c!922657 c!922656) lt!2169868 (Context!8695 call!378722)) (h!67513 s!2326)))))

(declare-fun bm!378721 () Bool)

(assert (=> bm!378721 (= call!378722 call!378725)))

(declare-fun b!5311418 () Bool)

(declare-fun c!922658 () Bool)

(assert (=> b!5311418 (= c!922658 ((_ is Star!14963) (regTwo!30438 (regOne!30438 r!7292))))))

(assert (=> b!5311418 (= e!3300508 e!3300505)))

(declare-fun b!5311419 () Bool)

(declare-fun e!3300506 () Bool)

(assert (=> b!5311419 (= e!3300506 (nullable!5132 (regOne!30438 (regTwo!30438 (regOne!30438 r!7292)))))))

(declare-fun b!5311420 () Bool)

(assert (=> b!5311420 (= e!3300505 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5311421 () Bool)

(assert (=> b!5311421 (= c!922656 e!3300506)))

(declare-fun res!2253213 () Bool)

(assert (=> b!5311421 (=> (not res!2253213) (not e!3300506))))

(assert (=> b!5311421 (= res!2253213 ((_ is Concat!23808) (regTwo!30438 (regOne!30438 r!7292))))))

(declare-fun e!3300503 () (InoxSet Context!8694))

(assert (=> b!5311421 (= e!3300503 e!3300507)))

(declare-fun b!5311422 () Bool)

(assert (=> b!5311422 (= e!3300504 e!3300503)))

(assert (=> b!5311422 (= c!922657 ((_ is Union!14963) (regTwo!30438 (regOne!30438 r!7292))))))

(declare-fun b!5311423 () Bool)

(assert (=> b!5311423 (= e!3300508 call!378721)))

(declare-fun b!5311424 () Bool)

(assert (=> b!5311424 (= e!3300503 ((_ map or) call!378726 call!378723))))

(declare-fun b!5311425 () Bool)

(assert (=> b!5311425 (= e!3300507 ((_ map or) call!378723 call!378724))))

(assert (= (and d!1706761 c!922654) b!5311417))

(assert (= (and d!1706761 (not c!922654)) b!5311422))

(assert (= (and b!5311422 c!922657) b!5311424))

(assert (= (and b!5311422 (not c!922657)) b!5311421))

(assert (= (and b!5311421 res!2253213) b!5311419))

(assert (= (and b!5311421 c!922656) b!5311425))

(assert (= (and b!5311421 (not c!922656)) b!5311415))

(assert (= (and b!5311415 c!922655) b!5311423))

(assert (= (and b!5311415 (not c!922655)) b!5311418))

(assert (= (and b!5311418 c!922658) b!5311416))

(assert (= (and b!5311418 (not c!922658)) b!5311420))

(assert (= (or b!5311423 b!5311416) bm!378721))

(assert (= (or b!5311423 b!5311416) bm!378718))

(assert (= (or b!5311425 bm!378721) bm!378719))

(assert (= (or b!5311425 bm!378718) bm!378716))

(assert (= (or b!5311424 b!5311425) bm!378717))

(assert (= (or b!5311424 bm!378716) bm!378720))

(declare-fun m!6348566 () Bool)

(assert (=> b!5311419 m!6348566))

(declare-fun m!6348568 () Bool)

(assert (=> bm!378719 m!6348568))

(declare-fun m!6348570 () Bool)

(assert (=> bm!378720 m!6348570))

(declare-fun m!6348572 () Bool)

(assert (=> bm!378717 m!6348572))

(assert (=> b!5311417 m!6347790))

(assert (=> b!5310273 d!1706761))

(declare-fun bm!378722 () Bool)

(declare-fun call!378730 () (InoxSet Context!8694))

(declare-fun call!378732 () (InoxSet Context!8694))

(assert (=> bm!378722 (= call!378730 call!378732)))

(declare-fun b!5311426 () Bool)

(declare-fun e!3300513 () (InoxSet Context!8694))

(declare-fun e!3300514 () (InoxSet Context!8694))

(assert (=> b!5311426 (= e!3300513 e!3300514)))

(declare-fun c!922660 () Bool)

(assert (=> b!5311426 (= c!922660 ((_ is Concat!23808) (regOne!30438 (regOne!30438 r!7292))))))

(declare-fun bm!378723 () Bool)

(declare-fun call!378729 () (InoxSet Context!8694))

(declare-fun call!378731 () List!61188)

(declare-fun c!922662 () Bool)

(assert (=> bm!378723 (= call!378729 (derivationStepZipperDown!411 (ite c!922662 (regTwo!30439 (regOne!30438 (regOne!30438 r!7292))) (regOne!30438 (regOne!30438 (regOne!30438 r!7292)))) (ite c!922662 lt!2169844 (Context!8695 call!378731)) (h!67513 s!2326)))))

(declare-fun bm!378724 () Bool)

(declare-fun call!378727 () (InoxSet Context!8694))

(assert (=> bm!378724 (= call!378727 call!378730)))

(declare-fun b!5311427 () Bool)

(declare-fun e!3300511 () (InoxSet Context!8694))

(assert (=> b!5311427 (= e!3300511 call!378727)))

(declare-fun b!5311428 () Bool)

(declare-fun e!3300510 () (InoxSet Context!8694))

(assert (=> b!5311428 (= e!3300510 (store ((as const (Array Context!8694 Bool)) false) lt!2169844 true))))

(declare-fun bm!378725 () Bool)

(declare-fun c!922661 () Bool)

(assert (=> bm!378725 (= call!378731 ($colon$colon!1383 (exprs!4847 lt!2169844) (ite (or c!922661 c!922660) (regTwo!30438 (regOne!30438 (regOne!30438 r!7292))) (regOne!30438 (regOne!30438 r!7292)))))))

(declare-fun d!1706763 () Bool)

(declare-fun c!922659 () Bool)

(assert (=> d!1706763 (= c!922659 (and ((_ is ElementMatch!14963) (regOne!30438 (regOne!30438 r!7292))) (= (c!922305 (regOne!30438 (regOne!30438 r!7292))) (h!67513 s!2326))))))

(assert (=> d!1706763 (= (derivationStepZipperDown!411 (regOne!30438 (regOne!30438 r!7292)) lt!2169844 (h!67513 s!2326)) e!3300510)))

(declare-fun call!378728 () List!61188)

(declare-fun bm!378726 () Bool)

(assert (=> bm!378726 (= call!378732 (derivationStepZipperDown!411 (ite c!922662 (regOne!30439 (regOne!30438 (regOne!30438 r!7292))) (ite c!922661 (regTwo!30438 (regOne!30438 (regOne!30438 r!7292))) (ite c!922660 (regOne!30438 (regOne!30438 (regOne!30438 r!7292))) (reg!15292 (regOne!30438 (regOne!30438 r!7292)))))) (ite (or c!922662 c!922661) lt!2169844 (Context!8695 call!378728)) (h!67513 s!2326)))))

(declare-fun bm!378727 () Bool)

(assert (=> bm!378727 (= call!378728 call!378731)))

(declare-fun b!5311429 () Bool)

(declare-fun c!922663 () Bool)

(assert (=> b!5311429 (= c!922663 ((_ is Star!14963) (regOne!30438 (regOne!30438 r!7292))))))

(assert (=> b!5311429 (= e!3300514 e!3300511)))

(declare-fun b!5311430 () Bool)

(declare-fun e!3300512 () Bool)

(assert (=> b!5311430 (= e!3300512 (nullable!5132 (regOne!30438 (regOne!30438 (regOne!30438 r!7292)))))))

(declare-fun b!5311431 () Bool)

(assert (=> b!5311431 (= e!3300511 ((as const (Array Context!8694 Bool)) false))))

(declare-fun b!5311432 () Bool)

(assert (=> b!5311432 (= c!922661 e!3300512)))

(declare-fun res!2253214 () Bool)

(assert (=> b!5311432 (=> (not res!2253214) (not e!3300512))))

(assert (=> b!5311432 (= res!2253214 ((_ is Concat!23808) (regOne!30438 (regOne!30438 r!7292))))))

(declare-fun e!3300509 () (InoxSet Context!8694))

(assert (=> b!5311432 (= e!3300509 e!3300513)))

(declare-fun b!5311433 () Bool)

(assert (=> b!5311433 (= e!3300510 e!3300509)))

(assert (=> b!5311433 (= c!922662 ((_ is Union!14963) (regOne!30438 (regOne!30438 r!7292))))))

(declare-fun b!5311434 () Bool)

(assert (=> b!5311434 (= e!3300514 call!378727)))

(declare-fun b!5311435 () Bool)

(assert (=> b!5311435 (= e!3300509 ((_ map or) call!378732 call!378729))))

(declare-fun b!5311436 () Bool)

(assert (=> b!5311436 (= e!3300513 ((_ map or) call!378729 call!378730))))

(assert (= (and d!1706763 c!922659) b!5311428))

(assert (= (and d!1706763 (not c!922659)) b!5311433))

(assert (= (and b!5311433 c!922662) b!5311435))

(assert (= (and b!5311433 (not c!922662)) b!5311432))

(assert (= (and b!5311432 res!2253214) b!5311430))

(assert (= (and b!5311432 c!922661) b!5311436))

(assert (= (and b!5311432 (not c!922661)) b!5311426))

(assert (= (and b!5311426 c!922660) b!5311434))

(assert (= (and b!5311426 (not c!922660)) b!5311429))

(assert (= (and b!5311429 c!922663) b!5311427))

(assert (= (and b!5311429 (not c!922663)) b!5311431))

(assert (= (or b!5311434 b!5311427) bm!378727))

(assert (= (or b!5311434 b!5311427) bm!378724))

(assert (= (or b!5311436 bm!378727) bm!378725))

(assert (= (or b!5311436 bm!378724) bm!378722))

(assert (= (or b!5311435 b!5311436) bm!378723))

(assert (= (or b!5311435 bm!378722) bm!378726))

(declare-fun m!6348574 () Bool)

(assert (=> b!5311430 m!6348574))

(declare-fun m!6348576 () Bool)

(assert (=> bm!378725 m!6348576))

(declare-fun m!6348578 () Bool)

(assert (=> bm!378726 m!6348578))

(declare-fun m!6348580 () Bool)

(assert (=> bm!378723 m!6348580))

(assert (=> b!5311428 m!6347350))

(assert (=> b!5310273 d!1706763))

(declare-fun d!1706765 () Bool)

(declare-fun e!3300517 () Bool)

(assert (=> d!1706765 e!3300517))

(declare-fun res!2253217 () Bool)

(assert (=> d!1706765 (=> (not res!2253217) (not e!3300517))))

(declare-fun lt!2170068 () List!61190)

(declare-fun noDuplicate!1289 (List!61190) Bool)

(assert (=> d!1706765 (= res!2253217 (noDuplicate!1289 lt!2170068))))

(declare-fun choose!39737 ((InoxSet Context!8694)) List!61190)

(assert (=> d!1706765 (= lt!2170068 (choose!39737 z!1189))))

(assert (=> d!1706765 (= (toList!8747 z!1189) lt!2170068)))

(declare-fun b!5311439 () Bool)

(declare-fun content!10879 (List!61190) (InoxSet Context!8694))

(assert (=> b!5311439 (= e!3300517 (= (content!10879 lt!2170068) z!1189))))

(assert (= (and d!1706765 res!2253217) b!5311439))

(declare-fun m!6348582 () Bool)

(assert (=> d!1706765 m!6348582))

(declare-fun m!6348584 () Bool)

(assert (=> d!1706765 m!6348584))

(declare-fun m!6348586 () Bool)

(assert (=> b!5311439 m!6348586))

(assert (=> b!5310274 d!1706765))

(declare-fun b!5311452 () Bool)

(declare-fun e!3300520 () Bool)

(declare-fun tp!1479588 () Bool)

(assert (=> b!5311452 (= e!3300520 tp!1479588)))

(declare-fun b!5311450 () Bool)

(assert (=> b!5311450 (= e!3300520 tp_is_empty!39179)))

(assert (=> b!5310272 (= tp!1479508 e!3300520)))

(declare-fun b!5311451 () Bool)

(declare-fun tp!1479587 () Bool)

(declare-fun tp!1479586 () Bool)

(assert (=> b!5311451 (= e!3300520 (and tp!1479587 tp!1479586))))

(declare-fun b!5311453 () Bool)

(declare-fun tp!1479589 () Bool)

(declare-fun tp!1479590 () Bool)

(assert (=> b!5311453 (= e!3300520 (and tp!1479589 tp!1479590))))

(assert (= (and b!5310272 ((_ is ElementMatch!14963) (reg!15292 r!7292))) b!5311450))

(assert (= (and b!5310272 ((_ is Concat!23808) (reg!15292 r!7292))) b!5311451))

(assert (= (and b!5310272 ((_ is Star!14963) (reg!15292 r!7292))) b!5311452))

(assert (= (and b!5310272 ((_ is Union!14963) (reg!15292 r!7292))) b!5311453))

(declare-fun b!5311456 () Bool)

(declare-fun e!3300521 () Bool)

(declare-fun tp!1479593 () Bool)

(assert (=> b!5311456 (= e!3300521 tp!1479593)))

(declare-fun b!5311454 () Bool)

(assert (=> b!5311454 (= e!3300521 tp_is_empty!39179)))

(assert (=> b!5310264 (= tp!1479509 e!3300521)))

(declare-fun b!5311455 () Bool)

(declare-fun tp!1479592 () Bool)

(declare-fun tp!1479591 () Bool)

(assert (=> b!5311455 (= e!3300521 (and tp!1479592 tp!1479591))))

(declare-fun b!5311457 () Bool)

(declare-fun tp!1479594 () Bool)

(declare-fun tp!1479595 () Bool)

(assert (=> b!5311457 (= e!3300521 (and tp!1479594 tp!1479595))))

(assert (= (and b!5310264 ((_ is ElementMatch!14963) (regOne!30438 r!7292))) b!5311454))

(assert (= (and b!5310264 ((_ is Concat!23808) (regOne!30438 r!7292))) b!5311455))

(assert (= (and b!5310264 ((_ is Star!14963) (regOne!30438 r!7292))) b!5311456))

(assert (= (and b!5310264 ((_ is Union!14963) (regOne!30438 r!7292))) b!5311457))

(declare-fun b!5311460 () Bool)

(declare-fun e!3300522 () Bool)

(declare-fun tp!1479598 () Bool)

(assert (=> b!5311460 (= e!3300522 tp!1479598)))

(declare-fun b!5311458 () Bool)

(assert (=> b!5311458 (= e!3300522 tp_is_empty!39179)))

(assert (=> b!5310264 (= tp!1479510 e!3300522)))

(declare-fun b!5311459 () Bool)

(declare-fun tp!1479597 () Bool)

(declare-fun tp!1479596 () Bool)

(assert (=> b!5311459 (= e!3300522 (and tp!1479597 tp!1479596))))

(declare-fun b!5311461 () Bool)

(declare-fun tp!1479599 () Bool)

(declare-fun tp!1479600 () Bool)

(assert (=> b!5311461 (= e!3300522 (and tp!1479599 tp!1479600))))

(assert (= (and b!5310264 ((_ is ElementMatch!14963) (regTwo!30438 r!7292))) b!5311458))

(assert (= (and b!5310264 ((_ is Concat!23808) (regTwo!30438 r!7292))) b!5311459))

(assert (= (and b!5310264 ((_ is Star!14963) (regTwo!30438 r!7292))) b!5311460))

(assert (= (and b!5310264 ((_ is Union!14963) (regTwo!30438 r!7292))) b!5311461))

(declare-fun b!5311466 () Bool)

(declare-fun e!3300525 () Bool)

(declare-fun tp!1479605 () Bool)

(declare-fun tp!1479606 () Bool)

(assert (=> b!5311466 (= e!3300525 (and tp!1479605 tp!1479606))))

(assert (=> b!5310253 (= tp!1479517 e!3300525)))

(assert (= (and b!5310253 ((_ is Cons!61064) (exprs!4847 (h!67514 zl!343)))) b!5311466))

(declare-fun condSetEmpty!34151 () Bool)

(assert (=> setNonEmpty!34145 (= condSetEmpty!34151 (= setRest!34145 ((as const (Array Context!8694 Bool)) false)))))

(declare-fun setRes!34151 () Bool)

(assert (=> setNonEmpty!34145 (= tp!1479513 setRes!34151)))

(declare-fun setIsEmpty!34151 () Bool)

(assert (=> setIsEmpty!34151 setRes!34151))

(declare-fun tp!1479612 () Bool)

(declare-fun setNonEmpty!34151 () Bool)

(declare-fun e!3300528 () Bool)

(declare-fun setElem!34151 () Context!8694)

(assert (=> setNonEmpty!34151 (= setRes!34151 (and tp!1479612 (inv!80654 setElem!34151) e!3300528))))

(declare-fun setRest!34151 () (InoxSet Context!8694))

(assert (=> setNonEmpty!34151 (= setRest!34145 ((_ map or) (store ((as const (Array Context!8694 Bool)) false) setElem!34151 true) setRest!34151))))

(declare-fun b!5311471 () Bool)

(declare-fun tp!1479611 () Bool)

(assert (=> b!5311471 (= e!3300528 tp!1479611)))

(assert (= (and setNonEmpty!34145 condSetEmpty!34151) setIsEmpty!34151))

(assert (= (and setNonEmpty!34145 (not condSetEmpty!34151)) setNonEmpty!34151))

(assert (= setNonEmpty!34151 b!5311471))

(declare-fun m!6348588 () Bool)

(assert (=> setNonEmpty!34151 m!6348588))

(declare-fun b!5311474 () Bool)

(declare-fun e!3300529 () Bool)

(declare-fun tp!1479615 () Bool)

(assert (=> b!5311474 (= e!3300529 tp!1479615)))

(declare-fun b!5311472 () Bool)

(assert (=> b!5311472 (= e!3300529 tp_is_empty!39179)))

(assert (=> b!5310276 (= tp!1479511 e!3300529)))

(declare-fun b!5311473 () Bool)

(declare-fun tp!1479614 () Bool)

(declare-fun tp!1479613 () Bool)

(assert (=> b!5311473 (= e!3300529 (and tp!1479614 tp!1479613))))

(declare-fun b!5311475 () Bool)

(declare-fun tp!1479616 () Bool)

(declare-fun tp!1479617 () Bool)

(assert (=> b!5311475 (= e!3300529 (and tp!1479616 tp!1479617))))

(assert (= (and b!5310276 ((_ is ElementMatch!14963) (regOne!30439 r!7292))) b!5311472))

(assert (= (and b!5310276 ((_ is Concat!23808) (regOne!30439 r!7292))) b!5311473))

(assert (= (and b!5310276 ((_ is Star!14963) (regOne!30439 r!7292))) b!5311474))

(assert (= (and b!5310276 ((_ is Union!14963) (regOne!30439 r!7292))) b!5311475))

(declare-fun b!5311478 () Bool)

(declare-fun e!3300530 () Bool)

(declare-fun tp!1479620 () Bool)

(assert (=> b!5311478 (= e!3300530 tp!1479620)))

(declare-fun b!5311476 () Bool)

(assert (=> b!5311476 (= e!3300530 tp_is_empty!39179)))

(assert (=> b!5310276 (= tp!1479515 e!3300530)))

(declare-fun b!5311477 () Bool)

(declare-fun tp!1479619 () Bool)

(declare-fun tp!1479618 () Bool)

(assert (=> b!5311477 (= e!3300530 (and tp!1479619 tp!1479618))))

(declare-fun b!5311479 () Bool)

(declare-fun tp!1479621 () Bool)

(declare-fun tp!1479622 () Bool)

(assert (=> b!5311479 (= e!3300530 (and tp!1479621 tp!1479622))))

(assert (= (and b!5310276 ((_ is ElementMatch!14963) (regTwo!30439 r!7292))) b!5311476))

(assert (= (and b!5310276 ((_ is Concat!23808) (regTwo!30439 r!7292))) b!5311477))

(assert (= (and b!5310276 ((_ is Star!14963) (regTwo!30439 r!7292))) b!5311478))

(assert (= (and b!5310276 ((_ is Union!14963) (regTwo!30439 r!7292))) b!5311479))

(declare-fun b!5311487 () Bool)

(declare-fun e!3300536 () Bool)

(declare-fun tp!1479627 () Bool)

(assert (=> b!5311487 (= e!3300536 tp!1479627)))

(declare-fun b!5311486 () Bool)

(declare-fun tp!1479628 () Bool)

(declare-fun e!3300535 () Bool)

(assert (=> b!5311486 (= e!3300535 (and (inv!80654 (h!67514 (t!374395 zl!343))) e!3300536 tp!1479628))))

(assert (=> b!5310281 (= tp!1479516 e!3300535)))

(assert (= b!5311486 b!5311487))

(assert (= (and b!5310281 ((_ is Cons!61066) (t!374395 zl!343))) b!5311486))

(declare-fun m!6348590 () Bool)

(assert (=> b!5311486 m!6348590))

(declare-fun b!5311488 () Bool)

(declare-fun e!3300537 () Bool)

(declare-fun tp!1479629 () Bool)

(declare-fun tp!1479630 () Bool)

(assert (=> b!5311488 (= e!3300537 (and tp!1479629 tp!1479630))))

(assert (=> b!5310286 (= tp!1479512 e!3300537)))

(assert (= (and b!5310286 ((_ is Cons!61064) (exprs!4847 setElem!34145))) b!5311488))

(declare-fun b!5311493 () Bool)

(declare-fun e!3300540 () Bool)

(declare-fun tp!1479633 () Bool)

(assert (=> b!5311493 (= e!3300540 (and tp_is_empty!39179 tp!1479633))))

(assert (=> b!5310259 (= tp!1479514 e!3300540)))

(assert (= (and b!5310259 ((_ is Cons!61065) (t!374394 s!2326))) b!5311493))

(declare-fun b_lambda!204423 () Bool)

(assert (= b_lambda!204415 (or b!5310260 b_lambda!204423)))

(declare-fun bs!1231580 () Bool)

(declare-fun d!1706767 () Bool)

(assert (= bs!1231580 (and d!1706767 b!5310260)))

(assert (=> bs!1231580 (= (dynLambda!24136 lambda!270467 lt!2169872) (derivationStepZipperUp!335 lt!2169872 (h!67513 s!2326)))))

(assert (=> bs!1231580 m!6347352))

(assert (=> d!1706709 d!1706767))

(declare-fun b_lambda!204425 () Bool)

(assert (= b_lambda!204407 (or b!5310260 b_lambda!204425)))

(declare-fun bs!1231581 () Bool)

(declare-fun d!1706769 () Bool)

(assert (= bs!1231581 (and d!1706769 b!5310260)))

(assert (=> bs!1231581 (= (dynLambda!24136 lambda!270467 (h!67514 zl!343)) (derivationStepZipperUp!335 (h!67514 zl!343) (h!67513 s!2326)))))

(assert (=> bs!1231581 m!6347448))

(assert (=> d!1706503 d!1706769))

(declare-fun b_lambda!204427 () Bool)

(assert (= b_lambda!204405 (or b!5310260 b_lambda!204427)))

(declare-fun bs!1231582 () Bool)

(declare-fun d!1706771 () Bool)

(assert (= bs!1231582 (and d!1706771 b!5310260)))

(assert (=> bs!1231582 (= (dynLambda!24136 lambda!270467 lt!2169844) (derivationStepZipperUp!335 lt!2169844 (h!67513 s!2326)))))

(assert (=> bs!1231582 m!6347340))

(assert (=> d!1706423 d!1706771))

(check-sat (not b!5310483) (not b!5311376) (not d!1706477) (not b!5310765) (not bm!378594) (not b!5311475) (not b!5311196) (not bm!378633) (not bs!1231582) (not b!5310895) (not d!1706765) (not b!5310547) (not b!5311412) (not d!1706651) (not b!5311385) (not b!5311151) (not b!5311113) (not b!5311154) (not b!5311479) (not d!1706481) (not b!5310621) (not d!1706687) (not b!5310674) (not d!1706507) (not bm!378634) (not b!5310305) (not d!1706569) (not b!5311477) (not b!5310685) (not d!1706565) (not b!5310543) (not bm!378725) (not b!5311407) (not b!5311107) (not b!5311439) (not b!5311373) (not b!5310887) (not b!5311460) (not bm!378720) (not b!5311457) (not b!5310702) (not d!1706709) (not b!5311397) (not bm!378714) (not bm!378646) (not b!5311241) (not b!5310687) (not b!5311384) (not b!5310860) (not b!5310392) (not d!1706739) (not b!5311289) (not setNonEmpty!34151) (not b!5310579) (not b!5311185) (not d!1706567) (not bm!378614) (not d!1706683) (not b!5311389) (not b!5311391) (not b!5311453) (not b!5311264) (not b!5311098) (not d!1706423) (not b!5311246) (not d!1706649) (not b!5310684) (not b!5311419) (not b!5311414) (not b!5310681) (not d!1706715) (not b!5310698) (not b!5311258) (not b!5311238) (not d!1706745) (not b!5310921) (not b!5311149) (not d!1706501) (not b!5311103) (not d!1706439) (not b!5311109) (not d!1706741) (not b!5311455) (not bm!378652) (not b!5311188) (not b!5310388) (not d!1706589) (not b!5310677) (not d!1706747) (not b!5310776) (not b!5310426) (not d!1706445) (not b!5310671) (not b_lambda!204425) (not b!5311459) (not d!1706657) (not b!5310423) (not b!5311100) (not bm!378653) (not b!5311383) (not b!5311104) (not d!1706723) (not d!1706521) (not d!1706647) (not b!5310679) (not b!5311191) (not b!5311184) (not d!1706607) (not b!5311387) (not b!5310919) (not b!5311381) (not bm!378695) (not b!5310548) (not d!1706511) (not b!5310304) (not bs!1231581) (not b!5311461) (not bm!378601) (not d!1706505) (not bm!378640) (not b!5310673) (not b!5311390) (not b!5310540) (not b!5310424) (not b!5311473) (not b!5310683) (not b!5310857) (not b!5310865) (not b!5310771) (not d!1706669) (not b!5310306) (not b!5310773) (not b!5310922) (not b!5311388) (not b!5311430) (not d!1706629) (not d!1706613) (not b!5311121) (not b!5311115) (not d!1706517) (not b!5310924) (not bm!378688) (not b!5310545) (not b!5310699) (not d!1706441) (not b!5311108) (not b!5311360) (not b!5311471) (not b!5311221) (not b!5311291) (not b_lambda!204423) (not b!5310337) (not b!5311257) (not d!1706717) (not b!5311451) (not d!1706591) (not b!5310862) (not b!5310918) (not b!5310425) (not b!5310353) (not b!5311466) (not b!5311486) (not b!5311234) (not d!1706513) (not b!5310577) (not d!1706473) (not bm!378647) (not b_lambda!204427) (not d!1706447) (not d!1706631) (not b!5310768) (not b!5310703) (not b!5311363) (not b!5310764) (not b!5311112) (not b!5311368) (not b!5310397) (not b!5310672) (not b!5311106) (not bm!378602) (not b!5311261) (not b!5311193) (not b!5311478) (not d!1706699) (not b!5310567) (not bs!1231580) (not b!5311377) (not b!5310682) (not b!5310945) (not d!1706409) (not b!5310946) (not d!1706419) (not b!5310669) (not b!5311371) (not b!5311165) (not b!5311399) (not b!5310574) (not b!5311297) (not b!5311235) (not b!5310539) (not b!5310355) (not bm!378712) (not b!5310829) (not bm!378717) (not b!5311456) (not b!5310398) (not b!5311493) (not bm!378708) (not d!1706743) (not b!5310572) (not b!5311143) (not d!1706611) (not b!5311382) (not b!5310853) (not d!1706707) (not b!5311379) (not d!1706721) (not bm!378645) (not b!5311223) tp_is_empty!39179 (not b!5311129) (not d!1706737) (not b!5311378) (not d!1706413) (not bm!378715) (not d!1706421) (not bm!378692) (not d!1706655) (not b!5311474) (not b!5310564) (not b!5311359) (not b!5310307) (not bm!378726) (not bm!378723) (not b!5310854) (not b!5311487) (not d!1706503) (not b!5311392) (not b!5311142) (not d!1706527) (not d!1706733) (not d!1706443) (not b!5311488) (not d!1706695) (not d!1706659) (not bm!378719) (not b!5311266) (not b!5311146) (not b!5311243) (not b!5310920) (not d!1706627) (not b!5311285) (not d!1706755) (not b!5311294) (not bm!378690) (not b!5311452) (not b!5311386) (not b!5311290) (not d!1706633) (not b!5310485) (not d!1706449) (not b!5311269) (not bm!378631) (not b!5311287) (not bm!378615) (not d!1706713) (not b!5311295) (not b!5311409) (not b!5311099) (not d!1706749) (not b!5310837) (not bm!378689) (not b!5310541) (not b!5311375) (not b!5310569) (not bm!378691) (not b!5310675) (not d!1706609) (not d!1706677) (not bm!378616) (not d!1706719) (not b!5311366) (not b!5310916) (not d!1706731))
(check-sat)
