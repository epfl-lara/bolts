; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!552994 () Bool)

(assert start!552994)

(declare-fun b!5229208 () Bool)

(assert (=> b!5229208 true))

(assert (=> b!5229208 true))

(declare-fun lambda!262643 () Int)

(declare-fun lambda!262642 () Int)

(assert (=> b!5229208 (not (= lambda!262643 lambda!262642))))

(assert (=> b!5229208 true))

(assert (=> b!5229208 true))

(declare-fun b!5229203 () Bool)

(assert (=> b!5229203 true))

(declare-fun b!5229172 () Bool)

(declare-fun e!3254325 () Bool)

(declare-fun e!3254331 () Bool)

(assert (=> b!5229172 (= e!3254325 (not e!3254331))))

(declare-fun res!2219848 () Bool)

(assert (=> b!5229172 (=> res!2219848 e!3254331)))

(declare-datatypes ((C!29912 0))(
  ( (C!29913 (val!24658 Int)) )
))
(declare-datatypes ((Regex!14821 0))(
  ( (ElementMatch!14821 (c!902967 C!29912)) (Concat!23666 (regOne!30154 Regex!14821) (regTwo!30154 Regex!14821)) (EmptyExpr!14821) (Star!14821 (reg!15150 Regex!14821)) (EmptyLang!14821) (Union!14821 (regOne!30155 Regex!14821) (regTwo!30155 Regex!14821)) )
))
(declare-datatypes ((List!60762 0))(
  ( (Nil!60638) (Cons!60638 (h!67086 Regex!14821) (t!373939 List!60762)) )
))
(declare-datatypes ((Context!8410 0))(
  ( (Context!8411 (exprs!4705 List!60762)) )
))
(declare-datatypes ((List!60763 0))(
  ( (Nil!60639) (Cons!60639 (h!67087 Context!8410) (t!373940 List!60763)) )
))
(declare-fun zl!343 () List!60763)

(get-info :version)

(assert (=> b!5229172 (= res!2219848 (not ((_ is Cons!60639) zl!343)))))

(declare-fun lt!2144975 () Bool)

(declare-fun r!7292 () Regex!14821)

(declare-datatypes ((List!60764 0))(
  ( (Nil!60640) (Cons!60640 (h!67088 C!29912) (t!373941 List!60764)) )
))
(declare-fun s!2326 () List!60764)

(declare-fun matchRSpec!1924 (Regex!14821 List!60764) Bool)

(assert (=> b!5229172 (= lt!2144975 (matchRSpec!1924 r!7292 s!2326))))

(declare-fun matchR!7006 (Regex!14821 List!60764) Bool)

(assert (=> b!5229172 (= lt!2144975 (matchR!7006 r!7292 s!2326))))

(declare-datatypes ((Unit!152582 0))(
  ( (Unit!152583) )
))
(declare-fun lt!2144987 () Unit!152582)

(declare-fun mainMatchTheorem!1924 (Regex!14821 List!60764) Unit!152582)

(assert (=> b!5229172 (= lt!2144987 (mainMatchTheorem!1924 r!7292 s!2326))))

(declare-fun b!5229173 () Bool)

(declare-fun e!3254322 () Bool)

(declare-fun tp_is_empty!38895 () Bool)

(declare-fun tp!1465474 () Bool)

(assert (=> b!5229173 (= e!3254322 (and tp_is_empty!38895 tp!1465474))))

(declare-fun b!5229174 () Bool)

(declare-fun e!3254326 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2144967 () (InoxSet Context!8410))

(declare-fun matchZipper!1065 ((InoxSet Context!8410) List!60764) Bool)

(assert (=> b!5229174 (= e!3254326 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(declare-fun b!5229175 () Bool)

(declare-fun e!3254335 () Unit!152582)

(declare-fun Unit!152584 () Unit!152582)

(assert (=> b!5229175 (= e!3254335 Unit!152584)))

(declare-fun lt!2144980 () Unit!152582)

(declare-fun lt!2144988 () (InoxSet Context!8410))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!58 ((InoxSet Context!8410) (InoxSet Context!8410) List!60764) Unit!152582)

(assert (=> b!5229175 (= lt!2144980 (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144988 lt!2144967 (t!373941 s!2326)))))

(declare-fun res!2219853 () Bool)

(declare-fun lt!2144989 () Bool)

(assert (=> b!5229175 (= res!2219853 lt!2144989)))

(assert (=> b!5229175 (=> res!2219853 e!3254326)))

(assert (=> b!5229175 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144967) (t!373941 s!2326)) e!3254326)))

(declare-fun b!5229176 () Bool)

(declare-fun e!3254318 () Bool)

(declare-fun lt!2144972 () (InoxSet Context!8410))

(assert (=> b!5229176 (= e!3254318 (not (matchZipper!1065 lt!2144972 (t!373941 s!2326))))))

(declare-fun b!5229177 () Bool)

(declare-fun e!3254328 () Bool)

(declare-fun tp!1465472 () Bool)

(declare-fun tp!1465477 () Bool)

(assert (=> b!5229177 (= e!3254328 (and tp!1465472 tp!1465477))))

(declare-fun b!5229178 () Bool)

(assert (=> b!5229178 (= e!3254328 tp_is_empty!38895)))

(declare-fun b!5229179 () Bool)

(declare-fun res!2219862 () Bool)

(declare-fun e!3254319 () Bool)

(assert (=> b!5229179 (=> res!2219862 e!3254319)))

(declare-fun lt!2144974 () Regex!14821)

(assert (=> b!5229179 (= res!2219862 (or (not (= lt!2144974 r!7292)) (not (= (exprs!4705 (h!67087 zl!343)) (Cons!60638 (regOne!30154 r!7292) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))

(declare-fun b!5229180 () Bool)

(declare-fun res!2219864 () Bool)

(assert (=> b!5229180 (=> res!2219864 e!3254331)))

(declare-fun generalisedConcat!490 (List!60762) Regex!14821)

(assert (=> b!5229180 (= res!2219864 (not (= r!7292 (generalisedConcat!490 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5229181 () Bool)

(declare-fun res!2219870 () Bool)

(declare-fun e!3254321 () Bool)

(assert (=> b!5229181 (=> (not res!2219870) (not e!3254321))))

(declare-fun z!1189 () (InoxSet Context!8410))

(declare-fun toList!8605 ((InoxSet Context!8410)) List!60763)

(assert (=> b!5229181 (= res!2219870 (= (toList!8605 z!1189) zl!343))))

(declare-fun b!5229182 () Bool)

(declare-fun e!3254316 () Bool)

(declare-fun tp!1465480 () Bool)

(assert (=> b!5229182 (= e!3254316 tp!1465480)))

(declare-fun b!5229183 () Bool)

(declare-fun res!2219854 () Bool)

(assert (=> b!5229183 (=> res!2219854 e!3254331)))

(assert (=> b!5229183 (= res!2219854 (not ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229184 () Bool)

(assert (=> b!5229184 (= e!3254321 e!3254325)))

(declare-fun res!2219869 () Bool)

(assert (=> b!5229184 (=> (not res!2219869) (not e!3254325))))

(assert (=> b!5229184 (= res!2219869 (= r!7292 lt!2144974))))

(declare-fun unfocusZipper!563 (List!60763) Regex!14821)

(assert (=> b!5229184 (= lt!2144974 (unfocusZipper!563 zl!343))))

(declare-fun b!5229185 () Bool)

(declare-fun Unit!152585 () Unit!152582)

(assert (=> b!5229185 (= e!3254335 Unit!152585)))

(declare-fun b!5229186 () Bool)

(declare-fun tp!1465476 () Bool)

(declare-fun tp!1465475 () Bool)

(assert (=> b!5229186 (= e!3254328 (and tp!1465476 tp!1465475))))

(declare-fun b!5229187 () Bool)

(declare-fun e!3254320 () Bool)

(assert (=> b!5229187 (= e!3254320 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(declare-fun b!5229188 () Bool)

(declare-fun e!3254338 () Bool)

(declare-fun e!3254337 () Bool)

(assert (=> b!5229188 (= e!3254338 e!3254337)))

(declare-fun res!2219866 () Bool)

(assert (=> b!5229188 (=> res!2219866 e!3254337)))

(declare-fun lt!2144993 () (InoxSet Context!8410))

(declare-fun lt!2144977 () (InoxSet Context!8410))

(assert (=> b!5229188 (= res!2219866 (not (= lt!2144993 lt!2144977)))))

(assert (=> b!5229188 (= lt!2144977 ((_ map or) lt!2144988 lt!2144972))))

(declare-fun lt!2144978 () Context!8410)

(declare-fun derivationStepZipperDown!269 (Regex!14821 Context!8410 C!29912) (InoxSet Context!8410))

(assert (=> b!5229188 (= lt!2144972 (derivationStepZipperDown!269 (regTwo!30155 (regOne!30154 r!7292)) lt!2144978 (h!67088 s!2326)))))

(assert (=> b!5229188 (= lt!2144988 (derivationStepZipperDown!269 (regOne!30155 (regOne!30154 r!7292)) lt!2144978 (h!67088 s!2326)))))

(declare-fun res!2219871 () Bool)

(assert (=> start!552994 (=> (not res!2219871) (not e!3254321))))

(declare-fun validRegex!6557 (Regex!14821) Bool)

(assert (=> start!552994 (= res!2219871 (validRegex!6557 r!7292))))

(assert (=> start!552994 e!3254321))

(assert (=> start!552994 e!3254328))

(declare-fun condSetEmpty!33299 () Bool)

(assert (=> start!552994 (= condSetEmpty!33299 (= z!1189 ((as const (Array Context!8410 Bool)) false)))))

(declare-fun setRes!33299 () Bool)

(assert (=> start!552994 setRes!33299))

(declare-fun e!3254323 () Bool)

(assert (=> start!552994 e!3254323))

(assert (=> start!552994 e!3254322))

(declare-fun b!5229189 () Bool)

(declare-fun res!2219867 () Bool)

(assert (=> b!5229189 (=> res!2219867 e!3254331)))

(declare-fun isEmpty!32563 (List!60763) Bool)

(assert (=> b!5229189 (= res!2219867 (not (isEmpty!32563 (t!373940 zl!343))))))

(declare-fun b!5229190 () Bool)

(declare-fun e!3254317 () Bool)

(assert (=> b!5229190 (= e!3254317 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(declare-fun b!5229191 () Bool)

(declare-fun res!2219868 () Bool)

(assert (=> b!5229191 (=> res!2219868 e!3254331)))

(declare-fun generalisedUnion!750 (List!60762) Regex!14821)

(declare-fun unfocusZipperList!263 (List!60763) List!60762)

(assert (=> b!5229191 (= res!2219868 (not (= r!7292 (generalisedUnion!750 (unfocusZipperList!263 zl!343)))))))

(declare-fun b!5229192 () Bool)

(declare-fun tp!1465478 () Bool)

(assert (=> b!5229192 (= e!3254328 tp!1465478)))

(declare-fun b!5229193 () Bool)

(declare-fun e!3254324 () Unit!152582)

(declare-fun Unit!152586 () Unit!152582)

(assert (=> b!5229193 (= e!3254324 Unit!152586)))

(declare-fun lt!2144991 () Unit!152582)

(assert (=> b!5229193 (= lt!2144991 (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144993 lt!2144967 (t!373941 s!2326)))))

(declare-fun res!2219856 () Bool)

(assert (=> b!5229193 (= res!2219856 (matchZipper!1065 lt!2144993 (t!373941 s!2326)))))

(declare-fun e!3254327 () Bool)

(assert (=> b!5229193 (=> res!2219856 e!3254327)))

(assert (=> b!5229193 (= (matchZipper!1065 ((_ map or) lt!2144993 lt!2144967) (t!373941 s!2326)) e!3254327)))

(declare-fun b!5229194 () Bool)

(declare-fun res!2219857 () Bool)

(declare-fun e!3254330 () Bool)

(assert (=> b!5229194 (=> res!2219857 e!3254330)))

(declare-fun isEmpty!32564 (List!60762) Bool)

(assert (=> b!5229194 (= res!2219857 (isEmpty!32564 (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229195 () Bool)

(declare-fun res!2219852 () Bool)

(declare-fun e!3254333 () Bool)

(assert (=> b!5229195 (=> res!2219852 e!3254333)))

(declare-fun lt!2144985 () Context!8410)

(declare-fun lt!2144970 () Int)

(declare-fun zipperDepthTotal!2 (List!60763) Int)

(assert (=> b!5229195 (= res!2219852 (>= (zipperDepthTotal!2 (Cons!60639 lt!2144985 Nil!60639)) lt!2144970))))

(declare-fun b!5229196 () Bool)

(declare-fun e!3254332 () Bool)

(assert (=> b!5229196 (= e!3254337 e!3254332)))

(declare-fun res!2219851 () Bool)

(assert (=> b!5229196 (=> res!2219851 e!3254332)))

(assert (=> b!5229196 (= res!2219851 e!3254318)))

(declare-fun res!2219861 () Bool)

(assert (=> b!5229196 (=> (not res!2219861) (not e!3254318))))

(assert (=> b!5229196 (= res!2219861 (not (= (matchZipper!1065 lt!2144993 (t!373941 s!2326)) lt!2144989)))))

(assert (=> b!5229196 (= (matchZipper!1065 lt!2144977 (t!373941 s!2326)) e!3254317)))

(declare-fun res!2219855 () Bool)

(assert (=> b!5229196 (=> res!2219855 e!3254317)))

(assert (=> b!5229196 (= res!2219855 lt!2144989)))

(assert (=> b!5229196 (= lt!2144989 (matchZipper!1065 lt!2144988 (t!373941 s!2326)))))

(declare-fun lt!2144964 () Unit!152582)

(assert (=> b!5229196 (= lt!2144964 (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144988 lt!2144972 (t!373941 s!2326)))))

(declare-fun b!5229197 () Bool)

(declare-fun lt!2144994 () List!60762)

(declare-fun lambda!262645 () Int)

(declare-fun forall!14253 (List!60762 Int) Bool)

(assert (=> b!5229197 (= e!3254333 (forall!14253 lt!2144994 lambda!262645))))

(declare-fun b!5229198 () Bool)

(assert (=> b!5229198 (= e!3254332 e!3254319)))

(declare-fun res!2219863 () Bool)

(assert (=> b!5229198 (=> res!2219863 e!3254319)))

(declare-fun e!3254329 () Bool)

(assert (=> b!5229198 (= res!2219863 (not (= (matchZipper!1065 z!1189 s!2326) e!3254329)))))

(declare-fun res!2219850 () Bool)

(assert (=> b!5229198 (=> res!2219850 e!3254329)))

(declare-fun lt!2144986 () (InoxSet Context!8410))

(assert (=> b!5229198 (= res!2219850 (matchZipper!1065 lt!2144986 s!2326))))

(declare-fun lt!2144992 () Unit!152582)

(declare-fun e!3254336 () Unit!152582)

(assert (=> b!5229198 (= lt!2144992 e!3254336)))

(declare-fun c!902966 () Bool)

(declare-fun nullable!4990 (Regex!14821) Bool)

(assert (=> b!5229198 (= c!902966 (nullable!4990 (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun lambda!262644 () Int)

(declare-fun lt!2144969 () (InoxSet Context!8410))

(declare-fun flatMap!548 ((InoxSet Context!8410) Int) (InoxSet Context!8410))

(declare-fun derivationStepZipperUp!193 (Context!8410 C!29912) (InoxSet Context!8410))

(assert (=> b!5229198 (= (flatMap!548 lt!2144969 lambda!262644) (derivationStepZipperUp!193 lt!2144985 (h!67088 s!2326)))))

(declare-fun lt!2144963 () Unit!152582)

(declare-fun lemmaFlatMapOnSingletonSet!80 ((InoxSet Context!8410) Context!8410 Int) Unit!152582)

(assert (=> b!5229198 (= lt!2144963 (lemmaFlatMapOnSingletonSet!80 lt!2144969 lt!2144985 lambda!262644))))

(declare-fun lt!2144971 () (InoxSet Context!8410))

(assert (=> b!5229198 (= lt!2144971 (derivationStepZipperUp!193 lt!2144985 (h!67088 s!2326)))))

(declare-fun lt!2144966 () Unit!152582)

(assert (=> b!5229198 (= lt!2144966 e!3254335)))

(declare-fun c!902964 () Bool)

(assert (=> b!5229198 (= c!902964 (nullable!4990 (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun lt!2144990 () Context!8410)

(assert (=> b!5229198 (= (flatMap!548 lt!2144986 lambda!262644) (derivationStepZipperUp!193 lt!2144990 (h!67088 s!2326)))))

(declare-fun lt!2144984 () Unit!152582)

(assert (=> b!5229198 (= lt!2144984 (lemmaFlatMapOnSingletonSet!80 lt!2144986 lt!2144990 lambda!262644))))

(declare-fun lt!2144981 () (InoxSet Context!8410))

(assert (=> b!5229198 (= lt!2144981 (derivationStepZipperUp!193 lt!2144990 (h!67088 s!2326)))))

(assert (=> b!5229198 (= lt!2144969 (store ((as const (Array Context!8410 Bool)) false) lt!2144985 true))))

(assert (=> b!5229198 (= lt!2144985 (Context!8411 (Cons!60638 (regTwo!30155 (regOne!30154 r!7292)) (t!373939 (exprs!4705 (h!67087 zl!343))))))))

(assert (=> b!5229198 (= lt!2144986 (store ((as const (Array Context!8410 Bool)) false) lt!2144990 true))))

(assert (=> b!5229198 (= lt!2144990 (Context!8411 lt!2144994))))

(assert (=> b!5229198 (= lt!2144994 (Cons!60638 (regOne!30155 (regOne!30154 r!7292)) (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun tp!1465481 () Bool)

(declare-fun e!3254334 () Bool)

(declare-fun setNonEmpty!33299 () Bool)

(declare-fun setElem!33299 () Context!8410)

(declare-fun inv!80299 (Context!8410) Bool)

(assert (=> setNonEmpty!33299 (= setRes!33299 (and tp!1465481 (inv!80299 setElem!33299) e!3254334))))

(declare-fun setRest!33299 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33299 (= z!1189 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33299 true) setRest!33299))))

(declare-fun b!5229199 () Bool)

(declare-fun Unit!152587 () Unit!152582)

(assert (=> b!5229199 (= e!3254336 Unit!152587)))

(declare-fun lt!2144983 () Unit!152582)

(assert (=> b!5229199 (= lt!2144983 (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144972 lt!2144967 (t!373941 s!2326)))))

(declare-fun res!2219860 () Bool)

(assert (=> b!5229199 (= res!2219860 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(assert (=> b!5229199 (=> res!2219860 e!3254320)))

(assert (=> b!5229199 (= (matchZipper!1065 ((_ map or) lt!2144972 lt!2144967) (t!373941 s!2326)) e!3254320)))

(declare-fun b!5229200 () Bool)

(declare-fun res!2219859 () Bool)

(assert (=> b!5229200 (=> res!2219859 e!3254331)))

(assert (=> b!5229200 (= res!2219859 (or ((_ is EmptyExpr!14821) r!7292) ((_ is EmptyLang!14821) r!7292) ((_ is ElementMatch!14821) r!7292) ((_ is Union!14821) r!7292) (not ((_ is Concat!23666) r!7292))))))

(declare-fun b!5229201 () Bool)

(assert (=> b!5229201 (= e!3254327 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(declare-fun setIsEmpty!33299 () Bool)

(assert (=> setIsEmpty!33299 setRes!33299))

(declare-fun b!5229202 () Bool)

(declare-fun Unit!152588 () Unit!152582)

(assert (=> b!5229202 (= e!3254336 Unit!152588)))

(assert (=> b!5229203 (= e!3254330 e!3254338)))

(declare-fun res!2219865 () Bool)

(assert (=> b!5229203 (=> res!2219865 e!3254338)))

(assert (=> b!5229203 (= res!2219865 (or (and ((_ is ElementMatch!14821) (regOne!30154 r!7292)) (= (c!902967 (regOne!30154 r!7292)) (h!67088 s!2326))) (not ((_ is Union!14821) (regOne!30154 r!7292)))))))

(declare-fun lt!2144968 () Unit!152582)

(assert (=> b!5229203 (= lt!2144968 e!3254324)))

(declare-fun c!902965 () Bool)

(assert (=> b!5229203 (= c!902965 (nullable!4990 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> b!5229203 (= (flatMap!548 z!1189 lambda!262644) (derivationStepZipperUp!193 (h!67087 zl!343) (h!67088 s!2326)))))

(declare-fun lt!2144962 () Unit!152582)

(assert (=> b!5229203 (= lt!2144962 (lemmaFlatMapOnSingletonSet!80 z!1189 (h!67087 zl!343) lambda!262644))))

(assert (=> b!5229203 (= lt!2144967 (derivationStepZipperUp!193 lt!2144978 (h!67088 s!2326)))))

(assert (=> b!5229203 (= lt!2144993 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (h!67087 zl!343))) lt!2144978 (h!67088 s!2326)))))

(assert (=> b!5229203 (= lt!2144978 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun lt!2144976 () (InoxSet Context!8410))

(assert (=> b!5229203 (= lt!2144976 (derivationStepZipperUp!193 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))) (h!67088 s!2326)))))

(declare-fun b!5229204 () Bool)

(assert (=> b!5229204 (= e!3254329 (matchZipper!1065 lt!2144969 s!2326))))

(declare-fun tp!1465479 () Bool)

(declare-fun b!5229205 () Bool)

(assert (=> b!5229205 (= e!3254323 (and (inv!80299 (h!67087 zl!343)) e!3254316 tp!1465479))))

(declare-fun b!5229206 () Bool)

(declare-fun Unit!152589 () Unit!152582)

(assert (=> b!5229206 (= e!3254324 Unit!152589)))

(declare-fun b!5229207 () Bool)

(assert (=> b!5229207 (= e!3254319 e!3254333)))

(declare-fun res!2219858 () Bool)

(assert (=> b!5229207 (=> res!2219858 e!3254333)))

(declare-fun lt!2144965 () Int)

(assert (=> b!5229207 (= res!2219858 (>= lt!2144965 lt!2144970))))

(assert (=> b!5229207 (= lt!2144970 (zipperDepthTotal!2 zl!343))))

(assert (=> b!5229207 (= lt!2144965 (zipperDepthTotal!2 (Cons!60639 lt!2144990 Nil!60639)))))

(assert (=> b!5229208 (= e!3254331 e!3254330)))

(declare-fun res!2219849 () Bool)

(assert (=> b!5229208 (=> res!2219849 e!3254330)))

(declare-fun lt!2144973 () Bool)

(assert (=> b!5229208 (= res!2219849 (or (not (= lt!2144975 lt!2144973)) ((_ is Nil!60640) s!2326)))))

(declare-fun Exists!2002 (Int) Bool)

(assert (=> b!5229208 (= (Exists!2002 lambda!262642) (Exists!2002 lambda!262643))))

(declare-fun lt!2144979 () Unit!152582)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!656 (Regex!14821 Regex!14821 List!60764) Unit!152582)

(assert (=> b!5229208 (= lt!2144979 (lemmaExistCutMatchRandMatchRSpecEquivalent!656 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326))))

(assert (=> b!5229208 (= lt!2144973 (Exists!2002 lambda!262642))))

(declare-datatypes ((tuple2!64040 0))(
  ( (tuple2!64041 (_1!35323 List!60764) (_2!35323 List!60764)) )
))
(declare-datatypes ((Option!14932 0))(
  ( (None!14931) (Some!14931 (v!50960 tuple2!64040)) )
))
(declare-fun isDefined!11635 (Option!14932) Bool)

(declare-fun findConcatSeparation!1346 (Regex!14821 Regex!14821 List!60764 List!60764 List!60764) Option!14932)

(assert (=> b!5229208 (= lt!2144973 (isDefined!11635 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326)))))

(declare-fun lt!2144982 () Unit!152582)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1110 (Regex!14821 Regex!14821 List!60764) Unit!152582)

(assert (=> b!5229208 (= lt!2144982 (lemmaFindConcatSeparationEquivalentToExists!1110 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326))))

(declare-fun b!5229209 () Bool)

(declare-fun tp!1465473 () Bool)

(assert (=> b!5229209 (= e!3254334 tp!1465473)))

(assert (= (and start!552994 res!2219871) b!5229181))

(assert (= (and b!5229181 res!2219870) b!5229184))

(assert (= (and b!5229184 res!2219869) b!5229172))

(assert (= (and b!5229172 (not res!2219848)) b!5229189))

(assert (= (and b!5229189 (not res!2219867)) b!5229180))

(assert (= (and b!5229180 (not res!2219864)) b!5229183))

(assert (= (and b!5229183 (not res!2219854)) b!5229191))

(assert (= (and b!5229191 (not res!2219868)) b!5229200))

(assert (= (and b!5229200 (not res!2219859)) b!5229208))

(assert (= (and b!5229208 (not res!2219849)) b!5229194))

(assert (= (and b!5229194 (not res!2219857)) b!5229203))

(assert (= (and b!5229203 c!902965) b!5229193))

(assert (= (and b!5229203 (not c!902965)) b!5229206))

(assert (= (and b!5229193 (not res!2219856)) b!5229201))

(assert (= (and b!5229203 (not res!2219865)) b!5229188))

(assert (= (and b!5229188 (not res!2219866)) b!5229196))

(assert (= (and b!5229196 (not res!2219855)) b!5229190))

(assert (= (and b!5229196 res!2219861) b!5229176))

(assert (= (and b!5229196 (not res!2219851)) b!5229198))

(assert (= (and b!5229198 c!902964) b!5229175))

(assert (= (and b!5229198 (not c!902964)) b!5229185))

(assert (= (and b!5229175 (not res!2219853)) b!5229174))

(assert (= (and b!5229198 c!902966) b!5229199))

(assert (= (and b!5229198 (not c!902966)) b!5229202))

(assert (= (and b!5229199 (not res!2219860)) b!5229187))

(assert (= (and b!5229198 (not res!2219850)) b!5229204))

(assert (= (and b!5229198 (not res!2219863)) b!5229179))

(assert (= (and b!5229179 (not res!2219862)) b!5229207))

(assert (= (and b!5229207 (not res!2219858)) b!5229195))

(assert (= (and b!5229195 (not res!2219852)) b!5229197))

(assert (= (and start!552994 ((_ is ElementMatch!14821) r!7292)) b!5229178))

(assert (= (and start!552994 ((_ is Concat!23666) r!7292)) b!5229186))

(assert (= (and start!552994 ((_ is Star!14821) r!7292)) b!5229192))

(assert (= (and start!552994 ((_ is Union!14821) r!7292)) b!5229177))

(assert (= (and start!552994 condSetEmpty!33299) setIsEmpty!33299))

(assert (= (and start!552994 (not condSetEmpty!33299)) setNonEmpty!33299))

(assert (= setNonEmpty!33299 b!5229209))

(assert (= b!5229205 b!5229182))

(assert (= (and start!552994 ((_ is Cons!60639) zl!343)) b!5229205))

(assert (= (and start!552994 ((_ is Cons!60640) s!2326)) b!5229173))

(declare-fun m!6275194 () Bool)

(assert (=> b!5229191 m!6275194))

(assert (=> b!5229191 m!6275194))

(declare-fun m!6275196 () Bool)

(assert (=> b!5229191 m!6275196))

(declare-fun m!6275198 () Bool)

(assert (=> b!5229190 m!6275198))

(assert (=> b!5229176 m!6275198))

(declare-fun m!6275200 () Bool)

(assert (=> b!5229195 m!6275200))

(declare-fun m!6275202 () Bool)

(assert (=> b!5229205 m!6275202))

(declare-fun m!6275204 () Bool)

(assert (=> b!5229196 m!6275204))

(declare-fun m!6275206 () Bool)

(assert (=> b!5229196 m!6275206))

(declare-fun m!6275208 () Bool)

(assert (=> b!5229196 m!6275208))

(declare-fun m!6275210 () Bool)

(assert (=> b!5229196 m!6275210))

(declare-fun m!6275212 () Bool)

(assert (=> b!5229194 m!6275212))

(declare-fun m!6275214 () Bool)

(assert (=> b!5229184 m!6275214))

(declare-fun m!6275216 () Bool)

(assert (=> b!5229180 m!6275216))

(declare-fun m!6275218 () Bool)

(assert (=> setNonEmpty!33299 m!6275218))

(declare-fun m!6275220 () Bool)

(assert (=> b!5229175 m!6275220))

(declare-fun m!6275222 () Bool)

(assert (=> b!5229175 m!6275222))

(declare-fun m!6275224 () Bool)

(assert (=> b!5229172 m!6275224))

(declare-fun m!6275226 () Bool)

(assert (=> b!5229172 m!6275226))

(declare-fun m!6275228 () Bool)

(assert (=> b!5229172 m!6275228))

(declare-fun m!6275230 () Bool)

(assert (=> b!5229189 m!6275230))

(declare-fun m!6275232 () Bool)

(assert (=> b!5229197 m!6275232))

(declare-fun m!6275234 () Bool)

(assert (=> b!5229207 m!6275234))

(declare-fun m!6275236 () Bool)

(assert (=> b!5229207 m!6275236))

(declare-fun m!6275238 () Bool)

(assert (=> b!5229204 m!6275238))

(declare-fun m!6275240 () Bool)

(assert (=> b!5229198 m!6275240))

(declare-fun m!6275242 () Bool)

(assert (=> b!5229198 m!6275242))

(declare-fun m!6275244 () Bool)

(assert (=> b!5229198 m!6275244))

(declare-fun m!6275246 () Bool)

(assert (=> b!5229198 m!6275246))

(declare-fun m!6275248 () Bool)

(assert (=> b!5229198 m!6275248))

(declare-fun m!6275250 () Bool)

(assert (=> b!5229198 m!6275250))

(declare-fun m!6275252 () Bool)

(assert (=> b!5229198 m!6275252))

(declare-fun m!6275254 () Bool)

(assert (=> b!5229198 m!6275254))

(declare-fun m!6275256 () Bool)

(assert (=> b!5229198 m!6275256))

(declare-fun m!6275258 () Bool)

(assert (=> b!5229198 m!6275258))

(declare-fun m!6275260 () Bool)

(assert (=> b!5229198 m!6275260))

(declare-fun m!6275262 () Bool)

(assert (=> b!5229198 m!6275262))

(declare-fun m!6275264 () Bool)

(assert (=> b!5229193 m!6275264))

(assert (=> b!5229193 m!6275204))

(declare-fun m!6275266 () Bool)

(assert (=> b!5229193 m!6275266))

(declare-fun m!6275268 () Bool)

(assert (=> b!5229201 m!6275268))

(assert (=> b!5229187 m!6275268))

(assert (=> b!5229174 m!6275268))

(declare-fun m!6275270 () Bool)

(assert (=> b!5229199 m!6275270))

(assert (=> b!5229199 m!6275198))

(declare-fun m!6275272 () Bool)

(assert (=> b!5229199 m!6275272))

(declare-fun m!6275274 () Bool)

(assert (=> b!5229203 m!6275274))

(declare-fun m!6275276 () Bool)

(assert (=> b!5229203 m!6275276))

(declare-fun m!6275278 () Bool)

(assert (=> b!5229203 m!6275278))

(declare-fun m!6275280 () Bool)

(assert (=> b!5229203 m!6275280))

(declare-fun m!6275282 () Bool)

(assert (=> b!5229203 m!6275282))

(declare-fun m!6275284 () Bool)

(assert (=> b!5229203 m!6275284))

(declare-fun m!6275286 () Bool)

(assert (=> b!5229203 m!6275286))

(declare-fun m!6275288 () Bool)

(assert (=> b!5229188 m!6275288))

(declare-fun m!6275290 () Bool)

(assert (=> b!5229188 m!6275290))

(declare-fun m!6275292 () Bool)

(assert (=> b!5229181 m!6275292))

(declare-fun m!6275294 () Bool)

(assert (=> b!5229208 m!6275294))

(declare-fun m!6275296 () Bool)

(assert (=> b!5229208 m!6275296))

(declare-fun m!6275298 () Bool)

(assert (=> b!5229208 m!6275298))

(declare-fun m!6275300 () Bool)

(assert (=> b!5229208 m!6275300))

(declare-fun m!6275302 () Bool)

(assert (=> b!5229208 m!6275302))

(assert (=> b!5229208 m!6275302))

(assert (=> b!5229208 m!6275296))

(declare-fun m!6275304 () Bool)

(assert (=> b!5229208 m!6275304))

(declare-fun m!6275306 () Bool)

(assert (=> start!552994 m!6275306))

(check-sat (not b!5229194) (not b!5229174) (not b!5229208) (not start!552994) (not b!5229193) (not b!5229177) (not b!5229195) (not b!5229192) (not b!5229187) (not b!5229190) (not b!5229204) (not b!5229172) (not b!5229182) (not b!5229181) (not b!5229201) (not b!5229196) (not b!5229199) (not b!5229189) (not b!5229205) (not b!5229207) (not b!5229173) (not b!5229209) (not setNonEmpty!33299) (not b!5229176) (not b!5229180) (not b!5229175) (not b!5229198) (not b!5229184) (not b!5229188) (not b!5229197) (not b!5229203) (not b!5229186) tp_is_empty!38895 (not b!5229191))
(check-sat)
(get-model)

(declare-fun bm!369693 () Bool)

(declare-fun call!369701 () (InoxSet Context!8410))

(declare-fun call!369702 () (InoxSet Context!8410))

(assert (=> bm!369693 (= call!369701 call!369702)))

(declare-fun b!5229416 () Bool)

(declare-fun e!3254456 () (InoxSet Context!8410))

(declare-fun call!369698 () (InoxSet Context!8410))

(assert (=> b!5229416 (= e!3254456 ((_ map or) call!369698 call!369702))))

(declare-fun b!5229417 () Bool)

(declare-fun c!903046 () Bool)

(declare-fun e!3254457 () Bool)

(assert (=> b!5229417 (= c!903046 e!3254457)))

(declare-fun res!2219924 () Bool)

(assert (=> b!5229417 (=> (not res!2219924) (not e!3254457))))

(assert (=> b!5229417 (= res!2219924 ((_ is Concat!23666) (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun e!3254454 () (InoxSet Context!8410))

(assert (=> b!5229417 (= e!3254454 e!3254456)))

(declare-fun b!5229418 () Bool)

(declare-fun e!3254455 () (InoxSet Context!8410))

(assert (=> b!5229418 (= e!3254455 call!369701)))

(declare-fun bm!369694 () Bool)

(declare-fun call!369703 () List!60762)

(declare-fun c!903044 () Bool)

(assert (=> bm!369694 (= call!369698 (derivationStepZipperDown!269 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))) (ite c!903044 lt!2144978 (Context!8411 call!369703)) (h!67088 s!2326)))))

(declare-fun bm!369695 () Bool)

(declare-fun call!369700 () (InoxSet Context!8410))

(assert (=> bm!369695 (= call!369702 call!369700)))

(declare-fun bm!369696 () Bool)

(declare-fun c!903042 () Bool)

(declare-fun $colon$colon!1294 (List!60762 Regex!14821) List!60762)

(assert (=> bm!369696 (= call!369703 ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903046 c!903042) (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (regTwo!30155 (regOne!30154 r!7292)))))))

(declare-fun b!5229419 () Bool)

(declare-fun e!3254458 () (InoxSet Context!8410))

(assert (=> b!5229419 (= e!3254458 (store ((as const (Array Context!8410 Bool)) false) lt!2144978 true))))

(declare-fun b!5229420 () Bool)

(assert (=> b!5229420 (= e!3254456 e!3254455)))

(assert (=> b!5229420 (= c!903042 ((_ is Concat!23666) (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun b!5229421 () Bool)

(declare-fun e!3254453 () (InoxSet Context!8410))

(assert (=> b!5229421 (= e!3254453 call!369701)))

(declare-fun call!369699 () List!60762)

(declare-fun bm!369697 () Bool)

(assert (=> bm!369697 (= call!369700 (derivationStepZipperDown!269 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))) (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699)) (h!67088 s!2326)))))

(declare-fun b!5229422 () Bool)

(assert (=> b!5229422 (= e!3254457 (nullable!4990 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))))

(declare-fun b!5229424 () Bool)

(declare-fun c!903045 () Bool)

(assert (=> b!5229424 (= c!903045 ((_ is Star!14821) (regTwo!30155 (regOne!30154 r!7292))))))

(assert (=> b!5229424 (= e!3254455 e!3254453)))

(declare-fun b!5229425 () Bool)

(assert (=> b!5229425 (= e!3254458 e!3254454)))

(assert (=> b!5229425 (= c!903044 ((_ is Union!14821) (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun bm!369698 () Bool)

(assert (=> bm!369698 (= call!369699 call!369703)))

(declare-fun b!5229426 () Bool)

(assert (=> b!5229426 (= e!3254453 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1685754 () Bool)

(declare-fun c!903043 () Bool)

(assert (=> d!1685754 (= c!903043 (and ((_ is ElementMatch!14821) (regTwo!30155 (regOne!30154 r!7292))) (= (c!902967 (regTwo!30155 (regOne!30154 r!7292))) (h!67088 s!2326))))))

(assert (=> d!1685754 (= (derivationStepZipperDown!269 (regTwo!30155 (regOne!30154 r!7292)) lt!2144978 (h!67088 s!2326)) e!3254458)))

(declare-fun b!5229423 () Bool)

(assert (=> b!5229423 (= e!3254454 ((_ map or) call!369698 call!369700))))

(assert (= (and d!1685754 c!903043) b!5229419))

(assert (= (and d!1685754 (not c!903043)) b!5229425))

(assert (= (and b!5229425 c!903044) b!5229423))

(assert (= (and b!5229425 (not c!903044)) b!5229417))

(assert (= (and b!5229417 res!2219924) b!5229422))

(assert (= (and b!5229417 c!903046) b!5229416))

(assert (= (and b!5229417 (not c!903046)) b!5229420))

(assert (= (and b!5229420 c!903042) b!5229418))

(assert (= (and b!5229420 (not c!903042)) b!5229424))

(assert (= (and b!5229424 c!903045) b!5229421))

(assert (= (and b!5229424 (not c!903045)) b!5229426))

(assert (= (or b!5229418 b!5229421) bm!369698))

(assert (= (or b!5229418 b!5229421) bm!369693))

(assert (= (or b!5229416 bm!369698) bm!369696))

(assert (= (or b!5229416 bm!369693) bm!369695))

(assert (= (or b!5229423 bm!369695) bm!369697))

(assert (= (or b!5229423 b!5229416) bm!369694))

(declare-fun m!6275496 () Bool)

(assert (=> bm!369694 m!6275496))

(declare-fun m!6275498 () Bool)

(assert (=> b!5229422 m!6275498))

(declare-fun m!6275500 () Bool)

(assert (=> b!5229419 m!6275500))

(declare-fun m!6275502 () Bool)

(assert (=> bm!369696 m!6275502))

(declare-fun m!6275504 () Bool)

(assert (=> bm!369697 m!6275504))

(assert (=> b!5229188 d!1685754))

(declare-fun bm!369699 () Bool)

(declare-fun call!369707 () (InoxSet Context!8410))

(declare-fun call!369708 () (InoxSet Context!8410))

(assert (=> bm!369699 (= call!369707 call!369708)))

(declare-fun b!5229437 () Bool)

(declare-fun e!3254468 () (InoxSet Context!8410))

(declare-fun call!369704 () (InoxSet Context!8410))

(assert (=> b!5229437 (= e!3254468 ((_ map or) call!369704 call!369708))))

(declare-fun b!5229438 () Bool)

(declare-fun c!903055 () Bool)

(declare-fun e!3254469 () Bool)

(assert (=> b!5229438 (= c!903055 e!3254469)))

(declare-fun res!2219927 () Bool)

(assert (=> b!5229438 (=> (not res!2219927) (not e!3254469))))

(assert (=> b!5229438 (= res!2219927 ((_ is Concat!23666) (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun e!3254466 () (InoxSet Context!8410))

(assert (=> b!5229438 (= e!3254466 e!3254468)))

(declare-fun b!5229439 () Bool)

(declare-fun e!3254467 () (InoxSet Context!8410))

(assert (=> b!5229439 (= e!3254467 call!369707)))

(declare-fun c!903053 () Bool)

(declare-fun bm!369700 () Bool)

(declare-fun call!369709 () List!60762)

(assert (=> bm!369700 (= call!369704 (derivationStepZipperDown!269 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))) (ite c!903053 lt!2144978 (Context!8411 call!369709)) (h!67088 s!2326)))))

(declare-fun bm!369701 () Bool)

(declare-fun call!369706 () (InoxSet Context!8410))

(assert (=> bm!369701 (= call!369708 call!369706)))

(declare-fun c!903051 () Bool)

(declare-fun bm!369702 () Bool)

(assert (=> bm!369702 (= call!369709 ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903055 c!903051) (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (regOne!30155 (regOne!30154 r!7292)))))))

(declare-fun b!5229440 () Bool)

(declare-fun e!3254470 () (InoxSet Context!8410))

(assert (=> b!5229440 (= e!3254470 (store ((as const (Array Context!8410 Bool)) false) lt!2144978 true))))

(declare-fun b!5229441 () Bool)

(assert (=> b!5229441 (= e!3254468 e!3254467)))

(assert (=> b!5229441 (= c!903051 ((_ is Concat!23666) (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun b!5229442 () Bool)

(declare-fun e!3254465 () (InoxSet Context!8410))

(assert (=> b!5229442 (= e!3254465 call!369707)))

(declare-fun call!369705 () List!60762)

(declare-fun bm!369703 () Bool)

(assert (=> bm!369703 (= call!369706 (derivationStepZipperDown!269 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))) (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705)) (h!67088 s!2326)))))

(declare-fun b!5229443 () Bool)

(assert (=> b!5229443 (= e!3254469 (nullable!4990 (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))))

(declare-fun b!5229445 () Bool)

(declare-fun c!903054 () Bool)

(assert (=> b!5229445 (= c!903054 ((_ is Star!14821) (regOne!30155 (regOne!30154 r!7292))))))

(assert (=> b!5229445 (= e!3254467 e!3254465)))

(declare-fun b!5229446 () Bool)

(assert (=> b!5229446 (= e!3254470 e!3254466)))

(assert (=> b!5229446 (= c!903053 ((_ is Union!14821) (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun bm!369704 () Bool)

(assert (=> bm!369704 (= call!369705 call!369709)))

(declare-fun b!5229447 () Bool)

(assert (=> b!5229447 (= e!3254465 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1685770 () Bool)

(declare-fun c!903052 () Bool)

(assert (=> d!1685770 (= c!903052 (and ((_ is ElementMatch!14821) (regOne!30155 (regOne!30154 r!7292))) (= (c!902967 (regOne!30155 (regOne!30154 r!7292))) (h!67088 s!2326))))))

(assert (=> d!1685770 (= (derivationStepZipperDown!269 (regOne!30155 (regOne!30154 r!7292)) lt!2144978 (h!67088 s!2326)) e!3254470)))

(declare-fun b!5229444 () Bool)

(assert (=> b!5229444 (= e!3254466 ((_ map or) call!369704 call!369706))))

(assert (= (and d!1685770 c!903052) b!5229440))

(assert (= (and d!1685770 (not c!903052)) b!5229446))

(assert (= (and b!5229446 c!903053) b!5229444))

(assert (= (and b!5229446 (not c!903053)) b!5229438))

(assert (= (and b!5229438 res!2219927) b!5229443))

(assert (= (and b!5229438 c!903055) b!5229437))

(assert (= (and b!5229438 (not c!903055)) b!5229441))

(assert (= (and b!5229441 c!903051) b!5229439))

(assert (= (and b!5229441 (not c!903051)) b!5229445))

(assert (= (and b!5229445 c!903054) b!5229442))

(assert (= (and b!5229445 (not c!903054)) b!5229447))

(assert (= (or b!5229439 b!5229442) bm!369704))

(assert (= (or b!5229439 b!5229442) bm!369699))

(assert (= (or b!5229437 bm!369704) bm!369702))

(assert (= (or b!5229437 bm!369699) bm!369701))

(assert (= (or b!5229444 bm!369701) bm!369703))

(assert (= (or b!5229444 b!5229437) bm!369700))

(declare-fun m!6275514 () Bool)

(assert (=> bm!369700 m!6275514))

(declare-fun m!6275516 () Bool)

(assert (=> b!5229443 m!6275516))

(assert (=> b!5229440 m!6275500))

(declare-fun m!6275518 () Bool)

(assert (=> bm!369702 m!6275518))

(declare-fun m!6275520 () Bool)

(assert (=> bm!369703 m!6275520))

(assert (=> b!5229188 d!1685770))

(declare-fun d!1685776 () Bool)

(declare-fun lt!2145036 () Int)

(assert (=> d!1685776 (>= lt!2145036 0)))

(declare-fun e!3254489 () Int)

(assert (=> d!1685776 (= lt!2145036 e!3254489)))

(declare-fun c!903072 () Bool)

(assert (=> d!1685776 (= c!903072 ((_ is Cons!60639) zl!343))))

(assert (=> d!1685776 (= (zipperDepthTotal!2 zl!343) lt!2145036)))

(declare-fun b!5229482 () Bool)

(declare-fun contextDepthTotal!2 (Context!8410) Int)

(assert (=> b!5229482 (= e!3254489 (+ (contextDepthTotal!2 (h!67087 zl!343)) (zipperDepthTotal!2 (t!373940 zl!343))))))

(declare-fun b!5229483 () Bool)

(assert (=> b!5229483 (= e!3254489 0)))

(assert (= (and d!1685776 c!903072) b!5229482))

(assert (= (and d!1685776 (not c!903072)) b!5229483))

(declare-fun m!6275542 () Bool)

(assert (=> b!5229482 m!6275542))

(declare-fun m!6275546 () Bool)

(assert (=> b!5229482 m!6275546))

(assert (=> b!5229207 d!1685776))

(declare-fun d!1685790 () Bool)

(declare-fun lt!2145038 () Int)

(assert (=> d!1685790 (>= lt!2145038 0)))

(declare-fun e!3254492 () Int)

(assert (=> d!1685790 (= lt!2145038 e!3254492)))

(declare-fun c!903074 () Bool)

(assert (=> d!1685790 (= c!903074 ((_ is Cons!60639) (Cons!60639 lt!2144990 Nil!60639)))))

(assert (=> d!1685790 (= (zipperDepthTotal!2 (Cons!60639 lt!2144990 Nil!60639)) lt!2145038)))

(declare-fun b!5229487 () Bool)

(assert (=> b!5229487 (= e!3254492 (+ (contextDepthTotal!2 (h!67087 (Cons!60639 lt!2144990 Nil!60639))) (zipperDepthTotal!2 (t!373940 (Cons!60639 lt!2144990 Nil!60639)))))))

(declare-fun b!5229488 () Bool)

(assert (=> b!5229488 (= e!3254492 0)))

(assert (= (and d!1685790 c!903074) b!5229487))

(assert (= (and d!1685790 (not c!903074)) b!5229488))

(declare-fun m!6275556 () Bool)

(assert (=> b!5229487 m!6275556))

(declare-fun m!6275558 () Bool)

(assert (=> b!5229487 m!6275558))

(assert (=> b!5229207 d!1685790))

(declare-fun d!1685796 () Bool)

(declare-fun c!903083 () Bool)

(declare-fun isEmpty!32567 (List!60764) Bool)

(assert (=> d!1685796 (= c!903083 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254503 () Bool)

(assert (=> d!1685796 (= (matchZipper!1065 lt!2144967 (t!373941 s!2326)) e!3254503)))

(declare-fun b!5229507 () Bool)

(declare-fun nullableZipper!1244 ((InoxSet Context!8410)) Bool)

(assert (=> b!5229507 (= e!3254503 (nullableZipper!1244 lt!2144967))))

(declare-fun b!5229508 () Bool)

(declare-fun derivationStepZipper!1088 ((InoxSet Context!8410) C!29912) (InoxSet Context!8410))

(declare-fun head!11207 (List!60764) C!29912)

(declare-fun tail!10304 (List!60764) List!60764)

(assert (=> b!5229508 (= e!3254503 (matchZipper!1065 (derivationStepZipper!1088 lt!2144967 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685796 c!903083) b!5229507))

(assert (= (and d!1685796 (not c!903083)) b!5229508))

(declare-fun m!6275598 () Bool)

(assert (=> d!1685796 m!6275598))

(declare-fun m!6275600 () Bool)

(assert (=> b!5229507 m!6275600))

(declare-fun m!6275602 () Bool)

(assert (=> b!5229508 m!6275602))

(assert (=> b!5229508 m!6275602))

(declare-fun m!6275604 () Bool)

(assert (=> b!5229508 m!6275604))

(declare-fun m!6275606 () Bool)

(assert (=> b!5229508 m!6275606))

(assert (=> b!5229508 m!6275604))

(assert (=> b!5229508 m!6275606))

(declare-fun m!6275608 () Bool)

(assert (=> b!5229508 m!6275608))

(assert (=> b!5229187 d!1685796))

(declare-fun bs!1213946 () Bool)

(declare-fun d!1685816 () Bool)

(assert (= bs!1213946 (and d!1685816 b!5229197)))

(declare-fun lambda!262672 () Int)

(assert (=> bs!1213946 (= lambda!262672 lambda!262645)))

(assert (=> d!1685816 (= (inv!80299 (h!67087 zl!343)) (forall!14253 (exprs!4705 (h!67087 zl!343)) lambda!262672))))

(declare-fun bs!1213947 () Bool)

(assert (= bs!1213947 d!1685816))

(declare-fun m!6275610 () Bool)

(assert (=> bs!1213947 m!6275610))

(assert (=> b!5229205 d!1685816))

(declare-fun d!1685818 () Bool)

(declare-fun c!903092 () Bool)

(assert (=> d!1685818 (= c!903092 (isEmpty!32567 s!2326))))

(declare-fun e!3254520 () Bool)

(assert (=> d!1685818 (= (matchZipper!1065 lt!2144969 s!2326) e!3254520)))

(declare-fun b!5229537 () Bool)

(assert (=> b!5229537 (= e!3254520 (nullableZipper!1244 lt!2144969))))

(declare-fun b!5229538 () Bool)

(assert (=> b!5229538 (= e!3254520 (matchZipper!1065 (derivationStepZipper!1088 lt!2144969 (head!11207 s!2326)) (tail!10304 s!2326)))))

(assert (= (and d!1685818 c!903092) b!5229537))

(assert (= (and d!1685818 (not c!903092)) b!5229538))

(declare-fun m!6275612 () Bool)

(assert (=> d!1685818 m!6275612))

(declare-fun m!6275614 () Bool)

(assert (=> b!5229537 m!6275614))

(declare-fun m!6275616 () Bool)

(assert (=> b!5229538 m!6275616))

(assert (=> b!5229538 m!6275616))

(declare-fun m!6275618 () Bool)

(assert (=> b!5229538 m!6275618))

(declare-fun m!6275620 () Bool)

(assert (=> b!5229538 m!6275620))

(assert (=> b!5229538 m!6275618))

(assert (=> b!5229538 m!6275620))

(declare-fun m!6275622 () Bool)

(assert (=> b!5229538 m!6275622))

(assert (=> b!5229204 d!1685818))

(declare-fun d!1685820 () Bool)

(declare-fun lt!2145043 () Regex!14821)

(assert (=> d!1685820 (validRegex!6557 lt!2145043)))

(assert (=> d!1685820 (= lt!2145043 (generalisedUnion!750 (unfocusZipperList!263 zl!343)))))

(assert (=> d!1685820 (= (unfocusZipper!563 zl!343) lt!2145043)))

(declare-fun bs!1213948 () Bool)

(assert (= bs!1213948 d!1685820))

(declare-fun m!6275624 () Bool)

(assert (=> bs!1213948 m!6275624))

(assert (=> bs!1213948 m!6275194))

(assert (=> bs!1213948 m!6275194))

(assert (=> bs!1213948 m!6275196))

(assert (=> b!5229184 d!1685820))

(declare-fun d!1685822 () Bool)

(declare-fun dynLambda!23962 (Int Context!8410) (InoxSet Context!8410))

(assert (=> d!1685822 (= (flatMap!548 z!1189 lambda!262644) (dynLambda!23962 lambda!262644 (h!67087 zl!343)))))

(declare-fun lt!2145046 () Unit!152582)

(declare-fun choose!38896 ((InoxSet Context!8410) Context!8410 Int) Unit!152582)

(assert (=> d!1685822 (= lt!2145046 (choose!38896 z!1189 (h!67087 zl!343) lambda!262644))))

(assert (=> d!1685822 (= z!1189 (store ((as const (Array Context!8410 Bool)) false) (h!67087 zl!343) true))))

(assert (=> d!1685822 (= (lemmaFlatMapOnSingletonSet!80 z!1189 (h!67087 zl!343) lambda!262644) lt!2145046)))

(declare-fun b_lambda!202179 () Bool)

(assert (=> (not b_lambda!202179) (not d!1685822)))

(declare-fun bs!1213956 () Bool)

(assert (= bs!1213956 d!1685822))

(assert (=> bs!1213956 m!6275284))

(declare-fun m!6275632 () Bool)

(assert (=> bs!1213956 m!6275632))

(declare-fun m!6275634 () Bool)

(assert (=> bs!1213956 m!6275634))

(declare-fun m!6275636 () Bool)

(assert (=> bs!1213956 m!6275636))

(assert (=> b!5229203 d!1685822))

(declare-fun d!1685826 () Bool)

(declare-fun nullableFct!1396 (Regex!14821) Bool)

(assert (=> d!1685826 (= (nullable!4990 (h!67086 (exprs!4705 (h!67087 zl!343)))) (nullableFct!1396 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun bs!1213957 () Bool)

(assert (= bs!1213957 d!1685826))

(declare-fun m!6275638 () Bool)

(assert (=> bs!1213957 m!6275638))

(assert (=> b!5229203 d!1685826))

(declare-fun b!5229592 () Bool)

(declare-fun e!3254550 () Bool)

(assert (=> b!5229592 (= e!3254550 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun e!3254551 () (InoxSet Context!8410))

(declare-fun b!5229593 () Bool)

(declare-fun call!369734 () (InoxSet Context!8410))

(assert (=> b!5229593 (= e!3254551 ((_ map or) call!369734 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326))))))

(declare-fun b!5229594 () Bool)

(declare-fun e!3254552 () (InoxSet Context!8410))

(assert (=> b!5229594 (= e!3254551 e!3254552)))

(declare-fun c!903108 () Bool)

(assert (=> b!5229594 (= c!903108 ((_ is Cons!60638) (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))

(declare-fun d!1685828 () Bool)

(declare-fun c!903107 () Bool)

(assert (=> d!1685828 (= c!903107 e!3254550)))

(declare-fun res!2219970 () Bool)

(assert (=> d!1685828 (=> (not res!2219970) (not e!3254550))))

(assert (=> d!1685828 (= res!2219970 ((_ is Cons!60638) (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))

(assert (=> d!1685828 (= (derivationStepZipperUp!193 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))) (h!67088 s!2326)) e!3254551)))

(declare-fun b!5229595 () Bool)

(assert (=> b!5229595 (= e!3254552 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5229596 () Bool)

(assert (=> b!5229596 (= e!3254552 call!369734)))

(declare-fun bm!369729 () Bool)

(assert (=> bm!369729 (= call!369734 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326)))))

(assert (= (and d!1685828 res!2219970) b!5229592))

(assert (= (and d!1685828 c!903107) b!5229593))

(assert (= (and d!1685828 (not c!903107)) b!5229594))

(assert (= (and b!5229594 c!903108) b!5229596))

(assert (= (and b!5229594 (not c!903108)) b!5229595))

(assert (= (or b!5229593 b!5229596) bm!369729))

(declare-fun m!6275640 () Bool)

(assert (=> b!5229592 m!6275640))

(declare-fun m!6275642 () Bool)

(assert (=> b!5229593 m!6275642))

(declare-fun m!6275644 () Bool)

(assert (=> bm!369729 m!6275644))

(assert (=> b!5229203 d!1685828))

(declare-fun b!5229611 () Bool)

(declare-fun e!3254560 () Bool)

(assert (=> b!5229611 (= e!3254560 (nullable!4990 (h!67086 (exprs!4705 lt!2144978))))))

(declare-fun b!5229612 () Bool)

(declare-fun call!369736 () (InoxSet Context!8410))

(declare-fun e!3254561 () (InoxSet Context!8410))

(assert (=> b!5229612 (= e!3254561 ((_ map or) call!369736 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (h!67088 s!2326))))))

(declare-fun b!5229613 () Bool)

(declare-fun e!3254562 () (InoxSet Context!8410))

(assert (=> b!5229613 (= e!3254561 e!3254562)))

(declare-fun c!903113 () Bool)

(assert (=> b!5229613 (= c!903113 ((_ is Cons!60638) (exprs!4705 lt!2144978)))))

(declare-fun d!1685830 () Bool)

(declare-fun c!903112 () Bool)

(assert (=> d!1685830 (= c!903112 e!3254560)))

(declare-fun res!2219979 () Bool)

(assert (=> d!1685830 (=> (not res!2219979) (not e!3254560))))

(assert (=> d!1685830 (= res!2219979 ((_ is Cons!60638) (exprs!4705 lt!2144978)))))

(assert (=> d!1685830 (= (derivationStepZipperUp!193 lt!2144978 (h!67088 s!2326)) e!3254561)))

(declare-fun b!5229614 () Bool)

(assert (=> b!5229614 (= e!3254562 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5229615 () Bool)

(assert (=> b!5229615 (= e!3254562 call!369736)))

(declare-fun bm!369731 () Bool)

(assert (=> bm!369731 (= call!369736 (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144978)) (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (h!67088 s!2326)))))

(assert (= (and d!1685830 res!2219979) b!5229611))

(assert (= (and d!1685830 c!903112) b!5229612))

(assert (= (and d!1685830 (not c!903112)) b!5229613))

(assert (= (and b!5229613 c!903113) b!5229615))

(assert (= (and b!5229613 (not c!903113)) b!5229614))

(assert (= (or b!5229612 b!5229615) bm!369731))

(declare-fun m!6275654 () Bool)

(assert (=> b!5229611 m!6275654))

(declare-fun m!6275656 () Bool)

(assert (=> b!5229612 m!6275656))

(declare-fun m!6275658 () Bool)

(assert (=> bm!369731 m!6275658))

(assert (=> b!5229203 d!1685830))

(declare-fun d!1685834 () Bool)

(declare-fun choose!38897 ((InoxSet Context!8410) Int) (InoxSet Context!8410))

(assert (=> d!1685834 (= (flatMap!548 z!1189 lambda!262644) (choose!38897 z!1189 lambda!262644))))

(declare-fun bs!1213958 () Bool)

(assert (= bs!1213958 d!1685834))

(declare-fun m!6275660 () Bool)

(assert (=> bs!1213958 m!6275660))

(assert (=> b!5229203 d!1685834))

(declare-fun bm!369732 () Bool)

(declare-fun call!369740 () (InoxSet Context!8410))

(declare-fun call!369741 () (InoxSet Context!8410))

(assert (=> bm!369732 (= call!369740 call!369741)))

(declare-fun b!5229616 () Bool)

(declare-fun e!3254566 () (InoxSet Context!8410))

(declare-fun call!369737 () (InoxSet Context!8410))

(assert (=> b!5229616 (= e!3254566 ((_ map or) call!369737 call!369741))))

(declare-fun b!5229617 () Bool)

(declare-fun c!903118 () Bool)

(declare-fun e!3254567 () Bool)

(assert (=> b!5229617 (= c!903118 e!3254567)))

(declare-fun res!2219980 () Bool)

(assert (=> b!5229617 (=> (not res!2219980) (not e!3254567))))

(assert (=> b!5229617 (= res!2219980 ((_ is Concat!23666) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun e!3254564 () (InoxSet Context!8410))

(assert (=> b!5229617 (= e!3254564 e!3254566)))

(declare-fun b!5229618 () Bool)

(declare-fun e!3254565 () (InoxSet Context!8410))

(assert (=> b!5229618 (= e!3254565 call!369740)))

(declare-fun call!369742 () List!60762)

(declare-fun c!903116 () Bool)

(declare-fun bm!369733 () Bool)

(assert (=> bm!369733 (= call!369737 (derivationStepZipperDown!269 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))) (ite c!903116 lt!2144978 (Context!8411 call!369742)) (h!67088 s!2326)))))

(declare-fun bm!369734 () Bool)

(declare-fun call!369739 () (InoxSet Context!8410))

(assert (=> bm!369734 (= call!369741 call!369739)))

(declare-fun bm!369735 () Bool)

(declare-fun c!903114 () Bool)

(assert (=> bm!369735 (= call!369742 ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903118 c!903114) (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67086 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5229619 () Bool)

(declare-fun e!3254568 () (InoxSet Context!8410))

(assert (=> b!5229619 (= e!3254568 (store ((as const (Array Context!8410 Bool)) false) lt!2144978 true))))

(declare-fun b!5229620 () Bool)

(assert (=> b!5229620 (= e!3254566 e!3254565)))

(assert (=> b!5229620 (= c!903114 ((_ is Concat!23666) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229621 () Bool)

(declare-fun e!3254563 () (InoxSet Context!8410))

(assert (=> b!5229621 (= e!3254563 call!369740)))

(declare-fun call!369738 () List!60762)

(declare-fun bm!369736 () Bool)

(assert (=> bm!369736 (= call!369739 (derivationStepZipperDown!269 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))) (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738)) (h!67088 s!2326)))))

(declare-fun b!5229622 () Bool)

(assert (=> b!5229622 (= e!3254567 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5229624 () Bool)

(declare-fun c!903117 () Bool)

(assert (=> b!5229624 (= c!903117 ((_ is Star!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> b!5229624 (= e!3254565 e!3254563)))

(declare-fun b!5229625 () Bool)

(assert (=> b!5229625 (= e!3254568 e!3254564)))

(assert (=> b!5229625 (= c!903116 ((_ is Union!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun bm!369737 () Bool)

(assert (=> bm!369737 (= call!369738 call!369742)))

(declare-fun b!5229626 () Bool)

(assert (=> b!5229626 (= e!3254563 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1685836 () Bool)

(declare-fun c!903115 () Bool)

(assert (=> d!1685836 (= c!903115 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))) (= (c!902967 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326))))))

(assert (=> d!1685836 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 (h!67087 zl!343))) lt!2144978 (h!67088 s!2326)) e!3254568)))

(declare-fun b!5229623 () Bool)

(assert (=> b!5229623 (= e!3254564 ((_ map or) call!369737 call!369739))))

(assert (= (and d!1685836 c!903115) b!5229619))

(assert (= (and d!1685836 (not c!903115)) b!5229625))

(assert (= (and b!5229625 c!903116) b!5229623))

(assert (= (and b!5229625 (not c!903116)) b!5229617))

(assert (= (and b!5229617 res!2219980) b!5229622))

(assert (= (and b!5229617 c!903118) b!5229616))

(assert (= (and b!5229617 (not c!903118)) b!5229620))

(assert (= (and b!5229620 c!903114) b!5229618))

(assert (= (and b!5229620 (not c!903114)) b!5229624))

(assert (= (and b!5229624 c!903117) b!5229621))

(assert (= (and b!5229624 (not c!903117)) b!5229626))

(assert (= (or b!5229618 b!5229621) bm!369737))

(assert (= (or b!5229618 b!5229621) bm!369732))

(assert (= (or b!5229616 bm!369737) bm!369735))

(assert (= (or b!5229616 bm!369732) bm!369734))

(assert (= (or b!5229623 bm!369734) bm!369736))

(assert (= (or b!5229623 b!5229616) bm!369733))

(declare-fun m!6275664 () Bool)

(assert (=> bm!369733 m!6275664))

(declare-fun m!6275666 () Bool)

(assert (=> b!5229622 m!6275666))

(assert (=> b!5229619 m!6275500))

(declare-fun m!6275668 () Bool)

(assert (=> bm!369735 m!6275668))

(declare-fun m!6275670 () Bool)

(assert (=> bm!369736 m!6275670))

(assert (=> b!5229203 d!1685836))

(declare-fun b!5229627 () Bool)

(declare-fun e!3254569 () Bool)

(assert (=> b!5229627 (= e!3254569 (nullable!4990 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun call!369743 () (InoxSet Context!8410))

(declare-fun e!3254570 () (InoxSet Context!8410))

(declare-fun b!5229628 () Bool)

(assert (=> b!5229628 (= e!3254570 ((_ map or) call!369743 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326))))))

(declare-fun b!5229629 () Bool)

(declare-fun e!3254571 () (InoxSet Context!8410))

(assert (=> b!5229629 (= e!3254570 e!3254571)))

(declare-fun c!903120 () Bool)

(assert (=> b!5229629 (= c!903120 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343))))))

(declare-fun d!1685840 () Bool)

(declare-fun c!903119 () Bool)

(assert (=> d!1685840 (= c!903119 e!3254569)))

(declare-fun res!2219981 () Bool)

(assert (=> d!1685840 (=> (not res!2219981) (not e!3254569))))

(assert (=> d!1685840 (= res!2219981 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> d!1685840 (= (derivationStepZipperUp!193 (h!67087 zl!343) (h!67088 s!2326)) e!3254570)))

(declare-fun b!5229630 () Bool)

(assert (=> b!5229630 (= e!3254571 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5229631 () Bool)

(assert (=> b!5229631 (= e!3254571 call!369743)))

(declare-fun bm!369738 () Bool)

(assert (=> bm!369738 (= call!369743 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (h!67087 zl!343))) (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326)))))

(assert (= (and d!1685840 res!2219981) b!5229627))

(assert (= (and d!1685840 c!903119) b!5229628))

(assert (= (and d!1685840 (not c!903119)) b!5229629))

(assert (= (and b!5229629 c!903120) b!5229631))

(assert (= (and b!5229629 (not c!903120)) b!5229630))

(assert (= (or b!5229628 b!5229631) bm!369738))

(assert (=> b!5229627 m!6275282))

(declare-fun m!6275672 () Bool)

(assert (=> b!5229628 m!6275672))

(declare-fun m!6275674 () Bool)

(assert (=> bm!369738 m!6275674))

(assert (=> b!5229203 d!1685840))

(declare-fun bs!1213964 () Bool)

(declare-fun b!5229763 () Bool)

(assert (= bs!1213964 (and b!5229763 b!5229208)))

(declare-fun lambda!262681 () Int)

(assert (=> bs!1213964 (not (= lambda!262681 lambda!262642))))

(assert (=> bs!1213964 (not (= lambda!262681 lambda!262643))))

(assert (=> b!5229763 true))

(assert (=> b!5229763 true))

(declare-fun bs!1213965 () Bool)

(declare-fun b!5229760 () Bool)

(assert (= bs!1213965 (and b!5229760 b!5229208)))

(declare-fun lambda!262682 () Int)

(assert (=> bs!1213965 (not (= lambda!262682 lambda!262642))))

(assert (=> bs!1213965 (= lambda!262682 lambda!262643)))

(declare-fun bs!1213966 () Bool)

(assert (= bs!1213966 (and b!5229760 b!5229763)))

(assert (=> bs!1213966 (not (= lambda!262682 lambda!262681))))

(assert (=> b!5229760 true))

(assert (=> b!5229760 true))

(declare-fun b!5229756 () Bool)

(declare-fun e!3254648 () Bool)

(assert (=> b!5229756 (= e!3254648 (matchRSpec!1924 (regTwo!30155 r!7292) s!2326))))

(declare-fun b!5229757 () Bool)

(declare-fun c!903138 () Bool)

(assert (=> b!5229757 (= c!903138 ((_ is ElementMatch!14821) r!7292))))

(declare-fun e!3254645 () Bool)

(declare-fun e!3254647 () Bool)

(assert (=> b!5229757 (= e!3254645 e!3254647)))

(declare-fun b!5229758 () Bool)

(declare-fun e!3254649 () Bool)

(assert (=> b!5229758 (= e!3254649 e!3254648)))

(declare-fun res!2220024 () Bool)

(assert (=> b!5229758 (= res!2220024 (matchRSpec!1924 (regOne!30155 r!7292) s!2326))))

(assert (=> b!5229758 (=> res!2220024 e!3254648)))

(declare-fun call!369758 () Bool)

(declare-fun bm!369752 () Bool)

(declare-fun c!903137 () Bool)

(assert (=> bm!369752 (= call!369758 (Exists!2002 (ite c!903137 lambda!262681 lambda!262682)))))

(declare-fun b!5229759 () Bool)

(declare-fun e!3254644 () Bool)

(declare-fun call!369757 () Bool)

(assert (=> b!5229759 (= e!3254644 call!369757)))

(declare-fun e!3254650 () Bool)

(assert (=> b!5229760 (= e!3254650 call!369758)))

(declare-fun d!1685842 () Bool)

(declare-fun c!903139 () Bool)

(assert (=> d!1685842 (= c!903139 ((_ is EmptyExpr!14821) r!7292))))

(assert (=> d!1685842 (= (matchRSpec!1924 r!7292 s!2326) e!3254644)))

(declare-fun b!5229761 () Bool)

(declare-fun c!903136 () Bool)

(assert (=> b!5229761 (= c!903136 ((_ is Union!14821) r!7292))))

(assert (=> b!5229761 (= e!3254647 e!3254649)))

(declare-fun b!5229762 () Bool)

(assert (=> b!5229762 (= e!3254647 (= s!2326 (Cons!60640 (c!902967 r!7292) Nil!60640)))))

(declare-fun e!3254646 () Bool)

(assert (=> b!5229763 (= e!3254646 call!369758)))

(declare-fun b!5229764 () Bool)

(declare-fun res!2220022 () Bool)

(assert (=> b!5229764 (=> res!2220022 e!3254646)))

(assert (=> b!5229764 (= res!2220022 call!369757)))

(assert (=> b!5229764 (= e!3254650 e!3254646)))

(declare-fun bm!369753 () Bool)

(assert (=> bm!369753 (= call!369757 (isEmpty!32567 s!2326))))

(declare-fun b!5229765 () Bool)

(assert (=> b!5229765 (= e!3254644 e!3254645)))

(declare-fun res!2220023 () Bool)

(assert (=> b!5229765 (= res!2220023 (not ((_ is EmptyLang!14821) r!7292)))))

(assert (=> b!5229765 (=> (not res!2220023) (not e!3254645))))

(declare-fun b!5229766 () Bool)

(assert (=> b!5229766 (= e!3254649 e!3254650)))

(assert (=> b!5229766 (= c!903137 ((_ is Star!14821) r!7292))))

(assert (= (and d!1685842 c!903139) b!5229759))

(assert (= (and d!1685842 (not c!903139)) b!5229765))

(assert (= (and b!5229765 res!2220023) b!5229757))

(assert (= (and b!5229757 c!903138) b!5229762))

(assert (= (and b!5229757 (not c!903138)) b!5229761))

(assert (= (and b!5229761 c!903136) b!5229758))

(assert (= (and b!5229761 (not c!903136)) b!5229766))

(assert (= (and b!5229758 (not res!2220024)) b!5229756))

(assert (= (and b!5229766 c!903137) b!5229764))

(assert (= (and b!5229766 (not c!903137)) b!5229760))

(assert (= (and b!5229764 (not res!2220022)) b!5229763))

(assert (= (or b!5229763 b!5229760) bm!369752))

(assert (= (or b!5229759 b!5229764) bm!369753))

(declare-fun m!6275702 () Bool)

(assert (=> b!5229756 m!6275702))

(declare-fun m!6275704 () Bool)

(assert (=> b!5229758 m!6275704))

(declare-fun m!6275706 () Bool)

(assert (=> bm!369752 m!6275706))

(assert (=> bm!369753 m!6275612))

(assert (=> b!5229172 d!1685842))

(declare-fun b!5229795 () Bool)

(declare-fun e!3254666 () Bool)

(assert (=> b!5229795 (= e!3254666 (= (head!11207 s!2326) (c!902967 r!7292)))))

(declare-fun b!5229796 () Bool)

(declare-fun e!3254669 () Bool)

(declare-fun e!3254665 () Bool)

(assert (=> b!5229796 (= e!3254669 e!3254665)))

(declare-fun res!2220042 () Bool)

(assert (=> b!5229796 (=> (not res!2220042) (not e!3254665))))

(declare-fun lt!2145059 () Bool)

(assert (=> b!5229796 (= res!2220042 (not lt!2145059))))

(declare-fun b!5229797 () Bool)

(declare-fun e!3254671 () Bool)

(declare-fun call!369761 () Bool)

(assert (=> b!5229797 (= e!3254671 (= lt!2145059 call!369761))))

(declare-fun bm!369756 () Bool)

(assert (=> bm!369756 (= call!369761 (isEmpty!32567 s!2326))))

(declare-fun b!5229798 () Bool)

(declare-fun res!2220043 () Bool)

(assert (=> b!5229798 (=> res!2220043 e!3254669)))

(assert (=> b!5229798 (= res!2220043 e!3254666)))

(declare-fun res!2220041 () Bool)

(assert (=> b!5229798 (=> (not res!2220041) (not e!3254666))))

(assert (=> b!5229798 (= res!2220041 lt!2145059)))

(declare-fun b!5229799 () Bool)

(declare-fun e!3254670 () Bool)

(assert (=> b!5229799 (= e!3254670 (not lt!2145059))))

(declare-fun b!5229800 () Bool)

(declare-fun e!3254668 () Bool)

(assert (=> b!5229800 (= e!3254665 e!3254668)))

(declare-fun res!2220046 () Bool)

(assert (=> b!5229800 (=> res!2220046 e!3254668)))

(assert (=> b!5229800 (= res!2220046 call!369761)))

(declare-fun b!5229801 () Bool)

(declare-fun res!2220048 () Bool)

(assert (=> b!5229801 (=> (not res!2220048) (not e!3254666))))

(assert (=> b!5229801 (= res!2220048 (not call!369761))))

(declare-fun d!1685860 () Bool)

(assert (=> d!1685860 e!3254671))

(declare-fun c!903146 () Bool)

(assert (=> d!1685860 (= c!903146 ((_ is EmptyExpr!14821) r!7292))))

(declare-fun e!3254667 () Bool)

(assert (=> d!1685860 (= lt!2145059 e!3254667)))

(declare-fun c!903148 () Bool)

(assert (=> d!1685860 (= c!903148 (isEmpty!32567 s!2326))))

(assert (=> d!1685860 (validRegex!6557 r!7292)))

(assert (=> d!1685860 (= (matchR!7006 r!7292 s!2326) lt!2145059)))

(declare-fun b!5229802 () Bool)

(assert (=> b!5229802 (= e!3254667 (nullable!4990 r!7292))))

(declare-fun b!5229803 () Bool)

(assert (=> b!5229803 (= e!3254671 e!3254670)))

(declare-fun c!903147 () Bool)

(assert (=> b!5229803 (= c!903147 ((_ is EmptyLang!14821) r!7292))))

(declare-fun b!5229804 () Bool)

(declare-fun res!2220044 () Bool)

(assert (=> b!5229804 (=> (not res!2220044) (not e!3254666))))

(assert (=> b!5229804 (= res!2220044 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun b!5229805 () Bool)

(declare-fun res!2220047 () Bool)

(assert (=> b!5229805 (=> res!2220047 e!3254668)))

(assert (=> b!5229805 (= res!2220047 (not (isEmpty!32567 (tail!10304 s!2326))))))

(declare-fun b!5229806 () Bool)

(assert (=> b!5229806 (= e!3254668 (not (= (head!11207 s!2326) (c!902967 r!7292))))))

(declare-fun b!5229807 () Bool)

(declare-fun res!2220045 () Bool)

(assert (=> b!5229807 (=> res!2220045 e!3254669)))

(assert (=> b!5229807 (= res!2220045 (not ((_ is ElementMatch!14821) r!7292)))))

(assert (=> b!5229807 (= e!3254670 e!3254669)))

(declare-fun b!5229808 () Bool)

(declare-fun derivativeStep!4066 (Regex!14821 C!29912) Regex!14821)

(assert (=> b!5229808 (= e!3254667 (matchR!7006 (derivativeStep!4066 r!7292 (head!11207 s!2326)) (tail!10304 s!2326)))))

(assert (= (and d!1685860 c!903148) b!5229802))

(assert (= (and d!1685860 (not c!903148)) b!5229808))

(assert (= (and d!1685860 c!903146) b!5229797))

(assert (= (and d!1685860 (not c!903146)) b!5229803))

(assert (= (and b!5229803 c!903147) b!5229799))

(assert (= (and b!5229803 (not c!903147)) b!5229807))

(assert (= (and b!5229807 (not res!2220045)) b!5229798))

(assert (= (and b!5229798 res!2220041) b!5229801))

(assert (= (and b!5229801 res!2220048) b!5229804))

(assert (= (and b!5229804 res!2220044) b!5229795))

(assert (= (and b!5229798 (not res!2220043)) b!5229796))

(assert (= (and b!5229796 res!2220042) b!5229800))

(assert (= (and b!5229800 (not res!2220046)) b!5229805))

(assert (= (and b!5229805 (not res!2220047)) b!5229806))

(assert (= (or b!5229797 b!5229800 b!5229801) bm!369756))

(assert (=> b!5229808 m!6275616))

(assert (=> b!5229808 m!6275616))

(declare-fun m!6275708 () Bool)

(assert (=> b!5229808 m!6275708))

(assert (=> b!5229808 m!6275620))

(assert (=> b!5229808 m!6275708))

(assert (=> b!5229808 m!6275620))

(declare-fun m!6275710 () Bool)

(assert (=> b!5229808 m!6275710))

(assert (=> b!5229804 m!6275620))

(assert (=> b!5229804 m!6275620))

(declare-fun m!6275712 () Bool)

(assert (=> b!5229804 m!6275712))

(assert (=> b!5229806 m!6275616))

(assert (=> d!1685860 m!6275612))

(assert (=> d!1685860 m!6275306))

(assert (=> b!5229805 m!6275620))

(assert (=> b!5229805 m!6275620))

(assert (=> b!5229805 m!6275712))

(assert (=> b!5229795 m!6275616))

(assert (=> bm!369756 m!6275612))

(declare-fun m!6275714 () Bool)

(assert (=> b!5229802 m!6275714))

(assert (=> b!5229172 d!1685860))

(declare-fun d!1685862 () Bool)

(assert (=> d!1685862 (= (matchR!7006 r!7292 s!2326) (matchRSpec!1924 r!7292 s!2326))))

(declare-fun lt!2145062 () Unit!152582)

(declare-fun choose!38900 (Regex!14821 List!60764) Unit!152582)

(assert (=> d!1685862 (= lt!2145062 (choose!38900 r!7292 s!2326))))

(assert (=> d!1685862 (validRegex!6557 r!7292)))

(assert (=> d!1685862 (= (mainMatchTheorem!1924 r!7292 s!2326) lt!2145062)))

(declare-fun bs!1213967 () Bool)

(assert (= bs!1213967 d!1685862))

(assert (=> bs!1213967 m!6275226))

(assert (=> bs!1213967 m!6275224))

(declare-fun m!6275716 () Bool)

(assert (=> bs!1213967 m!6275716))

(assert (=> bs!1213967 m!6275306))

(assert (=> b!5229172 d!1685862))

(declare-fun d!1685864 () Bool)

(declare-fun e!3254674 () Bool)

(assert (=> d!1685864 (= (matchZipper!1065 ((_ map or) lt!2144993 lt!2144967) (t!373941 s!2326)) e!3254674)))

(declare-fun res!2220051 () Bool)

(assert (=> d!1685864 (=> res!2220051 e!3254674)))

(assert (=> d!1685864 (= res!2220051 (matchZipper!1065 lt!2144993 (t!373941 s!2326)))))

(declare-fun lt!2145065 () Unit!152582)

(declare-fun choose!38901 ((InoxSet Context!8410) (InoxSet Context!8410) List!60764) Unit!152582)

(assert (=> d!1685864 (= lt!2145065 (choose!38901 lt!2144993 lt!2144967 (t!373941 s!2326)))))

(assert (=> d!1685864 (= (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144993 lt!2144967 (t!373941 s!2326)) lt!2145065)))

(declare-fun b!5229811 () Bool)

(assert (=> b!5229811 (= e!3254674 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1685864 (not res!2220051)) b!5229811))

(assert (=> d!1685864 m!6275266))

(assert (=> d!1685864 m!6275204))

(declare-fun m!6275718 () Bool)

(assert (=> d!1685864 m!6275718))

(assert (=> b!5229811 m!6275268))

(assert (=> b!5229193 d!1685864))

(declare-fun d!1685866 () Bool)

(declare-fun c!903149 () Bool)

(assert (=> d!1685866 (= c!903149 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254675 () Bool)

(assert (=> d!1685866 (= (matchZipper!1065 lt!2144993 (t!373941 s!2326)) e!3254675)))

(declare-fun b!5229812 () Bool)

(assert (=> b!5229812 (= e!3254675 (nullableZipper!1244 lt!2144993))))

(declare-fun b!5229813 () Bool)

(assert (=> b!5229813 (= e!3254675 (matchZipper!1065 (derivationStepZipper!1088 lt!2144993 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685866 c!903149) b!5229812))

(assert (= (and d!1685866 (not c!903149)) b!5229813))

(assert (=> d!1685866 m!6275598))

(declare-fun m!6275720 () Bool)

(assert (=> b!5229812 m!6275720))

(assert (=> b!5229813 m!6275602))

(assert (=> b!5229813 m!6275602))

(declare-fun m!6275722 () Bool)

(assert (=> b!5229813 m!6275722))

(assert (=> b!5229813 m!6275606))

(assert (=> b!5229813 m!6275722))

(assert (=> b!5229813 m!6275606))

(declare-fun m!6275724 () Bool)

(assert (=> b!5229813 m!6275724))

(assert (=> b!5229193 d!1685866))

(declare-fun d!1685868 () Bool)

(declare-fun c!903150 () Bool)

(assert (=> d!1685868 (= c!903150 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254676 () Bool)

(assert (=> d!1685868 (= (matchZipper!1065 ((_ map or) lt!2144993 lt!2144967) (t!373941 s!2326)) e!3254676)))

(declare-fun b!5229814 () Bool)

(assert (=> b!5229814 (= e!3254676 (nullableZipper!1244 ((_ map or) lt!2144993 lt!2144967)))))

(declare-fun b!5229815 () Bool)

(assert (=> b!5229815 (= e!3254676 (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144993 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685868 c!903150) b!5229814))

(assert (= (and d!1685868 (not c!903150)) b!5229815))

(assert (=> d!1685868 m!6275598))

(declare-fun m!6275726 () Bool)

(assert (=> b!5229814 m!6275726))

(assert (=> b!5229815 m!6275602))

(assert (=> b!5229815 m!6275602))

(declare-fun m!6275728 () Bool)

(assert (=> b!5229815 m!6275728))

(assert (=> b!5229815 m!6275606))

(assert (=> b!5229815 m!6275728))

(assert (=> b!5229815 m!6275606))

(declare-fun m!6275730 () Bool)

(assert (=> b!5229815 m!6275730))

(assert (=> b!5229193 d!1685868))

(declare-fun b!5229834 () Bool)

(declare-fun e!3254694 () Bool)

(declare-fun call!369769 () Bool)

(assert (=> b!5229834 (= e!3254694 call!369769)))

(declare-fun c!903155 () Bool)

(declare-fun bm!369763 () Bool)

(declare-fun call!369770 () Bool)

(declare-fun c!903156 () Bool)

(assert (=> bm!369763 (= call!369770 (validRegex!6557 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))

(declare-fun b!5229835 () Bool)

(declare-fun e!3254692 () Bool)

(declare-fun e!3254691 () Bool)

(assert (=> b!5229835 (= e!3254692 e!3254691)))

(declare-fun res!2220066 () Bool)

(assert (=> b!5229835 (= res!2220066 (not (nullable!4990 (reg!15150 r!7292))))))

(assert (=> b!5229835 (=> (not res!2220066) (not e!3254691))))

(declare-fun b!5229836 () Bool)

(declare-fun e!3254693 () Bool)

(assert (=> b!5229836 (= e!3254693 e!3254692)))

(assert (=> b!5229836 (= c!903155 ((_ is Star!14821) r!7292))))

(declare-fun b!5229837 () Bool)

(declare-fun res!2220064 () Bool)

(assert (=> b!5229837 (=> (not res!2220064) (not e!3254694))))

(declare-fun call!369768 () Bool)

(assert (=> b!5229837 (= res!2220064 call!369768)))

(declare-fun e!3254697 () Bool)

(assert (=> b!5229837 (= e!3254697 e!3254694)))

(declare-fun bm!369764 () Bool)

(assert (=> bm!369764 (= call!369768 call!369770)))

(declare-fun bm!369765 () Bool)

(assert (=> bm!369765 (= call!369769 (validRegex!6557 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))

(declare-fun b!5229839 () Bool)

(assert (=> b!5229839 (= e!3254692 e!3254697)))

(assert (=> b!5229839 (= c!903156 ((_ is Union!14821) r!7292))))

(declare-fun b!5229840 () Bool)

(assert (=> b!5229840 (= e!3254691 call!369770)))

(declare-fun b!5229841 () Bool)

(declare-fun res!2220063 () Bool)

(declare-fun e!3254695 () Bool)

(assert (=> b!5229841 (=> res!2220063 e!3254695)))

(assert (=> b!5229841 (= res!2220063 (not ((_ is Concat!23666) r!7292)))))

(assert (=> b!5229841 (= e!3254697 e!3254695)))

(declare-fun b!5229842 () Bool)

(declare-fun e!3254696 () Bool)

(assert (=> b!5229842 (= e!3254696 call!369769)))

(declare-fun d!1685870 () Bool)

(declare-fun res!2220062 () Bool)

(assert (=> d!1685870 (=> res!2220062 e!3254693)))

(assert (=> d!1685870 (= res!2220062 ((_ is ElementMatch!14821) r!7292))))

(assert (=> d!1685870 (= (validRegex!6557 r!7292) e!3254693)))

(declare-fun b!5229838 () Bool)

(assert (=> b!5229838 (= e!3254695 e!3254696)))

(declare-fun res!2220065 () Bool)

(assert (=> b!5229838 (=> (not res!2220065) (not e!3254696))))

(assert (=> b!5229838 (= res!2220065 call!369768)))

(assert (= (and d!1685870 (not res!2220062)) b!5229836))

(assert (= (and b!5229836 c!903155) b!5229835))

(assert (= (and b!5229836 (not c!903155)) b!5229839))

(assert (= (and b!5229835 res!2220066) b!5229840))

(assert (= (and b!5229839 c!903156) b!5229837))

(assert (= (and b!5229839 (not c!903156)) b!5229841))

(assert (= (and b!5229837 res!2220064) b!5229834))

(assert (= (and b!5229841 (not res!2220063)) b!5229838))

(assert (= (and b!5229838 res!2220065) b!5229842))

(assert (= (or b!5229834 b!5229842) bm!369765))

(assert (= (or b!5229837 b!5229838) bm!369764))

(assert (= (or b!5229840 bm!369764) bm!369763))

(declare-fun m!6275732 () Bool)

(assert (=> bm!369763 m!6275732))

(declare-fun m!6275734 () Bool)

(assert (=> b!5229835 m!6275734))

(declare-fun m!6275736 () Bool)

(assert (=> bm!369765 m!6275736))

(assert (=> start!552994 d!1685870))

(declare-fun bs!1213968 () Bool)

(declare-fun d!1685872 () Bool)

(assert (= bs!1213968 (and d!1685872 b!5229197)))

(declare-fun lambda!262685 () Int)

(assert (=> bs!1213968 (= lambda!262685 lambda!262645)))

(declare-fun bs!1213969 () Bool)

(assert (= bs!1213969 (and d!1685872 d!1685816)))

(assert (=> bs!1213969 (= lambda!262685 lambda!262672)))

(declare-fun b!5229863 () Bool)

(declare-fun e!3254715 () Bool)

(declare-fun e!3254713 () Bool)

(assert (=> b!5229863 (= e!3254715 e!3254713)))

(declare-fun c!903165 () Bool)

(assert (=> b!5229863 (= c!903165 (isEmpty!32564 (unfocusZipperList!263 zl!343)))))

(declare-fun b!5229864 () Bool)

(declare-fun e!3254710 () Bool)

(declare-fun lt!2145068 () Regex!14821)

(declare-fun isUnion!221 (Regex!14821) Bool)

(assert (=> b!5229864 (= e!3254710 (isUnion!221 lt!2145068))))

(declare-fun b!5229865 () Bool)

(declare-fun e!3254714 () Regex!14821)

(declare-fun e!3254711 () Regex!14821)

(assert (=> b!5229865 (= e!3254714 e!3254711)))

(declare-fun c!903166 () Bool)

(assert (=> b!5229865 (= c!903166 ((_ is Cons!60638) (unfocusZipperList!263 zl!343)))))

(declare-fun b!5229867 () Bool)

(assert (=> b!5229867 (= e!3254714 (h!67086 (unfocusZipperList!263 zl!343)))))

(declare-fun b!5229868 () Bool)

(assert (=> b!5229868 (= e!3254713 e!3254710)))

(declare-fun c!903167 () Bool)

(declare-fun tail!10305 (List!60762) List!60762)

(assert (=> b!5229868 (= c!903167 (isEmpty!32564 (tail!10305 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5229869 () Bool)

(assert (=> b!5229869 (= e!3254711 (Union!14821 (h!67086 (unfocusZipperList!263 zl!343)) (generalisedUnion!750 (t!373939 (unfocusZipperList!263 zl!343)))))))

(declare-fun b!5229870 () Bool)

(assert (=> b!5229870 (= e!3254711 EmptyLang!14821)))

(declare-fun b!5229871 () Bool)

(declare-fun e!3254712 () Bool)

(assert (=> b!5229871 (= e!3254712 (isEmpty!32564 (t!373939 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5229872 () Bool)

(declare-fun isEmptyLang!789 (Regex!14821) Bool)

(assert (=> b!5229872 (= e!3254713 (isEmptyLang!789 lt!2145068))))

(assert (=> d!1685872 e!3254715))

(declare-fun res!2220072 () Bool)

(assert (=> d!1685872 (=> (not res!2220072) (not e!3254715))))

(assert (=> d!1685872 (= res!2220072 (validRegex!6557 lt!2145068))))

(assert (=> d!1685872 (= lt!2145068 e!3254714)))

(declare-fun c!903168 () Bool)

(assert (=> d!1685872 (= c!903168 e!3254712)))

(declare-fun res!2220071 () Bool)

(assert (=> d!1685872 (=> (not res!2220071) (not e!3254712))))

(assert (=> d!1685872 (= res!2220071 ((_ is Cons!60638) (unfocusZipperList!263 zl!343)))))

(assert (=> d!1685872 (forall!14253 (unfocusZipperList!263 zl!343) lambda!262685)))

(assert (=> d!1685872 (= (generalisedUnion!750 (unfocusZipperList!263 zl!343)) lt!2145068)))

(declare-fun b!5229866 () Bool)

(declare-fun head!11208 (List!60762) Regex!14821)

(assert (=> b!5229866 (= e!3254710 (= lt!2145068 (head!11208 (unfocusZipperList!263 zl!343))))))

(assert (= (and d!1685872 res!2220071) b!5229871))

(assert (= (and d!1685872 c!903168) b!5229867))

(assert (= (and d!1685872 (not c!903168)) b!5229865))

(assert (= (and b!5229865 c!903166) b!5229869))

(assert (= (and b!5229865 (not c!903166)) b!5229870))

(assert (= (and d!1685872 res!2220072) b!5229863))

(assert (= (and b!5229863 c!903165) b!5229872))

(assert (= (and b!5229863 (not c!903165)) b!5229868))

(assert (= (and b!5229868 c!903167) b!5229866))

(assert (= (and b!5229868 (not c!903167)) b!5229864))

(declare-fun m!6275738 () Bool)

(assert (=> b!5229872 m!6275738))

(assert (=> b!5229866 m!6275194))

(declare-fun m!6275740 () Bool)

(assert (=> b!5229866 m!6275740))

(assert (=> b!5229863 m!6275194))

(declare-fun m!6275742 () Bool)

(assert (=> b!5229863 m!6275742))

(declare-fun m!6275744 () Bool)

(assert (=> b!5229871 m!6275744))

(declare-fun m!6275746 () Bool)

(assert (=> b!5229869 m!6275746))

(declare-fun m!6275748 () Bool)

(assert (=> b!5229864 m!6275748))

(declare-fun m!6275750 () Bool)

(assert (=> d!1685872 m!6275750))

(assert (=> d!1685872 m!6275194))

(declare-fun m!6275752 () Bool)

(assert (=> d!1685872 m!6275752))

(assert (=> b!5229868 m!6275194))

(declare-fun m!6275754 () Bool)

(assert (=> b!5229868 m!6275754))

(assert (=> b!5229868 m!6275754))

(declare-fun m!6275756 () Bool)

(assert (=> b!5229868 m!6275756))

(assert (=> b!5229191 d!1685872))

(declare-fun bs!1213970 () Bool)

(declare-fun d!1685874 () Bool)

(assert (= bs!1213970 (and d!1685874 b!5229197)))

(declare-fun lambda!262688 () Int)

(assert (=> bs!1213970 (= lambda!262688 lambda!262645)))

(declare-fun bs!1213971 () Bool)

(assert (= bs!1213971 (and d!1685874 d!1685816)))

(assert (=> bs!1213971 (= lambda!262688 lambda!262672)))

(declare-fun bs!1213972 () Bool)

(assert (= bs!1213972 (and d!1685874 d!1685872)))

(assert (=> bs!1213972 (= lambda!262688 lambda!262685)))

(declare-fun lt!2145071 () List!60762)

(assert (=> d!1685874 (forall!14253 lt!2145071 lambda!262688)))

(declare-fun e!3254718 () List!60762)

(assert (=> d!1685874 (= lt!2145071 e!3254718)))

(declare-fun c!903171 () Bool)

(assert (=> d!1685874 (= c!903171 ((_ is Cons!60639) zl!343))))

(assert (=> d!1685874 (= (unfocusZipperList!263 zl!343) lt!2145071)))

(declare-fun b!5229877 () Bool)

(assert (=> b!5229877 (= e!3254718 (Cons!60638 (generalisedConcat!490 (exprs!4705 (h!67087 zl!343))) (unfocusZipperList!263 (t!373940 zl!343))))))

(declare-fun b!5229878 () Bool)

(assert (=> b!5229878 (= e!3254718 Nil!60638)))

(assert (= (and d!1685874 c!903171) b!5229877))

(assert (= (and d!1685874 (not c!903171)) b!5229878))

(declare-fun m!6275758 () Bool)

(assert (=> d!1685874 m!6275758))

(assert (=> b!5229877 m!6275216))

(declare-fun m!6275760 () Bool)

(assert (=> b!5229877 m!6275760))

(assert (=> b!5229191 d!1685874))

(declare-fun d!1685876 () Bool)

(declare-fun c!903172 () Bool)

(assert (=> d!1685876 (= c!903172 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254719 () Bool)

(assert (=> d!1685876 (= (matchZipper!1065 lt!2144972 (t!373941 s!2326)) e!3254719)))

(declare-fun b!5229879 () Bool)

(assert (=> b!5229879 (= e!3254719 (nullableZipper!1244 lt!2144972))))

(declare-fun b!5229880 () Bool)

(assert (=> b!5229880 (= e!3254719 (matchZipper!1065 (derivationStepZipper!1088 lt!2144972 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685876 c!903172) b!5229879))

(assert (= (and d!1685876 (not c!903172)) b!5229880))

(assert (=> d!1685876 m!6275598))

(declare-fun m!6275762 () Bool)

(assert (=> b!5229879 m!6275762))

(assert (=> b!5229880 m!6275602))

(assert (=> b!5229880 m!6275602))

(declare-fun m!6275764 () Bool)

(assert (=> b!5229880 m!6275764))

(assert (=> b!5229880 m!6275606))

(assert (=> b!5229880 m!6275764))

(assert (=> b!5229880 m!6275606))

(declare-fun m!6275766 () Bool)

(assert (=> b!5229880 m!6275766))

(assert (=> b!5229190 d!1685876))

(declare-fun d!1685878 () Bool)

(assert (=> d!1685878 (= (isEmpty!32563 (t!373940 zl!343)) ((_ is Nil!60639) (t!373940 zl!343)))))

(assert (=> b!5229189 d!1685878))

(declare-fun b!5229899 () Bool)

(declare-fun lt!2145078 () Unit!152582)

(declare-fun lt!2145080 () Unit!152582)

(assert (=> b!5229899 (= lt!2145078 lt!2145080)))

(declare-fun ++!13224 (List!60764 List!60764) List!60764)

(assert (=> b!5229899 (= (++!13224 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1639 (List!60764 C!29912 List!60764 List!60764) Unit!152582)

(assert (=> b!5229899 (= lt!2145080 (lemmaMoveElementToOtherListKeepsConcatEq!1639 Nil!60640 (h!67088 s!2326) (t!373941 s!2326) s!2326))))

(declare-fun e!3254730 () Option!14932)

(assert (=> b!5229899 (= e!3254730 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326) s!2326))))

(declare-fun b!5229900 () Bool)

(declare-fun e!3254732 () Option!14932)

(assert (=> b!5229900 (= e!3254732 e!3254730)))

(declare-fun c!903177 () Bool)

(assert (=> b!5229900 (= c!903177 ((_ is Nil!60640) s!2326))))

(declare-fun b!5229901 () Bool)

(assert (=> b!5229901 (= e!3254732 (Some!14931 (tuple2!64041 Nil!60640 s!2326)))))

(declare-fun b!5229902 () Bool)

(assert (=> b!5229902 (= e!3254730 None!14931)))

(declare-fun d!1685880 () Bool)

(declare-fun e!3254734 () Bool)

(assert (=> d!1685880 e!3254734))

(declare-fun res!2220084 () Bool)

(assert (=> d!1685880 (=> res!2220084 e!3254734)))

(declare-fun e!3254731 () Bool)

(assert (=> d!1685880 (= res!2220084 e!3254731)))

(declare-fun res!2220083 () Bool)

(assert (=> d!1685880 (=> (not res!2220083) (not e!3254731))))

(declare-fun lt!2145079 () Option!14932)

(assert (=> d!1685880 (= res!2220083 (isDefined!11635 lt!2145079))))

(assert (=> d!1685880 (= lt!2145079 e!3254732)))

(declare-fun c!903178 () Bool)

(declare-fun e!3254733 () Bool)

(assert (=> d!1685880 (= c!903178 e!3254733)))

(declare-fun res!2220086 () Bool)

(assert (=> d!1685880 (=> (not res!2220086) (not e!3254733))))

(assert (=> d!1685880 (= res!2220086 (matchR!7006 (regOne!30154 r!7292) Nil!60640))))

(assert (=> d!1685880 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1685880 (= (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326) lt!2145079)))

(declare-fun b!5229903 () Bool)

(assert (=> b!5229903 (= e!3254734 (not (isDefined!11635 lt!2145079)))))

(declare-fun b!5229904 () Bool)

(assert (=> b!5229904 (= e!3254733 (matchR!7006 (regTwo!30154 r!7292) s!2326))))

(declare-fun b!5229905 () Bool)

(declare-fun res!2220085 () Bool)

(assert (=> b!5229905 (=> (not res!2220085) (not e!3254731))))

(declare-fun get!20840 (Option!14932) tuple2!64040)

(assert (=> b!5229905 (= res!2220085 (matchR!7006 (regOne!30154 r!7292) (_1!35323 (get!20840 lt!2145079))))))

(declare-fun b!5229906 () Bool)

(declare-fun res!2220087 () Bool)

(assert (=> b!5229906 (=> (not res!2220087) (not e!3254731))))

(assert (=> b!5229906 (= res!2220087 (matchR!7006 (regTwo!30154 r!7292) (_2!35323 (get!20840 lt!2145079))))))

(declare-fun b!5229907 () Bool)

(assert (=> b!5229907 (= e!3254731 (= (++!13224 (_1!35323 (get!20840 lt!2145079)) (_2!35323 (get!20840 lt!2145079))) s!2326))))

(assert (= (and d!1685880 res!2220086) b!5229904))

(assert (= (and d!1685880 c!903178) b!5229901))

(assert (= (and d!1685880 (not c!903178)) b!5229900))

(assert (= (and b!5229900 c!903177) b!5229902))

(assert (= (and b!5229900 (not c!903177)) b!5229899))

(assert (= (and d!1685880 res!2220083) b!5229905))

(assert (= (and b!5229905 res!2220085) b!5229906))

(assert (= (and b!5229906 res!2220087) b!5229907))

(assert (= (and d!1685880 (not res!2220084)) b!5229903))

(declare-fun m!6275768 () Bool)

(assert (=> b!5229903 m!6275768))

(declare-fun m!6275770 () Bool)

(assert (=> b!5229905 m!6275770))

(declare-fun m!6275772 () Bool)

(assert (=> b!5229905 m!6275772))

(assert (=> b!5229906 m!6275770))

(declare-fun m!6275774 () Bool)

(assert (=> b!5229906 m!6275774))

(declare-fun m!6275776 () Bool)

(assert (=> b!5229904 m!6275776))

(assert (=> d!1685880 m!6275768))

(declare-fun m!6275778 () Bool)

(assert (=> d!1685880 m!6275778))

(declare-fun m!6275780 () Bool)

(assert (=> d!1685880 m!6275780))

(assert (=> b!5229907 m!6275770))

(declare-fun m!6275782 () Bool)

(assert (=> b!5229907 m!6275782))

(declare-fun m!6275784 () Bool)

(assert (=> b!5229899 m!6275784))

(assert (=> b!5229899 m!6275784))

(declare-fun m!6275786 () Bool)

(assert (=> b!5229899 m!6275786))

(declare-fun m!6275788 () Bool)

(assert (=> b!5229899 m!6275788))

(assert (=> b!5229899 m!6275784))

(declare-fun m!6275790 () Bool)

(assert (=> b!5229899 m!6275790))

(assert (=> b!5229208 d!1685880))

(declare-fun d!1685882 () Bool)

(declare-fun choose!38902 (Int) Bool)

(assert (=> d!1685882 (= (Exists!2002 lambda!262643) (choose!38902 lambda!262643))))

(declare-fun bs!1213973 () Bool)

(assert (= bs!1213973 d!1685882))

(declare-fun m!6275792 () Bool)

(assert (=> bs!1213973 m!6275792))

(assert (=> b!5229208 d!1685882))

(declare-fun d!1685884 () Bool)

(assert (=> d!1685884 (= (Exists!2002 lambda!262642) (choose!38902 lambda!262642))))

(declare-fun bs!1213974 () Bool)

(assert (= bs!1213974 d!1685884))

(declare-fun m!6275794 () Bool)

(assert (=> bs!1213974 m!6275794))

(assert (=> b!5229208 d!1685884))

(declare-fun bs!1213975 () Bool)

(declare-fun d!1685886 () Bool)

(assert (= bs!1213975 (and d!1685886 b!5229208)))

(declare-fun lambda!262691 () Int)

(assert (=> bs!1213975 (= lambda!262691 lambda!262642)))

(assert (=> bs!1213975 (not (= lambda!262691 lambda!262643))))

(declare-fun bs!1213976 () Bool)

(assert (= bs!1213976 (and d!1685886 b!5229763)))

(assert (=> bs!1213976 (not (= lambda!262691 lambda!262681))))

(declare-fun bs!1213977 () Bool)

(assert (= bs!1213977 (and d!1685886 b!5229760)))

(assert (=> bs!1213977 (not (= lambda!262691 lambda!262682))))

(assert (=> d!1685886 true))

(assert (=> d!1685886 true))

(assert (=> d!1685886 true))

(assert (=> d!1685886 (= (isDefined!11635 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326)) (Exists!2002 lambda!262691))))

(declare-fun lt!2145083 () Unit!152582)

(declare-fun choose!38903 (Regex!14821 Regex!14821 List!60764) Unit!152582)

(assert (=> d!1685886 (= lt!2145083 (choose!38903 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326))))

(assert (=> d!1685886 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1685886 (= (lemmaFindConcatSeparationEquivalentToExists!1110 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326) lt!2145083)))

(declare-fun bs!1213978 () Bool)

(assert (= bs!1213978 d!1685886))

(declare-fun m!6275796 () Bool)

(assert (=> bs!1213978 m!6275796))

(assert (=> bs!1213978 m!6275296))

(assert (=> bs!1213978 m!6275298))

(declare-fun m!6275798 () Bool)

(assert (=> bs!1213978 m!6275798))

(assert (=> bs!1213978 m!6275780))

(assert (=> bs!1213978 m!6275296))

(assert (=> b!5229208 d!1685886))

(declare-fun bs!1213979 () Bool)

(declare-fun d!1685888 () Bool)

(assert (= bs!1213979 (and d!1685888 d!1685886)))

(declare-fun lambda!262696 () Int)

(assert (=> bs!1213979 (= lambda!262696 lambda!262691)))

(declare-fun bs!1213980 () Bool)

(assert (= bs!1213980 (and d!1685888 b!5229760)))

(assert (=> bs!1213980 (not (= lambda!262696 lambda!262682))))

(declare-fun bs!1213981 () Bool)

(assert (= bs!1213981 (and d!1685888 b!5229208)))

(assert (=> bs!1213981 (not (= lambda!262696 lambda!262643))))

(assert (=> bs!1213981 (= lambda!262696 lambda!262642)))

(declare-fun bs!1213982 () Bool)

(assert (= bs!1213982 (and d!1685888 b!5229763)))

(assert (=> bs!1213982 (not (= lambda!262696 lambda!262681))))

(assert (=> d!1685888 true))

(assert (=> d!1685888 true))

(assert (=> d!1685888 true))

(declare-fun lambda!262697 () Int)

(assert (=> bs!1213979 (not (= lambda!262697 lambda!262691))))

(assert (=> bs!1213980 (= lambda!262697 lambda!262682)))

(assert (=> bs!1213981 (= lambda!262697 lambda!262643)))

(assert (=> bs!1213981 (not (= lambda!262697 lambda!262642))))

(declare-fun bs!1213983 () Bool)

(assert (= bs!1213983 d!1685888))

(assert (=> bs!1213983 (not (= lambda!262697 lambda!262696))))

(assert (=> bs!1213982 (not (= lambda!262697 lambda!262681))))

(assert (=> d!1685888 true))

(assert (=> d!1685888 true))

(assert (=> d!1685888 true))

(assert (=> d!1685888 (= (Exists!2002 lambda!262696) (Exists!2002 lambda!262697))))

(declare-fun lt!2145086 () Unit!152582)

(declare-fun choose!38904 (Regex!14821 Regex!14821 List!60764) Unit!152582)

(assert (=> d!1685888 (= lt!2145086 (choose!38904 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326))))

(assert (=> d!1685888 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1685888 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!656 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326) lt!2145086)))

(declare-fun m!6275800 () Bool)

(assert (=> bs!1213983 m!6275800))

(declare-fun m!6275802 () Bool)

(assert (=> bs!1213983 m!6275802))

(declare-fun m!6275804 () Bool)

(assert (=> bs!1213983 m!6275804))

(assert (=> bs!1213983 m!6275780))

(assert (=> b!5229208 d!1685888))

(declare-fun d!1685890 () Bool)

(declare-fun isEmpty!32568 (Option!14932) Bool)

(assert (=> d!1685890 (= (isDefined!11635 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326)) (not (isEmpty!32568 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326))))))

(declare-fun bs!1213984 () Bool)

(assert (= bs!1213984 d!1685890))

(assert (=> bs!1213984 m!6275296))

(declare-fun m!6275806 () Bool)

(assert (=> bs!1213984 m!6275806))

(assert (=> b!5229208 d!1685890))

(declare-fun d!1685892 () Bool)

(assert (=> d!1685892 (= (flatMap!548 lt!2144986 lambda!262644) (dynLambda!23962 lambda!262644 lt!2144990))))

(declare-fun lt!2145087 () Unit!152582)

(assert (=> d!1685892 (= lt!2145087 (choose!38896 lt!2144986 lt!2144990 lambda!262644))))

(assert (=> d!1685892 (= lt!2144986 (store ((as const (Array Context!8410 Bool)) false) lt!2144990 true))))

(assert (=> d!1685892 (= (lemmaFlatMapOnSingletonSet!80 lt!2144986 lt!2144990 lambda!262644) lt!2145087)))

(declare-fun b_lambda!202191 () Bool)

(assert (=> (not b_lambda!202191) (not d!1685892)))

(declare-fun bs!1213985 () Bool)

(assert (= bs!1213985 d!1685892))

(assert (=> bs!1213985 m!6275254))

(declare-fun m!6275808 () Bool)

(assert (=> bs!1213985 m!6275808))

(declare-fun m!6275810 () Bool)

(assert (=> bs!1213985 m!6275810))

(assert (=> bs!1213985 m!6275252))

(assert (=> b!5229198 d!1685892))

(declare-fun d!1685894 () Bool)

(declare-fun c!903179 () Bool)

(assert (=> d!1685894 (= c!903179 (isEmpty!32567 s!2326))))

(declare-fun e!3254741 () Bool)

(assert (=> d!1685894 (= (matchZipper!1065 lt!2144986 s!2326) e!3254741)))

(declare-fun b!5229920 () Bool)

(assert (=> b!5229920 (= e!3254741 (nullableZipper!1244 lt!2144986))))

(declare-fun b!5229921 () Bool)

(assert (=> b!5229921 (= e!3254741 (matchZipper!1065 (derivationStepZipper!1088 lt!2144986 (head!11207 s!2326)) (tail!10304 s!2326)))))

(assert (= (and d!1685894 c!903179) b!5229920))

(assert (= (and d!1685894 (not c!903179)) b!5229921))

(assert (=> d!1685894 m!6275612))

(declare-fun m!6275812 () Bool)

(assert (=> b!5229920 m!6275812))

(assert (=> b!5229921 m!6275616))

(assert (=> b!5229921 m!6275616))

(declare-fun m!6275814 () Bool)

(assert (=> b!5229921 m!6275814))

(assert (=> b!5229921 m!6275620))

(assert (=> b!5229921 m!6275814))

(assert (=> b!5229921 m!6275620))

(declare-fun m!6275816 () Bool)

(assert (=> b!5229921 m!6275816))

(assert (=> b!5229198 d!1685894))

(declare-fun d!1685896 () Bool)

(declare-fun c!903180 () Bool)

(assert (=> d!1685896 (= c!903180 (isEmpty!32567 s!2326))))

(declare-fun e!3254742 () Bool)

(assert (=> d!1685896 (= (matchZipper!1065 z!1189 s!2326) e!3254742)))

(declare-fun b!5229922 () Bool)

(assert (=> b!5229922 (= e!3254742 (nullableZipper!1244 z!1189))))

(declare-fun b!5229923 () Bool)

(assert (=> b!5229923 (= e!3254742 (matchZipper!1065 (derivationStepZipper!1088 z!1189 (head!11207 s!2326)) (tail!10304 s!2326)))))

(assert (= (and d!1685896 c!903180) b!5229922))

(assert (= (and d!1685896 (not c!903180)) b!5229923))

(assert (=> d!1685896 m!6275612))

(declare-fun m!6275818 () Bool)

(assert (=> b!5229922 m!6275818))

(assert (=> b!5229923 m!6275616))

(assert (=> b!5229923 m!6275616))

(declare-fun m!6275820 () Bool)

(assert (=> b!5229923 m!6275820))

(assert (=> b!5229923 m!6275620))

(assert (=> b!5229923 m!6275820))

(assert (=> b!5229923 m!6275620))

(declare-fun m!6275822 () Bool)

(assert (=> b!5229923 m!6275822))

(assert (=> b!5229198 d!1685896))

(declare-fun b!5229924 () Bool)

(declare-fun e!3254743 () Bool)

(assert (=> b!5229924 (= e!3254743 (nullable!4990 (h!67086 (exprs!4705 lt!2144990))))))

(declare-fun call!369771 () (InoxSet Context!8410))

(declare-fun e!3254744 () (InoxSet Context!8410))

(declare-fun b!5229925 () Bool)

(assert (=> b!5229925 (= e!3254744 ((_ map or) call!369771 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (h!67088 s!2326))))))

(declare-fun b!5229926 () Bool)

(declare-fun e!3254745 () (InoxSet Context!8410))

(assert (=> b!5229926 (= e!3254744 e!3254745)))

(declare-fun c!903182 () Bool)

(assert (=> b!5229926 (= c!903182 ((_ is Cons!60638) (exprs!4705 lt!2144990)))))

(declare-fun d!1685898 () Bool)

(declare-fun c!903181 () Bool)

(assert (=> d!1685898 (= c!903181 e!3254743)))

(declare-fun res!2220100 () Bool)

(assert (=> d!1685898 (=> (not res!2220100) (not e!3254743))))

(assert (=> d!1685898 (= res!2220100 ((_ is Cons!60638) (exprs!4705 lt!2144990)))))

(assert (=> d!1685898 (= (derivationStepZipperUp!193 lt!2144990 (h!67088 s!2326)) e!3254744)))

(declare-fun b!5229927 () Bool)

(assert (=> b!5229927 (= e!3254745 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5229928 () Bool)

(assert (=> b!5229928 (= e!3254745 call!369771)))

(declare-fun bm!369766 () Bool)

(assert (=> bm!369766 (= call!369771 (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144990)) (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (h!67088 s!2326)))))

(assert (= (and d!1685898 res!2220100) b!5229924))

(assert (= (and d!1685898 c!903181) b!5229925))

(assert (= (and d!1685898 (not c!903181)) b!5229926))

(assert (= (and b!5229926 c!903182) b!5229928))

(assert (= (and b!5229926 (not c!903182)) b!5229927))

(assert (= (or b!5229925 b!5229928) bm!369766))

(declare-fun m!6275824 () Bool)

(assert (=> b!5229924 m!6275824))

(declare-fun m!6275826 () Bool)

(assert (=> b!5229925 m!6275826))

(declare-fun m!6275828 () Bool)

(assert (=> bm!369766 m!6275828))

(assert (=> b!5229198 d!1685898))

(declare-fun d!1685900 () Bool)

(assert (=> d!1685900 (= (flatMap!548 lt!2144969 lambda!262644) (choose!38897 lt!2144969 lambda!262644))))

(declare-fun bs!1213986 () Bool)

(assert (= bs!1213986 d!1685900))

(declare-fun m!6275830 () Bool)

(assert (=> bs!1213986 m!6275830))

(assert (=> b!5229198 d!1685900))

(declare-fun d!1685902 () Bool)

(assert (=> d!1685902 (= (flatMap!548 lt!2144969 lambda!262644) (dynLambda!23962 lambda!262644 lt!2144985))))

(declare-fun lt!2145088 () Unit!152582)

(assert (=> d!1685902 (= lt!2145088 (choose!38896 lt!2144969 lt!2144985 lambda!262644))))

(assert (=> d!1685902 (= lt!2144969 (store ((as const (Array Context!8410 Bool)) false) lt!2144985 true))))

(assert (=> d!1685902 (= (lemmaFlatMapOnSingletonSet!80 lt!2144969 lt!2144985 lambda!262644) lt!2145088)))

(declare-fun b_lambda!202193 () Bool)

(assert (=> (not b_lambda!202193) (not d!1685902)))

(declare-fun bs!1213987 () Bool)

(assert (= bs!1213987 d!1685902))

(assert (=> bs!1213987 m!6275262))

(declare-fun m!6275832 () Bool)

(assert (=> bs!1213987 m!6275832))

(declare-fun m!6275834 () Bool)

(assert (=> bs!1213987 m!6275834))

(assert (=> bs!1213987 m!6275258))

(assert (=> b!5229198 d!1685902))

(declare-fun d!1685904 () Bool)

(assert (=> d!1685904 (= (flatMap!548 lt!2144986 lambda!262644) (choose!38897 lt!2144986 lambda!262644))))

(declare-fun bs!1213988 () Bool)

(assert (= bs!1213988 d!1685904))

(declare-fun m!6275836 () Bool)

(assert (=> bs!1213988 m!6275836))

(assert (=> b!5229198 d!1685904))

(declare-fun d!1685906 () Bool)

(assert (=> d!1685906 (= (nullable!4990 (regOne!30155 (regOne!30154 r!7292))) (nullableFct!1396 (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun bs!1213989 () Bool)

(assert (= bs!1213989 d!1685906))

(declare-fun m!6275838 () Bool)

(assert (=> bs!1213989 m!6275838))

(assert (=> b!5229198 d!1685906))

(declare-fun b!5229929 () Bool)

(declare-fun e!3254746 () Bool)

(assert (=> b!5229929 (= e!3254746 (nullable!4990 (h!67086 (exprs!4705 lt!2144985))))))

(declare-fun b!5229930 () Bool)

(declare-fun e!3254747 () (InoxSet Context!8410))

(declare-fun call!369772 () (InoxSet Context!8410))

(assert (=> b!5229930 (= e!3254747 ((_ map or) call!369772 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (h!67088 s!2326))))))

(declare-fun b!5229931 () Bool)

(declare-fun e!3254748 () (InoxSet Context!8410))

(assert (=> b!5229931 (= e!3254747 e!3254748)))

(declare-fun c!903184 () Bool)

(assert (=> b!5229931 (= c!903184 ((_ is Cons!60638) (exprs!4705 lt!2144985)))))

(declare-fun d!1685908 () Bool)

(declare-fun c!903183 () Bool)

(assert (=> d!1685908 (= c!903183 e!3254746)))

(declare-fun res!2220101 () Bool)

(assert (=> d!1685908 (=> (not res!2220101) (not e!3254746))))

(assert (=> d!1685908 (= res!2220101 ((_ is Cons!60638) (exprs!4705 lt!2144985)))))

(assert (=> d!1685908 (= (derivationStepZipperUp!193 lt!2144985 (h!67088 s!2326)) e!3254747)))

(declare-fun b!5229932 () Bool)

(assert (=> b!5229932 (= e!3254748 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5229933 () Bool)

(assert (=> b!5229933 (= e!3254748 call!369772)))

(declare-fun bm!369767 () Bool)

(assert (=> bm!369767 (= call!369772 (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144985)) (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (h!67088 s!2326)))))

(assert (= (and d!1685908 res!2220101) b!5229929))

(assert (= (and d!1685908 c!903183) b!5229930))

(assert (= (and d!1685908 (not c!903183)) b!5229931))

(assert (= (and b!5229931 c!903184) b!5229933))

(assert (= (and b!5229931 (not c!903184)) b!5229932))

(assert (= (or b!5229930 b!5229933) bm!369767))

(declare-fun m!6275840 () Bool)

(assert (=> b!5229929 m!6275840))

(declare-fun m!6275842 () Bool)

(assert (=> b!5229930 m!6275842))

(declare-fun m!6275844 () Bool)

(assert (=> bm!369767 m!6275844))

(assert (=> b!5229198 d!1685908))

(declare-fun d!1685910 () Bool)

(assert (=> d!1685910 (= (nullable!4990 (regTwo!30155 (regOne!30154 r!7292))) (nullableFct!1396 (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun bs!1213990 () Bool)

(assert (= bs!1213990 d!1685910))

(declare-fun m!6275846 () Bool)

(assert (=> bs!1213990 m!6275846))

(assert (=> b!5229198 d!1685910))

(assert (=> b!5229176 d!1685876))

(declare-fun d!1685912 () Bool)

(declare-fun res!2220106 () Bool)

(declare-fun e!3254753 () Bool)

(assert (=> d!1685912 (=> res!2220106 e!3254753)))

(assert (=> d!1685912 (= res!2220106 ((_ is Nil!60638) lt!2144994))))

(assert (=> d!1685912 (= (forall!14253 lt!2144994 lambda!262645) e!3254753)))

(declare-fun b!5229938 () Bool)

(declare-fun e!3254754 () Bool)

(assert (=> b!5229938 (= e!3254753 e!3254754)))

(declare-fun res!2220107 () Bool)

(assert (=> b!5229938 (=> (not res!2220107) (not e!3254754))))

(declare-fun dynLambda!23964 (Int Regex!14821) Bool)

(assert (=> b!5229938 (= res!2220107 (dynLambda!23964 lambda!262645 (h!67086 lt!2144994)))))

(declare-fun b!5229939 () Bool)

(assert (=> b!5229939 (= e!3254754 (forall!14253 (t!373939 lt!2144994) lambda!262645))))

(assert (= (and d!1685912 (not res!2220106)) b!5229938))

(assert (= (and b!5229938 res!2220107) b!5229939))

(declare-fun b_lambda!202195 () Bool)

(assert (=> (not b_lambda!202195) (not b!5229938)))

(declare-fun m!6275848 () Bool)

(assert (=> b!5229938 m!6275848))

(declare-fun m!6275850 () Bool)

(assert (=> b!5229939 m!6275850))

(assert (=> b!5229197 d!1685912))

(declare-fun d!1685914 () Bool)

(declare-fun e!3254755 () Bool)

(assert (=> d!1685914 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144967) (t!373941 s!2326)) e!3254755)))

(declare-fun res!2220108 () Bool)

(assert (=> d!1685914 (=> res!2220108 e!3254755)))

(assert (=> d!1685914 (= res!2220108 (matchZipper!1065 lt!2144988 (t!373941 s!2326)))))

(declare-fun lt!2145089 () Unit!152582)

(assert (=> d!1685914 (= lt!2145089 (choose!38901 lt!2144988 lt!2144967 (t!373941 s!2326)))))

(assert (=> d!1685914 (= (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144988 lt!2144967 (t!373941 s!2326)) lt!2145089)))

(declare-fun b!5229940 () Bool)

(assert (=> b!5229940 (= e!3254755 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1685914 (not res!2220108)) b!5229940))

(assert (=> d!1685914 m!6275222))

(assert (=> d!1685914 m!6275208))

(declare-fun m!6275852 () Bool)

(assert (=> d!1685914 m!6275852))

(assert (=> b!5229940 m!6275268))

(assert (=> b!5229175 d!1685914))

(declare-fun d!1685916 () Bool)

(declare-fun c!903185 () Bool)

(assert (=> d!1685916 (= c!903185 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254756 () Bool)

(assert (=> d!1685916 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144967) (t!373941 s!2326)) e!3254756)))

(declare-fun b!5229941 () Bool)

(assert (=> b!5229941 (= e!3254756 (nullableZipper!1244 ((_ map or) lt!2144988 lt!2144967)))))

(declare-fun b!5229942 () Bool)

(assert (=> b!5229942 (= e!3254756 (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685916 c!903185) b!5229941))

(assert (= (and d!1685916 (not c!903185)) b!5229942))

(assert (=> d!1685916 m!6275598))

(declare-fun m!6275854 () Bool)

(assert (=> b!5229941 m!6275854))

(assert (=> b!5229942 m!6275602))

(assert (=> b!5229942 m!6275602))

(declare-fun m!6275856 () Bool)

(assert (=> b!5229942 m!6275856))

(assert (=> b!5229942 m!6275606))

(assert (=> b!5229942 m!6275856))

(assert (=> b!5229942 m!6275606))

(declare-fun m!6275858 () Bool)

(assert (=> b!5229942 m!6275858))

(assert (=> b!5229175 d!1685916))

(assert (=> b!5229196 d!1685866))

(declare-fun d!1685918 () Bool)

(declare-fun c!903186 () Bool)

(assert (=> d!1685918 (= c!903186 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254757 () Bool)

(assert (=> d!1685918 (= (matchZipper!1065 lt!2144977 (t!373941 s!2326)) e!3254757)))

(declare-fun b!5229943 () Bool)

(assert (=> b!5229943 (= e!3254757 (nullableZipper!1244 lt!2144977))))

(declare-fun b!5229944 () Bool)

(assert (=> b!5229944 (= e!3254757 (matchZipper!1065 (derivationStepZipper!1088 lt!2144977 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685918 c!903186) b!5229943))

(assert (= (and d!1685918 (not c!903186)) b!5229944))

(assert (=> d!1685918 m!6275598))

(declare-fun m!6275860 () Bool)

(assert (=> b!5229943 m!6275860))

(assert (=> b!5229944 m!6275602))

(assert (=> b!5229944 m!6275602))

(declare-fun m!6275862 () Bool)

(assert (=> b!5229944 m!6275862))

(assert (=> b!5229944 m!6275606))

(assert (=> b!5229944 m!6275862))

(assert (=> b!5229944 m!6275606))

(declare-fun m!6275864 () Bool)

(assert (=> b!5229944 m!6275864))

(assert (=> b!5229196 d!1685918))

(declare-fun d!1685920 () Bool)

(declare-fun c!903187 () Bool)

(assert (=> d!1685920 (= c!903187 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254758 () Bool)

(assert (=> d!1685920 (= (matchZipper!1065 lt!2144988 (t!373941 s!2326)) e!3254758)))

(declare-fun b!5229945 () Bool)

(assert (=> b!5229945 (= e!3254758 (nullableZipper!1244 lt!2144988))))

(declare-fun b!5229946 () Bool)

(assert (=> b!5229946 (= e!3254758 (matchZipper!1065 (derivationStepZipper!1088 lt!2144988 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685920 c!903187) b!5229945))

(assert (= (and d!1685920 (not c!903187)) b!5229946))

(assert (=> d!1685920 m!6275598))

(declare-fun m!6275866 () Bool)

(assert (=> b!5229945 m!6275866))

(assert (=> b!5229946 m!6275602))

(assert (=> b!5229946 m!6275602))

(declare-fun m!6275868 () Bool)

(assert (=> b!5229946 m!6275868))

(assert (=> b!5229946 m!6275606))

(assert (=> b!5229946 m!6275868))

(assert (=> b!5229946 m!6275606))

(declare-fun m!6275870 () Bool)

(assert (=> b!5229946 m!6275870))

(assert (=> b!5229196 d!1685920))

(declare-fun e!3254759 () Bool)

(declare-fun d!1685922 () Bool)

(assert (=> d!1685922 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144972) (t!373941 s!2326)) e!3254759)))

(declare-fun res!2220109 () Bool)

(assert (=> d!1685922 (=> res!2220109 e!3254759)))

(assert (=> d!1685922 (= res!2220109 (matchZipper!1065 lt!2144988 (t!373941 s!2326)))))

(declare-fun lt!2145090 () Unit!152582)

(assert (=> d!1685922 (= lt!2145090 (choose!38901 lt!2144988 lt!2144972 (t!373941 s!2326)))))

(assert (=> d!1685922 (= (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144988 lt!2144972 (t!373941 s!2326)) lt!2145090)))

(declare-fun b!5229947 () Bool)

(assert (=> b!5229947 (= e!3254759 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(assert (= (and d!1685922 (not res!2220109)) b!5229947))

(declare-fun m!6275872 () Bool)

(assert (=> d!1685922 m!6275872))

(assert (=> d!1685922 m!6275208))

(declare-fun m!6275874 () Bool)

(assert (=> d!1685922 m!6275874))

(assert (=> b!5229947 m!6275198))

(assert (=> b!5229196 d!1685922))

(assert (=> b!5229174 d!1685796))

(declare-fun d!1685924 () Bool)

(declare-fun lt!2145091 () Int)

(assert (=> d!1685924 (>= lt!2145091 0)))

(declare-fun e!3254760 () Int)

(assert (=> d!1685924 (= lt!2145091 e!3254760)))

(declare-fun c!903188 () Bool)

(assert (=> d!1685924 (= c!903188 ((_ is Cons!60639) (Cons!60639 lt!2144985 Nil!60639)))))

(assert (=> d!1685924 (= (zipperDepthTotal!2 (Cons!60639 lt!2144985 Nil!60639)) lt!2145091)))

(declare-fun b!5229948 () Bool)

(assert (=> b!5229948 (= e!3254760 (+ (contextDepthTotal!2 (h!67087 (Cons!60639 lt!2144985 Nil!60639))) (zipperDepthTotal!2 (t!373940 (Cons!60639 lt!2144985 Nil!60639)))))))

(declare-fun b!5229949 () Bool)

(assert (=> b!5229949 (= e!3254760 0)))

(assert (= (and d!1685924 c!903188) b!5229948))

(assert (= (and d!1685924 (not c!903188)) b!5229949))

(declare-fun m!6275876 () Bool)

(assert (=> b!5229948 m!6275876))

(declare-fun m!6275878 () Bool)

(assert (=> b!5229948 m!6275878))

(assert (=> b!5229195 d!1685924))

(declare-fun d!1685926 () Bool)

(assert (=> d!1685926 (= (isEmpty!32564 (t!373939 (exprs!4705 (h!67087 zl!343)))) ((_ is Nil!60638) (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> b!5229194 d!1685926))

(declare-fun d!1685928 () Bool)

(declare-fun e!3254763 () Bool)

(assert (=> d!1685928 e!3254763))

(declare-fun res!2220112 () Bool)

(assert (=> d!1685928 (=> (not res!2220112) (not e!3254763))))

(declare-fun lt!2145094 () List!60763)

(declare-fun noDuplicate!1200 (List!60763) Bool)

(assert (=> d!1685928 (= res!2220112 (noDuplicate!1200 lt!2145094))))

(declare-fun choose!38905 ((InoxSet Context!8410)) List!60763)

(assert (=> d!1685928 (= lt!2145094 (choose!38905 z!1189))))

(assert (=> d!1685928 (= (toList!8605 z!1189) lt!2145094)))

(declare-fun b!5229952 () Bool)

(declare-fun content!10761 (List!60763) (InoxSet Context!8410))

(assert (=> b!5229952 (= e!3254763 (= (content!10761 lt!2145094) z!1189))))

(assert (= (and d!1685928 res!2220112) b!5229952))

(declare-fun m!6275880 () Bool)

(assert (=> d!1685928 m!6275880))

(declare-fun m!6275882 () Bool)

(assert (=> d!1685928 m!6275882))

(declare-fun m!6275884 () Bool)

(assert (=> b!5229952 m!6275884))

(assert (=> b!5229181 d!1685928))

(assert (=> b!5229201 d!1685796))

(declare-fun bs!1213991 () Bool)

(declare-fun d!1685930 () Bool)

(assert (= bs!1213991 (and d!1685930 b!5229197)))

(declare-fun lambda!262700 () Int)

(assert (=> bs!1213991 (= lambda!262700 lambda!262645)))

(declare-fun bs!1213992 () Bool)

(assert (= bs!1213992 (and d!1685930 d!1685816)))

(assert (=> bs!1213992 (= lambda!262700 lambda!262672)))

(declare-fun bs!1213993 () Bool)

(assert (= bs!1213993 (and d!1685930 d!1685872)))

(assert (=> bs!1213993 (= lambda!262700 lambda!262685)))

(declare-fun bs!1213994 () Bool)

(assert (= bs!1213994 (and d!1685930 d!1685874)))

(assert (=> bs!1213994 (= lambda!262700 lambda!262688)))

(declare-fun b!5229973 () Bool)

(declare-fun e!3254776 () Bool)

(assert (=> b!5229973 (= e!3254776 (isEmpty!32564 (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229974 () Bool)

(declare-fun e!3254779 () Bool)

(declare-fun lt!2145097 () Regex!14821)

(declare-fun isConcat!303 (Regex!14821) Bool)

(assert (=> b!5229974 (= e!3254779 (isConcat!303 lt!2145097))))

(declare-fun b!5229975 () Bool)

(declare-fun e!3254781 () Regex!14821)

(assert (=> b!5229975 (= e!3254781 (Concat!23666 (h!67086 (exprs!4705 (h!67087 zl!343))) (generalisedConcat!490 (t!373939 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5229976 () Bool)

(assert (=> b!5229976 (= e!3254781 EmptyExpr!14821)))

(declare-fun b!5229977 () Bool)

(declare-fun e!3254780 () Regex!14821)

(assert (=> b!5229977 (= e!3254780 (h!67086 (exprs!4705 (h!67087 zl!343))))))

(declare-fun b!5229978 () Bool)

(declare-fun e!3254778 () Bool)

(declare-fun isEmptyExpr!780 (Regex!14821) Bool)

(assert (=> b!5229978 (= e!3254778 (isEmptyExpr!780 lt!2145097))))

(declare-fun e!3254777 () Bool)

(assert (=> d!1685930 e!3254777))

(declare-fun res!2220117 () Bool)

(assert (=> d!1685930 (=> (not res!2220117) (not e!3254777))))

(assert (=> d!1685930 (= res!2220117 (validRegex!6557 lt!2145097))))

(assert (=> d!1685930 (= lt!2145097 e!3254780)))

(declare-fun c!903199 () Bool)

(assert (=> d!1685930 (= c!903199 e!3254776)))

(declare-fun res!2220118 () Bool)

(assert (=> d!1685930 (=> (not res!2220118) (not e!3254776))))

(assert (=> d!1685930 (= res!2220118 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> d!1685930 (forall!14253 (exprs!4705 (h!67087 zl!343)) lambda!262700)))

(assert (=> d!1685930 (= (generalisedConcat!490 (exprs!4705 (h!67087 zl!343))) lt!2145097)))

(declare-fun b!5229979 () Bool)

(assert (=> b!5229979 (= e!3254778 e!3254779)))

(declare-fun c!903197 () Bool)

(assert (=> b!5229979 (= c!903197 (isEmpty!32564 (tail!10305 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229980 () Bool)

(assert (=> b!5229980 (= e!3254780 e!3254781)))

(declare-fun c!903200 () Bool)

(assert (=> b!5229980 (= c!903200 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343))))))

(declare-fun b!5229981 () Bool)

(assert (=> b!5229981 (= e!3254779 (= lt!2145097 (head!11208 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5229982 () Bool)

(assert (=> b!5229982 (= e!3254777 e!3254778)))

(declare-fun c!903198 () Bool)

(assert (=> b!5229982 (= c!903198 (isEmpty!32564 (exprs!4705 (h!67087 zl!343))))))

(assert (= (and d!1685930 res!2220118) b!5229973))

(assert (= (and d!1685930 c!903199) b!5229977))

(assert (= (and d!1685930 (not c!903199)) b!5229980))

(assert (= (and b!5229980 c!903200) b!5229975))

(assert (= (and b!5229980 (not c!903200)) b!5229976))

(assert (= (and d!1685930 res!2220117) b!5229982))

(assert (= (and b!5229982 c!903198) b!5229978))

(assert (= (and b!5229982 (not c!903198)) b!5229979))

(assert (= (and b!5229979 c!903197) b!5229981))

(assert (= (and b!5229979 (not c!903197)) b!5229974))

(declare-fun m!6275886 () Bool)

(assert (=> d!1685930 m!6275886))

(declare-fun m!6275888 () Bool)

(assert (=> d!1685930 m!6275888))

(declare-fun m!6275890 () Bool)

(assert (=> b!5229974 m!6275890))

(declare-fun m!6275892 () Bool)

(assert (=> b!5229981 m!6275892))

(declare-fun m!6275894 () Bool)

(assert (=> b!5229978 m!6275894))

(declare-fun m!6275896 () Bool)

(assert (=> b!5229982 m!6275896))

(declare-fun m!6275898 () Bool)

(assert (=> b!5229979 m!6275898))

(assert (=> b!5229979 m!6275898))

(declare-fun m!6275900 () Bool)

(assert (=> b!5229979 m!6275900))

(assert (=> b!5229973 m!6275212))

(declare-fun m!6275902 () Bool)

(assert (=> b!5229975 m!6275902))

(assert (=> b!5229180 d!1685930))

(declare-fun e!3254782 () Bool)

(declare-fun d!1685932 () Bool)

(assert (=> d!1685932 (= (matchZipper!1065 ((_ map or) lt!2144972 lt!2144967) (t!373941 s!2326)) e!3254782)))

(declare-fun res!2220119 () Bool)

(assert (=> d!1685932 (=> res!2220119 e!3254782)))

(assert (=> d!1685932 (= res!2220119 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(declare-fun lt!2145098 () Unit!152582)

(assert (=> d!1685932 (= lt!2145098 (choose!38901 lt!2144972 lt!2144967 (t!373941 s!2326)))))

(assert (=> d!1685932 (= (lemmaZipperConcatMatchesSameAsBothZippers!58 lt!2144972 lt!2144967 (t!373941 s!2326)) lt!2145098)))

(declare-fun b!5229983 () Bool)

(assert (=> b!5229983 (= e!3254782 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1685932 (not res!2220119)) b!5229983))

(assert (=> d!1685932 m!6275272))

(assert (=> d!1685932 m!6275198))

(declare-fun m!6275904 () Bool)

(assert (=> d!1685932 m!6275904))

(assert (=> b!5229983 m!6275268))

(assert (=> b!5229199 d!1685932))

(assert (=> b!5229199 d!1685876))

(declare-fun d!1685934 () Bool)

(declare-fun c!903201 () Bool)

(assert (=> d!1685934 (= c!903201 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3254783 () Bool)

(assert (=> d!1685934 (= (matchZipper!1065 ((_ map or) lt!2144972 lt!2144967) (t!373941 s!2326)) e!3254783)))

(declare-fun b!5229984 () Bool)

(assert (=> b!5229984 (= e!3254783 (nullableZipper!1244 ((_ map or) lt!2144972 lt!2144967)))))

(declare-fun b!5229985 () Bool)

(assert (=> b!5229985 (= e!3254783 (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144972 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1685934 c!903201) b!5229984))

(assert (= (and d!1685934 (not c!903201)) b!5229985))

(assert (=> d!1685934 m!6275598))

(declare-fun m!6275906 () Bool)

(assert (=> b!5229984 m!6275906))

(assert (=> b!5229985 m!6275602))

(assert (=> b!5229985 m!6275602))

(declare-fun m!6275908 () Bool)

(assert (=> b!5229985 m!6275908))

(assert (=> b!5229985 m!6275606))

(assert (=> b!5229985 m!6275908))

(assert (=> b!5229985 m!6275606))

(declare-fun m!6275910 () Bool)

(assert (=> b!5229985 m!6275910))

(assert (=> b!5229199 d!1685934))

(declare-fun bs!1213995 () Bool)

(declare-fun d!1685936 () Bool)

(assert (= bs!1213995 (and d!1685936 d!1685874)))

(declare-fun lambda!262701 () Int)

(assert (=> bs!1213995 (= lambda!262701 lambda!262688)))

(declare-fun bs!1213996 () Bool)

(assert (= bs!1213996 (and d!1685936 d!1685872)))

(assert (=> bs!1213996 (= lambda!262701 lambda!262685)))

(declare-fun bs!1213997 () Bool)

(assert (= bs!1213997 (and d!1685936 b!5229197)))

(assert (=> bs!1213997 (= lambda!262701 lambda!262645)))

(declare-fun bs!1213998 () Bool)

(assert (= bs!1213998 (and d!1685936 d!1685816)))

(assert (=> bs!1213998 (= lambda!262701 lambda!262672)))

(declare-fun bs!1213999 () Bool)

(assert (= bs!1213999 (and d!1685936 d!1685930)))

(assert (=> bs!1213999 (= lambda!262701 lambda!262700)))

(assert (=> d!1685936 (= (inv!80299 setElem!33299) (forall!14253 (exprs!4705 setElem!33299) lambda!262701))))

(declare-fun bs!1214000 () Bool)

(assert (= bs!1214000 d!1685936))

(declare-fun m!6275912 () Bool)

(assert (=> bs!1214000 m!6275912))

(assert (=> setNonEmpty!33299 d!1685936))

(declare-fun b!5229999 () Bool)

(declare-fun e!3254786 () Bool)

(declare-fun tp!1465550 () Bool)

(declare-fun tp!1465553 () Bool)

(assert (=> b!5229999 (= e!3254786 (and tp!1465550 tp!1465553))))

(declare-fun b!5229997 () Bool)

(declare-fun tp!1465551 () Bool)

(declare-fun tp!1465554 () Bool)

(assert (=> b!5229997 (= e!3254786 (and tp!1465551 tp!1465554))))

(declare-fun b!5229998 () Bool)

(declare-fun tp!1465552 () Bool)

(assert (=> b!5229998 (= e!3254786 tp!1465552)))

(assert (=> b!5229177 (= tp!1465472 e!3254786)))

(declare-fun b!5229996 () Bool)

(assert (=> b!5229996 (= e!3254786 tp_is_empty!38895)))

(assert (= (and b!5229177 ((_ is ElementMatch!14821) (regOne!30155 r!7292))) b!5229996))

(assert (= (and b!5229177 ((_ is Concat!23666) (regOne!30155 r!7292))) b!5229997))

(assert (= (and b!5229177 ((_ is Star!14821) (regOne!30155 r!7292))) b!5229998))

(assert (= (and b!5229177 ((_ is Union!14821) (regOne!30155 r!7292))) b!5229999))

(declare-fun b!5230003 () Bool)

(declare-fun e!3254787 () Bool)

(declare-fun tp!1465555 () Bool)

(declare-fun tp!1465558 () Bool)

(assert (=> b!5230003 (= e!3254787 (and tp!1465555 tp!1465558))))

(declare-fun b!5230001 () Bool)

(declare-fun tp!1465556 () Bool)

(declare-fun tp!1465559 () Bool)

(assert (=> b!5230001 (= e!3254787 (and tp!1465556 tp!1465559))))

(declare-fun b!5230002 () Bool)

(declare-fun tp!1465557 () Bool)

(assert (=> b!5230002 (= e!3254787 tp!1465557)))

(assert (=> b!5229177 (= tp!1465477 e!3254787)))

(declare-fun b!5230000 () Bool)

(assert (=> b!5230000 (= e!3254787 tp_is_empty!38895)))

(assert (= (and b!5229177 ((_ is ElementMatch!14821) (regTwo!30155 r!7292))) b!5230000))

(assert (= (and b!5229177 ((_ is Concat!23666) (regTwo!30155 r!7292))) b!5230001))

(assert (= (and b!5229177 ((_ is Star!14821) (regTwo!30155 r!7292))) b!5230002))

(assert (= (and b!5229177 ((_ is Union!14821) (regTwo!30155 r!7292))) b!5230003))

(declare-fun b!5230008 () Bool)

(declare-fun e!3254790 () Bool)

(declare-fun tp!1465564 () Bool)

(declare-fun tp!1465565 () Bool)

(assert (=> b!5230008 (= e!3254790 (and tp!1465564 tp!1465565))))

(assert (=> b!5229182 (= tp!1465480 e!3254790)))

(assert (= (and b!5229182 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343)))) b!5230008))

(declare-fun b!5230012 () Bool)

(declare-fun e!3254791 () Bool)

(declare-fun tp!1465566 () Bool)

(declare-fun tp!1465569 () Bool)

(assert (=> b!5230012 (= e!3254791 (and tp!1465566 tp!1465569))))

(declare-fun b!5230010 () Bool)

(declare-fun tp!1465567 () Bool)

(declare-fun tp!1465570 () Bool)

(assert (=> b!5230010 (= e!3254791 (and tp!1465567 tp!1465570))))

(declare-fun b!5230011 () Bool)

(declare-fun tp!1465568 () Bool)

(assert (=> b!5230011 (= e!3254791 tp!1465568)))

(assert (=> b!5229192 (= tp!1465478 e!3254791)))

(declare-fun b!5230009 () Bool)

(assert (=> b!5230009 (= e!3254791 tp_is_empty!38895)))

(assert (= (and b!5229192 ((_ is ElementMatch!14821) (reg!15150 r!7292))) b!5230009))

(assert (= (and b!5229192 ((_ is Concat!23666) (reg!15150 r!7292))) b!5230010))

(assert (= (and b!5229192 ((_ is Star!14821) (reg!15150 r!7292))) b!5230011))

(assert (= (and b!5229192 ((_ is Union!14821) (reg!15150 r!7292))) b!5230012))

(declare-fun b!5230016 () Bool)

(declare-fun e!3254792 () Bool)

(declare-fun tp!1465571 () Bool)

(declare-fun tp!1465574 () Bool)

(assert (=> b!5230016 (= e!3254792 (and tp!1465571 tp!1465574))))

(declare-fun b!5230014 () Bool)

(declare-fun tp!1465572 () Bool)

(declare-fun tp!1465575 () Bool)

(assert (=> b!5230014 (= e!3254792 (and tp!1465572 tp!1465575))))

(declare-fun b!5230015 () Bool)

(declare-fun tp!1465573 () Bool)

(assert (=> b!5230015 (= e!3254792 tp!1465573)))

(assert (=> b!5229186 (= tp!1465476 e!3254792)))

(declare-fun b!5230013 () Bool)

(assert (=> b!5230013 (= e!3254792 tp_is_empty!38895)))

(assert (= (and b!5229186 ((_ is ElementMatch!14821) (regOne!30154 r!7292))) b!5230013))

(assert (= (and b!5229186 ((_ is Concat!23666) (regOne!30154 r!7292))) b!5230014))

(assert (= (and b!5229186 ((_ is Star!14821) (regOne!30154 r!7292))) b!5230015))

(assert (= (and b!5229186 ((_ is Union!14821) (regOne!30154 r!7292))) b!5230016))

(declare-fun b!5230020 () Bool)

(declare-fun e!3254793 () Bool)

(declare-fun tp!1465576 () Bool)

(declare-fun tp!1465579 () Bool)

(assert (=> b!5230020 (= e!3254793 (and tp!1465576 tp!1465579))))

(declare-fun b!5230018 () Bool)

(declare-fun tp!1465577 () Bool)

(declare-fun tp!1465580 () Bool)

(assert (=> b!5230018 (= e!3254793 (and tp!1465577 tp!1465580))))

(declare-fun b!5230019 () Bool)

(declare-fun tp!1465578 () Bool)

(assert (=> b!5230019 (= e!3254793 tp!1465578)))

(assert (=> b!5229186 (= tp!1465475 e!3254793)))

(declare-fun b!5230017 () Bool)

(assert (=> b!5230017 (= e!3254793 tp_is_empty!38895)))

(assert (= (and b!5229186 ((_ is ElementMatch!14821) (regTwo!30154 r!7292))) b!5230017))

(assert (= (and b!5229186 ((_ is Concat!23666) (regTwo!30154 r!7292))) b!5230018))

(assert (= (and b!5229186 ((_ is Star!14821) (regTwo!30154 r!7292))) b!5230019))

(assert (= (and b!5229186 ((_ is Union!14821) (regTwo!30154 r!7292))) b!5230020))

(declare-fun b!5230028 () Bool)

(declare-fun e!3254799 () Bool)

(declare-fun tp!1465585 () Bool)

(assert (=> b!5230028 (= e!3254799 tp!1465585)))

(declare-fun e!3254798 () Bool)

(declare-fun b!5230027 () Bool)

(declare-fun tp!1465586 () Bool)

(assert (=> b!5230027 (= e!3254798 (and (inv!80299 (h!67087 (t!373940 zl!343))) e!3254799 tp!1465586))))

(assert (=> b!5229205 (= tp!1465479 e!3254798)))

(assert (= b!5230027 b!5230028))

(assert (= (and b!5229205 ((_ is Cons!60639) (t!373940 zl!343))) b!5230027))

(declare-fun m!6275914 () Bool)

(assert (=> b!5230027 m!6275914))

(declare-fun b!5230029 () Bool)

(declare-fun e!3254800 () Bool)

(declare-fun tp!1465587 () Bool)

(declare-fun tp!1465588 () Bool)

(assert (=> b!5230029 (= e!3254800 (and tp!1465587 tp!1465588))))

(assert (=> b!5229209 (= tp!1465473 e!3254800)))

(assert (= (and b!5229209 ((_ is Cons!60638) (exprs!4705 setElem!33299))) b!5230029))

(declare-fun b!5230034 () Bool)

(declare-fun e!3254803 () Bool)

(declare-fun tp!1465591 () Bool)

(assert (=> b!5230034 (= e!3254803 (and tp_is_empty!38895 tp!1465591))))

(assert (=> b!5229173 (= tp!1465474 e!3254803)))

(assert (= (and b!5229173 ((_ is Cons!60640) (t!373941 s!2326))) b!5230034))

(declare-fun condSetEmpty!33305 () Bool)

(assert (=> setNonEmpty!33299 (= condSetEmpty!33305 (= setRest!33299 ((as const (Array Context!8410 Bool)) false)))))

(declare-fun setRes!33305 () Bool)

(assert (=> setNonEmpty!33299 (= tp!1465481 setRes!33305)))

(declare-fun setIsEmpty!33305 () Bool)

(assert (=> setIsEmpty!33305 setRes!33305))

(declare-fun setNonEmpty!33305 () Bool)

(declare-fun e!3254806 () Bool)

(declare-fun tp!1465597 () Bool)

(declare-fun setElem!33305 () Context!8410)

(assert (=> setNonEmpty!33305 (= setRes!33305 (and tp!1465597 (inv!80299 setElem!33305) e!3254806))))

(declare-fun setRest!33305 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33305 (= setRest!33299 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33305 true) setRest!33305))))

(declare-fun b!5230039 () Bool)

(declare-fun tp!1465596 () Bool)

(assert (=> b!5230039 (= e!3254806 tp!1465596)))

(assert (= (and setNonEmpty!33299 condSetEmpty!33305) setIsEmpty!33305))

(assert (= (and setNonEmpty!33299 (not condSetEmpty!33305)) setNonEmpty!33305))

(assert (= setNonEmpty!33305 b!5230039))

(declare-fun m!6275916 () Bool)

(assert (=> setNonEmpty!33305 m!6275916))

(declare-fun b_lambda!202197 () Bool)

(assert (= b_lambda!202195 (or b!5229197 b_lambda!202197)))

(declare-fun bs!1214001 () Bool)

(declare-fun d!1685938 () Bool)

(assert (= bs!1214001 (and d!1685938 b!5229197)))

(assert (=> bs!1214001 (= (dynLambda!23964 lambda!262645 (h!67086 lt!2144994)) (validRegex!6557 (h!67086 lt!2144994)))))

(declare-fun m!6275918 () Bool)

(assert (=> bs!1214001 m!6275918))

(assert (=> b!5229938 d!1685938))

(declare-fun b_lambda!202199 () Bool)

(assert (= b_lambda!202193 (or b!5229203 b_lambda!202199)))

(declare-fun bs!1214002 () Bool)

(declare-fun d!1685940 () Bool)

(assert (= bs!1214002 (and d!1685940 b!5229203)))

(assert (=> bs!1214002 (= (dynLambda!23962 lambda!262644 lt!2144985) (derivationStepZipperUp!193 lt!2144985 (h!67088 s!2326)))))

(assert (=> bs!1214002 m!6275260))

(assert (=> d!1685902 d!1685940))

(declare-fun b_lambda!202201 () Bool)

(assert (= b_lambda!202179 (or b!5229203 b_lambda!202201)))

(declare-fun bs!1214003 () Bool)

(declare-fun d!1685942 () Bool)

(assert (= bs!1214003 (and d!1685942 b!5229203)))

(assert (=> bs!1214003 (= (dynLambda!23962 lambda!262644 (h!67087 zl!343)) (derivationStepZipperUp!193 (h!67087 zl!343) (h!67088 s!2326)))))

(assert (=> bs!1214003 m!6275276))

(assert (=> d!1685822 d!1685942))

(declare-fun b_lambda!202203 () Bool)

(assert (= b_lambda!202191 (or b!5229203 b_lambda!202203)))

(declare-fun bs!1214004 () Bool)

(declare-fun d!1685944 () Bool)

(assert (= bs!1214004 (and d!1685944 b!5229203)))

(assert (=> bs!1214004 (= (dynLambda!23962 lambda!262644 lt!2144990) (derivationStepZipperUp!193 lt!2144990 (h!67088 s!2326)))))

(assert (=> bs!1214004 m!6275244))

(assert (=> d!1685892 d!1685944))

(check-sat (not b_lambda!202199) (not b!5229758) (not setNonEmpty!33305) (not d!1685888) (not b!5229866) (not bm!369733) (not b!5229879) (not d!1685902) (not b!5229537) (not b!5229872) (not b_lambda!202203) (not d!1685872) (not b!5230029) (not b!5229443) (not bm!369738) (not d!1685834) (not b!5230015) (not b!5230016) (not b!5229813) (not b!5229925) (not b!5229999) (not b!5229422) (not bm!369753) (not bm!369696) (not b!5229487) (not d!1685930) (not b!5229942) (not b!5229946) (not b!5229835) (not d!1685864) (not b!5229978) (not b!5229907) (not b!5229940) (not b!5229611) (not d!1685914) (not d!1685900) (not d!1685866) (not bm!369700) (not d!1685936) (not b!5229930) (not b!5230034) (not bm!369702) (not d!1685906) (not b!5229921) (not d!1685892) (not b!5229944) (not b!5229592) (not b!5229869) (not d!1685904) (not b!5229627) (not b!5230012) (not b!5229941) (not b!5230001) (not b!5230028) (not b!5229947) (not b!5229795) (not d!1685918) (not b!5230020) (not b!5229983) (not b!5229756) (not d!1685910) (not d!1685820) (not b!5229593) (not b!5230019) (not bs!1214001) (not b!5229982) (not b!5229868) (not b!5229943) (not b!5229508) (not b!5229906) (not b!5229815) (not b!5229905) (not b!5229929) (not b!5229812) (not b!5229975) (not b!5229998) (not b!5229979) (not b!5230018) (not d!1685922) (not b!5229973) (not b!5230011) (not b!5229939) (not b!5230002) (not bm!369735) (not b!5229507) (not b!5229974) (not b!5230027) (not b!5229806) (not d!1685860) (not b!5229903) (not b!5229981) (not b!5229805) (not b!5229997) (not b!5229622) (not b!5230010) (not b!5229923) (not b!5229920) (not bm!369729) (not b!5229922) (not bs!1214004) (not b!5229804) (not b_lambda!202201) (not b!5229864) (not d!1685894) (not b!5229877) (not d!1685880) (not bm!369763) (not d!1685876) (not bm!369766) (not b!5230003) (not b!5229948) (not b!5229612) (not bm!369694) (not b!5229880) (not b!5230014) (not d!1685822) (not bm!369697) (not b!5229952) (not bm!369736) (not bm!369731) (not d!1685896) (not d!1685932) (not b!5229904) (not b!5229985) (not d!1685874) (not bs!1214003) (not b!5230008) (not b!5229945) (not b!5230039) (not bm!369767) (not b!5229814) (not d!1685934) (not bs!1214002) (not bm!369756) (not bm!369765) (not d!1685916) (not b!5229802) (not d!1685796) (not b!5229871) (not b!5229628) (not d!1685862) (not d!1685826) (not d!1685890) (not d!1685884) (not b!5229924) (not b!5229899) (not b_lambda!202197) (not d!1685816) (not b!5229482) (not b!5229808) tp_is_empty!38895 (not d!1685886) (not bm!369752) (not b!5229811) (not b!5229538) (not b!5229863) (not d!1685928) (not d!1685882) (not b!5229984) (not d!1685920) (not d!1685818) (not bm!369703) (not d!1685868))
(check-sat)
(get-model)

(declare-fun d!1685982 () Bool)

(declare-fun lt!2145101 () Int)

(assert (=> d!1685982 (>= lt!2145101 0)))

(declare-fun e!3254841 () Int)

(assert (=> d!1685982 (= lt!2145101 e!3254841)))

(declare-fun c!903219 () Bool)

(assert (=> d!1685982 (= c!903219 ((_ is Cons!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> d!1685982 (= (contextDepthTotal!2 (h!67087 zl!343)) lt!2145101)))

(declare-fun b!5230094 () Bool)

(declare-fun regexDepthTotal!1 (Regex!14821) Int)

(assert (=> b!5230094 (= e!3254841 (+ (regexDepthTotal!1 (h!67086 (exprs!4705 (h!67087 zl!343)))) (contextDepthTotal!2 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230095 () Bool)

(assert (=> b!5230095 (= e!3254841 1)))

(assert (= (and d!1685982 c!903219) b!5230094))

(assert (= (and d!1685982 (not c!903219)) b!5230095))

(declare-fun m!6275982 () Bool)

(assert (=> b!5230094 m!6275982))

(declare-fun m!6275984 () Bool)

(assert (=> b!5230094 m!6275984))

(assert (=> b!5229482 d!1685982))

(declare-fun d!1685990 () Bool)

(declare-fun lt!2145102 () Int)

(assert (=> d!1685990 (>= lt!2145102 0)))

(declare-fun e!3254842 () Int)

(assert (=> d!1685990 (= lt!2145102 e!3254842)))

(declare-fun c!903220 () Bool)

(assert (=> d!1685990 (= c!903220 ((_ is Cons!60639) (t!373940 zl!343)))))

(assert (=> d!1685990 (= (zipperDepthTotal!2 (t!373940 zl!343)) lt!2145102)))

(declare-fun b!5230096 () Bool)

(assert (=> b!5230096 (= e!3254842 (+ (contextDepthTotal!2 (h!67087 (t!373940 zl!343))) (zipperDepthTotal!2 (t!373940 (t!373940 zl!343)))))))

(declare-fun b!5230097 () Bool)

(assert (=> b!5230097 (= e!3254842 0)))

(assert (= (and d!1685990 c!903220) b!5230096))

(assert (= (and d!1685990 (not c!903220)) b!5230097))

(declare-fun m!6275986 () Bool)

(assert (=> b!5230096 m!6275986))

(declare-fun m!6275988 () Bool)

(assert (=> b!5230096 m!6275988))

(assert (=> b!5229482 d!1685990))

(declare-fun d!1685992 () Bool)

(assert (=> d!1685992 (= (isEmpty!32568 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326)) (not ((_ is Some!14931) (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326))))))

(assert (=> d!1685890 d!1685992))

(declare-fun bm!369777 () Bool)

(declare-fun call!369785 () (InoxSet Context!8410))

(declare-fun call!369786 () (InoxSet Context!8410))

(assert (=> bm!369777 (= call!369785 call!369786)))

(declare-fun b!5230098 () Bool)

(declare-fun e!3254846 () (InoxSet Context!8410))

(declare-fun call!369782 () (InoxSet Context!8410))

(assert (=> b!5230098 (= e!3254846 ((_ map or) call!369782 call!369786))))

(declare-fun b!5230099 () Bool)

(declare-fun c!903225 () Bool)

(declare-fun e!3254847 () Bool)

(assert (=> b!5230099 (= c!903225 e!3254847)))

(declare-fun res!2220147 () Bool)

(assert (=> b!5230099 (=> (not res!2220147) (not e!3254847))))

(assert (=> b!5230099 (= res!2220147 ((_ is Concat!23666) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun e!3254844 () (InoxSet Context!8410))

(assert (=> b!5230099 (= e!3254844 e!3254846)))

(declare-fun b!5230100 () Bool)

(declare-fun e!3254845 () (InoxSet Context!8410))

(assert (=> b!5230100 (= e!3254845 call!369785)))

(declare-fun c!903223 () Bool)

(declare-fun call!369787 () List!60762)

(declare-fun bm!369778 () Bool)

(assert (=> bm!369778 (= call!369782 (derivationStepZipperDown!269 (ite c!903223 (regOne!30155 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (regOne!30154 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))) (ite c!903223 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (Context!8411 call!369787)) (h!67088 s!2326)))))

(declare-fun bm!369779 () Bool)

(declare-fun call!369784 () (InoxSet Context!8410))

(assert (=> bm!369779 (= call!369786 call!369784)))

(declare-fun c!903221 () Bool)

(declare-fun bm!369780 () Bool)

(assert (=> bm!369780 (= call!369787 ($colon$colon!1294 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))) (ite (or c!903225 c!903221) (regTwo!30154 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))))

(declare-fun b!5230101 () Bool)

(declare-fun e!3254848 () (InoxSet Context!8410))

(assert (=> b!5230101 (= e!3254848 (store ((as const (Array Context!8410 Bool)) false) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) true))))

(declare-fun b!5230102 () Bool)

(assert (=> b!5230102 (= e!3254846 e!3254845)))

(assert (=> b!5230102 (= c!903221 ((_ is Concat!23666) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun b!5230103 () Bool)

(declare-fun e!3254843 () (InoxSet Context!8410))

(assert (=> b!5230103 (= e!3254843 call!369785)))

(declare-fun bm!369781 () Bool)

(declare-fun call!369783 () List!60762)

(assert (=> bm!369781 (= call!369784 (derivationStepZipperDown!269 (ite c!903223 (regTwo!30155 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (ite c!903225 (regTwo!30154 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (ite c!903221 (regOne!30154 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (reg!15150 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))) (ite (or c!903223 c!903225) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (Context!8411 call!369783)) (h!67088 s!2326)))))

(declare-fun b!5230104 () Bool)

(assert (=> b!5230104 (= e!3254847 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))))

(declare-fun b!5230106 () Bool)

(declare-fun c!903224 () Bool)

(assert (=> b!5230106 (= c!903224 ((_ is Star!14821) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(assert (=> b!5230106 (= e!3254845 e!3254843)))

(declare-fun b!5230107 () Bool)

(assert (=> b!5230107 (= e!3254848 e!3254844)))

(assert (=> b!5230107 (= c!903223 ((_ is Union!14821) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun bm!369782 () Bool)

(assert (=> bm!369782 (= call!369783 call!369787)))

(declare-fun b!5230108 () Bool)

(assert (=> b!5230108 (= e!3254843 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1685994 () Bool)

(declare-fun c!903222 () Bool)

(assert (=> d!1685994 (= c!903222 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (= (c!902967 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326))))))

(assert (=> d!1685994 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326)) e!3254848)))

(declare-fun b!5230105 () Bool)

(assert (=> b!5230105 (= e!3254844 ((_ map or) call!369782 call!369784))))

(assert (= (and d!1685994 c!903222) b!5230101))

(assert (= (and d!1685994 (not c!903222)) b!5230107))

(assert (= (and b!5230107 c!903223) b!5230105))

(assert (= (and b!5230107 (not c!903223)) b!5230099))

(assert (= (and b!5230099 res!2220147) b!5230104))

(assert (= (and b!5230099 c!903225) b!5230098))

(assert (= (and b!5230099 (not c!903225)) b!5230102))

(assert (= (and b!5230102 c!903221) b!5230100))

(assert (= (and b!5230102 (not c!903221)) b!5230106))

(assert (= (and b!5230106 c!903224) b!5230103))

(assert (= (and b!5230106 (not c!903224)) b!5230108))

(assert (= (or b!5230100 b!5230103) bm!369782))

(assert (= (or b!5230100 b!5230103) bm!369777))

(assert (= (or b!5230098 bm!369782) bm!369780))

(assert (= (or b!5230098 bm!369777) bm!369779))

(assert (= (or b!5230105 bm!369779) bm!369781))

(assert (= (or b!5230105 b!5230098) bm!369778))

(declare-fun m!6275990 () Bool)

(assert (=> bm!369778 m!6275990))

(declare-fun m!6275992 () Bool)

(assert (=> b!5230104 m!6275992))

(declare-fun m!6275994 () Bool)

(assert (=> b!5230101 m!6275994))

(declare-fun m!6275996 () Bool)

(assert (=> bm!369780 m!6275996))

(declare-fun m!6275998 () Bool)

(assert (=> bm!369781 m!6275998))

(assert (=> bm!369729 d!1685994))

(declare-fun d!1685996 () Bool)

(assert (=> d!1685996 true))

(declare-fun setRes!33308 () Bool)

(assert (=> d!1685996 setRes!33308))

(declare-fun condSetEmpty!33308 () Bool)

(declare-fun res!2220154 () (InoxSet Context!8410))

(assert (=> d!1685996 (= condSetEmpty!33308 (= res!2220154 ((as const (Array Context!8410 Bool)) false)))))

(assert (=> d!1685996 (= (choose!38897 lt!2144969 lambda!262644) res!2220154)))

(declare-fun setIsEmpty!33308 () Bool)

(assert (=> setIsEmpty!33308 setRes!33308))

(declare-fun e!3254855 () Bool)

(declare-fun tp!1465603 () Bool)

(declare-fun setNonEmpty!33308 () Bool)

(declare-fun setElem!33308 () Context!8410)

(assert (=> setNonEmpty!33308 (= setRes!33308 (and tp!1465603 (inv!80299 setElem!33308) e!3254855))))

(declare-fun setRest!33308 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33308 (= res!2220154 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33308 true) setRest!33308))))

(declare-fun b!5230119 () Bool)

(declare-fun tp!1465602 () Bool)

(assert (=> b!5230119 (= e!3254855 tp!1465602)))

(assert (= (and d!1685996 condSetEmpty!33308) setIsEmpty!33308))

(assert (= (and d!1685996 (not condSetEmpty!33308)) setNonEmpty!33308))

(assert (= setNonEmpty!33308 b!5230119))

(declare-fun m!6276000 () Bool)

(assert (=> setNonEmpty!33308 m!6276000))

(assert (=> d!1685900 d!1685996))

(declare-fun d!1685998 () Bool)

(declare-fun lambda!262716 () Int)

(declare-fun exists!1976 ((InoxSet Context!8410) Int) Bool)

(assert (=> d!1685998 (= (nullableZipper!1244 lt!2144986) (exists!1976 lt!2144986 lambda!262716))))

(declare-fun bs!1214033 () Bool)

(assert (= bs!1214033 d!1685998))

(declare-fun m!6276016 () Bool)

(assert (=> bs!1214033 m!6276016))

(assert (=> b!5229920 d!1685998))

(declare-fun b!5230124 () Bool)

(declare-fun e!3254861 () Bool)

(declare-fun call!369789 () Bool)

(assert (=> b!5230124 (= e!3254861 call!369789)))

(declare-fun bm!369783 () Bool)

(declare-fun call!369790 () Bool)

(declare-fun c!903232 () Bool)

(declare-fun c!903231 () Bool)

(assert (=> bm!369783 (= call!369790 (validRegex!6557 (ite c!903231 (reg!15150 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))) (ite c!903232 (regOne!30155 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))) (regOne!30154 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292))))))))))

(declare-fun b!5230125 () Bool)

(declare-fun e!3254859 () Bool)

(declare-fun e!3254858 () Bool)

(assert (=> b!5230125 (= e!3254859 e!3254858)))

(declare-fun res!2220161 () Bool)

(assert (=> b!5230125 (= res!2220161 (not (nullable!4990 (reg!15150 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))))

(assert (=> b!5230125 (=> (not res!2220161) (not e!3254858))))

(declare-fun b!5230126 () Bool)

(declare-fun e!3254860 () Bool)

(assert (=> b!5230126 (= e!3254860 e!3254859)))

(assert (=> b!5230126 (= c!903231 ((_ is Star!14821) (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))

(declare-fun b!5230127 () Bool)

(declare-fun res!2220159 () Bool)

(assert (=> b!5230127 (=> (not res!2220159) (not e!3254861))))

(declare-fun call!369788 () Bool)

(assert (=> b!5230127 (= res!2220159 call!369788)))

(declare-fun e!3254864 () Bool)

(assert (=> b!5230127 (= e!3254864 e!3254861)))

(declare-fun bm!369784 () Bool)

(assert (=> bm!369784 (= call!369788 call!369790)))

(declare-fun bm!369785 () Bool)

(assert (=> bm!369785 (= call!369789 (validRegex!6557 (ite c!903232 (regTwo!30155 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))) (regTwo!30154 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))))

(declare-fun b!5230129 () Bool)

(assert (=> b!5230129 (= e!3254859 e!3254864)))

(assert (=> b!5230129 (= c!903232 ((_ is Union!14821) (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))

(declare-fun b!5230130 () Bool)

(assert (=> b!5230130 (= e!3254858 call!369790)))

(declare-fun b!5230131 () Bool)

(declare-fun res!2220158 () Bool)

(declare-fun e!3254862 () Bool)

(assert (=> b!5230131 (=> res!2220158 e!3254862)))

(assert (=> b!5230131 (= res!2220158 (not ((_ is Concat!23666) (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292))))))))

(assert (=> b!5230131 (= e!3254864 e!3254862)))

(declare-fun b!5230132 () Bool)

(declare-fun e!3254863 () Bool)

(assert (=> b!5230132 (= e!3254863 call!369789)))

(declare-fun d!1686008 () Bool)

(declare-fun res!2220157 () Bool)

(assert (=> d!1686008 (=> res!2220157 e!3254860)))

(assert (=> d!1686008 (= res!2220157 ((_ is ElementMatch!14821) (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))))))

(assert (=> d!1686008 (= (validRegex!6557 (ite c!903155 (reg!15150 r!7292) (ite c!903156 (regOne!30155 r!7292) (regOne!30154 r!7292)))) e!3254860)))

(declare-fun b!5230128 () Bool)

(assert (=> b!5230128 (= e!3254862 e!3254863)))

(declare-fun res!2220160 () Bool)

(assert (=> b!5230128 (=> (not res!2220160) (not e!3254863))))

(assert (=> b!5230128 (= res!2220160 call!369788)))

(assert (= (and d!1686008 (not res!2220157)) b!5230126))

(assert (= (and b!5230126 c!903231) b!5230125))

(assert (= (and b!5230126 (not c!903231)) b!5230129))

(assert (= (and b!5230125 res!2220161) b!5230130))

(assert (= (and b!5230129 c!903232) b!5230127))

(assert (= (and b!5230129 (not c!903232)) b!5230131))

(assert (= (and b!5230127 res!2220159) b!5230124))

(assert (= (and b!5230131 (not res!2220158)) b!5230128))

(assert (= (and b!5230128 res!2220160) b!5230132))

(assert (= (or b!5230124 b!5230132) bm!369785))

(assert (= (or b!5230127 b!5230128) bm!369784))

(assert (= (or b!5230130 bm!369784) bm!369783))

(declare-fun m!6276020 () Bool)

(assert (=> bm!369783 m!6276020))

(declare-fun m!6276022 () Bool)

(assert (=> b!5230125 m!6276022))

(declare-fun m!6276024 () Bool)

(assert (=> bm!369785 m!6276024))

(assert (=> bm!369763 d!1686008))

(declare-fun d!1686014 () Bool)

(declare-fun res!2220162 () Bool)

(declare-fun e!3254865 () Bool)

(assert (=> d!1686014 (=> res!2220162 e!3254865)))

(assert (=> d!1686014 (= res!2220162 ((_ is Nil!60638) (exprs!4705 setElem!33299)))))

(assert (=> d!1686014 (= (forall!14253 (exprs!4705 setElem!33299) lambda!262701) e!3254865)))

(declare-fun b!5230133 () Bool)

(declare-fun e!3254866 () Bool)

(assert (=> b!5230133 (= e!3254865 e!3254866)))

(declare-fun res!2220163 () Bool)

(assert (=> b!5230133 (=> (not res!2220163) (not e!3254866))))

(assert (=> b!5230133 (= res!2220163 (dynLambda!23964 lambda!262701 (h!67086 (exprs!4705 setElem!33299))))))

(declare-fun b!5230134 () Bool)

(assert (=> b!5230134 (= e!3254866 (forall!14253 (t!373939 (exprs!4705 setElem!33299)) lambda!262701))))

(assert (= (and d!1686014 (not res!2220162)) b!5230133))

(assert (= (and b!5230133 res!2220163) b!5230134))

(declare-fun b_lambda!202207 () Bool)

(assert (=> (not b_lambda!202207) (not b!5230133)))

(declare-fun m!6276026 () Bool)

(assert (=> b!5230133 m!6276026))

(declare-fun m!6276028 () Bool)

(assert (=> b!5230134 m!6276028))

(assert (=> d!1685936 d!1686014))

(declare-fun bm!369786 () Bool)

(declare-fun call!369794 () (InoxSet Context!8410))

(declare-fun call!369795 () (InoxSet Context!8410))

(assert (=> bm!369786 (= call!369794 call!369795)))

(declare-fun b!5230135 () Bool)

(declare-fun e!3254870 () (InoxSet Context!8410))

(declare-fun call!369791 () (InoxSet Context!8410))

(assert (=> b!5230135 (= e!3254870 ((_ map or) call!369791 call!369795))))

(declare-fun b!5230136 () Bool)

(declare-fun c!903237 () Bool)

(declare-fun e!3254871 () Bool)

(assert (=> b!5230136 (= c!903237 e!3254871)))

(declare-fun res!2220164 () Bool)

(assert (=> b!5230136 (=> (not res!2220164) (not e!3254871))))

(assert (=> b!5230136 (= res!2220164 ((_ is Concat!23666) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun e!3254868 () (InoxSet Context!8410))

(assert (=> b!5230136 (= e!3254868 e!3254870)))

(declare-fun b!5230137 () Bool)

(declare-fun e!3254869 () (InoxSet Context!8410))

(assert (=> b!5230137 (= e!3254869 call!369794)))

(declare-fun c!903235 () Bool)

(declare-fun bm!369787 () Bool)

(declare-fun call!369796 () List!60762)

(assert (=> bm!369787 (= call!369791 (derivationStepZipperDown!269 (ite c!903235 (regOne!30155 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (regOne!30154 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))) (ite c!903235 (ite c!903044 lt!2144978 (Context!8411 call!369703)) (Context!8411 call!369796)) (h!67088 s!2326)))))

(declare-fun bm!369788 () Bool)

(declare-fun call!369793 () (InoxSet Context!8410))

(assert (=> bm!369788 (= call!369795 call!369793)))

(declare-fun c!903233 () Bool)

(declare-fun bm!369789 () Bool)

(assert (=> bm!369789 (= call!369796 ($colon$colon!1294 (exprs!4705 (ite c!903044 lt!2144978 (Context!8411 call!369703))) (ite (or c!903237 c!903233) (regTwo!30154 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))))))

(declare-fun b!5230138 () Bool)

(declare-fun e!3254872 () (InoxSet Context!8410))

(assert (=> b!5230138 (= e!3254872 (store ((as const (Array Context!8410 Bool)) false) (ite c!903044 lt!2144978 (Context!8411 call!369703)) true))))

(declare-fun b!5230139 () Bool)

(assert (=> b!5230139 (= e!3254870 e!3254869)))

(assert (=> b!5230139 (= c!903233 ((_ is Concat!23666) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230140 () Bool)

(declare-fun e!3254867 () (InoxSet Context!8410))

(assert (=> b!5230140 (= e!3254867 call!369794)))

(declare-fun bm!369790 () Bool)

(declare-fun call!369792 () List!60762)

(assert (=> bm!369790 (= call!369793 (derivationStepZipperDown!269 (ite c!903235 (regTwo!30155 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (ite c!903237 (regTwo!30154 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (ite c!903233 (regOne!30154 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (reg!15150 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))))) (ite (or c!903235 c!903237) (ite c!903044 lt!2144978 (Context!8411 call!369703)) (Context!8411 call!369792)) (h!67088 s!2326)))))

(declare-fun b!5230141 () Bool)

(assert (=> b!5230141 (= e!3254871 (nullable!4990 (regOne!30154 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))))))

(declare-fun b!5230143 () Bool)

(declare-fun c!903236 () Bool)

(assert (=> b!5230143 (= c!903236 ((_ is Star!14821) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(assert (=> b!5230143 (= e!3254869 e!3254867)))

(declare-fun b!5230144 () Bool)

(assert (=> b!5230144 (= e!3254872 e!3254868)))

(assert (=> b!5230144 (= c!903235 ((_ is Union!14821) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun bm!369791 () Bool)

(assert (=> bm!369791 (= call!369792 call!369796)))

(declare-fun b!5230145 () Bool)

(assert (=> b!5230145 (= e!3254867 ((as const (Array Context!8410 Bool)) false))))

(declare-fun c!903234 () Bool)

(declare-fun d!1686016 () Bool)

(assert (=> d!1686016 (= c!903234 (and ((_ is ElementMatch!14821) (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (= (c!902967 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))) (h!67088 s!2326))))))

(assert (=> d!1686016 (= (derivationStepZipperDown!269 (ite c!903044 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))) (ite c!903044 lt!2144978 (Context!8411 call!369703)) (h!67088 s!2326)) e!3254872)))

(declare-fun b!5230142 () Bool)

(assert (=> b!5230142 (= e!3254868 ((_ map or) call!369791 call!369793))))

(assert (= (and d!1686016 c!903234) b!5230138))

(assert (= (and d!1686016 (not c!903234)) b!5230144))

(assert (= (and b!5230144 c!903235) b!5230142))

(assert (= (and b!5230144 (not c!903235)) b!5230136))

(assert (= (and b!5230136 res!2220164) b!5230141))

(assert (= (and b!5230136 c!903237) b!5230135))

(assert (= (and b!5230136 (not c!903237)) b!5230139))

(assert (= (and b!5230139 c!903233) b!5230137))

(assert (= (and b!5230139 (not c!903233)) b!5230143))

(assert (= (and b!5230143 c!903236) b!5230140))

(assert (= (and b!5230143 (not c!903236)) b!5230145))

(assert (= (or b!5230137 b!5230140) bm!369791))

(assert (= (or b!5230137 b!5230140) bm!369786))

(assert (= (or b!5230135 bm!369791) bm!369789))

(assert (= (or b!5230135 bm!369786) bm!369788))

(assert (= (or b!5230142 bm!369788) bm!369790))

(assert (= (or b!5230142 b!5230135) bm!369787))

(declare-fun m!6276030 () Bool)

(assert (=> bm!369787 m!6276030))

(declare-fun m!6276032 () Bool)

(assert (=> b!5230141 m!6276032))

(declare-fun m!6276034 () Bool)

(assert (=> b!5230138 m!6276034))

(declare-fun m!6276036 () Bool)

(assert (=> bm!369789 m!6276036))

(declare-fun m!6276038 () Bool)

(assert (=> bm!369790 m!6276038))

(assert (=> bm!369694 d!1686016))

(assert (=> d!1685864 d!1685868))

(assert (=> d!1685864 d!1685866))

(declare-fun d!1686018 () Bool)

(declare-fun e!3254875 () Bool)

(assert (=> d!1686018 (= (matchZipper!1065 ((_ map or) lt!2144993 lt!2144967) (t!373941 s!2326)) e!3254875)))

(declare-fun res!2220167 () Bool)

(assert (=> d!1686018 (=> res!2220167 e!3254875)))

(assert (=> d!1686018 (= res!2220167 (matchZipper!1065 lt!2144993 (t!373941 s!2326)))))

(assert (=> d!1686018 true))

(declare-fun _$48!857 () Unit!152582)

(assert (=> d!1686018 (= (choose!38901 lt!2144993 lt!2144967 (t!373941 s!2326)) _$48!857)))

(declare-fun b!5230148 () Bool)

(assert (=> b!5230148 (= e!3254875 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1686018 (not res!2220167)) b!5230148))

(assert (=> d!1686018 m!6275266))

(assert (=> d!1686018 m!6275204))

(assert (=> b!5230148 m!6275268))

(assert (=> d!1685864 d!1686018))

(declare-fun bs!1214035 () Bool)

(declare-fun d!1686020 () Bool)

(assert (= bs!1214035 (and d!1686020 d!1685874)))

(declare-fun lambda!262717 () Int)

(assert (=> bs!1214035 (= lambda!262717 lambda!262688)))

(declare-fun bs!1214036 () Bool)

(assert (= bs!1214036 (and d!1686020 d!1685872)))

(assert (=> bs!1214036 (= lambda!262717 lambda!262685)))

(declare-fun bs!1214037 () Bool)

(assert (= bs!1214037 (and d!1686020 b!5229197)))

(assert (=> bs!1214037 (= lambda!262717 lambda!262645)))

(declare-fun bs!1214038 () Bool)

(assert (= bs!1214038 (and d!1686020 d!1685936)))

(assert (=> bs!1214038 (= lambda!262717 lambda!262701)))

(declare-fun bs!1214039 () Bool)

(assert (= bs!1214039 (and d!1686020 d!1685816)))

(assert (=> bs!1214039 (= lambda!262717 lambda!262672)))

(declare-fun bs!1214040 () Bool)

(assert (= bs!1214040 (and d!1686020 d!1685930)))

(assert (=> bs!1214040 (= lambda!262717 lambda!262700)))

(assert (=> d!1686020 (= (inv!80299 (h!67087 (t!373940 zl!343))) (forall!14253 (exprs!4705 (h!67087 (t!373940 zl!343))) lambda!262717))))

(declare-fun bs!1214041 () Bool)

(assert (= bs!1214041 d!1686020))

(declare-fun m!6276040 () Bool)

(assert (=> bs!1214041 m!6276040))

(assert (=> b!5230027 d!1686020))

(declare-fun d!1686022 () Bool)

(declare-fun c!903240 () Bool)

(assert (=> d!1686022 (= c!903240 ((_ is Nil!60639) lt!2145094))))

(declare-fun e!3254880 () (InoxSet Context!8410))

(assert (=> d!1686022 (= (content!10761 lt!2145094) e!3254880)))

(declare-fun b!5230157 () Bool)

(assert (=> b!5230157 (= e!3254880 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5230158 () Bool)

(assert (=> b!5230158 (= e!3254880 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) (h!67087 lt!2145094) true) (content!10761 (t!373940 lt!2145094))))))

(assert (= (and d!1686022 c!903240) b!5230157))

(assert (= (and d!1686022 (not c!903240)) b!5230158))

(declare-fun m!6276042 () Bool)

(assert (=> b!5230158 m!6276042))

(declare-fun m!6276044 () Bool)

(assert (=> b!5230158 m!6276044))

(assert (=> b!5229952 d!1686022))

(declare-fun bs!1214042 () Bool)

(declare-fun d!1686024 () Bool)

(assert (= bs!1214042 (and d!1686024 d!1685998)))

(declare-fun lambda!262720 () Int)

(assert (=> bs!1214042 (= lambda!262720 lambda!262716)))

(assert (=> d!1686024 (= (nullableZipper!1244 lt!2144969) (exists!1976 lt!2144969 lambda!262720))))

(declare-fun bs!1214043 () Bool)

(assert (= bs!1214043 d!1686024))

(declare-fun m!6276046 () Bool)

(assert (=> bs!1214043 m!6276046))

(assert (=> b!5229537 d!1686024))

(declare-fun b!5230159 () Bool)

(declare-fun e!3254881 () Bool)

(assert (=> b!5230159 (= e!3254881 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))))))

(declare-fun e!3254882 () (InoxSet Context!8410))

(declare-fun call!369797 () (InoxSet Context!8410))

(declare-fun b!5230160 () Bool)

(assert (=> b!5230160 (= e!3254882 ((_ map or) call!369797 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))) (h!67088 s!2326))))))

(declare-fun b!5230161 () Bool)

(declare-fun e!3254883 () (InoxSet Context!8410))

(assert (=> b!5230161 (= e!3254882 e!3254883)))

(declare-fun c!903242 () Bool)

(assert (=> b!5230161 (= c!903242 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))))

(declare-fun d!1686026 () Bool)

(declare-fun c!903241 () Bool)

(assert (=> d!1686026 (= c!903241 e!3254881)))

(declare-fun res!2220172 () Bool)

(assert (=> d!1686026 (=> (not res!2220172) (not e!3254881))))

(assert (=> d!1686026 (= res!2220172 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))))

(assert (=> d!1686026 (= (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326)) e!3254882)))

(declare-fun b!5230162 () Bool)

(assert (=> b!5230162 (= e!3254883 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5230163 () Bool)

(assert (=> b!5230163 (= e!3254883 call!369797)))

(declare-fun bm!369792 () Bool)

(assert (=> bm!369792 (= call!369797 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))))))) (h!67088 s!2326)))))

(assert (= (and d!1686026 res!2220172) b!5230159))

(assert (= (and d!1686026 c!903241) b!5230160))

(assert (= (and d!1686026 (not c!903241)) b!5230161))

(assert (= (and b!5230161 c!903242) b!5230163))

(assert (= (and b!5230161 (not c!903242)) b!5230162))

(assert (= (or b!5230160 b!5230163) bm!369792))

(declare-fun m!6276048 () Bool)

(assert (=> b!5230159 m!6276048))

(declare-fun m!6276050 () Bool)

(assert (=> b!5230160 m!6276050))

(declare-fun m!6276052 () Bool)

(assert (=> bm!369792 m!6276052))

(assert (=> b!5229593 d!1686026))

(declare-fun b!5230164 () Bool)

(declare-fun e!3254887 () Bool)

(declare-fun call!369799 () Bool)

(assert (=> b!5230164 (= e!3254887 call!369799)))

(declare-fun c!903244 () Bool)

(declare-fun c!903243 () Bool)

(declare-fun call!369800 () Bool)

(declare-fun bm!369793 () Bool)

(assert (=> bm!369793 (= call!369800 (validRegex!6557 (ite c!903243 (reg!15150 lt!2145097) (ite c!903244 (regOne!30155 lt!2145097) (regOne!30154 lt!2145097)))))))

(declare-fun b!5230165 () Bool)

(declare-fun e!3254885 () Bool)

(declare-fun e!3254884 () Bool)

(assert (=> b!5230165 (= e!3254885 e!3254884)))

(declare-fun res!2220177 () Bool)

(assert (=> b!5230165 (= res!2220177 (not (nullable!4990 (reg!15150 lt!2145097))))))

(assert (=> b!5230165 (=> (not res!2220177) (not e!3254884))))

(declare-fun b!5230166 () Bool)

(declare-fun e!3254886 () Bool)

(assert (=> b!5230166 (= e!3254886 e!3254885)))

(assert (=> b!5230166 (= c!903243 ((_ is Star!14821) lt!2145097))))

(declare-fun b!5230167 () Bool)

(declare-fun res!2220175 () Bool)

(assert (=> b!5230167 (=> (not res!2220175) (not e!3254887))))

(declare-fun call!369798 () Bool)

(assert (=> b!5230167 (= res!2220175 call!369798)))

(declare-fun e!3254890 () Bool)

(assert (=> b!5230167 (= e!3254890 e!3254887)))

(declare-fun bm!369794 () Bool)

(assert (=> bm!369794 (= call!369798 call!369800)))

(declare-fun bm!369795 () Bool)

(assert (=> bm!369795 (= call!369799 (validRegex!6557 (ite c!903244 (regTwo!30155 lt!2145097) (regTwo!30154 lt!2145097))))))

(declare-fun b!5230169 () Bool)

(assert (=> b!5230169 (= e!3254885 e!3254890)))

(assert (=> b!5230169 (= c!903244 ((_ is Union!14821) lt!2145097))))

(declare-fun b!5230170 () Bool)

(assert (=> b!5230170 (= e!3254884 call!369800)))

(declare-fun b!5230171 () Bool)

(declare-fun res!2220174 () Bool)

(declare-fun e!3254888 () Bool)

(assert (=> b!5230171 (=> res!2220174 e!3254888)))

(assert (=> b!5230171 (= res!2220174 (not ((_ is Concat!23666) lt!2145097)))))

(assert (=> b!5230171 (= e!3254890 e!3254888)))

(declare-fun b!5230172 () Bool)

(declare-fun e!3254889 () Bool)

(assert (=> b!5230172 (= e!3254889 call!369799)))

(declare-fun d!1686028 () Bool)

(declare-fun res!2220173 () Bool)

(assert (=> d!1686028 (=> res!2220173 e!3254886)))

(assert (=> d!1686028 (= res!2220173 ((_ is ElementMatch!14821) lt!2145097))))

(assert (=> d!1686028 (= (validRegex!6557 lt!2145097) e!3254886)))

(declare-fun b!5230168 () Bool)

(assert (=> b!5230168 (= e!3254888 e!3254889)))

(declare-fun res!2220176 () Bool)

(assert (=> b!5230168 (=> (not res!2220176) (not e!3254889))))

(assert (=> b!5230168 (= res!2220176 call!369798)))

(assert (= (and d!1686028 (not res!2220173)) b!5230166))

(assert (= (and b!5230166 c!903243) b!5230165))

(assert (= (and b!5230166 (not c!903243)) b!5230169))

(assert (= (and b!5230165 res!2220177) b!5230170))

(assert (= (and b!5230169 c!903244) b!5230167))

(assert (= (and b!5230169 (not c!903244)) b!5230171))

(assert (= (and b!5230167 res!2220175) b!5230164))

(assert (= (and b!5230171 (not res!2220174)) b!5230168))

(assert (= (and b!5230168 res!2220176) b!5230172))

(assert (= (or b!5230164 b!5230172) bm!369795))

(assert (= (or b!5230167 b!5230168) bm!369794))

(assert (= (or b!5230170 bm!369794) bm!369793))

(declare-fun m!6276054 () Bool)

(assert (=> bm!369793 m!6276054))

(declare-fun m!6276056 () Bool)

(assert (=> b!5230165 m!6276056))

(declare-fun m!6276058 () Bool)

(assert (=> bm!369795 m!6276058))

(assert (=> d!1685930 d!1686028))

(declare-fun d!1686030 () Bool)

(declare-fun res!2220178 () Bool)

(declare-fun e!3254891 () Bool)

(assert (=> d!1686030 (=> res!2220178 e!3254891)))

(assert (=> d!1686030 (= res!2220178 ((_ is Nil!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> d!1686030 (= (forall!14253 (exprs!4705 (h!67087 zl!343)) lambda!262700) e!3254891)))

(declare-fun b!5230173 () Bool)

(declare-fun e!3254892 () Bool)

(assert (=> b!5230173 (= e!3254891 e!3254892)))

(declare-fun res!2220179 () Bool)

(assert (=> b!5230173 (=> (not res!2220179) (not e!3254892))))

(assert (=> b!5230173 (= res!2220179 (dynLambda!23964 lambda!262700 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230174 () Bool)

(assert (=> b!5230174 (= e!3254892 (forall!14253 (t!373939 (exprs!4705 (h!67087 zl!343))) lambda!262700))))

(assert (= (and d!1686030 (not res!2220178)) b!5230173))

(assert (= (and b!5230173 res!2220179) b!5230174))

(declare-fun b_lambda!202209 () Bool)

(assert (=> (not b_lambda!202209) (not b!5230173)))

(declare-fun m!6276060 () Bool)

(assert (=> b!5230173 m!6276060))

(declare-fun m!6276062 () Bool)

(assert (=> b!5230174 m!6276062))

(assert (=> d!1685930 d!1686030))

(declare-fun bs!1214048 () Bool)

(declare-fun d!1686032 () Bool)

(assert (= bs!1214048 (and d!1686032 d!1686020)))

(declare-fun lambda!262722 () Int)

(assert (=> bs!1214048 (= lambda!262722 lambda!262717)))

(declare-fun bs!1214050 () Bool)

(assert (= bs!1214050 (and d!1686032 d!1685874)))

(assert (=> bs!1214050 (= lambda!262722 lambda!262688)))

(declare-fun bs!1214051 () Bool)

(assert (= bs!1214051 (and d!1686032 d!1685872)))

(assert (=> bs!1214051 (= lambda!262722 lambda!262685)))

(declare-fun bs!1214052 () Bool)

(assert (= bs!1214052 (and d!1686032 b!5229197)))

(assert (=> bs!1214052 (= lambda!262722 lambda!262645)))

(declare-fun bs!1214053 () Bool)

(assert (= bs!1214053 (and d!1686032 d!1685936)))

(assert (=> bs!1214053 (= lambda!262722 lambda!262701)))

(declare-fun bs!1214054 () Bool)

(assert (= bs!1214054 (and d!1686032 d!1685816)))

(assert (=> bs!1214054 (= lambda!262722 lambda!262672)))

(declare-fun bs!1214055 () Bool)

(assert (= bs!1214055 (and d!1686032 d!1685930)))

(assert (=> bs!1214055 (= lambda!262722 lambda!262700)))

(declare-fun b!5230175 () Bool)

(declare-fun e!3254898 () Bool)

(declare-fun e!3254896 () Bool)

(assert (=> b!5230175 (= e!3254898 e!3254896)))

(declare-fun c!903245 () Bool)

(assert (=> b!5230175 (= c!903245 (isEmpty!32564 (t!373939 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5230176 () Bool)

(declare-fun e!3254893 () Bool)

(declare-fun lt!2145106 () Regex!14821)

(assert (=> b!5230176 (= e!3254893 (isUnion!221 lt!2145106))))

(declare-fun b!5230177 () Bool)

(declare-fun e!3254897 () Regex!14821)

(declare-fun e!3254894 () Regex!14821)

(assert (=> b!5230177 (= e!3254897 e!3254894)))

(declare-fun c!903246 () Bool)

(assert (=> b!5230177 (= c!903246 ((_ is Cons!60638) (t!373939 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5230179 () Bool)

(assert (=> b!5230179 (= e!3254897 (h!67086 (t!373939 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5230180 () Bool)

(assert (=> b!5230180 (= e!3254896 e!3254893)))

(declare-fun c!903247 () Bool)

(assert (=> b!5230180 (= c!903247 (isEmpty!32564 (tail!10305 (t!373939 (unfocusZipperList!263 zl!343)))))))

(declare-fun b!5230181 () Bool)

(assert (=> b!5230181 (= e!3254894 (Union!14821 (h!67086 (t!373939 (unfocusZipperList!263 zl!343))) (generalisedUnion!750 (t!373939 (t!373939 (unfocusZipperList!263 zl!343))))))))

(declare-fun b!5230182 () Bool)

(assert (=> b!5230182 (= e!3254894 EmptyLang!14821)))

(declare-fun b!5230183 () Bool)

(declare-fun e!3254895 () Bool)

(assert (=> b!5230183 (= e!3254895 (isEmpty!32564 (t!373939 (t!373939 (unfocusZipperList!263 zl!343)))))))

(declare-fun b!5230184 () Bool)

(assert (=> b!5230184 (= e!3254896 (isEmptyLang!789 lt!2145106))))

(assert (=> d!1686032 e!3254898))

(declare-fun res!2220181 () Bool)

(assert (=> d!1686032 (=> (not res!2220181) (not e!3254898))))

(assert (=> d!1686032 (= res!2220181 (validRegex!6557 lt!2145106))))

(assert (=> d!1686032 (= lt!2145106 e!3254897)))

(declare-fun c!903248 () Bool)

(assert (=> d!1686032 (= c!903248 e!3254895)))

(declare-fun res!2220180 () Bool)

(assert (=> d!1686032 (=> (not res!2220180) (not e!3254895))))

(assert (=> d!1686032 (= res!2220180 ((_ is Cons!60638) (t!373939 (unfocusZipperList!263 zl!343))))))

(assert (=> d!1686032 (forall!14253 (t!373939 (unfocusZipperList!263 zl!343)) lambda!262722)))

(assert (=> d!1686032 (= (generalisedUnion!750 (t!373939 (unfocusZipperList!263 zl!343))) lt!2145106)))

(declare-fun b!5230178 () Bool)

(assert (=> b!5230178 (= e!3254893 (= lt!2145106 (head!11208 (t!373939 (unfocusZipperList!263 zl!343)))))))

(assert (= (and d!1686032 res!2220180) b!5230183))

(assert (= (and d!1686032 c!903248) b!5230179))

(assert (= (and d!1686032 (not c!903248)) b!5230177))

(assert (= (and b!5230177 c!903246) b!5230181))

(assert (= (and b!5230177 (not c!903246)) b!5230182))

(assert (= (and d!1686032 res!2220181) b!5230175))

(assert (= (and b!5230175 c!903245) b!5230184))

(assert (= (and b!5230175 (not c!903245)) b!5230180))

(assert (= (and b!5230180 c!903247) b!5230178))

(assert (= (and b!5230180 (not c!903247)) b!5230176))

(declare-fun m!6276064 () Bool)

(assert (=> b!5230184 m!6276064))

(declare-fun m!6276066 () Bool)

(assert (=> b!5230178 m!6276066))

(assert (=> b!5230175 m!6275744))

(declare-fun m!6276068 () Bool)

(assert (=> b!5230183 m!6276068))

(declare-fun m!6276070 () Bool)

(assert (=> b!5230181 m!6276070))

(declare-fun m!6276072 () Bool)

(assert (=> b!5230176 m!6276072))

(declare-fun m!6276074 () Bool)

(assert (=> d!1686032 m!6276074))

(declare-fun m!6276076 () Bool)

(assert (=> d!1686032 m!6276076))

(declare-fun m!6276078 () Bool)

(assert (=> b!5230180 m!6276078))

(assert (=> b!5230180 m!6276078))

(declare-fun m!6276080 () Bool)

(assert (=> b!5230180 m!6276080))

(assert (=> b!5229869 d!1686032))

(declare-fun b!5230185 () Bool)

(declare-fun e!3254902 () Bool)

(declare-fun call!369802 () Bool)

(assert (=> b!5230185 (= e!3254902 call!369802)))

(declare-fun call!369803 () Bool)

(declare-fun c!903249 () Bool)

(declare-fun bm!369796 () Bool)

(declare-fun c!903250 () Bool)

(assert (=> bm!369796 (= call!369803 (validRegex!6557 (ite c!903249 (reg!15150 (h!67086 lt!2144994)) (ite c!903250 (regOne!30155 (h!67086 lt!2144994)) (regOne!30154 (h!67086 lt!2144994))))))))

(declare-fun b!5230186 () Bool)

(declare-fun e!3254900 () Bool)

(declare-fun e!3254899 () Bool)

(assert (=> b!5230186 (= e!3254900 e!3254899)))

(declare-fun res!2220186 () Bool)

(assert (=> b!5230186 (= res!2220186 (not (nullable!4990 (reg!15150 (h!67086 lt!2144994)))))))

(assert (=> b!5230186 (=> (not res!2220186) (not e!3254899))))

(declare-fun b!5230187 () Bool)

(declare-fun e!3254901 () Bool)

(assert (=> b!5230187 (= e!3254901 e!3254900)))

(assert (=> b!5230187 (= c!903249 ((_ is Star!14821) (h!67086 lt!2144994)))))

(declare-fun b!5230188 () Bool)

(declare-fun res!2220184 () Bool)

(assert (=> b!5230188 (=> (not res!2220184) (not e!3254902))))

(declare-fun call!369801 () Bool)

(assert (=> b!5230188 (= res!2220184 call!369801)))

(declare-fun e!3254905 () Bool)

(assert (=> b!5230188 (= e!3254905 e!3254902)))

(declare-fun bm!369797 () Bool)

(assert (=> bm!369797 (= call!369801 call!369803)))

(declare-fun bm!369798 () Bool)

(assert (=> bm!369798 (= call!369802 (validRegex!6557 (ite c!903250 (regTwo!30155 (h!67086 lt!2144994)) (regTwo!30154 (h!67086 lt!2144994)))))))

(declare-fun b!5230190 () Bool)

(assert (=> b!5230190 (= e!3254900 e!3254905)))

(assert (=> b!5230190 (= c!903250 ((_ is Union!14821) (h!67086 lt!2144994)))))

(declare-fun b!5230191 () Bool)

(assert (=> b!5230191 (= e!3254899 call!369803)))

(declare-fun b!5230192 () Bool)

(declare-fun res!2220183 () Bool)

(declare-fun e!3254903 () Bool)

(assert (=> b!5230192 (=> res!2220183 e!3254903)))

(assert (=> b!5230192 (= res!2220183 (not ((_ is Concat!23666) (h!67086 lt!2144994))))))

(assert (=> b!5230192 (= e!3254905 e!3254903)))

(declare-fun b!5230193 () Bool)

(declare-fun e!3254904 () Bool)

(assert (=> b!5230193 (= e!3254904 call!369802)))

(declare-fun d!1686034 () Bool)

(declare-fun res!2220182 () Bool)

(assert (=> d!1686034 (=> res!2220182 e!3254901)))

(assert (=> d!1686034 (= res!2220182 ((_ is ElementMatch!14821) (h!67086 lt!2144994)))))

(assert (=> d!1686034 (= (validRegex!6557 (h!67086 lt!2144994)) e!3254901)))

(declare-fun b!5230189 () Bool)

(assert (=> b!5230189 (= e!3254903 e!3254904)))

(declare-fun res!2220185 () Bool)

(assert (=> b!5230189 (=> (not res!2220185) (not e!3254904))))

(assert (=> b!5230189 (= res!2220185 call!369801)))

(assert (= (and d!1686034 (not res!2220182)) b!5230187))

(assert (= (and b!5230187 c!903249) b!5230186))

(assert (= (and b!5230187 (not c!903249)) b!5230190))

(assert (= (and b!5230186 res!2220186) b!5230191))

(assert (= (and b!5230190 c!903250) b!5230188))

(assert (= (and b!5230190 (not c!903250)) b!5230192))

(assert (= (and b!5230188 res!2220184) b!5230185))

(assert (= (and b!5230192 (not res!2220183)) b!5230189))

(assert (= (and b!5230189 res!2220185) b!5230193))

(assert (= (or b!5230185 b!5230193) bm!369798))

(assert (= (or b!5230188 b!5230189) bm!369797))

(assert (= (or b!5230191 bm!369797) bm!369796))

(declare-fun m!6276084 () Bool)

(assert (=> bm!369796 m!6276084))

(declare-fun m!6276086 () Bool)

(assert (=> b!5230186 m!6276086))

(declare-fun m!6276088 () Bool)

(assert (=> bm!369798 m!6276088))

(assert (=> bs!1214001 d!1686034))

(declare-fun d!1686038 () Bool)

(declare-fun res!2220200 () Bool)

(declare-fun e!3254929 () Bool)

(assert (=> d!1686038 (=> res!2220200 e!3254929)))

(assert (=> d!1686038 (= res!2220200 ((_ is EmptyExpr!14821) (regTwo!30155 (regOne!30154 r!7292))))))

(assert (=> d!1686038 (= (nullableFct!1396 (regTwo!30155 (regOne!30154 r!7292))) e!3254929)))

(declare-fun b!5230219 () Bool)

(declare-fun e!3254924 () Bool)

(declare-fun e!3254927 () Bool)

(assert (=> b!5230219 (= e!3254924 e!3254927)))

(declare-fun res!2220198 () Bool)

(assert (=> b!5230219 (=> res!2220198 e!3254927)))

(assert (=> b!5230219 (= res!2220198 ((_ is Star!14821) (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun bm!369809 () Bool)

(declare-fun call!369815 () Bool)

(declare-fun c!903258 () Bool)

(assert (=> bm!369809 (= call!369815 (nullable!4990 (ite c!903258 (regOne!30155 (regTwo!30155 (regOne!30154 r!7292))) (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230220 () Bool)

(declare-fun e!3254928 () Bool)

(declare-fun call!369814 () Bool)

(assert (=> b!5230220 (= e!3254928 call!369814)))

(declare-fun b!5230221 () Bool)

(declare-fun e!3254925 () Bool)

(assert (=> b!5230221 (= e!3254927 e!3254925)))

(assert (=> b!5230221 (= c!903258 ((_ is Union!14821) (regTwo!30155 (regOne!30154 r!7292))))))

(declare-fun b!5230222 () Bool)

(declare-fun e!3254926 () Bool)

(assert (=> b!5230222 (= e!3254925 e!3254926)))

(declare-fun res!2220201 () Bool)

(assert (=> b!5230222 (= res!2220201 call!369815)))

(assert (=> b!5230222 (=> (not res!2220201) (not e!3254926))))

(declare-fun b!5230223 () Bool)

(assert (=> b!5230223 (= e!3254929 e!3254924)))

(declare-fun res!2220199 () Bool)

(assert (=> b!5230223 (=> (not res!2220199) (not e!3254924))))

(assert (=> b!5230223 (= res!2220199 (and (not ((_ is EmptyLang!14821) (regTwo!30155 (regOne!30154 r!7292)))) (not ((_ is ElementMatch!14821) (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230224 () Bool)

(assert (=> b!5230224 (= e!3254925 e!3254928)))

(declare-fun res!2220202 () Bool)

(assert (=> b!5230224 (= res!2220202 call!369815)))

(assert (=> b!5230224 (=> res!2220202 e!3254928)))

(declare-fun bm!369810 () Bool)

(assert (=> bm!369810 (= call!369814 (nullable!4990 (ite c!903258 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230225 () Bool)

(assert (=> b!5230225 (= e!3254926 call!369814)))

(assert (= (and d!1686038 (not res!2220200)) b!5230223))

(assert (= (and b!5230223 res!2220199) b!5230219))

(assert (= (and b!5230219 (not res!2220198)) b!5230221))

(assert (= (and b!5230221 c!903258) b!5230224))

(assert (= (and b!5230221 (not c!903258)) b!5230222))

(assert (= (and b!5230224 (not res!2220202)) b!5230220))

(assert (= (and b!5230222 res!2220201) b!5230225))

(assert (= (or b!5230220 b!5230225) bm!369810))

(assert (= (or b!5230224 b!5230222) bm!369809))

(declare-fun m!6276100 () Bool)

(assert (=> bm!369809 m!6276100))

(declare-fun m!6276102 () Bool)

(assert (=> bm!369810 m!6276102))

(assert (=> d!1685910 d!1686038))

(declare-fun d!1686044 () Bool)

(assert (=> d!1686044 (= (nullable!4990 (h!67086 (exprs!4705 lt!2144985))) (nullableFct!1396 (h!67086 (exprs!4705 lt!2144985))))))

(declare-fun bs!1214060 () Bool)

(assert (= bs!1214060 d!1686044))

(declare-fun m!6276104 () Bool)

(assert (=> bs!1214060 m!6276104))

(assert (=> b!5229929 d!1686044))

(declare-fun bs!1214061 () Bool)

(declare-fun d!1686046 () Bool)

(assert (= bs!1214061 (and d!1686046 d!1685998)))

(declare-fun lambda!262723 () Int)

(assert (=> bs!1214061 (= lambda!262723 lambda!262716)))

(declare-fun bs!1214062 () Bool)

(assert (= bs!1214062 (and d!1686046 d!1686024)))

(assert (=> bs!1214062 (= lambda!262723 lambda!262720)))

(assert (=> d!1686046 (= (nullableZipper!1244 ((_ map or) lt!2144972 lt!2144967)) (exists!1976 ((_ map or) lt!2144972 lt!2144967) lambda!262723))))

(declare-fun bs!1214063 () Bool)

(assert (= bs!1214063 d!1686046))

(declare-fun m!6276106 () Bool)

(assert (=> bs!1214063 m!6276106))

(assert (=> b!5229984 d!1686046))

(assert (=> bs!1214003 d!1685840))

(declare-fun bs!1214064 () Bool)

(declare-fun d!1686048 () Bool)

(assert (= bs!1214064 (and d!1686048 d!1685998)))

(declare-fun lambda!262724 () Int)

(assert (=> bs!1214064 (= lambda!262724 lambda!262716)))

(declare-fun bs!1214065 () Bool)

(assert (= bs!1214065 (and d!1686048 d!1686024)))

(assert (=> bs!1214065 (= lambda!262724 lambda!262720)))

(declare-fun bs!1214066 () Bool)

(assert (= bs!1214066 (and d!1686048 d!1686046)))

(assert (=> bs!1214066 (= lambda!262724 lambda!262723)))

(assert (=> d!1686048 (= (nullableZipper!1244 z!1189) (exists!1976 z!1189 lambda!262724))))

(declare-fun bs!1214067 () Bool)

(assert (= bs!1214067 d!1686048))

(declare-fun m!6276108 () Bool)

(assert (=> bs!1214067 m!6276108))

(assert (=> b!5229922 d!1686048))

(assert (=> d!1685892 d!1685904))

(declare-fun d!1686050 () Bool)

(assert (=> d!1686050 (= (flatMap!548 lt!2144986 lambda!262644) (dynLambda!23962 lambda!262644 lt!2144990))))

(assert (=> d!1686050 true))

(declare-fun _$13!1751 () Unit!152582)

(assert (=> d!1686050 (= (choose!38896 lt!2144986 lt!2144990 lambda!262644) _$13!1751)))

(declare-fun b_lambda!202211 () Bool)

(assert (=> (not b_lambda!202211) (not d!1686050)))

(declare-fun bs!1214068 () Bool)

(assert (= bs!1214068 d!1686050))

(assert (=> bs!1214068 m!6275254))

(assert (=> bs!1214068 m!6275808))

(assert (=> d!1685892 d!1686050))

(declare-fun d!1686052 () Bool)

(assert (=> d!1686052 (= (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))) (nullableFct!1396 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun bs!1214069 () Bool)

(assert (= bs!1214069 d!1686052))

(declare-fun m!6276110 () Bool)

(assert (=> bs!1214069 m!6276110))

(assert (=> b!5229622 d!1686052))

(declare-fun bs!1214071 () Bool)

(declare-fun b!5230233 () Bool)

(assert (= bs!1214071 (and b!5230233 d!1685888)))

(declare-fun lambda!262728 () Int)

(assert (=> bs!1214071 (not (= lambda!262728 lambda!262697))))

(declare-fun bs!1214072 () Bool)

(assert (= bs!1214072 (and b!5230233 d!1685886)))

(assert (=> bs!1214072 (not (= lambda!262728 lambda!262691))))

(declare-fun bs!1214073 () Bool)

(assert (= bs!1214073 (and b!5230233 b!5229760)))

(assert (=> bs!1214073 (not (= lambda!262728 lambda!262682))))

(declare-fun bs!1214074 () Bool)

(assert (= bs!1214074 (and b!5230233 b!5229208)))

(assert (=> bs!1214074 (not (= lambda!262728 lambda!262643))))

(assert (=> bs!1214074 (not (= lambda!262728 lambda!262642))))

(assert (=> bs!1214071 (not (= lambda!262728 lambda!262696))))

(declare-fun bs!1214075 () Bool)

(assert (= bs!1214075 (and b!5230233 b!5229763)))

(assert (=> bs!1214075 (= (and (= (reg!15150 (regOne!30155 r!7292)) (reg!15150 r!7292)) (= (regOne!30155 r!7292) r!7292)) (= lambda!262728 lambda!262681))))

(assert (=> b!5230233 true))

(assert (=> b!5230233 true))

(declare-fun bs!1214076 () Bool)

(declare-fun b!5230230 () Bool)

(assert (= bs!1214076 (and b!5230230 d!1685888)))

(declare-fun lambda!262729 () Int)

(assert (=> bs!1214076 (= (and (= (regOne!30154 (regOne!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regOne!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262729 lambda!262697))))

(declare-fun bs!1214077 () Bool)

(assert (= bs!1214077 (and b!5230230 d!1685886)))

(assert (=> bs!1214077 (not (= lambda!262729 lambda!262691))))

(declare-fun bs!1214078 () Bool)

(assert (= bs!1214078 (and b!5230230 b!5230233)))

(assert (=> bs!1214078 (not (= lambda!262729 lambda!262728))))

(declare-fun bs!1214079 () Bool)

(assert (= bs!1214079 (and b!5230230 b!5229760)))

(assert (=> bs!1214079 (= (and (= (regOne!30154 (regOne!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regOne!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262729 lambda!262682))))

(declare-fun bs!1214080 () Bool)

(assert (= bs!1214080 (and b!5230230 b!5229208)))

(assert (=> bs!1214080 (= (and (= (regOne!30154 (regOne!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regOne!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262729 lambda!262643))))

(assert (=> bs!1214080 (not (= lambda!262729 lambda!262642))))

(assert (=> bs!1214076 (not (= lambda!262729 lambda!262696))))

(declare-fun bs!1214081 () Bool)

(assert (= bs!1214081 (and b!5230230 b!5229763)))

(assert (=> bs!1214081 (not (= lambda!262729 lambda!262681))))

(assert (=> b!5230230 true))

(assert (=> b!5230230 true))

(declare-fun b!5230226 () Bool)

(declare-fun e!3254934 () Bool)

(assert (=> b!5230226 (= e!3254934 (matchRSpec!1924 (regTwo!30155 (regOne!30155 r!7292)) s!2326))))

(declare-fun b!5230227 () Bool)

(declare-fun c!903263 () Bool)

(assert (=> b!5230227 (= c!903263 ((_ is ElementMatch!14821) (regOne!30155 r!7292)))))

(declare-fun e!3254931 () Bool)

(declare-fun e!3254933 () Bool)

(assert (=> b!5230227 (= e!3254931 e!3254933)))

(declare-fun b!5230228 () Bool)

(declare-fun e!3254935 () Bool)

(assert (=> b!5230228 (= e!3254935 e!3254934)))

(declare-fun res!2220205 () Bool)

(assert (=> b!5230228 (= res!2220205 (matchRSpec!1924 (regOne!30155 (regOne!30155 r!7292)) s!2326))))

(assert (=> b!5230228 (=> res!2220205 e!3254934)))

(declare-fun c!903262 () Bool)

(declare-fun bm!369811 () Bool)

(declare-fun call!369817 () Bool)

(assert (=> bm!369811 (= call!369817 (Exists!2002 (ite c!903262 lambda!262728 lambda!262729)))))

(declare-fun b!5230229 () Bool)

(declare-fun e!3254930 () Bool)

(declare-fun call!369816 () Bool)

(assert (=> b!5230229 (= e!3254930 call!369816)))

(declare-fun e!3254936 () Bool)

(assert (=> b!5230230 (= e!3254936 call!369817)))

(declare-fun d!1686054 () Bool)

(declare-fun c!903264 () Bool)

(assert (=> d!1686054 (= c!903264 ((_ is EmptyExpr!14821) (regOne!30155 r!7292)))))

(assert (=> d!1686054 (= (matchRSpec!1924 (regOne!30155 r!7292) s!2326) e!3254930)))

(declare-fun b!5230231 () Bool)

(declare-fun c!903261 () Bool)

(assert (=> b!5230231 (= c!903261 ((_ is Union!14821) (regOne!30155 r!7292)))))

(assert (=> b!5230231 (= e!3254933 e!3254935)))

(declare-fun b!5230232 () Bool)

(assert (=> b!5230232 (= e!3254933 (= s!2326 (Cons!60640 (c!902967 (regOne!30155 r!7292)) Nil!60640)))))

(declare-fun e!3254932 () Bool)

(assert (=> b!5230233 (= e!3254932 call!369817)))

(declare-fun b!5230234 () Bool)

(declare-fun res!2220203 () Bool)

(assert (=> b!5230234 (=> res!2220203 e!3254932)))

(assert (=> b!5230234 (= res!2220203 call!369816)))

(assert (=> b!5230234 (= e!3254936 e!3254932)))

(declare-fun bm!369812 () Bool)

(assert (=> bm!369812 (= call!369816 (isEmpty!32567 s!2326))))

(declare-fun b!5230235 () Bool)

(assert (=> b!5230235 (= e!3254930 e!3254931)))

(declare-fun res!2220204 () Bool)

(assert (=> b!5230235 (= res!2220204 (not ((_ is EmptyLang!14821) (regOne!30155 r!7292))))))

(assert (=> b!5230235 (=> (not res!2220204) (not e!3254931))))

(declare-fun b!5230236 () Bool)

(assert (=> b!5230236 (= e!3254935 e!3254936)))

(assert (=> b!5230236 (= c!903262 ((_ is Star!14821) (regOne!30155 r!7292)))))

(assert (= (and d!1686054 c!903264) b!5230229))

(assert (= (and d!1686054 (not c!903264)) b!5230235))

(assert (= (and b!5230235 res!2220204) b!5230227))

(assert (= (and b!5230227 c!903263) b!5230232))

(assert (= (and b!5230227 (not c!903263)) b!5230231))

(assert (= (and b!5230231 c!903261) b!5230228))

(assert (= (and b!5230231 (not c!903261)) b!5230236))

(assert (= (and b!5230228 (not res!2220205)) b!5230226))

(assert (= (and b!5230236 c!903262) b!5230234))

(assert (= (and b!5230236 (not c!903262)) b!5230230))

(assert (= (and b!5230234 (not res!2220203)) b!5230233))

(assert (= (or b!5230233 b!5230230) bm!369811))

(assert (= (or b!5230229 b!5230234) bm!369812))

(declare-fun m!6276130 () Bool)

(assert (=> b!5230226 m!6276130))

(declare-fun m!6276132 () Bool)

(assert (=> b!5230228 m!6276132))

(declare-fun m!6276134 () Bool)

(assert (=> bm!369811 m!6276134))

(assert (=> bm!369812 m!6275612))

(assert (=> b!5229758 d!1686054))

(declare-fun d!1686062 () Bool)

(assert (=> d!1686062 (= (nullable!4990 (h!67086 (exprs!4705 lt!2144990))) (nullableFct!1396 (h!67086 (exprs!4705 lt!2144990))))))

(declare-fun bs!1214082 () Bool)

(assert (= bs!1214082 d!1686062))

(declare-fun m!6276136 () Bool)

(assert (=> bs!1214082 m!6276136))

(assert (=> b!5229924 d!1686062))

(declare-fun d!1686064 () Bool)

(assert (=> d!1686064 (= (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))) (nullableFct!1396 (h!67086 (exprs!4705 (Context!8411 (Cons!60638 (h!67086 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun bs!1214083 () Bool)

(assert (= bs!1214083 d!1686064))

(declare-fun m!6276138 () Bool)

(assert (=> bs!1214083 m!6276138))

(assert (=> b!5229592 d!1686064))

(declare-fun b!5230258 () Bool)

(declare-fun e!3254950 () Bool)

(assert (=> b!5230258 (= e!3254950 (= (head!11207 (tail!10304 s!2326)) (c!902967 (derivativeStep!4066 r!7292 (head!11207 s!2326)))))))

(declare-fun b!5230259 () Bool)

(declare-fun e!3254953 () Bool)

(declare-fun e!3254949 () Bool)

(assert (=> b!5230259 (= e!3254953 e!3254949)))

(declare-fun res!2220210 () Bool)

(assert (=> b!5230259 (=> (not res!2220210) (not e!3254949))))

(declare-fun lt!2145107 () Bool)

(assert (=> b!5230259 (= res!2220210 (not lt!2145107))))

(declare-fun b!5230260 () Bool)

(declare-fun e!3254955 () Bool)

(declare-fun call!369826 () Bool)

(assert (=> b!5230260 (= e!3254955 (= lt!2145107 call!369826))))

(declare-fun bm!369821 () Bool)

(assert (=> bm!369821 (= call!369826 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun b!5230261 () Bool)

(declare-fun res!2220211 () Bool)

(assert (=> b!5230261 (=> res!2220211 e!3254953)))

(assert (=> b!5230261 (= res!2220211 e!3254950)))

(declare-fun res!2220209 () Bool)

(assert (=> b!5230261 (=> (not res!2220209) (not e!3254950))))

(assert (=> b!5230261 (= res!2220209 lt!2145107)))

(declare-fun b!5230262 () Bool)

(declare-fun e!3254954 () Bool)

(assert (=> b!5230262 (= e!3254954 (not lt!2145107))))

(declare-fun b!5230263 () Bool)

(declare-fun e!3254952 () Bool)

(assert (=> b!5230263 (= e!3254949 e!3254952)))

(declare-fun res!2220214 () Bool)

(assert (=> b!5230263 (=> res!2220214 e!3254952)))

(assert (=> b!5230263 (= res!2220214 call!369826)))

(declare-fun b!5230264 () Bool)

(declare-fun res!2220216 () Bool)

(assert (=> b!5230264 (=> (not res!2220216) (not e!3254950))))

(assert (=> b!5230264 (= res!2220216 (not call!369826))))

(declare-fun d!1686066 () Bool)

(assert (=> d!1686066 e!3254955))

(declare-fun c!903274 () Bool)

(assert (=> d!1686066 (= c!903274 ((_ is EmptyExpr!14821) (derivativeStep!4066 r!7292 (head!11207 s!2326))))))

(declare-fun e!3254951 () Bool)

(assert (=> d!1686066 (= lt!2145107 e!3254951)))

(declare-fun c!903276 () Bool)

(assert (=> d!1686066 (= c!903276 (isEmpty!32567 (tail!10304 s!2326)))))

(assert (=> d!1686066 (validRegex!6557 (derivativeStep!4066 r!7292 (head!11207 s!2326)))))

(assert (=> d!1686066 (= (matchR!7006 (derivativeStep!4066 r!7292 (head!11207 s!2326)) (tail!10304 s!2326)) lt!2145107)))

(declare-fun b!5230265 () Bool)

(assert (=> b!5230265 (= e!3254951 (nullable!4990 (derivativeStep!4066 r!7292 (head!11207 s!2326))))))

(declare-fun b!5230266 () Bool)

(assert (=> b!5230266 (= e!3254955 e!3254954)))

(declare-fun c!903275 () Bool)

(assert (=> b!5230266 (= c!903275 ((_ is EmptyLang!14821) (derivativeStep!4066 r!7292 (head!11207 s!2326))))))

(declare-fun b!5230267 () Bool)

(declare-fun res!2220212 () Bool)

(assert (=> b!5230267 (=> (not res!2220212) (not e!3254950))))

(assert (=> b!5230267 (= res!2220212 (isEmpty!32567 (tail!10304 (tail!10304 s!2326))))))

(declare-fun b!5230268 () Bool)

(declare-fun res!2220215 () Bool)

(assert (=> b!5230268 (=> res!2220215 e!3254952)))

(assert (=> b!5230268 (= res!2220215 (not (isEmpty!32567 (tail!10304 (tail!10304 s!2326)))))))

(declare-fun b!5230269 () Bool)

(assert (=> b!5230269 (= e!3254952 (not (= (head!11207 (tail!10304 s!2326)) (c!902967 (derivativeStep!4066 r!7292 (head!11207 s!2326))))))))

(declare-fun b!5230270 () Bool)

(declare-fun res!2220213 () Bool)

(assert (=> b!5230270 (=> res!2220213 e!3254953)))

(assert (=> b!5230270 (= res!2220213 (not ((_ is ElementMatch!14821) (derivativeStep!4066 r!7292 (head!11207 s!2326)))))))

(assert (=> b!5230270 (= e!3254954 e!3254953)))

(declare-fun b!5230271 () Bool)

(assert (=> b!5230271 (= e!3254951 (matchR!7006 (derivativeStep!4066 (derivativeStep!4066 r!7292 (head!11207 s!2326)) (head!11207 (tail!10304 s!2326))) (tail!10304 (tail!10304 s!2326))))))

(assert (= (and d!1686066 c!903276) b!5230265))

(assert (= (and d!1686066 (not c!903276)) b!5230271))

(assert (= (and d!1686066 c!903274) b!5230260))

(assert (= (and d!1686066 (not c!903274)) b!5230266))

(assert (= (and b!5230266 c!903275) b!5230262))

(assert (= (and b!5230266 (not c!903275)) b!5230270))

(assert (= (and b!5230270 (not res!2220213)) b!5230261))

(assert (= (and b!5230261 res!2220209) b!5230264))

(assert (= (and b!5230264 res!2220216) b!5230267))

(assert (= (and b!5230267 res!2220212) b!5230258))

(assert (= (and b!5230261 (not res!2220211)) b!5230259))

(assert (= (and b!5230259 res!2220210) b!5230263))

(assert (= (and b!5230263 (not res!2220214)) b!5230268))

(assert (= (and b!5230268 (not res!2220215)) b!5230269))

(assert (= (or b!5230260 b!5230263 b!5230264) bm!369821))

(assert (=> b!5230271 m!6275620))

(declare-fun m!6276146 () Bool)

(assert (=> b!5230271 m!6276146))

(assert (=> b!5230271 m!6275708))

(assert (=> b!5230271 m!6276146))

(declare-fun m!6276148 () Bool)

(assert (=> b!5230271 m!6276148))

(assert (=> b!5230271 m!6275620))

(declare-fun m!6276150 () Bool)

(assert (=> b!5230271 m!6276150))

(assert (=> b!5230271 m!6276148))

(assert (=> b!5230271 m!6276150))

(declare-fun m!6276152 () Bool)

(assert (=> b!5230271 m!6276152))

(assert (=> b!5230267 m!6275620))

(assert (=> b!5230267 m!6276150))

(assert (=> b!5230267 m!6276150))

(declare-fun m!6276154 () Bool)

(assert (=> b!5230267 m!6276154))

(assert (=> b!5230269 m!6275620))

(assert (=> b!5230269 m!6276146))

(assert (=> d!1686066 m!6275620))

(assert (=> d!1686066 m!6275712))

(assert (=> d!1686066 m!6275708))

(declare-fun m!6276156 () Bool)

(assert (=> d!1686066 m!6276156))

(assert (=> b!5230268 m!6275620))

(assert (=> b!5230268 m!6276150))

(assert (=> b!5230268 m!6276150))

(assert (=> b!5230268 m!6276154))

(assert (=> b!5230258 m!6275620))

(assert (=> b!5230258 m!6276146))

(assert (=> bm!369821 m!6275620))

(assert (=> bm!369821 m!6275712))

(assert (=> b!5230265 m!6275708))

(declare-fun m!6276158 () Bool)

(assert (=> b!5230265 m!6276158))

(assert (=> b!5229808 d!1686066))

(declare-fun b!5230315 () Bool)

(declare-fun e!3254987 () Regex!14821)

(assert (=> b!5230315 (= e!3254987 EmptyLang!14821)))

(declare-fun b!5230316 () Bool)

(declare-fun c!903295 () Bool)

(assert (=> b!5230316 (= c!903295 ((_ is Union!14821) r!7292))))

(declare-fun e!3254986 () Regex!14821)

(declare-fun e!3254989 () Regex!14821)

(assert (=> b!5230316 (= e!3254986 e!3254989)))

(declare-fun bm!369836 () Bool)

(declare-fun call!369843 () Regex!14821)

(declare-fun call!369841 () Regex!14821)

(assert (=> bm!369836 (= call!369843 call!369841)))

(declare-fun b!5230317 () Bool)

(declare-fun e!3254985 () Regex!14821)

(assert (=> b!5230317 (= e!3254989 e!3254985)))

(declare-fun c!903294 () Bool)

(assert (=> b!5230317 (= c!903294 ((_ is Star!14821) r!7292))))

(declare-fun call!369844 () Regex!14821)

(declare-fun e!3254988 () Regex!14821)

(declare-fun b!5230318 () Bool)

(assert (=> b!5230318 (= e!3254988 (Union!14821 (Concat!23666 call!369844 (regTwo!30154 r!7292)) call!369843))))

(declare-fun b!5230319 () Bool)

(declare-fun call!369842 () Regex!14821)

(assert (=> b!5230319 (= e!3254989 (Union!14821 call!369841 call!369842))))

(declare-fun bm!369837 () Bool)

(assert (=> bm!369837 (= call!369842 (derivativeStep!4066 (ite c!903295 (regTwo!30155 r!7292) (ite c!903294 (reg!15150 r!7292) (regOne!30154 r!7292))) (head!11207 s!2326)))))

(declare-fun b!5230320 () Bool)

(declare-fun c!903291 () Bool)

(assert (=> b!5230320 (= c!903291 (nullable!4990 (regOne!30154 r!7292)))))

(assert (=> b!5230320 (= e!3254985 e!3254988)))

(declare-fun b!5230321 () Bool)

(assert (=> b!5230321 (= e!3254988 (Union!14821 (Concat!23666 call!369843 (regTwo!30154 r!7292)) EmptyLang!14821))))

(declare-fun d!1686070 () Bool)

(declare-fun lt!2145110 () Regex!14821)

(assert (=> d!1686070 (validRegex!6557 lt!2145110)))

(assert (=> d!1686070 (= lt!2145110 e!3254987)))

(declare-fun c!903292 () Bool)

(assert (=> d!1686070 (= c!903292 (or ((_ is EmptyExpr!14821) r!7292) ((_ is EmptyLang!14821) r!7292)))))

(assert (=> d!1686070 (validRegex!6557 r!7292)))

(assert (=> d!1686070 (= (derivativeStep!4066 r!7292 (head!11207 s!2326)) lt!2145110)))

(declare-fun b!5230322 () Bool)

(assert (=> b!5230322 (= e!3254986 (ite (= (head!11207 s!2326) (c!902967 r!7292)) EmptyExpr!14821 EmptyLang!14821))))

(declare-fun b!5230323 () Bool)

(assert (=> b!5230323 (= e!3254985 (Concat!23666 call!369844 r!7292))))

(declare-fun b!5230324 () Bool)

(assert (=> b!5230324 (= e!3254987 e!3254986)))

(declare-fun c!903293 () Bool)

(assert (=> b!5230324 (= c!903293 ((_ is ElementMatch!14821) r!7292))))

(declare-fun bm!369838 () Bool)

(assert (=> bm!369838 (= call!369844 call!369842)))

(declare-fun bm!369839 () Bool)

(assert (=> bm!369839 (= call!369841 (derivativeStep!4066 (ite c!903295 (regOne!30155 r!7292) (ite c!903291 (regTwo!30154 r!7292) (regOne!30154 r!7292))) (head!11207 s!2326)))))

(assert (= (and d!1686070 c!903292) b!5230315))

(assert (= (and d!1686070 (not c!903292)) b!5230324))

(assert (= (and b!5230324 c!903293) b!5230322))

(assert (= (and b!5230324 (not c!903293)) b!5230316))

(assert (= (and b!5230316 c!903295) b!5230319))

(assert (= (and b!5230316 (not c!903295)) b!5230317))

(assert (= (and b!5230317 c!903294) b!5230323))

(assert (= (and b!5230317 (not c!903294)) b!5230320))

(assert (= (and b!5230320 c!903291) b!5230318))

(assert (= (and b!5230320 (not c!903291)) b!5230321))

(assert (= (or b!5230318 b!5230321) bm!369836))

(assert (= (or b!5230323 b!5230318) bm!369838))

(assert (= (or b!5230319 bm!369838) bm!369837))

(assert (= (or b!5230319 bm!369836) bm!369839))

(assert (=> bm!369837 m!6275616))

(declare-fun m!6276184 () Bool)

(assert (=> bm!369837 m!6276184))

(declare-fun m!6276188 () Bool)

(assert (=> b!5230320 m!6276188))

(declare-fun m!6276190 () Bool)

(assert (=> d!1686070 m!6276190))

(assert (=> d!1686070 m!6275306))

(assert (=> bm!369839 m!6275616))

(declare-fun m!6276192 () Bool)

(assert (=> bm!369839 m!6276192))

(assert (=> b!5229808 d!1686070))

(declare-fun d!1686088 () Bool)

(assert (=> d!1686088 (= (head!11207 s!2326) (h!67088 s!2326))))

(assert (=> b!5229808 d!1686088))

(declare-fun d!1686090 () Bool)

(assert (=> d!1686090 (= (tail!10304 s!2326) (t!373941 s!2326))))

(assert (=> b!5229808 d!1686090))

(declare-fun d!1686092 () Bool)

(assert (=> d!1686092 (= (isEmpty!32567 s!2326) ((_ is Nil!60640) s!2326))))

(assert (=> bm!369753 d!1686092))

(declare-fun d!1686094 () Bool)

(declare-fun res!2220232 () Bool)

(declare-fun e!3254991 () Bool)

(assert (=> d!1686094 (=> res!2220232 e!3254991)))

(assert (=> d!1686094 (= res!2220232 ((_ is Nil!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> d!1686094 (= (forall!14253 (exprs!4705 (h!67087 zl!343)) lambda!262672) e!3254991)))

(declare-fun b!5230327 () Bool)

(declare-fun e!3254992 () Bool)

(assert (=> b!5230327 (= e!3254991 e!3254992)))

(declare-fun res!2220233 () Bool)

(assert (=> b!5230327 (=> (not res!2220233) (not e!3254992))))

(assert (=> b!5230327 (= res!2220233 (dynLambda!23964 lambda!262672 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230328 () Bool)

(assert (=> b!5230328 (= e!3254992 (forall!14253 (t!373939 (exprs!4705 (h!67087 zl!343))) lambda!262672))))

(assert (= (and d!1686094 (not res!2220232)) b!5230327))

(assert (= (and b!5230327 res!2220233) b!5230328))

(declare-fun b_lambda!202215 () Bool)

(assert (=> (not b_lambda!202215) (not b!5230327)))

(declare-fun m!6276194 () Bool)

(assert (=> b!5230327 m!6276194))

(declare-fun m!6276196 () Bool)

(assert (=> b!5230328 m!6276196))

(assert (=> d!1685816 d!1686094))

(declare-fun b!5230329 () Bool)

(declare-fun e!3254994 () Bool)

(assert (=> b!5230329 (= e!3254994 (= (head!11207 (_1!35323 (get!20840 lt!2145079))) (c!902967 (regOne!30154 r!7292))))))

(declare-fun b!5230330 () Bool)

(declare-fun e!3254997 () Bool)

(declare-fun e!3254993 () Bool)

(assert (=> b!5230330 (= e!3254997 e!3254993)))

(declare-fun res!2220235 () Bool)

(assert (=> b!5230330 (=> (not res!2220235) (not e!3254993))))

(declare-fun lt!2145111 () Bool)

(assert (=> b!5230330 (= res!2220235 (not lt!2145111))))

(declare-fun b!5230331 () Bool)

(declare-fun e!3254999 () Bool)

(declare-fun call!369845 () Bool)

(assert (=> b!5230331 (= e!3254999 (= lt!2145111 call!369845))))

(declare-fun bm!369840 () Bool)

(assert (=> bm!369840 (= call!369845 (isEmpty!32567 (_1!35323 (get!20840 lt!2145079))))))

(declare-fun b!5230332 () Bool)

(declare-fun res!2220236 () Bool)

(assert (=> b!5230332 (=> res!2220236 e!3254997)))

(assert (=> b!5230332 (= res!2220236 e!3254994)))

(declare-fun res!2220234 () Bool)

(assert (=> b!5230332 (=> (not res!2220234) (not e!3254994))))

(assert (=> b!5230332 (= res!2220234 lt!2145111)))

(declare-fun b!5230333 () Bool)

(declare-fun e!3254998 () Bool)

(assert (=> b!5230333 (= e!3254998 (not lt!2145111))))

(declare-fun b!5230334 () Bool)

(declare-fun e!3254996 () Bool)

(assert (=> b!5230334 (= e!3254993 e!3254996)))

(declare-fun res!2220239 () Bool)

(assert (=> b!5230334 (=> res!2220239 e!3254996)))

(assert (=> b!5230334 (= res!2220239 call!369845)))

(declare-fun b!5230335 () Bool)

(declare-fun res!2220241 () Bool)

(assert (=> b!5230335 (=> (not res!2220241) (not e!3254994))))

(assert (=> b!5230335 (= res!2220241 (not call!369845))))

(declare-fun d!1686096 () Bool)

(assert (=> d!1686096 e!3254999))

(declare-fun c!903297 () Bool)

(assert (=> d!1686096 (= c!903297 ((_ is EmptyExpr!14821) (regOne!30154 r!7292)))))

(declare-fun e!3254995 () Bool)

(assert (=> d!1686096 (= lt!2145111 e!3254995)))

(declare-fun c!903299 () Bool)

(assert (=> d!1686096 (= c!903299 (isEmpty!32567 (_1!35323 (get!20840 lt!2145079))))))

(assert (=> d!1686096 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1686096 (= (matchR!7006 (regOne!30154 r!7292) (_1!35323 (get!20840 lt!2145079))) lt!2145111)))

(declare-fun b!5230336 () Bool)

(assert (=> b!5230336 (= e!3254995 (nullable!4990 (regOne!30154 r!7292)))))

(declare-fun b!5230337 () Bool)

(assert (=> b!5230337 (= e!3254999 e!3254998)))

(declare-fun c!903298 () Bool)

(assert (=> b!5230337 (= c!903298 ((_ is EmptyLang!14821) (regOne!30154 r!7292)))))

(declare-fun b!5230338 () Bool)

(declare-fun res!2220237 () Bool)

(assert (=> b!5230338 (=> (not res!2220237) (not e!3254994))))

(assert (=> b!5230338 (= res!2220237 (isEmpty!32567 (tail!10304 (_1!35323 (get!20840 lt!2145079)))))))

(declare-fun b!5230339 () Bool)

(declare-fun res!2220240 () Bool)

(assert (=> b!5230339 (=> res!2220240 e!3254996)))

(assert (=> b!5230339 (= res!2220240 (not (isEmpty!32567 (tail!10304 (_1!35323 (get!20840 lt!2145079))))))))

(declare-fun b!5230340 () Bool)

(assert (=> b!5230340 (= e!3254996 (not (= (head!11207 (_1!35323 (get!20840 lt!2145079))) (c!902967 (regOne!30154 r!7292)))))))

(declare-fun b!5230341 () Bool)

(declare-fun res!2220238 () Bool)

(assert (=> b!5230341 (=> res!2220238 e!3254997)))

(assert (=> b!5230341 (= res!2220238 (not ((_ is ElementMatch!14821) (regOne!30154 r!7292))))))

(assert (=> b!5230341 (= e!3254998 e!3254997)))

(declare-fun b!5230342 () Bool)

(assert (=> b!5230342 (= e!3254995 (matchR!7006 (derivativeStep!4066 (regOne!30154 r!7292) (head!11207 (_1!35323 (get!20840 lt!2145079)))) (tail!10304 (_1!35323 (get!20840 lt!2145079)))))))

(assert (= (and d!1686096 c!903299) b!5230336))

(assert (= (and d!1686096 (not c!903299)) b!5230342))

(assert (= (and d!1686096 c!903297) b!5230331))

(assert (= (and d!1686096 (not c!903297)) b!5230337))

(assert (= (and b!5230337 c!903298) b!5230333))

(assert (= (and b!5230337 (not c!903298)) b!5230341))

(assert (= (and b!5230341 (not res!2220238)) b!5230332))

(assert (= (and b!5230332 res!2220234) b!5230335))

(assert (= (and b!5230335 res!2220241) b!5230338))

(assert (= (and b!5230338 res!2220237) b!5230329))

(assert (= (and b!5230332 (not res!2220236)) b!5230330))

(assert (= (and b!5230330 res!2220235) b!5230334))

(assert (= (and b!5230334 (not res!2220239)) b!5230339))

(assert (= (and b!5230339 (not res!2220240)) b!5230340))

(assert (= (or b!5230331 b!5230334 b!5230335) bm!369840))

(declare-fun m!6276198 () Bool)

(assert (=> b!5230342 m!6276198))

(assert (=> b!5230342 m!6276198))

(declare-fun m!6276200 () Bool)

(assert (=> b!5230342 m!6276200))

(declare-fun m!6276202 () Bool)

(assert (=> b!5230342 m!6276202))

(assert (=> b!5230342 m!6276200))

(assert (=> b!5230342 m!6276202))

(declare-fun m!6276204 () Bool)

(assert (=> b!5230342 m!6276204))

(assert (=> b!5230338 m!6276202))

(assert (=> b!5230338 m!6276202))

(declare-fun m!6276206 () Bool)

(assert (=> b!5230338 m!6276206))

(assert (=> b!5230340 m!6276198))

(declare-fun m!6276208 () Bool)

(assert (=> d!1686096 m!6276208))

(assert (=> d!1686096 m!6275780))

(assert (=> b!5230339 m!6276202))

(assert (=> b!5230339 m!6276202))

(assert (=> b!5230339 m!6276206))

(assert (=> b!5230329 m!6276198))

(assert (=> bm!369840 m!6276208))

(assert (=> b!5230336 m!6276188))

(assert (=> b!5229905 d!1686096))

(declare-fun d!1686098 () Bool)

(assert (=> d!1686098 (= (get!20840 lt!2145079) (v!50960 lt!2145079))))

(assert (=> b!5229905 d!1686098))

(assert (=> b!5229877 d!1685930))

(declare-fun bs!1214099 () Bool)

(declare-fun d!1686102 () Bool)

(assert (= bs!1214099 (and d!1686102 d!1686032)))

(declare-fun lambda!262734 () Int)

(assert (=> bs!1214099 (= lambda!262734 lambda!262722)))

(declare-fun bs!1214101 () Bool)

(assert (= bs!1214101 (and d!1686102 d!1686020)))

(assert (=> bs!1214101 (= lambda!262734 lambda!262717)))

(declare-fun bs!1214103 () Bool)

(assert (= bs!1214103 (and d!1686102 d!1685874)))

(assert (=> bs!1214103 (= lambda!262734 lambda!262688)))

(declare-fun bs!1214104 () Bool)

(assert (= bs!1214104 (and d!1686102 d!1685872)))

(assert (=> bs!1214104 (= lambda!262734 lambda!262685)))

(declare-fun bs!1214105 () Bool)

(assert (= bs!1214105 (and d!1686102 b!5229197)))

(assert (=> bs!1214105 (= lambda!262734 lambda!262645)))

(declare-fun bs!1214106 () Bool)

(assert (= bs!1214106 (and d!1686102 d!1685936)))

(assert (=> bs!1214106 (= lambda!262734 lambda!262701)))

(declare-fun bs!1214108 () Bool)

(assert (= bs!1214108 (and d!1686102 d!1685816)))

(assert (=> bs!1214108 (= lambda!262734 lambda!262672)))

(declare-fun bs!1214109 () Bool)

(assert (= bs!1214109 (and d!1686102 d!1685930)))

(assert (=> bs!1214109 (= lambda!262734 lambda!262700)))

(declare-fun lt!2145112 () List!60762)

(assert (=> d!1686102 (forall!14253 lt!2145112 lambda!262734)))

(declare-fun e!3255004 () List!60762)

(assert (=> d!1686102 (= lt!2145112 e!3255004)))

(declare-fun c!903300 () Bool)

(assert (=> d!1686102 (= c!903300 ((_ is Cons!60639) (t!373940 zl!343)))))

(assert (=> d!1686102 (= (unfocusZipperList!263 (t!373940 zl!343)) lt!2145112)))

(declare-fun b!5230347 () Bool)

(assert (=> b!5230347 (= e!3255004 (Cons!60638 (generalisedConcat!490 (exprs!4705 (h!67087 (t!373940 zl!343)))) (unfocusZipperList!263 (t!373940 (t!373940 zl!343)))))))

(declare-fun b!5230348 () Bool)

(assert (=> b!5230348 (= e!3255004 Nil!60638)))

(assert (= (and d!1686102 c!903300) b!5230347))

(assert (= (and d!1686102 (not c!903300)) b!5230348))

(declare-fun m!6276216 () Bool)

(assert (=> d!1686102 m!6276216))

(declare-fun m!6276218 () Bool)

(assert (=> b!5230347 m!6276218))

(declare-fun m!6276220 () Bool)

(assert (=> b!5230347 m!6276220))

(assert (=> b!5229877 d!1686102))

(declare-fun d!1686110 () Bool)

(assert (=> d!1686110 (= (isEmpty!32567 (tail!10304 s!2326)) ((_ is Nil!60640) (tail!10304 s!2326)))))

(assert (=> b!5229804 d!1686110))

(assert (=> b!5229804 d!1686090))

(declare-fun d!1686114 () Bool)

(assert (=> d!1686114 (= (isUnion!221 lt!2145068) ((_ is Union!14821) lt!2145068))))

(assert (=> b!5229864 d!1686114))

(declare-fun d!1686116 () Bool)

(declare-fun res!2220248 () Bool)

(declare-fun e!3255011 () Bool)

(assert (=> d!1686116 (=> res!2220248 e!3255011)))

(assert (=> d!1686116 (= res!2220248 ((_ is EmptyExpr!14821) (regOne!30155 (regOne!30154 r!7292))))))

(assert (=> d!1686116 (= (nullableFct!1396 (regOne!30155 (regOne!30154 r!7292))) e!3255011)))

(declare-fun b!5230351 () Bool)

(declare-fun e!3255006 () Bool)

(declare-fun e!3255009 () Bool)

(assert (=> b!5230351 (= e!3255006 e!3255009)))

(declare-fun res!2220246 () Bool)

(assert (=> b!5230351 (=> res!2220246 e!3255009)))

(assert (=> b!5230351 (= res!2220246 ((_ is Star!14821) (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun bm!369841 () Bool)

(declare-fun call!369847 () Bool)

(declare-fun c!903302 () Bool)

(assert (=> bm!369841 (= call!369847 (nullable!4990 (ite c!903302 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230352 () Bool)

(declare-fun e!3255010 () Bool)

(declare-fun call!369846 () Bool)

(assert (=> b!5230352 (= e!3255010 call!369846)))

(declare-fun b!5230353 () Bool)

(declare-fun e!3255007 () Bool)

(assert (=> b!5230353 (= e!3255009 e!3255007)))

(assert (=> b!5230353 (= c!903302 ((_ is Union!14821) (regOne!30155 (regOne!30154 r!7292))))))

(declare-fun b!5230354 () Bool)

(declare-fun e!3255008 () Bool)

(assert (=> b!5230354 (= e!3255007 e!3255008)))

(declare-fun res!2220249 () Bool)

(assert (=> b!5230354 (= res!2220249 call!369847)))

(assert (=> b!5230354 (=> (not res!2220249) (not e!3255008))))

(declare-fun b!5230355 () Bool)

(assert (=> b!5230355 (= e!3255011 e!3255006)))

(declare-fun res!2220247 () Bool)

(assert (=> b!5230355 (=> (not res!2220247) (not e!3255006))))

(assert (=> b!5230355 (= res!2220247 (and (not ((_ is EmptyLang!14821) (regOne!30155 (regOne!30154 r!7292)))) (not ((_ is ElementMatch!14821) (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230356 () Bool)

(assert (=> b!5230356 (= e!3255007 e!3255010)))

(declare-fun res!2220250 () Bool)

(assert (=> b!5230356 (= res!2220250 call!369847)))

(assert (=> b!5230356 (=> res!2220250 e!3255010)))

(declare-fun bm!369842 () Bool)

(assert (=> bm!369842 (= call!369846 (nullable!4990 (ite c!903302 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230357 () Bool)

(assert (=> b!5230357 (= e!3255008 call!369846)))

(assert (= (and d!1686116 (not res!2220248)) b!5230355))

(assert (= (and b!5230355 res!2220247) b!5230351))

(assert (= (and b!5230351 (not res!2220246)) b!5230353))

(assert (= (and b!5230353 c!903302) b!5230356))

(assert (= (and b!5230353 (not c!903302)) b!5230354))

(assert (= (and b!5230356 (not res!2220250)) b!5230352))

(assert (= (and b!5230354 res!2220249) b!5230357))

(assert (= (or b!5230352 b!5230357) bm!369842))

(assert (= (or b!5230356 b!5230354) bm!369841))

(declare-fun m!6276228 () Bool)

(assert (=> bm!369841 m!6276228))

(declare-fun m!6276230 () Bool)

(assert (=> bm!369842 m!6276230))

(assert (=> d!1685906 d!1686116))

(declare-fun bm!369845 () Bool)

(declare-fun call!369853 () (InoxSet Context!8410))

(declare-fun call!369854 () (InoxSet Context!8410))

(assert (=> bm!369845 (= call!369853 call!369854)))

(declare-fun b!5230365 () Bool)

(declare-fun e!3255021 () (InoxSet Context!8410))

(declare-fun call!369850 () (InoxSet Context!8410))

(assert (=> b!5230365 (= e!3255021 ((_ map or) call!369850 call!369854))))

(declare-fun b!5230366 () Bool)

(declare-fun c!903308 () Bool)

(declare-fun e!3255022 () Bool)

(assert (=> b!5230366 (= c!903308 e!3255022)))

(declare-fun res!2220256 () Bool)

(assert (=> b!5230366 (=> (not res!2220256) (not e!3255022))))

(assert (=> b!5230366 (= res!2220256 ((_ is Concat!23666) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun e!3255019 () (InoxSet Context!8410))

(assert (=> b!5230366 (= e!3255019 e!3255021)))

(declare-fun b!5230367 () Bool)

(declare-fun e!3255020 () (InoxSet Context!8410))

(assert (=> b!5230367 (= e!3255020 call!369853)))

(declare-fun bm!369846 () Bool)

(declare-fun call!369855 () List!60762)

(declare-fun c!903306 () Bool)

(assert (=> bm!369846 (= call!369850 (derivationStepZipperDown!269 (ite c!903306 (regOne!30155 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (regOne!30154 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))))) (ite c!903306 (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738)) (Context!8411 call!369855)) (h!67088 s!2326)))))

(declare-fun bm!369847 () Bool)

(declare-fun call!369852 () (InoxSet Context!8410))

(assert (=> bm!369847 (= call!369854 call!369852)))

(declare-fun bm!369848 () Bool)

(declare-fun c!903304 () Bool)

(assert (=> bm!369848 (= call!369855 ($colon$colon!1294 (exprs!4705 (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738))) (ite (or c!903308 c!903304) (regTwo!30154 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))))))))

(declare-fun e!3255023 () (InoxSet Context!8410))

(declare-fun b!5230368 () Bool)

(assert (=> b!5230368 (= e!3255023 (store ((as const (Array Context!8410 Bool)) false) (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738)) true))))

(declare-fun b!5230369 () Bool)

(assert (=> b!5230369 (= e!3255021 e!3255020)))

(assert (=> b!5230369 (= c!903304 ((_ is Concat!23666) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun b!5230370 () Bool)

(declare-fun e!3255018 () (InoxSet Context!8410))

(assert (=> b!5230370 (= e!3255018 call!369853)))

(declare-fun bm!369849 () Bool)

(declare-fun call!369851 () List!60762)

(assert (=> bm!369849 (= call!369852 (derivationStepZipperDown!269 (ite c!903306 (regTwo!30155 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (ite c!903308 (regTwo!30154 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (ite c!903304 (regOne!30154 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (reg!15150 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))))))) (ite (or c!903306 c!903308) (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738)) (Context!8411 call!369851)) (h!67088 s!2326)))))

(declare-fun b!5230371 () Bool)

(assert (=> b!5230371 (= e!3255022 (nullable!4990 (regOne!30154 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))))))))

(declare-fun c!903307 () Bool)

(declare-fun b!5230373 () Bool)

(assert (=> b!5230373 (= c!903307 ((_ is Star!14821) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))))

(assert (=> b!5230373 (= e!3255020 e!3255018)))

(declare-fun b!5230374 () Bool)

(assert (=> b!5230374 (= e!3255023 e!3255019)))

(assert (=> b!5230374 (= c!903306 ((_ is Union!14821) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))))

(declare-fun bm!369850 () Bool)

(assert (=> bm!369850 (= call!369851 call!369855)))

(declare-fun b!5230375 () Bool)

(assert (=> b!5230375 (= e!3255018 ((as const (Array Context!8410 Bool)) false))))

(declare-fun c!903305 () Bool)

(declare-fun d!1686120 () Bool)

(assert (=> d!1686120 (= c!903305 (and ((_ is ElementMatch!14821) (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (= (c!902967 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343)))))))) (h!67088 s!2326))))))

(assert (=> d!1686120 (= (derivationStepZipperDown!269 (ite c!903116 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903118 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903114 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))) (ite (or c!903116 c!903118) lt!2144978 (Context!8411 call!369738)) (h!67088 s!2326)) e!3255023)))

(declare-fun b!5230372 () Bool)

(assert (=> b!5230372 (= e!3255019 ((_ map or) call!369850 call!369852))))

(assert (= (and d!1686120 c!903305) b!5230368))

(assert (= (and d!1686120 (not c!903305)) b!5230374))

(assert (= (and b!5230374 c!903306) b!5230372))

(assert (= (and b!5230374 (not c!903306)) b!5230366))

(assert (= (and b!5230366 res!2220256) b!5230371))

(assert (= (and b!5230366 c!903308) b!5230365))

(assert (= (and b!5230366 (not c!903308)) b!5230369))

(assert (= (and b!5230369 c!903304) b!5230367))

(assert (= (and b!5230369 (not c!903304)) b!5230373))

(assert (= (and b!5230373 c!903307) b!5230370))

(assert (= (and b!5230373 (not c!903307)) b!5230375))

(assert (= (or b!5230367 b!5230370) bm!369850))

(assert (= (or b!5230367 b!5230370) bm!369845))

(assert (= (or b!5230365 bm!369850) bm!369848))

(assert (= (or b!5230365 bm!369845) bm!369847))

(assert (= (or b!5230372 bm!369847) bm!369849))

(assert (= (or b!5230372 b!5230365) bm!369846))

(declare-fun m!6276242 () Bool)

(assert (=> bm!369846 m!6276242))

(declare-fun m!6276246 () Bool)

(assert (=> b!5230371 m!6276246))

(declare-fun m!6276248 () Bool)

(assert (=> b!5230368 m!6276248))

(declare-fun m!6276250 () Bool)

(assert (=> bm!369848 m!6276250))

(declare-fun m!6276254 () Bool)

(assert (=> bm!369849 m!6276254))

(assert (=> bm!369736 d!1686120))

(declare-fun d!1686128 () Bool)

(assert (=> d!1686128 (= (nullable!4990 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))) (nullableFct!1396 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292)))))))

(declare-fun bs!1214119 () Bool)

(assert (= bs!1214119 d!1686128))

(declare-fun m!6276258 () Bool)

(assert (=> bs!1214119 m!6276258))

(assert (=> b!5229422 d!1686128))

(declare-fun d!1686132 () Bool)

(assert (=> d!1686132 (= (isEmpty!32564 (tail!10305 (unfocusZipperList!263 zl!343))) ((_ is Nil!60638) (tail!10305 (unfocusZipperList!263 zl!343))))))

(assert (=> b!5229868 d!1686132))

(declare-fun d!1686134 () Bool)

(assert (=> d!1686134 (= (tail!10305 (unfocusZipperList!263 zl!343)) (t!373939 (unfocusZipperList!263 zl!343)))))

(assert (=> b!5229868 d!1686134))

(declare-fun d!1686136 () Bool)

(assert (=> d!1686136 (= ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903118 c!903114) (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67086 (exprs!4705 (h!67087 zl!343))))) (Cons!60638 (ite (or c!903118 c!903114) (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67086 (exprs!4705 (h!67087 zl!343)))) (exprs!4705 lt!2144978)))))

(assert (=> bm!369735 d!1686136))

(declare-fun bs!1214127 () Bool)

(declare-fun d!1686142 () Bool)

(assert (= bs!1214127 (and d!1686142 d!1686032)))

(declare-fun lambda!262738 () Int)

(assert (=> bs!1214127 (= lambda!262738 lambda!262722)))

(declare-fun bs!1214128 () Bool)

(assert (= bs!1214128 (and d!1686142 d!1686102)))

(assert (=> bs!1214128 (= lambda!262738 lambda!262734)))

(declare-fun bs!1214129 () Bool)

(assert (= bs!1214129 (and d!1686142 d!1686020)))

(assert (=> bs!1214129 (= lambda!262738 lambda!262717)))

(declare-fun bs!1214130 () Bool)

(assert (= bs!1214130 (and d!1686142 d!1685874)))

(assert (=> bs!1214130 (= lambda!262738 lambda!262688)))

(declare-fun bs!1214131 () Bool)

(assert (= bs!1214131 (and d!1686142 d!1685872)))

(assert (=> bs!1214131 (= lambda!262738 lambda!262685)))

(declare-fun bs!1214132 () Bool)

(assert (= bs!1214132 (and d!1686142 b!5229197)))

(assert (=> bs!1214132 (= lambda!262738 lambda!262645)))

(declare-fun bs!1214133 () Bool)

(assert (= bs!1214133 (and d!1686142 d!1685936)))

(assert (=> bs!1214133 (= lambda!262738 lambda!262701)))

(declare-fun bs!1214134 () Bool)

(assert (= bs!1214134 (and d!1686142 d!1685816)))

(assert (=> bs!1214134 (= lambda!262738 lambda!262672)))

(declare-fun bs!1214135 () Bool)

(assert (= bs!1214135 (and d!1686142 d!1685930)))

(assert (=> bs!1214135 (= lambda!262738 lambda!262700)))

(assert (=> d!1686142 (= (inv!80299 setElem!33305) (forall!14253 (exprs!4705 setElem!33305) lambda!262738))))

(declare-fun bs!1214136 () Bool)

(assert (= bs!1214136 d!1686142))

(declare-fun m!6276266 () Bool)

(assert (=> bs!1214136 m!6276266))

(assert (=> setNonEmpty!33305 d!1686142))

(declare-fun d!1686148 () Bool)

(assert (=> d!1686148 true))

(declare-fun setRes!33309 () Bool)

(assert (=> d!1686148 setRes!33309))

(declare-fun condSetEmpty!33309 () Bool)

(declare-fun res!2220262 () (InoxSet Context!8410))

(assert (=> d!1686148 (= condSetEmpty!33309 (= res!2220262 ((as const (Array Context!8410 Bool)) false)))))

(assert (=> d!1686148 (= (choose!38897 z!1189 lambda!262644) res!2220262)))

(declare-fun setIsEmpty!33309 () Bool)

(assert (=> setIsEmpty!33309 setRes!33309))

(declare-fun e!3255032 () Bool)

(declare-fun tp!1465605 () Bool)

(declare-fun setElem!33309 () Context!8410)

(declare-fun setNonEmpty!33309 () Bool)

(assert (=> setNonEmpty!33309 (= setRes!33309 (and tp!1465605 (inv!80299 setElem!33309) e!3255032))))

(declare-fun setRest!33309 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33309 (= res!2220262 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33309 true) setRest!33309))))

(declare-fun b!5230387 () Bool)

(declare-fun tp!1465604 () Bool)

(assert (=> b!5230387 (= e!3255032 tp!1465604)))

(assert (= (and d!1686148 condSetEmpty!33309) setIsEmpty!33309))

(assert (= (and d!1686148 (not condSetEmpty!33309)) setNonEmpty!33309))

(assert (= setNonEmpty!33309 b!5230387))

(declare-fun m!6276270 () Bool)

(assert (=> setNonEmpty!33309 m!6276270))

(assert (=> d!1685834 d!1686148))

(declare-fun d!1686152 () Bool)

(declare-fun res!2220264 () Bool)

(declare-fun e!3255039 () Bool)

(assert (=> d!1686152 (=> res!2220264 e!3255039)))

(assert (=> d!1686152 (= res!2220264 ((_ is Nil!60638) lt!2145071))))

(assert (=> d!1686152 (= (forall!14253 lt!2145071 lambda!262688) e!3255039)))

(declare-fun b!5230399 () Bool)

(declare-fun e!3255040 () Bool)

(assert (=> b!5230399 (= e!3255039 e!3255040)))

(declare-fun res!2220265 () Bool)

(assert (=> b!5230399 (=> (not res!2220265) (not e!3255040))))

(assert (=> b!5230399 (= res!2220265 (dynLambda!23964 lambda!262688 (h!67086 lt!2145071)))))

(declare-fun b!5230400 () Bool)

(assert (=> b!5230400 (= e!3255040 (forall!14253 (t!373939 lt!2145071) lambda!262688))))

(assert (= (and d!1686152 (not res!2220264)) b!5230399))

(assert (= (and b!5230399 res!2220265) b!5230400))

(declare-fun b_lambda!202217 () Bool)

(assert (=> (not b_lambda!202217) (not b!5230399)))

(declare-fun m!6276272 () Bool)

(assert (=> b!5230399 m!6276272))

(declare-fun m!6276274 () Bool)

(assert (=> b!5230400 m!6276274))

(assert (=> d!1685874 d!1686152))

(assert (=> d!1685822 d!1685834))

(declare-fun d!1686154 () Bool)

(assert (=> d!1686154 (= (flatMap!548 z!1189 lambda!262644) (dynLambda!23962 lambda!262644 (h!67087 zl!343)))))

(assert (=> d!1686154 true))

(declare-fun _$13!1755 () Unit!152582)

(assert (=> d!1686154 (= (choose!38896 z!1189 (h!67087 zl!343) lambda!262644) _$13!1755)))

(declare-fun b_lambda!202219 () Bool)

(assert (=> (not b_lambda!202219) (not d!1686154)))

(declare-fun bs!1214138 () Bool)

(assert (= bs!1214138 d!1686154))

(assert (=> bs!1214138 m!6275284))

(assert (=> bs!1214138 m!6275632))

(assert (=> d!1685822 d!1686154))

(declare-fun bs!1214139 () Bool)

(declare-fun d!1686156 () Bool)

(assert (= bs!1214139 (and d!1686156 d!1686032)))

(declare-fun lambda!262739 () Int)

(assert (=> bs!1214139 (= lambda!262739 lambda!262722)))

(declare-fun bs!1214140 () Bool)

(assert (= bs!1214140 (and d!1686156 d!1686102)))

(assert (=> bs!1214140 (= lambda!262739 lambda!262734)))

(declare-fun bs!1214141 () Bool)

(assert (= bs!1214141 (and d!1686156 d!1686020)))

(assert (=> bs!1214141 (= lambda!262739 lambda!262717)))

(declare-fun bs!1214142 () Bool)

(assert (= bs!1214142 (and d!1686156 d!1685874)))

(assert (=> bs!1214142 (= lambda!262739 lambda!262688)))

(declare-fun bs!1214143 () Bool)

(assert (= bs!1214143 (and d!1686156 d!1686142)))

(assert (=> bs!1214143 (= lambda!262739 lambda!262738)))

(declare-fun bs!1214144 () Bool)

(assert (= bs!1214144 (and d!1686156 d!1685872)))

(assert (=> bs!1214144 (= lambda!262739 lambda!262685)))

(declare-fun bs!1214145 () Bool)

(assert (= bs!1214145 (and d!1686156 b!5229197)))

(assert (=> bs!1214145 (= lambda!262739 lambda!262645)))

(declare-fun bs!1214146 () Bool)

(assert (= bs!1214146 (and d!1686156 d!1685936)))

(assert (=> bs!1214146 (= lambda!262739 lambda!262701)))

(declare-fun bs!1214147 () Bool)

(assert (= bs!1214147 (and d!1686156 d!1685816)))

(assert (=> bs!1214147 (= lambda!262739 lambda!262672)))

(declare-fun bs!1214148 () Bool)

(assert (= bs!1214148 (and d!1686156 d!1685930)))

(assert (=> bs!1214148 (= lambda!262739 lambda!262700)))

(declare-fun b!5230401 () Bool)

(declare-fun e!3255041 () Bool)

(assert (=> b!5230401 (= e!3255041 (isEmpty!32564 (t!373939 (t!373939 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5230402 () Bool)

(declare-fun e!3255044 () Bool)

(declare-fun lt!2145113 () Regex!14821)

(assert (=> b!5230402 (= e!3255044 (isConcat!303 lt!2145113))))

(declare-fun b!5230403 () Bool)

(declare-fun e!3255046 () Regex!14821)

(assert (=> b!5230403 (= e!3255046 (Concat!23666 (h!67086 (t!373939 (exprs!4705 (h!67087 zl!343)))) (generalisedConcat!490 (t!373939 (t!373939 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230404 () Bool)

(assert (=> b!5230404 (= e!3255046 EmptyExpr!14821)))

(declare-fun b!5230405 () Bool)

(declare-fun e!3255045 () Regex!14821)

(assert (=> b!5230405 (= e!3255045 (h!67086 (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230406 () Bool)

(declare-fun e!3255043 () Bool)

(assert (=> b!5230406 (= e!3255043 (isEmptyExpr!780 lt!2145113))))

(declare-fun e!3255042 () Bool)

(assert (=> d!1686156 e!3255042))

(declare-fun res!2220266 () Bool)

(assert (=> d!1686156 (=> (not res!2220266) (not e!3255042))))

(assert (=> d!1686156 (= res!2220266 (validRegex!6557 lt!2145113))))

(assert (=> d!1686156 (= lt!2145113 e!3255045)))

(declare-fun c!903319 () Bool)

(assert (=> d!1686156 (= c!903319 e!3255041)))

(declare-fun res!2220267 () Bool)

(assert (=> d!1686156 (=> (not res!2220267) (not e!3255041))))

(assert (=> d!1686156 (= res!2220267 ((_ is Cons!60638) (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> d!1686156 (forall!14253 (t!373939 (exprs!4705 (h!67087 zl!343))) lambda!262739)))

(assert (=> d!1686156 (= (generalisedConcat!490 (t!373939 (exprs!4705 (h!67087 zl!343)))) lt!2145113)))

(declare-fun b!5230407 () Bool)

(assert (=> b!5230407 (= e!3255043 e!3255044)))

(declare-fun c!903317 () Bool)

(assert (=> b!5230407 (= c!903317 (isEmpty!32564 (tail!10305 (t!373939 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5230408 () Bool)

(assert (=> b!5230408 (= e!3255045 e!3255046)))

(declare-fun c!903320 () Bool)

(assert (=> b!5230408 (= c!903320 ((_ is Cons!60638) (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230409 () Bool)

(assert (=> b!5230409 (= e!3255044 (= lt!2145113 (head!11208 (t!373939 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5230410 () Bool)

(assert (=> b!5230410 (= e!3255042 e!3255043)))

(declare-fun c!903318 () Bool)

(assert (=> b!5230410 (= c!903318 (isEmpty!32564 (t!373939 (exprs!4705 (h!67087 zl!343)))))))

(assert (= (and d!1686156 res!2220267) b!5230401))

(assert (= (and d!1686156 c!903319) b!5230405))

(assert (= (and d!1686156 (not c!903319)) b!5230408))

(assert (= (and b!5230408 c!903320) b!5230403))

(assert (= (and b!5230408 (not c!903320)) b!5230404))

(assert (= (and d!1686156 res!2220266) b!5230410))

(assert (= (and b!5230410 c!903318) b!5230406))

(assert (= (and b!5230410 (not c!903318)) b!5230407))

(assert (= (and b!5230407 c!903317) b!5230409))

(assert (= (and b!5230407 (not c!903317)) b!5230402))

(declare-fun m!6276288 () Bool)

(assert (=> d!1686156 m!6276288))

(declare-fun m!6276290 () Bool)

(assert (=> d!1686156 m!6276290))

(declare-fun m!6276292 () Bool)

(assert (=> b!5230402 m!6276292))

(declare-fun m!6276294 () Bool)

(assert (=> b!5230409 m!6276294))

(declare-fun m!6276296 () Bool)

(assert (=> b!5230406 m!6276296))

(assert (=> b!5230410 m!6275212))

(declare-fun m!6276298 () Bool)

(assert (=> b!5230407 m!6276298))

(assert (=> b!5230407 m!6276298))

(declare-fun m!6276300 () Bool)

(assert (=> b!5230407 m!6276300))

(declare-fun m!6276302 () Bool)

(assert (=> b!5230401 m!6276302))

(declare-fun m!6276304 () Bool)

(assert (=> b!5230403 m!6276304))

(assert (=> b!5229975 d!1686156))

(declare-fun d!1686162 () Bool)

(declare-fun lt!2145114 () Int)

(assert (=> d!1686162 (>= lt!2145114 0)))

(declare-fun e!3255054 () Int)

(assert (=> d!1686162 (= lt!2145114 e!3255054)))

(declare-fun c!903323 () Bool)

(assert (=> d!1686162 (= c!903323 ((_ is Cons!60638) (exprs!4705 (h!67087 (Cons!60639 lt!2144990 Nil!60639)))))))

(assert (=> d!1686162 (= (contextDepthTotal!2 (h!67087 (Cons!60639 lt!2144990 Nil!60639))) lt!2145114)))

(declare-fun b!5230420 () Bool)

(assert (=> b!5230420 (= e!3255054 (+ (regexDepthTotal!1 (h!67086 (exprs!4705 (h!67087 (Cons!60639 lt!2144990 Nil!60639))))) (contextDepthTotal!2 (Context!8411 (t!373939 (exprs!4705 (h!67087 (Cons!60639 lt!2144990 Nil!60639))))))))))

(declare-fun b!5230421 () Bool)

(assert (=> b!5230421 (= e!3255054 1)))

(assert (= (and d!1686162 c!903323) b!5230420))

(assert (= (and d!1686162 (not c!903323)) b!5230421))

(declare-fun m!6276312 () Bool)

(assert (=> b!5230420 m!6276312))

(declare-fun m!6276314 () Bool)

(assert (=> b!5230420 m!6276314))

(assert (=> b!5229487 d!1686162))

(declare-fun d!1686166 () Bool)

(declare-fun lt!2145115 () Int)

(assert (=> d!1686166 (>= lt!2145115 0)))

(declare-fun e!3255056 () Int)

(assert (=> d!1686166 (= lt!2145115 e!3255056)))

(declare-fun c!903325 () Bool)

(assert (=> d!1686166 (= c!903325 ((_ is Cons!60639) (t!373940 (Cons!60639 lt!2144990 Nil!60639))))))

(assert (=> d!1686166 (= (zipperDepthTotal!2 (t!373940 (Cons!60639 lt!2144990 Nil!60639))) lt!2145115)))

(declare-fun b!5230424 () Bool)

(assert (=> b!5230424 (= e!3255056 (+ (contextDepthTotal!2 (h!67087 (t!373940 (Cons!60639 lt!2144990 Nil!60639)))) (zipperDepthTotal!2 (t!373940 (t!373940 (Cons!60639 lt!2144990 Nil!60639))))))))

(declare-fun b!5230425 () Bool)

(assert (=> b!5230425 (= e!3255056 0)))

(assert (= (and d!1686166 c!903325) b!5230424))

(assert (= (and d!1686166 (not c!903325)) b!5230425))

(declare-fun m!6276320 () Bool)

(assert (=> b!5230424 m!6276320))

(declare-fun m!6276322 () Bool)

(assert (=> b!5230424 m!6276322))

(assert (=> b!5229487 d!1686166))

(declare-fun bm!369863 () Bool)

(declare-fun call!369871 () (InoxSet Context!8410))

(declare-fun call!369872 () (InoxSet Context!8410))

(assert (=> bm!369863 (= call!369871 call!369872)))

(declare-fun b!5230426 () Bool)

(declare-fun e!3255060 () (InoxSet Context!8410))

(declare-fun call!369868 () (InoxSet Context!8410))

(assert (=> b!5230426 (= e!3255060 ((_ map or) call!369868 call!369872))))

(declare-fun b!5230427 () Bool)

(declare-fun c!903330 () Bool)

(declare-fun e!3255061 () Bool)

(assert (=> b!5230427 (= c!903330 e!3255061)))

(declare-fun res!2220273 () Bool)

(assert (=> b!5230427 (=> (not res!2220273) (not e!3255061))))

(assert (=> b!5230427 (= res!2220273 ((_ is Concat!23666) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun e!3255058 () (InoxSet Context!8410))

(assert (=> b!5230427 (= e!3255058 e!3255060)))

(declare-fun b!5230428 () Bool)

(declare-fun e!3255059 () (InoxSet Context!8410))

(assert (=> b!5230428 (= e!3255059 call!369871)))

(declare-fun bm!369864 () Bool)

(declare-fun c!903328 () Bool)

(declare-fun call!369873 () List!60762)

(assert (=> bm!369864 (= call!369868 (derivationStepZipperDown!269 (ite c!903328 (regOne!30155 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (regOne!30154 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))) (ite c!903328 (ite c!903053 lt!2144978 (Context!8411 call!369709)) (Context!8411 call!369873)) (h!67088 s!2326)))))

(declare-fun bm!369865 () Bool)

(declare-fun call!369870 () (InoxSet Context!8410))

(assert (=> bm!369865 (= call!369872 call!369870)))

(declare-fun c!903326 () Bool)

(declare-fun bm!369866 () Bool)

(assert (=> bm!369866 (= call!369873 ($colon$colon!1294 (exprs!4705 (ite c!903053 lt!2144978 (Context!8411 call!369709))) (ite (or c!903330 c!903326) (regTwo!30154 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))))))

(declare-fun e!3255062 () (InoxSet Context!8410))

(declare-fun b!5230429 () Bool)

(assert (=> b!5230429 (= e!3255062 (store ((as const (Array Context!8410 Bool)) false) (ite c!903053 lt!2144978 (Context!8411 call!369709)) true))))

(declare-fun b!5230430 () Bool)

(assert (=> b!5230430 (= e!3255060 e!3255059)))

(assert (=> b!5230430 (= c!903326 ((_ is Concat!23666) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun b!5230431 () Bool)

(declare-fun e!3255057 () (InoxSet Context!8410))

(assert (=> b!5230431 (= e!3255057 call!369871)))

(declare-fun call!369869 () List!60762)

(declare-fun bm!369867 () Bool)

(assert (=> bm!369867 (= call!369870 (derivationStepZipperDown!269 (ite c!903328 (regTwo!30155 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (ite c!903330 (regTwo!30154 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (ite c!903326 (regOne!30154 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (reg!15150 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))))) (ite (or c!903328 c!903330) (ite c!903053 lt!2144978 (Context!8411 call!369709)) (Context!8411 call!369869)) (h!67088 s!2326)))))

(declare-fun b!5230432 () Bool)

(assert (=> b!5230432 (= e!3255061 (nullable!4990 (regOne!30154 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))))))

(declare-fun b!5230434 () Bool)

(declare-fun c!903329 () Bool)

(assert (=> b!5230434 (= c!903329 ((_ is Star!14821) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(assert (=> b!5230434 (= e!3255059 e!3255057)))

(declare-fun b!5230435 () Bool)

(assert (=> b!5230435 (= e!3255062 e!3255058)))

(assert (=> b!5230435 (= c!903328 ((_ is Union!14821) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))))))

(declare-fun bm!369868 () Bool)

(assert (=> bm!369868 (= call!369869 call!369873)))

(declare-fun b!5230436 () Bool)

(assert (=> b!5230436 (= e!3255057 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686168 () Bool)

(declare-fun c!903327 () Bool)

(assert (=> d!1686168 (= c!903327 (and ((_ is ElementMatch!14821) (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (= (c!902967 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292))))) (h!67088 s!2326))))))

(assert (=> d!1686168 (= (derivationStepZipperDown!269 (ite c!903053 (regOne!30155 (regOne!30155 (regOne!30154 r!7292))) (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))) (ite c!903053 lt!2144978 (Context!8411 call!369709)) (h!67088 s!2326)) e!3255062)))

(declare-fun b!5230433 () Bool)

(assert (=> b!5230433 (= e!3255058 ((_ map or) call!369868 call!369870))))

(assert (= (and d!1686168 c!903327) b!5230429))

(assert (= (and d!1686168 (not c!903327)) b!5230435))

(assert (= (and b!5230435 c!903328) b!5230433))

(assert (= (and b!5230435 (not c!903328)) b!5230427))

(assert (= (and b!5230427 res!2220273) b!5230432))

(assert (= (and b!5230427 c!903330) b!5230426))

(assert (= (and b!5230427 (not c!903330)) b!5230430))

(assert (= (and b!5230430 c!903326) b!5230428))

(assert (= (and b!5230430 (not c!903326)) b!5230434))

(assert (= (and b!5230434 c!903329) b!5230431))

(assert (= (and b!5230434 (not c!903329)) b!5230436))

(assert (= (or b!5230428 b!5230431) bm!369868))

(assert (= (or b!5230428 b!5230431) bm!369863))

(assert (= (or b!5230426 bm!369868) bm!369866))

(assert (= (or b!5230426 bm!369863) bm!369865))

(assert (= (or b!5230433 bm!369865) bm!369867))

(assert (= (or b!5230433 b!5230426) bm!369864))

(declare-fun m!6276328 () Bool)

(assert (=> bm!369864 m!6276328))

(declare-fun m!6276330 () Bool)

(assert (=> b!5230432 m!6276330))

(declare-fun m!6276332 () Bool)

(assert (=> b!5230429 m!6276332))

(declare-fun m!6276334 () Bool)

(assert (=> bm!369866 m!6276334))

(declare-fun m!6276336 () Bool)

(assert (=> bm!369867 m!6276336))

(assert (=> bm!369700 d!1686168))

(declare-fun d!1686174 () Bool)

(assert (=> d!1686174 (= (isEmpty!32567 (t!373941 s!2326)) ((_ is Nil!60640) (t!373941 s!2326)))))

(assert (=> d!1685796 d!1686174))

(declare-fun d!1686176 () Bool)

(assert (=> d!1686176 (= (isEmptyLang!789 lt!2145068) ((_ is EmptyLang!14821) lt!2145068))))

(assert (=> b!5229872 d!1686176))

(assert (=> d!1685918 d!1686174))

(assert (=> b!5229811 d!1685796))

(declare-fun b!5230437 () Bool)

(declare-fun e!3255064 () Bool)

(assert (=> b!5230437 (= e!3255064 (= (head!11207 s!2326) (c!902967 (regTwo!30154 r!7292))))))

(declare-fun b!5230438 () Bool)

(declare-fun e!3255067 () Bool)

(declare-fun e!3255063 () Bool)

(assert (=> b!5230438 (= e!3255067 e!3255063)))

(declare-fun res!2220275 () Bool)

(assert (=> b!5230438 (=> (not res!2220275) (not e!3255063))))

(declare-fun lt!2145116 () Bool)

(assert (=> b!5230438 (= res!2220275 (not lt!2145116))))

(declare-fun b!5230439 () Bool)

(declare-fun e!3255069 () Bool)

(declare-fun call!369874 () Bool)

(assert (=> b!5230439 (= e!3255069 (= lt!2145116 call!369874))))

(declare-fun bm!369869 () Bool)

(assert (=> bm!369869 (= call!369874 (isEmpty!32567 s!2326))))

(declare-fun b!5230440 () Bool)

(declare-fun res!2220276 () Bool)

(assert (=> b!5230440 (=> res!2220276 e!3255067)))

(assert (=> b!5230440 (= res!2220276 e!3255064)))

(declare-fun res!2220274 () Bool)

(assert (=> b!5230440 (=> (not res!2220274) (not e!3255064))))

(assert (=> b!5230440 (= res!2220274 lt!2145116)))

(declare-fun b!5230441 () Bool)

(declare-fun e!3255068 () Bool)

(assert (=> b!5230441 (= e!3255068 (not lt!2145116))))

(declare-fun b!5230442 () Bool)

(declare-fun e!3255066 () Bool)

(assert (=> b!5230442 (= e!3255063 e!3255066)))

(declare-fun res!2220279 () Bool)

(assert (=> b!5230442 (=> res!2220279 e!3255066)))

(assert (=> b!5230442 (= res!2220279 call!369874)))

(declare-fun b!5230443 () Bool)

(declare-fun res!2220281 () Bool)

(assert (=> b!5230443 (=> (not res!2220281) (not e!3255064))))

(assert (=> b!5230443 (= res!2220281 (not call!369874))))

(declare-fun d!1686178 () Bool)

(assert (=> d!1686178 e!3255069))

(declare-fun c!903331 () Bool)

(assert (=> d!1686178 (= c!903331 ((_ is EmptyExpr!14821) (regTwo!30154 r!7292)))))

(declare-fun e!3255065 () Bool)

(assert (=> d!1686178 (= lt!2145116 e!3255065)))

(declare-fun c!903333 () Bool)

(assert (=> d!1686178 (= c!903333 (isEmpty!32567 s!2326))))

(assert (=> d!1686178 (validRegex!6557 (regTwo!30154 r!7292))))

(assert (=> d!1686178 (= (matchR!7006 (regTwo!30154 r!7292) s!2326) lt!2145116)))

(declare-fun b!5230444 () Bool)

(assert (=> b!5230444 (= e!3255065 (nullable!4990 (regTwo!30154 r!7292)))))

(declare-fun b!5230445 () Bool)

(assert (=> b!5230445 (= e!3255069 e!3255068)))

(declare-fun c!903332 () Bool)

(assert (=> b!5230445 (= c!903332 ((_ is EmptyLang!14821) (regTwo!30154 r!7292)))))

(declare-fun b!5230446 () Bool)

(declare-fun res!2220277 () Bool)

(assert (=> b!5230446 (=> (not res!2220277) (not e!3255064))))

(assert (=> b!5230446 (= res!2220277 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun b!5230447 () Bool)

(declare-fun res!2220280 () Bool)

(assert (=> b!5230447 (=> res!2220280 e!3255066)))

(assert (=> b!5230447 (= res!2220280 (not (isEmpty!32567 (tail!10304 s!2326))))))

(declare-fun b!5230448 () Bool)

(assert (=> b!5230448 (= e!3255066 (not (= (head!11207 s!2326) (c!902967 (regTwo!30154 r!7292)))))))

(declare-fun b!5230449 () Bool)

(declare-fun res!2220278 () Bool)

(assert (=> b!5230449 (=> res!2220278 e!3255067)))

(assert (=> b!5230449 (= res!2220278 (not ((_ is ElementMatch!14821) (regTwo!30154 r!7292))))))

(assert (=> b!5230449 (= e!3255068 e!3255067)))

(declare-fun b!5230450 () Bool)

(assert (=> b!5230450 (= e!3255065 (matchR!7006 (derivativeStep!4066 (regTwo!30154 r!7292) (head!11207 s!2326)) (tail!10304 s!2326)))))

(assert (= (and d!1686178 c!903333) b!5230444))

(assert (= (and d!1686178 (not c!903333)) b!5230450))

(assert (= (and d!1686178 c!903331) b!5230439))

(assert (= (and d!1686178 (not c!903331)) b!5230445))

(assert (= (and b!5230445 c!903332) b!5230441))

(assert (= (and b!5230445 (not c!903332)) b!5230449))

(assert (= (and b!5230449 (not res!2220278)) b!5230440))

(assert (= (and b!5230440 res!2220274) b!5230443))

(assert (= (and b!5230443 res!2220281) b!5230446))

(assert (= (and b!5230446 res!2220277) b!5230437))

(assert (= (and b!5230440 (not res!2220276)) b!5230438))

(assert (= (and b!5230438 res!2220275) b!5230442))

(assert (= (and b!5230442 (not res!2220279)) b!5230447))

(assert (= (and b!5230447 (not res!2220280)) b!5230448))

(assert (= (or b!5230439 b!5230442 b!5230443) bm!369869))

(assert (=> b!5230450 m!6275616))

(assert (=> b!5230450 m!6275616))

(declare-fun m!6276338 () Bool)

(assert (=> b!5230450 m!6276338))

(assert (=> b!5230450 m!6275620))

(assert (=> b!5230450 m!6276338))

(assert (=> b!5230450 m!6275620))

(declare-fun m!6276340 () Bool)

(assert (=> b!5230450 m!6276340))

(assert (=> b!5230446 m!6275620))

(assert (=> b!5230446 m!6275620))

(assert (=> b!5230446 m!6275712))

(assert (=> b!5230448 m!6275616))

(assert (=> d!1686178 m!6275612))

(declare-fun m!6276342 () Bool)

(assert (=> d!1686178 m!6276342))

(assert (=> b!5230447 m!6275620))

(assert (=> b!5230447 m!6275620))

(assert (=> b!5230447 m!6275712))

(assert (=> b!5230437 m!6275616))

(assert (=> bm!369869 m!6275612))

(declare-fun m!6276344 () Bool)

(assert (=> b!5230444 m!6276344))

(assert (=> b!5229904 d!1686178))

(declare-fun d!1686182 () Bool)

(assert (=> d!1686182 true))

(declare-fun setRes!33310 () Bool)

(assert (=> d!1686182 setRes!33310))

(declare-fun condSetEmpty!33310 () Bool)

(declare-fun res!2220282 () (InoxSet Context!8410))

(assert (=> d!1686182 (= condSetEmpty!33310 (= res!2220282 ((as const (Array Context!8410 Bool)) false)))))

(assert (=> d!1686182 (= (choose!38897 lt!2144986 lambda!262644) res!2220282)))

(declare-fun setIsEmpty!33310 () Bool)

(assert (=> setIsEmpty!33310 setRes!33310))

(declare-fun tp!1465607 () Bool)

(declare-fun setElem!33310 () Context!8410)

(declare-fun setNonEmpty!33310 () Bool)

(declare-fun e!3255071 () Bool)

(assert (=> setNonEmpty!33310 (= setRes!33310 (and tp!1465607 (inv!80299 setElem!33310) e!3255071))))

(declare-fun setRest!33310 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33310 (= res!2220282 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33310 true) setRest!33310))))

(declare-fun b!5230453 () Bool)

(declare-fun tp!1465606 () Bool)

(assert (=> b!5230453 (= e!3255071 tp!1465606)))

(assert (= (and d!1686182 condSetEmpty!33310) setIsEmpty!33310))

(assert (= (and d!1686182 (not condSetEmpty!33310)) setNonEmpty!33310))

(assert (= setNonEmpty!33310 b!5230453))

(declare-fun m!6276352 () Bool)

(assert (=> setNonEmpty!33310 m!6276352))

(assert (=> d!1685904 d!1686182))

(assert (=> bs!1214004 d!1685898))

(declare-fun d!1686186 () Bool)

(assert (=> d!1686186 (= (isEmpty!32564 (tail!10305 (exprs!4705 (h!67087 zl!343)))) ((_ is Nil!60638) (tail!10305 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> b!5229979 d!1686186))

(declare-fun d!1686188 () Bool)

(assert (=> d!1686188 (= (tail!10305 (exprs!4705 (h!67087 zl!343))) (t!373939 (exprs!4705 (h!67087 zl!343))))))

(assert (=> b!5229979 d!1686188))

(declare-fun d!1686190 () Bool)

(declare-fun lt!2145117 () Int)

(assert (=> d!1686190 (>= lt!2145117 0)))

(declare-fun e!3255072 () Int)

(assert (=> d!1686190 (= lt!2145117 e!3255072)))

(declare-fun c!903335 () Bool)

(assert (=> d!1686190 (= c!903335 ((_ is Cons!60638) (exprs!4705 (h!67087 (Cons!60639 lt!2144985 Nil!60639)))))))

(assert (=> d!1686190 (= (contextDepthTotal!2 (h!67087 (Cons!60639 lt!2144985 Nil!60639))) lt!2145117)))

(declare-fun b!5230454 () Bool)

(assert (=> b!5230454 (= e!3255072 (+ (regexDepthTotal!1 (h!67086 (exprs!4705 (h!67087 (Cons!60639 lt!2144985 Nil!60639))))) (contextDepthTotal!2 (Context!8411 (t!373939 (exprs!4705 (h!67087 (Cons!60639 lt!2144985 Nil!60639))))))))))

(declare-fun b!5230455 () Bool)

(assert (=> b!5230455 (= e!3255072 1)))

(assert (= (and d!1686190 c!903335) b!5230454))

(assert (= (and d!1686190 (not c!903335)) b!5230455))

(declare-fun m!6276354 () Bool)

(assert (=> b!5230454 m!6276354))

(declare-fun m!6276356 () Bool)

(assert (=> b!5230454 m!6276356))

(assert (=> b!5229948 d!1686190))

(declare-fun d!1686192 () Bool)

(declare-fun lt!2145118 () Int)

(assert (=> d!1686192 (>= lt!2145118 0)))

(declare-fun e!3255073 () Int)

(assert (=> d!1686192 (= lt!2145118 e!3255073)))

(declare-fun c!903336 () Bool)

(assert (=> d!1686192 (= c!903336 ((_ is Cons!60639) (t!373940 (Cons!60639 lt!2144985 Nil!60639))))))

(assert (=> d!1686192 (= (zipperDepthTotal!2 (t!373940 (Cons!60639 lt!2144985 Nil!60639))) lt!2145118)))

(declare-fun b!5230456 () Bool)

(assert (=> b!5230456 (= e!3255073 (+ (contextDepthTotal!2 (h!67087 (t!373940 (Cons!60639 lt!2144985 Nil!60639)))) (zipperDepthTotal!2 (t!373940 (t!373940 (Cons!60639 lt!2144985 Nil!60639))))))))

(declare-fun b!5230457 () Bool)

(assert (=> b!5230457 (= e!3255073 0)))

(assert (= (and d!1686192 c!903336) b!5230456))

(assert (= (and d!1686192 (not c!903336)) b!5230457))

(declare-fun m!6276358 () Bool)

(assert (=> b!5230456 m!6276358))

(declare-fun m!6276360 () Bool)

(assert (=> b!5230456 m!6276360))

(assert (=> b!5229948 d!1686192))

(assert (=> d!1685886 d!1685880))

(declare-fun d!1686194 () Bool)

(assert (=> d!1686194 (= (Exists!2002 lambda!262691) (choose!38902 lambda!262691))))

(declare-fun bs!1214170 () Bool)

(assert (= bs!1214170 d!1686194))

(declare-fun m!6276364 () Bool)

(assert (=> bs!1214170 m!6276364))

(assert (=> d!1685886 d!1686194))

(declare-fun b!5230468 () Bool)

(declare-fun e!3255084 () Bool)

(declare-fun call!369877 () Bool)

(assert (=> b!5230468 (= e!3255084 call!369877)))

(declare-fun call!369878 () Bool)

(declare-fun bm!369871 () Bool)

(declare-fun c!903340 () Bool)

(declare-fun c!903341 () Bool)

(assert (=> bm!369871 (= call!369878 (validRegex!6557 (ite c!903340 (reg!15150 (regOne!30154 r!7292)) (ite c!903341 (regOne!30155 (regOne!30154 r!7292)) (regOne!30154 (regOne!30154 r!7292))))))))

(declare-fun b!5230471 () Bool)

(declare-fun e!3255082 () Bool)

(declare-fun e!3255079 () Bool)

(assert (=> b!5230471 (= e!3255082 e!3255079)))

(declare-fun res!2220295 () Bool)

(assert (=> b!5230471 (= res!2220295 (not (nullable!4990 (reg!15150 (regOne!30154 r!7292)))))))

(assert (=> b!5230471 (=> (not res!2220295) (not e!3255079))))

(declare-fun b!5230473 () Bool)

(declare-fun e!3255083 () Bool)

(assert (=> b!5230473 (= e!3255083 e!3255082)))

(assert (=> b!5230473 (= c!903340 ((_ is Star!14821) (regOne!30154 r!7292)))))

(declare-fun b!5230475 () Bool)

(declare-fun res!2220291 () Bool)

(assert (=> b!5230475 (=> (not res!2220291) (not e!3255084))))

(declare-fun call!369875 () Bool)

(assert (=> b!5230475 (= res!2220291 call!369875)))

(declare-fun e!3255087 () Bool)

(assert (=> b!5230475 (= e!3255087 e!3255084)))

(declare-fun bm!369872 () Bool)

(assert (=> bm!369872 (= call!369875 call!369878)))

(declare-fun bm!369873 () Bool)

(assert (=> bm!369873 (= call!369877 (validRegex!6557 (ite c!903341 (regTwo!30155 (regOne!30154 r!7292)) (regTwo!30154 (regOne!30154 r!7292)))))))

(declare-fun b!5230477 () Bool)

(assert (=> b!5230477 (= e!3255082 e!3255087)))

(assert (=> b!5230477 (= c!903341 ((_ is Union!14821) (regOne!30154 r!7292)))))

(declare-fun b!5230478 () Bool)

(assert (=> b!5230478 (= e!3255079 call!369878)))

(declare-fun b!5230479 () Bool)

(declare-fun res!2220290 () Bool)

(declare-fun e!3255085 () Bool)

(assert (=> b!5230479 (=> res!2220290 e!3255085)))

(assert (=> b!5230479 (= res!2220290 (not ((_ is Concat!23666) (regOne!30154 r!7292))))))

(assert (=> b!5230479 (= e!3255087 e!3255085)))

(declare-fun b!5230480 () Bool)

(declare-fun e!3255086 () Bool)

(assert (=> b!5230480 (= e!3255086 call!369877)))

(declare-fun d!1686198 () Bool)

(declare-fun res!2220289 () Bool)

(assert (=> d!1686198 (=> res!2220289 e!3255083)))

(assert (=> d!1686198 (= res!2220289 ((_ is ElementMatch!14821) (regOne!30154 r!7292)))))

(assert (=> d!1686198 (= (validRegex!6557 (regOne!30154 r!7292)) e!3255083)))

(declare-fun b!5230476 () Bool)

(assert (=> b!5230476 (= e!3255085 e!3255086)))

(declare-fun res!2220294 () Bool)

(assert (=> b!5230476 (=> (not res!2220294) (not e!3255086))))

(assert (=> b!5230476 (= res!2220294 call!369875)))

(assert (= (and d!1686198 (not res!2220289)) b!5230473))

(assert (= (and b!5230473 c!903340) b!5230471))

(assert (= (and b!5230473 (not c!903340)) b!5230477))

(assert (= (and b!5230471 res!2220295) b!5230478))

(assert (= (and b!5230477 c!903341) b!5230475))

(assert (= (and b!5230477 (not c!903341)) b!5230479))

(assert (= (and b!5230475 res!2220291) b!5230468))

(assert (= (and b!5230479 (not res!2220290)) b!5230476))

(assert (= (and b!5230476 res!2220294) b!5230480))

(assert (= (or b!5230468 b!5230480) bm!369873))

(assert (= (or b!5230475 b!5230476) bm!369872))

(assert (= (or b!5230478 bm!369872) bm!369871))

(declare-fun m!6276366 () Bool)

(assert (=> bm!369871 m!6276366))

(declare-fun m!6276368 () Bool)

(assert (=> b!5230471 m!6276368))

(declare-fun m!6276370 () Bool)

(assert (=> bm!369873 m!6276370))

(assert (=> d!1685886 d!1686198))

(assert (=> d!1685886 d!1685890))

(declare-fun bs!1214171 () Bool)

(declare-fun d!1686200 () Bool)

(assert (= bs!1214171 (and d!1686200 d!1685888)))

(declare-fun lambda!262745 () Int)

(assert (=> bs!1214171 (not (= lambda!262745 lambda!262697))))

(declare-fun bs!1214172 () Bool)

(assert (= bs!1214172 (and d!1686200 d!1685886)))

(assert (=> bs!1214172 (= lambda!262745 lambda!262691)))

(declare-fun bs!1214173 () Bool)

(assert (= bs!1214173 (and d!1686200 b!5230233)))

(assert (=> bs!1214173 (not (= lambda!262745 lambda!262728))))

(declare-fun bs!1214174 () Bool)

(assert (= bs!1214174 (and d!1686200 b!5229760)))

(assert (=> bs!1214174 (not (= lambda!262745 lambda!262682))))

(declare-fun bs!1214175 () Bool)

(assert (= bs!1214175 (and d!1686200 b!5229208)))

(assert (=> bs!1214175 (not (= lambda!262745 lambda!262643))))

(assert (=> bs!1214175 (= lambda!262745 lambda!262642)))

(assert (=> bs!1214171 (= lambda!262745 lambda!262696)))

(declare-fun bs!1214176 () Bool)

(assert (= bs!1214176 (and d!1686200 b!5229763)))

(assert (=> bs!1214176 (not (= lambda!262745 lambda!262681))))

(declare-fun bs!1214177 () Bool)

(assert (= bs!1214177 (and d!1686200 b!5230230)))

(assert (=> bs!1214177 (not (= lambda!262745 lambda!262729))))

(assert (=> d!1686200 true))

(assert (=> d!1686200 true))

(assert (=> d!1686200 true))

(assert (=> d!1686200 (= (isDefined!11635 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) Nil!60640 s!2326 s!2326)) (Exists!2002 lambda!262745))))

(assert (=> d!1686200 true))

(declare-fun _$89!1418 () Unit!152582)

(assert (=> d!1686200 (= (choose!38903 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326) _$89!1418)))

(declare-fun bs!1214178 () Bool)

(assert (= bs!1214178 d!1686200))

(assert (=> bs!1214178 m!6275296))

(assert (=> bs!1214178 m!6275296))

(assert (=> bs!1214178 m!6275298))

(declare-fun m!6276382 () Bool)

(assert (=> bs!1214178 m!6276382))

(assert (=> d!1685886 d!1686200))

(declare-fun b!5230505 () Bool)

(declare-fun e!3255100 () Bool)

(assert (=> b!5230505 (= e!3255100 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343))))))))))

(declare-fun call!369887 () (InoxSet Context!8410))

(declare-fun e!3255101 () (InoxSet Context!8410))

(declare-fun b!5230506 () Bool)

(assert (=> b!5230506 (= e!3255101 ((_ map or) call!369887 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343))))))) (h!67088 s!2326))))))

(declare-fun b!5230507 () Bool)

(declare-fun e!3255102 () (InoxSet Context!8410))

(assert (=> b!5230507 (= e!3255101 e!3255102)))

(declare-fun c!903353 () Bool)

(assert (=> b!5230507 (= c!903353 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun d!1686204 () Bool)

(declare-fun c!903352 () Bool)

(assert (=> d!1686204 (= c!903352 e!3255100)))

(declare-fun res!2220300 () Bool)

(assert (=> d!1686204 (=> (not res!2220300) (not e!3255100))))

(assert (=> d!1686204 (= res!2220300 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))))))))

(assert (=> d!1686204 (= (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326)) e!3255101)))

(declare-fun b!5230508 () Bool)

(assert (=> b!5230508 (= e!3255102 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5230509 () Bool)

(assert (=> b!5230509 (= e!3255102 call!369887)))

(declare-fun bm!369882 () Bool)

(assert (=> bm!369882 (= call!369887 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343))))))) (h!67088 s!2326)))))

(assert (= (and d!1686204 res!2220300) b!5230505))

(assert (= (and d!1686204 c!903352) b!5230506))

(assert (= (and d!1686204 (not c!903352)) b!5230507))

(assert (= (and b!5230507 c!903353) b!5230509))

(assert (= (and b!5230507 (not c!903353)) b!5230508))

(assert (= (or b!5230506 b!5230509) bm!369882))

(declare-fun m!6276384 () Bool)

(assert (=> b!5230505 m!6276384))

(declare-fun m!6276386 () Bool)

(assert (=> b!5230506 m!6276386))

(declare-fun m!6276388 () Bool)

(assert (=> bm!369882 m!6276388))

(assert (=> b!5229628 d!1686204))

(declare-fun d!1686206 () Bool)

(assert (=> d!1686206 (= (isEmpty!32564 (unfocusZipperList!263 zl!343)) ((_ is Nil!60638) (unfocusZipperList!263 zl!343)))))

(assert (=> b!5229863 d!1686206))

(declare-fun d!1686208 () Bool)

(declare-fun c!903354 () Bool)

(assert (=> d!1686208 (= c!903354 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255103 () Bool)

(assert (=> d!1686208 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144977 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255103)))

(declare-fun b!5230510 () Bool)

(assert (=> b!5230510 (= e!3255103 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144977 (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230511 () Bool)

(assert (=> b!5230511 (= e!3255103 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144977 (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686208 c!903354) b!5230510))

(assert (= (and d!1686208 (not c!903354)) b!5230511))

(assert (=> d!1686208 m!6275606))

(declare-fun m!6276390 () Bool)

(assert (=> d!1686208 m!6276390))

(assert (=> b!5230510 m!6275862))

(declare-fun m!6276392 () Bool)

(assert (=> b!5230510 m!6276392))

(assert (=> b!5230511 m!6275606))

(declare-fun m!6276394 () Bool)

(assert (=> b!5230511 m!6276394))

(assert (=> b!5230511 m!6275862))

(assert (=> b!5230511 m!6276394))

(declare-fun m!6276396 () Bool)

(assert (=> b!5230511 m!6276396))

(assert (=> b!5230511 m!6275606))

(declare-fun m!6276398 () Bool)

(assert (=> b!5230511 m!6276398))

(assert (=> b!5230511 m!6276396))

(assert (=> b!5230511 m!6276398))

(declare-fun m!6276400 () Bool)

(assert (=> b!5230511 m!6276400))

(assert (=> b!5229944 d!1686208))

(declare-fun bs!1214179 () Bool)

(declare-fun d!1686210 () Bool)

(assert (= bs!1214179 (and d!1686210 b!5229203)))

(declare-fun lambda!262748 () Int)

(assert (=> bs!1214179 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262748 lambda!262644))))

(assert (=> d!1686210 true))

(assert (=> d!1686210 (= (derivationStepZipper!1088 lt!2144977 (head!11207 (t!373941 s!2326))) (flatMap!548 lt!2144977 lambda!262748))))

(declare-fun bs!1214180 () Bool)

(assert (= bs!1214180 d!1686210))

(declare-fun m!6276402 () Bool)

(assert (=> bs!1214180 m!6276402))

(assert (=> b!5229944 d!1686210))

(declare-fun d!1686212 () Bool)

(assert (=> d!1686212 (= (head!11207 (t!373941 s!2326)) (h!67088 (t!373941 s!2326)))))

(assert (=> b!5229944 d!1686212))

(declare-fun d!1686214 () Bool)

(assert (=> d!1686214 (= (tail!10304 (t!373941 s!2326)) (t!373941 (t!373941 s!2326)))))

(assert (=> b!5229944 d!1686214))

(declare-fun d!1686216 () Bool)

(assert (=> d!1686216 (= ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903046 c!903042) (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (regTwo!30155 (regOne!30154 r!7292)))) (Cons!60638 (ite (or c!903046 c!903042) (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (regTwo!30155 (regOne!30154 r!7292))) (exprs!4705 lt!2144978)))))

(assert (=> bm!369696 d!1686216))

(declare-fun d!1686218 () Bool)

(assert (=> d!1686218 true))

(assert (=> d!1686218 true))

(declare-fun res!2220304 () Bool)

(assert (=> d!1686218 (= (choose!38902 lambda!262643) res!2220304)))

(assert (=> d!1685882 d!1686218))

(assert (=> d!1685866 d!1686174))

(declare-fun d!1686222 () Bool)

(assert (=> d!1686222 (= (isDefined!11635 lt!2145079) (not (isEmpty!32568 lt!2145079)))))

(declare-fun bs!1214181 () Bool)

(assert (= bs!1214181 d!1686222))

(declare-fun m!6276412 () Bool)

(assert (=> bs!1214181 m!6276412))

(assert (=> d!1685880 d!1686222))

(declare-fun b!5230535 () Bool)

(declare-fun e!3255116 () Bool)

(assert (=> b!5230535 (= e!3255116 (= (head!11207 Nil!60640) (c!902967 (regOne!30154 r!7292))))))

(declare-fun b!5230536 () Bool)

(declare-fun e!3255119 () Bool)

(declare-fun e!3255115 () Bool)

(assert (=> b!5230536 (= e!3255119 e!3255115)))

(declare-fun res!2220306 () Bool)

(assert (=> b!5230536 (=> (not res!2220306) (not e!3255115))))

(declare-fun lt!2145123 () Bool)

(assert (=> b!5230536 (= res!2220306 (not lt!2145123))))

(declare-fun b!5230537 () Bool)

(declare-fun e!3255121 () Bool)

(declare-fun call!369898 () Bool)

(assert (=> b!5230537 (= e!3255121 (= lt!2145123 call!369898))))

(declare-fun bm!369893 () Bool)

(assert (=> bm!369893 (= call!369898 (isEmpty!32567 Nil!60640))))

(declare-fun b!5230538 () Bool)

(declare-fun res!2220307 () Bool)

(assert (=> b!5230538 (=> res!2220307 e!3255119)))

(assert (=> b!5230538 (= res!2220307 e!3255116)))

(declare-fun res!2220305 () Bool)

(assert (=> b!5230538 (=> (not res!2220305) (not e!3255116))))

(assert (=> b!5230538 (= res!2220305 lt!2145123)))

(declare-fun b!5230539 () Bool)

(declare-fun e!3255120 () Bool)

(assert (=> b!5230539 (= e!3255120 (not lt!2145123))))

(declare-fun b!5230540 () Bool)

(declare-fun e!3255118 () Bool)

(assert (=> b!5230540 (= e!3255115 e!3255118)))

(declare-fun res!2220310 () Bool)

(assert (=> b!5230540 (=> res!2220310 e!3255118)))

(assert (=> b!5230540 (= res!2220310 call!369898)))

(declare-fun b!5230541 () Bool)

(declare-fun res!2220312 () Bool)

(assert (=> b!5230541 (=> (not res!2220312) (not e!3255116))))

(assert (=> b!5230541 (= res!2220312 (not call!369898))))

(declare-fun d!1686224 () Bool)

(assert (=> d!1686224 e!3255121))

(declare-fun c!903367 () Bool)

(assert (=> d!1686224 (= c!903367 ((_ is EmptyExpr!14821) (regOne!30154 r!7292)))))

(declare-fun e!3255117 () Bool)

(assert (=> d!1686224 (= lt!2145123 e!3255117)))

(declare-fun c!903369 () Bool)

(assert (=> d!1686224 (= c!903369 (isEmpty!32567 Nil!60640))))

(assert (=> d!1686224 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1686224 (= (matchR!7006 (regOne!30154 r!7292) Nil!60640) lt!2145123)))

(declare-fun b!5230542 () Bool)

(assert (=> b!5230542 (= e!3255117 (nullable!4990 (regOne!30154 r!7292)))))

(declare-fun b!5230543 () Bool)

(assert (=> b!5230543 (= e!3255121 e!3255120)))

(declare-fun c!903368 () Bool)

(assert (=> b!5230543 (= c!903368 ((_ is EmptyLang!14821) (regOne!30154 r!7292)))))

(declare-fun b!5230544 () Bool)

(declare-fun res!2220308 () Bool)

(assert (=> b!5230544 (=> (not res!2220308) (not e!3255116))))

(assert (=> b!5230544 (= res!2220308 (isEmpty!32567 (tail!10304 Nil!60640)))))

(declare-fun b!5230545 () Bool)

(declare-fun res!2220311 () Bool)

(assert (=> b!5230545 (=> res!2220311 e!3255118)))

(assert (=> b!5230545 (= res!2220311 (not (isEmpty!32567 (tail!10304 Nil!60640))))))

(declare-fun b!5230546 () Bool)

(assert (=> b!5230546 (= e!3255118 (not (= (head!11207 Nil!60640) (c!902967 (regOne!30154 r!7292)))))))

(declare-fun b!5230547 () Bool)

(declare-fun res!2220309 () Bool)

(assert (=> b!5230547 (=> res!2220309 e!3255119)))

(assert (=> b!5230547 (= res!2220309 (not ((_ is ElementMatch!14821) (regOne!30154 r!7292))))))

(assert (=> b!5230547 (= e!3255120 e!3255119)))

(declare-fun b!5230548 () Bool)

(assert (=> b!5230548 (= e!3255117 (matchR!7006 (derivativeStep!4066 (regOne!30154 r!7292) (head!11207 Nil!60640)) (tail!10304 Nil!60640)))))

(assert (= (and d!1686224 c!903369) b!5230542))

(assert (= (and d!1686224 (not c!903369)) b!5230548))

(assert (= (and d!1686224 c!903367) b!5230537))

(assert (= (and d!1686224 (not c!903367)) b!5230543))

(assert (= (and b!5230543 c!903368) b!5230539))

(assert (= (and b!5230543 (not c!903368)) b!5230547))

(assert (= (and b!5230547 (not res!2220309)) b!5230538))

(assert (= (and b!5230538 res!2220305) b!5230541))

(assert (= (and b!5230541 res!2220312) b!5230544))

(assert (= (and b!5230544 res!2220308) b!5230535))

(assert (= (and b!5230538 (not res!2220307)) b!5230536))

(assert (= (and b!5230536 res!2220306) b!5230540))

(assert (= (and b!5230540 (not res!2220310)) b!5230545))

(assert (= (and b!5230545 (not res!2220311)) b!5230546))

(assert (= (or b!5230537 b!5230540 b!5230541) bm!369893))

(declare-fun m!6276424 () Bool)

(assert (=> b!5230548 m!6276424))

(assert (=> b!5230548 m!6276424))

(declare-fun m!6276426 () Bool)

(assert (=> b!5230548 m!6276426))

(declare-fun m!6276428 () Bool)

(assert (=> b!5230548 m!6276428))

(assert (=> b!5230548 m!6276426))

(assert (=> b!5230548 m!6276428))

(declare-fun m!6276430 () Bool)

(assert (=> b!5230548 m!6276430))

(assert (=> b!5230544 m!6276428))

(assert (=> b!5230544 m!6276428))

(declare-fun m!6276432 () Bool)

(assert (=> b!5230544 m!6276432))

(assert (=> b!5230546 m!6276424))

(declare-fun m!6276434 () Bool)

(assert (=> d!1686224 m!6276434))

(assert (=> d!1686224 m!6275780))

(assert (=> b!5230545 m!6276428))

(assert (=> b!5230545 m!6276428))

(assert (=> b!5230545 m!6276432))

(assert (=> b!5230535 m!6276424))

(assert (=> bm!369893 m!6276434))

(assert (=> b!5230542 m!6276188))

(assert (=> d!1685880 d!1686224))

(assert (=> d!1685880 d!1686198))

(declare-fun d!1686230 () Bool)

(declare-fun c!903370 () Bool)

(assert (=> d!1686230 (= c!903370 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255122 () Bool)

(assert (=> d!1686230 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144972 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255122)))

(declare-fun b!5230549 () Bool)

(assert (=> b!5230549 (= e!3255122 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144972 (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230550 () Bool)

(assert (=> b!5230550 (= e!3255122 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144972 (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686230 c!903370) b!5230549))

(assert (= (and d!1686230 (not c!903370)) b!5230550))

(assert (=> d!1686230 m!6275606))

(assert (=> d!1686230 m!6276390))

(assert (=> b!5230549 m!6275764))

(declare-fun m!6276436 () Bool)

(assert (=> b!5230549 m!6276436))

(assert (=> b!5230550 m!6275606))

(assert (=> b!5230550 m!6276394))

(assert (=> b!5230550 m!6275764))

(assert (=> b!5230550 m!6276394))

(declare-fun m!6276438 () Bool)

(assert (=> b!5230550 m!6276438))

(assert (=> b!5230550 m!6275606))

(assert (=> b!5230550 m!6276398))

(assert (=> b!5230550 m!6276438))

(assert (=> b!5230550 m!6276398))

(declare-fun m!6276440 () Bool)

(assert (=> b!5230550 m!6276440))

(assert (=> b!5229880 d!1686230))

(declare-fun bs!1214183 () Bool)

(declare-fun d!1686232 () Bool)

(assert (= bs!1214183 (and d!1686232 b!5229203)))

(declare-fun lambda!262749 () Int)

(assert (=> bs!1214183 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262749 lambda!262644))))

(declare-fun bs!1214184 () Bool)

(assert (= bs!1214184 (and d!1686232 d!1686210)))

(assert (=> bs!1214184 (= lambda!262749 lambda!262748)))

(assert (=> d!1686232 true))

(assert (=> d!1686232 (= (derivationStepZipper!1088 lt!2144972 (head!11207 (t!373941 s!2326))) (flatMap!548 lt!2144972 lambda!262749))))

(declare-fun bs!1214185 () Bool)

(assert (= bs!1214185 d!1686232))

(declare-fun m!6276442 () Bool)

(assert (=> bs!1214185 m!6276442))

(assert (=> b!5229880 d!1686232))

(assert (=> b!5229880 d!1686212))

(assert (=> b!5229880 d!1686214))

(declare-fun bm!369894 () Bool)

(declare-fun call!369902 () (InoxSet Context!8410))

(declare-fun call!369903 () (InoxSet Context!8410))

(assert (=> bm!369894 (= call!369902 call!369903)))

(declare-fun b!5230553 () Bool)

(declare-fun e!3255128 () (InoxSet Context!8410))

(declare-fun call!369899 () (InoxSet Context!8410))

(assert (=> b!5230553 (= e!3255128 ((_ map or) call!369899 call!369903))))

(declare-fun b!5230554 () Bool)

(declare-fun c!903375 () Bool)

(declare-fun e!3255129 () Bool)

(assert (=> b!5230554 (= c!903375 e!3255129)))

(declare-fun res!2220315 () Bool)

(assert (=> b!5230554 (=> (not res!2220315) (not e!3255129))))

(assert (=> b!5230554 (= res!2220315 ((_ is Concat!23666) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun e!3255126 () (InoxSet Context!8410))

(assert (=> b!5230554 (= e!3255126 e!3255128)))

(declare-fun b!5230555 () Bool)

(declare-fun e!3255127 () (InoxSet Context!8410))

(assert (=> b!5230555 (= e!3255127 call!369902)))

(declare-fun c!903373 () Bool)

(declare-fun bm!369895 () Bool)

(declare-fun call!369904 () List!60762)

(assert (=> bm!369895 (= call!369899 (derivationStepZipperDown!269 (ite c!903373 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))) (ite c!903373 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (Context!8411 call!369904)) (h!67088 s!2326)))))

(declare-fun bm!369896 () Bool)

(declare-fun call!369901 () (InoxSet Context!8410))

(assert (=> bm!369896 (= call!369903 call!369901)))

(declare-fun bm!369897 () Bool)

(declare-fun c!903371 () Bool)

(assert (=> bm!369897 (= call!369904 ($colon$colon!1294 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343))))) (ite (or c!903375 c!903371) (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67086 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5230556 () Bool)

(declare-fun e!3255130 () (InoxSet Context!8410))

(assert (=> b!5230556 (= e!3255130 (store ((as const (Array Context!8410 Bool)) false) (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) true))))

(declare-fun b!5230557 () Bool)

(assert (=> b!5230557 (= e!3255128 e!3255127)))

(assert (=> b!5230557 (= c!903371 ((_ is Concat!23666) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230558 () Bool)

(declare-fun e!3255125 () (InoxSet Context!8410))

(assert (=> b!5230558 (= e!3255125 call!369902)))

(declare-fun call!369900 () List!60762)

(declare-fun bm!369898 () Bool)

(assert (=> bm!369898 (= call!369901 (derivationStepZipperDown!269 (ite c!903373 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903375 (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (ite c!903371 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))) (reg!15150 (h!67086 (exprs!4705 (h!67087 zl!343))))))) (ite (or c!903373 c!903375) (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (Context!8411 call!369900)) (h!67088 s!2326)))))

(declare-fun b!5230559 () Bool)

(assert (=> b!5230559 (= e!3255129 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))

(declare-fun b!5230561 () Bool)

(declare-fun c!903374 () Bool)

(assert (=> b!5230561 (= c!903374 ((_ is Star!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> b!5230561 (= e!3255127 e!3255125)))

(declare-fun b!5230562 () Bool)

(assert (=> b!5230562 (= e!3255130 e!3255126)))

(assert (=> b!5230562 (= c!903373 ((_ is Union!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun bm!369899 () Bool)

(assert (=> bm!369899 (= call!369900 call!369904)))

(declare-fun b!5230563 () Bool)

(assert (=> b!5230563 (= e!3255125 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686234 () Bool)

(declare-fun c!903372 () Bool)

(assert (=> d!1686234 (= c!903372 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))) (= (c!902967 (h!67086 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326))))))

(assert (=> d!1686234 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 (h!67087 zl!343))) (Context!8411 (t!373939 (exprs!4705 (h!67087 zl!343)))) (h!67088 s!2326)) e!3255130)))

(declare-fun b!5230560 () Bool)

(assert (=> b!5230560 (= e!3255126 ((_ map or) call!369899 call!369901))))

(assert (= (and d!1686234 c!903372) b!5230556))

(assert (= (and d!1686234 (not c!903372)) b!5230562))

(assert (= (and b!5230562 c!903373) b!5230560))

(assert (= (and b!5230562 (not c!903373)) b!5230554))

(assert (= (and b!5230554 res!2220315) b!5230559))

(assert (= (and b!5230554 c!903375) b!5230553))

(assert (= (and b!5230554 (not c!903375)) b!5230557))

(assert (= (and b!5230557 c!903371) b!5230555))

(assert (= (and b!5230557 (not c!903371)) b!5230561))

(assert (= (and b!5230561 c!903374) b!5230558))

(assert (= (and b!5230561 (not c!903374)) b!5230563))

(assert (= (or b!5230555 b!5230558) bm!369899))

(assert (= (or b!5230555 b!5230558) bm!369894))

(assert (= (or b!5230553 bm!369899) bm!369897))

(assert (= (or b!5230553 bm!369894) bm!369896))

(assert (= (or b!5230560 bm!369896) bm!369898))

(assert (= (or b!5230560 b!5230553) bm!369895))

(declare-fun m!6276448 () Bool)

(assert (=> bm!369895 m!6276448))

(assert (=> b!5230559 m!6275666))

(declare-fun m!6276450 () Bool)

(assert (=> b!5230556 m!6276450))

(declare-fun m!6276452 () Bool)

(assert (=> bm!369897 m!6276452))

(declare-fun m!6276454 () Bool)

(assert (=> bm!369898 m!6276454))

(assert (=> bm!369738 d!1686234))

(declare-fun bs!1214188 () Bool)

(declare-fun b!5230572 () Bool)

(assert (= bs!1214188 (and b!5230572 d!1685888)))

(declare-fun lambda!262750 () Int)

(assert (=> bs!1214188 (not (= lambda!262750 lambda!262697))))

(declare-fun bs!1214189 () Bool)

(assert (= bs!1214189 (and b!5230572 d!1685886)))

(assert (=> bs!1214189 (not (= lambda!262750 lambda!262691))))

(declare-fun bs!1214190 () Bool)

(assert (= bs!1214190 (and b!5230572 b!5230233)))

(assert (=> bs!1214190 (= (and (= (reg!15150 (regTwo!30155 r!7292)) (reg!15150 (regOne!30155 r!7292))) (= (regTwo!30155 r!7292) (regOne!30155 r!7292))) (= lambda!262750 lambda!262728))))

(declare-fun bs!1214191 () Bool)

(assert (= bs!1214191 (and b!5230572 b!5229760)))

(assert (=> bs!1214191 (not (= lambda!262750 lambda!262682))))

(declare-fun bs!1214192 () Bool)

(assert (= bs!1214192 (and b!5230572 b!5229208)))

(assert (=> bs!1214192 (not (= lambda!262750 lambda!262643))))

(assert (=> bs!1214192 (not (= lambda!262750 lambda!262642))))

(assert (=> bs!1214188 (not (= lambda!262750 lambda!262696))))

(declare-fun bs!1214193 () Bool)

(assert (= bs!1214193 (and b!5230572 b!5230230)))

(assert (=> bs!1214193 (not (= lambda!262750 lambda!262729))))

(declare-fun bs!1214194 () Bool)

(assert (= bs!1214194 (and b!5230572 d!1686200)))

(assert (=> bs!1214194 (not (= lambda!262750 lambda!262745))))

(declare-fun bs!1214195 () Bool)

(assert (= bs!1214195 (and b!5230572 b!5229763)))

(assert (=> bs!1214195 (= (and (= (reg!15150 (regTwo!30155 r!7292)) (reg!15150 r!7292)) (= (regTwo!30155 r!7292) r!7292)) (= lambda!262750 lambda!262681))))

(assert (=> b!5230572 true))

(assert (=> b!5230572 true))

(declare-fun bs!1214201 () Bool)

(declare-fun b!5230569 () Bool)

(assert (= bs!1214201 (and b!5230569 d!1685888)))

(declare-fun lambda!262752 () Int)

(assert (=> bs!1214201 (= (and (= (regOne!30154 (regTwo!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regTwo!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262752 lambda!262697))))

(declare-fun bs!1214203 () Bool)

(assert (= bs!1214203 (and b!5230569 d!1685886)))

(assert (=> bs!1214203 (not (= lambda!262752 lambda!262691))))

(declare-fun bs!1214204 () Bool)

(assert (= bs!1214204 (and b!5230569 b!5230233)))

(assert (=> bs!1214204 (not (= lambda!262752 lambda!262728))))

(declare-fun bs!1214206 () Bool)

(assert (= bs!1214206 (and b!5230569 b!5229760)))

(assert (=> bs!1214206 (= (and (= (regOne!30154 (regTwo!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regTwo!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262752 lambda!262682))))

(declare-fun bs!1214209 () Bool)

(assert (= bs!1214209 (and b!5230569 b!5229208)))

(assert (=> bs!1214209 (= (and (= (regOne!30154 (regTwo!30155 r!7292)) (regOne!30154 r!7292)) (= (regTwo!30154 (regTwo!30155 r!7292)) (regTwo!30154 r!7292))) (= lambda!262752 lambda!262643))))

(assert (=> bs!1214209 (not (= lambda!262752 lambda!262642))))

(assert (=> bs!1214201 (not (= lambda!262752 lambda!262696))))

(declare-fun bs!1214214 () Bool)

(assert (= bs!1214214 (and b!5230569 b!5230572)))

(assert (=> bs!1214214 (not (= lambda!262752 lambda!262750))))

(declare-fun bs!1214216 () Bool)

(assert (= bs!1214216 (and b!5230569 b!5230230)))

(assert (=> bs!1214216 (= (and (= (regOne!30154 (regTwo!30155 r!7292)) (regOne!30154 (regOne!30155 r!7292))) (= (regTwo!30154 (regTwo!30155 r!7292)) (regTwo!30154 (regOne!30155 r!7292)))) (= lambda!262752 lambda!262729))))

(declare-fun bs!1214217 () Bool)

(assert (= bs!1214217 (and b!5230569 d!1686200)))

(assert (=> bs!1214217 (not (= lambda!262752 lambda!262745))))

(declare-fun bs!1214218 () Bool)

(assert (= bs!1214218 (and b!5230569 b!5229763)))

(assert (=> bs!1214218 (not (= lambda!262752 lambda!262681))))

(assert (=> b!5230569 true))

(assert (=> b!5230569 true))

(declare-fun b!5230565 () Bool)

(declare-fun e!3255136 () Bool)

(assert (=> b!5230565 (= e!3255136 (matchRSpec!1924 (regTwo!30155 (regTwo!30155 r!7292)) s!2326))))

(declare-fun b!5230566 () Bool)

(declare-fun c!903378 () Bool)

(assert (=> b!5230566 (= c!903378 ((_ is ElementMatch!14821) (regTwo!30155 r!7292)))))

(declare-fun e!3255133 () Bool)

(declare-fun e!3255135 () Bool)

(assert (=> b!5230566 (= e!3255133 e!3255135)))

(declare-fun b!5230567 () Bool)

(declare-fun e!3255137 () Bool)

(assert (=> b!5230567 (= e!3255137 e!3255136)))

(declare-fun res!2220319 () Bool)

(assert (=> b!5230567 (= res!2220319 (matchRSpec!1924 (regOne!30155 (regTwo!30155 r!7292)) s!2326))))

(assert (=> b!5230567 (=> res!2220319 e!3255136)))

(declare-fun call!369906 () Bool)

(declare-fun c!903377 () Bool)

(declare-fun bm!369900 () Bool)

(assert (=> bm!369900 (= call!369906 (Exists!2002 (ite c!903377 lambda!262750 lambda!262752)))))

(declare-fun b!5230568 () Bool)

(declare-fun e!3255132 () Bool)

(declare-fun call!369905 () Bool)

(assert (=> b!5230568 (= e!3255132 call!369905)))

(declare-fun e!3255138 () Bool)

(assert (=> b!5230569 (= e!3255138 call!369906)))

(declare-fun d!1686240 () Bool)

(declare-fun c!903379 () Bool)

(assert (=> d!1686240 (= c!903379 ((_ is EmptyExpr!14821) (regTwo!30155 r!7292)))))

(assert (=> d!1686240 (= (matchRSpec!1924 (regTwo!30155 r!7292) s!2326) e!3255132)))

(declare-fun b!5230570 () Bool)

(declare-fun c!903376 () Bool)

(assert (=> b!5230570 (= c!903376 ((_ is Union!14821) (regTwo!30155 r!7292)))))

(assert (=> b!5230570 (= e!3255135 e!3255137)))

(declare-fun b!5230571 () Bool)

(assert (=> b!5230571 (= e!3255135 (= s!2326 (Cons!60640 (c!902967 (regTwo!30155 r!7292)) Nil!60640)))))

(declare-fun e!3255134 () Bool)

(assert (=> b!5230572 (= e!3255134 call!369906)))

(declare-fun b!5230573 () Bool)

(declare-fun res!2220317 () Bool)

(assert (=> b!5230573 (=> res!2220317 e!3255134)))

(assert (=> b!5230573 (= res!2220317 call!369905)))

(assert (=> b!5230573 (= e!3255138 e!3255134)))

(declare-fun bm!369901 () Bool)

(assert (=> bm!369901 (= call!369905 (isEmpty!32567 s!2326))))

(declare-fun b!5230574 () Bool)

(assert (=> b!5230574 (= e!3255132 e!3255133)))

(declare-fun res!2220318 () Bool)

(assert (=> b!5230574 (= res!2220318 (not ((_ is EmptyLang!14821) (regTwo!30155 r!7292))))))

(assert (=> b!5230574 (=> (not res!2220318) (not e!3255133))))

(declare-fun b!5230575 () Bool)

(assert (=> b!5230575 (= e!3255137 e!3255138)))

(assert (=> b!5230575 (= c!903377 ((_ is Star!14821) (regTwo!30155 r!7292)))))

(assert (= (and d!1686240 c!903379) b!5230568))

(assert (= (and d!1686240 (not c!903379)) b!5230574))

(assert (= (and b!5230574 res!2220318) b!5230566))

(assert (= (and b!5230566 c!903378) b!5230571))

(assert (= (and b!5230566 (not c!903378)) b!5230570))

(assert (= (and b!5230570 c!903376) b!5230567))

(assert (= (and b!5230570 (not c!903376)) b!5230575))

(assert (= (and b!5230567 (not res!2220319)) b!5230565))

(assert (= (and b!5230575 c!903377) b!5230573))

(assert (= (and b!5230575 (not c!903377)) b!5230569))

(assert (= (and b!5230573 (not res!2220317)) b!5230572))

(assert (= (or b!5230572 b!5230569) bm!369900))

(assert (= (or b!5230568 b!5230573) bm!369901))

(declare-fun m!6276482 () Bool)

(assert (=> b!5230565 m!6276482))

(declare-fun m!6276484 () Bool)

(assert (=> b!5230567 m!6276484))

(declare-fun m!6276486 () Bool)

(assert (=> bm!369900 m!6276486))

(assert (=> bm!369901 m!6275612))

(assert (=> b!5229756 d!1686240))

(declare-fun d!1686258 () Bool)

(declare-fun res!2220341 () Bool)

(declare-fun e!3255158 () Bool)

(assert (=> d!1686258 (=> res!2220341 e!3255158)))

(assert (=> d!1686258 (= res!2220341 ((_ is Nil!60639) lt!2145094))))

(assert (=> d!1686258 (= (noDuplicate!1200 lt!2145094) e!3255158)))

(declare-fun b!5230609 () Bool)

(declare-fun e!3255159 () Bool)

(assert (=> b!5230609 (= e!3255158 e!3255159)))

(declare-fun res!2220342 () Bool)

(assert (=> b!5230609 (=> (not res!2220342) (not e!3255159))))

(declare-fun contains!19678 (List!60763 Context!8410) Bool)

(assert (=> b!5230609 (= res!2220342 (not (contains!19678 (t!373940 lt!2145094) (h!67087 lt!2145094))))))

(declare-fun b!5230610 () Bool)

(assert (=> b!5230610 (= e!3255159 (noDuplicate!1200 (t!373940 lt!2145094)))))

(assert (= (and d!1686258 (not res!2220341)) b!5230609))

(assert (= (and b!5230609 res!2220342) b!5230610))

(declare-fun m!6276500 () Bool)

(assert (=> b!5230609 m!6276500))

(declare-fun m!6276502 () Bool)

(assert (=> b!5230610 m!6276502))

(assert (=> d!1685928 d!1686258))

(declare-fun d!1686264 () Bool)

(declare-fun e!3255171 () Bool)

(assert (=> d!1686264 e!3255171))

(declare-fun res!2220347 () Bool)

(assert (=> d!1686264 (=> (not res!2220347) (not e!3255171))))

(declare-fun res!2220348 () List!60763)

(assert (=> d!1686264 (= res!2220347 (noDuplicate!1200 res!2220348))))

(declare-fun e!3255172 () Bool)

(assert (=> d!1686264 e!3255172))

(assert (=> d!1686264 (= (choose!38905 z!1189) res!2220348)))

(declare-fun b!5230626 () Bool)

(declare-fun e!3255170 () Bool)

(declare-fun tp!1465621 () Bool)

(assert (=> b!5230626 (= e!3255170 tp!1465621)))

(declare-fun tp!1465620 () Bool)

(declare-fun b!5230625 () Bool)

(assert (=> b!5230625 (= e!3255172 (and (inv!80299 (h!67087 res!2220348)) e!3255170 tp!1465620))))

(declare-fun b!5230627 () Bool)

(assert (=> b!5230627 (= e!3255171 (= (content!10761 res!2220348) z!1189))))

(assert (= b!5230625 b!5230626))

(assert (= (and d!1686264 ((_ is Cons!60639) res!2220348)) b!5230625))

(assert (= (and d!1686264 res!2220347) b!5230627))

(declare-fun m!6276512 () Bool)

(assert (=> d!1686264 m!6276512))

(declare-fun m!6276514 () Bool)

(assert (=> b!5230625 m!6276514))

(declare-fun m!6276516 () Bool)

(assert (=> b!5230627 m!6276516))

(assert (=> d!1685928 d!1686264))

(assert (=> b!5229795 d!1686088))

(declare-fun bm!369910 () Bool)

(declare-fun call!369918 () (InoxSet Context!8410))

(declare-fun call!369919 () (InoxSet Context!8410))

(assert (=> bm!369910 (= call!369918 call!369919)))

(declare-fun b!5230639 () Bool)

(declare-fun e!3255182 () (InoxSet Context!8410))

(declare-fun call!369915 () (InoxSet Context!8410))

(assert (=> b!5230639 (= e!3255182 ((_ map or) call!369915 call!369919))))

(declare-fun b!5230640 () Bool)

(declare-fun c!903400 () Bool)

(declare-fun e!3255183 () Bool)

(assert (=> b!5230640 (= c!903400 e!3255183)))

(declare-fun res!2220350 () Bool)

(assert (=> b!5230640 (=> (not res!2220350) (not e!3255183))))

(assert (=> b!5230640 (= res!2220350 ((_ is Concat!23666) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))))))

(declare-fun e!3255180 () (InoxSet Context!8410))

(assert (=> b!5230640 (= e!3255180 e!3255182)))

(declare-fun b!5230641 () Bool)

(declare-fun e!3255181 () (InoxSet Context!8410))

(assert (=> b!5230641 (= e!3255181 call!369918)))

(declare-fun bm!369911 () Bool)

(declare-fun call!369920 () List!60762)

(declare-fun c!903398 () Bool)

(assert (=> bm!369911 (= call!369915 (derivationStepZipperDown!269 (ite c!903398 (regOne!30155 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (regOne!30154 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))))) (ite c!903398 (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699)) (Context!8411 call!369920)) (h!67088 s!2326)))))

(declare-fun bm!369912 () Bool)

(declare-fun call!369917 () (InoxSet Context!8410))

(assert (=> bm!369912 (= call!369919 call!369917)))

(declare-fun bm!369913 () Bool)

(declare-fun c!903396 () Bool)

(assert (=> bm!369913 (= call!369920 ($colon$colon!1294 (exprs!4705 (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699))) (ite (or c!903400 c!903396) (regTwo!30154 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))))))))

(declare-fun b!5230642 () Bool)

(declare-fun e!3255184 () (InoxSet Context!8410))

(assert (=> b!5230642 (= e!3255184 (store ((as const (Array Context!8410 Bool)) false) (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699)) true))))

(declare-fun b!5230643 () Bool)

(assert (=> b!5230643 (= e!3255182 e!3255181)))

(assert (=> b!5230643 (= c!903396 ((_ is Concat!23666) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))))))

(declare-fun b!5230644 () Bool)

(declare-fun e!3255179 () (InoxSet Context!8410))

(assert (=> b!5230644 (= e!3255179 call!369918)))

(declare-fun bm!369914 () Bool)

(declare-fun call!369916 () List!60762)

(assert (=> bm!369914 (= call!369917 (derivationStepZipperDown!269 (ite c!903398 (regTwo!30155 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (ite c!903400 (regTwo!30154 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (ite c!903396 (regOne!30154 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (reg!15150 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))))))) (ite (or c!903398 c!903400) (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699)) (Context!8411 call!369916)) (h!67088 s!2326)))))

(declare-fun b!5230645 () Bool)

(assert (=> b!5230645 (= e!3255183 (nullable!4990 (regOne!30154 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))))))))

(declare-fun b!5230647 () Bool)

(declare-fun c!903399 () Bool)

(assert (=> b!5230647 (= c!903399 ((_ is Star!14821) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))))))

(assert (=> b!5230647 (= e!3255181 e!3255179)))

(declare-fun b!5230648 () Bool)

(assert (=> b!5230648 (= e!3255184 e!3255180)))

(assert (=> b!5230648 (= c!903398 ((_ is Union!14821) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))))))

(declare-fun bm!369915 () Bool)

(assert (=> bm!369915 (= call!369916 call!369920)))

(declare-fun b!5230649 () Bool)

(assert (=> b!5230649 (= e!3255179 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686270 () Bool)

(declare-fun c!903397 () Bool)

(assert (=> d!1686270 (= c!903397 (and ((_ is ElementMatch!14821) (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (= (c!902967 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292))))))) (h!67088 s!2326))))))

(assert (=> d!1686270 (= (derivationStepZipperDown!269 (ite c!903044 (regTwo!30155 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903046 (regTwo!30154 (regTwo!30155 (regOne!30154 r!7292))) (ite c!903042 (regOne!30154 (regTwo!30155 (regOne!30154 r!7292))) (reg!15150 (regTwo!30155 (regOne!30154 r!7292)))))) (ite (or c!903044 c!903046) lt!2144978 (Context!8411 call!369699)) (h!67088 s!2326)) e!3255184)))

(declare-fun b!5230646 () Bool)

(assert (=> b!5230646 (= e!3255180 ((_ map or) call!369915 call!369917))))

(assert (= (and d!1686270 c!903397) b!5230642))

(assert (= (and d!1686270 (not c!903397)) b!5230648))

(assert (= (and b!5230648 c!903398) b!5230646))

(assert (= (and b!5230648 (not c!903398)) b!5230640))

(assert (= (and b!5230640 res!2220350) b!5230645))

(assert (= (and b!5230640 c!903400) b!5230639))

(assert (= (and b!5230640 (not c!903400)) b!5230643))

(assert (= (and b!5230643 c!903396) b!5230641))

(assert (= (and b!5230643 (not c!903396)) b!5230647))

(assert (= (and b!5230647 c!903399) b!5230644))

(assert (= (and b!5230647 (not c!903399)) b!5230649))

(assert (= (or b!5230641 b!5230644) bm!369915))

(assert (= (or b!5230641 b!5230644) bm!369910))

(assert (= (or b!5230639 bm!369915) bm!369913))

(assert (= (or b!5230639 bm!369910) bm!369912))

(assert (= (or b!5230646 bm!369912) bm!369914))

(assert (= (or b!5230646 b!5230639) bm!369911))

(declare-fun m!6276528 () Bool)

(assert (=> bm!369911 m!6276528))

(declare-fun m!6276530 () Bool)

(assert (=> b!5230645 m!6276530))

(declare-fun m!6276532 () Bool)

(assert (=> b!5230642 m!6276532))

(declare-fun m!6276534 () Bool)

(assert (=> bm!369913 m!6276534))

(declare-fun m!6276536 () Bool)

(assert (=> bm!369914 m!6276536))

(assert (=> bm!369697 d!1686270))

(assert (=> d!1685916 d!1686174))

(declare-fun d!1686274 () Bool)

(declare-fun c!903404 () Bool)

(assert (=> d!1686274 (= c!903404 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255192 () Bool)

(assert (=> d!1686274 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144993 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255192)))

(declare-fun b!5230664 () Bool)

(assert (=> b!5230664 (= e!3255192 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144993 (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230665 () Bool)

(assert (=> b!5230665 (= e!3255192 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144993 (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686274 c!903404) b!5230664))

(assert (= (and d!1686274 (not c!903404)) b!5230665))

(assert (=> d!1686274 m!6275606))

(assert (=> d!1686274 m!6276390))

(assert (=> b!5230664 m!6275722))

(declare-fun m!6276538 () Bool)

(assert (=> b!5230664 m!6276538))

(assert (=> b!5230665 m!6275606))

(assert (=> b!5230665 m!6276394))

(assert (=> b!5230665 m!6275722))

(assert (=> b!5230665 m!6276394))

(declare-fun m!6276540 () Bool)

(assert (=> b!5230665 m!6276540))

(assert (=> b!5230665 m!6275606))

(assert (=> b!5230665 m!6276398))

(assert (=> b!5230665 m!6276540))

(assert (=> b!5230665 m!6276398))

(declare-fun m!6276542 () Bool)

(assert (=> b!5230665 m!6276542))

(assert (=> b!5229813 d!1686274))

(declare-fun bs!1214219 () Bool)

(declare-fun d!1686276 () Bool)

(assert (= bs!1214219 (and d!1686276 b!5229203)))

(declare-fun lambda!262754 () Int)

(assert (=> bs!1214219 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262754 lambda!262644))))

(declare-fun bs!1214220 () Bool)

(assert (= bs!1214220 (and d!1686276 d!1686210)))

(assert (=> bs!1214220 (= lambda!262754 lambda!262748)))

(declare-fun bs!1214221 () Bool)

(assert (= bs!1214221 (and d!1686276 d!1686232)))

(assert (=> bs!1214221 (= lambda!262754 lambda!262749)))

(assert (=> d!1686276 true))

(assert (=> d!1686276 (= (derivationStepZipper!1088 lt!2144993 (head!11207 (t!373941 s!2326))) (flatMap!548 lt!2144993 lambda!262754))))

(declare-fun bs!1214222 () Bool)

(assert (= bs!1214222 d!1686276))

(declare-fun m!6276548 () Bool)

(assert (=> bs!1214222 m!6276548))

(assert (=> b!5229813 d!1686276))

(assert (=> b!5229813 d!1686212))

(assert (=> b!5229813 d!1686214))

(assert (=> d!1685876 d!1686174))

(declare-fun d!1686280 () Bool)

(assert (=> d!1686280 (= (nullable!4990 r!7292) (nullableFct!1396 r!7292))))

(declare-fun bs!1214223 () Bool)

(assert (= bs!1214223 d!1686280))

(declare-fun m!6276554 () Bool)

(assert (=> bs!1214223 m!6276554))

(assert (=> b!5229802 d!1686280))

(declare-fun d!1686284 () Bool)

(declare-fun c!903405 () Bool)

(assert (=> d!1686284 (= c!903405 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255197 () Bool)

(assert (=> d!1686284 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144988 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255197)))

(declare-fun b!5230670 () Bool)

(assert (=> b!5230670 (= e!3255197 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144988 (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230671 () Bool)

(assert (=> b!5230671 (= e!3255197 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144988 (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686284 c!903405) b!5230670))

(assert (= (and d!1686284 (not c!903405)) b!5230671))

(assert (=> d!1686284 m!6275606))

(assert (=> d!1686284 m!6276390))

(assert (=> b!5230670 m!6275868))

(declare-fun m!6276560 () Bool)

(assert (=> b!5230670 m!6276560))

(assert (=> b!5230671 m!6275606))

(assert (=> b!5230671 m!6276394))

(assert (=> b!5230671 m!6275868))

(assert (=> b!5230671 m!6276394))

(declare-fun m!6276562 () Bool)

(assert (=> b!5230671 m!6276562))

(assert (=> b!5230671 m!6275606))

(assert (=> b!5230671 m!6276398))

(assert (=> b!5230671 m!6276562))

(assert (=> b!5230671 m!6276398))

(declare-fun m!6276564 () Bool)

(assert (=> b!5230671 m!6276564))

(assert (=> b!5229946 d!1686284))

(declare-fun bs!1214224 () Bool)

(declare-fun d!1686288 () Bool)

(assert (= bs!1214224 (and d!1686288 b!5229203)))

(declare-fun lambda!262755 () Int)

(assert (=> bs!1214224 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262755 lambda!262644))))

(declare-fun bs!1214225 () Bool)

(assert (= bs!1214225 (and d!1686288 d!1686210)))

(assert (=> bs!1214225 (= lambda!262755 lambda!262748)))

(declare-fun bs!1214226 () Bool)

(assert (= bs!1214226 (and d!1686288 d!1686232)))

(assert (=> bs!1214226 (= lambda!262755 lambda!262749)))

(declare-fun bs!1214227 () Bool)

(assert (= bs!1214227 (and d!1686288 d!1686276)))

(assert (=> bs!1214227 (= lambda!262755 lambda!262754)))

(assert (=> d!1686288 true))

(assert (=> d!1686288 (= (derivationStepZipper!1088 lt!2144988 (head!11207 (t!373941 s!2326))) (flatMap!548 lt!2144988 lambda!262755))))

(declare-fun bs!1214229 () Bool)

(assert (= bs!1214229 d!1686288))

(declare-fun m!6276572 () Bool)

(assert (=> bs!1214229 m!6276572))

(assert (=> b!5229946 d!1686288))

(assert (=> b!5229946 d!1686212))

(assert (=> b!5229946 d!1686214))

(assert (=> d!1685868 d!1686174))

(declare-fun d!1686292 () Bool)

(assert (=> d!1686292 (= (isConcat!303 lt!2145097) ((_ is Concat!23666) lt!2145097))))

(assert (=> b!5229974 d!1686292))

(declare-fun b!5230674 () Bool)

(declare-fun e!3255199 () Bool)

(assert (=> b!5230674 (= e!3255199 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978)))))))))

(declare-fun call!369922 () (InoxSet Context!8410))

(declare-fun e!3255200 () (InoxSet Context!8410))

(declare-fun b!5230675 () Bool)

(assert (=> b!5230675 (= e!3255200 ((_ map or) call!369922 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978)))))) (h!67088 s!2326))))))

(declare-fun b!5230676 () Bool)

(declare-fun e!3255201 () (InoxSet Context!8410))

(assert (=> b!5230676 (= e!3255200 e!3255201)))

(declare-fun c!903408 () Bool)

(assert (=> b!5230676 (= c!903408 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978))))))))

(declare-fun d!1686294 () Bool)

(declare-fun c!903407 () Bool)

(assert (=> d!1686294 (= c!903407 e!3255199)))

(declare-fun res!2220363 () Bool)

(assert (=> d!1686294 (=> (not res!2220363) (not e!3255199))))

(assert (=> d!1686294 (= res!2220363 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978))))))))

(assert (=> d!1686294 (= (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (h!67088 s!2326)) e!3255200)))

(declare-fun b!5230677 () Bool)

(assert (=> b!5230677 (= e!3255201 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5230678 () Bool)

(assert (=> b!5230678 (= e!3255201 call!369922)))

(declare-fun bm!369917 () Bool)

(assert (=> bm!369917 (= call!369922 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978)))))) (h!67088 s!2326)))))

(assert (= (and d!1686294 res!2220363) b!5230674))

(assert (= (and d!1686294 c!903407) b!5230675))

(assert (= (and d!1686294 (not c!903407)) b!5230676))

(assert (= (and b!5230676 c!903408) b!5230678))

(assert (= (and b!5230676 (not c!903408)) b!5230677))

(assert (= (or b!5230675 b!5230678) bm!369917))

(declare-fun m!6276576 () Bool)

(assert (=> b!5230674 m!6276576))

(declare-fun m!6276578 () Bool)

(assert (=> b!5230675 m!6276578))

(declare-fun m!6276580 () Bool)

(assert (=> bm!369917 m!6276580))

(assert (=> b!5229612 d!1686294))

(assert (=> d!1685860 d!1686092))

(assert (=> d!1685860 d!1685870))

(declare-fun d!1686298 () Bool)

(declare-fun res!2220364 () Bool)

(declare-fun e!3255202 () Bool)

(assert (=> d!1686298 (=> res!2220364 e!3255202)))

(assert (=> d!1686298 (= res!2220364 ((_ is Nil!60638) (t!373939 lt!2144994)))))

(assert (=> d!1686298 (= (forall!14253 (t!373939 lt!2144994) lambda!262645) e!3255202)))

(declare-fun b!5230679 () Bool)

(declare-fun e!3255203 () Bool)

(assert (=> b!5230679 (= e!3255202 e!3255203)))

(declare-fun res!2220365 () Bool)

(assert (=> b!5230679 (=> (not res!2220365) (not e!3255203))))

(assert (=> b!5230679 (= res!2220365 (dynLambda!23964 lambda!262645 (h!67086 (t!373939 lt!2144994))))))

(declare-fun b!5230680 () Bool)

(assert (=> b!5230680 (= e!3255203 (forall!14253 (t!373939 (t!373939 lt!2144994)) lambda!262645))))

(assert (= (and d!1686298 (not res!2220364)) b!5230679))

(assert (= (and b!5230679 res!2220365) b!5230680))

(declare-fun b_lambda!202227 () Bool)

(assert (=> (not b_lambda!202227) (not b!5230679)))

(declare-fun m!6276584 () Bool)

(assert (=> b!5230679 m!6276584))

(declare-fun m!6276586 () Bool)

(assert (=> b!5230680 m!6276586))

(assert (=> b!5229939 d!1686298))

(declare-fun b!5230716 () Bool)

(declare-fun e!3255222 () List!60764)

(assert (=> b!5230716 (= e!3255222 (Cons!60640 (h!67088 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))) (++!13224 (t!373941 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))) (t!373941 s!2326))))))

(declare-fun b!5230717 () Bool)

(declare-fun res!2220373 () Bool)

(declare-fun e!3255223 () Bool)

(assert (=> b!5230717 (=> (not res!2220373) (not e!3255223))))

(declare-fun lt!2145133 () List!60764)

(declare-fun size!39732 (List!60764) Int)

(assert (=> b!5230717 (= res!2220373 (= (size!39732 lt!2145133) (+ (size!39732 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))) (size!39732 (t!373941 s!2326)))))))

(declare-fun d!1686304 () Bool)

(assert (=> d!1686304 e!3255223))

(declare-fun res!2220372 () Bool)

(assert (=> d!1686304 (=> (not res!2220372) (not e!3255223))))

(declare-fun content!10763 (List!60764) (InoxSet C!29912))

(assert (=> d!1686304 (= res!2220372 (= (content!10763 lt!2145133) ((_ map or) (content!10763 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))) (content!10763 (t!373941 s!2326)))))))

(assert (=> d!1686304 (= lt!2145133 e!3255222)))

(declare-fun c!903423 () Bool)

(assert (=> d!1686304 (= c!903423 ((_ is Nil!60640) (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))))))

(assert (=> d!1686304 (= (++!13224 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326)) lt!2145133)))

(declare-fun b!5230718 () Bool)

(assert (=> b!5230718 (= e!3255223 (or (not (= (t!373941 s!2326) Nil!60640)) (= lt!2145133 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)))))))

(declare-fun b!5230715 () Bool)

(assert (=> b!5230715 (= e!3255222 (t!373941 s!2326))))

(assert (= (and d!1686304 c!903423) b!5230715))

(assert (= (and d!1686304 (not c!903423)) b!5230716))

(assert (= (and d!1686304 res!2220372) b!5230717))

(assert (= (and b!5230717 res!2220373) b!5230718))

(declare-fun m!6276608 () Bool)

(assert (=> b!5230716 m!6276608))

(declare-fun m!6276610 () Bool)

(assert (=> b!5230717 m!6276610))

(assert (=> b!5230717 m!6275784))

(declare-fun m!6276614 () Bool)

(assert (=> b!5230717 m!6276614))

(declare-fun m!6276616 () Bool)

(assert (=> b!5230717 m!6276616))

(declare-fun m!6276620 () Bool)

(assert (=> d!1686304 m!6276620))

(assert (=> d!1686304 m!6275784))

(declare-fun m!6276622 () Bool)

(assert (=> d!1686304 m!6276622))

(declare-fun m!6276624 () Bool)

(assert (=> d!1686304 m!6276624))

(assert (=> b!5229899 d!1686304))

(declare-fun b!5230733 () Bool)

(declare-fun e!3255231 () List!60764)

(assert (=> b!5230733 (= e!3255231 (Cons!60640 (h!67088 Nil!60640) (++!13224 (t!373941 Nil!60640) (Cons!60640 (h!67088 s!2326) Nil!60640))))))

(declare-fun b!5230734 () Bool)

(declare-fun res!2220376 () Bool)

(declare-fun e!3255232 () Bool)

(assert (=> b!5230734 (=> (not res!2220376) (not e!3255232))))

(declare-fun lt!2145134 () List!60764)

(assert (=> b!5230734 (= res!2220376 (= (size!39732 lt!2145134) (+ (size!39732 Nil!60640) (size!39732 (Cons!60640 (h!67088 s!2326) Nil!60640)))))))

(declare-fun d!1686314 () Bool)

(assert (=> d!1686314 e!3255232))

(declare-fun res!2220375 () Bool)

(assert (=> d!1686314 (=> (not res!2220375) (not e!3255232))))

(assert (=> d!1686314 (= res!2220375 (= (content!10763 lt!2145134) ((_ map or) (content!10763 Nil!60640) (content!10763 (Cons!60640 (h!67088 s!2326) Nil!60640)))))))

(assert (=> d!1686314 (= lt!2145134 e!3255231)))

(declare-fun c!903430 () Bool)

(assert (=> d!1686314 (= c!903430 ((_ is Nil!60640) Nil!60640))))

(assert (=> d!1686314 (= (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) lt!2145134)))

(declare-fun b!5230735 () Bool)

(assert (=> b!5230735 (= e!3255232 (or (not (= (Cons!60640 (h!67088 s!2326) Nil!60640) Nil!60640)) (= lt!2145134 Nil!60640)))))

(declare-fun b!5230732 () Bool)

(assert (=> b!5230732 (= e!3255231 (Cons!60640 (h!67088 s!2326) Nil!60640))))

(assert (= (and d!1686314 c!903430) b!5230732))

(assert (= (and d!1686314 (not c!903430)) b!5230733))

(assert (= (and d!1686314 res!2220375) b!5230734))

(assert (= (and b!5230734 res!2220376) b!5230735))

(declare-fun m!6276626 () Bool)

(assert (=> b!5230733 m!6276626))

(declare-fun m!6276628 () Bool)

(assert (=> b!5230734 m!6276628))

(declare-fun m!6276630 () Bool)

(assert (=> b!5230734 m!6276630))

(declare-fun m!6276632 () Bool)

(assert (=> b!5230734 m!6276632))

(declare-fun m!6276634 () Bool)

(assert (=> d!1686314 m!6276634))

(declare-fun m!6276636 () Bool)

(assert (=> d!1686314 m!6276636))

(declare-fun m!6276638 () Bool)

(assert (=> d!1686314 m!6276638))

(assert (=> b!5229899 d!1686314))

(declare-fun d!1686316 () Bool)

(assert (=> d!1686316 (= (++!13224 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326)) s!2326)))

(declare-fun lt!2145137 () Unit!152582)

(declare-fun choose!38906 (List!60764 C!29912 List!60764 List!60764) Unit!152582)

(assert (=> d!1686316 (= lt!2145137 (choose!38906 Nil!60640 (h!67088 s!2326) (t!373941 s!2326) s!2326))))

(assert (=> d!1686316 (= (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) (t!373941 s!2326))) s!2326)))

(assert (=> d!1686316 (= (lemmaMoveElementToOtherListKeepsConcatEq!1639 Nil!60640 (h!67088 s!2326) (t!373941 s!2326) s!2326) lt!2145137)))

(declare-fun bs!1214246 () Bool)

(assert (= bs!1214246 d!1686316))

(assert (=> bs!1214246 m!6275784))

(assert (=> bs!1214246 m!6275784))

(assert (=> bs!1214246 m!6275786))

(declare-fun m!6276652 () Bool)

(assert (=> bs!1214246 m!6276652))

(declare-fun m!6276654 () Bool)

(assert (=> bs!1214246 m!6276654))

(assert (=> b!5229899 d!1686316))

(declare-fun b!5230742 () Bool)

(declare-fun lt!2145138 () Unit!152582)

(declare-fun lt!2145140 () Unit!152582)

(assert (=> b!5230742 (= lt!2145138 lt!2145140)))

(assert (=> b!5230742 (= (++!13224 (++!13224 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (Cons!60640 (h!67088 (t!373941 s!2326)) Nil!60640)) (t!373941 (t!373941 s!2326))) s!2326)))

(assert (=> b!5230742 (= lt!2145140 (lemmaMoveElementToOtherListKeepsConcatEq!1639 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (h!67088 (t!373941 s!2326)) (t!373941 (t!373941 s!2326)) s!2326))))

(declare-fun e!3255239 () Option!14932)

(assert (=> b!5230742 (= e!3255239 (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) (++!13224 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (Cons!60640 (h!67088 (t!373941 s!2326)) Nil!60640)) (t!373941 (t!373941 s!2326)) s!2326))))

(declare-fun b!5230743 () Bool)

(declare-fun e!3255241 () Option!14932)

(assert (=> b!5230743 (= e!3255241 e!3255239)))

(declare-fun c!903431 () Bool)

(assert (=> b!5230743 (= c!903431 ((_ is Nil!60640) (t!373941 s!2326)))))

(declare-fun b!5230744 () Bool)

(assert (=> b!5230744 (= e!3255241 (Some!14931 (tuple2!64041 (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326))))))

(declare-fun b!5230745 () Bool)

(assert (=> b!5230745 (= e!3255239 None!14931)))

(declare-fun d!1686322 () Bool)

(declare-fun e!3255243 () Bool)

(assert (=> d!1686322 e!3255243))

(declare-fun res!2220384 () Bool)

(assert (=> d!1686322 (=> res!2220384 e!3255243)))

(declare-fun e!3255240 () Bool)

(assert (=> d!1686322 (= res!2220384 e!3255240)))

(declare-fun res!2220383 () Bool)

(assert (=> d!1686322 (=> (not res!2220383) (not e!3255240))))

(declare-fun lt!2145139 () Option!14932)

(assert (=> d!1686322 (= res!2220383 (isDefined!11635 lt!2145139))))

(assert (=> d!1686322 (= lt!2145139 e!3255241)))

(declare-fun c!903432 () Bool)

(declare-fun e!3255242 () Bool)

(assert (=> d!1686322 (= c!903432 e!3255242)))

(declare-fun res!2220386 () Bool)

(assert (=> d!1686322 (=> (not res!2220386) (not e!3255242))))

(assert (=> d!1686322 (= res!2220386 (matchR!7006 (regOne!30154 r!7292) (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640))))))

(assert (=> d!1686322 (validRegex!6557 (regOne!30154 r!7292))))

(assert (=> d!1686322 (= (findConcatSeparation!1346 (regOne!30154 r!7292) (regTwo!30154 r!7292) (++!13224 Nil!60640 (Cons!60640 (h!67088 s!2326) Nil!60640)) (t!373941 s!2326) s!2326) lt!2145139)))

(declare-fun b!5230746 () Bool)

(assert (=> b!5230746 (= e!3255243 (not (isDefined!11635 lt!2145139)))))

(declare-fun b!5230747 () Bool)

(assert (=> b!5230747 (= e!3255242 (matchR!7006 (regTwo!30154 r!7292) (t!373941 s!2326)))))

(declare-fun b!5230748 () Bool)

(declare-fun res!2220385 () Bool)

(assert (=> b!5230748 (=> (not res!2220385) (not e!3255240))))

(assert (=> b!5230748 (= res!2220385 (matchR!7006 (regOne!30154 r!7292) (_1!35323 (get!20840 lt!2145139))))))

(declare-fun b!5230749 () Bool)

(declare-fun res!2220387 () Bool)

(assert (=> b!5230749 (=> (not res!2220387) (not e!3255240))))

(assert (=> b!5230749 (= res!2220387 (matchR!7006 (regTwo!30154 r!7292) (_2!35323 (get!20840 lt!2145139))))))

(declare-fun b!5230750 () Bool)

(assert (=> b!5230750 (= e!3255240 (= (++!13224 (_1!35323 (get!20840 lt!2145139)) (_2!35323 (get!20840 lt!2145139))) s!2326))))

(assert (= (and d!1686322 res!2220386) b!5230747))

(assert (= (and d!1686322 c!903432) b!5230744))

(assert (= (and d!1686322 (not c!903432)) b!5230743))

(assert (= (and b!5230743 c!903431) b!5230745))

(assert (= (and b!5230743 (not c!903431)) b!5230742))

(assert (= (and d!1686322 res!2220383) b!5230748))

(assert (= (and b!5230748 res!2220385) b!5230749))

(assert (= (and b!5230749 res!2220387) b!5230750))

(assert (= (and d!1686322 (not res!2220384)) b!5230746))

(declare-fun m!6276656 () Bool)

(assert (=> b!5230746 m!6276656))

(declare-fun m!6276658 () Bool)

(assert (=> b!5230748 m!6276658))

(declare-fun m!6276660 () Bool)

(assert (=> b!5230748 m!6276660))

(assert (=> b!5230749 m!6276658))

(declare-fun m!6276662 () Bool)

(assert (=> b!5230749 m!6276662))

(declare-fun m!6276664 () Bool)

(assert (=> b!5230747 m!6276664))

(assert (=> d!1686322 m!6276656))

(assert (=> d!1686322 m!6275784))

(declare-fun m!6276666 () Bool)

(assert (=> d!1686322 m!6276666))

(assert (=> d!1686322 m!6275780))

(assert (=> b!5230750 m!6276658))

(declare-fun m!6276668 () Bool)

(assert (=> b!5230750 m!6276668))

(assert (=> b!5230742 m!6275784))

(declare-fun m!6276670 () Bool)

(assert (=> b!5230742 m!6276670))

(assert (=> b!5230742 m!6276670))

(declare-fun m!6276672 () Bool)

(assert (=> b!5230742 m!6276672))

(assert (=> b!5230742 m!6275784))

(declare-fun m!6276676 () Bool)

(assert (=> b!5230742 m!6276676))

(assert (=> b!5230742 m!6276670))

(declare-fun m!6276682 () Bool)

(assert (=> b!5230742 m!6276682))

(assert (=> b!5229899 d!1686322))

(declare-fun d!1686326 () Bool)

(assert (=> d!1686326 (= (isEmpty!32564 (t!373939 (unfocusZipperList!263 zl!343))) ((_ is Nil!60638) (t!373939 (unfocusZipperList!263 zl!343))))))

(assert (=> b!5229871 d!1686326))

(declare-fun d!1686330 () Bool)

(assert (=> d!1686330 (= (Exists!2002 lambda!262696) (choose!38902 lambda!262696))))

(declare-fun bs!1214247 () Bool)

(assert (= bs!1214247 d!1686330))

(declare-fun m!6276684 () Bool)

(assert (=> bs!1214247 m!6276684))

(assert (=> d!1685888 d!1686330))

(declare-fun d!1686334 () Bool)

(assert (=> d!1686334 (= (Exists!2002 lambda!262697) (choose!38902 lambda!262697))))

(declare-fun bs!1214248 () Bool)

(assert (= bs!1214248 d!1686334))

(declare-fun m!6276686 () Bool)

(assert (=> bs!1214248 m!6276686))

(assert (=> d!1685888 d!1686334))

(declare-fun bs!1214277 () Bool)

(declare-fun d!1686336 () Bool)

(assert (= bs!1214277 (and d!1686336 d!1685888)))

(declare-fun lambda!262765 () Int)

(assert (=> bs!1214277 (not (= lambda!262765 lambda!262697))))

(declare-fun bs!1214278 () Bool)

(assert (= bs!1214278 (and d!1686336 d!1685886)))

(assert (=> bs!1214278 (= lambda!262765 lambda!262691)))

(declare-fun bs!1214279 () Bool)

(assert (= bs!1214279 (and d!1686336 b!5230233)))

(assert (=> bs!1214279 (not (= lambda!262765 lambda!262728))))

(declare-fun bs!1214280 () Bool)

(assert (= bs!1214280 (and d!1686336 b!5230569)))

(assert (=> bs!1214280 (not (= lambda!262765 lambda!262752))))

(declare-fun bs!1214281 () Bool)

(assert (= bs!1214281 (and d!1686336 b!5229760)))

(assert (=> bs!1214281 (not (= lambda!262765 lambda!262682))))

(declare-fun bs!1214282 () Bool)

(assert (= bs!1214282 (and d!1686336 b!5229208)))

(assert (=> bs!1214282 (not (= lambda!262765 lambda!262643))))

(assert (=> bs!1214282 (= lambda!262765 lambda!262642)))

(assert (=> bs!1214277 (= lambda!262765 lambda!262696)))

(declare-fun bs!1214283 () Bool)

(assert (= bs!1214283 (and d!1686336 b!5230572)))

(assert (=> bs!1214283 (not (= lambda!262765 lambda!262750))))

(declare-fun bs!1214285 () Bool)

(assert (= bs!1214285 (and d!1686336 b!5230230)))

(assert (=> bs!1214285 (not (= lambda!262765 lambda!262729))))

(declare-fun bs!1214288 () Bool)

(assert (= bs!1214288 (and d!1686336 d!1686200)))

(assert (=> bs!1214288 (= lambda!262765 lambda!262745)))

(declare-fun bs!1214290 () Bool)

(assert (= bs!1214290 (and d!1686336 b!5229763)))

(assert (=> bs!1214290 (not (= lambda!262765 lambda!262681))))

(assert (=> d!1686336 true))

(assert (=> d!1686336 true))

(assert (=> d!1686336 true))

(declare-fun lambda!262767 () Int)

(assert (=> bs!1214277 (= lambda!262767 lambda!262697)))

(assert (=> bs!1214278 (not (= lambda!262767 lambda!262691))))

(assert (=> bs!1214279 (not (= lambda!262767 lambda!262728))))

(assert (=> bs!1214280 (= (and (= (regOne!30154 r!7292) (regOne!30154 (regTwo!30155 r!7292))) (= (regTwo!30154 r!7292) (regTwo!30154 (regTwo!30155 r!7292)))) (= lambda!262767 lambda!262752))))

(assert (=> bs!1214281 (= lambda!262767 lambda!262682)))

(assert (=> bs!1214282 (= lambda!262767 lambda!262643)))

(assert (=> bs!1214282 (not (= lambda!262767 lambda!262642))))

(assert (=> bs!1214277 (not (= lambda!262767 lambda!262696))))

(assert (=> bs!1214283 (not (= lambda!262767 lambda!262750))))

(declare-fun bs!1214295 () Bool)

(assert (= bs!1214295 d!1686336))

(assert (=> bs!1214295 (not (= lambda!262767 lambda!262765))))

(assert (=> bs!1214285 (= (and (= (regOne!30154 r!7292) (regOne!30154 (regOne!30155 r!7292))) (= (regTwo!30154 r!7292) (regTwo!30154 (regOne!30155 r!7292)))) (= lambda!262767 lambda!262729))))

(assert (=> bs!1214288 (not (= lambda!262767 lambda!262745))))

(assert (=> bs!1214290 (not (= lambda!262767 lambda!262681))))

(assert (=> d!1686336 true))

(assert (=> d!1686336 true))

(assert (=> d!1686336 true))

(assert (=> d!1686336 (= (Exists!2002 lambda!262765) (Exists!2002 lambda!262767))))

(assert (=> d!1686336 true))

(declare-fun _$90!1042 () Unit!152582)

(assert (=> d!1686336 (= (choose!38904 (regOne!30154 r!7292) (regTwo!30154 r!7292) s!2326) _$90!1042)))

(declare-fun m!6276764 () Bool)

(assert (=> bs!1214295 m!6276764))

(declare-fun m!6276766 () Bool)

(assert (=> bs!1214295 m!6276766))

(assert (=> d!1685888 d!1686336))

(assert (=> d!1685888 d!1686198))

(assert (=> d!1685920 d!1686174))

(declare-fun d!1686372 () Bool)

(declare-fun c!903451 () Bool)

(assert (=> d!1686372 (= c!903451 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255300 () Bool)

(assert (=> d!1686372 (= (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255300)))

(declare-fun b!5230833 () Bool)

(assert (=> b!5230833 (= e!3255300 (nullableZipper!1244 (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144967) (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230834 () Bool)

(assert (=> b!5230834 (= e!3255300 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144967) (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686372 c!903451) b!5230833))

(assert (= (and d!1686372 (not c!903451)) b!5230834))

(assert (=> d!1686372 m!6275606))

(assert (=> d!1686372 m!6276390))

(assert (=> b!5230833 m!6275856))

(declare-fun m!6276772 () Bool)

(assert (=> b!5230833 m!6276772))

(assert (=> b!5230834 m!6275606))

(assert (=> b!5230834 m!6276394))

(assert (=> b!5230834 m!6275856))

(assert (=> b!5230834 m!6276394))

(declare-fun m!6276774 () Bool)

(assert (=> b!5230834 m!6276774))

(assert (=> b!5230834 m!6275606))

(assert (=> b!5230834 m!6276398))

(assert (=> b!5230834 m!6276774))

(assert (=> b!5230834 m!6276398))

(declare-fun m!6276776 () Bool)

(assert (=> b!5230834 m!6276776))

(assert (=> b!5229942 d!1686372))

(declare-fun bs!1214296 () Bool)

(declare-fun d!1686380 () Bool)

(assert (= bs!1214296 (and d!1686380 d!1686210)))

(declare-fun lambda!262768 () Int)

(assert (=> bs!1214296 (= lambda!262768 lambda!262748)))

(declare-fun bs!1214297 () Bool)

(assert (= bs!1214297 (and d!1686380 d!1686232)))

(assert (=> bs!1214297 (= lambda!262768 lambda!262749)))

(declare-fun bs!1214298 () Bool)

(assert (= bs!1214298 (and d!1686380 d!1686276)))

(assert (=> bs!1214298 (= lambda!262768 lambda!262754)))

(declare-fun bs!1214299 () Bool)

(assert (= bs!1214299 (and d!1686380 d!1686288)))

(assert (=> bs!1214299 (= lambda!262768 lambda!262755)))

(declare-fun bs!1214300 () Bool)

(assert (= bs!1214300 (and d!1686380 b!5229203)))

(assert (=> bs!1214300 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262768 lambda!262644))))

(assert (=> d!1686380 true))

(assert (=> d!1686380 (= (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144967) (head!11207 (t!373941 s!2326))) (flatMap!548 ((_ map or) lt!2144988 lt!2144967) lambda!262768))))

(declare-fun bs!1214301 () Bool)

(assert (= bs!1214301 d!1686380))

(declare-fun m!6276786 () Bool)

(assert (=> bs!1214301 m!6276786))

(assert (=> b!5229942 d!1686380))

(assert (=> b!5229942 d!1686212))

(assert (=> b!5229942 d!1686214))

(declare-fun d!1686386 () Bool)

(assert (=> d!1686386 true))

(assert (=> d!1686386 true))

(declare-fun res!2220438 () Bool)

(assert (=> d!1686386 (= (choose!38902 lambda!262642) res!2220438)))

(assert (=> d!1685884 d!1686386))

(assert (=> d!1685914 d!1685916))

(assert (=> d!1685914 d!1685920))

(declare-fun e!3255311 () Bool)

(declare-fun d!1686388 () Bool)

(assert (=> d!1686388 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144967) (t!373941 s!2326)) e!3255311)))

(declare-fun res!2220439 () Bool)

(assert (=> d!1686388 (=> res!2220439 e!3255311)))

(assert (=> d!1686388 (= res!2220439 (matchZipper!1065 lt!2144988 (t!373941 s!2326)))))

(assert (=> d!1686388 true))

(declare-fun _$48!864 () Unit!152582)

(assert (=> d!1686388 (= (choose!38901 lt!2144988 lt!2144967 (t!373941 s!2326)) _$48!864)))

(declare-fun b!5230849 () Bool)

(assert (=> b!5230849 (= e!3255311 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1686388 (not res!2220439)) b!5230849))

(assert (=> d!1686388 m!6275222))

(assert (=> d!1686388 m!6275208))

(assert (=> b!5230849 m!6275268))

(assert (=> d!1685914 d!1686388))

(declare-fun b!5230850 () Bool)

(declare-fun e!3255315 () Bool)

(declare-fun call!369958 () Bool)

(assert (=> b!5230850 (= e!3255315 call!369958)))

(declare-fun call!369959 () Bool)

(declare-fun bm!369952 () Bool)

(declare-fun c!903457 () Bool)

(declare-fun c!903456 () Bool)

(assert (=> bm!369952 (= call!369959 (validRegex!6557 (ite c!903456 (reg!15150 lt!2145068) (ite c!903457 (regOne!30155 lt!2145068) (regOne!30154 lt!2145068)))))))

(declare-fun b!5230851 () Bool)

(declare-fun e!3255313 () Bool)

(declare-fun e!3255312 () Bool)

(assert (=> b!5230851 (= e!3255313 e!3255312)))

(declare-fun res!2220444 () Bool)

(assert (=> b!5230851 (= res!2220444 (not (nullable!4990 (reg!15150 lt!2145068))))))

(assert (=> b!5230851 (=> (not res!2220444) (not e!3255312))))

(declare-fun b!5230852 () Bool)

(declare-fun e!3255314 () Bool)

(assert (=> b!5230852 (= e!3255314 e!3255313)))

(assert (=> b!5230852 (= c!903456 ((_ is Star!14821) lt!2145068))))

(declare-fun b!5230853 () Bool)

(declare-fun res!2220442 () Bool)

(assert (=> b!5230853 (=> (not res!2220442) (not e!3255315))))

(declare-fun call!369957 () Bool)

(assert (=> b!5230853 (= res!2220442 call!369957)))

(declare-fun e!3255318 () Bool)

(assert (=> b!5230853 (= e!3255318 e!3255315)))

(declare-fun bm!369953 () Bool)

(assert (=> bm!369953 (= call!369957 call!369959)))

(declare-fun bm!369954 () Bool)

(assert (=> bm!369954 (= call!369958 (validRegex!6557 (ite c!903457 (regTwo!30155 lt!2145068) (regTwo!30154 lt!2145068))))))

(declare-fun b!5230855 () Bool)

(assert (=> b!5230855 (= e!3255313 e!3255318)))

(assert (=> b!5230855 (= c!903457 ((_ is Union!14821) lt!2145068))))

(declare-fun b!5230856 () Bool)

(assert (=> b!5230856 (= e!3255312 call!369959)))

(declare-fun b!5230857 () Bool)

(declare-fun res!2220441 () Bool)

(declare-fun e!3255316 () Bool)

(assert (=> b!5230857 (=> res!2220441 e!3255316)))

(assert (=> b!5230857 (= res!2220441 (not ((_ is Concat!23666) lt!2145068)))))

(assert (=> b!5230857 (= e!3255318 e!3255316)))

(declare-fun b!5230858 () Bool)

(declare-fun e!3255317 () Bool)

(assert (=> b!5230858 (= e!3255317 call!369958)))

(declare-fun d!1686390 () Bool)

(declare-fun res!2220440 () Bool)

(assert (=> d!1686390 (=> res!2220440 e!3255314)))

(assert (=> d!1686390 (= res!2220440 ((_ is ElementMatch!14821) lt!2145068))))

(assert (=> d!1686390 (= (validRegex!6557 lt!2145068) e!3255314)))

(declare-fun b!5230854 () Bool)

(assert (=> b!5230854 (= e!3255316 e!3255317)))

(declare-fun res!2220443 () Bool)

(assert (=> b!5230854 (=> (not res!2220443) (not e!3255317))))

(assert (=> b!5230854 (= res!2220443 call!369957)))

(assert (= (and d!1686390 (not res!2220440)) b!5230852))

(assert (= (and b!5230852 c!903456) b!5230851))

(assert (= (and b!5230852 (not c!903456)) b!5230855))

(assert (= (and b!5230851 res!2220444) b!5230856))

(assert (= (and b!5230855 c!903457) b!5230853))

(assert (= (and b!5230855 (not c!903457)) b!5230857))

(assert (= (and b!5230853 res!2220442) b!5230850))

(assert (= (and b!5230857 (not res!2220441)) b!5230854))

(assert (= (and b!5230854 res!2220443) b!5230858))

(assert (= (or b!5230850 b!5230858) bm!369954))

(assert (= (or b!5230853 b!5230854) bm!369953))

(assert (= (or b!5230856 bm!369953) bm!369952))

(declare-fun m!6276794 () Bool)

(assert (=> bm!369952 m!6276794))

(declare-fun m!6276796 () Bool)

(assert (=> b!5230851 m!6276796))

(declare-fun m!6276798 () Bool)

(assert (=> bm!369954 m!6276798))

(assert (=> d!1685872 d!1686390))

(declare-fun d!1686394 () Bool)

(declare-fun res!2220448 () Bool)

(declare-fun e!3255326 () Bool)

(assert (=> d!1686394 (=> res!2220448 e!3255326)))

(assert (=> d!1686394 (= res!2220448 ((_ is Nil!60638) (unfocusZipperList!263 zl!343)))))

(assert (=> d!1686394 (= (forall!14253 (unfocusZipperList!263 zl!343) lambda!262685) e!3255326)))

(declare-fun b!5230870 () Bool)

(declare-fun e!3255327 () Bool)

(assert (=> b!5230870 (= e!3255326 e!3255327)))

(declare-fun res!2220449 () Bool)

(assert (=> b!5230870 (=> (not res!2220449) (not e!3255327))))

(assert (=> b!5230870 (= res!2220449 (dynLambda!23964 lambda!262685 (h!67086 (unfocusZipperList!263 zl!343))))))

(declare-fun b!5230871 () Bool)

(assert (=> b!5230871 (= e!3255327 (forall!14253 (t!373939 (unfocusZipperList!263 zl!343)) lambda!262685))))

(assert (= (and d!1686394 (not res!2220448)) b!5230870))

(assert (= (and b!5230870 res!2220449) b!5230871))

(declare-fun b_lambda!202237 () Bool)

(assert (=> (not b_lambda!202237) (not b!5230870)))

(declare-fun m!6276800 () Bool)

(assert (=> b!5230870 m!6276800))

(declare-fun m!6276802 () Bool)

(assert (=> b!5230871 m!6276802))

(assert (=> d!1685872 d!1686394))

(declare-fun b!5230873 () Bool)

(declare-fun e!3255328 () List!60764)

(assert (=> b!5230873 (= e!3255328 (Cons!60640 (h!67088 (_1!35323 (get!20840 lt!2145079))) (++!13224 (t!373941 (_1!35323 (get!20840 lt!2145079))) (_2!35323 (get!20840 lt!2145079)))))))

(declare-fun b!5230874 () Bool)

(declare-fun res!2220451 () Bool)

(declare-fun e!3255329 () Bool)

(assert (=> b!5230874 (=> (not res!2220451) (not e!3255329))))

(declare-fun lt!2145146 () List!60764)

(assert (=> b!5230874 (= res!2220451 (= (size!39732 lt!2145146) (+ (size!39732 (_1!35323 (get!20840 lt!2145079))) (size!39732 (_2!35323 (get!20840 lt!2145079))))))))

(declare-fun d!1686396 () Bool)

(assert (=> d!1686396 e!3255329))

(declare-fun res!2220450 () Bool)

(assert (=> d!1686396 (=> (not res!2220450) (not e!3255329))))

(assert (=> d!1686396 (= res!2220450 (= (content!10763 lt!2145146) ((_ map or) (content!10763 (_1!35323 (get!20840 lt!2145079))) (content!10763 (_2!35323 (get!20840 lt!2145079))))))))

(assert (=> d!1686396 (= lt!2145146 e!3255328)))

(declare-fun c!903462 () Bool)

(assert (=> d!1686396 (= c!903462 ((_ is Nil!60640) (_1!35323 (get!20840 lt!2145079))))))

(assert (=> d!1686396 (= (++!13224 (_1!35323 (get!20840 lt!2145079)) (_2!35323 (get!20840 lt!2145079))) lt!2145146)))

(declare-fun b!5230875 () Bool)

(assert (=> b!5230875 (= e!3255329 (or (not (= (_2!35323 (get!20840 lt!2145079)) Nil!60640)) (= lt!2145146 (_1!35323 (get!20840 lt!2145079)))))))

(declare-fun b!5230872 () Bool)

(assert (=> b!5230872 (= e!3255328 (_2!35323 (get!20840 lt!2145079)))))

(assert (= (and d!1686396 c!903462) b!5230872))

(assert (= (and d!1686396 (not c!903462)) b!5230873))

(assert (= (and d!1686396 res!2220450) b!5230874))

(assert (= (and b!5230874 res!2220451) b!5230875))

(declare-fun m!6276804 () Bool)

(assert (=> b!5230873 m!6276804))

(declare-fun m!6276806 () Bool)

(assert (=> b!5230874 m!6276806))

(declare-fun m!6276808 () Bool)

(assert (=> b!5230874 m!6276808))

(declare-fun m!6276810 () Bool)

(assert (=> b!5230874 m!6276810))

(declare-fun m!6276812 () Bool)

(assert (=> d!1686396 m!6276812))

(declare-fun m!6276814 () Bool)

(assert (=> d!1686396 m!6276814))

(declare-fun m!6276816 () Bool)

(assert (=> d!1686396 m!6276816))

(assert (=> b!5229907 d!1686396))

(assert (=> b!5229907 d!1686098))

(declare-fun d!1686398 () Bool)

(declare-fun c!903463 () Bool)

(assert (=> d!1686398 (= c!903463 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255330 () Bool)

(assert (=> d!1686398 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144967 (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255330)))

(declare-fun b!5230876 () Bool)

(assert (=> b!5230876 (= e!3255330 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144967 (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230877 () Bool)

(assert (=> b!5230877 (= e!3255330 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144967 (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686398 c!903463) b!5230876))

(assert (= (and d!1686398 (not c!903463)) b!5230877))

(assert (=> d!1686398 m!6275606))

(assert (=> d!1686398 m!6276390))

(assert (=> b!5230876 m!6275604))

(declare-fun m!6276818 () Bool)

(assert (=> b!5230876 m!6276818))

(assert (=> b!5230877 m!6275606))

(assert (=> b!5230877 m!6276394))

(assert (=> b!5230877 m!6275604))

(assert (=> b!5230877 m!6276394))

(declare-fun m!6276820 () Bool)

(assert (=> b!5230877 m!6276820))

(assert (=> b!5230877 m!6275606))

(assert (=> b!5230877 m!6276398))

(assert (=> b!5230877 m!6276820))

(assert (=> b!5230877 m!6276398))

(declare-fun m!6276822 () Bool)

(assert (=> b!5230877 m!6276822))

(assert (=> b!5229508 d!1686398))

(declare-fun bs!1214311 () Bool)

(declare-fun d!1686400 () Bool)

(assert (= bs!1214311 (and d!1686400 d!1686232)))

(declare-fun lambda!262770 () Int)

(assert (=> bs!1214311 (= lambda!262770 lambda!262749)))

(declare-fun bs!1214312 () Bool)

(assert (= bs!1214312 (and d!1686400 d!1686276)))

(assert (=> bs!1214312 (= lambda!262770 lambda!262754)))

(declare-fun bs!1214313 () Bool)

(assert (= bs!1214313 (and d!1686400 d!1686288)))

(assert (=> bs!1214313 (= lambda!262770 lambda!262755)))

(declare-fun bs!1214314 () Bool)

(assert (= bs!1214314 (and d!1686400 b!5229203)))

(assert (=> bs!1214314 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262770 lambda!262644))))

(declare-fun bs!1214315 () Bool)

(assert (= bs!1214315 (and d!1686400 d!1686210)))

(assert (=> bs!1214315 (= lambda!262770 lambda!262748)))

(declare-fun bs!1214316 () Bool)

(assert (= bs!1214316 (and d!1686400 d!1686380)))

(assert (=> bs!1214316 (= lambda!262770 lambda!262768)))

(assert (=> d!1686400 true))

(assert (=> d!1686400 (= (derivationStepZipper!1088 lt!2144967 (head!11207 (t!373941 s!2326))) (flatMap!548 lt!2144967 lambda!262770))))

(declare-fun bs!1214317 () Bool)

(assert (= bs!1214317 d!1686400))

(declare-fun m!6276824 () Bool)

(assert (=> bs!1214317 m!6276824))

(assert (=> b!5229508 d!1686400))

(assert (=> b!5229508 d!1686212))

(assert (=> b!5229508 d!1686214))

(assert (=> b!5229806 d!1686088))

(assert (=> d!1685818 d!1686092))

(declare-fun d!1686402 () Bool)

(declare-fun c!903464 () Bool)

(assert (=> d!1686402 (= c!903464 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255331 () Bool)

(assert (=> d!1686402 (= (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144993 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255331)))

(declare-fun b!5230878 () Bool)

(assert (=> b!5230878 (= e!3255331 (nullableZipper!1244 (derivationStepZipper!1088 ((_ map or) lt!2144993 lt!2144967) (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5230879 () Bool)

(assert (=> b!5230879 (= e!3255331 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 ((_ map or) lt!2144993 lt!2144967) (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686402 c!903464) b!5230878))

(assert (= (and d!1686402 (not c!903464)) b!5230879))

(assert (=> d!1686402 m!6275606))

(assert (=> d!1686402 m!6276390))

(assert (=> b!5230878 m!6275728))

(declare-fun m!6276826 () Bool)

(assert (=> b!5230878 m!6276826))

(assert (=> b!5230879 m!6275606))

(assert (=> b!5230879 m!6276394))

(assert (=> b!5230879 m!6275728))

(assert (=> b!5230879 m!6276394))

(declare-fun m!6276828 () Bool)

(assert (=> b!5230879 m!6276828))

(assert (=> b!5230879 m!6275606))

(assert (=> b!5230879 m!6276398))

(assert (=> b!5230879 m!6276828))

(assert (=> b!5230879 m!6276398))

(declare-fun m!6276830 () Bool)

(assert (=> b!5230879 m!6276830))

(assert (=> b!5229815 d!1686402))

(declare-fun bs!1214324 () Bool)

(declare-fun d!1686404 () Bool)

(assert (= bs!1214324 (and d!1686404 d!1686400)))

(declare-fun lambda!262772 () Int)

(assert (=> bs!1214324 (= lambda!262772 lambda!262770)))

(declare-fun bs!1214326 () Bool)

(assert (= bs!1214326 (and d!1686404 d!1686232)))

(assert (=> bs!1214326 (= lambda!262772 lambda!262749)))

(declare-fun bs!1214328 () Bool)

(assert (= bs!1214328 (and d!1686404 d!1686276)))

(assert (=> bs!1214328 (= lambda!262772 lambda!262754)))

(declare-fun bs!1214329 () Bool)

(assert (= bs!1214329 (and d!1686404 d!1686288)))

(assert (=> bs!1214329 (= lambda!262772 lambda!262755)))

(declare-fun bs!1214330 () Bool)

(assert (= bs!1214330 (and d!1686404 b!5229203)))

(assert (=> bs!1214330 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262772 lambda!262644))))

(declare-fun bs!1214332 () Bool)

(assert (= bs!1214332 (and d!1686404 d!1686210)))

(assert (=> bs!1214332 (= lambda!262772 lambda!262748)))

(declare-fun bs!1214334 () Bool)

(assert (= bs!1214334 (and d!1686404 d!1686380)))

(assert (=> bs!1214334 (= lambda!262772 lambda!262768)))

(assert (=> d!1686404 true))

(assert (=> d!1686404 (= (derivationStepZipper!1088 ((_ map or) lt!2144993 lt!2144967) (head!11207 (t!373941 s!2326))) (flatMap!548 ((_ map or) lt!2144993 lt!2144967) lambda!262772))))

(declare-fun bs!1214335 () Bool)

(assert (= bs!1214335 d!1686404))

(declare-fun m!6276832 () Bool)

(assert (=> bs!1214335 m!6276832))

(assert (=> b!5229815 d!1686404))

(assert (=> b!5229815 d!1686212))

(assert (=> b!5229815 d!1686214))

(declare-fun d!1686406 () Bool)

(assert (=> d!1686406 (= (isEmptyExpr!780 lt!2145097) ((_ is EmptyExpr!14821) lt!2145097))))

(assert (=> b!5229978 d!1686406))

(declare-fun d!1686408 () Bool)

(assert (=> d!1686408 (= (nullable!4990 (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))) (nullableFct!1396 (regOne!30154 (regOne!30155 (regOne!30154 r!7292)))))))

(declare-fun bs!1214336 () Bool)

(assert (= bs!1214336 d!1686408))

(declare-fun m!6276836 () Bool)

(assert (=> bs!1214336 m!6276836))

(assert (=> b!5229443 d!1686408))

(declare-fun bm!369957 () Bool)

(declare-fun call!369965 () (InoxSet Context!8410))

(declare-fun call!369966 () (InoxSet Context!8410))

(assert (=> bm!369957 (= call!369965 call!369966)))

(declare-fun b!5230880 () Bool)

(declare-fun e!3255335 () (InoxSet Context!8410))

(declare-fun call!369962 () (InoxSet Context!8410))

(assert (=> b!5230880 (= e!3255335 ((_ map or) call!369962 call!369966))))

(declare-fun b!5230881 () Bool)

(declare-fun c!903469 () Bool)

(declare-fun e!3255336 () Bool)

(assert (=> b!5230881 (= c!903469 e!3255336)))

(declare-fun res!2220452 () Bool)

(assert (=> b!5230881 (=> (not res!2220452) (not e!3255336))))

(assert (=> b!5230881 (= res!2220452 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144978))))))

(declare-fun e!3255333 () (InoxSet Context!8410))

(assert (=> b!5230881 (= e!3255333 e!3255335)))

(declare-fun b!5230882 () Bool)

(declare-fun e!3255334 () (InoxSet Context!8410))

(assert (=> b!5230882 (= e!3255334 call!369965)))

(declare-fun call!369967 () List!60762)

(declare-fun c!903467 () Bool)

(declare-fun bm!369958 () Bool)

(assert (=> bm!369958 (= call!369962 (derivationStepZipperDown!269 (ite c!903467 (regOne!30155 (h!67086 (exprs!4705 lt!2144978))) (regOne!30154 (h!67086 (exprs!4705 lt!2144978)))) (ite c!903467 (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (Context!8411 call!369967)) (h!67088 s!2326)))))

(declare-fun bm!369959 () Bool)

(declare-fun call!369964 () (InoxSet Context!8410))

(assert (=> bm!369959 (= call!369966 call!369964)))

(declare-fun bm!369960 () Bool)

(declare-fun c!903465 () Bool)

(assert (=> bm!369960 (= call!369967 ($colon$colon!1294 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144978)))) (ite (or c!903469 c!903465) (regTwo!30154 (h!67086 (exprs!4705 lt!2144978))) (h!67086 (exprs!4705 lt!2144978)))))))

(declare-fun b!5230883 () Bool)

(declare-fun e!3255337 () (InoxSet Context!8410))

(assert (=> b!5230883 (= e!3255337 (store ((as const (Array Context!8410 Bool)) false) (Context!8411 (t!373939 (exprs!4705 lt!2144978))) true))))

(declare-fun b!5230884 () Bool)

(assert (=> b!5230884 (= e!3255335 e!3255334)))

(assert (=> b!5230884 (= c!903465 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144978))))))

(declare-fun b!5230885 () Bool)

(declare-fun e!3255332 () (InoxSet Context!8410))

(assert (=> b!5230885 (= e!3255332 call!369965)))

(declare-fun call!369963 () List!60762)

(declare-fun bm!369961 () Bool)

(assert (=> bm!369961 (= call!369964 (derivationStepZipperDown!269 (ite c!903467 (regTwo!30155 (h!67086 (exprs!4705 lt!2144978))) (ite c!903469 (regTwo!30154 (h!67086 (exprs!4705 lt!2144978))) (ite c!903465 (regOne!30154 (h!67086 (exprs!4705 lt!2144978))) (reg!15150 (h!67086 (exprs!4705 lt!2144978)))))) (ite (or c!903467 c!903469) (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (Context!8411 call!369963)) (h!67088 s!2326)))))

(declare-fun b!5230886 () Bool)

(assert (=> b!5230886 (= e!3255336 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 lt!2144978)))))))

(declare-fun b!5230888 () Bool)

(declare-fun c!903468 () Bool)

(assert (=> b!5230888 (= c!903468 ((_ is Star!14821) (h!67086 (exprs!4705 lt!2144978))))))

(assert (=> b!5230888 (= e!3255334 e!3255332)))

(declare-fun b!5230889 () Bool)

(assert (=> b!5230889 (= e!3255337 e!3255333)))

(assert (=> b!5230889 (= c!903467 ((_ is Union!14821) (h!67086 (exprs!4705 lt!2144978))))))

(declare-fun bm!369962 () Bool)

(assert (=> bm!369962 (= call!369963 call!369967)))

(declare-fun b!5230890 () Bool)

(assert (=> b!5230890 (= e!3255332 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686410 () Bool)

(declare-fun c!903466 () Bool)

(assert (=> d!1686410 (= c!903466 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 lt!2144978))) (= (c!902967 (h!67086 (exprs!4705 lt!2144978))) (h!67088 s!2326))))))

(assert (=> d!1686410 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144978)) (Context!8411 (t!373939 (exprs!4705 lt!2144978))) (h!67088 s!2326)) e!3255337)))

(declare-fun b!5230887 () Bool)

(assert (=> b!5230887 (= e!3255333 ((_ map or) call!369962 call!369964))))

(assert (= (and d!1686410 c!903466) b!5230883))

(assert (= (and d!1686410 (not c!903466)) b!5230889))

(assert (= (and b!5230889 c!903467) b!5230887))

(assert (= (and b!5230889 (not c!903467)) b!5230881))

(assert (= (and b!5230881 res!2220452) b!5230886))

(assert (= (and b!5230881 c!903469) b!5230880))

(assert (= (and b!5230881 (not c!903469)) b!5230884))

(assert (= (and b!5230884 c!903465) b!5230882))

(assert (= (and b!5230884 (not c!903465)) b!5230888))

(assert (= (and b!5230888 c!903468) b!5230885))

(assert (= (and b!5230888 (not c!903468)) b!5230890))

(assert (= (or b!5230882 b!5230885) bm!369962))

(assert (= (or b!5230882 b!5230885) bm!369957))

(assert (= (or b!5230880 bm!369962) bm!369960))

(assert (= (or b!5230880 bm!369957) bm!369959))

(assert (= (or b!5230887 bm!369959) bm!369961))

(assert (= (or b!5230887 b!5230880) bm!369958))

(declare-fun m!6276844 () Bool)

(assert (=> bm!369958 m!6276844))

(declare-fun m!6276846 () Bool)

(assert (=> b!5230886 m!6276846))

(declare-fun m!6276848 () Bool)

(assert (=> b!5230883 m!6276848))

(declare-fun m!6276850 () Bool)

(assert (=> bm!369960 m!6276850))

(declare-fun m!6276852 () Bool)

(assert (=> bm!369961 m!6276852))

(assert (=> bm!369731 d!1686410))

(assert (=> b!5229903 d!1686222))

(declare-fun bm!369966 () Bool)

(declare-fun call!369974 () (InoxSet Context!8410))

(declare-fun call!369975 () (InoxSet Context!8410))

(assert (=> bm!369966 (= call!369974 call!369975)))

(declare-fun b!5230900 () Bool)

(declare-fun e!3255348 () (InoxSet Context!8410))

(declare-fun call!369971 () (InoxSet Context!8410))

(assert (=> b!5230900 (= e!3255348 ((_ map or) call!369971 call!369975))))

(declare-fun b!5230901 () Bool)

(declare-fun c!903476 () Bool)

(declare-fun e!3255349 () Bool)

(assert (=> b!5230901 (= c!903476 e!3255349)))

(declare-fun res!2220458 () Bool)

(assert (=> b!5230901 (=> (not res!2220458) (not e!3255349))))

(assert (=> b!5230901 (= res!2220458 ((_ is Concat!23666) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun e!3255346 () (InoxSet Context!8410))

(assert (=> b!5230901 (= e!3255346 e!3255348)))

(declare-fun b!5230902 () Bool)

(declare-fun e!3255347 () (InoxSet Context!8410))

(assert (=> b!5230902 (= e!3255347 call!369974)))

(declare-fun call!369976 () List!60762)

(declare-fun c!903474 () Bool)

(declare-fun bm!369967 () Bool)

(assert (=> bm!369967 (= call!369971 (derivationStepZipperDown!269 (ite c!903474 (regOne!30155 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (regOne!30154 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))) (ite c!903474 (ite c!903116 lt!2144978 (Context!8411 call!369742)) (Context!8411 call!369976)) (h!67088 s!2326)))))

(declare-fun bm!369968 () Bool)

(declare-fun call!369973 () (InoxSet Context!8410))

(assert (=> bm!369968 (= call!369975 call!369973)))

(declare-fun c!903472 () Bool)

(declare-fun bm!369969 () Bool)

(assert (=> bm!369969 (= call!369976 ($colon$colon!1294 (exprs!4705 (ite c!903116 lt!2144978 (Context!8411 call!369742))) (ite (or c!903476 c!903472) (regTwo!30154 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))))

(declare-fun b!5230903 () Bool)

(declare-fun e!3255350 () (InoxSet Context!8410))

(assert (=> b!5230903 (= e!3255350 (store ((as const (Array Context!8410 Bool)) false) (ite c!903116 lt!2144978 (Context!8411 call!369742)) true))))

(declare-fun b!5230904 () Bool)

(assert (=> b!5230904 (= e!3255348 e!3255347)))

(assert (=> b!5230904 (= c!903472 ((_ is Concat!23666) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230905 () Bool)

(declare-fun e!3255345 () (InoxSet Context!8410))

(assert (=> b!5230905 (= e!3255345 call!369974)))

(declare-fun call!369972 () List!60762)

(declare-fun bm!369970 () Bool)

(assert (=> bm!369970 (= call!369973 (derivationStepZipperDown!269 (ite c!903474 (regTwo!30155 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (ite c!903476 (regTwo!30154 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (ite c!903472 (regOne!30154 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (reg!15150 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))) (ite (or c!903474 c!903476) (ite c!903116 lt!2144978 (Context!8411 call!369742)) (Context!8411 call!369972)) (h!67088 s!2326)))))

(declare-fun b!5230906 () Bool)

(assert (=> b!5230906 (= e!3255349 (nullable!4990 (regOne!30154 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))))))))

(declare-fun b!5230908 () Bool)

(declare-fun c!903475 () Bool)

(assert (=> b!5230908 (= c!903475 ((_ is Star!14821) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(assert (=> b!5230908 (= e!3255347 e!3255345)))

(declare-fun b!5230909 () Bool)

(assert (=> b!5230909 (= e!3255350 e!3255346)))

(assert (=> b!5230909 (= c!903474 ((_ is Union!14821) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun bm!369971 () Bool)

(assert (=> bm!369971 (= call!369972 call!369976)))

(declare-fun b!5230910 () Bool)

(assert (=> b!5230910 (= e!3255345 ((as const (Array Context!8410 Bool)) false))))

(declare-fun c!903473 () Bool)

(declare-fun d!1686416 () Bool)

(assert (=> d!1686416 (= c!903473 (and ((_ is ElementMatch!14821) (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (= (c!902967 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))) (h!67088 s!2326))))))

(assert (=> d!1686416 (= (derivationStepZipperDown!269 (ite c!903116 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343))))) (ite c!903116 lt!2144978 (Context!8411 call!369742)) (h!67088 s!2326)) e!3255350)))

(declare-fun b!5230907 () Bool)

(assert (=> b!5230907 (= e!3255346 ((_ map or) call!369971 call!369973))))

(assert (= (and d!1686416 c!903473) b!5230903))

(assert (= (and d!1686416 (not c!903473)) b!5230909))

(assert (= (and b!5230909 c!903474) b!5230907))

(assert (= (and b!5230909 (not c!903474)) b!5230901))

(assert (= (and b!5230901 res!2220458) b!5230906))

(assert (= (and b!5230901 c!903476) b!5230900))

(assert (= (and b!5230901 (not c!903476)) b!5230904))

(assert (= (and b!5230904 c!903472) b!5230902))

(assert (= (and b!5230904 (not c!903472)) b!5230908))

(assert (= (and b!5230908 c!903475) b!5230905))

(assert (= (and b!5230908 (not c!903475)) b!5230910))

(assert (= (or b!5230902 b!5230905) bm!369971))

(assert (= (or b!5230902 b!5230905) bm!369966))

(assert (= (or b!5230900 bm!369971) bm!369969))

(assert (= (or b!5230900 bm!369966) bm!369968))

(assert (= (or b!5230907 bm!369968) bm!369970))

(assert (= (or b!5230907 b!5230900) bm!369967))

(declare-fun m!6276862 () Bool)

(assert (=> bm!369967 m!6276862))

(declare-fun m!6276864 () Bool)

(assert (=> b!5230906 m!6276864))

(declare-fun m!6276866 () Bool)

(assert (=> b!5230903 m!6276866))

(declare-fun m!6276868 () Bool)

(assert (=> bm!369969 m!6276868))

(declare-fun m!6276870 () Bool)

(assert (=> bm!369970 m!6276870))

(assert (=> bm!369733 d!1686416))

(declare-fun d!1686426 () Bool)

(declare-fun c!903477 () Bool)

(assert (=> d!1686426 (= c!903477 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun e!3255351 () Bool)

(assert (=> d!1686426 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144986 (head!11207 s!2326)) (tail!10304 s!2326)) e!3255351)))

(declare-fun b!5230911 () Bool)

(assert (=> b!5230911 (= e!3255351 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144986 (head!11207 s!2326))))))

(declare-fun b!5230912 () Bool)

(assert (=> b!5230912 (= e!3255351 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144986 (head!11207 s!2326)) (head!11207 (tail!10304 s!2326))) (tail!10304 (tail!10304 s!2326))))))

(assert (= (and d!1686426 c!903477) b!5230911))

(assert (= (and d!1686426 (not c!903477)) b!5230912))

(assert (=> d!1686426 m!6275620))

(assert (=> d!1686426 m!6275712))

(assert (=> b!5230911 m!6275814))

(declare-fun m!6276874 () Bool)

(assert (=> b!5230911 m!6276874))

(assert (=> b!5230912 m!6275620))

(assert (=> b!5230912 m!6276146))

(assert (=> b!5230912 m!6275814))

(assert (=> b!5230912 m!6276146))

(declare-fun m!6276876 () Bool)

(assert (=> b!5230912 m!6276876))

(assert (=> b!5230912 m!6275620))

(assert (=> b!5230912 m!6276150))

(assert (=> b!5230912 m!6276876))

(assert (=> b!5230912 m!6276150))

(declare-fun m!6276878 () Bool)

(assert (=> b!5230912 m!6276878))

(assert (=> b!5229921 d!1686426))

(declare-fun bs!1214359 () Bool)

(declare-fun d!1686430 () Bool)

(assert (= bs!1214359 (and d!1686430 d!1686400)))

(declare-fun lambda!262775 () Int)

(assert (=> bs!1214359 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262770))))

(declare-fun bs!1214360 () Bool)

(assert (= bs!1214360 (and d!1686430 d!1686232)))

(assert (=> bs!1214360 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262749))))

(declare-fun bs!1214361 () Bool)

(assert (= bs!1214361 (and d!1686430 d!1686404)))

(assert (=> bs!1214361 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262772))))

(declare-fun bs!1214362 () Bool)

(assert (= bs!1214362 (and d!1686430 d!1686276)))

(assert (=> bs!1214362 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262754))))

(declare-fun bs!1214363 () Bool)

(assert (= bs!1214363 (and d!1686430 d!1686288)))

(assert (=> bs!1214363 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262755))))

(declare-fun bs!1214364 () Bool)

(assert (= bs!1214364 (and d!1686430 b!5229203)))

(assert (=> bs!1214364 (= (= (head!11207 s!2326) (h!67088 s!2326)) (= lambda!262775 lambda!262644))))

(declare-fun bs!1214365 () Bool)

(assert (= bs!1214365 (and d!1686430 d!1686210)))

(assert (=> bs!1214365 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262748))))

(declare-fun bs!1214366 () Bool)

(assert (= bs!1214366 (and d!1686430 d!1686380)))

(assert (=> bs!1214366 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262775 lambda!262768))))

(assert (=> d!1686430 true))

(assert (=> d!1686430 (= (derivationStepZipper!1088 lt!2144986 (head!11207 s!2326)) (flatMap!548 lt!2144986 lambda!262775))))

(declare-fun bs!1214367 () Bool)

(assert (= bs!1214367 d!1686430))

(declare-fun m!6276894 () Bool)

(assert (=> bs!1214367 m!6276894))

(assert (=> b!5229921 d!1686430))

(assert (=> b!5229921 d!1686088))

(assert (=> b!5229921 d!1686090))

(declare-fun bs!1214368 () Bool)

(declare-fun d!1686438 () Bool)

(assert (= bs!1214368 (and d!1686438 d!1685998)))

(declare-fun lambda!262776 () Int)

(assert (=> bs!1214368 (= lambda!262776 lambda!262716)))

(declare-fun bs!1214369 () Bool)

(assert (= bs!1214369 (and d!1686438 d!1686024)))

(assert (=> bs!1214369 (= lambda!262776 lambda!262720)))

(declare-fun bs!1214371 () Bool)

(assert (= bs!1214371 (and d!1686438 d!1686046)))

(assert (=> bs!1214371 (= lambda!262776 lambda!262723)))

(declare-fun bs!1214373 () Bool)

(assert (= bs!1214373 (and d!1686438 d!1686048)))

(assert (=> bs!1214373 (= lambda!262776 lambda!262724)))

(assert (=> d!1686438 (= (nullableZipper!1244 lt!2144993) (exists!1976 lt!2144993 lambda!262776))))

(declare-fun bs!1214376 () Bool)

(assert (= bs!1214376 d!1686438))

(declare-fun m!6276896 () Bool)

(assert (=> bs!1214376 m!6276896))

(assert (=> b!5229812 d!1686438))

(declare-fun d!1686440 () Bool)

(assert (=> d!1686440 (= (nullable!4990 (reg!15150 r!7292)) (nullableFct!1396 (reg!15150 r!7292)))))

(declare-fun bs!1214379 () Bool)

(assert (= bs!1214379 d!1686440))

(declare-fun m!6276898 () Bool)

(assert (=> bs!1214379 m!6276898))

(assert (=> b!5229835 d!1686440))

(assert (=> b!5229940 d!1685796))

(assert (=> b!5229627 d!1685826))

(assert (=> d!1685932 d!1685934))

(assert (=> d!1685932 d!1685876))

(declare-fun e!3255363 () Bool)

(declare-fun d!1686442 () Bool)

(assert (=> d!1686442 (= (matchZipper!1065 ((_ map or) lt!2144972 lt!2144967) (t!373941 s!2326)) e!3255363)))

(declare-fun res!2220462 () Bool)

(assert (=> d!1686442 (=> res!2220462 e!3255363)))

(assert (=> d!1686442 (= res!2220462 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(assert (=> d!1686442 true))

(declare-fun _$48!865 () Unit!152582)

(assert (=> d!1686442 (= (choose!38901 lt!2144972 lt!2144967 (t!373941 s!2326)) _$48!865)))

(declare-fun b!5230932 () Bool)

(assert (=> b!5230932 (= e!3255363 (matchZipper!1065 lt!2144967 (t!373941 s!2326)))))

(assert (= (and d!1686442 (not res!2220462)) b!5230932))

(assert (=> d!1686442 m!6275272))

(assert (=> d!1686442 m!6275198))

(assert (=> b!5230932 m!6275268))

(assert (=> d!1685932 d!1686442))

(declare-fun d!1686444 () Bool)

(declare-fun c!903486 () Bool)

(assert (=> d!1686444 (= c!903486 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun e!3255364 () Bool)

(assert (=> d!1686444 (= (matchZipper!1065 (derivationStepZipper!1088 lt!2144969 (head!11207 s!2326)) (tail!10304 s!2326)) e!3255364)))

(declare-fun b!5230933 () Bool)

(assert (=> b!5230933 (= e!3255364 (nullableZipper!1244 (derivationStepZipper!1088 lt!2144969 (head!11207 s!2326))))))

(declare-fun b!5230934 () Bool)

(assert (=> b!5230934 (= e!3255364 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 lt!2144969 (head!11207 s!2326)) (head!11207 (tail!10304 s!2326))) (tail!10304 (tail!10304 s!2326))))))

(assert (= (and d!1686444 c!903486) b!5230933))

(assert (= (and d!1686444 (not c!903486)) b!5230934))

(assert (=> d!1686444 m!6275620))

(assert (=> d!1686444 m!6275712))

(assert (=> b!5230933 m!6275618))

(declare-fun m!6276900 () Bool)

(assert (=> b!5230933 m!6276900))

(assert (=> b!5230934 m!6275620))

(assert (=> b!5230934 m!6276146))

(assert (=> b!5230934 m!6275618))

(assert (=> b!5230934 m!6276146))

(declare-fun m!6276902 () Bool)

(assert (=> b!5230934 m!6276902))

(assert (=> b!5230934 m!6275620))

(assert (=> b!5230934 m!6276150))

(assert (=> b!5230934 m!6276902))

(assert (=> b!5230934 m!6276150))

(declare-fun m!6276904 () Bool)

(assert (=> b!5230934 m!6276904))

(assert (=> b!5229538 d!1686444))

(declare-fun bs!1214384 () Bool)

(declare-fun d!1686446 () Bool)

(assert (= bs!1214384 (and d!1686446 d!1686400)))

(declare-fun lambda!262778 () Int)

(assert (=> bs!1214384 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262770))))

(declare-fun bs!1214385 () Bool)

(assert (= bs!1214385 (and d!1686446 d!1686232)))

(assert (=> bs!1214385 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262749))))

(declare-fun bs!1214386 () Bool)

(assert (= bs!1214386 (and d!1686446 d!1686404)))

(assert (=> bs!1214386 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262772))))

(declare-fun bs!1214387 () Bool)

(assert (= bs!1214387 (and d!1686446 d!1686276)))

(assert (=> bs!1214387 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262754))))

(declare-fun bs!1214388 () Bool)

(assert (= bs!1214388 (and d!1686446 d!1686288)))

(assert (=> bs!1214388 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262755))))

(declare-fun bs!1214389 () Bool)

(assert (= bs!1214389 (and d!1686446 d!1686210)))

(assert (=> bs!1214389 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262748))))

(declare-fun bs!1214390 () Bool)

(assert (= bs!1214390 (and d!1686446 d!1686380)))

(assert (=> bs!1214390 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262778 lambda!262768))))

(declare-fun bs!1214391 () Bool)

(assert (= bs!1214391 (and d!1686446 b!5229203)))

(assert (=> bs!1214391 (= (= (head!11207 s!2326) (h!67088 s!2326)) (= lambda!262778 lambda!262644))))

(declare-fun bs!1214392 () Bool)

(assert (= bs!1214392 (and d!1686446 d!1686430)))

(assert (=> bs!1214392 (= lambda!262778 lambda!262775)))

(assert (=> d!1686446 true))

(assert (=> d!1686446 (= (derivationStepZipper!1088 lt!2144969 (head!11207 s!2326)) (flatMap!548 lt!2144969 lambda!262778))))

(declare-fun bs!1214393 () Bool)

(assert (= bs!1214393 d!1686446))

(declare-fun m!6276928 () Bool)

(assert (=> bs!1214393 m!6276928))

(assert (=> b!5229538 d!1686446))

(assert (=> b!5229538 d!1686088))

(assert (=> b!5229538 d!1686090))

(declare-fun d!1686452 () Bool)

(declare-fun c!903488 () Bool)

(assert (=> d!1686452 (= c!903488 (isEmpty!32567 (t!373941 s!2326)))))

(declare-fun e!3255366 () Bool)

(assert (=> d!1686452 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144972) (t!373941 s!2326)) e!3255366)))

(declare-fun b!5230937 () Bool)

(assert (=> b!5230937 (= e!3255366 (nullableZipper!1244 ((_ map or) lt!2144988 lt!2144972)))))

(declare-fun b!5230938 () Bool)

(assert (=> b!5230938 (= e!3255366 (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144988 lt!2144972) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))))))

(assert (= (and d!1686452 c!903488) b!5230937))

(assert (= (and d!1686452 (not c!903488)) b!5230938))

(assert (=> d!1686452 m!6275598))

(declare-fun m!6276932 () Bool)

(assert (=> b!5230937 m!6276932))

(assert (=> b!5230938 m!6275602))

(assert (=> b!5230938 m!6275602))

(declare-fun m!6276934 () Bool)

(assert (=> b!5230938 m!6276934))

(assert (=> b!5230938 m!6275606))

(assert (=> b!5230938 m!6276934))

(assert (=> b!5230938 m!6275606))

(declare-fun m!6276936 () Bool)

(assert (=> b!5230938 m!6276936))

(assert (=> d!1685922 d!1686452))

(assert (=> d!1685922 d!1685920))

(declare-fun e!3255367 () Bool)

(declare-fun d!1686454 () Bool)

(assert (=> d!1686454 (= (matchZipper!1065 ((_ map or) lt!2144988 lt!2144972) (t!373941 s!2326)) e!3255367)))

(declare-fun res!2220463 () Bool)

(assert (=> d!1686454 (=> res!2220463 e!3255367)))

(assert (=> d!1686454 (= res!2220463 (matchZipper!1065 lt!2144988 (t!373941 s!2326)))))

(assert (=> d!1686454 true))

(declare-fun _$48!866 () Unit!152582)

(assert (=> d!1686454 (= (choose!38901 lt!2144988 lt!2144972 (t!373941 s!2326)) _$48!866)))

(declare-fun b!5230939 () Bool)

(assert (=> b!5230939 (= e!3255367 (matchZipper!1065 lt!2144972 (t!373941 s!2326)))))

(assert (= (and d!1686454 (not res!2220463)) b!5230939))

(assert (=> d!1686454 m!6275872))

(assert (=> d!1686454 m!6275208))

(assert (=> b!5230939 m!6275198))

(assert (=> d!1685922 d!1686454))

(declare-fun bs!1214403 () Bool)

(declare-fun d!1686456 () Bool)

(assert (= bs!1214403 (and d!1686456 d!1686048)))

(declare-fun lambda!262780 () Int)

(assert (=> bs!1214403 (= lambda!262780 lambda!262724)))

(declare-fun bs!1214405 () Bool)

(assert (= bs!1214405 (and d!1686456 d!1685998)))

(assert (=> bs!1214405 (= lambda!262780 lambda!262716)))

(declare-fun bs!1214406 () Bool)

(assert (= bs!1214406 (and d!1686456 d!1686046)))

(assert (=> bs!1214406 (= lambda!262780 lambda!262723)))

(declare-fun bs!1214408 () Bool)

(assert (= bs!1214408 (and d!1686456 d!1686024)))

(assert (=> bs!1214408 (= lambda!262780 lambda!262720)))

(declare-fun bs!1214409 () Bool)

(assert (= bs!1214409 (and d!1686456 d!1686438)))

(assert (=> bs!1214409 (= lambda!262780 lambda!262776)))

(assert (=> d!1686456 (= (nullableZipper!1244 lt!2144977) (exists!1976 lt!2144977 lambda!262780))))

(declare-fun bs!1214410 () Bool)

(assert (= bs!1214410 d!1686456))

(declare-fun m!6276942 () Bool)

(assert (=> bs!1214410 m!6276942))

(assert (=> b!5229943 d!1686456))

(declare-fun d!1686462 () Bool)

(assert (=> d!1686462 (= (isEmpty!32564 (exprs!4705 (h!67087 zl!343))) ((_ is Nil!60638) (exprs!4705 (h!67087 zl!343))))))

(assert (=> b!5229982 d!1686462))

(assert (=> d!1685894 d!1686092))

(assert (=> bm!369756 d!1686092))

(assert (=> d!1685862 d!1685860))

(assert (=> d!1685862 d!1685842))

(declare-fun d!1686464 () Bool)

(assert (=> d!1686464 (= (matchR!7006 r!7292 s!2326) (matchRSpec!1924 r!7292 s!2326))))

(assert (=> d!1686464 true))

(declare-fun _$88!3510 () Unit!152582)

(assert (=> d!1686464 (= (choose!38900 r!7292 s!2326) _$88!3510)))

(declare-fun bs!1214411 () Bool)

(assert (= bs!1214411 d!1686464))

(assert (=> bs!1214411 m!6275226))

(assert (=> bs!1214411 m!6275224))

(assert (=> d!1685862 d!1686464))

(assert (=> d!1685862 d!1685870))

(assert (=> d!1685902 d!1685900))

(declare-fun d!1686468 () Bool)

(assert (=> d!1686468 (= (flatMap!548 lt!2144969 lambda!262644) (dynLambda!23962 lambda!262644 lt!2144985))))

(assert (=> d!1686468 true))

(declare-fun _$13!1758 () Unit!152582)

(assert (=> d!1686468 (= (choose!38896 lt!2144969 lt!2144985 lambda!262644) _$13!1758)))

(declare-fun b_lambda!202239 () Bool)

(assert (=> (not b_lambda!202239) (not d!1686468)))

(declare-fun bs!1214412 () Bool)

(assert (= bs!1214412 d!1686468))

(assert (=> bs!1214412 m!6275262))

(assert (=> bs!1214412 m!6275832))

(assert (=> d!1685902 d!1686468))

(declare-fun b!5230962 () Bool)

(declare-fun e!3255383 () Bool)

(declare-fun call!369991 () Bool)

(assert (=> b!5230962 (= e!3255383 call!369991)))

(declare-fun bm!369985 () Bool)

(declare-fun call!369992 () Bool)

(declare-fun c!903499 () Bool)

(declare-fun c!903500 () Bool)

(assert (=> bm!369985 (= call!369992 (validRegex!6557 (ite c!903499 (reg!15150 lt!2145043) (ite c!903500 (regOne!30155 lt!2145043) (regOne!30154 lt!2145043)))))))

(declare-fun b!5230963 () Bool)

(declare-fun e!3255381 () Bool)

(declare-fun e!3255380 () Bool)

(assert (=> b!5230963 (= e!3255381 e!3255380)))

(declare-fun res!2220470 () Bool)

(assert (=> b!5230963 (= res!2220470 (not (nullable!4990 (reg!15150 lt!2145043))))))

(assert (=> b!5230963 (=> (not res!2220470) (not e!3255380))))

(declare-fun b!5230964 () Bool)

(declare-fun e!3255382 () Bool)

(assert (=> b!5230964 (= e!3255382 e!3255381)))

(assert (=> b!5230964 (= c!903499 ((_ is Star!14821) lt!2145043))))

(declare-fun b!5230965 () Bool)

(declare-fun res!2220468 () Bool)

(assert (=> b!5230965 (=> (not res!2220468) (not e!3255383))))

(declare-fun call!369990 () Bool)

(assert (=> b!5230965 (= res!2220468 call!369990)))

(declare-fun e!3255386 () Bool)

(assert (=> b!5230965 (= e!3255386 e!3255383)))

(declare-fun bm!369986 () Bool)

(assert (=> bm!369986 (= call!369990 call!369992)))

(declare-fun bm!369987 () Bool)

(assert (=> bm!369987 (= call!369991 (validRegex!6557 (ite c!903500 (regTwo!30155 lt!2145043) (regTwo!30154 lt!2145043))))))

(declare-fun b!5230967 () Bool)

(assert (=> b!5230967 (= e!3255381 e!3255386)))

(assert (=> b!5230967 (= c!903500 ((_ is Union!14821) lt!2145043))))

(declare-fun b!5230968 () Bool)

(assert (=> b!5230968 (= e!3255380 call!369992)))

(declare-fun b!5230969 () Bool)

(declare-fun res!2220467 () Bool)

(declare-fun e!3255384 () Bool)

(assert (=> b!5230969 (=> res!2220467 e!3255384)))

(assert (=> b!5230969 (= res!2220467 (not ((_ is Concat!23666) lt!2145043)))))

(assert (=> b!5230969 (= e!3255386 e!3255384)))

(declare-fun b!5230970 () Bool)

(declare-fun e!3255385 () Bool)

(assert (=> b!5230970 (= e!3255385 call!369991)))

(declare-fun d!1686470 () Bool)

(declare-fun res!2220466 () Bool)

(assert (=> d!1686470 (=> res!2220466 e!3255382)))

(assert (=> d!1686470 (= res!2220466 ((_ is ElementMatch!14821) lt!2145043))))

(assert (=> d!1686470 (= (validRegex!6557 lt!2145043) e!3255382)))

(declare-fun b!5230966 () Bool)

(assert (=> b!5230966 (= e!3255384 e!3255385)))

(declare-fun res!2220469 () Bool)

(assert (=> b!5230966 (=> (not res!2220469) (not e!3255385))))

(assert (=> b!5230966 (= res!2220469 call!369990)))

(assert (= (and d!1686470 (not res!2220466)) b!5230964))

(assert (= (and b!5230964 c!903499) b!5230963))

(assert (= (and b!5230964 (not c!903499)) b!5230967))

(assert (= (and b!5230963 res!2220470) b!5230968))

(assert (= (and b!5230967 c!903500) b!5230965))

(assert (= (and b!5230967 (not c!903500)) b!5230969))

(assert (= (and b!5230965 res!2220468) b!5230962))

(assert (= (and b!5230969 (not res!2220467)) b!5230966))

(assert (= (and b!5230966 res!2220469) b!5230970))

(assert (= (or b!5230962 b!5230970) bm!369987))

(assert (= (or b!5230965 b!5230966) bm!369986))

(assert (= (or b!5230968 bm!369986) bm!369985))

(declare-fun m!6276972 () Bool)

(assert (=> bm!369985 m!6276972))

(declare-fun m!6276976 () Bool)

(assert (=> b!5230963 m!6276976))

(declare-fun m!6276980 () Bool)

(assert (=> bm!369987 m!6276980))

(assert (=> d!1685820 d!1686470))

(assert (=> d!1685820 d!1685872))

(assert (=> d!1685820 d!1685874))

(declare-fun bs!1214413 () Bool)

(declare-fun d!1686476 () Bool)

(assert (= bs!1214413 (and d!1686476 d!1686048)))

(declare-fun lambda!262781 () Int)

(assert (=> bs!1214413 (= lambda!262781 lambda!262724)))

(declare-fun bs!1214414 () Bool)

(assert (= bs!1214414 (and d!1686476 d!1685998)))

(assert (=> bs!1214414 (= lambda!262781 lambda!262716)))

(declare-fun bs!1214415 () Bool)

(assert (= bs!1214415 (and d!1686476 d!1686046)))

(assert (=> bs!1214415 (= lambda!262781 lambda!262723)))

(declare-fun bs!1214416 () Bool)

(assert (= bs!1214416 (and d!1686476 d!1686024)))

(assert (=> bs!1214416 (= lambda!262781 lambda!262720)))

(declare-fun bs!1214417 () Bool)

(assert (= bs!1214417 (and d!1686476 d!1686456)))

(assert (=> bs!1214417 (= lambda!262781 lambda!262780)))

(declare-fun bs!1214418 () Bool)

(assert (= bs!1214418 (and d!1686476 d!1686438)))

(assert (=> bs!1214418 (= lambda!262781 lambda!262776)))

(assert (=> d!1686476 (= (nullableZipper!1244 lt!2144972) (exists!1976 lt!2144972 lambda!262781))))

(declare-fun bs!1214419 () Bool)

(assert (= bs!1214419 d!1686476))

(declare-fun m!6276998 () Bool)

(assert (=> bs!1214419 m!6276998))

(assert (=> b!5229879 d!1686476))

(declare-fun b!5230979 () Bool)

(declare-fun e!3255394 () Bool)

(declare-fun call!369994 () Bool)

(assert (=> b!5230979 (= e!3255394 call!369994)))

(declare-fun bm!369988 () Bool)

(declare-fun c!903504 () Bool)

(declare-fun c!903503 () Bool)

(declare-fun call!369995 () Bool)

(assert (=> bm!369988 (= call!369995 (validRegex!6557 (ite c!903503 (reg!15150 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))) (ite c!903504 (regOne!30155 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))) (regOne!30154 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292)))))))))

(declare-fun b!5230980 () Bool)

(declare-fun e!3255392 () Bool)

(declare-fun e!3255391 () Bool)

(assert (=> b!5230980 (= e!3255392 e!3255391)))

(declare-fun res!2220479 () Bool)

(assert (=> b!5230980 (= res!2220479 (not (nullable!4990 (reg!15150 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))))

(assert (=> b!5230980 (=> (not res!2220479) (not e!3255391))))

(declare-fun b!5230981 () Bool)

(declare-fun e!3255393 () Bool)

(assert (=> b!5230981 (= e!3255393 e!3255392)))

(assert (=> b!5230981 (= c!903503 ((_ is Star!14821) (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))

(declare-fun b!5230982 () Bool)

(declare-fun res!2220477 () Bool)

(assert (=> b!5230982 (=> (not res!2220477) (not e!3255394))))

(declare-fun call!369993 () Bool)

(assert (=> b!5230982 (= res!2220477 call!369993)))

(declare-fun e!3255397 () Bool)

(assert (=> b!5230982 (= e!3255397 e!3255394)))

(declare-fun bm!369989 () Bool)

(assert (=> bm!369989 (= call!369993 call!369995)))

(declare-fun bm!369990 () Bool)

(assert (=> bm!369990 (= call!369994 (validRegex!6557 (ite c!903504 (regTwo!30155 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))) (regTwo!30154 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))))

(declare-fun b!5230984 () Bool)

(assert (=> b!5230984 (= e!3255392 e!3255397)))

(assert (=> b!5230984 (= c!903504 ((_ is Union!14821) (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))

(declare-fun b!5230985 () Bool)

(assert (=> b!5230985 (= e!3255391 call!369995)))

(declare-fun b!5230986 () Bool)

(declare-fun res!2220476 () Bool)

(declare-fun e!3255395 () Bool)

(assert (=> b!5230986 (=> res!2220476 e!3255395)))

(assert (=> b!5230986 (= res!2220476 (not ((_ is Concat!23666) (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292)))))))

(assert (=> b!5230986 (= e!3255397 e!3255395)))

(declare-fun b!5230987 () Bool)

(declare-fun e!3255396 () Bool)

(assert (=> b!5230987 (= e!3255396 call!369994)))

(declare-fun d!1686480 () Bool)

(declare-fun res!2220475 () Bool)

(assert (=> d!1686480 (=> res!2220475 e!3255393)))

(assert (=> d!1686480 (= res!2220475 ((_ is ElementMatch!14821) (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))))))

(assert (=> d!1686480 (= (validRegex!6557 (ite c!903156 (regTwo!30155 r!7292) (regTwo!30154 r!7292))) e!3255393)))

(declare-fun b!5230983 () Bool)

(assert (=> b!5230983 (= e!3255395 e!3255396)))

(declare-fun res!2220478 () Bool)

(assert (=> b!5230983 (=> (not res!2220478) (not e!3255396))))

(assert (=> b!5230983 (= res!2220478 call!369993)))

(assert (= (and d!1686480 (not res!2220475)) b!5230981))

(assert (= (and b!5230981 c!903503) b!5230980))

(assert (= (and b!5230981 (not c!903503)) b!5230984))

(assert (= (and b!5230980 res!2220479) b!5230985))

(assert (= (and b!5230984 c!903504) b!5230982))

(assert (= (and b!5230984 (not c!903504)) b!5230986))

(assert (= (and b!5230982 res!2220477) b!5230979))

(assert (= (and b!5230986 (not res!2220476)) b!5230983))

(assert (= (and b!5230983 res!2220478) b!5230987))

(assert (= (or b!5230979 b!5230987) bm!369990))

(assert (= (or b!5230982 b!5230983) bm!369989))

(assert (= (or b!5230985 bm!369989) bm!369988))

(declare-fun m!6277000 () Bool)

(assert (=> bm!369988 m!6277000))

(declare-fun m!6277002 () Bool)

(assert (=> b!5230980 m!6277002))

(declare-fun m!6277004 () Bool)

(assert (=> bm!369990 m!6277004))

(assert (=> bm!369765 d!1686480))

(declare-fun d!1686482 () Bool)

(declare-fun res!2220482 () Bool)

(declare-fun e!3255403 () Bool)

(assert (=> d!1686482 (=> res!2220482 e!3255403)))

(assert (=> d!1686482 (= res!2220482 ((_ is EmptyExpr!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> d!1686482 (= (nullableFct!1396 (h!67086 (exprs!4705 (h!67087 zl!343)))) e!3255403)))

(declare-fun b!5230988 () Bool)

(declare-fun e!3255398 () Bool)

(declare-fun e!3255401 () Bool)

(assert (=> b!5230988 (= e!3255398 e!3255401)))

(declare-fun res!2220480 () Bool)

(assert (=> b!5230988 (=> res!2220480 e!3255401)))

(assert (=> b!5230988 (= res!2220480 ((_ is Star!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun bm!369991 () Bool)

(declare-fun call!369997 () Bool)

(declare-fun c!903505 () Bool)

(assert (=> bm!369991 (= call!369997 (nullable!4990 (ite c!903505 (regOne!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regOne!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230989 () Bool)

(declare-fun e!3255402 () Bool)

(declare-fun call!369996 () Bool)

(assert (=> b!5230989 (= e!3255402 call!369996)))

(declare-fun b!5230990 () Bool)

(declare-fun e!3255399 () Bool)

(assert (=> b!5230990 (= e!3255401 e!3255399)))

(assert (=> b!5230990 (= c!903505 ((_ is Union!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun b!5230991 () Bool)

(declare-fun e!3255400 () Bool)

(assert (=> b!5230991 (= e!3255399 e!3255400)))

(declare-fun res!2220483 () Bool)

(assert (=> b!5230991 (= res!2220483 call!369997)))

(assert (=> b!5230991 (=> (not res!2220483) (not e!3255400))))

(declare-fun b!5230992 () Bool)

(assert (=> b!5230992 (= e!3255403 e!3255398)))

(declare-fun res!2220481 () Bool)

(assert (=> b!5230992 (=> (not res!2220481) (not e!3255398))))

(assert (=> b!5230992 (= res!2220481 (and (not ((_ is EmptyLang!14821) (h!67086 (exprs!4705 (h!67087 zl!343))))) (not ((_ is ElementMatch!14821) (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230993 () Bool)

(assert (=> b!5230993 (= e!3255399 e!3255402)))

(declare-fun res!2220484 () Bool)

(assert (=> b!5230993 (= res!2220484 call!369997)))

(assert (=> b!5230993 (=> res!2220484 e!3255402)))

(declare-fun bm!369992 () Bool)

(assert (=> bm!369992 (= call!369996 (nullable!4990 (ite c!903505 (regTwo!30155 (h!67086 (exprs!4705 (h!67087 zl!343)))) (regTwo!30154 (h!67086 (exprs!4705 (h!67087 zl!343)))))))))

(declare-fun b!5230994 () Bool)

(assert (=> b!5230994 (= e!3255400 call!369996)))

(assert (= (and d!1686482 (not res!2220482)) b!5230992))

(assert (= (and b!5230992 res!2220481) b!5230988))

(assert (= (and b!5230988 (not res!2220480)) b!5230990))

(assert (= (and b!5230990 c!903505) b!5230993))

(assert (= (and b!5230990 (not c!903505)) b!5230991))

(assert (= (and b!5230993 (not res!2220484)) b!5230989))

(assert (= (and b!5230991 res!2220483) b!5230994))

(assert (= (or b!5230989 b!5230994) bm!369992))

(assert (= (or b!5230993 b!5230991) bm!369991))

(declare-fun m!6277006 () Bool)

(assert (=> bm!369991 m!6277006))

(declare-fun m!6277008 () Bool)

(assert (=> bm!369992 m!6277008))

(assert (=> d!1685826 d!1686482))

(assert (=> b!5229983 d!1685796))

(declare-fun d!1686484 () Bool)

(assert (=> d!1686484 (= (head!11208 (unfocusZipperList!263 zl!343)) (h!67086 (unfocusZipperList!263 zl!343)))))

(assert (=> b!5229866 d!1686484))

(assert (=> b!5229947 d!1685876))

(declare-fun b!5230995 () Bool)

(declare-fun e!3255404 () Bool)

(assert (=> b!5230995 (= e!3255404 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985)))))))))

(declare-fun call!369998 () (InoxSet Context!8410))

(declare-fun b!5230996 () Bool)

(declare-fun e!3255405 () (InoxSet Context!8410))

(assert (=> b!5230996 (= e!3255405 ((_ map or) call!369998 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985)))))) (h!67088 s!2326))))))

(declare-fun b!5230997 () Bool)

(declare-fun e!3255406 () (InoxSet Context!8410))

(assert (=> b!5230997 (= e!3255405 e!3255406)))

(declare-fun c!903507 () Bool)

(assert (=> b!5230997 (= c!903507 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985))))))))

(declare-fun d!1686486 () Bool)

(declare-fun c!903506 () Bool)

(assert (=> d!1686486 (= c!903506 e!3255404)))

(declare-fun res!2220485 () Bool)

(assert (=> d!1686486 (=> (not res!2220485) (not e!3255404))))

(assert (=> d!1686486 (= res!2220485 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985))))))))

(assert (=> d!1686486 (= (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (h!67088 s!2326)) e!3255405)))

(declare-fun b!5230998 () Bool)

(assert (=> b!5230998 (= e!3255406 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5230999 () Bool)

(assert (=> b!5230999 (= e!3255406 call!369998)))

(declare-fun bm!369993 () Bool)

(assert (=> bm!369993 (= call!369998 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985)))))) (h!67088 s!2326)))))

(assert (= (and d!1686486 res!2220485) b!5230995))

(assert (= (and d!1686486 c!903506) b!5230996))

(assert (= (and d!1686486 (not c!903506)) b!5230997))

(assert (= (and b!5230997 c!903507) b!5230999))

(assert (= (and b!5230997 (not c!903507)) b!5230998))

(assert (= (or b!5230996 b!5230999) bm!369993))

(declare-fun m!6277010 () Bool)

(assert (=> b!5230995 m!6277010))

(declare-fun m!6277012 () Bool)

(assert (=> b!5230996 m!6277012))

(declare-fun m!6277014 () Bool)

(assert (=> bm!369993 m!6277014))

(assert (=> b!5229930 d!1686486))

(declare-fun d!1686488 () Bool)

(declare-fun c!903508 () Bool)

(assert (=> d!1686488 (= c!903508 (isEmpty!32567 (tail!10304 (t!373941 s!2326))))))

(declare-fun e!3255407 () Bool)

(assert (=> d!1686488 (= (matchZipper!1065 (derivationStepZipper!1088 ((_ map or) lt!2144972 lt!2144967) (head!11207 (t!373941 s!2326))) (tail!10304 (t!373941 s!2326))) e!3255407)))

(declare-fun b!5231000 () Bool)

(assert (=> b!5231000 (= e!3255407 (nullableZipper!1244 (derivationStepZipper!1088 ((_ map or) lt!2144972 lt!2144967) (head!11207 (t!373941 s!2326)))))))

(declare-fun b!5231001 () Bool)

(assert (=> b!5231001 (= e!3255407 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 ((_ map or) lt!2144972 lt!2144967) (head!11207 (t!373941 s!2326))) (head!11207 (tail!10304 (t!373941 s!2326)))) (tail!10304 (tail!10304 (t!373941 s!2326)))))))

(assert (= (and d!1686488 c!903508) b!5231000))

(assert (= (and d!1686488 (not c!903508)) b!5231001))

(assert (=> d!1686488 m!6275606))

(assert (=> d!1686488 m!6276390))

(assert (=> b!5231000 m!6275908))

(declare-fun m!6277016 () Bool)

(assert (=> b!5231000 m!6277016))

(assert (=> b!5231001 m!6275606))

(assert (=> b!5231001 m!6276394))

(assert (=> b!5231001 m!6275908))

(assert (=> b!5231001 m!6276394))

(declare-fun m!6277018 () Bool)

(assert (=> b!5231001 m!6277018))

(assert (=> b!5231001 m!6275606))

(assert (=> b!5231001 m!6276398))

(assert (=> b!5231001 m!6277018))

(assert (=> b!5231001 m!6276398))

(declare-fun m!6277020 () Bool)

(assert (=> b!5231001 m!6277020))

(assert (=> b!5229985 d!1686488))

(declare-fun bs!1214421 () Bool)

(declare-fun d!1686490 () Bool)

(assert (= bs!1214421 (and d!1686490 d!1686400)))

(declare-fun lambda!262782 () Int)

(assert (=> bs!1214421 (= lambda!262782 lambda!262770)))

(declare-fun bs!1214422 () Bool)

(assert (= bs!1214422 (and d!1686490 d!1686232)))

(assert (=> bs!1214422 (= lambda!262782 lambda!262749)))

(declare-fun bs!1214423 () Bool)

(assert (= bs!1214423 (and d!1686490 d!1686404)))

(assert (=> bs!1214423 (= lambda!262782 lambda!262772)))

(declare-fun bs!1214424 () Bool)

(assert (= bs!1214424 (and d!1686490 d!1686276)))

(assert (=> bs!1214424 (= lambda!262782 lambda!262754)))

(declare-fun bs!1214425 () Bool)

(assert (= bs!1214425 (and d!1686490 d!1686288)))

(assert (=> bs!1214425 (= lambda!262782 lambda!262755)))

(declare-fun bs!1214426 () Bool)

(assert (= bs!1214426 (and d!1686490 d!1686446)))

(assert (=> bs!1214426 (= (= (head!11207 (t!373941 s!2326)) (head!11207 s!2326)) (= lambda!262782 lambda!262778))))

(declare-fun bs!1214427 () Bool)

(assert (= bs!1214427 (and d!1686490 d!1686210)))

(assert (=> bs!1214427 (= lambda!262782 lambda!262748)))

(declare-fun bs!1214428 () Bool)

(assert (= bs!1214428 (and d!1686490 d!1686380)))

(assert (=> bs!1214428 (= lambda!262782 lambda!262768)))

(declare-fun bs!1214429 () Bool)

(assert (= bs!1214429 (and d!1686490 b!5229203)))

(assert (=> bs!1214429 (= (= (head!11207 (t!373941 s!2326)) (h!67088 s!2326)) (= lambda!262782 lambda!262644))))

(declare-fun bs!1214430 () Bool)

(assert (= bs!1214430 (and d!1686490 d!1686430)))

(assert (=> bs!1214430 (= (= (head!11207 (t!373941 s!2326)) (head!11207 s!2326)) (= lambda!262782 lambda!262775))))

(assert (=> d!1686490 true))

(assert (=> d!1686490 (= (derivationStepZipper!1088 ((_ map or) lt!2144972 lt!2144967) (head!11207 (t!373941 s!2326))) (flatMap!548 ((_ map or) lt!2144972 lt!2144967) lambda!262782))))

(declare-fun bs!1214431 () Bool)

(assert (= bs!1214431 d!1686490))

(declare-fun m!6277026 () Bool)

(assert (=> bs!1214431 m!6277026))

(assert (=> b!5229985 d!1686490))

(assert (=> b!5229985 d!1686212))

(assert (=> b!5229985 d!1686214))

(declare-fun bs!1214432 () Bool)

(declare-fun d!1686494 () Bool)

(assert (= bs!1214432 (and d!1686494 d!1686048)))

(declare-fun lambda!262783 () Int)

(assert (=> bs!1214432 (= lambda!262783 lambda!262724)))

(declare-fun bs!1214433 () Bool)

(assert (= bs!1214433 (and d!1686494 d!1685998)))

(assert (=> bs!1214433 (= lambda!262783 lambda!262716)))

(declare-fun bs!1214434 () Bool)

(assert (= bs!1214434 (and d!1686494 d!1686046)))

(assert (=> bs!1214434 (= lambda!262783 lambda!262723)))

(declare-fun bs!1214435 () Bool)

(assert (= bs!1214435 (and d!1686494 d!1686024)))

(assert (=> bs!1214435 (= lambda!262783 lambda!262720)))

(declare-fun bs!1214436 () Bool)

(assert (= bs!1214436 (and d!1686494 d!1686456)))

(assert (=> bs!1214436 (= lambda!262783 lambda!262780)))

(declare-fun bs!1214437 () Bool)

(assert (= bs!1214437 (and d!1686494 d!1686438)))

(assert (=> bs!1214437 (= lambda!262783 lambda!262776)))

(declare-fun bs!1214438 () Bool)

(assert (= bs!1214438 (and d!1686494 d!1686476)))

(assert (=> bs!1214438 (= lambda!262783 lambda!262781)))

(assert (=> d!1686494 (= (nullableZipper!1244 lt!2144988) (exists!1976 lt!2144988 lambda!262783))))

(declare-fun bs!1214439 () Bool)

(assert (= bs!1214439 d!1686494))

(declare-fun m!6277034 () Bool)

(assert (=> bs!1214439 m!6277034))

(assert (=> b!5229945 d!1686494))

(declare-fun d!1686496 () Bool)

(assert (=> d!1686496 (= ($colon$colon!1294 (exprs!4705 lt!2144978) (ite (or c!903055 c!903051) (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (regOne!30155 (regOne!30154 r!7292)))) (Cons!60638 (ite (or c!903055 c!903051) (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (regOne!30155 (regOne!30154 r!7292))) (exprs!4705 lt!2144978)))))

(assert (=> bm!369702 d!1686496))

(declare-fun b!5231011 () Bool)

(declare-fun e!3255413 () Bool)

(assert (=> b!5231011 (= e!3255413 (nullable!4990 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990)))))))))

(declare-fun b!5231012 () Bool)

(declare-fun call!369999 () (InoxSet Context!8410))

(declare-fun e!3255414 () (InoxSet Context!8410))

(assert (=> b!5231012 (= e!3255414 ((_ map or) call!369999 (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990)))))) (h!67088 s!2326))))))

(declare-fun b!5231013 () Bool)

(declare-fun e!3255415 () (InoxSet Context!8410))

(assert (=> b!5231013 (= e!3255414 e!3255415)))

(declare-fun c!903512 () Bool)

(assert (=> b!5231013 (= c!903512 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990))))))))

(declare-fun d!1686498 () Bool)

(declare-fun c!903511 () Bool)

(assert (=> d!1686498 (= c!903511 e!3255413)))

(declare-fun res!2220491 () Bool)

(assert (=> d!1686498 (=> (not res!2220491) (not e!3255413))))

(assert (=> d!1686498 (= res!2220491 ((_ is Cons!60638) (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990))))))))

(assert (=> d!1686498 (= (derivationStepZipperUp!193 (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (h!67088 s!2326)) e!3255414)))

(declare-fun b!5231014 () Bool)

(assert (=> b!5231014 (= e!3255415 ((as const (Array Context!8410 Bool)) false))))

(declare-fun b!5231015 () Bool)

(assert (=> b!5231015 (= e!3255415 call!369999)))

(declare-fun bm!369994 () Bool)

(assert (=> bm!369994 (= call!369999 (derivationStepZipperDown!269 (h!67086 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990))))) (Context!8411 (t!373939 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990)))))) (h!67088 s!2326)))))

(assert (= (and d!1686498 res!2220491) b!5231011))

(assert (= (and d!1686498 c!903511) b!5231012))

(assert (= (and d!1686498 (not c!903511)) b!5231013))

(assert (= (and b!5231013 c!903512) b!5231015))

(assert (= (and b!5231013 (not c!903512)) b!5231014))

(assert (= (or b!5231012 b!5231015) bm!369994))

(declare-fun m!6277052 () Bool)

(assert (=> b!5231011 m!6277052))

(declare-fun m!6277054 () Bool)

(assert (=> b!5231012 m!6277054))

(declare-fun m!6277056 () Bool)

(assert (=> bm!369994 m!6277056))

(assert (=> b!5229925 d!1686498))

(assert (=> bs!1214002 d!1685908))

(assert (=> b!5229973 d!1685926))

(declare-fun d!1686502 () Bool)

(assert (=> d!1686502 (= (nullable!4990 (h!67086 (exprs!4705 lt!2144978))) (nullableFct!1396 (h!67086 (exprs!4705 lt!2144978))))))

(declare-fun bs!1214440 () Bool)

(assert (= bs!1214440 d!1686502))

(declare-fun m!6277062 () Bool)

(assert (=> bs!1214440 m!6277062))

(assert (=> b!5229611 d!1686502))

(assert (=> d!1685896 d!1686092))

(declare-fun bs!1214441 () Bool)

(declare-fun d!1686504 () Bool)

(assert (= bs!1214441 (and d!1686504 d!1686048)))

(declare-fun lambda!262784 () Int)

(assert (=> bs!1214441 (= lambda!262784 lambda!262724)))

(declare-fun bs!1214442 () Bool)

(assert (= bs!1214442 (and d!1686504 d!1685998)))

(assert (=> bs!1214442 (= lambda!262784 lambda!262716)))

(declare-fun bs!1214443 () Bool)

(assert (= bs!1214443 (and d!1686504 d!1686046)))

(assert (=> bs!1214443 (= lambda!262784 lambda!262723)))

(declare-fun bs!1214444 () Bool)

(assert (= bs!1214444 (and d!1686504 d!1686024)))

(assert (=> bs!1214444 (= lambda!262784 lambda!262720)))

(declare-fun bs!1214446 () Bool)

(assert (= bs!1214446 (and d!1686504 d!1686456)))

(assert (=> bs!1214446 (= lambda!262784 lambda!262780)))

(declare-fun bs!1214448 () Bool)

(assert (= bs!1214448 (and d!1686504 d!1686438)))

(assert (=> bs!1214448 (= lambda!262784 lambda!262776)))

(declare-fun bs!1214449 () Bool)

(assert (= bs!1214449 (and d!1686504 d!1686494)))

(assert (=> bs!1214449 (= lambda!262784 lambda!262783)))

(declare-fun bs!1214451 () Bool)

(assert (= bs!1214451 (and d!1686504 d!1686476)))

(assert (=> bs!1214451 (= lambda!262784 lambda!262781)))

(assert (=> d!1686504 (= (nullableZipper!1244 ((_ map or) lt!2144988 lt!2144967)) (exists!1976 ((_ map or) lt!2144988 lt!2144967) lambda!262784))))

(declare-fun bs!1214454 () Bool)

(assert (= bs!1214454 d!1686504))

(declare-fun m!6277066 () Bool)

(assert (=> bs!1214454 m!6277066))

(assert (=> b!5229941 d!1686504))

(declare-fun d!1686508 () Bool)

(assert (=> d!1686508 (= (Exists!2002 (ite c!903137 lambda!262681 lambda!262682)) (choose!38902 (ite c!903137 lambda!262681 lambda!262682)))))

(declare-fun bs!1214458 () Bool)

(assert (= bs!1214458 d!1686508))

(declare-fun m!6277068 () Bool)

(assert (=> bs!1214458 m!6277068))

(assert (=> bm!369752 d!1686508))

(assert (=> d!1685934 d!1686174))

(declare-fun d!1686510 () Bool)

(assert (=> d!1686510 (= (head!11208 (exprs!4705 (h!67087 zl!343))) (h!67086 (exprs!4705 (h!67087 zl!343))))))

(assert (=> b!5229981 d!1686510))

(declare-fun bs!1214461 () Bool)

(declare-fun d!1686512 () Bool)

(assert (= bs!1214461 (and d!1686512 d!1686048)))

(declare-fun lambda!262786 () Int)

(assert (=> bs!1214461 (= lambda!262786 lambda!262724)))

(declare-fun bs!1214463 () Bool)

(assert (= bs!1214463 (and d!1686512 d!1685998)))

(assert (=> bs!1214463 (= lambda!262786 lambda!262716)))

(declare-fun bs!1214464 () Bool)

(assert (= bs!1214464 (and d!1686512 d!1686046)))

(assert (=> bs!1214464 (= lambda!262786 lambda!262723)))

(declare-fun bs!1214465 () Bool)

(assert (= bs!1214465 (and d!1686512 d!1686504)))

(assert (=> bs!1214465 (= lambda!262786 lambda!262784)))

(declare-fun bs!1214466 () Bool)

(assert (= bs!1214466 (and d!1686512 d!1686024)))

(assert (=> bs!1214466 (= lambda!262786 lambda!262720)))

(declare-fun bs!1214467 () Bool)

(assert (= bs!1214467 (and d!1686512 d!1686456)))

(assert (=> bs!1214467 (= lambda!262786 lambda!262780)))

(declare-fun bs!1214468 () Bool)

(assert (= bs!1214468 (and d!1686512 d!1686438)))

(assert (=> bs!1214468 (= lambda!262786 lambda!262776)))

(declare-fun bs!1214469 () Bool)

(assert (= bs!1214469 (and d!1686512 d!1686494)))

(assert (=> bs!1214469 (= lambda!262786 lambda!262783)))

(declare-fun bs!1214470 () Bool)

(assert (= bs!1214470 (and d!1686512 d!1686476)))

(assert (=> bs!1214470 (= lambda!262786 lambda!262781)))

(assert (=> d!1686512 (= (nullableZipper!1244 lt!2144967) (exists!1976 lt!2144967 lambda!262786))))

(declare-fun bs!1214471 () Bool)

(assert (= bs!1214471 d!1686512))

(declare-fun m!6277078 () Bool)

(assert (=> bs!1214471 m!6277078))

(assert (=> b!5229507 d!1686512))

(declare-fun b!5231020 () Bool)

(declare-fun e!3255419 () Bool)

(assert (=> b!5231020 (= e!3255419 (= (head!11207 (_2!35323 (get!20840 lt!2145079))) (c!902967 (regTwo!30154 r!7292))))))

(declare-fun b!5231021 () Bool)

(declare-fun e!3255422 () Bool)

(declare-fun e!3255418 () Bool)

(assert (=> b!5231021 (= e!3255422 e!3255418)))

(declare-fun res!2220493 () Bool)

(assert (=> b!5231021 (=> (not res!2220493) (not e!3255418))))

(declare-fun lt!2145158 () Bool)

(assert (=> b!5231021 (= res!2220493 (not lt!2145158))))

(declare-fun b!5231022 () Bool)

(declare-fun e!3255424 () Bool)

(declare-fun call!370000 () Bool)

(assert (=> b!5231022 (= e!3255424 (= lt!2145158 call!370000))))

(declare-fun bm!369995 () Bool)

(assert (=> bm!369995 (= call!370000 (isEmpty!32567 (_2!35323 (get!20840 lt!2145079))))))

(declare-fun b!5231023 () Bool)

(declare-fun res!2220494 () Bool)

(assert (=> b!5231023 (=> res!2220494 e!3255422)))

(assert (=> b!5231023 (= res!2220494 e!3255419)))

(declare-fun res!2220492 () Bool)

(assert (=> b!5231023 (=> (not res!2220492) (not e!3255419))))

(assert (=> b!5231023 (= res!2220492 lt!2145158)))

(declare-fun b!5231024 () Bool)

(declare-fun e!3255423 () Bool)

(assert (=> b!5231024 (= e!3255423 (not lt!2145158))))

(declare-fun b!5231025 () Bool)

(declare-fun e!3255421 () Bool)

(assert (=> b!5231025 (= e!3255418 e!3255421)))

(declare-fun res!2220497 () Bool)

(assert (=> b!5231025 (=> res!2220497 e!3255421)))

(assert (=> b!5231025 (= res!2220497 call!370000)))

(declare-fun b!5231026 () Bool)

(declare-fun res!2220499 () Bool)

(assert (=> b!5231026 (=> (not res!2220499) (not e!3255419))))

(assert (=> b!5231026 (= res!2220499 (not call!370000))))

(declare-fun d!1686518 () Bool)

(assert (=> d!1686518 e!3255424))

(declare-fun c!903515 () Bool)

(assert (=> d!1686518 (= c!903515 ((_ is EmptyExpr!14821) (regTwo!30154 r!7292)))))

(declare-fun e!3255420 () Bool)

(assert (=> d!1686518 (= lt!2145158 e!3255420)))

(declare-fun c!903517 () Bool)

(assert (=> d!1686518 (= c!903517 (isEmpty!32567 (_2!35323 (get!20840 lt!2145079))))))

(assert (=> d!1686518 (validRegex!6557 (regTwo!30154 r!7292))))

(assert (=> d!1686518 (= (matchR!7006 (regTwo!30154 r!7292) (_2!35323 (get!20840 lt!2145079))) lt!2145158)))

(declare-fun b!5231027 () Bool)

(assert (=> b!5231027 (= e!3255420 (nullable!4990 (regTwo!30154 r!7292)))))

(declare-fun b!5231028 () Bool)

(assert (=> b!5231028 (= e!3255424 e!3255423)))

(declare-fun c!903516 () Bool)

(assert (=> b!5231028 (= c!903516 ((_ is EmptyLang!14821) (regTwo!30154 r!7292)))))

(declare-fun b!5231029 () Bool)

(declare-fun res!2220495 () Bool)

(assert (=> b!5231029 (=> (not res!2220495) (not e!3255419))))

(assert (=> b!5231029 (= res!2220495 (isEmpty!32567 (tail!10304 (_2!35323 (get!20840 lt!2145079)))))))

(declare-fun b!5231030 () Bool)

(declare-fun res!2220498 () Bool)

(assert (=> b!5231030 (=> res!2220498 e!3255421)))

(assert (=> b!5231030 (= res!2220498 (not (isEmpty!32567 (tail!10304 (_2!35323 (get!20840 lt!2145079))))))))

(declare-fun b!5231031 () Bool)

(assert (=> b!5231031 (= e!3255421 (not (= (head!11207 (_2!35323 (get!20840 lt!2145079))) (c!902967 (regTwo!30154 r!7292)))))))

(declare-fun b!5231032 () Bool)

(declare-fun res!2220496 () Bool)

(assert (=> b!5231032 (=> res!2220496 e!3255422)))

(assert (=> b!5231032 (= res!2220496 (not ((_ is ElementMatch!14821) (regTwo!30154 r!7292))))))

(assert (=> b!5231032 (= e!3255423 e!3255422)))

(declare-fun b!5231033 () Bool)

(assert (=> b!5231033 (= e!3255420 (matchR!7006 (derivativeStep!4066 (regTwo!30154 r!7292) (head!11207 (_2!35323 (get!20840 lt!2145079)))) (tail!10304 (_2!35323 (get!20840 lt!2145079)))))))

(assert (= (and d!1686518 c!903517) b!5231027))

(assert (= (and d!1686518 (not c!903517)) b!5231033))

(assert (= (and d!1686518 c!903515) b!5231022))

(assert (= (and d!1686518 (not c!903515)) b!5231028))

(assert (= (and b!5231028 c!903516) b!5231024))

(assert (= (and b!5231028 (not c!903516)) b!5231032))

(assert (= (and b!5231032 (not res!2220496)) b!5231023))

(assert (= (and b!5231023 res!2220492) b!5231026))

(assert (= (and b!5231026 res!2220499) b!5231029))

(assert (= (and b!5231029 res!2220495) b!5231020))

(assert (= (and b!5231023 (not res!2220494)) b!5231021))

(assert (= (and b!5231021 res!2220493) b!5231025))

(assert (= (and b!5231025 (not res!2220497)) b!5231030))

(assert (= (and b!5231030 (not res!2220498)) b!5231031))

(assert (= (or b!5231022 b!5231025 b!5231026) bm!369995))

(declare-fun m!6277082 () Bool)

(assert (=> b!5231033 m!6277082))

(assert (=> b!5231033 m!6277082))

(declare-fun m!6277084 () Bool)

(assert (=> b!5231033 m!6277084))

(declare-fun m!6277086 () Bool)

(assert (=> b!5231033 m!6277086))

(assert (=> b!5231033 m!6277084))

(assert (=> b!5231033 m!6277086))

(declare-fun m!6277088 () Bool)

(assert (=> b!5231033 m!6277088))

(assert (=> b!5231029 m!6277086))

(assert (=> b!5231029 m!6277086))

(declare-fun m!6277090 () Bool)

(assert (=> b!5231029 m!6277090))

(assert (=> b!5231031 m!6277082))

(declare-fun m!6277092 () Bool)

(assert (=> d!1686518 m!6277092))

(assert (=> d!1686518 m!6276342))

(assert (=> b!5231030 m!6277086))

(assert (=> b!5231030 m!6277086))

(assert (=> b!5231030 m!6277090))

(assert (=> b!5231020 m!6277082))

(assert (=> bm!369995 m!6277092))

(assert (=> b!5231027 m!6276344))

(assert (=> b!5229906 d!1686518))

(assert (=> b!5229906 d!1686098))

(declare-fun bm!369996 () Bool)

(declare-fun call!370004 () (InoxSet Context!8410))

(declare-fun call!370005 () (InoxSet Context!8410))

(assert (=> bm!369996 (= call!370004 call!370005)))

(declare-fun b!5231035 () Bool)

(declare-fun e!3255429 () (InoxSet Context!8410))

(declare-fun call!370001 () (InoxSet Context!8410))

(assert (=> b!5231035 (= e!3255429 ((_ map or) call!370001 call!370005))))

(declare-fun b!5231036 () Bool)

(declare-fun c!903522 () Bool)

(declare-fun e!3255430 () Bool)

(assert (=> b!5231036 (= c!903522 e!3255430)))

(declare-fun res!2220501 () Bool)

(assert (=> b!5231036 (=> (not res!2220501) (not e!3255430))))

(assert (=> b!5231036 (= res!2220501 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144985))))))

(declare-fun e!3255427 () (InoxSet Context!8410))

(assert (=> b!5231036 (= e!3255427 e!3255429)))

(declare-fun b!5231037 () Bool)

(declare-fun e!3255428 () (InoxSet Context!8410))

(assert (=> b!5231037 (= e!3255428 call!370004)))

(declare-fun bm!369997 () Bool)

(declare-fun c!903520 () Bool)

(declare-fun call!370006 () List!60762)

(assert (=> bm!369997 (= call!370001 (derivationStepZipperDown!269 (ite c!903520 (regOne!30155 (h!67086 (exprs!4705 lt!2144985))) (regOne!30154 (h!67086 (exprs!4705 lt!2144985)))) (ite c!903520 (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (Context!8411 call!370006)) (h!67088 s!2326)))))

(declare-fun bm!369998 () Bool)

(declare-fun call!370003 () (InoxSet Context!8410))

(assert (=> bm!369998 (= call!370005 call!370003)))

(declare-fun bm!369999 () Bool)

(declare-fun c!903518 () Bool)

(assert (=> bm!369999 (= call!370006 ($colon$colon!1294 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144985)))) (ite (or c!903522 c!903518) (regTwo!30154 (h!67086 (exprs!4705 lt!2144985))) (h!67086 (exprs!4705 lt!2144985)))))))

(declare-fun b!5231038 () Bool)

(declare-fun e!3255431 () (InoxSet Context!8410))

(assert (=> b!5231038 (= e!3255431 (store ((as const (Array Context!8410 Bool)) false) (Context!8411 (t!373939 (exprs!4705 lt!2144985))) true))))

(declare-fun b!5231039 () Bool)

(assert (=> b!5231039 (= e!3255429 e!3255428)))

(assert (=> b!5231039 (= c!903518 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144985))))))

(declare-fun b!5231040 () Bool)

(declare-fun e!3255426 () (InoxSet Context!8410))

(assert (=> b!5231040 (= e!3255426 call!370004)))

(declare-fun bm!370000 () Bool)

(declare-fun call!370002 () List!60762)

(assert (=> bm!370000 (= call!370003 (derivationStepZipperDown!269 (ite c!903520 (regTwo!30155 (h!67086 (exprs!4705 lt!2144985))) (ite c!903522 (regTwo!30154 (h!67086 (exprs!4705 lt!2144985))) (ite c!903518 (regOne!30154 (h!67086 (exprs!4705 lt!2144985))) (reg!15150 (h!67086 (exprs!4705 lt!2144985)))))) (ite (or c!903520 c!903522) (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (Context!8411 call!370002)) (h!67088 s!2326)))))

(declare-fun b!5231041 () Bool)

(assert (=> b!5231041 (= e!3255430 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 lt!2144985)))))))

(declare-fun b!5231043 () Bool)

(declare-fun c!903521 () Bool)

(assert (=> b!5231043 (= c!903521 ((_ is Star!14821) (h!67086 (exprs!4705 lt!2144985))))))

(assert (=> b!5231043 (= e!3255428 e!3255426)))

(declare-fun b!5231044 () Bool)

(assert (=> b!5231044 (= e!3255431 e!3255427)))

(assert (=> b!5231044 (= c!903520 ((_ is Union!14821) (h!67086 (exprs!4705 lt!2144985))))))

(declare-fun bm!370001 () Bool)

(assert (=> bm!370001 (= call!370002 call!370006)))

(declare-fun b!5231045 () Bool)

(assert (=> b!5231045 (= e!3255426 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686522 () Bool)

(declare-fun c!903519 () Bool)

(assert (=> d!1686522 (= c!903519 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 lt!2144985))) (= (c!902967 (h!67086 (exprs!4705 lt!2144985))) (h!67088 s!2326))))))

(assert (=> d!1686522 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144985)) (Context!8411 (t!373939 (exprs!4705 lt!2144985))) (h!67088 s!2326)) e!3255431)))

(declare-fun b!5231042 () Bool)

(assert (=> b!5231042 (= e!3255427 ((_ map or) call!370001 call!370003))))

(assert (= (and d!1686522 c!903519) b!5231038))

(assert (= (and d!1686522 (not c!903519)) b!5231044))

(assert (= (and b!5231044 c!903520) b!5231042))

(assert (= (and b!5231044 (not c!903520)) b!5231036))

(assert (= (and b!5231036 res!2220501) b!5231041))

(assert (= (and b!5231036 c!903522) b!5231035))

(assert (= (and b!5231036 (not c!903522)) b!5231039))

(assert (= (and b!5231039 c!903518) b!5231037))

(assert (= (and b!5231039 (not c!903518)) b!5231043))

(assert (= (and b!5231043 c!903521) b!5231040))

(assert (= (and b!5231043 (not c!903521)) b!5231045))

(assert (= (or b!5231037 b!5231040) bm!370001))

(assert (= (or b!5231037 b!5231040) bm!369996))

(assert (= (or b!5231035 bm!370001) bm!369999))

(assert (= (or b!5231035 bm!369996) bm!369998))

(assert (= (or b!5231042 bm!369998) bm!370000))

(assert (= (or b!5231042 b!5231035) bm!369997))

(declare-fun m!6277096 () Bool)

(assert (=> bm!369997 m!6277096))

(declare-fun m!6277098 () Bool)

(assert (=> b!5231041 m!6277098))

(declare-fun m!6277100 () Bool)

(assert (=> b!5231038 m!6277100))

(declare-fun m!6277102 () Bool)

(assert (=> bm!369999 m!6277102))

(declare-fun m!6277104 () Bool)

(assert (=> bm!370000 m!6277104))

(assert (=> bm!369767 d!1686522))

(assert (=> b!5229805 d!1686110))

(assert (=> b!5229805 d!1686090))

(declare-fun bm!370002 () Bool)

(declare-fun call!370010 () (InoxSet Context!8410))

(declare-fun call!370011 () (InoxSet Context!8410))

(assert (=> bm!370002 (= call!370010 call!370011)))

(declare-fun b!5231074 () Bool)

(declare-fun e!3255442 () (InoxSet Context!8410))

(declare-fun call!370007 () (InoxSet Context!8410))

(assert (=> b!5231074 (= e!3255442 ((_ map or) call!370007 call!370011))))

(declare-fun b!5231075 () Bool)

(declare-fun c!903527 () Bool)

(declare-fun e!3255443 () Bool)

(assert (=> b!5231075 (= c!903527 e!3255443)))

(declare-fun res!2220502 () Bool)

(assert (=> b!5231075 (=> (not res!2220502) (not e!3255443))))

(assert (=> b!5231075 (= res!2220502 ((_ is Concat!23666) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))))))

(declare-fun e!3255440 () (InoxSet Context!8410))

(assert (=> b!5231075 (= e!3255440 e!3255442)))

(declare-fun b!5231076 () Bool)

(declare-fun e!3255441 () (InoxSet Context!8410))

(assert (=> b!5231076 (= e!3255441 call!370010)))

(declare-fun bm!370003 () Bool)

(declare-fun call!370012 () List!60762)

(declare-fun c!903525 () Bool)

(assert (=> bm!370003 (= call!370007 (derivationStepZipperDown!269 (ite c!903525 (regOne!30155 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (regOne!30154 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))))) (ite c!903525 (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705)) (Context!8411 call!370012)) (h!67088 s!2326)))))

(declare-fun bm!370004 () Bool)

(declare-fun call!370009 () (InoxSet Context!8410))

(assert (=> bm!370004 (= call!370011 call!370009)))

(declare-fun bm!370005 () Bool)

(declare-fun c!903523 () Bool)

(assert (=> bm!370005 (= call!370012 ($colon$colon!1294 (exprs!4705 (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705))) (ite (or c!903527 c!903523) (regTwo!30154 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))))))))

(declare-fun b!5231077 () Bool)

(declare-fun e!3255444 () (InoxSet Context!8410))

(assert (=> b!5231077 (= e!3255444 (store ((as const (Array Context!8410 Bool)) false) (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705)) true))))

(declare-fun b!5231078 () Bool)

(assert (=> b!5231078 (= e!3255442 e!3255441)))

(assert (=> b!5231078 (= c!903523 ((_ is Concat!23666) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))))))

(declare-fun b!5231079 () Bool)

(declare-fun e!3255439 () (InoxSet Context!8410))

(assert (=> b!5231079 (= e!3255439 call!370010)))

(declare-fun call!370008 () List!60762)

(declare-fun bm!370006 () Bool)

(assert (=> bm!370006 (= call!370009 (derivationStepZipperDown!269 (ite c!903525 (regTwo!30155 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (ite c!903527 (regTwo!30154 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (ite c!903523 (regOne!30154 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (reg!15150 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))))))) (ite (or c!903525 c!903527) (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705)) (Context!8411 call!370008)) (h!67088 s!2326)))))

(declare-fun b!5231080 () Bool)

(assert (=> b!5231080 (= e!3255443 (nullable!4990 (regOne!30154 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))))))))

(declare-fun c!903526 () Bool)

(declare-fun b!5231082 () Bool)

(assert (=> b!5231082 (= c!903526 ((_ is Star!14821) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))))))

(assert (=> b!5231082 (= e!3255441 e!3255439)))

(declare-fun b!5231083 () Bool)

(assert (=> b!5231083 (= e!3255444 e!3255440)))

(assert (=> b!5231083 (= c!903525 ((_ is Union!14821) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))))))

(declare-fun bm!370007 () Bool)

(assert (=> bm!370007 (= call!370008 call!370012)))

(declare-fun b!5231084 () Bool)

(assert (=> b!5231084 (= e!3255439 ((as const (Array Context!8410 Bool)) false))))

(declare-fun c!903524 () Bool)

(declare-fun d!1686524 () Bool)

(assert (=> d!1686524 (= c!903524 (and ((_ is ElementMatch!14821) (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (= (c!902967 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292))))))) (h!67088 s!2326))))))

(assert (=> d!1686524 (= (derivationStepZipperDown!269 (ite c!903053 (regTwo!30155 (regOne!30155 (regOne!30154 r!7292))) (ite c!903055 (regTwo!30154 (regOne!30155 (regOne!30154 r!7292))) (ite c!903051 (regOne!30154 (regOne!30155 (regOne!30154 r!7292))) (reg!15150 (regOne!30155 (regOne!30154 r!7292)))))) (ite (or c!903053 c!903055) lt!2144978 (Context!8411 call!369705)) (h!67088 s!2326)) e!3255444)))

(declare-fun b!5231081 () Bool)

(assert (=> b!5231081 (= e!3255440 ((_ map or) call!370007 call!370009))))

(assert (= (and d!1686524 c!903524) b!5231077))

(assert (= (and d!1686524 (not c!903524)) b!5231083))

(assert (= (and b!5231083 c!903525) b!5231081))

(assert (= (and b!5231083 (not c!903525)) b!5231075))

(assert (= (and b!5231075 res!2220502) b!5231080))

(assert (= (and b!5231075 c!903527) b!5231074))

(assert (= (and b!5231075 (not c!903527)) b!5231078))

(assert (= (and b!5231078 c!903523) b!5231076))

(assert (= (and b!5231078 (not c!903523)) b!5231082))

(assert (= (and b!5231082 c!903526) b!5231079))

(assert (= (and b!5231082 (not c!903526)) b!5231084))

(assert (= (or b!5231076 b!5231079) bm!370007))

(assert (= (or b!5231076 b!5231079) bm!370002))

(assert (= (or b!5231074 bm!370007) bm!370005))

(assert (= (or b!5231074 bm!370002) bm!370004))

(assert (= (or b!5231081 bm!370004) bm!370006))

(assert (= (or b!5231081 b!5231074) bm!370003))

(declare-fun m!6277108 () Bool)

(assert (=> bm!370003 m!6277108))

(declare-fun m!6277110 () Bool)

(assert (=> b!5231080 m!6277110))

(declare-fun m!6277112 () Bool)

(assert (=> b!5231077 m!6277112))

(declare-fun m!6277114 () Bool)

(assert (=> bm!370005 m!6277114))

(declare-fun m!6277116 () Bool)

(assert (=> bm!370006 m!6277116))

(assert (=> bm!369703 d!1686524))

(declare-fun bm!370008 () Bool)

(declare-fun call!370016 () (InoxSet Context!8410))

(declare-fun call!370017 () (InoxSet Context!8410))

(assert (=> bm!370008 (= call!370016 call!370017)))

(declare-fun b!5231110 () Bool)

(declare-fun e!3255458 () (InoxSet Context!8410))

(declare-fun call!370013 () (InoxSet Context!8410))

(assert (=> b!5231110 (= e!3255458 ((_ map or) call!370013 call!370017))))

(declare-fun b!5231111 () Bool)

(declare-fun c!903532 () Bool)

(declare-fun e!3255459 () Bool)

(assert (=> b!5231111 (= c!903532 e!3255459)))

(declare-fun res!2220503 () Bool)

(assert (=> b!5231111 (=> (not res!2220503) (not e!3255459))))

(assert (=> b!5231111 (= res!2220503 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144990))))))

(declare-fun e!3255456 () (InoxSet Context!8410))

(assert (=> b!5231111 (= e!3255456 e!3255458)))

(declare-fun b!5231112 () Bool)

(declare-fun e!3255457 () (InoxSet Context!8410))

(assert (=> b!5231112 (= e!3255457 call!370016)))

(declare-fun c!903530 () Bool)

(declare-fun call!370018 () List!60762)

(declare-fun bm!370009 () Bool)

(assert (=> bm!370009 (= call!370013 (derivationStepZipperDown!269 (ite c!903530 (regOne!30155 (h!67086 (exprs!4705 lt!2144990))) (regOne!30154 (h!67086 (exprs!4705 lt!2144990)))) (ite c!903530 (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (Context!8411 call!370018)) (h!67088 s!2326)))))

(declare-fun bm!370010 () Bool)

(declare-fun call!370015 () (InoxSet Context!8410))

(assert (=> bm!370010 (= call!370017 call!370015)))

(declare-fun c!903528 () Bool)

(declare-fun bm!370011 () Bool)

(assert (=> bm!370011 (= call!370018 ($colon$colon!1294 (exprs!4705 (Context!8411 (t!373939 (exprs!4705 lt!2144990)))) (ite (or c!903532 c!903528) (regTwo!30154 (h!67086 (exprs!4705 lt!2144990))) (h!67086 (exprs!4705 lt!2144990)))))))

(declare-fun b!5231115 () Bool)

(declare-fun e!3255460 () (InoxSet Context!8410))

(assert (=> b!5231115 (= e!3255460 (store ((as const (Array Context!8410 Bool)) false) (Context!8411 (t!373939 (exprs!4705 lt!2144990))) true))))

(declare-fun b!5231117 () Bool)

(assert (=> b!5231117 (= e!3255458 e!3255457)))

(assert (=> b!5231117 (= c!903528 ((_ is Concat!23666) (h!67086 (exprs!4705 lt!2144990))))))

(declare-fun b!5231119 () Bool)

(declare-fun e!3255455 () (InoxSet Context!8410))

(assert (=> b!5231119 (= e!3255455 call!370016)))

(declare-fun bm!370012 () Bool)

(declare-fun call!370014 () List!60762)

(assert (=> bm!370012 (= call!370015 (derivationStepZipperDown!269 (ite c!903530 (regTwo!30155 (h!67086 (exprs!4705 lt!2144990))) (ite c!903532 (regTwo!30154 (h!67086 (exprs!4705 lt!2144990))) (ite c!903528 (regOne!30154 (h!67086 (exprs!4705 lt!2144990))) (reg!15150 (h!67086 (exprs!4705 lt!2144990)))))) (ite (or c!903530 c!903532) (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (Context!8411 call!370014)) (h!67088 s!2326)))))

(declare-fun b!5231120 () Bool)

(assert (=> b!5231120 (= e!3255459 (nullable!4990 (regOne!30154 (h!67086 (exprs!4705 lt!2144990)))))))

(declare-fun b!5231122 () Bool)

(declare-fun c!903531 () Bool)

(assert (=> b!5231122 (= c!903531 ((_ is Star!14821) (h!67086 (exprs!4705 lt!2144990))))))

(assert (=> b!5231122 (= e!3255457 e!3255455)))

(declare-fun b!5231123 () Bool)

(assert (=> b!5231123 (= e!3255460 e!3255456)))

(assert (=> b!5231123 (= c!903530 ((_ is Union!14821) (h!67086 (exprs!4705 lt!2144990))))))

(declare-fun bm!370013 () Bool)

(assert (=> bm!370013 (= call!370014 call!370018)))

(declare-fun b!5231124 () Bool)

(assert (=> b!5231124 (= e!3255455 ((as const (Array Context!8410 Bool)) false))))

(declare-fun d!1686526 () Bool)

(declare-fun c!903529 () Bool)

(assert (=> d!1686526 (= c!903529 (and ((_ is ElementMatch!14821) (h!67086 (exprs!4705 lt!2144990))) (= (c!902967 (h!67086 (exprs!4705 lt!2144990))) (h!67088 s!2326))))))

(assert (=> d!1686526 (= (derivationStepZipperDown!269 (h!67086 (exprs!4705 lt!2144990)) (Context!8411 (t!373939 (exprs!4705 lt!2144990))) (h!67088 s!2326)) e!3255460)))

(declare-fun b!5231121 () Bool)

(assert (=> b!5231121 (= e!3255456 ((_ map or) call!370013 call!370015))))

(assert (= (and d!1686526 c!903529) b!5231115))

(assert (= (and d!1686526 (not c!903529)) b!5231123))

(assert (= (and b!5231123 c!903530) b!5231121))

(assert (= (and b!5231123 (not c!903530)) b!5231111))

(assert (= (and b!5231111 res!2220503) b!5231120))

(assert (= (and b!5231111 c!903532) b!5231110))

(assert (= (and b!5231111 (not c!903532)) b!5231117))

(assert (= (and b!5231117 c!903528) b!5231112))

(assert (= (and b!5231117 (not c!903528)) b!5231122))

(assert (= (and b!5231122 c!903531) b!5231119))

(assert (= (and b!5231122 (not c!903531)) b!5231124))

(assert (= (or b!5231112 b!5231119) bm!370013))

(assert (= (or b!5231112 b!5231119) bm!370008))

(assert (= (or b!5231110 bm!370013) bm!370011))

(assert (= (or b!5231110 bm!370008) bm!370010))

(assert (= (or b!5231121 bm!370010) bm!370012))

(assert (= (or b!5231121 b!5231110) bm!370009))

(declare-fun m!6277118 () Bool)

(assert (=> bm!370009 m!6277118))

(declare-fun m!6277120 () Bool)

(assert (=> b!5231120 m!6277120))

(declare-fun m!6277122 () Bool)

(assert (=> b!5231115 m!6277122))

(declare-fun m!6277124 () Bool)

(assert (=> bm!370011 m!6277124))

(declare-fun m!6277128 () Bool)

(assert (=> bm!370012 m!6277128))

(assert (=> bm!369766 d!1686526))

(declare-fun d!1686528 () Bool)

(declare-fun c!903533 () Bool)

(assert (=> d!1686528 (= c!903533 (isEmpty!32567 (tail!10304 s!2326)))))

(declare-fun e!3255468 () Bool)

(assert (=> d!1686528 (= (matchZipper!1065 (derivationStepZipper!1088 z!1189 (head!11207 s!2326)) (tail!10304 s!2326)) e!3255468)))

(declare-fun b!5231143 () Bool)

(assert (=> b!5231143 (= e!3255468 (nullableZipper!1244 (derivationStepZipper!1088 z!1189 (head!11207 s!2326))))))

(declare-fun b!5231144 () Bool)

(assert (=> b!5231144 (= e!3255468 (matchZipper!1065 (derivationStepZipper!1088 (derivationStepZipper!1088 z!1189 (head!11207 s!2326)) (head!11207 (tail!10304 s!2326))) (tail!10304 (tail!10304 s!2326))))))

(assert (= (and d!1686528 c!903533) b!5231143))

(assert (= (and d!1686528 (not c!903533)) b!5231144))

(assert (=> d!1686528 m!6275620))

(assert (=> d!1686528 m!6275712))

(assert (=> b!5231143 m!6275820))

(declare-fun m!6277130 () Bool)

(assert (=> b!5231143 m!6277130))

(assert (=> b!5231144 m!6275620))

(assert (=> b!5231144 m!6276146))

(assert (=> b!5231144 m!6275820))

(assert (=> b!5231144 m!6276146))

(declare-fun m!6277132 () Bool)

(assert (=> b!5231144 m!6277132))

(assert (=> b!5231144 m!6275620))

(assert (=> b!5231144 m!6276150))

(assert (=> b!5231144 m!6277132))

(assert (=> b!5231144 m!6276150))

(declare-fun m!6277134 () Bool)

(assert (=> b!5231144 m!6277134))

(assert (=> b!5229923 d!1686528))

(declare-fun bs!1214484 () Bool)

(declare-fun d!1686530 () Bool)

(assert (= bs!1214484 (and d!1686530 d!1686400)))

(declare-fun lambda!262788 () Int)

(assert (=> bs!1214484 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262770))))

(declare-fun bs!1214485 () Bool)

(assert (= bs!1214485 (and d!1686530 d!1686232)))

(assert (=> bs!1214485 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262749))))

(declare-fun bs!1214486 () Bool)

(assert (= bs!1214486 (and d!1686530 d!1686276)))

(assert (=> bs!1214486 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262754))))

(declare-fun bs!1214487 () Bool)

(assert (= bs!1214487 (and d!1686530 d!1686288)))

(assert (=> bs!1214487 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262755))))

(declare-fun bs!1214488 () Bool)

(assert (= bs!1214488 (and d!1686530 d!1686446)))

(assert (=> bs!1214488 (= lambda!262788 lambda!262778)))

(declare-fun bs!1214489 () Bool)

(assert (= bs!1214489 (and d!1686530 d!1686210)))

(assert (=> bs!1214489 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262748))))

(declare-fun bs!1214490 () Bool)

(assert (= bs!1214490 (and d!1686530 d!1686380)))

(assert (=> bs!1214490 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262768))))

(declare-fun bs!1214491 () Bool)

(assert (= bs!1214491 (and d!1686530 d!1686404)))

(assert (=> bs!1214491 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262772))))

(declare-fun bs!1214492 () Bool)

(assert (= bs!1214492 (and d!1686530 d!1686490)))

(assert (=> bs!1214492 (= (= (head!11207 s!2326) (head!11207 (t!373941 s!2326))) (= lambda!262788 lambda!262782))))

(declare-fun bs!1214493 () Bool)

(assert (= bs!1214493 (and d!1686530 b!5229203)))

(assert (=> bs!1214493 (= (= (head!11207 s!2326) (h!67088 s!2326)) (= lambda!262788 lambda!262644))))

(declare-fun bs!1214494 () Bool)

(assert (= bs!1214494 (and d!1686530 d!1686430)))

(assert (=> bs!1214494 (= lambda!262788 lambda!262775)))

(assert (=> d!1686530 true))

(assert (=> d!1686530 (= (derivationStepZipper!1088 z!1189 (head!11207 s!2326)) (flatMap!548 z!1189 lambda!262788))))

(declare-fun bs!1214495 () Bool)

(assert (= bs!1214495 d!1686530))

(declare-fun m!6277136 () Bool)

(assert (=> bs!1214495 m!6277136))

(assert (=> b!5229923 d!1686530))

(assert (=> b!5229923 d!1686088))

(assert (=> b!5229923 d!1686090))

(declare-fun bs!1214496 () Bool)

(declare-fun d!1686532 () Bool)

(assert (= bs!1214496 (and d!1686532 d!1686048)))

(declare-fun lambda!262789 () Int)

(assert (=> bs!1214496 (= lambda!262789 lambda!262724)))

(declare-fun bs!1214497 () Bool)

(assert (= bs!1214497 (and d!1686532 d!1685998)))

(assert (=> bs!1214497 (= lambda!262789 lambda!262716)))

(declare-fun bs!1214498 () Bool)

(assert (= bs!1214498 (and d!1686532 d!1686046)))

(assert (=> bs!1214498 (= lambda!262789 lambda!262723)))

(declare-fun bs!1214499 () Bool)

(assert (= bs!1214499 (and d!1686532 d!1686504)))

(assert (=> bs!1214499 (= lambda!262789 lambda!262784)))

(declare-fun bs!1214500 () Bool)

(assert (= bs!1214500 (and d!1686532 d!1686024)))

(assert (=> bs!1214500 (= lambda!262789 lambda!262720)))

(declare-fun bs!1214501 () Bool)

(assert (= bs!1214501 (and d!1686532 d!1686456)))

(assert (=> bs!1214501 (= lambda!262789 lambda!262780)))

(declare-fun bs!1214502 () Bool)

(assert (= bs!1214502 (and d!1686532 d!1686438)))

(assert (=> bs!1214502 (= lambda!262789 lambda!262776)))

(declare-fun bs!1214503 () Bool)

(assert (= bs!1214503 (and d!1686532 d!1686494)))

(assert (=> bs!1214503 (= lambda!262789 lambda!262783)))

(declare-fun bs!1214504 () Bool)

(assert (= bs!1214504 (and d!1686532 d!1686512)))

(assert (=> bs!1214504 (= lambda!262789 lambda!262786)))

(declare-fun bs!1214505 () Bool)

(assert (= bs!1214505 (and d!1686532 d!1686476)))

(assert (=> bs!1214505 (= lambda!262789 lambda!262781)))

(assert (=> d!1686532 (= (nullableZipper!1244 ((_ map or) lt!2144993 lt!2144967)) (exists!1976 ((_ map or) lt!2144993 lt!2144967) lambda!262789))))

(declare-fun bs!1214507 () Bool)

(assert (= bs!1214507 d!1686532))

(declare-fun m!6277138 () Bool)

(assert (=> bs!1214507 m!6277138))

(assert (=> b!5229814 d!1686532))

(declare-fun b!5231189 () Bool)

(declare-fun e!3255480 () Bool)

(declare-fun tp!1465778 () Bool)

(declare-fun tp!1465781 () Bool)

(assert (=> b!5231189 (= e!3255480 (and tp!1465778 tp!1465781))))

(declare-fun b!5231187 () Bool)

(declare-fun tp!1465779 () Bool)

(declare-fun tp!1465782 () Bool)

(assert (=> b!5231187 (= e!3255480 (and tp!1465779 tp!1465782))))

(declare-fun b!5231188 () Bool)

(declare-fun tp!1465780 () Bool)

(assert (=> b!5231188 (= e!3255480 tp!1465780)))

(assert (=> b!5229999 (= tp!1465550 e!3255480)))

(declare-fun b!5231186 () Bool)

(assert (=> b!5231186 (= e!3255480 tp_is_empty!38895)))

(assert (= (and b!5229999 ((_ is ElementMatch!14821) (regOne!30155 (regOne!30155 r!7292)))) b!5231186))

(assert (= (and b!5229999 ((_ is Concat!23666) (regOne!30155 (regOne!30155 r!7292)))) b!5231187))

(assert (= (and b!5229999 ((_ is Star!14821) (regOne!30155 (regOne!30155 r!7292)))) b!5231188))

(assert (= (and b!5229999 ((_ is Union!14821) (regOne!30155 (regOne!30155 r!7292)))) b!5231189))

(declare-fun b!5231193 () Bool)

(declare-fun e!3255481 () Bool)

(declare-fun tp!1465783 () Bool)

(declare-fun tp!1465786 () Bool)

(assert (=> b!5231193 (= e!3255481 (and tp!1465783 tp!1465786))))

(declare-fun b!5231191 () Bool)

(declare-fun tp!1465784 () Bool)

(declare-fun tp!1465787 () Bool)

(assert (=> b!5231191 (= e!3255481 (and tp!1465784 tp!1465787))))

(declare-fun b!5231192 () Bool)

(declare-fun tp!1465785 () Bool)

(assert (=> b!5231192 (= e!3255481 tp!1465785)))

(assert (=> b!5229999 (= tp!1465553 e!3255481)))

(declare-fun b!5231190 () Bool)

(assert (=> b!5231190 (= e!3255481 tp_is_empty!38895)))

(assert (= (and b!5229999 ((_ is ElementMatch!14821) (regTwo!30155 (regOne!30155 r!7292)))) b!5231190))

(assert (= (and b!5229999 ((_ is Concat!23666) (regTwo!30155 (regOne!30155 r!7292)))) b!5231191))

(assert (= (and b!5229999 ((_ is Star!14821) (regTwo!30155 (regOne!30155 r!7292)))) b!5231192))

(assert (= (and b!5229999 ((_ is Union!14821) (regTwo!30155 (regOne!30155 r!7292)))) b!5231193))

(declare-fun b!5231197 () Bool)

(declare-fun e!3255482 () Bool)

(declare-fun tp!1465788 () Bool)

(declare-fun tp!1465791 () Bool)

(assert (=> b!5231197 (= e!3255482 (and tp!1465788 tp!1465791))))

(declare-fun b!5231195 () Bool)

(declare-fun tp!1465789 () Bool)

(declare-fun tp!1465792 () Bool)

(assert (=> b!5231195 (= e!3255482 (and tp!1465789 tp!1465792))))

(declare-fun b!5231196 () Bool)

(declare-fun tp!1465790 () Bool)

(assert (=> b!5231196 (= e!3255482 tp!1465790)))

(assert (=> b!5229997 (= tp!1465551 e!3255482)))

(declare-fun b!5231194 () Bool)

(assert (=> b!5231194 (= e!3255482 tp_is_empty!38895)))

(assert (= (and b!5229997 ((_ is ElementMatch!14821) (regOne!30154 (regOne!30155 r!7292)))) b!5231194))

(assert (= (and b!5229997 ((_ is Concat!23666) (regOne!30154 (regOne!30155 r!7292)))) b!5231195))

(assert (= (and b!5229997 ((_ is Star!14821) (regOne!30154 (regOne!30155 r!7292)))) b!5231196))

(assert (= (and b!5229997 ((_ is Union!14821) (regOne!30154 (regOne!30155 r!7292)))) b!5231197))

(declare-fun b!5231201 () Bool)

(declare-fun e!3255483 () Bool)

(declare-fun tp!1465793 () Bool)

(declare-fun tp!1465796 () Bool)

(assert (=> b!5231201 (= e!3255483 (and tp!1465793 tp!1465796))))

(declare-fun b!5231199 () Bool)

(declare-fun tp!1465794 () Bool)

(declare-fun tp!1465797 () Bool)

(assert (=> b!5231199 (= e!3255483 (and tp!1465794 tp!1465797))))

(declare-fun b!5231200 () Bool)

(declare-fun tp!1465795 () Bool)

(assert (=> b!5231200 (= e!3255483 tp!1465795)))

(assert (=> b!5229997 (= tp!1465554 e!3255483)))

(declare-fun b!5231198 () Bool)

(assert (=> b!5231198 (= e!3255483 tp_is_empty!38895)))

(assert (= (and b!5229997 ((_ is ElementMatch!14821) (regTwo!30154 (regOne!30155 r!7292)))) b!5231198))

(assert (= (and b!5229997 ((_ is Concat!23666) (regTwo!30154 (regOne!30155 r!7292)))) b!5231199))

(assert (= (and b!5229997 ((_ is Star!14821) (regTwo!30154 (regOne!30155 r!7292)))) b!5231200))

(assert (= (and b!5229997 ((_ is Union!14821) (regTwo!30154 (regOne!30155 r!7292)))) b!5231201))

(declare-fun b!5231205 () Bool)

(declare-fun e!3255484 () Bool)

(declare-fun tp!1465798 () Bool)

(declare-fun tp!1465801 () Bool)

(assert (=> b!5231205 (= e!3255484 (and tp!1465798 tp!1465801))))

(declare-fun b!5231203 () Bool)

(declare-fun tp!1465799 () Bool)

(declare-fun tp!1465802 () Bool)

(assert (=> b!5231203 (= e!3255484 (and tp!1465799 tp!1465802))))

(declare-fun b!5231204 () Bool)

(declare-fun tp!1465800 () Bool)

(assert (=> b!5231204 (= e!3255484 tp!1465800)))

(assert (=> b!5229998 (= tp!1465552 e!3255484)))

(declare-fun b!5231202 () Bool)

(assert (=> b!5231202 (= e!3255484 tp_is_empty!38895)))

(assert (= (and b!5229998 ((_ is ElementMatch!14821) (reg!15150 (regOne!30155 r!7292)))) b!5231202))

(assert (= (and b!5229998 ((_ is Concat!23666) (reg!15150 (regOne!30155 r!7292)))) b!5231203))

(assert (= (and b!5229998 ((_ is Star!14821) (reg!15150 (regOne!30155 r!7292)))) b!5231204))

(assert (= (and b!5229998 ((_ is Union!14821) (reg!15150 (regOne!30155 r!7292)))) b!5231205))

(declare-fun b!5231206 () Bool)

(declare-fun e!3255485 () Bool)

(declare-fun tp!1465803 () Bool)

(declare-fun tp!1465804 () Bool)

(assert (=> b!5231206 (= e!3255485 (and tp!1465803 tp!1465804))))

(assert (=> b!5230028 (= tp!1465585 e!3255485)))

(assert (= (and b!5230028 ((_ is Cons!60638) (exprs!4705 (h!67087 (t!373940 zl!343))))) b!5231206))

(declare-fun b!5231210 () Bool)

(declare-fun e!3255486 () Bool)

(declare-fun tp!1465805 () Bool)

(declare-fun tp!1465808 () Bool)

(assert (=> b!5231210 (= e!3255486 (and tp!1465805 tp!1465808))))

(declare-fun b!5231208 () Bool)

(declare-fun tp!1465806 () Bool)

(declare-fun tp!1465809 () Bool)

(assert (=> b!5231208 (= e!3255486 (and tp!1465806 tp!1465809))))

(declare-fun b!5231209 () Bool)

(declare-fun tp!1465807 () Bool)

(assert (=> b!5231209 (= e!3255486 tp!1465807)))

(assert (=> b!5230012 (= tp!1465566 e!3255486)))

(declare-fun b!5231207 () Bool)

(assert (=> b!5231207 (= e!3255486 tp_is_empty!38895)))

(assert (= (and b!5230012 ((_ is ElementMatch!14821) (regOne!30155 (reg!15150 r!7292)))) b!5231207))

(assert (= (and b!5230012 ((_ is Concat!23666) (regOne!30155 (reg!15150 r!7292)))) b!5231208))

(assert (= (and b!5230012 ((_ is Star!14821) (regOne!30155 (reg!15150 r!7292)))) b!5231209))

(assert (= (and b!5230012 ((_ is Union!14821) (regOne!30155 (reg!15150 r!7292)))) b!5231210))

(declare-fun b!5231214 () Bool)

(declare-fun e!3255487 () Bool)

(declare-fun tp!1465810 () Bool)

(declare-fun tp!1465813 () Bool)

(assert (=> b!5231214 (= e!3255487 (and tp!1465810 tp!1465813))))

(declare-fun b!5231212 () Bool)

(declare-fun tp!1465811 () Bool)

(declare-fun tp!1465814 () Bool)

(assert (=> b!5231212 (= e!3255487 (and tp!1465811 tp!1465814))))

(declare-fun b!5231213 () Bool)

(declare-fun tp!1465812 () Bool)

(assert (=> b!5231213 (= e!3255487 tp!1465812)))

(assert (=> b!5230012 (= tp!1465569 e!3255487)))

(declare-fun b!5231211 () Bool)

(assert (=> b!5231211 (= e!3255487 tp_is_empty!38895)))

(assert (= (and b!5230012 ((_ is ElementMatch!14821) (regTwo!30155 (reg!15150 r!7292)))) b!5231211))

(assert (= (and b!5230012 ((_ is Concat!23666) (regTwo!30155 (reg!15150 r!7292)))) b!5231212))

(assert (= (and b!5230012 ((_ is Star!14821) (regTwo!30155 (reg!15150 r!7292)))) b!5231213))

(assert (= (and b!5230012 ((_ is Union!14821) (regTwo!30155 (reg!15150 r!7292)))) b!5231214))

(declare-fun b!5231216 () Bool)

(declare-fun e!3255489 () Bool)

(declare-fun tp!1465815 () Bool)

(assert (=> b!5231216 (= e!3255489 tp!1465815)))

(declare-fun tp!1465816 () Bool)

(declare-fun b!5231215 () Bool)

(declare-fun e!3255488 () Bool)

(assert (=> b!5231215 (= e!3255488 (and (inv!80299 (h!67087 (t!373940 (t!373940 zl!343)))) e!3255489 tp!1465816))))

(assert (=> b!5230027 (= tp!1465586 e!3255488)))

(assert (= b!5231215 b!5231216))

(assert (= (and b!5230027 ((_ is Cons!60639) (t!373940 (t!373940 zl!343)))) b!5231215))

(declare-fun m!6277150 () Bool)

(assert (=> b!5231215 m!6277150))

(declare-fun b!5231217 () Bool)

(declare-fun e!3255490 () Bool)

(declare-fun tp!1465817 () Bool)

(assert (=> b!5231217 (= e!3255490 (and tp_is_empty!38895 tp!1465817))))

(assert (=> b!5230034 (= tp!1465591 e!3255490)))

(assert (= (and b!5230034 ((_ is Cons!60640) (t!373941 (t!373941 s!2326)))) b!5231217))

(declare-fun b!5231221 () Bool)

(declare-fun e!3255491 () Bool)

(declare-fun tp!1465818 () Bool)

(declare-fun tp!1465821 () Bool)

(assert (=> b!5231221 (= e!3255491 (and tp!1465818 tp!1465821))))

(declare-fun b!5231219 () Bool)

(declare-fun tp!1465819 () Bool)

(declare-fun tp!1465822 () Bool)

(assert (=> b!5231219 (= e!3255491 (and tp!1465819 tp!1465822))))

(declare-fun b!5231220 () Bool)

(declare-fun tp!1465820 () Bool)

(assert (=> b!5231220 (= e!3255491 tp!1465820)))

(assert (=> b!5230016 (= tp!1465571 e!3255491)))

(declare-fun b!5231218 () Bool)

(assert (=> b!5231218 (= e!3255491 tp_is_empty!38895)))

(assert (= (and b!5230016 ((_ is ElementMatch!14821) (regOne!30155 (regOne!30154 r!7292)))) b!5231218))

(assert (= (and b!5230016 ((_ is Concat!23666) (regOne!30155 (regOne!30154 r!7292)))) b!5231219))

(assert (= (and b!5230016 ((_ is Star!14821) (regOne!30155 (regOne!30154 r!7292)))) b!5231220))

(assert (= (and b!5230016 ((_ is Union!14821) (regOne!30155 (regOne!30154 r!7292)))) b!5231221))

(declare-fun b!5231225 () Bool)

(declare-fun e!3255492 () Bool)

(declare-fun tp!1465823 () Bool)

(declare-fun tp!1465826 () Bool)

(assert (=> b!5231225 (= e!3255492 (and tp!1465823 tp!1465826))))

(declare-fun b!5231223 () Bool)

(declare-fun tp!1465824 () Bool)

(declare-fun tp!1465827 () Bool)

(assert (=> b!5231223 (= e!3255492 (and tp!1465824 tp!1465827))))

(declare-fun b!5231224 () Bool)

(declare-fun tp!1465825 () Bool)

(assert (=> b!5231224 (= e!3255492 tp!1465825)))

(assert (=> b!5230016 (= tp!1465574 e!3255492)))

(declare-fun b!5231222 () Bool)

(assert (=> b!5231222 (= e!3255492 tp_is_empty!38895)))

(assert (= (and b!5230016 ((_ is ElementMatch!14821) (regTwo!30155 (regOne!30154 r!7292)))) b!5231222))

(assert (= (and b!5230016 ((_ is Concat!23666) (regTwo!30155 (regOne!30154 r!7292)))) b!5231223))

(assert (= (and b!5230016 ((_ is Star!14821) (regTwo!30155 (regOne!30154 r!7292)))) b!5231224))

(assert (= (and b!5230016 ((_ is Union!14821) (regTwo!30155 (regOne!30154 r!7292)))) b!5231225))

(declare-fun b!5231229 () Bool)

(declare-fun e!3255493 () Bool)

(declare-fun tp!1465828 () Bool)

(declare-fun tp!1465831 () Bool)

(assert (=> b!5231229 (= e!3255493 (and tp!1465828 tp!1465831))))

(declare-fun b!5231227 () Bool)

(declare-fun tp!1465829 () Bool)

(declare-fun tp!1465832 () Bool)

(assert (=> b!5231227 (= e!3255493 (and tp!1465829 tp!1465832))))

(declare-fun b!5231228 () Bool)

(declare-fun tp!1465830 () Bool)

(assert (=> b!5231228 (= e!3255493 tp!1465830)))

(assert (=> b!5230014 (= tp!1465572 e!3255493)))

(declare-fun b!5231226 () Bool)

(assert (=> b!5231226 (= e!3255493 tp_is_empty!38895)))

(assert (= (and b!5230014 ((_ is ElementMatch!14821) (regOne!30154 (regOne!30154 r!7292)))) b!5231226))

(assert (= (and b!5230014 ((_ is Concat!23666) (regOne!30154 (regOne!30154 r!7292)))) b!5231227))

(assert (= (and b!5230014 ((_ is Star!14821) (regOne!30154 (regOne!30154 r!7292)))) b!5231228))

(assert (= (and b!5230014 ((_ is Union!14821) (regOne!30154 (regOne!30154 r!7292)))) b!5231229))

(declare-fun b!5231233 () Bool)

(declare-fun e!3255494 () Bool)

(declare-fun tp!1465833 () Bool)

(declare-fun tp!1465836 () Bool)

(assert (=> b!5231233 (= e!3255494 (and tp!1465833 tp!1465836))))

(declare-fun b!5231231 () Bool)

(declare-fun tp!1465834 () Bool)

(declare-fun tp!1465837 () Bool)

(assert (=> b!5231231 (= e!3255494 (and tp!1465834 tp!1465837))))

(declare-fun b!5231232 () Bool)

(declare-fun tp!1465835 () Bool)

(assert (=> b!5231232 (= e!3255494 tp!1465835)))

(assert (=> b!5230014 (= tp!1465575 e!3255494)))

(declare-fun b!5231230 () Bool)

(assert (=> b!5231230 (= e!3255494 tp_is_empty!38895)))

(assert (= (and b!5230014 ((_ is ElementMatch!14821) (regTwo!30154 (regOne!30154 r!7292)))) b!5231230))

(assert (= (and b!5230014 ((_ is Concat!23666) (regTwo!30154 (regOne!30154 r!7292)))) b!5231231))

(assert (= (and b!5230014 ((_ is Star!14821) (regTwo!30154 (regOne!30154 r!7292)))) b!5231232))

(assert (= (and b!5230014 ((_ is Union!14821) (regTwo!30154 (regOne!30154 r!7292)))) b!5231233))

(declare-fun b!5231237 () Bool)

(declare-fun e!3255495 () Bool)

(declare-fun tp!1465838 () Bool)

(declare-fun tp!1465841 () Bool)

(assert (=> b!5231237 (= e!3255495 (and tp!1465838 tp!1465841))))

(declare-fun b!5231235 () Bool)

(declare-fun tp!1465839 () Bool)

(declare-fun tp!1465842 () Bool)

(assert (=> b!5231235 (= e!3255495 (and tp!1465839 tp!1465842))))

(declare-fun b!5231236 () Bool)

(declare-fun tp!1465840 () Bool)

(assert (=> b!5231236 (= e!3255495 tp!1465840)))

(assert (=> b!5230015 (= tp!1465573 e!3255495)))

(declare-fun b!5231234 () Bool)

(assert (=> b!5231234 (= e!3255495 tp_is_empty!38895)))

(assert (= (and b!5230015 ((_ is ElementMatch!14821) (reg!15150 (regOne!30154 r!7292)))) b!5231234))

(assert (= (and b!5230015 ((_ is Concat!23666) (reg!15150 (regOne!30154 r!7292)))) b!5231235))

(assert (= (and b!5230015 ((_ is Star!14821) (reg!15150 (regOne!30154 r!7292)))) b!5231236))

(assert (= (and b!5230015 ((_ is Union!14821) (reg!15150 (regOne!30154 r!7292)))) b!5231237))

(declare-fun b!5231241 () Bool)

(declare-fun e!3255496 () Bool)

(declare-fun tp!1465843 () Bool)

(declare-fun tp!1465846 () Bool)

(assert (=> b!5231241 (= e!3255496 (and tp!1465843 tp!1465846))))

(declare-fun b!5231239 () Bool)

(declare-fun tp!1465844 () Bool)

(declare-fun tp!1465847 () Bool)

(assert (=> b!5231239 (= e!3255496 (and tp!1465844 tp!1465847))))

(declare-fun b!5231240 () Bool)

(declare-fun tp!1465845 () Bool)

(assert (=> b!5231240 (= e!3255496 tp!1465845)))

(assert (=> b!5230029 (= tp!1465587 e!3255496)))

(declare-fun b!5231238 () Bool)

(assert (=> b!5231238 (= e!3255496 tp_is_empty!38895)))

(assert (= (and b!5230029 ((_ is ElementMatch!14821) (h!67086 (exprs!4705 setElem!33299)))) b!5231238))

(assert (= (and b!5230029 ((_ is Concat!23666) (h!67086 (exprs!4705 setElem!33299)))) b!5231239))

(assert (= (and b!5230029 ((_ is Star!14821) (h!67086 (exprs!4705 setElem!33299)))) b!5231240))

(assert (= (and b!5230029 ((_ is Union!14821) (h!67086 (exprs!4705 setElem!33299)))) b!5231241))

(declare-fun b!5231242 () Bool)

(declare-fun e!3255497 () Bool)

(declare-fun tp!1465848 () Bool)

(declare-fun tp!1465849 () Bool)

(assert (=> b!5231242 (= e!3255497 (and tp!1465848 tp!1465849))))

(assert (=> b!5230029 (= tp!1465588 e!3255497)))

(assert (= (and b!5230029 ((_ is Cons!60638) (t!373939 (exprs!4705 setElem!33299)))) b!5231242))

(declare-fun condSetEmpty!33317 () Bool)

(assert (=> setNonEmpty!33305 (= condSetEmpty!33317 (= setRest!33305 ((as const (Array Context!8410 Bool)) false)))))

(declare-fun setRes!33317 () Bool)

(assert (=> setNonEmpty!33305 (= tp!1465597 setRes!33317)))

(declare-fun setIsEmpty!33317 () Bool)

(assert (=> setIsEmpty!33317 setRes!33317))

(declare-fun e!3255498 () Bool)

(declare-fun setElem!33317 () Context!8410)

(declare-fun tp!1465851 () Bool)

(declare-fun setNonEmpty!33317 () Bool)

(assert (=> setNonEmpty!33317 (= setRes!33317 (and tp!1465851 (inv!80299 setElem!33317) e!3255498))))

(declare-fun setRest!33317 () (InoxSet Context!8410))

(assert (=> setNonEmpty!33317 (= setRest!33305 ((_ map or) (store ((as const (Array Context!8410 Bool)) false) setElem!33317 true) setRest!33317))))

(declare-fun b!5231243 () Bool)

(declare-fun tp!1465850 () Bool)

(assert (=> b!5231243 (= e!3255498 tp!1465850)))

(assert (= (and setNonEmpty!33305 condSetEmpty!33317) setIsEmpty!33317))

(assert (= (and setNonEmpty!33305 (not condSetEmpty!33317)) setNonEmpty!33317))

(assert (= setNonEmpty!33317 b!5231243))

(declare-fun m!6277152 () Bool)

(assert (=> setNonEmpty!33317 m!6277152))

(declare-fun b!5231247 () Bool)

(declare-fun e!3255499 () Bool)

(declare-fun tp!1465852 () Bool)

(declare-fun tp!1465855 () Bool)

(assert (=> b!5231247 (= e!3255499 (and tp!1465852 tp!1465855))))

(declare-fun b!5231245 () Bool)

(declare-fun tp!1465853 () Bool)

(declare-fun tp!1465856 () Bool)

(assert (=> b!5231245 (= e!3255499 (and tp!1465853 tp!1465856))))

(declare-fun b!5231246 () Bool)

(declare-fun tp!1465854 () Bool)

(assert (=> b!5231246 (= e!3255499 tp!1465854)))

(assert (=> b!5230003 (= tp!1465555 e!3255499)))

(declare-fun b!5231244 () Bool)

(assert (=> b!5231244 (= e!3255499 tp_is_empty!38895)))

(assert (= (and b!5230003 ((_ is ElementMatch!14821) (regOne!30155 (regTwo!30155 r!7292)))) b!5231244))

(assert (= (and b!5230003 ((_ is Concat!23666) (regOne!30155 (regTwo!30155 r!7292)))) b!5231245))

(assert (= (and b!5230003 ((_ is Star!14821) (regOne!30155 (regTwo!30155 r!7292)))) b!5231246))

(assert (= (and b!5230003 ((_ is Union!14821) (regOne!30155 (regTwo!30155 r!7292)))) b!5231247))

(declare-fun b!5231251 () Bool)

(declare-fun e!3255500 () Bool)

(declare-fun tp!1465857 () Bool)

(declare-fun tp!1465860 () Bool)

(assert (=> b!5231251 (= e!3255500 (and tp!1465857 tp!1465860))))

(declare-fun b!5231249 () Bool)

(declare-fun tp!1465858 () Bool)

(declare-fun tp!1465861 () Bool)

(assert (=> b!5231249 (= e!3255500 (and tp!1465858 tp!1465861))))

(declare-fun b!5231250 () Bool)

(declare-fun tp!1465859 () Bool)

(assert (=> b!5231250 (= e!3255500 tp!1465859)))

(assert (=> b!5230003 (= tp!1465558 e!3255500)))

(declare-fun b!5231248 () Bool)

(assert (=> b!5231248 (= e!3255500 tp_is_empty!38895)))

(assert (= (and b!5230003 ((_ is ElementMatch!14821) (regTwo!30155 (regTwo!30155 r!7292)))) b!5231248))

(assert (= (and b!5230003 ((_ is Concat!23666) (regTwo!30155 (regTwo!30155 r!7292)))) b!5231249))

(assert (= (and b!5230003 ((_ is Star!14821) (regTwo!30155 (regTwo!30155 r!7292)))) b!5231250))

(assert (= (and b!5230003 ((_ is Union!14821) (regTwo!30155 (regTwo!30155 r!7292)))) b!5231251))

(declare-fun b!5231252 () Bool)

(declare-fun e!3255501 () Bool)

(declare-fun tp!1465862 () Bool)

(declare-fun tp!1465863 () Bool)

(assert (=> b!5231252 (= e!3255501 (and tp!1465862 tp!1465863))))

(assert (=> b!5230039 (= tp!1465596 e!3255501)))

(assert (= (and b!5230039 ((_ is Cons!60638) (exprs!4705 setElem!33305))) b!5231252))

(declare-fun b!5231256 () Bool)

(declare-fun e!3255502 () Bool)

(declare-fun tp!1465864 () Bool)

(declare-fun tp!1465867 () Bool)

(assert (=> b!5231256 (= e!3255502 (and tp!1465864 tp!1465867))))

(declare-fun b!5231254 () Bool)

(declare-fun tp!1465865 () Bool)

(declare-fun tp!1465868 () Bool)

(assert (=> b!5231254 (= e!3255502 (and tp!1465865 tp!1465868))))

(declare-fun b!5231255 () Bool)

(declare-fun tp!1465866 () Bool)

(assert (=> b!5231255 (= e!3255502 tp!1465866)))

(assert (=> b!5230002 (= tp!1465557 e!3255502)))

(declare-fun b!5231253 () Bool)

(assert (=> b!5231253 (= e!3255502 tp_is_empty!38895)))

(assert (= (and b!5230002 ((_ is ElementMatch!14821) (reg!15150 (regTwo!30155 r!7292)))) b!5231253))

(assert (= (and b!5230002 ((_ is Concat!23666) (reg!15150 (regTwo!30155 r!7292)))) b!5231254))

(assert (= (and b!5230002 ((_ is Star!14821) (reg!15150 (regTwo!30155 r!7292)))) b!5231255))

(assert (= (and b!5230002 ((_ is Union!14821) (reg!15150 (regTwo!30155 r!7292)))) b!5231256))

(declare-fun b!5231260 () Bool)

(declare-fun e!3255503 () Bool)

(declare-fun tp!1465869 () Bool)

(declare-fun tp!1465872 () Bool)

(assert (=> b!5231260 (= e!3255503 (and tp!1465869 tp!1465872))))

(declare-fun b!5231258 () Bool)

(declare-fun tp!1465870 () Bool)

(declare-fun tp!1465873 () Bool)

(assert (=> b!5231258 (= e!3255503 (and tp!1465870 tp!1465873))))

(declare-fun b!5231259 () Bool)

(declare-fun tp!1465871 () Bool)

(assert (=> b!5231259 (= e!3255503 tp!1465871)))

(assert (=> b!5230001 (= tp!1465556 e!3255503)))

(declare-fun b!5231257 () Bool)

(assert (=> b!5231257 (= e!3255503 tp_is_empty!38895)))

(assert (= (and b!5230001 ((_ is ElementMatch!14821) (regOne!30154 (regTwo!30155 r!7292)))) b!5231257))

(assert (= (and b!5230001 ((_ is Concat!23666) (regOne!30154 (regTwo!30155 r!7292)))) b!5231258))

(assert (= (and b!5230001 ((_ is Star!14821) (regOne!30154 (regTwo!30155 r!7292)))) b!5231259))

(assert (= (and b!5230001 ((_ is Union!14821) (regOne!30154 (regTwo!30155 r!7292)))) b!5231260))

(declare-fun b!5231264 () Bool)

(declare-fun e!3255504 () Bool)

(declare-fun tp!1465874 () Bool)

(declare-fun tp!1465877 () Bool)

(assert (=> b!5231264 (= e!3255504 (and tp!1465874 tp!1465877))))

(declare-fun b!5231262 () Bool)

(declare-fun tp!1465875 () Bool)

(declare-fun tp!1465878 () Bool)

(assert (=> b!5231262 (= e!3255504 (and tp!1465875 tp!1465878))))

(declare-fun b!5231263 () Bool)

(declare-fun tp!1465876 () Bool)

(assert (=> b!5231263 (= e!3255504 tp!1465876)))

(assert (=> b!5230001 (= tp!1465559 e!3255504)))

(declare-fun b!5231261 () Bool)

(assert (=> b!5231261 (= e!3255504 tp_is_empty!38895)))

(assert (= (and b!5230001 ((_ is ElementMatch!14821) (regTwo!30154 (regTwo!30155 r!7292)))) b!5231261))

(assert (= (and b!5230001 ((_ is Concat!23666) (regTwo!30154 (regTwo!30155 r!7292)))) b!5231262))

(assert (= (and b!5230001 ((_ is Star!14821) (regTwo!30154 (regTwo!30155 r!7292)))) b!5231263))

(assert (= (and b!5230001 ((_ is Union!14821) (regTwo!30154 (regTwo!30155 r!7292)))) b!5231264))

(declare-fun b!5231268 () Bool)

(declare-fun e!3255505 () Bool)

(declare-fun tp!1465879 () Bool)

(declare-fun tp!1465882 () Bool)

(assert (=> b!5231268 (= e!3255505 (and tp!1465879 tp!1465882))))

(declare-fun b!5231266 () Bool)

(declare-fun tp!1465880 () Bool)

(declare-fun tp!1465883 () Bool)

(assert (=> b!5231266 (= e!3255505 (and tp!1465880 tp!1465883))))

(declare-fun b!5231267 () Bool)

(declare-fun tp!1465881 () Bool)

(assert (=> b!5231267 (= e!3255505 tp!1465881)))

(assert (=> b!5230008 (= tp!1465564 e!3255505)))

(declare-fun b!5231265 () Bool)

(assert (=> b!5231265 (= e!3255505 tp_is_empty!38895)))

(assert (= (and b!5230008 ((_ is ElementMatch!14821) (h!67086 (exprs!4705 (h!67087 zl!343))))) b!5231265))

(assert (= (and b!5230008 ((_ is Concat!23666) (h!67086 (exprs!4705 (h!67087 zl!343))))) b!5231266))

(assert (= (and b!5230008 ((_ is Star!14821) (h!67086 (exprs!4705 (h!67087 zl!343))))) b!5231267))

(assert (= (and b!5230008 ((_ is Union!14821) (h!67086 (exprs!4705 (h!67087 zl!343))))) b!5231268))

(declare-fun b!5231269 () Bool)

(declare-fun e!3255506 () Bool)

(declare-fun tp!1465884 () Bool)

(declare-fun tp!1465885 () Bool)

(assert (=> b!5231269 (= e!3255506 (and tp!1465884 tp!1465885))))

(assert (=> b!5230008 (= tp!1465565 e!3255506)))

(assert (= (and b!5230008 ((_ is Cons!60638) (t!373939 (exprs!4705 (h!67087 zl!343))))) b!5231269))

(declare-fun b!5231273 () Bool)

(declare-fun e!3255507 () Bool)

(declare-fun tp!1465886 () Bool)

(declare-fun tp!1465889 () Bool)

(assert (=> b!5231273 (= e!3255507 (and tp!1465886 tp!1465889))))

(declare-fun b!5231271 () Bool)

(declare-fun tp!1465887 () Bool)

(declare-fun tp!1465890 () Bool)

(assert (=> b!5231271 (= e!3255507 (and tp!1465887 tp!1465890))))

(declare-fun b!5231272 () Bool)

(declare-fun tp!1465888 () Bool)

(assert (=> b!5231272 (= e!3255507 tp!1465888)))

(assert (=> b!5230020 (= tp!1465576 e!3255507)))

(declare-fun b!5231270 () Bool)

(assert (=> b!5231270 (= e!3255507 tp_is_empty!38895)))

(assert (= (and b!5230020 ((_ is ElementMatch!14821) (regOne!30155 (regTwo!30154 r!7292)))) b!5231270))

(assert (= (and b!5230020 ((_ is Concat!23666) (regOne!30155 (regTwo!30154 r!7292)))) b!5231271))

(assert (= (and b!5230020 ((_ is Star!14821) (regOne!30155 (regTwo!30154 r!7292)))) b!5231272))

(assert (= (and b!5230020 ((_ is Union!14821) (regOne!30155 (regTwo!30154 r!7292)))) b!5231273))

(declare-fun b!5231277 () Bool)

(declare-fun e!3255508 () Bool)

(declare-fun tp!1465891 () Bool)

(declare-fun tp!1465894 () Bool)

(assert (=> b!5231277 (= e!3255508 (and tp!1465891 tp!1465894))))

(declare-fun b!5231275 () Bool)

(declare-fun tp!1465892 () Bool)

(declare-fun tp!1465895 () Bool)

(assert (=> b!5231275 (= e!3255508 (and tp!1465892 tp!1465895))))

(declare-fun b!5231276 () Bool)

(declare-fun tp!1465893 () Bool)

(assert (=> b!5231276 (= e!3255508 tp!1465893)))

(assert (=> b!5230020 (= tp!1465579 e!3255508)))

(declare-fun b!5231274 () Bool)

(assert (=> b!5231274 (= e!3255508 tp_is_empty!38895)))

(assert (= (and b!5230020 ((_ is ElementMatch!14821) (regTwo!30155 (regTwo!30154 r!7292)))) b!5231274))

(assert (= (and b!5230020 ((_ is Concat!23666) (regTwo!30155 (regTwo!30154 r!7292)))) b!5231275))

(assert (= (and b!5230020 ((_ is Star!14821) (regTwo!30155 (regTwo!30154 r!7292)))) b!5231276))

(assert (= (and b!5230020 ((_ is Union!14821) (regTwo!30155 (regTwo!30154 r!7292)))) b!5231277))

(declare-fun b!5231281 () Bool)

(declare-fun e!3255509 () Bool)

(declare-fun tp!1465896 () Bool)

(declare-fun tp!1465899 () Bool)

(assert (=> b!5231281 (= e!3255509 (and tp!1465896 tp!1465899))))

(declare-fun b!5231279 () Bool)

(declare-fun tp!1465897 () Bool)

(declare-fun tp!1465900 () Bool)

(assert (=> b!5231279 (= e!3255509 (and tp!1465897 tp!1465900))))

(declare-fun b!5231280 () Bool)

(declare-fun tp!1465898 () Bool)

(assert (=> b!5231280 (= e!3255509 tp!1465898)))

(assert (=> b!5230011 (= tp!1465568 e!3255509)))

(declare-fun b!5231278 () Bool)

(assert (=> b!5231278 (= e!3255509 tp_is_empty!38895)))

(assert (= (and b!5230011 ((_ is ElementMatch!14821) (reg!15150 (reg!15150 r!7292)))) b!5231278))

(assert (= (and b!5230011 ((_ is Concat!23666) (reg!15150 (reg!15150 r!7292)))) b!5231279))

(assert (= (and b!5230011 ((_ is Star!14821) (reg!15150 (reg!15150 r!7292)))) b!5231280))

(assert (= (and b!5230011 ((_ is Union!14821) (reg!15150 (reg!15150 r!7292)))) b!5231281))

(declare-fun b!5231285 () Bool)

(declare-fun e!3255510 () Bool)

(declare-fun tp!1465901 () Bool)

(declare-fun tp!1465904 () Bool)

(assert (=> b!5231285 (= e!3255510 (and tp!1465901 tp!1465904))))

(declare-fun b!5231283 () Bool)

(declare-fun tp!1465902 () Bool)

(declare-fun tp!1465905 () Bool)

(assert (=> b!5231283 (= e!3255510 (and tp!1465902 tp!1465905))))

(declare-fun b!5231284 () Bool)

(declare-fun tp!1465903 () Bool)

(assert (=> b!5231284 (= e!3255510 tp!1465903)))

(assert (=> b!5230019 (= tp!1465578 e!3255510)))

(declare-fun b!5231282 () Bool)

(assert (=> b!5231282 (= e!3255510 tp_is_empty!38895)))

(assert (= (and b!5230019 ((_ is ElementMatch!14821) (reg!15150 (regTwo!30154 r!7292)))) b!5231282))

(assert (= (and b!5230019 ((_ is Concat!23666) (reg!15150 (regTwo!30154 r!7292)))) b!5231283))

(assert (= (and b!5230019 ((_ is Star!14821) (reg!15150 (regTwo!30154 r!7292)))) b!5231284))

(assert (= (and b!5230019 ((_ is Union!14821) (reg!15150 (regTwo!30154 r!7292)))) b!5231285))

(declare-fun b!5231289 () Bool)

(declare-fun e!3255511 () Bool)

(declare-fun tp!1465906 () Bool)

(declare-fun tp!1465909 () Bool)

(assert (=> b!5231289 (= e!3255511 (and tp!1465906 tp!1465909))))

(declare-fun b!5231287 () Bool)

(declare-fun tp!1465907 () Bool)

(declare-fun tp!1465910 () Bool)

(assert (=> b!5231287 (= e!3255511 (and tp!1465907 tp!1465910))))

(declare-fun b!5231288 () Bool)

(declare-fun tp!1465908 () Bool)

(assert (=> b!5231288 (= e!3255511 tp!1465908)))

(assert (=> b!5230010 (= tp!1465567 e!3255511)))

(declare-fun b!5231286 () Bool)

(assert (=> b!5231286 (= e!3255511 tp_is_empty!38895)))

(assert (= (and b!5230010 ((_ is ElementMatch!14821) (regOne!30154 (reg!15150 r!7292)))) b!5231286))

(assert (= (and b!5230010 ((_ is Concat!23666) (regOne!30154 (reg!15150 r!7292)))) b!5231287))

(assert (= (and b!5230010 ((_ is Star!14821) (regOne!30154 (reg!15150 r!7292)))) b!5231288))

(assert (= (and b!5230010 ((_ is Union!14821) (regOne!30154 (reg!15150 r!7292)))) b!5231289))

(declare-fun b!5231293 () Bool)

(declare-fun e!3255512 () Bool)

(declare-fun tp!1465911 () Bool)

(declare-fun tp!1465914 () Bool)

(assert (=> b!5231293 (= e!3255512 (and tp!1465911 tp!1465914))))

(declare-fun b!5231291 () Bool)

(declare-fun tp!1465912 () Bool)

(declare-fun tp!1465915 () Bool)

(assert (=> b!5231291 (= e!3255512 (and tp!1465912 tp!1465915))))

(declare-fun b!5231292 () Bool)

(declare-fun tp!1465913 () Bool)

(assert (=> b!5231292 (= e!3255512 tp!1465913)))

(assert (=> b!5230010 (= tp!1465570 e!3255512)))

(declare-fun b!5231290 () Bool)

(assert (=> b!5231290 (= e!3255512 tp_is_empty!38895)))

(assert (= (and b!5230010 ((_ is ElementMatch!14821) (regTwo!30154 (reg!15150 r!7292)))) b!5231290))

(assert (= (and b!5230010 ((_ is Concat!23666) (regTwo!30154 (reg!15150 r!7292)))) b!5231291))

(assert (= (and b!5230010 ((_ is Star!14821) (regTwo!30154 (reg!15150 r!7292)))) b!5231292))

(assert (= (and b!5230010 ((_ is Union!14821) (regTwo!30154 (reg!15150 r!7292)))) b!5231293))

(declare-fun b!5231297 () Bool)

(declare-fun e!3255513 () Bool)

(declare-fun tp!1465916 () Bool)

(declare-fun tp!1465919 () Bool)

(assert (=> b!5231297 (= e!3255513 (and tp!1465916 tp!1465919))))

(declare-fun b!5231295 () Bool)

(declare-fun tp!1465917 () Bool)

(declare-fun tp!1465920 () Bool)

(assert (=> b!5231295 (= e!3255513 (and tp!1465917 tp!1465920))))

(declare-fun b!5231296 () Bool)

(declare-fun tp!1465918 () Bool)

(assert (=> b!5231296 (= e!3255513 tp!1465918)))

(assert (=> b!5230018 (= tp!1465577 e!3255513)))

(declare-fun b!5231294 () Bool)

(assert (=> b!5231294 (= e!3255513 tp_is_empty!38895)))

(assert (= (and b!5230018 ((_ is ElementMatch!14821) (regOne!30154 (regTwo!30154 r!7292)))) b!5231294))

(assert (= (and b!5230018 ((_ is Concat!23666) (regOne!30154 (regTwo!30154 r!7292)))) b!5231295))

(assert (= (and b!5230018 ((_ is Star!14821) (regOne!30154 (regTwo!30154 r!7292)))) b!5231296))

(assert (= (and b!5230018 ((_ is Union!14821) (regOne!30154 (regTwo!30154 r!7292)))) b!5231297))

(declare-fun b!5231301 () Bool)

(declare-fun e!3255514 () Bool)

(declare-fun tp!1465921 () Bool)

(declare-fun tp!1465924 () Bool)

(assert (=> b!5231301 (= e!3255514 (and tp!1465921 tp!1465924))))

(declare-fun b!5231299 () Bool)

(declare-fun tp!1465922 () Bool)

(declare-fun tp!1465925 () Bool)

(assert (=> b!5231299 (= e!3255514 (and tp!1465922 tp!1465925))))

(declare-fun b!5231300 () Bool)

(declare-fun tp!1465923 () Bool)

(assert (=> b!5231300 (= e!3255514 tp!1465923)))

(assert (=> b!5230018 (= tp!1465580 e!3255514)))

(declare-fun b!5231298 () Bool)

(assert (=> b!5231298 (= e!3255514 tp_is_empty!38895)))

(assert (= (and b!5230018 ((_ is ElementMatch!14821) (regTwo!30154 (regTwo!30154 r!7292)))) b!5231298))

(assert (= (and b!5230018 ((_ is Concat!23666) (regTwo!30154 (regTwo!30154 r!7292)))) b!5231299))

(assert (= (and b!5230018 ((_ is Star!14821) (regTwo!30154 (regTwo!30154 r!7292)))) b!5231300))

(assert (= (and b!5230018 ((_ is Union!14821) (regTwo!30154 (regTwo!30154 r!7292)))) b!5231301))

(declare-fun b_lambda!202259 () Bool)

(assert (= b_lambda!202211 (or b!5229203 b_lambda!202259)))

(assert (=> d!1686050 d!1685944))

(declare-fun b_lambda!202261 () Bool)

(assert (= b_lambda!202215 (or d!1685816 b_lambda!202261)))

(declare-fun bs!1214513 () Bool)

(declare-fun d!1686546 () Bool)

(assert (= bs!1214513 (and d!1686546 d!1685816)))

(assert (=> bs!1214513 (= (dynLambda!23964 lambda!262672 (h!67086 (exprs!4705 (h!67087 zl!343)))) (validRegex!6557 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(declare-fun m!6277154 () Bool)

(assert (=> bs!1214513 m!6277154))

(assert (=> b!5230327 d!1686546))

(declare-fun b_lambda!202263 () Bool)

(assert (= b_lambda!202209 (or d!1685930 b_lambda!202263)))

(declare-fun bs!1214514 () Bool)

(declare-fun d!1686548 () Bool)

(assert (= bs!1214514 (and d!1686548 d!1685930)))

(assert (=> bs!1214514 (= (dynLambda!23964 lambda!262700 (h!67086 (exprs!4705 (h!67087 zl!343)))) (validRegex!6557 (h!67086 (exprs!4705 (h!67087 zl!343)))))))

(assert (=> bs!1214514 m!6277154))

(assert (=> b!5230173 d!1686548))

(declare-fun b_lambda!202265 () Bool)

(assert (= b_lambda!202239 (or b!5229203 b_lambda!202265)))

(assert (=> d!1686468 d!1685940))

(declare-fun b_lambda!202267 () Bool)

(assert (= b_lambda!202227 (or b!5229197 b_lambda!202267)))

(declare-fun bs!1214515 () Bool)

(declare-fun d!1686550 () Bool)

(assert (= bs!1214515 (and d!1686550 b!5229197)))

(assert (=> bs!1214515 (= (dynLambda!23964 lambda!262645 (h!67086 (t!373939 lt!2144994))) (validRegex!6557 (h!67086 (t!373939 lt!2144994))))))

(declare-fun m!6277156 () Bool)

(assert (=> bs!1214515 m!6277156))

(assert (=> b!5230679 d!1686550))

(declare-fun b_lambda!202269 () Bool)

(assert (= b_lambda!202207 (or d!1685936 b_lambda!202269)))

(declare-fun bs!1214516 () Bool)

(declare-fun d!1686552 () Bool)

(assert (= bs!1214516 (and d!1686552 d!1685936)))

(assert (=> bs!1214516 (= (dynLambda!23964 lambda!262701 (h!67086 (exprs!4705 setElem!33299))) (validRegex!6557 (h!67086 (exprs!4705 setElem!33299))))))

(declare-fun m!6277158 () Bool)

(assert (=> bs!1214516 m!6277158))

(assert (=> b!5230133 d!1686552))

(declare-fun b_lambda!202271 () Bool)

(assert (= b_lambda!202237 (or d!1685872 b_lambda!202271)))

(declare-fun bs!1214517 () Bool)

(declare-fun d!1686554 () Bool)

(assert (= bs!1214517 (and d!1686554 d!1685872)))

(assert (=> bs!1214517 (= (dynLambda!23964 lambda!262685 (h!67086 (unfocusZipperList!263 zl!343))) (validRegex!6557 (h!67086 (unfocusZipperList!263 zl!343))))))

(declare-fun m!6277160 () Bool)

(assert (=> bs!1214517 m!6277160))

(assert (=> b!5230870 d!1686554))

(declare-fun b_lambda!202273 () Bool)

(assert (= b_lambda!202219 (or b!5229203 b_lambda!202273)))

(assert (=> d!1686154 d!1685942))

(declare-fun b_lambda!202275 () Bool)

(assert (= b_lambda!202217 (or d!1685874 b_lambda!202275)))

(declare-fun bs!1214518 () Bool)

(declare-fun d!1686556 () Bool)

(assert (= bs!1214518 (and d!1686556 d!1685874)))

(assert (=> bs!1214518 (= (dynLambda!23964 lambda!262688 (h!67086 lt!2145071)) (validRegex!6557 (h!67086 lt!2145071)))))

(declare-fun m!6277162 () Bool)

(assert (=> bs!1214518 m!6277162))

(assert (=> b!5230399 d!1686556))

(check-sat (not b!5231243) (not b!5230938) (not d!1686024) (not b!5231223) (not b!5230510) (not b!5230424) (not b!5230878) (not b!5231030) (not b!5231271) (not b_lambda!202273) (not b!5230180) (not b!5230680) (not b!5230181) (not b!5230401) (not b!5230934) (not b!5230453) (not b_lambda!202203) (not b!5231219) (not b!5230626) (not b!5231242) (not b!5230549) (not bm!369993) (not d!1686512) (not b!5231203) (not d!1686398) (not b!5231292) (not d!1686230) (not b!5231269) (not b!5230716) (not d!1686330) (not d!1686488) (not b!5230674) (not d!1686530) (not b!5230550) (not d!1686490) (not b!5230175) (not b!5231027) (not b!5230096) (not b!5231254) (not b!5230410) (not b!5230933) (not b!5231192) (not b!5231279) (not d!1686372) (not b!5231291) (not d!1686444) (not b!5231288) (not b!5231191) (not b!5231204) (not b!5231231) (not b!5230409) (not b_lambda!202267) (not bm!369839) (not b!5230347) (not b!5230879) (not d!1686408) (not b!5231228) (not b!5230565) (not b!5230511) (not d!1685998) (not d!1686508) (not b!5230675) (not b!5230939) (not bs!1214516) (not b!5231300) (not b!5231227) (not b!5230849) (not d!1686018) (not b!5231217) (not b!5230226) (not b!5230471) (not b!5231233) (not d!1686442) (not b_lambda!202263) (not b!5230627) (not d!1686044) (not bs!1214513) (not b!5230174) (not b!5230544) (not b!5231209) (not b!5230610) (not d!1686264) (not bm!369867) (not d!1686052) (not bs!1214518) (not bm!369811) (not b!5231268) (not d!1686528) (not b!5231285) (not bm!369988) (not setNonEmpty!33308) (not b!5230448) (not d!1686200) (not bm!369994) (not b!5230407) (not setNonEmpty!33309) (not bm!369995) (not b!5231080) (not b!5230670) (not b!5231235) (not b!5231029) (not b!5231197) (not bm!369961) (not b!5230877) (not b!5230746) (not d!1686178) (not b!5231033) (not b!5230338) (not b!5230094) (not bm!369911) (not b!5230186) (not b!5231220) (not d!1686154) (not b!5230625) (not bm!369871) (not b!5230937) (not b!5231251) (not d!1686050) (not b!5231225) (not d!1686222) (not bm!369952) (not b!5231020) (not b!5230184) (not b!5230141) (not bm!370005) (not b!5231193) (not d!1686142) (not bm!369897) (not b!5231210) (not b!5230505) (not b!5231259) (not bm!369841) (not bm!369789) (not bm!369793) (not b!5230183) (not b!5231224) (not bm!369958) (not b!5231229) (not b!5231236) (not bm!369873) (not b!5231232) (not b!5231144) (not b!5230876) (not b!5231215) (not bm!369970) (not b_lambda!202271) (not d!1686032) (not d!1686456) (not bm!369997) (not b!5230963) (not b!5231241) (not d!1686062) (not b!5230456) (not bm!369778) (not d!1686476) (not bm!369866) (not b!5231287) (not bm!369848) (not bm!369914) (not b!5231296) (not b!5231213) (not d!1686316) (not bm!369969) (not bm!369849) (not bm!369999) (not b!5230444) (not d!1686210) (not b!5230104) (not b!5231240) (not b!5230747) (not b!5231201) (not b!5230271) (not bm!370003) (not b!5230450) (not b!5230748) (not bm!369821) (not d!1686322) (not b!5230336) (not bm!369781) (not bm!369898) (not b!5230268) (not d!1686276) (not d!1686274) (not b!5230609) (not d!1686464) (not d!1686438) (not d!1686064) (not b!5230645) (not d!1686454) (not b!5230446) (not b!5231239) (not b!5230750) (not b!5231120) (not b!5231000) (not d!1686440) (not b!5231280) (not d!1686502) (not b!5230125) (not b!5231293) (not bs!1214514) (not b_lambda!202261) (not d!1686020) (not d!1686232) (not b!5231041) (not bm!369913) (not b!5230158) (not bm!369792) (not b!5230749) (not b!5231295) (not bm!369893) (not b!5230742) (not b!5230228) (not bm!369900) (not b!5231205) (not b!5231214) (not d!1686446) (not d!1686194) (not b!5230420) (not b!5231249) (not b!5230267) (not bm!369783) (not b!5231189) (not b!5231212) (not b!5230119) (not b!5231206) (not b_lambda!202201) (not bm!369954) (not b!5230874) (not b!5230932) (not bm!370006) (not b!5231281) (not b!5231001) (not b!5230567) (not bm!369901) (not b!5230258) (not d!1686304) (not b!5231237) (not d!1686048) (not bs!1214515) (not bm!369795) (not b!5230996) (not bm!369882) (not b!5230911) (not b!5230671) (not d!1686336) (not bm!369810) (not b!5231255) (not b!5231195) (not b!5230454) (not bm!369842) (not b!5231245) (not b!5231297) (not d!1686280) (not b!5230339) (not b!5231216) (not d!1686430) (not b!5230559) (not b!5231143) (not b!5230542) (not d!1686380) (not d!1686400) (not b!5230545) (not b!5231250) (not b!5231188) (not b!5230387) (not bm!369846) (not bm!370000) (not b_lambda!202275) (not b!5230664) (not d!1686334) (not b!5231208) (not d!1686102) (not bm!369985) (not b!5231272) (not b!5230320) (not b!5231267) (not b!5230328) (not b_lambda!202259) (not b!5230371) (not bm!369895) (not b!5230906) (not b!5230834) (not b!5230535) (not b!5230329) (not bm!369809) (not setNonEmpty!33310) (not d!1686388) (not b!5230995) (not b!5230873) (not b!5230406) (not bm!369812) (not d!1686284) (not b!5231200) (not b!5230269) (not b!5231187) (not b!5230403) (not b!5230402) (not d!1686046) (not bm!369796) (not b!5230437) (not d!1686208) (not bm!369840) (not bm!369960) (not b!5230265) (not b!5230733) (not bm!369780) (not b!5230886) (not d!1686532) (not b!5230432) (not b!5231256) (not b!5230980) (not b_lambda!202199) (not d!1686396) (not bm!369787) (not d!1686314) (not bm!370009) (not b!5231263) (not d!1686518) (not b!5230134) (not b!5230833) (not setNonEmpty!33317) (not d!1686288) (not b!5231247) (not b!5231277) (not b!5231199) (not b!5231275) (not b!5231276) (not b!5230400) (not b!5231012) (not b!5230548) (not b!5231301) (not b!5230851) (not b!5230665) (not d!1686426) (not b!5231284) (not b!5231273) (not b!5230160) (not d!1686070) (not d!1686494) (not b!5230447) (not b!5230340) (not b!5230148) (not b!5231221) (not b_lambda!202269) (not b_lambda!202197) (not bm!369869) (not d!1686066) (not bm!369991) (not d!1686128) (not b_lambda!202265) (not b!5230159) (not b!5230871) (not b!5231196) (not b!5230165) (not b!5231264) (not b!5230506) (not b!5230176) (not bm!369992) (not bm!369790) (not b!5231283) (not d!1686468) (not b!5231258) (not b!5231246) (not d!1686224) (not b!5231252) (not b!5230717) (not d!1686404) (not bm!369967) (not b!5230342) (not d!1686452) (not bm!370012) (not b!5231260) (not b!5231011) (not bm!369990) (not b!5231262) (not d!1686156) (not bm!369987) tp_is_empty!38895 (not b!5231289) (not d!1686504) (not d!1686096) (not b!5230178) (not b!5230912) (not b!5230546) (not d!1686402) (not bm!369785) (not b!5231266) (not b!5231031) (not b!5230734) (not bm!369837) (not bm!370011) (not bm!369798) (not bs!1214517) (not bm!369917) (not bm!369864) (not b!5231299))
(check-sat)
