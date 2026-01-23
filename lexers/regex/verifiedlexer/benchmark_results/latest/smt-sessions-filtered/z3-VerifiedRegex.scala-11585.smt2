; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!641274 () Bool)

(assert start!641274)

(declare-fun b!6544940 () Bool)

(assert (=> b!6544940 true))

(assert (=> b!6544940 true))

(declare-fun lambda!363272 () Int)

(declare-fun lambda!363271 () Int)

(assert (=> b!6544940 (not (= lambda!363272 lambda!363271))))

(assert (=> b!6544940 true))

(assert (=> b!6544940 true))

(declare-fun b!6544952 () Bool)

(assert (=> b!6544952 true))

(declare-fun b!6544950 () Bool)

(assert (=> b!6544950 true))

(declare-fun b!6544922 () Bool)

(declare-fun res!2684868 () Bool)

(declare-fun e!3962879 () Bool)

(assert (=> b!6544922 (=> res!2684868 e!3962879)))

(declare-fun lt!2400236 () Bool)

(declare-fun lt!2400262 () Bool)

(assert (=> b!6544922 (= res!2684868 (or (not lt!2400236) (not lt!2400262)))))

(declare-fun b!6544923 () Bool)

(declare-fun e!3962881 () Bool)

(declare-fun e!3962892 () Bool)

(assert (=> b!6544923 (= e!3962881 e!3962892)))

(declare-fun res!2684842 () Bool)

(assert (=> b!6544923 (=> (not res!2684842) (not e!3962892))))

(declare-datatypes ((C!33104 0))(
  ( (C!33105 (val!26254 Int)) )
))
(declare-datatypes ((Regex!16417 0))(
  ( (ElementMatch!16417 (c!1201926 C!33104)) (Concat!25262 (regOne!33346 Regex!16417) (regTwo!33346 Regex!16417)) (EmptyExpr!16417) (Star!16417 (reg!16746 Regex!16417)) (EmptyLang!16417) (Union!16417 (regOne!33347 Regex!16417) (regTwo!33347 Regex!16417)) )
))
(declare-fun r!7292 () Regex!16417)

(declare-fun validRegex!8153 (Regex!16417) Bool)

(assert (=> b!6544923 (= res!2684842 (validRegex!8153 (reg!16746 (regOne!33346 r!7292))))))

(declare-fun e!3962889 () Bool)

(assert (=> b!6544923 e!3962889))

(declare-fun res!2684849 () Bool)

(assert (=> b!6544923 (=> (not res!2684849) (not e!3962889))))

(declare-fun lt!2400228 () Regex!16417)

(declare-datatypes ((List!65550 0))(
  ( (Nil!65426) (Cons!65426 (h!71874 C!33104) (t!379192 List!65550)) )
))
(declare-fun lt!2400230 () List!65550)

(declare-fun matchR!8600 (Regex!16417 List!65550) Bool)

(assert (=> b!6544923 (= res!2684849 (matchR!8600 lt!2400228 lt!2400230))))

(declare-datatypes ((Unit!159003 0))(
  ( (Unit!159004) )
))
(declare-fun lt!2400247 () Unit!159003)

(declare-datatypes ((tuple2!66792 0))(
  ( (tuple2!66793 (_1!36699 List!65550) (_2!36699 List!65550)) )
))
(declare-fun lt!2400243 () tuple2!66792)

(declare-fun lt!2400232 () Regex!16417)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!338 (Regex!16417 Regex!16417 List!65550 List!65550) Unit!159003)

(assert (=> b!6544923 (= lt!2400247 (lemmaTwoRegexMatchThenConcatMatchesConcatString!338 (reg!16746 (regOne!33346 r!7292)) lt!2400232 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(assert (=> b!6544923 (matchR!8600 lt!2400232 (_2!36699 lt!2400243))))

(declare-fun lt!2400235 () Unit!159003)

(declare-datatypes ((List!65551 0))(
  ( (Nil!65427) (Cons!65427 (h!71875 Regex!16417) (t!379193 List!65551)) )
))
(declare-datatypes ((Context!11602 0))(
  ( (Context!11603 (exprs!6301 List!65551)) )
))
(declare-datatypes ((List!65552 0))(
  ( (Nil!65428) (Cons!65428 (h!71876 Context!11602) (t!379194 List!65552)) )
))
(declare-fun lt!2400252 () List!65552)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2400270 () (InoxSet Context!11602))

(declare-fun theoremZipperRegexEquiv!853 ((InoxSet Context!11602) List!65552 Regex!16417 List!65550) Unit!159003)

(assert (=> b!6544923 (= lt!2400235 (theoremZipperRegexEquiv!853 lt!2400270 lt!2400252 lt!2400232 (_2!36699 lt!2400243)))))

(assert (=> b!6544923 (matchR!8600 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243))))

(declare-fun lt!2400242 () List!65552)

(declare-fun lt!2400267 () (InoxSet Context!11602))

(declare-fun lt!2400269 () Unit!159003)

(assert (=> b!6544923 (= lt!2400269 (theoremZipperRegexEquiv!853 lt!2400267 lt!2400242 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243)))))

(declare-fun lt!2400240 () List!65551)

(declare-fun lt!2400244 () List!65551)

(declare-fun matchZipper!2429 ((InoxSet Context!11602) List!65550) Bool)

(declare-fun ++!14536 (List!65551 List!65551) List!65551)

(assert (=> b!6544923 (matchZipper!2429 (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 lt!2400240 lt!2400244)) true) lt!2400230)))

(declare-fun lt!2400225 () Unit!159003)

(declare-fun lambda!363275 () Int)

(declare-fun lemmaConcatPreservesForall!390 (List!65551 List!65551 Int) Unit!159003)

(assert (=> b!6544923 (= lt!2400225 (lemmaConcatPreservesForall!390 lt!2400240 lt!2400244 lambda!363275))))

(declare-fun lt!2400233 () Context!11602)

(declare-fun lt!2400266 () Unit!159003)

(declare-fun lt!2400257 () Context!11602)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!198 (Context!11602 Context!11602 List!65550 List!65550) Unit!159003)

(assert (=> b!6544923 (= lt!2400266 (lemmaConcatenateContextMatchesConcatOfStrings!198 lt!2400257 lt!2400233 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(declare-fun tp!1810704 () Bool)

(declare-fun setRes!44658 () Bool)

(declare-fun setElem!44658 () Context!11602)

(declare-fun e!3962899 () Bool)

(declare-fun setNonEmpty!44658 () Bool)

(declare-fun inv!84289 (Context!11602) Bool)

(assert (=> setNonEmpty!44658 (= setRes!44658 (and tp!1810704 (inv!84289 setElem!44658) e!3962899))))

(declare-fun z!1189 () (InoxSet Context!11602))

(declare-fun setRest!44658 () (InoxSet Context!11602))

(assert (=> setNonEmpty!44658 (= z!1189 ((_ map or) (store ((as const (Array Context!11602 Bool)) false) setElem!44658 true) setRest!44658))))

(declare-fun b!6544924 () Bool)

(declare-fun e!3962883 () Bool)

(declare-fun e!3962898 () Bool)

(assert (=> b!6544924 (= e!3962883 e!3962898)))

(declare-fun res!2684871 () Bool)

(assert (=> b!6544924 (=> res!2684871 e!3962898)))

(declare-fun unfocusZipper!2159 (List!65552) Regex!16417)

(assert (=> b!6544924 (= res!2684871 (not (= (unfocusZipper!2159 lt!2400252) lt!2400232)))))

(assert (=> b!6544924 (= lt!2400252 (Cons!65428 lt!2400233 Nil!65428))))

(declare-fun b!6544925 () Bool)

(declare-fun e!3962895 () Bool)

(declare-fun e!3962888 () Bool)

(assert (=> b!6544925 (= e!3962895 e!3962888)))

(declare-fun res!2684848 () Bool)

(assert (=> b!6544925 (=> res!2684848 e!3962888)))

(declare-fun lt!2400253 () (InoxSet Context!11602))

(declare-fun lt!2400229 () (InoxSet Context!11602))

(assert (=> b!6544925 (= res!2684848 (not (= lt!2400253 lt!2400229)))))

(declare-fun s!2326 () List!65550)

(declare-fun lt!2400241 () (InoxSet Context!11602))

(declare-fun lambda!363273 () Int)

(declare-fun lt!2400259 () Context!11602)

(declare-fun flatMap!1922 ((InoxSet Context!11602) Int) (InoxSet Context!11602))

(declare-fun derivationStepZipperUp!1591 (Context!11602 C!33104) (InoxSet Context!11602))

(assert (=> b!6544925 (= (flatMap!1922 lt!2400241 lambda!363273) (derivationStepZipperUp!1591 lt!2400259 (h!71874 s!2326)))))

(declare-fun lt!2400268 () Unit!159003)

(declare-fun lemmaFlatMapOnSingletonSet!1448 ((InoxSet Context!11602) Context!11602 Int) Unit!159003)

(assert (=> b!6544925 (= lt!2400268 (lemmaFlatMapOnSingletonSet!1448 lt!2400241 lt!2400259 lambda!363273))))

(declare-fun lt!2400274 () (InoxSet Context!11602))

(assert (=> b!6544925 (= lt!2400274 (derivationStepZipperUp!1591 lt!2400259 (h!71874 s!2326)))))

(declare-fun derivationStepZipper!2383 ((InoxSet Context!11602) C!33104) (InoxSet Context!11602))

(assert (=> b!6544925 (= lt!2400253 (derivationStepZipper!2383 lt!2400241 (h!71874 s!2326)))))

(assert (=> b!6544925 (= lt!2400241 (store ((as const (Array Context!11602 Bool)) false) lt!2400259 true))))

(assert (=> b!6544925 (= lt!2400259 (Context!11603 (Cons!65427 (reg!16746 (regOne!33346 r!7292)) lt!2400244)))))

(declare-fun b!6544926 () Bool)

(declare-fun res!2684855 () Bool)

(declare-fun e!3962885 () Bool)

(assert (=> b!6544926 (=> res!2684855 e!3962885)))

(declare-fun zl!343 () List!65552)

(declare-fun isEmpty!37645 (List!65551) Bool)

(assert (=> b!6544926 (= res!2684855 (isEmpty!37645 (t!379193 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6544927 () Bool)

(declare-fun e!3962887 () Bool)

(declare-fun e!3962903 () Bool)

(assert (=> b!6544927 (= e!3962887 e!3962903)))

(declare-fun res!2684843 () Bool)

(assert (=> b!6544927 (=> res!2684843 e!3962903)))

(assert (=> b!6544927 (= res!2684843 (not (= (unfocusZipper!2159 (Cons!65428 lt!2400259 Nil!65428)) lt!2400228)))))

(assert (=> b!6544927 (= lt!2400228 (Concat!25262 (reg!16746 (regOne!33346 r!7292)) lt!2400232))))

(declare-fun b!6544928 () Bool)

(declare-fun res!2684853 () Bool)

(declare-fun e!3962878 () Bool)

(assert (=> b!6544928 (=> res!2684853 e!3962878)))

(get-info :version)

(assert (=> b!6544928 (= res!2684853 (not ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6544929 () Bool)

(declare-fun res!2684872 () Bool)

(declare-fun e!3962904 () Bool)

(assert (=> b!6544929 (=> res!2684872 e!3962904)))

(declare-fun lt!2400265 () Regex!16417)

(assert (=> b!6544929 (= res!2684872 (not (= lt!2400265 r!7292)))))

(declare-fun b!6544930 () Bool)

(declare-fun e!3962886 () Bool)

(declare-fun e!3962900 () Bool)

(assert (=> b!6544930 (= e!3962886 e!3962900)))

(declare-fun res!2684861 () Bool)

(assert (=> b!6544930 (=> (not res!2684861) (not e!3962900))))

(assert (=> b!6544930 (= res!2684861 (= r!7292 lt!2400265))))

(assert (=> b!6544930 (= lt!2400265 (unfocusZipper!2159 zl!343))))

(declare-fun b!6544931 () Bool)

(assert (=> b!6544931 (= e!3962888 e!3962904)))

(declare-fun res!2684866 () Bool)

(assert (=> b!6544931 (=> res!2684866 e!3962904)))

(assert (=> b!6544931 (= res!2684866 (not (= lt!2400262 (matchZipper!2429 lt!2400253 (t!379192 s!2326)))))))

(assert (=> b!6544931 (= lt!2400262 (matchZipper!2429 lt!2400241 s!2326))))

(declare-fun b!6544932 () Bool)

(assert (=> b!6544932 (= e!3962892 (validRegex!8153 (regTwo!33346 r!7292)))))

(declare-fun b!6544933 () Bool)

(declare-fun tp!1810707 () Bool)

(assert (=> b!6544933 (= e!3962899 tp!1810707)))

(declare-fun b!6544934 () Bool)

(assert (=> b!6544934 (= e!3962900 (not e!3962878))))

(declare-fun res!2684841 () Bool)

(assert (=> b!6544934 (=> res!2684841 e!3962878)))

(assert (=> b!6544934 (= res!2684841 (not ((_ is Cons!65428) zl!343)))))

(declare-fun lt!2400271 () Bool)

(declare-fun matchRSpec!3518 (Regex!16417 List!65550) Bool)

(assert (=> b!6544934 (= lt!2400271 (matchRSpec!3518 r!7292 s!2326))))

(assert (=> b!6544934 (= lt!2400271 (matchR!8600 r!7292 s!2326))))

(declare-fun lt!2400272 () Unit!159003)

(declare-fun mainMatchTheorem!3518 (Regex!16417 List!65550) Unit!159003)

(assert (=> b!6544934 (= lt!2400272 (mainMatchTheorem!3518 r!7292 s!2326))))

(declare-fun b!6544935 () Bool)

(declare-fun res!2684864 () Bool)

(assert (=> b!6544935 (=> res!2684864 e!3962881)))

(assert (=> b!6544935 (= res!2684864 (not (matchZipper!2429 lt!2400270 (_2!36699 lt!2400243))))))

(declare-fun b!6544936 () Bool)

(declare-fun e!3962896 () Bool)

(declare-fun lt!2400256 () (InoxSet Context!11602))

(assert (=> b!6544936 (= e!3962896 (not (matchZipper!2429 lt!2400256 (t!379192 s!2326))))))

(declare-fun b!6544937 () Bool)

(declare-fun res!2684854 () Bool)

(assert (=> b!6544937 (=> res!2684854 e!3962881)))

(assert (=> b!6544937 (= res!2684854 (not (matchZipper!2429 lt!2400267 (_1!36699 lt!2400243))))))

(declare-fun b!6544938 () Bool)

(declare-fun res!2684859 () Bool)

(declare-fun e!3962890 () Bool)

(assert (=> b!6544938 (=> res!2684859 e!3962890)))

(assert (=> b!6544938 (= res!2684859 (not (matchZipper!2429 z!1189 s!2326)))))

(declare-fun b!6544939 () Bool)

(declare-fun res!2684846 () Bool)

(declare-fun e!3962894 () Bool)

(assert (=> b!6544939 (=> res!2684846 e!3962894)))

(assert (=> b!6544939 (= res!2684846 (or ((_ is Concat!25262) (regOne!33346 r!7292)) (not ((_ is Star!16417) (regOne!33346 r!7292)))))))

(assert (=> b!6544940 (= e!3962878 e!3962885)))

(declare-fun res!2684858 () Bool)

(assert (=> b!6544940 (=> res!2684858 e!3962885)))

(declare-fun lt!2400261 () Bool)

(assert (=> b!6544940 (= res!2684858 (or (not (= lt!2400271 lt!2400261)) ((_ is Nil!65426) s!2326)))))

(declare-fun Exists!3487 (Int) Bool)

(assert (=> b!6544940 (= (Exists!3487 lambda!363271) (Exists!3487 lambda!363272))))

(declare-fun lt!2400263 () Unit!159003)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2024 (Regex!16417 Regex!16417 List!65550) Unit!159003)

(assert (=> b!6544940 (= lt!2400263 (lemmaExistCutMatchRandMatchRSpecEquivalent!2024 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326))))

(assert (=> b!6544940 (= lt!2400261 (Exists!3487 lambda!363271))))

(declare-datatypes ((Option!16308 0))(
  ( (None!16307) (Some!16307 (v!52492 tuple2!66792)) )
))
(declare-fun isDefined!13011 (Option!16308) Bool)

(declare-fun findConcatSeparation!2722 (Regex!16417 Regex!16417 List!65550 List!65550 List!65550) Option!16308)

(assert (=> b!6544940 (= lt!2400261 (isDefined!13011 (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) Nil!65426 s!2326 s!2326)))))

(declare-fun lt!2400237 () Unit!159003)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2486 (Regex!16417 Regex!16417 List!65550) Unit!159003)

(assert (=> b!6544940 (= lt!2400237 (lemmaFindConcatSeparationEquivalentToExists!2486 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326))))

(declare-fun b!6544941 () Bool)

(declare-fun e!3962897 () Unit!159003)

(declare-fun Unit!159005 () Unit!159003)

(assert (=> b!6544941 (= e!3962897 Unit!159005)))

(declare-fun lt!2400264 () (InoxSet Context!11602))

(declare-fun lt!2400238 () Unit!159003)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1248 ((InoxSet Context!11602) (InoxSet Context!11602) List!65550) Unit!159003)

(assert (=> b!6544941 (= lt!2400238 (lemmaZipperConcatMatchesSameAsBothZippers!1248 lt!2400264 lt!2400256 (t!379192 s!2326)))))

(declare-fun res!2684873 () Bool)

(assert (=> b!6544941 (= res!2684873 (matchZipper!2429 lt!2400264 (t!379192 s!2326)))))

(declare-fun e!3962884 () Bool)

(assert (=> b!6544941 (=> res!2684873 e!3962884)))

(assert (=> b!6544941 (= (matchZipper!2429 ((_ map or) lt!2400264 lt!2400256) (t!379192 s!2326)) e!3962884)))

(declare-fun b!6544942 () Bool)

(declare-fun res!2684874 () Bool)

(assert (=> b!6544942 (=> (not res!2684874) (not e!3962892))))

(declare-fun lt!2400258 () Regex!16417)

(assert (=> b!6544942 (= res!2684874 (validRegex!8153 lt!2400258))))

(declare-fun b!6544943 () Bool)

(declare-fun e!3962891 () Bool)

(declare-fun tp_is_empty!42087 () Bool)

(assert (=> b!6544943 (= e!3962891 tp_is_empty!42087)))

(declare-fun b!6544944 () Bool)

(declare-fun res!2684851 () Bool)

(assert (=> b!6544944 (=> res!2684851 e!3962878)))

(declare-fun isEmpty!37646 (List!65552) Bool)

(assert (=> b!6544944 (= res!2684851 (not (isEmpty!37646 (t!379194 zl!343))))))

(declare-fun b!6544945 () Bool)

(declare-fun tp!1810705 () Bool)

(declare-fun tp!1810703 () Bool)

(assert (=> b!6544945 (= e!3962891 (and tp!1810705 tp!1810703))))

(declare-fun b!6544946 () Bool)

(declare-fun e!3962902 () Bool)

(assert (=> b!6544946 (= e!3962902 e!3962881)))

(declare-fun res!2684856 () Bool)

(assert (=> b!6544946 (=> res!2684856 e!3962881)))

(assert (=> b!6544946 (= res!2684856 (not (= s!2326 lt!2400230)))))

(declare-fun ++!14537 (List!65550 List!65550) List!65550)

(assert (=> b!6544946 (= lt!2400230 (++!14537 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(declare-fun lt!2400254 () Option!16308)

(declare-fun get!22707 (Option!16308) tuple2!66792)

(assert (=> b!6544946 (= lt!2400243 (get!22707 lt!2400254))))

(assert (=> b!6544946 (isDefined!13011 lt!2400254)))

(declare-fun findConcatSeparationZippers!182 ((InoxSet Context!11602) (InoxSet Context!11602) List!65550 List!65550 List!65550) Option!16308)

(assert (=> b!6544946 (= lt!2400254 (findConcatSeparationZippers!182 lt!2400267 lt!2400270 Nil!65426 s!2326 s!2326))))

(declare-fun lt!2400249 () Unit!159003)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!182 ((InoxSet Context!11602) Context!11602 List!65550) Unit!159003)

(assert (=> b!6544946 (= lt!2400249 (lemmaConcatZipperMatchesStringThenFindConcatDefined!182 lt!2400267 lt!2400233 s!2326))))

(declare-fun b!6544947 () Bool)

(declare-fun tp!1810702 () Bool)

(declare-fun tp!1810711 () Bool)

(assert (=> b!6544947 (= e!3962891 (and tp!1810702 tp!1810711))))

(declare-fun b!6544948 () Bool)

(assert (=> b!6544948 (= e!3962890 e!3962879)))

(declare-fun res!2684844 () Bool)

(assert (=> b!6544948 (=> res!2684844 e!3962879)))

(assert (=> b!6544948 (= res!2684844 e!3962896)))

(declare-fun res!2684875 () Bool)

(assert (=> b!6544948 (=> (not res!2684875) (not e!3962896))))

(assert (=> b!6544948 (= res!2684875 (not lt!2400236))))

(assert (=> b!6544948 (= lt!2400236 (matchZipper!2429 lt!2400264 (t!379192 s!2326)))))

(declare-fun b!6544949 () Bool)

(declare-fun res!2684867 () Bool)

(assert (=> b!6544949 (=> res!2684867 e!3962894)))

(declare-fun e!3962901 () Bool)

(assert (=> b!6544949 (= res!2684867 e!3962901)))

(declare-fun res!2684860 () Bool)

(assert (=> b!6544949 (=> (not res!2684860) (not e!3962901))))

(assert (=> b!6544949 (= res!2684860 ((_ is Concat!25262) (regOne!33346 r!7292)))))

(assert (=> b!6544950 (= e!3962879 e!3962902)))

(declare-fun res!2684850 () Bool)

(assert (=> b!6544950 (=> res!2684850 e!3962902)))

(declare-fun appendTo!178 ((InoxSet Context!11602) Context!11602) (InoxSet Context!11602))

(assert (=> b!6544950 (= res!2684850 (not (= (appendTo!178 lt!2400267 lt!2400233) lt!2400241)))))

(declare-fun lambda!363274 () Int)

(declare-fun map!14934 ((InoxSet Context!11602) Int) (InoxSet Context!11602))

(assert (=> b!6544950 (= (map!14934 lt!2400267 lambda!363274) (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 lt!2400240 lt!2400244)) true))))

(declare-fun lt!2400226 () Unit!159003)

(assert (=> b!6544950 (= lt!2400226 (lemmaConcatPreservesForall!390 lt!2400240 lt!2400244 lambda!363275))))

(declare-fun lt!2400227 () Unit!159003)

(declare-fun lemmaMapOnSingletonSet!200 ((InoxSet Context!11602) Context!11602 Int) Unit!159003)

(assert (=> b!6544950 (= lt!2400227 (lemmaMapOnSingletonSet!200 lt!2400267 lt!2400257 lambda!363274))))

(declare-fun b!6544951 () Bool)

(assert (=> b!6544951 (= e!3962903 e!3962883)))

(declare-fun res!2684847 () Bool)

(assert (=> b!6544951 (=> res!2684847 e!3962883)))

(assert (=> b!6544951 (= res!2684847 (not (= (unfocusZipper!2159 lt!2400242) (reg!16746 (regOne!33346 r!7292)))))))

(assert (=> b!6544951 (= lt!2400242 (Cons!65428 lt!2400257 Nil!65428))))

(assert (=> b!6544951 (= (flatMap!1922 lt!2400270 lambda!363273) (derivationStepZipperUp!1591 lt!2400233 (h!71874 s!2326)))))

(declare-fun lt!2400255 () Unit!159003)

(assert (=> b!6544951 (= lt!2400255 (lemmaFlatMapOnSingletonSet!1448 lt!2400270 lt!2400233 lambda!363273))))

(assert (=> b!6544951 (= (flatMap!1922 lt!2400267 lambda!363273) (derivationStepZipperUp!1591 lt!2400257 (h!71874 s!2326)))))

(declare-fun lt!2400251 () Unit!159003)

(assert (=> b!6544951 (= lt!2400251 (lemmaFlatMapOnSingletonSet!1448 lt!2400267 lt!2400257 lambda!363273))))

(declare-fun lt!2400250 () (InoxSet Context!11602))

(assert (=> b!6544951 (= lt!2400250 (derivationStepZipperUp!1591 lt!2400233 (h!71874 s!2326)))))

(declare-fun lt!2400248 () (InoxSet Context!11602))

(assert (=> b!6544951 (= lt!2400248 (derivationStepZipperUp!1591 lt!2400257 (h!71874 s!2326)))))

(assert (=> b!6544951 (= lt!2400270 (store ((as const (Array Context!11602 Bool)) false) lt!2400233 true))))

(assert (=> b!6544951 (= lt!2400267 (store ((as const (Array Context!11602 Bool)) false) lt!2400257 true))))

(assert (=> b!6544951 (= lt!2400257 (Context!11603 lt!2400240))))

(assert (=> b!6544951 (= lt!2400240 (Cons!65427 (reg!16746 (regOne!33346 r!7292)) Nil!65427))))

(assert (=> b!6544952 (= e!3962885 e!3962894)))

(declare-fun res!2684869 () Bool)

(assert (=> b!6544952 (=> res!2684869 e!3962894)))

(assert (=> b!6544952 (= res!2684869 (or (and ((_ is ElementMatch!16417) (regOne!33346 r!7292)) (= (c!1201926 (regOne!33346 r!7292)) (h!71874 s!2326))) ((_ is Union!16417) (regOne!33346 r!7292))))))

(declare-fun lt!2400260 () Unit!159003)

(assert (=> b!6544952 (= lt!2400260 e!3962897)))

(declare-fun c!1201925 () Bool)

(declare-fun lt!2400246 () Bool)

(assert (=> b!6544952 (= c!1201925 lt!2400246)))

(declare-fun nullable!6410 (Regex!16417) Bool)

(assert (=> b!6544952 (= lt!2400246 (nullable!6410 (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(assert (=> b!6544952 (= (flatMap!1922 z!1189 lambda!363273) (derivationStepZipperUp!1591 (h!71876 zl!343) (h!71874 s!2326)))))

(declare-fun lt!2400273 () Unit!159003)

(assert (=> b!6544952 (= lt!2400273 (lemmaFlatMapOnSingletonSet!1448 z!1189 (h!71876 zl!343) lambda!363273))))

(declare-fun lt!2400245 () Context!11602)

(assert (=> b!6544952 (= lt!2400256 (derivationStepZipperUp!1591 lt!2400245 (h!71874 s!2326)))))

(declare-fun derivationStepZipperDown!1665 (Regex!16417 Context!11602 C!33104) (InoxSet Context!11602))

(assert (=> b!6544952 (= lt!2400264 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 (h!71876 zl!343))) lt!2400245 (h!71874 s!2326)))))

(assert (=> b!6544952 (= lt!2400245 (Context!11603 (t!379193 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun lt!2400234 () (InoxSet Context!11602))

(assert (=> b!6544952 (= lt!2400234 (derivationStepZipperUp!1591 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343))))) (h!71874 s!2326)))))

(declare-fun b!6544953 () Bool)

(assert (=> b!6544953 (= e!3962898 e!3962890)))

(declare-fun res!2684857 () Bool)

(assert (=> b!6544953 (=> res!2684857 e!3962890)))

(assert (=> b!6544953 (= res!2684857 lt!2400271)))

(declare-fun lt!2400239 () Bool)

(assert (=> b!6544953 (= lt!2400239 (matchRSpec!3518 lt!2400228 s!2326))))

(assert (=> b!6544953 (= lt!2400239 (matchR!8600 lt!2400228 s!2326))))

(declare-fun lt!2400231 () Unit!159003)

(assert (=> b!6544953 (= lt!2400231 (mainMatchTheorem!3518 lt!2400228 s!2326))))

(declare-fun b!6544954 () Bool)

(declare-fun res!2684870 () Bool)

(assert (=> b!6544954 (=> res!2684870 e!3962878)))

(declare-fun generalisedUnion!2261 (List!65551) Regex!16417)

(declare-fun unfocusZipperList!1838 (List!65552) List!65551)

(assert (=> b!6544954 (= res!2684870 (not (= r!7292 (generalisedUnion!2261 (unfocusZipperList!1838 zl!343)))))))

(declare-fun res!2684852 () Bool)

(assert (=> start!641274 (=> (not res!2684852) (not e!3962886))))

(assert (=> start!641274 (= res!2684852 (validRegex!8153 r!7292))))

(assert (=> start!641274 e!3962886))

(assert (=> start!641274 e!3962891))

(declare-fun condSetEmpty!44658 () Bool)

(assert (=> start!641274 (= condSetEmpty!44658 (= z!1189 ((as const (Array Context!11602 Bool)) false)))))

(assert (=> start!641274 setRes!44658))

(declare-fun e!3962880 () Bool)

(assert (=> start!641274 e!3962880))

(declare-fun e!3962882 () Bool)

(assert (=> start!641274 e!3962882))

(declare-fun setIsEmpty!44658 () Bool)

(assert (=> setIsEmpty!44658 setRes!44658))

(declare-fun b!6544955 () Bool)

(declare-fun Unit!159006 () Unit!159003)

(assert (=> b!6544955 (= e!3962897 Unit!159006)))

(declare-fun b!6544956 () Bool)

(declare-fun tp!1810709 () Bool)

(assert (=> b!6544956 (= e!3962882 (and tp_is_empty!42087 tp!1810709))))

(declare-fun b!6544957 () Bool)

(declare-fun res!2684863 () Bool)

(assert (=> b!6544957 (=> res!2684863 e!3962890)))

(assert (=> b!6544957 (= res!2684863 (not lt!2400246))))

(declare-fun b!6544958 () Bool)

(declare-fun res!2684862 () Bool)

(assert (=> b!6544958 (=> res!2684862 e!3962878)))

(assert (=> b!6544958 (= res!2684862 (or ((_ is EmptyExpr!16417) r!7292) ((_ is EmptyLang!16417) r!7292) ((_ is ElementMatch!16417) r!7292) ((_ is Union!16417) r!7292) (not ((_ is Concat!25262) r!7292))))))

(declare-fun b!6544959 () Bool)

(assert (=> b!6544959 (= e!3962904 e!3962887)))

(declare-fun res!2684840 () Bool)

(assert (=> b!6544959 (=> res!2684840 e!3962887)))

(assert (=> b!6544959 (= res!2684840 (not (= r!7292 lt!2400232)))))

(assert (=> b!6544959 (= lt!2400232 (Concat!25262 lt!2400258 (regTwo!33346 r!7292)))))

(declare-fun b!6544960 () Bool)

(declare-fun e!3962893 () Bool)

(declare-fun tp!1810706 () Bool)

(assert (=> b!6544960 (= e!3962893 tp!1810706)))

(declare-fun b!6544961 () Bool)

(declare-fun res!2684876 () Bool)

(assert (=> b!6544961 (=> res!2684876 e!3962878)))

(declare-fun generalisedConcat!2014 (List!65551) Regex!16417)

(assert (=> b!6544961 (= res!2684876 (not (= r!7292 (generalisedConcat!2014 (exprs!6301 (h!71876 zl!343))))))))

(declare-fun b!6544962 () Bool)

(assert (=> b!6544962 (= e!3962894 e!3962895)))

(declare-fun res!2684845 () Bool)

(assert (=> b!6544962 (=> res!2684845 e!3962895)))

(assert (=> b!6544962 (= res!2684845 (not (= lt!2400264 lt!2400229)))))

(assert (=> b!6544962 (= lt!2400229 (derivationStepZipperDown!1665 (reg!16746 (regOne!33346 r!7292)) lt!2400233 (h!71874 s!2326)))))

(assert (=> b!6544962 (= lt!2400233 (Context!11603 lt!2400244))))

(assert (=> b!6544962 (= lt!2400244 (Cons!65427 lt!2400258 (t!379193 (exprs!6301 (h!71876 zl!343)))))))

(assert (=> b!6544962 (= lt!2400258 (Star!16417 (reg!16746 (regOne!33346 r!7292))))))

(declare-fun b!6544963 () Bool)

(assert (=> b!6544963 (= e!3962889 lt!2400239)))

(declare-fun b!6544964 () Bool)

(assert (=> b!6544964 (= e!3962901 (nullable!6410 (regOne!33346 (regOne!33346 r!7292))))))

(declare-fun b!6544965 () Bool)

(assert (=> b!6544965 (= e!3962884 (matchZipper!2429 lt!2400256 (t!379192 s!2326)))))

(declare-fun tp!1810708 () Bool)

(declare-fun b!6544966 () Bool)

(assert (=> b!6544966 (= e!3962880 (and (inv!84289 (h!71876 zl!343)) e!3962893 tp!1810708))))

(declare-fun b!6544967 () Bool)

(declare-fun tp!1810710 () Bool)

(assert (=> b!6544967 (= e!3962891 tp!1810710)))

(declare-fun b!6544968 () Bool)

(declare-fun res!2684865 () Bool)

(assert (=> b!6544968 (=> (not res!2684865) (not e!3962886))))

(declare-fun toList!10201 ((InoxSet Context!11602)) List!65552)

(assert (=> b!6544968 (= res!2684865 (= (toList!10201 z!1189) zl!343))))

(assert (= (and start!641274 res!2684852) b!6544968))

(assert (= (and b!6544968 res!2684865) b!6544930))

(assert (= (and b!6544930 res!2684861) b!6544934))

(assert (= (and b!6544934 (not res!2684841)) b!6544944))

(assert (= (and b!6544944 (not res!2684851)) b!6544961))

(assert (= (and b!6544961 (not res!2684876)) b!6544928))

(assert (= (and b!6544928 (not res!2684853)) b!6544954))

(assert (= (and b!6544954 (not res!2684870)) b!6544958))

(assert (= (and b!6544958 (not res!2684862)) b!6544940))

(assert (= (and b!6544940 (not res!2684858)) b!6544926))

(assert (= (and b!6544926 (not res!2684855)) b!6544952))

(assert (= (and b!6544952 c!1201925) b!6544941))

(assert (= (and b!6544952 (not c!1201925)) b!6544955))

(assert (= (and b!6544941 (not res!2684873)) b!6544965))

(assert (= (and b!6544952 (not res!2684869)) b!6544949))

(assert (= (and b!6544949 res!2684860) b!6544964))

(assert (= (and b!6544949 (not res!2684867)) b!6544939))

(assert (= (and b!6544939 (not res!2684846)) b!6544962))

(assert (= (and b!6544962 (not res!2684845)) b!6544925))

(assert (= (and b!6544925 (not res!2684848)) b!6544931))

(assert (= (and b!6544931 (not res!2684866)) b!6544929))

(assert (= (and b!6544929 (not res!2684872)) b!6544959))

(assert (= (and b!6544959 (not res!2684840)) b!6544927))

(assert (= (and b!6544927 (not res!2684843)) b!6544951))

(assert (= (and b!6544951 (not res!2684847)) b!6544924))

(assert (= (and b!6544924 (not res!2684871)) b!6544953))

(assert (= (and b!6544953 (not res!2684857)) b!6544938))

(assert (= (and b!6544938 (not res!2684859)) b!6544957))

(assert (= (and b!6544957 (not res!2684863)) b!6544948))

(assert (= (and b!6544948 res!2684875) b!6544936))

(assert (= (and b!6544948 (not res!2684844)) b!6544922))

(assert (= (and b!6544922 (not res!2684868)) b!6544950))

(assert (= (and b!6544950 (not res!2684850)) b!6544946))

(assert (= (and b!6544946 (not res!2684856)) b!6544937))

(assert (= (and b!6544937 (not res!2684854)) b!6544935))

(assert (= (and b!6544935 (not res!2684864)) b!6544923))

(assert (= (and b!6544923 res!2684849) b!6544963))

(assert (= (and b!6544923 res!2684842) b!6544942))

(assert (= (and b!6544942 res!2684874) b!6544932))

(assert (= (and start!641274 ((_ is ElementMatch!16417) r!7292)) b!6544943))

(assert (= (and start!641274 ((_ is Concat!25262) r!7292)) b!6544945))

(assert (= (and start!641274 ((_ is Star!16417) r!7292)) b!6544967))

(assert (= (and start!641274 ((_ is Union!16417) r!7292)) b!6544947))

(assert (= (and start!641274 condSetEmpty!44658) setIsEmpty!44658))

(assert (= (and start!641274 (not condSetEmpty!44658)) setNonEmpty!44658))

(assert (= setNonEmpty!44658 b!6544933))

(assert (= b!6544966 b!6544960))

(assert (= (and start!641274 ((_ is Cons!65428) zl!343)) b!6544966))

(assert (= (and start!641274 ((_ is Cons!65426) s!2326)) b!6544956))

(declare-fun m!7327868 () Bool)

(assert (=> b!6544953 m!7327868))

(declare-fun m!7327870 () Bool)

(assert (=> b!6544953 m!7327870))

(declare-fun m!7327872 () Bool)

(assert (=> b!6544953 m!7327872))

(declare-fun m!7327874 () Bool)

(assert (=> b!6544925 m!7327874))

(declare-fun m!7327876 () Bool)

(assert (=> b!6544925 m!7327876))

(declare-fun m!7327878 () Bool)

(assert (=> b!6544925 m!7327878))

(declare-fun m!7327880 () Bool)

(assert (=> b!6544925 m!7327880))

(declare-fun m!7327882 () Bool)

(assert (=> b!6544925 m!7327882))

(declare-fun m!7327884 () Bool)

(assert (=> b!6544940 m!7327884))

(declare-fun m!7327886 () Bool)

(assert (=> b!6544940 m!7327886))

(declare-fun m!7327888 () Bool)

(assert (=> b!6544940 m!7327888))

(assert (=> b!6544940 m!7327884))

(declare-fun m!7327890 () Bool)

(assert (=> b!6544940 m!7327890))

(declare-fun m!7327892 () Bool)

(assert (=> b!6544940 m!7327892))

(assert (=> b!6544940 m!7327886))

(declare-fun m!7327894 () Bool)

(assert (=> b!6544940 m!7327894))

(declare-fun m!7327896 () Bool)

(assert (=> b!6544964 m!7327896))

(declare-fun m!7327898 () Bool)

(assert (=> b!6544937 m!7327898))

(declare-fun m!7327900 () Bool)

(assert (=> b!6544944 m!7327900))

(declare-fun m!7327902 () Bool)

(assert (=> b!6544923 m!7327902))

(declare-fun m!7327904 () Bool)

(assert (=> b!6544923 m!7327904))

(declare-fun m!7327906 () Bool)

(assert (=> b!6544923 m!7327906))

(declare-fun m!7327908 () Bool)

(assert (=> b!6544923 m!7327908))

(declare-fun m!7327910 () Bool)

(assert (=> b!6544923 m!7327910))

(declare-fun m!7327912 () Bool)

(assert (=> b!6544923 m!7327912))

(declare-fun m!7327914 () Bool)

(assert (=> b!6544923 m!7327914))

(declare-fun m!7327916 () Bool)

(assert (=> b!6544923 m!7327916))

(declare-fun m!7327918 () Bool)

(assert (=> b!6544923 m!7327918))

(assert (=> b!6544923 m!7327908))

(declare-fun m!7327920 () Bool)

(assert (=> b!6544923 m!7327920))

(declare-fun m!7327922 () Bool)

(assert (=> b!6544923 m!7327922))

(declare-fun m!7327924 () Bool)

(assert (=> b!6544923 m!7327924))

(declare-fun m!7327926 () Bool)

(assert (=> b!6544931 m!7327926))

(declare-fun m!7327928 () Bool)

(assert (=> b!6544931 m!7327928))

(declare-fun m!7327930 () Bool)

(assert (=> start!641274 m!7327930))

(declare-fun m!7327932 () Bool)

(assert (=> b!6544941 m!7327932))

(declare-fun m!7327934 () Bool)

(assert (=> b!6544941 m!7327934))

(declare-fun m!7327936 () Bool)

(assert (=> b!6544941 m!7327936))

(declare-fun m!7327938 () Bool)

(assert (=> b!6544965 m!7327938))

(declare-fun m!7327940 () Bool)

(assert (=> b!6544951 m!7327940))

(declare-fun m!7327942 () Bool)

(assert (=> b!6544951 m!7327942))

(declare-fun m!7327944 () Bool)

(assert (=> b!6544951 m!7327944))

(declare-fun m!7327946 () Bool)

(assert (=> b!6544951 m!7327946))

(declare-fun m!7327948 () Bool)

(assert (=> b!6544951 m!7327948))

(declare-fun m!7327950 () Bool)

(assert (=> b!6544951 m!7327950))

(declare-fun m!7327952 () Bool)

(assert (=> b!6544951 m!7327952))

(declare-fun m!7327954 () Bool)

(assert (=> b!6544951 m!7327954))

(declare-fun m!7327956 () Bool)

(assert (=> b!6544951 m!7327956))

(declare-fun m!7327958 () Bool)

(assert (=> b!6544946 m!7327958))

(declare-fun m!7327960 () Bool)

(assert (=> b!6544946 m!7327960))

(declare-fun m!7327962 () Bool)

(assert (=> b!6544946 m!7327962))

(declare-fun m!7327964 () Bool)

(assert (=> b!6544946 m!7327964))

(declare-fun m!7327966 () Bool)

(assert (=> b!6544946 m!7327966))

(declare-fun m!7327968 () Bool)

(assert (=> b!6544938 m!7327968))

(declare-fun m!7327970 () Bool)

(assert (=> b!6544934 m!7327970))

(declare-fun m!7327972 () Bool)

(assert (=> b!6544934 m!7327972))

(declare-fun m!7327974 () Bool)

(assert (=> b!6544934 m!7327974))

(declare-fun m!7327976 () Bool)

(assert (=> b!6544954 m!7327976))

(assert (=> b!6544954 m!7327976))

(declare-fun m!7327978 () Bool)

(assert (=> b!6544954 m!7327978))

(declare-fun m!7327980 () Bool)

(assert (=> b!6544930 m!7327980))

(declare-fun m!7327982 () Bool)

(assert (=> b!6544927 m!7327982))

(declare-fun m!7327984 () Bool)

(assert (=> b!6544966 m!7327984))

(declare-fun m!7327986 () Bool)

(assert (=> b!6544932 m!7327986))

(assert (=> b!6544948 m!7327934))

(declare-fun m!7327988 () Bool)

(assert (=> b!6544926 m!7327988))

(declare-fun m!7327990 () Bool)

(assert (=> b!6544950 m!7327990))

(assert (=> b!6544950 m!7327906))

(assert (=> b!6544950 m!7327916))

(declare-fun m!7327992 () Bool)

(assert (=> b!6544950 m!7327992))

(assert (=> b!6544950 m!7327908))

(declare-fun m!7327994 () Bool)

(assert (=> b!6544950 m!7327994))

(declare-fun m!7327996 () Bool)

(assert (=> b!6544961 m!7327996))

(declare-fun m!7327998 () Bool)

(assert (=> b!6544942 m!7327998))

(declare-fun m!7328000 () Bool)

(assert (=> b!6544968 m!7328000))

(declare-fun m!7328002 () Bool)

(assert (=> setNonEmpty!44658 m!7328002))

(declare-fun m!7328004 () Bool)

(assert (=> b!6544962 m!7328004))

(declare-fun m!7328006 () Bool)

(assert (=> b!6544935 m!7328006))

(declare-fun m!7328008 () Bool)

(assert (=> b!6544924 m!7328008))

(assert (=> b!6544936 m!7327938))

(declare-fun m!7328010 () Bool)

(assert (=> b!6544952 m!7328010))

(declare-fun m!7328012 () Bool)

(assert (=> b!6544952 m!7328012))

(declare-fun m!7328014 () Bool)

(assert (=> b!6544952 m!7328014))

(declare-fun m!7328016 () Bool)

(assert (=> b!6544952 m!7328016))

(declare-fun m!7328018 () Bool)

(assert (=> b!6544952 m!7328018))

(declare-fun m!7328020 () Bool)

(assert (=> b!6544952 m!7328020))

(declare-fun m!7328022 () Bool)

(assert (=> b!6544952 m!7328022))

(check-sat (not b!6544941) (not b!6544962) (not b!6544932) (not b!6544945) (not b!6544938) (not b!6544964) (not b!6544934) (not b!6544965) (not b!6544966) (not b!6544950) (not b!6544936) (not b!6544944) (not b!6544927) (not b!6544937) (not b!6544925) (not b!6544930) (not b!6544946) (not b!6544926) (not b!6544953) (not b!6544967) (not b!6544923) (not b!6544935) (not setNonEmpty!44658) (not b!6544942) tp_is_empty!42087 (not b!6544968) (not start!641274) (not b!6544960) (not b!6544940) (not b!6544947) (not b!6544956) (not b!6544952) (not b!6544948) (not b!6544924) (not b!6544931) (not b!6544933) (not b!6544961) (not b!6544954) (not b!6544951))
(check-sat)
(get-model)

(declare-fun d!2054584 () Bool)

(declare-fun lt!2400277 () Regex!16417)

(assert (=> d!2054584 (validRegex!8153 lt!2400277)))

(assert (=> d!2054584 (= lt!2400277 (generalisedUnion!2261 (unfocusZipperList!1838 (Cons!65428 lt!2400259 Nil!65428))))))

(assert (=> d!2054584 (= (unfocusZipper!2159 (Cons!65428 lt!2400259 Nil!65428)) lt!2400277)))

(declare-fun bs!1671460 () Bool)

(assert (= bs!1671460 d!2054584))

(declare-fun m!7328024 () Bool)

(assert (=> bs!1671460 m!7328024))

(declare-fun m!7328026 () Bool)

(assert (=> bs!1671460 m!7328026))

(assert (=> bs!1671460 m!7328026))

(declare-fun m!7328028 () Bool)

(assert (=> bs!1671460 m!7328028))

(assert (=> b!6544927 d!2054584))

(declare-fun d!2054586 () Bool)

(declare-fun c!1201929 () Bool)

(declare-fun isEmpty!37649 (List!65550) Bool)

(assert (=> d!2054586 (= c!1201929 (isEmpty!37649 (t!379192 s!2326)))))

(declare-fun e!3962907 () Bool)

(assert (=> d!2054586 (= (matchZipper!2429 lt!2400264 (t!379192 s!2326)) e!3962907)))

(declare-fun b!6544981 () Bool)

(declare-fun nullableZipper!2161 ((InoxSet Context!11602)) Bool)

(assert (=> b!6544981 (= e!3962907 (nullableZipper!2161 lt!2400264))))

(declare-fun b!6544982 () Bool)

(declare-fun head!13284 (List!65550) C!33104)

(declare-fun tail!12369 (List!65550) List!65550)

(assert (=> b!6544982 (= e!3962907 (matchZipper!2429 (derivationStepZipper!2383 lt!2400264 (head!13284 (t!379192 s!2326))) (tail!12369 (t!379192 s!2326))))))

(assert (= (and d!2054586 c!1201929) b!6544981))

(assert (= (and d!2054586 (not c!1201929)) b!6544982))

(declare-fun m!7328030 () Bool)

(assert (=> d!2054586 m!7328030))

(declare-fun m!7328032 () Bool)

(assert (=> b!6544981 m!7328032))

(declare-fun m!7328034 () Bool)

(assert (=> b!6544982 m!7328034))

(assert (=> b!6544982 m!7328034))

(declare-fun m!7328036 () Bool)

(assert (=> b!6544982 m!7328036))

(declare-fun m!7328038 () Bool)

(assert (=> b!6544982 m!7328038))

(assert (=> b!6544982 m!7328036))

(assert (=> b!6544982 m!7328038))

(declare-fun m!7328040 () Bool)

(assert (=> b!6544982 m!7328040))

(assert (=> b!6544948 d!2054586))

(declare-fun d!2054590 () Bool)

(declare-fun e!3962910 () Bool)

(assert (=> d!2054590 e!3962910))

(declare-fun res!2684881 () Bool)

(assert (=> d!2054590 (=> (not res!2684881) (not e!3962910))))

(declare-fun lt!2400280 () List!65552)

(declare-fun noDuplicate!2222 (List!65552) Bool)

(assert (=> d!2054590 (= res!2684881 (noDuplicate!2222 lt!2400280))))

(declare-fun choose!48611 ((InoxSet Context!11602)) List!65552)

(assert (=> d!2054590 (= lt!2400280 (choose!48611 z!1189))))

(assert (=> d!2054590 (= (toList!10201 z!1189) lt!2400280)))

(declare-fun b!6544985 () Bool)

(declare-fun content!12531 (List!65552) (InoxSet Context!11602))

(assert (=> b!6544985 (= e!3962910 (= (content!12531 lt!2400280) z!1189))))

(assert (= (and d!2054590 res!2684881) b!6544985))

(declare-fun m!7328042 () Bool)

(assert (=> d!2054590 m!7328042))

(declare-fun m!7328044 () Bool)

(assert (=> d!2054590 m!7328044))

(declare-fun m!7328046 () Bool)

(assert (=> b!6544985 m!7328046))

(assert (=> b!6544968 d!2054590))

(declare-fun d!2054592 () Bool)

(assert (=> d!2054592 (= (isEmpty!37645 (t!379193 (exprs!6301 (h!71876 zl!343)))) ((_ is Nil!65427) (t!379193 (exprs!6301 (h!71876 zl!343)))))))

(assert (=> b!6544926 d!2054592))

(declare-fun bm!569223 () Bool)

(declare-fun call!569228 () (InoxSet Context!11602))

(assert (=> bm!569223 (= call!569228 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 lt!2400233)) (Context!11603 (t!379193 (exprs!6301 lt!2400233))) (h!71874 s!2326)))))

(declare-fun b!6545023 () Bool)

(declare-fun e!3962933 () Bool)

(assert (=> b!6545023 (= e!3962933 (nullable!6410 (h!71875 (exprs!6301 lt!2400233))))))

(declare-fun b!6545024 () Bool)

(declare-fun e!3962932 () (InoxSet Context!11602))

(assert (=> b!6545024 (= e!3962932 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545025 () Bool)

(declare-fun e!3962934 () (InoxSet Context!11602))

(assert (=> b!6545025 (= e!3962934 e!3962932)))

(declare-fun c!1201941 () Bool)

(assert (=> b!6545025 (= c!1201941 ((_ is Cons!65427) (exprs!6301 lt!2400233)))))

(declare-fun d!2054594 () Bool)

(declare-fun c!1201940 () Bool)

(assert (=> d!2054594 (= c!1201940 e!3962933)))

(declare-fun res!2684899 () Bool)

(assert (=> d!2054594 (=> (not res!2684899) (not e!3962933))))

(assert (=> d!2054594 (= res!2684899 ((_ is Cons!65427) (exprs!6301 lt!2400233)))))

(assert (=> d!2054594 (= (derivationStepZipperUp!1591 lt!2400233 (h!71874 s!2326)) e!3962934)))

(declare-fun b!6545026 () Bool)

(assert (=> b!6545026 (= e!3962934 ((_ map or) call!569228 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 lt!2400233))) (h!71874 s!2326))))))

(declare-fun b!6545027 () Bool)

(assert (=> b!6545027 (= e!3962932 call!569228)))

(assert (= (and d!2054594 res!2684899) b!6545023))

(assert (= (and d!2054594 c!1201940) b!6545026))

(assert (= (and d!2054594 (not c!1201940)) b!6545025))

(assert (= (and b!6545025 c!1201941) b!6545027))

(assert (= (and b!6545025 (not c!1201941)) b!6545024))

(assert (= (or b!6545026 b!6545027) bm!569223))

(declare-fun m!7328074 () Bool)

(assert (=> bm!569223 m!7328074))

(declare-fun m!7328076 () Bool)

(assert (=> b!6545023 m!7328076))

(declare-fun m!7328078 () Bool)

(assert (=> b!6545026 m!7328078))

(assert (=> b!6544951 d!2054594))

(declare-fun bm!569224 () Bool)

(declare-fun call!569229 () (InoxSet Context!11602))

(assert (=> bm!569224 (= call!569229 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 lt!2400257)) (Context!11603 (t!379193 (exprs!6301 lt!2400257))) (h!71874 s!2326)))))

(declare-fun b!6545028 () Bool)

(declare-fun e!3962936 () Bool)

(assert (=> b!6545028 (= e!3962936 (nullable!6410 (h!71875 (exprs!6301 lt!2400257))))))

(declare-fun b!6545029 () Bool)

(declare-fun e!3962935 () (InoxSet Context!11602))

(assert (=> b!6545029 (= e!3962935 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545030 () Bool)

(declare-fun e!3962937 () (InoxSet Context!11602))

(assert (=> b!6545030 (= e!3962937 e!3962935)))

(declare-fun c!1201943 () Bool)

(assert (=> b!6545030 (= c!1201943 ((_ is Cons!65427) (exprs!6301 lt!2400257)))))

(declare-fun d!2054600 () Bool)

(declare-fun c!1201942 () Bool)

(assert (=> d!2054600 (= c!1201942 e!3962936)))

(declare-fun res!2684900 () Bool)

(assert (=> d!2054600 (=> (not res!2684900) (not e!3962936))))

(assert (=> d!2054600 (= res!2684900 ((_ is Cons!65427) (exprs!6301 lt!2400257)))))

(assert (=> d!2054600 (= (derivationStepZipperUp!1591 lt!2400257 (h!71874 s!2326)) e!3962937)))

(declare-fun b!6545031 () Bool)

(assert (=> b!6545031 (= e!3962937 ((_ map or) call!569229 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 lt!2400257))) (h!71874 s!2326))))))

(declare-fun b!6545032 () Bool)

(assert (=> b!6545032 (= e!3962935 call!569229)))

(assert (= (and d!2054600 res!2684900) b!6545028))

(assert (= (and d!2054600 c!1201942) b!6545031))

(assert (= (and d!2054600 (not c!1201942)) b!6545030))

(assert (= (and b!6545030 c!1201943) b!6545032))

(assert (= (and b!6545030 (not c!1201943)) b!6545029))

(assert (= (or b!6545031 b!6545032) bm!569224))

(declare-fun m!7328080 () Bool)

(assert (=> bm!569224 m!7328080))

(declare-fun m!7328082 () Bool)

(assert (=> b!6545028 m!7328082))

(declare-fun m!7328084 () Bool)

(assert (=> b!6545031 m!7328084))

(assert (=> b!6544951 d!2054600))

(declare-fun d!2054602 () Bool)

(declare-fun choose!48613 ((InoxSet Context!11602) Int) (InoxSet Context!11602))

(assert (=> d!2054602 (= (flatMap!1922 lt!2400270 lambda!363273) (choose!48613 lt!2400270 lambda!363273))))

(declare-fun bs!1671462 () Bool)

(assert (= bs!1671462 d!2054602))

(declare-fun m!7328086 () Bool)

(assert (=> bs!1671462 m!7328086))

(assert (=> b!6544951 d!2054602))

(declare-fun d!2054604 () Bool)

(declare-fun dynLambda!26004 (Int Context!11602) (InoxSet Context!11602))

(assert (=> d!2054604 (= (flatMap!1922 lt!2400270 lambda!363273) (dynLambda!26004 lambda!363273 lt!2400233))))

(declare-fun lt!2400295 () Unit!159003)

(declare-fun choose!48614 ((InoxSet Context!11602) Context!11602 Int) Unit!159003)

(assert (=> d!2054604 (= lt!2400295 (choose!48614 lt!2400270 lt!2400233 lambda!363273))))

(assert (=> d!2054604 (= lt!2400270 (store ((as const (Array Context!11602 Bool)) false) lt!2400233 true))))

(assert (=> d!2054604 (= (lemmaFlatMapOnSingletonSet!1448 lt!2400270 lt!2400233 lambda!363273) lt!2400295)))

(declare-fun b_lambda!247761 () Bool)

(assert (=> (not b_lambda!247761) (not d!2054604)))

(declare-fun bs!1671465 () Bool)

(assert (= bs!1671465 d!2054604))

(assert (=> bs!1671465 m!7327946))

(declare-fun m!7328094 () Bool)

(assert (=> bs!1671465 m!7328094))

(declare-fun m!7328096 () Bool)

(assert (=> bs!1671465 m!7328096))

(assert (=> bs!1671465 m!7327940))

(assert (=> b!6544951 d!2054604))

(declare-fun d!2054608 () Bool)

(assert (=> d!2054608 (= (flatMap!1922 lt!2400267 lambda!363273) (choose!48613 lt!2400267 lambda!363273))))

(declare-fun bs!1671467 () Bool)

(assert (= bs!1671467 d!2054608))

(declare-fun m!7328100 () Bool)

(assert (=> bs!1671467 m!7328100))

(assert (=> b!6544951 d!2054608))

(declare-fun d!2054612 () Bool)

(assert (=> d!2054612 (= (flatMap!1922 lt!2400267 lambda!363273) (dynLambda!26004 lambda!363273 lt!2400257))))

(declare-fun lt!2400296 () Unit!159003)

(assert (=> d!2054612 (= lt!2400296 (choose!48614 lt!2400267 lt!2400257 lambda!363273))))

(assert (=> d!2054612 (= lt!2400267 (store ((as const (Array Context!11602 Bool)) false) lt!2400257 true))))

(assert (=> d!2054612 (= (lemmaFlatMapOnSingletonSet!1448 lt!2400267 lt!2400257 lambda!363273) lt!2400296)))

(declare-fun b_lambda!247763 () Bool)

(assert (=> (not b_lambda!247763) (not d!2054612)))

(declare-fun bs!1671468 () Bool)

(assert (= bs!1671468 d!2054612))

(assert (=> bs!1671468 m!7327956))

(declare-fun m!7328102 () Bool)

(assert (=> bs!1671468 m!7328102))

(declare-fun m!7328104 () Bool)

(assert (=> bs!1671468 m!7328104))

(assert (=> bs!1671468 m!7327948))

(assert (=> b!6544951 d!2054612))

(declare-fun d!2054614 () Bool)

(declare-fun lt!2400297 () Regex!16417)

(assert (=> d!2054614 (validRegex!8153 lt!2400297)))

(assert (=> d!2054614 (= lt!2400297 (generalisedUnion!2261 (unfocusZipperList!1838 lt!2400242)))))

(assert (=> d!2054614 (= (unfocusZipper!2159 lt!2400242) lt!2400297)))

(declare-fun bs!1671469 () Bool)

(assert (= bs!1671469 d!2054614))

(declare-fun m!7328106 () Bool)

(assert (=> bs!1671469 m!7328106))

(declare-fun m!7328108 () Bool)

(assert (=> bs!1671469 m!7328108))

(assert (=> bs!1671469 m!7328108))

(declare-fun m!7328110 () Bool)

(assert (=> bs!1671469 m!7328110))

(assert (=> b!6544951 d!2054614))

(declare-fun d!2054616 () Bool)

(declare-fun lt!2400298 () Regex!16417)

(assert (=> d!2054616 (validRegex!8153 lt!2400298)))

(assert (=> d!2054616 (= lt!2400298 (generalisedUnion!2261 (unfocusZipperList!1838 zl!343)))))

(assert (=> d!2054616 (= (unfocusZipper!2159 zl!343) lt!2400298)))

(declare-fun bs!1671470 () Bool)

(assert (= bs!1671470 d!2054616))

(declare-fun m!7328112 () Bool)

(assert (=> bs!1671470 m!7328112))

(assert (=> bs!1671470 m!7327976))

(assert (=> bs!1671470 m!7327976))

(assert (=> bs!1671470 m!7327978))

(assert (=> b!6544930 d!2054616))

(declare-fun d!2054618 () Bool)

(declare-fun dynLambda!26005 (Int Context!11602) Context!11602)

(assert (=> d!2054618 (= (map!14934 lt!2400267 lambda!363274) (store ((as const (Array Context!11602 Bool)) false) (dynLambda!26005 lambda!363274 lt!2400257) true))))

(declare-fun lt!2400303 () Unit!159003)

(declare-fun choose!48615 ((InoxSet Context!11602) Context!11602 Int) Unit!159003)

(assert (=> d!2054618 (= lt!2400303 (choose!48615 lt!2400267 lt!2400257 lambda!363274))))

(assert (=> d!2054618 (= lt!2400267 (store ((as const (Array Context!11602 Bool)) false) lt!2400257 true))))

(assert (=> d!2054618 (= (lemmaMapOnSingletonSet!200 lt!2400267 lt!2400257 lambda!363274) lt!2400303)))

(declare-fun b_lambda!247765 () Bool)

(assert (=> (not b_lambda!247765) (not d!2054618)))

(declare-fun bs!1671471 () Bool)

(assert (= bs!1671471 d!2054618))

(assert (=> bs!1671471 m!7327948))

(declare-fun m!7328114 () Bool)

(assert (=> bs!1671471 m!7328114))

(assert (=> bs!1671471 m!7327990))

(declare-fun m!7328116 () Bool)

(assert (=> bs!1671471 m!7328116))

(assert (=> bs!1671471 m!7328114))

(declare-fun m!7328118 () Bool)

(assert (=> bs!1671471 m!7328118))

(assert (=> b!6544950 d!2054618))

(declare-fun e!3962964 () Bool)

(declare-fun b!6545084 () Bool)

(declare-fun lt!2400307 () List!65551)

(assert (=> b!6545084 (= e!3962964 (or (not (= lt!2400244 Nil!65427)) (= lt!2400307 lt!2400240)))))

(declare-fun b!6545082 () Bool)

(declare-fun e!3962965 () List!65551)

(assert (=> b!6545082 (= e!3962965 (Cons!65427 (h!71875 lt!2400240) (++!14536 (t!379193 lt!2400240) lt!2400244)))))

(declare-fun b!6545081 () Bool)

(assert (=> b!6545081 (= e!3962965 lt!2400244)))

(declare-fun b!6545083 () Bool)

(declare-fun res!2684930 () Bool)

(assert (=> b!6545083 (=> (not res!2684930) (not e!3962964))))

(declare-fun size!40482 (List!65551) Int)

(assert (=> b!6545083 (= res!2684930 (= (size!40482 lt!2400307) (+ (size!40482 lt!2400240) (size!40482 lt!2400244))))))

(declare-fun d!2054620 () Bool)

(assert (=> d!2054620 e!3962964))

(declare-fun res!2684929 () Bool)

(assert (=> d!2054620 (=> (not res!2684929) (not e!3962964))))

(declare-fun content!12533 (List!65551) (InoxSet Regex!16417))

(assert (=> d!2054620 (= res!2684929 (= (content!12533 lt!2400307) ((_ map or) (content!12533 lt!2400240) (content!12533 lt!2400244))))))

(assert (=> d!2054620 (= lt!2400307 e!3962965)))

(declare-fun c!1201954 () Bool)

(assert (=> d!2054620 (= c!1201954 ((_ is Nil!65427) lt!2400240))))

(assert (=> d!2054620 (= (++!14536 lt!2400240 lt!2400244) lt!2400307)))

(assert (= (and d!2054620 c!1201954) b!6545081))

(assert (= (and d!2054620 (not c!1201954)) b!6545082))

(assert (= (and d!2054620 res!2684929) b!6545083))

(assert (= (and b!6545083 res!2684930) b!6545084))

(declare-fun m!7328126 () Bool)

(assert (=> b!6545082 m!7328126))

(declare-fun m!7328128 () Bool)

(assert (=> b!6545083 m!7328128))

(declare-fun m!7328130 () Bool)

(assert (=> b!6545083 m!7328130))

(declare-fun m!7328132 () Bool)

(assert (=> b!6545083 m!7328132))

(declare-fun m!7328134 () Bool)

(assert (=> d!2054620 m!7328134))

(declare-fun m!7328136 () Bool)

(assert (=> d!2054620 m!7328136))

(declare-fun m!7328138 () Bool)

(assert (=> d!2054620 m!7328138))

(assert (=> b!6544950 d!2054620))

(declare-fun d!2054626 () Bool)

(declare-fun choose!48616 ((InoxSet Context!11602) Int) (InoxSet Context!11602))

(assert (=> d!2054626 (= (map!14934 lt!2400267 lambda!363274) (choose!48616 lt!2400267 lambda!363274))))

(declare-fun bs!1671476 () Bool)

(assert (= bs!1671476 d!2054626))

(declare-fun m!7328140 () Bool)

(assert (=> bs!1671476 m!7328140))

(assert (=> b!6544950 d!2054626))

(declare-fun d!2054628 () Bool)

(declare-fun forall!15589 (List!65551 Int) Bool)

(assert (=> d!2054628 (forall!15589 (++!14536 lt!2400240 lt!2400244) lambda!363275)))

(declare-fun lt!2400310 () Unit!159003)

(declare-fun choose!48617 (List!65551 List!65551 Int) Unit!159003)

(assert (=> d!2054628 (= lt!2400310 (choose!48617 lt!2400240 lt!2400244 lambda!363275))))

(assert (=> d!2054628 (forall!15589 lt!2400240 lambda!363275)))

(assert (=> d!2054628 (= (lemmaConcatPreservesForall!390 lt!2400240 lt!2400244 lambda!363275) lt!2400310)))

(declare-fun bs!1671480 () Bool)

(assert (= bs!1671480 d!2054628))

(assert (=> bs!1671480 m!7327916))

(assert (=> bs!1671480 m!7327916))

(declare-fun m!7328142 () Bool)

(assert (=> bs!1671480 m!7328142))

(declare-fun m!7328144 () Bool)

(assert (=> bs!1671480 m!7328144))

(declare-fun m!7328146 () Bool)

(assert (=> bs!1671480 m!7328146))

(assert (=> b!6544950 d!2054628))

(declare-fun bs!1671485 () Bool)

(declare-fun d!2054630 () Bool)

(assert (= bs!1671485 (and d!2054630 b!6544950)))

(declare-fun lambda!363295 () Int)

(assert (=> bs!1671485 (= (= (exprs!6301 lt!2400233) lt!2400244) (= lambda!363295 lambda!363274))))

(assert (=> d!2054630 true))

(assert (=> d!2054630 (= (appendTo!178 lt!2400267 lt!2400233) (map!14934 lt!2400267 lambda!363295))))

(declare-fun bs!1671486 () Bool)

(assert (= bs!1671486 d!2054630))

(declare-fun m!7328156 () Bool)

(assert (=> bs!1671486 m!7328156))

(assert (=> b!6544950 d!2054630))

(declare-fun b!6545165 () Bool)

(declare-fun e!3963018 () Bool)

(declare-fun call!569245 () Bool)

(assert (=> b!6545165 (= e!3963018 call!569245)))

(declare-fun b!6545166 () Bool)

(declare-fun res!2684975 () Bool)

(assert (=> b!6545166 (=> (not res!2684975) (not e!3963018))))

(declare-fun call!569247 () Bool)

(assert (=> b!6545166 (= res!2684975 call!569247)))

(declare-fun e!3963014 () Bool)

(assert (=> b!6545166 (= e!3963014 e!3963018)))

(declare-fun bm!569240 () Bool)

(declare-fun c!1201973 () Bool)

(assert (=> bm!569240 (= call!569245 (validRegex!8153 (ite c!1201973 (regTwo!33347 (regTwo!33346 r!7292)) (regTwo!33346 (regTwo!33346 r!7292)))))))

(declare-fun b!6545167 () Bool)

(declare-fun e!3963015 () Bool)

(assert (=> b!6545167 (= e!3963015 e!3963014)))

(assert (=> b!6545167 (= c!1201973 ((_ is Union!16417) (regTwo!33346 r!7292)))))

(declare-fun b!6545168 () Bool)

(declare-fun e!3963016 () Bool)

(assert (=> b!6545168 (= e!3963015 e!3963016)))

(declare-fun res!2684976 () Bool)

(assert (=> b!6545168 (= res!2684976 (not (nullable!6410 (reg!16746 (regTwo!33346 r!7292)))))))

(assert (=> b!6545168 (=> (not res!2684976) (not e!3963016))))

(declare-fun b!6545169 () Bool)

(declare-fun e!3963013 () Bool)

(assert (=> b!6545169 (= e!3963013 call!569245)))

(declare-fun b!6545170 () Bool)

(declare-fun call!569246 () Bool)

(assert (=> b!6545170 (= e!3963016 call!569246)))

(declare-fun b!6545171 () Bool)

(declare-fun res!2684978 () Bool)

(declare-fun e!3963019 () Bool)

(assert (=> b!6545171 (=> res!2684978 e!3963019)))

(assert (=> b!6545171 (= res!2684978 (not ((_ is Concat!25262) (regTwo!33346 r!7292))))))

(assert (=> b!6545171 (= e!3963014 e!3963019)))

(declare-fun b!6545172 () Bool)

(assert (=> b!6545172 (= e!3963019 e!3963013)))

(declare-fun res!2684979 () Bool)

(assert (=> b!6545172 (=> (not res!2684979) (not e!3963013))))

(assert (=> b!6545172 (= res!2684979 call!569247)))

(declare-fun b!6545173 () Bool)

(declare-fun e!3963017 () Bool)

(assert (=> b!6545173 (= e!3963017 e!3963015)))

(declare-fun c!1201974 () Bool)

(assert (=> b!6545173 (= c!1201974 ((_ is Star!16417) (regTwo!33346 r!7292)))))

(declare-fun bm!569242 () Bool)

(assert (=> bm!569242 (= call!569246 (validRegex!8153 (ite c!1201974 (reg!16746 (regTwo!33346 r!7292)) (ite c!1201973 (regOne!33347 (regTwo!33346 r!7292)) (regOne!33346 (regTwo!33346 r!7292))))))))

(declare-fun d!2054634 () Bool)

(declare-fun res!2684977 () Bool)

(assert (=> d!2054634 (=> res!2684977 e!3963017)))

(assert (=> d!2054634 (= res!2684977 ((_ is ElementMatch!16417) (regTwo!33346 r!7292)))))

(assert (=> d!2054634 (= (validRegex!8153 (regTwo!33346 r!7292)) e!3963017)))

(declare-fun bm!569241 () Bool)

(assert (=> bm!569241 (= call!569247 call!569246)))

(assert (= (and d!2054634 (not res!2684977)) b!6545173))

(assert (= (and b!6545173 c!1201974) b!6545168))

(assert (= (and b!6545173 (not c!1201974)) b!6545167))

(assert (= (and b!6545168 res!2684976) b!6545170))

(assert (= (and b!6545167 c!1201973) b!6545166))

(assert (= (and b!6545167 (not c!1201973)) b!6545171))

(assert (= (and b!6545166 res!2684975) b!6545165))

(assert (= (and b!6545171 (not res!2684978)) b!6545172))

(assert (= (and b!6545172 res!2684979) b!6545169))

(assert (= (or b!6545165 b!6545169) bm!569240))

(assert (= (or b!6545166 b!6545172) bm!569241))

(assert (= (or b!6545170 bm!569241) bm!569242))

(declare-fun m!7328182 () Bool)

(assert (=> bm!569240 m!7328182))

(declare-fun m!7328184 () Bool)

(assert (=> b!6545168 m!7328184))

(declare-fun m!7328186 () Bool)

(assert (=> bm!569242 m!7328186))

(assert (=> b!6544932 d!2054634))

(declare-fun bs!1671501 () Bool)

(declare-fun d!2054644 () Bool)

(assert (= bs!1671501 (and d!2054644 b!6544950)))

(declare-fun lambda!363303 () Int)

(assert (=> bs!1671501 (= lambda!363303 lambda!363275)))

(declare-fun b!6545238 () Bool)

(declare-fun e!3963060 () Bool)

(assert (=> b!6545238 (= e!3963060 (isEmpty!37645 (t!379193 (unfocusZipperList!1838 zl!343))))))

(declare-fun b!6545239 () Bool)

(declare-fun e!3963059 () Regex!16417)

(assert (=> b!6545239 (= e!3963059 EmptyLang!16417)))

(declare-fun b!6545240 () Bool)

(declare-fun e!3963062 () Bool)

(declare-fun lt!2400324 () Regex!16417)

(declare-fun isEmptyLang!1803 (Regex!16417) Bool)

(assert (=> b!6545240 (= e!3963062 (isEmptyLang!1803 lt!2400324))))

(declare-fun b!6545241 () Bool)

(declare-fun e!3963058 () Regex!16417)

(assert (=> b!6545241 (= e!3963058 (h!71875 (unfocusZipperList!1838 zl!343)))))

(declare-fun b!6545242 () Bool)

(assert (=> b!6545242 (= e!3963058 e!3963059)))

(declare-fun c!1202005 () Bool)

(assert (=> b!6545242 (= c!1202005 ((_ is Cons!65427) (unfocusZipperList!1838 zl!343)))))

(declare-fun b!6545244 () Bool)

(declare-fun e!3963057 () Bool)

(declare-fun isUnion!1233 (Regex!16417) Bool)

(assert (=> b!6545244 (= e!3963057 (isUnion!1233 lt!2400324))))

(declare-fun b!6545245 () Bool)

(declare-fun e!3963061 () Bool)

(assert (=> b!6545245 (= e!3963061 e!3963062)))

(declare-fun c!1202003 () Bool)

(assert (=> b!6545245 (= c!1202003 (isEmpty!37645 (unfocusZipperList!1838 zl!343)))))

(declare-fun b!6545246 () Bool)

(assert (=> b!6545246 (= e!3963059 (Union!16417 (h!71875 (unfocusZipperList!1838 zl!343)) (generalisedUnion!2261 (t!379193 (unfocusZipperList!1838 zl!343)))))))

(declare-fun b!6545247 () Bool)

(declare-fun head!13285 (List!65551) Regex!16417)

(assert (=> b!6545247 (= e!3963057 (= lt!2400324 (head!13285 (unfocusZipperList!1838 zl!343))))))

(declare-fun b!6545243 () Bool)

(assert (=> b!6545243 (= e!3963062 e!3963057)))

(declare-fun c!1202002 () Bool)

(declare-fun tail!12370 (List!65551) List!65551)

(assert (=> b!6545243 (= c!1202002 (isEmpty!37645 (tail!12370 (unfocusZipperList!1838 zl!343))))))

(assert (=> d!2054644 e!3963061))

(declare-fun res!2684990 () Bool)

(assert (=> d!2054644 (=> (not res!2684990) (not e!3963061))))

(assert (=> d!2054644 (= res!2684990 (validRegex!8153 lt!2400324))))

(assert (=> d!2054644 (= lt!2400324 e!3963058)))

(declare-fun c!1202004 () Bool)

(assert (=> d!2054644 (= c!1202004 e!3963060)))

(declare-fun res!2684991 () Bool)

(assert (=> d!2054644 (=> (not res!2684991) (not e!3963060))))

(assert (=> d!2054644 (= res!2684991 ((_ is Cons!65427) (unfocusZipperList!1838 zl!343)))))

(assert (=> d!2054644 (forall!15589 (unfocusZipperList!1838 zl!343) lambda!363303)))

(assert (=> d!2054644 (= (generalisedUnion!2261 (unfocusZipperList!1838 zl!343)) lt!2400324)))

(assert (= (and d!2054644 res!2684991) b!6545238))

(assert (= (and d!2054644 c!1202004) b!6545241))

(assert (= (and d!2054644 (not c!1202004)) b!6545242))

(assert (= (and b!6545242 c!1202005) b!6545246))

(assert (= (and b!6545242 (not c!1202005)) b!6545239))

(assert (= (and d!2054644 res!2684990) b!6545245))

(assert (= (and b!6545245 c!1202003) b!6545240))

(assert (= (and b!6545245 (not c!1202003)) b!6545243))

(assert (= (and b!6545243 c!1202002) b!6545247))

(assert (= (and b!6545243 (not c!1202002)) b!6545244))

(assert (=> b!6545245 m!7327976))

(declare-fun m!7328210 () Bool)

(assert (=> b!6545245 m!7328210))

(declare-fun m!7328212 () Bool)

(assert (=> b!6545240 m!7328212))

(declare-fun m!7328214 () Bool)

(assert (=> d!2054644 m!7328214))

(assert (=> d!2054644 m!7327976))

(declare-fun m!7328216 () Bool)

(assert (=> d!2054644 m!7328216))

(declare-fun m!7328218 () Bool)

(assert (=> b!6545246 m!7328218))

(assert (=> b!6545243 m!7327976))

(declare-fun m!7328220 () Bool)

(assert (=> b!6545243 m!7328220))

(assert (=> b!6545243 m!7328220))

(declare-fun m!7328222 () Bool)

(assert (=> b!6545243 m!7328222))

(declare-fun m!7328224 () Bool)

(assert (=> b!6545238 m!7328224))

(assert (=> b!6545247 m!7327976))

(declare-fun m!7328226 () Bool)

(assert (=> b!6545247 m!7328226))

(declare-fun m!7328228 () Bool)

(assert (=> b!6545244 m!7328228))

(assert (=> b!6544954 d!2054644))

(declare-fun bs!1671504 () Bool)

(declare-fun d!2054654 () Bool)

(assert (= bs!1671504 (and d!2054654 b!6544950)))

(declare-fun lambda!363306 () Int)

(assert (=> bs!1671504 (= lambda!363306 lambda!363275)))

(declare-fun bs!1671505 () Bool)

(assert (= bs!1671505 (and d!2054654 d!2054644)))

(assert (=> bs!1671505 (= lambda!363306 lambda!363303)))

(declare-fun lt!2400329 () List!65551)

(assert (=> d!2054654 (forall!15589 lt!2400329 lambda!363306)))

(declare-fun e!3963093 () List!65551)

(assert (=> d!2054654 (= lt!2400329 e!3963093)))

(declare-fun c!1202017 () Bool)

(assert (=> d!2054654 (= c!1202017 ((_ is Cons!65428) zl!343))))

(assert (=> d!2054654 (= (unfocusZipperList!1838 zl!343) lt!2400329)))

(declare-fun b!6545293 () Bool)

(assert (=> b!6545293 (= e!3963093 (Cons!65427 (generalisedConcat!2014 (exprs!6301 (h!71876 zl!343))) (unfocusZipperList!1838 (t!379194 zl!343))))))

(declare-fun b!6545294 () Bool)

(assert (=> b!6545294 (= e!3963093 Nil!65427)))

(assert (= (and d!2054654 c!1202017) b!6545293))

(assert (= (and d!2054654 (not c!1202017)) b!6545294))

(declare-fun m!7328238 () Bool)

(assert (=> d!2054654 m!7328238))

(assert (=> b!6545293 m!7327996))

(declare-fun m!7328240 () Bool)

(assert (=> b!6545293 m!7328240))

(assert (=> b!6544954 d!2054654))

(declare-fun d!2054660 () Bool)

(declare-fun c!1202018 () Bool)

(assert (=> d!2054660 (= c!1202018 (isEmpty!37649 (t!379192 s!2326)))))

(declare-fun e!3963094 () Bool)

(assert (=> d!2054660 (= (matchZipper!2429 lt!2400253 (t!379192 s!2326)) e!3963094)))

(declare-fun b!6545295 () Bool)

(assert (=> b!6545295 (= e!3963094 (nullableZipper!2161 lt!2400253))))

(declare-fun b!6545296 () Bool)

(assert (=> b!6545296 (= e!3963094 (matchZipper!2429 (derivationStepZipper!2383 lt!2400253 (head!13284 (t!379192 s!2326))) (tail!12369 (t!379192 s!2326))))))

(assert (= (and d!2054660 c!1202018) b!6545295))

(assert (= (and d!2054660 (not c!1202018)) b!6545296))

(assert (=> d!2054660 m!7328030))

(declare-fun m!7328242 () Bool)

(assert (=> b!6545295 m!7328242))

(assert (=> b!6545296 m!7328034))

(assert (=> b!6545296 m!7328034))

(declare-fun m!7328244 () Bool)

(assert (=> b!6545296 m!7328244))

(assert (=> b!6545296 m!7328038))

(assert (=> b!6545296 m!7328244))

(assert (=> b!6545296 m!7328038))

(declare-fun m!7328246 () Bool)

(assert (=> b!6545296 m!7328246))

(assert (=> b!6544931 d!2054660))

(declare-fun d!2054662 () Bool)

(declare-fun c!1202019 () Bool)

(assert (=> d!2054662 (= c!1202019 (isEmpty!37649 s!2326))))

(declare-fun e!3963095 () Bool)

(assert (=> d!2054662 (= (matchZipper!2429 lt!2400241 s!2326) e!3963095)))

(declare-fun b!6545297 () Bool)

(assert (=> b!6545297 (= e!3963095 (nullableZipper!2161 lt!2400241))))

(declare-fun b!6545298 () Bool)

(assert (=> b!6545298 (= e!3963095 (matchZipper!2429 (derivationStepZipper!2383 lt!2400241 (head!13284 s!2326)) (tail!12369 s!2326)))))

(assert (= (and d!2054662 c!1202019) b!6545297))

(assert (= (and d!2054662 (not c!1202019)) b!6545298))

(declare-fun m!7328248 () Bool)

(assert (=> d!2054662 m!7328248))

(declare-fun m!7328250 () Bool)

(assert (=> b!6545297 m!7328250))

(declare-fun m!7328252 () Bool)

(assert (=> b!6545298 m!7328252))

(assert (=> b!6545298 m!7328252))

(declare-fun m!7328254 () Bool)

(assert (=> b!6545298 m!7328254))

(declare-fun m!7328256 () Bool)

(assert (=> b!6545298 m!7328256))

(assert (=> b!6545298 m!7328254))

(assert (=> b!6545298 m!7328256))

(declare-fun m!7328258 () Bool)

(assert (=> b!6545298 m!7328258))

(assert (=> b!6544931 d!2054662))

(declare-fun d!2054664 () Bool)

(assert (=> d!2054664 (= (flatMap!1922 z!1189 lambda!363273) (dynLambda!26004 lambda!363273 (h!71876 zl!343)))))

(declare-fun lt!2400332 () Unit!159003)

(assert (=> d!2054664 (= lt!2400332 (choose!48614 z!1189 (h!71876 zl!343) lambda!363273))))

(assert (=> d!2054664 (= z!1189 (store ((as const (Array Context!11602 Bool)) false) (h!71876 zl!343) true))))

(assert (=> d!2054664 (= (lemmaFlatMapOnSingletonSet!1448 z!1189 (h!71876 zl!343) lambda!363273) lt!2400332)))

(declare-fun b_lambda!247769 () Bool)

(assert (=> (not b_lambda!247769) (not d!2054664)))

(declare-fun bs!1671507 () Bool)

(assert (= bs!1671507 d!2054664))

(assert (=> bs!1671507 m!7328014))

(declare-fun m!7328266 () Bool)

(assert (=> bs!1671507 m!7328266))

(declare-fun m!7328268 () Bool)

(assert (=> bs!1671507 m!7328268))

(declare-fun m!7328270 () Bool)

(assert (=> bs!1671507 m!7328270))

(assert (=> b!6544952 d!2054664))

(declare-fun d!2054668 () Bool)

(assert (=> d!2054668 (= (flatMap!1922 z!1189 lambda!363273) (choose!48613 z!1189 lambda!363273))))

(declare-fun bs!1671508 () Bool)

(assert (= bs!1671508 d!2054668))

(declare-fun m!7328272 () Bool)

(assert (=> bs!1671508 m!7328272))

(assert (=> b!6544952 d!2054668))

(declare-fun d!2054670 () Bool)

(declare-fun nullableFct!2336 (Regex!16417) Bool)

(assert (=> d!2054670 (= (nullable!6410 (h!71875 (exprs!6301 (h!71876 zl!343)))) (nullableFct!2336 (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun bs!1671509 () Bool)

(assert (= bs!1671509 d!2054670))

(declare-fun m!7328284 () Bool)

(assert (=> bs!1671509 m!7328284))

(assert (=> b!6544952 d!2054670))

(declare-fun bm!569279 () Bool)

(declare-fun call!569284 () (InoxSet Context!11602))

(assert (=> bm!569279 (= call!569284 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343))))))) (Context!11603 (t!379193 (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343)))))))) (h!71874 s!2326)))))

(declare-fun b!6545310 () Bool)

(declare-fun e!3963103 () Bool)

(assert (=> b!6545310 (= e!3963103 (nullable!6410 (h!71875 (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343)))))))))))

(declare-fun b!6545311 () Bool)

(declare-fun e!3963102 () (InoxSet Context!11602))

(assert (=> b!6545311 (= e!3963102 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545312 () Bool)

(declare-fun e!3963104 () (InoxSet Context!11602))

(assert (=> b!6545312 (= e!3963104 e!3963102)))

(declare-fun c!1202026 () Bool)

(assert (=> b!6545312 (= c!1202026 ((_ is Cons!65427) (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343))))))))))

(declare-fun d!2054674 () Bool)

(declare-fun c!1202025 () Bool)

(assert (=> d!2054674 (= c!1202025 e!3963103)))

(declare-fun res!2685016 () Bool)

(assert (=> d!2054674 (=> (not res!2685016) (not e!3963103))))

(assert (=> d!2054674 (= res!2685016 ((_ is Cons!65427) (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343))))))))))

(assert (=> d!2054674 (= (derivationStepZipperUp!1591 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343))))) (h!71874 s!2326)) e!3963104)))

(declare-fun b!6545313 () Bool)

(assert (=> b!6545313 (= e!3963104 ((_ map or) call!569284 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 (Context!11603 (Cons!65427 (h!71875 (exprs!6301 (h!71876 zl!343))) (t!379193 (exprs!6301 (h!71876 zl!343)))))))) (h!71874 s!2326))))))

(declare-fun b!6545314 () Bool)

(assert (=> b!6545314 (= e!3963102 call!569284)))

(assert (= (and d!2054674 res!2685016) b!6545310))

(assert (= (and d!2054674 c!1202025) b!6545313))

(assert (= (and d!2054674 (not c!1202025)) b!6545312))

(assert (= (and b!6545312 c!1202026) b!6545314))

(assert (= (and b!6545312 (not c!1202026)) b!6545311))

(assert (= (or b!6545313 b!6545314) bm!569279))

(declare-fun m!7328286 () Bool)

(assert (=> bm!569279 m!7328286))

(declare-fun m!7328288 () Bool)

(assert (=> b!6545310 m!7328288))

(declare-fun m!7328290 () Bool)

(assert (=> b!6545313 m!7328290))

(assert (=> b!6544952 d!2054674))

(declare-fun b!6545393 () Bool)

(declare-fun e!3963155 () Bool)

(assert (=> b!6545393 (= e!3963155 (nullable!6410 (regOne!33346 (h!71875 (exprs!6301 (h!71876 zl!343))))))))

(declare-fun bm!569301 () Bool)

(declare-fun call!569308 () (InoxSet Context!11602))

(declare-fun call!569310 () (InoxSet Context!11602))

(assert (=> bm!569301 (= call!569308 call!569310)))

(declare-fun b!6545394 () Bool)

(declare-fun c!1202057 () Bool)

(assert (=> b!6545394 (= c!1202057 ((_ is Star!16417) (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun e!3963151 () (InoxSet Context!11602))

(declare-fun e!3963152 () (InoxSet Context!11602))

(assert (=> b!6545394 (= e!3963151 e!3963152)))

(declare-fun c!1202056 () Bool)

(declare-fun call!569306 () List!65551)

(declare-fun bm!569302 () Bool)

(declare-fun call!569307 () (InoxSet Context!11602))

(assert (=> bm!569302 (= call!569307 (derivationStepZipperDown!1665 (ite c!1202056 (regTwo!33347 (h!71875 (exprs!6301 (h!71876 zl!343)))) (regOne!33346 (h!71875 (exprs!6301 (h!71876 zl!343))))) (ite c!1202056 lt!2400245 (Context!11603 call!569306)) (h!71874 s!2326)))))

(declare-fun b!6545395 () Bool)

(declare-fun c!1202058 () Bool)

(assert (=> b!6545395 (= c!1202058 e!3963155)))

(declare-fun res!2685037 () Bool)

(assert (=> b!6545395 (=> (not res!2685037) (not e!3963155))))

(assert (=> b!6545395 (= res!2685037 ((_ is Concat!25262) (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun e!3963150 () (InoxSet Context!11602))

(declare-fun e!3963154 () (InoxSet Context!11602))

(assert (=> b!6545395 (= e!3963150 e!3963154)))

(declare-fun b!6545396 () Bool)

(assert (=> b!6545396 (= e!3963154 ((_ map or) call!569307 call!569310))))

(declare-fun b!6545397 () Bool)

(declare-fun e!3963153 () (InoxSet Context!11602))

(assert (=> b!6545397 (= e!3963153 (store ((as const (Array Context!11602 Bool)) false) lt!2400245 true))))

(declare-fun b!6545398 () Bool)

(assert (=> b!6545398 (= e!3963151 call!569308)))

(declare-fun b!6545399 () Bool)

(assert (=> b!6545399 (= e!3963152 call!569308)))

(declare-fun d!2054676 () Bool)

(declare-fun c!1202059 () Bool)

(assert (=> d!2054676 (= c!1202059 (and ((_ is ElementMatch!16417) (h!71875 (exprs!6301 (h!71876 zl!343)))) (= (c!1201926 (h!71875 (exprs!6301 (h!71876 zl!343)))) (h!71874 s!2326))))))

(assert (=> d!2054676 (= (derivationStepZipperDown!1665 (h!71875 (exprs!6301 (h!71876 zl!343))) lt!2400245 (h!71874 s!2326)) e!3963153)))

(declare-fun c!1202060 () Bool)

(declare-fun bm!569303 () Bool)

(declare-fun $colon$colon!2258 (List!65551 Regex!16417) List!65551)

(assert (=> bm!569303 (= call!569306 ($colon$colon!2258 (exprs!6301 lt!2400245) (ite (or c!1202058 c!1202060) (regTwo!33346 (h!71875 (exprs!6301 (h!71876 zl!343)))) (h!71875 (exprs!6301 (h!71876 zl!343))))))))

(declare-fun call!569311 () (InoxSet Context!11602))

(declare-fun call!569309 () List!65551)

(declare-fun bm!569304 () Bool)

(assert (=> bm!569304 (= call!569311 (derivationStepZipperDown!1665 (ite c!1202056 (regOne!33347 (h!71875 (exprs!6301 (h!71876 zl!343)))) (ite c!1202058 (regTwo!33346 (h!71875 (exprs!6301 (h!71876 zl!343)))) (ite c!1202060 (regOne!33346 (h!71875 (exprs!6301 (h!71876 zl!343)))) (reg!16746 (h!71875 (exprs!6301 (h!71876 zl!343))))))) (ite (or c!1202056 c!1202058) lt!2400245 (Context!11603 call!569309)) (h!71874 s!2326)))))

(declare-fun b!6545400 () Bool)

(assert (=> b!6545400 (= e!3963153 e!3963150)))

(assert (=> b!6545400 (= c!1202056 ((_ is Union!16417) (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545401 () Bool)

(assert (=> b!6545401 (= e!3963150 ((_ map or) call!569311 call!569307))))

(declare-fun bm!569305 () Bool)

(assert (=> bm!569305 (= call!569309 call!569306)))

(declare-fun b!6545402 () Bool)

(assert (=> b!6545402 (= e!3963154 e!3963151)))

(assert (=> b!6545402 (= c!1202060 ((_ is Concat!25262) (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545403 () Bool)

(assert (=> b!6545403 (= e!3963152 ((as const (Array Context!11602 Bool)) false))))

(declare-fun bm!569306 () Bool)

(assert (=> bm!569306 (= call!569310 call!569311)))

(assert (= (and d!2054676 c!1202059) b!6545397))

(assert (= (and d!2054676 (not c!1202059)) b!6545400))

(assert (= (and b!6545400 c!1202056) b!6545401))

(assert (= (and b!6545400 (not c!1202056)) b!6545395))

(assert (= (and b!6545395 res!2685037) b!6545393))

(assert (= (and b!6545395 c!1202058) b!6545396))

(assert (= (and b!6545395 (not c!1202058)) b!6545402))

(assert (= (and b!6545402 c!1202060) b!6545398))

(assert (= (and b!6545402 (not c!1202060)) b!6545394))

(assert (= (and b!6545394 c!1202057) b!6545399))

(assert (= (and b!6545394 (not c!1202057)) b!6545403))

(assert (= (or b!6545398 b!6545399) bm!569305))

(assert (= (or b!6545398 b!6545399) bm!569301))

(assert (= (or b!6545396 bm!569305) bm!569303))

(assert (= (or b!6545396 bm!569301) bm!569306))

(assert (= (or b!6545401 b!6545396) bm!569302))

(assert (= (or b!6545401 bm!569306) bm!569304))

(declare-fun m!7328358 () Bool)

(assert (=> b!6545397 m!7328358))

(declare-fun m!7328360 () Bool)

(assert (=> bm!569303 m!7328360))

(declare-fun m!7328362 () Bool)

(assert (=> bm!569302 m!7328362))

(declare-fun m!7328364 () Bool)

(assert (=> bm!569304 m!7328364))

(declare-fun m!7328366 () Bool)

(assert (=> b!6545393 m!7328366))

(assert (=> b!6544952 d!2054676))

(declare-fun bm!569307 () Bool)

(declare-fun call!569312 () (InoxSet Context!11602))

(assert (=> bm!569307 (= call!569312 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 (h!71876 zl!343))) (Context!11603 (t!379193 (exprs!6301 (h!71876 zl!343)))) (h!71874 s!2326)))))

(declare-fun b!6545406 () Bool)

(declare-fun e!3963159 () Bool)

(assert (=> b!6545406 (= e!3963159 (nullable!6410 (h!71875 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545407 () Bool)

(declare-fun e!3963158 () (InoxSet Context!11602))

(assert (=> b!6545407 (= e!3963158 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545408 () Bool)

(declare-fun e!3963160 () (InoxSet Context!11602))

(assert (=> b!6545408 (= e!3963160 e!3963158)))

(declare-fun c!1202062 () Bool)

(assert (=> b!6545408 (= c!1202062 ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343))))))

(declare-fun d!2054698 () Bool)

(declare-fun c!1202061 () Bool)

(assert (=> d!2054698 (= c!1202061 e!3963159)))

(declare-fun res!2685040 () Bool)

(assert (=> d!2054698 (=> (not res!2685040) (not e!3963159))))

(assert (=> d!2054698 (= res!2685040 ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343))))))

(assert (=> d!2054698 (= (derivationStepZipperUp!1591 (h!71876 zl!343) (h!71874 s!2326)) e!3963160)))

(declare-fun b!6545409 () Bool)

(assert (=> b!6545409 (= e!3963160 ((_ map or) call!569312 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 (h!71876 zl!343)))) (h!71874 s!2326))))))

(declare-fun b!6545411 () Bool)

(assert (=> b!6545411 (= e!3963158 call!569312)))

(assert (= (and d!2054698 res!2685040) b!6545406))

(assert (= (and d!2054698 c!1202061) b!6545409))

(assert (= (and d!2054698 (not c!1202061)) b!6545408))

(assert (= (and b!6545408 c!1202062) b!6545411))

(assert (= (and b!6545408 (not c!1202062)) b!6545407))

(assert (= (or b!6545409 b!6545411) bm!569307))

(declare-fun m!7328372 () Bool)

(assert (=> bm!569307 m!7328372))

(assert (=> b!6545406 m!7328016))

(declare-fun m!7328374 () Bool)

(assert (=> b!6545409 m!7328374))

(assert (=> b!6544952 d!2054698))

(declare-fun bm!569308 () Bool)

(declare-fun call!569313 () (InoxSet Context!11602))

(assert (=> bm!569308 (= call!569313 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 lt!2400245)) (Context!11603 (t!379193 (exprs!6301 lt!2400245))) (h!71874 s!2326)))))

(declare-fun b!6545412 () Bool)

(declare-fun e!3963163 () Bool)

(assert (=> b!6545412 (= e!3963163 (nullable!6410 (h!71875 (exprs!6301 lt!2400245))))))

(declare-fun b!6545413 () Bool)

(declare-fun e!3963162 () (InoxSet Context!11602))

(assert (=> b!6545413 (= e!3963162 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545414 () Bool)

(declare-fun e!3963164 () (InoxSet Context!11602))

(assert (=> b!6545414 (= e!3963164 e!3963162)))

(declare-fun c!1202064 () Bool)

(assert (=> b!6545414 (= c!1202064 ((_ is Cons!65427) (exprs!6301 lt!2400245)))))

(declare-fun d!2054702 () Bool)

(declare-fun c!1202063 () Bool)

(assert (=> d!2054702 (= c!1202063 e!3963163)))

(declare-fun res!2685042 () Bool)

(assert (=> d!2054702 (=> (not res!2685042) (not e!3963163))))

(assert (=> d!2054702 (= res!2685042 ((_ is Cons!65427) (exprs!6301 lt!2400245)))))

(assert (=> d!2054702 (= (derivationStepZipperUp!1591 lt!2400245 (h!71874 s!2326)) e!3963164)))

(declare-fun b!6545415 () Bool)

(assert (=> b!6545415 (= e!3963164 ((_ map or) call!569313 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 lt!2400245))) (h!71874 s!2326))))))

(declare-fun b!6545416 () Bool)

(assert (=> b!6545416 (= e!3963162 call!569313)))

(assert (= (and d!2054702 res!2685042) b!6545412))

(assert (= (and d!2054702 c!1202063) b!6545415))

(assert (= (and d!2054702 (not c!1202063)) b!6545414))

(assert (= (and b!6545414 c!1202064) b!6545416))

(assert (= (and b!6545414 (not c!1202064)) b!6545413))

(assert (= (or b!6545415 b!6545416) bm!569308))

(declare-fun m!7328376 () Bool)

(assert (=> bm!569308 m!7328376))

(declare-fun m!7328378 () Bool)

(assert (=> b!6545412 m!7328378))

(declare-fun m!7328380 () Bool)

(assert (=> b!6545415 m!7328380))

(assert (=> b!6544952 d!2054702))

(declare-fun bs!1671515 () Bool)

(declare-fun b!6545509 () Bool)

(assert (= bs!1671515 (and b!6545509 b!6544940)))

(declare-fun lambda!363311 () Int)

(assert (=> bs!1671515 (not (= lambda!363311 lambda!363271))))

(assert (=> bs!1671515 (not (= lambda!363311 lambda!363272))))

(assert (=> b!6545509 true))

(assert (=> b!6545509 true))

(declare-fun bs!1671517 () Bool)

(declare-fun b!6545503 () Bool)

(assert (= bs!1671517 (and b!6545503 b!6544940)))

(declare-fun lambda!363312 () Int)

(assert (=> bs!1671517 (not (= lambda!363312 lambda!363271))))

(assert (=> bs!1671517 (= (and (= (regOne!33346 lt!2400228) (regOne!33346 r!7292)) (= (regTwo!33346 lt!2400228) (regTwo!33346 r!7292))) (= lambda!363312 lambda!363272))))

(declare-fun bs!1671518 () Bool)

(assert (= bs!1671518 (and b!6545503 b!6545509)))

(assert (=> bs!1671518 (not (= lambda!363312 lambda!363311))))

(assert (=> b!6545503 true))

(assert (=> b!6545503 true))

(declare-fun b!6545500 () Bool)

(declare-fun e!3963215 () Bool)

(assert (=> b!6545500 (= e!3963215 (= s!2326 (Cons!65426 (c!1201926 lt!2400228) Nil!65426)))))

(declare-fun b!6545501 () Bool)

(declare-fun res!2685086 () Bool)

(declare-fun e!3963212 () Bool)

(assert (=> b!6545501 (=> res!2685086 e!3963212)))

(declare-fun call!569323 () Bool)

(assert (=> b!6545501 (= res!2685086 call!569323)))

(declare-fun e!3963214 () Bool)

(assert (=> b!6545501 (= e!3963214 e!3963212)))

(declare-fun b!6545502 () Bool)

(declare-fun e!3963217 () Bool)

(assert (=> b!6545502 (= e!3963217 e!3963214)))

(declare-fun c!1202086 () Bool)

(assert (=> b!6545502 (= c!1202086 ((_ is Star!16417) lt!2400228))))

(declare-fun call!569324 () Bool)

(assert (=> b!6545503 (= e!3963214 call!569324)))

(declare-fun b!6545504 () Bool)

(declare-fun e!3963216 () Bool)

(assert (=> b!6545504 (= e!3963217 e!3963216)))

(declare-fun res!2685087 () Bool)

(assert (=> b!6545504 (= res!2685087 (matchRSpec!3518 (regOne!33347 lt!2400228) s!2326))))

(assert (=> b!6545504 (=> res!2685087 e!3963216)))

(declare-fun b!6545505 () Bool)

(declare-fun c!1202088 () Bool)

(assert (=> b!6545505 (= c!1202088 ((_ is ElementMatch!16417) lt!2400228))))

(declare-fun e!3963211 () Bool)

(assert (=> b!6545505 (= e!3963211 e!3963215)))

(declare-fun b!6545506 () Bool)

(assert (=> b!6545506 (= e!3963216 (matchRSpec!3518 (regTwo!33347 lt!2400228) s!2326))))

(declare-fun b!6545507 () Bool)

(declare-fun e!3963213 () Bool)

(assert (=> b!6545507 (= e!3963213 call!569323)))

(declare-fun bm!569318 () Bool)

(assert (=> bm!569318 (= call!569324 (Exists!3487 (ite c!1202086 lambda!363311 lambda!363312)))))

(assert (=> b!6545509 (= e!3963212 call!569324)))

(declare-fun b!6545510 () Bool)

(declare-fun c!1202087 () Bool)

(assert (=> b!6545510 (= c!1202087 ((_ is Union!16417) lt!2400228))))

(assert (=> b!6545510 (= e!3963215 e!3963217)))

(declare-fun bm!569319 () Bool)

(assert (=> bm!569319 (= call!569323 (isEmpty!37649 s!2326))))

(declare-fun d!2054704 () Bool)

(declare-fun c!1202085 () Bool)

(assert (=> d!2054704 (= c!1202085 ((_ is EmptyExpr!16417) lt!2400228))))

(assert (=> d!2054704 (= (matchRSpec!3518 lt!2400228 s!2326) e!3963213)))

(declare-fun b!6545508 () Bool)

(assert (=> b!6545508 (= e!3963213 e!3963211)))

(declare-fun res!2685088 () Bool)

(assert (=> b!6545508 (= res!2685088 (not ((_ is EmptyLang!16417) lt!2400228)))))

(assert (=> b!6545508 (=> (not res!2685088) (not e!3963211))))

(assert (= (and d!2054704 c!1202085) b!6545507))

(assert (= (and d!2054704 (not c!1202085)) b!6545508))

(assert (= (and b!6545508 res!2685088) b!6545505))

(assert (= (and b!6545505 c!1202088) b!6545500))

(assert (= (and b!6545505 (not c!1202088)) b!6545510))

(assert (= (and b!6545510 c!1202087) b!6545504))

(assert (= (and b!6545510 (not c!1202087)) b!6545502))

(assert (= (and b!6545504 (not res!2685087)) b!6545506))

(assert (= (and b!6545502 c!1202086) b!6545501))

(assert (= (and b!6545502 (not c!1202086)) b!6545503))

(assert (= (and b!6545501 (not res!2685086)) b!6545509))

(assert (= (or b!6545509 b!6545503) bm!569318))

(assert (= (or b!6545507 b!6545501) bm!569319))

(declare-fun m!7328444 () Bool)

(assert (=> b!6545504 m!7328444))

(declare-fun m!7328446 () Bool)

(assert (=> b!6545506 m!7328446))

(declare-fun m!7328448 () Bool)

(assert (=> bm!569318 m!7328448))

(assert (=> bm!569319 m!7328248))

(assert (=> b!6544953 d!2054704))

(declare-fun b!6545541 () Bool)

(declare-fun res!2685112 () Bool)

(declare-fun e!3963239 () Bool)

(assert (=> b!6545541 (=> res!2685112 e!3963239)))

(declare-fun e!3963235 () Bool)

(assert (=> b!6545541 (= res!2685112 e!3963235)))

(declare-fun res!2685107 () Bool)

(assert (=> b!6545541 (=> (not res!2685107) (not e!3963235))))

(declare-fun lt!2400361 () Bool)

(assert (=> b!6545541 (= res!2685107 lt!2400361)))

(declare-fun b!6545542 () Bool)

(declare-fun e!3963236 () Bool)

(declare-fun e!3963237 () Bool)

(assert (=> b!6545542 (= e!3963236 e!3963237)))

(declare-fun c!1202098 () Bool)

(assert (=> b!6545542 (= c!1202098 ((_ is EmptyLang!16417) lt!2400228))))

(declare-fun b!6545543 () Bool)

(declare-fun res!2685110 () Bool)

(assert (=> b!6545543 (=> (not res!2685110) (not e!3963235))))

(declare-fun call!569327 () Bool)

(assert (=> b!6545543 (= res!2685110 (not call!569327))))

(declare-fun d!2054722 () Bool)

(assert (=> d!2054722 e!3963236))

(declare-fun c!1202097 () Bool)

(assert (=> d!2054722 (= c!1202097 ((_ is EmptyExpr!16417) lt!2400228))))

(declare-fun e!3963234 () Bool)

(assert (=> d!2054722 (= lt!2400361 e!3963234)))

(declare-fun c!1202096 () Bool)

(assert (=> d!2054722 (= c!1202096 (isEmpty!37649 s!2326))))

(assert (=> d!2054722 (validRegex!8153 lt!2400228)))

(assert (=> d!2054722 (= (matchR!8600 lt!2400228 s!2326) lt!2400361)))

(declare-fun b!6545544 () Bool)

(declare-fun res!2685111 () Bool)

(declare-fun e!3963233 () Bool)

(assert (=> b!6545544 (=> res!2685111 e!3963233)))

(assert (=> b!6545544 (= res!2685111 (not (isEmpty!37649 (tail!12369 s!2326))))))

(declare-fun b!6545545 () Bool)

(declare-fun res!2685109 () Bool)

(assert (=> b!6545545 (=> (not res!2685109) (not e!3963235))))

(assert (=> b!6545545 (= res!2685109 (isEmpty!37649 (tail!12369 s!2326)))))

(declare-fun b!6545546 () Bool)

(assert (=> b!6545546 (= e!3963235 (= (head!13284 s!2326) (c!1201926 lt!2400228)))))

(declare-fun b!6545547 () Bool)

(assert (=> b!6545547 (= e!3963234 (nullable!6410 lt!2400228))))

(declare-fun bm!569322 () Bool)

(assert (=> bm!569322 (= call!569327 (isEmpty!37649 s!2326))))

(declare-fun b!6545548 () Bool)

(declare-fun derivativeStep!5101 (Regex!16417 C!33104) Regex!16417)

(assert (=> b!6545548 (= e!3963234 (matchR!8600 (derivativeStep!5101 lt!2400228 (head!13284 s!2326)) (tail!12369 s!2326)))))

(declare-fun b!6545549 () Bool)

(assert (=> b!6545549 (= e!3963237 (not lt!2400361))))

(declare-fun b!6545550 () Bool)

(assert (=> b!6545550 (= e!3963233 (not (= (head!13284 s!2326) (c!1201926 lt!2400228))))))

(declare-fun b!6545551 () Bool)

(declare-fun e!3963238 () Bool)

(assert (=> b!6545551 (= e!3963238 e!3963233)))

(declare-fun res!2685105 () Bool)

(assert (=> b!6545551 (=> res!2685105 e!3963233)))

(assert (=> b!6545551 (= res!2685105 call!569327)))

(declare-fun b!6545552 () Bool)

(assert (=> b!6545552 (= e!3963236 (= lt!2400361 call!569327))))

(declare-fun b!6545553 () Bool)

(declare-fun res!2685106 () Bool)

(assert (=> b!6545553 (=> res!2685106 e!3963239)))

(assert (=> b!6545553 (= res!2685106 (not ((_ is ElementMatch!16417) lt!2400228)))))

(assert (=> b!6545553 (= e!3963237 e!3963239)))

(declare-fun b!6545554 () Bool)

(assert (=> b!6545554 (= e!3963239 e!3963238)))

(declare-fun res!2685108 () Bool)

(assert (=> b!6545554 (=> (not res!2685108) (not e!3963238))))

(assert (=> b!6545554 (= res!2685108 (not lt!2400361))))

(assert (= (and d!2054722 c!1202096) b!6545547))

(assert (= (and d!2054722 (not c!1202096)) b!6545548))

(assert (= (and d!2054722 c!1202097) b!6545552))

(assert (= (and d!2054722 (not c!1202097)) b!6545542))

(assert (= (and b!6545542 c!1202098) b!6545549))

(assert (= (and b!6545542 (not c!1202098)) b!6545553))

(assert (= (and b!6545553 (not res!2685106)) b!6545541))

(assert (= (and b!6545541 res!2685107) b!6545543))

(assert (= (and b!6545543 res!2685110) b!6545545))

(assert (= (and b!6545545 res!2685109) b!6545546))

(assert (= (and b!6545541 (not res!2685112)) b!6545554))

(assert (= (and b!6545554 res!2685108) b!6545551))

(assert (= (and b!6545551 (not res!2685105)) b!6545544))

(assert (= (and b!6545544 (not res!2685111)) b!6545550))

(assert (= (or b!6545552 b!6545543 b!6545551) bm!569322))

(assert (=> b!6545546 m!7328252))

(declare-fun m!7328468 () Bool)

(assert (=> b!6545547 m!7328468))

(assert (=> bm!569322 m!7328248))

(assert (=> b!6545545 m!7328256))

(assert (=> b!6545545 m!7328256))

(declare-fun m!7328470 () Bool)

(assert (=> b!6545545 m!7328470))

(assert (=> b!6545550 m!7328252))

(assert (=> b!6545544 m!7328256))

(assert (=> b!6545544 m!7328256))

(assert (=> b!6545544 m!7328470))

(assert (=> d!2054722 m!7328248))

(declare-fun m!7328472 () Bool)

(assert (=> d!2054722 m!7328472))

(assert (=> b!6545548 m!7328252))

(assert (=> b!6545548 m!7328252))

(declare-fun m!7328474 () Bool)

(assert (=> b!6545548 m!7328474))

(assert (=> b!6545548 m!7328256))

(assert (=> b!6545548 m!7328474))

(assert (=> b!6545548 m!7328256))

(declare-fun m!7328476 () Bool)

(assert (=> b!6545548 m!7328476))

(assert (=> b!6544953 d!2054722))

(declare-fun d!2054730 () Bool)

(assert (=> d!2054730 (= (matchR!8600 lt!2400228 s!2326) (matchRSpec!3518 lt!2400228 s!2326))))

(declare-fun lt!2400366 () Unit!159003)

(declare-fun choose!48620 (Regex!16417 List!65550) Unit!159003)

(assert (=> d!2054730 (= lt!2400366 (choose!48620 lt!2400228 s!2326))))

(assert (=> d!2054730 (validRegex!8153 lt!2400228)))

(assert (=> d!2054730 (= (mainMatchTheorem!3518 lt!2400228 s!2326) lt!2400366)))

(declare-fun bs!1671522 () Bool)

(assert (= bs!1671522 d!2054730))

(assert (=> bs!1671522 m!7327870))

(assert (=> bs!1671522 m!7327868))

(declare-fun m!7328478 () Bool)

(assert (=> bs!1671522 m!7328478))

(assert (=> bs!1671522 m!7328472))

(assert (=> b!6544953 d!2054730))

(declare-fun d!2054732 () Bool)

(declare-fun c!1202107 () Bool)

(assert (=> d!2054732 (= c!1202107 (isEmpty!37649 (_2!36699 lt!2400243)))))

(declare-fun e!3963252 () Bool)

(assert (=> d!2054732 (= (matchZipper!2429 lt!2400270 (_2!36699 lt!2400243)) e!3963252)))

(declare-fun b!6545575 () Bool)

(assert (=> b!6545575 (= e!3963252 (nullableZipper!2161 lt!2400270))))

(declare-fun b!6545576 () Bool)

(assert (=> b!6545576 (= e!3963252 (matchZipper!2429 (derivationStepZipper!2383 lt!2400270 (head!13284 (_2!36699 lt!2400243))) (tail!12369 (_2!36699 lt!2400243))))))

(assert (= (and d!2054732 c!1202107) b!6545575))

(assert (= (and d!2054732 (not c!1202107)) b!6545576))

(declare-fun m!7328480 () Bool)

(assert (=> d!2054732 m!7328480))

(declare-fun m!7328482 () Bool)

(assert (=> b!6545575 m!7328482))

(declare-fun m!7328484 () Bool)

(assert (=> b!6545576 m!7328484))

(assert (=> b!6545576 m!7328484))

(declare-fun m!7328486 () Bool)

(assert (=> b!6545576 m!7328486))

(declare-fun m!7328488 () Bool)

(assert (=> b!6545576 m!7328488))

(assert (=> b!6545576 m!7328486))

(assert (=> b!6545576 m!7328488))

(declare-fun m!7328490 () Bool)

(assert (=> b!6545576 m!7328490))

(assert (=> b!6544935 d!2054732))

(declare-fun bs!1671526 () Bool)

(declare-fun b!6545596 () Bool)

(assert (= bs!1671526 (and b!6545596 b!6544940)))

(declare-fun lambda!363319 () Int)

(assert (=> bs!1671526 (not (= lambda!363319 lambda!363271))))

(assert (=> bs!1671526 (not (= lambda!363319 lambda!363272))))

(declare-fun bs!1671527 () Bool)

(assert (= bs!1671527 (and b!6545596 b!6545509)))

(assert (=> bs!1671527 (= (and (= (reg!16746 r!7292) (reg!16746 lt!2400228)) (= r!7292 lt!2400228)) (= lambda!363319 lambda!363311))))

(declare-fun bs!1671528 () Bool)

(assert (= bs!1671528 (and b!6545596 b!6545503)))

(assert (=> bs!1671528 (not (= lambda!363319 lambda!363312))))

(assert (=> b!6545596 true))

(assert (=> b!6545596 true))

(declare-fun bs!1671529 () Bool)

(declare-fun b!6545590 () Bool)

(assert (= bs!1671529 (and b!6545590 b!6544940)))

(declare-fun lambda!363320 () Int)

(assert (=> bs!1671529 (not (= lambda!363320 lambda!363271))))

(declare-fun bs!1671530 () Bool)

(assert (= bs!1671530 (and b!6545590 b!6545596)))

(assert (=> bs!1671530 (not (= lambda!363320 lambda!363319))))

(declare-fun bs!1671531 () Bool)

(assert (= bs!1671531 (and b!6545590 b!6545503)))

(assert (=> bs!1671531 (= (and (= (regOne!33346 r!7292) (regOne!33346 lt!2400228)) (= (regTwo!33346 r!7292) (regTwo!33346 lt!2400228))) (= lambda!363320 lambda!363312))))

(assert (=> bs!1671529 (= lambda!363320 lambda!363272)))

(declare-fun bs!1671532 () Bool)

(assert (= bs!1671532 (and b!6545590 b!6545509)))

(assert (=> bs!1671532 (not (= lambda!363320 lambda!363311))))

(assert (=> b!6545590 true))

(assert (=> b!6545590 true))

(declare-fun b!6545587 () Bool)

(declare-fun e!3963263 () Bool)

(assert (=> b!6545587 (= e!3963263 (= s!2326 (Cons!65426 (c!1201926 r!7292) Nil!65426)))))

(declare-fun b!6545588 () Bool)

(declare-fun res!2685119 () Bool)

(declare-fun e!3963260 () Bool)

(assert (=> b!6545588 (=> res!2685119 e!3963260)))

(declare-fun call!569328 () Bool)

(assert (=> b!6545588 (= res!2685119 call!569328)))

(declare-fun e!3963262 () Bool)

(assert (=> b!6545588 (= e!3963262 e!3963260)))

(declare-fun b!6545589 () Bool)

(declare-fun e!3963265 () Bool)

(assert (=> b!6545589 (= e!3963265 e!3963262)))

(declare-fun c!1202113 () Bool)

(assert (=> b!6545589 (= c!1202113 ((_ is Star!16417) r!7292))))

(declare-fun call!569329 () Bool)

(assert (=> b!6545590 (= e!3963262 call!569329)))

(declare-fun b!6545591 () Bool)

(declare-fun e!3963264 () Bool)

(assert (=> b!6545591 (= e!3963265 e!3963264)))

(declare-fun res!2685120 () Bool)

(assert (=> b!6545591 (= res!2685120 (matchRSpec!3518 (regOne!33347 r!7292) s!2326))))

(assert (=> b!6545591 (=> res!2685120 e!3963264)))

(declare-fun b!6545592 () Bool)

(declare-fun c!1202115 () Bool)

(assert (=> b!6545592 (= c!1202115 ((_ is ElementMatch!16417) r!7292))))

(declare-fun e!3963259 () Bool)

(assert (=> b!6545592 (= e!3963259 e!3963263)))

(declare-fun b!6545593 () Bool)

(assert (=> b!6545593 (= e!3963264 (matchRSpec!3518 (regTwo!33347 r!7292) s!2326))))

(declare-fun b!6545594 () Bool)

(declare-fun e!3963261 () Bool)

(assert (=> b!6545594 (= e!3963261 call!569328)))

(declare-fun bm!569323 () Bool)

(assert (=> bm!569323 (= call!569329 (Exists!3487 (ite c!1202113 lambda!363319 lambda!363320)))))

(assert (=> b!6545596 (= e!3963260 call!569329)))

(declare-fun b!6545597 () Bool)

(declare-fun c!1202114 () Bool)

(assert (=> b!6545597 (= c!1202114 ((_ is Union!16417) r!7292))))

(assert (=> b!6545597 (= e!3963263 e!3963265)))

(declare-fun bm!569324 () Bool)

(assert (=> bm!569324 (= call!569328 (isEmpty!37649 s!2326))))

(declare-fun d!2054734 () Bool)

(declare-fun c!1202112 () Bool)

(assert (=> d!2054734 (= c!1202112 ((_ is EmptyExpr!16417) r!7292))))

(assert (=> d!2054734 (= (matchRSpec!3518 r!7292 s!2326) e!3963261)))

(declare-fun b!6545595 () Bool)

(assert (=> b!6545595 (= e!3963261 e!3963259)))

(declare-fun res!2685121 () Bool)

(assert (=> b!6545595 (= res!2685121 (not ((_ is EmptyLang!16417) r!7292)))))

(assert (=> b!6545595 (=> (not res!2685121) (not e!3963259))))

(assert (= (and d!2054734 c!1202112) b!6545594))

(assert (= (and d!2054734 (not c!1202112)) b!6545595))

(assert (= (and b!6545595 res!2685121) b!6545592))

(assert (= (and b!6545592 c!1202115) b!6545587))

(assert (= (and b!6545592 (not c!1202115)) b!6545597))

(assert (= (and b!6545597 c!1202114) b!6545591))

(assert (= (and b!6545597 (not c!1202114)) b!6545589))

(assert (= (and b!6545591 (not res!2685120)) b!6545593))

(assert (= (and b!6545589 c!1202113) b!6545588))

(assert (= (and b!6545589 (not c!1202113)) b!6545590))

(assert (= (and b!6545588 (not res!2685119)) b!6545596))

(assert (= (or b!6545596 b!6545590) bm!569323))

(assert (= (or b!6545594 b!6545588) bm!569324))

(declare-fun m!7328512 () Bool)

(assert (=> b!6545591 m!7328512))

(declare-fun m!7328514 () Bool)

(assert (=> b!6545593 m!7328514))

(declare-fun m!7328516 () Bool)

(assert (=> bm!569323 m!7328516))

(assert (=> bm!569324 m!7328248))

(assert (=> b!6544934 d!2054734))

(declare-fun b!6545598 () Bool)

(declare-fun res!2685129 () Bool)

(declare-fun e!3963272 () Bool)

(assert (=> b!6545598 (=> res!2685129 e!3963272)))

(declare-fun e!3963268 () Bool)

(assert (=> b!6545598 (= res!2685129 e!3963268)))

(declare-fun res!2685124 () Bool)

(assert (=> b!6545598 (=> (not res!2685124) (not e!3963268))))

(declare-fun lt!2400368 () Bool)

(assert (=> b!6545598 (= res!2685124 lt!2400368)))

(declare-fun b!6545599 () Bool)

(declare-fun e!3963269 () Bool)

(declare-fun e!3963270 () Bool)

(assert (=> b!6545599 (= e!3963269 e!3963270)))

(declare-fun c!1202118 () Bool)

(assert (=> b!6545599 (= c!1202118 ((_ is EmptyLang!16417) r!7292))))

(declare-fun b!6545600 () Bool)

(declare-fun res!2685127 () Bool)

(assert (=> b!6545600 (=> (not res!2685127) (not e!3963268))))

(declare-fun call!569330 () Bool)

(assert (=> b!6545600 (= res!2685127 (not call!569330))))

(declare-fun d!2054738 () Bool)

(assert (=> d!2054738 e!3963269))

(declare-fun c!1202117 () Bool)

(assert (=> d!2054738 (= c!1202117 ((_ is EmptyExpr!16417) r!7292))))

(declare-fun e!3963267 () Bool)

(assert (=> d!2054738 (= lt!2400368 e!3963267)))

(declare-fun c!1202116 () Bool)

(assert (=> d!2054738 (= c!1202116 (isEmpty!37649 s!2326))))

(assert (=> d!2054738 (validRegex!8153 r!7292)))

(assert (=> d!2054738 (= (matchR!8600 r!7292 s!2326) lt!2400368)))

(declare-fun b!6545601 () Bool)

(declare-fun res!2685128 () Bool)

(declare-fun e!3963266 () Bool)

(assert (=> b!6545601 (=> res!2685128 e!3963266)))

(assert (=> b!6545601 (= res!2685128 (not (isEmpty!37649 (tail!12369 s!2326))))))

(declare-fun b!6545602 () Bool)

(declare-fun res!2685126 () Bool)

(assert (=> b!6545602 (=> (not res!2685126) (not e!3963268))))

(assert (=> b!6545602 (= res!2685126 (isEmpty!37649 (tail!12369 s!2326)))))

(declare-fun b!6545603 () Bool)

(assert (=> b!6545603 (= e!3963268 (= (head!13284 s!2326) (c!1201926 r!7292)))))

(declare-fun b!6545604 () Bool)

(assert (=> b!6545604 (= e!3963267 (nullable!6410 r!7292))))

(declare-fun bm!569325 () Bool)

(assert (=> bm!569325 (= call!569330 (isEmpty!37649 s!2326))))

(declare-fun b!6545605 () Bool)

(assert (=> b!6545605 (= e!3963267 (matchR!8600 (derivativeStep!5101 r!7292 (head!13284 s!2326)) (tail!12369 s!2326)))))

(declare-fun b!6545606 () Bool)

(assert (=> b!6545606 (= e!3963270 (not lt!2400368))))

(declare-fun b!6545607 () Bool)

(assert (=> b!6545607 (= e!3963266 (not (= (head!13284 s!2326) (c!1201926 r!7292))))))

(declare-fun b!6545608 () Bool)

(declare-fun e!3963271 () Bool)

(assert (=> b!6545608 (= e!3963271 e!3963266)))

(declare-fun res!2685122 () Bool)

(assert (=> b!6545608 (=> res!2685122 e!3963266)))

(assert (=> b!6545608 (= res!2685122 call!569330)))

(declare-fun b!6545609 () Bool)

(assert (=> b!6545609 (= e!3963269 (= lt!2400368 call!569330))))

(declare-fun b!6545610 () Bool)

(declare-fun res!2685123 () Bool)

(assert (=> b!6545610 (=> res!2685123 e!3963272)))

(assert (=> b!6545610 (= res!2685123 (not ((_ is ElementMatch!16417) r!7292)))))

(assert (=> b!6545610 (= e!3963270 e!3963272)))

(declare-fun b!6545611 () Bool)

(assert (=> b!6545611 (= e!3963272 e!3963271)))

(declare-fun res!2685125 () Bool)

(assert (=> b!6545611 (=> (not res!2685125) (not e!3963271))))

(assert (=> b!6545611 (= res!2685125 (not lt!2400368))))

(assert (= (and d!2054738 c!1202116) b!6545604))

(assert (= (and d!2054738 (not c!1202116)) b!6545605))

(assert (= (and d!2054738 c!1202117) b!6545609))

(assert (= (and d!2054738 (not c!1202117)) b!6545599))

(assert (= (and b!6545599 c!1202118) b!6545606))

(assert (= (and b!6545599 (not c!1202118)) b!6545610))

(assert (= (and b!6545610 (not res!2685123)) b!6545598))

(assert (= (and b!6545598 res!2685124) b!6545600))

(assert (= (and b!6545600 res!2685127) b!6545602))

(assert (= (and b!6545602 res!2685126) b!6545603))

(assert (= (and b!6545598 (not res!2685129)) b!6545611))

(assert (= (and b!6545611 res!2685125) b!6545608))

(assert (= (and b!6545608 (not res!2685122)) b!6545601))

(assert (= (and b!6545601 (not res!2685128)) b!6545607))

(assert (= (or b!6545609 b!6545600 b!6545608) bm!569325))

(assert (=> b!6545603 m!7328252))

(declare-fun m!7328518 () Bool)

(assert (=> b!6545604 m!7328518))

(assert (=> bm!569325 m!7328248))

(assert (=> b!6545602 m!7328256))

(assert (=> b!6545602 m!7328256))

(assert (=> b!6545602 m!7328470))

(assert (=> b!6545607 m!7328252))

(assert (=> b!6545601 m!7328256))

(assert (=> b!6545601 m!7328256))

(assert (=> b!6545601 m!7328470))

(assert (=> d!2054738 m!7328248))

(assert (=> d!2054738 m!7327930))

(assert (=> b!6545605 m!7328252))

(assert (=> b!6545605 m!7328252))

(declare-fun m!7328520 () Bool)

(assert (=> b!6545605 m!7328520))

(assert (=> b!6545605 m!7328256))

(assert (=> b!6545605 m!7328520))

(assert (=> b!6545605 m!7328256))

(declare-fun m!7328522 () Bool)

(assert (=> b!6545605 m!7328522))

(assert (=> b!6544934 d!2054738))

(declare-fun d!2054740 () Bool)

(assert (=> d!2054740 (= (matchR!8600 r!7292 s!2326) (matchRSpec!3518 r!7292 s!2326))))

(declare-fun lt!2400371 () Unit!159003)

(assert (=> d!2054740 (= lt!2400371 (choose!48620 r!7292 s!2326))))

(assert (=> d!2054740 (validRegex!8153 r!7292)))

(assert (=> d!2054740 (= (mainMatchTheorem!3518 r!7292 s!2326) lt!2400371)))

(declare-fun bs!1671533 () Bool)

(assert (= bs!1671533 d!2054740))

(assert (=> bs!1671533 m!7327972))

(assert (=> bs!1671533 m!7327970))

(declare-fun m!7328524 () Bool)

(assert (=> bs!1671533 m!7328524))

(assert (=> bs!1671533 m!7327930))

(assert (=> b!6544934 d!2054740))

(declare-fun d!2054742 () Bool)

(declare-fun c!1202121 () Bool)

(assert (=> d!2054742 (= c!1202121 (isEmpty!37649 s!2326))))

(declare-fun e!3963275 () Bool)

(assert (=> d!2054742 (= (matchZipper!2429 z!1189 s!2326) e!3963275)))

(declare-fun b!6545616 () Bool)

(assert (=> b!6545616 (= e!3963275 (nullableZipper!2161 z!1189))))

(declare-fun b!6545617 () Bool)

(assert (=> b!6545617 (= e!3963275 (matchZipper!2429 (derivationStepZipper!2383 z!1189 (head!13284 s!2326)) (tail!12369 s!2326)))))

(assert (= (and d!2054742 c!1202121) b!6545616))

(assert (= (and d!2054742 (not c!1202121)) b!6545617))

(assert (=> d!2054742 m!7328248))

(declare-fun m!7328526 () Bool)

(assert (=> b!6545616 m!7328526))

(assert (=> b!6545617 m!7328252))

(assert (=> b!6545617 m!7328252))

(declare-fun m!7328528 () Bool)

(assert (=> b!6545617 m!7328528))

(assert (=> b!6545617 m!7328256))

(assert (=> b!6545617 m!7328528))

(assert (=> b!6545617 m!7328256))

(declare-fun m!7328530 () Bool)

(assert (=> b!6545617 m!7328530))

(assert (=> b!6544938 d!2054742))

(declare-fun d!2054744 () Bool)

(declare-fun c!1202123 () Bool)

(assert (=> d!2054744 (= c!1202123 (isEmpty!37649 (t!379192 s!2326)))))

(declare-fun e!3963277 () Bool)

(assert (=> d!2054744 (= (matchZipper!2429 lt!2400256 (t!379192 s!2326)) e!3963277)))

(declare-fun b!6545619 () Bool)

(assert (=> b!6545619 (= e!3963277 (nullableZipper!2161 lt!2400256))))

(declare-fun b!6545621 () Bool)

(assert (=> b!6545621 (= e!3963277 (matchZipper!2429 (derivationStepZipper!2383 lt!2400256 (head!13284 (t!379192 s!2326))) (tail!12369 (t!379192 s!2326))))))

(assert (= (and d!2054744 c!1202123) b!6545619))

(assert (= (and d!2054744 (not c!1202123)) b!6545621))

(assert (=> d!2054744 m!7328030))

(declare-fun m!7328532 () Bool)

(assert (=> b!6545619 m!7328532))

(assert (=> b!6545621 m!7328034))

(assert (=> b!6545621 m!7328034))

(declare-fun m!7328534 () Bool)

(assert (=> b!6545621 m!7328534))

(assert (=> b!6545621 m!7328038))

(assert (=> b!6545621 m!7328534))

(assert (=> b!6545621 m!7328038))

(declare-fun m!7328536 () Bool)

(assert (=> b!6545621 m!7328536))

(assert (=> b!6544936 d!2054744))

(declare-fun d!2054746 () Bool)

(declare-fun c!1202124 () Bool)

(assert (=> d!2054746 (= c!1202124 (isEmpty!37649 (_1!36699 lt!2400243)))))

(declare-fun e!3963278 () Bool)

(assert (=> d!2054746 (= (matchZipper!2429 lt!2400267 (_1!36699 lt!2400243)) e!3963278)))

(declare-fun b!6545622 () Bool)

(assert (=> b!6545622 (= e!3963278 (nullableZipper!2161 lt!2400267))))

(declare-fun b!6545623 () Bool)

(assert (=> b!6545623 (= e!3963278 (matchZipper!2429 (derivationStepZipper!2383 lt!2400267 (head!13284 (_1!36699 lt!2400243))) (tail!12369 (_1!36699 lt!2400243))))))

(assert (= (and d!2054746 c!1202124) b!6545622))

(assert (= (and d!2054746 (not c!1202124)) b!6545623))

(declare-fun m!7328538 () Bool)

(assert (=> d!2054746 m!7328538))

(declare-fun m!7328540 () Bool)

(assert (=> b!6545622 m!7328540))

(declare-fun m!7328542 () Bool)

(assert (=> b!6545623 m!7328542))

(assert (=> b!6545623 m!7328542))

(declare-fun m!7328544 () Bool)

(assert (=> b!6545623 m!7328544))

(declare-fun m!7328546 () Bool)

(assert (=> b!6545623 m!7328546))

(assert (=> b!6545623 m!7328544))

(assert (=> b!6545623 m!7328546))

(declare-fun m!7328550 () Bool)

(assert (=> b!6545623 m!7328550))

(assert (=> b!6544937 d!2054746))

(declare-fun d!2054748 () Bool)

(declare-fun choose!48623 (Int) Bool)

(assert (=> d!2054748 (= (Exists!3487 lambda!363272) (choose!48623 lambda!363272))))

(declare-fun bs!1671538 () Bool)

(assert (= bs!1671538 d!2054748))

(declare-fun m!7328554 () Bool)

(assert (=> bs!1671538 m!7328554))

(assert (=> b!6544940 d!2054748))

(declare-fun b!6545672 () Bool)

(declare-fun lt!2400382 () Unit!159003)

(declare-fun lt!2400384 () Unit!159003)

(assert (=> b!6545672 (= lt!2400382 lt!2400384)))

(assert (=> b!6545672 (= (++!14537 (++!14537 Nil!65426 (Cons!65426 (h!71874 s!2326) Nil!65426)) (t!379192 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2560 (List!65550 C!33104 List!65550 List!65550) Unit!159003)

(assert (=> b!6545672 (= lt!2400384 (lemmaMoveElementToOtherListKeepsConcatEq!2560 Nil!65426 (h!71874 s!2326) (t!379192 s!2326) s!2326))))

(declare-fun e!3963310 () Option!16308)

(assert (=> b!6545672 (= e!3963310 (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) (++!14537 Nil!65426 (Cons!65426 (h!71874 s!2326) Nil!65426)) (t!379192 s!2326) s!2326))))

(declare-fun b!6545673 () Bool)

(declare-fun e!3963311 () Option!16308)

(assert (=> b!6545673 (= e!3963311 (Some!16307 (tuple2!66793 Nil!65426 s!2326)))))

(declare-fun d!2054752 () Bool)

(declare-fun e!3963307 () Bool)

(assert (=> d!2054752 e!3963307))

(declare-fun res!2685146 () Bool)

(assert (=> d!2054752 (=> res!2685146 e!3963307)))

(declare-fun e!3963308 () Bool)

(assert (=> d!2054752 (= res!2685146 e!3963308)))

(declare-fun res!2685148 () Bool)

(assert (=> d!2054752 (=> (not res!2685148) (not e!3963308))))

(declare-fun lt!2400383 () Option!16308)

(assert (=> d!2054752 (= res!2685148 (isDefined!13011 lt!2400383))))

(assert (=> d!2054752 (= lt!2400383 e!3963311)))

(declare-fun c!1202141 () Bool)

(declare-fun e!3963309 () Bool)

(assert (=> d!2054752 (= c!1202141 e!3963309)))

(declare-fun res!2685149 () Bool)

(assert (=> d!2054752 (=> (not res!2685149) (not e!3963309))))

(assert (=> d!2054752 (= res!2685149 (matchR!8600 (regOne!33346 r!7292) Nil!65426))))

(assert (=> d!2054752 (validRegex!8153 (regOne!33346 r!7292))))

(assert (=> d!2054752 (= (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) Nil!65426 s!2326 s!2326) lt!2400383)))

(declare-fun b!6545674 () Bool)

(assert (=> b!6545674 (= e!3963310 None!16307)))

(declare-fun b!6545675 () Bool)

(declare-fun res!2685150 () Bool)

(assert (=> b!6545675 (=> (not res!2685150) (not e!3963308))))

(assert (=> b!6545675 (= res!2685150 (matchR!8600 (regOne!33346 r!7292) (_1!36699 (get!22707 lt!2400383))))))

(declare-fun b!6545676 () Bool)

(assert (=> b!6545676 (= e!3963309 (matchR!8600 (regTwo!33346 r!7292) s!2326))))

(declare-fun b!6545677 () Bool)

(assert (=> b!6545677 (= e!3963308 (= (++!14537 (_1!36699 (get!22707 lt!2400383)) (_2!36699 (get!22707 lt!2400383))) s!2326))))

(declare-fun b!6545678 () Bool)

(assert (=> b!6545678 (= e!3963307 (not (isDefined!13011 lt!2400383)))))

(declare-fun b!6545679 () Bool)

(declare-fun res!2685147 () Bool)

(assert (=> b!6545679 (=> (not res!2685147) (not e!3963308))))

(assert (=> b!6545679 (= res!2685147 (matchR!8600 (regTwo!33346 r!7292) (_2!36699 (get!22707 lt!2400383))))))

(declare-fun b!6545680 () Bool)

(assert (=> b!6545680 (= e!3963311 e!3963310)))

(declare-fun c!1202142 () Bool)

(assert (=> b!6545680 (= c!1202142 ((_ is Nil!65426) s!2326))))

(assert (= (and d!2054752 res!2685149) b!6545676))

(assert (= (and d!2054752 c!1202141) b!6545673))

(assert (= (and d!2054752 (not c!1202141)) b!6545680))

(assert (= (and b!6545680 c!1202142) b!6545674))

(assert (= (and b!6545680 (not c!1202142)) b!6545672))

(assert (= (and d!2054752 res!2685148) b!6545675))

(assert (= (and b!6545675 res!2685150) b!6545679))

(assert (= (and b!6545679 res!2685147) b!6545677))

(assert (= (and d!2054752 (not res!2685146)) b!6545678))

(declare-fun m!7328576 () Bool)

(assert (=> b!6545675 m!7328576))

(declare-fun m!7328578 () Bool)

(assert (=> b!6545675 m!7328578))

(declare-fun m!7328580 () Bool)

(assert (=> b!6545676 m!7328580))

(declare-fun m!7328582 () Bool)

(assert (=> b!6545672 m!7328582))

(assert (=> b!6545672 m!7328582))

(declare-fun m!7328584 () Bool)

(assert (=> b!6545672 m!7328584))

(declare-fun m!7328586 () Bool)

(assert (=> b!6545672 m!7328586))

(assert (=> b!6545672 m!7328582))

(declare-fun m!7328588 () Bool)

(assert (=> b!6545672 m!7328588))

(declare-fun m!7328590 () Bool)

(assert (=> b!6545678 m!7328590))

(assert (=> b!6545677 m!7328576))

(declare-fun m!7328592 () Bool)

(assert (=> b!6545677 m!7328592))

(assert (=> b!6545679 m!7328576))

(declare-fun m!7328596 () Bool)

(assert (=> b!6545679 m!7328596))

(assert (=> d!2054752 m!7328590))

(declare-fun m!7328598 () Bool)

(assert (=> d!2054752 m!7328598))

(declare-fun m!7328600 () Bool)

(assert (=> d!2054752 m!7328600))

(assert (=> b!6544940 d!2054752))

(declare-fun d!2054760 () Bool)

(assert (=> d!2054760 (= (Exists!3487 lambda!363271) (choose!48623 lambda!363271))))

(declare-fun bs!1671546 () Bool)

(assert (= bs!1671546 d!2054760))

(declare-fun m!7328606 () Bool)

(assert (=> bs!1671546 m!7328606))

(assert (=> b!6544940 d!2054760))

(declare-fun bs!1671547 () Bool)

(declare-fun d!2054762 () Bool)

(assert (= bs!1671547 (and d!2054762 b!6545590)))

(declare-fun lambda!363329 () Int)

(assert (=> bs!1671547 (not (= lambda!363329 lambda!363320))))

(declare-fun bs!1671548 () Bool)

(assert (= bs!1671548 (and d!2054762 b!6544940)))

(assert (=> bs!1671548 (= lambda!363329 lambda!363271)))

(declare-fun bs!1671549 () Bool)

(assert (= bs!1671549 (and d!2054762 b!6545596)))

(assert (=> bs!1671549 (not (= lambda!363329 lambda!363319))))

(declare-fun bs!1671550 () Bool)

(assert (= bs!1671550 (and d!2054762 b!6545503)))

(assert (=> bs!1671550 (not (= lambda!363329 lambda!363312))))

(assert (=> bs!1671548 (not (= lambda!363329 lambda!363272))))

(declare-fun bs!1671551 () Bool)

(assert (= bs!1671551 (and d!2054762 b!6545509)))

(assert (=> bs!1671551 (not (= lambda!363329 lambda!363311))))

(assert (=> d!2054762 true))

(assert (=> d!2054762 true))

(assert (=> d!2054762 true))

(assert (=> d!2054762 (= (isDefined!13011 (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) Nil!65426 s!2326 s!2326)) (Exists!3487 lambda!363329))))

(declare-fun lt!2400390 () Unit!159003)

(declare-fun choose!48624 (Regex!16417 Regex!16417 List!65550) Unit!159003)

(assert (=> d!2054762 (= lt!2400390 (choose!48624 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326))))

(assert (=> d!2054762 (validRegex!8153 (regOne!33346 r!7292))))

(assert (=> d!2054762 (= (lemmaFindConcatSeparationEquivalentToExists!2486 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326) lt!2400390)))

(declare-fun bs!1671552 () Bool)

(assert (= bs!1671552 d!2054762))

(assert (=> bs!1671552 m!7327886))

(declare-fun m!7328610 () Bool)

(assert (=> bs!1671552 m!7328610))

(declare-fun m!7328612 () Bool)

(assert (=> bs!1671552 m!7328612))

(assert (=> bs!1671552 m!7328600))

(assert (=> bs!1671552 m!7327886))

(assert (=> bs!1671552 m!7327888))

(assert (=> b!6544940 d!2054762))

(declare-fun bs!1671553 () Bool)

(declare-fun d!2054766 () Bool)

(assert (= bs!1671553 (and d!2054766 b!6545590)))

(declare-fun lambda!363334 () Int)

(assert (=> bs!1671553 (not (= lambda!363334 lambda!363320))))

(declare-fun bs!1671554 () Bool)

(assert (= bs!1671554 (and d!2054766 b!6544940)))

(assert (=> bs!1671554 (= lambda!363334 lambda!363271)))

(declare-fun bs!1671555 () Bool)

(assert (= bs!1671555 (and d!2054766 b!6545596)))

(assert (=> bs!1671555 (not (= lambda!363334 lambda!363319))))

(declare-fun bs!1671556 () Bool)

(assert (= bs!1671556 (and d!2054766 b!6545503)))

(assert (=> bs!1671556 (not (= lambda!363334 lambda!363312))))

(assert (=> bs!1671554 (not (= lambda!363334 lambda!363272))))

(declare-fun bs!1671557 () Bool)

(assert (= bs!1671557 (and d!2054766 b!6545509)))

(assert (=> bs!1671557 (not (= lambda!363334 lambda!363311))))

(declare-fun bs!1671558 () Bool)

(assert (= bs!1671558 (and d!2054766 d!2054762)))

(assert (=> bs!1671558 (= lambda!363334 lambda!363329)))

(assert (=> d!2054766 true))

(assert (=> d!2054766 true))

(assert (=> d!2054766 true))

(declare-fun bs!1671559 () Bool)

(assert (= bs!1671559 d!2054766))

(declare-fun lambda!363335 () Int)

(assert (=> bs!1671559 (not (= lambda!363335 lambda!363334))))

(assert (=> bs!1671553 (= lambda!363335 lambda!363320)))

(assert (=> bs!1671554 (not (= lambda!363335 lambda!363271))))

(assert (=> bs!1671555 (not (= lambda!363335 lambda!363319))))

(assert (=> bs!1671556 (= (and (= (regOne!33346 r!7292) (regOne!33346 lt!2400228)) (= (regTwo!33346 r!7292) (regTwo!33346 lt!2400228))) (= lambda!363335 lambda!363312))))

(assert (=> bs!1671554 (= lambda!363335 lambda!363272)))

(assert (=> bs!1671557 (not (= lambda!363335 lambda!363311))))

(assert (=> bs!1671558 (not (= lambda!363335 lambda!363329))))

(assert (=> d!2054766 true))

(assert (=> d!2054766 true))

(assert (=> d!2054766 true))

(assert (=> d!2054766 (= (Exists!3487 lambda!363334) (Exists!3487 lambda!363335))))

(declare-fun lt!2400402 () Unit!159003)

(declare-fun choose!48626 (Regex!16417 Regex!16417 List!65550) Unit!159003)

(assert (=> d!2054766 (= lt!2400402 (choose!48626 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326))))

(assert (=> d!2054766 (validRegex!8153 (regOne!33346 r!7292))))

(assert (=> d!2054766 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2024 (regOne!33346 r!7292) (regTwo!33346 r!7292) s!2326) lt!2400402)))

(declare-fun m!7328632 () Bool)

(assert (=> bs!1671559 m!7328632))

(declare-fun m!7328634 () Bool)

(assert (=> bs!1671559 m!7328634))

(declare-fun m!7328636 () Bool)

(assert (=> bs!1671559 m!7328636))

(assert (=> bs!1671559 m!7328600))

(assert (=> b!6544940 d!2054766))

(declare-fun d!2054770 () Bool)

(declare-fun isEmpty!37650 (Option!16308) Bool)

(assert (=> d!2054770 (= (isDefined!13011 (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) Nil!65426 s!2326 s!2326)) (not (isEmpty!37650 (findConcatSeparation!2722 (regOne!33346 r!7292) (regTwo!33346 r!7292) Nil!65426 s!2326 s!2326))))))

(declare-fun bs!1671560 () Bool)

(assert (= bs!1671560 d!2054770))

(assert (=> bs!1671560 m!7327886))

(declare-fun m!7328658 () Bool)

(assert (=> bs!1671560 m!7328658))

(assert (=> b!6544940 d!2054770))

(declare-fun d!2054776 () Bool)

(declare-fun e!3963345 () Bool)

(assert (=> d!2054776 (= (matchZipper!2429 ((_ map or) lt!2400264 lt!2400256) (t!379192 s!2326)) e!3963345)))

(declare-fun res!2685187 () Bool)

(assert (=> d!2054776 (=> res!2685187 e!3963345)))

(assert (=> d!2054776 (= res!2685187 (matchZipper!2429 lt!2400264 (t!379192 s!2326)))))

(declare-fun lt!2400409 () Unit!159003)

(declare-fun choose!48627 ((InoxSet Context!11602) (InoxSet Context!11602) List!65550) Unit!159003)

(assert (=> d!2054776 (= lt!2400409 (choose!48627 lt!2400264 lt!2400256 (t!379192 s!2326)))))

(assert (=> d!2054776 (= (lemmaZipperConcatMatchesSameAsBothZippers!1248 lt!2400264 lt!2400256 (t!379192 s!2326)) lt!2400409)))

(declare-fun b!6545743 () Bool)

(assert (=> b!6545743 (= e!3963345 (matchZipper!2429 lt!2400256 (t!379192 s!2326)))))

(assert (= (and d!2054776 (not res!2685187)) b!6545743))

(assert (=> d!2054776 m!7327936))

(assert (=> d!2054776 m!7327934))

(declare-fun m!7328676 () Bool)

(assert (=> d!2054776 m!7328676))

(assert (=> b!6545743 m!7327938))

(assert (=> b!6544941 d!2054776))

(assert (=> b!6544941 d!2054586))

(declare-fun d!2054788 () Bool)

(declare-fun c!1202157 () Bool)

(assert (=> d!2054788 (= c!1202157 (isEmpty!37649 (t!379192 s!2326)))))

(declare-fun e!3963346 () Bool)

(assert (=> d!2054788 (= (matchZipper!2429 ((_ map or) lt!2400264 lt!2400256) (t!379192 s!2326)) e!3963346)))

(declare-fun b!6545744 () Bool)

(assert (=> b!6545744 (= e!3963346 (nullableZipper!2161 ((_ map or) lt!2400264 lt!2400256)))))

(declare-fun b!6545745 () Bool)

(assert (=> b!6545745 (= e!3963346 (matchZipper!2429 (derivationStepZipper!2383 ((_ map or) lt!2400264 lt!2400256) (head!13284 (t!379192 s!2326))) (tail!12369 (t!379192 s!2326))))))

(assert (= (and d!2054788 c!1202157) b!6545744))

(assert (= (and d!2054788 (not c!1202157)) b!6545745))

(assert (=> d!2054788 m!7328030))

(declare-fun m!7328678 () Bool)

(assert (=> b!6545744 m!7328678))

(assert (=> b!6545745 m!7328034))

(assert (=> b!6545745 m!7328034))

(declare-fun m!7328680 () Bool)

(assert (=> b!6545745 m!7328680))

(assert (=> b!6545745 m!7328038))

(assert (=> b!6545745 m!7328680))

(assert (=> b!6545745 m!7328038))

(declare-fun m!7328682 () Bool)

(assert (=> b!6545745 m!7328682))

(assert (=> b!6544941 d!2054788))

(declare-fun bs!1671574 () Bool)

(declare-fun d!2054790 () Bool)

(assert (= bs!1671574 (and d!2054790 b!6544950)))

(declare-fun lambda!363347 () Int)

(assert (=> bs!1671574 (= lambda!363347 lambda!363275)))

(declare-fun bs!1671576 () Bool)

(assert (= bs!1671576 (and d!2054790 d!2054644)))

(assert (=> bs!1671576 (= lambda!363347 lambda!363303)))

(declare-fun bs!1671578 () Bool)

(assert (= bs!1671578 (and d!2054790 d!2054654)))

(assert (=> bs!1671578 (= lambda!363347 lambda!363306)))

(declare-fun b!6545777 () Bool)

(declare-fun e!3963368 () Bool)

(declare-fun lt!2400417 () Regex!16417)

(declare-fun isEmptyExpr!1795 (Regex!16417) Bool)

(assert (=> b!6545777 (= e!3963368 (isEmptyExpr!1795 lt!2400417))))

(declare-fun e!3963371 () Bool)

(assert (=> d!2054790 e!3963371))

(declare-fun res!2685197 () Bool)

(assert (=> d!2054790 (=> (not res!2685197) (not e!3963371))))

(assert (=> d!2054790 (= res!2685197 (validRegex!8153 lt!2400417))))

(declare-fun e!3963366 () Regex!16417)

(assert (=> d!2054790 (= lt!2400417 e!3963366)))

(declare-fun c!1202172 () Bool)

(declare-fun e!3963367 () Bool)

(assert (=> d!2054790 (= c!1202172 e!3963367)))

(declare-fun res!2685198 () Bool)

(assert (=> d!2054790 (=> (not res!2685198) (not e!3963367))))

(assert (=> d!2054790 (= res!2685198 ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343))))))

(assert (=> d!2054790 (forall!15589 (exprs!6301 (h!71876 zl!343)) lambda!363347)))

(assert (=> d!2054790 (= (generalisedConcat!2014 (exprs!6301 (h!71876 zl!343))) lt!2400417)))

(declare-fun b!6545778 () Bool)

(declare-fun e!3963370 () Regex!16417)

(assert (=> b!6545778 (= e!3963370 EmptyExpr!16417)))

(declare-fun b!6545779 () Bool)

(assert (=> b!6545779 (= e!3963367 (isEmpty!37645 (t!379193 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545780 () Bool)

(declare-fun e!3963369 () Bool)

(assert (=> b!6545780 (= e!3963368 e!3963369)))

(declare-fun c!1202170 () Bool)

(assert (=> b!6545780 (= c!1202170 (isEmpty!37645 (tail!12370 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545781 () Bool)

(assert (=> b!6545781 (= e!3963366 (h!71875 (exprs!6301 (h!71876 zl!343))))))

(declare-fun b!6545782 () Bool)

(assert (=> b!6545782 (= e!3963366 e!3963370)))

(declare-fun c!1202171 () Bool)

(assert (=> b!6545782 (= c!1202171 ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343))))))

(declare-fun b!6545783 () Bool)

(assert (=> b!6545783 (= e!3963371 e!3963368)))

(declare-fun c!1202169 () Bool)

(assert (=> b!6545783 (= c!1202169 (isEmpty!37645 (exprs!6301 (h!71876 zl!343))))))

(declare-fun b!6545784 () Bool)

(declare-fun isConcat!1318 (Regex!16417) Bool)

(assert (=> b!6545784 (= e!3963369 (isConcat!1318 lt!2400417))))

(declare-fun b!6545785 () Bool)

(assert (=> b!6545785 (= e!3963369 (= lt!2400417 (head!13285 (exprs!6301 (h!71876 zl!343)))))))

(declare-fun b!6545786 () Bool)

(assert (=> b!6545786 (= e!3963370 (Concat!25262 (h!71875 (exprs!6301 (h!71876 zl!343))) (generalisedConcat!2014 (t!379193 (exprs!6301 (h!71876 zl!343))))))))

(assert (= (and d!2054790 res!2685198) b!6545779))

(assert (= (and d!2054790 c!1202172) b!6545781))

(assert (= (and d!2054790 (not c!1202172)) b!6545782))

(assert (= (and b!6545782 c!1202171) b!6545786))

(assert (= (and b!6545782 (not c!1202171)) b!6545778))

(assert (= (and d!2054790 res!2685197) b!6545783))

(assert (= (and b!6545783 c!1202169) b!6545777))

(assert (= (and b!6545783 (not c!1202169)) b!6545780))

(assert (= (and b!6545780 c!1202170) b!6545785))

(assert (= (and b!6545780 (not c!1202170)) b!6545784))

(declare-fun m!7328708 () Bool)

(assert (=> b!6545786 m!7328708))

(declare-fun m!7328710 () Bool)

(assert (=> b!6545785 m!7328710))

(declare-fun m!7328712 () Bool)

(assert (=> b!6545784 m!7328712))

(assert (=> b!6545779 m!7327988))

(declare-fun m!7328714 () Bool)

(assert (=> d!2054790 m!7328714))

(declare-fun m!7328716 () Bool)

(assert (=> d!2054790 m!7328716))

(declare-fun m!7328718 () Bool)

(assert (=> b!6545783 m!7328718))

(declare-fun m!7328720 () Bool)

(assert (=> b!6545780 m!7328720))

(assert (=> b!6545780 m!7328720))

(declare-fun m!7328722 () Bool)

(assert (=> b!6545780 m!7328722))

(declare-fun m!7328724 () Bool)

(assert (=> b!6545777 m!7328724))

(assert (=> b!6544961 d!2054790))

(declare-fun d!2054804 () Bool)

(assert (=> d!2054804 (= (nullable!6410 (regOne!33346 (regOne!33346 r!7292))) (nullableFct!2336 (regOne!33346 (regOne!33346 r!7292))))))

(declare-fun bs!1671580 () Bool)

(assert (= bs!1671580 d!2054804))

(declare-fun m!7328732 () Bool)

(assert (=> bs!1671580 m!7328732))

(assert (=> b!6544964 d!2054804))

(declare-fun d!2054808 () Bool)

(assert (=> d!2054808 (= (matchR!8600 lt!2400232 (_2!36699 lt!2400243)) (matchZipper!2429 lt!2400270 (_2!36699 lt!2400243)))))

(declare-fun lt!2400425 () Unit!159003)

(declare-fun choose!48629 ((InoxSet Context!11602) List!65552 Regex!16417 List!65550) Unit!159003)

(assert (=> d!2054808 (= lt!2400425 (choose!48629 lt!2400270 lt!2400252 lt!2400232 (_2!36699 lt!2400243)))))

(assert (=> d!2054808 (validRegex!8153 lt!2400232)))

(assert (=> d!2054808 (= (theoremZipperRegexEquiv!853 lt!2400270 lt!2400252 lt!2400232 (_2!36699 lt!2400243)) lt!2400425)))

(declare-fun bs!1671585 () Bool)

(assert (= bs!1671585 d!2054808))

(assert (=> bs!1671585 m!7327904))

(assert (=> bs!1671585 m!7328006))

(declare-fun m!7328756 () Bool)

(assert (=> bs!1671585 m!7328756))

(declare-fun m!7328758 () Bool)

(assert (=> bs!1671585 m!7328758))

(assert (=> b!6544923 d!2054808))

(declare-fun b!6545801 () Bool)

(declare-fun e!3963386 () Bool)

(declare-fun call!569337 () Bool)

(assert (=> b!6545801 (= e!3963386 call!569337)))

(declare-fun b!6545802 () Bool)

(declare-fun res!2685203 () Bool)

(assert (=> b!6545802 (=> (not res!2685203) (not e!3963386))))

(declare-fun call!569339 () Bool)

(assert (=> b!6545802 (= res!2685203 call!569339)))

(declare-fun e!3963382 () Bool)

(assert (=> b!6545802 (= e!3963382 e!3963386)))

(declare-fun bm!569332 () Bool)

(declare-fun c!1202178 () Bool)

(assert (=> bm!569332 (= call!569337 (validRegex!8153 (ite c!1202178 (regTwo!33347 (reg!16746 (regOne!33346 r!7292))) (regTwo!33346 (reg!16746 (regOne!33346 r!7292))))))))

(declare-fun b!6545803 () Bool)

(declare-fun e!3963383 () Bool)

(assert (=> b!6545803 (= e!3963383 e!3963382)))

(assert (=> b!6545803 (= c!1202178 ((_ is Union!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun b!6545804 () Bool)

(declare-fun e!3963384 () Bool)

(assert (=> b!6545804 (= e!3963383 e!3963384)))

(declare-fun res!2685204 () Bool)

(assert (=> b!6545804 (= res!2685204 (not (nullable!6410 (reg!16746 (reg!16746 (regOne!33346 r!7292))))))))

(assert (=> b!6545804 (=> (not res!2685204) (not e!3963384))))

(declare-fun b!6545805 () Bool)

(declare-fun e!3963381 () Bool)

(assert (=> b!6545805 (= e!3963381 call!569337)))

(declare-fun b!6545806 () Bool)

(declare-fun call!569338 () Bool)

(assert (=> b!6545806 (= e!3963384 call!569338)))

(declare-fun b!6545807 () Bool)

(declare-fun res!2685206 () Bool)

(declare-fun e!3963387 () Bool)

(assert (=> b!6545807 (=> res!2685206 e!3963387)))

(assert (=> b!6545807 (= res!2685206 (not ((_ is Concat!25262) (reg!16746 (regOne!33346 r!7292)))))))

(assert (=> b!6545807 (= e!3963382 e!3963387)))

(declare-fun b!6545808 () Bool)

(assert (=> b!6545808 (= e!3963387 e!3963381)))

(declare-fun res!2685207 () Bool)

(assert (=> b!6545808 (=> (not res!2685207) (not e!3963381))))

(assert (=> b!6545808 (= res!2685207 call!569339)))

(declare-fun b!6545809 () Bool)

(declare-fun e!3963385 () Bool)

(assert (=> b!6545809 (= e!3963385 e!3963383)))

(declare-fun c!1202179 () Bool)

(assert (=> b!6545809 (= c!1202179 ((_ is Star!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun bm!569334 () Bool)

(assert (=> bm!569334 (= call!569338 (validRegex!8153 (ite c!1202179 (reg!16746 (reg!16746 (regOne!33346 r!7292))) (ite c!1202178 (regOne!33347 (reg!16746 (regOne!33346 r!7292))) (regOne!33346 (reg!16746 (regOne!33346 r!7292)))))))))

(declare-fun d!2054820 () Bool)

(declare-fun res!2685205 () Bool)

(assert (=> d!2054820 (=> res!2685205 e!3963385)))

(assert (=> d!2054820 (= res!2685205 ((_ is ElementMatch!16417) (reg!16746 (regOne!33346 r!7292))))))

(assert (=> d!2054820 (= (validRegex!8153 (reg!16746 (regOne!33346 r!7292))) e!3963385)))

(declare-fun bm!569333 () Bool)

(assert (=> bm!569333 (= call!569339 call!569338)))

(assert (= (and d!2054820 (not res!2685205)) b!6545809))

(assert (= (and b!6545809 c!1202179) b!6545804))

(assert (= (and b!6545809 (not c!1202179)) b!6545803))

(assert (= (and b!6545804 res!2685204) b!6545806))

(assert (= (and b!6545803 c!1202178) b!6545802))

(assert (= (and b!6545803 (not c!1202178)) b!6545807))

(assert (= (and b!6545802 res!2685203) b!6545801))

(assert (= (and b!6545807 (not res!2685206)) b!6545808))

(assert (= (and b!6545808 res!2685207) b!6545805))

(assert (= (or b!6545801 b!6545805) bm!569332))

(assert (= (or b!6545802 b!6545808) bm!569333))

(assert (= (or b!6545806 bm!569333) bm!569334))

(declare-fun m!7328762 () Bool)

(assert (=> bm!569332 m!7328762))

(declare-fun m!7328764 () Bool)

(assert (=> b!6545804 m!7328764))

(declare-fun m!7328766 () Bool)

(assert (=> bm!569334 m!7328766))

(assert (=> b!6544923 d!2054820))

(assert (=> b!6544923 d!2054628))

(assert (=> b!6544923 d!2054620))

(declare-fun d!2054824 () Bool)

(declare-fun c!1202181 () Bool)

(assert (=> d!2054824 (= c!1202181 (isEmpty!37649 lt!2400230))))

(declare-fun e!3963390 () Bool)

(assert (=> d!2054824 (= (matchZipper!2429 (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 lt!2400240 lt!2400244)) true) lt!2400230) e!3963390)))

(declare-fun b!6545813 () Bool)

(assert (=> b!6545813 (= e!3963390 (nullableZipper!2161 (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 lt!2400240 lt!2400244)) true)))))

(declare-fun b!6545814 () Bool)

(assert (=> b!6545814 (= e!3963390 (matchZipper!2429 (derivationStepZipper!2383 (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 lt!2400240 lt!2400244)) true) (head!13284 lt!2400230)) (tail!12369 lt!2400230)))))

(assert (= (and d!2054824 c!1202181) b!6545813))

(assert (= (and d!2054824 (not c!1202181)) b!6545814))

(declare-fun m!7328774 () Bool)

(assert (=> d!2054824 m!7328774))

(assert (=> b!6545813 m!7327908))

(declare-fun m!7328776 () Bool)

(assert (=> b!6545813 m!7328776))

(declare-fun m!7328778 () Bool)

(assert (=> b!6545814 m!7328778))

(assert (=> b!6545814 m!7327908))

(assert (=> b!6545814 m!7328778))

(declare-fun m!7328782 () Bool)

(assert (=> b!6545814 m!7328782))

(declare-fun m!7328784 () Bool)

(assert (=> b!6545814 m!7328784))

(assert (=> b!6545814 m!7328782))

(assert (=> b!6545814 m!7328784))

(declare-fun m!7328786 () Bool)

(assert (=> b!6545814 m!7328786))

(assert (=> b!6544923 d!2054824))

(declare-fun bs!1671589 () Bool)

(declare-fun d!2054830 () Bool)

(assert (= bs!1671589 (and d!2054830 b!6544950)))

(declare-fun lambda!363350 () Int)

(assert (=> bs!1671589 (= lambda!363350 lambda!363275)))

(declare-fun bs!1671591 () Bool)

(assert (= bs!1671591 (and d!2054830 d!2054644)))

(assert (=> bs!1671591 (= lambda!363350 lambda!363303)))

(declare-fun bs!1671593 () Bool)

(assert (= bs!1671593 (and d!2054830 d!2054654)))

(assert (=> bs!1671593 (= lambda!363350 lambda!363306)))

(declare-fun bs!1671594 () Bool)

(assert (= bs!1671594 (and d!2054830 d!2054790)))

(assert (=> bs!1671594 (= lambda!363350 lambda!363347)))

(assert (=> d!2054830 (matchZipper!2429 (store ((as const (Array Context!11602 Bool)) false) (Context!11603 (++!14536 (exprs!6301 lt!2400257) (exprs!6301 lt!2400233))) true) (++!14537 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(declare-fun lt!2400434 () Unit!159003)

(assert (=> d!2054830 (= lt!2400434 (lemmaConcatPreservesForall!390 (exprs!6301 lt!2400257) (exprs!6301 lt!2400233) lambda!363350))))

(declare-fun lt!2400433 () Unit!159003)

(declare-fun choose!48630 (Context!11602 Context!11602 List!65550 List!65550) Unit!159003)

(assert (=> d!2054830 (= lt!2400433 (choose!48630 lt!2400257 lt!2400233 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(assert (=> d!2054830 (matchZipper!2429 (store ((as const (Array Context!11602 Bool)) false) lt!2400257 true) (_1!36699 lt!2400243))))

(assert (=> d!2054830 (= (lemmaConcatenateContextMatchesConcatOfStrings!198 lt!2400257 lt!2400233 (_1!36699 lt!2400243) (_2!36699 lt!2400243)) lt!2400433)))

(declare-fun bs!1671596 () Bool)

(assert (= bs!1671596 d!2054830))

(assert (=> bs!1671596 m!7327948))

(declare-fun m!7328810 () Bool)

(assert (=> bs!1671596 m!7328810))

(assert (=> bs!1671596 m!7327948))

(assert (=> bs!1671596 m!7327962))

(declare-fun m!7328812 () Bool)

(assert (=> bs!1671596 m!7328812))

(assert (=> bs!1671596 m!7327962))

(declare-fun m!7328814 () Bool)

(assert (=> bs!1671596 m!7328814))

(declare-fun m!7328816 () Bool)

(assert (=> bs!1671596 m!7328816))

(assert (=> bs!1671596 m!7328812))

(declare-fun m!7328818 () Bool)

(assert (=> bs!1671596 m!7328818))

(declare-fun m!7328822 () Bool)

(assert (=> bs!1671596 m!7328822))

(assert (=> b!6544923 d!2054830))

(declare-fun d!2054846 () Bool)

(assert (=> d!2054846 (matchR!8600 (Concat!25262 (reg!16746 (regOne!33346 r!7292)) lt!2400232) (++!14537 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(declare-fun lt!2400438 () Unit!159003)

(declare-fun choose!48631 (Regex!16417 Regex!16417 List!65550 List!65550) Unit!159003)

(assert (=> d!2054846 (= lt!2400438 (choose!48631 (reg!16746 (regOne!33346 r!7292)) lt!2400232 (_1!36699 lt!2400243) (_2!36699 lt!2400243)))))

(declare-fun e!3963418 () Bool)

(assert (=> d!2054846 e!3963418))

(declare-fun res!2685211 () Bool)

(assert (=> d!2054846 (=> (not res!2685211) (not e!3963418))))

(assert (=> d!2054846 (= res!2685211 (validRegex!8153 (reg!16746 (regOne!33346 r!7292))))))

(assert (=> d!2054846 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!338 (reg!16746 (regOne!33346 r!7292)) lt!2400232 (_1!36699 lt!2400243) (_2!36699 lt!2400243)) lt!2400438)))

(declare-fun b!6545875 () Bool)

(assert (=> b!6545875 (= e!3963418 (validRegex!8153 lt!2400232))))

(assert (= (and d!2054846 res!2685211) b!6545875))

(assert (=> d!2054846 m!7327962))

(assert (=> d!2054846 m!7327962))

(declare-fun m!7328826 () Bool)

(assert (=> d!2054846 m!7328826))

(declare-fun m!7328828 () Bool)

(assert (=> d!2054846 m!7328828))

(assert (=> d!2054846 m!7327902))

(assert (=> b!6545875 m!7328758))

(assert (=> b!6544923 d!2054846))

(declare-fun b!6545876 () Bool)

(declare-fun res!2685219 () Bool)

(declare-fun e!3963425 () Bool)

(assert (=> b!6545876 (=> res!2685219 e!3963425)))

(declare-fun e!3963421 () Bool)

(assert (=> b!6545876 (= res!2685219 e!3963421)))

(declare-fun res!2685214 () Bool)

(assert (=> b!6545876 (=> (not res!2685214) (not e!3963421))))

(declare-fun lt!2400439 () Bool)

(assert (=> b!6545876 (= res!2685214 lt!2400439)))

(declare-fun b!6545877 () Bool)

(declare-fun e!3963422 () Bool)

(declare-fun e!3963423 () Bool)

(assert (=> b!6545877 (= e!3963422 e!3963423)))

(declare-fun c!1202186 () Bool)

(assert (=> b!6545877 (= c!1202186 ((_ is EmptyLang!16417) lt!2400232))))

(declare-fun b!6545878 () Bool)

(declare-fun res!2685217 () Bool)

(assert (=> b!6545878 (=> (not res!2685217) (not e!3963421))))

(declare-fun call!569340 () Bool)

(assert (=> b!6545878 (= res!2685217 (not call!569340))))

(declare-fun d!2054850 () Bool)

(assert (=> d!2054850 e!3963422))

(declare-fun c!1202185 () Bool)

(assert (=> d!2054850 (= c!1202185 ((_ is EmptyExpr!16417) lt!2400232))))

(declare-fun e!3963420 () Bool)

(assert (=> d!2054850 (= lt!2400439 e!3963420)))

(declare-fun c!1202184 () Bool)

(assert (=> d!2054850 (= c!1202184 (isEmpty!37649 (_2!36699 lt!2400243)))))

(assert (=> d!2054850 (validRegex!8153 lt!2400232)))

(assert (=> d!2054850 (= (matchR!8600 lt!2400232 (_2!36699 lt!2400243)) lt!2400439)))

(declare-fun b!6545879 () Bool)

(declare-fun res!2685218 () Bool)

(declare-fun e!3963419 () Bool)

(assert (=> b!6545879 (=> res!2685218 e!3963419)))

(assert (=> b!6545879 (= res!2685218 (not (isEmpty!37649 (tail!12369 (_2!36699 lt!2400243)))))))

(declare-fun b!6545880 () Bool)

(declare-fun res!2685216 () Bool)

(assert (=> b!6545880 (=> (not res!2685216) (not e!3963421))))

(assert (=> b!6545880 (= res!2685216 (isEmpty!37649 (tail!12369 (_2!36699 lt!2400243))))))

(declare-fun b!6545881 () Bool)

(assert (=> b!6545881 (= e!3963421 (= (head!13284 (_2!36699 lt!2400243)) (c!1201926 lt!2400232)))))

(declare-fun b!6545882 () Bool)

(assert (=> b!6545882 (= e!3963420 (nullable!6410 lt!2400232))))

(declare-fun bm!569335 () Bool)

(assert (=> bm!569335 (= call!569340 (isEmpty!37649 (_2!36699 lt!2400243)))))

(declare-fun b!6545883 () Bool)

(assert (=> b!6545883 (= e!3963420 (matchR!8600 (derivativeStep!5101 lt!2400232 (head!13284 (_2!36699 lt!2400243))) (tail!12369 (_2!36699 lt!2400243))))))

(declare-fun b!6545884 () Bool)

(assert (=> b!6545884 (= e!3963423 (not lt!2400439))))

(declare-fun b!6545885 () Bool)

(assert (=> b!6545885 (= e!3963419 (not (= (head!13284 (_2!36699 lt!2400243)) (c!1201926 lt!2400232))))))

(declare-fun b!6545886 () Bool)

(declare-fun e!3963424 () Bool)

(assert (=> b!6545886 (= e!3963424 e!3963419)))

(declare-fun res!2685212 () Bool)

(assert (=> b!6545886 (=> res!2685212 e!3963419)))

(assert (=> b!6545886 (= res!2685212 call!569340)))

(declare-fun b!6545887 () Bool)

(assert (=> b!6545887 (= e!3963422 (= lt!2400439 call!569340))))

(declare-fun b!6545888 () Bool)

(declare-fun res!2685213 () Bool)

(assert (=> b!6545888 (=> res!2685213 e!3963425)))

(assert (=> b!6545888 (= res!2685213 (not ((_ is ElementMatch!16417) lt!2400232)))))

(assert (=> b!6545888 (= e!3963423 e!3963425)))

(declare-fun b!6545889 () Bool)

(assert (=> b!6545889 (= e!3963425 e!3963424)))

(declare-fun res!2685215 () Bool)

(assert (=> b!6545889 (=> (not res!2685215) (not e!3963424))))

(assert (=> b!6545889 (= res!2685215 (not lt!2400439))))

(assert (= (and d!2054850 c!1202184) b!6545882))

(assert (= (and d!2054850 (not c!1202184)) b!6545883))

(assert (= (and d!2054850 c!1202185) b!6545887))

(assert (= (and d!2054850 (not c!1202185)) b!6545877))

(assert (= (and b!6545877 c!1202186) b!6545884))

(assert (= (and b!6545877 (not c!1202186)) b!6545888))

(assert (= (and b!6545888 (not res!2685213)) b!6545876))

(assert (= (and b!6545876 res!2685214) b!6545878))

(assert (= (and b!6545878 res!2685217) b!6545880))

(assert (= (and b!6545880 res!2685216) b!6545881))

(assert (= (and b!6545876 (not res!2685219)) b!6545889))

(assert (= (and b!6545889 res!2685215) b!6545886))

(assert (= (and b!6545886 (not res!2685212)) b!6545879))

(assert (= (and b!6545879 (not res!2685218)) b!6545885))

(assert (= (or b!6545887 b!6545878 b!6545886) bm!569335))

(assert (=> b!6545881 m!7328484))

(declare-fun m!7328830 () Bool)

(assert (=> b!6545882 m!7328830))

(assert (=> bm!569335 m!7328480))

(assert (=> b!6545880 m!7328488))

(assert (=> b!6545880 m!7328488))

(declare-fun m!7328832 () Bool)

(assert (=> b!6545880 m!7328832))

(assert (=> b!6545885 m!7328484))

(assert (=> b!6545879 m!7328488))

(assert (=> b!6545879 m!7328488))

(assert (=> b!6545879 m!7328832))

(assert (=> d!2054850 m!7328480))

(assert (=> d!2054850 m!7328758))

(assert (=> b!6545883 m!7328484))

(assert (=> b!6545883 m!7328484))

(declare-fun m!7328834 () Bool)

(assert (=> b!6545883 m!7328834))

(assert (=> b!6545883 m!7328488))

(assert (=> b!6545883 m!7328834))

(assert (=> b!6545883 m!7328488))

(declare-fun m!7328836 () Bool)

(assert (=> b!6545883 m!7328836))

(assert (=> b!6544923 d!2054850))

(declare-fun b!6545890 () Bool)

(declare-fun res!2685227 () Bool)

(declare-fun e!3963432 () Bool)

(assert (=> b!6545890 (=> res!2685227 e!3963432)))

(declare-fun e!3963428 () Bool)

(assert (=> b!6545890 (= res!2685227 e!3963428)))

(declare-fun res!2685222 () Bool)

(assert (=> b!6545890 (=> (not res!2685222) (not e!3963428))))

(declare-fun lt!2400440 () Bool)

(assert (=> b!6545890 (= res!2685222 lt!2400440)))

(declare-fun b!6545891 () Bool)

(declare-fun e!3963429 () Bool)

(declare-fun e!3963430 () Bool)

(assert (=> b!6545891 (= e!3963429 e!3963430)))

(declare-fun c!1202189 () Bool)

(assert (=> b!6545891 (= c!1202189 ((_ is EmptyLang!16417) lt!2400228))))

(declare-fun b!6545892 () Bool)

(declare-fun res!2685225 () Bool)

(assert (=> b!6545892 (=> (not res!2685225) (not e!3963428))))

(declare-fun call!569341 () Bool)

(assert (=> b!6545892 (= res!2685225 (not call!569341))))

(declare-fun d!2054852 () Bool)

(assert (=> d!2054852 e!3963429))

(declare-fun c!1202188 () Bool)

(assert (=> d!2054852 (= c!1202188 ((_ is EmptyExpr!16417) lt!2400228))))

(declare-fun e!3963427 () Bool)

(assert (=> d!2054852 (= lt!2400440 e!3963427)))

(declare-fun c!1202187 () Bool)

(assert (=> d!2054852 (= c!1202187 (isEmpty!37649 lt!2400230))))

(assert (=> d!2054852 (validRegex!8153 lt!2400228)))

(assert (=> d!2054852 (= (matchR!8600 lt!2400228 lt!2400230) lt!2400440)))

(declare-fun b!6545893 () Bool)

(declare-fun res!2685226 () Bool)

(declare-fun e!3963426 () Bool)

(assert (=> b!6545893 (=> res!2685226 e!3963426)))

(assert (=> b!6545893 (= res!2685226 (not (isEmpty!37649 (tail!12369 lt!2400230))))))

(declare-fun b!6545894 () Bool)

(declare-fun res!2685224 () Bool)

(assert (=> b!6545894 (=> (not res!2685224) (not e!3963428))))

(assert (=> b!6545894 (= res!2685224 (isEmpty!37649 (tail!12369 lt!2400230)))))

(declare-fun b!6545895 () Bool)

(assert (=> b!6545895 (= e!3963428 (= (head!13284 lt!2400230) (c!1201926 lt!2400228)))))

(declare-fun b!6545896 () Bool)

(assert (=> b!6545896 (= e!3963427 (nullable!6410 lt!2400228))))

(declare-fun bm!569336 () Bool)

(assert (=> bm!569336 (= call!569341 (isEmpty!37649 lt!2400230))))

(declare-fun b!6545897 () Bool)

(assert (=> b!6545897 (= e!3963427 (matchR!8600 (derivativeStep!5101 lt!2400228 (head!13284 lt!2400230)) (tail!12369 lt!2400230)))))

(declare-fun b!6545898 () Bool)

(assert (=> b!6545898 (= e!3963430 (not lt!2400440))))

(declare-fun b!6545899 () Bool)

(assert (=> b!6545899 (= e!3963426 (not (= (head!13284 lt!2400230) (c!1201926 lt!2400228))))))

(declare-fun b!6545900 () Bool)

(declare-fun e!3963431 () Bool)

(assert (=> b!6545900 (= e!3963431 e!3963426)))

(declare-fun res!2685220 () Bool)

(assert (=> b!6545900 (=> res!2685220 e!3963426)))

(assert (=> b!6545900 (= res!2685220 call!569341)))

(declare-fun b!6545901 () Bool)

(assert (=> b!6545901 (= e!3963429 (= lt!2400440 call!569341))))

(declare-fun b!6545902 () Bool)

(declare-fun res!2685221 () Bool)

(assert (=> b!6545902 (=> res!2685221 e!3963432)))

(assert (=> b!6545902 (= res!2685221 (not ((_ is ElementMatch!16417) lt!2400228)))))

(assert (=> b!6545902 (= e!3963430 e!3963432)))

(declare-fun b!6545903 () Bool)

(assert (=> b!6545903 (= e!3963432 e!3963431)))

(declare-fun res!2685223 () Bool)

(assert (=> b!6545903 (=> (not res!2685223) (not e!3963431))))

(assert (=> b!6545903 (= res!2685223 (not lt!2400440))))

(assert (= (and d!2054852 c!1202187) b!6545896))

(assert (= (and d!2054852 (not c!1202187)) b!6545897))

(assert (= (and d!2054852 c!1202188) b!6545901))

(assert (= (and d!2054852 (not c!1202188)) b!6545891))

(assert (= (and b!6545891 c!1202189) b!6545898))

(assert (= (and b!6545891 (not c!1202189)) b!6545902))

(assert (= (and b!6545902 (not res!2685221)) b!6545890))

(assert (= (and b!6545890 res!2685222) b!6545892))

(assert (= (and b!6545892 res!2685225) b!6545894))

(assert (= (and b!6545894 res!2685224) b!6545895))

(assert (= (and b!6545890 (not res!2685227)) b!6545903))

(assert (= (and b!6545903 res!2685223) b!6545900))

(assert (= (and b!6545900 (not res!2685220)) b!6545893))

(assert (= (and b!6545893 (not res!2685226)) b!6545899))

(assert (= (or b!6545901 b!6545892 b!6545900) bm!569336))

(assert (=> b!6545895 m!7328778))

(assert (=> b!6545896 m!7328468))

(assert (=> bm!569336 m!7328774))

(assert (=> b!6545894 m!7328784))

(assert (=> b!6545894 m!7328784))

(declare-fun m!7328838 () Bool)

(assert (=> b!6545894 m!7328838))

(assert (=> b!6545899 m!7328778))

(assert (=> b!6545893 m!7328784))

(assert (=> b!6545893 m!7328784))

(assert (=> b!6545893 m!7328838))

(assert (=> d!2054852 m!7328774))

(assert (=> d!2054852 m!7328472))

(assert (=> b!6545897 m!7328778))

(assert (=> b!6545897 m!7328778))

(declare-fun m!7328840 () Bool)

(assert (=> b!6545897 m!7328840))

(assert (=> b!6545897 m!7328784))

(assert (=> b!6545897 m!7328840))

(assert (=> b!6545897 m!7328784))

(declare-fun m!7328842 () Bool)

(assert (=> b!6545897 m!7328842))

(assert (=> b!6544923 d!2054852))

(declare-fun b!6545904 () Bool)

(declare-fun res!2685235 () Bool)

(declare-fun e!3963439 () Bool)

(assert (=> b!6545904 (=> res!2685235 e!3963439)))

(declare-fun e!3963435 () Bool)

(assert (=> b!6545904 (= res!2685235 e!3963435)))

(declare-fun res!2685230 () Bool)

(assert (=> b!6545904 (=> (not res!2685230) (not e!3963435))))

(declare-fun lt!2400441 () Bool)

(assert (=> b!6545904 (= res!2685230 lt!2400441)))

(declare-fun b!6545905 () Bool)

(declare-fun e!3963436 () Bool)

(declare-fun e!3963437 () Bool)

(assert (=> b!6545905 (= e!3963436 e!3963437)))

(declare-fun c!1202192 () Bool)

(assert (=> b!6545905 (= c!1202192 ((_ is EmptyLang!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun b!6545906 () Bool)

(declare-fun res!2685233 () Bool)

(assert (=> b!6545906 (=> (not res!2685233) (not e!3963435))))

(declare-fun call!569342 () Bool)

(assert (=> b!6545906 (= res!2685233 (not call!569342))))

(declare-fun d!2054854 () Bool)

(assert (=> d!2054854 e!3963436))

(declare-fun c!1202191 () Bool)

(assert (=> d!2054854 (= c!1202191 ((_ is EmptyExpr!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun e!3963434 () Bool)

(assert (=> d!2054854 (= lt!2400441 e!3963434)))

(declare-fun c!1202190 () Bool)

(assert (=> d!2054854 (= c!1202190 (isEmpty!37649 (_1!36699 lt!2400243)))))

(assert (=> d!2054854 (validRegex!8153 (reg!16746 (regOne!33346 r!7292)))))

(assert (=> d!2054854 (= (matchR!8600 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243)) lt!2400441)))

(declare-fun b!6545907 () Bool)

(declare-fun res!2685234 () Bool)

(declare-fun e!3963433 () Bool)

(assert (=> b!6545907 (=> res!2685234 e!3963433)))

(assert (=> b!6545907 (= res!2685234 (not (isEmpty!37649 (tail!12369 (_1!36699 lt!2400243)))))))

(declare-fun b!6545908 () Bool)

(declare-fun res!2685232 () Bool)

(assert (=> b!6545908 (=> (not res!2685232) (not e!3963435))))

(assert (=> b!6545908 (= res!2685232 (isEmpty!37649 (tail!12369 (_1!36699 lt!2400243))))))

(declare-fun b!6545909 () Bool)

(assert (=> b!6545909 (= e!3963435 (= (head!13284 (_1!36699 lt!2400243)) (c!1201926 (reg!16746 (regOne!33346 r!7292)))))))

(declare-fun b!6545910 () Bool)

(assert (=> b!6545910 (= e!3963434 (nullable!6410 (reg!16746 (regOne!33346 r!7292))))))

(declare-fun bm!569337 () Bool)

(assert (=> bm!569337 (= call!569342 (isEmpty!37649 (_1!36699 lt!2400243)))))

(declare-fun b!6545911 () Bool)

(assert (=> b!6545911 (= e!3963434 (matchR!8600 (derivativeStep!5101 (reg!16746 (regOne!33346 r!7292)) (head!13284 (_1!36699 lt!2400243))) (tail!12369 (_1!36699 lt!2400243))))))

(declare-fun b!6545912 () Bool)

(assert (=> b!6545912 (= e!3963437 (not lt!2400441))))

(declare-fun b!6545913 () Bool)

(assert (=> b!6545913 (= e!3963433 (not (= (head!13284 (_1!36699 lt!2400243)) (c!1201926 (reg!16746 (regOne!33346 r!7292))))))))

(declare-fun b!6545914 () Bool)

(declare-fun e!3963438 () Bool)

(assert (=> b!6545914 (= e!3963438 e!3963433)))

(declare-fun res!2685228 () Bool)

(assert (=> b!6545914 (=> res!2685228 e!3963433)))

(assert (=> b!6545914 (= res!2685228 call!569342)))

(declare-fun b!6545915 () Bool)

(assert (=> b!6545915 (= e!3963436 (= lt!2400441 call!569342))))

(declare-fun b!6545916 () Bool)

(declare-fun res!2685229 () Bool)

(assert (=> b!6545916 (=> res!2685229 e!3963439)))

(assert (=> b!6545916 (= res!2685229 (not ((_ is ElementMatch!16417) (reg!16746 (regOne!33346 r!7292)))))))

(assert (=> b!6545916 (= e!3963437 e!3963439)))

(declare-fun b!6545917 () Bool)

(assert (=> b!6545917 (= e!3963439 e!3963438)))

(declare-fun res!2685231 () Bool)

(assert (=> b!6545917 (=> (not res!2685231) (not e!3963438))))

(assert (=> b!6545917 (= res!2685231 (not lt!2400441))))

(assert (= (and d!2054854 c!1202190) b!6545910))

(assert (= (and d!2054854 (not c!1202190)) b!6545911))

(assert (= (and d!2054854 c!1202191) b!6545915))

(assert (= (and d!2054854 (not c!1202191)) b!6545905))

(assert (= (and b!6545905 c!1202192) b!6545912))

(assert (= (and b!6545905 (not c!1202192)) b!6545916))

(assert (= (and b!6545916 (not res!2685229)) b!6545904))

(assert (= (and b!6545904 res!2685230) b!6545906))

(assert (= (and b!6545906 res!2685233) b!6545908))

(assert (= (and b!6545908 res!2685232) b!6545909))

(assert (= (and b!6545904 (not res!2685235)) b!6545917))

(assert (= (and b!6545917 res!2685231) b!6545914))

(assert (= (and b!6545914 (not res!2685228)) b!6545907))

(assert (= (and b!6545907 (not res!2685234)) b!6545913))

(assert (= (or b!6545915 b!6545906 b!6545914) bm!569337))

(assert (=> b!6545909 m!7328542))

(declare-fun m!7328844 () Bool)

(assert (=> b!6545910 m!7328844))

(assert (=> bm!569337 m!7328538))

(assert (=> b!6545908 m!7328546))

(assert (=> b!6545908 m!7328546))

(declare-fun m!7328846 () Bool)

(assert (=> b!6545908 m!7328846))

(assert (=> b!6545913 m!7328542))

(assert (=> b!6545907 m!7328546))

(assert (=> b!6545907 m!7328546))

(assert (=> b!6545907 m!7328846))

(assert (=> d!2054854 m!7328538))

(assert (=> d!2054854 m!7327902))

(assert (=> b!6545911 m!7328542))

(assert (=> b!6545911 m!7328542))

(declare-fun m!7328848 () Bool)

(assert (=> b!6545911 m!7328848))

(assert (=> b!6545911 m!7328546))

(assert (=> b!6545911 m!7328848))

(assert (=> b!6545911 m!7328546))

(declare-fun m!7328850 () Bool)

(assert (=> b!6545911 m!7328850))

(assert (=> b!6544923 d!2054854))

(declare-fun d!2054856 () Bool)

(assert (=> d!2054856 (= (matchR!8600 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243)) (matchZipper!2429 lt!2400267 (_1!36699 lt!2400243)))))

(declare-fun lt!2400442 () Unit!159003)

(assert (=> d!2054856 (= lt!2400442 (choose!48629 lt!2400267 lt!2400242 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243)))))

(assert (=> d!2054856 (validRegex!8153 (reg!16746 (regOne!33346 r!7292)))))

(assert (=> d!2054856 (= (theoremZipperRegexEquiv!853 lt!2400267 lt!2400242 (reg!16746 (regOne!33346 r!7292)) (_1!36699 lt!2400243)) lt!2400442)))

(declare-fun bs!1671598 () Bool)

(assert (= bs!1671598 d!2054856))

(assert (=> bs!1671598 m!7327918))

(assert (=> bs!1671598 m!7327898))

(declare-fun m!7328852 () Bool)

(assert (=> bs!1671598 m!7328852))

(assert (=> bs!1671598 m!7327902))

(assert (=> b!6544923 d!2054856))

(declare-fun b!6545918 () Bool)

(declare-fun e!3963445 () Bool)

(assert (=> b!6545918 (= e!3963445 (nullable!6410 (regOne!33346 (reg!16746 (regOne!33346 r!7292)))))))

(declare-fun bm!569338 () Bool)

(declare-fun call!569345 () (InoxSet Context!11602))

(declare-fun call!569347 () (InoxSet Context!11602))

(assert (=> bm!569338 (= call!569345 call!569347)))

(declare-fun b!6545919 () Bool)

(declare-fun c!1202194 () Bool)

(assert (=> b!6545919 (= c!1202194 ((_ is Star!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun e!3963441 () (InoxSet Context!11602))

(declare-fun e!3963442 () (InoxSet Context!11602))

(assert (=> b!6545919 (= e!3963441 e!3963442)))

(declare-fun call!569343 () List!65551)

(declare-fun bm!569339 () Bool)

(declare-fun call!569344 () (InoxSet Context!11602))

(declare-fun c!1202193 () Bool)

(assert (=> bm!569339 (= call!569344 (derivationStepZipperDown!1665 (ite c!1202193 (regTwo!33347 (reg!16746 (regOne!33346 r!7292))) (regOne!33346 (reg!16746 (regOne!33346 r!7292)))) (ite c!1202193 lt!2400233 (Context!11603 call!569343)) (h!71874 s!2326)))))

(declare-fun b!6545920 () Bool)

(declare-fun c!1202195 () Bool)

(assert (=> b!6545920 (= c!1202195 e!3963445)))

(declare-fun res!2685236 () Bool)

(assert (=> b!6545920 (=> (not res!2685236) (not e!3963445))))

(assert (=> b!6545920 (= res!2685236 ((_ is Concat!25262) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun e!3963440 () (InoxSet Context!11602))

(declare-fun e!3963444 () (InoxSet Context!11602))

(assert (=> b!6545920 (= e!3963440 e!3963444)))

(declare-fun b!6545921 () Bool)

(assert (=> b!6545921 (= e!3963444 ((_ map or) call!569344 call!569347))))

(declare-fun b!6545922 () Bool)

(declare-fun e!3963443 () (InoxSet Context!11602))

(assert (=> b!6545922 (= e!3963443 (store ((as const (Array Context!11602 Bool)) false) lt!2400233 true))))

(declare-fun b!6545923 () Bool)

(assert (=> b!6545923 (= e!3963441 call!569345)))

(declare-fun b!6545924 () Bool)

(assert (=> b!6545924 (= e!3963442 call!569345)))

(declare-fun d!2054858 () Bool)

(declare-fun c!1202196 () Bool)

(assert (=> d!2054858 (= c!1202196 (and ((_ is ElementMatch!16417) (reg!16746 (regOne!33346 r!7292))) (= (c!1201926 (reg!16746 (regOne!33346 r!7292))) (h!71874 s!2326))))))

(assert (=> d!2054858 (= (derivationStepZipperDown!1665 (reg!16746 (regOne!33346 r!7292)) lt!2400233 (h!71874 s!2326)) e!3963443)))

(declare-fun c!1202197 () Bool)

(declare-fun bm!569340 () Bool)

(assert (=> bm!569340 (= call!569343 ($colon$colon!2258 (exprs!6301 lt!2400233) (ite (or c!1202195 c!1202197) (regTwo!33346 (reg!16746 (regOne!33346 r!7292))) (reg!16746 (regOne!33346 r!7292)))))))

(declare-fun call!569348 () (InoxSet Context!11602))

(declare-fun call!569346 () List!65551)

(declare-fun bm!569341 () Bool)

(assert (=> bm!569341 (= call!569348 (derivationStepZipperDown!1665 (ite c!1202193 (regOne!33347 (reg!16746 (regOne!33346 r!7292))) (ite c!1202195 (regTwo!33346 (reg!16746 (regOne!33346 r!7292))) (ite c!1202197 (regOne!33346 (reg!16746 (regOne!33346 r!7292))) (reg!16746 (reg!16746 (regOne!33346 r!7292)))))) (ite (or c!1202193 c!1202195) lt!2400233 (Context!11603 call!569346)) (h!71874 s!2326)))))

(declare-fun b!6545925 () Bool)

(assert (=> b!6545925 (= e!3963443 e!3963440)))

(assert (=> b!6545925 (= c!1202193 ((_ is Union!16417) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun b!6545926 () Bool)

(assert (=> b!6545926 (= e!3963440 ((_ map or) call!569348 call!569344))))

(declare-fun bm!569342 () Bool)

(assert (=> bm!569342 (= call!569346 call!569343)))

(declare-fun b!6545927 () Bool)

(assert (=> b!6545927 (= e!3963444 e!3963441)))

(assert (=> b!6545927 (= c!1202197 ((_ is Concat!25262) (reg!16746 (regOne!33346 r!7292))))))

(declare-fun b!6545928 () Bool)

(assert (=> b!6545928 (= e!3963442 ((as const (Array Context!11602 Bool)) false))))

(declare-fun bm!569343 () Bool)

(assert (=> bm!569343 (= call!569347 call!569348)))

(assert (= (and d!2054858 c!1202196) b!6545922))

(assert (= (and d!2054858 (not c!1202196)) b!6545925))

(assert (= (and b!6545925 c!1202193) b!6545926))

(assert (= (and b!6545925 (not c!1202193)) b!6545920))

(assert (= (and b!6545920 res!2685236) b!6545918))

(assert (= (and b!6545920 c!1202195) b!6545921))

(assert (= (and b!6545920 (not c!1202195)) b!6545927))

(assert (= (and b!6545927 c!1202197) b!6545923))

(assert (= (and b!6545927 (not c!1202197)) b!6545919))

(assert (= (and b!6545919 c!1202194) b!6545924))

(assert (= (and b!6545919 (not c!1202194)) b!6545928))

(assert (= (or b!6545923 b!6545924) bm!569342))

(assert (= (or b!6545923 b!6545924) bm!569338))

(assert (= (or b!6545921 bm!569342) bm!569340))

(assert (= (or b!6545921 bm!569338) bm!569343))

(assert (= (or b!6545926 b!6545921) bm!569339))

(assert (= (or b!6545926 bm!569343) bm!569341))

(assert (=> b!6545922 m!7327940))

(declare-fun m!7328854 () Bool)

(assert (=> bm!569340 m!7328854))

(declare-fun m!7328856 () Bool)

(assert (=> bm!569339 m!7328856))

(declare-fun m!7328858 () Bool)

(assert (=> bm!569341 m!7328858))

(declare-fun m!7328860 () Bool)

(assert (=> b!6545918 m!7328860))

(assert (=> b!6544962 d!2054858))

(declare-fun b!6545929 () Bool)

(declare-fun e!3963451 () Bool)

(declare-fun call!569349 () Bool)

(assert (=> b!6545929 (= e!3963451 call!569349)))

(declare-fun b!6545930 () Bool)

(declare-fun res!2685237 () Bool)

(assert (=> b!6545930 (=> (not res!2685237) (not e!3963451))))

(declare-fun call!569351 () Bool)

(assert (=> b!6545930 (= res!2685237 call!569351)))

(declare-fun e!3963447 () Bool)

(assert (=> b!6545930 (= e!3963447 e!3963451)))

(declare-fun bm!569344 () Bool)

(declare-fun c!1202198 () Bool)

(assert (=> bm!569344 (= call!569349 (validRegex!8153 (ite c!1202198 (regTwo!33347 r!7292) (regTwo!33346 r!7292))))))

(declare-fun b!6545931 () Bool)

(declare-fun e!3963448 () Bool)

(assert (=> b!6545931 (= e!3963448 e!3963447)))

(assert (=> b!6545931 (= c!1202198 ((_ is Union!16417) r!7292))))

(declare-fun b!6545932 () Bool)

(declare-fun e!3963449 () Bool)

(assert (=> b!6545932 (= e!3963448 e!3963449)))

(declare-fun res!2685238 () Bool)

(assert (=> b!6545932 (= res!2685238 (not (nullable!6410 (reg!16746 r!7292))))))

(assert (=> b!6545932 (=> (not res!2685238) (not e!3963449))))

(declare-fun b!6545933 () Bool)

(declare-fun e!3963446 () Bool)

(assert (=> b!6545933 (= e!3963446 call!569349)))

(declare-fun b!6545934 () Bool)

(declare-fun call!569350 () Bool)

(assert (=> b!6545934 (= e!3963449 call!569350)))

(declare-fun b!6545935 () Bool)

(declare-fun res!2685240 () Bool)

(declare-fun e!3963452 () Bool)

(assert (=> b!6545935 (=> res!2685240 e!3963452)))

(assert (=> b!6545935 (= res!2685240 (not ((_ is Concat!25262) r!7292)))))

(assert (=> b!6545935 (= e!3963447 e!3963452)))

(declare-fun b!6545936 () Bool)

(assert (=> b!6545936 (= e!3963452 e!3963446)))

(declare-fun res!2685241 () Bool)

(assert (=> b!6545936 (=> (not res!2685241) (not e!3963446))))

(assert (=> b!6545936 (= res!2685241 call!569351)))

(declare-fun b!6545937 () Bool)

(declare-fun e!3963450 () Bool)

(assert (=> b!6545937 (= e!3963450 e!3963448)))

(declare-fun c!1202199 () Bool)

(assert (=> b!6545937 (= c!1202199 ((_ is Star!16417) r!7292))))

(declare-fun bm!569346 () Bool)

(assert (=> bm!569346 (= call!569350 (validRegex!8153 (ite c!1202199 (reg!16746 r!7292) (ite c!1202198 (regOne!33347 r!7292) (regOne!33346 r!7292)))))))

(declare-fun d!2054860 () Bool)

(declare-fun res!2685239 () Bool)

(assert (=> d!2054860 (=> res!2685239 e!3963450)))

(assert (=> d!2054860 (= res!2685239 ((_ is ElementMatch!16417) r!7292))))

(assert (=> d!2054860 (= (validRegex!8153 r!7292) e!3963450)))

(declare-fun bm!569345 () Bool)

(assert (=> bm!569345 (= call!569351 call!569350)))

(assert (= (and d!2054860 (not res!2685239)) b!6545937))

(assert (= (and b!6545937 c!1202199) b!6545932))

(assert (= (and b!6545937 (not c!1202199)) b!6545931))

(assert (= (and b!6545932 res!2685238) b!6545934))

(assert (= (and b!6545931 c!1202198) b!6545930))

(assert (= (and b!6545931 (not c!1202198)) b!6545935))

(assert (= (and b!6545930 res!2685237) b!6545929))

(assert (= (and b!6545935 (not res!2685240)) b!6545936))

(assert (= (and b!6545936 res!2685241) b!6545933))

(assert (= (or b!6545929 b!6545933) bm!569344))

(assert (= (or b!6545930 b!6545936) bm!569345))

(assert (= (or b!6545934 bm!569345) bm!569346))

(declare-fun m!7328862 () Bool)

(assert (=> bm!569344 m!7328862))

(declare-fun m!7328864 () Bool)

(assert (=> b!6545932 m!7328864))

(declare-fun m!7328866 () Bool)

(assert (=> bm!569346 m!7328866))

(assert (=> start!641274 d!2054860))

(declare-fun b!6545938 () Bool)

(declare-fun e!3963458 () Bool)

(declare-fun call!569352 () Bool)

(assert (=> b!6545938 (= e!3963458 call!569352)))

(declare-fun b!6545939 () Bool)

(declare-fun res!2685242 () Bool)

(assert (=> b!6545939 (=> (not res!2685242) (not e!3963458))))

(declare-fun call!569354 () Bool)

(assert (=> b!6545939 (= res!2685242 call!569354)))

(declare-fun e!3963454 () Bool)

(assert (=> b!6545939 (= e!3963454 e!3963458)))

(declare-fun bm!569347 () Bool)

(declare-fun c!1202200 () Bool)

(assert (=> bm!569347 (= call!569352 (validRegex!8153 (ite c!1202200 (regTwo!33347 lt!2400258) (regTwo!33346 lt!2400258))))))

(declare-fun b!6545940 () Bool)

(declare-fun e!3963455 () Bool)

(assert (=> b!6545940 (= e!3963455 e!3963454)))

(assert (=> b!6545940 (= c!1202200 ((_ is Union!16417) lt!2400258))))

(declare-fun b!6545941 () Bool)

(declare-fun e!3963456 () Bool)

(assert (=> b!6545941 (= e!3963455 e!3963456)))

(declare-fun res!2685243 () Bool)

(assert (=> b!6545941 (= res!2685243 (not (nullable!6410 (reg!16746 lt!2400258))))))

(assert (=> b!6545941 (=> (not res!2685243) (not e!3963456))))

(declare-fun b!6545942 () Bool)

(declare-fun e!3963453 () Bool)

(assert (=> b!6545942 (= e!3963453 call!569352)))

(declare-fun b!6545943 () Bool)

(declare-fun call!569353 () Bool)

(assert (=> b!6545943 (= e!3963456 call!569353)))

(declare-fun b!6545944 () Bool)

(declare-fun res!2685245 () Bool)

(declare-fun e!3963459 () Bool)

(assert (=> b!6545944 (=> res!2685245 e!3963459)))

(assert (=> b!6545944 (= res!2685245 (not ((_ is Concat!25262) lt!2400258)))))

(assert (=> b!6545944 (= e!3963454 e!3963459)))

(declare-fun b!6545945 () Bool)

(assert (=> b!6545945 (= e!3963459 e!3963453)))

(declare-fun res!2685246 () Bool)

(assert (=> b!6545945 (=> (not res!2685246) (not e!3963453))))

(assert (=> b!6545945 (= res!2685246 call!569354)))

(declare-fun b!6545946 () Bool)

(declare-fun e!3963457 () Bool)

(assert (=> b!6545946 (= e!3963457 e!3963455)))

(declare-fun c!1202201 () Bool)

(assert (=> b!6545946 (= c!1202201 ((_ is Star!16417) lt!2400258))))

(declare-fun bm!569349 () Bool)

(assert (=> bm!569349 (= call!569353 (validRegex!8153 (ite c!1202201 (reg!16746 lt!2400258) (ite c!1202200 (regOne!33347 lt!2400258) (regOne!33346 lt!2400258)))))))

(declare-fun d!2054862 () Bool)

(declare-fun res!2685244 () Bool)

(assert (=> d!2054862 (=> res!2685244 e!3963457)))

(assert (=> d!2054862 (= res!2685244 ((_ is ElementMatch!16417) lt!2400258))))

(assert (=> d!2054862 (= (validRegex!8153 lt!2400258) e!3963457)))

(declare-fun bm!569348 () Bool)

(assert (=> bm!569348 (= call!569354 call!569353)))

(assert (= (and d!2054862 (not res!2685244)) b!6545946))

(assert (= (and b!6545946 c!1202201) b!6545941))

(assert (= (and b!6545946 (not c!1202201)) b!6545940))

(assert (= (and b!6545941 res!2685243) b!6545943))

(assert (= (and b!6545940 c!1202200) b!6545939))

(assert (= (and b!6545940 (not c!1202200)) b!6545944))

(assert (= (and b!6545939 res!2685242) b!6545938))

(assert (= (and b!6545944 (not res!2685245)) b!6545945))

(assert (= (and b!6545945 res!2685246) b!6545942))

(assert (= (or b!6545938 b!6545942) bm!569347))

(assert (= (or b!6545939 b!6545945) bm!569348))

(assert (= (or b!6545943 bm!569348) bm!569349))

(declare-fun m!7328868 () Bool)

(assert (=> bm!569347 m!7328868))

(declare-fun m!7328870 () Bool)

(assert (=> b!6545941 m!7328870))

(declare-fun m!7328872 () Bool)

(assert (=> bm!569349 m!7328872))

(assert (=> b!6544942 d!2054862))

(declare-fun bs!1671599 () Bool)

(declare-fun d!2054864 () Bool)

(assert (= bs!1671599 (and d!2054864 d!2054644)))

(declare-fun lambda!363353 () Int)

(assert (=> bs!1671599 (= lambda!363353 lambda!363303)))

(declare-fun bs!1671600 () Bool)

(assert (= bs!1671600 (and d!2054864 d!2054790)))

(assert (=> bs!1671600 (= lambda!363353 lambda!363347)))

(declare-fun bs!1671601 () Bool)

(assert (= bs!1671601 (and d!2054864 d!2054654)))

(assert (=> bs!1671601 (= lambda!363353 lambda!363306)))

(declare-fun bs!1671602 () Bool)

(assert (= bs!1671602 (and d!2054864 b!6544950)))

(assert (=> bs!1671602 (= lambda!363353 lambda!363275)))

(declare-fun bs!1671603 () Bool)

(assert (= bs!1671603 (and d!2054864 d!2054830)))

(assert (=> bs!1671603 (= lambda!363353 lambda!363350)))

(assert (=> d!2054864 (= (inv!84289 (h!71876 zl!343)) (forall!15589 (exprs!6301 (h!71876 zl!343)) lambda!363353))))

(declare-fun bs!1671604 () Bool)

(assert (= bs!1671604 d!2054864))

(declare-fun m!7328874 () Bool)

(assert (=> bs!1671604 m!7328874))

(assert (=> b!6544966 d!2054864))

(declare-fun d!2054866 () Bool)

(declare-fun lt!2400443 () Regex!16417)

(assert (=> d!2054866 (validRegex!8153 lt!2400443)))

(assert (=> d!2054866 (= lt!2400443 (generalisedUnion!2261 (unfocusZipperList!1838 lt!2400252)))))

(assert (=> d!2054866 (= (unfocusZipper!2159 lt!2400252) lt!2400443)))

(declare-fun bs!1671605 () Bool)

(assert (= bs!1671605 d!2054866))

(declare-fun m!7328876 () Bool)

(assert (=> bs!1671605 m!7328876))

(declare-fun m!7328878 () Bool)

(assert (=> bs!1671605 m!7328878))

(assert (=> bs!1671605 m!7328878))

(declare-fun m!7328880 () Bool)

(assert (=> bs!1671605 m!7328880))

(assert (=> b!6544924 d!2054866))

(declare-fun d!2054868 () Bool)

(assert (=> d!2054868 (= (flatMap!1922 lt!2400241 lambda!363273) (choose!48613 lt!2400241 lambda!363273))))

(declare-fun bs!1671606 () Bool)

(assert (= bs!1671606 d!2054868))

(declare-fun m!7328882 () Bool)

(assert (=> bs!1671606 m!7328882))

(assert (=> b!6544925 d!2054868))

(declare-fun bm!569350 () Bool)

(declare-fun call!569355 () (InoxSet Context!11602))

(assert (=> bm!569350 (= call!569355 (derivationStepZipperDown!1665 (h!71875 (exprs!6301 lt!2400259)) (Context!11603 (t!379193 (exprs!6301 lt!2400259))) (h!71874 s!2326)))))

(declare-fun b!6545947 () Bool)

(declare-fun e!3963461 () Bool)

(assert (=> b!6545947 (= e!3963461 (nullable!6410 (h!71875 (exprs!6301 lt!2400259))))))

(declare-fun b!6545948 () Bool)

(declare-fun e!3963460 () (InoxSet Context!11602))

(assert (=> b!6545948 (= e!3963460 ((as const (Array Context!11602 Bool)) false))))

(declare-fun b!6545949 () Bool)

(declare-fun e!3963462 () (InoxSet Context!11602))

(assert (=> b!6545949 (= e!3963462 e!3963460)))

(declare-fun c!1202203 () Bool)

(assert (=> b!6545949 (= c!1202203 ((_ is Cons!65427) (exprs!6301 lt!2400259)))))

(declare-fun d!2054870 () Bool)

(declare-fun c!1202202 () Bool)

(assert (=> d!2054870 (= c!1202202 e!3963461)))

(declare-fun res!2685247 () Bool)

(assert (=> d!2054870 (=> (not res!2685247) (not e!3963461))))

(assert (=> d!2054870 (= res!2685247 ((_ is Cons!65427) (exprs!6301 lt!2400259)))))

(assert (=> d!2054870 (= (derivationStepZipperUp!1591 lt!2400259 (h!71874 s!2326)) e!3963462)))

(declare-fun b!6545950 () Bool)

(assert (=> b!6545950 (= e!3963462 ((_ map or) call!569355 (derivationStepZipperUp!1591 (Context!11603 (t!379193 (exprs!6301 lt!2400259))) (h!71874 s!2326))))))

(declare-fun b!6545951 () Bool)

(assert (=> b!6545951 (= e!3963460 call!569355)))

(assert (= (and d!2054870 res!2685247) b!6545947))

(assert (= (and d!2054870 c!1202202) b!6545950))

(assert (= (and d!2054870 (not c!1202202)) b!6545949))

(assert (= (and b!6545949 c!1202203) b!6545951))

(assert (= (and b!6545949 (not c!1202203)) b!6545948))

(assert (= (or b!6545950 b!6545951) bm!569350))

(declare-fun m!7328884 () Bool)

(assert (=> bm!569350 m!7328884))

(declare-fun m!7328886 () Bool)

(assert (=> b!6545947 m!7328886))

(declare-fun m!7328888 () Bool)

(assert (=> b!6545950 m!7328888))

(assert (=> b!6544925 d!2054870))

(declare-fun d!2054872 () Bool)

(assert (=> d!2054872 (= (flatMap!1922 lt!2400241 lambda!363273) (dynLambda!26004 lambda!363273 lt!2400259))))

(declare-fun lt!2400444 () Unit!159003)

(assert (=> d!2054872 (= lt!2400444 (choose!48614 lt!2400241 lt!2400259 lambda!363273))))

(assert (=> d!2054872 (= lt!2400241 (store ((as const (Array Context!11602 Bool)) false) lt!2400259 true))))

(assert (=> d!2054872 (= (lemmaFlatMapOnSingletonSet!1448 lt!2400241 lt!2400259 lambda!363273) lt!2400444)))

(declare-fun b_lambda!247789 () Bool)

(assert (=> (not b_lambda!247789) (not d!2054872)))

(declare-fun bs!1671607 () Bool)

(assert (= bs!1671607 d!2054872))

(assert (=> bs!1671607 m!7327878))

(declare-fun m!7328890 () Bool)

(assert (=> bs!1671607 m!7328890))

(declare-fun m!7328892 () Bool)

(assert (=> bs!1671607 m!7328892))

(assert (=> bs!1671607 m!7327874))

(assert (=> b!6544925 d!2054872))

(declare-fun bs!1671608 () Bool)

(declare-fun d!2054874 () Bool)

(assert (= bs!1671608 (and d!2054874 b!6544952)))

(declare-fun lambda!363356 () Int)

(assert (=> bs!1671608 (= lambda!363356 lambda!363273)))

(assert (=> d!2054874 true))

(assert (=> d!2054874 (= (derivationStepZipper!2383 lt!2400241 (h!71874 s!2326)) (flatMap!1922 lt!2400241 lambda!363356))))

(declare-fun bs!1671609 () Bool)

(assert (= bs!1671609 d!2054874))

(declare-fun m!7328894 () Bool)

(assert (=> bs!1671609 m!7328894))

(assert (=> b!6544925 d!2054874))

(declare-fun b!6545972 () Bool)

(declare-fun e!3963473 () Bool)

(declare-fun lt!2400452 () Option!16308)

(assert (=> b!6545972 (= e!3963473 (not (isDefined!13011 lt!2400452)))))

(declare-fun b!6545973 () Bool)

(declare-fun e!3963475 () Option!16308)

(assert (=> b!6545973 (= e!3963475 (Some!16307 (tuple2!66793 Nil!65426 s!2326)))))

(declare-fun b!6545974 () Bool)

(declare-fun e!3963477 () Option!16308)

(assert (=> b!6545974 (= e!3963477 None!16307)))

(declare-fun b!6545975 () Bool)

(declare-fun e!3963476 () Bool)

(assert (=> b!6545975 (= e!3963476 (= (++!14537 (_1!36699 (get!22707 lt!2400452)) (_2!36699 (get!22707 lt!2400452))) s!2326))))

(declare-fun b!6545977 () Bool)

(declare-fun res!2685258 () Bool)

(assert (=> b!6545977 (=> (not res!2685258) (not e!3963476))))

(assert (=> b!6545977 (= res!2685258 (matchZipper!2429 lt!2400270 (_2!36699 (get!22707 lt!2400452))))))

(declare-fun b!6545978 () Bool)

(declare-fun lt!2400453 () Unit!159003)

(declare-fun lt!2400451 () Unit!159003)

(assert (=> b!6545978 (= lt!2400453 lt!2400451)))

(assert (=> b!6545978 (= (++!14537 (++!14537 Nil!65426 (Cons!65426 (h!71874 s!2326) Nil!65426)) (t!379192 s!2326)) s!2326)))

(assert (=> b!6545978 (= lt!2400451 (lemmaMoveElementToOtherListKeepsConcatEq!2560 Nil!65426 (h!71874 s!2326) (t!379192 s!2326) s!2326))))

(assert (=> b!6545978 (= e!3963477 (findConcatSeparationZippers!182 lt!2400267 lt!2400270 (++!14537 Nil!65426 (Cons!65426 (h!71874 s!2326) Nil!65426)) (t!379192 s!2326) s!2326))))

(declare-fun b!6545979 () Bool)

(declare-fun res!2685260 () Bool)

(assert (=> b!6545979 (=> (not res!2685260) (not e!3963476))))

(assert (=> b!6545979 (= res!2685260 (matchZipper!2429 lt!2400267 (_1!36699 (get!22707 lt!2400452))))))

(declare-fun b!6545980 () Bool)

(declare-fun e!3963474 () Bool)

(assert (=> b!6545980 (= e!3963474 (matchZipper!2429 lt!2400270 s!2326))))

(declare-fun b!6545976 () Bool)

(assert (=> b!6545976 (= e!3963475 e!3963477)))

(declare-fun c!1202210 () Bool)

(assert (=> b!6545976 (= c!1202210 ((_ is Nil!65426) s!2326))))

(declare-fun d!2054876 () Bool)

(assert (=> d!2054876 e!3963473))

(declare-fun res!2685262 () Bool)

(assert (=> d!2054876 (=> res!2685262 e!3963473)))

(assert (=> d!2054876 (= res!2685262 e!3963476)))

(declare-fun res!2685261 () Bool)

(assert (=> d!2054876 (=> (not res!2685261) (not e!3963476))))

(assert (=> d!2054876 (= res!2685261 (isDefined!13011 lt!2400452))))

(assert (=> d!2054876 (= lt!2400452 e!3963475)))

(declare-fun c!1202211 () Bool)

(assert (=> d!2054876 (= c!1202211 e!3963474)))

(declare-fun res!2685259 () Bool)

(assert (=> d!2054876 (=> (not res!2685259) (not e!3963474))))

(assert (=> d!2054876 (= res!2685259 (matchZipper!2429 lt!2400267 Nil!65426))))

(assert (=> d!2054876 (= (++!14537 Nil!65426 s!2326) s!2326)))

(assert (=> d!2054876 (= (findConcatSeparationZippers!182 lt!2400267 lt!2400270 Nil!65426 s!2326 s!2326) lt!2400452)))

(assert (= (and d!2054876 res!2685259) b!6545980))

(assert (= (and d!2054876 c!1202211) b!6545973))

(assert (= (and d!2054876 (not c!1202211)) b!6545976))

(assert (= (and b!6545976 c!1202210) b!6545974))

(assert (= (and b!6545976 (not c!1202210)) b!6545978))

(assert (= (and d!2054876 res!2685261) b!6545979))

(assert (= (and b!6545979 res!2685260) b!6545977))

(assert (= (and b!6545977 res!2685258) b!6545975))

(assert (= (and d!2054876 (not res!2685262)) b!6545972))

(declare-fun m!7328896 () Bool)

(assert (=> b!6545977 m!7328896))

(declare-fun m!7328898 () Bool)

(assert (=> b!6545977 m!7328898))

(assert (=> b!6545978 m!7328582))

(assert (=> b!6545978 m!7328582))

(assert (=> b!6545978 m!7328584))

(assert (=> b!6545978 m!7328586))

(assert (=> b!6545978 m!7328582))

(declare-fun m!7328900 () Bool)

(assert (=> b!6545978 m!7328900))

(assert (=> b!6545975 m!7328896))

(declare-fun m!7328902 () Bool)

(assert (=> b!6545975 m!7328902))

(declare-fun m!7328904 () Bool)

(assert (=> d!2054876 m!7328904))

(declare-fun m!7328906 () Bool)

(assert (=> d!2054876 m!7328906))

(declare-fun m!7328908 () Bool)

(assert (=> d!2054876 m!7328908))

(declare-fun m!7328910 () Bool)

(assert (=> b!6545980 m!7328910))

(assert (=> b!6545972 m!7328904))

(assert (=> b!6545979 m!7328896))

(declare-fun m!7328912 () Bool)

(assert (=> b!6545979 m!7328912))

(assert (=> b!6544946 d!2054876))

(declare-fun d!2054878 () Bool)

(assert (=> d!2054878 (= (get!22707 lt!2400254) (v!52492 lt!2400254))))

(assert (=> b!6544946 d!2054878))

(declare-fun d!2054880 () Bool)

(assert (=> d!2054880 (isDefined!13011 (findConcatSeparationZippers!182 lt!2400267 (store ((as const (Array Context!11602 Bool)) false) lt!2400233 true) Nil!65426 s!2326 s!2326))))

(declare-fun lt!2400456 () Unit!159003)

(declare-fun choose!48636 ((InoxSet Context!11602) Context!11602 List!65550) Unit!159003)

(assert (=> d!2054880 (= lt!2400456 (choose!48636 lt!2400267 lt!2400233 s!2326))))

(assert (=> d!2054880 (matchZipper!2429 (appendTo!178 lt!2400267 lt!2400233) s!2326)))

(assert (=> d!2054880 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!182 lt!2400267 lt!2400233 s!2326) lt!2400456)))

(declare-fun bs!1671610 () Bool)

(assert (= bs!1671610 d!2054880))

(assert (=> bs!1671610 m!7327992))

(declare-fun m!7328914 () Bool)

(assert (=> bs!1671610 m!7328914))

(declare-fun m!7328916 () Bool)

(assert (=> bs!1671610 m!7328916))

(declare-fun m!7328918 () Bool)

(assert (=> bs!1671610 m!7328918))

(declare-fun m!7328920 () Bool)

(assert (=> bs!1671610 m!7328920))

(assert (=> bs!1671610 m!7327940))

(assert (=> bs!1671610 m!7328916))

(assert (=> bs!1671610 m!7327940))

(assert (=> bs!1671610 m!7327992))

(assert (=> b!6544946 d!2054880))

(declare-fun b!6545990 () Bool)

(declare-fun e!3963483 () List!65550)

(assert (=> b!6545990 (= e!3963483 (Cons!65426 (h!71874 (_1!36699 lt!2400243)) (++!14537 (t!379192 (_1!36699 lt!2400243)) (_2!36699 lt!2400243))))))

(declare-fun b!6545989 () Bool)

(assert (=> b!6545989 (= e!3963483 (_2!36699 lt!2400243))))

(declare-fun b!6545991 () Bool)

(declare-fun res!2685268 () Bool)

(declare-fun e!3963482 () Bool)

(assert (=> b!6545991 (=> (not res!2685268) (not e!3963482))))

(declare-fun lt!2400459 () List!65550)

(declare-fun size!40485 (List!65550) Int)

(assert (=> b!6545991 (= res!2685268 (= (size!40485 lt!2400459) (+ (size!40485 (_1!36699 lt!2400243)) (size!40485 (_2!36699 lt!2400243)))))))

(declare-fun b!6545992 () Bool)

(assert (=> b!6545992 (= e!3963482 (or (not (= (_2!36699 lt!2400243) Nil!65426)) (= lt!2400459 (_1!36699 lt!2400243))))))

(declare-fun d!2054882 () Bool)

(assert (=> d!2054882 e!3963482))

(declare-fun res!2685267 () Bool)

(assert (=> d!2054882 (=> (not res!2685267) (not e!3963482))))

(declare-fun content!12536 (List!65550) (InoxSet C!33104))

(assert (=> d!2054882 (= res!2685267 (= (content!12536 lt!2400459) ((_ map or) (content!12536 (_1!36699 lt!2400243)) (content!12536 (_2!36699 lt!2400243)))))))

(assert (=> d!2054882 (= lt!2400459 e!3963483)))

(declare-fun c!1202214 () Bool)

(assert (=> d!2054882 (= c!1202214 ((_ is Nil!65426) (_1!36699 lt!2400243)))))

(assert (=> d!2054882 (= (++!14537 (_1!36699 lt!2400243) (_2!36699 lt!2400243)) lt!2400459)))

(assert (= (and d!2054882 c!1202214) b!6545989))

(assert (= (and d!2054882 (not c!1202214)) b!6545990))

(assert (= (and d!2054882 res!2685267) b!6545991))

(assert (= (and b!6545991 res!2685268) b!6545992))

(declare-fun m!7328922 () Bool)

(assert (=> b!6545990 m!7328922))

(declare-fun m!7328924 () Bool)

(assert (=> b!6545991 m!7328924))

(declare-fun m!7328926 () Bool)

(assert (=> b!6545991 m!7328926))

(declare-fun m!7328928 () Bool)

(assert (=> b!6545991 m!7328928))

(declare-fun m!7328930 () Bool)

(assert (=> d!2054882 m!7328930))

(declare-fun m!7328932 () Bool)

(assert (=> d!2054882 m!7328932))

(declare-fun m!7328934 () Bool)

(assert (=> d!2054882 m!7328934))

(assert (=> b!6544946 d!2054882))

(declare-fun d!2054884 () Bool)

(assert (=> d!2054884 (= (isDefined!13011 lt!2400254) (not (isEmpty!37650 lt!2400254)))))

(declare-fun bs!1671611 () Bool)

(assert (= bs!1671611 d!2054884))

(declare-fun m!7328936 () Bool)

(assert (=> bs!1671611 m!7328936))

(assert (=> b!6544946 d!2054884))

(declare-fun bs!1671612 () Bool)

(declare-fun d!2054886 () Bool)

(assert (= bs!1671612 (and d!2054886 d!2054864)))

(declare-fun lambda!363357 () Int)

(assert (=> bs!1671612 (= lambda!363357 lambda!363353)))

(declare-fun bs!1671613 () Bool)

(assert (= bs!1671613 (and d!2054886 d!2054644)))

(assert (=> bs!1671613 (= lambda!363357 lambda!363303)))

(declare-fun bs!1671614 () Bool)

(assert (= bs!1671614 (and d!2054886 d!2054790)))

(assert (=> bs!1671614 (= lambda!363357 lambda!363347)))

(declare-fun bs!1671615 () Bool)

(assert (= bs!1671615 (and d!2054886 d!2054654)))

(assert (=> bs!1671615 (= lambda!363357 lambda!363306)))

(declare-fun bs!1671616 () Bool)

(assert (= bs!1671616 (and d!2054886 b!6544950)))

(assert (=> bs!1671616 (= lambda!363357 lambda!363275)))

(declare-fun bs!1671617 () Bool)

(assert (= bs!1671617 (and d!2054886 d!2054830)))

(assert (=> bs!1671617 (= lambda!363357 lambda!363350)))

(assert (=> d!2054886 (= (inv!84289 setElem!44658) (forall!15589 (exprs!6301 setElem!44658) lambda!363357))))

(declare-fun bs!1671618 () Bool)

(assert (= bs!1671618 d!2054886))

(declare-fun m!7328938 () Bool)

(assert (=> bs!1671618 m!7328938))

(assert (=> setNonEmpty!44658 d!2054886))

(declare-fun d!2054888 () Bool)

(assert (=> d!2054888 (= (isEmpty!37646 (t!379194 zl!343)) ((_ is Nil!65428) (t!379194 zl!343)))))

(assert (=> b!6544944 d!2054888))

(assert (=> b!6544965 d!2054744))

(declare-fun b!6545997 () Bool)

(declare-fun e!3963486 () Bool)

(declare-fun tp!1810774 () Bool)

(declare-fun tp!1810775 () Bool)

(assert (=> b!6545997 (= e!3963486 (and tp!1810774 tp!1810775))))

(assert (=> b!6544933 (= tp!1810707 e!3963486)))

(assert (= (and b!6544933 ((_ is Cons!65427) (exprs!6301 setElem!44658))) b!6545997))

(declare-fun b!6546008 () Bool)

(declare-fun e!3963489 () Bool)

(assert (=> b!6546008 (= e!3963489 tp_is_empty!42087)))

(declare-fun b!6546010 () Bool)

(declare-fun tp!1810787 () Bool)

(assert (=> b!6546010 (= e!3963489 tp!1810787)))

(declare-fun b!6546009 () Bool)

(declare-fun tp!1810789 () Bool)

(declare-fun tp!1810790 () Bool)

(assert (=> b!6546009 (= e!3963489 (and tp!1810789 tp!1810790))))

(assert (=> b!6544947 (= tp!1810702 e!3963489)))

(declare-fun b!6546011 () Bool)

(declare-fun tp!1810788 () Bool)

(declare-fun tp!1810786 () Bool)

(assert (=> b!6546011 (= e!3963489 (and tp!1810788 tp!1810786))))

(assert (= (and b!6544947 ((_ is ElementMatch!16417) (regOne!33347 r!7292))) b!6546008))

(assert (= (and b!6544947 ((_ is Concat!25262) (regOne!33347 r!7292))) b!6546009))

(assert (= (and b!6544947 ((_ is Star!16417) (regOne!33347 r!7292))) b!6546010))

(assert (= (and b!6544947 ((_ is Union!16417) (regOne!33347 r!7292))) b!6546011))

(declare-fun b!6546012 () Bool)

(declare-fun e!3963490 () Bool)

(assert (=> b!6546012 (= e!3963490 tp_is_empty!42087)))

(declare-fun b!6546014 () Bool)

(declare-fun tp!1810792 () Bool)

(assert (=> b!6546014 (= e!3963490 tp!1810792)))

(declare-fun b!6546013 () Bool)

(declare-fun tp!1810794 () Bool)

(declare-fun tp!1810795 () Bool)

(assert (=> b!6546013 (= e!3963490 (and tp!1810794 tp!1810795))))

(assert (=> b!6544947 (= tp!1810711 e!3963490)))

(declare-fun b!6546015 () Bool)

(declare-fun tp!1810793 () Bool)

(declare-fun tp!1810791 () Bool)

(assert (=> b!6546015 (= e!3963490 (and tp!1810793 tp!1810791))))

(assert (= (and b!6544947 ((_ is ElementMatch!16417) (regTwo!33347 r!7292))) b!6546012))

(assert (= (and b!6544947 ((_ is Concat!25262) (regTwo!33347 r!7292))) b!6546013))

(assert (= (and b!6544947 ((_ is Star!16417) (regTwo!33347 r!7292))) b!6546014))

(assert (= (and b!6544947 ((_ is Union!16417) (regTwo!33347 r!7292))) b!6546015))

(declare-fun b!6546016 () Bool)

(declare-fun e!3963491 () Bool)

(assert (=> b!6546016 (= e!3963491 tp_is_empty!42087)))

(declare-fun b!6546018 () Bool)

(declare-fun tp!1810797 () Bool)

(assert (=> b!6546018 (= e!3963491 tp!1810797)))

(declare-fun b!6546017 () Bool)

(declare-fun tp!1810799 () Bool)

(declare-fun tp!1810800 () Bool)

(assert (=> b!6546017 (= e!3963491 (and tp!1810799 tp!1810800))))

(assert (=> b!6544967 (= tp!1810710 e!3963491)))

(declare-fun b!6546019 () Bool)

(declare-fun tp!1810798 () Bool)

(declare-fun tp!1810796 () Bool)

(assert (=> b!6546019 (= e!3963491 (and tp!1810798 tp!1810796))))

(assert (= (and b!6544967 ((_ is ElementMatch!16417) (reg!16746 r!7292))) b!6546016))

(assert (= (and b!6544967 ((_ is Concat!25262) (reg!16746 r!7292))) b!6546017))

(assert (= (and b!6544967 ((_ is Star!16417) (reg!16746 r!7292))) b!6546018))

(assert (= (and b!6544967 ((_ is Union!16417) (reg!16746 r!7292))) b!6546019))

(declare-fun b!6546027 () Bool)

(declare-fun e!3963497 () Bool)

(declare-fun tp!1810805 () Bool)

(assert (=> b!6546027 (= e!3963497 tp!1810805)))

(declare-fun b!6546026 () Bool)

(declare-fun tp!1810806 () Bool)

(declare-fun e!3963496 () Bool)

(assert (=> b!6546026 (= e!3963496 (and (inv!84289 (h!71876 (t!379194 zl!343))) e!3963497 tp!1810806))))

(assert (=> b!6544966 (= tp!1810708 e!3963496)))

(assert (= b!6546026 b!6546027))

(assert (= (and b!6544966 ((_ is Cons!65428) (t!379194 zl!343))) b!6546026))

(declare-fun m!7328940 () Bool)

(assert (=> b!6546026 m!7328940))

(declare-fun b!6546032 () Bool)

(declare-fun e!3963500 () Bool)

(declare-fun tp!1810809 () Bool)

(assert (=> b!6546032 (= e!3963500 (and tp_is_empty!42087 tp!1810809))))

(assert (=> b!6544956 (= tp!1810709 e!3963500)))

(assert (= (and b!6544956 ((_ is Cons!65426) (t!379192 s!2326))) b!6546032))

(declare-fun condSetEmpty!44664 () Bool)

(assert (=> setNonEmpty!44658 (= condSetEmpty!44664 (= setRest!44658 ((as const (Array Context!11602 Bool)) false)))))

(declare-fun setRes!44664 () Bool)

(assert (=> setNonEmpty!44658 (= tp!1810704 setRes!44664)))

(declare-fun setIsEmpty!44664 () Bool)

(assert (=> setIsEmpty!44664 setRes!44664))

(declare-fun setElem!44664 () Context!11602)

(declare-fun e!3963503 () Bool)

(declare-fun tp!1810815 () Bool)

(declare-fun setNonEmpty!44664 () Bool)

(assert (=> setNonEmpty!44664 (= setRes!44664 (and tp!1810815 (inv!84289 setElem!44664) e!3963503))))

(declare-fun setRest!44664 () (InoxSet Context!11602))

(assert (=> setNonEmpty!44664 (= setRest!44658 ((_ map or) (store ((as const (Array Context!11602 Bool)) false) setElem!44664 true) setRest!44664))))

(declare-fun b!6546037 () Bool)

(declare-fun tp!1810814 () Bool)

(assert (=> b!6546037 (= e!3963503 tp!1810814)))

(assert (= (and setNonEmpty!44658 condSetEmpty!44664) setIsEmpty!44664))

(assert (= (and setNonEmpty!44658 (not condSetEmpty!44664)) setNonEmpty!44664))

(assert (= setNonEmpty!44664 b!6546037))

(declare-fun m!7328942 () Bool)

(assert (=> setNonEmpty!44664 m!7328942))

(declare-fun b!6546038 () Bool)

(declare-fun e!3963504 () Bool)

(declare-fun tp!1810816 () Bool)

(declare-fun tp!1810817 () Bool)

(assert (=> b!6546038 (= e!3963504 (and tp!1810816 tp!1810817))))

(assert (=> b!6544960 (= tp!1810706 e!3963504)))

(assert (= (and b!6544960 ((_ is Cons!65427) (exprs!6301 (h!71876 zl!343)))) b!6546038))

(declare-fun b!6546039 () Bool)

(declare-fun e!3963505 () Bool)

(assert (=> b!6546039 (= e!3963505 tp_is_empty!42087)))

(declare-fun b!6546041 () Bool)

(declare-fun tp!1810819 () Bool)

(assert (=> b!6546041 (= e!3963505 tp!1810819)))

(declare-fun b!6546040 () Bool)

(declare-fun tp!1810821 () Bool)

(declare-fun tp!1810822 () Bool)

(assert (=> b!6546040 (= e!3963505 (and tp!1810821 tp!1810822))))

(assert (=> b!6544945 (= tp!1810705 e!3963505)))

(declare-fun b!6546042 () Bool)

(declare-fun tp!1810820 () Bool)

(declare-fun tp!1810818 () Bool)

(assert (=> b!6546042 (= e!3963505 (and tp!1810820 tp!1810818))))

(assert (= (and b!6544945 ((_ is ElementMatch!16417) (regOne!33346 r!7292))) b!6546039))

(assert (= (and b!6544945 ((_ is Concat!25262) (regOne!33346 r!7292))) b!6546040))

(assert (= (and b!6544945 ((_ is Star!16417) (regOne!33346 r!7292))) b!6546041))

(assert (= (and b!6544945 ((_ is Union!16417) (regOne!33346 r!7292))) b!6546042))

(declare-fun b!6546043 () Bool)

(declare-fun e!3963506 () Bool)

(assert (=> b!6546043 (= e!3963506 tp_is_empty!42087)))

(declare-fun b!6546045 () Bool)

(declare-fun tp!1810824 () Bool)

(assert (=> b!6546045 (= e!3963506 tp!1810824)))

(declare-fun b!6546044 () Bool)

(declare-fun tp!1810826 () Bool)

(declare-fun tp!1810827 () Bool)

(assert (=> b!6546044 (= e!3963506 (and tp!1810826 tp!1810827))))

(assert (=> b!6544945 (= tp!1810703 e!3963506)))

(declare-fun b!6546046 () Bool)

(declare-fun tp!1810825 () Bool)

(declare-fun tp!1810823 () Bool)

(assert (=> b!6546046 (= e!3963506 (and tp!1810825 tp!1810823))))

(assert (= (and b!6544945 ((_ is ElementMatch!16417) (regTwo!33346 r!7292))) b!6546043))

(assert (= (and b!6544945 ((_ is Concat!25262) (regTwo!33346 r!7292))) b!6546044))

(assert (= (and b!6544945 ((_ is Star!16417) (regTwo!33346 r!7292))) b!6546045))

(assert (= (and b!6544945 ((_ is Union!16417) (regTwo!33346 r!7292))) b!6546046))

(declare-fun b_lambda!247791 () Bool)

(assert (= b_lambda!247789 (or b!6544952 b_lambda!247791)))

(declare-fun bs!1671619 () Bool)

(declare-fun d!2054890 () Bool)

(assert (= bs!1671619 (and d!2054890 b!6544952)))

(assert (=> bs!1671619 (= (dynLambda!26004 lambda!363273 lt!2400259) (derivationStepZipperUp!1591 lt!2400259 (h!71874 s!2326)))))

(assert (=> bs!1671619 m!7327882))

(assert (=> d!2054872 d!2054890))

(declare-fun b_lambda!247793 () Bool)

(assert (= b_lambda!247761 (or b!6544952 b_lambda!247793)))

(declare-fun bs!1671620 () Bool)

(declare-fun d!2054892 () Bool)

(assert (= bs!1671620 (and d!2054892 b!6544952)))

(assert (=> bs!1671620 (= (dynLambda!26004 lambda!363273 lt!2400233) (derivationStepZipperUp!1591 lt!2400233 (h!71874 s!2326)))))

(assert (=> bs!1671620 m!7327944))

(assert (=> d!2054604 d!2054892))

(declare-fun b_lambda!247795 () Bool)

(assert (= b_lambda!247769 (or b!6544952 b_lambda!247795)))

(declare-fun bs!1671621 () Bool)

(declare-fun d!2054894 () Bool)

(assert (= bs!1671621 (and d!2054894 b!6544952)))

(assert (=> bs!1671621 (= (dynLambda!26004 lambda!363273 (h!71876 zl!343)) (derivationStepZipperUp!1591 (h!71876 zl!343) (h!71874 s!2326)))))

(assert (=> bs!1671621 m!7328012))

(assert (=> d!2054664 d!2054894))

(declare-fun b_lambda!247797 () Bool)

(assert (= b_lambda!247765 (or b!6544950 b_lambda!247797)))

(declare-fun bs!1671622 () Bool)

(declare-fun d!2054896 () Bool)

(assert (= bs!1671622 (and d!2054896 b!6544950)))

(declare-fun lt!2400460 () Unit!159003)

(assert (=> bs!1671622 (= lt!2400460 (lemmaConcatPreservesForall!390 (exprs!6301 lt!2400257) lt!2400244 lambda!363275))))

(assert (=> bs!1671622 (= (dynLambda!26005 lambda!363274 lt!2400257) (Context!11603 (++!14536 (exprs!6301 lt!2400257) lt!2400244)))))

(declare-fun m!7328944 () Bool)

(assert (=> bs!1671622 m!7328944))

(declare-fun m!7328946 () Bool)

(assert (=> bs!1671622 m!7328946))

(assert (=> d!2054618 d!2054896))

(declare-fun b_lambda!247799 () Bool)

(assert (= b_lambda!247763 (or b!6544952 b_lambda!247799)))

(declare-fun bs!1671623 () Bool)

(declare-fun d!2054898 () Bool)

(assert (= bs!1671623 (and d!2054898 b!6544952)))

(assert (=> bs!1671623 (= (dynLambda!26004 lambda!363273 lt!2400257) (derivationStepZipperUp!1591 lt!2400257 (h!71874 s!2326)))))

(assert (=> bs!1671623 m!7327950))

(assert (=> d!2054612 d!2054898))

(check-sat (not b!6545676) (not b!6545783) (not bm!569304) (not b!6545028) (not b!6546011) (not d!2054732) (not bm!569325) (not b!6545591) (not bm!569223) (not b!6546013) (not b_lambda!247791) (not b!6545575) (not bm!569224) (not b_lambda!247799) (not b!6546019) (not d!2054882) (not b!6546017) (not b!6545975) (not d!2054626) (not d!2054760) (not d!2054616) (not d!2054866) (not bs!1671619) (not b!6545293) (not d!2054856) (not b!6545881) (not b!6545932) (not b!6545083) (not d!2054612) (not d!2054808) (not d!2054664) (not bm!569303) (not b_lambda!247793) (not bm!569346) (not d!2054868) (not b_lambda!247795) (not b!6545415) (not bm!569350) (not b!6545243) (not bm!569340) (not b!6545980) (not d!2054644) (not d!2054864) (not bm!569347) (not b!6545893) (not b!6545784) (not b!6545744) (not bs!1671623) (not b!6546014) (not b!6545617) (not d!2054608) (not b!6545745) (not d!2054738) (not b!6545406) (not d!2054654) (not d!2054602) (not b!6545785) (not b!6545550) (not b!6545240) (not b!6545941) (not b!6545895) (not d!2054770) (not d!2054830) (not d!2054668) (not b!6546018) (not b!6545247) (not d!2054876) (not b!6546040) (not bm!569335) (not d!2054604) (not bm!569344) (not d!2054824) (not bm!569337) (not b!6545813) (not b!6545622) (not b!6546009) (not b!6545605) (not b!6545743) (not bm!569318) (not b!6545295) (not b!6545977) (not d!2054618) (not d!2054886) (not b!6545950) (not b!6546010) (not b!6546042) (not d!2054752) (not bm!569349) (not b!6545313) (not b!6544985) (not b!6545894) (not b!6546046) (not d!2054748) (not b!6545991) (not b!6545548) (not d!2054846) (not b!6545972) (not b!6545546) (not bm!569323) (not b!6545910) (not b!6545504) (not b_lambda!247797) (not b!6545786) (not bs!1671620) (not b!6545623) (not b!6545601) (not b!6544982) (not b!6545393) (not b!6545412) (not bm!569242) (not d!2054620) (not b!6545978) (not b!6545245) (not b!6546045) (not b!6545310) (not d!2054670) (not b!6546032) (not b!6545297) (not b!6545918) (not b!6545885) (not d!2054630) (not d!2054880) (not bm!569341) (not d!2054874) (not d!2054730) (not bm!569240) (not b!6545897) (not b!6545896) (not b!6545882) (not d!2054788) (not b!6545409) (not bs!1671621) (not b!6545616) (not d!2054586) (not b!6545026) (not bm!569334) (not bm!569336) (not bm!569332) (not bm!569319) (not bm!569308) (not b!6545879) (not b!6545031) (not d!2054660) (not b!6545678) (not d!2054854) (not d!2054804) (not b!6545621) (not b!6545997) (not b!6545913) (not bm!569302) (not b!6546026) (not b!6546027) (not b!6545298) (not bm!569322) (not d!2054850) (not d!2054722) (not b!6545883) (not b!6545619) (not b!6545545) (not b!6546038) (not d!2054742) (not d!2054776) (not b!6545907) (not b!6545875) (not bm!569307) (not b!6545804) (not b!6545675) (not d!2054872) (not b!6546037) (not bm!569279) (not b!6545023) (not b!6545880) (not bs!1671622) (not b!6545082) (not setNonEmpty!44664) (not b!6545679) (not b!6545899) (not b!6545244) (not b!6545544) (not b!6545602) (not d!2054762) (not b!6545780) (not b!6545603) (not b!6545990) (not b!6545246) (not b!6545979) (not d!2054790) (not d!2054740) (not b!6545296) (not b!6545909) (not b!6545947) tp_is_empty!42087 (not b!6546044) (not d!2054766) (not d!2054662) (not b!6545779) (not b!6545604) (not bm!569339) (not b!6545677) (not b!6545911) (not b!6545777) (not b!6545547) (not d!2054614) (not d!2054590) (not d!2054628) (not b!6544981) (not d!2054584) (not d!2054884) (not bm!569324) (not b!6545576) (not b!6545238) (not b!6545672) (not b!6546041) (not d!2054744) (not b!6545908) (not b!6545506) (not d!2054746) (not b!6545593) (not b!6545814) (not b!6545168) (not b!6545607) (not d!2054852) (not b!6546015))
(check-sat)
